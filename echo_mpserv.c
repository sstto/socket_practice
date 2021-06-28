#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <sys/wait.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <string.h>

#define BUF_SIZE 30
void error_handling(char *message);
void read_childproc(int sig);   // signal이 발생했을 때 실행

int main(int argc, char *argv[]){
    int serv_sock, clnt_sock;
    struct sockaddr_in serv_adr, clnt_adr;

    pid_t pid;
    // sigaction이란 signal 체이 발생할 때 act할 함수가 들어있는 구조체
    struct sigaction act;
    socklen_t adr_sz;
    int str_len, state;
    char buf[BUF_SIZE];
    if(argc != 2){
        printf("Usage : %s <port>\n", argv[0]);
    }

    act.sa_handler = read_childproc;
    sigemptyset(&act.sa_mask);
    act.sa_flags = 0;
    state = sigaction(SIGCHLD, &act, 0);

    serv_sock = socket(PF_INET, SOCK_STREAM, 0);
    memset(&serv_adr, 0, sizeof(serv_adr));
    serv_adr.sin_family = AF_INET;
    serv_adr.sin_addr.s_addr = htonl(INADDR_ANY);
    serv_adr.sin_port = htons(atoi(argv[1]));

    // server 소켓과 주소정보를 바인
    if(bind(serv_sock, (struct sockaddr*) &serv_adr, sizeof(serv_adr)) == -1){
        error_handling("bind() error");
    }
    // 여기서 5는 대기할 수 있는 클라이언트 요청 수였나..
    if(listen(serv_sock, 5) == -1){
        error_handling("listen() error");
    }

    // 여러 클라이언트와 connect 시작
    while(1){
        adr_sz = sizeof(clnt_adr);
        clnt_sock = accept(serv_sock, (struct sockaddr*) &clnt_adr, &adr_sz);
        if(clnt_sock == -1){
            printf("continue~\n");
            continue;
        }else{
            puts("new client connected ...");
        }

        pid = fork();
        if(pid == -1){
            close(clnt_sock);
            continue;
        }
        // 자식 프로세스
        if(pid == 0){
            close(serv_sock);
            while((str_len = read(clnt_sock,buf, BUF_SIZE)) != 0){
                // str_len은 read한 byte 수
                write(clnt_sock, buf, str_len);
            }
            close(clnt_sock);
            puts("client disconnected...");
            return 0;
        }else{
            close(clnt_sock);
        }
    }
    close(serv_sock);
    return 0;
}

void read_childproc(int sig){
    pid_t pid;
    int status;
    // -1은 임의의 프로세스가 종료되길 기다린다, status는 여러 정보 담는 버퍼, WNOHANG은 블로킹 방지.
    pid = waitpid(-1, &status, WNOHANG);
    printf("removed process id : %d \n", pid);
}

void error_handling(char *message){
    fputs(message, stderr);
    fputc('\n', stderr);
    exit(1);
}
