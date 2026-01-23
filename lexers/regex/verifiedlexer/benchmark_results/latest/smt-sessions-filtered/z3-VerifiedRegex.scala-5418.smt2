; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!275620 () Bool)

(assert start!275620)

(declare-fun b!2834573 () Bool)

(declare-fun b_free!81693 () Bool)

(declare-fun b_next!82397 () Bool)

(assert (=> b!2834573 (= b_free!81693 (not b_next!82397))))

(declare-fun tp!906454 () Bool)

(declare-fun b_and!207491 () Bool)

(assert (=> b!2834573 (= tp!906454 b_and!207491)))

(declare-fun b_free!81695 () Bool)

(declare-fun b_next!82399 () Bool)

(assert (=> b!2834573 (= b_free!81695 (not b_next!82399))))

(declare-fun tp!906452 () Bool)

(declare-fun b_and!207493 () Bool)

(assert (=> b!2834573 (= tp!906452 b_and!207493)))

(declare-fun b!2834564 () Bool)

(declare-fun b_free!81697 () Bool)

(declare-fun b_next!82401 () Bool)

(assert (=> b!2834564 (= b_free!81697 (not b_next!82401))))

(declare-fun tp!906456 () Bool)

(declare-fun b_and!207495 () Bool)

(assert (=> b!2834564 (= tp!906456 b_and!207495)))

(declare-fun b_free!81699 () Bool)

(declare-fun b_next!82403 () Bool)

(assert (=> b!2834564 (= b_free!81699 (not b_next!82403))))

(declare-fun tp!906455 () Bool)

(declare-fun b_and!207497 () Bool)

(assert (=> b!2834564 (= tp!906455 b_and!207497)))

(declare-fun b!2834562 () Bool)

(declare-fun res!1179804 () Bool)

(declare-fun e!1794942 () Bool)

(assert (=> b!2834562 (=> (not res!1179804) (not e!1794942))))

(declare-datatypes ((List!33590 0))(
  ( (Nil!33466) (Cons!33466 (h!38886 (_ BitVec 16)) (t!231783 List!33590)) )
))
(declare-datatypes ((TokenValue!5252 0))(
  ( (FloatLiteralValue!10504 (text!37209 List!33590)) (TokenValueExt!5251 (__x!22242 Int)) (Broken!26260 (value!161470 List!33590)) (Object!5375) (End!5252) (Def!5252) (Underscore!5252) (Match!5252) (Else!5252) (Error!5252) (Case!5252) (If!5252) (Extends!5252) (Abstract!5252) (Class!5252) (Val!5252) (DelimiterValue!10504 (del!5312 List!33590)) (KeywordValue!5258 (value!161471 List!33590)) (CommentValue!10504 (value!161472 List!33590)) (WhitespaceValue!10504 (value!161473 List!33590)) (IndentationValue!5252 (value!161474 List!33590)) (String!36781) (Int32!5252) (Broken!26261 (value!161475 List!33590)) (Boolean!5253) (Unit!47410) (OperatorValue!5255 (op!5312 List!33590)) (IdentifierValue!10504 (value!161476 List!33590)) (IdentifierValue!10505 (value!161477 List!33590)) (WhitespaceValue!10505 (value!161478 List!33590)) (True!10504) (False!10504) (Broken!26262 (value!161479 List!33590)) (Broken!26263 (value!161480 List!33590)) (True!10505) (RightBrace!5252) (RightBracket!5252) (Colon!5252) (Null!5252) (Comma!5252) (LeftBracket!5252) (False!10505) (LeftBrace!5252) (ImaginaryLiteralValue!5252 (text!37210 List!33590)) (StringLiteralValue!15756 (value!161481 List!33590)) (EOFValue!5252 (value!161482 List!33590)) (IdentValue!5252 (value!161483 List!33590)) (DelimiterValue!10505 (value!161484 List!33590)) (DedentValue!5252 (value!161485 List!33590)) (NewLineValue!5252 (value!161486 List!33590)) (IntegerValue!15756 (value!161487 (_ BitVec 32)) (text!37211 List!33590)) (IntegerValue!15757 (value!161488 Int) (text!37212 List!33590)) (Times!5252) (Or!5252) (Equal!5252) (Minus!5252) (Broken!26264 (value!161489 List!33590)) (And!5252) (Div!5252) (LessEqual!5252) (Mod!5252) (Concat!13665) (Not!5252) (Plus!5252) (SpaceValue!5252 (value!161490 List!33590)) (IntegerValue!15758 (value!161491 Int) (text!37213 List!33590)) (StringLiteralValue!15757 (text!37214 List!33590)) (FloatLiteralValue!10505 (text!37215 List!33590)) (BytesLiteralValue!5252 (value!161492 List!33590)) (CommentValue!10505 (value!161493 List!33590)) (StringLiteralValue!15758 (value!161494 List!33590)) (ErrorTokenValue!5252 (msg!5313 List!33590)) )
))
(declare-datatypes ((C!17008 0))(
  ( (C!17009 (val!10516 Int)) )
))
(declare-datatypes ((String!36782 0))(
  ( (String!36783 (value!161495 String)) )
))
(declare-datatypes ((Regex!8413 0))(
  ( (ElementMatch!8413 (c!458141 C!17008)) (Concat!13666 (regOne!17338 Regex!8413) (regTwo!17338 Regex!8413)) (EmptyExpr!8413) (Star!8413 (reg!8742 Regex!8413)) (EmptyLang!8413) (Union!8413 (regOne!17339 Regex!8413) (regTwo!17339 Regex!8413)) )
))
(declare-datatypes ((List!33591 0))(
  ( (Nil!33467) (Cons!33467 (h!38887 C!17008) (t!231784 List!33591)) )
))
(declare-datatypes ((IArray!20803 0))(
  ( (IArray!20804 (innerList!10459 List!33591)) )
))
(declare-datatypes ((Conc!10399 0))(
  ( (Node!10399 (left!25253 Conc!10399) (right!25583 Conc!10399) (csize!21028 Int) (cheight!10610 Int)) (Leaf!15818 (xs!13511 IArray!20803) (csize!21029 Int)) (Empty!10399) )
))
(declare-datatypes ((BalanceConc!20436 0))(
  ( (BalanceConc!20437 (c!458142 Conc!10399)) )
))
(declare-datatypes ((TokenValueInjection!9932 0))(
  ( (TokenValueInjection!9933 (toValue!7060 Int) (toChars!6919 Int)) )
))
(declare-datatypes ((Rule!9844 0))(
  ( (Rule!9845 (regex!5022 Regex!8413) (tag!5526 String!36782) (isSeparator!5022 Bool) (transformation!5022 TokenValueInjection!9932)) )
))
(declare-datatypes ((List!33592 0))(
  ( (Nil!33468) (Cons!33468 (h!38888 Rule!9844) (t!231785 List!33592)) )
))
(declare-fun rules!1047 () List!33592)

(declare-fun isEmpty!18451 (List!33592) Bool)

(assert (=> b!2834562 (= res!1179804 (not (isEmpty!18451 rules!1047)))))

(declare-fun b!2834563 () Bool)

(declare-fun res!1179803 () Bool)

(assert (=> b!2834563 (=> (not res!1179803) (not e!1794942))))

(declare-datatypes ((Token!9446 0))(
  ( (Token!9447 (value!161496 TokenValue!5252) (rule!7450 Rule!9844) (size!26036 Int) (originalCharacters!5754 List!33591)) )
))
(declare-datatypes ((List!33593 0))(
  ( (Nil!33469) (Cons!33469 (h!38889 Token!9446) (t!231786 List!33593)) )
))
(declare-fun l!4019 () List!33593)

(get-info :version)

(assert (=> b!2834563 (= res!1179803 (and ((_ is Cons!33469) l!4019) ((_ is Cons!33469) (t!231786 l!4019))))))

(declare-fun e!1794943 () Bool)

(assert (=> b!2834564 (= e!1794943 (and tp!906456 tp!906455))))

(declare-fun res!1179805 () Bool)

(assert (=> start!275620 (=> (not res!1179805) (not e!1794942))))

(declare-datatypes ((LexerInterface!4612 0))(
  ( (LexerInterfaceExt!4609 (__x!22243 Int)) (Lexer!4610) )
))
(declare-fun thiss!11007 () LexerInterface!4612)

(assert (=> start!275620 (= res!1179805 ((_ is Lexer!4610) thiss!11007))))

(assert (=> start!275620 e!1794942))

(assert (=> start!275620 true))

(declare-fun e!1794944 () Bool)

(assert (=> start!275620 e!1794944))

(declare-fun e!1794947 () Bool)

(assert (=> start!275620 e!1794947))

(declare-fun e!1794941 () Bool)

(declare-fun e!1794950 () Bool)

(declare-fun b!2834565 () Bool)

(declare-fun tp!906450 () Bool)

(declare-fun inv!45430 (String!36782) Bool)

(declare-fun inv!45433 (TokenValueInjection!9932) Bool)

(assert (=> b!2834565 (= e!1794941 (and tp!906450 (inv!45430 (tag!5526 (h!38888 rules!1047))) (inv!45433 (transformation!5022 (h!38888 rules!1047))) e!1794950))))

(declare-fun b!2834566 () Bool)

(declare-fun tp!906448 () Bool)

(assert (=> b!2834566 (= e!1794944 (and e!1794941 tp!906448))))

(declare-fun b!2834567 () Bool)

(declare-fun size!26037 (BalanceConc!20436) Int)

(declare-fun charsOf!3108 (Token!9446) BalanceConc!20436)

(assert (=> b!2834567 (= e!1794942 (not (> (size!26037 (charsOf!3108 (h!38889 (t!231786 l!4019)))) 0)))))

(declare-fun rulesProduceIndividualToken!2142 (LexerInterface!4612 List!33592 Token!9446) Bool)

(assert (=> b!2834567 (rulesProduceIndividualToken!2142 thiss!11007 rules!1047 (h!38889 (t!231786 l!4019)))))

(declare-datatypes ((Unit!47411 0))(
  ( (Unit!47412) )
))
(declare-fun lt!1010766 () Unit!47411)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!756 (LexerInterface!4612 List!33592 List!33593 Token!9446) Unit!47411)

(assert (=> b!2834567 (= lt!1010766 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!756 thiss!11007 rules!1047 l!4019 (h!38889 (t!231786 l!4019))))))

(assert (=> b!2834567 (rulesProduceIndividualToken!2142 thiss!11007 rules!1047 (h!38889 l!4019))))

(declare-fun lt!1010767 () Unit!47411)

(assert (=> b!2834567 (= lt!1010767 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!756 thiss!11007 rules!1047 l!4019 (h!38889 l!4019)))))

(declare-fun b!2834568 () Bool)

(declare-fun e!1794946 () Bool)

(declare-fun tp!906453 () Bool)

(declare-fun inv!45434 (Token!9446) Bool)

(assert (=> b!2834568 (= e!1794947 (and (inv!45434 (h!38889 l!4019)) e!1794946 tp!906453))))

(declare-fun b!2834569 () Bool)

(declare-fun res!1179808 () Bool)

(assert (=> b!2834569 (=> (not res!1179808) (not e!1794942))))

(declare-datatypes ((IArray!20805 0))(
  ( (IArray!20806 (innerList!10460 List!33593)) )
))
(declare-datatypes ((Conc!10400 0))(
  ( (Node!10400 (left!25254 Conc!10400) (right!25584 Conc!10400) (csize!21030 Int) (cheight!10611 Int)) (Leaf!15819 (xs!13512 IArray!20805) (csize!21031 Int)) (Empty!10400) )
))
(declare-datatypes ((BalanceConc!20438 0))(
  ( (BalanceConc!20439 (c!458143 Conc!10400)) )
))
(declare-fun rulesProduceEachTokenIndividually!1128 (LexerInterface!4612 List!33592 BalanceConc!20438) Bool)

(declare-fun seqFromList!3268 (List!33593) BalanceConc!20438)

(assert (=> b!2834569 (= res!1179808 (rulesProduceEachTokenIndividually!1128 thiss!11007 rules!1047 (seqFromList!3268 l!4019)))))

(declare-fun b!2834570 () Bool)

(declare-fun tp!906451 () Bool)

(declare-fun e!1794948 () Bool)

(declare-fun inv!21 (TokenValue!5252) Bool)

(assert (=> b!2834570 (= e!1794946 (and (inv!21 (value!161496 (h!38889 l!4019))) e!1794948 tp!906451))))

(declare-fun b!2834571 () Bool)

(declare-fun tp!906449 () Bool)

(assert (=> b!2834571 (= e!1794948 (and tp!906449 (inv!45430 (tag!5526 (rule!7450 (h!38889 l!4019)))) (inv!45433 (transformation!5022 (rule!7450 (h!38889 l!4019)))) e!1794943))))

(declare-fun b!2834572 () Bool)

(declare-fun res!1179806 () Bool)

(assert (=> b!2834572 (=> (not res!1179806) (not e!1794942))))

(declare-fun rulesProduceEachTokenIndividuallyList!1655 (LexerInterface!4612 List!33592 List!33593) Bool)

(assert (=> b!2834572 (= res!1179806 (rulesProduceEachTokenIndividuallyList!1655 thiss!11007 rules!1047 l!4019))))

(assert (=> b!2834573 (= e!1794950 (and tp!906454 tp!906452))))

(declare-fun b!2834574 () Bool)

(declare-fun res!1179807 () Bool)

(assert (=> b!2834574 (=> (not res!1179807) (not e!1794942))))

(declare-fun rulesInvariant!4028 (LexerInterface!4612 List!33592) Bool)

(assert (=> b!2834574 (= res!1179807 (rulesInvariant!4028 thiss!11007 rules!1047))))

(assert (= (and start!275620 res!1179805) b!2834562))

(assert (= (and b!2834562 res!1179804) b!2834574))

(assert (= (and b!2834574 res!1179807) b!2834572))

(assert (= (and b!2834572 res!1179806) b!2834569))

(assert (= (and b!2834569 res!1179808) b!2834563))

(assert (= (and b!2834563 res!1179803) b!2834567))

(assert (= b!2834565 b!2834573))

(assert (= b!2834566 b!2834565))

(assert (= (and start!275620 ((_ is Cons!33468) rules!1047)) b!2834566))

(assert (= b!2834571 b!2834564))

(assert (= b!2834570 b!2834571))

(assert (= b!2834568 b!2834570))

(assert (= (and start!275620 ((_ is Cons!33469) l!4019)) b!2834568))

(declare-fun m!3264021 () Bool)

(assert (=> b!2834570 m!3264021))

(declare-fun m!3264023 () Bool)

(assert (=> b!2834568 m!3264023))

(declare-fun m!3264025 () Bool)

(assert (=> b!2834567 m!3264025))

(declare-fun m!3264027 () Bool)

(assert (=> b!2834567 m!3264027))

(assert (=> b!2834567 m!3264025))

(declare-fun m!3264029 () Bool)

(assert (=> b!2834567 m!3264029))

(declare-fun m!3264031 () Bool)

(assert (=> b!2834567 m!3264031))

(declare-fun m!3264033 () Bool)

(assert (=> b!2834567 m!3264033))

(declare-fun m!3264035 () Bool)

(assert (=> b!2834567 m!3264035))

(declare-fun m!3264037 () Bool)

(assert (=> b!2834562 m!3264037))

(declare-fun m!3264039 () Bool)

(assert (=> b!2834571 m!3264039))

(declare-fun m!3264041 () Bool)

(assert (=> b!2834571 m!3264041))

(declare-fun m!3264043 () Bool)

(assert (=> b!2834572 m!3264043))

(declare-fun m!3264045 () Bool)

(assert (=> b!2834574 m!3264045))

(declare-fun m!3264047 () Bool)

(assert (=> b!2834565 m!3264047))

(declare-fun m!3264049 () Bool)

(assert (=> b!2834565 m!3264049))

(declare-fun m!3264051 () Bool)

(assert (=> b!2834569 m!3264051))

(assert (=> b!2834569 m!3264051))

(declare-fun m!3264053 () Bool)

(assert (=> b!2834569 m!3264053))

(check-sat (not b!2834570) (not b!2834562) (not b!2834569) (not b_next!82401) b_and!207495 (not b!2834567) (not b!2834568) (not b!2834571) (not b!2834566) (not b_next!82397) b_and!207497 (not b!2834565) b_and!207493 (not b_next!82403) (not b_next!82399) b_and!207491 (not b!2834574) (not b!2834572))
(check-sat b_and!207493 (not b_next!82401) b_and!207495 b_and!207491 (not b_next!82397) b_and!207497 (not b_next!82403) (not b_next!82399))
(get-model)

(declare-fun b!2834645 () Bool)

(declare-fun e!1795005 () Bool)

(assert (=> b!2834645 (= e!1795005 true)))

(declare-fun b!2834644 () Bool)

(declare-fun e!1795004 () Bool)

(assert (=> b!2834644 (= e!1795004 e!1795005)))

(declare-fun b!2834643 () Bool)

(declare-fun e!1795003 () Bool)

(assert (=> b!2834643 (= e!1795003 e!1795004)))

(declare-fun d!822403 () Bool)

(assert (=> d!822403 e!1795003))

(assert (= b!2834644 b!2834645))

(assert (= b!2834643 b!2834644))

(assert (= (and d!822403 ((_ is Cons!33468) rules!1047)) b!2834643))

(declare-fun order!17869 () Int)

(declare-fun lambda!104112 () Int)

(declare-fun order!17867 () Int)

(declare-fun dynLambda!14072 (Int Int) Int)

(declare-fun dynLambda!14073 (Int Int) Int)

(assert (=> b!2834645 (< (dynLambda!14072 order!17867 (toValue!7060 (transformation!5022 (h!38888 rules!1047)))) (dynLambda!14073 order!17869 lambda!104112))))

(declare-fun order!17871 () Int)

(declare-fun dynLambda!14074 (Int Int) Int)

(assert (=> b!2834645 (< (dynLambda!14074 order!17871 (toChars!6919 (transformation!5022 (h!38888 rules!1047)))) (dynLambda!14073 order!17869 lambda!104112))))

(assert (=> d!822403 true))

(declare-fun e!1794996 () Bool)

(assert (=> d!822403 e!1794996))

(declare-fun res!1179842 () Bool)

(assert (=> d!822403 (=> (not res!1179842) (not e!1794996))))

(declare-fun lt!1010776 () Bool)

(declare-fun forall!6886 (List!33593 Int) Bool)

(declare-fun list!12507 (BalanceConc!20438) List!33593)

(assert (=> d!822403 (= res!1179842 (= lt!1010776 (forall!6886 (list!12507 (seqFromList!3268 l!4019)) lambda!104112)))))

(declare-fun forall!6887 (BalanceConc!20438 Int) Bool)

(assert (=> d!822403 (= lt!1010776 (forall!6887 (seqFromList!3268 l!4019) lambda!104112))))

(assert (=> d!822403 (not (isEmpty!18451 rules!1047))))

(assert (=> d!822403 (= (rulesProduceEachTokenIndividually!1128 thiss!11007 rules!1047 (seqFromList!3268 l!4019)) lt!1010776)))

(declare-fun b!2834634 () Bool)

(assert (=> b!2834634 (= e!1794996 (= lt!1010776 (rulesProduceEachTokenIndividuallyList!1655 thiss!11007 rules!1047 (list!12507 (seqFromList!3268 l!4019)))))))

(assert (= (and d!822403 res!1179842) b!2834634))

(assert (=> d!822403 m!3264051))

(declare-fun m!3264095 () Bool)

(assert (=> d!822403 m!3264095))

(assert (=> d!822403 m!3264095))

(declare-fun m!3264097 () Bool)

(assert (=> d!822403 m!3264097))

(assert (=> d!822403 m!3264051))

(declare-fun m!3264099 () Bool)

(assert (=> d!822403 m!3264099))

(assert (=> d!822403 m!3264037))

(assert (=> b!2834634 m!3264051))

(assert (=> b!2834634 m!3264095))

(assert (=> b!2834634 m!3264095))

(declare-fun m!3264101 () Bool)

(assert (=> b!2834634 m!3264101))

(assert (=> b!2834569 d!822403))

(declare-fun d!822423 () Bool)

(declare-fun fromListB!1480 (List!33593) BalanceConc!20438)

(assert (=> d!822423 (= (seqFromList!3268 l!4019) (fromListB!1480 l!4019))))

(declare-fun bs!518578 () Bool)

(assert (= bs!518578 d!822423))

(declare-fun m!3264103 () Bool)

(assert (=> bs!518578 m!3264103))

(assert (=> b!2834569 d!822423))

(declare-fun d!822425 () Bool)

(declare-fun res!1179845 () Bool)

(declare-fun e!1795008 () Bool)

(assert (=> d!822425 (=> (not res!1179845) (not e!1795008))))

(declare-fun rulesValid!1859 (LexerInterface!4612 List!33592) Bool)

(assert (=> d!822425 (= res!1179845 (rulesValid!1859 thiss!11007 rules!1047))))

(assert (=> d!822425 (= (rulesInvariant!4028 thiss!11007 rules!1047) e!1795008)))

(declare-fun b!2834650 () Bool)

(declare-datatypes ((List!33595 0))(
  ( (Nil!33471) (Cons!33471 (h!38891 String!36782) (t!231836 List!33595)) )
))
(declare-fun noDuplicateTag!1855 (LexerInterface!4612 List!33592 List!33595) Bool)

(assert (=> b!2834650 (= e!1795008 (noDuplicateTag!1855 thiss!11007 rules!1047 Nil!33471))))

(assert (= (and d!822425 res!1179845) b!2834650))

(declare-fun m!3264105 () Bool)

(assert (=> d!822425 m!3264105))

(declare-fun m!3264107 () Bool)

(assert (=> b!2834650 m!3264107))

(assert (=> b!2834574 d!822425))

(declare-fun d!822427 () Bool)

(assert (=> d!822427 (= (isEmpty!18451 rules!1047) ((_ is Nil!33468) rules!1047))))

(assert (=> b!2834562 d!822427))

(declare-fun d!822429 () Bool)

(declare-fun res!1179850 () Bool)

(declare-fun e!1795011 () Bool)

(assert (=> d!822429 (=> (not res!1179850) (not e!1795011))))

(declare-fun isEmpty!18454 (List!33591) Bool)

(assert (=> d!822429 (= res!1179850 (not (isEmpty!18454 (originalCharacters!5754 (h!38889 l!4019)))))))

(assert (=> d!822429 (= (inv!45434 (h!38889 l!4019)) e!1795011)))

(declare-fun b!2834655 () Bool)

(declare-fun res!1179851 () Bool)

(assert (=> b!2834655 (=> (not res!1179851) (not e!1795011))))

(declare-fun list!12508 (BalanceConc!20436) List!33591)

(declare-fun dynLambda!14075 (Int TokenValue!5252) BalanceConc!20436)

(assert (=> b!2834655 (= res!1179851 (= (originalCharacters!5754 (h!38889 l!4019)) (list!12508 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))))

(declare-fun b!2834656 () Bool)

(declare-fun size!26041 (List!33591) Int)

(assert (=> b!2834656 (= e!1795011 (= (size!26036 (h!38889 l!4019)) (size!26041 (originalCharacters!5754 (h!38889 l!4019)))))))

(assert (= (and d!822429 res!1179850) b!2834655))

(assert (= (and b!2834655 res!1179851) b!2834656))

(declare-fun b_lambda!85169 () Bool)

(assert (=> (not b_lambda!85169) (not b!2834655)))

(declare-fun t!231802 () Bool)

(declare-fun tb!154393 () Bool)

(assert (=> (and b!2834573 (= (toChars!6919 (transformation!5022 (h!38888 rules!1047))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019))))) t!231802) tb!154393))

(declare-fun b!2834661 () Bool)

(declare-fun e!1795014 () Bool)

(declare-fun tp!906462 () Bool)

(declare-fun inv!45437 (Conc!10399) Bool)

(assert (=> b!2834661 (= e!1795014 (and (inv!45437 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))) tp!906462))))

(declare-fun result!192536 () Bool)

(declare-fun inv!45438 (BalanceConc!20436) Bool)

(assert (=> tb!154393 (= result!192536 (and (inv!45438 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))) e!1795014))))

(assert (= tb!154393 b!2834661))

(declare-fun m!3264109 () Bool)

(assert (=> b!2834661 m!3264109))

(declare-fun m!3264111 () Bool)

(assert (=> tb!154393 m!3264111))

(assert (=> b!2834655 t!231802))

(declare-fun b_and!207503 () Bool)

(assert (= b_and!207493 (and (=> t!231802 result!192536) b_and!207503)))

(declare-fun t!231804 () Bool)

(declare-fun tb!154395 () Bool)

(assert (=> (and b!2834564 (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019))))) t!231804) tb!154395))

(declare-fun result!192540 () Bool)

(assert (= result!192540 result!192536))

(assert (=> b!2834655 t!231804))

(declare-fun b_and!207505 () Bool)

(assert (= b_and!207497 (and (=> t!231804 result!192540) b_and!207505)))

(declare-fun m!3264113 () Bool)

(assert (=> d!822429 m!3264113))

(declare-fun m!3264115 () Bool)

(assert (=> b!2834655 m!3264115))

(assert (=> b!2834655 m!3264115))

(declare-fun m!3264117 () Bool)

(assert (=> b!2834655 m!3264117))

(declare-fun m!3264119 () Bool)

(assert (=> b!2834656 m!3264119))

(assert (=> b!2834568 d!822429))

(declare-fun d!822431 () Bool)

(assert (=> d!822431 (rulesProduceIndividualToken!2142 thiss!11007 rules!1047 (h!38889 (t!231786 l!4019)))))

(declare-fun lt!1010782 () Unit!47411)

(declare-fun choose!16728 (LexerInterface!4612 List!33592 List!33593 Token!9446) Unit!47411)

(assert (=> d!822431 (= lt!1010782 (choose!16728 thiss!11007 rules!1047 l!4019 (h!38889 (t!231786 l!4019))))))

(assert (=> d!822431 (not (isEmpty!18451 rules!1047))))

(assert (=> d!822431 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!756 thiss!11007 rules!1047 l!4019 (h!38889 (t!231786 l!4019))) lt!1010782)))

(declare-fun bs!518580 () Bool)

(assert (= bs!518580 d!822431))

(assert (=> bs!518580 m!3264035))

(declare-fun m!3264123 () Bool)

(assert (=> bs!518580 m!3264123))

(assert (=> bs!518580 m!3264037))

(assert (=> b!2834567 d!822431))

(declare-fun d!822435 () Bool)

(declare-fun lt!1010803 () Bool)

(declare-fun e!1795066 () Bool)

(assert (=> d!822435 (= lt!1010803 e!1795066)))

(declare-fun res!1179871 () Bool)

(assert (=> d!822435 (=> (not res!1179871) (not e!1795066))))

(declare-datatypes ((tuple2!33536 0))(
  ( (tuple2!33537 (_1!19880 BalanceConc!20438) (_2!19880 BalanceConc!20436)) )
))
(declare-fun lex!2022 (LexerInterface!4612 List!33592 BalanceConc!20436) tuple2!33536)

(declare-fun print!1741 (LexerInterface!4612 BalanceConc!20438) BalanceConc!20436)

(declare-fun singletonSeq!2173 (Token!9446) BalanceConc!20438)

(assert (=> d!822435 (= res!1179871 (= (list!12507 (_1!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019)))))) (list!12507 (singletonSeq!2173 (h!38889 l!4019)))))))

(declare-fun e!1795067 () Bool)

(assert (=> d!822435 (= lt!1010803 e!1795067)))

(declare-fun res!1179873 () Bool)

(assert (=> d!822435 (=> (not res!1179873) (not e!1795067))))

(declare-fun lt!1010802 () tuple2!33536)

(declare-fun size!26042 (BalanceConc!20438) Int)

(assert (=> d!822435 (= res!1179873 (= (size!26042 (_1!19880 lt!1010802)) 1))))

(assert (=> d!822435 (= lt!1010802 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019)))))))

(assert (=> d!822435 (not (isEmpty!18451 rules!1047))))

(assert (=> d!822435 (= (rulesProduceIndividualToken!2142 thiss!11007 rules!1047 (h!38889 l!4019)) lt!1010803)))

(declare-fun b!2834730 () Bool)

(declare-fun res!1179872 () Bool)

(assert (=> b!2834730 (=> (not res!1179872) (not e!1795067))))

(declare-fun apply!7817 (BalanceConc!20438 Int) Token!9446)

(assert (=> b!2834730 (= res!1179872 (= (apply!7817 (_1!19880 lt!1010802) 0) (h!38889 l!4019)))))

(declare-fun b!2834731 () Bool)

(declare-fun isEmpty!18455 (BalanceConc!20436) Bool)

(assert (=> b!2834731 (= e!1795067 (isEmpty!18455 (_2!19880 lt!1010802)))))

(declare-fun b!2834732 () Bool)

(assert (=> b!2834732 (= e!1795066 (isEmpty!18455 (_2!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019)))))))))

(assert (= (and d!822435 res!1179873) b!2834730))

(assert (= (and b!2834730 res!1179872) b!2834731))

(assert (= (and d!822435 res!1179871) b!2834732))

(declare-fun m!3264193 () Bool)

(assert (=> d!822435 m!3264193))

(declare-fun m!3264195 () Bool)

(assert (=> d!822435 m!3264195))

(declare-fun m!3264197 () Bool)

(assert (=> d!822435 m!3264197))

(assert (=> d!822435 m!3264197))

(assert (=> d!822435 m!3264193))

(declare-fun m!3264199 () Bool)

(assert (=> d!822435 m!3264199))

(assert (=> d!822435 m!3264197))

(declare-fun m!3264201 () Bool)

(assert (=> d!822435 m!3264201))

(assert (=> d!822435 m!3264037))

(declare-fun m!3264203 () Bool)

(assert (=> d!822435 m!3264203))

(declare-fun m!3264205 () Bool)

(assert (=> b!2834730 m!3264205))

(declare-fun m!3264207 () Bool)

(assert (=> b!2834731 m!3264207))

(assert (=> b!2834732 m!3264197))

(assert (=> b!2834732 m!3264197))

(assert (=> b!2834732 m!3264193))

(assert (=> b!2834732 m!3264193))

(assert (=> b!2834732 m!3264195))

(declare-fun m!3264209 () Bool)

(assert (=> b!2834732 m!3264209))

(assert (=> b!2834567 d!822435))

(declare-fun d!822449 () Bool)

(assert (=> d!822449 (rulesProduceIndividualToken!2142 thiss!11007 rules!1047 (h!38889 l!4019))))

(declare-fun lt!1010804 () Unit!47411)

(assert (=> d!822449 (= lt!1010804 (choose!16728 thiss!11007 rules!1047 l!4019 (h!38889 l!4019)))))

(assert (=> d!822449 (not (isEmpty!18451 rules!1047))))

(assert (=> d!822449 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!756 thiss!11007 rules!1047 l!4019 (h!38889 l!4019)) lt!1010804)))

(declare-fun bs!518583 () Bool)

(assert (= bs!518583 d!822449))

(assert (=> bs!518583 m!3264033))

(declare-fun m!3264211 () Bool)

(assert (=> bs!518583 m!3264211))

(assert (=> bs!518583 m!3264037))

(assert (=> b!2834567 d!822449))

(declare-fun d!822451 () Bool)

(declare-fun lt!1010806 () Bool)

(declare-fun e!1795068 () Bool)

(assert (=> d!822451 (= lt!1010806 e!1795068)))

(declare-fun res!1179874 () Bool)

(assert (=> d!822451 (=> (not res!1179874) (not e!1795068))))

(assert (=> d!822451 (= res!1179874 (= (list!12507 (_1!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))) (list!12507 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))))

(declare-fun e!1795069 () Bool)

(assert (=> d!822451 (= lt!1010806 e!1795069)))

(declare-fun res!1179876 () Bool)

(assert (=> d!822451 (=> (not res!1179876) (not e!1795069))))

(declare-fun lt!1010805 () tuple2!33536)

(assert (=> d!822451 (= res!1179876 (= (size!26042 (_1!19880 lt!1010805)) 1))))

(assert (=> d!822451 (= lt!1010805 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))))

(assert (=> d!822451 (not (isEmpty!18451 rules!1047))))

(assert (=> d!822451 (= (rulesProduceIndividualToken!2142 thiss!11007 rules!1047 (h!38889 (t!231786 l!4019))) lt!1010806)))

(declare-fun b!2834733 () Bool)

(declare-fun res!1179875 () Bool)

(assert (=> b!2834733 (=> (not res!1179875) (not e!1795069))))

(assert (=> b!2834733 (= res!1179875 (= (apply!7817 (_1!19880 lt!1010805) 0) (h!38889 (t!231786 l!4019))))))

(declare-fun b!2834734 () Bool)

(assert (=> b!2834734 (= e!1795069 (isEmpty!18455 (_2!19880 lt!1010805)))))

(declare-fun b!2834735 () Bool)

(assert (=> b!2834735 (= e!1795068 (isEmpty!18455 (_2!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))))))

(assert (= (and d!822451 res!1179876) b!2834733))

(assert (= (and b!2834733 res!1179875) b!2834734))

(assert (= (and d!822451 res!1179874) b!2834735))

(declare-fun m!3264213 () Bool)

(assert (=> d!822451 m!3264213))

(declare-fun m!3264215 () Bool)

(assert (=> d!822451 m!3264215))

(declare-fun m!3264217 () Bool)

(assert (=> d!822451 m!3264217))

(assert (=> d!822451 m!3264217))

(assert (=> d!822451 m!3264213))

(declare-fun m!3264219 () Bool)

(assert (=> d!822451 m!3264219))

(assert (=> d!822451 m!3264217))

(declare-fun m!3264221 () Bool)

(assert (=> d!822451 m!3264221))

(assert (=> d!822451 m!3264037))

(declare-fun m!3264223 () Bool)

(assert (=> d!822451 m!3264223))

(declare-fun m!3264225 () Bool)

(assert (=> b!2834733 m!3264225))

(declare-fun m!3264227 () Bool)

(assert (=> b!2834734 m!3264227))

(assert (=> b!2834735 m!3264217))

(assert (=> b!2834735 m!3264217))

(assert (=> b!2834735 m!3264213))

(assert (=> b!2834735 m!3264213))

(assert (=> b!2834735 m!3264215))

(declare-fun m!3264229 () Bool)

(assert (=> b!2834735 m!3264229))

(assert (=> b!2834567 d!822451))

(declare-fun d!822453 () Bool)

(declare-fun lt!1010809 () BalanceConc!20436)

(assert (=> d!822453 (= (list!12508 lt!1010809) (originalCharacters!5754 (h!38889 (t!231786 l!4019))))))

(assert (=> d!822453 (= lt!1010809 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))))

(assert (=> d!822453 (= (charsOf!3108 (h!38889 (t!231786 l!4019))) lt!1010809)))

(declare-fun b_lambda!85177 () Bool)

(assert (=> (not b_lambda!85177) (not d!822453)))

(declare-fun tb!154409 () Bool)

(declare-fun t!231823 () Bool)

(assert (=> (and b!2834573 (= (toChars!6919 (transformation!5022 (h!38888 rules!1047))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019)))))) t!231823) tb!154409))

(declare-fun b!2834736 () Bool)

(declare-fun e!1795070 () Bool)

(declare-fun tp!906514 () Bool)

(assert (=> b!2834736 (= e!1795070 (and (inv!45437 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))) tp!906514))))

(declare-fun result!192562 () Bool)

(assert (=> tb!154409 (= result!192562 (and (inv!45438 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))) e!1795070))))

(assert (= tb!154409 b!2834736))

(declare-fun m!3264231 () Bool)

(assert (=> b!2834736 m!3264231))

(declare-fun m!3264233 () Bool)

(assert (=> tb!154409 m!3264233))

(assert (=> d!822453 t!231823))

(declare-fun b_and!207519 () Bool)

(assert (= b_and!207503 (and (=> t!231823 result!192562) b_and!207519)))

(declare-fun t!231825 () Bool)

(declare-fun tb!154411 () Bool)

(assert (=> (and b!2834564 (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019)))))) t!231825) tb!154411))

(declare-fun result!192564 () Bool)

(assert (= result!192564 result!192562))

(assert (=> d!822453 t!231825))

(declare-fun b_and!207521 () Bool)

(assert (= b_and!207505 (and (=> t!231825 result!192564) b_and!207521)))

(declare-fun m!3264235 () Bool)

(assert (=> d!822453 m!3264235))

(declare-fun m!3264237 () Bool)

(assert (=> d!822453 m!3264237))

(assert (=> b!2834567 d!822453))

(declare-fun d!822455 () Bool)

(declare-fun lt!1010812 () Int)

(assert (=> d!822455 (= lt!1010812 (size!26041 (list!12508 (charsOf!3108 (h!38889 (t!231786 l!4019))))))))

(declare-fun size!26043 (Conc!10399) Int)

(assert (=> d!822455 (= lt!1010812 (size!26043 (c!458142 (charsOf!3108 (h!38889 (t!231786 l!4019))))))))

(assert (=> d!822455 (= (size!26037 (charsOf!3108 (h!38889 (t!231786 l!4019)))) lt!1010812)))

(declare-fun bs!518584 () Bool)

(assert (= bs!518584 d!822455))

(assert (=> bs!518584 m!3264025))

(declare-fun m!3264239 () Bool)

(assert (=> bs!518584 m!3264239))

(assert (=> bs!518584 m!3264239))

(declare-fun m!3264241 () Bool)

(assert (=> bs!518584 m!3264241))

(declare-fun m!3264243 () Bool)

(assert (=> bs!518584 m!3264243))

(assert (=> b!2834567 d!822455))

(declare-fun bs!518585 () Bool)

(declare-fun d!822457 () Bool)

(assert (= bs!518585 (and d!822457 d!822403)))

(declare-fun lambda!104115 () Int)

(assert (=> bs!518585 (= lambda!104115 lambda!104112)))

(declare-fun b!2834745 () Bool)

(declare-fun e!1795079 () Bool)

(assert (=> b!2834745 (= e!1795079 true)))

(declare-fun b!2834744 () Bool)

(declare-fun e!1795078 () Bool)

(assert (=> b!2834744 (= e!1795078 e!1795079)))

(declare-fun b!2834743 () Bool)

(declare-fun e!1795077 () Bool)

(assert (=> b!2834743 (= e!1795077 e!1795078)))

(assert (=> d!822457 e!1795077))

(assert (= b!2834744 b!2834745))

(assert (= b!2834743 b!2834744))

(assert (= (and d!822457 ((_ is Cons!33468) rules!1047)) b!2834743))

(assert (=> b!2834745 (< (dynLambda!14072 order!17867 (toValue!7060 (transformation!5022 (h!38888 rules!1047)))) (dynLambda!14073 order!17869 lambda!104115))))

(assert (=> b!2834745 (< (dynLambda!14074 order!17871 (toChars!6919 (transformation!5022 (h!38888 rules!1047)))) (dynLambda!14073 order!17869 lambda!104115))))

(assert (=> d!822457 true))

(declare-fun lt!1010815 () Bool)

(assert (=> d!822457 (= lt!1010815 (forall!6886 l!4019 lambda!104115))))

(declare-fun e!1795076 () Bool)

(assert (=> d!822457 (= lt!1010815 e!1795076)))

(declare-fun res!1179881 () Bool)

(assert (=> d!822457 (=> res!1179881 e!1795076)))

(assert (=> d!822457 (= res!1179881 (not ((_ is Cons!33469) l!4019)))))

(assert (=> d!822457 (not (isEmpty!18451 rules!1047))))

(assert (=> d!822457 (= (rulesProduceEachTokenIndividuallyList!1655 thiss!11007 rules!1047 l!4019) lt!1010815)))

(declare-fun b!2834741 () Bool)

(declare-fun e!1795075 () Bool)

(assert (=> b!2834741 (= e!1795076 e!1795075)))

(declare-fun res!1179882 () Bool)

(assert (=> b!2834741 (=> (not res!1179882) (not e!1795075))))

(assert (=> b!2834741 (= res!1179882 (rulesProduceIndividualToken!2142 thiss!11007 rules!1047 (h!38889 l!4019)))))

(declare-fun b!2834742 () Bool)

(assert (=> b!2834742 (= e!1795075 (rulesProduceEachTokenIndividuallyList!1655 thiss!11007 rules!1047 (t!231786 l!4019)))))

(assert (= (and d!822457 (not res!1179881)) b!2834741))

(assert (= (and b!2834741 res!1179882) b!2834742))

(declare-fun m!3264245 () Bool)

(assert (=> d!822457 m!3264245))

(assert (=> d!822457 m!3264037))

(assert (=> b!2834741 m!3264033))

(declare-fun m!3264247 () Bool)

(assert (=> b!2834742 m!3264247))

(assert (=> b!2834572 d!822457))

(declare-fun d!822459 () Bool)

(assert (=> d!822459 (= (inv!45430 (tag!5526 (h!38888 rules!1047))) (= (mod (str.len (value!161495 (tag!5526 (h!38888 rules!1047)))) 2) 0))))

(assert (=> b!2834565 d!822459))

(declare-fun d!822461 () Bool)

(declare-fun res!1179885 () Bool)

(declare-fun e!1795082 () Bool)

(assert (=> d!822461 (=> (not res!1179885) (not e!1795082))))

(declare-fun semiInverseModEq!2089 (Int Int) Bool)

(assert (=> d!822461 (= res!1179885 (semiInverseModEq!2089 (toChars!6919 (transformation!5022 (h!38888 rules!1047))) (toValue!7060 (transformation!5022 (h!38888 rules!1047)))))))

(assert (=> d!822461 (= (inv!45433 (transformation!5022 (h!38888 rules!1047))) e!1795082)))

(declare-fun b!2834748 () Bool)

(declare-fun equivClasses!1988 (Int Int) Bool)

(assert (=> b!2834748 (= e!1795082 (equivClasses!1988 (toChars!6919 (transformation!5022 (h!38888 rules!1047))) (toValue!7060 (transformation!5022 (h!38888 rules!1047)))))))

(assert (= (and d!822461 res!1179885) b!2834748))

(declare-fun m!3264249 () Bool)

(assert (=> d!822461 m!3264249))

(declare-fun m!3264251 () Bool)

(assert (=> b!2834748 m!3264251))

(assert (=> b!2834565 d!822461))

(declare-fun b!2834759 () Bool)

(declare-fun e!1795091 () Bool)

(declare-fun inv!16 (TokenValue!5252) Bool)

(assert (=> b!2834759 (= e!1795091 (inv!16 (value!161496 (h!38889 l!4019))))))

(declare-fun b!2834760 () Bool)

(declare-fun res!1179888 () Bool)

(declare-fun e!1795090 () Bool)

(assert (=> b!2834760 (=> res!1179888 e!1795090)))

(assert (=> b!2834760 (= res!1179888 (not ((_ is IntegerValue!15758) (value!161496 (h!38889 l!4019)))))))

(declare-fun e!1795089 () Bool)

(assert (=> b!2834760 (= e!1795089 e!1795090)))

(declare-fun d!822463 () Bool)

(declare-fun c!458155 () Bool)

(assert (=> d!822463 (= c!458155 ((_ is IntegerValue!15756) (value!161496 (h!38889 l!4019))))))

(assert (=> d!822463 (= (inv!21 (value!161496 (h!38889 l!4019))) e!1795091)))

(declare-fun b!2834761 () Bool)

(assert (=> b!2834761 (= e!1795091 e!1795089)))

(declare-fun c!458154 () Bool)

(assert (=> b!2834761 (= c!458154 ((_ is IntegerValue!15757) (value!161496 (h!38889 l!4019))))))

(declare-fun b!2834762 () Bool)

(declare-fun inv!15 (TokenValue!5252) Bool)

(assert (=> b!2834762 (= e!1795090 (inv!15 (value!161496 (h!38889 l!4019))))))

(declare-fun b!2834763 () Bool)

(declare-fun inv!17 (TokenValue!5252) Bool)

(assert (=> b!2834763 (= e!1795089 (inv!17 (value!161496 (h!38889 l!4019))))))

(assert (= (and d!822463 c!458155) b!2834759))

(assert (= (and d!822463 (not c!458155)) b!2834761))

(assert (= (and b!2834761 c!458154) b!2834763))

(assert (= (and b!2834761 (not c!458154)) b!2834760))

(assert (= (and b!2834760 (not res!1179888)) b!2834762))

(declare-fun m!3264253 () Bool)

(assert (=> b!2834759 m!3264253))

(declare-fun m!3264255 () Bool)

(assert (=> b!2834762 m!3264255))

(declare-fun m!3264257 () Bool)

(assert (=> b!2834763 m!3264257))

(assert (=> b!2834570 d!822463))

(declare-fun d!822465 () Bool)

(assert (=> d!822465 (= (inv!45430 (tag!5526 (rule!7450 (h!38889 l!4019)))) (= (mod (str.len (value!161495 (tag!5526 (rule!7450 (h!38889 l!4019))))) 2) 0))))

(assert (=> b!2834571 d!822465))

(declare-fun d!822467 () Bool)

(declare-fun res!1179889 () Bool)

(declare-fun e!1795092 () Bool)

(assert (=> d!822467 (=> (not res!1179889) (not e!1795092))))

(assert (=> d!822467 (= res!1179889 (semiInverseModEq!2089 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (toValue!7060 (transformation!5022 (rule!7450 (h!38889 l!4019))))))))

(assert (=> d!822467 (= (inv!45433 (transformation!5022 (rule!7450 (h!38889 l!4019)))) e!1795092)))

(declare-fun b!2834764 () Bool)

(assert (=> b!2834764 (= e!1795092 (equivClasses!1988 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (toValue!7060 (transformation!5022 (rule!7450 (h!38889 l!4019))))))))

(assert (= (and d!822467 res!1179889) b!2834764))

(declare-fun m!3264259 () Bool)

(assert (=> d!822467 m!3264259))

(declare-fun m!3264261 () Bool)

(assert (=> b!2834764 m!3264261))

(assert (=> b!2834571 d!822467))

(declare-fun b!2834778 () Bool)

(declare-fun b_free!81709 () Bool)

(declare-fun b_next!82413 () Bool)

(assert (=> b!2834778 (= b_free!81709 (not b_next!82413))))

(declare-fun tp!906527 () Bool)

(declare-fun b_and!207523 () Bool)

(assert (=> b!2834778 (= tp!906527 b_and!207523)))

(declare-fun b_free!81711 () Bool)

(declare-fun b_next!82415 () Bool)

(assert (=> b!2834778 (= b_free!81711 (not b_next!82415))))

(declare-fun t!231829 () Bool)

(declare-fun tb!154413 () Bool)

(assert (=> (and b!2834778 (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019))))) t!231829) tb!154413))

(declare-fun result!192568 () Bool)

(assert (= result!192568 result!192536))

(assert (=> b!2834655 t!231829))

(declare-fun t!231831 () Bool)

(declare-fun tb!154415 () Bool)

(assert (=> (and b!2834778 (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019)))))) t!231831) tb!154415))

(declare-fun result!192570 () Bool)

(assert (= result!192570 result!192562))

(assert (=> d!822453 t!231831))

(declare-fun b_and!207525 () Bool)

(declare-fun tp!906529 () Bool)

(assert (=> b!2834778 (= tp!906529 (and (=> t!231829 result!192568) (=> t!231831 result!192570) b_and!207525))))

(declare-fun b!2834775 () Bool)

(declare-fun e!1795105 () Bool)

(declare-fun tp!906525 () Bool)

(declare-fun e!1795110 () Bool)

(assert (=> b!2834775 (= e!1795105 (and (inv!45434 (h!38889 (t!231786 l!4019))) e!1795110 tp!906525))))

(declare-fun e!1795106 () Bool)

(assert (=> b!2834778 (= e!1795106 (and tp!906527 tp!906529))))

(declare-fun b!2834776 () Bool)

(declare-fun e!1795107 () Bool)

(declare-fun tp!906526 () Bool)

(assert (=> b!2834776 (= e!1795110 (and (inv!21 (value!161496 (h!38889 (t!231786 l!4019)))) e!1795107 tp!906526))))

(assert (=> b!2834568 (= tp!906453 e!1795105)))

(declare-fun tp!906528 () Bool)

(declare-fun b!2834777 () Bool)

(assert (=> b!2834777 (= e!1795107 (and tp!906528 (inv!45430 (tag!5526 (rule!7450 (h!38889 (t!231786 l!4019))))) (inv!45433 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) e!1795106))))

(assert (= b!2834777 b!2834778))

(assert (= b!2834776 b!2834777))

(assert (= b!2834775 b!2834776))

(assert (= (and b!2834568 ((_ is Cons!33469) (t!231786 l!4019))) b!2834775))

(declare-fun m!3264263 () Bool)

(assert (=> b!2834775 m!3264263))

(declare-fun m!3264265 () Bool)

(assert (=> b!2834776 m!3264265))

(declare-fun m!3264267 () Bool)

(assert (=> b!2834777 m!3264267))

(declare-fun m!3264269 () Bool)

(assert (=> b!2834777 m!3264269))

(declare-fun b!2834789 () Bool)

(declare-fun b_free!81713 () Bool)

(declare-fun b_next!82417 () Bool)

(assert (=> b!2834789 (= b_free!81713 (not b_next!82417))))

(declare-fun tp!906540 () Bool)

(declare-fun b_and!207527 () Bool)

(assert (=> b!2834789 (= tp!906540 b_and!207527)))

(declare-fun b_free!81715 () Bool)

(declare-fun b_next!82419 () Bool)

(assert (=> b!2834789 (= b_free!81715 (not b_next!82419))))

(declare-fun tb!154417 () Bool)

(declare-fun t!231833 () Bool)

(assert (=> (and b!2834789 (= (toChars!6919 (transformation!5022 (h!38888 (t!231785 rules!1047)))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019))))) t!231833) tb!154417))

(declare-fun result!192574 () Bool)

(assert (= result!192574 result!192536))

(assert (=> b!2834655 t!231833))

(declare-fun tb!154419 () Bool)

(declare-fun t!231835 () Bool)

(assert (=> (and b!2834789 (= (toChars!6919 (transformation!5022 (h!38888 (t!231785 rules!1047)))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019)))))) t!231835) tb!154419))

(declare-fun result!192576 () Bool)

(assert (= result!192576 result!192562))

(assert (=> d!822453 t!231835))

(declare-fun b_and!207529 () Bool)

(declare-fun tp!906541 () Bool)

(assert (=> b!2834789 (= tp!906541 (and (=> t!231833 result!192574) (=> t!231835 result!192576) b_and!207529))))

(declare-fun e!1795120 () Bool)

(assert (=> b!2834789 (= e!1795120 (and tp!906540 tp!906541))))

(declare-fun e!1795121 () Bool)

(declare-fun b!2834788 () Bool)

(declare-fun tp!906538 () Bool)

(assert (=> b!2834788 (= e!1795121 (and tp!906538 (inv!45430 (tag!5526 (h!38888 (t!231785 rules!1047)))) (inv!45433 (transformation!5022 (h!38888 (t!231785 rules!1047)))) e!1795120))))

(declare-fun b!2834787 () Bool)

(declare-fun e!1795119 () Bool)

(declare-fun tp!906539 () Bool)

(assert (=> b!2834787 (= e!1795119 (and e!1795121 tp!906539))))

(assert (=> b!2834566 (= tp!906448 e!1795119)))

(assert (= b!2834788 b!2834789))

(assert (= b!2834787 b!2834788))

(assert (= (and b!2834566 ((_ is Cons!33468) (t!231785 rules!1047))) b!2834787))

(declare-fun m!3264271 () Bool)

(assert (=> b!2834788 m!3264271))

(declare-fun m!3264273 () Bool)

(assert (=> b!2834788 m!3264273))

(declare-fun b!2834800 () Bool)

(declare-fun e!1795125 () Bool)

(declare-fun tp_is_empty!14591 () Bool)

(assert (=> b!2834800 (= e!1795125 tp_is_empty!14591)))

(declare-fun b!2834801 () Bool)

(declare-fun tp!906554 () Bool)

(declare-fun tp!906556 () Bool)

(assert (=> b!2834801 (= e!1795125 (and tp!906554 tp!906556))))

(declare-fun b!2834802 () Bool)

(declare-fun tp!906552 () Bool)

(assert (=> b!2834802 (= e!1795125 tp!906552)))

(assert (=> b!2834565 (= tp!906450 e!1795125)))

(declare-fun b!2834803 () Bool)

(declare-fun tp!906555 () Bool)

(declare-fun tp!906553 () Bool)

(assert (=> b!2834803 (= e!1795125 (and tp!906555 tp!906553))))

(assert (= (and b!2834565 ((_ is ElementMatch!8413) (regex!5022 (h!38888 rules!1047)))) b!2834800))

(assert (= (and b!2834565 ((_ is Concat!13666) (regex!5022 (h!38888 rules!1047)))) b!2834801))

(assert (= (and b!2834565 ((_ is Star!8413) (regex!5022 (h!38888 rules!1047)))) b!2834802))

(assert (= (and b!2834565 ((_ is Union!8413) (regex!5022 (h!38888 rules!1047)))) b!2834803))

(declare-fun b!2834808 () Bool)

(declare-fun e!1795128 () Bool)

(declare-fun tp!906559 () Bool)

(assert (=> b!2834808 (= e!1795128 (and tp_is_empty!14591 tp!906559))))

(assert (=> b!2834570 (= tp!906451 e!1795128)))

(assert (= (and b!2834570 ((_ is Cons!33467) (originalCharacters!5754 (h!38889 l!4019)))) b!2834808))

(declare-fun b!2834809 () Bool)

(declare-fun e!1795129 () Bool)

(assert (=> b!2834809 (= e!1795129 tp_is_empty!14591)))

(declare-fun b!2834810 () Bool)

(declare-fun tp!906562 () Bool)

(declare-fun tp!906564 () Bool)

(assert (=> b!2834810 (= e!1795129 (and tp!906562 tp!906564))))

(declare-fun b!2834811 () Bool)

(declare-fun tp!906560 () Bool)

(assert (=> b!2834811 (= e!1795129 tp!906560)))

(assert (=> b!2834571 (= tp!906449 e!1795129)))

(declare-fun b!2834812 () Bool)

(declare-fun tp!906563 () Bool)

(declare-fun tp!906561 () Bool)

(assert (=> b!2834812 (= e!1795129 (and tp!906563 tp!906561))))

(assert (= (and b!2834571 ((_ is ElementMatch!8413) (regex!5022 (rule!7450 (h!38889 l!4019))))) b!2834809))

(assert (= (and b!2834571 ((_ is Concat!13666) (regex!5022 (rule!7450 (h!38889 l!4019))))) b!2834810))

(assert (= (and b!2834571 ((_ is Star!8413) (regex!5022 (rule!7450 (h!38889 l!4019))))) b!2834811))

(assert (= (and b!2834571 ((_ is Union!8413) (regex!5022 (rule!7450 (h!38889 l!4019))))) b!2834812))

(declare-fun b_lambda!85179 () Bool)

(assert (= b_lambda!85177 (or (and b!2834573 b_free!81695 (= (toChars!6919 (transformation!5022 (h!38888 rules!1047))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) (and b!2834564 b_free!81699 (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) (and b!2834778 b_free!81711) (and b!2834789 b_free!81715 (= (toChars!6919 (transformation!5022 (h!38888 (t!231785 rules!1047)))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) b_lambda!85179)))

(declare-fun b_lambda!85181 () Bool)

(assert (= b_lambda!85169 (or (and b!2834573 b_free!81695 (= (toChars!6919 (transformation!5022 (h!38888 rules!1047))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))))) (and b!2834564 b_free!81699) (and b!2834778 b_free!81711 (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))))) (and b!2834789 b_free!81715 (= (toChars!6919 (transformation!5022 (h!38888 (t!231785 rules!1047)))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))))) b_lambda!85181)))

(check-sat (not d!822435) (not b_next!82413) (not b!2834801) (not b!2834763) (not d!822467) (not b!2834656) (not b!2834655) b_and!207519 (not b!2834811) (not d!822449) (not b!2834775) (not b_lambda!85179) (not b!2834810) (not d!822403) (not b!2834661) b_and!207529 (not b_lambda!85181) (not tb!154409) (not d!822425) (not b!2834736) (not b_next!82401) b_and!207523 (not b!2834787) (not b!2834741) (not b_next!82403) (not b_next!82399) b_and!207495 (not d!822423) (not b!2834650) (not d!822429) (not b!2834643) (not b!2834788) (not b!2834634) (not b_next!82417) (not b_next!82415) (not b!2834803) b_and!207491 (not b!2834762) (not b!2834731) b_and!207525 (not b!2834748) (not b!2834808) (not b!2834732) b_and!207527 (not b!2834777) (not b!2834733) (not b!2834759) (not d!822431) (not d!822461) (not d!822453) (not b_next!82419) (not d!822451) (not b!2834764) (not b!2834734) (not b!2834735) (not b!2834743) (not b!2834802) (not b!2834812) (not b!2834742) (not b!2834776) (not d!822457) (not b_next!82397) (not b!2834730) tp_is_empty!14591 b_and!207521 (not tb!154393) (not d!822455))
(check-sat b_and!207519 b_and!207529 b_and!207495 b_and!207491 (not b_next!82413) b_and!207525 b_and!207527 (not b_next!82419) (not b_next!82397) b_and!207521 (not b_next!82401) b_and!207523 (not b_next!82403) (not b_next!82399) (not b_next!82417) (not b_next!82415))
(get-model)

(declare-fun d!822487 () Bool)

(assert (=> d!822487 true))

(declare-fun lt!1010827 () Bool)

(declare-fun rulesValidInductive!1729 (LexerInterface!4612 List!33592) Bool)

(assert (=> d!822487 (= lt!1010827 (rulesValidInductive!1729 thiss!11007 rules!1047))))

(declare-fun lambda!104118 () Int)

(declare-fun forall!6889 (List!33592 Int) Bool)

(assert (=> d!822487 (= lt!1010827 (forall!6889 rules!1047 lambda!104118))))

(assert (=> d!822487 (= (rulesValid!1859 thiss!11007 rules!1047) lt!1010827)))

(declare-fun bs!518592 () Bool)

(assert (= bs!518592 d!822487))

(declare-fun m!3264301 () Bool)

(assert (=> bs!518592 m!3264301))

(declare-fun m!3264303 () Bool)

(assert (=> bs!518592 m!3264303))

(assert (=> d!822425 d!822487))

(declare-fun d!822489 () Bool)

(declare-fun list!12511 (Conc!10399) List!33591)

(assert (=> d!822489 (= (list!12508 lt!1010809) (list!12511 (c!458142 lt!1010809)))))

(declare-fun bs!518593 () Bool)

(assert (= bs!518593 d!822489))

(declare-fun m!3264305 () Bool)

(assert (=> bs!518593 m!3264305))

(assert (=> d!822453 d!822489))

(declare-fun d!822491 () Bool)

(declare-fun charsToBigInt!1 (List!33590) Int)

(assert (=> d!822491 (= (inv!17 (value!161496 (h!38889 l!4019))) (= (charsToBigInt!1 (text!37212 (value!161496 (h!38889 l!4019)))) (value!161488 (value!161496 (h!38889 l!4019)))))))

(declare-fun bs!518594 () Bool)

(assert (= bs!518594 d!822491))

(declare-fun m!3264307 () Bool)

(assert (=> bs!518594 m!3264307))

(assert (=> b!2834763 d!822491))

(declare-fun lt!1010830 () Bool)

(declare-fun d!822493 () Bool)

(assert (=> d!822493 (= lt!1010830 (isEmpty!18454 (list!12508 (_2!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))))))

(declare-fun isEmpty!18458 (Conc!10399) Bool)

(assert (=> d!822493 (= lt!1010830 (isEmpty!18458 (c!458142 (_2!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))))))

(assert (=> d!822493 (= (isEmpty!18455 (_2!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))) lt!1010830)))

(declare-fun bs!518595 () Bool)

(assert (= bs!518595 d!822493))

(declare-fun m!3264309 () Bool)

(assert (=> bs!518595 m!3264309))

(assert (=> bs!518595 m!3264309))

(declare-fun m!3264311 () Bool)

(assert (=> bs!518595 m!3264311))

(declare-fun m!3264313 () Bool)

(assert (=> bs!518595 m!3264313))

(assert (=> b!2834735 d!822493))

(declare-fun b!2834861 () Bool)

(declare-fun e!1795167 () Bool)

(declare-fun lt!1010845 () tuple2!33536)

(declare-fun isEmpty!18459 (BalanceConc!20438) Bool)

(assert (=> b!2834861 (= e!1795167 (not (isEmpty!18459 (_1!19880 lt!1010845))))))

(declare-fun e!1795168 () Bool)

(declare-fun b!2834862 () Bool)

(declare-datatypes ((tuple2!33540 0))(
  ( (tuple2!33541 (_1!19882 List!33593) (_2!19882 List!33591)) )
))
(declare-fun lexList!1258 (LexerInterface!4612 List!33592 List!33591) tuple2!33540)

(assert (=> b!2834862 (= e!1795168 (= (list!12508 (_2!19880 lt!1010845)) (_2!19882 (lexList!1258 thiss!11007 rules!1047 (list!12508 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))))))

(declare-fun e!1795166 () Bool)

(declare-fun b!2834863 () Bool)

(assert (=> b!2834863 (= e!1795166 (= (_2!19880 lt!1010845) (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))))

(declare-fun d!822495 () Bool)

(assert (=> d!822495 e!1795168))

(declare-fun res!1179933 () Bool)

(assert (=> d!822495 (=> (not res!1179933) (not e!1795168))))

(assert (=> d!822495 (= res!1179933 e!1795166)))

(declare-fun c!458162 () Bool)

(assert (=> d!822495 (= c!458162 (> (size!26042 (_1!19880 lt!1010845)) 0))))

(declare-fun lexTailRecV2!896 (LexerInterface!4612 List!33592 BalanceConc!20436 BalanceConc!20436 BalanceConc!20436 BalanceConc!20438) tuple2!33536)

(assert (=> d!822495 (= lt!1010845 (lexTailRecV2!896 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))) (BalanceConc!20437 Empty!10399) (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))) (BalanceConc!20439 Empty!10400)))))

(assert (=> d!822495 (= (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))) lt!1010845)))

(declare-fun b!2834864 () Bool)

(declare-fun res!1179932 () Bool)

(assert (=> b!2834864 (=> (not res!1179932) (not e!1795168))))

(assert (=> b!2834864 (= res!1179932 (= (list!12507 (_1!19880 lt!1010845)) (_1!19882 (lexList!1258 thiss!11007 rules!1047 (list!12508 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))))))

(declare-fun b!2834865 () Bool)

(assert (=> b!2834865 (= e!1795166 e!1795167)))

(declare-fun res!1179934 () Bool)

(assert (=> b!2834865 (= res!1179934 (< (size!26037 (_2!19880 lt!1010845)) (size!26037 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))))

(assert (=> b!2834865 (=> (not res!1179934) (not e!1795167))))

(assert (= (and d!822495 c!458162) b!2834865))

(assert (= (and d!822495 (not c!458162)) b!2834863))

(assert (= (and b!2834865 res!1179934) b!2834861))

(assert (= (and d!822495 res!1179933) b!2834864))

(assert (= (and b!2834864 res!1179932) b!2834862))

(declare-fun m!3264355 () Bool)

(assert (=> d!822495 m!3264355))

(assert (=> d!822495 m!3264213))

(assert (=> d!822495 m!3264213))

(declare-fun m!3264357 () Bool)

(assert (=> d!822495 m!3264357))

(declare-fun m!3264359 () Bool)

(assert (=> b!2834862 m!3264359))

(assert (=> b!2834862 m!3264213))

(declare-fun m!3264361 () Bool)

(assert (=> b!2834862 m!3264361))

(assert (=> b!2834862 m!3264361))

(declare-fun m!3264363 () Bool)

(assert (=> b!2834862 m!3264363))

(declare-fun m!3264365 () Bool)

(assert (=> b!2834864 m!3264365))

(assert (=> b!2834864 m!3264213))

(assert (=> b!2834864 m!3264361))

(assert (=> b!2834864 m!3264361))

(assert (=> b!2834864 m!3264363))

(declare-fun m!3264367 () Bool)

(assert (=> b!2834865 m!3264367))

(assert (=> b!2834865 m!3264213))

(declare-fun m!3264369 () Bool)

(assert (=> b!2834865 m!3264369))

(declare-fun m!3264371 () Bool)

(assert (=> b!2834861 m!3264371))

(assert (=> b!2834735 d!822495))

(declare-fun d!822507 () Bool)

(declare-fun lt!1010848 () BalanceConc!20436)

(declare-fun printList!1232 (LexerInterface!4612 List!33593) List!33591)

(assert (=> d!822507 (= (list!12508 lt!1010848) (printList!1232 thiss!11007 (list!12507 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))))

(declare-fun printTailRec!1175 (LexerInterface!4612 BalanceConc!20438 Int BalanceConc!20436) BalanceConc!20436)

(assert (=> d!822507 (= lt!1010848 (printTailRec!1175 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019))) 0 (BalanceConc!20437 Empty!10399)))))

(assert (=> d!822507 (= (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))) lt!1010848)))

(declare-fun bs!518597 () Bool)

(assert (= bs!518597 d!822507))

(declare-fun m!3264373 () Bool)

(assert (=> bs!518597 m!3264373))

(assert (=> bs!518597 m!3264217))

(assert (=> bs!518597 m!3264221))

(assert (=> bs!518597 m!3264221))

(declare-fun m!3264375 () Bool)

(assert (=> bs!518597 m!3264375))

(assert (=> bs!518597 m!3264217))

(declare-fun m!3264377 () Bool)

(assert (=> bs!518597 m!3264377))

(assert (=> b!2834735 d!822507))

(declare-fun d!822509 () Bool)

(declare-fun e!1795171 () Bool)

(assert (=> d!822509 e!1795171))

(declare-fun res!1179937 () Bool)

(assert (=> d!822509 (=> (not res!1179937) (not e!1795171))))

(declare-fun lt!1010851 () BalanceConc!20438)

(assert (=> d!822509 (= res!1179937 (= (list!12507 lt!1010851) (Cons!33469 (h!38889 (t!231786 l!4019)) Nil!33469)))))

(declare-fun singleton!954 (Token!9446) BalanceConc!20438)

(assert (=> d!822509 (= lt!1010851 (singleton!954 (h!38889 (t!231786 l!4019))))))

(assert (=> d!822509 (= (singletonSeq!2173 (h!38889 (t!231786 l!4019))) lt!1010851)))

(declare-fun b!2834868 () Bool)

(declare-fun isBalanced!3138 (Conc!10400) Bool)

(assert (=> b!2834868 (= e!1795171 (isBalanced!3138 (c!458143 lt!1010851)))))

(assert (= (and d!822509 res!1179937) b!2834868))

(declare-fun m!3264379 () Bool)

(assert (=> d!822509 m!3264379))

(declare-fun m!3264381 () Bool)

(assert (=> d!822509 m!3264381))

(declare-fun m!3264383 () Bool)

(assert (=> b!2834868 m!3264383))

(assert (=> b!2834735 d!822509))

(declare-fun d!822511 () Bool)

(assert (=> d!822511 true))

(declare-fun order!17873 () Int)

(declare-fun lambda!104121 () Int)

(declare-fun dynLambda!14078 (Int Int) Int)

(assert (=> d!822511 (< (dynLambda!14072 order!17867 (toValue!7060 (transformation!5022 (h!38888 rules!1047)))) (dynLambda!14078 order!17873 lambda!104121))))

(declare-fun Forall2!840 (Int) Bool)

(assert (=> d!822511 (= (equivClasses!1988 (toChars!6919 (transformation!5022 (h!38888 rules!1047))) (toValue!7060 (transformation!5022 (h!38888 rules!1047)))) (Forall2!840 lambda!104121))))

(declare-fun bs!518598 () Bool)

(assert (= bs!518598 d!822511))

(declare-fun m!3264385 () Bool)

(assert (=> bs!518598 m!3264385))

(assert (=> b!2834748 d!822511))

(declare-fun d!822513 () Bool)

(assert (=> d!822513 (= (list!12508 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))) (list!12511 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))))

(declare-fun bs!518599 () Bool)

(assert (= bs!518599 d!822513))

(declare-fun m!3264387 () Bool)

(assert (=> bs!518599 m!3264387))

(assert (=> b!2834655 d!822513))

(declare-fun d!822515 () Bool)

(declare-fun lt!1010854 () Int)

(assert (=> d!822515 (>= lt!1010854 0)))

(declare-fun e!1795176 () Int)

(assert (=> d!822515 (= lt!1010854 e!1795176)))

(declare-fun c!458165 () Bool)

(assert (=> d!822515 (= c!458165 ((_ is Nil!33467) (originalCharacters!5754 (h!38889 l!4019))))))

(assert (=> d!822515 (= (size!26041 (originalCharacters!5754 (h!38889 l!4019))) lt!1010854)))

(declare-fun b!2834877 () Bool)

(assert (=> b!2834877 (= e!1795176 0)))

(declare-fun b!2834878 () Bool)

(assert (=> b!2834878 (= e!1795176 (+ 1 (size!26041 (t!231784 (originalCharacters!5754 (h!38889 l!4019))))))))

(assert (= (and d!822515 c!458165) b!2834877))

(assert (= (and d!822515 (not c!458165)) b!2834878))

(declare-fun m!3264389 () Bool)

(assert (=> b!2834878 m!3264389))

(assert (=> b!2834656 d!822515))

(declare-fun d!822517 () Bool)

(declare-fun charsToBigInt!0 (List!33590 Int) Int)

(assert (=> d!822517 (= (inv!15 (value!161496 (h!38889 l!4019))) (= (charsToBigInt!0 (text!37213 (value!161496 (h!38889 l!4019))) 0) (value!161491 (value!161496 (h!38889 l!4019)))))))

(declare-fun bs!518600 () Bool)

(assert (= bs!518600 d!822517))

(declare-fun m!3264391 () Bool)

(assert (=> bs!518600 m!3264391))

(assert (=> b!2834762 d!822517))

(declare-fun d!822519 () Bool)

(declare-fun lt!1010855 () Bool)

(assert (=> d!822519 (= lt!1010855 (isEmpty!18454 (list!12508 (_2!19880 lt!1010805))))))

(assert (=> d!822519 (= lt!1010855 (isEmpty!18458 (c!458142 (_2!19880 lt!1010805))))))

(assert (=> d!822519 (= (isEmpty!18455 (_2!19880 lt!1010805)) lt!1010855)))

(declare-fun bs!518601 () Bool)

(assert (= bs!518601 d!822519))

(declare-fun m!3264393 () Bool)

(assert (=> bs!518601 m!3264393))

(assert (=> bs!518601 m!3264393))

(declare-fun m!3264395 () Bool)

(assert (=> bs!518601 m!3264395))

(declare-fun m!3264397 () Bool)

(assert (=> bs!518601 m!3264397))

(assert (=> b!2834734 d!822519))

(declare-fun bs!518602 () Bool)

(declare-fun d!822521 () Bool)

(assert (= bs!518602 (and d!822521 d!822403)))

(declare-fun lambda!104122 () Int)

(assert (=> bs!518602 (= lambda!104122 lambda!104112)))

(declare-fun bs!518603 () Bool)

(assert (= bs!518603 (and d!822521 d!822457)))

(assert (=> bs!518603 (= lambda!104122 lambda!104115)))

(declare-fun b!2834883 () Bool)

(declare-fun e!1795181 () Bool)

(assert (=> b!2834883 (= e!1795181 true)))

(declare-fun b!2834882 () Bool)

(declare-fun e!1795180 () Bool)

(assert (=> b!2834882 (= e!1795180 e!1795181)))

(declare-fun b!2834881 () Bool)

(declare-fun e!1795179 () Bool)

(assert (=> b!2834881 (= e!1795179 e!1795180)))

(assert (=> d!822521 e!1795179))

(assert (= b!2834882 b!2834883))

(assert (= b!2834881 b!2834882))

(assert (= (and d!822521 ((_ is Cons!33468) rules!1047)) b!2834881))

(assert (=> b!2834883 (< (dynLambda!14072 order!17867 (toValue!7060 (transformation!5022 (h!38888 rules!1047)))) (dynLambda!14073 order!17869 lambda!104122))))

(assert (=> b!2834883 (< (dynLambda!14074 order!17871 (toChars!6919 (transformation!5022 (h!38888 rules!1047)))) (dynLambda!14073 order!17869 lambda!104122))))

(assert (=> d!822521 true))

(declare-fun lt!1010856 () Bool)

(assert (=> d!822521 (= lt!1010856 (forall!6886 (list!12507 (seqFromList!3268 l!4019)) lambda!104122))))

(declare-fun e!1795178 () Bool)

(assert (=> d!822521 (= lt!1010856 e!1795178)))

(declare-fun res!1179940 () Bool)

(assert (=> d!822521 (=> res!1179940 e!1795178)))

(assert (=> d!822521 (= res!1179940 (not ((_ is Cons!33469) (list!12507 (seqFromList!3268 l!4019)))))))

(assert (=> d!822521 (not (isEmpty!18451 rules!1047))))

(assert (=> d!822521 (= (rulesProduceEachTokenIndividuallyList!1655 thiss!11007 rules!1047 (list!12507 (seqFromList!3268 l!4019))) lt!1010856)))

(declare-fun b!2834879 () Bool)

(declare-fun e!1795177 () Bool)

(assert (=> b!2834879 (= e!1795178 e!1795177)))

(declare-fun res!1179941 () Bool)

(assert (=> b!2834879 (=> (not res!1179941) (not e!1795177))))

(assert (=> b!2834879 (= res!1179941 (rulesProduceIndividualToken!2142 thiss!11007 rules!1047 (h!38889 (list!12507 (seqFromList!3268 l!4019)))))))

(declare-fun b!2834880 () Bool)

(assert (=> b!2834880 (= e!1795177 (rulesProduceEachTokenIndividuallyList!1655 thiss!11007 rules!1047 (t!231786 (list!12507 (seqFromList!3268 l!4019)))))))

(assert (= (and d!822521 (not res!1179940)) b!2834879))

(assert (= (and b!2834879 res!1179941) b!2834880))

(assert (=> d!822521 m!3264095))

(declare-fun m!3264399 () Bool)

(assert (=> d!822521 m!3264399))

(assert (=> d!822521 m!3264037))

(declare-fun m!3264401 () Bool)

(assert (=> b!2834879 m!3264401))

(declare-fun m!3264403 () Bool)

(assert (=> b!2834880 m!3264403))

(assert (=> b!2834634 d!822521))

(declare-fun d!822523 () Bool)

(declare-fun list!12512 (Conc!10400) List!33593)

(assert (=> d!822523 (= (list!12507 (seqFromList!3268 l!4019)) (list!12512 (c!458143 (seqFromList!3268 l!4019))))))

(declare-fun bs!518604 () Bool)

(assert (= bs!518604 d!822523))

(declare-fun m!3264405 () Bool)

(assert (=> bs!518604 m!3264405))

(assert (=> b!2834634 d!822523))

(declare-fun d!822525 () Bool)

(assert (=> d!822525 (= (isEmpty!18454 (originalCharacters!5754 (h!38889 l!4019))) ((_ is Nil!33467) (originalCharacters!5754 (h!38889 l!4019))))))

(assert (=> d!822429 d!822525))

(declare-fun d!822527 () Bool)

(assert (=> d!822527 (= (inv!45430 (tag!5526 (rule!7450 (h!38889 (t!231786 l!4019))))) (= (mod (str.len (value!161495 (tag!5526 (rule!7450 (h!38889 (t!231786 l!4019)))))) 2) 0))))

(assert (=> b!2834777 d!822527))

(declare-fun d!822529 () Bool)

(declare-fun res!1179942 () Bool)

(declare-fun e!1795182 () Bool)

(assert (=> d!822529 (=> (not res!1179942) (not e!1795182))))

(assert (=> d!822529 (= res!1179942 (semiInverseModEq!2089 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (toValue!7060 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019)))))))))

(assert (=> d!822529 (= (inv!45433 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) e!1795182)))

(declare-fun b!2834884 () Bool)

(assert (=> b!2834884 (= e!1795182 (equivClasses!1988 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (toValue!7060 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019)))))))))

(assert (= (and d!822529 res!1179942) b!2834884))

(declare-fun m!3264407 () Bool)

(assert (=> d!822529 m!3264407))

(declare-fun m!3264409 () Bool)

(assert (=> b!2834884 m!3264409))

(assert (=> b!2834777 d!822529))

(declare-fun d!822531 () Bool)

(declare-fun res!1179943 () Bool)

(declare-fun e!1795183 () Bool)

(assert (=> d!822531 (=> (not res!1179943) (not e!1795183))))

(assert (=> d!822531 (= res!1179943 (not (isEmpty!18454 (originalCharacters!5754 (h!38889 (t!231786 l!4019))))))))

(assert (=> d!822531 (= (inv!45434 (h!38889 (t!231786 l!4019))) e!1795183)))

(declare-fun b!2834885 () Bool)

(declare-fun res!1179944 () Bool)

(assert (=> b!2834885 (=> (not res!1179944) (not e!1795183))))

(assert (=> b!2834885 (= res!1179944 (= (originalCharacters!5754 (h!38889 (t!231786 l!4019))) (list!12508 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))))))

(declare-fun b!2834886 () Bool)

(assert (=> b!2834886 (= e!1795183 (= (size!26036 (h!38889 (t!231786 l!4019))) (size!26041 (originalCharacters!5754 (h!38889 (t!231786 l!4019))))))))

(assert (= (and d!822531 res!1179943) b!2834885))

(assert (= (and b!2834885 res!1179944) b!2834886))

(declare-fun b_lambda!85185 () Bool)

(assert (=> (not b_lambda!85185) (not b!2834885)))

(assert (=> b!2834885 t!231823))

(declare-fun b_and!207531 () Bool)

(assert (= b_and!207519 (and (=> t!231823 result!192562) b_and!207531)))

(assert (=> b!2834885 t!231825))

(declare-fun b_and!207533 () Bool)

(assert (= b_and!207521 (and (=> t!231825 result!192564) b_and!207533)))

(assert (=> b!2834885 t!231831))

(declare-fun b_and!207535 () Bool)

(assert (= b_and!207525 (and (=> t!231831 result!192570) b_and!207535)))

(assert (=> b!2834885 t!231835))

(declare-fun b_and!207537 () Bool)

(assert (= b_and!207529 (and (=> t!231835 result!192576) b_and!207537)))

(declare-fun m!3264411 () Bool)

(assert (=> d!822531 m!3264411))

(assert (=> b!2834885 m!3264237))

(assert (=> b!2834885 m!3264237))

(declare-fun m!3264413 () Bool)

(assert (=> b!2834885 m!3264413))

(declare-fun m!3264415 () Bool)

(assert (=> b!2834886 m!3264415))

(assert (=> b!2834775 d!822531))

(declare-fun d!822533 () Bool)

(declare-fun c!458168 () Bool)

(assert (=> d!822533 (= c!458168 ((_ is Node!10399) (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))))

(declare-fun e!1795188 () Bool)

(assert (=> d!822533 (= (inv!45437 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))) e!1795188)))

(declare-fun b!2834893 () Bool)

(declare-fun inv!45439 (Conc!10399) Bool)

(assert (=> b!2834893 (= e!1795188 (inv!45439 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))))

(declare-fun b!2834894 () Bool)

(declare-fun e!1795189 () Bool)

(assert (=> b!2834894 (= e!1795188 e!1795189)))

(declare-fun res!1179947 () Bool)

(assert (=> b!2834894 (= res!1179947 (not ((_ is Leaf!15818) (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))))))

(assert (=> b!2834894 (=> res!1179947 e!1795189)))

(declare-fun b!2834895 () Bool)

(declare-fun inv!45440 (Conc!10399) Bool)

(assert (=> b!2834895 (= e!1795189 (inv!45440 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))))

(assert (= (and d!822533 c!458168) b!2834893))

(assert (= (and d!822533 (not c!458168)) b!2834894))

(assert (= (and b!2834894 (not res!1179947)) b!2834895))

(declare-fun m!3264417 () Bool)

(assert (=> b!2834893 m!3264417))

(declare-fun m!3264419 () Bool)

(assert (=> b!2834895 m!3264419))

(assert (=> b!2834661 d!822533))

(declare-fun b!2834896 () Bool)

(declare-fun e!1795192 () Bool)

(assert (=> b!2834896 (= e!1795192 (inv!16 (value!161496 (h!38889 (t!231786 l!4019)))))))

(declare-fun b!2834897 () Bool)

(declare-fun res!1179948 () Bool)

(declare-fun e!1795191 () Bool)

(assert (=> b!2834897 (=> res!1179948 e!1795191)))

(assert (=> b!2834897 (= res!1179948 (not ((_ is IntegerValue!15758) (value!161496 (h!38889 (t!231786 l!4019))))))))

(declare-fun e!1795190 () Bool)

(assert (=> b!2834897 (= e!1795190 e!1795191)))

(declare-fun d!822535 () Bool)

(declare-fun c!458170 () Bool)

(assert (=> d!822535 (= c!458170 ((_ is IntegerValue!15756) (value!161496 (h!38889 (t!231786 l!4019)))))))

(assert (=> d!822535 (= (inv!21 (value!161496 (h!38889 (t!231786 l!4019)))) e!1795192)))

(declare-fun b!2834898 () Bool)

(assert (=> b!2834898 (= e!1795192 e!1795190)))

(declare-fun c!458169 () Bool)

(assert (=> b!2834898 (= c!458169 ((_ is IntegerValue!15757) (value!161496 (h!38889 (t!231786 l!4019)))))))

(declare-fun b!2834899 () Bool)

(assert (=> b!2834899 (= e!1795191 (inv!15 (value!161496 (h!38889 (t!231786 l!4019)))))))

(declare-fun b!2834900 () Bool)

(assert (=> b!2834900 (= e!1795190 (inv!17 (value!161496 (h!38889 (t!231786 l!4019)))))))

(assert (= (and d!822535 c!458170) b!2834896))

(assert (= (and d!822535 (not c!458170)) b!2834898))

(assert (= (and b!2834898 c!458169) b!2834900))

(assert (= (and b!2834898 (not c!458169)) b!2834897))

(assert (= (and b!2834897 (not res!1179948)) b!2834899))

(declare-fun m!3264421 () Bool)

(assert (=> b!2834896 m!3264421))

(declare-fun m!3264423 () Bool)

(assert (=> b!2834899 m!3264423))

(declare-fun m!3264425 () Bool)

(assert (=> b!2834900 m!3264425))

(assert (=> b!2834776 d!822535))

(declare-fun d!822537 () Bool)

(declare-fun lt!1010857 () Int)

(assert (=> d!822537 (>= lt!1010857 0)))

(declare-fun e!1795193 () Int)

(assert (=> d!822537 (= lt!1010857 e!1795193)))

(declare-fun c!458171 () Bool)

(assert (=> d!822537 (= c!458171 ((_ is Nil!33467) (list!12508 (charsOf!3108 (h!38889 (t!231786 l!4019))))))))

(assert (=> d!822537 (= (size!26041 (list!12508 (charsOf!3108 (h!38889 (t!231786 l!4019))))) lt!1010857)))

(declare-fun b!2834901 () Bool)

(assert (=> b!2834901 (= e!1795193 0)))

(declare-fun b!2834902 () Bool)

(assert (=> b!2834902 (= e!1795193 (+ 1 (size!26041 (t!231784 (list!12508 (charsOf!3108 (h!38889 (t!231786 l!4019))))))))))

(assert (= (and d!822537 c!458171) b!2834901))

(assert (= (and d!822537 (not c!458171)) b!2834902))

(declare-fun m!3264427 () Bool)

(assert (=> b!2834902 m!3264427))

(assert (=> d!822455 d!822537))

(declare-fun d!822539 () Bool)

(assert (=> d!822539 (= (list!12508 (charsOf!3108 (h!38889 (t!231786 l!4019)))) (list!12511 (c!458142 (charsOf!3108 (h!38889 (t!231786 l!4019))))))))

(declare-fun bs!518605 () Bool)

(assert (= bs!518605 d!822539))

(declare-fun m!3264429 () Bool)

(assert (=> bs!518605 m!3264429))

(assert (=> d!822455 d!822539))

(declare-fun d!822541 () Bool)

(declare-fun lt!1010860 () Int)

(assert (=> d!822541 (= lt!1010860 (size!26041 (list!12511 (c!458142 (charsOf!3108 (h!38889 (t!231786 l!4019)))))))))

(assert (=> d!822541 (= lt!1010860 (ite ((_ is Empty!10399) (c!458142 (charsOf!3108 (h!38889 (t!231786 l!4019))))) 0 (ite ((_ is Leaf!15818) (c!458142 (charsOf!3108 (h!38889 (t!231786 l!4019))))) (csize!21029 (c!458142 (charsOf!3108 (h!38889 (t!231786 l!4019))))) (csize!21028 (c!458142 (charsOf!3108 (h!38889 (t!231786 l!4019))))))))))

(assert (=> d!822541 (= (size!26043 (c!458142 (charsOf!3108 (h!38889 (t!231786 l!4019))))) lt!1010860)))

(declare-fun bs!518606 () Bool)

(assert (= bs!518606 d!822541))

(assert (=> bs!518606 m!3264429))

(assert (=> bs!518606 m!3264429))

(declare-fun m!3264431 () Bool)

(assert (=> bs!518606 m!3264431))

(assert (=> d!822455 d!822541))

(declare-fun d!822543 () Bool)

(declare-fun c!458172 () Bool)

(assert (=> d!822543 (= c!458172 ((_ is Node!10399) (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))))))

(declare-fun e!1795194 () Bool)

(assert (=> d!822543 (= (inv!45437 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))) e!1795194)))

(declare-fun b!2834903 () Bool)

(assert (=> b!2834903 (= e!1795194 (inv!45439 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))))))

(declare-fun b!2834904 () Bool)

(declare-fun e!1795195 () Bool)

(assert (=> b!2834904 (= e!1795194 e!1795195)))

(declare-fun res!1179949 () Bool)

(assert (=> b!2834904 (= res!1179949 (not ((_ is Leaf!15818) (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))))))

(assert (=> b!2834904 (=> res!1179949 e!1795195)))

(declare-fun b!2834905 () Bool)

(assert (=> b!2834905 (= e!1795195 (inv!45440 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))))))

(assert (= (and d!822543 c!458172) b!2834903))

(assert (= (and d!822543 (not c!458172)) b!2834904))

(assert (= (and b!2834904 (not res!1179949)) b!2834905))

(declare-fun m!3264433 () Bool)

(assert (=> b!2834903 m!3264433))

(declare-fun m!3264435 () Bool)

(assert (=> b!2834905 m!3264435))

(assert (=> b!2834736 d!822543))

(declare-fun d!822545 () Bool)

(declare-fun lt!1010863 () Token!9446)

(declare-fun apply!7820 (List!33593 Int) Token!9446)

(assert (=> d!822545 (= lt!1010863 (apply!7820 (list!12507 (_1!19880 lt!1010805)) 0))))

(declare-fun apply!7821 (Conc!10400 Int) Token!9446)

(assert (=> d!822545 (= lt!1010863 (apply!7821 (c!458143 (_1!19880 lt!1010805)) 0))))

(declare-fun e!1795198 () Bool)

(assert (=> d!822545 e!1795198))

(declare-fun res!1179952 () Bool)

(assert (=> d!822545 (=> (not res!1179952) (not e!1795198))))

(assert (=> d!822545 (= res!1179952 (<= 0 0))))

(assert (=> d!822545 (= (apply!7817 (_1!19880 lt!1010805) 0) lt!1010863)))

(declare-fun b!2834908 () Bool)

(assert (=> b!2834908 (= e!1795198 (< 0 (size!26042 (_1!19880 lt!1010805))))))

(assert (= (and d!822545 res!1179952) b!2834908))

(declare-fun m!3264437 () Bool)

(assert (=> d!822545 m!3264437))

(assert (=> d!822545 m!3264437))

(declare-fun m!3264439 () Bool)

(assert (=> d!822545 m!3264439))

(declare-fun m!3264441 () Bool)

(assert (=> d!822545 m!3264441))

(assert (=> b!2834908 m!3264223))

(assert (=> b!2834733 d!822545))

(declare-fun d!822547 () Bool)

(declare-fun charsToInt!0 (List!33590) (_ BitVec 32))

(assert (=> d!822547 (= (inv!16 (value!161496 (h!38889 l!4019))) (= (charsToInt!0 (text!37211 (value!161496 (h!38889 l!4019)))) (value!161487 (value!161496 (h!38889 l!4019)))))))

(declare-fun bs!518607 () Bool)

(assert (= bs!518607 d!822547))

(declare-fun m!3264443 () Bool)

(assert (=> bs!518607 m!3264443))

(assert (=> b!2834759 d!822547))

(assert (=> d!822435 d!822427))

(declare-fun d!822549 () Bool)

(assert (=> d!822549 (= (list!12507 (singletonSeq!2173 (h!38889 l!4019))) (list!12512 (c!458143 (singletonSeq!2173 (h!38889 l!4019)))))))

(declare-fun bs!518608 () Bool)

(assert (= bs!518608 d!822549))

(declare-fun m!3264445 () Bool)

(assert (=> bs!518608 m!3264445))

(assert (=> d!822435 d!822549))

(declare-fun d!822551 () Bool)

(declare-fun e!1795199 () Bool)

(assert (=> d!822551 e!1795199))

(declare-fun res!1179953 () Bool)

(assert (=> d!822551 (=> (not res!1179953) (not e!1795199))))

(declare-fun lt!1010864 () BalanceConc!20438)

(assert (=> d!822551 (= res!1179953 (= (list!12507 lt!1010864) (Cons!33469 (h!38889 l!4019) Nil!33469)))))

(assert (=> d!822551 (= lt!1010864 (singleton!954 (h!38889 l!4019)))))

(assert (=> d!822551 (= (singletonSeq!2173 (h!38889 l!4019)) lt!1010864)))

(declare-fun b!2834909 () Bool)

(assert (=> b!2834909 (= e!1795199 (isBalanced!3138 (c!458143 lt!1010864)))))

(assert (= (and d!822551 res!1179953) b!2834909))

(declare-fun m!3264447 () Bool)

(assert (=> d!822551 m!3264447))

(declare-fun m!3264449 () Bool)

(assert (=> d!822551 m!3264449))

(declare-fun m!3264451 () Bool)

(assert (=> b!2834909 m!3264451))

(assert (=> d!822435 d!822551))

(declare-fun d!822553 () Bool)

(declare-fun lt!1010865 () BalanceConc!20436)

(assert (=> d!822553 (= (list!12508 lt!1010865) (printList!1232 thiss!11007 (list!12507 (singletonSeq!2173 (h!38889 l!4019)))))))

(assert (=> d!822553 (= lt!1010865 (printTailRec!1175 thiss!11007 (singletonSeq!2173 (h!38889 l!4019)) 0 (BalanceConc!20437 Empty!10399)))))

(assert (=> d!822553 (= (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))) lt!1010865)))

(declare-fun bs!518609 () Bool)

(assert (= bs!518609 d!822553))

(declare-fun m!3264453 () Bool)

(assert (=> bs!518609 m!3264453))

(assert (=> bs!518609 m!3264197))

(assert (=> bs!518609 m!3264201))

(assert (=> bs!518609 m!3264201))

(declare-fun m!3264455 () Bool)

(assert (=> bs!518609 m!3264455))

(assert (=> bs!518609 m!3264197))

(declare-fun m!3264457 () Bool)

(assert (=> bs!518609 m!3264457))

(assert (=> d!822435 d!822553))

(declare-fun d!822555 () Bool)

(declare-fun lt!1010868 () Int)

(declare-fun size!26046 (List!33593) Int)

(assert (=> d!822555 (= lt!1010868 (size!26046 (list!12507 (_1!19880 lt!1010802))))))

(declare-fun size!26047 (Conc!10400) Int)

(assert (=> d!822555 (= lt!1010868 (size!26047 (c!458143 (_1!19880 lt!1010802))))))

(assert (=> d!822555 (= (size!26042 (_1!19880 lt!1010802)) lt!1010868)))

(declare-fun bs!518610 () Bool)

(assert (= bs!518610 d!822555))

(declare-fun m!3264459 () Bool)

(assert (=> bs!518610 m!3264459))

(assert (=> bs!518610 m!3264459))

(declare-fun m!3264461 () Bool)

(assert (=> bs!518610 m!3264461))

(declare-fun m!3264463 () Bool)

(assert (=> bs!518610 m!3264463))

(assert (=> d!822435 d!822555))

(declare-fun d!822557 () Bool)

(assert (=> d!822557 (= (list!12507 (_1!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019)))))) (list!12512 (c!458143 (_1!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))))))))))

(declare-fun bs!518611 () Bool)

(assert (= bs!518611 d!822557))

(declare-fun m!3264465 () Bool)

(assert (=> bs!518611 m!3264465))

(assert (=> d!822435 d!822557))

(declare-fun b!2834910 () Bool)

(declare-fun e!1795201 () Bool)

(declare-fun lt!1010869 () tuple2!33536)

(assert (=> b!2834910 (= e!1795201 (not (isEmpty!18459 (_1!19880 lt!1010869))))))

(declare-fun e!1795202 () Bool)

(declare-fun b!2834911 () Bool)

(assert (=> b!2834911 (= e!1795202 (= (list!12508 (_2!19880 lt!1010869)) (_2!19882 (lexList!1258 thiss!11007 rules!1047 (list!12508 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))))))))))

(declare-fun b!2834912 () Bool)

(declare-fun e!1795200 () Bool)

(assert (=> b!2834912 (= e!1795200 (= (_2!19880 lt!1010869) (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019)))))))

(declare-fun d!822559 () Bool)

(assert (=> d!822559 e!1795202))

(declare-fun res!1179955 () Bool)

(assert (=> d!822559 (=> (not res!1179955) (not e!1795202))))

(assert (=> d!822559 (= res!1179955 e!1795200)))

(declare-fun c!458173 () Bool)

(assert (=> d!822559 (= c!458173 (> (size!26042 (_1!19880 lt!1010869)) 0))))

(assert (=> d!822559 (= lt!1010869 (lexTailRecV2!896 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))) (BalanceConc!20437 Empty!10399) (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))) (BalanceConc!20439 Empty!10400)))))

(assert (=> d!822559 (= (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019)))) lt!1010869)))

(declare-fun b!2834913 () Bool)

(declare-fun res!1179954 () Bool)

(assert (=> b!2834913 (=> (not res!1179954) (not e!1795202))))

(assert (=> b!2834913 (= res!1179954 (= (list!12507 (_1!19880 lt!1010869)) (_1!19882 (lexList!1258 thiss!11007 rules!1047 (list!12508 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))))))))))

(declare-fun b!2834914 () Bool)

(assert (=> b!2834914 (= e!1795200 e!1795201)))

(declare-fun res!1179956 () Bool)

(assert (=> b!2834914 (= res!1179956 (< (size!26037 (_2!19880 lt!1010869)) (size!26037 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))))))))

(assert (=> b!2834914 (=> (not res!1179956) (not e!1795201))))

(assert (= (and d!822559 c!458173) b!2834914))

(assert (= (and d!822559 (not c!458173)) b!2834912))

(assert (= (and b!2834914 res!1179956) b!2834910))

(assert (= (and d!822559 res!1179955) b!2834913))

(assert (= (and b!2834913 res!1179954) b!2834911))

(declare-fun m!3264467 () Bool)

(assert (=> d!822559 m!3264467))

(assert (=> d!822559 m!3264193))

(assert (=> d!822559 m!3264193))

(declare-fun m!3264469 () Bool)

(assert (=> d!822559 m!3264469))

(declare-fun m!3264471 () Bool)

(assert (=> b!2834911 m!3264471))

(assert (=> b!2834911 m!3264193))

(declare-fun m!3264473 () Bool)

(assert (=> b!2834911 m!3264473))

(assert (=> b!2834911 m!3264473))

(declare-fun m!3264475 () Bool)

(assert (=> b!2834911 m!3264475))

(declare-fun m!3264477 () Bool)

(assert (=> b!2834913 m!3264477))

(assert (=> b!2834913 m!3264193))

(assert (=> b!2834913 m!3264473))

(assert (=> b!2834913 m!3264473))

(assert (=> b!2834913 m!3264475))

(declare-fun m!3264479 () Bool)

(assert (=> b!2834914 m!3264479))

(assert (=> b!2834914 m!3264193))

(declare-fun m!3264481 () Bool)

(assert (=> b!2834914 m!3264481))

(declare-fun m!3264483 () Bool)

(assert (=> b!2834910 m!3264483))

(assert (=> d!822435 d!822559))

(declare-fun d!822561 () Bool)

(declare-fun res!1179961 () Bool)

(declare-fun e!1795207 () Bool)

(assert (=> d!822561 (=> res!1179961 e!1795207)))

(assert (=> d!822561 (= res!1179961 ((_ is Nil!33469) l!4019))))

(assert (=> d!822561 (= (forall!6886 l!4019 lambda!104115) e!1795207)))

(declare-fun b!2834919 () Bool)

(declare-fun e!1795208 () Bool)

(assert (=> b!2834919 (= e!1795207 e!1795208)))

(declare-fun res!1179962 () Bool)

(assert (=> b!2834919 (=> (not res!1179962) (not e!1795208))))

(declare-fun dynLambda!14080 (Int Token!9446) Bool)

(assert (=> b!2834919 (= res!1179962 (dynLambda!14080 lambda!104115 (h!38889 l!4019)))))

(declare-fun b!2834920 () Bool)

(assert (=> b!2834920 (= e!1795208 (forall!6886 (t!231786 l!4019) lambda!104115))))

(assert (= (and d!822561 (not res!1179961)) b!2834919))

(assert (= (and b!2834919 res!1179962) b!2834920))

(declare-fun b_lambda!85187 () Bool)

(assert (=> (not b_lambda!85187) (not b!2834919)))

(declare-fun m!3264485 () Bool)

(assert (=> b!2834919 m!3264485))

(declare-fun m!3264487 () Bool)

(assert (=> b!2834920 m!3264487))

(assert (=> d!822457 d!822561))

(assert (=> d!822457 d!822427))

(declare-fun d!822563 () Bool)

(declare-fun res!1179963 () Bool)

(declare-fun e!1795209 () Bool)

(assert (=> d!822563 (=> res!1179963 e!1795209)))

(assert (=> d!822563 (= res!1179963 ((_ is Nil!33469) (list!12507 (seqFromList!3268 l!4019))))))

(assert (=> d!822563 (= (forall!6886 (list!12507 (seqFromList!3268 l!4019)) lambda!104112) e!1795209)))

(declare-fun b!2834921 () Bool)

(declare-fun e!1795210 () Bool)

(assert (=> b!2834921 (= e!1795209 e!1795210)))

(declare-fun res!1179964 () Bool)

(assert (=> b!2834921 (=> (not res!1179964) (not e!1795210))))

(assert (=> b!2834921 (= res!1179964 (dynLambda!14080 lambda!104112 (h!38889 (list!12507 (seqFromList!3268 l!4019)))))))

(declare-fun b!2834922 () Bool)

(assert (=> b!2834922 (= e!1795210 (forall!6886 (t!231786 (list!12507 (seqFromList!3268 l!4019))) lambda!104112))))

(assert (= (and d!822563 (not res!1179963)) b!2834921))

(assert (= (and b!2834921 res!1179964) b!2834922))

(declare-fun b_lambda!85189 () Bool)

(assert (=> (not b_lambda!85189) (not b!2834921)))

(declare-fun m!3264489 () Bool)

(assert (=> b!2834921 m!3264489))

(declare-fun m!3264491 () Bool)

(assert (=> b!2834922 m!3264491))

(assert (=> d!822403 d!822563))

(assert (=> d!822403 d!822523))

(declare-fun d!822565 () Bool)

(declare-fun lt!1010873 () Bool)

(assert (=> d!822565 (= lt!1010873 (forall!6886 (list!12507 (seqFromList!3268 l!4019)) lambda!104112))))

(declare-fun forall!6891 (Conc!10400 Int) Bool)

(assert (=> d!822565 (= lt!1010873 (forall!6891 (c!458143 (seqFromList!3268 l!4019)) lambda!104112))))

(assert (=> d!822565 (= (forall!6887 (seqFromList!3268 l!4019) lambda!104112) lt!1010873)))

(declare-fun bs!518614 () Bool)

(assert (= bs!518614 d!822565))

(assert (=> bs!518614 m!3264051))

(assert (=> bs!518614 m!3264095))

(assert (=> bs!518614 m!3264095))

(assert (=> bs!518614 m!3264097))

(declare-fun m!3264499 () Bool)

(assert (=> bs!518614 m!3264499))

(assert (=> d!822403 d!822565))

(assert (=> d!822403 d!822427))

(assert (=> b!2834741 d!822435))

(assert (=> d!822451 d!822495))

(assert (=> d!822451 d!822509))

(declare-fun d!822571 () Bool)

(assert (=> d!822571 (= (list!12507 (_1!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))) (list!12512 (c!458143 (_1!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))))))

(declare-fun bs!518615 () Bool)

(assert (= bs!518615 d!822571))

(declare-fun m!3264501 () Bool)

(assert (=> bs!518615 m!3264501))

(assert (=> d!822451 d!822571))

(assert (=> d!822451 d!822507))

(declare-fun d!822573 () Bool)

(assert (=> d!822573 (= (list!12507 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))) (list!12512 (c!458143 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))))

(declare-fun bs!518616 () Bool)

(assert (= bs!518616 d!822573))

(declare-fun m!3264503 () Bool)

(assert (=> bs!518616 m!3264503))

(assert (=> d!822451 d!822573))

(declare-fun d!822575 () Bool)

(declare-fun lt!1010874 () Int)

(assert (=> d!822575 (= lt!1010874 (size!26046 (list!12507 (_1!19880 lt!1010805))))))

(assert (=> d!822575 (= lt!1010874 (size!26047 (c!458143 (_1!19880 lt!1010805))))))

(assert (=> d!822575 (= (size!26042 (_1!19880 lt!1010805)) lt!1010874)))

(declare-fun bs!518617 () Bool)

(assert (= bs!518617 d!822575))

(assert (=> bs!518617 m!3264437))

(assert (=> bs!518617 m!3264437))

(declare-fun m!3264505 () Bool)

(assert (=> bs!518617 m!3264505))

(declare-fun m!3264507 () Bool)

(assert (=> bs!518617 m!3264507))

(assert (=> d!822451 d!822575))

(assert (=> d!822451 d!822427))

(declare-fun d!822577 () Bool)

(assert (=> d!822577 true))

(declare-fun order!17877 () Int)

(declare-fun lambda!104128 () Int)

(declare-fun dynLambda!14081 (Int Int) Int)

(assert (=> d!822577 (< (dynLambda!14074 order!17871 (toChars!6919 (transformation!5022 (h!38888 rules!1047)))) (dynLambda!14081 order!17877 lambda!104128))))

(assert (=> d!822577 true))

(assert (=> d!822577 (< (dynLambda!14072 order!17867 (toValue!7060 (transformation!5022 (h!38888 rules!1047)))) (dynLambda!14081 order!17877 lambda!104128))))

(declare-fun Forall!1244 (Int) Bool)

(assert (=> d!822577 (= (semiInverseModEq!2089 (toChars!6919 (transformation!5022 (h!38888 rules!1047))) (toValue!7060 (transformation!5022 (h!38888 rules!1047)))) (Forall!1244 lambda!104128))))

(declare-fun bs!518619 () Bool)

(assert (= bs!518619 d!822577))

(declare-fun m!3264511 () Bool)

(assert (=> bs!518619 m!3264511))

(assert (=> d!822461 d!822577))

(declare-fun bs!518620 () Bool)

(declare-fun d!822581 () Bool)

(assert (= bs!518620 (and d!822581 d!822577)))

(declare-fun lambda!104129 () Int)

(assert (=> bs!518620 (= (and (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (toChars!6919 (transformation!5022 (h!38888 rules!1047)))) (= (toValue!7060 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (toValue!7060 (transformation!5022 (h!38888 rules!1047))))) (= lambda!104129 lambda!104128))))

(assert (=> d!822581 true))

(assert (=> d!822581 (< (dynLambda!14074 order!17871 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019))))) (dynLambda!14081 order!17877 lambda!104129))))

(assert (=> d!822581 true))

(assert (=> d!822581 (< (dynLambda!14072 order!17867 (toValue!7060 (transformation!5022 (rule!7450 (h!38889 l!4019))))) (dynLambda!14081 order!17877 lambda!104129))))

(assert (=> d!822581 (= (semiInverseModEq!2089 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (toValue!7060 (transformation!5022 (rule!7450 (h!38889 l!4019))))) (Forall!1244 lambda!104129))))

(declare-fun bs!518622 () Bool)

(assert (= bs!518622 d!822581))

(declare-fun m!3264515 () Bool)

(assert (=> bs!518622 m!3264515))

(assert (=> d!822467 d!822581))

(declare-fun d!822585 () Bool)

(assert (=> d!822585 (= (inv!45430 (tag!5526 (h!38888 (t!231785 rules!1047)))) (= (mod (str.len (value!161495 (tag!5526 (h!38888 (t!231785 rules!1047))))) 2) 0))))

(assert (=> b!2834788 d!822585))

(declare-fun d!822589 () Bool)

(declare-fun res!1179966 () Bool)

(declare-fun e!1795212 () Bool)

(assert (=> d!822589 (=> (not res!1179966) (not e!1795212))))

(assert (=> d!822589 (= res!1179966 (semiInverseModEq!2089 (toChars!6919 (transformation!5022 (h!38888 (t!231785 rules!1047)))) (toValue!7060 (transformation!5022 (h!38888 (t!231785 rules!1047))))))))

(assert (=> d!822589 (= (inv!45433 (transformation!5022 (h!38888 (t!231785 rules!1047)))) e!1795212)))

(declare-fun b!2834932 () Bool)

(assert (=> b!2834932 (= e!1795212 (equivClasses!1988 (toChars!6919 (transformation!5022 (h!38888 (t!231785 rules!1047)))) (toValue!7060 (transformation!5022 (h!38888 (t!231785 rules!1047))))))))

(assert (= (and d!822589 res!1179966) b!2834932))

(declare-fun m!3264517 () Bool)

(assert (=> d!822589 m!3264517))

(declare-fun m!3264521 () Bool)

(assert (=> b!2834932 m!3264521))

(assert (=> b!2834788 d!822589))

(declare-fun d!822591 () Bool)

(declare-fun e!1795223 () Bool)

(assert (=> d!822591 e!1795223))

(declare-fun res!1179975 () Bool)

(assert (=> d!822591 (=> (not res!1179975) (not e!1795223))))

(declare-fun lt!1010882 () BalanceConc!20438)

(assert (=> d!822591 (= res!1179975 (= (list!12507 lt!1010882) l!4019))))

(declare-fun fromList!587 (List!33593) Conc!10400)

(assert (=> d!822591 (= lt!1010882 (BalanceConc!20439 (fromList!587 l!4019)))))

(assert (=> d!822591 (= (fromListB!1480 l!4019) lt!1010882)))

(declare-fun b!2834947 () Bool)

(assert (=> b!2834947 (= e!1795223 (isBalanced!3138 (fromList!587 l!4019)))))

(assert (= (and d!822591 res!1179975) b!2834947))

(declare-fun m!3264573 () Bool)

(assert (=> d!822591 m!3264573))

(declare-fun m!3264577 () Bool)

(assert (=> d!822591 m!3264577))

(assert (=> b!2834947 m!3264577))

(assert (=> b!2834947 m!3264577))

(declare-fun m!3264581 () Bool)

(assert (=> b!2834947 m!3264581))

(assert (=> d!822423 d!822591))

(declare-fun bs!518627 () Bool)

(declare-fun d!822611 () Bool)

(assert (= bs!518627 (and d!822611 d!822511)))

(declare-fun lambda!104130 () Int)

(assert (=> bs!518627 (= (= (toValue!7060 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (toValue!7060 (transformation!5022 (h!38888 rules!1047)))) (= lambda!104130 lambda!104121))))

(assert (=> d!822611 true))

(assert (=> d!822611 (< (dynLambda!14072 order!17867 (toValue!7060 (transformation!5022 (rule!7450 (h!38889 l!4019))))) (dynLambda!14078 order!17873 lambda!104130))))

(assert (=> d!822611 (= (equivClasses!1988 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (toValue!7060 (transformation!5022 (rule!7450 (h!38889 l!4019))))) (Forall2!840 lambda!104130))))

(declare-fun bs!518629 () Bool)

(assert (= bs!518629 d!822611))

(declare-fun m!3264591 () Bool)

(assert (=> bs!518629 m!3264591))

(assert (=> b!2834764 d!822611))

(declare-fun d!822619 () Bool)

(declare-fun res!1179981 () Bool)

(declare-fun e!1795229 () Bool)

(assert (=> d!822619 (=> res!1179981 e!1795229)))

(assert (=> d!822619 (= res!1179981 ((_ is Nil!33468) rules!1047))))

(assert (=> d!822619 (= (noDuplicateTag!1855 thiss!11007 rules!1047 Nil!33471) e!1795229)))

(declare-fun b!2834953 () Bool)

(declare-fun e!1795230 () Bool)

(assert (=> b!2834953 (= e!1795229 e!1795230)))

(declare-fun res!1179982 () Bool)

(assert (=> b!2834953 (=> (not res!1179982) (not e!1795230))))

(declare-fun contains!6108 (List!33595 String!36782) Bool)

(assert (=> b!2834953 (= res!1179982 (not (contains!6108 Nil!33471 (tag!5526 (h!38888 rules!1047)))))))

(declare-fun b!2834954 () Bool)

(assert (=> b!2834954 (= e!1795230 (noDuplicateTag!1855 thiss!11007 (t!231785 rules!1047) (Cons!33471 (tag!5526 (h!38888 rules!1047)) Nil!33471)))))

(assert (= (and d!822619 (not res!1179981)) b!2834953))

(assert (= (and b!2834953 res!1179982) b!2834954))

(declare-fun m!3264599 () Bool)

(assert (=> b!2834953 m!3264599))

(declare-fun m!3264601 () Bool)

(assert (=> b!2834954 m!3264601))

(assert (=> b!2834650 d!822619))

(declare-fun d!822625 () Bool)

(declare-fun isBalanced!3140 (Conc!10399) Bool)

(assert (=> d!822625 (= (inv!45438 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))) (isBalanced!3140 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))))))

(declare-fun bs!518632 () Bool)

(assert (= bs!518632 d!822625))

(declare-fun m!3264605 () Bool)

(assert (=> bs!518632 m!3264605))

(assert (=> tb!154409 d!822625))

(declare-fun bs!518634 () Bool)

(declare-fun d!822629 () Bool)

(assert (= bs!518634 (and d!822629 d!822403)))

(declare-fun lambda!104131 () Int)

(assert (=> bs!518634 (= lambda!104131 lambda!104112)))

(declare-fun bs!518635 () Bool)

(assert (= bs!518635 (and d!822629 d!822457)))

(assert (=> bs!518635 (= lambda!104131 lambda!104115)))

(declare-fun bs!518636 () Bool)

(assert (= bs!518636 (and d!822629 d!822521)))

(assert (=> bs!518636 (= lambda!104131 lambda!104122)))

(declare-fun b!2834965 () Bool)

(declare-fun e!1795238 () Bool)

(assert (=> b!2834965 (= e!1795238 true)))

(declare-fun b!2834964 () Bool)

(declare-fun e!1795237 () Bool)

(assert (=> b!2834964 (= e!1795237 e!1795238)))

(declare-fun b!2834963 () Bool)

(declare-fun e!1795236 () Bool)

(assert (=> b!2834963 (= e!1795236 e!1795237)))

(assert (=> d!822629 e!1795236))

(assert (= b!2834964 b!2834965))

(assert (= b!2834963 b!2834964))

(assert (= (and d!822629 ((_ is Cons!33468) rules!1047)) b!2834963))

(assert (=> b!2834965 (< (dynLambda!14072 order!17867 (toValue!7060 (transformation!5022 (h!38888 rules!1047)))) (dynLambda!14073 order!17869 lambda!104131))))

(assert (=> b!2834965 (< (dynLambda!14074 order!17871 (toChars!6919 (transformation!5022 (h!38888 rules!1047)))) (dynLambda!14073 order!17869 lambda!104131))))

(assert (=> d!822629 true))

(declare-fun lt!1010890 () Bool)

(assert (=> d!822629 (= lt!1010890 (forall!6886 (t!231786 l!4019) lambda!104131))))

(declare-fun e!1795235 () Bool)

(assert (=> d!822629 (= lt!1010890 e!1795235)))

(declare-fun res!1179983 () Bool)

(assert (=> d!822629 (=> res!1179983 e!1795235)))

(assert (=> d!822629 (= res!1179983 (not ((_ is Cons!33469) (t!231786 l!4019))))))

(assert (=> d!822629 (not (isEmpty!18451 rules!1047))))

(assert (=> d!822629 (= (rulesProduceEachTokenIndividuallyList!1655 thiss!11007 rules!1047 (t!231786 l!4019)) lt!1010890)))

(declare-fun b!2834961 () Bool)

(declare-fun e!1795234 () Bool)

(assert (=> b!2834961 (= e!1795235 e!1795234)))

(declare-fun res!1179984 () Bool)

(assert (=> b!2834961 (=> (not res!1179984) (not e!1795234))))

(assert (=> b!2834961 (= res!1179984 (rulesProduceIndividualToken!2142 thiss!11007 rules!1047 (h!38889 (t!231786 l!4019))))))

(declare-fun b!2834962 () Bool)

(assert (=> b!2834962 (= e!1795234 (rulesProduceEachTokenIndividuallyList!1655 thiss!11007 rules!1047 (t!231786 (t!231786 l!4019))))))

(assert (= (and d!822629 (not res!1179983)) b!2834961))

(assert (= (and b!2834961 res!1179984) b!2834962))

(declare-fun m!3264609 () Bool)

(assert (=> d!822629 m!3264609))

(assert (=> d!822629 m!3264037))

(assert (=> b!2834961 m!3264035))

(declare-fun m!3264611 () Bool)

(assert (=> b!2834962 m!3264611))

(assert (=> b!2834742 d!822629))

(declare-fun d!822633 () Bool)

(assert (=> d!822633 (= (inv!45438 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))) (isBalanced!3140 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))))

(declare-fun bs!518637 () Bool)

(assert (= bs!518637 d!822633))

(declare-fun m!3264613 () Bool)

(assert (=> bs!518637 m!3264613))

(assert (=> tb!154393 d!822633))

(assert (=> d!822449 d!822435))

(declare-fun d!822635 () Bool)

(assert (=> d!822635 (rulesProduceIndividualToken!2142 thiss!11007 rules!1047 (h!38889 l!4019))))

(assert (=> d!822635 true))

(declare-fun _$77!769 () Unit!47411)

(assert (=> d!822635 (= (choose!16728 thiss!11007 rules!1047 l!4019 (h!38889 l!4019)) _$77!769)))

(declare-fun bs!518658 () Bool)

(assert (= bs!518658 d!822635))

(assert (=> bs!518658 m!3264033))

(assert (=> d!822449 d!822635))

(assert (=> d!822449 d!822427))

(declare-fun d!822677 () Bool)

(declare-fun lt!1010901 () Bool)

(assert (=> d!822677 (= lt!1010901 (isEmpty!18454 (list!12508 (_2!19880 lt!1010802))))))

(assert (=> d!822677 (= lt!1010901 (isEmpty!18458 (c!458142 (_2!19880 lt!1010802))))))

(assert (=> d!822677 (= (isEmpty!18455 (_2!19880 lt!1010802)) lt!1010901)))

(declare-fun bs!518659 () Bool)

(assert (= bs!518659 d!822677))

(declare-fun m!3264695 () Bool)

(assert (=> bs!518659 m!3264695))

(assert (=> bs!518659 m!3264695))

(declare-fun m!3264697 () Bool)

(assert (=> bs!518659 m!3264697))

(declare-fun m!3264699 () Bool)

(assert (=> bs!518659 m!3264699))

(assert (=> b!2834731 d!822677))

(assert (=> d!822431 d!822451))

(declare-fun d!822679 () Bool)

(assert (=> d!822679 (rulesProduceIndividualToken!2142 thiss!11007 rules!1047 (h!38889 (t!231786 l!4019)))))

(assert (=> d!822679 true))

(declare-fun _$77!770 () Unit!47411)

(assert (=> d!822679 (= (choose!16728 thiss!11007 rules!1047 l!4019 (h!38889 (t!231786 l!4019))) _$77!770)))

(declare-fun bs!518660 () Bool)

(assert (= bs!518660 d!822679))

(assert (=> bs!518660 m!3264035))

(assert (=> d!822431 d!822679))

(assert (=> d!822431 d!822427))

(declare-fun d!822681 () Bool)

(declare-fun lt!1010902 () Token!9446)

(assert (=> d!822681 (= lt!1010902 (apply!7820 (list!12507 (_1!19880 lt!1010802)) 0))))

(assert (=> d!822681 (= lt!1010902 (apply!7821 (c!458143 (_1!19880 lt!1010802)) 0))))

(declare-fun e!1795301 () Bool)

(assert (=> d!822681 e!1795301))

(declare-fun res!1179999 () Bool)

(assert (=> d!822681 (=> (not res!1179999) (not e!1795301))))

(assert (=> d!822681 (= res!1179999 (<= 0 0))))

(assert (=> d!822681 (= (apply!7817 (_1!19880 lt!1010802) 0) lt!1010902)))

(declare-fun b!2835077 () Bool)

(assert (=> b!2835077 (= e!1795301 (< 0 (size!26042 (_1!19880 lt!1010802))))))

(assert (= (and d!822681 res!1179999) b!2835077))

(assert (=> d!822681 m!3264459))

(assert (=> d!822681 m!3264459))

(declare-fun m!3264701 () Bool)

(assert (=> d!822681 m!3264701))

(declare-fun m!3264703 () Bool)

(assert (=> d!822681 m!3264703))

(assert (=> b!2835077 m!3264203))

(assert (=> b!2834730 d!822681))

(declare-fun lt!1010903 () Bool)

(declare-fun d!822683 () Bool)

(assert (=> d!822683 (= lt!1010903 (isEmpty!18454 (list!12508 (_2!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))))))))))

(assert (=> d!822683 (= lt!1010903 (isEmpty!18458 (c!458142 (_2!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))))))))))

(assert (=> d!822683 (= (isEmpty!18455 (_2!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019)))))) lt!1010903)))

(declare-fun bs!518661 () Bool)

(assert (= bs!518661 d!822683))

(declare-fun m!3264705 () Bool)

(assert (=> bs!518661 m!3264705))

(assert (=> bs!518661 m!3264705))

(declare-fun m!3264707 () Bool)

(assert (=> bs!518661 m!3264707))

(declare-fun m!3264709 () Bool)

(assert (=> bs!518661 m!3264709))

(assert (=> b!2834732 d!822683))

(assert (=> b!2834732 d!822559))

(assert (=> b!2834732 d!822553))

(assert (=> b!2834732 d!822551))

(declare-fun b!2835078 () Bool)

(declare-fun e!1795302 () Bool)

(assert (=> b!2835078 (= e!1795302 tp_is_empty!14591)))

(declare-fun b!2835079 () Bool)

(declare-fun tp!906650 () Bool)

(declare-fun tp!906652 () Bool)

(assert (=> b!2835079 (= e!1795302 (and tp!906650 tp!906652))))

(declare-fun b!2835080 () Bool)

(declare-fun tp!906648 () Bool)

(assert (=> b!2835080 (= e!1795302 tp!906648)))

(assert (=> b!2834801 (= tp!906554 e!1795302)))

(declare-fun b!2835081 () Bool)

(declare-fun tp!906651 () Bool)

(declare-fun tp!906649 () Bool)

(assert (=> b!2835081 (= e!1795302 (and tp!906651 tp!906649))))

(assert (= (and b!2834801 ((_ is ElementMatch!8413) (regOne!17338 (regex!5022 (h!38888 rules!1047))))) b!2835078))

(assert (= (and b!2834801 ((_ is Concat!13666) (regOne!17338 (regex!5022 (h!38888 rules!1047))))) b!2835079))

(assert (= (and b!2834801 ((_ is Star!8413) (regOne!17338 (regex!5022 (h!38888 rules!1047))))) b!2835080))

(assert (= (and b!2834801 ((_ is Union!8413) (regOne!17338 (regex!5022 (h!38888 rules!1047))))) b!2835081))

(declare-fun b!2835082 () Bool)

(declare-fun e!1795303 () Bool)

(assert (=> b!2835082 (= e!1795303 tp_is_empty!14591)))

(declare-fun b!2835083 () Bool)

(declare-fun tp!906655 () Bool)

(declare-fun tp!906657 () Bool)

(assert (=> b!2835083 (= e!1795303 (and tp!906655 tp!906657))))

(declare-fun b!2835084 () Bool)

(declare-fun tp!906653 () Bool)

(assert (=> b!2835084 (= e!1795303 tp!906653)))

(assert (=> b!2834801 (= tp!906556 e!1795303)))

(declare-fun b!2835085 () Bool)

(declare-fun tp!906656 () Bool)

(declare-fun tp!906654 () Bool)

(assert (=> b!2835085 (= e!1795303 (and tp!906656 tp!906654))))

(assert (= (and b!2834801 ((_ is ElementMatch!8413) (regTwo!17338 (regex!5022 (h!38888 rules!1047))))) b!2835082))

(assert (= (and b!2834801 ((_ is Concat!13666) (regTwo!17338 (regex!5022 (h!38888 rules!1047))))) b!2835083))

(assert (= (and b!2834801 ((_ is Star!8413) (regTwo!17338 (regex!5022 (h!38888 rules!1047))))) b!2835084))

(assert (= (and b!2834801 ((_ is Union!8413) (regTwo!17338 (regex!5022 (h!38888 rules!1047))))) b!2835085))

(declare-fun b!2835088 () Bool)

(declare-fun b_free!81725 () Bool)

(declare-fun b_next!82429 () Bool)

(assert (=> b!2835088 (= b_free!81725 (not b_next!82429))))

(declare-fun tp!906660 () Bool)

(declare-fun b_and!207555 () Bool)

(assert (=> b!2835088 (= tp!906660 b_and!207555)))

(declare-fun b_free!81727 () Bool)

(declare-fun b_next!82431 () Bool)

(assert (=> b!2835088 (= b_free!81727 (not b_next!82431))))

(declare-fun t!231852 () Bool)

(declare-fun tb!154429 () Bool)

(assert (=> (and b!2835088 (= (toChars!6919 (transformation!5022 (h!38888 (t!231785 (t!231785 rules!1047))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019))))) t!231852) tb!154429))

(declare-fun result!192592 () Bool)

(assert (= result!192592 result!192536))

(assert (=> b!2834655 t!231852))

(declare-fun t!231854 () Bool)

(declare-fun tb!154431 () Bool)

(assert (=> (and b!2835088 (= (toChars!6919 (transformation!5022 (h!38888 (t!231785 (t!231785 rules!1047))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019)))))) t!231854) tb!154431))

(declare-fun result!192594 () Bool)

(assert (= result!192594 result!192562))

(assert (=> d!822453 t!231854))

(assert (=> b!2834885 t!231854))

(declare-fun b_and!207557 () Bool)

(declare-fun tp!906661 () Bool)

(assert (=> b!2835088 (= tp!906661 (and (=> t!231852 result!192592) (=> t!231854 result!192594) b_and!207557))))

(declare-fun e!1795305 () Bool)

(assert (=> b!2835088 (= e!1795305 (and tp!906660 tp!906661))))

(declare-fun e!1795306 () Bool)

(declare-fun b!2835087 () Bool)

(declare-fun tp!906658 () Bool)

(assert (=> b!2835087 (= e!1795306 (and tp!906658 (inv!45430 (tag!5526 (h!38888 (t!231785 (t!231785 rules!1047))))) (inv!45433 (transformation!5022 (h!38888 (t!231785 (t!231785 rules!1047))))) e!1795305))))

(declare-fun b!2835086 () Bool)

(declare-fun e!1795304 () Bool)

(declare-fun tp!906659 () Bool)

(assert (=> b!2835086 (= e!1795304 (and e!1795306 tp!906659))))

(assert (=> b!2834787 (= tp!906539 e!1795304)))

(assert (= b!2835087 b!2835088))

(assert (= b!2835086 b!2835087))

(assert (= (and b!2834787 ((_ is Cons!33468) (t!231785 (t!231785 rules!1047)))) b!2835086))

(declare-fun m!3264711 () Bool)

(assert (=> b!2835087 m!3264711))

(declare-fun m!3264713 () Bool)

(assert (=> b!2835087 m!3264713))

(declare-fun b!2835089 () Bool)

(declare-fun e!1795308 () Bool)

(assert (=> b!2835089 (= e!1795308 tp_is_empty!14591)))

(declare-fun b!2835090 () Bool)

(declare-fun tp!906664 () Bool)

(declare-fun tp!906666 () Bool)

(assert (=> b!2835090 (= e!1795308 (and tp!906664 tp!906666))))

(declare-fun b!2835091 () Bool)

(declare-fun tp!906662 () Bool)

(assert (=> b!2835091 (= e!1795308 tp!906662)))

(assert (=> b!2834788 (= tp!906538 e!1795308)))

(declare-fun b!2835092 () Bool)

(declare-fun tp!906665 () Bool)

(declare-fun tp!906663 () Bool)

(assert (=> b!2835092 (= e!1795308 (and tp!906665 tp!906663))))

(assert (= (and b!2834788 ((_ is ElementMatch!8413) (regex!5022 (h!38888 (t!231785 rules!1047))))) b!2835089))

(assert (= (and b!2834788 ((_ is Concat!13666) (regex!5022 (h!38888 (t!231785 rules!1047))))) b!2835090))

(assert (= (and b!2834788 ((_ is Star!8413) (regex!5022 (h!38888 (t!231785 rules!1047))))) b!2835091))

(assert (= (and b!2834788 ((_ is Union!8413) (regex!5022 (h!38888 (t!231785 rules!1047))))) b!2835092))

(declare-fun b!2835093 () Bool)

(declare-fun e!1795309 () Bool)

(assert (=> b!2835093 (= e!1795309 tp_is_empty!14591)))

(declare-fun b!2835094 () Bool)

(declare-fun tp!906669 () Bool)

(declare-fun tp!906671 () Bool)

(assert (=> b!2835094 (= e!1795309 (and tp!906669 tp!906671))))

(declare-fun b!2835095 () Bool)

(declare-fun tp!906667 () Bool)

(assert (=> b!2835095 (= e!1795309 tp!906667)))

(assert (=> b!2834803 (= tp!906555 e!1795309)))

(declare-fun b!2835096 () Bool)

(declare-fun tp!906670 () Bool)

(declare-fun tp!906668 () Bool)

(assert (=> b!2835096 (= e!1795309 (and tp!906670 tp!906668))))

(assert (= (and b!2834803 ((_ is ElementMatch!8413) (regOne!17339 (regex!5022 (h!38888 rules!1047))))) b!2835093))

(assert (= (and b!2834803 ((_ is Concat!13666) (regOne!17339 (regex!5022 (h!38888 rules!1047))))) b!2835094))

(assert (= (and b!2834803 ((_ is Star!8413) (regOne!17339 (regex!5022 (h!38888 rules!1047))))) b!2835095))

(assert (= (and b!2834803 ((_ is Union!8413) (regOne!17339 (regex!5022 (h!38888 rules!1047))))) b!2835096))

(declare-fun b!2835097 () Bool)

(declare-fun e!1795310 () Bool)

(assert (=> b!2835097 (= e!1795310 tp_is_empty!14591)))

(declare-fun b!2835098 () Bool)

(declare-fun tp!906674 () Bool)

(declare-fun tp!906676 () Bool)

(assert (=> b!2835098 (= e!1795310 (and tp!906674 tp!906676))))

(declare-fun b!2835099 () Bool)

(declare-fun tp!906672 () Bool)

(assert (=> b!2835099 (= e!1795310 tp!906672)))

(assert (=> b!2834803 (= tp!906553 e!1795310)))

(declare-fun b!2835100 () Bool)

(declare-fun tp!906675 () Bool)

(declare-fun tp!906673 () Bool)

(assert (=> b!2835100 (= e!1795310 (and tp!906675 tp!906673))))

(assert (= (and b!2834803 ((_ is ElementMatch!8413) (regTwo!17339 (regex!5022 (h!38888 rules!1047))))) b!2835097))

(assert (= (and b!2834803 ((_ is Concat!13666) (regTwo!17339 (regex!5022 (h!38888 rules!1047))))) b!2835098))

(assert (= (and b!2834803 ((_ is Star!8413) (regTwo!17339 (regex!5022 (h!38888 rules!1047))))) b!2835099))

(assert (= (and b!2834803 ((_ is Union!8413) (regTwo!17339 (regex!5022 (h!38888 rules!1047))))) b!2835100))

(declare-fun b!2835101 () Bool)

(declare-fun e!1795311 () Bool)

(assert (=> b!2835101 (= e!1795311 tp_is_empty!14591)))

(declare-fun b!2835102 () Bool)

(declare-fun tp!906679 () Bool)

(declare-fun tp!906681 () Bool)

(assert (=> b!2835102 (= e!1795311 (and tp!906679 tp!906681))))

(declare-fun b!2835103 () Bool)

(declare-fun tp!906677 () Bool)

(assert (=> b!2835103 (= e!1795311 tp!906677)))

(assert (=> b!2834777 (= tp!906528 e!1795311)))

(declare-fun b!2835104 () Bool)

(declare-fun tp!906680 () Bool)

(declare-fun tp!906678 () Bool)

(assert (=> b!2835104 (= e!1795311 (and tp!906680 tp!906678))))

(assert (= (and b!2834777 ((_ is ElementMatch!8413) (regex!5022 (rule!7450 (h!38889 (t!231786 l!4019)))))) b!2835101))

(assert (= (and b!2834777 ((_ is Concat!13666) (regex!5022 (rule!7450 (h!38889 (t!231786 l!4019)))))) b!2835102))

(assert (= (and b!2834777 ((_ is Star!8413) (regex!5022 (rule!7450 (h!38889 (t!231786 l!4019)))))) b!2835103))

(assert (= (and b!2834777 ((_ is Union!8413) (regex!5022 (rule!7450 (h!38889 (t!231786 l!4019)))))) b!2835104))

(declare-fun b!2835108 () Bool)

(declare-fun b_free!81729 () Bool)

(declare-fun b_next!82433 () Bool)

(assert (=> b!2835108 (= b_free!81729 (not b_next!82433))))

(declare-fun tp!906684 () Bool)

(declare-fun b_and!207559 () Bool)

(assert (=> b!2835108 (= tp!906684 b_and!207559)))

(declare-fun b_free!81731 () Bool)

(declare-fun b_next!82435 () Bool)

(assert (=> b!2835108 (= b_free!81731 (not b_next!82435))))

(declare-fun t!231856 () Bool)

(declare-fun tb!154433 () Bool)

(assert (=> (and b!2835108 (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019)))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019))))) t!231856) tb!154433))

(declare-fun result!192596 () Bool)

(assert (= result!192596 result!192536))

(assert (=> b!2834655 t!231856))

(declare-fun t!231858 () Bool)

(declare-fun tb!154435 () Bool)

(assert (=> (and b!2835108 (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019)))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019)))))) t!231858) tb!154435))

(declare-fun result!192598 () Bool)

(assert (= result!192598 result!192562))

(assert (=> d!822453 t!231858))

(assert (=> b!2834885 t!231858))

(declare-fun b_and!207561 () Bool)

(declare-fun tp!906686 () Bool)

(assert (=> b!2835108 (= tp!906686 (and (=> t!231856 result!192596) (=> t!231858 result!192598) b_and!207561))))

(declare-fun tp!906682 () Bool)

(declare-fun e!1795317 () Bool)

(declare-fun b!2835105 () Bool)

(declare-fun e!1795312 () Bool)

(assert (=> b!2835105 (= e!1795312 (and (inv!45434 (h!38889 (t!231786 (t!231786 l!4019)))) e!1795317 tp!906682))))

(declare-fun e!1795313 () Bool)

(assert (=> b!2835108 (= e!1795313 (and tp!906684 tp!906686))))

(declare-fun tp!906683 () Bool)

(declare-fun e!1795314 () Bool)

(declare-fun b!2835106 () Bool)

(assert (=> b!2835106 (= e!1795317 (and (inv!21 (value!161496 (h!38889 (t!231786 (t!231786 l!4019))))) e!1795314 tp!906683))))

(assert (=> b!2834775 (= tp!906525 e!1795312)))

(declare-fun b!2835107 () Bool)

(declare-fun tp!906685 () Bool)

(assert (=> b!2835107 (= e!1795314 (and tp!906685 (inv!45430 (tag!5526 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019)))))) (inv!45433 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019)))))) e!1795313))))

(assert (= b!2835107 b!2835108))

(assert (= b!2835106 b!2835107))

(assert (= b!2835105 b!2835106))

(assert (= (and b!2834775 ((_ is Cons!33469) (t!231786 (t!231786 l!4019)))) b!2835105))

(declare-fun m!3264715 () Bool)

(assert (=> b!2835105 m!3264715))

(declare-fun m!3264717 () Bool)

(assert (=> b!2835106 m!3264717))

(declare-fun m!3264719 () Bool)

(assert (=> b!2835107 m!3264719))

(declare-fun m!3264721 () Bool)

(assert (=> b!2835107 m!3264721))

(declare-fun tp!906694 () Bool)

(declare-fun tp!906695 () Bool)

(declare-fun b!2835117 () Bool)

(declare-fun e!1795323 () Bool)

(assert (=> b!2835117 (= e!1795323 (and (inv!45437 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))) tp!906695 (inv!45437 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))) tp!906694))))

(declare-fun b!2835119 () Bool)

(declare-fun e!1795322 () Bool)

(declare-fun tp!906693 () Bool)

(assert (=> b!2835119 (= e!1795322 tp!906693)))

(declare-fun b!2835118 () Bool)

(declare-fun inv!45444 (IArray!20803) Bool)

(assert (=> b!2835118 (= e!1795323 (and (inv!45444 (xs!13511 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))) e!1795322))))

(assert (=> b!2834661 (= tp!906462 (and (inv!45437 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))) e!1795323))))

(assert (= (and b!2834661 ((_ is Node!10399) (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))) b!2835117))

(assert (= b!2835118 b!2835119))

(assert (= (and b!2834661 ((_ is Leaf!15818) (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))) b!2835118))

(declare-fun m!3264723 () Bool)

(assert (=> b!2835117 m!3264723))

(declare-fun m!3264725 () Bool)

(assert (=> b!2835117 m!3264725))

(declare-fun m!3264727 () Bool)

(assert (=> b!2835118 m!3264727))

(assert (=> b!2834661 m!3264109))

(declare-fun b!2835120 () Bool)

(declare-fun e!1795324 () Bool)

(assert (=> b!2835120 (= e!1795324 tp_is_empty!14591)))

(declare-fun b!2835121 () Bool)

(declare-fun tp!906698 () Bool)

(declare-fun tp!906700 () Bool)

(assert (=> b!2835121 (= e!1795324 (and tp!906698 tp!906700))))

(declare-fun b!2835122 () Bool)

(declare-fun tp!906696 () Bool)

(assert (=> b!2835122 (= e!1795324 tp!906696)))

(assert (=> b!2834802 (= tp!906552 e!1795324)))

(declare-fun b!2835123 () Bool)

(declare-fun tp!906699 () Bool)

(declare-fun tp!906697 () Bool)

(assert (=> b!2835123 (= e!1795324 (and tp!906699 tp!906697))))

(assert (= (and b!2834802 ((_ is ElementMatch!8413) (reg!8742 (regex!5022 (h!38888 rules!1047))))) b!2835120))

(assert (= (and b!2834802 ((_ is Concat!13666) (reg!8742 (regex!5022 (h!38888 rules!1047))))) b!2835121))

(assert (= (and b!2834802 ((_ is Star!8413) (reg!8742 (regex!5022 (h!38888 rules!1047))))) b!2835122))

(assert (= (and b!2834802 ((_ is Union!8413) (reg!8742 (regex!5022 (h!38888 rules!1047))))) b!2835123))

(declare-fun b!2835124 () Bool)

(declare-fun e!1795325 () Bool)

(declare-fun tp!906701 () Bool)

(assert (=> b!2835124 (= e!1795325 (and tp_is_empty!14591 tp!906701))))

(assert (=> b!2834776 (= tp!906526 e!1795325)))

(assert (= (and b!2834776 ((_ is Cons!33467) (originalCharacters!5754 (h!38889 (t!231786 l!4019))))) b!2835124))

(declare-fun b!2835125 () Bool)

(declare-fun e!1795326 () Bool)

(assert (=> b!2835125 (= e!1795326 tp_is_empty!14591)))

(declare-fun b!2835126 () Bool)

(declare-fun tp!906704 () Bool)

(declare-fun tp!906706 () Bool)

(assert (=> b!2835126 (= e!1795326 (and tp!906704 tp!906706))))

(declare-fun b!2835127 () Bool)

(declare-fun tp!906702 () Bool)

(assert (=> b!2835127 (= e!1795326 tp!906702)))

(assert (=> b!2834811 (= tp!906560 e!1795326)))

(declare-fun b!2835128 () Bool)

(declare-fun tp!906705 () Bool)

(declare-fun tp!906703 () Bool)

(assert (=> b!2835128 (= e!1795326 (and tp!906705 tp!906703))))

(assert (= (and b!2834811 ((_ is ElementMatch!8413) (reg!8742 (regex!5022 (rule!7450 (h!38889 l!4019)))))) b!2835125))

(assert (= (and b!2834811 ((_ is Concat!13666) (reg!8742 (regex!5022 (rule!7450 (h!38889 l!4019)))))) b!2835126))

(assert (= (and b!2834811 ((_ is Star!8413) (reg!8742 (regex!5022 (rule!7450 (h!38889 l!4019)))))) b!2835127))

(assert (= (and b!2834811 ((_ is Union!8413) (reg!8742 (regex!5022 (rule!7450 (h!38889 l!4019)))))) b!2835128))

(declare-fun b!2835131 () Bool)

(declare-fun e!1795329 () Bool)

(assert (=> b!2835131 (= e!1795329 true)))

(declare-fun b!2835130 () Bool)

(declare-fun e!1795328 () Bool)

(assert (=> b!2835130 (= e!1795328 e!1795329)))

(declare-fun b!2835129 () Bool)

(declare-fun e!1795327 () Bool)

(assert (=> b!2835129 (= e!1795327 e!1795328)))

(assert (=> b!2834643 e!1795327))

(assert (= b!2835130 b!2835131))

(assert (= b!2835129 b!2835130))

(assert (= (and b!2834643 ((_ is Cons!33468) (t!231785 rules!1047))) b!2835129))

(assert (=> b!2835131 (< (dynLambda!14072 order!17867 (toValue!7060 (transformation!5022 (h!38888 (t!231785 rules!1047))))) (dynLambda!14073 order!17869 lambda!104112))))

(assert (=> b!2835131 (< (dynLambda!14074 order!17871 (toChars!6919 (transformation!5022 (h!38888 (t!231785 rules!1047))))) (dynLambda!14073 order!17869 lambda!104112))))

(declare-fun tp!906709 () Bool)

(declare-fun e!1795331 () Bool)

(declare-fun b!2835132 () Bool)

(declare-fun tp!906708 () Bool)

(assert (=> b!2835132 (= e!1795331 (and (inv!45437 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))) tp!906709 (inv!45437 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))) tp!906708))))

(declare-fun b!2835134 () Bool)

(declare-fun e!1795330 () Bool)

(declare-fun tp!906707 () Bool)

(assert (=> b!2835134 (= e!1795330 tp!906707)))

(declare-fun b!2835133 () Bool)

(assert (=> b!2835133 (= e!1795331 (and (inv!45444 (xs!13511 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))) e!1795330))))

(assert (=> b!2834736 (= tp!906514 (and (inv!45437 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))) e!1795331))))

(assert (= (and b!2834736 ((_ is Node!10399) (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))) b!2835132))

(assert (= b!2835133 b!2835134))

(assert (= (and b!2834736 ((_ is Leaf!15818) (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))) b!2835133))

(declare-fun m!3264729 () Bool)

(assert (=> b!2835132 m!3264729))

(declare-fun m!3264731 () Bool)

(assert (=> b!2835132 m!3264731))

(declare-fun m!3264733 () Bool)

(assert (=> b!2835133 m!3264733))

(assert (=> b!2834736 m!3264231))

(declare-fun b!2835135 () Bool)

(declare-fun e!1795332 () Bool)

(assert (=> b!2835135 (= e!1795332 tp_is_empty!14591)))

(declare-fun b!2835136 () Bool)

(declare-fun tp!906712 () Bool)

(declare-fun tp!906714 () Bool)

(assert (=> b!2835136 (= e!1795332 (and tp!906712 tp!906714))))

(declare-fun b!2835137 () Bool)

(declare-fun tp!906710 () Bool)

(assert (=> b!2835137 (= e!1795332 tp!906710)))

(assert (=> b!2834812 (= tp!906563 e!1795332)))

(declare-fun b!2835138 () Bool)

(declare-fun tp!906713 () Bool)

(declare-fun tp!906711 () Bool)

(assert (=> b!2835138 (= e!1795332 (and tp!906713 tp!906711))))

(assert (= (and b!2834812 ((_ is ElementMatch!8413) (regOne!17339 (regex!5022 (rule!7450 (h!38889 l!4019)))))) b!2835135))

(assert (= (and b!2834812 ((_ is Concat!13666) (regOne!17339 (regex!5022 (rule!7450 (h!38889 l!4019)))))) b!2835136))

(assert (= (and b!2834812 ((_ is Star!8413) (regOne!17339 (regex!5022 (rule!7450 (h!38889 l!4019)))))) b!2835137))

(assert (= (and b!2834812 ((_ is Union!8413) (regOne!17339 (regex!5022 (rule!7450 (h!38889 l!4019)))))) b!2835138))

(declare-fun b!2835139 () Bool)

(declare-fun e!1795333 () Bool)

(assert (=> b!2835139 (= e!1795333 tp_is_empty!14591)))

(declare-fun b!2835140 () Bool)

(declare-fun tp!906717 () Bool)

(declare-fun tp!906719 () Bool)

(assert (=> b!2835140 (= e!1795333 (and tp!906717 tp!906719))))

(declare-fun b!2835141 () Bool)

(declare-fun tp!906715 () Bool)

(assert (=> b!2835141 (= e!1795333 tp!906715)))

(assert (=> b!2834812 (= tp!906561 e!1795333)))

(declare-fun b!2835142 () Bool)

(declare-fun tp!906718 () Bool)

(declare-fun tp!906716 () Bool)

(assert (=> b!2835142 (= e!1795333 (and tp!906718 tp!906716))))

(assert (= (and b!2834812 ((_ is ElementMatch!8413) (regTwo!17339 (regex!5022 (rule!7450 (h!38889 l!4019)))))) b!2835139))

(assert (= (and b!2834812 ((_ is Concat!13666) (regTwo!17339 (regex!5022 (rule!7450 (h!38889 l!4019)))))) b!2835140))

(assert (= (and b!2834812 ((_ is Star!8413) (regTwo!17339 (regex!5022 (rule!7450 (h!38889 l!4019)))))) b!2835141))

(assert (= (and b!2834812 ((_ is Union!8413) (regTwo!17339 (regex!5022 (rule!7450 (h!38889 l!4019)))))) b!2835142))

(declare-fun b!2835143 () Bool)

(declare-fun e!1795334 () Bool)

(assert (=> b!2835143 (= e!1795334 tp_is_empty!14591)))

(declare-fun b!2835144 () Bool)

(declare-fun tp!906722 () Bool)

(declare-fun tp!906724 () Bool)

(assert (=> b!2835144 (= e!1795334 (and tp!906722 tp!906724))))

(declare-fun b!2835145 () Bool)

(declare-fun tp!906720 () Bool)

(assert (=> b!2835145 (= e!1795334 tp!906720)))

(assert (=> b!2834810 (= tp!906562 e!1795334)))

(declare-fun b!2835146 () Bool)

(declare-fun tp!906723 () Bool)

(declare-fun tp!906721 () Bool)

(assert (=> b!2835146 (= e!1795334 (and tp!906723 tp!906721))))

(assert (= (and b!2834810 ((_ is ElementMatch!8413) (regOne!17338 (regex!5022 (rule!7450 (h!38889 l!4019)))))) b!2835143))

(assert (= (and b!2834810 ((_ is Concat!13666) (regOne!17338 (regex!5022 (rule!7450 (h!38889 l!4019)))))) b!2835144))

(assert (= (and b!2834810 ((_ is Star!8413) (regOne!17338 (regex!5022 (rule!7450 (h!38889 l!4019)))))) b!2835145))

(assert (= (and b!2834810 ((_ is Union!8413) (regOne!17338 (regex!5022 (rule!7450 (h!38889 l!4019)))))) b!2835146))

(declare-fun b!2835147 () Bool)

(declare-fun e!1795335 () Bool)

(assert (=> b!2835147 (= e!1795335 tp_is_empty!14591)))

(declare-fun b!2835148 () Bool)

(declare-fun tp!906727 () Bool)

(declare-fun tp!906729 () Bool)

(assert (=> b!2835148 (= e!1795335 (and tp!906727 tp!906729))))

(declare-fun b!2835149 () Bool)

(declare-fun tp!906725 () Bool)

(assert (=> b!2835149 (= e!1795335 tp!906725)))

(assert (=> b!2834810 (= tp!906564 e!1795335)))

(declare-fun b!2835150 () Bool)

(declare-fun tp!906728 () Bool)

(declare-fun tp!906726 () Bool)

(assert (=> b!2835150 (= e!1795335 (and tp!906728 tp!906726))))

(assert (= (and b!2834810 ((_ is ElementMatch!8413) (regTwo!17338 (regex!5022 (rule!7450 (h!38889 l!4019)))))) b!2835147))

(assert (= (and b!2834810 ((_ is Concat!13666) (regTwo!17338 (regex!5022 (rule!7450 (h!38889 l!4019)))))) b!2835148))

(assert (= (and b!2834810 ((_ is Star!8413) (regTwo!17338 (regex!5022 (rule!7450 (h!38889 l!4019)))))) b!2835149))

(assert (= (and b!2834810 ((_ is Union!8413) (regTwo!17338 (regex!5022 (rule!7450 (h!38889 l!4019)))))) b!2835150))

(declare-fun b!2835153 () Bool)

(declare-fun e!1795338 () Bool)

(assert (=> b!2835153 (= e!1795338 true)))

(declare-fun b!2835152 () Bool)

(declare-fun e!1795337 () Bool)

(assert (=> b!2835152 (= e!1795337 e!1795338)))

(declare-fun b!2835151 () Bool)

(declare-fun e!1795336 () Bool)

(assert (=> b!2835151 (= e!1795336 e!1795337)))

(assert (=> b!2834743 e!1795336))

(assert (= b!2835152 b!2835153))

(assert (= b!2835151 b!2835152))

(assert (= (and b!2834743 ((_ is Cons!33468) (t!231785 rules!1047))) b!2835151))

(assert (=> b!2835153 (< (dynLambda!14072 order!17867 (toValue!7060 (transformation!5022 (h!38888 (t!231785 rules!1047))))) (dynLambda!14073 order!17869 lambda!104115))))

(assert (=> b!2835153 (< (dynLambda!14074 order!17871 (toChars!6919 (transformation!5022 (h!38888 (t!231785 rules!1047))))) (dynLambda!14073 order!17869 lambda!104115))))

(declare-fun b!2835154 () Bool)

(declare-fun e!1795339 () Bool)

(declare-fun tp!906730 () Bool)

(assert (=> b!2835154 (= e!1795339 (and tp_is_empty!14591 tp!906730))))

(assert (=> b!2834808 (= tp!906559 e!1795339)))

(assert (= (and b!2834808 ((_ is Cons!33467) (t!231784 (originalCharacters!5754 (h!38889 l!4019))))) b!2835154))

(declare-fun b_lambda!85201 () Bool)

(assert (= b_lambda!85187 (or d!822457 b_lambda!85201)))

(declare-fun bs!518662 () Bool)

(declare-fun d!822685 () Bool)

(assert (= bs!518662 (and d!822685 d!822457)))

(assert (=> bs!518662 (= (dynLambda!14080 lambda!104115 (h!38889 l!4019)) (rulesProduceIndividualToken!2142 thiss!11007 rules!1047 (h!38889 l!4019)))))

(assert (=> bs!518662 m!3264033))

(assert (=> b!2834919 d!822685))

(declare-fun b_lambda!85203 () Bool)

(assert (= b_lambda!85189 (or d!822403 b_lambda!85203)))

(declare-fun bs!518663 () Bool)

(declare-fun d!822687 () Bool)

(assert (= bs!518663 (and d!822687 d!822403)))

(assert (=> bs!518663 (= (dynLambda!14080 lambda!104112 (h!38889 (list!12507 (seqFromList!3268 l!4019)))) (rulesProduceIndividualToken!2142 thiss!11007 rules!1047 (h!38889 (list!12507 (seqFromList!3268 l!4019)))))))

(assert (=> bs!518663 m!3264401))

(assert (=> b!2834921 d!822687))

(declare-fun b_lambda!85205 () Bool)

(assert (= b_lambda!85185 (or (and b!2834789 b_free!81715 (= (toChars!6919 (transformation!5022 (h!38888 (t!231785 rules!1047)))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) (and b!2835088 b_free!81727 (= (toChars!6919 (transformation!5022 (h!38888 (t!231785 (t!231785 rules!1047))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) (and b!2834778 b_free!81711) (and b!2834564 b_free!81699 (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) (and b!2835108 b_free!81731 (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019)))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) (and b!2834573 b_free!81695 (= (toChars!6919 (transformation!5022 (h!38888 rules!1047))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) b_lambda!85205)))

(check-sat b_and!207535 (not bs!518663) (not b!2834895) (not bs!518662) (not b!2835124) (not b!2834864) b_and!207533 (not d!822581) (not b_lambda!85179) (not b!2834900) (not d!822589) (not b!2834905) (not d!822577) (not b!2835100) (not d!822521) (not b!2834661) (not b!2834908) (not b!2835081) (not b!2834922) (not d!822555) (not d!822517) (not b_lambda!85181) (not b!2834879) (not b!2835107) (not b!2834736) (not d!822495) (not b_next!82401) (not b!2835133) (not b!2835104) (not b!2834893) (not d!822565) b_and!207523 (not b!2835121) (not b!2835145) (not b!2835102) b_and!207555 (not b_next!82403) (not b_next!82433) (not b!2835126) (not b!2834881) (not b_next!82399) (not b!2835154) (not d!822547) (not d!822549) (not b!2835092) b_and!207495 (not b!2835118) (not d!822519) (not d!822681) (not b!2834914) (not b!2835090) (not b_next!82429) (not d!822509) (not d!822633) (not d!822545) (not d!822529) (not b!2835119) (not d!822591) (not d!822507) (not b_next!82417) (not b_next!82415) (not b!2835151) (not b!2834947) (not b!2835136) (not d!822679) (not d!822553) (not b!2834911) (not b!2835094) b_and!207557 (not b!2835095) (not b!2835149) (not b!2834962) (not b!2834862) (not b!2835077) b_and!207491 (not b!2835142) (not b!2835087) (not b!2835085) b_and!207561 (not b_lambda!85205) (not b_next!82413) (not d!822611) (not b_next!82431) (not b!2835129) (not b!2835127) (not b!2835106) (not b!2835132) (not d!822487) (not d!822677) (not b!2834920) (not b!2834932) (not b!2835083) b_and!207559 (not d!822523) (not b!2835117) (not b!2835098) (not b!2835134) (not d!822575) b_and!207527 b_and!207537 (not b_lambda!85203) (not b!2834903) (not b!2834954) (not d!822629) (not b_lambda!85201) (not b!2835086) (not b!2834910) (not b!2834902) (not b!2835138) (not b!2834953) (not b!2834861) (not d!822539) (not b!2835105) (not b!2834884) (not d!822489) (not b!2835080) (not d!822531) (not d!822491) (not b!2835140) (not d!822557) b_and!207531 (not b_next!82419) (not b!2835091) (not d!822511) (not b!2835150) (not b!2834899) (not b!2834896) (not b!2835144) (not b!2835099) (not b!2834909) (not b!2835128) (not b_next!82397) (not b!2834961) (not b!2835103) (not b!2834878) (not b!2834868) (not b!2834913) (not d!822573) (not b!2834880) (not b!2834963) (not b!2835146) (not b!2835141) (not d!822551) (not b!2834886) tp_is_empty!14591 (not b!2835084) (not b!2835079) (not d!822683) (not d!822493) (not b!2835137) (not b!2835096) (not d!822513) (not d!822541) (not b!2835123) (not b!2835148) (not b_next!82435) (not d!822559) (not d!822635) (not b!2834885) (not b!2835122) (not d!822625) (not d!822571) (not b!2834865))
(check-sat b_and!207533 b_and!207495 (not b_next!82429) b_and!207557 b_and!207491 b_and!207561 b_and!207559 b_and!207531 (not b_next!82419) b_and!207535 (not b_next!82397) (not b_next!82435) (not b_next!82401) b_and!207523 b_and!207555 (not b_next!82403) (not b_next!82433) (not b_next!82399) (not b_next!82417) (not b_next!82415) (not b_next!82413) (not b_next!82431) b_and!207527 b_and!207537)
(get-model)

(declare-fun bs!518664 () Bool)

(declare-fun d!822689 () Bool)

(assert (= bs!518664 (and d!822689 d!822511)))

(declare-fun lambda!104142 () Int)

(assert (=> bs!518664 (= (= (toValue!7060 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (toValue!7060 (transformation!5022 (h!38888 rules!1047)))) (= lambda!104142 lambda!104121))))

(declare-fun bs!518665 () Bool)

(assert (= bs!518665 (and d!822689 d!822611)))

(assert (=> bs!518665 (= (= (toValue!7060 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (toValue!7060 (transformation!5022 (rule!7450 (h!38889 l!4019))))) (= lambda!104142 lambda!104130))))

(assert (=> d!822689 true))

(assert (=> d!822689 (< (dynLambda!14072 order!17867 (toValue!7060 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019)))))) (dynLambda!14078 order!17873 lambda!104142))))

(assert (=> d!822689 (= (equivClasses!1988 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (toValue!7060 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019)))))) (Forall2!840 lambda!104142))))

(declare-fun bs!518666 () Bool)

(assert (= bs!518666 d!822689))

(declare-fun m!3264735 () Bool)

(assert (=> bs!518666 m!3264735))

(assert (=> b!2834884 d!822689))

(declare-fun d!822691 () Bool)

(assert (=> d!822691 (= (list!12508 (_2!19880 lt!1010845)) (list!12511 (c!458142 (_2!19880 lt!1010845))))))

(declare-fun bs!518667 () Bool)

(assert (= bs!518667 d!822691))

(declare-fun m!3264737 () Bool)

(assert (=> bs!518667 m!3264737))

(assert (=> b!2834862 d!822691))

(declare-fun e!1795353 () Bool)

(declare-fun b!2835177 () Bool)

(declare-fun lt!1010910 () tuple2!33540)

(assert (=> b!2835177 (= e!1795353 (= (_2!19882 lt!1010910) (list!12508 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))))

(declare-fun b!2835178 () Bool)

(declare-fun e!1795352 () Bool)

(assert (=> b!2835178 (= e!1795353 e!1795352)))

(declare-fun res!1180009 () Bool)

(assert (=> b!2835178 (= res!1180009 (< (size!26041 (_2!19882 lt!1010910)) (size!26041 (list!12508 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))))))

(assert (=> b!2835178 (=> (not res!1180009) (not e!1795352))))

(declare-fun b!2835179 () Bool)

(declare-fun e!1795354 () tuple2!33540)

(assert (=> b!2835179 (= e!1795354 (tuple2!33541 Nil!33469 (list!12508 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))))

(declare-fun b!2835180 () Bool)

(declare-datatypes ((tuple2!33542 0))(
  ( (tuple2!33543 (_1!19883 Token!9446) (_2!19883 List!33591)) )
))
(declare-datatypes ((Option!6294 0))(
  ( (None!6293) (Some!6293 (v!34368 tuple2!33542)) )
))
(declare-fun lt!1010912 () Option!6294)

(declare-fun lt!1010911 () tuple2!33540)

(assert (=> b!2835180 (= e!1795354 (tuple2!33541 (Cons!33469 (_1!19883 (v!34368 lt!1010912)) (_1!19882 lt!1010911)) (_2!19882 lt!1010911)))))

(assert (=> b!2835180 (= lt!1010911 (lexList!1258 thiss!11007 rules!1047 (_2!19883 (v!34368 lt!1010912))))))

(declare-fun b!2835181 () Bool)

(declare-fun isEmpty!18460 (List!33593) Bool)

(assert (=> b!2835181 (= e!1795352 (not (isEmpty!18460 (_1!19882 lt!1010910))))))

(declare-fun d!822693 () Bool)

(assert (=> d!822693 e!1795353))

(declare-fun c!458196 () Bool)

(assert (=> d!822693 (= c!458196 (> (size!26046 (_1!19882 lt!1010910)) 0))))

(assert (=> d!822693 (= lt!1010910 e!1795354)))

(declare-fun c!458197 () Bool)

(assert (=> d!822693 (= c!458197 ((_ is Some!6293) lt!1010912))))

(declare-fun maxPrefix!2386 (LexerInterface!4612 List!33592 List!33591) Option!6294)

(assert (=> d!822693 (= lt!1010912 (maxPrefix!2386 thiss!11007 rules!1047 (list!12508 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))))

(assert (=> d!822693 (= (lexList!1258 thiss!11007 rules!1047 (list!12508 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))) lt!1010910)))

(assert (= (and d!822693 c!458197) b!2835180))

(assert (= (and d!822693 (not c!458197)) b!2835179))

(assert (= (and d!822693 c!458196) b!2835178))

(assert (= (and d!822693 (not c!458196)) b!2835177))

(assert (= (and b!2835178 res!1180009) b!2835181))

(declare-fun m!3264739 () Bool)

(assert (=> b!2835178 m!3264739))

(assert (=> b!2835178 m!3264361))

(declare-fun m!3264743 () Bool)

(assert (=> b!2835178 m!3264743))

(declare-fun m!3264745 () Bool)

(assert (=> b!2835180 m!3264745))

(declare-fun m!3264751 () Bool)

(assert (=> b!2835181 m!3264751))

(declare-fun m!3264753 () Bool)

(assert (=> d!822693 m!3264753))

(assert (=> d!822693 m!3264361))

(declare-fun m!3264755 () Bool)

(assert (=> d!822693 m!3264755))

(assert (=> b!2834862 d!822693))

(declare-fun d!822697 () Bool)

(assert (=> d!822697 (= (list!12508 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))) (list!12511 (c!458142 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))))

(declare-fun bs!518668 () Bool)

(assert (= bs!518668 d!822697))

(declare-fun m!3264759 () Bool)

(assert (=> bs!518668 m!3264759))

(assert (=> b!2834862 d!822697))

(assert (=> d!822635 d!822435))

(declare-fun d!822701 () Bool)

(assert (=> d!822701 (= (list!12507 (_1!19880 lt!1010845)) (list!12512 (c!458143 (_1!19880 lt!1010845))))))

(declare-fun bs!518669 () Bool)

(assert (= bs!518669 d!822701))

(declare-fun m!3264761 () Bool)

(assert (=> bs!518669 m!3264761))

(assert (=> b!2834864 d!822701))

(assert (=> b!2834864 d!822693))

(assert (=> b!2834864 d!822697))

(declare-fun d!822703 () Bool)

(assert (=> d!822703 (= (list!12508 lt!1010848) (list!12511 (c!458142 lt!1010848)))))

(declare-fun bs!518670 () Bool)

(assert (= bs!518670 d!822703))

(declare-fun m!3264763 () Bool)

(assert (=> bs!518670 m!3264763))

(assert (=> d!822507 d!822703))

(declare-fun d!822705 () Bool)

(declare-fun c!458202 () Bool)

(assert (=> d!822705 (= c!458202 ((_ is Cons!33469) (list!12507 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))))

(declare-fun e!1795361 () List!33591)

(assert (=> d!822705 (= (printList!1232 thiss!11007 (list!12507 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))) e!1795361)))

(declare-fun b!2835192 () Bool)

(declare-fun ++!8107 (List!33591 List!33591) List!33591)

(assert (=> b!2835192 (= e!1795361 (++!8107 (list!12508 (charsOf!3108 (h!38889 (list!12507 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))) (printList!1232 thiss!11007 (t!231786 (list!12507 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))))))

(declare-fun b!2835193 () Bool)

(assert (=> b!2835193 (= e!1795361 Nil!33467)))

(assert (= (and d!822705 c!458202) b!2835192))

(assert (= (and d!822705 (not c!458202)) b!2835193))

(declare-fun m!3264775 () Bool)

(assert (=> b!2835192 m!3264775))

(assert (=> b!2835192 m!3264775))

(declare-fun m!3264777 () Bool)

(assert (=> b!2835192 m!3264777))

(declare-fun m!3264779 () Bool)

(assert (=> b!2835192 m!3264779))

(assert (=> b!2835192 m!3264777))

(assert (=> b!2835192 m!3264779))

(declare-fun m!3264781 () Bool)

(assert (=> b!2835192 m!3264781))

(assert (=> d!822507 d!822705))

(assert (=> d!822507 d!822573))

(declare-fun d!822713 () Bool)

(declare-fun lt!1010933 () BalanceConc!20436)

(declare-fun printListTailRec!530 (LexerInterface!4612 List!33593 List!33591) List!33591)

(declare-fun dropList!1008 (BalanceConc!20438 Int) List!33593)

(assert (=> d!822713 (= (list!12508 lt!1010933) (printListTailRec!530 thiss!11007 (dropList!1008 (singletonSeq!2173 (h!38889 (t!231786 l!4019))) 0) (list!12508 (BalanceConc!20437 Empty!10399))))))

(declare-fun e!1795380 () BalanceConc!20436)

(assert (=> d!822713 (= lt!1010933 e!1795380)))

(declare-fun c!458207 () Bool)

(assert (=> d!822713 (= c!458207 (>= 0 (size!26042 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))))

(declare-fun e!1795379 () Bool)

(assert (=> d!822713 e!1795379))

(declare-fun res!1180037 () Bool)

(assert (=> d!822713 (=> (not res!1180037) (not e!1795379))))

(assert (=> d!822713 (= res!1180037 (>= 0 0))))

(assert (=> d!822713 (= (printTailRec!1175 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019))) 0 (BalanceConc!20437 Empty!10399)) lt!1010933)))

(declare-fun b!2835227 () Bool)

(assert (=> b!2835227 (= e!1795379 (<= 0 (size!26042 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))))

(declare-fun b!2835228 () Bool)

(assert (=> b!2835228 (= e!1795380 (BalanceConc!20437 Empty!10399))))

(declare-fun b!2835229 () Bool)

(declare-fun ++!8108 (BalanceConc!20436 BalanceConc!20436) BalanceConc!20436)

(assert (=> b!2835229 (= e!1795380 (printTailRec!1175 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019))) (+ 0 1) (++!8108 (BalanceConc!20437 Empty!10399) (charsOf!3108 (apply!7817 (singletonSeq!2173 (h!38889 (t!231786 l!4019))) 0)))))))

(declare-fun lt!1010936 () List!33593)

(assert (=> b!2835229 (= lt!1010936 (list!12507 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))

(declare-fun lt!1010938 () Unit!47411)

(declare-fun lemmaDropApply!992 (List!33593 Int) Unit!47411)

(assert (=> b!2835229 (= lt!1010938 (lemmaDropApply!992 lt!1010936 0))))

(declare-fun head!6245 (List!33593) Token!9446)

(declare-fun drop!1794 (List!33593 Int) List!33593)

(assert (=> b!2835229 (= (head!6245 (drop!1794 lt!1010936 0)) (apply!7820 lt!1010936 0))))

(declare-fun lt!1010937 () Unit!47411)

(assert (=> b!2835229 (= lt!1010937 lt!1010938)))

(declare-fun lt!1010935 () List!33593)

(assert (=> b!2835229 (= lt!1010935 (list!12507 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))

(declare-fun lt!1010934 () Unit!47411)

(declare-fun lemmaDropTail!880 (List!33593 Int) Unit!47411)

(assert (=> b!2835229 (= lt!1010934 (lemmaDropTail!880 lt!1010935 0))))

(declare-fun tail!4470 (List!33593) List!33593)

(assert (=> b!2835229 (= (tail!4470 (drop!1794 lt!1010935 0)) (drop!1794 lt!1010935 (+ 0 1)))))

(declare-fun lt!1010939 () Unit!47411)

(assert (=> b!2835229 (= lt!1010939 lt!1010934)))

(assert (= (and d!822713 res!1180037) b!2835227))

(assert (= (and d!822713 c!458207) b!2835228))

(assert (= (and d!822713 (not c!458207)) b!2835229))

(declare-fun m!3264823 () Bool)

(assert (=> d!822713 m!3264823))

(declare-fun m!3264827 () Bool)

(assert (=> d!822713 m!3264827))

(assert (=> d!822713 m!3264823))

(declare-fun m!3264831 () Bool)

(assert (=> d!822713 m!3264831))

(assert (=> d!822713 m!3264217))

(declare-fun m!3264833 () Bool)

(assert (=> d!822713 m!3264833))

(declare-fun m!3264835 () Bool)

(assert (=> d!822713 m!3264835))

(assert (=> d!822713 m!3264217))

(assert (=> d!822713 m!3264827))

(assert (=> b!2835227 m!3264217))

(assert (=> b!2835227 m!3264833))

(declare-fun m!3264837 () Bool)

(assert (=> b!2835229 m!3264837))

(declare-fun m!3264839 () Bool)

(assert (=> b!2835229 m!3264839))

(assert (=> b!2835229 m!3264217))

(assert (=> b!2835229 m!3264221))

(declare-fun m!3264841 () Bool)

(assert (=> b!2835229 m!3264841))

(declare-fun m!3264843 () Bool)

(assert (=> b!2835229 m!3264843))

(assert (=> b!2835229 m!3264217))

(declare-fun m!3264845 () Bool)

(assert (=> b!2835229 m!3264845))

(assert (=> b!2835229 m!3264217))

(assert (=> b!2835229 m!3264843))

(declare-fun m!3264847 () Bool)

(assert (=> b!2835229 m!3264847))

(declare-fun m!3264849 () Bool)

(assert (=> b!2835229 m!3264849))

(assert (=> b!2835229 m!3264837))

(declare-fun m!3264851 () Bool)

(assert (=> b!2835229 m!3264851))

(assert (=> b!2835229 m!3264845))

(assert (=> b!2835229 m!3264841))

(declare-fun m!3264853 () Bool)

(assert (=> b!2835229 m!3264853))

(declare-fun m!3264855 () Bool)

(assert (=> b!2835229 m!3264855))

(declare-fun m!3264857 () Bool)

(assert (=> b!2835229 m!3264857))

(assert (=> b!2835229 m!3264853))

(declare-fun m!3264859 () Bool)

(assert (=> b!2835229 m!3264859))

(assert (=> d!822507 d!822713))

(declare-fun d!822733 () Bool)

(declare-fun res!1180040 () Bool)

(declare-fun e!1795386 () Bool)

(assert (=> d!822733 (=> res!1180040 e!1795386)))

(assert (=> d!822733 (= res!1180040 ((_ is Nil!33469) (list!12507 (seqFromList!3268 l!4019))))))

(assert (=> d!822733 (= (forall!6886 (list!12507 (seqFromList!3268 l!4019)) lambda!104122) e!1795386)))

(declare-fun b!2835235 () Bool)

(declare-fun e!1795387 () Bool)

(assert (=> b!2835235 (= e!1795386 e!1795387)))

(declare-fun res!1180041 () Bool)

(assert (=> b!2835235 (=> (not res!1180041) (not e!1795387))))

(assert (=> b!2835235 (= res!1180041 (dynLambda!14080 lambda!104122 (h!38889 (list!12507 (seqFromList!3268 l!4019)))))))

(declare-fun b!2835236 () Bool)

(assert (=> b!2835236 (= e!1795387 (forall!6886 (t!231786 (list!12507 (seqFromList!3268 l!4019))) lambda!104122))))

(assert (= (and d!822733 (not res!1180040)) b!2835235))

(assert (= (and b!2835235 res!1180041) b!2835236))

(declare-fun b_lambda!85209 () Bool)

(assert (=> (not b_lambda!85209) (not b!2835235)))

(declare-fun m!3264861 () Bool)

(assert (=> b!2835235 m!3264861))

(declare-fun m!3264863 () Bool)

(assert (=> b!2835236 m!3264863))

(assert (=> d!822521 d!822733))

(assert (=> d!822521 d!822427))

(declare-fun d!822735 () Bool)

(assert (=> d!822735 (= (inv!45444 (xs!13511 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))) (<= (size!26041 (innerList!10459 (xs!13511 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))) 2147483647))))

(declare-fun bs!518680 () Bool)

(assert (= bs!518680 d!822735))

(declare-fun m!3264865 () Bool)

(assert (=> bs!518680 m!3264865))

(assert (=> b!2835118 d!822735))

(declare-fun d!822737 () Bool)

(declare-fun res!1180042 () Bool)

(declare-fun e!1795388 () Bool)

(assert (=> d!822737 (=> (not res!1180042) (not e!1795388))))

(assert (=> d!822737 (= res!1180042 (not (isEmpty!18454 (originalCharacters!5754 (h!38889 (t!231786 (t!231786 l!4019)))))))))

(assert (=> d!822737 (= (inv!45434 (h!38889 (t!231786 (t!231786 l!4019)))) e!1795388)))

(declare-fun b!2835237 () Bool)

(declare-fun res!1180043 () Bool)

(assert (=> b!2835237 (=> (not res!1180043) (not e!1795388))))

(assert (=> b!2835237 (= res!1180043 (= (originalCharacters!5754 (h!38889 (t!231786 (t!231786 l!4019)))) (list!12508 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019)))))) (value!161496 (h!38889 (t!231786 (t!231786 l!4019))))))))))

(declare-fun b!2835238 () Bool)

(assert (=> b!2835238 (= e!1795388 (= (size!26036 (h!38889 (t!231786 (t!231786 l!4019)))) (size!26041 (originalCharacters!5754 (h!38889 (t!231786 (t!231786 l!4019)))))))))

(assert (= (and d!822737 res!1180042) b!2835237))

(assert (= (and b!2835237 res!1180043) b!2835238))

(declare-fun b_lambda!85211 () Bool)

(assert (=> (not b_lambda!85211) (not b!2835237)))

(declare-fun t!231863 () Bool)

(declare-fun tb!154437 () Bool)

(assert (=> (and b!2835088 (= (toChars!6919 (transformation!5022 (h!38888 (t!231785 (t!231785 rules!1047))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019))))))) t!231863) tb!154437))

(declare-fun b!2835239 () Bool)

(declare-fun e!1795389 () Bool)

(declare-fun tp!906731 () Bool)

(assert (=> b!2835239 (= e!1795389 (and (inv!45437 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019)))))) (value!161496 (h!38889 (t!231786 (t!231786 l!4019))))))) tp!906731))))

(declare-fun result!192602 () Bool)

(assert (=> tb!154437 (= result!192602 (and (inv!45438 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019)))))) (value!161496 (h!38889 (t!231786 (t!231786 l!4019)))))) e!1795389))))

(assert (= tb!154437 b!2835239))

(declare-fun m!3264875 () Bool)

(assert (=> b!2835239 m!3264875))

(declare-fun m!3264877 () Bool)

(assert (=> tb!154437 m!3264877))

(assert (=> b!2835237 t!231863))

(declare-fun b_and!207563 () Bool)

(assert (= b_and!207557 (and (=> t!231863 result!192602) b_and!207563)))

(declare-fun t!231865 () Bool)

(declare-fun tb!154439 () Bool)

(assert (=> (and b!2834564 (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019))))))) t!231865) tb!154439))

(declare-fun result!192604 () Bool)

(assert (= result!192604 result!192602))

(assert (=> b!2835237 t!231865))

(declare-fun b_and!207565 () Bool)

(assert (= b_and!207533 (and (=> t!231865 result!192604) b_and!207565)))

(declare-fun t!231867 () Bool)

(declare-fun tb!154441 () Bool)

(assert (=> (and b!2835108 (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019)))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019))))))) t!231867) tb!154441))

(declare-fun result!192606 () Bool)

(assert (= result!192606 result!192602))

(assert (=> b!2835237 t!231867))

(declare-fun b_and!207567 () Bool)

(assert (= b_and!207561 (and (=> t!231867 result!192606) b_and!207567)))

(declare-fun t!231869 () Bool)

(declare-fun tb!154443 () Bool)

(assert (=> (and b!2834778 (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019))))))) t!231869) tb!154443))

(declare-fun result!192608 () Bool)

(assert (= result!192608 result!192602))

(assert (=> b!2835237 t!231869))

(declare-fun b_and!207569 () Bool)

(assert (= b_and!207535 (and (=> t!231869 result!192608) b_and!207569)))

(declare-fun t!231871 () Bool)

(declare-fun tb!154445 () Bool)

(assert (=> (and b!2834789 (= (toChars!6919 (transformation!5022 (h!38888 (t!231785 rules!1047)))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019))))))) t!231871) tb!154445))

(declare-fun result!192610 () Bool)

(assert (= result!192610 result!192602))

(assert (=> b!2835237 t!231871))

(declare-fun b_and!207571 () Bool)

(assert (= b_and!207537 (and (=> t!231871 result!192610) b_and!207571)))

(declare-fun tb!154447 () Bool)

(declare-fun t!231873 () Bool)

(assert (=> (and b!2834573 (= (toChars!6919 (transformation!5022 (h!38888 rules!1047))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019))))))) t!231873) tb!154447))

(declare-fun result!192612 () Bool)

(assert (= result!192612 result!192602))

(assert (=> b!2835237 t!231873))

(declare-fun b_and!207573 () Bool)

(assert (= b_and!207531 (and (=> t!231873 result!192612) b_and!207573)))

(declare-fun m!3264879 () Bool)

(assert (=> d!822737 m!3264879))

(declare-fun m!3264881 () Bool)

(assert (=> b!2835237 m!3264881))

(assert (=> b!2835237 m!3264881))

(declare-fun m!3264883 () Bool)

(assert (=> b!2835237 m!3264883))

(declare-fun m!3264885 () Bool)

(assert (=> b!2835238 m!3264885))

(assert (=> b!2835105 d!822737))

(declare-fun d!822743 () Bool)

(declare-fun c!458208 () Bool)

(assert (=> d!822743 (= c!458208 ((_ is Node!10399) (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))))))

(declare-fun e!1795390 () Bool)

(assert (=> d!822743 (= (inv!45437 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))) e!1795390)))

(declare-fun b!2835240 () Bool)

(assert (=> b!2835240 (= e!1795390 (inv!45439 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))))))

(declare-fun b!2835241 () Bool)

(declare-fun e!1795391 () Bool)

(assert (=> b!2835241 (= e!1795390 e!1795391)))

(declare-fun res!1180044 () Bool)

(assert (=> b!2835241 (= res!1180044 (not ((_ is Leaf!15818) (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))))))))

(assert (=> b!2835241 (=> res!1180044 e!1795391)))

(declare-fun b!2835242 () Bool)

(assert (=> b!2835242 (= e!1795391 (inv!45440 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))))))

(assert (= (and d!822743 c!458208) b!2835240))

(assert (= (and d!822743 (not c!458208)) b!2835241))

(assert (= (and b!2835241 (not res!1180044)) b!2835242))

(declare-fun m!3264887 () Bool)

(assert (=> b!2835240 m!3264887))

(declare-fun m!3264889 () Bool)

(assert (=> b!2835242 m!3264889))

(assert (=> b!2835132 d!822743))

(declare-fun d!822745 () Bool)

(declare-fun c!458209 () Bool)

(assert (=> d!822745 (= c!458209 ((_ is Node!10399) (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))))))

(declare-fun e!1795392 () Bool)

(assert (=> d!822745 (= (inv!45437 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))) e!1795392)))

(declare-fun b!2835243 () Bool)

(assert (=> b!2835243 (= e!1795392 (inv!45439 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))))))

(declare-fun b!2835244 () Bool)

(declare-fun e!1795393 () Bool)

(assert (=> b!2835244 (= e!1795392 e!1795393)))

(declare-fun res!1180045 () Bool)

(assert (=> b!2835244 (= res!1180045 (not ((_ is Leaf!15818) (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))))))))

(assert (=> b!2835244 (=> res!1180045 e!1795393)))

(declare-fun b!2835245 () Bool)

(assert (=> b!2835245 (= e!1795393 (inv!45440 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))))))

(assert (= (and d!822745 c!458209) b!2835243))

(assert (= (and d!822745 (not c!458209)) b!2835244))

(assert (= (and b!2835244 (not res!1180045)) b!2835245))

(declare-fun m!3264891 () Bool)

(assert (=> b!2835243 m!3264891))

(declare-fun m!3264893 () Bool)

(assert (=> b!2835245 m!3264893))

(assert (=> b!2835132 d!822745))

(assert (=> b!2834908 d!822575))

(declare-fun d!822747 () Bool)

(assert (=> d!822747 (= (inv!45430 (tag!5526 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019)))))) (= (mod (str.len (value!161495 (tag!5526 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019))))))) 2) 0))))

(assert (=> b!2835107 d!822747))

(declare-fun d!822749 () Bool)

(declare-fun res!1180046 () Bool)

(declare-fun e!1795394 () Bool)

(assert (=> d!822749 (=> (not res!1180046) (not e!1795394))))

(assert (=> d!822749 (= res!1180046 (semiInverseModEq!2089 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019)))))) (toValue!7060 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019))))))))))

(assert (=> d!822749 (= (inv!45433 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019)))))) e!1795394)))

(declare-fun b!2835246 () Bool)

(assert (=> b!2835246 (= e!1795394 (equivClasses!1988 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019)))))) (toValue!7060 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019))))))))))

(assert (= (and d!822749 res!1180046) b!2835246))

(declare-fun m!3264895 () Bool)

(assert (=> d!822749 m!3264895))

(declare-fun m!3264897 () Bool)

(assert (=> b!2835246 m!3264897))

(assert (=> b!2835107 d!822749))

(declare-fun d!822751 () Bool)

(assert (=> d!822751 (= (list!12507 lt!1010864) (list!12512 (c!458143 lt!1010864)))))

(declare-fun bs!518682 () Bool)

(assert (= bs!518682 d!822751))

(declare-fun m!3264899 () Bool)

(assert (=> bs!518682 m!3264899))

(assert (=> d!822551 d!822751))

(declare-fun d!822753 () Bool)

(declare-fun e!1795397 () Bool)

(assert (=> d!822753 e!1795397))

(declare-fun res!1180049 () Bool)

(assert (=> d!822753 (=> (not res!1180049) (not e!1795397))))

(declare-fun lt!1010945 () BalanceConc!20438)

(assert (=> d!822753 (= res!1180049 (= (list!12507 lt!1010945) (Cons!33469 (h!38889 l!4019) Nil!33469)))))

(declare-fun choose!16730 (Token!9446) BalanceConc!20438)

(assert (=> d!822753 (= lt!1010945 (choose!16730 (h!38889 l!4019)))))

(assert (=> d!822753 (= (singleton!954 (h!38889 l!4019)) lt!1010945)))

(declare-fun b!2835249 () Bool)

(assert (=> b!2835249 (= e!1795397 (isBalanced!3138 (c!458143 lt!1010945)))))

(assert (= (and d!822753 res!1180049) b!2835249))

(declare-fun m!3264901 () Bool)

(assert (=> d!822753 m!3264901))

(declare-fun m!3264903 () Bool)

(assert (=> d!822753 m!3264903))

(declare-fun m!3264905 () Bool)

(assert (=> b!2835249 m!3264905))

(assert (=> d!822551 d!822753))

(declare-fun d!822755 () Bool)

(declare-fun lt!1010946 () Int)

(assert (=> d!822755 (= lt!1010946 (size!26046 (list!12507 (_1!19880 lt!1010869))))))

(assert (=> d!822755 (= lt!1010946 (size!26047 (c!458143 (_1!19880 lt!1010869))))))

(assert (=> d!822755 (= (size!26042 (_1!19880 lt!1010869)) lt!1010946)))

(declare-fun bs!518683 () Bool)

(assert (= bs!518683 d!822755))

(assert (=> bs!518683 m!3264477))

(assert (=> bs!518683 m!3264477))

(declare-fun m!3264907 () Bool)

(assert (=> bs!518683 m!3264907))

(declare-fun m!3264909 () Bool)

(assert (=> bs!518683 m!3264909))

(assert (=> d!822559 d!822755))

(declare-fun d!822757 () Bool)

(declare-fun e!1795443 () Bool)

(assert (=> d!822757 e!1795443))

(declare-fun res!1180079 () Bool)

(assert (=> d!822757 (=> (not res!1180079) (not e!1795443))))

(declare-fun lt!1011040 () tuple2!33536)

(declare-fun lexRec!672 (LexerInterface!4612 List!33592 BalanceConc!20436) tuple2!33536)

(assert (=> d!822757 (= res!1180079 (= (list!12507 (_1!19880 lt!1011040)) (list!12507 (_1!19880 (lexRec!672 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))))))))))

(declare-fun e!1795445 () tuple2!33536)

(assert (=> d!822757 (= lt!1011040 e!1795445)))

(declare-fun c!458231 () Bool)

(declare-datatypes ((tuple2!33544 0))(
  ( (tuple2!33545 (_1!19884 Token!9446) (_2!19884 BalanceConc!20436)) )
))
(declare-datatypes ((Option!6295 0))(
  ( (None!6294) (Some!6294 (v!34369 tuple2!33544)) )
))
(declare-fun lt!1011044 () Option!6295)

(assert (=> d!822757 (= c!458231 ((_ is Some!6294) lt!1011044))))

(declare-fun maxPrefixZipperSequenceV2!459 (LexerInterface!4612 List!33592 BalanceConc!20436 BalanceConc!20436) Option!6295)

(assert (=> d!822757 (= lt!1011044 (maxPrefixZipperSequenceV2!459 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))) (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019)))))))

(declare-fun lt!1011035 () Unit!47411)

(declare-fun lt!1011059 () Unit!47411)

(assert (=> d!822757 (= lt!1011035 lt!1011059)))

(declare-fun lt!1011060 () List!33591)

(declare-fun lt!1011042 () List!33591)

(declare-fun isSuffix!834 (List!33591 List!33591) Bool)

(assert (=> d!822757 (isSuffix!834 lt!1011060 (++!8107 lt!1011042 lt!1011060))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!519 (List!33591 List!33591) Unit!47411)

(assert (=> d!822757 (= lt!1011059 (lemmaConcatTwoListThenFSndIsSuffix!519 lt!1011042 lt!1011060))))

(assert (=> d!822757 (= lt!1011060 (list!12508 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019)))))))

(assert (=> d!822757 (= lt!1011042 (list!12508 (BalanceConc!20437 Empty!10399)))))

(assert (=> d!822757 (= (lexTailRecV2!896 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))) (BalanceConc!20437 Empty!10399) (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))) (BalanceConc!20439 Empty!10400)) lt!1011040)))

(declare-fun b!2835319 () Bool)

(assert (=> b!2835319 (= e!1795443 (= (list!12508 (_2!19880 lt!1011040)) (list!12508 (_2!19880 (lexRec!672 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))))))))))

(declare-fun b!2835320 () Bool)

(declare-fun lt!1011057 () BalanceConc!20436)

(declare-fun append!852 (BalanceConc!20438 Token!9446) BalanceConc!20438)

(assert (=> b!2835320 (= e!1795445 (lexTailRecV2!896 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))) lt!1011057 (_2!19884 (v!34369 lt!1011044)) (append!852 (BalanceConc!20439 Empty!10400) (_1!19884 (v!34369 lt!1011044)))))))

(declare-fun lt!1011058 () tuple2!33536)

(assert (=> b!2835320 (= lt!1011058 (lexRec!672 thiss!11007 rules!1047 (_2!19884 (v!34369 lt!1011044))))))

(declare-fun lt!1011039 () List!33591)

(assert (=> b!2835320 (= lt!1011039 (list!12508 (BalanceConc!20437 Empty!10399)))))

(declare-fun lt!1011048 () List!33591)

(assert (=> b!2835320 (= lt!1011048 (list!12508 (charsOf!3108 (_1!19884 (v!34369 lt!1011044)))))))

(declare-fun lt!1011032 () List!33591)

(assert (=> b!2835320 (= lt!1011032 (list!12508 (_2!19884 (v!34369 lt!1011044))))))

(declare-fun lt!1011065 () Unit!47411)

(declare-fun lemmaConcatAssociativity!1683 (List!33591 List!33591 List!33591) Unit!47411)

(assert (=> b!2835320 (= lt!1011065 (lemmaConcatAssociativity!1683 lt!1011039 lt!1011048 lt!1011032))))

(assert (=> b!2835320 (= (++!8107 (++!8107 lt!1011039 lt!1011048) lt!1011032) (++!8107 lt!1011039 (++!8107 lt!1011048 lt!1011032)))))

(declare-fun lt!1011062 () Unit!47411)

(assert (=> b!2835320 (= lt!1011062 lt!1011065)))

(declare-fun lt!1011064 () Option!6295)

(declare-fun maxPrefixZipperSequence!1065 (LexerInterface!4612 List!33592 BalanceConc!20436) Option!6295)

(assert (=> b!2835320 (= lt!1011064 (maxPrefixZipperSequence!1065 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019)))))))

(declare-fun c!458230 () Bool)

(assert (=> b!2835320 (= c!458230 ((_ is Some!6294) lt!1011064))))

(declare-fun e!1795446 () tuple2!33536)

(assert (=> b!2835320 (= (lexRec!672 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019)))) e!1795446)))

(declare-fun lt!1011046 () Unit!47411)

(declare-fun Unit!47413 () Unit!47411)

(assert (=> b!2835320 (= lt!1011046 Unit!47413)))

(declare-fun lt!1011054 () List!33593)

(assert (=> b!2835320 (= lt!1011054 (list!12507 (BalanceConc!20439 Empty!10400)))))

(declare-fun lt!1011055 () List!33593)

(assert (=> b!2835320 (= lt!1011055 (Cons!33469 (_1!19884 (v!34369 lt!1011044)) Nil!33469))))

(declare-fun lt!1011061 () List!33593)

(assert (=> b!2835320 (= lt!1011061 (list!12507 (_1!19880 lt!1011058)))))

(declare-fun lt!1011045 () Unit!47411)

(declare-fun lemmaConcatAssociativity!1684 (List!33593 List!33593 List!33593) Unit!47411)

(assert (=> b!2835320 (= lt!1011045 (lemmaConcatAssociativity!1684 lt!1011054 lt!1011055 lt!1011061))))

(declare-fun ++!8110 (List!33593 List!33593) List!33593)

(assert (=> b!2835320 (= (++!8110 (++!8110 lt!1011054 lt!1011055) lt!1011061) (++!8110 lt!1011054 (++!8110 lt!1011055 lt!1011061)))))

(declare-fun lt!1011036 () Unit!47411)

(assert (=> b!2835320 (= lt!1011036 lt!1011045)))

(declare-fun lt!1011047 () List!33591)

(assert (=> b!2835320 (= lt!1011047 (++!8107 (list!12508 (BalanceConc!20437 Empty!10399)) (list!12508 (charsOf!3108 (_1!19884 (v!34369 lt!1011044))))))))

(declare-fun lt!1011037 () List!33591)

(assert (=> b!2835320 (= lt!1011037 (list!12508 (_2!19884 (v!34369 lt!1011044))))))

(declare-fun lt!1011049 () List!33593)

(assert (=> b!2835320 (= lt!1011049 (list!12507 (append!852 (BalanceConc!20439 Empty!10400) (_1!19884 (v!34369 lt!1011044)))))))

(declare-fun lt!1011034 () Unit!47411)

(declare-fun lemmaLexThenLexPrefix!437 (LexerInterface!4612 List!33592 List!33591 List!33591 List!33593 List!33593 List!33591) Unit!47411)

(assert (=> b!2835320 (= lt!1011034 (lemmaLexThenLexPrefix!437 thiss!11007 rules!1047 lt!1011047 lt!1011037 lt!1011049 (list!12507 (_1!19880 lt!1011058)) (list!12508 (_2!19880 lt!1011058))))))

(assert (=> b!2835320 (= (lexList!1258 thiss!11007 rules!1047 lt!1011047) (tuple2!33541 lt!1011049 Nil!33467))))

(declare-fun lt!1011052 () Unit!47411)

(assert (=> b!2835320 (= lt!1011052 lt!1011034)))

(declare-fun lt!1011033 () BalanceConc!20436)

(assert (=> b!2835320 (= lt!1011033 (++!8108 (BalanceConc!20437 Empty!10399) (charsOf!3108 (_1!19884 (v!34369 lt!1011044)))))))

(declare-fun lt!1011051 () Option!6295)

(assert (=> b!2835320 (= lt!1011051 (maxPrefixZipperSequence!1065 thiss!11007 rules!1047 lt!1011033))))

(declare-fun c!458232 () Bool)

(assert (=> b!2835320 (= c!458232 ((_ is Some!6294) lt!1011051))))

(declare-fun e!1795444 () tuple2!33536)

(assert (=> b!2835320 (= (lexRec!672 thiss!11007 rules!1047 (++!8108 (BalanceConc!20437 Empty!10399) (charsOf!3108 (_1!19884 (v!34369 lt!1011044))))) e!1795444)))

(declare-fun lt!1011056 () Unit!47411)

(declare-fun Unit!47414 () Unit!47411)

(assert (=> b!2835320 (= lt!1011056 Unit!47414)))

(assert (=> b!2835320 (= lt!1011057 (++!8108 (BalanceConc!20437 Empty!10399) (charsOf!3108 (_1!19884 (v!34369 lt!1011044)))))))

(declare-fun lt!1011041 () List!33591)

(assert (=> b!2835320 (= lt!1011041 (list!12508 lt!1011057))))

(declare-fun lt!1011043 () List!33591)

(assert (=> b!2835320 (= lt!1011043 (list!12508 (_2!19884 (v!34369 lt!1011044))))))

(declare-fun lt!1011038 () Unit!47411)

(assert (=> b!2835320 (= lt!1011038 (lemmaConcatTwoListThenFSndIsSuffix!519 lt!1011041 lt!1011043))))

(assert (=> b!2835320 (isSuffix!834 lt!1011043 (++!8107 lt!1011041 lt!1011043))))

(declare-fun lt!1011053 () Unit!47411)

(assert (=> b!2835320 (= lt!1011053 lt!1011038)))

(declare-fun b!2835321 () Bool)

(assert (=> b!2835321 (= e!1795446 (tuple2!33537 (BalanceConc!20439 Empty!10400) (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019)))))))

(declare-fun b!2835322 () Bool)

(assert (=> b!2835322 (= e!1795444 (tuple2!33537 (BalanceConc!20439 Empty!10400) lt!1011033))))

(declare-fun b!2835323 () Bool)

(assert (=> b!2835323 (= e!1795445 (tuple2!33537 (BalanceConc!20439 Empty!10400) (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019)))))))

(declare-fun b!2835324 () Bool)

(declare-fun lt!1011050 () tuple2!33536)

(assert (=> b!2835324 (= lt!1011050 (lexRec!672 thiss!11007 rules!1047 (_2!19884 (v!34369 lt!1011064))))))

(declare-fun prepend!1160 (BalanceConc!20438 Token!9446) BalanceConc!20438)

(assert (=> b!2835324 (= e!1795446 (tuple2!33537 (prepend!1160 (_1!19880 lt!1011050) (_1!19884 (v!34369 lt!1011064))) (_2!19880 lt!1011050)))))

(declare-fun b!2835325 () Bool)

(declare-fun lt!1011063 () tuple2!33536)

(assert (=> b!2835325 (= lt!1011063 (lexRec!672 thiss!11007 rules!1047 (_2!19884 (v!34369 lt!1011051))))))

(assert (=> b!2835325 (= e!1795444 (tuple2!33537 (prepend!1160 (_1!19880 lt!1011063) (_1!19884 (v!34369 lt!1011051))) (_2!19880 lt!1011063)))))

(assert (= (and d!822757 c!458231) b!2835320))

(assert (= (and d!822757 (not c!458231)) b!2835323))

(assert (= (and b!2835320 c!458230) b!2835324))

(assert (= (and b!2835320 (not c!458230)) b!2835321))

(assert (= (and b!2835320 c!458232) b!2835325))

(assert (= (and b!2835320 (not c!458232)) b!2835322))

(assert (= (and d!822757 res!1180079) b!2835319))

(declare-fun m!3264989 () Bool)

(assert (=> d!822757 m!3264989))

(assert (=> d!822757 m!3264823))

(declare-fun m!3264991 () Bool)

(assert (=> d!822757 m!3264991))

(assert (=> d!822757 m!3264193))

(assert (=> d!822757 m!3264193))

(declare-fun m!3264993 () Bool)

(assert (=> d!822757 m!3264993))

(assert (=> d!822757 m!3264193))

(assert (=> d!822757 m!3264473))

(assert (=> d!822757 m!3264193))

(declare-fun m!3264995 () Bool)

(assert (=> d!822757 m!3264995))

(declare-fun m!3264997 () Bool)

(assert (=> d!822757 m!3264997))

(assert (=> d!822757 m!3264991))

(declare-fun m!3264999 () Bool)

(assert (=> d!822757 m!3264999))

(declare-fun m!3265001 () Bool)

(assert (=> d!822757 m!3265001))

(declare-fun m!3265003 () Bool)

(assert (=> b!2835324 m!3265003))

(declare-fun m!3265005 () Bool)

(assert (=> b!2835324 m!3265005))

(declare-fun m!3265007 () Bool)

(assert (=> b!2835325 m!3265007))

(declare-fun m!3265009 () Bool)

(assert (=> b!2835325 m!3265009))

(declare-fun m!3265011 () Bool)

(assert (=> b!2835319 m!3265011))

(assert (=> b!2835319 m!3264193))

(assert (=> b!2835319 m!3264995))

(declare-fun m!3265013 () Bool)

(assert (=> b!2835319 m!3265013))

(declare-fun m!3265015 () Bool)

(assert (=> b!2835320 m!3265015))

(declare-fun m!3265017 () Bool)

(assert (=> b!2835320 m!3265017))

(declare-fun m!3265019 () Bool)

(assert (=> b!2835320 m!3265019))

(declare-fun m!3265021 () Bool)

(assert (=> b!2835320 m!3265021))

(declare-fun m!3265023 () Bool)

(assert (=> b!2835320 m!3265023))

(declare-fun m!3265025 () Bool)

(assert (=> b!2835320 m!3265025))

(assert (=> b!2835320 m!3264823))

(declare-fun m!3265027 () Bool)

(assert (=> b!2835320 m!3265027))

(declare-fun m!3265029 () Bool)

(assert (=> b!2835320 m!3265029))

(declare-fun m!3265031 () Bool)

(assert (=> b!2835320 m!3265031))

(assert (=> b!2835320 m!3265019))

(assert (=> b!2835320 m!3265031))

(declare-fun m!3265033 () Bool)

(assert (=> b!2835320 m!3265033))

(declare-fun m!3265035 () Bool)

(assert (=> b!2835320 m!3265035))

(declare-fun m!3265037 () Bool)

(assert (=> b!2835320 m!3265037))

(assert (=> b!2835320 m!3264193))

(assert (=> b!2835320 m!3264995))

(declare-fun m!3265039 () Bool)

(assert (=> b!2835320 m!3265039))

(declare-fun m!3265041 () Bool)

(assert (=> b!2835320 m!3265041))

(assert (=> b!2835320 m!3264193))

(declare-fun m!3265043 () Bool)

(assert (=> b!2835320 m!3265043))

(declare-fun m!3265045 () Bool)

(assert (=> b!2835320 m!3265045))

(assert (=> b!2835320 m!3265017))

(declare-fun m!3265047 () Bool)

(assert (=> b!2835320 m!3265047))

(assert (=> b!2835320 m!3264193))

(declare-fun m!3265049 () Bool)

(assert (=> b!2835320 m!3265049))

(declare-fun m!3265051 () Bool)

(assert (=> b!2835320 m!3265051))

(declare-fun m!3265053 () Bool)

(assert (=> b!2835320 m!3265053))

(assert (=> b!2835320 m!3265023))

(declare-fun m!3265055 () Bool)

(assert (=> b!2835320 m!3265055))

(assert (=> b!2835320 m!3265051))

(declare-fun m!3265057 () Bool)

(assert (=> b!2835320 m!3265057))

(assert (=> b!2835320 m!3265039))

(declare-fun m!3265059 () Bool)

(assert (=> b!2835320 m!3265059))

(declare-fun m!3265061 () Bool)

(assert (=> b!2835320 m!3265061))

(assert (=> b!2835320 m!3264823))

(assert (=> b!2835320 m!3265043))

(assert (=> b!2835320 m!3265015))

(declare-fun m!3265063 () Bool)

(assert (=> b!2835320 m!3265063))

(declare-fun m!3265065 () Bool)

(assert (=> b!2835320 m!3265065))

(assert (=> b!2835320 m!3265031))

(assert (=> b!2835320 m!3265027))

(declare-fun m!3265067 () Bool)

(assert (=> b!2835320 m!3265067))

(assert (=> b!2835320 m!3265063))

(assert (=> b!2835320 m!3265053))

(declare-fun m!3265069 () Bool)

(assert (=> b!2835320 m!3265069))

(declare-fun m!3265071 () Bool)

(assert (=> b!2835320 m!3265071))

(declare-fun m!3265073 () Bool)

(assert (=> b!2835320 m!3265073))

(assert (=> b!2835320 m!3265043))

(declare-fun m!3265075 () Bool)

(assert (=> b!2835320 m!3265075))

(assert (=> d!822559 d!822757))

(declare-fun d!822791 () Bool)

(declare-fun lt!1011066 () Int)

(assert (=> d!822791 (= lt!1011066 (size!26041 (list!12508 (_2!19880 lt!1010869))))))

(assert (=> d!822791 (= lt!1011066 (size!26043 (c!458142 (_2!19880 lt!1010869))))))

(assert (=> d!822791 (= (size!26037 (_2!19880 lt!1010869)) lt!1011066)))

(declare-fun bs!518693 () Bool)

(assert (= bs!518693 d!822791))

(assert (=> bs!518693 m!3264471))

(assert (=> bs!518693 m!3264471))

(declare-fun m!3265077 () Bool)

(assert (=> bs!518693 m!3265077))

(declare-fun m!3265079 () Bool)

(assert (=> bs!518693 m!3265079))

(assert (=> b!2834914 d!822791))

(declare-fun d!822793 () Bool)

(declare-fun lt!1011067 () Int)

(assert (=> d!822793 (= lt!1011067 (size!26041 (list!12508 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))))))))

(assert (=> d!822793 (= lt!1011067 (size!26043 (c!458142 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))))))))

(assert (=> d!822793 (= (size!26037 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019)))) lt!1011067)))

(declare-fun bs!518694 () Bool)

(assert (= bs!518694 d!822793))

(assert (=> bs!518694 m!3264193))

(assert (=> bs!518694 m!3264473))

(assert (=> bs!518694 m!3264473))

(declare-fun m!3265081 () Bool)

(assert (=> bs!518694 m!3265081))

(declare-fun m!3265083 () Bool)

(assert (=> bs!518694 m!3265083))

(assert (=> b!2834914 d!822793))

(declare-fun d!822795 () Bool)

(declare-fun res!1180080 () Bool)

(declare-fun e!1795447 () Bool)

(assert (=> d!822795 (=> res!1180080 e!1795447)))

(assert (=> d!822795 (= res!1180080 ((_ is Nil!33469) (t!231786 l!4019)))))

(assert (=> d!822795 (= (forall!6886 (t!231786 l!4019) lambda!104115) e!1795447)))

(declare-fun b!2835326 () Bool)

(declare-fun e!1795448 () Bool)

(assert (=> b!2835326 (= e!1795447 e!1795448)))

(declare-fun res!1180081 () Bool)

(assert (=> b!2835326 (=> (not res!1180081) (not e!1795448))))

(assert (=> b!2835326 (= res!1180081 (dynLambda!14080 lambda!104115 (h!38889 (t!231786 l!4019))))))

(declare-fun b!2835327 () Bool)

(assert (=> b!2835327 (= e!1795448 (forall!6886 (t!231786 (t!231786 l!4019)) lambda!104115))))

(assert (= (and d!822795 (not res!1180080)) b!2835326))

(assert (= (and b!2835326 res!1180081) b!2835327))

(declare-fun b_lambda!85217 () Bool)

(assert (=> (not b_lambda!85217) (not b!2835326)))

(declare-fun m!3265085 () Bool)

(assert (=> b!2835326 m!3265085))

(declare-fun m!3265087 () Bool)

(assert (=> b!2835327 m!3265087))

(assert (=> b!2834920 d!822795))

(assert (=> b!2834736 d!822543))

(assert (=> b!2834961 d!822451))

(declare-fun d!822797 () Bool)

(assert (=> d!822797 (= (list!12508 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))) (list!12511 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))))))

(declare-fun bs!518695 () Bool)

(assert (= bs!518695 d!822797))

(declare-fun m!3265089 () Bool)

(assert (=> bs!518695 m!3265089))

(assert (=> b!2834885 d!822797))

(declare-fun bs!518696 () Bool)

(declare-fun d!822799 () Bool)

(assert (= bs!518696 (and d!822799 d!822577)))

(declare-fun lambda!104148 () Int)

(assert (=> bs!518696 (= (and (= (toChars!6919 (transformation!5022 (h!38888 (t!231785 rules!1047)))) (toChars!6919 (transformation!5022 (h!38888 rules!1047)))) (= (toValue!7060 (transformation!5022 (h!38888 (t!231785 rules!1047)))) (toValue!7060 (transformation!5022 (h!38888 rules!1047))))) (= lambda!104148 lambda!104128))))

(declare-fun bs!518697 () Bool)

(assert (= bs!518697 (and d!822799 d!822581)))

(assert (=> bs!518697 (= (and (= (toChars!6919 (transformation!5022 (h!38888 (t!231785 rules!1047)))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019))))) (= (toValue!7060 (transformation!5022 (h!38888 (t!231785 rules!1047)))) (toValue!7060 (transformation!5022 (rule!7450 (h!38889 l!4019)))))) (= lambda!104148 lambda!104129))))

(assert (=> d!822799 true))

(assert (=> d!822799 (< (dynLambda!14074 order!17871 (toChars!6919 (transformation!5022 (h!38888 (t!231785 rules!1047))))) (dynLambda!14081 order!17877 lambda!104148))))

(assert (=> d!822799 true))

(assert (=> d!822799 (< (dynLambda!14072 order!17867 (toValue!7060 (transformation!5022 (h!38888 (t!231785 rules!1047))))) (dynLambda!14081 order!17877 lambda!104148))))

(assert (=> d!822799 (= (semiInverseModEq!2089 (toChars!6919 (transformation!5022 (h!38888 (t!231785 rules!1047)))) (toValue!7060 (transformation!5022 (h!38888 (t!231785 rules!1047))))) (Forall!1244 lambda!104148))))

(declare-fun bs!518698 () Bool)

(assert (= bs!518698 d!822799))

(declare-fun m!3265091 () Bool)

(assert (=> bs!518698 m!3265091))

(assert (=> d!822589 d!822799))

(declare-fun d!822801 () Bool)

(declare-fun choose!625 (List!33590) (_ BitVec 32))

(assert (=> d!822801 (= (charsToInt!0 (text!37211 (value!161496 (h!38889 l!4019)))) (choose!625 (text!37211 (value!161496 (h!38889 l!4019)))))))

(declare-fun bs!518699 () Bool)

(assert (= bs!518699 d!822801))

(declare-fun m!3265093 () Bool)

(assert (=> bs!518699 m!3265093))

(assert (=> d!822547 d!822801))

(declare-fun d!822803 () Bool)

(declare-fun choose!16733 (Int) Bool)

(assert (=> d!822803 (= (Forall!1244 lambda!104129) (choose!16733 lambda!104129))))

(declare-fun bs!518700 () Bool)

(assert (= bs!518700 d!822803))

(declare-fun m!3265095 () Bool)

(assert (=> bs!518700 m!3265095))

(assert (=> d!822581 d!822803))

(declare-fun b!2835340 () Bool)

(declare-fun res!1180094 () Bool)

(declare-fun e!1795453 () Bool)

(assert (=> b!2835340 (=> (not res!1180094) (not e!1795453))))

(assert (=> b!2835340 (= res!1180094 (isBalanced!3138 (left!25254 (fromList!587 l!4019))))))

(declare-fun b!2835341 () Bool)

(declare-fun e!1795454 () Bool)

(assert (=> b!2835341 (= e!1795454 e!1795453)))

(declare-fun res!1180095 () Bool)

(assert (=> b!2835341 (=> (not res!1180095) (not e!1795453))))

(declare-fun height!1510 (Conc!10400) Int)

(assert (=> b!2835341 (= res!1180095 (<= (- 1) (- (height!1510 (left!25254 (fromList!587 l!4019))) (height!1510 (right!25584 (fromList!587 l!4019))))))))

(declare-fun b!2835342 () Bool)

(declare-fun res!1180097 () Bool)

(assert (=> b!2835342 (=> (not res!1180097) (not e!1795453))))

(assert (=> b!2835342 (= res!1180097 (<= (- (height!1510 (left!25254 (fromList!587 l!4019))) (height!1510 (right!25584 (fromList!587 l!4019)))) 1))))

(declare-fun b!2835343 () Bool)

(declare-fun res!1180096 () Bool)

(assert (=> b!2835343 (=> (not res!1180096) (not e!1795453))))

(assert (=> b!2835343 (= res!1180096 (isBalanced!3138 (right!25584 (fromList!587 l!4019))))))

(declare-fun d!822805 () Bool)

(declare-fun res!1180098 () Bool)

(assert (=> d!822805 (=> res!1180098 e!1795454)))

(assert (=> d!822805 (= res!1180098 (not ((_ is Node!10400) (fromList!587 l!4019))))))

(assert (=> d!822805 (= (isBalanced!3138 (fromList!587 l!4019)) e!1795454)))

(declare-fun b!2835344 () Bool)

(declare-fun res!1180099 () Bool)

(assert (=> b!2835344 (=> (not res!1180099) (not e!1795453))))

(declare-fun isEmpty!18463 (Conc!10400) Bool)

(assert (=> b!2835344 (= res!1180099 (not (isEmpty!18463 (left!25254 (fromList!587 l!4019)))))))

(declare-fun b!2835345 () Bool)

(assert (=> b!2835345 (= e!1795453 (not (isEmpty!18463 (right!25584 (fromList!587 l!4019)))))))

(assert (= (and d!822805 (not res!1180098)) b!2835341))

(assert (= (and b!2835341 res!1180095) b!2835342))

(assert (= (and b!2835342 res!1180097) b!2835340))

(assert (= (and b!2835340 res!1180094) b!2835343))

(assert (= (and b!2835343 res!1180096) b!2835344))

(assert (= (and b!2835344 res!1180099) b!2835345))

(declare-fun m!3265097 () Bool)

(assert (=> b!2835345 m!3265097))

(declare-fun m!3265099 () Bool)

(assert (=> b!2835343 m!3265099))

(declare-fun m!3265101 () Bool)

(assert (=> b!2835341 m!3265101))

(declare-fun m!3265103 () Bool)

(assert (=> b!2835341 m!3265103))

(declare-fun m!3265105 () Bool)

(assert (=> b!2835344 m!3265105))

(assert (=> b!2835342 m!3265101))

(assert (=> b!2835342 m!3265103))

(declare-fun m!3265107 () Bool)

(assert (=> b!2835340 m!3265107))

(assert (=> b!2834947 d!822805))

(declare-fun d!822807 () Bool)

(declare-fun e!1795457 () Bool)

(assert (=> d!822807 e!1795457))

(declare-fun res!1180102 () Bool)

(assert (=> d!822807 (=> (not res!1180102) (not e!1795457))))

(declare-fun lt!1011070 () Conc!10400)

(assert (=> d!822807 (= res!1180102 (= (list!12512 lt!1011070) l!4019))))

(declare-fun choose!16734 (List!33593) Conc!10400)

(assert (=> d!822807 (= lt!1011070 (choose!16734 l!4019))))

(assert (=> d!822807 (= (fromList!587 l!4019) lt!1011070)))

(declare-fun b!2835348 () Bool)

(assert (=> b!2835348 (= e!1795457 (isBalanced!3138 lt!1011070))))

(assert (= (and d!822807 res!1180102) b!2835348))

(declare-fun m!3265109 () Bool)

(assert (=> d!822807 m!3265109))

(declare-fun m!3265111 () Bool)

(assert (=> d!822807 m!3265111))

(declare-fun m!3265113 () Bool)

(assert (=> b!2835348 m!3265113))

(assert (=> b!2834947 d!822807))

(declare-fun d!822809 () Bool)

(assert (=> d!822809 (= (list!12508 (_2!19880 lt!1010869)) (list!12511 (c!458142 (_2!19880 lt!1010869))))))

(declare-fun bs!518701 () Bool)

(assert (= bs!518701 d!822809))

(declare-fun m!3265115 () Bool)

(assert (=> bs!518701 m!3265115))

(assert (=> b!2834911 d!822809))

(declare-fun e!1795459 () Bool)

(declare-fun b!2835349 () Bool)

(declare-fun lt!1011071 () tuple2!33540)

(assert (=> b!2835349 (= e!1795459 (= (_2!19882 lt!1011071) (list!12508 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))))))))

(declare-fun b!2835350 () Bool)

(declare-fun e!1795458 () Bool)

(assert (=> b!2835350 (= e!1795459 e!1795458)))

(declare-fun res!1180103 () Bool)

(assert (=> b!2835350 (= res!1180103 (< (size!26041 (_2!19882 lt!1011071)) (size!26041 (list!12508 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019)))))))))

(assert (=> b!2835350 (=> (not res!1180103) (not e!1795458))))

(declare-fun b!2835351 () Bool)

(declare-fun e!1795460 () tuple2!33540)

(assert (=> b!2835351 (= e!1795460 (tuple2!33541 Nil!33469 (list!12508 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))))))))

(declare-fun b!2835352 () Bool)

(declare-fun lt!1011073 () Option!6294)

(declare-fun lt!1011072 () tuple2!33540)

(assert (=> b!2835352 (= e!1795460 (tuple2!33541 (Cons!33469 (_1!19883 (v!34368 lt!1011073)) (_1!19882 lt!1011072)) (_2!19882 lt!1011072)))))

(assert (=> b!2835352 (= lt!1011072 (lexList!1258 thiss!11007 rules!1047 (_2!19883 (v!34368 lt!1011073))))))

(declare-fun b!2835353 () Bool)

(assert (=> b!2835353 (= e!1795458 (not (isEmpty!18460 (_1!19882 lt!1011071))))))

(declare-fun d!822811 () Bool)

(assert (=> d!822811 e!1795459))

(declare-fun c!458233 () Bool)

(assert (=> d!822811 (= c!458233 (> (size!26046 (_1!19882 lt!1011071)) 0))))

(assert (=> d!822811 (= lt!1011071 e!1795460)))

(declare-fun c!458234 () Bool)

(assert (=> d!822811 (= c!458234 ((_ is Some!6293) lt!1011073))))

(assert (=> d!822811 (= lt!1011073 (maxPrefix!2386 thiss!11007 rules!1047 (list!12508 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))))))))

(assert (=> d!822811 (= (lexList!1258 thiss!11007 rules!1047 (list!12508 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))))) lt!1011071)))

(assert (= (and d!822811 c!458234) b!2835352))

(assert (= (and d!822811 (not c!458234)) b!2835351))

(assert (= (and d!822811 c!458233) b!2835350))

(assert (= (and d!822811 (not c!458233)) b!2835349))

(assert (= (and b!2835350 res!1180103) b!2835353))

(declare-fun m!3265117 () Bool)

(assert (=> b!2835350 m!3265117))

(assert (=> b!2835350 m!3264473))

(assert (=> b!2835350 m!3265081))

(declare-fun m!3265119 () Bool)

(assert (=> b!2835352 m!3265119))

(declare-fun m!3265121 () Bool)

(assert (=> b!2835353 m!3265121))

(declare-fun m!3265123 () Bool)

(assert (=> d!822811 m!3265123))

(assert (=> d!822811 m!3264473))

(declare-fun m!3265125 () Bool)

(assert (=> d!822811 m!3265125))

(assert (=> b!2834911 d!822811))

(declare-fun d!822813 () Bool)

(assert (=> d!822813 (= (list!12508 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019)))) (list!12511 (c!458142 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))))))))

(declare-fun bs!518702 () Bool)

(assert (= bs!518702 d!822813))

(declare-fun m!3265127 () Bool)

(assert (=> bs!518702 m!3265127))

(assert (=> b!2834911 d!822813))

(declare-fun b!2835354 () Bool)

(declare-fun res!1180104 () Bool)

(declare-fun e!1795461 () Bool)

(assert (=> b!2835354 (=> (not res!1180104) (not e!1795461))))

(assert (=> b!2835354 (= res!1180104 (isBalanced!3138 (left!25254 (c!458143 lt!1010851))))))

(declare-fun b!2835355 () Bool)

(declare-fun e!1795462 () Bool)

(assert (=> b!2835355 (= e!1795462 e!1795461)))

(declare-fun res!1180105 () Bool)

(assert (=> b!2835355 (=> (not res!1180105) (not e!1795461))))

(assert (=> b!2835355 (= res!1180105 (<= (- 1) (- (height!1510 (left!25254 (c!458143 lt!1010851))) (height!1510 (right!25584 (c!458143 lt!1010851))))))))

(declare-fun b!2835356 () Bool)

(declare-fun res!1180107 () Bool)

(assert (=> b!2835356 (=> (not res!1180107) (not e!1795461))))

(assert (=> b!2835356 (= res!1180107 (<= (- (height!1510 (left!25254 (c!458143 lt!1010851))) (height!1510 (right!25584 (c!458143 lt!1010851)))) 1))))

(declare-fun b!2835357 () Bool)

(declare-fun res!1180106 () Bool)

(assert (=> b!2835357 (=> (not res!1180106) (not e!1795461))))

(assert (=> b!2835357 (= res!1180106 (isBalanced!3138 (right!25584 (c!458143 lt!1010851))))))

(declare-fun d!822815 () Bool)

(declare-fun res!1180108 () Bool)

(assert (=> d!822815 (=> res!1180108 e!1795462)))

(assert (=> d!822815 (= res!1180108 (not ((_ is Node!10400) (c!458143 lt!1010851))))))

(assert (=> d!822815 (= (isBalanced!3138 (c!458143 lt!1010851)) e!1795462)))

(declare-fun b!2835358 () Bool)

(declare-fun res!1180109 () Bool)

(assert (=> b!2835358 (=> (not res!1180109) (not e!1795461))))

(assert (=> b!2835358 (= res!1180109 (not (isEmpty!18463 (left!25254 (c!458143 lt!1010851)))))))

(declare-fun b!2835359 () Bool)

(assert (=> b!2835359 (= e!1795461 (not (isEmpty!18463 (right!25584 (c!458143 lt!1010851)))))))

(assert (= (and d!822815 (not res!1180108)) b!2835355))

(assert (= (and b!2835355 res!1180105) b!2835356))

(assert (= (and b!2835356 res!1180107) b!2835354))

(assert (= (and b!2835354 res!1180104) b!2835357))

(assert (= (and b!2835357 res!1180106) b!2835358))

(assert (= (and b!2835358 res!1180109) b!2835359))

(declare-fun m!3265129 () Bool)

(assert (=> b!2835359 m!3265129))

(declare-fun m!3265131 () Bool)

(assert (=> b!2835357 m!3265131))

(declare-fun m!3265133 () Bool)

(assert (=> b!2835355 m!3265133))

(declare-fun m!3265135 () Bool)

(assert (=> b!2835355 m!3265135))

(declare-fun m!3265137 () Bool)

(assert (=> b!2835358 m!3265137))

(assert (=> b!2835356 m!3265133))

(assert (=> b!2835356 m!3265135))

(declare-fun m!3265139 () Bool)

(assert (=> b!2835354 m!3265139))

(assert (=> b!2834868 d!822815))

(declare-fun d!822817 () Bool)

(declare-fun res!1180110 () Bool)

(declare-fun e!1795463 () Bool)

(assert (=> d!822817 (=> res!1180110 e!1795463)))

(assert (=> d!822817 (= res!1180110 ((_ is Nil!33468) (t!231785 rules!1047)))))

(assert (=> d!822817 (= (noDuplicateTag!1855 thiss!11007 (t!231785 rules!1047) (Cons!33471 (tag!5526 (h!38888 rules!1047)) Nil!33471)) e!1795463)))

(declare-fun b!2835360 () Bool)

(declare-fun e!1795464 () Bool)

(assert (=> b!2835360 (= e!1795463 e!1795464)))

(declare-fun res!1180111 () Bool)

(assert (=> b!2835360 (=> (not res!1180111) (not e!1795464))))

(assert (=> b!2835360 (= res!1180111 (not (contains!6108 (Cons!33471 (tag!5526 (h!38888 rules!1047)) Nil!33471) (tag!5526 (h!38888 (t!231785 rules!1047))))))))

(declare-fun b!2835361 () Bool)

(assert (=> b!2835361 (= e!1795464 (noDuplicateTag!1855 thiss!11007 (t!231785 (t!231785 rules!1047)) (Cons!33471 (tag!5526 (h!38888 (t!231785 rules!1047))) (Cons!33471 (tag!5526 (h!38888 rules!1047)) Nil!33471))))))

(assert (= (and d!822817 (not res!1180110)) b!2835360))

(assert (= (and b!2835360 res!1180111) b!2835361))

(declare-fun m!3265141 () Bool)

(assert (=> b!2835360 m!3265141))

(declare-fun m!3265143 () Bool)

(assert (=> b!2835361 m!3265143))

(assert (=> b!2834954 d!822817))

(declare-fun d!822819 () Bool)

(assert (=> d!822819 (= (inv!15 (value!161496 (h!38889 (t!231786 l!4019)))) (= (charsToBigInt!0 (text!37213 (value!161496 (h!38889 (t!231786 l!4019)))) 0) (value!161491 (value!161496 (h!38889 (t!231786 l!4019))))))))

(declare-fun bs!518703 () Bool)

(assert (= bs!518703 d!822819))

(declare-fun m!3265145 () Bool)

(assert (=> bs!518703 m!3265145))

(assert (=> b!2834899 d!822819))

(declare-fun d!822821 () Bool)

(declare-fun lt!1011074 () Int)

(assert (=> d!822821 (>= lt!1011074 0)))

(declare-fun e!1795465 () Int)

(assert (=> d!822821 (= lt!1011074 e!1795465)))

(declare-fun c!458235 () Bool)

(assert (=> d!822821 (= c!458235 ((_ is Nil!33467) (list!12511 (c!458142 (charsOf!3108 (h!38889 (t!231786 l!4019)))))))))

(assert (=> d!822821 (= (size!26041 (list!12511 (c!458142 (charsOf!3108 (h!38889 (t!231786 l!4019)))))) lt!1011074)))

(declare-fun b!2835362 () Bool)

(assert (=> b!2835362 (= e!1795465 0)))

(declare-fun b!2835363 () Bool)

(assert (=> b!2835363 (= e!1795465 (+ 1 (size!26041 (t!231784 (list!12511 (c!458142 (charsOf!3108 (h!38889 (t!231786 l!4019)))))))))))

(assert (= (and d!822821 c!458235) b!2835362))

(assert (= (and d!822821 (not c!458235)) b!2835363))

(declare-fun m!3265147 () Bool)

(assert (=> b!2835363 m!3265147))

(assert (=> d!822541 d!822821))

(declare-fun b!2835375 () Bool)

(declare-fun e!1795471 () List!33591)

(assert (=> b!2835375 (= e!1795471 (++!8107 (list!12511 (left!25253 (c!458142 (charsOf!3108 (h!38889 (t!231786 l!4019)))))) (list!12511 (right!25583 (c!458142 (charsOf!3108 (h!38889 (t!231786 l!4019))))))))))

(declare-fun b!2835373 () Bool)

(declare-fun e!1795470 () List!33591)

(assert (=> b!2835373 (= e!1795470 e!1795471)))

(declare-fun c!458241 () Bool)

(assert (=> b!2835373 (= c!458241 ((_ is Leaf!15818) (c!458142 (charsOf!3108 (h!38889 (t!231786 l!4019))))))))

(declare-fun b!2835372 () Bool)

(assert (=> b!2835372 (= e!1795470 Nil!33467)))

(declare-fun d!822823 () Bool)

(declare-fun c!458240 () Bool)

(assert (=> d!822823 (= c!458240 ((_ is Empty!10399) (c!458142 (charsOf!3108 (h!38889 (t!231786 l!4019))))))))

(assert (=> d!822823 (= (list!12511 (c!458142 (charsOf!3108 (h!38889 (t!231786 l!4019))))) e!1795470)))

(declare-fun b!2835374 () Bool)

(declare-fun list!12514 (IArray!20803) List!33591)

(assert (=> b!2835374 (= e!1795471 (list!12514 (xs!13511 (c!458142 (charsOf!3108 (h!38889 (t!231786 l!4019)))))))))

(assert (= (and d!822823 c!458240) b!2835372))

(assert (= (and d!822823 (not c!458240)) b!2835373))

(assert (= (and b!2835373 c!458241) b!2835374))

(assert (= (and b!2835373 (not c!458241)) b!2835375))

(declare-fun m!3265149 () Bool)

(assert (=> b!2835375 m!3265149))

(declare-fun m!3265151 () Bool)

(assert (=> b!2835375 m!3265151))

(assert (=> b!2835375 m!3265149))

(assert (=> b!2835375 m!3265151))

(declare-fun m!3265153 () Bool)

(assert (=> b!2835375 m!3265153))

(declare-fun m!3265155 () Bool)

(assert (=> b!2835374 m!3265155))

(assert (=> d!822541 d!822823))

(declare-fun d!822825 () Bool)

(declare-fun lt!1011076 () Bool)

(declare-fun e!1795472 () Bool)

(assert (=> d!822825 (= lt!1011076 e!1795472)))

(declare-fun res!1180112 () Bool)

(assert (=> d!822825 (=> (not res!1180112) (not e!1795472))))

(assert (=> d!822825 (= res!1180112 (= (list!12507 (_1!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (list!12507 (seqFromList!3268 l!4019)))))))) (list!12507 (singletonSeq!2173 (h!38889 (list!12507 (seqFromList!3268 l!4019)))))))))

(declare-fun e!1795473 () Bool)

(assert (=> d!822825 (= lt!1011076 e!1795473)))

(declare-fun res!1180114 () Bool)

(assert (=> d!822825 (=> (not res!1180114) (not e!1795473))))

(declare-fun lt!1011075 () tuple2!33536)

(assert (=> d!822825 (= res!1180114 (= (size!26042 (_1!19880 lt!1011075)) 1))))

(assert (=> d!822825 (= lt!1011075 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (list!12507 (seqFromList!3268 l!4019)))))))))

(assert (=> d!822825 (not (isEmpty!18451 rules!1047))))

(assert (=> d!822825 (= (rulesProduceIndividualToken!2142 thiss!11007 rules!1047 (h!38889 (list!12507 (seqFromList!3268 l!4019)))) lt!1011076)))

(declare-fun b!2835376 () Bool)

(declare-fun res!1180113 () Bool)

(assert (=> b!2835376 (=> (not res!1180113) (not e!1795473))))

(assert (=> b!2835376 (= res!1180113 (= (apply!7817 (_1!19880 lt!1011075) 0) (h!38889 (list!12507 (seqFromList!3268 l!4019)))))))

(declare-fun b!2835377 () Bool)

(assert (=> b!2835377 (= e!1795473 (isEmpty!18455 (_2!19880 lt!1011075)))))

(declare-fun b!2835378 () Bool)

(assert (=> b!2835378 (= e!1795472 (isEmpty!18455 (_2!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (list!12507 (seqFromList!3268 l!4019)))))))))))

(assert (= (and d!822825 res!1180114) b!2835376))

(assert (= (and b!2835376 res!1180113) b!2835377))

(assert (= (and d!822825 res!1180112) b!2835378))

(declare-fun m!3265157 () Bool)

(assert (=> d!822825 m!3265157))

(declare-fun m!3265159 () Bool)

(assert (=> d!822825 m!3265159))

(declare-fun m!3265161 () Bool)

(assert (=> d!822825 m!3265161))

(assert (=> d!822825 m!3265161))

(assert (=> d!822825 m!3265157))

(declare-fun m!3265163 () Bool)

(assert (=> d!822825 m!3265163))

(assert (=> d!822825 m!3265161))

(declare-fun m!3265165 () Bool)

(assert (=> d!822825 m!3265165))

(assert (=> d!822825 m!3264037))

(declare-fun m!3265167 () Bool)

(assert (=> d!822825 m!3265167))

(declare-fun m!3265169 () Bool)

(assert (=> b!2835376 m!3265169))

(declare-fun m!3265171 () Bool)

(assert (=> b!2835377 m!3265171))

(assert (=> b!2835378 m!3265161))

(assert (=> b!2835378 m!3265161))

(assert (=> b!2835378 m!3265157))

(assert (=> b!2835378 m!3265157))

(assert (=> b!2835378 m!3265159))

(declare-fun m!3265173 () Bool)

(assert (=> b!2835378 m!3265173))

(assert (=> b!2834879 d!822825))

(declare-fun d!822827 () Bool)

(assert (=> d!822827 (= (isEmpty!18454 (originalCharacters!5754 (h!38889 (t!231786 l!4019)))) ((_ is Nil!33467) (originalCharacters!5754 (h!38889 (t!231786 l!4019)))))))

(assert (=> d!822531 d!822827))

(declare-fun d!822829 () Bool)

(declare-fun res!1180115 () Bool)

(declare-fun e!1795474 () Bool)

(assert (=> d!822829 (=> res!1180115 e!1795474)))

(assert (=> d!822829 (= res!1180115 ((_ is Nil!33469) (t!231786 (list!12507 (seqFromList!3268 l!4019)))))))

(assert (=> d!822829 (= (forall!6886 (t!231786 (list!12507 (seqFromList!3268 l!4019))) lambda!104112) e!1795474)))

(declare-fun b!2835379 () Bool)

(declare-fun e!1795475 () Bool)

(assert (=> b!2835379 (= e!1795474 e!1795475)))

(declare-fun res!1180116 () Bool)

(assert (=> b!2835379 (=> (not res!1180116) (not e!1795475))))

(assert (=> b!2835379 (= res!1180116 (dynLambda!14080 lambda!104112 (h!38889 (t!231786 (list!12507 (seqFromList!3268 l!4019))))))))

(declare-fun b!2835380 () Bool)

(assert (=> b!2835380 (= e!1795475 (forall!6886 (t!231786 (t!231786 (list!12507 (seqFromList!3268 l!4019)))) lambda!104112))))

(assert (= (and d!822829 (not res!1180115)) b!2835379))

(assert (= (and b!2835379 res!1180116) b!2835380))

(declare-fun b_lambda!85219 () Bool)

(assert (=> (not b_lambda!85219) (not b!2835379)))

(declare-fun m!3265175 () Bool)

(assert (=> b!2835379 m!3265175))

(declare-fun m!3265177 () Bool)

(assert (=> b!2835380 m!3265177))

(assert (=> b!2834922 d!822829))

(declare-fun b!2835381 () Bool)

(declare-fun res!1180117 () Bool)

(declare-fun e!1795476 () Bool)

(assert (=> b!2835381 (=> (not res!1180117) (not e!1795476))))

(assert (=> b!2835381 (= res!1180117 (isBalanced!3138 (left!25254 (c!458143 lt!1010864))))))

(declare-fun b!2835382 () Bool)

(declare-fun e!1795477 () Bool)

(assert (=> b!2835382 (= e!1795477 e!1795476)))

(declare-fun res!1180118 () Bool)

(assert (=> b!2835382 (=> (not res!1180118) (not e!1795476))))

(assert (=> b!2835382 (= res!1180118 (<= (- 1) (- (height!1510 (left!25254 (c!458143 lt!1010864))) (height!1510 (right!25584 (c!458143 lt!1010864))))))))

(declare-fun b!2835383 () Bool)

(declare-fun res!1180120 () Bool)

(assert (=> b!2835383 (=> (not res!1180120) (not e!1795476))))

(assert (=> b!2835383 (= res!1180120 (<= (- (height!1510 (left!25254 (c!458143 lt!1010864))) (height!1510 (right!25584 (c!458143 lt!1010864)))) 1))))

(declare-fun b!2835384 () Bool)

(declare-fun res!1180119 () Bool)

(assert (=> b!2835384 (=> (not res!1180119) (not e!1795476))))

(assert (=> b!2835384 (= res!1180119 (isBalanced!3138 (right!25584 (c!458143 lt!1010864))))))

(declare-fun d!822831 () Bool)

(declare-fun res!1180121 () Bool)

(assert (=> d!822831 (=> res!1180121 e!1795477)))

(assert (=> d!822831 (= res!1180121 (not ((_ is Node!10400) (c!458143 lt!1010864))))))

(assert (=> d!822831 (= (isBalanced!3138 (c!458143 lt!1010864)) e!1795477)))

(declare-fun b!2835385 () Bool)

(declare-fun res!1180122 () Bool)

(assert (=> b!2835385 (=> (not res!1180122) (not e!1795476))))

(assert (=> b!2835385 (= res!1180122 (not (isEmpty!18463 (left!25254 (c!458143 lt!1010864)))))))

(declare-fun b!2835386 () Bool)

(assert (=> b!2835386 (= e!1795476 (not (isEmpty!18463 (right!25584 (c!458143 lt!1010864)))))))

(assert (= (and d!822831 (not res!1180121)) b!2835382))

(assert (= (and b!2835382 res!1180118) b!2835383))

(assert (= (and b!2835383 res!1180120) b!2835381))

(assert (= (and b!2835381 res!1180117) b!2835384))

(assert (= (and b!2835384 res!1180119) b!2835385))

(assert (= (and b!2835385 res!1180122) b!2835386))

(declare-fun m!3265179 () Bool)

(assert (=> b!2835386 m!3265179))

(declare-fun m!3265181 () Bool)

(assert (=> b!2835384 m!3265181))

(declare-fun m!3265183 () Bool)

(assert (=> b!2835382 m!3265183))

(declare-fun m!3265185 () Bool)

(assert (=> b!2835382 m!3265185))

(declare-fun m!3265187 () Bool)

(assert (=> b!2835385 m!3265187))

(assert (=> b!2835383 m!3265183))

(assert (=> b!2835383 m!3265185))

(declare-fun m!3265189 () Bool)

(assert (=> b!2835381 m!3265189))

(assert (=> b!2834909 d!822831))

(declare-fun b!2835395 () Bool)

(declare-fun e!1795482 () List!33593)

(assert (=> b!2835395 (= e!1795482 Nil!33469)))

(declare-fun c!458246 () Bool)

(declare-fun d!822833 () Bool)

(assert (=> d!822833 (= c!458246 ((_ is Empty!10400) (c!458143 (_1!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))))))

(assert (=> d!822833 (= (list!12512 (c!458143 (_1!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))) e!1795482)))

(declare-fun b!2835398 () Bool)

(declare-fun e!1795483 () List!33593)

(assert (=> b!2835398 (= e!1795483 (++!8110 (list!12512 (left!25254 (c!458143 (_1!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))))) (list!12512 (right!25584 (c!458143 (_1!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))))))))

(declare-fun b!2835396 () Bool)

(assert (=> b!2835396 (= e!1795482 e!1795483)))

(declare-fun c!458247 () Bool)

(assert (=> b!2835396 (= c!458247 ((_ is Leaf!15819) (c!458143 (_1!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))))))

(declare-fun b!2835397 () Bool)

(declare-fun list!12515 (IArray!20805) List!33593)

(assert (=> b!2835397 (= e!1795483 (list!12515 (xs!13512 (c!458143 (_1!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))))))))

(assert (= (and d!822833 c!458246) b!2835395))

(assert (= (and d!822833 (not c!458246)) b!2835396))

(assert (= (and b!2835396 c!458247) b!2835397))

(assert (= (and b!2835396 (not c!458247)) b!2835398))

(declare-fun m!3265191 () Bool)

(assert (=> b!2835398 m!3265191))

(declare-fun m!3265193 () Bool)

(assert (=> b!2835398 m!3265193))

(assert (=> b!2835398 m!3265191))

(assert (=> b!2835398 m!3265193))

(declare-fun m!3265195 () Bool)

(assert (=> b!2835398 m!3265195))

(declare-fun m!3265197 () Bool)

(assert (=> b!2835397 m!3265197))

(assert (=> d!822571 d!822833))

(assert (=> bs!518663 d!822825))

(declare-fun d!822835 () Bool)

(declare-fun lt!1011089 () Int)

(assert (=> d!822835 (>= lt!1011089 0)))

(declare-fun e!1795484 () Int)

(assert (=> d!822835 (= lt!1011089 e!1795484)))

(declare-fun c!458248 () Bool)

(assert (=> d!822835 (= c!458248 ((_ is Nil!33467) (t!231784 (originalCharacters!5754 (h!38889 l!4019)))))))

(assert (=> d!822835 (= (size!26041 (t!231784 (originalCharacters!5754 (h!38889 l!4019)))) lt!1011089)))

(declare-fun b!2835399 () Bool)

(assert (=> b!2835399 (= e!1795484 0)))

(declare-fun b!2835400 () Bool)

(assert (=> b!2835400 (= e!1795484 (+ 1 (size!26041 (t!231784 (t!231784 (originalCharacters!5754 (h!38889 l!4019)))))))))

(assert (= (and d!822835 c!458248) b!2835399))

(assert (= (and d!822835 (not c!458248)) b!2835400))

(declare-fun m!3265199 () Bool)

(assert (=> b!2835400 m!3265199))

(assert (=> b!2834878 d!822835))

(declare-fun d!822837 () Bool)

(declare-fun choose!16735 (Int) Bool)

(assert (=> d!822837 (= (Forall2!840 lambda!104121) (choose!16735 lambda!104121))))

(declare-fun bs!518704 () Bool)

(assert (= bs!518704 d!822837))

(declare-fun m!3265201 () Bool)

(assert (=> bs!518704 m!3265201))

(assert (=> d!822511 d!822837))

(declare-fun d!822839 () Bool)

(declare-fun res!1180129 () Bool)

(declare-fun e!1795493 () Bool)

(assert (=> d!822839 (=> (not res!1180129) (not e!1795493))))

(assert (=> d!822839 (= res!1180129 (= (csize!21028 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))) (+ (size!26043 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))) (size!26043 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))))))))

(assert (=> d!822839 (= (inv!45439 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))) e!1795493)))

(declare-fun b!2835419 () Bool)

(declare-fun res!1180130 () Bool)

(assert (=> b!2835419 (=> (not res!1180130) (not e!1795493))))

(assert (=> b!2835419 (= res!1180130 (and (not (= (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))) Empty!10399)) (not (= (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))) Empty!10399))))))

(declare-fun b!2835420 () Bool)

(declare-fun res!1180131 () Bool)

(assert (=> b!2835420 (=> (not res!1180131) (not e!1795493))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1511 (Conc!10399) Int)

(assert (=> b!2835420 (= res!1180131 (= (cheight!10610 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))) (+ (max!0 (height!1511 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))) (height!1511 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))))) 1)))))

(declare-fun b!2835421 () Bool)

(assert (=> b!2835421 (= e!1795493 (<= 0 (cheight!10610 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))))))

(assert (= (and d!822839 res!1180129) b!2835419))

(assert (= (and b!2835419 res!1180130) b!2835420))

(assert (= (and b!2835420 res!1180131) b!2835421))

(declare-fun m!3265203 () Bool)

(assert (=> d!822839 m!3265203))

(declare-fun m!3265205 () Bool)

(assert (=> d!822839 m!3265205))

(declare-fun m!3265207 () Bool)

(assert (=> b!2835420 m!3265207))

(declare-fun m!3265209 () Bool)

(assert (=> b!2835420 m!3265209))

(assert (=> b!2835420 m!3265207))

(assert (=> b!2835420 m!3265209))

(declare-fun m!3265211 () Bool)

(assert (=> b!2835420 m!3265211))

(assert (=> b!2834903 d!822839))

(declare-fun d!822841 () Bool)

(declare-fun lt!1011148 () Token!9446)

(declare-fun contains!6109 (List!33593 Token!9446) Bool)

(assert (=> d!822841 (contains!6109 (list!12507 (_1!19880 lt!1010802)) lt!1011148)))

(declare-fun e!1795501 () Token!9446)

(assert (=> d!822841 (= lt!1011148 e!1795501)))

(declare-fun c!458257 () Bool)

(assert (=> d!822841 (= c!458257 (= 0 0))))

(declare-fun e!1795500 () Bool)

(assert (=> d!822841 e!1795500))

(declare-fun res!1180136 () Bool)

(assert (=> d!822841 (=> (not res!1180136) (not e!1795500))))

(assert (=> d!822841 (= res!1180136 (<= 0 0))))

(assert (=> d!822841 (= (apply!7820 (list!12507 (_1!19880 lt!1010802)) 0) lt!1011148)))

(declare-fun b!2835430 () Bool)

(assert (=> b!2835430 (= e!1795500 (< 0 (size!26046 (list!12507 (_1!19880 lt!1010802)))))))

(declare-fun b!2835431 () Bool)

(assert (=> b!2835431 (= e!1795501 (head!6245 (list!12507 (_1!19880 lt!1010802))))))

(declare-fun b!2835432 () Bool)

(assert (=> b!2835432 (= e!1795501 (apply!7820 (tail!4470 (list!12507 (_1!19880 lt!1010802))) (- 0 1)))))

(assert (= (and d!822841 res!1180136) b!2835430))

(assert (= (and d!822841 c!458257) b!2835431))

(assert (= (and d!822841 (not c!458257)) b!2835432))

(assert (=> d!822841 m!3264459))

(declare-fun m!3265213 () Bool)

(assert (=> d!822841 m!3265213))

(assert (=> b!2835430 m!3264459))

(assert (=> b!2835430 m!3264461))

(assert (=> b!2835431 m!3264459))

(declare-fun m!3265215 () Bool)

(assert (=> b!2835431 m!3265215))

(assert (=> b!2835432 m!3264459))

(declare-fun m!3265217 () Bool)

(assert (=> b!2835432 m!3265217))

(assert (=> b!2835432 m!3265217))

(declare-fun m!3265219 () Bool)

(assert (=> b!2835432 m!3265219))

(assert (=> d!822681 d!822841))

(declare-fun d!822843 () Bool)

(assert (=> d!822843 (= (list!12507 (_1!19880 lt!1010802)) (list!12512 (c!458143 (_1!19880 lt!1010802))))))

(declare-fun bs!518705 () Bool)

(assert (= bs!518705 d!822843))

(declare-fun m!3265221 () Bool)

(assert (=> bs!518705 m!3265221))

(assert (=> d!822681 d!822843))

(declare-fun b!2835454 () Bool)

(declare-fun e!1795515 () Int)

(assert (=> b!2835454 (= e!1795515 (- 0 (size!26047 (left!25254 (c!458143 (_1!19880 lt!1010802))))))))

(declare-fun bm!183282 () Bool)

(declare-fun c!458269 () Bool)

(declare-fun c!458267 () Bool)

(assert (=> bm!183282 (= c!458269 c!458267)))

(declare-fun call!183287 () Token!9446)

(assert (=> bm!183282 (= call!183287 (apply!7821 (ite c!458267 (left!25254 (c!458143 (_1!19880 lt!1010802))) (right!25584 (c!458143 (_1!19880 lt!1010802)))) e!1795515))))

(declare-fun b!2835455 () Bool)

(declare-fun e!1795514 () Bool)

(assert (=> b!2835455 (= e!1795514 (< 0 (size!26047 (c!458143 (_1!19880 lt!1010802)))))))

(declare-fun b!2835456 () Bool)

(declare-fun e!1795517 () Token!9446)

(assert (=> b!2835456 (= e!1795517 call!183287)))

(declare-fun b!2835457 () Bool)

(assert (=> b!2835457 (= e!1795517 call!183287)))

(declare-fun b!2835458 () Bool)

(assert (=> b!2835458 (= e!1795515 0)))

(declare-fun d!822845 () Bool)

(declare-fun lt!1011187 () Token!9446)

(assert (=> d!822845 (= lt!1011187 (apply!7820 (list!12512 (c!458143 (_1!19880 lt!1010802))) 0))))

(declare-fun e!1795516 () Token!9446)

(assert (=> d!822845 (= lt!1011187 e!1795516)))

(declare-fun c!458268 () Bool)

(assert (=> d!822845 (= c!458268 ((_ is Leaf!15819) (c!458143 (_1!19880 lt!1010802))))))

(assert (=> d!822845 e!1795514))

(declare-fun res!1180140 () Bool)

(assert (=> d!822845 (=> (not res!1180140) (not e!1795514))))

(assert (=> d!822845 (= res!1180140 (<= 0 0))))

(assert (=> d!822845 (= (apply!7821 (c!458143 (_1!19880 lt!1010802)) 0) lt!1011187)))

(declare-fun b!2835459 () Bool)

(declare-fun apply!7822 (IArray!20805 Int) Token!9446)

(assert (=> b!2835459 (= e!1795516 (apply!7822 (xs!13512 (c!458143 (_1!19880 lt!1010802))) 0))))

(declare-fun b!2835460 () Bool)

(assert (=> b!2835460 (= e!1795516 e!1795517)))

(declare-fun lt!1011188 () Bool)

(declare-fun appendIndex!294 (List!33593 List!33593 Int) Bool)

(assert (=> b!2835460 (= lt!1011188 (appendIndex!294 (list!12512 (left!25254 (c!458143 (_1!19880 lt!1010802)))) (list!12512 (right!25584 (c!458143 (_1!19880 lt!1010802)))) 0))))

(assert (=> b!2835460 (= c!458267 (< 0 (size!26047 (left!25254 (c!458143 (_1!19880 lt!1010802))))))))

(assert (= (and d!822845 res!1180140) b!2835455))

(assert (= (and d!822845 c!458268) b!2835459))

(assert (= (and d!822845 (not c!458268)) b!2835460))

(assert (= (and b!2835460 c!458267) b!2835456))

(assert (= (and b!2835460 (not c!458267)) b!2835457))

(assert (= (or b!2835456 b!2835457) bm!183282))

(assert (= (and bm!183282 c!458269) b!2835458))

(assert (= (and bm!183282 (not c!458269)) b!2835454))

(declare-fun m!3265313 () Bool)

(assert (=> b!2835454 m!3265313))

(declare-fun m!3265315 () Bool)

(assert (=> b!2835460 m!3265315))

(declare-fun m!3265317 () Bool)

(assert (=> b!2835460 m!3265317))

(assert (=> b!2835460 m!3265315))

(assert (=> b!2835460 m!3265317))

(declare-fun m!3265319 () Bool)

(assert (=> b!2835460 m!3265319))

(assert (=> b!2835460 m!3265313))

(assert (=> b!2835455 m!3264463))

(declare-fun m!3265321 () Bool)

(assert (=> b!2835459 m!3265321))

(assert (=> d!822845 m!3265221))

(assert (=> d!822845 m!3265221))

(declare-fun m!3265323 () Bool)

(assert (=> d!822845 m!3265323))

(declare-fun m!3265325 () Bool)

(assert (=> bm!183282 m!3265325))

(assert (=> d!822681 d!822845))

(declare-fun d!822849 () Bool)

(assert (=> d!822849 (= (list!12507 lt!1010882) (list!12512 (c!458143 lt!1010882)))))

(declare-fun bs!518706 () Bool)

(assert (= bs!518706 d!822849))

(declare-fun m!3265327 () Bool)

(assert (=> bs!518706 m!3265327))

(assert (=> d!822591 d!822849))

(assert (=> d!822591 d!822807))

(declare-fun b!2835461 () Bool)

(declare-fun e!1795520 () Bool)

(assert (=> b!2835461 (= e!1795520 (inv!16 (value!161496 (h!38889 (t!231786 (t!231786 l!4019))))))))

(declare-fun b!2835462 () Bool)

(declare-fun res!1180141 () Bool)

(declare-fun e!1795519 () Bool)

(assert (=> b!2835462 (=> res!1180141 e!1795519)))

(assert (=> b!2835462 (= res!1180141 (not ((_ is IntegerValue!15758) (value!161496 (h!38889 (t!231786 (t!231786 l!4019)))))))))

(declare-fun e!1795518 () Bool)

(assert (=> b!2835462 (= e!1795518 e!1795519)))

(declare-fun d!822851 () Bool)

(declare-fun c!458271 () Bool)

(assert (=> d!822851 (= c!458271 ((_ is IntegerValue!15756) (value!161496 (h!38889 (t!231786 (t!231786 l!4019))))))))

(assert (=> d!822851 (= (inv!21 (value!161496 (h!38889 (t!231786 (t!231786 l!4019))))) e!1795520)))

(declare-fun b!2835463 () Bool)

(assert (=> b!2835463 (= e!1795520 e!1795518)))

(declare-fun c!458270 () Bool)

(assert (=> b!2835463 (= c!458270 ((_ is IntegerValue!15757) (value!161496 (h!38889 (t!231786 (t!231786 l!4019))))))))

(declare-fun b!2835464 () Bool)

(assert (=> b!2835464 (= e!1795519 (inv!15 (value!161496 (h!38889 (t!231786 (t!231786 l!4019))))))))

(declare-fun b!2835465 () Bool)

(assert (=> b!2835465 (= e!1795518 (inv!17 (value!161496 (h!38889 (t!231786 (t!231786 l!4019))))))))

(assert (= (and d!822851 c!458271) b!2835461))

(assert (= (and d!822851 (not c!458271)) b!2835463))

(assert (= (and b!2835463 c!458270) b!2835465))

(assert (= (and b!2835463 (not c!458270)) b!2835462))

(assert (= (and b!2835462 (not res!1180141)) b!2835464))

(declare-fun m!3265329 () Bool)

(assert (=> b!2835461 m!3265329))

(declare-fun m!3265331 () Bool)

(assert (=> b!2835464 m!3265331))

(declare-fun m!3265335 () Bool)

(assert (=> b!2835465 m!3265335))

(assert (=> b!2835106 d!822851))

(declare-fun d!822853 () Bool)

(declare-fun lt!1011192 () Int)

(assert (=> d!822853 (= lt!1011192 (size!26041 (list!12508 (_2!19880 lt!1010845))))))

(assert (=> d!822853 (= lt!1011192 (size!26043 (c!458142 (_2!19880 lt!1010845))))))

(assert (=> d!822853 (= (size!26037 (_2!19880 lt!1010845)) lt!1011192)))

(declare-fun bs!518708 () Bool)

(assert (= bs!518708 d!822853))

(assert (=> bs!518708 m!3264359))

(assert (=> bs!518708 m!3264359))

(declare-fun m!3265339 () Bool)

(assert (=> bs!518708 m!3265339))

(declare-fun m!3265341 () Bool)

(assert (=> bs!518708 m!3265341))

(assert (=> b!2834865 d!822853))

(declare-fun d!822857 () Bool)

(declare-fun lt!1011193 () Int)

(assert (=> d!822857 (= lt!1011193 (size!26041 (list!12508 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))))

(assert (=> d!822857 (= lt!1011193 (size!26043 (c!458142 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))))

(assert (=> d!822857 (= (size!26037 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))) lt!1011193)))

(declare-fun bs!518709 () Bool)

(assert (= bs!518709 d!822857))

(assert (=> bs!518709 m!3264213))

(assert (=> bs!518709 m!3264361))

(assert (=> bs!518709 m!3264361))

(assert (=> bs!518709 m!3264743))

(declare-fun m!3265343 () Bool)

(assert (=> bs!518709 m!3265343))

(assert (=> b!2834865 d!822857))

(declare-fun d!822859 () Bool)

(assert (=> d!822859 (= (inv!16 (value!161496 (h!38889 (t!231786 l!4019)))) (= (charsToInt!0 (text!37211 (value!161496 (h!38889 (t!231786 l!4019))))) (value!161487 (value!161496 (h!38889 (t!231786 l!4019))))))))

(declare-fun bs!518710 () Bool)

(assert (= bs!518710 d!822859))

(declare-fun m!3265345 () Bool)

(assert (=> bs!518710 m!3265345))

(assert (=> b!2834896 d!822859))

(declare-fun d!822861 () Bool)

(declare-fun c!458272 () Bool)

(assert (=> d!822861 (= c!458272 ((_ is Node!10399) (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))))))

(declare-fun e!1795521 () Bool)

(assert (=> d!822861 (= (inv!45437 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))) e!1795521)))

(declare-fun b!2835466 () Bool)

(assert (=> b!2835466 (= e!1795521 (inv!45439 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))))))

(declare-fun b!2835467 () Bool)

(declare-fun e!1795522 () Bool)

(assert (=> b!2835467 (= e!1795521 e!1795522)))

(declare-fun res!1180142 () Bool)

(assert (=> b!2835467 (= res!1180142 (not ((_ is Leaf!15818) (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))))))

(assert (=> b!2835467 (=> res!1180142 e!1795522)))

(declare-fun b!2835468 () Bool)

(assert (=> b!2835468 (= e!1795522 (inv!45440 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))))))

(assert (= (and d!822861 c!458272) b!2835466))

(assert (= (and d!822861 (not c!458272)) b!2835467))

(assert (= (and b!2835467 (not res!1180142)) b!2835468))

(declare-fun m!3265349 () Bool)

(assert (=> b!2835466 m!3265349))

(declare-fun m!3265351 () Bool)

(assert (=> b!2835468 m!3265351))

(assert (=> b!2835117 d!822861))

(declare-fun d!822865 () Bool)

(declare-fun c!458273 () Bool)

(assert (=> d!822865 (= c!458273 ((_ is Node!10399) (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))))))

(declare-fun e!1795525 () Bool)

(assert (=> d!822865 (= (inv!45437 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))) e!1795525)))

(declare-fun b!2835472 () Bool)

(assert (=> b!2835472 (= e!1795525 (inv!45439 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))))))

(declare-fun b!2835473 () Bool)

(declare-fun e!1795526 () Bool)

(assert (=> b!2835473 (= e!1795525 e!1795526)))

(declare-fun res!1180146 () Bool)

(assert (=> b!2835473 (= res!1180146 (not ((_ is Leaf!15818) (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))))))

(assert (=> b!2835473 (=> res!1180146 e!1795526)))

(declare-fun b!2835474 () Bool)

(assert (=> b!2835474 (= e!1795526 (inv!45440 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))))))

(assert (= (and d!822865 c!458273) b!2835472))

(assert (= (and d!822865 (not c!458273)) b!2835473))

(assert (= (and b!2835473 (not res!1180146)) b!2835474))

(declare-fun m!3265353 () Bool)

(assert (=> b!2835472 m!3265353))

(declare-fun m!3265355 () Bool)

(assert (=> b!2835474 m!3265355))

(assert (=> b!2835117 d!822865))

(assert (=> d!822539 d!822823))

(declare-fun d!822867 () Bool)

(declare-fun c!458276 () Bool)

(assert (=> d!822867 (= c!458276 ((_ is Nil!33466) (text!37213 (value!161496 (h!38889 l!4019)))))))

(declare-fun e!1795529 () Int)

(assert (=> d!822867 (= (charsToBigInt!0 (text!37213 (value!161496 (h!38889 l!4019))) 0) e!1795529)))

(declare-fun b!2835479 () Bool)

(assert (=> b!2835479 (= e!1795529 0)))

(declare-fun b!2835480 () Bool)

(declare-fun charToBigInt!0 ((_ BitVec 16)) Int)

(assert (=> b!2835480 (= e!1795529 (charsToBigInt!0 (t!231783 (text!37213 (value!161496 (h!38889 l!4019)))) (+ (* 0 10) (charToBigInt!0 (h!38886 (text!37213 (value!161496 (h!38889 l!4019))))))))))

(assert (= (and d!822867 c!458276) b!2835479))

(assert (= (and d!822867 (not c!458276)) b!2835480))

(declare-fun m!3265377 () Bool)

(assert (=> b!2835480 m!3265377))

(declare-fun m!3265379 () Bool)

(assert (=> b!2835480 m!3265379))

(assert (=> d!822517 d!822867))

(declare-fun d!822873 () Bool)

(assert (=> d!822873 (= (Forall!1244 lambda!104128) (choose!16733 lambda!104128))))

(declare-fun bs!518713 () Bool)

(assert (= bs!518713 d!822873))

(declare-fun m!3265381 () Bool)

(assert (=> bs!518713 m!3265381))

(assert (=> d!822577 d!822873))

(assert (=> b!2834661 d!822533))

(declare-fun d!822875 () Bool)

(declare-fun choose!644 (List!33590) Int)

(assert (=> d!822875 (= (charsToBigInt!1 (text!37212 (value!161496 (h!38889 l!4019)))) (choose!644 (text!37212 (value!161496 (h!38889 l!4019)))))))

(declare-fun bs!518714 () Bool)

(assert (= bs!518714 d!822875))

(declare-fun m!3265383 () Bool)

(assert (=> bs!518714 m!3265383))

(assert (=> d!822491 d!822875))

(assert (=> bs!518662 d!822435))

(declare-fun b!2835481 () Bool)

(declare-fun e!1795530 () List!33593)

(assert (=> b!2835481 (= e!1795530 Nil!33469)))

(declare-fun d!822877 () Bool)

(declare-fun c!458277 () Bool)

(assert (=> d!822877 (= c!458277 ((_ is Empty!10400) (c!458143 (seqFromList!3268 l!4019))))))

(assert (=> d!822877 (= (list!12512 (c!458143 (seqFromList!3268 l!4019))) e!1795530)))

(declare-fun b!2835484 () Bool)

(declare-fun e!1795531 () List!33593)

(assert (=> b!2835484 (= e!1795531 (++!8110 (list!12512 (left!25254 (c!458143 (seqFromList!3268 l!4019)))) (list!12512 (right!25584 (c!458143 (seqFromList!3268 l!4019))))))))

(declare-fun b!2835482 () Bool)

(assert (=> b!2835482 (= e!1795530 e!1795531)))

(declare-fun c!458278 () Bool)

(assert (=> b!2835482 (= c!458278 ((_ is Leaf!15819) (c!458143 (seqFromList!3268 l!4019))))))

(declare-fun b!2835483 () Bool)

(assert (=> b!2835483 (= e!1795531 (list!12515 (xs!13512 (c!458143 (seqFromList!3268 l!4019)))))))

(assert (= (and d!822877 c!458277) b!2835481))

(assert (= (and d!822877 (not c!458277)) b!2835482))

(assert (= (and b!2835482 c!458278) b!2835483))

(assert (= (and b!2835482 (not c!458278)) b!2835484))

(declare-fun m!3265385 () Bool)

(assert (=> b!2835484 m!3265385))

(declare-fun m!3265387 () Bool)

(assert (=> b!2835484 m!3265387))

(assert (=> b!2835484 m!3265385))

(assert (=> b!2835484 m!3265387))

(declare-fun m!3265389 () Bool)

(assert (=> b!2835484 m!3265389))

(declare-fun m!3265391 () Bool)

(assert (=> b!2835483 m!3265391))

(assert (=> d!822523 d!822877))

(declare-fun d!822879 () Bool)

(declare-fun res!1180155 () Bool)

(declare-fun e!1795541 () Bool)

(assert (=> d!822879 (=> (not res!1180155) (not e!1795541))))

(assert (=> d!822879 (= res!1180155 (<= (size!26041 (list!12514 (xs!13511 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))))) 512))))

(assert (=> d!822879 (= (inv!45440 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))) e!1795541)))

(declare-fun b!2835499 () Bool)

(declare-fun res!1180156 () Bool)

(assert (=> b!2835499 (=> (not res!1180156) (not e!1795541))))

(assert (=> b!2835499 (= res!1180156 (= (csize!21029 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))) (size!26041 (list!12514 (xs!13511 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))))))))

(declare-fun b!2835500 () Bool)

(assert (=> b!2835500 (= e!1795541 (and (> (csize!21029 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))) 0) (<= (csize!21029 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))) 512)))))

(assert (= (and d!822879 res!1180155) b!2835499))

(assert (= (and b!2835499 res!1180156) b!2835500))

(declare-fun m!3265403 () Bool)

(assert (=> d!822879 m!3265403))

(assert (=> d!822879 m!3265403))

(declare-fun m!3265405 () Bool)

(assert (=> d!822879 m!3265405))

(assert (=> b!2835499 m!3265403))

(assert (=> b!2835499 m!3265403))

(assert (=> b!2835499 m!3265405))

(assert (=> b!2834905 d!822879))

(declare-fun d!822885 () Bool)

(assert (=> d!822885 (= (inv!45444 (xs!13511 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))) (<= (size!26041 (innerList!10459 (xs!13511 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))))) 2147483647))))

(declare-fun bs!518716 () Bool)

(assert (= bs!518716 d!822885))

(declare-fun m!3265407 () Bool)

(assert (=> bs!518716 m!3265407))

(assert (=> b!2835133 d!822885))

(assert (=> d!822565 d!822563))

(assert (=> d!822565 d!822523))

(declare-fun b!2835516 () Bool)

(declare-fun e!1795552 () Bool)

(declare-fun forall!6892 (IArray!20805 Int) Bool)

(assert (=> b!2835516 (= e!1795552 (forall!6892 (xs!13512 (c!458143 (seqFromList!3268 l!4019))) lambda!104112))))

(declare-fun d!822887 () Bool)

(declare-fun lt!1011239 () Bool)

(assert (=> d!822887 (= lt!1011239 (forall!6886 (list!12512 (c!458143 (seqFromList!3268 l!4019))) lambda!104112))))

(declare-fun e!1795551 () Bool)

(assert (=> d!822887 (= lt!1011239 e!1795551)))

(declare-fun res!1180168 () Bool)

(assert (=> d!822887 (=> res!1180168 e!1795551)))

(assert (=> d!822887 (= res!1180168 ((_ is Empty!10400) (c!458143 (seqFromList!3268 l!4019))))))

(assert (=> d!822887 (= (forall!6891 (c!458143 (seqFromList!3268 l!4019)) lambda!104112) lt!1011239)))

(declare-fun b!2835515 () Bool)

(assert (=> b!2835515 (= e!1795551 e!1795552)))

(declare-fun c!458284 () Bool)

(assert (=> b!2835515 (= c!458284 ((_ is Leaf!15819) (c!458143 (seqFromList!3268 l!4019))))))

(declare-fun b!2835518 () Bool)

(declare-fun e!1795550 () Bool)

(assert (=> b!2835518 (= e!1795550 (forall!6891 (right!25584 (c!458143 (seqFromList!3268 l!4019))) lambda!104112))))

(declare-fun b!2835517 () Bool)

(assert (=> b!2835517 (= e!1795552 e!1795550)))

(declare-fun lt!1011238 () Unit!47411)

(declare-fun lemmaForallConcat!167 (List!33593 List!33593 Int) Unit!47411)

(assert (=> b!2835517 (= lt!1011238 (lemmaForallConcat!167 (list!12512 (left!25254 (c!458143 (seqFromList!3268 l!4019)))) (list!12512 (right!25584 (c!458143 (seqFromList!3268 l!4019)))) lambda!104112))))

(declare-fun res!1180167 () Bool)

(assert (=> b!2835517 (= res!1180167 (forall!6891 (left!25254 (c!458143 (seqFromList!3268 l!4019))) lambda!104112))))

(assert (=> b!2835517 (=> (not res!1180167) (not e!1795550))))

(assert (= (and d!822887 (not res!1180168)) b!2835515))

(assert (= (and b!2835515 c!458284) b!2835516))

(assert (= (and b!2835515 (not c!458284)) b!2835517))

(assert (= (and b!2835517 res!1180167) b!2835518))

(declare-fun m!3265495 () Bool)

(assert (=> b!2835516 m!3265495))

(assert (=> d!822887 m!3264405))

(assert (=> d!822887 m!3264405))

(declare-fun m!3265497 () Bool)

(assert (=> d!822887 m!3265497))

(declare-fun m!3265499 () Bool)

(assert (=> b!2835518 m!3265499))

(assert (=> b!2835517 m!3265385))

(assert (=> b!2835517 m!3265387))

(assert (=> b!2835517 m!3265385))

(assert (=> b!2835517 m!3265387))

(declare-fun m!3265501 () Bool)

(assert (=> b!2835517 m!3265501))

(declare-fun m!3265503 () Bool)

(assert (=> b!2835517 m!3265503))

(assert (=> d!822565 d!822887))

(declare-fun d!822891 () Bool)

(assert (=> d!822891 (= (list!12508 lt!1010865) (list!12511 (c!458142 lt!1010865)))))

(declare-fun bs!518717 () Bool)

(assert (= bs!518717 d!822891))

(declare-fun m!3265505 () Bool)

(assert (=> bs!518717 m!3265505))

(assert (=> d!822553 d!822891))

(declare-fun d!822893 () Bool)

(declare-fun c!458285 () Bool)

(assert (=> d!822893 (= c!458285 ((_ is Cons!33469) (list!12507 (singletonSeq!2173 (h!38889 l!4019)))))))

(declare-fun e!1795554 () List!33591)

(assert (=> d!822893 (= (printList!1232 thiss!11007 (list!12507 (singletonSeq!2173 (h!38889 l!4019)))) e!1795554)))

(declare-fun b!2835522 () Bool)

(assert (=> b!2835522 (= e!1795554 (++!8107 (list!12508 (charsOf!3108 (h!38889 (list!12507 (singletonSeq!2173 (h!38889 l!4019)))))) (printList!1232 thiss!11007 (t!231786 (list!12507 (singletonSeq!2173 (h!38889 l!4019)))))))))

(declare-fun b!2835523 () Bool)

(assert (=> b!2835523 (= e!1795554 Nil!33467)))

(assert (= (and d!822893 c!458285) b!2835522))

(assert (= (and d!822893 (not c!458285)) b!2835523))

(declare-fun m!3265517 () Bool)

(assert (=> b!2835522 m!3265517))

(assert (=> b!2835522 m!3265517))

(declare-fun m!3265519 () Bool)

(assert (=> b!2835522 m!3265519))

(declare-fun m!3265521 () Bool)

(assert (=> b!2835522 m!3265521))

(assert (=> b!2835522 m!3265519))

(assert (=> b!2835522 m!3265521))

(declare-fun m!3265523 () Bool)

(assert (=> b!2835522 m!3265523))

(assert (=> d!822553 d!822893))

(assert (=> d!822553 d!822549))

(declare-fun d!822897 () Bool)

(declare-fun lt!1011240 () BalanceConc!20436)

(assert (=> d!822897 (= (list!12508 lt!1011240) (printListTailRec!530 thiss!11007 (dropList!1008 (singletonSeq!2173 (h!38889 l!4019)) 0) (list!12508 (BalanceConc!20437 Empty!10399))))))

(declare-fun e!1795556 () BalanceConc!20436)

(assert (=> d!822897 (= lt!1011240 e!1795556)))

(declare-fun c!458286 () Bool)

(assert (=> d!822897 (= c!458286 (>= 0 (size!26042 (singletonSeq!2173 (h!38889 l!4019)))))))

(declare-fun e!1795555 () Bool)

(assert (=> d!822897 e!1795555))

(declare-fun res!1180172 () Bool)

(assert (=> d!822897 (=> (not res!1180172) (not e!1795555))))

(assert (=> d!822897 (= res!1180172 (>= 0 0))))

(assert (=> d!822897 (= (printTailRec!1175 thiss!11007 (singletonSeq!2173 (h!38889 l!4019)) 0 (BalanceConc!20437 Empty!10399)) lt!1011240)))

(declare-fun b!2835524 () Bool)

(assert (=> b!2835524 (= e!1795555 (<= 0 (size!26042 (singletonSeq!2173 (h!38889 l!4019)))))))

(declare-fun b!2835525 () Bool)

(assert (=> b!2835525 (= e!1795556 (BalanceConc!20437 Empty!10399))))

(declare-fun b!2835526 () Bool)

(assert (=> b!2835526 (= e!1795556 (printTailRec!1175 thiss!11007 (singletonSeq!2173 (h!38889 l!4019)) (+ 0 1) (++!8108 (BalanceConc!20437 Empty!10399) (charsOf!3108 (apply!7817 (singletonSeq!2173 (h!38889 l!4019)) 0)))))))

(declare-fun lt!1011243 () List!33593)

(assert (=> b!2835526 (= lt!1011243 (list!12507 (singletonSeq!2173 (h!38889 l!4019))))))

(declare-fun lt!1011245 () Unit!47411)

(assert (=> b!2835526 (= lt!1011245 (lemmaDropApply!992 lt!1011243 0))))

(assert (=> b!2835526 (= (head!6245 (drop!1794 lt!1011243 0)) (apply!7820 lt!1011243 0))))

(declare-fun lt!1011244 () Unit!47411)

(assert (=> b!2835526 (= lt!1011244 lt!1011245)))

(declare-fun lt!1011242 () List!33593)

(assert (=> b!2835526 (= lt!1011242 (list!12507 (singletonSeq!2173 (h!38889 l!4019))))))

(declare-fun lt!1011241 () Unit!47411)

(assert (=> b!2835526 (= lt!1011241 (lemmaDropTail!880 lt!1011242 0))))

(assert (=> b!2835526 (= (tail!4470 (drop!1794 lt!1011242 0)) (drop!1794 lt!1011242 (+ 0 1)))))

(declare-fun lt!1011246 () Unit!47411)

(assert (=> b!2835526 (= lt!1011246 lt!1011241)))

(assert (= (and d!822897 res!1180172) b!2835524))

(assert (= (and d!822897 c!458286) b!2835525))

(assert (= (and d!822897 (not c!458286)) b!2835526))

(assert (=> d!822897 m!3264823))

(declare-fun m!3265529 () Bool)

(assert (=> d!822897 m!3265529))

(assert (=> d!822897 m!3264823))

(declare-fun m!3265531 () Bool)

(assert (=> d!822897 m!3265531))

(assert (=> d!822897 m!3264197))

(declare-fun m!3265533 () Bool)

(assert (=> d!822897 m!3265533))

(declare-fun m!3265535 () Bool)

(assert (=> d!822897 m!3265535))

(assert (=> d!822897 m!3264197))

(assert (=> d!822897 m!3265529))

(assert (=> b!2835524 m!3264197))

(assert (=> b!2835524 m!3265533))

(declare-fun m!3265537 () Bool)

(assert (=> b!2835526 m!3265537))

(declare-fun m!3265539 () Bool)

(assert (=> b!2835526 m!3265539))

(assert (=> b!2835526 m!3264197))

(assert (=> b!2835526 m!3264201))

(declare-fun m!3265541 () Bool)

(assert (=> b!2835526 m!3265541))

(declare-fun m!3265543 () Bool)

(assert (=> b!2835526 m!3265543))

(assert (=> b!2835526 m!3264197))

(declare-fun m!3265545 () Bool)

(assert (=> b!2835526 m!3265545))

(assert (=> b!2835526 m!3264197))

(assert (=> b!2835526 m!3265543))

(declare-fun m!3265547 () Bool)

(assert (=> b!2835526 m!3265547))

(declare-fun m!3265549 () Bool)

(assert (=> b!2835526 m!3265549))

(assert (=> b!2835526 m!3265537))

(declare-fun m!3265551 () Bool)

(assert (=> b!2835526 m!3265551))

(assert (=> b!2835526 m!3265545))

(assert (=> b!2835526 m!3265541))

(declare-fun m!3265553 () Bool)

(assert (=> b!2835526 m!3265553))

(declare-fun m!3265555 () Bool)

(assert (=> b!2835526 m!3265555))

(declare-fun m!3265557 () Bool)

(assert (=> b!2835526 m!3265557))

(assert (=> b!2835526 m!3265553))

(declare-fun m!3265559 () Bool)

(assert (=> b!2835526 m!3265559))

(assert (=> d!822553 d!822897))

(declare-fun bs!518720 () Bool)

(declare-fun d!822903 () Bool)

(assert (= bs!518720 (and d!822903 d!822511)))

(declare-fun lambda!104149 () Int)

(assert (=> bs!518720 (= (= (toValue!7060 (transformation!5022 (h!38888 (t!231785 rules!1047)))) (toValue!7060 (transformation!5022 (h!38888 rules!1047)))) (= lambda!104149 lambda!104121))))

(declare-fun bs!518721 () Bool)

(assert (= bs!518721 (and d!822903 d!822611)))

(assert (=> bs!518721 (= (= (toValue!7060 (transformation!5022 (h!38888 (t!231785 rules!1047)))) (toValue!7060 (transformation!5022 (rule!7450 (h!38889 l!4019))))) (= lambda!104149 lambda!104130))))

(declare-fun bs!518722 () Bool)

(assert (= bs!518722 (and d!822903 d!822689)))

(assert (=> bs!518722 (= (= (toValue!7060 (transformation!5022 (h!38888 (t!231785 rules!1047)))) (toValue!7060 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019)))))) (= lambda!104149 lambda!104142))))

(assert (=> d!822903 true))

(assert (=> d!822903 (< (dynLambda!14072 order!17867 (toValue!7060 (transformation!5022 (h!38888 (t!231785 rules!1047))))) (dynLambda!14078 order!17873 lambda!104149))))

(assert (=> d!822903 (= (equivClasses!1988 (toChars!6919 (transformation!5022 (h!38888 (t!231785 rules!1047)))) (toValue!7060 (transformation!5022 (h!38888 (t!231785 rules!1047))))) (Forall2!840 lambda!104149))))

(declare-fun bs!518723 () Bool)

(assert (= bs!518723 d!822903))

(declare-fun m!3265561 () Bool)

(assert (=> bs!518723 m!3265561))

(assert (=> b!2834932 d!822903))

(declare-fun d!822905 () Bool)

(assert (=> d!822905 (= (list!12507 (_1!19880 lt!1010869)) (list!12512 (c!458143 (_1!19880 lt!1010869))))))

(declare-fun bs!518724 () Bool)

(assert (= bs!518724 d!822905))

(declare-fun m!3265567 () Bool)

(assert (=> bs!518724 m!3265567))

(assert (=> b!2834913 d!822905))

(assert (=> b!2834913 d!822811))

(assert (=> b!2834913 d!822813))

(declare-fun d!822909 () Bool)

(declare-fun lt!1011251 () Int)

(assert (=> d!822909 (>= lt!1011251 0)))

(declare-fun e!1795564 () Int)

(assert (=> d!822909 (= lt!1011251 e!1795564)))

(declare-fun c!458289 () Bool)

(assert (=> d!822909 (= c!458289 ((_ is Nil!33469) (list!12507 (_1!19880 lt!1010805))))))

(assert (=> d!822909 (= (size!26046 (list!12507 (_1!19880 lt!1010805))) lt!1011251)))

(declare-fun b!2835539 () Bool)

(assert (=> b!2835539 (= e!1795564 0)))

(declare-fun b!2835540 () Bool)

(assert (=> b!2835540 (= e!1795564 (+ 1 (size!26046 (t!231786 (list!12507 (_1!19880 lt!1010805))))))))

(assert (= (and d!822909 c!458289) b!2835539))

(assert (= (and d!822909 (not c!458289)) b!2835540))

(declare-fun m!3265579 () Bool)

(assert (=> b!2835540 m!3265579))

(assert (=> d!822575 d!822909))

(declare-fun d!822917 () Bool)

(assert (=> d!822917 (= (list!12507 (_1!19880 lt!1010805)) (list!12512 (c!458143 (_1!19880 lt!1010805))))))

(declare-fun bs!518730 () Bool)

(assert (= bs!518730 d!822917))

(declare-fun m!3265583 () Bool)

(assert (=> bs!518730 m!3265583))

(assert (=> d!822575 d!822917))

(declare-fun d!822921 () Bool)

(declare-fun lt!1011254 () Int)

(assert (=> d!822921 (= lt!1011254 (size!26046 (list!12512 (c!458143 (_1!19880 lt!1010805)))))))

(assert (=> d!822921 (= lt!1011254 (ite ((_ is Empty!10400) (c!458143 (_1!19880 lt!1010805))) 0 (ite ((_ is Leaf!15819) (c!458143 (_1!19880 lt!1010805))) (csize!21031 (c!458143 (_1!19880 lt!1010805))) (csize!21030 (c!458143 (_1!19880 lt!1010805))))))))

(assert (=> d!822921 (= (size!26047 (c!458143 (_1!19880 lt!1010805))) lt!1011254)))

(declare-fun bs!518731 () Bool)

(assert (= bs!518731 d!822921))

(assert (=> bs!518731 m!3265583))

(assert (=> bs!518731 m!3265583))

(declare-fun m!3265585 () Bool)

(assert (=> bs!518731 m!3265585))

(assert (=> d!822575 d!822921))

(declare-fun b!2835544 () Bool)

(declare-fun e!1795566 () List!33591)

(assert (=> b!2835544 (= e!1795566 (++!8107 (list!12511 (left!25253 (c!458142 lt!1010809))) (list!12511 (right!25583 (c!458142 lt!1010809)))))))

(declare-fun b!2835542 () Bool)

(declare-fun e!1795565 () List!33591)

(assert (=> b!2835542 (= e!1795565 e!1795566)))

(declare-fun c!458291 () Bool)

(assert (=> b!2835542 (= c!458291 ((_ is Leaf!15818) (c!458142 lt!1010809)))))

(declare-fun b!2835541 () Bool)

(assert (=> b!2835541 (= e!1795565 Nil!33467)))

(declare-fun d!822923 () Bool)

(declare-fun c!458290 () Bool)

(assert (=> d!822923 (= c!458290 ((_ is Empty!10399) (c!458142 lt!1010809)))))

(assert (=> d!822923 (= (list!12511 (c!458142 lt!1010809)) e!1795565)))

(declare-fun b!2835543 () Bool)

(assert (=> b!2835543 (= e!1795566 (list!12514 (xs!13511 (c!458142 lt!1010809))))))

(assert (= (and d!822923 c!458290) b!2835541))

(assert (= (and d!822923 (not c!458290)) b!2835542))

(assert (= (and b!2835542 c!458291) b!2835543))

(assert (= (and b!2835542 (not c!458291)) b!2835544))

(declare-fun m!3265587 () Bool)

(assert (=> b!2835544 m!3265587))

(declare-fun m!3265589 () Bool)

(assert (=> b!2835544 m!3265589))

(assert (=> b!2835544 m!3265587))

(assert (=> b!2835544 m!3265589))

(declare-fun m!3265591 () Bool)

(assert (=> b!2835544 m!3265591))

(declare-fun m!3265593 () Bool)

(assert (=> b!2835543 m!3265593))

(assert (=> d!822489 d!822923))

(declare-fun d!822925 () Bool)

(assert (=> d!822925 (= (list!12507 lt!1010851) (list!12512 (c!458143 lt!1010851)))))

(declare-fun bs!518732 () Bool)

(assert (= bs!518732 d!822925))

(declare-fun m!3265595 () Bool)

(assert (=> bs!518732 m!3265595))

(assert (=> d!822509 d!822925))

(declare-fun d!822927 () Bool)

(declare-fun e!1795571 () Bool)

(assert (=> d!822927 e!1795571))

(declare-fun res!1180187 () Bool)

(assert (=> d!822927 (=> (not res!1180187) (not e!1795571))))

(declare-fun lt!1011255 () BalanceConc!20438)

(assert (=> d!822927 (= res!1180187 (= (list!12507 lt!1011255) (Cons!33469 (h!38889 (t!231786 l!4019)) Nil!33469)))))

(assert (=> d!822927 (= lt!1011255 (choose!16730 (h!38889 (t!231786 l!4019))))))

(assert (=> d!822927 (= (singleton!954 (h!38889 (t!231786 l!4019))) lt!1011255)))

(declare-fun b!2835549 () Bool)

(assert (=> b!2835549 (= e!1795571 (isBalanced!3138 (c!458143 lt!1011255)))))

(assert (= (and d!822927 res!1180187) b!2835549))

(declare-fun m!3265597 () Bool)

(assert (=> d!822927 m!3265597))

(declare-fun m!3265599 () Bool)

(assert (=> d!822927 m!3265599))

(declare-fun m!3265601 () Bool)

(assert (=> b!2835549 m!3265601))

(assert (=> d!822509 d!822927))

(declare-fun bs!518733 () Bool)

(declare-fun d!822929 () Bool)

(assert (= bs!518733 (and d!822929 d!822577)))

(declare-fun lambda!104151 () Int)

(assert (=> bs!518733 (= (and (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (toChars!6919 (transformation!5022 (h!38888 rules!1047)))) (= (toValue!7060 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (toValue!7060 (transformation!5022 (h!38888 rules!1047))))) (= lambda!104151 lambda!104128))))

(declare-fun bs!518734 () Bool)

(assert (= bs!518734 (and d!822929 d!822581)))

(assert (=> bs!518734 (= (and (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019))))) (= (toValue!7060 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (toValue!7060 (transformation!5022 (rule!7450 (h!38889 l!4019)))))) (= lambda!104151 lambda!104129))))

(declare-fun bs!518735 () Bool)

(assert (= bs!518735 (and d!822929 d!822799)))

(assert (=> bs!518735 (= (and (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (toChars!6919 (transformation!5022 (h!38888 (t!231785 rules!1047))))) (= (toValue!7060 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (toValue!7060 (transformation!5022 (h!38888 (t!231785 rules!1047)))))) (= lambda!104151 lambda!104148))))

(assert (=> d!822929 true))

(assert (=> d!822929 (< (dynLambda!14074 order!17871 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019)))))) (dynLambda!14081 order!17877 lambda!104151))))

(assert (=> d!822929 true))

(assert (=> d!822929 (< (dynLambda!14072 order!17867 (toValue!7060 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019)))))) (dynLambda!14081 order!17877 lambda!104151))))

(assert (=> d!822929 (= (semiInverseModEq!2089 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (toValue!7060 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019)))))) (Forall!1244 lambda!104151))))

(declare-fun bs!518736 () Bool)

(assert (= bs!518736 d!822929))

(declare-fun m!3265603 () Bool)

(assert (=> bs!518736 m!3265603))

(assert (=> d!822529 d!822929))

(declare-fun b!2835584 () Bool)

(declare-fun e!1795583 () Bool)

(assert (=> b!2835584 (= e!1795583 (not (isEmpty!18458 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))))))))

(declare-fun b!2835586 () Bool)

(declare-fun res!1180217 () Bool)

(assert (=> b!2835586 (=> (not res!1180217) (not e!1795583))))

(assert (=> b!2835586 (= res!1180217 (not (isEmpty!18458 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))))))))

(declare-fun b!2835587 () Bool)

(declare-fun e!1795582 () Bool)

(assert (=> b!2835587 (= e!1795582 e!1795583)))

(declare-fun res!1180215 () Bool)

(assert (=> b!2835587 (=> (not res!1180215) (not e!1795583))))

(assert (=> b!2835587 (= res!1180215 (<= (- 1) (- (height!1511 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))) (height!1511 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))))))))

(declare-fun b!2835588 () Bool)

(declare-fun res!1180212 () Bool)

(assert (=> b!2835588 (=> (not res!1180212) (not e!1795583))))

(assert (=> b!2835588 (= res!1180212 (isBalanced!3140 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))))))

(declare-fun b!2835589 () Bool)

(declare-fun res!1180216 () Bool)

(assert (=> b!2835589 (=> (not res!1180216) (not e!1795583))))

(assert (=> b!2835589 (= res!1180216 (<= (- (height!1511 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))) (height!1511 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))))) 1))))

(declare-fun b!2835585 () Bool)

(declare-fun res!1180214 () Bool)

(assert (=> b!2835585 (=> (not res!1180214) (not e!1795583))))

(assert (=> b!2835585 (= res!1180214 (isBalanced!3140 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))))))

(declare-fun d!822931 () Bool)

(declare-fun res!1180213 () Bool)

(assert (=> d!822931 (=> res!1180213 e!1795582)))

(assert (=> d!822931 (= res!1180213 (not ((_ is Node!10399) (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))))))

(assert (=> d!822931 (= (isBalanced!3140 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))) e!1795582)))

(assert (= (and d!822931 (not res!1180213)) b!2835587))

(assert (= (and b!2835587 res!1180215) b!2835589))

(assert (= (and b!2835589 res!1180216) b!2835588))

(assert (= (and b!2835588 res!1180212) b!2835585))

(assert (= (and b!2835585 res!1180214) b!2835586))

(assert (= (and b!2835586 res!1180217) b!2835584))

(declare-fun m!3265629 () Bool)

(assert (=> b!2835584 m!3265629))

(assert (=> b!2835587 m!3265207))

(assert (=> b!2835587 m!3265209))

(declare-fun m!3265631 () Bool)

(assert (=> b!2835585 m!3265631))

(assert (=> b!2835589 m!3265207))

(assert (=> b!2835589 m!3265209))

(declare-fun m!3265633 () Bool)

(assert (=> b!2835586 m!3265633))

(declare-fun m!3265635 () Bool)

(assert (=> b!2835588 m!3265635))

(assert (=> d!822625 d!822931))

(declare-fun bs!518738 () Bool)

(declare-fun d!822941 () Bool)

(assert (= bs!518738 (and d!822941 d!822403)))

(declare-fun lambda!104152 () Int)

(assert (=> bs!518738 (= lambda!104152 lambda!104112)))

(declare-fun bs!518739 () Bool)

(assert (= bs!518739 (and d!822941 d!822457)))

(assert (=> bs!518739 (= lambda!104152 lambda!104115)))

(declare-fun bs!518740 () Bool)

(assert (= bs!518740 (and d!822941 d!822521)))

(assert (=> bs!518740 (= lambda!104152 lambda!104122)))

(declare-fun bs!518741 () Bool)

(assert (= bs!518741 (and d!822941 d!822629)))

(assert (=> bs!518741 (= lambda!104152 lambda!104131)))

(declare-fun b!2835594 () Bool)

(declare-fun e!1795588 () Bool)

(assert (=> b!2835594 (= e!1795588 true)))

(declare-fun b!2835593 () Bool)

(declare-fun e!1795587 () Bool)

(assert (=> b!2835593 (= e!1795587 e!1795588)))

(declare-fun b!2835592 () Bool)

(declare-fun e!1795586 () Bool)

(assert (=> b!2835592 (= e!1795586 e!1795587)))

(assert (=> d!822941 e!1795586))

(assert (= b!2835593 b!2835594))

(assert (= b!2835592 b!2835593))

(assert (= (and d!822941 ((_ is Cons!33468) rules!1047)) b!2835592))

(assert (=> b!2835594 (< (dynLambda!14072 order!17867 (toValue!7060 (transformation!5022 (h!38888 rules!1047)))) (dynLambda!14073 order!17869 lambda!104152))))

(assert (=> b!2835594 (< (dynLambda!14074 order!17871 (toChars!6919 (transformation!5022 (h!38888 rules!1047)))) (dynLambda!14073 order!17869 lambda!104152))))

(assert (=> d!822941 true))

(declare-fun lt!1011257 () Bool)

(assert (=> d!822941 (= lt!1011257 (forall!6886 (t!231786 (t!231786 l!4019)) lambda!104152))))

(declare-fun e!1795585 () Bool)

(assert (=> d!822941 (= lt!1011257 e!1795585)))

(declare-fun res!1180218 () Bool)

(assert (=> d!822941 (=> res!1180218 e!1795585)))

(assert (=> d!822941 (= res!1180218 (not ((_ is Cons!33469) (t!231786 (t!231786 l!4019)))))))

(assert (=> d!822941 (not (isEmpty!18451 rules!1047))))

(assert (=> d!822941 (= (rulesProduceEachTokenIndividuallyList!1655 thiss!11007 rules!1047 (t!231786 (t!231786 l!4019))) lt!1011257)))

(declare-fun b!2835590 () Bool)

(declare-fun e!1795584 () Bool)

(assert (=> b!2835590 (= e!1795585 e!1795584)))

(declare-fun res!1180219 () Bool)

(assert (=> b!2835590 (=> (not res!1180219) (not e!1795584))))

(assert (=> b!2835590 (= res!1180219 (rulesProduceIndividualToken!2142 thiss!11007 rules!1047 (h!38889 (t!231786 (t!231786 l!4019)))))))

(declare-fun b!2835591 () Bool)

(assert (=> b!2835591 (= e!1795584 (rulesProduceEachTokenIndividuallyList!1655 thiss!11007 rules!1047 (t!231786 (t!231786 (t!231786 l!4019)))))))

(assert (= (and d!822941 (not res!1180218)) b!2835590))

(assert (= (and b!2835590 res!1180219) b!2835591))

(declare-fun m!3265637 () Bool)

(assert (=> d!822941 m!3265637))

(assert (=> d!822941 m!3264037))

(declare-fun m!3265639 () Bool)

(assert (=> b!2835590 m!3265639))

(declare-fun m!3265641 () Bool)

(assert (=> b!2835591 m!3265641))

(assert (=> b!2834962 d!822941))

(assert (=> d!822679 d!822451))

(declare-fun b!2835595 () Bool)

(declare-fun e!1795589 () List!33593)

(assert (=> b!2835595 (= e!1795589 Nil!33469)))

(declare-fun d!822943 () Bool)

(declare-fun c!458296 () Bool)

(assert (=> d!822943 (= c!458296 ((_ is Empty!10400) (c!458143 (singletonSeq!2173 (h!38889 l!4019)))))))

(assert (=> d!822943 (= (list!12512 (c!458143 (singletonSeq!2173 (h!38889 l!4019)))) e!1795589)))

(declare-fun b!2835598 () Bool)

(declare-fun e!1795590 () List!33593)

(assert (=> b!2835598 (= e!1795590 (++!8110 (list!12512 (left!25254 (c!458143 (singletonSeq!2173 (h!38889 l!4019))))) (list!12512 (right!25584 (c!458143 (singletonSeq!2173 (h!38889 l!4019)))))))))

(declare-fun b!2835596 () Bool)

(assert (=> b!2835596 (= e!1795589 e!1795590)))

(declare-fun c!458297 () Bool)

(assert (=> b!2835596 (= c!458297 ((_ is Leaf!15819) (c!458143 (singletonSeq!2173 (h!38889 l!4019)))))))

(declare-fun b!2835597 () Bool)

(assert (=> b!2835597 (= e!1795590 (list!12515 (xs!13512 (c!458143 (singletonSeq!2173 (h!38889 l!4019))))))))

(assert (= (and d!822943 c!458296) b!2835595))

(assert (= (and d!822943 (not c!458296)) b!2835596))

(assert (= (and b!2835596 c!458297) b!2835597))

(assert (= (and b!2835596 (not c!458297)) b!2835598))

(declare-fun m!3265643 () Bool)

(assert (=> b!2835598 m!3265643))

(declare-fun m!3265645 () Bool)

(assert (=> b!2835598 m!3265645))

(assert (=> b!2835598 m!3265643))

(assert (=> b!2835598 m!3265645))

(declare-fun m!3265647 () Bool)

(assert (=> b!2835598 m!3265647))

(declare-fun m!3265649 () Bool)

(assert (=> b!2835597 m!3265649))

(assert (=> d!822549 d!822943))

(declare-fun b!2835602 () Bool)

(declare-fun e!1795592 () List!33591)

(assert (=> b!2835602 (= e!1795592 (++!8107 (list!12511 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))) (list!12511 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))))))

(declare-fun b!2835600 () Bool)

(declare-fun e!1795591 () List!33591)

(assert (=> b!2835600 (= e!1795591 e!1795592)))

(declare-fun c!458299 () Bool)

(assert (=> b!2835600 (= c!458299 ((_ is Leaf!15818) (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))))

(declare-fun b!2835599 () Bool)

(assert (=> b!2835599 (= e!1795591 Nil!33467)))

(declare-fun d!822945 () Bool)

(declare-fun c!458298 () Bool)

(assert (=> d!822945 (= c!458298 ((_ is Empty!10399) (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))))

(assert (=> d!822945 (= (list!12511 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))) e!1795591)))

(declare-fun b!2835601 () Bool)

(assert (=> b!2835601 (= e!1795592 (list!12514 (xs!13511 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))))))

(assert (= (and d!822945 c!458298) b!2835599))

(assert (= (and d!822945 (not c!458298)) b!2835600))

(assert (= (and b!2835600 c!458299) b!2835601))

(assert (= (and b!2835600 (not c!458299)) b!2835602))

(declare-fun m!3265651 () Bool)

(assert (=> b!2835602 m!3265651))

(declare-fun m!3265653 () Bool)

(assert (=> b!2835602 m!3265653))

(assert (=> b!2835602 m!3265651))

(assert (=> b!2835602 m!3265653))

(declare-fun m!3265655 () Bool)

(assert (=> b!2835602 m!3265655))

(declare-fun m!3265657 () Bool)

(assert (=> b!2835601 m!3265657))

(assert (=> d!822513 d!822945))

(declare-fun d!822947 () Bool)

(declare-fun lt!1011260 () Bool)

(assert (=> d!822947 (= lt!1011260 (isEmpty!18460 (list!12507 (_1!19880 lt!1010845))))))

(assert (=> d!822947 (= lt!1011260 (isEmpty!18463 (c!458143 (_1!19880 lt!1010845))))))

(assert (=> d!822947 (= (isEmpty!18459 (_1!19880 lt!1010845)) lt!1011260)))

(declare-fun bs!518742 () Bool)

(assert (= bs!518742 d!822947))

(assert (=> bs!518742 m!3264365))

(assert (=> bs!518742 m!3264365))

(declare-fun m!3265659 () Bool)

(assert (=> bs!518742 m!3265659))

(declare-fun m!3265661 () Bool)

(assert (=> bs!518742 m!3265661))

(assert (=> b!2834861 d!822947))

(declare-fun b!2835603 () Bool)

(declare-fun e!1795593 () List!33593)

(assert (=> b!2835603 (= e!1795593 Nil!33469)))

(declare-fun c!458300 () Bool)

(declare-fun d!822949 () Bool)

(assert (=> d!822949 (= c!458300 ((_ is Empty!10400) (c!458143 (_1!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))))))))))

(assert (=> d!822949 (= (list!12512 (c!458143 (_1!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))))))) e!1795593)))

(declare-fun e!1795594 () List!33593)

(declare-fun b!2835606 () Bool)

(assert (=> b!2835606 (= e!1795594 (++!8110 (list!12512 (left!25254 (c!458143 (_1!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019)))))))) (list!12512 (right!25584 (c!458143 (_1!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))))))))))))

(declare-fun b!2835604 () Bool)

(assert (=> b!2835604 (= e!1795593 e!1795594)))

(declare-fun c!458301 () Bool)

(assert (=> b!2835604 (= c!458301 ((_ is Leaf!15819) (c!458143 (_1!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))))))))))

(declare-fun b!2835605 () Bool)

(assert (=> b!2835605 (= e!1795594 (list!12515 (xs!13512 (c!458143 (_1!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019)))))))))))

(assert (= (and d!822949 c!458300) b!2835603))

(assert (= (and d!822949 (not c!458300)) b!2835604))

(assert (= (and b!2835604 c!458301) b!2835605))

(assert (= (and b!2835604 (not c!458301)) b!2835606))

(declare-fun m!3265663 () Bool)

(assert (=> b!2835606 m!3265663))

(declare-fun m!3265665 () Bool)

(assert (=> b!2835606 m!3265665))

(assert (=> b!2835606 m!3265663))

(assert (=> b!2835606 m!3265665))

(declare-fun m!3265667 () Bool)

(assert (=> b!2835606 m!3265667))

(declare-fun m!3265669 () Bool)

(assert (=> b!2835605 m!3265669))

(assert (=> d!822557 d!822949))

(declare-fun d!822951 () Bool)

(declare-fun lt!1011261 () Int)

(assert (=> d!822951 (>= lt!1011261 0)))

(declare-fun e!1795595 () Int)

(assert (=> d!822951 (= lt!1011261 e!1795595)))

(declare-fun c!458302 () Bool)

(assert (=> d!822951 (= c!458302 ((_ is Nil!33467) (t!231784 (list!12508 (charsOf!3108 (h!38889 (t!231786 l!4019)))))))))

(assert (=> d!822951 (= (size!26041 (t!231784 (list!12508 (charsOf!3108 (h!38889 (t!231786 l!4019)))))) lt!1011261)))

(declare-fun b!2835607 () Bool)

(assert (=> b!2835607 (= e!1795595 0)))

(declare-fun b!2835608 () Bool)

(assert (=> b!2835608 (= e!1795595 (+ 1 (size!26041 (t!231784 (t!231784 (list!12508 (charsOf!3108 (h!38889 (t!231786 l!4019)))))))))))

(assert (= (and d!822951 c!458302) b!2835607))

(assert (= (and d!822951 (not c!458302)) b!2835608))

(declare-fun m!3265671 () Bool)

(assert (=> b!2835608 m!3265671))

(assert (=> b!2834902 d!822951))

(declare-fun d!822953 () Bool)

(declare-fun res!1180220 () Bool)

(declare-fun e!1795596 () Bool)

(assert (=> d!822953 (=> (not res!1180220) (not e!1795596))))

(assert (=> d!822953 (= res!1180220 (<= (size!26041 (list!12514 (xs!13511 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))) 512))))

(assert (=> d!822953 (= (inv!45440 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))) e!1795596)))

(declare-fun b!2835609 () Bool)

(declare-fun res!1180221 () Bool)

(assert (=> b!2835609 (=> (not res!1180221) (not e!1795596))))

(assert (=> b!2835609 (= res!1180221 (= (csize!21029 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))) (size!26041 (list!12514 (xs!13511 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))))))))

(declare-fun b!2835610 () Bool)

(assert (=> b!2835610 (= e!1795596 (and (> (csize!21029 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))) 0) (<= (csize!21029 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))) 512)))))

(assert (= (and d!822953 res!1180220) b!2835609))

(assert (= (and b!2835609 res!1180221) b!2835610))

(assert (=> d!822953 m!3265657))

(assert (=> d!822953 m!3265657))

(declare-fun m!3265673 () Bool)

(assert (=> d!822953 m!3265673))

(assert (=> b!2835609 m!3265657))

(assert (=> b!2835609 m!3265657))

(assert (=> b!2835609 m!3265673))

(assert (=> b!2834895 d!822953))

(declare-fun d!822955 () Bool)

(assert (=> d!822955 (= (isEmpty!18454 (list!12508 (_2!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))))))) ((_ is Nil!33467) (list!12508 (_2!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))))))))))

(assert (=> d!822683 d!822955))

(declare-fun d!822957 () Bool)

(assert (=> d!822957 (= (list!12508 (_2!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019)))))) (list!12511 (c!458142 (_2!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))))))))))

(declare-fun bs!518743 () Bool)

(assert (= bs!518743 d!822957))

(declare-fun m!3265675 () Bool)

(assert (=> bs!518743 m!3265675))

(assert (=> d!822683 d!822957))

(declare-fun d!822959 () Bool)

(declare-fun lt!1011264 () Bool)

(assert (=> d!822959 (= lt!1011264 (isEmpty!18454 (list!12511 (c!458142 (_2!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019)))))))))))

(assert (=> d!822959 (= lt!1011264 (= (size!26043 (c!458142 (_2!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))))))) 0))))

(assert (=> d!822959 (= (isEmpty!18458 (c!458142 (_2!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 l!4019))))))) lt!1011264)))

(declare-fun bs!518744 () Bool)

(assert (= bs!518744 d!822959))

(assert (=> bs!518744 m!3265675))

(assert (=> bs!518744 m!3265675))

(declare-fun m!3265677 () Bool)

(assert (=> bs!518744 m!3265677))

(declare-fun m!3265679 () Bool)

(assert (=> bs!518744 m!3265679))

(assert (=> d!822683 d!822959))

(declare-fun d!822961 () Bool)

(assert (=> d!822961 (= (isEmpty!18454 (list!12508 (_2!19880 lt!1010805))) ((_ is Nil!33467) (list!12508 (_2!19880 lt!1010805))))))

(assert (=> d!822519 d!822961))

(declare-fun d!822963 () Bool)

(assert (=> d!822963 (= (list!12508 (_2!19880 lt!1010805)) (list!12511 (c!458142 (_2!19880 lt!1010805))))))

(declare-fun bs!518745 () Bool)

(assert (= bs!518745 d!822963))

(declare-fun m!3265681 () Bool)

(assert (=> bs!518745 m!3265681))

(assert (=> d!822519 d!822963))

(declare-fun d!822965 () Bool)

(declare-fun lt!1011265 () Bool)

(assert (=> d!822965 (= lt!1011265 (isEmpty!18454 (list!12511 (c!458142 (_2!19880 lt!1010805)))))))

(assert (=> d!822965 (= lt!1011265 (= (size!26043 (c!458142 (_2!19880 lt!1010805))) 0))))

(assert (=> d!822965 (= (isEmpty!18458 (c!458142 (_2!19880 lt!1010805))) lt!1011265)))

(declare-fun bs!518746 () Bool)

(assert (= bs!518746 d!822965))

(assert (=> bs!518746 m!3265681))

(assert (=> bs!518746 m!3265681))

(declare-fun m!3265683 () Bool)

(assert (=> bs!518746 m!3265683))

(declare-fun m!3265685 () Bool)

(assert (=> bs!518746 m!3265685))

(assert (=> d!822519 d!822965))

(declare-fun d!822967 () Bool)

(declare-fun lt!1011266 () Bool)

(assert (=> d!822967 (= lt!1011266 (isEmpty!18460 (list!12507 (_1!19880 lt!1010869))))))

(assert (=> d!822967 (= lt!1011266 (isEmpty!18463 (c!458143 (_1!19880 lt!1010869))))))

(assert (=> d!822967 (= (isEmpty!18459 (_1!19880 lt!1010869)) lt!1011266)))

(declare-fun bs!518747 () Bool)

(assert (= bs!518747 d!822967))

(assert (=> bs!518747 m!3264477))

(assert (=> bs!518747 m!3264477))

(declare-fun m!3265687 () Bool)

(assert (=> bs!518747 m!3265687))

(declare-fun m!3265689 () Bool)

(assert (=> bs!518747 m!3265689))

(assert (=> b!2834910 d!822967))

(declare-fun d!822969 () Bool)

(assert (=> d!822969 (= (isEmpty!18454 (list!12508 (_2!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))) ((_ is Nil!33467) (list!12508 (_2!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))))))

(assert (=> d!822493 d!822969))

(declare-fun d!822971 () Bool)

(assert (=> d!822971 (= (list!12508 (_2!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))) (list!12511 (c!458142 (_2!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))))))

(declare-fun bs!518748 () Bool)

(assert (= bs!518748 d!822971))

(declare-fun m!3265691 () Bool)

(assert (=> bs!518748 m!3265691))

(assert (=> d!822493 d!822971))

(declare-fun lt!1011267 () Bool)

(declare-fun d!822973 () Bool)

(assert (=> d!822973 (= lt!1011267 (isEmpty!18454 (list!12511 (c!458142 (_2!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))))))))

(assert (=> d!822973 (= lt!1011267 (= (size!26043 (c!458142 (_2!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))) 0))))

(assert (=> d!822973 (= (isEmpty!18458 (c!458142 (_2!19880 (lex!2022 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))) lt!1011267)))

(declare-fun bs!518749 () Bool)

(assert (= bs!518749 d!822973))

(assert (=> bs!518749 m!3265691))

(assert (=> bs!518749 m!3265691))

(declare-fun m!3265693 () Bool)

(assert (=> bs!518749 m!3265693))

(declare-fun m!3265695 () Bool)

(assert (=> bs!518749 m!3265695))

(assert (=> d!822493 d!822973))

(declare-fun d!822975 () Bool)

(declare-fun lt!1011270 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4638 (List!33595) (InoxSet String!36782))

(assert (=> d!822975 (= lt!1011270 (select (content!4638 Nil!33471) (tag!5526 (h!38888 rules!1047))))))

(declare-fun e!1795602 () Bool)

(assert (=> d!822975 (= lt!1011270 e!1795602)))

(declare-fun res!1180226 () Bool)

(assert (=> d!822975 (=> (not res!1180226) (not e!1795602))))

(assert (=> d!822975 (= res!1180226 ((_ is Cons!33471) Nil!33471))))

(assert (=> d!822975 (= (contains!6108 Nil!33471 (tag!5526 (h!38888 rules!1047))) lt!1011270)))

(declare-fun b!2835615 () Bool)

(declare-fun e!1795601 () Bool)

(assert (=> b!2835615 (= e!1795602 e!1795601)))

(declare-fun res!1180227 () Bool)

(assert (=> b!2835615 (=> res!1180227 e!1795601)))

(assert (=> b!2835615 (= res!1180227 (= (h!38891 Nil!33471) (tag!5526 (h!38888 rules!1047))))))

(declare-fun b!2835616 () Bool)

(assert (=> b!2835616 (= e!1795601 (contains!6108 (t!231836 Nil!33471) (tag!5526 (h!38888 rules!1047))))))

(assert (= (and d!822975 res!1180226) b!2835615))

(assert (= (and b!2835615 (not res!1180227)) b!2835616))

(declare-fun m!3265697 () Bool)

(assert (=> d!822975 m!3265697))

(declare-fun m!3265699 () Bool)

(assert (=> d!822975 m!3265699))

(declare-fun m!3265701 () Bool)

(assert (=> b!2835616 m!3265701))

(assert (=> b!2834953 d!822975))

(declare-fun d!822977 () Bool)

(declare-fun lt!1011271 () Int)

(assert (=> d!822977 (>= lt!1011271 0)))

(declare-fun e!1795603 () Int)

(assert (=> d!822977 (= lt!1011271 e!1795603)))

(declare-fun c!458303 () Bool)

(assert (=> d!822977 (= c!458303 ((_ is Nil!33467) (originalCharacters!5754 (h!38889 (t!231786 l!4019)))))))

(assert (=> d!822977 (= (size!26041 (originalCharacters!5754 (h!38889 (t!231786 l!4019)))) lt!1011271)))

(declare-fun b!2835617 () Bool)

(assert (=> b!2835617 (= e!1795603 0)))

(declare-fun b!2835618 () Bool)

(assert (=> b!2835618 (= e!1795603 (+ 1 (size!26041 (t!231784 (originalCharacters!5754 (h!38889 (t!231786 l!4019)))))))))

(assert (= (and d!822977 c!458303) b!2835617))

(assert (= (and d!822977 (not c!458303)) b!2835618))

(declare-fun m!3265703 () Bool)

(assert (=> b!2835618 m!3265703))

(assert (=> b!2834886 d!822977))

(declare-fun b!2835619 () Bool)

(declare-fun e!1795605 () Bool)

(assert (=> b!2835619 (= e!1795605 (not (isEmpty!18458 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))))))

(declare-fun b!2835621 () Bool)

(declare-fun res!1180233 () Bool)

(assert (=> b!2835621 (=> (not res!1180233) (not e!1795605))))

(assert (=> b!2835621 (= res!1180233 (not (isEmpty!18458 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))))))

(declare-fun b!2835622 () Bool)

(declare-fun e!1795604 () Bool)

(assert (=> b!2835622 (= e!1795604 e!1795605)))

(declare-fun res!1180231 () Bool)

(assert (=> b!2835622 (=> (not res!1180231) (not e!1795605))))

(assert (=> b!2835622 (= res!1180231 (<= (- 1) (- (height!1511 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))) (height!1511 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))))))))

(declare-fun b!2835623 () Bool)

(declare-fun res!1180228 () Bool)

(assert (=> b!2835623 (=> (not res!1180228) (not e!1795605))))

(assert (=> b!2835623 (= res!1180228 (isBalanced!3140 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))))))

(declare-fun b!2835624 () Bool)

(declare-fun res!1180232 () Bool)

(assert (=> b!2835624 (=> (not res!1180232) (not e!1795605))))

(assert (=> b!2835624 (= res!1180232 (<= (- (height!1511 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))) (height!1511 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))) 1))))

(declare-fun b!2835620 () Bool)

(declare-fun res!1180230 () Bool)

(assert (=> b!2835620 (=> (not res!1180230) (not e!1795605))))

(assert (=> b!2835620 (= res!1180230 (isBalanced!3140 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))))))

(declare-fun d!822979 () Bool)

(declare-fun res!1180229 () Bool)

(assert (=> d!822979 (=> res!1180229 e!1795604)))

(assert (=> d!822979 (= res!1180229 (not ((_ is Node!10399) (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))))))

(assert (=> d!822979 (= (isBalanced!3140 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))) e!1795604)))

(assert (= (and d!822979 (not res!1180229)) b!2835622))

(assert (= (and b!2835622 res!1180231) b!2835624))

(assert (= (and b!2835624 res!1180232) b!2835623))

(assert (= (and b!2835623 res!1180228) b!2835620))

(assert (= (and b!2835620 res!1180230) b!2835621))

(assert (= (and b!2835621 res!1180233) b!2835619))

(declare-fun m!3265705 () Bool)

(assert (=> b!2835619 m!3265705))

(declare-fun m!3265707 () Bool)

(assert (=> b!2835622 m!3265707))

(declare-fun m!3265709 () Bool)

(assert (=> b!2835622 m!3265709))

(declare-fun m!3265711 () Bool)

(assert (=> b!2835620 m!3265711))

(assert (=> b!2835624 m!3265707))

(assert (=> b!2835624 m!3265709))

(declare-fun m!3265713 () Bool)

(assert (=> b!2835621 m!3265713))

(declare-fun m!3265715 () Bool)

(assert (=> b!2835623 m!3265715))

(assert (=> d!822633 d!822979))

(declare-fun b!2835625 () Bool)

(declare-fun e!1795606 () List!33593)

(assert (=> b!2835625 (= e!1795606 Nil!33469)))

(declare-fun d!822981 () Bool)

(declare-fun c!458304 () Bool)

(assert (=> d!822981 (= c!458304 ((_ is Empty!10400) (c!458143 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))))

(assert (=> d!822981 (= (list!12512 (c!458143 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))) e!1795606)))

(declare-fun b!2835628 () Bool)

(declare-fun e!1795607 () List!33593)

(assert (=> b!2835628 (= e!1795607 (++!8110 (list!12512 (left!25254 (c!458143 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))) (list!12512 (right!25584 (c!458143 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))))))

(declare-fun b!2835626 () Bool)

(assert (=> b!2835626 (= e!1795606 e!1795607)))

(declare-fun c!458305 () Bool)

(assert (=> b!2835626 (= c!458305 ((_ is Leaf!15819) (c!458143 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))))

(declare-fun b!2835627 () Bool)

(assert (=> b!2835627 (= e!1795607 (list!12515 (xs!13512 (c!458143 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))))

(assert (= (and d!822981 c!458304) b!2835625))

(assert (= (and d!822981 (not c!458304)) b!2835626))

(assert (= (and b!2835626 c!458305) b!2835627))

(assert (= (and b!2835626 (not c!458305)) b!2835628))

(declare-fun m!3265717 () Bool)

(assert (=> b!2835628 m!3265717))

(declare-fun m!3265719 () Bool)

(assert (=> b!2835628 m!3265719))

(assert (=> b!2835628 m!3265717))

(assert (=> b!2835628 m!3265719))

(declare-fun m!3265721 () Bool)

(assert (=> b!2835628 m!3265721))

(declare-fun m!3265723 () Bool)

(assert (=> b!2835627 m!3265723))

(assert (=> d!822573 d!822981))

(declare-fun d!822983 () Bool)

(declare-fun lt!1011272 () Int)

(assert (=> d!822983 (= lt!1011272 (size!26046 (list!12507 (_1!19880 lt!1010845))))))

(assert (=> d!822983 (= lt!1011272 (size!26047 (c!458143 (_1!19880 lt!1010845))))))

(assert (=> d!822983 (= (size!26042 (_1!19880 lt!1010845)) lt!1011272)))

(declare-fun bs!518750 () Bool)

(assert (= bs!518750 d!822983))

(assert (=> bs!518750 m!3264365))

(assert (=> bs!518750 m!3264365))

(declare-fun m!3265725 () Bool)

(assert (=> bs!518750 m!3265725))

(declare-fun m!3265727 () Bool)

(assert (=> bs!518750 m!3265727))

(assert (=> d!822495 d!822983))

(declare-fun d!822985 () Bool)

(declare-fun e!1795608 () Bool)

(assert (=> d!822985 e!1795608))

(declare-fun res!1180234 () Bool)

(assert (=> d!822985 (=> (not res!1180234) (not e!1795608))))

(declare-fun lt!1011281 () tuple2!33536)

(assert (=> d!822985 (= res!1180234 (= (list!12507 (_1!19880 lt!1011281)) (list!12507 (_1!19880 (lexRec!672 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))))))

(declare-fun e!1795610 () tuple2!33536)

(assert (=> d!822985 (= lt!1011281 e!1795610)))

(declare-fun c!458307 () Bool)

(declare-fun lt!1011285 () Option!6295)

(assert (=> d!822985 (= c!458307 ((_ is Some!6294) lt!1011285))))

(assert (=> d!822985 (= lt!1011285 (maxPrefixZipperSequenceV2!459 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))) (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))))

(declare-fun lt!1011276 () Unit!47411)

(declare-fun lt!1011300 () Unit!47411)

(assert (=> d!822985 (= lt!1011276 lt!1011300)))

(declare-fun lt!1011301 () List!33591)

(declare-fun lt!1011283 () List!33591)

(assert (=> d!822985 (isSuffix!834 lt!1011301 (++!8107 lt!1011283 lt!1011301))))

(assert (=> d!822985 (= lt!1011300 (lemmaConcatTwoListThenFSndIsSuffix!519 lt!1011283 lt!1011301))))

(assert (=> d!822985 (= lt!1011301 (list!12508 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))))

(assert (=> d!822985 (= lt!1011283 (list!12508 (BalanceConc!20437 Empty!10399)))))

(assert (=> d!822985 (= (lexTailRecV2!896 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))) (BalanceConc!20437 Empty!10399) (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))) (BalanceConc!20439 Empty!10400)) lt!1011281)))

(declare-fun b!2835629 () Bool)

(assert (=> b!2835629 (= e!1795608 (= (list!12508 (_2!19880 lt!1011281)) (list!12508 (_2!19880 (lexRec!672 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))))))))))

(declare-fun b!2835630 () Bool)

(declare-fun lt!1011298 () BalanceConc!20436)

(assert (=> b!2835630 (= e!1795610 (lexTailRecV2!896 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019)))) lt!1011298 (_2!19884 (v!34369 lt!1011285)) (append!852 (BalanceConc!20439 Empty!10400) (_1!19884 (v!34369 lt!1011285)))))))

(declare-fun lt!1011299 () tuple2!33536)

(assert (=> b!2835630 (= lt!1011299 (lexRec!672 thiss!11007 rules!1047 (_2!19884 (v!34369 lt!1011285))))))

(declare-fun lt!1011280 () List!33591)

(assert (=> b!2835630 (= lt!1011280 (list!12508 (BalanceConc!20437 Empty!10399)))))

(declare-fun lt!1011289 () List!33591)

(assert (=> b!2835630 (= lt!1011289 (list!12508 (charsOf!3108 (_1!19884 (v!34369 lt!1011285)))))))

(declare-fun lt!1011273 () List!33591)

(assert (=> b!2835630 (= lt!1011273 (list!12508 (_2!19884 (v!34369 lt!1011285))))))

(declare-fun lt!1011306 () Unit!47411)

(assert (=> b!2835630 (= lt!1011306 (lemmaConcatAssociativity!1683 lt!1011280 lt!1011289 lt!1011273))))

(assert (=> b!2835630 (= (++!8107 (++!8107 lt!1011280 lt!1011289) lt!1011273) (++!8107 lt!1011280 (++!8107 lt!1011289 lt!1011273)))))

(declare-fun lt!1011303 () Unit!47411)

(assert (=> b!2835630 (= lt!1011303 lt!1011306)))

(declare-fun lt!1011305 () Option!6295)

(assert (=> b!2835630 (= lt!1011305 (maxPrefixZipperSequence!1065 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))))

(declare-fun c!458306 () Bool)

(assert (=> b!2835630 (= c!458306 ((_ is Some!6294) lt!1011305))))

(declare-fun e!1795611 () tuple2!33536)

(assert (=> b!2835630 (= (lexRec!672 thiss!11007 rules!1047 (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))) e!1795611)))

(declare-fun lt!1011287 () Unit!47411)

(declare-fun Unit!47419 () Unit!47411)

(assert (=> b!2835630 (= lt!1011287 Unit!47419)))

(declare-fun lt!1011295 () List!33593)

(assert (=> b!2835630 (= lt!1011295 (list!12507 (BalanceConc!20439 Empty!10400)))))

(declare-fun lt!1011296 () List!33593)

(assert (=> b!2835630 (= lt!1011296 (Cons!33469 (_1!19884 (v!34369 lt!1011285)) Nil!33469))))

(declare-fun lt!1011302 () List!33593)

(assert (=> b!2835630 (= lt!1011302 (list!12507 (_1!19880 lt!1011299)))))

(declare-fun lt!1011286 () Unit!47411)

(assert (=> b!2835630 (= lt!1011286 (lemmaConcatAssociativity!1684 lt!1011295 lt!1011296 lt!1011302))))

(assert (=> b!2835630 (= (++!8110 (++!8110 lt!1011295 lt!1011296) lt!1011302) (++!8110 lt!1011295 (++!8110 lt!1011296 lt!1011302)))))

(declare-fun lt!1011277 () Unit!47411)

(assert (=> b!2835630 (= lt!1011277 lt!1011286)))

(declare-fun lt!1011288 () List!33591)

(assert (=> b!2835630 (= lt!1011288 (++!8107 (list!12508 (BalanceConc!20437 Empty!10399)) (list!12508 (charsOf!3108 (_1!19884 (v!34369 lt!1011285))))))))

(declare-fun lt!1011278 () List!33591)

(assert (=> b!2835630 (= lt!1011278 (list!12508 (_2!19884 (v!34369 lt!1011285))))))

(declare-fun lt!1011290 () List!33593)

(assert (=> b!2835630 (= lt!1011290 (list!12507 (append!852 (BalanceConc!20439 Empty!10400) (_1!19884 (v!34369 lt!1011285)))))))

(declare-fun lt!1011275 () Unit!47411)

(assert (=> b!2835630 (= lt!1011275 (lemmaLexThenLexPrefix!437 thiss!11007 rules!1047 lt!1011288 lt!1011278 lt!1011290 (list!12507 (_1!19880 lt!1011299)) (list!12508 (_2!19880 lt!1011299))))))

(assert (=> b!2835630 (= (lexList!1258 thiss!11007 rules!1047 lt!1011288) (tuple2!33541 lt!1011290 Nil!33467))))

(declare-fun lt!1011293 () Unit!47411)

(assert (=> b!2835630 (= lt!1011293 lt!1011275)))

(declare-fun lt!1011274 () BalanceConc!20436)

(assert (=> b!2835630 (= lt!1011274 (++!8108 (BalanceConc!20437 Empty!10399) (charsOf!3108 (_1!19884 (v!34369 lt!1011285)))))))

(declare-fun lt!1011292 () Option!6295)

(assert (=> b!2835630 (= lt!1011292 (maxPrefixZipperSequence!1065 thiss!11007 rules!1047 lt!1011274))))

(declare-fun c!458308 () Bool)

(assert (=> b!2835630 (= c!458308 ((_ is Some!6294) lt!1011292))))

(declare-fun e!1795609 () tuple2!33536)

(assert (=> b!2835630 (= (lexRec!672 thiss!11007 rules!1047 (++!8108 (BalanceConc!20437 Empty!10399) (charsOf!3108 (_1!19884 (v!34369 lt!1011285))))) e!1795609)))

(declare-fun lt!1011297 () Unit!47411)

(declare-fun Unit!47420 () Unit!47411)

(assert (=> b!2835630 (= lt!1011297 Unit!47420)))

(assert (=> b!2835630 (= lt!1011298 (++!8108 (BalanceConc!20437 Empty!10399) (charsOf!3108 (_1!19884 (v!34369 lt!1011285)))))))

(declare-fun lt!1011282 () List!33591)

(assert (=> b!2835630 (= lt!1011282 (list!12508 lt!1011298))))

(declare-fun lt!1011284 () List!33591)

(assert (=> b!2835630 (= lt!1011284 (list!12508 (_2!19884 (v!34369 lt!1011285))))))

(declare-fun lt!1011279 () Unit!47411)

(assert (=> b!2835630 (= lt!1011279 (lemmaConcatTwoListThenFSndIsSuffix!519 lt!1011282 lt!1011284))))

(assert (=> b!2835630 (isSuffix!834 lt!1011284 (++!8107 lt!1011282 lt!1011284))))

(declare-fun lt!1011294 () Unit!47411)

(assert (=> b!2835630 (= lt!1011294 lt!1011279)))

(declare-fun b!2835631 () Bool)

(assert (=> b!2835631 (= e!1795611 (tuple2!33537 (BalanceConc!20439 Empty!10400) (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))))

(declare-fun b!2835632 () Bool)

(assert (=> b!2835632 (= e!1795609 (tuple2!33537 (BalanceConc!20439 Empty!10400) lt!1011274))))

(declare-fun b!2835633 () Bool)

(assert (=> b!2835633 (= e!1795610 (tuple2!33537 (BalanceConc!20439 Empty!10400) (print!1741 thiss!11007 (singletonSeq!2173 (h!38889 (t!231786 l!4019))))))))

(declare-fun b!2835634 () Bool)

(declare-fun lt!1011291 () tuple2!33536)

(assert (=> b!2835634 (= lt!1011291 (lexRec!672 thiss!11007 rules!1047 (_2!19884 (v!34369 lt!1011305))))))

(assert (=> b!2835634 (= e!1795611 (tuple2!33537 (prepend!1160 (_1!19880 lt!1011291) (_1!19884 (v!34369 lt!1011305))) (_2!19880 lt!1011291)))))

(declare-fun b!2835635 () Bool)

(declare-fun lt!1011304 () tuple2!33536)

(assert (=> b!2835635 (= lt!1011304 (lexRec!672 thiss!11007 rules!1047 (_2!19884 (v!34369 lt!1011292))))))

(assert (=> b!2835635 (= e!1795609 (tuple2!33537 (prepend!1160 (_1!19880 lt!1011304) (_1!19884 (v!34369 lt!1011292))) (_2!19880 lt!1011304)))))

(assert (= (and d!822985 c!458307) b!2835630))

(assert (= (and d!822985 (not c!458307)) b!2835633))

(assert (= (and b!2835630 c!458306) b!2835634))

(assert (= (and b!2835630 (not c!458306)) b!2835631))

(assert (= (and b!2835630 c!458308) b!2835635))

(assert (= (and b!2835630 (not c!458308)) b!2835632))

(assert (= (and d!822985 res!1180234) b!2835629))

(declare-fun m!3265729 () Bool)

(assert (=> d!822985 m!3265729))

(assert (=> d!822985 m!3264823))

(declare-fun m!3265731 () Bool)

(assert (=> d!822985 m!3265731))

(assert (=> d!822985 m!3264213))

(assert (=> d!822985 m!3264213))

(declare-fun m!3265733 () Bool)

(assert (=> d!822985 m!3265733))

(assert (=> d!822985 m!3264213))

(assert (=> d!822985 m!3264361))

(assert (=> d!822985 m!3264213))

(declare-fun m!3265735 () Bool)

(assert (=> d!822985 m!3265735))

(declare-fun m!3265737 () Bool)

(assert (=> d!822985 m!3265737))

(assert (=> d!822985 m!3265731))

(declare-fun m!3265739 () Bool)

(assert (=> d!822985 m!3265739))

(declare-fun m!3265741 () Bool)

(assert (=> d!822985 m!3265741))

(declare-fun m!3265743 () Bool)

(assert (=> b!2835634 m!3265743))

(declare-fun m!3265745 () Bool)

(assert (=> b!2835634 m!3265745))

(declare-fun m!3265747 () Bool)

(assert (=> b!2835635 m!3265747))

(declare-fun m!3265749 () Bool)

(assert (=> b!2835635 m!3265749))

(declare-fun m!3265751 () Bool)

(assert (=> b!2835629 m!3265751))

(assert (=> b!2835629 m!3264213))

(assert (=> b!2835629 m!3265735))

(declare-fun m!3265753 () Bool)

(assert (=> b!2835629 m!3265753))

(declare-fun m!3265755 () Bool)

(assert (=> b!2835630 m!3265755))

(declare-fun m!3265757 () Bool)

(assert (=> b!2835630 m!3265757))

(declare-fun m!3265759 () Bool)

(assert (=> b!2835630 m!3265759))

(declare-fun m!3265761 () Bool)

(assert (=> b!2835630 m!3265761))

(declare-fun m!3265763 () Bool)

(assert (=> b!2835630 m!3265763))

(declare-fun m!3265765 () Bool)

(assert (=> b!2835630 m!3265765))

(assert (=> b!2835630 m!3264823))

(declare-fun m!3265767 () Bool)

(assert (=> b!2835630 m!3265767))

(declare-fun m!3265769 () Bool)

(assert (=> b!2835630 m!3265769))

(declare-fun m!3265771 () Bool)

(assert (=> b!2835630 m!3265771))

(assert (=> b!2835630 m!3265759))

(assert (=> b!2835630 m!3265771))

(declare-fun m!3265773 () Bool)

(assert (=> b!2835630 m!3265773))

(declare-fun m!3265775 () Bool)

(assert (=> b!2835630 m!3265775))

(declare-fun m!3265777 () Bool)

(assert (=> b!2835630 m!3265777))

(assert (=> b!2835630 m!3264213))

(assert (=> b!2835630 m!3265735))

(declare-fun m!3265779 () Bool)

(assert (=> b!2835630 m!3265779))

(declare-fun m!3265781 () Bool)

(assert (=> b!2835630 m!3265781))

(assert (=> b!2835630 m!3264213))

(declare-fun m!3265783 () Bool)

(assert (=> b!2835630 m!3265783))

(declare-fun m!3265785 () Bool)

(assert (=> b!2835630 m!3265785))

(assert (=> b!2835630 m!3265757))

(declare-fun m!3265787 () Bool)

(assert (=> b!2835630 m!3265787))

(assert (=> b!2835630 m!3264213))

(declare-fun m!3265789 () Bool)

(assert (=> b!2835630 m!3265789))

(declare-fun m!3265791 () Bool)

(assert (=> b!2835630 m!3265791))

(declare-fun m!3265793 () Bool)

(assert (=> b!2835630 m!3265793))

(assert (=> b!2835630 m!3265763))

(assert (=> b!2835630 m!3265055))

(assert (=> b!2835630 m!3265791))

(declare-fun m!3265795 () Bool)

(assert (=> b!2835630 m!3265795))

(assert (=> b!2835630 m!3265779))

(declare-fun m!3265797 () Bool)

(assert (=> b!2835630 m!3265797))

(declare-fun m!3265799 () Bool)

(assert (=> b!2835630 m!3265799))

(assert (=> b!2835630 m!3264823))

(assert (=> b!2835630 m!3265783))

(assert (=> b!2835630 m!3265755))

(declare-fun m!3265801 () Bool)

(assert (=> b!2835630 m!3265801))

(declare-fun m!3265803 () Bool)

(assert (=> b!2835630 m!3265803))

(assert (=> b!2835630 m!3265771))

(assert (=> b!2835630 m!3265767))

(declare-fun m!3265805 () Bool)

(assert (=> b!2835630 m!3265805))

(assert (=> b!2835630 m!3265801))

(assert (=> b!2835630 m!3265793))

(declare-fun m!3265807 () Bool)

(assert (=> b!2835630 m!3265807))

(declare-fun m!3265809 () Bool)

(assert (=> b!2835630 m!3265809))

(declare-fun m!3265811 () Bool)

(assert (=> b!2835630 m!3265811))

(assert (=> b!2835630 m!3265783))

(declare-fun m!3265813 () Bool)

(assert (=> b!2835630 m!3265813))

(assert (=> d!822495 d!822985))

(declare-fun d!822987 () Bool)

(declare-fun lt!1011328 () Int)

(assert (=> d!822987 (>= lt!1011328 0)))

(declare-fun e!1795618 () Int)

(assert (=> d!822987 (= lt!1011328 e!1795618)))

(declare-fun c!458312 () Bool)

(assert (=> d!822987 (= c!458312 ((_ is Nil!33469) (list!12507 (_1!19880 lt!1010802))))))

(assert (=> d!822987 (= (size!26046 (list!12507 (_1!19880 lt!1010802))) lt!1011328)))

(declare-fun b!2835645 () Bool)

(assert (=> b!2835645 (= e!1795618 0)))

(declare-fun b!2835646 () Bool)

(assert (=> b!2835646 (= e!1795618 (+ 1 (size!26046 (t!231786 (list!12507 (_1!19880 lt!1010802))))))))

(assert (= (and d!822987 c!458312) b!2835645))

(assert (= (and d!822987 (not c!458312)) b!2835646))

(declare-fun m!3265815 () Bool)

(assert (=> b!2835646 m!3265815))

(assert (=> d!822555 d!822987))

(assert (=> d!822555 d!822843))

(declare-fun d!822989 () Bool)

(declare-fun lt!1011329 () Int)

(assert (=> d!822989 (= lt!1011329 (size!26046 (list!12512 (c!458143 (_1!19880 lt!1010802)))))))

(assert (=> d!822989 (= lt!1011329 (ite ((_ is Empty!10400) (c!458143 (_1!19880 lt!1010802))) 0 (ite ((_ is Leaf!15819) (c!458143 (_1!19880 lt!1010802))) (csize!21031 (c!458143 (_1!19880 lt!1010802))) (csize!21030 (c!458143 (_1!19880 lt!1010802))))))))

(assert (=> d!822989 (= (size!26047 (c!458143 (_1!19880 lt!1010802))) lt!1011329)))

(declare-fun bs!518751 () Bool)

(assert (= bs!518751 d!822989))

(assert (=> bs!518751 m!3265221))

(assert (=> bs!518751 m!3265221))

(declare-fun m!3265817 () Bool)

(assert (=> bs!518751 m!3265817))

(assert (=> d!822555 d!822989))

(assert (=> b!2835077 d!822555))

(declare-fun d!822991 () Bool)

(assert (=> d!822991 (= (inv!17 (value!161496 (h!38889 (t!231786 l!4019)))) (= (charsToBigInt!1 (text!37212 (value!161496 (h!38889 (t!231786 l!4019))))) (value!161488 (value!161496 (h!38889 (t!231786 l!4019))))))))

(declare-fun bs!518752 () Bool)

(assert (= bs!518752 d!822991))

(declare-fun m!3265821 () Bool)

(assert (=> bs!518752 m!3265821))

(assert (=> b!2834900 d!822991))

(declare-fun d!822993 () Bool)

(assert (=> d!822993 (= (inv!45430 (tag!5526 (h!38888 (t!231785 (t!231785 rules!1047))))) (= (mod (str.len (value!161495 (tag!5526 (h!38888 (t!231785 (t!231785 rules!1047)))))) 2) 0))))

(assert (=> b!2835087 d!822993))

(declare-fun d!822995 () Bool)

(declare-fun res!1180238 () Bool)

(declare-fun e!1795619 () Bool)

(assert (=> d!822995 (=> (not res!1180238) (not e!1795619))))

(assert (=> d!822995 (= res!1180238 (semiInverseModEq!2089 (toChars!6919 (transformation!5022 (h!38888 (t!231785 (t!231785 rules!1047))))) (toValue!7060 (transformation!5022 (h!38888 (t!231785 (t!231785 rules!1047)))))))))

(assert (=> d!822995 (= (inv!45433 (transformation!5022 (h!38888 (t!231785 (t!231785 rules!1047))))) e!1795619)))

(declare-fun b!2835647 () Bool)

(assert (=> b!2835647 (= e!1795619 (equivClasses!1988 (toChars!6919 (transformation!5022 (h!38888 (t!231785 (t!231785 rules!1047))))) (toValue!7060 (transformation!5022 (h!38888 (t!231785 (t!231785 rules!1047)))))))))

(assert (= (and d!822995 res!1180238) b!2835647))

(declare-fun m!3265843 () Bool)

(assert (=> d!822995 m!3265843))

(declare-fun m!3265847 () Bool)

(assert (=> b!2835647 m!3265847))

(assert (=> b!2835087 d!822995))

(declare-fun bs!518754 () Bool)

(declare-fun d!822997 () Bool)

(assert (= bs!518754 (and d!822997 d!822487)))

(declare-fun lambda!104155 () Int)

(assert (=> bs!518754 (= lambda!104155 lambda!104118)))

(assert (=> d!822997 true))

(declare-fun lt!1011332 () Bool)

(assert (=> d!822997 (= lt!1011332 (forall!6889 rules!1047 lambda!104155))))

(declare-fun e!1795631 () Bool)

(assert (=> d!822997 (= lt!1011332 e!1795631)))

(declare-fun res!1180249 () Bool)

(assert (=> d!822997 (=> res!1180249 e!1795631)))

(assert (=> d!822997 (= res!1180249 (not ((_ is Cons!33468) rules!1047)))))

(assert (=> d!822997 (= (rulesValidInductive!1729 thiss!11007 rules!1047) lt!1011332)))

(declare-fun b!2835666 () Bool)

(declare-fun e!1795630 () Bool)

(assert (=> b!2835666 (= e!1795631 e!1795630)))

(declare-fun res!1180250 () Bool)

(assert (=> b!2835666 (=> (not res!1180250) (not e!1795630))))

(declare-fun ruleValid!1603 (LexerInterface!4612 Rule!9844) Bool)

(assert (=> b!2835666 (= res!1180250 (ruleValid!1603 thiss!11007 (h!38888 rules!1047)))))

(declare-fun b!2835667 () Bool)

(assert (=> b!2835667 (= e!1795630 (rulesValidInductive!1729 thiss!11007 (t!231785 rules!1047)))))

(assert (= (and d!822997 (not res!1180249)) b!2835666))

(assert (= (and b!2835666 res!1180250) b!2835667))

(declare-fun m!3265887 () Bool)

(assert (=> d!822997 m!3265887))

(declare-fun m!3265889 () Bool)

(assert (=> b!2835666 m!3265889))

(declare-fun m!3265891 () Bool)

(assert (=> b!2835667 m!3265891))

(assert (=> d!822487 d!822997))

(declare-fun d!823009 () Bool)

(declare-fun res!1180255 () Bool)

(declare-fun e!1795642 () Bool)

(assert (=> d!823009 (=> res!1180255 e!1795642)))

(assert (=> d!823009 (= res!1180255 ((_ is Nil!33468) rules!1047))))

(assert (=> d!823009 (= (forall!6889 rules!1047 lambda!104118) e!1795642)))

(declare-fun b!2835684 () Bool)

(declare-fun e!1795643 () Bool)

(assert (=> b!2835684 (= e!1795642 e!1795643)))

(declare-fun res!1180256 () Bool)

(assert (=> b!2835684 (=> (not res!1180256) (not e!1795643))))

(declare-fun dynLambda!14083 (Int Rule!9844) Bool)

(assert (=> b!2835684 (= res!1180256 (dynLambda!14083 lambda!104118 (h!38888 rules!1047)))))

(declare-fun b!2835685 () Bool)

(assert (=> b!2835685 (= e!1795643 (forall!6889 (t!231785 rules!1047) lambda!104118))))

(assert (= (and d!823009 (not res!1180255)) b!2835684))

(assert (= (and b!2835684 res!1180256) b!2835685))

(declare-fun b_lambda!85223 () Bool)

(assert (=> (not b_lambda!85223) (not b!2835684)))

(declare-fun m!3265905 () Bool)

(assert (=> b!2835684 m!3265905))

(declare-fun m!3265907 () Bool)

(assert (=> b!2835685 m!3265907))

(assert (=> d!822487 d!823009))

(declare-fun bs!518757 () Bool)

(declare-fun d!823019 () Bool)

(assert (= bs!518757 (and d!823019 d!822521)))

(declare-fun lambda!104156 () Int)

(assert (=> bs!518757 (= lambda!104156 lambda!104122)))

(declare-fun bs!518758 () Bool)

(assert (= bs!518758 (and d!823019 d!822457)))

(assert (=> bs!518758 (= lambda!104156 lambda!104115)))

(declare-fun bs!518759 () Bool)

(assert (= bs!518759 (and d!823019 d!822403)))

(assert (=> bs!518759 (= lambda!104156 lambda!104112)))

(declare-fun bs!518760 () Bool)

(assert (= bs!518760 (and d!823019 d!822629)))

(assert (=> bs!518760 (= lambda!104156 lambda!104131)))

(declare-fun bs!518761 () Bool)

(assert (= bs!518761 (and d!823019 d!822941)))

(assert (=> bs!518761 (= lambda!104156 lambda!104152)))

(declare-fun b!2835696 () Bool)

(declare-fun e!1795652 () Bool)

(assert (=> b!2835696 (= e!1795652 true)))

(declare-fun b!2835695 () Bool)

(declare-fun e!1795651 () Bool)

(assert (=> b!2835695 (= e!1795651 e!1795652)))

(declare-fun b!2835694 () Bool)

(declare-fun e!1795650 () Bool)

(assert (=> b!2835694 (= e!1795650 e!1795651)))

(assert (=> d!823019 e!1795650))

(assert (= b!2835695 b!2835696))

(assert (= b!2835694 b!2835695))

(assert (= (and d!823019 ((_ is Cons!33468) rules!1047)) b!2835694))

(assert (=> b!2835696 (< (dynLambda!14072 order!17867 (toValue!7060 (transformation!5022 (h!38888 rules!1047)))) (dynLambda!14073 order!17869 lambda!104156))))

(assert (=> b!2835696 (< (dynLambda!14074 order!17871 (toChars!6919 (transformation!5022 (h!38888 rules!1047)))) (dynLambda!14073 order!17869 lambda!104156))))

(assert (=> d!823019 true))

(declare-fun lt!1011333 () Bool)

(assert (=> d!823019 (= lt!1011333 (forall!6886 (t!231786 (list!12507 (seqFromList!3268 l!4019))) lambda!104156))))

(declare-fun e!1795647 () Bool)

(assert (=> d!823019 (= lt!1011333 e!1795647)))

(declare-fun res!1180258 () Bool)

(assert (=> d!823019 (=> res!1180258 e!1795647)))

(assert (=> d!823019 (= res!1180258 (not ((_ is Cons!33469) (t!231786 (list!12507 (seqFromList!3268 l!4019))))))))

(assert (=> d!823019 (not (isEmpty!18451 rules!1047))))

(assert (=> d!823019 (= (rulesProduceEachTokenIndividuallyList!1655 thiss!11007 rules!1047 (t!231786 (list!12507 (seqFromList!3268 l!4019)))) lt!1011333)))

(declare-fun b!2835689 () Bool)

(declare-fun e!1795646 () Bool)

(assert (=> b!2835689 (= e!1795647 e!1795646)))

(declare-fun res!1180259 () Bool)

(assert (=> b!2835689 (=> (not res!1180259) (not e!1795646))))

(assert (=> b!2835689 (= res!1180259 (rulesProduceIndividualToken!2142 thiss!11007 rules!1047 (h!38889 (t!231786 (list!12507 (seqFromList!3268 l!4019))))))))

(declare-fun b!2835690 () Bool)

(assert (=> b!2835690 (= e!1795646 (rulesProduceEachTokenIndividuallyList!1655 thiss!11007 rules!1047 (t!231786 (t!231786 (list!12507 (seqFromList!3268 l!4019))))))))

(assert (= (and d!823019 (not res!1180258)) b!2835689))

(assert (= (and b!2835689 res!1180259) b!2835690))

(declare-fun m!3265925 () Bool)

(assert (=> d!823019 m!3265925))

(assert (=> d!823019 m!3264037))

(declare-fun m!3265927 () Bool)

(assert (=> b!2835689 m!3265927))

(declare-fun m!3265929 () Bool)

(assert (=> b!2835690 m!3265929))

(assert (=> b!2834880 d!823019))

(declare-fun d!823027 () Bool)

(assert (=> d!823027 (= (isEmpty!18454 (list!12508 (_2!19880 lt!1010802))) ((_ is Nil!33467) (list!12508 (_2!19880 lt!1010802))))))

(assert (=> d!822677 d!823027))

(declare-fun d!823029 () Bool)

(assert (=> d!823029 (= (list!12508 (_2!19880 lt!1010802)) (list!12511 (c!458142 (_2!19880 lt!1010802))))))

(declare-fun bs!518762 () Bool)

(assert (= bs!518762 d!823029))

(declare-fun m!3265931 () Bool)

(assert (=> bs!518762 m!3265931))

(assert (=> d!822677 d!823029))

(declare-fun d!823031 () Bool)

(declare-fun lt!1011334 () Bool)

(assert (=> d!823031 (= lt!1011334 (isEmpty!18454 (list!12511 (c!458142 (_2!19880 lt!1010802)))))))

(assert (=> d!823031 (= lt!1011334 (= (size!26043 (c!458142 (_2!19880 lt!1010802))) 0))))

(assert (=> d!823031 (= (isEmpty!18458 (c!458142 (_2!19880 lt!1010802))) lt!1011334)))

(declare-fun bs!518763 () Bool)

(assert (= bs!518763 d!823031))

(assert (=> bs!518763 m!3265931))

(assert (=> bs!518763 m!3265931))

(declare-fun m!3265933 () Bool)

(assert (=> bs!518763 m!3265933))

(declare-fun m!3265935 () Bool)

(assert (=> bs!518763 m!3265935))

(assert (=> d!822677 d!823031))

(declare-fun d!823033 () Bool)

(declare-fun lt!1011335 () Token!9446)

(assert (=> d!823033 (contains!6109 (list!12507 (_1!19880 lt!1010805)) lt!1011335)))

(declare-fun e!1795658 () Token!9446)

(assert (=> d!823033 (= lt!1011335 e!1795658)))

(declare-fun c!458325 () Bool)

(assert (=> d!823033 (= c!458325 (= 0 0))))

(declare-fun e!1795657 () Bool)

(assert (=> d!823033 e!1795657))

(declare-fun res!1180269 () Bool)

(assert (=> d!823033 (=> (not res!1180269) (not e!1795657))))

(assert (=> d!823033 (= res!1180269 (<= 0 0))))

(assert (=> d!823033 (= (apply!7820 (list!12507 (_1!19880 lt!1010805)) 0) lt!1011335)))

(declare-fun b!2835706 () Bool)

(assert (=> b!2835706 (= e!1795657 (< 0 (size!26046 (list!12507 (_1!19880 lt!1010805)))))))

(declare-fun b!2835707 () Bool)

(assert (=> b!2835707 (= e!1795658 (head!6245 (list!12507 (_1!19880 lt!1010805))))))

(declare-fun b!2835708 () Bool)

(assert (=> b!2835708 (= e!1795658 (apply!7820 (tail!4470 (list!12507 (_1!19880 lt!1010805))) (- 0 1)))))

(assert (= (and d!823033 res!1180269) b!2835706))

(assert (= (and d!823033 c!458325) b!2835707))

(assert (= (and d!823033 (not c!458325)) b!2835708))

(assert (=> d!823033 m!3264437))

(declare-fun m!3265941 () Bool)

(assert (=> d!823033 m!3265941))

(assert (=> b!2835706 m!3264437))

(assert (=> b!2835706 m!3264505))

(assert (=> b!2835707 m!3264437))

(declare-fun m!3265945 () Bool)

(assert (=> b!2835707 m!3265945))

(assert (=> b!2835708 m!3264437))

(declare-fun m!3265949 () Bool)

(assert (=> b!2835708 m!3265949))

(assert (=> b!2835708 m!3265949))

(declare-fun m!3265951 () Bool)

(assert (=> b!2835708 m!3265951))

(assert (=> d!822545 d!823033))

(assert (=> d!822545 d!822917))

(declare-fun b!2835709 () Bool)

(declare-fun e!1795660 () Int)

(assert (=> b!2835709 (= e!1795660 (- 0 (size!26047 (left!25254 (c!458143 (_1!19880 lt!1010805))))))))

(declare-fun bm!183283 () Bool)

(declare-fun c!458328 () Bool)

(declare-fun c!458326 () Bool)

(assert (=> bm!183283 (= c!458328 c!458326)))

(declare-fun call!183288 () Token!9446)

(assert (=> bm!183283 (= call!183288 (apply!7821 (ite c!458326 (left!25254 (c!458143 (_1!19880 lt!1010805))) (right!25584 (c!458143 (_1!19880 lt!1010805)))) e!1795660))))

(declare-fun b!2835710 () Bool)

(declare-fun e!1795659 () Bool)

(assert (=> b!2835710 (= e!1795659 (< 0 (size!26047 (c!458143 (_1!19880 lt!1010805)))))))

(declare-fun b!2835711 () Bool)

(declare-fun e!1795662 () Token!9446)

(assert (=> b!2835711 (= e!1795662 call!183288)))

(declare-fun b!2835712 () Bool)

(assert (=> b!2835712 (= e!1795662 call!183288)))

(declare-fun b!2835713 () Bool)

(assert (=> b!2835713 (= e!1795660 0)))

(declare-fun d!823035 () Bool)

(declare-fun lt!1011336 () Token!9446)

(assert (=> d!823035 (= lt!1011336 (apply!7820 (list!12512 (c!458143 (_1!19880 lt!1010805))) 0))))

(declare-fun e!1795661 () Token!9446)

(assert (=> d!823035 (= lt!1011336 e!1795661)))

(declare-fun c!458327 () Bool)

(assert (=> d!823035 (= c!458327 ((_ is Leaf!15819) (c!458143 (_1!19880 lt!1010805))))))

(assert (=> d!823035 e!1795659))

(declare-fun res!1180270 () Bool)

(assert (=> d!823035 (=> (not res!1180270) (not e!1795659))))

(assert (=> d!823035 (= res!1180270 (<= 0 0))))

(assert (=> d!823035 (= (apply!7821 (c!458143 (_1!19880 lt!1010805)) 0) lt!1011336)))

(declare-fun b!2835714 () Bool)

(assert (=> b!2835714 (= e!1795661 (apply!7822 (xs!13512 (c!458143 (_1!19880 lt!1010805))) 0))))

(declare-fun b!2835715 () Bool)

(assert (=> b!2835715 (= e!1795661 e!1795662)))

(declare-fun lt!1011337 () Bool)

(assert (=> b!2835715 (= lt!1011337 (appendIndex!294 (list!12512 (left!25254 (c!458143 (_1!19880 lt!1010805)))) (list!12512 (right!25584 (c!458143 (_1!19880 lt!1010805)))) 0))))

(assert (=> b!2835715 (= c!458326 (< 0 (size!26047 (left!25254 (c!458143 (_1!19880 lt!1010805))))))))

(assert (= (and d!823035 res!1180270) b!2835710))

(assert (= (and d!823035 c!458327) b!2835714))

(assert (= (and d!823035 (not c!458327)) b!2835715))

(assert (= (and b!2835715 c!458326) b!2835711))

(assert (= (and b!2835715 (not c!458326)) b!2835712))

(assert (= (or b!2835711 b!2835712) bm!183283))

(assert (= (and bm!183283 c!458328) b!2835713))

(assert (= (and bm!183283 (not c!458328)) b!2835709))

(declare-fun m!3265967 () Bool)

(assert (=> b!2835709 m!3265967))

(declare-fun m!3265969 () Bool)

(assert (=> b!2835715 m!3265969))

(declare-fun m!3265971 () Bool)

(assert (=> b!2835715 m!3265971))

(assert (=> b!2835715 m!3265969))

(assert (=> b!2835715 m!3265971))

(declare-fun m!3265973 () Bool)

(assert (=> b!2835715 m!3265973))

(assert (=> b!2835715 m!3265967))

(assert (=> b!2835710 m!3264507))

(declare-fun m!3265975 () Bool)

(assert (=> b!2835714 m!3265975))

(assert (=> d!823035 m!3265583))

(assert (=> d!823035 m!3265583))

(declare-fun m!3265977 () Bool)

(assert (=> d!823035 m!3265977))

(declare-fun m!3265985 () Bool)

(assert (=> bm!183283 m!3265985))

(assert (=> d!822545 d!823035))

(declare-fun d!823049 () Bool)

(declare-fun res!1180271 () Bool)

(declare-fun e!1795665 () Bool)

(assert (=> d!823049 (=> (not res!1180271) (not e!1795665))))

(assert (=> d!823049 (= res!1180271 (= (csize!21028 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))) (+ (size!26043 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))) (size!26043 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))))))))

(assert (=> d!823049 (= (inv!45439 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))) e!1795665)))

(declare-fun b!2835720 () Bool)

(declare-fun res!1180272 () Bool)

(assert (=> b!2835720 (=> (not res!1180272) (not e!1795665))))

(assert (=> b!2835720 (= res!1180272 (and (not (= (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))) Empty!10399)) (not (= (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))) Empty!10399))))))

(declare-fun b!2835721 () Bool)

(declare-fun res!1180273 () Bool)

(assert (=> b!2835721 (=> (not res!1180273) (not e!1795665))))

(assert (=> b!2835721 (= res!1180273 (= (cheight!10610 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))) (+ (max!0 (height!1511 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))) (height!1511 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))) 1)))))

(declare-fun b!2835722 () Bool)

(assert (=> b!2835722 (= e!1795665 (<= 0 (cheight!10610 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))))))

(assert (= (and d!823049 res!1180271) b!2835720))

(assert (= (and b!2835720 res!1180272) b!2835721))

(assert (= (and b!2835721 res!1180273) b!2835722))

(declare-fun m!3265993 () Bool)

(assert (=> d!823049 m!3265993))

(declare-fun m!3265995 () Bool)

(assert (=> d!823049 m!3265995))

(assert (=> b!2835721 m!3265707))

(assert (=> b!2835721 m!3265709))

(assert (=> b!2835721 m!3265707))

(assert (=> b!2835721 m!3265709))

(declare-fun m!3265997 () Bool)

(assert (=> b!2835721 m!3265997))

(assert (=> b!2834893 d!823049))

(declare-fun d!823055 () Bool)

(assert (=> d!823055 (= (Forall2!840 lambda!104130) (choose!16735 lambda!104130))))

(declare-fun bs!518768 () Bool)

(assert (= bs!518768 d!823055))

(declare-fun m!3266001 () Bool)

(assert (=> bs!518768 m!3266001))

(assert (=> d!822611 d!823055))

(declare-fun d!823059 () Bool)

(declare-fun res!1180276 () Bool)

(declare-fun e!1795669 () Bool)

(assert (=> d!823059 (=> res!1180276 e!1795669)))

(assert (=> d!823059 (= res!1180276 ((_ is Nil!33469) (t!231786 l!4019)))))

(assert (=> d!823059 (= (forall!6886 (t!231786 l!4019) lambda!104131) e!1795669)))

(declare-fun b!2835727 () Bool)

(declare-fun e!1795670 () Bool)

(assert (=> b!2835727 (= e!1795669 e!1795670)))

(declare-fun res!1180277 () Bool)

(assert (=> b!2835727 (=> (not res!1180277) (not e!1795670))))

(assert (=> b!2835727 (= res!1180277 (dynLambda!14080 lambda!104131 (h!38889 (t!231786 l!4019))))))

(declare-fun b!2835728 () Bool)

(assert (=> b!2835728 (= e!1795670 (forall!6886 (t!231786 (t!231786 l!4019)) lambda!104131))))

(assert (= (and d!823059 (not res!1180276)) b!2835727))

(assert (= (and b!2835727 res!1180277) b!2835728))

(declare-fun b_lambda!85229 () Bool)

(assert (=> (not b_lambda!85229) (not b!2835727)))

(declare-fun m!3266007 () Bool)

(assert (=> b!2835727 m!3266007))

(declare-fun m!3266009 () Bool)

(assert (=> b!2835728 m!3266009))

(assert (=> d!822629 d!823059))

(assert (=> d!822629 d!822427))

(declare-fun b!2835730 () Bool)

(declare-fun e!1795672 () Bool)

(assert (=> b!2835730 (= e!1795672 tp_is_empty!14591)))

(declare-fun b!2835731 () Bool)

(declare-fun tp!906735 () Bool)

(declare-fun tp!906737 () Bool)

(assert (=> b!2835731 (= e!1795672 (and tp!906735 tp!906737))))

(declare-fun b!2835732 () Bool)

(declare-fun tp!906733 () Bool)

(assert (=> b!2835732 (= e!1795672 tp!906733)))

(assert (=> b!2835099 (= tp!906672 e!1795672)))

(declare-fun b!2835733 () Bool)

(declare-fun tp!906736 () Bool)

(declare-fun tp!906734 () Bool)

(assert (=> b!2835733 (= e!1795672 (and tp!906736 tp!906734))))

(assert (= (and b!2835099 ((_ is ElementMatch!8413) (reg!8742 (regTwo!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835730))

(assert (= (and b!2835099 ((_ is Concat!13666) (reg!8742 (regTwo!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835731))

(assert (= (and b!2835099 ((_ is Star!8413) (reg!8742 (regTwo!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835732))

(assert (= (and b!2835099 ((_ is Union!8413) (reg!8742 (regTwo!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835733))

(declare-fun b!2835736 () Bool)

(declare-fun e!1795675 () Bool)

(assert (=> b!2835736 (= e!1795675 true)))

(declare-fun b!2835735 () Bool)

(declare-fun e!1795674 () Bool)

(assert (=> b!2835735 (= e!1795674 e!1795675)))

(declare-fun b!2835734 () Bool)

(declare-fun e!1795673 () Bool)

(assert (=> b!2835734 (= e!1795673 e!1795674)))

(assert (=> b!2834963 e!1795673))

(assert (= b!2835735 b!2835736))

(assert (= b!2835734 b!2835735))

(assert (= (and b!2834963 ((_ is Cons!33468) (t!231785 rules!1047))) b!2835734))

(assert (=> b!2835736 (< (dynLambda!14072 order!17867 (toValue!7060 (transformation!5022 (h!38888 (t!231785 rules!1047))))) (dynLambda!14073 order!17869 lambda!104131))))

(assert (=> b!2835736 (< (dynLambda!14074 order!17871 (toChars!6919 (transformation!5022 (h!38888 (t!231785 rules!1047))))) (dynLambda!14073 order!17869 lambda!104131))))

(declare-fun b!2835741 () Bool)

(declare-fun e!1795678 () Bool)

(assert (=> b!2835741 (= e!1795678 tp_is_empty!14591)))

(declare-fun b!2835742 () Bool)

(declare-fun tp!906740 () Bool)

(declare-fun tp!906742 () Bool)

(assert (=> b!2835742 (= e!1795678 (and tp!906740 tp!906742))))

(declare-fun b!2835743 () Bool)

(declare-fun tp!906738 () Bool)

(assert (=> b!2835743 (= e!1795678 tp!906738)))

(assert (=> b!2835090 (= tp!906664 e!1795678)))

(declare-fun b!2835744 () Bool)

(declare-fun tp!906741 () Bool)

(declare-fun tp!906739 () Bool)

(assert (=> b!2835744 (= e!1795678 (and tp!906741 tp!906739))))

(assert (= (and b!2835090 ((_ is ElementMatch!8413) (regOne!17338 (regex!5022 (h!38888 (t!231785 rules!1047)))))) b!2835741))

(assert (= (and b!2835090 ((_ is Concat!13666) (regOne!17338 (regex!5022 (h!38888 (t!231785 rules!1047)))))) b!2835742))

(assert (= (and b!2835090 ((_ is Star!8413) (regOne!17338 (regex!5022 (h!38888 (t!231785 rules!1047)))))) b!2835743))

(assert (= (and b!2835090 ((_ is Union!8413) (regOne!17338 (regex!5022 (h!38888 (t!231785 rules!1047)))))) b!2835744))

(declare-fun b!2835745 () Bool)

(declare-fun e!1795679 () Bool)

(assert (=> b!2835745 (= e!1795679 tp_is_empty!14591)))

(declare-fun b!2835746 () Bool)

(declare-fun tp!906745 () Bool)

(declare-fun tp!906747 () Bool)

(assert (=> b!2835746 (= e!1795679 (and tp!906745 tp!906747))))

(declare-fun b!2835747 () Bool)

(declare-fun tp!906743 () Bool)

(assert (=> b!2835747 (= e!1795679 tp!906743)))

(assert (=> b!2835090 (= tp!906666 e!1795679)))

(declare-fun b!2835748 () Bool)

(declare-fun tp!906746 () Bool)

(declare-fun tp!906744 () Bool)

(assert (=> b!2835748 (= e!1795679 (and tp!906746 tp!906744))))

(assert (= (and b!2835090 ((_ is ElementMatch!8413) (regTwo!17338 (regex!5022 (h!38888 (t!231785 rules!1047)))))) b!2835745))

(assert (= (and b!2835090 ((_ is Concat!13666) (regTwo!17338 (regex!5022 (h!38888 (t!231785 rules!1047)))))) b!2835746))

(assert (= (and b!2835090 ((_ is Star!8413) (regTwo!17338 (regex!5022 (h!38888 (t!231785 rules!1047)))))) b!2835747))

(assert (= (and b!2835090 ((_ is Union!8413) (regTwo!17338 (regex!5022 (h!38888 (t!231785 rules!1047)))))) b!2835748))

(declare-fun b!2835749 () Bool)

(declare-fun e!1795680 () Bool)

(assert (=> b!2835749 (= e!1795680 tp_is_empty!14591)))

(declare-fun b!2835750 () Bool)

(declare-fun tp!906750 () Bool)

(declare-fun tp!906752 () Bool)

(assert (=> b!2835750 (= e!1795680 (and tp!906750 tp!906752))))

(declare-fun b!2835751 () Bool)

(declare-fun tp!906748 () Bool)

(assert (=> b!2835751 (= e!1795680 tp!906748)))

(assert (=> b!2835092 (= tp!906665 e!1795680)))

(declare-fun b!2835752 () Bool)

(declare-fun tp!906751 () Bool)

(declare-fun tp!906749 () Bool)

(assert (=> b!2835752 (= e!1795680 (and tp!906751 tp!906749))))

(assert (= (and b!2835092 ((_ is ElementMatch!8413) (regOne!17339 (regex!5022 (h!38888 (t!231785 rules!1047)))))) b!2835749))

(assert (= (and b!2835092 ((_ is Concat!13666) (regOne!17339 (regex!5022 (h!38888 (t!231785 rules!1047)))))) b!2835750))

(assert (= (and b!2835092 ((_ is Star!8413) (regOne!17339 (regex!5022 (h!38888 (t!231785 rules!1047)))))) b!2835751))

(assert (= (and b!2835092 ((_ is Union!8413) (regOne!17339 (regex!5022 (h!38888 (t!231785 rules!1047)))))) b!2835752))

(declare-fun b!2835753 () Bool)

(declare-fun e!1795681 () Bool)

(assert (=> b!2835753 (= e!1795681 tp_is_empty!14591)))

(declare-fun b!2835754 () Bool)

(declare-fun tp!906755 () Bool)

(declare-fun tp!906757 () Bool)

(assert (=> b!2835754 (= e!1795681 (and tp!906755 tp!906757))))

(declare-fun b!2835755 () Bool)

(declare-fun tp!906753 () Bool)

(assert (=> b!2835755 (= e!1795681 tp!906753)))

(assert (=> b!2835092 (= tp!906663 e!1795681)))

(declare-fun b!2835756 () Bool)

(declare-fun tp!906756 () Bool)

(declare-fun tp!906754 () Bool)

(assert (=> b!2835756 (= e!1795681 (and tp!906756 tp!906754))))

(assert (= (and b!2835092 ((_ is ElementMatch!8413) (regTwo!17339 (regex!5022 (h!38888 (t!231785 rules!1047)))))) b!2835753))

(assert (= (and b!2835092 ((_ is Concat!13666) (regTwo!17339 (regex!5022 (h!38888 (t!231785 rules!1047)))))) b!2835754))

(assert (= (and b!2835092 ((_ is Star!8413) (regTwo!17339 (regex!5022 (h!38888 (t!231785 rules!1047)))))) b!2835755))

(assert (= (and b!2835092 ((_ is Union!8413) (regTwo!17339 (regex!5022 (h!38888 (t!231785 rules!1047)))))) b!2835756))

(declare-fun b!2835762 () Bool)

(declare-fun b_free!81733 () Bool)

(declare-fun b_next!82437 () Bool)

(assert (=> b!2835762 (= b_free!81733 (not b_next!82437))))

(declare-fun tp!906760 () Bool)

(declare-fun b_and!207587 () Bool)

(assert (=> b!2835762 (= tp!906760 b_and!207587)))

(declare-fun b_free!81735 () Bool)

(declare-fun b_next!82439 () Bool)

(assert (=> b!2835762 (= b_free!81735 (not b_next!82439))))

(declare-fun t!231899 () Bool)

(declare-fun tb!154461 () Bool)

(assert (=> (and b!2835762 (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 (t!231786 l!4019))))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019))))) t!231899) tb!154461))

(declare-fun result!192626 () Bool)

(assert (= result!192626 result!192536))

(assert (=> b!2834655 t!231899))

(declare-fun t!231901 () Bool)

(declare-fun tb!154463 () Bool)

(assert (=> (and b!2835762 (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 (t!231786 l!4019))))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019)))))) t!231901) tb!154463))

(declare-fun result!192628 () Bool)

(assert (= result!192628 result!192562))

(assert (=> d!822453 t!231901))

(assert (=> b!2834885 t!231901))

(declare-fun t!231903 () Bool)

(declare-fun tb!154465 () Bool)

(assert (=> (and b!2835762 (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 (t!231786 l!4019))))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019))))))) t!231903) tb!154465))

(declare-fun result!192630 () Bool)

(assert (= result!192630 result!192602))

(assert (=> b!2835237 t!231903))

(declare-fun b_and!207589 () Bool)

(declare-fun tp!906762 () Bool)

(assert (=> b!2835762 (= tp!906762 (and (=> t!231899 result!192626) (=> t!231901 result!192628) (=> t!231903 result!192630) b_and!207589))))

(declare-fun e!1795682 () Bool)

(declare-fun b!2835759 () Bool)

(declare-fun e!1795688 () Bool)

(declare-fun tp!906758 () Bool)

(assert (=> b!2835759 (= e!1795682 (and (inv!45434 (h!38889 (t!231786 (t!231786 (t!231786 l!4019))))) e!1795688 tp!906758))))

(declare-fun e!1795683 () Bool)

(assert (=> b!2835762 (= e!1795683 (and tp!906760 tp!906762))))

(declare-fun tp!906759 () Bool)

(declare-fun b!2835760 () Bool)

(declare-fun e!1795685 () Bool)

(assert (=> b!2835760 (= e!1795688 (and (inv!21 (value!161496 (h!38889 (t!231786 (t!231786 (t!231786 l!4019)))))) e!1795685 tp!906759))))

(assert (=> b!2835105 (= tp!906682 e!1795682)))

(declare-fun tp!906761 () Bool)

(declare-fun b!2835761 () Bool)

(assert (=> b!2835761 (= e!1795685 (and tp!906761 (inv!45430 (tag!5526 (rule!7450 (h!38889 (t!231786 (t!231786 (t!231786 l!4019))))))) (inv!45433 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 (t!231786 l!4019))))))) e!1795683))))

(assert (= b!2835761 b!2835762))

(assert (= b!2835760 b!2835761))

(assert (= b!2835759 b!2835760))

(assert (= (and b!2835105 ((_ is Cons!33469) (t!231786 (t!231786 (t!231786 l!4019))))) b!2835759))

(declare-fun m!3266015 () Bool)

(assert (=> b!2835759 m!3266015))

(declare-fun m!3266017 () Bool)

(assert (=> b!2835760 m!3266017))

(declare-fun m!3266019 () Bool)

(assert (=> b!2835761 m!3266019))

(declare-fun m!3266021 () Bool)

(assert (=> b!2835761 m!3266021))

(declare-fun e!1795690 () Bool)

(declare-fun b!2835763 () Bool)

(declare-fun tp!906764 () Bool)

(declare-fun tp!906765 () Bool)

(assert (=> b!2835763 (= e!1795690 (and (inv!45437 (left!25253 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))))) tp!906765 (inv!45437 (right!25583 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))))) tp!906764))))

(declare-fun b!2835765 () Bool)

(declare-fun e!1795689 () Bool)

(declare-fun tp!906763 () Bool)

(assert (=> b!2835765 (= e!1795689 tp!906763)))

(declare-fun b!2835764 () Bool)

(assert (=> b!2835764 (= e!1795690 (and (inv!45444 (xs!13511 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))))) e!1795689))))

(assert (=> b!2835132 (= tp!906709 (and (inv!45437 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))) e!1795690))))

(assert (= (and b!2835132 ((_ is Node!10399) (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))))) b!2835763))

(assert (= b!2835764 b!2835765))

(assert (= (and b!2835132 ((_ is Leaf!15818) (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))))) b!2835764))

(declare-fun m!3266023 () Bool)

(assert (=> b!2835763 m!3266023))

(declare-fun m!3266025 () Bool)

(assert (=> b!2835763 m!3266025))

(declare-fun m!3266027 () Bool)

(assert (=> b!2835764 m!3266027))

(assert (=> b!2835132 m!3264729))

(declare-fun e!1795692 () Bool)

(declare-fun b!2835766 () Bool)

(declare-fun tp!906768 () Bool)

(declare-fun tp!906767 () Bool)

(assert (=> b!2835766 (= e!1795692 (and (inv!45437 (left!25253 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))))) tp!906768 (inv!45437 (right!25583 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))))) tp!906767))))

(declare-fun b!2835768 () Bool)

(declare-fun e!1795691 () Bool)

(declare-fun tp!906766 () Bool)

(assert (=> b!2835768 (= e!1795691 tp!906766)))

(declare-fun b!2835767 () Bool)

(assert (=> b!2835767 (= e!1795692 (and (inv!45444 (xs!13511 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))))) e!1795691))))

(assert (=> b!2835132 (= tp!906708 (and (inv!45437 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))) e!1795692))))

(assert (= (and b!2835132 ((_ is Node!10399) (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))))) b!2835766))

(assert (= b!2835767 b!2835768))

(assert (= (and b!2835132 ((_ is Leaf!15818) (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019)))))))) b!2835767))

(declare-fun m!3266029 () Bool)

(assert (=> b!2835766 m!3266029))

(declare-fun m!3266031 () Bool)

(assert (=> b!2835766 m!3266031))

(declare-fun m!3266033 () Bool)

(assert (=> b!2835767 m!3266033))

(assert (=> b!2835132 m!3264731))

(declare-fun b!2835769 () Bool)

(declare-fun e!1795693 () Bool)

(assert (=> b!2835769 (= e!1795693 tp_is_empty!14591)))

(declare-fun b!2835770 () Bool)

(declare-fun tp!906771 () Bool)

(declare-fun tp!906773 () Bool)

(assert (=> b!2835770 (= e!1795693 (and tp!906771 tp!906773))))

(declare-fun b!2835771 () Bool)

(declare-fun tp!906769 () Bool)

(assert (=> b!2835771 (= e!1795693 tp!906769)))

(assert (=> b!2835107 (= tp!906685 e!1795693)))

(declare-fun b!2835772 () Bool)

(declare-fun tp!906772 () Bool)

(declare-fun tp!906770 () Bool)

(assert (=> b!2835772 (= e!1795693 (and tp!906772 tp!906770))))

(assert (= (and b!2835107 ((_ is ElementMatch!8413) (regex!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019))))))) b!2835769))

(assert (= (and b!2835107 ((_ is Concat!13666) (regex!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019))))))) b!2835770))

(assert (= (and b!2835107 ((_ is Star!8413) (regex!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019))))))) b!2835771))

(assert (= (and b!2835107 ((_ is Union!8413) (regex!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019))))))) b!2835772))

(declare-fun b!2835773 () Bool)

(declare-fun e!1795694 () Bool)

(declare-fun tp!906774 () Bool)

(assert (=> b!2835773 (= e!1795694 (and tp_is_empty!14591 tp!906774))))

(assert (=> b!2835134 (= tp!906707 e!1795694)))

(assert (= (and b!2835134 ((_ is Cons!33467) (innerList!10459 (xs!13511 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (value!161496 (h!38889 (t!231786 l!4019))))))))) b!2835773))

(declare-fun b!2835776 () Bool)

(declare-fun e!1795697 () Bool)

(assert (=> b!2835776 (= e!1795697 true)))

(declare-fun b!2835775 () Bool)

(declare-fun e!1795696 () Bool)

(assert (=> b!2835775 (= e!1795696 e!1795697)))

(declare-fun b!2835774 () Bool)

(declare-fun e!1795695 () Bool)

(assert (=> b!2835774 (= e!1795695 e!1795696)))

(assert (=> b!2835129 e!1795695))

(assert (= b!2835775 b!2835776))

(assert (= b!2835774 b!2835775))

(assert (= (and b!2835129 ((_ is Cons!33468) (t!231785 (t!231785 rules!1047)))) b!2835774))

(assert (=> b!2835776 (< (dynLambda!14072 order!17867 (toValue!7060 (transformation!5022 (h!38888 (t!231785 (t!231785 rules!1047)))))) (dynLambda!14073 order!17869 lambda!104112))))

(assert (=> b!2835776 (< (dynLambda!14074 order!17871 (toChars!6919 (transformation!5022 (h!38888 (t!231785 (t!231785 rules!1047)))))) (dynLambda!14073 order!17869 lambda!104112))))

(declare-fun b!2835777 () Bool)

(declare-fun e!1795698 () Bool)

(assert (=> b!2835777 (= e!1795698 tp_is_empty!14591)))

(declare-fun b!2835778 () Bool)

(declare-fun tp!906777 () Bool)

(declare-fun tp!906779 () Bool)

(assert (=> b!2835778 (= e!1795698 (and tp!906777 tp!906779))))

(declare-fun b!2835779 () Bool)

(declare-fun tp!906775 () Bool)

(assert (=> b!2835779 (= e!1795698 tp!906775)))

(assert (=> b!2835084 (= tp!906653 e!1795698)))

(declare-fun b!2835780 () Bool)

(declare-fun tp!906778 () Bool)

(declare-fun tp!906776 () Bool)

(assert (=> b!2835780 (= e!1795698 (and tp!906778 tp!906776))))

(assert (= (and b!2835084 ((_ is ElementMatch!8413) (reg!8742 (regTwo!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835777))

(assert (= (and b!2835084 ((_ is Concat!13666) (reg!8742 (regTwo!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835778))

(assert (= (and b!2835084 ((_ is Star!8413) (reg!8742 (regTwo!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835779))

(assert (= (and b!2835084 ((_ is Union!8413) (reg!8742 (regTwo!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835780))

(declare-fun b!2835781 () Bool)

(declare-fun e!1795699 () Bool)

(declare-fun tp!906780 () Bool)

(assert (=> b!2835781 (= e!1795699 (and tp_is_empty!14591 tp!906780))))

(assert (=> b!2835154 (= tp!906730 e!1795699)))

(assert (= (and b!2835154 ((_ is Cons!33467) (t!231784 (t!231784 (originalCharacters!5754 (h!38889 l!4019)))))) b!2835781))

(declare-fun b!2835784 () Bool)

(declare-fun e!1795701 () Bool)

(assert (=> b!2835784 (= e!1795701 tp_is_empty!14591)))

(declare-fun b!2835785 () Bool)

(declare-fun tp!906783 () Bool)

(declare-fun tp!906785 () Bool)

(assert (=> b!2835785 (= e!1795701 (and tp!906783 tp!906785))))

(declare-fun b!2835786 () Bool)

(declare-fun tp!906781 () Bool)

(assert (=> b!2835786 (= e!1795701 tp!906781)))

(assert (=> b!2835144 (= tp!906722 e!1795701)))

(declare-fun b!2835787 () Bool)

(declare-fun tp!906784 () Bool)

(declare-fun tp!906782 () Bool)

(assert (=> b!2835787 (= e!1795701 (and tp!906784 tp!906782))))

(assert (= (and b!2835144 ((_ is ElementMatch!8413) (regOne!17338 (regOne!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835784))

(assert (= (and b!2835144 ((_ is Concat!13666) (regOne!17338 (regOne!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835785))

(assert (= (and b!2835144 ((_ is Star!8413) (regOne!17338 (regOne!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835786))

(assert (= (and b!2835144 ((_ is Union!8413) (regOne!17338 (regOne!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835787))

(declare-fun b!2835788 () Bool)

(declare-fun e!1795702 () Bool)

(assert (=> b!2835788 (= e!1795702 tp_is_empty!14591)))

(declare-fun b!2835789 () Bool)

(declare-fun tp!906788 () Bool)

(declare-fun tp!906790 () Bool)

(assert (=> b!2835789 (= e!1795702 (and tp!906788 tp!906790))))

(declare-fun b!2835790 () Bool)

(declare-fun tp!906786 () Bool)

(assert (=> b!2835790 (= e!1795702 tp!906786)))

(assert (=> b!2835144 (= tp!906724 e!1795702)))

(declare-fun b!2835791 () Bool)

(declare-fun tp!906789 () Bool)

(declare-fun tp!906787 () Bool)

(assert (=> b!2835791 (= e!1795702 (and tp!906789 tp!906787))))

(assert (= (and b!2835144 ((_ is ElementMatch!8413) (regTwo!17338 (regOne!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835788))

(assert (= (and b!2835144 ((_ is Concat!13666) (regTwo!17338 (regOne!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835789))

(assert (= (and b!2835144 ((_ is Star!8413) (regTwo!17338 (regOne!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835790))

(assert (= (and b!2835144 ((_ is Union!8413) (regTwo!17338 (regOne!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835791))

(declare-fun b!2835792 () Bool)

(declare-fun e!1795703 () Bool)

(assert (=> b!2835792 (= e!1795703 tp_is_empty!14591)))

(declare-fun b!2835793 () Bool)

(declare-fun tp!906793 () Bool)

(declare-fun tp!906795 () Bool)

(assert (=> b!2835793 (= e!1795703 (and tp!906793 tp!906795))))

(declare-fun b!2835794 () Bool)

(declare-fun tp!906791 () Bool)

(assert (=> b!2835794 (= e!1795703 tp!906791)))

(assert (=> b!2835146 (= tp!906723 e!1795703)))

(declare-fun b!2835795 () Bool)

(declare-fun tp!906794 () Bool)

(declare-fun tp!906792 () Bool)

(assert (=> b!2835795 (= e!1795703 (and tp!906794 tp!906792))))

(assert (= (and b!2835146 ((_ is ElementMatch!8413) (regOne!17339 (regOne!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835792))

(assert (= (and b!2835146 ((_ is Concat!13666) (regOne!17339 (regOne!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835793))

(assert (= (and b!2835146 ((_ is Star!8413) (regOne!17339 (regOne!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835794))

(assert (= (and b!2835146 ((_ is Union!8413) (regOne!17339 (regOne!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835795))

(declare-fun b!2835796 () Bool)

(declare-fun e!1795704 () Bool)

(assert (=> b!2835796 (= e!1795704 tp_is_empty!14591)))

(declare-fun b!2835797 () Bool)

(declare-fun tp!906798 () Bool)

(declare-fun tp!906800 () Bool)

(assert (=> b!2835797 (= e!1795704 (and tp!906798 tp!906800))))

(declare-fun b!2835798 () Bool)

(declare-fun tp!906796 () Bool)

(assert (=> b!2835798 (= e!1795704 tp!906796)))

(assert (=> b!2835146 (= tp!906721 e!1795704)))

(declare-fun b!2835799 () Bool)

(declare-fun tp!906799 () Bool)

(declare-fun tp!906797 () Bool)

(assert (=> b!2835799 (= e!1795704 (and tp!906799 tp!906797))))

(assert (= (and b!2835146 ((_ is ElementMatch!8413) (regTwo!17339 (regOne!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835796))

(assert (= (and b!2835146 ((_ is Concat!13666) (regTwo!17339 (regOne!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835797))

(assert (= (and b!2835146 ((_ is Star!8413) (regTwo!17339 (regOne!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835798))

(assert (= (and b!2835146 ((_ is Union!8413) (regTwo!17339 (regOne!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835799))

(declare-fun b!2835800 () Bool)

(declare-fun e!1795705 () Bool)

(assert (=> b!2835800 (= e!1795705 tp_is_empty!14591)))

(declare-fun b!2835801 () Bool)

(declare-fun tp!906803 () Bool)

(declare-fun tp!906805 () Bool)

(assert (=> b!2835801 (= e!1795705 (and tp!906803 tp!906805))))

(declare-fun b!2835802 () Bool)

(declare-fun tp!906801 () Bool)

(assert (=> b!2835802 (= e!1795705 tp!906801)))

(assert (=> b!2835121 (= tp!906698 e!1795705)))

(declare-fun b!2835803 () Bool)

(declare-fun tp!906804 () Bool)

(declare-fun tp!906802 () Bool)

(assert (=> b!2835803 (= e!1795705 (and tp!906804 tp!906802))))

(assert (= (and b!2835121 ((_ is ElementMatch!8413) (regOne!17338 (reg!8742 (regex!5022 (h!38888 rules!1047)))))) b!2835800))

(assert (= (and b!2835121 ((_ is Concat!13666) (regOne!17338 (reg!8742 (regex!5022 (h!38888 rules!1047)))))) b!2835801))

(assert (= (and b!2835121 ((_ is Star!8413) (regOne!17338 (reg!8742 (regex!5022 (h!38888 rules!1047)))))) b!2835802))

(assert (= (and b!2835121 ((_ is Union!8413) (regOne!17338 (reg!8742 (regex!5022 (h!38888 rules!1047)))))) b!2835803))

(declare-fun b!2835804 () Bool)

(declare-fun e!1795706 () Bool)

(assert (=> b!2835804 (= e!1795706 tp_is_empty!14591)))

(declare-fun b!2835805 () Bool)

(declare-fun tp!906808 () Bool)

(declare-fun tp!906810 () Bool)

(assert (=> b!2835805 (= e!1795706 (and tp!906808 tp!906810))))

(declare-fun b!2835806 () Bool)

(declare-fun tp!906806 () Bool)

(assert (=> b!2835806 (= e!1795706 tp!906806)))

(assert (=> b!2835121 (= tp!906700 e!1795706)))

(declare-fun b!2835807 () Bool)

(declare-fun tp!906809 () Bool)

(declare-fun tp!906807 () Bool)

(assert (=> b!2835807 (= e!1795706 (and tp!906809 tp!906807))))

(assert (= (and b!2835121 ((_ is ElementMatch!8413) (regTwo!17338 (reg!8742 (regex!5022 (h!38888 rules!1047)))))) b!2835804))

(assert (= (and b!2835121 ((_ is Concat!13666) (regTwo!17338 (reg!8742 (regex!5022 (h!38888 rules!1047)))))) b!2835805))

(assert (= (and b!2835121 ((_ is Star!8413) (regTwo!17338 (reg!8742 (regex!5022 (h!38888 rules!1047)))))) b!2835806))

(assert (= (and b!2835121 ((_ is Union!8413) (regTwo!17338 (reg!8742 (regex!5022 (h!38888 rules!1047)))))) b!2835807))

(declare-fun b!2835808 () Bool)

(declare-fun e!1795707 () Bool)

(assert (=> b!2835808 (= e!1795707 tp_is_empty!14591)))

(declare-fun b!2835809 () Bool)

(declare-fun tp!906813 () Bool)

(declare-fun tp!906815 () Bool)

(assert (=> b!2835809 (= e!1795707 (and tp!906813 tp!906815))))

(declare-fun b!2835810 () Bool)

(declare-fun tp!906811 () Bool)

(assert (=> b!2835810 (= e!1795707 tp!906811)))

(assert (=> b!2835123 (= tp!906699 e!1795707)))

(declare-fun b!2835811 () Bool)

(declare-fun tp!906814 () Bool)

(declare-fun tp!906812 () Bool)

(assert (=> b!2835811 (= e!1795707 (and tp!906814 tp!906812))))

(assert (= (and b!2835123 ((_ is ElementMatch!8413) (regOne!17339 (reg!8742 (regex!5022 (h!38888 rules!1047)))))) b!2835808))

(assert (= (and b!2835123 ((_ is Concat!13666) (regOne!17339 (reg!8742 (regex!5022 (h!38888 rules!1047)))))) b!2835809))

(assert (= (and b!2835123 ((_ is Star!8413) (regOne!17339 (reg!8742 (regex!5022 (h!38888 rules!1047)))))) b!2835810))

(assert (= (and b!2835123 ((_ is Union!8413) (regOne!17339 (reg!8742 (regex!5022 (h!38888 rules!1047)))))) b!2835811))

(declare-fun b!2835812 () Bool)

(declare-fun e!1795708 () Bool)

(assert (=> b!2835812 (= e!1795708 tp_is_empty!14591)))

(declare-fun b!2835813 () Bool)

(declare-fun tp!906818 () Bool)

(declare-fun tp!906820 () Bool)

(assert (=> b!2835813 (= e!1795708 (and tp!906818 tp!906820))))

(declare-fun b!2835814 () Bool)

(declare-fun tp!906816 () Bool)

(assert (=> b!2835814 (= e!1795708 tp!906816)))

(assert (=> b!2835123 (= tp!906697 e!1795708)))

(declare-fun b!2835815 () Bool)

(declare-fun tp!906819 () Bool)

(declare-fun tp!906817 () Bool)

(assert (=> b!2835815 (= e!1795708 (and tp!906819 tp!906817))))

(assert (= (and b!2835123 ((_ is ElementMatch!8413) (regTwo!17339 (reg!8742 (regex!5022 (h!38888 rules!1047)))))) b!2835812))

(assert (= (and b!2835123 ((_ is Concat!13666) (regTwo!17339 (reg!8742 (regex!5022 (h!38888 rules!1047)))))) b!2835813))

(assert (= (and b!2835123 ((_ is Star!8413) (regTwo!17339 (reg!8742 (regex!5022 (h!38888 rules!1047)))))) b!2835814))

(assert (= (and b!2835123 ((_ is Union!8413) (regTwo!17339 (reg!8742 (regex!5022 (h!38888 rules!1047)))))) b!2835815))

(declare-fun b!2835816 () Bool)

(declare-fun e!1795709 () Bool)

(assert (=> b!2835816 (= e!1795709 tp_is_empty!14591)))

(declare-fun b!2835817 () Bool)

(declare-fun tp!906823 () Bool)

(declare-fun tp!906825 () Bool)

(assert (=> b!2835817 (= e!1795709 (and tp!906823 tp!906825))))

(declare-fun b!2835818 () Bool)

(declare-fun tp!906821 () Bool)

(assert (=> b!2835818 (= e!1795709 tp!906821)))

(assert (=> b!2835137 (= tp!906710 e!1795709)))

(declare-fun b!2835819 () Bool)

(declare-fun tp!906824 () Bool)

(declare-fun tp!906822 () Bool)

(assert (=> b!2835819 (= e!1795709 (and tp!906824 tp!906822))))

(assert (= (and b!2835137 ((_ is ElementMatch!8413) (reg!8742 (regOne!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835816))

(assert (= (and b!2835137 ((_ is Concat!13666) (reg!8742 (regOne!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835817))

(assert (= (and b!2835137 ((_ is Star!8413) (reg!8742 (regOne!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835818))

(assert (= (and b!2835137 ((_ is Union!8413) (reg!8742 (regOne!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835819))

(declare-fun b!2835820 () Bool)

(declare-fun e!1795710 () Bool)

(assert (=> b!2835820 (= e!1795710 tp_is_empty!14591)))

(declare-fun b!2835821 () Bool)

(declare-fun tp!906828 () Bool)

(declare-fun tp!906830 () Bool)

(assert (=> b!2835821 (= e!1795710 (and tp!906828 tp!906830))))

(declare-fun b!2835822 () Bool)

(declare-fun tp!906826 () Bool)

(assert (=> b!2835822 (= e!1795710 tp!906826)))

(assert (=> b!2835094 (= tp!906669 e!1795710)))

(declare-fun b!2835823 () Bool)

(declare-fun tp!906829 () Bool)

(declare-fun tp!906827 () Bool)

(assert (=> b!2835823 (= e!1795710 (and tp!906829 tp!906827))))

(assert (= (and b!2835094 ((_ is ElementMatch!8413) (regOne!17338 (regOne!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835820))

(assert (= (and b!2835094 ((_ is Concat!13666) (regOne!17338 (regOne!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835821))

(assert (= (and b!2835094 ((_ is Star!8413) (regOne!17338 (regOne!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835822))

(assert (= (and b!2835094 ((_ is Union!8413) (regOne!17338 (regOne!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835823))

(declare-fun b!2835828 () Bool)

(declare-fun e!1795715 () Bool)

(assert (=> b!2835828 (= e!1795715 tp_is_empty!14591)))

(declare-fun b!2835829 () Bool)

(declare-fun tp!906833 () Bool)

(declare-fun tp!906835 () Bool)

(assert (=> b!2835829 (= e!1795715 (and tp!906833 tp!906835))))

(declare-fun b!2835830 () Bool)

(declare-fun tp!906831 () Bool)

(assert (=> b!2835830 (= e!1795715 tp!906831)))

(assert (=> b!2835094 (= tp!906671 e!1795715)))

(declare-fun b!2835831 () Bool)

(declare-fun tp!906834 () Bool)

(declare-fun tp!906832 () Bool)

(assert (=> b!2835831 (= e!1795715 (and tp!906834 tp!906832))))

(assert (= (and b!2835094 ((_ is ElementMatch!8413) (regTwo!17338 (regOne!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835828))

(assert (= (and b!2835094 ((_ is Concat!13666) (regTwo!17338 (regOne!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835829))

(assert (= (and b!2835094 ((_ is Star!8413) (regTwo!17338 (regOne!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835830))

(assert (= (and b!2835094 ((_ is Union!8413) (regTwo!17338 (regOne!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835831))

(declare-fun b!2835832 () Bool)

(declare-fun e!1795716 () Bool)

(assert (=> b!2835832 (= e!1795716 tp_is_empty!14591)))

(declare-fun b!2835833 () Bool)

(declare-fun tp!906838 () Bool)

(declare-fun tp!906840 () Bool)

(assert (=> b!2835833 (= e!1795716 (and tp!906838 tp!906840))))

(declare-fun b!2835834 () Bool)

(declare-fun tp!906836 () Bool)

(assert (=> b!2835834 (= e!1795716 tp!906836)))

(assert (=> b!2835127 (= tp!906702 e!1795716)))

(declare-fun b!2835835 () Bool)

(declare-fun tp!906839 () Bool)

(declare-fun tp!906837 () Bool)

(assert (=> b!2835835 (= e!1795716 (and tp!906839 tp!906837))))

(assert (= (and b!2835127 ((_ is ElementMatch!8413) (reg!8742 (reg!8742 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835832))

(assert (= (and b!2835127 ((_ is Concat!13666) (reg!8742 (reg!8742 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835833))

(assert (= (and b!2835127 ((_ is Star!8413) (reg!8742 (reg!8742 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835834))

(assert (= (and b!2835127 ((_ is Union!8413) (reg!8742 (reg!8742 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835835))

(declare-fun b!2835836 () Bool)

(declare-fun e!1795717 () Bool)

(assert (=> b!2835836 (= e!1795717 tp_is_empty!14591)))

(declare-fun b!2835837 () Bool)

(declare-fun tp!906843 () Bool)

(declare-fun tp!906845 () Bool)

(assert (=> b!2835837 (= e!1795717 (and tp!906843 tp!906845))))

(declare-fun b!2835838 () Bool)

(declare-fun tp!906841 () Bool)

(assert (=> b!2835838 (= e!1795717 tp!906841)))

(assert (=> b!2835103 (= tp!906677 e!1795717)))

(declare-fun b!2835839 () Bool)

(declare-fun tp!906844 () Bool)

(declare-fun tp!906842 () Bool)

(assert (=> b!2835839 (= e!1795717 (and tp!906844 tp!906842))))

(assert (= (and b!2835103 ((_ is ElementMatch!8413) (reg!8742 (regex!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) b!2835836))

(assert (= (and b!2835103 ((_ is Concat!13666) (reg!8742 (regex!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) b!2835837))

(assert (= (and b!2835103 ((_ is Star!8413) (reg!8742 (regex!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) b!2835838))

(assert (= (and b!2835103 ((_ is Union!8413) (reg!8742 (regex!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) b!2835839))

(declare-fun b!2835842 () Bool)

(declare-fun e!1795720 () Bool)

(assert (=> b!2835842 (= e!1795720 true)))

(declare-fun b!2835841 () Bool)

(declare-fun e!1795719 () Bool)

(assert (=> b!2835841 (= e!1795719 e!1795720)))

(declare-fun b!2835840 () Bool)

(declare-fun e!1795718 () Bool)

(assert (=> b!2835840 (= e!1795718 e!1795719)))

(assert (=> b!2835151 e!1795718))

(assert (= b!2835841 b!2835842))

(assert (= b!2835840 b!2835841))

(assert (= (and b!2835151 ((_ is Cons!33468) (t!231785 (t!231785 rules!1047)))) b!2835840))

(assert (=> b!2835842 (< (dynLambda!14072 order!17867 (toValue!7060 (transformation!5022 (h!38888 (t!231785 (t!231785 rules!1047)))))) (dynLambda!14073 order!17869 lambda!104115))))

(assert (=> b!2835842 (< (dynLambda!14074 order!17871 (toChars!6919 (transformation!5022 (h!38888 (t!231785 (t!231785 rules!1047)))))) (dynLambda!14073 order!17869 lambda!104115))))

(declare-fun b!2835845 () Bool)

(declare-fun e!1795723 () Bool)

(assert (=> b!2835845 (= e!1795723 true)))

(declare-fun b!2835844 () Bool)

(declare-fun e!1795722 () Bool)

(assert (=> b!2835844 (= e!1795722 e!1795723)))

(declare-fun b!2835843 () Bool)

(declare-fun e!1795721 () Bool)

(assert (=> b!2835843 (= e!1795721 e!1795722)))

(assert (=> b!2834881 e!1795721))

(assert (= b!2835844 b!2835845))

(assert (= b!2835843 b!2835844))

(assert (= (and b!2834881 ((_ is Cons!33468) (t!231785 rules!1047))) b!2835843))

(assert (=> b!2835845 (< (dynLambda!14072 order!17867 (toValue!7060 (transformation!5022 (h!38888 (t!231785 rules!1047))))) (dynLambda!14073 order!17869 lambda!104122))))

(assert (=> b!2835845 (< (dynLambda!14074 order!17871 (toChars!6919 (transformation!5022 (h!38888 (t!231785 rules!1047))))) (dynLambda!14073 order!17869 lambda!104122))))

(declare-fun b!2835848 () Bool)

(declare-fun e!1795726 () Bool)

(assert (=> b!2835848 (= e!1795726 tp_is_empty!14591)))

(declare-fun b!2835849 () Bool)

(declare-fun tp!906848 () Bool)

(declare-fun tp!906850 () Bool)

(assert (=> b!2835849 (= e!1795726 (and tp!906848 tp!906850))))

(declare-fun b!2835850 () Bool)

(declare-fun tp!906846 () Bool)

(assert (=> b!2835850 (= e!1795726 tp!906846)))

(assert (=> b!2835096 (= tp!906670 e!1795726)))

(declare-fun b!2835851 () Bool)

(declare-fun tp!906849 () Bool)

(declare-fun tp!906847 () Bool)

(assert (=> b!2835851 (= e!1795726 (and tp!906849 tp!906847))))

(assert (= (and b!2835096 ((_ is ElementMatch!8413) (regOne!17339 (regOne!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835848))

(assert (= (and b!2835096 ((_ is Concat!13666) (regOne!17339 (regOne!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835849))

(assert (= (and b!2835096 ((_ is Star!8413) (regOne!17339 (regOne!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835850))

(assert (= (and b!2835096 ((_ is Union!8413) (regOne!17339 (regOne!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835851))

(declare-fun b!2835852 () Bool)

(declare-fun e!1795727 () Bool)

(assert (=> b!2835852 (= e!1795727 tp_is_empty!14591)))

(declare-fun b!2835853 () Bool)

(declare-fun tp!906853 () Bool)

(declare-fun tp!906855 () Bool)

(assert (=> b!2835853 (= e!1795727 (and tp!906853 tp!906855))))

(declare-fun b!2835854 () Bool)

(declare-fun tp!906851 () Bool)

(assert (=> b!2835854 (= e!1795727 tp!906851)))

(assert (=> b!2835096 (= tp!906668 e!1795727)))

(declare-fun b!2835855 () Bool)

(declare-fun tp!906854 () Bool)

(declare-fun tp!906852 () Bool)

(assert (=> b!2835855 (= e!1795727 (and tp!906854 tp!906852))))

(assert (= (and b!2835096 ((_ is ElementMatch!8413) (regTwo!17339 (regOne!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835852))

(assert (= (and b!2835096 ((_ is Concat!13666) (regTwo!17339 (regOne!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835853))

(assert (= (and b!2835096 ((_ is Star!8413) (regTwo!17339 (regOne!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835854))

(assert (= (and b!2835096 ((_ is Union!8413) (regTwo!17339 (regOne!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835855))

(declare-fun b!2835858 () Bool)

(declare-fun b_free!81737 () Bool)

(declare-fun b_next!82441 () Bool)

(assert (=> b!2835858 (= b_free!81737 (not b_next!82441))))

(declare-fun tp!906858 () Bool)

(declare-fun b_and!207591 () Bool)

(assert (=> b!2835858 (= tp!906858 b_and!207591)))

(declare-fun b_free!81739 () Bool)

(declare-fun b_next!82443 () Bool)

(assert (=> b!2835858 (= b_free!81739 (not b_next!82443))))

(declare-fun tb!154467 () Bool)

(declare-fun t!231906 () Bool)

(assert (=> (and b!2835858 (= (toChars!6919 (transformation!5022 (h!38888 (t!231785 (t!231785 (t!231785 rules!1047)))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019))))) t!231906) tb!154467))

(declare-fun result!192632 () Bool)

(assert (= result!192632 result!192536))

(assert (=> b!2834655 t!231906))

(declare-fun tb!154469 () Bool)

(declare-fun t!231908 () Bool)

(assert (=> (and b!2835858 (= (toChars!6919 (transformation!5022 (h!38888 (t!231785 (t!231785 (t!231785 rules!1047)))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019)))))) t!231908) tb!154469))

(declare-fun result!192634 () Bool)

(assert (= result!192634 result!192562))

(assert (=> d!822453 t!231908))

(assert (=> b!2834885 t!231908))

(declare-fun t!231910 () Bool)

(declare-fun tb!154471 () Bool)

(assert (=> (and b!2835858 (= (toChars!6919 (transformation!5022 (h!38888 (t!231785 (t!231785 (t!231785 rules!1047)))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019))))))) t!231910) tb!154471))

(declare-fun result!192636 () Bool)

(assert (= result!192636 result!192602))

(assert (=> b!2835237 t!231910))

(declare-fun b_and!207593 () Bool)

(declare-fun tp!906859 () Bool)

(assert (=> b!2835858 (= tp!906859 (and (=> t!231906 result!192632) (=> t!231908 result!192634) (=> t!231910 result!192636) b_and!207593))))

(declare-fun e!1795729 () Bool)

(assert (=> b!2835858 (= e!1795729 (and tp!906858 tp!906859))))

(declare-fun b!2835857 () Bool)

(declare-fun tp!906856 () Bool)

(declare-fun e!1795730 () Bool)

(assert (=> b!2835857 (= e!1795730 (and tp!906856 (inv!45430 (tag!5526 (h!38888 (t!231785 (t!231785 (t!231785 rules!1047)))))) (inv!45433 (transformation!5022 (h!38888 (t!231785 (t!231785 (t!231785 rules!1047)))))) e!1795729))))

(declare-fun b!2835856 () Bool)

(declare-fun e!1795728 () Bool)

(declare-fun tp!906857 () Bool)

(assert (=> b!2835856 (= e!1795728 (and e!1795730 tp!906857))))

(assert (=> b!2835086 (= tp!906659 e!1795728)))

(assert (= b!2835857 b!2835858))

(assert (= b!2835856 b!2835857))

(assert (= (and b!2835086 ((_ is Cons!33468) (t!231785 (t!231785 (t!231785 rules!1047))))) b!2835856))

(declare-fun m!3266051 () Bool)

(assert (=> b!2835857 m!3266051))

(declare-fun m!3266053 () Bool)

(assert (=> b!2835857 m!3266053))

(declare-fun b!2835859 () Bool)

(declare-fun e!1795732 () Bool)

(assert (=> b!2835859 (= e!1795732 tp_is_empty!14591)))

(declare-fun b!2835860 () Bool)

(declare-fun tp!906862 () Bool)

(declare-fun tp!906864 () Bool)

(assert (=> b!2835860 (= e!1795732 (and tp!906862 tp!906864))))

(declare-fun b!2835861 () Bool)

(declare-fun tp!906860 () Bool)

(assert (=> b!2835861 (= e!1795732 tp!906860)))

(assert (=> b!2835079 (= tp!906650 e!1795732)))

(declare-fun b!2835862 () Bool)

(declare-fun tp!906863 () Bool)

(declare-fun tp!906861 () Bool)

(assert (=> b!2835862 (= e!1795732 (and tp!906863 tp!906861))))

(assert (= (and b!2835079 ((_ is ElementMatch!8413) (regOne!17338 (regOne!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835859))

(assert (= (and b!2835079 ((_ is Concat!13666) (regOne!17338 (regOne!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835860))

(assert (= (and b!2835079 ((_ is Star!8413) (regOne!17338 (regOne!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835861))

(assert (= (and b!2835079 ((_ is Union!8413) (regOne!17338 (regOne!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835862))

(declare-fun b!2835863 () Bool)

(declare-fun e!1795733 () Bool)

(assert (=> b!2835863 (= e!1795733 tp_is_empty!14591)))

(declare-fun b!2835864 () Bool)

(declare-fun tp!906867 () Bool)

(declare-fun tp!906869 () Bool)

(assert (=> b!2835864 (= e!1795733 (and tp!906867 tp!906869))))

(declare-fun b!2835865 () Bool)

(declare-fun tp!906865 () Bool)

(assert (=> b!2835865 (= e!1795733 tp!906865)))

(assert (=> b!2835079 (= tp!906652 e!1795733)))

(declare-fun b!2835866 () Bool)

(declare-fun tp!906868 () Bool)

(declare-fun tp!906866 () Bool)

(assert (=> b!2835866 (= e!1795733 (and tp!906868 tp!906866))))

(assert (= (and b!2835079 ((_ is ElementMatch!8413) (regTwo!17338 (regOne!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835863))

(assert (= (and b!2835079 ((_ is Concat!13666) (regTwo!17338 (regOne!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835864))

(assert (= (and b!2835079 ((_ is Star!8413) (regTwo!17338 (regOne!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835865))

(assert (= (and b!2835079 ((_ is Union!8413) (regTwo!17338 (regOne!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835866))

(declare-fun b!2835867 () Bool)

(declare-fun e!1795734 () Bool)

(assert (=> b!2835867 (= e!1795734 tp_is_empty!14591)))

(declare-fun b!2835868 () Bool)

(declare-fun tp!906872 () Bool)

(declare-fun tp!906874 () Bool)

(assert (=> b!2835868 (= e!1795734 (and tp!906872 tp!906874))))

(declare-fun b!2835869 () Bool)

(declare-fun tp!906870 () Bool)

(assert (=> b!2835869 (= e!1795734 tp!906870)))

(assert (=> b!2835148 (= tp!906727 e!1795734)))

(declare-fun b!2835870 () Bool)

(declare-fun tp!906873 () Bool)

(declare-fun tp!906871 () Bool)

(assert (=> b!2835870 (= e!1795734 (and tp!906873 tp!906871))))

(assert (= (and b!2835148 ((_ is ElementMatch!8413) (regOne!17338 (regTwo!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835867))

(assert (= (and b!2835148 ((_ is Concat!13666) (regOne!17338 (regTwo!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835868))

(assert (= (and b!2835148 ((_ is Star!8413) (regOne!17338 (regTwo!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835869))

(assert (= (and b!2835148 ((_ is Union!8413) (regOne!17338 (regTwo!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835870))

(declare-fun b!2835871 () Bool)

(declare-fun e!1795735 () Bool)

(assert (=> b!2835871 (= e!1795735 tp_is_empty!14591)))

(declare-fun b!2835872 () Bool)

(declare-fun tp!906877 () Bool)

(declare-fun tp!906879 () Bool)

(assert (=> b!2835872 (= e!1795735 (and tp!906877 tp!906879))))

(declare-fun b!2835873 () Bool)

(declare-fun tp!906875 () Bool)

(assert (=> b!2835873 (= e!1795735 tp!906875)))

(assert (=> b!2835148 (= tp!906729 e!1795735)))

(declare-fun b!2835874 () Bool)

(declare-fun tp!906878 () Bool)

(declare-fun tp!906876 () Bool)

(assert (=> b!2835874 (= e!1795735 (and tp!906878 tp!906876))))

(assert (= (and b!2835148 ((_ is ElementMatch!8413) (regTwo!17338 (regTwo!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835871))

(assert (= (and b!2835148 ((_ is Concat!13666) (regTwo!17338 (regTwo!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835872))

(assert (= (and b!2835148 ((_ is Star!8413) (regTwo!17338 (regTwo!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835873))

(assert (= (and b!2835148 ((_ is Union!8413) (regTwo!17338 (regTwo!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835874))

(declare-fun b!2835875 () Bool)

(declare-fun e!1795736 () Bool)

(assert (=> b!2835875 (= e!1795736 tp_is_empty!14591)))

(declare-fun b!2835876 () Bool)

(declare-fun tp!906882 () Bool)

(declare-fun tp!906884 () Bool)

(assert (=> b!2835876 (= e!1795736 (and tp!906882 tp!906884))))

(declare-fun b!2835877 () Bool)

(declare-fun tp!906880 () Bool)

(assert (=> b!2835877 (= e!1795736 tp!906880)))

(assert (=> b!2835141 (= tp!906715 e!1795736)))

(declare-fun b!2835878 () Bool)

(declare-fun tp!906883 () Bool)

(declare-fun tp!906881 () Bool)

(assert (=> b!2835878 (= e!1795736 (and tp!906883 tp!906881))))

(assert (= (and b!2835141 ((_ is ElementMatch!8413) (reg!8742 (regTwo!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835875))

(assert (= (and b!2835141 ((_ is Concat!13666) (reg!8742 (regTwo!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835876))

(assert (= (and b!2835141 ((_ is Star!8413) (reg!8742 (regTwo!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835877))

(assert (= (and b!2835141 ((_ is Union!8413) (reg!8742 (regTwo!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835878))

(declare-fun b!2835879 () Bool)

(declare-fun e!1795737 () Bool)

(assert (=> b!2835879 (= e!1795737 tp_is_empty!14591)))

(declare-fun b!2835880 () Bool)

(declare-fun tp!906887 () Bool)

(declare-fun tp!906889 () Bool)

(assert (=> b!2835880 (= e!1795737 (and tp!906887 tp!906889))))

(declare-fun b!2835881 () Bool)

(declare-fun tp!906885 () Bool)

(assert (=> b!2835881 (= e!1795737 tp!906885)))

(assert (=> b!2835081 (= tp!906651 e!1795737)))

(declare-fun b!2835882 () Bool)

(declare-fun tp!906888 () Bool)

(declare-fun tp!906886 () Bool)

(assert (=> b!2835882 (= e!1795737 (and tp!906888 tp!906886))))

(assert (= (and b!2835081 ((_ is ElementMatch!8413) (regOne!17339 (regOne!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835879))

(assert (= (and b!2835081 ((_ is Concat!13666) (regOne!17339 (regOne!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835880))

(assert (= (and b!2835081 ((_ is Star!8413) (regOne!17339 (regOne!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835881))

(assert (= (and b!2835081 ((_ is Union!8413) (regOne!17339 (regOne!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835882))

(declare-fun b!2835883 () Bool)

(declare-fun e!1795738 () Bool)

(assert (=> b!2835883 (= e!1795738 tp_is_empty!14591)))

(declare-fun b!2835884 () Bool)

(declare-fun tp!906892 () Bool)

(declare-fun tp!906894 () Bool)

(assert (=> b!2835884 (= e!1795738 (and tp!906892 tp!906894))))

(declare-fun b!2835885 () Bool)

(declare-fun tp!906890 () Bool)

(assert (=> b!2835885 (= e!1795738 tp!906890)))

(assert (=> b!2835081 (= tp!906649 e!1795738)))

(declare-fun b!2835886 () Bool)

(declare-fun tp!906893 () Bool)

(declare-fun tp!906891 () Bool)

(assert (=> b!2835886 (= e!1795738 (and tp!906893 tp!906891))))

(assert (= (and b!2835081 ((_ is ElementMatch!8413) (regTwo!17339 (regOne!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835883))

(assert (= (and b!2835081 ((_ is Concat!13666) (regTwo!17339 (regOne!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835884))

(assert (= (and b!2835081 ((_ is Star!8413) (regTwo!17339 (regOne!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835885))

(assert (= (and b!2835081 ((_ is Union!8413) (regTwo!17339 (regOne!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835886))

(declare-fun b!2835887 () Bool)

(declare-fun e!1795739 () Bool)

(assert (=> b!2835887 (= e!1795739 tp_is_empty!14591)))

(declare-fun b!2835888 () Bool)

(declare-fun tp!906897 () Bool)

(declare-fun tp!906899 () Bool)

(assert (=> b!2835888 (= e!1795739 (and tp!906897 tp!906899))))

(declare-fun b!2835889 () Bool)

(declare-fun tp!906895 () Bool)

(assert (=> b!2835889 (= e!1795739 tp!906895)))

(assert (=> b!2835150 (= tp!906728 e!1795739)))

(declare-fun b!2835890 () Bool)

(declare-fun tp!906898 () Bool)

(declare-fun tp!906896 () Bool)

(assert (=> b!2835890 (= e!1795739 (and tp!906898 tp!906896))))

(assert (= (and b!2835150 ((_ is ElementMatch!8413) (regOne!17339 (regTwo!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835887))

(assert (= (and b!2835150 ((_ is Concat!13666) (regOne!17339 (regTwo!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835888))

(assert (= (and b!2835150 ((_ is Star!8413) (regOne!17339 (regTwo!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835889))

(assert (= (and b!2835150 ((_ is Union!8413) (regOne!17339 (regTwo!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835890))

(declare-fun b!2835891 () Bool)

(declare-fun e!1795740 () Bool)

(assert (=> b!2835891 (= e!1795740 tp_is_empty!14591)))

(declare-fun b!2835892 () Bool)

(declare-fun tp!906902 () Bool)

(declare-fun tp!906904 () Bool)

(assert (=> b!2835892 (= e!1795740 (and tp!906902 tp!906904))))

(declare-fun b!2835893 () Bool)

(declare-fun tp!906900 () Bool)

(assert (=> b!2835893 (= e!1795740 tp!906900)))

(assert (=> b!2835150 (= tp!906726 e!1795740)))

(declare-fun b!2835894 () Bool)

(declare-fun tp!906903 () Bool)

(declare-fun tp!906901 () Bool)

(assert (=> b!2835894 (= e!1795740 (and tp!906903 tp!906901))))

(assert (= (and b!2835150 ((_ is ElementMatch!8413) (regTwo!17339 (regTwo!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835891))

(assert (= (and b!2835150 ((_ is Concat!13666) (regTwo!17339 (regTwo!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835892))

(assert (= (and b!2835150 ((_ is Star!8413) (regTwo!17339 (regTwo!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835893))

(assert (= (and b!2835150 ((_ is Union!8413) (regTwo!17339 (regTwo!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835894))

(declare-fun b!2835895 () Bool)

(declare-fun e!1795741 () Bool)

(assert (=> b!2835895 (= e!1795741 tp_is_empty!14591)))

(declare-fun b!2835896 () Bool)

(declare-fun tp!906907 () Bool)

(declare-fun tp!906909 () Bool)

(assert (=> b!2835896 (= e!1795741 (and tp!906907 tp!906909))))

(declare-fun b!2835897 () Bool)

(declare-fun tp!906905 () Bool)

(assert (=> b!2835897 (= e!1795741 tp!906905)))

(assert (=> b!2835098 (= tp!906674 e!1795741)))

(declare-fun b!2835898 () Bool)

(declare-fun tp!906908 () Bool)

(declare-fun tp!906906 () Bool)

(assert (=> b!2835898 (= e!1795741 (and tp!906908 tp!906906))))

(assert (= (and b!2835098 ((_ is ElementMatch!8413) (regOne!17338 (regTwo!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835895))

(assert (= (and b!2835098 ((_ is Concat!13666) (regOne!17338 (regTwo!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835896))

(assert (= (and b!2835098 ((_ is Star!8413) (regOne!17338 (regTwo!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835897))

(assert (= (and b!2835098 ((_ is Union!8413) (regOne!17338 (regTwo!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835898))

(declare-fun b!2835899 () Bool)

(declare-fun e!1795742 () Bool)

(assert (=> b!2835899 (= e!1795742 tp_is_empty!14591)))

(declare-fun b!2835900 () Bool)

(declare-fun tp!906912 () Bool)

(declare-fun tp!906914 () Bool)

(assert (=> b!2835900 (= e!1795742 (and tp!906912 tp!906914))))

(declare-fun b!2835901 () Bool)

(declare-fun tp!906910 () Bool)

(assert (=> b!2835901 (= e!1795742 tp!906910)))

(assert (=> b!2835098 (= tp!906676 e!1795742)))

(declare-fun b!2835902 () Bool)

(declare-fun tp!906913 () Bool)

(declare-fun tp!906911 () Bool)

(assert (=> b!2835902 (= e!1795742 (and tp!906913 tp!906911))))

(assert (= (and b!2835098 ((_ is ElementMatch!8413) (regTwo!17338 (regTwo!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835899))

(assert (= (and b!2835098 ((_ is Concat!13666) (regTwo!17338 (regTwo!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835900))

(assert (= (and b!2835098 ((_ is Star!8413) (regTwo!17338 (regTwo!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835901))

(assert (= (and b!2835098 ((_ is Union!8413) (regTwo!17338 (regTwo!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835902))

(declare-fun b!2835903 () Bool)

(declare-fun e!1795743 () Bool)

(assert (=> b!2835903 (= e!1795743 tp_is_empty!14591)))

(declare-fun b!2835904 () Bool)

(declare-fun tp!906917 () Bool)

(declare-fun tp!906919 () Bool)

(assert (=> b!2835904 (= e!1795743 (and tp!906917 tp!906919))))

(declare-fun b!2835905 () Bool)

(declare-fun tp!906915 () Bool)

(assert (=> b!2835905 (= e!1795743 tp!906915)))

(assert (=> b!2835100 (= tp!906675 e!1795743)))

(declare-fun b!2835906 () Bool)

(declare-fun tp!906918 () Bool)

(declare-fun tp!906916 () Bool)

(assert (=> b!2835906 (= e!1795743 (and tp!906918 tp!906916))))

(assert (= (and b!2835100 ((_ is ElementMatch!8413) (regOne!17339 (regTwo!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835903))

(assert (= (and b!2835100 ((_ is Concat!13666) (regOne!17339 (regTwo!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835904))

(assert (= (and b!2835100 ((_ is Star!8413) (regOne!17339 (regTwo!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835905))

(assert (= (and b!2835100 ((_ is Union!8413) (regOne!17339 (regTwo!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835906))

(declare-fun b!2835907 () Bool)

(declare-fun e!1795744 () Bool)

(assert (=> b!2835907 (= e!1795744 tp_is_empty!14591)))

(declare-fun b!2835908 () Bool)

(declare-fun tp!906922 () Bool)

(declare-fun tp!906924 () Bool)

(assert (=> b!2835908 (= e!1795744 (and tp!906922 tp!906924))))

(declare-fun b!2835909 () Bool)

(declare-fun tp!906920 () Bool)

(assert (=> b!2835909 (= e!1795744 tp!906920)))

(assert (=> b!2835100 (= tp!906673 e!1795744)))

(declare-fun b!2835910 () Bool)

(declare-fun tp!906923 () Bool)

(declare-fun tp!906921 () Bool)

(assert (=> b!2835910 (= e!1795744 (and tp!906923 tp!906921))))

(assert (= (and b!2835100 ((_ is ElementMatch!8413) (regTwo!17339 (regTwo!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835907))

(assert (= (and b!2835100 ((_ is Concat!13666) (regTwo!17339 (regTwo!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835908))

(assert (= (and b!2835100 ((_ is Star!8413) (regTwo!17339 (regTwo!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835909))

(assert (= (and b!2835100 ((_ is Union!8413) (regTwo!17339 (regTwo!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835910))

(declare-fun b!2835911 () Bool)

(declare-fun e!1795745 () Bool)

(assert (=> b!2835911 (= e!1795745 tp_is_empty!14591)))

(declare-fun b!2835912 () Bool)

(declare-fun tp!906927 () Bool)

(declare-fun tp!906929 () Bool)

(assert (=> b!2835912 (= e!1795745 (and tp!906927 tp!906929))))

(declare-fun b!2835913 () Bool)

(declare-fun tp!906925 () Bool)

(assert (=> b!2835913 (= e!1795745 tp!906925)))

(assert (=> b!2835091 (= tp!906662 e!1795745)))

(declare-fun b!2835914 () Bool)

(declare-fun tp!906928 () Bool)

(declare-fun tp!906926 () Bool)

(assert (=> b!2835914 (= e!1795745 (and tp!906928 tp!906926))))

(assert (= (and b!2835091 ((_ is ElementMatch!8413) (reg!8742 (regex!5022 (h!38888 (t!231785 rules!1047)))))) b!2835911))

(assert (= (and b!2835091 ((_ is Concat!13666) (reg!8742 (regex!5022 (h!38888 (t!231785 rules!1047)))))) b!2835912))

(assert (= (and b!2835091 ((_ is Star!8413) (reg!8742 (regex!5022 (h!38888 (t!231785 rules!1047)))))) b!2835913))

(assert (= (and b!2835091 ((_ is Union!8413) (reg!8742 (regex!5022 (h!38888 (t!231785 rules!1047)))))) b!2835914))

(declare-fun b!2835915 () Bool)

(declare-fun e!1795746 () Bool)

(declare-fun tp!906930 () Bool)

(assert (=> b!2835915 (= e!1795746 (and tp_is_empty!14591 tp!906930))))

(assert (=> b!2835124 (= tp!906701 e!1795746)))

(assert (= (and b!2835124 ((_ is Cons!33467) (t!231784 (originalCharacters!5754 (h!38889 (t!231786 l!4019)))))) b!2835915))

(declare-fun b!2835916 () Bool)

(declare-fun e!1795747 () Bool)

(declare-fun tp!906931 () Bool)

(assert (=> b!2835916 (= e!1795747 (and tp_is_empty!14591 tp!906931))))

(assert (=> b!2835106 (= tp!906683 e!1795747)))

(assert (= (and b!2835106 ((_ is Cons!33467) (originalCharacters!5754 (h!38889 (t!231786 (t!231786 l!4019)))))) b!2835916))

(declare-fun tp!906934 () Bool)

(declare-fun e!1795749 () Bool)

(declare-fun tp!906933 () Bool)

(declare-fun b!2835917 () Bool)

(assert (=> b!2835917 (= e!1795749 (and (inv!45437 (left!25253 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))) tp!906934 (inv!45437 (right!25583 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))) tp!906933))))

(declare-fun b!2835919 () Bool)

(declare-fun e!1795748 () Bool)

(declare-fun tp!906932 () Bool)

(assert (=> b!2835919 (= e!1795748 tp!906932)))

(declare-fun b!2835918 () Bool)

(assert (=> b!2835918 (= e!1795749 (and (inv!45444 (xs!13511 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))) e!1795748))))

(assert (=> b!2835117 (= tp!906695 (and (inv!45437 (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))) e!1795749))))

(assert (= (and b!2835117 ((_ is Node!10399) (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))) b!2835917))

(assert (= b!2835918 b!2835919))

(assert (= (and b!2835117 ((_ is Leaf!15818) (left!25253 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))) b!2835918))

(declare-fun m!3266055 () Bool)

(assert (=> b!2835917 m!3266055))

(declare-fun m!3266057 () Bool)

(assert (=> b!2835917 m!3266057))

(declare-fun m!3266059 () Bool)

(assert (=> b!2835918 m!3266059))

(assert (=> b!2835117 m!3264723))

(declare-fun tp!906936 () Bool)

(declare-fun tp!906937 () Bool)

(declare-fun e!1795751 () Bool)

(declare-fun b!2835920 () Bool)

(assert (=> b!2835920 (= e!1795751 (and (inv!45437 (left!25253 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))) tp!906937 (inv!45437 (right!25583 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))) tp!906936))))

(declare-fun b!2835922 () Bool)

(declare-fun e!1795750 () Bool)

(declare-fun tp!906935 () Bool)

(assert (=> b!2835922 (= e!1795750 tp!906935)))

(declare-fun b!2835921 () Bool)

(assert (=> b!2835921 (= e!1795751 (and (inv!45444 (xs!13511 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))) e!1795750))))

(assert (=> b!2835117 (= tp!906694 (and (inv!45437 (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))) e!1795751))))

(assert (= (and b!2835117 ((_ is Node!10399) (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))) b!2835920))

(assert (= b!2835921 b!2835922))

(assert (= (and b!2835117 ((_ is Leaf!15818) (right!25583 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019))))))) b!2835921))

(declare-fun m!3266061 () Bool)

(assert (=> b!2835920 m!3266061))

(declare-fun m!3266063 () Bool)

(assert (=> b!2835920 m!3266063))

(declare-fun m!3266065 () Bool)

(assert (=> b!2835921 m!3266065))

(assert (=> b!2835117 m!3264725))

(declare-fun b!2835929 () Bool)

(declare-fun e!1795756 () Bool)

(declare-fun tp!906938 () Bool)

(assert (=> b!2835929 (= e!1795756 (and tp_is_empty!14591 tp!906938))))

(assert (=> b!2835119 (= tp!906693 e!1795756)))

(assert (= (and b!2835119 ((_ is Cons!33467) (innerList!10459 (xs!13511 (c!458142 (dynLambda!14075 (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (value!161496 (h!38889 l!4019)))))))) b!2835929))

(declare-fun b!2835930 () Bool)

(declare-fun e!1795757 () Bool)

(assert (=> b!2835930 (= e!1795757 tp_is_empty!14591)))

(declare-fun b!2835931 () Bool)

(declare-fun tp!906941 () Bool)

(declare-fun tp!906943 () Bool)

(assert (=> b!2835931 (= e!1795757 (and tp!906941 tp!906943))))

(declare-fun b!2835932 () Bool)

(declare-fun tp!906939 () Bool)

(assert (=> b!2835932 (= e!1795757 tp!906939)))

(assert (=> b!2835083 (= tp!906655 e!1795757)))

(declare-fun b!2835933 () Bool)

(declare-fun tp!906942 () Bool)

(declare-fun tp!906940 () Bool)

(assert (=> b!2835933 (= e!1795757 (and tp!906942 tp!906940))))

(assert (= (and b!2835083 ((_ is ElementMatch!8413) (regOne!17338 (regTwo!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835930))

(assert (= (and b!2835083 ((_ is Concat!13666) (regOne!17338 (regTwo!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835931))

(assert (= (and b!2835083 ((_ is Star!8413) (regOne!17338 (regTwo!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835932))

(assert (= (and b!2835083 ((_ is Union!8413) (regOne!17338 (regTwo!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835933))

(declare-fun b!2835936 () Bool)

(declare-fun e!1795760 () Bool)

(assert (=> b!2835936 (= e!1795760 tp_is_empty!14591)))

(declare-fun b!2835937 () Bool)

(declare-fun tp!906946 () Bool)

(declare-fun tp!906948 () Bool)

(assert (=> b!2835937 (= e!1795760 (and tp!906946 tp!906948))))

(declare-fun b!2835938 () Bool)

(declare-fun tp!906944 () Bool)

(assert (=> b!2835938 (= e!1795760 tp!906944)))

(assert (=> b!2835083 (= tp!906657 e!1795760)))

(declare-fun b!2835939 () Bool)

(declare-fun tp!906947 () Bool)

(declare-fun tp!906945 () Bool)

(assert (=> b!2835939 (= e!1795760 (and tp!906947 tp!906945))))

(assert (= (and b!2835083 ((_ is ElementMatch!8413) (regTwo!17338 (regTwo!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835936))

(assert (= (and b!2835083 ((_ is Concat!13666) (regTwo!17338 (regTwo!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835937))

(assert (= (and b!2835083 ((_ is Star!8413) (regTwo!17338 (regTwo!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835938))

(assert (= (and b!2835083 ((_ is Union!8413) (regTwo!17338 (regTwo!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835939))

(declare-fun b!2835940 () Bool)

(declare-fun e!1795761 () Bool)

(assert (=> b!2835940 (= e!1795761 tp_is_empty!14591)))

(declare-fun b!2835941 () Bool)

(declare-fun tp!906951 () Bool)

(declare-fun tp!906953 () Bool)

(assert (=> b!2835941 (= e!1795761 (and tp!906951 tp!906953))))

(declare-fun b!2835942 () Bool)

(declare-fun tp!906949 () Bool)

(assert (=> b!2835942 (= e!1795761 tp!906949)))

(assert (=> b!2835085 (= tp!906656 e!1795761)))

(declare-fun b!2835943 () Bool)

(declare-fun tp!906952 () Bool)

(declare-fun tp!906950 () Bool)

(assert (=> b!2835943 (= e!1795761 (and tp!906952 tp!906950))))

(assert (= (and b!2835085 ((_ is ElementMatch!8413) (regOne!17339 (regTwo!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835940))

(assert (= (and b!2835085 ((_ is Concat!13666) (regOne!17339 (regTwo!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835941))

(assert (= (and b!2835085 ((_ is Star!8413) (regOne!17339 (regTwo!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835942))

(assert (= (and b!2835085 ((_ is Union!8413) (regOne!17339 (regTwo!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835943))

(declare-fun b!2835944 () Bool)

(declare-fun e!1795762 () Bool)

(assert (=> b!2835944 (= e!1795762 tp_is_empty!14591)))

(declare-fun b!2835945 () Bool)

(declare-fun tp!906956 () Bool)

(declare-fun tp!906958 () Bool)

(assert (=> b!2835945 (= e!1795762 (and tp!906956 tp!906958))))

(declare-fun b!2835946 () Bool)

(declare-fun tp!906954 () Bool)

(assert (=> b!2835946 (= e!1795762 tp!906954)))

(assert (=> b!2835085 (= tp!906654 e!1795762)))

(declare-fun b!2835947 () Bool)

(declare-fun tp!906957 () Bool)

(declare-fun tp!906955 () Bool)

(assert (=> b!2835947 (= e!1795762 (and tp!906957 tp!906955))))

(assert (= (and b!2835085 ((_ is ElementMatch!8413) (regTwo!17339 (regTwo!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835944))

(assert (= (and b!2835085 ((_ is Concat!13666) (regTwo!17339 (regTwo!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835945))

(assert (= (and b!2835085 ((_ is Star!8413) (regTwo!17339 (regTwo!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835946))

(assert (= (and b!2835085 ((_ is Union!8413) (regTwo!17339 (regTwo!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835947))

(declare-fun b!2835948 () Bool)

(declare-fun e!1795763 () Bool)

(assert (=> b!2835948 (= e!1795763 tp_is_empty!14591)))

(declare-fun b!2835949 () Bool)

(declare-fun tp!906961 () Bool)

(declare-fun tp!906963 () Bool)

(assert (=> b!2835949 (= e!1795763 (and tp!906961 tp!906963))))

(declare-fun b!2835950 () Bool)

(declare-fun tp!906959 () Bool)

(assert (=> b!2835950 (= e!1795763 tp!906959)))

(assert (=> b!2835122 (= tp!906696 e!1795763)))

(declare-fun b!2835951 () Bool)

(declare-fun tp!906962 () Bool)

(declare-fun tp!906960 () Bool)

(assert (=> b!2835951 (= e!1795763 (and tp!906962 tp!906960))))

(assert (= (and b!2835122 ((_ is ElementMatch!8413) (reg!8742 (reg!8742 (regex!5022 (h!38888 rules!1047)))))) b!2835948))

(assert (= (and b!2835122 ((_ is Concat!13666) (reg!8742 (reg!8742 (regex!5022 (h!38888 rules!1047)))))) b!2835949))

(assert (= (and b!2835122 ((_ is Star!8413) (reg!8742 (reg!8742 (regex!5022 (h!38888 rules!1047)))))) b!2835950))

(assert (= (and b!2835122 ((_ is Union!8413) (reg!8742 (reg!8742 (regex!5022 (h!38888 rules!1047)))))) b!2835951))

(declare-fun b!2835952 () Bool)

(declare-fun e!1795764 () Bool)

(assert (=> b!2835952 (= e!1795764 tp_is_empty!14591)))

(declare-fun b!2835953 () Bool)

(declare-fun tp!906966 () Bool)

(declare-fun tp!906968 () Bool)

(assert (=> b!2835953 (= e!1795764 (and tp!906966 tp!906968))))

(declare-fun b!2835954 () Bool)

(declare-fun tp!906964 () Bool)

(assert (=> b!2835954 (= e!1795764 tp!906964)))

(assert (=> b!2835145 (= tp!906720 e!1795764)))

(declare-fun b!2835955 () Bool)

(declare-fun tp!906967 () Bool)

(declare-fun tp!906965 () Bool)

(assert (=> b!2835955 (= e!1795764 (and tp!906967 tp!906965))))

(assert (= (and b!2835145 ((_ is ElementMatch!8413) (reg!8742 (regOne!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835952))

(assert (= (and b!2835145 ((_ is Concat!13666) (reg!8742 (regOne!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835953))

(assert (= (and b!2835145 ((_ is Star!8413) (reg!8742 (regOne!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835954))

(assert (= (and b!2835145 ((_ is Union!8413) (reg!8742 (regOne!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835955))

(declare-fun b!2835956 () Bool)

(declare-fun e!1795765 () Bool)

(assert (=> b!2835956 (= e!1795765 tp_is_empty!14591)))

(declare-fun b!2835957 () Bool)

(declare-fun tp!906971 () Bool)

(declare-fun tp!906973 () Bool)

(assert (=> b!2835957 (= e!1795765 (and tp!906971 tp!906973))))

(declare-fun b!2835958 () Bool)

(declare-fun tp!906969 () Bool)

(assert (=> b!2835958 (= e!1795765 tp!906969)))

(assert (=> b!2835136 (= tp!906712 e!1795765)))

(declare-fun b!2835959 () Bool)

(declare-fun tp!906972 () Bool)

(declare-fun tp!906970 () Bool)

(assert (=> b!2835959 (= e!1795765 (and tp!906972 tp!906970))))

(assert (= (and b!2835136 ((_ is ElementMatch!8413) (regOne!17338 (regOne!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835956))

(assert (= (and b!2835136 ((_ is Concat!13666) (regOne!17338 (regOne!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835957))

(assert (= (and b!2835136 ((_ is Star!8413) (regOne!17338 (regOne!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835958))

(assert (= (and b!2835136 ((_ is Union!8413) (regOne!17338 (regOne!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835959))

(declare-fun b!2835960 () Bool)

(declare-fun e!1795766 () Bool)

(assert (=> b!2835960 (= e!1795766 tp_is_empty!14591)))

(declare-fun b!2835961 () Bool)

(declare-fun tp!906976 () Bool)

(declare-fun tp!906978 () Bool)

(assert (=> b!2835961 (= e!1795766 (and tp!906976 tp!906978))))

(declare-fun b!2835962 () Bool)

(declare-fun tp!906974 () Bool)

(assert (=> b!2835962 (= e!1795766 tp!906974)))

(assert (=> b!2835136 (= tp!906714 e!1795766)))

(declare-fun b!2835963 () Bool)

(declare-fun tp!906977 () Bool)

(declare-fun tp!906975 () Bool)

(assert (=> b!2835963 (= e!1795766 (and tp!906977 tp!906975))))

(assert (= (and b!2835136 ((_ is ElementMatch!8413) (regTwo!17338 (regOne!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835960))

(assert (= (and b!2835136 ((_ is Concat!13666) (regTwo!17338 (regOne!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835961))

(assert (= (and b!2835136 ((_ is Star!8413) (regTwo!17338 (regOne!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835962))

(assert (= (and b!2835136 ((_ is Union!8413) (regTwo!17338 (regOne!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835963))

(declare-fun b!2835964 () Bool)

(declare-fun e!1795767 () Bool)

(assert (=> b!2835964 (= e!1795767 tp_is_empty!14591)))

(declare-fun b!2835965 () Bool)

(declare-fun tp!906981 () Bool)

(declare-fun tp!906983 () Bool)

(assert (=> b!2835965 (= e!1795767 (and tp!906981 tp!906983))))

(declare-fun b!2835966 () Bool)

(declare-fun tp!906979 () Bool)

(assert (=> b!2835966 (= e!1795767 tp!906979)))

(assert (=> b!2835138 (= tp!906713 e!1795767)))

(declare-fun b!2835967 () Bool)

(declare-fun tp!906982 () Bool)

(declare-fun tp!906980 () Bool)

(assert (=> b!2835967 (= e!1795767 (and tp!906982 tp!906980))))

(assert (= (and b!2835138 ((_ is ElementMatch!8413) (regOne!17339 (regOne!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835964))

(assert (= (and b!2835138 ((_ is Concat!13666) (regOne!17339 (regOne!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835965))

(assert (= (and b!2835138 ((_ is Star!8413) (regOne!17339 (regOne!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835966))

(assert (= (and b!2835138 ((_ is Union!8413) (regOne!17339 (regOne!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835967))

(declare-fun b!2835968 () Bool)

(declare-fun e!1795768 () Bool)

(assert (=> b!2835968 (= e!1795768 tp_is_empty!14591)))

(declare-fun b!2835969 () Bool)

(declare-fun tp!906986 () Bool)

(declare-fun tp!906988 () Bool)

(assert (=> b!2835969 (= e!1795768 (and tp!906986 tp!906988))))

(declare-fun b!2835970 () Bool)

(declare-fun tp!906984 () Bool)

(assert (=> b!2835970 (= e!1795768 tp!906984)))

(assert (=> b!2835138 (= tp!906711 e!1795768)))

(declare-fun b!2835971 () Bool)

(declare-fun tp!906987 () Bool)

(declare-fun tp!906985 () Bool)

(assert (=> b!2835971 (= e!1795768 (and tp!906987 tp!906985))))

(assert (= (and b!2835138 ((_ is ElementMatch!8413) (regTwo!17339 (regOne!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835968))

(assert (= (and b!2835138 ((_ is Concat!13666) (regTwo!17339 (regOne!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835969))

(assert (= (and b!2835138 ((_ is Star!8413) (regTwo!17339 (regOne!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835970))

(assert (= (and b!2835138 ((_ is Union!8413) (regTwo!17339 (regOne!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835971))

(declare-fun b!2835972 () Bool)

(declare-fun e!1795769 () Bool)

(assert (=> b!2835972 (= e!1795769 tp_is_empty!14591)))

(declare-fun b!2835973 () Bool)

(declare-fun tp!906991 () Bool)

(declare-fun tp!906993 () Bool)

(assert (=> b!2835973 (= e!1795769 (and tp!906991 tp!906993))))

(declare-fun b!2835974 () Bool)

(declare-fun tp!906989 () Bool)

(assert (=> b!2835974 (= e!1795769 tp!906989)))

(assert (=> b!2835104 (= tp!906680 e!1795769)))

(declare-fun b!2835975 () Bool)

(declare-fun tp!906992 () Bool)

(declare-fun tp!906990 () Bool)

(assert (=> b!2835975 (= e!1795769 (and tp!906992 tp!906990))))

(assert (= (and b!2835104 ((_ is ElementMatch!8413) (regOne!17339 (regex!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) b!2835972))

(assert (= (and b!2835104 ((_ is Concat!13666) (regOne!17339 (regex!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) b!2835973))

(assert (= (and b!2835104 ((_ is Star!8413) (regOne!17339 (regex!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) b!2835974))

(assert (= (and b!2835104 ((_ is Union!8413) (regOne!17339 (regex!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) b!2835975))

(declare-fun b!2835976 () Bool)

(declare-fun e!1795770 () Bool)

(assert (=> b!2835976 (= e!1795770 tp_is_empty!14591)))

(declare-fun b!2835977 () Bool)

(declare-fun tp!906996 () Bool)

(declare-fun tp!906998 () Bool)

(assert (=> b!2835977 (= e!1795770 (and tp!906996 tp!906998))))

(declare-fun b!2835978 () Bool)

(declare-fun tp!906994 () Bool)

(assert (=> b!2835978 (= e!1795770 tp!906994)))

(assert (=> b!2835104 (= tp!906678 e!1795770)))

(declare-fun b!2835979 () Bool)

(declare-fun tp!906997 () Bool)

(declare-fun tp!906995 () Bool)

(assert (=> b!2835979 (= e!1795770 (and tp!906997 tp!906995))))

(assert (= (and b!2835104 ((_ is ElementMatch!8413) (regTwo!17339 (regex!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) b!2835976))

(assert (= (and b!2835104 ((_ is Concat!13666) (regTwo!17339 (regex!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) b!2835977))

(assert (= (and b!2835104 ((_ is Star!8413) (regTwo!17339 (regex!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) b!2835978))

(assert (= (and b!2835104 ((_ is Union!8413) (regTwo!17339 (regex!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) b!2835979))

(declare-fun b!2835984 () Bool)

(declare-fun e!1795774 () Bool)

(assert (=> b!2835984 (= e!1795774 tp_is_empty!14591)))

(declare-fun b!2835985 () Bool)

(declare-fun tp!907001 () Bool)

(declare-fun tp!907003 () Bool)

(assert (=> b!2835985 (= e!1795774 (and tp!907001 tp!907003))))

(declare-fun b!2835986 () Bool)

(declare-fun tp!906999 () Bool)

(assert (=> b!2835986 (= e!1795774 tp!906999)))

(assert (=> b!2835095 (= tp!906667 e!1795774)))

(declare-fun b!2835987 () Bool)

(declare-fun tp!907002 () Bool)

(declare-fun tp!907000 () Bool)

(assert (=> b!2835987 (= e!1795774 (and tp!907002 tp!907000))))

(assert (= (and b!2835095 ((_ is ElementMatch!8413) (reg!8742 (regOne!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835984))

(assert (= (and b!2835095 ((_ is Concat!13666) (reg!8742 (regOne!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835985))

(assert (= (and b!2835095 ((_ is Star!8413) (reg!8742 (regOne!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835986))

(assert (= (and b!2835095 ((_ is Union!8413) (reg!8742 (regOne!17339 (regex!5022 (h!38888 rules!1047)))))) b!2835987))

(declare-fun b!2835988 () Bool)

(declare-fun e!1795775 () Bool)

(assert (=> b!2835988 (= e!1795775 tp_is_empty!14591)))

(declare-fun b!2835989 () Bool)

(declare-fun tp!907006 () Bool)

(declare-fun tp!907008 () Bool)

(assert (=> b!2835989 (= e!1795775 (and tp!907006 tp!907008))))

(declare-fun b!2835990 () Bool)

(declare-fun tp!907004 () Bool)

(assert (=> b!2835990 (= e!1795775 tp!907004)))

(assert (=> b!2835128 (= tp!906705 e!1795775)))

(declare-fun b!2835991 () Bool)

(declare-fun tp!907007 () Bool)

(declare-fun tp!907005 () Bool)

(assert (=> b!2835991 (= e!1795775 (and tp!907007 tp!907005))))

(assert (= (and b!2835128 ((_ is ElementMatch!8413) (regOne!17339 (reg!8742 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835988))

(assert (= (and b!2835128 ((_ is Concat!13666) (regOne!17339 (reg!8742 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835989))

(assert (= (and b!2835128 ((_ is Star!8413) (regOne!17339 (reg!8742 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835990))

(assert (= (and b!2835128 ((_ is Union!8413) (regOne!17339 (reg!8742 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835991))

(declare-fun b!2835992 () Bool)

(declare-fun e!1795776 () Bool)

(assert (=> b!2835992 (= e!1795776 tp_is_empty!14591)))

(declare-fun b!2835993 () Bool)

(declare-fun tp!907011 () Bool)

(declare-fun tp!907013 () Bool)

(assert (=> b!2835993 (= e!1795776 (and tp!907011 tp!907013))))

(declare-fun b!2835994 () Bool)

(declare-fun tp!907009 () Bool)

(assert (=> b!2835994 (= e!1795776 tp!907009)))

(assert (=> b!2835128 (= tp!906703 e!1795776)))

(declare-fun b!2835995 () Bool)

(declare-fun tp!907012 () Bool)

(declare-fun tp!907010 () Bool)

(assert (=> b!2835995 (= e!1795776 (and tp!907012 tp!907010))))

(assert (= (and b!2835128 ((_ is ElementMatch!8413) (regTwo!17339 (reg!8742 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835992))

(assert (= (and b!2835128 ((_ is Concat!13666) (regTwo!17339 (reg!8742 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835993))

(assert (= (and b!2835128 ((_ is Star!8413) (regTwo!17339 (reg!8742 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835994))

(assert (= (and b!2835128 ((_ is Union!8413) (regTwo!17339 (reg!8742 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2835995))

(declare-fun b!2835996 () Bool)

(declare-fun e!1795777 () Bool)

(assert (=> b!2835996 (= e!1795777 tp_is_empty!14591)))

(declare-fun b!2835997 () Bool)

(declare-fun tp!907016 () Bool)

(declare-fun tp!907018 () Bool)

(assert (=> b!2835997 (= e!1795777 (and tp!907016 tp!907018))))

(declare-fun b!2835998 () Bool)

(declare-fun tp!907014 () Bool)

(assert (=> b!2835998 (= e!1795777 tp!907014)))

(assert (=> b!2835080 (= tp!906648 e!1795777)))

(declare-fun b!2835999 () Bool)

(declare-fun tp!907017 () Bool)

(declare-fun tp!907015 () Bool)

(assert (=> b!2835999 (= e!1795777 (and tp!907017 tp!907015))))

(assert (= (and b!2835080 ((_ is ElementMatch!8413) (reg!8742 (regOne!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835996))

(assert (= (and b!2835080 ((_ is Concat!13666) (reg!8742 (regOne!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835997))

(assert (= (and b!2835080 ((_ is Star!8413) (reg!8742 (regOne!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835998))

(assert (= (and b!2835080 ((_ is Union!8413) (reg!8742 (regOne!17338 (regex!5022 (h!38888 rules!1047)))))) b!2835999))

(declare-fun b!2836000 () Bool)

(declare-fun e!1795778 () Bool)

(assert (=> b!2836000 (= e!1795778 tp_is_empty!14591)))

(declare-fun b!2836001 () Bool)

(declare-fun tp!907021 () Bool)

(declare-fun tp!907023 () Bool)

(assert (=> b!2836001 (= e!1795778 (and tp!907021 tp!907023))))

(declare-fun b!2836002 () Bool)

(declare-fun tp!907019 () Bool)

(assert (=> b!2836002 (= e!1795778 tp!907019)))

(assert (=> b!2835149 (= tp!906725 e!1795778)))

(declare-fun b!2836003 () Bool)

(declare-fun tp!907022 () Bool)

(declare-fun tp!907020 () Bool)

(assert (=> b!2836003 (= e!1795778 (and tp!907022 tp!907020))))

(assert (= (and b!2835149 ((_ is ElementMatch!8413) (reg!8742 (regTwo!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836000))

(assert (= (and b!2835149 ((_ is Concat!13666) (reg!8742 (regTwo!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836001))

(assert (= (and b!2835149 ((_ is Star!8413) (reg!8742 (regTwo!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836002))

(assert (= (and b!2835149 ((_ is Union!8413) (reg!8742 (regTwo!17338 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836003))

(declare-fun b!2836004 () Bool)

(declare-fun e!1795779 () Bool)

(assert (=> b!2836004 (= e!1795779 tp_is_empty!14591)))

(declare-fun b!2836005 () Bool)

(declare-fun tp!907026 () Bool)

(declare-fun tp!907028 () Bool)

(assert (=> b!2836005 (= e!1795779 (and tp!907026 tp!907028))))

(declare-fun b!2836006 () Bool)

(declare-fun tp!907024 () Bool)

(assert (=> b!2836006 (= e!1795779 tp!907024)))

(assert (=> b!2835140 (= tp!906717 e!1795779)))

(declare-fun b!2836007 () Bool)

(declare-fun tp!907027 () Bool)

(declare-fun tp!907025 () Bool)

(assert (=> b!2836007 (= e!1795779 (and tp!907027 tp!907025))))

(assert (= (and b!2835140 ((_ is ElementMatch!8413) (regOne!17338 (regTwo!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836004))

(assert (= (and b!2835140 ((_ is Concat!13666) (regOne!17338 (regTwo!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836005))

(assert (= (and b!2835140 ((_ is Star!8413) (regOne!17338 (regTwo!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836006))

(assert (= (and b!2835140 ((_ is Union!8413) (regOne!17338 (regTwo!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836007))

(declare-fun b!2836008 () Bool)

(declare-fun e!1795780 () Bool)

(assert (=> b!2836008 (= e!1795780 tp_is_empty!14591)))

(declare-fun b!2836009 () Bool)

(declare-fun tp!907031 () Bool)

(declare-fun tp!907033 () Bool)

(assert (=> b!2836009 (= e!1795780 (and tp!907031 tp!907033))))

(declare-fun b!2836010 () Bool)

(declare-fun tp!907029 () Bool)

(assert (=> b!2836010 (= e!1795780 tp!907029)))

(assert (=> b!2835140 (= tp!906719 e!1795780)))

(declare-fun b!2836011 () Bool)

(declare-fun tp!907032 () Bool)

(declare-fun tp!907030 () Bool)

(assert (=> b!2836011 (= e!1795780 (and tp!907032 tp!907030))))

(assert (= (and b!2835140 ((_ is ElementMatch!8413) (regTwo!17338 (regTwo!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836008))

(assert (= (and b!2835140 ((_ is Concat!13666) (regTwo!17338 (regTwo!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836009))

(assert (= (and b!2835140 ((_ is Star!8413) (regTwo!17338 (regTwo!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836010))

(assert (= (and b!2835140 ((_ is Union!8413) (regTwo!17338 (regTwo!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836011))

(declare-fun b!2836012 () Bool)

(declare-fun e!1795781 () Bool)

(assert (=> b!2836012 (= e!1795781 tp_is_empty!14591)))

(declare-fun b!2836013 () Bool)

(declare-fun tp!907036 () Bool)

(declare-fun tp!907038 () Bool)

(assert (=> b!2836013 (= e!1795781 (and tp!907036 tp!907038))))

(declare-fun b!2836014 () Bool)

(declare-fun tp!907034 () Bool)

(assert (=> b!2836014 (= e!1795781 tp!907034)))

(assert (=> b!2835087 (= tp!906658 e!1795781)))

(declare-fun b!2836015 () Bool)

(declare-fun tp!907037 () Bool)

(declare-fun tp!907035 () Bool)

(assert (=> b!2836015 (= e!1795781 (and tp!907037 tp!907035))))

(assert (= (and b!2835087 ((_ is ElementMatch!8413) (regex!5022 (h!38888 (t!231785 (t!231785 rules!1047)))))) b!2836012))

(assert (= (and b!2835087 ((_ is Concat!13666) (regex!5022 (h!38888 (t!231785 (t!231785 rules!1047)))))) b!2836013))

(assert (= (and b!2835087 ((_ is Star!8413) (regex!5022 (h!38888 (t!231785 (t!231785 rules!1047)))))) b!2836014))

(assert (= (and b!2835087 ((_ is Union!8413) (regex!5022 (h!38888 (t!231785 (t!231785 rules!1047)))))) b!2836015))

(declare-fun b!2836016 () Bool)

(declare-fun e!1795782 () Bool)

(assert (=> b!2836016 (= e!1795782 tp_is_empty!14591)))

(declare-fun b!2836017 () Bool)

(declare-fun tp!907041 () Bool)

(declare-fun tp!907043 () Bool)

(assert (=> b!2836017 (= e!1795782 (and tp!907041 tp!907043))))

(declare-fun b!2836018 () Bool)

(declare-fun tp!907039 () Bool)

(assert (=> b!2836018 (= e!1795782 tp!907039)))

(assert (=> b!2835102 (= tp!906679 e!1795782)))

(declare-fun b!2836019 () Bool)

(declare-fun tp!907042 () Bool)

(declare-fun tp!907040 () Bool)

(assert (=> b!2836019 (= e!1795782 (and tp!907042 tp!907040))))

(assert (= (and b!2835102 ((_ is ElementMatch!8413) (regOne!17338 (regex!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) b!2836016))

(assert (= (and b!2835102 ((_ is Concat!13666) (regOne!17338 (regex!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) b!2836017))

(assert (= (and b!2835102 ((_ is Star!8413) (regOne!17338 (regex!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) b!2836018))

(assert (= (and b!2835102 ((_ is Union!8413) (regOne!17338 (regex!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) b!2836019))

(declare-fun b!2836020 () Bool)

(declare-fun e!1795783 () Bool)

(assert (=> b!2836020 (= e!1795783 tp_is_empty!14591)))

(declare-fun b!2836021 () Bool)

(declare-fun tp!907046 () Bool)

(declare-fun tp!907048 () Bool)

(assert (=> b!2836021 (= e!1795783 (and tp!907046 tp!907048))))

(declare-fun b!2836022 () Bool)

(declare-fun tp!907044 () Bool)

(assert (=> b!2836022 (= e!1795783 tp!907044)))

(assert (=> b!2835102 (= tp!906681 e!1795783)))

(declare-fun b!2836023 () Bool)

(declare-fun tp!907047 () Bool)

(declare-fun tp!907045 () Bool)

(assert (=> b!2836023 (= e!1795783 (and tp!907047 tp!907045))))

(assert (= (and b!2835102 ((_ is ElementMatch!8413) (regTwo!17338 (regex!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) b!2836020))

(assert (= (and b!2835102 ((_ is Concat!13666) (regTwo!17338 (regex!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) b!2836021))

(assert (= (and b!2835102 ((_ is Star!8413) (regTwo!17338 (regex!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) b!2836022))

(assert (= (and b!2835102 ((_ is Union!8413) (regTwo!17338 (regex!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) b!2836023))

(declare-fun b!2836024 () Bool)

(declare-fun e!1795784 () Bool)

(assert (=> b!2836024 (= e!1795784 tp_is_empty!14591)))

(declare-fun b!2836025 () Bool)

(declare-fun tp!907051 () Bool)

(declare-fun tp!907053 () Bool)

(assert (=> b!2836025 (= e!1795784 (and tp!907051 tp!907053))))

(declare-fun b!2836026 () Bool)

(declare-fun tp!907049 () Bool)

(assert (=> b!2836026 (= e!1795784 tp!907049)))

(assert (=> b!2835126 (= tp!906704 e!1795784)))

(declare-fun b!2836027 () Bool)

(declare-fun tp!907052 () Bool)

(declare-fun tp!907050 () Bool)

(assert (=> b!2836027 (= e!1795784 (and tp!907052 tp!907050))))

(assert (= (and b!2835126 ((_ is ElementMatch!8413) (regOne!17338 (reg!8742 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836024))

(assert (= (and b!2835126 ((_ is Concat!13666) (regOne!17338 (reg!8742 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836025))

(assert (= (and b!2835126 ((_ is Star!8413) (regOne!17338 (reg!8742 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836026))

(assert (= (and b!2835126 ((_ is Union!8413) (regOne!17338 (reg!8742 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836027))

(declare-fun b!2836028 () Bool)

(declare-fun e!1795785 () Bool)

(assert (=> b!2836028 (= e!1795785 tp_is_empty!14591)))

(declare-fun b!2836029 () Bool)

(declare-fun tp!907056 () Bool)

(declare-fun tp!907058 () Bool)

(assert (=> b!2836029 (= e!1795785 (and tp!907056 tp!907058))))

(declare-fun b!2836030 () Bool)

(declare-fun tp!907054 () Bool)

(assert (=> b!2836030 (= e!1795785 tp!907054)))

(assert (=> b!2835126 (= tp!906706 e!1795785)))

(declare-fun b!2836031 () Bool)

(declare-fun tp!907057 () Bool)

(declare-fun tp!907055 () Bool)

(assert (=> b!2836031 (= e!1795785 (and tp!907057 tp!907055))))

(assert (= (and b!2835126 ((_ is ElementMatch!8413) (regTwo!17338 (reg!8742 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836028))

(assert (= (and b!2835126 ((_ is Concat!13666) (regTwo!17338 (reg!8742 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836029))

(assert (= (and b!2835126 ((_ is Star!8413) (regTwo!17338 (reg!8742 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836030))

(assert (= (and b!2835126 ((_ is Union!8413) (regTwo!17338 (reg!8742 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836031))

(declare-fun b!2836032 () Bool)

(declare-fun e!1795786 () Bool)

(assert (=> b!2836032 (= e!1795786 tp_is_empty!14591)))

(declare-fun b!2836033 () Bool)

(declare-fun tp!907061 () Bool)

(declare-fun tp!907063 () Bool)

(assert (=> b!2836033 (= e!1795786 (and tp!907061 tp!907063))))

(declare-fun b!2836034 () Bool)

(declare-fun tp!907059 () Bool)

(assert (=> b!2836034 (= e!1795786 tp!907059)))

(assert (=> b!2835142 (= tp!906718 e!1795786)))

(declare-fun b!2836035 () Bool)

(declare-fun tp!907062 () Bool)

(declare-fun tp!907060 () Bool)

(assert (=> b!2836035 (= e!1795786 (and tp!907062 tp!907060))))

(assert (= (and b!2835142 ((_ is ElementMatch!8413) (regOne!17339 (regTwo!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836032))

(assert (= (and b!2835142 ((_ is Concat!13666) (regOne!17339 (regTwo!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836033))

(assert (= (and b!2835142 ((_ is Star!8413) (regOne!17339 (regTwo!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836034))

(assert (= (and b!2835142 ((_ is Union!8413) (regOne!17339 (regTwo!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836035))

(declare-fun b!2836038 () Bool)

(declare-fun e!1795788 () Bool)

(assert (=> b!2836038 (= e!1795788 tp_is_empty!14591)))

(declare-fun b!2836039 () Bool)

(declare-fun tp!907066 () Bool)

(declare-fun tp!907068 () Bool)

(assert (=> b!2836039 (= e!1795788 (and tp!907066 tp!907068))))

(declare-fun b!2836040 () Bool)

(declare-fun tp!907064 () Bool)

(assert (=> b!2836040 (= e!1795788 tp!907064)))

(assert (=> b!2835142 (= tp!906716 e!1795788)))

(declare-fun b!2836041 () Bool)

(declare-fun tp!907067 () Bool)

(declare-fun tp!907065 () Bool)

(assert (=> b!2836041 (= e!1795788 (and tp!907067 tp!907065))))

(assert (= (and b!2835142 ((_ is ElementMatch!8413) (regTwo!17339 (regTwo!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836038))

(assert (= (and b!2835142 ((_ is Concat!13666) (regTwo!17339 (regTwo!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836039))

(assert (= (and b!2835142 ((_ is Star!8413) (regTwo!17339 (regTwo!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836040))

(assert (= (and b!2835142 ((_ is Union!8413) (regTwo!17339 (regTwo!17339 (regex!5022 (rule!7450 (h!38889 l!4019))))))) b!2836041))

(declare-fun b_lambda!85231 () Bool)

(assert (= b_lambda!85209 (or d!822521 b_lambda!85231)))

(declare-fun bs!518781 () Bool)

(declare-fun d!823097 () Bool)

(assert (= bs!518781 (and d!823097 d!822521)))

(assert (=> bs!518781 (= (dynLambda!14080 lambda!104122 (h!38889 (list!12507 (seqFromList!3268 l!4019)))) (rulesProduceIndividualToken!2142 thiss!11007 rules!1047 (h!38889 (list!12507 (seqFromList!3268 l!4019)))))))

(assert (=> bs!518781 m!3264401))

(assert (=> b!2835235 d!823097))

(declare-fun b_lambda!85233 () Bool)

(assert (= b_lambda!85211 (or (and b!2834778 b_free!81711 (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019)))))))) (and b!2835088 b_free!81727 (= (toChars!6919 (transformation!5022 (h!38888 (t!231785 (t!231785 rules!1047))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019)))))))) (and b!2834573 b_free!81695 (= (toChars!6919 (transformation!5022 (h!38888 rules!1047))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019)))))))) (and b!2834789 b_free!81715 (= (toChars!6919 (transformation!5022 (h!38888 (t!231785 rules!1047)))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019)))))))) (and b!2835108 b_free!81731) (and b!2835858 b_free!81739 (= (toChars!6919 (transformation!5022 (h!38888 (t!231785 (t!231785 (t!231785 rules!1047)))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019)))))))) (and b!2834564 b_free!81699 (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019)))))))) (and b!2835762 b_free!81735 (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 (t!231786 l!4019))))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019)))))))) b_lambda!85233)))

(declare-fun b_lambda!85235 () Bool)

(assert (= b_lambda!85179 (or (and b!2835088 b_free!81727 (= (toChars!6919 (transformation!5022 (h!38888 (t!231785 (t!231785 rules!1047))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) (and b!2835108 b_free!81731 (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019)))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) (and b!2835762 b_free!81735 (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 (t!231786 l!4019))))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) (and b!2835858 b_free!81739 (= (toChars!6919 (transformation!5022 (h!38888 (t!231785 (t!231785 (t!231785 rules!1047)))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 l!4019))))))) b_lambda!85235)))

(declare-fun b_lambda!85237 () Bool)

(assert (= b_lambda!85217 (or d!822457 b_lambda!85237)))

(declare-fun bs!518782 () Bool)

(declare-fun d!823099 () Bool)

(assert (= bs!518782 (and d!823099 d!822457)))

(assert (=> bs!518782 (= (dynLambda!14080 lambda!104115 (h!38889 (t!231786 l!4019))) (rulesProduceIndividualToken!2142 thiss!11007 rules!1047 (h!38889 (t!231786 l!4019))))))

(assert (=> bs!518782 m!3264035))

(assert (=> b!2835326 d!823099))

(declare-fun b_lambda!85239 () Bool)

(assert (= b_lambda!85181 (or (and b!2835088 b_free!81727 (= (toChars!6919 (transformation!5022 (h!38888 (t!231785 (t!231785 rules!1047))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))))) (and b!2835108 b_free!81731 (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 l!4019)))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))))) (and b!2835762 b_free!81735 (= (toChars!6919 (transformation!5022 (rule!7450 (h!38889 (t!231786 (t!231786 (t!231786 l!4019))))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))))) (and b!2835858 b_free!81739 (= (toChars!6919 (transformation!5022 (h!38888 (t!231785 (t!231785 (t!231785 rules!1047)))))) (toChars!6919 (transformation!5022 (rule!7450 (h!38889 l!4019)))))) b_lambda!85239)))

(declare-fun b_lambda!85241 () Bool)

(assert (= b_lambda!85219 (or d!822403 b_lambda!85241)))

(declare-fun bs!518783 () Bool)

(declare-fun d!823101 () Bool)

(assert (= bs!518783 (and d!823101 d!822403)))

(assert (=> bs!518783 (= (dynLambda!14080 lambda!104112 (h!38889 (t!231786 (list!12507 (seqFromList!3268 l!4019))))) (rulesProduceIndividualToken!2142 thiss!11007 rules!1047 (h!38889 (t!231786 (list!12507 (seqFromList!3268 l!4019))))))))

(assert (=> bs!518783 m!3265927))

(assert (=> b!2835379 d!823101))

(declare-fun b_lambda!85243 () Bool)

(assert (= b_lambda!85223 (or d!822487 b_lambda!85243)))

(declare-fun bs!518784 () Bool)

(declare-fun d!823105 () Bool)

(assert (= bs!518784 (and d!823105 d!822487)))

(assert (=> bs!518784 (= (dynLambda!14083 lambda!104118 (h!38888 rules!1047)) (ruleValid!1603 thiss!11007 (h!38888 rules!1047)))))

(assert (=> bs!518784 m!3265889))

(assert (=> b!2835684 d!823105))

(declare-fun b_lambda!85245 () Bool)

(assert (= b_lambda!85229 (or d!822629 b_lambda!85245)))

(declare-fun bs!518786 () Bool)

(declare-fun d!823107 () Bool)

(assert (= bs!518786 (and d!823107 d!822629)))

(assert (=> bs!518786 (= (dynLambda!14080 lambda!104131 (h!38889 (t!231786 l!4019))) (rulesProduceIndividualToken!2142 thiss!11007 rules!1047 (h!38889 (t!231786 l!4019))))))

(assert (=> bs!518786 m!3264035))

(assert (=> b!2835727 d!823107))

(check-sat (not b!2835770) (not b_next!82443) (not b!2835624) (not b_lambda!85241) (not b!2835865) (not b!2835797) (not b!2835605) (not b!2835959) (not b!2836039) (not d!823035) (not b!2835589) (not b!2835843) (not b!2835630) (not b_lambda!85231) (not b!2835483) (not b!2835760) (not d!822925) (not b!2835810) (not b!2835790) (not b!2835763) (not d!822811) (not b!2835913) (not b!2835609) b_and!207587 (not b!2835969) (not b!2835623) (not d!822885) (not b!2835382) (not b!2835856) (not b!2835963) (not b!2835586) (not b!2836026) (not b!2835635) (not b!2835995) (not b!2835706) (not b!2835357) (not b!2835857) (not d!822713) (not bm!183283) (not d!822751) (not b!2835833) b_and!207565 (not b!2835947) (not d!822995) (not b!2835850) (not b!2835380) (not d!822843) (not b!2835397) (not b!2835994) (not b!2835522) (not b_lambda!85245) (not b!2835793) (not b!2835236) (not b!2835922) (not b!2836029) (not d!822965) (not b!2835791) (not b!2835993) (not b_next!82437) (not b!2835361) (not b!2835344) b_and!207589 (not b!2835974) (not b!2835870) (not b!2835877) (not b!2836025) (not b!2835466) (not b!2835908) (not b!2835597) b_and!207523 (not b!2835767) (not d!822875) (not b!2835590) (not b!2836010) (not b!2835752) (not b!2835931) (not d!822963) (not b_next!82401) (not d!823055) (not b!2835750) (not b_lambda!85243) (not b!2835733) (not b!2835646) (not b!2835831) (not b!2835888) b_and!207555 (not b_next!82433) (not bs!518783) (not b!2835468) (not b!2836040) (not b_next!82399) (not b!2835768) (not d!822841) (not b!2836007) (not b_next!82403) (not b!2835772) (not b!2835932) (not b!2835991) (not b!2835898) b_and!207495 (not b!2835937) (not b!2835773) (not b!2835979) (not d!822845) (not d!822819) (not b!2835246) (not b!2835896) (not d!822793) (not d!822971) (not b!2835912) (not b!2835621) (not b!2835967) (not b!2835728) (not b!2835917) (not d!822749) (not b_next!82429) (not d!822941) (not b!2835893) (not bm!183282) (not b!2835876) (not b!2835587) (not b!2835342) (not b!2835348) (not b!2835400) (not b!2835461) (not b!2835472) (not b!2835229) (not b!2835779) (not b!2835761) (not b!2835978) (not b!2835634) (not b!2835343) (not b!2835238) (not b!2835987) (not b!2836014) (not b!2835985) (not b!2835950) (not b!2835989) (not d!822957) (not b_next!82439) (not b!2835953) (not d!822921) (not d!822853) (not b!2835803) (not b!2836006) (not b!2835601) (not b!2835818) (not b!2835591) (not b!2835381) (not d!822849) (not b!2835814) (not b!2835830) (not b_next!82417) (not d!822879) (not b!2835227) (not d!822953) (not b!2835484) (not b!2835900) (not b!2835998) (not b_next!82415) (not b!2835774) (not b!2835837) (not b!2835628) (not d!822735) (not b!2835822) (not b!2835910) (not b!2835666) (not b!2835778) (not b!2835855) (not b!2835965) (not b!2835180) (not b!2835544) b_and!207591 (not b!2835954) (not b!2835834) (not b!2835884) (not b!2835667) (not b!2835454) (not b!2835689) (not d!822691) (not b!2835744) (not b!2835746) (not b!2835949) (not b!2835524) (not b!2835398) (not d!822697) (not b!2835708) (not b!2836019) (not b!2836021) (not b!2835742) (not b!2835951) (not b!2835874) (not b!2835432) b_and!207491 (not b_lambda!85237) (not d!823031) (not b!2835807) (not b!2835868) (not b!2836022) (not b_next!82441) (not b!2835516) (not b!2835897) (not d!822703) (not b!2835929) (not b!2835789) b_and!207593 (not b!2835787) (not b!2835873) (not b!2835319) (not b!2836011) (not b!2835785) (not b!2835353) (not b!2835939) (not b!2835764) (not b!2835543) (not b_lambda!85205) (not b!2835588) (not b!2835862) (not b_lambda!85233) (not d!822801) (not b!2835866) (not b!2835178) (not b!2835608) (not d!822757) (not d!823033) (not d!822903) (not d!822873) (not b_next!82413) (not b!2836033) (not d!822799) (not b!2835815) (not d!822809) (not b!2836002) (not b!2836035) (not b!2835973) (not d!822897) (not b!2835840) (not b!2835602) (not b!2835880) (not b_next!82431) (not b!2835839) (not d!822791) (not b!2835971) (not b!2835358) (not b!2836041) (not b!2835747) (not b!2835902) (not b!2835905) (not b!2835374) (not b!2835240) (not b!2835324) (not b!2835132) (not d!822927) (not b!2835990) (not b!2835751) (not b!2835892) (not b!2835977) (not d!822997) (not b!2835889) (not b!2835943) (not d!822837) (not d!822967) (not b!2836027) (not b!2835860) (not b!2835606) (not b!2835958) (not b!2835420) (not b!2835794) (not b!2835363) (not d!822905) (not b!2835350) (not b!2835518) (not b!2836030) (not d!822755) (not b!2835352) (not d!822753) (not b!2835780) (not b!2835732) (not b!2835799) (not b!2835941) (not b!2835920) (not b!2835835) (not d!823029) b_and!207559 (not b!2835376) (not d!822929) (not d!822813) (not b!2835966) (not b!2835117) (not d!822807) (not b!2835945) (not b!2835890) (not b!2835821) (not b!2835710) (not b!2835975) (not d!822859) (not b!2835616) (not b!2835918) (not d!822737) (not b!2835997) (not b!2835341) (not b!2835853) (not b_lambda!85203) (not b!2835766) b_and!207567 (not b!2835354) (not b!2835885) (not bs!518786) (not d!822989) (not b!2835385) (not b!2835872) (not b!2835526) b_and!207527 (not b!2835786) (not b!2835771) (not b!2835629) (not b!2835585) (not b!2835549) (not b!2836015) (not b!2835355) (not b_lambda!85201) (not b!2835916) (not b!2835622) (not d!822985) (not b!2835320) (not b!2835933) (not b!2835325) (not b!2835360) (not d!822825) (not b!2835181) (not b!2835861) (not b!2835242) (not b!2835707) (not b!2835919) (not b!2835914) (not b!2835999) (not b!2835962) (not b!2835619) (not b!2835886) (not b!2835901) (not bs!518784) (not b!2835748) (not b!2835378) (not b!2835460) (not b!2835721) (not d!822701) (not b!2835801) (not b!2835245) (not b!2835327) (not b!2835970) (not b!2835709) (not d!822891) (not b!2835864) (not b!2835459) b_and!207573 (not b!2835715) (not b!2835811) (not b!2835798) (not b!2835881) (not b!2835627) (not b!2835431) (not b_next!82419) (not b!2835878) (not b!2835838) (not b!2835465) (not b!2835377) (not b!2835754) (not b!2835618) (not b!2835249) (not b!2836017) (not b!2835356) (not b!2835345) (not b!2836009) (not b!2835517) b_and!207571 (not b!2835340) (not b!2835243) (not d!822839) (not bs!518782) (not b!2835430) (not bs!518781) (not b_lambda!85239) (not b!2835239) (not b!2835375) (not b!2835756) (not b!2836023) (not b!2836013) (not d!822917) (not b_next!82397) (not b!2835813) (not tb!154437) (not b!2835921) (not b!2835946) (not b!2835942) (not b!2835915) (not b!2835386) (not b!2835781) (not b!2835598) (not b!2835986) (not d!823019) (not b!2835817) (not b!2835383) (not d!822975) (not d!822887) (not b!2835955) (not b!2835869) (not b!2836003) (not b!2835384) (not b!2835854) (not d!822693) (not b!2835714) (not b!2835904) (not b!2835237) (not d!822947) tp_is_empty!14591 (not b!2835809) (not b!2835690) (not b!2835499) (not b!2835755) (not b!2835851) (not b!2835540) (not b!2835909) (not b!2835819) (not b!2835957) (not b!2835734) (not d!822857) (not b!2835743) (not b!2835806) (not b!2835961) (not b!2835759) (not b!2835694) (not d!822689) (not b!2835938) (not b!2835805) (not b!2835455) (not b!2835795) (not b!2835685) (not b!2835620) (not b!2835849) (not d!822797) (not b!2836005) (not d!822959) (not b!2836034) (not b!2835906) (not b!2835731) (not d!822983) (not b!2835192) (not d!823049) (not b!2835480) (not b!2835359) (not b!2835829) (not b!2836031) (not b_next!82435) (not b!2835584) (not b!2836018) (not b!2836001) (not d!822991) b_and!207569 (not b!2835802) (not b!2835474) (not b!2835647) (not d!822803) (not b!2835592) (not b_lambda!85235) (not b!2835765) (not b!2835894) (not b!2835882) (not b!2835464) b_and!207563 (not d!822973) (not b!2835823))
(check-sat (not b_next!82443) b_and!207587 b_and!207565 b_and!207495 (not b_next!82429) b_and!207591 b_and!207559 b_and!207573 (not b_next!82397) (not b_next!82435) (not b_next!82437) b_and!207589 (not b_next!82401) b_and!207523 b_and!207555 (not b_next!82403) (not b_next!82433) (not b_next!82399) (not b_next!82439) (not b_next!82417) (not b_next!82415) b_and!207491 b_and!207593 (not b_next!82441) (not b_next!82413) (not b_next!82431) b_and!207527 b_and!207567 (not b_next!82419) b_and!207571 b_and!207569 b_and!207563)
