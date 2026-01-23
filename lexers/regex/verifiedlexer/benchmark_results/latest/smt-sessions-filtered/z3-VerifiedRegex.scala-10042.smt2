; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!525170 () Bool)

(assert start!525170)

(declare-fun b!4977554 () Bool)

(declare-fun b_free!133043 () Bool)

(declare-fun b_next!133833 () Bool)

(assert (=> b!4977554 (= b_free!133043 (not b_next!133833))))

(declare-fun tp!1395818 () Bool)

(declare-fun b_and!349455 () Bool)

(assert (=> b!4977554 (= tp!1395818 b_and!349455)))

(declare-fun b_free!133045 () Bool)

(declare-fun b_next!133835 () Bool)

(assert (=> b!4977554 (= b_free!133045 (not b_next!133835))))

(declare-fun tp!1395821 () Bool)

(declare-fun b_and!349457 () Bool)

(assert (=> b!4977554 (= tp!1395821 b_and!349457)))

(declare-fun b!4977574 () Bool)

(declare-fun e!3111091 () Bool)

(assert (=> b!4977574 (= e!3111091 true)))

(declare-fun b!4977573 () Bool)

(declare-fun e!3111090 () Bool)

(assert (=> b!4977573 (= e!3111090 e!3111091)))

(declare-fun b!4977563 () Bool)

(assert (=> b!4977563 e!3111090))

(assert (= b!4977573 b!4977574))

(assert (= b!4977563 b!4977573))

(declare-fun order!26369 () Int)

(declare-fun order!26371 () Int)

(declare-fun lambda!247682 () Int)

