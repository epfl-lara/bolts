; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!526394 () Bool)

(assert start!526394)

(declare-fun b!4984089 () Bool)

(declare-fun b_free!133147 () Bool)

(declare-fun b_next!133937 () Bool)

(assert (=> b!4984089 (= b_free!133147 (not b_next!133937))))

(declare-fun tp!1397022 () Bool)

(declare-fun b_and!349775 () Bool)

(assert (=> b!4984089 (= tp!1397022 b_and!349775)))

(declare-fun b_free!133149 () Bool)

(declare-fun b_next!133939 () Bool)

(assert (=> b!4984089 (= b_free!133149 (not b_next!133939))))

(declare-fun tp!1397018 () Bool)

(declare-fun b_and!349777 () Bool)

(assert (=> b!4984089 (= tp!1397018 b_and!349777)))

(declare-fun b!4984108 () Bool)

(declare-fun e!3115033 () Bool)

(assert (=> b!4984108 (= e!3115033 true)))

(declare-fun b!4984107 () Bool)

(declare-fun e!3115032 () Bool)

(assert (=> b!4984107 (= e!3115032 e!3115033)))

(declare-fun b!4984093 () Bool)

(assert (=> b!4984093 e!3115032))

(assert (= b!4984107 b!4984108))

(assert (= b!4984093 b!4984107))

(declare-fun lambda!247944 () Int)

(declare-fun order!26551 () Int)

(declare-fun order!26549 () Int)

(declare-datatypes ((C!27640 0))(
  ( (C!27641 (val!23186 Int)) )
))
(declare-datatypes ((List!57720 0))(
  ( (Nil!57596) (Cons!57596 (h!64044 C!27640) (t!369900 List!57720)) )
))
(declare-datatypes ((IArray!30489 0))(
  ( (IArray!30490 (innerList!15302 List!57720)) )
))
(declare-datatypes ((List!57721 0))(
  ( (Nil!57597) (Cons!57597 (h!64045 (_ BitVec 16)) (t!369901 List!57721)) )
))
(declare-datatypes ((Regex!13695 0))(
  ( (ElementMatch!13695 (c!850511 C!27640)) (Concat!22467 (regOne!27902 Regex!13695) (regTwo!27902 Regex!13695)) (EmptyExpr!13695) (Star!13695 (reg!14024 Regex!13695)) (EmptyLang!13695) (Union!13695 (regOne!27903 Regex!13695) (regTwo!27903 Regex!13695)) )
))
(declare-datatypes ((String!65733 0))(
  ( (String!65734 (value!270561 String)) )
))
(declare-datatypes ((Conc!15214 0))(
  ( (Node!15214 (left!42115 Conc!15214) (right!42445 Conc!15214) (csize!30658 Int) (cheight!15425 Int)) (Leaf!25270 (xs!18540 IArray!30489) (csize!30659 Int)) (Empty!15214) )
))
(declare-datatypes ((BalanceConc!29858 0))(
  ( (BalanceConc!29859 (c!850512 Conc!15214)) )
))
(declare-datatypes ((TokenValue!8772 0))(
  ( (FloatLiteralValue!17544 (text!61849 List!57721)) (TokenValueExt!8771 (__x!34837 Int)) (Broken!43860 (value!270562 List!57721)) (Object!8895) (End!8772) (Def!8772) (Underscore!8772) (Match!8772) (Else!8772) (Error!8772) (Case!8772) (If!8772) (Extends!8772) (Abstract!8772) (Class!8772) (Val!8772) (DelimiterValue!17544 (del!8832 List!57721)) (KeywordValue!8778 (value!270563 List!57721)) (CommentValue!17544 (value!270564 List!57721)) (WhitespaceValue!17544 (value!270565 List!57721)) (IndentationValue!8772 (value!270566 List!57721)) (String!65735) (Int32!8772) (Broken!43861 (value!270567 List!57721)) (Boolean!8773) (Unit!148699) (OperatorValue!8775 (op!8832 List!57721)) (IdentifierValue!17544 (value!270568 List!57721)) (IdentifierValue!17545 (value!270569 List!57721)) (WhitespaceValue!17545 (value!270570 List!57721)) (True!17544) (False!17544) (Broken!43862 (value!270571 List!57721)) (Broken!43863 (value!270572 List!57721)) (True!17545) (RightBrace!8772) (RightBracket!8772) (Colon!8772) (Null!8772) (Comma!8772) (LeftBracket!8772) (False!17545) (LeftBrace!8772) (ImaginaryLiteralValue!8772 (text!61850 List!57721)) (StringLiteralValue!26316 (value!270573 List!57721)) (EOFValue!8772 (value!270574 List!57721)) (IdentValue!8772 (value!270575 List!57721)) (DelimiterValue!17545 (value!270576 List!57721)) (DedentValue!8772 (value!270577 List!57721)) (NewLineValue!8772 (value!270578 List!57721)) (IntegerValue!26316 (value!270579 (_ BitVec 32)) (text!61851 List!57721)) (IntegerValue!26317 (value!270580 Int) (text!61852 List!57721)) (Times!8772) (Or!8772) (Equal!8772) (Minus!8772) (Broken!43864 (value!270581 List!57721)) (And!8772) (Div!8772) (LessEqual!8772) (Mod!8772) (Concat!22468) (Not!8772) (Plus!8772) (SpaceValue!8772 (value!270582 List!57721)) (IntegerValue!26318 (value!270583 Int) (text!61853 List!57721)) (StringLiteralValue!26317 (text!61854 List!57721)) (FloatLiteralValue!17545 (text!61855 List!57721)) (BytesLiteralValue!8772 (value!270584 List!57721)) (CommentValue!17545 (value!270585 List!57721)) (StringLiteralValue!26318 (value!270586 List!57721)) (ErrorTokenValue!8772 (msg!8833 List!57721)) )
))
(declare-datatypes ((TokenValueInjection!16852 0))(
  ( (TokenValueInjection!16853 (toValue!11459 Int) (toChars!11318 Int)) )
))
(declare-datatypes ((Rule!16724 0))(
  ( (Rule!16725 (regex!8462 Regex!13695) (tag!9326 String!65733) (isSeparator!8462 Bool) (transformation!8462 TokenValueInjection!16852)) )
))
(declare-fun rule!200 () Rule!16724)

(declare-fun dynLambda!23400 (Int Int) Int)

(declare-fun dynLambda!23401 (Int Int) Int)

(assert (=> b!4984108 (< (dynLambda!23400 order!26549 (toValue!11459 (transformation!8462 rule!200))) (dynLambda!23401 order!26551 lambda!247944))))

(declare-fun order!26553 () Int)

(declare-fun dynLambda!23402 (Int Int) Int)

(assert (=> b!4984108 (< (dynLambda!23402 order!26553 (toChars!11318 (transformation!8462 rule!200))) (dynLambda!23401 order!26551 lambda!247944))))

(declare-fun b!4984086 () Bool)

(declare-fun e!3115025 () Bool)

(declare-fun input!1580 () BalanceConc!29858)

(declare-fun tp!1397021 () Bool)

(declare-fun inv!75468 (Conc!15214) Bool)

(assert (=> b!4984086 (= e!3115025 (and (inv!75468 (c!850512 input!1580)) tp!1397021))))

(declare-fun b!4984087 () Bool)

(declare-fun e!3115018 () Bool)

(declare-fun e!3115027 () Bool)

(assert (=> b!4984087 (= e!3115018 (not e!3115027))))

(declare-fun res!2127620 () Bool)

(assert (=> b!4984087 (=> res!2127620 e!3115027)))

(declare-fun semiInverseModEq!3755 (Int Int) Bool)

(assert (=> b!4984087 (= res!2127620 (not (semiInverseModEq!3755 (toChars!11318 (transformation!8462 rule!200)) (toValue!11459 (transformation!8462 rule!200)))))))

(declare-datatypes ((Unit!148700 0))(
  ( (Unit!148701) )
))
(declare-fun lt!2059515 () Unit!148700)

(declare-fun lemmaInv!1385 (TokenValueInjection!16852) Unit!148700)

(assert (=> b!4984087 (= lt!2059515 (lemmaInv!1385 (transformation!8462 rule!200)))))

(declare-fun e!3115026 () Bool)

(assert (=> b!4984087 e!3115026))

(declare-fun res!2127615 () Bool)

(assert (=> b!4984087 (=> res!2127615 e!3115026)))

(declare-datatypes ((tuple2!62576 0))(
  ( (tuple2!62577 (_1!34591 List!57720) (_2!34591 List!57720)) )
))
(declare-fun lt!2059518 () tuple2!62576)

(declare-fun isEmpty!31125 (List!57720) Bool)

(assert (=> b!4984087 (= res!2127615 (isEmpty!31125 (_1!34591 lt!2059518)))))

(declare-fun lt!2059523 () List!57720)

(declare-fun findLongestMatchInner!1906 (Regex!13695 List!57720 Int List!57720 List!57720 Int) tuple2!62576)

(declare-fun size!38236 (List!57720) Int)

(assert (=> b!4984087 (= lt!2059518 (findLongestMatchInner!1906 (regex!8462 rule!200) Nil!57596 (size!38236 Nil!57596) lt!2059523 lt!2059523 (size!38236 lt!2059523)))))

(declare-fun lt!2059524 () Unit!148700)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1867 (Regex!13695 List!57720) Unit!148700)

(assert (=> b!4984087 (= lt!2059524 (longestMatchIsAcceptedByMatchOrIsEmpty!1867 (regex!8462 rule!200) lt!2059523))))

(declare-fun b!4984088 () Bool)

(declare-fun res!2127616 () Bool)

(declare-fun e!3115016 () Bool)

(assert (=> b!4984088 (=> res!2127616 e!3115016)))

(declare-fun lt!2059512 () Bool)

(assert (=> b!4984088 (= res!2127616 (not lt!2059512))))

(declare-fun e!3115024 () Bool)

(assert (=> b!4984089 (= e!3115024 (and tp!1397022 tp!1397018))))

(declare-fun res!2127621 () Bool)

(declare-fun e!3115022 () Bool)

(assert (=> start!526394 (=> (not res!2127621) (not e!3115022))))

(declare-datatypes ((LexerInterface!8054 0))(
  ( (LexerInterfaceExt!8051 (__x!34838 Int)) (Lexer!8052) )
))
(declare-fun thiss!16165 () LexerInterface!8054)

(get-info :version)

(assert (=> start!526394 (= res!2127621 ((_ is Lexer!8052) thiss!16165))))

(assert (=> start!526394 e!3115022))

(assert (=> start!526394 true))

(declare-fun e!3115019 () Bool)

(assert (=> start!526394 e!3115019))

(declare-fun totalInput!520 () BalanceConc!29858)

(declare-fun e!3115023 () Bool)

(declare-fun inv!75469 (BalanceConc!29858) Bool)

(assert (=> start!526394 (and (inv!75469 totalInput!520) e!3115023)))

(assert (=> start!526394 (and (inv!75469 input!1580) e!3115025)))

(declare-fun b!4984090 () Bool)

(declare-fun matchR!6689 (Regex!13695 List!57720) Bool)

(assert (=> b!4984090 (= e!3115026 (matchR!6689 (regex!8462 rule!200) (_1!34591 lt!2059518)))))

(declare-fun b!4984091 () Bool)

(assert (=> b!4984091 (= e!3115027 e!3115016)))

(declare-fun res!2127614 () Bool)

(assert (=> b!4984091 (=> res!2127614 e!3115016)))

(declare-datatypes ((Token!15380 0))(
  ( (Token!15381 (value!270587 TokenValue!8772) (rule!11722 Rule!16724) (size!38237 Int) (originalCharacters!8721 List!57720)) )
))
(declare-datatypes ((tuple2!62578 0))(
  ( (tuple2!62579 (_1!34592 Token!15380) (_2!34592 List!57720)) )
))
(declare-datatypes ((Option!14543 0))(
  ( (None!14542) (Some!14542 (v!50539 tuple2!62578)) )
))
(declare-fun lt!2059526 () Option!14543)

(declare-fun isDefined!11452 (Option!14543) Bool)

(assert (=> b!4984091 (= res!2127614 (not (= lt!2059512 (isDefined!11452 lt!2059526))))))

(declare-datatypes ((tuple2!62580 0))(
  ( (tuple2!62581 (_1!34593 BalanceConc!29858) (_2!34593 BalanceConc!29858)) )
))
(declare-fun lt!2059513 () tuple2!62580)

