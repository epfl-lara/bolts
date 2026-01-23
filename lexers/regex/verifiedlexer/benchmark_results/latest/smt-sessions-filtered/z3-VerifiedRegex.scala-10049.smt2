; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!525330 () Bool)

(assert start!525330)

(declare-fun b!4978821 () Bool)

(declare-fun b_free!133099 () Bool)

(declare-fun b_next!133889 () Bool)

(assert (=> b!4978821 (= b_free!133099 (not b_next!133889))))

(declare-fun tp!1396137 () Bool)

(declare-fun b_and!349511 () Bool)

(assert (=> b!4978821 (= tp!1396137 b_and!349511)))

(declare-fun b_free!133101 () Bool)

(declare-fun b_next!133891 () Bool)

(assert (=> b!4978821 (= b_free!133101 (not b_next!133891))))

(declare-fun tp!1396136 () Bool)

(declare-fun b_and!349513 () Bool)

(assert (=> b!4978821 (= tp!1396136 b_and!349513)))

(declare-fun b!4978832 () Bool)

(declare-fun e!3111963 () Bool)

(assert (=> b!4978832 (= e!3111963 true)))

(declare-fun b!4978831 () Bool)

(declare-fun e!3111962 () Bool)

(assert (=> b!4978831 (= e!3111962 e!3111963)))

(declare-fun b!4978824 () Bool)

(assert (=> b!4978824 e!3111962))

(assert (= b!4978831 b!4978832))

(assert (= b!4978824 b!4978831))

(declare-datatypes ((C!27616 0))(
  ( (C!27617 (val!23174 Int)) )
))
(declare-datatypes ((List!57696 0))(
  ( (Nil!57572) (Cons!57572 (h!64020 C!27616) (t!369708 List!57696)) )
))
(declare-datatypes ((IArray!30465 0))(
  ( (IArray!30466 (innerList!15290 List!57696)) )
))
(declare-datatypes ((List!57697 0))(
  ( (Nil!57573) (Cons!57573 (h!64021 (_ BitVec 16)) (t!369709 List!57697)) )
))
(declare-datatypes ((Regex!13683 0))(
  ( (ElementMatch!13683 (c!849433 C!27616)) (Concat!22443 (regOne!27878 Regex!13683) (regTwo!27878 Regex!13683)) (EmptyExpr!13683) (Star!13683 (reg!14012 Regex!13683)) (EmptyLang!13683) (Union!13683 (regOne!27879 Regex!13683) (regTwo!27879 Regex!13683)) )
))
(declare-datatypes ((String!65673 0))(
  ( (String!65674 (value!270219 String)) )
))
(declare-datatypes ((Conc!15202 0))(
  ( (Node!15202 (left!42073 Conc!15202) (right!42403 Conc!15202) (csize!30634 Int) (cheight!15413 Int)) (Leaf!25252 (xs!18528 IArray!30465) (csize!30635 Int)) (Empty!15202) )
))
(declare-datatypes ((BalanceConc!29834 0))(
  ( (BalanceConc!29835 (c!849434 Conc!15202)) )
))
(declare-datatypes ((TokenValue!8760 0))(
  ( (FloatLiteralValue!17520 (text!61765 List!57697)) (TokenValueExt!8759 (__x!34813 Int)) (Broken!43800 (value!270220 List!57697)) (Object!8883) (End!8760) (Def!8760) (Underscore!8760) (Match!8760) (Else!8760) (Error!8760) (Case!8760) (If!8760) (Extends!8760) (Abstract!8760) (Class!8760) (Val!8760) (DelimiterValue!17520 (del!8820 List!57697)) (KeywordValue!8766 (value!270221 List!57697)) (CommentValue!17520 (value!270222 List!57697)) (WhitespaceValue!17520 (value!270223 List!57697)) (IndentationValue!8760 (value!270224 List!57697)) (String!65675) (Int32!8760) (Broken!43801 (value!270225 List!57697)) (Boolean!8761) (Unit!148601) (OperatorValue!8763 (op!8820 List!57697)) (IdentifierValue!17520 (value!270226 List!57697)) (IdentifierValue!17521 (value!270227 List!57697)) (WhitespaceValue!17521 (value!270228 List!57697)) (True!17520) (False!17520) (Broken!43802 (value!270229 List!57697)) (Broken!43803 (value!270230 List!57697)) (True!17521) (RightBrace!8760) (RightBracket!8760) (Colon!8760) (Null!8760) (Comma!8760) (LeftBracket!8760) (False!17521) (LeftBrace!8760) (ImaginaryLiteralValue!8760 (text!61766 List!57697)) (StringLiteralValue!26280 (value!270231 List!57697)) (EOFValue!8760 (value!270232 List!57697)) (IdentValue!8760 (value!270233 List!57697)) (DelimiterValue!17521 (value!270234 List!57697)) (DedentValue!8760 (value!270235 List!57697)) (NewLineValue!8760 (value!270236 List!57697)) (IntegerValue!26280 (value!270237 (_ BitVec 32)) (text!61767 List!57697)) (IntegerValue!26281 (value!270238 Int) (text!61768 List!57697)) (Times!8760) (Or!8760) (Equal!8760) (Minus!8760) (Broken!43804 (value!270239 List!57697)) (And!8760) (Div!8760) (LessEqual!8760) (Mod!8760) (Concat!22444) (Not!8760) (Plus!8760) (SpaceValue!8760 (value!270240 List!57697)) (IntegerValue!26282 (value!270241 Int) (text!61769 List!57697)) (StringLiteralValue!26281 (text!61770 List!57697)) (FloatLiteralValue!17521 (text!61771 List!57697)) (BytesLiteralValue!8760 (value!270242 List!57697)) (CommentValue!17521 (value!270243 List!57697)) (StringLiteralValue!26282 (value!270244 List!57697)) (ErrorTokenValue!8760 (msg!8821 List!57697)) )
))
(declare-datatypes ((TokenValueInjection!16828 0))(
  ( (TokenValueInjection!16829 (toValue!11429 Int) (toChars!11288 Int)) )
))
(declare-datatypes ((Rule!16700 0))(
  ( (Rule!16701 (regex!8450 Regex!13683) (tag!9314 String!65673) (isSeparator!8450 Bool) (transformation!8450 TokenValueInjection!16828)) )
))
(declare-fun rule!200 () Rule!16700)

(declare-fun lambda!247770 () Int)

(declare-fun order!26453 () Int)

(declare-fun order!26455 () Int)

(declare-fun dynLambda!23318 (Int Int) Int)

(declare-fun dynLambda!23319 (Int Int) Int)

(assert (=> b!4978832 (< (dynLambda!23318 order!26453 (toValue!11429 (transformation!8450 rule!200))) (dynLambda!23319 order!26455 lambda!247770))))

(declare-fun order!26457 () Int)

(declare-fun dynLambda!23320 (Int Int) Int)

(assert (=> b!4978832 (< (dynLambda!23320 order!26457 (toChars!11288 (transformation!8450 rule!200))) (dynLambda!23319 order!26455 lambda!247770))))

(declare-fun b!4978814 () Bool)

(declare-fun res!2125444 () Bool)

(declare-fun e!3111954 () Bool)

(assert (=> b!4978814 (=> (not res!2125444) (not e!3111954))))

(declare-datatypes ((LexerInterface!8042 0))(
  ( (LexerInterfaceExt!8039 (__x!34814 Int)) (Lexer!8040) )
))
(declare-fun thiss!16165 () LexerInterface!8042)

(declare-fun ruleValid!3858 (LexerInterface!8042 Rule!16700) Bool)

(assert (=> b!4978814 (= res!2125444 (ruleValid!3858 thiss!16165 rule!200))))

(declare-fun e!3111956 () Bool)

(declare-datatypes ((tuple2!62480 0))(
  ( (tuple2!62481 (_1!34543 BalanceConc!29834) (_2!34543 BalanceConc!29834)) )
))
(declare-fun lt!2056776 () tuple2!62480)

(declare-fun b!4978815 () Bool)

(declare-fun lt!2056777 () List!57696)

(declare-fun lt!2056775 () List!57696)

(declare-datatypes ((Token!15356 0))(
  ( (Token!15357 (value!270245 TokenValue!8760) (rule!11698 Rule!16700) (size!38189 Int) (originalCharacters!8709 List!57696)) )
))
(declare-datatypes ((tuple2!62482 0))(
  ( (tuple2!62483 (_1!34544 Token!15356) (_2!34544 BalanceConc!29834)) )
))
(declare-datatypes ((Option!14519 0))(
  ( (None!14518) (Some!14518 (v!50515 tuple2!62482)) )
))
(declare-fun isDefined!11428 (Option!14519) Bool)

(declare-fun apply!13937 (TokenValueInjection!16828 BalanceConc!29834) TokenValue!8760)

(declare-fun size!38190 (BalanceConc!29834) Int)

(declare-datatypes ((tuple2!62484 0))(
  ( (tuple2!62485 (_1!34545 Token!15356) (_2!34545 List!57696)) )
))
(declare-datatypes ((Option!14520 0))(
  ( (None!14519) (Some!14519 (v!50516 tuple2!62484)) )
))
(declare-fun isDefined!11429 (Option!14520) Bool)

(declare-fun maxPrefixOneRule!3666 (LexerInterface!8042 Rule!16700 List!57696) Option!14520)

(assert (=> b!4978815 (= e!3111956 (= (isDefined!11428 (Some!14518 (tuple2!62483 (Token!15357 (apply!13937 (transformation!8450 rule!200) (_1!34543 lt!2056776)) rule!200 (size!38190 (_1!34543 lt!2056776)) lt!2056775) (_2!34543 lt!2056776)))) (isDefined!11429 (maxPrefixOneRule!3666 thiss!16165 rule!200 lt!2056777))))))

(declare-datatypes ((Unit!148602 0))(
  ( (Unit!148603) )
))
(declare-fun lt!2056773 () Unit!148602)

(declare-fun ForallOf!1260 (Int BalanceConc!29834) Unit!148602)

(declare-fun seqFromList!6071 (List!57696) BalanceConc!29834)

(assert (=> b!4978815 (= lt!2056773 (ForallOf!1260 lambda!247770 (seqFromList!6071 lt!2056775)))))

(declare-fun list!18446 (BalanceConc!29834) List!57696)

(assert (=> b!4978815 (= lt!2056775 (list!18446 (_1!34543 lt!2056776)))))

(declare-fun lt!2056771 () Unit!148602)

(assert (=> b!4978815 (= lt!2056771 (ForallOf!1260 lambda!247770 (_1!34543 lt!2056776)))))

(declare-fun b!4978816 () Bool)

(declare-fun e!3111953 () Bool)

(declare-fun totalInput!520 () BalanceConc!29834)

(declare-fun tp!1396138 () Bool)

(declare-fun inv!75380 (Conc!15202) Bool)

(assert (=> b!4978816 (= e!3111953 (and (inv!75380 (c!849434 totalInput!520)) tp!1396138))))

(declare-fun b!4978817 () Bool)

(declare-fun e!3111948 () Bool)

(assert (=> b!4978817 (= e!3111954 e!3111948)))

(declare-fun res!2125443 () Bool)

(assert (=> b!4978817 (=> (not res!2125443) (not e!3111948))))

(declare-fun isSuffix!1249 (List!57696 List!57696) Bool)

(assert (=> b!4978817 (= res!2125443 (isSuffix!1249 lt!2056777 (list!18446 totalInput!520)))))

(declare-fun input!1580 () BalanceConc!29834)

(assert (=> b!4978817 (= lt!2056777 (list!18446 input!1580))))

(declare-fun tp!1396140 () Bool)

(declare-fun e!3111952 () Bool)

(declare-fun e!3111955 () Bool)

(declare-fun b!4978818 () Bool)

(declare-fun inv!75376 (String!65673) Bool)

(declare-fun inv!75381 (TokenValueInjection!16828) Bool)

(assert (=> b!4978818 (= e!3111952 (and tp!1396140 (inv!75376 (tag!9314 rule!200)) (inv!75381 (transformation!8450 rule!200)) e!3111955))))

(declare-fun b!4978819 () Bool)

(declare-fun e!3111951 () Bool)

(declare-fun tp!1396139 () Bool)

(assert (=> b!4978819 (= e!3111951 (and (inv!75380 (c!849434 input!1580)) tp!1396139))))

(declare-fun b!4978820 () Bool)

(declare-fun e!3111949 () Bool)

(assert (=> b!4978820 (= e!3111949 (not e!3111956))))

(declare-fun res!2125449 () Bool)

(assert (=> b!4978820 (=> res!2125449 e!3111956)))

(declare-fun semiInverseModEq!3743 (Int Int) Bool)

(assert (=> b!4978820 (= res!2125449 (not (semiInverseModEq!3743 (toChars!11288 (transformation!8450 rule!200)) (toValue!11429 (transformation!8450 rule!200)))))))

(declare-fun lt!2056778 () Unit!148602)

(declare-fun lemmaInv!1373 (TokenValueInjection!16828) Unit!148602)

(assert (=> b!4978820 (= lt!2056778 (lemmaInv!1373 (transformation!8450 rule!200)))))

(declare-fun e!3111950 () Bool)

(assert (=> b!4978820 e!3111950))

(declare-fun res!2125448 () Bool)

(assert (=> b!4978820 (=> res!2125448 e!3111950)))

(declare-datatypes ((tuple2!62486 0))(
  ( (tuple2!62487 (_1!34546 List!57696) (_2!34546 List!57696)) )
))
(declare-fun lt!2056772 () tuple2!62486)

(declare-fun isEmpty!31065 (List!57696) Bool)

(assert (=> b!4978820 (= res!2125448 (isEmpty!31065 (_1!34546 lt!2056772)))))

(declare-fun findLongestMatchInner!1894 (Regex!13683 List!57696 Int List!57696 List!57696 Int) tuple2!62486)

(declare-fun size!38191 (List!57696) Int)

(assert (=> b!4978820 (= lt!2056772 (findLongestMatchInner!1894 (regex!8450 rule!200) Nil!57572 (size!38191 Nil!57572) lt!2056777 lt!2056777 (size!38191 lt!2056777)))))

(declare-fun lt!2056774 () Unit!148602)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1855 (Regex!13683 List!57696) Unit!148602)

(assert (=> b!4978820 (= lt!2056774 (longestMatchIsAcceptedByMatchOrIsEmpty!1855 (regex!8450 rule!200) lt!2056777))))

(declare-fun res!2125445 () Bool)

(assert (=> start!525330 (=> (not res!2125445) (not e!3111954))))

(get-info :version)

(assert (=> start!525330 (= res!2125445 ((_ is Lexer!8040) thiss!16165))))

(assert (=> start!525330 e!3111954))

(assert (=> start!525330 true))

(assert (=> start!525330 e!3111952))

(declare-fun inv!75382 (BalanceConc!29834) Bool)

(assert (=> start!525330 (and (inv!75382 totalInput!520) e!3111953)))

(assert (=> start!525330 (and (inv!75382 input!1580) e!3111951)))

(assert (=> b!4978821 (= e!3111955 (and tp!1396137 tp!1396136))))

(declare-fun b!4978822 () Bool)

(declare-fun matchR!6677 (Regex!13683 List!57696) Bool)

(assert (=> b!4978822 (= e!3111950 (matchR!6677 (regex!8450 rule!200) (_1!34546 lt!2056772)))))

(declare-fun b!4978823 () Bool)

(assert (=> b!4978823 (= e!3111948 e!3111949)))

(declare-fun res!2125447 () Bool)

(assert (=> b!4978823 (=> (not res!2125447) (not e!3111949))))

(declare-fun isEmpty!31066 (BalanceConc!29834) Bool)

(assert (=> b!4978823 (= res!2125447 (not (isEmpty!31066 (_1!34543 lt!2056776))))))

(declare-fun findLongestMatchWithZipperSequenceV2!213 (Regex!13683 BalanceConc!29834 BalanceConc!29834) tuple2!62480)

(assert (=> b!4978823 (= lt!2056776 (findLongestMatchWithZipperSequenceV2!213 (regex!8450 rule!200) input!1580 totalInput!520))))

(declare-fun res!2125446 () Bool)

(assert (=> b!4978824 (=> res!2125446 e!3111956)))

(declare-fun Forall!1800 (Int) Bool)

(assert (=> b!4978824 (= res!2125446 (not (Forall!1800 lambda!247770)))))

(assert (= (and start!525330 res!2125445) b!4978814))

(assert (= (and b!4978814 res!2125444) b!4978817))

(assert (= (and b!4978817 res!2125443) b!4978823))

(assert (= (and b!4978823 res!2125447) b!4978820))

(assert (= (and b!4978820 (not res!2125448)) b!4978822))

(assert (= (and b!4978820 (not res!2125449)) b!4978824))

(assert (= (and b!4978824 (not res!2125446)) b!4978815))

(assert (= b!4978818 b!4978821))

(assert (= start!525330 b!4978818))

(assert (= start!525330 b!4978816))

(assert (= start!525330 b!4978819))

(declare-fun m!6009334 () Bool)

(assert (=> b!4978815 m!6009334))

(declare-fun m!6009336 () Bool)

(assert (=> b!4978815 m!6009336))

(declare-fun m!6009338 () Bool)

(assert (=> b!4978815 m!6009338))

(declare-fun m!6009340 () Bool)

(assert (=> b!4978815 m!6009340))

(assert (=> b!4978815 m!6009334))

(declare-fun m!6009342 () Bool)

(assert (=> b!4978815 m!6009342))

(declare-fun m!6009344 () Bool)

(assert (=> b!4978815 m!6009344))

(declare-fun m!6009346 () Bool)

(assert (=> b!4978815 m!6009346))

(declare-fun m!6009348 () Bool)

(assert (=> b!4978815 m!6009348))

(assert (=> b!4978815 m!6009344))

(declare-fun m!6009350 () Bool)

(assert (=> b!4978815 m!6009350))

(declare-fun m!6009352 () Bool)

(assert (=> b!4978819 m!6009352))

(declare-fun m!6009354 () Bool)

(assert (=> b!4978817 m!6009354))

(assert (=> b!4978817 m!6009354))

(declare-fun m!6009356 () Bool)

(assert (=> b!4978817 m!6009356))

(declare-fun m!6009358 () Bool)

(assert (=> b!4978817 m!6009358))

(declare-fun m!6009360 () Bool)

(assert (=> b!4978814 m!6009360))

(declare-fun m!6009362 () Bool)

(assert (=> b!4978816 m!6009362))

(declare-fun m!6009364 () Bool)

(assert (=> b!4978822 m!6009364))

(declare-fun m!6009366 () Bool)

(assert (=> b!4978824 m!6009366))

(declare-fun m!6009368 () Bool)

(assert (=> start!525330 m!6009368))

(declare-fun m!6009370 () Bool)

(assert (=> start!525330 m!6009370))

(declare-fun m!6009372 () Bool)

(assert (=> b!4978820 m!6009372))

(declare-fun m!6009374 () Bool)

(assert (=> b!4978820 m!6009374))

(declare-fun m!6009376 () Bool)

(assert (=> b!4978820 m!6009376))

(declare-fun m!6009378 () Bool)

(assert (=> b!4978820 m!6009378))

(declare-fun m!6009380 () Bool)

(assert (=> b!4978820 m!6009380))

(declare-fun m!6009382 () Bool)

(assert (=> b!4978820 m!6009382))

(assert (=> b!4978820 m!6009378))

(declare-fun m!6009384 () Bool)

(assert (=> b!4978820 m!6009384))

(assert (=> b!4978820 m!6009380))

(declare-fun m!6009386 () Bool)

(assert (=> b!4978823 m!6009386))

(declare-fun m!6009388 () Bool)

(assert (=> b!4978823 m!6009388))

(declare-fun m!6009390 () Bool)

(assert (=> b!4978818 m!6009390))

(declare-fun m!6009392 () Bool)

(assert (=> b!4978818 m!6009392))

(check-sat (not b_next!133891) (not b!4978814) (not start!525330) (not b!4978824) (not b_next!133889) (not b!4978822) (not b!4978818) b_and!349511 (not b!4978819) (not b!4978823) (not b!4978820) (not b!4978815) (not b!4978816) b_and!349513 (not b!4978817))
(check-sat b_and!349513 b_and!349511 (not b_next!133891) (not b_next!133889))
(get-model)

(declare-fun b!4978888 () Bool)

(declare-fun res!2125495 () Bool)

(declare-fun e!3111996 () Bool)

(assert (=> b!4978888 (=> res!2125495 e!3111996)))

(declare-fun e!3111992 () Bool)

(assert (=> b!4978888 (= res!2125495 e!3111992)))

(declare-fun res!2125500 () Bool)

(assert (=> b!4978888 (=> (not res!2125500) (not e!3111992))))

(declare-fun lt!2056800 () Bool)

(assert (=> b!4978888 (= res!2125500 lt!2056800)))

(declare-fun d!1603110 () Bool)

(declare-fun e!3111994 () Bool)

(assert (=> d!1603110 e!3111994))

(declare-fun c!849443 () Bool)

(assert (=> d!1603110 (= c!849443 ((_ is EmptyExpr!13683) (regex!8450 rule!200)))))

(declare-fun e!3111998 () Bool)

(assert (=> d!1603110 (= lt!2056800 e!3111998)))

(declare-fun c!849445 () Bool)

(assert (=> d!1603110 (= c!849445 (isEmpty!31065 (_1!34546 lt!2056772)))))

(declare-fun validRegex!5984 (Regex!13683) Bool)

(assert (=> d!1603110 (validRegex!5984 (regex!8450 rule!200))))

(assert (=> d!1603110 (= (matchR!6677 (regex!8450 rule!200) (_1!34546 lt!2056772)) lt!2056800)))

(declare-fun b!4978889 () Bool)

(declare-fun nullable!4635 (Regex!13683) Bool)

(assert (=> b!4978889 (= e!3111998 (nullable!4635 (regex!8450 rule!200)))))

(declare-fun b!4978890 () Bool)

(declare-fun res!2125499 () Bool)

(assert (=> b!4978890 (=> res!2125499 e!3111996)))

(assert (=> b!4978890 (= res!2125499 (not ((_ is ElementMatch!13683) (regex!8450 rule!200))))))

(declare-fun e!3111993 () Bool)

(assert (=> b!4978890 (= e!3111993 e!3111996)))

(declare-fun b!4978891 () Bool)

(declare-fun res!2125498 () Bool)

(declare-fun e!3111997 () Bool)

(assert (=> b!4978891 (=> res!2125498 e!3111997)))

(declare-fun tail!9817 (List!57696) List!57696)

(assert (=> b!4978891 (= res!2125498 (not (isEmpty!31065 (tail!9817 (_1!34546 lt!2056772)))))))

(declare-fun b!4978892 () Bool)

(declare-fun e!3111995 () Bool)

(assert (=> b!4978892 (= e!3111996 e!3111995)))

(declare-fun res!2125497 () Bool)

(assert (=> b!4978892 (=> (not res!2125497) (not e!3111995))))

(assert (=> b!4978892 (= res!2125497 (not lt!2056800))))

(declare-fun b!4978893 () Bool)

(assert (=> b!4978893 (= e!3111994 e!3111993)))

(declare-fun c!849444 () Bool)

(assert (=> b!4978893 (= c!849444 ((_ is EmptyLang!13683) (regex!8450 rule!200)))))

(declare-fun bm!347189 () Bool)

(declare-fun call!347194 () Bool)

(assert (=> bm!347189 (= call!347194 (isEmpty!31065 (_1!34546 lt!2056772)))))

(declare-fun b!4978894 () Bool)

(assert (=> b!4978894 (= e!3111995 e!3111997)))

(declare-fun res!2125494 () Bool)

(assert (=> b!4978894 (=> res!2125494 e!3111997)))

(assert (=> b!4978894 (= res!2125494 call!347194)))

(declare-fun b!4978895 () Bool)

(declare-fun res!2125493 () Bool)

(assert (=> b!4978895 (=> (not res!2125493) (not e!3111992))))

(assert (=> b!4978895 (= res!2125493 (isEmpty!31065 (tail!9817 (_1!34546 lt!2056772))))))

(declare-fun b!4978896 () Bool)

(declare-fun head!10684 (List!57696) C!27616)

(assert (=> b!4978896 (= e!3111997 (not (= (head!10684 (_1!34546 lt!2056772)) (c!849433 (regex!8450 rule!200)))))))

(declare-fun b!4978897 () Bool)

(assert (=> b!4978897 (= e!3111993 (not lt!2056800))))

(declare-fun b!4978898 () Bool)

(assert (=> b!4978898 (= e!3111994 (= lt!2056800 call!347194))))

(declare-fun b!4978899 () Bool)

(assert (=> b!4978899 (= e!3111992 (= (head!10684 (_1!34546 lt!2056772)) (c!849433 (regex!8450 rule!200))))))

(declare-fun b!4978900 () Bool)

(declare-fun res!2125496 () Bool)

(assert (=> b!4978900 (=> (not res!2125496) (not e!3111992))))

(assert (=> b!4978900 (= res!2125496 (not call!347194))))

(declare-fun b!4978901 () Bool)

(declare-fun derivativeStep!3935 (Regex!13683 C!27616) Regex!13683)

(assert (=> b!4978901 (= e!3111998 (matchR!6677 (derivativeStep!3935 (regex!8450 rule!200) (head!10684 (_1!34546 lt!2056772))) (tail!9817 (_1!34546 lt!2056772))))))

(assert (= (and d!1603110 c!849445) b!4978889))

(assert (= (and d!1603110 (not c!849445)) b!4978901))

(assert (= (and d!1603110 c!849443) b!4978898))

(assert (= (and d!1603110 (not c!849443)) b!4978893))

(assert (= (and b!4978893 c!849444) b!4978897))

(assert (= (and b!4978893 (not c!849444)) b!4978890))

(assert (= (and b!4978890 (not res!2125499)) b!4978888))

(assert (= (and b!4978888 res!2125500) b!4978900))

(assert (= (and b!4978900 res!2125496) b!4978895))

(assert (= (and b!4978895 res!2125493) b!4978899))

(assert (= (and b!4978888 (not res!2125495)) b!4978892))

(assert (= (and b!4978892 res!2125497) b!4978894))

(assert (= (and b!4978894 (not res!2125494)) b!4978891))

(assert (= (and b!4978891 (not res!2125498)) b!4978896))

(assert (= (or b!4978898 b!4978894 b!4978900) bm!347189))

(assert (=> d!1603110 m!6009376))

(declare-fun m!6009424 () Bool)

(assert (=> d!1603110 m!6009424))

(declare-fun m!6009426 () Bool)

(assert (=> b!4978896 m!6009426))

(declare-fun m!6009428 () Bool)

(assert (=> b!4978889 m!6009428))

(assert (=> b!4978899 m!6009426))

(assert (=> b!4978901 m!6009426))

(assert (=> b!4978901 m!6009426))

(declare-fun m!6009430 () Bool)

(assert (=> b!4978901 m!6009430))

(declare-fun m!6009432 () Bool)

(assert (=> b!4978901 m!6009432))

(assert (=> b!4978901 m!6009430))

(assert (=> b!4978901 m!6009432))

(declare-fun m!6009434 () Bool)

(assert (=> b!4978901 m!6009434))

(assert (=> b!4978895 m!6009432))

(assert (=> b!4978895 m!6009432))

(declare-fun m!6009436 () Bool)

(assert (=> b!4978895 m!6009436))

(assert (=> bm!347189 m!6009376))

(assert (=> b!4978891 m!6009432))

(assert (=> b!4978891 m!6009432))

(assert (=> b!4978891 m!6009436))

(assert (=> b!4978822 d!1603110))

(declare-fun d!1603120 () Bool)

(assert (=> d!1603120 (= (inv!75376 (tag!9314 rule!200)) (= (mod (str.len (value!270219 (tag!9314 rule!200))) 2) 0))))

(assert (=> b!4978818 d!1603120))

(declare-fun d!1603122 () Bool)

(declare-fun res!2125510 () Bool)

(declare-fun e!3112008 () Bool)

(assert (=> d!1603122 (=> (not res!2125510) (not e!3112008))))

(assert (=> d!1603122 (= res!2125510 (semiInverseModEq!3743 (toChars!11288 (transformation!8450 rule!200)) (toValue!11429 (transformation!8450 rule!200))))))

(assert (=> d!1603122 (= (inv!75381 (transformation!8450 rule!200)) e!3112008)))

(declare-fun b!4978915 () Bool)

(declare-fun equivClasses!3565 (Int Int) Bool)

(assert (=> b!4978915 (= e!3112008 (equivClasses!3565 (toChars!11288 (transformation!8450 rule!200)) (toValue!11429 (transformation!8450 rule!200))))))

(assert (= (and d!1603122 res!2125510) b!4978915))

(assert (=> d!1603122 m!6009384))

(declare-fun m!6009488 () Bool)

(assert (=> b!4978915 m!6009488))

(assert (=> b!4978818 d!1603122))

(declare-fun bm!347233 () Bool)

(declare-fun call!347245 () Unit!148602)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1221 (List!57696 List!57696 List!57696) Unit!148602)

(assert (=> bm!347233 (= call!347245 (lemmaIsPrefixSameLengthThenSameList!1221 lt!2056777 Nil!57572 lt!2056777))))

(declare-fun b!4979095 () Bool)

(declare-fun e!3112113 () Unit!148602)

(declare-fun Unit!148608 () Unit!148602)

(assert (=> b!4979095 (= e!3112113 Unit!148608)))

(declare-fun lt!2056970 () Unit!148602)

(declare-fun call!347244 () Unit!148602)

(assert (=> b!4979095 (= lt!2056970 call!347244)))

(declare-fun call!347242 () Bool)

(assert (=> b!4979095 call!347242))

(declare-fun lt!2056982 () Unit!148602)

(assert (=> b!4979095 (= lt!2056982 lt!2056970)))

(declare-fun lt!2056983 () Unit!148602)

(assert (=> b!4979095 (= lt!2056983 call!347245)))

(assert (=> b!4979095 (= lt!2056777 Nil!57572)))

(declare-fun lt!2056967 () Unit!148602)

(assert (=> b!4979095 (= lt!2056967 lt!2056983)))

(assert (=> b!4979095 false))

(declare-fun d!1603134 () Bool)

(declare-fun e!3112109 () Bool)

(assert (=> d!1603134 e!3112109))

(declare-fun res!2125559 () Bool)

(assert (=> d!1603134 (=> (not res!2125559) (not e!3112109))))

(declare-fun lt!2056979 () tuple2!62486)

(declare-fun ++!12547 (List!57696 List!57696) List!57696)

(assert (=> d!1603134 (= res!2125559 (= (++!12547 (_1!34546 lt!2056979) (_2!34546 lt!2056979)) lt!2056777))))

(declare-fun e!3112114 () tuple2!62486)

(assert (=> d!1603134 (= lt!2056979 e!3112114)))

(declare-fun c!849497 () Bool)

(declare-fun lostCause!1145 (Regex!13683) Bool)

(assert (=> d!1603134 (= c!849497 (lostCause!1145 (regex!8450 rule!200)))))

(declare-fun lt!2056990 () Unit!148602)

(declare-fun Unit!148609 () Unit!148602)

(assert (=> d!1603134 (= lt!2056990 Unit!148609)))

(declare-fun getSuffix!3101 (List!57696 List!57696) List!57696)

(assert (=> d!1603134 (= (getSuffix!3101 lt!2056777 Nil!57572) lt!2056777)))

(declare-fun lt!2056985 () Unit!148602)

(declare-fun lt!2056972 () Unit!148602)

(assert (=> d!1603134 (= lt!2056985 lt!2056972)))

(declare-fun lt!2056963 () List!57696)

(assert (=> d!1603134 (= lt!2056777 lt!2056963)))

(declare-fun lemmaSamePrefixThenSameSuffix!2513 (List!57696 List!57696 List!57696 List!57696 List!57696) Unit!148602)

(assert (=> d!1603134 (= lt!2056972 (lemmaSamePrefixThenSameSuffix!2513 Nil!57572 lt!2056777 Nil!57572 lt!2056963 lt!2056777))))

(assert (=> d!1603134 (= lt!2056963 (getSuffix!3101 lt!2056777 Nil!57572))))

(declare-fun lt!2056966 () Unit!148602)

(declare-fun lt!2056987 () Unit!148602)

(assert (=> d!1603134 (= lt!2056966 lt!2056987)))

(declare-fun isPrefix!5261 (List!57696 List!57696) Bool)

