; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!525162 () Bool)

(assert start!525162)

(declare-fun b!4977361 () Bool)

(declare-fun b_free!133027 () Bool)

(declare-fun b_next!133817 () Bool)

(assert (=> b!4977361 (= b_free!133027 (not b_next!133817))))

(declare-fun tp!1395758 () Bool)

(declare-fun b_and!349439 () Bool)

(assert (=> b!4977361 (= tp!1395758 b_and!349439)))

(declare-fun b_free!133029 () Bool)

(declare-fun b_next!133819 () Bool)

(assert (=> b!4977361 (= b_free!133029 (not b_next!133819))))

(declare-fun tp!1395760 () Bool)

(declare-fun b_and!349441 () Bool)

(assert (=> b!4977361 (= tp!1395760 b_and!349441)))

(declare-fun b!4977374 () Bool)

(declare-fun e!3110923 () Bool)

(assert (=> b!4977374 (= e!3110923 true)))

(declare-fun b!4977373 () Bool)

(declare-fun e!3110922 () Bool)

(assert (=> b!4977373 (= e!3110922 e!3110923)))

(declare-fun b!4977365 () Bool)

(assert (=> b!4977365 e!3110922))

(assert (= b!4977373 b!4977374))

(assert (= b!4977365 b!4977373))

(declare-fun order!26345 () Int)

(declare-datatypes ((C!27580 0))(
  ( (C!27581 (val!23156 Int)) )
))
(declare-datatypes ((List!57660 0))(
  ( (Nil!57536) (Cons!57536 (h!63984 C!27580) (t!369672 List!57660)) )
))
(declare-datatypes ((IArray!30429 0))(
  ( (IArray!30430 (innerList!15272 List!57660)) )
))
(declare-datatypes ((List!57661 0))(
  ( (Nil!57537) (Cons!57537 (h!63985 (_ BitVec 16)) (t!369673 List!57661)) )
))
(declare-datatypes ((Regex!13665 0))(
  ( (ElementMatch!13665 (c!849243 C!27580)) (Concat!22407 (regOne!27842 Regex!13665) (regTwo!27842 Regex!13665)) (EmptyExpr!13665) (Star!13665 (reg!13994 Regex!13665)) (EmptyLang!13665) (Union!13665 (regOne!27843 Regex!13665) (regTwo!27843 Regex!13665)) )
))
(declare-datatypes ((Conc!15184 0))(
  ( (Node!15184 (left!42010 Conc!15184) (right!42340 Conc!15184) (csize!30598 Int) (cheight!15395 Int)) (Leaf!25225 (xs!18510 IArray!30429) (csize!30599 Int)) (Empty!15184) )
))
(declare-datatypes ((BalanceConc!29798 0))(
  ( (BalanceConc!29799 (c!849244 Conc!15184)) )
))
(declare-datatypes ((TokenValue!8742 0))(
  ( (FloatLiteralValue!17484 (text!61639 List!57661)) (TokenValueExt!8741 (__x!34777 Int)) (Broken!43710 (value!269710 List!57661)) (Object!8865) (End!8742) (Def!8742) (Underscore!8742) (Match!8742) (Else!8742) (Error!8742) (Case!8742) (If!8742) (Extends!8742) (Abstract!8742) (Class!8742) (Val!8742) (DelimiterValue!17484 (del!8802 List!57661)) (KeywordValue!8748 (value!269711 List!57661)) (CommentValue!17484 (value!269712 List!57661)) (WhitespaceValue!17484 (value!269713 List!57661)) (IndentationValue!8742 (value!269714 List!57661)) (String!65583) (Int32!8742) (Broken!43711 (value!269715 List!57661)) (Boolean!8743) (Unit!148531) (OperatorValue!8745 (op!8802 List!57661)) (IdentifierValue!17484 (value!269716 List!57661)) (IdentifierValue!17485 (value!269717 List!57661)) (WhitespaceValue!17485 (value!269718 List!57661)) (True!17484) (False!17484) (Broken!43712 (value!269719 List!57661)) (Broken!43713 (value!269720 List!57661)) (True!17485) (RightBrace!8742) (RightBracket!8742) (Colon!8742) (Null!8742) (Comma!8742) (LeftBracket!8742) (False!17485) (LeftBrace!8742) (ImaginaryLiteralValue!8742 (text!61640 List!57661)) (StringLiteralValue!26226 (value!269721 List!57661)) (EOFValue!8742 (value!269722 List!57661)) (IdentValue!8742 (value!269723 List!57661)) (DelimiterValue!17485 (value!269724 List!57661)) (DedentValue!8742 (value!269725 List!57661)) (NewLineValue!8742 (value!269726 List!57661)) (IntegerValue!26226 (value!269727 (_ BitVec 32)) (text!61641 List!57661)) (IntegerValue!26227 (value!269728 Int) (text!61642 List!57661)) (Times!8742) (Or!8742) (Equal!8742) (Minus!8742) (Broken!43714 (value!269729 List!57661)) (And!8742) (Div!8742) (LessEqual!8742) (Mod!8742) (Concat!22408) (Not!8742) (Plus!8742) (SpaceValue!8742 (value!269730 List!57661)) (IntegerValue!26228 (value!269731 Int) (text!61643 List!57661)) (StringLiteralValue!26227 (text!61644 List!57661)) (FloatLiteralValue!17485 (text!61645 List!57661)) (BytesLiteralValue!8742 (value!269732 List!57661)) (CommentValue!17485 (value!269733 List!57661)) (StringLiteralValue!26228 (value!269734 List!57661)) (ErrorTokenValue!8742 (msg!8803 List!57661)) )
))
(declare-datatypes ((TokenValueInjection!16792 0))(
  ( (TokenValueInjection!16793 (toValue!11407 Int) (toChars!11266 Int)) )
))
(declare-datatypes ((String!65584 0))(
  ( (String!65585 (value!269735 String)) )
))
(declare-datatypes ((Rule!16664 0))(
  ( (Rule!16665 (regex!8432 Regex!13665) (tag!9296 String!65584) (isSeparator!8432 Bool) (transformation!8432 TokenValueInjection!16792)) )
))
(declare-fun rule!200 () Rule!16664)

