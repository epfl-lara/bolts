; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!525190 () Bool)

(assert start!525190)

(declare-fun b!4978055 () Bool)

(declare-fun b_free!133083 () Bool)

(declare-fun b_next!133873 () Bool)

(assert (=> b!4978055 (= b_free!133083 (not b_next!133873))))

(declare-fun tp!1395970 () Bool)

(declare-fun b_and!349495 () Bool)

(assert (=> b!4978055 (= tp!1395970 b_and!349495)))

(declare-fun b_free!133085 () Bool)

(declare-fun b_next!133875 () Bool)

(assert (=> b!4978055 (= b_free!133085 (not b_next!133875))))

(declare-fun tp!1395971 () Bool)

(declare-fun b_and!349497 () Bool)

(assert (=> b!4978055 (= tp!1395971 b_and!349497)))

(declare-fun b!4978050 () Bool)

(declare-fun e!3111493 () Bool)

(declare-fun e!3111486 () Bool)

(assert (=> b!4978050 (= e!3111493 e!3111486)))

(declare-fun res!2125151 () Bool)

(assert (=> b!4978050 (=> (not res!2125151) (not e!3111486))))

(declare-datatypes ((C!27608 0))(
  ( (C!27609 (val!23170 Int)) )
))
(declare-datatypes ((List!57688 0))(
  ( (Nil!57564) (Cons!57564 (h!64012 C!27608) (t!369700 List!57688)) )
))
(declare-fun lt!2056293 () List!57688)

(declare-datatypes ((IArray!30457 0))(
  ( (IArray!30458 (innerList!15286 List!57688)) )
))
(declare-datatypes ((Conc!15198 0))(
  ( (Node!15198 (left!42055 Conc!15198) (right!42385 Conc!15198) (csize!30626 Int) (cheight!15409 Int)) (Leaf!25246 (xs!18524 IArray!30457) (csize!30627 Int)) (Empty!15198) )
))
(declare-datatypes ((BalanceConc!29826 0))(
  ( (BalanceConc!29827 (c!849283 Conc!15198)) )
))
(declare-fun totalInput!520 () BalanceConc!29826)

(declare-fun isSuffix!1245 (List!57688 List!57688) Bool)

(declare-fun list!18438 (BalanceConc!29826) List!57688)

(assert (=> b!4978050 (= res!2125151 (isSuffix!1245 lt!2056293 (list!18438 totalInput!520)))))

(declare-fun input!1580 () BalanceConc!29826)

(assert (=> b!4978050 (= lt!2056293 (list!18438 input!1580))))

(declare-fun tp!1395968 () Bool)

(declare-fun b!4978051 () Bool)

(declare-datatypes ((List!57689 0))(
  ( (Nil!57565) (Cons!57565 (h!64013 (_ BitVec 16)) (t!369701 List!57689)) )
))
(declare-datatypes ((Regex!13679 0))(
  ( (ElementMatch!13679 (c!849284 C!27608)) (Concat!22435 (regOne!27870 Regex!13679) (regTwo!27870 Regex!13679)) (EmptyExpr!13679) (Star!13679 (reg!14008 Regex!13679)) (EmptyLang!13679) (Union!13679 (regOne!27871 Regex!13679) (regTwo!27871 Regex!13679)) )
))
(declare-datatypes ((TokenValue!8756 0))(
  ( (FloatLiteralValue!17512 (text!61737 List!57689)) (TokenValueExt!8755 (__x!34805 Int)) (Broken!43780 (value!270108 List!57689)) (Object!8879) (End!8756) (Def!8756) (Underscore!8756) (Match!8756) (Else!8756) (Error!8756) (Case!8756) (If!8756) (Extends!8756) (Abstract!8756) (Class!8756) (Val!8756) (DelimiterValue!17512 (del!8816 List!57689)) (KeywordValue!8762 (value!270109 List!57689)) (CommentValue!17512 (value!270110 List!57689)) (WhitespaceValue!17512 (value!270111 List!57689)) (IndentationValue!8756 (value!270112 List!57689)) (String!65653) (Int32!8756) (Broken!43781 (value!270113 List!57689)) (Boolean!8757) (Unit!148573) (OperatorValue!8759 (op!8816 List!57689)) (IdentifierValue!17512 (value!270114 List!57689)) (IdentifierValue!17513 (value!270115 List!57689)) (WhitespaceValue!17513 (value!270116 List!57689)) (True!17512) (False!17512) (Broken!43782 (value!270117 List!57689)) (Broken!43783 (value!270118 List!57689)) (True!17513) (RightBrace!8756) (RightBracket!8756) (Colon!8756) (Null!8756) (Comma!8756) (LeftBracket!8756) (False!17513) (LeftBrace!8756) (ImaginaryLiteralValue!8756 (text!61738 List!57689)) (StringLiteralValue!26268 (value!270119 List!57689)) (EOFValue!8756 (value!270120 List!57689)) (IdentValue!8756 (value!270121 List!57689)) (DelimiterValue!17513 (value!270122 List!57689)) (DedentValue!8756 (value!270123 List!57689)) (NewLineValue!8756 (value!270124 List!57689)) (IntegerValue!26268 (value!270125 (_ BitVec 32)) (text!61739 List!57689)) (IntegerValue!26269 (value!270126 Int) (text!61740 List!57689)) (Times!8756) (Or!8756) (Equal!8756) (Minus!8756) (Broken!43784 (value!270127 List!57689)) (And!8756) (Div!8756) (LessEqual!8756) (Mod!8756) (Concat!22436) (Not!8756) (Plus!8756) (SpaceValue!8756 (value!270128 List!57689)) (IntegerValue!26270 (value!270129 Int) (text!61741 List!57689)) (StringLiteralValue!26269 (text!61742 List!57689)) (FloatLiteralValue!17513 (text!61743 List!57689)) (BytesLiteralValue!8756 (value!270130 List!57689)) (CommentValue!17513 (value!270131 List!57689)) (StringLiteralValue!26270 (value!270132 List!57689)) (ErrorTokenValue!8756 (msg!8817 List!57689)) )
))
(declare-datatypes ((TokenValueInjection!16820 0))(
  ( (TokenValueInjection!16821 (toValue!11421 Int) (toChars!11280 Int)) )
))
(declare-datatypes ((String!65654 0))(
  ( (String!65655 (value!270133 String)) )
))
(declare-datatypes ((Rule!16692 0))(
  ( (Rule!16693 (regex!8446 Regex!13679) (tag!9310 String!65654) (isSeparator!8446 Bool) (transformation!8446 TokenValueInjection!16820)) )
))
(declare-fun rule!200 () Rule!16692)

(declare-fun e!3111491 () Bool)

(declare-fun e!3111487 () Bool)

(declare-fun inv!75347 (String!65654) Bool)

(declare-fun inv!75351 (TokenValueInjection!16820) Bool)

(assert (=> b!4978051 (= e!3111491 (and tp!1395968 (inv!75347 (tag!9310 rule!200)) (inv!75351 (transformation!8446 rule!200)) e!3111487))))

(declare-fun b!4978052 () Bool)

(declare-fun e!3111490 () Bool)

(declare-fun tp!1395969 () Bool)

(declare-fun inv!75352 (Conc!15198) Bool)

(assert (=> b!4978052 (= e!3111490 (and (inv!75352 (c!849283 totalInput!520)) tp!1395969))))

(declare-fun b!4978054 () Bool)

(declare-fun res!2125153 () Bool)

(assert (=> b!4978054 (=> (not res!2125153) (not e!3111486))))

(declare-fun isEmpty!31053 (BalanceConc!29826) Bool)

(declare-datatypes ((tuple2!62460 0))(
  ( (tuple2!62461 (_1!34533 BalanceConc!29826) (_2!34533 BalanceConc!29826)) )
))
(declare-fun findLongestMatchWithZipperSequenceV2!209 (Regex!13679 BalanceConc!29826 BalanceConc!29826) tuple2!62460)