(assert (=> d!1603134 (isPrefix!5261 Nil!57572 (++!12547 Nil!57572 lt!2056777))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3359 (List!57696 List!57696) Unit!148602)

(assert (=> d!1603134 (= lt!2056987 (lemmaConcatTwoListThenFirstIsPrefix!3359 Nil!57572 lt!2056777))))

(assert (=> d!1603134 (validRegex!5984 (regex!8450 rule!200))))

(assert (=> d!1603134 (= (findLongestMatchInner!1894 (regex!8450 rule!200) Nil!57572 (size!38191 Nil!57572) lt!2056777 lt!2056777 (size!38191 lt!2056777)) lt!2056979)))

(declare-fun bm!347234 () Bool)

(declare-fun call!347238 () List!57696)

(assert (=> bm!347234 (= call!347238 (tail!9817 lt!2056777))))

(declare-fun b!4979096 () Bool)

(declare-fun e!3112111 () tuple2!62486)

(declare-fun lt!2056965 () tuple2!62486)

(assert (=> b!4979096 (= e!3112111 lt!2056965)))

(declare-fun b!4979097 () Bool)

(declare-fun e!3112107 () tuple2!62486)

(assert (=> b!4979097 (= e!3112114 e!3112107)))

(declare-fun c!849498 () Bool)

(assert (=> b!4979097 (= c!849498 (= (size!38191 Nil!57572) (size!38191 lt!2056777)))))

(declare-fun bm!347235 () Bool)

(declare-fun call!347240 () Regex!13683)

(declare-fun call!347241 () C!27616)

(assert (=> bm!347235 (= call!347240 (derivativeStep!3935 (regex!8450 rule!200) call!347241))))

(declare-fun bm!347236 () Bool)

(declare-fun lemmaIsPrefixRefl!3585 (List!57696 List!57696) Unit!148602)

(assert (=> bm!347236 (= call!347244 (lemmaIsPrefixRefl!3585 lt!2056777 lt!2056777))))

(declare-fun b!4979098 () Bool)

(declare-fun Unit!148610 () Unit!148602)

(assert (=> b!4979098 (= e!3112113 Unit!148610)))

(declare-fun b!4979099 () Bool)

(declare-fun e!3112110 () tuple2!62486)

(assert (=> b!4979099 (= e!3112110 (tuple2!62487 Nil!57572 lt!2056777))))

(declare-fun bm!347237 () Bool)

(declare-fun call!347243 () tuple2!62486)

(declare-fun lt!2056968 () List!57696)

(assert (=> bm!347237 (= call!347243 (findLongestMatchInner!1894 call!347240 lt!2056968 (+ (size!38191 Nil!57572) 1) call!347238 lt!2056777 (size!38191 lt!2056777)))))

(declare-fun b!4979100 () Bool)

(assert (=> b!4979100 (= e!3112111 (tuple2!62487 Nil!57572 lt!2056777))))

(declare-fun bm!347238 () Bool)

(assert (=> bm!347238 (= call!347241 (head!10684 lt!2056777))))

(declare-fun b!4979101 () Bool)

(declare-fun e!3112108 () tuple2!62486)

(assert (=> b!4979101 (= e!3112108 e!3112111)))

(assert (=> b!4979101 (= lt!2056965 call!347243)))

(declare-fun c!849494 () Bool)

(assert (=> b!4979101 (= c!849494 (isEmpty!31065 (_1!34546 lt!2056965)))))

(declare-fun b!4979102 () Bool)

(declare-fun e!3112112 () Bool)

(assert (=> b!4979102 (= e!3112109 e!3112112)))

(declare-fun res!2125558 () Bool)

(assert (=> b!4979102 (=> res!2125558 e!3112112)))

(assert (=> b!4979102 (= res!2125558 (isEmpty!31065 (_1!34546 lt!2056979)))))

(declare-fun b!4979103 () Bool)

(declare-fun c!849496 () Bool)

(declare-fun call!347239 () Bool)

(assert (=> b!4979103 (= c!849496 call!347239)))

(declare-fun lt!2056964 () Unit!148602)

(declare-fun lt!2056973 () Unit!148602)

(assert (=> b!4979103 (= lt!2056964 lt!2056973)))

(declare-fun lt!2056986 () C!27616)

(declare-fun lt!2056977 () List!57696)

(assert (=> b!4979103 (= (++!12547 (++!12547 Nil!57572 (Cons!57572 lt!2056986 Nil!57572)) lt!2056977) lt!2056777)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1458 (List!57696 C!27616 List!57696 List!57696) Unit!148602)

(assert (=> b!4979103 (= lt!2056973 (lemmaMoveElementToOtherListKeepsConcatEq!1458 Nil!57572 lt!2056986 lt!2056977 lt!2056777))))

(assert (=> b!4979103 (= lt!2056977 (tail!9817 lt!2056777))))

(assert (=> b!4979103 (= lt!2056986 (head!10684 lt!2056777))))

(declare-fun lt!2056984 () Unit!148602)

(declare-fun lt!2056971 () Unit!148602)

(assert (=> b!4979103 (= lt!2056984 lt!2056971)))

(assert (=> b!4979103 (isPrefix!5261 (++!12547 Nil!57572 (Cons!57572 (head!10684 (getSuffix!3101 lt!2056777 Nil!57572)) Nil!57572)) lt!2056777)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!848 (List!57696 List!57696) Unit!148602)

(assert (=> b!4979103 (= lt!2056971 (lemmaAddHeadSuffixToPrefixStillPrefix!848 Nil!57572 lt!2056777))))

(declare-fun lt!2056981 () Unit!148602)

(declare-fun lt!2056974 () Unit!148602)

(assert (=> b!4979103 (= lt!2056981 lt!2056974)))

(assert (=> b!4979103 (= lt!2056974 (lemmaAddHeadSuffixToPrefixStillPrefix!848 Nil!57572 lt!2056777))))

(assert (=> b!4979103 (= lt!2056968 (++!12547 Nil!57572 (Cons!57572 (head!10684 lt!2056777) Nil!57572)))))

(declare-fun lt!2056978 () Unit!148602)

(assert (=> b!4979103 (= lt!2056978 e!3112113)))

(declare-fun c!849499 () Bool)

(assert (=> b!4979103 (= c!849499 (= (size!38191 Nil!57572) (size!38191 lt!2056777)))))

(declare-fun lt!2056975 () Unit!148602)

(declare-fun lt!2056988 () Unit!148602)

(assert (=> b!4979103 (= lt!2056975 lt!2056988)))

(assert (=> b!4979103 (<= (size!38191 Nil!57572) (size!38191 lt!2056777))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!774 (List!57696 List!57696) Unit!148602)

(assert (=> b!4979103 (= lt!2056988 (lemmaIsPrefixThenSmallerEqSize!774 Nil!57572 lt!2056777))))

(assert (=> b!4979103 (= e!3112107 e!3112108)))

(declare-fun b!4979104 () Bool)

(assert (=> b!4979104 (= e!3112108 call!347243)))

(declare-fun b!4979105 () Bool)

(assert (=> b!4979105 (= e!3112110 (tuple2!62487 Nil!57572 Nil!57572))))

(declare-fun b!4979106 () Bool)

(declare-fun c!849495 () Bool)

(assert (=> b!4979106 (= c!849495 call!347239)))

(declare-fun lt!2056969 () Unit!148602)

(declare-fun lt!2056980 () Unit!148602)

(assert (=> b!4979106 (= lt!2056969 lt!2056980)))

(assert (=> b!4979106 (= lt!2056777 Nil!57572)))

(assert (=> b!4979106 (= lt!2056980 call!347245)))

(declare-fun lt!2056989 () Unit!148602)

(declare-fun lt!2056976 () Unit!148602)

(assert (=> b!4979106 (= lt!2056989 lt!2056976)))

(assert (=> b!4979106 call!347242))

(assert (=> b!4979106 (= lt!2056976 call!347244)))

(assert (=> b!4979106 (= e!3112107 e!3112110)))

(declare-fun bm!347239 () Bool)

(assert (=> bm!347239 (= call!347239 (nullable!4635 (regex!8450 rule!200)))))

(declare-fun bm!347240 () Bool)

(assert (=> bm!347240 (= call!347242 (isPrefix!5261 lt!2056777 lt!2056777))))

(declare-fun b!4979107 () Bool)

(assert (=> b!4979107 (= e!3112112 (>= (size!38191 (_1!34546 lt!2056979)) (size!38191 Nil!57572)))))

(declare-fun b!4979108 () Bool)

(assert (=> b!4979108 (= e!3112114 (tuple2!62487 Nil!57572 lt!2056777))))

(assert (= (and d!1603134 c!849497) b!4979108))

(assert (= (and d!1603134 (not c!849497)) b!4979097))

(assert (= (and b!4979097 c!849498) b!4979106))

(assert (= (and b!4979097 (not c!849498)) b!4979103))

(assert (= (and b!4979106 c!849495) b!4979105))

(assert (= (and b!4979106 (not c!849495)) b!4979099))

(assert (= (and b!4979103 c!849499) b!4979095))

(assert (= (and b!4979103 (not c!849499)) b!4979098))

(assert (= (and b!4979103 c!849496) b!4979101))

(assert (= (and b!4979103 (not c!849496)) b!4979104))

(assert (= (and b!4979101 c!849494) b!4979100))

(assert (= (and b!4979101 (not c!849494)) b!4979096))

(assert (= (or b!4979101 b!4979104) bm!347238))

(assert (= (or b!4979101 b!4979104) bm!347234))

(assert (= (or b!4979101 b!4979104) bm!347235))

(assert (= (or b!4979101 b!4979104) bm!347237))

(assert (= (or b!4979106 b!4979095) bm!347240))

(assert (= (or b!4979106 b!4979095) bm!347233))

(assert (= (or b!4979106 b!4979095) bm!347236))

(assert (= (or b!4979106 b!4979103) bm!347239))

(assert (= (and d!1603134 res!2125559) b!4979102))

(assert (= (and b!4979102 (not res!2125558)) b!4979107))

(declare-fun m!6009614 () Bool)

(assert (=> b!4979103 m!6009614))

(declare-fun m!6009616 () Bool)

(assert (=> b!4979103 m!6009616))

(declare-fun m!6009618 () Bool)

(assert (=> b!4979103 m!6009618))

(declare-fun m!6009620 () Bool)

(assert (=> b!4979103 m!6009620))

(declare-fun m!6009622 () Bool)

(assert (=> b!4979103 m!6009622))

(declare-fun m!6009624 () Bool)

(assert (=> b!4979103 m!6009624))

(declare-fun m!6009626 () Bool)

(assert (=> b!4979103 m!6009626))

(declare-fun m!6009628 () Bool)

(assert (=> b!4979103 m!6009628))

(declare-fun m!6009630 () Bool)

(assert (=> b!4979103 m!6009630))

(declare-fun m!6009632 () Bool)

(assert (=> b!4979103 m!6009632))

(assert (=> b!4979103 m!6009624))

(declare-fun m!6009634 () Bool)

(assert (=> b!4979103 m!6009634))

(assert (=> b!4979103 m!6009618))

(declare-fun m!6009636 () Bool)

(assert (=> b!4979103 m!6009636))

(assert (=> b!4979103 m!6009620))

(assert (=> b!4979103 m!6009380))

(assert (=> b!4979103 m!6009378))

(declare-fun m!6009638 () Bool)

(assert (=> bm!347235 m!6009638))

(assert (=> bm!347234 m!6009614))

(declare-fun m!6009640 () Bool)

(assert (=> b!4979107 m!6009640))

(assert (=> b!4979107 m!6009378))

(declare-fun m!6009642 () Bool)

(assert (=> bm!347233 m!6009642))

(assert (=> bm!347238 m!6009630))

(declare-fun m!6009644 () Bool)

(assert (=> d!1603134 m!6009644))

(declare-fun m!6009646 () Bool)

(assert (=> d!1603134 m!6009646))

(assert (=> d!1603134 m!6009618))

(declare-fun m!6009648 () Bool)

(assert (=> d!1603134 m!6009648))

(declare-fun m!6009650 () Bool)

(assert (=> d!1603134 m!6009650))

(assert (=> d!1603134 m!6009650))

(declare-fun m!6009652 () Bool)

(assert (=> d!1603134 m!6009652))

(declare-fun m!6009654 () Bool)

(assert (=> d!1603134 m!6009654))

(assert (=> d!1603134 m!6009424))

(assert (=> bm!347237 m!6009380))

(declare-fun m!6009656 () Bool)

(assert (=> bm!347237 m!6009656))

(declare-fun m!6009658 () Bool)

(assert (=> b!4979101 m!6009658))

(declare-fun m!6009660 () Bool)

(assert (=> bm!347240 m!6009660))

(declare-fun m!6009662 () Bool)

(assert (=> b!4979102 m!6009662))

(assert (=> bm!347239 m!6009428))

(declare-fun m!6009664 () Bool)

(assert (=> bm!347236 m!6009664))

(assert (=> b!4978820 d!1603134))

(declare-fun d!1603170 () Bool)

(assert (=> d!1603170 (= (isEmpty!31065 (_1!34546 lt!2056772)) ((_ is Nil!57572) (_1!34546 lt!2056772)))))

(assert (=> b!4978820 d!1603170))

(declare-fun d!1603172 () Bool)

(declare-fun lt!2056993 () Int)

(assert (=> d!1603172 (>= lt!2056993 0)))

(declare-fun e!3112117 () Int)

(assert (=> d!1603172 (= lt!2056993 e!3112117)))

(declare-fun c!849502 () Bool)

(assert (=> d!1603172 (= c!849502 ((_ is Nil!57572) Nil!57572))))

(assert (=> d!1603172 (= (size!38191 Nil!57572) lt!2056993)))

(declare-fun b!4979113 () Bool)

(assert (=> b!4979113 (= e!3112117 0)))

(declare-fun b!4979114 () Bool)

(assert (=> b!4979114 (= e!3112117 (+ 1 (size!38191 (t!369708 Nil!57572))))))

(assert (= (and d!1603172 c!849502) b!4979113))

(assert (= (and d!1603172 (not c!849502)) b!4979114))

(declare-fun m!6009666 () Bool)

(assert (=> b!4979114 m!6009666))

(assert (=> b!4978820 d!1603172))

(declare-fun d!1603174 () Bool)

(declare-fun e!3112120 () Bool)

(assert (=> d!1603174 e!3112120))

(declare-fun res!2125562 () Bool)

(assert (=> d!1603174 (=> (not res!2125562) (not e!3112120))))

(assert (=> d!1603174 (= res!2125562 (semiInverseModEq!3743 (toChars!11288 (transformation!8450 rule!200)) (toValue!11429 (transformation!8450 rule!200))))))

(declare-fun Unit!148611 () Unit!148602)

(assert (=> d!1603174 (= (lemmaInv!1373 (transformation!8450 rule!200)) Unit!148611)))

(declare-fun b!4979117 () Bool)

(assert (=> b!4979117 (= e!3112120 (equivClasses!3565 (toChars!11288 (transformation!8450 rule!200)) (toValue!11429 (transformation!8450 rule!200))))))

(assert (= (and d!1603174 res!2125562) b!4979117))

(assert (=> d!1603174 m!6009384))

(assert (=> b!4979117 m!6009488))

(assert (=> b!4978820 d!1603174))

(declare-fun d!1603176 () Bool)

(declare-fun lt!2056994 () Int)

(assert (=> d!1603176 (>= lt!2056994 0)))

(declare-fun e!3112121 () Int)

(assert (=> d!1603176 (= lt!2056994 e!3112121)))

(declare-fun c!849503 () Bool)

(assert (=> d!1603176 (= c!849503 ((_ is Nil!57572) lt!2056777))))

(assert (=> d!1603176 (= (size!38191 lt!2056777) lt!2056994)))

(declare-fun b!4979118 () Bool)

(assert (=> b!4979118 (= e!3112121 0)))

(declare-fun b!4979119 () Bool)

(assert (=> b!4979119 (= e!3112121 (+ 1 (size!38191 (t!369708 lt!2056777))))))

(assert (= (and d!1603176 c!849503) b!4979118))

(assert (= (and d!1603176 (not c!849503)) b!4979119))

(declare-fun m!6009668 () Bool)

(assert (=> b!4979119 m!6009668))

(assert (=> b!4978820 d!1603176))

(declare-fun d!1603178 () Bool)

(declare-fun e!3112124 () Bool)

(assert (=> d!1603178 e!3112124))

(declare-fun res!2125565 () Bool)

(assert (=> d!1603178 (=> res!2125565 e!3112124)))

(assert (=> d!1603178 (= res!2125565 (isEmpty!31065 (_1!34546 (findLongestMatchInner!1894 (regex!8450 rule!200) Nil!57572 (size!38191 Nil!57572) lt!2056777 lt!2056777 (size!38191 lt!2056777)))))))

(declare-fun lt!2056997 () Unit!148602)

(declare-fun choose!36749 (Regex!13683 List!57696) Unit!148602)

(assert (=> d!1603178 (= lt!2056997 (choose!36749 (regex!8450 rule!200) lt!2056777))))

(assert (=> d!1603178 (validRegex!5984 (regex!8450 rule!200))))

(assert (=> d!1603178 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1855 (regex!8450 rule!200) lt!2056777) lt!2056997)))

(declare-fun b!4979122 () Bool)

(assert (=> b!4979122 (= e!3112124 (matchR!6677 (regex!8450 rule!200) (_1!34546 (findLongestMatchInner!1894 (regex!8450 rule!200) Nil!57572 (size!38191 Nil!57572) lt!2056777 lt!2056777 (size!38191 lt!2056777)))))))

(assert (= (and d!1603178 (not res!2125565)) b!4979122))

(assert (=> d!1603178 m!6009378))

(assert (=> d!1603178 m!6009380))

(assert (=> d!1603178 m!6009382))

(assert (=> d!1603178 m!6009424))

(declare-fun m!6009670 () Bool)

(assert (=> d!1603178 m!6009670))

(assert (=> d!1603178 m!6009380))

(declare-fun m!6009672 () Bool)

(assert (=> d!1603178 m!6009672))

(assert (=> d!1603178 m!6009378))

(assert (=> b!4979122 m!6009378))

(assert (=> b!4979122 m!6009380))

(assert (=> b!4979122 m!6009378))

(assert (=> b!4979122 m!6009380))

(assert (=> b!4979122 m!6009382))

(declare-fun m!6009674 () Bool)

(assert (=> b!4979122 m!6009674))

(assert (=> b!4978820 d!1603178))

(declare-fun bs!1184077 () Bool)

(declare-fun d!1603180 () Bool)

(assert (= bs!1184077 (and d!1603180 b!4978824)))

(declare-fun lambda!247776 () Int)

(assert (=> bs!1184077 (= lambda!247776 lambda!247770)))

(assert (=> d!1603180 true))

(assert (=> d!1603180 (< (dynLambda!23320 order!26457 (toChars!11288 (transformation!8450 rule!200))) (dynLambda!23319 order!26455 lambda!247776))))

(assert (=> d!1603180 true))

(assert (=> d!1603180 (< (dynLambda!23318 order!26453 (toValue!11429 (transformation!8450 rule!200))) (dynLambda!23319 order!26455 lambda!247776))))

(assert (=> d!1603180 (= (semiInverseModEq!3743 (toChars!11288 (transformation!8450 rule!200)) (toValue!11429 (transformation!8450 rule!200))) (Forall!1800 lambda!247776))))

(declare-fun bs!1184078 () Bool)

(assert (= bs!1184078 d!1603180))

(declare-fun m!6009676 () Bool)

(assert (=> bs!1184078 m!6009676))

(assert (=> b!4978820 d!1603180))

(declare-fun d!1603182 () Bool)

(declare-fun c!849506 () Bool)

(assert (=> d!1603182 (= c!849506 ((_ is Node!15202) (c!849434 input!1580)))))

(declare-fun e!3112129 () Bool)

(assert (=> d!1603182 (= (inv!75380 (c!849434 input!1580)) e!3112129)))

(declare-fun b!4979133 () Bool)

(declare-fun inv!75386 (Conc!15202) Bool)

(assert (=> b!4979133 (= e!3112129 (inv!75386 (c!849434 input!1580)))))

(declare-fun b!4979134 () Bool)

(declare-fun e!3112130 () Bool)

(assert (=> b!4979134 (= e!3112129 e!3112130)))

(declare-fun res!2125568 () Bool)

(assert (=> b!4979134 (= res!2125568 (not ((_ is Leaf!25252) (c!849434 input!1580))))))

(assert (=> b!4979134 (=> res!2125568 e!3112130)))

(declare-fun b!4979135 () Bool)

(declare-fun inv!75387 (Conc!15202) Bool)

(assert (=> b!4979135 (= e!3112130 (inv!75387 (c!849434 input!1580)))))

(assert (= (and d!1603182 c!849506) b!4979133))

(assert (= (and d!1603182 (not c!849506)) b!4979134))

(assert (= (and b!4979134 (not res!2125568)) b!4979135))

(declare-fun m!6009678 () Bool)

(assert (=> b!4979133 m!6009678))

(declare-fun m!6009680 () Bool)

(assert (=> b!4979135 m!6009680))

(assert (=> b!4978819 d!1603182))

(declare-fun d!1603184 () Bool)

(declare-fun c!849507 () Bool)

(assert (=> d!1603184 (= c!849507 ((_ is Node!15202) (c!849434 totalInput!520)))))

(declare-fun e!3112131 () Bool)

(assert (=> d!1603184 (= (inv!75380 (c!849434 totalInput!520)) e!3112131)))

(declare-fun b!4979136 () Bool)

(assert (=> b!4979136 (= e!3112131 (inv!75386 (c!849434 totalInput!520)))))

(declare-fun b!4979137 () Bool)

(declare-fun e!3112132 () Bool)

(assert (=> b!4979137 (= e!3112131 e!3112132)))

(declare-fun res!2125569 () Bool)

(assert (=> b!4979137 (= res!2125569 (not ((_ is Leaf!25252) (c!849434 totalInput!520))))))

(assert (=> b!4979137 (=> res!2125569 e!3112132)))

(declare-fun b!4979138 () Bool)

(assert (=> b!4979138 (= e!3112132 (inv!75387 (c!849434 totalInput!520)))))

(assert (= (and d!1603184 c!849507) b!4979136))

(assert (= (and d!1603184 (not c!849507)) b!4979137))

(assert (= (and b!4979137 (not res!2125569)) b!4979138))

(declare-fun m!6009682 () Bool)

(assert (=> b!4979136 m!6009682))

(declare-fun m!6009684 () Bool)

(assert (=> b!4979138 m!6009684))

(assert (=> b!4978816 d!1603184))

(declare-fun d!1603186 () Bool)

(declare-fun list!18448 (Conc!15202) List!57696)

(assert (=> d!1603186 (= (list!18446 (_1!34543 lt!2056776)) (list!18448 (c!849434 (_1!34543 lt!2056776))))))

(declare-fun bs!1184079 () Bool)

(assert (= bs!1184079 d!1603186))

(declare-fun m!6009686 () Bool)

(assert (=> bs!1184079 m!6009686))

(assert (=> b!4978815 d!1603186))

(declare-fun d!1603188 () Bool)

(declare-fun dynLambda!23324 (Int BalanceConc!29834) Bool)

(assert (=> d!1603188 (dynLambda!23324 lambda!247770 (seqFromList!6071 lt!2056775))))

(declare-fun lt!2057000 () Unit!148602)

(declare-fun choose!36750 (Int BalanceConc!29834) Unit!148602)

(assert (=> d!1603188 (= lt!2057000 (choose!36750 lambda!247770 (seqFromList!6071 lt!2056775)))))

(assert (=> d!1603188 (Forall!1800 lambda!247770)))

(assert (=> d!1603188 (= (ForallOf!1260 lambda!247770 (seqFromList!6071 lt!2056775)) lt!2057000)))

(declare-fun b_lambda!197617 () Bool)

(assert (=> (not b_lambda!197617) (not d!1603188)))

(declare-fun bs!1184080 () Bool)

(assert (= bs!1184080 d!1603188))

(assert (=> bs!1184080 m!6009334))

(declare-fun m!6009688 () Bool)

(assert (=> bs!1184080 m!6009688))

(assert (=> bs!1184080 m!6009334))

(declare-fun m!6009690 () Bool)

(assert (=> bs!1184080 m!6009690))

(assert (=> bs!1184080 m!6009366))

(assert (=> b!4978815 d!1603188))

(declare-fun d!1603190 () Bool)

(declare-fun fromListB!2740 (List!57696) BalanceConc!29834)

(assert (=> d!1603190 (= (seqFromList!6071 lt!2056775) (fromListB!2740 lt!2056775))))

(declare-fun bs!1184081 () Bool)

(assert (= bs!1184081 d!1603190))

(declare-fun m!6009692 () Bool)

(assert (=> bs!1184081 m!6009692))

(assert (=> b!4978815 d!1603190))

(declare-fun d!1603192 () Bool)

(assert (=> d!1603192 (dynLambda!23324 lambda!247770 (_1!34543 lt!2056776))))

(declare-fun lt!2057001 () Unit!148602)

(assert (=> d!1603192 (= lt!2057001 (choose!36750 lambda!247770 (_1!34543 lt!2056776)))))

(assert (=> d!1603192 (Forall!1800 lambda!247770)))

(assert (=> d!1603192 (= (ForallOf!1260 lambda!247770 (_1!34543 lt!2056776)) lt!2057001)))

(declare-fun b_lambda!197619 () Bool)

(assert (=> (not b_lambda!197619) (not d!1603192)))

(declare-fun bs!1184082 () Bool)

(assert (= bs!1184082 d!1603192))

(declare-fun m!6009694 () Bool)

(assert (=> bs!1184082 m!6009694))

(declare-fun m!6009696 () Bool)

(assert (=> bs!1184082 m!6009696))

(assert (=> bs!1184082 m!6009366))

(assert (=> b!4978815 d!1603192))

(declare-fun d!1603194 () Bool)

(declare-fun isEmpty!31070 (Option!14520) Bool)

(assert (=> d!1603194 (= (isDefined!11429 (maxPrefixOneRule!3666 thiss!16165 rule!200 lt!2056777)) (not (isEmpty!31070 (maxPrefixOneRule!3666 thiss!16165 rule!200 lt!2056777))))))

(declare-fun bs!1184083 () Bool)

(assert (= bs!1184083 d!1603194))

(assert (=> bs!1184083 m!6009344))

(declare-fun m!6009698 () Bool)

(assert (=> bs!1184083 m!6009698))

(assert (=> b!4978815 d!1603194))

(declare-fun b!4979157 () Bool)

(declare-fun res!2125588 () Bool)

(declare-fun e!3112144 () Bool)

(assert (=> b!4979157 (=> (not res!2125588) (not e!3112144))))

(declare-fun lt!2057013 () Option!14520)

(declare-fun charsOf!5448 (Token!15356) BalanceConc!29834)

(declare-fun get!20011 (Option!14520) tuple2!62484)

(assert (=> b!4979157 (= res!2125588 (= (++!12547 (list!18446 (charsOf!5448 (_1!34545 (get!20011 lt!2057013)))) (_2!34545 (get!20011 lt!2057013))) lt!2056777))))

(declare-fun b!4979158 () Bool)

(declare-fun e!3112142 () Bool)

(assert (=> b!4979158 (= e!3112142 (matchR!6677 (regex!8450 rule!200) (_1!34546 (findLongestMatchInner!1894 (regex!8450 rule!200) Nil!57572 (size!38191 Nil!57572) lt!2056777 lt!2056777 (size!38191 lt!2056777)))))))

(declare-fun b!4979159 () Bool)

(declare-fun res!2125589 () Bool)

(assert (=> b!4979159 (=> (not res!2125589) (not e!3112144))))

(assert (=> b!4979159 (= res!2125589 (= (rule!11698 (_1!34545 (get!20011 lt!2057013))) rule!200))))

(declare-fun b!4979160 () Bool)

(declare-fun e!3112141 () Bool)

(assert (=> b!4979160 (= e!3112141 e!3112144)))

(declare-fun res!2125584 () Bool)

(assert (=> b!4979160 (=> (not res!2125584) (not e!3112144))))

(assert (=> b!4979160 (= res!2125584 (matchR!6677 (regex!8450 rule!200) (list!18446 (charsOf!5448 (_1!34545 (get!20011 lt!2057013))))))))

(declare-fun b!4979161 () Bool)

(declare-fun res!2125586 () Bool)

(assert (=> b!4979161 (=> (not res!2125586) (not e!3112144))))

(assert (=> b!4979161 (= res!2125586 (= (value!270245 (_1!34545 (get!20011 lt!2057013))) (apply!13937 (transformation!8450 (rule!11698 (_1!34545 (get!20011 lt!2057013)))) (seqFromList!6071 (originalCharacters!8709 (_1!34545 (get!20011 lt!2057013)))))))))

(declare-fun b!4979162 () Bool)

(declare-fun res!2125587 () Bool)

(assert (=> b!4979162 (=> (not res!2125587) (not e!3112144))))

(assert (=> b!4979162 (= res!2125587 (< (size!38191 (_2!34545 (get!20011 lt!2057013))) (size!38191 lt!2056777)))))

(declare-fun b!4979163 () Bool)

(declare-fun e!3112143 () Option!14520)

(assert (=> b!4979163 (= e!3112143 None!14519)))

(declare-fun d!1603196 () Bool)

(assert (=> d!1603196 e!3112141))

(declare-fun res!2125585 () Bool)

(assert (=> d!1603196 (=> res!2125585 e!3112141)))

(assert (=> d!1603196 (= res!2125585 (isEmpty!31070 lt!2057013))))

(assert (=> d!1603196 (= lt!2057013 e!3112143)))

(declare-fun c!849510 () Bool)

(declare-fun lt!2057016 () tuple2!62486)

(assert (=> d!1603196 (= c!849510 (isEmpty!31065 (_1!34546 lt!2057016)))))

(declare-fun findLongestMatch!1710 (Regex!13683 List!57696) tuple2!62486)

(assert (=> d!1603196 (= lt!2057016 (findLongestMatch!1710 (regex!8450 rule!200) lt!2056777))))

(assert (=> d!1603196 (ruleValid!3858 thiss!16165 rule!200)))

(assert (=> d!1603196 (= (maxPrefixOneRule!3666 thiss!16165 rule!200 lt!2056777) lt!2057013)))

(declare-fun b!4979164 () Bool)

(assert (=> b!4979164 (= e!3112143 (Some!14519 (tuple2!62485 (Token!15357 (apply!13937 (transformation!8450 rule!200) (seqFromList!6071 (_1!34546 lt!2057016))) rule!200 (size!38190 (seqFromList!6071 (_1!34546 lt!2057016))) (_1!34546 lt!2057016)) (_2!34546 lt!2057016))))))

(declare-fun lt!2057015 () Unit!148602)

(assert (=> b!4979164 (= lt!2057015 (longestMatchIsAcceptedByMatchOrIsEmpty!1855 (regex!8450 rule!200) lt!2056777))))

(declare-fun res!2125590 () Bool)

(assert (=> b!4979164 (= res!2125590 (isEmpty!31065 (_1!34546 (findLongestMatchInner!1894 (regex!8450 rule!200) Nil!57572 (size!38191 Nil!57572) lt!2056777 lt!2056777 (size!38191 lt!2056777)))))))

(assert (=> b!4979164 (=> res!2125590 e!3112142)))

(assert (=> b!4979164 e!3112142))

(declare-fun lt!2057012 () Unit!148602)

(assert (=> b!4979164 (= lt!2057012 lt!2057015)))

(declare-fun lt!2057014 () Unit!148602)

(declare-fun lemmaSemiInverse!2611 (TokenValueInjection!16828 BalanceConc!29834) Unit!148602)

(assert (=> b!4979164 (= lt!2057014 (lemmaSemiInverse!2611 (transformation!8450 rule!200) (seqFromList!6071 (_1!34546 lt!2057016))))))

(declare-fun b!4979165 () Bool)

(assert (=> b!4979165 (= e!3112144 (= (size!38189 (_1!34545 (get!20011 lt!2057013))) (size!38191 (originalCharacters!8709 (_1!34545 (get!20011 lt!2057013))))))))

(assert (= (and d!1603196 c!849510) b!4979163))

(assert (= (and d!1603196 (not c!849510)) b!4979164))

(assert (= (and b!4979164 (not res!2125590)) b!4979158))

(assert (= (and d!1603196 (not res!2125585)) b!4979160))

(assert (= (and b!4979160 res!2125584) b!4979157))

(assert (= (and b!4979157 res!2125588) b!4979162))

(assert (= (and b!4979162 res!2125587) b!4979159))

(assert (= (and b!4979159 res!2125589) b!4979161))

(assert (= (and b!4979161 res!2125586) b!4979165))

(declare-fun m!6009700 () Bool)

(assert (=> b!4979159 m!6009700))

(assert (=> b!4979162 m!6009700))

(declare-fun m!6009702 () Bool)

(assert (=> b!4979162 m!6009702))

(assert (=> b!4979162 m!6009380))

(assert (=> b!4979160 m!6009700))

(declare-fun m!6009704 () Bool)

(assert (=> b!4979160 m!6009704))

(assert (=> b!4979160 m!6009704))

(declare-fun m!6009706 () Bool)

(assert (=> b!4979160 m!6009706))

(assert (=> b!4979160 m!6009706))

(declare-fun m!6009708 () Bool)

(assert (=> b!4979160 m!6009708))

(assert (=> b!4979157 m!6009700))

(assert (=> b!4979157 m!6009704))

(assert (=> b!4979157 m!6009704))

(assert (=> b!4979157 m!6009706))

(assert (=> b!4979157 m!6009706))

(declare-fun m!6009710 () Bool)

(assert (=> b!4979157 m!6009710))

(declare-fun m!6009712 () Bool)

(assert (=> d!1603196 m!6009712))

(declare-fun m!6009714 () Bool)

(assert (=> d!1603196 m!6009714))

(declare-fun m!6009716 () Bool)

(assert (=> d!1603196 m!6009716))

(assert (=> d!1603196 m!6009360))

(declare-fun m!6009718 () Bool)

(assert (=> b!4979164 m!6009718))

(assert (=> b!4979164 m!6009374))

(assert (=> b!4979164 m!6009378))

(assert (=> b!4979164 m!6009378))

(assert (=> b!4979164 m!6009380))

(assert (=> b!4979164 m!6009382))

(assert (=> b!4979164 m!6009718))

(declare-fun m!6009720 () Bool)

(assert (=> b!4979164 m!6009720))

(assert (=> b!4979164 m!6009718))

(declare-fun m!6009722 () Bool)

(assert (=> b!4979164 m!6009722))

(assert (=> b!4979164 m!6009380))

(assert (=> b!4979164 m!6009718))

(declare-fun m!6009724 () Bool)

(assert (=> b!4979164 m!6009724))

(assert (=> b!4979164 m!6009670))

(assert (=> b!4979158 m!6009378))

(assert (=> b!4979158 m!6009380))

(assert (=> b!4979158 m!6009378))

(assert (=> b!4979158 m!6009380))

(assert (=> b!4979158 m!6009382))

(assert (=> b!4979158 m!6009674))

(assert (=> b!4979161 m!6009700))

(declare-fun m!6009726 () Bool)

(assert (=> b!4979161 m!6009726))

(assert (=> b!4979161 m!6009726))

(declare-fun m!6009728 () Bool)

(assert (=> b!4979161 m!6009728))

(assert (=> b!4979165 m!6009700))

(declare-fun m!6009730 () Bool)

(assert (=> b!4979165 m!6009730))

(assert (=> b!4978815 d!1603196))

(declare-fun d!1603198 () Bool)

(declare-fun dynLambda!23325 (Int BalanceConc!29834) TokenValue!8760)

(assert (=> d!1603198 (= (apply!13937 (transformation!8450 rule!200) (_1!34543 lt!2056776)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776)))))

(declare-fun b_lambda!197621 () Bool)

(assert (=> (not b_lambda!197621) (not d!1603198)))

(declare-fun t!369719 () Bool)

(declare-fun tb!261543 () Bool)

(assert (=> (and b!4978821 (= (toValue!11429 (transformation!8450 rule!200)) (toValue!11429 (transformation!8450 rule!200))) t!369719) tb!261543))

(declare-fun result!326798 () Bool)

(declare-fun inv!21 (TokenValue!8760) Bool)

(assert (=> tb!261543 (= result!326798 (inv!21 (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776))))))

(declare-fun m!6009732 () Bool)

(assert (=> tb!261543 m!6009732))

(assert (=> d!1603198 t!369719))

(declare-fun b_and!349525 () Bool)

(assert (= b_and!349511 (and (=> t!369719 result!326798) b_and!349525)))

(declare-fun m!6009734 () Bool)

(assert (=> d!1603198 m!6009734))

(assert (=> b!4978815 d!1603198))

(declare-fun d!1603200 () Bool)

(declare-fun isEmpty!31071 (Option!14519) Bool)

(assert (=> d!1603200 (= (isDefined!11428 (Some!14518 (tuple2!62483 (Token!15357 (apply!13937 (transformation!8450 rule!200) (_1!34543 lt!2056776)) rule!200 (size!38190 (_1!34543 lt!2056776)) lt!2056775) (_2!34543 lt!2056776)))) (not (isEmpty!31071 (Some!14518 (tuple2!62483 (Token!15357 (apply!13937 (transformation!8450 rule!200) (_1!34543 lt!2056776)) rule!200 (size!38190 (_1!34543 lt!2056776)) lt!2056775) (_2!34543 lt!2056776))))))))

(declare-fun bs!1184084 () Bool)

(assert (= bs!1184084 d!1603200))

(declare-fun m!6009736 () Bool)

(assert (=> bs!1184084 m!6009736))

(assert (=> b!4978815 d!1603200))

(declare-fun d!1603202 () Bool)

(declare-fun lt!2057019 () Int)

(assert (=> d!1603202 (= lt!2057019 (size!38191 (list!18446 (_1!34543 lt!2056776))))))

(declare-fun size!38193 (Conc!15202) Int)

(assert (=> d!1603202 (= lt!2057019 (size!38193 (c!849434 (_1!34543 lt!2056776))))))

(assert (=> d!1603202 (= (size!38190 (_1!34543 lt!2056776)) lt!2057019)))

(declare-fun bs!1184085 () Bool)

(assert (= bs!1184085 d!1603202))

(assert (=> bs!1184085 m!6009338))

(assert (=> bs!1184085 m!6009338))

(declare-fun m!6009738 () Bool)

(assert (=> bs!1184085 m!6009738))

(declare-fun m!6009740 () Bool)

(assert (=> bs!1184085 m!6009740))

(assert (=> b!4978815 d!1603202))

(declare-fun d!1603204 () Bool)

(declare-fun e!3112150 () Bool)

(assert (=> d!1603204 e!3112150))

(declare-fun res!2125593 () Bool)

(assert (=> d!1603204 (=> res!2125593 e!3112150)))

(declare-fun lt!2057022 () Bool)

(assert (=> d!1603204 (= res!2125593 (not lt!2057022))))

(declare-fun drop!2366 (List!57696 Int) List!57696)

(assert (=> d!1603204 (= lt!2057022 (= lt!2056777 (drop!2366 (list!18446 totalInput!520) (- (size!38191 (list!18446 totalInput!520)) (size!38191 lt!2056777)))))))

(assert (=> d!1603204 (= (isSuffix!1249 lt!2056777 (list!18446 totalInput!520)) lt!2057022)))

(declare-fun b!4979170 () Bool)

(assert (=> b!4979170 (= e!3112150 (>= (size!38191 (list!18446 totalInput!520)) (size!38191 lt!2056777)))))

(assert (= (and d!1603204 (not res!2125593)) b!4979170))

(assert (=> d!1603204 m!6009354))

(declare-fun m!6009742 () Bool)

(assert (=> d!1603204 m!6009742))

(assert (=> d!1603204 m!6009380))

(assert (=> d!1603204 m!6009354))

(declare-fun m!6009744 () Bool)

(assert (=> d!1603204 m!6009744))

(assert (=> b!4979170 m!6009354))

(assert (=> b!4979170 m!6009742))

(assert (=> b!4979170 m!6009380))

(assert (=> b!4978817 d!1603204))

(declare-fun d!1603206 () Bool)

(assert (=> d!1603206 (= (list!18446 totalInput!520) (list!18448 (c!849434 totalInput!520)))))

(declare-fun bs!1184086 () Bool)

(assert (= bs!1184086 d!1603206))

(declare-fun m!6009746 () Bool)

(assert (=> bs!1184086 m!6009746))

(assert (=> b!4978817 d!1603206))

(declare-fun d!1603208 () Bool)

(assert (=> d!1603208 (= (list!18446 input!1580) (list!18448 (c!849434 input!1580)))))

(declare-fun bs!1184087 () Bool)

(assert (= bs!1184087 d!1603208))

(declare-fun m!6009748 () Bool)

(assert (=> bs!1184087 m!6009748))

(assert (=> b!4978817 d!1603208))

(declare-fun d!1603210 () Bool)

(declare-fun isBalanced!4220 (Conc!15202) Bool)

(assert (=> d!1603210 (= (inv!75382 totalInput!520) (isBalanced!4220 (c!849434 totalInput!520)))))

(declare-fun bs!1184088 () Bool)