(declare-fun lambda!247654 () Int)

(declare-fun order!26347 () Int)

(declare-fun dynLambda!23264 (Int Int) Int)

(declare-fun dynLambda!23265 (Int Int) Int)

(assert (=> b!4977374 (< (dynLambda!23264 order!26345 (toValue!11407 (transformation!8432 rule!200))) (dynLambda!23265 order!26347 lambda!247654))))

(declare-fun order!26349 () Int)

(declare-fun dynLambda!23266 (Int Int) Int)

(assert (=> b!4977374 (< (dynLambda!23266 order!26349 (toChars!11266 (transformation!8432 rule!200))) (dynLambda!23265 order!26347 lambda!247654))))

(declare-fun b!4977352 () Bool)

(declare-fun e!3110906 () Bool)

(declare-fun input!1580 () BalanceConc!29798)

(declare-fun tp!1395761 () Bool)

(declare-fun inv!75288 (Conc!15184) Bool)

(assert (=> b!4977352 (= e!3110906 (and (inv!75288 (c!849244 input!1580)) tp!1395761))))

(declare-fun e!3110912 () Bool)

(declare-fun b!4977353 () Bool)

(declare-fun tp!1395762 () Bool)

(declare-fun e!3110913 () Bool)

(declare-fun inv!75284 (String!65584) Bool)

(declare-fun inv!75289 (TokenValueInjection!16792) Bool)

(assert (=> b!4977353 (= e!3110913 (and tp!1395762 (inv!75284 (tag!9296 rule!200)) (inv!75289 (transformation!8432 rule!200)) e!3110912))))

(declare-fun b!4977354 () Bool)

(declare-fun res!2124734 () Bool)

(declare-fun e!3110914 () Bool)

(assert (=> b!4977354 (=> res!2124734 e!3110914)))

