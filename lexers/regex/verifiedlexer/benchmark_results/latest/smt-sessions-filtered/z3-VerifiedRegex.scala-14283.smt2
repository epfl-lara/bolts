; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!746076 () Bool)

(assert start!746076)

(declare-fun b!7906842 () Bool)

(declare-fun b_free!135023 () Bool)

(declare-fun b_next!135813 () Bool)

(assert (=> b!7906842 (= b_free!135023 (not b_next!135813))))

(declare-fun tp!2355557 () Bool)

(declare-fun b_and!353211 () Bool)

(assert (=> b!7906842 (= tp!2355557 b_and!353211)))

(declare-fun b_free!135025 () Bool)

(declare-fun b_next!135815 () Bool)

(assert (=> b!7906842 (= b_free!135025 (not b_next!135815))))

(declare-fun tp!2355555 () Bool)

(declare-fun b_and!353213 () Bool)

(assert (=> b!7906842 (= tp!2355555 b_and!353213)))

(declare-fun b!7906837 () Bool)

(declare-fun res!3137754 () Bool)

(declare-fun e!4667376 () Bool)

(assert (=> b!7906837 (=> (not res!3137754) (not e!4667376))))

(declare-datatypes ((List!74416 0))(
  ( (Nil!74292) (Cons!74292 (h!80740 (_ BitVec 16)) (t!389669 List!74416)) )
))
(declare-datatypes ((TokenValue!8948 0))(
  ( (FloatLiteralValue!17896 (text!63081 List!74416)) (TokenValueExt!8947 (__x!35183 Int)) (Broken!44740 (value!287967 List!74416)) (Object!9071) (End!8948) (Def!8948) (Underscore!8948) (Match!8948) (Else!8948) (Error!8948) (Case!8948) (If!8948) (Extends!8948) (Abstract!8948) (Class!8948) (Val!8948) (DelimiterValue!17896 (del!9008 List!74416)) (KeywordValue!8954 (value!287968 List!74416)) (CommentValue!17896 (value!287969 List!74416)) (WhitespaceValue!17896 (value!287970 List!74416)) (IndentationValue!8948 (value!287971 List!74416)) (String!83161) (Int32!8948) (Broken!44741 (value!287972 List!74416)) (Boolean!8949) (Unit!169334) (OperatorValue!8951 (op!9008 List!74416)) (IdentifierValue!17896 (value!287973 List!74416)) (IdentifierValue!17897 (value!287974 List!74416)) (WhitespaceValue!17897 (value!287975 List!74416)) (True!17896) (False!17896) (Broken!44742 (value!287976 List!74416)) (Broken!44743 (value!287977 List!74416)) (True!17897) (RightBrace!8948) (RightBracket!8948) (Colon!8948) (Null!8948) (Comma!8948) (LeftBracket!8948) (False!17897) (LeftBrace!8948) (ImaginaryLiteralValue!8948 (text!63082 List!74416)) (StringLiteralValue!26844 (value!287978 List!74416)) (EOFValue!8948 (value!287979 List!74416)) (IdentValue!8948 (value!287980 List!74416)) (DelimiterValue!17897 (value!287981 List!74416)) (DedentValue!8948 (value!287982 List!74416)) (NewLineValue!8948 (value!287983 List!74416)) (IntegerValue!26844 (value!287984 (_ BitVec 32)) (text!63083 List!74416)) (IntegerValue!26845 (value!287985 Int) (text!63084 List!74416)) (Times!8948) (Or!8948) (Equal!8948) (Minus!8948) (Broken!44744 (value!287986 List!74416)) (And!8948) (Div!8948) (LessEqual!8948) (Mod!8948) (Concat!30283) (Not!8948) (Plus!8948) (SpaceValue!8948 (value!287987 List!74416)) (IntegerValue!26846 (value!287988 Int) (text!63085 List!74416)) (StringLiteralValue!26845 (text!63086 List!74416)) (FloatLiteralValue!17897 (text!63087 List!74416)) (BytesLiteralValue!8948 (value!287989 List!74416)) (CommentValue!17897 (value!287990 List!74416)) (StringLiteralValue!26846 (value!287991 List!74416)) (ErrorTokenValue!8948 (msg!9009 List!74416)) )
))
(declare-datatypes ((C!43000 0))(
  ( (C!43001 (val!31964 Int)) )
))
(declare-datatypes ((List!74417 0))(
  ( (Nil!74293) (Cons!74293 (h!80741 C!43000) (t!389670 List!74417)) )
))
(declare-datatypes ((IArray!31673 0))(
  ( (IArray!31674 (innerList!15894 List!74417)) )
))
(declare-datatypes ((Conc!15806 0))(
  ( (Node!15806 (left!56665 Conc!15806) (right!56995 Conc!15806) (csize!31842 Int) (cheight!16017 Int)) (Leaf!30090 (xs!19188 IArray!31673) (csize!31843 Int)) (Empty!15806) )
))
(declare-datatypes ((BalanceConc!30730 0))(
  ( (BalanceConc!30731 (c!1450785 Conc!15806)) )
))
(declare-datatypes ((Regex!21335 0))(
  ( (ElementMatch!21335 (c!1450786 C!43000)) (Concat!30284 (regOne!43182 Regex!21335) (regTwo!43182 Regex!21335)) (EmptyExpr!21335) (Star!21335 (reg!21664 Regex!21335)) (EmptyLang!21335) (Union!21335 (regOne!43183 Regex!21335) (regTwo!43183 Regex!21335)) )
))
(declare-datatypes ((String!83162 0))(
  ( (String!83163 (value!287992 String)) )
))
(declare-datatypes ((TokenValueInjection!17204 0))(
  ( (TokenValueInjection!17205 (toValue!11689 Int) (toChars!11548 Int)) )
))
(declare-datatypes ((Rule!17064 0))(
  ( (Rule!17065 (regex!8632 Regex!21335) (tag!9496 String!83162) (isSeparator!8632 Bool) (transformation!8632 TokenValueInjection!17204)) )
))
(declare-datatypes ((List!74418 0))(
  ( (Nil!74294) (Cons!74294 (h!80742 Rule!17064) (t!389671 List!74418)) )
))
(declare-fun rulesArg!141 () List!74418)

(declare-fun isEmpty!42640 (List!74418) Bool)

(assert (=> b!7906837 (= res!3137754 (not (isEmpty!42640 rulesArg!141)))))

(declare-fun b!7906838 () Bool)

(declare-fun res!3137758 () Bool)

(declare-fun e!4667372 () Bool)

(assert (=> b!7906838 (=> (not res!3137758) (not e!4667372))))

(declare-fun input!1184 () List!74417)

(declare-datatypes ((Token!15684 0))(
  ( (Token!15685 (value!287993 TokenValue!8948) (rule!11928 Rule!17064) (size!43067 Int) (originalCharacters!8873 List!74417)) )
))
(declare-datatypes ((tuple2!70304 0))(
  ( (tuple2!70305 (_1!38455 Token!15684) (_2!38455 List!74417)) )
))
(declare-fun lt!2685343 () tuple2!70304)

(declare-fun lt!2685342 () List!74417)

(declare-fun ++!18186 (List!74417 List!74417) List!74417)

(assert (=> b!7906838 (= res!3137758 (= (++!18186 lt!2685342 (_2!38455 lt!2685343)) input!1184))))

(declare-fun b!7906839 () Bool)

(declare-fun e!4667380 () Bool)

(declare-fun e!4667378 () Bool)

(assert (=> b!7906839 (= e!4667380 e!4667378)))

(declare-fun res!3137751 () Bool)

(assert (=> b!7906839 (=> (not res!3137751) (not e!4667378))))

(declare-datatypes ((Option!17914 0))(
  ( (None!17913) (Some!17913 (v!55060 tuple2!70304)) )
))
(declare-fun lt!2685346 () Option!17914)

(declare-fun isDefined!14486 (Option!17914) Bool)

(assert (=> b!7906839 (= res!3137751 (isDefined!14486 lt!2685346))))

(declare-fun b!7906841 () Bool)

(declare-fun res!3137752 () Bool)

(assert (=> b!7906841 (=> res!3137752 e!4667380)))

(declare-fun isEmpty!42641 (Option!17914) Bool)

(assert (=> b!7906841 (= res!3137752 (isEmpty!42641 lt!2685346))))

(declare-fun e!4667375 () Bool)

(assert (=> b!7906842 (= e!4667375 (and tp!2355557 tp!2355555))))

(declare-fun b!7906843 () Bool)

(declare-fun e!4667379 () Bool)

(declare-fun e!4667374 () Bool)

(declare-fun tp!2355554 () Bool)

(assert (=> b!7906843 (= e!4667379 (and e!4667374 tp!2355554))))

(declare-fun tp!2355558 () Bool)

(declare-fun b!7906844 () Bool)

(declare-fun inv!95300 (String!83162) Bool)

(declare-fun inv!95302 (TokenValueInjection!17204) Bool)

