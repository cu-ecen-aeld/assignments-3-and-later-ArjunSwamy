#include <stdio.h>
#include <syslog.h>

int main(int argc, char* argv[]){
    openlog(NULL,0,LOG_USER);
    if(argc != 3){
        //printf("wrong arg");
        syslog(LOG_ERR,"Invalid number of arguments: %d",argc);
        return 1;
    }
    FILE* fileptr = NULL;
    fileptr = fopen(argv[1],"w");
    if (fileptr == NULL){
        //printf("failed to open: %s",argv[1]);
        syslog(LOG_ERR,"File could not be created with name: %s",argv[1]);
        return 1;
    }
    fprintf(fileptr,argv[2]);
    syslog(LOG_DEBUG,"Writing %s to %s",argv[2],argv[1]);
    fclose(fileptr);
    return 0;
}