(declare-fun lt!2055656 () BalanceConc!29798)

(declare-fun lt!2055646 () List!57660)

(declare-fun list!18424 (BalanceConc!29798) List!57660)

(assert (=> b!4977354 (= res!2124734 (not (= (list!18424 lt!2055656) lt!2055646)))))

(declare-fun b!4977355 () Bool)

(declare-fun e!3110910 () Bool)

(assert (=> b!4977355 (= e!3110910 e!3110914)))

(declare-fun res!2124731 () Bool)

(assert (=> b!4977355 (=> res!2124731 e!3110914)))

(declare-fun lt!2055648 () Bool)

(declare-fun lt!2055649 () Bool)

(assert (=> b!4977355 (= res!2124731 (or (not (= lt!2055648 lt!2055649)) (not lt!2055648)))))

(declare-datatypes ((Token!15328 0))(
  ( (Token!15329 (value!269736 TokenValue!8742) (rule!11684 Rule!16664) (size!38143 Int) (originalCharacters!8695 List!57660)) )
))
(declare-datatypes ((tuple2!62352 0))(
  ( (tuple2!62353 (_1!34479 Token!15328) (_2!34479 List!57660)) )
))
(declare-datatypes ((Option!14491 0))(
  ( (None!14490) (Some!14490 (v!50487 tuple2!62352)) )
))
(declare-fun lt!2055658 () Option!14491)

(declare-fun isDefined!11400 (Option!14491) Bool)

(assert (=> b!4977355 (= lt!2055649 (isDefined!11400 lt!2055658))))

(declare-fun lt!2055650 () Int)

(declare-fun lt!2055652 () TokenValue!8742)

(declare-datatypes ((tuple2!62354 0))(
  ( (tuple2!62355 (_1!34480 BalanceConc!29798) (_2!34480 BalanceConc!29798)) )
))
(declare-fun lt!2055653 () tuple2!62354)

(declare-datatypes ((tuple2!62356 0))(
  ( (tuple2!62357 (_1!34481 Token!15328) (_2!34481 BalanceConc!29798)) )
))
(declare-datatypes ((Option!14492 0))(
  ( (None!14491) (Some!14491 (v!50488 tuple2!62356)) )
))
(declare-fun isDefined!11401 (Option!14492) Bool)

(assert (=> b!4977355 (= lt!2055648 (isDefined!11401 (Some!14491 (tuple2!62357 (Token!15329 lt!2055652 rule!200 lt!2055650 lt!2055646) (_2!34480 lt!2055653)))))))

(declare-fun lt!2055654 () List!57660)

(declare-datatypes ((LexerInterface!8024 0))(
  ( (LexerInterfaceExt!8021 (__x!34778 Int)) (Lexer!8022) )
))
(declare-fun thiss!16165 () LexerInterface!8024)

(declare-fun maxPrefixOneRule!3652 (LexerInterface!8024 Rule!16664 List!57660) Option!14491)

(assert (=> b!4977355 (= lt!2055658 (maxPrefixOneRule!3652 thiss!16165 rule!200 lt!2055654))))

(declare-fun size!38144 (BalanceConc!29798) Int)

(assert (=> b!4977355 (= lt!2055650 (size!38144 (_1!34480 lt!2055653)))))

(declare-fun apply!13923 (TokenValueInjection!16792 BalanceConc!29798) TokenValue!8742)

(assert (=> b!4977355 (= lt!2055652 (apply!13923 (transformation!8432 rule!200) (_1!34480 lt!2055653)))))

(declare-datatypes ((Unit!148532 0))(
  ( (Unit!148533) )
))
(declare-fun lt!2055655 () Unit!148532)

(declare-fun ForallOf!1246 (Int BalanceConc!29798) Unit!148532)

(assert (=> b!4977355 (= lt!2055655 (ForallOf!1246 lambda!247654 lt!2055656))))

(declare-fun seqFromList!6057 (List!57660) BalanceConc!29798)

