; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!64772 () Bool)

(assert start!64772)

(declare-fun res!293705 () Bool)

(declare-fun e!409631 () Bool)

(assert (=> start!64772 (=> (not res!293705) (not e!409631))))

(declare-datatypes ((List!7245 0))(
  ( (Nil!7231) (Cons!7231 (h!12632 (_ BitVec 16)) (t!86403 List!7245)) )
))
(declare-datatypes ((TokenValue!1499 0))(
  ( (FloatLiteralValue!2998 (text!10938 List!7245)) (TokenValueExt!1498 (__x!5089 Int)) (Broken!7495 (value!46879 List!7245)) (Object!1512) (End!1499) (Def!1499) (Underscore!1499) (Match!1499) (Else!1499) (Error!1499) (Case!1499) (If!1499) (Extends!1499) (Abstract!1499) (Class!1499) (Val!1499) (DelimiterValue!2998 (del!1559 List!7245)) (KeywordValue!1505 (value!46880 List!7245)) (CommentValue!2998 (value!46881 List!7245)) (WhitespaceValue!2998 (value!46882 List!7245)) (IndentationValue!1499 (value!46883 List!7245)) (String!9234) (Int32!1499) (Broken!7496 (value!46884 List!7245)) (Boolean!1500) (Unit!12513) (OperatorValue!1502 (op!1559 List!7245)) (IdentifierValue!2998 (value!46885 List!7245)) (IdentifierValue!2999 (value!46886 List!7245)) (WhitespaceValue!2999 (value!46887 List!7245)) (True!2998) (False!2998) (Broken!7497 (value!46888 List!7245)) (Broken!7498 (value!46889 List!7245)) (True!2999) (RightBrace!1499) (RightBracket!1499) (Colon!1499) (Null!1499) (Comma!1499) (LeftBracket!1499) (False!2999) (LeftBrace!1499) (ImaginaryLiteralValue!1499 (text!10939 List!7245)) (StringLiteralValue!4497 (value!46890 List!7245)) (EOFValue!1499 (value!46891 List!7245)) (IdentValue!1499 (value!46892 List!7245)) (DelimiterValue!2999 (value!46893 List!7245)) (DedentValue!1499 (value!46894 List!7245)) (NewLineValue!1499 (value!46895 List!7245)) (IntegerValue!4497 (value!46896 (_ BitVec 32)) (text!10940 List!7245)) (IntegerValue!4498 (value!46897 Int) (text!10941 List!7245)) (Times!1499) (Or!1499) (Equal!1499) (Minus!1499) (Broken!7499 (value!46898 List!7245)) (And!1499) (Div!1499) (LessEqual!1499) (Mod!1499) (Concat!3299) (Not!1499) (Plus!1499) (SpaceValue!1499 (value!46899 List!7245)) (IntegerValue!4499 (value!46900 Int) (text!10942 List!7245)) (StringLiteralValue!4498 (text!10943 List!7245)) (FloatLiteralValue!2999 (text!10944 List!7245)) (BytesLiteralValue!1499 (value!46901 List!7245)) (CommentValue!2999 (value!46902 List!7245)) (StringLiteralValue!4499 (value!46903 List!7245)) (ErrorTokenValue!1499 (msg!1560 List!7245)) )
))
(declare-datatypes ((Regex!1800 0))(
  ( (ElementMatch!1800 (c!119101 (_ BitVec 16))) (Concat!3300 (regOne!4112 Regex!1800) (regTwo!4112 Regex!1800)) (EmptyExpr!1800) (Star!1800 (reg!2129 Regex!1800)) (EmptyLang!1800) (Union!1800 (regOne!4113 Regex!1800) (regTwo!4113 Regex!1800)) )
))
(declare-datatypes ((String!9235 0))(
  ( (String!9236 (value!46904 String)) )
))
(declare-datatypes ((IArray!5143 0))(
  ( (IArray!5144 (innerList!2629 List!7245)) )
))
(declare-datatypes ((Conc!2571 0))(
  ( (Node!2571 (left!5857 Conc!2571) (right!6187 Conc!2571) (csize!5372 Int) (cheight!2782 Int)) (Leaf!3820 (xs!5220 IArray!5143) (csize!5373 Int)) (Empty!2571) )
))
(declare-datatypes ((BalanceConc!5154 0))(
  ( (BalanceConc!5155 (c!119102 Conc!2571)) )
))
(declare-datatypes ((TokenValueInjection!2750 0))(
  ( (TokenValueInjection!2751 (toValue!2406 Int) (toChars!2265 Int)) )
))
(declare-datatypes ((Rule!2730 0))(
  ( (Rule!2731 (regex!1465 Regex!1800) (tag!1727 String!9235) (isSeparator!1465 Bool) (transformation!1465 TokenValueInjection!2750)) )
))
(declare-datatypes ((List!7246 0))(
  ( (Nil!7232) (Cons!7232 (h!12633 Rule!2730) (t!86404 List!7246)) )
))
(declare-fun lt!282141 () List!7246)