(declare-datatypes ((C!27588 0))(
  ( (C!27589 (val!23160 Int)) )
))
(declare-datatypes ((List!57668 0))(
  ( (Nil!57544) (Cons!57544 (h!63992 C!27588) (t!369680 List!57668)) )
))
(declare-datatypes ((IArray!30437 0))(
  ( (IArray!30438 (innerList!15276 List!57668)) )
))
(declare-datatypes ((List!57669 0))(
  ( (Nil!57545) (Cons!57545 (h!63993 (_ BitVec 16)) (t!369681 List!57669)) )
))
(declare-datatypes ((Regex!13669 0))(
  ( (ElementMatch!13669 (c!849255 C!27588)) (Concat!22415 (regOne!27850 Regex!13669) (regTwo!27850 Regex!13669)) (EmptyExpr!13669) (Star!13669 (reg!13998 Regex!13669)) (EmptyLang!13669) (Union!13669 (regOne!27851 Regex!13669) (regTwo!27851 Regex!13669)) )
))
(declare-datatypes ((Conc!15188 0))(
  ( (Node!15188 (left!42024 Conc!15188) (right!42354 Conc!15188) (csize!30606 Int) (cheight!15399 Int)) (Leaf!25231 (xs!18514 IArray!30437) (csize!30607 Int)) (Empty!15188) )
))
(declare-datatypes ((BalanceConc!29806 0))(
  ( (BalanceConc!29807 (c!849256 Conc!15188)) )
))
(declare-datatypes ((TokenValue!8746 0))(
  ( (FloatLiteralValue!17492 (text!61667 List!57669)) (TokenValueExt!8745 (__x!34785 Int)) (Broken!43730 (value!269824 List!57669)) (Object!8869) (End!8746) (Def!8746) (Underscore!8746) (Match!8746) (Else!8746) (Error!8746) (Case!8746) (If!8746) (Extends!8746) (Abstract!8746) (Class!8746) (Val!8746) (DelimiterValue!17492 (del!8806 List!57669)) (KeywordValue!8752 (value!269825 List!57669)) (CommentValue!17492 (value!269826 List!57669)) (WhitespaceValue!17492 (value!269827 List!57669)) (IndentationValue!8746 (value!269828 List!57669)) (String!65603) (Int32!8746) (Broken!43731 (value!269829 List!57669)) (Boolean!8747) (Unit!148543) (OperatorValue!8749 (op!8806 List!57669)) (IdentifierValue!17492 (value!269830 List!57669)) (IdentifierValue!17493 (value!269831 List!57669)) (WhitespaceValue!17493 (value!269832 List!57669)) (True!17492) (False!17492) (Broken!43732 (value!269833 List!57669)) (Broken!43733 (value!269834 List!57669)) (True!17493) (RightBrace!8746) (RightBracket!8746) (Colon!8746) (Null!8746) (Comma!8746) (LeftBracket!8746) (False!17493) (LeftBrace!8746) (ImaginaryLiteralValue!8746 (text!61668 List!57669)) (StringLiteralValue!26238 (value!269835 List!57669)) (EOFValue!8746 (value!269836 List!57669)) (IdentValue!8746 (value!269837 List!57669)) (DelimiterValue!17493 (value!269838 List!57669)) (DedentValue!8746 (value!269839 List!57669)) (NewLineValue!8746 (value!269840 List!57669)) (IntegerValue!26238 (value!269841 (_ BitVec 32)) (text!61669 List!57669)) (IntegerValue!26239 (value!269842 Int) (text!61670 List!57669)) (Times!8746) (Or!8746) (Equal!8746) (Minus!8746) (Broken!43734 (value!269843 List!57669)) (And!8746) (Div!8746) (LessEqual!8746) (Mod!8746) (Concat!22416) (Not!8746) (Plus!8746) (SpaceValue!8746 (value!269844 List!57669)) (IntegerValue!26240 (value!269845 Int) (text!61671 List!57669)) (StringLiteralValue!26239 (text!61672 List!57669)) (FloatLiteralValue!17493 (text!61673 List!57669)) (BytesLiteralValue!8746 (value!269846 List!57669)) (CommentValue!17493 (value!269847 List!57669)) (StringLiteralValue!26240 (value!269848 List!57669)) (ErrorTokenValue!8746 (msg!8807 List!57669)) )
))
(declare-datatypes ((TokenValueInjection!16800 0))(
  ( (TokenValueInjection!16801 (toValue!11411 Int) (toChars!11270 Int)) )
))
(declare-datatypes ((String!65604 0))(
  ( (String!65605 (value!269849 String)) )
))
(declare-datatypes ((Rule!16672 0))(
  ( (Rule!16673 (regex!8436 Regex!13669) (tag!9300 String!65604) (isSeparator!8436 Bool) (transformation!8436 TokenValueInjection!16800)) )
))
(declare-fun rule!200 () Rule!16672)

(declare-fun dynLambda!23276 (Int Int) Int)

(declare-fun dynLambda!23277 (Int Int) Int)

(assert (=> b!4977574 (< (dynLambda!23276 order!26369 (toValue!11411 (transformation!8436 rule!200))) (dynLambda!23277 order!26371 lambda!247682))))

(declare-fun order!26373 () Int)

(declare-fun dynLambda!23278 (Int Int) Int)

(assert (=> b!4977574 (< (dynLambda!23278 order!26373 (toChars!11270 (transformation!8436 rule!200))) (dynLambda!23277 order!26371 lambda!247682))))

(declare-fun b!4977553 () Bool)

(declare-fun e!3111080 () Bool)

(declare-datatypes ((tuple2!62384 0))(
  ( (tuple2!62385 (_1!34495 List!57668) (_2!34495 List!57668)) )
))
(declare-fun lt!2055840 () tuple2!62384)

(declare-fun matchR!6663 (Regex!13669 List!57668) Bool)

(assert (=> b!4977553 (= e!3111080 (matchR!6663 (regex!8436 rule!200) (_1!34495 lt!2055840)))))

(declare-fun e!3111075 () Bool)

(assert (=> b!4977554 (= e!3111075 (and tp!1395818 tp!1395821))))

(declare-fun b!4977555 () Bool)

(declare-fun e!3111081 () Bool)

(declare-fun totalInput!520 () BalanceConc!29806)

(declare-fun tp!1395822 () Bool)

(declare-fun inv!75306 (Conc!15188) Bool)