(declare-fun lt!2059517 () TokenValue!8772)

(declare-fun lt!2059514 () List!57720)

(declare-fun lt!2059521 () Int)

(declare-datatypes ((tuple2!62582 0))(
  ( (tuple2!62583 (_1!34594 Token!15380) (_2!34594 BalanceConc!29858)) )
))
(declare-datatypes ((Option!14544 0))(
  ( (None!14543) (Some!14543 (v!50540 tuple2!62582)) )
))
(declare-fun isDefined!11453 (Option!14544) Bool)

(assert (=> b!4984091 (= lt!2059512 (isDefined!11453 (Some!14543 (tuple2!62583 (Token!15381 lt!2059517 rule!200 lt!2059521 lt!2059514) (_2!34593 lt!2059513)))))))

(declare-fun maxPrefixOneRule!3678 (LexerInterface!8054 Rule!16724 List!57720) Option!14543)

(assert (=> b!4984091 (= lt!2059526 (maxPrefixOneRule!3678 thiss!16165 rule!200 lt!2059523))))

(declare-fun size!38238 (BalanceConc!29858) Int)

(assert (=> b!4984091 (= lt!2059521 (size!38238 (_1!34593 lt!2059513)))))

(declare-fun apply!13949 (TokenValueInjection!16852 BalanceConc!29858) TokenValue!8772)

(assert (=> b!4984091 (= lt!2059517 (apply!13949 (transformation!8462 rule!200) (_1!34593 lt!2059513)))))

(declare-fun lt!2059520 () Unit!148700)

(declare-fun lt!2059519 () BalanceConc!29858)

(declare-fun ForallOf!1272 (Int BalanceConc!29858) Unit!148700)

(assert (=> b!4984091 (= lt!2059520 (ForallOf!1272 lambda!247944 lt!2059519))))

(declare-fun seqFromList!6083 (List!57720) BalanceConc!29858)

(assert (=> b!4984091 (= lt!2059519 (seqFromList!6083 lt!2059514))))

(declare-fun list!18476 (BalanceConc!29858) List!57720)

(assert (=> b!4984091 (= lt!2059514 (list!18476 (_1!34593 lt!2059513)))))

(declare-fun lt!2059525 () Unit!148700)

(assert (=> b!4984091 (= lt!2059525 (ForallOf!1272 lambda!247944 (_1!34593 lt!2059513)))))

(declare-fun b!4984092 () Bool)

(declare-fun e!3115017 () Bool)

(assert (=> b!4984092 (= e!3115017 e!3115018)))

(declare-fun res!2127617 () Bool)

(assert (=> b!4984092 (=> (not res!2127617) (not e!3115018))))

(declare-fun isEmpty!31126 (BalanceConc!29858) Bool)

(assert (=> b!4984092 (= res!2127617 (not (isEmpty!31126 (_1!34593 lt!2059513))))))

(declare-fun findLongestMatchWithZipperSequenceV2!225 (Regex!13695 BalanceConc!29858 BalanceConc!29858) tuple2!62580)

(assert (=> b!4984092 (= lt!2059513 (findLongestMatchWithZipperSequenceV2!225 (regex!8462 rule!200) input!1580 totalInput!520))))

(declare-fun res!2127619 () Bool)

(assert (=> b!4984093 (=> res!2127619 e!3115027)))

(declare-fun Forall!1812 (Int) Bool)

(assert (=> b!4984093 (= res!2127619 (not (Forall!1812 lambda!247944)))))

(declare-fun e!3115020 () Bool)

(declare-fun b!4984094 () Bool)

(declare-fun lt!2059522 () tuple2!62578)

(assert (=> b!4984094 (= e!3115020 (or (not (= (value!270587 (_1!34592 lt!2059522)) lt!2059517)) (not (= (rule!11722 (_1!34592 lt!2059522)) rule!200)) (= (size!38237 (_1!34592 lt!2059522)) lt!2059521)))))

(declare-fun get!20029 (Option!14543) tuple2!62578)

(assert (=> b!4984094 (= lt!2059522 (get!20029 lt!2059526))))

(declare-fun b!4984095 () Bool)

(assert (=> b!4984095 (= e!3115016 e!3115020)))

(declare-fun res!2127623 () Bool)

(assert (=> b!4984095 (=> res!2127623 e!3115020)))

(assert (=> b!4984095 (= res!2127623 (not (= (apply!13949 (transformation!8462 rule!200) lt!2059519) lt!2059517)))))

(declare-fun lt!2059516 () Unit!148700)

(declare-fun lemmaEqSameImage!1201 (TokenValueInjection!16852 BalanceConc!29858 BalanceConc!29858) Unit!148700)

(assert (=> b!4984095 (= lt!2059516 (lemmaEqSameImage!1201 (transformation!8462 rule!200) (_1!34593 lt!2059513) lt!2059519))))

(declare-fun b!4984096 () Bool)

(assert (=> b!4984096 (= e!3115022 e!3115017)))

(declare-fun res!2127622 () Bool)

(assert (=> b!4984096 (=> (not res!2127622) (not e!3115017))))

(declare-fun isSuffix!1261 (List!57720 List!57720) Bool)

(assert (=> b!4984096 (= res!2127622 (isSuffix!1261 lt!2059523 (list!18476 totalInput!520)))))

(assert (=> b!4984096 (= lt!2059523 (list!18476 input!1580))))

(declare-fun b!4984097 () Bool)

(declare-fun tp!1397020 () Bool)

(declare-fun inv!75464 (String!65733) Bool)

(declare-fun inv!75470 (TokenValueInjection!16852) Bool)

(assert (=> b!4984097 (= e!3115019 (and tp!1397020 (inv!75464 (tag!9326 rule!200)) (inv!75470 (transformation!8462 rule!200)) e!3115024))))

(declare-fun b!4984098 () Bool)

(declare-fun res!2127613 () Bool)

(assert (=> b!4984098 (=> (not res!2127613) (not e!3115022))))

(declare-fun ruleValid!3870 (LexerInterface!8054 Rule!16724) Bool)

(assert (=> b!4984098 (= res!2127613 (ruleValid!3870 thiss!16165 rule!200))))

(declare-fun b!4984099 () Bool)

(declare-fun res!2127618 () Bool)

(assert (=> b!4984099 (=> res!2127618 e!3115016)))

(assert (=> b!4984099 (= res!2127618 (not (= (list!18476 lt!2059519) lt!2059514)))))

(declare-fun b!4984100 () Bool)

(declare-fun tp!1397019 () Bool)

(assert (=> b!4984100 (= e!3115023 (and (inv!75468 (c!850512 totalInput!520)) tp!1397019))))

(assert (= (and start!526394 res!2127621) b!4984098))

(assert (= (and b!4984098 res!2127613) b!4984096))

(assert (= (and b!4984096 res!2127622) b!4984092))

(assert (= (and b!4984092 res!2127617) b!4984087))

(assert (= (and b!4984087 (not res!2127615)) b!4984090))

(assert (= (and b!4984087 (not res!2127620)) b!4984093))

(assert (= (and b!4984093 (not res!2127619)) b!4984091))

(assert (= (and b!4984091 (not res!2127614)) b!4984088))

(assert (= (and b!4984088 (not res!2127616)) b!4984099))

(assert (= (and b!4984099 (not res!2127618)) b!4984095))

(assert (= (and b!4984095 (not res!2127623)) b!4984094))

(assert (= b!4984097 b!4984089))

(assert (= start!526394 b!4984097))

(assert (= start!526394 b!4984100))

(assert (= start!526394 b!4984086))

(declare-fun m!6015630 () Bool)

(assert (=> start!526394 m!6015630))

(declare-fun m!6015632 () Bool)

(assert (=> start!526394 m!6015632))

(declare-fun m!6015634 () Bool)

(assert (=> b!4984086 m!6015634))

(declare-fun m!6015636 () Bool)

(assert (=> b!4984087 m!6015636))

(declare-fun m!6015638 () Bool)

(assert (=> b!4984087 m!6015638))

(declare-fun m!6015640 () Bool)

(assert (=> b!4984087 m!6015640))

(assert (=> b!4984087 m!6015636))

(declare-fun m!6015642 () Bool)

(assert (=> b!4984087 m!6015642))

(assert (=> b!4984087 m!6015640))

(declare-fun m!6015644 () Bool)

(assert (=> b!4984087 m!6015644))

(declare-fun m!6015646 () Bool)

(assert (=> b!4984087 m!6015646))

(declare-fun m!6015648 () Bool)

(assert (=> b!4984087 m!6015648))

(declare-fun m!6015650 () Bool)

(assert (=> b!4984098 m!6015650))

(declare-fun m!6015652 () Bool)

(assert (=> b!4984096 m!6015652))

(assert (=> b!4984096 m!6015652))

(declare-fun m!6015654 () Bool)

(assert (=> b!4984096 m!6015654))

(declare-fun m!6015656 () Bool)

(assert (=> b!4984096 m!6015656))

(declare-fun m!6015658 () Bool)

(assert (=> b!4984094 m!6015658))

(declare-fun m!6015660 () Bool)

(assert (=> b!4984099 m!6015660))

(declare-fun m!6015662 () Bool)

(assert (=> b!4984097 m!6015662))

(declare-fun m!6015664 () Bool)

(assert (=> b!4984097 m!6015664))

(declare-fun m!6015666 () Bool)

(assert (=> b!4984090 m!6015666))

(declare-fun m!6015668 () Bool)

(assert (=> b!4984093 m!6015668))

(declare-fun m!6015670 () Bool)

(assert (=> b!4984100 m!6015670))

(declare-fun m!6015672 () Bool)

(assert (=> b!4984091 m!6015672))

(declare-fun m!6015674 () Bool)

(assert (=> b!4984091 m!6015674))

(declare-fun m!6015676 () Bool)

(assert (=> b!4984091 m!6015676))

(declare-fun m!6015678 () Bool)

(assert (=> b!4984091 m!6015678))

(declare-fun m!6015680 () Bool)

(assert (=> b!4984091 m!6015680))

(declare-fun m!6015682 () Bool)

(assert (=> b!4984091 m!6015682))

(declare-fun m!6015684 () Bool)

(assert (=> b!4984091 m!6015684))

(declare-fun m!6015686 () Bool)

(assert (=> b!4984091 m!6015686))

(declare-fun m!6015688 () Bool)

(assert (=> b!4984091 m!6015688))

(declare-fun m!6015690 () Bool)

(assert (=> b!4984095 m!6015690))

(declare-fun m!6015692 () Bool)

(assert (=> b!4984095 m!6015692))

(declare-fun m!6015694 () Bool)

(assert (=> b!4984092 m!6015694))

(declare-fun m!6015696 () Bool)

(assert (=> b!4984092 m!6015696))

(check-sat (not b!4984099) (not b!4984087) (not b_next!133939) (not b!4984100) (not b!4984091) (not b!4984090) (not b!4984086) (not b!4984092) b_and!349777 b_and!349775 (not b!4984095) (not b!4984093) (not b!4984097) (not b!4984098) (not b!4984094) (not start!526394) (not b_next!133937) (not b!4984096))
(check-sat b_and!349777 b_and!349775 (not b_next!133939) (not b_next!133937))
(get-model)

(declare-fun d!1605073 () Bool)

(declare-fun c!850515 () Bool)

(assert (=> d!1605073 (= c!850515 ((_ is Node!15214) (c!850512 totalInput!520)))))

(declare-fun e!3115041 () Bool)

(assert (=> d!1605073 (= (inv!75468 (c!850512 totalInput!520)) e!3115041)))

(declare-fun b!4984117 () Bool)

(declare-fun inv!75471 (Conc!15214) Bool)

(assert (=> b!4984117 (= e!3115041 (inv!75471 (c!850512 totalInput!520)))))

(declare-fun b!4984118 () Bool)

(declare-fun e!3115042 () Bool)

(assert (=> b!4984118 (= e!3115041 e!3115042)))

(declare-fun res!2127630 () Bool)

(assert (=> b!4984118 (= res!2127630 (not ((_ is Leaf!25270) (c!850512 totalInput!520))))))

(assert (=> b!4984118 (=> res!2127630 e!3115042)))

(declare-fun b!4984119 () Bool)

(declare-fun inv!75472 (Conc!15214) Bool)

(assert (=> b!4984119 (= e!3115042 (inv!75472 (c!850512 totalInput!520)))))

(assert (= (and d!1605073 c!850515) b!4984117))

(assert (= (and d!1605073 (not c!850515)) b!4984118))

