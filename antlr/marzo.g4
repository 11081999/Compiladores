grammar marzo;

program : expression+;

expression: 
    arithmetic 
    | relational 
    | comparison
    | logic
    ;

arithmetic:
    arithmetic '+' arithmetic                             
    | arithmetic '-' arithmetic                            
    | Number                                   
    ;

declaration: 
    | Type Id                               
    ; 

relational:
    declaration 
    | assignment 
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

comparison:
    'if (' logic ') then' expression+ 'end' 
    | 'if (' logic ') then' expression+ 'else' expression+ 'end'
    | print 
    ; 

assignment:
    Id '=' logic 
    | Id '=' arithmetic          
    ; 

print: 
    'print(' (Number | Id)+ ')'
    ;

// A continuación los tokens (comienzan con mayúscula)
Type: 'int' | 'double' | 'char';
Equality: '=';
Id: ALPHA;
ALPHA: [a-zA-Z_$] [a-zA-Z_$0-9]* ;
Number : [0-9]+;
WS : [ \t\n\r]+ -> skip ;