#pragma once
#include "stdarg.h"

typedef struct arg{
    const char*  short_name;
    const char* long_name;
    void (*callback_func)(char**);
    const char* help_str;
};

void garson_init_parser(int argc, char** argv, arg args[], void(*no_args)()){
    if(argc < 1){   
        no_args();
        return;
    }

    for(int i = argc; i > 1; i--){
      
      //  if (argv[--i][1] == "-" ){
        //}
    }

}