(assert (= (and b!4984118 (not res!2127630)) b!4984119))

(declare-fun m!6015702 () Bool)

(assert (=> b!4984117 m!6015702))

(declare-fun m!6015704 () Bool)

(assert (=> b!4984119 m!6015704))

(assert (=> b!4984100 d!1605073))

(declare-fun d!1605078 () Bool)

(declare-fun dynLambda!23405 (Int BalanceConc!29858) Bool)

(assert (=> d!1605078 (dynLambda!23405 lambda!247944 lt!2059519)))

(declare-fun lt!2059531 () Unit!148700)

(declare-fun choose!36833 (Int BalanceConc!29858) Unit!148700)

(assert (=> d!1605078 (= lt!2059531 (choose!36833 lambda!247944 lt!2059519))))

(assert (=> d!1605078 (Forall!1812 lambda!247944)))

(assert (=> d!1605078 (= (ForallOf!1272 lambda!247944 lt!2059519) lt!2059531)))

(declare-fun b_lambda!198103 () Bool)

(assert (=> (not b_lambda!198103) (not d!1605078)))

(declare-fun bs!1184485 () Bool)

(assert (= bs!1184485 d!1605078))

(declare-fun m!6015706 () Bool)

(assert (=> bs!1184485 m!6015706))

(declare-fun m!6015708 () Bool)

(assert (=> bs!1184485 m!6015708))

(assert (=> bs!1184485 m!6015668))

(assert (=> b!4984091 d!1605078))

(declare-fun d!1605080 () Bool)

(declare-fun lt!2059535 () Int)

(assert (=> d!1605080 (= lt!2059535 (size!38236 (list!18476 (_1!34593 lt!2059513))))))

(declare-fun size!38239 (Conc!15214) Int)

(assert (=> d!1605080 (= lt!2059535 (size!38239 (c!850512 (_1!34593 lt!2059513))))))

(assert (=> d!1605080 (= (size!38238 (_1!34593 lt!2059513)) lt!2059535)))

(declare-fun bs!1184486 () Bool)

(assert (= bs!1184486 d!1605080))

(assert (=> bs!1184486 m!6015680))

(assert (=> bs!1184486 m!6015680))

(declare-fun m!6015710 () Bool)

(assert (=> bs!1184486 m!6015710))

(declare-fun m!6015712 () Bool)

(assert (=> bs!1184486 m!6015712))

(assert (=> b!4984091 d!1605080))

(declare-fun d!1605082 () Bool)

(declare-fun list!18477 (Conc!15214) List!57720)

(assert (=> d!1605082 (= (list!18476 (_1!34593 lt!2059513)) (list!18477 (c!850512 (_1!34593 lt!2059513))))))

(declare-fun bs!1184487 () Bool)

(assert (= bs!1184487 d!1605082))

(declare-fun m!6015714 () Bool)

(assert (=> bs!1184487 m!6015714))

(assert (=> b!4984091 d!1605082))

(declare-fun d!1605084 () Bool)

(declare-fun isEmpty!31127 (Option!14543) Bool)

(assert (=> d!1605084 (= (isDefined!11452 lt!2059526) (not (isEmpty!31127 lt!2059526)))))

(declare-fun bs!1184488 () Bool)

(assert (= bs!1184488 d!1605084))

(declare-fun m!6015720 () Bool)

(assert (=> bs!1184488 m!6015720))

(assert (=> b!4984091 d!1605084))

(declare-fun d!1605086 () Bool)

(declare-fun isEmpty!31128 (Option!14544) Bool)

(assert (=> d!1605086 (= (isDefined!11453 (Some!14543 (tuple2!62583 (Token!15381 lt!2059517 rule!200 lt!2059521 lt!2059514) (_2!34593 lt!2059513)))) (not (isEmpty!31128 (Some!14543 (tuple2!62583 (Token!15381 lt!2059517 rule!200 lt!2059521 lt!2059514) (_2!34593 lt!2059513))))))))

(declare-fun bs!1184489 () Bool)

(assert (= bs!1184489 d!1605086))

(declare-fun m!6015724 () Bool)

(assert (=> bs!1184489 m!6015724))

(assert (=> b!4984091 d!1605086))

(declare-fun d!1605090 () Bool)

(assert (=> d!1605090 (dynLambda!23405 lambda!247944 (_1!34593 lt!2059513))))

(declare-fun lt!2059536 () Unit!148700)

(assert (=> d!1605090 (= lt!2059536 (choose!36833 lambda!247944 (_1!34593 lt!2059513)))))

(assert (=> d!1605090 (Forall!1812 lambda!247944)))

(assert (=> d!1605090 (= (ForallOf!1272 lambda!247944 (_1!34593 lt!2059513)) lt!2059536)))

(declare-fun b_lambda!198109 () Bool)

(assert (=> (not b_lambda!198109) (not d!1605090)))

(declare-fun bs!1184490 () Bool)

(assert (= bs!1184490 d!1605090))

(declare-fun m!6015726 () Bool)

(assert (=> bs!1184490 m!6015726))

(declare-fun m!6015728 () Bool)

(assert (=> bs!1184490 m!6015728))

(assert (=> bs!1184490 m!6015668))

(assert (=> b!4984091 d!1605090))

(declare-fun d!1605092 () Bool)

(declare-fun dynLambda!23406 (Int BalanceConc!29858) TokenValue!8772)

(assert (=> d!1605092 (= (apply!13949 (transformation!8462 rule!200) (_1!34593 lt!2059513)) (dynLambda!23406 (toValue!11459 (transformation!8462 rule!200)) (_1!34593 lt!2059513)))))

(declare-fun b_lambda!198111 () Bool)

(assert (=> (not b_lambda!198111) (not d!1605092)))

(declare-fun t!369907 () Bool)

(declare-fun tb!261683 () Bool)

(assert (=> (and b!4984089 (= (toValue!11459 (transformation!8462 rule!200)) (toValue!11459 (transformation!8462 rule!200))) t!369907) tb!261683))

(declare-fun result!327040 () Bool)

(declare-fun inv!21 (TokenValue!8772) Bool)

(assert (=> tb!261683 (= result!327040 (inv!21 (dynLambda!23406 (toValue!11459 (transformation!8462 rule!200)) (_1!34593 lt!2059513))))))

(declare-fun m!6015730 () Bool)

(assert (=> tb!261683 m!6015730))

(assert (=> d!1605092 t!369907))

(declare-fun b_and!349785 () Bool)

(assert (= b_and!349775 (and (=> t!369907 result!327040) b_and!349785)))

(declare-fun m!6015732 () Bool)

(assert (=> d!1605092 m!6015732))

(assert (=> b!4984091 d!1605092))

(declare-fun d!1605094 () Bool)

(declare-fun fromListB!2750 (List!57720) BalanceConc!29858)

(assert (=> d!1605094 (= (seqFromList!6083 lt!2059514) (fromListB!2750 lt!2059514))))

(declare-fun bs!1184492 () Bool)

(assert (= bs!1184492 d!1605094))

(declare-fun m!6015740 () Bool)

(assert (=> bs!1184492 m!6015740))

(assert (=> b!4984091 d!1605094))

(declare-fun b!4984164 () Bool)

(declare-fun res!2127660 () Bool)

(declare-fun e!3115076 () Bool)

(assert (=> b!4984164 (=> (not res!2127660) (not e!3115076))))

(declare-fun lt!2059565 () Option!14543)

(declare-fun ++!12558 (List!57720 List!57720) List!57720)

(declare-fun charsOf!5459 (Token!15380) BalanceConc!29858)

(assert (=> b!4984164 (= res!2127660 (= (++!12558 (list!18476 (charsOf!5459 (_1!34592 (get!20029 lt!2059565)))) (_2!34592 (get!20029 lt!2059565))) lt!2059523))))

(declare-fun b!4984165 () Bool)

(assert (=> b!4984165 (= e!3115076 (= (size!38237 (_1!34592 (get!20029 lt!2059565))) (size!38236 (originalCharacters!8721 (_1!34592 (get!20029 lt!2059565))))))))

(declare-fun b!4984166 () Bool)

(declare-fun res!2127661 () Bool)

(assert (=> b!4984166 (=> (not res!2127661) (not e!3115076))))

(assert (=> b!4984166 (= res!2127661 (= (value!270587 (_1!34592 (get!20029 lt!2059565))) (apply!13949 (transformation!8462 (rule!11722 (_1!34592 (get!20029 lt!2059565)))) (seqFromList!6083 (originalCharacters!8721 (_1!34592 (get!20029 lt!2059565)))))))))

(declare-fun b!4984168 () Bool)

(declare-fun e!3115073 () Option!14543)

(declare-fun lt!2059563 () tuple2!62576)

(assert (=> b!4984168 (= e!3115073 (Some!14542 (tuple2!62579 (Token!15381 (apply!13949 (transformation!8462 rule!200) (seqFromList!6083 (_1!34591 lt!2059563))) rule!200 (size!38238 (seqFromList!6083 (_1!34591 lt!2059563))) (_1!34591 lt!2059563)) (_2!34591 lt!2059563))))))

(declare-fun lt!2059566 () Unit!148700)

(assert (=> b!4984168 (= lt!2059566 (longestMatchIsAcceptedByMatchOrIsEmpty!1867 (regex!8462 rule!200) lt!2059523))))

(declare-fun res!2127658 () Bool)

(assert (=> b!4984168 (= res!2127658 (isEmpty!31125 (_1!34591 (findLongestMatchInner!1906 (regex!8462 rule!200) Nil!57596 (size!38236 Nil!57596) lt!2059523 lt!2059523 (size!38236 lt!2059523)))))))

(declare-fun e!3115075 () Bool)

(assert (=> b!4984168 (=> res!2127658 e!3115075)))

(assert (=> b!4984168 e!3115075))

(declare-fun lt!2059564 () Unit!148700)

(assert (=> b!4984168 (= lt!2059564 lt!2059566)))

(declare-fun lt!2059567 () Unit!148700)

(declare-fun lemmaSemiInverse!2622 (TokenValueInjection!16852 BalanceConc!29858) Unit!148700)

(assert (=> b!4984168 (= lt!2059567 (lemmaSemiInverse!2622 (transformation!8462 rule!200) (seqFromList!6083 (_1!34591 lt!2059563))))))

(declare-fun b!4984169 () Bool)

(declare-fun e!3115074 () Bool)

(assert (=> b!4984169 (= e!3115074 e!3115076)))

(declare-fun res!2127662 () Bool)

(assert (=> b!4984169 (=> (not res!2127662) (not e!3115076))))

(assert (=> b!4984169 (= res!2127662 (matchR!6689 (regex!8462 rule!200) (list!18476 (charsOf!5459 (_1!34592 (get!20029 lt!2059565))))))))

(declare-fun b!4984170 () Bool)

(declare-fun res!2127656 () Bool)

(assert (=> b!4984170 (=> (not res!2127656) (not e!3115076))))

(assert (=> b!4984170 (= res!2127656 (< (size!38236 (_2!34592 (get!20029 lt!2059565))) (size!38236 lt!2059523)))))

(declare-fun b!4984171 () Bool)

(declare-fun res!2127657 () Bool)

(assert (=> b!4984171 (=> (not res!2127657) (not e!3115076))))

(assert (=> b!4984171 (= res!2127657 (= (rule!11722 (_1!34592 (get!20029 lt!2059565))) rule!200))))

(declare-fun b!4984172 () Bool)

(assert (=> b!4984172 (= e!3115073 None!14542)))

(declare-fun b!4984167 () Bool)

(assert (=> b!4984167 (= e!3115075 (matchR!6689 (regex!8462 rule!200) (_1!34591 (findLongestMatchInner!1906 (regex!8462 rule!200) Nil!57596 (size!38236 Nil!57596) lt!2059523 lt!2059523 (size!38236 lt!2059523)))))))

(declare-fun d!1605102 () Bool)

(assert (=> d!1605102 e!3115074))

(declare-fun res!2127659 () Bool)

(assert (=> d!1605102 (=> res!2127659 e!3115074)))

(assert (=> d!1605102 (= res!2127659 (isEmpty!31127 lt!2059565))))

(assert (=> d!1605102 (= lt!2059565 e!3115073)))

(declare-fun c!850522 () Bool)

(assert (=> d!1605102 (= c!850522 (isEmpty!31125 (_1!34591 lt!2059563)))))

(declare-fun findLongestMatch!1722 (Regex!13695 List!57720) tuple2!62576)

