; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!273664 () Bool)

(assert start!273664)

(declare-fun b!2820724 () Bool)

(declare-fun b_free!80669 () Bool)

(declare-fun b_next!81373 () Bool)

(assert (=> b!2820724 (= b_free!80669 (not b_next!81373))))

(declare-fun tp!900850 () Bool)

(declare-fun b_and!206055 () Bool)

(assert (=> b!2820724 (= tp!900850 b_and!206055)))

(declare-fun b_free!80671 () Bool)

(declare-fun b_next!81375 () Bool)

(assert (=> b!2820724 (= b_free!80671 (not b_next!81375))))

(declare-fun tp!900852 () Bool)

(declare-fun b_and!206057 () Bool)

(assert (=> b!2820724 (= tp!900852 b_and!206057)))

(declare-fun b!2820734 () Bool)

(declare-fun b_free!80673 () Bool)

(declare-fun b_next!81377 () Bool)

(assert (=> b!2820734 (= b_free!80673 (not b_next!81377))))

(declare-fun tp!900848 () Bool)

(declare-fun b_and!206059 () Bool)

(assert (=> b!2820734 (= tp!900848 b_and!206059)))

(declare-fun b_free!80675 () Bool)

(declare-fun b_next!81379 () Bool)

(assert (=> b!2820734 (= b_free!80675 (not b_next!81379))))

(declare-fun tp!900846 () Bool)

(declare-fun b_and!206061 () Bool)

(assert (=> b!2820734 (= tp!900846 b_and!206061)))

(declare-fun b!2820748 () Bool)

(declare-fun e!1784355 () Bool)

(assert (=> b!2820748 (= e!1784355 true)))

(declare-fun b!2820747 () Bool)

(declare-fun e!1784354 () Bool)

(assert (=> b!2820747 (= e!1784354 e!1784355)))

(declare-fun b!2820746 () Bool)

(declare-fun e!1784353 () Bool)

(assert (=> b!2820746 (= e!1784353 e!1784354)))

(declare-fun b!2820725 () Bool)

(assert (=> b!2820725 e!1784353))

(assert (= b!2820747 b!2820748))

(assert (= b!2820746 b!2820747))