(assert (=> b!7906844 (= e!4667374 (and tp!2355558 (inv!95300 (tag!9496 (h!80742 rulesArg!141))) (inv!95302 (transformation!8632 (h!80742 rulesArg!141))) e!4667375))))

(declare-fun b!7906845 () Bool)

(declare-fun contains!20896 (List!74418 Rule!17064) Bool)

(assert (=> b!7906845 (= e!4667372 (contains!20896 rulesArg!141 (rule!11928 (_1!38455 lt!2685343))))))

(declare-fun b!7906846 () Bool)

(declare-fun e!4667371 () Bool)

(assert (=> b!7906846 (= e!4667371 e!4667380)))

(declare-fun res!3137757 () Bool)

(assert (=> b!7906846 (=> res!3137757 e!4667380)))

(declare-fun lt!2685345 () Option!17914)

(get-info :version)

(assert (=> b!7906846 (= res!3137757 (or (and ((_ is None!17913) lt!2685346) ((_ is None!17913) lt!2685345)) (not ((_ is None!17913) lt!2685345))))))

(declare-datatypes ((LexerInterface!8224 0))(
  ( (LexerInterfaceExt!8221 (__x!35184 Int)) (Lexer!8222) )
))
(declare-fun thiss!14377 () LexerInterface!8224)

(declare-fun maxPrefix!4749 (LexerInterface!8224 List!74418 List!74417) Option!17914)