(assert (= bs!1184088 d!1603210))

(declare-fun m!6009750 () Bool)

(assert (=> bs!1184088 m!6009750))

(assert (=> start!525330 d!1603210))

(declare-fun d!1603212 () Bool)

(assert (=> d!1603212 (= (inv!75382 input!1580) (isBalanced!4220 (c!849434 input!1580)))))

(declare-fun bs!1184089 () Bool)

(assert (= bs!1184089 d!1603212))

(declare-fun m!6009752 () Bool)

(assert (=> bs!1184089 m!6009752))

(assert (=> start!525330 d!1603212))

(declare-fun d!1603214 () Bool)

(declare-fun choose!36751 (Int) Bool)

(assert (=> d!1603214 (= (Forall!1800 lambda!247770) (choose!36751 lambda!247770))))

(declare-fun bs!1184090 () Bool)

(assert (= bs!1184090 d!1603214))

(declare-fun m!6009754 () Bool)

(assert (=> bs!1184090 m!6009754))

(assert (=> b!4978824 d!1603214))

(declare-fun d!1603216 () Bool)

(declare-fun lt!2057025 () Bool)

(assert (=> d!1603216 (= lt!2057025 (isEmpty!31065 (list!18446 (_1!34543 lt!2056776))))))

(declare-fun isEmpty!31072 (Conc!15202) Bool)

(assert (=> d!1603216 (= lt!2057025 (isEmpty!31072 (c!849434 (_1!34543 lt!2056776))))))

(assert (=> d!1603216 (= (isEmpty!31066 (_1!34543 lt!2056776)) lt!2057025)))

(declare-fun bs!1184091 () Bool)

(assert (= bs!1184091 d!1603216))

(assert (=> bs!1184091 m!6009338))

(assert (=> bs!1184091 m!6009338))

(declare-fun m!6009756 () Bool)

(assert (=> bs!1184091 m!6009756))

(declare-fun m!6009758 () Bool)

(assert (=> bs!1184091 m!6009758))

(assert (=> b!4978823 d!1603216))

(declare-fun d!1603218 () Bool)

(declare-fun lt!2057028 () tuple2!62480)

(assert (=> d!1603218 (= (tuple2!62487 (list!18446 (_1!34543 lt!2057028)) (list!18446 (_2!34543 lt!2057028))) (findLongestMatch!1710 (regex!8450 rule!200) (list!18446 input!1580)))))

(declare-fun choose!36752 (Regex!13683 BalanceConc!29834 BalanceConc!29834) tuple2!62480)

(assert (=> d!1603218 (= lt!2057028 (choose!36752 (regex!8450 rule!200) input!1580 totalInput!520))))

(assert (=> d!1603218 (validRegex!5984 (regex!8450 rule!200))))

(assert (=> d!1603218 (= (findLongestMatchWithZipperSequenceV2!213 (regex!8450 rule!200) input!1580 totalInput!520) lt!2057028)))

(declare-fun bs!1184092 () Bool)

(assert (= bs!1184092 d!1603218))

(assert (=> bs!1184092 m!6009358))

(declare-fun m!6009760 () Bool)

(assert (=> bs!1184092 m!6009760))

(declare-fun m!6009762 () Bool)

(assert (=> bs!1184092 m!6009762))

(assert (=> bs!1184092 m!6009358))

(declare-fun m!6009764 () Bool)

(assert (=> bs!1184092 m!6009764))

(assert (=> bs!1184092 m!6009424))

(declare-fun m!6009766 () Bool)

(assert (=> bs!1184092 m!6009766))

(assert (=> b!4978823 d!1603218))

(declare-fun d!1603220 () Bool)

(declare-fun res!2125598 () Bool)

(declare-fun e!3112153 () Bool)

(assert (=> d!1603220 (=> (not res!2125598) (not e!3112153))))

(assert (=> d!1603220 (= res!2125598 (validRegex!5984 (regex!8450 rule!200)))))

(assert (=> d!1603220 (= (ruleValid!3858 thiss!16165 rule!200) e!3112153)))

(declare-fun b!4979175 () Bool)

(declare-fun res!2125599 () Bool)

(assert (=> b!4979175 (=> (not res!2125599) (not e!3112153))))

(assert (=> b!4979175 (= res!2125599 (not (nullable!4635 (regex!8450 rule!200))))))

(declare-fun b!4979176 () Bool)

(assert (=> b!4979176 (= e!3112153 (not (= (tag!9314 rule!200) (String!65674 ""))))))

(assert (= (and d!1603220 res!2125598) b!4979175))

(assert (= (and b!4979175 res!2125599) b!4979176))

(assert (=> d!1603220 m!6009424))

(assert (=> b!4979175 m!6009428))

(assert (=> b!4978814 d!1603220))

(declare-fun b!4979185 () Bool)

(declare-fun tp!1396179 () Bool)

(declare-fun tp!1396180 () Bool)

(declare-fun e!3112159 () Bool)

(assert (=> b!4979185 (= e!3112159 (and (inv!75380 (left!42073 (c!849434 totalInput!520))) tp!1396179 (inv!75380 (right!42403 (c!849434 totalInput!520))) tp!1396180))))

(declare-fun b!4979187 () Bool)

(declare-fun e!3112158 () Bool)

(declare-fun tp!1396178 () Bool)

(assert (=> b!4979187 (= e!3112158 tp!1396178)))

(declare-fun b!4979186 () Bool)

(declare-fun inv!75388 (IArray!30465) Bool)

(assert (=> b!4979186 (= e!3112159 (and (inv!75388 (xs!18528 (c!849434 totalInput!520))) e!3112158))))

(assert (=> b!4978816 (= tp!1396138 (and (inv!75380 (c!849434 totalInput!520)) e!3112159))))

(assert (= (and b!4978816 ((_ is Node!15202) (c!849434 totalInput!520))) b!4979185))

(assert (= b!4979186 b!4979187))

(assert (= (and b!4978816 ((_ is Leaf!25252) (c!849434 totalInput!520))) b!4979186))

(declare-fun m!6009768 () Bool)

(assert (=> b!4979185 m!6009768))

(declare-fun m!6009770 () Bool)

(assert (=> b!4979185 m!6009770))

(declare-fun m!6009772 () Bool)

(assert (=> b!4979186 m!6009772))

(assert (=> b!4978816 m!6009362))

(declare-fun b!4979198 () Bool)

(declare-fun e!3112162 () Bool)

(declare-fun tp_is_empty!36371 () Bool)

(assert (=> b!4979198 (= e!3112162 tp_is_empty!36371)))

(assert (=> b!4978818 (= tp!1396140 e!3112162)))

(declare-fun b!4979200 () Bool)

(declare-fun tp!1396195 () Bool)

(assert (=> b!4979200 (= e!3112162 tp!1396195)))

(declare-fun b!4979199 () Bool)

(declare-fun tp!1396192 () Bool)

(declare-fun tp!1396193 () Bool)

(assert (=> b!4979199 (= e!3112162 (and tp!1396192 tp!1396193))))

(declare-fun b!4979201 () Bool)

(declare-fun tp!1396191 () Bool)

(declare-fun tp!1396194 () Bool)

(assert (=> b!4979201 (= e!3112162 (and tp!1396191 tp!1396194))))

(assert (= (and b!4978818 ((_ is ElementMatch!13683) (regex!8450 rule!200))) b!4979198))

(assert (= (and b!4978818 ((_ is Concat!22443) (regex!8450 rule!200))) b!4979199))

(assert (= (and b!4978818 ((_ is Star!13683) (regex!8450 rule!200))) b!4979200))

(assert (= (and b!4978818 ((_ is Union!13683) (regex!8450 rule!200))) b!4979201))

(declare-fun tp!1396198 () Bool)

(declare-fun e!3112164 () Bool)

(declare-fun b!4979202 () Bool)

(declare-fun tp!1396197 () Bool)

(assert (=> b!4979202 (= e!3112164 (and (inv!75380 (left!42073 (c!849434 input!1580))) tp!1396197 (inv!75380 (right!42403 (c!849434 input!1580))) tp!1396198))))

(declare-fun b!4979204 () Bool)

(declare-fun e!3112163 () Bool)

(declare-fun tp!1396196 () Bool)

(assert (=> b!4979204 (= e!3112163 tp!1396196)))

(declare-fun b!4979203 () Bool)

(assert (=> b!4979203 (= e!3112164 (and (inv!75388 (xs!18528 (c!849434 input!1580))) e!3112163))))

(assert (=> b!4978819 (= tp!1396139 (and (inv!75380 (c!849434 input!1580)) e!3112164))))

(assert (= (and b!4978819 ((_ is Node!15202) (c!849434 input!1580))) b!4979202))

(assert (= b!4979203 b!4979204))

(assert (= (and b!4978819 ((_ is Leaf!25252) (c!849434 input!1580))) b!4979203))

(declare-fun m!6009774 () Bool)

(assert (=> b!4979202 m!6009774))

(declare-fun m!6009776 () Bool)

(assert (=> b!4979202 m!6009776))

(declare-fun m!6009778 () Bool)

(assert (=> b!4979203 m!6009778))

(assert (=> b!4978819 m!6009352))

(declare-fun b_lambda!197623 () Bool)

(assert (= b_lambda!197617 (or b!4978824 b_lambda!197623)))

(declare-fun bs!1184093 () Bool)

(declare-fun d!1603222 () Bool)

(assert (= bs!1184093 (and d!1603222 b!4978824)))

(declare-fun dynLambda!23326 (Int TokenValue!8760) BalanceConc!29834)

(assert (=> bs!1184093 (= (dynLambda!23324 lambda!247770 (seqFromList!6071 lt!2056775)) (= (list!18446 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775)))) (list!18446 (seqFromList!6071 lt!2056775))))))

(declare-fun b_lambda!197629 () Bool)

(assert (=> (not b_lambda!197629) (not bs!1184093)))

(declare-fun t!369721 () Bool)

(declare-fun tb!261545 () Bool)

(assert (=> (and b!4978821 (= (toChars!11288 (transformation!8450 rule!200)) (toChars!11288 (transformation!8450 rule!200))) t!369721) tb!261545))

(declare-fun e!3112167 () Bool)

(declare-fun b!4979209 () Bool)

(declare-fun tp!1396201 () Bool)

(assert (=> b!4979209 (= e!3112167 (and (inv!75380 (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775))))) tp!1396201))))

(declare-fun result!326806 () Bool)

(assert (=> tb!261545 (= result!326806 (and (inv!75382 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775)))) e!3112167))))

(assert (= tb!261545 b!4979209))

(declare-fun m!6009780 () Bool)

(assert (=> b!4979209 m!6009780))

(declare-fun m!6009782 () Bool)

(assert (=> tb!261545 m!6009782))

(assert (=> bs!1184093 t!369721))

(declare-fun b_and!349527 () Bool)

(assert (= b_and!349513 (and (=> t!369721 result!326806) b_and!349527)))

(declare-fun b_lambda!197631 () Bool)

(assert (=> (not b_lambda!197631) (not bs!1184093)))

(declare-fun t!369723 () Bool)

(declare-fun tb!261547 () Bool)

(assert (=> (and b!4978821 (= (toValue!11429 (transformation!8450 rule!200)) (toValue!11429 (transformation!8450 rule!200))) t!369723) tb!261547))

(declare-fun result!326810 () Bool)

(assert (=> tb!261547 (= result!326810 (inv!21 (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775))))))

(declare-fun m!6009784 () Bool)

(assert (=> tb!261547 m!6009784))

(assert (=> bs!1184093 t!369723))

(declare-fun b_and!349529 () Bool)

(assert (= b_and!349525 (and (=> t!369723 result!326810) b_and!349529)))

(assert (=> bs!1184093 m!6009334))

(declare-fun m!6009786 () Bool)

(assert (=> bs!1184093 m!6009786))

(assert (=> bs!1184093 m!6009786))

(declare-fun m!6009788 () Bool)

(assert (=> bs!1184093 m!6009788))

(assert (=> bs!1184093 m!6009334))

(declare-fun m!6009790 () Bool)

(assert (=> bs!1184093 m!6009790))

(assert (=> bs!1184093 m!6009788))

(declare-fun m!6009792 () Bool)

(assert (=> bs!1184093 m!6009792))

(assert (=> d!1603188 d!1603222))

(declare-fun b_lambda!197625 () Bool)

(assert (= b_lambda!197621 (or (and b!4978821 b_free!133099) b_lambda!197625)))

(declare-fun b_lambda!197627 () Bool)

(assert (= b_lambda!197619 (or b!4978824 b_lambda!197627)))

(declare-fun bs!1184094 () Bool)

(declare-fun d!1603224 () Bool)

(assert (= bs!1184094 (and d!1603224 b!4978824)))

(assert (=> bs!1184094 (= (dynLambda!23324 lambda!247770 (_1!34543 lt!2056776)) (= (list!18446 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776)))) (list!18446 (_1!34543 lt!2056776))))))

(declare-fun b_lambda!197633 () Bool)

(assert (=> (not b_lambda!197633) (not bs!1184094)))

(declare-fun t!369725 () Bool)

(declare-fun tb!261549 () Bool)

(assert (=> (and b!4978821 (= (toChars!11288 (transformation!8450 rule!200)) (toChars!11288 (transformation!8450 rule!200))) t!369725) tb!261549))

(declare-fun e!3112169 () Bool)

(declare-fun b!4979210 () Bool)

(declare-fun tp!1396202 () Bool)

(assert (=> b!4979210 (= e!3112169 (and (inv!75380 (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776))))) tp!1396202))))

(declare-fun result!326812 () Bool)

(assert (=> tb!261549 (= result!326812 (and (inv!75382 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776)))) e!3112169))))

(assert (= tb!261549 b!4979210))

(declare-fun m!6009794 () Bool)

(assert (=> b!4979210 m!6009794))

(declare-fun m!6009796 () Bool)

(assert (=> tb!261549 m!6009796))

(assert (=> bs!1184094 t!369725))

(declare-fun b_and!349531 () Bool)

(assert (= b_and!349527 (and (=> t!369725 result!326812) b_and!349531)))

(declare-fun b_lambda!197635 () Bool)

(assert (=> (not b_lambda!197635) (not bs!1184094)))

(assert (=> bs!1184094 t!369719))

(declare-fun b_and!349533 () Bool)

(assert (= b_and!349529 (and (=> t!369719 result!326798) b_and!349533)))

(assert (=> bs!1184094 m!6009734))

(assert (=> bs!1184094 m!6009734))

(declare-fun m!6009798 () Bool)

(assert (=> bs!1184094 m!6009798))

(assert (=> bs!1184094 m!6009338))

(assert (=> bs!1184094 m!6009798))

(declare-fun m!6009800 () Bool)

(assert (=> bs!1184094 m!6009800))

(assert (=> d!1603192 d!1603224))

(check-sat (not b!4979138) (not b_next!133889) (not d!1603204) (not b_lambda!197627) (not b!4979202) (not b!4979160) (not b_next!133891) (not b!4979201) (not b!4979101) (not b!4979186) (not b!4979210) tp_is_empty!36371 (not tb!261545) (not b!4979165) (not tb!261549) (not d!1603214) (not b!4979107) (not bm!347238) (not bm!347240) (not b!4979122) (not b!4979187) (not b!4979199) (not b_lambda!197631) (not d!1603190) (not d!1603178) (not b!4979117) (not d!1603188) (not tb!261543) (not bm!347239) (not d!1603216) (not bm!347235) (not bm!347233) (not b!4979200) (not b!4978896) (not d!1603134) (not b!4978895) (not bm!347189) (not b!4979136) (not b!4979209) (not d!1603186) (not b!4979133) (not b!4979114) (not b!4979158) (not b!4979164) (not d!1603212) (not d!1603110) (not bs!1184093) (not bm!347237) (not b!4978899) (not b!4979135) (not b!4979119) (not b!4979159) (not d!1603192) (not d!1603174) b_and!349531 (not b!4979103) (not b_lambda!197633) (not d!1603196) (not d!1603218) (not b!4979102) (not b!4979170) (not b!4978889) (not b!4979203) (not b!4979161) (not b!4979157) (not d!1603206) (not tb!261547) (not b!4978891) b_and!349533 (not b!4979162) (not b_lambda!197629) (not d!1603180) (not b!4978901) (not d!1603200) (not b!4979175) (not b_lambda!197625) (not b!4978816) (not d!1603220) (not d!1603208) (not d!1603194) (not b_lambda!197635) (not b!4978915) (not b!4978819) (not d!1603122) (not d!1603202) (not b_lambda!197623) (not bs!1184094) (not bm!347236) (not bm!347234) (not b!4979185) (not d!1603210) (not b!4979204))
(check-sat b_and!349531 b_and!349533 (not b_next!133891) (not b_next!133889))
(get-model)

(declare-fun b_lambda!197645 () Bool)

(assert (= b_lambda!197629 (or (and b!4978821 b_free!133101) b_lambda!197645)))

(declare-fun b_lambda!197647 () Bool)

(assert (= b_lambda!197635 (or (and b!4978821 b_free!133099) b_lambda!197647)))

(declare-fun b_lambda!197649 () Bool)

(assert (= b_lambda!197631 (or (and b!4978821 b_free!133099) b_lambda!197649)))

(declare-fun b_lambda!197651 () Bool)

(assert (= b_lambda!197633 (or (and b!4978821 b_free!133101) b_lambda!197651)))

(check-sat (not b_next!133889) (not d!1603204) (not b_lambda!197627) (not b!4979202) (not b!4979160) (not b_next!133891) (not b!4979201) (not b!4979101) (not b!4979186) (not b!4979210) tp_is_empty!36371 (not tb!261545) (not b!4979165) (not tb!261549) (not d!1603214) (not b!4979107) (not b_lambda!197645) (not b!4979138) (not bm!347238) (not bm!347240) (not b!4979122) (not b!4979199) (not b!4979187) (not d!1603190) (not d!1603178) (not b!4979117) (not d!1603188) (not tb!261543) (not d!1603216) (not bm!347235) (not b_lambda!197649) (not bm!347239) (not bm!347233) (not b!4979200) (not b!4978896) (not d!1603134) (not b!4978895) (not bm!347189) (not b!4979136) (not b!4979209) (not d!1603186) (not b!4979133) (not b!4979114) (not b!4979158) (not b!4979164) (not d!1603212) (not d!1603110) (not bs!1184093) (not bm!347237) (not b!4978899) (not b!4979135) (not b!4979119) (not b!4979159) (not d!1603192) (not d!1603174) b_and!349531 (not b!4979103) (not d!1603196) (not d!1603218) (not b!4979102) (not b!4979170) (not b!4978889) (not b!4979203) (not b!4979161) (not b!4979157) (not d!1603206) (not tb!261547) (not b!4978891) (not b_lambda!197647) (not b_lambda!197651) (not b!4979162) b_and!349533 (not d!1603180) (not b!4978901) (not d!1603200) (not b!4979175) (not b_lambda!197625) (not b!4978816) (not d!1603220) (not d!1603208) (not d!1603194) (not b!4978915) (not b!4978819) (not d!1603122) (not d!1603202) (not b_lambda!197623) (not bs!1184094) (not bm!347236) (not bm!347234) (not b!4979185) (not d!1603210) (not b!4979204))
(check-sat b_and!349531 b_and!349533 (not b_next!133891) (not b_next!133889))
(get-model)

(declare-fun d!1603310 () Bool)

(declare-fun c!849555 () Bool)

(assert (=> d!1603310 (= c!849555 ((_ is Node!15202) (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775))))))))

(declare-fun e!3112274 () Bool)

(assert (=> d!1603310 (= (inv!75380 (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775))))) e!3112274)))

(declare-fun b!4979384 () Bool)

(assert (=> b!4979384 (= e!3112274 (inv!75386 (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775))))))))

(declare-fun b!4979385 () Bool)

(declare-fun e!3112275 () Bool)

(assert (=> b!4979385 (= e!3112274 e!3112275)))

(declare-fun res!2125681 () Bool)

(assert (=> b!4979385 (= res!2125681 (not ((_ is Leaf!25252) (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775)))))))))

(assert (=> b!4979385 (=> res!2125681 e!3112275)))

(declare-fun b!4979386 () Bool)

(assert (=> b!4979386 (= e!3112275 (inv!75387 (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775))))))))

(assert (= (and d!1603310 c!849555) b!4979384))

(assert (= (and d!1603310 (not c!849555)) b!4979385))

(assert (= (and b!4979385 (not res!2125681)) b!4979386))

(declare-fun m!6010026 () Bool)

(assert (=> b!4979384 m!6010026))

(declare-fun m!6010030 () Bool)

(assert (=> b!4979386 m!6010030))

(assert (=> b!4979209 d!1603310))

(declare-fun bm!347260 () Bool)

(declare-fun call!347272 () Unit!148602)

(assert (=> bm!347260 (= call!347272 (lemmaIsPrefixSameLengthThenSameList!1221 lt!2056777 lt!2056968 lt!2056777))))

(declare-fun b!4979387 () Bool)

(declare-fun e!3112282 () Unit!148602)

(declare-fun Unit!148612 () Unit!148602)

(assert (=> b!4979387 (= e!3112282 Unit!148612)))

(declare-fun lt!2057125 () Unit!148602)

(declare-fun call!347271 () Unit!148602)

(assert (=> b!4979387 (= lt!2057125 call!347271)))

(declare-fun call!347269 () Bool)

(assert (=> b!4979387 call!347269))

(declare-fun lt!2057137 () Unit!148602)

(assert (=> b!4979387 (= lt!2057137 lt!2057125)))

(declare-fun lt!2057138 () Unit!148602)

(assert (=> b!4979387 (= lt!2057138 call!347272)))

(assert (=> b!4979387 (= lt!2056777 lt!2056968)))

(declare-fun lt!2057122 () Unit!148602)

(assert (=> b!4979387 (= lt!2057122 lt!2057138)))

(assert (=> b!4979387 false))

(declare-fun d!1603312 () Bool)

(declare-fun e!3112278 () Bool)

(assert (=> d!1603312 e!3112278))

(declare-fun res!2125683 () Bool)

(assert (=> d!1603312 (=> (not res!2125683) (not e!3112278))))

(declare-fun lt!2057134 () tuple2!62486)

(assert (=> d!1603312 (= res!2125683 (= (++!12547 (_1!34546 lt!2057134) (_2!34546 lt!2057134)) lt!2056777))))

(declare-fun e!3112283 () tuple2!62486)

(assert (=> d!1603312 (= lt!2057134 e!3112283)))

(declare-fun c!849559 () Bool)

(assert (=> d!1603312 (= c!849559 (lostCause!1145 call!347240))))

(declare-fun lt!2057145 () Unit!148602)

(declare-fun Unit!148613 () Unit!148602)

(assert (=> d!1603312 (= lt!2057145 Unit!148613)))

(assert (=> d!1603312 (= (getSuffix!3101 lt!2056777 lt!2056968) call!347238)))

(declare-fun lt!2057140 () Unit!148602)

(declare-fun lt!2057127 () Unit!148602)

(assert (=> d!1603312 (= lt!2057140 lt!2057127)))

(declare-fun lt!2057118 () List!57696)

(assert (=> d!1603312 (= call!347238 lt!2057118)))

(assert (=> d!1603312 (= lt!2057127 (lemmaSamePrefixThenSameSuffix!2513 lt!2056968 call!347238 lt!2056968 lt!2057118 lt!2056777))))

(assert (=> d!1603312 (= lt!2057118 (getSuffix!3101 lt!2056777 lt!2056968))))

(declare-fun lt!2057121 () Unit!148602)

(declare-fun lt!2057142 () Unit!148602)

(assert (=> d!1603312 (= lt!2057121 lt!2057142)))

(assert (=> d!1603312 (isPrefix!5261 lt!2056968 (++!12547 lt!2056968 call!347238))))

(assert (=> d!1603312 (= lt!2057142 (lemmaConcatTwoListThenFirstIsPrefix!3359 lt!2056968 call!347238))))

(assert (=> d!1603312 (validRegex!5984 call!347240)))

(assert (=> d!1603312 (= (findLongestMatchInner!1894 call!347240 lt!2056968 (+ (size!38191 Nil!57572) 1) call!347238 lt!2056777 (size!38191 lt!2056777)) lt!2057134)))

(declare-fun bm!347261 () Bool)

(declare-fun call!347265 () List!57696)

(assert (=> bm!347261 (= call!347265 (tail!9817 call!347238))))

(declare-fun b!4979388 () Bool)

(declare-fun e!3112280 () tuple2!62486)

(declare-fun lt!2057120 () tuple2!62486)

(assert (=> b!4979388 (= e!3112280 lt!2057120)))

(declare-fun b!4979389 () Bool)

(declare-fun e!3112276 () tuple2!62486)

(assert (=> b!4979389 (= e!3112283 e!3112276)))

(declare-fun c!849560 () Bool)

(assert (=> b!4979389 (= c!849560 (= (+ (size!38191 Nil!57572) 1) (size!38191 lt!2056777)))))

(declare-fun bm!347262 () Bool)

(declare-fun call!347267 () Regex!13683)

(declare-fun call!347268 () C!27616)

(assert (=> bm!347262 (= call!347267 (derivativeStep!3935 call!347240 call!347268))))

(declare-fun bm!347263 () Bool)

(assert (=> bm!347263 (= call!347271 (lemmaIsPrefixRefl!3585 lt!2056777 lt!2056777))))

(declare-fun b!4979390 () Bool)

(declare-fun Unit!148614 () Unit!148602)

(assert (=> b!4979390 (= e!3112282 Unit!148614)))

(declare-fun b!4979391 () Bool)

(declare-fun e!3112279 () tuple2!62486)

(assert (=> b!4979391 (= e!3112279 (tuple2!62487 Nil!57572 lt!2056777))))

(declare-fun bm!347264 () Bool)

(declare-fun lt!2057123 () List!57696)

(declare-fun call!347270 () tuple2!62486)

(assert (=> bm!347264 (= call!347270 (findLongestMatchInner!1894 call!347267 lt!2057123 (+ (size!38191 Nil!57572) 1 1) call!347265 lt!2056777 (size!38191 lt!2056777)))))

(declare-fun b!4979392 () Bool)

(assert (=> b!4979392 (= e!3112280 (tuple2!62487 lt!2056968 call!347238))))

(declare-fun bm!347265 () Bool)

(assert (=> bm!347265 (= call!347268 (head!10684 call!347238))))

(declare-fun b!4979393 () Bool)

(declare-fun e!3112277 () tuple2!62486)

(assert (=> b!4979393 (= e!3112277 e!3112280)))

(assert (=> b!4979393 (= lt!2057120 call!347270)))

(declare-fun c!849556 () Bool)

(assert (=> b!4979393 (= c!849556 (isEmpty!31065 (_1!34546 lt!2057120)))))

(declare-fun b!4979394 () Bool)

(declare-fun e!3112281 () Bool)

(assert (=> b!4979394 (= e!3112278 e!3112281)))

(declare-fun res!2125682 () Bool)

(assert (=> b!4979394 (=> res!2125682 e!3112281)))

(assert (=> b!4979394 (= res!2125682 (isEmpty!31065 (_1!34546 lt!2057134)))))

(declare-fun b!4979395 () Bool)

(declare-fun c!849558 () Bool)

(declare-fun call!347266 () Bool)

(assert (=> b!4979395 (= c!849558 call!347266)))

(declare-fun lt!2057119 () Unit!148602)

(declare-fun lt!2057128 () Unit!148602)

(assert (=> b!4979395 (= lt!2057119 lt!2057128)))

(declare-fun lt!2057141 () C!27616)

(declare-fun lt!2057132 () List!57696)

(assert (=> b!4979395 (= (++!12547 (++!12547 lt!2056968 (Cons!57572 lt!2057141 Nil!57572)) lt!2057132) lt!2056777)))

(assert (=> b!4979395 (= lt!2057128 (lemmaMoveElementToOtherListKeepsConcatEq!1458 lt!2056968 lt!2057141 lt!2057132 lt!2056777))))

(assert (=> b!4979395 (= lt!2057132 (tail!9817 call!347238))))

(assert (=> b!4979395 (= lt!2057141 (head!10684 call!347238))))

(declare-fun lt!2057139 () Unit!148602)

(declare-fun lt!2057126 () Unit!148602)

(assert (=> b!4979395 (= lt!2057139 lt!2057126)))

(assert (=> b!4979395 (isPrefix!5261 (++!12547 lt!2056968 (Cons!57572 (head!10684 (getSuffix!3101 lt!2056777 lt!2056968)) Nil!57572)) lt!2056777)))

(assert (=> b!4979395 (= lt!2057126 (lemmaAddHeadSuffixToPrefixStillPrefix!848 lt!2056968 lt!2056777))))

(declare-fun lt!2057136 () Unit!148602)

(declare-fun lt!2057129 () Unit!148602)

(assert (=> b!4979395 (= lt!2057136 lt!2057129)))

(assert (=> b!4979395 (= lt!2057129 (lemmaAddHeadSuffixToPrefixStillPrefix!848 lt!2056968 lt!2056777))))

(assert (=> b!4979395 (= lt!2057123 (++!12547 lt!2056968 (Cons!57572 (head!10684 call!347238) Nil!57572)))))

(declare-fun lt!2057133 () Unit!148602)

(assert (=> b!4979395 (= lt!2057133 e!3112282)))

(declare-fun c!849561 () Bool)

(assert (=> b!4979395 (= c!849561 (= (size!38191 lt!2056968) (size!38191 lt!2056777)))))

(declare-fun lt!2057130 () Unit!148602)

(declare-fun lt!2057143 () Unit!148602)

(assert (=> b!4979395 (= lt!2057130 lt!2057143)))

(assert (=> b!4979395 (<= (size!38191 lt!2056968) (size!38191 lt!2056777))))

(assert (=> b!4979395 (= lt!2057143 (lemmaIsPrefixThenSmallerEqSize!774 lt!2056968 lt!2056777))))

(assert (=> b!4979395 (= e!3112276 e!3112277)))

(declare-fun b!4979396 () Bool)

(assert (=> b!4979396 (= e!3112277 call!347270)))

(declare-fun b!4979397 () Bool)

(assert (=> b!4979397 (= e!3112279 (tuple2!62487 lt!2056968 Nil!57572))))

(declare-fun b!4979398 () Bool)

(declare-fun c!849557 () Bool)

(assert (=> b!4979398 (= c!849557 call!347266)))

(declare-fun lt!2057124 () Unit!148602)

(declare-fun lt!2057135 () Unit!148602)

(assert (=> b!4979398 (= lt!2057124 lt!2057135)))

(assert (=> b!4979398 (= lt!2056777 lt!2056968)))

(assert (=> b!4979398 (= lt!2057135 call!347272)))

(declare-fun lt!2057144 () Unit!148602)

(declare-fun lt!2057131 () Unit!148602)

(assert (=> b!4979398 (= lt!2057144 lt!2057131)))

(assert (=> b!4979398 call!347269))

(assert (=> b!4979398 (= lt!2057131 call!347271)))

(assert (=> b!4979398 (= e!3112276 e!3112279)))

(declare-fun bm!347266 () Bool)

(assert (=> bm!347266 (= call!347266 (nullable!4635 call!347240))))

(declare-fun bm!347267 () Bool)

(assert (=> bm!347267 (= call!347269 (isPrefix!5261 lt!2056777 lt!2056777))))

(declare-fun b!4979399 () Bool)

(assert (=> b!4979399 (= e!3112281 (>= (size!38191 (_1!34546 lt!2057134)) (size!38191 lt!2056968)))))

(declare-fun b!4979400 () Bool)

(assert (=> b!4979400 (= e!3112283 (tuple2!62487 Nil!57572 lt!2056777))))

(assert (= (and d!1603312 c!849559) b!4979400))

(assert (= (and d!1603312 (not c!849559)) b!4979389))

(assert (= (and b!4979389 c!849560) b!4979398))

(assert (= (and b!4979389 (not c!849560)) b!4979395))

(assert (= (and b!4979398 c!849557) b!4979397))

(assert (= (and b!4979398 (not c!849557)) b!4979391))

(assert (= (and b!4979395 c!849561) b!4979387))

(assert (= (and b!4979395 (not c!849561)) b!4979390))

(assert (= (and b!4979395 c!849558) b!4979393))

(assert (= (and b!4979395 (not c!849558)) b!4979396))

(assert (= (and b!4979393 c!849556) b!4979392))

(assert (= (and b!4979393 (not c!849556)) b!4979388))

(assert (= (or b!4979393 b!4979396) bm!347265))

(assert (= (or b!4979393 b!4979396) bm!347261))

(assert (= (or b!4979393 b!4979396) bm!347262))

(assert (= (or b!4979393 b!4979396) bm!347264))

(assert (= (or b!4979398 b!4979387) bm!347267))

(assert (= (or b!4979398 b!4979387) bm!347260))

(assert (= (or b!4979398 b!4979387) bm!347263))

(assert (= (or b!4979398 b!4979395) bm!347266))

(assert (= (and d!1603312 res!2125683) b!4979394))

(assert (= (and b!4979394 (not res!2125682)) b!4979399))

(declare-fun m!6010072 () Bool)

(assert (=> b!4979395 m!6010072))

(declare-fun m!6010074 () Bool)

(assert (=> b!4979395 m!6010074))

(declare-fun m!6010076 () Bool)

(assert (=> b!4979395 m!6010076))

(declare-fun m!6010078 () Bool)

(assert (=> b!4979395 m!6010078))

(declare-fun m!6010080 () Bool)

(assert (=> b!4979395 m!6010080))

(declare-fun m!6010082 () Bool)

(assert (=> b!4979395 m!6010082))

(declare-fun m!6010084 () Bool)

(assert (=> b!4979395 m!6010084))

(declare-fun m!6010086 () Bool)

(assert (=> b!4979395 m!6010086))

(declare-fun m!6010088 () Bool)

(assert (=> b!4979395 m!6010088))

(declare-fun m!6010090 () Bool)

(assert (=> b!4979395 m!6010090))

(assert (=> b!4979395 m!6010082))

(declare-fun m!6010092 () Bool)

(assert (=> b!4979395 m!6010092))

(assert (=> b!4979395 m!6010076))

(declare-fun m!6010094 () Bool)

(assert (=> b!4979395 m!6010094))

(assert (=> b!4979395 m!6010078))

(assert (=> b!4979395 m!6009380))

(declare-fun m!6010096 () Bool)

(assert (=> b!4979395 m!6010096))

(declare-fun m!6010098 () Bool)

(assert (=> bm!347262 m!6010098))

(assert (=> bm!347261 m!6010072))

(declare-fun m!6010100 () Bool)

(assert (=> b!4979399 m!6010100))

(assert (=> b!4979399 m!6010096))

(declare-fun m!6010102 () Bool)

(assert (=> bm!347260 m!6010102))

(assert (=> bm!347265 m!6010088))

(declare-fun m!6010104 () Bool)

(assert (=> d!1603312 m!6010104))

(declare-fun m!6010106 () Bool)

(assert (=> d!1603312 m!6010106))

(assert (=> d!1603312 m!6010076))

(declare-fun m!6010108 () Bool)

(assert (=> d!1603312 m!6010108))

(declare-fun m!6010110 () Bool)

(assert (=> d!1603312 m!6010110))

(assert (=> d!1603312 m!6010110))

(declare-fun m!6010112 () Bool)

(assert (=> d!1603312 m!6010112))

(declare-fun m!6010114 () Bool)

(assert (=> d!1603312 m!6010114))

(declare-fun m!6010116 () Bool)

(assert (=> d!1603312 m!6010116))

(assert (=> bm!347264 m!6009380))

(declare-fun m!6010118 () Bool)

(assert (=> bm!347264 m!6010118))

(declare-fun m!6010120 () Bool)

(assert (=> b!4979393 m!6010120))

(assert (=> bm!347267 m!6009660))

(declare-fun m!6010122 () Bool)

(assert (=> b!4979394 m!6010122))

(declare-fun m!6010124 () Bool)

(assert (=> bm!347266 m!6010124))

(assert (=> bm!347263 m!6009664))

(assert (=> bm!347237 d!1603312))

(declare-fun d!1603324 () Bool)

(declare-fun res!2125702 () Bool)

(declare-fun e!3112294 () Bool)

(assert (=> d!1603324 (=> (not res!2125702) (not e!3112294))))

(declare-fun list!18450 (IArray!30465) List!57696)

(assert (=> d!1603324 (= res!2125702 (<= (size!38191 (list!18450 (xs!18528 (c!849434 totalInput!520)))) 512))))

(assert (=> d!1603324 (= (inv!75387 (c!849434 totalInput!520)) e!3112294)))

(declare-fun b!4979425 () Bool)

(declare-fun res!2125703 () Bool)

(assert (=> b!4979425 (=> (not res!2125703) (not e!3112294))))

(assert (=> b!4979425 (= res!2125703 (= (csize!30635 (c!849434 totalInput!520)) (size!38191 (list!18450 (xs!18528 (c!849434 totalInput!520))))))))

