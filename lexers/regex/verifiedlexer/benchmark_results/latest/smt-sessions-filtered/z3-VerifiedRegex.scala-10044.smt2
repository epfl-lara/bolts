; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!525178 () Bool)

(assert start!525178)

(declare-fun b!4977753 () Bool)

(declare-fun b_free!133059 () Bool)

(declare-fun b_next!133849 () Bool)

(assert (=> b!4977753 (= b_free!133059 (not b_next!133849))))

(declare-fun tp!1395881 () Bool)

(declare-fun b_and!349471 () Bool)

(assert (=> b!4977753 (= tp!1395881 b_and!349471)))

(declare-fun b_free!133061 () Bool)

(declare-fun b_next!133851 () Bool)

(assert (=> b!4977753 (= b_free!133061 (not b_next!133851))))

(declare-fun tp!1395882 () Bool)

(declare-fun b_and!349473 () Bool)

(assert (=> b!4977753 (= tp!1395882 b_and!349473)))

(declare-fun b!4977774 () Bool)

(declare-fun e!3111259 () Bool)

(assert (=> b!4977774 (= e!3111259 true)))

(declare-fun b!4977773 () Bool)

(declare-fun e!3111258 () Bool)

(assert (=> b!4977773 (= e!3111258 e!3111259)))

(declare-fun b!4977766 () Bool)

(assert (=> b!4977766 e!3111258))

(assert (= b!4977773 b!4977774))

(assert (= b!4977766 b!4977773))

(declare-fun lambda!247710 () Int)

(declare-fun order!26395 () Int)

(declare-datatypes ((String!65623 0))(
  ( (String!65624 (value!269938 String)) )
))
(declare-datatypes ((C!27596 0))(
  ( (C!27597 (val!23164 Int)) )
))
(declare-datatypes ((List!57676 0))(
  ( (Nil!57552) (Cons!57552 (h!64000 C!27596) (t!369688 List!57676)) )
))
(declare-datatypes ((IArray!30445 0))(
  ( (IArray!30446 (innerList!15280 List!57676)) )
))
(declare-datatypes ((List!57677 0))(
  ( (Nil!57553) (Cons!57553 (h!64001 (_ BitVec 16)) (t!369689 List!57677)) )
))
(declare-datatypes ((Regex!13673 0))(
  ( (ElementMatch!13673 (c!849267 C!27596)) (Concat!22423 (regOne!27858 Regex!13673) (regTwo!27858 Regex!13673)) (EmptyExpr!13673) (Star!13673 (reg!14002 Regex!13673)) (EmptyLang!13673) (Union!13673 (regOne!27859 Regex!13673) (regTwo!27859 Regex!13673)) )
))
(declare-datatypes ((Conc!15192 0))(
  ( (Node!15192 (left!42038 Conc!15192) (right!42368 Conc!15192) (csize!30614 Int) (cheight!15403 Int)) (Leaf!25237 (xs!18518 IArray!30445) (csize!30615 Int)) (Empty!15192) )
))
(declare-datatypes ((BalanceConc!29814 0))(
  ( (BalanceConc!29815 (c!849268 Conc!15192)) )
))
(declare-datatypes ((TokenValue!8750 0))(
  ( (FloatLiteralValue!17500 (text!61695 List!57677)) (TokenValueExt!8749 (__x!34793 Int)) (Broken!43750 (value!269939 List!57677)) (Object!8873) (End!8750) (Def!8750) (Underscore!8750) (Match!8750) (Else!8750) (Error!8750) (Case!8750) (If!8750) (Extends!8750) (Abstract!8750) (Class!8750) (Val!8750) (DelimiterValue!17500 (del!8810 List!57677)) (KeywordValue!8756 (value!269940 List!57677)) (CommentValue!17500 (value!269941 List!57677)) (WhitespaceValue!17500 (value!269942 List!57677)) (IndentationValue!8750 (value!269943 List!57677)) (String!65625) (Int32!8750) (Broken!43751 (value!269944 List!57677)) (Boolean!8751) (Unit!148555) (OperatorValue!8753 (op!8810 List!57677)) (IdentifierValue!17500 (value!269945 List!57677)) (IdentifierValue!17501 (value!269946 List!57677)) (WhitespaceValue!17501 (value!269947 List!57677)) (True!17500) (False!17500) (Broken!43752 (value!269948 List!57677)) (Broken!43753 (value!269949 List!57677)) (True!17501) (RightBrace!8750) (RightBracket!8750) (Colon!8750) (Null!8750) (Comma!8750) (LeftBracket!8750) (False!17501) (LeftBrace!8750) (ImaginaryLiteralValue!8750 (text!61696 List!57677)) (StringLiteralValue!26250 (value!269950 List!57677)) (EOFValue!8750 (value!269951 List!57677)) (IdentValue!8750 (value!269952 List!57677)) (DelimiterValue!17501 (value!269953 List!57677)) (DedentValue!8750 (value!269954 List!57677)) (NewLineValue!8750 (value!269955 List!57677)) (IntegerValue!26250 (value!269956 (_ BitVec 32)) (text!61697 List!57677)) (IntegerValue!26251 (value!269957 Int) (text!61698 List!57677)) (Times!8750) (Or!8750) (Equal!8750) (Minus!8750) (Broken!43754 (value!269958 List!57677)) (And!8750) (Div!8750) (LessEqual!8750) (Mod!8750) (Concat!22424) (Not!8750) (Plus!8750) (SpaceValue!8750 (value!269959 List!57677)) (IntegerValue!26252 (value!269960 Int) (text!61699 List!57677)) (StringLiteralValue!26251 (text!61700 List!57677)) (FloatLiteralValue!17501 (text!61701 List!57677)) (BytesLiteralValue!8750 (value!269961 List!57677)) (CommentValue!17501 (value!269962 List!57677)) (StringLiteralValue!26252 (value!269963 List!57677)) (ErrorTokenValue!8750 (msg!8811 List!57677)) )
))
(declare-datatypes ((TokenValueInjection!16808 0))(
  ( (TokenValueInjection!16809 (toValue!11415 Int) (toChars!11274 Int)) )
))
(declare-datatypes ((Rule!16680 0))(
  ( (Rule!16681 (regex!8440 Regex!13673) (tag!9304 String!65623) (isSeparator!8440 Bool) (transformation!8440 TokenValueInjection!16808)) )
))
(declare-fun rule!200 () Rule!16680)

