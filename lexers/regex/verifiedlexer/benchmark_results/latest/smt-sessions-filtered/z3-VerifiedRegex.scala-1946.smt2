; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95742 () Bool)

(assert start!95742)

(declare-fun b!1108044 () Bool)

(declare-fun b_free!26921 () Bool)

(declare-fun b_next!26985 () Bool)

(assert (=> b!1108044 (= b_free!26921 (not b_next!26985))))

(declare-fun tp!328908 () Bool)

(declare-fun b_and!79241 () Bool)

(assert (=> b!1108044 (= tp!328908 b_and!79241)))

(declare-fun b_free!26923 () Bool)

(declare-fun b_next!26987 () Bool)

(assert (=> b!1108044 (= b_free!26923 (not b_next!26987))))

(declare-fun tp!328906 () Bool)

(declare-fun b_and!79243 () Bool)

(assert (=> b!1108044 (= tp!328906 b_and!79243)))

(declare-fun b!1108041 () Bool)

(declare-fun e!702616 () Bool)

(declare-datatypes ((List!10886 0))(
  ( (Nil!10862) (Cons!10862 (h!16263 (_ BitVec 16)) (t!105474 List!10886)) )
))
(declare-datatypes ((TokenValue!1939 0))(
  ( (FloatLiteralValue!3878 (text!14018 List!10886)) (TokenValueExt!1938 (__x!7581 Int)) (Broken!9695 (value!61351 List!10886)) (Object!1962) (End!1939) (Def!1939) (Underscore!1939) (Match!1939) (Else!1939) (Error!1939) (Case!1939) (If!1939) (Extends!1939) (Abstract!1939) (Class!1939) (Val!1939) (DelimiterValue!3878 (del!1999 List!10886)) (KeywordValue!1945 (value!61352 List!10886)) (CommentValue!3878 (value!61353 List!10886)) (WhitespaceValue!3878 (value!61354 List!10886)) (IndentationValue!1939 (value!61355 List!10886)) (String!13282) (Int32!1939) (Broken!9696 (value!61356 List!10886)) (Boolean!1940) (Unit!16471) (OperatorValue!1942 (op!1999 List!10886)) (IdentifierValue!3878 (value!61357 List!10886)) (IdentifierValue!3879 (value!61358 List!10886)) (WhitespaceValue!3879 (value!61359 List!10886)) (True!3878) (False!3878) (Broken!9697 (value!61360 List!10886)) (Broken!9698 (value!61361 List!10886)) (True!3879) (RightBrace!1939) (RightBracket!1939) (Colon!1939) (Null!1939) (Comma!1939) (LeftBracket!1939) (False!3879) (LeftBrace!1939) (ImaginaryLiteralValue!1939 (text!14019 List!10886)) (StringLiteralValue!5817 (value!61362 List!10886)) (EOFValue!1939 (value!61363 List!10886)) (IdentValue!1939 (value!61364 List!10886)) (DelimiterValue!3879 (value!61365 List!10886)) (DedentValue!1939 (value!61366 List!10886)) (NewLineValue!1939 (value!61367 List!10886)) (IntegerValue!5817 (value!61368 (_ BitVec 32)) (text!14020 List!10886)) (IntegerValue!5818 (value!61369 Int) (text!14021 List!10886)) (Times!1939) (Or!1939) (Equal!1939) (Minus!1939) (Broken!9699 (value!61370 List!10886)) (And!1939) (Div!1939) (LessEqual!1939) (Mod!1939) (Concat!5082) (Not!1939) (Plus!1939) (SpaceValue!1939 (value!61371 List!10886)) (IntegerValue!5819 (value!61372 Int) (text!14022 List!10886)) (StringLiteralValue!5818 (text!14023 List!10886)) (FloatLiteralValue!3879 (text!14024 List!10886)) (BytesLiteralValue!1939 (value!61373 List!10886)) (CommentValue!3879 (value!61374 List!10886)) (StringLiteralValue!5819 (value!61375 List!10886)) (ErrorTokenValue!1939 (msg!2000 List!10886)) )
))
(declare-datatypes ((C!6676 0))(
  ( (C!6677 (val!3594 Int)) )
))
(declare-datatypes ((List!10887 0))(
  ( (Nil!10863) (Cons!10863 (h!16264 C!6676) (t!105475 List!10887)) )
))
(declare-datatypes ((IArray!6877 0))(
  ( (IArray!6878 (innerList!3496 List!10887)) )
))
(declare-datatypes ((Conc!3436 0))(
  ( (Node!3436 (left!9420 Conc!3436) (right!9750 Conc!3436) (csize!7102 Int) (cheight!3647 Int)) (Leaf!5383 (xs!6129 IArray!6877) (csize!7103 Int)) (Empty!3436) )
))
(declare-datatypes ((BalanceConc!6894 0))(
  ( (BalanceConc!6895 (c!188003 Conc!3436)) )
))
(declare-datatypes ((TokenValueInjection!3578 0))(
  ( (TokenValueInjection!3579 (toValue!2954 Int) (toChars!2813 Int)) )
))
(declare-datatypes ((String!13283 0))(
  ( (String!13284 (value!61376 String)) )
))
(declare-datatypes ((Regex!3143 0))(
  ( (ElementMatch!3143 (c!188004 C!6676)) (Concat!5083 (regOne!6798 Regex!3143) (regTwo!6798 Regex!3143)) (EmptyExpr!3143) (Star!3143 (reg!3472 Regex!3143)) (EmptyLang!3143) (Union!3143 (regOne!6799 Regex!3143) (regTwo!6799 Regex!3143)) )
))
(declare-datatypes ((Rule!3546 0))(
  ( (Rule!3547 (regex!1873 Regex!3143) (tag!2135 String!13283) (isSeparator!1873 Bool) (transformation!1873 TokenValueInjection!3578)) )
))
(declare-datatypes ((Token!3408 0))(
  ( (Token!3409 (value!61377 TokenValue!1939) (rule!3294 Rule!3546) (size!8425 Int) (originalCharacters!2427 List!10887)) )
))
(declare-datatypes ((List!10888 0))(
  ( (Nil!10864) (Cons!10864 (h!16265 Token!3408) (t!105476 List!10888)) )
))
(declare-datatypes ((IArray!6879 0))(
  ( (IArray!6880 (innerList!3497 List!10888)) )
))
(declare-datatypes ((Conc!3437 0))(
  ( (Node!3437 (left!9421 Conc!3437) (right!9751 Conc!3437) (csize!7104 Int) (cheight!3648 Int)) (Leaf!5384 (xs!6130 IArray!6879) (csize!7105 Int)) (Empty!3437) )
))
(declare-datatypes ((BalanceConc!6896 0))(
  ( (BalanceConc!6897 (c!188005 Conc!3437)) )
))
(declare-fun tokens!410 () BalanceConc!6896)

