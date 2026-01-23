; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!525186 () Bool)

(assert start!525186)

(declare-fun b!4977980 () Bool)

(declare-fun b_free!133075 () Bool)

(declare-fun b_next!133865 () Bool)

(assert (=> b!4977980 (= b_free!133075 (not b_next!133865))))

(declare-fun tp!1395940 () Bool)

(declare-fun b_and!349487 () Bool)

(assert (=> b!4977980 (= tp!1395940 b_and!349487)))

(declare-fun b_free!133077 () Bool)

(declare-fun b_next!133867 () Bool)

(assert (=> b!4977980 (= b_free!133077 (not b_next!133867))))

(declare-fun tp!1395938 () Bool)

(declare-fun b_and!349489 () Bool)

(assert (=> b!4977980 (= tp!1395938 b_and!349489)))

(declare-fun b!4978004 () Bool)

(declare-fun e!3111445 () Bool)

(assert (=> b!4978004 (= e!3111445 true)))

(declare-fun b!4978003 () Bool)

(declare-fun e!3111444 () Bool)

(assert (=> b!4978003 (= e!3111444 e!3111445)))

(declare-fun b!4977993 () Bool)

(assert (=> b!4977993 e!3111444))

(assert (= b!4978003 b!4978004))

(assert (= b!4977993 b!4978003))

(declare-fun order!26419 () Int)

(declare-fun lambda!247738 () Int)

(declare-datatypes ((C!27604 0))(
  ( (C!27605 (val!23168 Int)) )
))
(declare-datatypes ((List!57684 0))(
  ( (Nil!57560) (Cons!57560 (h!64008 C!27604) (t!369696 List!57684)) )
))
(declare-datatypes ((IArray!30453 0))(
  ( (IArray!30454 (innerList!15284 List!57684)) )
))
(declare-datatypes ((List!57685 0))(
  ( (Nil!57561) (Cons!57561 (h!64009 (_ BitVec 16)) (t!369697 List!57685)) )
))
(declare-datatypes ((Regex!13677 0))(
  ( (ElementMatch!13677 (c!849279 C!27604)) (Concat!22431 (regOne!27866 Regex!13677) (regTwo!27866 Regex!13677)) (EmptyExpr!13677) (Star!13677 (reg!14006 Regex!13677)) (EmptyLang!13677) (Union!13677 (regOne!27867 Regex!13677) (regTwo!27867 Regex!13677)) )
))
(declare-datatypes ((Conc!15196 0))(
  ( (Node!15196 (left!42052 Conc!15196) (right!42382 Conc!15196) (csize!30622 Int) (cheight!15407 Int)) (Leaf!25243 (xs!18522 IArray!30453) (csize!30623 Int)) (Empty!15196) )
))
(declare-datatypes ((BalanceConc!29822 0))(
  ( (BalanceConc!29823 (c!849280 Conc!15196)) )
))
(declare-datatypes ((TokenValue!8754 0))(
  ( (FloatLiteralValue!17508 (text!61723 List!57685)) (TokenValueExt!8753 (__x!34801 Int)) (Broken!43770 (value!270052 List!57685)) (Object!8877) (End!8754) (Def!8754) (Underscore!8754) (Match!8754) (Else!8754) (Error!8754) (Case!8754) (If!8754) (Extends!8754) (Abstract!8754) (Class!8754) (Val!8754) (DelimiterValue!17508 (del!8814 List!57685)) (KeywordValue!8760 (value!270053 List!57685)) (CommentValue!17508 (value!270054 List!57685)) (WhitespaceValue!17508 (value!270055 List!57685)) (IndentationValue!8754 (value!270056 List!57685)) (String!65643) (Int32!8754) (Broken!43771 (value!270057 List!57685)) (Boolean!8755) (Unit!148567) (OperatorValue!8757 (op!8814 List!57685)) (IdentifierValue!17508 (value!270058 List!57685)) (IdentifierValue!17509 (value!270059 List!57685)) (WhitespaceValue!17509 (value!270060 List!57685)) (True!17508) (False!17508) (Broken!43772 (value!270061 List!57685)) (Broken!43773 (value!270062 List!57685)) (True!17509) (RightBrace!8754) (RightBracket!8754) (Colon!8754) (Null!8754) (Comma!8754) (LeftBracket!8754) (False!17509) (LeftBrace!8754) (ImaginaryLiteralValue!8754 (text!61724 List!57685)) (StringLiteralValue!26262 (value!270063 List!57685)) (EOFValue!8754 (value!270064 List!57685)) (IdentValue!8754 (value!270065 List!57685)) (DelimiterValue!17509 (value!270066 List!57685)) (DedentValue!8754 (value!270067 List!57685)) (NewLineValue!8754 (value!270068 List!57685)) (IntegerValue!26262 (value!270069 (_ BitVec 32)) (text!61725 List!57685)) (IntegerValue!26263 (value!270070 Int) (text!61726 List!57685)) (Times!8754) (Or!8754) (Equal!8754) (Minus!8754) (Broken!43774 (value!270071 List!57685)) (And!8754) (Div!8754) (LessEqual!8754) (Mod!8754) (Concat!22432) (Not!8754) (Plus!8754) (SpaceValue!8754 (value!270072 List!57685)) (IntegerValue!26264 (value!270073 Int) (text!61727 List!57685)) (StringLiteralValue!26263 (text!61728 List!57685)) (FloatLiteralValue!17509 (text!61729 List!57685)) (BytesLiteralValue!8754 (value!270074 List!57685)) (CommentValue!17509 (value!270075 List!57685)) (StringLiteralValue!26264 (value!270076 List!57685)) (ErrorTokenValue!8754 (msg!8815 List!57685)) )
))
(declare-datatypes ((TokenValueInjection!16816 0))(
  ( (TokenValueInjection!16817 (toValue!11419 Int) (toChars!11278 Int)) )
))
(declare-datatypes ((String!65644 0))(
  ( (String!65645 (value!270077 String)) )
))
(declare-datatypes ((Rule!16688 0))(
  ( (Rule!16689 (regex!8444 Regex!13677) (tag!9308 String!65644) (isSeparator!8444 Bool) (transformation!8444 TokenValueInjection!16816)) )
))
(declare-fun rule!200 () Rule!16688)

