; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511748 () Bool)

(assert start!511748)

(declare-fun b!4888851 () Bool)

(declare-fun b_free!131451 () Bool)

(declare-fun b_next!132241 () Bool)

(assert (=> b!4888851 (= b_free!131451 (not b_next!132241))))

(declare-fun tp!1376077 () Bool)

(declare-fun b_and!344291 () Bool)

(assert (=> b!4888851 (= tp!1376077 b_and!344291)))

(declare-fun b_free!131453 () Bool)

(declare-fun b_next!132243 () Bool)

(assert (=> b!4888851 (= b_free!131453 (not b_next!132243))))

(declare-fun tp!1376068 () Bool)

(declare-fun b_and!344293 () Bool)

(assert (=> b!4888851 (= tp!1376068 b_and!344293)))

(declare-fun b!4888856 () Bool)

(declare-fun b_free!131455 () Bool)

(declare-fun b_next!132245 () Bool)

(assert (=> b!4888856 (= b_free!131455 (not b_next!132245))))

(declare-fun tp!1376072 () Bool)

(declare-fun b_and!344295 () Bool)

(assert (=> b!4888856 (= tp!1376072 b_and!344295)))

(declare-fun b_free!131457 () Bool)

(declare-fun b_next!132247 () Bool)

(assert (=> b!4888856 (= b_free!131457 (not b_next!132247))))

(declare-fun tp!1376071 () Bool)

(declare-fun b_and!344297 () Bool)

(assert (=> b!4888856 (= tp!1376071 b_and!344297)))

(declare-fun res!2087877 () Bool)

(declare-fun e!3056364 () Bool)

(assert (=> start!511748 (=> (not res!2087877) (not e!3056364))))

(declare-datatypes ((LexerInterface!7756 0))(
  ( (LexerInterfaceExt!7753 (__x!34241 Int)) (Lexer!7754) )
))
(declare-fun thiss!14805 () LexerInterface!7756)

(get-info :version)

(assert (=> start!511748 (= res!2087877 ((_ is Lexer!7754) thiss!14805))))

(assert (=> start!511748 e!3056364))

(assert (=> start!511748 true))

(declare-fun e!3056353 () Bool)

(assert (=> start!511748 e!3056353))

(declare-datatypes ((C!26676 0))(
  ( (C!26677 (val!22672 Int)) )
))
(declare-datatypes ((List!56497 0))(
  ( (Nil!56373) (Cons!56373 (h!62821 C!26676) (t!365155 List!56497)) )
))
(declare-datatypes ((IArray!29525 0))(
  ( (IArray!29526 (innerList!14820 List!56497)) )
))
(declare-datatypes ((Conc!14732 0))(
  ( (Node!14732 (left!40944 Conc!14732) (right!41274 Conc!14732) (csize!29694 Int) (cheight!14943 Int)) (Leaf!24531 (xs!18048 IArray!29525) (csize!29695 Int)) (Empty!14732) )
))
(declare-datatypes ((BalanceConc!28894 0))(
  ( (BalanceConc!28895 (c!830945 Conc!14732)) )
))
(declare-fun input!1236 () BalanceConc!28894)

(declare-fun e!3056351 () Bool)

(declare-fun inv!72616 (BalanceConc!28894) Bool)

(assert (=> start!511748 (and (inv!72616 input!1236) e!3056351)))

(declare-fun b!4888842 () Bool)

(declare-fun res!2087876 () Bool)

(assert (=> b!4888842 (=> (not res!2087876) (not e!3056364))))