(declare-fun tp!328907 () Bool)

(declare-fun inv!13951 (Conc!3437) Bool)

(assert (=> b!1108041 (= e!702616 (and (inv!13951 (c!188005 tokens!410)) tp!328907))))

(declare-fun b!1108042 () Bool)

(declare-fun res!490627 () Bool)

(declare-fun e!702617 () Bool)

(assert (=> b!1108042 (=> (not res!490627) (not e!702617))))

(declare-datatypes ((LexerInterface!1584 0))(
  ( (LexerInterfaceExt!1581 (__x!7582 Int)) (Lexer!1582) )
))
(declare-fun thiss!11199 () LexerInterface!1584)

(declare-datatypes ((List!10889 0))(
  ( (Nil!10865) (Cons!10865 (h!16266 Rule!3546) (t!105477 List!10889)) )
))
(declare-fun rules!1093 () List!10889)

(declare-fun rulesProduceEachTokenIndividually!627 (LexerInterface!1584 List!10889 BalanceConc!6896) Bool)

(assert (=> b!1108042 (= res!490627 (rulesProduceEachTokenIndividually!627 thiss!11199 rules!1093 tokens!410))))

(declare-fun res!490630 () Bool)

(assert (=> start!95742 (=> (not res!490630) (not e!702617))))