(declare-datatypes ((C!16870 0))(
  ( (C!16871 (val!10415 Int)) )
))
(declare-datatypes ((List!33210 0))(
  ( (Nil!33086) (Cons!33086 (h!38506 (_ BitVec 16)) (t!230479 List!33210)) )
))
(declare-datatypes ((TokenValue!5184 0))(
  ( (FloatLiteralValue!10368 (text!36733 List!33210)) (TokenValueExt!5183 (__x!22041 Int)) (Broken!25920 (value!159484 List!33210)) (Object!5307) (End!5184) (Def!5184) (Underscore!5184) (Match!5184) (Else!5184) (Error!5184) (Case!5184) (If!5184) (Extends!5184) (Abstract!5184) (Class!5184) (Val!5184) (DelimiterValue!10368 (del!5244 List!33210)) (KeywordValue!5190 (value!159485 List!33210)) (CommentValue!10368 (value!159486 List!33210)) (WhitespaceValue!10368 (value!159487 List!33210)) (IndentationValue!5184 (value!159488 List!33210)) (String!36377) (Int32!5184) (Broken!25921 (value!159489 List!33210)) (Boolean!5185) (Unit!47031) (OperatorValue!5187 (op!5244 List!33210)) (IdentifierValue!10368 (value!159490 List!33210)) (IdentifierValue!10369 (value!159491 List!33210)) (WhitespaceValue!10369 (value!159492 List!33210)) (True!10368) (False!10368) (Broken!25922 (value!159493 List!33210)) (Broken!25923 (value!159494 List!33210)) (True!10369) (RightBrace!5184) (RightBracket!5184) (Colon!5184) (Null!5184) (Comma!5184) (LeftBracket!5184) (False!10369) (LeftBrace!5184) (ImaginaryLiteralValue!5184 (text!36734 List!33210)) (StringLiteralValue!15552 (value!159495 List!33210)) (EOFValue!5184 (value!159496 List!33210)) (IdentValue!5184 (value!159497 List!33210)) (DelimiterValue!10369 (value!159498 List!33210)) (DedentValue!5184 (value!159499 List!33210)) (NewLineValue!5184 (value!159500 List!33210)) (IntegerValue!15552 (value!159501 (_ BitVec 32)) (text!36735 List!33210)) (IntegerValue!15553 (value!159502 Int) (text!36736 List!33210)) (Times!5184) (Or!5184) (Equal!5184) (Minus!5184) (Broken!25924 (value!159503 List!33210)) (And!5184) (Div!5184) (LessEqual!5184) (Mod!5184) (Concat!13528) (Not!5184) (Plus!5184) (SpaceValue!5184 (value!159504 List!33210)) (IntegerValue!15554 (value!159505 Int) (text!36737 List!33210)) (StringLiteralValue!15553 (text!36738 List!33210)) (FloatLiteralValue!10369 (text!36739 List!33210)) (BytesLiteralValue!5184 (value!159506 List!33210)) (CommentValue!10369 (value!159507 List!33210)) (StringLiteralValue!15554 (value!159508 List!33210)) (ErrorTokenValue!5184 (msg!5245 List!33210)) )
))
(declare-datatypes ((List!33211 0))(
  ( (Nil!33087) (Cons!33087 (h!38507 C!16870) (t!230480 List!33211)) )
))
(declare-datatypes ((IArray!20535 0))(
  ( (IArray!20536 (innerList!10325 List!33211)) )
))
(declare-datatypes ((Conc!10265 0))(
  ( (Node!10265 (left!24987 Conc!10265) (right!25317 Conc!10265) (csize!20760 Int) (cheight!10476 Int)) (Leaf!15634 (xs!13377 IArray!20535) (csize!20761 Int)) (Empty!10265) )
))
(declare-datatypes ((BalanceConc!20168 0))(
  ( (BalanceConc!20169 (c!457030 Conc!10265)) )
))
(declare-datatypes ((TokenValueInjection!9796 0))(
  ( (TokenValueInjection!9797 (toValue!6972 Int) (toChars!6831 Int)) )
))
(declare-datatypes ((String!36378 0))(
  ( (String!36379 (value!159509 String)) )
))
(declare-datatypes ((Regex!8344 0))(
  ( (ElementMatch!8344 (c!457031 C!16870)) (Concat!13529 (regOne!17200 Regex!8344) (regTwo!17200 Regex!8344)) (EmptyExpr!8344) (Star!8344 (reg!8673 Regex!8344)) (EmptyLang!8344) (Union!8344 (regOne!17201 Regex!8344) (regTwo!17201 Regex!8344)) )
))
(declare-datatypes ((Rule!9708 0))(
  ( (Rule!9709 (regex!4954 Regex!8344) (tag!5458 String!36378) (isSeparator!4954 Bool) (transformation!4954 TokenValueInjection!9796)) )
))
(declare-datatypes ((List!33212 0))(
  ( (Nil!33088) (Cons!33088 (h!38508 Rule!9708) (t!230481 List!33212)) )
))
(declare-fun rules!4424 () List!33212)

(assert (= (and b!2820725 (is-Cons!33088 rules!4424)) b!2820746))

(declare-fun lambda!103546 () Int)

(declare-fun order!17569 () Int)

(declare-fun order!17571 () Int)

(declare-fun dynLambda!13835 (Int Int) Int)

(declare-fun dynLambda!13836 (Int Int) Int)

(assert (=> b!2820748 (< (dynLambda!13835 order!17569 (toValue!6972 (transformation!4954 (h!38508 rules!4424)))) (dynLambda!13836 order!17571 lambda!103546))))

(declare-fun order!17573 () Int)

(declare-fun dynLambda!13837 (Int Int) Int)

(assert (=> b!2820748 (< (dynLambda!13837 order!17573 (toChars!6831 (transformation!4954 (h!38508 rules!4424)))) (dynLambda!13836 order!17571 lambda!103546))))

(declare-datatypes ((LexerInterface!4545 0))(
  ( (LexerInterfaceExt!4542 (__x!22042 Int)) (Lexer!4543) )
))
(declare-fun thiss!27755 () LexerInterface!4545)

(declare-fun b!2820718 () Bool)

(declare-fun e!1784336 () Bool)

(declare-datatypes ((Token!9310 0))(
  ( (Token!9311 (value!159510 TokenValue!5184) (rule!7382 Rule!9708) (size!25752 Int) (originalCharacters!5686 List!33211)) )
))
(declare-datatypes ((List!33213 0))(
  ( (Nil!33089) (Cons!33089 (h!38509 Token!9310) (t!230482 List!33213)) )
))
(declare-fun lt!1006815 () List!33213)

(declare-fun rulesProduceEachTokenIndividuallyList!1597 (LexerInterface!4545 List!33212 List!33213) Bool)

(assert (=> b!2820718 (= e!1784336 (rulesProduceEachTokenIndividuallyList!1597 thiss!27755 rules!4424 (t!230482 lt!1006815)))))

(declare-fun b!2820719 () Bool)

(declare-fun res!1173842 () Bool)