(assert (=> b!4977555 (= e!3111081 (and (inv!75306 (c!849256 totalInput!520)) tp!1395822))))

(declare-fun b!4977556 () Bool)

(declare-fun res!2124847 () Bool)

(declare-fun e!3111074 () Bool)

(assert (=> b!4977556 (=> (not res!2124847) (not e!3111074))))

(declare-datatypes ((LexerInterface!8028 0))(
  ( (LexerInterfaceExt!8025 (__x!34786 Int)) (Lexer!8026) )
))
(declare-fun thiss!16165 () LexerInterface!8028)

(declare-fun ruleValid!3844 (LexerInterface!8028 Rule!16672) Bool)

(assert (=> b!4977556 (= res!2124847 (ruleValid!3844 thiss!16165 rule!200))))

(declare-fun b!4977557 () Bool)

(declare-fun e!3111078 () Bool)

(assert (=> b!4977557 (= e!3111074 e!3111078)))

(declare-fun res!2124853 () Bool)

(assert (=> b!4977557 (=> (not res!2124853) (not e!3111078))))

(declare-fun lt!2055839 () List!57668)

(declare-fun isSuffix!1235 (List!57668 List!57668) Bool)

(declare-fun list!18428 (BalanceConc!29806) List!57668)

(assert (=> b!4977557 (= res!2124853 (isSuffix!1235 lt!2055839 (list!18428 totalInput!520)))))

(declare-fun input!1580 () BalanceConc!29806)

(assert (=> b!4977557 (= lt!2055839 (list!18428 input!1580))))

(declare-fun lt!2055848 () Bool)

(declare-fun e!3111082 () Bool)

(declare-fun lt!2055847 () Int)

(declare-datatypes ((Token!15336 0))(
  ( (Token!15337 (value!269850 TokenValue!8746) (rule!11688 Rule!16672) (size!38155 Int) (originalCharacters!8699 List!57668)) )
))
(declare-datatypes ((tuple2!62386 0))(
  ( (tuple2!62387 (_1!34496 Token!15336) (_2!34496 List!57668)) )
))
(declare-fun lt!2055836 () tuple2!62386)

(declare-fun lt!2055845 () TokenValue!8746)

(declare-fun b!4977558 () Bool)

(assert (=> b!4977558 (= e!3111082 (or (not (= (value!269850 (_1!34496 lt!2055836)) lt!2055845)) (not (= (rule!11688 (_1!34496 lt!2055836)) rule!200)) (not (= (size!38155 (_1!34496 lt!2055836)) lt!2055847)) lt!2055848))))

(declare-datatypes ((Option!14499 0))(
  ( (None!14498) (Some!14498 (v!50495 tuple2!62386)) )
))
(declare-fun lt!2055835 () Option!14499)

(declare-fun get!19990 (Option!14499) tuple2!62386)

(assert (=> b!4977558 (= lt!2055836 (get!19990 lt!2055835))))

(declare-fun b!4977559 () Bool)

(declare-fun e!3111084 () Bool)

(assert (=> b!4977559 (= e!3111084 e!3111082)))

(declare-fun res!2124851 () Bool)

(assert (=> b!4977559 (=> res!2124851 e!3111082)))

(declare-fun lt!2055844 () BalanceConc!29806)

(declare-fun apply!13927 (TokenValueInjection!16800 BalanceConc!29806) TokenValue!8746)

(assert (=> b!4977559 (= res!2124851 (not (= (apply!13927 (transformation!8436 rule!200) lt!2055844) lt!2055845)))))

(declare-datatypes ((Unit!148544 0))(
  ( (Unit!148545) )
))
(declare-fun lt!2055842 () Unit!148544)

(declare-datatypes ((tuple2!62388 0))(
  ( (tuple2!62389 (_1!34497 BalanceConc!29806) (_2!34497 BalanceConc!29806)) )
))
(declare-fun lt!2055849 () tuple2!62388)

(declare-fun lemmaEqSameImage!1185 (TokenValueInjection!16800 BalanceConc!29806 BalanceConc!29806) Unit!148544)

