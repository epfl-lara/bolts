; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17486 () Bool)

(assert start!17486)

(declare-fun b!162363 () Bool)

(declare-fun b_free!6185 () Bool)

(declare-fun b_next!6185 () Bool)

(assert (=> b!162363 (= b_free!6185 (not b_next!6185))))

(declare-fun tp!82276 () Bool)

(declare-fun b_and!10169 () Bool)

(assert (=> b!162363 (= tp!82276 b_and!10169)))

(declare-fun b_free!6187 () Bool)

(declare-fun b_next!6187 () Bool)

(assert (=> b!162363 (= b_free!6187 (not b_next!6187))))

(declare-fun tp!82285 () Bool)

(declare-fun b_and!10171 () Bool)

(assert (=> b!162363 (= tp!82285 b_and!10171)))

(declare-fun b!162354 () Bool)

(declare-fun b_free!6189 () Bool)

(declare-fun b_next!6189 () Bool)

(assert (=> b!162354 (= b_free!6189 (not b_next!6189))))

(declare-fun tp!82278 () Bool)

(declare-fun b_and!10173 () Bool)

(assert (=> b!162354 (= tp!82278 b_and!10173)))

(declare-fun b_free!6191 () Bool)

(declare-fun b_next!6191 () Bool)

(assert (=> b!162354 (= b_free!6191 (not b_next!6191))))

(declare-fun tp!82283 () Bool)

(declare-fun b_and!10175 () Bool)

(assert (=> b!162354 (= tp!82283 b_and!10175)))

(declare-fun b!162366 () Bool)

(declare-fun b_free!6193 () Bool)

(declare-fun b_next!6193 () Bool)

(assert (=> b!162366 (= b_free!6193 (not b_next!6193))))

(declare-fun tp!82277 () Bool)

(declare-fun b_and!10177 () Bool)

(assert (=> b!162366 (= tp!82277 b_and!10177)))

(declare-fun b_free!6195 () Bool)

(declare-fun b_next!6195 () Bool)

(assert (=> b!162366 (= b_free!6195 (not b_next!6195))))

(declare-fun tp!82281 () Bool)

(declare-fun b_and!10179 () Bool)

(assert (=> b!162366 (= tp!82281 b_and!10179)))

(declare-fun bs!15278 () Bool)

(declare-fun b!162350 () Bool)

(declare-fun b!162362 () Bool)

(assert (= bs!15278 (and b!162350 b!162362)))

(declare-fun lambda!4448 () Int)

(declare-fun lambda!4447 () Int)

(assert (=> bs!15278 (not (= lambda!4448 lambda!4447))))

(declare-fun b!162386 () Bool)

(declare-fun e!97849 () Bool)

(assert (=> b!162386 (= e!97849 true)))

(declare-fun b!162385 () Bool)

(declare-fun e!97848 () Bool)

(assert (=> b!162385 (= e!97848 e!97849)))

(declare-fun b!162384 () Bool)

(declare-fun e!97847 () Bool)

(assert (=> b!162384 (= e!97847 e!97848)))

(assert (=> b!162350 e!97847))

(assert (= b!162385 b!162386))

(assert (= b!162384 b!162385))

(declare-datatypes ((List!2813 0))(
  ( (Nil!2803) (Cons!2803 (h!8200 (_ BitVec 16)) (t!26083 List!2813)) )
))
(declare-datatypes ((TokenValue!519 0))(
  ( (FloatLiteralValue!1038 (text!4078 List!2813)) (TokenValueExt!518 (__x!2525 Int)) (Broken!2595 (value!18454 List!2813)) (Object!528) (End!519) (Def!519) (Underscore!519) (Match!519) (Else!519) (Error!519) (Case!519) (If!519) (Extends!519) (Abstract!519) (Class!519) (Val!519) (DelimiterValue!1038 (del!579 List!2813)) (KeywordValue!525 (value!18455 List!2813)) (CommentValue!1038 (value!18456 List!2813)) (WhitespaceValue!1038 (value!18457 List!2813)) (IndentationValue!519 (value!18458 List!2813)) (String!3674) (Int32!519) (Broken!2596 (value!18459 List!2813)) (Boolean!520) (Unit!2309) (OperatorValue!522 (op!579 List!2813)) (IdentifierValue!1038 (value!18460 List!2813)) (IdentifierValue!1039 (value!18461 List!2813)) (WhitespaceValue!1039 (value!18462 List!2813)) (True!1038) (False!1038) (Broken!2597 (value!18463 List!2813)) (Broken!2598 (value!18464 List!2813)) (True!1039) (RightBrace!519) (RightBracket!519) (Colon!519) (Null!519) (Comma!519) (LeftBracket!519) (False!1039) (LeftBrace!519) (ImaginaryLiteralValue!519 (text!4079 List!2813)) (StringLiteralValue!1557 (value!18465 List!2813)) (EOFValue!519 (value!18466 List!2813)) (IdentValue!519 (value!18467 List!2813)) (DelimiterValue!1039 (value!18468 List!2813)) (DedentValue!519 (value!18469 List!2813)) (NewLineValue!519 (value!18470 List!2813)) (IntegerValue!1557 (value!18471 (_ BitVec 32)) (text!4080 List!2813)) (IntegerValue!1558 (value!18472 Int) (text!4081 List!2813)) (Times!519) (Or!519) (Equal!519) (Minus!519) (Broken!2599 (value!18473 List!2813)) (And!519) (Div!519) (LessEqual!519) (Mod!519) (Concat!1240) (Not!519) (Plus!519) (SpaceValue!519 (value!18474 List!2813)) (IntegerValue!1559 (value!18475 Int) (text!4082 List!2813)) (StringLiteralValue!1558 (text!4083 List!2813)) (FloatLiteralValue!1039 (text!4084 List!2813)) (BytesLiteralValue!519 (value!18476 List!2813)) (CommentValue!1039 (value!18477 List!2813)) (StringLiteralValue!1559 (value!18478 List!2813)) (ErrorTokenValue!519 (msg!580 List!2813)) )
))
(declare-datatypes ((C!2364 0))(
  ( (C!2365 (val!1068 Int)) )
))
(declare-datatypes ((List!2814 0))(
  ( (Nil!2804) (Cons!2804 (h!8201 C!2364) (t!26084 List!2814)) )
))
(declare-datatypes ((IArray!1633 0))(
  ( (IArray!1634 (innerList!874 List!2814)) )
))
(declare-datatypes ((Conc!816 0))(
  ( (Node!816 (left!2115 Conc!816) (right!2445 Conc!816) (csize!1862 Int) (cheight!1027 Int)) (Leaf!1404 (xs!3411 IArray!1633) (csize!1863 Int)) (Empty!816) )
))
(declare-datatypes ((BalanceConc!1640 0))(
  ( (BalanceConc!1641 (c!32407 Conc!816)) )
))
(declare-datatypes ((TokenValueInjection!810 0))(
  ( (TokenValueInjection!811 (toValue!1152 Int) (toChars!1011 Int)) )
))
(declare-datatypes ((Regex!721 0))(
  ( (ElementMatch!721 (c!32408 C!2364)) (Concat!1241 (regOne!1954 Regex!721) (regTwo!1954 Regex!721)) (EmptyExpr!721) (Star!721 (reg!1050 Regex!721)) (EmptyLang!721) (Union!721 (regOne!1955 Regex!721) (regTwo!1955 Regex!721)) )
))
(declare-datatypes ((String!3675 0))(
  ( (String!3676 (value!18479 String)) )
))
(declare-datatypes ((Rule!794 0))(
  ( (Rule!795 (regex!497 Regex!721) (tag!675 String!3675) (isSeparator!497 Bool) (transformation!497 TokenValueInjection!810)) )
))
(declare-datatypes ((List!2815 0))(
  ( (Nil!2805) (Cons!2805 (h!8202 Rule!794) (t!26085 List!2815)) )
))
(declare-fun rules!1920 () List!2815)

(get-info :version)

(assert (= (and b!162350 ((_ is Cons!2805) rules!1920)) b!162384))

(declare-fun order!1427 () Int)

(declare-fun order!1425 () Int)

(declare-fun dynLambda!999 (Int Int) Int)

(declare-fun dynLambda!1000 (Int Int) Int)

(assert (=> b!162386 (< (dynLambda!999 order!1425 (toValue!1152 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1000 order!1427 lambda!4448))))

(declare-fun order!1429 () Int)

(declare-fun dynLambda!1001 (Int Int) Int)

(assert (=> b!162386 (< (dynLambda!1001 order!1429 (toChars!1011 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1000 order!1427 lambda!4448))))

(assert (=> b!162350 true))

(declare-fun b!162348 () Bool)

(declare-fun res!73679 () Bool)

(declare-fun e!97826 () Bool)

(assert (=> b!162348 (=> (not res!73679) (not e!97826))))

(declare-datatypes ((Token!738 0))(
  ( (Token!739 (value!18480 TokenValue!519) (rule!1004 Rule!794) (size!2343 Int) (originalCharacters!540 List!2814)) )
))
(declare-datatypes ((List!2816 0))(
  ( (Nil!2806) (Cons!2806 (h!8203 Token!738) (t!26086 List!2816)) )
))
(declare-fun tokens!465 () List!2816)

(assert (=> b!162348 (= res!73679 ((_ is Cons!2806) tokens!465))))

(declare-fun b!162349 () Bool)

(declare-fun e!97837 () Bool)

(declare-fun contains!446 (List!2816 Token!738) Bool)

(assert (=> b!162349 (= e!97837 (contains!446 tokens!465 (h!8203 tokens!465)))))

(declare-fun e!97840 () Bool)

(assert (=> b!162350 (= e!97840 e!97837)))

(declare-fun res!73676 () Bool)

(assert (=> b!162350 (=> (not res!73676) (not e!97837))))

(declare-fun forall!523 (List!2816 Int) Bool)

(assert (=> b!162350 (= res!73676 (forall!523 tokens!465 lambda!4448))))

(declare-fun lt!49240 () List!2814)

(assert (=> b!162350 (= lt!49240 (originalCharacters!540 (h!8203 tokens!465)))))

(declare-fun b!162351 () Bool)

(declare-fun res!73675 () Bool)

(assert (=> b!162351 (=> res!73675 e!97840)))

(declare-datatypes ((LexerInterface!383 0))(
  ( (LexerInterfaceExt!380 (__x!2526 Int)) (Lexer!381) )
))
(declare-fun thiss!17480 () LexerInterface!383)

(declare-datatypes ((IArray!1635 0))(
  ( (IArray!1636 (innerList!875 List!2816)) )
))
(declare-datatypes ((Conc!817 0))(
  ( (Node!817 (left!2116 Conc!817) (right!2446 Conc!817) (csize!1864 Int) (cheight!1028 Int)) (Leaf!1405 (xs!3412 IArray!1635) (csize!1865 Int)) (Empty!817) )
))
(declare-datatypes ((BalanceConc!1642 0))(
  ( (BalanceConc!1643 (c!32409 Conc!817)) )
))
(declare-fun isEmpty!1135 (BalanceConc!1642) Bool)

(declare-datatypes ((tuple2!2670 0))(
  ( (tuple2!2671 (_1!1551 BalanceConc!1642) (_2!1551 BalanceConc!1640)) )
))
(declare-fun lex!183 (LexerInterface!383 List!2815 BalanceConc!1640) tuple2!2670)

(declare-fun seqFromList!371 (List!2814) BalanceConc!1640)

(assert (=> b!162351 (= res!73675 (isEmpty!1135 (_1!1551 (lex!183 thiss!17480 rules!1920 (seqFromList!371 lt!49240)))))))

(declare-fun tp!82286 () Bool)

(declare-fun e!97834 () Bool)

(declare-fun e!97836 () Bool)

(declare-fun b!162352 () Bool)

(declare-fun inv!3617 (String!3675) Bool)

(declare-fun inv!3620 (TokenValueInjection!810) Bool)

(assert (=> b!162352 (= e!97836 (and tp!82286 (inv!3617 (tag!675 (h!8202 rules!1920))) (inv!3620 (transformation!497 (h!8202 rules!1920))) e!97834))))

(declare-fun b!162353 () Bool)

(declare-fun e!97828 () Bool)

(declare-fun e!97832 () Bool)

(assert (=> b!162353 (= e!97828 (not e!97832))))

(declare-fun res!73670 () Bool)

(assert (=> b!162353 (=> res!73670 e!97832)))

(declare-fun separatorToken!170 () Token!738)

(declare-fun lt!49246 () List!2814)

(declare-fun list!1007 (BalanceConc!1640) List!2814)

(declare-fun printWithSeparatorTokenWhenNeededRec!66 (LexerInterface!383 List!2815 BalanceConc!1642 Token!738 Int) BalanceConc!1640)

(declare-fun seqFromList!372 (List!2816) BalanceConc!1642)

(assert (=> b!162353 (= res!73670 (not (= lt!49246 (list!1007 (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 (seqFromList!372 (t!26086 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!49244 () List!2814)

(declare-fun lt!49249 () List!2814)

(assert (=> b!162353 (= lt!49244 lt!49249)))

(declare-fun lt!49243 () List!2814)

(declare-fun ++!626 (List!2814 List!2814) List!2814)

(assert (=> b!162353 (= lt!49249 (++!626 lt!49240 lt!49243))))

(declare-fun lt!49241 () List!2814)

(assert (=> b!162353 (= lt!49244 (++!626 (++!626 lt!49240 lt!49241) lt!49246))))

(declare-datatypes ((Unit!2310 0))(
  ( (Unit!2311) )
))
(declare-fun lt!49250 () Unit!2310)

(declare-fun lemmaConcatAssociativity!178 (List!2814 List!2814 List!2814) Unit!2310)

(assert (=> b!162353 (= lt!49250 (lemmaConcatAssociativity!178 lt!49240 lt!49241 lt!49246))))

(declare-fun charsOf!152 (Token!738) BalanceConc!1640)

(assert (=> b!162353 (= lt!49240 (list!1007 (charsOf!152 (h!8203 tokens!465))))))

(assert (=> b!162353 (= lt!49243 (++!626 lt!49241 lt!49246))))

(declare-fun printWithSeparatorTokenWhenNeededList!76 (LexerInterface!383 List!2815 List!2816 Token!738) List!2814)

(assert (=> b!162353 (= lt!49246 (printWithSeparatorTokenWhenNeededList!76 thiss!17480 rules!1920 (t!26086 tokens!465) separatorToken!170))))

(assert (=> b!162353 (= lt!49241 (list!1007 (charsOf!152 separatorToken!170)))))

(declare-fun e!97835 () Bool)

(assert (=> b!162354 (= e!97835 (and tp!82278 tp!82283))))

(declare-fun b!162355 () Bool)

(declare-fun res!73668 () Bool)

(assert (=> b!162355 (=> (not res!73668) (not e!97826))))

(declare-fun sepAndNonSepRulesDisjointChars!86 (List!2815 List!2815) Bool)

(assert (=> b!162355 (= res!73668 (sepAndNonSepRulesDisjointChars!86 rules!1920 rules!1920))))

(declare-fun b!162356 () Bool)

(declare-fun res!73678 () Bool)

(declare-fun e!97838 () Bool)

(assert (=> b!162356 (=> (not res!73678) (not e!97838))))

(declare-fun isEmpty!1136 (List!2815) Bool)

(assert (=> b!162356 (= res!73678 (not (isEmpty!1136 rules!1920)))))

(declare-fun e!97830 () Bool)

(declare-fun b!162357 () Bool)

(declare-fun tp!82275 () Bool)

(declare-fun e!97825 () Bool)

(declare-fun inv!21 (TokenValue!519) Bool)

(assert (=> b!162357 (= e!97830 (and (inv!21 (value!18480 (h!8203 tokens!465))) e!97825 tp!82275))))

(declare-fun b!162358 () Bool)

(declare-fun res!73665 () Bool)

(assert (=> b!162358 (=> (not res!73665) (not e!97828))))

(declare-fun lt!49247 () List!2814)

(declare-fun lt!49239 () List!2814)

(assert (=> b!162358 (= res!73665 (= (list!1007 (seqFromList!371 lt!49247)) lt!49239))))

(declare-fun tp!82282 () Bool)

(declare-fun b!162359 () Bool)

(declare-fun e!97820 () Bool)

(declare-fun e!97822 () Bool)

(assert (=> b!162359 (= e!97822 (and (inv!21 (value!18480 separatorToken!170)) e!97820 tp!82282))))

(declare-fun b!162360 () Bool)

(assert (=> b!162360 (= e!97832 e!97840)))

(declare-fun res!73667 () Bool)

(assert (=> b!162360 (=> res!73667 e!97840)))

(declare-fun lt!49251 () List!2814)

(declare-fun lt!49252 () List!2814)

(assert (=> b!162360 (= res!73667 (or (not (= lt!49251 lt!49252)) (not (= lt!49252 lt!49240)) (not (= lt!49251 lt!49240))))))

(declare-fun printList!67 (LexerInterface!383 List!2816) List!2814)

(assert (=> b!162360 (= lt!49252 (printList!67 thiss!17480 (Cons!2806 (h!8203 tokens!465) Nil!2806)))))

(declare-fun lt!49242 () BalanceConc!1640)

(assert (=> b!162360 (= lt!49251 (list!1007 lt!49242))))

(declare-fun lt!49248 () BalanceConc!1642)

(declare-fun printTailRec!77 (LexerInterface!383 BalanceConc!1642 Int BalanceConc!1640) BalanceConc!1640)

(assert (=> b!162360 (= lt!49242 (printTailRec!77 thiss!17480 lt!49248 0 (BalanceConc!1641 Empty!816)))))

(declare-fun print!114 (LexerInterface!383 BalanceConc!1642) BalanceConc!1640)

(assert (=> b!162360 (= lt!49242 (print!114 thiss!17480 lt!49248))))

(declare-fun singletonSeq!49 (Token!738) BalanceConc!1642)

(assert (=> b!162360 (= lt!49248 (singletonSeq!49 (h!8203 tokens!465)))))

(declare-fun tp!82279 () Bool)

(declare-fun b!162361 () Bool)

(assert (=> b!162361 (= e!97820 (and tp!82279 (inv!3617 (tag!675 (rule!1004 separatorToken!170))) (inv!3620 (transformation!497 (rule!1004 separatorToken!170))) e!97835))))

(assert (=> b!162363 (= e!97834 (and tp!82276 tp!82285))))

(declare-fun b!162364 () Bool)

(declare-fun e!97823 () Bool)

(declare-fun tp!82284 () Bool)

(declare-fun inv!3621 (Token!738) Bool)

(assert (=> b!162364 (= e!97823 (and (inv!3621 (h!8203 tokens!465)) e!97830 tp!82284))))

(declare-fun tp!82280 () Bool)

(declare-fun b!162365 () Bool)

(declare-fun e!97839 () Bool)

(assert (=> b!162365 (= e!97825 (and tp!82280 (inv!3617 (tag!675 (rule!1004 (h!8203 tokens!465)))) (inv!3620 (transformation!497 (rule!1004 (h!8203 tokens!465)))) e!97839))))

(assert (=> b!162366 (= e!97839 (and tp!82277 tp!82281))))

(declare-fun b!162367 () Bool)

(assert (=> b!162367 (= e!97826 e!97828)))

(declare-fun res!73672 () Bool)

(assert (=> b!162367 (=> (not res!73672) (not e!97828))))

(assert (=> b!162367 (= res!73672 (= lt!49247 lt!49239))))

(declare-fun lt!49245 () BalanceConc!1642)

(assert (=> b!162367 (= lt!49239 (list!1007 (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 lt!49245 separatorToken!170 0)))))

(assert (=> b!162367 (= lt!49247 (printWithSeparatorTokenWhenNeededList!76 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!162368 () Bool)

(declare-fun res!73666 () Bool)

(assert (=> b!162368 (=> (not res!73666) (not e!97826))))

(declare-fun rulesProduceIndividualToken!132 (LexerInterface!383 List!2815 Token!738) Bool)

(assert (=> b!162368 (= res!73666 (rulesProduceIndividualToken!132 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!162369 () Bool)

(assert (=> b!162369 (= e!97838 e!97826)))

(declare-fun res!73674 () Bool)

(assert (=> b!162369 (=> (not res!73674) (not e!97826))))

(declare-fun rulesProduceEachTokenIndividually!175 (LexerInterface!383 List!2815 BalanceConc!1642) Bool)

(assert (=> b!162369 (= res!73674 (rulesProduceEachTokenIndividually!175 thiss!17480 rules!1920 lt!49245))))

(assert (=> b!162369 (= lt!49245 (seqFromList!372 tokens!465))))

(declare-fun b!162370 () Bool)

(declare-fun e!97824 () Bool)

(declare-fun tp!82287 () Bool)

(assert (=> b!162370 (= e!97824 (and e!97836 tp!82287))))

(declare-fun e!97833 () Bool)

(declare-fun b!162371 () Bool)

(assert (=> b!162371 (= e!97833 (not (= lt!49247 (++!626 lt!49240 lt!49246))))))

(declare-fun b!162372 () Bool)

(declare-fun res!73669 () Bool)

(assert (=> b!162372 (=> res!73669 e!97832)))

(assert (=> b!162372 (= res!73669 e!97833)))

(declare-fun res!73677 () Bool)

(assert (=> b!162372 (=> (not res!73677) (not e!97833))))

(assert (=> b!162372 (= res!73677 (not (= lt!49247 lt!49249)))))

(declare-fun b!162373 () Bool)

(declare-fun res!73681 () Bool)

(assert (=> b!162373 (=> res!73681 e!97840)))

(assert (=> b!162373 (= res!73681 (not (rulesProduceIndividualToken!132 thiss!17480 rules!1920 (h!8203 tokens!465))))))

(declare-fun b!162374 () Bool)

(declare-fun res!73673 () Bool)

(assert (=> b!162374 (=> (not res!73673) (not e!97838))))

(declare-fun rulesInvariant!349 (LexerInterface!383 List!2815) Bool)

(assert (=> b!162374 (= res!73673 (rulesInvariant!349 thiss!17480 rules!1920))))

(declare-fun b!162375 () Bool)

(declare-fun res!73671 () Bool)

(assert (=> b!162375 (=> (not res!73671) (not e!97826))))

(assert (=> b!162375 (= res!73671 (isSeparator!497 (rule!1004 separatorToken!170)))))

(declare-fun res!73680 () Bool)

(assert (=> start!17486 (=> (not res!73680) (not e!97838))))

(assert (=> start!17486 (= res!73680 ((_ is Lexer!381) thiss!17480))))

(assert (=> start!17486 e!97838))

(assert (=> start!17486 true))

(assert (=> start!17486 e!97824))

(assert (=> start!17486 (and (inv!3621 separatorToken!170) e!97822)))

(assert (=> start!17486 e!97823))

(declare-fun res!73682 () Bool)

(assert (=> b!162362 (=> (not res!73682) (not e!97826))))

(assert (=> b!162362 (= res!73682 (forall!523 tokens!465 lambda!4447))))

(assert (= (and start!17486 res!73680) b!162356))

(assert (= (and b!162356 res!73678) b!162374))

(assert (= (and b!162374 res!73673) b!162369))

(assert (= (and b!162369 res!73674) b!162368))

(assert (= (and b!162368 res!73666) b!162375))

(assert (= (and b!162375 res!73671) b!162362))

(assert (= (and b!162362 res!73682) b!162355))

(assert (= (and b!162355 res!73668) b!162348))

(assert (= (and b!162348 res!73679) b!162367))

(assert (= (and b!162367 res!73672) b!162358))

(assert (= (and b!162358 res!73665) b!162353))

(assert (= (and b!162353 (not res!73670)) b!162372))

(assert (= (and b!162372 res!73677) b!162371))

(assert (= (and b!162372 (not res!73669)) b!162360))

(assert (= (and b!162360 (not res!73667)) b!162373))

(assert (= (and b!162373 (not res!73681)) b!162351))

(assert (= (and b!162351 (not res!73675)) b!162350))

(assert (= (and b!162350 res!73676) b!162349))

(assert (= b!162352 b!162363))

(assert (= b!162370 b!162352))

(assert (= (and start!17486 ((_ is Cons!2805) rules!1920)) b!162370))

(assert (= b!162361 b!162354))

(assert (= b!162359 b!162361))

(assert (= start!17486 b!162359))

(assert (= b!162365 b!162366))

(assert (= b!162357 b!162365))

(assert (= b!162364 b!162357))

(assert (= (and start!17486 ((_ is Cons!2806) tokens!465)) b!162364))

(declare-fun m!152249 () Bool)

(assert (=> start!17486 m!152249))

(declare-fun m!152251 () Bool)

(assert (=> b!162350 m!152251))

(declare-fun m!152253 () Bool)

(assert (=> b!162349 m!152253))

(declare-fun m!152255 () Bool)

(assert (=> b!162355 m!152255))

(declare-fun m!152257 () Bool)

(assert (=> b!162362 m!152257))

(declare-fun m!152259 () Bool)

(assert (=> b!162371 m!152259))

(declare-fun m!152261 () Bool)

(assert (=> b!162352 m!152261))

(declare-fun m!152263 () Bool)

(assert (=> b!162352 m!152263))

(declare-fun m!152265 () Bool)

(assert (=> b!162353 m!152265))

(declare-fun m!152267 () Bool)

(assert (=> b!162353 m!152267))

(declare-fun m!152269 () Bool)

(assert (=> b!162353 m!152269))

(declare-fun m!152271 () Bool)

(assert (=> b!162353 m!152271))

(declare-fun m!152273 () Bool)

(assert (=> b!162353 m!152273))

(declare-fun m!152275 () Bool)

(assert (=> b!162353 m!152275))

(declare-fun m!152277 () Bool)

(assert (=> b!162353 m!152277))

(assert (=> b!162353 m!152273))

(assert (=> b!162353 m!152277))

(declare-fun m!152279 () Bool)

(assert (=> b!162353 m!152279))

(declare-fun m!152281 () Bool)

(assert (=> b!162353 m!152281))

(assert (=> b!162353 m!152265))

(declare-fun m!152283 () Bool)

(assert (=> b!162353 m!152283))

(declare-fun m!152285 () Bool)

(assert (=> b!162353 m!152285))

(assert (=> b!162353 m!152285))

(declare-fun m!152287 () Bool)

(assert (=> b!162353 m!152287))

(assert (=> b!162353 m!152283))

(declare-fun m!152289 () Bool)

(assert (=> b!162353 m!152289))

(declare-fun m!152291 () Bool)

(assert (=> b!162360 m!152291))

(declare-fun m!152293 () Bool)

(assert (=> b!162360 m!152293))

(declare-fun m!152295 () Bool)

(assert (=> b!162360 m!152295))

(declare-fun m!152297 () Bool)

(assert (=> b!162360 m!152297))

(declare-fun m!152299 () Bool)

(assert (=> b!162360 m!152299))

(declare-fun m!152301 () Bool)

(assert (=> b!162369 m!152301))

(declare-fun m!152303 () Bool)

(assert (=> b!162369 m!152303))

(declare-fun m!152305 () Bool)

(assert (=> b!162357 m!152305))

(declare-fun m!152307 () Bool)

(assert (=> b!162361 m!152307))

(declare-fun m!152309 () Bool)

(assert (=> b!162361 m!152309))

(declare-fun m!152311 () Bool)

(assert (=> b!162359 m!152311))

(declare-fun m!152313 () Bool)

(assert (=> b!162358 m!152313))

(assert (=> b!162358 m!152313))

(declare-fun m!152315 () Bool)

(assert (=> b!162358 m!152315))

(declare-fun m!152317 () Bool)

(assert (=> b!162365 m!152317))

(declare-fun m!152319 () Bool)

(assert (=> b!162365 m!152319))

(declare-fun m!152321 () Bool)

(assert (=> b!162367 m!152321))

(assert (=> b!162367 m!152321))

(declare-fun m!152323 () Bool)

(assert (=> b!162367 m!152323))

(declare-fun m!152325 () Bool)

(assert (=> b!162367 m!152325))

(declare-fun m!152327 () Bool)

(assert (=> b!162356 m!152327))

(declare-fun m!152329 () Bool)

(assert (=> b!162364 m!152329))

(declare-fun m!152331 () Bool)

(assert (=> b!162374 m!152331))

(declare-fun m!152333 () Bool)

(assert (=> b!162351 m!152333))

(assert (=> b!162351 m!152333))

(declare-fun m!152335 () Bool)

(assert (=> b!162351 m!152335))

(declare-fun m!152337 () Bool)

(assert (=> b!162351 m!152337))

(declare-fun m!152339 () Bool)

(assert (=> b!162373 m!152339))

(declare-fun m!152341 () Bool)

(assert (=> b!162368 m!152341))

(check-sat b_and!10171 (not b!162360) b_and!10177 (not b_next!6193) (not start!17486) (not b_next!6187) (not b!162351) (not b_next!6195) (not b_next!6189) (not b_next!6185) b_and!10179 (not b!162355) (not b!162357) (not b!162349) (not b!162365) (not b!162353) (not b!162374) (not b!162364) (not b_next!6191) b_and!10175 (not b!162350) (not b!162384) (not b!162373) (not b!162369) (not b!162358) (not b!162370) b_and!10173 (not b!162367) (not b!162362) b_and!10169 (not b!162371) (not b!162361) (not b!162356) (not b!162359) (not b!162352) (not b!162368))
(check-sat b_and!10171 b_and!10177 (not b_next!6193) (not b_next!6187) b_and!10173 (not b_next!6195) b_and!10169 (not b_next!6189) (not b_next!6185) b_and!10179 (not b_next!6191) b_and!10175)
(get-model)

(declare-fun d!39826 () Bool)

(declare-fun res!73701 () Bool)

(declare-fun e!97860 () Bool)

(assert (=> d!39826 (=> res!73701 e!97860)))

(assert (=> d!39826 (= res!73701 (not ((_ is Cons!2805) rules!1920)))))

(assert (=> d!39826 (= (sepAndNonSepRulesDisjointChars!86 rules!1920 rules!1920) e!97860)))

(declare-fun b!162404 () Bool)

(declare-fun e!97861 () Bool)

(assert (=> b!162404 (= e!97860 e!97861)))

(declare-fun res!73702 () Bool)

(assert (=> b!162404 (=> (not res!73702) (not e!97861))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!30 (Rule!794 List!2815) Bool)

(assert (=> b!162404 (= res!73702 (ruleDisjointCharsFromAllFromOtherType!30 (h!8202 rules!1920) rules!1920))))

(declare-fun b!162405 () Bool)

(assert (=> b!162405 (= e!97861 (sepAndNonSepRulesDisjointChars!86 rules!1920 (t!26085 rules!1920)))))

(assert (= (and d!39826 (not res!73701)) b!162404))

(assert (= (and b!162404 res!73702) b!162405))

(declare-fun m!152365 () Bool)

(assert (=> b!162404 m!152365))

(declare-fun m!152367 () Bool)

(assert (=> b!162405 m!152367))

(assert (=> b!162355 d!39826))

(declare-fun d!39828 () Bool)

(assert (=> d!39828 (= (inv!3617 (tag!675 (rule!1004 (h!8203 tokens!465)))) (= (mod (str.len (value!18479 (tag!675 (rule!1004 (h!8203 tokens!465))))) 2) 0))))

(assert (=> b!162365 d!39828))

(declare-fun d!39830 () Bool)

(declare-fun res!73705 () Bool)

(declare-fun e!97864 () Bool)

(assert (=> d!39830 (=> (not res!73705) (not e!97864))))

(declare-fun semiInverseModEq!171 (Int Int) Bool)

(assert (=> d!39830 (= res!73705 (semiInverseModEq!171 (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (toValue!1152 (transformation!497 (rule!1004 (h!8203 tokens!465))))))))

(assert (=> d!39830 (= (inv!3620 (transformation!497 (rule!1004 (h!8203 tokens!465)))) e!97864)))

(declare-fun b!162408 () Bool)

(declare-fun equivClasses!154 (Int Int) Bool)

(assert (=> b!162408 (= e!97864 (equivClasses!154 (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (toValue!1152 (transformation!497 (rule!1004 (h!8203 tokens!465))))))))

(assert (= (and d!39830 res!73705) b!162408))

(declare-fun m!152369 () Bool)

(assert (=> d!39830 m!152369))

(declare-fun m!152371 () Bool)

(assert (=> b!162408 m!152371))

(assert (=> b!162365 d!39830))

(declare-fun d!39832 () Bool)

(declare-fun res!73716 () Bool)

(declare-fun e!97873 () Bool)

(assert (=> d!39832 (=> (not res!73716) (not e!97873))))

(declare-fun isEmpty!1141 (List!2814) Bool)

(assert (=> d!39832 (= res!73716 (not (isEmpty!1141 (originalCharacters!540 (h!8203 tokens!465)))))))

(assert (=> d!39832 (= (inv!3621 (h!8203 tokens!465)) e!97873)))

(declare-fun b!162423 () Bool)

(declare-fun res!73717 () Bool)

(assert (=> b!162423 (=> (not res!73717) (not e!97873))))

(declare-fun dynLambda!1004 (Int TokenValue!519) BalanceConc!1640)

(assert (=> b!162423 (= res!73717 (= (originalCharacters!540 (h!8203 tokens!465)) (list!1007 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (value!18480 (h!8203 tokens!465))))))))

(declare-fun b!162424 () Bool)

(declare-fun size!2347 (List!2814) Int)

(assert (=> b!162424 (= e!97873 (= (size!2343 (h!8203 tokens!465)) (size!2347 (originalCharacters!540 (h!8203 tokens!465)))))))

(assert (= (and d!39832 res!73716) b!162423))

(assert (= (and b!162423 res!73717) b!162424))

(declare-fun b_lambda!3397 () Bool)

(assert (=> (not b_lambda!3397) (not b!162423)))

(declare-fun tb!5971 () Bool)

(declare-fun t!26094 () Bool)

(assert (=> (and b!162363 (= (toChars!1011 (transformation!497 (h!8202 rules!1920))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465))))) t!26094) tb!5971))

(declare-fun b!162434 () Bool)

(declare-fun e!97879 () Bool)

(declare-fun tp!82293 () Bool)

(declare-fun inv!3624 (Conc!816) Bool)

(assert (=> b!162434 (= e!97879 (and (inv!3624 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (value!18480 (h!8203 tokens!465))))) tp!82293))))

(declare-fun result!8568 () Bool)

(declare-fun inv!3625 (BalanceConc!1640) Bool)

(assert (=> tb!5971 (= result!8568 (and (inv!3625 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (value!18480 (h!8203 tokens!465)))) e!97879))))

(assert (= tb!5971 b!162434))

(declare-fun m!152393 () Bool)

(assert (=> b!162434 m!152393))

(declare-fun m!152395 () Bool)

(assert (=> tb!5971 m!152395))

(assert (=> b!162423 t!26094))

(declare-fun b_and!10187 () Bool)

(assert (= b_and!10171 (and (=> t!26094 result!8568) b_and!10187)))

(declare-fun tb!5973 () Bool)

(declare-fun t!26096 () Bool)

(assert (=> (and b!162354 (= (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465))))) t!26096) tb!5973))

(declare-fun result!8572 () Bool)

(assert (= result!8572 result!8568))

(assert (=> b!162423 t!26096))

(declare-fun b_and!10189 () Bool)

(assert (= b_and!10175 (and (=> t!26096 result!8572) b_and!10189)))

(declare-fun t!26098 () Bool)

(declare-fun tb!5975 () Bool)

(assert (=> (and b!162366 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465))))) t!26098) tb!5975))

(declare-fun result!8574 () Bool)

(assert (= result!8574 result!8568))

(assert (=> b!162423 t!26098))

(declare-fun b_and!10191 () Bool)

(assert (= b_and!10179 (and (=> t!26098 result!8574) b_and!10191)))

(declare-fun m!152397 () Bool)

(assert (=> d!39832 m!152397))

(declare-fun m!152399 () Bool)

(assert (=> b!162423 m!152399))

(assert (=> b!162423 m!152399))

(declare-fun m!152401 () Bool)

(assert (=> b!162423 m!152401))

(declare-fun m!152403 () Bool)

(assert (=> b!162424 m!152403))

(assert (=> b!162364 d!39832))

(declare-fun d!39838 () Bool)

(declare-fun fromListB!148 (List!2816) BalanceConc!1642)

(assert (=> d!39838 (= (seqFromList!372 (t!26086 tokens!465)) (fromListB!148 (t!26086 tokens!465)))))

(declare-fun bs!15283 () Bool)

(assert (= bs!15283 d!39838))

(declare-fun m!152405 () Bool)

(assert (=> bs!15283 m!152405))

(assert (=> b!162353 d!39838))

(declare-fun d!39840 () Bool)

(assert (=> d!39840 (= (++!626 (++!626 lt!49240 lt!49241) lt!49246) (++!626 lt!49240 (++!626 lt!49241 lt!49246)))))

(declare-fun lt!49261 () Unit!2310)

(declare-fun choose!1796 (List!2814 List!2814 List!2814) Unit!2310)

(assert (=> d!39840 (= lt!49261 (choose!1796 lt!49240 lt!49241 lt!49246))))

(assert (=> d!39840 (= (lemmaConcatAssociativity!178 lt!49240 lt!49241 lt!49246) lt!49261)))

(declare-fun bs!15284 () Bool)

(assert (= bs!15284 d!39840))

(assert (=> bs!15284 m!152281))

(assert (=> bs!15284 m!152277))

(assert (=> bs!15284 m!152277))

(assert (=> bs!15284 m!152279))

(declare-fun m!152407 () Bool)

(assert (=> bs!15284 m!152407))

(assert (=> bs!15284 m!152281))

(declare-fun m!152409 () Bool)

(assert (=> bs!15284 m!152409))

(assert (=> b!162353 d!39840))

(declare-fun d!39842 () Bool)

(declare-fun list!1010 (Conc!816) List!2814)

(assert (=> d!39842 (= (list!1007 (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 (seqFromList!372 (t!26086 tokens!465)) separatorToken!170 0)) (list!1010 (c!32407 (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 (seqFromList!372 (t!26086 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!15285 () Bool)

(assert (= bs!15285 d!39842))

(declare-fun m!152411 () Bool)

(assert (=> bs!15285 m!152411))

(assert (=> b!162353 d!39842))

(declare-fun bs!15291 () Bool)

(declare-fun b!162538 () Bool)

(assert (= bs!15291 (and b!162538 b!162362)))

(declare-fun lambda!4456 () Int)

(assert (=> bs!15291 (not (= lambda!4456 lambda!4447))))

(declare-fun bs!15292 () Bool)

(assert (= bs!15292 (and b!162538 b!162350)))

(assert (=> bs!15292 (= lambda!4456 lambda!4448)))

(declare-fun b!162545 () Bool)

(declare-fun e!97957 () Bool)

(assert (=> b!162545 (= e!97957 true)))

(declare-fun b!162544 () Bool)

(declare-fun e!97956 () Bool)

(assert (=> b!162544 (= e!97956 e!97957)))

(declare-fun b!162543 () Bool)

(declare-fun e!97955 () Bool)

(assert (=> b!162543 (= e!97955 e!97956)))

(assert (=> b!162538 e!97955))

(assert (= b!162544 b!162545))

(assert (= b!162543 b!162544))

(assert (= (and b!162538 ((_ is Cons!2805) rules!1920)) b!162543))

(assert (=> b!162545 (< (dynLambda!999 order!1425 (toValue!1152 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1000 order!1427 lambda!4456))))

(assert (=> b!162545 (< (dynLambda!1001 order!1429 (toChars!1011 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1000 order!1427 lambda!4456))))

(assert (=> b!162538 true))

(declare-fun b!162535 () Bool)

(declare-fun e!97951 () BalanceConc!1640)

(assert (=> b!162535 (= e!97951 (charsOf!152 separatorToken!170))))

(declare-fun b!162536 () Bool)

(declare-fun e!97952 () List!2814)

(assert (=> b!162536 (= e!97952 Nil!2804)))

(declare-fun b!162537 () Bool)

(declare-fun c!32435 () Bool)

(declare-datatypes ((tuple2!2678 0))(
  ( (tuple2!2679 (_1!1555 Token!738) (_2!1555 List!2814)) )
))
(declare-datatypes ((Option!276 0))(
  ( (None!275) (Some!275 (v!13692 tuple2!2678)) )
))
(declare-fun lt!49293 () Option!276)

(assert (=> b!162537 (= c!32435 (and ((_ is Some!275) lt!49293) (not (= (_1!1555 (v!13692 lt!49293)) (h!8203 (t!26086 tokens!465))))))))

(declare-fun e!97954 () List!2814)

(declare-fun e!97953 () List!2814)

(assert (=> b!162537 (= e!97954 e!97953)))

(declare-fun bm!6843 () Bool)

(declare-fun call!6848 () BalanceConc!1640)

(assert (=> bm!6843 (= call!6848 (charsOf!152 (h!8203 (t!26086 tokens!465))))))

(assert (=> b!162538 (= e!97952 e!97954)))

(declare-fun lt!49295 () Unit!2310)

(declare-fun forallContained!64 (List!2816 Int Token!738) Unit!2310)

(assert (=> b!162538 (= lt!49295 (forallContained!64 (t!26086 tokens!465) lambda!4456 (h!8203 (t!26086 tokens!465))))))

(declare-fun lt!49297 () List!2814)

(assert (=> b!162538 (= lt!49297 (printWithSeparatorTokenWhenNeededList!76 thiss!17480 rules!1920 (t!26086 (t!26086 tokens!465)) separatorToken!170))))

(declare-fun maxPrefix!121 (LexerInterface!383 List!2815 List!2814) Option!276)

(assert (=> b!162538 (= lt!49293 (maxPrefix!121 thiss!17480 rules!1920 (++!626 (list!1007 (charsOf!152 (h!8203 (t!26086 tokens!465)))) lt!49297)))))

(declare-fun c!32434 () Bool)

(assert (=> b!162538 (= c!32434 (and ((_ is Some!275) lt!49293) (= (_1!1555 (v!13692 lt!49293)) (h!8203 (t!26086 tokens!465)))))))

(declare-fun b!162539 () Bool)

(declare-fun call!6850 () BalanceConc!1640)

(assert (=> b!162539 (= e!97951 call!6850)))

(declare-fun bm!6844 () Bool)

(assert (=> bm!6844 (= call!6850 call!6848)))

(declare-fun call!6851 () List!2814)

(declare-fun call!6849 () List!2814)

(declare-fun bm!6845 () Bool)

(declare-fun call!6847 () List!2814)

(assert (=> bm!6845 (= call!6849 (++!626 call!6847 (ite c!32434 lt!49297 call!6851)))))

(declare-fun bm!6846 () Bool)

(assert (=> bm!6846 (= call!6851 (list!1007 e!97951))))

(declare-fun c!32436 () Bool)

(assert (=> bm!6846 (= c!32436 c!32435)))

(declare-fun b!162540 () Bool)

(assert (=> b!162540 (= e!97953 (++!626 call!6849 lt!49297))))

(declare-fun b!162541 () Bool)

(assert (=> b!162541 (= e!97954 call!6849)))

(declare-fun b!162542 () Bool)

(assert (=> b!162542 (= e!97953 Nil!2804)))

(assert (=> b!162542 (= (print!114 thiss!17480 (singletonSeq!49 (h!8203 (t!26086 tokens!465)))) (printTailRec!77 thiss!17480 (singletonSeq!49 (h!8203 (t!26086 tokens!465))) 0 (BalanceConc!1641 Empty!816)))))

(declare-fun lt!49294 () Unit!2310)

(declare-fun Unit!2316 () Unit!2310)

(assert (=> b!162542 (= lt!49294 Unit!2316)))

(declare-fun lt!49292 () Unit!2310)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!28 (LexerInterface!383 List!2815 List!2814 List!2814) Unit!2310)

(assert (=> b!162542 (= lt!49292 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!28 thiss!17480 rules!1920 call!6851 lt!49297))))

(assert (=> b!162542 false))

(declare-fun lt!49296 () Unit!2310)

(declare-fun Unit!2317 () Unit!2310)

(assert (=> b!162542 (= lt!49296 Unit!2317)))

(declare-fun bm!6842 () Bool)

(assert (=> bm!6842 (= call!6847 (list!1007 (ite c!32434 call!6848 call!6850)))))

(declare-fun d!39844 () Bool)

(declare-fun c!32433 () Bool)

(assert (=> d!39844 (= c!32433 ((_ is Cons!2806) (t!26086 tokens!465)))))

(assert (=> d!39844 (= (printWithSeparatorTokenWhenNeededList!76 thiss!17480 rules!1920 (t!26086 tokens!465) separatorToken!170) e!97952)))

(assert (= (and d!39844 c!32433) b!162538))

(assert (= (and d!39844 (not c!32433)) b!162536))

(assert (= (and b!162538 c!32434) b!162541))

(assert (= (and b!162538 (not c!32434)) b!162537))

(assert (= (and b!162537 c!32435) b!162540))

(assert (= (and b!162537 (not c!32435)) b!162542))

(assert (= (or b!162540 b!162542) bm!6844))

(assert (= (or b!162540 b!162542) bm!6846))

(assert (= (and bm!6846 c!32436) b!162535))

(assert (= (and bm!6846 (not c!32436)) b!162539))

(assert (= (or b!162541 bm!6844) bm!6843))

(assert (= (or b!162541 b!162540) bm!6842))

(assert (= (or b!162541 b!162540) bm!6845))

(declare-fun m!152539 () Bool)

(assert (=> b!162542 m!152539))

(assert (=> b!162542 m!152539))

(declare-fun m!152541 () Bool)

(assert (=> b!162542 m!152541))

(assert (=> b!162542 m!152539))

(declare-fun m!152543 () Bool)

(assert (=> b!162542 m!152543))

(declare-fun m!152545 () Bool)

(assert (=> b!162542 m!152545))

(declare-fun m!152547 () Bool)

(assert (=> b!162538 m!152547))

(declare-fun m!152549 () Bool)

(assert (=> b!162538 m!152549))

(declare-fun m!152551 () Bool)

(assert (=> b!162538 m!152551))

(assert (=> b!162538 m!152551))

(declare-fun m!152553 () Bool)

(assert (=> b!162538 m!152553))

(declare-fun m!152555 () Bool)

(assert (=> b!162538 m!152555))

(declare-fun m!152557 () Bool)

(assert (=> b!162538 m!152557))

(assert (=> b!162538 m!152557))

(assert (=> b!162538 m!152549))

(assert (=> bm!6843 m!152557))

(declare-fun m!152559 () Bool)

(assert (=> bm!6845 m!152559))

(declare-fun m!152561 () Bool)

(assert (=> bm!6846 m!152561))

(declare-fun m!152563 () Bool)

(assert (=> bm!6842 m!152563))

(declare-fun m!152565 () Bool)

(assert (=> b!162540 m!152565))

(assert (=> b!162535 m!152273))

(assert (=> b!162353 d!39844))

(declare-fun d!39886 () Bool)

(declare-fun e!97963 () Bool)

(assert (=> d!39886 e!97963))

(declare-fun res!73782 () Bool)

(assert (=> d!39886 (=> (not res!73782) (not e!97963))))

(declare-fun lt!49300 () List!2814)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!388 (List!2814) (InoxSet C!2364))

(assert (=> d!39886 (= res!73782 (= (content!388 lt!49300) ((_ map or) (content!388 lt!49240) (content!388 lt!49241))))))

(declare-fun e!97962 () List!2814)

(assert (=> d!39886 (= lt!49300 e!97962)))

(declare-fun c!32439 () Bool)

(assert (=> d!39886 (= c!32439 ((_ is Nil!2804) lt!49240))))

(assert (=> d!39886 (= (++!626 lt!49240 lt!49241) lt!49300)))

(declare-fun b!162556 () Bool)

(declare-fun res!73781 () Bool)

(assert (=> b!162556 (=> (not res!73781) (not e!97963))))

(assert (=> b!162556 (= res!73781 (= (size!2347 lt!49300) (+ (size!2347 lt!49240) (size!2347 lt!49241))))))

(declare-fun b!162555 () Bool)

(assert (=> b!162555 (= e!97962 (Cons!2804 (h!8201 lt!49240) (++!626 (t!26084 lt!49240) lt!49241)))))

(declare-fun b!162554 () Bool)

(assert (=> b!162554 (= e!97962 lt!49241)))

(declare-fun b!162557 () Bool)

(assert (=> b!162557 (= e!97963 (or (not (= lt!49241 Nil!2804)) (= lt!49300 lt!49240)))))

(assert (= (and d!39886 c!32439) b!162554))

(assert (= (and d!39886 (not c!32439)) b!162555))

(assert (= (and d!39886 res!73782) b!162556))

(assert (= (and b!162556 res!73781) b!162557))

(declare-fun m!152567 () Bool)

(assert (=> d!39886 m!152567))

(declare-fun m!152569 () Bool)

(assert (=> d!39886 m!152569))

(declare-fun m!152571 () Bool)

(assert (=> d!39886 m!152571))

(declare-fun m!152573 () Bool)

(assert (=> b!162556 m!152573))

(declare-fun m!152575 () Bool)

(assert (=> b!162556 m!152575))

(declare-fun m!152577 () Bool)

(assert (=> b!162556 m!152577))

(declare-fun m!152579 () Bool)

(assert (=> b!162555 m!152579))

(assert (=> b!162353 d!39886))

(declare-fun bs!15296 () Bool)

(declare-fun d!39888 () Bool)

(assert (= bs!15296 (and d!39888 b!162362)))

(declare-fun lambda!4464 () Int)

(assert (=> bs!15296 (= lambda!4464 lambda!4447)))

(declare-fun bs!15297 () Bool)

(assert (= bs!15297 (and d!39888 b!162350)))

(assert (=> bs!15297 (not (= lambda!4464 lambda!4448))))

(declare-fun bs!15298 () Bool)

(assert (= bs!15298 (and d!39888 b!162538)))

(assert (=> bs!15298 (not (= lambda!4464 lambda!4456))))

(declare-fun bs!15299 () Bool)

(declare-fun b!162616 () Bool)

(assert (= bs!15299 (and b!162616 b!162362)))

(declare-fun lambda!4465 () Int)

(assert (=> bs!15299 (not (= lambda!4465 lambda!4447))))

(declare-fun bs!15300 () Bool)

(assert (= bs!15300 (and b!162616 b!162350)))

(assert (=> bs!15300 (= lambda!4465 lambda!4448)))

(declare-fun bs!15301 () Bool)

(assert (= bs!15301 (and b!162616 b!162538)))

(assert (=> bs!15301 (= lambda!4465 lambda!4456)))

(declare-fun bs!15302 () Bool)

(assert (= bs!15302 (and b!162616 d!39888)))

(assert (=> bs!15302 (not (= lambda!4465 lambda!4464))))

(declare-fun b!162626 () Bool)

(declare-fun e!98005 () Bool)

(assert (=> b!162626 (= e!98005 true)))

(declare-fun b!162625 () Bool)

(declare-fun e!98004 () Bool)

(assert (=> b!162625 (= e!98004 e!98005)))

(declare-fun b!162624 () Bool)

(declare-fun e!98003 () Bool)

(assert (=> b!162624 (= e!98003 e!98004)))

(assert (=> b!162616 e!98003))

(assert (= b!162625 b!162626))

(assert (= b!162624 b!162625))

(assert (= (and b!162616 ((_ is Cons!2805) rules!1920)) b!162624))

(assert (=> b!162626 (< (dynLambda!999 order!1425 (toValue!1152 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1000 order!1427 lambda!4465))))

(assert (=> b!162626 (< (dynLambda!1001 order!1429 (toChars!1011 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1000 order!1427 lambda!4465))))

(assert (=> b!162616 true))

(declare-fun bm!6872 () Bool)

(declare-fun call!6880 () BalanceConc!1640)

(declare-fun call!6879 () BalanceConc!1640)

(assert (=> bm!6872 (= call!6880 call!6879)))

(declare-fun b!162613 () Bool)

(declare-fun e!98001 () Bool)

(declare-datatypes ((tuple2!2680 0))(
  ( (tuple2!2681 (_1!1556 Token!738) (_2!1556 BalanceConc!1640)) )
))
(declare-datatypes ((Option!277 0))(
  ( (None!276) (Some!276 (v!13693 tuple2!2680)) )
))
(declare-fun lt!49348 () Option!277)

(declare-fun call!6881 () Token!738)

(assert (=> b!162613 (= e!98001 (not (= (_1!1556 (v!13693 lt!49348)) call!6881)))))

(declare-fun bm!6873 () Bool)

(declare-fun call!6877 () Token!738)

(declare-fun c!32465 () Bool)

(declare-fun c!32464 () Bool)

(assert (=> bm!6873 (= call!6879 (charsOf!152 (ite c!32464 call!6881 (ite c!32465 separatorToken!170 call!6877))))))

(declare-fun b!162614 () Bool)

(declare-fun e!98002 () BalanceConc!1640)

(declare-fun call!6878 () BalanceConc!1640)

(assert (=> b!162614 (= e!98002 call!6878)))

(declare-fun b!162615 () Bool)

(declare-fun e!97997 () BalanceConc!1640)

(assert (=> b!162615 (= e!97997 (BalanceConc!1641 Empty!816))))

(assert (=> b!162616 (= e!97997 e!98002)))

(declare-fun lt!49359 () List!2816)

(declare-fun list!1011 (BalanceConc!1642) List!2816)

(assert (=> b!162616 (= lt!49359 (list!1011 (seqFromList!372 (t!26086 tokens!465))))))

(declare-fun lt!49360 () Unit!2310)

(declare-fun lemmaDropApply!120 (List!2816 Int) Unit!2310)

(assert (=> b!162616 (= lt!49360 (lemmaDropApply!120 lt!49359 0))))

(declare-fun head!594 (List!2816) Token!738)

(declare-fun drop!133 (List!2816 Int) List!2816)

(declare-fun apply!389 (List!2816 Int) Token!738)

(assert (=> b!162616 (= (head!594 (drop!133 lt!49359 0)) (apply!389 lt!49359 0))))

(declare-fun lt!49347 () Unit!2310)

(assert (=> b!162616 (= lt!49347 lt!49360)))

(declare-fun lt!49352 () List!2816)

(assert (=> b!162616 (= lt!49352 (list!1011 (seqFromList!372 (t!26086 tokens!465))))))

(declare-fun lt!49353 () Unit!2310)

(declare-fun lemmaDropTail!112 (List!2816 Int) Unit!2310)

(assert (=> b!162616 (= lt!49353 (lemmaDropTail!112 lt!49352 0))))

(declare-fun tail!334 (List!2816) List!2816)

(assert (=> b!162616 (= (tail!334 (drop!133 lt!49352 0)) (drop!133 lt!49352 (+ 0 1)))))

(declare-fun lt!49358 () Unit!2310)

(assert (=> b!162616 (= lt!49358 lt!49353)))

(declare-fun lt!49356 () Unit!2310)

(declare-fun apply!390 (BalanceConc!1642 Int) Token!738)

(assert (=> b!162616 (= lt!49356 (forallContained!64 (list!1011 (seqFromList!372 (t!26086 tokens!465))) lambda!4465 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)))))

(declare-fun lt!49349 () BalanceConc!1640)

(assert (=> b!162616 (= lt!49349 (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 (seqFromList!372 (t!26086 tokens!465)) separatorToken!170 (+ 0 1)))))

(declare-fun maxPrefixZipperSequence!80 (LexerInterface!383 List!2815 BalanceConc!1640) Option!277)

(declare-fun ++!628 (BalanceConc!1640 BalanceConc!1640) BalanceConc!1640)

(assert (=> b!162616 (= lt!49348 (maxPrefixZipperSequence!80 thiss!17480 rules!1920 (++!628 (charsOf!152 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)) lt!49349)))))

(declare-fun res!73790 () Bool)

(assert (=> b!162616 (= res!73790 ((_ is Some!276) lt!49348))))

(declare-fun e!97999 () Bool)

(assert (=> b!162616 (=> (not res!73790) (not e!97999))))

(assert (=> b!162616 (= c!32464 e!97999)))

(declare-fun b!162617 () Bool)

(assert (=> b!162617 (= c!32465 e!98001)))

(declare-fun res!73789 () Bool)

(assert (=> b!162617 (=> (not res!73789) (not e!98001))))

(assert (=> b!162617 (= res!73789 ((_ is Some!276) lt!49348))))

(declare-fun e!97996 () BalanceConc!1640)

(assert (=> b!162617 (= e!98002 e!97996)))

(declare-fun b!162618 () Bool)

(assert (=> b!162618 (= e!97999 (= (_1!1556 (v!13693 lt!49348)) (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)))))

(declare-fun b!162619 () Bool)

(declare-fun e!97998 () BalanceConc!1640)

(assert (=> b!162619 (= e!97998 (charsOf!152 call!6877))))

(declare-fun b!162620 () Bool)

(assert (=> b!162620 (= e!97996 (++!628 call!6878 lt!49349))))

(declare-fun b!162621 () Bool)

(assert (=> b!162621 (= e!97996 (BalanceConc!1641 Empty!816))))

(assert (=> b!162621 (= (print!114 thiss!17480 (singletonSeq!49 call!6877)) (printTailRec!77 thiss!17480 (singletonSeq!49 call!6877) 0 (BalanceConc!1641 Empty!816)))))

(declare-fun lt!49351 () Unit!2310)

(declare-fun Unit!2320 () Unit!2310)

(assert (=> b!162621 (= lt!49351 Unit!2320)))

(declare-fun lt!49357 () Unit!2310)

(assert (=> b!162621 (= lt!49357 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!28 thiss!17480 rules!1920 (list!1007 call!6880) (list!1007 lt!49349)))))

(assert (=> b!162621 false))

(declare-fun lt!49354 () Unit!2310)

(declare-fun Unit!2321 () Unit!2310)

(assert (=> b!162621 (= lt!49354 Unit!2321)))

(declare-fun b!162622 () Bool)

(declare-fun e!98000 () Bool)

(declare-fun size!2348 (BalanceConc!1642) Int)

(assert (=> b!162622 (= e!98000 (<= 0 (size!2348 (seqFromList!372 (t!26086 tokens!465)))))))

(declare-fun b!162623 () Bool)

(assert (=> b!162623 (= e!97998 call!6879)))

(declare-fun bm!6874 () Bool)

(assert (=> bm!6874 (= call!6877 call!6881)))

(declare-fun lt!49350 () BalanceConc!1640)

(declare-fun dropList!80 (BalanceConc!1642 Int) List!2816)

(assert (=> d!39888 (= (list!1007 lt!49350) (printWithSeparatorTokenWhenNeededList!76 thiss!17480 rules!1920 (dropList!80 (seqFromList!372 (t!26086 tokens!465)) 0) separatorToken!170))))

(assert (=> d!39888 (= lt!49350 e!97997)))

(declare-fun c!32466 () Bool)

(assert (=> d!39888 (= c!32466 (>= 0 (size!2348 (seqFromList!372 (t!26086 tokens!465)))))))

(declare-fun lt!49355 () Unit!2310)

(declare-fun lemmaContentSubsetPreservesForall!24 (List!2816 List!2816 Int) Unit!2310)

(assert (=> d!39888 (= lt!49355 (lemmaContentSubsetPreservesForall!24 (list!1011 (seqFromList!372 (t!26086 tokens!465))) (dropList!80 (seqFromList!372 (t!26086 tokens!465)) 0) lambda!4464))))

(assert (=> d!39888 e!98000))

(declare-fun res!73791 () Bool)

(assert (=> d!39888 (=> (not res!73791) (not e!98000))))

(assert (=> d!39888 (= res!73791 (>= 0 0))))

(assert (=> d!39888 (= (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 (seqFromList!372 (t!26086 tokens!465)) separatorToken!170 0) lt!49350)))

(declare-fun bm!6875 () Bool)

(assert (=> bm!6875 (= call!6881 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0))))

(declare-fun bm!6876 () Bool)

(declare-fun c!32463 () Bool)

(assert (=> bm!6876 (= c!32463 c!32464)))

(assert (=> bm!6876 (= call!6878 (++!628 e!97998 (ite c!32464 lt!49349 call!6880)))))

(assert (= (and d!39888 res!73791) b!162622))

(assert (= (and d!39888 c!32466) b!162615))

(assert (= (and d!39888 (not c!32466)) b!162616))

(assert (= (and b!162616 res!73790) b!162618))

(assert (= (and b!162616 c!32464) b!162614))

(assert (= (and b!162616 (not c!32464)) b!162617))

(assert (= (and b!162617 res!73789) b!162613))

(assert (= (and b!162617 c!32465) b!162620))

(assert (= (and b!162617 (not c!32465)) b!162621))

(assert (= (or b!162620 b!162621) bm!6874))

(assert (= (or b!162620 b!162621) bm!6872))

(assert (= (or b!162614 bm!6874 b!162613) bm!6875))

(assert (= (or b!162614 bm!6872) bm!6873))

(assert (= (or b!162614 b!162620) bm!6876))

(assert (= (and bm!6876 c!32463) b!162623))

(assert (= (and bm!6876 (not c!32463)) b!162619))

(declare-fun m!152609 () Bool)

(assert (=> b!162616 m!152609))

(declare-fun m!152611 () Bool)

(assert (=> b!162616 m!152611))

(assert (=> b!162616 m!152265))

(declare-fun m!152613 () Bool)

(assert (=> b!162616 m!152613))

(declare-fun m!152615 () Bool)

(assert (=> b!162616 m!152615))

(declare-fun m!152617 () Bool)

(assert (=> b!162616 m!152617))

(declare-fun m!152619 () Bool)

(assert (=> b!162616 m!152619))

(declare-fun m!152621 () Bool)

(assert (=> b!162616 m!152621))

(declare-fun m!152623 () Bool)

(assert (=> b!162616 m!152623))

(declare-fun m!152625 () Bool)

(assert (=> b!162616 m!152625))

(assert (=> b!162616 m!152613))

(declare-fun m!152627 () Bool)

(assert (=> b!162616 m!152627))

(declare-fun m!152629 () Bool)

(assert (=> b!162616 m!152629))

(assert (=> b!162616 m!152265))

(assert (=> b!162616 m!152627))

(assert (=> b!162616 m!152609))

(declare-fun m!152631 () Bool)

(assert (=> b!162616 m!152631))

(declare-fun m!152633 () Bool)

(assert (=> b!162616 m!152633))

(assert (=> b!162616 m!152615))

(assert (=> b!162616 m!152621))

(declare-fun m!152635 () Bool)

(assert (=> b!162616 m!152635))

(assert (=> b!162616 m!152627))

(assert (=> b!162616 m!152619))

(assert (=> b!162616 m!152265))

(declare-fun m!152637 () Bool)

(assert (=> b!162616 m!152637))

(declare-fun m!152639 () Bool)

(assert (=> b!162619 m!152639))

(declare-fun m!152641 () Bool)

(assert (=> bm!6876 m!152641))

(assert (=> b!162618 m!152265))

(assert (=> b!162618 m!152627))

(assert (=> d!39888 m!152265))

(declare-fun m!152643 () Bool)

(assert (=> d!39888 m!152643))

(assert (=> d!39888 m!152265))

(declare-fun m!152645 () Bool)

(assert (=> d!39888 m!152645))

(declare-fun m!152647 () Bool)

(assert (=> d!39888 m!152647))

(assert (=> d!39888 m!152613))

(assert (=> d!39888 m!152643))

(declare-fun m!152649 () Bool)

(assert (=> d!39888 m!152649))

(assert (=> d!39888 m!152643))

(declare-fun m!152651 () Bool)

(assert (=> d!39888 m!152651))

(assert (=> d!39888 m!152265))

(assert (=> d!39888 m!152613))

(declare-fun m!152653 () Bool)

(assert (=> b!162621 m!152653))

(declare-fun m!152655 () Bool)

(assert (=> b!162621 m!152655))

(declare-fun m!152657 () Bool)

(assert (=> b!162621 m!152657))

(assert (=> b!162621 m!152653))

(declare-fun m!152659 () Bool)

(assert (=> b!162621 m!152659))

(declare-fun m!152661 () Bool)

(assert (=> b!162621 m!152661))

(assert (=> b!162621 m!152659))

(assert (=> b!162621 m!152655))

(assert (=> b!162621 m!152659))

(declare-fun m!152663 () Bool)

(assert (=> b!162621 m!152663))

(assert (=> b!162622 m!152265))

(assert (=> b!162622 m!152645))

(declare-fun m!152665 () Bool)

(assert (=> b!162620 m!152665))

(assert (=> bm!6875 m!152265))

(assert (=> bm!6875 m!152627))

(declare-fun m!152667 () Bool)

(assert (=> bm!6873 m!152667))

(assert (=> b!162353 d!39888))

(declare-fun d!39892 () Bool)

(declare-fun lt!49363 () BalanceConc!1640)

(assert (=> d!39892 (= (list!1007 lt!49363) (originalCharacters!540 separatorToken!170))))

(assert (=> d!39892 (= lt!49363 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (value!18480 separatorToken!170)))))

(assert (=> d!39892 (= (charsOf!152 separatorToken!170) lt!49363)))

(declare-fun b_lambda!3405 () Bool)

(assert (=> (not b_lambda!3405) (not d!39892)))

(declare-fun tb!5983 () Bool)

(declare-fun t!26119 () Bool)

(assert (=> (and b!162363 (= (toChars!1011 (transformation!497 (h!8202 rules!1920))) (toChars!1011 (transformation!497 (rule!1004 separatorToken!170)))) t!26119) tb!5983))

(declare-fun b!162627 () Bool)

(declare-fun e!98006 () Bool)

(declare-fun tp!82295 () Bool)

(assert (=> b!162627 (= e!98006 (and (inv!3624 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (value!18480 separatorToken!170)))) tp!82295))))

(declare-fun result!8582 () Bool)

(assert (=> tb!5983 (= result!8582 (and (inv!3625 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (value!18480 separatorToken!170))) e!98006))))

(assert (= tb!5983 b!162627))

(declare-fun m!152669 () Bool)

(assert (=> b!162627 m!152669))

(declare-fun m!152671 () Bool)

(assert (=> tb!5983 m!152671))

(assert (=> d!39892 t!26119))

(declare-fun b_and!10199 () Bool)

(assert (= b_and!10187 (and (=> t!26119 result!8582) b_and!10199)))

(declare-fun t!26121 () Bool)

(declare-fun tb!5985 () Bool)

(assert (=> (and b!162354 (= (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (toChars!1011 (transformation!497 (rule!1004 separatorToken!170)))) t!26121) tb!5985))

(declare-fun result!8584 () Bool)

(assert (= result!8584 result!8582))

(assert (=> d!39892 t!26121))

(declare-fun b_and!10201 () Bool)

(assert (= b_and!10189 (and (=> t!26121 result!8584) b_and!10201)))

(declare-fun tb!5987 () Bool)

(declare-fun t!26123 () Bool)

(assert (=> (and b!162366 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (toChars!1011 (transformation!497 (rule!1004 separatorToken!170)))) t!26123) tb!5987))

(declare-fun result!8586 () Bool)

(assert (= result!8586 result!8582))

(assert (=> d!39892 t!26123))

(declare-fun b_and!10203 () Bool)

(assert (= b_and!10191 (and (=> t!26123 result!8586) b_and!10203)))

(declare-fun m!152673 () Bool)

(assert (=> d!39892 m!152673))

(declare-fun m!152675 () Bool)

(assert (=> d!39892 m!152675))

(assert (=> b!162353 d!39892))

(declare-fun d!39894 () Bool)

(declare-fun e!98008 () Bool)

(assert (=> d!39894 e!98008))

(declare-fun res!73793 () Bool)

(assert (=> d!39894 (=> (not res!73793) (not e!98008))))

(declare-fun lt!49364 () List!2814)

(assert (=> d!39894 (= res!73793 (= (content!388 lt!49364) ((_ map or) (content!388 lt!49240) (content!388 lt!49243))))))

(declare-fun e!98007 () List!2814)

(assert (=> d!39894 (= lt!49364 e!98007)))

(declare-fun c!32467 () Bool)

(assert (=> d!39894 (= c!32467 ((_ is Nil!2804) lt!49240))))

(assert (=> d!39894 (= (++!626 lt!49240 lt!49243) lt!49364)))

(declare-fun b!162630 () Bool)

(declare-fun res!73792 () Bool)

(assert (=> b!162630 (=> (not res!73792) (not e!98008))))

(assert (=> b!162630 (= res!73792 (= (size!2347 lt!49364) (+ (size!2347 lt!49240) (size!2347 lt!49243))))))

(declare-fun b!162629 () Bool)

(assert (=> b!162629 (= e!98007 (Cons!2804 (h!8201 lt!49240) (++!626 (t!26084 lt!49240) lt!49243)))))

(declare-fun b!162628 () Bool)

(assert (=> b!162628 (= e!98007 lt!49243)))

(declare-fun b!162631 () Bool)

(assert (=> b!162631 (= e!98008 (or (not (= lt!49243 Nil!2804)) (= lt!49364 lt!49240)))))

(assert (= (and d!39894 c!32467) b!162628))

(assert (= (and d!39894 (not c!32467)) b!162629))

(assert (= (and d!39894 res!73793) b!162630))

(assert (= (and b!162630 res!73792) b!162631))

(declare-fun m!152677 () Bool)

(assert (=> d!39894 m!152677))

(assert (=> d!39894 m!152569))

(declare-fun m!152679 () Bool)

(assert (=> d!39894 m!152679))

(declare-fun m!152681 () Bool)

(assert (=> b!162630 m!152681))

(assert (=> b!162630 m!152575))

(declare-fun m!152683 () Bool)

(assert (=> b!162630 m!152683))

(declare-fun m!152685 () Bool)

(assert (=> b!162629 m!152685))

(assert (=> b!162353 d!39894))

(declare-fun d!39896 () Bool)

(declare-fun e!98010 () Bool)

(assert (=> d!39896 e!98010))

(declare-fun res!73795 () Bool)

(assert (=> d!39896 (=> (not res!73795) (not e!98010))))

(declare-fun lt!49365 () List!2814)

(assert (=> d!39896 (= res!73795 (= (content!388 lt!49365) ((_ map or) (content!388 lt!49241) (content!388 lt!49246))))))

(declare-fun e!98009 () List!2814)

(assert (=> d!39896 (= lt!49365 e!98009)))

(declare-fun c!32468 () Bool)

(assert (=> d!39896 (= c!32468 ((_ is Nil!2804) lt!49241))))

(assert (=> d!39896 (= (++!626 lt!49241 lt!49246) lt!49365)))

(declare-fun b!162634 () Bool)

(declare-fun res!73794 () Bool)

(assert (=> b!162634 (=> (not res!73794) (not e!98010))))

(assert (=> b!162634 (= res!73794 (= (size!2347 lt!49365) (+ (size!2347 lt!49241) (size!2347 lt!49246))))))

(declare-fun b!162633 () Bool)

(assert (=> b!162633 (= e!98009 (Cons!2804 (h!8201 lt!49241) (++!626 (t!26084 lt!49241) lt!49246)))))

(declare-fun b!162632 () Bool)

(assert (=> b!162632 (= e!98009 lt!49246)))

(declare-fun b!162635 () Bool)

(assert (=> b!162635 (= e!98010 (or (not (= lt!49246 Nil!2804)) (= lt!49365 lt!49241)))))

(assert (= (and d!39896 c!32468) b!162632))

(assert (= (and d!39896 (not c!32468)) b!162633))

(assert (= (and d!39896 res!73795) b!162634))

(assert (= (and b!162634 res!73794) b!162635))

(declare-fun m!152687 () Bool)

(assert (=> d!39896 m!152687))

(assert (=> d!39896 m!152571))

(declare-fun m!152689 () Bool)

(assert (=> d!39896 m!152689))

(declare-fun m!152691 () Bool)

(assert (=> b!162634 m!152691))

(assert (=> b!162634 m!152577))

(declare-fun m!152693 () Bool)

(assert (=> b!162634 m!152693))

(declare-fun m!152695 () Bool)

(assert (=> b!162633 m!152695))

(assert (=> b!162353 d!39896))

(declare-fun d!39898 () Bool)

(assert (=> d!39898 (= (list!1007 (charsOf!152 (h!8203 tokens!465))) (list!1010 (c!32407 (charsOf!152 (h!8203 tokens!465)))))))

(declare-fun bs!15303 () Bool)

(assert (= bs!15303 d!39898))

(declare-fun m!152697 () Bool)

(assert (=> bs!15303 m!152697))

(assert (=> b!162353 d!39898))

(declare-fun d!39900 () Bool)

(declare-fun lt!49366 () BalanceConc!1640)

(assert (=> d!39900 (= (list!1007 lt!49366) (originalCharacters!540 (h!8203 tokens!465)))))

(assert (=> d!39900 (= lt!49366 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (value!18480 (h!8203 tokens!465))))))

(assert (=> d!39900 (= (charsOf!152 (h!8203 tokens!465)) lt!49366)))

(declare-fun b_lambda!3407 () Bool)

(assert (=> (not b_lambda!3407) (not d!39900)))

(assert (=> d!39900 t!26094))

(declare-fun b_and!10205 () Bool)

(assert (= b_and!10199 (and (=> t!26094 result!8568) b_and!10205)))

(assert (=> d!39900 t!26096))

(declare-fun b_and!10207 () Bool)

(assert (= b_and!10201 (and (=> t!26096 result!8572) b_and!10207)))

(assert (=> d!39900 t!26098))

(declare-fun b_and!10209 () Bool)

(assert (= b_and!10203 (and (=> t!26098 result!8574) b_and!10209)))

(declare-fun m!152699 () Bool)

(assert (=> d!39900 m!152699))

(assert (=> d!39900 m!152399))

(assert (=> b!162353 d!39900))

(declare-fun d!39902 () Bool)

(assert (=> d!39902 (= (list!1007 (charsOf!152 separatorToken!170)) (list!1010 (c!32407 (charsOf!152 separatorToken!170))))))

(declare-fun bs!15304 () Bool)

(assert (= bs!15304 d!39902))

(declare-fun m!152701 () Bool)

(assert (=> bs!15304 m!152701))

(assert (=> b!162353 d!39902))

(declare-fun d!39904 () Bool)

(declare-fun e!98012 () Bool)

(assert (=> d!39904 e!98012))

(declare-fun res!73797 () Bool)

(assert (=> d!39904 (=> (not res!73797) (not e!98012))))

(declare-fun lt!49367 () List!2814)

(assert (=> d!39904 (= res!73797 (= (content!388 lt!49367) ((_ map or) (content!388 (++!626 lt!49240 lt!49241)) (content!388 lt!49246))))))

(declare-fun e!98011 () List!2814)

(assert (=> d!39904 (= lt!49367 e!98011)))

(declare-fun c!32469 () Bool)

(assert (=> d!39904 (= c!32469 ((_ is Nil!2804) (++!626 lt!49240 lt!49241)))))

(assert (=> d!39904 (= (++!626 (++!626 lt!49240 lt!49241) lt!49246) lt!49367)))

(declare-fun b!162638 () Bool)

(declare-fun res!73796 () Bool)

(assert (=> b!162638 (=> (not res!73796) (not e!98012))))

(assert (=> b!162638 (= res!73796 (= (size!2347 lt!49367) (+ (size!2347 (++!626 lt!49240 lt!49241)) (size!2347 lt!49246))))))

(declare-fun b!162637 () Bool)

(assert (=> b!162637 (= e!98011 (Cons!2804 (h!8201 (++!626 lt!49240 lt!49241)) (++!626 (t!26084 (++!626 lt!49240 lt!49241)) lt!49246)))))

(declare-fun b!162636 () Bool)

(assert (=> b!162636 (= e!98011 lt!49246)))

(declare-fun b!162639 () Bool)

(assert (=> b!162639 (= e!98012 (or (not (= lt!49246 Nil!2804)) (= lt!49367 (++!626 lt!49240 lt!49241))))))

(assert (= (and d!39904 c!32469) b!162636))

(assert (= (and d!39904 (not c!32469)) b!162637))

(assert (= (and d!39904 res!73797) b!162638))

(assert (= (and b!162638 res!73796) b!162639))

(declare-fun m!152703 () Bool)

(assert (=> d!39904 m!152703))

(assert (=> d!39904 m!152277))

(declare-fun m!152705 () Bool)

(assert (=> d!39904 m!152705))

(assert (=> d!39904 m!152689))

(declare-fun m!152707 () Bool)

(assert (=> b!162638 m!152707))

(assert (=> b!162638 m!152277))

(declare-fun m!152709 () Bool)

(assert (=> b!162638 m!152709))

(assert (=> b!162638 m!152693))

(declare-fun m!152711 () Bool)

(assert (=> b!162637 m!152711))

(assert (=> b!162353 d!39904))

(declare-fun d!39906 () Bool)

(declare-fun res!73800 () Bool)

(declare-fun e!98015 () Bool)

(assert (=> d!39906 (=> (not res!73800) (not e!98015))))

(declare-fun rulesValid!137 (LexerInterface!383 List!2815) Bool)

(assert (=> d!39906 (= res!73800 (rulesValid!137 thiss!17480 rules!1920))))

(assert (=> d!39906 (= (rulesInvariant!349 thiss!17480 rules!1920) e!98015)))

(declare-fun b!162642 () Bool)

(declare-datatypes ((List!2818 0))(
  ( (Nil!2808) (Cons!2808 (h!8205 String!3675) (t!26152 List!2818)) )
))
(declare-fun noDuplicateTag!137 (LexerInterface!383 List!2815 List!2818) Bool)

(assert (=> b!162642 (= e!98015 (noDuplicateTag!137 thiss!17480 rules!1920 Nil!2808))))

(assert (= (and d!39906 res!73800) b!162642))

(declare-fun m!152713 () Bool)

(assert (=> d!39906 m!152713))

(declare-fun m!152715 () Bool)

(assert (=> b!162642 m!152715))

(assert (=> b!162374 d!39906))

(declare-fun d!39908 () Bool)

(assert (=> d!39908 (= (inv!3617 (tag!675 (h!8202 rules!1920))) (= (mod (str.len (value!18479 (tag!675 (h!8202 rules!1920)))) 2) 0))))

(assert (=> b!162352 d!39908))

(declare-fun d!39910 () Bool)

(declare-fun res!73801 () Bool)

(declare-fun e!98016 () Bool)

(assert (=> d!39910 (=> (not res!73801) (not e!98016))))

(assert (=> d!39910 (= res!73801 (semiInverseModEq!171 (toChars!1011 (transformation!497 (h!8202 rules!1920))) (toValue!1152 (transformation!497 (h!8202 rules!1920)))))))

(assert (=> d!39910 (= (inv!3620 (transformation!497 (h!8202 rules!1920))) e!98016)))

(declare-fun b!162643 () Bool)

(assert (=> b!162643 (= e!98016 (equivClasses!154 (toChars!1011 (transformation!497 (h!8202 rules!1920))) (toValue!1152 (transformation!497 (h!8202 rules!1920)))))))

(assert (= (and d!39910 res!73801) b!162643))

(declare-fun m!152717 () Bool)

(assert (=> d!39910 m!152717))

(declare-fun m!152719 () Bool)

(assert (=> b!162643 m!152719))

(assert (=> b!162352 d!39910))

(declare-fun d!39912 () Bool)

(declare-fun lt!49415 () Bool)

(declare-fun e!98042 () Bool)

(assert (=> d!39912 (= lt!49415 e!98042)))

(declare-fun res!73818 () Bool)

(assert (=> d!39912 (=> (not res!73818) (not e!98042))))

(assert (=> d!39912 (= res!73818 (= (list!1011 (_1!1551 (lex!183 thiss!17480 rules!1920 (print!114 thiss!17480 (singletonSeq!49 (h!8203 tokens!465)))))) (list!1011 (singletonSeq!49 (h!8203 tokens!465)))))))

(declare-fun e!98043 () Bool)

(assert (=> d!39912 (= lt!49415 e!98043)))

(declare-fun res!73819 () Bool)

(assert (=> d!39912 (=> (not res!73819) (not e!98043))))

(declare-fun lt!49414 () tuple2!2670)

(assert (=> d!39912 (= res!73819 (= (size!2348 (_1!1551 lt!49414)) 1))))

(assert (=> d!39912 (= lt!49414 (lex!183 thiss!17480 rules!1920 (print!114 thiss!17480 (singletonSeq!49 (h!8203 tokens!465)))))))

(assert (=> d!39912 (not (isEmpty!1136 rules!1920))))

(assert (=> d!39912 (= (rulesProduceIndividualToken!132 thiss!17480 rules!1920 (h!8203 tokens!465)) lt!49415)))

(declare-fun b!162680 () Bool)

(declare-fun res!73817 () Bool)

(assert (=> b!162680 (=> (not res!73817) (not e!98043))))

(assert (=> b!162680 (= res!73817 (= (apply!390 (_1!1551 lt!49414) 0) (h!8203 tokens!465)))))

(declare-fun b!162681 () Bool)

(declare-fun isEmpty!1142 (BalanceConc!1640) Bool)

(assert (=> b!162681 (= e!98043 (isEmpty!1142 (_2!1551 lt!49414)))))

(declare-fun b!162682 () Bool)

(assert (=> b!162682 (= e!98042 (isEmpty!1142 (_2!1551 (lex!183 thiss!17480 rules!1920 (print!114 thiss!17480 (singletonSeq!49 (h!8203 tokens!465)))))))))

(assert (= (and d!39912 res!73819) b!162680))

(assert (= (and b!162680 res!73817) b!162681))

(assert (= (and d!39912 res!73818) b!162682))

(declare-fun m!152721 () Bool)

(assert (=> d!39912 m!152721))

(declare-fun m!152723 () Bool)

(assert (=> d!39912 m!152723))

(declare-fun m!152725 () Bool)

(assert (=> d!39912 m!152725))

(assert (=> d!39912 m!152297))

(assert (=> d!39912 m!152721))

(declare-fun m!152727 () Bool)

(assert (=> d!39912 m!152727))

(assert (=> d!39912 m!152297))

(assert (=> d!39912 m!152297))

(declare-fun m!152729 () Bool)

(assert (=> d!39912 m!152729))

(assert (=> d!39912 m!152327))

(declare-fun m!152731 () Bool)

(assert (=> b!162680 m!152731))

(declare-fun m!152733 () Bool)

(assert (=> b!162681 m!152733))

(assert (=> b!162682 m!152297))

(assert (=> b!162682 m!152297))

(assert (=> b!162682 m!152721))

(assert (=> b!162682 m!152721))

(assert (=> b!162682 m!152723))

(declare-fun m!152735 () Bool)

(assert (=> b!162682 m!152735))

(assert (=> b!162373 d!39912))

(declare-fun d!39914 () Bool)

(declare-fun res!73824 () Bool)

(declare-fun e!98048 () Bool)

(assert (=> d!39914 (=> res!73824 e!98048)))

(assert (=> d!39914 (= res!73824 ((_ is Nil!2806) tokens!465))))

(assert (=> d!39914 (= (forall!523 tokens!465 lambda!4447) e!98048)))

(declare-fun b!162687 () Bool)

(declare-fun e!98049 () Bool)

(assert (=> b!162687 (= e!98048 e!98049)))

(declare-fun res!73825 () Bool)

(assert (=> b!162687 (=> (not res!73825) (not e!98049))))

(declare-fun dynLambda!1005 (Int Token!738) Bool)

(assert (=> b!162687 (= res!73825 (dynLambda!1005 lambda!4447 (h!8203 tokens!465)))))

(declare-fun b!162688 () Bool)

(assert (=> b!162688 (= e!98049 (forall!523 (t!26086 tokens!465) lambda!4447))))

(assert (= (and d!39914 (not res!73824)) b!162687))

(assert (= (and b!162687 res!73825) b!162688))

(declare-fun b_lambda!3409 () Bool)

(assert (=> (not b_lambda!3409) (not b!162687)))

(declare-fun m!152797 () Bool)

(assert (=> b!162687 m!152797))

(declare-fun m!152799 () Bool)

(assert (=> b!162688 m!152799))

(assert (=> b!162362 d!39914))

(declare-fun d!39918 () Bool)

(declare-fun lt!49420 () Bool)

(declare-fun isEmpty!1143 (List!2816) Bool)

(assert (=> d!39918 (= lt!49420 (isEmpty!1143 (list!1011 (_1!1551 (lex!183 thiss!17480 rules!1920 (seqFromList!371 lt!49240))))))))

(declare-fun isEmpty!1144 (Conc!817) Bool)

(assert (=> d!39918 (= lt!49420 (isEmpty!1144 (c!32409 (_1!1551 (lex!183 thiss!17480 rules!1920 (seqFromList!371 lt!49240))))))))

(assert (=> d!39918 (= (isEmpty!1135 (_1!1551 (lex!183 thiss!17480 rules!1920 (seqFromList!371 lt!49240)))) lt!49420)))

(declare-fun bs!15314 () Bool)

(assert (= bs!15314 d!39918))

(declare-fun m!152801 () Bool)

(assert (=> bs!15314 m!152801))

(assert (=> bs!15314 m!152801))

(declare-fun m!152803 () Bool)

(assert (=> bs!15314 m!152803))

(declare-fun m!152805 () Bool)

(assert (=> bs!15314 m!152805))

(assert (=> b!162351 d!39918))

(declare-fun b!162811 () Bool)

(declare-fun e!98135 () Bool)

(declare-fun lt!49478 () tuple2!2670)

(declare-datatypes ((tuple2!2682 0))(
  ( (tuple2!2683 (_1!1557 List!2816) (_2!1557 List!2814)) )
))
(declare-fun lexList!105 (LexerInterface!383 List!2815 List!2814) tuple2!2682)

(assert (=> b!162811 (= e!98135 (= (list!1007 (_2!1551 lt!49478)) (_2!1557 (lexList!105 thiss!17480 rules!1920 (list!1007 (seqFromList!371 lt!49240))))))))

(declare-fun d!39920 () Bool)

(assert (=> d!39920 e!98135))

(declare-fun res!73848 () Bool)

(assert (=> d!39920 (=> (not res!73848) (not e!98135))))

(declare-fun e!98134 () Bool)

(assert (=> d!39920 (= res!73848 e!98134)))

(declare-fun c!32498 () Bool)

(assert (=> d!39920 (= c!32498 (> (size!2348 (_1!1551 lt!49478)) 0))))

(declare-fun lexTailRecV2!92 (LexerInterface!383 List!2815 BalanceConc!1640 BalanceConc!1640 BalanceConc!1640 BalanceConc!1642) tuple2!2670)

(assert (=> d!39920 (= lt!49478 (lexTailRecV2!92 thiss!17480 rules!1920 (seqFromList!371 lt!49240) (BalanceConc!1641 Empty!816) (seqFromList!371 lt!49240) (BalanceConc!1643 Empty!817)))))

(assert (=> d!39920 (= (lex!183 thiss!17480 rules!1920 (seqFromList!371 lt!49240)) lt!49478)))

(declare-fun b!162812 () Bool)

(assert (=> b!162812 (= e!98134 (= (_2!1551 lt!49478) (seqFromList!371 lt!49240)))))

(declare-fun b!162813 () Bool)

(declare-fun e!98136 () Bool)

(assert (=> b!162813 (= e!98134 e!98136)))

(declare-fun res!73850 () Bool)

(declare-fun size!2349 (BalanceConc!1640) Int)

(assert (=> b!162813 (= res!73850 (< (size!2349 (_2!1551 lt!49478)) (size!2349 (seqFromList!371 lt!49240))))))

(assert (=> b!162813 (=> (not res!73850) (not e!98136))))

(declare-fun b!162814 () Bool)

(assert (=> b!162814 (= e!98136 (not (isEmpty!1135 (_1!1551 lt!49478))))))

(declare-fun b!162815 () Bool)

(declare-fun res!73849 () Bool)

(assert (=> b!162815 (=> (not res!73849) (not e!98135))))

(assert (=> b!162815 (= res!73849 (= (list!1011 (_1!1551 lt!49478)) (_1!1557 (lexList!105 thiss!17480 rules!1920 (list!1007 (seqFromList!371 lt!49240))))))))

(assert (= (and d!39920 c!32498) b!162813))

(assert (= (and d!39920 (not c!32498)) b!162812))

(assert (= (and b!162813 res!73850) b!162814))

(assert (= (and d!39920 res!73848) b!162815))

(assert (= (and b!162815 res!73849) b!162811))

(declare-fun m!152995 () Bool)

(assert (=> b!162815 m!152995))

(assert (=> b!162815 m!152333))

(declare-fun m!152997 () Bool)

(assert (=> b!162815 m!152997))

(assert (=> b!162815 m!152997))

(declare-fun m!152999 () Bool)

(assert (=> b!162815 m!152999))

(declare-fun m!153001 () Bool)

(assert (=> b!162811 m!153001))

(assert (=> b!162811 m!152333))

(assert (=> b!162811 m!152997))

(assert (=> b!162811 m!152997))

(assert (=> b!162811 m!152999))

(declare-fun m!153003 () Bool)

(assert (=> d!39920 m!153003))

(assert (=> d!39920 m!152333))

(assert (=> d!39920 m!152333))

(declare-fun m!153005 () Bool)

(assert (=> d!39920 m!153005))

(declare-fun m!153007 () Bool)

(assert (=> b!162813 m!153007))

(assert (=> b!162813 m!152333))

(declare-fun m!153009 () Bool)

(assert (=> b!162813 m!153009))

(declare-fun m!153011 () Bool)

(assert (=> b!162814 m!153011))

(assert (=> b!162351 d!39920))

(declare-fun d!39962 () Bool)

(declare-fun fromListB!149 (List!2814) BalanceConc!1640)

(assert (=> d!39962 (= (seqFromList!371 lt!49240) (fromListB!149 lt!49240))))

(declare-fun bs!15344 () Bool)

(assert (= bs!15344 d!39962))

(declare-fun m!153013 () Bool)

(assert (=> bs!15344 m!153013))

(assert (=> b!162351 d!39962))

(declare-fun d!39964 () Bool)

(assert (=> d!39964 (= (inv!3617 (tag!675 (rule!1004 separatorToken!170))) (= (mod (str.len (value!18479 (tag!675 (rule!1004 separatorToken!170)))) 2) 0))))

(assert (=> b!162361 d!39964))

(declare-fun d!39966 () Bool)

(declare-fun res!73851 () Bool)

(declare-fun e!98137 () Bool)

(assert (=> d!39966 (=> (not res!73851) (not e!98137))))

(assert (=> d!39966 (= res!73851 (semiInverseModEq!171 (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (toValue!1152 (transformation!497 (rule!1004 separatorToken!170)))))))

(assert (=> d!39966 (= (inv!3620 (transformation!497 (rule!1004 separatorToken!170))) e!98137)))

(declare-fun b!162816 () Bool)

(assert (=> b!162816 (= e!98137 (equivClasses!154 (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (toValue!1152 (transformation!497 (rule!1004 separatorToken!170)))))))

(assert (= (and d!39966 res!73851) b!162816))

(declare-fun m!153015 () Bool)

(assert (=> d!39966 m!153015))

(declare-fun m!153017 () Bool)

(assert (=> b!162816 m!153017))

(assert (=> b!162361 d!39966))

(declare-fun d!39968 () Bool)

(declare-fun res!73852 () Bool)

(declare-fun e!98138 () Bool)

(assert (=> d!39968 (=> (not res!73852) (not e!98138))))

(assert (=> d!39968 (= res!73852 (not (isEmpty!1141 (originalCharacters!540 separatorToken!170))))))

(assert (=> d!39968 (= (inv!3621 separatorToken!170) e!98138)))

(declare-fun b!162817 () Bool)

(declare-fun res!73853 () Bool)

(assert (=> b!162817 (=> (not res!73853) (not e!98138))))

(assert (=> b!162817 (= res!73853 (= (originalCharacters!540 separatorToken!170) (list!1007 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (value!18480 separatorToken!170)))))))

(declare-fun b!162818 () Bool)

(assert (=> b!162818 (= e!98138 (= (size!2343 separatorToken!170) (size!2347 (originalCharacters!540 separatorToken!170))))))

(assert (= (and d!39968 res!73852) b!162817))

(assert (= (and b!162817 res!73853) b!162818))

(declare-fun b_lambda!3427 () Bool)

(assert (=> (not b_lambda!3427) (not b!162817)))

(assert (=> b!162817 t!26119))

(declare-fun b_and!10231 () Bool)

(assert (= b_and!10205 (and (=> t!26119 result!8582) b_and!10231)))

(assert (=> b!162817 t!26121))

(declare-fun b_and!10233 () Bool)

(assert (= b_and!10207 (and (=> t!26121 result!8584) b_and!10233)))

(assert (=> b!162817 t!26123))

(declare-fun b_and!10235 () Bool)

(assert (= b_and!10209 (and (=> t!26123 result!8586) b_and!10235)))

(declare-fun m!153019 () Bool)

(assert (=> d!39968 m!153019))

(assert (=> b!162817 m!152675))

(assert (=> b!162817 m!152675))

(declare-fun m!153021 () Bool)

(assert (=> b!162817 m!153021))

(declare-fun m!153023 () Bool)

(assert (=> b!162818 m!153023))

(assert (=> start!17486 d!39968))

(declare-fun d!39970 () Bool)

(declare-fun res!73854 () Bool)

(declare-fun e!98139 () Bool)

(assert (=> d!39970 (=> res!73854 e!98139)))

(assert (=> d!39970 (= res!73854 ((_ is Nil!2806) tokens!465))))

(assert (=> d!39970 (= (forall!523 tokens!465 lambda!4448) e!98139)))

(declare-fun b!162819 () Bool)

(declare-fun e!98140 () Bool)

(assert (=> b!162819 (= e!98139 e!98140)))

(declare-fun res!73855 () Bool)

(assert (=> b!162819 (=> (not res!73855) (not e!98140))))

(assert (=> b!162819 (= res!73855 (dynLambda!1005 lambda!4448 (h!8203 tokens!465)))))

(declare-fun b!162820 () Bool)

(assert (=> b!162820 (= e!98140 (forall!523 (t!26086 tokens!465) lambda!4448))))

(assert (= (and d!39970 (not res!73854)) b!162819))

(assert (= (and b!162819 res!73855) b!162820))

(declare-fun b_lambda!3429 () Bool)

(assert (=> (not b_lambda!3429) (not b!162819)))

(declare-fun m!153025 () Bool)

(assert (=> b!162819 m!153025))

(declare-fun m!153027 () Bool)

(assert (=> b!162820 m!153027))

(assert (=> b!162350 d!39970))

(declare-fun d!39972 () Bool)

(declare-fun e!98142 () Bool)

(assert (=> d!39972 e!98142))

(declare-fun res!73857 () Bool)

(assert (=> d!39972 (=> (not res!73857) (not e!98142))))

(declare-fun lt!49479 () List!2814)

(assert (=> d!39972 (= res!73857 (= (content!388 lt!49479) ((_ map or) (content!388 lt!49240) (content!388 lt!49246))))))

(declare-fun e!98141 () List!2814)

(assert (=> d!39972 (= lt!49479 e!98141)))

(declare-fun c!32499 () Bool)

(assert (=> d!39972 (= c!32499 ((_ is Nil!2804) lt!49240))))

(assert (=> d!39972 (= (++!626 lt!49240 lt!49246) lt!49479)))

(declare-fun b!162823 () Bool)

(declare-fun res!73856 () Bool)

(assert (=> b!162823 (=> (not res!73856) (not e!98142))))

(assert (=> b!162823 (= res!73856 (= (size!2347 lt!49479) (+ (size!2347 lt!49240) (size!2347 lt!49246))))))

(declare-fun b!162822 () Bool)

(assert (=> b!162822 (= e!98141 (Cons!2804 (h!8201 lt!49240) (++!626 (t!26084 lt!49240) lt!49246)))))

(declare-fun b!162821 () Bool)

(assert (=> b!162821 (= e!98141 lt!49246)))

(declare-fun b!162824 () Bool)

(assert (=> b!162824 (= e!98142 (or (not (= lt!49246 Nil!2804)) (= lt!49479 lt!49240)))))

(assert (= (and d!39972 c!32499) b!162821))

(assert (= (and d!39972 (not c!32499)) b!162822))

(assert (= (and d!39972 res!73857) b!162823))

(assert (= (and b!162823 res!73856) b!162824))

(declare-fun m!153029 () Bool)

(assert (=> d!39972 m!153029))

(assert (=> d!39972 m!152569))

(assert (=> d!39972 m!152689))

(declare-fun m!153031 () Bool)

(assert (=> b!162823 m!153031))

(assert (=> b!162823 m!152575))

(assert (=> b!162823 m!152693))

(declare-fun m!153033 () Bool)

(assert (=> b!162822 m!153033))

(assert (=> b!162371 d!39972))

(declare-fun d!39974 () Bool)

(declare-fun lt!49482 () BalanceConc!1640)

(assert (=> d!39974 (= (list!1007 lt!49482) (printList!67 thiss!17480 (list!1011 lt!49248)))))

(assert (=> d!39974 (= lt!49482 (printTailRec!77 thiss!17480 lt!49248 0 (BalanceConc!1641 Empty!816)))))

(assert (=> d!39974 (= (print!114 thiss!17480 lt!49248) lt!49482)))

(declare-fun bs!15345 () Bool)

(assert (= bs!15345 d!39974))

(declare-fun m!153035 () Bool)

(assert (=> bs!15345 m!153035))

(declare-fun m!153037 () Bool)

(assert (=> bs!15345 m!153037))

(assert (=> bs!15345 m!153037))

(declare-fun m!153039 () Bool)

(assert (=> bs!15345 m!153039))

(assert (=> bs!15345 m!152299))

(assert (=> b!162360 d!39974))

(declare-fun d!39976 () Bool)

(declare-fun lt!49501 () BalanceConc!1640)

(declare-fun printListTailRec!48 (LexerInterface!383 List!2816 List!2814) List!2814)

(assert (=> d!39976 (= (list!1007 lt!49501) (printListTailRec!48 thiss!17480 (dropList!80 lt!49248 0) (list!1007 (BalanceConc!1641 Empty!816))))))

(declare-fun e!98148 () BalanceConc!1640)

(assert (=> d!39976 (= lt!49501 e!98148)))

(declare-fun c!32502 () Bool)

(assert (=> d!39976 (= c!32502 (>= 0 (size!2348 lt!49248)))))

(declare-fun e!98147 () Bool)

(assert (=> d!39976 e!98147))

(declare-fun res!73860 () Bool)

(assert (=> d!39976 (=> (not res!73860) (not e!98147))))

(assert (=> d!39976 (= res!73860 (>= 0 0))))

(assert (=> d!39976 (= (printTailRec!77 thiss!17480 lt!49248 0 (BalanceConc!1641 Empty!816)) lt!49501)))

(declare-fun b!162831 () Bool)

(assert (=> b!162831 (= e!98147 (<= 0 (size!2348 lt!49248)))))

(declare-fun b!162832 () Bool)

(assert (=> b!162832 (= e!98148 (BalanceConc!1641 Empty!816))))

(declare-fun b!162833 () Bool)

(assert (=> b!162833 (= e!98148 (printTailRec!77 thiss!17480 lt!49248 (+ 0 1) (++!628 (BalanceConc!1641 Empty!816) (charsOf!152 (apply!390 lt!49248 0)))))))

(declare-fun lt!49500 () List!2816)

(assert (=> b!162833 (= lt!49500 (list!1011 lt!49248))))

(declare-fun lt!49497 () Unit!2310)

(assert (=> b!162833 (= lt!49497 (lemmaDropApply!120 lt!49500 0))))

(assert (=> b!162833 (= (head!594 (drop!133 lt!49500 0)) (apply!389 lt!49500 0))))

(declare-fun lt!49498 () Unit!2310)

(assert (=> b!162833 (= lt!49498 lt!49497)))

(declare-fun lt!49503 () List!2816)

(assert (=> b!162833 (= lt!49503 (list!1011 lt!49248))))

(declare-fun lt!49502 () Unit!2310)

(assert (=> b!162833 (= lt!49502 (lemmaDropTail!112 lt!49503 0))))

(assert (=> b!162833 (= (tail!334 (drop!133 lt!49503 0)) (drop!133 lt!49503 (+ 0 1)))))

(declare-fun lt!49499 () Unit!2310)

(assert (=> b!162833 (= lt!49499 lt!49502)))

(assert (= (and d!39976 res!73860) b!162831))

(assert (= (and d!39976 c!32502) b!162832))

(assert (= (and d!39976 (not c!32502)) b!162833))

(declare-fun m!153041 () Bool)

(assert (=> d!39976 m!153041))

(declare-fun m!153043 () Bool)

(assert (=> d!39976 m!153043))

(declare-fun m!153045 () Bool)

(assert (=> d!39976 m!153045))

(assert (=> d!39976 m!153041))

(declare-fun m!153047 () Bool)

(assert (=> d!39976 m!153047))

(declare-fun m!153049 () Bool)

(assert (=> d!39976 m!153049))

(assert (=> d!39976 m!153043))

(assert (=> b!162831 m!153047))

(declare-fun m!153051 () Bool)

(assert (=> b!162833 m!153051))

(declare-fun m!153053 () Bool)

(assert (=> b!162833 m!153053))

(declare-fun m!153055 () Bool)

(assert (=> b!162833 m!153055))

(declare-fun m!153057 () Bool)

(assert (=> b!162833 m!153057))

(declare-fun m!153059 () Bool)

(assert (=> b!162833 m!153059))

(declare-fun m!153061 () Bool)

(assert (=> b!162833 m!153061))

(declare-fun m!153063 () Bool)

(assert (=> b!162833 m!153063))

(declare-fun m!153065 () Bool)

(assert (=> b!162833 m!153065))

(declare-fun m!153067 () Bool)

(assert (=> b!162833 m!153067))

(assert (=> b!162833 m!153037))

(declare-fun m!153069 () Bool)

(assert (=> b!162833 m!153069))

(assert (=> b!162833 m!153051))

(assert (=> b!162833 m!153065))

(declare-fun m!153071 () Bool)

(assert (=> b!162833 m!153071))

(declare-fun m!153073 () Bool)

(assert (=> b!162833 m!153073))

(assert (=> b!162833 m!153059))

(assert (=> b!162833 m!153053))

(assert (=> b!162833 m!153071))

(assert (=> b!162360 d!39976))

(declare-fun d!39978 () Bool)

(assert (=> d!39978 (= (list!1007 lt!49242) (list!1010 (c!32407 lt!49242)))))

(declare-fun bs!15346 () Bool)

(assert (= bs!15346 d!39978))

(declare-fun m!153075 () Bool)

(assert (=> bs!15346 m!153075))

(assert (=> b!162360 d!39978))

(declare-fun d!39980 () Bool)

(declare-fun e!98151 () Bool)

(assert (=> d!39980 e!98151))

(declare-fun res!73863 () Bool)

(assert (=> d!39980 (=> (not res!73863) (not e!98151))))

(declare-fun lt!49506 () BalanceConc!1642)

(assert (=> d!39980 (= res!73863 (= (list!1011 lt!49506) (Cons!2806 (h!8203 tokens!465) Nil!2806)))))

(declare-fun singleton!29 (Token!738) BalanceConc!1642)

(assert (=> d!39980 (= lt!49506 (singleton!29 (h!8203 tokens!465)))))

(assert (=> d!39980 (= (singletonSeq!49 (h!8203 tokens!465)) lt!49506)))

(declare-fun b!162836 () Bool)

(declare-fun isBalanced!226 (Conc!817) Bool)

(assert (=> b!162836 (= e!98151 (isBalanced!226 (c!32409 lt!49506)))))

(assert (= (and d!39980 res!73863) b!162836))

(declare-fun m!153077 () Bool)

(assert (=> d!39980 m!153077))

(declare-fun m!153079 () Bool)

(assert (=> d!39980 m!153079))

(declare-fun m!153081 () Bool)

(assert (=> b!162836 m!153081))

(assert (=> b!162360 d!39980))

(declare-fun d!39982 () Bool)

(declare-fun c!32505 () Bool)

(assert (=> d!39982 (= c!32505 ((_ is Cons!2806) (Cons!2806 (h!8203 tokens!465) Nil!2806)))))

(declare-fun e!98154 () List!2814)

(assert (=> d!39982 (= (printList!67 thiss!17480 (Cons!2806 (h!8203 tokens!465) Nil!2806)) e!98154)))

(declare-fun b!162841 () Bool)

(assert (=> b!162841 (= e!98154 (++!626 (list!1007 (charsOf!152 (h!8203 (Cons!2806 (h!8203 tokens!465) Nil!2806)))) (printList!67 thiss!17480 (t!26086 (Cons!2806 (h!8203 tokens!465) Nil!2806)))))))

(declare-fun b!162842 () Bool)

(assert (=> b!162842 (= e!98154 Nil!2804)))

(assert (= (and d!39982 c!32505) b!162841))

(assert (= (and d!39982 (not c!32505)) b!162842))

(declare-fun m!153083 () Bool)

(assert (=> b!162841 m!153083))

(assert (=> b!162841 m!153083))

(declare-fun m!153085 () Bool)

(assert (=> b!162841 m!153085))

(declare-fun m!153087 () Bool)

(assert (=> b!162841 m!153087))

(assert (=> b!162841 m!153085))

(assert (=> b!162841 m!153087))

(declare-fun m!153089 () Bool)

(assert (=> b!162841 m!153089))

(assert (=> b!162360 d!39982))

(declare-fun d!39984 () Bool)

(declare-fun lt!49509 () Bool)

(declare-fun content!389 (List!2816) (InoxSet Token!738))

(assert (=> d!39984 (= lt!49509 (select (content!389 tokens!465) (h!8203 tokens!465)))))

(declare-fun e!98159 () Bool)

(assert (=> d!39984 (= lt!49509 e!98159)))

(declare-fun res!73869 () Bool)

(assert (=> d!39984 (=> (not res!73869) (not e!98159))))

(assert (=> d!39984 (= res!73869 ((_ is Cons!2806) tokens!465))))

(assert (=> d!39984 (= (contains!446 tokens!465 (h!8203 tokens!465)) lt!49509)))

(declare-fun b!162847 () Bool)

(declare-fun e!98160 () Bool)

(assert (=> b!162847 (= e!98159 e!98160)))

(declare-fun res!73868 () Bool)

(assert (=> b!162847 (=> res!73868 e!98160)))

(assert (=> b!162847 (= res!73868 (= (h!8203 tokens!465) (h!8203 tokens!465)))))

(declare-fun b!162848 () Bool)

(assert (=> b!162848 (= e!98160 (contains!446 (t!26086 tokens!465) (h!8203 tokens!465)))))

(assert (= (and d!39984 res!73869) b!162847))

(assert (= (and b!162847 (not res!73868)) b!162848))

(declare-fun m!153091 () Bool)

(assert (=> d!39984 m!153091))

(declare-fun m!153093 () Bool)

(assert (=> d!39984 m!153093))

(declare-fun m!153095 () Bool)

(assert (=> b!162848 m!153095))

(assert (=> b!162349 d!39984))

(declare-fun d!39986 () Bool)

(declare-fun c!32511 () Bool)

(assert (=> d!39986 (= c!32511 ((_ is IntegerValue!1557) (value!18480 separatorToken!170)))))

(declare-fun e!98169 () Bool)

(assert (=> d!39986 (= (inv!21 (value!18480 separatorToken!170)) e!98169)))

(declare-fun b!162859 () Bool)

(declare-fun inv!16 (TokenValue!519) Bool)

(assert (=> b!162859 (= e!98169 (inv!16 (value!18480 separatorToken!170)))))

(declare-fun b!162860 () Bool)

(declare-fun e!98168 () Bool)

(declare-fun inv!17 (TokenValue!519) Bool)

(assert (=> b!162860 (= e!98168 (inv!17 (value!18480 separatorToken!170)))))

(declare-fun b!162861 () Bool)

(declare-fun res!73872 () Bool)

(declare-fun e!98167 () Bool)

(assert (=> b!162861 (=> res!73872 e!98167)))

(assert (=> b!162861 (= res!73872 (not ((_ is IntegerValue!1559) (value!18480 separatorToken!170))))))

(assert (=> b!162861 (= e!98168 e!98167)))

(declare-fun b!162862 () Bool)

(declare-fun inv!15 (TokenValue!519) Bool)

(assert (=> b!162862 (= e!98167 (inv!15 (value!18480 separatorToken!170)))))

(declare-fun b!162863 () Bool)

(assert (=> b!162863 (= e!98169 e!98168)))

(declare-fun c!32510 () Bool)

(assert (=> b!162863 (= c!32510 ((_ is IntegerValue!1558) (value!18480 separatorToken!170)))))

(assert (= (and d!39986 c!32511) b!162859))

(assert (= (and d!39986 (not c!32511)) b!162863))

(assert (= (and b!162863 c!32510) b!162860))

(assert (= (and b!162863 (not c!32510)) b!162861))

(assert (= (and b!162861 (not res!73872)) b!162862))

(declare-fun m!153097 () Bool)

(assert (=> b!162859 m!153097))

(declare-fun m!153099 () Bool)

(assert (=> b!162860 m!153099))

(declare-fun m!153101 () Bool)

(assert (=> b!162862 m!153101))

(assert (=> b!162359 d!39986))

(declare-fun bs!15347 () Bool)

(declare-fun d!39988 () Bool)

(assert (= bs!15347 (and d!39988 b!162538)))

(declare-fun lambda!4479 () Int)

(assert (=> bs!15347 (= lambda!4479 lambda!4456)))

(declare-fun bs!15348 () Bool)

(assert (= bs!15348 (and d!39988 b!162350)))

(assert (=> bs!15348 (= lambda!4479 lambda!4448)))

(declare-fun bs!15349 () Bool)

(assert (= bs!15349 (and d!39988 b!162362)))

(assert (=> bs!15349 (not (= lambda!4479 lambda!4447))))

(declare-fun bs!15350 () Bool)

(assert (= bs!15350 (and d!39988 d!39888)))

(assert (=> bs!15350 (not (= lambda!4479 lambda!4464))))

(declare-fun bs!15351 () Bool)

(assert (= bs!15351 (and d!39988 b!162616)))

(assert (=> bs!15351 (= lambda!4479 lambda!4465)))

(declare-fun b!162869 () Bool)

(declare-fun e!98175 () Bool)

(assert (=> b!162869 (= e!98175 true)))

(declare-fun b!162868 () Bool)

(declare-fun e!98174 () Bool)

(assert (=> b!162868 (= e!98174 e!98175)))

(declare-fun b!162867 () Bool)

(declare-fun e!98173 () Bool)

(assert (=> b!162867 (= e!98173 e!98174)))

(assert (=> d!39988 e!98173))

(assert (= b!162868 b!162869))

(assert (= b!162867 b!162868))

(assert (= (and d!39988 ((_ is Cons!2805) rules!1920)) b!162867))

(assert (=> b!162869 (< (dynLambda!999 order!1425 (toValue!1152 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1000 order!1427 lambda!4479))))

(assert (=> b!162869 (< (dynLambda!1001 order!1429 (toChars!1011 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1000 order!1427 lambda!4479))))

(assert (=> d!39988 true))

(declare-fun e!98172 () Bool)

(assert (=> d!39988 e!98172))

(declare-fun res!73875 () Bool)

(assert (=> d!39988 (=> (not res!73875) (not e!98172))))

(declare-fun lt!49512 () Bool)

(assert (=> d!39988 (= res!73875 (= lt!49512 (forall!523 (list!1011 lt!49245) lambda!4479)))))

(declare-fun forall!525 (BalanceConc!1642 Int) Bool)

(assert (=> d!39988 (= lt!49512 (forall!525 lt!49245 lambda!4479))))

(assert (=> d!39988 (not (isEmpty!1136 rules!1920))))

(assert (=> d!39988 (= (rulesProduceEachTokenIndividually!175 thiss!17480 rules!1920 lt!49245) lt!49512)))

(declare-fun b!162866 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!103 (LexerInterface!383 List!2815 List!2816) Bool)

(assert (=> b!162866 (= e!98172 (= lt!49512 (rulesProduceEachTokenIndividuallyList!103 thiss!17480 rules!1920 (list!1011 lt!49245))))))

(assert (= (and d!39988 res!73875) b!162866))

(declare-fun m!153103 () Bool)

(assert (=> d!39988 m!153103))

(assert (=> d!39988 m!153103))

(declare-fun m!153105 () Bool)

(assert (=> d!39988 m!153105))

(declare-fun m!153107 () Bool)

(assert (=> d!39988 m!153107))

(assert (=> d!39988 m!152327))

(assert (=> b!162866 m!153103))

(assert (=> b!162866 m!153103))

(declare-fun m!153109 () Bool)

(assert (=> b!162866 m!153109))

(assert (=> b!162369 d!39988))

(declare-fun d!39990 () Bool)

(assert (=> d!39990 (= (seqFromList!372 tokens!465) (fromListB!148 tokens!465))))

(declare-fun bs!15352 () Bool)

(assert (= bs!15352 d!39990))

(declare-fun m!153111 () Bool)

(assert (=> bs!15352 m!153111))

(assert (=> b!162369 d!39990))

(declare-fun d!39992 () Bool)

(assert (=> d!39992 (= (list!1007 (seqFromList!371 lt!49247)) (list!1010 (c!32407 (seqFromList!371 lt!49247))))))

(declare-fun bs!15353 () Bool)

(assert (= bs!15353 d!39992))

(declare-fun m!153113 () Bool)

(assert (=> bs!15353 m!153113))

(assert (=> b!162358 d!39992))

(declare-fun d!39994 () Bool)

(assert (=> d!39994 (= (seqFromList!371 lt!49247) (fromListB!149 lt!49247))))

(declare-fun bs!15354 () Bool)

(assert (= bs!15354 d!39994))

(declare-fun m!153115 () Bool)

(assert (=> bs!15354 m!153115))

(assert (=> b!162358 d!39994))

(declare-fun d!39996 () Bool)

(declare-fun lt!49514 () Bool)

(declare-fun e!98176 () Bool)

(assert (=> d!39996 (= lt!49514 e!98176)))

(declare-fun res!73877 () Bool)

(assert (=> d!39996 (=> (not res!73877) (not e!98176))))

(assert (=> d!39996 (= res!73877 (= (list!1011 (_1!1551 (lex!183 thiss!17480 rules!1920 (print!114 thiss!17480 (singletonSeq!49 separatorToken!170))))) (list!1011 (singletonSeq!49 separatorToken!170))))))

(declare-fun e!98177 () Bool)

(assert (=> d!39996 (= lt!49514 e!98177)))

(declare-fun res!73878 () Bool)

(assert (=> d!39996 (=> (not res!73878) (not e!98177))))

(declare-fun lt!49513 () tuple2!2670)

(assert (=> d!39996 (= res!73878 (= (size!2348 (_1!1551 lt!49513)) 1))))

(assert (=> d!39996 (= lt!49513 (lex!183 thiss!17480 rules!1920 (print!114 thiss!17480 (singletonSeq!49 separatorToken!170))))))

(assert (=> d!39996 (not (isEmpty!1136 rules!1920))))

(assert (=> d!39996 (= (rulesProduceIndividualToken!132 thiss!17480 rules!1920 separatorToken!170) lt!49514)))

(declare-fun b!162870 () Bool)

(declare-fun res!73876 () Bool)

(assert (=> b!162870 (=> (not res!73876) (not e!98177))))

(assert (=> b!162870 (= res!73876 (= (apply!390 (_1!1551 lt!49513) 0) separatorToken!170))))

(declare-fun b!162871 () Bool)

(assert (=> b!162871 (= e!98177 (isEmpty!1142 (_2!1551 lt!49513)))))

(declare-fun b!162872 () Bool)

(assert (=> b!162872 (= e!98176 (isEmpty!1142 (_2!1551 (lex!183 thiss!17480 rules!1920 (print!114 thiss!17480 (singletonSeq!49 separatorToken!170))))))))

(assert (= (and d!39996 res!73878) b!162870))

(assert (= (and b!162870 res!73876) b!162871))

(assert (= (and d!39996 res!73877) b!162872))

(declare-fun m!153117 () Bool)

(assert (=> d!39996 m!153117))

(declare-fun m!153119 () Bool)

(assert (=> d!39996 m!153119))

(declare-fun m!153121 () Bool)

(assert (=> d!39996 m!153121))

(declare-fun m!153123 () Bool)

(assert (=> d!39996 m!153123))

(assert (=> d!39996 m!153117))

(declare-fun m!153125 () Bool)

(assert (=> d!39996 m!153125))

(assert (=> d!39996 m!153123))

(assert (=> d!39996 m!153123))

(declare-fun m!153127 () Bool)

(assert (=> d!39996 m!153127))

(assert (=> d!39996 m!152327))

(declare-fun m!153129 () Bool)

(assert (=> b!162870 m!153129))

(declare-fun m!153131 () Bool)

(assert (=> b!162871 m!153131))

(assert (=> b!162872 m!153123))

(assert (=> b!162872 m!153123))

(assert (=> b!162872 m!153117))

(assert (=> b!162872 m!153117))

(assert (=> b!162872 m!153119))

(declare-fun m!153133 () Bool)

(assert (=> b!162872 m!153133))

(assert (=> b!162368 d!39996))

(declare-fun d!39998 () Bool)

(declare-fun c!32513 () Bool)

(assert (=> d!39998 (= c!32513 ((_ is IntegerValue!1557) (value!18480 (h!8203 tokens!465))))))

(declare-fun e!98180 () Bool)

(assert (=> d!39998 (= (inv!21 (value!18480 (h!8203 tokens!465))) e!98180)))

(declare-fun b!162873 () Bool)

(assert (=> b!162873 (= e!98180 (inv!16 (value!18480 (h!8203 tokens!465))))))

(declare-fun b!162874 () Bool)

(declare-fun e!98179 () Bool)

(assert (=> b!162874 (= e!98179 (inv!17 (value!18480 (h!8203 tokens!465))))))

(declare-fun b!162875 () Bool)

(declare-fun res!73879 () Bool)

(declare-fun e!98178 () Bool)

(assert (=> b!162875 (=> res!73879 e!98178)))

(assert (=> b!162875 (= res!73879 (not ((_ is IntegerValue!1559) (value!18480 (h!8203 tokens!465)))))))

(assert (=> b!162875 (= e!98179 e!98178)))

(declare-fun b!162876 () Bool)

(assert (=> b!162876 (= e!98178 (inv!15 (value!18480 (h!8203 tokens!465))))))

(declare-fun b!162877 () Bool)

(assert (=> b!162877 (= e!98180 e!98179)))

(declare-fun c!32512 () Bool)

(assert (=> b!162877 (= c!32512 ((_ is IntegerValue!1558) (value!18480 (h!8203 tokens!465))))))

(assert (= (and d!39998 c!32513) b!162873))

(assert (= (and d!39998 (not c!32513)) b!162877))

(assert (= (and b!162877 c!32512) b!162874))

(assert (= (and b!162877 (not c!32512)) b!162875))

(assert (= (and b!162875 (not res!73879)) b!162876))

(declare-fun m!153135 () Bool)

(assert (=> b!162873 m!153135))

(declare-fun m!153137 () Bool)

(assert (=> b!162874 m!153137))

(declare-fun m!153139 () Bool)

(assert (=> b!162876 m!153139))

(assert (=> b!162357 d!39998))

(declare-fun d!40000 () Bool)

(assert (=> d!40000 (= (list!1007 (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 lt!49245 separatorToken!170 0)) (list!1010 (c!32407 (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 lt!49245 separatorToken!170 0))))))

(declare-fun bs!15355 () Bool)

(assert (= bs!15355 d!40000))

(declare-fun m!153141 () Bool)

(assert (=> bs!15355 m!153141))

(assert (=> b!162367 d!40000))

(declare-fun bs!15356 () Bool)

(declare-fun d!40002 () Bool)

(assert (= bs!15356 (and d!40002 b!162538)))

(declare-fun lambda!4480 () Int)

(assert (=> bs!15356 (not (= lambda!4480 lambda!4456))))

(declare-fun bs!15357 () Bool)

(assert (= bs!15357 (and d!40002 b!162350)))

(assert (=> bs!15357 (not (= lambda!4480 lambda!4448))))

(declare-fun bs!15358 () Bool)

(assert (= bs!15358 (and d!40002 b!162362)))

(assert (=> bs!15358 (= lambda!4480 lambda!4447)))

(declare-fun bs!15359 () Bool)

(assert (= bs!15359 (and d!40002 d!39888)))

(assert (=> bs!15359 (= lambda!4480 lambda!4464)))

(declare-fun bs!15360 () Bool)

(assert (= bs!15360 (and d!40002 d!39988)))

(assert (=> bs!15360 (not (= lambda!4480 lambda!4479))))

(declare-fun bs!15361 () Bool)

(assert (= bs!15361 (and d!40002 b!162616)))

(assert (=> bs!15361 (not (= lambda!4480 lambda!4465))))

(declare-fun bs!15362 () Bool)

(declare-fun b!162881 () Bool)

(assert (= bs!15362 (and b!162881 b!162538)))

(declare-fun lambda!4481 () Int)

(assert (=> bs!15362 (= lambda!4481 lambda!4456)))

(declare-fun bs!15363 () Bool)

(assert (= bs!15363 (and b!162881 b!162350)))

(assert (=> bs!15363 (= lambda!4481 lambda!4448)))

(declare-fun bs!15364 () Bool)

(assert (= bs!15364 (and b!162881 b!162362)))

(assert (=> bs!15364 (not (= lambda!4481 lambda!4447))))

(declare-fun bs!15365 () Bool)

(assert (= bs!15365 (and b!162881 d!39888)))

(assert (=> bs!15365 (not (= lambda!4481 lambda!4464))))

(declare-fun bs!15366 () Bool)

(assert (= bs!15366 (and b!162881 d!39988)))

(assert (=> bs!15366 (= lambda!4481 lambda!4479)))

(declare-fun bs!15367 () Bool)

(assert (= bs!15367 (and b!162881 d!40002)))

(assert (=> bs!15367 (not (= lambda!4481 lambda!4480))))

(declare-fun bs!15368 () Bool)

(assert (= bs!15368 (and b!162881 b!162616)))

(assert (=> bs!15368 (= lambda!4481 lambda!4465)))

(declare-fun b!162891 () Bool)

(declare-fun e!98190 () Bool)

(assert (=> b!162891 (= e!98190 true)))

(declare-fun b!162890 () Bool)

(declare-fun e!98189 () Bool)

(assert (=> b!162890 (= e!98189 e!98190)))

(declare-fun b!162889 () Bool)

(declare-fun e!98188 () Bool)

(assert (=> b!162889 (= e!98188 e!98189)))

(assert (=> b!162881 e!98188))

(assert (= b!162890 b!162891))

(assert (= b!162889 b!162890))

(assert (= (and b!162881 ((_ is Cons!2805) rules!1920)) b!162889))

(assert (=> b!162891 (< (dynLambda!999 order!1425 (toValue!1152 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1000 order!1427 lambda!4481))))

(assert (=> b!162891 (< (dynLambda!1001 order!1429 (toChars!1011 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1000 order!1427 lambda!4481))))

(assert (=> b!162881 true))

(declare-fun bm!6902 () Bool)

(declare-fun call!6910 () BalanceConc!1640)

(declare-fun call!6909 () BalanceConc!1640)

(assert (=> bm!6902 (= call!6910 call!6909)))

(declare-fun b!162878 () Bool)

(declare-fun e!98186 () Bool)

(declare-fun lt!49516 () Option!277)

(declare-fun call!6911 () Token!738)

(assert (=> b!162878 (= e!98186 (not (= (_1!1556 (v!13693 lt!49516)) call!6911)))))

(declare-fun c!32516 () Bool)

(declare-fun c!32515 () Bool)

(declare-fun call!6907 () Token!738)

(declare-fun bm!6903 () Bool)

(assert (=> bm!6903 (= call!6909 (charsOf!152 (ite c!32515 call!6911 (ite c!32516 separatorToken!170 call!6907))))))

(declare-fun b!162879 () Bool)

(declare-fun e!98187 () BalanceConc!1640)

(declare-fun call!6908 () BalanceConc!1640)

(assert (=> b!162879 (= e!98187 call!6908)))

(declare-fun b!162880 () Bool)

(declare-fun e!98182 () BalanceConc!1640)

(assert (=> b!162880 (= e!98182 (BalanceConc!1641 Empty!816))))

(assert (=> b!162881 (= e!98182 e!98187)))

(declare-fun lt!49527 () List!2816)

(assert (=> b!162881 (= lt!49527 (list!1011 lt!49245))))

(declare-fun lt!49528 () Unit!2310)

(assert (=> b!162881 (= lt!49528 (lemmaDropApply!120 lt!49527 0))))

(assert (=> b!162881 (= (head!594 (drop!133 lt!49527 0)) (apply!389 lt!49527 0))))

(declare-fun lt!49515 () Unit!2310)

(assert (=> b!162881 (= lt!49515 lt!49528)))

(declare-fun lt!49520 () List!2816)

(assert (=> b!162881 (= lt!49520 (list!1011 lt!49245))))

(declare-fun lt!49521 () Unit!2310)

(assert (=> b!162881 (= lt!49521 (lemmaDropTail!112 lt!49520 0))))

(assert (=> b!162881 (= (tail!334 (drop!133 lt!49520 0)) (drop!133 lt!49520 (+ 0 1)))))

(declare-fun lt!49526 () Unit!2310)

(assert (=> b!162881 (= lt!49526 lt!49521)))

(declare-fun lt!49524 () Unit!2310)

(assert (=> b!162881 (= lt!49524 (forallContained!64 (list!1011 lt!49245) lambda!4481 (apply!390 lt!49245 0)))))

(declare-fun lt!49517 () BalanceConc!1640)

(assert (=> b!162881 (= lt!49517 (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 lt!49245 separatorToken!170 (+ 0 1)))))

(assert (=> b!162881 (= lt!49516 (maxPrefixZipperSequence!80 thiss!17480 rules!1920 (++!628 (charsOf!152 (apply!390 lt!49245 0)) lt!49517)))))

(declare-fun res!73881 () Bool)

(assert (=> b!162881 (= res!73881 ((_ is Some!276) lt!49516))))

(declare-fun e!98184 () Bool)

(assert (=> b!162881 (=> (not res!73881) (not e!98184))))

(assert (=> b!162881 (= c!32515 e!98184)))

(declare-fun b!162882 () Bool)

(assert (=> b!162882 (= c!32516 e!98186)))

(declare-fun res!73880 () Bool)

(assert (=> b!162882 (=> (not res!73880) (not e!98186))))

(assert (=> b!162882 (= res!73880 ((_ is Some!276) lt!49516))))

(declare-fun e!98181 () BalanceConc!1640)

(assert (=> b!162882 (= e!98187 e!98181)))

(declare-fun b!162883 () Bool)

(assert (=> b!162883 (= e!98184 (= (_1!1556 (v!13693 lt!49516)) (apply!390 lt!49245 0)))))

(declare-fun b!162884 () Bool)

(declare-fun e!98183 () BalanceConc!1640)

(assert (=> b!162884 (= e!98183 (charsOf!152 call!6907))))

(declare-fun b!162885 () Bool)

(assert (=> b!162885 (= e!98181 (++!628 call!6908 lt!49517))))

(declare-fun b!162886 () Bool)

(assert (=> b!162886 (= e!98181 (BalanceConc!1641 Empty!816))))

(assert (=> b!162886 (= (print!114 thiss!17480 (singletonSeq!49 call!6907)) (printTailRec!77 thiss!17480 (singletonSeq!49 call!6907) 0 (BalanceConc!1641 Empty!816)))))

(declare-fun lt!49519 () Unit!2310)

(declare-fun Unit!2324 () Unit!2310)

(assert (=> b!162886 (= lt!49519 Unit!2324)))

(declare-fun lt!49525 () Unit!2310)

(assert (=> b!162886 (= lt!49525 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!28 thiss!17480 rules!1920 (list!1007 call!6910) (list!1007 lt!49517)))))

(assert (=> b!162886 false))

(declare-fun lt!49522 () Unit!2310)

(declare-fun Unit!2325 () Unit!2310)

(assert (=> b!162886 (= lt!49522 Unit!2325)))

(declare-fun b!162887 () Bool)

(declare-fun e!98185 () Bool)

(assert (=> b!162887 (= e!98185 (<= 0 (size!2348 lt!49245)))))

(declare-fun b!162888 () Bool)

(assert (=> b!162888 (= e!98183 call!6909)))

(declare-fun bm!6904 () Bool)

(assert (=> bm!6904 (= call!6907 call!6911)))

(declare-fun lt!49518 () BalanceConc!1640)

(assert (=> d!40002 (= (list!1007 lt!49518) (printWithSeparatorTokenWhenNeededList!76 thiss!17480 rules!1920 (dropList!80 lt!49245 0) separatorToken!170))))

(assert (=> d!40002 (= lt!49518 e!98182)))

(declare-fun c!32517 () Bool)

(assert (=> d!40002 (= c!32517 (>= 0 (size!2348 lt!49245)))))

(declare-fun lt!49523 () Unit!2310)

(assert (=> d!40002 (= lt!49523 (lemmaContentSubsetPreservesForall!24 (list!1011 lt!49245) (dropList!80 lt!49245 0) lambda!4480))))

(assert (=> d!40002 e!98185))

(declare-fun res!73882 () Bool)

(assert (=> d!40002 (=> (not res!73882) (not e!98185))))

(assert (=> d!40002 (= res!73882 (>= 0 0))))

(assert (=> d!40002 (= (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 lt!49245 separatorToken!170 0) lt!49518)))

(declare-fun bm!6905 () Bool)

(assert (=> bm!6905 (= call!6911 (apply!390 lt!49245 0))))

(declare-fun bm!6906 () Bool)

(declare-fun c!32514 () Bool)

(assert (=> bm!6906 (= c!32514 c!32515)))

(assert (=> bm!6906 (= call!6908 (++!628 e!98183 (ite c!32515 lt!49517 call!6910)))))

(assert (= (and d!40002 res!73882) b!162887))

(assert (= (and d!40002 c!32517) b!162880))

(assert (= (and d!40002 (not c!32517)) b!162881))

(assert (= (and b!162881 res!73881) b!162883))

(assert (= (and b!162881 c!32515) b!162879))

(assert (= (and b!162881 (not c!32515)) b!162882))

(assert (= (and b!162882 res!73880) b!162878))

(assert (= (and b!162882 c!32516) b!162885))

(assert (= (and b!162882 (not c!32516)) b!162886))

(assert (= (or b!162885 b!162886) bm!6904))

(assert (= (or b!162885 b!162886) bm!6902))

(assert (= (or b!162879 bm!6904 b!162878) bm!6905))

(assert (= (or b!162879 bm!6902) bm!6903))

(assert (= (or b!162879 b!162885) bm!6906))

(assert (= (and bm!6906 c!32514) b!162888))

(assert (= (and bm!6906 (not c!32514)) b!162884))

(declare-fun m!153143 () Bool)

(assert (=> b!162881 m!153143))

(declare-fun m!153145 () Bool)

(assert (=> b!162881 m!153145))

(assert (=> b!162881 m!153103))

(declare-fun m!153147 () Bool)

(assert (=> b!162881 m!153147))

(declare-fun m!153149 () Bool)

(assert (=> b!162881 m!153149))

(declare-fun m!153151 () Bool)

(assert (=> b!162881 m!153151))

(declare-fun m!153153 () Bool)

(assert (=> b!162881 m!153153))

(declare-fun m!153155 () Bool)

(assert (=> b!162881 m!153155))

(declare-fun m!153157 () Bool)

(assert (=> b!162881 m!153157))

(assert (=> b!162881 m!153103))

(declare-fun m!153159 () Bool)

(assert (=> b!162881 m!153159))

(declare-fun m!153161 () Bool)

(assert (=> b!162881 m!153161))

(assert (=> b!162881 m!153159))

(assert (=> b!162881 m!153143))

(declare-fun m!153163 () Bool)

(assert (=> b!162881 m!153163))

(declare-fun m!153165 () Bool)

(assert (=> b!162881 m!153165))

(assert (=> b!162881 m!153147))

(assert (=> b!162881 m!153153))

(declare-fun m!153167 () Bool)

(assert (=> b!162881 m!153167))

(assert (=> b!162881 m!153159))

(assert (=> b!162881 m!153151))

(declare-fun m!153169 () Bool)

(assert (=> b!162881 m!153169))

(declare-fun m!153171 () Bool)

(assert (=> b!162884 m!153171))

(declare-fun m!153173 () Bool)

(assert (=> bm!6906 m!153173))

(assert (=> b!162883 m!153159))

(declare-fun m!153175 () Bool)

(assert (=> d!40002 m!153175))

(declare-fun m!153177 () Bool)

(assert (=> d!40002 m!153177))

(declare-fun m!153179 () Bool)

(assert (=> d!40002 m!153179))

(assert (=> d!40002 m!153103))

(assert (=> d!40002 m!153175))

(declare-fun m!153181 () Bool)

(assert (=> d!40002 m!153181))

(assert (=> d!40002 m!153175))

(declare-fun m!153183 () Bool)

(assert (=> d!40002 m!153183))

(assert (=> d!40002 m!153103))

(declare-fun m!153185 () Bool)

(assert (=> b!162886 m!153185))

(declare-fun m!153187 () Bool)

(assert (=> b!162886 m!153187))

(declare-fun m!153189 () Bool)

(assert (=> b!162886 m!153189))

(assert (=> b!162886 m!153185))

(declare-fun m!153191 () Bool)

(assert (=> b!162886 m!153191))

(declare-fun m!153193 () Bool)

(assert (=> b!162886 m!153193))

(assert (=> b!162886 m!153191))

(assert (=> b!162886 m!153187))

(assert (=> b!162886 m!153191))

(declare-fun m!153195 () Bool)

(assert (=> b!162886 m!153195))

(assert (=> b!162887 m!153177))

(declare-fun m!153197 () Bool)

(assert (=> b!162885 m!153197))

(assert (=> bm!6905 m!153159))

(declare-fun m!153199 () Bool)

(assert (=> bm!6903 m!153199))

(assert (=> b!162367 d!40002))

(declare-fun bs!15369 () Bool)

(declare-fun b!162895 () Bool)

(assert (= bs!15369 (and b!162895 b!162538)))

(declare-fun lambda!4482 () Int)

(assert (=> bs!15369 (= lambda!4482 lambda!4456)))

(declare-fun bs!15370 () Bool)

(assert (= bs!15370 (and b!162895 b!162881)))

(assert (=> bs!15370 (= lambda!4482 lambda!4481)))

(declare-fun bs!15371 () Bool)

(assert (= bs!15371 (and b!162895 b!162350)))

(assert (=> bs!15371 (= lambda!4482 lambda!4448)))

(declare-fun bs!15372 () Bool)

(assert (= bs!15372 (and b!162895 b!162362)))

(assert (=> bs!15372 (not (= lambda!4482 lambda!4447))))

(declare-fun bs!15373 () Bool)

(assert (= bs!15373 (and b!162895 d!39888)))

(assert (=> bs!15373 (not (= lambda!4482 lambda!4464))))

(declare-fun bs!15374 () Bool)

(assert (= bs!15374 (and b!162895 d!39988)))

(assert (=> bs!15374 (= lambda!4482 lambda!4479)))

(declare-fun bs!15375 () Bool)

(assert (= bs!15375 (and b!162895 d!40002)))

(assert (=> bs!15375 (not (= lambda!4482 lambda!4480))))

(declare-fun bs!15376 () Bool)

(assert (= bs!15376 (and b!162895 b!162616)))

(assert (=> bs!15376 (= lambda!4482 lambda!4465)))

(declare-fun b!162902 () Bool)

(declare-fun e!98197 () Bool)

(assert (=> b!162902 (= e!98197 true)))

(declare-fun b!162901 () Bool)

(declare-fun e!98196 () Bool)

(assert (=> b!162901 (= e!98196 e!98197)))

(declare-fun b!162900 () Bool)

(declare-fun e!98195 () Bool)

(assert (=> b!162900 (= e!98195 e!98196)))

(assert (=> b!162895 e!98195))

(assert (= b!162901 b!162902))

(assert (= b!162900 b!162901))

(assert (= (and b!162895 ((_ is Cons!2805) rules!1920)) b!162900))

(assert (=> b!162902 (< (dynLambda!999 order!1425 (toValue!1152 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1000 order!1427 lambda!4482))))

(assert (=> b!162902 (< (dynLambda!1001 order!1429 (toChars!1011 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1000 order!1427 lambda!4482))))

(assert (=> b!162895 true))

(declare-fun b!162892 () Bool)

(declare-fun e!98191 () BalanceConc!1640)

(assert (=> b!162892 (= e!98191 (charsOf!152 separatorToken!170))))

(declare-fun b!162893 () Bool)

(declare-fun e!98192 () List!2814)

(assert (=> b!162893 (= e!98192 Nil!2804)))

(declare-fun b!162894 () Bool)

(declare-fun c!32520 () Bool)

(declare-fun lt!49530 () Option!276)

(assert (=> b!162894 (= c!32520 (and ((_ is Some!275) lt!49530) (not (= (_1!1555 (v!13692 lt!49530)) (h!8203 tokens!465)))))))

(declare-fun e!98194 () List!2814)

(declare-fun e!98193 () List!2814)

(assert (=> b!162894 (= e!98194 e!98193)))

(declare-fun bm!6908 () Bool)

(declare-fun call!6913 () BalanceConc!1640)

(assert (=> bm!6908 (= call!6913 (charsOf!152 (h!8203 tokens!465)))))

(assert (=> b!162895 (= e!98192 e!98194)))

(declare-fun lt!49532 () Unit!2310)

(assert (=> b!162895 (= lt!49532 (forallContained!64 tokens!465 lambda!4482 (h!8203 tokens!465)))))

(declare-fun lt!49534 () List!2814)

(assert (=> b!162895 (= lt!49534 (printWithSeparatorTokenWhenNeededList!76 thiss!17480 rules!1920 (t!26086 tokens!465) separatorToken!170))))

(assert (=> b!162895 (= lt!49530 (maxPrefix!121 thiss!17480 rules!1920 (++!626 (list!1007 (charsOf!152 (h!8203 tokens!465))) lt!49534)))))

(declare-fun c!32519 () Bool)

(assert (=> b!162895 (= c!32519 (and ((_ is Some!275) lt!49530) (= (_1!1555 (v!13692 lt!49530)) (h!8203 tokens!465))))))

(declare-fun b!162896 () Bool)

(declare-fun call!6915 () BalanceConc!1640)

(assert (=> b!162896 (= e!98191 call!6915)))

(declare-fun bm!6909 () Bool)

(assert (=> bm!6909 (= call!6915 call!6913)))

(declare-fun call!6916 () List!2814)

(declare-fun bm!6910 () Bool)

(declare-fun call!6912 () List!2814)

(declare-fun call!6914 () List!2814)

(assert (=> bm!6910 (= call!6914 (++!626 call!6912 (ite c!32519 lt!49534 call!6916)))))

(declare-fun bm!6911 () Bool)

(assert (=> bm!6911 (= call!6916 (list!1007 e!98191))))

(declare-fun c!32521 () Bool)

(assert (=> bm!6911 (= c!32521 c!32520)))

(declare-fun b!162897 () Bool)

(assert (=> b!162897 (= e!98193 (++!626 call!6914 lt!49534))))

(declare-fun b!162898 () Bool)

(assert (=> b!162898 (= e!98194 call!6914)))

(declare-fun b!162899 () Bool)

(assert (=> b!162899 (= e!98193 Nil!2804)))

(assert (=> b!162899 (= (print!114 thiss!17480 (singletonSeq!49 (h!8203 tokens!465))) (printTailRec!77 thiss!17480 (singletonSeq!49 (h!8203 tokens!465)) 0 (BalanceConc!1641 Empty!816)))))

(declare-fun lt!49531 () Unit!2310)

(declare-fun Unit!2326 () Unit!2310)

(assert (=> b!162899 (= lt!49531 Unit!2326)))

(declare-fun lt!49529 () Unit!2310)

(assert (=> b!162899 (= lt!49529 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!28 thiss!17480 rules!1920 call!6916 lt!49534))))

(assert (=> b!162899 false))

(declare-fun lt!49533 () Unit!2310)

(declare-fun Unit!2327 () Unit!2310)

(assert (=> b!162899 (= lt!49533 Unit!2327)))

(declare-fun bm!6907 () Bool)

(assert (=> bm!6907 (= call!6912 (list!1007 (ite c!32519 call!6913 call!6915)))))

(declare-fun d!40004 () Bool)

(declare-fun c!32518 () Bool)

(assert (=> d!40004 (= c!32518 ((_ is Cons!2806) tokens!465))))

(assert (=> d!40004 (= (printWithSeparatorTokenWhenNeededList!76 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!98192)))

(assert (= (and d!40004 c!32518) b!162895))

(assert (= (and d!40004 (not c!32518)) b!162893))

(assert (= (and b!162895 c!32519) b!162898))

(assert (= (and b!162895 (not c!32519)) b!162894))

(assert (= (and b!162894 c!32520) b!162897))

(assert (= (and b!162894 (not c!32520)) b!162899))

(assert (= (or b!162897 b!162899) bm!6909))

(assert (= (or b!162897 b!162899) bm!6911))

(assert (= (and bm!6911 c!32521) b!162892))

(assert (= (and bm!6911 (not c!32521)) b!162896))

(assert (= (or b!162898 bm!6909) bm!6908))

(assert (= (or b!162898 b!162897) bm!6907))

(assert (= (or b!162898 b!162897) bm!6910))

(assert (=> b!162899 m!152297))

(assert (=> b!162899 m!152297))

(assert (=> b!162899 m!152721))

(assert (=> b!162899 m!152297))

(declare-fun m!153201 () Bool)

(assert (=> b!162899 m!153201))

(declare-fun m!153203 () Bool)

(assert (=> b!162899 m!153203))

(assert (=> b!162895 m!152271))

(assert (=> b!162895 m!152287))

(declare-fun m!153205 () Bool)

(assert (=> b!162895 m!153205))

(assert (=> b!162895 m!153205))

(declare-fun m!153207 () Bool)

(assert (=> b!162895 m!153207))

(declare-fun m!153209 () Bool)

(assert (=> b!162895 m!153209))

(assert (=> b!162895 m!152285))

(assert (=> b!162895 m!152285))

(assert (=> b!162895 m!152287))

(assert (=> bm!6908 m!152285))

(declare-fun m!153211 () Bool)

(assert (=> bm!6910 m!153211))

(declare-fun m!153213 () Bool)

(assert (=> bm!6911 m!153213))

(declare-fun m!153215 () Bool)

(assert (=> bm!6907 m!153215))

(declare-fun m!153217 () Bool)

(assert (=> b!162897 m!153217))

(assert (=> b!162892 m!152273))

(assert (=> b!162367 d!40004))

(declare-fun d!40006 () Bool)

(assert (=> d!40006 (= (isEmpty!1136 rules!1920) ((_ is Nil!2805) rules!1920))))

(assert (=> b!162356 d!40006))

(declare-fun b!162905 () Bool)

(declare-fun e!98200 () Bool)

(assert (=> b!162905 (= e!98200 true)))

(declare-fun b!162904 () Bool)

(declare-fun e!98199 () Bool)

(assert (=> b!162904 (= e!98199 e!98200)))

(declare-fun b!162903 () Bool)

(declare-fun e!98198 () Bool)

(assert (=> b!162903 (= e!98198 e!98199)))

(assert (=> b!162384 e!98198))

(assert (= b!162904 b!162905))

(assert (= b!162903 b!162904))

(assert (= (and b!162384 ((_ is Cons!2805) (t!26085 rules!1920))) b!162903))

(assert (=> b!162905 (< (dynLambda!999 order!1425 (toValue!1152 (transformation!497 (h!8202 (t!26085 rules!1920))))) (dynLambda!1000 order!1427 lambda!4448))))

(assert (=> b!162905 (< (dynLambda!1001 order!1429 (toChars!1011 (transformation!497 (h!8202 (t!26085 rules!1920))))) (dynLambda!1000 order!1427 lambda!4448))))

(declare-fun e!98203 () Bool)

(assert (=> b!162365 (= tp!82280 e!98203)))

(declare-fun b!162916 () Bool)

(declare-fun tp_is_empty!1639 () Bool)

(assert (=> b!162916 (= e!98203 tp_is_empty!1639)))

(declare-fun b!162917 () Bool)

(declare-fun tp!82362 () Bool)

(declare-fun tp!82366 () Bool)

(assert (=> b!162917 (= e!98203 (and tp!82362 tp!82366))))

(declare-fun b!162918 () Bool)

(declare-fun tp!82363 () Bool)

(assert (=> b!162918 (= e!98203 tp!82363)))

(declare-fun b!162919 () Bool)

(declare-fun tp!82364 () Bool)

(declare-fun tp!82365 () Bool)

(assert (=> b!162919 (= e!98203 (and tp!82364 tp!82365))))

(assert (= (and b!162365 ((_ is ElementMatch!721) (regex!497 (rule!1004 (h!8203 tokens!465))))) b!162916))

(assert (= (and b!162365 ((_ is Concat!1241) (regex!497 (rule!1004 (h!8203 tokens!465))))) b!162917))

(assert (= (and b!162365 ((_ is Star!721) (regex!497 (rule!1004 (h!8203 tokens!465))))) b!162918))

(assert (= (and b!162365 ((_ is Union!721) (regex!497 (rule!1004 (h!8203 tokens!465))))) b!162919))

(declare-fun b!162933 () Bool)

(declare-fun b_free!6205 () Bool)

(declare-fun b_next!6205 () Bool)

(assert (=> b!162933 (= b_free!6205 (not b_next!6205))))

(declare-fun tp!82381 () Bool)

(declare-fun b_and!10237 () Bool)

(assert (=> b!162933 (= tp!82381 b_and!10237)))

(declare-fun b_free!6207 () Bool)

(declare-fun b_next!6207 () Bool)

(assert (=> b!162933 (= b_free!6207 (not b_next!6207))))

(declare-fun t!26145 () Bool)

(declare-fun tb!5997 () Bool)

(assert (=> (and b!162933 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465))))) t!26145) tb!5997))

(declare-fun result!8608 () Bool)

(assert (= result!8608 result!8568))

(assert (=> b!162423 t!26145))

(declare-fun tb!5999 () Bool)

(declare-fun t!26147 () Bool)

(assert (=> (and b!162933 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))) (toChars!1011 (transformation!497 (rule!1004 separatorToken!170)))) t!26147) tb!5999))

(declare-fun result!8610 () Bool)

(assert (= result!8610 result!8582))

(assert (=> d!39892 t!26147))

(assert (=> d!39900 t!26145))

(assert (=> b!162817 t!26147))

(declare-fun tp!82377 () Bool)

(declare-fun b_and!10239 () Bool)

(assert (=> b!162933 (= tp!82377 (and (=> t!26145 result!8608) (=> t!26147 result!8610) b_and!10239))))

(declare-fun e!98220 () Bool)

(assert (=> b!162933 (= e!98220 (and tp!82381 tp!82377))))

(declare-fun e!98221 () Bool)

(declare-fun b!162930 () Bool)

(declare-fun e!98218 () Bool)

(declare-fun tp!82378 () Bool)

(assert (=> b!162930 (= e!98221 (and (inv!3621 (h!8203 (t!26086 tokens!465))) e!98218 tp!82378))))

(declare-fun tp!82379 () Bool)

(declare-fun e!98219 () Bool)

(declare-fun b!162932 () Bool)

(assert (=> b!162932 (= e!98219 (and tp!82379 (inv!3617 (tag!675 (rule!1004 (h!8203 (t!26086 tokens!465))))) (inv!3620 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))) e!98220))))

(declare-fun b!162931 () Bool)

(declare-fun tp!82380 () Bool)

(assert (=> b!162931 (= e!98218 (and (inv!21 (value!18480 (h!8203 (t!26086 tokens!465)))) e!98219 tp!82380))))

(assert (=> b!162364 (= tp!82284 e!98221)))

(assert (= b!162932 b!162933))

(assert (= b!162931 b!162932))

(assert (= b!162930 b!162931))

(assert (= (and b!162364 ((_ is Cons!2806) (t!26086 tokens!465))) b!162930))

(declare-fun m!153219 () Bool)

(assert (=> b!162930 m!153219))

(declare-fun m!153221 () Bool)

(assert (=> b!162932 m!153221))

(declare-fun m!153223 () Bool)

(assert (=> b!162932 m!153223))

(declare-fun m!153225 () Bool)

(assert (=> b!162931 m!153225))

(declare-fun e!98222 () Bool)

(assert (=> b!162352 (= tp!82286 e!98222)))

(declare-fun b!162934 () Bool)

(assert (=> b!162934 (= e!98222 tp_is_empty!1639)))

(declare-fun b!162935 () Bool)

(declare-fun tp!82382 () Bool)

(declare-fun tp!82386 () Bool)

(assert (=> b!162935 (= e!98222 (and tp!82382 tp!82386))))

(declare-fun b!162936 () Bool)

(declare-fun tp!82383 () Bool)

(assert (=> b!162936 (= e!98222 tp!82383)))

(declare-fun b!162937 () Bool)

(declare-fun tp!82384 () Bool)

(declare-fun tp!82385 () Bool)

(assert (=> b!162937 (= e!98222 (and tp!82384 tp!82385))))

(assert (= (and b!162352 ((_ is ElementMatch!721) (regex!497 (h!8202 rules!1920)))) b!162934))

(assert (= (and b!162352 ((_ is Concat!1241) (regex!497 (h!8202 rules!1920)))) b!162935))

(assert (= (and b!162352 ((_ is Star!721) (regex!497 (h!8202 rules!1920)))) b!162936))

(assert (= (and b!162352 ((_ is Union!721) (regex!497 (h!8202 rules!1920)))) b!162937))

(declare-fun e!98223 () Bool)

(assert (=> b!162361 (= tp!82279 e!98223)))

(declare-fun b!162938 () Bool)

(assert (=> b!162938 (= e!98223 tp_is_empty!1639)))

(declare-fun b!162939 () Bool)

(declare-fun tp!82387 () Bool)

(declare-fun tp!82391 () Bool)

(assert (=> b!162939 (= e!98223 (and tp!82387 tp!82391))))

(declare-fun b!162940 () Bool)

(declare-fun tp!82388 () Bool)

(assert (=> b!162940 (= e!98223 tp!82388)))

(declare-fun b!162941 () Bool)

(declare-fun tp!82389 () Bool)

(declare-fun tp!82390 () Bool)

(assert (=> b!162941 (= e!98223 (and tp!82389 tp!82390))))

(assert (= (and b!162361 ((_ is ElementMatch!721) (regex!497 (rule!1004 separatorToken!170)))) b!162938))

(assert (= (and b!162361 ((_ is Concat!1241) (regex!497 (rule!1004 separatorToken!170)))) b!162939))

(assert (= (and b!162361 ((_ is Star!721) (regex!497 (rule!1004 separatorToken!170)))) b!162940))

(assert (= (and b!162361 ((_ is Union!721) (regex!497 (rule!1004 separatorToken!170)))) b!162941))

(declare-fun b!162952 () Bool)

(declare-fun b_free!6209 () Bool)

(declare-fun b_next!6209 () Bool)

(assert (=> b!162952 (= b_free!6209 (not b_next!6209))))

(declare-fun tp!82402 () Bool)

(declare-fun b_and!10241 () Bool)

(assert (=> b!162952 (= tp!82402 b_and!10241)))

(declare-fun b_free!6211 () Bool)

(declare-fun b_next!6211 () Bool)

(assert (=> b!162952 (= b_free!6211 (not b_next!6211))))

(declare-fun tb!6001 () Bool)

(declare-fun t!26149 () Bool)

(assert (=> (and b!162952 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 rules!1920)))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465))))) t!26149) tb!6001))

(declare-fun result!8614 () Bool)

(assert (= result!8614 result!8568))

(assert (=> b!162423 t!26149))

(declare-fun t!26151 () Bool)

(declare-fun tb!6003 () Bool)

(assert (=> (and b!162952 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 rules!1920)))) (toChars!1011 (transformation!497 (rule!1004 separatorToken!170)))) t!26151) tb!6003))

(declare-fun result!8616 () Bool)

(assert (= result!8616 result!8582))

(assert (=> d!39892 t!26151))

(assert (=> d!39900 t!26149))

(assert (=> b!162817 t!26151))

(declare-fun tp!82403 () Bool)

(declare-fun b_and!10243 () Bool)

(assert (=> b!162952 (= tp!82403 (and (=> t!26149 result!8614) (=> t!26151 result!8616) b_and!10243))))

(declare-fun e!98232 () Bool)

(assert (=> b!162952 (= e!98232 (and tp!82402 tp!82403))))

(declare-fun e!98234 () Bool)

(declare-fun tp!82400 () Bool)

(declare-fun b!162951 () Bool)

(assert (=> b!162951 (= e!98234 (and tp!82400 (inv!3617 (tag!675 (h!8202 (t!26085 rules!1920)))) (inv!3620 (transformation!497 (h!8202 (t!26085 rules!1920)))) e!98232))))

(declare-fun b!162950 () Bool)

(declare-fun e!98233 () Bool)

(declare-fun tp!82401 () Bool)

(assert (=> b!162950 (= e!98233 (and e!98234 tp!82401))))

(assert (=> b!162370 (= tp!82287 e!98233)))

(assert (= b!162951 b!162952))

(assert (= b!162950 b!162951))

(assert (= (and b!162370 ((_ is Cons!2805) (t!26085 rules!1920))) b!162950))

(declare-fun m!153227 () Bool)

(assert (=> b!162951 m!153227))

(declare-fun m!153229 () Bool)

(assert (=> b!162951 m!153229))

(declare-fun b!162957 () Bool)

(declare-fun e!98238 () Bool)

(declare-fun tp!82406 () Bool)

(assert (=> b!162957 (= e!98238 (and tp_is_empty!1639 tp!82406))))

(assert (=> b!162359 (= tp!82282 e!98238)))

(assert (= (and b!162359 ((_ is Cons!2804) (originalCharacters!540 separatorToken!170))) b!162957))

(declare-fun b!162958 () Bool)

(declare-fun e!98239 () Bool)

(declare-fun tp!82407 () Bool)

(assert (=> b!162958 (= e!98239 (and tp_is_empty!1639 tp!82407))))

(assert (=> b!162357 (= tp!82275 e!98239)))

(assert (= (and b!162357 ((_ is Cons!2804) (originalCharacters!540 (h!8203 tokens!465)))) b!162958))

(declare-fun b_lambda!3431 () Bool)

(assert (= b_lambda!3407 (or (and b!162952 b_free!6211 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 rules!1920)))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))))) (and b!162354 b_free!6191 (= (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))))) (and b!162363 b_free!6187 (= (toChars!1011 (transformation!497 (h!8202 rules!1920))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))))) (and b!162366 b_free!6195) (and b!162933 b_free!6207 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))))) b_lambda!3431)))

(declare-fun b_lambda!3433 () Bool)

(assert (= b_lambda!3405 (or (and b!162933 b_free!6207 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))) (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))))) (and b!162366 b_free!6195 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))))) (and b!162354 b_free!6191) (and b!162952 b_free!6211 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 rules!1920)))) (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))))) (and b!162363 b_free!6187 (= (toChars!1011 (transformation!497 (h!8202 rules!1920))) (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))))) b_lambda!3433)))

(declare-fun b_lambda!3435 () Bool)

(assert (= b_lambda!3409 (or b!162362 b_lambda!3435)))

(declare-fun bs!15377 () Bool)

(declare-fun d!40008 () Bool)

(assert (= bs!15377 (and d!40008 b!162362)))

(assert (=> bs!15377 (= (dynLambda!1005 lambda!4447 (h!8203 tokens!465)) (not (isSeparator!497 (rule!1004 (h!8203 tokens!465)))))))

(assert (=> b!162687 d!40008))

(declare-fun b_lambda!3437 () Bool)

(assert (= b_lambda!3427 (or (and b!162933 b_free!6207 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))) (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))))) (and b!162366 b_free!6195 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))))) (and b!162354 b_free!6191) (and b!162952 b_free!6211 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 rules!1920)))) (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))))) (and b!162363 b_free!6187 (= (toChars!1011 (transformation!497 (h!8202 rules!1920))) (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))))) b_lambda!3437)))

(declare-fun b_lambda!3439 () Bool)

(assert (= b_lambda!3397 (or (and b!162952 b_free!6211 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 rules!1920)))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))))) (and b!162354 b_free!6191 (= (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))))) (and b!162363 b_free!6187 (= (toChars!1011 (transformation!497 (h!8202 rules!1920))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))))) (and b!162366 b_free!6195) (and b!162933 b_free!6207 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))))) b_lambda!3439)))

(declare-fun b_lambda!3441 () Bool)

(assert (= b_lambda!3429 (or b!162350 b_lambda!3441)))

(declare-fun bs!15378 () Bool)

(declare-fun d!40010 () Bool)

(assert (= bs!15378 (and d!40010 b!162350)))

(assert (=> bs!15378 (= (dynLambda!1005 lambda!4448 (h!8203 tokens!465)) (rulesProduceIndividualToken!132 thiss!17480 rules!1920 (h!8203 tokens!465)))))

(assert (=> bs!15378 m!152339))

(assert (=> b!162819 d!40010))

(check-sat (not b_next!6205) (not b!162884) (not d!39892) (not d!39974) (not bm!6875) (not b!162822) (not d!39910) (not b!162423) (not b!162867) (not d!40000) (not b!162940) (not b!162848) (not bm!6843) (not b!162897) (not bm!6846) (not d!39900) (not b!162931) (not b!162903) (not b!162556) (not b!162643) (not b!162885) (not b!162637) (not b!162900) (not d!39838) (not bm!6906) (not d!39996) (not b!162620) (not b!162889) (not d!39976) (not b!162881) (not b_next!6191) (not d!39966) (not b!162624) (not b!162841) (not d!39912) (not b!162899) (not b!162634) (not b!162876) b_and!10177 (not b!162616) (not d!39842) (not b!162811) (not b!162818) (not b!162919) (not d!39904) (not b_next!6193) (not d!39972) (not b!162618) (not d!39902) (not b!162935) b_and!10239 (not b!162542) (not d!39886) (not b!162862) (not b!162682) (not b_lambda!3441) (not b!162404) (not b!162918) (not b!162951) (not b!162627) (not d!39968) (not d!39830) (not b!162619) (not d!39888) (not b!162817) (not b_next!6187) (not b!162936) (not b!162434) (not d!39920) (not bm!6908) (not d!39962) (not b_lambda!3439) (not b!162680) (not d!39984) (not d!39992) (not d!39988) (not bm!6907) (not d!39832) (not b!162642) (not b!162950) (not d!39994) (not b_lambda!3433) (not b!162535) (not b!162886) b_and!10237 (not b!162629) b_and!10173 (not bm!6911) (not b!162836) (not b_lambda!3435) (not b!162622) (not b!162866) (not b_next!6195) (not b!162873) (not b!162681) b_and!10235 (not b!162917) (not b!162883) b_and!10169 (not b!162814) (not d!39978) (not b!162424) tp_is_empty!1639 (not b!162957) (not b!162833) (not tb!5983) (not bm!6905) (not d!39990) (not b!162815) (not d!39918) (not b!162958) (not b!162831) (not b!162871) (not b!162932) (not bm!6910) (not b!162874) (not b!162939) (not b!162820) (not b!162543) (not d!39894) (not b!162621) (not b!162816) (not b_next!6207) (not b!162688) (not d!39840) (not b_next!6189) (not b!162538) (not b!162540) (not b!162937) (not b_next!6209) (not b_lambda!3431) (not bs!15378) (not d!39896) (not b_lambda!3437) (not b!162870) (not tb!5971) (not b!162630) (not b!162895) (not b_next!6185) (not b!162887) b_and!10233 (not d!40002) (not b!162930) (not d!39898) (not bm!6903) (not b!162813) (not b!162638) (not bm!6873) (not b!162892) (not b!162872) (not b!162408) (not b!162941) (not b!162555) b_and!10241 (not bm!6876) b_and!10231 (not d!39906) (not b!162859) (not bm!6845) (not b!162405) (not b!162823) (not b!162860) (not bm!6842) (not b_next!6211) b_and!10243 (not b!162633) (not d!39980))
(check-sat (not b_next!6191) b_and!10177 (not b_next!6193) b_and!10239 (not b_next!6187) (not b_next!6195) (not b_next!6205) (not b_next!6209) (not b_next!6185) b_and!10233 b_and!10237 b_and!10173 b_and!10235 b_and!10169 (not b_next!6207) (not b_next!6189) b_and!10241 b_and!10231 (not b_next!6211) b_and!10243)
(get-model)

(declare-fun d!40076 () Bool)

(declare-fun e!98323 () Bool)

(assert (=> d!40076 e!98323))

(declare-fun res!73940 () Bool)

(assert (=> d!40076 (=> (not res!73940) (not e!98323))))

(declare-fun lt!49592 () List!2814)

(assert (=> d!40076 (= res!73940 (= (content!388 lt!49592) ((_ map or) (content!388 (t!26084 lt!49241)) (content!388 lt!49246))))))

(declare-fun e!98322 () List!2814)

(assert (=> d!40076 (= lt!49592 e!98322)))

(declare-fun c!32571 () Bool)

(assert (=> d!40076 (= c!32571 ((_ is Nil!2804) (t!26084 lt!49241)))))

(assert (=> d!40076 (= (++!626 (t!26084 lt!49241) lt!49246) lt!49592)))

(declare-fun b!163101 () Bool)

(declare-fun res!73939 () Bool)

(assert (=> b!163101 (=> (not res!73939) (not e!98323))))

(assert (=> b!163101 (= res!73939 (= (size!2347 lt!49592) (+ (size!2347 (t!26084 lt!49241)) (size!2347 lt!49246))))))

(declare-fun b!163100 () Bool)

(assert (=> b!163100 (= e!98322 (Cons!2804 (h!8201 (t!26084 lt!49241)) (++!626 (t!26084 (t!26084 lt!49241)) lt!49246)))))

(declare-fun b!163099 () Bool)

(assert (=> b!163099 (= e!98322 lt!49246)))

(declare-fun b!163102 () Bool)

(assert (=> b!163102 (= e!98323 (or (not (= lt!49246 Nil!2804)) (= lt!49592 (t!26084 lt!49241))))))

(assert (= (and d!40076 c!32571) b!163099))

(assert (= (and d!40076 (not c!32571)) b!163100))

(assert (= (and d!40076 res!73940) b!163101))

(assert (= (and b!163101 res!73939) b!163102))

(declare-fun m!153431 () Bool)

(assert (=> d!40076 m!153431))

(declare-fun m!153433 () Bool)

(assert (=> d!40076 m!153433))

(assert (=> d!40076 m!152689))

(declare-fun m!153435 () Bool)

(assert (=> b!163101 m!153435))

(declare-fun m!153437 () Bool)

(assert (=> b!163101 m!153437))

(assert (=> b!163101 m!152693))

(declare-fun m!153439 () Bool)

(assert (=> b!163100 m!153439))

(assert (=> b!162633 d!40076))

(declare-fun d!40078 () Bool)

(declare-fun e!98325 () Bool)

(assert (=> d!40078 e!98325))

(declare-fun res!73942 () Bool)

(assert (=> d!40078 (=> (not res!73942) (not e!98325))))

(declare-fun lt!49593 () List!2814)

(assert (=> d!40078 (= res!73942 (= (content!388 lt!49593) ((_ map or) (content!388 (t!26084 lt!49240)) (content!388 lt!49246))))))

(declare-fun e!98324 () List!2814)

(assert (=> d!40078 (= lt!49593 e!98324)))

(declare-fun c!32572 () Bool)

(assert (=> d!40078 (= c!32572 ((_ is Nil!2804) (t!26084 lt!49240)))))

(assert (=> d!40078 (= (++!626 (t!26084 lt!49240) lt!49246) lt!49593)))

(declare-fun b!163105 () Bool)

(declare-fun res!73941 () Bool)

(assert (=> b!163105 (=> (not res!73941) (not e!98325))))

(assert (=> b!163105 (= res!73941 (= (size!2347 lt!49593) (+ (size!2347 (t!26084 lt!49240)) (size!2347 lt!49246))))))

(declare-fun b!163104 () Bool)

(assert (=> b!163104 (= e!98324 (Cons!2804 (h!8201 (t!26084 lt!49240)) (++!626 (t!26084 (t!26084 lt!49240)) lt!49246)))))

(declare-fun b!163103 () Bool)

(assert (=> b!163103 (= e!98324 lt!49246)))

(declare-fun b!163106 () Bool)

(assert (=> b!163106 (= e!98325 (or (not (= lt!49246 Nil!2804)) (= lt!49593 (t!26084 lt!49240))))))

(assert (= (and d!40078 c!32572) b!163103))

(assert (= (and d!40078 (not c!32572)) b!163104))

(assert (= (and d!40078 res!73942) b!163105))

(assert (= (and b!163105 res!73941) b!163106))

(declare-fun m!153441 () Bool)

(assert (=> d!40078 m!153441))

(declare-fun m!153443 () Bool)

(assert (=> d!40078 m!153443))

(assert (=> d!40078 m!152689))

(declare-fun m!153445 () Bool)

(assert (=> b!163105 m!153445))

(declare-fun m!153447 () Bool)

(assert (=> b!163105 m!153447))

(assert (=> b!163105 m!152693))

(declare-fun m!153449 () Bool)

(assert (=> b!163104 m!153449))

(assert (=> b!162822 d!40078))

(assert (=> d!39840 d!39904))

(declare-fun d!40080 () Bool)

(declare-fun e!98327 () Bool)

(assert (=> d!40080 e!98327))

(declare-fun res!73944 () Bool)

(assert (=> d!40080 (=> (not res!73944) (not e!98327))))

(declare-fun lt!49594 () List!2814)

(assert (=> d!40080 (= res!73944 (= (content!388 lt!49594) ((_ map or) (content!388 lt!49240) (content!388 (++!626 lt!49241 lt!49246)))))))

(declare-fun e!98326 () List!2814)

(assert (=> d!40080 (= lt!49594 e!98326)))

(declare-fun c!32573 () Bool)

(assert (=> d!40080 (= c!32573 ((_ is Nil!2804) lt!49240))))

(assert (=> d!40080 (= (++!626 lt!49240 (++!626 lt!49241 lt!49246)) lt!49594)))

(declare-fun b!163109 () Bool)

(declare-fun res!73943 () Bool)

(assert (=> b!163109 (=> (not res!73943) (not e!98327))))

(assert (=> b!163109 (= res!73943 (= (size!2347 lt!49594) (+ (size!2347 lt!49240) (size!2347 (++!626 lt!49241 lt!49246)))))))

(declare-fun b!163108 () Bool)

(assert (=> b!163108 (= e!98326 (Cons!2804 (h!8201 lt!49240) (++!626 (t!26084 lt!49240) (++!626 lt!49241 lt!49246))))))

(declare-fun b!163107 () Bool)

(assert (=> b!163107 (= e!98326 (++!626 lt!49241 lt!49246))))

(declare-fun b!163110 () Bool)

(assert (=> b!163110 (= e!98327 (or (not (= (++!626 lt!49241 lt!49246) Nil!2804)) (= lt!49594 lt!49240)))))

(assert (= (and d!40080 c!32573) b!163107))

(assert (= (and d!40080 (not c!32573)) b!163108))

(assert (= (and d!40080 res!73944) b!163109))

(assert (= (and b!163109 res!73943) b!163110))

(declare-fun m!153451 () Bool)

(assert (=> d!40080 m!153451))

(assert (=> d!40080 m!152569))

(assert (=> d!40080 m!152281))

(declare-fun m!153453 () Bool)

(assert (=> d!40080 m!153453))

(declare-fun m!153455 () Bool)

(assert (=> b!163109 m!153455))

(assert (=> b!163109 m!152575))

(assert (=> b!163109 m!152281))

(declare-fun m!153457 () Bool)

(assert (=> b!163109 m!153457))

(assert (=> b!163108 m!152281))

(declare-fun m!153459 () Bool)

(assert (=> b!163108 m!153459))

(assert (=> d!39840 d!40080))

(assert (=> d!39840 d!39886))

(declare-fun d!40082 () Bool)

(assert (=> d!40082 (= (++!626 (++!626 lt!49240 lt!49241) lt!49246) (++!626 lt!49240 (++!626 lt!49241 lt!49246)))))

(assert (=> d!40082 true))

(declare-fun _$52!585 () Unit!2310)

(assert (=> d!40082 (= (choose!1796 lt!49240 lt!49241 lt!49246) _$52!585)))

(declare-fun bs!15386 () Bool)

(assert (= bs!15386 d!40082))

(assert (=> bs!15386 m!152277))

(assert (=> bs!15386 m!152277))

(assert (=> bs!15386 m!152279))

(assert (=> bs!15386 m!152281))

(assert (=> bs!15386 m!152281))

(assert (=> bs!15386 m!152409))

(assert (=> d!39840 d!40082))

(assert (=> d!39840 d!39896))

(declare-fun d!40084 () Bool)

(assert (=> d!40084 true))

(declare-fun order!1431 () Int)

(declare-fun lambda!4488 () Int)

(declare-fun dynLambda!1006 (Int Int) Int)

(assert (=> d!40084 (< (dynLambda!1001 order!1429 (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465))))) (dynLambda!1006 order!1431 lambda!4488))))

(assert (=> d!40084 true))

(assert (=> d!40084 (< (dynLambda!999 order!1425 (toValue!1152 (transformation!497 (rule!1004 (h!8203 tokens!465))))) (dynLambda!1006 order!1431 lambda!4488))))

(declare-fun Forall!131 (Int) Bool)

(assert (=> d!40084 (= (semiInverseModEq!171 (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (toValue!1152 (transformation!497 (rule!1004 (h!8203 tokens!465))))) (Forall!131 lambda!4488))))

(declare-fun bs!15387 () Bool)

(assert (= bs!15387 d!40084))

(declare-fun m!153461 () Bool)

(assert (=> bs!15387 m!153461))

(assert (=> d!39830 d!40084))

(declare-fun lt!49607 () Bool)

(declare-fun d!40086 () Bool)

(assert (=> d!40086 (= lt!49607 (isEmpty!1141 (list!1007 (_2!1551 (lex!183 thiss!17480 rules!1920 (print!114 thiss!17480 (singletonSeq!49 (h!8203 tokens!465))))))))))

(declare-fun isEmpty!1145 (Conc!816) Bool)

(assert (=> d!40086 (= lt!49607 (isEmpty!1145 (c!32407 (_2!1551 (lex!183 thiss!17480 rules!1920 (print!114 thiss!17480 (singletonSeq!49 (h!8203 tokens!465))))))))))

(assert (=> d!40086 (= (isEmpty!1142 (_2!1551 (lex!183 thiss!17480 rules!1920 (print!114 thiss!17480 (singletonSeq!49 (h!8203 tokens!465)))))) lt!49607)))

(declare-fun bs!15388 () Bool)

(assert (= bs!15388 d!40086))

(declare-fun m!153463 () Bool)

(assert (=> bs!15388 m!153463))

(assert (=> bs!15388 m!153463))

(declare-fun m!153465 () Bool)

(assert (=> bs!15388 m!153465))

(declare-fun m!153467 () Bool)

(assert (=> bs!15388 m!153467))

(assert (=> b!162682 d!40086))

(declare-fun e!98338 () Bool)

(declare-fun b!163142 () Bool)

(declare-fun lt!49613 () tuple2!2670)

(assert (=> b!163142 (= e!98338 (= (list!1007 (_2!1551 lt!49613)) (_2!1557 (lexList!105 thiss!17480 rules!1920 (list!1007 (print!114 thiss!17480 (singletonSeq!49 (h!8203 tokens!465))))))))))

(declare-fun d!40088 () Bool)

(assert (=> d!40088 e!98338))

(declare-fun res!73966 () Bool)

(assert (=> d!40088 (=> (not res!73966) (not e!98338))))

(declare-fun e!98337 () Bool)

(assert (=> d!40088 (= res!73966 e!98337)))

(declare-fun c!32577 () Bool)

(assert (=> d!40088 (= c!32577 (> (size!2348 (_1!1551 lt!49613)) 0))))

(assert (=> d!40088 (= lt!49613 (lexTailRecV2!92 thiss!17480 rules!1920 (print!114 thiss!17480 (singletonSeq!49 (h!8203 tokens!465))) (BalanceConc!1641 Empty!816) (print!114 thiss!17480 (singletonSeq!49 (h!8203 tokens!465))) (BalanceConc!1643 Empty!817)))))

(assert (=> d!40088 (= (lex!183 thiss!17480 rules!1920 (print!114 thiss!17480 (singletonSeq!49 (h!8203 tokens!465)))) lt!49613)))

(declare-fun b!163143 () Bool)

(assert (=> b!163143 (= e!98337 (= (_2!1551 lt!49613) (print!114 thiss!17480 (singletonSeq!49 (h!8203 tokens!465)))))))

(declare-fun b!163144 () Bool)

(declare-fun e!98339 () Bool)

(assert (=> b!163144 (= e!98337 e!98339)))

(declare-fun res!73968 () Bool)

(assert (=> b!163144 (= res!73968 (< (size!2349 (_2!1551 lt!49613)) (size!2349 (print!114 thiss!17480 (singletonSeq!49 (h!8203 tokens!465))))))))

(assert (=> b!163144 (=> (not res!73968) (not e!98339))))

(declare-fun b!163145 () Bool)

(assert (=> b!163145 (= e!98339 (not (isEmpty!1135 (_1!1551 lt!49613))))))

(declare-fun b!163146 () Bool)

(declare-fun res!73967 () Bool)

(assert (=> b!163146 (=> (not res!73967) (not e!98338))))

(assert (=> b!163146 (= res!73967 (= (list!1011 (_1!1551 lt!49613)) (_1!1557 (lexList!105 thiss!17480 rules!1920 (list!1007 (print!114 thiss!17480 (singletonSeq!49 (h!8203 tokens!465))))))))))

(assert (= (and d!40088 c!32577) b!163144))

(assert (= (and d!40088 (not c!32577)) b!163143))

(assert (= (and b!163144 res!73968) b!163145))

(assert (= (and d!40088 res!73966) b!163146))

(assert (= (and b!163146 res!73967) b!163142))

(declare-fun m!153469 () Bool)

(assert (=> b!163146 m!153469))

(assert (=> b!163146 m!152721))

(declare-fun m!153471 () Bool)

(assert (=> b!163146 m!153471))

(assert (=> b!163146 m!153471))

(declare-fun m!153473 () Bool)

(assert (=> b!163146 m!153473))

(declare-fun m!153475 () Bool)

(assert (=> b!163142 m!153475))

(assert (=> b!163142 m!152721))

(assert (=> b!163142 m!153471))

(assert (=> b!163142 m!153471))

(assert (=> b!163142 m!153473))

(declare-fun m!153477 () Bool)

(assert (=> d!40088 m!153477))

(assert (=> d!40088 m!152721))

(assert (=> d!40088 m!152721))

(declare-fun m!153479 () Bool)

(assert (=> d!40088 m!153479))

(declare-fun m!153481 () Bool)

(assert (=> b!163144 m!153481))

(assert (=> b!163144 m!152721))

(declare-fun m!153483 () Bool)

(assert (=> b!163144 m!153483))

(declare-fun m!153485 () Bool)

(assert (=> b!163145 m!153485))

(assert (=> b!162682 d!40088))

(declare-fun d!40090 () Bool)

(declare-fun lt!49614 () BalanceConc!1640)

(assert (=> d!40090 (= (list!1007 lt!49614) (printList!67 thiss!17480 (list!1011 (singletonSeq!49 (h!8203 tokens!465)))))))

(assert (=> d!40090 (= lt!49614 (printTailRec!77 thiss!17480 (singletonSeq!49 (h!8203 tokens!465)) 0 (BalanceConc!1641 Empty!816)))))

(assert (=> d!40090 (= (print!114 thiss!17480 (singletonSeq!49 (h!8203 tokens!465))) lt!49614)))

(declare-fun bs!15389 () Bool)

(assert (= bs!15389 d!40090))

(declare-fun m!153487 () Bool)

(assert (=> bs!15389 m!153487))

(assert (=> bs!15389 m!152297))

(assert (=> bs!15389 m!152729))

(assert (=> bs!15389 m!152729))

(declare-fun m!153489 () Bool)

(assert (=> bs!15389 m!153489))

(assert (=> bs!15389 m!152297))

(assert (=> bs!15389 m!153201))

(assert (=> b!162682 d!40090))

(assert (=> b!162682 d!39980))

(declare-fun d!40092 () Bool)

(assert (=> d!40092 true))

(declare-fun lt!49617 () Bool)

(declare-fun rulesValidInductive!106 (LexerInterface!383 List!2815) Bool)

(assert (=> d!40092 (= lt!49617 (rulesValidInductive!106 thiss!17480 rules!1920))))

(declare-fun lambda!4491 () Int)

(declare-fun forall!527 (List!2815 Int) Bool)

(assert (=> d!40092 (= lt!49617 (forall!527 rules!1920 lambda!4491))))

(assert (=> d!40092 (= (rulesValid!137 thiss!17480 rules!1920) lt!49617)))

(declare-fun bs!15390 () Bool)

(assert (= bs!15390 d!40092))

(declare-fun m!153523 () Bool)

(assert (=> bs!15390 m!153523))

(declare-fun m!153525 () Bool)

(assert (=> bs!15390 m!153525))

(assert (=> d!39906 d!40092))

(declare-fun c!32587 () Bool)

(declare-fun d!40096 () Bool)

(assert (=> d!40096 (= c!32587 ((_ is Empty!816) (c!32407 (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 lt!49245 separatorToken!170 0))))))

(declare-fun e!98355 () List!2814)

(assert (=> d!40096 (= (list!1010 (c!32407 (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 lt!49245 separatorToken!170 0))) e!98355)))

(declare-fun b!163173 () Bool)

(assert (=> b!163173 (= e!98355 Nil!2804)))

(declare-fun b!163174 () Bool)

(declare-fun e!98356 () List!2814)

(assert (=> b!163174 (= e!98355 e!98356)))

(declare-fun c!32588 () Bool)

(assert (=> b!163174 (= c!32588 ((_ is Leaf!1404) (c!32407 (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 lt!49245 separatorToken!170 0))))))

(declare-fun b!163175 () Bool)

(declare-fun list!1014 (IArray!1633) List!2814)

(assert (=> b!163175 (= e!98356 (list!1014 (xs!3411 (c!32407 (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 lt!49245 separatorToken!170 0)))))))

(declare-fun b!163176 () Bool)

(assert (=> b!163176 (= e!98356 (++!626 (list!1010 (left!2115 (c!32407 (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 lt!49245 separatorToken!170 0)))) (list!1010 (right!2445 (c!32407 (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 lt!49245 separatorToken!170 0))))))))

(assert (= (and d!40096 c!32587) b!163173))

(assert (= (and d!40096 (not c!32587)) b!163174))

(assert (= (and b!163174 c!32588) b!163175))

(assert (= (and b!163174 (not c!32588)) b!163176))

(declare-fun m!153537 () Bool)

(assert (=> b!163175 m!153537))

(declare-fun m!153539 () Bool)

(assert (=> b!163176 m!153539))

(declare-fun m!153541 () Bool)

(assert (=> b!163176 m!153541))

(assert (=> b!163176 m!153539))

(assert (=> b!163176 m!153541))

(declare-fun m!153543 () Bool)

(assert (=> b!163176 m!153543))

(assert (=> d!40000 d!40096))

(declare-fun d!40102 () Bool)

(declare-fun c!32590 () Bool)

(assert (=> d!40102 (= c!32590 ((_ is IntegerValue!1557) (value!18480 (h!8203 (t!26086 tokens!465)))))))

(declare-fun e!98359 () Bool)

(assert (=> d!40102 (= (inv!21 (value!18480 (h!8203 (t!26086 tokens!465)))) e!98359)))

(declare-fun b!163177 () Bool)

(assert (=> b!163177 (= e!98359 (inv!16 (value!18480 (h!8203 (t!26086 tokens!465)))))))

(declare-fun b!163178 () Bool)

(declare-fun e!98358 () Bool)

(assert (=> b!163178 (= e!98358 (inv!17 (value!18480 (h!8203 (t!26086 tokens!465)))))))

(declare-fun b!163179 () Bool)

(declare-fun res!73972 () Bool)

(declare-fun e!98357 () Bool)

(assert (=> b!163179 (=> res!73972 e!98357)))

(assert (=> b!163179 (= res!73972 (not ((_ is IntegerValue!1559) (value!18480 (h!8203 (t!26086 tokens!465))))))))

(assert (=> b!163179 (= e!98358 e!98357)))

(declare-fun b!163180 () Bool)

(assert (=> b!163180 (= e!98357 (inv!15 (value!18480 (h!8203 (t!26086 tokens!465)))))))

(declare-fun b!163181 () Bool)

(assert (=> b!163181 (= e!98359 e!98358)))

(declare-fun c!32589 () Bool)

(assert (=> b!163181 (= c!32589 ((_ is IntegerValue!1558) (value!18480 (h!8203 (t!26086 tokens!465)))))))

(assert (= (and d!40102 c!32590) b!163177))

(assert (= (and d!40102 (not c!32590)) b!163181))

(assert (= (and b!163181 c!32589) b!163178))

(assert (= (and b!163181 (not c!32589)) b!163179))

(assert (= (and b!163179 (not res!73972)) b!163180))

(declare-fun m!153545 () Bool)

(assert (=> b!163177 m!153545))

(declare-fun m!153547 () Bool)

(assert (=> b!163178 m!153547))

(declare-fun m!153549 () Bool)

(assert (=> b!163180 m!153549))

(assert (=> b!162931 d!40102))

(declare-fun bs!15401 () Bool)

(declare-fun d!40104 () Bool)

(assert (= bs!15401 (and d!40104 d!40084)))

(declare-fun lambda!4493 () Int)

(assert (=> bs!15401 (= (and (= (toChars!1011 (transformation!497 (h!8202 rules!1920))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465))))) (= (toValue!1152 (transformation!497 (h!8202 rules!1920))) (toValue!1152 (transformation!497 (rule!1004 (h!8203 tokens!465)))))) (= lambda!4493 lambda!4488))))

(assert (=> d!40104 true))

(assert (=> d!40104 (< (dynLambda!1001 order!1429 (toChars!1011 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1006 order!1431 lambda!4493))))

(assert (=> d!40104 true))

(assert (=> d!40104 (< (dynLambda!999 order!1425 (toValue!1152 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1006 order!1431 lambda!4493))))

(assert (=> d!40104 (= (semiInverseModEq!171 (toChars!1011 (transformation!497 (h!8202 rules!1920))) (toValue!1152 (transformation!497 (h!8202 rules!1920)))) (Forall!131 lambda!4493))))

(declare-fun bs!15402 () Bool)

(assert (= bs!15402 d!40104))

(declare-fun m!153577 () Bool)

(assert (=> bs!15402 m!153577))

(assert (=> d!39910 d!40104))

(declare-fun d!40106 () Bool)

(assert (=> d!40106 (= (list!1007 e!98191) (list!1010 (c!32407 e!98191)))))

(declare-fun bs!15403 () Bool)

(assert (= bs!15403 d!40106))

(declare-fun m!153581 () Bool)

(assert (=> bs!15403 m!153581))

(assert (=> bm!6911 d!40106))

(declare-fun d!40110 () Bool)

(declare-fun c!32598 () Bool)

(assert (=> d!40110 (= c!32598 ((_ is Nil!2804) lt!49365))))

(declare-fun e!98368 () (InoxSet C!2364))

(assert (=> d!40110 (= (content!388 lt!49365) e!98368)))

(declare-fun b!163198 () Bool)

(assert (=> b!163198 (= e!98368 ((as const (Array C!2364 Bool)) false))))

(declare-fun b!163199 () Bool)

(assert (=> b!163199 (= e!98368 ((_ map or) (store ((as const (Array C!2364 Bool)) false) (h!8201 lt!49365) true) (content!388 (t!26084 lt!49365))))))

(assert (= (and d!40110 c!32598) b!163198))

(assert (= (and d!40110 (not c!32598)) b!163199))

(declare-fun m!153613 () Bool)

(assert (=> b!163199 m!153613))

(declare-fun m!153615 () Bool)

(assert (=> b!163199 m!153615))

(assert (=> d!39896 d!40110))

(declare-fun d!40118 () Bool)

(declare-fun c!32599 () Bool)

(assert (=> d!40118 (= c!32599 ((_ is Nil!2804) lt!49241))))

(declare-fun e!98369 () (InoxSet C!2364))

(assert (=> d!40118 (= (content!388 lt!49241) e!98369)))

(declare-fun b!163200 () Bool)

(assert (=> b!163200 (= e!98369 ((as const (Array C!2364 Bool)) false))))

(declare-fun b!163201 () Bool)

(assert (=> b!163201 (= e!98369 ((_ map or) (store ((as const (Array C!2364 Bool)) false) (h!8201 lt!49241) true) (content!388 (t!26084 lt!49241))))))

(assert (= (and d!40118 c!32599) b!163200))

(assert (= (and d!40118 (not c!32599)) b!163201))

(declare-fun m!153617 () Bool)

(assert (=> b!163201 m!153617))

(assert (=> b!163201 m!153433))

(assert (=> d!39896 d!40118))

(declare-fun d!40122 () Bool)

(declare-fun c!32600 () Bool)

(assert (=> d!40122 (= c!32600 ((_ is Nil!2804) lt!49246))))

(declare-fun e!98370 () (InoxSet C!2364))

(assert (=> d!40122 (= (content!388 lt!49246) e!98370)))

(declare-fun b!163202 () Bool)

(assert (=> b!163202 (= e!98370 ((as const (Array C!2364 Bool)) false))))

(declare-fun b!163203 () Bool)

(assert (=> b!163203 (= e!98370 ((_ map or) (store ((as const (Array C!2364 Bool)) false) (h!8201 lt!49246) true) (content!388 (t!26084 lt!49246))))))

(assert (= (and d!40122 c!32600) b!163202))

(assert (= (and d!40122 (not c!32600)) b!163203))

(declare-fun m!153619 () Bool)

(assert (=> b!163203 m!153619))

(declare-fun m!153621 () Bool)

(assert (=> b!163203 m!153621))

(assert (=> d!39896 d!40122))

(declare-fun d!40124 () Bool)

(declare-fun c!32601 () Bool)

(assert (=> d!40124 (= c!32601 ((_ is Nil!2804) lt!49479))))

(declare-fun e!98371 () (InoxSet C!2364))

(assert (=> d!40124 (= (content!388 lt!49479) e!98371)))

(declare-fun b!163204 () Bool)

(assert (=> b!163204 (= e!98371 ((as const (Array C!2364 Bool)) false))))

(declare-fun b!163205 () Bool)

(assert (=> b!163205 (= e!98371 ((_ map or) (store ((as const (Array C!2364 Bool)) false) (h!8201 lt!49479) true) (content!388 (t!26084 lt!49479))))))

(assert (= (and d!40124 c!32601) b!163204))

(assert (= (and d!40124 (not c!32601)) b!163205))

(declare-fun m!153623 () Bool)

(assert (=> b!163205 m!153623))

(declare-fun m!153625 () Bool)

(assert (=> b!163205 m!153625))

(assert (=> d!39972 d!40124))

(declare-fun d!40126 () Bool)

(declare-fun c!32602 () Bool)

(assert (=> d!40126 (= c!32602 ((_ is Nil!2804) lt!49240))))

(declare-fun e!98372 () (InoxSet C!2364))

(assert (=> d!40126 (= (content!388 lt!49240) e!98372)))

(declare-fun b!163206 () Bool)

(assert (=> b!163206 (= e!98372 ((as const (Array C!2364 Bool)) false))))

(declare-fun b!163207 () Bool)

(assert (=> b!163207 (= e!98372 ((_ map or) (store ((as const (Array C!2364 Bool)) false) (h!8201 lt!49240) true) (content!388 (t!26084 lt!49240))))))

(assert (= (and d!40126 c!32602) b!163206))

(assert (= (and d!40126 (not c!32602)) b!163207))

(declare-fun m!153627 () Bool)

(assert (=> b!163207 m!153627))

(assert (=> b!163207 m!153443))

(assert (=> d!39972 d!40126))

(assert (=> d!39972 d!40122))

(declare-fun d!40128 () Bool)

(declare-fun e!98377 () Bool)

(assert (=> d!40128 e!98377))

(declare-fun res!73979 () Bool)

(assert (=> d!40128 (=> (not res!73979) (not e!98377))))

(declare-fun lt!49630 () BalanceConc!1642)

(assert (=> d!40128 (= res!73979 (= (list!1011 lt!49630) (t!26086 tokens!465)))))

(declare-fun fromList!102 (List!2816) Conc!817)

(assert (=> d!40128 (= lt!49630 (BalanceConc!1643 (fromList!102 (t!26086 tokens!465))))))

(assert (=> d!40128 (= (fromListB!148 (t!26086 tokens!465)) lt!49630)))

(declare-fun b!163212 () Bool)

(assert (=> b!163212 (= e!98377 (isBalanced!226 (fromList!102 (t!26086 tokens!465))))))

(assert (= (and d!40128 res!73979) b!163212))

(declare-fun m!153629 () Bool)

(assert (=> d!40128 m!153629))

(declare-fun m!153631 () Bool)

(assert (=> d!40128 m!153631))

(assert (=> b!163212 m!153631))

(assert (=> b!163212 m!153631))

(declare-fun m!153633 () Bool)

(assert (=> b!163212 m!153633))

(assert (=> d!39838 d!40128))

(declare-fun d!40130 () Bool)

(declare-fun lt!49631 () BalanceConc!1640)

(assert (=> d!40130 (= (list!1007 lt!49631) (originalCharacters!540 call!6877))))

(assert (=> d!40130 (= lt!49631 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 call!6877))) (value!18480 call!6877)))))

(assert (=> d!40130 (= (charsOf!152 call!6877) lt!49631)))

(declare-fun b_lambda!3449 () Bool)

(assert (=> (not b_lambda!3449) (not d!40130)))

(declare-fun t!26177 () Bool)

(declare-fun tb!6025 () Bool)

(assert (=> (and b!162952 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 rules!1920)))) (toChars!1011 (transformation!497 (rule!1004 call!6877)))) t!26177) tb!6025))

(declare-fun b!163215 () Bool)

(declare-fun e!98378 () Bool)

(declare-fun tp!82410 () Bool)

(assert (=> b!163215 (= e!98378 (and (inv!3624 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 call!6877))) (value!18480 call!6877)))) tp!82410))))

(declare-fun result!8640 () Bool)

(assert (=> tb!6025 (= result!8640 (and (inv!3625 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 call!6877))) (value!18480 call!6877))) e!98378))))

(assert (= tb!6025 b!163215))

(declare-fun m!153637 () Bool)

(assert (=> b!163215 m!153637))

(declare-fun m!153639 () Bool)

(assert (=> tb!6025 m!153639))

(assert (=> d!40130 t!26177))

(declare-fun b_and!10265 () Bool)

(assert (= b_and!10243 (and (=> t!26177 result!8640) b_and!10265)))

(declare-fun t!26179 () Bool)

(declare-fun tb!6027 () Bool)

(assert (=> (and b!162366 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (toChars!1011 (transformation!497 (rule!1004 call!6877)))) t!26179) tb!6027))

(declare-fun result!8642 () Bool)

(assert (= result!8642 result!8640))

(assert (=> d!40130 t!26179))

(declare-fun b_and!10267 () Bool)

(assert (= b_and!10235 (and (=> t!26179 result!8642) b_and!10267)))

(declare-fun tb!6029 () Bool)

(declare-fun t!26181 () Bool)

(assert (=> (and b!162933 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))) (toChars!1011 (transformation!497 (rule!1004 call!6877)))) t!26181) tb!6029))

(declare-fun result!8644 () Bool)

(assert (= result!8644 result!8640))

(assert (=> d!40130 t!26181))

(declare-fun b_and!10269 () Bool)

(assert (= b_and!10239 (and (=> t!26181 result!8644) b_and!10269)))

(declare-fun tb!6031 () Bool)

(declare-fun t!26183 () Bool)

(assert (=> (and b!162363 (= (toChars!1011 (transformation!497 (h!8202 rules!1920))) (toChars!1011 (transformation!497 (rule!1004 call!6877)))) t!26183) tb!6031))

(declare-fun result!8646 () Bool)

(assert (= result!8646 result!8640))

(assert (=> d!40130 t!26183))

(declare-fun b_and!10271 () Bool)

(assert (= b_and!10231 (and (=> t!26183 result!8646) b_and!10271)))

(declare-fun t!26185 () Bool)

(declare-fun tb!6033 () Bool)

(assert (=> (and b!162354 (= (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (toChars!1011 (transformation!497 (rule!1004 call!6877)))) t!26185) tb!6033))

(declare-fun result!8648 () Bool)

(assert (= result!8648 result!8640))

(assert (=> d!40130 t!26185))

(declare-fun b_and!10273 () Bool)

(assert (= b_and!10233 (and (=> t!26185 result!8648) b_and!10273)))

(declare-fun m!153641 () Bool)

(assert (=> d!40130 m!153641))

(declare-fun m!153643 () Bool)

(assert (=> d!40130 m!153643))

(assert (=> b!162619 d!40130))

(declare-fun d!40134 () Bool)

(assert (=> d!40134 (= (list!1007 lt!49363) (list!1010 (c!32407 lt!49363)))))

(declare-fun bs!15405 () Bool)

(assert (= bs!15405 d!40134))

(declare-fun m!153645 () Bool)

(assert (=> bs!15405 m!153645))

(assert (=> d!39892 d!40134))

(declare-fun b!163238 () Bool)

(declare-fun e!98394 () List!2816)

(declare-fun e!98391 () List!2816)

(assert (=> b!163238 (= e!98394 e!98391)))

(declare-fun c!32615 () Bool)

(assert (=> b!163238 (= c!32615 (<= 0 0))))

(declare-fun bm!6927 () Bool)

(declare-fun call!6932 () Int)

(declare-fun size!2351 (List!2816) Int)

(assert (=> bm!6927 (= call!6932 (size!2351 lt!49503))))

(declare-fun b!163239 () Bool)

(declare-fun e!98392 () Int)

(assert (=> b!163239 (= e!98392 (- call!6932 0))))

(declare-fun b!163240 () Bool)

(assert (=> b!163240 (= e!98391 lt!49503)))

(declare-fun d!40136 () Bool)

(declare-fun e!98393 () Bool)

(assert (=> d!40136 e!98393))

(declare-fun res!73982 () Bool)

(assert (=> d!40136 (=> (not res!73982) (not e!98393))))

(declare-fun lt!49639 () List!2816)

(assert (=> d!40136 (= res!73982 (= ((_ map implies) (content!389 lt!49639) (content!389 lt!49503)) ((as const (InoxSet Token!738)) true)))))

(assert (=> d!40136 (= lt!49639 e!98394)))

(declare-fun c!32617 () Bool)

(assert (=> d!40136 (= c!32617 ((_ is Nil!2806) lt!49503))))

(assert (=> d!40136 (= (drop!133 lt!49503 0) lt!49639)))

(declare-fun b!163241 () Bool)

(declare-fun e!98395 () Int)

(assert (=> b!163241 (= e!98393 (= (size!2351 lt!49639) e!98395))))

(declare-fun c!32616 () Bool)

(assert (=> b!163241 (= c!32616 (<= 0 0))))

(declare-fun b!163242 () Bool)

(assert (=> b!163242 (= e!98395 e!98392)))

(declare-fun c!32614 () Bool)

(assert (=> b!163242 (= c!32614 (>= 0 call!6932))))

(declare-fun b!163243 () Bool)

(assert (=> b!163243 (= e!98394 Nil!2806)))

(declare-fun b!163244 () Bool)

(assert (=> b!163244 (= e!98392 0)))

(declare-fun b!163245 () Bool)

(assert (=> b!163245 (= e!98395 call!6932)))

(declare-fun b!163246 () Bool)

(assert (=> b!163246 (= e!98391 (drop!133 (t!26086 lt!49503) (- 0 1)))))

(assert (= (and d!40136 c!32617) b!163243))

(assert (= (and d!40136 (not c!32617)) b!163238))

(assert (= (and b!163238 c!32615) b!163240))

(assert (= (and b!163238 (not c!32615)) b!163246))

(assert (= (and d!40136 res!73982) b!163241))

(assert (= (and b!163241 c!32616) b!163245))

(assert (= (and b!163241 (not c!32616)) b!163242))

(assert (= (and b!163242 c!32614) b!163244))

(assert (= (and b!163242 (not c!32614)) b!163239))

(assert (= (or b!163245 b!163242 b!163239) bm!6927))

(declare-fun m!153653 () Bool)

(assert (=> bm!6927 m!153653))

(declare-fun m!153655 () Bool)

(assert (=> d!40136 m!153655))

(declare-fun m!153657 () Bool)

(assert (=> d!40136 m!153657))

(declare-fun m!153659 () Bool)

(assert (=> b!163241 m!153659))

(declare-fun m!153661 () Bool)

(assert (=> b!163246 m!153661))

(assert (=> b!162833 d!40136))

(declare-fun d!40142 () Bool)

(assert (=> d!40142 (= (tail!334 (drop!133 lt!49503 0)) (t!26086 (drop!133 lt!49503 0)))))

(assert (=> b!162833 d!40142))

(declare-fun d!40144 () Bool)

(assert (=> d!40144 (= (tail!334 (drop!133 lt!49503 0)) (drop!133 lt!49503 (+ 0 1)))))

(declare-fun lt!49655 () Unit!2310)

(declare-fun choose!1801 (List!2816 Int) Unit!2310)

(assert (=> d!40144 (= lt!49655 (choose!1801 lt!49503 0))))

(declare-fun e!98399 () Bool)

(assert (=> d!40144 e!98399))

(declare-fun res!73985 () Bool)

(assert (=> d!40144 (=> (not res!73985) (not e!98399))))

(assert (=> d!40144 (= res!73985 (>= 0 0))))

(assert (=> d!40144 (= (lemmaDropTail!112 lt!49503 0) lt!49655)))

(declare-fun b!163251 () Bool)

(assert (=> b!163251 (= e!98399 (< 0 (size!2351 lt!49503)))))

(assert (= (and d!40144 res!73985) b!163251))

(assert (=> d!40144 m!153065))

(assert (=> d!40144 m!153065))

(assert (=> d!40144 m!153067))

(assert (=> d!40144 m!153057))

(declare-fun m!153693 () Bool)

(assert (=> d!40144 m!153693))

(assert (=> b!163251 m!153653))

(assert (=> b!162833 d!40144))

(declare-fun d!40152 () Bool)

(declare-fun list!1015 (Conc!817) List!2816)

(assert (=> d!40152 (= (list!1011 lt!49248) (list!1015 (c!32409 lt!49248)))))

(declare-fun bs!15411 () Bool)

(assert (= bs!15411 d!40152))

(declare-fun m!153697 () Bool)

(assert (=> bs!15411 m!153697))

(assert (=> b!162833 d!40152))

(declare-fun d!40156 () Bool)

(declare-fun lt!49666 () Token!738)

(assert (=> d!40156 (contains!446 lt!49500 lt!49666)))

(declare-fun e!98407 () Token!738)

(assert (=> d!40156 (= lt!49666 e!98407)))

(declare-fun c!32622 () Bool)

(assert (=> d!40156 (= c!32622 (= 0 0))))

(declare-fun e!98406 () Bool)

(assert (=> d!40156 e!98406))

(declare-fun res!73989 () Bool)

(assert (=> d!40156 (=> (not res!73989) (not e!98406))))

(assert (=> d!40156 (= res!73989 (<= 0 0))))

(assert (=> d!40156 (= (apply!389 lt!49500 0) lt!49666)))

(declare-fun b!163261 () Bool)

(assert (=> b!163261 (= e!98406 (< 0 (size!2351 lt!49500)))))

(declare-fun b!163262 () Bool)

(assert (=> b!163262 (= e!98407 (head!594 lt!49500))))

(declare-fun b!163263 () Bool)

(assert (=> b!163263 (= e!98407 (apply!389 (tail!334 lt!49500) (- 0 1)))))

(assert (= (and d!40156 res!73989) b!163261))

(assert (= (and d!40156 c!32622) b!163262))

(assert (= (and d!40156 (not c!32622)) b!163263))

(declare-fun m!153731 () Bool)

(assert (=> d!40156 m!153731))

(declare-fun m!153733 () Bool)

(assert (=> b!163261 m!153733))

(declare-fun m!153735 () Bool)

(assert (=> b!163262 m!153735))

(declare-fun m!153737 () Bool)

(assert (=> b!163263 m!153737))

(assert (=> b!163263 m!153737))

(declare-fun m!153739 () Bool)

(assert (=> b!163263 m!153739))

(assert (=> b!162833 d!40156))

(declare-fun b!163264 () Bool)

(declare-fun e!98411 () List!2816)

(declare-fun e!98408 () List!2816)

(assert (=> b!163264 (= e!98411 e!98408)))

(declare-fun c!32624 () Bool)

(assert (=> b!163264 (= c!32624 (<= 0 0))))

(declare-fun bm!6928 () Bool)

(declare-fun call!6933 () Int)

(assert (=> bm!6928 (= call!6933 (size!2351 lt!49500))))

(declare-fun b!163265 () Bool)

(declare-fun e!98409 () Int)

(assert (=> b!163265 (= e!98409 (- call!6933 0))))

(declare-fun b!163266 () Bool)

(assert (=> b!163266 (= e!98408 lt!49500)))

(declare-fun d!40160 () Bool)

(declare-fun e!98410 () Bool)

(assert (=> d!40160 e!98410))

(declare-fun res!73990 () Bool)

(assert (=> d!40160 (=> (not res!73990) (not e!98410))))

(declare-fun lt!49667 () List!2816)

(assert (=> d!40160 (= res!73990 (= ((_ map implies) (content!389 lt!49667) (content!389 lt!49500)) ((as const (InoxSet Token!738)) true)))))

(assert (=> d!40160 (= lt!49667 e!98411)))

(declare-fun c!32626 () Bool)

(assert (=> d!40160 (= c!32626 ((_ is Nil!2806) lt!49500))))

(assert (=> d!40160 (= (drop!133 lt!49500 0) lt!49667)))

(declare-fun b!163267 () Bool)

(declare-fun e!98412 () Int)

(assert (=> b!163267 (= e!98410 (= (size!2351 lt!49667) e!98412))))

(declare-fun c!32625 () Bool)

(assert (=> b!163267 (= c!32625 (<= 0 0))))

(declare-fun b!163268 () Bool)

(assert (=> b!163268 (= e!98412 e!98409)))

(declare-fun c!32623 () Bool)

(assert (=> b!163268 (= c!32623 (>= 0 call!6933))))

(declare-fun b!163269 () Bool)

(assert (=> b!163269 (= e!98411 Nil!2806)))

(declare-fun b!163270 () Bool)

(assert (=> b!163270 (= e!98409 0)))

(declare-fun b!163271 () Bool)

(assert (=> b!163271 (= e!98412 call!6933)))

(declare-fun b!163272 () Bool)

(assert (=> b!163272 (= e!98408 (drop!133 (t!26086 lt!49500) (- 0 1)))))

(assert (= (and d!40160 c!32626) b!163269))

(assert (= (and d!40160 (not c!32626)) b!163264))

(assert (= (and b!163264 c!32624) b!163266))

(assert (= (and b!163264 (not c!32624)) b!163272))

(assert (= (and d!40160 res!73990) b!163267))

(assert (= (and b!163267 c!32625) b!163271))

(assert (= (and b!163267 (not c!32625)) b!163268))

(assert (= (and b!163268 c!32623) b!163270))

(assert (= (and b!163268 (not c!32623)) b!163265))

(assert (= (or b!163271 b!163268 b!163265) bm!6928))

(assert (=> bm!6928 m!153733))

(declare-fun m!153741 () Bool)

(assert (=> d!40160 m!153741))

(declare-fun m!153743 () Bool)

(assert (=> d!40160 m!153743))

(declare-fun m!153745 () Bool)

(assert (=> b!163267 m!153745))

(declare-fun m!153747 () Bool)

(assert (=> b!163272 m!153747))

(assert (=> b!162833 d!40160))

(declare-fun d!40162 () Bool)

(assert (=> d!40162 (= (head!594 (drop!133 lt!49500 0)) (apply!389 lt!49500 0))))

(declare-fun lt!49670 () Unit!2310)

(declare-fun choose!1802 (List!2816 Int) Unit!2310)

(assert (=> d!40162 (= lt!49670 (choose!1802 lt!49500 0))))

(declare-fun e!98415 () Bool)

(assert (=> d!40162 e!98415))

(declare-fun res!73993 () Bool)

(assert (=> d!40162 (=> (not res!73993) (not e!98415))))

(assert (=> d!40162 (= res!73993 (>= 0 0))))

(assert (=> d!40162 (= (lemmaDropApply!120 lt!49500 0) lt!49670)))

(declare-fun b!163275 () Bool)

(assert (=> b!163275 (= e!98415 (< 0 (size!2351 lt!49500)))))

(assert (= (and d!40162 res!73993) b!163275))

(assert (=> d!40162 m!153059))

(assert (=> d!40162 m!153059))

(assert (=> d!40162 m!153061))

(assert (=> d!40162 m!153055))

(declare-fun m!153749 () Bool)

(assert (=> d!40162 m!153749))

(assert (=> b!163275 m!153733))

(assert (=> b!162833 d!40162))

(declare-fun d!40164 () Bool)

(declare-fun lt!49675 () BalanceConc!1640)

(assert (=> d!40164 (= (list!1007 lt!49675) (printListTailRec!48 thiss!17480 (dropList!80 lt!49248 (+ 0 1)) (list!1007 (++!628 (BalanceConc!1641 Empty!816) (charsOf!152 (apply!390 lt!49248 0))))))))

(declare-fun e!98417 () BalanceConc!1640)

(assert (=> d!40164 (= lt!49675 e!98417)))

(declare-fun c!32627 () Bool)

(assert (=> d!40164 (= c!32627 (>= (+ 0 1) (size!2348 lt!49248)))))

(declare-fun e!98416 () Bool)

(assert (=> d!40164 e!98416))

(declare-fun res!73994 () Bool)

(assert (=> d!40164 (=> (not res!73994) (not e!98416))))

(assert (=> d!40164 (= res!73994 (>= (+ 0 1) 0))))

(assert (=> d!40164 (= (printTailRec!77 thiss!17480 lt!49248 (+ 0 1) (++!628 (BalanceConc!1641 Empty!816) (charsOf!152 (apply!390 lt!49248 0)))) lt!49675)))

(declare-fun b!163276 () Bool)

(assert (=> b!163276 (= e!98416 (<= (+ 0 1) (size!2348 lt!49248)))))

(declare-fun b!163277 () Bool)

(assert (=> b!163277 (= e!98417 (++!628 (BalanceConc!1641 Empty!816) (charsOf!152 (apply!390 lt!49248 0))))))

(declare-fun b!163278 () Bool)

(assert (=> b!163278 (= e!98417 (printTailRec!77 thiss!17480 lt!49248 (+ 0 1 1) (++!628 (++!628 (BalanceConc!1641 Empty!816) (charsOf!152 (apply!390 lt!49248 0))) (charsOf!152 (apply!390 lt!49248 (+ 0 1))))))))

(declare-fun lt!49674 () List!2816)

(assert (=> b!163278 (= lt!49674 (list!1011 lt!49248))))

(declare-fun lt!49671 () Unit!2310)

(assert (=> b!163278 (= lt!49671 (lemmaDropApply!120 lt!49674 (+ 0 1)))))

(assert (=> b!163278 (= (head!594 (drop!133 lt!49674 (+ 0 1))) (apply!389 lt!49674 (+ 0 1)))))

(declare-fun lt!49672 () Unit!2310)

(assert (=> b!163278 (= lt!49672 lt!49671)))

(declare-fun lt!49677 () List!2816)

(assert (=> b!163278 (= lt!49677 (list!1011 lt!49248))))

(declare-fun lt!49676 () Unit!2310)

(assert (=> b!163278 (= lt!49676 (lemmaDropTail!112 lt!49677 (+ 0 1)))))

(assert (=> b!163278 (= (tail!334 (drop!133 lt!49677 (+ 0 1))) (drop!133 lt!49677 (+ 0 1 1)))))

(declare-fun lt!49673 () Unit!2310)

(assert (=> b!163278 (= lt!49673 lt!49676)))

(assert (= (and d!40164 res!73994) b!163276))

(assert (= (and d!40164 c!32627) b!163277))

(assert (= (and d!40164 (not c!32627)) b!163278))

(declare-fun m!153751 () Bool)

(assert (=> d!40164 m!153751))

(declare-fun m!153753 () Bool)

(assert (=> d!40164 m!153753))

(declare-fun m!153755 () Bool)

(assert (=> d!40164 m!153755))

(assert (=> d!40164 m!153751))

(assert (=> d!40164 m!153047))

(declare-fun m!153757 () Bool)

(assert (=> d!40164 m!153757))

(assert (=> d!40164 m!153071))

(assert (=> d!40164 m!153753))

(assert (=> b!163276 m!153047))

(declare-fun m!153759 () Bool)

(assert (=> b!163278 m!153759))

(declare-fun m!153761 () Bool)

(assert (=> b!163278 m!153761))

(declare-fun m!153763 () Bool)

(assert (=> b!163278 m!153763))

(declare-fun m!153765 () Bool)

(assert (=> b!163278 m!153765))

(declare-fun m!153767 () Bool)

(assert (=> b!163278 m!153767))

(declare-fun m!153769 () Bool)

(assert (=> b!163278 m!153769))

(declare-fun m!153771 () Bool)

(assert (=> b!163278 m!153771))

(declare-fun m!153773 () Bool)

(assert (=> b!163278 m!153773))

(declare-fun m!153775 () Bool)

(assert (=> b!163278 m!153775))

(assert (=> b!163278 m!153037))

(declare-fun m!153777 () Bool)

(assert (=> b!163278 m!153777))

(assert (=> b!163278 m!153759))

(assert (=> b!163278 m!153773))

(declare-fun m!153779 () Bool)

(assert (=> b!163278 m!153779))

(declare-fun m!153781 () Bool)

(assert (=> b!163278 m!153781))

(assert (=> b!163278 m!153767))

(assert (=> b!163278 m!153071))

(assert (=> b!163278 m!153761))

(assert (=> b!163278 m!153779))

(assert (=> b!162833 d!40164))

(declare-fun d!40166 () Bool)

(declare-fun lt!49680 () Token!738)

(assert (=> d!40166 (= lt!49680 (apply!389 (list!1011 lt!49248) 0))))

(declare-fun apply!393 (Conc!817 Int) Token!738)

(assert (=> d!40166 (= lt!49680 (apply!393 (c!32409 lt!49248) 0))))

(declare-fun e!98420 () Bool)

(assert (=> d!40166 e!98420))

(declare-fun res!73997 () Bool)

(assert (=> d!40166 (=> (not res!73997) (not e!98420))))

(assert (=> d!40166 (= res!73997 (<= 0 0))))

(assert (=> d!40166 (= (apply!390 lt!49248 0) lt!49680)))

(declare-fun b!163281 () Bool)

(assert (=> b!163281 (= e!98420 (< 0 (size!2348 lt!49248)))))

(assert (= (and d!40166 res!73997) b!163281))

(assert (=> d!40166 m!153037))

(assert (=> d!40166 m!153037))

(declare-fun m!153783 () Bool)

(assert (=> d!40166 m!153783))

(declare-fun m!153785 () Bool)

(assert (=> d!40166 m!153785))

(assert (=> b!163281 m!153047))

(assert (=> b!162833 d!40166))

(declare-fun b!163282 () Bool)

(declare-fun e!98424 () List!2816)

(declare-fun e!98421 () List!2816)

(assert (=> b!163282 (= e!98424 e!98421)))

(declare-fun c!32629 () Bool)

(assert (=> b!163282 (= c!32629 (<= (+ 0 1) 0))))

(declare-fun bm!6929 () Bool)

(declare-fun call!6934 () Int)

(assert (=> bm!6929 (= call!6934 (size!2351 lt!49503))))

(declare-fun b!163283 () Bool)

(declare-fun e!98422 () Int)

(assert (=> b!163283 (= e!98422 (- call!6934 (+ 0 1)))))

(declare-fun b!163284 () Bool)

(assert (=> b!163284 (= e!98421 lt!49503)))

(declare-fun d!40168 () Bool)

(declare-fun e!98423 () Bool)

(assert (=> d!40168 e!98423))

(declare-fun res!73998 () Bool)

(assert (=> d!40168 (=> (not res!73998) (not e!98423))))

(declare-fun lt!49681 () List!2816)

(assert (=> d!40168 (= res!73998 (= ((_ map implies) (content!389 lt!49681) (content!389 lt!49503)) ((as const (InoxSet Token!738)) true)))))

(assert (=> d!40168 (= lt!49681 e!98424)))

(declare-fun c!32631 () Bool)

(assert (=> d!40168 (= c!32631 ((_ is Nil!2806) lt!49503))))

(assert (=> d!40168 (= (drop!133 lt!49503 (+ 0 1)) lt!49681)))

(declare-fun b!163285 () Bool)

(declare-fun e!98425 () Int)

(assert (=> b!163285 (= e!98423 (= (size!2351 lt!49681) e!98425))))

(declare-fun c!32630 () Bool)

(assert (=> b!163285 (= c!32630 (<= (+ 0 1) 0))))

(declare-fun b!163286 () Bool)

(assert (=> b!163286 (= e!98425 e!98422)))

(declare-fun c!32628 () Bool)

(assert (=> b!163286 (= c!32628 (>= (+ 0 1) call!6934))))

(declare-fun b!163287 () Bool)

(assert (=> b!163287 (= e!98424 Nil!2806)))

(declare-fun b!163288 () Bool)

(assert (=> b!163288 (= e!98422 0)))

(declare-fun b!163289 () Bool)

(assert (=> b!163289 (= e!98425 call!6934)))

(declare-fun b!163290 () Bool)

(assert (=> b!163290 (= e!98421 (drop!133 (t!26086 lt!49503) (- (+ 0 1) 1)))))

(assert (= (and d!40168 c!32631) b!163287))

(assert (= (and d!40168 (not c!32631)) b!163282))

(assert (= (and b!163282 c!32629) b!163284))

(assert (= (and b!163282 (not c!32629)) b!163290))

(assert (= (and d!40168 res!73998) b!163285))

(assert (= (and b!163285 c!32630) b!163289))

(assert (= (and b!163285 (not c!32630)) b!163286))

(assert (= (and b!163286 c!32628) b!163288))

(assert (= (and b!163286 (not c!32628)) b!163283))

(assert (= (or b!163289 b!163286 b!163283) bm!6929))

(assert (=> bm!6929 m!153653))

(declare-fun m!153787 () Bool)

(assert (=> d!40168 m!153787))

(assert (=> d!40168 m!153657))

(declare-fun m!153789 () Bool)

(assert (=> b!163285 m!153789))

(declare-fun m!153791 () Bool)

(assert (=> b!163290 m!153791))

(assert (=> b!162833 d!40168))

(declare-fun b!163301 () Bool)

(declare-fun res!74007 () Bool)

(declare-fun e!98428 () Bool)

(assert (=> b!163301 (=> (not res!74007) (not e!98428))))

(declare-fun height!86 (Conc!816) Int)

(declare-fun ++!630 (Conc!816 Conc!816) Conc!816)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!163301 (= res!74007 (>= (height!86 (++!630 (c!32407 (BalanceConc!1641 Empty!816)) (c!32407 (charsOf!152 (apply!390 lt!49248 0))))) (max!0 (height!86 (c!32407 (BalanceConc!1641 Empty!816))) (height!86 (c!32407 (charsOf!152 (apply!390 lt!49248 0)))))))))

(declare-fun b!163299 () Bool)

(declare-fun res!74008 () Bool)

(assert (=> b!163299 (=> (not res!74008) (not e!98428))))

(declare-fun isBalanced!228 (Conc!816) Bool)

(assert (=> b!163299 (= res!74008 (isBalanced!228 (++!630 (c!32407 (BalanceConc!1641 Empty!816)) (c!32407 (charsOf!152 (apply!390 lt!49248 0))))))))

(declare-fun b!163302 () Bool)

(declare-fun lt!49684 () BalanceConc!1640)

(assert (=> b!163302 (= e!98428 (= (list!1007 lt!49684) (++!626 (list!1007 (BalanceConc!1641 Empty!816)) (list!1007 (charsOf!152 (apply!390 lt!49248 0))))))))

(declare-fun b!163300 () Bool)

(declare-fun res!74010 () Bool)

(assert (=> b!163300 (=> (not res!74010) (not e!98428))))

(assert (=> b!163300 (= res!74010 (<= (height!86 (++!630 (c!32407 (BalanceConc!1641 Empty!816)) (c!32407 (charsOf!152 (apply!390 lt!49248 0))))) (+ (max!0 (height!86 (c!32407 (BalanceConc!1641 Empty!816))) (height!86 (c!32407 (charsOf!152 (apply!390 lt!49248 0))))) 1)))))

(declare-fun d!40170 () Bool)

(assert (=> d!40170 e!98428))

(declare-fun res!74009 () Bool)

(assert (=> d!40170 (=> (not res!74009) (not e!98428))))

(declare-fun appendAssocInst!27 (Conc!816 Conc!816) Bool)

(assert (=> d!40170 (= res!74009 (appendAssocInst!27 (c!32407 (BalanceConc!1641 Empty!816)) (c!32407 (charsOf!152 (apply!390 lt!49248 0)))))))

(assert (=> d!40170 (= lt!49684 (BalanceConc!1641 (++!630 (c!32407 (BalanceConc!1641 Empty!816)) (c!32407 (charsOf!152 (apply!390 lt!49248 0))))))))

(assert (=> d!40170 (= (++!628 (BalanceConc!1641 Empty!816) (charsOf!152 (apply!390 lt!49248 0))) lt!49684)))

(assert (= (and d!40170 res!74009) b!163299))

(assert (= (and b!163299 res!74008) b!163300))

(assert (= (and b!163300 res!74010) b!163301))

(assert (= (and b!163301 res!74007) b!163302))

(declare-fun m!153793 () Bool)

(assert (=> b!163300 m!153793))

(declare-fun m!153795 () Bool)

(assert (=> b!163300 m!153795))

(declare-fun m!153797 () Bool)

(assert (=> b!163300 m!153797))

(assert (=> b!163300 m!153793))

(declare-fun m!153799 () Bool)

(assert (=> b!163300 m!153799))

(assert (=> b!163300 m!153795))

(assert (=> b!163300 m!153799))

(declare-fun m!153801 () Bool)

(assert (=> b!163300 m!153801))

(assert (=> b!163299 m!153799))

(assert (=> b!163299 m!153799))

(declare-fun m!153803 () Bool)

(assert (=> b!163299 m!153803))

(declare-fun m!153805 () Bool)

(assert (=> b!163302 m!153805))

(assert (=> b!163302 m!153043))

(assert (=> b!163302 m!153053))

(declare-fun m!153807 () Bool)

(assert (=> b!163302 m!153807))

(assert (=> b!163302 m!153043))

(assert (=> b!163302 m!153807))

(declare-fun m!153809 () Bool)

(assert (=> b!163302 m!153809))

(assert (=> b!163301 m!153793))

(assert (=> b!163301 m!153795))

(assert (=> b!163301 m!153797))

(assert (=> b!163301 m!153793))

(assert (=> b!163301 m!153799))

(assert (=> b!163301 m!153795))

(assert (=> b!163301 m!153799))

(assert (=> b!163301 m!153801))

(declare-fun m!153811 () Bool)

(assert (=> d!40170 m!153811))

(assert (=> d!40170 m!153799))

(assert (=> b!162833 d!40170))

(declare-fun d!40172 () Bool)

(declare-fun lt!49685 () BalanceConc!1640)

(assert (=> d!40172 (= (list!1007 lt!49685) (originalCharacters!540 (apply!390 lt!49248 0)))))

(assert (=> d!40172 (= lt!49685 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (apply!390 lt!49248 0)))) (value!18480 (apply!390 lt!49248 0))))))

(assert (=> d!40172 (= (charsOf!152 (apply!390 lt!49248 0)) lt!49685)))

(declare-fun b_lambda!3451 () Bool)

(assert (=> (not b_lambda!3451) (not d!40172)))

(declare-fun tb!6035 () Bool)

(declare-fun t!26187 () Bool)

(assert (=> (and b!162952 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 rules!1920)))) (toChars!1011 (transformation!497 (rule!1004 (apply!390 lt!49248 0))))) t!26187) tb!6035))

(declare-fun b!163303 () Bool)

(declare-fun e!98429 () Bool)

(declare-fun tp!82411 () Bool)

(assert (=> b!163303 (= e!98429 (and (inv!3624 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (apply!390 lt!49248 0)))) (value!18480 (apply!390 lt!49248 0))))) tp!82411))))

(declare-fun result!8650 () Bool)

(assert (=> tb!6035 (= result!8650 (and (inv!3625 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (apply!390 lt!49248 0)))) (value!18480 (apply!390 lt!49248 0)))) e!98429))))

(assert (= tb!6035 b!163303))

(declare-fun m!153813 () Bool)

(assert (=> b!163303 m!153813))

(declare-fun m!153815 () Bool)

(assert (=> tb!6035 m!153815))

(assert (=> d!40172 t!26187))

(declare-fun b_and!10275 () Bool)

(assert (= b_and!10265 (and (=> t!26187 result!8650) b_and!10275)))

(declare-fun t!26189 () Bool)

(declare-fun tb!6037 () Bool)

(assert (=> (and b!162366 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (toChars!1011 (transformation!497 (rule!1004 (apply!390 lt!49248 0))))) t!26189) tb!6037))

(declare-fun result!8652 () Bool)

(assert (= result!8652 result!8650))

(assert (=> d!40172 t!26189))

(declare-fun b_and!10277 () Bool)

(assert (= b_and!10267 (and (=> t!26189 result!8652) b_and!10277)))

(declare-fun tb!6039 () Bool)

(declare-fun t!26191 () Bool)

(assert (=> (and b!162354 (= (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (toChars!1011 (transformation!497 (rule!1004 (apply!390 lt!49248 0))))) t!26191) tb!6039))

(declare-fun result!8654 () Bool)

(assert (= result!8654 result!8650))

(assert (=> d!40172 t!26191))

(declare-fun b_and!10279 () Bool)

(assert (= b_and!10273 (and (=> t!26191 result!8654) b_and!10279)))

(declare-fun tb!6041 () Bool)

(declare-fun t!26193 () Bool)

(assert (=> (and b!162933 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))) (toChars!1011 (transformation!497 (rule!1004 (apply!390 lt!49248 0))))) t!26193) tb!6041))

(declare-fun result!8656 () Bool)

(assert (= result!8656 result!8650))

(assert (=> d!40172 t!26193))

(declare-fun b_and!10281 () Bool)

(assert (= b_and!10269 (and (=> t!26193 result!8656) b_and!10281)))

(declare-fun tb!6043 () Bool)

(declare-fun t!26195 () Bool)

(assert (=> (and b!162363 (= (toChars!1011 (transformation!497 (h!8202 rules!1920))) (toChars!1011 (transformation!497 (rule!1004 (apply!390 lt!49248 0))))) t!26195) tb!6043))

(declare-fun result!8658 () Bool)

(assert (= result!8658 result!8650))

(assert (=> d!40172 t!26195))

(declare-fun b_and!10283 () Bool)

(assert (= b_and!10271 (and (=> t!26195 result!8658) b_and!10283)))

(declare-fun m!153817 () Bool)

(assert (=> d!40172 m!153817))

(declare-fun m!153819 () Bool)

(assert (=> d!40172 m!153819))

(assert (=> b!162833 d!40172))

(declare-fun d!40174 () Bool)

(assert (=> d!40174 (= (head!594 (drop!133 lt!49500 0)) (h!8203 (drop!133 lt!49500 0)))))

(assert (=> b!162833 d!40174))

(declare-fun d!40176 () Bool)

(declare-fun charsToInt!0 (List!2813) (_ BitVec 32))

(assert (=> d!40176 (= (inv!16 (value!18480 (h!8203 tokens!465))) (= (charsToInt!0 (text!4080 (value!18480 (h!8203 tokens!465)))) (value!18471 (value!18480 (h!8203 tokens!465)))))))

(declare-fun bs!15412 () Bool)

(assert (= bs!15412 d!40176))

(declare-fun m!153821 () Bool)

(assert (=> bs!15412 m!153821))

(assert (=> b!162873 d!40176))

(declare-fun d!40178 () Bool)

(declare-fun res!74015 () Bool)

(declare-fun e!98434 () Bool)

(assert (=> d!40178 (=> res!74015 e!98434)))

(assert (=> d!40178 (= res!74015 ((_ is Nil!2805) rules!1920))))

(assert (=> d!40178 (= (noDuplicateTag!137 thiss!17480 rules!1920 Nil!2808) e!98434)))

(declare-fun b!163308 () Bool)

(declare-fun e!98435 () Bool)

(assert (=> b!163308 (= e!98434 e!98435)))

(declare-fun res!74016 () Bool)

(assert (=> b!163308 (=> (not res!74016) (not e!98435))))

(declare-fun contains!448 (List!2818 String!3675) Bool)

(assert (=> b!163308 (= res!74016 (not (contains!448 Nil!2808 (tag!675 (h!8202 rules!1920)))))))

(declare-fun b!163309 () Bool)

(assert (=> b!163309 (= e!98435 (noDuplicateTag!137 thiss!17480 (t!26085 rules!1920) (Cons!2808 (tag!675 (h!8202 rules!1920)) Nil!2808)))))

(assert (= (and d!40178 (not res!74015)) b!163308))

(assert (= (and b!163308 res!74016) b!163309))

(declare-fun m!153823 () Bool)

(assert (=> b!163308 m!153823))

(declare-fun m!153825 () Bool)

(assert (=> b!163309 m!153825))

(assert (=> b!162642 d!40178))

(declare-fun d!40180 () Bool)

(declare-fun c!32637 () Bool)

(assert (=> d!40180 (= c!32637 ((_ is Node!816) (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (value!18480 separatorToken!170)))))))

(declare-fun e!98440 () Bool)

(assert (=> d!40180 (= (inv!3624 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (value!18480 separatorToken!170)))) e!98440)))

(declare-fun b!163316 () Bool)

(declare-fun inv!3626 (Conc!816) Bool)

(assert (=> b!163316 (= e!98440 (inv!3626 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (value!18480 separatorToken!170)))))))

(declare-fun b!163317 () Bool)

(declare-fun e!98441 () Bool)

(assert (=> b!163317 (= e!98440 e!98441)))

(declare-fun res!74019 () Bool)

(assert (=> b!163317 (= res!74019 (not ((_ is Leaf!1404) (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (value!18480 separatorToken!170))))))))

(assert (=> b!163317 (=> res!74019 e!98441)))

(declare-fun b!163318 () Bool)

(declare-fun inv!3627 (Conc!816) Bool)

(assert (=> b!163318 (= e!98441 (inv!3627 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (value!18480 separatorToken!170)))))))

(assert (= (and d!40180 c!32637) b!163316))

(assert (= (and d!40180 (not c!32637)) b!163317))

(assert (= (and b!163317 (not res!74019)) b!163318))

(declare-fun m!153827 () Bool)

(assert (=> b!163316 m!153827))

(declare-fun m!153829 () Bool)

(assert (=> b!163318 m!153829))

(assert (=> b!162627 d!40180))

(declare-fun bm!6932 () Bool)

(declare-fun call!6937 () Bool)

(assert (=> bm!6932 (= call!6937 (ruleDisjointCharsFromAllFromOtherType!30 (h!8202 rules!1920) (t!26085 rules!1920)))))

(declare-fun b!163327 () Bool)

(declare-fun e!98450 () Bool)

(declare-fun e!98449 () Bool)

(assert (=> b!163327 (= e!98450 e!98449)))

(declare-fun res!74025 () Bool)

(assert (=> b!163327 (= res!74025 (not ((_ is Cons!2805) rules!1920)))))

(assert (=> b!163327 (=> res!74025 e!98449)))

(declare-fun d!40182 () Bool)

(declare-fun c!32640 () Bool)

(assert (=> d!40182 (= c!32640 (and ((_ is Cons!2805) rules!1920) (not (= (isSeparator!497 (h!8202 rules!1920)) (isSeparator!497 (h!8202 rules!1920))))))))

(assert (=> d!40182 (= (ruleDisjointCharsFromAllFromOtherType!30 (h!8202 rules!1920) rules!1920) e!98450)))

(declare-fun b!163328 () Bool)

(assert (=> b!163328 (= e!98449 call!6937)))

(declare-fun b!163329 () Bool)

(declare-fun e!98448 () Bool)

(assert (=> b!163329 (= e!98450 e!98448)))

(declare-fun res!74024 () Bool)

(declare-fun rulesUseDisjointChars!21 (Rule!794 Rule!794) Bool)

(assert (=> b!163329 (= res!74024 (rulesUseDisjointChars!21 (h!8202 rules!1920) (h!8202 rules!1920)))))

(assert (=> b!163329 (=> (not res!74024) (not e!98448))))

(declare-fun b!163330 () Bool)

(assert (=> b!163330 (= e!98448 call!6937)))

(assert (= (and d!40182 c!32640) b!163329))

(assert (= (and d!40182 (not c!32640)) b!163327))

(assert (= (and b!163329 res!74024) b!163330))

(assert (= (and b!163327 (not res!74025)) b!163328))

(assert (= (or b!163330 b!163328) bm!6932))

(declare-fun m!153831 () Bool)

(assert (=> bm!6932 m!153831))

(declare-fun m!153833 () Bool)

(assert (=> b!163329 m!153833))

(assert (=> b!162404 d!40182))

(declare-fun d!40184 () Bool)

(declare-fun e!98452 () Bool)

(assert (=> d!40184 e!98452))

(declare-fun res!74027 () Bool)

(assert (=> d!40184 (=> (not res!74027) (not e!98452))))

(declare-fun lt!49686 () List!2814)

(assert (=> d!40184 (= res!74027 (= (content!388 lt!49686) ((_ map or) (content!388 (list!1007 (charsOf!152 (h!8203 tokens!465)))) (content!388 lt!49534))))))

(declare-fun e!98451 () List!2814)

(assert (=> d!40184 (= lt!49686 e!98451)))

(declare-fun c!32641 () Bool)

(assert (=> d!40184 (= c!32641 ((_ is Nil!2804) (list!1007 (charsOf!152 (h!8203 tokens!465)))))))

(assert (=> d!40184 (= (++!626 (list!1007 (charsOf!152 (h!8203 tokens!465))) lt!49534) lt!49686)))

(declare-fun b!163333 () Bool)

(declare-fun res!74026 () Bool)

(assert (=> b!163333 (=> (not res!74026) (not e!98452))))

(assert (=> b!163333 (= res!74026 (= (size!2347 lt!49686) (+ (size!2347 (list!1007 (charsOf!152 (h!8203 tokens!465)))) (size!2347 lt!49534))))))

(declare-fun b!163332 () Bool)

(assert (=> b!163332 (= e!98451 (Cons!2804 (h!8201 (list!1007 (charsOf!152 (h!8203 tokens!465)))) (++!626 (t!26084 (list!1007 (charsOf!152 (h!8203 tokens!465)))) lt!49534)))))

(declare-fun b!163331 () Bool)

(assert (=> b!163331 (= e!98451 lt!49534)))

(declare-fun b!163334 () Bool)

(assert (=> b!163334 (= e!98452 (or (not (= lt!49534 Nil!2804)) (= lt!49686 (list!1007 (charsOf!152 (h!8203 tokens!465))))))))

(assert (= (and d!40184 c!32641) b!163331))

(assert (= (and d!40184 (not c!32641)) b!163332))

(assert (= (and d!40184 res!74027) b!163333))

(assert (= (and b!163333 res!74026) b!163334))

(declare-fun m!153835 () Bool)

(assert (=> d!40184 m!153835))

(assert (=> d!40184 m!152287))

(declare-fun m!153837 () Bool)

(assert (=> d!40184 m!153837))

(declare-fun m!153839 () Bool)

(assert (=> d!40184 m!153839))

(declare-fun m!153841 () Bool)

(assert (=> b!163333 m!153841))

(assert (=> b!163333 m!152287))

(declare-fun m!153843 () Bool)

(assert (=> b!163333 m!153843))

(declare-fun m!153845 () Bool)

(assert (=> b!163333 m!153845))

(declare-fun m!153847 () Bool)

(assert (=> b!163332 m!153847))

(assert (=> b!162895 d!40184))

(declare-fun d!40186 () Bool)

(assert (=> d!40186 (dynLambda!1005 lambda!4482 (h!8203 tokens!465))))

(declare-fun lt!49689 () Unit!2310)

(declare-fun choose!1803 (List!2816 Int Token!738) Unit!2310)

(assert (=> d!40186 (= lt!49689 (choose!1803 tokens!465 lambda!4482 (h!8203 tokens!465)))))

(declare-fun e!98455 () Bool)

(assert (=> d!40186 e!98455))

(declare-fun res!74030 () Bool)

(assert (=> d!40186 (=> (not res!74030) (not e!98455))))

(assert (=> d!40186 (= res!74030 (forall!523 tokens!465 lambda!4482))))

(assert (=> d!40186 (= (forallContained!64 tokens!465 lambda!4482 (h!8203 tokens!465)) lt!49689)))

(declare-fun b!163337 () Bool)

(assert (=> b!163337 (= e!98455 (contains!446 tokens!465 (h!8203 tokens!465)))))

(assert (= (and d!40186 res!74030) b!163337))

(declare-fun b_lambda!3453 () Bool)

(assert (=> (not b_lambda!3453) (not d!40186)))

(declare-fun m!153849 () Bool)

(assert (=> d!40186 m!153849))

(declare-fun m!153851 () Bool)

(assert (=> d!40186 m!153851))

(declare-fun m!153853 () Bool)

(assert (=> d!40186 m!153853))

(assert (=> b!163337 m!152253))

(assert (=> b!162895 d!40186))

(assert (=> b!162895 d!39844))

(declare-fun b!163356 () Bool)

(declare-fun res!74051 () Bool)

(declare-fun e!98464 () Bool)

(assert (=> b!163356 (=> (not res!74051) (not e!98464))))

(declare-fun lt!49700 () Option!276)

(declare-fun get!761 (Option!276) tuple2!2678)

(assert (=> b!163356 (= res!74051 (= (list!1007 (charsOf!152 (_1!1555 (get!761 lt!49700)))) (originalCharacters!540 (_1!1555 (get!761 lt!49700)))))))

(declare-fun b!163357 () Bool)

(declare-fun e!98463 () Option!276)

(declare-fun lt!49703 () Option!276)

(declare-fun lt!49701 () Option!276)

(assert (=> b!163357 (= e!98463 (ite (and ((_ is None!275) lt!49703) ((_ is None!275) lt!49701)) None!275 (ite ((_ is None!275) lt!49701) lt!49703 (ite ((_ is None!275) lt!49703) lt!49701 (ite (>= (size!2343 (_1!1555 (v!13692 lt!49703))) (size!2343 (_1!1555 (v!13692 lt!49701)))) lt!49703 lt!49701)))))))

(declare-fun call!6940 () Option!276)

(assert (=> b!163357 (= lt!49703 call!6940)))

(assert (=> b!163357 (= lt!49701 (maxPrefix!121 thiss!17480 (t!26085 rules!1920) (++!626 (list!1007 (charsOf!152 (h!8203 tokens!465))) lt!49534)))))

(declare-fun b!163358 () Bool)

(declare-fun res!74045 () Bool)

(assert (=> b!163358 (=> (not res!74045) (not e!98464))))

(declare-fun matchR!77 (Regex!721 List!2814) Bool)

(assert (=> b!163358 (= res!74045 (matchR!77 (regex!497 (rule!1004 (_1!1555 (get!761 lt!49700)))) (list!1007 (charsOf!152 (_1!1555 (get!761 lt!49700))))))))

(declare-fun b!163359 () Bool)

(declare-fun e!98462 () Bool)

(assert (=> b!163359 (= e!98462 e!98464)))

(declare-fun res!74046 () Bool)

(assert (=> b!163359 (=> (not res!74046) (not e!98464))))

(declare-fun isDefined!129 (Option!276) Bool)

(assert (=> b!163359 (= res!74046 (isDefined!129 lt!49700))))

(declare-fun b!163360 () Bool)

(assert (=> b!163360 (= e!98463 call!6940)))

(declare-fun b!163361 () Bool)

(declare-fun res!74047 () Bool)

(assert (=> b!163361 (=> (not res!74047) (not e!98464))))

(assert (=> b!163361 (= res!74047 (= (++!626 (list!1007 (charsOf!152 (_1!1555 (get!761 lt!49700)))) (_2!1555 (get!761 lt!49700))) (++!626 (list!1007 (charsOf!152 (h!8203 tokens!465))) lt!49534)))))

(declare-fun b!163362 () Bool)

(declare-fun contains!450 (List!2815 Rule!794) Bool)

(assert (=> b!163362 (= e!98464 (contains!450 rules!1920 (rule!1004 (_1!1555 (get!761 lt!49700)))))))

(declare-fun b!163363 () Bool)

(declare-fun res!74050 () Bool)

(assert (=> b!163363 (=> (not res!74050) (not e!98464))))

(declare-fun apply!394 (TokenValueInjection!810 BalanceConc!1640) TokenValue!519)

(assert (=> b!163363 (= res!74050 (= (value!18480 (_1!1555 (get!761 lt!49700))) (apply!394 (transformation!497 (rule!1004 (_1!1555 (get!761 lt!49700)))) (seqFromList!371 (originalCharacters!540 (_1!1555 (get!761 lt!49700)))))))))

(declare-fun b!163364 () Bool)

(declare-fun res!74048 () Bool)

(assert (=> b!163364 (=> (not res!74048) (not e!98464))))

(assert (=> b!163364 (= res!74048 (< (size!2347 (_2!1555 (get!761 lt!49700))) (size!2347 (++!626 (list!1007 (charsOf!152 (h!8203 tokens!465))) lt!49534))))))

(declare-fun bm!6935 () Bool)

(declare-fun maxPrefixOneRule!65 (LexerInterface!383 Rule!794 List!2814) Option!276)

(assert (=> bm!6935 (= call!6940 (maxPrefixOneRule!65 thiss!17480 (h!8202 rules!1920) (++!626 (list!1007 (charsOf!152 (h!8203 tokens!465))) lt!49534)))))

(declare-fun d!40188 () Bool)

(assert (=> d!40188 e!98462))

(declare-fun res!74049 () Bool)

(assert (=> d!40188 (=> res!74049 e!98462)))

(declare-fun isEmpty!1147 (Option!276) Bool)

(assert (=> d!40188 (= res!74049 (isEmpty!1147 lt!49700))))

(assert (=> d!40188 (= lt!49700 e!98463)))

(declare-fun c!32644 () Bool)

(assert (=> d!40188 (= c!32644 (and ((_ is Cons!2805) rules!1920) ((_ is Nil!2805) (t!26085 rules!1920))))))

(declare-fun lt!49704 () Unit!2310)

(declare-fun lt!49702 () Unit!2310)

(assert (=> d!40188 (= lt!49704 lt!49702)))

(declare-fun isPrefix!221 (List!2814 List!2814) Bool)

(assert (=> d!40188 (isPrefix!221 (++!626 (list!1007 (charsOf!152 (h!8203 tokens!465))) lt!49534) (++!626 (list!1007 (charsOf!152 (h!8203 tokens!465))) lt!49534))))

(declare-fun lemmaIsPrefixRefl!129 (List!2814 List!2814) Unit!2310)

(assert (=> d!40188 (= lt!49702 (lemmaIsPrefixRefl!129 (++!626 (list!1007 (charsOf!152 (h!8203 tokens!465))) lt!49534) (++!626 (list!1007 (charsOf!152 (h!8203 tokens!465))) lt!49534)))))

(assert (=> d!40188 (rulesValidInductive!106 thiss!17480 rules!1920)))

(assert (=> d!40188 (= (maxPrefix!121 thiss!17480 rules!1920 (++!626 (list!1007 (charsOf!152 (h!8203 tokens!465))) lt!49534)) lt!49700)))

(assert (= (and d!40188 c!32644) b!163360))

(assert (= (and d!40188 (not c!32644)) b!163357))

(assert (= (or b!163360 b!163357) bm!6935))

(assert (= (and d!40188 (not res!74049)) b!163359))

(assert (= (and b!163359 res!74046) b!163356))

(assert (= (and b!163356 res!74051) b!163364))

(assert (= (and b!163364 res!74048) b!163361))

(assert (= (and b!163361 res!74047) b!163363))

(assert (= (and b!163363 res!74050) b!163358))

(assert (= (and b!163358 res!74045) b!163362))

(declare-fun m!153855 () Bool)

(assert (=> b!163359 m!153855))

(declare-fun m!153857 () Bool)

(assert (=> b!163358 m!153857))

(declare-fun m!153859 () Bool)

(assert (=> b!163358 m!153859))

(assert (=> b!163358 m!153859))

(declare-fun m!153861 () Bool)

(assert (=> b!163358 m!153861))

(assert (=> b!163358 m!153861))

(declare-fun m!153863 () Bool)

(assert (=> b!163358 m!153863))

(assert (=> bm!6935 m!153205))

(declare-fun m!153865 () Bool)

(assert (=> bm!6935 m!153865))

(assert (=> b!163357 m!153205))

(declare-fun m!153867 () Bool)

(assert (=> b!163357 m!153867))

(assert (=> b!163361 m!153857))

(assert (=> b!163361 m!153859))

(assert (=> b!163361 m!153859))

(assert (=> b!163361 m!153861))

(assert (=> b!163361 m!153861))

(declare-fun m!153869 () Bool)

(assert (=> b!163361 m!153869))

(assert (=> b!163362 m!153857))

(declare-fun m!153871 () Bool)

(assert (=> b!163362 m!153871))

(assert (=> b!163364 m!153857))

(declare-fun m!153873 () Bool)

(assert (=> b!163364 m!153873))

(assert (=> b!163364 m!153205))

(declare-fun m!153875 () Bool)

(assert (=> b!163364 m!153875))

(assert (=> b!163356 m!153857))

(assert (=> b!163356 m!153859))

(assert (=> b!163356 m!153859))

(assert (=> b!163356 m!153861))

(assert (=> b!163363 m!153857))

(declare-fun m!153877 () Bool)

(assert (=> b!163363 m!153877))

(assert (=> b!163363 m!153877))

(declare-fun m!153879 () Bool)

(assert (=> b!163363 m!153879))

(declare-fun m!153881 () Bool)

(assert (=> d!40188 m!153881))

(assert (=> d!40188 m!153205))

(assert (=> d!40188 m!153205))

(declare-fun m!153883 () Bool)

(assert (=> d!40188 m!153883))

(assert (=> d!40188 m!153205))

(assert (=> d!40188 m!153205))

(declare-fun m!153885 () Bool)

(assert (=> d!40188 m!153885))

(assert (=> d!40188 m!153523))

(assert (=> b!162895 d!40188))

(assert (=> b!162895 d!39898))

(assert (=> b!162895 d!39900))

(declare-fun d!40190 () Bool)

(declare-fun e!98467 () Bool)

(assert (=> d!40190 e!98467))

(declare-fun res!74054 () Bool)

(assert (=> d!40190 (=> (not res!74054) (not e!98467))))

(declare-fun lt!49707 () BalanceConc!1640)

(assert (=> d!40190 (= res!74054 (= (list!1007 lt!49707) lt!49247))))

(declare-fun fromList!103 (List!2814) Conc!816)

(assert (=> d!40190 (= lt!49707 (BalanceConc!1641 (fromList!103 lt!49247)))))

(assert (=> d!40190 (= (fromListB!149 lt!49247) lt!49707)))

(declare-fun b!163367 () Bool)

(assert (=> b!163367 (= e!98467 (isBalanced!228 (fromList!103 lt!49247)))))

(assert (= (and d!40190 res!74054) b!163367))

(declare-fun m!153887 () Bool)

(assert (=> d!40190 m!153887))

(declare-fun m!153889 () Bool)

(assert (=> d!40190 m!153889))

(assert (=> b!163367 m!153889))

(assert (=> b!163367 m!153889))

(declare-fun m!153891 () Bool)

(assert (=> b!163367 m!153891))

(assert (=> d!39994 d!40190))

(declare-fun d!40192 () Bool)

(declare-fun res!74055 () Bool)

(declare-fun e!98468 () Bool)

(assert (=> d!40192 (=> res!74055 e!98468)))

(assert (=> d!40192 (= res!74055 ((_ is Nil!2806) (t!26086 tokens!465)))))

(assert (=> d!40192 (= (forall!523 (t!26086 tokens!465) lambda!4448) e!98468)))

(declare-fun b!163368 () Bool)

(declare-fun e!98469 () Bool)

(assert (=> b!163368 (= e!98468 e!98469)))

(declare-fun res!74056 () Bool)

(assert (=> b!163368 (=> (not res!74056) (not e!98469))))

(assert (=> b!163368 (= res!74056 (dynLambda!1005 lambda!4448 (h!8203 (t!26086 tokens!465))))))

(declare-fun b!163369 () Bool)

(assert (=> b!163369 (= e!98469 (forall!523 (t!26086 (t!26086 tokens!465)) lambda!4448))))

(assert (= (and d!40192 (not res!74055)) b!163368))

(assert (= (and b!163368 res!74056) b!163369))

(declare-fun b_lambda!3455 () Bool)

(assert (=> (not b_lambda!3455) (not b!163368)))

(declare-fun m!153893 () Bool)

(assert (=> b!163368 m!153893))

(declare-fun m!153895 () Bool)

(assert (=> b!163369 m!153895))

(assert (=> b!162820 d!40192))

(declare-fun d!40194 () Bool)

(declare-fun lt!49708 () Bool)

(assert (=> d!40194 (= lt!49708 (select (content!389 (t!26086 tokens!465)) (h!8203 tokens!465)))))

(declare-fun e!98470 () Bool)

(assert (=> d!40194 (= lt!49708 e!98470)))

(declare-fun res!74058 () Bool)

(assert (=> d!40194 (=> (not res!74058) (not e!98470))))

(assert (=> d!40194 (= res!74058 ((_ is Cons!2806) (t!26086 tokens!465)))))

(assert (=> d!40194 (= (contains!446 (t!26086 tokens!465) (h!8203 tokens!465)) lt!49708)))

(declare-fun b!163370 () Bool)

(declare-fun e!98471 () Bool)

(assert (=> b!163370 (= e!98470 e!98471)))

(declare-fun res!74057 () Bool)

(assert (=> b!163370 (=> res!74057 e!98471)))

(assert (=> b!163370 (= res!74057 (= (h!8203 (t!26086 tokens!465)) (h!8203 tokens!465)))))

(declare-fun b!163371 () Bool)

(assert (=> b!163371 (= e!98471 (contains!446 (t!26086 (t!26086 tokens!465)) (h!8203 tokens!465)))))

(assert (= (and d!40194 res!74058) b!163370))

(assert (= (and b!163370 (not res!74057)) b!163371))

(declare-fun m!153897 () Bool)

(assert (=> d!40194 m!153897))

(declare-fun m!153899 () Bool)

(assert (=> d!40194 m!153899))

(declare-fun m!153901 () Bool)

(assert (=> b!163371 m!153901))

(assert (=> b!162848 d!40194))

(assert (=> d!39912 d!39980))

(declare-fun d!40196 () Bool)

(assert (=> d!40196 (= (list!1011 (singletonSeq!49 (h!8203 tokens!465))) (list!1015 (c!32409 (singletonSeq!49 (h!8203 tokens!465)))))))

(declare-fun bs!15413 () Bool)

(assert (= bs!15413 d!40196))

(declare-fun m!153903 () Bool)

(assert (=> bs!15413 m!153903))

(assert (=> d!39912 d!40196))

(assert (=> d!39912 d!40088))

(declare-fun d!40198 () Bool)

(assert (=> d!40198 (= (list!1011 (_1!1551 (lex!183 thiss!17480 rules!1920 (print!114 thiss!17480 (singletonSeq!49 (h!8203 tokens!465)))))) (list!1015 (c!32409 (_1!1551 (lex!183 thiss!17480 rules!1920 (print!114 thiss!17480 (singletonSeq!49 (h!8203 tokens!465))))))))))

(declare-fun bs!15414 () Bool)

(assert (= bs!15414 d!40198))

(declare-fun m!153905 () Bool)

(assert (=> bs!15414 m!153905))

(assert (=> d!39912 d!40198))

(assert (=> d!39912 d!40006))

(declare-fun d!40200 () Bool)

(declare-fun lt!49711 () Int)

(assert (=> d!40200 (= lt!49711 (size!2351 (list!1011 (_1!1551 lt!49414))))))

(declare-fun size!2353 (Conc!817) Int)

(assert (=> d!40200 (= lt!49711 (size!2353 (c!32409 (_1!1551 lt!49414))))))

(assert (=> d!40200 (= (size!2348 (_1!1551 lt!49414)) lt!49711)))

(declare-fun bs!15415 () Bool)

(assert (= bs!15415 d!40200))

(declare-fun m!153907 () Bool)

(assert (=> bs!15415 m!153907))

(assert (=> bs!15415 m!153907))

(declare-fun m!153909 () Bool)

(assert (=> bs!15415 m!153909))

(declare-fun m!153911 () Bool)

(assert (=> bs!15415 m!153911))

(assert (=> d!39912 d!40200))

(assert (=> d!39912 d!40090))

(declare-fun d!40202 () Bool)

(declare-fun lt!49712 () BalanceConc!1640)

(assert (=> d!40202 (= (list!1007 lt!49712) (originalCharacters!540 call!6907))))

(assert (=> d!40202 (= lt!49712 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 call!6907))) (value!18480 call!6907)))))

(assert (=> d!40202 (= (charsOf!152 call!6907) lt!49712)))

(declare-fun b_lambda!3457 () Bool)

(assert (=> (not b_lambda!3457) (not d!40202)))

(declare-fun tb!6045 () Bool)

(declare-fun t!26197 () Bool)

(assert (=> (and b!162952 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 rules!1920)))) (toChars!1011 (transformation!497 (rule!1004 call!6907)))) t!26197) tb!6045))

(declare-fun b!163372 () Bool)

(declare-fun e!98472 () Bool)

(declare-fun tp!82412 () Bool)

(assert (=> b!163372 (= e!98472 (and (inv!3624 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 call!6907))) (value!18480 call!6907)))) tp!82412))))

(declare-fun result!8660 () Bool)

(assert (=> tb!6045 (= result!8660 (and (inv!3625 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 call!6907))) (value!18480 call!6907))) e!98472))))

(assert (= tb!6045 b!163372))

(declare-fun m!153913 () Bool)

(assert (=> b!163372 m!153913))

(declare-fun m!153915 () Bool)

(assert (=> tb!6045 m!153915))

(assert (=> d!40202 t!26197))

(declare-fun b_and!10285 () Bool)

(assert (= b_and!10275 (and (=> t!26197 result!8660) b_and!10285)))

(declare-fun tb!6047 () Bool)

(declare-fun t!26199 () Bool)

(assert (=> (and b!162363 (= (toChars!1011 (transformation!497 (h!8202 rules!1920))) (toChars!1011 (transformation!497 (rule!1004 call!6907)))) t!26199) tb!6047))

(declare-fun result!8662 () Bool)

(assert (= result!8662 result!8660))

(assert (=> d!40202 t!26199))

(declare-fun b_and!10287 () Bool)

(assert (= b_and!10283 (and (=> t!26199 result!8662) b_and!10287)))

(declare-fun t!26201 () Bool)

(declare-fun tb!6049 () Bool)

(assert (=> (and b!162933 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))) (toChars!1011 (transformation!497 (rule!1004 call!6907)))) t!26201) tb!6049))

(declare-fun result!8664 () Bool)

(assert (= result!8664 result!8660))

(assert (=> d!40202 t!26201))

(declare-fun b_and!10289 () Bool)

(assert (= b_and!10281 (and (=> t!26201 result!8664) b_and!10289)))

(declare-fun tb!6051 () Bool)

(declare-fun t!26203 () Bool)

(assert (=> (and b!162354 (= (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (toChars!1011 (transformation!497 (rule!1004 call!6907)))) t!26203) tb!6051))

(declare-fun result!8666 () Bool)

(assert (= result!8666 result!8660))

(assert (=> d!40202 t!26203))

(declare-fun b_and!10291 () Bool)

(assert (= b_and!10279 (and (=> t!26203 result!8666) b_and!10291)))

(declare-fun t!26205 () Bool)

(declare-fun tb!6053 () Bool)

(assert (=> (and b!162366 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (toChars!1011 (transformation!497 (rule!1004 call!6907)))) t!26205) tb!6053))

(declare-fun result!8668 () Bool)

(assert (= result!8668 result!8660))

(assert (=> d!40202 t!26205))

(declare-fun b_and!10293 () Bool)

(assert (= b_and!10277 (and (=> t!26205 result!8668) b_and!10293)))

(declare-fun m!153917 () Bool)

(assert (=> d!40202 m!153917))

(declare-fun m!153919 () Bool)

(assert (=> d!40202 m!153919))

(assert (=> b!162884 d!40202))

(declare-fun d!40204 () Bool)

(declare-fun lt!49715 () Int)

(assert (=> d!40204 (>= lt!49715 0)))

(declare-fun e!98475 () Int)

(assert (=> d!40204 (= lt!49715 e!98475)))

(declare-fun c!32648 () Bool)

(assert (=> d!40204 (= c!32648 ((_ is Nil!2804) lt!49479))))

(assert (=> d!40204 (= (size!2347 lt!49479) lt!49715)))

(declare-fun b!163377 () Bool)

(assert (=> b!163377 (= e!98475 0)))

(declare-fun b!163378 () Bool)

(assert (=> b!163378 (= e!98475 (+ 1 (size!2347 (t!26084 lt!49479))))))

(assert (= (and d!40204 c!32648) b!163377))

(assert (= (and d!40204 (not c!32648)) b!163378))

(declare-fun m!153921 () Bool)

(assert (=> b!163378 m!153921))

(assert (=> b!162823 d!40204))

(declare-fun d!40206 () Bool)

(declare-fun lt!49716 () Int)

(assert (=> d!40206 (>= lt!49716 0)))

(declare-fun e!98476 () Int)

(assert (=> d!40206 (= lt!49716 e!98476)))

(declare-fun c!32649 () Bool)

(assert (=> d!40206 (= c!32649 ((_ is Nil!2804) lt!49240))))

(assert (=> d!40206 (= (size!2347 lt!49240) lt!49716)))

(declare-fun b!163379 () Bool)

(assert (=> b!163379 (= e!98476 0)))

(declare-fun b!163380 () Bool)

(assert (=> b!163380 (= e!98476 (+ 1 (size!2347 (t!26084 lt!49240))))))

(assert (= (and d!40206 c!32649) b!163379))

(assert (= (and d!40206 (not c!32649)) b!163380))

(assert (=> b!163380 m!153447))

(assert (=> b!162823 d!40206))

(declare-fun d!40208 () Bool)

(declare-fun lt!49717 () Int)

(assert (=> d!40208 (>= lt!49717 0)))

(declare-fun e!98477 () Int)

(assert (=> d!40208 (= lt!49717 e!98477)))

(declare-fun c!32650 () Bool)

(assert (=> d!40208 (= c!32650 ((_ is Nil!2804) lt!49246))))

(assert (=> d!40208 (= (size!2347 lt!49246) lt!49717)))

(declare-fun b!163381 () Bool)

(assert (=> b!163381 (= e!98477 0)))

(declare-fun b!163382 () Bool)

(assert (=> b!163382 (= e!98477 (+ 1 (size!2347 (t!26084 lt!49246))))))

(assert (= (and d!40208 c!32650) b!163381))

(assert (= (and d!40208 (not c!32650)) b!163382))

(declare-fun m!153923 () Bool)

(assert (=> b!163382 m!153923))

(assert (=> b!162823 d!40208))

(declare-fun bs!15416 () Bool)

(declare-fun b!163386 () Bool)

(assert (= bs!15416 (and b!163386 b!162538)))

(declare-fun lambda!4497 () Int)

(assert (=> bs!15416 (= lambda!4497 lambda!4456)))

(declare-fun bs!15417 () Bool)

(assert (= bs!15417 (and b!163386 b!162895)))

(assert (=> bs!15417 (= lambda!4497 lambda!4482)))

(declare-fun bs!15418 () Bool)

(assert (= bs!15418 (and b!163386 b!162881)))

(assert (=> bs!15418 (= lambda!4497 lambda!4481)))

(declare-fun bs!15419 () Bool)

(assert (= bs!15419 (and b!163386 b!162350)))

(assert (=> bs!15419 (= lambda!4497 lambda!4448)))

(declare-fun bs!15420 () Bool)

(assert (= bs!15420 (and b!163386 b!162362)))

(assert (=> bs!15420 (not (= lambda!4497 lambda!4447))))

(declare-fun bs!15421 () Bool)

(assert (= bs!15421 (and b!163386 d!39888)))

(assert (=> bs!15421 (not (= lambda!4497 lambda!4464))))

(declare-fun bs!15422 () Bool)

(assert (= bs!15422 (and b!163386 d!39988)))

(assert (=> bs!15422 (= lambda!4497 lambda!4479)))

(declare-fun bs!15423 () Bool)

(assert (= bs!15423 (and b!163386 d!40002)))

(assert (=> bs!15423 (not (= lambda!4497 lambda!4480))))

(declare-fun bs!15424 () Bool)

(assert (= bs!15424 (and b!163386 b!162616)))

(assert (=> bs!15424 (= lambda!4497 lambda!4465)))

(declare-fun b!163393 () Bool)

(declare-fun e!98484 () Bool)

(assert (=> b!163393 (= e!98484 true)))

(declare-fun b!163392 () Bool)

(declare-fun e!98483 () Bool)

(assert (=> b!163392 (= e!98483 e!98484)))

(declare-fun b!163391 () Bool)

(declare-fun e!98482 () Bool)

(assert (=> b!163391 (= e!98482 e!98483)))

(assert (=> b!163386 e!98482))

(assert (= b!163392 b!163393))

(assert (= b!163391 b!163392))

(assert (= (and b!163386 ((_ is Cons!2805) rules!1920)) b!163391))

(assert (=> b!163393 (< (dynLambda!999 order!1425 (toValue!1152 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1000 order!1427 lambda!4497))))

(assert (=> b!163393 (< (dynLambda!1001 order!1429 (toChars!1011 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1000 order!1427 lambda!4497))))

(assert (=> b!163386 true))

(declare-fun b!163383 () Bool)

(declare-fun e!98478 () BalanceConc!1640)

(assert (=> b!163383 (= e!98478 (charsOf!152 separatorToken!170))))

(declare-fun b!163384 () Bool)

(declare-fun e!98479 () List!2814)

(assert (=> b!163384 (= e!98479 Nil!2804)))

(declare-fun b!163385 () Bool)

(declare-fun c!32653 () Bool)

(declare-fun lt!49719 () Option!276)

(assert (=> b!163385 (= c!32653 (and ((_ is Some!275) lt!49719) (not (= (_1!1555 (v!13692 lt!49719)) (h!8203 (dropList!80 lt!49245 0))))))))

(declare-fun e!98481 () List!2814)

(declare-fun e!98480 () List!2814)

(assert (=> b!163385 (= e!98481 e!98480)))

(declare-fun bm!6937 () Bool)

(declare-fun call!6942 () BalanceConc!1640)

(assert (=> bm!6937 (= call!6942 (charsOf!152 (h!8203 (dropList!80 lt!49245 0))))))

(assert (=> b!163386 (= e!98479 e!98481)))

(declare-fun lt!49721 () Unit!2310)

(assert (=> b!163386 (= lt!49721 (forallContained!64 (dropList!80 lt!49245 0) lambda!4497 (h!8203 (dropList!80 lt!49245 0))))))

(declare-fun lt!49723 () List!2814)

(assert (=> b!163386 (= lt!49723 (printWithSeparatorTokenWhenNeededList!76 thiss!17480 rules!1920 (t!26086 (dropList!80 lt!49245 0)) separatorToken!170))))

(assert (=> b!163386 (= lt!49719 (maxPrefix!121 thiss!17480 rules!1920 (++!626 (list!1007 (charsOf!152 (h!8203 (dropList!80 lt!49245 0)))) lt!49723)))))

(declare-fun c!32652 () Bool)

(assert (=> b!163386 (= c!32652 (and ((_ is Some!275) lt!49719) (= (_1!1555 (v!13692 lt!49719)) (h!8203 (dropList!80 lt!49245 0)))))))

(declare-fun b!163387 () Bool)

(declare-fun call!6944 () BalanceConc!1640)

(assert (=> b!163387 (= e!98478 call!6944)))

(declare-fun bm!6938 () Bool)

(assert (=> bm!6938 (= call!6944 call!6942)))

(declare-fun call!6943 () List!2814)

(declare-fun bm!6939 () Bool)

(declare-fun call!6941 () List!2814)

(declare-fun call!6945 () List!2814)

(assert (=> bm!6939 (= call!6943 (++!626 call!6941 (ite c!32652 lt!49723 call!6945)))))

(declare-fun bm!6940 () Bool)

(assert (=> bm!6940 (= call!6945 (list!1007 e!98478))))

(declare-fun c!32654 () Bool)

(assert (=> bm!6940 (= c!32654 c!32653)))

(declare-fun b!163388 () Bool)

(assert (=> b!163388 (= e!98480 (++!626 call!6943 lt!49723))))

(declare-fun b!163389 () Bool)

(assert (=> b!163389 (= e!98481 call!6943)))

(declare-fun b!163390 () Bool)

(assert (=> b!163390 (= e!98480 Nil!2804)))

(assert (=> b!163390 (= (print!114 thiss!17480 (singletonSeq!49 (h!8203 (dropList!80 lt!49245 0)))) (printTailRec!77 thiss!17480 (singletonSeq!49 (h!8203 (dropList!80 lt!49245 0))) 0 (BalanceConc!1641 Empty!816)))))

(declare-fun lt!49720 () Unit!2310)

(declare-fun Unit!2332 () Unit!2310)

(assert (=> b!163390 (= lt!49720 Unit!2332)))

(declare-fun lt!49718 () Unit!2310)

(assert (=> b!163390 (= lt!49718 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!28 thiss!17480 rules!1920 call!6945 lt!49723))))

(assert (=> b!163390 false))

(declare-fun lt!49722 () Unit!2310)

(declare-fun Unit!2333 () Unit!2310)

(assert (=> b!163390 (= lt!49722 Unit!2333)))

(declare-fun bm!6936 () Bool)

(assert (=> bm!6936 (= call!6941 (list!1007 (ite c!32652 call!6942 call!6944)))))

(declare-fun d!40210 () Bool)

(declare-fun c!32651 () Bool)

(assert (=> d!40210 (= c!32651 ((_ is Cons!2806) (dropList!80 lt!49245 0)))))

(assert (=> d!40210 (= (printWithSeparatorTokenWhenNeededList!76 thiss!17480 rules!1920 (dropList!80 lt!49245 0) separatorToken!170) e!98479)))

(assert (= (and d!40210 c!32651) b!163386))

(assert (= (and d!40210 (not c!32651)) b!163384))

(assert (= (and b!163386 c!32652) b!163389))

(assert (= (and b!163386 (not c!32652)) b!163385))

(assert (= (and b!163385 c!32653) b!163388))

(assert (= (and b!163385 (not c!32653)) b!163390))

(assert (= (or b!163388 b!163390) bm!6938))

(assert (= (or b!163388 b!163390) bm!6940))

(assert (= (and bm!6940 c!32654) b!163383))

(assert (= (and bm!6940 (not c!32654)) b!163387))

(assert (= (or b!163389 bm!6938) bm!6937))

(assert (= (or b!163389 b!163388) bm!6936))

(assert (= (or b!163389 b!163388) bm!6939))

(declare-fun m!153925 () Bool)

(assert (=> b!163390 m!153925))

(assert (=> b!163390 m!153925))

(declare-fun m!153927 () Bool)

(assert (=> b!163390 m!153927))

(assert (=> b!163390 m!153925))

(declare-fun m!153929 () Bool)

(assert (=> b!163390 m!153929))

(declare-fun m!153931 () Bool)

(assert (=> b!163390 m!153931))

(declare-fun m!153933 () Bool)

(assert (=> b!163386 m!153933))

(declare-fun m!153935 () Bool)

(assert (=> b!163386 m!153935))

(declare-fun m!153937 () Bool)

(assert (=> b!163386 m!153937))

(assert (=> b!163386 m!153937))

(declare-fun m!153939 () Bool)

(assert (=> b!163386 m!153939))

(assert (=> b!163386 m!153175))

(declare-fun m!153941 () Bool)

(assert (=> b!163386 m!153941))

(declare-fun m!153943 () Bool)

(assert (=> b!163386 m!153943))

(assert (=> b!163386 m!153943))

(assert (=> b!163386 m!153935))

(assert (=> bm!6937 m!153943))

(declare-fun m!153945 () Bool)

(assert (=> bm!6939 m!153945))

(declare-fun m!153947 () Bool)

(assert (=> bm!6940 m!153947))

(declare-fun m!153949 () Bool)

(assert (=> bm!6936 m!153949))

(declare-fun m!153951 () Bool)

(assert (=> b!163388 m!153951))

(assert (=> b!163383 m!152273))

(assert (=> d!40002 d!40210))

(declare-fun d!40212 () Bool)

(declare-fun lt!49724 () Int)

(assert (=> d!40212 (= lt!49724 (size!2351 (list!1011 lt!49245)))))

(assert (=> d!40212 (= lt!49724 (size!2353 (c!32409 lt!49245)))))

(assert (=> d!40212 (= (size!2348 lt!49245) lt!49724)))

(declare-fun bs!15425 () Bool)

(assert (= bs!15425 d!40212))

(assert (=> bs!15425 m!153103))

(assert (=> bs!15425 m!153103))

(declare-fun m!153953 () Bool)

(assert (=> bs!15425 m!153953))

(declare-fun m!153955 () Bool)

(assert (=> bs!15425 m!153955))

(assert (=> d!40002 d!40212))

(declare-fun d!40214 () Bool)

(assert (=> d!40214 (= (dropList!80 lt!49245 0) (drop!133 (list!1015 (c!32409 lt!49245)) 0))))

(declare-fun bs!15426 () Bool)

(assert (= bs!15426 d!40214))

(declare-fun m!153957 () Bool)

(assert (=> bs!15426 m!153957))

(assert (=> bs!15426 m!153957))

(declare-fun m!153959 () Bool)

(assert (=> bs!15426 m!153959))

(assert (=> d!40002 d!40214))

(declare-fun d!40216 () Bool)

(assert (=> d!40216 (= (list!1007 lt!49518) (list!1010 (c!32407 lt!49518)))))

(declare-fun bs!15427 () Bool)

(assert (= bs!15427 d!40216))

(declare-fun m!153961 () Bool)

(assert (=> bs!15427 m!153961))

(assert (=> d!40002 d!40216))

(declare-fun d!40218 () Bool)

(assert (=> d!40218 (forall!523 (dropList!80 lt!49245 0) lambda!4480)))

(declare-fun lt!49727 () Unit!2310)

(declare-fun choose!1804 (List!2816 List!2816 Int) Unit!2310)

(assert (=> d!40218 (= lt!49727 (choose!1804 (list!1011 lt!49245) (dropList!80 lt!49245 0) lambda!4480))))

(assert (=> d!40218 (forall!523 (list!1011 lt!49245) lambda!4480)))

(assert (=> d!40218 (= (lemmaContentSubsetPreservesForall!24 (list!1011 lt!49245) (dropList!80 lt!49245 0) lambda!4480) lt!49727)))

(declare-fun bs!15428 () Bool)

(assert (= bs!15428 d!40218))

(assert (=> bs!15428 m!153175))

(declare-fun m!153963 () Bool)

(assert (=> bs!15428 m!153963))

(assert (=> bs!15428 m!153103))

(assert (=> bs!15428 m!153175))

(declare-fun m!153965 () Bool)

(assert (=> bs!15428 m!153965))

(assert (=> bs!15428 m!153103))

(declare-fun m!153967 () Bool)

(assert (=> bs!15428 m!153967))

(assert (=> d!40002 d!40218))

(declare-fun d!40220 () Bool)

(assert (=> d!40220 (= (list!1011 lt!49245) (list!1015 (c!32409 lt!49245)))))

(declare-fun bs!15429 () Bool)

(assert (= bs!15429 d!40220))

(assert (=> bs!15429 m!153957))

(assert (=> d!40002 d!40220))

(declare-fun d!40222 () Bool)

(declare-fun lt!49728 () Int)

(assert (=> d!40222 (>= lt!49728 0)))

(declare-fun e!98485 () Int)

(assert (=> d!40222 (= lt!49728 e!98485)))

(declare-fun c!32655 () Bool)

(assert (=> d!40222 (= c!32655 ((_ is Nil!2804) lt!49365))))

(assert (=> d!40222 (= (size!2347 lt!49365) lt!49728)))

(declare-fun b!163394 () Bool)

(assert (=> b!163394 (= e!98485 0)))

(declare-fun b!163395 () Bool)

(assert (=> b!163395 (= e!98485 (+ 1 (size!2347 (t!26084 lt!49365))))))

(assert (= (and d!40222 c!32655) b!163394))

(assert (= (and d!40222 (not c!32655)) b!163395))

(declare-fun m!153969 () Bool)

(assert (=> b!163395 m!153969))

(assert (=> b!162634 d!40222))

(declare-fun d!40224 () Bool)

(declare-fun lt!49729 () Int)

(assert (=> d!40224 (>= lt!49729 0)))

(declare-fun e!98486 () Int)

(assert (=> d!40224 (= lt!49729 e!98486)))

(declare-fun c!32656 () Bool)

(assert (=> d!40224 (= c!32656 ((_ is Nil!2804) lt!49241))))

(assert (=> d!40224 (= (size!2347 lt!49241) lt!49729)))

(declare-fun b!163396 () Bool)

(assert (=> b!163396 (= e!98486 0)))

(declare-fun b!163397 () Bool)

(assert (=> b!163397 (= e!98486 (+ 1 (size!2347 (t!26084 lt!49241))))))

(assert (= (and d!40224 c!32656) b!163396))

(assert (= (and d!40224 (not c!32656)) b!163397))

(assert (=> b!163397 m!153437))

(assert (=> b!162634 d!40224))

(assert (=> b!162634 d!40208))

(declare-fun d!40226 () Bool)

(declare-fun e!98488 () Bool)

(assert (=> d!40226 e!98488))

(declare-fun res!74060 () Bool)

(assert (=> d!40226 (=> (not res!74060) (not e!98488))))

(declare-fun lt!49730 () List!2814)

(assert (=> d!40226 (= res!74060 (= (content!388 lt!49730) ((_ map or) (content!388 (t!26084 lt!49240)) (content!388 lt!49243))))))

(declare-fun e!98487 () List!2814)

(assert (=> d!40226 (= lt!49730 e!98487)))

(declare-fun c!32657 () Bool)

(assert (=> d!40226 (= c!32657 ((_ is Nil!2804) (t!26084 lt!49240)))))

(assert (=> d!40226 (= (++!626 (t!26084 lt!49240) lt!49243) lt!49730)))

(declare-fun b!163400 () Bool)

(declare-fun res!74059 () Bool)

(assert (=> b!163400 (=> (not res!74059) (not e!98488))))

(assert (=> b!163400 (= res!74059 (= (size!2347 lt!49730) (+ (size!2347 (t!26084 lt!49240)) (size!2347 lt!49243))))))

(declare-fun b!163399 () Bool)

(assert (=> b!163399 (= e!98487 (Cons!2804 (h!8201 (t!26084 lt!49240)) (++!626 (t!26084 (t!26084 lt!49240)) lt!49243)))))

(declare-fun b!163398 () Bool)

(assert (=> b!163398 (= e!98487 lt!49243)))

(declare-fun b!163401 () Bool)

(assert (=> b!163401 (= e!98488 (or (not (= lt!49243 Nil!2804)) (= lt!49730 (t!26084 lt!49240))))))

(assert (= (and d!40226 c!32657) b!163398))

(assert (= (and d!40226 (not c!32657)) b!163399))

(assert (= (and d!40226 res!74060) b!163400))

(assert (= (and b!163400 res!74059) b!163401))

(declare-fun m!153971 () Bool)

(assert (=> d!40226 m!153971))

(assert (=> d!40226 m!153443))

(assert (=> d!40226 m!152679))

(declare-fun m!153973 () Bool)

(assert (=> b!163400 m!153973))

(assert (=> b!163400 m!153447))

(assert (=> b!163400 m!152683))

(declare-fun m!153975 () Bool)

(assert (=> b!163399 m!153975))

(assert (=> b!162629 d!40226))

(declare-fun d!40228 () Bool)

(assert (=> d!40228 (= (list!1007 e!97951) (list!1010 (c!32407 e!97951)))))

(declare-fun bs!15430 () Bool)

(assert (= bs!15430 d!40228))

(declare-fun m!153977 () Bool)

(assert (=> bs!15430 m!153977))

(assert (=> bm!6846 d!40228))

(declare-fun d!40230 () Bool)

(assert (=> d!40230 (= (isEmpty!1141 (originalCharacters!540 separatorToken!170)) ((_ is Nil!2804) (originalCharacters!540 separatorToken!170)))))

(assert (=> d!39968 d!40230))

(declare-fun d!40232 () Bool)

(declare-fun e!98489 () Bool)

(assert (=> d!40232 e!98489))

(declare-fun res!74061 () Bool)

(assert (=> d!40232 (=> (not res!74061) (not e!98489))))

(declare-fun lt!49753 () BalanceConc!1640)

(assert (=> d!40232 (= res!74061 (= (list!1007 lt!49753) lt!49240))))

(assert (=> d!40232 (= lt!49753 (BalanceConc!1641 (fromList!103 lt!49240)))))

(assert (=> d!40232 (= (fromListB!149 lt!49240) lt!49753)))

(declare-fun b!163402 () Bool)

(assert (=> b!163402 (= e!98489 (isBalanced!228 (fromList!103 lt!49240)))))

(assert (= (and d!40232 res!74061) b!163402))

(declare-fun m!153979 () Bool)

(assert (=> d!40232 m!153979))

(declare-fun m!153981 () Bool)

(assert (=> d!40232 m!153981))

(assert (=> b!163402 m!153981))

(assert (=> b!163402 m!153981))

(declare-fun m!153983 () Bool)

(assert (=> b!163402 m!153983))

(assert (=> d!39962 d!40232))

(declare-fun d!40234 () Bool)

(declare-fun c!32658 () Bool)

(assert (=> d!40234 (= c!32658 ((_ is Nil!2804) lt!49300))))

(declare-fun e!98492 () (InoxSet C!2364))

(assert (=> d!40234 (= (content!388 lt!49300) e!98492)))

(declare-fun b!163407 () Bool)

(assert (=> b!163407 (= e!98492 ((as const (Array C!2364 Bool)) false))))

(declare-fun b!163408 () Bool)

(assert (=> b!163408 (= e!98492 ((_ map or) (store ((as const (Array C!2364 Bool)) false) (h!8201 lt!49300) true) (content!388 (t!26084 lt!49300))))))

(assert (= (and d!40234 c!32658) b!163407))

(assert (= (and d!40234 (not c!32658)) b!163408))

(declare-fun m!153985 () Bool)

(assert (=> b!163408 m!153985))

(declare-fun m!153987 () Bool)

(assert (=> b!163408 m!153987))

(assert (=> d!39886 d!40234))

(assert (=> d!39886 d!40126))

(assert (=> d!39886 d!40118))

(declare-fun d!40236 () Bool)

(assert (=> d!40236 (= (list!1011 (_1!1551 lt!49478)) (list!1015 (c!32409 (_1!1551 lt!49478))))))

(declare-fun bs!15431 () Bool)

(assert (= bs!15431 d!40236))

(declare-fun m!153989 () Bool)

(assert (=> bs!15431 m!153989))

(assert (=> b!162815 d!40236))

(declare-fun b!163449 () Bool)

(declare-fun e!98520 () Bool)

(declare-fun lt!49793 () tuple2!2682)

(assert (=> b!163449 (= e!98520 (not (isEmpty!1143 (_1!1557 lt!49793))))))

(declare-fun b!163450 () Bool)

(declare-fun e!98521 () tuple2!2682)

(assert (=> b!163450 (= e!98521 (tuple2!2683 Nil!2806 (list!1007 (seqFromList!371 lt!49240))))))

(declare-fun b!163451 () Bool)

(declare-fun e!98519 () Bool)

(assert (=> b!163451 (= e!98519 e!98520)))

(declare-fun res!74083 () Bool)

(assert (=> b!163451 (= res!74083 (< (size!2347 (_2!1557 lt!49793)) (size!2347 (list!1007 (seqFromList!371 lt!49240)))))))

(assert (=> b!163451 (=> (not res!74083) (not e!98520))))

(declare-fun b!163452 () Bool)

(assert (=> b!163452 (= e!98519 (= (_2!1557 lt!49793) (list!1007 (seqFromList!371 lt!49240))))))

(declare-fun b!163453 () Bool)

(declare-fun lt!49795 () Option!276)

(declare-fun lt!49794 () tuple2!2682)

(assert (=> b!163453 (= e!98521 (tuple2!2683 (Cons!2806 (_1!1555 (v!13692 lt!49795)) (_1!1557 lt!49794)) (_2!1557 lt!49794)))))

(assert (=> b!163453 (= lt!49794 (lexList!105 thiss!17480 rules!1920 (_2!1555 (v!13692 lt!49795))))))

(declare-fun d!40238 () Bool)

(assert (=> d!40238 e!98519))

(declare-fun c!32670 () Bool)

(assert (=> d!40238 (= c!32670 (> (size!2351 (_1!1557 lt!49793)) 0))))

(assert (=> d!40238 (= lt!49793 e!98521)))

(declare-fun c!32671 () Bool)

(assert (=> d!40238 (= c!32671 ((_ is Some!275) lt!49795))))

(assert (=> d!40238 (= lt!49795 (maxPrefix!121 thiss!17480 rules!1920 (list!1007 (seqFromList!371 lt!49240))))))

(assert (=> d!40238 (= (lexList!105 thiss!17480 rules!1920 (list!1007 (seqFromList!371 lt!49240))) lt!49793)))

(assert (= (and d!40238 c!32671) b!163453))

(assert (= (and d!40238 (not c!32671)) b!163450))

(assert (= (and d!40238 c!32670) b!163451))

(assert (= (and d!40238 (not c!32670)) b!163452))

(assert (= (and b!163451 res!74083) b!163449))

(declare-fun m!154105 () Bool)

(assert (=> b!163449 m!154105))

(declare-fun m!154107 () Bool)

(assert (=> b!163451 m!154107))

(assert (=> b!163451 m!152997))

(declare-fun m!154109 () Bool)

(assert (=> b!163451 m!154109))

(declare-fun m!154113 () Bool)

(assert (=> b!163453 m!154113))

(declare-fun m!154117 () Bool)

(assert (=> d!40238 m!154117))

(assert (=> d!40238 m!152997))

(declare-fun m!154121 () Bool)

(assert (=> d!40238 m!154121))

(assert (=> b!162815 d!40238))

(declare-fun d!40266 () Bool)

(assert (=> d!40266 (= (list!1007 (seqFromList!371 lt!49240)) (list!1010 (c!32407 (seqFromList!371 lt!49240))))))

(declare-fun bs!15435 () Bool)

(assert (= bs!15435 d!40266))

(declare-fun m!154123 () Bool)

(assert (=> bs!15435 m!154123))

(assert (=> b!162815 d!40266))

(declare-fun d!40270 () Bool)

(assert (=> d!40270 true))

(declare-fun lambda!4500 () Int)

(declare-fun order!1435 () Int)

(declare-fun dynLambda!1008 (Int Int) Int)

(assert (=> d!40270 (< (dynLambda!999 order!1425 (toValue!1152 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1008 order!1435 lambda!4500))))

(declare-fun Forall2!108 (Int) Bool)

(assert (=> d!40270 (= (equivClasses!154 (toChars!1011 (transformation!497 (h!8202 rules!1920))) (toValue!1152 (transformation!497 (h!8202 rules!1920)))) (Forall2!108 lambda!4500))))

(declare-fun bs!15441 () Bool)

(assert (= bs!15441 d!40270))

(declare-fun m!154173 () Bool)

(assert (=> bs!15441 m!154173))

(assert (=> b!162643 d!40270))

(declare-fun b!163478 () Bool)

(declare-fun res!74094 () Bool)

(declare-fun e!98534 () Bool)

(assert (=> b!163478 (=> (not res!74094) (not e!98534))))

(assert (=> b!163478 (= res!74094 (>= (height!86 (++!630 (c!32407 e!97998) (c!32407 (ite c!32464 lt!49349 call!6880)))) (max!0 (height!86 (c!32407 e!97998)) (height!86 (c!32407 (ite c!32464 lt!49349 call!6880))))))))

(declare-fun b!163476 () Bool)

(declare-fun res!74095 () Bool)

(assert (=> b!163476 (=> (not res!74095) (not e!98534))))

(assert (=> b!163476 (= res!74095 (isBalanced!228 (++!630 (c!32407 e!97998) (c!32407 (ite c!32464 lt!49349 call!6880)))))))

(declare-fun b!163479 () Bool)

(declare-fun lt!49803 () BalanceConc!1640)

(assert (=> b!163479 (= e!98534 (= (list!1007 lt!49803) (++!626 (list!1007 e!97998) (list!1007 (ite c!32464 lt!49349 call!6880)))))))

(declare-fun b!163477 () Bool)

(declare-fun res!74097 () Bool)

(assert (=> b!163477 (=> (not res!74097) (not e!98534))))

(assert (=> b!163477 (= res!74097 (<= (height!86 (++!630 (c!32407 e!97998) (c!32407 (ite c!32464 lt!49349 call!6880)))) (+ (max!0 (height!86 (c!32407 e!97998)) (height!86 (c!32407 (ite c!32464 lt!49349 call!6880)))) 1)))))

(declare-fun d!40292 () Bool)

(assert (=> d!40292 e!98534))

(declare-fun res!74096 () Bool)

(assert (=> d!40292 (=> (not res!74096) (not e!98534))))

(assert (=> d!40292 (= res!74096 (appendAssocInst!27 (c!32407 e!97998) (c!32407 (ite c!32464 lt!49349 call!6880))))))

(assert (=> d!40292 (= lt!49803 (BalanceConc!1641 (++!630 (c!32407 e!97998) (c!32407 (ite c!32464 lt!49349 call!6880)))))))

(assert (=> d!40292 (= (++!628 e!97998 (ite c!32464 lt!49349 call!6880)) lt!49803)))

(assert (= (and d!40292 res!74096) b!163476))

(assert (= (and b!163476 res!74095) b!163477))

(assert (= (and b!163477 res!74097) b!163478))

(assert (= (and b!163478 res!74094) b!163479))

(declare-fun m!154175 () Bool)

(assert (=> b!163477 m!154175))

(declare-fun m!154177 () Bool)

(assert (=> b!163477 m!154177))

(declare-fun m!154179 () Bool)

(assert (=> b!163477 m!154179))

(assert (=> b!163477 m!154175))

(declare-fun m!154181 () Bool)

(assert (=> b!163477 m!154181))

(assert (=> b!163477 m!154177))

(assert (=> b!163477 m!154181))

(declare-fun m!154183 () Bool)

(assert (=> b!163477 m!154183))

(assert (=> b!163476 m!154181))

(assert (=> b!163476 m!154181))

(declare-fun m!154185 () Bool)

(assert (=> b!163476 m!154185))

(declare-fun m!154187 () Bool)

(assert (=> b!163479 m!154187))

(declare-fun m!154189 () Bool)

(assert (=> b!163479 m!154189))

(declare-fun m!154191 () Bool)

(assert (=> b!163479 m!154191))

(assert (=> b!163479 m!154189))

(assert (=> b!163479 m!154191))

(declare-fun m!154193 () Bool)

(assert (=> b!163479 m!154193))

(assert (=> b!163478 m!154175))

(assert (=> b!163478 m!154177))

(assert (=> b!163478 m!154179))

(assert (=> b!163478 m!154175))

(assert (=> b!163478 m!154181))

(assert (=> b!163478 m!154177))

(assert (=> b!163478 m!154181))

(assert (=> b!163478 m!154183))

(declare-fun m!154195 () Bool)

(assert (=> d!40292 m!154195))

(assert (=> d!40292 m!154181))

(assert (=> bm!6876 d!40292))

(declare-fun d!40294 () Bool)

(declare-fun e!98535 () Bool)

(assert (=> d!40294 e!98535))

(declare-fun res!74098 () Bool)

(assert (=> d!40294 (=> (not res!74098) (not e!98535))))

(declare-fun lt!49804 () BalanceConc!1642)

(assert (=> d!40294 (= res!74098 (= (list!1011 lt!49804) tokens!465))))

(assert (=> d!40294 (= lt!49804 (BalanceConc!1643 (fromList!102 tokens!465)))))

(assert (=> d!40294 (= (fromListB!148 tokens!465) lt!49804)))

(declare-fun b!163480 () Bool)

(assert (=> b!163480 (= e!98535 (isBalanced!226 (fromList!102 tokens!465)))))

(assert (= (and d!40294 res!74098) b!163480))

(declare-fun m!154197 () Bool)

(assert (=> d!40294 m!154197))

(declare-fun m!154199 () Bool)

(assert (=> d!40294 m!154199))

(assert (=> b!163480 m!154199))

(assert (=> b!163480 m!154199))

(declare-fun m!154201 () Bool)

(assert (=> b!163480 m!154201))

(assert (=> d!39990 d!40294))

(declare-fun d!40296 () Bool)

(declare-fun res!74100 () Bool)

(declare-fun e!98540 () Bool)

(assert (=> d!40296 (=> (not res!74100) (not e!98540))))

(assert (=> d!40296 (= res!74100 (not (isEmpty!1141 (originalCharacters!540 (h!8203 (t!26086 tokens!465))))))))

(assert (=> d!40296 (= (inv!3621 (h!8203 (t!26086 tokens!465))) e!98540)))

(declare-fun b!163485 () Bool)

(declare-fun res!74102 () Bool)

(assert (=> b!163485 (=> (not res!74102) (not e!98540))))

(assert (=> b!163485 (= res!74102 (= (originalCharacters!540 (h!8203 (t!26086 tokens!465))) (list!1007 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))) (value!18480 (h!8203 (t!26086 tokens!465)))))))))

(declare-fun b!163487 () Bool)

(assert (=> b!163487 (= e!98540 (= (size!2343 (h!8203 (t!26086 tokens!465))) (size!2347 (originalCharacters!540 (h!8203 (t!26086 tokens!465))))))))

(assert (= (and d!40296 res!74100) b!163485))

(assert (= (and b!163485 res!74102) b!163487))

(declare-fun b_lambda!3463 () Bool)

(assert (=> (not b_lambda!3463) (not b!163485)))

(declare-fun t!26217 () Bool)

(declare-fun tb!6065 () Bool)

(assert (=> (and b!162952 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 rules!1920)))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465)))))) t!26217) tb!6065))

(declare-fun b!163489 () Bool)

(declare-fun e!98541 () Bool)

(declare-fun tp!82414 () Bool)

(assert (=> b!163489 (= e!98541 (and (inv!3624 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))) (value!18480 (h!8203 (t!26086 tokens!465)))))) tp!82414))))

(declare-fun result!8680 () Bool)

(assert (=> tb!6065 (= result!8680 (and (inv!3625 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))) (value!18480 (h!8203 (t!26086 tokens!465))))) e!98541))))

(assert (= tb!6065 b!163489))

(declare-fun m!154203 () Bool)

(assert (=> b!163489 m!154203))

(declare-fun m!154205 () Bool)

(assert (=> tb!6065 m!154205))

(assert (=> b!163485 t!26217))

(declare-fun b_and!10305 () Bool)

(assert (= b_and!10285 (and (=> t!26217 result!8680) b_and!10305)))

(declare-fun t!26219 () Bool)

(declare-fun tb!6067 () Bool)

(assert (=> (and b!162366 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465)))))) t!26219) tb!6067))

(declare-fun result!8682 () Bool)

(assert (= result!8682 result!8680))

(assert (=> b!163485 t!26219))

(declare-fun b_and!10307 () Bool)

(assert (= b_and!10293 (and (=> t!26219 result!8682) b_and!10307)))

(declare-fun t!26221 () Bool)

(declare-fun tb!6069 () Bool)

(assert (=> (and b!162933 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465)))))) t!26221) tb!6069))

(declare-fun result!8684 () Bool)

(assert (= result!8684 result!8680))

(assert (=> b!163485 t!26221))

(declare-fun b_and!10309 () Bool)

(assert (= b_and!10289 (and (=> t!26221 result!8684) b_and!10309)))

(declare-fun tb!6071 () Bool)

(declare-fun t!26223 () Bool)

(assert (=> (and b!162354 (= (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465)))))) t!26223) tb!6071))

(declare-fun result!8686 () Bool)

(assert (= result!8686 result!8680))

(assert (=> b!163485 t!26223))

(declare-fun b_and!10311 () Bool)

(assert (= b_and!10291 (and (=> t!26223 result!8686) b_and!10311)))

(declare-fun t!26225 () Bool)

(declare-fun tb!6073 () Bool)

(assert (=> (and b!162363 (= (toChars!1011 (transformation!497 (h!8202 rules!1920))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465)))))) t!26225) tb!6073))

(declare-fun result!8688 () Bool)

(assert (= result!8688 result!8680))

(assert (=> b!163485 t!26225))

(declare-fun b_and!10313 () Bool)

(assert (= b_and!10287 (and (=> t!26225 result!8688) b_and!10313)))

(declare-fun m!154211 () Bool)

(assert (=> d!40296 m!154211))

(declare-fun m!154213 () Bool)

(assert (=> b!163485 m!154213))

(assert (=> b!163485 m!154213))

(declare-fun m!154215 () Bool)

(assert (=> b!163485 m!154215))

(declare-fun m!154217 () Bool)

(assert (=> b!163487 m!154217))

(assert (=> b!162930 d!40296))

(declare-fun lt!49806 () BalanceConc!1640)

(declare-fun d!40300 () Bool)

(assert (=> d!40300 (= (list!1007 lt!49806) (originalCharacters!540 (ite c!32515 call!6911 (ite c!32516 separatorToken!170 call!6907))))))

(assert (=> d!40300 (= lt!49806 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (ite c!32515 call!6911 (ite c!32516 separatorToken!170 call!6907))))) (value!18480 (ite c!32515 call!6911 (ite c!32516 separatorToken!170 call!6907)))))))

(assert (=> d!40300 (= (charsOf!152 (ite c!32515 call!6911 (ite c!32516 separatorToken!170 call!6907))) lt!49806)))

(declare-fun b_lambda!3465 () Bool)

(assert (=> (not b_lambda!3465) (not d!40300)))

(declare-fun tb!6075 () Bool)

(declare-fun t!26227 () Bool)

(assert (=> (and b!162366 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (toChars!1011 (transformation!497 (rule!1004 (ite c!32515 call!6911 (ite c!32516 separatorToken!170 call!6907)))))) t!26227) tb!6075))

(declare-fun e!98546 () Bool)

(declare-fun tp!82415 () Bool)

(declare-fun b!163497 () Bool)

(assert (=> b!163497 (= e!98546 (and (inv!3624 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (ite c!32515 call!6911 (ite c!32516 separatorToken!170 call!6907))))) (value!18480 (ite c!32515 call!6911 (ite c!32516 separatorToken!170 call!6907)))))) tp!82415))))

(declare-fun result!8690 () Bool)

(assert (=> tb!6075 (= result!8690 (and (inv!3625 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (ite c!32515 call!6911 (ite c!32516 separatorToken!170 call!6907))))) (value!18480 (ite c!32515 call!6911 (ite c!32516 separatorToken!170 call!6907))))) e!98546))))

(assert (= tb!6075 b!163497))

(declare-fun m!154233 () Bool)

(assert (=> b!163497 m!154233))

(declare-fun m!154235 () Bool)

(assert (=> tb!6075 m!154235))

(assert (=> d!40300 t!26227))

(declare-fun b_and!10315 () Bool)

(assert (= b_and!10307 (and (=> t!26227 result!8690) b_and!10315)))

(declare-fun tb!6077 () Bool)

(declare-fun t!26229 () Bool)

(assert (=> (and b!162952 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 rules!1920)))) (toChars!1011 (transformation!497 (rule!1004 (ite c!32515 call!6911 (ite c!32516 separatorToken!170 call!6907)))))) t!26229) tb!6077))

(declare-fun result!8692 () Bool)

(assert (= result!8692 result!8690))

(assert (=> d!40300 t!26229))

(declare-fun b_and!10317 () Bool)

(assert (= b_and!10305 (and (=> t!26229 result!8692) b_and!10317)))

(declare-fun tb!6079 () Bool)

(declare-fun t!26231 () Bool)

(assert (=> (and b!162363 (= (toChars!1011 (transformation!497 (h!8202 rules!1920))) (toChars!1011 (transformation!497 (rule!1004 (ite c!32515 call!6911 (ite c!32516 separatorToken!170 call!6907)))))) t!26231) tb!6079))

(declare-fun result!8694 () Bool)

(assert (= result!8694 result!8690))

(assert (=> d!40300 t!26231))

(declare-fun b_and!10319 () Bool)

(assert (= b_and!10313 (and (=> t!26231 result!8694) b_and!10319)))

(declare-fun t!26233 () Bool)

(declare-fun tb!6081 () Bool)

(assert (=> (and b!162933 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))) (toChars!1011 (transformation!497 (rule!1004 (ite c!32515 call!6911 (ite c!32516 separatorToken!170 call!6907)))))) t!26233) tb!6081))

(declare-fun result!8696 () Bool)

(assert (= result!8696 result!8690))

(assert (=> d!40300 t!26233))

(declare-fun b_and!10321 () Bool)

(assert (= b_and!10309 (and (=> t!26233 result!8696) b_and!10321)))

(declare-fun tb!6083 () Bool)

(declare-fun t!26235 () Bool)

(assert (=> (and b!162354 (= (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (toChars!1011 (transformation!497 (rule!1004 (ite c!32515 call!6911 (ite c!32516 separatorToken!170 call!6907)))))) t!26235) tb!6083))

(declare-fun result!8698 () Bool)

(assert (= result!8698 result!8690))

(assert (=> d!40300 t!26235))

(declare-fun b_and!10323 () Bool)

(assert (= b_and!10311 (and (=> t!26235 result!8698) b_and!10323)))

(declare-fun m!154241 () Bool)

(assert (=> d!40300 m!154241))

(declare-fun m!154245 () Bool)

(assert (=> d!40300 m!154245))

(assert (=> bm!6903 d!40300))

(declare-fun d!40306 () Bool)

(declare-fun res!74106 () Bool)

(declare-fun e!98549 () Bool)

(assert (=> d!40306 (=> res!74106 e!98549)))

(assert (=> d!40306 (= res!74106 ((_ is Nil!2806) (t!26086 tokens!465)))))

(assert (=> d!40306 (= (forall!523 (t!26086 tokens!465) lambda!4447) e!98549)))

(declare-fun b!163502 () Bool)

(declare-fun e!98550 () Bool)

(assert (=> b!163502 (= e!98549 e!98550)))

(declare-fun res!74107 () Bool)

(assert (=> b!163502 (=> (not res!74107) (not e!98550))))

(assert (=> b!163502 (= res!74107 (dynLambda!1005 lambda!4447 (h!8203 (t!26086 tokens!465))))))

(declare-fun b!163503 () Bool)

(assert (=> b!163503 (= e!98550 (forall!523 (t!26086 (t!26086 tokens!465)) lambda!4447))))

(assert (= (and d!40306 (not res!74106)) b!163502))

(assert (= (and b!163502 res!74107) b!163503))

(declare-fun b_lambda!3467 () Bool)

(assert (=> (not b_lambda!3467) (not b!163502)))

(declare-fun m!154251 () Bool)

(assert (=> b!163502 m!154251))

(declare-fun m!154255 () Bool)

(assert (=> b!163503 m!154255))

(assert (=> b!162688 d!40306))

(declare-fun b!163509 () Bool)

(declare-fun res!74119 () Bool)

(declare-fun e!98555 () Bool)

(assert (=> b!163509 (=> (not res!74119) (not e!98555))))

(declare-fun lt!49809 () Option!276)

(assert (=> b!163509 (= res!74119 (= (list!1007 (charsOf!152 (_1!1555 (get!761 lt!49809)))) (originalCharacters!540 (_1!1555 (get!761 lt!49809)))))))

(declare-fun b!163510 () Bool)

(declare-fun e!98554 () Option!276)

(declare-fun lt!49812 () Option!276)

(declare-fun lt!49810 () Option!276)

(assert (=> b!163510 (= e!98554 (ite (and ((_ is None!275) lt!49812) ((_ is None!275) lt!49810)) None!275 (ite ((_ is None!275) lt!49810) lt!49812 (ite ((_ is None!275) lt!49812) lt!49810 (ite (>= (size!2343 (_1!1555 (v!13692 lt!49812))) (size!2343 (_1!1555 (v!13692 lt!49810)))) lt!49812 lt!49810)))))))

(declare-fun call!6946 () Option!276)

(assert (=> b!163510 (= lt!49812 call!6946)))

(assert (=> b!163510 (= lt!49810 (maxPrefix!121 thiss!17480 (t!26085 rules!1920) (++!626 (list!1007 (charsOf!152 (h!8203 (t!26086 tokens!465)))) lt!49297)))))

(declare-fun b!163511 () Bool)

(declare-fun res!74113 () Bool)

(assert (=> b!163511 (=> (not res!74113) (not e!98555))))

(assert (=> b!163511 (= res!74113 (matchR!77 (regex!497 (rule!1004 (_1!1555 (get!761 lt!49809)))) (list!1007 (charsOf!152 (_1!1555 (get!761 lt!49809))))))))

(declare-fun b!163512 () Bool)

(declare-fun e!98553 () Bool)

(assert (=> b!163512 (= e!98553 e!98555)))

(declare-fun res!74114 () Bool)

(assert (=> b!163512 (=> (not res!74114) (not e!98555))))

(assert (=> b!163512 (= res!74114 (isDefined!129 lt!49809))))

(declare-fun b!163513 () Bool)

(assert (=> b!163513 (= e!98554 call!6946)))

(declare-fun b!163514 () Bool)

(declare-fun res!74115 () Bool)

(assert (=> b!163514 (=> (not res!74115) (not e!98555))))

(assert (=> b!163514 (= res!74115 (= (++!626 (list!1007 (charsOf!152 (_1!1555 (get!761 lt!49809)))) (_2!1555 (get!761 lt!49809))) (++!626 (list!1007 (charsOf!152 (h!8203 (t!26086 tokens!465)))) lt!49297)))))

(declare-fun b!163515 () Bool)

(assert (=> b!163515 (= e!98555 (contains!450 rules!1920 (rule!1004 (_1!1555 (get!761 lt!49809)))))))

(declare-fun b!163516 () Bool)

(declare-fun res!74118 () Bool)

(assert (=> b!163516 (=> (not res!74118) (not e!98555))))

(assert (=> b!163516 (= res!74118 (= (value!18480 (_1!1555 (get!761 lt!49809))) (apply!394 (transformation!497 (rule!1004 (_1!1555 (get!761 lt!49809)))) (seqFromList!371 (originalCharacters!540 (_1!1555 (get!761 lt!49809)))))))))

(declare-fun b!163517 () Bool)

(declare-fun res!74116 () Bool)

(assert (=> b!163517 (=> (not res!74116) (not e!98555))))

(assert (=> b!163517 (= res!74116 (< (size!2347 (_2!1555 (get!761 lt!49809))) (size!2347 (++!626 (list!1007 (charsOf!152 (h!8203 (t!26086 tokens!465)))) lt!49297))))))

(declare-fun bm!6941 () Bool)

(assert (=> bm!6941 (= call!6946 (maxPrefixOneRule!65 thiss!17480 (h!8202 rules!1920) (++!626 (list!1007 (charsOf!152 (h!8203 (t!26086 tokens!465)))) lt!49297)))))

(declare-fun d!40314 () Bool)

(assert (=> d!40314 e!98553))

(declare-fun res!74117 () Bool)

(assert (=> d!40314 (=> res!74117 e!98553)))

(assert (=> d!40314 (= res!74117 (isEmpty!1147 lt!49809))))

(assert (=> d!40314 (= lt!49809 e!98554)))

(declare-fun c!32683 () Bool)

(assert (=> d!40314 (= c!32683 (and ((_ is Cons!2805) rules!1920) ((_ is Nil!2805) (t!26085 rules!1920))))))

(declare-fun lt!49813 () Unit!2310)

(declare-fun lt!49811 () Unit!2310)

(assert (=> d!40314 (= lt!49813 lt!49811)))

(assert (=> d!40314 (isPrefix!221 (++!626 (list!1007 (charsOf!152 (h!8203 (t!26086 tokens!465)))) lt!49297) (++!626 (list!1007 (charsOf!152 (h!8203 (t!26086 tokens!465)))) lt!49297))))

(assert (=> d!40314 (= lt!49811 (lemmaIsPrefixRefl!129 (++!626 (list!1007 (charsOf!152 (h!8203 (t!26086 tokens!465)))) lt!49297) (++!626 (list!1007 (charsOf!152 (h!8203 (t!26086 tokens!465)))) lt!49297)))))

(assert (=> d!40314 (rulesValidInductive!106 thiss!17480 rules!1920)))

(assert (=> d!40314 (= (maxPrefix!121 thiss!17480 rules!1920 (++!626 (list!1007 (charsOf!152 (h!8203 (t!26086 tokens!465)))) lt!49297)) lt!49809)))

(assert (= (and d!40314 c!32683) b!163513))

(assert (= (and d!40314 (not c!32683)) b!163510))

(assert (= (or b!163513 b!163510) bm!6941))

(assert (= (and d!40314 (not res!74117)) b!163512))

(assert (= (and b!163512 res!74114) b!163509))

(assert (= (and b!163509 res!74119) b!163517))

(assert (= (and b!163517 res!74116) b!163514))

(assert (= (and b!163514 res!74115) b!163516))

(assert (= (and b!163516 res!74118) b!163511))

(assert (= (and b!163511 res!74113) b!163515))

(declare-fun m!154277 () Bool)

(assert (=> b!163512 m!154277))

(declare-fun m!154279 () Bool)

(assert (=> b!163511 m!154279))

(declare-fun m!154281 () Bool)

(assert (=> b!163511 m!154281))

(assert (=> b!163511 m!154281))

(declare-fun m!154283 () Bool)

(assert (=> b!163511 m!154283))

(assert (=> b!163511 m!154283))

(declare-fun m!154285 () Bool)

(assert (=> b!163511 m!154285))

(assert (=> bm!6941 m!152551))

(declare-fun m!154287 () Bool)

(assert (=> bm!6941 m!154287))

(assert (=> b!163510 m!152551))

(declare-fun m!154289 () Bool)

(assert (=> b!163510 m!154289))

(assert (=> b!163514 m!154279))

(assert (=> b!163514 m!154281))

(assert (=> b!163514 m!154281))

(assert (=> b!163514 m!154283))

(assert (=> b!163514 m!154283))

(declare-fun m!154291 () Bool)

(assert (=> b!163514 m!154291))

(assert (=> b!163515 m!154279))

(declare-fun m!154293 () Bool)

(assert (=> b!163515 m!154293))

(assert (=> b!163517 m!154279))

(declare-fun m!154295 () Bool)

(assert (=> b!163517 m!154295))

(assert (=> b!163517 m!152551))

(declare-fun m!154297 () Bool)

(assert (=> b!163517 m!154297))

(assert (=> b!163509 m!154279))

(assert (=> b!163509 m!154281))

(assert (=> b!163509 m!154281))

(assert (=> b!163509 m!154283))

(assert (=> b!163516 m!154279))

(declare-fun m!154299 () Bool)

(assert (=> b!163516 m!154299))

(assert (=> b!163516 m!154299))

(declare-fun m!154301 () Bool)

(assert (=> b!163516 m!154301))

(declare-fun m!154303 () Bool)

(assert (=> d!40314 m!154303))

(assert (=> d!40314 m!152551))

(assert (=> d!40314 m!152551))

(declare-fun m!154305 () Bool)

(assert (=> d!40314 m!154305))

(assert (=> d!40314 m!152551))

(assert (=> d!40314 m!152551))

(declare-fun m!154307 () Bool)

(assert (=> d!40314 m!154307))

(assert (=> d!40314 m!153523))

(assert (=> b!162538 d!40314))

(declare-fun bs!15444 () Bool)

(declare-fun b!163521 () Bool)

(assert (= bs!15444 (and b!163521 b!162538)))

(declare-fun lambda!4501 () Int)

(assert (=> bs!15444 (= lambda!4501 lambda!4456)))

(declare-fun bs!15445 () Bool)

(assert (= bs!15445 (and b!163521 b!162895)))

(assert (=> bs!15445 (= lambda!4501 lambda!4482)))

(declare-fun bs!15446 () Bool)

(assert (= bs!15446 (and b!163521 b!162881)))

(assert (=> bs!15446 (= lambda!4501 lambda!4481)))

(declare-fun bs!15447 () Bool)

(assert (= bs!15447 (and b!163521 b!162350)))

(assert (=> bs!15447 (= lambda!4501 lambda!4448)))

(declare-fun bs!15448 () Bool)

(assert (= bs!15448 (and b!163521 b!162362)))

(assert (=> bs!15448 (not (= lambda!4501 lambda!4447))))

(declare-fun bs!15449 () Bool)

(assert (= bs!15449 (and b!163521 d!39888)))

(assert (=> bs!15449 (not (= lambda!4501 lambda!4464))))

(declare-fun bs!15450 () Bool)

(assert (= bs!15450 (and b!163521 d!39988)))

(assert (=> bs!15450 (= lambda!4501 lambda!4479)))

(declare-fun bs!15451 () Bool)

(assert (= bs!15451 (and b!163521 b!163386)))

(assert (=> bs!15451 (= lambda!4501 lambda!4497)))

(declare-fun bs!15452 () Bool)

(assert (= bs!15452 (and b!163521 d!40002)))

(assert (=> bs!15452 (not (= lambda!4501 lambda!4480))))

(declare-fun bs!15453 () Bool)

(assert (= bs!15453 (and b!163521 b!162616)))

(assert (=> bs!15453 (= lambda!4501 lambda!4465)))

(declare-fun b!163529 () Bool)

(declare-fun e!98563 () Bool)

(assert (=> b!163529 (= e!98563 true)))

(declare-fun b!163528 () Bool)

(declare-fun e!98562 () Bool)

(assert (=> b!163528 (= e!98562 e!98563)))

(declare-fun b!163527 () Bool)

(declare-fun e!98561 () Bool)

(assert (=> b!163527 (= e!98561 e!98562)))

(assert (=> b!163521 e!98561))

(assert (= b!163528 b!163529))

(assert (= b!163527 b!163528))

(assert (= (and b!163521 ((_ is Cons!2805) rules!1920)) b!163527))

(assert (=> b!163529 (< (dynLambda!999 order!1425 (toValue!1152 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1000 order!1427 lambda!4501))))

(assert (=> b!163529 (< (dynLambda!1001 order!1429 (toChars!1011 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1000 order!1427 lambda!4501))))

(assert (=> b!163521 true))

(declare-fun b!163518 () Bool)

(declare-fun e!98556 () BalanceConc!1640)

(assert (=> b!163518 (= e!98556 (charsOf!152 separatorToken!170))))

(declare-fun b!163519 () Bool)

(declare-fun e!98557 () List!2814)

(assert (=> b!163519 (= e!98557 Nil!2804)))

(declare-fun b!163520 () Bool)

(declare-fun c!32686 () Bool)

(declare-fun lt!49818 () Option!276)

(assert (=> b!163520 (= c!32686 (and ((_ is Some!275) lt!49818) (not (= (_1!1555 (v!13692 lt!49818)) (h!8203 (t!26086 (t!26086 tokens!465)))))))))

(declare-fun e!98559 () List!2814)

(declare-fun e!98558 () List!2814)

(assert (=> b!163520 (= e!98559 e!98558)))

(declare-fun bm!6943 () Bool)

(declare-fun call!6948 () BalanceConc!1640)

(assert (=> bm!6943 (= call!6948 (charsOf!152 (h!8203 (t!26086 (t!26086 tokens!465)))))))

(assert (=> b!163521 (= e!98557 e!98559)))

(declare-fun lt!49820 () Unit!2310)

(assert (=> b!163521 (= lt!49820 (forallContained!64 (t!26086 (t!26086 tokens!465)) lambda!4501 (h!8203 (t!26086 (t!26086 tokens!465)))))))

(declare-fun lt!49822 () List!2814)

(assert (=> b!163521 (= lt!49822 (printWithSeparatorTokenWhenNeededList!76 thiss!17480 rules!1920 (t!26086 (t!26086 (t!26086 tokens!465))) separatorToken!170))))

(assert (=> b!163521 (= lt!49818 (maxPrefix!121 thiss!17480 rules!1920 (++!626 (list!1007 (charsOf!152 (h!8203 (t!26086 (t!26086 tokens!465))))) lt!49822)))))

(declare-fun c!32685 () Bool)

(assert (=> b!163521 (= c!32685 (and ((_ is Some!275) lt!49818) (= (_1!1555 (v!13692 lt!49818)) (h!8203 (t!26086 (t!26086 tokens!465))))))))

(declare-fun b!163522 () Bool)

(declare-fun call!6950 () BalanceConc!1640)

(assert (=> b!163522 (= e!98556 call!6950)))

(declare-fun bm!6944 () Bool)

(assert (=> bm!6944 (= call!6950 call!6948)))

(declare-fun call!6949 () List!2814)

(declare-fun call!6951 () List!2814)

(declare-fun bm!6945 () Bool)

(declare-fun call!6947 () List!2814)

(assert (=> bm!6945 (= call!6949 (++!626 call!6947 (ite c!32685 lt!49822 call!6951)))))

(declare-fun bm!6946 () Bool)

(assert (=> bm!6946 (= call!6951 (list!1007 e!98556))))

(declare-fun c!32687 () Bool)

(assert (=> bm!6946 (= c!32687 c!32686)))

(declare-fun b!163523 () Bool)

(assert (=> b!163523 (= e!98558 (++!626 call!6949 lt!49822))))

(declare-fun b!163524 () Bool)

(assert (=> b!163524 (= e!98559 call!6949)))

(declare-fun b!163525 () Bool)

(assert (=> b!163525 (= e!98558 Nil!2804)))

(assert (=> b!163525 (= (print!114 thiss!17480 (singletonSeq!49 (h!8203 (t!26086 (t!26086 tokens!465))))) (printTailRec!77 thiss!17480 (singletonSeq!49 (h!8203 (t!26086 (t!26086 tokens!465)))) 0 (BalanceConc!1641 Empty!816)))))

(declare-fun lt!49819 () Unit!2310)

(declare-fun Unit!2336 () Unit!2310)

(assert (=> b!163525 (= lt!49819 Unit!2336)))

(declare-fun lt!49817 () Unit!2310)

(assert (=> b!163525 (= lt!49817 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!28 thiss!17480 rules!1920 call!6951 lt!49822))))

(assert (=> b!163525 false))

(declare-fun lt!49821 () Unit!2310)

(declare-fun Unit!2337 () Unit!2310)

(assert (=> b!163525 (= lt!49821 Unit!2337)))

(declare-fun bm!6942 () Bool)

(assert (=> bm!6942 (= call!6947 (list!1007 (ite c!32685 call!6948 call!6950)))))

(declare-fun d!40318 () Bool)

(declare-fun c!32684 () Bool)

(assert (=> d!40318 (= c!32684 ((_ is Cons!2806) (t!26086 (t!26086 tokens!465))))))

(assert (=> d!40318 (= (printWithSeparatorTokenWhenNeededList!76 thiss!17480 rules!1920 (t!26086 (t!26086 tokens!465)) separatorToken!170) e!98557)))

(assert (= (and d!40318 c!32684) b!163521))

(assert (= (and d!40318 (not c!32684)) b!163519))

(assert (= (and b!163521 c!32685) b!163524))

(assert (= (and b!163521 (not c!32685)) b!163520))

(assert (= (and b!163520 c!32686) b!163523))

(assert (= (and b!163520 (not c!32686)) b!163525))

(assert (= (or b!163523 b!163525) bm!6944))

(assert (= (or b!163523 b!163525) bm!6946))

(assert (= (and bm!6946 c!32687) b!163518))

(assert (= (and bm!6946 (not c!32687)) b!163522))

(assert (= (or b!163524 bm!6944) bm!6943))

(assert (= (or b!163524 b!163523) bm!6942))

(assert (= (or b!163524 b!163523) bm!6945))

(declare-fun m!154331 () Bool)

(assert (=> b!163525 m!154331))

(assert (=> b!163525 m!154331))

(declare-fun m!154333 () Bool)

(assert (=> b!163525 m!154333))

(assert (=> b!163525 m!154331))

(declare-fun m!154335 () Bool)

(assert (=> b!163525 m!154335))

(declare-fun m!154337 () Bool)

(assert (=> b!163525 m!154337))

(declare-fun m!154339 () Bool)

(assert (=> b!163521 m!154339))

(declare-fun m!154341 () Bool)

(assert (=> b!163521 m!154341))

(declare-fun m!154343 () Bool)

(assert (=> b!163521 m!154343))

(assert (=> b!163521 m!154343))

(declare-fun m!154345 () Bool)

(assert (=> b!163521 m!154345))

(declare-fun m!154347 () Bool)

(assert (=> b!163521 m!154347))

(declare-fun m!154349 () Bool)

(assert (=> b!163521 m!154349))

(assert (=> b!163521 m!154349))

(assert (=> b!163521 m!154341))

(assert (=> bm!6943 m!154349))

(declare-fun m!154351 () Bool)

(assert (=> bm!6945 m!154351))

(declare-fun m!154353 () Bool)

(assert (=> bm!6946 m!154353))

(declare-fun m!154355 () Bool)

(assert (=> bm!6942 m!154355))

(declare-fun m!154357 () Bool)

(assert (=> b!163523 m!154357))

(assert (=> b!163518 m!152273))

(assert (=> b!162538 d!40318))

(declare-fun d!40330 () Bool)

(assert (=> d!40330 (dynLambda!1005 lambda!4456 (h!8203 (t!26086 tokens!465)))))

(declare-fun lt!49826 () Unit!2310)

(assert (=> d!40330 (= lt!49826 (choose!1803 (t!26086 tokens!465) lambda!4456 (h!8203 (t!26086 tokens!465))))))

(declare-fun e!98566 () Bool)

(assert (=> d!40330 e!98566))

(declare-fun res!74123 () Bool)

(assert (=> d!40330 (=> (not res!74123) (not e!98566))))

(assert (=> d!40330 (= res!74123 (forall!523 (t!26086 tokens!465) lambda!4456))))

(assert (=> d!40330 (= (forallContained!64 (t!26086 tokens!465) lambda!4456 (h!8203 (t!26086 tokens!465))) lt!49826)))

(declare-fun b!163532 () Bool)

(assert (=> b!163532 (= e!98566 (contains!446 (t!26086 tokens!465) (h!8203 (t!26086 tokens!465))))))

(assert (= (and d!40330 res!74123) b!163532))

(declare-fun b_lambda!3471 () Bool)

(assert (=> (not b_lambda!3471) (not d!40330)))

(declare-fun m!154359 () Bool)

(assert (=> d!40330 m!154359))

(declare-fun m!154361 () Bool)

(assert (=> d!40330 m!154361))

(declare-fun m!154363 () Bool)

(assert (=> d!40330 m!154363))

(declare-fun m!154365 () Bool)

(assert (=> b!163532 m!154365))

(assert (=> b!162538 d!40330))

(declare-fun d!40332 () Bool)

(declare-fun e!98568 () Bool)

(assert (=> d!40332 e!98568))

(declare-fun res!74125 () Bool)

(assert (=> d!40332 (=> (not res!74125) (not e!98568))))

(declare-fun lt!49827 () List!2814)

(assert (=> d!40332 (= res!74125 (= (content!388 lt!49827) ((_ map or) (content!388 (list!1007 (charsOf!152 (h!8203 (t!26086 tokens!465))))) (content!388 lt!49297))))))

(declare-fun e!98567 () List!2814)

(assert (=> d!40332 (= lt!49827 e!98567)))

(declare-fun c!32688 () Bool)

(assert (=> d!40332 (= c!32688 ((_ is Nil!2804) (list!1007 (charsOf!152 (h!8203 (t!26086 tokens!465))))))))

(assert (=> d!40332 (= (++!626 (list!1007 (charsOf!152 (h!8203 (t!26086 tokens!465)))) lt!49297) lt!49827)))

(declare-fun b!163535 () Bool)

(declare-fun res!74124 () Bool)

(assert (=> b!163535 (=> (not res!74124) (not e!98568))))

(assert (=> b!163535 (= res!74124 (= (size!2347 lt!49827) (+ (size!2347 (list!1007 (charsOf!152 (h!8203 (t!26086 tokens!465))))) (size!2347 lt!49297))))))

(declare-fun b!163534 () Bool)

(assert (=> b!163534 (= e!98567 (Cons!2804 (h!8201 (list!1007 (charsOf!152 (h!8203 (t!26086 tokens!465))))) (++!626 (t!26084 (list!1007 (charsOf!152 (h!8203 (t!26086 tokens!465))))) lt!49297)))))

(declare-fun b!163533 () Bool)

(assert (=> b!163533 (= e!98567 lt!49297)))

(declare-fun b!163536 () Bool)

(assert (=> b!163536 (= e!98568 (or (not (= lt!49297 Nil!2804)) (= lt!49827 (list!1007 (charsOf!152 (h!8203 (t!26086 tokens!465)))))))))

(assert (= (and d!40332 c!32688) b!163533))

(assert (= (and d!40332 (not c!32688)) b!163534))

(assert (= (and d!40332 res!74125) b!163535))

(assert (= (and b!163535 res!74124) b!163536))

(declare-fun m!154367 () Bool)

(assert (=> d!40332 m!154367))

(assert (=> d!40332 m!152549))

(declare-fun m!154369 () Bool)

(assert (=> d!40332 m!154369))

(declare-fun m!154371 () Bool)

(assert (=> d!40332 m!154371))

(declare-fun m!154373 () Bool)

(assert (=> b!163535 m!154373))

(assert (=> b!163535 m!152549))

(declare-fun m!154375 () Bool)

(assert (=> b!163535 m!154375))

(declare-fun m!154377 () Bool)

(assert (=> b!163535 m!154377))

(declare-fun m!154379 () Bool)

(assert (=> b!163534 m!154379))

(assert (=> b!162538 d!40332))

(declare-fun d!40334 () Bool)

(assert (=> d!40334 (= (list!1007 (charsOf!152 (h!8203 (t!26086 tokens!465)))) (list!1010 (c!32407 (charsOf!152 (h!8203 (t!26086 tokens!465))))))))

(declare-fun bs!15454 () Bool)

(assert (= bs!15454 d!40334))

(declare-fun m!154381 () Bool)

(assert (=> bs!15454 m!154381))

(assert (=> b!162538 d!40334))

(declare-fun d!40336 () Bool)

(declare-fun lt!49828 () BalanceConc!1640)

(assert (=> d!40336 (= (list!1007 lt!49828) (originalCharacters!540 (h!8203 (t!26086 tokens!465))))))

(assert (=> d!40336 (= lt!49828 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))) (value!18480 (h!8203 (t!26086 tokens!465)))))))

(assert (=> d!40336 (= (charsOf!152 (h!8203 (t!26086 tokens!465))) lt!49828)))

(declare-fun b_lambda!3473 () Bool)

(assert (=> (not b_lambda!3473) (not d!40336)))

(assert (=> d!40336 t!26223))

(declare-fun b_and!10325 () Bool)

(assert (= b_and!10323 (and (=> t!26223 result!8686) b_and!10325)))

(assert (=> d!40336 t!26225))

(declare-fun b_and!10327 () Bool)

(assert (= b_and!10319 (and (=> t!26225 result!8688) b_and!10327)))

(assert (=> d!40336 t!26221))

(declare-fun b_and!10329 () Bool)

(assert (= b_and!10321 (and (=> t!26221 result!8684) b_and!10329)))

(assert (=> d!40336 t!26219))

(declare-fun b_and!10331 () Bool)

(assert (= b_and!10315 (and (=> t!26219 result!8682) b_and!10331)))

(assert (=> d!40336 t!26217))

(declare-fun b_and!10333 () Bool)

(assert (= b_and!10317 (and (=> t!26217 result!8680) b_and!10333)))

(declare-fun m!154383 () Bool)

(assert (=> d!40336 m!154383))

(assert (=> d!40336 m!154213))

(assert (=> b!162538 d!40336))

(declare-fun d!40338 () Bool)

(assert (=> d!40338 (= (list!1007 (_2!1551 lt!49478)) (list!1010 (c!32407 (_2!1551 lt!49478))))))

(declare-fun bs!15455 () Bool)

(assert (= bs!15455 d!40338))

(declare-fun m!154385 () Bool)

(assert (=> bs!15455 m!154385))

(assert (=> b!162811 d!40338))

(assert (=> b!162811 d!40238))

(assert (=> b!162811 d!40266))

(assert (=> b!162899 d!40090))

(assert (=> b!162899 d!39980))

(declare-fun d!40340 () Bool)

(declare-fun lt!49833 () BalanceConc!1640)

(assert (=> d!40340 (= (list!1007 lt!49833) (printListTailRec!48 thiss!17480 (dropList!80 (singletonSeq!49 (h!8203 tokens!465)) 0) (list!1007 (BalanceConc!1641 Empty!816))))))

(declare-fun e!98570 () BalanceConc!1640)

(assert (=> d!40340 (= lt!49833 e!98570)))

(declare-fun c!32689 () Bool)

(assert (=> d!40340 (= c!32689 (>= 0 (size!2348 (singletonSeq!49 (h!8203 tokens!465)))))))

(declare-fun e!98569 () Bool)

(assert (=> d!40340 e!98569))

(declare-fun res!74126 () Bool)

(assert (=> d!40340 (=> (not res!74126) (not e!98569))))

(assert (=> d!40340 (= res!74126 (>= 0 0))))

(assert (=> d!40340 (= (printTailRec!77 thiss!17480 (singletonSeq!49 (h!8203 tokens!465)) 0 (BalanceConc!1641 Empty!816)) lt!49833)))

(declare-fun b!163537 () Bool)

(assert (=> b!163537 (= e!98569 (<= 0 (size!2348 (singletonSeq!49 (h!8203 tokens!465)))))))

(declare-fun b!163538 () Bool)

(assert (=> b!163538 (= e!98570 (BalanceConc!1641 Empty!816))))

(declare-fun b!163539 () Bool)

(assert (=> b!163539 (= e!98570 (printTailRec!77 thiss!17480 (singletonSeq!49 (h!8203 tokens!465)) (+ 0 1) (++!628 (BalanceConc!1641 Empty!816) (charsOf!152 (apply!390 (singletonSeq!49 (h!8203 tokens!465)) 0)))))))

(declare-fun lt!49832 () List!2816)

(assert (=> b!163539 (= lt!49832 (list!1011 (singletonSeq!49 (h!8203 tokens!465))))))

(declare-fun lt!49829 () Unit!2310)

(assert (=> b!163539 (= lt!49829 (lemmaDropApply!120 lt!49832 0))))

(assert (=> b!163539 (= (head!594 (drop!133 lt!49832 0)) (apply!389 lt!49832 0))))

(declare-fun lt!49830 () Unit!2310)

(assert (=> b!163539 (= lt!49830 lt!49829)))

(declare-fun lt!49835 () List!2816)

(assert (=> b!163539 (= lt!49835 (list!1011 (singletonSeq!49 (h!8203 tokens!465))))))

(declare-fun lt!49834 () Unit!2310)

(assert (=> b!163539 (= lt!49834 (lemmaDropTail!112 lt!49835 0))))

(assert (=> b!163539 (= (tail!334 (drop!133 lt!49835 0)) (drop!133 lt!49835 (+ 0 1)))))

(declare-fun lt!49831 () Unit!2310)

(assert (=> b!163539 (= lt!49831 lt!49834)))

(assert (= (and d!40340 res!74126) b!163537))

(assert (= (and d!40340 c!32689) b!163538))

(assert (= (and d!40340 (not c!32689)) b!163539))

(declare-fun m!154387 () Bool)

(assert (=> d!40340 m!154387))

(assert (=> d!40340 m!153043))

(declare-fun m!154389 () Bool)

(assert (=> d!40340 m!154389))

(assert (=> d!40340 m!152297))

(assert (=> d!40340 m!154387))

(assert (=> d!40340 m!152297))

(declare-fun m!154391 () Bool)

(assert (=> d!40340 m!154391))

(declare-fun m!154393 () Bool)

(assert (=> d!40340 m!154393))

(assert (=> d!40340 m!153043))

(assert (=> b!163537 m!152297))

(assert (=> b!163537 m!154391))

(declare-fun m!154395 () Bool)

(assert (=> b!163539 m!154395))

(declare-fun m!154397 () Bool)

(assert (=> b!163539 m!154397))

(declare-fun m!154399 () Bool)

(assert (=> b!163539 m!154399))

(declare-fun m!154401 () Bool)

(assert (=> b!163539 m!154401))

(declare-fun m!154403 () Bool)

(assert (=> b!163539 m!154403))

(declare-fun m!154405 () Bool)

(assert (=> b!163539 m!154405))

(declare-fun m!154407 () Bool)

(assert (=> b!163539 m!154407))

(declare-fun m!154409 () Bool)

(assert (=> b!163539 m!154409))

(declare-fun m!154411 () Bool)

(assert (=> b!163539 m!154411))

(assert (=> b!163539 m!152297))

(assert (=> b!163539 m!152729))

(declare-fun m!154413 () Bool)

(assert (=> b!163539 m!154413))

(assert (=> b!163539 m!152297))

(assert (=> b!163539 m!154395))

(assert (=> b!163539 m!154409))

(assert (=> b!163539 m!152297))

(declare-fun m!154415 () Bool)

(assert (=> b!163539 m!154415))

(declare-fun m!154417 () Bool)

(assert (=> b!163539 m!154417))

(assert (=> b!163539 m!154403))

(assert (=> b!163539 m!154397))

(assert (=> b!163539 m!154415))

(assert (=> b!162899 d!40340))

(declare-fun b!163642 () Bool)

(declare-fun e!98634 () Unit!2310)

(declare-fun Unit!2338 () Unit!2310)

(assert (=> b!163642 (= e!98634 Unit!2338)))

(declare-fun b!163639 () Bool)

(declare-fun res!74167 () Bool)

(declare-fun e!98633 () Bool)

(assert (=> b!163639 (=> (not res!74167) (not e!98633))))

(declare-fun lt!49922 () Token!738)

(declare-datatypes ((Option!279 0))(
  ( (None!278) (Some!278 (v!13695 Rule!794)) )
))
(declare-fun get!763 (Option!279) Rule!794)

(declare-fun getRuleFromTag!20 (LexerInterface!383 List!2815 String!3675) Option!279)

(assert (=> b!163639 (= res!74167 (matchR!77 (regex!497 (get!763 (getRuleFromTag!20 thiss!17480 rules!1920 (tag!675 (rule!1004 lt!49922))))) (list!1007 (charsOf!152 lt!49922))))))

(declare-fun d!40342 () Bool)

(assert (=> d!40342 (isDefined!129 (maxPrefix!121 thiss!17480 rules!1920 (++!626 call!6916 lt!49534)))))

(declare-fun lt!49921 () Unit!2310)

(assert (=> d!40342 (= lt!49921 e!98634)))

(declare-fun c!32718 () Bool)

(assert (=> d!40342 (= c!32718 (isEmpty!1147 (maxPrefix!121 thiss!17480 rules!1920 (++!626 call!6916 lt!49534))))))

(declare-fun lt!49920 () Unit!2310)

(declare-fun lt!49932 () Unit!2310)

(assert (=> d!40342 (= lt!49920 lt!49932)))

(assert (=> d!40342 e!98633))

(declare-fun res!74166 () Bool)

(assert (=> d!40342 (=> (not res!74166) (not e!98633))))

(declare-fun isDefined!131 (Option!279) Bool)

(assert (=> d!40342 (= res!74166 (isDefined!131 (getRuleFromTag!20 thiss!17480 rules!1920 (tag!675 (rule!1004 lt!49922)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!20 (LexerInterface!383 List!2815 List!2814 Token!738) Unit!2310)

(assert (=> d!40342 (= lt!49932 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!20 thiss!17480 rules!1920 call!6916 lt!49922))))

(declare-fun lt!49918 () Unit!2310)

(declare-fun lt!49930 () Unit!2310)

(assert (=> d!40342 (= lt!49918 lt!49930)))

(declare-fun lt!49926 () List!2814)

(assert (=> d!40342 (isPrefix!221 lt!49926 (++!626 call!6916 lt!49534))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!20 (List!2814 List!2814 List!2814) Unit!2310)

(assert (=> d!40342 (= lt!49930 (lemmaPrefixStaysPrefixWhenAddingToSuffix!20 lt!49926 call!6916 lt!49534))))

(assert (=> d!40342 (= lt!49926 (list!1007 (charsOf!152 lt!49922)))))

(declare-fun lt!49931 () Unit!2310)

(declare-fun lt!49923 () Unit!2310)

(assert (=> d!40342 (= lt!49931 lt!49923)))

(declare-fun lt!49919 () List!2814)

(declare-fun lt!49925 () List!2814)

(assert (=> d!40342 (isPrefix!221 lt!49919 (++!626 lt!49919 lt!49925))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!124 (List!2814 List!2814) Unit!2310)

(assert (=> d!40342 (= lt!49923 (lemmaConcatTwoListThenFirstIsPrefix!124 lt!49919 lt!49925))))

(assert (=> d!40342 (= lt!49925 (_2!1555 (get!761 (maxPrefix!121 thiss!17480 rules!1920 call!6916))))))

(assert (=> d!40342 (= lt!49919 (list!1007 (charsOf!152 lt!49922)))))

(assert (=> d!40342 (= lt!49922 (head!594 (list!1011 (_1!1551 (lex!183 thiss!17480 rules!1920 (seqFromList!371 call!6916))))))))

(assert (=> d!40342 (not (isEmpty!1136 rules!1920))))

(assert (=> d!40342 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!28 thiss!17480 rules!1920 call!6916 lt!49534) lt!49921)))

(declare-fun b!163640 () Bool)

(assert (=> b!163640 (= e!98633 (= (rule!1004 lt!49922) (get!763 (getRuleFromTag!20 thiss!17480 rules!1920 (tag!675 (rule!1004 lt!49922))))))))

(declare-fun b!163641 () Bool)

(declare-fun Unit!2339 () Unit!2310)

(assert (=> b!163641 (= e!98634 Unit!2339)))

(declare-fun lt!49917 () List!2814)

(assert (=> b!163641 (= lt!49917 (++!626 call!6916 lt!49534))))

(declare-fun lt!49924 () Unit!2310)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!20 (LexerInterface!383 Rule!794 List!2815 List!2814) Unit!2310)

(assert (=> b!163641 (= lt!49924 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!20 thiss!17480 (rule!1004 lt!49922) rules!1920 lt!49917))))

(assert (=> b!163641 (isEmpty!1147 (maxPrefixOneRule!65 thiss!17480 (rule!1004 lt!49922) lt!49917))))

(declare-fun lt!49929 () Unit!2310)

(assert (=> b!163641 (= lt!49929 lt!49924)))

(declare-fun lt!49928 () List!2814)

(assert (=> b!163641 (= lt!49928 (list!1007 (charsOf!152 lt!49922)))))

(declare-fun lt!49933 () Unit!2310)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!20 (LexerInterface!383 Rule!794 List!2814 List!2814) Unit!2310)

(assert (=> b!163641 (= lt!49933 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!20 thiss!17480 (rule!1004 lt!49922) lt!49928 (++!626 call!6916 lt!49534)))))

(assert (=> b!163641 (not (matchR!77 (regex!497 (rule!1004 lt!49922)) lt!49928))))

(declare-fun lt!49927 () Unit!2310)

(assert (=> b!163641 (= lt!49927 lt!49933)))

(assert (=> b!163641 false))

(assert (= (and d!40342 res!74166) b!163639))

(assert (= (and b!163639 res!74167) b!163640))

(assert (= (and d!40342 c!32718) b!163641))

(assert (= (and d!40342 (not c!32718)) b!163642))

(declare-fun m!154623 () Bool)

(assert (=> b!163639 m!154623))

(declare-fun m!154625 () Bool)

(assert (=> b!163639 m!154625))

(declare-fun m!154627 () Bool)

(assert (=> b!163639 m!154627))

(declare-fun m!154629 () Bool)

(assert (=> b!163639 m!154629))

(assert (=> b!163639 m!154627))

(assert (=> b!163639 m!154623))

(assert (=> b!163639 m!154629))

(declare-fun m!154631 () Bool)

(assert (=> b!163639 m!154631))

(declare-fun m!154633 () Bool)

(assert (=> d!40342 m!154633))

(declare-fun m!154635 () Bool)

(assert (=> d!40342 m!154635))

(declare-fun m!154637 () Bool)

(assert (=> d!40342 m!154637))

(declare-fun m!154639 () Bool)

(assert (=> d!40342 m!154639))

(declare-fun m!154641 () Bool)

(assert (=> d!40342 m!154641))

(declare-fun m!154643 () Bool)

(assert (=> d!40342 m!154643))

(declare-fun m!154645 () Bool)

(assert (=> d!40342 m!154645))

(assert (=> d!40342 m!154645))

(declare-fun m!154647 () Bool)

(assert (=> d!40342 m!154647))

(assert (=> d!40342 m!154635))

(declare-fun m!154649 () Bool)

(assert (=> d!40342 m!154649))

(assert (=> d!40342 m!154643))

(declare-fun m!154651 () Bool)

(assert (=> d!40342 m!154651))

(assert (=> d!40342 m!154627))

(assert (=> d!40342 m!154629))

(declare-fun m!154653 () Bool)

(assert (=> d!40342 m!154653))

(assert (=> d!40342 m!154629))

(declare-fun m!154655 () Bool)

(assert (=> d!40342 m!154655))

(assert (=> d!40342 m!154627))

(assert (=> d!40342 m!154623))

(assert (=> d!40342 m!154639))

(declare-fun m!154657 () Bool)

(assert (=> d!40342 m!154657))

(assert (=> d!40342 m!152327))

(assert (=> d!40342 m!154641))

(declare-fun m!154659 () Bool)

(assert (=> d!40342 m!154659))

(assert (=> d!40342 m!154655))

(declare-fun m!154661 () Bool)

(assert (=> d!40342 m!154661))

(assert (=> d!40342 m!154641))

(declare-fun m!154663 () Bool)

(assert (=> d!40342 m!154663))

(assert (=> d!40342 m!154643))

(declare-fun m!154665 () Bool)

(assert (=> d!40342 m!154665))

(assert (=> b!163640 m!154629))

(assert (=> b!163640 m!154629))

(assert (=> b!163640 m!154631))

(assert (=> b!163641 m!154627))

(declare-fun m!154667 () Bool)

(assert (=> b!163641 m!154667))

(declare-fun m!154669 () Bool)

(assert (=> b!163641 m!154669))

(assert (=> b!163641 m!154627))

(assert (=> b!163641 m!154623))

(assert (=> b!163641 m!154669))

(declare-fun m!154671 () Bool)

(assert (=> b!163641 m!154671))

(assert (=> b!163641 m!154641))

(declare-fun m!154673 () Bool)

(assert (=> b!163641 m!154673))

(assert (=> b!163641 m!154641))

(declare-fun m!154675 () Bool)

(assert (=> b!163641 m!154675))

(assert (=> b!162899 d!40342))

(declare-fun d!40386 () Bool)

(declare-fun lt!49934 () Bool)

(assert (=> d!40386 (= lt!49934 (isEmpty!1141 (list!1007 (_2!1551 lt!49414))))))

(assert (=> d!40386 (= lt!49934 (isEmpty!1145 (c!32407 (_2!1551 lt!49414))))))

(assert (=> d!40386 (= (isEmpty!1142 (_2!1551 lt!49414)) lt!49934)))

(declare-fun bs!15482 () Bool)

(assert (= bs!15482 d!40386))

(declare-fun m!154677 () Bool)

(assert (=> bs!15482 m!154677))

(assert (=> bs!15482 m!154677))

(declare-fun m!154679 () Bool)

(assert (=> bs!15482 m!154679))

(declare-fun m!154681 () Bool)

(assert (=> bs!15482 m!154681))

(assert (=> b!162681 d!40386))

(declare-fun d!40388 () Bool)

(declare-fun c!32719 () Bool)

(assert (=> d!40388 (= c!32719 ((_ is Nil!2804) lt!49367))))

(declare-fun e!98635 () (InoxSet C!2364))

(assert (=> d!40388 (= (content!388 lt!49367) e!98635)))

(declare-fun b!163643 () Bool)

(assert (=> b!163643 (= e!98635 ((as const (Array C!2364 Bool)) false))))

(declare-fun b!163644 () Bool)

(assert (=> b!163644 (= e!98635 ((_ map or) (store ((as const (Array C!2364 Bool)) false) (h!8201 lt!49367) true) (content!388 (t!26084 lt!49367))))))

(assert (= (and d!40388 c!32719) b!163643))

(assert (= (and d!40388 (not c!32719)) b!163644))

(declare-fun m!154683 () Bool)

(assert (=> b!163644 m!154683))

(declare-fun m!154685 () Bool)

(assert (=> b!163644 m!154685))

(assert (=> d!39904 d!40388))

(declare-fun d!40390 () Bool)

(declare-fun c!32720 () Bool)

(assert (=> d!40390 (= c!32720 ((_ is Nil!2804) (++!626 lt!49240 lt!49241)))))

(declare-fun e!98636 () (InoxSet C!2364))

(assert (=> d!40390 (= (content!388 (++!626 lt!49240 lt!49241)) e!98636)))

(declare-fun b!163645 () Bool)

(assert (=> b!163645 (= e!98636 ((as const (Array C!2364 Bool)) false))))

(declare-fun b!163646 () Bool)

(assert (=> b!163646 (= e!98636 ((_ map or) (store ((as const (Array C!2364 Bool)) false) (h!8201 (++!626 lt!49240 lt!49241)) true) (content!388 (t!26084 (++!626 lt!49240 lt!49241)))))))

(assert (= (and d!40390 c!32720) b!163645))

(assert (= (and d!40390 (not c!32720)) b!163646))

(declare-fun m!154687 () Bool)

(assert (=> b!163646 m!154687))

(declare-fun m!154689 () Bool)

(assert (=> b!163646 m!154689))

(assert (=> d!39904 d!40390))

(assert (=> d!39904 d!40122))

(declare-fun d!40392 () Bool)

(declare-fun lt!49935 () Int)

(assert (=> d!40392 (= lt!49935 (size!2351 (list!1011 (seqFromList!372 (t!26086 tokens!465)))))))

(assert (=> d!40392 (= lt!49935 (size!2353 (c!32409 (seqFromList!372 (t!26086 tokens!465)))))))

(assert (=> d!40392 (= (size!2348 (seqFromList!372 (t!26086 tokens!465))) lt!49935)))

(declare-fun bs!15483 () Bool)

(assert (= bs!15483 d!40392))

(assert (=> bs!15483 m!152265))

(assert (=> bs!15483 m!152613))

(assert (=> bs!15483 m!152613))

(declare-fun m!154691 () Bool)

(assert (=> bs!15483 m!154691))

(declare-fun m!154693 () Bool)

(assert (=> bs!15483 m!154693))

(assert (=> b!162622 d!40392))

(declare-fun d!40394 () Bool)

(declare-fun c!32721 () Bool)

(assert (=> d!40394 (= c!32721 ((_ is Nil!2804) lt!49364))))

(declare-fun e!98637 () (InoxSet C!2364))

(assert (=> d!40394 (= (content!388 lt!49364) e!98637)))

(declare-fun b!163647 () Bool)

(assert (=> b!163647 (= e!98637 ((as const (Array C!2364 Bool)) false))))

(declare-fun b!163648 () Bool)

(assert (=> b!163648 (= e!98637 ((_ map or) (store ((as const (Array C!2364 Bool)) false) (h!8201 lt!49364) true) (content!388 (t!26084 lt!49364))))))

(assert (= (and d!40394 c!32721) b!163647))

(assert (= (and d!40394 (not c!32721)) b!163648))

(declare-fun m!154695 () Bool)

(assert (=> b!163648 m!154695))

(declare-fun m!154697 () Bool)

(assert (=> b!163648 m!154697))

(assert (=> d!39894 d!40394))

(assert (=> d!39894 d!40126))

(declare-fun d!40396 () Bool)

(declare-fun c!32722 () Bool)

(assert (=> d!40396 (= c!32722 ((_ is Nil!2804) lt!49243))))

(declare-fun e!98638 () (InoxSet C!2364))

(assert (=> d!40396 (= (content!388 lt!49243) e!98638)))

(declare-fun b!163649 () Bool)

(assert (=> b!163649 (= e!98638 ((as const (Array C!2364 Bool)) false))))

(declare-fun b!163650 () Bool)

(assert (=> b!163650 (= e!98638 ((_ map or) (store ((as const (Array C!2364 Bool)) false) (h!8201 lt!49243) true) (content!388 (t!26084 lt!49243))))))

(assert (= (and d!40396 c!32722) b!163649))

(assert (= (and d!40396 (not c!32722)) b!163650))

(declare-fun m!154699 () Bool)

(assert (=> b!163650 m!154699))

(declare-fun m!154701 () Bool)

(assert (=> b!163650 m!154701))

(assert (=> d!39894 d!40396))

(declare-fun d!40398 () Bool)

(declare-fun charsToBigInt!0 (List!2813 Int) Int)

(assert (=> d!40398 (= (inv!15 (value!18480 (h!8203 tokens!465))) (= (charsToBigInt!0 (text!4082 (value!18480 (h!8203 tokens!465))) 0) (value!18475 (value!18480 (h!8203 tokens!465)))))))

(declare-fun bs!15484 () Bool)

(assert (= bs!15484 d!40398))

(declare-fun m!154703 () Bool)

(assert (=> bs!15484 m!154703))

(assert (=> b!162876 d!40398))

(declare-fun d!40400 () Bool)

(declare-fun lt!49936 () Token!738)

(assert (=> d!40400 (= lt!49936 (apply!389 (list!1011 (seqFromList!372 (t!26086 tokens!465))) 0))))

(assert (=> d!40400 (= lt!49936 (apply!393 (c!32409 (seqFromList!372 (t!26086 tokens!465))) 0))))

(declare-fun e!98639 () Bool)

(assert (=> d!40400 e!98639))

(declare-fun res!74168 () Bool)

(assert (=> d!40400 (=> (not res!74168) (not e!98639))))

(assert (=> d!40400 (= res!74168 (<= 0 0))))

(assert (=> d!40400 (= (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0) lt!49936)))

(declare-fun b!163651 () Bool)

(assert (=> b!163651 (= e!98639 (< 0 (size!2348 (seqFromList!372 (t!26086 tokens!465)))))))

(assert (= (and d!40400 res!74168) b!163651))

(assert (=> d!40400 m!152265))

(assert (=> d!40400 m!152613))

(assert (=> d!40400 m!152613))

(declare-fun m!154705 () Bool)

(assert (=> d!40400 m!154705))

(declare-fun m!154707 () Bool)

(assert (=> d!40400 m!154707))

(assert (=> b!163651 m!152265))

(assert (=> b!163651 m!152645))

(assert (=> b!162618 d!40400))

(declare-fun b!163654 () Bool)

(declare-fun res!74169 () Bool)

(declare-fun e!98640 () Bool)

(assert (=> b!163654 (=> (not res!74169) (not e!98640))))

(assert (=> b!163654 (= res!74169 (>= (height!86 (++!630 (c!32407 e!98183) (c!32407 (ite c!32515 lt!49517 call!6910)))) (max!0 (height!86 (c!32407 e!98183)) (height!86 (c!32407 (ite c!32515 lt!49517 call!6910))))))))

(declare-fun b!163652 () Bool)

(declare-fun res!74170 () Bool)

(assert (=> b!163652 (=> (not res!74170) (not e!98640))))

(assert (=> b!163652 (= res!74170 (isBalanced!228 (++!630 (c!32407 e!98183) (c!32407 (ite c!32515 lt!49517 call!6910)))))))

(declare-fun lt!49937 () BalanceConc!1640)

(declare-fun b!163655 () Bool)

(assert (=> b!163655 (= e!98640 (= (list!1007 lt!49937) (++!626 (list!1007 e!98183) (list!1007 (ite c!32515 lt!49517 call!6910)))))))

(declare-fun b!163653 () Bool)

(declare-fun res!74172 () Bool)

(assert (=> b!163653 (=> (not res!74172) (not e!98640))))

(assert (=> b!163653 (= res!74172 (<= (height!86 (++!630 (c!32407 e!98183) (c!32407 (ite c!32515 lt!49517 call!6910)))) (+ (max!0 (height!86 (c!32407 e!98183)) (height!86 (c!32407 (ite c!32515 lt!49517 call!6910)))) 1)))))

(declare-fun d!40402 () Bool)

(assert (=> d!40402 e!98640))

(declare-fun res!74171 () Bool)

(assert (=> d!40402 (=> (not res!74171) (not e!98640))))

(assert (=> d!40402 (= res!74171 (appendAssocInst!27 (c!32407 e!98183) (c!32407 (ite c!32515 lt!49517 call!6910))))))

(assert (=> d!40402 (= lt!49937 (BalanceConc!1641 (++!630 (c!32407 e!98183) (c!32407 (ite c!32515 lt!49517 call!6910)))))))

(assert (=> d!40402 (= (++!628 e!98183 (ite c!32515 lt!49517 call!6910)) lt!49937)))

(assert (= (and d!40402 res!74171) b!163652))

(assert (= (and b!163652 res!74170) b!163653))

(assert (= (and b!163653 res!74172) b!163654))

(assert (= (and b!163654 res!74169) b!163655))

(declare-fun m!154709 () Bool)

(assert (=> b!163653 m!154709))

(declare-fun m!154711 () Bool)

(assert (=> b!163653 m!154711))

(declare-fun m!154713 () Bool)

(assert (=> b!163653 m!154713))

(assert (=> b!163653 m!154709))

(declare-fun m!154715 () Bool)

(assert (=> b!163653 m!154715))

(assert (=> b!163653 m!154711))

(assert (=> b!163653 m!154715))

(declare-fun m!154717 () Bool)

(assert (=> b!163653 m!154717))

(assert (=> b!163652 m!154715))

(assert (=> b!163652 m!154715))

(declare-fun m!154719 () Bool)

(assert (=> b!163652 m!154719))

(declare-fun m!154721 () Bool)

(assert (=> b!163655 m!154721))

(declare-fun m!154723 () Bool)

(assert (=> b!163655 m!154723))

(declare-fun m!154725 () Bool)

(assert (=> b!163655 m!154725))

(assert (=> b!163655 m!154723))

(assert (=> b!163655 m!154725))

(declare-fun m!154727 () Bool)

(assert (=> b!163655 m!154727))

(assert (=> b!163654 m!154709))

(assert (=> b!163654 m!154711))

(assert (=> b!163654 m!154713))

(assert (=> b!163654 m!154709))

(assert (=> b!163654 m!154715))

(assert (=> b!163654 m!154711))

(assert (=> b!163654 m!154715))

(assert (=> b!163654 m!154717))

(declare-fun m!154729 () Bool)

(assert (=> d!40402 m!154729))

(assert (=> d!40402 m!154715))

(assert (=> bm!6906 d!40402))

(declare-fun d!40404 () Bool)

(declare-fun e!98642 () Bool)

(assert (=> d!40404 e!98642))

(declare-fun res!74174 () Bool)

(assert (=> d!40404 (=> (not res!74174) (not e!98642))))

(declare-fun lt!49938 () List!2814)

(assert (=> d!40404 (= res!74174 (= (content!388 lt!49938) ((_ map or) (content!388 call!6912) (content!388 (ite c!32519 lt!49534 call!6916)))))))

(declare-fun e!98641 () List!2814)

(assert (=> d!40404 (= lt!49938 e!98641)))

(declare-fun c!32723 () Bool)

(assert (=> d!40404 (= c!32723 ((_ is Nil!2804) call!6912))))

(assert (=> d!40404 (= (++!626 call!6912 (ite c!32519 lt!49534 call!6916)) lt!49938)))

(declare-fun b!163658 () Bool)

(declare-fun res!74173 () Bool)

(assert (=> b!163658 (=> (not res!74173) (not e!98642))))

(assert (=> b!163658 (= res!74173 (= (size!2347 lt!49938) (+ (size!2347 call!6912) (size!2347 (ite c!32519 lt!49534 call!6916)))))))

(declare-fun b!163657 () Bool)

(assert (=> b!163657 (= e!98641 (Cons!2804 (h!8201 call!6912) (++!626 (t!26084 call!6912) (ite c!32519 lt!49534 call!6916))))))

(declare-fun b!163656 () Bool)

(assert (=> b!163656 (= e!98641 (ite c!32519 lt!49534 call!6916))))

(declare-fun b!163659 () Bool)

(assert (=> b!163659 (= e!98642 (or (not (= (ite c!32519 lt!49534 call!6916) Nil!2804)) (= lt!49938 call!6912)))))

(assert (= (and d!40404 c!32723) b!163656))

(assert (= (and d!40404 (not c!32723)) b!163657))

(assert (= (and d!40404 res!74174) b!163658))

(assert (= (and b!163658 res!74173) b!163659))

(declare-fun m!154731 () Bool)

(assert (=> d!40404 m!154731))

(declare-fun m!154733 () Bool)

(assert (=> d!40404 m!154733))

(declare-fun m!154735 () Bool)

(assert (=> d!40404 m!154735))

(declare-fun m!154737 () Bool)

(assert (=> b!163658 m!154737))

(declare-fun m!154739 () Bool)

(assert (=> b!163658 m!154739))

(declare-fun m!154741 () Bool)

(assert (=> b!163658 m!154741))

(declare-fun m!154743 () Bool)

(assert (=> b!163657 m!154743))

(assert (=> bm!6910 d!40404))

(declare-fun bs!15485 () Bool)

(declare-fun d!40406 () Bool)

(assert (= bs!15485 (and d!40406 d!40270)))

(declare-fun lambda!4504 () Int)

(assert (=> bs!15485 (= (= (toValue!1152 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (toValue!1152 (transformation!497 (h!8202 rules!1920)))) (= lambda!4504 lambda!4500))))

(assert (=> d!40406 true))

(assert (=> d!40406 (< (dynLambda!999 order!1425 (toValue!1152 (transformation!497 (rule!1004 (h!8203 tokens!465))))) (dynLambda!1008 order!1435 lambda!4504))))

(assert (=> d!40406 (= (equivClasses!154 (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (toValue!1152 (transformation!497 (rule!1004 (h!8203 tokens!465))))) (Forall2!108 lambda!4504))))

(declare-fun bs!15486 () Bool)

(assert (= bs!15486 d!40406))

(declare-fun m!154745 () Bool)

(assert (=> bs!15486 m!154745))

(assert (=> b!162408 d!40406))

(assert (=> bm!6908 d!39900))

(declare-fun d!40408 () Bool)

(assert (=> d!40408 (= (list!1011 lt!49506) (list!1015 (c!32409 lt!49506)))))

(declare-fun bs!15487 () Bool)

(assert (= bs!15487 d!40408))

(declare-fun m!154747 () Bool)

(assert (=> bs!15487 m!154747))

(assert (=> d!39980 d!40408))

(declare-fun d!40410 () Bool)

(declare-fun e!98645 () Bool)

(assert (=> d!40410 e!98645))

(declare-fun res!74177 () Bool)

(assert (=> d!40410 (=> (not res!74177) (not e!98645))))

(declare-fun lt!49941 () BalanceConc!1642)

(assert (=> d!40410 (= res!74177 (= (list!1011 lt!49941) (Cons!2806 (h!8203 tokens!465) Nil!2806)))))

(declare-fun choose!1805 (Token!738) BalanceConc!1642)

(assert (=> d!40410 (= lt!49941 (choose!1805 (h!8203 tokens!465)))))

(assert (=> d!40410 (= (singleton!29 (h!8203 tokens!465)) lt!49941)))

(declare-fun b!163662 () Bool)

(assert (=> b!163662 (= e!98645 (isBalanced!226 (c!32409 lt!49941)))))

(assert (= (and d!40410 res!74177) b!163662))

(declare-fun m!154749 () Bool)

(assert (=> d!40410 m!154749))

(declare-fun m!154751 () Bool)

(assert (=> d!40410 m!154751))

(declare-fun m!154753 () Bool)

(assert (=> b!163662 m!154753))

(assert (=> d!39980 d!40410))

(declare-fun d!40412 () Bool)

(declare-fun lt!49942 () Int)

(assert (=> d!40412 (>= lt!49942 0)))

(declare-fun e!98646 () Int)

(assert (=> d!40412 (= lt!49942 e!98646)))

(declare-fun c!32724 () Bool)

(assert (=> d!40412 (= c!32724 ((_ is Nil!2804) (originalCharacters!540 separatorToken!170)))))

(assert (=> d!40412 (= (size!2347 (originalCharacters!540 separatorToken!170)) lt!49942)))

(declare-fun b!163663 () Bool)

(assert (=> b!163663 (= e!98646 0)))

(declare-fun b!163664 () Bool)

(assert (=> b!163664 (= e!98646 (+ 1 (size!2347 (t!26084 (originalCharacters!540 separatorToken!170)))))))

(assert (= (and d!40412 c!32724) b!163663))

(assert (= (and d!40412 (not c!32724)) b!163664))

(declare-fun m!154755 () Bool)

(assert (=> b!163664 m!154755))

(assert (=> b!162818 d!40412))

(declare-fun d!40414 () Bool)

(declare-fun lt!49943 () Int)

(assert (=> d!40414 (>= lt!49943 0)))

(declare-fun e!98647 () Int)

(assert (=> d!40414 (= lt!49943 e!98647)))

(declare-fun c!32725 () Bool)

(assert (=> d!40414 (= c!32725 ((_ is Nil!2804) (originalCharacters!540 (h!8203 tokens!465))))))

(assert (=> d!40414 (= (size!2347 (originalCharacters!540 (h!8203 tokens!465))) lt!49943)))

(declare-fun b!163665 () Bool)

(assert (=> b!163665 (= e!98647 0)))

(declare-fun b!163666 () Bool)

(assert (=> b!163666 (= e!98647 (+ 1 (size!2347 (t!26084 (originalCharacters!540 (h!8203 tokens!465))))))))

(assert (= (and d!40414 c!32725) b!163665))

(assert (= (and d!40414 (not c!32725)) b!163666))

(declare-fun m!154757 () Bool)

(assert (=> b!163666 m!154757))

(assert (=> b!162424 d!40414))

(declare-fun d!40416 () Bool)

(declare-fun lt!49944 () Int)

(assert (=> d!40416 (= lt!49944 (size!2351 (list!1011 (_1!1551 lt!49478))))))

(assert (=> d!40416 (= lt!49944 (size!2353 (c!32409 (_1!1551 lt!49478))))))

(assert (=> d!40416 (= (size!2348 (_1!1551 lt!49478)) lt!49944)))

(declare-fun bs!15488 () Bool)

(assert (= bs!15488 d!40416))

(assert (=> bs!15488 m!152995))

(assert (=> bs!15488 m!152995))

(declare-fun m!154759 () Bool)

(assert (=> bs!15488 m!154759))

(declare-fun m!154761 () Bool)

(assert (=> bs!15488 m!154761))

(assert (=> d!39920 d!40416))

(declare-fun lt!50167 () Option!277)

(declare-fun b!163797 () Bool)

(declare-fun lt!50184 () tuple2!2670)

(declare-fun lexRec!62 (LexerInterface!383 List!2815 BalanceConc!1640) tuple2!2670)

(assert (=> b!163797 (= lt!50184 (lexRec!62 thiss!17480 rules!1920 (_2!1556 (v!13693 lt!50167))))))

(declare-fun e!98726 () tuple2!2670)

(declare-fun prepend!145 (BalanceConc!1642 Token!738) BalanceConc!1642)

(assert (=> b!163797 (= e!98726 (tuple2!2671 (prepend!145 (_1!1551 lt!50184) (_1!1556 (v!13693 lt!50167))) (_2!1551 lt!50184)))))

(declare-fun d!40418 () Bool)

(declare-fun e!98724 () Bool)

(assert (=> d!40418 e!98724))

(declare-fun res!74219 () Bool)

(assert (=> d!40418 (=> (not res!74219) (not e!98724))))

(declare-fun lt!50177 () tuple2!2670)

(assert (=> d!40418 (= res!74219 (= (list!1011 (_1!1551 lt!50177)) (list!1011 (_1!1551 (lexRec!62 thiss!17480 rules!1920 (seqFromList!371 lt!49240))))))))

(declare-fun e!98727 () tuple2!2670)

(assert (=> d!40418 (= lt!50177 e!98727)))

(declare-fun c!32768 () Bool)

(declare-fun lt!50171 () Option!277)

(assert (=> d!40418 (= c!32768 ((_ is Some!276) lt!50171))))

(declare-fun maxPrefixZipperSequenceV2!47 (LexerInterface!383 List!2815 BalanceConc!1640 BalanceConc!1640) Option!277)

(assert (=> d!40418 (= lt!50171 (maxPrefixZipperSequenceV2!47 thiss!17480 rules!1920 (seqFromList!371 lt!49240) (seqFromList!371 lt!49240)))))

(declare-fun lt!50168 () Unit!2310)

(declare-fun lt!50176 () Unit!2310)

(assert (=> d!40418 (= lt!50168 lt!50176)))

(declare-fun lt!50179 () List!2814)

(declare-fun lt!50180 () List!2814)

(declare-fun isSuffix!47 (List!2814 List!2814) Bool)

(assert (=> d!40418 (isSuffix!47 lt!50179 (++!626 lt!50180 lt!50179))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!47 (List!2814 List!2814) Unit!2310)

(assert (=> d!40418 (= lt!50176 (lemmaConcatTwoListThenFSndIsSuffix!47 lt!50180 lt!50179))))

(assert (=> d!40418 (= lt!50179 (list!1007 (seqFromList!371 lt!49240)))))

(assert (=> d!40418 (= lt!50180 (list!1007 (BalanceConc!1641 Empty!816)))))

(assert (=> d!40418 (= (lexTailRecV2!92 thiss!17480 rules!1920 (seqFromList!371 lt!49240) (BalanceConc!1641 Empty!816) (seqFromList!371 lt!49240) (BalanceConc!1643 Empty!817)) lt!50177)))

(declare-fun b!163798 () Bool)

(declare-fun lt!50188 () BalanceConc!1640)

(declare-fun append!67 (BalanceConc!1642 Token!738) BalanceConc!1642)

(assert (=> b!163798 (= e!98727 (lexTailRecV2!92 thiss!17480 rules!1920 (seqFromList!371 lt!49240) lt!50188 (_2!1556 (v!13693 lt!50171)) (append!67 (BalanceConc!1643 Empty!817) (_1!1556 (v!13693 lt!50171)))))))

(declare-fun lt!50187 () tuple2!2670)

(assert (=> b!163798 (= lt!50187 (lexRec!62 thiss!17480 rules!1920 (_2!1556 (v!13693 lt!50171))))))

(declare-fun lt!50196 () List!2814)

(assert (=> b!163798 (= lt!50196 (list!1007 (BalanceConc!1641 Empty!816)))))

(declare-fun lt!50190 () List!2814)

(assert (=> b!163798 (= lt!50190 (list!1007 (charsOf!152 (_1!1556 (v!13693 lt!50171)))))))

(declare-fun lt!50194 () List!2814)

(assert (=> b!163798 (= lt!50194 (list!1007 (_2!1556 (v!13693 lt!50171))))))

(declare-fun lt!50186 () Unit!2310)

(assert (=> b!163798 (= lt!50186 (lemmaConcatAssociativity!178 lt!50196 lt!50190 lt!50194))))

(assert (=> b!163798 (= (++!626 (++!626 lt!50196 lt!50190) lt!50194) (++!626 lt!50196 (++!626 lt!50190 lt!50194)))))

(declare-fun lt!50183 () Unit!2310)

(assert (=> b!163798 (= lt!50183 lt!50186)))

(declare-fun lt!50174 () Option!277)

(assert (=> b!163798 (= lt!50174 (maxPrefixZipperSequence!80 thiss!17480 rules!1920 (seqFromList!371 lt!49240)))))

(declare-fun c!32769 () Bool)

(assert (=> b!163798 (= c!32769 ((_ is Some!276) lt!50174))))

(declare-fun e!98725 () tuple2!2670)

(assert (=> b!163798 (= (lexRec!62 thiss!17480 rules!1920 (seqFromList!371 lt!49240)) e!98725)))

(declare-fun lt!50195 () Unit!2310)

(declare-fun Unit!2342 () Unit!2310)

(assert (=> b!163798 (= lt!50195 Unit!2342)))

(declare-fun lt!50173 () List!2816)

(assert (=> b!163798 (= lt!50173 (list!1011 (BalanceConc!1643 Empty!817)))))

(declare-fun lt!50178 () List!2816)

(assert (=> b!163798 (= lt!50178 (Cons!2806 (_1!1556 (v!13693 lt!50171)) Nil!2806))))

(declare-fun lt!50191 () List!2816)

(assert (=> b!163798 (= lt!50191 (list!1011 (_1!1551 lt!50187)))))

(declare-fun lt!50197 () Unit!2310)

(declare-fun lemmaConcatAssociativity!180 (List!2816 List!2816 List!2816) Unit!2310)

(assert (=> b!163798 (= lt!50197 (lemmaConcatAssociativity!180 lt!50173 lt!50178 lt!50191))))

(declare-fun ++!632 (List!2816 List!2816) List!2816)

(assert (=> b!163798 (= (++!632 (++!632 lt!50173 lt!50178) lt!50191) (++!632 lt!50173 (++!632 lt!50178 lt!50191)))))

(declare-fun lt!50181 () Unit!2310)

(assert (=> b!163798 (= lt!50181 lt!50197)))

(declare-fun lt!50189 () List!2814)

(assert (=> b!163798 (= lt!50189 (++!626 (list!1007 (BalanceConc!1641 Empty!816)) (list!1007 (charsOf!152 (_1!1556 (v!13693 lt!50171))))))))

(declare-fun lt!50182 () List!2814)

(assert (=> b!163798 (= lt!50182 (list!1007 (_2!1556 (v!13693 lt!50171))))))

(declare-fun lt!50172 () List!2816)

(assert (=> b!163798 (= lt!50172 (list!1011 (append!67 (BalanceConc!1643 Empty!817) (_1!1556 (v!13693 lt!50171)))))))

(declare-fun lt!50193 () Unit!2310)

(declare-fun lemmaLexThenLexPrefix!49 (LexerInterface!383 List!2815 List!2814 List!2814 List!2816 List!2816 List!2814) Unit!2310)

(assert (=> b!163798 (= lt!50193 (lemmaLexThenLexPrefix!49 thiss!17480 rules!1920 lt!50189 lt!50182 lt!50172 (list!1011 (_1!1551 lt!50187)) (list!1007 (_2!1551 lt!50187))))))

(assert (=> b!163798 (= (lexList!105 thiss!17480 rules!1920 lt!50189) (tuple2!2683 lt!50172 Nil!2804))))

(declare-fun lt!50175 () Unit!2310)

(assert (=> b!163798 (= lt!50175 lt!50193)))

(declare-fun lt!50192 () BalanceConc!1640)

(assert (=> b!163798 (= lt!50192 (++!628 (BalanceConc!1641 Empty!816) (charsOf!152 (_1!1556 (v!13693 lt!50171)))))))

(assert (=> b!163798 (= lt!50167 (maxPrefixZipperSequence!80 thiss!17480 rules!1920 lt!50192))))

(declare-fun c!32767 () Bool)

(assert (=> b!163798 (= c!32767 ((_ is Some!276) lt!50167))))

(assert (=> b!163798 (= (lexRec!62 thiss!17480 rules!1920 (++!628 (BalanceConc!1641 Empty!816) (charsOf!152 (_1!1556 (v!13693 lt!50171))))) e!98726)))

(declare-fun lt!50165 () Unit!2310)

(declare-fun Unit!2345 () Unit!2310)

(assert (=> b!163798 (= lt!50165 Unit!2345)))

(assert (=> b!163798 (= lt!50188 (++!628 (BalanceConc!1641 Empty!816) (charsOf!152 (_1!1556 (v!13693 lt!50171)))))))

(declare-fun lt!50166 () List!2814)

(assert (=> b!163798 (= lt!50166 (list!1007 lt!50188))))

(declare-fun lt!50164 () List!2814)

(assert (=> b!163798 (= lt!50164 (list!1007 (_2!1556 (v!13693 lt!50171))))))

(declare-fun lt!50185 () Unit!2310)

(assert (=> b!163798 (= lt!50185 (lemmaConcatTwoListThenFSndIsSuffix!47 lt!50166 lt!50164))))

(assert (=> b!163798 (isSuffix!47 lt!50164 (++!626 lt!50166 lt!50164))))

(declare-fun lt!50170 () Unit!2310)

(assert (=> b!163798 (= lt!50170 lt!50185)))

(declare-fun b!163799 () Bool)

(assert (=> b!163799 (= e!98727 (tuple2!2671 (BalanceConc!1643 Empty!817) (seqFromList!371 lt!49240)))))

(declare-fun b!163800 () Bool)

(assert (=> b!163800 (= e!98724 (= (list!1007 (_2!1551 lt!50177)) (list!1007 (_2!1551 (lexRec!62 thiss!17480 rules!1920 (seqFromList!371 lt!49240))))))))

(declare-fun b!163801 () Bool)

(declare-fun lt!50169 () tuple2!2670)

(assert (=> b!163801 (= lt!50169 (lexRec!62 thiss!17480 rules!1920 (_2!1556 (v!13693 lt!50174))))))

(assert (=> b!163801 (= e!98725 (tuple2!2671 (prepend!145 (_1!1551 lt!50169) (_1!1556 (v!13693 lt!50174))) (_2!1551 lt!50169)))))

(declare-fun b!163802 () Bool)

(assert (=> b!163802 (= e!98725 (tuple2!2671 (BalanceConc!1643 Empty!817) (seqFromList!371 lt!49240)))))

(declare-fun b!163803 () Bool)

(assert (=> b!163803 (= e!98726 (tuple2!2671 (BalanceConc!1643 Empty!817) lt!50192))))

(assert (= (and d!40418 c!32768) b!163798))

(assert (= (and d!40418 (not c!32768)) b!163799))

(assert (= (and b!163798 c!32769) b!163801))

(assert (= (and b!163798 (not c!32769)) b!163802))

(assert (= (and b!163798 c!32767) b!163797))

(assert (= (and b!163798 (not c!32767)) b!163803))

(assert (= (and d!40418 res!74219) b!163800))

(declare-fun m!155139 () Bool)

(assert (=> b!163797 m!155139))

(declare-fun m!155141 () Bool)

(assert (=> b!163797 m!155141))

(declare-fun m!155143 () Bool)

(assert (=> b!163801 m!155143))

(declare-fun m!155145 () Bool)

(assert (=> b!163801 m!155145))

(declare-fun m!155147 () Bool)

(assert (=> b!163798 m!155147))

(declare-fun m!155149 () Bool)

(assert (=> b!163798 m!155149))

(declare-fun m!155151 () Bool)

(assert (=> b!163798 m!155151))

(declare-fun m!155153 () Bool)

(assert (=> b!163798 m!155153))

(declare-fun m!155155 () Bool)

(assert (=> b!163798 m!155155))

(declare-fun m!155157 () Bool)

(assert (=> b!163798 m!155157))

(declare-fun m!155159 () Bool)

(assert (=> b!163798 m!155159))

(declare-fun m!155161 () Bool)

(assert (=> b!163798 m!155161))

(assert (=> b!163798 m!152333))

(assert (=> b!163798 m!155147))

(declare-fun m!155163 () Bool)

(assert (=> b!163798 m!155163))

(declare-fun m!155165 () Bool)

(assert (=> b!163798 m!155165))

(assert (=> b!163798 m!155147))

(declare-fun m!155167 () Bool)

(assert (=> b!163798 m!155167))

(declare-fun m!155169 () Bool)

(assert (=> b!163798 m!155169))

(assert (=> b!163798 m!153043))

(declare-fun m!155171 () Bool)

(assert (=> b!163798 m!155171))

(declare-fun m!155173 () Bool)

(assert (=> b!163798 m!155173))

(declare-fun m!155175 () Bool)

(assert (=> b!163798 m!155175))

(assert (=> b!163798 m!155171))

(declare-fun m!155177 () Bool)

(assert (=> b!163798 m!155177))

(declare-fun m!155179 () Bool)

(assert (=> b!163798 m!155179))

(declare-fun m!155181 () Bool)

(assert (=> b!163798 m!155181))

(assert (=> b!163798 m!155177))

(declare-fun m!155183 () Bool)

(assert (=> b!163798 m!155183))

(declare-fun m!155185 () Bool)

(assert (=> b!163798 m!155185))

(declare-fun m!155187 () Bool)

(assert (=> b!163798 m!155187))

(assert (=> b!163798 m!152333))

(declare-fun m!155189 () Bool)

(assert (=> b!163798 m!155189))

(assert (=> b!163798 m!152333))

(declare-fun m!155191 () Bool)

(assert (=> b!163798 m!155191))

(declare-fun m!155193 () Bool)

(assert (=> b!163798 m!155193))

(assert (=> b!163798 m!155187))

(declare-fun m!155195 () Bool)

(assert (=> b!163798 m!155195))

(assert (=> b!163798 m!153043))

(assert (=> b!163798 m!155193))

(declare-fun m!155197 () Bool)

(assert (=> b!163798 m!155197))

(assert (=> b!163798 m!155175))

(assert (=> b!163798 m!155159))

(assert (=> b!163798 m!155151))

(declare-fun m!155199 () Bool)

(assert (=> b!163798 m!155199))

(declare-fun m!155201 () Bool)

(assert (=> b!163798 m!155201))

(declare-fun m!155203 () Bool)

(assert (=> b!163798 m!155203))

(declare-fun m!155205 () Bool)

(assert (=> b!163798 m!155205))

(declare-fun m!155207 () Bool)

(assert (=> b!163798 m!155207))

(assert (=> b!163798 m!155199))

(assert (=> b!163798 m!155179))

(declare-fun m!155209 () Bool)

(assert (=> b!163798 m!155209))

(assert (=> b!163798 m!155175))

(assert (=> b!163798 m!155153))

(declare-fun m!155211 () Bool)

(assert (=> b!163800 m!155211))

(assert (=> b!163800 m!152333))

(assert (=> b!163800 m!155191))

(declare-fun m!155213 () Bool)

(assert (=> b!163800 m!155213))

(declare-fun m!155215 () Bool)

(assert (=> d!40418 m!155215))

(declare-fun m!155217 () Bool)

(assert (=> d!40418 m!155217))

(declare-fun m!155219 () Bool)

(assert (=> d!40418 m!155219))

(assert (=> d!40418 m!153043))

(declare-fun m!155221 () Bool)

(assert (=> d!40418 m!155221))

(assert (=> d!40418 m!152333))

(assert (=> d!40418 m!152997))

(assert (=> d!40418 m!152333))

(assert (=> d!40418 m!152333))

(declare-fun m!155223 () Bool)

(assert (=> d!40418 m!155223))

(assert (=> d!40418 m!155215))

(assert (=> d!40418 m!152333))

(assert (=> d!40418 m!155191))

(declare-fun m!155225 () Bool)

(assert (=> d!40418 m!155225))

(assert (=> d!39920 d!40418))

(declare-fun d!40480 () Bool)

(assert (=> d!40480 (= (inv!3617 (tag!675 (h!8202 (t!26085 rules!1920)))) (= (mod (str.len (value!18479 (tag!675 (h!8202 (t!26085 rules!1920))))) 2) 0))))

(assert (=> b!162951 d!40480))

(declare-fun d!40482 () Bool)

(declare-fun res!74220 () Bool)

(declare-fun e!98728 () Bool)

(assert (=> d!40482 (=> (not res!74220) (not e!98728))))

(assert (=> d!40482 (= res!74220 (semiInverseModEq!171 (toChars!1011 (transformation!497 (h!8202 (t!26085 rules!1920)))) (toValue!1152 (transformation!497 (h!8202 (t!26085 rules!1920))))))))

(assert (=> d!40482 (= (inv!3620 (transformation!497 (h!8202 (t!26085 rules!1920)))) e!98728)))

(declare-fun b!163804 () Bool)

(assert (=> b!163804 (= e!98728 (equivClasses!154 (toChars!1011 (transformation!497 (h!8202 (t!26085 rules!1920)))) (toValue!1152 (transformation!497 (h!8202 (t!26085 rules!1920))))))))

(assert (= (and d!40482 res!74220) b!163804))

(declare-fun m!155227 () Bool)

(assert (=> d!40482 m!155227))

(declare-fun m!155229 () Bool)

(assert (=> b!163804 m!155229))

(assert (=> b!162951 d!40482))

(declare-fun d!40484 () Bool)

(declare-fun lt!50198 () Int)

(assert (=> d!40484 (>= lt!50198 0)))

(declare-fun e!98729 () Int)

(assert (=> d!40484 (= lt!50198 e!98729)))

(declare-fun c!32770 () Bool)

(assert (=> d!40484 (= c!32770 ((_ is Nil!2804) lt!49367))))

(assert (=> d!40484 (= (size!2347 lt!49367) lt!50198)))

(declare-fun b!163805 () Bool)

(assert (=> b!163805 (= e!98729 0)))

(declare-fun b!163806 () Bool)

(assert (=> b!163806 (= e!98729 (+ 1 (size!2347 (t!26084 lt!49367))))))

(assert (= (and d!40484 c!32770) b!163805))

(assert (= (and d!40484 (not c!32770)) b!163806))

(declare-fun m!155231 () Bool)

(assert (=> b!163806 m!155231))

(assert (=> b!162638 d!40484))

(declare-fun d!40486 () Bool)

(declare-fun lt!50199 () Int)

(assert (=> d!40486 (>= lt!50199 0)))

(declare-fun e!98730 () Int)

(assert (=> d!40486 (= lt!50199 e!98730)))

(declare-fun c!32771 () Bool)

(assert (=> d!40486 (= c!32771 ((_ is Nil!2804) (++!626 lt!49240 lt!49241)))))

(assert (=> d!40486 (= (size!2347 (++!626 lt!49240 lt!49241)) lt!50199)))

(declare-fun b!163807 () Bool)

(assert (=> b!163807 (= e!98730 0)))

(declare-fun b!163808 () Bool)

(assert (=> b!163808 (= e!98730 (+ 1 (size!2347 (t!26084 (++!626 lt!49240 lt!49241)))))))

(assert (= (and d!40486 c!32771) b!163807))

(assert (= (and d!40486 (not c!32771)) b!163808))

(declare-fun m!155233 () Bool)

(assert (=> b!163808 m!155233))

(assert (=> b!162638 d!40486))

(assert (=> b!162638 d!40208))

(declare-fun d!40488 () Bool)

(declare-fun charsToBigInt!1 (List!2813) Int)

(assert (=> d!40488 (= (inv!17 (value!18480 separatorToken!170)) (= (charsToBigInt!1 (text!4081 (value!18480 separatorToken!170))) (value!18472 (value!18480 separatorToken!170))))))

(declare-fun bs!15536 () Bool)

(assert (= bs!15536 d!40488))

(declare-fun m!155235 () Bool)

(assert (=> bs!15536 m!155235))

(assert (=> b!162860 d!40488))

(assert (=> b!162887 d!40212))

(declare-fun d!40490 () Bool)

(declare-fun lt!50200 () Token!738)

(assert (=> d!40490 (= lt!50200 (apply!389 (list!1011 lt!49245) 0))))

(assert (=> d!40490 (= lt!50200 (apply!393 (c!32409 lt!49245) 0))))

(declare-fun e!98731 () Bool)

(assert (=> d!40490 e!98731))

(declare-fun res!74221 () Bool)

(assert (=> d!40490 (=> (not res!74221) (not e!98731))))

(assert (=> d!40490 (= res!74221 (<= 0 0))))

(assert (=> d!40490 (= (apply!390 lt!49245 0) lt!50200)))

(declare-fun b!163809 () Bool)

(assert (=> b!163809 (= e!98731 (< 0 (size!2348 lt!49245)))))

(assert (= (and d!40490 res!74221) b!163809))

(assert (=> d!40490 m!153103))

(assert (=> d!40490 m!153103))

(declare-fun m!155237 () Bool)

(assert (=> d!40490 m!155237))

(declare-fun m!155239 () Bool)

(assert (=> d!40490 m!155239))

(assert (=> b!163809 m!153177))

(assert (=> b!162883 d!40490))

(declare-fun d!40492 () Bool)

(declare-fun e!98733 () Bool)

(assert (=> d!40492 e!98733))

(declare-fun res!74223 () Bool)

(assert (=> d!40492 (=> (not res!74223) (not e!98733))))

(declare-fun lt!50201 () List!2814)

(assert (=> d!40492 (= res!74223 (= (content!388 lt!50201) ((_ map or) (content!388 call!6849) (content!388 lt!49297))))))

(declare-fun e!98732 () List!2814)

(assert (=> d!40492 (= lt!50201 e!98732)))

(declare-fun c!32772 () Bool)

(assert (=> d!40492 (= c!32772 ((_ is Nil!2804) call!6849))))

(assert (=> d!40492 (= (++!626 call!6849 lt!49297) lt!50201)))

(declare-fun b!163812 () Bool)

(declare-fun res!74222 () Bool)

(assert (=> b!163812 (=> (not res!74222) (not e!98733))))

(assert (=> b!163812 (= res!74222 (= (size!2347 lt!50201) (+ (size!2347 call!6849) (size!2347 lt!49297))))))

(declare-fun b!163811 () Bool)

(assert (=> b!163811 (= e!98732 (Cons!2804 (h!8201 call!6849) (++!626 (t!26084 call!6849) lt!49297)))))

(declare-fun b!163810 () Bool)

(assert (=> b!163810 (= e!98732 lt!49297)))

(declare-fun b!163813 () Bool)

(assert (=> b!163813 (= e!98733 (or (not (= lt!49297 Nil!2804)) (= lt!50201 call!6849)))))

(assert (= (and d!40492 c!32772) b!163810))

(assert (= (and d!40492 (not c!32772)) b!163811))

(assert (= (and d!40492 res!74223) b!163812))

(assert (= (and b!163812 res!74222) b!163813))

(declare-fun m!155241 () Bool)

(assert (=> d!40492 m!155241))

(declare-fun m!155243 () Bool)

(assert (=> d!40492 m!155243))

(assert (=> d!40492 m!154371))

(declare-fun m!155245 () Bool)

(assert (=> b!163812 m!155245))

(declare-fun m!155247 () Bool)

(assert (=> b!163812 m!155247))

(assert (=> b!163812 m!154377))

(declare-fun m!155249 () Bool)

(assert (=> b!163811 m!155249))

(assert (=> b!162540 d!40492))

(assert (=> b!162892 d!39892))

(declare-fun d!40494 () Bool)

(declare-fun lt!50202 () Int)

(assert (=> d!40494 (>= lt!50202 0)))

(declare-fun e!98734 () Int)

(assert (=> d!40494 (= lt!50202 e!98734)))

(declare-fun c!32773 () Bool)

(assert (=> d!40494 (= c!32773 ((_ is Nil!2804) lt!49364))))

(assert (=> d!40494 (= (size!2347 lt!49364) lt!50202)))

(declare-fun b!163814 () Bool)

(assert (=> b!163814 (= e!98734 0)))

(declare-fun b!163815 () Bool)

(assert (=> b!163815 (= e!98734 (+ 1 (size!2347 (t!26084 lt!49364))))))

(assert (= (and d!40494 c!32773) b!163814))

(assert (= (and d!40494 (not c!32773)) b!163815))

(declare-fun m!155251 () Bool)

(assert (=> b!163815 m!155251))

(assert (=> b!162630 d!40494))

(assert (=> b!162630 d!40206))

(declare-fun d!40496 () Bool)

(declare-fun lt!50203 () Int)

(assert (=> d!40496 (>= lt!50203 0)))

(declare-fun e!98735 () Int)

(assert (=> d!40496 (= lt!50203 e!98735)))

(declare-fun c!32774 () Bool)

(assert (=> d!40496 (= c!32774 ((_ is Nil!2804) lt!49243))))

(assert (=> d!40496 (= (size!2347 lt!49243) lt!50203)))

(declare-fun b!163816 () Bool)

(assert (=> b!163816 (= e!98735 0)))

(declare-fun b!163817 () Bool)

(assert (=> b!163817 (= e!98735 (+ 1 (size!2347 (t!26084 lt!49243))))))

(assert (= (and d!40496 c!32774) b!163816))

(assert (= (and d!40496 (not c!32774)) b!163817))

(declare-fun m!155253 () Bool)

(assert (=> b!163817 m!155253))

(assert (=> b!162630 d!40496))

(declare-fun d!40498 () Bool)

(declare-fun c!32775 () Bool)

(assert (=> d!40498 (= c!32775 ((_ is Empty!816) (c!32407 (seqFromList!371 lt!49247))))))

(declare-fun e!98736 () List!2814)

(assert (=> d!40498 (= (list!1010 (c!32407 (seqFromList!371 lt!49247))) e!98736)))

(declare-fun b!163818 () Bool)

(assert (=> b!163818 (= e!98736 Nil!2804)))

(declare-fun b!163819 () Bool)

(declare-fun e!98737 () List!2814)

(assert (=> b!163819 (= e!98736 e!98737)))

(declare-fun c!32776 () Bool)

(assert (=> b!163819 (= c!32776 ((_ is Leaf!1404) (c!32407 (seqFromList!371 lt!49247))))))

(declare-fun b!163820 () Bool)

(assert (=> b!163820 (= e!98737 (list!1014 (xs!3411 (c!32407 (seqFromList!371 lt!49247)))))))

(declare-fun b!163821 () Bool)

(assert (=> b!163821 (= e!98737 (++!626 (list!1010 (left!2115 (c!32407 (seqFromList!371 lt!49247)))) (list!1010 (right!2445 (c!32407 (seqFromList!371 lt!49247))))))))

(assert (= (and d!40498 c!32775) b!163818))

(assert (= (and d!40498 (not c!32775)) b!163819))

(assert (= (and b!163819 c!32776) b!163820))

(assert (= (and b!163819 (not c!32776)) b!163821))

(declare-fun m!155255 () Bool)

(assert (=> b!163820 m!155255))

(declare-fun m!155257 () Bool)

(assert (=> b!163821 m!155257))

(declare-fun m!155259 () Bool)

(assert (=> b!163821 m!155259))

(assert (=> b!163821 m!155257))

(assert (=> b!163821 m!155259))

(declare-fun m!155261 () Bool)

(assert (=> b!163821 m!155261))

(assert (=> d!39992 d!40498))

(declare-fun d!40500 () Bool)

(assert (=> d!40500 (= (inv!3625 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (value!18480 separatorToken!170))) (isBalanced!228 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (value!18480 separatorToken!170)))))))

(declare-fun bs!15537 () Bool)

(assert (= bs!15537 d!40500))

(declare-fun m!155263 () Bool)

(assert (=> bs!15537 m!155263))

(assert (=> tb!5983 d!40500))

(declare-fun d!40502 () Bool)

(declare-fun res!74241 () Bool)

(declare-fun e!98743 () Bool)

(assert (=> d!40502 (=> res!74241 e!98743)))

(assert (=> d!40502 (= res!74241 (not ((_ is Node!817) (c!32409 lt!49506))))))

(assert (=> d!40502 (= (isBalanced!226 (c!32409 lt!49506)) e!98743)))

(declare-fun b!163834 () Bool)

(declare-fun e!98742 () Bool)

(assert (=> b!163834 (= e!98743 e!98742)))

(declare-fun res!74239 () Bool)

(assert (=> b!163834 (=> (not res!74239) (not e!98742))))

(declare-fun height!87 (Conc!817) Int)

(assert (=> b!163834 (= res!74239 (<= (- 1) (- (height!87 (left!2116 (c!32409 lt!49506))) (height!87 (right!2446 (c!32409 lt!49506))))))))

(declare-fun b!163835 () Bool)

(declare-fun res!74237 () Bool)

(assert (=> b!163835 (=> (not res!74237) (not e!98742))))

(assert (=> b!163835 (= res!74237 (not (isEmpty!1144 (left!2116 (c!32409 lt!49506)))))))

(declare-fun b!163836 () Bool)

(declare-fun res!74238 () Bool)

(assert (=> b!163836 (=> (not res!74238) (not e!98742))))

(assert (=> b!163836 (= res!74238 (<= (- (height!87 (left!2116 (c!32409 lt!49506))) (height!87 (right!2446 (c!32409 lt!49506)))) 1))))

(declare-fun b!163837 () Bool)

(assert (=> b!163837 (= e!98742 (not (isEmpty!1144 (right!2446 (c!32409 lt!49506)))))))

(declare-fun b!163838 () Bool)

(declare-fun res!74236 () Bool)

(assert (=> b!163838 (=> (not res!74236) (not e!98742))))

(assert (=> b!163838 (= res!74236 (isBalanced!226 (right!2446 (c!32409 lt!49506))))))

(declare-fun b!163839 () Bool)

(declare-fun res!74240 () Bool)

(assert (=> b!163839 (=> (not res!74240) (not e!98742))))

(assert (=> b!163839 (= res!74240 (isBalanced!226 (left!2116 (c!32409 lt!49506))))))

(assert (= (and d!40502 (not res!74241)) b!163834))

(assert (= (and b!163834 res!74239) b!163836))

(assert (= (and b!163836 res!74238) b!163839))

(assert (= (and b!163839 res!74240) b!163838))

(assert (= (and b!163838 res!74236) b!163835))

(assert (= (and b!163835 res!74237) b!163837))

(declare-fun m!155265 () Bool)

(assert (=> b!163839 m!155265))

(declare-fun m!155267 () Bool)

(assert (=> b!163838 m!155267))

(declare-fun m!155269 () Bool)

(assert (=> b!163836 m!155269))

(declare-fun m!155271 () Bool)

(assert (=> b!163836 m!155271))

(declare-fun m!155273 () Bool)

(assert (=> b!163835 m!155273))

(assert (=> b!163834 m!155269))

(assert (=> b!163834 m!155271))

(declare-fun m!155275 () Bool)

(assert (=> b!163837 m!155275))

(assert (=> b!162836 d!40502))

(declare-fun d!40504 () Bool)

(declare-fun lt!50204 () Bool)

(assert (=> d!40504 (= lt!50204 (isEmpty!1143 (list!1011 (_1!1551 lt!49478))))))

(assert (=> d!40504 (= lt!50204 (isEmpty!1144 (c!32409 (_1!1551 lt!49478))))))

(assert (=> d!40504 (= (isEmpty!1135 (_1!1551 lt!49478)) lt!50204)))

(declare-fun bs!15538 () Bool)

(assert (= bs!15538 d!40504))

(assert (=> bs!15538 m!152995))

(assert (=> bs!15538 m!152995))

(declare-fun m!155277 () Bool)

(assert (=> bs!15538 m!155277))

(declare-fun m!155279 () Bool)

(assert (=> bs!15538 m!155279))

(assert (=> b!162814 d!40504))

(declare-fun d!40506 () Bool)

(assert (=> d!40506 (= (tail!334 (drop!133 lt!49520 0)) (t!26086 (drop!133 lt!49520 0)))))

(assert (=> b!162881 d!40506))

(assert (=> b!162881 d!40220))

(declare-fun b!163840 () Bool)

(declare-fun e!98747 () List!2816)

(declare-fun e!98744 () List!2816)

(assert (=> b!163840 (= e!98747 e!98744)))

(declare-fun c!32778 () Bool)

(assert (=> b!163840 (= c!32778 (<= (+ 0 1) 0))))

(declare-fun bm!6973 () Bool)

(declare-fun call!6978 () Int)

(assert (=> bm!6973 (= call!6978 (size!2351 lt!49520))))

(declare-fun b!163841 () Bool)

(declare-fun e!98745 () Int)

(assert (=> b!163841 (= e!98745 (- call!6978 (+ 0 1)))))

(declare-fun b!163842 () Bool)

(assert (=> b!163842 (= e!98744 lt!49520)))

(declare-fun d!40508 () Bool)

(declare-fun e!98746 () Bool)

(assert (=> d!40508 e!98746))

(declare-fun res!74242 () Bool)

(assert (=> d!40508 (=> (not res!74242) (not e!98746))))

(declare-fun lt!50205 () List!2816)

(assert (=> d!40508 (= res!74242 (= ((_ map implies) (content!389 lt!50205) (content!389 lt!49520)) ((as const (InoxSet Token!738)) true)))))

(assert (=> d!40508 (= lt!50205 e!98747)))

(declare-fun c!32780 () Bool)

(assert (=> d!40508 (= c!32780 ((_ is Nil!2806) lt!49520))))

(assert (=> d!40508 (= (drop!133 lt!49520 (+ 0 1)) lt!50205)))

(declare-fun b!163843 () Bool)

(declare-fun e!98748 () Int)

(assert (=> b!163843 (= e!98746 (= (size!2351 lt!50205) e!98748))))

(declare-fun c!32779 () Bool)

(assert (=> b!163843 (= c!32779 (<= (+ 0 1) 0))))

(declare-fun b!163844 () Bool)

(assert (=> b!163844 (= e!98748 e!98745)))

(declare-fun c!32777 () Bool)

(assert (=> b!163844 (= c!32777 (>= (+ 0 1) call!6978))))

(declare-fun b!163845 () Bool)

(assert (=> b!163845 (= e!98747 Nil!2806)))

(declare-fun b!163846 () Bool)

(assert (=> b!163846 (= e!98745 0)))

(declare-fun b!163847 () Bool)

(assert (=> b!163847 (= e!98748 call!6978)))

(declare-fun b!163848 () Bool)

(assert (=> b!163848 (= e!98744 (drop!133 (t!26086 lt!49520) (- (+ 0 1) 1)))))

(assert (= (and d!40508 c!32780) b!163845))

(assert (= (and d!40508 (not c!32780)) b!163840))

(assert (= (and b!163840 c!32778) b!163842))

(assert (= (and b!163840 (not c!32778)) b!163848))

(assert (= (and d!40508 res!74242) b!163843))

(assert (= (and b!163843 c!32779) b!163847))

(assert (= (and b!163843 (not c!32779)) b!163844))

(assert (= (and b!163844 c!32777) b!163846))

(assert (= (and b!163844 (not c!32777)) b!163841))

(assert (= (or b!163847 b!163844 b!163841) bm!6973))

(declare-fun m!155281 () Bool)

(assert (=> bm!6973 m!155281))

(declare-fun m!155283 () Bool)

(assert (=> d!40508 m!155283))

(declare-fun m!155285 () Bool)

(assert (=> d!40508 m!155285))

(declare-fun m!155287 () Bool)

(assert (=> b!163843 m!155287))

(declare-fun m!155289 () Bool)

(assert (=> b!163848 m!155289))

(assert (=> b!162881 d!40508))

(declare-fun d!40510 () Bool)

(declare-fun lt!50206 () BalanceConc!1640)

(assert (=> d!40510 (= (list!1007 lt!50206) (originalCharacters!540 (apply!390 lt!49245 0)))))

(assert (=> d!40510 (= lt!50206 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (apply!390 lt!49245 0)))) (value!18480 (apply!390 lt!49245 0))))))

(assert (=> d!40510 (= (charsOf!152 (apply!390 lt!49245 0)) lt!50206)))

(declare-fun b_lambda!3483 () Bool)

(assert (=> (not b_lambda!3483) (not d!40510)))

(declare-fun tb!6105 () Bool)

(declare-fun t!26259 () Bool)

(assert (=> (and b!162952 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 rules!1920)))) (toChars!1011 (transformation!497 (rule!1004 (apply!390 lt!49245 0))))) t!26259) tb!6105))

(declare-fun b!163849 () Bool)

(declare-fun e!98749 () Bool)

(declare-fun tp!82418 () Bool)

(assert (=> b!163849 (= e!98749 (and (inv!3624 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (apply!390 lt!49245 0)))) (value!18480 (apply!390 lt!49245 0))))) tp!82418))))

(declare-fun result!8720 () Bool)

(assert (=> tb!6105 (= result!8720 (and (inv!3625 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (apply!390 lt!49245 0)))) (value!18480 (apply!390 lt!49245 0)))) e!98749))))

(assert (= tb!6105 b!163849))

(declare-fun m!155291 () Bool)

(assert (=> b!163849 m!155291))

(declare-fun m!155293 () Bool)

(assert (=> tb!6105 m!155293))

(assert (=> d!40510 t!26259))

(declare-fun b_and!10355 () Bool)

(assert (= b_and!10333 (and (=> t!26259 result!8720) b_and!10355)))

(declare-fun t!26261 () Bool)

(declare-fun tb!6107 () Bool)

(assert (=> (and b!162363 (= (toChars!1011 (transformation!497 (h!8202 rules!1920))) (toChars!1011 (transformation!497 (rule!1004 (apply!390 lt!49245 0))))) t!26261) tb!6107))

(declare-fun result!8722 () Bool)

(assert (= result!8722 result!8720))

(assert (=> d!40510 t!26261))

(declare-fun b_and!10357 () Bool)

(assert (= b_and!10327 (and (=> t!26261 result!8722) b_and!10357)))

(declare-fun tb!6109 () Bool)

(declare-fun t!26263 () Bool)

(assert (=> (and b!162354 (= (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (toChars!1011 (transformation!497 (rule!1004 (apply!390 lt!49245 0))))) t!26263) tb!6109))

(declare-fun result!8724 () Bool)

(assert (= result!8724 result!8720))

(assert (=> d!40510 t!26263))

(declare-fun b_and!10359 () Bool)

(assert (= b_and!10325 (and (=> t!26263 result!8724) b_and!10359)))

(declare-fun tb!6111 () Bool)

(declare-fun t!26265 () Bool)

(assert (=> (and b!162366 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (toChars!1011 (transformation!497 (rule!1004 (apply!390 lt!49245 0))))) t!26265) tb!6111))

(declare-fun result!8726 () Bool)

(assert (= result!8726 result!8720))

(assert (=> d!40510 t!26265))

(declare-fun b_and!10361 () Bool)

(assert (= b_and!10331 (and (=> t!26265 result!8726) b_and!10361)))

(declare-fun t!26267 () Bool)

(declare-fun tb!6113 () Bool)

(assert (=> (and b!162933 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))) (toChars!1011 (transformation!497 (rule!1004 (apply!390 lt!49245 0))))) t!26267) tb!6113))

(declare-fun result!8728 () Bool)

(assert (= result!8728 result!8720))

(assert (=> d!40510 t!26267))

(declare-fun b_and!10363 () Bool)

(assert (= b_and!10329 (and (=> t!26267 result!8728) b_and!10363)))

(declare-fun m!155295 () Bool)

(assert (=> d!40510 m!155295))

(declare-fun m!155297 () Bool)

(assert (=> d!40510 m!155297))

(assert (=> b!162881 d!40510))

(declare-fun d!40512 () Bool)

(assert (=> d!40512 (= (head!594 (drop!133 lt!49527 0)) (apply!389 lt!49527 0))))

(declare-fun lt!50207 () Unit!2310)

(assert (=> d!40512 (= lt!50207 (choose!1802 lt!49527 0))))

(declare-fun e!98750 () Bool)

(assert (=> d!40512 e!98750))

(declare-fun res!74243 () Bool)

(assert (=> d!40512 (=> (not res!74243) (not e!98750))))

(assert (=> d!40512 (= res!74243 (>= 0 0))))

(assert (=> d!40512 (= (lemmaDropApply!120 lt!49527 0) lt!50207)))

(declare-fun b!163850 () Bool)

(assert (=> b!163850 (= e!98750 (< 0 (size!2351 lt!49527)))))

(assert (= (and d!40512 res!74243) b!163850))

(assert (=> d!40512 m!153143))

(assert (=> d!40512 m!153143))

(assert (=> d!40512 m!153145))

(assert (=> d!40512 m!153163))

(declare-fun m!155299 () Bool)

(assert (=> d!40512 m!155299))

(declare-fun m!155301 () Bool)

(assert (=> b!163850 m!155301))

(assert (=> b!162881 d!40512))

(declare-fun d!40514 () Bool)

(assert (=> d!40514 (dynLambda!1005 lambda!4481 (apply!390 lt!49245 0))))

(declare-fun lt!50208 () Unit!2310)

(assert (=> d!40514 (= lt!50208 (choose!1803 (list!1011 lt!49245) lambda!4481 (apply!390 lt!49245 0)))))

(declare-fun e!98751 () Bool)

(assert (=> d!40514 e!98751))

(declare-fun res!74244 () Bool)

(assert (=> d!40514 (=> (not res!74244) (not e!98751))))

(assert (=> d!40514 (= res!74244 (forall!523 (list!1011 lt!49245) lambda!4481))))

(assert (=> d!40514 (= (forallContained!64 (list!1011 lt!49245) lambda!4481 (apply!390 lt!49245 0)) lt!50208)))

(declare-fun b!163851 () Bool)

(assert (=> b!163851 (= e!98751 (contains!446 (list!1011 lt!49245) (apply!390 lt!49245 0)))))

(assert (= (and d!40514 res!74244) b!163851))

(declare-fun b_lambda!3485 () Bool)

(assert (=> (not b_lambda!3485) (not d!40514)))

(assert (=> d!40514 m!153159))

(declare-fun m!155303 () Bool)

(assert (=> d!40514 m!155303))

(assert (=> d!40514 m!153103))

(assert (=> d!40514 m!153159))

(declare-fun m!155305 () Bool)

(assert (=> d!40514 m!155305))

(assert (=> d!40514 m!153103))

(declare-fun m!155307 () Bool)

(assert (=> d!40514 m!155307))

(assert (=> b!163851 m!153103))

(assert (=> b!163851 m!153159))

(declare-fun m!155309 () Bool)

(assert (=> b!163851 m!155309))

(assert (=> b!162881 d!40514))

(declare-fun b!163852 () Bool)

(declare-fun e!98755 () List!2816)

(declare-fun e!98752 () List!2816)

(assert (=> b!163852 (= e!98755 e!98752)))

(declare-fun c!32782 () Bool)

(assert (=> b!163852 (= c!32782 (<= 0 0))))

(declare-fun bm!6974 () Bool)

(declare-fun call!6979 () Int)

(assert (=> bm!6974 (= call!6979 (size!2351 lt!49527))))

(declare-fun b!163853 () Bool)

(declare-fun e!98753 () Int)

(assert (=> b!163853 (= e!98753 (- call!6979 0))))

(declare-fun b!163854 () Bool)

(assert (=> b!163854 (= e!98752 lt!49527)))

(declare-fun d!40516 () Bool)

(declare-fun e!98754 () Bool)

(assert (=> d!40516 e!98754))

(declare-fun res!74245 () Bool)

(assert (=> d!40516 (=> (not res!74245) (not e!98754))))

(declare-fun lt!50209 () List!2816)

(assert (=> d!40516 (= res!74245 (= ((_ map implies) (content!389 lt!50209) (content!389 lt!49527)) ((as const (InoxSet Token!738)) true)))))

(assert (=> d!40516 (= lt!50209 e!98755)))

(declare-fun c!32784 () Bool)

(assert (=> d!40516 (= c!32784 ((_ is Nil!2806) lt!49527))))

(assert (=> d!40516 (= (drop!133 lt!49527 0) lt!50209)))

(declare-fun b!163855 () Bool)

(declare-fun e!98756 () Int)

(assert (=> b!163855 (= e!98754 (= (size!2351 lt!50209) e!98756))))

(declare-fun c!32783 () Bool)

(assert (=> b!163855 (= c!32783 (<= 0 0))))

(declare-fun b!163856 () Bool)

(assert (=> b!163856 (= e!98756 e!98753)))

(declare-fun c!32781 () Bool)

(assert (=> b!163856 (= c!32781 (>= 0 call!6979))))

(declare-fun b!163857 () Bool)

(assert (=> b!163857 (= e!98755 Nil!2806)))

(declare-fun b!163858 () Bool)

(assert (=> b!163858 (= e!98753 0)))

(declare-fun b!163859 () Bool)

(assert (=> b!163859 (= e!98756 call!6979)))

(declare-fun b!163860 () Bool)

(assert (=> b!163860 (= e!98752 (drop!133 (t!26086 lt!49527) (- 0 1)))))

(assert (= (and d!40516 c!32784) b!163857))

(assert (= (and d!40516 (not c!32784)) b!163852))

(assert (= (and b!163852 c!32782) b!163854))

(assert (= (and b!163852 (not c!32782)) b!163860))

(assert (= (and d!40516 res!74245) b!163855))

(assert (= (and b!163855 c!32783) b!163859))

(assert (= (and b!163855 (not c!32783)) b!163856))

(assert (= (and b!163856 c!32781) b!163858))

(assert (= (and b!163856 (not c!32781)) b!163853))

(assert (= (or b!163859 b!163856 b!163853) bm!6974))

(assert (=> bm!6974 m!155301))

(declare-fun m!155311 () Bool)

(assert (=> d!40516 m!155311))

(declare-fun m!155313 () Bool)

(assert (=> d!40516 m!155313))

(declare-fun m!155315 () Bool)

(assert (=> b!163855 m!155315))

(declare-fun m!155317 () Bool)

(assert (=> b!163860 m!155317))

(assert (=> b!162881 d!40516))

(declare-fun d!40518 () Bool)

(assert (=> d!40518 (= (tail!334 (drop!133 lt!49520 0)) (drop!133 lt!49520 (+ 0 1)))))

(declare-fun lt!50210 () Unit!2310)

(assert (=> d!40518 (= lt!50210 (choose!1801 lt!49520 0))))

(declare-fun e!98757 () Bool)

(assert (=> d!40518 e!98757))

(declare-fun res!74246 () Bool)

(assert (=> d!40518 (=> (not res!74246) (not e!98757))))

(assert (=> d!40518 (= res!74246 (>= 0 0))))

(assert (=> d!40518 (= (lemmaDropTail!112 lt!49520 0) lt!50210)))

(declare-fun b!163861 () Bool)

(assert (=> b!163861 (= e!98757 (< 0 (size!2351 lt!49520)))))

(assert (= (and d!40518 res!74246) b!163861))

(assert (=> d!40518 m!153147))

(assert (=> d!40518 m!153147))

(assert (=> d!40518 m!153149))

(assert (=> d!40518 m!153157))

(declare-fun m!155319 () Bool)

(assert (=> d!40518 m!155319))

(assert (=> b!163861 m!155281))

(assert (=> b!162881 d!40518))

(declare-fun b!163862 () Bool)

(declare-fun e!98761 () List!2816)

(declare-fun e!98758 () List!2816)

(assert (=> b!163862 (= e!98761 e!98758)))

(declare-fun c!32786 () Bool)

(assert (=> b!163862 (= c!32786 (<= 0 0))))

(declare-fun bm!6975 () Bool)

(declare-fun call!6980 () Int)

(assert (=> bm!6975 (= call!6980 (size!2351 lt!49520))))

(declare-fun b!163863 () Bool)

(declare-fun e!98759 () Int)

(assert (=> b!163863 (= e!98759 (- call!6980 0))))

(declare-fun b!163864 () Bool)

(assert (=> b!163864 (= e!98758 lt!49520)))

(declare-fun d!40520 () Bool)

(declare-fun e!98760 () Bool)

(assert (=> d!40520 e!98760))

(declare-fun res!74247 () Bool)

(assert (=> d!40520 (=> (not res!74247) (not e!98760))))

(declare-fun lt!50211 () List!2816)

(assert (=> d!40520 (= res!74247 (= ((_ map implies) (content!389 lt!50211) (content!389 lt!49520)) ((as const (InoxSet Token!738)) true)))))

(assert (=> d!40520 (= lt!50211 e!98761)))

(declare-fun c!32788 () Bool)

(assert (=> d!40520 (= c!32788 ((_ is Nil!2806) lt!49520))))

(assert (=> d!40520 (= (drop!133 lt!49520 0) lt!50211)))

(declare-fun b!163865 () Bool)

(declare-fun e!98762 () Int)

(assert (=> b!163865 (= e!98760 (= (size!2351 lt!50211) e!98762))))

(declare-fun c!32787 () Bool)

(assert (=> b!163865 (= c!32787 (<= 0 0))))

(declare-fun b!163866 () Bool)

(assert (=> b!163866 (= e!98762 e!98759)))

(declare-fun c!32785 () Bool)

(assert (=> b!163866 (= c!32785 (>= 0 call!6980))))

(declare-fun b!163867 () Bool)

(assert (=> b!163867 (= e!98761 Nil!2806)))

(declare-fun b!163868 () Bool)

(assert (=> b!163868 (= e!98759 0)))

(declare-fun b!163869 () Bool)

(assert (=> b!163869 (= e!98762 call!6980)))

(declare-fun b!163870 () Bool)

(assert (=> b!163870 (= e!98758 (drop!133 (t!26086 lt!49520) (- 0 1)))))

(assert (= (and d!40520 c!32788) b!163867))

(assert (= (and d!40520 (not c!32788)) b!163862))

(assert (= (and b!163862 c!32786) b!163864))

(assert (= (and b!163862 (not c!32786)) b!163870))

(assert (= (and d!40520 res!74247) b!163865))

(assert (= (and b!163865 c!32787) b!163869))

(assert (= (and b!163865 (not c!32787)) b!163866))

(assert (= (and b!163866 c!32785) b!163868))

(assert (= (and b!163866 (not c!32785)) b!163863))

(assert (= (or b!163869 b!163866 b!163863) bm!6975))

(assert (=> bm!6975 m!155281))

(declare-fun m!155321 () Bool)

(assert (=> d!40520 m!155321))

(assert (=> d!40520 m!155285))

(declare-fun m!155323 () Bool)

(assert (=> b!163865 m!155323))

(declare-fun m!155325 () Bool)

(assert (=> b!163870 m!155325))

(assert (=> b!162881 d!40520))

(declare-fun call!6983 () Option!277)

(declare-fun bm!6978 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!34 (LexerInterface!383 Rule!794 BalanceConc!1640) Option!277)

(assert (=> bm!6978 (= call!6983 (maxPrefixOneRuleZipperSequence!34 thiss!17480 (h!8202 rules!1920) (++!628 (charsOf!152 (apply!390 lt!49245 0)) lt!49517)))))

(declare-fun lt!50245 () Option!277)

(declare-fun b!163919 () Bool)

(declare-fun e!98796 () Bool)

(declare-fun get!764 (Option!277) tuple2!2680)

(assert (=> b!163919 (= e!98796 (= (list!1007 (_2!1556 (get!764 lt!50245))) (_2!1555 (get!761 (maxPrefix!121 thiss!17480 rules!1920 (list!1007 (++!628 (charsOf!152 (apply!390 lt!49245 0)) lt!49517)))))))))

(declare-fun b!163920 () Bool)

(declare-fun e!98801 () Option!277)

(declare-fun lt!50246 () Option!277)

(declare-fun lt!50244 () Option!277)

(assert (=> b!163920 (= e!98801 (ite (and ((_ is None!276) lt!50246) ((_ is None!276) lt!50244)) None!276 (ite ((_ is None!276) lt!50244) lt!50246 (ite ((_ is None!276) lt!50246) lt!50244 (ite (>= (size!2343 (_1!1556 (v!13693 lt!50246))) (size!2343 (_1!1556 (v!13693 lt!50244)))) lt!50246 lt!50244)))))))

(assert (=> b!163920 (= lt!50246 call!6983)))

(assert (=> b!163920 (= lt!50244 (maxPrefixZipperSequence!80 thiss!17480 (t!26085 rules!1920) (++!628 (charsOf!152 (apply!390 lt!49245 0)) lt!49517)))))

(declare-fun b!163921 () Bool)

(declare-fun e!98798 () Bool)

(declare-fun maxPrefixZipper!33 (LexerInterface!383 List!2815 List!2814) Option!276)

(assert (=> b!163921 (= e!98798 (= (list!1007 (_2!1556 (get!764 lt!50245))) (_2!1555 (get!761 (maxPrefixZipper!33 thiss!17480 rules!1920 (list!1007 (++!628 (charsOf!152 (apply!390 lt!49245 0)) lt!49517)))))))))

(declare-fun b!163922 () Bool)

(assert (=> b!163922 (= e!98801 call!6983)))

(declare-fun b!163923 () Bool)

(declare-fun e!98797 () Bool)

(declare-fun e!98800 () Bool)

(assert (=> b!163923 (= e!98797 e!98800)))

(declare-fun res!74271 () Bool)

(assert (=> b!163923 (=> res!74271 e!98800)))

(declare-fun isDefined!132 (Option!277) Bool)

(assert (=> b!163923 (= res!74271 (not (isDefined!132 lt!50245)))))

(declare-fun b!163924 () Bool)

(declare-fun res!74275 () Bool)

(assert (=> b!163924 (=> (not res!74275) (not e!98797))))

(declare-fun e!98799 () Bool)

(assert (=> b!163924 (= res!74275 e!98799)))

(declare-fun res!74273 () Bool)

(assert (=> b!163924 (=> res!74273 e!98799)))

(assert (=> b!163924 (= res!74273 (not (isDefined!132 lt!50245)))))

(declare-fun d!40522 () Bool)

(assert (=> d!40522 e!98797))

(declare-fun res!74274 () Bool)

(assert (=> d!40522 (=> (not res!74274) (not e!98797))))

(assert (=> d!40522 (= res!74274 (= (isDefined!132 lt!50245) (isDefined!129 (maxPrefixZipper!33 thiss!17480 rules!1920 (list!1007 (++!628 (charsOf!152 (apply!390 lt!49245 0)) lt!49517))))))))

(assert (=> d!40522 (= lt!50245 e!98801)))

(declare-fun c!32800 () Bool)

(assert (=> d!40522 (= c!32800 (and ((_ is Cons!2805) rules!1920) ((_ is Nil!2805) (t!26085 rules!1920))))))

(declare-fun lt!50242 () Unit!2310)

(declare-fun lt!50248 () Unit!2310)

(assert (=> d!40522 (= lt!50242 lt!50248)))

(declare-fun lt!50243 () List!2814)

(declare-fun lt!50247 () List!2814)

(assert (=> d!40522 (isPrefix!221 lt!50243 lt!50247)))

(assert (=> d!40522 (= lt!50248 (lemmaIsPrefixRefl!129 lt!50243 lt!50247))))

(assert (=> d!40522 (= lt!50247 (list!1007 (++!628 (charsOf!152 (apply!390 lt!49245 0)) lt!49517)))))

(assert (=> d!40522 (= lt!50243 (list!1007 (++!628 (charsOf!152 (apply!390 lt!49245 0)) lt!49517)))))

(assert (=> d!40522 (rulesValidInductive!106 thiss!17480 rules!1920)))

(assert (=> d!40522 (= (maxPrefixZipperSequence!80 thiss!17480 rules!1920 (++!628 (charsOf!152 (apply!390 lt!49245 0)) lt!49517)) lt!50245)))

(declare-fun b!163925 () Bool)

(assert (=> b!163925 (= e!98800 e!98796)))

(declare-fun res!74276 () Bool)

(assert (=> b!163925 (=> (not res!74276) (not e!98796))))

(assert (=> b!163925 (= res!74276 (= (_1!1556 (get!764 lt!50245)) (_1!1555 (get!761 (maxPrefix!121 thiss!17480 rules!1920 (list!1007 (++!628 (charsOf!152 (apply!390 lt!49245 0)) lt!49517)))))))))

(declare-fun b!163926 () Bool)

(assert (=> b!163926 (= e!98799 e!98798)))

(declare-fun res!74272 () Bool)

(assert (=> b!163926 (=> (not res!74272) (not e!98798))))

(assert (=> b!163926 (= res!74272 (= (_1!1556 (get!764 lt!50245)) (_1!1555 (get!761 (maxPrefixZipper!33 thiss!17480 rules!1920 (list!1007 (++!628 (charsOf!152 (apply!390 lt!49245 0)) lt!49517)))))))))

(assert (= (and d!40522 c!32800) b!163922))

(assert (= (and d!40522 (not c!32800)) b!163920))

(assert (= (or b!163922 b!163920) bm!6978))

(assert (= (and d!40522 res!74274) b!163924))

(assert (= (and b!163924 (not res!74273)) b!163926))

(assert (= (and b!163926 res!74272) b!163921))

(assert (= (and b!163924 res!74275) b!163923))

(assert (= (and b!163923 (not res!74271)) b!163925))

(assert (= (and b!163925 res!74276) b!163919))

(assert (=> b!163920 m!153153))

(declare-fun m!155425 () Bool)

(assert (=> b!163920 m!155425))

(declare-fun m!155429 () Bool)

(assert (=> b!163919 m!155429))

(declare-fun m!155433 () Bool)

(assert (=> b!163919 m!155433))

(declare-fun m!155439 () Bool)

(assert (=> b!163919 m!155439))

(assert (=> b!163919 m!153153))

(assert (=> b!163919 m!155433))

(assert (=> b!163919 m!155439))

(declare-fun m!155445 () Bool)

(assert (=> b!163919 m!155445))

(declare-fun m!155449 () Bool)

(assert (=> b!163919 m!155449))

(assert (=> d!40522 m!153153))

(assert (=> d!40522 m!155433))

(declare-fun m!155457 () Bool)

(assert (=> d!40522 m!155457))

(declare-fun m!155459 () Bool)

(assert (=> d!40522 m!155459))

(declare-fun m!155461 () Bool)

(assert (=> d!40522 m!155461))

(assert (=> d!40522 m!153523))

(declare-fun m!155465 () Bool)

(assert (=> d!40522 m!155465))

(declare-fun m!155467 () Bool)

(assert (=> d!40522 m!155467))

(assert (=> d!40522 m!155433))

(assert (=> d!40522 m!155457))

(assert (=> b!163923 m!155465))

(assert (=> b!163926 m!155429))

(assert (=> b!163926 m!153153))

(assert (=> b!163926 m!155433))

(assert (=> b!163926 m!155433))

(assert (=> b!163926 m!155457))

(assert (=> b!163926 m!155457))

(declare-fun m!155475 () Bool)

(assert (=> b!163926 m!155475))

(assert (=> b!163921 m!155429))

(assert (=> b!163921 m!155449))

(assert (=> b!163921 m!155433))

(assert (=> b!163921 m!155457))

(assert (=> b!163921 m!155457))

(assert (=> b!163921 m!155475))

(assert (=> b!163921 m!153153))

(assert (=> b!163921 m!155433))

(assert (=> b!163924 m!155465))

(assert (=> bm!6978 m!153153))

(declare-fun m!155487 () Bool)

(assert (=> bm!6978 m!155487))

(assert (=> b!163925 m!155429))

(assert (=> b!163925 m!153153))

(assert (=> b!163925 m!155433))

(assert (=> b!163925 m!155433))

(assert (=> b!163925 m!155439))

(assert (=> b!163925 m!155439))

(assert (=> b!163925 m!155445))

(assert (=> b!162881 d!40522))

(assert (=> b!162881 d!40490))

(declare-fun d!40554 () Bool)

(declare-fun lt!50267 () Token!738)

(assert (=> d!40554 (contains!446 lt!49527 lt!50267)))

(declare-fun e!98806 () Token!738)

(assert (=> d!40554 (= lt!50267 e!98806)))

(declare-fun c!32802 () Bool)

(assert (=> d!40554 (= c!32802 (= 0 0))))

(declare-fun e!98805 () Bool)

(assert (=> d!40554 e!98805))

(declare-fun res!74280 () Bool)

(assert (=> d!40554 (=> (not res!74280) (not e!98805))))

(assert (=> d!40554 (= res!74280 (<= 0 0))))

(assert (=> d!40554 (= (apply!389 lt!49527 0) lt!50267)))

(declare-fun b!163932 () Bool)

(assert (=> b!163932 (= e!98805 (< 0 (size!2351 lt!49527)))))

(declare-fun b!163933 () Bool)

(assert (=> b!163933 (= e!98806 (head!594 lt!49527))))

(declare-fun b!163934 () Bool)

(assert (=> b!163934 (= e!98806 (apply!389 (tail!334 lt!49527) (- 0 1)))))

(assert (= (and d!40554 res!74280) b!163932))

(assert (= (and d!40554 c!32802) b!163933))

(assert (= (and d!40554 (not c!32802)) b!163934))

(declare-fun m!155501 () Bool)

(assert (=> d!40554 m!155501))

(assert (=> b!163932 m!155301))

(declare-fun m!155503 () Bool)

(assert (=> b!163933 m!155503))

(declare-fun m!155505 () Bool)

(assert (=> b!163934 m!155505))

(assert (=> b!163934 m!155505))

(declare-fun m!155507 () Bool)

(assert (=> b!163934 m!155507))

(assert (=> b!162881 d!40554))

(declare-fun bs!15561 () Bool)

(declare-fun d!40560 () Bool)

(assert (= bs!15561 (and d!40560 b!162538)))

(declare-fun lambda!4512 () Int)

(assert (=> bs!15561 (not (= lambda!4512 lambda!4456))))

(declare-fun bs!15562 () Bool)

(assert (= bs!15562 (and d!40560 b!162895)))

(assert (=> bs!15562 (not (= lambda!4512 lambda!4482))))

(declare-fun bs!15563 () Bool)

(assert (= bs!15563 (and d!40560 b!162881)))

(assert (=> bs!15563 (not (= lambda!4512 lambda!4481))))

(declare-fun bs!15564 () Bool)

(assert (= bs!15564 (and d!40560 b!162350)))

(assert (=> bs!15564 (not (= lambda!4512 lambda!4448))))

(declare-fun bs!15565 () Bool)

(assert (= bs!15565 (and d!40560 b!162362)))

(assert (=> bs!15565 (= lambda!4512 lambda!4447)))

(declare-fun bs!15566 () Bool)

(assert (= bs!15566 (and d!40560 d!39988)))

(assert (=> bs!15566 (not (= lambda!4512 lambda!4479))))

(declare-fun bs!15567 () Bool)

(assert (= bs!15567 (and d!40560 b!163386)))

(assert (=> bs!15567 (not (= lambda!4512 lambda!4497))))

(declare-fun bs!15568 () Bool)

(assert (= bs!15568 (and d!40560 b!163521)))

(assert (=> bs!15568 (not (= lambda!4512 lambda!4501))))

(declare-fun bs!15569 () Bool)

(assert (= bs!15569 (and d!40560 d!39888)))

(assert (=> bs!15569 (= lambda!4512 lambda!4464)))

(declare-fun bs!15570 () Bool)

(assert (= bs!15570 (and d!40560 d!40002)))

(assert (=> bs!15570 (= lambda!4512 lambda!4480)))

(declare-fun bs!15572 () Bool)

(assert (= bs!15572 (and d!40560 b!162616)))

(assert (=> bs!15572 (not (= lambda!4512 lambda!4465))))

(declare-fun bs!15574 () Bool)

(declare-fun b!163938 () Bool)

(assert (= bs!15574 (and b!163938 b!162538)))

(declare-fun lambda!4513 () Int)

(assert (=> bs!15574 (= lambda!4513 lambda!4456)))

(declare-fun bs!15576 () Bool)

(assert (= bs!15576 (and b!163938 d!40560)))

(assert (=> bs!15576 (not (= lambda!4513 lambda!4512))))

(declare-fun bs!15577 () Bool)

(assert (= bs!15577 (and b!163938 b!162895)))

(assert (=> bs!15577 (= lambda!4513 lambda!4482)))

(declare-fun bs!15578 () Bool)

(assert (= bs!15578 (and b!163938 b!162881)))

(assert (=> bs!15578 (= lambda!4513 lambda!4481)))

(declare-fun bs!15580 () Bool)

(assert (= bs!15580 (and b!163938 b!162350)))

(assert (=> bs!15580 (= lambda!4513 lambda!4448)))

(declare-fun bs!15581 () Bool)

(assert (= bs!15581 (and b!163938 b!162362)))

(assert (=> bs!15581 (not (= lambda!4513 lambda!4447))))

(declare-fun bs!15582 () Bool)

(assert (= bs!15582 (and b!163938 d!39988)))

(assert (=> bs!15582 (= lambda!4513 lambda!4479)))

(declare-fun bs!15583 () Bool)

(assert (= bs!15583 (and b!163938 b!163386)))

(assert (=> bs!15583 (= lambda!4513 lambda!4497)))

(declare-fun bs!15584 () Bool)

(assert (= bs!15584 (and b!163938 b!163521)))

(assert (=> bs!15584 (= lambda!4513 lambda!4501)))

(declare-fun bs!15585 () Bool)

(assert (= bs!15585 (and b!163938 d!39888)))

(assert (=> bs!15585 (not (= lambda!4513 lambda!4464))))

(declare-fun bs!15586 () Bool)

(assert (= bs!15586 (and b!163938 d!40002)))

(assert (=> bs!15586 (not (= lambda!4513 lambda!4480))))

(declare-fun bs!15587 () Bool)

(assert (= bs!15587 (and b!163938 b!162616)))

(assert (=> bs!15587 (= lambda!4513 lambda!4465)))

(declare-fun b!163950 () Bool)

(declare-fun e!98818 () Bool)

(assert (=> b!163950 (= e!98818 true)))

(declare-fun b!163949 () Bool)

(declare-fun e!98817 () Bool)

(assert (=> b!163949 (= e!98817 e!98818)))

(declare-fun b!163948 () Bool)

(declare-fun e!98816 () Bool)

(assert (=> b!163948 (= e!98816 e!98817)))

(assert (=> b!163938 e!98816))

(assert (= b!163949 b!163950))

(assert (= b!163948 b!163949))

(assert (= (and b!163938 ((_ is Cons!2805) rules!1920)) b!163948))

(assert (=> b!163950 (< (dynLambda!999 order!1425 (toValue!1152 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1000 order!1427 lambda!4513))))

(assert (=> b!163950 (< (dynLambda!1001 order!1429 (toChars!1011 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1000 order!1427 lambda!4513))))

(assert (=> b!163938 true))

(declare-fun bm!6979 () Bool)

(declare-fun call!6987 () BalanceConc!1640)

(declare-fun call!6986 () BalanceConc!1640)

(assert (=> bm!6979 (= call!6987 call!6986)))

(declare-fun b!163935 () Bool)

(declare-fun e!98812 () Bool)

(declare-fun lt!50269 () Option!277)

(declare-fun call!6988 () Token!738)

(assert (=> b!163935 (= e!98812 (not (= (_1!1556 (v!13693 lt!50269)) call!6988)))))

(declare-fun call!6984 () Token!738)

(declare-fun bm!6980 () Bool)

(declare-fun c!32805 () Bool)

(declare-fun c!32804 () Bool)

(assert (=> bm!6980 (= call!6986 (charsOf!152 (ite c!32804 call!6988 (ite c!32805 separatorToken!170 call!6984))))))

(declare-fun b!163936 () Bool)

(declare-fun e!98813 () BalanceConc!1640)

(declare-fun call!6985 () BalanceConc!1640)

(assert (=> b!163936 (= e!98813 call!6985)))

(declare-fun b!163937 () Bool)

(declare-fun e!98808 () BalanceConc!1640)

(assert (=> b!163937 (= e!98808 (BalanceConc!1641 Empty!816))))

(assert (=> b!163938 (= e!98808 e!98813)))

(declare-fun lt!50280 () List!2816)

(assert (=> b!163938 (= lt!50280 (list!1011 lt!49245))))

(declare-fun lt!50281 () Unit!2310)

(assert (=> b!163938 (= lt!50281 (lemmaDropApply!120 lt!50280 (+ 0 1)))))

(assert (=> b!163938 (= (head!594 (drop!133 lt!50280 (+ 0 1))) (apply!389 lt!50280 (+ 0 1)))))

(declare-fun lt!50268 () Unit!2310)

(assert (=> b!163938 (= lt!50268 lt!50281)))

(declare-fun lt!50273 () List!2816)

(assert (=> b!163938 (= lt!50273 (list!1011 lt!49245))))

(declare-fun lt!50274 () Unit!2310)

(assert (=> b!163938 (= lt!50274 (lemmaDropTail!112 lt!50273 (+ 0 1)))))

(assert (=> b!163938 (= (tail!334 (drop!133 lt!50273 (+ 0 1))) (drop!133 lt!50273 (+ 0 1 1)))))

(declare-fun lt!50279 () Unit!2310)

(assert (=> b!163938 (= lt!50279 lt!50274)))

(declare-fun lt!50277 () Unit!2310)

(assert (=> b!163938 (= lt!50277 (forallContained!64 (list!1011 lt!49245) lambda!4513 (apply!390 lt!49245 (+ 0 1))))))

(declare-fun lt!50270 () BalanceConc!1640)

(assert (=> b!163938 (= lt!50270 (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 lt!49245 separatorToken!170 (+ 0 1 1)))))

(assert (=> b!163938 (= lt!50269 (maxPrefixZipperSequence!80 thiss!17480 rules!1920 (++!628 (charsOf!152 (apply!390 lt!49245 (+ 0 1))) lt!50270)))))

(declare-fun res!74282 () Bool)

(assert (=> b!163938 (= res!74282 ((_ is Some!276) lt!50269))))

(declare-fun e!98810 () Bool)

(assert (=> b!163938 (=> (not res!74282) (not e!98810))))

(assert (=> b!163938 (= c!32804 e!98810)))

(declare-fun b!163939 () Bool)

(assert (=> b!163939 (= c!32805 e!98812)))

(declare-fun res!74281 () Bool)

(assert (=> b!163939 (=> (not res!74281) (not e!98812))))

(assert (=> b!163939 (= res!74281 ((_ is Some!276) lt!50269))))

(declare-fun e!98807 () BalanceConc!1640)

(assert (=> b!163939 (= e!98813 e!98807)))

(declare-fun b!163940 () Bool)

(assert (=> b!163940 (= e!98810 (= (_1!1556 (v!13693 lt!50269)) (apply!390 lt!49245 (+ 0 1))))))

(declare-fun b!163941 () Bool)

(declare-fun e!98809 () BalanceConc!1640)

(assert (=> b!163941 (= e!98809 (charsOf!152 call!6984))))

(declare-fun b!163942 () Bool)

(assert (=> b!163942 (= e!98807 (++!628 call!6985 lt!50270))))

(declare-fun b!163943 () Bool)

(assert (=> b!163943 (= e!98807 (BalanceConc!1641 Empty!816))))

(assert (=> b!163943 (= (print!114 thiss!17480 (singletonSeq!49 call!6984)) (printTailRec!77 thiss!17480 (singletonSeq!49 call!6984) 0 (BalanceConc!1641 Empty!816)))))

(declare-fun lt!50272 () Unit!2310)

(declare-fun Unit!2348 () Unit!2310)

(assert (=> b!163943 (= lt!50272 Unit!2348)))

(declare-fun lt!50278 () Unit!2310)

(assert (=> b!163943 (= lt!50278 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!28 thiss!17480 rules!1920 (list!1007 call!6987) (list!1007 lt!50270)))))

(assert (=> b!163943 false))

(declare-fun lt!50275 () Unit!2310)

(declare-fun Unit!2349 () Unit!2310)

(assert (=> b!163943 (= lt!50275 Unit!2349)))

(declare-fun b!163944 () Bool)

(declare-fun e!98811 () Bool)

(assert (=> b!163944 (= e!98811 (<= (+ 0 1) (size!2348 lt!49245)))))

(declare-fun b!163945 () Bool)

(assert (=> b!163945 (= e!98809 call!6986)))

(declare-fun bm!6981 () Bool)

(assert (=> bm!6981 (= call!6984 call!6988)))

(declare-fun lt!50271 () BalanceConc!1640)

(assert (=> d!40560 (= (list!1007 lt!50271) (printWithSeparatorTokenWhenNeededList!76 thiss!17480 rules!1920 (dropList!80 lt!49245 (+ 0 1)) separatorToken!170))))

(assert (=> d!40560 (= lt!50271 e!98808)))

(declare-fun c!32806 () Bool)

(assert (=> d!40560 (= c!32806 (>= (+ 0 1) (size!2348 lt!49245)))))

(declare-fun lt!50276 () Unit!2310)

(assert (=> d!40560 (= lt!50276 (lemmaContentSubsetPreservesForall!24 (list!1011 lt!49245) (dropList!80 lt!49245 (+ 0 1)) lambda!4512))))

(assert (=> d!40560 e!98811))

(declare-fun res!74283 () Bool)

(assert (=> d!40560 (=> (not res!74283) (not e!98811))))

(assert (=> d!40560 (= res!74283 (>= (+ 0 1) 0))))

(assert (=> d!40560 (= (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 lt!49245 separatorToken!170 (+ 0 1)) lt!50271)))

(declare-fun bm!6982 () Bool)

(assert (=> bm!6982 (= call!6988 (apply!390 lt!49245 (+ 0 1)))))

(declare-fun bm!6983 () Bool)

(declare-fun c!32803 () Bool)

(assert (=> bm!6983 (= c!32803 c!32804)))

(assert (=> bm!6983 (= call!6985 (++!628 e!98809 (ite c!32804 lt!50270 call!6987)))))

(assert (= (and d!40560 res!74283) b!163944))

(assert (= (and d!40560 c!32806) b!163937))

(assert (= (and d!40560 (not c!32806)) b!163938))

(assert (= (and b!163938 res!74282) b!163940))

(assert (= (and b!163938 c!32804) b!163936))

(assert (= (and b!163938 (not c!32804)) b!163939))

(assert (= (and b!163939 res!74281) b!163935))

(assert (= (and b!163939 c!32805) b!163942))

(assert (= (and b!163939 (not c!32805)) b!163943))

(assert (= (or b!163942 b!163943) bm!6981))

(assert (= (or b!163942 b!163943) bm!6979))

(assert (= (or b!163936 bm!6981 b!163935) bm!6982))

(assert (= (or b!163936 bm!6979) bm!6980))

(assert (= (or b!163936 b!163942) bm!6983))

(assert (= (and bm!6983 c!32803) b!163945))

(assert (= (and bm!6983 (not c!32803)) b!163941))

(declare-fun m!155527 () Bool)

(assert (=> b!163938 m!155527))

(declare-fun m!155529 () Bool)

(assert (=> b!163938 m!155529))

(assert (=> b!163938 m!153103))

(declare-fun m!155531 () Bool)

(assert (=> b!163938 m!155531))

(declare-fun m!155533 () Bool)

(assert (=> b!163938 m!155533))

(declare-fun m!155535 () Bool)

(assert (=> b!163938 m!155535))

(declare-fun m!155537 () Bool)

(assert (=> b!163938 m!155537))

(declare-fun m!155539 () Bool)

(assert (=> b!163938 m!155539))

(declare-fun m!155541 () Bool)

(assert (=> b!163938 m!155541))

(assert (=> b!163938 m!153103))

(declare-fun m!155543 () Bool)

(assert (=> b!163938 m!155543))

(declare-fun m!155545 () Bool)

(assert (=> b!163938 m!155545))

(assert (=> b!163938 m!155543))

(assert (=> b!163938 m!155527))

(declare-fun m!155547 () Bool)

(assert (=> b!163938 m!155547))

(declare-fun m!155549 () Bool)

(assert (=> b!163938 m!155549))

(assert (=> b!163938 m!155531))

(assert (=> b!163938 m!155537))

(declare-fun m!155551 () Bool)

(assert (=> b!163938 m!155551))

(assert (=> b!163938 m!155543))

(assert (=> b!163938 m!155535))

(declare-fun m!155553 () Bool)

(assert (=> b!163938 m!155553))

(declare-fun m!155555 () Bool)

(assert (=> b!163941 m!155555))

(declare-fun m!155557 () Bool)

(assert (=> bm!6983 m!155557))

(assert (=> b!163940 m!155543))

(declare-fun m!155559 () Bool)

(assert (=> d!40560 m!155559))

(assert (=> d!40560 m!153177))

(declare-fun m!155561 () Bool)

(assert (=> d!40560 m!155561))

(assert (=> d!40560 m!153103))

(assert (=> d!40560 m!155559))

(declare-fun m!155563 () Bool)

(assert (=> d!40560 m!155563))

(assert (=> d!40560 m!155559))

(declare-fun m!155565 () Bool)

(assert (=> d!40560 m!155565))

(assert (=> d!40560 m!153103))

(declare-fun m!155567 () Bool)

(assert (=> b!163943 m!155567))

(declare-fun m!155569 () Bool)

(assert (=> b!163943 m!155569))

(declare-fun m!155571 () Bool)

(assert (=> b!163943 m!155571))

(assert (=> b!163943 m!155567))

(declare-fun m!155573 () Bool)

(assert (=> b!163943 m!155573))

(declare-fun m!155575 () Bool)

(assert (=> b!163943 m!155575))

(assert (=> b!163943 m!155573))

(assert (=> b!163943 m!155569))

(assert (=> b!163943 m!155573))

(declare-fun m!155577 () Bool)

(assert (=> b!163943 m!155577))

(assert (=> b!163944 m!153177))

(declare-fun m!155579 () Bool)

(assert (=> b!163942 m!155579))

(assert (=> bm!6982 m!155543))

(declare-fun m!155581 () Bool)

(assert (=> bm!6980 m!155581))

(assert (=> b!162881 d!40560))

(declare-fun d!40574 () Bool)

(assert (=> d!40574 (= (head!594 (drop!133 lt!49527 0)) (h!8203 (drop!133 lt!49527 0)))))

(assert (=> b!162881 d!40574))

(declare-fun b!163959 () Bool)

(declare-fun res!74288 () Bool)

(declare-fun e!98821 () Bool)

(assert (=> b!163959 (=> (not res!74288) (not e!98821))))

(assert (=> b!163959 (= res!74288 (>= (height!86 (++!630 (c!32407 (charsOf!152 (apply!390 lt!49245 0))) (c!32407 lt!49517))) (max!0 (height!86 (c!32407 (charsOf!152 (apply!390 lt!49245 0)))) (height!86 (c!32407 lt!49517)))))))

(declare-fun b!163957 () Bool)

(declare-fun res!74289 () Bool)

(assert (=> b!163957 (=> (not res!74289) (not e!98821))))

(assert (=> b!163957 (= res!74289 (isBalanced!228 (++!630 (c!32407 (charsOf!152 (apply!390 lt!49245 0))) (c!32407 lt!49517))))))

(declare-fun lt!50287 () BalanceConc!1640)

(declare-fun b!163960 () Bool)

(assert (=> b!163960 (= e!98821 (= (list!1007 lt!50287) (++!626 (list!1007 (charsOf!152 (apply!390 lt!49245 0))) (list!1007 lt!49517))))))

(declare-fun b!163958 () Bool)

(declare-fun res!74291 () Bool)

(assert (=> b!163958 (=> (not res!74291) (not e!98821))))

(assert (=> b!163958 (= res!74291 (<= (height!86 (++!630 (c!32407 (charsOf!152 (apply!390 lt!49245 0))) (c!32407 lt!49517))) (+ (max!0 (height!86 (c!32407 (charsOf!152 (apply!390 lt!49245 0)))) (height!86 (c!32407 lt!49517))) 1)))))

(declare-fun d!40576 () Bool)

(assert (=> d!40576 e!98821))

(declare-fun res!74290 () Bool)

(assert (=> d!40576 (=> (not res!74290) (not e!98821))))

(assert (=> d!40576 (= res!74290 (appendAssocInst!27 (c!32407 (charsOf!152 (apply!390 lt!49245 0))) (c!32407 lt!49517)))))

(assert (=> d!40576 (= lt!50287 (BalanceConc!1641 (++!630 (c!32407 (charsOf!152 (apply!390 lt!49245 0))) (c!32407 lt!49517))))))

(assert (=> d!40576 (= (++!628 (charsOf!152 (apply!390 lt!49245 0)) lt!49517) lt!50287)))

(assert (= (and d!40576 res!74290) b!163957))

(assert (= (and b!163957 res!74289) b!163958))

(assert (= (and b!163958 res!74291) b!163959))

(assert (= (and b!163959 res!74288) b!163960))

(declare-fun m!155589 () Bool)

(assert (=> b!163958 m!155589))

(declare-fun m!155591 () Bool)

(assert (=> b!163958 m!155591))

(declare-fun m!155593 () Bool)

(assert (=> b!163958 m!155593))

(assert (=> b!163958 m!155589))

(declare-fun m!155595 () Bool)

(assert (=> b!163958 m!155595))

(assert (=> b!163958 m!155591))

(assert (=> b!163958 m!155595))

(declare-fun m!155597 () Bool)

(assert (=> b!163958 m!155597))

(assert (=> b!163957 m!155595))

(assert (=> b!163957 m!155595))

(declare-fun m!155599 () Bool)

(assert (=> b!163957 m!155599))

(declare-fun m!155601 () Bool)

(assert (=> b!163960 m!155601))

(assert (=> b!163960 m!153151))

(declare-fun m!155603 () Bool)

(assert (=> b!163960 m!155603))

(assert (=> b!163960 m!153187))

(assert (=> b!163960 m!155603))

(assert (=> b!163960 m!153187))

(declare-fun m!155605 () Bool)

(assert (=> b!163960 m!155605))

(assert (=> b!163959 m!155589))

(assert (=> b!163959 m!155591))

(assert (=> b!163959 m!155593))

(assert (=> b!163959 m!155589))

(assert (=> b!163959 m!155595))

(assert (=> b!163959 m!155591))

(assert (=> b!163959 m!155595))

(assert (=> b!163959 m!155597))

(declare-fun m!155607 () Bool)

(assert (=> d!40576 m!155607))

(assert (=> d!40576 m!155595))

(assert (=> b!162881 d!40576))

(declare-fun d!40580 () Bool)

(declare-fun e!98823 () Bool)

(assert (=> d!40580 e!98823))

(declare-fun res!74293 () Bool)

(assert (=> d!40580 (=> (not res!74293) (not e!98823))))

(declare-fun lt!50288 () List!2814)

(assert (=> d!40580 (= res!74293 (= (content!388 lt!50288) ((_ map or) (content!388 call!6847) (content!388 (ite c!32434 lt!49297 call!6851)))))))

(declare-fun e!98822 () List!2814)

(assert (=> d!40580 (= lt!50288 e!98822)))

(declare-fun c!32807 () Bool)

(assert (=> d!40580 (= c!32807 ((_ is Nil!2804) call!6847))))

(assert (=> d!40580 (= (++!626 call!6847 (ite c!32434 lt!49297 call!6851)) lt!50288)))

(declare-fun b!163963 () Bool)

(declare-fun res!74292 () Bool)

(assert (=> b!163963 (=> (not res!74292) (not e!98823))))

(assert (=> b!163963 (= res!74292 (= (size!2347 lt!50288) (+ (size!2347 call!6847) (size!2347 (ite c!32434 lt!49297 call!6851)))))))

(declare-fun b!163962 () Bool)

(assert (=> b!163962 (= e!98822 (Cons!2804 (h!8201 call!6847) (++!626 (t!26084 call!6847) (ite c!32434 lt!49297 call!6851))))))

(declare-fun b!163961 () Bool)

(assert (=> b!163961 (= e!98822 (ite c!32434 lt!49297 call!6851))))

(declare-fun b!163964 () Bool)

(assert (=> b!163964 (= e!98823 (or (not (= (ite c!32434 lt!49297 call!6851) Nil!2804)) (= lt!50288 call!6847)))))

(assert (= (and d!40580 c!32807) b!163961))

(assert (= (and d!40580 (not c!32807)) b!163962))

(assert (= (and d!40580 res!74293) b!163963))

(assert (= (and b!163963 res!74292) b!163964))

(declare-fun m!155609 () Bool)

(assert (=> d!40580 m!155609))

(declare-fun m!155611 () Bool)

(assert (=> d!40580 m!155611))

(declare-fun m!155613 () Bool)

(assert (=> d!40580 m!155613))

(declare-fun m!155615 () Bool)

(assert (=> b!163963 m!155615))

(declare-fun m!155617 () Bool)

(assert (=> b!163963 m!155617))

(declare-fun m!155619 () Bool)

(assert (=> b!163963 m!155619))

(declare-fun m!155621 () Bool)

(assert (=> b!163962 m!155621))

(assert (=> bm!6845 d!40580))

(declare-fun d!40582 () Bool)

(assert (=> d!40582 (= (list!1007 lt!49366) (list!1010 (c!32407 lt!49366)))))

(declare-fun bs!15589 () Bool)

(assert (= bs!15589 d!40582))

(declare-fun m!155623 () Bool)

(assert (=> bs!15589 m!155623))

(assert (=> d!39900 d!40582))

(declare-fun d!40584 () Bool)

(declare-fun lt!50291 () Bool)

(assert (=> d!40584 (= lt!50291 (isEmpty!1141 (list!1007 (_2!1551 lt!49513))))))

(assert (=> d!40584 (= lt!50291 (isEmpty!1145 (c!32407 (_2!1551 lt!49513))))))

(assert (=> d!40584 (= (isEmpty!1142 (_2!1551 lt!49513)) lt!50291)))

(declare-fun bs!15590 () Bool)

(assert (= bs!15590 d!40584))

(declare-fun m!155625 () Bool)

(assert (=> bs!15590 m!155625))

(assert (=> bs!15590 m!155625))

(declare-fun m!155627 () Bool)

(assert (=> bs!15590 m!155627))

(declare-fun m!155629 () Bool)

(assert (=> bs!15590 m!155629))

(assert (=> b!162871 d!40584))

(assert (=> bm!6875 d!40400))

(assert (=> bm!6843 d!40336))

(declare-fun d!40586 () Bool)

(declare-fun c!32811 () Bool)

(assert (=> d!40586 (= c!32811 ((_ is Nil!2806) tokens!465))))

(declare-fun e!98828 () (InoxSet Token!738))

(assert (=> d!40586 (= (content!389 tokens!465) e!98828)))

(declare-fun b!163972 () Bool)

(assert (=> b!163972 (= e!98828 ((as const (Array Token!738 Bool)) false))))

(declare-fun b!163973 () Bool)

(assert (=> b!163973 (= e!98828 ((_ map or) (store ((as const (Array Token!738 Bool)) false) (h!8203 tokens!465) true) (content!389 (t!26086 tokens!465))))))

(assert (= (and d!40586 c!32811) b!163972))

(assert (= (and d!40586 (not c!32811)) b!163973))

(declare-fun m!155645 () Bool)

(assert (=> b!163973 m!155645))

(assert (=> b!163973 m!153897))

(assert (=> d!39984 d!40586))

(declare-fun d!40594 () Bool)

(declare-fun lt!50294 () BalanceConc!1640)

(assert (=> d!40594 (= (list!1007 lt!50294) (printList!67 thiss!17480 (list!1011 (singletonSeq!49 call!6877))))))

(assert (=> d!40594 (= lt!50294 (printTailRec!77 thiss!17480 (singletonSeq!49 call!6877) 0 (BalanceConc!1641 Empty!816)))))

(assert (=> d!40594 (= (print!114 thiss!17480 (singletonSeq!49 call!6877)) lt!50294)))

(declare-fun bs!15592 () Bool)

(assert (= bs!15592 d!40594))

(declare-fun m!155649 () Bool)

(assert (=> bs!15592 m!155649))

(assert (=> bs!15592 m!152659))

(declare-fun m!155651 () Bool)

(assert (=> bs!15592 m!155651))

(assert (=> bs!15592 m!155651))

(declare-fun m!155653 () Bool)

(assert (=> bs!15592 m!155653))

(assert (=> bs!15592 m!152659))

(assert (=> bs!15592 m!152663))

(assert (=> b!162621 d!40594))

(declare-fun d!40598 () Bool)

(declare-fun e!98832 () Bool)

(assert (=> d!40598 e!98832))

(declare-fun res!74296 () Bool)

(assert (=> d!40598 (=> (not res!74296) (not e!98832))))

(declare-fun lt!50296 () BalanceConc!1642)

(assert (=> d!40598 (= res!74296 (= (list!1011 lt!50296) (Cons!2806 call!6877 Nil!2806)))))

(assert (=> d!40598 (= lt!50296 (singleton!29 call!6877))))

(assert (=> d!40598 (= (singletonSeq!49 call!6877) lt!50296)))

(declare-fun b!163980 () Bool)

(assert (=> b!163980 (= e!98832 (isBalanced!226 (c!32409 lt!50296)))))

(assert (= (and d!40598 res!74296) b!163980))

(declare-fun m!155665 () Bool)

(assert (=> d!40598 m!155665))

(declare-fun m!155667 () Bool)

(assert (=> d!40598 m!155667))

(declare-fun m!155669 () Bool)

(assert (=> b!163980 m!155669))

(assert (=> b!162621 d!40598))

(declare-fun d!40602 () Bool)

(assert (=> d!40602 (= (list!1007 lt!49349) (list!1010 (c!32407 lt!49349)))))

(declare-fun bs!15594 () Bool)

(assert (= bs!15594 d!40602))

(declare-fun m!155673 () Bool)

(assert (=> bs!15594 m!155673))

(assert (=> b!162621 d!40602))

(declare-fun d!40604 () Bool)

(assert (=> d!40604 (= (list!1007 call!6880) (list!1010 (c!32407 call!6880)))))

(declare-fun bs!15595 () Bool)

(assert (= bs!15595 d!40604))

(declare-fun m!155679 () Bool)

(assert (=> bs!15595 m!155679))

(assert (=> b!162621 d!40604))

(declare-fun b!163986 () Bool)

(declare-fun e!98836 () Unit!2310)

(declare-fun Unit!2350 () Unit!2310)

(assert (=> b!163986 (= e!98836 Unit!2350)))

(declare-fun b!163983 () Bool)

(declare-fun res!74300 () Bool)

(declare-fun e!98835 () Bool)

(assert (=> b!163983 (=> (not res!74300) (not e!98835))))

(declare-fun lt!50303 () Token!738)

(assert (=> b!163983 (= res!74300 (matchR!77 (regex!497 (get!763 (getRuleFromTag!20 thiss!17480 rules!1920 (tag!675 (rule!1004 lt!50303))))) (list!1007 (charsOf!152 lt!50303))))))

(declare-fun d!40608 () Bool)

(assert (=> d!40608 (isDefined!129 (maxPrefix!121 thiss!17480 rules!1920 (++!626 (list!1007 call!6880) (list!1007 lt!49349))))))

(declare-fun lt!50302 () Unit!2310)

(assert (=> d!40608 (= lt!50302 e!98836)))

(declare-fun c!32814 () Bool)

(assert (=> d!40608 (= c!32814 (isEmpty!1147 (maxPrefix!121 thiss!17480 rules!1920 (++!626 (list!1007 call!6880) (list!1007 lt!49349)))))))

(declare-fun lt!50301 () Unit!2310)

(declare-fun lt!50313 () Unit!2310)

(assert (=> d!40608 (= lt!50301 lt!50313)))

(assert (=> d!40608 e!98835))

(declare-fun res!74299 () Bool)

(assert (=> d!40608 (=> (not res!74299) (not e!98835))))

(assert (=> d!40608 (= res!74299 (isDefined!131 (getRuleFromTag!20 thiss!17480 rules!1920 (tag!675 (rule!1004 lt!50303)))))))

(assert (=> d!40608 (= lt!50313 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!20 thiss!17480 rules!1920 (list!1007 call!6880) lt!50303))))

(declare-fun lt!50299 () Unit!2310)

(declare-fun lt!50311 () Unit!2310)

(assert (=> d!40608 (= lt!50299 lt!50311)))

(declare-fun lt!50307 () List!2814)

(assert (=> d!40608 (isPrefix!221 lt!50307 (++!626 (list!1007 call!6880) (list!1007 lt!49349)))))

(assert (=> d!40608 (= lt!50311 (lemmaPrefixStaysPrefixWhenAddingToSuffix!20 lt!50307 (list!1007 call!6880) (list!1007 lt!49349)))))

(assert (=> d!40608 (= lt!50307 (list!1007 (charsOf!152 lt!50303)))))

(declare-fun lt!50312 () Unit!2310)

(declare-fun lt!50304 () Unit!2310)

(assert (=> d!40608 (= lt!50312 lt!50304)))

(declare-fun lt!50300 () List!2814)

(declare-fun lt!50306 () List!2814)

(assert (=> d!40608 (isPrefix!221 lt!50300 (++!626 lt!50300 lt!50306))))

(assert (=> d!40608 (= lt!50304 (lemmaConcatTwoListThenFirstIsPrefix!124 lt!50300 lt!50306))))

(assert (=> d!40608 (= lt!50306 (_2!1555 (get!761 (maxPrefix!121 thiss!17480 rules!1920 (list!1007 call!6880)))))))

(assert (=> d!40608 (= lt!50300 (list!1007 (charsOf!152 lt!50303)))))

(assert (=> d!40608 (= lt!50303 (head!594 (list!1011 (_1!1551 (lex!183 thiss!17480 rules!1920 (seqFromList!371 (list!1007 call!6880)))))))))

(assert (=> d!40608 (not (isEmpty!1136 rules!1920))))

(assert (=> d!40608 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!28 thiss!17480 rules!1920 (list!1007 call!6880) (list!1007 lt!49349)) lt!50302)))

(declare-fun b!163984 () Bool)

(assert (=> b!163984 (= e!98835 (= (rule!1004 lt!50303) (get!763 (getRuleFromTag!20 thiss!17480 rules!1920 (tag!675 (rule!1004 lt!50303))))))))

(declare-fun b!163985 () Bool)

(declare-fun Unit!2351 () Unit!2310)

(assert (=> b!163985 (= e!98836 Unit!2351)))

(declare-fun lt!50298 () List!2814)

(assert (=> b!163985 (= lt!50298 (++!626 (list!1007 call!6880) (list!1007 lt!49349)))))

(declare-fun lt!50305 () Unit!2310)

(assert (=> b!163985 (= lt!50305 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!20 thiss!17480 (rule!1004 lt!50303) rules!1920 lt!50298))))

(assert (=> b!163985 (isEmpty!1147 (maxPrefixOneRule!65 thiss!17480 (rule!1004 lt!50303) lt!50298))))

(declare-fun lt!50310 () Unit!2310)

(assert (=> b!163985 (= lt!50310 lt!50305)))

(declare-fun lt!50309 () List!2814)

(assert (=> b!163985 (= lt!50309 (list!1007 (charsOf!152 lt!50303)))))

(declare-fun lt!50314 () Unit!2310)

(assert (=> b!163985 (= lt!50314 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!20 thiss!17480 (rule!1004 lt!50303) lt!50309 (++!626 (list!1007 call!6880) (list!1007 lt!49349))))))

(assert (=> b!163985 (not (matchR!77 (regex!497 (rule!1004 lt!50303)) lt!50309))))

(declare-fun lt!50308 () Unit!2310)

(assert (=> b!163985 (= lt!50308 lt!50314)))

(assert (=> b!163985 false))

(assert (= (and d!40608 res!74299) b!163983))

(assert (= (and b!163983 res!74300) b!163984))

(assert (= (and d!40608 c!32814) b!163985))

(assert (= (and d!40608 (not c!32814)) b!163986))

(declare-fun m!155695 () Bool)

(assert (=> b!163983 m!155695))

(declare-fun m!155697 () Bool)

(assert (=> b!163983 m!155697))

(declare-fun m!155699 () Bool)

(assert (=> b!163983 m!155699))

(declare-fun m!155701 () Bool)

(assert (=> b!163983 m!155701))

(assert (=> b!163983 m!155699))

(assert (=> b!163983 m!155695))

(assert (=> b!163983 m!155701))

(declare-fun m!155703 () Bool)

(assert (=> b!163983 m!155703))

(declare-fun m!155705 () Bool)

(assert (=> d!40608 m!155705))

(declare-fun m!155707 () Bool)

(assert (=> d!40608 m!155707))

(declare-fun m!155709 () Bool)

(assert (=> d!40608 m!155709))

(declare-fun m!155711 () Bool)

(assert (=> d!40608 m!155711))

(declare-fun m!155713 () Bool)

(assert (=> d!40608 m!155713))

(declare-fun m!155715 () Bool)

(assert (=> d!40608 m!155715))

(assert (=> d!40608 m!152653))

(declare-fun m!155717 () Bool)

(assert (=> d!40608 m!155717))

(assert (=> d!40608 m!155717))

(declare-fun m!155719 () Bool)

(assert (=> d!40608 m!155719))

(assert (=> d!40608 m!155707))

(assert (=> d!40608 m!152653))

(declare-fun m!155721 () Bool)

(assert (=> d!40608 m!155721))

(assert (=> d!40608 m!155715))

(declare-fun m!155723 () Bool)

(assert (=> d!40608 m!155723))

(assert (=> d!40608 m!155699))

(assert (=> d!40608 m!155701))

(declare-fun m!155727 () Bool)

(assert (=> d!40608 m!155727))

(assert (=> d!40608 m!155701))

(assert (=> d!40608 m!152653))

(declare-fun m!155731 () Bool)

(assert (=> d!40608 m!155731))

(assert (=> d!40608 m!155699))

(assert (=> d!40608 m!155695))

(assert (=> d!40608 m!155711))

(declare-fun m!155735 () Bool)

(assert (=> d!40608 m!155735))

(assert (=> d!40608 m!152327))

(assert (=> d!40608 m!155713))

(declare-fun m!155741 () Bool)

(assert (=> d!40608 m!155741))

(assert (=> d!40608 m!155731))

(declare-fun m!155747 () Bool)

(assert (=> d!40608 m!155747))

(assert (=> d!40608 m!152653))

(assert (=> d!40608 m!152655))

(assert (=> d!40608 m!155713))

(assert (=> d!40608 m!152653))

(assert (=> d!40608 m!152655))

(declare-fun m!155755 () Bool)

(assert (=> d!40608 m!155755))

(assert (=> d!40608 m!155715))

(declare-fun m!155763 () Bool)

(assert (=> d!40608 m!155763))

(assert (=> b!163984 m!155701))

(assert (=> b!163984 m!155701))

(assert (=> b!163984 m!155703))

(assert (=> b!163985 m!155699))

(declare-fun m!155771 () Bool)

(assert (=> b!163985 m!155771))

(declare-fun m!155775 () Bool)

(assert (=> b!163985 m!155775))

(assert (=> b!163985 m!155699))

(assert (=> b!163985 m!155695))

(assert (=> b!163985 m!155775))

(declare-fun m!155777 () Bool)

(assert (=> b!163985 m!155777))

(assert (=> b!163985 m!155713))

(declare-fun m!155779 () Bool)

(assert (=> b!163985 m!155779))

(assert (=> b!163985 m!152653))

(assert (=> b!163985 m!152655))

(assert (=> b!163985 m!155713))

(declare-fun m!155783 () Bool)

(assert (=> b!163985 m!155783))

(assert (=> b!162621 d!40608))

(declare-fun d!40620 () Bool)

(declare-fun lt!50327 () BalanceConc!1640)

(assert (=> d!40620 (= (list!1007 lt!50327) (printListTailRec!48 thiss!17480 (dropList!80 (singletonSeq!49 call!6877) 0) (list!1007 (BalanceConc!1641 Empty!816))))))

(declare-fun e!98842 () BalanceConc!1640)

(assert (=> d!40620 (= lt!50327 e!98842)))

(declare-fun c!32818 () Bool)

(assert (=> d!40620 (= c!32818 (>= 0 (size!2348 (singletonSeq!49 call!6877))))))

(declare-fun e!98841 () Bool)

(assert (=> d!40620 e!98841))

(declare-fun res!74302 () Bool)

(assert (=> d!40620 (=> (not res!74302) (not e!98841))))

(assert (=> d!40620 (= res!74302 (>= 0 0))))

(assert (=> d!40620 (= (printTailRec!77 thiss!17480 (singletonSeq!49 call!6877) 0 (BalanceConc!1641 Empty!816)) lt!50327)))

(declare-fun b!163994 () Bool)

(assert (=> b!163994 (= e!98841 (<= 0 (size!2348 (singletonSeq!49 call!6877))))))

(declare-fun b!163995 () Bool)

(assert (=> b!163995 (= e!98842 (BalanceConc!1641 Empty!816))))

(declare-fun b!163996 () Bool)

(assert (=> b!163996 (= e!98842 (printTailRec!77 thiss!17480 (singletonSeq!49 call!6877) (+ 0 1) (++!628 (BalanceConc!1641 Empty!816) (charsOf!152 (apply!390 (singletonSeq!49 call!6877) 0)))))))

(declare-fun lt!50326 () List!2816)

(assert (=> b!163996 (= lt!50326 (list!1011 (singletonSeq!49 call!6877)))))

(declare-fun lt!50323 () Unit!2310)

(assert (=> b!163996 (= lt!50323 (lemmaDropApply!120 lt!50326 0))))

(assert (=> b!163996 (= (head!594 (drop!133 lt!50326 0)) (apply!389 lt!50326 0))))

(declare-fun lt!50324 () Unit!2310)

(assert (=> b!163996 (= lt!50324 lt!50323)))

(declare-fun lt!50329 () List!2816)

(assert (=> b!163996 (= lt!50329 (list!1011 (singletonSeq!49 call!6877)))))

(declare-fun lt!50328 () Unit!2310)

(assert (=> b!163996 (= lt!50328 (lemmaDropTail!112 lt!50329 0))))

(assert (=> b!163996 (= (tail!334 (drop!133 lt!50329 0)) (drop!133 lt!50329 (+ 0 1)))))

(declare-fun lt!50325 () Unit!2310)

(assert (=> b!163996 (= lt!50325 lt!50328)))

(assert (= (and d!40620 res!74302) b!163994))

(assert (= (and d!40620 c!32818) b!163995))

(assert (= (and d!40620 (not c!32818)) b!163996))

(declare-fun m!155789 () Bool)

(assert (=> d!40620 m!155789))

(assert (=> d!40620 m!153043))

(declare-fun m!155791 () Bool)

(assert (=> d!40620 m!155791))

(assert (=> d!40620 m!152659))

(assert (=> d!40620 m!155789))

(assert (=> d!40620 m!152659))

(declare-fun m!155793 () Bool)

(assert (=> d!40620 m!155793))

(declare-fun m!155795 () Bool)

(assert (=> d!40620 m!155795))

(assert (=> d!40620 m!153043))

(assert (=> b!163994 m!152659))

(assert (=> b!163994 m!155793))

(declare-fun m!155797 () Bool)

(assert (=> b!163996 m!155797))

(declare-fun m!155799 () Bool)

(assert (=> b!163996 m!155799))

(declare-fun m!155801 () Bool)

(assert (=> b!163996 m!155801))

(declare-fun m!155803 () Bool)

(assert (=> b!163996 m!155803))

(declare-fun m!155805 () Bool)

(assert (=> b!163996 m!155805))

(declare-fun m!155807 () Bool)

(assert (=> b!163996 m!155807))

(declare-fun m!155809 () Bool)

(assert (=> b!163996 m!155809))

(declare-fun m!155811 () Bool)

(assert (=> b!163996 m!155811))

(declare-fun m!155813 () Bool)

(assert (=> b!163996 m!155813))

(assert (=> b!163996 m!152659))

(assert (=> b!163996 m!155651))

(declare-fun m!155815 () Bool)

(assert (=> b!163996 m!155815))

(assert (=> b!163996 m!152659))

(assert (=> b!163996 m!155797))

(assert (=> b!163996 m!155811))

(assert (=> b!163996 m!152659))

(declare-fun m!155817 () Bool)

(assert (=> b!163996 m!155817))

(declare-fun m!155819 () Bool)

(assert (=> b!163996 m!155819))

(assert (=> b!163996 m!155805))

(assert (=> b!163996 m!155799))

(assert (=> b!163996 m!155817))

(assert (=> b!162621 d!40620))

(declare-fun d!40624 () Bool)

(declare-fun c!32820 () Bool)

(assert (=> d!40624 (= c!32820 ((_ is Empty!816) (c!32407 (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 (seqFromList!372 (t!26086 tokens!465)) separatorToken!170 0))))))

(declare-fun e!98845 () List!2814)

(assert (=> d!40624 (= (list!1010 (c!32407 (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 (seqFromList!372 (t!26086 tokens!465)) separatorToken!170 0))) e!98845)))

(declare-fun b!164001 () Bool)

(assert (=> b!164001 (= e!98845 Nil!2804)))

(declare-fun b!164002 () Bool)

(declare-fun e!98846 () List!2814)

(assert (=> b!164002 (= e!98845 e!98846)))

(declare-fun c!32821 () Bool)

(assert (=> b!164002 (= c!32821 ((_ is Leaf!1404) (c!32407 (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 (seqFromList!372 (t!26086 tokens!465)) separatorToken!170 0))))))

(declare-fun b!164003 () Bool)

(assert (=> b!164003 (= e!98846 (list!1014 (xs!3411 (c!32407 (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 (seqFromList!372 (t!26086 tokens!465)) separatorToken!170 0)))))))

(declare-fun b!164004 () Bool)

(assert (=> b!164004 (= e!98846 (++!626 (list!1010 (left!2115 (c!32407 (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 (seqFromList!372 (t!26086 tokens!465)) separatorToken!170 0)))) (list!1010 (right!2445 (c!32407 (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 (seqFromList!372 (t!26086 tokens!465)) separatorToken!170 0))))))))

(assert (= (and d!40624 c!32820) b!164001))

(assert (= (and d!40624 (not c!32820)) b!164002))

(assert (= (and b!164002 c!32821) b!164003))

(assert (= (and b!164002 (not c!32821)) b!164004))

(declare-fun m!155851 () Bool)

(assert (=> b!164003 m!155851))

(declare-fun m!155853 () Bool)

(assert (=> b!164004 m!155853))

(declare-fun m!155855 () Bool)

(assert (=> b!164004 m!155855))

(assert (=> b!164004 m!155853))

(assert (=> b!164004 m!155855))

(declare-fun m!155859 () Bool)

(assert (=> b!164004 m!155859))

(assert (=> d!39842 d!40624))

(declare-fun d!40626 () Bool)

(declare-fun lt!50347 () Token!738)

(assert (=> d!40626 (= lt!50347 (apply!389 (list!1011 (_1!1551 lt!49414)) 0))))

(assert (=> d!40626 (= lt!50347 (apply!393 (c!32409 (_1!1551 lt!49414)) 0))))

(declare-fun e!98847 () Bool)

(assert (=> d!40626 e!98847))

(declare-fun res!74305 () Bool)

(assert (=> d!40626 (=> (not res!74305) (not e!98847))))

(assert (=> d!40626 (= res!74305 (<= 0 0))))

(assert (=> d!40626 (= (apply!390 (_1!1551 lt!49414) 0) lt!50347)))

(declare-fun b!164005 () Bool)

(assert (=> b!164005 (= e!98847 (< 0 (size!2348 (_1!1551 lt!49414))))))

(assert (= (and d!40626 res!74305) b!164005))

(assert (=> d!40626 m!153907))

(assert (=> d!40626 m!153907))

(declare-fun m!155871 () Bool)

(assert (=> d!40626 m!155871))

(declare-fun m!155873 () Bool)

(assert (=> d!40626 m!155873))

(assert (=> b!164005 m!152727))

(assert (=> b!162680 d!40626))

(declare-fun d!40628 () Bool)

(declare-fun res!74306 () Bool)

(declare-fun e!98848 () Bool)

(assert (=> d!40628 (=> res!74306 e!98848)))

(assert (=> d!40628 (= res!74306 ((_ is Nil!2806) (list!1011 lt!49245)))))

(assert (=> d!40628 (= (forall!523 (list!1011 lt!49245) lambda!4479) e!98848)))

(declare-fun b!164006 () Bool)

(declare-fun e!98849 () Bool)

(assert (=> b!164006 (= e!98848 e!98849)))

(declare-fun res!74307 () Bool)

(assert (=> b!164006 (=> (not res!74307) (not e!98849))))

(assert (=> b!164006 (= res!74307 (dynLambda!1005 lambda!4479 (h!8203 (list!1011 lt!49245))))))

(declare-fun b!164007 () Bool)

(assert (=> b!164007 (= e!98849 (forall!523 (t!26086 (list!1011 lt!49245)) lambda!4479))))

(assert (= (and d!40628 (not res!74306)) b!164006))

(assert (= (and b!164006 res!74307) b!164007))

(declare-fun b_lambda!3493 () Bool)

(assert (=> (not b_lambda!3493) (not b!164006)))

(declare-fun m!155887 () Bool)

(assert (=> b!164006 m!155887))

(declare-fun m!155889 () Bool)

(assert (=> b!164007 m!155889))

(assert (=> d!39988 d!40628))

(assert (=> d!39988 d!40220))

(declare-fun d!40632 () Bool)

(declare-fun lt!50351 () Bool)

(assert (=> d!40632 (= lt!50351 (forall!523 (list!1011 lt!49245) lambda!4479))))

(declare-fun forall!528 (Conc!817 Int) Bool)

(assert (=> d!40632 (= lt!50351 (forall!528 (c!32409 lt!49245) lambda!4479))))

(assert (=> d!40632 (= (forall!525 lt!49245 lambda!4479) lt!50351)))

(declare-fun bs!15601 () Bool)

(assert (= bs!15601 d!40632))

(assert (=> bs!15601 m!153103))

(assert (=> bs!15601 m!153103))

(assert (=> bs!15601 m!153105))

(declare-fun m!155899 () Bool)

(assert (=> bs!15601 m!155899))

(assert (=> d!39988 d!40632))

(assert (=> d!39988 d!40006))

(assert (=> b!162535 d!39892))

(declare-fun d!40638 () Bool)

(declare-fun lt!50352 () Int)

(assert (=> d!40638 (>= lt!50352 0)))

(declare-fun e!98851 () Int)

(assert (=> d!40638 (= lt!50352 e!98851)))

(declare-fun c!32822 () Bool)

(assert (=> d!40638 (= c!32822 ((_ is Nil!2804) lt!49300))))

(assert (=> d!40638 (= (size!2347 lt!49300) lt!50352)))

(declare-fun b!164009 () Bool)

(assert (=> b!164009 (= e!98851 0)))

(declare-fun b!164010 () Bool)

(assert (=> b!164010 (= e!98851 (+ 1 (size!2347 (t!26084 lt!49300))))))

(assert (= (and d!40638 c!32822) b!164009))

(assert (= (and d!40638 (not c!32822)) b!164010))

(declare-fun m!155901 () Bool)

(assert (=> b!164010 m!155901))

(assert (=> b!162556 d!40638))

(assert (=> b!162556 d!40206))

(assert (=> b!162556 d!40224))

(declare-fun bs!15602 () Bool)

(declare-fun d!40640 () Bool)

(assert (= bs!15602 (and d!40640 d!40084)))

(declare-fun lambda!4518 () Int)

(assert (=> bs!15602 (= (and (= (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465))))) (= (toValue!1152 (transformation!497 (rule!1004 separatorToken!170))) (toValue!1152 (transformation!497 (rule!1004 (h!8203 tokens!465)))))) (= lambda!4518 lambda!4488))))

(declare-fun bs!15603 () Bool)

(assert (= bs!15603 (and d!40640 d!40104)))

(assert (=> bs!15603 (= (and (= (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (toChars!1011 (transformation!497 (h!8202 rules!1920)))) (= (toValue!1152 (transformation!497 (rule!1004 separatorToken!170))) (toValue!1152 (transformation!497 (h!8202 rules!1920))))) (= lambda!4518 lambda!4493))))

(assert (=> d!40640 true))

(assert (=> d!40640 (< (dynLambda!1001 order!1429 (toChars!1011 (transformation!497 (rule!1004 separatorToken!170)))) (dynLambda!1006 order!1431 lambda!4518))))

(assert (=> d!40640 true))

(assert (=> d!40640 (< (dynLambda!999 order!1425 (toValue!1152 (transformation!497 (rule!1004 separatorToken!170)))) (dynLambda!1006 order!1431 lambda!4518))))

(assert (=> d!40640 (= (semiInverseModEq!171 (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (toValue!1152 (transformation!497 (rule!1004 separatorToken!170)))) (Forall!131 lambda!4518))))

(declare-fun bs!15604 () Bool)

(assert (= bs!15604 d!40640))

(declare-fun m!155903 () Bool)

(assert (=> bs!15604 m!155903))

(assert (=> d!39966 d!40640))

(declare-fun d!40642 () Bool)

(declare-fun c!32823 () Bool)

(assert (=> d!40642 (= c!32823 ((_ is Empty!816) (c!32407 (charsOf!152 separatorToken!170))))))

(declare-fun e!98856 () List!2814)

(assert (=> d!40642 (= (list!1010 (c!32407 (charsOf!152 separatorToken!170))) e!98856)))

(declare-fun b!164023 () Bool)

(assert (=> b!164023 (= e!98856 Nil!2804)))

(declare-fun b!164024 () Bool)

(declare-fun e!98857 () List!2814)

(assert (=> b!164024 (= e!98856 e!98857)))

(declare-fun c!32824 () Bool)

(assert (=> b!164024 (= c!32824 ((_ is Leaf!1404) (c!32407 (charsOf!152 separatorToken!170))))))

(declare-fun b!164025 () Bool)

(assert (=> b!164025 (= e!98857 (list!1014 (xs!3411 (c!32407 (charsOf!152 separatorToken!170)))))))

(declare-fun b!164026 () Bool)

(assert (=> b!164026 (= e!98857 (++!626 (list!1010 (left!2115 (c!32407 (charsOf!152 separatorToken!170)))) (list!1010 (right!2445 (c!32407 (charsOf!152 separatorToken!170))))))))

(assert (= (and d!40642 c!32823) b!164023))

(assert (= (and d!40642 (not c!32823)) b!164024))

(assert (= (and b!164024 c!32824) b!164025))

(assert (= (and b!164024 (not c!32824)) b!164026))

(declare-fun m!155905 () Bool)

(assert (=> b!164025 m!155905))

(declare-fun m!155907 () Bool)

(assert (=> b!164026 m!155907))

(declare-fun m!155909 () Bool)

(assert (=> b!164026 m!155909))

(assert (=> b!164026 m!155907))

(assert (=> b!164026 m!155909))

(declare-fun m!155911 () Bool)

(assert (=> b!164026 m!155911))

(assert (=> d!39902 d!40642))

(declare-fun d!40644 () Bool)

(assert (=> d!40644 (= (list!1007 (ite c!32519 call!6913 call!6915)) (list!1010 (c!32407 (ite c!32519 call!6913 call!6915))))))

(declare-fun bs!15605 () Bool)

(assert (= bs!15605 d!40644))

(declare-fun m!155913 () Bool)

(assert (=> bs!15605 m!155913))

(assert (=> bm!6907 d!40644))

(declare-fun lt!50353 () BalanceConc!1640)

(declare-fun d!40646 () Bool)

(assert (=> d!40646 (= (list!1007 lt!50353) (originalCharacters!540 (ite c!32464 call!6881 (ite c!32465 separatorToken!170 call!6877))))))

(assert (=> d!40646 (= lt!50353 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (ite c!32464 call!6881 (ite c!32465 separatorToken!170 call!6877))))) (value!18480 (ite c!32464 call!6881 (ite c!32465 separatorToken!170 call!6877)))))))

(assert (=> d!40646 (= (charsOf!152 (ite c!32464 call!6881 (ite c!32465 separatorToken!170 call!6877))) lt!50353)))

(declare-fun b_lambda!3495 () Bool)

(assert (=> (not b_lambda!3495) (not d!40646)))

(declare-fun tb!6125 () Bool)

(declare-fun t!26282 () Bool)

(assert (=> (and b!162366 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (toChars!1011 (transformation!497 (rule!1004 (ite c!32464 call!6881 (ite c!32465 separatorToken!170 call!6877)))))) t!26282) tb!6125))

(declare-fun tp!82420 () Bool)

(declare-fun b!164027 () Bool)

(declare-fun e!98858 () Bool)

(assert (=> b!164027 (= e!98858 (and (inv!3624 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (ite c!32464 call!6881 (ite c!32465 separatorToken!170 call!6877))))) (value!18480 (ite c!32464 call!6881 (ite c!32465 separatorToken!170 call!6877)))))) tp!82420))))

(declare-fun result!8740 () Bool)

(assert (=> tb!6125 (= result!8740 (and (inv!3625 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (ite c!32464 call!6881 (ite c!32465 separatorToken!170 call!6877))))) (value!18480 (ite c!32464 call!6881 (ite c!32465 separatorToken!170 call!6877))))) e!98858))))

(assert (= tb!6125 b!164027))

(declare-fun m!155915 () Bool)

(assert (=> b!164027 m!155915))

(declare-fun m!155917 () Bool)

(assert (=> tb!6125 m!155917))

(assert (=> d!40646 t!26282))

(declare-fun b_and!10375 () Bool)

(assert (= b_and!10361 (and (=> t!26282 result!8740) b_and!10375)))

(declare-fun t!26284 () Bool)

(declare-fun tb!6127 () Bool)

(assert (=> (and b!162933 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))) (toChars!1011 (transformation!497 (rule!1004 (ite c!32464 call!6881 (ite c!32465 separatorToken!170 call!6877)))))) t!26284) tb!6127))

(declare-fun result!8742 () Bool)

(assert (= result!8742 result!8740))

(assert (=> d!40646 t!26284))

(declare-fun b_and!10377 () Bool)

(assert (= b_and!10363 (and (=> t!26284 result!8742) b_and!10377)))

(declare-fun t!26286 () Bool)

(declare-fun tb!6129 () Bool)

(assert (=> (and b!162363 (= (toChars!1011 (transformation!497 (h!8202 rules!1920))) (toChars!1011 (transformation!497 (rule!1004 (ite c!32464 call!6881 (ite c!32465 separatorToken!170 call!6877)))))) t!26286) tb!6129))

(declare-fun result!8744 () Bool)

(assert (= result!8744 result!8740))

(assert (=> d!40646 t!26286))

(declare-fun b_and!10379 () Bool)

(assert (= b_and!10357 (and (=> t!26286 result!8744) b_and!10379)))

(declare-fun tb!6131 () Bool)

(declare-fun t!26288 () Bool)

(assert (=> (and b!162952 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 rules!1920)))) (toChars!1011 (transformation!497 (rule!1004 (ite c!32464 call!6881 (ite c!32465 separatorToken!170 call!6877)))))) t!26288) tb!6131))

(declare-fun result!8746 () Bool)

(assert (= result!8746 result!8740))

(assert (=> d!40646 t!26288))

(declare-fun b_and!10381 () Bool)

(assert (= b_and!10355 (and (=> t!26288 result!8746) b_and!10381)))

(declare-fun tb!6133 () Bool)

(declare-fun t!26290 () Bool)

(assert (=> (and b!162354 (= (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (toChars!1011 (transformation!497 (rule!1004 (ite c!32464 call!6881 (ite c!32465 separatorToken!170 call!6877)))))) t!26290) tb!6133))

(declare-fun result!8748 () Bool)

(assert (= result!8748 result!8740))

(assert (=> d!40646 t!26290))

(declare-fun b_and!10383 () Bool)

(assert (= b_and!10359 (and (=> t!26290 result!8748) b_and!10383)))

(declare-fun m!155919 () Bool)

(assert (=> d!40646 m!155919))

(declare-fun m!155921 () Bool)

(assert (=> d!40646 m!155921))

(assert (=> bm!6873 d!40646))

(declare-fun d!40648 () Bool)

(assert (=> d!40648 (forall!523 (dropList!80 (seqFromList!372 (t!26086 tokens!465)) 0) lambda!4464)))

(declare-fun lt!50354 () Unit!2310)

(assert (=> d!40648 (= lt!50354 (choose!1804 (list!1011 (seqFromList!372 (t!26086 tokens!465))) (dropList!80 (seqFromList!372 (t!26086 tokens!465)) 0) lambda!4464))))

(assert (=> d!40648 (forall!523 (list!1011 (seqFromList!372 (t!26086 tokens!465))) lambda!4464)))

(assert (=> d!40648 (= (lemmaContentSubsetPreservesForall!24 (list!1011 (seqFromList!372 (t!26086 tokens!465))) (dropList!80 (seqFromList!372 (t!26086 tokens!465)) 0) lambda!4464) lt!50354)))

(declare-fun bs!15606 () Bool)

(assert (= bs!15606 d!40648))

(assert (=> bs!15606 m!152643))

(declare-fun m!155923 () Bool)

(assert (=> bs!15606 m!155923))

(assert (=> bs!15606 m!152613))

(assert (=> bs!15606 m!152643))

(declare-fun m!155925 () Bool)

(assert (=> bs!15606 m!155925))

(assert (=> bs!15606 m!152613))

(declare-fun m!155927 () Bool)

(assert (=> bs!15606 m!155927))

(assert (=> d!39888 d!40648))

(declare-fun bs!15607 () Bool)

(declare-fun b!164031 () Bool)

(assert (= bs!15607 (and b!164031 b!162538)))

(declare-fun lambda!4519 () Int)

(assert (=> bs!15607 (= lambda!4519 lambda!4456)))

(declare-fun bs!15608 () Bool)

(assert (= bs!15608 (and b!164031 d!40560)))

(assert (=> bs!15608 (not (= lambda!4519 lambda!4512))))

(declare-fun bs!15609 () Bool)

(assert (= bs!15609 (and b!164031 b!163938)))

(assert (=> bs!15609 (= lambda!4519 lambda!4513)))

(declare-fun bs!15610 () Bool)

(assert (= bs!15610 (and b!164031 b!162895)))

(assert (=> bs!15610 (= lambda!4519 lambda!4482)))

(declare-fun bs!15611 () Bool)

(assert (= bs!15611 (and b!164031 b!162881)))

(assert (=> bs!15611 (= lambda!4519 lambda!4481)))

(declare-fun bs!15612 () Bool)

(assert (= bs!15612 (and b!164031 b!162350)))

(assert (=> bs!15612 (= lambda!4519 lambda!4448)))

(declare-fun bs!15613 () Bool)

(assert (= bs!15613 (and b!164031 b!162362)))

(assert (=> bs!15613 (not (= lambda!4519 lambda!4447))))

(declare-fun bs!15614 () Bool)

(assert (= bs!15614 (and b!164031 d!39988)))

(assert (=> bs!15614 (= lambda!4519 lambda!4479)))

(declare-fun bs!15615 () Bool)

(assert (= bs!15615 (and b!164031 b!163386)))

(assert (=> bs!15615 (= lambda!4519 lambda!4497)))

(declare-fun bs!15616 () Bool)

(assert (= bs!15616 (and b!164031 b!163521)))

(assert (=> bs!15616 (= lambda!4519 lambda!4501)))

(declare-fun bs!15617 () Bool)

(assert (= bs!15617 (and b!164031 d!39888)))

(assert (=> bs!15617 (not (= lambda!4519 lambda!4464))))

(declare-fun bs!15618 () Bool)

(assert (= bs!15618 (and b!164031 d!40002)))

(assert (=> bs!15618 (not (= lambda!4519 lambda!4480))))

(declare-fun bs!15619 () Bool)

(assert (= bs!15619 (and b!164031 b!162616)))

(assert (=> bs!15619 (= lambda!4519 lambda!4465)))

(declare-fun b!164044 () Bool)

(declare-fun e!98867 () Bool)

(assert (=> b!164044 (= e!98867 true)))

(declare-fun b!164043 () Bool)

(declare-fun e!98866 () Bool)

(assert (=> b!164043 (= e!98866 e!98867)))

(declare-fun b!164042 () Bool)

(declare-fun e!98865 () Bool)

(assert (=> b!164042 (= e!98865 e!98866)))

(assert (=> b!164031 e!98865))

(assert (= b!164043 b!164044))

(assert (= b!164042 b!164043))

(assert (= (and b!164031 ((_ is Cons!2805) rules!1920)) b!164042))

(assert (=> b!164044 (< (dynLambda!999 order!1425 (toValue!1152 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1000 order!1427 lambda!4519))))

(assert (=> b!164044 (< (dynLambda!1001 order!1429 (toChars!1011 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1000 order!1427 lambda!4519))))

(assert (=> b!164031 true))

(declare-fun b!164028 () Bool)

(declare-fun e!98859 () BalanceConc!1640)

(assert (=> b!164028 (= e!98859 (charsOf!152 separatorToken!170))))

(declare-fun b!164029 () Bool)

(declare-fun e!98860 () List!2814)

(assert (=> b!164029 (= e!98860 Nil!2804)))

(declare-fun b!164030 () Bool)

(declare-fun c!32827 () Bool)

(declare-fun lt!50356 () Option!276)

(assert (=> b!164030 (= c!32827 (and ((_ is Some!275) lt!50356) (not (= (_1!1555 (v!13692 lt!50356)) (h!8203 (dropList!80 (seqFromList!372 (t!26086 tokens!465)) 0))))))))

(declare-fun e!98862 () List!2814)

(declare-fun e!98861 () List!2814)

(assert (=> b!164030 (= e!98862 e!98861)))

(declare-fun bm!6985 () Bool)

(declare-fun call!6990 () BalanceConc!1640)

(assert (=> bm!6985 (= call!6990 (charsOf!152 (h!8203 (dropList!80 (seqFromList!372 (t!26086 tokens!465)) 0))))))

(assert (=> b!164031 (= e!98860 e!98862)))

(declare-fun lt!50358 () Unit!2310)

(assert (=> b!164031 (= lt!50358 (forallContained!64 (dropList!80 (seqFromList!372 (t!26086 tokens!465)) 0) lambda!4519 (h!8203 (dropList!80 (seqFromList!372 (t!26086 tokens!465)) 0))))))

(declare-fun lt!50360 () List!2814)

(assert (=> b!164031 (= lt!50360 (printWithSeparatorTokenWhenNeededList!76 thiss!17480 rules!1920 (t!26086 (dropList!80 (seqFromList!372 (t!26086 tokens!465)) 0)) separatorToken!170))))

(assert (=> b!164031 (= lt!50356 (maxPrefix!121 thiss!17480 rules!1920 (++!626 (list!1007 (charsOf!152 (h!8203 (dropList!80 (seqFromList!372 (t!26086 tokens!465)) 0)))) lt!50360)))))

(declare-fun c!32826 () Bool)

(assert (=> b!164031 (= c!32826 (and ((_ is Some!275) lt!50356) (= (_1!1555 (v!13692 lt!50356)) (h!8203 (dropList!80 (seqFromList!372 (t!26086 tokens!465)) 0)))))))

(declare-fun b!164032 () Bool)

(declare-fun call!6992 () BalanceConc!1640)

(assert (=> b!164032 (= e!98859 call!6992)))

(declare-fun bm!6986 () Bool)

(assert (=> bm!6986 (= call!6992 call!6990)))

(declare-fun call!6989 () List!2814)

(declare-fun call!6993 () List!2814)

(declare-fun call!6991 () List!2814)

(declare-fun bm!6987 () Bool)

(assert (=> bm!6987 (= call!6991 (++!626 call!6989 (ite c!32826 lt!50360 call!6993)))))

(declare-fun bm!6988 () Bool)

(assert (=> bm!6988 (= call!6993 (list!1007 e!98859))))

(declare-fun c!32828 () Bool)

(assert (=> bm!6988 (= c!32828 c!32827)))

(declare-fun b!164033 () Bool)

(assert (=> b!164033 (= e!98861 (++!626 call!6991 lt!50360))))

(declare-fun b!164034 () Bool)

(assert (=> b!164034 (= e!98862 call!6991)))

(declare-fun b!164035 () Bool)

(assert (=> b!164035 (= e!98861 Nil!2804)))

(assert (=> b!164035 (= (print!114 thiss!17480 (singletonSeq!49 (h!8203 (dropList!80 (seqFromList!372 (t!26086 tokens!465)) 0)))) (printTailRec!77 thiss!17480 (singletonSeq!49 (h!8203 (dropList!80 (seqFromList!372 (t!26086 tokens!465)) 0))) 0 (BalanceConc!1641 Empty!816)))))

(declare-fun lt!50357 () Unit!2310)

(declare-fun Unit!2354 () Unit!2310)

(assert (=> b!164035 (= lt!50357 Unit!2354)))

(declare-fun lt!50355 () Unit!2310)

(assert (=> b!164035 (= lt!50355 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!28 thiss!17480 rules!1920 call!6993 lt!50360))))

(assert (=> b!164035 false))

(declare-fun lt!50359 () Unit!2310)

(declare-fun Unit!2355 () Unit!2310)

(assert (=> b!164035 (= lt!50359 Unit!2355)))

(declare-fun bm!6984 () Bool)

(assert (=> bm!6984 (= call!6989 (list!1007 (ite c!32826 call!6990 call!6992)))))

(declare-fun d!40650 () Bool)

(declare-fun c!32825 () Bool)

(assert (=> d!40650 (= c!32825 ((_ is Cons!2806) (dropList!80 (seqFromList!372 (t!26086 tokens!465)) 0)))))

(assert (=> d!40650 (= (printWithSeparatorTokenWhenNeededList!76 thiss!17480 rules!1920 (dropList!80 (seqFromList!372 (t!26086 tokens!465)) 0) separatorToken!170) e!98860)))

(assert (= (and d!40650 c!32825) b!164031))

(assert (= (and d!40650 (not c!32825)) b!164029))

(assert (= (and b!164031 c!32826) b!164034))

(assert (= (and b!164031 (not c!32826)) b!164030))

(assert (= (and b!164030 c!32827) b!164033))

(assert (= (and b!164030 (not c!32827)) b!164035))

(assert (= (or b!164033 b!164035) bm!6986))

(assert (= (or b!164033 b!164035) bm!6988))

(assert (= (and bm!6988 c!32828) b!164028))

(assert (= (and bm!6988 (not c!32828)) b!164032))

(assert (= (or b!164034 bm!6986) bm!6985))

(assert (= (or b!164034 b!164033) bm!6984))

(assert (= (or b!164034 b!164033) bm!6987))

(declare-fun m!155943 () Bool)

(assert (=> b!164035 m!155943))

(assert (=> b!164035 m!155943))

(declare-fun m!155945 () Bool)

(assert (=> b!164035 m!155945))

(assert (=> b!164035 m!155943))

(declare-fun m!155947 () Bool)

(assert (=> b!164035 m!155947))

(declare-fun m!155949 () Bool)

(assert (=> b!164035 m!155949))

(declare-fun m!155951 () Bool)

(assert (=> b!164031 m!155951))

(declare-fun m!155953 () Bool)

(assert (=> b!164031 m!155953))

(declare-fun m!155955 () Bool)

(assert (=> b!164031 m!155955))

(assert (=> b!164031 m!155955))

(declare-fun m!155957 () Bool)

(assert (=> b!164031 m!155957))

(assert (=> b!164031 m!152643))

(declare-fun m!155963 () Bool)

(assert (=> b!164031 m!155963))

(declare-fun m!155965 () Bool)

(assert (=> b!164031 m!155965))

(assert (=> b!164031 m!155965))

(assert (=> b!164031 m!155953))

(assert (=> bm!6985 m!155965))

(declare-fun m!155967 () Bool)

(assert (=> bm!6987 m!155967))

(declare-fun m!155969 () Bool)

(assert (=> bm!6988 m!155969))

(declare-fun m!155971 () Bool)

(assert (=> bm!6984 m!155971))

(declare-fun m!155973 () Bool)

(assert (=> b!164033 m!155973))

(assert (=> b!164028 m!152273))

(assert (=> d!39888 d!40650))

(declare-fun d!40656 () Bool)

(assert (=> d!40656 (= (list!1007 lt!49350) (list!1010 (c!32407 lt!49350)))))

(declare-fun bs!15621 () Bool)

(assert (= bs!15621 d!40656))

(declare-fun m!155977 () Bool)

(assert (=> bs!15621 m!155977))

(assert (=> d!39888 d!40656))

(declare-fun d!40658 () Bool)

(assert (=> d!40658 (= (dropList!80 (seqFromList!372 (t!26086 tokens!465)) 0) (drop!133 (list!1015 (c!32409 (seqFromList!372 (t!26086 tokens!465)))) 0))))

(declare-fun bs!15622 () Bool)

(assert (= bs!15622 d!40658))

(declare-fun m!155981 () Bool)

(assert (=> bs!15622 m!155981))

(assert (=> bs!15622 m!155981))

(declare-fun m!155983 () Bool)

(assert (=> bs!15622 m!155983))

(assert (=> d!39888 d!40658))

(assert (=> d!39888 d!40392))

(declare-fun d!40662 () Bool)

(assert (=> d!40662 (= (list!1011 (seqFromList!372 (t!26086 tokens!465))) (list!1015 (c!32409 (seqFromList!372 (t!26086 tokens!465)))))))

(declare-fun bs!15623 () Bool)

(assert (= bs!15623 d!40662))

(assert (=> bs!15623 m!155981))

(assert (=> d!39888 d!40662))

(assert (=> bm!6905 d!40490))

(declare-fun d!40664 () Bool)

(declare-fun lt!50363 () BalanceConc!1640)

(assert (=> d!40664 (= (list!1007 lt!50363) (printList!67 thiss!17480 (list!1011 (singletonSeq!49 call!6907))))))

(assert (=> d!40664 (= lt!50363 (printTailRec!77 thiss!17480 (singletonSeq!49 call!6907) 0 (BalanceConc!1641 Empty!816)))))

(assert (=> d!40664 (= (print!114 thiss!17480 (singletonSeq!49 call!6907)) lt!50363)))

(declare-fun bs!15624 () Bool)

(assert (= bs!15624 d!40664))

(declare-fun m!155985 () Bool)

(assert (=> bs!15624 m!155985))

(assert (=> bs!15624 m!153191))

(declare-fun m!155987 () Bool)

(assert (=> bs!15624 m!155987))

(assert (=> bs!15624 m!155987))

(declare-fun m!155989 () Bool)

(assert (=> bs!15624 m!155989))

(assert (=> bs!15624 m!153191))

(assert (=> bs!15624 m!153195))

(assert (=> b!162886 d!40664))

(declare-fun b!164053 () Bool)

(declare-fun e!98871 () Unit!2310)

(declare-fun Unit!2356 () Unit!2310)

(assert (=> b!164053 (= e!98871 Unit!2356)))

(declare-fun b!164050 () Bool)

(declare-fun res!74332 () Bool)

(declare-fun e!98870 () Bool)

(assert (=> b!164050 (=> (not res!74332) (not e!98870))))

(declare-fun lt!50369 () Token!738)

(assert (=> b!164050 (= res!74332 (matchR!77 (regex!497 (get!763 (getRuleFromTag!20 thiss!17480 rules!1920 (tag!675 (rule!1004 lt!50369))))) (list!1007 (charsOf!152 lt!50369))))))

(declare-fun d!40666 () Bool)

(assert (=> d!40666 (isDefined!129 (maxPrefix!121 thiss!17480 rules!1920 (++!626 (list!1007 call!6910) (list!1007 lt!49517))))))

(declare-fun lt!50368 () Unit!2310)

(assert (=> d!40666 (= lt!50368 e!98871)))

(declare-fun c!32829 () Bool)

(assert (=> d!40666 (= c!32829 (isEmpty!1147 (maxPrefix!121 thiss!17480 rules!1920 (++!626 (list!1007 call!6910) (list!1007 lt!49517)))))))

(declare-fun lt!50367 () Unit!2310)

(declare-fun lt!50379 () Unit!2310)

(assert (=> d!40666 (= lt!50367 lt!50379)))

(assert (=> d!40666 e!98870))

(declare-fun res!74331 () Bool)

(assert (=> d!40666 (=> (not res!74331) (not e!98870))))

(assert (=> d!40666 (= res!74331 (isDefined!131 (getRuleFromTag!20 thiss!17480 rules!1920 (tag!675 (rule!1004 lt!50369)))))))

(assert (=> d!40666 (= lt!50379 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!20 thiss!17480 rules!1920 (list!1007 call!6910) lt!50369))))

(declare-fun lt!50365 () Unit!2310)

(declare-fun lt!50377 () Unit!2310)

(assert (=> d!40666 (= lt!50365 lt!50377)))

(declare-fun lt!50373 () List!2814)

(assert (=> d!40666 (isPrefix!221 lt!50373 (++!626 (list!1007 call!6910) (list!1007 lt!49517)))))

(assert (=> d!40666 (= lt!50377 (lemmaPrefixStaysPrefixWhenAddingToSuffix!20 lt!50373 (list!1007 call!6910) (list!1007 lt!49517)))))

(assert (=> d!40666 (= lt!50373 (list!1007 (charsOf!152 lt!50369)))))

(declare-fun lt!50378 () Unit!2310)

(declare-fun lt!50370 () Unit!2310)

(assert (=> d!40666 (= lt!50378 lt!50370)))

(declare-fun lt!50366 () List!2814)

(declare-fun lt!50372 () List!2814)

(assert (=> d!40666 (isPrefix!221 lt!50366 (++!626 lt!50366 lt!50372))))

(assert (=> d!40666 (= lt!50370 (lemmaConcatTwoListThenFirstIsPrefix!124 lt!50366 lt!50372))))

(assert (=> d!40666 (= lt!50372 (_2!1555 (get!761 (maxPrefix!121 thiss!17480 rules!1920 (list!1007 call!6910)))))))

(assert (=> d!40666 (= lt!50366 (list!1007 (charsOf!152 lt!50369)))))

(assert (=> d!40666 (= lt!50369 (head!594 (list!1011 (_1!1551 (lex!183 thiss!17480 rules!1920 (seqFromList!371 (list!1007 call!6910)))))))))

(assert (=> d!40666 (not (isEmpty!1136 rules!1920))))

(assert (=> d!40666 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!28 thiss!17480 rules!1920 (list!1007 call!6910) (list!1007 lt!49517)) lt!50368)))

(declare-fun b!164051 () Bool)

(assert (=> b!164051 (= e!98870 (= (rule!1004 lt!50369) (get!763 (getRuleFromTag!20 thiss!17480 rules!1920 (tag!675 (rule!1004 lt!50369))))))))

(declare-fun b!164052 () Bool)

(declare-fun Unit!2357 () Unit!2310)

(assert (=> b!164052 (= e!98871 Unit!2357)))

(declare-fun lt!50364 () List!2814)

(assert (=> b!164052 (= lt!50364 (++!626 (list!1007 call!6910) (list!1007 lt!49517)))))

(declare-fun lt!50371 () Unit!2310)

(assert (=> b!164052 (= lt!50371 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!20 thiss!17480 (rule!1004 lt!50369) rules!1920 lt!50364))))

(assert (=> b!164052 (isEmpty!1147 (maxPrefixOneRule!65 thiss!17480 (rule!1004 lt!50369) lt!50364))))

(declare-fun lt!50376 () Unit!2310)

(assert (=> b!164052 (= lt!50376 lt!50371)))

(declare-fun lt!50375 () List!2814)

(assert (=> b!164052 (= lt!50375 (list!1007 (charsOf!152 lt!50369)))))

(declare-fun lt!50380 () Unit!2310)

(assert (=> b!164052 (= lt!50380 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!20 thiss!17480 (rule!1004 lt!50369) lt!50375 (++!626 (list!1007 call!6910) (list!1007 lt!49517))))))

(assert (=> b!164052 (not (matchR!77 (regex!497 (rule!1004 lt!50369)) lt!50375))))

(declare-fun lt!50374 () Unit!2310)

(assert (=> b!164052 (= lt!50374 lt!50380)))

(assert (=> b!164052 false))

(assert (= (and d!40666 res!74331) b!164050))

(assert (= (and b!164050 res!74332) b!164051))

(assert (= (and d!40666 c!32829) b!164052))

(assert (= (and d!40666 (not c!32829)) b!164053))

(declare-fun m!156011 () Bool)

(assert (=> b!164050 m!156011))

(declare-fun m!156013 () Bool)

(assert (=> b!164050 m!156013))

(declare-fun m!156015 () Bool)

(assert (=> b!164050 m!156015))

(declare-fun m!156017 () Bool)

(assert (=> b!164050 m!156017))

(assert (=> b!164050 m!156015))

(assert (=> b!164050 m!156011))

(assert (=> b!164050 m!156017))

(declare-fun m!156023 () Bool)

(assert (=> b!164050 m!156023))

(declare-fun m!156025 () Bool)

(assert (=> d!40666 m!156025))

(declare-fun m!156027 () Bool)

(assert (=> d!40666 m!156027))

(declare-fun m!156029 () Bool)

(assert (=> d!40666 m!156029))

(declare-fun m!156031 () Bool)

(assert (=> d!40666 m!156031))

(declare-fun m!156035 () Bool)

(assert (=> d!40666 m!156035))

(declare-fun m!156037 () Bool)

(assert (=> d!40666 m!156037))

(assert (=> d!40666 m!153185))

(declare-fun m!156039 () Bool)

(assert (=> d!40666 m!156039))

(assert (=> d!40666 m!156039))

(declare-fun m!156041 () Bool)

(assert (=> d!40666 m!156041))

(assert (=> d!40666 m!156027))

(assert (=> d!40666 m!153185))

(declare-fun m!156043 () Bool)

(assert (=> d!40666 m!156043))

(assert (=> d!40666 m!156037))

(declare-fun m!156045 () Bool)

(assert (=> d!40666 m!156045))

(assert (=> d!40666 m!156015))

(assert (=> d!40666 m!156017))

(declare-fun m!156047 () Bool)

(assert (=> d!40666 m!156047))

(assert (=> d!40666 m!156017))

(assert (=> d!40666 m!153185))

(declare-fun m!156049 () Bool)

(assert (=> d!40666 m!156049))

(assert (=> d!40666 m!156015))

(assert (=> d!40666 m!156011))

(assert (=> d!40666 m!156031))

(declare-fun m!156051 () Bool)

(assert (=> d!40666 m!156051))

(assert (=> d!40666 m!152327))

(assert (=> d!40666 m!156035))

(declare-fun m!156057 () Bool)

(assert (=> d!40666 m!156057))

(assert (=> d!40666 m!156049))

(declare-fun m!156065 () Bool)

(assert (=> d!40666 m!156065))

(assert (=> d!40666 m!153185))

(assert (=> d!40666 m!153187))

(assert (=> d!40666 m!156035))

(assert (=> d!40666 m!153185))

(assert (=> d!40666 m!153187))

(declare-fun m!156071 () Bool)

(assert (=> d!40666 m!156071))

(assert (=> d!40666 m!156037))

(declare-fun m!156075 () Bool)

(assert (=> d!40666 m!156075))

(assert (=> b!164051 m!156017))

(assert (=> b!164051 m!156017))

(assert (=> b!164051 m!156023))

(assert (=> b!164052 m!156015))

(declare-fun m!156077 () Bool)

(assert (=> b!164052 m!156077))

(declare-fun m!156079 () Bool)

(assert (=> b!164052 m!156079))

(assert (=> b!164052 m!156015))

(assert (=> b!164052 m!156011))

(assert (=> b!164052 m!156079))

(declare-fun m!156081 () Bool)

(assert (=> b!164052 m!156081))

(assert (=> b!164052 m!156035))

(declare-fun m!156083 () Bool)

(assert (=> b!164052 m!156083))

(assert (=> b!164052 m!153185))

(assert (=> b!164052 m!153187))

(assert (=> b!164052 m!156035))

(declare-fun m!156085 () Bool)

(assert (=> b!164052 m!156085))

(assert (=> b!162886 d!40666))

(declare-fun d!40678 () Bool)

(declare-fun lt!50393 () BalanceConc!1640)

(assert (=> d!40678 (= (list!1007 lt!50393) (printListTailRec!48 thiss!17480 (dropList!80 (singletonSeq!49 call!6907) 0) (list!1007 (BalanceConc!1641 Empty!816))))))

(declare-fun e!98879 () BalanceConc!1640)

(assert (=> d!40678 (= lt!50393 e!98879)))

(declare-fun c!32836 () Bool)

(assert (=> d!40678 (= c!32836 (>= 0 (size!2348 (singletonSeq!49 call!6907))))))

(declare-fun e!98878 () Bool)

(assert (=> d!40678 e!98878))

(declare-fun res!74337 () Bool)

(assert (=> d!40678 (=> (not res!74337) (not e!98878))))

(assert (=> d!40678 (= res!74337 (>= 0 0))))

(assert (=> d!40678 (= (printTailRec!77 thiss!17480 (singletonSeq!49 call!6907) 0 (BalanceConc!1641 Empty!816)) lt!50393)))

(declare-fun b!164060 () Bool)

(assert (=> b!164060 (= e!98878 (<= 0 (size!2348 (singletonSeq!49 call!6907))))))

(declare-fun b!164061 () Bool)

(assert (=> b!164061 (= e!98879 (BalanceConc!1641 Empty!816))))

(declare-fun b!164062 () Bool)

(assert (=> b!164062 (= e!98879 (printTailRec!77 thiss!17480 (singletonSeq!49 call!6907) (+ 0 1) (++!628 (BalanceConc!1641 Empty!816) (charsOf!152 (apply!390 (singletonSeq!49 call!6907) 0)))))))

(declare-fun lt!50392 () List!2816)

(assert (=> b!164062 (= lt!50392 (list!1011 (singletonSeq!49 call!6907)))))

(declare-fun lt!50387 () Unit!2310)

(assert (=> b!164062 (= lt!50387 (lemmaDropApply!120 lt!50392 0))))

(assert (=> b!164062 (= (head!594 (drop!133 lt!50392 0)) (apply!389 lt!50392 0))))

(declare-fun lt!50389 () Unit!2310)

(assert (=> b!164062 (= lt!50389 lt!50387)))

(declare-fun lt!50395 () List!2816)

(assert (=> b!164062 (= lt!50395 (list!1011 (singletonSeq!49 call!6907)))))

(declare-fun lt!50394 () Unit!2310)

(assert (=> b!164062 (= lt!50394 (lemmaDropTail!112 lt!50395 0))))

(assert (=> b!164062 (= (tail!334 (drop!133 lt!50395 0)) (drop!133 lt!50395 (+ 0 1)))))

(declare-fun lt!50390 () Unit!2310)

(assert (=> b!164062 (= lt!50390 lt!50394)))

(assert (= (and d!40678 res!74337) b!164060))

(assert (= (and d!40678 c!32836) b!164061))

(assert (= (and d!40678 (not c!32836)) b!164062))

(declare-fun m!156093 () Bool)

(assert (=> d!40678 m!156093))

(assert (=> d!40678 m!153043))

(declare-fun m!156095 () Bool)

(assert (=> d!40678 m!156095))

(assert (=> d!40678 m!153191))

(assert (=> d!40678 m!156093))

(assert (=> d!40678 m!153191))

(declare-fun m!156097 () Bool)

(assert (=> d!40678 m!156097))

(declare-fun m!156099 () Bool)

(assert (=> d!40678 m!156099))

(assert (=> d!40678 m!153043))

(assert (=> b!164060 m!153191))

(assert (=> b!164060 m!156097))

(declare-fun m!156101 () Bool)

(assert (=> b!164062 m!156101))

(declare-fun m!156103 () Bool)

(assert (=> b!164062 m!156103))

(declare-fun m!156105 () Bool)

(assert (=> b!164062 m!156105))

(declare-fun m!156107 () Bool)

(assert (=> b!164062 m!156107))

(declare-fun m!156109 () Bool)

(assert (=> b!164062 m!156109))

(declare-fun m!156111 () Bool)

(assert (=> b!164062 m!156111))

(declare-fun m!156113 () Bool)

(assert (=> b!164062 m!156113))

(declare-fun m!156115 () Bool)

(assert (=> b!164062 m!156115))

(declare-fun m!156117 () Bool)

(assert (=> b!164062 m!156117))

(assert (=> b!164062 m!153191))

(assert (=> b!164062 m!155987))

(declare-fun m!156119 () Bool)

(assert (=> b!164062 m!156119))

(assert (=> b!164062 m!153191))

(assert (=> b!164062 m!156101))

(assert (=> b!164062 m!156115))

(assert (=> b!164062 m!153191))

(declare-fun m!156121 () Bool)

(assert (=> b!164062 m!156121))

(declare-fun m!156123 () Bool)

(assert (=> b!164062 m!156123))

(assert (=> b!164062 m!156109))

(assert (=> b!164062 m!156103))

(assert (=> b!164062 m!156121))

(assert (=> b!162886 d!40678))

(declare-fun d!40682 () Bool)

(declare-fun e!98885 () Bool)

(assert (=> d!40682 e!98885))

(declare-fun res!74338 () Bool)

(assert (=> d!40682 (=> (not res!74338) (not e!98885))))

(declare-fun lt!50396 () BalanceConc!1642)

(assert (=> d!40682 (= res!74338 (= (list!1011 lt!50396) (Cons!2806 call!6907 Nil!2806)))))

(assert (=> d!40682 (= lt!50396 (singleton!29 call!6907))))

(assert (=> d!40682 (= (singletonSeq!49 call!6907) lt!50396)))

(declare-fun b!164076 () Bool)

(assert (=> b!164076 (= e!98885 (isBalanced!226 (c!32409 lt!50396)))))

(assert (= (and d!40682 res!74338) b!164076))

(declare-fun m!156125 () Bool)

(assert (=> d!40682 m!156125))

(declare-fun m!156127 () Bool)

(assert (=> d!40682 m!156127))

(declare-fun m!156129 () Bool)

(assert (=> b!164076 m!156129))

(assert (=> b!162886 d!40682))

(declare-fun d!40684 () Bool)

(assert (=> d!40684 (= (list!1007 lt!49517) (list!1010 (c!32407 lt!49517)))))

(declare-fun bs!15637 () Bool)

(assert (= bs!15637 d!40684))

(declare-fun m!156131 () Bool)

(assert (=> bs!15637 m!156131))

(assert (=> b!162886 d!40684))

(declare-fun d!40686 () Bool)

(assert (=> d!40686 (= (list!1007 call!6910) (list!1010 (c!32407 call!6910)))))

(declare-fun bs!15638 () Bool)

(assert (= bs!15638 d!40686))

(declare-fun m!156133 () Bool)

(assert (=> bs!15638 m!156133))

(assert (=> b!162886 d!40686))

(declare-fun d!40688 () Bool)

(declare-fun lt!50397 () Int)

(assert (=> d!40688 (= lt!50397 (size!2351 (list!1011 lt!49248)))))

(assert (=> d!40688 (= lt!50397 (size!2353 (c!32409 lt!49248)))))

(assert (=> d!40688 (= (size!2348 lt!49248) lt!50397)))

(declare-fun bs!15640 () Bool)

(assert (= bs!15640 d!40688))

(assert (=> bs!15640 m!153037))

(assert (=> bs!15640 m!153037))

(declare-fun m!156135 () Bool)

(assert (=> bs!15640 m!156135))

(declare-fun m!156137 () Bool)

(assert (=> bs!15640 m!156137))

(assert (=> b!162831 d!40688))

(declare-fun d!40690 () Bool)

(assert (=> d!40690 (= (list!1007 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (value!18480 separatorToken!170))) (list!1010 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (value!18480 separatorToken!170)))))))

(declare-fun bs!15643 () Bool)

(assert (= bs!15643 d!40690))

(declare-fun m!156139 () Bool)

(assert (=> bs!15643 m!156139))

(assert (=> b!162817 d!40690))

(assert (=> bs!15378 d!39912))

(declare-fun d!40692 () Bool)

(assert (=> d!40692 (= (list!1007 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (value!18480 (h!8203 tokens!465)))) (list!1010 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (value!18480 (h!8203 tokens!465))))))))

(declare-fun bs!15645 () Bool)

(assert (= bs!15645 d!40692))

(declare-fun m!156141 () Bool)

(assert (=> bs!15645 m!156141))

(assert (=> b!162423 d!40692))

(declare-fun d!40694 () Bool)

(declare-fun e!98887 () Bool)

(assert (=> d!40694 e!98887))

(declare-fun res!74340 () Bool)

(assert (=> d!40694 (=> (not res!74340) (not e!98887))))

(declare-fun lt!50398 () List!2814)

(assert (=> d!40694 (= res!74340 (= (content!388 lt!50398) ((_ map or) (content!388 (list!1007 (charsOf!152 (h!8203 (Cons!2806 (h!8203 tokens!465) Nil!2806))))) (content!388 (printList!67 thiss!17480 (t!26086 (Cons!2806 (h!8203 tokens!465) Nil!2806)))))))))

(declare-fun e!98886 () List!2814)

(assert (=> d!40694 (= lt!50398 e!98886)))

(declare-fun c!32837 () Bool)

(assert (=> d!40694 (= c!32837 ((_ is Nil!2804) (list!1007 (charsOf!152 (h!8203 (Cons!2806 (h!8203 tokens!465) Nil!2806))))))))

(assert (=> d!40694 (= (++!626 (list!1007 (charsOf!152 (h!8203 (Cons!2806 (h!8203 tokens!465) Nil!2806)))) (printList!67 thiss!17480 (t!26086 (Cons!2806 (h!8203 tokens!465) Nil!2806)))) lt!50398)))

(declare-fun b!164079 () Bool)

(declare-fun res!74339 () Bool)

(assert (=> b!164079 (=> (not res!74339) (not e!98887))))

(assert (=> b!164079 (= res!74339 (= (size!2347 lt!50398) (+ (size!2347 (list!1007 (charsOf!152 (h!8203 (Cons!2806 (h!8203 tokens!465) Nil!2806))))) (size!2347 (printList!67 thiss!17480 (t!26086 (Cons!2806 (h!8203 tokens!465) Nil!2806)))))))))

(declare-fun b!164078 () Bool)

(assert (=> b!164078 (= e!98886 (Cons!2804 (h!8201 (list!1007 (charsOf!152 (h!8203 (Cons!2806 (h!8203 tokens!465) Nil!2806))))) (++!626 (t!26084 (list!1007 (charsOf!152 (h!8203 (Cons!2806 (h!8203 tokens!465) Nil!2806))))) (printList!67 thiss!17480 (t!26086 (Cons!2806 (h!8203 tokens!465) Nil!2806))))))))

(declare-fun b!164077 () Bool)

(assert (=> b!164077 (= e!98886 (printList!67 thiss!17480 (t!26086 (Cons!2806 (h!8203 tokens!465) Nil!2806))))))

(declare-fun b!164080 () Bool)

(assert (=> b!164080 (= e!98887 (or (not (= (printList!67 thiss!17480 (t!26086 (Cons!2806 (h!8203 tokens!465) Nil!2806))) Nil!2804)) (= lt!50398 (list!1007 (charsOf!152 (h!8203 (Cons!2806 (h!8203 tokens!465) Nil!2806)))))))))

(assert (= (and d!40694 c!32837) b!164077))

(assert (= (and d!40694 (not c!32837)) b!164078))

(assert (= (and d!40694 res!74340) b!164079))

(assert (= (and b!164079 res!74339) b!164080))

(declare-fun m!156143 () Bool)

(assert (=> d!40694 m!156143))

(assert (=> d!40694 m!153085))

(declare-fun m!156145 () Bool)

(assert (=> d!40694 m!156145))

(assert (=> d!40694 m!153087))

(declare-fun m!156147 () Bool)

(assert (=> d!40694 m!156147))

(declare-fun m!156149 () Bool)

(assert (=> b!164079 m!156149))

(assert (=> b!164079 m!153085))

(declare-fun m!156151 () Bool)

(assert (=> b!164079 m!156151))

(assert (=> b!164079 m!153087))

(declare-fun m!156153 () Bool)

(assert (=> b!164079 m!156153))

(assert (=> b!164078 m!153087))

(declare-fun m!156155 () Bool)

(assert (=> b!164078 m!156155))

(assert (=> b!162841 d!40694))

(declare-fun d!40696 () Bool)

(assert (=> d!40696 (= (list!1007 (charsOf!152 (h!8203 (Cons!2806 (h!8203 tokens!465) Nil!2806)))) (list!1010 (c!32407 (charsOf!152 (h!8203 (Cons!2806 (h!8203 tokens!465) Nil!2806))))))))

(declare-fun bs!15649 () Bool)

(assert (= bs!15649 d!40696))

(declare-fun m!156157 () Bool)

(assert (=> bs!15649 m!156157))

(assert (=> b!162841 d!40696))

(declare-fun d!40698 () Bool)

(declare-fun lt!50399 () BalanceConc!1640)

(assert (=> d!40698 (= (list!1007 lt!50399) (originalCharacters!540 (h!8203 (Cons!2806 (h!8203 tokens!465) Nil!2806))))))

(assert (=> d!40698 (= lt!50399 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 (Cons!2806 (h!8203 tokens!465) Nil!2806))))) (value!18480 (h!8203 (Cons!2806 (h!8203 tokens!465) Nil!2806)))))))

(assert (=> d!40698 (= (charsOf!152 (h!8203 (Cons!2806 (h!8203 tokens!465) Nil!2806))) lt!50399)))

(declare-fun b_lambda!3501 () Bool)

(assert (=> (not b_lambda!3501) (not d!40698)))

(declare-fun tb!6145 () Bool)

(declare-fun t!26302 () Bool)

(assert (=> (and b!162363 (= (toChars!1011 (transformation!497 (h!8202 rules!1920))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (Cons!2806 (h!8203 tokens!465) Nil!2806)))))) t!26302) tb!6145))

(declare-fun b!164081 () Bool)

(declare-fun e!98888 () Bool)

(declare-fun tp!82422 () Bool)

(assert (=> b!164081 (= e!98888 (and (inv!3624 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 (Cons!2806 (h!8203 tokens!465) Nil!2806))))) (value!18480 (h!8203 (Cons!2806 (h!8203 tokens!465) Nil!2806)))))) tp!82422))))

(declare-fun result!8760 () Bool)

(assert (=> tb!6145 (= result!8760 (and (inv!3625 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 (Cons!2806 (h!8203 tokens!465) Nil!2806))))) (value!18480 (h!8203 (Cons!2806 (h!8203 tokens!465) Nil!2806))))) e!98888))))

(assert (= tb!6145 b!164081))

(declare-fun m!156165 () Bool)

(assert (=> b!164081 m!156165))

(declare-fun m!156169 () Bool)

(assert (=> tb!6145 m!156169))

(assert (=> d!40698 t!26302))

(declare-fun b_and!10405 () Bool)

(assert (= b_and!10379 (and (=> t!26302 result!8760) b_and!10405)))

(declare-fun tb!6147 () Bool)

(declare-fun t!26304 () Bool)

(assert (=> (and b!162952 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 rules!1920)))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (Cons!2806 (h!8203 tokens!465) Nil!2806)))))) t!26304) tb!6147))

(declare-fun result!8762 () Bool)

(assert (= result!8762 result!8760))

(assert (=> d!40698 t!26304))

(declare-fun b_and!10407 () Bool)

(assert (= b_and!10381 (and (=> t!26304 result!8762) b_and!10407)))

(declare-fun t!26306 () Bool)

(declare-fun tb!6149 () Bool)

(assert (=> (and b!162933 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (Cons!2806 (h!8203 tokens!465) Nil!2806)))))) t!26306) tb!6149))

(declare-fun result!8764 () Bool)

(assert (= result!8764 result!8760))

(assert (=> d!40698 t!26306))

(declare-fun b_and!10409 () Bool)

(assert (= b_and!10377 (and (=> t!26306 result!8764) b_and!10409)))

(declare-fun t!26308 () Bool)

(declare-fun tb!6151 () Bool)

(assert (=> (and b!162366 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (Cons!2806 (h!8203 tokens!465) Nil!2806)))))) t!26308) tb!6151))

(declare-fun result!8766 () Bool)

(assert (= result!8766 result!8760))

(assert (=> d!40698 t!26308))

(declare-fun b_and!10411 () Bool)

(assert (= b_and!10375 (and (=> t!26308 result!8766) b_and!10411)))

(declare-fun t!26310 () Bool)

(declare-fun tb!6153 () Bool)

(assert (=> (and b!162354 (= (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (Cons!2806 (h!8203 tokens!465) Nil!2806)))))) t!26310) tb!6153))

(declare-fun result!8768 () Bool)

(assert (= result!8768 result!8760))

(assert (=> d!40698 t!26310))

(declare-fun b_and!10413 () Bool)

(assert (= b_and!10383 (and (=> t!26310 result!8768) b_and!10413)))

(declare-fun m!156187 () Bool)

(assert (=> d!40698 m!156187))

(declare-fun m!156193 () Bool)

(assert (=> d!40698 m!156193))

(assert (=> b!162841 d!40698))

(declare-fun d!40702 () Bool)

(declare-fun c!32838 () Bool)

(assert (=> d!40702 (= c!32838 ((_ is Cons!2806) (t!26086 (Cons!2806 (h!8203 tokens!465) Nil!2806))))))

(declare-fun e!98889 () List!2814)

(assert (=> d!40702 (= (printList!67 thiss!17480 (t!26086 (Cons!2806 (h!8203 tokens!465) Nil!2806))) e!98889)))

(declare-fun b!164082 () Bool)

(assert (=> b!164082 (= e!98889 (++!626 (list!1007 (charsOf!152 (h!8203 (t!26086 (Cons!2806 (h!8203 tokens!465) Nil!2806))))) (printList!67 thiss!17480 (t!26086 (t!26086 (Cons!2806 (h!8203 tokens!465) Nil!2806))))))))

(declare-fun b!164083 () Bool)

(assert (=> b!164083 (= e!98889 Nil!2804)))

(assert (= (and d!40702 c!32838) b!164082))

(assert (= (and d!40702 (not c!32838)) b!164083))

(declare-fun m!156197 () Bool)

(assert (=> b!164082 m!156197))

(assert (=> b!164082 m!156197))

(declare-fun m!156199 () Bool)

(assert (=> b!164082 m!156199))

(declare-fun m!156201 () Bool)

(assert (=> b!164082 m!156201))

(assert (=> b!164082 m!156199))

(assert (=> b!164082 m!156201))

(declare-fun m!156203 () Bool)

(assert (=> b!164082 m!156203))

(assert (=> b!162841 d!40702))

(declare-fun d!40706 () Bool)

(declare-fun lt!50401 () Bool)

(assert (=> d!40706 (= lt!50401 (isEmpty!1141 (list!1007 (_2!1551 (lex!183 thiss!17480 rules!1920 (print!114 thiss!17480 (singletonSeq!49 separatorToken!170)))))))))

(assert (=> d!40706 (= lt!50401 (isEmpty!1145 (c!32407 (_2!1551 (lex!183 thiss!17480 rules!1920 (print!114 thiss!17480 (singletonSeq!49 separatorToken!170)))))))))

(assert (=> d!40706 (= (isEmpty!1142 (_2!1551 (lex!183 thiss!17480 rules!1920 (print!114 thiss!17480 (singletonSeq!49 separatorToken!170))))) lt!50401)))

(declare-fun bs!15651 () Bool)

(assert (= bs!15651 d!40706))

(declare-fun m!156205 () Bool)

(assert (=> bs!15651 m!156205))

(assert (=> bs!15651 m!156205))

(declare-fun m!156207 () Bool)

(assert (=> bs!15651 m!156207))

(declare-fun m!156209 () Bool)

(assert (=> bs!15651 m!156209))

(assert (=> b!162872 d!40706))

(declare-fun e!98892 () Bool)

(declare-fun b!164085 () Bool)

(declare-fun lt!50402 () tuple2!2670)

(assert (=> b!164085 (= e!98892 (= (list!1007 (_2!1551 lt!50402)) (_2!1557 (lexList!105 thiss!17480 rules!1920 (list!1007 (print!114 thiss!17480 (singletonSeq!49 separatorToken!170)))))))))

(declare-fun d!40708 () Bool)

(assert (=> d!40708 e!98892))

(declare-fun res!74341 () Bool)

(assert (=> d!40708 (=> (not res!74341) (not e!98892))))

(declare-fun e!98891 () Bool)

(assert (=> d!40708 (= res!74341 e!98891)))

(declare-fun c!32839 () Bool)

(assert (=> d!40708 (= c!32839 (> (size!2348 (_1!1551 lt!50402)) 0))))

(assert (=> d!40708 (= lt!50402 (lexTailRecV2!92 thiss!17480 rules!1920 (print!114 thiss!17480 (singletonSeq!49 separatorToken!170)) (BalanceConc!1641 Empty!816) (print!114 thiss!17480 (singletonSeq!49 separatorToken!170)) (BalanceConc!1643 Empty!817)))))

(assert (=> d!40708 (= (lex!183 thiss!17480 rules!1920 (print!114 thiss!17480 (singletonSeq!49 separatorToken!170))) lt!50402)))

(declare-fun b!164086 () Bool)

(assert (=> b!164086 (= e!98891 (= (_2!1551 lt!50402) (print!114 thiss!17480 (singletonSeq!49 separatorToken!170))))))

(declare-fun b!164087 () Bool)

(declare-fun e!98893 () Bool)

(assert (=> b!164087 (= e!98891 e!98893)))

(declare-fun res!74343 () Bool)

(assert (=> b!164087 (= res!74343 (< (size!2349 (_2!1551 lt!50402)) (size!2349 (print!114 thiss!17480 (singletonSeq!49 separatorToken!170)))))))

(assert (=> b!164087 (=> (not res!74343) (not e!98893))))

(declare-fun b!164088 () Bool)

(assert (=> b!164088 (= e!98893 (not (isEmpty!1135 (_1!1551 lt!50402))))))

(declare-fun b!164089 () Bool)

(declare-fun res!74342 () Bool)

(assert (=> b!164089 (=> (not res!74342) (not e!98892))))

(assert (=> b!164089 (= res!74342 (= (list!1011 (_1!1551 lt!50402)) (_1!1557 (lexList!105 thiss!17480 rules!1920 (list!1007 (print!114 thiss!17480 (singletonSeq!49 separatorToken!170)))))))))

(assert (= (and d!40708 c!32839) b!164087))

(assert (= (and d!40708 (not c!32839)) b!164086))

(assert (= (and b!164087 res!74343) b!164088))

(assert (= (and d!40708 res!74341) b!164089))

(assert (= (and b!164089 res!74342) b!164085))

(declare-fun m!156221 () Bool)

(assert (=> b!164089 m!156221))

(assert (=> b!164089 m!153117))

(declare-fun m!156223 () Bool)

(assert (=> b!164089 m!156223))

(assert (=> b!164089 m!156223))

(declare-fun m!156225 () Bool)

(assert (=> b!164089 m!156225))

(declare-fun m!156227 () Bool)

(assert (=> b!164085 m!156227))

(assert (=> b!164085 m!153117))

(assert (=> b!164085 m!156223))

(assert (=> b!164085 m!156223))

(assert (=> b!164085 m!156225))

(declare-fun m!156229 () Bool)

(assert (=> d!40708 m!156229))

(assert (=> d!40708 m!153117))

(assert (=> d!40708 m!153117))

(declare-fun m!156231 () Bool)

(assert (=> d!40708 m!156231))

(declare-fun m!156235 () Bool)

(assert (=> b!164087 m!156235))

(assert (=> b!164087 m!153117))

(declare-fun m!156239 () Bool)

(assert (=> b!164087 m!156239))

(declare-fun m!156243 () Bool)

(assert (=> b!164088 m!156243))

(assert (=> b!162872 d!40708))

(declare-fun d!40714 () Bool)

(declare-fun lt!50403 () BalanceConc!1640)

(assert (=> d!40714 (= (list!1007 lt!50403) (printList!67 thiss!17480 (list!1011 (singletonSeq!49 separatorToken!170))))))

(assert (=> d!40714 (= lt!50403 (printTailRec!77 thiss!17480 (singletonSeq!49 separatorToken!170) 0 (BalanceConc!1641 Empty!816)))))

(assert (=> d!40714 (= (print!114 thiss!17480 (singletonSeq!49 separatorToken!170)) lt!50403)))

(declare-fun bs!15653 () Bool)

(assert (= bs!15653 d!40714))

(declare-fun m!156247 () Bool)

(assert (=> bs!15653 m!156247))

(assert (=> bs!15653 m!153123))

(assert (=> bs!15653 m!153127))

(assert (=> bs!15653 m!153127))

(declare-fun m!156249 () Bool)

(assert (=> bs!15653 m!156249))

(assert (=> bs!15653 m!153123))

(declare-fun m!156251 () Bool)

(assert (=> bs!15653 m!156251))

(assert (=> b!162872 d!40714))

(declare-fun d!40718 () Bool)

(declare-fun e!98896 () Bool)

(assert (=> d!40718 e!98896))

(declare-fun res!74344 () Bool)

(assert (=> d!40718 (=> (not res!74344) (not e!98896))))

(declare-fun lt!50404 () BalanceConc!1642)

(assert (=> d!40718 (= res!74344 (= (list!1011 lt!50404) (Cons!2806 separatorToken!170 Nil!2806)))))

(assert (=> d!40718 (= lt!50404 (singleton!29 separatorToken!170))))

(assert (=> d!40718 (= (singletonSeq!49 separatorToken!170) lt!50404)))

(declare-fun b!164094 () Bool)

(assert (=> b!164094 (= e!98896 (isBalanced!226 (c!32409 lt!50404)))))

(assert (= (and d!40718 res!74344) b!164094))

(declare-fun m!156257 () Bool)

(assert (=> d!40718 m!156257))

(declare-fun m!156259 () Bool)

(assert (=> d!40718 m!156259))

(declare-fun m!156261 () Bool)

(assert (=> b!164094 m!156261))

(assert (=> b!162872 d!40718))

(declare-fun d!40722 () Bool)

(declare-fun e!98899 () Bool)

(assert (=> d!40722 e!98899))

(declare-fun res!74346 () Bool)

(assert (=> d!40722 (=> (not res!74346) (not e!98899))))

(declare-fun lt!50405 () List!2814)

(assert (=> d!40722 (= res!74346 (= (content!388 lt!50405) ((_ map or) (content!388 (t!26084 (++!626 lt!49240 lt!49241))) (content!388 lt!49246))))))

(declare-fun e!98898 () List!2814)

(assert (=> d!40722 (= lt!50405 e!98898)))

(declare-fun c!32843 () Bool)

(assert (=> d!40722 (= c!32843 ((_ is Nil!2804) (t!26084 (++!626 lt!49240 lt!49241))))))

(assert (=> d!40722 (= (++!626 (t!26084 (++!626 lt!49240 lt!49241)) lt!49246) lt!50405)))

(declare-fun b!164099 () Bool)

(declare-fun res!74345 () Bool)

(assert (=> b!164099 (=> (not res!74345) (not e!98899))))

(assert (=> b!164099 (= res!74345 (= (size!2347 lt!50405) (+ (size!2347 (t!26084 (++!626 lt!49240 lt!49241))) (size!2347 lt!49246))))))

(declare-fun b!164098 () Bool)

(assert (=> b!164098 (= e!98898 (Cons!2804 (h!8201 (t!26084 (++!626 lt!49240 lt!49241))) (++!626 (t!26084 (t!26084 (++!626 lt!49240 lt!49241))) lt!49246)))))

(declare-fun b!164097 () Bool)

(assert (=> b!164097 (= e!98898 lt!49246)))

(declare-fun b!164100 () Bool)

(assert (=> b!164100 (= e!98899 (or (not (= lt!49246 Nil!2804)) (= lt!50405 (t!26084 (++!626 lt!49240 lt!49241)))))))

(assert (= (and d!40722 c!32843) b!164097))

(assert (= (and d!40722 (not c!32843)) b!164098))

(assert (= (and d!40722 res!74346) b!164099))

(assert (= (and b!164099 res!74345) b!164100))

(declare-fun m!156273 () Bool)

(assert (=> d!40722 m!156273))

(assert (=> d!40722 m!154689))

(assert (=> d!40722 m!152689))

(declare-fun m!156275 () Bool)

(assert (=> b!164099 m!156275))

(assert (=> b!164099 m!155233))

(assert (=> b!164099 m!152693))

(declare-fun m!156277 () Bool)

(assert (=> b!164098 m!156277))

(assert (=> b!162637 d!40722))

(declare-fun d!40728 () Bool)

(assert (=> d!40728 (= (inv!16 (value!18480 separatorToken!170)) (= (charsToInt!0 (text!4080 (value!18480 separatorToken!170))) (value!18471 (value!18480 separatorToken!170))))))

(declare-fun bs!15655 () Bool)

(assert (= bs!15655 d!40728))

(declare-fun m!156283 () Bool)

(assert (=> bs!15655 m!156283))

(assert (=> b!162859 d!40728))

(declare-fun d!40732 () Bool)

(declare-fun c!32844 () Bool)

(assert (=> d!40732 (= c!32844 ((_ is Empty!816) (c!32407 lt!49242)))))

(declare-fun e!98901 () List!2814)

(assert (=> d!40732 (= (list!1010 (c!32407 lt!49242)) e!98901)))

(declare-fun b!164102 () Bool)

(assert (=> b!164102 (= e!98901 Nil!2804)))

(declare-fun b!164103 () Bool)

(declare-fun e!98902 () List!2814)

(assert (=> b!164103 (= e!98901 e!98902)))

(declare-fun c!32845 () Bool)

(assert (=> b!164103 (= c!32845 ((_ is Leaf!1404) (c!32407 lt!49242)))))

(declare-fun b!164104 () Bool)

(assert (=> b!164104 (= e!98902 (list!1014 (xs!3411 (c!32407 lt!49242))))))

(declare-fun b!164105 () Bool)

(assert (=> b!164105 (= e!98902 (++!626 (list!1010 (left!2115 (c!32407 lt!49242))) (list!1010 (right!2445 (c!32407 lt!49242)))))))

(assert (= (and d!40732 c!32844) b!164102))

(assert (= (and d!40732 (not c!32844)) b!164103))

(assert (= (and b!164103 c!32845) b!164104))

(assert (= (and b!164103 (not c!32845)) b!164105))

(declare-fun m!156287 () Bool)

(assert (=> b!164104 m!156287))

(declare-fun m!156289 () Bool)

(assert (=> b!164105 m!156289))

(declare-fun m!156291 () Bool)

(assert (=> b!164105 m!156291))

(assert (=> b!164105 m!156289))

(assert (=> b!164105 m!156291))

(declare-fun m!156293 () Bool)

(assert (=> b!164105 m!156293))

(assert (=> d!39978 d!40732))

(declare-fun d!40734 () Bool)

(declare-fun lt!50415 () Token!738)

(assert (=> d!40734 (= lt!50415 (apply!389 (list!1011 (_1!1551 lt!49513)) 0))))

(assert (=> d!40734 (= lt!50415 (apply!393 (c!32409 (_1!1551 lt!49513)) 0))))

(declare-fun e!98905 () Bool)

(assert (=> d!40734 e!98905))

(declare-fun res!74349 () Bool)

(assert (=> d!40734 (=> (not res!74349) (not e!98905))))

(assert (=> d!40734 (= res!74349 (<= 0 0))))

(assert (=> d!40734 (= (apply!390 (_1!1551 lt!49513) 0) lt!50415)))

(declare-fun b!164109 () Bool)

(assert (=> b!164109 (= e!98905 (< 0 (size!2348 (_1!1551 lt!49513))))))

(assert (= (and d!40734 res!74349) b!164109))

(declare-fun m!156295 () Bool)

(assert (=> d!40734 m!156295))

(assert (=> d!40734 m!156295))

(declare-fun m!156297 () Bool)

(assert (=> d!40734 m!156297))

(declare-fun m!156299 () Bool)

(assert (=> d!40734 m!156299))

(assert (=> b!164109 m!153125))

(assert (=> b!162870 d!40734))

(declare-fun d!40736 () Bool)

(declare-fun lt!50435 () Int)

(assert (=> d!40736 (= lt!50435 (size!2347 (list!1007 (_2!1551 lt!49478))))))

(declare-fun size!2355 (Conc!816) Int)

(assert (=> d!40736 (= lt!50435 (size!2355 (c!32407 (_2!1551 lt!49478))))))

(assert (=> d!40736 (= (size!2349 (_2!1551 lt!49478)) lt!50435)))

(declare-fun bs!15656 () Bool)

(assert (= bs!15656 d!40736))

(assert (=> bs!15656 m!153001))

(assert (=> bs!15656 m!153001))

(declare-fun m!156333 () Bool)

(assert (=> bs!15656 m!156333))

(declare-fun m!156337 () Bool)

(assert (=> bs!15656 m!156337))

(assert (=> b!162813 d!40736))

(declare-fun d!40740 () Bool)

(declare-fun lt!50436 () Int)

(assert (=> d!40740 (= lt!50436 (size!2347 (list!1007 (seqFromList!371 lt!49240))))))

(assert (=> d!40740 (= lt!50436 (size!2355 (c!32407 (seqFromList!371 lt!49240))))))

(assert (=> d!40740 (= (size!2349 (seqFromList!371 lt!49240)) lt!50436)))

(declare-fun bs!15657 () Bool)

(assert (= bs!15657 d!40740))

(assert (=> bs!15657 m!152333))

(assert (=> bs!15657 m!152997))

(assert (=> bs!15657 m!152997))

(assert (=> bs!15657 m!154109))

(declare-fun m!156359 () Bool)

(assert (=> bs!15657 m!156359))

(assert (=> b!162813 d!40740))

(declare-fun d!40742 () Bool)

(assert (=> d!40742 (= (inv!3617 (tag!675 (rule!1004 (h!8203 (t!26086 tokens!465))))) (= (mod (str.len (value!18479 (tag!675 (rule!1004 (h!8203 (t!26086 tokens!465)))))) 2) 0))))

(assert (=> b!162932 d!40742))

(declare-fun d!40744 () Bool)

(declare-fun res!74352 () Bool)

(declare-fun e!98908 () Bool)

(assert (=> d!40744 (=> (not res!74352) (not e!98908))))

(assert (=> d!40744 (= res!74352 (semiInverseModEq!171 (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))) (toValue!1152 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465)))))))))

(assert (=> d!40744 (= (inv!3620 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))) e!98908)))

(declare-fun b!164114 () Bool)

(assert (=> b!164114 (= e!98908 (equivClasses!154 (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))) (toValue!1152 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465)))))))))

(assert (= (and d!40744 res!74352) b!164114))

(declare-fun m!156375 () Bool)

(assert (=> d!40744 m!156375))

(declare-fun m!156377 () Bool)

(assert (=> b!164114 m!156377))

(assert (=> b!162932 d!40744))

(declare-fun bs!15680 () Bool)

(declare-fun d!40746 () Bool)

(assert (= bs!15680 (and d!40746 b!162538)))

(declare-fun lambda!4525 () Int)

(assert (=> bs!15680 (= lambda!4525 lambda!4456)))

(declare-fun bs!15681 () Bool)

(assert (= bs!15681 (and d!40746 d!40560)))

(assert (=> bs!15681 (not (= lambda!4525 lambda!4512))))

(declare-fun bs!15682 () Bool)

(assert (= bs!15682 (and d!40746 b!163938)))

(assert (=> bs!15682 (= lambda!4525 lambda!4513)))

(declare-fun bs!15683 () Bool)

(assert (= bs!15683 (and d!40746 b!162895)))

(assert (=> bs!15683 (= lambda!4525 lambda!4482)))

(declare-fun bs!15684 () Bool)

(assert (= bs!15684 (and d!40746 b!162881)))

(assert (=> bs!15684 (= lambda!4525 lambda!4481)))

(declare-fun bs!15685 () Bool)

(assert (= bs!15685 (and d!40746 b!162350)))

(assert (=> bs!15685 (= lambda!4525 lambda!4448)))

(declare-fun bs!15686 () Bool)

(assert (= bs!15686 (and d!40746 b!162362)))

(assert (=> bs!15686 (not (= lambda!4525 lambda!4447))))

(declare-fun bs!15687 () Bool)

(assert (= bs!15687 (and d!40746 d!39988)))

(assert (=> bs!15687 (= lambda!4525 lambda!4479)))

(declare-fun bs!15688 () Bool)

(assert (= bs!15688 (and d!40746 b!163386)))

(assert (=> bs!15688 (= lambda!4525 lambda!4497)))

(declare-fun bs!15689 () Bool)

(assert (= bs!15689 (and d!40746 b!163521)))

(assert (=> bs!15689 (= lambda!4525 lambda!4501)))

(declare-fun bs!15690 () Bool)

(assert (= bs!15690 (and d!40746 d!39888)))

(assert (=> bs!15690 (not (= lambda!4525 lambda!4464))))

(declare-fun bs!15691 () Bool)

(assert (= bs!15691 (and d!40746 d!40002)))

(assert (=> bs!15691 (not (= lambda!4525 lambda!4480))))

(declare-fun bs!15692 () Bool)

(assert (= bs!15692 (and d!40746 b!164031)))

(assert (=> bs!15692 (= lambda!4525 lambda!4519)))

(declare-fun bs!15693 () Bool)

(assert (= bs!15693 (and d!40746 b!162616)))

(assert (=> bs!15693 (= lambda!4525 lambda!4465)))

(declare-fun b!164267 () Bool)

(declare-fun e!98995 () Bool)

(assert (=> b!164267 (= e!98995 true)))

(declare-fun b!164266 () Bool)

(declare-fun e!98994 () Bool)

(assert (=> b!164266 (= e!98994 e!98995)))

(declare-fun b!164265 () Bool)

(declare-fun e!98993 () Bool)

(assert (=> b!164265 (= e!98993 e!98994)))

(assert (=> d!40746 e!98993))

(assert (= b!164266 b!164267))

(assert (= b!164265 b!164266))

(assert (= (and d!40746 ((_ is Cons!2805) rules!1920)) b!164265))

(assert (=> b!164267 (< (dynLambda!999 order!1425 (toValue!1152 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1000 order!1427 lambda!4525))))

(assert (=> b!164267 (< (dynLambda!1001 order!1429 (toChars!1011 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1000 order!1427 lambda!4525))))

(assert (=> d!40746 true))

(declare-fun lt!50453 () Bool)

(assert (=> d!40746 (= lt!50453 (forall!523 (list!1011 lt!49245) lambda!4525))))

(declare-fun e!98991 () Bool)

(assert (=> d!40746 (= lt!50453 e!98991)))

(declare-fun res!74371 () Bool)

(assert (=> d!40746 (=> res!74371 e!98991)))

(assert (=> d!40746 (= res!74371 (not ((_ is Cons!2806) (list!1011 lt!49245))))))

(assert (=> d!40746 (not (isEmpty!1136 rules!1920))))

(assert (=> d!40746 (= (rulesProduceEachTokenIndividuallyList!103 thiss!17480 rules!1920 (list!1011 lt!49245)) lt!50453)))

(declare-fun b!164263 () Bool)

(declare-fun e!98992 () Bool)

(assert (=> b!164263 (= e!98991 e!98992)))

(declare-fun res!74370 () Bool)

(assert (=> b!164263 (=> (not res!74370) (not e!98992))))

(assert (=> b!164263 (= res!74370 (rulesProduceIndividualToken!132 thiss!17480 rules!1920 (h!8203 (list!1011 lt!49245))))))

(declare-fun b!164264 () Bool)

(assert (=> b!164264 (= e!98992 (rulesProduceEachTokenIndividuallyList!103 thiss!17480 rules!1920 (t!26086 (list!1011 lt!49245))))))

(assert (= (and d!40746 (not res!74371)) b!164263))

(assert (= (and b!164263 res!74370) b!164264))

(assert (=> d!40746 m!153103))

(declare-fun m!156513 () Bool)

(assert (=> d!40746 m!156513))

(assert (=> d!40746 m!152327))

(declare-fun m!156515 () Bool)

(assert (=> b!164263 m!156515))

(declare-fun m!156517 () Bool)

(assert (=> b!164264 m!156517))

(assert (=> b!162866 d!40746))

(assert (=> b!162866 d!40220))

(declare-fun d!40810 () Bool)

(assert (=> d!40810 (= (list!1007 (ite c!32434 call!6848 call!6850)) (list!1010 (c!32407 (ite c!32434 call!6848 call!6850))))))

(declare-fun bs!15694 () Bool)

(assert (= bs!15694 d!40810))

(declare-fun m!156519 () Bool)

(assert (=> bs!15694 m!156519))

(assert (=> bm!6842 d!40810))

(declare-fun d!40812 () Bool)

(assert (=> d!40812 (= (isEmpty!1141 (originalCharacters!540 (h!8203 tokens!465))) ((_ is Nil!2804) (originalCharacters!540 (h!8203 tokens!465))))))

(assert (=> d!39832 d!40812))

(declare-fun d!40814 () Bool)

(declare-fun c!32858 () Bool)

(assert (=> d!40814 (= c!32858 ((_ is Empty!816) (c!32407 (charsOf!152 (h!8203 tokens!465)))))))

(declare-fun e!98996 () List!2814)

(assert (=> d!40814 (= (list!1010 (c!32407 (charsOf!152 (h!8203 tokens!465)))) e!98996)))

(declare-fun b!164268 () Bool)

(assert (=> b!164268 (= e!98996 Nil!2804)))

(declare-fun b!164269 () Bool)

(declare-fun e!98997 () List!2814)

(assert (=> b!164269 (= e!98996 e!98997)))

(declare-fun c!32859 () Bool)

(assert (=> b!164269 (= c!32859 ((_ is Leaf!1404) (c!32407 (charsOf!152 (h!8203 tokens!465)))))))

(declare-fun b!164270 () Bool)

(assert (=> b!164270 (= e!98997 (list!1014 (xs!3411 (c!32407 (charsOf!152 (h!8203 tokens!465))))))))

(declare-fun b!164271 () Bool)

(assert (=> b!164271 (= e!98997 (++!626 (list!1010 (left!2115 (c!32407 (charsOf!152 (h!8203 tokens!465))))) (list!1010 (right!2445 (c!32407 (charsOf!152 (h!8203 tokens!465)))))))))

(assert (= (and d!40814 c!32858) b!164268))

(assert (= (and d!40814 (not c!32858)) b!164269))

(assert (= (and b!164269 c!32859) b!164270))

(assert (= (and b!164269 (not c!32859)) b!164271))

(declare-fun m!156521 () Bool)

(assert (=> b!164270 m!156521))

(declare-fun m!156523 () Bool)

(assert (=> b!164271 m!156523))

(declare-fun m!156525 () Bool)

(assert (=> b!164271 m!156525))

(assert (=> b!164271 m!156523))

(assert (=> b!164271 m!156525))

(declare-fun m!156527 () Bool)

(assert (=> b!164271 m!156527))

(assert (=> d!39898 d!40814))

(declare-fun bs!15695 () Bool)

(declare-fun d!40816 () Bool)

(assert (= bs!15695 (and d!40816 d!40270)))

(declare-fun lambda!4526 () Int)

(assert (=> bs!15695 (= (= (toValue!1152 (transformation!497 (rule!1004 separatorToken!170))) (toValue!1152 (transformation!497 (h!8202 rules!1920)))) (= lambda!4526 lambda!4500))))

(declare-fun bs!15696 () Bool)

(assert (= bs!15696 (and d!40816 d!40406)))

(assert (=> bs!15696 (= (= (toValue!1152 (transformation!497 (rule!1004 separatorToken!170))) (toValue!1152 (transformation!497 (rule!1004 (h!8203 tokens!465))))) (= lambda!4526 lambda!4504))))

(assert (=> d!40816 true))

(assert (=> d!40816 (< (dynLambda!999 order!1425 (toValue!1152 (transformation!497 (rule!1004 separatorToken!170)))) (dynLambda!1008 order!1435 lambda!4526))))

(assert (=> d!40816 (= (equivClasses!154 (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (toValue!1152 (transformation!497 (rule!1004 separatorToken!170)))) (Forall2!108 lambda!4526))))

(declare-fun bs!15697 () Bool)

(assert (= bs!15697 d!40816))

(declare-fun m!156529 () Bool)

(assert (=> bs!15697 m!156529))

(assert (=> b!162816 d!40816))

(declare-fun b!164274 () Bool)

(declare-fun res!74372 () Bool)

(declare-fun e!98998 () Bool)

(assert (=> b!164274 (=> (not res!74372) (not e!98998))))

(assert (=> b!164274 (= res!74372 (>= (height!86 (++!630 (c!32407 call!6878) (c!32407 lt!49349))) (max!0 (height!86 (c!32407 call!6878)) (height!86 (c!32407 lt!49349)))))))

(declare-fun b!164272 () Bool)

(declare-fun res!74373 () Bool)

(assert (=> b!164272 (=> (not res!74373) (not e!98998))))

(assert (=> b!164272 (= res!74373 (isBalanced!228 (++!630 (c!32407 call!6878) (c!32407 lt!49349))))))

(declare-fun b!164275 () Bool)

(declare-fun lt!50454 () BalanceConc!1640)

(assert (=> b!164275 (= e!98998 (= (list!1007 lt!50454) (++!626 (list!1007 call!6878) (list!1007 lt!49349))))))

(declare-fun b!164273 () Bool)

(declare-fun res!74375 () Bool)

(assert (=> b!164273 (=> (not res!74375) (not e!98998))))

(assert (=> b!164273 (= res!74375 (<= (height!86 (++!630 (c!32407 call!6878) (c!32407 lt!49349))) (+ (max!0 (height!86 (c!32407 call!6878)) (height!86 (c!32407 lt!49349))) 1)))))

(declare-fun d!40818 () Bool)

(assert (=> d!40818 e!98998))

(declare-fun res!74374 () Bool)

(assert (=> d!40818 (=> (not res!74374) (not e!98998))))

(assert (=> d!40818 (= res!74374 (appendAssocInst!27 (c!32407 call!6878) (c!32407 lt!49349)))))

(assert (=> d!40818 (= lt!50454 (BalanceConc!1641 (++!630 (c!32407 call!6878) (c!32407 lt!49349))))))

(assert (=> d!40818 (= (++!628 call!6878 lt!49349) lt!50454)))

(assert (= (and d!40818 res!74374) b!164272))

(assert (= (and b!164272 res!74373) b!164273))

(assert (= (and b!164273 res!74375) b!164274))

(assert (= (and b!164274 res!74372) b!164275))

(declare-fun m!156531 () Bool)

(assert (=> b!164273 m!156531))

(declare-fun m!156533 () Bool)

(assert (=> b!164273 m!156533))

(declare-fun m!156535 () Bool)

(assert (=> b!164273 m!156535))

(assert (=> b!164273 m!156531))

(declare-fun m!156537 () Bool)

(assert (=> b!164273 m!156537))

(assert (=> b!164273 m!156533))

(assert (=> b!164273 m!156537))

(declare-fun m!156539 () Bool)

(assert (=> b!164273 m!156539))

(assert (=> b!164272 m!156537))

(assert (=> b!164272 m!156537))

(declare-fun m!156541 () Bool)

(assert (=> b!164272 m!156541))

(declare-fun m!156543 () Bool)

(assert (=> b!164275 m!156543))

(declare-fun m!156545 () Bool)

(assert (=> b!164275 m!156545))

(assert (=> b!164275 m!152655))

(assert (=> b!164275 m!156545))

(assert (=> b!164275 m!152655))

(declare-fun m!156547 () Bool)

(assert (=> b!164275 m!156547))

(assert (=> b!164274 m!156531))

(assert (=> b!164274 m!156533))

(assert (=> b!164274 m!156535))

(assert (=> b!164274 m!156531))

(assert (=> b!164274 m!156537))

(assert (=> b!164274 m!156533))

(assert (=> b!164274 m!156537))

(assert (=> b!164274 m!156539))

(declare-fun m!156549 () Bool)

(assert (=> d!40818 m!156549))

(assert (=> d!40818 m!156537))

(assert (=> b!162620 d!40818))

(assert (=> d!39996 d!40718))

(declare-fun d!40820 () Bool)

(assert (=> d!40820 (= (list!1011 (_1!1551 (lex!183 thiss!17480 rules!1920 (print!114 thiss!17480 (singletonSeq!49 separatorToken!170))))) (list!1015 (c!32409 (_1!1551 (lex!183 thiss!17480 rules!1920 (print!114 thiss!17480 (singletonSeq!49 separatorToken!170)))))))))

(declare-fun bs!15698 () Bool)

(assert (= bs!15698 d!40820))

(declare-fun m!156551 () Bool)

(assert (=> bs!15698 m!156551))

(assert (=> d!39996 d!40820))

(assert (=> d!39996 d!40708))

(declare-fun d!40822 () Bool)

(assert (=> d!40822 (= (list!1011 (singletonSeq!49 separatorToken!170)) (list!1015 (c!32409 (singletonSeq!49 separatorToken!170))))))

(declare-fun bs!15699 () Bool)

(assert (= bs!15699 d!40822))

(declare-fun m!156553 () Bool)

(assert (=> bs!15699 m!156553))

(assert (=> d!39996 d!40822))

(assert (=> d!39996 d!40006))

(declare-fun d!40824 () Bool)

(declare-fun lt!50455 () Int)

(assert (=> d!40824 (= lt!50455 (size!2351 (list!1011 (_1!1551 lt!49513))))))

(assert (=> d!40824 (= lt!50455 (size!2353 (c!32409 (_1!1551 lt!49513))))))

(assert (=> d!40824 (= (size!2348 (_1!1551 lt!49513)) lt!50455)))

(declare-fun bs!15700 () Bool)

(assert (= bs!15700 d!40824))

(assert (=> bs!15700 m!156295))

(assert (=> bs!15700 m!156295))

(declare-fun m!156555 () Bool)

(assert (=> bs!15700 m!156555))

(declare-fun m!156557 () Bool)

(assert (=> bs!15700 m!156557))

(assert (=> d!39996 d!40824))

(assert (=> d!39996 d!40714))

(declare-fun d!40826 () Bool)

(declare-fun lt!50468 () List!2814)

(assert (=> d!40826 (= lt!50468 (++!626 (list!1007 (BalanceConc!1641 Empty!816)) (printList!67 thiss!17480 (dropList!80 lt!49248 0))))))

(declare-fun e!99001 () List!2814)

(assert (=> d!40826 (= lt!50468 e!99001)))

(declare-fun c!32862 () Bool)

(assert (=> d!40826 (= c!32862 ((_ is Cons!2806) (dropList!80 lt!49248 0)))))

(assert (=> d!40826 (= (printListTailRec!48 thiss!17480 (dropList!80 lt!49248 0) (list!1007 (BalanceConc!1641 Empty!816))) lt!50468)))

(declare-fun b!164280 () Bool)

(assert (=> b!164280 (= e!99001 (printListTailRec!48 thiss!17480 (t!26086 (dropList!80 lt!49248 0)) (++!626 (list!1007 (BalanceConc!1641 Empty!816)) (list!1007 (charsOf!152 (h!8203 (dropList!80 lt!49248 0)))))))))

(declare-fun lt!50470 () List!2814)

(assert (=> b!164280 (= lt!50470 (list!1007 (charsOf!152 (h!8203 (dropList!80 lt!49248 0)))))))

(declare-fun lt!50466 () List!2814)

(assert (=> b!164280 (= lt!50466 (printList!67 thiss!17480 (t!26086 (dropList!80 lt!49248 0))))))

(declare-fun lt!50467 () Unit!2310)

(assert (=> b!164280 (= lt!50467 (lemmaConcatAssociativity!178 (list!1007 (BalanceConc!1641 Empty!816)) lt!50470 lt!50466))))

(assert (=> b!164280 (= (++!626 (++!626 (list!1007 (BalanceConc!1641 Empty!816)) lt!50470) lt!50466) (++!626 (list!1007 (BalanceConc!1641 Empty!816)) (++!626 lt!50470 lt!50466)))))

(declare-fun lt!50469 () Unit!2310)

(assert (=> b!164280 (= lt!50469 lt!50467)))

(declare-fun b!164281 () Bool)

(assert (=> b!164281 (= e!99001 (list!1007 (BalanceConc!1641 Empty!816)))))

(assert (= (and d!40826 c!32862) b!164280))

(assert (= (and d!40826 (not c!32862)) b!164281))

(assert (=> d!40826 m!153041))

(declare-fun m!156559 () Bool)

(assert (=> d!40826 m!156559))

(assert (=> d!40826 m!153043))

(assert (=> d!40826 m!156559))

(declare-fun m!156561 () Bool)

(assert (=> d!40826 m!156561))

(declare-fun m!156563 () Bool)

(assert (=> b!164280 m!156563))

(assert (=> b!164280 m!153043))

(declare-fun m!156565 () Bool)

(assert (=> b!164280 m!156565))

(assert (=> b!164280 m!153043))

(declare-fun m!156567 () Bool)

(assert (=> b!164280 m!156567))

(declare-fun m!156569 () Bool)

(assert (=> b!164280 m!156569))

(assert (=> b!164280 m!153043))

(declare-fun m!156571 () Bool)

(assert (=> b!164280 m!156571))

(declare-fun m!156573 () Bool)

(assert (=> b!164280 m!156573))

(assert (=> b!164280 m!156573))

(declare-fun m!156575 () Bool)

(assert (=> b!164280 m!156575))

(assert (=> b!164280 m!156567))

(declare-fun m!156577 () Bool)

(assert (=> b!164280 m!156577))

(assert (=> b!164280 m!156571))

(assert (=> b!164280 m!153043))

(declare-fun m!156579 () Bool)

(assert (=> b!164280 m!156579))

(assert (=> b!164280 m!156577))

(assert (=> b!164280 m!156565))

(declare-fun m!156581 () Bool)

(assert (=> b!164280 m!156581))

(assert (=> d!39976 d!40826))

(assert (=> d!39976 d!40688))

(declare-fun d!40828 () Bool)

(assert (=> d!40828 (= (list!1007 lt!49501) (list!1010 (c!32407 lt!49501)))))

(declare-fun bs!15701 () Bool)

(assert (= bs!15701 d!40828))

(declare-fun m!156583 () Bool)

(assert (=> bs!15701 m!156583))

(assert (=> d!39976 d!40828))

(declare-fun d!40830 () Bool)

(assert (=> d!40830 (= (dropList!80 lt!49248 0) (drop!133 (list!1015 (c!32409 lt!49248)) 0))))

(declare-fun bs!15702 () Bool)

(assert (= bs!15702 d!40830))

(assert (=> bs!15702 m!153697))

(assert (=> bs!15702 m!153697))

(declare-fun m!156585 () Bool)

(assert (=> bs!15702 m!156585))

(assert (=> d!39976 d!40830))

(declare-fun d!40832 () Bool)

(assert (=> d!40832 (= (list!1007 (BalanceConc!1641 Empty!816)) (list!1010 (c!32407 (BalanceConc!1641 Empty!816))))))

(declare-fun bs!15703 () Bool)

(assert (= bs!15703 d!40832))

(declare-fun m!156587 () Bool)

(assert (=> bs!15703 m!156587))

(assert (=> d!39976 d!40832))

(declare-fun d!40834 () Bool)

(declare-fun e!99003 () Bool)

(assert (=> d!40834 e!99003))

(declare-fun res!74377 () Bool)

(assert (=> d!40834 (=> (not res!74377) (not e!99003))))

(declare-fun lt!50471 () List!2814)

(assert (=> d!40834 (= res!74377 (= (content!388 lt!50471) ((_ map or) (content!388 call!6914) (content!388 lt!49534))))))

(declare-fun e!99002 () List!2814)

(assert (=> d!40834 (= lt!50471 e!99002)))

(declare-fun c!32863 () Bool)

(assert (=> d!40834 (= c!32863 ((_ is Nil!2804) call!6914))))

(assert (=> d!40834 (= (++!626 call!6914 lt!49534) lt!50471)))

(declare-fun b!164284 () Bool)

(declare-fun res!74376 () Bool)

(assert (=> b!164284 (=> (not res!74376) (not e!99003))))

(assert (=> b!164284 (= res!74376 (= (size!2347 lt!50471) (+ (size!2347 call!6914) (size!2347 lt!49534))))))

(declare-fun b!164283 () Bool)

(assert (=> b!164283 (= e!99002 (Cons!2804 (h!8201 call!6914) (++!626 (t!26084 call!6914) lt!49534)))))

(declare-fun b!164282 () Bool)

(assert (=> b!164282 (= e!99002 lt!49534)))

(declare-fun b!164285 () Bool)

(assert (=> b!164285 (= e!99003 (or (not (= lt!49534 Nil!2804)) (= lt!50471 call!6914)))))

(assert (= (and d!40834 c!32863) b!164282))

(assert (= (and d!40834 (not c!32863)) b!164283))

(assert (= (and d!40834 res!74377) b!164284))

(assert (= (and b!164284 res!74376) b!164285))

(declare-fun m!156589 () Bool)

(assert (=> d!40834 m!156589))

(declare-fun m!156591 () Bool)

(assert (=> d!40834 m!156591))

(assert (=> d!40834 m!153839))

(declare-fun m!156593 () Bool)

(assert (=> b!164284 m!156593))

(declare-fun m!156595 () Bool)

(assert (=> b!164284 m!156595))

(assert (=> b!164284 m!153845))

(declare-fun m!156597 () Bool)

(assert (=> b!164283 m!156597))

(assert (=> b!162897 d!40834))

(declare-fun d!40836 () Bool)

(assert (=> d!40836 (= (list!1007 lt!49482) (list!1010 (c!32407 lt!49482)))))

(declare-fun bs!15704 () Bool)

(assert (= bs!15704 d!40836))

(declare-fun m!156599 () Bool)

(assert (=> bs!15704 m!156599))

(assert (=> d!39974 d!40836))

(declare-fun d!40838 () Bool)

(declare-fun c!32864 () Bool)

(assert (=> d!40838 (= c!32864 ((_ is Cons!2806) (list!1011 lt!49248)))))

(declare-fun e!99004 () List!2814)

(assert (=> d!40838 (= (printList!67 thiss!17480 (list!1011 lt!49248)) e!99004)))

(declare-fun b!164286 () Bool)

(assert (=> b!164286 (= e!99004 (++!626 (list!1007 (charsOf!152 (h!8203 (list!1011 lt!49248)))) (printList!67 thiss!17480 (t!26086 (list!1011 lt!49248)))))))

(declare-fun b!164287 () Bool)

(assert (=> b!164287 (= e!99004 Nil!2804)))

(assert (= (and d!40838 c!32864) b!164286))

(assert (= (and d!40838 (not c!32864)) b!164287))

(declare-fun m!156601 () Bool)

(assert (=> b!164286 m!156601))

(assert (=> b!164286 m!156601))

(declare-fun m!156603 () Bool)

(assert (=> b!164286 m!156603))

(declare-fun m!156605 () Bool)

(assert (=> b!164286 m!156605))

(assert (=> b!164286 m!156603))

(assert (=> b!164286 m!156605))

(declare-fun m!156607 () Bool)

(assert (=> b!164286 m!156607))

(assert (=> d!39974 d!40838))

(assert (=> d!39974 d!40152))

(assert (=> d!39974 d!39976))

(declare-fun d!40840 () Bool)

(declare-fun e!99006 () Bool)

(assert (=> d!40840 e!99006))

(declare-fun res!74379 () Bool)

(assert (=> d!40840 (=> (not res!74379) (not e!99006))))

(declare-fun lt!50472 () List!2814)

(assert (=> d!40840 (= res!74379 (= (content!388 lt!50472) ((_ map or) (content!388 (t!26084 lt!49240)) (content!388 lt!49241))))))

(declare-fun e!99005 () List!2814)

(assert (=> d!40840 (= lt!50472 e!99005)))

(declare-fun c!32865 () Bool)

(assert (=> d!40840 (= c!32865 ((_ is Nil!2804) (t!26084 lt!49240)))))

(assert (=> d!40840 (= (++!626 (t!26084 lt!49240) lt!49241) lt!50472)))

(declare-fun b!164290 () Bool)

(declare-fun res!74378 () Bool)

(assert (=> b!164290 (=> (not res!74378) (not e!99006))))

(assert (=> b!164290 (= res!74378 (= (size!2347 lt!50472) (+ (size!2347 (t!26084 lt!49240)) (size!2347 lt!49241))))))

(declare-fun b!164289 () Bool)

(assert (=> b!164289 (= e!99005 (Cons!2804 (h!8201 (t!26084 lt!49240)) (++!626 (t!26084 (t!26084 lt!49240)) lt!49241)))))

(declare-fun b!164288 () Bool)

(assert (=> b!164288 (= e!99005 lt!49241)))

(declare-fun b!164291 () Bool)

(assert (=> b!164291 (= e!99006 (or (not (= lt!49241 Nil!2804)) (= lt!50472 (t!26084 lt!49240))))))

(assert (= (and d!40840 c!32865) b!164288))

(assert (= (and d!40840 (not c!32865)) b!164289))

(assert (= (and d!40840 res!74379) b!164290))

(assert (= (and b!164290 res!74378) b!164291))

(declare-fun m!156609 () Bool)

(assert (=> d!40840 m!156609))

(assert (=> d!40840 m!153443))

(assert (=> d!40840 m!152571))

(declare-fun m!156611 () Bool)

(assert (=> b!164290 m!156611))

(assert (=> b!164290 m!153447))

(assert (=> b!164290 m!152577))

(declare-fun m!156613 () Bool)

(assert (=> b!164289 m!156613))

(assert (=> b!162555 d!40840))

(declare-fun b!164292 () Bool)

(declare-fun e!99010 () List!2816)

(declare-fun e!99007 () List!2816)

(assert (=> b!164292 (= e!99010 e!99007)))

(declare-fun c!32867 () Bool)

(assert (=> b!164292 (= c!32867 (<= (+ 0 1) 0))))

(declare-fun bm!6997 () Bool)

(declare-fun call!7002 () Int)

(assert (=> bm!6997 (= call!7002 (size!2351 lt!49352))))

(declare-fun b!164293 () Bool)

(declare-fun e!99008 () Int)

(assert (=> b!164293 (= e!99008 (- call!7002 (+ 0 1)))))

(declare-fun b!164294 () Bool)

(assert (=> b!164294 (= e!99007 lt!49352)))

(declare-fun d!40842 () Bool)

(declare-fun e!99009 () Bool)

(assert (=> d!40842 e!99009))

(declare-fun res!74380 () Bool)

(assert (=> d!40842 (=> (not res!74380) (not e!99009))))

(declare-fun lt!50473 () List!2816)

(assert (=> d!40842 (= res!74380 (= ((_ map implies) (content!389 lt!50473) (content!389 lt!49352)) ((as const (InoxSet Token!738)) true)))))

(assert (=> d!40842 (= lt!50473 e!99010)))

(declare-fun c!32869 () Bool)

(assert (=> d!40842 (= c!32869 ((_ is Nil!2806) lt!49352))))

(assert (=> d!40842 (= (drop!133 lt!49352 (+ 0 1)) lt!50473)))

(declare-fun b!164295 () Bool)

(declare-fun e!99011 () Int)

(assert (=> b!164295 (= e!99009 (= (size!2351 lt!50473) e!99011))))

(declare-fun c!32868 () Bool)

(assert (=> b!164295 (= c!32868 (<= (+ 0 1) 0))))

(declare-fun b!164296 () Bool)

(assert (=> b!164296 (= e!99011 e!99008)))

(declare-fun c!32866 () Bool)

(assert (=> b!164296 (= c!32866 (>= (+ 0 1) call!7002))))

(declare-fun b!164297 () Bool)

(assert (=> b!164297 (= e!99010 Nil!2806)))

(declare-fun b!164298 () Bool)

(assert (=> b!164298 (= e!99008 0)))

(declare-fun b!164299 () Bool)

(assert (=> b!164299 (= e!99011 call!7002)))

(declare-fun b!164300 () Bool)

(assert (=> b!164300 (= e!99007 (drop!133 (t!26086 lt!49352) (- (+ 0 1) 1)))))

(assert (= (and d!40842 c!32869) b!164297))

(assert (= (and d!40842 (not c!32869)) b!164292))

(assert (= (and b!164292 c!32867) b!164294))

(assert (= (and b!164292 (not c!32867)) b!164300))

(assert (= (and d!40842 res!74380) b!164295))

(assert (= (and b!164295 c!32868) b!164299))

(assert (= (and b!164295 (not c!32868)) b!164296))

(assert (= (and b!164296 c!32866) b!164298))

(assert (= (and b!164296 (not c!32866)) b!164293))

(assert (= (or b!164299 b!164296 b!164293) bm!6997))

(declare-fun m!156615 () Bool)

(assert (=> bm!6997 m!156615))

(declare-fun m!156617 () Bool)

(assert (=> d!40842 m!156617))

(declare-fun m!156619 () Bool)

(assert (=> d!40842 m!156619))

(declare-fun m!156621 () Bool)

(assert (=> b!164295 m!156621))

(declare-fun m!156623 () Bool)

(assert (=> b!164300 m!156623))

(assert (=> b!162616 d!40842))

(assert (=> b!162616 d!40662))

(declare-fun bs!15705 () Bool)

(declare-fun d!40844 () Bool)

(assert (= bs!15705 (and d!40844 b!162538)))

(declare-fun lambda!4527 () Int)

(assert (=> bs!15705 (not (= lambda!4527 lambda!4456))))

(declare-fun bs!15706 () Bool)

(assert (= bs!15706 (and d!40844 d!40560)))

(assert (=> bs!15706 (= lambda!4527 lambda!4512)))

(declare-fun bs!15707 () Bool)

(assert (= bs!15707 (and d!40844 d!40746)))

(assert (=> bs!15707 (not (= lambda!4527 lambda!4525))))

(declare-fun bs!15708 () Bool)

(assert (= bs!15708 (and d!40844 b!163938)))

(assert (=> bs!15708 (not (= lambda!4527 lambda!4513))))

(declare-fun bs!15709 () Bool)

(assert (= bs!15709 (and d!40844 b!162895)))

(assert (=> bs!15709 (not (= lambda!4527 lambda!4482))))

(declare-fun bs!15710 () Bool)

(assert (= bs!15710 (and d!40844 b!162881)))

(assert (=> bs!15710 (not (= lambda!4527 lambda!4481))))

(declare-fun bs!15711 () Bool)

(assert (= bs!15711 (and d!40844 b!162350)))

(assert (=> bs!15711 (not (= lambda!4527 lambda!4448))))

(declare-fun bs!15712 () Bool)

(assert (= bs!15712 (and d!40844 b!162362)))

(assert (=> bs!15712 (= lambda!4527 lambda!4447)))

(declare-fun bs!15713 () Bool)

(assert (= bs!15713 (and d!40844 d!39988)))

(assert (=> bs!15713 (not (= lambda!4527 lambda!4479))))

(declare-fun bs!15714 () Bool)

(assert (= bs!15714 (and d!40844 b!163386)))

(assert (=> bs!15714 (not (= lambda!4527 lambda!4497))))

(declare-fun bs!15715 () Bool)

(assert (= bs!15715 (and d!40844 b!163521)))

(assert (=> bs!15715 (not (= lambda!4527 lambda!4501))))

(declare-fun bs!15716 () Bool)

(assert (= bs!15716 (and d!40844 d!39888)))

(assert (=> bs!15716 (= lambda!4527 lambda!4464)))

(declare-fun bs!15717 () Bool)

(assert (= bs!15717 (and d!40844 d!40002)))

(assert (=> bs!15717 (= lambda!4527 lambda!4480)))

(declare-fun bs!15718 () Bool)

(assert (= bs!15718 (and d!40844 b!164031)))

(assert (=> bs!15718 (not (= lambda!4527 lambda!4519))))

(declare-fun bs!15719 () Bool)

(assert (= bs!15719 (and d!40844 b!162616)))

(assert (=> bs!15719 (not (= lambda!4527 lambda!4465))))

(declare-fun bs!15720 () Bool)

(declare-fun b!164304 () Bool)

(assert (= bs!15720 (and b!164304 b!162538)))

(declare-fun lambda!4528 () Int)

(assert (=> bs!15720 (= lambda!4528 lambda!4456)))

(declare-fun bs!15721 () Bool)

(assert (= bs!15721 (and b!164304 d!40560)))

(assert (=> bs!15721 (not (= lambda!4528 lambda!4512))))

(declare-fun bs!15722 () Bool)

(assert (= bs!15722 (and b!164304 d!40746)))

(assert (=> bs!15722 (= lambda!4528 lambda!4525)))

(declare-fun bs!15723 () Bool)

(assert (= bs!15723 (and b!164304 b!163938)))

(assert (=> bs!15723 (= lambda!4528 lambda!4513)))

(declare-fun bs!15724 () Bool)

(assert (= bs!15724 (and b!164304 b!162895)))

(assert (=> bs!15724 (= lambda!4528 lambda!4482)))

(declare-fun bs!15725 () Bool)

(assert (= bs!15725 (and b!164304 b!162881)))

(assert (=> bs!15725 (= lambda!4528 lambda!4481)))

(declare-fun bs!15726 () Bool)

(assert (= bs!15726 (and b!164304 b!162350)))

(assert (=> bs!15726 (= lambda!4528 lambda!4448)))

(declare-fun bs!15727 () Bool)

(assert (= bs!15727 (and b!164304 b!162362)))

(assert (=> bs!15727 (not (= lambda!4528 lambda!4447))))

(declare-fun bs!15728 () Bool)

(assert (= bs!15728 (and b!164304 b!163386)))

(assert (=> bs!15728 (= lambda!4528 lambda!4497)))

(declare-fun bs!15729 () Bool)

(assert (= bs!15729 (and b!164304 b!163521)))

(assert (=> bs!15729 (= lambda!4528 lambda!4501)))

(declare-fun bs!15730 () Bool)

(assert (= bs!15730 (and b!164304 d!39888)))

(assert (=> bs!15730 (not (= lambda!4528 lambda!4464))))

(declare-fun bs!15731 () Bool)

(assert (= bs!15731 (and b!164304 d!39988)))

(assert (=> bs!15731 (= lambda!4528 lambda!4479)))

(declare-fun bs!15732 () Bool)

(assert (= bs!15732 (and b!164304 d!40844)))

(assert (=> bs!15732 (not (= lambda!4528 lambda!4527))))

(declare-fun bs!15733 () Bool)

(assert (= bs!15733 (and b!164304 d!40002)))

(assert (=> bs!15733 (not (= lambda!4528 lambda!4480))))

(declare-fun bs!15734 () Bool)

(assert (= bs!15734 (and b!164304 b!164031)))

(assert (=> bs!15734 (= lambda!4528 lambda!4519)))

(declare-fun bs!15735 () Bool)

(assert (= bs!15735 (and b!164304 b!162616)))

(assert (=> bs!15735 (= lambda!4528 lambda!4465)))

(declare-fun b!164314 () Bool)

(declare-fun e!99021 () Bool)

(assert (=> b!164314 (= e!99021 true)))

(declare-fun b!164313 () Bool)

(declare-fun e!99020 () Bool)

(assert (=> b!164313 (= e!99020 e!99021)))

(declare-fun b!164312 () Bool)

(declare-fun e!99019 () Bool)

(assert (=> b!164312 (= e!99019 e!99020)))

(assert (=> b!164304 e!99019))

(assert (= b!164313 b!164314))

(assert (= b!164312 b!164313))

(assert (= (and b!164304 ((_ is Cons!2805) rules!1920)) b!164312))

(assert (=> b!164314 (< (dynLambda!999 order!1425 (toValue!1152 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1000 order!1427 lambda!4528))))

(assert (=> b!164314 (< (dynLambda!1001 order!1429 (toChars!1011 (transformation!497 (h!8202 rules!1920)))) (dynLambda!1000 order!1427 lambda!4528))))

(assert (=> b!164304 true))

(declare-fun bm!6998 () Bool)

(declare-fun call!7006 () BalanceConc!1640)

(declare-fun call!7005 () BalanceConc!1640)

(assert (=> bm!6998 (= call!7006 call!7005)))

(declare-fun b!164301 () Bool)

(declare-fun e!99017 () Bool)

(declare-fun lt!50475 () Option!277)

(declare-fun call!7007 () Token!738)

(assert (=> b!164301 (= e!99017 (not (= (_1!1556 (v!13693 lt!50475)) call!7007)))))

(declare-fun c!32871 () Bool)

(declare-fun bm!6999 () Bool)

(declare-fun call!7003 () Token!738)

(declare-fun c!32872 () Bool)

(assert (=> bm!6999 (= call!7005 (charsOf!152 (ite c!32871 call!7007 (ite c!32872 separatorToken!170 call!7003))))))

(declare-fun b!164302 () Bool)

(declare-fun e!99018 () BalanceConc!1640)

(declare-fun call!7004 () BalanceConc!1640)

(assert (=> b!164302 (= e!99018 call!7004)))

(declare-fun b!164303 () Bool)

(declare-fun e!99013 () BalanceConc!1640)

(assert (=> b!164303 (= e!99013 (BalanceConc!1641 Empty!816))))

(assert (=> b!164304 (= e!99013 e!99018)))

(declare-fun lt!50486 () List!2816)

(assert (=> b!164304 (= lt!50486 (list!1011 (seqFromList!372 (t!26086 tokens!465))))))

(declare-fun lt!50487 () Unit!2310)

(assert (=> b!164304 (= lt!50487 (lemmaDropApply!120 lt!50486 (+ 0 1)))))

(assert (=> b!164304 (= (head!594 (drop!133 lt!50486 (+ 0 1))) (apply!389 lt!50486 (+ 0 1)))))

(declare-fun lt!50474 () Unit!2310)

(assert (=> b!164304 (= lt!50474 lt!50487)))

(declare-fun lt!50479 () List!2816)

(assert (=> b!164304 (= lt!50479 (list!1011 (seqFromList!372 (t!26086 tokens!465))))))

(declare-fun lt!50480 () Unit!2310)

(assert (=> b!164304 (= lt!50480 (lemmaDropTail!112 lt!50479 (+ 0 1)))))

(assert (=> b!164304 (= (tail!334 (drop!133 lt!50479 (+ 0 1))) (drop!133 lt!50479 (+ 0 1 1)))))

(declare-fun lt!50485 () Unit!2310)

(assert (=> b!164304 (= lt!50485 lt!50480)))

(declare-fun lt!50483 () Unit!2310)

(assert (=> b!164304 (= lt!50483 (forallContained!64 (list!1011 (seqFromList!372 (t!26086 tokens!465))) lambda!4528 (apply!390 (seqFromList!372 (t!26086 tokens!465)) (+ 0 1))))))

(declare-fun lt!50476 () BalanceConc!1640)

(assert (=> b!164304 (= lt!50476 (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 (seqFromList!372 (t!26086 tokens!465)) separatorToken!170 (+ 0 1 1)))))

(assert (=> b!164304 (= lt!50475 (maxPrefixZipperSequence!80 thiss!17480 rules!1920 (++!628 (charsOf!152 (apply!390 (seqFromList!372 (t!26086 tokens!465)) (+ 0 1))) lt!50476)))))

(declare-fun res!74382 () Bool)

(assert (=> b!164304 (= res!74382 ((_ is Some!276) lt!50475))))

(declare-fun e!99015 () Bool)

(assert (=> b!164304 (=> (not res!74382) (not e!99015))))

(assert (=> b!164304 (= c!32871 e!99015)))

(declare-fun b!164305 () Bool)

(assert (=> b!164305 (= c!32872 e!99017)))

(declare-fun res!74381 () Bool)

(assert (=> b!164305 (=> (not res!74381) (not e!99017))))

(assert (=> b!164305 (= res!74381 ((_ is Some!276) lt!50475))))

(declare-fun e!99012 () BalanceConc!1640)

(assert (=> b!164305 (= e!99018 e!99012)))

(declare-fun b!164306 () Bool)

(assert (=> b!164306 (= e!99015 (= (_1!1556 (v!13693 lt!50475)) (apply!390 (seqFromList!372 (t!26086 tokens!465)) (+ 0 1))))))

(declare-fun b!164307 () Bool)

(declare-fun e!99014 () BalanceConc!1640)

(assert (=> b!164307 (= e!99014 (charsOf!152 call!7003))))

(declare-fun b!164308 () Bool)

(assert (=> b!164308 (= e!99012 (++!628 call!7004 lt!50476))))

(declare-fun b!164309 () Bool)

(assert (=> b!164309 (= e!99012 (BalanceConc!1641 Empty!816))))

(assert (=> b!164309 (= (print!114 thiss!17480 (singletonSeq!49 call!7003)) (printTailRec!77 thiss!17480 (singletonSeq!49 call!7003) 0 (BalanceConc!1641 Empty!816)))))

(declare-fun lt!50478 () Unit!2310)

(declare-fun Unit!2364 () Unit!2310)

(assert (=> b!164309 (= lt!50478 Unit!2364)))

(declare-fun lt!50484 () Unit!2310)

(assert (=> b!164309 (= lt!50484 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!28 thiss!17480 rules!1920 (list!1007 call!7006) (list!1007 lt!50476)))))

(assert (=> b!164309 false))

(declare-fun lt!50481 () Unit!2310)

(declare-fun Unit!2365 () Unit!2310)

(assert (=> b!164309 (= lt!50481 Unit!2365)))

(declare-fun b!164310 () Bool)

(declare-fun e!99016 () Bool)

(assert (=> b!164310 (= e!99016 (<= (+ 0 1) (size!2348 (seqFromList!372 (t!26086 tokens!465)))))))

(declare-fun b!164311 () Bool)

(assert (=> b!164311 (= e!99014 call!7005)))

(declare-fun bm!7000 () Bool)

(assert (=> bm!7000 (= call!7003 call!7007)))

(declare-fun lt!50477 () BalanceConc!1640)

(assert (=> d!40844 (= (list!1007 lt!50477) (printWithSeparatorTokenWhenNeededList!76 thiss!17480 rules!1920 (dropList!80 (seqFromList!372 (t!26086 tokens!465)) (+ 0 1)) separatorToken!170))))

(assert (=> d!40844 (= lt!50477 e!99013)))

(declare-fun c!32873 () Bool)

(assert (=> d!40844 (= c!32873 (>= (+ 0 1) (size!2348 (seqFromList!372 (t!26086 tokens!465)))))))

(declare-fun lt!50482 () Unit!2310)

(assert (=> d!40844 (= lt!50482 (lemmaContentSubsetPreservesForall!24 (list!1011 (seqFromList!372 (t!26086 tokens!465))) (dropList!80 (seqFromList!372 (t!26086 tokens!465)) (+ 0 1)) lambda!4527))))

(assert (=> d!40844 e!99016))

(declare-fun res!74383 () Bool)

(assert (=> d!40844 (=> (not res!74383) (not e!99016))))

(assert (=> d!40844 (= res!74383 (>= (+ 0 1) 0))))

(assert (=> d!40844 (= (printWithSeparatorTokenWhenNeededRec!66 thiss!17480 rules!1920 (seqFromList!372 (t!26086 tokens!465)) separatorToken!170 (+ 0 1)) lt!50477)))

(declare-fun bm!7001 () Bool)

(assert (=> bm!7001 (= call!7007 (apply!390 (seqFromList!372 (t!26086 tokens!465)) (+ 0 1)))))

(declare-fun bm!7002 () Bool)

(declare-fun c!32870 () Bool)

(assert (=> bm!7002 (= c!32870 c!32871)))

(assert (=> bm!7002 (= call!7004 (++!628 e!99014 (ite c!32871 lt!50476 call!7006)))))

(assert (= (and d!40844 res!74383) b!164310))

(assert (= (and d!40844 c!32873) b!164303))

(assert (= (and d!40844 (not c!32873)) b!164304))

(assert (= (and b!164304 res!74382) b!164306))

(assert (= (and b!164304 c!32871) b!164302))

(assert (= (and b!164304 (not c!32871)) b!164305))

(assert (= (and b!164305 res!74381) b!164301))

(assert (= (and b!164305 c!32872) b!164308))

(assert (= (and b!164305 (not c!32872)) b!164309))

(assert (= (or b!164308 b!164309) bm!7000))

(assert (= (or b!164308 b!164309) bm!6998))

(assert (= (or b!164302 bm!7000 b!164301) bm!7001))

(assert (= (or b!164302 bm!6998) bm!6999))

(assert (= (or b!164302 b!164308) bm!7002))

(assert (= (and bm!7002 c!32870) b!164311))

(assert (= (and bm!7002 (not c!32870)) b!164307))

(declare-fun m!156625 () Bool)

(assert (=> b!164304 m!156625))

(declare-fun m!156627 () Bool)

(assert (=> b!164304 m!156627))

(assert (=> b!164304 m!152265))

(assert (=> b!164304 m!152613))

(declare-fun m!156629 () Bool)

(assert (=> b!164304 m!156629))

(declare-fun m!156631 () Bool)

(assert (=> b!164304 m!156631))

(declare-fun m!156633 () Bool)

(assert (=> b!164304 m!156633))

(declare-fun m!156635 () Bool)

(assert (=> b!164304 m!156635))

(declare-fun m!156637 () Bool)

(assert (=> b!164304 m!156637))

(declare-fun m!156639 () Bool)

(assert (=> b!164304 m!156639))

(assert (=> b!164304 m!152613))

(declare-fun m!156641 () Bool)

(assert (=> b!164304 m!156641))

(declare-fun m!156643 () Bool)

(assert (=> b!164304 m!156643))

(assert (=> b!164304 m!152265))

(assert (=> b!164304 m!156641))

(assert (=> b!164304 m!156625))

(declare-fun m!156645 () Bool)

(assert (=> b!164304 m!156645))

(declare-fun m!156647 () Bool)

(assert (=> b!164304 m!156647))

(assert (=> b!164304 m!156629))

(assert (=> b!164304 m!156635))

(declare-fun m!156649 () Bool)

(assert (=> b!164304 m!156649))

(assert (=> b!164304 m!156641))

(assert (=> b!164304 m!156633))

(assert (=> b!164304 m!152265))

(declare-fun m!156651 () Bool)

(assert (=> b!164304 m!156651))

(declare-fun m!156653 () Bool)

(assert (=> b!164307 m!156653))

(declare-fun m!156655 () Bool)

(assert (=> bm!7002 m!156655))

(assert (=> b!164306 m!152265))

(assert (=> b!164306 m!156641))

(assert (=> d!40844 m!152265))

(declare-fun m!156657 () Bool)

(assert (=> d!40844 m!156657))

(assert (=> d!40844 m!152265))

(assert (=> d!40844 m!152645))

(declare-fun m!156659 () Bool)

(assert (=> d!40844 m!156659))

(assert (=> d!40844 m!152613))

(assert (=> d!40844 m!156657))

(declare-fun m!156661 () Bool)

(assert (=> d!40844 m!156661))

(assert (=> d!40844 m!156657))

(declare-fun m!156663 () Bool)

(assert (=> d!40844 m!156663))

(assert (=> d!40844 m!152265))

(assert (=> d!40844 m!152613))

(declare-fun m!156665 () Bool)

(assert (=> b!164309 m!156665))

(declare-fun m!156667 () Bool)

(assert (=> b!164309 m!156667))

(declare-fun m!156669 () Bool)

(assert (=> b!164309 m!156669))

(assert (=> b!164309 m!156665))

(declare-fun m!156671 () Bool)

(assert (=> b!164309 m!156671))

(declare-fun m!156673 () Bool)

(assert (=> b!164309 m!156673))

(assert (=> b!164309 m!156671))

(assert (=> b!164309 m!156667))

(assert (=> b!164309 m!156671))

(declare-fun m!156675 () Bool)

(assert (=> b!164309 m!156675))

(assert (=> b!164310 m!152265))

(assert (=> b!164310 m!152645))

(declare-fun m!156677 () Bool)

(assert (=> b!164308 m!156677))

(assert (=> bm!7001 m!152265))

(assert (=> bm!7001 m!156641))

(declare-fun m!156679 () Bool)

(assert (=> bm!6999 m!156679))

(assert (=> b!162616 d!40844))

(declare-fun b!164315 () Bool)

(declare-fun e!99025 () List!2816)

(declare-fun e!99022 () List!2816)

(assert (=> b!164315 (= e!99025 e!99022)))

(declare-fun c!32875 () Bool)

(assert (=> b!164315 (= c!32875 (<= 0 0))))

(declare-fun bm!7003 () Bool)

(declare-fun call!7008 () Int)

(assert (=> bm!7003 (= call!7008 (size!2351 lt!49352))))

(declare-fun b!164316 () Bool)

(declare-fun e!99023 () Int)

(assert (=> b!164316 (= e!99023 (- call!7008 0))))

(declare-fun b!164317 () Bool)

(assert (=> b!164317 (= e!99022 lt!49352)))

(declare-fun d!40846 () Bool)

(declare-fun e!99024 () Bool)

(assert (=> d!40846 e!99024))

(declare-fun res!74384 () Bool)

(assert (=> d!40846 (=> (not res!74384) (not e!99024))))

(declare-fun lt!50488 () List!2816)

(assert (=> d!40846 (= res!74384 (= ((_ map implies) (content!389 lt!50488) (content!389 lt!49352)) ((as const (InoxSet Token!738)) true)))))

(assert (=> d!40846 (= lt!50488 e!99025)))

(declare-fun c!32877 () Bool)

(assert (=> d!40846 (= c!32877 ((_ is Nil!2806) lt!49352))))

(assert (=> d!40846 (= (drop!133 lt!49352 0) lt!50488)))

(declare-fun b!164318 () Bool)

(declare-fun e!99026 () Int)

(assert (=> b!164318 (= e!99024 (= (size!2351 lt!50488) e!99026))))

(declare-fun c!32876 () Bool)

(assert (=> b!164318 (= c!32876 (<= 0 0))))

(declare-fun b!164319 () Bool)

(assert (=> b!164319 (= e!99026 e!99023)))

(declare-fun c!32874 () Bool)

(assert (=> b!164319 (= c!32874 (>= 0 call!7008))))

(declare-fun b!164320 () Bool)

(assert (=> b!164320 (= e!99025 Nil!2806)))

(declare-fun b!164321 () Bool)

(assert (=> b!164321 (= e!99023 0)))

(declare-fun b!164322 () Bool)

(assert (=> b!164322 (= e!99026 call!7008)))

(declare-fun b!164323 () Bool)

(assert (=> b!164323 (= e!99022 (drop!133 (t!26086 lt!49352) (- 0 1)))))

(assert (= (and d!40846 c!32877) b!164320))

(assert (= (and d!40846 (not c!32877)) b!164315))

(assert (= (and b!164315 c!32875) b!164317))

(assert (= (and b!164315 (not c!32875)) b!164323))

(assert (= (and d!40846 res!74384) b!164318))

(assert (= (and b!164318 c!32876) b!164322))

(assert (= (and b!164318 (not c!32876)) b!164319))

(assert (= (and b!164319 c!32874) b!164321))

(assert (= (and b!164319 (not c!32874)) b!164316))

(assert (= (or b!164322 b!164319 b!164316) bm!7003))

(assert (=> bm!7003 m!156615))

(declare-fun m!156681 () Bool)

(assert (=> d!40846 m!156681))

(assert (=> d!40846 m!156619))

(declare-fun m!156683 () Bool)

(assert (=> b!164318 m!156683))

(declare-fun m!156685 () Bool)

(assert (=> b!164323 m!156685))

(assert (=> b!162616 d!40846))

(declare-fun b!164326 () Bool)

(declare-fun res!74385 () Bool)

(declare-fun e!99027 () Bool)

(assert (=> b!164326 (=> (not res!74385) (not e!99027))))

(assert (=> b!164326 (= res!74385 (>= (height!86 (++!630 (c!32407 (charsOf!152 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0))) (c!32407 lt!49349))) (max!0 (height!86 (c!32407 (charsOf!152 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)))) (height!86 (c!32407 lt!49349)))))))

(declare-fun b!164324 () Bool)

(declare-fun res!74386 () Bool)

(assert (=> b!164324 (=> (not res!74386) (not e!99027))))

(assert (=> b!164324 (= res!74386 (isBalanced!228 (++!630 (c!32407 (charsOf!152 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0))) (c!32407 lt!49349))))))

(declare-fun b!164327 () Bool)

(declare-fun lt!50489 () BalanceConc!1640)

(assert (=> b!164327 (= e!99027 (= (list!1007 lt!50489) (++!626 (list!1007 (charsOf!152 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0))) (list!1007 lt!49349))))))

(declare-fun b!164325 () Bool)

(declare-fun res!74388 () Bool)

(assert (=> b!164325 (=> (not res!74388) (not e!99027))))

(assert (=> b!164325 (= res!74388 (<= (height!86 (++!630 (c!32407 (charsOf!152 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0))) (c!32407 lt!49349))) (+ (max!0 (height!86 (c!32407 (charsOf!152 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)))) (height!86 (c!32407 lt!49349))) 1)))))

(declare-fun d!40848 () Bool)

(assert (=> d!40848 e!99027))

(declare-fun res!74387 () Bool)

(assert (=> d!40848 (=> (not res!74387) (not e!99027))))

(assert (=> d!40848 (= res!74387 (appendAssocInst!27 (c!32407 (charsOf!152 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0))) (c!32407 lt!49349)))))

(assert (=> d!40848 (= lt!50489 (BalanceConc!1641 (++!630 (c!32407 (charsOf!152 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0))) (c!32407 lt!49349))))))

(assert (=> d!40848 (= (++!628 (charsOf!152 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)) lt!49349) lt!50489)))

(assert (= (and d!40848 res!74387) b!164324))

(assert (= (and b!164324 res!74386) b!164325))

(assert (= (and b!164325 res!74388) b!164326))

(assert (= (and b!164326 res!74385) b!164327))

(declare-fun m!156687 () Bool)

(assert (=> b!164325 m!156687))

(assert (=> b!164325 m!156533))

(declare-fun m!156689 () Bool)

(assert (=> b!164325 m!156689))

(assert (=> b!164325 m!156687))

(declare-fun m!156691 () Bool)

(assert (=> b!164325 m!156691))

(assert (=> b!164325 m!156533))

(assert (=> b!164325 m!156691))

(declare-fun m!156693 () Bool)

(assert (=> b!164325 m!156693))

(assert (=> b!164324 m!156691))

(assert (=> b!164324 m!156691))

(declare-fun m!156695 () Bool)

(assert (=> b!164324 m!156695))

(declare-fun m!156697 () Bool)

(assert (=> b!164327 m!156697))

(assert (=> b!164327 m!152619))

(declare-fun m!156699 () Bool)

(assert (=> b!164327 m!156699))

(assert (=> b!164327 m!152655))

(assert (=> b!164327 m!156699))

(assert (=> b!164327 m!152655))

(declare-fun m!156701 () Bool)

(assert (=> b!164327 m!156701))

(assert (=> b!164326 m!156687))

(assert (=> b!164326 m!156533))

(assert (=> b!164326 m!156689))

(assert (=> b!164326 m!156687))

(assert (=> b!164326 m!156691))

(assert (=> b!164326 m!156533))

(assert (=> b!164326 m!156691))

(assert (=> b!164326 m!156693))

(declare-fun m!156703 () Bool)

(assert (=> d!40848 m!156703))

(assert (=> d!40848 m!156691))

(assert (=> b!162616 d!40848))

(declare-fun d!40850 () Bool)

(assert (=> d!40850 (= (head!594 (drop!133 lt!49359 0)) (h!8203 (drop!133 lt!49359 0)))))

(assert (=> b!162616 d!40850))

(declare-fun d!40852 () Bool)

(assert (=> d!40852 (= (tail!334 (drop!133 lt!49352 0)) (t!26086 (drop!133 lt!49352 0)))))

(assert (=> b!162616 d!40852))

(declare-fun d!40854 () Bool)

(declare-fun lt!50490 () Token!738)

(assert (=> d!40854 (contains!446 lt!49359 lt!50490)))

(declare-fun e!99029 () Token!738)

(assert (=> d!40854 (= lt!50490 e!99029)))

(declare-fun c!32878 () Bool)

(assert (=> d!40854 (= c!32878 (= 0 0))))

(declare-fun e!99028 () Bool)

(assert (=> d!40854 e!99028))

(declare-fun res!74389 () Bool)

(assert (=> d!40854 (=> (not res!74389) (not e!99028))))

(assert (=> d!40854 (= res!74389 (<= 0 0))))

(assert (=> d!40854 (= (apply!389 lt!49359 0) lt!50490)))

(declare-fun b!164328 () Bool)

(assert (=> b!164328 (= e!99028 (< 0 (size!2351 lt!49359)))))

(declare-fun b!164329 () Bool)

(assert (=> b!164329 (= e!99029 (head!594 lt!49359))))

(declare-fun b!164330 () Bool)

(assert (=> b!164330 (= e!99029 (apply!389 (tail!334 lt!49359) (- 0 1)))))

(assert (= (and d!40854 res!74389) b!164328))

(assert (= (and d!40854 c!32878) b!164329))

(assert (= (and d!40854 (not c!32878)) b!164330))

(declare-fun m!156705 () Bool)

(assert (=> d!40854 m!156705))

(declare-fun m!156707 () Bool)

(assert (=> b!164328 m!156707))

(declare-fun m!156709 () Bool)

(assert (=> b!164329 m!156709))

(declare-fun m!156711 () Bool)

(assert (=> b!164330 m!156711))

(assert (=> b!164330 m!156711))

(declare-fun m!156713 () Bool)

(assert (=> b!164330 m!156713))

(assert (=> b!162616 d!40854))

(declare-fun b!164331 () Bool)

(declare-fun e!99033 () List!2816)

(declare-fun e!99030 () List!2816)

(assert (=> b!164331 (= e!99033 e!99030)))

(declare-fun c!32880 () Bool)

(assert (=> b!164331 (= c!32880 (<= 0 0))))

(declare-fun bm!7004 () Bool)

(declare-fun call!7009 () Int)

(assert (=> bm!7004 (= call!7009 (size!2351 lt!49359))))

(declare-fun b!164332 () Bool)

(declare-fun e!99031 () Int)

(assert (=> b!164332 (= e!99031 (- call!7009 0))))

(declare-fun b!164333 () Bool)

(assert (=> b!164333 (= e!99030 lt!49359)))

(declare-fun d!40856 () Bool)

(declare-fun e!99032 () Bool)

(assert (=> d!40856 e!99032))

(declare-fun res!74390 () Bool)

(assert (=> d!40856 (=> (not res!74390) (not e!99032))))

(declare-fun lt!50491 () List!2816)

(assert (=> d!40856 (= res!74390 (= ((_ map implies) (content!389 lt!50491) (content!389 lt!49359)) ((as const (InoxSet Token!738)) true)))))

(assert (=> d!40856 (= lt!50491 e!99033)))

(declare-fun c!32882 () Bool)

(assert (=> d!40856 (= c!32882 ((_ is Nil!2806) lt!49359))))

(assert (=> d!40856 (= (drop!133 lt!49359 0) lt!50491)))

(declare-fun b!164334 () Bool)

(declare-fun e!99034 () Int)

(assert (=> b!164334 (= e!99032 (= (size!2351 lt!50491) e!99034))))

(declare-fun c!32881 () Bool)

(assert (=> b!164334 (= c!32881 (<= 0 0))))

(declare-fun b!164335 () Bool)

(assert (=> b!164335 (= e!99034 e!99031)))

(declare-fun c!32879 () Bool)

(assert (=> b!164335 (= c!32879 (>= 0 call!7009))))

(declare-fun b!164336 () Bool)

(assert (=> b!164336 (= e!99033 Nil!2806)))

(declare-fun b!164337 () Bool)

(assert (=> b!164337 (= e!99031 0)))

(declare-fun b!164338 () Bool)

(assert (=> b!164338 (= e!99034 call!7009)))

(declare-fun b!164339 () Bool)

(assert (=> b!164339 (= e!99030 (drop!133 (t!26086 lt!49359) (- 0 1)))))

(assert (= (and d!40856 c!32882) b!164336))

(assert (= (and d!40856 (not c!32882)) b!164331))

(assert (= (and b!164331 c!32880) b!164333))

(assert (= (and b!164331 (not c!32880)) b!164339))

(assert (= (and d!40856 res!74390) b!164334))

(assert (= (and b!164334 c!32881) b!164338))

(assert (= (and b!164334 (not c!32881)) b!164335))

(assert (= (and b!164335 c!32879) b!164337))

(assert (= (and b!164335 (not c!32879)) b!164332))

(assert (= (or b!164338 b!164335 b!164332) bm!7004))

(assert (=> bm!7004 m!156707))

(declare-fun m!156715 () Bool)

(assert (=> d!40856 m!156715))

(declare-fun m!156717 () Bool)

(assert (=> d!40856 m!156717))

(declare-fun m!156719 () Bool)

(assert (=> b!164334 m!156719))

(declare-fun m!156721 () Bool)

(assert (=> b!164339 m!156721))

(assert (=> b!162616 d!40856))

(declare-fun d!40858 () Bool)

(assert (=> d!40858 (= (tail!334 (drop!133 lt!49352 0)) (drop!133 lt!49352 (+ 0 1)))))

(declare-fun lt!50492 () Unit!2310)

(assert (=> d!40858 (= lt!50492 (choose!1801 lt!49352 0))))

(declare-fun e!99035 () Bool)

(assert (=> d!40858 e!99035))

(declare-fun res!74391 () Bool)

(assert (=> d!40858 (=> (not res!74391) (not e!99035))))

(assert (=> d!40858 (= res!74391 (>= 0 0))))

(assert (=> d!40858 (= (lemmaDropTail!112 lt!49352 0) lt!50492)))

(declare-fun b!164340 () Bool)

(assert (=> b!164340 (= e!99035 (< 0 (size!2351 lt!49352)))))

(assert (= (and d!40858 res!74391) b!164340))

(assert (=> d!40858 m!152615))

(assert (=> d!40858 m!152615))

(assert (=> d!40858 m!152617))

(assert (=> d!40858 m!152625))

(declare-fun m!156723 () Bool)

(assert (=> d!40858 m!156723))

(assert (=> b!164340 m!156615))

(assert (=> b!162616 d!40858))

(assert (=> b!162616 d!40400))

(declare-fun d!40860 () Bool)

(declare-fun lt!50493 () BalanceConc!1640)

(assert (=> d!40860 (= (list!1007 lt!50493) (originalCharacters!540 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)))))

(assert (=> d!40860 (= lt!50493 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)))) (value!18480 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0))))))

(assert (=> d!40860 (= (charsOf!152 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)) lt!50493)))

(declare-fun b_lambda!3525 () Bool)

(assert (=> (not b_lambda!3525) (not d!40860)))

(declare-fun t!26379 () Bool)

(declare-fun tb!6219 () Bool)

(assert (=> (and b!162952 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 rules!1920)))) (toChars!1011 (transformation!497 (rule!1004 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0))))) t!26379) tb!6219))

(declare-fun b!164341 () Bool)

(declare-fun e!99036 () Bool)

(declare-fun tp!82534 () Bool)

(assert (=> b!164341 (= e!99036 (and (inv!3624 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)))) (value!18480 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0))))) tp!82534))))

(declare-fun result!8836 () Bool)

(assert (=> tb!6219 (= result!8836 (and (inv!3625 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)))) (value!18480 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)))) e!99036))))

(assert (= tb!6219 b!164341))

(declare-fun m!156725 () Bool)

(assert (=> b!164341 m!156725))

(declare-fun m!156727 () Bool)

(assert (=> tb!6219 m!156727))

(assert (=> d!40860 t!26379))

(declare-fun b_and!10443 () Bool)

(assert (= b_and!10407 (and (=> t!26379 result!8836) b_and!10443)))

(declare-fun t!26381 () Bool)

(declare-fun tb!6221 () Bool)

(assert (=> (and b!162363 (= (toChars!1011 (transformation!497 (h!8202 rules!1920))) (toChars!1011 (transformation!497 (rule!1004 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0))))) t!26381) tb!6221))

(declare-fun result!8838 () Bool)

(assert (= result!8838 result!8836))

(assert (=> d!40860 t!26381))

(declare-fun b_and!10445 () Bool)

(assert (= b_and!10405 (and (=> t!26381 result!8838) b_and!10445)))

(declare-fun t!26383 () Bool)

(declare-fun tb!6223 () Bool)

(assert (=> (and b!162933 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))) (toChars!1011 (transformation!497 (rule!1004 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0))))) t!26383) tb!6223))

(declare-fun result!8840 () Bool)

(assert (= result!8840 result!8836))

(assert (=> d!40860 t!26383))

(declare-fun b_and!10447 () Bool)

(assert (= b_and!10409 (and (=> t!26383 result!8840) b_and!10447)))

(declare-fun t!26385 () Bool)

(declare-fun tb!6225 () Bool)

(assert (=> (and b!162366 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (toChars!1011 (transformation!497 (rule!1004 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0))))) t!26385) tb!6225))

(declare-fun result!8842 () Bool)

(assert (= result!8842 result!8836))

(assert (=> d!40860 t!26385))

(declare-fun b_and!10449 () Bool)

(assert (= b_and!10411 (and (=> t!26385 result!8842) b_and!10449)))

(declare-fun t!26387 () Bool)

(declare-fun tb!6227 () Bool)

(assert (=> (and b!162354 (= (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (toChars!1011 (transformation!497 (rule!1004 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0))))) t!26387) tb!6227))

(declare-fun result!8844 () Bool)

(assert (= result!8844 result!8836))

(assert (=> d!40860 t!26387))

(declare-fun b_and!10451 () Bool)

(assert (= b_and!10413 (and (=> t!26387 result!8844) b_and!10451)))

(declare-fun m!156729 () Bool)

(assert (=> d!40860 m!156729))

(declare-fun m!156731 () Bool)

(assert (=> d!40860 m!156731))

(assert (=> b!162616 d!40860))

(declare-fun call!7010 () Option!277)

(declare-fun bm!7005 () Bool)

(assert (=> bm!7005 (= call!7010 (maxPrefixOneRuleZipperSequence!34 thiss!17480 (h!8202 rules!1920) (++!628 (charsOf!152 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)) lt!49349)))))

(declare-fun b!164342 () Bool)

(declare-fun e!99037 () Bool)

(declare-fun lt!50497 () Option!277)

(assert (=> b!164342 (= e!99037 (= (list!1007 (_2!1556 (get!764 lt!50497))) (_2!1555 (get!761 (maxPrefix!121 thiss!17480 rules!1920 (list!1007 (++!628 (charsOf!152 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)) lt!49349)))))))))

(declare-fun b!164343 () Bool)

(declare-fun e!99042 () Option!277)

(declare-fun lt!50498 () Option!277)

(declare-fun lt!50496 () Option!277)

(assert (=> b!164343 (= e!99042 (ite (and ((_ is None!276) lt!50498) ((_ is None!276) lt!50496)) None!276 (ite ((_ is None!276) lt!50496) lt!50498 (ite ((_ is None!276) lt!50498) lt!50496 (ite (>= (size!2343 (_1!1556 (v!13693 lt!50498))) (size!2343 (_1!1556 (v!13693 lt!50496)))) lt!50498 lt!50496)))))))

(assert (=> b!164343 (= lt!50498 call!7010)))

(assert (=> b!164343 (= lt!50496 (maxPrefixZipperSequence!80 thiss!17480 (t!26085 rules!1920) (++!628 (charsOf!152 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)) lt!49349)))))

(declare-fun b!164344 () Bool)

(declare-fun e!99039 () Bool)

(assert (=> b!164344 (= e!99039 (= (list!1007 (_2!1556 (get!764 lt!50497))) (_2!1555 (get!761 (maxPrefixZipper!33 thiss!17480 rules!1920 (list!1007 (++!628 (charsOf!152 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)) lt!49349)))))))))

(declare-fun b!164345 () Bool)

(assert (=> b!164345 (= e!99042 call!7010)))

(declare-fun b!164346 () Bool)

(declare-fun e!99038 () Bool)

(declare-fun e!99041 () Bool)

(assert (=> b!164346 (= e!99038 e!99041)))

(declare-fun res!74392 () Bool)

(assert (=> b!164346 (=> res!74392 e!99041)))

(assert (=> b!164346 (= res!74392 (not (isDefined!132 lt!50497)))))

(declare-fun b!164347 () Bool)

(declare-fun res!74396 () Bool)

(assert (=> b!164347 (=> (not res!74396) (not e!99038))))

(declare-fun e!99040 () Bool)

(assert (=> b!164347 (= res!74396 e!99040)))

(declare-fun res!74394 () Bool)

(assert (=> b!164347 (=> res!74394 e!99040)))

(assert (=> b!164347 (= res!74394 (not (isDefined!132 lt!50497)))))

(declare-fun d!40862 () Bool)

(assert (=> d!40862 e!99038))

(declare-fun res!74395 () Bool)

(assert (=> d!40862 (=> (not res!74395) (not e!99038))))

(assert (=> d!40862 (= res!74395 (= (isDefined!132 lt!50497) (isDefined!129 (maxPrefixZipper!33 thiss!17480 rules!1920 (list!1007 (++!628 (charsOf!152 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)) lt!49349))))))))

(assert (=> d!40862 (= lt!50497 e!99042)))

(declare-fun c!32883 () Bool)

(assert (=> d!40862 (= c!32883 (and ((_ is Cons!2805) rules!1920) ((_ is Nil!2805) (t!26085 rules!1920))))))

(declare-fun lt!50494 () Unit!2310)

(declare-fun lt!50500 () Unit!2310)

(assert (=> d!40862 (= lt!50494 lt!50500)))

(declare-fun lt!50495 () List!2814)

(declare-fun lt!50499 () List!2814)

(assert (=> d!40862 (isPrefix!221 lt!50495 lt!50499)))

(assert (=> d!40862 (= lt!50500 (lemmaIsPrefixRefl!129 lt!50495 lt!50499))))

(assert (=> d!40862 (= lt!50499 (list!1007 (++!628 (charsOf!152 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)) lt!49349)))))

(assert (=> d!40862 (= lt!50495 (list!1007 (++!628 (charsOf!152 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)) lt!49349)))))

(assert (=> d!40862 (rulesValidInductive!106 thiss!17480 rules!1920)))

(assert (=> d!40862 (= (maxPrefixZipperSequence!80 thiss!17480 rules!1920 (++!628 (charsOf!152 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)) lt!49349)) lt!50497)))

(declare-fun b!164348 () Bool)

(assert (=> b!164348 (= e!99041 e!99037)))

(declare-fun res!74397 () Bool)

(assert (=> b!164348 (=> (not res!74397) (not e!99037))))

(assert (=> b!164348 (= res!74397 (= (_1!1556 (get!764 lt!50497)) (_1!1555 (get!761 (maxPrefix!121 thiss!17480 rules!1920 (list!1007 (++!628 (charsOf!152 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)) lt!49349)))))))))

(declare-fun b!164349 () Bool)

(assert (=> b!164349 (= e!99040 e!99039)))

(declare-fun res!74393 () Bool)

(assert (=> b!164349 (=> (not res!74393) (not e!99039))))

(assert (=> b!164349 (= res!74393 (= (_1!1556 (get!764 lt!50497)) (_1!1555 (get!761 (maxPrefixZipper!33 thiss!17480 rules!1920 (list!1007 (++!628 (charsOf!152 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)) lt!49349)))))))))

(assert (= (and d!40862 c!32883) b!164345))

(assert (= (and d!40862 (not c!32883)) b!164343))

(assert (= (or b!164345 b!164343) bm!7005))

(assert (= (and d!40862 res!74395) b!164347))

(assert (= (and b!164347 (not res!74394)) b!164349))

(assert (= (and b!164349 res!74393) b!164344))

(assert (= (and b!164347 res!74396) b!164346))

(assert (= (and b!164346 (not res!74392)) b!164348))

(assert (= (and b!164348 res!74397) b!164342))

(assert (=> b!164343 m!152621))

(declare-fun m!156733 () Bool)

(assert (=> b!164343 m!156733))

(declare-fun m!156735 () Bool)

(assert (=> b!164342 m!156735))

(declare-fun m!156737 () Bool)

(assert (=> b!164342 m!156737))

(declare-fun m!156739 () Bool)

(assert (=> b!164342 m!156739))

(assert (=> b!164342 m!152621))

(assert (=> b!164342 m!156737))

(assert (=> b!164342 m!156739))

(declare-fun m!156741 () Bool)

(assert (=> b!164342 m!156741))

(declare-fun m!156743 () Bool)

(assert (=> b!164342 m!156743))

(assert (=> d!40862 m!152621))

(assert (=> d!40862 m!156737))

(declare-fun m!156745 () Bool)

(assert (=> d!40862 m!156745))

(declare-fun m!156747 () Bool)

(assert (=> d!40862 m!156747))

(declare-fun m!156749 () Bool)

(assert (=> d!40862 m!156749))

(assert (=> d!40862 m!153523))

(declare-fun m!156751 () Bool)

(assert (=> d!40862 m!156751))

(declare-fun m!156753 () Bool)

(assert (=> d!40862 m!156753))

(assert (=> d!40862 m!156737))

(assert (=> d!40862 m!156745))

(assert (=> b!164346 m!156751))

(assert (=> b!164349 m!156735))

(assert (=> b!164349 m!152621))

(assert (=> b!164349 m!156737))

(assert (=> b!164349 m!156737))

(assert (=> b!164349 m!156745))

(assert (=> b!164349 m!156745))

(declare-fun m!156755 () Bool)

(assert (=> b!164349 m!156755))

(assert (=> b!164344 m!156735))

(assert (=> b!164344 m!156743))

(assert (=> b!164344 m!156737))

(assert (=> b!164344 m!156745))

(assert (=> b!164344 m!156745))

(assert (=> b!164344 m!156755))

(assert (=> b!164344 m!152621))

(assert (=> b!164344 m!156737))

(assert (=> b!164347 m!156751))

(assert (=> bm!7005 m!152621))

(declare-fun m!156757 () Bool)

(assert (=> bm!7005 m!156757))

(assert (=> b!164348 m!156735))

(assert (=> b!164348 m!152621))

(assert (=> b!164348 m!156737))

(assert (=> b!164348 m!156737))

(assert (=> b!164348 m!156739))

(assert (=> b!164348 m!156739))

(assert (=> b!164348 m!156741))

(assert (=> b!162616 d!40862))

(declare-fun d!40864 () Bool)

(assert (=> d!40864 (= (head!594 (drop!133 lt!49359 0)) (apply!389 lt!49359 0))))

(declare-fun lt!50501 () Unit!2310)

(assert (=> d!40864 (= lt!50501 (choose!1802 lt!49359 0))))

(declare-fun e!99043 () Bool)

(assert (=> d!40864 e!99043))

(declare-fun res!74398 () Bool)

(assert (=> d!40864 (=> (not res!74398) (not e!99043))))

(assert (=> d!40864 (= res!74398 (>= 0 0))))

(assert (=> d!40864 (= (lemmaDropApply!120 lt!49359 0) lt!50501)))

(declare-fun b!164350 () Bool)

(assert (=> b!164350 (= e!99043 (< 0 (size!2351 lt!49359)))))

(assert (= (and d!40864 res!74398) b!164350))

(assert (=> d!40864 m!152609))

(assert (=> d!40864 m!152609))

(assert (=> d!40864 m!152611))

(assert (=> d!40864 m!152631))

(declare-fun m!156759 () Bool)

(assert (=> d!40864 m!156759))

(assert (=> b!164350 m!156707))

(assert (=> b!162616 d!40864))

(declare-fun d!40866 () Bool)

(assert (=> d!40866 (dynLambda!1005 lambda!4465 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0))))

(declare-fun lt!50502 () Unit!2310)

(assert (=> d!40866 (= lt!50502 (choose!1803 (list!1011 (seqFromList!372 (t!26086 tokens!465))) lambda!4465 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)))))

(declare-fun e!99044 () Bool)

(assert (=> d!40866 e!99044))

(declare-fun res!74399 () Bool)

(assert (=> d!40866 (=> (not res!74399) (not e!99044))))

(assert (=> d!40866 (= res!74399 (forall!523 (list!1011 (seqFromList!372 (t!26086 tokens!465))) lambda!4465))))

(assert (=> d!40866 (= (forallContained!64 (list!1011 (seqFromList!372 (t!26086 tokens!465))) lambda!4465 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)) lt!50502)))

(declare-fun b!164351 () Bool)

(assert (=> b!164351 (= e!99044 (contains!446 (list!1011 (seqFromList!372 (t!26086 tokens!465))) (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)))))

(assert (= (and d!40866 res!74399) b!164351))

(declare-fun b_lambda!3527 () Bool)

(assert (=> (not b_lambda!3527) (not d!40866)))

(assert (=> d!40866 m!152627))

(declare-fun m!156761 () Bool)

(assert (=> d!40866 m!156761))

(assert (=> d!40866 m!152613))

(assert (=> d!40866 m!152627))

(declare-fun m!156763 () Bool)

(assert (=> d!40866 m!156763))

(assert (=> d!40866 m!152613))

(declare-fun m!156765 () Bool)

(assert (=> d!40866 m!156765))

(assert (=> b!164351 m!152613))

(assert (=> b!164351 m!152627))

(declare-fun m!156767 () Bool)

(assert (=> b!164351 m!156767))

(assert (=> b!162616 d!40866))

(declare-fun d!40868 () Bool)

(declare-fun res!74400 () Bool)

(declare-fun e!99045 () Bool)

(assert (=> d!40868 (=> res!74400 e!99045)))

(assert (=> d!40868 (= res!74400 (not ((_ is Cons!2805) (t!26085 rules!1920))))))

(assert (=> d!40868 (= (sepAndNonSepRulesDisjointChars!86 rules!1920 (t!26085 rules!1920)) e!99045)))

(declare-fun b!164352 () Bool)

(declare-fun e!99046 () Bool)

(assert (=> b!164352 (= e!99045 e!99046)))

(declare-fun res!74401 () Bool)

(assert (=> b!164352 (=> (not res!74401) (not e!99046))))

(assert (=> b!164352 (= res!74401 (ruleDisjointCharsFromAllFromOtherType!30 (h!8202 (t!26085 rules!1920)) rules!1920))))

(declare-fun b!164353 () Bool)

(assert (=> b!164353 (= e!99046 (sepAndNonSepRulesDisjointChars!86 rules!1920 (t!26085 (t!26085 rules!1920))))))

(assert (= (and d!40868 (not res!74400)) b!164352))

(assert (= (and b!164352 res!74401) b!164353))

(declare-fun m!156769 () Bool)

(assert (=> b!164352 m!156769))

(declare-fun m!156771 () Bool)

(assert (=> b!164353 m!156771))

(assert (=> b!162405 d!40868))

(declare-fun d!40870 () Bool)

(assert (=> d!40870 (= (inv!15 (value!18480 separatorToken!170)) (= (charsToBigInt!0 (text!4082 (value!18480 separatorToken!170)) 0) (value!18475 (value!18480 separatorToken!170))))))

(declare-fun bs!15736 () Bool)

(assert (= bs!15736 d!40870))

(declare-fun m!156773 () Bool)

(assert (=> bs!15736 m!156773))

(assert (=> b!162862 d!40870))

(declare-fun d!40872 () Bool)

(assert (=> d!40872 (= (inv!17 (value!18480 (h!8203 tokens!465))) (= (charsToBigInt!1 (text!4081 (value!18480 (h!8203 tokens!465)))) (value!18472 (value!18480 (h!8203 tokens!465)))))))

(declare-fun bs!15737 () Bool)

(assert (= bs!15737 d!40872))

(declare-fun m!156775 () Bool)

(assert (=> bs!15737 m!156775))

(assert (=> b!162874 d!40872))

(declare-fun d!40874 () Bool)

(declare-fun lt!50503 () BalanceConc!1640)

(assert (=> d!40874 (= (list!1007 lt!50503) (printList!67 thiss!17480 (list!1011 (singletonSeq!49 (h!8203 (t!26086 tokens!465))))))))

(assert (=> d!40874 (= lt!50503 (printTailRec!77 thiss!17480 (singletonSeq!49 (h!8203 (t!26086 tokens!465))) 0 (BalanceConc!1641 Empty!816)))))

(assert (=> d!40874 (= (print!114 thiss!17480 (singletonSeq!49 (h!8203 (t!26086 tokens!465)))) lt!50503)))

(declare-fun bs!15738 () Bool)

(assert (= bs!15738 d!40874))

(declare-fun m!156777 () Bool)

(assert (=> bs!15738 m!156777))

(assert (=> bs!15738 m!152539))

(declare-fun m!156779 () Bool)

(assert (=> bs!15738 m!156779))

(assert (=> bs!15738 m!156779))

(declare-fun m!156781 () Bool)

(assert (=> bs!15738 m!156781))

(assert (=> bs!15738 m!152539))

(assert (=> bs!15738 m!152543))

(assert (=> b!162542 d!40874))

(declare-fun d!40876 () Bool)

(declare-fun e!99047 () Bool)

(assert (=> d!40876 e!99047))

(declare-fun res!74402 () Bool)

(assert (=> d!40876 (=> (not res!74402) (not e!99047))))

(declare-fun lt!50504 () BalanceConc!1642)

(assert (=> d!40876 (= res!74402 (= (list!1011 lt!50504) (Cons!2806 (h!8203 (t!26086 tokens!465)) Nil!2806)))))

(assert (=> d!40876 (= lt!50504 (singleton!29 (h!8203 (t!26086 tokens!465))))))

(assert (=> d!40876 (= (singletonSeq!49 (h!8203 (t!26086 tokens!465))) lt!50504)))

(declare-fun b!164354 () Bool)

(assert (=> b!164354 (= e!99047 (isBalanced!226 (c!32409 lt!50504)))))

(assert (= (and d!40876 res!74402) b!164354))

(declare-fun m!156783 () Bool)

(assert (=> d!40876 m!156783))

(declare-fun m!156785 () Bool)

(assert (=> d!40876 m!156785))

(declare-fun m!156787 () Bool)

(assert (=> b!164354 m!156787))

(assert (=> b!162542 d!40876))

(declare-fun d!40878 () Bool)

(declare-fun lt!50509 () BalanceConc!1640)

(assert (=> d!40878 (= (list!1007 lt!50509) (printListTailRec!48 thiss!17480 (dropList!80 (singletonSeq!49 (h!8203 (t!26086 tokens!465))) 0) (list!1007 (BalanceConc!1641 Empty!816))))))

(declare-fun e!99049 () BalanceConc!1640)

(assert (=> d!40878 (= lt!50509 e!99049)))

(declare-fun c!32884 () Bool)

(assert (=> d!40878 (= c!32884 (>= 0 (size!2348 (singletonSeq!49 (h!8203 (t!26086 tokens!465))))))))

(declare-fun e!99048 () Bool)

(assert (=> d!40878 e!99048))

(declare-fun res!74403 () Bool)

(assert (=> d!40878 (=> (not res!74403) (not e!99048))))

(assert (=> d!40878 (= res!74403 (>= 0 0))))

(assert (=> d!40878 (= (printTailRec!77 thiss!17480 (singletonSeq!49 (h!8203 (t!26086 tokens!465))) 0 (BalanceConc!1641 Empty!816)) lt!50509)))

(declare-fun b!164355 () Bool)

(assert (=> b!164355 (= e!99048 (<= 0 (size!2348 (singletonSeq!49 (h!8203 (t!26086 tokens!465))))))))

(declare-fun b!164356 () Bool)

(assert (=> b!164356 (= e!99049 (BalanceConc!1641 Empty!816))))

(declare-fun b!164357 () Bool)

(assert (=> b!164357 (= e!99049 (printTailRec!77 thiss!17480 (singletonSeq!49 (h!8203 (t!26086 tokens!465))) (+ 0 1) (++!628 (BalanceConc!1641 Empty!816) (charsOf!152 (apply!390 (singletonSeq!49 (h!8203 (t!26086 tokens!465))) 0)))))))

(declare-fun lt!50508 () List!2816)

(assert (=> b!164357 (= lt!50508 (list!1011 (singletonSeq!49 (h!8203 (t!26086 tokens!465)))))))

(declare-fun lt!50505 () Unit!2310)

(assert (=> b!164357 (= lt!50505 (lemmaDropApply!120 lt!50508 0))))

(assert (=> b!164357 (= (head!594 (drop!133 lt!50508 0)) (apply!389 lt!50508 0))))

(declare-fun lt!50506 () Unit!2310)

(assert (=> b!164357 (= lt!50506 lt!50505)))

(declare-fun lt!50511 () List!2816)

(assert (=> b!164357 (= lt!50511 (list!1011 (singletonSeq!49 (h!8203 (t!26086 tokens!465)))))))

(declare-fun lt!50510 () Unit!2310)

(assert (=> b!164357 (= lt!50510 (lemmaDropTail!112 lt!50511 0))))

(assert (=> b!164357 (= (tail!334 (drop!133 lt!50511 0)) (drop!133 lt!50511 (+ 0 1)))))

(declare-fun lt!50507 () Unit!2310)

(assert (=> b!164357 (= lt!50507 lt!50510)))

(assert (= (and d!40878 res!74403) b!164355))

(assert (= (and d!40878 c!32884) b!164356))

(assert (= (and d!40878 (not c!32884)) b!164357))

(declare-fun m!156789 () Bool)

(assert (=> d!40878 m!156789))

(assert (=> d!40878 m!153043))

(declare-fun m!156791 () Bool)

(assert (=> d!40878 m!156791))

(assert (=> d!40878 m!152539))

(assert (=> d!40878 m!156789))

(assert (=> d!40878 m!152539))

(declare-fun m!156793 () Bool)

(assert (=> d!40878 m!156793))

(declare-fun m!156795 () Bool)

(assert (=> d!40878 m!156795))

(assert (=> d!40878 m!153043))

(assert (=> b!164355 m!152539))

(assert (=> b!164355 m!156793))

(declare-fun m!156797 () Bool)

(assert (=> b!164357 m!156797))

(declare-fun m!156799 () Bool)

(assert (=> b!164357 m!156799))

(declare-fun m!156801 () Bool)

(assert (=> b!164357 m!156801))

(declare-fun m!156803 () Bool)

(assert (=> b!164357 m!156803))

(declare-fun m!156805 () Bool)

(assert (=> b!164357 m!156805))

(declare-fun m!156807 () Bool)

(assert (=> b!164357 m!156807))

(declare-fun m!156809 () Bool)

(assert (=> b!164357 m!156809))

(declare-fun m!156811 () Bool)

(assert (=> b!164357 m!156811))

(declare-fun m!156813 () Bool)

(assert (=> b!164357 m!156813))

(assert (=> b!164357 m!152539))

(assert (=> b!164357 m!156779))

(declare-fun m!156815 () Bool)

(assert (=> b!164357 m!156815))

(assert (=> b!164357 m!152539))

(assert (=> b!164357 m!156797))

(assert (=> b!164357 m!156811))

(assert (=> b!164357 m!152539))

(declare-fun m!156817 () Bool)

(assert (=> b!164357 m!156817))

(declare-fun m!156819 () Bool)

(assert (=> b!164357 m!156819))

(assert (=> b!164357 m!156805))

(assert (=> b!164357 m!156799))

(assert (=> b!164357 m!156817))

(assert (=> b!162542 d!40878))

(declare-fun b!164361 () Bool)

(declare-fun e!99051 () Unit!2310)

(declare-fun Unit!2366 () Unit!2310)

(assert (=> b!164361 (= e!99051 Unit!2366)))

(declare-fun b!164358 () Bool)

(declare-fun res!74405 () Bool)

(declare-fun e!99050 () Bool)

(assert (=> b!164358 (=> (not res!74405) (not e!99050))))

(declare-fun lt!50517 () Token!738)

(assert (=> b!164358 (= res!74405 (matchR!77 (regex!497 (get!763 (getRuleFromTag!20 thiss!17480 rules!1920 (tag!675 (rule!1004 lt!50517))))) (list!1007 (charsOf!152 lt!50517))))))

(declare-fun d!40880 () Bool)

(assert (=> d!40880 (isDefined!129 (maxPrefix!121 thiss!17480 rules!1920 (++!626 call!6851 lt!49297)))))

(declare-fun lt!50516 () Unit!2310)

(assert (=> d!40880 (= lt!50516 e!99051)))

(declare-fun c!32885 () Bool)

(assert (=> d!40880 (= c!32885 (isEmpty!1147 (maxPrefix!121 thiss!17480 rules!1920 (++!626 call!6851 lt!49297))))))

(declare-fun lt!50515 () Unit!2310)

(declare-fun lt!50527 () Unit!2310)

(assert (=> d!40880 (= lt!50515 lt!50527)))

(assert (=> d!40880 e!99050))

(declare-fun res!74404 () Bool)

(assert (=> d!40880 (=> (not res!74404) (not e!99050))))

(assert (=> d!40880 (= res!74404 (isDefined!131 (getRuleFromTag!20 thiss!17480 rules!1920 (tag!675 (rule!1004 lt!50517)))))))

(assert (=> d!40880 (= lt!50527 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!20 thiss!17480 rules!1920 call!6851 lt!50517))))

(declare-fun lt!50513 () Unit!2310)

(declare-fun lt!50525 () Unit!2310)

(assert (=> d!40880 (= lt!50513 lt!50525)))

(declare-fun lt!50521 () List!2814)

(assert (=> d!40880 (isPrefix!221 lt!50521 (++!626 call!6851 lt!49297))))

(assert (=> d!40880 (= lt!50525 (lemmaPrefixStaysPrefixWhenAddingToSuffix!20 lt!50521 call!6851 lt!49297))))

(assert (=> d!40880 (= lt!50521 (list!1007 (charsOf!152 lt!50517)))))

(declare-fun lt!50526 () Unit!2310)

(declare-fun lt!50518 () Unit!2310)

(assert (=> d!40880 (= lt!50526 lt!50518)))

(declare-fun lt!50514 () List!2814)

(declare-fun lt!50520 () List!2814)

(assert (=> d!40880 (isPrefix!221 lt!50514 (++!626 lt!50514 lt!50520))))

(assert (=> d!40880 (= lt!50518 (lemmaConcatTwoListThenFirstIsPrefix!124 lt!50514 lt!50520))))

(assert (=> d!40880 (= lt!50520 (_2!1555 (get!761 (maxPrefix!121 thiss!17480 rules!1920 call!6851))))))

(assert (=> d!40880 (= lt!50514 (list!1007 (charsOf!152 lt!50517)))))

(assert (=> d!40880 (= lt!50517 (head!594 (list!1011 (_1!1551 (lex!183 thiss!17480 rules!1920 (seqFromList!371 call!6851))))))))

(assert (=> d!40880 (not (isEmpty!1136 rules!1920))))

(assert (=> d!40880 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!28 thiss!17480 rules!1920 call!6851 lt!49297) lt!50516)))

(declare-fun b!164359 () Bool)

(assert (=> b!164359 (= e!99050 (= (rule!1004 lt!50517) (get!763 (getRuleFromTag!20 thiss!17480 rules!1920 (tag!675 (rule!1004 lt!50517))))))))

(declare-fun b!164360 () Bool)

(declare-fun Unit!2367 () Unit!2310)

(assert (=> b!164360 (= e!99051 Unit!2367)))

(declare-fun lt!50512 () List!2814)

(assert (=> b!164360 (= lt!50512 (++!626 call!6851 lt!49297))))

(declare-fun lt!50519 () Unit!2310)

(assert (=> b!164360 (= lt!50519 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!20 thiss!17480 (rule!1004 lt!50517) rules!1920 lt!50512))))

(assert (=> b!164360 (isEmpty!1147 (maxPrefixOneRule!65 thiss!17480 (rule!1004 lt!50517) lt!50512))))

(declare-fun lt!50524 () Unit!2310)

(assert (=> b!164360 (= lt!50524 lt!50519)))

(declare-fun lt!50523 () List!2814)

(assert (=> b!164360 (= lt!50523 (list!1007 (charsOf!152 lt!50517)))))

(declare-fun lt!50528 () Unit!2310)

(assert (=> b!164360 (= lt!50528 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!20 thiss!17480 (rule!1004 lt!50517) lt!50523 (++!626 call!6851 lt!49297)))))

(assert (=> b!164360 (not (matchR!77 (regex!497 (rule!1004 lt!50517)) lt!50523))))

(declare-fun lt!50522 () Unit!2310)

(assert (=> b!164360 (= lt!50522 lt!50528)))

(assert (=> b!164360 false))

(assert (= (and d!40880 res!74404) b!164358))

(assert (= (and b!164358 res!74405) b!164359))

(assert (= (and d!40880 c!32885) b!164360))

(assert (= (and d!40880 (not c!32885)) b!164361))

(declare-fun m!156821 () Bool)

(assert (=> b!164358 m!156821))

(declare-fun m!156823 () Bool)

(assert (=> b!164358 m!156823))

(declare-fun m!156825 () Bool)

(assert (=> b!164358 m!156825))

(declare-fun m!156827 () Bool)

(assert (=> b!164358 m!156827))

(assert (=> b!164358 m!156825))

(assert (=> b!164358 m!156821))

(assert (=> b!164358 m!156827))

(declare-fun m!156829 () Bool)

(assert (=> b!164358 m!156829))

(declare-fun m!156831 () Bool)

(assert (=> d!40880 m!156831))

(declare-fun m!156833 () Bool)

(assert (=> d!40880 m!156833))

(declare-fun m!156835 () Bool)

(assert (=> d!40880 m!156835))

(declare-fun m!156837 () Bool)

(assert (=> d!40880 m!156837))

(declare-fun m!156839 () Bool)

(assert (=> d!40880 m!156839))

(declare-fun m!156841 () Bool)

(assert (=> d!40880 m!156841))

(declare-fun m!156843 () Bool)

(assert (=> d!40880 m!156843))

(assert (=> d!40880 m!156843))

(declare-fun m!156845 () Bool)

(assert (=> d!40880 m!156845))

(assert (=> d!40880 m!156833))

(declare-fun m!156847 () Bool)

(assert (=> d!40880 m!156847))

(assert (=> d!40880 m!156841))

(declare-fun m!156849 () Bool)

(assert (=> d!40880 m!156849))

(assert (=> d!40880 m!156825))

(assert (=> d!40880 m!156827))

(declare-fun m!156851 () Bool)

(assert (=> d!40880 m!156851))

(assert (=> d!40880 m!156827))

(declare-fun m!156853 () Bool)

(assert (=> d!40880 m!156853))

(assert (=> d!40880 m!156825))

(assert (=> d!40880 m!156821))

(assert (=> d!40880 m!156837))

(declare-fun m!156855 () Bool)

(assert (=> d!40880 m!156855))

(assert (=> d!40880 m!152327))

(assert (=> d!40880 m!156839))

(declare-fun m!156857 () Bool)

(assert (=> d!40880 m!156857))

(assert (=> d!40880 m!156853))

(declare-fun m!156859 () Bool)

(assert (=> d!40880 m!156859))

(assert (=> d!40880 m!156839))

(declare-fun m!156861 () Bool)

(assert (=> d!40880 m!156861))

(assert (=> d!40880 m!156841))

(declare-fun m!156863 () Bool)

(assert (=> d!40880 m!156863))

(assert (=> b!164359 m!156827))

(assert (=> b!164359 m!156827))

(assert (=> b!164359 m!156829))

(assert (=> b!164360 m!156825))

(declare-fun m!156865 () Bool)

(assert (=> b!164360 m!156865))

(declare-fun m!156867 () Bool)

(assert (=> b!164360 m!156867))

(assert (=> b!164360 m!156825))

(assert (=> b!164360 m!156821))

(assert (=> b!164360 m!156867))

(declare-fun m!156869 () Bool)

(assert (=> b!164360 m!156869))

(assert (=> b!164360 m!156839))

(declare-fun m!156871 () Bool)

(assert (=> b!164360 m!156871))

(assert (=> b!164360 m!156839))

(declare-fun m!156873 () Bool)

(assert (=> b!164360 m!156873))

(assert (=> b!162542 d!40880))

(declare-fun d!40882 () Bool)

(assert (=> d!40882 (= (isEmpty!1143 (list!1011 (_1!1551 (lex!183 thiss!17480 rules!1920 (seqFromList!371 lt!49240))))) ((_ is Nil!2806) (list!1011 (_1!1551 (lex!183 thiss!17480 rules!1920 (seqFromList!371 lt!49240))))))))

(assert (=> d!39918 d!40882))

(declare-fun d!40884 () Bool)

(assert (=> d!40884 (= (list!1011 (_1!1551 (lex!183 thiss!17480 rules!1920 (seqFromList!371 lt!49240)))) (list!1015 (c!32409 (_1!1551 (lex!183 thiss!17480 rules!1920 (seqFromList!371 lt!49240))))))))

(declare-fun bs!15739 () Bool)

(assert (= bs!15739 d!40884))

(declare-fun m!156875 () Bool)

(assert (=> bs!15739 m!156875))

(assert (=> d!39918 d!40884))

(declare-fun d!40886 () Bool)

(declare-fun lt!50531 () Bool)

(assert (=> d!40886 (= lt!50531 (isEmpty!1143 (list!1015 (c!32409 (_1!1551 (lex!183 thiss!17480 rules!1920 (seqFromList!371 lt!49240)))))))))

(assert (=> d!40886 (= lt!50531 (= (size!2353 (c!32409 (_1!1551 (lex!183 thiss!17480 rules!1920 (seqFromList!371 lt!49240))))) 0))))

(assert (=> d!40886 (= (isEmpty!1144 (c!32409 (_1!1551 (lex!183 thiss!17480 rules!1920 (seqFromList!371 lt!49240))))) lt!50531)))

(declare-fun bs!15740 () Bool)

(assert (= bs!15740 d!40886))

(assert (=> bs!15740 m!156875))

(assert (=> bs!15740 m!156875))

(declare-fun m!156877 () Bool)

(assert (=> bs!15740 m!156877))

(declare-fun m!156879 () Bool)

(assert (=> bs!15740 m!156879))

(assert (=> d!39918 d!40886))

(declare-fun d!40888 () Bool)

(assert (=> d!40888 (= (inv!3625 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (value!18480 (h!8203 tokens!465)))) (isBalanced!228 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (value!18480 (h!8203 tokens!465))))))))

(declare-fun bs!15741 () Bool)

(assert (= bs!15741 d!40888))

(declare-fun m!156881 () Bool)

(assert (=> bs!15741 m!156881))

(assert (=> tb!5971 d!40888))

(declare-fun d!40890 () Bool)

(declare-fun c!32886 () Bool)

(assert (=> d!40890 (= c!32886 ((_ is Node!816) (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (value!18480 (h!8203 tokens!465))))))))

(declare-fun e!99052 () Bool)

(assert (=> d!40890 (= (inv!3624 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (value!18480 (h!8203 tokens!465))))) e!99052)))

(declare-fun b!164362 () Bool)

(assert (=> b!164362 (= e!99052 (inv!3626 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (value!18480 (h!8203 tokens!465))))))))

(declare-fun b!164363 () Bool)

(declare-fun e!99053 () Bool)

(assert (=> b!164363 (= e!99052 e!99053)))

(declare-fun res!74406 () Bool)

(assert (=> b!164363 (= res!74406 (not ((_ is Leaf!1404) (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (value!18480 (h!8203 tokens!465)))))))))

(assert (=> b!164363 (=> res!74406 e!99053)))

(declare-fun b!164364 () Bool)

(assert (=> b!164364 (= e!99053 (inv!3627 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (value!18480 (h!8203 tokens!465))))))))

(assert (= (and d!40890 c!32886) b!164362))

(assert (= (and d!40890 (not c!32886)) b!164363))

(assert (= (and b!164363 (not res!74406)) b!164364))

(declare-fun m!156883 () Bool)

(assert (=> b!164362 m!156883))

(declare-fun m!156885 () Bool)

(assert (=> b!164364 m!156885))

(assert (=> b!162434 d!40890))

(declare-fun b!164367 () Bool)

(declare-fun res!74407 () Bool)

(declare-fun e!99054 () Bool)

(assert (=> b!164367 (=> (not res!74407) (not e!99054))))

(assert (=> b!164367 (= res!74407 (>= (height!86 (++!630 (c!32407 call!6908) (c!32407 lt!49517))) (max!0 (height!86 (c!32407 call!6908)) (height!86 (c!32407 lt!49517)))))))

(declare-fun b!164365 () Bool)

(declare-fun res!74408 () Bool)

(assert (=> b!164365 (=> (not res!74408) (not e!99054))))

(assert (=> b!164365 (= res!74408 (isBalanced!228 (++!630 (c!32407 call!6908) (c!32407 lt!49517))))))

(declare-fun lt!50532 () BalanceConc!1640)

(declare-fun b!164368 () Bool)

(assert (=> b!164368 (= e!99054 (= (list!1007 lt!50532) (++!626 (list!1007 call!6908) (list!1007 lt!49517))))))

(declare-fun b!164366 () Bool)

(declare-fun res!74410 () Bool)

(assert (=> b!164366 (=> (not res!74410) (not e!99054))))

(assert (=> b!164366 (= res!74410 (<= (height!86 (++!630 (c!32407 call!6908) (c!32407 lt!49517))) (+ (max!0 (height!86 (c!32407 call!6908)) (height!86 (c!32407 lt!49517))) 1)))))

(declare-fun d!40892 () Bool)

(assert (=> d!40892 e!99054))

(declare-fun res!74409 () Bool)

(assert (=> d!40892 (=> (not res!74409) (not e!99054))))

(assert (=> d!40892 (= res!74409 (appendAssocInst!27 (c!32407 call!6908) (c!32407 lt!49517)))))

(assert (=> d!40892 (= lt!50532 (BalanceConc!1641 (++!630 (c!32407 call!6908) (c!32407 lt!49517))))))

(assert (=> d!40892 (= (++!628 call!6908 lt!49517) lt!50532)))

(assert (= (and d!40892 res!74409) b!164365))

(assert (= (and b!164365 res!74408) b!164366))

(assert (= (and b!164366 res!74410) b!164367))

(assert (= (and b!164367 res!74407) b!164368))

(declare-fun m!156887 () Bool)

(assert (=> b!164366 m!156887))

(assert (=> b!164366 m!155591))

(declare-fun m!156889 () Bool)

(assert (=> b!164366 m!156889))

(assert (=> b!164366 m!156887))

(declare-fun m!156891 () Bool)

(assert (=> b!164366 m!156891))

(assert (=> b!164366 m!155591))

(assert (=> b!164366 m!156891))

(declare-fun m!156893 () Bool)

(assert (=> b!164366 m!156893))

(assert (=> b!164365 m!156891))

(assert (=> b!164365 m!156891))

(declare-fun m!156895 () Bool)

(assert (=> b!164365 m!156895))

(declare-fun m!156897 () Bool)

(assert (=> b!164368 m!156897))

(declare-fun m!156899 () Bool)

(assert (=> b!164368 m!156899))

(assert (=> b!164368 m!153187))

(assert (=> b!164368 m!156899))

(assert (=> b!164368 m!153187))

(declare-fun m!156901 () Bool)

(assert (=> b!164368 m!156901))

(assert (=> b!164367 m!156887))

(assert (=> b!164367 m!155591))

(assert (=> b!164367 m!156889))

(assert (=> b!164367 m!156887))

(assert (=> b!164367 m!156891))

(assert (=> b!164367 m!155591))

(assert (=> b!164367 m!156891))

(assert (=> b!164367 m!156893))

(declare-fun m!156903 () Bool)

(assert (=> d!40892 m!156903))

(assert (=> d!40892 m!156891))

(assert (=> b!162885 d!40892))

(declare-fun b!164371 () Bool)

(declare-fun e!99057 () Bool)

(assert (=> b!164371 (= e!99057 true)))

(declare-fun b!164370 () Bool)

(declare-fun e!99056 () Bool)

(assert (=> b!164370 (= e!99056 e!99057)))

(declare-fun b!164369 () Bool)

(declare-fun e!99055 () Bool)

(assert (=> b!164369 (= e!99055 e!99056)))

(assert (=> b!162900 e!99055))

(assert (= b!164370 b!164371))

(assert (= b!164369 b!164370))

(assert (= (and b!162900 ((_ is Cons!2805) (t!26085 rules!1920))) b!164369))

(assert (=> b!164371 (< (dynLambda!999 order!1425 (toValue!1152 (transformation!497 (h!8202 (t!26085 rules!1920))))) (dynLambda!1000 order!1427 lambda!4482))))

(assert (=> b!164371 (< (dynLambda!1001 order!1429 (toChars!1011 (transformation!497 (h!8202 (t!26085 rules!1920))))) (dynLambda!1000 order!1427 lambda!4482))))

(declare-fun e!99058 () Bool)

(assert (=> b!162937 (= tp!82384 e!99058)))

(declare-fun b!164372 () Bool)

(assert (=> b!164372 (= e!99058 tp_is_empty!1639)))

(declare-fun b!164373 () Bool)

(declare-fun tp!82535 () Bool)

(declare-fun tp!82539 () Bool)

(assert (=> b!164373 (= e!99058 (and tp!82535 tp!82539))))

(declare-fun b!164374 () Bool)

(declare-fun tp!82536 () Bool)

(assert (=> b!164374 (= e!99058 tp!82536)))

(declare-fun b!164375 () Bool)

(declare-fun tp!82537 () Bool)

(declare-fun tp!82538 () Bool)

(assert (=> b!164375 (= e!99058 (and tp!82537 tp!82538))))

(assert (= (and b!162937 ((_ is ElementMatch!721) (regOne!1955 (regex!497 (h!8202 rules!1920))))) b!164372))

(assert (= (and b!162937 ((_ is Concat!1241) (regOne!1955 (regex!497 (h!8202 rules!1920))))) b!164373))

(assert (= (and b!162937 ((_ is Star!721) (regOne!1955 (regex!497 (h!8202 rules!1920))))) b!164374))

(assert (= (and b!162937 ((_ is Union!721) (regOne!1955 (regex!497 (h!8202 rules!1920))))) b!164375))

(declare-fun e!99059 () Bool)

(assert (=> b!162937 (= tp!82385 e!99059)))

(declare-fun b!164376 () Bool)

(assert (=> b!164376 (= e!99059 tp_is_empty!1639)))

(declare-fun b!164377 () Bool)

(declare-fun tp!82540 () Bool)

(declare-fun tp!82544 () Bool)

(assert (=> b!164377 (= e!99059 (and tp!82540 tp!82544))))

(declare-fun b!164378 () Bool)

(declare-fun tp!82541 () Bool)

(assert (=> b!164378 (= e!99059 tp!82541)))

(declare-fun b!164379 () Bool)

(declare-fun tp!82542 () Bool)

(declare-fun tp!82543 () Bool)

(assert (=> b!164379 (= e!99059 (and tp!82542 tp!82543))))

(assert (= (and b!162937 ((_ is ElementMatch!721) (regTwo!1955 (regex!497 (h!8202 rules!1920))))) b!164376))

(assert (= (and b!162937 ((_ is Concat!1241) (regTwo!1955 (regex!497 (h!8202 rules!1920))))) b!164377))

(assert (= (and b!162937 ((_ is Star!721) (regTwo!1955 (regex!497 (h!8202 rules!1920))))) b!164378))

(assert (= (and b!162937 ((_ is Union!721) (regTwo!1955 (regex!497 (h!8202 rules!1920))))) b!164379))

(declare-fun b!164382 () Bool)

(declare-fun e!99062 () Bool)

(assert (=> b!164382 (= e!99062 true)))

(declare-fun b!164381 () Bool)

(declare-fun e!99061 () Bool)

(assert (=> b!164381 (= e!99061 e!99062)))

(declare-fun b!164380 () Bool)

(declare-fun e!99060 () Bool)

(assert (=> b!164380 (= e!99060 e!99061)))

(assert (=> b!162889 e!99060))

(assert (= b!164381 b!164382))

(assert (= b!164380 b!164381))

(assert (= (and b!162889 ((_ is Cons!2805) (t!26085 rules!1920))) b!164380))

(assert (=> b!164382 (< (dynLambda!999 order!1425 (toValue!1152 (transformation!497 (h!8202 (t!26085 rules!1920))))) (dynLambda!1000 order!1427 lambda!4481))))

(assert (=> b!164382 (< (dynLambda!1001 order!1429 (toChars!1011 (transformation!497 (h!8202 (t!26085 rules!1920))))) (dynLambda!1000 order!1427 lambda!4481))))

(declare-fun e!99063 () Bool)

(assert (=> b!162935 (= tp!82382 e!99063)))

(declare-fun b!164383 () Bool)

(assert (=> b!164383 (= e!99063 tp_is_empty!1639)))

(declare-fun b!164384 () Bool)

(declare-fun tp!82545 () Bool)

(declare-fun tp!82549 () Bool)

(assert (=> b!164384 (= e!99063 (and tp!82545 tp!82549))))

(declare-fun b!164385 () Bool)

(declare-fun tp!82546 () Bool)

(assert (=> b!164385 (= e!99063 tp!82546)))

(declare-fun b!164386 () Bool)

(declare-fun tp!82547 () Bool)

(declare-fun tp!82548 () Bool)

(assert (=> b!164386 (= e!99063 (and tp!82547 tp!82548))))

(assert (= (and b!162935 ((_ is ElementMatch!721) (regOne!1954 (regex!497 (h!8202 rules!1920))))) b!164383))

(assert (= (and b!162935 ((_ is Concat!1241) (regOne!1954 (regex!497 (h!8202 rules!1920))))) b!164384))

(assert (= (and b!162935 ((_ is Star!721) (regOne!1954 (regex!497 (h!8202 rules!1920))))) b!164385))

(assert (= (and b!162935 ((_ is Union!721) (regOne!1954 (regex!497 (h!8202 rules!1920))))) b!164386))

(declare-fun e!99064 () Bool)

(assert (=> b!162935 (= tp!82386 e!99064)))

(declare-fun b!164387 () Bool)

(assert (=> b!164387 (= e!99064 tp_is_empty!1639)))

(declare-fun b!164388 () Bool)

(declare-fun tp!82550 () Bool)

(declare-fun tp!82554 () Bool)

(assert (=> b!164388 (= e!99064 (and tp!82550 tp!82554))))

(declare-fun b!164389 () Bool)

(declare-fun tp!82551 () Bool)

(assert (=> b!164389 (= e!99064 tp!82551)))

(declare-fun b!164390 () Bool)

(declare-fun tp!82552 () Bool)

(declare-fun tp!82553 () Bool)

(assert (=> b!164390 (= e!99064 (and tp!82552 tp!82553))))

(assert (= (and b!162935 ((_ is ElementMatch!721) (regTwo!1954 (regex!497 (h!8202 rules!1920))))) b!164387))

(assert (= (and b!162935 ((_ is Concat!1241) (regTwo!1954 (regex!497 (h!8202 rules!1920))))) b!164388))

(assert (= (and b!162935 ((_ is Star!721) (regTwo!1954 (regex!497 (h!8202 rules!1920))))) b!164389))

(assert (= (and b!162935 ((_ is Union!721) (regTwo!1954 (regex!497 (h!8202 rules!1920))))) b!164390))

(declare-fun b!164394 () Bool)

(declare-fun b_free!6221 () Bool)

(declare-fun b_next!6221 () Bool)

(assert (=> b!164394 (= b_free!6221 (not b_next!6221))))

(declare-fun tp!82559 () Bool)

(declare-fun b_and!10453 () Bool)

(assert (=> b!164394 (= tp!82559 b_and!10453)))

(declare-fun b_free!6223 () Bool)

(declare-fun b_next!6223 () Bool)

(assert (=> b!164394 (= b_free!6223 (not b_next!6223))))

(declare-fun t!26390 () Bool)

(declare-fun tb!6229 () Bool)

(assert (=> (and b!164394 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 (t!26086 tokens!465)))))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465)))))) t!26390) tb!6229))

(declare-fun result!8846 () Bool)

(assert (= result!8846 result!8680))

(assert (=> d!40336 t!26390))

(declare-fun tb!6231 () Bool)

(declare-fun t!26392 () Bool)

(assert (=> (and b!164394 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 (t!26086 tokens!465)))))) (toChars!1011 (transformation!497 (rule!1004 call!6907)))) t!26392) tb!6231))

(declare-fun result!8848 () Bool)

(assert (= result!8848 result!8660))

(assert (=> d!40202 t!26392))

(declare-fun t!26394 () Bool)

(declare-fun tb!6233 () Bool)

(assert (=> (and b!164394 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 (t!26086 tokens!465)))))) (toChars!1011 (transformation!497 (rule!1004 (ite c!32515 call!6911 (ite c!32516 separatorToken!170 call!6907)))))) t!26394) tb!6233))

(declare-fun result!8850 () Bool)

(assert (= result!8850 result!8690))

(assert (=> d!40300 t!26394))

(assert (=> b!163485 t!26390))

(declare-fun tb!6235 () Bool)

(declare-fun t!26396 () Bool)

(assert (=> (and b!164394 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 (t!26086 tokens!465)))))) (toChars!1011 (transformation!497 (rule!1004 (ite c!32464 call!6881 (ite c!32465 separatorToken!170 call!6877)))))) t!26396) tb!6235))

(declare-fun result!8852 () Bool)

(assert (= result!8852 result!8740))

(assert (=> d!40646 t!26396))

(declare-fun t!26398 () Bool)

(declare-fun tb!6237 () Bool)

(assert (=> (and b!164394 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 (t!26086 tokens!465)))))) (toChars!1011 (transformation!497 (rule!1004 (apply!390 lt!49245 0))))) t!26398) tb!6237))

(declare-fun result!8854 () Bool)

(assert (= result!8854 result!8720))

(assert (=> d!40510 t!26398))

(declare-fun t!26400 () Bool)

(declare-fun tb!6239 () Bool)

(assert (=> (and b!164394 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 (t!26086 tokens!465)))))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465))))) t!26400) tb!6239))

(declare-fun result!8856 () Bool)

(assert (= result!8856 result!8568))

(assert (=> d!39900 t!26400))

(declare-fun t!26402 () Bool)

(declare-fun tb!6241 () Bool)

(assert (=> (and b!164394 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 (t!26086 tokens!465)))))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (Cons!2806 (h!8203 tokens!465) Nil!2806)))))) t!26402) tb!6241))

(declare-fun result!8858 () Bool)

(assert (= result!8858 result!8760))

(assert (=> d!40698 t!26402))

(declare-fun tb!6243 () Bool)

(declare-fun t!26404 () Bool)

(assert (=> (and b!164394 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 (t!26086 tokens!465)))))) (toChars!1011 (transformation!497 (rule!1004 separatorToken!170)))) t!26404) tb!6243))

(declare-fun result!8860 () Bool)

(assert (= result!8860 result!8582))

(assert (=> b!162817 t!26404))

(declare-fun t!26406 () Bool)

(declare-fun tb!6245 () Bool)

(assert (=> (and b!164394 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 (t!26086 tokens!465)))))) (toChars!1011 (transformation!497 (rule!1004 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0))))) t!26406) tb!6245))

(declare-fun result!8862 () Bool)

(assert (= result!8862 result!8836))

(assert (=> d!40860 t!26406))

(declare-fun t!26408 () Bool)

(declare-fun tb!6247 () Bool)

(assert (=> (and b!164394 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 (t!26086 tokens!465)))))) (toChars!1011 (transformation!497 (rule!1004 (apply!390 lt!49248 0))))) t!26408) tb!6247))

(declare-fun result!8864 () Bool)

(assert (= result!8864 result!8650))

(assert (=> d!40172 t!26408))

(declare-fun t!26410 () Bool)

(declare-fun tb!6249 () Bool)

(assert (=> (and b!164394 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 (t!26086 tokens!465)))))) (toChars!1011 (transformation!497 (rule!1004 call!6877)))) t!26410) tb!6249))

(declare-fun result!8866 () Bool)

(assert (= result!8866 result!8640))

(assert (=> d!40130 t!26410))

(assert (=> b!162423 t!26400))

(assert (=> d!39892 t!26404))

(declare-fun tp!82555 () Bool)

(declare-fun b_and!10455 () Bool)

(assert (=> b!164394 (= tp!82555 (and (=> t!26394 result!8850) (=> t!26398 result!8854) (=> t!26400 result!8856) (=> t!26408 result!8864) (=> t!26402 result!8858) (=> t!26392 result!8848) (=> t!26406 result!8862) (=> t!26404 result!8860) (=> t!26410 result!8866) (=> t!26390 result!8846) (=> t!26396 result!8852) b_and!10455))))

(declare-fun e!99069 () Bool)

(assert (=> b!164394 (= e!99069 (and tp!82559 tp!82555))))

(declare-fun e!99067 () Bool)

(declare-fun b!164391 () Bool)

(declare-fun e!99070 () Bool)

(declare-fun tp!82556 () Bool)

(assert (=> b!164391 (= e!99070 (and (inv!3621 (h!8203 (t!26086 (t!26086 tokens!465)))) e!99067 tp!82556))))

(declare-fun b!164393 () Bool)

(declare-fun e!99068 () Bool)

(declare-fun tp!82557 () Bool)

(assert (=> b!164393 (= e!99068 (and tp!82557 (inv!3617 (tag!675 (rule!1004 (h!8203 (t!26086 (t!26086 tokens!465)))))) (inv!3620 (transformation!497 (rule!1004 (h!8203 (t!26086 (t!26086 tokens!465)))))) e!99069))))

(declare-fun tp!82558 () Bool)

(declare-fun b!164392 () Bool)

(assert (=> b!164392 (= e!99067 (and (inv!21 (value!18480 (h!8203 (t!26086 (t!26086 tokens!465))))) e!99068 tp!82558))))

(assert (=> b!162930 (= tp!82378 e!99070)))

(assert (= b!164393 b!164394))

(assert (= b!164392 b!164393))

(assert (= b!164391 b!164392))

(assert (= (and b!162930 ((_ is Cons!2806) (t!26086 (t!26086 tokens!465)))) b!164391))

(declare-fun m!156905 () Bool)

(assert (=> b!164391 m!156905))

(declare-fun m!156907 () Bool)

(assert (=> b!164393 m!156907))

(declare-fun m!156909 () Bool)

(assert (=> b!164393 m!156909))

(declare-fun m!156911 () Bool)

(assert (=> b!164392 m!156911))

(declare-fun e!99071 () Bool)

(assert (=> b!162932 (= tp!82379 e!99071)))

(declare-fun b!164395 () Bool)

(assert (=> b!164395 (= e!99071 tp_is_empty!1639)))

(declare-fun b!164396 () Bool)

(declare-fun tp!82560 () Bool)

(declare-fun tp!82564 () Bool)

(assert (=> b!164396 (= e!99071 (and tp!82560 tp!82564))))

(declare-fun b!164397 () Bool)

(declare-fun tp!82561 () Bool)

(assert (=> b!164397 (= e!99071 tp!82561)))

(declare-fun b!164398 () Bool)

(declare-fun tp!82562 () Bool)

(declare-fun tp!82563 () Bool)

(assert (=> b!164398 (= e!99071 (and tp!82562 tp!82563))))

(assert (= (and b!162932 ((_ is ElementMatch!721) (regex!497 (rule!1004 (h!8203 (t!26086 tokens!465)))))) b!164395))

(assert (= (and b!162932 ((_ is Concat!1241) (regex!497 (rule!1004 (h!8203 (t!26086 tokens!465)))))) b!164396))

(assert (= (and b!162932 ((_ is Star!721) (regex!497 (rule!1004 (h!8203 (t!26086 tokens!465)))))) b!164397))

(assert (= (and b!162932 ((_ is Union!721) (regex!497 (rule!1004 (h!8203 (t!26086 tokens!465)))))) b!164398))

(declare-fun e!99072 () Bool)

(assert (=> b!162936 (= tp!82383 e!99072)))

(declare-fun b!164399 () Bool)

(assert (=> b!164399 (= e!99072 tp_is_empty!1639)))

(declare-fun b!164400 () Bool)

(declare-fun tp!82565 () Bool)

(declare-fun tp!82569 () Bool)

(assert (=> b!164400 (= e!99072 (and tp!82565 tp!82569))))

(declare-fun b!164401 () Bool)

(declare-fun tp!82566 () Bool)

(assert (=> b!164401 (= e!99072 tp!82566)))

(declare-fun b!164402 () Bool)

(declare-fun tp!82567 () Bool)

(declare-fun tp!82568 () Bool)

(assert (=> b!164402 (= e!99072 (and tp!82567 tp!82568))))

(assert (= (and b!162936 ((_ is ElementMatch!721) (reg!1050 (regex!497 (h!8202 rules!1920))))) b!164399))

(assert (= (and b!162936 ((_ is Concat!1241) (reg!1050 (regex!497 (h!8202 rules!1920))))) b!164400))

(assert (= (and b!162936 ((_ is Star!721) (reg!1050 (regex!497 (h!8202 rules!1920))))) b!164401))

(assert (= (and b!162936 ((_ is Union!721) (reg!1050 (regex!497 (h!8202 rules!1920))))) b!164402))

(declare-fun b!164403 () Bool)

(declare-fun e!99073 () Bool)

(declare-fun tp!82570 () Bool)

(assert (=> b!164403 (= e!99073 (and tp_is_empty!1639 tp!82570))))

(assert (=> b!162931 (= tp!82380 e!99073)))

(assert (= (and b!162931 ((_ is Cons!2804) (originalCharacters!540 (h!8203 (t!26086 tokens!465))))) b!164403))

(declare-fun b!164406 () Bool)

(declare-fun e!99076 () Bool)

(assert (=> b!164406 (= e!99076 true)))

(declare-fun b!164405 () Bool)

(declare-fun e!99075 () Bool)

(assert (=> b!164405 (= e!99075 e!99076)))

(declare-fun b!164404 () Bool)

(declare-fun e!99074 () Bool)

(assert (=> b!164404 (= e!99074 e!99075)))

(assert (=> b!162903 e!99074))

(assert (= b!164405 b!164406))

(assert (= b!164404 b!164405))

(assert (= (and b!162903 ((_ is Cons!2805) (t!26085 (t!26085 rules!1920)))) b!164404))

(assert (=> b!164406 (< (dynLambda!999 order!1425 (toValue!1152 (transformation!497 (h!8202 (t!26085 (t!26085 rules!1920)))))) (dynLambda!1000 order!1427 lambda!4448))))

(assert (=> b!164406 (< (dynLambda!1001 order!1429 (toChars!1011 (transformation!497 (h!8202 (t!26085 (t!26085 rules!1920)))))) (dynLambda!1000 order!1427 lambda!4448))))

(declare-fun e!99077 () Bool)

(assert (=> b!162919 (= tp!82364 e!99077)))

(declare-fun b!164407 () Bool)

(assert (=> b!164407 (= e!99077 tp_is_empty!1639)))

(declare-fun b!164408 () Bool)

(declare-fun tp!82571 () Bool)

(declare-fun tp!82575 () Bool)

(assert (=> b!164408 (= e!99077 (and tp!82571 tp!82575))))

(declare-fun b!164409 () Bool)

(declare-fun tp!82572 () Bool)

(assert (=> b!164409 (= e!99077 tp!82572)))

(declare-fun b!164410 () Bool)

(declare-fun tp!82573 () Bool)

(declare-fun tp!82574 () Bool)

(assert (=> b!164410 (= e!99077 (and tp!82573 tp!82574))))

(assert (= (and b!162919 ((_ is ElementMatch!721) (regOne!1955 (regex!497 (rule!1004 (h!8203 tokens!465)))))) b!164407))

(assert (= (and b!162919 ((_ is Concat!1241) (regOne!1955 (regex!497 (rule!1004 (h!8203 tokens!465)))))) b!164408))

(assert (= (and b!162919 ((_ is Star!721) (regOne!1955 (regex!497 (rule!1004 (h!8203 tokens!465)))))) b!164409))

(assert (= (and b!162919 ((_ is Union!721) (regOne!1955 (regex!497 (rule!1004 (h!8203 tokens!465)))))) b!164410))

(declare-fun e!99078 () Bool)

(assert (=> b!162919 (= tp!82365 e!99078)))

(declare-fun b!164411 () Bool)

(assert (=> b!164411 (= e!99078 tp_is_empty!1639)))

(declare-fun b!164412 () Bool)

(declare-fun tp!82576 () Bool)

(declare-fun tp!82580 () Bool)

(assert (=> b!164412 (= e!99078 (and tp!82576 tp!82580))))

(declare-fun b!164413 () Bool)

(declare-fun tp!82577 () Bool)

(assert (=> b!164413 (= e!99078 tp!82577)))

(declare-fun b!164414 () Bool)

(declare-fun tp!82578 () Bool)

(declare-fun tp!82579 () Bool)

(assert (=> b!164414 (= e!99078 (and tp!82578 tp!82579))))

(assert (= (and b!162919 ((_ is ElementMatch!721) (regTwo!1955 (regex!497 (rule!1004 (h!8203 tokens!465)))))) b!164411))

(assert (= (and b!162919 ((_ is Concat!1241) (regTwo!1955 (regex!497 (rule!1004 (h!8203 tokens!465)))))) b!164412))

(assert (= (and b!162919 ((_ is Star!721) (regTwo!1955 (regex!497 (rule!1004 (h!8203 tokens!465)))))) b!164413))

(assert (= (and b!162919 ((_ is Union!721) (regTwo!1955 (regex!497 (rule!1004 (h!8203 tokens!465)))))) b!164414))

(declare-fun e!99079 () Bool)

(assert (=> b!162917 (= tp!82362 e!99079)))

(declare-fun b!164415 () Bool)

(assert (=> b!164415 (= e!99079 tp_is_empty!1639)))

(declare-fun b!164416 () Bool)

(declare-fun tp!82581 () Bool)

(declare-fun tp!82585 () Bool)

(assert (=> b!164416 (= e!99079 (and tp!82581 tp!82585))))

(declare-fun b!164417 () Bool)

(declare-fun tp!82582 () Bool)

(assert (=> b!164417 (= e!99079 tp!82582)))

(declare-fun b!164418 () Bool)

(declare-fun tp!82583 () Bool)

(declare-fun tp!82584 () Bool)

(assert (=> b!164418 (= e!99079 (and tp!82583 tp!82584))))

(assert (= (and b!162917 ((_ is ElementMatch!721) (regOne!1954 (regex!497 (rule!1004 (h!8203 tokens!465)))))) b!164415))

(assert (= (and b!162917 ((_ is Concat!1241) (regOne!1954 (regex!497 (rule!1004 (h!8203 tokens!465)))))) b!164416))

(assert (= (and b!162917 ((_ is Star!721) (regOne!1954 (regex!497 (rule!1004 (h!8203 tokens!465)))))) b!164417))

(assert (= (and b!162917 ((_ is Union!721) (regOne!1954 (regex!497 (rule!1004 (h!8203 tokens!465)))))) b!164418))

(declare-fun e!99080 () Bool)

(assert (=> b!162917 (= tp!82366 e!99080)))

(declare-fun b!164419 () Bool)

(assert (=> b!164419 (= e!99080 tp_is_empty!1639)))

(declare-fun b!164420 () Bool)

(declare-fun tp!82586 () Bool)

(declare-fun tp!82590 () Bool)

(assert (=> b!164420 (= e!99080 (and tp!82586 tp!82590))))

(declare-fun b!164421 () Bool)

(declare-fun tp!82587 () Bool)

(assert (=> b!164421 (= e!99080 tp!82587)))

(declare-fun b!164422 () Bool)

(declare-fun tp!82588 () Bool)

(declare-fun tp!82589 () Bool)

(assert (=> b!164422 (= e!99080 (and tp!82588 tp!82589))))

(assert (= (and b!162917 ((_ is ElementMatch!721) (regTwo!1954 (regex!497 (rule!1004 (h!8203 tokens!465)))))) b!164419))

(assert (= (and b!162917 ((_ is Concat!1241) (regTwo!1954 (regex!497 (rule!1004 (h!8203 tokens!465)))))) b!164420))

(assert (= (and b!162917 ((_ is Star!721) (regTwo!1954 (regex!497 (rule!1004 (h!8203 tokens!465)))))) b!164421))

(assert (= (and b!162917 ((_ is Union!721) (regTwo!1954 (regex!497 (rule!1004 (h!8203 tokens!465)))))) b!164422))

(declare-fun b!164423 () Bool)

(declare-fun e!99081 () Bool)

(declare-fun tp!82591 () Bool)

(assert (=> b!164423 (= e!99081 (and tp_is_empty!1639 tp!82591))))

(assert (=> b!162958 (= tp!82407 e!99081)))

(assert (= (and b!162958 ((_ is Cons!2804) (t!26084 (originalCharacters!540 (h!8203 tokens!465))))) b!164423))

(declare-fun e!99082 () Bool)

(assert (=> b!162918 (= tp!82363 e!99082)))

(declare-fun b!164424 () Bool)

(assert (=> b!164424 (= e!99082 tp_is_empty!1639)))

(declare-fun b!164425 () Bool)

(declare-fun tp!82592 () Bool)

(declare-fun tp!82596 () Bool)

(assert (=> b!164425 (= e!99082 (and tp!82592 tp!82596))))

(declare-fun b!164426 () Bool)

(declare-fun tp!82593 () Bool)

(assert (=> b!164426 (= e!99082 tp!82593)))

(declare-fun b!164427 () Bool)

(declare-fun tp!82594 () Bool)

(declare-fun tp!82595 () Bool)

(assert (=> b!164427 (= e!99082 (and tp!82594 tp!82595))))

(assert (= (and b!162918 ((_ is ElementMatch!721) (reg!1050 (regex!497 (rule!1004 (h!8203 tokens!465)))))) b!164424))

(assert (= (and b!162918 ((_ is Concat!1241) (reg!1050 (regex!497 (rule!1004 (h!8203 tokens!465)))))) b!164425))

(assert (= (and b!162918 ((_ is Star!721) (reg!1050 (regex!497 (rule!1004 (h!8203 tokens!465)))))) b!164426))

(assert (= (and b!162918 ((_ is Union!721) (reg!1050 (regex!497 (rule!1004 (h!8203 tokens!465)))))) b!164427))

(declare-fun e!99083 () Bool)

(assert (=> b!162940 (= tp!82388 e!99083)))

(declare-fun b!164428 () Bool)

(assert (=> b!164428 (= e!99083 tp_is_empty!1639)))

(declare-fun b!164429 () Bool)

(declare-fun tp!82597 () Bool)

(declare-fun tp!82601 () Bool)

(assert (=> b!164429 (= e!99083 (and tp!82597 tp!82601))))

(declare-fun b!164430 () Bool)

(declare-fun tp!82598 () Bool)

(assert (=> b!164430 (= e!99083 tp!82598)))

(declare-fun b!164431 () Bool)

(declare-fun tp!82599 () Bool)

(declare-fun tp!82600 () Bool)

(assert (=> b!164431 (= e!99083 (and tp!82599 tp!82600))))

(assert (= (and b!162940 ((_ is ElementMatch!721) (reg!1050 (regex!497 (rule!1004 separatorToken!170))))) b!164428))

(assert (= (and b!162940 ((_ is Concat!1241) (reg!1050 (regex!497 (rule!1004 separatorToken!170))))) b!164429))

(assert (= (and b!162940 ((_ is Star!721) (reg!1050 (regex!497 (rule!1004 separatorToken!170))))) b!164430))

(assert (= (and b!162940 ((_ is Union!721) (reg!1050 (regex!497 (rule!1004 separatorToken!170))))) b!164431))

(declare-fun b!164434 () Bool)

(declare-fun e!99086 () Bool)

(assert (=> b!164434 (= e!99086 true)))

(declare-fun b!164433 () Bool)

(declare-fun e!99085 () Bool)

(assert (=> b!164433 (= e!99085 e!99086)))

(declare-fun b!164432 () Bool)

(declare-fun e!99084 () Bool)

(assert (=> b!164432 (= e!99084 e!99085)))

(assert (=> b!162543 e!99084))

(assert (= b!164433 b!164434))

(assert (= b!164432 b!164433))

(assert (= (and b!162543 ((_ is Cons!2805) (t!26085 rules!1920))) b!164432))

(assert (=> b!164434 (< (dynLambda!999 order!1425 (toValue!1152 (transformation!497 (h!8202 (t!26085 rules!1920))))) (dynLambda!1000 order!1427 lambda!4456))))

(assert (=> b!164434 (< (dynLambda!1001 order!1429 (toChars!1011 (transformation!497 (h!8202 (t!26085 rules!1920))))) (dynLambda!1000 order!1427 lambda!4456))))

(declare-fun e!99087 () Bool)

(assert (=> b!162939 (= tp!82387 e!99087)))

(declare-fun b!164435 () Bool)

(assert (=> b!164435 (= e!99087 tp_is_empty!1639)))

(declare-fun b!164436 () Bool)

(declare-fun tp!82602 () Bool)

(declare-fun tp!82606 () Bool)

(assert (=> b!164436 (= e!99087 (and tp!82602 tp!82606))))

(declare-fun b!164437 () Bool)

(declare-fun tp!82603 () Bool)

(assert (=> b!164437 (= e!99087 tp!82603)))

(declare-fun b!164438 () Bool)

(declare-fun tp!82604 () Bool)

(declare-fun tp!82605 () Bool)

(assert (=> b!164438 (= e!99087 (and tp!82604 tp!82605))))

(assert (= (and b!162939 ((_ is ElementMatch!721) (regOne!1954 (regex!497 (rule!1004 separatorToken!170))))) b!164435))

(assert (= (and b!162939 ((_ is Concat!1241) (regOne!1954 (regex!497 (rule!1004 separatorToken!170))))) b!164436))

(assert (= (and b!162939 ((_ is Star!721) (regOne!1954 (regex!497 (rule!1004 separatorToken!170))))) b!164437))

(assert (= (and b!162939 ((_ is Union!721) (regOne!1954 (regex!497 (rule!1004 separatorToken!170))))) b!164438))

(declare-fun e!99088 () Bool)

(assert (=> b!162939 (= tp!82391 e!99088)))

(declare-fun b!164439 () Bool)

(assert (=> b!164439 (= e!99088 tp_is_empty!1639)))

(declare-fun b!164440 () Bool)

(declare-fun tp!82607 () Bool)

(declare-fun tp!82611 () Bool)

(assert (=> b!164440 (= e!99088 (and tp!82607 tp!82611))))

(declare-fun b!164441 () Bool)

(declare-fun tp!82608 () Bool)

(assert (=> b!164441 (= e!99088 tp!82608)))

(declare-fun b!164442 () Bool)

(declare-fun tp!82609 () Bool)

(declare-fun tp!82610 () Bool)

(assert (=> b!164442 (= e!99088 (and tp!82609 tp!82610))))

(assert (= (and b!162939 ((_ is ElementMatch!721) (regTwo!1954 (regex!497 (rule!1004 separatorToken!170))))) b!164439))

(assert (= (and b!162939 ((_ is Concat!1241) (regTwo!1954 (regex!497 (rule!1004 separatorToken!170))))) b!164440))

(assert (= (and b!162939 ((_ is Star!721) (regTwo!1954 (regex!497 (rule!1004 separatorToken!170))))) b!164441))

(assert (= (and b!162939 ((_ is Union!721) (regTwo!1954 (regex!497 (rule!1004 separatorToken!170))))) b!164442))

(declare-fun b!164451 () Bool)

(declare-fun e!99094 () Bool)

(declare-fun tp!82620 () Bool)

(declare-fun tp!82619 () Bool)

(assert (=> b!164451 (= e!99094 (and (inv!3624 (left!2115 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (value!18480 separatorToken!170))))) tp!82620 (inv!3624 (right!2445 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (value!18480 separatorToken!170))))) tp!82619))))

(declare-fun b!164453 () Bool)

(declare-fun e!99093 () Bool)

(declare-fun tp!82618 () Bool)

(assert (=> b!164453 (= e!99093 tp!82618)))

(declare-fun b!164452 () Bool)

(declare-fun inv!3631 (IArray!1633) Bool)

(assert (=> b!164452 (= e!99094 (and (inv!3631 (xs!3411 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (value!18480 separatorToken!170))))) e!99093))))

(assert (=> b!162627 (= tp!82295 (and (inv!3624 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (value!18480 separatorToken!170)))) e!99094))))

(assert (= (and b!162627 ((_ is Node!816) (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (value!18480 separatorToken!170))))) b!164451))

(assert (= b!164452 b!164453))

(assert (= (and b!162627 ((_ is Leaf!1404) (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (value!18480 separatorToken!170))))) b!164452))

(declare-fun m!156913 () Bool)

(assert (=> b!164451 m!156913))

(declare-fun m!156915 () Bool)

(assert (=> b!164451 m!156915))

(declare-fun m!156917 () Bool)

(assert (=> b!164452 m!156917))

(assert (=> b!162627 m!152669))

(declare-fun e!99095 () Bool)

(assert (=> b!162941 (= tp!82389 e!99095)))

(declare-fun b!164454 () Bool)

(assert (=> b!164454 (= e!99095 tp_is_empty!1639)))

(declare-fun b!164455 () Bool)

(declare-fun tp!82621 () Bool)

(declare-fun tp!82625 () Bool)

(assert (=> b!164455 (= e!99095 (and tp!82621 tp!82625))))

(declare-fun b!164456 () Bool)

(declare-fun tp!82622 () Bool)

(assert (=> b!164456 (= e!99095 tp!82622)))

(declare-fun b!164457 () Bool)

(declare-fun tp!82623 () Bool)

(declare-fun tp!82624 () Bool)

(assert (=> b!164457 (= e!99095 (and tp!82623 tp!82624))))

(assert (= (and b!162941 ((_ is ElementMatch!721) (regOne!1955 (regex!497 (rule!1004 separatorToken!170))))) b!164454))

(assert (= (and b!162941 ((_ is Concat!1241) (regOne!1955 (regex!497 (rule!1004 separatorToken!170))))) b!164455))

(assert (= (and b!162941 ((_ is Star!721) (regOne!1955 (regex!497 (rule!1004 separatorToken!170))))) b!164456))

(assert (= (and b!162941 ((_ is Union!721) (regOne!1955 (regex!497 (rule!1004 separatorToken!170))))) b!164457))

(declare-fun e!99096 () Bool)

(assert (=> b!162941 (= tp!82390 e!99096)))

(declare-fun b!164458 () Bool)

(assert (=> b!164458 (= e!99096 tp_is_empty!1639)))

(declare-fun b!164459 () Bool)

(declare-fun tp!82626 () Bool)

(declare-fun tp!82630 () Bool)

(assert (=> b!164459 (= e!99096 (and tp!82626 tp!82630))))

(declare-fun b!164460 () Bool)

(declare-fun tp!82627 () Bool)

(assert (=> b!164460 (= e!99096 tp!82627)))

(declare-fun b!164461 () Bool)

(declare-fun tp!82628 () Bool)

(declare-fun tp!82629 () Bool)

(assert (=> b!164461 (= e!99096 (and tp!82628 tp!82629))))

(assert (= (and b!162941 ((_ is ElementMatch!721) (regTwo!1955 (regex!497 (rule!1004 separatorToken!170))))) b!164458))

(assert (= (and b!162941 ((_ is Concat!1241) (regTwo!1955 (regex!497 (rule!1004 separatorToken!170))))) b!164459))

(assert (= (and b!162941 ((_ is Star!721) (regTwo!1955 (regex!497 (rule!1004 separatorToken!170))))) b!164460))

(assert (= (and b!162941 ((_ is Union!721) (regTwo!1955 (regex!497 (rule!1004 separatorToken!170))))) b!164461))

(declare-fun b!164464 () Bool)

(declare-fun e!99099 () Bool)

(assert (=> b!164464 (= e!99099 true)))

(declare-fun b!164463 () Bool)

(declare-fun e!99098 () Bool)

(assert (=> b!164463 (= e!99098 e!99099)))

(declare-fun b!164462 () Bool)

(declare-fun e!99097 () Bool)

(assert (=> b!164462 (= e!99097 e!99098)))

(assert (=> b!162624 e!99097))

(assert (= b!164463 b!164464))

(assert (= b!164462 b!164463))

(assert (= (and b!162624 ((_ is Cons!2805) (t!26085 rules!1920))) b!164462))

(assert (=> b!164464 (< (dynLambda!999 order!1425 (toValue!1152 (transformation!497 (h!8202 (t!26085 rules!1920))))) (dynLambda!1000 order!1427 lambda!4465))))

(assert (=> b!164464 (< (dynLambda!1001 order!1429 (toChars!1011 (transformation!497 (h!8202 (t!26085 rules!1920))))) (dynLambda!1000 order!1427 lambda!4465))))

(declare-fun e!99100 () Bool)

(assert (=> b!162951 (= tp!82400 e!99100)))

(declare-fun b!164465 () Bool)

(assert (=> b!164465 (= e!99100 tp_is_empty!1639)))

(declare-fun b!164466 () Bool)

(declare-fun tp!82631 () Bool)

(declare-fun tp!82635 () Bool)

(assert (=> b!164466 (= e!99100 (and tp!82631 tp!82635))))

(declare-fun b!164467 () Bool)

(declare-fun tp!82632 () Bool)

(assert (=> b!164467 (= e!99100 tp!82632)))

(declare-fun b!164468 () Bool)

(declare-fun tp!82633 () Bool)

(declare-fun tp!82634 () Bool)

(assert (=> b!164468 (= e!99100 (and tp!82633 tp!82634))))

(assert (= (and b!162951 ((_ is ElementMatch!721) (regex!497 (h!8202 (t!26085 rules!1920))))) b!164465))

(assert (= (and b!162951 ((_ is Concat!1241) (regex!497 (h!8202 (t!26085 rules!1920))))) b!164466))

(assert (= (and b!162951 ((_ is Star!721) (regex!497 (h!8202 (t!26085 rules!1920))))) b!164467))

(assert (= (and b!162951 ((_ is Union!721) (regex!497 (h!8202 (t!26085 rules!1920))))) b!164468))

(declare-fun b!164469 () Bool)

(declare-fun e!99101 () Bool)

(declare-fun tp!82636 () Bool)

(assert (=> b!164469 (= e!99101 (and tp_is_empty!1639 tp!82636))))

(assert (=> b!162957 (= tp!82406 e!99101)))

(assert (= (and b!162957 ((_ is Cons!2804) (t!26084 (originalCharacters!540 separatorToken!170)))) b!164469))

(declare-fun b!164472 () Bool)

(declare-fun e!99104 () Bool)

(assert (=> b!164472 (= e!99104 true)))

(declare-fun b!164471 () Bool)

(declare-fun e!99103 () Bool)

(assert (=> b!164471 (= e!99103 e!99104)))

(declare-fun b!164470 () Bool)

(declare-fun e!99102 () Bool)

(assert (=> b!164470 (= e!99102 e!99103)))

(assert (=> b!162867 e!99102))

(assert (= b!164471 b!164472))

(assert (= b!164470 b!164471))

(assert (= (and b!162867 ((_ is Cons!2805) (t!26085 rules!1920))) b!164470))

(assert (=> b!164472 (< (dynLambda!999 order!1425 (toValue!1152 (transformation!497 (h!8202 (t!26085 rules!1920))))) (dynLambda!1000 order!1427 lambda!4479))))

(assert (=> b!164472 (< (dynLambda!1001 order!1429 (toChars!1011 (transformation!497 (h!8202 (t!26085 rules!1920))))) (dynLambda!1000 order!1427 lambda!4479))))

(declare-fun tp!82639 () Bool)

(declare-fun e!99106 () Bool)

(declare-fun b!164473 () Bool)

(declare-fun tp!82638 () Bool)

(assert (=> b!164473 (= e!99106 (and (inv!3624 (left!2115 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (value!18480 (h!8203 tokens!465)))))) tp!82639 (inv!3624 (right!2445 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (value!18480 (h!8203 tokens!465)))))) tp!82638))))

(declare-fun b!164475 () Bool)

(declare-fun e!99105 () Bool)

(declare-fun tp!82637 () Bool)

(assert (=> b!164475 (= e!99105 tp!82637)))

(declare-fun b!164474 () Bool)

(assert (=> b!164474 (= e!99106 (and (inv!3631 (xs!3411 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (value!18480 (h!8203 tokens!465)))))) e!99105))))

(assert (=> b!162434 (= tp!82293 (and (inv!3624 (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (value!18480 (h!8203 tokens!465))))) e!99106))))

(assert (= (and b!162434 ((_ is Node!816) (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (value!18480 (h!8203 tokens!465)))))) b!164473))

(assert (= b!164474 b!164475))

(assert (= (and b!162434 ((_ is Leaf!1404) (c!32407 (dynLambda!1004 (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (value!18480 (h!8203 tokens!465)))))) b!164474))

(declare-fun m!156919 () Bool)

(assert (=> b!164473 m!156919))

(declare-fun m!156921 () Bool)

(assert (=> b!164473 m!156921))

(declare-fun m!156923 () Bool)

(assert (=> b!164474 m!156923))

(assert (=> b!162434 m!152393))

(declare-fun b!164478 () Bool)

(declare-fun b_free!6225 () Bool)

(declare-fun b_next!6225 () Bool)

(assert (=> b!164478 (= b_free!6225 (not b_next!6225))))

(declare-fun tp!82642 () Bool)

(declare-fun b_and!10457 () Bool)

(assert (=> b!164478 (= tp!82642 b_and!10457)))

(declare-fun b_free!6227 () Bool)

(declare-fun b_next!6227 () Bool)

(assert (=> b!164478 (= b_free!6227 (not b_next!6227))))

(declare-fun tb!6251 () Bool)

(declare-fun t!26412 () Bool)

(assert (=> (and b!164478 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 (t!26085 rules!1920))))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465)))))) t!26412) tb!6251))

(declare-fun result!8870 () Bool)

(assert (= result!8870 result!8680))

(assert (=> d!40336 t!26412))

(declare-fun tb!6253 () Bool)

(declare-fun t!26414 () Bool)

(assert (=> (and b!164478 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 (t!26085 rules!1920))))) (toChars!1011 (transformation!497 (rule!1004 call!6907)))) t!26414) tb!6253))

(declare-fun result!8872 () Bool)

(assert (= result!8872 result!8660))

(assert (=> d!40202 t!26414))

(declare-fun t!26416 () Bool)

(declare-fun tb!6255 () Bool)

(assert (=> (and b!164478 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 (t!26085 rules!1920))))) (toChars!1011 (transformation!497 (rule!1004 (ite c!32515 call!6911 (ite c!32516 separatorToken!170 call!6907)))))) t!26416) tb!6255))

(declare-fun result!8874 () Bool)

(assert (= result!8874 result!8690))

(assert (=> d!40300 t!26416))

(assert (=> b!163485 t!26412))

(declare-fun t!26418 () Bool)

(declare-fun tb!6257 () Bool)

(assert (=> (and b!164478 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 (t!26085 rules!1920))))) (toChars!1011 (transformation!497 (rule!1004 (ite c!32464 call!6881 (ite c!32465 separatorToken!170 call!6877)))))) t!26418) tb!6257))

(declare-fun result!8876 () Bool)

(assert (= result!8876 result!8740))

(assert (=> d!40646 t!26418))

(declare-fun tb!6259 () Bool)

(declare-fun t!26420 () Bool)

(assert (=> (and b!164478 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 (t!26085 rules!1920))))) (toChars!1011 (transformation!497 (rule!1004 (apply!390 lt!49245 0))))) t!26420) tb!6259))

(declare-fun result!8878 () Bool)

(assert (= result!8878 result!8720))

(assert (=> d!40510 t!26420))

(declare-fun t!26422 () Bool)

(declare-fun tb!6261 () Bool)

(assert (=> (and b!164478 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 (t!26085 rules!1920))))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465))))) t!26422) tb!6261))

(declare-fun result!8880 () Bool)

(assert (= result!8880 result!8568))

(assert (=> d!39900 t!26422))

(declare-fun tb!6263 () Bool)

(declare-fun t!26424 () Bool)

(assert (=> (and b!164478 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 (t!26085 rules!1920))))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (Cons!2806 (h!8203 tokens!465) Nil!2806)))))) t!26424) tb!6263))

(declare-fun result!8882 () Bool)

(assert (= result!8882 result!8760))

(assert (=> d!40698 t!26424))

(declare-fun t!26426 () Bool)

(declare-fun tb!6265 () Bool)

(assert (=> (and b!164478 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 (t!26085 rules!1920))))) (toChars!1011 (transformation!497 (rule!1004 separatorToken!170)))) t!26426) tb!6265))

(declare-fun result!8884 () Bool)

(assert (= result!8884 result!8582))

(assert (=> b!162817 t!26426))

(declare-fun t!26428 () Bool)

(declare-fun tb!6267 () Bool)

(assert (=> (and b!164478 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 (t!26085 rules!1920))))) (toChars!1011 (transformation!497 (rule!1004 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0))))) t!26428) tb!6267))

(declare-fun result!8886 () Bool)

(assert (= result!8886 result!8836))

(assert (=> d!40860 t!26428))

(declare-fun tb!6269 () Bool)

(declare-fun t!26430 () Bool)

(assert (=> (and b!164478 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 (t!26085 rules!1920))))) (toChars!1011 (transformation!497 (rule!1004 (apply!390 lt!49248 0))))) t!26430) tb!6269))

(declare-fun result!8888 () Bool)

(assert (= result!8888 result!8650))

(assert (=> d!40172 t!26430))

(declare-fun tb!6271 () Bool)

(declare-fun t!26432 () Bool)

(assert (=> (and b!164478 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 (t!26085 rules!1920))))) (toChars!1011 (transformation!497 (rule!1004 call!6877)))) t!26432) tb!6271))

(declare-fun result!8890 () Bool)

(assert (= result!8890 result!8640))

(assert (=> d!40130 t!26432))

(assert (=> b!162423 t!26422))

(assert (=> d!39892 t!26426))

(declare-fun tp!82643 () Bool)

(declare-fun b_and!10459 () Bool)

(assert (=> b!164478 (= tp!82643 (and (=> t!26424 result!8882) (=> t!26420 result!8878) (=> t!26426 result!8884) (=> t!26414 result!8872) (=> t!26432 result!8890) (=> t!26412 result!8870) (=> t!26430 result!8888) (=> t!26428 result!8886) (=> t!26422 result!8880) (=> t!26418 result!8876) (=> t!26416 result!8874) b_and!10459))))

(declare-fun e!99107 () Bool)

(assert (=> b!164478 (= e!99107 (and tp!82642 tp!82643))))

(declare-fun b!164477 () Bool)

(declare-fun e!99109 () Bool)

(declare-fun tp!82640 () Bool)

(assert (=> b!164477 (= e!99109 (and tp!82640 (inv!3617 (tag!675 (h!8202 (t!26085 (t!26085 rules!1920))))) (inv!3620 (transformation!497 (h!8202 (t!26085 (t!26085 rules!1920))))) e!99107))))

(declare-fun b!164476 () Bool)

(declare-fun e!99108 () Bool)

(declare-fun tp!82641 () Bool)

(assert (=> b!164476 (= e!99108 (and e!99109 tp!82641))))

(assert (=> b!162950 (= tp!82401 e!99108)))

(assert (= b!164477 b!164478))

(assert (= b!164476 b!164477))

(assert (= (and b!162950 ((_ is Cons!2805) (t!26085 (t!26085 rules!1920)))) b!164476))

(declare-fun m!156925 () Bool)

(assert (=> b!164477 m!156925))

(declare-fun m!156927 () Bool)

(assert (=> b!164477 m!156927))

(declare-fun b_lambda!3529 () Bool)

(assert (= b_lambda!3471 (or b!162538 b_lambda!3529)))

(declare-fun bs!15742 () Bool)

(declare-fun d!40894 () Bool)

(assert (= bs!15742 (and d!40894 b!162538)))

(assert (=> bs!15742 (= (dynLambda!1005 lambda!4456 (h!8203 (t!26086 tokens!465))) (rulesProduceIndividualToken!132 thiss!17480 rules!1920 (h!8203 (t!26086 tokens!465))))))

(declare-fun m!156929 () Bool)

(assert (=> bs!15742 m!156929))

(assert (=> d!40330 d!40894))

(declare-fun b_lambda!3531 () Bool)

(assert (= b_lambda!3453 (or b!162895 b_lambda!3531)))

(declare-fun bs!15743 () Bool)

(declare-fun d!40896 () Bool)

(assert (= bs!15743 (and d!40896 b!162895)))

(assert (=> bs!15743 (= (dynLambda!1005 lambda!4482 (h!8203 tokens!465)) (rulesProduceIndividualToken!132 thiss!17480 rules!1920 (h!8203 tokens!465)))))

(assert (=> bs!15743 m!152339))

(assert (=> d!40186 d!40896))

(declare-fun b_lambda!3533 () Bool)

(assert (= b_lambda!3527 (or b!162616 b_lambda!3533)))

(declare-fun bs!15744 () Bool)

(declare-fun d!40898 () Bool)

(assert (= bs!15744 (and d!40898 b!162616)))

(assert (=> bs!15744 (= (dynLambda!1005 lambda!4465 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)) (rulesProduceIndividualToken!132 thiss!17480 rules!1920 (apply!390 (seqFromList!372 (t!26086 tokens!465)) 0)))))

(assert (=> bs!15744 m!152627))

(declare-fun m!156931 () Bool)

(assert (=> bs!15744 m!156931))

(assert (=> d!40866 d!40898))

(declare-fun b_lambda!3535 () Bool)

(assert (= b_lambda!3485 (or b!162881 b_lambda!3535)))

(declare-fun bs!15745 () Bool)

(declare-fun d!40900 () Bool)

(assert (= bs!15745 (and d!40900 b!162881)))

(assert (=> bs!15745 (= (dynLambda!1005 lambda!4481 (apply!390 lt!49245 0)) (rulesProduceIndividualToken!132 thiss!17480 rules!1920 (apply!390 lt!49245 0)))))

(assert (=> bs!15745 m!153159))

(declare-fun m!156933 () Bool)

(assert (=> bs!15745 m!156933))

(assert (=> d!40514 d!40900))

(declare-fun b_lambda!3537 () Bool)

(assert (= b_lambda!3463 (or (and b!162354 b_free!6191 (= (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))))) (and b!164478 b_free!6227 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 (t!26085 rules!1920))))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))))) (and b!162952 b_free!6211 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 rules!1920)))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))))) (and b!162933 b_free!6207) (and b!162363 b_free!6187 (= (toChars!1011 (transformation!497 (h!8202 rules!1920))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))))) (and b!162366 b_free!6195 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))))) (and b!164394 b_free!6223 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 (t!26086 tokens!465)))))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))))) b_lambda!3537)))

(declare-fun b_lambda!3539 () Bool)

(assert (= b_lambda!3493 (or d!39988 b_lambda!3539)))

(declare-fun bs!15746 () Bool)

(declare-fun d!40902 () Bool)

(assert (= bs!15746 (and d!40902 d!39988)))

(assert (=> bs!15746 (= (dynLambda!1005 lambda!4479 (h!8203 (list!1011 lt!49245))) (rulesProduceIndividualToken!132 thiss!17480 rules!1920 (h!8203 (list!1011 lt!49245))))))

(assert (=> bs!15746 m!156515))

(assert (=> b!164006 d!40902))

(declare-fun b_lambda!3541 () Bool)

(assert (= b_lambda!3467 (or b!162362 b_lambda!3541)))

(declare-fun bs!15747 () Bool)

(declare-fun d!40904 () Bool)

(assert (= bs!15747 (and d!40904 b!162362)))

(assert (=> bs!15747 (= (dynLambda!1005 lambda!4447 (h!8203 (t!26086 tokens!465))) (not (isSeparator!497 (rule!1004 (h!8203 (t!26086 tokens!465))))))))

(assert (=> b!163502 d!40904))

(declare-fun b_lambda!3543 () Bool)

(assert (= b_lambda!3473 (or (and b!162354 b_free!6191 (= (toChars!1011 (transformation!497 (rule!1004 separatorToken!170))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))))) (and b!164478 b_free!6227 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 (t!26085 rules!1920))))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))))) (and b!162952 b_free!6211 (= (toChars!1011 (transformation!497 (h!8202 (t!26085 rules!1920)))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))))) (and b!162933 b_free!6207) (and b!162363 b_free!6187 (= (toChars!1011 (transformation!497 (h!8202 rules!1920))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))))) (and b!162366 b_free!6195 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 tokens!465)))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))))) (and b!164394 b_free!6223 (= (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 (t!26086 tokens!465)))))) (toChars!1011 (transformation!497 (rule!1004 (h!8203 (t!26086 tokens!465))))))) b_lambda!3543)))

(declare-fun b_lambda!3545 () Bool)

(assert (= b_lambda!3455 (or b!162350 b_lambda!3545)))

(declare-fun bs!15748 () Bool)

(declare-fun d!40906 () Bool)

(assert (= bs!15748 (and d!40906 b!162350)))

(assert (=> bs!15748 (= (dynLambda!1005 lambda!4448 (h!8203 (t!26086 tokens!465))) (rulesProduceIndividualToken!132 thiss!17480 rules!1920 (h!8203 (t!26086 tokens!465))))))

(assert (=> bs!15748 m!156929))

(assert (=> b!163368 d!40906))

(check-sat (not b!163963) (not b!163843) (not d!40604) (not d!40406) (not b!164410) (not b!164441) (not b_lambda!3495) (not tb!6035) (not b!163302) (not b!164089) (not b!163397) (not b!163800) (not b!163101) (not b!164453) (not d!40518) (not d!40292) (not b!163657) (not b!164088) (not d!40582) (not d!40198) (not bm!6987) (not b!164283) (not b!164308) (not d!40686) (not b!163203) (not b!164078) (not b!164050) (not d!40594) (not b!163851) (not b!163942) (not b!164466) (not b!164035) (not b!164304) (not b!164367) (not b!163933) (not bm!6999) (not b!163108) (not b!163646) (not b!164295) (not d!40226) (not d!40698) (not b!164364) (not b!163801) (not b!163817) (not d!40886) (not b!164347) (not b!163378) (not d!40522) (not b!163388) (not b!164334) (not d!40664) (not b!163835) (not d!40648) (not b!163207) (not b!163926) (not d!40090) (not b!164271) (not b!164442) (not b!163921) (not d!40170) (not b!163860) (not b!163100) (not d!40156) (not b!164414) (not b!163480) (not b!164273) (not b!164352) (not b!163333) (not b!164460) (not d!40300) (not d!40620) (not tb!6025) (not d!40214) (not d!40162) (not b!164359) (not b!164328) (not b!163534) (not b!163940) (not b!164385) (not b!163386) (not b!164369) (not b!163144) b_and!10447 (not b!164373) (not b!164060) (not b!164274) (not b!163318) (not b!163539) (not b_next!6221) (not b!163358) (not b!163804) (not b!164360) (not d!40656) (not d!40416) (not d!40880) (not d!40092) (not bs!15745) (not b!163994) (not d!40836) (not b_next!6191) (not b!163180) (not d!40662) (not b!164265) (not d!40144) (not d!40598) (not b!164033) (not b!164401) (not b!163535) (not b!163104) (not b_lambda!3449) (not b!163849) (not b!163514) (not b!164389) (not bs!15743) (not b!164087) (not b_next!6227) (not d!40076) (not d!40554) (not b!164270) (not b!164438) (not bm!7002) (not b!163664) (not bm!7003) (not b!163662) (not b!164431) b_and!10177 (not b_next!6225) (not d!40086) (not b!164417) (not b!163959) (not d!40514) (not d!40418) (not b!163815) (not d!40516) (not b!164362) (not b!164402) (not d!40740) (not b!163527) (not d!40510) (not b!164326) (not d!40602) (not b!163246) (not d!40746) b_and!10443 (not b!163821) (not b!163395) (not b!163451) (not bm!6982) (not bm!6942) (not b!163290) (not b!164421) (not tb!6145) (not d!40082) (not d!40520) (not b_lambda!3465) (not b!164284) (not b!164461) (not bm!6984) (not b_next!6193) (not b!164307) (not b!164475) (not d!40820) (not d!40332) (not bm!6974) (not d!40232) (not b_lambda!3535) (not b!163654) (not b!164459) (not b_lambda!3531) b_and!10451 (not b!164007) (not b!163517) (not b!164426) (not b!164350) (not bm!7005) (not d!40080) (not bm!6983) (not b!163797) (not d!40296) (not d!40888) (not b!164462) (not b!164026) (not d!40688) (not b!163515) (not b!163364) (not b!163511) (not b!164391) (not b!164413) (not bm!6932) (not d!40864) (not b!163408) (not b!164105) (not bm!6935) (not b_lambda!3441) (not b!163199) (not b!162627) (not d!40508) (not b!164386) (not d!40714) (not b_next!6187) (not b!162434) (not b!163301) (not d!40190) (not b!163281) (not d!40626) (not d!40152) (not tb!6105) (not b!164400) (not b!163497) (not b!164051) (not d!40512) (not b!164290) (not b_lambda!3529) (not b!163838) (not b_lambda!3545) (not b_lambda!3439) (not b!164430) (not d!40128) (not b!163369) (not b!163948) (not b!163861) (not d!40854) (not b!163453) (not b!164425) (not b!163820) (not b!164393) (not b_next!6223) (not b!163212) (not d!40266) (not bm!6985) (not b!164104) (not b!164420) (not b!163449) (not bm!6929) (not b!163356) (not d!40408) (not b!164469) (not d!40500) (not b!163834) (not b!164324) (not b_lambda!3541) (not b!163666) (not bm!6975) (not d!40202) (not b!164318) (not d!40678) (not b!163984) (not d!40632) (not b!164082) (not b!163176) (not tb!6045) (not b_lambda!3539) (not b!163532) (not bm!6997) (not b!163658) (not d!40492) (not d!40194) (not bm!6940) (not bm!6973) (not b!164365) (not b!164310) (not bm!7004) (not d!40490) (not b!164412) (not b!163276) (not b!163261) (not b!164355) (not b_lambda!3537) (not d!40334) (not b!164451) (not b!163837) (not b!164004) (not b_lambda!3433) (not d!40314) (not d!40166) (not d!40504) (not b!164436) (not b!163205) (not d!40818) (not b!164398) (not d!40692) (not b!163272) (not b!163487) (not d!40736) (not bs!15748) (not b!163516) b_and!10237 b_and!10173 (not b!163938) (not b!163485) (not d!40560) (not d!40682) (not d!40130) (not d!40212) (not b!163308) (not b!163251) (not b!163175) (not d!40832) (not b!163651) (not d!40876) (not d!40168) (not bm!6988) (not b!164408) (not b!163278) (not b_lambda!3435) (not b!164368) (not b!164388) (not b!164025) (not b!163525) (not b_next!6195) (not d!40410) (not d!40822) (not b!163329) (not b!164312) (not b!164358) (not d!40706) (not b!164374) (not b!163105) (not b!163372) (not b!163640) (not b!163934) (not bs!15742) (not b!163924) (not b!163806) (not d!40078) (not d!40826) (not b!164076) (not b!164325) (not b!163923) (not d!40340) (not b!164343) (not b!164477) (not d!40482) (not b!164339) (not b!164031) (not b!163537) (not d!40608) (not b!164366) (not b!164275) (not b!163925) (not d!40184) (not d!40844) b_and!10169 (not b!163648) (not d!40878) (not b!164052) (not b!164380) (not b!164457) (not b!163309) (not b!163300) (not d!40104) (not b!163400) (not d!40810) (not b!163476) (not d!40330) (not b!163503) (not d!40834) (not b!163201) (not b!164263) (not b!164340) (not bm!6927) (not d!40684) b_and!10455 (not b!164327) (not b!163639) (not b!164353) (not b!164081) (not b!163267) (not d!40218) (not b!163489) (not b!164028) tp_is_empty!1639 (not bm!6937) (not b!163479) (not b!163337) (not b!163996) (not bm!6978) (not d!40216) (not d!40402) (not b_lambda!3543) (not b!164010) b_and!10453 (not d!40236) (not d!40172) (not b!164418) (not d!40270) (not bm!7001) b_and!10449 (not b!164392) (not d!40584) (not b!163178) (not b!164349) (not b!163399) (not d!40640) (not b!164440) (not b!163809) (not b_lambda!3457) (not b!164452) (not d!40728) (not b!163371) (not b!163850) (not b!164323) (not d!40696) (not b!164375) (not d!40862) (not b!163390) (not d!40134) (not d!40160) (not b_next!6205) (not b!164377) (not bm!6928) (not b!163391) (not d!40106) (not d!40734) (not b!163653) (not b!164384) (not b!163361) (not tb!6065) (not d!40892) (not b!163402) (not d!40858) (not d!40136) (not b!163316) (not b_lambda!3533) (not d!40708) (not b!164432) (not b!163944) (not d!40188) (not b!163958) (not b!163523) (not b!164264) (not b!163177) (not b!163644) (not b!163650) (not b!164329) (not b!164379) (not b!164437) (not b!163478) (not b!163811) (not d!40200) (not d!40744) (not b!164404) (not b!164357) (not b!164473) (not b!163241) (not b!163262) (not d!40846) (not b!163641) b_and!10445 (not d!40084) (not b!163870) (not b!163983) (not b_next!6207) (not b_lambda!3525) (not b!164467) (not b!164476) (not b!164094) (not b!164098) (not b!164289) (not b!163919) (not b!163357) (not b!163941) (not b!163943) (not b!163512) (not b!163839) (not b!164390) b_and!10459 (not d!40646) (not b!163962) (not b!163382) (not b!164042) (not b_next!6189) (not tb!6075) (not d!40718) (not b!164027) (not b!164003) (not d!40338) (not b!164341) (not d!40186) (not b!163367) (not b!164344) (not b!163973) (not b_lambda!3483) (not b!164351) (not b_lambda!3431) (not b!163362) (not d!40824) (not b!164468) (not b!163363) (not d!40164) (not b_lambda!3437) (not b_next!6209) (not bm!6980) (not b!164099) (not d!40874) (not b!163299) (not b!164403) (not d!40238) (not b!163798) (not b!164280) (not bs!15746) (not d!40342) (not d!40294) (not d!40228) (not d!40220) (not b!163812) (not b_next!6185) (not b_lambda!3501) (not d!40694) (not b!163145) (not d!40404) (not b!164456) (not b!163359) (not b!164286) (not b!164427) (not d!40840) (not tb!6219) (not d!40722) (not bm!6943) (not b!163655) (not b!164306) (not d!40658) (not b!163509) (not bm!6936) (not d!40872) (not d!40828) (not b!164346) (not b!164330) (not d!40866) (not d!40576) (not b!163932) (not b!164062) (not b!164354) (not b_lambda!3451) (not bm!6946) (not d!40580) (not b!163985) (not b!163215) (not d!40400) (not d!40856) (not d!40884) (not d!40386) (not b!163652) (not b!164300) (not b!163332) (not d!40816) (not b!164005) (not b!164409) (not b!163920) (not b!163980) (not d!40336) (not b!164114) (not b!163957) (not b!164272) (not b!163477) (not b!163275) (not b!164422) (not b!163865) (not b!163518) (not b!163383) (not d!40848) (not d!40860) (not b!164085) (not b!164079) (not d!40398) (not b!163146) (not bm!6941) (not d!40666) (not b!164397) (not b!164348) (not d!40088) (not d!40842) (not b!163960) (not bm!6939) (not b!163808) b_and!10241 (not b!163521) (not tb!6125) (not b!164378) (not d!40690) (not b!164429) (not b!164416) (not b!163510) (not b!163142) (not d!40392) (not b!163380) (not d!40196) (not b!164342) (not bs!15744) (not d!40644) (not b!163303) (not d!40176) (not d!40488) (not b!163109) (not b!164470) (not bm!6945) (not b!164109) b_and!10457 (not d!40830) (not b!164455) (not b!164474) (not b!164396) (not b!164423) (not b_next!6211) (not d!40870) (not b!163263) (not b!164309) (not b!163848) (not b!163836) (not b!163855) (not b!163285))
(check-sat (not b_next!6191) b_and!10443 (not b_next!6193) b_and!10451 (not b_next!6187) (not b_next!6223) (not b_next!6195) b_and!10169 b_and!10455 (not b_next!6205) b_and!10445 (not b_next!6209) (not b_next!6185) b_and!10241 b_and!10457 (not b_next!6211) b_and!10447 (not b_next!6221) (not b_next!6227) b_and!10177 (not b_next!6225) b_and!10237 b_and!10173 b_and!10453 b_and!10449 (not b_next!6207) b_and!10459 (not b_next!6189))