(declare-fun e!1784338 () Bool)

(assert (=> b!2820719 (=> (not res!1173842) (not e!1784338))))

(declare-fun rulesInvariant!3963 (LexerInterface!4545 List!33212) Bool)

(assert (=> b!2820719 (= res!1173842 (rulesInvariant!3963 thiss!27755 rules!4424))))

(declare-fun b!2820721 () Bool)

(declare-fun res!1173841 () Bool)

(assert (=> b!2820721 (=> (not res!1173841) (not e!1784338))))

(declare-fun isEmpty!18295 (List!33212) Bool)

(assert (=> b!2820721 (= res!1173841 (not (isEmpty!18295 rules!4424)))))

(declare-fun b!2820722 () Bool)

(declare-fun lt!1006813 () List!33213)

(declare-fun e!1784335 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!682 (LexerInterface!4545 List!33213 List!33212) Bool)

(assert (=> b!2820722 (= e!1784335 (tokensListTwoByTwoPredicateSeparableList!682 thiss!27755 lt!1006813 rules!4424))))

(declare-fun b!2820723 () Bool)

(declare-fun res!1173833 () Bool)

(assert (=> b!2820723 (=> (not res!1173833) (not e!1784338))))

(declare-fun l!6581 () List!33213)

(assert (=> b!2820723 (= res!1173833 (rulesProduceEachTokenIndividuallyList!1597 thiss!27755 rules!4424 l!6581))))

(declare-fun e!1784341 () Bool)

(assert (=> b!2820724 (= e!1784341 (and tp!900850 tp!900852))))

(assert (=> b!2820725 (= e!1784338 (not true))))

(declare-fun forall!6778 (List!33213 Int) Bool)

(assert (=> b!2820725 (forall!6778 lt!1006815 lambda!103546)))

(declare-datatypes ((Unit!47032 0))(
  ( (Unit!47033) )
))
(declare-fun lt!1006816 () Unit!47032)

(declare-fun lemmaForallSubseq!222 (List!33213 List!33213 Int) Unit!47032)

(assert (=> b!2820725 (= lt!1006816 (lemmaForallSubseq!222 lt!1006815 l!6581 lambda!103546))))

(declare-fun e!1784342 () Bool)

(assert (=> b!2820725 (= (rulesProduceEachTokenIndividuallyList!1597 thiss!27755 rules!4424 lt!1006815) e!1784342)))

(declare-fun res!1173837 () Bool)

(assert (=> b!2820725 (=> res!1173837 e!1784342)))

(assert (=> b!2820725 (= res!1173837 (not (is-Cons!33089 lt!1006815)))))

(declare-fun i!1730 () Int)

(declare-fun take!548 (List!33213 Int) List!33213)

(assert (=> b!2820725 (= lt!1006815 (take!548 l!6581 i!1730))))

(assert (=> b!2820725 e!1784335))

(declare-fun res!1173836 () Bool)

(assert (=> b!2820725 (=> (not res!1173836) (not e!1784335))))

(assert (=> b!2820725 (= res!1173836 (forall!6778 lt!1006813 lambda!103546))))

(declare-fun lt!1006812 () Unit!47032)

(assert (=> b!2820725 (= lt!1006812 (lemmaForallSubseq!222 lt!1006813 (t!230482 l!6581) lambda!103546))))

(declare-fun e!1784346 () Bool)

(assert (=> b!2820725 (= (rulesProduceEachTokenIndividuallyList!1597 thiss!27755 rules!4424 lt!1006813) e!1784346)))

(declare-fun res!1173834 () Bool)

(assert (=> b!2820725 (=> res!1173834 e!1784346)))

(assert (=> b!2820725 (= res!1173834 (not (is-Cons!33089 lt!1006813)))))

(assert (=> b!2820725 (= lt!1006813 (take!548 (t!230482 l!6581) (- i!1730 1)))))

(declare-fun lt!1006814 () Unit!47032)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!49 (LexerInterface!4545 List!33213 Int List!33212) Unit!47032)

(assert (=> b!2820725 (= lt!1006814 (tokensListTwoByTwoPredicateSeparableTokensTakeList!49 thiss!27755 (t!230482 l!6581) (- i!1730 1) rules!4424))))

(declare-fun b!2820726 () Bool)

(declare-fun res!1173835 () Bool)

(assert (=> b!2820726 (=> (not res!1173835) (not e!1784338))))

(assert (=> b!2820726 (= res!1173835 (and (not (is-Nil!33089 l!6581)) (> i!1730 0)))))

(declare-fun e!1784344 () Bool)

(declare-fun b!2820727 () Bool)