(declare-fun order!26417 () Int)

(declare-fun dynLambda!23300 (Int Int) Int)

(declare-fun dynLambda!23301 (Int Int) Int)

(assert (=> b!4978004 (< (dynLambda!23300 order!26417 (toValue!11419 (transformation!8444 rule!200))) (dynLambda!23301 order!26419 lambda!247738))))

(declare-fun order!26421 () Int)

(declare-fun dynLambda!23302 (Int Int) Int)

(assert (=> b!4978004 (< (dynLambda!23302 order!26421 (toChars!11278 (transformation!8444 rule!200))) (dynLambda!23301 order!26419 lambda!247738))))

(declare-fun e!3111427 () Bool)

(assert (=> b!4977980 (= e!3111427 (and tp!1395940 tp!1395938))))

(declare-fun b!4977981 () Bool)

(declare-fun res!2125117 () Bool)

(declare-fun e!3111429 () Bool)

(assert (=> b!4977981 (=> (not res!2125117) (not e!3111429))))

(declare-datatypes ((LexerInterface!8036 0))(
  ( (LexerInterfaceExt!8033 (__x!34802 Int)) (Lexer!8034) )
))
(declare-fun thiss!16165 () LexerInterface!8036)

(declare-fun ruleValid!3852 (LexerInterface!8036 Rule!16688) Bool)

(assert (=> b!4977981 (= res!2125117 (ruleValid!3852 thiss!16165 rule!200))))

(declare-fun b!4977983 () Bool)

(declare-fun e!3111435 () Bool)

(declare-fun e!3111431 () Bool)

(assert (=> b!4977983 (= e!3111435 e!3111431)))

(declare-fun res!2125123 () Bool)

(assert (=> b!4977983 (=> res!2125123 e!3111431)))

(declare-fun lt!2056262 () BalanceConc!29822)

(declare-fun lt!2056267 () TokenValue!8754)

(declare-fun apply!13935 (TokenValueInjection!16816 BalanceConc!29822) TokenValue!8754)

(assert (=> b!4977983 (= res!2125123 (not (= (apply!13935 (transformation!8444 rule!200) lt!2056262) lt!2056267)))))

(declare-datatypes ((Unit!148568 0))(
  ( (Unit!148569) )
))
(declare-fun lt!2056261 () Unit!148568)

