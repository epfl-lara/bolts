; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277308 () Bool)

(assert start!277308)

(declare-fun b!2847453 () Bool)

(declare-fun b_free!82725 () Bool)

(declare-fun b_next!83429 () Bool)

(assert (=> b!2847453 (= b_free!82725 (not b_next!83429))))

(declare-fun tp!913789 () Bool)

(declare-fun b_and!208967 () Bool)

(assert (=> b!2847453 (= tp!913789 b_and!208967)))

(declare-fun b_free!82727 () Bool)

(declare-fun b_next!83431 () Bool)

(assert (=> b!2847453 (= b_free!82727 (not b_next!83431))))

(declare-fun tp!913791 () Bool)

(declare-fun b_and!208969 () Bool)

(assert (=> b!2847453 (= tp!913791 b_and!208969)))

(declare-fun res!1183847 () Bool)

(declare-fun e!1804288 () Bool)

(assert (=> start!277308 (=> (not res!1183847) (not e!1804288))))

(declare-datatypes ((LexerInterface!4662 0))(
  ( (LexerInterfaceExt!4659 (__x!22403 Int)) (Lexer!4660) )
))
(declare-fun thiss!10976 () LexerInterface!4662)

(assert (=> start!277308 (= res!1183847 (is-Lexer!4660 thiss!10976))))

(assert (=> start!277308 e!1804288))

(assert (=> start!277308 true))

(declare-fun e!1804289 () Bool)

(assert (=> start!277308 e!1804289))

(declare-fun b!2847450 () Bool)

(assert (=> b!2847450 (= e!1804288 false)))

(declare-fun lt!1012943 () Bool)

(declare-datatypes ((List!33925 0))(
  ( (Nil!33801) (Cons!33801 (h!39221 (_ BitVec 16)) (t!232950 List!33925)) )
))
(declare-datatypes ((TokenValue!5303 0))(
  ( (FloatLiteralValue!10606 (text!37566 List!33925)) (TokenValueExt!5302 (__x!22404 Int)) (Broken!26515 (value!162994 List!33925)) (Object!5426) (End!5303) (Def!5303) (Underscore!5303) (Match!5303) (Else!5303) (Error!5303) (Case!5303) (If!5303) (Extends!5303) (Abstract!5303) (Class!5303) (Val!5303) (DelimiterValue!10606 (del!5363 List!33925)) (KeywordValue!5309 (value!162995 List!33925)) (CommentValue!10606 (value!162996 List!33925)) (WhitespaceValue!10606 (value!162997 List!33925)) (IndentationValue!5303 (value!162998 List!33925)) (String!37130) (Int32!5303) (Broken!26516 (value!162999 List!33925)) (Boolean!5304) (Unit!47561) (OperatorValue!5306 (op!5363 List!33925)) (IdentifierValue!10606 (value!163000 List!33925)) (IdentifierValue!10607 (value!163001 List!33925)) (WhitespaceValue!10607 (value!163002 List!33925)) (True!10606) (False!10606) (Broken!26517 (value!163003 List!33925)) (Broken!26518 (value!163004 List!33925)) (True!10607) (RightBrace!5303) (RightBracket!5303) (Colon!5303) (Null!5303) (Comma!5303) (LeftBracket!5303) (False!10607) (LeftBrace!5303) (ImaginaryLiteralValue!5303 (text!37567 List!33925)) (StringLiteralValue!15909 (value!163005 List!33925)) (EOFValue!5303 (value!163006 List!33925)) (IdentValue!5303 (value!163007 List!33925)) (DelimiterValue!10607 (value!163008 List!33925)) (DedentValue!5303 (value!163009 List!33925)) (NewLineValue!5303 (value!163010 List!33925)) (IntegerValue!15909 (value!163011 (_ BitVec 32)) (text!37568 List!33925)) (IntegerValue!15910 (value!163012 Int) (text!37569 List!33925)) (Times!5303) (Or!5303) (Equal!5303) (Minus!5303) (Broken!26519 (value!163013 List!33925)) (And!5303) (Div!5303) (LessEqual!5303) (Mod!5303) (Concat!13791) (Not!5303) (Plus!5303) (SpaceValue!5303 (value!163014 List!33925)) (IntegerValue!15911 (value!163015 Int) (text!37570 List!33925)) (StringLiteralValue!15910 (text!37571 List!33925)) (FloatLiteralValue!10607 (text!37572 List!33925)) (BytesLiteralValue!5303 (value!163016 List!33925)) (CommentValue!10607 (value!163017 List!33925)) (StringLiteralValue!15911 (value!163018 List!33925)) (ErrorTokenValue!5303 (msg!5364 List!33925)) )
))
(declare-datatypes ((C!17158 0))(
  ( (C!17159 (val!10613 Int)) )
))
(declare-datatypes ((List!33926 0))(
  ( (Nil!33802) (Cons!33802 (h!39222 C!17158) (t!232951 List!33926)) )
))
(declare-datatypes ((IArray!20967 0))(
  ( (IArray!20968 (innerList!10541 List!33926)) )
))
(declare-datatypes ((Conc!10481 0))(
  ( (Node!10481 (left!25444 Conc!10481) (right!25774 Conc!10481) (csize!21192 Int) (cheight!10692 Int)) (Leaf!15949 (xs!13599 IArray!20967) (csize!21193 Int)) (Empty!10481) )
))
(declare-datatypes ((BalanceConc!20600 0))(
  ( (BalanceConc!20601 (c!459434 Conc!10481)) )
))
(declare-datatypes ((Regex!8488 0))(
  ( (ElementMatch!8488 (c!459435 C!17158)) (Concat!13792 (regOne!17488 Regex!8488) (regTwo!17488 Regex!8488)) (EmptyExpr!8488) (Star!8488 (reg!8817 Regex!8488)) (EmptyLang!8488) (Union!8488 (regOne!17489 Regex!8488) (regTwo!17489 Regex!8488)) )
))
(declare-datatypes ((String!37131 0))(
  ( (String!37132 (value!163019 String)) )
))
(declare-datatypes ((TokenValueInjection!10034 0))(
  ( (TokenValueInjection!10035 (toValue!7129 Int) (toChars!6988 Int)) )
))
(declare-datatypes ((Rule!9946 0))(
  ( (Rule!9947 (regex!5073 Regex!8488) (tag!5577 String!37131) (isSeparator!5073 Bool) (transformation!5073 TokenValueInjection!10034)) )
))
(declare-datatypes ((List!33927 0))(
  ( (Nil!33803) (Cons!33803 (h!39223 Rule!9946) (t!232952 List!33927)) )
))
(declare-fun rules!1036 () List!33927)