(declare-fun b!4979426 () Bool)

(assert (=> b!4979426 (= e!3112294 (and (> (csize!30635 (c!849434 totalInput!520)) 0) (<= (csize!30635 (c!849434 totalInput!520)) 512)))))

(assert (= (and d!1603324 res!2125702) b!4979425))

(assert (= (and b!4979425 res!2125703) b!4979426))

(declare-fun m!6010126 () Bool)

(assert (=> d!1603324 m!6010126))

(assert (=> d!1603324 m!6010126))

(declare-fun m!6010128 () Bool)

(assert (=> d!1603324 m!6010128))

(assert (=> b!4979425 m!6010126))

(assert (=> b!4979425 m!6010126))

(assert (=> b!4979425 m!6010128))

(assert (=> b!4979138 d!1603324))

(declare-fun d!1603326 () Bool)

(declare-fun lt!2057147 () Int)

(assert (=> d!1603326 (>= lt!2057147 0)))

(declare-fun e!3112295 () Int)

(assert (=> d!1603326 (= lt!2057147 e!3112295)))

(declare-fun c!849565 () Bool)

(assert (=> d!1603326 (= c!849565 ((_ is Nil!57572) (_2!34545 (get!20011 lt!2057013))))))

(assert (=> d!1603326 (= (size!38191 (_2!34545 (get!20011 lt!2057013))) lt!2057147)))

(declare-fun b!4979427 () Bool)

(assert (=> b!4979427 (= e!3112295 0)))

(declare-fun b!4979428 () Bool)

(assert (=> b!4979428 (= e!3112295 (+ 1 (size!38191 (t!369708 (_2!34545 (get!20011 lt!2057013))))))))

(assert (= (and d!1603326 c!849565) b!4979427))

(assert (= (and d!1603326 (not c!849565)) b!4979428))

(declare-fun m!6010130 () Bool)

(assert (=> b!4979428 m!6010130))

(assert (=> b!4979162 d!1603326))

(declare-fun d!1603328 () Bool)

(assert (=> d!1603328 (= (get!20011 lt!2057013) (v!50516 lt!2057013))))

(assert (=> b!4979162 d!1603328))

(assert (=> b!4979162 d!1603176))

(declare-fun d!1603330 () Bool)

(assert (=> d!1603330 (= (isEmpty!31065 (tail!9817 (_1!34546 lt!2056772))) ((_ is Nil!57572) (tail!9817 (_1!34546 lt!2056772))))))

(assert (=> b!4978891 d!1603330))

(declare-fun d!1603332 () Bool)

(assert (=> d!1603332 (= (tail!9817 (_1!34546 lt!2056772)) (t!369708 (_1!34546 lt!2056772)))))

(assert (=> b!4978891 d!1603332))

(declare-fun d!1603336 () Bool)

(declare-fun lt!2057148 () Int)

(assert (=> d!1603336 (>= lt!2057148 0)))

(declare-fun e!3112300 () Int)

(assert (=> d!1603336 (= lt!2057148 e!3112300)))

(declare-fun c!849567 () Bool)

(assert (=> d!1603336 (= c!849567 ((_ is Nil!57572) (list!18446 totalInput!520)))))

(assert (=> d!1603336 (= (size!38191 (list!18446 totalInput!520)) lt!2057148)))

(declare-fun b!4979438 () Bool)

(assert (=> b!4979438 (= e!3112300 0)))

(declare-fun b!4979439 () Bool)

(assert (=> b!4979439 (= e!3112300 (+ 1 (size!38191 (t!369708 (list!18446 totalInput!520)))))))

(assert (= (and d!1603336 c!849567) b!4979438))

(assert (= (and d!1603336 (not c!849567)) b!4979439))

(declare-fun m!6010144 () Bool)

(assert (=> b!4979439 m!6010144))

(assert (=> b!4979170 d!1603336))

(assert (=> b!4979170 d!1603176))

(declare-fun b!4979440 () Bool)

(declare-fun res!2125713 () Bool)

(declare-fun e!3112305 () Bool)

(assert (=> b!4979440 (=> res!2125713 e!3112305)))

(declare-fun e!3112301 () Bool)

(assert (=> b!4979440 (= res!2125713 e!3112301)))

(declare-fun res!2125718 () Bool)

(assert (=> b!4979440 (=> (not res!2125718) (not e!3112301))))

(declare-fun lt!2057149 () Bool)

(assert (=> b!4979440 (= res!2125718 lt!2057149)))

(declare-fun d!1603340 () Bool)

(declare-fun e!3112303 () Bool)

(assert (=> d!1603340 e!3112303))

(declare-fun c!849568 () Bool)

(assert (=> d!1603340 (= c!849568 ((_ is EmptyExpr!13683) (regex!8450 rule!200)))))

(declare-fun e!3112307 () Bool)

(assert (=> d!1603340 (= lt!2057149 e!3112307)))

(declare-fun c!849570 () Bool)

(assert (=> d!1603340 (= c!849570 (isEmpty!31065 (_1!34546 (findLongestMatchInner!1894 (regex!8450 rule!200) Nil!57572 (size!38191 Nil!57572) lt!2056777 lt!2056777 (size!38191 lt!2056777)))))))

(assert (=> d!1603340 (validRegex!5984 (regex!8450 rule!200))))

(assert (=> d!1603340 (= (matchR!6677 (regex!8450 rule!200) (_1!34546 (findLongestMatchInner!1894 (regex!8450 rule!200) Nil!57572 (size!38191 Nil!57572) lt!2056777 lt!2056777 (size!38191 lt!2056777)))) lt!2057149)))

(declare-fun b!4979441 () Bool)

(assert (=> b!4979441 (= e!3112307 (nullable!4635 (regex!8450 rule!200)))))

(declare-fun b!4979442 () Bool)

(declare-fun res!2125717 () Bool)

(assert (=> b!4979442 (=> res!2125717 e!3112305)))

(assert (=> b!4979442 (= res!2125717 (not ((_ is ElementMatch!13683) (regex!8450 rule!200))))))

(declare-fun e!3112302 () Bool)

(assert (=> b!4979442 (= e!3112302 e!3112305)))

(declare-fun b!4979443 () Bool)

(declare-fun res!2125716 () Bool)

(declare-fun e!3112306 () Bool)

(assert (=> b!4979443 (=> res!2125716 e!3112306)))

(assert (=> b!4979443 (= res!2125716 (not (isEmpty!31065 (tail!9817 (_1!34546 (findLongestMatchInner!1894 (regex!8450 rule!200) Nil!57572 (size!38191 Nil!57572) lt!2056777 lt!2056777 (size!38191 lt!2056777)))))))))

(declare-fun b!4979444 () Bool)

(declare-fun e!3112304 () Bool)

(assert (=> b!4979444 (= e!3112305 e!3112304)))

(declare-fun res!2125715 () Bool)

(assert (=> b!4979444 (=> (not res!2125715) (not e!3112304))))

(assert (=> b!4979444 (= res!2125715 (not lt!2057149))))

(declare-fun b!4979445 () Bool)

(assert (=> b!4979445 (= e!3112303 e!3112302)))

(declare-fun c!849569 () Bool)

(assert (=> b!4979445 (= c!849569 ((_ is EmptyLang!13683) (regex!8450 rule!200)))))

(declare-fun bm!347268 () Bool)

(declare-fun call!347273 () Bool)

(assert (=> bm!347268 (= call!347273 (isEmpty!31065 (_1!34546 (findLongestMatchInner!1894 (regex!8450 rule!200) Nil!57572 (size!38191 Nil!57572) lt!2056777 lt!2056777 (size!38191 lt!2056777)))))))

(declare-fun b!4979446 () Bool)

(assert (=> b!4979446 (= e!3112304 e!3112306)))

(declare-fun res!2125712 () Bool)

(assert (=> b!4979446 (=> res!2125712 e!3112306)))

(assert (=> b!4979446 (= res!2125712 call!347273)))

(declare-fun b!4979447 () Bool)

(declare-fun res!2125711 () Bool)

(assert (=> b!4979447 (=> (not res!2125711) (not e!3112301))))

(assert (=> b!4979447 (= res!2125711 (isEmpty!31065 (tail!9817 (_1!34546 (findLongestMatchInner!1894 (regex!8450 rule!200) Nil!57572 (size!38191 Nil!57572) lt!2056777 lt!2056777 (size!38191 lt!2056777))))))))

(declare-fun b!4979448 () Bool)

(assert (=> b!4979448 (= e!3112306 (not (= (head!10684 (_1!34546 (findLongestMatchInner!1894 (regex!8450 rule!200) Nil!57572 (size!38191 Nil!57572) lt!2056777 lt!2056777 (size!38191 lt!2056777)))) (c!849433 (regex!8450 rule!200)))))))

(declare-fun b!4979449 () Bool)

(assert (=> b!4979449 (= e!3112302 (not lt!2057149))))

(declare-fun b!4979450 () Bool)

(assert (=> b!4979450 (= e!3112303 (= lt!2057149 call!347273))))

(declare-fun b!4979451 () Bool)

(assert (=> b!4979451 (= e!3112301 (= (head!10684 (_1!34546 (findLongestMatchInner!1894 (regex!8450 rule!200) Nil!57572 (size!38191 Nil!57572) lt!2056777 lt!2056777 (size!38191 lt!2056777)))) (c!849433 (regex!8450 rule!200))))))

(declare-fun b!4979452 () Bool)

(declare-fun res!2125714 () Bool)

(assert (=> b!4979452 (=> (not res!2125714) (not e!3112301))))

(assert (=> b!4979452 (= res!2125714 (not call!347273))))

(declare-fun b!4979453 () Bool)

(assert (=> b!4979453 (= e!3112307 (matchR!6677 (derivativeStep!3935 (regex!8450 rule!200) (head!10684 (_1!34546 (findLongestMatchInner!1894 (regex!8450 rule!200) Nil!57572 (size!38191 Nil!57572) lt!2056777 lt!2056777 (size!38191 lt!2056777))))) (tail!9817 (_1!34546 (findLongestMatchInner!1894 (regex!8450 rule!200) Nil!57572 (size!38191 Nil!57572) lt!2056777 lt!2056777 (size!38191 lt!2056777))))))))

(assert (= (and d!1603340 c!849570) b!4979441))

(assert (= (and d!1603340 (not c!849570)) b!4979453))

(assert (= (and d!1603340 c!849568) b!4979450))

(assert (= (and d!1603340 (not c!849568)) b!4979445))

(assert (= (and b!4979445 c!849569) b!4979449))

(assert (= (and b!4979445 (not c!849569)) b!4979442))

(assert (= (and b!4979442 (not res!2125717)) b!4979440))

(assert (= (and b!4979440 res!2125718) b!4979452))

(assert (= (and b!4979452 res!2125714) b!4979447))

(assert (= (and b!4979447 res!2125711) b!4979451))

(assert (= (and b!4979440 (not res!2125713)) b!4979444))

(assert (= (and b!4979444 res!2125715) b!4979446))

(assert (= (and b!4979446 (not res!2125712)) b!4979443))

(assert (= (and b!4979443 (not res!2125716)) b!4979448))

(assert (= (or b!4979450 b!4979446 b!4979452) bm!347268))

(assert (=> d!1603340 m!6009670))

(assert (=> d!1603340 m!6009424))

(declare-fun m!6010146 () Bool)

(assert (=> b!4979448 m!6010146))

(assert (=> b!4979441 m!6009428))

(assert (=> b!4979451 m!6010146))

(assert (=> b!4979453 m!6010146))

(assert (=> b!4979453 m!6010146))

(declare-fun m!6010148 () Bool)

(assert (=> b!4979453 m!6010148))

(declare-fun m!6010150 () Bool)

(assert (=> b!4979453 m!6010150))

(assert (=> b!4979453 m!6010148))

(assert (=> b!4979453 m!6010150))

(declare-fun m!6010152 () Bool)

(assert (=> b!4979453 m!6010152))

(assert (=> b!4979447 m!6010150))

(assert (=> b!4979447 m!6010150))

(declare-fun m!6010154 () Bool)

(assert (=> b!4979447 m!6010154))

(assert (=> bm!347268 m!6009670))

(assert (=> b!4979443 m!6010150))

(assert (=> b!4979443 m!6010150))

(assert (=> b!4979443 m!6010154))

(assert (=> b!4979158 d!1603340))

(assert (=> b!4979158 d!1603134))

(assert (=> b!4979158 d!1603172))

(assert (=> b!4979158 d!1603176))

(declare-fun d!1603342 () Bool)

(declare-fun nullableFct!1258 (Regex!13683) Bool)

(assert (=> d!1603342 (= (nullable!4635 (regex!8450 rule!200)) (nullableFct!1258 (regex!8450 rule!200)))))

(declare-fun bs!1184107 () Bool)

(assert (= bs!1184107 d!1603342))

(declare-fun m!6010156 () Bool)

(assert (=> bs!1184107 m!6010156))

(assert (=> b!4978889 d!1603342))

(declare-fun d!1603344 () Bool)

(assert (=> d!1603344 (= (Forall!1800 lambda!247776) (choose!36751 lambda!247776))))

(declare-fun bs!1184108 () Bool)

(assert (= bs!1184108 d!1603344))

(declare-fun m!6010158 () Bool)

(assert (=> bs!1184108 m!6010158))

(assert (=> d!1603180 d!1603344))

(declare-fun d!1603346 () Bool)

(declare-fun res!2125725 () Bool)

(declare-fun e!3112320 () Bool)

(assert (=> d!1603346 (=> (not res!2125725) (not e!3112320))))

(assert (=> d!1603346 (= res!2125725 (= (csize!30634 (c!849434 totalInput!520)) (+ (size!38193 (left!42073 (c!849434 totalInput!520))) (size!38193 (right!42403 (c!849434 totalInput!520))))))))

(assert (=> d!1603346 (= (inv!75386 (c!849434 totalInput!520)) e!3112320)))

(declare-fun b!4979480 () Bool)

(declare-fun res!2125726 () Bool)

(assert (=> b!4979480 (=> (not res!2125726) (not e!3112320))))

(assert (=> b!4979480 (= res!2125726 (and (not (= (left!42073 (c!849434 totalInput!520)) Empty!15202)) (not (= (right!42403 (c!849434 totalInput!520)) Empty!15202))))))

(declare-fun b!4979481 () Bool)

(declare-fun res!2125727 () Bool)

(assert (=> b!4979481 (=> (not res!2125727) (not e!3112320))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2022 (Conc!15202) Int)

(assert (=> b!4979481 (= res!2125727 (= (cheight!15413 (c!849434 totalInput!520)) (+ (max!0 (height!2022 (left!42073 (c!849434 totalInput!520))) (height!2022 (right!42403 (c!849434 totalInput!520)))) 1)))))

(declare-fun b!4979482 () Bool)

(assert (=> b!4979482 (= e!3112320 (<= 0 (cheight!15413 (c!849434 totalInput!520))))))

(assert (= (and d!1603346 res!2125725) b!4979480))

(assert (= (and b!4979480 res!2125726) b!4979481))

(assert (= (and b!4979481 res!2125727) b!4979482))

(declare-fun m!6010160 () Bool)

(assert (=> d!1603346 m!6010160))

(declare-fun m!6010162 () Bool)

(assert (=> d!1603346 m!6010162))

(declare-fun m!6010164 () Bool)

(assert (=> b!4979481 m!6010164))

(declare-fun m!6010166 () Bool)

(assert (=> b!4979481 m!6010166))

(assert (=> b!4979481 m!6010164))

(assert (=> b!4979481 m!6010166))

(declare-fun m!6010168 () Bool)

(assert (=> b!4979481 m!6010168))

(assert (=> b!4979136 d!1603346))

(declare-fun b!4979483 () Bool)

(declare-fun res!2125730 () Bool)

(declare-fun e!3112325 () Bool)

(assert (=> b!4979483 (=> res!2125730 e!3112325)))

(declare-fun e!3112321 () Bool)

(assert (=> b!4979483 (= res!2125730 e!3112321)))

(declare-fun res!2125735 () Bool)

(assert (=> b!4979483 (=> (not res!2125735) (not e!3112321))))

(declare-fun lt!2057152 () Bool)

(assert (=> b!4979483 (= res!2125735 lt!2057152)))

(declare-fun d!1603348 () Bool)

(declare-fun e!3112323 () Bool)

(assert (=> d!1603348 e!3112323))

(declare-fun c!849581 () Bool)

(assert (=> d!1603348 (= c!849581 ((_ is EmptyExpr!13683) (regex!8450 rule!200)))))

(declare-fun e!3112327 () Bool)

(assert (=> d!1603348 (= lt!2057152 e!3112327)))

(declare-fun c!849583 () Bool)

(assert (=> d!1603348 (= c!849583 (isEmpty!31065 (list!18446 (charsOf!5448 (_1!34545 (get!20011 lt!2057013))))))))

(assert (=> d!1603348 (validRegex!5984 (regex!8450 rule!200))))

(assert (=> d!1603348 (= (matchR!6677 (regex!8450 rule!200) (list!18446 (charsOf!5448 (_1!34545 (get!20011 lt!2057013))))) lt!2057152)))

(declare-fun b!4979484 () Bool)

(assert (=> b!4979484 (= e!3112327 (nullable!4635 (regex!8450 rule!200)))))

(declare-fun b!4979485 () Bool)

(declare-fun res!2125734 () Bool)

(assert (=> b!4979485 (=> res!2125734 e!3112325)))

(assert (=> b!4979485 (= res!2125734 (not ((_ is ElementMatch!13683) (regex!8450 rule!200))))))

(declare-fun e!3112322 () Bool)

(assert (=> b!4979485 (= e!3112322 e!3112325)))

(declare-fun b!4979486 () Bool)

(declare-fun res!2125733 () Bool)

(declare-fun e!3112326 () Bool)

(assert (=> b!4979486 (=> res!2125733 e!3112326)))

(assert (=> b!4979486 (= res!2125733 (not (isEmpty!31065 (tail!9817 (list!18446 (charsOf!5448 (_1!34545 (get!20011 lt!2057013))))))))))

(declare-fun b!4979487 () Bool)

(declare-fun e!3112324 () Bool)

(assert (=> b!4979487 (= e!3112325 e!3112324)))

(declare-fun res!2125732 () Bool)

(assert (=> b!4979487 (=> (not res!2125732) (not e!3112324))))

(assert (=> b!4979487 (= res!2125732 (not lt!2057152))))

(declare-fun b!4979488 () Bool)

(assert (=> b!4979488 (= e!3112323 e!3112322)))

(declare-fun c!849582 () Bool)

(assert (=> b!4979488 (= c!849582 ((_ is EmptyLang!13683) (regex!8450 rule!200)))))

(declare-fun bm!347277 () Bool)

(declare-fun call!347282 () Bool)

(assert (=> bm!347277 (= call!347282 (isEmpty!31065 (list!18446 (charsOf!5448 (_1!34545 (get!20011 lt!2057013))))))))

(declare-fun b!4979489 () Bool)

(assert (=> b!4979489 (= e!3112324 e!3112326)))

(declare-fun res!2125729 () Bool)

(assert (=> b!4979489 (=> res!2125729 e!3112326)))

(assert (=> b!4979489 (= res!2125729 call!347282)))

(declare-fun b!4979490 () Bool)

(declare-fun res!2125728 () Bool)

(assert (=> b!4979490 (=> (not res!2125728) (not e!3112321))))

(assert (=> b!4979490 (= res!2125728 (isEmpty!31065 (tail!9817 (list!18446 (charsOf!5448 (_1!34545 (get!20011 lt!2057013)))))))))

(declare-fun b!4979491 () Bool)

(assert (=> b!4979491 (= e!3112326 (not (= (head!10684 (list!18446 (charsOf!5448 (_1!34545 (get!20011 lt!2057013))))) (c!849433 (regex!8450 rule!200)))))))

(declare-fun b!4979492 () Bool)

(assert (=> b!4979492 (= e!3112322 (not lt!2057152))))

(declare-fun b!4979493 () Bool)

(assert (=> b!4979493 (= e!3112323 (= lt!2057152 call!347282))))

(declare-fun b!4979494 () Bool)

(assert (=> b!4979494 (= e!3112321 (= (head!10684 (list!18446 (charsOf!5448 (_1!34545 (get!20011 lt!2057013))))) (c!849433 (regex!8450 rule!200))))))

(declare-fun b!4979495 () Bool)

(declare-fun res!2125731 () Bool)

(assert (=> b!4979495 (=> (not res!2125731) (not e!3112321))))

(assert (=> b!4979495 (= res!2125731 (not call!347282))))

(declare-fun b!4979496 () Bool)

(assert (=> b!4979496 (= e!3112327 (matchR!6677 (derivativeStep!3935 (regex!8450 rule!200) (head!10684 (list!18446 (charsOf!5448 (_1!34545 (get!20011 lt!2057013)))))) (tail!9817 (list!18446 (charsOf!5448 (_1!34545 (get!20011 lt!2057013)))))))))

(assert (= (and d!1603348 c!849583) b!4979484))

(assert (= (and d!1603348 (not c!849583)) b!4979496))

(assert (= (and d!1603348 c!849581) b!4979493))

(assert (= (and d!1603348 (not c!849581)) b!4979488))

(assert (= (and b!4979488 c!849582) b!4979492))

(assert (= (and b!4979488 (not c!849582)) b!4979485))

(assert (= (and b!4979485 (not res!2125734)) b!4979483))

(assert (= (and b!4979483 res!2125735) b!4979495))

(assert (= (and b!4979495 res!2125731) b!4979490))

(assert (= (and b!4979490 res!2125728) b!4979494))

(assert (= (and b!4979483 (not res!2125730)) b!4979487))

(assert (= (and b!4979487 res!2125732) b!4979489))

(assert (= (and b!4979489 (not res!2125729)) b!4979486))

(assert (= (and b!4979486 (not res!2125733)) b!4979491))

(assert (= (or b!4979493 b!4979489 b!4979495) bm!347277))

(assert (=> d!1603348 m!6009706))

(declare-fun m!6010170 () Bool)

(assert (=> d!1603348 m!6010170))

(assert (=> d!1603348 m!6009424))

(assert (=> b!4979491 m!6009706))

(declare-fun m!6010172 () Bool)

(assert (=> b!4979491 m!6010172))

(assert (=> b!4979484 m!6009428))

(assert (=> b!4979494 m!6009706))

(assert (=> b!4979494 m!6010172))

(assert (=> b!4979496 m!6009706))

(assert (=> b!4979496 m!6010172))

(assert (=> b!4979496 m!6010172))

(declare-fun m!6010174 () Bool)

(assert (=> b!4979496 m!6010174))

(assert (=> b!4979496 m!6009706))

(declare-fun m!6010176 () Bool)

(assert (=> b!4979496 m!6010176))

(assert (=> b!4979496 m!6010174))

(assert (=> b!4979496 m!6010176))

(declare-fun m!6010178 () Bool)

(assert (=> b!4979496 m!6010178))

(assert (=> b!4979490 m!6009706))

(assert (=> b!4979490 m!6010176))

(assert (=> b!4979490 m!6010176))

(declare-fun m!6010180 () Bool)

(assert (=> b!4979490 m!6010180))

(assert (=> bm!347277 m!6009706))

(assert (=> bm!347277 m!6010170))

(assert (=> b!4979486 m!6009706))

(assert (=> b!4979486 m!6010176))

(assert (=> b!4979486 m!6010176))

(assert (=> b!4979486 m!6010180))

(assert (=> b!4979160 d!1603348))

(declare-fun d!1603350 () Bool)

(assert (=> d!1603350 (= (list!18446 (charsOf!5448 (_1!34545 (get!20011 lt!2057013)))) (list!18448 (c!849434 (charsOf!5448 (_1!34545 (get!20011 lt!2057013))))))))

(declare-fun bs!1184109 () Bool)

(assert (= bs!1184109 d!1603350))

(declare-fun m!6010182 () Bool)

(assert (=> bs!1184109 m!6010182))

(assert (=> b!4979160 d!1603350))

(declare-fun d!1603352 () Bool)

(declare-fun lt!2057156 () BalanceConc!29834)

(assert (=> d!1603352 (= (list!18446 lt!2057156) (originalCharacters!8709 (_1!34545 (get!20011 lt!2057013))))))

(assert (=> d!1603352 (= lt!2057156 (dynLambda!23326 (toChars!11288 (transformation!8450 (rule!11698 (_1!34545 (get!20011 lt!2057013))))) (value!270245 (_1!34545 (get!20011 lt!2057013)))))))

(assert (=> d!1603352 (= (charsOf!5448 (_1!34545 (get!20011 lt!2057013))) lt!2057156)))

(declare-fun b_lambda!197655 () Bool)

(assert (=> (not b_lambda!197655) (not d!1603352)))

(declare-fun t!369731 () Bool)

(declare-fun tb!261553 () Bool)

(assert (=> (and b!4978821 (= (toChars!11288 (transformation!8450 rule!200)) (toChars!11288 (transformation!8450 (rule!11698 (_1!34545 (get!20011 lt!2057013)))))) t!369731) tb!261553))

(declare-fun b!4979507 () Bool)

(declare-fun e!3112333 () Bool)

(declare-fun tp!1396210 () Bool)

(assert (=> b!4979507 (= e!3112333 (and (inv!75380 (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 (rule!11698 (_1!34545 (get!20011 lt!2057013))))) (value!270245 (_1!34545 (get!20011 lt!2057013)))))) tp!1396210))))

(declare-fun result!326816 () Bool)

(assert (=> tb!261553 (= result!326816 (and (inv!75382 (dynLambda!23326 (toChars!11288 (transformation!8450 (rule!11698 (_1!34545 (get!20011 lt!2057013))))) (value!270245 (_1!34545 (get!20011 lt!2057013))))) e!3112333))))

(assert (= tb!261553 b!4979507))

(declare-fun m!6010192 () Bool)

(assert (=> b!4979507 m!6010192))

(declare-fun m!6010194 () Bool)

(assert (=> tb!261553 m!6010194))

(assert (=> d!1603352 t!369731))

(declare-fun b_and!349537 () Bool)

(assert (= b_and!349531 (and (=> t!369731 result!326816) b_and!349537)))

(declare-fun m!6010196 () Bool)

(assert (=> d!1603352 m!6010196))

(declare-fun m!6010198 () Bool)

(assert (=> d!1603352 m!6010198))

(assert (=> b!4979160 d!1603352))

(assert (=> b!4979160 d!1603328))

(declare-fun d!1603358 () Bool)

(assert (=> d!1603358 (= (isEmpty!31070 lt!2057013) (not ((_ is Some!14519) lt!2057013)))))

(assert (=> d!1603196 d!1603358))

(declare-fun d!1603360 () Bool)

(assert (=> d!1603360 (= (isEmpty!31065 (_1!34546 lt!2057016)) ((_ is Nil!57572) (_1!34546 lt!2057016)))))

(assert (=> d!1603196 d!1603360))

(declare-fun d!1603362 () Bool)

(declare-fun lt!2057177 () tuple2!62486)

(assert (=> d!1603362 (= (++!12547 (_1!34546 lt!2057177) (_2!34546 lt!2057177)) lt!2056777)))

(declare-fun sizeTr!366 (List!57696 Int) Int)

(assert (=> d!1603362 (= lt!2057177 (findLongestMatchInner!1894 (regex!8450 rule!200) Nil!57572 0 lt!2056777 lt!2056777 (sizeTr!366 lt!2056777 0)))))

(declare-fun lt!2057180 () Unit!148602)

(declare-fun lt!2057181 () Unit!148602)

(assert (=> d!1603362 (= lt!2057180 lt!2057181)))

(declare-fun lt!2057179 () List!57696)

(declare-fun lt!2057176 () Int)

(assert (=> d!1603362 (= (sizeTr!366 lt!2057179 lt!2057176) (+ (size!38191 lt!2057179) lt!2057176))))

(declare-fun lemmaSizeTrEqualsSize!365 (List!57696 Int) Unit!148602)

(assert (=> d!1603362 (= lt!2057181 (lemmaSizeTrEqualsSize!365 lt!2057179 lt!2057176))))

(assert (=> d!1603362 (= lt!2057176 0)))

(assert (=> d!1603362 (= lt!2057179 Nil!57572)))

(declare-fun lt!2057174 () Unit!148602)

(declare-fun lt!2057178 () Unit!148602)

(assert (=> d!1603362 (= lt!2057174 lt!2057178)))

(declare-fun lt!2057175 () Int)

(assert (=> d!1603362 (= (sizeTr!366 lt!2056777 lt!2057175) (+ (size!38191 lt!2056777) lt!2057175))))

(assert (=> d!1603362 (= lt!2057178 (lemmaSizeTrEqualsSize!365 lt!2056777 lt!2057175))))

(assert (=> d!1603362 (= lt!2057175 0)))

(assert (=> d!1603362 (validRegex!5984 (regex!8450 rule!200))))

(assert (=> d!1603362 (= (findLongestMatch!1710 (regex!8450 rule!200) lt!2056777) lt!2057177)))

(declare-fun bs!1184113 () Bool)

(assert (= bs!1184113 d!1603362))

(declare-fun m!6010222 () Bool)

(assert (=> bs!1184113 m!6010222))

(declare-fun m!6010224 () Bool)

(assert (=> bs!1184113 m!6010224))

(declare-fun m!6010226 () Bool)

(assert (=> bs!1184113 m!6010226))

(declare-fun m!6010228 () Bool)

(assert (=> bs!1184113 m!6010228))

(declare-fun m!6010230 () Bool)

(assert (=> bs!1184113 m!6010230))

(assert (=> bs!1184113 m!6010228))

(assert (=> bs!1184113 m!6009424))

(assert (=> bs!1184113 m!6009380))

(declare-fun m!6010232 () Bool)

(assert (=> bs!1184113 m!6010232))

(declare-fun m!6010234 () Bool)

(assert (=> bs!1184113 m!6010234))

(declare-fun m!6010236 () Bool)

(assert (=> bs!1184113 m!6010236))

(assert (=> d!1603196 d!1603362))

(assert (=> d!1603196 d!1603220))

(declare-fun d!1603378 () Bool)

(assert (=> d!1603378 true))

(declare-fun lambda!247779 () Int)

(declare-fun order!26459 () Int)

(declare-fun dynLambda!23327 (Int Int) Int)

(assert (=> d!1603378 (< (dynLambda!23318 order!26453 (toValue!11429 (transformation!8450 rule!200))) (dynLambda!23327 order!26459 lambda!247779))))

(declare-fun Forall2!1294 (Int) Bool)

(assert (=> d!1603378 (= (equivClasses!3565 (toChars!11288 (transformation!8450 rule!200)) (toValue!11429 (transformation!8450 rule!200))) (Forall2!1294 lambda!247779))))

(declare-fun bs!1184115 () Bool)

(assert (= bs!1184115 d!1603378))

(declare-fun m!6010280 () Bool)

(assert (=> bs!1184115 m!6010280))

(assert (=> b!4978915 d!1603378))

(declare-fun b!4979570 () Bool)

(declare-fun e!3112368 () Regex!13683)

(assert (=> b!4979570 (= e!3112368 EmptyLang!13683)))

(declare-fun d!1603392 () Bool)

(declare-fun lt!2057197 () Regex!13683)

(assert (=> d!1603392 (validRegex!5984 lt!2057197)))

(assert (=> d!1603392 (= lt!2057197 e!3112368)))

(declare-fun c!849607 () Bool)

(assert (=> d!1603392 (= c!849607 (or ((_ is EmptyExpr!13683) (regex!8450 rule!200)) ((_ is EmptyLang!13683) (regex!8450 rule!200))))))

(assert (=> d!1603392 (validRegex!5984 (regex!8450 rule!200))))

(assert (=> d!1603392 (= (derivativeStep!3935 (regex!8450 rule!200) call!347241) lt!2057197)))

(declare-fun bm!347290 () Bool)

(declare-fun call!347295 () Regex!13683)

(declare-fun c!849605 () Bool)

(assert (=> bm!347290 (= call!347295 (derivativeStep!3935 (ite c!849605 (regOne!27879 (regex!8450 rule!200)) (regTwo!27878 (regex!8450 rule!200))) call!347241))))

(declare-fun call!347297 () Regex!13683)

(declare-fun c!849608 () Bool)

(declare-fun bm!347291 () Bool)

(assert (=> bm!347291 (= call!347297 (derivativeStep!3935 (ite c!849605 (regTwo!27879 (regex!8450 rule!200)) (ite c!849608 (reg!14012 (regex!8450 rule!200)) (regOne!27878 (regex!8450 rule!200)))) call!347241))))

(declare-fun b!4979571 () Bool)

(declare-fun e!3112371 () Regex!13683)

(declare-fun call!347296 () Regex!13683)

(assert (=> b!4979571 (= e!3112371 (Union!13683 (Concat!22443 call!347296 (regTwo!27878 (regex!8450 rule!200))) EmptyLang!13683))))

(declare-fun b!4979572 () Bool)

(declare-fun e!3112369 () Regex!13683)

(declare-fun e!3112372 () Regex!13683)

(assert (=> b!4979572 (= e!3112369 e!3112372)))

(assert (=> b!4979572 (= c!849608 ((_ is Star!13683) (regex!8450 rule!200)))))

(declare-fun b!4979573 () Bool)

(declare-fun e!3112370 () Regex!13683)

(assert (=> b!4979573 (= e!3112368 e!3112370)))

(declare-fun c!849609 () Bool)

(assert (=> b!4979573 (= c!849609 ((_ is ElementMatch!13683) (regex!8450 rule!200)))))

(declare-fun b!4979574 () Bool)

(assert (=> b!4979574 (= e!3112371 (Union!13683 (Concat!22443 call!347296 (regTwo!27878 (regex!8450 rule!200))) call!347295))))

(declare-fun b!4979575 () Bool)

(assert (=> b!4979575 (= e!3112370 (ite (= call!347241 (c!849433 (regex!8450 rule!200))) EmptyExpr!13683 EmptyLang!13683))))

(declare-fun bm!347292 () Bool)

(declare-fun call!347298 () Regex!13683)

(assert (=> bm!347292 (= call!347296 call!347298)))

(declare-fun b!4979576 () Bool)

(assert (=> b!4979576 (= c!849605 ((_ is Union!13683) (regex!8450 rule!200)))))

(assert (=> b!4979576 (= e!3112370 e!3112369)))

(declare-fun bm!347293 () Bool)

(assert (=> bm!347293 (= call!347298 call!347297)))

(declare-fun b!4979577 () Bool)

(assert (=> b!4979577 (= e!3112369 (Union!13683 call!347295 call!347297))))

(declare-fun b!4979578 () Bool)

(assert (=> b!4979578 (= e!3112372 (Concat!22443 call!347298 (regex!8450 rule!200)))))

(declare-fun b!4979579 () Bool)

(declare-fun c!849606 () Bool)

(assert (=> b!4979579 (= c!849606 (nullable!4635 (regOne!27878 (regex!8450 rule!200))))))

(assert (=> b!4979579 (= e!3112372 e!3112371)))

(assert (= (and d!1603392 c!849607) b!4979570))

(assert (= (and d!1603392 (not c!849607)) b!4979573))

(assert (= (and b!4979573 c!849609) b!4979575))

(assert (= (and b!4979573 (not c!849609)) b!4979576))

(assert (= (and b!4979576 c!849605) b!4979577))

(assert (= (and b!4979576 (not c!849605)) b!4979572))

(assert (= (and b!4979572 c!849608) b!4979578))

(assert (= (and b!4979572 (not c!849608)) b!4979579))

(assert (= (and b!4979579 c!849606) b!4979574))

(assert (= (and b!4979579 (not c!849606)) b!4979571))

(assert (= (or b!4979574 b!4979571) bm!347292))

(assert (= (or b!4979578 bm!347292) bm!347293))

(assert (= (or b!4979577 bm!347293) bm!347291))

(assert (= (or b!4979577 b!4979574) bm!347290))

(declare-fun m!6010310 () Bool)

(assert (=> d!1603392 m!6010310))

(assert (=> d!1603392 m!6009424))

(declare-fun m!6010312 () Bool)

(assert (=> bm!347290 m!6010312))

(declare-fun m!6010314 () Bool)

(assert (=> bm!347291 m!6010314))

(declare-fun m!6010316 () Bool)

(assert (=> b!4979579 m!6010316))

(assert (=> bm!347235 d!1603392))

(assert (=> d!1603178 d!1603134))

(assert (=> d!1603178 d!1603172))

(assert (=> d!1603178 d!1603176))

(declare-fun d!1603408 () Bool)

(declare-fun e!3112390 () Bool)

(assert (=> d!1603408 e!3112390))

(declare-fun res!2125767 () Bool)

(assert (=> d!1603408 (=> res!2125767 e!3112390)))