(declare-datatypes ((tuple2!62448 0))(
  ( (tuple2!62449 (_1!34527 BalanceConc!29822) (_2!34527 BalanceConc!29822)) )
))
(declare-fun lt!2056253 () tuple2!62448)

(declare-fun lemmaEqSameImage!1193 (TokenValueInjection!16816 BalanceConc!29822 BalanceConc!29822) Unit!148568)

(assert (=> b!4977983 (= lt!2056261 (lemmaEqSameImage!1193 (transformation!8444 rule!200) (_1!34527 lt!2056253) lt!2056262))))

(declare-fun b!4977984 () Bool)

(declare-fun e!3111432 () Bool)

(assert (=> b!4977984 (= e!3111432 e!3111435)))

(declare-fun res!2125119 () Bool)

(assert (=> b!4977984 (=> res!2125119 e!3111435)))

(declare-fun lt!2056256 () Bool)

(declare-datatypes ((Token!15352 0))(
  ( (Token!15353 (value!270078 TokenValue!8754) (rule!11696 Rule!16688) (size!38179 Int) (originalCharacters!8707 List!57684)) )
))
(declare-datatypes ((tuple2!62450 0))(
  ( (tuple2!62451 (_1!34528 Token!15352) (_2!34528 List!57684)) )
))
(declare-datatypes ((Option!14515 0))(
  ( (None!14514) (Some!14514 (v!50511 tuple2!62450)) )
))
(declare-fun lt!2056266 () Option!14515)

(declare-fun isDefined!11424 (Option!14515) Bool)

(assert (=> b!4977984 (= res!2125119 (not (= lt!2056256 (isDefined!11424 lt!2056266))))))

(declare-datatypes ((tuple2!62452 0))(
  ( (tuple2!62453 (_1!34529 Token!15352) (_2!34529 BalanceConc!29822)) )
))
(declare-datatypes ((Option!14516 0))(
  ( (None!14515) (Some!14515 (v!50512 tuple2!62452)) )
))
(declare-fun lt!2056252 () Option!14516)

(declare-fun isDefined!11425 (Option!14516) Bool)

(assert (=> b!4977984 (= lt!2056256 (isDefined!11425 lt!2056252))))

(declare-fun lt!2056265 () List!57684)

(declare-fun maxPrefixOneRule!3664 (LexerInterface!8036 Rule!16688 List!57684) Option!14515)

(assert (=> b!4977984 (= lt!2056266 (maxPrefixOneRule!3664 thiss!16165 rule!200 lt!2056265))))

(declare-fun lt!2056260 () Token!15352)

(assert (=> b!4977984 (= lt!2056252 (Some!14515 (tuple2!62453 lt!2056260 (_2!34527 lt!2056253))))))

(declare-fun lt!2056257 () List!57684)

(declare-fun lt!2056263 () Int)

(assert (=> b!4977984 (= lt!2056260 (Token!15353 lt!2056267 rule!200 lt!2056263 lt!2056257))))

(declare-fun size!38180 (BalanceConc!29822) Int)

(assert (=> b!4977984 (= lt!2056263 (size!38180 (_1!34527 lt!2056253)))))

(assert (=> b!4977984 (= lt!2056267 (apply!13935 (transformation!8444 rule!200) (_1!34527 lt!2056253)))))

(declare-fun lt!2056269 () Unit!148568)

(declare-fun ForallOf!1258 (Int BalanceConc!29822) Unit!148568)

(assert (=> b!4977984 (= lt!2056269 (ForallOf!1258 lambda!247738 lt!2056262))))

(declare-fun seqFromList!6069 (List!57684) BalanceConc!29822)

(assert (=> b!4977984 (= lt!2056262 (seqFromList!6069 lt!2056257))))

(declare-fun list!18436 (BalanceConc!29822) List!57684)

(assert (=> b!4977984 (= lt!2056257 (list!18436 (_1!34527 lt!2056253)))))

(declare-fun lt!2056268 () Unit!148568)

(assert (=> b!4977984 (= lt!2056268 (ForallOf!1258 lambda!247738 (_1!34527 lt!2056253)))))

(declare-fun b!4977985 () Bool)

(declare-fun tp!1395942 () Bool)

(declare-fun e!3111433 () Bool)

(declare-fun inv!75338 (String!65644) Bool)

(declare-fun inv!75342 (TokenValueInjection!16816) Bool)