(declare-fun order!26393 () Int)

(declare-fun dynLambda!23288 (Int Int) Int)

(declare-fun dynLambda!23289 (Int Int) Int)

(assert (=> b!4977774 (< (dynLambda!23288 order!26393 (toValue!11415 (transformation!8440 rule!200))) (dynLambda!23289 order!26395 lambda!247710))))

(declare-fun order!26397 () Int)

(declare-fun dynLambda!23290 (Int Int) Int)

(assert (=> b!4977774 (< (dynLambda!23290 order!26397 (toChars!11274 (transformation!8440 rule!200))) (dynLambda!23289 order!26395 lambda!247710))))

(declare-fun e!3111249 () Bool)

(assert (=> b!4977753 (= e!3111249 (and tp!1395881 tp!1395882))))

(declare-fun b!4977754 () Bool)

(declare-fun e!3111252 () Bool)

(declare-fun e!3111247 () Bool)

(assert (=> b!4977754 (= e!3111252 e!3111247)))

(declare-fun res!2124969 () Bool)

(assert (=> b!4977754 (=> (not res!2124969) (not e!3111247))))

(declare-datatypes ((tuple2!62416 0))(
  ( (tuple2!62417 (_1!34511 BalanceConc!29814) (_2!34511 BalanceConc!29814)) )
))
(declare-fun lt!2056045 () tuple2!62416)

(declare-fun isEmpty!31041 (BalanceConc!29814) Bool)

(assert (=> b!4977754 (= res!2124969 (not (isEmpty!31041 (_1!34511 lt!2056045))))))

(declare-fun totalInput!520 () BalanceConc!29814)

(declare-fun input!1580 () BalanceConc!29814)

