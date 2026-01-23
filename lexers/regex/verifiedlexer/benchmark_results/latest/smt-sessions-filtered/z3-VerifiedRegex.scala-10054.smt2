; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!526286 () Bool)

(assert start!526286)

(declare-fun b!4983600 () Bool)

(declare-fun b_free!133139 () Bool)

(declare-fun b_next!133929 () Bool)

(assert (=> b!4983600 (= b_free!133139 (not b_next!133929))))

(declare-fun tp!1396930 () Bool)

(declare-fun b_and!349735 () Bool)

(assert (=> b!4983600 (= tp!1396930 b_and!349735)))

(declare-fun b_free!133141 () Bool)

(declare-fun b_next!133931 () Bool)

(assert (=> b!4983600 (= b_free!133141 (not b_next!133931))))

(declare-fun tp!1396929 () Bool)

(declare-fun b_and!349737 () Bool)

(assert (=> b!4983600 (= tp!1396929 b_and!349737)))

(declare-fun b!4983610 () Bool)

(declare-fun e!3114733 () Bool)

(assert (=> b!4983610 (= e!3114733 true)))

(declare-fun b!4983609 () Bool)

(declare-fun e!3114732 () Bool)

(assert (=> b!4983609 (= e!3114732 e!3114733)))

(declare-fun b!4983593 () Bool)

(assert (=> b!4983593 e!3114732))

(assert (= b!4983609 b!4983610))

(assert (= b!4983593 b!4983609))

(declare-fun order!26535 () Int)

(declare-fun order!26533 () Int)

(declare-fun lambda!247918 () Int)

(declare-datatypes ((C!27636 0))(
  ( (C!27637 (val!23184 Int)) )
))
(declare-datatypes ((List!57716 0))(
  ( (Nil!57592) (Cons!57592 (h!64040 C!27636) (t!369880 List!57716)) )
))
(declare-datatypes ((IArray!30485 0))(
  ( (IArray!30486 (innerList!15300 List!57716)) )
))
(declare-datatypes ((List!57717 0))(
  ( (Nil!57593) (Cons!57593 (h!64041 (_ BitVec 16)) (t!369881 List!57717)) )
))
(declare-datatypes ((String!65723 0))(
  ( (String!65724 (value!270504 String)) )
))
(declare-datatypes ((Regex!13693 0))(
  ( (ElementMatch!13693 (c!850429 C!27636)) (Concat!22463 (regOne!27898 Regex!13693) (regTwo!27898 Regex!13693)) (EmptyExpr!13693) (Star!13693 (reg!14022 Regex!13693)) (EmptyLang!13693) (Union!13693 (regOne!27899 Regex!13693) (regTwo!27899 Regex!13693)) )
))
(declare-datatypes ((Conc!15212 0))(
  ( (Node!15212 (left!42108 Conc!15212) (right!42438 Conc!15212) (csize!30654 Int) (cheight!15423 Int)) (Leaf!25267 (xs!18538 IArray!30485) (csize!30655 Int)) (Empty!15212) )
))
(declare-datatypes ((BalanceConc!29854 0))(
  ( (BalanceConc!29855 (c!850430 Conc!15212)) )
))
(declare-datatypes ((TokenValue!8770 0))(
  ( (FloatLiteralValue!17540 (text!61835 List!57717)) (TokenValueExt!8769 (__x!34833 Int)) (Broken!43850 (value!270505 List!57717)) (Object!8893) (End!8770) (Def!8770) (Underscore!8770) (Match!8770) (Else!8770) (Error!8770) (Case!8770) (If!8770) (Extends!8770) (Abstract!8770) (Class!8770) (Val!8770) (DelimiterValue!17540 (del!8830 List!57717)) (KeywordValue!8776 (value!270506 List!57717)) (CommentValue!17540 (value!270507 List!57717)) (WhitespaceValue!17540 (value!270508 List!57717)) (IndentationValue!8770 (value!270509 List!57717)) (String!65725) (Int32!8770) (Broken!43851 (value!270510 List!57717)) (Boolean!8771) (Unit!148685) (OperatorValue!8773 (op!8830 List!57717)) (IdentifierValue!17540 (value!270511 List!57717)) (IdentifierValue!17541 (value!270512 List!57717)) (WhitespaceValue!17541 (value!270513 List!57717)) (True!17540) (False!17540) (Broken!43852 (value!270514 List!57717)) (Broken!43853 (value!270515 List!57717)) (True!17541) (RightBrace!8770) (RightBracket!8770) (Colon!8770) (Null!8770) (Comma!8770) (LeftBracket!8770) (False!17541) (LeftBrace!8770) (ImaginaryLiteralValue!8770 (text!61836 List!57717)) (StringLiteralValue!26310 (value!270516 List!57717)) (EOFValue!8770 (value!270517 List!57717)) (IdentValue!8770 (value!270518 List!57717)) (DelimiterValue!17541 (value!270519 List!57717)) (DedentValue!8770 (value!270520 List!57717)) (NewLineValue!8770 (value!270521 List!57717)) (IntegerValue!26310 (value!270522 (_ BitVec 32)) (text!61837 List!57717)) (IntegerValue!26311 (value!270523 Int) (text!61838 List!57717)) (Times!8770) (Or!8770) (Equal!8770) (Minus!8770) (Broken!43854 (value!270524 List!57717)) (And!8770) (Div!8770) (LessEqual!8770) (Mod!8770) (Concat!22464) (Not!8770) (Plus!8770) (SpaceValue!8770 (value!270525 List!57717)) (IntegerValue!26312 (value!270526 Int) (text!61839 List!57717)) (StringLiteralValue!26311 (text!61840 List!57717)) (FloatLiteralValue!17541 (text!61841 List!57717)) (BytesLiteralValue!8770 (value!270527 List!57717)) (CommentValue!17541 (value!270528 List!57717)) (StringLiteralValue!26312 (value!270529 List!57717)) (ErrorTokenValue!8770 (msg!8831 List!57717)) )
))
(declare-datatypes ((TokenValueInjection!16848 0))(
  ( (TokenValueInjection!16849 (toValue!11455 Int) (toChars!11314 Int)) )
))
(declare-datatypes ((Rule!16720 0))(
  ( (Rule!16721 (regex!8460 Regex!13693) (tag!9324 String!65723) (isSeparator!8460 Bool) (transformation!8460 TokenValueInjection!16848)) )
))
(declare-fun rule!200 () Rule!16720)

(declare-fun dynLambda!23387 (Int Int) Int)

(declare-fun dynLambda!23388 (Int Int) Int)

(assert (=> b!4983610 (< (dynLambda!23387 order!26533 (toValue!11455 (transformation!8460 rule!200))) (dynLambda!23388 order!26535 lambda!247918))))

(declare-fun order!26537 () Int)

(declare-fun dynLambda!23389 (Int Int) Int)

(assert (=> b!4983610 (< (dynLambda!23389 order!26537 (toChars!11314 (transformation!8460 rule!200))) (dynLambda!23388 order!26535 lambda!247918))))

(declare-fun b!4983588 () Bool)

(declare-fun e!3114725 () Bool)

(declare-fun e!3114723 () Bool)

(assert (=> b!4983588 (= e!3114725 e!3114723)))

(declare-fun res!2127391 () Bool)

(assert (=> b!4983588 (=> res!2127391 e!3114723)))

(declare-fun lt!2059168 () Bool)

(declare-datatypes ((Token!15376 0))(
  ( (Token!15377 (value!270530 TokenValue!8770) (rule!11718 Rule!16720) (size!38229 Int) (originalCharacters!8719 List!57716)) )
))
(declare-datatypes ((tuple2!62560 0))(
  ( (tuple2!62561 (_1!34583 Token!15376) (_2!34583 List!57716)) )
))
(declare-datatypes ((Option!14539 0))(
  ( (None!14538) (Some!14538 (v!50535 tuple2!62560)) )
))
(declare-fun lt!2059177 () Option!14539)

(declare-fun isDefined!11448 (Option!14539) Bool)

(assert (=> b!4983588 (= res!2127391 (not (= lt!2059168 (isDefined!11448 lt!2059177))))))

(declare-fun lt!2059172 () Int)

(declare-fun lt!2059167 () TokenValue!8770)

(declare-fun lt!2059178 () List!57716)

(declare-datatypes ((tuple2!62562 0))(
  ( (tuple2!62563 (_1!34584 BalanceConc!29854) (_2!34584 BalanceConc!29854)) )
))
(declare-fun lt!2059174 () tuple2!62562)

(declare-datatypes ((tuple2!62564 0))(
  ( (tuple2!62565 (_1!34585 Token!15376) (_2!34585 BalanceConc!29854)) )
))
(declare-datatypes ((Option!14540 0))(
  ( (None!14539) (Some!14539 (v!50536 tuple2!62564)) )
))
(declare-fun isDefined!11449 (Option!14540) Bool)

(assert (=> b!4983588 (= lt!2059168 (isDefined!11449 (Some!14539 (tuple2!62565 (Token!15377 lt!2059167 rule!200 lt!2059172 lt!2059178) (_2!34584 lt!2059174)))))))

(declare-fun lt!2059179 () List!57716)

(declare-datatypes ((LexerInterface!8052 0))(
  ( (LexerInterfaceExt!8049 (__x!34834 Int)) (Lexer!8050) )
))
(declare-fun thiss!16165 () LexerInterface!8052)

(declare-fun maxPrefixOneRule!3676 (LexerInterface!8052 Rule!16720 List!57716) Option!14539)

(assert (=> b!4983588 (= lt!2059177 (maxPrefixOneRule!3676 thiss!16165 rule!200 lt!2059179))))

(declare-fun size!38230 (BalanceConc!29854) Int)

(assert (=> b!4983588 (= lt!2059172 (size!38230 (_1!34584 lt!2059174)))))

(declare-fun apply!13947 (TokenValueInjection!16848 BalanceConc!29854) TokenValue!8770)

(assert (=> b!4983588 (= lt!2059167 (apply!13947 (transformation!8460 rule!200) (_1!34584 lt!2059174)))))

(declare-datatypes ((Unit!148686 0))(
  ( (Unit!148687) )
))
(declare-fun lt!2059173 () Unit!148686)

(declare-fun lt!2059175 () BalanceConc!29854)

(declare-fun ForallOf!1270 (Int BalanceConc!29854) Unit!148686)

(assert (=> b!4983588 (= lt!2059173 (ForallOf!1270 lambda!247918 lt!2059175))))

(declare-fun seqFromList!6081 (List!57716) BalanceConc!29854)

(assert (=> b!4983588 (= lt!2059175 (seqFromList!6081 lt!2059178))))

(declare-fun list!18472 (BalanceConc!29854) List!57716)

(assert (=> b!4983588 (= lt!2059178 (list!18472 (_1!34584 lt!2059174)))))

(declare-fun lt!2059176 () Unit!148686)

(assert (=> b!4983588 (= lt!2059176 (ForallOf!1270 lambda!247918 (_1!34584 lt!2059174)))))

(declare-fun res!2127392 () Bool)

(declare-fun e!3114721 () Bool)

(assert (=> start!526286 (=> (not res!2127392) (not e!3114721))))

(get-info :version)

(assert (=> start!526286 (= res!2127392 ((_ is Lexer!8050) thiss!16165))))

(assert (=> start!526286 e!3114721))

(assert (=> start!526286 true))

(declare-fun e!3114719 () Bool)

(assert (=> start!526286 e!3114719))

(declare-fun totalInput!520 () BalanceConc!29854)

(declare-fun e!3114726 () Bool)

(declare-fun inv!75454 (BalanceConc!29854) Bool)

(assert (=> start!526286 (and (inv!75454 totalInput!520) e!3114726)))

(declare-fun input!1580 () BalanceConc!29854)

(declare-fun e!3114718 () Bool)

(assert (=> start!526286 (and (inv!75454 input!1580) e!3114718)))

(declare-fun b!4983589 () Bool)

(declare-fun e!3114724 () Bool)

(declare-datatypes ((tuple2!62566 0))(
  ( (tuple2!62567 (_1!34586 List!57716) (_2!34586 List!57716)) )
))
(declare-fun lt!2059169 () tuple2!62566)

(declare-fun matchR!6687 (Regex!13693 List!57716) Bool)

(assert (=> b!4983589 (= e!3114724 (matchR!6687 (regex!8460 rule!200) (_1!34586 lt!2059169)))))

(declare-fun b!4983590 () Bool)

(declare-fun res!2127397 () Bool)