(assert (=> d!1603408 (= res!2125767 (isEmpty!31065 (_1!34546 (findLongestMatchInner!1894 (regex!8450 rule!200) Nil!57572 (size!38191 Nil!57572) lt!2056777 lt!2056777 (size!38191 lt!2056777)))))))

(assert (=> d!1603408 true))

(declare-fun _$92!539 () Unit!148602)

(assert (=> d!1603408 (= (choose!36749 (regex!8450 rule!200) lt!2056777) _$92!539)))

(declare-fun b!4979609 () Bool)

(assert (=> b!4979609 (= e!3112390 (matchR!6677 (regex!8450 rule!200) (_1!34546 (findLongestMatchInner!1894 (regex!8450 rule!200) Nil!57572 (size!38191 Nil!57572) lt!2056777 lt!2056777 (size!38191 lt!2056777)))))))

(assert (= (and d!1603408 (not res!2125767)) b!4979609))

(assert (=> d!1603408 m!6009378))

(assert (=> d!1603408 m!6009380))

(assert (=> d!1603408 m!6009378))

(assert (=> d!1603408 m!6009380))

(assert (=> d!1603408 m!6009382))

(assert (=> d!1603408 m!6009670))

(assert (=> b!4979609 m!6009378))

(assert (=> b!4979609 m!6009380))

(assert (=> b!4979609 m!6009378))

(assert (=> b!4979609 m!6009380))

(assert (=> b!4979609 m!6009382))

(assert (=> b!4979609 m!6009674))

(assert (=> d!1603178 d!1603408))

(declare-fun b!4979633 () Bool)

(declare-fun e!3112408 () Bool)

(declare-fun call!347309 () Bool)

(assert (=> b!4979633 (= e!3112408 call!347309)))

(declare-fun b!4979634 () Bool)

(declare-fun res!2125778 () Bool)

(declare-fun e!3112414 () Bool)

(assert (=> b!4979634 (=> (not res!2125778) (not e!3112414))))

(declare-fun call!347308 () Bool)

(assert (=> b!4979634 (= res!2125778 call!347308)))

(declare-fun e!3112411 () Bool)

(assert (=> b!4979634 (= e!3112411 e!3112414)))

(declare-fun d!1603412 () Bool)

(declare-fun res!2125779 () Bool)

(declare-fun e!3112410 () Bool)

(assert (=> d!1603412 (=> res!2125779 e!3112410)))

(assert (=> d!1603412 (= res!2125779 ((_ is ElementMatch!13683) (regex!8450 rule!200)))))

(assert (=> d!1603412 (= (validRegex!5984 (regex!8450 rule!200)) e!3112410)))

(declare-fun b!4979635 () Bool)

(declare-fun e!3112413 () Bool)

(assert (=> b!4979635 (= e!3112413 e!3112408)))

(declare-fun res!2125782 () Bool)

(assert (=> b!4979635 (=> (not res!2125782) (not e!3112408))))

(assert (=> b!4979635 (= res!2125782 call!347308)))

(declare-fun b!4979636 () Bool)

(declare-fun e!3112412 () Bool)

(assert (=> b!4979636 (= e!3112412 e!3112411)))

(declare-fun c!849627 () Bool)

(assert (=> b!4979636 (= c!849627 ((_ is Union!13683) (regex!8450 rule!200)))))

(declare-fun b!4979637 () Bool)

(declare-fun e!3112409 () Bool)

(declare-fun call!347310 () Bool)

(assert (=> b!4979637 (= e!3112409 call!347310)))

(declare-fun b!4979638 () Bool)

(assert (=> b!4979638 (= e!3112412 e!3112409)))

(declare-fun res!2125780 () Bool)

(assert (=> b!4979638 (= res!2125780 (not (nullable!4635 (reg!14012 (regex!8450 rule!200)))))))

(assert (=> b!4979638 (=> (not res!2125780) (not e!3112409))))

(declare-fun bm!347303 () Bool)

(assert (=> bm!347303 (= call!347309 (validRegex!5984 (ite c!849627 (regTwo!27879 (regex!8450 rule!200)) (regTwo!27878 (regex!8450 rule!200)))))))

(declare-fun b!4979639 () Bool)

(declare-fun res!2125781 () Bool)

(assert (=> b!4979639 (=> res!2125781 e!3112413)))

(assert (=> b!4979639 (= res!2125781 (not ((_ is Concat!22443) (regex!8450 rule!200))))))

(assert (=> b!4979639 (= e!3112411 e!3112413)))

(declare-fun bm!347304 () Bool)

(declare-fun c!849628 () Bool)

(assert (=> bm!347304 (= call!347310 (validRegex!5984 (ite c!849628 (reg!14012 (regex!8450 rule!200)) (ite c!849627 (regOne!27879 (regex!8450 rule!200)) (regOne!27878 (regex!8450 rule!200))))))))

(declare-fun b!4979640 () Bool)

(assert (=> b!4979640 (= e!3112410 e!3112412)))

(assert (=> b!4979640 (= c!849628 ((_ is Star!13683) (regex!8450 rule!200)))))

(declare-fun b!4979641 () Bool)

(assert (=> b!4979641 (= e!3112414 call!347309)))

(declare-fun bm!347305 () Bool)

(assert (=> bm!347305 (= call!347308 call!347310)))

(assert (= (and d!1603412 (not res!2125779)) b!4979640))

(assert (= (and b!4979640 c!849628) b!4979638))

(assert (= (and b!4979640 (not c!849628)) b!4979636))

(assert (= (and b!4979638 res!2125780) b!4979637))

(assert (= (and b!4979636 c!849627) b!4979634))

(assert (= (and b!4979636 (not c!849627)) b!4979639))

(assert (= (and b!4979634 res!2125778) b!4979641))

(assert (= (and b!4979639 (not res!2125781)) b!4979635))

(assert (= (and b!4979635 res!2125782) b!4979633))

(assert (= (or b!4979634 b!4979635) bm!347305))

(assert (= (or b!4979641 b!4979633) bm!347303))

(assert (= (or b!4979637 bm!347305) bm!347304))

(declare-fun m!6010332 () Bool)

(assert (=> b!4979638 m!6010332))

(declare-fun m!6010334 () Bool)

(assert (=> bm!347303 m!6010334))

(declare-fun m!6010336 () Bool)

(assert (=> bm!347304 m!6010336))

(assert (=> d!1603178 d!1603412))

(declare-fun d!1603416 () Bool)

(assert (=> d!1603416 (= (isEmpty!31065 (_1!34546 (findLongestMatchInner!1894 (regex!8450 rule!200) Nil!57572 (size!38191 Nil!57572) lt!2056777 lt!2056777 (size!38191 lt!2056777)))) ((_ is Nil!57572) (_1!34546 (findLongestMatchInner!1894 (regex!8450 rule!200) Nil!57572 (size!38191 Nil!57572) lt!2056777 lt!2056777 (size!38191 lt!2056777)))))))

(assert (=> d!1603178 d!1603416))

(declare-fun d!1603418 () Bool)

(assert (=> d!1603418 (= (inv!75382 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776)))) (isBalanced!4220 (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776))))))))

(declare-fun bs!1184124 () Bool)

(assert (= bs!1184124 d!1603418))

(declare-fun m!6010348 () Bool)

(assert (=> bs!1184124 m!6010348))

(assert (=> tb!261549 d!1603418))

(declare-fun d!1603420 () Bool)

(declare-fun lt!2057207 () Int)

(assert (=> d!1603420 (>= lt!2057207 0)))

(declare-fun e!3112417 () Int)

(assert (=> d!1603420 (= lt!2057207 e!3112417)))

(declare-fun c!849629 () Bool)

(assert (=> d!1603420 (= c!849629 ((_ is Nil!57572) (list!18446 (_1!34543 lt!2056776))))))

(assert (=> d!1603420 (= (size!38191 (list!18446 (_1!34543 lt!2056776))) lt!2057207)))

(declare-fun b!4979643 () Bool)

(assert (=> b!4979643 (= e!3112417 0)))

(declare-fun b!4979644 () Bool)

(assert (=> b!4979644 (= e!3112417 (+ 1 (size!38191 (t!369708 (list!18446 (_1!34543 lt!2056776))))))))

(assert (= (and d!1603420 c!849629) b!4979643))

(assert (= (and d!1603420 (not c!849629)) b!4979644))

(declare-fun m!6010352 () Bool)

(assert (=> b!4979644 m!6010352))

(assert (=> d!1603202 d!1603420))

(assert (=> d!1603202 d!1603186))

(declare-fun d!1603424 () Bool)

(declare-fun lt!2057211 () Int)

(assert (=> d!1603424 (= lt!2057211 (size!38191 (list!18448 (c!849434 (_1!34543 lt!2056776)))))))

(assert (=> d!1603424 (= lt!2057211 (ite ((_ is Empty!15202) (c!849434 (_1!34543 lt!2056776))) 0 (ite ((_ is Leaf!25252) (c!849434 (_1!34543 lt!2056776))) (csize!30635 (c!849434 (_1!34543 lt!2056776))) (csize!30634 (c!849434 (_1!34543 lt!2056776))))))))

(assert (=> d!1603424 (= (size!38193 (c!849434 (_1!34543 lt!2056776))) lt!2057211)))

(declare-fun bs!1184127 () Bool)

(assert (= bs!1184127 d!1603424))

(assert (=> bs!1184127 m!6009686))

(assert (=> bs!1184127 m!6009686))

(declare-fun m!6010360 () Bool)

(assert (=> bs!1184127 m!6010360))

(assert (=> d!1603202 d!1603424))

(assert (=> b!4979122 d!1603340))

(assert (=> b!4979122 d!1603134))

(assert (=> b!4979122 d!1603172))

(assert (=> b!4979122 d!1603176))

(declare-fun d!1603432 () Bool)

(declare-fun lt!2057212 () Int)

(assert (=> d!1603432 (>= lt!2057212 0)))

(declare-fun e!3112418 () Int)

(assert (=> d!1603432 (= lt!2057212 e!3112418)))

(declare-fun c!849630 () Bool)

(assert (=> d!1603432 (= c!849630 ((_ is Nil!57572) (_1!34546 lt!2056979)))))

(assert (=> d!1603432 (= (size!38191 (_1!34546 lt!2056979)) lt!2057212)))

(declare-fun b!4979645 () Bool)

(assert (=> b!4979645 (= e!3112418 0)))

(declare-fun b!4979646 () Bool)

(assert (=> b!4979646 (= e!3112418 (+ 1 (size!38191 (t!369708 (_1!34546 lt!2056979)))))))

(assert (= (and d!1603432 c!849630) b!4979645))

(assert (= (and d!1603432 (not c!849630)) b!4979646))

(declare-fun m!6010362 () Bool)

(assert (=> b!4979646 m!6010362))

(assert (=> b!4979107 d!1603432))

(assert (=> b!4979107 d!1603172))

(declare-fun b!4979647 () Bool)

(declare-fun res!2125785 () Bool)

(declare-fun e!3112423 () Bool)

(assert (=> b!4979647 (=> res!2125785 e!3112423)))

(declare-fun e!3112419 () Bool)

(assert (=> b!4979647 (= res!2125785 e!3112419)))

(declare-fun res!2125790 () Bool)

(assert (=> b!4979647 (=> (not res!2125790) (not e!3112419))))

(declare-fun lt!2057213 () Bool)

(assert (=> b!4979647 (= res!2125790 lt!2057213)))

(declare-fun d!1603434 () Bool)

(declare-fun e!3112421 () Bool)

(assert (=> d!1603434 e!3112421))

(declare-fun c!849632 () Bool)

(assert (=> d!1603434 (= c!849632 ((_ is EmptyExpr!13683) (derivativeStep!3935 (regex!8450 rule!200) (head!10684 (_1!34546 lt!2056772)))))))

(declare-fun e!3112425 () Bool)

(assert (=> d!1603434 (= lt!2057213 e!3112425)))

(declare-fun c!849634 () Bool)

(assert (=> d!1603434 (= c!849634 (isEmpty!31065 (tail!9817 (_1!34546 lt!2056772))))))

(assert (=> d!1603434 (validRegex!5984 (derivativeStep!3935 (regex!8450 rule!200) (head!10684 (_1!34546 lt!2056772))))))

(assert (=> d!1603434 (= (matchR!6677 (derivativeStep!3935 (regex!8450 rule!200) (head!10684 (_1!34546 lt!2056772))) (tail!9817 (_1!34546 lt!2056772))) lt!2057213)))

(declare-fun b!4979648 () Bool)

(assert (=> b!4979648 (= e!3112425 (nullable!4635 (derivativeStep!3935 (regex!8450 rule!200) (head!10684 (_1!34546 lt!2056772)))))))

(declare-fun b!4979649 () Bool)

(declare-fun res!2125789 () Bool)

(assert (=> b!4979649 (=> res!2125789 e!3112423)))

(assert (=> b!4979649 (= res!2125789 (not ((_ is ElementMatch!13683) (derivativeStep!3935 (regex!8450 rule!200) (head!10684 (_1!34546 lt!2056772))))))))

(declare-fun e!3112420 () Bool)

(assert (=> b!4979649 (= e!3112420 e!3112423)))

(declare-fun b!4979650 () Bool)

(declare-fun res!2125788 () Bool)

(declare-fun e!3112424 () Bool)

(assert (=> b!4979650 (=> res!2125788 e!3112424)))

(assert (=> b!4979650 (= res!2125788 (not (isEmpty!31065 (tail!9817 (tail!9817 (_1!34546 lt!2056772))))))))

(declare-fun b!4979651 () Bool)

(declare-fun e!3112422 () Bool)

(assert (=> b!4979651 (= e!3112423 e!3112422)))

(declare-fun res!2125787 () Bool)

(assert (=> b!4979651 (=> (not res!2125787) (not e!3112422))))

(assert (=> b!4979651 (= res!2125787 (not lt!2057213))))

(declare-fun b!4979652 () Bool)

(assert (=> b!4979652 (= e!3112421 e!3112420)))

(declare-fun c!849633 () Bool)

(assert (=> b!4979652 (= c!849633 ((_ is EmptyLang!13683) (derivativeStep!3935 (regex!8450 rule!200) (head!10684 (_1!34546 lt!2056772)))))))

(declare-fun bm!347306 () Bool)

(declare-fun call!347311 () Bool)

(assert (=> bm!347306 (= call!347311 (isEmpty!31065 (tail!9817 (_1!34546 lt!2056772))))))

(declare-fun b!4979653 () Bool)

(assert (=> b!4979653 (= e!3112422 e!3112424)))

(declare-fun res!2125784 () Bool)

(assert (=> b!4979653 (=> res!2125784 e!3112424)))

(assert (=> b!4979653 (= res!2125784 call!347311)))

(declare-fun b!4979654 () Bool)

(declare-fun res!2125783 () Bool)

(assert (=> b!4979654 (=> (not res!2125783) (not e!3112419))))

(assert (=> b!4979654 (= res!2125783 (isEmpty!31065 (tail!9817 (tail!9817 (_1!34546 lt!2056772)))))))

(declare-fun b!4979655 () Bool)

(assert (=> b!4979655 (= e!3112424 (not (= (head!10684 (tail!9817 (_1!34546 lt!2056772))) (c!849433 (derivativeStep!3935 (regex!8450 rule!200) (head!10684 (_1!34546 lt!2056772)))))))))

(declare-fun b!4979656 () Bool)

(assert (=> b!4979656 (= e!3112420 (not lt!2057213))))

(declare-fun b!4979657 () Bool)

(assert (=> b!4979657 (= e!3112421 (= lt!2057213 call!347311))))

(declare-fun b!4979658 () Bool)

(assert (=> b!4979658 (= e!3112419 (= (head!10684 (tail!9817 (_1!34546 lt!2056772))) (c!849433 (derivativeStep!3935 (regex!8450 rule!200) (head!10684 (_1!34546 lt!2056772))))))))

(declare-fun b!4979659 () Bool)

(declare-fun res!2125786 () Bool)

(assert (=> b!4979659 (=> (not res!2125786) (not e!3112419))))

(assert (=> b!4979659 (= res!2125786 (not call!347311))))

(declare-fun b!4979660 () Bool)

(assert (=> b!4979660 (= e!3112425 (matchR!6677 (derivativeStep!3935 (derivativeStep!3935 (regex!8450 rule!200) (head!10684 (_1!34546 lt!2056772))) (head!10684 (tail!9817 (_1!34546 lt!2056772)))) (tail!9817 (tail!9817 (_1!34546 lt!2056772)))))))

(assert (= (and d!1603434 c!849634) b!4979648))

(assert (= (and d!1603434 (not c!849634)) b!4979660))

(assert (= (and d!1603434 c!849632) b!4979657))

(assert (= (and d!1603434 (not c!849632)) b!4979652))

(assert (= (and b!4979652 c!849633) b!4979656))

(assert (= (and b!4979652 (not c!849633)) b!4979649))

(assert (= (and b!4979649 (not res!2125789)) b!4979647))

(assert (= (and b!4979647 res!2125790) b!4979659))

(assert (= (and b!4979659 res!2125786) b!4979654))

(assert (= (and b!4979654 res!2125783) b!4979658))

(assert (= (and b!4979647 (not res!2125785)) b!4979651))

(assert (= (and b!4979651 res!2125787) b!4979653))

(assert (= (and b!4979653 (not res!2125784)) b!4979650))

(assert (= (and b!4979650 (not res!2125788)) b!4979655))

(assert (= (or b!4979657 b!4979653 b!4979659) bm!347306))

(assert (=> d!1603434 m!6009432))

(assert (=> d!1603434 m!6009436))

(assert (=> d!1603434 m!6009430))

(declare-fun m!6010364 () Bool)

(assert (=> d!1603434 m!6010364))

(assert (=> b!4979655 m!6009432))

(declare-fun m!6010366 () Bool)

(assert (=> b!4979655 m!6010366))

(assert (=> b!4979648 m!6009430))

(declare-fun m!6010368 () Bool)

(assert (=> b!4979648 m!6010368))

(assert (=> b!4979658 m!6009432))

(assert (=> b!4979658 m!6010366))

(assert (=> b!4979660 m!6009432))

(assert (=> b!4979660 m!6010366))

(assert (=> b!4979660 m!6009430))

(assert (=> b!4979660 m!6010366))

(declare-fun m!6010370 () Bool)

(assert (=> b!4979660 m!6010370))

(assert (=> b!4979660 m!6009432))

(declare-fun m!6010372 () Bool)

(assert (=> b!4979660 m!6010372))

(assert (=> b!4979660 m!6010370))

(assert (=> b!4979660 m!6010372))

(declare-fun m!6010374 () Bool)

(assert (=> b!4979660 m!6010374))

(assert (=> b!4979654 m!6009432))

(assert (=> b!4979654 m!6010372))

(assert (=> b!4979654 m!6010372))

(declare-fun m!6010380 () Bool)

(assert (=> b!4979654 m!6010380))

(assert (=> bm!347306 m!6009432))

(assert (=> bm!347306 m!6009436))

(assert (=> b!4979650 m!6009432))

(assert (=> b!4979650 m!6010372))

(assert (=> b!4979650 m!6010372))

(assert (=> b!4979650 m!6010380))

(assert (=> b!4978901 d!1603434))

(declare-fun b!4979666 () Bool)

(declare-fun e!3112430 () Regex!13683)

(assert (=> b!4979666 (= e!3112430 EmptyLang!13683)))

(declare-fun d!1603438 () Bool)

(declare-fun lt!2057218 () Regex!13683)

(assert (=> d!1603438 (validRegex!5984 lt!2057218)))

(assert (=> d!1603438 (= lt!2057218 e!3112430)))

(declare-fun c!849637 () Bool)

(assert (=> d!1603438 (= c!849637 (or ((_ is EmptyExpr!13683) (regex!8450 rule!200)) ((_ is EmptyLang!13683) (regex!8450 rule!200))))))

(assert (=> d!1603438 (validRegex!5984 (regex!8450 rule!200))))

(assert (=> d!1603438 (= (derivativeStep!3935 (regex!8450 rule!200) (head!10684 (_1!34546 lt!2056772))) lt!2057218)))

(declare-fun call!347312 () Regex!13683)

(declare-fun c!849635 () Bool)

(declare-fun bm!347307 () Bool)

(assert (=> bm!347307 (= call!347312 (derivativeStep!3935 (ite c!849635 (regOne!27879 (regex!8450 rule!200)) (regTwo!27878 (regex!8450 rule!200))) (head!10684 (_1!34546 lt!2056772))))))

(declare-fun call!347314 () Regex!13683)

(declare-fun c!849639 () Bool)

(declare-fun bm!347308 () Bool)

(assert (=> bm!347308 (= call!347314 (derivativeStep!3935 (ite c!849635 (regTwo!27879 (regex!8450 rule!200)) (ite c!849639 (reg!14012 (regex!8450 rule!200)) (regOne!27878 (regex!8450 rule!200)))) (head!10684 (_1!34546 lt!2056772))))))

(declare-fun b!4979667 () Bool)

(declare-fun e!3112433 () Regex!13683)

(declare-fun call!347313 () Regex!13683)

(assert (=> b!4979667 (= e!3112433 (Union!13683 (Concat!22443 call!347313 (regTwo!27878 (regex!8450 rule!200))) EmptyLang!13683))))

(declare-fun b!4979668 () Bool)

(declare-fun e!3112431 () Regex!13683)

(declare-fun e!3112434 () Regex!13683)

(assert (=> b!4979668 (= e!3112431 e!3112434)))

(assert (=> b!4979668 (= c!849639 ((_ is Star!13683) (regex!8450 rule!200)))))

(declare-fun b!4979669 () Bool)

(declare-fun e!3112432 () Regex!13683)

(assert (=> b!4979669 (= e!3112430 e!3112432)))

(declare-fun c!849640 () Bool)

(assert (=> b!4979669 (= c!849640 ((_ is ElementMatch!13683) (regex!8450 rule!200)))))

(declare-fun b!4979670 () Bool)

(assert (=> b!4979670 (= e!3112433 (Union!13683 (Concat!22443 call!347313 (regTwo!27878 (regex!8450 rule!200))) call!347312))))

(declare-fun b!4979671 () Bool)

(assert (=> b!4979671 (= e!3112432 (ite (= (head!10684 (_1!34546 lt!2056772)) (c!849433 (regex!8450 rule!200))) EmptyExpr!13683 EmptyLang!13683))))

(declare-fun bm!347309 () Bool)

(declare-fun call!347315 () Regex!13683)

(assert (=> bm!347309 (= call!347313 call!347315)))

(declare-fun b!4979672 () Bool)

(assert (=> b!4979672 (= c!849635 ((_ is Union!13683) (regex!8450 rule!200)))))

(assert (=> b!4979672 (= e!3112432 e!3112431)))

(declare-fun bm!347310 () Bool)

(assert (=> bm!347310 (= call!347315 call!347314)))

(declare-fun b!4979673 () Bool)

(assert (=> b!4979673 (= e!3112431 (Union!13683 call!347312 call!347314))))

(declare-fun b!4979674 () Bool)

(assert (=> b!4979674 (= e!3112434 (Concat!22443 call!347315 (regex!8450 rule!200)))))

(declare-fun b!4979675 () Bool)

(declare-fun c!849636 () Bool)

(assert (=> b!4979675 (= c!849636 (nullable!4635 (regOne!27878 (regex!8450 rule!200))))))

(assert (=> b!4979675 (= e!3112434 e!3112433)))

(assert (= (and d!1603438 c!849637) b!4979666))

(assert (= (and d!1603438 (not c!849637)) b!4979669))

(assert (= (and b!4979669 c!849640) b!4979671))

(assert (= (and b!4979669 (not c!849640)) b!4979672))

(assert (= (and b!4979672 c!849635) b!4979673))

(assert (= (and b!4979672 (not c!849635)) b!4979668))

(assert (= (and b!4979668 c!849639) b!4979674))

(assert (= (and b!4979668 (not c!849639)) b!4979675))

(assert (= (and b!4979675 c!849636) b!4979670))

(assert (= (and b!4979675 (not c!849636)) b!4979667))

(assert (= (or b!4979670 b!4979667) bm!347309))

(assert (= (or b!4979674 bm!347309) bm!347310))

(assert (= (or b!4979673 bm!347310) bm!347308))

(assert (= (or b!4979673 b!4979670) bm!347307))

(declare-fun m!6010388 () Bool)

(assert (=> d!1603438 m!6010388))

(assert (=> d!1603438 m!6009424))

(assert (=> bm!347307 m!6009426))

(declare-fun m!6010390 () Bool)

(assert (=> bm!347307 m!6010390))

(assert (=> bm!347308 m!6009426))

(declare-fun m!6010392 () Bool)

(assert (=> bm!347308 m!6010392))

(assert (=> b!4979675 m!6010316))

(assert (=> b!4978901 d!1603438))

(declare-fun d!1603444 () Bool)

(assert (=> d!1603444 (= (head!10684 (_1!34546 lt!2056772)) (h!64020 (_1!34546 lt!2056772)))))

(assert (=> b!4978901 d!1603444))

(assert (=> b!4978901 d!1603332))

(declare-fun d!1603446 () Bool)

(declare-fun c!849642 () Bool)

(assert (=> d!1603446 (= c!849642 ((_ is Node!15202) (left!42073 (c!849434 totalInput!520))))))

(declare-fun e!3112436 () Bool)

(assert (=> d!1603446 (= (inv!75380 (left!42073 (c!849434 totalInput!520))) e!3112436)))

(declare-fun b!4979678 () Bool)

(assert (=> b!4979678 (= e!3112436 (inv!75386 (left!42073 (c!849434 totalInput!520))))))

(declare-fun b!4979679 () Bool)

(declare-fun e!3112437 () Bool)

(assert (=> b!4979679 (= e!3112436 e!3112437)))

(declare-fun res!2125794 () Bool)

(assert (=> b!4979679 (= res!2125794 (not ((_ is Leaf!25252) (left!42073 (c!849434 totalInput!520)))))))

(assert (=> b!4979679 (=> res!2125794 e!3112437)))

(declare-fun b!4979680 () Bool)

(assert (=> b!4979680 (= e!3112437 (inv!75387 (left!42073 (c!849434 totalInput!520))))))

(assert (= (and d!1603446 c!849642) b!4979678))

(assert (= (and d!1603446 (not c!849642)) b!4979679))

(assert (= (and b!4979679 (not res!2125794)) b!4979680))

(declare-fun m!6010394 () Bool)

(assert (=> b!4979678 m!6010394))

(declare-fun m!6010396 () Bool)

(assert (=> b!4979680 m!6010396))

(assert (=> b!4979185 d!1603446))

(declare-fun d!1603448 () Bool)

(declare-fun c!849643 () Bool)

(assert (=> d!1603448 (= c!849643 ((_ is Node!15202) (right!42403 (c!849434 totalInput!520))))))

(declare-fun e!3112438 () Bool)

(assert (=> d!1603448 (= (inv!75380 (right!42403 (c!849434 totalInput!520))) e!3112438)))

(declare-fun b!4979681 () Bool)

(assert (=> b!4979681 (= e!3112438 (inv!75386 (right!42403 (c!849434 totalInput!520))))))

(declare-fun b!4979682 () Bool)

(declare-fun e!3112439 () Bool)

(assert (=> b!4979682 (= e!3112438 e!3112439)))

(declare-fun res!2125795 () Bool)

(assert (=> b!4979682 (= res!2125795 (not ((_ is Leaf!25252) (right!42403 (c!849434 totalInput!520)))))))

(assert (=> b!4979682 (=> res!2125795 e!3112439)))

(declare-fun b!4979683 () Bool)

(assert (=> b!4979683 (= e!3112439 (inv!75387 (right!42403 (c!849434 totalInput!520))))))

(assert (= (and d!1603448 c!849643) b!4979681))

(assert (= (and d!1603448 (not c!849643)) b!4979682))

(assert (= (and b!4979682 (not res!2125795)) b!4979683))

(declare-fun m!6010398 () Bool)

(assert (=> b!4979681 m!6010398))

(declare-fun m!6010400 () Bool)

(assert (=> b!4979683 m!6010400))

(assert (=> b!4979185 d!1603448))

(declare-fun d!1603450 () Bool)

(assert (=> d!1603450 (= (isEmpty!31070 (maxPrefixOneRule!3666 thiss!16165 rule!200 lt!2056777)) (not ((_ is Some!14519) (maxPrefixOneRule!3666 thiss!16165 rule!200 lt!2056777))))))

(assert (=> d!1603194 d!1603450))

(declare-fun b!4979693 () Bool)

(declare-fun e!3112444 () List!57696)

(declare-fun e!3112445 () List!57696)

(assert (=> b!4979693 (= e!3112444 e!3112445)))

(declare-fun c!849649 () Bool)

(assert (=> b!4979693 (= c!849649 ((_ is Leaf!25252) (c!849434 input!1580)))))

(declare-fun d!1603452 () Bool)

(declare-fun c!849648 () Bool)

(assert (=> d!1603452 (= c!849648 ((_ is Empty!15202) (c!849434 input!1580)))))

(assert (=> d!1603452 (= (list!18448 (c!849434 input!1580)) e!3112444)))

(declare-fun b!4979694 () Bool)

(assert (=> b!4979694 (= e!3112445 (list!18450 (xs!18528 (c!849434 input!1580))))))

(declare-fun b!4979695 () Bool)

(assert (=> b!4979695 (= e!3112445 (++!12547 (list!18448 (left!42073 (c!849434 input!1580))) (list!18448 (right!42403 (c!849434 input!1580)))))))

(declare-fun b!4979692 () Bool)

(assert (=> b!4979692 (= e!3112444 Nil!57572)))

(assert (= (and d!1603452 c!849648) b!4979692))

(assert (= (and d!1603452 (not c!849648)) b!4979693))

(assert (= (and b!4979693 c!849649) b!4979694))

(assert (= (and b!4979693 (not c!849649)) b!4979695))

(declare-fun m!6010408 () Bool)

(assert (=> b!4979694 m!6010408))

(declare-fun m!6010410 () Bool)

(assert (=> b!4979695 m!6010410))

(declare-fun m!6010412 () Bool)

(assert (=> b!4979695 m!6010412))

(assert (=> b!4979695 m!6010410))

(assert (=> b!4979695 m!6010412))

(declare-fun m!6010414 () Bool)

(assert (=> b!4979695 m!6010414))

(assert (=> d!1603208 d!1603452))

(declare-fun d!1603462 () Bool)

(assert (=> d!1603462 (= (list!18446 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776)))) (list!18448 (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776))))))))

(declare-fun bs!1184131 () Bool)

(assert (= bs!1184131 d!1603462))

(declare-fun m!6010416 () Bool)

(assert (=> bs!1184131 m!6010416))

(assert (=> bs!1184094 d!1603462))

(assert (=> bs!1184094 d!1603186))

(assert (=> b!4978899 d!1603444))

(declare-fun d!1603464 () Bool)

(declare-fun e!3112461 () Bool)

(assert (=> d!1603464 e!3112461))

(declare-fun res!2125811 () Bool)

(assert (=> d!1603464 (=> (not res!2125811) (not e!3112461))))

(declare-fun lt!2057230 () BalanceConc!29834)

(assert (=> d!1603464 (= res!2125811 (= (list!18446 lt!2057230) lt!2056775))))

(declare-fun fromList!947 (List!57696) Conc!15202)

(assert (=> d!1603464 (= lt!2057230 (BalanceConc!29835 (fromList!947 lt!2056775)))))

(assert (=> d!1603464 (= (fromListB!2740 lt!2056775) lt!2057230)))

(declare-fun b!4979724 () Bool)

(assert (=> b!4979724 (= e!3112461 (isBalanced!4220 (fromList!947 lt!2056775)))))

(assert (= (and d!1603464 res!2125811) b!4979724))

(declare-fun m!6010434 () Bool)

(assert (=> d!1603464 m!6010434))

(declare-fun m!6010436 () Bool)

(assert (=> d!1603464 m!6010436))

(assert (=> b!4979724 m!6010436))

(assert (=> b!4979724 m!6010436))

(declare-fun m!6010438 () Bool)

(assert (=> b!4979724 m!6010438))

(assert (=> d!1603190 d!1603464))

(declare-fun d!1603474 () Bool)

(declare-fun lt!2057231 () Int)

(assert (=> d!1603474 (>= lt!2057231 0)))

(declare-fun e!3112462 () Int)

(assert (=> d!1603474 (= lt!2057231 e!3112462)))

(declare-fun c!849659 () Bool)

(assert (=> d!1603474 (= c!849659 ((_ is Nil!57572) (t!369708 lt!2056777)))))

(assert (=> d!1603474 (= (size!38191 (t!369708 lt!2056777)) lt!2057231)))

(declare-fun b!4979725 () Bool)

(assert (=> b!4979725 (= e!3112462 0)))

(declare-fun b!4979726 () Bool)

(assert (=> b!4979726 (= e!3112462 (+ 1 (size!38191 (t!369708 (t!369708 lt!2056777)))))))

(assert (= (and d!1603474 c!849659) b!4979725))

(assert (= (and d!1603474 (not c!849659)) b!4979726))

(declare-fun m!6010446 () Bool)

(assert (=> b!4979726 m!6010446))

(assert (=> b!4979119 d!1603474))

(assert (=> b!4978819 d!1603182))

(assert (=> bm!347239 d!1603342))

(declare-fun b!4979753 () Bool)

(declare-fun e!3112479 () Bool)

(declare-fun inv!15 (TokenValue!8760) Bool)

(assert (=> b!4979753 (= e!3112479 (inv!15 (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776))))))

(declare-fun b!4979754 () Bool)

(declare-fun e!3112478 () Bool)

(declare-fun inv!16 (TokenValue!8760) Bool)

(assert (=> b!4979754 (= e!3112478 (inv!16 (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776))))))

(declare-fun b!4979755 () Bool)

(declare-fun e!3112480 () Bool)

(declare-fun inv!17 (TokenValue!8760) Bool)

(assert (=> b!4979755 (= e!3112480 (inv!17 (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776))))))

(declare-fun d!1603478 () Bool)

(declare-fun c!849669 () Bool)

(assert (=> d!1603478 (= c!849669 ((_ is IntegerValue!26280) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776))))))

(assert (=> d!1603478 (= (inv!21 (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776))) e!3112478)))

(declare-fun b!4979756 () Bool)

(assert (=> b!4979756 (= e!3112478 e!3112480)))

(declare-fun c!849668 () Bool)

(assert (=> b!4979756 (= c!849668 ((_ is IntegerValue!26281) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776))))))

(declare-fun b!4979757 () Bool)

(declare-fun res!2125819 () Bool)

(assert (=> b!4979757 (=> res!2125819 e!3112479)))

(assert (=> b!4979757 (= res!2125819 (not ((_ is IntegerValue!26282) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776)))))))

(assert (=> b!4979757 (= e!3112480 e!3112479)))

(assert (= (and d!1603478 c!849669) b!4979754))

(assert (= (and d!1603478 (not c!849669)) b!4979756))

(assert (= (and b!4979756 c!849668) b!4979755))

(assert (= (and b!4979756 (not c!849668)) b!4979757))

(assert (= (and b!4979757 (not res!2125819)) b!4979753))

(declare-fun m!6010478 () Bool)

(assert (=> b!4979753 m!6010478))

(declare-fun m!6010480 () Bool)

(assert (=> b!4979754 m!6010480))

(declare-fun m!6010482 () Bool)

(assert (=> b!4979755 m!6010482))

(assert (=> tb!261543 d!1603478))

(assert (=> b!4978895 d!1603330))

(assert (=> b!4978895 d!1603332))

(assert (=> d!1603220 d!1603412))

(declare-fun d!1603494 () Bool)

(assert (=> d!1603494 (= (++!12547 (++!12547 Nil!57572 (Cons!57572 lt!2056986 Nil!57572)) lt!2056977) lt!2056777)))

(declare-fun lt!2057234 () Unit!148602)

(declare-fun choose!36757 (List!57696 C!27616 List!57696 List!57696) Unit!148602)

(assert (=> d!1603494 (= lt!2057234 (choose!36757 Nil!57572 lt!2056986 lt!2056977 lt!2056777))))

(assert (=> d!1603494 (= (++!12547 Nil!57572 (Cons!57572 lt!2056986 lt!2056977)) lt!2056777)))

(assert (=> d!1603494 (= (lemmaMoveElementToOtherListKeepsConcatEq!1458 Nil!57572 lt!2056986 lt!2056977 lt!2056777) lt!2057234)))

(declare-fun bs!1184135 () Bool)

(assert (= bs!1184135 d!1603494))

(assert (=> bs!1184135 m!6009620))

(assert (=> bs!1184135 m!6009620))

(assert (=> bs!1184135 m!6009622))

(declare-fun m!6010514 () Bool)

(assert (=> bs!1184135 m!6010514))

(declare-fun m!6010516 () Bool)

(assert (=> bs!1184135 m!6010516))

(assert (=> b!4979103 d!1603494))