(declare-fun findLongestMatchWithZipperSequenceV2!203 (Regex!13673 BalanceConc!29814 BalanceConc!29814) tuple2!62416)

(assert (=> b!4977754 (= lt!2056045 (findLongestMatchWithZipperSequenceV2!203 (regex!8440 rule!200) input!1580 totalInput!520))))

(declare-fun b!4977755 () Bool)

(declare-fun e!3111253 () Bool)

(declare-fun e!3111243 () Bool)

(assert (=> b!4977755 (= e!3111253 e!3111243)))

(declare-fun res!2124966 () Bool)

(assert (=> b!4977755 (=> res!2124966 e!3111243)))

(declare-fun lt!2056046 () BalanceConc!29814)

(declare-fun lt!2056033 () TokenValue!8750)

(declare-fun apply!13931 (TokenValueInjection!16808 BalanceConc!29814) TokenValue!8750)

(assert (=> b!4977755 (= res!2124966 (not (= (apply!13931 (transformation!8440 rule!200) lt!2056046) lt!2056033)))))

(declare-datatypes ((Unit!148556 0))(
  ( (Unit!148557) )
))
(declare-fun lt!2056040 () Unit!148556)

(declare-fun lemmaEqSameImage!1189 (TokenValueInjection!16808 BalanceConc!29814 BalanceConc!29814) Unit!148556)

(assert (=> b!4977755 (= lt!2056040 (lemmaEqSameImage!1189 (transformation!8440 rule!200) (_1!34511 lt!2056045) lt!2056046))))

(declare-fun b!4977756 () Bool)

(declare-fun res!2124975 () Bool)

(declare-fun e!3111245 () Bool)

(assert (=> b!4977756 (=> (not res!2124975) (not e!3111245))))

(declare-datatypes ((LexerInterface!8032 0))(
  ( (LexerInterfaceExt!8029 (__x!34794 Int)) (Lexer!8030) )
))
(declare-fun thiss!16165 () LexerInterface!8032)

(declare-fun ruleValid!3848 (LexerInterface!8032 Rule!16680) Bool)

(assert (=> b!4977756 (= res!2124975 (ruleValid!3848 thiss!16165 rule!200))))

(declare-fun res!2124970 () Bool)

(assert (=> start!525178 (=> (not res!2124970) (not e!3111245))))

(get-info :version)

(assert (=> start!525178 (= res!2124970 ((_ is Lexer!8030) thiss!16165))))

(assert (=> start!525178 e!3111245))

(assert (=> start!525178 true))

(declare-fun e!3111244 () Bool)

(assert (=> start!525178 e!3111244))

(declare-fun e!3111248 () Bool)

(declare-fun inv!75324 (BalanceConc!29814) Bool)

(assert (=> start!525178 (and (inv!75324 totalInput!520) e!3111248)))

(declare-fun e!3111242 () Bool)

(assert (=> start!525178 (and (inv!75324 input!1580) e!3111242)))

(declare-fun b!4977757 () Bool)

(declare-fun e!3111246 () Bool)

(assert (=> b!4977757 (= e!3111247 (not e!3111246))))

(declare-fun res!2124967 () Bool)

(assert (=> b!4977757 (=> res!2124967 e!3111246)))

(declare-fun semiInverseModEq!3733 (Int Int) Bool)

(assert (=> b!4977757 (= res!2124967 (not (semiInverseModEq!3733 (toChars!11274 (transformation!8440 rule!200)) (toValue!11415 (transformation!8440 rule!200)))))))

(declare-fun lt!2056034 () Unit!148556)

(declare-fun lemmaInv!1363 (TokenValueInjection!16808) Unit!148556)

(assert (=> b!4977757 (= lt!2056034 (lemmaInv!1363 (transformation!8440 rule!200)))))

(declare-fun e!3111251 () Bool)

(assert (=> b!4977757 e!3111251))

(declare-fun res!2124972 () Bool)

(assert (=> b!4977757 (=> res!2124972 e!3111251)))