(assert (=> b!4983590 (=> res!2127397 e!3114723)))

(assert (=> b!4983590 (= res!2127397 (not lt!2059168))))

(declare-fun e!3114716 () Bool)

(declare-fun b!4983591 () Bool)

(declare-fun tp!1396928 () Bool)

(declare-fun inv!75450 (String!65723) Bool)

(declare-fun inv!75455 (TokenValueInjection!16848) Bool)

(assert (=> b!4983591 (= e!3114719 (and tp!1396928 (inv!75450 (tag!9324 rule!200)) (inv!75455 (transformation!8460 rule!200)) e!3114716))))

(declare-fun b!4983592 () Bool)

(declare-fun e!3114727 () Bool)

(assert (=> b!4983592 (= e!3114721 e!3114727)))

(declare-fun res!2127400 () Bool)

(assert (=> b!4983592 (=> (not res!2127400) (not e!3114727))))

(declare-fun isSuffix!1259 (List!57716 List!57716) Bool)

(assert (=> b!4983592 (= res!2127400 (isSuffix!1259 lt!2059179 (list!18472 totalInput!520)))))

(assert (=> b!4983592 (= lt!2059179 (list!18472 input!1580))))

(declare-fun res!2127396 () Bool)

(assert (=> b!4983593 (=> res!2127396 e!3114725)))

(declare-fun Forall!1810 (Int) Bool)

(assert (=> b!4983593 (= res!2127396 (not (Forall!1810 lambda!247918)))))

(declare-fun b!4983594 () Bool)

(declare-fun lt!2059170 () tuple2!62560)

(declare-fun e!3114720 () Bool)

(assert (=> b!4983594 (= e!3114720 (or (not (= (value!270530 (_1!34583 lt!2059170)) lt!2059167)) (= (rule!11718 (_1!34583 lt!2059170)) rule!200)))))

(declare-fun get!20026 (Option!14539) tuple2!62560)

(assert (=> b!4983594 (= lt!2059170 (get!20026 lt!2059177))))

(declare-fun b!4983595 () Bool)

(declare-fun res!2127399 () Bool)

(assert (=> b!4983595 (=> res!2127399 e!3114723)))

(assert (=> b!4983595 (= res!2127399 (not (= (list!18472 lt!2059175) lt!2059178)))))

(declare-fun b!4983596 () Bool)

(assert (=> b!4983596 (= e!3114723 e!3114720)))

(declare-fun res!2127395 () Bool)

(assert (=> b!4983596 (=> res!2127395 e!3114720)))

(assert (=> b!4983596 (= res!2127395 (not (= (apply!13947 (transformation!8460 rule!200) lt!2059175) lt!2059167)))))

(declare-fun lt!2059171 () Unit!148686)

(declare-fun lemmaEqSameImage!1199 (TokenValueInjection!16848 BalanceConc!29854 BalanceConc!29854) Unit!148686)

(assert (=> b!4983596 (= lt!2059171 (lemmaEqSameImage!1199 (transformation!8460 rule!200) (_1!34584 lt!2059174) lt!2059175))))

(declare-fun b!4983597 () Bool)

(declare-fun tp!1396926 () Bool)

(declare-fun inv!75456 (Conc!15212) Bool)

(assert (=> b!4983597 (= e!3114726 (and (inv!75456 (c!850430 totalInput!520)) tp!1396926))))

(declare-fun b!4983598 () Bool)

(declare-fun tp!1396927 () Bool)

(assert (=> b!4983598 (= e!3114718 (and (inv!75456 (c!850430 input!1580)) tp!1396927))))

(declare-fun b!4983599 () Bool)

(declare-fun res!2127394 () Bool)

(assert (=> b!4983599 (=> (not res!2127394) (not e!3114721))))

(declare-fun ruleValid!3868 (LexerInterface!8052 Rule!16720) Bool)

(assert (=> b!4983599 (= res!2127394 (ruleValid!3868 thiss!16165 rule!200))))

(assert (=> b!4983600 (= e!3114716 (and tp!1396930 tp!1396929))))

(declare-fun b!4983601 () Bool)

(declare-fun e!3114717 () Bool)

(assert (=> b!4983601 (= e!3114717 (not e!3114725))))

(declare-fun res!2127401 () Bool)

(assert (=> b!4983601 (=> res!2127401 e!3114725)))

(declare-fun semiInverseModEq!3753 (Int Int) Bool)

(assert (=> b!4983601 (= res!2127401 (not (semiInverseModEq!3753 (toChars!11314 (transformation!8460 rule!200)) (toValue!11455 (transformation!8460 rule!200)))))))

(declare-fun lt!2059180 () Unit!148686)

(declare-fun lemmaInv!1383 (TokenValueInjection!16848) Unit!148686)

(assert (=> b!4983601 (= lt!2059180 (lemmaInv!1383 (transformation!8460 rule!200)))))

(assert (=> b!4983601 e!3114724))

(declare-fun res!2127393 () Bool)

(assert (=> b!4983601 (=> res!2127393 e!3114724)))

(declare-fun isEmpty!31115 (List!57716) Bool)

(assert (=> b!4983601 (= res!2127393 (isEmpty!31115 (_1!34586 lt!2059169)))))

(declare-fun findLongestMatchInner!1904 (Regex!13693 List!57716 Int List!57716 List!57716 Int) tuple2!62566)

(declare-fun size!38231 (List!57716) Int)

(assert (=> b!4983601 (= lt!2059169 (findLongestMatchInner!1904 (regex!8460 rule!200) Nil!57592 (size!38231 Nil!57592) lt!2059179 lt!2059179 (size!38231 lt!2059179)))))

(declare-fun lt!2059166 () Unit!148686)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1865 (Regex!13693 List!57716) Unit!148686)

(assert (=> b!4983601 (= lt!2059166 (longestMatchIsAcceptedByMatchOrIsEmpty!1865 (regex!8460 rule!200) lt!2059179))))

(declare-fun b!4983602 () Bool)

(assert (=> b!4983602 (= e!3114727 e!3114717)))

(declare-fun res!2127398 () Bool)

(assert (=> b!4983602 (=> (not res!2127398) (not e!3114717))))

(declare-fun isEmpty!31116 (BalanceConc!29854) Bool)

(assert (=> b!4983602 (= res!2127398 (not (isEmpty!31116 (_1!34584 lt!2059174))))))

(declare-fun findLongestMatchWithZipperSequenceV2!223 (Regex!13693 BalanceConc!29854 BalanceConc!29854) tuple2!62562)

(assert (=> b!4983602 (= lt!2059174 (findLongestMatchWithZipperSequenceV2!223 (regex!8460 rule!200) input!1580 totalInput!520))))

(assert (= (and start!526286 res!2127392) b!4983599))

(assert (= (and b!4983599 res!2127394) b!4983592))

(assert (= (and b!4983592 res!2127400) b!4983602))

(assert (= (and b!4983602 res!2127398) b!4983601))

(assert (= (and b!4983601 (not res!2127393)) b!4983589))

(assert (= (and b!4983601 (not res!2127401)) b!4983593))

(assert (= (and b!4983593 (not res!2127396)) b!4983588))

(assert (= (and b!4983588 (not res!2127391)) b!4983590))

(assert (= (and b!4983590 (not res!2127397)) b!4983595))

(assert (= (and b!4983595 (not res!2127399)) b!4983596))

(assert (= (and b!4983596 (not res!2127395)) b!4983594))

(assert (= b!4983591 b!4983600))

(assert (= start!526286 b!4983591))

(assert (= start!526286 b!4983597))

(assert (= start!526286 b!4983598))

(declare-fun m!6015082 () Bool)

(assert (=> b!4983596 m!6015082))

(declare-fun m!6015084 () Bool)

(assert (=> b!4983596 m!6015084))

(declare-fun m!6015086 () Bool)

(assert (=> b!4983601 m!6015086))

(declare-fun m!6015088 () Bool)

(assert (=> b!4983601 m!6015088))

(assert (=> b!4983601 m!6015086))

(declare-fun m!6015090 () Bool)

(assert (=> b!4983601 m!6015090))

(assert (=> b!4983601 m!6015088))

(declare-fun m!6015092 () Bool)

(assert (=> b!4983601 m!6015092))

(declare-fun m!6015094 () Bool)

(assert (=> b!4983601 m!6015094))

(declare-fun m!6015096 () Bool)

(assert (=> b!4983601 m!6015096))

(declare-fun m!6015098 () Bool)

(assert (=> b!4983601 m!6015098))

(declare-fun m!6015100 () Bool)

(assert (=> b!4983589 m!6015100))

(declare-fun m!6015102 () Bool)

(assert (=> b!4983588 m!6015102))

(declare-fun m!6015104 () Bool)

(assert (=> b!4983588 m!6015104))

(declare-fun m!6015106 () Bool)

(assert (=> b!4983588 m!6015106))

(declare-fun m!6015108 () Bool)

(assert (=> b!4983588 m!6015108))

(declare-fun m!6015110 () Bool)

(assert (=> b!4983588 m!6015110))

(declare-fun m!6015112 () Bool)

(assert (=> b!4983588 m!6015112))

(declare-fun m!6015114 () Bool)

(assert (=> b!4983588 m!6015114))

(declare-fun m!6015116 () Bool)

(assert (=> b!4983588 m!6015116))

(declare-fun m!6015118 () Bool)

(assert (=> b!4983588 m!6015118))

(declare-fun m!6015120 () Bool)

(assert (=> b!4983602 m!6015120))

(declare-fun m!6015122 () Bool)

(assert (=> b!4983602 m!6015122))

(declare-fun m!6015124 () Bool)

(assert (=> b!4983594 m!6015124))

(declare-fun m!6015126 () Bool)

(assert (=> b!4983591 m!6015126))

(declare-fun m!6015128 () Bool)

(assert (=> b!4983591 m!6015128))

(declare-fun m!6015130 () Bool)

(assert (=> start!526286 m!6015130))

(declare-fun m!6015132 () Bool)

(assert (=> start!526286 m!6015132))

(declare-fun m!6015134 () Bool)

(assert (=> b!4983592 m!6015134))

(assert (=> b!4983592 m!6015134))

(declare-fun m!6015136 () Bool)

(assert (=> b!4983592 m!6015136))

(declare-fun m!6015138 () Bool)

(assert (=> b!4983592 m!6015138))

(declare-fun m!6015140 () Bool)

(assert (=> b!4983598 m!6015140))

(declare-fun m!6015142 () Bool)

(assert (=> b!4983597 m!6015142))

(declare-fun m!6015144 () Bool)

(assert (=> b!4983599 m!6015144))

(declare-fun m!6015146 () Bool)

(assert (=> b!4983593 m!6015146))

(declare-fun m!6015148 () Bool)

(assert (=> b!4983595 m!6015148))

(check-sat (not b!4983595) (not b!4983596) (not b_next!133929) (not b!4983594) (not b!4983602) (not start!526286) (not b!4983591) (not b!4983592) (not b!4983588) (not b!4983601) b_and!349735 (not b!4983598) (not b!4983593) (not b!4983589) b_and!349737 (not b!4983597) (not b_next!133931) (not b!4983599))
(check-sat b_and!349737 b_and!349735 (not b_next!133931) (not b_next!133929))
(get-model)

(declare-fun d!1604927 () Bool)

(declare-fun e!3114745 () Bool)

(assert (=> d!1604927 e!3114745))

(declare-fun res!2127416 () Bool)

(assert (=> d!1604927 (=> res!2127416 e!3114745)))

(assert (=> d!1604927 (= res!2127416 (isEmpty!31115 (_1!34586 (findLongestMatchInner!1904 (regex!8460 rule!200) Nil!57592 (size!38231 Nil!57592) lt!2059179 lt!2059179 (size!38231 lt!2059179)))))))

(declare-fun lt!2059186 () Unit!148686)

(declare-fun choose!36826 (Regex!13693 List!57716) Unit!148686)

(assert (=> d!1604927 (= lt!2059186 (choose!36826 (regex!8460 rule!200) lt!2059179))))

(declare-fun validRegex!5993 (Regex!13693) Bool)

(assert (=> d!1604927 (validRegex!5993 (regex!8460 rule!200))))

(assert (=> d!1604927 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1865 (regex!8460 rule!200) lt!2059179) lt!2059186)))

(declare-fun b!4983625 () Bool)

