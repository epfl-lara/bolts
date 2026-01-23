; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!273404 () Bool)

(assert start!273404)

(declare-fun b!2818436 () Bool)

(declare-fun b_free!80445 () Bool)

(declare-fun b_next!81149 () Bool)

(assert (=> b!2818436 (= b_free!80445 (not b_next!81149))))

(declare-fun tp!899878 () Bool)

(declare-fun b_and!205783 () Bool)

(assert (=> b!2818436 (= tp!899878 b_and!205783)))

(declare-fun b_free!80447 () Bool)

(declare-fun b_next!81151 () Bool)

(assert (=> b!2818436 (= b_free!80447 (not b_next!81151))))

(declare-fun tp!899883 () Bool)

(declare-fun b_and!205785 () Bool)

(assert (=> b!2818436 (= tp!899883 b_and!205785)))

(declare-fun b!2818437 () Bool)

(declare-fun b_free!80449 () Bool)

(declare-fun b_next!81153 () Bool)

(assert (=> b!2818437 (= b_free!80449 (not b_next!81153))))

(declare-fun tp!899881 () Bool)

(declare-fun b_and!205787 () Bool)

(assert (=> b!2818437 (= tp!899881 b_and!205787)))

(declare-fun b_free!80451 () Bool)

(declare-fun b_next!81155 () Bool)

(assert (=> b!2818437 (= b_free!80451 (not b_next!81155))))

(declare-fun tp!899882 () Bool)

(declare-fun b_and!205789 () Bool)

(assert (=> b!2818437 (= tp!899882 b_and!205789)))

(declare-fun b!2818434 () Bool)

(declare-fun res!1172834 () Bool)

(declare-fun e!1782557 () Bool)

(assert (=> b!2818434 (=> (not res!1172834) (not e!1782557))))

(declare-datatypes ((LexerInterface!4523 0))(
  ( (LexerInterfaceExt!4520 (__x!21997 Int)) (Lexer!4521) )
))
(declare-fun thiss!27755 () LexerInterface!4523)

(declare-datatypes ((List!33118 0))(
  ( (Nil!32994) (Cons!32994 (h!38414 (_ BitVec 16)) (t!230267 List!33118)) )
))
(declare-datatypes ((TokenValue!5162 0))(
  ( (FloatLiteralValue!10324 (text!36579 List!33118)) (TokenValueExt!5161 (__x!21998 Int)) (Broken!25810 (value!158857 List!33118)) (Object!5285) (End!5162) (Def!5162) (Underscore!5162) (Match!5162) (Else!5162) (Error!5162) (Case!5162) (If!5162) (Extends!5162) (Abstract!5162) (Class!5162) (Val!5162) (DelimiterValue!10324 (del!5222 List!33118)) (KeywordValue!5168 (value!158858 List!33118)) (CommentValue!10324 (value!158859 List!33118)) (WhitespaceValue!10324 (value!158860 List!33118)) (IndentationValue!5162 (value!158861 List!33118)) (String!36267) (Int32!5162) (Broken!25811 (value!158862 List!33118)) (Boolean!5163) (Unit!46963) (OperatorValue!5165 (op!5222 List!33118)) (IdentifierValue!10324 (value!158863 List!33118)) (IdentifierValue!10325 (value!158864 List!33118)) (WhitespaceValue!10325 (value!158865 List!33118)) (True!10324) (False!10324) (Broken!25812 (value!158866 List!33118)) (Broken!25813 (value!158867 List!33118)) (True!10325) (RightBrace!5162) (RightBracket!5162) (Colon!5162) (Null!5162) (Comma!5162) (LeftBracket!5162) (False!10325) (LeftBrace!5162) (ImaginaryLiteralValue!5162 (text!36580 List!33118)) (StringLiteralValue!15486 (value!158868 List!33118)) (EOFValue!5162 (value!158869 List!33118)) (IdentValue!5162 (value!158870 List!33118)) (DelimiterValue!10325 (value!158871 List!33118)) (DedentValue!5162 (value!158872 List!33118)) (NewLineValue!5162 (value!158873 List!33118)) (IntegerValue!15486 (value!158874 (_ BitVec 32)) (text!36581 List!33118)) (IntegerValue!15487 (value!158875 Int) (text!36582 List!33118)) (Times!5162) (Or!5162) (Equal!5162) (Minus!5162) (Broken!25814 (value!158876 List!33118)) (And!5162) (Div!5162) (LessEqual!5162) (Mod!5162) (Concat!13484) (Not!5162) (Plus!5162) (SpaceValue!5162 (value!158877 List!33118)) (IntegerValue!15488 (value!158878 Int) (text!36583 List!33118)) (StringLiteralValue!15487 (text!36584 List!33118)) (FloatLiteralValue!10325 (text!36585 List!33118)) (BytesLiteralValue!5162 (value!158879 List!33118)) (CommentValue!10325 (value!158880 List!33118)) (StringLiteralValue!15488 (value!158881 List!33118)) (ErrorTokenValue!5162 (msg!5223 List!33118)) )
))
(declare-datatypes ((String!36268 0))(
  ( (String!36269 (value!158882 String)) )
))
(declare-datatypes ((C!16826 0))(
  ( (C!16827 (val!10393 Int)) )
))
(declare-datatypes ((Regex!8322 0))(
  ( (ElementMatch!8322 (c!456874 C!16826)) (Concat!13485 (regOne!17156 Regex!8322) (regTwo!17156 Regex!8322)) (EmptyExpr!8322) (Star!8322 (reg!8651 Regex!8322)) (EmptyLang!8322) (Union!8322 (regOne!17157 Regex!8322) (regTwo!17157 Regex!8322)) )
))
(declare-datatypes ((List!33119 0))(
  ( (Nil!32995) (Cons!32995 (h!38415 C!16826) (t!230268 List!33119)) )
))
(declare-datatypes ((IArray!20483 0))(
  ( (IArray!20484 (innerList!10299 List!33119)) )
))
(declare-datatypes ((Conc!10239 0))(
  ( (Node!10239 (left!24920 Conc!10239) (right!25250 Conc!10239) (csize!20708 Int) (cheight!10450 Int)) (Leaf!15597 (xs!13351 IArray!20483) (csize!20709 Int)) (Empty!10239) )
))
(declare-datatypes ((BalanceConc!20116 0))(
  ( (BalanceConc!20117 (c!456875 Conc!10239)) )
))
(declare-datatypes ((TokenValueInjection!9752 0))(
  ( (TokenValueInjection!9753 (toValue!6946 Int) (toChars!6805 Int)) )
))
(declare-datatypes ((Rule!9664 0))(
  ( (Rule!9665 (regex!4932 Regex!8322) (tag!5436 String!36268) (isSeparator!4932 Bool) (transformation!4932 TokenValueInjection!9752)) )
))
(declare-datatypes ((Token!9266 0))(
  ( (Token!9267 (value!158883 TokenValue!5162) (rule!7360 Rule!9664) (size!25710 Int) (originalCharacters!5664 List!33119)) )
))
(declare-datatypes ((List!33120 0))(
  ( (Nil!32996) (Cons!32996 (h!38416 Token!9266) (t!230269 List!33120)) )
))
(declare-fun l!6581 () List!33120)