(declare-fun tp!900849 () Bool)

(declare-fun inv!45007 (String!36378) Bool)

(declare-fun inv!45010 (TokenValueInjection!9796) Bool)

(assert (=> b!2820727 (= e!1784344 (and tp!900849 (inv!45007 (tag!5458 (rule!7382 (h!38509 l!6581)))) (inv!45010 (transformation!4954 (rule!7382 (h!38509 l!6581)))) e!1784341))))

(declare-fun b!2820728 () Bool)

(declare-fun e!1784337 () Bool)

(declare-fun e!1784331 () Bool)

(declare-fun tp!900851 () Bool)

(assert (=> b!2820728 (= e!1784337 (and e!1784331 tp!900851))))

(declare-fun b!2820729 () Bool)

(declare-fun res!1173839 () Bool)

(assert (=> b!2820729 (=> (not res!1173839) (not e!1784338))))

(assert (=> b!2820729 (= res!1173839 (tokensListTwoByTwoPredicateSeparableList!682 thiss!27755 (t!230482 l!6581) rules!4424))))

(declare-fun e!1784332 () Bool)

(declare-fun b!2820730 () Bool)

(declare-fun tp!900847 () Bool)

(assert (=> b!2820730 (= e!1784331 (and tp!900847 (inv!45007 (tag!5458 (h!38508 rules!4424))) (inv!45010 (transformation!4954 (h!38508 rules!4424))) e!1784332))))

(declare-fun e!1784334 () Bool)

(declare-fun b!2820731 () Bool)

(assert (=> b!2820731 (= e!1784334 (rulesProduceEachTokenIndividuallyList!1597 thiss!27755 rules!4424 (t!230482 lt!1006813)))))

(declare-fun b!2820732 () Bool)

(declare-fun res!1173843 () Bool)

(assert (=> b!2820732 (=> (not res!1173843) (not e!1784338))))

(assert (=> b!2820732 (= res!1173843 (tokensListTwoByTwoPredicateSeparableList!682 thiss!27755 l!6581 rules!4424))))

(declare-fun b!2820733 () Bool)

(declare-fun res!1173844 () Bool)

(assert (=> b!2820733 (=> (not res!1173844) (not e!1784338))))

(assert (=> b!2820733 (= res!1173844 (rulesProduceEachTokenIndividuallyList!1597 thiss!27755 rules!4424 (t!230482 l!6581)))))

(assert (=> b!2820734 (= e!1784332 (and tp!900848 tp!900846))))

(declare-fun b!2820735 () Bool)

(assert (=> b!2820735 (= e!1784346 e!1784334)))

(declare-fun res!1173838 () Bool)

(assert (=> b!2820735 (=> (not res!1173838) (not e!1784334))))

(declare-fun rulesProduceIndividualToken!2083 (LexerInterface!4545 List!33212 Token!9310) Bool)

(assert (=> b!2820735 (= res!1173838 (rulesProduceIndividualToken!2083 thiss!27755 rules!4424 (h!38509 lt!1006813)))))

(declare-fun res!1173840 () Bool)

(assert (=> start!273664 (=> (not res!1173840) (not e!1784338))))

(assert (=> start!273664 (= res!1173840 (is-Lexer!4543 thiss!27755))))

(assert (=> start!273664 e!1784338))

(assert (=> start!273664 true))

(assert (=> start!273664 e!1784337))

(declare-fun e!1784340 () Bool)

(assert (=> start!273664 e!1784340))

(declare-fun b!2820720 () Bool)

(assert (=> b!2820720 (= e!1784342 e!1784336)))

(declare-fun res!1173845 () Bool)

(assert (=> b!2820720 (=> (not res!1173845) (not e!1784336))))

(assert (=> b!2820720 (= res!1173845 (rulesProduceIndividualToken!2083 thiss!27755 rules!4424 (h!38509 lt!1006815)))))

(declare-fun b!2820736 () Bool)

(declare-fun tp!900853 () Bool)

(declare-fun e!1784343 () Bool)

(declare-fun inv!45011 (Token!9310) Bool)

(assert (=> b!2820736 (= e!1784340 (and (inv!45011 (h!38509 l!6581)) e!1784343 tp!900853))))

(declare-fun b!2820737 () Bool)

(declare-fun tp!900845 () Bool)

(declare-fun inv!21 (TokenValue!5184) Bool)

(assert (=> b!2820737 (= e!1784343 (and (inv!21 (value!159510 (h!38509 l!6581))) e!1784344 tp!900845))))

(assert (= (and start!273664 res!1173840) b!2820721))

(assert (= (and b!2820721 res!1173841) b!2820719))