(declare-fun d!1603496 () Bool)

(assert (=> d!1603496 (= (head!10684 lt!2056777) (h!64020 lt!2056777))))

(assert (=> b!4979103 d!1603496))

(declare-fun d!1603498 () Bool)

(declare-fun lt!2057237 () List!57696)

(assert (=> d!1603498 (= (++!12547 Nil!57572 lt!2057237) lt!2056777)))

(declare-fun e!3112502 () List!57696)

(assert (=> d!1603498 (= lt!2057237 e!3112502)))

(declare-fun c!849672 () Bool)

(assert (=> d!1603498 (= c!849672 ((_ is Cons!57572) Nil!57572))))

(assert (=> d!1603498 (>= (size!38191 lt!2056777) (size!38191 Nil!57572))))

(assert (=> d!1603498 (= (getSuffix!3101 lt!2056777 Nil!57572) lt!2057237)))

(declare-fun b!4979803 () Bool)

(assert (=> b!4979803 (= e!3112502 (getSuffix!3101 (tail!9817 lt!2056777) (t!369708 Nil!57572)))))

(declare-fun b!4979804 () Bool)

(assert (=> b!4979804 (= e!3112502 lt!2056777)))

(assert (= (and d!1603498 c!849672) b!4979803))

(assert (= (and d!1603498 (not c!849672)) b!4979804))

(declare-fun m!6010518 () Bool)

(assert (=> d!1603498 m!6010518))

(assert (=> d!1603498 m!6009380))

(assert (=> d!1603498 m!6009378))

(assert (=> b!4979803 m!6009614))

(assert (=> b!4979803 m!6009614))

(declare-fun m!6010520 () Bool)

(assert (=> b!4979803 m!6010520))

(assert (=> b!4979103 d!1603498))

(declare-fun b!4979813 () Bool)

(declare-fun e!3112507 () List!57696)

(assert (=> b!4979813 (= e!3112507 (Cons!57572 (head!10684 lt!2056777) Nil!57572))))

(declare-fun b!4979816 () Bool)

(declare-fun e!3112508 () Bool)

(declare-fun lt!2057240 () List!57696)

(assert (=> b!4979816 (= e!3112508 (or (not (= (Cons!57572 (head!10684 lt!2056777) Nil!57572) Nil!57572)) (= lt!2057240 Nil!57572)))))

(declare-fun b!4979814 () Bool)

(assert (=> b!4979814 (= e!3112507 (Cons!57572 (h!64020 Nil!57572) (++!12547 (t!369708 Nil!57572) (Cons!57572 (head!10684 lt!2056777) Nil!57572))))))

(declare-fun d!1603500 () Bool)

(assert (=> d!1603500 e!3112508))

(declare-fun res!2125824 () Bool)

(assert (=> d!1603500 (=> (not res!2125824) (not e!3112508))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10199 (List!57696) (InoxSet C!27616))

(assert (=> d!1603500 (= res!2125824 (= (content!10199 lt!2057240) ((_ map or) (content!10199 Nil!57572) (content!10199 (Cons!57572 (head!10684 lt!2056777) Nil!57572)))))))

(assert (=> d!1603500 (= lt!2057240 e!3112507)))

(declare-fun c!849675 () Bool)

(assert (=> d!1603500 (= c!849675 ((_ is Nil!57572) Nil!57572))))

(assert (=> d!1603500 (= (++!12547 Nil!57572 (Cons!57572 (head!10684 lt!2056777) Nil!57572)) lt!2057240)))

(declare-fun b!4979815 () Bool)

(declare-fun res!2125825 () Bool)

(assert (=> b!4979815 (=> (not res!2125825) (not e!3112508))))

(assert (=> b!4979815 (= res!2125825 (= (size!38191 lt!2057240) (+ (size!38191 Nil!57572) (size!38191 (Cons!57572 (head!10684 lt!2056777) Nil!57572)))))))

(assert (= (and d!1603500 c!849675) b!4979813))

(assert (= (and d!1603500 (not c!849675)) b!4979814))

(assert (= (and d!1603500 res!2125824) b!4979815))

(assert (= (and b!4979815 res!2125825) b!4979816))

(declare-fun m!6010522 () Bool)

(assert (=> b!4979814 m!6010522))

(declare-fun m!6010524 () Bool)

(assert (=> d!1603500 m!6010524))

(declare-fun m!6010526 () Bool)

(assert (=> d!1603500 m!6010526))

(declare-fun m!6010528 () Bool)

(assert (=> d!1603500 m!6010528))

(declare-fun m!6010530 () Bool)

(assert (=> b!4979815 m!6010530))

(assert (=> b!4979815 m!6009378))

(declare-fun m!6010532 () Bool)

(assert (=> b!4979815 m!6010532))

(assert (=> b!4979103 d!1603500))

(declare-fun b!4979817 () Bool)

(declare-fun e!3112509 () List!57696)

(assert (=> b!4979817 (= e!3112509 lt!2056977)))

(declare-fun b!4979820 () Bool)

(declare-fun lt!2057241 () List!57696)

(declare-fun e!3112510 () Bool)

(assert (=> b!4979820 (= e!3112510 (or (not (= lt!2056977 Nil!57572)) (= lt!2057241 (++!12547 Nil!57572 (Cons!57572 lt!2056986 Nil!57572)))))))

(declare-fun b!4979818 () Bool)

(assert (=> b!4979818 (= e!3112509 (Cons!57572 (h!64020 (++!12547 Nil!57572 (Cons!57572 lt!2056986 Nil!57572))) (++!12547 (t!369708 (++!12547 Nil!57572 (Cons!57572 lt!2056986 Nil!57572))) lt!2056977)))))

(declare-fun d!1603502 () Bool)

(assert (=> d!1603502 e!3112510))

(declare-fun res!2125826 () Bool)

(assert (=> d!1603502 (=> (not res!2125826) (not e!3112510))))

(assert (=> d!1603502 (= res!2125826 (= (content!10199 lt!2057241) ((_ map or) (content!10199 (++!12547 Nil!57572 (Cons!57572 lt!2056986 Nil!57572))) (content!10199 lt!2056977))))))

(assert (=> d!1603502 (= lt!2057241 e!3112509)))

(declare-fun c!849676 () Bool)

(assert (=> d!1603502 (= c!849676 ((_ is Nil!57572) (++!12547 Nil!57572 (Cons!57572 lt!2056986 Nil!57572))))))

(assert (=> d!1603502 (= (++!12547 (++!12547 Nil!57572 (Cons!57572 lt!2056986 Nil!57572)) lt!2056977) lt!2057241)))

(declare-fun b!4979819 () Bool)

(declare-fun res!2125827 () Bool)

(assert (=> b!4979819 (=> (not res!2125827) (not e!3112510))))

(assert (=> b!4979819 (= res!2125827 (= (size!38191 lt!2057241) (+ (size!38191 (++!12547 Nil!57572 (Cons!57572 lt!2056986 Nil!57572))) (size!38191 lt!2056977))))))

(assert (= (and d!1603502 c!849676) b!4979817))

(assert (= (and d!1603502 (not c!849676)) b!4979818))

(assert (= (and d!1603502 res!2125826) b!4979819))

(assert (= (and b!4979819 res!2125827) b!4979820))

(declare-fun m!6010534 () Bool)

(assert (=> b!4979818 m!6010534))

(declare-fun m!6010536 () Bool)

(assert (=> d!1603502 m!6010536))

(assert (=> d!1603502 m!6009620))

(declare-fun m!6010538 () Bool)

(assert (=> d!1603502 m!6010538))

(declare-fun m!6010540 () Bool)

(assert (=> d!1603502 m!6010540))

(declare-fun m!6010542 () Bool)

(assert (=> b!4979819 m!6010542))

(assert (=> b!4979819 m!6009620))

(declare-fun m!6010544 () Bool)

(assert (=> b!4979819 m!6010544))

(declare-fun m!6010546 () Bool)

(assert (=> b!4979819 m!6010546))

(assert (=> b!4979103 d!1603502))

(declare-fun d!1603504 () Bool)

(assert (=> d!1603504 (isPrefix!5261 (++!12547 Nil!57572 (Cons!57572 (head!10684 (getSuffix!3101 lt!2056777 Nil!57572)) Nil!57572)) lt!2056777)))

(declare-fun lt!2057244 () Unit!148602)

(declare-fun choose!36760 (List!57696 List!57696) Unit!148602)

(assert (=> d!1603504 (= lt!2057244 (choose!36760 Nil!57572 lt!2056777))))

(assert (=> d!1603504 (isPrefix!5261 Nil!57572 lt!2056777)))

(assert (=> d!1603504 (= (lemmaAddHeadSuffixToPrefixStillPrefix!848 Nil!57572 lt!2056777) lt!2057244)))

(declare-fun bs!1184136 () Bool)

(assert (= bs!1184136 d!1603504))

(assert (=> bs!1184136 m!6009624))

(assert (=> bs!1184136 m!6009634))

(declare-fun m!6010548 () Bool)

(assert (=> bs!1184136 m!6010548))

(assert (=> bs!1184136 m!6009618))

(assert (=> bs!1184136 m!6009618))

(assert (=> bs!1184136 m!6009636))

(declare-fun m!6010550 () Bool)

(assert (=> bs!1184136 m!6010550))

(assert (=> bs!1184136 m!6009624))

(assert (=> b!4979103 d!1603504))

(declare-fun d!1603506 () Bool)

(assert (=> d!1603506 (= (head!10684 (getSuffix!3101 lt!2056777 Nil!57572)) (h!64020 (getSuffix!3101 lt!2056777 Nil!57572)))))

(assert (=> b!4979103 d!1603506))

(declare-fun b!4979821 () Bool)

(declare-fun e!3112511 () List!57696)

(assert (=> b!4979821 (= e!3112511 (Cons!57572 lt!2056986 Nil!57572))))

(declare-fun b!4979824 () Bool)

(declare-fun e!3112512 () Bool)

(declare-fun lt!2057245 () List!57696)

(assert (=> b!4979824 (= e!3112512 (or (not (= (Cons!57572 lt!2056986 Nil!57572) Nil!57572)) (= lt!2057245 Nil!57572)))))

(declare-fun b!4979822 () Bool)

(assert (=> b!4979822 (= e!3112511 (Cons!57572 (h!64020 Nil!57572) (++!12547 (t!369708 Nil!57572) (Cons!57572 lt!2056986 Nil!57572))))))

(declare-fun d!1603508 () Bool)

(assert (=> d!1603508 e!3112512))

(declare-fun res!2125828 () Bool)

(assert (=> d!1603508 (=> (not res!2125828) (not e!3112512))))

(assert (=> d!1603508 (= res!2125828 (= (content!10199 lt!2057245) ((_ map or) (content!10199 Nil!57572) (content!10199 (Cons!57572 lt!2056986 Nil!57572)))))))

(assert (=> d!1603508 (= lt!2057245 e!3112511)))

(declare-fun c!849677 () Bool)

(assert (=> d!1603508 (= c!849677 ((_ is Nil!57572) Nil!57572))))

(assert (=> d!1603508 (= (++!12547 Nil!57572 (Cons!57572 lt!2056986 Nil!57572)) lt!2057245)))

(declare-fun b!4979823 () Bool)

(declare-fun res!2125829 () Bool)

(assert (=> b!4979823 (=> (not res!2125829) (not e!3112512))))

(assert (=> b!4979823 (= res!2125829 (= (size!38191 lt!2057245) (+ (size!38191 Nil!57572) (size!38191 (Cons!57572 lt!2056986 Nil!57572)))))))

(assert (= (and d!1603508 c!849677) b!4979821))

(assert (= (and d!1603508 (not c!849677)) b!4979822))

(assert (= (and d!1603508 res!2125828) b!4979823))

(assert (= (and b!4979823 res!2125829) b!4979824))

(declare-fun m!6010552 () Bool)

(assert (=> b!4979822 m!6010552))

(declare-fun m!6010554 () Bool)

(assert (=> d!1603508 m!6010554))

(assert (=> d!1603508 m!6010526))

(declare-fun m!6010556 () Bool)

(assert (=> d!1603508 m!6010556))

(declare-fun m!6010558 () Bool)

(assert (=> b!4979823 m!6010558))

(assert (=> b!4979823 m!6009378))

(declare-fun m!6010560 () Bool)

(assert (=> b!4979823 m!6010560))

(assert (=> b!4979103 d!1603508))

(assert (=> b!4979103 d!1603172))

(declare-fun b!4979835 () Bool)

(declare-fun e!3112521 () Bool)

(assert (=> b!4979835 (= e!3112521 (isPrefix!5261 (tail!9817 (++!12547 Nil!57572 (Cons!57572 (head!10684 (getSuffix!3101 lt!2056777 Nil!57572)) Nil!57572))) (tail!9817 lt!2056777)))))

(declare-fun b!4979833 () Bool)

(declare-fun e!3112519 () Bool)

(assert (=> b!4979833 (= e!3112519 e!3112521)))

(declare-fun res!2125841 () Bool)

(assert (=> b!4979833 (=> (not res!2125841) (not e!3112521))))

(assert (=> b!4979833 (= res!2125841 (not ((_ is Nil!57572) lt!2056777)))))

(declare-fun b!4979834 () Bool)

(declare-fun res!2125838 () Bool)

(assert (=> b!4979834 (=> (not res!2125838) (not e!3112521))))

(assert (=> b!4979834 (= res!2125838 (= (head!10684 (++!12547 Nil!57572 (Cons!57572 (head!10684 (getSuffix!3101 lt!2056777 Nil!57572)) Nil!57572))) (head!10684 lt!2056777)))))

(declare-fun d!1603510 () Bool)

(declare-fun e!3112520 () Bool)

(assert (=> d!1603510 e!3112520))

(declare-fun res!2125840 () Bool)

(assert (=> d!1603510 (=> res!2125840 e!3112520)))

(declare-fun lt!2057248 () Bool)

(assert (=> d!1603510 (= res!2125840 (not lt!2057248))))

(assert (=> d!1603510 (= lt!2057248 e!3112519)))

(declare-fun res!2125839 () Bool)

(assert (=> d!1603510 (=> res!2125839 e!3112519)))

(assert (=> d!1603510 (= res!2125839 ((_ is Nil!57572) (++!12547 Nil!57572 (Cons!57572 (head!10684 (getSuffix!3101 lt!2056777 Nil!57572)) Nil!57572))))))

(assert (=> d!1603510 (= (isPrefix!5261 (++!12547 Nil!57572 (Cons!57572 (head!10684 (getSuffix!3101 lt!2056777 Nil!57572)) Nil!57572)) lt!2056777) lt!2057248)))

(declare-fun b!4979836 () Bool)

(assert (=> b!4979836 (= e!3112520 (>= (size!38191 lt!2056777) (size!38191 (++!12547 Nil!57572 (Cons!57572 (head!10684 (getSuffix!3101 lt!2056777 Nil!57572)) Nil!57572)))))))

(assert (= (and d!1603510 (not res!2125839)) b!4979833))

(assert (= (and b!4979833 res!2125841) b!4979834))

(assert (= (and b!4979834 res!2125838) b!4979835))

(assert (= (and d!1603510 (not res!2125840)) b!4979836))

(assert (=> b!4979835 m!6009624))

(declare-fun m!6010562 () Bool)

(assert (=> b!4979835 m!6010562))

(assert (=> b!4979835 m!6009614))

(assert (=> b!4979835 m!6010562))

(assert (=> b!4979835 m!6009614))

(declare-fun m!6010564 () Bool)

(assert (=> b!4979835 m!6010564))

(assert (=> b!4979834 m!6009624))

(declare-fun m!6010566 () Bool)

(assert (=> b!4979834 m!6010566))

(assert (=> b!4979834 m!6009630))

(assert (=> b!4979836 m!6009380))

(assert (=> b!4979836 m!6009624))

(declare-fun m!6010568 () Bool)

(assert (=> b!4979836 m!6010568))

(assert (=> b!4979103 d!1603510))

(declare-fun b!4979837 () Bool)

(declare-fun e!3112522 () List!57696)

(assert (=> b!4979837 (= e!3112522 (Cons!57572 (head!10684 (getSuffix!3101 lt!2056777 Nil!57572)) Nil!57572))))

(declare-fun b!4979840 () Bool)

(declare-fun e!3112523 () Bool)

(declare-fun lt!2057249 () List!57696)

(assert (=> b!4979840 (= e!3112523 (or (not (= (Cons!57572 (head!10684 (getSuffix!3101 lt!2056777 Nil!57572)) Nil!57572) Nil!57572)) (= lt!2057249 Nil!57572)))))

(declare-fun b!4979838 () Bool)

(assert (=> b!4979838 (= e!3112522 (Cons!57572 (h!64020 Nil!57572) (++!12547 (t!369708 Nil!57572) (Cons!57572 (head!10684 (getSuffix!3101 lt!2056777 Nil!57572)) Nil!57572))))))

(declare-fun d!1603512 () Bool)

(assert (=> d!1603512 e!3112523))

(declare-fun res!2125842 () Bool)

(assert (=> d!1603512 (=> (not res!2125842) (not e!3112523))))

(assert (=> d!1603512 (= res!2125842 (= (content!10199 lt!2057249) ((_ map or) (content!10199 Nil!57572) (content!10199 (Cons!57572 (head!10684 (getSuffix!3101 lt!2056777 Nil!57572)) Nil!57572)))))))

(assert (=> d!1603512 (= lt!2057249 e!3112522)))

(declare-fun c!849678 () Bool)

(assert (=> d!1603512 (= c!849678 ((_ is Nil!57572) Nil!57572))))

(assert (=> d!1603512 (= (++!12547 Nil!57572 (Cons!57572 (head!10684 (getSuffix!3101 lt!2056777 Nil!57572)) Nil!57572)) lt!2057249)))

(declare-fun b!4979839 () Bool)

(declare-fun res!2125843 () Bool)

(assert (=> b!4979839 (=> (not res!2125843) (not e!3112523))))

(assert (=> b!4979839 (= res!2125843 (= (size!38191 lt!2057249) (+ (size!38191 Nil!57572) (size!38191 (Cons!57572 (head!10684 (getSuffix!3101 lt!2056777 Nil!57572)) Nil!57572)))))))

(assert (= (and d!1603512 c!849678) b!4979837))

(assert (= (and d!1603512 (not c!849678)) b!4979838))

(assert (= (and d!1603512 res!2125842) b!4979839))

(assert (= (and b!4979839 res!2125843) b!4979840))

(declare-fun m!6010570 () Bool)

(assert (=> b!4979838 m!6010570))

(declare-fun m!6010572 () Bool)

(assert (=> d!1603512 m!6010572))

(assert (=> d!1603512 m!6010526))

(declare-fun m!6010574 () Bool)

(assert (=> d!1603512 m!6010574))

(declare-fun m!6010576 () Bool)

(assert (=> b!4979839 m!6010576))

(assert (=> b!4979839 m!6009378))

(declare-fun m!6010578 () Bool)

(assert (=> b!4979839 m!6010578))

(assert (=> b!4979103 d!1603512))

(declare-fun d!1603514 () Bool)

(assert (=> d!1603514 (<= (size!38191 Nil!57572) (size!38191 lt!2056777))))

(declare-fun lt!2057252 () Unit!148602)

(declare-fun choose!36761 (List!57696 List!57696) Unit!148602)

(assert (=> d!1603514 (= lt!2057252 (choose!36761 Nil!57572 lt!2056777))))

(assert (=> d!1603514 (isPrefix!5261 Nil!57572 lt!2056777)))

(assert (=> d!1603514 (= (lemmaIsPrefixThenSmallerEqSize!774 Nil!57572 lt!2056777) lt!2057252)))

(declare-fun bs!1184137 () Bool)

(assert (= bs!1184137 d!1603514))

(assert (=> bs!1184137 m!6009378))

(assert (=> bs!1184137 m!6009380))

(declare-fun m!6010580 () Bool)

(assert (=> bs!1184137 m!6010580))

(assert (=> bs!1184137 m!6010550))

(assert (=> b!4979103 d!1603514))

(assert (=> b!4979103 d!1603176))

(declare-fun d!1603516 () Bool)

(assert (=> d!1603516 (= (tail!9817 lt!2056777) (t!369708 lt!2056777))))

(assert (=> b!4979103 d!1603516))

(declare-fun b!4979859 () Bool)

(declare-fun e!3112534 () List!57696)

(assert (=> b!4979859 (= e!3112534 Nil!57572)))

(declare-fun b!4979860 () Bool)

(declare-fun e!3112538 () Int)

(assert (=> b!4979860 (= e!3112538 0)))

(declare-fun b!4979861 () Bool)

(declare-fun e!3112536 () List!57696)

(assert (=> b!4979861 (= e!3112536 (list!18446 totalInput!520))))

(declare-fun b!4979862 () Bool)

(declare-fun e!3112537 () Bool)

(declare-fun lt!2057255 () List!57696)

(declare-fun e!3112535 () Int)

(assert (=> b!4979862 (= e!3112537 (= (size!38191 lt!2057255) e!3112535))))

(declare-fun c!849687 () Bool)

(assert (=> b!4979862 (= c!849687 (<= (- (size!38191 (list!18446 totalInput!520)) (size!38191 lt!2056777)) 0))))

(declare-fun b!4979863 () Bool)

(assert (=> b!4979863 (= e!3112536 (drop!2366 (t!369708 (list!18446 totalInput!520)) (- (- (size!38191 (list!18446 totalInput!520)) (size!38191 lt!2056777)) 1)))))

(declare-fun b!4979864 () Bool)

(declare-fun call!347323 () Int)

(assert (=> b!4979864 (= e!3112535 call!347323)))

(declare-fun bm!347318 () Bool)

(assert (=> bm!347318 (= call!347323 (size!38191 (list!18446 totalInput!520)))))

(declare-fun b!4979866 () Bool)

(assert (=> b!4979866 (= e!3112538 (- call!347323 (- (size!38191 (list!18446 totalInput!520)) (size!38191 lt!2056777))))))

(declare-fun b!4979867 () Bool)

(assert (=> b!4979867 (= e!3112534 e!3112536)))

(declare-fun c!849688 () Bool)

(assert (=> b!4979867 (= c!849688 (<= (- (size!38191 (list!18446 totalInput!520)) (size!38191 lt!2056777)) 0))))

(declare-fun d!1603518 () Bool)

(assert (=> d!1603518 e!3112537))

(declare-fun res!2125846 () Bool)

(assert (=> d!1603518 (=> (not res!2125846) (not e!3112537))))

(assert (=> d!1603518 (= res!2125846 (= ((_ map implies) (content!10199 lt!2057255) (content!10199 (list!18446 totalInput!520))) ((as const (InoxSet C!27616)) true)))))

(assert (=> d!1603518 (= lt!2057255 e!3112534)))

(declare-fun c!849690 () Bool)

(assert (=> d!1603518 (= c!849690 ((_ is Nil!57572) (list!18446 totalInput!520)))))

(assert (=> d!1603518 (= (drop!2366 (list!18446 totalInput!520) (- (size!38191 (list!18446 totalInput!520)) (size!38191 lt!2056777))) lt!2057255)))

(declare-fun b!4979865 () Bool)

(assert (=> b!4979865 (= e!3112535 e!3112538)))

(declare-fun c!849689 () Bool)

(assert (=> b!4979865 (= c!849689 (>= (- (size!38191 (list!18446 totalInput!520)) (size!38191 lt!2056777)) call!347323))))

(assert (= (and d!1603518 c!849690) b!4979859))

(assert (= (and d!1603518 (not c!849690)) b!4979867))

(assert (= (and b!4979867 c!849688) b!4979861))

(assert (= (and b!4979867 (not c!849688)) b!4979863))

(assert (= (and d!1603518 res!2125846) b!4979862))

(assert (= (and b!4979862 c!849687) b!4979864))

(assert (= (and b!4979862 (not c!849687)) b!4979865))

(assert (= (and b!4979865 c!849689) b!4979860))

(assert (= (and b!4979865 (not c!849689)) b!4979866))

(assert (= (or b!4979864 b!4979865 b!4979866) bm!347318))

(declare-fun m!6010582 () Bool)

(assert (=> b!4979862 m!6010582))

(declare-fun m!6010584 () Bool)

(assert (=> b!4979863 m!6010584))

(assert (=> bm!347318 m!6009354))

(assert (=> bm!347318 m!6009742))

(declare-fun m!6010586 () Bool)

(assert (=> d!1603518 m!6010586))

(assert (=> d!1603518 m!6009354))

(declare-fun m!6010588 () Bool)

(assert (=> d!1603518 m!6010588))

(assert (=> d!1603204 d!1603518))

(assert (=> d!1603204 d!1603336))

(assert (=> d!1603204 d!1603176))

(declare-fun d!1603520 () Bool)

(assert (=> d!1603520 (= (isEmpty!31071 (Some!14518 (tuple2!62483 (Token!15357 (apply!13937 (transformation!8450 rule!200) (_1!34543 lt!2056776)) rule!200 (size!38190 (_1!34543 lt!2056776)) lt!2056775) (_2!34543 lt!2056776)))) (not ((_ is Some!14518) (Some!14518 (tuple2!62483 (Token!15357 (apply!13937 (transformation!8450 rule!200) (_1!34543 lt!2056776)) rule!200 (size!38190 (_1!34543 lt!2056776)) lt!2056775) (_2!34543 lt!2056776))))))))

(assert (=> d!1603200 d!1603520))

(declare-fun d!1603522 () Bool)

(assert (=> d!1603522 (= (inv!75382 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775)))) (isBalanced!4220 (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775))))))))

(declare-fun bs!1184138 () Bool)

(assert (= bs!1184138 d!1603522))

(declare-fun m!6010590 () Bool)

(assert (=> bs!1184138 m!6010590))

(assert (=> tb!261545 d!1603522))

(assert (=> b!4979165 d!1603328))

(declare-fun d!1603524 () Bool)

(declare-fun lt!2057256 () Int)

(assert (=> d!1603524 (>= lt!2057256 0)))

(declare-fun e!3112539 () Int)

(assert (=> d!1603524 (= lt!2057256 e!3112539)))

(declare-fun c!849691 () Bool)

(assert (=> d!1603524 (= c!849691 ((_ is Nil!57572) (originalCharacters!8709 (_1!34545 (get!20011 lt!2057013)))))))

(assert (=> d!1603524 (= (size!38191 (originalCharacters!8709 (_1!34545 (get!20011 lt!2057013)))) lt!2057256)))

(declare-fun b!4979868 () Bool)

(assert (=> b!4979868 (= e!3112539 0)))

(declare-fun b!4979869 () Bool)

(assert (=> b!4979869 (= e!3112539 (+ 1 (size!38191 (t!369708 (originalCharacters!8709 (_1!34545 (get!20011 lt!2057013)))))))))

(assert (= (and d!1603524 c!849691) b!4979868))

(assert (= (and d!1603524 (not c!849691)) b!4979869))

(declare-fun m!6010592 () Bool)

(assert (=> b!4979869 m!6010592))

(assert (=> b!4979165 d!1603524))

(declare-fun d!1603526 () Bool)

(assert (=> d!1603526 (= (isEmpty!31065 (_1!34546 lt!2056965)) ((_ is Nil!57572) (_1!34546 lt!2056965)))))

(assert (=> b!4979101 d!1603526))

(assert (=> bm!347189 d!1603170))

(assert (=> b!4979161 d!1603328))

(declare-fun d!1603528 () Bool)

(assert (=> d!1603528 (= (apply!13937 (transformation!8450 (rule!11698 (_1!34545 (get!20011 lt!2057013)))) (seqFromList!6071 (originalCharacters!8709 (_1!34545 (get!20011 lt!2057013))))) (dynLambda!23325 (toValue!11429 (transformation!8450 (rule!11698 (_1!34545 (get!20011 lt!2057013))))) (seqFromList!6071 (originalCharacters!8709 (_1!34545 (get!20011 lt!2057013))))))))

(declare-fun b_lambda!197679 () Bool)

(assert (=> (not b_lambda!197679) (not d!1603528)))

(declare-fun tb!261561 () Bool)

(declare-fun t!369743 () Bool)

(assert (=> (and b!4978821 (= (toValue!11429 (transformation!8450 rule!200)) (toValue!11429 (transformation!8450 (rule!11698 (_1!34545 (get!20011 lt!2057013)))))) t!369743) tb!261561))

(declare-fun result!326826 () Bool)

(assert (=> tb!261561 (= result!326826 (inv!21 (dynLambda!23325 (toValue!11429 (transformation!8450 (rule!11698 (_1!34545 (get!20011 lt!2057013))))) (seqFromList!6071 (originalCharacters!8709 (_1!34545 (get!20011 lt!2057013)))))))))

(declare-fun m!6010594 () Bool)

(assert (=> tb!261561 m!6010594))

(assert (=> d!1603528 t!369743))

(declare-fun b_and!349547 () Bool)

(assert (= b_and!349533 (and (=> t!369743 result!326826) b_and!349547)))

(assert (=> d!1603528 m!6009726))

(declare-fun m!6010596 () Bool)

(assert (=> d!1603528 m!6010596))

(assert (=> b!4979161 d!1603528))

(declare-fun d!1603530 () Bool)

(assert (=> d!1603530 (= (seqFromList!6071 (originalCharacters!8709 (_1!34545 (get!20011 lt!2057013)))) (fromListB!2740 (originalCharacters!8709 (_1!34545 (get!20011 lt!2057013)))))))

(declare-fun bs!1184139 () Bool)

(assert (= bs!1184139 d!1603530))

(declare-fun m!6010598 () Bool)

(assert (=> bs!1184139 m!6010598))

(assert (=> b!4979161 d!1603530))

(declare-fun b!4979882 () Bool)

(declare-fun res!2125863 () Bool)

(declare-fun e!3112546 () Bool)

(assert (=> b!4979882 (=> (not res!2125863) (not e!3112546))))

(assert (=> b!4979882 (= res!2125863 (not (isEmpty!31072 (left!42073 (c!849434 input!1580)))))))

(declare-fun d!1603532 () Bool)

(declare-fun res!2125862 () Bool)

(declare-fun e!3112545 () Bool)

(assert (=> d!1603532 (=> res!2125862 e!3112545)))

(assert (=> d!1603532 (= res!2125862 (not ((_ is Node!15202) (c!849434 input!1580))))))

(assert (=> d!1603532 (= (isBalanced!4220 (c!849434 input!1580)) e!3112545)))

(declare-fun b!4979883 () Bool)

(declare-fun res!2125859 () Bool)

(assert (=> b!4979883 (=> (not res!2125859) (not e!3112546))))

(assert (=> b!4979883 (= res!2125859 (isBalanced!4220 (right!42403 (c!849434 input!1580))))))

(declare-fun b!4979884 () Bool)

(assert (=> b!4979884 (= e!3112546 (not (isEmpty!31072 (right!42403 (c!849434 input!1580)))))))

(declare-fun b!4979885 () Bool)

(declare-fun res!2125861 () Bool)

(assert (=> b!4979885 (=> (not res!2125861) (not e!3112546))))

(assert (=> b!4979885 (= res!2125861 (isBalanced!4220 (left!42073 (c!849434 input!1580))))))

(declare-fun b!4979886 () Bool)

(declare-fun res!2125864 () Bool)

(assert (=> b!4979886 (=> (not res!2125864) (not e!3112546))))

(assert (=> b!4979886 (= res!2125864 (<= (- (height!2022 (left!42073 (c!849434 input!1580))) (height!2022 (right!42403 (c!849434 input!1580)))) 1))))

(declare-fun b!4979887 () Bool)

(assert (=> b!4979887 (= e!3112545 e!3112546)))

(declare-fun res!2125860 () Bool)

(assert (=> b!4979887 (=> (not res!2125860) (not e!3112546))))

(assert (=> b!4979887 (= res!2125860 (<= (- 1) (- (height!2022 (left!42073 (c!849434 input!1580))) (height!2022 (right!42403 (c!849434 input!1580))))))))

(assert (= (and d!1603532 (not res!2125862)) b!4979887))

(assert (= (and b!4979887 res!2125860) b!4979886))

(assert (= (and b!4979886 res!2125864) b!4979885))

(assert (= (and b!4979885 res!2125861) b!4979883))

(assert (= (and b!4979883 res!2125859) b!4979882))

(assert (= (and b!4979882 res!2125863) b!4979884))

(declare-fun m!6010600 () Bool)

(assert (=> b!4979887 m!6010600))

(declare-fun m!6010602 () Bool)

(assert (=> b!4979887 m!6010602))

(declare-fun m!6010604 () Bool)

(assert (=> b!4979882 m!6010604))

(declare-fun m!6010606 () Bool)

(assert (=> b!4979883 m!6010606))

(declare-fun m!6010608 () Bool)

(assert (=> b!4979885 m!6010608))

(declare-fun m!6010610 () Bool)

(assert (=> b!4979884 m!6010610))

(assert (=> b!4979886 m!6010600))

(assert (=> b!4979886 m!6010602))

(assert (=> d!1603212 d!1603532))

(declare-fun d!1603534 () Bool)

(declare-fun c!849692 () Bool)

(assert (=> d!1603534 (= c!849692 ((_ is Node!15202) (left!42073 (c!849434 input!1580))))))

(declare-fun e!3112547 () Bool)

(assert (=> d!1603534 (= (inv!75380 (left!42073 (c!849434 input!1580))) e!3112547)))

(declare-fun b!4979888 () Bool)

(assert (=> b!4979888 (= e!3112547 (inv!75386 (left!42073 (c!849434 input!1580))))))

(declare-fun b!4979889 () Bool)

(declare-fun e!3112548 () Bool)

(assert (=> b!4979889 (= e!3112547 e!3112548)))

(declare-fun res!2125865 () Bool)

(assert (=> b!4979889 (= res!2125865 (not ((_ is Leaf!25252) (left!42073 (c!849434 input!1580)))))))

(assert (=> b!4979889 (=> res!2125865 e!3112548)))

(declare-fun b!4979890 () Bool)

(assert (=> b!4979890 (= e!3112548 (inv!75387 (left!42073 (c!849434 input!1580))))))

(assert (= (and d!1603534 c!849692) b!4979888))

(assert (= (and d!1603534 (not c!849692)) b!4979889))

(assert (= (and b!4979889 (not res!2125865)) b!4979890))

(declare-fun m!6010612 () Bool)

(assert (=> b!4979888 m!6010612))

(declare-fun m!6010614 () Bool)

(assert (=> b!4979890 m!6010614))

(assert (=> b!4979202 d!1603534))

(declare-fun d!1603536 () Bool)

(declare-fun c!849693 () Bool)

(assert (=> d!1603536 (= c!849693 ((_ is Node!15202) (right!42403 (c!849434 input!1580))))))

(declare-fun e!3112549 () Bool)

(assert (=> d!1603536 (= (inv!75380 (right!42403 (c!849434 input!1580))) e!3112549)))

(declare-fun b!4979891 () Bool)

(assert (=> b!4979891 (= e!3112549 (inv!75386 (right!42403 (c!849434 input!1580))))))

(declare-fun b!4979892 () Bool)

(declare-fun e!3112550 () Bool)

(assert (=> b!4979892 (= e!3112549 e!3112550)))

(declare-fun res!2125866 () Bool)

(assert (=> b!4979892 (= res!2125866 (not ((_ is Leaf!25252) (right!42403 (c!849434 input!1580)))))))

(assert (=> b!4979892 (=> res!2125866 e!3112550)))

(declare-fun b!4979893 () Bool)

(assert (=> b!4979893 (= e!3112550 (inv!75387 (right!42403 (c!849434 input!1580))))))

(assert (= (and d!1603536 c!849693) b!4979891))

(assert (= (and d!1603536 (not c!849693)) b!4979892))

(assert (= (and b!4979892 (not res!2125866)) b!4979893))

(declare-fun m!6010616 () Bool)

(assert (=> b!4979891 m!6010616))

(declare-fun m!6010618 () Bool)

(assert (=> b!4979893 m!6010618))

(assert (=> b!4979202 d!1603536))

(declare-fun d!1603538 () Bool)

(assert (=> d!1603538 (= (list!18446 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775)))) (list!18448 (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775))))))))

(declare-fun bs!1184140 () Bool)

(assert (= bs!1184140 d!1603538))

(declare-fun m!6010620 () Bool)

(assert (=> bs!1184140 m!6010620))

(assert (=> bs!1184093 d!1603538))

(declare-fun d!1603540 () Bool)

(assert (=> d!1603540 (= (list!18446 (seqFromList!6071 lt!2056775)) (list!18448 (c!849434 (seqFromList!6071 lt!2056775))))))

(declare-fun bs!1184141 () Bool)

(assert (= bs!1184141 d!1603540))

(declare-fun m!6010622 () Bool)

(assert (=> bs!1184141 m!6010622))

(assert (=> bs!1184093 d!1603540))

(assert (=> b!4979159 d!1603328))

(declare-fun d!1603542 () Bool)

