; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!137500 () Bool)

(assert start!137500)

(declare-fun lt!511218 () Bool)

(declare-datatypes ((List!15404 0))(
  ( (Nil!15338) (Cons!15338 (h!20739 (_ BitVec 16)) (t!135323 List!15404)) )
))
(declare-datatypes ((TokenValue!2812 0))(
  ( (FloatLiteralValue!5624 (text!20129 List!15404)) (TokenValueExt!2811 (__x!9414 Int)) (Broken!14060 (value!87200 List!15404)) (Object!2877) (End!2812) (Def!2812) (Underscore!2812) (Match!2812) (Else!2812) (Error!2812) (Case!2812) (If!2812) (Extends!2812) (Abstract!2812) (Class!2812) (Val!2812) (DelimiterValue!5624 (del!2872 List!15404)) (KeywordValue!2818 (value!87201 List!15404)) (CommentValue!5624 (value!87202 List!15404)) (WhitespaceValue!5624 (value!87203 List!15404)) (IndentationValue!2812 (value!87204 List!15404)) (String!18317) (Int32!2812) (Broken!14061 (value!87205 List!15404)) (Boolean!2813) (Unit!25083) (OperatorValue!2815 (op!2872 List!15404)) (IdentifierValue!5624 (value!87206 List!15404)) (IdentifierValue!5625 (value!87207 List!15404)) (WhitespaceValue!5625 (value!87208 List!15404)) (True!5624) (False!5624) (Broken!14062 (value!87209 List!15404)) (Broken!14063 (value!87210 List!15404)) (True!5625) (RightBrace!2812) (RightBracket!2812) (Colon!2812) (Null!2812) (Comma!2812) (LeftBracket!2812) (False!5625) (LeftBrace!2812) (ImaginaryLiteralValue!2812 (text!20130 List!15404)) (StringLiteralValue!8436 (value!87211 List!15404)) (EOFValue!2812 (value!87212 List!15404)) (IdentValue!2812 (value!87213 List!15404)) (DelimiterValue!5625 (value!87214 List!15404)) (DedentValue!2812 (value!87215 List!15404)) (NewLineValue!2812 (value!87216 List!15404)) (IntegerValue!8436 (value!87217 (_ BitVec 32)) (text!20131 List!15404)) (IntegerValue!8437 (value!87218 Int) (text!20132 List!15404)) (Times!2812) (Or!2812) (Equal!2812) (Minus!2812) (Broken!14064 (value!87219 List!15404)) (And!2812) (Div!2812) (LessEqual!2812) (Mod!2812) (Concat!6848) (Not!2812) (Plus!2812) (SpaceValue!2812 (value!87220 List!15404)) (IntegerValue!8438 (value!87221 Int) (text!20133 List!15404)) (StringLiteralValue!8437 (text!20134 List!15404)) (FloatLiteralValue!5625 (text!20135 List!15404)) (BytesLiteralValue!2812 (value!87222 List!15404)) (CommentValue!5625 (value!87223 List!15404)) (StringLiteralValue!8438 (value!87224 List!15404)) (ErrorTokenValue!2812 (msg!2873 List!15404)) )
))
(declare-datatypes ((C!8250 0))(
  ( (C!8251 (val!4695 Int)) )
))
(declare-datatypes ((Regex!4036 0))(
  ( (ElementMatch!4036 (c!242125 C!8250)) (Concat!6849 (regOne!8584 Regex!4036) (regTwo!8584 Regex!4036)) (EmptyExpr!4036) (Star!4036 (reg!4365 Regex!4036)) (EmptyLang!4036) (Union!4036 (regOne!8585 Regex!4036) (regTwo!8585 Regex!4036)) )
))
(declare-datatypes ((String!18318 0))(
  ( (String!18319 (value!87225 String)) )
))
(declare-datatypes ((List!15405 0))(
  ( (Nil!15339) (Cons!15339 (h!20740 C!8250) (t!135324 List!15405)) )
))
(declare-datatypes ((IArray!10461 0))(
  ( (IArray!10462 (innerList!5288 List!15405)) )
))
(declare-datatypes ((Conc!5228 0))(
  ( (Node!5228 (left!12996 Conc!5228) (right!13326 Conc!5228) (csize!10686 Int) (cheight!5439 Int)) (Leaf!7791 (xs!7983 IArray!10461) (csize!10687 Int)) (Empty!5228) )
))
(declare-datatypes ((BalanceConc!10396 0))(
  ( (BalanceConc!10397 (c!242126 Conc!5228)) )
))
(declare-datatypes ((TokenValueInjection!5284 0))(
  ( (TokenValueInjection!5285 (toValue!4041 Int) (toChars!3900 Int)) )
))
(declare-datatypes ((Rule!5244 0))(
  ( (Rule!5245 (regex!2722 Regex!4036) (tag!2986 String!18318) (isSeparator!2722 Bool) (transformation!2722 TokenValueInjection!5284)) )
))
(declare-datatypes ((Token!5106 0))(
  ( (Token!5107 (value!87226 TokenValue!2812) (rule!4499 Rule!5244) (size!12505 Int) (originalCharacters!3584 List!15405)) )
))
(declare-datatypes ((List!15406 0))(
  ( (Nil!15340) (Cons!15340 (h!20741 Token!5106) (t!135325 List!15406)) )
))
(declare-datatypes ((IArray!10463 0))(
  ( (IArray!10464 (innerList!5289 List!15406)) )
))
(declare-datatypes ((Conc!5229 0))(
  ( (Node!5229 (left!12997 Conc!5229) (right!13327 Conc!5229) (csize!10688 Int) (cheight!5440 Int)) (Leaf!7792 (xs!7984 IArray!10463) (csize!10689 Int)) (Empty!5229) )
))
(declare-datatypes ((BalanceConc!10398 0))(
  ( (BalanceConc!10399 (c!242127 Conc!5229)) )
))
(declare-datatypes ((List!15407 0))(
  ( (Nil!15341) (Cons!15341 (h!20742 Rule!5244) (t!135326 List!15407)) )
))
(declare-datatypes ((PrintableTokens!1142 0))(
  ( (PrintableTokens!1143 (rules!11763 List!15407) (tokens!2131 BalanceConc!10398)) )
))
(declare-fun thiss!9992 () PrintableTokens!1142)