(assert (=> b!4978054 (= res!2125153 (not (isEmpty!31053 (_1!34533 (findLongestMatchWithZipperSequenceV2!209 (regex!8446 rule!200) input!1580 totalInput!520)))))))

(assert (=> b!4978055 (= e!3111487 (and tp!1395970 tp!1395971))))

(declare-fun b!4978056 () Bool)

(declare-fun semiInverseModEq!3739 (Int Int) Bool)

(assert (=> b!4978056 (= e!3111486 (not (semiInverseModEq!3739 (toChars!11280 (transformation!8446 rule!200)) (toValue!11421 (transformation!8446 rule!200)))))))

(declare-datatypes ((Unit!148574 0))(
  ( (Unit!148575) )
))
(declare-fun lt!2056294 () Unit!148574)

(declare-fun lemmaInv!1369 (TokenValueInjection!16820) Unit!148574)

(assert (=> b!4978056 (= lt!2056294 (lemmaInv!1369 (transformation!8446 rule!200)))))

(declare-fun e!3111488 () Bool)

(assert (=> b!4978056 e!3111488))

(declare-fun res!2125152 () Bool)

(assert (=> b!4978056 (=> res!2125152 e!3111488)))

(declare-datatypes ((tuple2!62462 0))(
  ( (tuple2!62463 (_1!34534 List!57688) (_2!34534 List!57688)) )
))
(declare-fun lt!2056291 () tuple2!62462)

(declare-fun isEmpty!31054 (List!57688) Bool)

(assert (=> b!4978056 (= res!2125152 (isEmpty!31054 (_1!34534 lt!2056291)))))

(declare-fun findLongestMatchInner!1890 (Regex!13679 List!57688 Int List!57688 List!57688 Int) tuple2!62462)

(declare-fun size!38183 (List!57688) Int)

(assert (=> b!4978056 (= lt!2056291 (findLongestMatchInner!1890 (regex!8446 rule!200) Nil!57564 (size!38183 Nil!57564) lt!2056293 lt!2056293 (size!38183 lt!2056293)))))

(declare-fun lt!2056292 () Unit!148574)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1851 (Regex!13679 List!57688) Unit!148574)

(assert (=> b!4978056 (= lt!2056292 (longestMatchIsAcceptedByMatchOrIsEmpty!1851 (regex!8446 rule!200) lt!2056293))))

(declare-fun b!4978057 () Bool)

(declare-fun res!2125155 () Bool)

(assert (=> b!4978057 (=> (not res!2125155) (not e!3111493))))

(declare-datatypes ((LexerInterface!8038 0))(
  ( (LexerInterfaceExt!8035 (__x!34806 Int)) (Lexer!8036) )
))
(declare-fun thiss!16165 () LexerInterface!8038)

(declare-fun ruleValid!3854 (LexerInterface!8038 Rule!16692) Bool)

(assert (=> b!4978057 (= res!2125155 (ruleValid!3854 thiss!16165 rule!200))))

(declare-fun b!4978058 () Bool)

(declare-fun e!3111492 () Bool)

(declare-fun tp!1395972 () Bool)

(assert (=> b!4978058 (= e!3111492 (and (inv!75352 (c!849283 input!1580)) tp!1395972))))

(declare-fun res!2125154 () Bool)

(assert (=> start!525190 (=> (not res!2125154) (not e!3111493))))

(get-info :version)

(assert (=> start!525190 (= res!2125154 ((_ is Lexer!8036) thiss!16165))))

(assert (=> start!525190 e!3111493))

(assert (=> start!525190 true))

(assert (=> start!525190 e!3111491))

(declare-fun inv!75353 (BalanceConc!29826) Bool)

(assert (=> start!525190 (and (inv!75353 input!1580) e!3111492)))

(assert (=> start!525190 (and (inv!75353 totalInput!520) e!3111490)))

(declare-fun b!4978053 () Bool)

(declare-fun matchR!6673 (Regex!13679 List!57688) Bool)

(assert (=> b!4978053 (= e!3111488 (matchR!6673 (regex!8446 rule!200) (_1!34534 lt!2056291)))))

(assert (= (and start!525190 res!2125154) b!4978057))

(assert (= (and b!4978057 res!2125155) b!4978050))

(assert (= (and b!4978050 res!2125151) b!4978054))

(assert (= (and b!4978054 res!2125153) b!4978056))

(assert (= (and b!4978056 (not res!2125152)) b!4978053))

(assert (= b!4978051 b!4978055))

(assert (= start!525190 b!4978051))

(assert (= start!525190 b!4978058))

(assert (= start!525190 b!4978052))

(declare-fun m!6008642 () Bool)

(assert (=> b!4978052 m!6008642))

(declare-fun m!6008644 () Bool)

(assert (=> b!4978053 m!6008644))

(declare-fun m!6008646 () Bool)

(assert (=> b!4978051 m!6008646))

(declare-fun m!6008648 () Bool)

(assert (=> b!4978051 m!6008648))

(declare-fun m!6008650 () Bool)

(assert (=> b!4978054 m!6008650))

(declare-fun m!6008652 () Bool)

(assert (=> b!4978054 m!6008652))

(declare-fun m!6008654 () Bool)

(assert (=> b!4978057 m!6008654))

(declare-fun m!6008656 () Bool)

(assert (=> start!525190 m!6008656))

(declare-fun m!6008658 () Bool)

(assert (=> start!525190 m!6008658))

(declare-fun m!6008660 () Bool)

(assert (=> b!4978050 m!6008660))

(assert (=> b!4978050 m!6008660))

(declare-fun m!6008662 () Bool)

(assert (=> b!4978050 m!6008662))

(declare-fun m!6008664 () Bool)

(assert (=> b!4978050 m!6008664))

(declare-fun m!6008666 () Bool)

(assert (=> b!4978056 m!6008666))

(declare-fun m!6008668 () Bool)

(assert (=> b!4978056 m!6008668))

(declare-fun m!6008670 () Bool)

(assert (=> b!4978056 m!6008670))

(declare-fun m!6008672 () Bool)

(assert (=> b!4978056 m!6008672))

(assert (=> b!4978056 m!6008666))

(declare-fun m!6008674 () Bool)

(assert (=> b!4978056 m!6008674))

(assert (=> b!4978056 m!6008672))

(declare-fun m!6008676 () Bool)

(assert (=> b!4978056 m!6008676))

(declare-fun m!6008678 () Bool)

(assert (=> b!4978056 m!6008678))

(declare-fun m!6008680 () Bool)

(assert (=> b!4978058 m!6008680))

(check-sat (not b!4978057) (not b!4978051) (not b!4978052) (not b_next!133875) (not b!4978050) (not start!525190) b_and!349497 (not b!4978056) (not b!4978053) (not b!4978054) (not b_next!133873) (not b!4978058) b_and!349495)
(check-sat b_and!349497 b_and!349495 (not b_next!133875) (not b_next!133873))
(get-model)

(declare-fun lt!2056297 () Bool)

(declare-fun d!1602932 () Bool)

(assert (=> d!1602932 (= lt!2056297 (isEmpty!31054 (list!18438 (_1!34533 (findLongestMatchWithZipperSequenceV2!209 (regex!8446 rule!200) input!1580 totalInput!520)))))))

(declare-fun isEmpty!31056 (Conc!15198) Bool)

(assert (=> d!1602932 (= lt!2056297 (isEmpty!31056 (c!849283 (_1!34533 (findLongestMatchWithZipperSequenceV2!209 (regex!8446 rule!200) input!1580 totalInput!520)))))))

(assert (=> d!1602932 (= (isEmpty!31053 (_1!34533 (findLongestMatchWithZipperSequenceV2!209 (regex!8446 rule!200) input!1580 totalInput!520))) lt!2056297)))

(declare-fun bs!1184023 () Bool)

(assert (= bs!1184023 d!1602932))

(declare-fun m!6008682 () Bool)

(assert (=> bs!1184023 m!6008682))

(assert (=> bs!1184023 m!6008682))

(declare-fun m!6008684 () Bool)