(declare-datatypes ((List!33121 0))(
  ( (Nil!32997) (Cons!32997 (h!38417 Rule!9664) (t!230270 List!33121)) )
))
(declare-fun rules!4424 () List!33121)

(declare-fun rulesProduceEachTokenIndividuallyList!1575 (LexerInterface!4523 List!33121 List!33120) Bool)

(assert (=> b!2818434 (= res!1172834 (rulesProduceEachTokenIndividuallyList!1575 thiss!27755 rules!4424 l!6581))))

(declare-fun b!2818435 () Bool)

(declare-fun res!1172836 () Bool)

(assert (=> b!2818435 (=> (not res!1172836) (not e!1782557))))

(declare-fun isEmpty!18261 (List!33121) Bool)

(assert (=> b!2818435 (= res!1172836 (not (isEmpty!18261 rules!4424)))))

(declare-fun e!1782562 () Bool)

(assert (=> b!2818436 (= e!1782562 (and tp!899878 tp!899883))))

(declare-fun e!1782563 () Bool)

(assert (=> b!2818437 (= e!1782563 (and tp!899881 tp!899882))))

(declare-fun b!2818438 () Bool)

(declare-fun e!1782564 () Bool)

(declare-fun e!1782559 () Bool)

(declare-fun tp!899884 () Bool)

(assert (=> b!2818438 (= e!1782564 (and e!1782559 tp!899884))))

(declare-fun b!2818439 () Bool)

(declare-fun tp!899885 () Bool)

(declare-fun e!1782555 () Bool)

(declare-fun inv!44916 (String!36268) Bool)

(declare-fun inv!44919 (TokenValueInjection!9752) Bool)

(assert (=> b!2818439 (= e!1782555 (and tp!899885 (inv!44916 (tag!5436 (rule!7360 (h!38416 l!6581)))) (inv!44919 (transformation!4932 (rule!7360 (h!38416 l!6581)))) e!1782563))))

(declare-fun res!1172835 () Bool)

(assert (=> start!273404 (=> (not res!1172835) (not e!1782557))))

(assert (=> start!273404 (= res!1172835 (is-Lexer!4521 thiss!27755))))

(assert (=> start!273404 e!1782557))

(assert (=> start!273404 true))

(assert (=> start!273404 e!1782564))

(declare-fun e!1782560 () Bool)

(assert (=> start!273404 e!1782560))

(declare-fun b!2818440 () Bool)

(declare-fun res!1172832 () Bool)

(assert (=> b!2818440 (=> (not res!1172832) (not e!1782557))))