(declare-datatypes ((LexerInterface!2378 0))(
  ( (LexerInterfaceExt!2375 (__x!9415 Int)) (Lexer!2376) )
))
(declare-fun rulesInvariant!2167 (LexerInterface!2378 List!15407) Bool)

(assert (=> start!137500 (= lt!511218 (rulesInvariant!2167 Lexer!2376 (rules!11763 thiss!9992)))))

(assert (=> start!137500 false))

(declare-fun e!937820 () Bool)

(declare-fun inv!20525 (PrintableTokens!1142) Bool)

(assert (=> start!137500 (and (inv!20525 thiss!9992) e!937820)))

(declare-fun b!1469062 () Bool)

(declare-fun e!937819 () Bool)

(declare-fun tp!414017 () Bool)

(declare-fun inv!20526 (Conc!5229) Bool)

(assert (=> b!1469062 (= e!937819 (and (inv!20526 (c!242127 (tokens!2131 thiss!9992))) tp!414017))))

(declare-fun tp!414018 () Bool)

(declare-fun b!1469061 () Bool)

(declare-fun inv!20527 (BalanceConc!10398) Bool)

(assert (=> b!1469061 (= e!937820 (and tp!414018 (inv!20527 (tokens!2131 thiss!9992)) e!937819))))

(assert (= b!1469061 b!1469062))

(assert (= start!137500 b!1469061))

(declare-fun m!1713633 () Bool)

(assert (=> start!137500 m!1713633))

(declare-fun m!1713635 () Bool)

(assert (=> start!137500 m!1713635))

(declare-fun m!1713637 () Bool)

(assert (=> b!1469062 m!1713637))

(declare-fun m!1713639 () Bool)

(assert (=> b!1469061 m!1713639))

(push 1)

(assert (not b!1469061))

(assert (not start!137500))

(assert (not b!1469062))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