(assert (=> b!4977355 (= lt!2055656 (seqFromList!6057 lt!2055646))))

(assert (=> b!4977355 (= lt!2055646 (list!18424 (_1!34480 lt!2055653)))))

(declare-fun lt!2055651 () Unit!148532)

(assert (=> b!4977355 (= lt!2055651 (ForallOf!1246 lambda!247654 (_1!34480 lt!2055653)))))

(declare-fun b!4977356 () Bool)

(declare-fun e!3110911 () Bool)

(assert (=> b!4977356 (= e!3110911 (not e!3110910))))

(declare-fun res!2124729 () Bool)

(assert (=> b!4977356 (=> res!2124729 e!3110910)))

(declare-fun semiInverseModEq!3725 (Int Int) Bool)

(assert (=> b!4977356 (= res!2124729 (not (semiInverseModEq!3725 (toChars!11266 (transformation!8432 rule!200)) (toValue!11407 (transformation!8432 rule!200)))))))

(declare-fun lt!2055645 () Unit!148532)

(declare-fun lemmaInv!1355 (TokenValueInjection!16792) Unit!148532)

(assert (=> b!4977356 (= lt!2055645 (lemmaInv!1355 (transformation!8432 rule!200)))))

(declare-fun e!3110909 () Bool)

(assert (=> b!4977356 e!3110909))

(declare-fun res!2124733 () Bool)

(assert (=> b!4977356 (=> res!2124733 e!3110909)))

(declare-datatypes ((tuple2!62358 0))(
  ( (tuple2!62359 (_1!34482 List!57660) (_2!34482 List!57660)) )
))
(declare-fun lt!2055647 () tuple2!62358)

(declare-fun isEmpty!31025 (List!57660) Bool)

(assert (=> b!4977356 (= res!2124733 (isEmpty!31025 (_1!34482 lt!2055647)))))

(declare-fun findLongestMatchInner!1876 (Regex!13665 List!57660 Int List!57660 List!57660 Int) tuple2!62358)

(declare-fun size!38145 (List!57660) Int)

(assert (=> b!4977356 (= lt!2055647 (findLongestMatchInner!1876 (regex!8432 rule!200) Nil!57536 (size!38145 Nil!57536) lt!2055654 lt!2055654 (size!38145 lt!2055654)))))

(declare-fun lt!2055657 () Unit!148532)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1837 (Regex!13665 List!57660) Unit!148532)

(assert (=> b!4977356 (= lt!2055657 (longestMatchIsAcceptedByMatchOrIsEmpty!1837 (regex!8432 rule!200) lt!2055654))))

(declare-fun b!4977357 () Bool)

(declare-fun e!3110916 () Bool)

(assert (=> b!4977357 (= e!3110914 e!3110916)))

(declare-fun res!2124725 () Bool)

(assert (=> b!4977357 (=> res!2124725 e!3110916)))

(assert (=> b!4977357 (= res!2124725 (not (= (apply!13923 (transformation!8432 rule!200) lt!2055656) lt!2055652)))))

(declare-fun lt!2055644 () Unit!148532)

(declare-fun lemmaEqSameImage!1181 (TokenValueInjection!16792 BalanceConc!29798 BalanceConc!29798) Unit!148532)

(assert (=> b!4977357 (= lt!2055644 (lemmaEqSameImage!1181 (transformation!8432 rule!200) (_1!34480 lt!2055653) lt!2055656))))

(declare-fun b!4977358 () Bool)

(assert (=> b!4977358 (= e!3110916 lt!2055649)))

(declare-fun b!4977359 () Bool)

(declare-fun e!3110917 () Bool)

(declare-fun totalInput!520 () BalanceConc!29798)

(declare-fun tp!1395759 () Bool)

(assert (=> b!4977359 (= e!3110917 (and (inv!75288 (c!849244 totalInput!520)) tp!1395759))))

(declare-fun b!4977360 () Bool)

(declare-fun res!2124728 () Bool)

(declare-fun e!3110908 () Bool)