(assert (=> b!4977559 (= lt!2055842 (lemmaEqSameImage!1185 (transformation!8436 rule!200) (_1!34497 lt!2055849) lt!2055844))))

(declare-fun b!4977560 () Bool)

(declare-fun e!3111083 () Bool)

(assert (=> b!4977560 (= e!3111083 e!3111084)))

(declare-fun res!2124846 () Bool)

(assert (=> b!4977560 (=> res!2124846 e!3111084)))

(declare-fun lt!2055846 () Bool)

(assert (=> b!4977560 (= res!2124846 (or (not (= lt!2055846 lt!2055848)) (not lt!2055846)))))

(declare-fun isDefined!11408 (Option!14499) Bool)

(assert (=> b!4977560 (= lt!2055848 (isDefined!11408 lt!2055835))))

(declare-fun lt!2055843 () List!57668)

(declare-datatypes ((tuple2!62390 0))(
  ( (tuple2!62391 (_1!34498 Token!15336) (_2!34498 BalanceConc!29806)) )
))
(declare-datatypes ((Option!14500 0))(
  ( (None!14499) (Some!14499 (v!50496 tuple2!62390)) )
))
(declare-fun isDefined!11409 (Option!14500) Bool)

(assert (=> b!4977560 (= lt!2055846 (isDefined!11409 (Some!14499 (tuple2!62391 (Token!15337 lt!2055845 rule!200 lt!2055847 lt!2055843) (_2!34497 lt!2055849)))))))

(declare-fun maxPrefixOneRule!3656 (LexerInterface!8028 Rule!16672 List!57668) Option!14499)

(assert (=> b!4977560 (= lt!2055835 (maxPrefixOneRule!3656 thiss!16165 rule!200 lt!2055839))))

(declare-fun size!38156 (BalanceConc!29806) Int)

(assert (=> b!4977560 (= lt!2055847 (size!38156 (_1!34497 lt!2055849)))))

(assert (=> b!4977560 (= lt!2055845 (apply!13927 (transformation!8436 rule!200) (_1!34497 lt!2055849)))))

(declare-fun lt!2055838 () Unit!148544)

(declare-fun ForallOf!1250 (Int BalanceConc!29806) Unit!148544)

(assert (=> b!4977560 (= lt!2055838 (ForallOf!1250 lambda!247682 lt!2055844))))

(declare-fun seqFromList!6061 (List!57668) BalanceConc!29806)

(assert (=> b!4977560 (= lt!2055844 (seqFromList!6061 lt!2055843))))

(assert (=> b!4977560 (= lt!2055843 (list!18428 (_1!34497 lt!2055849)))))

(declare-fun lt!2055841 () Unit!148544)

(assert (=> b!4977560 (= lt!2055841 (ForallOf!1250 lambda!247682 (_1!34497 lt!2055849)))))

(declare-fun res!2124848 () Bool)

(assert (=> start!525170 (=> (not res!2124848) (not e!3111074))))

(get-info :version)

(assert (=> start!525170 (= res!2124848 ((_ is Lexer!8026) thiss!16165))))

(assert (=> start!525170 e!3111074))

(assert (=> start!525170 true))

(declare-fun e!3111079 () Bool)

(assert (=> start!525170 e!3111079))

(declare-fun inv!75307 (BalanceConc!29806) Bool)

(assert (=> start!525170 (and (inv!75307 totalInput!520) e!3111081)))

(declare-fun e!3111077 () Bool)

(assert (=> start!525170 (and (inv!75307 input!1580) e!3111077)))

(declare-fun b!4977561 () Bool)

(declare-fun res!2124850 () Bool)

(assert (=> b!4977561 (=> res!2124850 e!3111084)))

(assert (=> b!4977561 (= res!2124850 (not (= (list!18428 lt!2055844) lt!2055843)))))

(declare-fun b!4977562 () Bool)

(declare-fun e!3111076 () Bool)

(assert (=> b!4977562 (= e!3111076 (not e!3111083))))

(declare-fun res!2124854 () Bool)