(declare-datatypes ((List!56498 0))(
  ( (Nil!56374) (Cons!56374 (h!62822 (_ BitVec 16)) (t!365156 List!56498)) )
))
(declare-datatypes ((TokenValue!8474 0))(
  ( (FloatLiteralValue!16948 (text!59763 List!56498)) (TokenValueExt!8473 (__x!34242 Int)) (Broken!42370 (value!261800 List!56498)) (Object!8597) (End!8474) (Def!8474) (Underscore!8474) (Match!8474) (Else!8474) (Error!8474) (Case!8474) (If!8474) (Extends!8474) (Abstract!8474) (Class!8474) (Val!8474) (DelimiterValue!16948 (del!8534 List!56498)) (KeywordValue!8480 (value!261801 List!56498)) (CommentValue!16948 (value!261802 List!56498)) (WhitespaceValue!16948 (value!261803 List!56498)) (IndentationValue!8474 (value!261804 List!56498)) (String!63811) (Int32!8474) (Broken!42371 (value!261805 List!56498)) (Boolean!8475) (Unit!146363) (OperatorValue!8477 (op!8534 List!56498)) (IdentifierValue!16948 (value!261806 List!56498)) (IdentifierValue!16949 (value!261807 List!56498)) (WhitespaceValue!16949 (value!261808 List!56498)) (True!16948) (False!16948) (Broken!42372 (value!261809 List!56498)) (Broken!42373 (value!261810 List!56498)) (True!16949) (RightBrace!8474) (RightBracket!8474) (Colon!8474) (Null!8474) (Comma!8474) (LeftBracket!8474) (False!16949) (LeftBrace!8474) (ImaginaryLiteralValue!8474 (text!59764 List!56498)) (StringLiteralValue!25422 (value!261811 List!56498)) (EOFValue!8474 (value!261812 List!56498)) (IdentValue!8474 (value!261813 List!56498)) (DelimiterValue!16949 (value!261814 List!56498)) (DedentValue!8474 (value!261815 List!56498)) (NewLineValue!8474 (value!261816 List!56498)) (IntegerValue!25422 (value!261817 (_ BitVec 32)) (text!59765 List!56498)) (IntegerValue!25423 (value!261818 Int) (text!59766 List!56498)) (Times!8474) (Or!8474) (Equal!8474) (Minus!8474) (Broken!42374 (value!261819 List!56498)) (And!8474) (Div!8474) (LessEqual!8474) (Mod!8474) (Concat!21713) (Not!8474) (Plus!8474) (SpaceValue!8474 (value!261820 List!56498)) (IntegerValue!25424 (value!261821 Int) (text!59767 List!56498)) (StringLiteralValue!25423 (text!59768 List!56498)) (FloatLiteralValue!16949 (text!59769 List!56498)) (BytesLiteralValue!8474 (value!261822 List!56498)) (CommentValue!16949 (value!261823 List!56498)) (StringLiteralValue!25424 (value!261824 List!56498)) (ErrorTokenValue!8474 (msg!8535 List!56498)) )
))
(declare-datatypes ((Regex!13239 0))(
  ( (ElementMatch!13239 (c!830946 C!26676)) (Concat!21714 (regOne!26990 Regex!13239) (regTwo!26990 Regex!13239)) (EmptyExpr!13239) (Star!13239 (reg!13568 Regex!13239)) (EmptyLang!13239) (Union!13239 (regOne!26991 Regex!13239) (regTwo!26991 Regex!13239)) )
))
(declare-datatypes ((String!63812 0))(
  ( (String!63813 (value!261825 String)) )
))
(declare-datatypes ((TokenValueInjection!16256 0))(
  ( (TokenValueInjection!16257 (toValue!11051 Int) (toChars!10910 Int)) )
))
(declare-datatypes ((Rule!16128 0))(
  ( (Rule!16129 (regex!8164 Regex!13239) (tag!9028 String!63812) (isSeparator!8164 Bool) (transformation!8164 TokenValueInjection!16256)) )
))
(declare-datatypes ((List!56499 0))(
  ( (Nil!56375) (Cons!56375 (h!62823 Rule!16128) (t!365157 List!56499)) )
))
(declare-fun rulesArg!165 () List!56499)

(declare-fun rulesValidInductive!3143 (LexerInterface!7756 List!56499) Bool)

(assert (=> b!4888842 (= res!2087876 (rulesValidInductive!3143 thiss!14805 rulesArg!165))))

(declare-fun b!4888843 () Bool)

(declare-fun e!3056365 () Bool)

(declare-fun e!3056359 () Bool)

(assert (=> b!4888843 (= e!3056365 e!3056359)))

(declare-fun res!2087881 () Bool)

(assert (=> b!4888843 (=> res!2087881 e!3056359)))

