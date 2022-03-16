grammar marzo;

program : expression+;

expression: 
    arithm 
    | rel 
    | comp
    | logic
    ;

arithm:
    arithm      '+' arithm                             
    | arithm    '-' arithm                            
    | Number                                   
    ;

declaration: 
    | Type Id                               
    ; 

rel:
    declaration 
    | assign 
    ;

logic: 
    logic       'and'   logic 
    | 'not' logic 
    | logic     'or'    logic 
    | logic     '>='    logic 
    | logic     '<='    logic 
    | logic     '>'     logic 
    | logic     '<'     logic 
    | Id 
    | Number 
    ;

comp:
    'if (' logic ')     then' expression+ 'end' 
    | 'if (' logic ')   then' expression+ 'else' expression+ 'end'
    | print 
    ; 

assign:
    Id      '=' logic 
    | Id    '=' arithm          
    ; 

print: 
    'print(' (Number | Id)+ ')'
    ;

// A continuación los tokens (comienzan con mayúscula)
Type: 'int' | 'double' | 'char';
Equality: '=';
Id: A;
A: [a-zA-Z_$] [a-zA-Z_$0-9]* ;
Number : [0-9]+;
WS : [ \t\n\r]+ -> skip ;