(declare-datatypes ((tuple2!62418 0))(
  ( (tuple2!62419 (_1!34512 List!57676) (_2!34512 List!57676)) )
))
(declare-fun lt!2056038 () tuple2!62418)

(declare-fun isEmpty!31042 (List!57676) Bool)

(assert (=> b!4977757 (= res!2124972 (isEmpty!31042 (_1!34512 lt!2056038)))))

(declare-fun lt!2056037 () List!57676)

(declare-fun findLongestMatchInner!1884 (Regex!13673 List!57676 Int List!57676 List!57676 Int) tuple2!62418)

(declare-fun size!38167 (List!57676) Int)

(assert (=> b!4977757 (= lt!2056038 (findLongestMatchInner!1884 (regex!8440 rule!200) Nil!57552 (size!38167 Nil!57552) lt!2056037 lt!2056037 (size!38167 lt!2056037)))))

(declare-fun lt!2056043 () Unit!148556)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1845 (Regex!13673 List!57676) Unit!148556)

(assert (=> b!4977757 (= lt!2056043 (longestMatchIsAcceptedByMatchOrIsEmpty!1845 (regex!8440 rule!200) lt!2056037))))

(declare-fun b!4977758 () Bool)

(assert (=> b!4977758 (= e!3111245 e!3111252)))

(declare-fun res!2124968 () Bool)

(assert (=> b!4977758 (=> (not res!2124968) (not e!3111252))))

(declare-fun isSuffix!1239 (List!57676 List!57676) Bool)

(declare-fun list!18432 (BalanceConc!29814) List!57676)

(assert (=> b!4977758 (= res!2124968 (isSuffix!1239 lt!2056037 (list!18432 totalInput!520)))))

(assert (=> b!4977758 (= lt!2056037 (list!18432 input!1580))))

(declare-fun b!4977759 () Bool)

(declare-fun tp!1395879 () Bool)

(declare-fun inv!75325 (Conc!15192) Bool)

(assert (=> b!4977759 (= e!3111242 (and (inv!75325 (c!849268 input!1580)) tp!1395879))))

(declare-datatypes ((Token!15344 0))(
  ( (Token!15345 (value!269964 TokenValue!8750) (rule!11692 Rule!16680) (size!38168 Int) (originalCharacters!8703 List!57676)) )
))
(declare-fun lt!2056042 () Token!15344)

(declare-datatypes ((tuple2!62420 0))(
  ( (tuple2!62421 (_1!34513 Token!15344) (_2!34513 List!57676)) )
))
(declare-fun lt!2056044 () tuple2!62420)

(declare-fun lt!2056035 () Int)

(declare-fun lt!2056032 () Bool)

(declare-fun b!4977760 () Bool)

(declare-fun lt!2056041 () List!57676)

(assert (=> b!4977760 (= e!3111243 (or (not (= (value!269964 (_1!34513 lt!2056044)) lt!2056033)) (not (= (rule!11692 (_1!34513 lt!2056044)) rule!200)) (not (= (size!38168 (_1!34513 lt!2056044)) lt!2056035)) (not (= (originalCharacters!8703 (_1!34513 lt!2056044)) lt!2056041)) (not (= lt!2056042 (_1!34513 lt!2056044))) lt!2056032))))

(declare-datatypes ((Option!14507 0))(
  ( (None!14506) (Some!14506 (v!50503 tuple2!62420)) )
))
(declare-fun lt!2056047 () Option!14507)

(declare-fun get!19996 (Option!14507) tuple2!62420)

(assert (=> b!4977760 (= lt!2056044 (get!19996 lt!2056047))))

(declare-fun b!4977761 () Bool)

(declare-fun tp!1395878 () Bool)

(assert (=> b!4977761 (= e!3111248 (and (inv!75325 (c!849268 totalInput!520)) tp!1395878))))

(declare-fun b!4977762 () Bool)

(assert (=> b!4977762 (= e!3111246 e!3111253)))

(declare-fun res!2124971 () Bool)

(assert (=> b!4977762 (=> res!2124971 e!3111253)))

(declare-fun lt!2056036 () Bool)

(assert (=> b!4977762 (= res!2124971 (or (not (= lt!2056036 lt!2056032)) (not lt!2056036)))))