(declare-datatypes ((Token!14896 0))(
  ( (Token!14897 (value!261826 TokenValue!8474) (rule!11342 Rule!16128) (size!37112 Int) (originalCharacters!8479 List!56497)) )
))
(declare-datatypes ((tuple2!60396 0))(
  ( (tuple2!60397 (_1!33501 Token!14896) (_2!33501 BalanceConc!28894)) )
))
(declare-fun lt!2003675 () tuple2!60396)

(declare-datatypes ((tuple2!60398 0))(
  ( (tuple2!60399 (_1!33502 Token!14896) (_2!33502 List!56497)) )
))
(declare-fun lt!2003677 () tuple2!60398)

(assert (=> b!4888843 (= res!2087881 (not (= (_1!33501 lt!2003675) (_1!33502 lt!2003677))))))

(declare-datatypes ((Option!14009 0))(
  ( (None!14008) (Some!14008 (v!49958 tuple2!60398)) )
))
(declare-fun lt!2003678 () Option!14009)

(declare-fun get!19457 (Option!14009) tuple2!60398)

(assert (=> b!4888843 (= lt!2003677 (get!19457 lt!2003678))))

(declare-datatypes ((Option!14010 0))(
  ( (None!14009) (Some!14009 (v!49959 tuple2!60396)) )
))
(declare-fun lt!2003680 () Option!14010)

(declare-fun get!19458 (Option!14010) tuple2!60396)

(assert (=> b!4888843 (= lt!2003675 (get!19458 lt!2003680))))

(declare-fun b!4888844 () Bool)

(declare-fun res!2087880 () Bool)

(declare-fun e!3056362 () Bool)

(assert (=> b!4888844 (=> res!2087880 e!3056362)))

(declare-fun lt!2003676 () Bool)

(assert (=> b!4888844 (= res!2087880 lt!2003676)))

(declare-fun e!3056357 () Bool)

(declare-fun e!3056363 () Bool)

(declare-fun tp!1376070 () Bool)

(declare-fun b!4888845 () Bool)

(declare-fun inv!72611 (String!63812) Bool)

(declare-fun inv!72617 (TokenValueInjection!16256) Bool)

(assert (=> b!4888845 (= e!3056357 (and tp!1376070 (inv!72611 (tag!9028 (h!62823 rulesArg!165))) (inv!72617 (transformation!8164 (h!62823 rulesArg!165))) e!3056363))))

(declare-fun b!4888846 () Bool)

(declare-fun tp!1376075 () Bool)

(assert (=> b!4888846 (= e!3056353 (and e!3056357 tp!1376075))))

(declare-fun e!3056361 () Bool)

(declare-fun e!3056368 () Bool)

(declare-fun e!3056352 () Bool)

(declare-fun err!4521 () Option!14010)

(declare-fun b!4888847 () Bool)

(declare-fun inv!72618 (Token!14896) Bool)

(assert (=> b!4888847 (= e!3056361 (and (inv!72618 (_1!33501 (v!49959 err!4521))) e!3056352 (inv!72616 (_2!33501 (v!49959 err!4521))) e!3056368))))

(declare-fun b!4888848 () Bool)

(declare-fun list!17706 (BalanceConc!28894) List!56497)

(assert (=> b!4888848 (= e!3056359 (not (= (list!17706 (_2!33501 lt!2003675)) (_2!33502 lt!2003677))))))

(declare-fun b!4888849 () Bool)

(assert (=> b!4888849 (= e!3056362 true)))

(declare-fun lt!2003683 () List!56497)

(declare-fun lt!2003679 () Option!14009)

(declare-fun maxPrefix!4597 (LexerInterface!7756 List!56499 List!56497) Option!14009)

(assert (=> b!4888849 (= lt!2003679 (maxPrefix!4597 thiss!14805 rulesArg!165 lt!2003683))))

(declare-fun b!4888850 () Bool)

(declare-fun tp!1376074 () Bool)

(declare-fun inv!72619 (Conc!14732) Bool)

(assert (=> b!4888850 (= e!3056351 (and (inv!72619 (c!830945 input!1236)) tp!1376074))))

(declare-fun e!3056356 () Bool)

