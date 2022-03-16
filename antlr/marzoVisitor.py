# Generated from c:\Users\Roberto\Desktop\Compiladores\antlr\marzo.g4 by ANTLR 4.9.3
from antlr4 import *
if __name__ is not None and "." in __name__:
    from .marzoParser import marzoParser
else:
    from marzoParser import marzoParser

# This class defines a complete generic visitor for a parse tree produced by marzoParser.

class marzoVisitor(ParseTreeVisitor):

    # Visit a parse tree produced by marzoParser#program.
    def visitProgram(self, ctx:marzoParser.ProgramContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by marzoParser#suma.
    def visitSuma(self, ctx:marzoParser.SumaContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by marzoParser#primaria.
    def visitPrimaria(self, ctx:marzoParser.PrimariaContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by marzoParser#arith_expr.
    def visitArith_expr(self, ctx:marzoParser.Arith_exprContext):
        return self.visitChildren(ctx)



del marzoParser