(assert (=> b!4977985 (= e!3111433 (and tp!1395942 (inv!75338 (tag!9308 rule!200)) (inv!75342 (transformation!8444 rule!200)) e!3111427))))

(declare-fun b!4977986 () Bool)

(declare-fun e!3111438 () Bool)

(assert (=> b!4977986 (= e!3111431 e!3111438)))

(declare-fun res!2125125 () Bool)

(assert (=> b!4977986 (=> res!2125125 e!3111438)))

(declare-fun lt!2056264 () tuple2!62450)

(assert (=> b!4977986 (= res!2125125 (or (not (= (value!270078 (_1!34528 lt!2056264)) lt!2056267)) (not (= (rule!11696 (_1!34528 lt!2056264)) rule!200)) (not (= (size!38179 (_1!34528 lt!2056264)) lt!2056263)) (not (= (originalCharacters!8707 (_1!34528 lt!2056264)) lt!2056257)) (not (= lt!2056260 (_1!34528 lt!2056264)))))))

(declare-fun get!20005 (Option!14515) tuple2!62450)

(assert (=> b!4977986 (= lt!2056264 (get!20005 lt!2056266))))

(declare-fun b!4977987 () Bool)

(declare-fun e!3111434 () Bool)

(assert (=> b!4977987 (= e!3111429 e!3111434)))

(declare-fun res!2125114 () Bool)

(assert (=> b!4977987 (=> (not res!2125114) (not e!3111434))))

(declare-fun totalInput!520 () BalanceConc!29822)

(declare-fun isSuffix!1243 (List!57684 List!57684) Bool)

(assert (=> b!4977987 (= res!2125114 (isSuffix!1243 lt!2056265 (list!18436 totalInput!520)))))

(declare-fun input!1580 () BalanceConc!29822)

(assert (=> b!4977987 (= lt!2056265 (list!18436 input!1580))))

(declare-fun b!4977988 () Bool)

(declare-fun res!2125120 () Bool)

(assert (=> b!4977988 (=> res!2125120 e!3111435)))

(assert (=> b!4977988 (= res!2125120 (not lt!2056256))))

(declare-fun b!4977989 () Bool)

(declare-fun e!3111437 () Bool)

(assert (=> b!4977989 (= e!3111434 e!3111437)))

(declare-fun res!2125121 () Bool)

(assert (=> b!4977989 (=> (not res!2125121) (not e!3111437))))

(declare-fun isEmpty!31049 (BalanceConc!29822) Bool)

(assert (=> b!4977989 (= res!2125121 (not (isEmpty!31049 (_1!34527 lt!2056253))))))

(declare-fun findLongestMatchWithZipperSequenceV2!207 (Regex!13677 BalanceConc!29822 BalanceConc!29822) tuple2!62448)

(assert (=> b!4977989 (= lt!2056253 (findLongestMatchWithZipperSequenceV2!207 (regex!8444 rule!200) input!1580 totalInput!520))))

(declare-fun b!4977990 () Bool)

(declare-fun e!3111426 () Bool)

(declare-fun tp!1395939 () Bool)

(declare-fun inv!75343 (Conc!15196) Bool)

(assert (=> b!4977990 (= e!3111426 (and (inv!75343 (c!849280 input!1580)) tp!1395939))))

(declare-fun b!4977991 () Bool)

(assert (=> b!4977991 (= e!3111437 (not e!3111432))))

(declare-fun res!2125122 () Bool)

(assert (=> b!4977991 (=> res!2125122 e!3111432)))

(declare-fun semiInverseModEq!3737 (Int Int) Bool)

(assert (=> b!4977991 (= res!2125122 (not (semiInverseModEq!3737 (toChars!11278 (transformation!8444 rule!200)) (toValue!11419 (transformation!8444 rule!200)))))))

(declare-fun lt!2056254 () Unit!148568)

(declare-fun lemmaInv!1367 (TokenValueInjection!16816) Unit!148568)

(assert (=> b!4977991 (= lt!2056254 (lemmaInv!1367 (transformation!8444 rule!200)))))

(declare-fun e!3111430 () Bool)

(assert (=> b!4977991 e!3111430))

(declare-fun res!2125115 () Bool)

(assert (=> b!4977991 (=> res!2125115 e!3111430)))

(declare-datatypes ((tuple2!62454 0))(
  ( (tuple2!62455 (_1!34530 List!57684) (_2!34530 List!57684)) )
))
(declare-fun lt!2056258 () tuple2!62454)