(assert (=> b!7906846 (= lt!2685345 (maxPrefix!4749 thiss!14377 (t!389671 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3800 (LexerInterface!8224 Rule!17064 List!74417) Option!17914)

(assert (=> b!7906846 (= lt!2685346 (maxPrefixOneRule!3800 thiss!14377 (h!80742 rulesArg!141) input!1184))))

(declare-fun b!7906847 () Bool)

(assert (=> b!7906847 (= e!4667378 e!4667372)))

(declare-fun res!3137750 () Bool)

(assert (=> b!7906847 (=> (not res!3137750) (not e!4667372))))

(assert (=> b!7906847 (= res!3137750 (= lt!2685342 (originalCharacters!8873 (_1!38455 lt!2685343))))))

(declare-fun list!19270 (BalanceConc!30730) List!74417)

(declare-fun charsOf!5576 (Token!15684) BalanceConc!30730)

(assert (=> b!7906847 (= lt!2685342 (list!19270 (charsOf!5576 (_1!38455 lt!2685343))))))

(declare-fun get!26702 (Option!17914) tuple2!70304)

(assert (=> b!7906847 (= lt!2685343 (get!26702 lt!2685346))))

(declare-fun b!7906848 () Bool)

(declare-fun res!3137753 () Bool)

(assert (=> b!7906848 (=> (not res!3137753) (not e!4667372))))

(declare-fun apply!14355 (TokenValueInjection!17204 BalanceConc!30730) TokenValue!8948)

(declare-fun seqFromList!6173 (List!74417) BalanceConc!30730)

(assert (=> b!7906848 (= res!3137753 (= (value!287993 (_1!38455 lt!2685343)) (apply!14355 (transformation!8632 (rule!11928 (_1!38455 lt!2685343))) (seqFromList!6173 (originalCharacters!8873 (_1!38455 lt!2685343))))))))

(declare-fun b!7906849 () Bool)

(assert (=> b!7906849 (= e!4667376 (not e!4667371))))

(declare-fun res!3137756 () Bool)

(assert (=> b!7906849 (=> res!3137756 e!4667371)))

(assert (=> b!7906849 (= res!3137756 (or (and ((_ is Cons!74294) rulesArg!141) ((_ is Nil!74294) (t!389671 rulesArg!141))) (not ((_ is Cons!74294) rulesArg!141))))))

(declare-fun isPrefix!6465 (List!74417 List!74417) Bool)

(assert (=> b!7906849 (isPrefix!6465 input!1184 input!1184)))

(declare-datatypes ((Unit!169335 0))(
  ( (Unit!169336) )
))
(declare-fun lt!2685344 () Unit!169335)

(declare-fun lemmaIsPrefixRefl!3976 (List!74417 List!74417) Unit!169335)

(assert (=> b!7906849 (= lt!2685344 (lemmaIsPrefixRefl!3976 input!1184 input!1184))))

(declare-fun b!7906850 () Bool)

(declare-fun res!3137755 () Bool)

(assert (=> b!7906850 (=> (not res!3137755) (not e!4667372))))

(declare-fun size!43068 (List!74417) Int)

(assert (=> b!7906850 (= res!3137755 (< (size!43068 (_2!38455 lt!2685343)) (size!43068 input!1184)))))

(declare-fun b!7906840 () Bool)

(declare-fun e!4667373 () Bool)

(declare-fun tp_is_empty!53045 () Bool)

(declare-fun tp!2355556 () Bool)

(assert (=> b!7906840 (= e!4667373 (and tp_is_empty!53045 tp!2355556))))

(declare-fun res!3137760 () Bool)

(assert (=> start!746076 (=> (not res!3137760) (not e!4667376))))

(assert (=> start!746076 (= res!3137760 ((_ is Lexer!8222) thiss!14377))))

(assert (=> start!746076 e!4667376))

(assert (=> start!746076 true))

(assert (=> start!746076 e!4667379))

(assert (=> start!746076 e!4667373))

(declare-fun b!7906851 () Bool)

(declare-fun res!3137759 () Bool)

(assert (=> b!7906851 (=> (not res!3137759) (not e!4667376))))

(declare-fun rulesValidInductive!3443 (LexerInterface!8224 List!74418) Bool)

(assert (=> b!7906851 (= res!3137759 (rulesValidInductive!3443 thiss!14377 rulesArg!141))))

(declare-fun b!7906852 () Bool)

(declare-fun res!3137749 () Bool)

(assert (=> b!7906852 (=> (not res!3137749) (not e!4667372))))

(declare-fun matchR!10662 (Regex!21335 List!74417) Bool)

(assert (=> b!7906852 (= res!3137749 (matchR!10662 (regex!8632 (rule!11928 (_1!38455 lt!2685343))) lt!2685342))))

(assert (= (and start!746076 res!3137760) b!7906851))

(assert (= (and b!7906851 res!3137759) b!7906837))

(assert (= (and b!7906837 res!3137754) b!7906849))

(assert (= (and b!7906849 (not res!3137756)) b!7906846))

(assert (= (and b!7906846 (not res!3137757)) b!7906841))

(assert (= (and b!7906841 (not res!3137752)) b!7906839))

(assert (= (and b!7906839 res!3137751) b!7906847))

(assert (= (and b!7906847 res!3137750) b!7906850))

(assert (= (and b!7906850 res!3137755) b!7906838))

(assert (= (and b!7906838 res!3137758) b!7906848))

(assert (= (and b!7906848 res!3137753) b!7906852))

(assert (= (and b!7906852 res!3137749) b!7906845))

(assert (= b!7906844 b!7906842))

(assert (= b!7906843 b!7906844))

(assert (= (and start!746076 ((_ is Cons!74294) rulesArg!141)) b!7906843))

(assert (= (and start!746076 ((_ is Cons!74293) input!1184)) b!7906840))

(declare-fun m!8281020 () Bool)

(assert (=> b!7906839 m!8281020))

(declare-fun m!8281022 () Bool)

(assert (=> b!7906850 m!8281022))

(declare-fun m!8281024 () Bool)

(assert (=> b!7906850 m!8281024))

(declare-fun m!8281026 () Bool)

(assert (=> b!7906848 m!8281026))

(assert (=> b!7906848 m!8281026))

(declare-fun m!8281028 () Bool)

(assert (=> b!7906848 m!8281028))

(declare-fun m!8281030 () Bool)

(assert (=> b!7906837 m!8281030))

(declare-fun m!8281032 () Bool)

(assert (=> b!7906846 m!8281032))

(declare-fun m!8281034 () Bool)

(assert (=> b!7906846 m!8281034))

(declare-fun m!8281036 () Bool)

(assert (=> b!7906838 m!8281036))

(declare-fun m!8281038 () Bool)

(assert (=> b!7906844 m!8281038))

(declare-fun m!8281040 () Bool)

(assert (=> b!7906844 m!8281040))

(declare-fun m!8281042 () Bool)

(assert (=> b!7906851 m!8281042))

(declare-fun m!8281044 () Bool)

(assert (=> b!7906849 m!8281044))

(declare-fun m!8281046 () Bool)

(assert (=> b!7906849 m!8281046))

(declare-fun m!8281048 () Bool)

(assert (=> b!7906852 m!8281048))

(declare-fun m!8281050 () Bool)

(assert (=> b!7906845 m!8281050))

(declare-fun m!8281052 () Bool)

(assert (=> b!7906841 m!8281052))

(declare-fun m!8281054 () Bool)

(assert (=> b!7906847 m!8281054))

(assert (=> b!7906847 m!8281054))

(declare-fun m!8281056 () Bool)

(assert (=> b!7906847 m!8281056))

(declare-fun m!8281058 () Bool)

(assert (=> b!7906847 m!8281058))

(check-sat (not b!7906849) b_and!353211 (not b!7906840) (not b!7906852) (not b!7906843) (not b_next!135815) (not b!7906848) (not b!7906847) (not b!7906839) (not b!7906850) b_and!353213 tp_is_empty!53045 (not b!7906851) (not b_next!135813) (not b!7906844) (not b!7906838) (not b!7906846) (not b!7906841) (not b!7906837) (not b!7906845))
(check-sat b_and!353213 b_and!353211 (not b_next!135815) (not b_next!135813))
(get-model)

(declare-fun b!7906875 () Bool)

(declare-fun res!3137790 () Bool)

(declare-fun e!4667393 () Bool)

(assert (=> b!7906875 (=> (not res!3137790) (not e!4667393))))

(declare-fun lt!2685362 () Option!17914)

(assert (=> b!7906875 (= res!3137790 (= (++!18186 (list!19270 (charsOf!5576 (_1!38455 (get!26702 lt!2685362)))) (_2!38455 (get!26702 lt!2685362))) input!1184))))

(declare-fun b!7906876 () Bool)

(declare-fun res!3137792 () Bool)

(assert (=> b!7906876 (=> (not res!3137792) (not e!4667393))))

(assert (=> b!7906876 (= res!3137792 (< (size!43068 (_2!38455 (get!26702 lt!2685362))) (size!43068 input!1184)))))

(declare-fun b!7906877 () Bool)

(declare-fun res!3137794 () Bool)

(assert (=> b!7906877 (=> (not res!3137794) (not e!4667393))))

(assert (=> b!7906877 (= res!3137794 (= (list!19270 (charsOf!5576 (_1!38455 (get!26702 lt!2685362)))) (originalCharacters!8873 (_1!38455 (get!26702 lt!2685362)))))))

(declare-fun b!7906878 () Bool)

(assert (=> b!7906878 (= e!4667393 (contains!20896 (t!389671 rulesArg!141) (rule!11928 (_1!38455 (get!26702 lt!2685362)))))))

(declare-fun b!7906880 () Bool)

(declare-fun e!4667392 () Option!17914)

(declare-fun lt!2685359 () Option!17914)

(declare-fun lt!2685363 () Option!17914)

(assert (=> b!7906880 (= e!4667392 (ite (and ((_ is None!17913) lt!2685359) ((_ is None!17913) lt!2685363)) None!17913 (ite ((_ is None!17913) lt!2685363) lt!2685359 (ite ((_ is None!17913) lt!2685359) lt!2685363 (ite (>= (size!43067 (_1!38455 (v!55060 lt!2685359))) (size!43067 (_1!38455 (v!55060 lt!2685363)))) lt!2685359 lt!2685363)))))))

(declare-fun call!733453 () Option!17914)

(assert (=> b!7906880 (= lt!2685359 call!733453)))

(assert (=> b!7906880 (= lt!2685363 (maxPrefix!4749 thiss!14377 (t!389671 (t!389671 rulesArg!141)) input!1184))))

(declare-fun b!7906881 () Bool)

(declare-fun res!3137795 () Bool)

(assert (=> b!7906881 (=> (not res!3137795) (not e!4667393))))

(assert (=> b!7906881 (= res!3137795 (= (value!287993 (_1!38455 (get!26702 lt!2685362))) (apply!14355 (transformation!8632 (rule!11928 (_1!38455 (get!26702 lt!2685362)))) (seqFromList!6173 (originalCharacters!8873 (_1!38455 (get!26702 lt!2685362)))))))))

(declare-fun bm!733448 () Bool)

(assert (=> bm!733448 (= call!733453 (maxPrefixOneRule!3800 thiss!14377 (h!80742 (t!389671 rulesArg!141)) input!1184))))

(declare-fun b!7906882 () Bool)

(declare-fun res!3137796 () Bool)

(assert (=> b!7906882 (=> (not res!3137796) (not e!4667393))))

(assert (=> b!7906882 (= res!3137796 (matchR!10662 (regex!8632 (rule!11928 (_1!38455 (get!26702 lt!2685362)))) (list!19270 (charsOf!5576 (_1!38455 (get!26702 lt!2685362))))))))

(declare-fun b!7906883 () Bool)

(declare-fun e!4667391 () Bool)

(assert (=> b!7906883 (= e!4667391 e!4667393)))

(declare-fun res!3137793 () Bool)

(assert (=> b!7906883 (=> (not res!3137793) (not e!4667393))))

(assert (=> b!7906883 (= res!3137793 (isDefined!14486 lt!2685362))))

(declare-fun b!7906879 () Bool)

(assert (=> b!7906879 (= e!4667392 call!733453)))

(declare-fun d!2359456 () Bool)

(assert (=> d!2359456 e!4667391))

(declare-fun res!3137791 () Bool)

(assert (=> d!2359456 (=> res!3137791 e!4667391)))

(assert (=> d!2359456 (= res!3137791 (isEmpty!42641 lt!2685362))))

(assert (=> d!2359456 (= lt!2685362 e!4667392)))

(declare-fun c!1450789 () Bool)

(assert (=> d!2359456 (= c!1450789 (and ((_ is Cons!74294) (t!389671 rulesArg!141)) ((_ is Nil!74294) (t!389671 (t!389671 rulesArg!141)))))))

(declare-fun lt!2685361 () Unit!169335)

(declare-fun lt!2685360 () Unit!169335)

(assert (=> d!2359456 (= lt!2685361 lt!2685360)))

(assert (=> d!2359456 (isPrefix!6465 input!1184 input!1184)))

(assert (=> d!2359456 (= lt!2685360 (lemmaIsPrefixRefl!3976 input!1184 input!1184))))

(assert (=> d!2359456 (rulesValidInductive!3443 thiss!14377 (t!389671 rulesArg!141))))

(assert (=> d!2359456 (= (maxPrefix!4749 thiss!14377 (t!389671 rulesArg!141) input!1184) lt!2685362)))

(assert (= (and d!2359456 c!1450789) b!7906879))

(assert (= (and d!2359456 (not c!1450789)) b!7906880))

(assert (= (or b!7906879 b!7906880) bm!733448))

(assert (= (and d!2359456 (not res!3137791)) b!7906883))

(assert (= (and b!7906883 res!3137793) b!7906877))

(assert (= (and b!7906877 res!3137794) b!7906876))

(assert (= (and b!7906876 res!3137792) b!7906875))

(assert (= (and b!7906875 res!3137790) b!7906881))

(assert (= (and b!7906881 res!3137795) b!7906882))

(assert (= (and b!7906882 res!3137796) b!7906878))

(declare-fun m!8281060 () Bool)

(assert (=> b!7906883 m!8281060))

(declare-fun m!8281062 () Bool)

(assert (=> bm!733448 m!8281062))

(declare-fun m!8281064 () Bool)

(assert (=> b!7906875 m!8281064))

(declare-fun m!8281066 () Bool)

(assert (=> b!7906875 m!8281066))

(assert (=> b!7906875 m!8281066))

(declare-fun m!8281068 () Bool)

(assert (=> b!7906875 m!8281068))

(assert (=> b!7906875 m!8281068))

(declare-fun m!8281070 () Bool)

(assert (=> b!7906875 m!8281070))

(assert (=> b!7906876 m!8281064))

(declare-fun m!8281072 () Bool)

(assert (=> b!7906876 m!8281072))

(assert (=> b!7906876 m!8281024))

(declare-fun m!8281074 () Bool)

(assert (=> d!2359456 m!8281074))

(assert (=> d!2359456 m!8281044))

(assert (=> d!2359456 m!8281046))

(declare-fun m!8281076 () Bool)

(assert (=> d!2359456 m!8281076))

(declare-fun m!8281078 () Bool)

(assert (=> b!7906880 m!8281078))

(assert (=> b!7906882 m!8281064))

(assert (=> b!7906882 m!8281066))

(assert (=> b!7906882 m!8281066))

(assert (=> b!7906882 m!8281068))

(assert (=> b!7906882 m!8281068))

(declare-fun m!8281080 () Bool)

(assert (=> b!7906882 m!8281080))

(assert (=> b!7906881 m!8281064))

(declare-fun m!8281082 () Bool)

(assert (=> b!7906881 m!8281082))

(assert (=> b!7906881 m!8281082))

(declare-fun m!8281084 () Bool)

(assert (=> b!7906881 m!8281084))

(assert (=> b!7906878 m!8281064))

(declare-fun m!8281086 () Bool)

(assert (=> b!7906878 m!8281086))

(assert (=> b!7906877 m!8281064))

(assert (=> b!7906877 m!8281066))

(assert (=> b!7906877 m!8281066))

(assert (=> b!7906877 m!8281068))

(assert (=> b!7906846 d!2359456))

(declare-fun b!7906902 () Bool)

(declare-fun e!4667403 () Option!17914)

(declare-datatypes ((tuple2!70308 0))(
  ( (tuple2!70309 (_1!38457 List!74417) (_2!38457 List!74417)) )
))
(declare-fun lt!2685377 () tuple2!70308)

(declare-fun size!43070 (BalanceConc!30730) Int)

(assert (=> b!7906902 (= e!4667403 (Some!17913 (tuple2!70305 (Token!15685 (apply!14355 (transformation!8632 (h!80742 rulesArg!141)) (seqFromList!6173 (_1!38457 lt!2685377))) (h!80742 rulesArg!141) (size!43070 (seqFromList!6173 (_1!38457 lt!2685377))) (_1!38457 lt!2685377)) (_2!38457 lt!2685377))))))

(declare-fun lt!2685378 () Unit!169335)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2123 (Regex!21335 List!74417) Unit!169335)

(assert (=> b!7906902 (= lt!2685378 (longestMatchIsAcceptedByMatchOrIsEmpty!2123 (regex!8632 (h!80742 rulesArg!141)) input!1184))))

(declare-fun res!3137817 () Bool)

(declare-fun isEmpty!42643 (List!74417) Bool)

(declare-fun findLongestMatchInner!2160 (Regex!21335 List!74417 Int List!74417 List!74417 Int) tuple2!70308)

(assert (=> b!7906902 (= res!3137817 (isEmpty!42643 (_1!38457 (findLongestMatchInner!2160 (regex!8632 (h!80742 rulesArg!141)) Nil!74293 (size!43068 Nil!74293) input!1184 input!1184 (size!43068 input!1184)))))))

(declare-fun e!4667405 () Bool)

(assert (=> b!7906902 (=> res!3137817 e!4667405)))

(assert (=> b!7906902 e!4667405))

(declare-fun lt!2685374 () Unit!169335)

(assert (=> b!7906902 (= lt!2685374 lt!2685378)))

(declare-fun lt!2685375 () Unit!169335)

(declare-fun lemmaSemiInverse!2670 (TokenValueInjection!17204 BalanceConc!30730) Unit!169335)

(assert (=> b!7906902 (= lt!2685375 (lemmaSemiInverse!2670 (transformation!8632 (h!80742 rulesArg!141)) (seqFromList!6173 (_1!38457 lt!2685377))))))

(declare-fun b!7906903 () Bool)

(declare-fun res!3137816 () Bool)

(declare-fun e!4667402 () Bool)

(assert (=> b!7906903 (=> (not res!3137816) (not e!4667402))))

(declare-fun lt!2685376 () Option!17914)

(assert (=> b!7906903 (= res!3137816 (= (value!287993 (_1!38455 (get!26702 lt!2685376))) (apply!14355 (transformation!8632 (rule!11928 (_1!38455 (get!26702 lt!2685376)))) (seqFromList!6173 (originalCharacters!8873 (_1!38455 (get!26702 lt!2685376)))))))))

(declare-fun b!7906904 () Bool)

(assert (=> b!7906904 (= e!4667402 (= (size!43067 (_1!38455 (get!26702 lt!2685376))) (size!43068 (originalCharacters!8873 (_1!38455 (get!26702 lt!2685376))))))))

(declare-fun b!7906905 () Bool)

(assert (=> b!7906905 (= e!4667405 (matchR!10662 (regex!8632 (h!80742 rulesArg!141)) (_1!38457 (findLongestMatchInner!2160 (regex!8632 (h!80742 rulesArg!141)) Nil!74293 (size!43068 Nil!74293) input!1184 input!1184 (size!43068 input!1184)))))))

(declare-fun b!7906907 () Bool)

(assert (=> b!7906907 (= e!4667403 None!17913)))

(declare-fun b!7906908 () Bool)

(declare-fun res!3137812 () Bool)

(assert (=> b!7906908 (=> (not res!3137812) (not e!4667402))))

(assert (=> b!7906908 (= res!3137812 (= (rule!11928 (_1!38455 (get!26702 lt!2685376))) (h!80742 rulesArg!141)))))

(declare-fun b!7906909 () Bool)

(declare-fun e!4667404 () Bool)

(assert (=> b!7906909 (= e!4667404 e!4667402)))

(declare-fun res!3137813 () Bool)

(assert (=> b!7906909 (=> (not res!3137813) (not e!4667402))))

(assert (=> b!7906909 (= res!3137813 (matchR!10662 (regex!8632 (h!80742 rulesArg!141)) (list!19270 (charsOf!5576 (_1!38455 (get!26702 lt!2685376))))))))

(declare-fun b!7906910 () Bool)

(declare-fun res!3137811 () Bool)

(assert (=> b!7906910 (=> (not res!3137811) (not e!4667402))))

(assert (=> b!7906910 (= res!3137811 (= (++!18186 (list!19270 (charsOf!5576 (_1!38455 (get!26702 lt!2685376)))) (_2!38455 (get!26702 lt!2685376))) input!1184))))

(declare-fun b!7906906 () Bool)

(declare-fun res!3137815 () Bool)

(assert (=> b!7906906 (=> (not res!3137815) (not e!4667402))))

(assert (=> b!7906906 (= res!3137815 (< (size!43068 (_2!38455 (get!26702 lt!2685376))) (size!43068 input!1184)))))

(declare-fun d!2359464 () Bool)

(assert (=> d!2359464 e!4667404))

(declare-fun res!3137814 () Bool)

(assert (=> d!2359464 (=> res!3137814 e!4667404)))

(assert (=> d!2359464 (= res!3137814 (isEmpty!42641 lt!2685376))))

(assert (=> d!2359464 (= lt!2685376 e!4667403)))

(declare-fun c!1450792 () Bool)

(assert (=> d!2359464 (= c!1450792 (isEmpty!42643 (_1!38457 lt!2685377)))))

(declare-fun findLongestMatch!1927 (Regex!21335 List!74417) tuple2!70308)

(assert (=> d!2359464 (= lt!2685377 (findLongestMatch!1927 (regex!8632 (h!80742 rulesArg!141)) input!1184))))

(declare-fun ruleValid!3943 (LexerInterface!8224 Rule!17064) Bool)

(assert (=> d!2359464 (ruleValid!3943 thiss!14377 (h!80742 rulesArg!141))))

(assert (=> d!2359464 (= (maxPrefixOneRule!3800 thiss!14377 (h!80742 rulesArg!141) input!1184) lt!2685376)))

(assert (= (and d!2359464 c!1450792) b!7906907))

(assert (= (and d!2359464 (not c!1450792)) b!7906902))

(assert (= (and b!7906902 (not res!3137817)) b!7906905))

(assert (= (and d!2359464 (not res!3137814)) b!7906909))

(assert (= (and b!7906909 res!3137813) b!7906910))

(assert (= (and b!7906910 res!3137811) b!7906906))

(assert (= (and b!7906906 res!3137815) b!7906908))

(assert (= (and b!7906908 res!3137812) b!7906903))

(assert (= (and b!7906903 res!3137816) b!7906904))

(declare-fun m!8281088 () Bool)

(assert (=> b!7906905 m!8281088))

(assert (=> b!7906905 m!8281024))

(assert (=> b!7906905 m!8281088))

(assert (=> b!7906905 m!8281024))

(declare-fun m!8281090 () Bool)

(assert (=> b!7906905 m!8281090))

(declare-fun m!8281092 () Bool)

(assert (=> b!7906905 m!8281092))

(declare-fun m!8281094 () Bool)

(assert (=> b!7906910 m!8281094))

(declare-fun m!8281096 () Bool)

(assert (=> b!7906910 m!8281096))

(assert (=> b!7906910 m!8281096))

(declare-fun m!8281098 () Bool)

(assert (=> b!7906910 m!8281098))

(assert (=> b!7906910 m!8281098))

(declare-fun m!8281100 () Bool)

(assert (=> b!7906910 m!8281100))

(declare-fun m!8281102 () Bool)

(assert (=> b!7906902 m!8281102))

(declare-fun m!8281104 () Bool)

(assert (=> b!7906902 m!8281104))

(assert (=> b!7906902 m!8281088))

(assert (=> b!7906902 m!8281024))

(assert (=> b!7906902 m!8281090))

(declare-fun m!8281106 () Bool)

(assert (=> b!7906902 m!8281106))

(assert (=> b!7906902 m!8281102))

(declare-fun m!8281108 () Bool)

(assert (=> b!7906902 m!8281108))

(assert (=> b!7906902 m!8281102))

(declare-fun m!8281110 () Bool)

(assert (=> b!7906902 m!8281110))

(assert (=> b!7906902 m!8281088))

(assert (=> b!7906902 m!8281102))

(declare-fun m!8281112 () Bool)

(assert (=> b!7906902 m!8281112))

(assert (=> b!7906902 m!8281024))

(assert (=> b!7906906 m!8281094))

(declare-fun m!8281114 () Bool)

(assert (=> b!7906906 m!8281114))

(assert (=> b!7906906 m!8281024))

(declare-fun m!8281116 () Bool)

(assert (=> d!2359464 m!8281116))

(declare-fun m!8281118 () Bool)

(assert (=> d!2359464 m!8281118))

(declare-fun m!8281120 () Bool)

(assert (=> d!2359464 m!8281120))

(declare-fun m!8281122 () Bool)

(assert (=> d!2359464 m!8281122))

(assert (=> b!7906909 m!8281094))

(assert (=> b!7906909 m!8281096))

(assert (=> b!7906909 m!8281096))

(assert (=> b!7906909 m!8281098))

(assert (=> b!7906909 m!8281098))

(declare-fun m!8281124 () Bool)

(assert (=> b!7906909 m!8281124))

(assert (=> b!7906903 m!8281094))

(declare-fun m!8281126 () Bool)

(assert (=> b!7906903 m!8281126))

(assert (=> b!7906903 m!8281126))

(declare-fun m!8281128 () Bool)

(assert (=> b!7906903 m!8281128))

(assert (=> b!7906904 m!8281094))

(declare-fun m!8281130 () Bool)

(assert (=> b!7906904 m!8281130))

(assert (=> b!7906908 m!8281094))

(assert (=> b!7906846 d!2359464))

(declare-fun d!2359466 () Bool)

(declare-fun list!19272 (Conc!15806) List!74417)

(assert (=> d!2359466 (= (list!19270 (charsOf!5576 (_1!38455 lt!2685343))) (list!19272 (c!1450785 (charsOf!5576 (_1!38455 lt!2685343)))))))

(declare-fun bs!1968142 () Bool)

(assert (= bs!1968142 d!2359466))

(declare-fun m!8281132 () Bool)

(assert (=> bs!1968142 m!8281132))

(assert (=> b!7906847 d!2359466))

(declare-fun d!2359468 () Bool)

(declare-fun lt!2685381 () BalanceConc!30730)

(assert (=> d!2359468 (= (list!19270 lt!2685381) (originalCharacters!8873 (_1!38455 lt!2685343)))))

(declare-fun dynLambda!30090 (Int TokenValue!8948) BalanceConc!30730)

(assert (=> d!2359468 (= lt!2685381 (dynLambda!30090 (toChars!11548 (transformation!8632 (rule!11928 (_1!38455 lt!2685343)))) (value!287993 (_1!38455 lt!2685343))))))

(assert (=> d!2359468 (= (charsOf!5576 (_1!38455 lt!2685343)) lt!2685381)))

(declare-fun b_lambda!289883 () Bool)

(assert (=> (not b_lambda!289883) (not d!2359468)))

(declare-fun t!389673 () Bool)

(declare-fun tb!263091 () Bool)

(assert (=> (and b!7906842 (= (toChars!11548 (transformation!8632 (h!80742 rulesArg!141))) (toChars!11548 (transformation!8632 (rule!11928 (_1!38455 lt!2685343))))) t!389673) tb!263091))

(declare-fun b!7906915 () Bool)

(declare-fun e!4667408 () Bool)

(declare-fun tp!2355561 () Bool)

(declare-fun inv!95305 (Conc!15806) Bool)

(assert (=> b!7906915 (= e!4667408 (and (inv!95305 (c!1450785 (dynLambda!30090 (toChars!11548 (transformation!8632 (rule!11928 (_1!38455 lt!2685343)))) (value!287993 (_1!38455 lt!2685343))))) tp!2355561))))

(declare-fun result!360254 () Bool)

(declare-fun inv!95306 (BalanceConc!30730) Bool)

(assert (=> tb!263091 (= result!360254 (and (inv!95306 (dynLambda!30090 (toChars!11548 (transformation!8632 (rule!11928 (_1!38455 lt!2685343)))) (value!287993 (_1!38455 lt!2685343)))) e!4667408))))

(assert (= tb!263091 b!7906915))

(declare-fun m!8281134 () Bool)

(assert (=> b!7906915 m!8281134))

(declare-fun m!8281136 () Bool)

(assert (=> tb!263091 m!8281136))

(assert (=> d!2359468 t!389673))

(declare-fun b_and!353215 () Bool)

(assert (= b_and!353213 (and (=> t!389673 result!360254) b_and!353215)))

(declare-fun m!8281138 () Bool)

(assert (=> d!2359468 m!8281138))

(declare-fun m!8281140 () Bool)

(assert (=> d!2359468 m!8281140))

(assert (=> b!7906847 d!2359468))

(declare-fun d!2359470 () Bool)

(assert (=> d!2359470 (= (get!26702 lt!2685346) (v!55060 lt!2685346))))

(assert (=> b!7906847 d!2359470))

(declare-fun d!2359472 () Bool)

(declare-fun lt!2685384 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15728 (List!74418) (InoxSet Rule!17064))

(assert (=> d!2359472 (= lt!2685384 (select (content!15728 rulesArg!141) (rule!11928 (_1!38455 lt!2685343))))))

(declare-fun e!4667414 () Bool)

(assert (=> d!2359472 (= lt!2685384 e!4667414)))

(declare-fun res!3137823 () Bool)

(assert (=> d!2359472 (=> (not res!3137823) (not e!4667414))))

(assert (=> d!2359472 (= res!3137823 ((_ is Cons!74294) rulesArg!141))))

(assert (=> d!2359472 (= (contains!20896 rulesArg!141 (rule!11928 (_1!38455 lt!2685343))) lt!2685384)))

(declare-fun b!7906920 () Bool)

(declare-fun e!4667413 () Bool)

(assert (=> b!7906920 (= e!4667414 e!4667413)))

(declare-fun res!3137822 () Bool)

(assert (=> b!7906920 (=> res!3137822 e!4667413)))

(assert (=> b!7906920 (= res!3137822 (= (h!80742 rulesArg!141) (rule!11928 (_1!38455 lt!2685343))))))

(declare-fun b!7906921 () Bool)

(assert (=> b!7906921 (= e!4667413 (contains!20896 (t!389671 rulesArg!141) (rule!11928 (_1!38455 lt!2685343))))))

(assert (= (and d!2359472 res!3137823) b!7906920))

(assert (= (and b!7906920 (not res!3137822)) b!7906921))

(declare-fun m!8281142 () Bool)

(assert (=> d!2359472 m!8281142))

(declare-fun m!8281144 () Bool)

(assert (=> d!2359472 m!8281144))

(declare-fun m!8281146 () Bool)

(assert (=> b!7906921 m!8281146))

(assert (=> b!7906845 d!2359472))

(declare-fun d!2359474 () Bool)

(assert (=> d!2359474 (= (inv!95300 (tag!9496 (h!80742 rulesArg!141))) (= (mod (str.len (value!287992 (tag!9496 (h!80742 rulesArg!141)))) 2) 0))))

(assert (=> b!7906844 d!2359474))

(declare-fun d!2359476 () Bool)

(declare-fun res!3137826 () Bool)

(declare-fun e!4667417 () Bool)

(assert (=> d!2359476 (=> (not res!3137826) (not e!4667417))))

(declare-fun semiInverseModEq!3823 (Int Int) Bool)

(assert (=> d!2359476 (= res!3137826 (semiInverseModEq!3823 (toChars!11548 (transformation!8632 (h!80742 rulesArg!141))) (toValue!11689 (transformation!8632 (h!80742 rulesArg!141)))))))

(assert (=> d!2359476 (= (inv!95302 (transformation!8632 (h!80742 rulesArg!141))) e!4667417)))

(declare-fun b!7906924 () Bool)

(declare-fun equivClasses!3638 (Int Int) Bool)

(assert (=> b!7906924 (= e!4667417 (equivClasses!3638 (toChars!11548 (transformation!8632 (h!80742 rulesArg!141))) (toValue!11689 (transformation!8632 (h!80742 rulesArg!141)))))))

(assert (= (and d!2359476 res!3137826) b!7906924))

(declare-fun m!8281148 () Bool)

(assert (=> d!2359476 m!8281148))

(declare-fun m!8281150 () Bool)

(assert (=> b!7906924 m!8281150))

(assert (=> b!7906844 d!2359476))

(declare-fun d!2359478 () Bool)

(assert (=> d!2359478 (= (isEmpty!42641 lt!2685346) (not ((_ is Some!17913) lt!2685346)))))

(assert (=> b!7906841 d!2359478))

(declare-fun b!7906953 () Bool)

(declare-fun e!4667437 () Bool)

(declare-fun lt!2685387 () Bool)

(declare-fun call!733456 () Bool)

(assert (=> b!7906953 (= e!4667437 (= lt!2685387 call!733456))))

(declare-fun b!7906954 () Bool)

(declare-fun res!3137849 () Bool)

(declare-fun e!4667436 () Bool)

(assert (=> b!7906954 (=> (not res!3137849) (not e!4667436))))

(declare-fun tail!15698 (List!74417) List!74417)

(assert (=> b!7906954 (= res!3137849 (isEmpty!42643 (tail!15698 lt!2685342)))))

(declare-fun b!7906955 () Bool)

(declare-fun res!3137844 () Bool)

(declare-fun e!4667438 () Bool)

(assert (=> b!7906955 (=> res!3137844 e!4667438)))

(assert (=> b!7906955 (= res!3137844 (not (isEmpty!42643 (tail!15698 lt!2685342))))))

(declare-fun b!7906956 () Bool)

(declare-fun e!4667433 () Bool)

(assert (=> b!7906956 (= e!4667433 e!4667438)))

(declare-fun res!3137843 () Bool)

(assert (=> b!7906956 (=> res!3137843 e!4667438)))

(assert (=> b!7906956 (= res!3137843 call!733456)))

(declare-fun d!2359480 () Bool)

(assert (=> d!2359480 e!4667437))

(declare-fun c!1450800 () Bool)

(assert (=> d!2359480 (= c!1450800 ((_ is EmptyExpr!21335) (regex!8632 (rule!11928 (_1!38455 lt!2685343)))))))

(declare-fun e!4667434 () Bool)

(assert (=> d!2359480 (= lt!2685387 e!4667434)))

(declare-fun c!1450799 () Bool)

(assert (=> d!2359480 (= c!1450799 (isEmpty!42643 lt!2685342))))

(declare-fun validRegex!11655 (Regex!21335) Bool)

(assert (=> d!2359480 (validRegex!11655 (regex!8632 (rule!11928 (_1!38455 lt!2685343))))))

(assert (=> d!2359480 (= (matchR!10662 (regex!8632 (rule!11928 (_1!38455 lt!2685343))) lt!2685342) lt!2685387)))

(declare-fun b!7906957 () Bool)

(declare-fun nullable!9492 (Regex!21335) Bool)

(assert (=> b!7906957 (= e!4667434 (nullable!9492 (regex!8632 (rule!11928 (_1!38455 lt!2685343)))))))

(declare-fun bm!733451 () Bool)

(assert (=> bm!733451 (= call!733456 (isEmpty!42643 lt!2685342))))

(declare-fun b!7906958 () Bool)

(declare-fun head!16155 (List!74417) C!43000)

(assert (=> b!7906958 (= e!4667438 (not (= (head!16155 lt!2685342) (c!1450786 (regex!8632 (rule!11928 (_1!38455 lt!2685343)))))))))

(declare-fun b!7906959 () Bool)

(declare-fun e!4667435 () Bool)

(assert (=> b!7906959 (= e!4667435 e!4667433)))

(declare-fun res!3137847 () Bool)

(assert (=> b!7906959 (=> (not res!3137847) (not e!4667433))))

(assert (=> b!7906959 (= res!3137847 (not lt!2685387))))

(declare-fun b!7906960 () Bool)

(declare-fun e!4667432 () Bool)

(assert (=> b!7906960 (= e!4667432 (not lt!2685387))))

(declare-fun b!7906961 () Bool)

(assert (=> b!7906961 (= e!4667436 (= (head!16155 lt!2685342) (c!1450786 (regex!8632 (rule!11928 (_1!38455 lt!2685343))))))))

(declare-fun b!7906962 () Bool)

(assert (=> b!7906962 (= e!4667437 e!4667432)))

(declare-fun c!1450801 () Bool)

(assert (=> b!7906962 (= c!1450801 ((_ is EmptyLang!21335) (regex!8632 (rule!11928 (_1!38455 lt!2685343)))))))

(declare-fun b!7906963 () Bool)

(declare-fun derivativeStep!6434 (Regex!21335 C!43000) Regex!21335)

(assert (=> b!7906963 (= e!4667434 (matchR!10662 (derivativeStep!6434 (regex!8632 (rule!11928 (_1!38455 lt!2685343))) (head!16155 lt!2685342)) (tail!15698 lt!2685342)))))

(declare-fun b!7906964 () Bool)

(declare-fun res!3137845 () Bool)

(assert (=> b!7906964 (=> res!3137845 e!4667435)))

(assert (=> b!7906964 (= res!3137845 (not ((_ is ElementMatch!21335) (regex!8632 (rule!11928 (_1!38455 lt!2685343))))))))

(assert (=> b!7906964 (= e!4667432 e!4667435)))

(declare-fun b!7906965 () Bool)

(declare-fun res!3137848 () Bool)

(assert (=> b!7906965 (=> (not res!3137848) (not e!4667436))))

(assert (=> b!7906965 (= res!3137848 (not call!733456))))

(declare-fun b!7906966 () Bool)

(declare-fun res!3137850 () Bool)

(assert (=> b!7906966 (=> res!3137850 e!4667435)))

(assert (=> b!7906966 (= res!3137850 e!4667436)))

(declare-fun res!3137846 () Bool)

(assert (=> b!7906966 (=> (not res!3137846) (not e!4667436))))

(assert (=> b!7906966 (= res!3137846 lt!2685387)))

(assert (= (and d!2359480 c!1450799) b!7906957))

(assert (= (and d!2359480 (not c!1450799)) b!7906963))

(assert (= (and d!2359480 c!1450800) b!7906953))

(assert (= (and d!2359480 (not c!1450800)) b!7906962))

(assert (= (and b!7906962 c!1450801) b!7906960))

(assert (= (and b!7906962 (not c!1450801)) b!7906964))

(assert (= (and b!7906964 (not res!3137845)) b!7906966))

(assert (= (and b!7906966 res!3137846) b!7906965))

(assert (= (and b!7906965 res!3137848) b!7906954))

(assert (= (and b!7906954 res!3137849) b!7906961))

(assert (= (and b!7906966 (not res!3137850)) b!7906959))

(assert (= (and b!7906959 res!3137847) b!7906956))

(assert (= (and b!7906956 (not res!3137843)) b!7906955))

(assert (= (and b!7906955 (not res!3137844)) b!7906958))

(assert (= (or b!7906953 b!7906956 b!7906965) bm!733451))

(declare-fun m!8281152 () Bool)

(assert (=> b!7906961 m!8281152))

(declare-fun m!8281154 () Bool)

(assert (=> b!7906957 m!8281154))

(declare-fun m!8281156 () Bool)

(assert (=> bm!733451 m!8281156))

(assert (=> b!7906958 m!8281152))

(declare-fun m!8281158 () Bool)

(assert (=> b!7906954 m!8281158))

(assert (=> b!7906954 m!8281158))

(declare-fun m!8281160 () Bool)

(assert (=> b!7906954 m!8281160))

(assert (=> d!2359480 m!8281156))

(declare-fun m!8281162 () Bool)

(assert (=> d!2359480 m!8281162))

(assert (=> b!7906955 m!8281158))

(assert (=> b!7906955 m!8281158))

(assert (=> b!7906955 m!8281160))

(assert (=> b!7906963 m!8281152))

(assert (=> b!7906963 m!8281152))

(declare-fun m!8281164 () Bool)

(assert (=> b!7906963 m!8281164))

(assert (=> b!7906963 m!8281158))

(assert (=> b!7906963 m!8281164))

(assert (=> b!7906963 m!8281158))

(declare-fun m!8281166 () Bool)

(assert (=> b!7906963 m!8281166))

(assert (=> b!7906852 d!2359480))

(declare-fun d!2359482 () Bool)

(declare-fun lt!2685390 () Int)

(assert (=> d!2359482 (>= lt!2685390 0)))

(declare-fun e!4667441 () Int)

(assert (=> d!2359482 (= lt!2685390 e!4667441)))

(declare-fun c!1450804 () Bool)

(assert (=> d!2359482 (= c!1450804 ((_ is Nil!74293) (_2!38455 lt!2685343)))))

(assert (=> d!2359482 (= (size!43068 (_2!38455 lt!2685343)) lt!2685390)))

(declare-fun b!7906971 () Bool)

(assert (=> b!7906971 (= e!4667441 0)))

(declare-fun b!7906972 () Bool)

(assert (=> b!7906972 (= e!4667441 (+ 1 (size!43068 (t!389670 (_2!38455 lt!2685343)))))))

(assert (= (and d!2359482 c!1450804) b!7906971))

(assert (= (and d!2359482 (not c!1450804)) b!7906972))

(declare-fun m!8281168 () Bool)

(assert (=> b!7906972 m!8281168))

(assert (=> b!7906850 d!2359482))

(declare-fun d!2359484 () Bool)

(declare-fun lt!2685391 () Int)

(assert (=> d!2359484 (>= lt!2685391 0)))

(declare-fun e!4667442 () Int)

(assert (=> d!2359484 (= lt!2685391 e!4667442)))

(declare-fun c!1450805 () Bool)

(assert (=> d!2359484 (= c!1450805 ((_ is Nil!74293) input!1184))))

(assert (=> d!2359484 (= (size!43068 input!1184) lt!2685391)))

(declare-fun b!7906973 () Bool)

(assert (=> b!7906973 (= e!4667442 0)))

(declare-fun b!7906974 () Bool)

(assert (=> b!7906974 (= e!4667442 (+ 1 (size!43068 (t!389670 input!1184))))))

(assert (= (and d!2359484 c!1450805) b!7906973))

(assert (= (and d!2359484 (not c!1450805)) b!7906974))

(declare-fun m!8281170 () Bool)

(assert (=> b!7906974 m!8281170))

(assert (=> b!7906850 d!2359484))

(declare-fun d!2359486 () Bool)

(assert (=> d!2359486 true))

(declare-fun lt!2685447 () Bool)

(declare-fun lambda!472515 () Int)

(declare-fun forall!18452 (List!74418 Int) Bool)

(assert (=> d!2359486 (= lt!2685447 (forall!18452 rulesArg!141 lambda!472515))))

(declare-fun e!4667544 () Bool)

(assert (=> d!2359486 (= lt!2685447 e!4667544)))

(declare-fun res!3137950 () Bool)

(assert (=> d!2359486 (=> res!3137950 e!4667544)))

(assert (=> d!2359486 (= res!3137950 (not ((_ is Cons!74294) rulesArg!141)))))

(assert (=> d!2359486 (= (rulesValidInductive!3443 thiss!14377 rulesArg!141) lt!2685447)))

(declare-fun b!7907157 () Bool)

(declare-fun e!4667543 () Bool)

(assert (=> b!7907157 (= e!4667544 e!4667543)))

(declare-fun res!3137951 () Bool)

(assert (=> b!7907157 (=> (not res!3137951) (not e!4667543))))

(assert (=> b!7907157 (= res!3137951 (ruleValid!3943 thiss!14377 (h!80742 rulesArg!141)))))

(declare-fun b!7907158 () Bool)

(assert (=> b!7907158 (= e!4667543 (rulesValidInductive!3443 thiss!14377 (t!389671 rulesArg!141)))))

(assert (= (and d!2359486 (not res!3137950)) b!7907157))

(assert (= (and b!7907157 res!3137951) b!7907158))

(declare-fun m!8281316 () Bool)

(assert (=> d!2359486 m!8281316))

(assert (=> b!7907157 m!8281122))

(assert (=> b!7907158 m!8281076))

(assert (=> b!7906851 d!2359486))

(declare-fun d!2359522 () Bool)

(declare-fun e!4667551 () Bool)

(assert (=> d!2359522 e!4667551))

(declare-fun res!3137962 () Bool)

(assert (=> d!2359522 (=> res!3137962 e!4667551)))

(declare-fun lt!2685450 () Bool)

(assert (=> d!2359522 (= res!3137962 (not lt!2685450))))

(declare-fun e!4667553 () Bool)

(assert (=> d!2359522 (= lt!2685450 e!4667553)))

(declare-fun res!3137963 () Bool)

(assert (=> d!2359522 (=> res!3137963 e!4667553)))

(assert (=> d!2359522 (= res!3137963 ((_ is Nil!74293) input!1184))))

(assert (=> d!2359522 (= (isPrefix!6465 input!1184 input!1184) lt!2685450)))

(declare-fun b!7907171 () Bool)

(declare-fun e!4667552 () Bool)

(assert (=> b!7907171 (= e!4667552 (isPrefix!6465 (tail!15698 input!1184) (tail!15698 input!1184)))))

(declare-fun b!7907172 () Bool)

(assert (=> b!7907172 (= e!4667551 (>= (size!43068 input!1184) (size!43068 input!1184)))))

(declare-fun b!7907170 () Bool)

(declare-fun res!3137960 () Bool)

(assert (=> b!7907170 (=> (not res!3137960) (not e!4667552))))

(assert (=> b!7907170 (= res!3137960 (= (head!16155 input!1184) (head!16155 input!1184)))))

(declare-fun b!7907169 () Bool)

(assert (=> b!7907169 (= e!4667553 e!4667552)))

(declare-fun res!3137961 () Bool)

(assert (=> b!7907169 (=> (not res!3137961) (not e!4667552))))

(assert (=> b!7907169 (= res!3137961 (not ((_ is Nil!74293) input!1184)))))

(assert (= (and d!2359522 (not res!3137963)) b!7907169))

(assert (= (and b!7907169 res!3137961) b!7907170))

(assert (= (and b!7907170 res!3137960) b!7907171))

(assert (= (and d!2359522 (not res!3137962)) b!7907172))

(declare-fun m!8281318 () Bool)

(assert (=> b!7907171 m!8281318))

(assert (=> b!7907171 m!8281318))

(assert (=> b!7907171 m!8281318))

(assert (=> b!7907171 m!8281318))

(declare-fun m!8281320 () Bool)

(assert (=> b!7907171 m!8281320))

(assert (=> b!7907172 m!8281024))

(assert (=> b!7907172 m!8281024))

(declare-fun m!8281322 () Bool)

(assert (=> b!7907170 m!8281322))

(assert (=> b!7907170 m!8281322))

(assert (=> b!7906849 d!2359522))

(declare-fun d!2359524 () Bool)

(assert (=> d!2359524 (isPrefix!6465 input!1184 input!1184)))

(declare-fun lt!2685453 () Unit!169335)

(declare-fun choose!59730 (List!74417 List!74417) Unit!169335)

(assert (=> d!2359524 (= lt!2685453 (choose!59730 input!1184 input!1184))))

(assert (=> d!2359524 (= (lemmaIsPrefixRefl!3976 input!1184 input!1184) lt!2685453)))

(declare-fun bs!1968147 () Bool)

(assert (= bs!1968147 d!2359524))

(assert (=> bs!1968147 m!8281044))

(declare-fun m!8281324 () Bool)

(assert (=> bs!1968147 m!8281324))

(assert (=> b!7906849 d!2359524))

(declare-fun b!7907183 () Bool)

(declare-fun res!3137969 () Bool)

(declare-fun e!4667558 () Bool)

(assert (=> b!7907183 (=> (not res!3137969) (not e!4667558))))

(declare-fun lt!2685456 () List!74417)

(assert (=> b!7907183 (= res!3137969 (= (size!43068 lt!2685456) (+ (size!43068 lt!2685342) (size!43068 (_2!38455 lt!2685343)))))))

(declare-fun b!7907184 () Bool)

(assert (=> b!7907184 (= e!4667558 (or (not (= (_2!38455 lt!2685343) Nil!74293)) (= lt!2685456 lt!2685342)))))

(declare-fun d!2359526 () Bool)

(assert (=> d!2359526 e!4667558))

(declare-fun res!3137968 () Bool)

(assert (=> d!2359526 (=> (not res!3137968) (not e!4667558))))

(declare-fun content!15729 (List!74417) (InoxSet C!43000))

(assert (=> d!2359526 (= res!3137968 (= (content!15729 lt!2685456) ((_ map or) (content!15729 lt!2685342) (content!15729 (_2!38455 lt!2685343)))))))

(declare-fun e!4667559 () List!74417)

(assert (=> d!2359526 (= lt!2685456 e!4667559)))

(declare-fun c!1450830 () Bool)

(assert (=> d!2359526 (= c!1450830 ((_ is Nil!74293) lt!2685342))))

(assert (=> d!2359526 (= (++!18186 lt!2685342 (_2!38455 lt!2685343)) lt!2685456)))

(declare-fun b!7907181 () Bool)

(assert (=> b!7907181 (= e!4667559 (_2!38455 lt!2685343))))

(declare-fun b!7907182 () Bool)

(assert (=> b!7907182 (= e!4667559 (Cons!74293 (h!80741 lt!2685342) (++!18186 (t!389670 lt!2685342) (_2!38455 lt!2685343))))))

(assert (= (and d!2359526 c!1450830) b!7907181))

(assert (= (and d!2359526 (not c!1450830)) b!7907182))

(assert (= (and d!2359526 res!3137968) b!7907183))

(assert (= (and b!7907183 res!3137969) b!7907184))

(declare-fun m!8281326 () Bool)

(assert (=> b!7907183 m!8281326))

(declare-fun m!8281328 () Bool)

(assert (=> b!7907183 m!8281328))

(assert (=> b!7907183 m!8281022))

(declare-fun m!8281330 () Bool)

(assert (=> d!2359526 m!8281330))

(declare-fun m!8281332 () Bool)

(assert (=> d!2359526 m!8281332))

(declare-fun m!8281334 () Bool)

(assert (=> d!2359526 m!8281334))

(declare-fun m!8281336 () Bool)

(assert (=> b!7907182 m!8281336))

(assert (=> b!7906838 d!2359526))

(declare-fun d!2359528 () Bool)

(assert (=> d!2359528 (= (isDefined!14486 lt!2685346) (not (isEmpty!42641 lt!2685346)))))

(declare-fun bs!1968148 () Bool)

(assert (= bs!1968148 d!2359528))

(assert (=> bs!1968148 m!8281052))

(assert (=> b!7906839 d!2359528))

(declare-fun d!2359530 () Bool)

(assert (=> d!2359530 (= (isEmpty!42640 rulesArg!141) ((_ is Nil!74294) rulesArg!141))))

(assert (=> b!7906837 d!2359530))

(declare-fun d!2359532 () Bool)

(declare-fun dynLambda!30091 (Int BalanceConc!30730) TokenValue!8948)

(assert (=> d!2359532 (= (apply!14355 (transformation!8632 (rule!11928 (_1!38455 lt!2685343))) (seqFromList!6173 (originalCharacters!8873 (_1!38455 lt!2685343)))) (dynLambda!30091 (toValue!11689 (transformation!8632 (rule!11928 (_1!38455 lt!2685343)))) (seqFromList!6173 (originalCharacters!8873 (_1!38455 lt!2685343)))))))

(declare-fun b_lambda!289889 () Bool)

(assert (=> (not b_lambda!289889) (not d!2359532)))

(declare-fun t!389683 () Bool)

(declare-fun tb!263101 () Bool)

(assert (=> (and b!7906842 (= (toValue!11689 (transformation!8632 (h!80742 rulesArg!141))) (toValue!11689 (transformation!8632 (rule!11928 (_1!38455 lt!2685343))))) t!389683) tb!263101))

(declare-fun result!360276 () Bool)

(declare-fun inv!21 (TokenValue!8948) Bool)

(assert (=> tb!263101 (= result!360276 (inv!21 (dynLambda!30091 (toValue!11689 (transformation!8632 (rule!11928 (_1!38455 lt!2685343)))) (seqFromList!6173 (originalCharacters!8873 (_1!38455 lt!2685343))))))))

(declare-fun m!8281338 () Bool)

(assert (=> tb!263101 m!8281338))

(assert (=> d!2359532 t!389683))

(declare-fun b_and!353225 () Bool)

(assert (= b_and!353211 (and (=> t!389683 result!360276) b_and!353225)))

(assert (=> d!2359532 m!8281026))

(declare-fun m!8281340 () Bool)

(assert (=> d!2359532 m!8281340))

(assert (=> b!7906848 d!2359532))

(declare-fun d!2359534 () Bool)

(declare-fun fromListB!2783 (List!74417) BalanceConc!30730)

(assert (=> d!2359534 (= (seqFromList!6173 (originalCharacters!8873 (_1!38455 lt!2685343))) (fromListB!2783 (originalCharacters!8873 (_1!38455 lt!2685343))))))

(declare-fun bs!1968149 () Bool)

(assert (= bs!1968149 d!2359534))

(declare-fun m!8281342 () Bool)

(assert (=> bs!1968149 m!8281342))

(assert (=> b!7906848 d!2359534))

(declare-fun b!7907191 () Bool)

(declare-fun e!4667565 () Bool)

(declare-fun tp!2355597 () Bool)

(assert (=> b!7907191 (= e!4667565 (and tp_is_empty!53045 tp!2355597))))

(assert (=> b!7906840 (= tp!2355556 e!4667565)))

(assert (= (and b!7906840 ((_ is Cons!74293) (t!389670 input!1184))) b!7907191))

(declare-fun b!7907204 () Bool)

(declare-fun e!4667568 () Bool)

(declare-fun tp!2355612 () Bool)

(assert (=> b!7907204 (= e!4667568 tp!2355612)))

(declare-fun b!7907203 () Bool)

(declare-fun tp!2355608 () Bool)

(declare-fun tp!2355611 () Bool)

(assert (=> b!7907203 (= e!4667568 (and tp!2355608 tp!2355611))))

(declare-fun b!7907205 () Bool)

(declare-fun tp!2355610 () Bool)

(declare-fun tp!2355609 () Bool)

(assert (=> b!7907205 (= e!4667568 (and tp!2355610 tp!2355609))))

(declare-fun b!7907202 () Bool)

(assert (=> b!7907202 (= e!4667568 tp_is_empty!53045)))

(assert (=> b!7906844 (= tp!2355558 e!4667568)))

(assert (= (and b!7906844 ((_ is ElementMatch!21335) (regex!8632 (h!80742 rulesArg!141)))) b!7907202))

(assert (= (and b!7906844 ((_ is Concat!30284) (regex!8632 (h!80742 rulesArg!141)))) b!7907203))

(assert (= (and b!7906844 ((_ is Star!21335) (regex!8632 (h!80742 rulesArg!141)))) b!7907204))

(assert (= (and b!7906844 ((_ is Union!21335) (regex!8632 (h!80742 rulesArg!141)))) b!7907205))

(declare-fun b!7907216 () Bool)

(declare-fun b_free!135031 () Bool)

(declare-fun b_next!135821 () Bool)

(assert (=> b!7907216 (= b_free!135031 (not b_next!135821))))

(declare-fun tb!263103 () Bool)

(declare-fun t!389685 () Bool)

(assert (=> (and b!7907216 (= (toValue!11689 (transformation!8632 (h!80742 (t!389671 rulesArg!141)))) (toValue!11689 (transformation!8632 (rule!11928 (_1!38455 lt!2685343))))) t!389685) tb!263103))

(declare-fun result!360286 () Bool)

(assert (= result!360286 result!360276))

(assert (=> d!2359532 t!389685))

(declare-fun b_and!353227 () Bool)

(declare-fun tp!2355624 () Bool)

(assert (=> b!7907216 (= tp!2355624 (and (=> t!389685 result!360286) b_and!353227))))

(declare-fun b_free!135033 () Bool)

(declare-fun b_next!135823 () Bool)

(assert (=> b!7907216 (= b_free!135033 (not b_next!135823))))

(declare-fun tb!263105 () Bool)

(declare-fun t!389687 () Bool)

(assert (=> (and b!7907216 (= (toChars!11548 (transformation!8632 (h!80742 (t!389671 rulesArg!141)))) (toChars!11548 (transformation!8632 (rule!11928 (_1!38455 lt!2685343))))) t!389687) tb!263105))

(declare-fun result!360288 () Bool)

(assert (= result!360288 result!360254))

(assert (=> d!2359468 t!389687))

(declare-fun b_and!353229 () Bool)

(declare-fun tp!2355621 () Bool)

(assert (=> b!7907216 (= tp!2355621 (and (=> t!389687 result!360288) b_and!353229))))

(declare-fun e!4667577 () Bool)

(assert (=> b!7907216 (= e!4667577 (and tp!2355624 tp!2355621))))

(declare-fun tp!2355623 () Bool)

(declare-fun b!7907215 () Bool)

(declare-fun e!4667578 () Bool)

(assert (=> b!7907215 (= e!4667578 (and tp!2355623 (inv!95300 (tag!9496 (h!80742 (t!389671 rulesArg!141)))) (inv!95302 (transformation!8632 (h!80742 (t!389671 rulesArg!141)))) e!4667577))))

(declare-fun b!7907214 () Bool)

(declare-fun e!4667579 () Bool)

(declare-fun tp!2355622 () Bool)

(assert (=> b!7907214 (= e!4667579 (and e!4667578 tp!2355622))))

(assert (=> b!7906843 (= tp!2355554 e!4667579)))

(assert (= b!7907215 b!7907216))

(assert (= b!7907214 b!7907215))

(assert (= (and b!7906843 ((_ is Cons!74294) (t!389671 rulesArg!141))) b!7907214))

(declare-fun m!8281344 () Bool)

(assert (=> b!7907215 m!8281344))

(declare-fun m!8281346 () Bool)

(assert (=> b!7907215 m!8281346))

(check-sat (not b!7907158) b_and!353227 (not b!7907214) (not b!7906877) (not b!7906903) (not d!2359534) (not b!7906954) (not b!7906972) (not b!7907215) (not d!2359486) (not b!7906955) (not bm!733448) (not d!2359480) (not b!7907171) (not b!7906882) (not d!2359466) (not b!7907183) (not d!2359464) (not d!2359472) (not b!7906924) (not b!7906878) (not b_next!135821) (not b!7907204) b_and!353215 (not b!7906904) b_and!353229 (not b_lambda!289883) (not b!7907182) (not d!2359476) (not b!7907191) (not d!2359456) (not d!2359468) (not b!7907203) (not b!7907205) (not b!7906958) (not b_next!135815) (not b!7906880) (not b_lambda!289889) (not b!7906883) (not b!7906957) (not b!7906906) (not b!7906963) (not b!7906881) (not b!7906876) b_and!353225 (not d!2359528) (not bm!733451) (not b!7906909) (not b!7906875) (not b!7907157) (not tb!263091) (not b!7906921) (not b!7906974) (not b!7906915) (not b!7906902) (not b!7906905) (not b!7906910) tp_is_empty!53045 (not b!7906908) (not b_next!135823) (not b!7906961) (not b_next!135813) (not d!2359524) (not tb!263101) (not b!7907170) (not d!2359526) (not b!7907172))
(check-sat b_and!353227 (not b_next!135821) b_and!353215 b_and!353229 (not b_next!135815) b_and!353225 (not b_next!135823) (not b_next!135813))