(assert (=> bs!1184023 m!6008684))

(declare-fun m!6008686 () Bool)

(assert (=> bs!1184023 m!6008686))

(assert (=> b!4978054 d!1602932))

(declare-fun d!1602934 () Bool)

(declare-fun lt!2056303 () tuple2!62460)

(declare-fun findLongestMatch!1706 (Regex!13679 List!57688) tuple2!62462)

(assert (=> d!1602934 (= (tuple2!62463 (list!18438 (_1!34533 lt!2056303)) (list!18438 (_2!34533 lt!2056303))) (findLongestMatch!1706 (regex!8446 rule!200) (list!18438 input!1580)))))

(declare-fun choose!36738 (Regex!13679 BalanceConc!29826 BalanceConc!29826) tuple2!62460)

(assert (=> d!1602934 (= lt!2056303 (choose!36738 (regex!8446 rule!200) input!1580 totalInput!520))))

(declare-fun validRegex!5980 (Regex!13679) Bool)

(assert (=> d!1602934 (validRegex!5980 (regex!8446 rule!200))))

(assert (=> d!1602934 (= (findLongestMatchWithZipperSequenceV2!209 (regex!8446 rule!200) input!1580 totalInput!520) lt!2056303)))

(declare-fun bs!1184026 () Bool)

(assert (= bs!1184026 d!1602934))

(assert (=> bs!1184026 m!6008664))

(declare-fun m!6008698 () Bool)

(assert (=> bs!1184026 m!6008698))

(declare-fun m!6008700 () Bool)

(assert (=> bs!1184026 m!6008700))

(declare-fun m!6008702 () Bool)

(assert (=> bs!1184026 m!6008702))

(declare-fun m!6008704 () Bool)

(assert (=> bs!1184026 m!6008704))

(declare-fun m!6008706 () Bool)

(assert (=> bs!1184026 m!6008706))

(assert (=> bs!1184026 m!6008664))

(assert (=> b!4978054 d!1602934))

(declare-fun d!1602950 () Bool)

(declare-fun e!3111502 () Bool)

(assert (=> d!1602950 e!3111502))

(declare-fun res!2125168 () Bool)

(assert (=> d!1602950 (=> res!2125168 e!3111502)))

(declare-fun lt!2056306 () Bool)

(assert (=> d!1602950 (= res!2125168 (not lt!2056306))))

(declare-fun drop!2362 (List!57688 Int) List!57688)

(assert (=> d!1602950 (= lt!2056306 (= lt!2056293 (drop!2362 (list!18438 totalInput!520) (- (size!38183 (list!18438 totalInput!520)) (size!38183 lt!2056293)))))))

(assert (=> d!1602950 (= (isSuffix!1245 lt!2056293 (list!18438 totalInput!520)) lt!2056306)))

(declare-fun b!4978067 () Bool)

(assert (=> b!4978067 (= e!3111502 (>= (size!38183 (list!18438 totalInput!520)) (size!38183 lt!2056293)))))

(assert (= (and d!1602950 (not res!2125168)) b!4978067))

(assert (=> d!1602950 m!6008660))

(declare-fun m!6008708 () Bool)

(assert (=> d!1602950 m!6008708))

(assert (=> d!1602950 m!6008666))

(assert (=> d!1602950 m!6008660))

(declare-fun m!6008710 () Bool)

(assert (=> d!1602950 m!6008710))

(assert (=> b!4978067 m!6008660))

(assert (=> b!4978067 m!6008708))

(assert (=> b!4978067 m!6008666))

(assert (=> b!4978050 d!1602950))

(declare-fun d!1602952 () Bool)

(declare-fun list!18440 (Conc!15198) List!57688)

(assert (=> d!1602952 (= (list!18438 totalInput!520) (list!18440 (c!849283 totalInput!520)))))

(declare-fun bs!1184027 () Bool)

(assert (= bs!1184027 d!1602952))

(declare-fun m!6008712 () Bool)

(assert (=> bs!1184027 m!6008712))

(assert (=> b!4978050 d!1602952))

(declare-fun d!1602954 () Bool)

(assert (=> d!1602954 (= (list!18438 input!1580) (list!18440 (c!849283 input!1580)))))

(declare-fun bs!1184028 () Bool)

(assert (= bs!1184028 d!1602954))

(declare-fun m!6008714 () Bool)

(assert (=> bs!1184028 m!6008714))

(assert (=> b!4978050 d!1602954))

(declare-fun d!1602956 () Bool)

(declare-fun isBalanced!4216 (Conc!15198) Bool)

(assert (=> d!1602956 (= (inv!75353 input!1580) (isBalanced!4216 (c!849283 input!1580)))))

(declare-fun bs!1184029 () Bool)

(assert (= bs!1184029 d!1602956))

(declare-fun m!6008716 () Bool)

(assert (=> bs!1184029 m!6008716))

(assert (=> start!525190 d!1602956))

(declare-fun d!1602958 () Bool)

(assert (=> d!1602958 (= (inv!75353 totalInput!520) (isBalanced!4216 (c!849283 totalInput!520)))))

(declare-fun bs!1184030 () Bool)

(assert (= bs!1184030 d!1602958))

(declare-fun m!6008718 () Bool)

(assert (=> bs!1184030 m!6008718))

(assert (=> start!525190 d!1602958))

(declare-fun d!1602960 () Bool)

(declare-fun lt!2056309 () Int)

(assert (=> d!1602960 (>= lt!2056309 0)))

(declare-fun e!3111505 () Int)

(assert (=> d!1602960 (= lt!2056309 e!3111505)))

(declare-fun c!849287 () Bool)

(assert (=> d!1602960 (= c!849287 ((_ is Nil!57564) lt!2056293))))

(assert (=> d!1602960 (= (size!38183 lt!2056293) lt!2056309)))

(declare-fun b!4978072 () Bool)

(assert (=> b!4978072 (= e!3111505 0)))

(declare-fun b!4978073 () Bool)

(assert (=> b!4978073 (= e!3111505 (+ 1 (size!38183 (t!369700 lt!2056293))))))

(assert (= (and d!1602960 c!849287) b!4978072))

(assert (= (and d!1602960 (not c!849287)) b!4978073))

(declare-fun m!6008720 () Bool)

(assert (=> b!4978073 m!6008720))

(assert (=> b!4978056 d!1602960))

(declare-fun bm!347119 () Bool)

(declare-fun call!347126 () Unit!148574)

(declare-fun lemmaIsPrefixRefl!3581 (List!57688 List!57688) Unit!148574)

(assert (=> bm!347119 (= call!347126 (lemmaIsPrefixRefl!3581 lt!2056293 lt!2056293))))

(declare-fun b!4978153 () Bool)

(declare-fun e!3111555 () tuple2!62462)

(assert (=> b!4978153 (= e!3111555 (tuple2!62463 Nil!57564 lt!2056293))))

(declare-fun b!4978154 () Bool)

(declare-fun c!849324 () Bool)

(declare-fun call!347131 () Bool)

(assert (=> b!4978154 (= c!849324 call!347131)))

(declare-fun lt!2056475 () Unit!148574)

(declare-fun lt!2056472 () Unit!148574)

(assert (=> b!4978154 (= lt!2056475 lt!2056472)))

(assert (=> b!4978154 (= lt!2056293 Nil!57564)))

(declare-fun call!347129 () Unit!148574)

(assert (=> b!4978154 (= lt!2056472 call!347129)))

(declare-fun lt!2056476 () Unit!148574)

(declare-fun lt!2056465 () Unit!148574)

(assert (=> b!4978154 (= lt!2056476 lt!2056465)))

(declare-fun call!347128 () Bool)

(assert (=> b!4978154 call!347128))

(assert (=> b!4978154 (= lt!2056465 call!347126)))

(declare-fun e!3111553 () tuple2!62462)

(declare-fun e!3111556 () tuple2!62462)

(assert (=> b!4978154 (= e!3111553 e!3111556)))

(declare-fun b!4978155 () Bool)