(assert (= (and b!2820719 res!1173842) b!2820723))

(assert (= (and b!2820723 res!1173833) b!2820732))

(assert (= (and b!2820732 res!1173843) b!2820726))

(assert (= (and b!2820726 res!1173835) b!2820733))

(assert (= (and b!2820733 res!1173844) b!2820729))

(assert (= (and b!2820729 res!1173839) b!2820725))

(assert (= (and b!2820725 (not res!1173834)) b!2820735))

(assert (= (and b!2820735 res!1173838) b!2820731))

(assert (= (and b!2820725 res!1173836) b!2820722))

(assert (= (and b!2820725 (not res!1173837)) b!2820720))

(assert (= (and b!2820720 res!1173845) b!2820718))

(assert (= b!2820730 b!2820734))

(assert (= b!2820728 b!2820730))

(assert (= (and start!273664 (is-Cons!33088 rules!4424)) b!2820728))

(assert (= b!2820727 b!2820724))

(assert (= b!2820737 b!2820727))

(assert (= b!2820736 b!2820737))

(assert (= (and start!273664 (is-Cons!33089 l!6581)) b!2820736))

(declare-fun m!3251191 () Bool)

(assert (=> b!2820718 m!3251191))

(declare-fun m!3251193 () Bool)

(assert (=> b!2820729 m!3251193))

(declare-fun m!3251195 () Bool)

(assert (=> b!2820719 m!3251195))

(declare-fun m!3251197 () Bool)

(assert (=> b!2820723 m!3251197))

(declare-fun m!3251199 () Bool)

(assert (=> b!2820725 m!3251199))

(declare-fun m!3251201 () Bool)

(assert (=> b!2820725 m!3251201))

(declare-fun m!3251203 () Bool)

(assert (=> b!2820725 m!3251203))

(declare-fun m!3251205 () Bool)

(assert (=> b!2820725 m!3251205))

(declare-fun m!3251207 () Bool)

(assert (=> b!2820725 m!3251207))

(declare-fun m!3251209 () Bool)

(assert (=> b!2820725 m!3251209))

(declare-fun m!3251211 () Bool)

(assert (=> b!2820725 m!3251211))

(declare-fun m!3251213 () Bool)

(assert (=> b!2820725 m!3251213))

(declare-fun m!3251215 () Bool)

(assert (=> b!2820725 m!3251215))

(declare-fun m!3251217 () Bool)

(assert (=> b!2820736 m!3251217))

(declare-fun m!3251219 () Bool)

(assert (=> b!2820732 m!3251219))

(declare-fun m!3251221 () Bool)

(assert (=> b!2820720 m!3251221))

(declare-fun m!3251223 () Bool)

(assert (=> b!2820737 m!3251223))

(declare-fun m!3251225 () Bool)

(assert (=> b!2820730 m!3251225))

(declare-fun m!3251227 () Bool)

(assert (=> b!2820730 m!3251227))

(declare-fun m!3251229 () Bool)

(assert (=> b!2820721 m!3251229))

(declare-fun m!3251231 () Bool)

(assert (=> b!2820727 m!3251231))

(declare-fun m!3251233 () Bool)

(assert (=> b!2820727 m!3251233))

(declare-fun m!3251235 () Bool)

(assert (=> b!2820735 m!3251235))

(declare-fun m!3251237 () Bool)

(assert (=> b!2820733 m!3251237))

(declare-fun m!3251239 () Bool)

(assert (=> b!2820722 m!3251239))

(declare-fun m!3251241 () Bool)

(assert (=> b!2820731 m!3251241))

(push 1)

(assert (not b!2820722))

(assert (not b!2820718))

(assert (not b!2820723))

(assert (not b!2820725))

(assert (not b_next!81379))

(assert b_and!206059)

(assert (not b_next!81375))

(assert (not b_next!81377))

(assert (not b!2820721))

(assert (not b!2820737))

(assert (not b!2820727))

(assert (not b!2820732))

(assert (not b!2820746))

(assert (not b!2820730))

(assert (not b!2820719))

(assert (not b!2820733))

(assert (not b!2820720))

(assert (not b!2820731))

(assert (not b!2820729))

(assert (not b!2820735))

(assert (not b!2820736))

(assert b_and!206061)

(assert (not b!2820728))

(assert (not b_next!81373))

(assert b_and!206057)

(assert b_and!206055)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!81379))

(assert b_and!206059)

(assert (not b_next!81375))

(assert (not b_next!81377))

(assert b_and!206061)

(assert (not b_next!81373))

(assert b_and!206057)

(assert b_and!206055)

(check-sat)

(pop 1)