(assert (=> d!1605102 (= lt!2059563 (findLongestMatch!1722 (regex!8462 rule!200) lt!2059523))))

(assert (=> d!1605102 (ruleValid!3870 thiss!16165 rule!200)))

(assert (=> d!1605102 (= (maxPrefixOneRule!3678 thiss!16165 rule!200 lt!2059523) lt!2059565)))

(assert (= (and d!1605102 c!850522) b!4984172))

(assert (= (and d!1605102 (not c!850522)) b!4984168))

(assert (= (and b!4984168 (not res!2127658)) b!4984167))

(assert (= (and d!1605102 (not res!2127659)) b!4984169))

(assert (= (and b!4984169 res!2127662) b!4984164))

(assert (= (and b!4984164 res!2127660) b!4984170))

(assert (= (and b!4984170 res!2127656) b!4984171))

(assert (= (and b!4984171 res!2127657) b!4984166))

(assert (= (and b!4984166 res!2127661) b!4984165))

(declare-fun m!6015776 () Bool)

(assert (=> b!4984168 m!6015776))

(assert (=> b!4984168 m!6015646))

(declare-fun m!6015778 () Bool)

(assert (=> b!4984168 m!6015778))

(declare-fun m!6015780 () Bool)

(assert (=> b!4984168 m!6015780))

(assert (=> b!4984168 m!6015636))

(assert (=> b!4984168 m!6015778))

(declare-fun m!6015782 () Bool)

(assert (=> b!4984168 m!6015782))

(assert (=> b!4984168 m!6015778))

(assert (=> b!4984168 m!6015640))

(assert (=> b!4984168 m!6015636))

(assert (=> b!4984168 m!6015642))

(assert (=> b!4984168 m!6015778))

(declare-fun m!6015784 () Bool)

(assert (=> b!4984168 m!6015784))

(assert (=> b!4984168 m!6015640))

(declare-fun m!6015786 () Bool)

(assert (=> b!4984169 m!6015786))

(declare-fun m!6015788 () Bool)

(assert (=> b!4984169 m!6015788))

(assert (=> b!4984169 m!6015788))

(declare-fun m!6015790 () Bool)

(assert (=> b!4984169 m!6015790))

(assert (=> b!4984169 m!6015790))

(declare-fun m!6015792 () Bool)

(assert (=> b!4984169 m!6015792))

(assert (=> b!4984170 m!6015786))

(declare-fun m!6015794 () Bool)

(assert (=> b!4984170 m!6015794))

(assert (=> b!4984170 m!6015636))

(assert (=> b!4984166 m!6015786))

(declare-fun m!6015796 () Bool)

(assert (=> b!4984166 m!6015796))

(assert (=> b!4984166 m!6015796))

(declare-fun m!6015798 () Bool)

(assert (=> b!4984166 m!6015798))

(assert (=> b!4984171 m!6015786))

(assert (=> b!4984165 m!6015786))

(declare-fun m!6015800 () Bool)

(assert (=> b!4984165 m!6015800))

(declare-fun m!6015802 () Bool)

(assert (=> d!1605102 m!6015802))

(declare-fun m!6015804 () Bool)

(assert (=> d!1605102 m!6015804))

(declare-fun m!6015806 () Bool)

(assert (=> d!1605102 m!6015806))

(assert (=> d!1605102 m!6015650))

(assert (=> b!4984164 m!6015786))

(assert (=> b!4984164 m!6015788))

(assert (=> b!4984164 m!6015788))

(assert (=> b!4984164 m!6015790))

(assert (=> b!4984164 m!6015790))

(declare-fun m!6015808 () Bool)

(assert (=> b!4984164 m!6015808))

(assert (=> b!4984167 m!6015640))

(assert (=> b!4984167 m!6015636))

(assert (=> b!4984167 m!6015640))

(assert (=> b!4984167 m!6015636))

(assert (=> b!4984167 m!6015642))

(declare-fun m!6015810 () Bool)

(assert (=> b!4984167 m!6015810))

(assert (=> b!4984091 d!1605102))

(declare-fun bm!347747 () Bool)

(declare-fun call!347752 () Bool)

(assert (=> bm!347747 (= call!347752 (isEmpty!31125 (_1!34591 lt!2059518)))))

(declare-fun b!4984201 () Bool)

(declare-fun res!2127682 () Bool)

(declare-fun e!3115092 () Bool)

(assert (=> b!4984201 (=> (not res!2127682) (not e!3115092))))

(assert (=> b!4984201 (= res!2127682 (not call!347752))))

(declare-fun b!4984202 () Bool)

(declare-fun head!10695 (List!57720) C!27640)

(assert (=> b!4984202 (= e!3115092 (= (head!10695 (_1!34591 lt!2059518)) (c!850511 (regex!8462 rule!200))))))

(declare-fun b!4984203 () Bool)

(declare-fun e!3115094 () Bool)

(declare-fun nullable!4646 (Regex!13695) Bool)

(assert (=> b!4984203 (= e!3115094 (nullable!4646 (regex!8462 rule!200)))))

(declare-fun b!4984205 () Bool)

(declare-fun res!2127680 () Bool)

(declare-fun e!3115096 () Bool)

(assert (=> b!4984205 (=> res!2127680 e!3115096)))

(assert (=> b!4984205 (= res!2127680 (not ((_ is ElementMatch!13695) (regex!8462 rule!200))))))

(declare-fun e!3115097 () Bool)

(assert (=> b!4984205 (= e!3115097 e!3115096)))

(declare-fun b!4984206 () Bool)

(declare-fun e!3115091 () Bool)

(declare-fun lt!2059570 () Bool)

(assert (=> b!4984206 (= e!3115091 (= lt!2059570 call!347752))))

(declare-fun b!4984207 () Bool)

(declare-fun e!3115095 () Bool)

(declare-fun e!3115093 () Bool)

(assert (=> b!4984207 (= e!3115095 e!3115093)))

(declare-fun res!2127681 () Bool)

(assert (=> b!4984207 (=> res!2127681 e!3115093)))

(assert (=> b!4984207 (= res!2127681 call!347752)))

(declare-fun b!4984208 () Bool)

(declare-fun res!2127686 () Bool)

(assert (=> b!4984208 (=> res!2127686 e!3115096)))

(assert (=> b!4984208 (= res!2127686 e!3115092)))

(declare-fun res!2127684 () Bool)

(assert (=> b!4984208 (=> (not res!2127684) (not e!3115092))))

(assert (=> b!4984208 (= res!2127684 lt!2059570)))

(declare-fun b!4984209 () Bool)

(declare-fun derivativeStep!3946 (Regex!13695 C!27640) Regex!13695)

(declare-fun tail!9828 (List!57720) List!57720)

(assert (=> b!4984209 (= e!3115094 (matchR!6689 (derivativeStep!3946 (regex!8462 rule!200) (head!10695 (_1!34591 lt!2059518))) (tail!9828 (_1!34591 lt!2059518))))))

(declare-fun b!4984210 () Bool)

(assert (=> b!4984210 (= e!3115091 e!3115097)))

(declare-fun c!850529 () Bool)

(assert (=> b!4984210 (= c!850529 ((_ is EmptyLang!13695) (regex!8462 rule!200)))))

(declare-fun b!4984211 () Bool)

(declare-fun res!2127683 () Bool)

(assert (=> b!4984211 (=> res!2127683 e!3115093)))

(assert (=> b!4984211 (= res!2127683 (not (isEmpty!31125 (tail!9828 (_1!34591 lt!2059518)))))))

(declare-fun b!4984212 () Bool)

(declare-fun res!2127685 () Bool)

(assert (=> b!4984212 (=> (not res!2127685) (not e!3115092))))

(assert (=> b!4984212 (= res!2127685 (isEmpty!31125 (tail!9828 (_1!34591 lt!2059518))))))

(declare-fun d!1605126 () Bool)

(assert (=> d!1605126 e!3115091))

(declare-fun c!850530 () Bool)

(assert (=> d!1605126 (= c!850530 ((_ is EmptyExpr!13695) (regex!8462 rule!200)))))

(assert (=> d!1605126 (= lt!2059570 e!3115094)))

(declare-fun c!850531 () Bool)

(assert (=> d!1605126 (= c!850531 (isEmpty!31125 (_1!34591 lt!2059518)))))

(declare-fun validRegex!5996 (Regex!13695) Bool)

(assert (=> d!1605126 (validRegex!5996 (regex!8462 rule!200))))

(assert (=> d!1605126 (= (matchR!6689 (regex!8462 rule!200) (_1!34591 lt!2059518)) lt!2059570)))

(declare-fun b!4984204 () Bool)

(assert (=> b!4984204 (= e!3115093 (not (= (head!10695 (_1!34591 lt!2059518)) (c!850511 (regex!8462 rule!200)))))))

(declare-fun b!4984213 () Bool)

(assert (=> b!4984213 (= e!3115097 (not lt!2059570))))

(declare-fun b!4984214 () Bool)

(assert (=> b!4984214 (= e!3115096 e!3115095)))

(declare-fun res!2127679 () Bool)

(assert (=> b!4984214 (=> (not res!2127679) (not e!3115095))))

(assert (=> b!4984214 (= res!2127679 (not lt!2059570))))

(assert (= (and d!1605126 c!850531) b!4984203))

(assert (= (and d!1605126 (not c!850531)) b!4984209))

(assert (= (and d!1605126 c!850530) b!4984206))

(assert (= (and d!1605126 (not c!850530)) b!4984210))

(assert (= (and b!4984210 c!850529) b!4984213))

(assert (= (and b!4984210 (not c!850529)) b!4984205))

(assert (= (and b!4984205 (not res!2127680)) b!4984208))

(assert (= (and b!4984208 res!2127684) b!4984201))

(assert (= (and b!4984201 res!2127682) b!4984212))

(assert (= (and b!4984212 res!2127685) b!4984202))

(assert (= (and b!4984208 (not res!2127686)) b!4984214))

(assert (= (and b!4984214 res!2127679) b!4984207))

(assert (= (and b!4984207 (not res!2127681)) b!4984211))

(assert (= (and b!4984211 (not res!2127683)) b!4984204))

(assert (= (or b!4984206 b!4984201 b!4984207) bm!347747))

(declare-fun m!6015812 () Bool)

(assert (=> b!4984203 m!6015812))

(declare-fun m!6015814 () Bool)

(assert (=> b!4984202 m!6015814))

(assert (=> d!1605126 m!6015648))

(declare-fun m!6015816 () Bool)

(assert (=> d!1605126 m!6015816))

(declare-fun m!6015818 () Bool)

(assert (=> b!4984211 m!6015818))

(assert (=> b!4984211 m!6015818))

(declare-fun m!6015820 () Bool)

(assert (=> b!4984211 m!6015820))

(assert (=> b!4984209 m!6015814))

(assert (=> b!4984209 m!6015814))

(declare-fun m!6015822 () Bool)

(assert (=> b!4984209 m!6015822))

(assert (=> b!4984209 m!6015818))

(assert (=> b!4984209 m!6015822))

(assert (=> b!4984209 m!6015818))

(declare-fun m!6015824 () Bool)

(assert (=> b!4984209 m!6015824))

(assert (=> bm!347747 m!6015648))

(assert (=> b!4984212 m!6015818))

(assert (=> b!4984212 m!6015818))

(assert (=> b!4984212 m!6015820))

(assert (=> b!4984204 m!6015814))

(assert (=> b!4984090 d!1605126))

(declare-fun d!1605128 () Bool)

(declare-fun lt!2059573 () Int)

(assert (=> d!1605128 (>= lt!2059573 0)))

(declare-fun e!3115100 () Int)

(assert (=> d!1605128 (= lt!2059573 e!3115100)))

(declare-fun c!850534 () Bool)

(assert (=> d!1605128 (= c!850534 ((_ is Nil!57596) lt!2059523))))

(assert (=> d!1605128 (= (size!38236 lt!2059523) lt!2059573)))

(declare-fun b!4984219 () Bool)

(assert (=> b!4984219 (= e!3115100 0)))

(declare-fun b!4984220 () Bool)

(assert (=> b!4984220 (= e!3115100 (+ 1 (size!38236 (t!369900 lt!2059523))))))

(assert (= (and d!1605128 c!850534) b!4984219))

(assert (= (and d!1605128 (not c!850534)) b!4984220))

(declare-fun m!6015826 () Bool)

(assert (=> b!4984220 m!6015826))

(assert (=> b!4984087 d!1605128))