(declare-fun lt!2056478 () tuple2!62462)

(assert (=> b!4978155 (= e!3111555 lt!2056478)))

(declare-fun b!4978156 () Bool)

(declare-fun e!3111558 () tuple2!62462)

(assert (=> b!4978156 (= e!3111558 e!3111553)))

(declare-fun c!849326 () Bool)

(assert (=> b!4978156 (= c!849326 (= (size!38183 Nil!57564) (size!38183 lt!2056293)))))

(declare-fun b!4978157 () Bool)

(assert (=> b!4978157 (= e!3111556 (tuple2!62463 Nil!57564 lt!2056293))))

(declare-fun d!1602962 () Bool)

(declare-fun e!3111552 () Bool)

(assert (=> d!1602962 e!3111552))

(declare-fun res!2125183 () Bool)

(assert (=> d!1602962 (=> (not res!2125183) (not e!3111552))))

(declare-fun lt!2056456 () tuple2!62462)

(declare-fun ++!12543 (List!57688 List!57688) List!57688)

(assert (=> d!1602962 (= res!2125183 (= (++!12543 (_1!34534 lt!2056456) (_2!34534 lt!2056456)) lt!2056293))))

(assert (=> d!1602962 (= lt!2056456 e!3111558)))

(declare-fun c!849323 () Bool)

(declare-fun lostCause!1141 (Regex!13679) Bool)

(assert (=> d!1602962 (= c!849323 (lostCause!1141 (regex!8446 rule!200)))))

(declare-fun lt!2056483 () Unit!148574)

(declare-fun Unit!148580 () Unit!148574)

(assert (=> d!1602962 (= lt!2056483 Unit!148580)))

(declare-fun getSuffix!3097 (List!57688 List!57688) List!57688)

(assert (=> d!1602962 (= (getSuffix!3097 lt!2056293 Nil!57564) lt!2056293)))

(declare-fun lt!2056460 () Unit!148574)

(declare-fun lt!2056471 () Unit!148574)

(assert (=> d!1602962 (= lt!2056460 lt!2056471)))

(declare-fun lt!2056462 () List!57688)

(assert (=> d!1602962 (= lt!2056293 lt!2056462)))

(declare-fun lemmaSamePrefixThenSameSuffix!2509 (List!57688 List!57688 List!57688 List!57688 List!57688) Unit!148574)

(assert (=> d!1602962 (= lt!2056471 (lemmaSamePrefixThenSameSuffix!2509 Nil!57564 lt!2056293 Nil!57564 lt!2056462 lt!2056293))))

(assert (=> d!1602962 (= lt!2056462 (getSuffix!3097 lt!2056293 Nil!57564))))

(declare-fun lt!2056469 () Unit!148574)

(declare-fun lt!2056463 () Unit!148574)

(assert (=> d!1602962 (= lt!2056469 lt!2056463)))

(declare-fun isPrefix!5257 (List!57688 List!57688) Bool)

