%{
#include "y.tab.h"
int countn = 0;
%}

%option yylineno

%%
[0-9]+     { /* Action for recognizing digits */ }
[a-zA-Z]+  { /* Action for recognizing alphabetic characters */ }
"++"       { /* Action for recognizing "++" token */ }
"--"       { /* Action for recognizing "--" token */ }
%%

int main() {
    // Lex/Flex initialization code
    yylex();  // Call the lexer function
    return 0;
}