(assert (=> b!4977562 (=> res!2124854 e!3111083)))

(declare-fun semiInverseModEq!3729 (Int Int) Bool)

(assert (=> b!4977562 (= res!2124854 (not (semiInverseModEq!3729 (toChars!11270 (transformation!8436 rule!200)) (toValue!11411 (transformation!8436 rule!200)))))))

(declare-fun lt!2055837 () Unit!148544)

(declare-fun lemmaInv!1359 (TokenValueInjection!16800) Unit!148544)

(assert (=> b!4977562 (= lt!2055837 (lemmaInv!1359 (transformation!8436 rule!200)))))

(assert (=> b!4977562 e!3111080))

(declare-fun res!2124852 () Bool)

(assert (=> b!4977562 (=> res!2124852 e!3111080)))

(declare-fun isEmpty!31033 (List!57668) Bool)

(assert (=> b!4977562 (= res!2124852 (isEmpty!31033 (_1!34495 lt!2055840)))))

(declare-fun findLongestMatchInner!1880 (Regex!13669 List!57668 Int List!57668 List!57668 Int) tuple2!62384)

(declare-fun size!38157 (List!57668) Int)

(assert (=> b!4977562 (= lt!2055840 (findLongestMatchInner!1880 (regex!8436 rule!200) Nil!57544 (size!38157 Nil!57544) lt!2055839 lt!2055839 (size!38157 lt!2055839)))))

(declare-fun lt!2055850 () Unit!148544)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1841 (Regex!13669 List!57668) Unit!148544)

(assert (=> b!4977562 (= lt!2055850 (longestMatchIsAcceptedByMatchOrIsEmpty!1841 (regex!8436 rule!200) lt!2055839))))

(declare-fun res!2124849 () Bool)

(assert (=> b!4977563 (=> res!2124849 e!3111083)))

(declare-fun Forall!1786 (Int) Bool)

(assert (=> b!4977563 (= res!2124849 (not (Forall!1786 lambda!247682)))))

(declare-fun tp!1395819 () Bool)

(declare-fun b!4977564 () Bool)

(declare-fun inv!75302 (String!65604) Bool)

(declare-fun inv!75308 (TokenValueInjection!16800) Bool)

(assert (=> b!4977564 (= e!3111079 (and tp!1395819 (inv!75302 (tag!9300 rule!200)) (inv!75308 (transformation!8436 rule!200)) e!3111075))))

(declare-fun b!4977565 () Bool)

(assert (=> b!4977565 (= e!3111078 e!3111076)))

(declare-fun res!2124855 () Bool)

(assert (=> b!4977565 (=> (not res!2124855) (not e!3111076))))

(declare-fun isEmpty!31034 (BalanceConc!29806) Bool)

(assert (=> b!4977565 (= res!2124855 (not (isEmpty!31034 (_1!34497 lt!2055849))))))

(declare-fun findLongestMatchWithZipperSequenceV2!199 (Regex!13669 BalanceConc!29806 BalanceConc!29806) tuple2!62388)

(assert (=> b!4977565 (= lt!2055849 (findLongestMatchWithZipperSequenceV2!199 (regex!8436 rule!200) input!1580 totalInput!520))))

(declare-fun b!4977566 () Bool)

(declare-fun tp!1395820 () Bool)

(assert (=> b!4977566 (= e!3111077 (and (inv!75306 (c!849256 input!1580)) tp!1395820))))

(assert (= (and start!525170 res!2124848) b!4977556))

(assert (= (and b!4977556 res!2124847) b!4977557))

(assert (= (and b!4977557 res!2124853) b!4977565))

(assert (= (and b!4977565 res!2124855) b!4977562))

(assert (= (and b!4977562 (not res!2124852)) b!4977553))

(assert (= (and b!4977562 (not res!2124854)) b!4977563))

(assert (= (and b!4977563 (not res!2124849)) b!4977560))

(assert (= (and b!4977560 (not res!2124846)) b!4977561))

(assert (= (and b!4977561 (not res!2124850)) b!4977559))