(declare-fun d!1605130 () Bool)

(declare-fun e!3115103 () Bool)

(assert (=> d!1605130 e!3115103))

(declare-fun res!2127689 () Bool)

(assert (=> d!1605130 (=> res!2127689 e!3115103)))

(assert (=> d!1605130 (= res!2127689 (isEmpty!31125 (_1!34591 (findLongestMatchInner!1906 (regex!8462 rule!200) Nil!57596 (size!38236 Nil!57596) lt!2059523 lt!2059523 (size!38236 lt!2059523)))))))

(declare-fun lt!2059576 () Unit!148700)

(declare-fun choose!36836 (Regex!13695 List!57720) Unit!148700)

(assert (=> d!1605130 (= lt!2059576 (choose!36836 (regex!8462 rule!200) lt!2059523))))

(assert (=> d!1605130 (validRegex!5996 (regex!8462 rule!200))))

(assert (=> d!1605130 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1867 (regex!8462 rule!200) lt!2059523) lt!2059576)))

(declare-fun b!4984223 () Bool)

(assert (=> b!4984223 (= e!3115103 (matchR!6689 (regex!8462 rule!200) (_1!34591 (findLongestMatchInner!1906 (regex!8462 rule!200) Nil!57596 (size!38236 Nil!57596) lt!2059523 lt!2059523 (size!38236 lt!2059523)))))))

(assert (= (and d!1605130 (not res!2127689)) b!4984223))

(assert (=> d!1605130 m!6015640))

(assert (=> d!1605130 m!6015636))

(assert (=> d!1605130 m!6015642))

(assert (=> d!1605130 m!6015816))

(assert (=> d!1605130 m!6015776))

(assert (=> d!1605130 m!6015640))

(assert (=> d!1605130 m!6015636))

(declare-fun m!6015828 () Bool)

(assert (=> d!1605130 m!6015828))

(assert (=> b!4984223 m!6015640))

(assert (=> b!4984223 m!6015636))

(assert (=> b!4984223 m!6015640))

(assert (=> b!4984223 m!6015636))

(assert (=> b!4984223 m!6015642))

(assert (=> b!4984223 m!6015810))

(assert (=> b!4984087 d!1605130))

(declare-fun b!4984361 () Bool)

(declare-fun e!3115182 () tuple2!62576)

(assert (=> b!4984361 (= e!3115182 (tuple2!62577 Nil!57596 lt!2059523))))

(declare-fun b!4984362 () Bool)

(declare-fun e!3115180 () tuple2!62576)

(assert (=> b!4984362 (= e!3115180 (tuple2!62577 Nil!57596 Nil!57596))))

(declare-fun b!4984364 () Bool)

(declare-fun e!3115183 () tuple2!62576)

(declare-fun e!3115185 () tuple2!62576)

(assert (=> b!4984364 (= e!3115183 e!3115185)))

(declare-fun lt!2059743 () tuple2!62576)

(declare-fun call!347802 () tuple2!62576)

(assert (=> b!4984364 (= lt!2059743 call!347802)))

(declare-fun c!850582 () Bool)

(assert (=> b!4984364 (= c!850582 (isEmpty!31125 (_1!34591 lt!2059743)))))

(declare-fun bm!347791 () Bool)

(declare-fun call!347796 () Bool)

(declare-fun isPrefix!5272 (List!57720 List!57720) Bool)

(assert (=> bm!347791 (= call!347796 (isPrefix!5272 lt!2059523 lt!2059523))))

(declare-fun bm!347792 () Bool)

(declare-fun call!347801 () Regex!13695)

(declare-fun call!347797 () C!27640)

(assert (=> bm!347792 (= call!347801 (derivativeStep!3946 (regex!8462 rule!200) call!347797))))

(declare-fun bm!347793 () Bool)

(declare-fun call!347798 () Unit!148700)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1231 (List!57720 List!57720 List!57720) Unit!148700)

(assert (=> bm!347793 (= call!347798 (lemmaIsPrefixSameLengthThenSameList!1231 lt!2059523 Nil!57596 lt!2059523))))

(declare-fun b!4984365 () Bool)

(declare-fun e!3115186 () tuple2!62576)

(assert (=> b!4984365 (= e!3115182 e!3115186)))

(declare-fun c!850580 () Bool)

(assert (=> b!4984365 (= c!850580 (= (size!38236 Nil!57596) (size!38236 lt!2059523)))))

(declare-fun b!4984366 () Bool)

(assert (=> b!4984366 (= e!3115183 call!347802)))

(declare-fun b!4984367 () Bool)

(declare-fun c!850583 () Bool)

(declare-fun call!347803 () Bool)

(assert (=> b!4984367 (= c!850583 call!347803)))

(declare-fun lt!2059741 () Unit!148700)

(declare-fun lt!2059723 () Unit!148700)

(assert (=> b!4984367 (= lt!2059741 lt!2059723)))

(assert (=> b!4984367 (= lt!2059523 Nil!57596)))

(assert (=> b!4984367 (= lt!2059723 call!347798)))

(declare-fun lt!2059736 () Unit!148700)

(declare-fun lt!2059733 () Unit!148700)

(assert (=> b!4984367 (= lt!2059736 lt!2059733)))

(assert (=> b!4984367 call!347796))

(declare-fun call!347800 () Unit!148700)

(assert (=> b!4984367 (= lt!2059733 call!347800)))

(assert (=> b!4984367 (= e!3115186 e!3115180)))

(declare-fun lt!2059732 () List!57720)

(declare-fun bm!347794 () Bool)

(declare-fun call!347799 () List!57720)

(assert (=> bm!347794 (= call!347802 (findLongestMatchInner!1906 call!347801 lt!2059732 (+ (size!38236 Nil!57596) 1) call!347799 lt!2059523 (size!38236 lt!2059523)))))

(declare-fun bm!347795 () Bool)

(assert (=> bm!347795 (= call!347799 (tail!9828 lt!2059523))))

(declare-fun b!4984368 () Bool)

(assert (=> b!4984368 (= e!3115185 (tuple2!62577 Nil!57596 lt!2059523))))

(declare-fun d!1605132 () Bool)

(declare-fun e!3115181 () Bool)

(assert (=> d!1605132 e!3115181))

(declare-fun res!2127737 () Bool)

(assert (=> d!1605132 (=> (not res!2127737) (not e!3115181))))

(declare-fun lt!2059737 () tuple2!62576)

(assert (=> d!1605132 (= res!2127737 (= (++!12558 (_1!34591 lt!2059737) (_2!34591 lt!2059737)) lt!2059523))))

(assert (=> d!1605132 (= lt!2059737 e!3115182)))

(declare-fun c!850579 () Bool)

(declare-fun lostCause!1156 (Regex!13695) Bool)

(assert (=> d!1605132 (= c!850579 (lostCause!1156 (regex!8462 rule!200)))))

(declare-fun lt!2059740 () Unit!148700)

(declare-fun Unit!148706 () Unit!148700)

(assert (=> d!1605132 (= lt!2059740 Unit!148706)))

(declare-fun getSuffix!3112 (List!57720 List!57720) List!57720)

(assert (=> d!1605132 (= (getSuffix!3112 lt!2059523 Nil!57596) lt!2059523)))

(declare-fun lt!2059725 () Unit!148700)

(declare-fun lt!2059735 () Unit!148700)

(assert (=> d!1605132 (= lt!2059725 lt!2059735)))

(declare-fun lt!2059722 () List!57720)

(assert (=> d!1605132 (= lt!2059523 lt!2059722)))

(declare-fun lemmaSamePrefixThenSameSuffix!2524 (List!57720 List!57720 List!57720 List!57720 List!57720) Unit!148700)

(assert (=> d!1605132 (= lt!2059735 (lemmaSamePrefixThenSameSuffix!2524 Nil!57596 lt!2059523 Nil!57596 lt!2059722 lt!2059523))))

(assert (=> d!1605132 (= lt!2059722 (getSuffix!3112 lt!2059523 Nil!57596))))

(declare-fun lt!2059726 () Unit!148700)

(declare-fun lt!2059739 () Unit!148700)

(assert (=> d!1605132 (= lt!2059726 lt!2059739)))