(get-info :version)

(assert (=> start!95742 (= res!490630 ((_ is Lexer!1582) thiss!11199))))

(assert (=> start!95742 e!702617))

(assert (=> start!95742 true))

(declare-fun e!702614 () Bool)

(assert (=> start!95742 e!702614))

(declare-fun inv!13952 (BalanceConc!6896) Bool)

(assert (=> start!95742 (and (inv!13952 tokens!410) e!702616)))

(declare-fun b!1108043 () Bool)

(declare-fun e!702613 () Bool)

(declare-fun tp!328910 () Bool)

(assert (=> b!1108043 (= e!702614 (and e!702613 tp!328910))))

(declare-fun e!702612 () Bool)

(assert (=> b!1108044 (= e!702612 (and tp!328908 tp!328906))))

(declare-fun b!1108045 () Bool)

(declare-fun tp!328909 () Bool)

(declare-fun inv!13947 (String!13283) Bool)

(declare-fun inv!13953 (TokenValueInjection!3578) Bool)

(assert (=> b!1108045 (= e!702613 (and tp!328909 (inv!13947 (tag!2135 (h!16266 rules!1093))) (inv!13953 (transformation!1873 (h!16266 rules!1093))) e!702612))))

(declare-fun b!1108046 () Bool)

(assert (=> b!1108046 (= e!702617 false)))

(declare-fun lt!376131 () Int)

(declare-fun size!8426 (BalanceConc!6896) Int)

(assert (=> b!1108046 (= lt!376131 (size!8426 tokens!410))))

(declare-fun b!1108047 () Bool)

(declare-fun res!490629 () Bool)

(assert (=> b!1108047 (=> (not res!490629) (not e!702617))))

(declare-fun rulesInvariant!1459 (LexerInterface!1584 List!10889) Bool)

(assert (=> b!1108047 (= res!490629 (rulesInvariant!1459 thiss!11199 rules!1093))))

(declare-fun b!1108048 () Bool)

(declare-fun res!490628 () Bool)

(assert (=> b!1108048 (=> (not res!490628) (not e!702617))))

(declare-fun isEmpty!6742 (List!10889) Bool)

(assert (=> b!1108048 (= res!490628 (not (isEmpty!6742 rules!1093)))))

(assert (= (and start!95742 res!490630) b!1108048))

(assert (= (and b!1108048 res!490628) b!1108047))

(assert (= (and b!1108047 res!490629) b!1108042))

(assert (= (and b!1108042 res!490627) b!1108046))

(assert (= b!1108045 b!1108044))

(assert (= b!1108043 b!1108045))

(assert (= (and start!95742 ((_ is Cons!10865) rules!1093)) b!1108043))

(assert (= start!95742 b!1108041))

(declare-fun m!1265027 () Bool)

(assert (=> start!95742 m!1265027))

(declare-fun m!1265029 () Bool)

(assert (=> b!1108048 m!1265029))

(declare-fun m!1265031 () Bool)

(assert (=> b!1108047 m!1265031))

(declare-fun m!1265033 () Bool)

(assert (=> b!1108042 m!1265033))

(declare-fun m!1265035 () Bool)

(assert (=> b!1108045 m!1265035))

(declare-fun m!1265037 () Bool)

(assert (=> b!1108045 m!1265037))

(declare-fun m!1265039 () Bool)

(assert (=> b!1108041 m!1265039))

(declare-fun m!1265041 () Bool)

(assert (=> b!1108046 m!1265041))

(check-sat (not b_next!26987) b_and!79243 b_and!79241 (not b!1108043) (not b!1108042) (not b!1108046) (not b!1108048) (not start!95742) (not b!1108045) (not b!1108041) (not b!1108047) (not b_next!26985))
(check-sat b_and!79241 b_and!79243 (not b_next!26987) (not b_next!26985))