(declare-fun isDefined!11416 (Option!14507) Bool)

(assert (=> b!4977762 (= lt!2056032 (isDefined!11416 lt!2056047))))

(declare-datatypes ((tuple2!62422 0))(
  ( (tuple2!62423 (_1!34514 Token!15344) (_2!34514 BalanceConc!29814)) )
))
(declare-datatypes ((Option!14508 0))(
  ( (None!14507) (Some!14507 (v!50504 tuple2!62422)) )
))
(declare-fun isDefined!11417 (Option!14508) Bool)

(assert (=> b!4977762 (= lt!2056036 (isDefined!11417 (Some!14507 (tuple2!62423 lt!2056042 (_2!34511 lt!2056045)))))))

(declare-fun maxPrefixOneRule!3660 (LexerInterface!8032 Rule!16680 List!57676) Option!14507)

(assert (=> b!4977762 (= lt!2056047 (maxPrefixOneRule!3660 thiss!16165 rule!200 lt!2056037))))

(assert (=> b!4977762 (= lt!2056042 (Token!15345 lt!2056033 rule!200 lt!2056035 lt!2056041))))

(declare-fun size!38169 (BalanceConc!29814) Int)

(assert (=> b!4977762 (= lt!2056035 (size!38169 (_1!34511 lt!2056045)))))

(assert (=> b!4977762 (= lt!2056033 (apply!13931 (transformation!8440 rule!200) (_1!34511 lt!2056045)))))

(declare-fun lt!2056048 () Unit!148556)

(declare-fun ForallOf!1254 (Int BalanceConc!29814) Unit!148556)

(assert (=> b!4977762 (= lt!2056048 (ForallOf!1254 lambda!247710 lt!2056046))))

(declare-fun seqFromList!6065 (List!57676) BalanceConc!29814)

(assert (=> b!4977762 (= lt!2056046 (seqFromList!6065 lt!2056041))))

(assert (=> b!4977762 (= lt!2056041 (list!18432 (_1!34511 lt!2056045)))))

(declare-fun lt!2056039 () Unit!148556)

(assert (=> b!4977762 (= lt!2056039 (ForallOf!1254 lambda!247710 (_1!34511 lt!2056045)))))

(declare-fun b!4977763 () Bool)

(declare-fun res!2124973 () Bool)

(assert (=> b!4977763 (=> res!2124973 e!3111253)))

(assert (=> b!4977763 (= res!2124973 (not (= (list!18432 lt!2056046) lt!2056041)))))

(declare-fun b!4977764 () Bool)

(declare-fun matchR!6667 (Regex!13673 List!57676) Bool)

(assert (=> b!4977764 (= e!3111251 (matchR!6667 (regex!8440 rule!200) (_1!34512 lt!2056038)))))

(declare-fun tp!1395880 () Bool)

(declare-fun b!4977765 () Bool)

(declare-fun inv!75320 (String!65623) Bool)

(declare-fun inv!75326 (TokenValueInjection!16808) Bool)

(assert (=> b!4977765 (= e!3111244 (and tp!1395880 (inv!75320 (tag!9304 rule!200)) (inv!75326 (transformation!8440 rule!200)) e!3111249))))

(declare-fun res!2124974 () Bool)

(assert (=> b!4977766 (=> res!2124974 e!3111246)))

(declare-fun Forall!1790 (Int) Bool)

(assert (=> b!4977766 (= res!2124974 (not (Forall!1790 lambda!247710)))))

(assert (= (and start!525178 res!2124970) b!4977756))

(assert (= (and b!4977756 res!2124975) b!4977758))

(assert (= (and b!4977758 res!2124968) b!4977754))

(assert (= (and b!4977754 res!2124969) b!4977757))

(assert (= (and b!4977757 (not res!2124972)) b!4977764))

(assert (= (and b!4977757 (not res!2124967)) b!4977766))

(assert (= (and b!4977766 (not res!2124974)) b!4977762))

(assert (= (and b!4977762 (not res!2124971)) b!4977763))