(declare-fun isEmpty!31050 (List!57684) Bool)

(assert (=> b!4977991 (= res!2125115 (isEmpty!31050 (_1!34530 lt!2056258)))))

(declare-fun findLongestMatchInner!1888 (Regex!13677 List!57684 Int List!57684 List!57684 Int) tuple2!62454)

(declare-fun size!38181 (List!57684) Int)

(assert (=> b!4977991 (= lt!2056258 (findLongestMatchInner!1888 (regex!8444 rule!200) Nil!57560 (size!38181 Nil!57560) lt!2056265 lt!2056265 (size!38181 lt!2056265)))))

(declare-fun lt!2056270 () Unit!148568)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1849 (Regex!13677 List!57684) Unit!148568)

(assert (=> b!4977991 (= lt!2056270 (longestMatchIsAcceptedByMatchOrIsEmpty!1849 (regex!8444 rule!200) lt!2056265))))

(declare-fun b!4977992 () Bool)

(declare-fun e!3111436 () Bool)

(assert (=> b!4977992 (= e!3111436 true)))

(declare-fun lt!2056259 () List!57684)

(declare-fun lt!2056255 () tuple2!62452)

(assert (=> b!4977992 (= lt!2056259 (list!18436 (_2!34529 lt!2056255)))))

(declare-fun res!2125116 () Bool)

(assert (=> b!4977993 (=> res!2125116 e!3111432)))

(declare-fun Forall!1794 (Int) Bool)

(assert (=> b!4977993 (= res!2125116 (not (Forall!1794 lambda!247738)))))

(declare-fun b!4977982 () Bool)

(declare-fun res!2125118 () Bool)

(assert (=> b!4977982 (=> res!2125118 e!3111435)))

(assert (=> b!4977982 (= res!2125118 (not (= (list!18436 lt!2056262) lt!2056257)))))

(declare-fun res!2125124 () Bool)

(assert (=> start!525186 (=> (not res!2125124) (not e!3111429))))

(get-info :version)

(assert (=> start!525186 (= res!2125124 ((_ is Lexer!8034) thiss!16165))))

(assert (=> start!525186 e!3111429))

(assert (=> start!525186 true))

(assert (=> start!525186 e!3111433))

(declare-fun e!3111428 () Bool)

(declare-fun inv!75344 (BalanceConc!29822) Bool)

(assert (=> start!525186 (and (inv!75344 totalInput!520) e!3111428)))

(assert (=> start!525186 (and (inv!75344 input!1580) e!3111426)))

(declare-fun b!4977994 () Bool)

(declare-fun matchR!6671 (Regex!13677 List!57684) Bool)

(assert (=> b!4977994 (= e!3111430 (matchR!6671 (regex!8444 rule!200) (_1!34530 lt!2056258)))))

(declare-fun b!4977995 () Bool)

(declare-fun tp!1395941 () Bool)

(assert (=> b!4977995 (= e!3111428 (and (inv!75343 (c!849280 totalInput!520)) tp!1395941))))

(declare-fun b!4977996 () Bool)

(assert (=> b!4977996 (= e!3111438 e!3111436)))

(declare-fun res!2125113 () Bool)

(assert (=> b!4977996 (=> res!2125113 e!3111436)))

(assert (=> b!4977996 (= res!2125113 (not (= (_1!34529 lt!2056255) (_1!34528 lt!2056264))))))

(declare-fun get!20006 (Option!14516) tuple2!62452)

(assert (=> b!4977996 (= lt!2056255 (get!20006 lt!2056252))))

(assert (= (and start!525186 res!2125124) b!4977981))

(assert (= (and b!4977981 res!2125117) b!4977987))

(assert (= (and b!4977987 res!2125114) b!4977989))

(assert (= (and b!4977989 res!2125121) b!4977991))

(assert (= (and b!4977991 (not res!2125115)) b!4977994))

(assert (= (and b!4977991 (not res!2125122)) b!4977993))

(assert (= (and b!4977993 (not res!2125116)) b!4977984))

(assert (= (and b!4977984 (not res!2125119)) b!4977988))

(assert (= (and b!4977988 (not res!2125120)) b!4977982))

(assert (= (and b!4977982 (not res!2125118)) b!4977983))

(assert (= (and b!4977983 (not res!2125123)) b!4977986))