(declare-fun rulesValidInductive!1738 (LexerInterface!4662 List!33927) Bool)

(assert (=> b!2847450 (= lt!1012943 (rulesValidInductive!1738 thiss!10976 rules!1036))))

(declare-fun b!2847451 () Bool)

(declare-fun e!1804291 () Bool)

(declare-fun tp!913792 () Bool)

(assert (=> b!2847451 (= e!1804289 (and e!1804291 tp!913792))))

(declare-fun e!1804287 () Bool)

(assert (=> b!2847453 (= e!1804287 (and tp!913789 tp!913791))))

(declare-fun b!2847452 () Bool)

(declare-fun tp!913790 () Bool)

(declare-fun inv!45843 (String!37131) Bool)

(declare-fun inv!45846 (TokenValueInjection!10034) Bool)

(assert (=> b!2847452 (= e!1804291 (and tp!913790 (inv!45843 (tag!5577 (h!39223 rules!1036))) (inv!45846 (transformation!5073 (h!39223 rules!1036))) e!1804287))))

(assert (= (and start!277308 res!1183847) b!2847450))

(assert (= b!2847452 b!2847453))

(assert (= b!2847451 b!2847452))

(assert (= (and start!277308 (is-Cons!33803 rules!1036)) b!2847451))

(declare-fun m!3274941 () Bool)

(assert (=> b!2847450 m!3274941))

(declare-fun m!3274943 () Bool)

(assert (=> b!2847452 m!3274943))

(declare-fun m!3274945 () Bool)

(assert (=> b!2847452 m!3274945))

(push 1)

(assert b_and!208967)

(assert (not b!2847452))

(assert (not b_next!83431))

(assert b_and!208969)

(assert (not b!2847451))

(assert (not b_next!83429))

(assert (not b!2847450))

(check-sat)

(pop 1)

(push 1)

(assert b_and!208969)

(assert b_and!208967)

(assert (not b_next!83431))

(assert (not b_next!83429))

(check-sat)

(pop 1)

