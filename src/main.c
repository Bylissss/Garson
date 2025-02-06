#include "parser.h"
#include "log.h"
#include "args.h"

int main(int argc, char** argv){
    
    garson_init_parser(argc, argv, args, log);
    return 0;
}