(declare-fun isEmpty!4803 (List!7246) Bool)

(assert (=> start!64772 (= res!293705 (not (isEmpty!4803 lt!282141)))))

(declare-datatypes ((JsonLexer!236 0))(
  ( (JsonLexer!237) )
))
(declare-fun rules!109 (JsonLexer!236) List!7246)

(assert (=> start!64772 (= lt!282141 (rules!109 JsonLexer!237))))

(assert (=> start!64772 e!409631))

(declare-fun b!662086 () Bool)

(declare-fun res!293706 () Bool)

(assert (=> b!662086 (=> (not res!293706) (not e!409631))))

(declare-datatypes ((LexerInterface!1281 0))(
  ( (LexerInterfaceExt!1278 (__x!5090 Int)) (Lexer!1279) )
))
(declare-fun rulesInvariant!1216 (LexerInterface!1281 List!7246) Bool)

(assert (=> b!662086 (= res!293706 (rulesInvariant!1216 Lexer!1279 lt!282141))))

(declare-fun b!662087 () Bool)

(assert (=> b!662087 (= e!409631 false)))

(declare-datatypes ((Token!2652 0))(
  ( (Token!2653 (value!46905 TokenValue!1499) (rule!2260 Rule!2730) (size!5705 Int) (originalCharacters!1497 List!7245)) )
))
(declare-datatypes ((List!7247 0))(
  ( (Nil!7233) (Cons!7233 (h!12634 Token!2652) (t!86405 List!7247)) )
))
(declare-datatypes ((IArray!5145 0))(
  ( (IArray!5146 (innerList!2630 List!7247)) )
))
(declare-datatypes ((Conc!2572 0))(
  ( (Node!2572 (left!5858 Conc!2572) (right!6188 Conc!2572) (csize!5374 Int) (cheight!2783 Int)) (Leaf!3821 (xs!5221 IArray!5145) (csize!5375 Int)) (Empty!2572) )
))
(declare-datatypes ((BalanceConc!5156 0))(
  ( (BalanceConc!5157 (c!119103 Conc!2572)) )
))
(declare-fun lt!282140 () BalanceConc!5156)

(declare-fun singletonSeq!448 (Token!2652) BalanceConc!5156)

(declare-fun apply!1736 (TokenValueInjection!2750 BalanceConc!5154) TokenValue!1499)

(declare-datatypes ((KeywordValueInjection!54 0))(
  ( (KeywordValueInjection!55) )
))
(declare-fun injection!9 (KeywordValueInjection!54) TokenValueInjection!2750)

(declare-fun singletonSeq!449 ((_ BitVec 16)) BalanceConc!5154)

(declare-fun lBracketRule!0 (JsonLexer!236) Rule!2730)

(assert (=> b!662087 (= lt!282140 (singletonSeq!448 (Token!2653 (apply!1736 (injection!9 KeywordValueInjection!55) (singletonSeq!449 #x005B)) (lBracketRule!0 JsonLexer!237) 1 (Cons!7231 #x005B Nil!7231))))))

(assert (= (and start!64772 res!293705) b!662086))

(assert (= (and b!662086 res!293706) b!662087))

(declare-fun m!928281 () Bool)

(assert (=> start!64772 m!928281))

(declare-fun m!928283 () Bool)

(assert (=> start!64772 m!928283))

(declare-fun m!928285 () Bool)

(assert (=> b!662086 m!928285))

(declare-fun m!928287 () Bool)

(assert (=> b!662087 m!928287))

(declare-fun m!928289 () Bool)

(assert (=> b!662087 m!928289))

(assert (=> b!662087 m!928287))

(declare-fun m!928291 () Bool)

(assert (=> b!662087 m!928291))

(declare-fun m!928293 () Bool)

(assert (=> b!662087 m!928293))

(assert (=> b!662087 m!928291))

(declare-fun m!928295 () Bool)

(assert (=> b!662087 m!928295))

(push 1)

(assert (not b!662086))

(assert (not b!662087))

(assert (not start!64772))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