(assert (=> b!4983625 (= e!3114745 (matchR!6687 (regex!8460 rule!200) (_1!34586 (findLongestMatchInner!1904 (regex!8460 rule!200) Nil!57592 (size!38231 Nil!57592) lt!2059179 lt!2059179 (size!38231 lt!2059179)))))))

(assert (= (and d!1604927 (not res!2127416)) b!4983625))

(assert (=> d!1604927 m!6015088))

(assert (=> d!1604927 m!6015086))

(assert (=> d!1604927 m!6015090))

(declare-fun m!6015164 () Bool)

(assert (=> d!1604927 m!6015164))

(declare-fun m!6015166 () Bool)

(assert (=> d!1604927 m!6015166))

(assert (=> d!1604927 m!6015088))

(assert (=> d!1604927 m!6015086))

(declare-fun m!6015168 () Bool)

(assert (=> d!1604927 m!6015168))

(assert (=> b!4983625 m!6015088))

(assert (=> b!4983625 m!6015086))

(assert (=> b!4983625 m!6015088))

(assert (=> b!4983625 m!6015086))

(assert (=> b!4983625 m!6015090))

(declare-fun m!6015170 () Bool)

(assert (=> b!4983625 m!6015170))

(assert (=> b!4983601 d!1604927))

(declare-fun d!1604943 () Bool)

(assert (=> d!1604943 (= (isEmpty!31115 (_1!34586 lt!2059169)) ((_ is Nil!57592) (_1!34586 lt!2059169)))))

(assert (=> b!4983601 d!1604943))

(declare-fun d!1604945 () Bool)

(declare-fun lt!2059189 () Int)

(assert (=> d!1604945 (>= lt!2059189 0)))

(declare-fun e!3114748 () Int)

(assert (=> d!1604945 (= lt!2059189 e!3114748)))

(declare-fun c!850436 () Bool)

(assert (=> d!1604945 (= c!850436 ((_ is Nil!57592) Nil!57592))))

(assert (=> d!1604945 (= (size!38231 Nil!57592) lt!2059189)))

(declare-fun b!4983630 () Bool)

(assert (=> b!4983630 (= e!3114748 0)))

(declare-fun b!4983631 () Bool)

(assert (=> b!4983631 (= e!3114748 (+ 1 (size!38231 (t!369880 Nil!57592))))))

(assert (= (and d!1604945 c!850436) b!4983630))

(assert (= (and d!1604945 (not c!850436)) b!4983631))

(declare-fun m!6015176 () Bool)

(assert (=> b!4983631 m!6015176))

(assert (=> b!4983601 d!1604945))

(declare-fun d!1604951 () Bool)

(declare-fun lt!2059192 () Int)

(assert (=> d!1604951 (>= lt!2059192 0)))

(declare-fun e!3114749 () Int)

(assert (=> d!1604951 (= lt!2059192 e!3114749)))

(declare-fun c!850437 () Bool)

(assert (=> d!1604951 (= c!850437 ((_ is Nil!57592) lt!2059179))))

(assert (=> d!1604951 (= (size!38231 lt!2059179) lt!2059192)))

(declare-fun b!4983632 () Bool)

(assert (=> b!4983632 (= e!3114749 0)))

(declare-fun b!4983633 () Bool)

(assert (=> b!4983633 (= e!3114749 (+ 1 (size!38231 (t!369880 lt!2059179))))))

(assert (= (and d!1604951 c!850437) b!4983632))

(assert (= (and d!1604951 (not c!850437)) b!4983633))

(declare-fun m!6015178 () Bool)

(assert (=> b!4983633 m!6015178))

(assert (=> b!4983601 d!1604951))

(declare-fun bs!1184451 () Bool)

(declare-fun d!1604953 () Bool)

(assert (= bs!1184451 (and d!1604953 b!4983593)))

(declare-fun lambda!247921 () Int)

(assert (=> bs!1184451 (= lambda!247921 lambda!247918)))

(assert (=> d!1604953 true))

(assert (=> d!1604953 (< (dynLambda!23389 order!26537 (toChars!11314 (transformation!8460 rule!200))) (dynLambda!23388 order!26535 lambda!247921))))

(assert (=> d!1604953 true))

(assert (=> d!1604953 (< (dynLambda!23387 order!26533 (toValue!11455 (transformation!8460 rule!200))) (dynLambda!23388 order!26535 lambda!247921))))

(assert (=> d!1604953 (= (semiInverseModEq!3753 (toChars!11314 (transformation!8460 rule!200)) (toValue!11455 (transformation!8460 rule!200))) (Forall!1810 lambda!247921))))

(declare-fun bs!1184452 () Bool)

(assert (= bs!1184452 d!1604953))

(declare-fun m!6015184 () Bool)

(assert (=> bs!1184452 m!6015184))

(assert (=> b!4983601 d!1604953))

(declare-fun b!4983684 () Bool)

(declare-fun c!850454 () Bool)

(declare-fun call!347718 () Bool)

(assert (=> b!4983684 (= c!850454 call!347718)))

(declare-fun lt!2059263 () Unit!148686)

(declare-fun lt!2059262 () Unit!148686)

(assert (=> b!4983684 (= lt!2059263 lt!2059262)))

(declare-fun lt!2059272 () C!27636)

(declare-fun lt!2059271 () List!57716)

(declare-fun ++!12556 (List!57716 List!57716) List!57716)