(assert (=> b!4977360 (=> (not res!2124728) (not e!3110908))))

(declare-fun ruleValid!3840 (LexerInterface!8024 Rule!16664) Bool)

(assert (=> b!4977360 (= res!2124728 (ruleValid!3840 thiss!16165 rule!200))))

(assert (=> b!4977361 (= e!3110912 (and tp!1395758 tp!1395760))))

(declare-fun res!2124735 () Bool)

(assert (=> start!525162 (=> (not res!2124735) (not e!3110908))))

(get-info :version)

(assert (=> start!525162 (= res!2124735 ((_ is Lexer!8022) thiss!16165))))

(assert (=> start!525162 e!3110908))

(assert (=> start!525162 true))

(assert (=> start!525162 e!3110913))

(declare-fun inv!75290 (BalanceConc!29798) Bool)

(assert (=> start!525162 (and (inv!75290 totalInput!520) e!3110917)))

(assert (=> start!525162 (and (inv!75290 input!1580) e!3110906)))

(declare-fun b!4977362 () Bool)

(declare-fun e!3110915 () Bool)

(assert (=> b!4977362 (= e!3110908 e!3110915)))

(declare-fun res!2124730 () Bool)

(assert (=> b!4977362 (=> (not res!2124730) (not e!3110915))))

(declare-fun isSuffix!1231 (List!57660 List!57660) Bool)

(assert (=> b!4977362 (= res!2124730 (isSuffix!1231 lt!2055654 (list!18424 totalInput!520)))))

(assert (=> b!4977362 (= lt!2055654 (list!18424 input!1580))))

(declare-fun b!4977363 () Bool)

(assert (=> b!4977363 (= e!3110915 e!3110911)))

(declare-fun res!2124727 () Bool)

(assert (=> b!4977363 (=> (not res!2124727) (not e!3110911))))

(declare-fun isEmpty!31026 (BalanceConc!29798) Bool)

(assert (=> b!4977363 (= res!2124727 (not (isEmpty!31026 (_1!34480 lt!2055653))))))

(declare-fun findLongestMatchWithZipperSequenceV2!195 (Regex!13665 BalanceConc!29798 BalanceConc!29798) tuple2!62354)

(assert (=> b!4977363 (= lt!2055653 (findLongestMatchWithZipperSequenceV2!195 (regex!8432 rule!200) input!1580 totalInput!520))))

(declare-fun b!4977364 () Bool)

(declare-fun res!2124732 () Bool)

(assert (=> b!4977364 (=> res!2124732 e!3110916)))

(declare-fun get!19984 (Option!14491) tuple2!62352)

(assert (=> b!4977364 (= res!2124732 (not (= (value!269736 (_1!34479 (get!19984 lt!2055658))) lt!2055652)))))

(declare-fun res!2124726 () Bool)

(assert (=> b!4977365 (=> res!2124726 e!3110910)))

(declare-fun Forall!1782 (Int) Bool)

(assert (=> b!4977365 (= res!2124726 (not (Forall!1782 lambda!247654)))))

(declare-fun b!4977366 () Bool)

(declare-fun matchR!6659 (Regex!13665 List!57660) Bool)

(assert (=> b!4977366 (= e!3110909 (matchR!6659 (regex!8432 rule!200) (_1!34482 lt!2055647)))))

(assert (= (and start!525162 res!2124735) b!4977360))

(assert (= (and b!4977360 res!2124728) b!4977362))

(assert (= (and b!4977362 res!2124730) b!4977363))

(assert (= (and b!4977363 res!2124727) b!4977356))

(assert (= (and b!4977356 (not res!2124733)) b!4977366))

(assert (= (and b!4977356 (not res!2124729)) b!4977365))

(assert (= (and b!4977365 (not res!2124726)) b!4977355))

(assert (= (and b!4977355 (not res!2124731)) b!4977354))

(assert (= (and b!4977354 (not res!2124734)) b!4977357))

(assert (= (and b!4977357 (not res!2124725)) b!4977364))