(assert (=> b!4888851 (= e!3056356 (and tp!1376077 tp!1376068))))

(declare-fun b!4888852 () Bool)

(declare-fun e!3056360 () Bool)

(assert (=> b!4888852 (= e!3056360 e!3056362)))

(declare-fun res!2087884 () Bool)

(assert (=> b!4888852 (=> res!2087884 e!3056362)))

(assert (=> b!4888852 (= res!2087884 e!3056365)))

(declare-fun res!2087882 () Bool)

(assert (=> b!4888852 (=> (not res!2087882) (not e!3056365))))

(assert (=> b!4888852 (= res!2087882 (not lt!2003676))))

(declare-fun lt!2003682 () Bool)

(assert (=> b!4888852 (= lt!2003676 (not lt!2003682))))

(declare-fun b!4888853 () Bool)

(declare-fun e!3056367 () Bool)

(declare-fun tp!1376073 () Bool)

(assert (=> b!4888853 (= e!3056367 (and tp!1376073 (inv!72611 (tag!9028 (rule!11342 (_1!33501 (v!49959 err!4521))))) (inv!72617 (transformation!8164 (rule!11342 (_1!33501 (v!49959 err!4521))))) e!3056356))))

(declare-fun b!4888854 () Bool)

(declare-fun e!3056355 () Bool)

(assert (=> b!4888854 (= e!3056364 (not e!3056355))))

(declare-fun res!2087878 () Bool)

(assert (=> b!4888854 (=> res!2087878 e!3056355)))

(assert (=> b!4888854 (= res!2087878 (or (and ((_ is Cons!56375) rulesArg!165) ((_ is Nil!56375) (t!365157 rulesArg!165))) ((_ is Cons!56375) rulesArg!165)))))

(declare-fun isPrefix!4886 (List!56497 List!56497) Bool)

(assert (=> b!4888854 (isPrefix!4886 lt!2003683 lt!2003683)))

(declare-datatypes ((Unit!146364 0))(
  ( (Unit!146365) )
))
(declare-fun lt!2003681 () Unit!146364)

(declare-fun lemmaIsPrefixRefl!3283 (List!56497 List!56497) Unit!146364)

(assert (=> b!4888854 (= lt!2003681 (lemmaIsPrefixRefl!3283 lt!2003683 lt!2003683))))

(assert (=> b!4888854 (= lt!2003683 (list!17706 input!1236))))

(declare-fun b!4888855 () Bool)

(declare-fun tp!1376076 () Bool)

(declare-fun inv!21 (TokenValue!8474) Bool)

(assert (=> b!4888855 (= e!3056352 (and (inv!21 (value!261826 (_1!33501 (v!49959 err!4521)))) e!3056367 tp!1376076))))

(assert (=> b!4888856 (= e!3056363 (and tp!1376072 tp!1376071))))

(declare-fun b!4888857 () Bool)

(declare-fun tp!1376069 () Bool)

(assert (=> b!4888857 (= e!3056368 (and (inv!72619 (c!830945 (_2!33501 (v!49959 err!4521)))) tp!1376069))))

(declare-fun b!4888858 () Bool)

(assert (=> b!4888858 (= e!3056355 e!3056360)))

(declare-fun res!2087883 () Bool)

(assert (=> b!4888858 (=> res!2087883 e!3056360)))

(declare-fun isDefined!11022 (Option!14009) Bool)

(assert (=> b!4888858 (= res!2087883 (not (= lt!2003682 (isDefined!11022 lt!2003678))))))

(declare-fun isDefined!11023 (Option!14010) Bool)

(assert (=> b!4888858 (= lt!2003682 (isDefined!11023 lt!2003680))))

(declare-fun maxPrefixZipper!667 (LexerInterface!7756 List!56499 List!56497) Option!14009)

(assert (=> b!4888858 (= lt!2003678 (maxPrefixZipper!667 thiss!14805 rulesArg!165 lt!2003683))))

(assert (=> b!4888858 (= lt!2003680 err!4521)))

(assert (=> b!4888858 true))

(assert (=> b!4888858 e!3056361))

(declare-fun b!4888859 () Bool)