(assert (= (and b!4977986 (not res!2125125)) b!4977996))

(assert (= (and b!4977996 (not res!2125113)) b!4977992))

(assert (= b!4977985 b!4977980))

(assert (= start!525186 b!4977985))

(assert (= start!525186 b!4977995))

(assert (= start!525186 b!4977990))

(declare-fun m!6008530 () Bool)

(assert (=> b!4977992 m!6008530))

(declare-fun m!6008532 () Bool)

(assert (=> b!4977990 m!6008532))

(declare-fun m!6008534 () Bool)

(assert (=> b!4977981 m!6008534))

(declare-fun m!6008536 () Bool)

(assert (=> b!4977985 m!6008536))

(declare-fun m!6008538 () Bool)

(assert (=> b!4977985 m!6008538))

(declare-fun m!6008540 () Bool)

(assert (=> b!4977991 m!6008540))

(declare-fun m!6008542 () Bool)

(assert (=> b!4977991 m!6008542))

(declare-fun m!6008544 () Bool)

(assert (=> b!4977991 m!6008544))

(assert (=> b!4977991 m!6008540))

(declare-fun m!6008546 () Bool)

(assert (=> b!4977991 m!6008546))

(declare-fun m!6008548 () Bool)

(assert (=> b!4977991 m!6008548))

(assert (=> b!4977991 m!6008544))

(declare-fun m!6008550 () Bool)

(assert (=> b!4977991 m!6008550))

(declare-fun m!6008552 () Bool)

(assert (=> b!4977991 m!6008552))

(declare-fun m!6008554 () Bool)

(assert (=> start!525186 m!6008554))

(declare-fun m!6008556 () Bool)

(assert (=> start!525186 m!6008556))

(declare-fun m!6008558 () Bool)

(assert (=> b!4977986 m!6008558))

(declare-fun m!6008560 () Bool)

(assert (=> b!4977987 m!6008560))

(assert (=> b!4977987 m!6008560))

(declare-fun m!6008562 () Bool)

(assert (=> b!4977987 m!6008562))

(declare-fun m!6008564 () Bool)

(assert (=> b!4977987 m!6008564))

(declare-fun m!6008566 () Bool)

(assert (=> b!4977996 m!6008566))

(declare-fun m!6008568 () Bool)

(assert (=> b!4977989 m!6008568))

(declare-fun m!6008570 () Bool)

(assert (=> b!4977989 m!6008570))

(declare-fun m!6008572 () Bool)

(assert (=> b!4977993 m!6008572))

(declare-fun m!6008574 () Bool)

(assert (=> b!4977984 m!6008574))

(declare-fun m!6008576 () Bool)

(assert (=> b!4977984 m!6008576))

(declare-fun m!6008578 () Bool)

(assert (=> b!4977984 m!6008578))

(declare-fun m!6008580 () Bool)

(assert (=> b!4977984 m!6008580))

(declare-fun m!6008582 () Bool)

(assert (=> b!4977984 m!6008582))

(declare-fun m!6008584 () Bool)

(assert (=> b!4977984 m!6008584))

(declare-fun m!6008586 () Bool)

(assert (=> b!4977984 m!6008586))

(declare-fun m!6008588 () Bool)

(assert (=> b!4977984 m!6008588))

(declare-fun m!6008590 () Bool)

(assert (=> b!4977984 m!6008590))

(declare-fun m!6008592 () Bool)

(assert (=> b!4977983 m!6008592))

(declare-fun m!6008594 () Bool)

(assert (=> b!4977983 m!6008594))

(declare-fun m!6008596 () Bool)

(assert (=> b!4977995 m!6008596))

(declare-fun m!6008598 () Bool)

(assert (=> b!4977994 m!6008598))

(declare-fun m!6008600 () Bool)

(assert (=> b!4977982 m!6008600))

(check-sat (not b!4977994) (not b!4977983) b_and!349489 (not b!4977981) (not b_next!133865) (not b!4977986) (not b!4977992) (not b!4977982) (not b!4977991) (not b!4977985) (not b!4977989) (not b!4977987) (not b_next!133867) (not b!4977984) (not b!4977993) (not b!4977995) (not b!4977996) (not start!525186) b_and!349487 (not b!4977990))
(check-sat b_and!349489 b_and!349487 (not b_next!133867) (not b_next!133865))