(assert (=> d!1602962 (isPrefix!5257 Nil!57564 (++!12543 Nil!57564 lt!2056293))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3355 (List!57688 List!57688) Unit!148574)

(assert (=> d!1602962 (= lt!2056463 (lemmaConcatTwoListThenFirstIsPrefix!3355 Nil!57564 lt!2056293))))

(assert (=> d!1602962 (validRegex!5980 (regex!8446 rule!200))))

(assert (=> d!1602962 (= (findLongestMatchInner!1890 (regex!8446 rule!200) Nil!57564 (size!38183 Nil!57564) lt!2056293 lt!2056293 (size!38183 lt!2056293)) lt!2056456)))

(declare-fun b!4978158 () Bool)

(declare-fun e!3111557 () tuple2!62462)

(declare-fun call!347124 () tuple2!62462)

(assert (=> b!4978158 (= e!3111557 call!347124)))

(declare-fun bm!347120 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1217 (List!57688 List!57688 List!57688) Unit!148574)

(assert (=> bm!347120 (= call!347129 (lemmaIsPrefixSameLengthThenSameList!1217 lt!2056293 Nil!57564 lt!2056293))))

(declare-fun b!4978159 () Bool)

(declare-fun c!849325 () Bool)

(assert (=> b!4978159 (= c!849325 call!347131)))

(declare-fun lt!2056468 () Unit!148574)

(declare-fun lt!2056459 () Unit!148574)

(assert (=> b!4978159 (= lt!2056468 lt!2056459)))

(declare-fun lt!2056458 () C!27608)

(declare-fun lt!2056470 () List!57688)

(assert (=> b!4978159 (= (++!12543 (++!12543 Nil!57564 (Cons!57564 lt!2056458 Nil!57564)) lt!2056470) lt!2056293)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1454 (List!57688 C!27608 List!57688 List!57688) Unit!148574)

(assert (=> b!4978159 (= lt!2056459 (lemmaMoveElementToOtherListKeepsConcatEq!1454 Nil!57564 lt!2056458 lt!2056470 lt!2056293))))

(declare-fun tail!9813 (List!57688) List!57688)

(assert (=> b!4978159 (= lt!2056470 (tail!9813 lt!2056293))))

(declare-fun head!10680 (List!57688) C!27608)

(assert (=> b!4978159 (= lt!2056458 (head!10680 lt!2056293))))

(declare-fun lt!2056466 () Unit!148574)

(declare-fun lt!2056467 () Unit!148574)

(assert (=> b!4978159 (= lt!2056466 lt!2056467)))

(assert (=> b!4978159 (isPrefix!5257 (++!12543 Nil!57564 (Cons!57564 (head!10680 (getSuffix!3097 lt!2056293 Nil!57564)) Nil!57564)) lt!2056293)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!844 (List!57688 List!57688) Unit!148574)

(assert (=> b!4978159 (= lt!2056467 (lemmaAddHeadSuffixToPrefixStillPrefix!844 Nil!57564 lt!2056293))))

(declare-fun lt!2056473 () Unit!148574)

(declare-fun lt!2056480 () Unit!148574)

(assert (=> b!4978159 (= lt!2056473 lt!2056480)))

(assert (=> b!4978159 (= lt!2056480 (lemmaAddHeadSuffixToPrefixStillPrefix!844 Nil!57564 lt!2056293))))

(declare-fun lt!2056461 () List!57688)

(assert (=> b!4978159 (= lt!2056461 (++!12543 Nil!57564 (Cons!57564 (head!10680 lt!2056293) Nil!57564)))))

(declare-fun lt!2056457 () Unit!148574)

(declare-fun e!3111559 () Unit!148574)

(assert (=> b!4978159 (= lt!2056457 e!3111559)))

(declare-fun c!849321 () Bool)

(assert (=> b!4978159 (= c!849321 (= (size!38183 Nil!57564) (size!38183 lt!2056293)))))

(declare-fun lt!2056481 () Unit!148574)

(declare-fun lt!2056479 () Unit!148574)

(assert (=> b!4978159 (= lt!2056481 lt!2056479)))

(assert (=> b!4978159 (<= (size!38183 Nil!57564) (size!38183 lt!2056293))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!770 (List!57688 List!57688) Unit!148574)

(assert (=> b!4978159 (= lt!2056479 (lemmaIsPrefixThenSmallerEqSize!770 Nil!57564 lt!2056293))))

(assert (=> b!4978159 (= e!3111553 e!3111557)))

(declare-fun bm!347121 () Bool)

(declare-fun nullable!4631 (Regex!13679) Bool)

(assert (=> bm!347121 (= call!347131 (nullable!4631 (regex!8446 rule!200)))))

(declare-fun b!4978160 () Bool)

(declare-fun e!3111554 () Bool)

(assert (=> b!4978160 (= e!3111554 (>= (size!38183 (_1!34534 lt!2056456)) (size!38183 Nil!57564)))))

(declare-fun bm!347122 () Bool)

(assert (=> bm!347122 (= call!347128 (isPrefix!5257 lt!2056293 lt!2056293))))

(declare-fun b!4978161 () Bool)

(declare-fun Unit!148581 () Unit!148574)

(assert (=> b!4978161 (= e!3111559 Unit!148581)))

(declare-fun bm!347123 () Bool)

(declare-fun call!347127 () List!57688)

(assert (=> bm!347123 (= call!347127 (tail!9813 lt!2056293))))

(declare-fun bm!347124 () Bool)

(declare-fun call!347130 () Regex!13679)

(declare-fun call!347125 () C!27608)

(declare-fun derivativeStep!3931 (Regex!13679 C!27608) Regex!13679)

(assert (=> bm!347124 (= call!347130 (derivativeStep!3931 (regex!8446 rule!200) call!347125))))

(declare-fun b!4978162 () Bool)

(declare-fun Unit!148582 () Unit!148574)

(assert (=> b!4978162 (= e!3111559 Unit!148582)))

(declare-fun lt!2056474 () Unit!148574)

(assert (=> b!4978162 (= lt!2056474 call!347126)))

(assert (=> b!4978162 call!347128))

(declare-fun lt!2056477 () Unit!148574)

(assert (=> b!4978162 (= lt!2056477 lt!2056474)))

(declare-fun lt!2056482 () Unit!148574)

(assert (=> b!4978162 (= lt!2056482 call!347129)))

(assert (=> b!4978162 (= lt!2056293 Nil!57564)))

(declare-fun lt!2056464 () Unit!148574)

(assert (=> b!4978162 (= lt!2056464 lt!2056482)))

(assert (=> b!4978162 false))

(declare-fun bm!347125 () Bool)

(assert (=> bm!347125 (= call!347125 (head!10680 lt!2056293))))

(declare-fun b!4978163 () Bool)

(assert (=> b!4978163 (= e!3111552 e!3111554)))

(declare-fun res!2125182 () Bool)

(assert (=> b!4978163 (=> res!2125182 e!3111554)))

(assert (=> b!4978163 (= res!2125182 (isEmpty!31054 (_1!34534 lt!2056456)))))

(declare-fun b!4978164 () Bool)

(assert (=> b!4978164 (= e!3111556 (tuple2!62463 Nil!57564 Nil!57564))))

(declare-fun b!4978165 () Bool)

(assert (=> b!4978165 (= e!3111557 e!3111555)))

(assert (=> b!4978165 (= lt!2056478 call!347124)))

(declare-fun c!849322 () Bool)

(assert (=> b!4978165 (= c!849322 (isEmpty!31054 (_1!34534 lt!2056478)))))

(declare-fun b!4978166 () Bool)

(assert (=> b!4978166 (= e!3111558 (tuple2!62463 Nil!57564 lt!2056293))))

(declare-fun bm!347126 () Bool)

(assert (=> bm!347126 (= call!347124 (findLongestMatchInner!1890 call!347130 lt!2056461 (+ (size!38183 Nil!57564) 1) call!347127 lt!2056293 (size!38183 lt!2056293)))))

(assert (= (and d!1602962 c!849323) b!4978166))

(assert (= (and d!1602962 (not c!849323)) b!4978156))

(assert (= (and b!4978156 c!849326) b!4978154))

(assert (= (and b!4978156 (not c!849326)) b!4978159))

(assert (= (and b!4978154 c!849324) b!4978164))

(assert (= (and b!4978154 (not c!849324)) b!4978157))

(assert (= (and b!4978159 c!849321) b!4978162))

(assert (= (and b!4978159 (not c!849321)) b!4978161))

(assert (= (and b!4978159 c!849325) b!4978165))

(assert (= (and b!4978159 (not c!849325)) b!4978158))

(assert (= (and b!4978165 c!849322) b!4978153))

(assert (= (and b!4978165 (not c!849322)) b!4978155))

(assert (= (or b!4978165 b!4978158) bm!347125))

(assert (= (or b!4978165 b!4978158) bm!347123))

(assert (= (or b!4978165 b!4978158) bm!347124))

(assert (= (or b!4978165 b!4978158) bm!347126))

(assert (= (or b!4978154 b!4978162) bm!347122))

(assert (= (or b!4978154 b!4978162) bm!347120))

(assert (= (or b!4978154 b!4978162) bm!347119))

(assert (= (or b!4978154 b!4978159) bm!347121))

(assert (= (and d!1602962 res!2125183) b!4978163))

(assert (= (and b!4978163 (not res!2125182)) b!4978160))

(declare-fun m!6008786 () Bool)

(assert (=> bm!347123 m!6008786))

(declare-fun m!6008788 () Bool)

(assert (=> d!1602962 m!6008788))

(declare-fun m!6008790 () Bool)

(assert (=> d!1602962 m!6008790))

(assert (=> d!1602962 m!6008702))

(declare-fun m!6008792 () Bool)

(assert (=> d!1602962 m!6008792))

(declare-fun m!6008794 () Bool)

(assert (=> d!1602962 m!6008794))

(declare-fun m!6008796 () Bool)

(assert (=> d!1602962 m!6008796))

(declare-fun m!6008798 () Bool)

(assert (=> d!1602962 m!6008798))

(declare-fun m!6008800 () Bool)

(assert (=> d!1602962 m!6008800))

(assert (=> d!1602962 m!6008794))

(declare-fun m!6008802 () Bool)

(assert (=> bm!347122 m!6008802))

(declare-fun m!6008804 () Bool)

(assert (=> b!4978165 m!6008804))

(declare-fun m!6008806 () Bool)

(assert (=> bm!347119 m!6008806))

(assert (=> bm!347126 m!6008666))

(declare-fun m!6008808 () Bool)

(assert (=> bm!347126 m!6008808))

(declare-fun m!6008810 () Bool)

(assert (=> b!4978159 m!6008810))

(assert (=> b!4978159 m!6008672))

(declare-fun m!6008812 () Bool)

(assert (=> b!4978159 m!6008812))

(declare-fun m!6008814 () Bool)

(assert (=> b!4978159 m!6008814))

(declare-fun m!6008816 () Bool)

(assert (=> b!4978159 m!6008816))

(declare-fun m!6008818 () Bool)

(assert (=> b!4978159 m!6008818))

(declare-fun m!6008820 () Bool)

(assert (=> b!4978159 m!6008820))

(assert (=> b!4978159 m!6008788))

(declare-fun m!6008822 () Bool)

(assert (=> b!4978159 m!6008822))

(declare-fun m!6008824 () Bool)

(assert (=> b!4978159 m!6008824))

(assert (=> b!4978159 m!6008810))

(declare-fun m!6008826 () Bool)

(assert (=> b!4978159 m!6008826))

(assert (=> b!4978159 m!6008786))

(declare-fun m!6008828 () Bool)

(assert (=> b!4978159 m!6008828))

(assert (=> b!4978159 m!6008814))

(assert (=> b!4978159 m!6008788))

(assert (=> b!4978159 m!6008666))

(assert (=> bm!347125 m!6008828))

(declare-fun m!6008830 () Bool)

(assert (=> b!4978163 m!6008830))

(declare-fun m!6008832 () Bool)

(assert (=> bm!347121 m!6008832))

(declare-fun m!6008834 () Bool)

(assert (=> bm!347124 m!6008834))

(declare-fun m!6008836 () Bool)

(assert (=> bm!347120 m!6008836))

(declare-fun m!6008838 () Bool)

(assert (=> b!4978160 m!6008838))

(assert (=> b!4978160 m!6008672))

(assert (=> b!4978056 d!1602962))

(declare-fun d!1602970 () Bool)

(declare-fun lt!2056484 () Int)

(assert (=> d!1602970 (>= lt!2056484 0)))

(declare-fun e!3111560 () Int)

(assert (=> d!1602970 (= lt!2056484 e!3111560)))

(declare-fun c!849327 () Bool)

(assert (=> d!1602970 (= c!849327 ((_ is Nil!57564) Nil!57564))))

(assert (=> d!1602970 (= (size!38183 Nil!57564) lt!2056484)))

(declare-fun b!4978167 () Bool)

(assert (=> b!4978167 (= e!3111560 0)))

(declare-fun b!4978168 () Bool)

(assert (=> b!4978168 (= e!3111560 (+ 1 (size!38183 (t!369700 Nil!57564))))))

(assert (= (and d!1602970 c!849327) b!4978167))

(assert (= (and d!1602970 (not c!849327)) b!4978168))

(declare-fun m!6008840 () Bool)

(assert (=> b!4978168 m!6008840))

(assert (=> b!4978056 d!1602970))

(declare-fun d!1602972 () Bool)

(declare-fun e!3111563 () Bool)

(assert (=> d!1602972 e!3111563))

(declare-fun res!2125186 () Bool)

(assert (=> d!1602972 (=> (not res!2125186) (not e!3111563))))

(assert (=> d!1602972 (= res!2125186 (semiInverseModEq!3739 (toChars!11280 (transformation!8446 rule!200)) (toValue!11421 (transformation!8446 rule!200))))))

(declare-fun Unit!148583 () Unit!148574)

(assert (=> d!1602972 (= (lemmaInv!1369 (transformation!8446 rule!200)) Unit!148583)))

(declare-fun b!4978171 () Bool)

(declare-fun equivClasses!3561 (Int Int) Bool)

(assert (=> b!4978171 (= e!3111563 (equivClasses!3561 (toChars!11280 (transformation!8446 rule!200)) (toValue!11421 (transformation!8446 rule!200))))))

(assert (= (and d!1602972 res!2125186) b!4978171))

(assert (=> d!1602972 m!6008676))

(declare-fun m!6008842 () Bool)

(assert (=> b!4978171 m!6008842))

(assert (=> b!4978056 d!1602972))

(declare-fun d!1602974 () Bool)

(assert (=> d!1602974 (= (isEmpty!31054 (_1!34534 lt!2056291)) ((_ is Nil!57564) (_1!34534 lt!2056291)))))

(assert (=> b!4978056 d!1602974))

(declare-fun d!1602976 () Bool)

(declare-fun e!3111566 () Bool)

(assert (=> d!1602976 e!3111566))

(declare-fun res!2125189 () Bool)

(assert (=> d!1602976 (=> res!2125189 e!3111566)))

(assert (=> d!1602976 (= res!2125189 (isEmpty!31054 (_1!34534 (findLongestMatchInner!1890 (regex!8446 rule!200) Nil!57564 (size!38183 Nil!57564) lt!2056293 lt!2056293 (size!38183 lt!2056293)))))))

(declare-fun lt!2056487 () Unit!148574)

(declare-fun choose!36739 (Regex!13679 List!57688) Unit!148574)

(assert (=> d!1602976 (= lt!2056487 (choose!36739 (regex!8446 rule!200) lt!2056293))))

(assert (=> d!1602976 (validRegex!5980 (regex!8446 rule!200))))

(assert (=> d!1602976 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1851 (regex!8446 rule!200) lt!2056293) lt!2056487)))

(declare-fun b!4978174 () Bool)

(assert (=> b!4978174 (= e!3111566 (matchR!6673 (regex!8446 rule!200) (_1!34534 (findLongestMatchInner!1890 (regex!8446 rule!200) Nil!57564 (size!38183 Nil!57564) lt!2056293 lt!2056293 (size!38183 lt!2056293)))))))

(assert (= (and d!1602976 (not res!2125189)) b!4978174))

(assert (=> d!1602976 m!6008702))

(assert (=> d!1602976 m!6008666))

(assert (=> d!1602976 m!6008672))

(assert (=> d!1602976 m!6008666))

(assert (=> d!1602976 m!6008674))

(assert (=> d!1602976 m!6008672))

(declare-fun m!6008844 () Bool)

(assert (=> d!1602976 m!6008844))

(declare-fun m!6008846 () Bool)

(assert (=> d!1602976 m!6008846))

(assert (=> b!4978174 m!6008672))

(assert (=> b!4978174 m!6008666))

(assert (=> b!4978174 m!6008672))

(assert (=> b!4978174 m!6008666))

(assert (=> b!4978174 m!6008674))

(declare-fun m!6008848 () Bool)

(assert (=> b!4978174 m!6008848))

(assert (=> b!4978056 d!1602976))

(declare-fun d!1602978 () Bool)

(assert (=> d!1602978 true))

(declare-fun lambda!247744 () Int)

(declare-fun order!26431 () Int)

(declare-fun order!26429 () Int)

(declare-fun dynLambda!23306 (Int Int) Int)

(declare-fun dynLambda!23307 (Int Int) Int)

(assert (=> d!1602978 (< (dynLambda!23306 order!26429 (toChars!11280 (transformation!8446 rule!200))) (dynLambda!23307 order!26431 lambda!247744))))

(assert (=> d!1602978 true))

(declare-fun order!26433 () Int)

(declare-fun dynLambda!23308 (Int Int) Int)

(assert (=> d!1602978 (< (dynLambda!23308 order!26433 (toValue!11421 (transformation!8446 rule!200))) (dynLambda!23307 order!26431 lambda!247744))))

(declare-fun Forall!1796 (Int) Bool)

(assert (=> d!1602978 (= (semiInverseModEq!3739 (toChars!11280 (transformation!8446 rule!200)) (toValue!11421 (transformation!8446 rule!200))) (Forall!1796 lambda!247744))))

(declare-fun bs!1184036 () Bool)

(assert (= bs!1184036 d!1602978))

(declare-fun m!6008902 () Bool)

(assert (=> bs!1184036 m!6008902))

(assert (=> b!4978056 d!1602978))

(declare-fun d!1603000 () Bool)

(assert (=> d!1603000 (= (inv!75347 (tag!9310 rule!200)) (= (mod (str.len (value!270133 (tag!9310 rule!200))) 2) 0))))

(assert (=> b!4978051 d!1603000))

(declare-fun d!1603002 () Bool)

(declare-fun res!2125229 () Bool)

(declare-fun e!3111616 () Bool)

(assert (=> d!1603002 (=> (not res!2125229) (not e!3111616))))

(assert (=> d!1603002 (= res!2125229 (semiInverseModEq!3739 (toChars!11280 (transformation!8446 rule!200)) (toValue!11421 (transformation!8446 rule!200))))))

(assert (=> d!1603002 (= (inv!75351 (transformation!8446 rule!200)) e!3111616)))

(declare-fun b!4978278 () Bool)

(assert (=> b!4978278 (= e!3111616 (equivClasses!3561 (toChars!11280 (transformation!8446 rule!200)) (toValue!11421 (transformation!8446 rule!200))))))

(assert (= (and d!1603002 res!2125229) b!4978278))

(assert (=> d!1603002 m!6008676))

(assert (=> b!4978278 m!6008842))

(assert (=> b!4978051 d!1603002))

(declare-fun d!1603004 () Bool)

(declare-fun res!2125234 () Bool)

(declare-fun e!3111619 () Bool)

(assert (=> d!1603004 (=> (not res!2125234) (not e!3111619))))

(assert (=> d!1603004 (= res!2125234 (validRegex!5980 (regex!8446 rule!200)))))

(assert (=> d!1603004 (= (ruleValid!3854 thiss!16165 rule!200) e!3111619)))

(declare-fun b!4978283 () Bool)

(declare-fun res!2125235 () Bool)

(assert (=> b!4978283 (=> (not res!2125235) (not e!3111619))))

(assert (=> b!4978283 (= res!2125235 (not (nullable!4631 (regex!8446 rule!200))))))

(declare-fun b!4978284 () Bool)

(assert (=> b!4978284 (= e!3111619 (not (= (tag!9310 rule!200) (String!65655 ""))))))

(assert (= (and d!1603004 res!2125234) b!4978283))

(assert (= (and b!4978283 res!2125235) b!4978284))

(assert (=> d!1603004 m!6008702))

(assert (=> b!4978283 m!6008832))

(assert (=> b!4978057 d!1603004))

(declare-fun d!1603006 () Bool)

(declare-fun c!849344 () Bool)

(assert (=> d!1603006 (= c!849344 ((_ is Node!15198) (c!849283 totalInput!520)))))

(declare-fun e!3111624 () Bool)

(assert (=> d!1603006 (= (inv!75352 (c!849283 totalInput!520)) e!3111624)))

(declare-fun b!4978291 () Bool)

(declare-fun inv!75357 (Conc!15198) Bool)

(assert (=> b!4978291 (= e!3111624 (inv!75357 (c!849283 totalInput!520)))))

(declare-fun b!4978292 () Bool)

(declare-fun e!3111625 () Bool)

(assert (=> b!4978292 (= e!3111624 e!3111625)))

(declare-fun res!2125238 () Bool)

(assert (=> b!4978292 (= res!2125238 (not ((_ is Leaf!25246) (c!849283 totalInput!520))))))

(assert (=> b!4978292 (=> res!2125238 e!3111625)))

(declare-fun b!4978293 () Bool)

(declare-fun inv!75358 (Conc!15198) Bool)

(assert (=> b!4978293 (= e!3111625 (inv!75358 (c!849283 totalInput!520)))))

(assert (= (and d!1603006 c!849344) b!4978291))

(assert (= (and d!1603006 (not c!849344)) b!4978292))

(assert (= (and b!4978292 (not res!2125238)) b!4978293))

(declare-fun m!6008904 () Bool)

(assert (=> b!4978291 m!6008904))

(declare-fun m!6008906 () Bool)

(assert (=> b!4978293 m!6008906))

(assert (=> b!4978052 d!1603006))

(declare-fun d!1603008 () Bool)

(declare-fun c!849345 () Bool)

(assert (=> d!1603008 (= c!849345 ((_ is Node!15198) (c!849283 input!1580)))))

(declare-fun e!3111626 () Bool)

(assert (=> d!1603008 (= (inv!75352 (c!849283 input!1580)) e!3111626)))

(declare-fun b!4978294 () Bool)

(assert (=> b!4978294 (= e!3111626 (inv!75357 (c!849283 input!1580)))))

(declare-fun b!4978295 () Bool)

(declare-fun e!3111627 () Bool)

(assert (=> b!4978295 (= e!3111626 e!3111627)))

(declare-fun res!2125239 () Bool)

(assert (=> b!4978295 (= res!2125239 (not ((_ is Leaf!25246) (c!849283 input!1580))))))

(assert (=> b!4978295 (=> res!2125239 e!3111627)))

(declare-fun b!4978296 () Bool)

(assert (=> b!4978296 (= e!3111627 (inv!75358 (c!849283 input!1580)))))

(assert (= (and d!1603008 c!849345) b!4978294))

(assert (= (and d!1603008 (not c!849345)) b!4978295))

(assert (= (and b!4978295 (not res!2125239)) b!4978296))

(declare-fun m!6008908 () Bool)

(assert (=> b!4978294 m!6008908))

(declare-fun m!6008910 () Bool)

(assert (=> b!4978296 m!6008910))

(assert (=> b!4978058 d!1603008))

(declare-fun b!4978325 () Bool)

(declare-fun e!3111643 () Bool)

(declare-fun e!3111648 () Bool)

(assert (=> b!4978325 (= e!3111643 e!3111648)))

(declare-fun c!849352 () Bool)

(assert (=> b!4978325 (= c!849352 ((_ is EmptyLang!13679) (regex!8446 rule!200)))))

(declare-fun b!4978326 () Bool)

(declare-fun e!3111642 () Bool)

(assert (=> b!4978326 (= e!3111642 (not (= (head!10680 (_1!34534 lt!2056291)) (c!849284 (regex!8446 rule!200)))))))

(declare-fun d!1603010 () Bool)

(assert (=> d!1603010 e!3111643))

(declare-fun c!849353 () Bool)

(assert (=> d!1603010 (= c!849353 ((_ is EmptyExpr!13679) (regex!8446 rule!200)))))

(declare-fun lt!2056500 () Bool)

(declare-fun e!3111645 () Bool)

(assert (=> d!1603010 (= lt!2056500 e!3111645)))

(declare-fun c!849354 () Bool)

(assert (=> d!1603010 (= c!849354 (isEmpty!31054 (_1!34534 lt!2056291)))))

(assert (=> d!1603010 (validRegex!5980 (regex!8446 rule!200))))

(assert (=> d!1603010 (= (matchR!6673 (regex!8446 rule!200) (_1!34534 lt!2056291)) lt!2056500)))

(declare-fun b!4978327 () Bool)

(declare-fun res!2125258 () Bool)

(declare-fun e!3111644 () Bool)

(assert (=> b!4978327 (=> res!2125258 e!3111644)))

(assert (=> b!4978327 (= res!2125258 (not ((_ is ElementMatch!13679) (regex!8446 rule!200))))))

(assert (=> b!4978327 (= e!3111648 e!3111644)))

(declare-fun b!4978328 () Bool)

(declare-fun call!347137 () Bool)

(assert (=> b!4978328 (= e!3111643 (= lt!2056500 call!347137))))

(declare-fun b!4978329 () Bool)

(declare-fun res!2125259 () Bool)

(declare-fun e!3111646 () Bool)

(assert (=> b!4978329 (=> (not res!2125259) (not e!3111646))))

(assert (=> b!4978329 (= res!2125259 (isEmpty!31054 (tail!9813 (_1!34534 lt!2056291))))))

(declare-fun b!4978330 () Bool)

(declare-fun e!3111647 () Bool)

(assert (=> b!4978330 (= e!3111647 e!3111642)))

(declare-fun res!2125260 () Bool)

(assert (=> b!4978330 (=> res!2125260 e!3111642)))

(assert (=> b!4978330 (= res!2125260 call!347137)))

(declare-fun b!4978331 () Bool)

(declare-fun res!2125261 () Bool)

(assert (=> b!4978331 (=> res!2125261 e!3111642)))

(assert (=> b!4978331 (= res!2125261 (not (isEmpty!31054 (tail!9813 (_1!34534 lt!2056291)))))))

(declare-fun b!4978332 () Bool)

(declare-fun res!2125262 () Bool)

(assert (=> b!4978332 (=> res!2125262 e!3111644)))

(assert (=> b!4978332 (= res!2125262 e!3111646)))

(declare-fun res!2125263 () Bool)

(assert (=> b!4978332 (=> (not res!2125263) (not e!3111646))))

(assert (=> b!4978332 (= res!2125263 lt!2056500)))

(declare-fun bm!347132 () Bool)

(assert (=> bm!347132 (= call!347137 (isEmpty!31054 (_1!34534 lt!2056291)))))

(declare-fun b!4978333 () Bool)

(assert (=> b!4978333 (= e!3111645 (matchR!6673 (derivativeStep!3931 (regex!8446 rule!200) (head!10680 (_1!34534 lt!2056291))) (tail!9813 (_1!34534 lt!2056291))))))

(declare-fun b!4978334 () Bool)

(assert (=> b!4978334 (= e!3111648 (not lt!2056500))))

(declare-fun b!4978335 () Bool)

(assert (=> b!4978335 (= e!3111645 (nullable!4631 (regex!8446 rule!200)))))

(declare-fun b!4978336 () Bool)

(assert (=> b!4978336 (= e!3111644 e!3111647)))

(declare-fun res!2125257 () Bool)

(assert (=> b!4978336 (=> (not res!2125257) (not e!3111647))))

(assert (=> b!4978336 (= res!2125257 (not lt!2056500))))

(declare-fun b!4978337 () Bool)

(declare-fun res!2125256 () Bool)

(assert (=> b!4978337 (=> (not res!2125256) (not e!3111646))))

(assert (=> b!4978337 (= res!2125256 (not call!347137))))

(declare-fun b!4978338 () Bool)

(assert (=> b!4978338 (= e!3111646 (= (head!10680 (_1!34534 lt!2056291)) (c!849284 (regex!8446 rule!200))))))

(assert (= (and d!1603010 c!849354) b!4978335))

(assert (= (and d!1603010 (not c!849354)) b!4978333))

(assert (= (and d!1603010 c!849353) b!4978328))

(assert (= (and d!1603010 (not c!849353)) b!4978325))

(assert (= (and b!4978325 c!849352) b!4978334))

(assert (= (and b!4978325 (not c!849352)) b!4978327))

(assert (= (and b!4978327 (not res!2125258)) b!4978332))

(assert (= (and b!4978332 res!2125263) b!4978337))

(assert (= (and b!4978337 res!2125256) b!4978329))

(assert (= (and b!4978329 res!2125259) b!4978338))

(assert (= (and b!4978332 (not res!2125262)) b!4978336))

(assert (= (and b!4978336 res!2125257) b!4978330))

(assert (= (and b!4978330 (not res!2125260)) b!4978331))

(assert (= (and b!4978331 (not res!2125261)) b!4978326))

(assert (= (or b!4978328 b!4978330 b!4978337) bm!347132))

(assert (=> bm!347132 m!6008670))

(declare-fun m!6008912 () Bool)

(assert (=> b!4978338 m!6008912))

(assert (=> b!4978335 m!6008832))

(assert (=> b!4978333 m!6008912))

(assert (=> b!4978333 m!6008912))

(declare-fun m!6008914 () Bool)

(assert (=> b!4978333 m!6008914))

(declare-fun m!6008916 () Bool)

(assert (=> b!4978333 m!6008916))

(assert (=> b!4978333 m!6008914))

(assert (=> b!4978333 m!6008916))

(declare-fun m!6008918 () Bool)

(assert (=> b!4978333 m!6008918))

(assert (=> b!4978326 m!6008912))

(assert (=> b!4978329 m!6008916))

(assert (=> b!4978329 m!6008916))

(declare-fun m!6008920 () Bool)

(assert (=> b!4978329 m!6008920))

(assert (=> b!4978331 m!6008916))

(assert (=> b!4978331 m!6008916))

(assert (=> b!4978331 m!6008920))

(assert (=> d!1603010 m!6008670))

(assert (=> d!1603010 m!6008702))

(assert (=> b!4978053 d!1603010))

(declare-fun b!4978349 () Bool)

(declare-fun e!3111651 () Bool)

(declare-fun tp_is_empty!36363 () Bool)

(assert (=> b!4978349 (= e!3111651 tp_is_empty!36363)))

(declare-fun b!4978352 () Bool)

(declare-fun tp!1396012 () Bool)

(declare-fun tp!1396014 () Bool)

(assert (=> b!4978352 (= e!3111651 (and tp!1396012 tp!1396014))))

(declare-fun b!4978350 () Bool)

(declare-fun tp!1396010 () Bool)

(declare-fun tp!1396011 () Bool)

(assert (=> b!4978350 (= e!3111651 (and tp!1396010 tp!1396011))))

(declare-fun b!4978351 () Bool)

(declare-fun tp!1396013 () Bool)

(assert (=> b!4978351 (= e!3111651 tp!1396013)))

(assert (=> b!4978051 (= tp!1395968 e!3111651)))

(assert (= (and b!4978051 ((_ is ElementMatch!13679) (regex!8446 rule!200))) b!4978349))

(assert (= (and b!4978051 ((_ is Concat!22435) (regex!8446 rule!200))) b!4978350))

(assert (= (and b!4978051 ((_ is Star!13679) (regex!8446 rule!200))) b!4978351))

(assert (= (and b!4978051 ((_ is Union!13679) (regex!8446 rule!200))) b!4978352))

(declare-fun b!4978361 () Bool)

(declare-fun e!3111657 () Bool)

(declare-fun tp!1396021 () Bool)

(declare-fun tp!1396022 () Bool)

(assert (=> b!4978361 (= e!3111657 (and (inv!75352 (left!42055 (c!849283 totalInput!520))) tp!1396022 (inv!75352 (right!42385 (c!849283 totalInput!520))) tp!1396021))))

(declare-fun b!4978363 () Bool)

(declare-fun e!3111656 () Bool)

(declare-fun tp!1396023 () Bool)

(assert (=> b!4978363 (= e!3111656 tp!1396023)))

(declare-fun b!4978362 () Bool)

(declare-fun inv!75359 (IArray!30457) Bool)

(assert (=> b!4978362 (= e!3111657 (and (inv!75359 (xs!18524 (c!849283 totalInput!520))) e!3111656))))

(assert (=> b!4978052 (= tp!1395969 (and (inv!75352 (c!849283 totalInput!520)) e!3111657))))

(assert (= (and b!4978052 ((_ is Node!15198) (c!849283 totalInput!520))) b!4978361))

(assert (= b!4978362 b!4978363))

(assert (= (and b!4978052 ((_ is Leaf!25246) (c!849283 totalInput!520))) b!4978362))

(declare-fun m!6008922 () Bool)

(assert (=> b!4978361 m!6008922))

(declare-fun m!6008924 () Bool)

(assert (=> b!4978361 m!6008924))

(declare-fun m!6008926 () Bool)

(assert (=> b!4978362 m!6008926))

(assert (=> b!4978052 m!6008642))

(declare-fun tp!1396025 () Bool)

(declare-fun e!3111659 () Bool)

(declare-fun tp!1396024 () Bool)

(declare-fun b!4978364 () Bool)

(assert (=> b!4978364 (= e!3111659 (and (inv!75352 (left!42055 (c!849283 input!1580))) tp!1396025 (inv!75352 (right!42385 (c!849283 input!1580))) tp!1396024))))

(declare-fun b!4978366 () Bool)

(declare-fun e!3111658 () Bool)

(declare-fun tp!1396026 () Bool)

(assert (=> b!4978366 (= e!3111658 tp!1396026)))

(declare-fun b!4978365 () Bool)

(assert (=> b!4978365 (= e!3111659 (and (inv!75359 (xs!18524 (c!849283 input!1580))) e!3111658))))

(assert (=> b!4978058 (= tp!1395972 (and (inv!75352 (c!849283 input!1580)) e!3111659))))

(assert (= (and b!4978058 ((_ is Node!15198) (c!849283 input!1580))) b!4978364))

(assert (= b!4978365 b!4978366))

(assert (= (and b!4978058 ((_ is Leaf!25246) (c!849283 input!1580))) b!4978365))

(declare-fun m!6008928 () Bool)

(assert (=> b!4978364 m!6008928))

(declare-fun m!6008930 () Bool)

(assert (=> b!4978364 m!6008930))

(declare-fun m!6008932 () Bool)

(assert (=> b!4978365 m!6008932))

(assert (=> b!4978058 m!6008680))

(check-sat (not b!4978364) (not d!1602950) (not b!4978291) (not b!4978365) (not b!4978168) (not b!4978159) (not bm!347132) (not d!1602954) (not b!4978067) (not d!1602956) (not b!4978171) (not d!1602978) (not b!4978333) (not b!4978174) (not b!4978366) (not b!4978073) (not d!1602976) (not b!4978363) (not d!1602934) tp_is_empty!36363 (not b_next!133873) (not bm!347121) (not d!1603002) (not d!1602952) (not bm!347126) (not b!4978283) (not b!4978052) (not b!4978058) (not b!4978294) b_and!349495 (not bm!347123) (not bm!347119) (not b_next!133875) (not b!4978352) (not b!4978160) (not b!4978165) (not b!4978326) (not bm!347120) (not b!4978361) (not bm!347125) (not b!4978293) b_and!349497 (not b!4978338) (not d!1602958) (not b!4978331) (not b!4978163) (not bm!347122) (not d!1602972) (not b!4978335) (not b!4978329) (not b!4978350) (not bm!347124) (not d!1602932) (not d!1603004) (not b!4978296) (not b!4978278) (not d!1602962) (not d!1603010) (not b!4978362) (not b!4978351))
(check-sat b_and!349497 b_and!349495 (not b_next!133875) (not b_next!133873))