(assert (=> d!1605132 (isPrefix!5272 Nil!57596 (++!12558 Nil!57596 lt!2059523))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3370 (List!57720 List!57720) Unit!148700)

(assert (=> d!1605132 (= lt!2059739 (lemmaConcatTwoListThenFirstIsPrefix!3370 Nil!57596 lt!2059523))))

(assert (=> d!1605132 (validRegex!5996 (regex!8462 rule!200))))

(assert (=> d!1605132 (= (findLongestMatchInner!1906 (regex!8462 rule!200) Nil!57596 (size!38236 Nil!57596) lt!2059523 lt!2059523 (size!38236 lt!2059523)) lt!2059737)))

(declare-fun b!4984363 () Bool)

(declare-fun e!3115179 () Unit!148700)

(declare-fun Unit!148707 () Unit!148700)

(assert (=> b!4984363 (= e!3115179 Unit!148707)))

(declare-fun lt!2059734 () Unit!148700)

(assert (=> b!4984363 (= lt!2059734 call!347800)))

(assert (=> b!4984363 call!347796))

(declare-fun lt!2059738 () Unit!148700)

(assert (=> b!4984363 (= lt!2059738 lt!2059734)))

(declare-fun lt!2059745 () Unit!148700)

(assert (=> b!4984363 (= lt!2059745 call!347798)))

(assert (=> b!4984363 (= lt!2059523 Nil!57596)))

(declare-fun lt!2059731 () Unit!148700)

(assert (=> b!4984363 (= lt!2059731 lt!2059745)))

(assert (=> b!4984363 false))

(declare-fun b!4984369 () Bool)

(assert (=> b!4984369 (= e!3115185 lt!2059743)))

(declare-fun b!4984370 () Bool)

(declare-fun e!3115184 () Bool)

(assert (=> b!4984370 (= e!3115181 e!3115184)))

(declare-fun res!2127738 () Bool)

(assert (=> b!4984370 (=> res!2127738 e!3115184)))

(assert (=> b!4984370 (= res!2127738 (isEmpty!31125 (_1!34591 lt!2059737)))))

(declare-fun bm!347796 () Bool)

(declare-fun lemmaIsPrefixRefl!3596 (List!57720 List!57720) Unit!148700)

(assert (=> bm!347796 (= call!347800 (lemmaIsPrefixRefl!3596 lt!2059523 lt!2059523))))

(declare-fun b!4984371 () Bool)

(declare-fun c!850578 () Bool)

(assert (=> b!4984371 (= c!850578 call!347803)))

(declare-fun lt!2059742 () Unit!148700)

(declare-fun lt!2059744 () Unit!148700)

(assert (=> b!4984371 (= lt!2059742 lt!2059744)))

(declare-fun lt!2059746 () C!27640)

(declare-fun lt!2059727 () List!57720)

(assert (=> b!4984371 (= (++!12558 (++!12558 Nil!57596 (Cons!57596 lt!2059746 Nil!57596)) lt!2059727) lt!2059523)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1469 (List!57720 C!27640 List!57720 List!57720) Unit!148700)

(assert (=> b!4984371 (= lt!2059744 (lemmaMoveElementToOtherListKeepsConcatEq!1469 Nil!57596 lt!2059746 lt!2059727 lt!2059523))))

(assert (=> b!4984371 (= lt!2059727 (tail!9828 lt!2059523))))

(assert (=> b!4984371 (= lt!2059746 (head!10695 lt!2059523))))

(declare-fun lt!2059720 () Unit!148700)

(declare-fun lt!2059721 () Unit!148700)

(assert (=> b!4984371 (= lt!2059720 lt!2059721)))

(assert (=> b!4984371 (isPrefix!5272 (++!12558 Nil!57596 (Cons!57596 (head!10695 (getSuffix!3112 lt!2059523 Nil!57596)) Nil!57596)) lt!2059523)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!859 (List!57720 List!57720) Unit!148700)

(assert (=> b!4984371 (= lt!2059721 (lemmaAddHeadSuffixToPrefixStillPrefix!859 Nil!57596 lt!2059523))))

(declare-fun lt!2059724 () Unit!148700)

(declare-fun lt!2059730 () Unit!148700)

(assert (=> b!4984371 (= lt!2059724 lt!2059730)))

(assert (=> b!4984371 (= lt!2059730 (lemmaAddHeadSuffixToPrefixStillPrefix!859 Nil!57596 lt!2059523))))

(assert (=> b!4984371 (= lt!2059732 (++!12558 Nil!57596 (Cons!57596 (head!10695 lt!2059523) Nil!57596)))))

(declare-fun lt!2059728 () Unit!148700)

(assert (=> b!4984371 (= lt!2059728 e!3115179)))

(declare-fun c!850581 () Bool)

(assert (=> b!4984371 (= c!850581 (= (size!38236 Nil!57596) (size!38236 lt!2059523)))))

(declare-fun lt!2059747 () Unit!148700)

(declare-fun lt!2059729 () Unit!148700)

(assert (=> b!4984371 (= lt!2059747 lt!2059729)))

(assert (=> b!4984371 (<= (size!38236 Nil!57596) (size!38236 lt!2059523))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!785 (List!57720 List!57720) Unit!148700)

(assert (=> b!4984371 (= lt!2059729 (lemmaIsPrefixThenSmallerEqSize!785 Nil!57596 lt!2059523))))

(assert (=> b!4984371 (= e!3115186 e!3115183)))

(declare-fun bm!347797 () Bool)

(assert (=> bm!347797 (= call!347797 (head!10695 lt!2059523))))

(declare-fun bm!347798 () Bool)

(assert (=> bm!347798 (= call!347803 (nullable!4646 (regex!8462 rule!200)))))

(declare-fun b!4984372 () Bool)

(assert (=> b!4984372 (= e!3115184 (>= (size!38236 (_1!34591 lt!2059737)) (size!38236 Nil!57596)))))

(declare-fun b!4984373 () Bool)

(assert (=> b!4984373 (= e!3115180 (tuple2!62577 Nil!57596 lt!2059523))))

(declare-fun b!4984374 () Bool)

(declare-fun Unit!148708 () Unit!148700)

(assert (=> b!4984374 (= e!3115179 Unit!148708)))

(assert (= (and d!1605132 c!850579) b!4984361))

(assert (= (and d!1605132 (not c!850579)) b!4984365))

(assert (= (and b!4984365 c!850580) b!4984367))

(assert (= (and b!4984365 (not c!850580)) b!4984371))

(assert (= (and b!4984367 c!850583) b!4984362))

(assert (= (and b!4984367 (not c!850583)) b!4984373))

(assert (= (and b!4984371 c!850581) b!4984363))

(assert (= (and b!4984371 (not c!850581)) b!4984374))

(assert (= (and b!4984371 c!850578) b!4984364))

(assert (= (and b!4984371 (not c!850578)) b!4984366))

(assert (= (and b!4984364 c!850582) b!4984368))

(assert (= (and b!4984364 (not c!850582)) b!4984369))

(assert (= (or b!4984364 b!4984366) bm!347797))

(assert (= (or b!4984364 b!4984366) bm!347795))

(assert (= (or b!4984364 b!4984366) bm!347792))

(assert (= (or b!4984364 b!4984366) bm!347794))

(assert (= (or b!4984367 b!4984363) bm!347791))

(assert (= (or b!4984367 b!4984363) bm!347793))

(assert (= (or b!4984367 b!4984363) bm!347796))

(assert (= (or b!4984367 b!4984371) bm!347798))

(assert (= (and d!1605132 res!2127737) b!4984370))

(assert (= (and b!4984370 (not res!2127738)) b!4984372))

(declare-fun m!6015906 () Bool)

(assert (=> b!4984370 m!6015906))

(declare-fun m!6015908 () Bool)

(assert (=> b!4984364 m!6015908))

(declare-fun m!6015910 () Bool)

(assert (=> bm!347791 m!6015910))

(assert (=> bm!347798 m!6015812))

(declare-fun m!6015912 () Bool)

(assert (=> bm!347792 m!6015912))

(declare-fun m!6015914 () Bool)

(assert (=> bm!347793 m!6015914))

(declare-fun m!6015916 () Bool)

(assert (=> bm!347795 m!6015916))

(declare-fun m!6015918 () Bool)

(assert (=> b!4984371 m!6015918))

(declare-fun m!6015920 () Bool)

(assert (=> b!4984371 m!6015920))

(declare-fun m!6015922 () Bool)

(assert (=> b!4984371 m!6015922))

(assert (=> b!4984371 m!6015640))

(declare-fun m!6015924 () Bool)

(assert (=> b!4984371 m!6015924))

(declare-fun m!6015926 () Bool)

(assert (=> b!4984371 m!6015926))

(assert (=> b!4984371 m!6015922))

(declare-fun m!6015928 () Bool)

(assert (=> b!4984371 m!6015928))

(declare-fun m!6015930 () Bool)

(assert (=> b!4984371 m!6015930))

(declare-fun m!6015932 () Bool)

(assert (=> b!4984371 m!6015932))

(assert (=> b!4984371 m!6015916))

(assert (=> b!4984371 m!6015918))

(declare-fun m!6015934 () Bool)

(assert (=> b!4984371 m!6015934))

(declare-fun m!6015936 () Bool)

(assert (=> b!4984371 m!6015936))

(assert (=> b!4984371 m!6015930))

(declare-fun m!6015938 () Bool)

(assert (=> b!4984371 m!6015938))

(assert (=> b!4984371 m!6015636))

(declare-fun m!6015940 () Bool)

(assert (=> d!1605132 m!6015940))

(assert (=> d!1605132 m!6015922))

(declare-fun m!6015942 () Bool)

(assert (=> d!1605132 m!6015942))

(assert (=> d!1605132 m!6015940))

(declare-fun m!6015944 () Bool)

(assert (=> d!1605132 m!6015944))

(declare-fun m!6015946 () Bool)

(assert (=> d!1605132 m!6015946))

(declare-fun m!6015948 () Bool)

(assert (=> d!1605132 m!6015948))

(declare-fun m!6015950 () Bool)

(assert (=> d!1605132 m!6015950))

(assert (=> d!1605132 m!6015816))

(assert (=> bm!347794 m!6015636))

(declare-fun m!6015952 () Bool)

(assert (=> bm!347794 m!6015952))

(declare-fun m!6015954 () Bool)

(assert (=> b!4984372 m!6015954))

(assert (=> b!4984372 m!6015640))

(assert (=> bm!347797 m!6015926))

(declare-fun m!6015956 () Bool)

(assert (=> bm!347796 m!6015956))

(assert (=> b!4984087 d!1605132))

(declare-fun d!1605152 () Bool)

(declare-fun lt!2059748 () Int)

(assert (=> d!1605152 (>= lt!2059748 0)))

(declare-fun e!3115187 () Int)

(assert (=> d!1605152 (= lt!2059748 e!3115187)))

(declare-fun c!850584 () Bool)

(assert (=> d!1605152 (= c!850584 ((_ is Nil!57596) Nil!57596))))

(assert (=> d!1605152 (= (size!38236 Nil!57596) lt!2059748)))

(declare-fun b!4984375 () Bool)

(assert (=> b!4984375 (= e!3115187 0)))

(declare-fun b!4984376 () Bool)

(assert (=> b!4984376 (= e!3115187 (+ 1 (size!38236 (t!369900 Nil!57596))))))

(assert (= (and d!1605152 c!850584) b!4984375))

(assert (= (and d!1605152 (not c!850584)) b!4984376))

(declare-fun m!6015958 () Bool)

(assert (=> b!4984376 m!6015958))

(assert (=> b!4984087 d!1605152))

(declare-fun d!1605154 () Bool)

(declare-fun e!3115190 () Bool)

(assert (=> d!1605154 e!3115190))

(declare-fun res!2127741 () Bool)

(assert (=> d!1605154 (=> (not res!2127741) (not e!3115190))))

(assert (=> d!1605154 (= res!2127741 (semiInverseModEq!3755 (toChars!11318 (transformation!8462 rule!200)) (toValue!11459 (transformation!8462 rule!200))))))

(declare-fun Unit!148709 () Unit!148700)

(assert (=> d!1605154 (= (lemmaInv!1385 (transformation!8462 rule!200)) Unit!148709)))

(declare-fun b!4984379 () Bool)

(declare-fun equivClasses!3577 (Int Int) Bool)

(assert (=> b!4984379 (= e!3115190 (equivClasses!3577 (toChars!11318 (transformation!8462 rule!200)) (toValue!11459 (transformation!8462 rule!200))))))

(assert (= (and d!1605154 res!2127741) b!4984379))

(assert (=> d!1605154 m!6015644))

(declare-fun m!6015960 () Bool)

(assert (=> b!4984379 m!6015960))

(assert (=> b!4984087 d!1605154))

(declare-fun d!1605156 () Bool)

(assert (=> d!1605156 (= (isEmpty!31125 (_1!34591 lt!2059518)) ((_ is Nil!57596) (_1!34591 lt!2059518)))))

(assert (=> b!4984087 d!1605156))

(declare-fun bs!1184502 () Bool)

(declare-fun d!1605158 () Bool)

(assert (= bs!1184502 (and d!1605158 b!4984093)))

(declare-fun lambda!247953 () Int)

(assert (=> bs!1184502 (= lambda!247953 lambda!247944)))

(assert (=> d!1605158 true))

(assert (=> d!1605158 (< (dynLambda!23402 order!26553 (toChars!11318 (transformation!8462 rule!200))) (dynLambda!23401 order!26551 lambda!247953))))

(assert (=> d!1605158 true))

(assert (=> d!1605158 (< (dynLambda!23400 order!26549 (toValue!11459 (transformation!8462 rule!200))) (dynLambda!23401 order!26551 lambda!247953))))

(assert (=> d!1605158 (= (semiInverseModEq!3755 (toChars!11318 (transformation!8462 rule!200)) (toValue!11459 (transformation!8462 rule!200))) (Forall!1812 lambda!247953))))

(declare-fun bs!1184503 () Bool)

(assert (= bs!1184503 d!1605158))

(declare-fun m!6015962 () Bool)

(assert (=> bs!1184503 m!6015962))

(assert (=> b!4984087 d!1605158))

(declare-fun d!1605160 () Bool)

(assert (=> d!1605160 (= (inv!75464 (tag!9326 rule!200)) (= (mod (str.len (value!270561 (tag!9326 rule!200))) 2) 0))))

(assert (=> b!4984097 d!1605160))

(declare-fun d!1605162 () Bool)

(declare-fun res!2127744 () Bool)

(declare-fun e!3115193 () Bool)

(assert (=> d!1605162 (=> (not res!2127744) (not e!3115193))))

(assert (=> d!1605162 (= res!2127744 (semiInverseModEq!3755 (toChars!11318 (transformation!8462 rule!200)) (toValue!11459 (transformation!8462 rule!200))))))

(assert (=> d!1605162 (= (inv!75470 (transformation!8462 rule!200)) e!3115193)))

(declare-fun b!4984386 () Bool)

(assert (=> b!4984386 (= e!3115193 (equivClasses!3577 (toChars!11318 (transformation!8462 rule!200)) (toValue!11459 (transformation!8462 rule!200))))))

(assert (= (and d!1605162 res!2127744) b!4984386))

(assert (=> d!1605162 m!6015644))

(assert (=> b!4984386 m!6015960))

(assert (=> b!4984097 d!1605162))

(declare-fun d!1605164 () Bool)

(declare-fun c!850585 () Bool)

(assert (=> d!1605164 (= c!850585 ((_ is Node!15214) (c!850512 input!1580)))))

(declare-fun e!3115194 () Bool)

(assert (=> d!1605164 (= (inv!75468 (c!850512 input!1580)) e!3115194)))

(declare-fun b!4984387 () Bool)

(assert (=> b!4984387 (= e!3115194 (inv!75471 (c!850512 input!1580)))))

(declare-fun b!4984388 () Bool)

(declare-fun e!3115195 () Bool)

(assert (=> b!4984388 (= e!3115194 e!3115195)))

(declare-fun res!2127745 () Bool)

(assert (=> b!4984388 (= res!2127745 (not ((_ is Leaf!25270) (c!850512 input!1580))))))

(assert (=> b!4984388 (=> res!2127745 e!3115195)))

(declare-fun b!4984389 () Bool)

(assert (=> b!4984389 (= e!3115195 (inv!75472 (c!850512 input!1580)))))

(assert (= (and d!1605164 c!850585) b!4984387))

(assert (= (and d!1605164 (not c!850585)) b!4984388))

(assert (= (and b!4984388 (not res!2127745)) b!4984389))

(declare-fun m!6015964 () Bool)

(assert (=> b!4984387 m!6015964))

(declare-fun m!6015966 () Bool)

(assert (=> b!4984389 m!6015966))

(assert (=> b!4984086 d!1605164))

(declare-fun d!1605166 () Bool)

(assert (=> d!1605166 (= (list!18476 lt!2059519) (list!18477 (c!850512 lt!2059519)))))

(declare-fun bs!1184504 () Bool)

(assert (= bs!1184504 d!1605166))

(declare-fun m!6015968 () Bool)

(assert (=> bs!1184504 m!6015968))

(assert (=> b!4984099 d!1605166))

(declare-fun d!1605168 () Bool)

(declare-fun res!2127750 () Bool)

(declare-fun e!3115198 () Bool)

(assert (=> d!1605168 (=> (not res!2127750) (not e!3115198))))

(assert (=> d!1605168 (= res!2127750 (validRegex!5996 (regex!8462 rule!200)))))

(assert (=> d!1605168 (= (ruleValid!3870 thiss!16165 rule!200) e!3115198)))

(declare-fun b!4984394 () Bool)

(declare-fun res!2127751 () Bool)

(assert (=> b!4984394 (=> (not res!2127751) (not e!3115198))))

(assert (=> b!4984394 (= res!2127751 (not (nullable!4646 (regex!8462 rule!200))))))

(declare-fun b!4984395 () Bool)

(assert (=> b!4984395 (= e!3115198 (not (= (tag!9326 rule!200) (String!65734 ""))))))

(assert (= (and d!1605168 res!2127750) b!4984394))

(assert (= (and b!4984394 res!2127751) b!4984395))

(assert (=> d!1605168 m!6015816))

(assert (=> b!4984394 m!6015812))

(assert (=> b!4984098 d!1605168))

(declare-fun d!1605170 () Bool)

(assert (=> d!1605170 (= (apply!13949 (transformation!8462 rule!200) lt!2059519) (dynLambda!23406 (toValue!11459 (transformation!8462 rule!200)) lt!2059519))))

(declare-fun b_lambda!198113 () Bool)

(assert (=> (not b_lambda!198113) (not d!1605170)))

(declare-fun t!369909 () Bool)

(declare-fun tb!261685 () Bool)

(assert (=> (and b!4984089 (= (toValue!11459 (transformation!8462 rule!200)) (toValue!11459 (transformation!8462 rule!200))) t!369909) tb!261685))

(declare-fun result!327044 () Bool)

(assert (=> tb!261685 (= result!327044 (inv!21 (dynLambda!23406 (toValue!11459 (transformation!8462 rule!200)) lt!2059519)))))

(declare-fun m!6015970 () Bool)

(assert (=> tb!261685 m!6015970))

(assert (=> d!1605170 t!369909))

(declare-fun b_and!349787 () Bool)

(assert (= b_and!349785 (and (=> t!369909 result!327044) b_and!349787)))

(declare-fun m!6015972 () Bool)

(assert (=> d!1605170 m!6015972))

(assert (=> b!4984095 d!1605170))

(declare-fun b!4984420 () Bool)

(declare-fun e!3115212 () Bool)

(assert (=> b!4984420 (= e!3115212 true)))

(declare-fun d!1605172 () Bool)

(assert (=> d!1605172 e!3115212))

(assert (= d!1605172 b!4984420))

(declare-fun order!26557 () Int)

(declare-fun lambda!247956 () Int)

(declare-fun dynLambda!23407 (Int Int) Int)

(assert (=> b!4984420 (< (dynLambda!23400 order!26549 (toValue!11459 (transformation!8462 rule!200))) (dynLambda!23407 order!26557 lambda!247956))))

(assert (=> b!4984420 (< (dynLambda!23402 order!26553 (toChars!11318 (transformation!8462 rule!200))) (dynLambda!23407 order!26557 lambda!247956))))

(assert (=> d!1605172 (= (dynLambda!23406 (toValue!11459 (transformation!8462 rule!200)) (_1!34593 lt!2059513)) (dynLambda!23406 (toValue!11459 (transformation!8462 rule!200)) lt!2059519))))

(declare-fun lt!2059761 () Unit!148700)

(declare-fun Forall2of!491 (Int BalanceConc!29858 BalanceConc!29858) Unit!148700)

(assert (=> d!1605172 (= lt!2059761 (Forall2of!491 lambda!247956 (_1!34593 lt!2059513) lt!2059519))))

(assert (=> d!1605172 (= (list!18476 (_1!34593 lt!2059513)) (list!18476 lt!2059519))))

(assert (=> d!1605172 (= (lemmaEqSameImage!1201 (transformation!8462 rule!200) (_1!34593 lt!2059513) lt!2059519) lt!2059761)))

(declare-fun b_lambda!198115 () Bool)

(assert (=> (not b_lambda!198115) (not d!1605172)))

(assert (=> d!1605172 t!369907))

(declare-fun b_and!349789 () Bool)

(assert (= b_and!349787 (and (=> t!369907 result!327040) b_and!349789)))

(declare-fun b_lambda!198117 () Bool)

(assert (=> (not b_lambda!198117) (not d!1605172)))

(assert (=> d!1605172 t!369909))

(declare-fun b_and!349791 () Bool)

(assert (= b_and!349789 (and (=> t!369909 result!327044) b_and!349791)))

(assert (=> d!1605172 m!6015972))

(assert (=> d!1605172 m!6015732))

(assert (=> d!1605172 m!6015660))

(assert (=> d!1605172 m!6015680))

(declare-fun m!6015974 () Bool)

(assert (=> d!1605172 m!6015974))

(assert (=> b!4984095 d!1605172))

(declare-fun d!1605174 () Bool)

(declare-fun isBalanced!4232 (Conc!15214) Bool)

(assert (=> d!1605174 (= (inv!75469 totalInput!520) (isBalanced!4232 (c!850512 totalInput!520)))))

(declare-fun bs!1184505 () Bool)

(assert (= bs!1184505 d!1605174))

(declare-fun m!6015976 () Bool)

(assert (=> bs!1184505 m!6015976))

(assert (=> start!526394 d!1605174))

(declare-fun d!1605176 () Bool)

(assert (=> d!1605176 (= (inv!75469 input!1580) (isBalanced!4232 (c!850512 input!1580)))))

(declare-fun bs!1184506 () Bool)

(assert (= bs!1184506 d!1605176))

(declare-fun m!6015978 () Bool)

(assert (=> bs!1184506 m!6015978))

(assert (=> start!526394 d!1605176))

(declare-fun d!1605178 () Bool)

(assert (=> d!1605178 (= (get!20029 lt!2059526) (v!50539 lt!2059526))))

(assert (=> b!4984094 d!1605178))

(declare-fun d!1605180 () Bool)

(declare-fun e!3115219 () Bool)

(assert (=> d!1605180 e!3115219))

(declare-fun res!2127777 () Bool)

(assert (=> d!1605180 (=> res!2127777 e!3115219)))

(declare-fun lt!2059769 () Bool)

(assert (=> d!1605180 (= res!2127777 (not lt!2059769))))

(declare-fun drop!2378 (List!57720 Int) List!57720)

(assert (=> d!1605180 (= lt!2059769 (= lt!2059523 (drop!2378 (list!18476 totalInput!520) (- (size!38236 (list!18476 totalInput!520)) (size!38236 lt!2059523)))))))

(assert (=> d!1605180 (= (isSuffix!1261 lt!2059523 (list!18476 totalInput!520)) lt!2059769)))

(declare-fun b!4984432 () Bool)

(assert (=> b!4984432 (= e!3115219 (>= (size!38236 (list!18476 totalInput!520)) (size!38236 lt!2059523)))))

(assert (= (and d!1605180 (not res!2127777)) b!4984432))

(assert (=> d!1605180 m!6015652))

(declare-fun m!6015980 () Bool)

(assert (=> d!1605180 m!6015980))

(assert (=> d!1605180 m!6015636))

(assert (=> d!1605180 m!6015652))

(declare-fun m!6015982 () Bool)

(assert (=> d!1605180 m!6015982))

(assert (=> b!4984432 m!6015652))

(assert (=> b!4984432 m!6015980))

(assert (=> b!4984432 m!6015636))

(assert (=> b!4984096 d!1605180))

(declare-fun d!1605182 () Bool)

(assert (=> d!1605182 (= (list!18476 totalInput!520) (list!18477 (c!850512 totalInput!520)))))

(declare-fun bs!1184507 () Bool)

(assert (= bs!1184507 d!1605182))

(declare-fun m!6015984 () Bool)

(assert (=> bs!1184507 m!6015984))

(assert (=> b!4984096 d!1605182))

(declare-fun d!1605184 () Bool)

(assert (=> d!1605184 (= (list!18476 input!1580) (list!18477 (c!850512 input!1580)))))

(declare-fun bs!1184508 () Bool)

(assert (= bs!1184508 d!1605184))

(declare-fun m!6015986 () Bool)

(assert (=> bs!1184508 m!6015986))

(assert (=> b!4984096 d!1605184))

(declare-fun d!1605186 () Bool)

(declare-fun lt!2059772 () Bool)

(assert (=> d!1605186 (= lt!2059772 (isEmpty!31125 (list!18476 (_1!34593 lt!2059513))))))

(declare-fun isEmpty!31130 (Conc!15214) Bool)

(assert (=> d!1605186 (= lt!2059772 (isEmpty!31130 (c!850512 (_1!34593 lt!2059513))))))

(assert (=> d!1605186 (= (isEmpty!31126 (_1!34593 lt!2059513)) lt!2059772)))

(declare-fun bs!1184509 () Bool)

(assert (= bs!1184509 d!1605186))

(assert (=> bs!1184509 m!6015680))

(assert (=> bs!1184509 m!6015680))

(declare-fun m!6016018 () Bool)

(assert (=> bs!1184509 m!6016018))

(declare-fun m!6016020 () Bool)

(assert (=> bs!1184509 m!6016020))

(assert (=> b!4984092 d!1605186))

(declare-fun d!1605188 () Bool)

(declare-fun lt!2059782 () tuple2!62580)

(assert (=> d!1605188 (= (tuple2!62577 (list!18476 (_1!34593 lt!2059782)) (list!18476 (_2!34593 lt!2059782))) (findLongestMatch!1722 (regex!8462 rule!200) (list!18476 input!1580)))))

(declare-fun choose!36837 (Regex!13695 BalanceConc!29858 BalanceConc!29858) tuple2!62580)

(assert (=> d!1605188 (= lt!2059782 (choose!36837 (regex!8462 rule!200) input!1580 totalInput!520))))

(assert (=> d!1605188 (validRegex!5996 (regex!8462 rule!200))))

(assert (=> d!1605188 (= (findLongestMatchWithZipperSequenceV2!225 (regex!8462 rule!200) input!1580 totalInput!520) lt!2059782)))

(declare-fun bs!1184517 () Bool)

(assert (= bs!1184517 d!1605188))

(assert (=> bs!1184517 m!6015656))

(declare-fun m!6016044 () Bool)

(assert (=> bs!1184517 m!6016044))

(declare-fun m!6016046 () Bool)

(assert (=> bs!1184517 m!6016046))

(declare-fun m!6016048 () Bool)

(assert (=> bs!1184517 m!6016048))

(assert (=> bs!1184517 m!6015816))

(assert (=> bs!1184517 m!6015656))

(declare-fun m!6016050 () Bool)

(assert (=> bs!1184517 m!6016050))

(assert (=> b!4984092 d!1605188))

(declare-fun d!1605206 () Bool)

(declare-fun choose!36838 (Int) Bool)

(assert (=> d!1605206 (= (Forall!1812 lambda!247944) (choose!36838 lambda!247944))))

(declare-fun bs!1184518 () Bool)

(assert (= bs!1184518 d!1605206))

(declare-fun m!6016052 () Bool)

(assert (=> bs!1184518 m!6016052))

(assert (=> b!4984093 d!1605206))

(declare-fun tp!1397052 () Bool)

(declare-fun tp!1397050 () Bool)

(declare-fun b!4984463 () Bool)

(declare-fun e!3115232 () Bool)

(assert (=> b!4984463 (= e!3115232 (and (inv!75468 (left!42115 (c!850512 totalInput!520))) tp!1397052 (inv!75468 (right!42445 (c!850512 totalInput!520))) tp!1397050))))

(declare-fun b!4984465 () Bool)

(declare-fun e!3115231 () Bool)

(declare-fun tp!1397051 () Bool)

(assert (=> b!4984465 (= e!3115231 tp!1397051)))

(declare-fun b!4984464 () Bool)

(declare-fun inv!75475 (IArray!30489) Bool)

(assert (=> b!4984464 (= e!3115232 (and (inv!75475 (xs!18540 (c!850512 totalInput!520))) e!3115231))))

(assert (=> b!4984100 (= tp!1397019 (and (inv!75468 (c!850512 totalInput!520)) e!3115232))))

(assert (= (and b!4984100 ((_ is Node!15214) (c!850512 totalInput!520))) b!4984463))

(assert (= b!4984464 b!4984465))

(assert (= (and b!4984100 ((_ is Leaf!25270) (c!850512 totalInput!520))) b!4984464))

(declare-fun m!6016054 () Bool)

(assert (=> b!4984463 m!6016054))

(declare-fun m!6016056 () Bool)

(assert (=> b!4984463 m!6016056))

(declare-fun m!6016058 () Bool)

(assert (=> b!4984464 m!6016058))

(assert (=> b!4984100 m!6015670))

(declare-fun b!4984485 () Bool)

(declare-fun e!3115239 () Bool)

(declare-fun tp!1397073 () Bool)

(declare-fun tp!1397072 () Bool)

(assert (=> b!4984485 (= e!3115239 (and tp!1397073 tp!1397072))))

(declare-fun b!4984482 () Bool)

(declare-fun tp_is_empty!36395 () Bool)

(assert (=> b!4984482 (= e!3115239 tp_is_empty!36395)))

(declare-fun b!4984484 () Bool)

(declare-fun tp!1397069 () Bool)

(assert (=> b!4984484 (= e!3115239 tp!1397069)))

(declare-fun b!4984483 () Bool)

(declare-fun tp!1397070 () Bool)

(declare-fun tp!1397071 () Bool)

(assert (=> b!4984483 (= e!3115239 (and tp!1397070 tp!1397071))))

(assert (=> b!4984097 (= tp!1397020 e!3115239)))

(assert (= (and b!4984097 ((_ is ElementMatch!13695) (regex!8462 rule!200))) b!4984482))

(assert (= (and b!4984097 ((_ is Concat!22467) (regex!8462 rule!200))) b!4984483))

(assert (= (and b!4984097 ((_ is Star!13695) (regex!8462 rule!200))) b!4984484))

(assert (= (and b!4984097 ((_ is Union!13695) (regex!8462 rule!200))) b!4984485))

(declare-fun b!4984490 () Bool)

(declare-fun tp!1397076 () Bool)

(declare-fun e!3115243 () Bool)

(declare-fun tp!1397078 () Bool)

(assert (=> b!4984490 (= e!3115243 (and (inv!75468 (left!42115 (c!850512 input!1580))) tp!1397078 (inv!75468 (right!42445 (c!850512 input!1580))) tp!1397076))))

(declare-fun b!4984492 () Bool)

(declare-fun e!3115242 () Bool)

(declare-fun tp!1397077 () Bool)

(assert (=> b!4984492 (= e!3115242 tp!1397077)))

(declare-fun b!4984491 () Bool)

(assert (=> b!4984491 (= e!3115243 (and (inv!75475 (xs!18540 (c!850512 input!1580))) e!3115242))))

(assert (=> b!4984086 (= tp!1397021 (and (inv!75468 (c!850512 input!1580)) e!3115243))))

(assert (= (and b!4984086 ((_ is Node!15214) (c!850512 input!1580))) b!4984490))

(assert (= b!4984491 b!4984492))

(assert (= (and b!4984086 ((_ is Leaf!25270) (c!850512 input!1580))) b!4984491))

(declare-fun m!6016072 () Bool)

(assert (=> b!4984490 m!6016072))

(declare-fun m!6016074 () Bool)

(assert (=> b!4984490 m!6016074))

(declare-fun m!6016076 () Bool)

(assert (=> b!4984491 m!6016076))

(assert (=> b!4984086 m!6015634))

(declare-fun b_lambda!198139 () Bool)

(assert (= b_lambda!198103 (or b!4984093 b_lambda!198139)))

(declare-fun bs!1184520 () Bool)

(declare-fun d!1605210 () Bool)

(assert (= bs!1184520 (and d!1605210 b!4984093)))

(declare-fun dynLambda!23408 (Int TokenValue!8772) BalanceConc!29858)

(assert (=> bs!1184520 (= (dynLambda!23405 lambda!247944 lt!2059519) (= (list!18476 (dynLambda!23408 (toChars!11318 (transformation!8462 rule!200)) (dynLambda!23406 (toValue!11459 (transformation!8462 rule!200)) lt!2059519))) (list!18476 lt!2059519)))))

(declare-fun b_lambda!198153 () Bool)

(assert (=> (not b_lambda!198153) (not bs!1184520)))

(declare-fun t!369913 () Bool)

(declare-fun tb!261689 () Bool)

(assert (=> (and b!4984089 (= (toChars!11318 (transformation!8462 rule!200)) (toChars!11318 (transformation!8462 rule!200))) t!369913) tb!261689))

(declare-fun tp!1397083 () Bool)

(declare-fun b!4984499 () Bool)

(declare-fun e!3115248 () Bool)

(assert (=> b!4984499 (= e!3115248 (and (inv!75468 (c!850512 (dynLambda!23408 (toChars!11318 (transformation!8462 rule!200)) (dynLambda!23406 (toValue!11459 (transformation!8462 rule!200)) lt!2059519)))) tp!1397083))))

(declare-fun result!327058 () Bool)

(assert (=> tb!261689 (= result!327058 (and (inv!75469 (dynLambda!23408 (toChars!11318 (transformation!8462 rule!200)) (dynLambda!23406 (toValue!11459 (transformation!8462 rule!200)) lt!2059519))) e!3115248))))

(assert (= tb!261689 b!4984499))

(declare-fun m!6016094 () Bool)

(assert (=> b!4984499 m!6016094))

(declare-fun m!6016096 () Bool)

(assert (=> tb!261689 m!6016096))

(assert (=> bs!1184520 t!369913))

(declare-fun b_and!349803 () Bool)

(assert (= b_and!349777 (and (=> t!369913 result!327058) b_and!349803)))

(declare-fun b_lambda!198159 () Bool)

(assert (=> (not b_lambda!198159) (not bs!1184520)))

(assert (=> bs!1184520 t!369909))

(declare-fun b_and!349805 () Bool)

(assert (= b_and!349791 (and (=> t!369909 result!327044) b_and!349805)))

(declare-fun m!6016098 () Bool)

(assert (=> bs!1184520 m!6016098))

(declare-fun m!6016100 () Bool)

(assert (=> bs!1184520 m!6016100))

(assert (=> bs!1184520 m!6015972))

(assert (=> bs!1184520 m!6015660))

(assert (=> bs!1184520 m!6015972))

(assert (=> bs!1184520 m!6016098))

(assert (=> d!1605078 d!1605210))

(declare-fun b_lambda!198141 () Bool)

(assert (= b_lambda!198115 (or (and b!4984089 b_free!133147) b_lambda!198141)))

(declare-fun b_lambda!198143 () Bool)

(assert (= b_lambda!198111 (or (and b!4984089 b_free!133147) b_lambda!198143)))

(declare-fun b_lambda!198145 () Bool)

(assert (= b_lambda!198109 (or b!4984093 b_lambda!198145)))

(declare-fun bs!1184522 () Bool)

(declare-fun d!1605214 () Bool)

(assert (= bs!1184522 (and d!1605214 b!4984093)))

(assert (=> bs!1184522 (= (dynLambda!23405 lambda!247944 (_1!34593 lt!2059513)) (= (list!18476 (dynLambda!23408 (toChars!11318 (transformation!8462 rule!200)) (dynLambda!23406 (toValue!11459 (transformation!8462 rule!200)) (_1!34593 lt!2059513)))) (list!18476 (_1!34593 lt!2059513))))))

(declare-fun b_lambda!198161 () Bool)

(assert (=> (not b_lambda!198161) (not bs!1184522)))

(declare-fun t!369917 () Bool)

(declare-fun tb!261693 () Bool)

(assert (=> (and b!4984089 (= (toChars!11318 (transformation!8462 rule!200)) (toChars!11318 (transformation!8462 rule!200))) t!369917) tb!261693))

(declare-fun tp!1397084 () Bool)

(declare-fun e!3115249 () Bool)

(declare-fun b!4984500 () Bool)

(assert (=> b!4984500 (= e!3115249 (and (inv!75468 (c!850512 (dynLambda!23408 (toChars!11318 (transformation!8462 rule!200)) (dynLambda!23406 (toValue!11459 (transformation!8462 rule!200)) (_1!34593 lt!2059513))))) tp!1397084))))

(declare-fun result!327064 () Bool)

(assert (=> tb!261693 (= result!327064 (and (inv!75469 (dynLambda!23408 (toChars!11318 (transformation!8462 rule!200)) (dynLambda!23406 (toValue!11459 (transformation!8462 rule!200)) (_1!34593 lt!2059513)))) e!3115249))))

(assert (= tb!261693 b!4984500))

(declare-fun m!6016102 () Bool)

(assert (=> b!4984500 m!6016102))

(declare-fun m!6016104 () Bool)

(assert (=> tb!261693 m!6016104))

(assert (=> bs!1184522 t!369917))

(declare-fun b_and!349807 () Bool)

(assert (= b_and!349803 (and (=> t!369917 result!327064) b_and!349807)))

(declare-fun b_lambda!198163 () Bool)

(assert (=> (not b_lambda!198163) (not bs!1184522)))

(assert (=> bs!1184522 t!369907))

(declare-fun b_and!349809 () Bool)

(assert (= b_and!349805 (and (=> t!369907 result!327040) b_and!349809)))

(declare-fun m!6016106 () Bool)

(assert (=> bs!1184522 m!6016106))

(declare-fun m!6016108 () Bool)

(assert (=> bs!1184522 m!6016108))

(assert (=> bs!1184522 m!6015732))

(assert (=> bs!1184522 m!6015680))

(assert (=> bs!1184522 m!6015732))

(assert (=> bs!1184522 m!6016106))

(assert (=> d!1605090 d!1605214))

(declare-fun b_lambda!198147 () Bool)

(assert (= b_lambda!198117 (or (and b!4984089 b_free!133147) b_lambda!198147)))

(declare-fun b_lambda!198149 () Bool)

(assert (= b_lambda!198113 (or (and b!4984089 b_free!133147) b_lambda!198149)))

(check-sat (not b!4984209) (not b!4984100) (not b!4984372) (not b!4984464) (not bm!347795) (not b!4984371) (not bm!347792) (not b_lambda!198163) (not d!1605126) (not b_lambda!198161) (not d!1605080) b_and!349809 (not bm!347747) (not d!1605130) (not d!1605206) (not b!4984171) (not b!4984500) (not d!1605188) (not bm!347798) (not b!4984164) (not b!4984370) b_and!349807 (not b_next!133939) (not d!1605084) (not b!4984485) (not b!4984170) (not b!4984465) tp_is_empty!36395 (not b!4984376) (not b!4984432) (not b!4984484) (not d!1605172) (not b!4984165) (not b!4984166) (not bs!1184520) (not b!4984203) (not bm!347793) (not b_lambda!198149) (not b!4984220) (not b!4984379) (not b!4984117) (not d!1605078) (not b_lambda!198143) (not b!4984364) (not d!1605132) (not b!4984386) (not d!1605180) (not bs!1184522) (not b!4984463) (not b!4984387) (not d!1605102) (not d!1605174) (not d!1605158) (not b!4984169) (not tb!261693) (not d!1605094) (not bm!347791) (not b_lambda!198147) (not b!4984202) (not b!4984086) (not b!4984491) (not tb!261683) (not b_lambda!198145) (not d!1605176) (not b_lambda!198153) (not b!4984212) (not d!1605186) (not b!4984204) (not tb!261689) (not b!4984211) (not bm!347796) (not b_next!133937) (not b!4984167) (not d!1605082) (not tb!261685) (not b!4984119) (not b!4984168) (not d!1605090) (not d!1605168) (not d!1605184) (not b_lambda!198159) (not b!4984483) (not b!4984490) (not d!1605162) (not b!4984223) (not d!1605166) (not b_lambda!198141) (not bm!347794) (not b!4984492) (not d!1605086) (not b!4984499) (not b!4984394) (not bm!347797) (not d!1605154) (not b!4984389) (not b_lambda!198139) (not d!1605182))
(check-sat b_and!349807 b_and!349809 (not b_next!133939) (not b_next!133937))