(assert (= (and b!4977559 (not res!2124851)) b!4977558))

(assert (= b!4977564 b!4977554))

(assert (= start!525170 b!4977564))

(assert (= start!525170 b!4977555))

(assert (= start!525170 b!4977566))

(declare-fun m!6007978 () Bool)

(assert (=> b!4977553 m!6007978))

(declare-fun m!6007980 () Bool)

(assert (=> b!4977563 m!6007980))

(declare-fun m!6007982 () Bool)

(assert (=> b!4977556 m!6007982))

(declare-fun m!6007984 () Bool)

(assert (=> b!4977566 m!6007984))

(declare-fun m!6007986 () Bool)

(assert (=> b!4977558 m!6007986))

(declare-fun m!6007988 () Bool)

(assert (=> b!4977560 m!6007988))

(declare-fun m!6007990 () Bool)

(assert (=> b!4977560 m!6007990))

(declare-fun m!6007992 () Bool)

(assert (=> b!4977560 m!6007992))

(declare-fun m!6007994 () Bool)

(assert (=> b!4977560 m!6007994))

(declare-fun m!6007996 () Bool)

(assert (=> b!4977560 m!6007996))

(declare-fun m!6007998 () Bool)

(assert (=> b!4977560 m!6007998))

(declare-fun m!6008000 () Bool)

(assert (=> b!4977560 m!6008000))

(declare-fun m!6008002 () Bool)

(assert (=> b!4977560 m!6008002))

(declare-fun m!6008004 () Bool)

(assert (=> b!4977560 m!6008004))

(declare-fun m!6008006 () Bool)

(assert (=> b!4977562 m!6008006))

(declare-fun m!6008008 () Bool)

(assert (=> b!4977562 m!6008008))

(declare-fun m!6008010 () Bool)

(assert (=> b!4977562 m!6008010))

(declare-fun m!6008012 () Bool)

(assert (=> b!4977562 m!6008012))

(declare-fun m!6008014 () Bool)

(assert (=> b!4977562 m!6008014))

(assert (=> b!4977562 m!6008012))

(declare-fun m!6008016 () Bool)

(assert (=> b!4977562 m!6008016))

(declare-fun m!6008018 () Bool)

(assert (=> b!4977562 m!6008018))

(assert (=> b!4977562 m!6008016))

(declare-fun m!6008020 () Bool)

(assert (=> b!4977561 m!6008020))

(declare-fun m!6008022 () Bool)

(assert (=> b!4977564 m!6008022))

(declare-fun m!6008024 () Bool)

(assert (=> b!4977564 m!6008024))

(declare-fun m!6008026 () Bool)

(assert (=> b!4977555 m!6008026))

(declare-fun m!6008028 () Bool)

(assert (=> b!4977565 m!6008028))

(declare-fun m!6008030 () Bool)

(assert (=> b!4977565 m!6008030))

(declare-fun m!6008032 () Bool)

(assert (=> b!4977559 m!6008032))

(declare-fun m!6008034 () Bool)

(assert (=> b!4977559 m!6008034))

(declare-fun m!6008036 () Bool)

(assert (=> b!4977557 m!6008036))

(assert (=> b!4977557 m!6008036))

(declare-fun m!6008038 () Bool)

(assert (=> b!4977557 m!6008038))

(declare-fun m!6008040 () Bool)

(assert (=> b!4977557 m!6008040))

(declare-fun m!6008042 () Bool)

(assert (=> start!525170 m!6008042))

(declare-fun m!6008044 () Bool)

(assert (=> start!525170 m!6008044))

(check-sat (not b!4977564) b_and!349455 (not b_next!133833) (not b!4977565) (not b!4977562) (not start!525170) (not b!4977553) (not b!4977566) (not b!4977561) (not b!4977559) (not b!4977556) (not b!4977555) (not b_next!133835) (not b!4977558) (not b!4977563) (not b!4977560) (not b!4977557) b_and!349457)
(check-sat b_and!349457 b_and!349455 (not b_next!133835) (not b_next!133833))