(assert (=> d!1603542 (dynLambda!23324 lambda!247770 (_1!34543 lt!2056776))))

(assert (=> d!1603542 true))

(declare-fun _$1!11257 () Unit!148602)

(assert (=> d!1603542 (= (choose!36750 lambda!247770 (_1!34543 lt!2056776)) _$1!11257)))

(declare-fun b_lambda!197681 () Bool)

(assert (=> (not b_lambda!197681) (not d!1603542)))

(declare-fun bs!1184142 () Bool)

(assert (= bs!1184142 d!1603542))

(assert (=> bs!1184142 m!6009694))

(assert (=> d!1603192 d!1603542))

(assert (=> d!1603192 d!1603214))

(declare-fun d!1603544 () Bool)

(assert (=> d!1603544 (isPrefix!5261 lt!2056777 lt!2056777)))

(declare-fun lt!2057259 () Unit!148602)

(declare-fun choose!36763 (List!57696 List!57696) Unit!148602)

(assert (=> d!1603544 (= lt!2057259 (choose!36763 lt!2056777 lt!2056777))))

(assert (=> d!1603544 (= (lemmaIsPrefixRefl!3585 lt!2056777 lt!2056777) lt!2057259)))

(declare-fun bs!1184143 () Bool)

(assert (= bs!1184143 d!1603544))

(assert (=> bs!1184143 m!6009660))

(declare-fun m!6010624 () Bool)

(assert (=> bs!1184143 m!6010624))

(assert (=> bm!347236 d!1603544))

(declare-fun d!1603546 () Bool)

(declare-fun c!849694 () Bool)

(assert (=> d!1603546 (= c!849694 ((_ is Node!15202) (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776))))))))

(declare-fun e!3112551 () Bool)

(assert (=> d!1603546 (= (inv!75380 (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776))))) e!3112551)))

(declare-fun b!4979894 () Bool)

(assert (=> b!4979894 (= e!3112551 (inv!75386 (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776))))))))

(declare-fun b!4979895 () Bool)

(declare-fun e!3112552 () Bool)

(assert (=> b!4979895 (= e!3112551 e!3112552)))

(declare-fun res!2125867 () Bool)

(assert (=> b!4979895 (= res!2125867 (not ((_ is Leaf!25252) (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776)))))))))

(assert (=> b!4979895 (=> res!2125867 e!3112552)))

(declare-fun b!4979896 () Bool)

(assert (=> b!4979896 (= e!3112552 (inv!75387 (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776))))))))

(assert (= (and d!1603546 c!849694) b!4979894))

(assert (= (and d!1603546 (not c!849694)) b!4979895))

(assert (= (and b!4979895 (not res!2125867)) b!4979896))

(declare-fun m!6010626 () Bool)

(assert (=> b!4979894 m!6010626))

(declare-fun m!6010628 () Bool)

(assert (=> b!4979896 m!6010628))

(assert (=> b!4979210 d!1603546))

(assert (=> d!1603110 d!1603170))

(assert (=> d!1603110 d!1603412))

(declare-fun b!4979897 () Bool)

(declare-fun e!3112553 () List!57696)

(assert (=> b!4979897 (= e!3112553 (_2!34545 (get!20011 lt!2057013)))))

(declare-fun b!4979900 () Bool)

(declare-fun e!3112554 () Bool)

(declare-fun lt!2057260 () List!57696)

(assert (=> b!4979900 (= e!3112554 (or (not (= (_2!34545 (get!20011 lt!2057013)) Nil!57572)) (= lt!2057260 (list!18446 (charsOf!5448 (_1!34545 (get!20011 lt!2057013)))))))))

(declare-fun b!4979898 () Bool)

(assert (=> b!4979898 (= e!3112553 (Cons!57572 (h!64020 (list!18446 (charsOf!5448 (_1!34545 (get!20011 lt!2057013))))) (++!12547 (t!369708 (list!18446 (charsOf!5448 (_1!34545 (get!20011 lt!2057013))))) (_2!34545 (get!20011 lt!2057013)))))))

(declare-fun d!1603548 () Bool)

(assert (=> d!1603548 e!3112554))

(declare-fun res!2125868 () Bool)

(assert (=> d!1603548 (=> (not res!2125868) (not e!3112554))))

(assert (=> d!1603548 (= res!2125868 (= (content!10199 lt!2057260) ((_ map or) (content!10199 (list!18446 (charsOf!5448 (_1!34545 (get!20011 lt!2057013))))) (content!10199 (_2!34545 (get!20011 lt!2057013))))))))

(assert (=> d!1603548 (= lt!2057260 e!3112553)))

(declare-fun c!849695 () Bool)

(assert (=> d!1603548 (= c!849695 ((_ is Nil!57572) (list!18446 (charsOf!5448 (_1!34545 (get!20011 lt!2057013))))))))

(assert (=> d!1603548 (= (++!12547 (list!18446 (charsOf!5448 (_1!34545 (get!20011 lt!2057013)))) (_2!34545 (get!20011 lt!2057013))) lt!2057260)))

(declare-fun b!4979899 () Bool)

(declare-fun res!2125869 () Bool)

(assert (=> b!4979899 (=> (not res!2125869) (not e!3112554))))

(assert (=> b!4979899 (= res!2125869 (= (size!38191 lt!2057260) (+ (size!38191 (list!18446 (charsOf!5448 (_1!34545 (get!20011 lt!2057013))))) (size!38191 (_2!34545 (get!20011 lt!2057013))))))))

(assert (= (and d!1603548 c!849695) b!4979897))

(assert (= (and d!1603548 (not c!849695)) b!4979898))

(assert (= (and d!1603548 res!2125868) b!4979899))

(assert (= (and b!4979899 res!2125869) b!4979900))

(declare-fun m!6010630 () Bool)

(assert (=> b!4979898 m!6010630))

(declare-fun m!6010632 () Bool)

(assert (=> d!1603548 m!6010632))

(assert (=> d!1603548 m!6009706))

(declare-fun m!6010634 () Bool)

(assert (=> d!1603548 m!6010634))

(declare-fun m!6010636 () Bool)

(assert (=> d!1603548 m!6010636))

(declare-fun m!6010638 () Bool)

(assert (=> b!4979899 m!6010638))

(assert (=> b!4979899 m!6009706))

(declare-fun m!6010640 () Bool)

(assert (=> b!4979899 m!6010640))

(assert (=> b!4979899 m!6009702))

(assert (=> b!4979157 d!1603548))

(assert (=> b!4979157 d!1603350))

(assert (=> b!4979157 d!1603352))

(assert (=> b!4979157 d!1603328))

(declare-fun b!4979901 () Bool)

(declare-fun res!2125874 () Bool)

(declare-fun e!3112556 () Bool)

(assert (=> b!4979901 (=> (not res!2125874) (not e!3112556))))

(assert (=> b!4979901 (= res!2125874 (not (isEmpty!31072 (left!42073 (c!849434 totalInput!520)))))))

(declare-fun d!1603550 () Bool)

(declare-fun res!2125873 () Bool)

(declare-fun e!3112555 () Bool)

(assert (=> d!1603550 (=> res!2125873 e!3112555)))

(assert (=> d!1603550 (= res!2125873 (not ((_ is Node!15202) (c!849434 totalInput!520))))))

(assert (=> d!1603550 (= (isBalanced!4220 (c!849434 totalInput!520)) e!3112555)))

(declare-fun b!4979902 () Bool)

(declare-fun res!2125870 () Bool)

(assert (=> b!4979902 (=> (not res!2125870) (not e!3112556))))

(assert (=> b!4979902 (= res!2125870 (isBalanced!4220 (right!42403 (c!849434 totalInput!520))))))

(declare-fun b!4979903 () Bool)

(assert (=> b!4979903 (= e!3112556 (not (isEmpty!31072 (right!42403 (c!849434 totalInput!520)))))))

(declare-fun b!4979904 () Bool)

(declare-fun res!2125872 () Bool)

(assert (=> b!4979904 (=> (not res!2125872) (not e!3112556))))

(assert (=> b!4979904 (= res!2125872 (isBalanced!4220 (left!42073 (c!849434 totalInput!520))))))

(declare-fun b!4979905 () Bool)

(declare-fun res!2125875 () Bool)

(assert (=> b!4979905 (=> (not res!2125875) (not e!3112556))))

(assert (=> b!4979905 (= res!2125875 (<= (- (height!2022 (left!42073 (c!849434 totalInput!520))) (height!2022 (right!42403 (c!849434 totalInput!520)))) 1))))

(declare-fun b!4979906 () Bool)

(assert (=> b!4979906 (= e!3112555 e!3112556)))

(declare-fun res!2125871 () Bool)

(assert (=> b!4979906 (=> (not res!2125871) (not e!3112556))))

(assert (=> b!4979906 (= res!2125871 (<= (- 1) (- (height!2022 (left!42073 (c!849434 totalInput!520))) (height!2022 (right!42403 (c!849434 totalInput!520))))))))

(assert (= (and d!1603550 (not res!2125873)) b!4979906))

(assert (= (and b!4979906 res!2125871) b!4979905))

(assert (= (and b!4979905 res!2125875) b!4979904))

(assert (= (and b!4979904 res!2125872) b!4979902))

(assert (= (and b!4979902 res!2125870) b!4979901))

(assert (= (and b!4979901 res!2125874) b!4979903))

(assert (=> b!4979906 m!6010164))

(assert (=> b!4979906 m!6010166))

(declare-fun m!6010642 () Bool)

(assert (=> b!4979901 m!6010642))

(declare-fun m!6010644 () Bool)

(assert (=> b!4979902 m!6010644))

(declare-fun m!6010646 () Bool)

(assert (=> b!4979904 m!6010646))

(declare-fun m!6010648 () Bool)

(assert (=> b!4979903 m!6010648))

(assert (=> b!4979905 m!6010164))

(assert (=> b!4979905 m!6010166))

(assert (=> d!1603210 d!1603550))

(declare-fun d!1603552 () Bool)

(assert (=> d!1603552 (= (isEmpty!31065 (list!18446 (_1!34543 lt!2056776))) ((_ is Nil!57572) (list!18446 (_1!34543 lt!2056776))))))

(assert (=> d!1603216 d!1603552))

(assert (=> d!1603216 d!1603186))

(declare-fun d!1603554 () Bool)

(declare-fun lt!2057263 () Bool)

(assert (=> d!1603554 (= lt!2057263 (isEmpty!31065 (list!18448 (c!849434 (_1!34543 lt!2056776)))))))

(assert (=> d!1603554 (= lt!2057263 (= (size!38193 (c!849434 (_1!34543 lt!2056776))) 0))))

(assert (=> d!1603554 (= (isEmpty!31072 (c!849434 (_1!34543 lt!2056776))) lt!2057263)))

(declare-fun bs!1184144 () Bool)

(assert (= bs!1184144 d!1603554))

(assert (=> bs!1184144 m!6009686))

(assert (=> bs!1184144 m!6009686))

(declare-fun m!6010650 () Bool)

(assert (=> bs!1184144 m!6010650))

(assert (=> bs!1184144 m!6009740))

(assert (=> d!1603216 d!1603554))

(declare-fun d!1603556 () Bool)

(assert (=> d!1603556 (= lt!2056777 Nil!57572)))

(declare-fun lt!2057266 () Unit!148602)

(declare-fun choose!36764 (List!57696 List!57696 List!57696) Unit!148602)

(assert (=> d!1603556 (= lt!2057266 (choose!36764 lt!2056777 Nil!57572 lt!2056777))))

(assert (=> d!1603556 (isPrefix!5261 lt!2056777 lt!2056777)))

(assert (=> d!1603556 (= (lemmaIsPrefixSameLengthThenSameList!1221 lt!2056777 Nil!57572 lt!2056777) lt!2057266)))

(declare-fun bs!1184145 () Bool)

(assert (= bs!1184145 d!1603556))

(declare-fun m!6010652 () Bool)

(assert (=> bs!1184145 m!6010652))

(assert (=> bs!1184145 m!6009660))

(assert (=> bm!347233 d!1603556))

(declare-fun d!1603558 () Bool)

(assert (=> d!1603558 (= (inv!75388 (xs!18528 (c!849434 totalInput!520))) (<= (size!38191 (innerList!15290 (xs!18528 (c!849434 totalInput!520)))) 2147483647))))

(declare-fun bs!1184146 () Bool)

(assert (= bs!1184146 d!1603558))

(declare-fun m!6010654 () Bool)

(assert (=> bs!1184146 m!6010654))

(assert (=> b!4979186 d!1603558))

(declare-fun d!1603560 () Bool)

(assert (=> d!1603560 (dynLambda!23324 lambda!247770 (seqFromList!6071 lt!2056775))))

(assert (=> d!1603560 true))

(declare-fun _$1!11258 () Unit!148602)

(assert (=> d!1603560 (= (choose!36750 lambda!247770 (seqFromList!6071 lt!2056775)) _$1!11258)))

(declare-fun b_lambda!197683 () Bool)

(assert (=> (not b_lambda!197683) (not d!1603560)))

(declare-fun bs!1184147 () Bool)

(assert (= bs!1184147 d!1603560))

(assert (=> bs!1184147 m!6009334))

(assert (=> bs!1184147 m!6009688))

(assert (=> d!1603188 d!1603560))

(assert (=> d!1603188 d!1603214))

(assert (=> bm!347234 d!1603516))

(declare-fun b!4979909 () Bool)

(declare-fun e!3112559 () Bool)

(assert (=> b!4979909 (= e!3112559 (isPrefix!5261 (tail!9817 lt!2056777) (tail!9817 lt!2056777)))))

(declare-fun b!4979907 () Bool)

(declare-fun e!3112557 () Bool)

(assert (=> b!4979907 (= e!3112557 e!3112559)))

(declare-fun res!2125879 () Bool)

(assert (=> b!4979907 (=> (not res!2125879) (not e!3112559))))

(assert (=> b!4979907 (= res!2125879 (not ((_ is Nil!57572) lt!2056777)))))

(declare-fun b!4979908 () Bool)

(declare-fun res!2125876 () Bool)

(assert (=> b!4979908 (=> (not res!2125876) (not e!3112559))))

(assert (=> b!4979908 (= res!2125876 (= (head!10684 lt!2056777) (head!10684 lt!2056777)))))

(declare-fun d!1603562 () Bool)

(declare-fun e!3112558 () Bool)

(assert (=> d!1603562 e!3112558))

(declare-fun res!2125878 () Bool)

(assert (=> d!1603562 (=> res!2125878 e!3112558)))

(declare-fun lt!2057267 () Bool)

(assert (=> d!1603562 (= res!2125878 (not lt!2057267))))

(assert (=> d!1603562 (= lt!2057267 e!3112557)))

(declare-fun res!2125877 () Bool)

(assert (=> d!1603562 (=> res!2125877 e!3112557)))

(assert (=> d!1603562 (= res!2125877 ((_ is Nil!57572) lt!2056777))))

(assert (=> d!1603562 (= (isPrefix!5261 lt!2056777 lt!2056777) lt!2057267)))

(declare-fun b!4979910 () Bool)

(assert (=> b!4979910 (= e!3112558 (>= (size!38191 lt!2056777) (size!38191 lt!2056777)))))

(assert (= (and d!1603562 (not res!2125877)) b!4979907))

(assert (= (and b!4979907 res!2125879) b!4979908))

(assert (= (and b!4979908 res!2125876) b!4979909))

(assert (= (and d!1603562 (not res!2125878)) b!4979910))

(assert (=> b!4979909 m!6009614))

(assert (=> b!4979909 m!6009614))

(assert (=> b!4979909 m!6009614))

(assert (=> b!4979909 m!6009614))

(declare-fun m!6010656 () Bool)

(assert (=> b!4979909 m!6010656))

(assert (=> b!4979908 m!6009630))

(assert (=> b!4979908 m!6009630))

(assert (=> b!4979910 m!6009380))

(assert (=> b!4979910 m!6009380))

(assert (=> bm!347240 d!1603562))

(assert (=> d!1603174 d!1603180))

(declare-fun b!4979911 () Bool)

(declare-fun e!3112561 () Bool)

(assert (=> b!4979911 (= e!3112561 (inv!15 (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775))))))

(declare-fun b!4979912 () Bool)

(declare-fun e!3112560 () Bool)

(assert (=> b!4979912 (= e!3112560 (inv!16 (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775))))))

(declare-fun b!4979913 () Bool)

(declare-fun e!3112562 () Bool)

(assert (=> b!4979913 (= e!3112562 (inv!17 (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775))))))

(declare-fun d!1603564 () Bool)

(declare-fun c!849697 () Bool)

(assert (=> d!1603564 (= c!849697 ((_ is IntegerValue!26280) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775))))))

(assert (=> d!1603564 (= (inv!21 (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775))) e!3112560)))

(declare-fun b!4979914 () Bool)

(assert (=> b!4979914 (= e!3112560 e!3112562)))

(declare-fun c!849696 () Bool)

(assert (=> b!4979914 (= c!849696 ((_ is IntegerValue!26281) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775))))))

(declare-fun b!4979915 () Bool)

(declare-fun res!2125880 () Bool)

(assert (=> b!4979915 (=> res!2125880 e!3112561)))

(assert (=> b!4979915 (= res!2125880 (not ((_ is IntegerValue!26282) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775)))))))

(assert (=> b!4979915 (= e!3112562 e!3112561)))

(assert (= (and d!1603564 c!849697) b!4979912))

(assert (= (and d!1603564 (not c!849697)) b!4979914))

(assert (= (and b!4979914 c!849696) b!4979913))

(assert (= (and b!4979914 (not c!849696)) b!4979915))

(assert (= (and b!4979915 (not res!2125880)) b!4979911))

(declare-fun m!6010658 () Bool)

(assert (=> b!4979911 m!6010658))

(declare-fun m!6010660 () Bool)

(assert (=> b!4979912 m!6010660))

(declare-fun m!6010662 () Bool)

(assert (=> b!4979913 m!6010662))

(assert (=> tb!261547 d!1603564))

(declare-fun b!4979918 () Bool)

(declare-fun e!3112565 () Bool)

(assert (=> b!4979918 (= e!3112565 (isPrefix!5261 (tail!9817 Nil!57572) (tail!9817 (++!12547 Nil!57572 lt!2056777))))))

(declare-fun b!4979916 () Bool)

(declare-fun e!3112563 () Bool)

(assert (=> b!4979916 (= e!3112563 e!3112565)))

(declare-fun res!2125884 () Bool)

(assert (=> b!4979916 (=> (not res!2125884) (not e!3112565))))

(assert (=> b!4979916 (= res!2125884 (not ((_ is Nil!57572) (++!12547 Nil!57572 lt!2056777))))))

(declare-fun b!4979917 () Bool)

(declare-fun res!2125881 () Bool)

(assert (=> b!4979917 (=> (not res!2125881) (not e!3112565))))

(assert (=> b!4979917 (= res!2125881 (= (head!10684 Nil!57572) (head!10684 (++!12547 Nil!57572 lt!2056777))))))

(declare-fun d!1603566 () Bool)

(declare-fun e!3112564 () Bool)

(assert (=> d!1603566 e!3112564))

(declare-fun res!2125883 () Bool)

(assert (=> d!1603566 (=> res!2125883 e!3112564)))

(declare-fun lt!2057268 () Bool)

(assert (=> d!1603566 (= res!2125883 (not lt!2057268))))

(assert (=> d!1603566 (= lt!2057268 e!3112563)))

(declare-fun res!2125882 () Bool)

(assert (=> d!1603566 (=> res!2125882 e!3112563)))

(assert (=> d!1603566 (= res!2125882 ((_ is Nil!57572) Nil!57572))))

(assert (=> d!1603566 (= (isPrefix!5261 Nil!57572 (++!12547 Nil!57572 lt!2056777)) lt!2057268)))

(declare-fun b!4979919 () Bool)

(assert (=> b!4979919 (= e!3112564 (>= (size!38191 (++!12547 Nil!57572 lt!2056777)) (size!38191 Nil!57572)))))

(assert (= (and d!1603566 (not res!2125882)) b!4979916))

(assert (= (and b!4979916 res!2125884) b!4979917))

(assert (= (and b!4979917 res!2125881) b!4979918))

(assert (= (and d!1603566 (not res!2125883)) b!4979919))

(declare-fun m!6010664 () Bool)

(assert (=> b!4979918 m!6010664))

(assert (=> b!4979918 m!6009650))

(declare-fun m!6010666 () Bool)

(assert (=> b!4979918 m!6010666))

(assert (=> b!4979918 m!6010664))

(assert (=> b!4979918 m!6010666))

(declare-fun m!6010668 () Bool)

(assert (=> b!4979918 m!6010668))

(declare-fun m!6010670 () Bool)

(assert (=> b!4979917 m!6010670))

(assert (=> b!4979917 m!6009650))

(declare-fun m!6010672 () Bool)

(assert (=> b!4979917 m!6010672))

(assert (=> b!4979919 m!6009650))

(declare-fun m!6010674 () Bool)

(assert (=> b!4979919 m!6010674))

(assert (=> b!4979919 m!6009378))

(assert (=> d!1603134 d!1603566))

(declare-fun d!1603568 () Bool)

(declare-fun lostCauseFct!288 (Regex!13683) Bool)

(assert (=> d!1603568 (= (lostCause!1145 (regex!8450 rule!200)) (lostCauseFct!288 (regex!8450 rule!200)))))

(declare-fun bs!1184148 () Bool)

(assert (= bs!1184148 d!1603568))

(declare-fun m!6010676 () Bool)

(assert (=> bs!1184148 m!6010676))

(assert (=> d!1603134 d!1603568))

(assert (=> d!1603134 d!1603498))

(declare-fun d!1603570 () Bool)

(assert (=> d!1603570 (isPrefix!5261 Nil!57572 (++!12547 Nil!57572 lt!2056777))))

(declare-fun lt!2057271 () Unit!148602)

(declare-fun choose!36765 (List!57696 List!57696) Unit!148602)

(assert (=> d!1603570 (= lt!2057271 (choose!36765 Nil!57572 lt!2056777))))

(assert (=> d!1603570 (= (lemmaConcatTwoListThenFirstIsPrefix!3359 Nil!57572 lt!2056777) lt!2057271)))

(declare-fun bs!1184149 () Bool)

(assert (= bs!1184149 d!1603570))

(assert (=> bs!1184149 m!6009650))

(assert (=> bs!1184149 m!6009650))

(assert (=> bs!1184149 m!6009652))

(declare-fun m!6010678 () Bool)

(assert (=> bs!1184149 m!6010678))

(assert (=> d!1603134 d!1603570))

(declare-fun b!4979920 () Bool)

(declare-fun e!3112566 () List!57696)

(assert (=> b!4979920 (= e!3112566 lt!2056777)))

(declare-fun b!4979923 () Bool)

(declare-fun e!3112567 () Bool)

(declare-fun lt!2057272 () List!57696)

(assert (=> b!4979923 (= e!3112567 (or (not (= lt!2056777 Nil!57572)) (= lt!2057272 Nil!57572)))))

(declare-fun b!4979921 () Bool)

(assert (=> b!4979921 (= e!3112566 (Cons!57572 (h!64020 Nil!57572) (++!12547 (t!369708 Nil!57572) lt!2056777)))))

(declare-fun d!1603572 () Bool)

(assert (=> d!1603572 e!3112567))

(declare-fun res!2125885 () Bool)

(assert (=> d!1603572 (=> (not res!2125885) (not e!3112567))))

(assert (=> d!1603572 (= res!2125885 (= (content!10199 lt!2057272) ((_ map or) (content!10199 Nil!57572) (content!10199 lt!2056777))))))

(assert (=> d!1603572 (= lt!2057272 e!3112566)))

(declare-fun c!849698 () Bool)

(assert (=> d!1603572 (= c!849698 ((_ is Nil!57572) Nil!57572))))

(assert (=> d!1603572 (= (++!12547 Nil!57572 lt!2056777) lt!2057272)))

(declare-fun b!4979922 () Bool)

(declare-fun res!2125886 () Bool)

(assert (=> b!4979922 (=> (not res!2125886) (not e!3112567))))

(assert (=> b!4979922 (= res!2125886 (= (size!38191 lt!2057272) (+ (size!38191 Nil!57572) (size!38191 lt!2056777))))))

(assert (= (and d!1603572 c!849698) b!4979920))

(assert (= (and d!1603572 (not c!849698)) b!4979921))

(assert (= (and d!1603572 res!2125885) b!4979922))

(assert (= (and b!4979922 res!2125886) b!4979923))

(declare-fun m!6010680 () Bool)

(assert (=> b!4979921 m!6010680))

(declare-fun m!6010682 () Bool)

(assert (=> d!1603572 m!6010682))

(assert (=> d!1603572 m!6010526))

(declare-fun m!6010684 () Bool)

(assert (=> d!1603572 m!6010684))

(declare-fun m!6010686 () Bool)

(assert (=> b!4979922 m!6010686))

(assert (=> b!4979922 m!6009378))

(assert (=> b!4979922 m!6009380))

(assert (=> d!1603134 d!1603572))

(assert (=> d!1603134 d!1603412))

(declare-fun d!1603574 () Bool)

(assert (=> d!1603574 (= lt!2056777 lt!2056963)))

(declare-fun lt!2057275 () Unit!148602)

(declare-fun choose!36766 (List!57696 List!57696 List!57696 List!57696 List!57696) Unit!148602)

(assert (=> d!1603574 (= lt!2057275 (choose!36766 Nil!57572 lt!2056777 Nil!57572 lt!2056963 lt!2056777))))

(assert (=> d!1603574 (isPrefix!5261 Nil!57572 lt!2056777)))

(assert (=> d!1603574 (= (lemmaSamePrefixThenSameSuffix!2513 Nil!57572 lt!2056777 Nil!57572 lt!2056963 lt!2056777) lt!2057275)))

(declare-fun bs!1184150 () Bool)

(assert (= bs!1184150 d!1603574))

(declare-fun m!6010688 () Bool)

(assert (=> bs!1184150 m!6010688))

(assert (=> bs!1184150 m!6010550))

(assert (=> d!1603134 d!1603574))

(declare-fun b!4979924 () Bool)

(declare-fun e!3112568 () List!57696)

(assert (=> b!4979924 (= e!3112568 (_2!34546 lt!2056979))))

(declare-fun b!4979927 () Bool)

(declare-fun e!3112569 () Bool)

(declare-fun lt!2057276 () List!57696)

(assert (=> b!4979927 (= e!3112569 (or (not (= (_2!34546 lt!2056979) Nil!57572)) (= lt!2057276 (_1!34546 lt!2056979))))))

(declare-fun b!4979925 () Bool)

(assert (=> b!4979925 (= e!3112568 (Cons!57572 (h!64020 (_1!34546 lt!2056979)) (++!12547 (t!369708 (_1!34546 lt!2056979)) (_2!34546 lt!2056979))))))

(declare-fun d!1603576 () Bool)

(assert (=> d!1603576 e!3112569))

(declare-fun res!2125887 () Bool)

(assert (=> d!1603576 (=> (not res!2125887) (not e!3112569))))

(assert (=> d!1603576 (= res!2125887 (= (content!10199 lt!2057276) ((_ map or) (content!10199 (_1!34546 lt!2056979)) (content!10199 (_2!34546 lt!2056979)))))))

(assert (=> d!1603576 (= lt!2057276 e!3112568)))

(declare-fun c!849699 () Bool)

(assert (=> d!1603576 (= c!849699 ((_ is Nil!57572) (_1!34546 lt!2056979)))))

(assert (=> d!1603576 (= (++!12547 (_1!34546 lt!2056979) (_2!34546 lt!2056979)) lt!2057276)))

(declare-fun b!4979926 () Bool)

(declare-fun res!2125888 () Bool)

(assert (=> b!4979926 (=> (not res!2125888) (not e!3112569))))

(assert (=> b!4979926 (= res!2125888 (= (size!38191 lt!2057276) (+ (size!38191 (_1!34546 lt!2056979)) (size!38191 (_2!34546 lt!2056979)))))))

(assert (= (and d!1603576 c!849699) b!4979924))

(assert (= (and d!1603576 (not c!849699)) b!4979925))

(assert (= (and d!1603576 res!2125887) b!4979926))

(assert (= (and b!4979926 res!2125888) b!4979927))

(declare-fun m!6010690 () Bool)

(assert (=> b!4979925 m!6010690))

(declare-fun m!6010692 () Bool)

(assert (=> d!1603576 m!6010692))

(declare-fun m!6010694 () Bool)

(assert (=> d!1603576 m!6010694))

(declare-fun m!6010696 () Bool)

(assert (=> d!1603576 m!6010696))

(declare-fun m!6010698 () Bool)

(assert (=> b!4979926 m!6010698))

(assert (=> b!4979926 m!6009640))

(declare-fun m!6010700 () Bool)

(assert (=> b!4979926 m!6010700))

(assert (=> d!1603134 d!1603576))

(declare-fun d!1603578 () Bool)

(declare-fun res!2125889 () Bool)

(declare-fun e!3112570 () Bool)

(assert (=> d!1603578 (=> (not res!2125889) (not e!3112570))))

(assert (=> d!1603578 (= res!2125889 (= (csize!30634 (c!849434 input!1580)) (+ (size!38193 (left!42073 (c!849434 input!1580))) (size!38193 (right!42403 (c!849434 input!1580))))))))

(assert (=> d!1603578 (= (inv!75386 (c!849434 input!1580)) e!3112570)))

(declare-fun b!4979928 () Bool)

(declare-fun res!2125890 () Bool)

(assert (=> b!4979928 (=> (not res!2125890) (not e!3112570))))

(assert (=> b!4979928 (= res!2125890 (and (not (= (left!42073 (c!849434 input!1580)) Empty!15202)) (not (= (right!42403 (c!849434 input!1580)) Empty!15202))))))

(declare-fun b!4979929 () Bool)

(declare-fun res!2125891 () Bool)

(assert (=> b!4979929 (=> (not res!2125891) (not e!3112570))))

(assert (=> b!4979929 (= res!2125891 (= (cheight!15413 (c!849434 input!1580)) (+ (max!0 (height!2022 (left!42073 (c!849434 input!1580))) (height!2022 (right!42403 (c!849434 input!1580)))) 1)))))

(declare-fun b!4979930 () Bool)

(assert (=> b!4979930 (= e!3112570 (<= 0 (cheight!15413 (c!849434 input!1580))))))

(assert (= (and d!1603578 res!2125889) b!4979928))

(assert (= (and b!4979928 res!2125890) b!4979929))

(assert (= (and b!4979929 res!2125891) b!4979930))

(declare-fun m!6010702 () Bool)

(assert (=> d!1603578 m!6010702))

(declare-fun m!6010704 () Bool)

(assert (=> d!1603578 m!6010704))

(assert (=> b!4979929 m!6010600))

(assert (=> b!4979929 m!6010602))

(assert (=> b!4979929 m!6010600))

(assert (=> b!4979929 m!6010602))

(declare-fun m!6010706 () Bool)

(assert (=> b!4979929 m!6010706))

(assert (=> b!4979133 d!1603578))

(assert (=> d!1603122 d!1603180))

(declare-fun d!1603580 () Bool)

(declare-fun res!2125892 () Bool)

(declare-fun e!3112571 () Bool)

(assert (=> d!1603580 (=> (not res!2125892) (not e!3112571))))

(assert (=> d!1603580 (= res!2125892 (<= (size!38191 (list!18450 (xs!18528 (c!849434 input!1580)))) 512))))

(assert (=> d!1603580 (= (inv!75387 (c!849434 input!1580)) e!3112571)))

(declare-fun b!4979931 () Bool)

(declare-fun res!2125893 () Bool)

(assert (=> b!4979931 (=> (not res!2125893) (not e!3112571))))

(assert (=> b!4979931 (= res!2125893 (= (csize!30635 (c!849434 input!1580)) (size!38191 (list!18450 (xs!18528 (c!849434 input!1580))))))))

(declare-fun b!4979932 () Bool)

(assert (=> b!4979932 (= e!3112571 (and (> (csize!30635 (c!849434 input!1580)) 0) (<= (csize!30635 (c!849434 input!1580)) 512)))))

(assert (= (and d!1603580 res!2125892) b!4979931))

(assert (= (and b!4979931 res!2125893) b!4979932))

(assert (=> d!1603580 m!6010408))

(assert (=> d!1603580 m!6010408))

(declare-fun m!6010708 () Bool)

(assert (=> d!1603580 m!6010708))

(assert (=> b!4979931 m!6010408))

(assert (=> b!4979931 m!6010408))

(assert (=> b!4979931 m!6010708))

(assert (=> b!4979135 d!1603580))

(assert (=> b!4978816 d!1603184))

(declare-fun d!1603582 () Bool)

(assert (=> d!1603582 true))

(assert (=> d!1603582 true))

(declare-fun res!2125896 () Bool)

(assert (=> d!1603582 (= (choose!36751 lambda!247770) res!2125896)))

(assert (=> d!1603214 d!1603582))

(assert (=> b!4978896 d!1603444))

(declare-fun d!1603584 () Bool)

(assert (not d!1603584))

(assert (=> b!4979114 d!1603584))

(declare-fun b!4979934 () Bool)

(declare-fun e!3112572 () List!57696)

(declare-fun e!3112573 () List!57696)

(assert (=> b!4979934 (= e!3112572 e!3112573)))

(declare-fun c!849701 () Bool)

(assert (=> b!4979934 (= c!849701 ((_ is Leaf!25252) (c!849434 (_1!34543 lt!2056776))))))

(declare-fun d!1603586 () Bool)

(declare-fun c!849700 () Bool)

(assert (=> d!1603586 (= c!849700 ((_ is Empty!15202) (c!849434 (_1!34543 lt!2056776))))))

(assert (=> d!1603586 (= (list!18448 (c!849434 (_1!34543 lt!2056776))) e!3112572)))

(declare-fun b!4979935 () Bool)

(assert (=> b!4979935 (= e!3112573 (list!18450 (xs!18528 (c!849434 (_1!34543 lt!2056776)))))))

(declare-fun b!4979936 () Bool)

(assert (=> b!4979936 (= e!3112573 (++!12547 (list!18448 (left!42073 (c!849434 (_1!34543 lt!2056776)))) (list!18448 (right!42403 (c!849434 (_1!34543 lt!2056776))))))))

(declare-fun b!4979933 () Bool)

(assert (=> b!4979933 (= e!3112572 Nil!57572)))

(assert (= (and d!1603586 c!849700) b!4979933))

(assert (= (and d!1603586 (not c!849700)) b!4979934))

(assert (= (and b!4979934 c!849701) b!4979935))

(assert (= (and b!4979934 (not c!849701)) b!4979936))

(declare-fun m!6010710 () Bool)

(assert (=> b!4979935 m!6010710))

(declare-fun m!6010712 () Bool)

(assert (=> b!4979936 m!6010712))

(declare-fun m!6010714 () Bool)

(assert (=> b!4979936 m!6010714))

(assert (=> b!4979936 m!6010712))

(assert (=> b!4979936 m!6010714))

(declare-fun m!6010716 () Bool)

(assert (=> b!4979936 m!6010716))

(assert (=> d!1603186 d!1603586))

(assert (=> bm!347238 d!1603496))

(declare-fun d!1603588 () Bool)

(assert (=> d!1603588 (= (inv!75388 (xs!18528 (c!849434 input!1580))) (<= (size!38191 (innerList!15290 (xs!18528 (c!849434 input!1580)))) 2147483647))))

(declare-fun bs!1184151 () Bool)

(assert (= bs!1184151 d!1603588))

(declare-fun m!6010718 () Bool)

(assert (=> bs!1184151 m!6010718))

(assert (=> b!4979203 d!1603588))

(declare-fun b!4979938 () Bool)

(declare-fun e!3112574 () List!57696)

(declare-fun e!3112575 () List!57696)

(assert (=> b!4979938 (= e!3112574 e!3112575)))

(declare-fun c!849703 () Bool)

(assert (=> b!4979938 (= c!849703 ((_ is Leaf!25252) (c!849434 totalInput!520)))))

(declare-fun d!1603590 () Bool)

(declare-fun c!849702 () Bool)

(assert (=> d!1603590 (= c!849702 ((_ is Empty!15202) (c!849434 totalInput!520)))))

(assert (=> d!1603590 (= (list!18448 (c!849434 totalInput!520)) e!3112574)))

(declare-fun b!4979939 () Bool)

(assert (=> b!4979939 (= e!3112575 (list!18450 (xs!18528 (c!849434 totalInput!520))))))

(declare-fun b!4979940 () Bool)

(assert (=> b!4979940 (= e!3112575 (++!12547 (list!18448 (left!42073 (c!849434 totalInput!520))) (list!18448 (right!42403 (c!849434 totalInput!520)))))))

(declare-fun b!4979937 () Bool)

(assert (=> b!4979937 (= e!3112574 Nil!57572)))