(declare-fun i!1730 () Int)

(assert (=> b!2818440 (= res!1172832 (and (not (is-Nil!32996 l!6581)) (<= i!1730 0)))))

(declare-fun b!2818441 () Bool)

(assert (=> b!2818441 (= e!1782557 false)))

(declare-fun lt!1006350 () List!33120)

(declare-fun take!526 (List!33120 Int) List!33120)

(assert (=> b!2818441 (= lt!1006350 (take!526 l!6581 i!1730))))

(declare-fun b!2818442 () Bool)

(declare-fun tp!899877 () Bool)

(assert (=> b!2818442 (= e!1782559 (and tp!899877 (inv!44916 (tag!5436 (h!38417 rules!4424))) (inv!44919 (transformation!4932 (h!38417 rules!4424))) e!1782562))))

(declare-fun e!1782565 () Bool)

(declare-fun b!2818443 () Bool)

(declare-fun tp!899880 () Bool)

(declare-fun inv!21 (TokenValue!5162) Bool)

(assert (=> b!2818443 (= e!1782565 (and (inv!21 (value!158883 (h!38416 l!6581))) e!1782555 tp!899880))))

(declare-fun b!2818444 () Bool)

(declare-fun res!1172833 () Bool)

(assert (=> b!2818444 (=> (not res!1172833) (not e!1782557))))

(declare-fun rulesInvariant!3941 (LexerInterface!4523 List!33121) Bool)

(assert (=> b!2818444 (= res!1172833 (rulesInvariant!3941 thiss!27755 rules!4424))))

(declare-fun b!2818445 () Bool)

(declare-fun res!1172837 () Bool)

(assert (=> b!2818445 (=> (not res!1172837) (not e!1782557))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!660 (LexerInterface!4523 List!33120 List!33121) Bool)

(assert (=> b!2818445 (= res!1172837 (tokensListTwoByTwoPredicateSeparableList!660 thiss!27755 l!6581 rules!4424))))

(declare-fun tp!899879 () Bool)

(declare-fun b!2818446 () Bool)

(declare-fun inv!44920 (Token!9266) Bool)

(assert (=> b!2818446 (= e!1782560 (and (inv!44920 (h!38416 l!6581)) e!1782565 tp!899879))))

(assert (= (and start!273404 res!1172835) b!2818435))

(assert (= (and b!2818435 res!1172836) b!2818444))

(assert (= (and b!2818444 res!1172833) b!2818434))

(assert (= (and b!2818434 res!1172834) b!2818445))

(assert (= (and b!2818445 res!1172837) b!2818440))

(assert (= (and b!2818440 res!1172832) b!2818441))

(assert (= b!2818442 b!2818436))

(assert (= b!2818438 b!2818442))

(assert (= (and start!273404 (is-Cons!32997 rules!4424)) b!2818438))

(assert (= b!2818439 b!2818437))

(assert (= b!2818443 b!2818439))

(assert (= b!2818446 b!2818443))

(assert (= (and start!273404 (is-Cons!32996 l!6581)) b!2818446))

(declare-fun m!3249323 () Bool)

(assert (=> b!2818443 m!3249323))

(declare-fun m!3249325 () Bool)

(assert (=> b!2818442 m!3249325))

(declare-fun m!3249327 () Bool)

(assert (=> b!2818442 m!3249327))

(declare-fun m!3249329 () Bool)

(assert (=> b!2818441 m!3249329))

(declare-fun m!3249331 () Bool)

(assert (=> b!2818435 m!3249331))

(declare-fun m!3249333 () Bool)

(assert (=> b!2818445 m!3249333))

(declare-fun m!3249335 () Bool)

(assert (=> b!2818434 m!3249335))

(declare-fun m!3249337 () Bool)

(assert (=> b!2818446 m!3249337))

(declare-fun m!3249339 () Bool)

(assert (=> b!2818444 m!3249339))

(declare-fun m!3249341 () Bool)

(assert (=> b!2818439 m!3249341))

(declare-fun m!3249343 () Bool)

(assert (=> b!2818439 m!3249343))

(push 1)

(assert (not b!2818439))

(assert b_and!205787)

(assert (not b_next!81155))

(assert (not b!2818438))

(assert (not b_next!81149))

(assert b_and!205785)

(assert (not b!2818443))

(assert (not b_next!81153))

(assert (not b!2818446))

(assert (not b!2818444))

(assert b_and!205789)

(assert (not b!2818434))

(assert (not b!2818445))

(assert b_and!205783)

(assert (not b_next!81151))

(assert (not b!2818435))

(assert (not b!2818442))

(assert (not b!2818441))

(check-sat)

(pop 1)

(push 1)

(assert b_and!205787)

(assert b_and!205783)

(assert (not b_next!81155))

(assert (not b_next!81149))

(assert (not b_next!81151))

(assert b_and!205785)

(assert (not b_next!81153))

(assert b_and!205789)

(check-sat)

(pop 1)