(assert (= (and b!4977364 (not res!2124732)) b!4977358))

(assert (= b!4977353 b!4977361))

(assert (= start!525162 b!4977353))

(assert (= start!525162 b!4977359))

(assert (= start!525162 b!4977352))

(declare-fun m!6007706 () Bool)

(assert (=> b!4977364 m!6007706))

(declare-fun m!6007708 () Bool)

(assert (=> start!525162 m!6007708))

(declare-fun m!6007710 () Bool)

(assert (=> start!525162 m!6007710))

(declare-fun m!6007712 () Bool)

(assert (=> b!4977352 m!6007712))

(declare-fun m!6007714 () Bool)

(assert (=> b!4977355 m!6007714))

(declare-fun m!6007716 () Bool)

(assert (=> b!4977355 m!6007716))

(declare-fun m!6007718 () Bool)

(assert (=> b!4977355 m!6007718))

(declare-fun m!6007720 () Bool)

(assert (=> b!4977355 m!6007720))

(declare-fun m!6007722 () Bool)

(assert (=> b!4977355 m!6007722))

(declare-fun m!6007724 () Bool)

(assert (=> b!4977355 m!6007724))

(declare-fun m!6007726 () Bool)

(assert (=> b!4977355 m!6007726))

(declare-fun m!6007728 () Bool)

(assert (=> b!4977355 m!6007728))

(declare-fun m!6007730 () Bool)

(assert (=> b!4977355 m!6007730))

(declare-fun m!6007732 () Bool)

(assert (=> b!4977357 m!6007732))

(declare-fun m!6007734 () Bool)

(assert (=> b!4977357 m!6007734))

(declare-fun m!6007736 () Bool)

(assert (=> b!4977365 m!6007736))

(declare-fun m!6007738 () Bool)

(assert (=> b!4977354 m!6007738))

(declare-fun m!6007740 () Bool)

(assert (=> b!4977353 m!6007740))

(declare-fun m!6007742 () Bool)

(assert (=> b!4977353 m!6007742))

(declare-fun m!6007744 () Bool)

(assert (=> b!4977363 m!6007744))

(declare-fun m!6007746 () Bool)

(assert (=> b!4977363 m!6007746))

(declare-fun m!6007748 () Bool)

(assert (=> b!4977359 m!6007748))

(declare-fun m!6007750 () Bool)

(assert (=> b!4977366 m!6007750))

(declare-fun m!6007752 () Bool)

(assert (=> b!4977360 m!6007752))

(declare-fun m!6007754 () Bool)

(assert (=> b!4977356 m!6007754))

(declare-fun m!6007756 () Bool)

(assert (=> b!4977356 m!6007756))

(declare-fun m!6007758 () Bool)

(assert (=> b!4977356 m!6007758))

(declare-fun m!6007760 () Bool)

(assert (=> b!4977356 m!6007760))

(declare-fun m!6007762 () Bool)

(assert (=> b!4977356 m!6007762))

(assert (=> b!4977356 m!6007758))

(declare-fun m!6007764 () Bool)

(assert (=> b!4977356 m!6007764))

(declare-fun m!6007766 () Bool)

(assert (=> b!4977356 m!6007766))

(assert (=> b!4977356 m!6007760))

(declare-fun m!6007768 () Bool)

(assert (=> b!4977362 m!6007768))

(assert (=> b!4977362 m!6007768))

(declare-fun m!6007770 () Bool)

(assert (=> b!4977362 m!6007770))

(declare-fun m!6007772 () Bool)

(assert (=> b!4977362 m!6007772))

(check-sat (not b!4977354) (not b!4977366) (not b_next!133819) (not b!4977363) (not b!4977359) (not b_next!133817) (not b!4977352) b_and!349439 (not b!4977365) (not b!4977353) (not b!4977360) (not b!4977357) (not b!4977356) (not start!525162) (not b!4977362) (not b!4977355) b_and!349441 (not b!4977364))
(check-sat b_and!349441 b_and!349439 (not b_next!133819) (not b_next!133817))