(declare-fun res!2087879 () Bool)

(assert (=> b!4888859 (=> (not res!2087879) (not e!3056364))))

(declare-fun isEmpty!30224 (List!56499) Bool)

(assert (=> b!4888859 (= res!2087879 (not (isEmpty!30224 rulesArg!165)))))

(assert (= (and start!511748 res!2087877) b!4888842))

(assert (= (and b!4888842 res!2087876) b!4888859))

(assert (= (and b!4888859 res!2087879) b!4888854))

(assert (= (and b!4888854 (not res!2087878)) b!4888858))

(assert (= b!4888853 b!4888851))

(assert (= b!4888855 b!4888853))

(assert (= b!4888847 b!4888855))

(assert (= b!4888847 b!4888857))

(assert (= (and b!4888858 ((_ is Some!14009) err!4521)) b!4888847))

(assert (= (and b!4888858 (not res!2087883)) b!4888852))

(assert (= (and b!4888852 res!2087882) b!4888843))

(assert (= (and b!4888843 (not res!2087881)) b!4888848))

(assert (= (and b!4888852 (not res!2087884)) b!4888844))

(assert (= (and b!4888844 (not res!2087880)) b!4888849))

(assert (= b!4888845 b!4888856))

(assert (= b!4888846 b!4888845))

(assert (= (and start!511748 ((_ is Cons!56375) rulesArg!165)) b!4888846))

(assert (= start!511748 b!4888850))

(declare-fun m!5892380 () Bool)

(assert (=> b!4888854 m!5892380))

(declare-fun m!5892382 () Bool)

(assert (=> b!4888854 m!5892382))

(declare-fun m!5892384 () Bool)

(assert (=> b!4888854 m!5892384))

(declare-fun m!5892386 () Bool)

(assert (=> b!4888842 m!5892386))

(declare-fun m!5892388 () Bool)

(assert (=> b!4888858 m!5892388))

(declare-fun m!5892390 () Bool)

(assert (=> b!4888858 m!5892390))

(declare-fun m!5892392 () Bool)

(assert (=> b!4888858 m!5892392))

(declare-fun m!5892394 () Bool)

(assert (=> b!4888843 m!5892394))

(declare-fun m!5892396 () Bool)

(assert (=> b!4888843 m!5892396))

(declare-fun m!5892398 () Bool)

(assert (=> start!511748 m!5892398))

(declare-fun m!5892400 () Bool)

(assert (=> b!4888845 m!5892400))

(declare-fun m!5892402 () Bool)

(assert (=> b!4888845 m!5892402))

(declare-fun m!5892404 () Bool)

(assert (=> b!4888859 m!5892404))

(declare-fun m!5892406 () Bool)

(assert (=> b!4888855 m!5892406))

(declare-fun m!5892408 () Bool)

(assert (=> b!4888850 m!5892408))

(declare-fun m!5892410 () Bool)

(assert (=> b!4888857 m!5892410))

(declare-fun m!5892412 () Bool)

(assert (=> b!4888853 m!5892412))

(declare-fun m!5892414 () Bool)

(assert (=> b!4888853 m!5892414))

(declare-fun m!5892416 () Bool)

(assert (=> b!4888848 m!5892416))

(declare-fun m!5892418 () Bool)

(assert (=> b!4888847 m!5892418))

(declare-fun m!5892420 () Bool)

(assert (=> b!4888847 m!5892420))

(declare-fun m!5892422 () Bool)

(assert (=> b!4888849 m!5892422))

(check-sat (not b!4888850) (not b!4888848) (not b!4888847) (not b_next!132245) (not b!4888855) b_and!344297 b_and!344291 b_and!344295 (not b_next!132243) b_and!344293 (not b!4888854) (not b!4888843) (not b!4888845) (not start!511748) (not b!4888853) (not b!4888859) (not b_next!132247) (not b!4888849) (not b!4888858) (not b!4888846) (not b!4888842) (not b_next!132241) (not b!4888857))
(check-sat (not b_next!132245) b_and!344297 b_and!344291 b_and!344295 (not b_next!132247) (not b_next!132243) b_and!344293 (not b_next!132241))
