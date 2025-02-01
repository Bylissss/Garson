#pragma once
#include "parser.h"
#include "log.h"

arg args[] = {message};
 
arg message{
    "m",
    "message",
    log,
    "Prints a message to stdin"
};