(assert (= (and b!4977763 (not res!2124973)) b!4977755))

(assert (= (and b!4977755 (not res!2124966)) b!4977760))

(assert (= b!4977765 b!4977753))

(assert (= start!525178 b!4977765))

(assert (= start!525178 b!4977761))

(assert (= start!525178 b!4977759))

(declare-fun m!6008250 () Bool)

(assert (=> b!4977765 m!6008250))

(declare-fun m!6008252 () Bool)

(assert (=> b!4977765 m!6008252))

(declare-fun m!6008254 () Bool)

(assert (=> b!4977762 m!6008254))

(declare-fun m!6008256 () Bool)

(assert (=> b!4977762 m!6008256))

(declare-fun m!6008258 () Bool)

(assert (=> b!4977762 m!6008258))

(declare-fun m!6008260 () Bool)

(assert (=> b!4977762 m!6008260))

(declare-fun m!6008262 () Bool)

(assert (=> b!4977762 m!6008262))

(declare-fun m!6008264 () Bool)

(assert (=> b!4977762 m!6008264))

(declare-fun m!6008266 () Bool)

(assert (=> b!4977762 m!6008266))

(declare-fun m!6008268 () Bool)

(assert (=> b!4977762 m!6008268))

(declare-fun m!6008270 () Bool)

(assert (=> b!4977762 m!6008270))

(declare-fun m!6008272 () Bool)

(assert (=> b!4977761 m!6008272))

(declare-fun m!6008274 () Bool)

(assert (=> b!4977754 m!6008274))

(declare-fun m!6008276 () Bool)

(assert (=> b!4977754 m!6008276))

(declare-fun m!6008278 () Bool)

(assert (=> start!525178 m!6008278))

(declare-fun m!6008280 () Bool)

(assert (=> start!525178 m!6008280))

(declare-fun m!6008282 () Bool)

(assert (=> b!4977760 m!6008282))

(declare-fun m!6008284 () Bool)

(assert (=> b!4977758 m!6008284))

(assert (=> b!4977758 m!6008284))

(declare-fun m!6008286 () Bool)

(assert (=> b!4977758 m!6008286))

(declare-fun m!6008288 () Bool)

(assert (=> b!4977758 m!6008288))

(declare-fun m!6008290 () Bool)

(assert (=> b!4977759 m!6008290))

(declare-fun m!6008292 () Bool)

(assert (=> b!4977757 m!6008292))

(declare-fun m!6008294 () Bool)

(assert (=> b!4977757 m!6008294))

(declare-fun m!6008296 () Bool)

(assert (=> b!4977757 m!6008296))

(declare-fun m!6008298 () Bool)

(assert (=> b!4977757 m!6008298))

(assert (=> b!4977757 m!6008294))

(declare-fun m!6008300 () Bool)

(assert (=> b!4977757 m!6008300))

(declare-fun m!6008302 () Bool)

(assert (=> b!4977757 m!6008302))

(declare-fun m!6008304 () Bool)

(assert (=> b!4977757 m!6008304))

(assert (=> b!4977757 m!6008296))

(declare-fun m!6008306 () Bool)

(assert (=> b!4977763 m!6008306))

(declare-fun m!6008308 () Bool)

(assert (=> b!4977764 m!6008308))

(declare-fun m!6008310 () Bool)

(assert (=> b!4977755 m!6008310))

(declare-fun m!6008312 () Bool)

(assert (=> b!4977755 m!6008312))

(declare-fun m!6008314 () Bool)

(assert (=> b!4977766 m!6008314))

(declare-fun m!6008316 () Bool)

(assert (=> b!4977756 m!6008316))

(check-sat (not b!4977755) (not b!4977754) (not b!4977758) (not b!4977757) (not b!4977756) (not b!4977763) (not start!525178) (not b!4977764) (not b!4977766) (not b_next!133849) b_and!349471 (not b!4977762) (not b!4977759) b_and!349473 (not b_next!133851) (not b!4977765) (not b!4977760) (not b!4977761))
(check-sat b_and!349473 b_and!349471 (not b_next!133851) (not b_next!133849))