(assert (= (and d!1603590 c!849702) b!4979937))

(assert (= (and d!1603590 (not c!849702)) b!4979938))

(assert (= (and b!4979938 c!849703) b!4979939))

(assert (= (and b!4979938 (not c!849703)) b!4979940))

(assert (=> b!4979939 m!6010126))

(declare-fun m!6010720 () Bool)

(assert (=> b!4979940 m!6010720))

(declare-fun m!6010722 () Bool)

(assert (=> b!4979940 m!6010722))

(assert (=> b!4979940 m!6010720))

(assert (=> b!4979940 m!6010722))

(declare-fun m!6010724 () Bool)

(assert (=> b!4979940 m!6010724))

(assert (=> d!1603206 d!1603590))

(assert (=> b!4979164 d!1603134))

(declare-fun d!1603592 () Bool)

(assert (=> d!1603592 (= (apply!13937 (transformation!8450 rule!200) (seqFromList!6071 (_1!34546 lt!2057016))) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 (_1!34546 lt!2057016))))))

(declare-fun b_lambda!197685 () Bool)

(assert (=> (not b_lambda!197685) (not d!1603592)))

(declare-fun t!369747 () Bool)

(declare-fun tb!261563 () Bool)

(assert (=> (and b!4978821 (= (toValue!11429 (transformation!8450 rule!200)) (toValue!11429 (transformation!8450 rule!200))) t!369747) tb!261563))

(declare-fun result!326828 () Bool)

(assert (=> tb!261563 (= result!326828 (inv!21 (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 (_1!34546 lt!2057016)))))))

(declare-fun m!6010726 () Bool)

(assert (=> tb!261563 m!6010726))

(assert (=> d!1603592 t!369747))

(declare-fun b_and!349549 () Bool)

(assert (= b_and!349547 (and (=> t!369747 result!326828) b_and!349549)))

(assert (=> d!1603592 m!6009718))

(declare-fun m!6010728 () Bool)

(assert (=> d!1603592 m!6010728))

(assert (=> b!4979164 d!1603592))

(assert (=> b!4979164 d!1603172))

(declare-fun d!1603594 () Bool)

(declare-fun lt!2057277 () Int)

(assert (=> d!1603594 (= lt!2057277 (size!38191 (list!18446 (seqFromList!6071 (_1!34546 lt!2057016)))))))

(assert (=> d!1603594 (= lt!2057277 (size!38193 (c!849434 (seqFromList!6071 (_1!34546 lt!2057016)))))))

(assert (=> d!1603594 (= (size!38190 (seqFromList!6071 (_1!34546 lt!2057016))) lt!2057277)))

(declare-fun bs!1184152 () Bool)

(assert (= bs!1184152 d!1603594))

(assert (=> bs!1184152 m!6009718))

(declare-fun m!6010730 () Bool)

(assert (=> bs!1184152 m!6010730))

(assert (=> bs!1184152 m!6010730))

(declare-fun m!6010732 () Bool)

(assert (=> bs!1184152 m!6010732))

(declare-fun m!6010734 () Bool)

(assert (=> bs!1184152 m!6010734))

(assert (=> b!4979164 d!1603594))

(assert (=> b!4979164 d!1603176))

(declare-fun bs!1184153 () Bool)

(declare-fun d!1603596 () Bool)

(assert (= bs!1184153 (and d!1603596 b!4978824)))

(declare-fun lambda!247788 () Int)

(assert (=> bs!1184153 (= lambda!247788 lambda!247770)))

(declare-fun bs!1184154 () Bool)

(assert (= bs!1184154 (and d!1603596 d!1603180)))

(assert (=> bs!1184154 (= lambda!247788 lambda!247776)))

(declare-fun b!4979945 () Bool)

(declare-fun e!3112579 () Bool)

(assert (=> b!4979945 (= e!3112579 true)))

(assert (=> d!1603596 e!3112579))

(assert (= d!1603596 b!4979945))

(assert (=> b!4979945 (< (dynLambda!23318 order!26453 (toValue!11429 (transformation!8450 rule!200))) (dynLambda!23319 order!26455 lambda!247788))))

(assert (=> b!4979945 (< (dynLambda!23320 order!26457 (toChars!11288 (transformation!8450 rule!200))) (dynLambda!23319 order!26455 lambda!247788))))

(assert (=> d!1603596 (= (list!18446 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 (_1!34546 lt!2057016))))) (list!18446 (seqFromList!6071 (_1!34546 lt!2057016))))))

(declare-fun lt!2057280 () Unit!148602)

(assert (=> d!1603596 (= lt!2057280 (ForallOf!1260 lambda!247788 (seqFromList!6071 (_1!34546 lt!2057016))))))

(assert (=> d!1603596 (= (lemmaSemiInverse!2611 (transformation!8450 rule!200) (seqFromList!6071 (_1!34546 lt!2057016))) lt!2057280)))

(declare-fun b_lambda!197687 () Bool)

(assert (=> (not b_lambda!197687) (not d!1603596)))

(declare-fun t!369749 () Bool)

(declare-fun tb!261565 () Bool)

(assert (=> (and b!4978821 (= (toChars!11288 (transformation!8450 rule!200)) (toChars!11288 (transformation!8450 rule!200))) t!369749) tb!261565))

(declare-fun e!3112580 () Bool)

(declare-fun b!4979946 () Bool)

(declare-fun tp!1396259 () Bool)

(assert (=> b!4979946 (= e!3112580 (and (inv!75380 (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 (_1!34546 lt!2057016)))))) tp!1396259))))

(declare-fun result!326830 () Bool)

(assert (=> tb!261565 (= result!326830 (and (inv!75382 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 (_1!34546 lt!2057016))))) e!3112580))))

(assert (= tb!261565 b!4979946))

(declare-fun m!6010736 () Bool)

(assert (=> b!4979946 m!6010736))

(declare-fun m!6010738 () Bool)

(assert (=> tb!261565 m!6010738))

(assert (=> d!1603596 t!369749))

(declare-fun b_and!349551 () Bool)

(assert (= b_and!349537 (and (=> t!369749 result!326830) b_and!349551)))

(declare-fun b_lambda!197689 () Bool)

(assert (=> (not b_lambda!197689) (not d!1603596)))

(assert (=> d!1603596 t!369747))

(declare-fun b_and!349553 () Bool)

(assert (= b_and!349549 (and (=> t!369747 result!326828) b_and!349553)))

(assert (=> d!1603596 m!6009718))

(assert (=> d!1603596 m!6010730))

(assert (=> d!1603596 m!6009718))

(assert (=> d!1603596 m!6010728))

(declare-fun m!6010740 () Bool)

(assert (=> d!1603596 m!6010740))

(declare-fun m!6010742 () Bool)

(assert (=> d!1603596 m!6010742))

(assert (=> d!1603596 m!6010728))

(assert (=> d!1603596 m!6010740))

(assert (=> d!1603596 m!6009718))

(declare-fun m!6010744 () Bool)

(assert (=> d!1603596 m!6010744))

(assert (=> b!4979164 d!1603596))

(assert (=> b!4979164 d!1603178))

(declare-fun d!1603598 () Bool)

(assert (=> d!1603598 (= (seqFromList!6071 (_1!34546 lt!2057016)) (fromListB!2740 (_1!34546 lt!2057016)))))

(declare-fun bs!1184155 () Bool)

(assert (= bs!1184155 d!1603598))

(declare-fun m!6010746 () Bool)

(assert (=> bs!1184155 m!6010746))

(assert (=> b!4979164 d!1603598))

(assert (=> b!4979164 d!1603416))

(assert (=> b!4979117 d!1603378))

(assert (=> b!4979175 d!1603342))

(declare-fun d!1603600 () Bool)

(assert (=> d!1603600 (= (isEmpty!31065 (_1!34546 lt!2056979)) ((_ is Nil!57572) (_1!34546 lt!2056979)))))

(assert (=> b!4979102 d!1603600))

(declare-fun d!1603602 () Bool)

(assert (=> d!1603602 (= (list!18446 (_1!34543 lt!2057028)) (list!18448 (c!849434 (_1!34543 lt!2057028))))))

(declare-fun bs!1184156 () Bool)

(assert (= bs!1184156 d!1603602))

(declare-fun m!6010748 () Bool)

(assert (=> bs!1184156 m!6010748))

(assert (=> d!1603218 d!1603602))

(declare-fun d!1603604 () Bool)

(declare-fun res!2125899 () tuple2!62480)

(assert (=> d!1603604 (= (tuple2!62487 (list!18446 (_1!34543 res!2125899)) (list!18446 (_2!34543 res!2125899))) (findLongestMatch!1710 (regex!8450 rule!200) (list!18446 input!1580)))))

(declare-fun e!3112586 () Bool)

(declare-fun e!3112585 () Bool)

(assert (=> d!1603604 (and (inv!75382 (_1!34543 res!2125899)) e!3112586 (inv!75382 (_2!34543 res!2125899)) e!3112585)))

(assert (=> d!1603604 (= (choose!36752 (regex!8450 rule!200) input!1580 totalInput!520) res!2125899)))

(declare-fun b!4979951 () Bool)

(declare-fun tp!1396264 () Bool)

(assert (=> b!4979951 (= e!3112586 (and (inv!75380 (c!849434 (_1!34543 res!2125899))) tp!1396264))))

(declare-fun b!4979952 () Bool)

(declare-fun tp!1396265 () Bool)

(assert (=> b!4979952 (= e!3112585 (and (inv!75380 (c!849434 (_2!34543 res!2125899))) tp!1396265))))

(assert (= d!1603604 b!4979951))

(assert (= d!1603604 b!4979952))

(declare-fun m!6010750 () Bool)

(assert (=> d!1603604 m!6010750))

(declare-fun m!6010752 () Bool)

(assert (=> d!1603604 m!6010752))

(assert (=> d!1603604 m!6009358))

(declare-fun m!6010754 () Bool)

(assert (=> d!1603604 m!6010754))

(declare-fun m!6010756 () Bool)

(assert (=> d!1603604 m!6010756))

(assert (=> d!1603604 m!6009358))

(assert (=> d!1603604 m!6009760))

(declare-fun m!6010758 () Bool)

(assert (=> b!4979951 m!6010758))

(declare-fun m!6010760 () Bool)

(assert (=> b!4979952 m!6010760))

(assert (=> d!1603218 d!1603604))

(declare-fun d!1603606 () Bool)

(declare-fun lt!2057284 () tuple2!62486)

(assert (=> d!1603606 (= (++!12547 (_1!34546 lt!2057284) (_2!34546 lt!2057284)) (list!18446 input!1580))))

(assert (=> d!1603606 (= lt!2057284 (findLongestMatchInner!1894 (regex!8450 rule!200) Nil!57572 0 (list!18446 input!1580) (list!18446 input!1580) (sizeTr!366 (list!18446 input!1580) 0)))))

(declare-fun lt!2057287 () Unit!148602)

(declare-fun lt!2057288 () Unit!148602)

(assert (=> d!1603606 (= lt!2057287 lt!2057288)))

(declare-fun lt!2057286 () List!57696)

(declare-fun lt!2057283 () Int)

(assert (=> d!1603606 (= (sizeTr!366 lt!2057286 lt!2057283) (+ (size!38191 lt!2057286) lt!2057283))))

(assert (=> d!1603606 (= lt!2057288 (lemmaSizeTrEqualsSize!365 lt!2057286 lt!2057283))))

(assert (=> d!1603606 (= lt!2057283 0)))

(assert (=> d!1603606 (= lt!2057286 Nil!57572)))

(declare-fun lt!2057281 () Unit!148602)

(declare-fun lt!2057285 () Unit!148602)

(assert (=> d!1603606 (= lt!2057281 lt!2057285)))

(declare-fun lt!2057282 () Int)

(assert (=> d!1603606 (= (sizeTr!366 (list!18446 input!1580) lt!2057282) (+ (size!38191 (list!18446 input!1580)) lt!2057282))))

(assert (=> d!1603606 (= lt!2057285 (lemmaSizeTrEqualsSize!365 (list!18446 input!1580) lt!2057282))))

(assert (=> d!1603606 (= lt!2057282 0)))

(assert (=> d!1603606 (validRegex!5984 (regex!8450 rule!200))))

(assert (=> d!1603606 (= (findLongestMatch!1710 (regex!8450 rule!200) (list!18446 input!1580)) lt!2057284)))

(declare-fun bs!1184157 () Bool)

(assert (= bs!1184157 d!1603606))

(declare-fun m!6010762 () Bool)

(assert (=> bs!1184157 m!6010762))

(declare-fun m!6010764 () Bool)

(assert (=> bs!1184157 m!6010764))

(declare-fun m!6010766 () Bool)

(assert (=> bs!1184157 m!6010766))

(assert (=> bs!1184157 m!6009358))

(assert (=> bs!1184157 m!6009358))

(declare-fun m!6010768 () Bool)

(assert (=> bs!1184157 m!6010768))

(declare-fun m!6010770 () Bool)

(assert (=> bs!1184157 m!6010770))

(assert (=> bs!1184157 m!6009358))

(assert (=> bs!1184157 m!6010768))

(assert (=> bs!1184157 m!6009424))

(assert (=> bs!1184157 m!6009358))

(declare-fun m!6010772 () Bool)

(assert (=> bs!1184157 m!6010772))

(assert (=> bs!1184157 m!6009358))

(declare-fun m!6010774 () Bool)

(assert (=> bs!1184157 m!6010774))

(declare-fun m!6010776 () Bool)

(assert (=> bs!1184157 m!6010776))

(assert (=> bs!1184157 m!6009358))

(declare-fun m!6010778 () Bool)

(assert (=> bs!1184157 m!6010778))

(assert (=> d!1603218 d!1603606))

(declare-fun d!1603608 () Bool)

(assert (=> d!1603608 (= (list!18446 (_2!34543 lt!2057028)) (list!18448 (c!849434 (_2!34543 lt!2057028))))))

(declare-fun bs!1184158 () Bool)

(assert (= bs!1184158 d!1603608))

(declare-fun m!6010780 () Bool)

(assert (=> bs!1184158 m!6010780))

(assert (=> d!1603218 d!1603608))

(assert (=> d!1603218 d!1603412))

(assert (=> d!1603218 d!1603208))

(declare-fun b!4979953 () Bool)

(declare-fun tp!1396268 () Bool)

(declare-fun tp!1396267 () Bool)

(declare-fun e!3112588 () Bool)

(assert (=> b!4979953 (= e!3112588 (and (inv!75380 (left!42073 (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775)))))) tp!1396267 (inv!75380 (right!42403 (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775)))))) tp!1396268))))

(declare-fun b!4979955 () Bool)

(declare-fun e!3112587 () Bool)

(declare-fun tp!1396266 () Bool)

(assert (=> b!4979955 (= e!3112587 tp!1396266)))

(declare-fun b!4979954 () Bool)

(assert (=> b!4979954 (= e!3112588 (and (inv!75388 (xs!18528 (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775)))))) e!3112587))))

(assert (=> b!4979209 (= tp!1396201 (and (inv!75380 (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775))))) e!3112588))))

(assert (= (and b!4979209 ((_ is Node!15202) (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775)))))) b!4979953))

(assert (= b!4979954 b!4979955))

(assert (= (and b!4979209 ((_ is Leaf!25252) (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (seqFromList!6071 lt!2056775)))))) b!4979954))

(declare-fun m!6010782 () Bool)

(assert (=> b!4979953 m!6010782))

(declare-fun m!6010784 () Bool)

(assert (=> b!4979953 m!6010784))

(declare-fun m!6010786 () Bool)

(assert (=> b!4979954 m!6010786))

(assert (=> b!4979209 m!6009780))

(declare-fun tp!1396271 () Bool)

(declare-fun tp!1396270 () Bool)

(declare-fun e!3112590 () Bool)

(declare-fun b!4979956 () Bool)

(assert (=> b!4979956 (= e!3112590 (and (inv!75380 (left!42073 (left!42073 (c!849434 input!1580)))) tp!1396270 (inv!75380 (right!42403 (left!42073 (c!849434 input!1580)))) tp!1396271))))

(declare-fun b!4979958 () Bool)

(declare-fun e!3112589 () Bool)

(declare-fun tp!1396269 () Bool)

(assert (=> b!4979958 (= e!3112589 tp!1396269)))

(declare-fun b!4979957 () Bool)

(assert (=> b!4979957 (= e!3112590 (and (inv!75388 (xs!18528 (left!42073 (c!849434 input!1580)))) e!3112589))))

(assert (=> b!4979202 (= tp!1396197 (and (inv!75380 (left!42073 (c!849434 input!1580))) e!3112590))))

(assert (= (and b!4979202 ((_ is Node!15202) (left!42073 (c!849434 input!1580)))) b!4979956))

(assert (= b!4979957 b!4979958))

(assert (= (and b!4979202 ((_ is Leaf!25252) (left!42073 (c!849434 input!1580)))) b!4979957))

(declare-fun m!6010788 () Bool)

(assert (=> b!4979956 m!6010788))

(declare-fun m!6010790 () Bool)

(assert (=> b!4979956 m!6010790))

(declare-fun m!6010792 () Bool)

(assert (=> b!4979957 m!6010792))

(assert (=> b!4979202 m!6009774))

(declare-fun tp!1396273 () Bool)

(declare-fun b!4979959 () Bool)

(declare-fun tp!1396274 () Bool)

(declare-fun e!3112592 () Bool)

(assert (=> b!4979959 (= e!3112592 (and (inv!75380 (left!42073 (right!42403 (c!849434 input!1580)))) tp!1396273 (inv!75380 (right!42403 (right!42403 (c!849434 input!1580)))) tp!1396274))))

(declare-fun b!4979961 () Bool)

(declare-fun e!3112591 () Bool)

(declare-fun tp!1396272 () Bool)

(assert (=> b!4979961 (= e!3112591 tp!1396272)))

(declare-fun b!4979960 () Bool)

(assert (=> b!4979960 (= e!3112592 (and (inv!75388 (xs!18528 (right!42403 (c!849434 input!1580)))) e!3112591))))

(assert (=> b!4979202 (= tp!1396198 (and (inv!75380 (right!42403 (c!849434 input!1580))) e!3112592))))

(assert (= (and b!4979202 ((_ is Node!15202) (right!42403 (c!849434 input!1580)))) b!4979959))

(assert (= b!4979960 b!4979961))

(assert (= (and b!4979202 ((_ is Leaf!25252) (right!42403 (c!849434 input!1580)))) b!4979960))

(declare-fun m!6010794 () Bool)

(assert (=> b!4979959 m!6010794))

(declare-fun m!6010796 () Bool)

(assert (=> b!4979959 m!6010796))

(declare-fun m!6010798 () Bool)

(assert (=> b!4979960 m!6010798))

(assert (=> b!4979202 m!6009776))

(declare-fun e!3112594 () Bool)

(declare-fun tp!1396276 () Bool)

(declare-fun b!4979962 () Bool)

(declare-fun tp!1396277 () Bool)

(assert (=> b!4979962 (= e!3112594 (and (inv!75380 (left!42073 (left!42073 (c!849434 totalInput!520)))) tp!1396276 (inv!75380 (right!42403 (left!42073 (c!849434 totalInput!520)))) tp!1396277))))

(declare-fun b!4979964 () Bool)

(declare-fun e!3112593 () Bool)

(declare-fun tp!1396275 () Bool)

(assert (=> b!4979964 (= e!3112593 tp!1396275)))

(declare-fun b!4979963 () Bool)

(assert (=> b!4979963 (= e!3112594 (and (inv!75388 (xs!18528 (left!42073 (c!849434 totalInput!520)))) e!3112593))))

(assert (=> b!4979185 (= tp!1396179 (and (inv!75380 (left!42073 (c!849434 totalInput!520))) e!3112594))))

(assert (= (and b!4979185 ((_ is Node!15202) (left!42073 (c!849434 totalInput!520)))) b!4979962))

(assert (= b!4979963 b!4979964))

(assert (= (and b!4979185 ((_ is Leaf!25252) (left!42073 (c!849434 totalInput!520)))) b!4979963))

(declare-fun m!6010800 () Bool)

(assert (=> b!4979962 m!6010800))

(declare-fun m!6010802 () Bool)

(assert (=> b!4979962 m!6010802))

(declare-fun m!6010804 () Bool)

(assert (=> b!4979963 m!6010804))

(assert (=> b!4979185 m!6009768))

(declare-fun tp!1396280 () Bool)

(declare-fun b!4979965 () Bool)

(declare-fun tp!1396279 () Bool)

(declare-fun e!3112596 () Bool)

(assert (=> b!4979965 (= e!3112596 (and (inv!75380 (left!42073 (right!42403 (c!849434 totalInput!520)))) tp!1396279 (inv!75380 (right!42403 (right!42403 (c!849434 totalInput!520)))) tp!1396280))))

(declare-fun b!4979967 () Bool)

(declare-fun e!3112595 () Bool)

(declare-fun tp!1396278 () Bool)

(assert (=> b!4979967 (= e!3112595 tp!1396278)))

(declare-fun b!4979966 () Bool)

(assert (=> b!4979966 (= e!3112596 (and (inv!75388 (xs!18528 (right!42403 (c!849434 totalInput!520)))) e!3112595))))

(assert (=> b!4979185 (= tp!1396180 (and (inv!75380 (right!42403 (c!849434 totalInput!520))) e!3112596))))

(assert (= (and b!4979185 ((_ is Node!15202) (right!42403 (c!849434 totalInput!520)))) b!4979965))

(assert (= b!4979966 b!4979967))

(assert (= (and b!4979185 ((_ is Leaf!25252) (right!42403 (c!849434 totalInput!520)))) b!4979966))

(declare-fun m!6010806 () Bool)

(assert (=> b!4979965 m!6010806))

(declare-fun m!6010808 () Bool)

(assert (=> b!4979965 m!6010808))

(declare-fun m!6010810 () Bool)

(assert (=> b!4979966 m!6010810))

(assert (=> b!4979185 m!6009770))

(declare-fun b!4979968 () Bool)

(declare-fun e!3112598 () Bool)

(declare-fun tp!1396282 () Bool)

(declare-fun tp!1396283 () Bool)

(assert (=> b!4979968 (= e!3112598 (and (inv!75380 (left!42073 (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776)))))) tp!1396282 (inv!75380 (right!42403 (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776)))))) tp!1396283))))

(declare-fun b!4979970 () Bool)

(declare-fun e!3112597 () Bool)

(declare-fun tp!1396281 () Bool)

(assert (=> b!4979970 (= e!3112597 tp!1396281)))

(declare-fun b!4979969 () Bool)

(assert (=> b!4979969 (= e!3112598 (and (inv!75388 (xs!18528 (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776)))))) e!3112597))))

(assert (=> b!4979210 (= tp!1396202 (and (inv!75380 (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776))))) e!3112598))))

(assert (= (and b!4979210 ((_ is Node!15202) (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776)))))) b!4979968))

(assert (= b!4979969 b!4979970))

(assert (= (and b!4979210 ((_ is Leaf!25252) (c!849434 (dynLambda!23326 (toChars!11288 (transformation!8450 rule!200)) (dynLambda!23325 (toValue!11429 (transformation!8450 rule!200)) (_1!34543 lt!2056776)))))) b!4979969))

(declare-fun m!6010812 () Bool)

(assert (=> b!4979968 m!6010812))

(declare-fun m!6010814 () Bool)

(assert (=> b!4979968 m!6010814))

(declare-fun m!6010816 () Bool)

(assert (=> b!4979969 m!6010816))

(assert (=> b!4979210 m!6009794))

(declare-fun b!4979971 () Bool)

(declare-fun e!3112599 () Bool)

(assert (=> b!4979971 (= e!3112599 tp_is_empty!36371)))

(assert (=> b!4979200 (= tp!1396195 e!3112599)))

(declare-fun b!4979973 () Bool)

(declare-fun tp!1396288 () Bool)

(assert (=> b!4979973 (= e!3112599 tp!1396288)))

(declare-fun b!4979972 () Bool)

(declare-fun tp!1396285 () Bool)

(declare-fun tp!1396286 () Bool)

(assert (=> b!4979972 (= e!3112599 (and tp!1396285 tp!1396286))))

(declare-fun b!4979974 () Bool)

(declare-fun tp!1396284 () Bool)

(declare-fun tp!1396287 () Bool)

(assert (=> b!4979974 (= e!3112599 (and tp!1396284 tp!1396287))))

(assert (= (and b!4979200 ((_ is ElementMatch!13683) (reg!14012 (regex!8450 rule!200)))) b!4979971))

(assert (= (and b!4979200 ((_ is Concat!22443) (reg!14012 (regex!8450 rule!200)))) b!4979972))

(assert (= (and b!4979200 ((_ is Star!13683) (reg!14012 (regex!8450 rule!200)))) b!4979973))

(assert (= (and b!4979200 ((_ is Union!13683) (reg!14012 (regex!8450 rule!200)))) b!4979974))

(declare-fun b!4979975 () Bool)

(declare-fun e!3112600 () Bool)

(assert (=> b!4979975 (= e!3112600 tp_is_empty!36371)))

(assert (=> b!4979201 (= tp!1396191 e!3112600)))

(declare-fun b!4979977 () Bool)

(declare-fun tp!1396293 () Bool)

(assert (=> b!4979977 (= e!3112600 tp!1396293)))

(declare-fun b!4979976 () Bool)

(declare-fun tp!1396290 () Bool)

(declare-fun tp!1396291 () Bool)

(assert (=> b!4979976 (= e!3112600 (and tp!1396290 tp!1396291))))

(declare-fun b!4979978 () Bool)

(declare-fun tp!1396289 () Bool)

(declare-fun tp!1396292 () Bool)

(assert (=> b!4979978 (= e!3112600 (and tp!1396289 tp!1396292))))

(assert (= (and b!4979201 ((_ is ElementMatch!13683) (regOne!27879 (regex!8450 rule!200)))) b!4979975))

(assert (= (and b!4979201 ((_ is Concat!22443) (regOne!27879 (regex!8450 rule!200)))) b!4979976))

(assert (= (and b!4979201 ((_ is Star!13683) (regOne!27879 (regex!8450 rule!200)))) b!4979977))

(assert (= (and b!4979201 ((_ is Union!13683) (regOne!27879 (regex!8450 rule!200)))) b!4979978))

(declare-fun b!4979979 () Bool)

(declare-fun e!3112601 () Bool)

(assert (=> b!4979979 (= e!3112601 tp_is_empty!36371)))

(assert (=> b!4979201 (= tp!1396194 e!3112601)))

(declare-fun b!4979981 () Bool)

(declare-fun tp!1396298 () Bool)

(assert (=> b!4979981 (= e!3112601 tp!1396298)))

(declare-fun b!4979980 () Bool)

(declare-fun tp!1396295 () Bool)

(declare-fun tp!1396296 () Bool)

(assert (=> b!4979980 (= e!3112601 (and tp!1396295 tp!1396296))))

(declare-fun b!4979982 () Bool)

(declare-fun tp!1396294 () Bool)

(declare-fun tp!1396297 () Bool)

(assert (=> b!4979982 (= e!3112601 (and tp!1396294 tp!1396297))))

(assert (= (and b!4979201 ((_ is ElementMatch!13683) (regTwo!27879 (regex!8450 rule!200)))) b!4979979))

(assert (= (and b!4979201 ((_ is Concat!22443) (regTwo!27879 (regex!8450 rule!200)))) b!4979980))

(assert (= (and b!4979201 ((_ is Star!13683) (regTwo!27879 (regex!8450 rule!200)))) b!4979981))

(assert (= (and b!4979201 ((_ is Union!13683) (regTwo!27879 (regex!8450 rule!200)))) b!4979982))

(declare-fun b!4979987 () Bool)

(declare-fun e!3112604 () Bool)

(declare-fun tp!1396301 () Bool)

(assert (=> b!4979987 (= e!3112604 (and tp_is_empty!36371 tp!1396301))))

(assert (=> b!4979204 (= tp!1396196 e!3112604)))

(assert (= (and b!4979204 ((_ is Cons!57572) (innerList!15290 (xs!18528 (c!849434 input!1580))))) b!4979987))

(declare-fun b!4979988 () Bool)

(declare-fun e!3112605 () Bool)

(declare-fun tp!1396302 () Bool)

(assert (=> b!4979988 (= e!3112605 (and tp_is_empty!36371 tp!1396302))))

(assert (=> b!4979187 (= tp!1396178 e!3112605)))

(assert (= (and b!4979187 ((_ is Cons!57572) (innerList!15290 (xs!18528 (c!849434 totalInput!520))))) b!4979988))

(declare-fun b!4979989 () Bool)

(declare-fun e!3112606 () Bool)

(assert (=> b!4979989 (= e!3112606 tp_is_empty!36371)))

(assert (=> b!4979199 (= tp!1396192 e!3112606)))

(declare-fun b!4979991 () Bool)

(declare-fun tp!1396307 () Bool)

(assert (=> b!4979991 (= e!3112606 tp!1396307)))

(declare-fun b!4979990 () Bool)

(declare-fun tp!1396304 () Bool)

(declare-fun tp!1396305 () Bool)

(assert (=> b!4979990 (= e!3112606 (and tp!1396304 tp!1396305))))

(declare-fun b!4979992 () Bool)

(declare-fun tp!1396303 () Bool)

(declare-fun tp!1396306 () Bool)

(assert (=> b!4979992 (= e!3112606 (and tp!1396303 tp!1396306))))

(assert (= (and b!4979199 ((_ is ElementMatch!13683) (regOne!27878 (regex!8450 rule!200)))) b!4979989))

(assert (= (and b!4979199 ((_ is Concat!22443) (regOne!27878 (regex!8450 rule!200)))) b!4979990))

(assert (= (and b!4979199 ((_ is Star!13683) (regOne!27878 (regex!8450 rule!200)))) b!4979991))

(assert (= (and b!4979199 ((_ is Union!13683) (regOne!27878 (regex!8450 rule!200)))) b!4979992))

(declare-fun b!4979993 () Bool)

(declare-fun e!3112607 () Bool)

(assert (=> b!4979993 (= e!3112607 tp_is_empty!36371)))

(assert (=> b!4979199 (= tp!1396193 e!3112607)))

(declare-fun b!4979995 () Bool)

(declare-fun tp!1396312 () Bool)

(assert (=> b!4979995 (= e!3112607 tp!1396312)))

(declare-fun b!4979994 () Bool)

(declare-fun tp!1396309 () Bool)

(declare-fun tp!1396310 () Bool)

(assert (=> b!4979994 (= e!3112607 (and tp!1396309 tp!1396310))))

(declare-fun b!4979996 () Bool)

(declare-fun tp!1396308 () Bool)

(declare-fun tp!1396311 () Bool)

(assert (=> b!4979996 (= e!3112607 (and tp!1396308 tp!1396311))))

(assert (= (and b!4979199 ((_ is ElementMatch!13683) (regTwo!27878 (regex!8450 rule!200)))) b!4979993))

(assert (= (and b!4979199 ((_ is Concat!22443) (regTwo!27878 (regex!8450 rule!200)))) b!4979994))

(assert (= (and b!4979199 ((_ is Star!13683) (regTwo!27878 (regex!8450 rule!200)))) b!4979995))

(assert (= (and b!4979199 ((_ is Union!13683) (regTwo!27878 (regex!8450 rule!200)))) b!4979996))

(declare-fun b_lambda!197691 () Bool)

(assert (= b_lambda!197685 (or (and b!4978821 b_free!133099) b_lambda!197691)))

(declare-fun b_lambda!197693 () Bool)

(assert (= b_lambda!197689 (or (and b!4978821 b_free!133099) b_lambda!197693)))

(declare-fun b_lambda!197695 () Bool)

(assert (= b_lambda!197687 (or (and b!4978821 b_free!133101) b_lambda!197695)))

(declare-fun b_lambda!197697 () Bool)

(assert (= b_lambda!197683 (or b!4978824 b_lambda!197697)))

(assert (=> d!1603560 d!1603222))

(declare-fun b_lambda!197699 () Bool)

(assert (= b_lambda!197681 (or b!4978824 b_lambda!197699)))

(assert (=> d!1603542 d!1603224))

(check-sat (not bm!347268) (not b!4979818) (not b!4979655) (not d!1603342) (not b_lambda!197695) (not b_next!133891) (not b!4979448) (not d!1603598) (not tb!261565) (not b!4979754) (not b!4979962) (not b!4979496) (not b!4979724) (not b!4979994) (not b!4979906) (not b!4979210) (not bm!347308) (not d!1603572) (not b!4979969) (not b!4979885) (not bm!347307) (not d!1603554) (not b!4979978) (not b!4979903) tp_is_empty!36371 (not tb!261563) (not b!4979980) (not b!4979836) (not b!4979929) (not b!4979936) (not b!4979953) (not bm!347277) (not d!1603530) (not b!4979823) (not b!4979839) (not b!4979973) (not d!1603418) (not b!4979961) (not b!4979905) (not d!1603362) (not b!4979926) (not b!4979896) (not b_lambda!197645) (not b!4979834) (not b!4979901) (not b!4979494) (not d!1603544) (not b!4979678) (not d!1603602) (not b_lambda!197655) (not b!4979921) (not bm!347291) b_and!349551 (not b!4979883) (not b!4979490) (not bm!347260) (not b!4979887) (not d!1603604) (not bm!347318) (not b!4979918) (not b!4979939) (not b!4979974) (not b!4979925) (not b!4979507) (not b!4979863) (not b!4979644) (not b!4979658) (not b!4979919) (not d!1603340) (not b!4979491) (not b!4979803) (not b!4979447) (not b_lambda!197697) (not b!4979910) (not b!4979968) (not b!4979393) (not b!4979399) (not b_lambda!197649) (not d!1603408) (not b!4979395) (not b!4979726) (not b!4979650) (not b!4979909) (not b!4979384) (not d!1603324) (not b!4979694) (not b!4979966) (not d!1603392) (not bm!347264) (not d!1603606) (not b!4979660) (not b!4979951) (not b!4979453) (not b!4979638) (not b!4979911) (not d!1603502) (not d!1603514) (not b!4979893) (not b!4979946) (not b!4979209) (not b!4979439) (not b!4979451) (not bm!347262) (not d!1603434) (not b!4979654) (not b!4979683) (not b!4979648) (not d!1603504) (not b!4979967) (not bm!347303) (not b!4979959) (not b_lambda!197691) (not b!4979908) (not d!1603556) (not d!1603578) (not b_lambda!197699) (not b!4979992) (not b!4979441) (not d!1603508) (not d!1603538) (not b!4979862) (not b_next!133889) (not d!1603352) (not b!4979428) (not bm!347261) (not d!1603346) (not b!4979970) (not bm!347267) (not d!1603576) (not d!1603424) (not bm!347263) (not b!4979935) (not b!4979869) (not b!4979753) (not d!1603348) (not b!4979894) (not d!1603494) (not b!4979386) (not b!4979755) (not b!4979996) (not b!4979443) (not b!4979425) (not d!1603522) (not b!4979976) (not b!4979884) (not d!1603596) (not b!4979982) (not b!4979675) (not b!4979952) (not b!4979646) (not b!4979681) (not d!1603378) (not d!1603568) (not b!4979898) (not b!4979838) (not b!4979886) (not b_lambda!197627) (not b!4979481) (not b!4979987) (not d!1603512) (not bm!347306) (not d!1603498) (not b!4979954) (not b!4979931) (not b!4979963) (not b_lambda!197693) (not b!4979822) (not b!4979922) (not bm!347304) (not d!1603608) (not bm!347290) (not bm!347266) (not d!1603312) (not b_lambda!197647) (not b!4979912) (not d!1603462) (not b!4979956) (not b_lambda!197651) (not b!4979888) (not tb!261553) (not b!4979958) (not d!1603540) b_and!349553 (not b!4979960) (not b!4979680) (not d!1603344) (not b!4979940) (not b!4979991) (not d!1603518) (not b!4979965) (not b!4979394) (not b!4979891) (not b_lambda!197625) (not b!4979955) (not tb!261561) (not b!4979988) (not b!4979579) (not d!1603580) (not d!1603570) (not b!4979964) (not d!1603588) (not b!4979609) (not b!4979695) (not b!4979835) (not b!4979486) (not b!4979913) (not b!4979977) (not b!4979981) (not b!4979815) (not b!4979904) (not b!4979202) (not b!4979995) (not b!4979890) (not d!1603500) (not b!4979957) (not b_lambda!197679) (not d!1603350) (not d!1603548) (not d!1603574) (not b!4979484) (not b!4979902) (not b!4979972) (not d!1603558) (not bm!347265) (not b!4979814) (not b!4979917) (not b!4979882) (not b!4979990) (not b_lambda!197623) (not d!1603464) (not d!1603438) (not d!1603594) (not b!4979819) (not b!4979899) (not b!4979185))
(check-sat b_and!349551 b_and!349553 (not b_next!133891) (not b_next!133889))