(assert (=> b!4983684 (= (++!12556 (++!12556 Nil!57592 (Cons!57592 lt!2059272 Nil!57592)) lt!2059271) lt!2059179)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1466 (List!57716 C!27636 List!57716 List!57716) Unit!148686)

(assert (=> b!4983684 (= lt!2059262 (lemmaMoveElementToOtherListKeepsConcatEq!1466 Nil!57592 lt!2059272 lt!2059271 lt!2059179))))

(declare-fun tail!9826 (List!57716) List!57716)

(assert (=> b!4983684 (= lt!2059271 (tail!9826 lt!2059179))))

(declare-fun head!10693 (List!57716) C!27636)

(assert (=> b!4983684 (= lt!2059272 (head!10693 lt!2059179))))

(declare-fun lt!2059270 () Unit!148686)

(declare-fun lt!2059285 () Unit!148686)

(assert (=> b!4983684 (= lt!2059270 lt!2059285)))

(declare-fun isPrefix!5269 (List!57716 List!57716) Bool)

(declare-fun getSuffix!3109 (List!57716 List!57716) List!57716)

(assert (=> b!4983684 (isPrefix!5269 (++!12556 Nil!57592 (Cons!57592 (head!10693 (getSuffix!3109 lt!2059179 Nil!57592)) Nil!57592)) lt!2059179)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!856 (List!57716 List!57716) Unit!148686)

(assert (=> b!4983684 (= lt!2059285 (lemmaAddHeadSuffixToPrefixStillPrefix!856 Nil!57592 lt!2059179))))

(declare-fun lt!2059280 () Unit!148686)

(declare-fun lt!2059281 () Unit!148686)

(assert (=> b!4983684 (= lt!2059280 lt!2059281)))

(assert (=> b!4983684 (= lt!2059281 (lemmaAddHeadSuffixToPrefixStillPrefix!856 Nil!57592 lt!2059179))))

(declare-fun lt!2059283 () List!57716)

(assert (=> b!4983684 (= lt!2059283 (++!12556 Nil!57592 (Cons!57592 (head!10693 lt!2059179) Nil!57592)))))

(declare-fun lt!2059277 () Unit!148686)

(declare-fun e!3114778 () Unit!148686)

(assert (=> b!4983684 (= lt!2059277 e!3114778)))

(declare-fun c!850455 () Bool)

(assert (=> b!4983684 (= c!850455 (= (size!38231 Nil!57592) (size!38231 lt!2059179)))))

(declare-fun lt!2059287 () Unit!148686)

(declare-fun lt!2059260 () Unit!148686)

(assert (=> b!4983684 (= lt!2059287 lt!2059260)))

(assert (=> b!4983684 (<= (size!38231 Nil!57592) (size!38231 lt!2059179))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!782 (List!57716 List!57716) Unit!148686)

(assert (=> b!4983684 (= lt!2059260 (lemmaIsPrefixThenSmallerEqSize!782 Nil!57592 lt!2059179))))

(declare-fun e!3114776 () tuple2!62566)

(declare-fun e!3114777 () tuple2!62566)

(assert (=> b!4983684 (= e!3114776 e!3114777)))

(declare-fun bm!347707 () Bool)

(declare-fun call!347715 () Unit!148686)

(declare-fun lemmaIsPrefixRefl!3593 (List!57716 List!57716) Unit!148686)

(assert (=> bm!347707 (= call!347715 (lemmaIsPrefixRefl!3593 lt!2059179 lt!2059179))))

(declare-fun b!4983685 () Bool)

(declare-fun e!3114781 () tuple2!62566)

(declare-fun lt!2059276 () tuple2!62566)

(assert (=> b!4983685 (= e!3114781 lt!2059276)))

(declare-fun b!4983686 () Bool)

(assert (=> b!4983686 (= e!3114777 e!3114781)))

(declare-fun call!347713 () tuple2!62566)

(assert (=> b!4983686 (= lt!2059276 call!347713)))

(declare-fun c!850458 () Bool)

(assert (=> b!4983686 (= c!850458 (isEmpty!31115 (_1!34586 lt!2059276)))))

(declare-fun b!4983687 () Bool)

(declare-fun Unit!148688 () Unit!148686)

(assert (=> b!4983687 (= e!3114778 Unit!148688)))

(declare-fun bm!347708 () Bool)

(declare-fun call!347719 () Unit!148686)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1229 (List!57716 List!57716 List!57716) Unit!148686)

(assert (=> bm!347708 (= call!347719 (lemmaIsPrefixSameLengthThenSameList!1229 lt!2059179 Nil!57592 lt!2059179))))

(declare-fun bm!347709 () Bool)

(declare-fun call!347712 () List!57716)

(assert (=> bm!347709 (= call!347712 (tail!9826 lt!2059179))))

(declare-fun d!1604957 () Bool)

(declare-fun e!3114780 () Bool)

(assert (=> d!1604957 e!3114780))

(declare-fun res!2127427 () Bool)

(assert (=> d!1604957 (=> (not res!2127427) (not e!3114780))))

(declare-fun lt!2059274 () tuple2!62566)

(assert (=> d!1604957 (= res!2127427 (= (++!12556 (_1!34586 lt!2059274) (_2!34586 lt!2059274)) lt!2059179))))

(declare-fun e!3114782 () tuple2!62566)

(assert (=> d!1604957 (= lt!2059274 e!3114782)))

(declare-fun c!850459 () Bool)

(declare-fun lostCause!1153 (Regex!13693) Bool)

(assert (=> d!1604957 (= c!850459 (lostCause!1153 (regex!8460 rule!200)))))

(declare-fun lt!2059275 () Unit!148686)

(declare-fun Unit!148689 () Unit!148686)

(assert (=> d!1604957 (= lt!2059275 Unit!148689)))

(assert (=> d!1604957 (= (getSuffix!3109 lt!2059179 Nil!57592) lt!2059179)))

(declare-fun lt!2059269 () Unit!148686)

(declare-fun lt!2059266 () Unit!148686)

(assert (=> d!1604957 (= lt!2059269 lt!2059266)))

(declare-fun lt!2059267 () List!57716)

(assert (=> d!1604957 (= lt!2059179 lt!2059267)))

(declare-fun lemmaSamePrefixThenSameSuffix!2521 (List!57716 List!57716 List!57716 List!57716 List!57716) Unit!148686)

(assert (=> d!1604957 (= lt!2059266 (lemmaSamePrefixThenSameSuffix!2521 Nil!57592 lt!2059179 Nil!57592 lt!2059267 lt!2059179))))

(assert (=> d!1604957 (= lt!2059267 (getSuffix!3109 lt!2059179 Nil!57592))))

(declare-fun lt!2059284 () Unit!148686)

(declare-fun lt!2059265 () Unit!148686)

(assert (=> d!1604957 (= lt!2059284 lt!2059265)))

(assert (=> d!1604957 (isPrefix!5269 Nil!57592 (++!12556 Nil!57592 lt!2059179))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3367 (List!57716 List!57716) Unit!148686)

(assert (=> d!1604957 (= lt!2059265 (lemmaConcatTwoListThenFirstIsPrefix!3367 Nil!57592 lt!2059179))))

(assert (=> d!1604957 (validRegex!5993 (regex!8460 rule!200))))

(assert (=> d!1604957 (= (findLongestMatchInner!1904 (regex!8460 rule!200) Nil!57592 (size!38231 Nil!57592) lt!2059179 lt!2059179 (size!38231 lt!2059179)) lt!2059274)))

(declare-fun bm!347710 () Bool)

(declare-fun call!347717 () Bool)

(assert (=> bm!347710 (= call!347717 (isPrefix!5269 lt!2059179 lt!2059179))))

(declare-fun bm!347711 () Bool)

(declare-fun call!347714 () Regex!13693)

(declare-fun call!347716 () C!27636)

(declare-fun derivativeStep!3944 (Regex!13693 C!27636) Regex!13693)

(assert (=> bm!347711 (= call!347714 (derivativeStep!3944 (regex!8460 rule!200) call!347716))))

(declare-fun b!4983688 () Bool)

(declare-fun Unit!148691 () Unit!148686)

(assert (=> b!4983688 (= e!3114778 Unit!148691)))

(declare-fun lt!2059282 () Unit!148686)

(assert (=> b!4983688 (= lt!2059282 call!347715)))

(assert (=> b!4983688 call!347717))

(declare-fun lt!2059278 () Unit!148686)

(assert (=> b!4983688 (= lt!2059278 lt!2059282)))

(declare-fun lt!2059261 () Unit!148686)

(assert (=> b!4983688 (= lt!2059261 call!347719)))

(assert (=> b!4983688 (= lt!2059179 Nil!57592)))

(declare-fun lt!2059286 () Unit!148686)

(assert (=> b!4983688 (= lt!2059286 lt!2059261)))

(assert (=> b!4983688 false))

(declare-fun bm!347712 () Bool)

(assert (=> bm!347712 (= call!347716 (head!10693 lt!2059179))))

(declare-fun b!4983689 () Bool)

(assert (=> b!4983689 (= e!3114782 e!3114776)))

(declare-fun c!850456 () Bool)

(assert (=> b!4983689 (= c!850456 (= (size!38231 Nil!57592) (size!38231 lt!2059179)))))

(declare-fun b!4983690 () Bool)

(declare-fun e!3114779 () Bool)

(assert (=> b!4983690 (= e!3114779 (>= (size!38231 (_1!34586 lt!2059274)) (size!38231 Nil!57592)))))

(declare-fun b!4983691 () Bool)

(declare-fun c!850457 () Bool)

(assert (=> b!4983691 (= c!850457 call!347718)))

(declare-fun lt!2059264 () Unit!148686)

(declare-fun lt!2059273 () Unit!148686)

(assert (=> b!4983691 (= lt!2059264 lt!2059273)))

(assert (=> b!4983691 (= lt!2059179 Nil!57592)))

(assert (=> b!4983691 (= lt!2059273 call!347719)))

(declare-fun lt!2059279 () Unit!148686)

(declare-fun lt!2059268 () Unit!148686)

(assert (=> b!4983691 (= lt!2059279 lt!2059268)))

(assert (=> b!4983691 call!347717))

(assert (=> b!4983691 (= lt!2059268 call!347715)))

(declare-fun e!3114783 () tuple2!62566)

(assert (=> b!4983691 (= e!3114776 e!3114783)))

(declare-fun b!4983692 () Bool)

(assert (=> b!4983692 (= e!3114781 (tuple2!62567 Nil!57592 lt!2059179))))

(declare-fun b!4983693 () Bool)

(assert (=> b!4983693 (= e!3114782 (tuple2!62567 Nil!57592 lt!2059179))))

(declare-fun bm!347713 () Bool)

(assert (=> bm!347713 (= call!347713 (findLongestMatchInner!1904 call!347714 lt!2059283 (+ (size!38231 Nil!57592) 1) call!347712 lt!2059179 (size!38231 lt!2059179)))))

(declare-fun b!4983694 () Bool)

(assert (=> b!4983694 (= e!3114777 call!347713)))

(declare-fun b!4983695 () Bool)

(assert (=> b!4983695 (= e!3114783 (tuple2!62567 Nil!57592 lt!2059179))))

(declare-fun b!4983696 () Bool)

(assert (=> b!4983696 (= e!3114783 (tuple2!62567 Nil!57592 Nil!57592))))

(declare-fun bm!347714 () Bool)

(declare-fun nullable!4644 (Regex!13693) Bool)

(assert (=> bm!347714 (= call!347718 (nullable!4644 (regex!8460 rule!200)))))

(declare-fun b!4983697 () Bool)

(assert (=> b!4983697 (= e!3114780 e!3114779)))

(declare-fun res!2127428 () Bool)

(assert (=> b!4983697 (=> res!2127428 e!3114779)))

(assert (=> b!4983697 (= res!2127428 (isEmpty!31115 (_1!34586 lt!2059274)))))

(assert (= (and d!1604957 c!850459) b!4983693))

(assert (= (and d!1604957 (not c!850459)) b!4983689))

(assert (= (and b!4983689 c!850456) b!4983691))

(assert (= (and b!4983689 (not c!850456)) b!4983684))

(assert (= (and b!4983691 c!850457) b!4983696))

(assert (= (and b!4983691 (not c!850457)) b!4983695))

(assert (= (and b!4983684 c!850455) b!4983688))

(assert (= (and b!4983684 (not c!850455)) b!4983687))

(assert (= (and b!4983684 c!850454) b!4983686))

(assert (= (and b!4983684 (not c!850454)) b!4983694))

(assert (= (and b!4983686 c!850458) b!4983692))

(assert (= (and b!4983686 (not c!850458)) b!4983685))

(assert (= (or b!4983686 b!4983694) bm!347712))

(assert (= (or b!4983686 b!4983694) bm!347709))

(assert (= (or b!4983686 b!4983694) bm!347711))

(assert (= (or b!4983686 b!4983694) bm!347713))

(assert (= (or b!4983691 b!4983688) bm!347710))

(assert (= (or b!4983691 b!4983688) bm!347708))

(assert (= (or b!4983691 b!4983688) bm!347707))

(assert (= (or b!4983691 b!4983684) bm!347714))

(assert (= (and d!1604957 res!2127427) b!4983697))

(assert (= (and b!4983697 (not res!2127428)) b!4983690))

(assert (=> bm!347713 m!6015086))

(declare-fun m!6015210 () Bool)

(assert (=> bm!347713 m!6015210))

(declare-fun m!6015212 () Bool)

(assert (=> bm!347709 m!6015212))

(declare-fun m!6015214 () Bool)

(assert (=> b!4983686 m!6015214))

(declare-fun m!6015216 () Bool)

(assert (=> bm!347711 m!6015216))

(declare-fun m!6015218 () Bool)

(assert (=> d!1604957 m!6015218))

(assert (=> d!1604957 m!6015164))

(declare-fun m!6015220 () Bool)

(assert (=> d!1604957 m!6015220))

(declare-fun m!6015222 () Bool)

(assert (=> d!1604957 m!6015222))

(declare-fun m!6015224 () Bool)

(assert (=> d!1604957 m!6015224))

(declare-fun m!6015226 () Bool)

(assert (=> d!1604957 m!6015226))

(declare-fun m!6015228 () Bool)

(assert (=> d!1604957 m!6015228))

(assert (=> d!1604957 m!6015224))

(declare-fun m!6015230 () Bool)

(assert (=> d!1604957 m!6015230))

(declare-fun m!6015232 () Bool)

(assert (=> bm!347710 m!6015232))

(declare-fun m!6015234 () Bool)

(assert (=> bm!347707 m!6015234))

(assert (=> b!4983684 m!6015218))

(assert (=> b!4983684 m!6015088))

(assert (=> b!4983684 m!6015212))

(declare-fun m!6015236 () Bool)

(assert (=> b!4983684 m!6015236))

(assert (=> b!4983684 m!6015218))

(declare-fun m!6015238 () Bool)

(assert (=> b!4983684 m!6015238))

(declare-fun m!6015240 () Bool)

(assert (=> b!4983684 m!6015240))

(declare-fun m!6015242 () Bool)

(assert (=> b!4983684 m!6015242))

(declare-fun m!6015244 () Bool)

(assert (=> b!4983684 m!6015244))

(assert (=> b!4983684 m!6015244))

(declare-fun m!6015246 () Bool)

(assert (=> b!4983684 m!6015246))

(declare-fun m!6015248 () Bool)

(assert (=> b!4983684 m!6015248))

(assert (=> b!4983684 m!6015248))

(declare-fun m!6015250 () Bool)

(assert (=> b!4983684 m!6015250))

(declare-fun m!6015252 () Bool)

(assert (=> b!4983684 m!6015252))

(assert (=> b!4983684 m!6015086))

(declare-fun m!6015254 () Bool)

(assert (=> b!4983684 m!6015254))

(declare-fun m!6015256 () Bool)

(assert (=> b!4983690 m!6015256))

(assert (=> b!4983690 m!6015088))

(assert (=> bm!347712 m!6015254))

(declare-fun m!6015258 () Bool)

(assert (=> b!4983697 m!6015258))

(declare-fun m!6015260 () Bool)

(assert (=> bm!347714 m!6015260))

(declare-fun m!6015262 () Bool)

(assert (=> bm!347708 m!6015262))

(assert (=> b!4983601 d!1604957))

(declare-fun d!1604973 () Bool)

(declare-fun e!3114786 () Bool)

(assert (=> d!1604973 e!3114786))

(declare-fun res!2127431 () Bool)

(assert (=> d!1604973 (=> (not res!2127431) (not e!3114786))))

(assert (=> d!1604973 (= res!2127431 (semiInverseModEq!3753 (toChars!11314 (transformation!8460 rule!200)) (toValue!11455 (transformation!8460 rule!200))))))

(declare-fun Unit!148692 () Unit!148686)

(assert (=> d!1604973 (= (lemmaInv!1383 (transformation!8460 rule!200)) Unit!148692)))

(declare-fun b!4983700 () Bool)

(declare-fun equivClasses!3575 (Int Int) Bool)

(assert (=> b!4983700 (= e!3114786 (equivClasses!3575 (toChars!11314 (transformation!8460 rule!200)) (toValue!11455 (transformation!8460 rule!200))))))

(assert (= (and d!1604973 res!2127431) b!4983700))

(assert (=> d!1604973 m!6015092))

(declare-fun m!6015264 () Bool)

(assert (=> b!4983700 m!6015264))

(assert (=> b!4983601 d!1604973))

(declare-fun b!4983757 () Bool)

(declare-fun res!2127456 () Bool)

(declare-fun e!3114822 () Bool)

(assert (=> b!4983757 (=> res!2127456 e!3114822)))

(declare-fun e!3114820 () Bool)

(assert (=> b!4983757 (= res!2127456 e!3114820)))

(declare-fun res!2127457 () Bool)

(assert (=> b!4983757 (=> (not res!2127457) (not e!3114820))))

(declare-fun lt!2059346 () Bool)

(assert (=> b!4983757 (= res!2127457 lt!2059346)))

(declare-fun b!4983758 () Bool)

(declare-fun e!3114823 () Bool)

(assert (=> b!4983758 (= e!3114823 (matchR!6687 (derivativeStep!3944 (regex!8460 rule!200) (head!10693 (_1!34586 lt!2059169))) (tail!9826 (_1!34586 lt!2059169))))))

(declare-fun b!4983759 () Bool)

(declare-fun e!3114819 () Bool)

(assert (=> b!4983759 (= e!3114819 (not lt!2059346))))

(declare-fun bm!347733 () Bool)

(declare-fun call!347738 () Bool)

(assert (=> bm!347733 (= call!347738 (isEmpty!31115 (_1!34586 lt!2059169)))))

(declare-fun b!4983761 () Bool)

(assert (=> b!4983761 (= e!3114820 (= (head!10693 (_1!34586 lt!2059169)) (c!850429 (regex!8460 rule!200))))))

(declare-fun b!4983762 () Bool)

(declare-fun res!2127453 () Bool)

(assert (=> b!4983762 (=> res!2127453 e!3114822)))

(assert (=> b!4983762 (= res!2127453 (not ((_ is ElementMatch!13693) (regex!8460 rule!200))))))

(assert (=> b!4983762 (= e!3114819 e!3114822)))

(declare-fun b!4983763 () Bool)

(declare-fun e!3114821 () Bool)

(assert (=> b!4983763 (= e!3114821 e!3114819)))

(declare-fun c!850478 () Bool)

(assert (=> b!4983763 (= c!850478 ((_ is EmptyLang!13693) (regex!8460 rule!200)))))

(declare-fun b!4983764 () Bool)

(declare-fun res!2127454 () Bool)

(assert (=> b!4983764 (=> (not res!2127454) (not e!3114820))))

(assert (=> b!4983764 (= res!2127454 (not call!347738))))

(declare-fun b!4983765 () Bool)

(assert (=> b!4983765 (= e!3114823 (nullable!4644 (regex!8460 rule!200)))))

(declare-fun b!4983766 () Bool)

(declare-fun e!3114818 () Bool)

(assert (=> b!4983766 (= e!3114818 (not (= (head!10693 (_1!34586 lt!2059169)) (c!850429 (regex!8460 rule!200)))))))

(declare-fun b!4983760 () Bool)

(declare-fun e!3114817 () Bool)

(assert (=> b!4983760 (= e!3114817 e!3114818)))

(declare-fun res!2127459 () Bool)

(assert (=> b!4983760 (=> res!2127459 e!3114818)))

(assert (=> b!4983760 (= res!2127459 call!347738)))

(declare-fun d!1604975 () Bool)

(assert (=> d!1604975 e!3114821))

(declare-fun c!850480 () Bool)

(assert (=> d!1604975 (= c!850480 ((_ is EmptyExpr!13693) (regex!8460 rule!200)))))

(assert (=> d!1604975 (= lt!2059346 e!3114823)))

(declare-fun c!850479 () Bool)

(assert (=> d!1604975 (= c!850479 (isEmpty!31115 (_1!34586 lt!2059169)))))

(assert (=> d!1604975 (validRegex!5993 (regex!8460 rule!200))))

(assert (=> d!1604975 (= (matchR!6687 (regex!8460 rule!200) (_1!34586 lt!2059169)) lt!2059346)))

(declare-fun b!4983767 () Bool)

(assert (=> b!4983767 (= e!3114822 e!3114817)))

(declare-fun res!2127452 () Bool)

(assert (=> b!4983767 (=> (not res!2127452) (not e!3114817))))

(assert (=> b!4983767 (= res!2127452 (not lt!2059346))))

(declare-fun b!4983768 () Bool)

(declare-fun res!2127458 () Bool)

(assert (=> b!4983768 (=> (not res!2127458) (not e!3114820))))

(assert (=> b!4983768 (= res!2127458 (isEmpty!31115 (tail!9826 (_1!34586 lt!2059169))))))

(declare-fun b!4983769 () Bool)

(assert (=> b!4983769 (= e!3114821 (= lt!2059346 call!347738))))

(declare-fun b!4983770 () Bool)

(declare-fun res!2127455 () Bool)

(assert (=> b!4983770 (=> res!2127455 e!3114818)))

(assert (=> b!4983770 (= res!2127455 (not (isEmpty!31115 (tail!9826 (_1!34586 lt!2059169)))))))

(assert (= (and d!1604975 c!850479) b!4983765))

(assert (= (and d!1604975 (not c!850479)) b!4983758))

(assert (= (and d!1604975 c!850480) b!4983769))

(assert (= (and d!1604975 (not c!850480)) b!4983763))

(assert (= (and b!4983763 c!850478) b!4983759))

(assert (= (and b!4983763 (not c!850478)) b!4983762))

(assert (= (and b!4983762 (not res!2127453)) b!4983757))

(assert (= (and b!4983757 res!2127457) b!4983764))

(assert (= (and b!4983764 res!2127454) b!4983768))

(assert (= (and b!4983768 res!2127458) b!4983761))

(assert (= (and b!4983757 (not res!2127456)) b!4983767))

(assert (= (and b!4983767 res!2127452) b!4983760))

(assert (= (and b!4983760 (not res!2127459)) b!4983770))

(assert (= (and b!4983770 (not res!2127455)) b!4983766))

(assert (= (or b!4983769 b!4983760 b!4983764) bm!347733))

(declare-fun m!6015266 () Bool)

(assert (=> b!4983768 m!6015266))

(assert (=> b!4983768 m!6015266))

(declare-fun m!6015268 () Bool)

(assert (=> b!4983768 m!6015268))

(assert (=> bm!347733 m!6015094))

(assert (=> b!4983770 m!6015266))

(assert (=> b!4983770 m!6015266))

(assert (=> b!4983770 m!6015268))

(declare-fun m!6015270 () Bool)

(assert (=> b!4983761 m!6015270))

(assert (=> b!4983765 m!6015260))

(assert (=> b!4983766 m!6015270))

(assert (=> d!1604975 m!6015094))

(assert (=> d!1604975 m!6015164))

(assert (=> b!4983758 m!6015270))

(assert (=> b!4983758 m!6015270))

(declare-fun m!6015272 () Bool)

(assert (=> b!4983758 m!6015272))

(assert (=> b!4983758 m!6015266))

(assert (=> b!4983758 m!6015272))

(assert (=> b!4983758 m!6015266))

(declare-fun m!6015274 () Bool)

(assert (=> b!4983758 m!6015274))

(assert (=> b!4983589 d!1604975))

(declare-fun d!1604977 () Bool)

(declare-fun res!2127464 () Bool)

(declare-fun e!3114826 () Bool)

(assert (=> d!1604977 (=> (not res!2127464) (not e!3114826))))

(assert (=> d!1604977 (= res!2127464 (validRegex!5993 (regex!8460 rule!200)))))

(assert (=> d!1604977 (= (ruleValid!3868 thiss!16165 rule!200) e!3114826)))

(declare-fun b!4983775 () Bool)

(declare-fun res!2127465 () Bool)

(assert (=> b!4983775 (=> (not res!2127465) (not e!3114826))))

(assert (=> b!4983775 (= res!2127465 (not (nullable!4644 (regex!8460 rule!200))))))

(declare-fun b!4983776 () Bool)

(assert (=> b!4983776 (= e!3114826 (not (= (tag!9324 rule!200) (String!65724 ""))))))

(assert (= (and d!1604977 res!2127464) b!4983775))

(assert (= (and b!4983775 res!2127465) b!4983776))

(assert (=> d!1604977 m!6015164))

(assert (=> b!4983775 m!6015260))

(assert (=> b!4983599 d!1604977))

(declare-fun d!1604979 () Bool)

(declare-fun list!18474 (Conc!15212) List!57716)

(assert (=> d!1604979 (= (list!18472 (_1!34584 lt!2059174)) (list!18474 (c!850430 (_1!34584 lt!2059174))))))

(declare-fun bs!1184456 () Bool)

(assert (= bs!1184456 d!1604979))

(declare-fun m!6015276 () Bool)

(assert (=> bs!1184456 m!6015276))

(assert (=> b!4983588 d!1604979))

(declare-fun d!1604981 () Bool)

(declare-fun dynLambda!23390 (Int BalanceConc!29854) Bool)

(assert (=> d!1604981 (dynLambda!23390 lambda!247918 lt!2059175)))

(declare-fun lt!2059377 () Unit!148686)

(declare-fun choose!36829 (Int BalanceConc!29854) Unit!148686)

(assert (=> d!1604981 (= lt!2059377 (choose!36829 lambda!247918 lt!2059175))))

(assert (=> d!1604981 (Forall!1810 lambda!247918)))

(assert (=> d!1604981 (= (ForallOf!1270 lambda!247918 lt!2059175) lt!2059377)))

(declare-fun b_lambda!198037 () Bool)

(assert (=> (not b_lambda!198037) (not d!1604981)))

(declare-fun bs!1184457 () Bool)

(assert (= bs!1184457 d!1604981))

(declare-fun m!6015330 () Bool)

(assert (=> bs!1184457 m!6015330))

(declare-fun m!6015332 () Bool)

(assert (=> bs!1184457 m!6015332))

(assert (=> bs!1184457 m!6015146))

(assert (=> b!4983588 d!1604981))

(declare-fun d!1604983 () Bool)

(declare-fun lt!2059380 () Int)

(assert (=> d!1604983 (= lt!2059380 (size!38231 (list!18472 (_1!34584 lt!2059174))))))

(declare-fun size!38232 (Conc!15212) Int)

(assert (=> d!1604983 (= lt!2059380 (size!38232 (c!850430 (_1!34584 lt!2059174))))))

(assert (=> d!1604983 (= (size!38230 (_1!34584 lt!2059174)) lt!2059380)))

(declare-fun bs!1184458 () Bool)

(assert (= bs!1184458 d!1604983))

(assert (=> bs!1184458 m!6015110))

(assert (=> bs!1184458 m!6015110))

(declare-fun m!6015336 () Bool)

(assert (=> bs!1184458 m!6015336))

(declare-fun m!6015338 () Bool)

(assert (=> bs!1184458 m!6015338))

(assert (=> b!4983588 d!1604983))

(declare-fun d!1604987 () Bool)

(assert (=> d!1604987 (dynLambda!23390 lambda!247918 (_1!34584 lt!2059174))))

(declare-fun lt!2059381 () Unit!148686)

(assert (=> d!1604987 (= lt!2059381 (choose!36829 lambda!247918 (_1!34584 lt!2059174)))))

(assert (=> d!1604987 (Forall!1810 lambda!247918)))

(assert (=> d!1604987 (= (ForallOf!1270 lambda!247918 (_1!34584 lt!2059174)) lt!2059381)))

(declare-fun b_lambda!198039 () Bool)

(assert (=> (not b_lambda!198039) (not d!1604987)))

(declare-fun bs!1184459 () Bool)

(assert (= bs!1184459 d!1604987))

(declare-fun m!6015340 () Bool)

(assert (=> bs!1184459 m!6015340))

(declare-fun m!6015342 () Bool)

(assert (=> bs!1184459 m!6015342))

(assert (=> bs!1184459 m!6015146))

(assert (=> b!4983588 d!1604987))

(declare-fun b!4983872 () Bool)

(declare-fun res!2127520 () Bool)

(declare-fun e!3114881 () Bool)

(assert (=> b!4983872 (=> (not res!2127520) (not e!3114881))))

(declare-fun lt!2059399 () Option!14539)

(assert (=> b!4983872 (= res!2127520 (< (size!38231 (_2!34583 (get!20026 lt!2059399))) (size!38231 lt!2059179)))))

(declare-fun b!4983873 () Bool)

(declare-fun e!3114882 () Bool)

(assert (=> b!4983873 (= e!3114882 e!3114881)))

(declare-fun res!2127521 () Bool)

(assert (=> b!4983873 (=> (not res!2127521) (not e!3114881))))

(declare-fun charsOf!5457 (Token!15376) BalanceConc!29854)

(assert (=> b!4983873 (= res!2127521 (matchR!6687 (regex!8460 rule!200) (list!18472 (charsOf!5457 (_1!34583 (get!20026 lt!2059399))))))))

(declare-fun b!4983874 () Bool)

(declare-fun e!3114883 () Option!14539)

(assert (=> b!4983874 (= e!3114883 None!14538)))

(declare-fun b!4983875 () Bool)

(declare-fun res!2127522 () Bool)

(assert (=> b!4983875 (=> (not res!2127522) (not e!3114881))))

(assert (=> b!4983875 (= res!2127522 (= (rule!11718 (_1!34583 (get!20026 lt!2059399))) rule!200))))

(declare-fun b!4983876 () Bool)

(declare-fun res!2127518 () Bool)

(assert (=> b!4983876 (=> (not res!2127518) (not e!3114881))))

(assert (=> b!4983876 (= res!2127518 (= (value!270530 (_1!34583 (get!20026 lt!2059399))) (apply!13947 (transformation!8460 (rule!11718 (_1!34583 (get!20026 lt!2059399)))) (seqFromList!6081 (originalCharacters!8719 (_1!34583 (get!20026 lt!2059399)))))))))

(declare-fun b!4983877 () Bool)

(declare-fun e!3114884 () Bool)

(assert (=> b!4983877 (= e!3114884 (matchR!6687 (regex!8460 rule!200) (_1!34586 (findLongestMatchInner!1904 (regex!8460 rule!200) Nil!57592 (size!38231 Nil!57592) lt!2059179 lt!2059179 (size!38231 lt!2059179)))))))

(declare-fun b!4983879 () Bool)

(declare-fun res!2127524 () Bool)

(assert (=> b!4983879 (=> (not res!2127524) (not e!3114881))))

(assert (=> b!4983879 (= res!2127524 (= (++!12556 (list!18472 (charsOf!5457 (_1!34583 (get!20026 lt!2059399)))) (_2!34583 (get!20026 lt!2059399))) lt!2059179))))

(declare-fun b!4983880 () Bool)

(declare-fun lt!2059400 () tuple2!62566)

(assert (=> b!4983880 (= e!3114883 (Some!14538 (tuple2!62561 (Token!15377 (apply!13947 (transformation!8460 rule!200) (seqFromList!6081 (_1!34586 lt!2059400))) rule!200 (size!38230 (seqFromList!6081 (_1!34586 lt!2059400))) (_1!34586 lt!2059400)) (_2!34586 lt!2059400))))))

(declare-fun lt!2059398 () Unit!148686)

(assert (=> b!4983880 (= lt!2059398 (longestMatchIsAcceptedByMatchOrIsEmpty!1865 (regex!8460 rule!200) lt!2059179))))

(declare-fun res!2127523 () Bool)

(assert (=> b!4983880 (= res!2127523 (isEmpty!31115 (_1!34586 (findLongestMatchInner!1904 (regex!8460 rule!200) Nil!57592 (size!38231 Nil!57592) lt!2059179 lt!2059179 (size!38231 lt!2059179)))))))

(assert (=> b!4983880 (=> res!2127523 e!3114884)))

(assert (=> b!4983880 e!3114884))

(declare-fun lt!2059401 () Unit!148686)

(assert (=> b!4983880 (= lt!2059401 lt!2059398)))

(declare-fun lt!2059402 () Unit!148686)

(declare-fun lemmaSemiInverse!2620 (TokenValueInjection!16848 BalanceConc!29854) Unit!148686)

(assert (=> b!4983880 (= lt!2059402 (lemmaSemiInverse!2620 (transformation!8460 rule!200) (seqFromList!6081 (_1!34586 lt!2059400))))))

(declare-fun d!1604989 () Bool)

(assert (=> d!1604989 e!3114882))

(declare-fun res!2127519 () Bool)

(assert (=> d!1604989 (=> res!2127519 e!3114882)))

(declare-fun isEmpty!31118 (Option!14539) Bool)

(assert (=> d!1604989 (= res!2127519 (isEmpty!31118 lt!2059399))))

(assert (=> d!1604989 (= lt!2059399 e!3114883)))

(declare-fun c!850499 () Bool)

(assert (=> d!1604989 (= c!850499 (isEmpty!31115 (_1!34586 lt!2059400)))))

(declare-fun findLongestMatch!1720 (Regex!13693 List!57716) tuple2!62566)

(assert (=> d!1604989 (= lt!2059400 (findLongestMatch!1720 (regex!8460 rule!200) lt!2059179))))

(assert (=> d!1604989 (ruleValid!3868 thiss!16165 rule!200)))

(assert (=> d!1604989 (= (maxPrefixOneRule!3676 thiss!16165 rule!200 lt!2059179) lt!2059399)))

(declare-fun b!4983878 () Bool)

(assert (=> b!4983878 (= e!3114881 (= (size!38229 (_1!34583 (get!20026 lt!2059399))) (size!38231 (originalCharacters!8719 (_1!34583 (get!20026 lt!2059399))))))))

(assert (= (and d!1604989 c!850499) b!4983874))

(assert (= (and d!1604989 (not c!850499)) b!4983880))

(assert (= (and b!4983880 (not res!2127523)) b!4983877))

(assert (= (and d!1604989 (not res!2127519)) b!4983873))

(assert (= (and b!4983873 res!2127521) b!4983879))

(assert (= (and b!4983879 res!2127524) b!4983872))

(assert (= (and b!4983872 res!2127520) b!4983875))

(assert (= (and b!4983875 res!2127522) b!4983876))

(assert (= (and b!4983876 res!2127518) b!4983878))

(declare-fun m!6015372 () Bool)

(assert (=> b!4983873 m!6015372))

(declare-fun m!6015374 () Bool)

(assert (=> b!4983873 m!6015374))

(assert (=> b!4983873 m!6015374))

(declare-fun m!6015376 () Bool)

(assert (=> b!4983873 m!6015376))

(assert (=> b!4983873 m!6015376))

(declare-fun m!6015378 () Bool)

(assert (=> b!4983873 m!6015378))

(assert (=> b!4983879 m!6015372))

(assert (=> b!4983879 m!6015374))

(assert (=> b!4983879 m!6015374))

(assert (=> b!4983879 m!6015376))

(assert (=> b!4983879 m!6015376))

(declare-fun m!6015380 () Bool)

(assert (=> b!4983879 m!6015380))

(declare-fun m!6015382 () Bool)

(assert (=> b!4983880 m!6015382))

(declare-fun m!6015384 () Bool)

(assert (=> b!4983880 m!6015384))

(assert (=> b!4983880 m!6015168))

(assert (=> b!4983880 m!6015088))

(assert (=> b!4983880 m!6015086))

(assert (=> b!4983880 m!6015090))

(assert (=> b!4983880 m!6015098))

(assert (=> b!4983880 m!6015382))

(declare-fun m!6015386 () Bool)

(assert (=> b!4983880 m!6015386))

(assert (=> b!4983880 m!6015382))

(assert (=> b!4983880 m!6015088))

(assert (=> b!4983880 m!6015086))

(assert (=> b!4983880 m!6015382))

(declare-fun m!6015388 () Bool)

(assert (=> b!4983880 m!6015388))

(assert (=> b!4983875 m!6015372))

(assert (=> b!4983877 m!6015088))

(assert (=> b!4983877 m!6015086))

(assert (=> b!4983877 m!6015088))

(assert (=> b!4983877 m!6015086))

(assert (=> b!4983877 m!6015090))

(assert (=> b!4983877 m!6015170))

(declare-fun m!6015390 () Bool)

(assert (=> d!1604989 m!6015390))

(declare-fun m!6015392 () Bool)

(assert (=> d!1604989 m!6015392))

(declare-fun m!6015394 () Bool)

(assert (=> d!1604989 m!6015394))

(assert (=> d!1604989 m!6015144))

(assert (=> b!4983872 m!6015372))

(declare-fun m!6015396 () Bool)

(assert (=> b!4983872 m!6015396))

(assert (=> b!4983872 m!6015086))

(assert (=> b!4983876 m!6015372))

(declare-fun m!6015398 () Bool)

(assert (=> b!4983876 m!6015398))

(assert (=> b!4983876 m!6015398))

(declare-fun m!6015400 () Bool)

(assert (=> b!4983876 m!6015400))

(assert (=> b!4983878 m!6015372))

(declare-fun m!6015402 () Bool)

(assert (=> b!4983878 m!6015402))

(assert (=> b!4983588 d!1604989))

(declare-fun d!1605009 () Bool)

(declare-fun fromListB!2749 (List!57716) BalanceConc!29854)

(assert (=> d!1605009 (= (seqFromList!6081 lt!2059178) (fromListB!2749 lt!2059178))))

(declare-fun bs!1184462 () Bool)

(assert (= bs!1184462 d!1605009))

(declare-fun m!6015404 () Bool)

(assert (=> bs!1184462 m!6015404))

(assert (=> b!4983588 d!1605009))

(declare-fun d!1605011 () Bool)

(declare-fun dynLambda!23391 (Int BalanceConc!29854) TokenValue!8770)

(assert (=> d!1605011 (= (apply!13947 (transformation!8460 rule!200) (_1!34584 lt!2059174)) (dynLambda!23391 (toValue!11455 (transformation!8460 rule!200)) (_1!34584 lt!2059174)))))

(declare-fun b_lambda!198047 () Bool)

(assert (=> (not b_lambda!198047) (not d!1605011)))

(declare-fun t!369887 () Bool)

(declare-fun tb!261667 () Bool)

(assert (=> (and b!4983600 (= (toValue!11455 (transformation!8460 rule!200)) (toValue!11455 (transformation!8460 rule!200))) t!369887) tb!261667))

(declare-fun result!327008 () Bool)

(declare-fun inv!21 (TokenValue!8770) Bool)

(assert (=> tb!261667 (= result!327008 (inv!21 (dynLambda!23391 (toValue!11455 (transformation!8460 rule!200)) (_1!34584 lt!2059174))))))

(declare-fun m!6015406 () Bool)

(assert (=> tb!261667 m!6015406))

(assert (=> d!1605011 t!369887))

(declare-fun b_and!349745 () Bool)

(assert (= b_and!349735 (and (=> t!369887 result!327008) b_and!349745)))

(declare-fun m!6015408 () Bool)

(assert (=> d!1605011 m!6015408))

(assert (=> b!4983588 d!1605011))

(declare-fun d!1605013 () Bool)

(declare-fun isEmpty!31119 (Option!14540) Bool)

(assert (=> d!1605013 (= (isDefined!11449 (Some!14539 (tuple2!62565 (Token!15377 lt!2059167 rule!200 lt!2059172 lt!2059178) (_2!34584 lt!2059174)))) (not (isEmpty!31119 (Some!14539 (tuple2!62565 (Token!15377 lt!2059167 rule!200 lt!2059172 lt!2059178) (_2!34584 lt!2059174))))))))

(declare-fun bs!1184463 () Bool)

(assert (= bs!1184463 d!1605013))

(declare-fun m!6015410 () Bool)

(assert (=> bs!1184463 m!6015410))

(assert (=> b!4983588 d!1605013))

(declare-fun d!1605015 () Bool)

(assert (=> d!1605015 (= (isDefined!11448 lt!2059177) (not (isEmpty!31118 lt!2059177)))))

(declare-fun bs!1184464 () Bool)

(assert (= bs!1184464 d!1605015))

(declare-fun m!6015412 () Bool)

(assert (=> bs!1184464 m!6015412))

(assert (=> b!4983588 d!1605015))

(declare-fun d!1605017 () Bool)

(declare-fun c!850502 () Bool)

(assert (=> d!1605017 (= c!850502 ((_ is Node!15212) (c!850430 input!1580)))))

(declare-fun e!3114892 () Bool)

(assert (=> d!1605017 (= (inv!75456 (c!850430 input!1580)) e!3114892)))

(declare-fun b!4983889 () Bool)

(declare-fun inv!75459 (Conc!15212) Bool)

(assert (=> b!4983889 (= e!3114892 (inv!75459 (c!850430 input!1580)))))

(declare-fun b!4983890 () Bool)

(declare-fun e!3114893 () Bool)

(assert (=> b!4983890 (= e!3114892 e!3114893)))

(declare-fun res!2127527 () Bool)

(assert (=> b!4983890 (= res!2127527 (not ((_ is Leaf!25267) (c!850430 input!1580))))))

(assert (=> b!4983890 (=> res!2127527 e!3114893)))

(declare-fun b!4983891 () Bool)

(declare-fun inv!75460 (Conc!15212) Bool)

(assert (=> b!4983891 (= e!3114893 (inv!75460 (c!850430 input!1580)))))

(assert (= (and d!1605017 c!850502) b!4983889))

(assert (= (and d!1605017 (not c!850502)) b!4983890))

(assert (= (and b!4983890 (not res!2127527)) b!4983891))

(declare-fun m!6015414 () Bool)

(assert (=> b!4983889 m!6015414))

(declare-fun m!6015416 () Bool)

(assert (=> b!4983891 m!6015416))

(assert (=> b!4983598 d!1605017))

(declare-fun d!1605019 () Bool)

(declare-fun isBalanced!4230 (Conc!15212) Bool)

(assert (=> d!1605019 (= (inv!75454 totalInput!520) (isBalanced!4230 (c!850430 totalInput!520)))))

(declare-fun bs!1184465 () Bool)

(assert (= bs!1184465 d!1605019))

(declare-fun m!6015418 () Bool)

(assert (=> bs!1184465 m!6015418))

(assert (=> start!526286 d!1605019))

(declare-fun d!1605021 () Bool)

(assert (=> d!1605021 (= (inv!75454 input!1580) (isBalanced!4230 (c!850430 input!1580)))))

(declare-fun bs!1184466 () Bool)

(assert (= bs!1184466 d!1605021))

(declare-fun m!6015420 () Bool)

(assert (=> bs!1184466 m!6015420))

(assert (=> start!526286 d!1605021))

(declare-fun d!1605023 () Bool)

(declare-fun c!850503 () Bool)

(assert (=> d!1605023 (= c!850503 ((_ is Node!15212) (c!850430 totalInput!520)))))

(declare-fun e!3114894 () Bool)

(assert (=> d!1605023 (= (inv!75456 (c!850430 totalInput!520)) e!3114894)))

(declare-fun b!4983892 () Bool)

(assert (=> b!4983892 (= e!3114894 (inv!75459 (c!850430 totalInput!520)))))

(declare-fun b!4983893 () Bool)

(declare-fun e!3114895 () Bool)

(assert (=> b!4983893 (= e!3114894 e!3114895)))

(declare-fun res!2127528 () Bool)

(assert (=> b!4983893 (= res!2127528 (not ((_ is Leaf!25267) (c!850430 totalInput!520))))))

(assert (=> b!4983893 (=> res!2127528 e!3114895)))

(declare-fun b!4983894 () Bool)

(assert (=> b!4983894 (= e!3114895 (inv!75460 (c!850430 totalInput!520)))))

(assert (= (and d!1605023 c!850503) b!4983892))

(assert (= (and d!1605023 (not c!850503)) b!4983893))

(assert (= (and b!4983893 (not res!2127528)) b!4983894))

(declare-fun m!6015422 () Bool)

(assert (=> b!4983892 m!6015422))

(declare-fun m!6015424 () Bool)

(assert (=> b!4983894 m!6015424))

(assert (=> b!4983597 d!1605023))

(declare-fun d!1605025 () Bool)

(assert (=> d!1605025 (= (apply!13947 (transformation!8460 rule!200) lt!2059175) (dynLambda!23391 (toValue!11455 (transformation!8460 rule!200)) lt!2059175))))

(declare-fun b_lambda!198049 () Bool)

(assert (=> (not b_lambda!198049) (not d!1605025)))

(declare-fun t!369889 () Bool)

(declare-fun tb!261669 () Bool)

(assert (=> (and b!4983600 (= (toValue!11455 (transformation!8460 rule!200)) (toValue!11455 (transformation!8460 rule!200))) t!369889) tb!261669))

(declare-fun result!327012 () Bool)

(assert (=> tb!261669 (= result!327012 (inv!21 (dynLambda!23391 (toValue!11455 (transformation!8460 rule!200)) lt!2059175)))))

(declare-fun m!6015426 () Bool)

(assert (=> tb!261669 m!6015426))

(assert (=> d!1605025 t!369889))

(declare-fun b_and!349747 () Bool)

(assert (= b_and!349745 (and (=> t!369889 result!327012) b_and!349747)))

(declare-fun m!6015428 () Bool)

(assert (=> d!1605025 m!6015428))

(assert (=> b!4983596 d!1605025))

(declare-fun b!4983919 () Bool)

(declare-fun e!3114909 () Bool)

(assert (=> b!4983919 (= e!3114909 true)))

(declare-fun d!1605027 () Bool)

(assert (=> d!1605027 e!3114909))

(assert (= d!1605027 b!4983919))

(declare-fun lambda!247930 () Int)

(declare-fun order!26541 () Int)

(declare-fun dynLambda!23392 (Int Int) Int)

(assert (=> b!4983919 (< (dynLambda!23387 order!26533 (toValue!11455 (transformation!8460 rule!200))) (dynLambda!23392 order!26541 lambda!247930))))

(assert (=> b!4983919 (< (dynLambda!23389 order!26537 (toChars!11314 (transformation!8460 rule!200))) (dynLambda!23392 order!26541 lambda!247930))))

(assert (=> d!1605027 (= (dynLambda!23391 (toValue!11455 (transformation!8460 rule!200)) (_1!34584 lt!2059174)) (dynLambda!23391 (toValue!11455 (transformation!8460 rule!200)) lt!2059175))))

(declare-fun lt!2059415 () Unit!148686)

(declare-fun Forall2of!488 (Int BalanceConc!29854 BalanceConc!29854) Unit!148686)

(assert (=> d!1605027 (= lt!2059415 (Forall2of!488 lambda!247930 (_1!34584 lt!2059174) lt!2059175))))

(assert (=> d!1605027 (= (list!18472 (_1!34584 lt!2059174)) (list!18472 lt!2059175))))

(assert (=> d!1605027 (= (lemmaEqSameImage!1199 (transformation!8460 rule!200) (_1!34584 lt!2059174) lt!2059175) lt!2059415)))

(declare-fun b_lambda!198051 () Bool)

(assert (=> (not b_lambda!198051) (not d!1605027)))

(assert (=> d!1605027 t!369887))

(declare-fun b_and!349749 () Bool)

(assert (= b_and!349747 (and (=> t!369887 result!327008) b_and!349749)))

(declare-fun b_lambda!198053 () Bool)

(assert (=> (not b_lambda!198053) (not d!1605027)))

(assert (=> d!1605027 t!369889))

(declare-fun b_and!349751 () Bool)

(assert (= b_and!349749 (and (=> t!369889 result!327012) b_and!349751)))

(assert (=> d!1605027 m!6015428))

(declare-fun m!6015430 () Bool)

(assert (=> d!1605027 m!6015430))

(assert (=> d!1605027 m!6015110))

(assert (=> d!1605027 m!6015408))

(assert (=> d!1605027 m!6015148))

(assert (=> b!4983596 d!1605027))

(declare-fun d!1605029 () Bool)

(assert (=> d!1605029 (= (list!18472 lt!2059175) (list!18474 (c!850430 lt!2059175)))))

(declare-fun bs!1184467 () Bool)

(assert (= bs!1184467 d!1605029))

(declare-fun m!6015432 () Bool)

(assert (=> bs!1184467 m!6015432))

(assert (=> b!4983595 d!1605029))

(declare-fun d!1605031 () Bool)

(assert (=> d!1605031 (= (get!20026 lt!2059177) (v!50535 lt!2059177))))

(assert (=> b!4983594 d!1605031))

(declare-fun d!1605033 () Bool)

(declare-fun choose!36830 (Int) Bool)

(assert (=> d!1605033 (= (Forall!1810 lambda!247918) (choose!36830 lambda!247918))))

(declare-fun bs!1184468 () Bool)

(assert (= bs!1184468 d!1605033))

(declare-fun m!6015434 () Bool)

(assert (=> bs!1184468 m!6015434))

(assert (=> b!4983593 d!1605033))

(declare-fun d!1605035 () Bool)

(declare-fun e!3114916 () Bool)

(assert (=> d!1605035 e!3114916))

(declare-fun res!2127554 () Bool)

(assert (=> d!1605035 (=> res!2127554 e!3114916)))

(declare-fun lt!2059423 () Bool)

(assert (=> d!1605035 (= res!2127554 (not lt!2059423))))

(declare-fun drop!2376 (List!57716 Int) List!57716)

(assert (=> d!1605035 (= lt!2059423 (= lt!2059179 (drop!2376 (list!18472 totalInput!520) (- (size!38231 (list!18472 totalInput!520)) (size!38231 lt!2059179)))))))

(assert (=> d!1605035 (= (isSuffix!1259 lt!2059179 (list!18472 totalInput!520)) lt!2059423)))

(declare-fun b!4983931 () Bool)

(assert (=> b!4983931 (= e!3114916 (>= (size!38231 (list!18472 totalInput!520)) (size!38231 lt!2059179)))))

(assert (= (and d!1605035 (not res!2127554)) b!4983931))

(assert (=> d!1605035 m!6015134))

(declare-fun m!6015462 () Bool)

(assert (=> d!1605035 m!6015462))

(assert (=> d!1605035 m!6015086))

(assert (=> d!1605035 m!6015134))

(declare-fun m!6015464 () Bool)

(assert (=> d!1605035 m!6015464))

(assert (=> b!4983931 m!6015134))

(assert (=> b!4983931 m!6015462))

(assert (=> b!4983931 m!6015086))

(assert (=> b!4983592 d!1605035))

(declare-fun d!1605037 () Bool)

(assert (=> d!1605037 (= (list!18472 totalInput!520) (list!18474 (c!850430 totalInput!520)))))

(declare-fun bs!1184469 () Bool)

(assert (= bs!1184469 d!1605037))

(declare-fun m!6015470 () Bool)

(assert (=> bs!1184469 m!6015470))

(assert (=> b!4983592 d!1605037))

(declare-fun d!1605039 () Bool)

(assert (=> d!1605039 (= (list!18472 input!1580) (list!18474 (c!850430 input!1580)))))

(declare-fun bs!1184470 () Bool)

(assert (= bs!1184470 d!1605039))

(declare-fun m!6015474 () Bool)

(assert (=> bs!1184470 m!6015474))

(assert (=> b!4983592 d!1605039))

(declare-fun d!1605041 () Bool)

(assert (=> d!1605041 (= (inv!75450 (tag!9324 rule!200)) (= (mod (str.len (value!270504 (tag!9324 rule!200))) 2) 0))))

(assert (=> b!4983591 d!1605041))

(declare-fun d!1605045 () Bool)

(declare-fun res!2127557 () Bool)

(declare-fun e!3114919 () Bool)

(assert (=> d!1605045 (=> (not res!2127557) (not e!3114919))))

(assert (=> d!1605045 (= res!2127557 (semiInverseModEq!3753 (toChars!11314 (transformation!8460 rule!200)) (toValue!11455 (transformation!8460 rule!200))))))

(assert (=> d!1605045 (= (inv!75455 (transformation!8460 rule!200)) e!3114919)))

(declare-fun b!4983934 () Bool)

(assert (=> b!4983934 (= e!3114919 (equivClasses!3575 (toChars!11314 (transformation!8460 rule!200)) (toValue!11455 (transformation!8460 rule!200))))))

(assert (= (and d!1605045 res!2127557) b!4983934))

(assert (=> d!1605045 m!6015092))

(assert (=> b!4983934 m!6015264))

(assert (=> b!4983591 d!1605045))

(declare-fun d!1605051 () Bool)

(declare-fun lt!2059432 () Bool)

(assert (=> d!1605051 (= lt!2059432 (isEmpty!31115 (list!18472 (_1!34584 lt!2059174))))))

(declare-fun isEmpty!31120 (Conc!15212) Bool)

(assert (=> d!1605051 (= lt!2059432 (isEmpty!31120 (c!850430 (_1!34584 lt!2059174))))))

(assert (=> d!1605051 (= (isEmpty!31116 (_1!34584 lt!2059174)) lt!2059432)))

(declare-fun bs!1184475 () Bool)

(assert (= bs!1184475 d!1605051))

(assert (=> bs!1184475 m!6015110))

(assert (=> bs!1184475 m!6015110))

(declare-fun m!6015488 () Bool)

(assert (=> bs!1184475 m!6015488))

(declare-fun m!6015490 () Bool)

(assert (=> bs!1184475 m!6015490))

(assert (=> b!4983602 d!1605051))

(declare-fun d!1605059 () Bool)

(declare-fun lt!2059436 () tuple2!62562)

(assert (=> d!1605059 (= (tuple2!62567 (list!18472 (_1!34584 lt!2059436)) (list!18472 (_2!34584 lt!2059436))) (findLongestMatch!1720 (regex!8460 rule!200) (list!18472 input!1580)))))

(declare-fun choose!36831 (Regex!13693 BalanceConc!29854 BalanceConc!29854) tuple2!62562)

(assert (=> d!1605059 (= lt!2059436 (choose!36831 (regex!8460 rule!200) input!1580 totalInput!520))))

(assert (=> d!1605059 (validRegex!5993 (regex!8460 rule!200))))

(assert (=> d!1605059 (= (findLongestMatchWithZipperSequenceV2!223 (regex!8460 rule!200) input!1580 totalInput!520) lt!2059436)))

(declare-fun bs!1184480 () Bool)

(assert (= bs!1184480 d!1605059))

(assert (=> bs!1184480 m!6015164))

(assert (=> bs!1184480 m!6015138))

(declare-fun m!6015524 () Bool)

(assert (=> bs!1184480 m!6015524))

(assert (=> bs!1184480 m!6015138))

(declare-fun m!6015528 () Bool)

(assert (=> bs!1184480 m!6015528))

(declare-fun m!6015530 () Bool)

(assert (=> bs!1184480 m!6015530))

(declare-fun m!6015532 () Bool)

(assert (=> bs!1184480 m!6015532))

(assert (=> b!4983602 d!1605059))

(declare-fun tp!1396968 () Bool)

(declare-fun e!3114940 () Bool)

(declare-fun tp!1396970 () Bool)

(declare-fun b!4983977 () Bool)

(assert (=> b!4983977 (= e!3114940 (and (inv!75456 (left!42108 (c!850430 input!1580))) tp!1396970 (inv!75456 (right!42438 (c!850430 input!1580))) tp!1396968))))

(declare-fun b!4983979 () Bool)

(declare-fun e!3114939 () Bool)

(declare-fun tp!1396969 () Bool)

(assert (=> b!4983979 (= e!3114939 tp!1396969)))

(declare-fun b!4983978 () Bool)

(declare-fun inv!75461 (IArray!30485) Bool)

(assert (=> b!4983978 (= e!3114940 (and (inv!75461 (xs!18538 (c!850430 input!1580))) e!3114939))))

(assert (=> b!4983598 (= tp!1396927 (and (inv!75456 (c!850430 input!1580)) e!3114940))))

(assert (= (and b!4983598 ((_ is Node!15212) (c!850430 input!1580))) b!4983977))

(assert (= b!4983978 b!4983979))

(assert (= (and b!4983598 ((_ is Leaf!25267) (c!850430 input!1580))) b!4983978))

(declare-fun m!6015534 () Bool)

(assert (=> b!4983977 m!6015534))

(declare-fun m!6015536 () Bool)

(assert (=> b!4983977 m!6015536))

(declare-fun m!6015538 () Bool)

(assert (=> b!4983978 m!6015538))

(assert (=> b!4983598 m!6015140))

(declare-fun e!3114942 () Bool)

(declare-fun tp!1396973 () Bool)

(declare-fun b!4983980 () Bool)

(declare-fun tp!1396971 () Bool)

(assert (=> b!4983980 (= e!3114942 (and (inv!75456 (left!42108 (c!850430 totalInput!520))) tp!1396973 (inv!75456 (right!42438 (c!850430 totalInput!520))) tp!1396971))))

(declare-fun b!4983982 () Bool)

(declare-fun e!3114941 () Bool)

(declare-fun tp!1396972 () Bool)

(assert (=> b!4983982 (= e!3114941 tp!1396972)))

(declare-fun b!4983981 () Bool)

(assert (=> b!4983981 (= e!3114942 (and (inv!75461 (xs!18538 (c!850430 totalInput!520))) e!3114941))))

(assert (=> b!4983597 (= tp!1396926 (and (inv!75456 (c!850430 totalInput!520)) e!3114942))))

(assert (= (and b!4983597 ((_ is Node!15212) (c!850430 totalInput!520))) b!4983980))

(assert (= b!4983981 b!4983982))

(assert (= (and b!4983597 ((_ is Leaf!25267) (c!850430 totalInput!520))) b!4983981))

(declare-fun m!6015540 () Bool)

(assert (=> b!4983980 m!6015540))

(declare-fun m!6015542 () Bool)

(assert (=> b!4983980 m!6015542))

(declare-fun m!6015544 () Bool)

(assert (=> b!4983981 m!6015544))

(assert (=> b!4983597 m!6015142))

(declare-fun e!3114945 () Bool)

(assert (=> b!4983591 (= tp!1396928 e!3114945)))

(declare-fun b!4983996 () Bool)

(declare-fun tp!1396987 () Bool)

(declare-fun tp!1396986 () Bool)

(assert (=> b!4983996 (= e!3114945 (and tp!1396987 tp!1396986))))

(declare-fun b!4983993 () Bool)

(declare-fun tp_is_empty!36391 () Bool)

(assert (=> b!4983993 (= e!3114945 tp_is_empty!36391)))

(declare-fun b!4983994 () Bool)

(declare-fun tp!1396984 () Bool)

(declare-fun tp!1396988 () Bool)

(assert (=> b!4983994 (= e!3114945 (and tp!1396984 tp!1396988))))

(declare-fun b!4983995 () Bool)

(declare-fun tp!1396985 () Bool)

(assert (=> b!4983995 (= e!3114945 tp!1396985)))

(assert (= (and b!4983591 ((_ is ElementMatch!13693) (regex!8460 rule!200))) b!4983993))

(assert (= (and b!4983591 ((_ is Concat!22463) (regex!8460 rule!200))) b!4983994))

(assert (= (and b!4983591 ((_ is Star!13693) (regex!8460 rule!200))) b!4983995))

(assert (= (and b!4983591 ((_ is Union!13693) (regex!8460 rule!200))) b!4983996))

(declare-fun b_lambda!198081 () Bool)

(assert (= b_lambda!198047 (or (and b!4983600 b_free!133139) b_lambda!198081)))

(declare-fun b_lambda!198083 () Bool)

(assert (= b_lambda!198051 (or (and b!4983600 b_free!133139) b_lambda!198083)))

(declare-fun b_lambda!198085 () Bool)

(assert (= b_lambda!198053 (or (and b!4983600 b_free!133139) b_lambda!198085)))

(declare-fun b_lambda!198087 () Bool)

(assert (= b_lambda!198039 (or b!4983593 b_lambda!198087)))

(declare-fun bs!1184481 () Bool)

(declare-fun d!1605067 () Bool)

(assert (= bs!1184481 (and d!1605067 b!4983593)))

(declare-fun dynLambda!23395 (Int TokenValue!8770) BalanceConc!29854)

(assert (=> bs!1184481 (= (dynLambda!23390 lambda!247918 (_1!34584 lt!2059174)) (= (list!18472 (dynLambda!23395 (toChars!11314 (transformation!8460 rule!200)) (dynLambda!23391 (toValue!11455 (transformation!8460 rule!200)) (_1!34584 lt!2059174)))) (list!18472 (_1!34584 lt!2059174))))))

(declare-fun b_lambda!198093 () Bool)

(assert (=> (not b_lambda!198093) (not bs!1184481)))

(declare-fun t!369895 () Bool)

(declare-fun tb!261675 () Bool)

(assert (=> (and b!4983600 (= (toChars!11314 (transformation!8460 rule!200)) (toChars!11314 (transformation!8460 rule!200))) t!369895) tb!261675))

(declare-fun b!4984001 () Bool)

(declare-fun tp!1396991 () Bool)

(declare-fun e!3114948 () Bool)

(assert (=> b!4984001 (= e!3114948 (and (inv!75456 (c!850430 (dynLambda!23395 (toChars!11314 (transformation!8460 rule!200)) (dynLambda!23391 (toValue!11455 (transformation!8460 rule!200)) (_1!34584 lt!2059174))))) tp!1396991))))

(declare-fun result!327028 () Bool)

(assert (=> tb!261675 (= result!327028 (and (inv!75454 (dynLambda!23395 (toChars!11314 (transformation!8460 rule!200)) (dynLambda!23391 (toValue!11455 (transformation!8460 rule!200)) (_1!34584 lt!2059174)))) e!3114948))))

(assert (= tb!261675 b!4984001))

(declare-fun m!6015546 () Bool)

(assert (=> b!4984001 m!6015546))

(declare-fun m!6015548 () Bool)

(assert (=> tb!261675 m!6015548))

(assert (=> bs!1184481 t!369895))

(declare-fun b_and!349763 () Bool)

(assert (= b_and!349737 (and (=> t!369895 result!327028) b_and!349763)))

(declare-fun b_lambda!198095 () Bool)

(assert (=> (not b_lambda!198095) (not bs!1184481)))

(assert (=> bs!1184481 t!369887))

(declare-fun b_and!349765 () Bool)

(assert (= b_and!349751 (and (=> t!369887 result!327008) b_and!349765)))

(assert (=> bs!1184481 m!6015408))

(declare-fun m!6015550 () Bool)

(assert (=> bs!1184481 m!6015550))

(declare-fun m!6015552 () Bool)

(assert (=> bs!1184481 m!6015552))

(assert (=> bs!1184481 m!6015110))

(assert (=> bs!1184481 m!6015408))

(assert (=> bs!1184481 m!6015550))

(assert (=> d!1604987 d!1605067))

(declare-fun b_lambda!198089 () Bool)

(assert (= b_lambda!198049 (or (and b!4983600 b_free!133139) b_lambda!198089)))

(declare-fun b_lambda!198091 () Bool)

(assert (= b_lambda!198037 (or b!4983593 b_lambda!198091)))

(declare-fun bs!1184482 () Bool)

(declare-fun d!1605069 () Bool)

(assert (= bs!1184482 (and d!1605069 b!4983593)))

(assert (=> bs!1184482 (= (dynLambda!23390 lambda!247918 lt!2059175) (= (list!18472 (dynLambda!23395 (toChars!11314 (transformation!8460 rule!200)) (dynLambda!23391 (toValue!11455 (transformation!8460 rule!200)) lt!2059175))) (list!18472 lt!2059175)))))

(declare-fun b_lambda!198097 () Bool)

(assert (=> (not b_lambda!198097) (not bs!1184482)))

(declare-fun t!369897 () Bool)

(declare-fun tb!261677 () Bool)

(assert (=> (and b!4983600 (= (toChars!11314 (transformation!8460 rule!200)) (toChars!11314 (transformation!8460 rule!200))) t!369897) tb!261677))

(declare-fun tp!1396992 () Bool)

(declare-fun e!3114949 () Bool)

(declare-fun b!4984002 () Bool)

(assert (=> b!4984002 (= e!3114949 (and (inv!75456 (c!850430 (dynLambda!23395 (toChars!11314 (transformation!8460 rule!200)) (dynLambda!23391 (toValue!11455 (transformation!8460 rule!200)) lt!2059175)))) tp!1396992))))

(declare-fun result!327032 () Bool)

(assert (=> tb!261677 (= result!327032 (and (inv!75454 (dynLambda!23395 (toChars!11314 (transformation!8460 rule!200)) (dynLambda!23391 (toValue!11455 (transformation!8460 rule!200)) lt!2059175))) e!3114949))))

(assert (= tb!261677 b!4984002))

(declare-fun m!6015554 () Bool)

(assert (=> b!4984002 m!6015554))

(declare-fun m!6015556 () Bool)

(assert (=> tb!261677 m!6015556))

(assert (=> bs!1184482 t!369897))

(declare-fun b_and!349767 () Bool)

(assert (= b_and!349763 (and (=> t!369897 result!327032) b_and!349767)))

(declare-fun b_lambda!198099 () Bool)

(assert (=> (not b_lambda!198099) (not bs!1184482)))

(assert (=> bs!1184482 t!369889))

(declare-fun b_and!349769 () Bool)

(assert (= b_and!349765 (and (=> t!369889 result!327012) b_and!349769)))

(assert (=> bs!1184482 m!6015428))

(declare-fun m!6015558 () Bool)

(assert (=> bs!1184482 m!6015558))

(declare-fun m!6015560 () Bool)

(assert (=> bs!1184482 m!6015560))

(assert (=> bs!1184482 m!6015148))

(assert (=> bs!1184482 m!6015428))

(assert (=> bs!1184482 m!6015558))

(assert (=> d!1604981 d!1605069))

(check-sat (not d!1604981) (not d!1605013) (not bm!347714) (not b_lambda!198091) (not d!1604953) (not d!1604973) (not b_lambda!198095) (not b!4983931) (not bs!1184482) (not d!1604957) (not d!1605037) (not d!1605029) (not d!1605045) (not b!4983775) (not b!4983892) (not b!4983880) (not b!4983875) (not tb!261667) (not d!1605039) (not b_next!133929) (not b!4983891) (not b!4984001) tp_is_empty!36391 (not b!4983978) (not tb!261669) (not d!1604977) (not b!4983697) (not d!1604975) (not d!1604987) (not b!4983700) (not d!1605035) (not b!4983625) (not b_lambda!198089) (not d!1605033) (not bm!347733) (not b!4983889) (not bm!347708) (not b!4983766) (not bm!347713) (not b!4984002) (not b_lambda!198081) (not d!1605019) (not bm!347707) (not tb!261677) (not b!4983872) (not b_lambda!198093) (not b!4983873) (not b!4983690) (not bm!347710) (not b!4983761) (not b_lambda!198085) (not b!4983977) (not b!4983598) (not b!4983979) (not bs!1184481) (not b!4983758) (not b!4983879) (not b!4983765) (not bm!347711) (not b!4983994) (not b!4983894) (not b!4983995) (not b!4983686) b_and!349767 (not b!4983981) (not b!4983631) (not d!1605051) (not d!1604989) (not d!1604979) (not b!4983982) (not b!4983876) (not d!1605059) (not bm!347709) (not d!1605015) (not b!4983684) (not b!4983770) (not d!1604927) (not b_lambda!198097) (not d!1605009) (not b!4983878) b_and!349769 (not b_lambda!198087) (not b!4983597) (not b_lambda!198099) (not b!4983934) (not b!4983877) (not tb!261675) (not b!4983633) (not bm!347712) (not b!4983980) (not b!4983768) (not b_next!133931) (not d!1605027) (not b_lambda!198083) (not d!1605021) (not d!1604983) (not b!4983996))
(check-sat b_and!349767 b_and!349769 (not b_next!133931) (not b_next!133929))
