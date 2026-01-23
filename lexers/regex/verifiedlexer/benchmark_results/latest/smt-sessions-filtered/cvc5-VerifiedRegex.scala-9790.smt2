; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!511526 () Bool)

(assert start!511526)

(declare-fun b!4887236 () Bool)

(declare-fun b_free!131327 () Bool)

(declare-fun b_next!132117 () Bool)

(assert (=> b!4887236 (= b_free!131327 (not b_next!132117))))

(declare-fun tp!1375424 () Bool)

(declare-fun b_and!344159 () Bool)

(assert (=> b!4887236 (= tp!1375424 b_and!344159)))

(declare-fun b_free!131329 () Bool)

(declare-fun b_next!132119 () Bool)

(assert (=> b!4887236 (= b_free!131329 (not b_next!132119))))

(declare-fun tp!1375426 () Bool)

(declare-fun b_and!344161 () Bool)

(assert (=> b!4887236 (= tp!1375426 b_and!344161)))

(declare-fun b!4887235 () Bool)

(declare-fun res!2087067 () Bool)

(declare-fun e!3055115 () Bool)

(assert (=> b!4887235 (=> (not res!2087067) (not e!3055115))))

(declare-datatypes ((LexerInterface!7739 0))(
  ( (LexerInterfaceExt!7736 (__x!34207 Int)) (Lexer!7737) )
))
(declare-fun thiss!14805 () LexerInterface!7739)

(declare-datatypes ((C!26642 0))(
  ( (C!26643 (val!22655 Int)) )
))
(declare-datatypes ((List!56446 0))(
  ( (Nil!56322) (Cons!56322 (h!62770 C!26642) (t!365092 List!56446)) )
))
(declare-datatypes ((IArray!29491 0))(
  ( (IArray!29492 (innerList!14803 List!56446)) )
))
(declare-datatypes ((Conc!14715 0))(
  ( (Node!14715 (left!40907 Conc!14715) (right!41237 Conc!14715) (csize!29660 Int) (cheight!14926 Int)) (Leaf!24506 (xs!18031 IArray!29491) (csize!29661 Int)) (Empty!14715) )
))
(declare-datatypes ((BalanceConc!28860 0))(
  ( (BalanceConc!28861 (c!830802 Conc!14715)) )
))
(declare-datatypes ((List!56447 0))(
  ( (Nil!56323) (Cons!56323 (h!62771 (_ BitVec 16)) (t!365093 List!56447)) )
))
(declare-datatypes ((TokenValue!8457 0))(
  ( (FloatLiteralValue!16914 (text!59644 List!56447)) (TokenValueExt!8456 (__x!34208 Int)) (Broken!42285 (value!261317 List!56447)) (Object!8580) (End!8457) (Def!8457) (Underscore!8457) (Match!8457) (Else!8457) (Error!8457) (Case!8457) (If!8457) (Extends!8457) (Abstract!8457) (Class!8457) (Val!8457) (DelimiterValue!16914 (del!8517 List!56447)) (KeywordValue!8463 (value!261318 List!56447)) (CommentValue!16914 (value!261319 List!56447)) (WhitespaceValue!16914 (value!261320 List!56447)) (IndentationValue!8457 (value!261321 List!56447)) (String!63728) (Int32!8457) (Broken!42286 (value!261322 List!56447)) (Boolean!8458) (Unit!146312) (OperatorValue!8460 (op!8517 List!56447)) (IdentifierValue!16914 (value!261323 List!56447)) (IdentifierValue!16915 (value!261324 List!56447)) (WhitespaceValue!16915 (value!261325 List!56447)) (True!16914) (False!16914) (Broken!42287 (value!261326 List!56447)) (Broken!42288 (value!261327 List!56447)) (True!16915) (RightBrace!8457) (RightBracket!8457) (Colon!8457) (Null!8457) (Comma!8457) (LeftBracket!8457) (False!16915) (LeftBrace!8457) (ImaginaryLiteralValue!8457 (text!59645 List!56447)) (StringLiteralValue!25371 (value!261328 List!56447)) (EOFValue!8457 (value!261329 List!56447)) (IdentValue!8457 (value!261330 List!56447)) (DelimiterValue!16915 (value!261331 List!56447)) (DedentValue!8457 (value!261332 List!56447)) (NewLineValue!8457 (value!261333 List!56447)) (IntegerValue!25371 (value!261334 (_ BitVec 32)) (text!59646 List!56447)) (IntegerValue!25372 (value!261335 Int) (text!59647 List!56447)) (Times!8457) (Or!8457) (Equal!8457) (Minus!8457) (Broken!42289 (value!261336 List!56447)) (And!8457) (Div!8457) (LessEqual!8457) (Mod!8457) (Concat!21679) (Not!8457) (Plus!8457) (SpaceValue!8457 (value!261337 List!56447)) (IntegerValue!25373 (value!261338 Int) (text!59648 List!56447)) (StringLiteralValue!25372 (text!59649 List!56447)) (FloatLiteralValue!16915 (text!59650 List!56447)) (BytesLiteralValue!8457 (value!261339 List!56447)) (CommentValue!16915 (value!261340 List!56447)) (StringLiteralValue!25373 (value!261341 List!56447)) (ErrorTokenValue!8457 (msg!8518 List!56447)) )
))
(declare-datatypes ((TokenValueInjection!16222 0))(
  ( (TokenValueInjection!16223 (toValue!11034 Int) (toChars!10893 Int)) )
))
(declare-datatypes ((Regex!13222 0))(
  ( (ElementMatch!13222 (c!830803 C!26642)) (Concat!21680 (regOne!26956 Regex!13222) (regTwo!26956 Regex!13222)) (EmptyExpr!13222) (Star!13222 (reg!13551 Regex!13222)) (EmptyLang!13222) (Union!13222 (regOne!26957 Regex!13222) (regTwo!26957 Regex!13222)) )
))
(declare-datatypes ((String!63729 0))(
  ( (String!63730 (value!261342 String)) )
))
(declare-datatypes ((Rule!16094 0))(
  ( (Rule!16095 (regex!8147 Regex!13222) (tag!9011 String!63729) (isSeparator!8147 Bool) (transformation!8147 TokenValueInjection!16222)) )
))
(declare-datatypes ((List!56448 0))(
  ( (Nil!56324) (Cons!56324 (h!62772 Rule!16094) (t!365094 List!56448)) )
))
(declare-fun rulesArg!165 () List!56448)

(declare-fun rulesValidInductive!3126 (LexerInterface!7739 List!56448) Bool)

(assert (=> b!4887235 (= res!2087067 (rulesValidInductive!3126 thiss!14805 rulesArg!165))))

(declare-fun e!3055119 () Bool)

(assert (=> b!4887236 (= e!3055119 (and tp!1375424 tp!1375426))))

(declare-fun res!2087063 () Bool)

(assert (=> start!511526 (=> (not res!2087063) (not e!3055115))))

(assert (=> start!511526 (= res!2087063 (is-Lexer!7737 thiss!14805))))

(assert (=> start!511526 e!3055115))

(assert (=> start!511526 true))

(declare-fun e!3055114 () Bool)

(assert (=> start!511526 e!3055114))

(declare-fun input!1236 () BalanceConc!28860)

(declare-fun e!3055117 () Bool)

(declare-fun inv!72517 (BalanceConc!28860) Bool)

(assert (=> start!511526 (and (inv!72517 input!1236) e!3055117)))

(declare-fun e!3055110 () Bool)

(declare-fun lt!2002874 () List!56446)

(declare-fun b!4887237 () Bool)

(declare-datatypes ((Token!14862 0))(
  ( (Token!14863 (value!261343 TokenValue!8457) (rule!11321 Rule!16094) (size!37087 Int) (originalCharacters!8462 List!56446)) )
))
(declare-datatypes ((tuple2!60320 0))(
  ( (tuple2!60321 (_1!33463 Token!14862) (_2!33463 List!56446)) )
))
(declare-datatypes ((Option!13977 0))(
  ( (None!13976) (Some!13976 (v!49926 tuple2!60320)) )
))
(declare-fun isDefined!10992 (Option!13977) Bool)

(declare-fun maxPrefix!4588 (LexerInterface!7739 List!56448 List!56446) Option!13977)

(assert (=> b!4887237 (= e!3055110 (isDefined!10992 (maxPrefix!4588 thiss!14805 rulesArg!165 lt!2002874)))))

(declare-fun b!4887238 () Bool)

(declare-fun e!3055120 () Bool)

(declare-fun e!3055109 () Bool)

(assert (=> b!4887238 (= e!3055120 e!3055109)))

(declare-fun res!2087065 () Bool)

(assert (=> b!4887238 (=> res!2087065 e!3055109)))

(declare-datatypes ((tuple2!60322 0))(
  ( (tuple2!60323 (_1!33464 Token!14862) (_2!33464 BalanceConc!28860)) )
))
(declare-datatypes ((Option!13978 0))(
  ( (None!13977) (Some!13977 (v!49927 tuple2!60322)) )
))
(declare-fun lt!2002872 () Option!13978)

(declare-fun lt!2002876 () Option!13978)

(assert (=> b!4887238 (= res!2087065 (or (and (is-None!13977 lt!2002872) (is-None!13977 lt!2002876)) (is-None!13977 lt!2002876) (is-None!13977 lt!2002872) (>= (size!37087 (_1!33464 (v!49927 lt!2002872))) (size!37087 (_1!33464 (v!49927 lt!2002876))))))))

(declare-fun maxPrefixZipperSequence!1308 (LexerInterface!7739 List!56448 BalanceConc!28860) Option!13978)

(assert (=> b!4887238 (= lt!2002876 (maxPrefixZipperSequence!1308 thiss!14805 (t!365094 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!673 (LexerInterface!7739 Rule!16094 BalanceConc!28860) Option!13978)

(assert (=> b!4887238 (= lt!2002872 (maxPrefixOneRuleZipperSequence!673 thiss!14805 (h!62772 rulesArg!165) input!1236))))

(declare-fun b!4887239 () Bool)

(declare-fun e!3055112 () Bool)

(declare-fun lt!2002878 () tuple2!60322)

(declare-fun lt!2002871 () tuple2!60320)

(declare-fun list!17684 (BalanceConc!28860) List!56446)

(assert (=> b!4887239 (= e!3055112 (not (= (list!17684 (_2!33464 lt!2002878)) (_2!33463 lt!2002871))))))

(declare-fun b!4887240 () Bool)

(declare-fun e!3055118 () Bool)

(declare-fun tp!1375425 () Bool)

(assert (=> b!4887240 (= e!3055114 (and e!3055118 tp!1375425))))

(declare-fun b!4887241 () Bool)

(declare-fun res!2087068 () Bool)

(assert (=> b!4887241 (=> res!2087068 e!3055110)))

(declare-fun lt!2002873 () Bool)

(assert (=> b!4887241 (= res!2087068 lt!2002873)))

(declare-fun b!4887242 () Bool)

(declare-fun e!3055113 () Bool)

(assert (=> b!4887242 (= e!3055113 e!3055112)))

(declare-fun res!2087060 () Bool)

(assert (=> b!4887242 (=> res!2087060 e!3055112)))

(assert (=> b!4887242 (= res!2087060 (not (= (_1!33464 lt!2002878) (_1!33463 lt!2002871))))))

(declare-fun lt!2002875 () Option!13977)

(declare-fun get!19423 (Option!13977) tuple2!60320)

(assert (=> b!4887242 (= lt!2002871 (get!19423 lt!2002875))))

(declare-fun get!19424 (Option!13978) tuple2!60322)

(assert (=> b!4887242 (= lt!2002878 (get!19424 lt!2002876))))

(declare-fun b!4887243 () Bool)

(declare-fun tp!1375427 () Bool)

(declare-fun inv!72518 (Conc!14715) Bool)

(assert (=> b!4887243 (= e!3055117 (and (inv!72518 (c!830802 input!1236)) tp!1375427))))

(declare-fun b!4887244 () Bool)

(declare-fun e!3055111 () Bool)

(assert (=> b!4887244 (= e!3055111 e!3055110)))

(declare-fun res!2087062 () Bool)

(assert (=> b!4887244 (=> res!2087062 e!3055110)))

(assert (=> b!4887244 (= res!2087062 e!3055113)))

(declare-fun res!2087066 () Bool)

(assert (=> b!4887244 (=> (not res!2087066) (not e!3055113))))

(assert (=> b!4887244 (= res!2087066 (not lt!2002873))))

(declare-fun lt!2002877 () Bool)

(assert (=> b!4887244 (= lt!2002873 (not lt!2002877))))

(declare-fun b!4887245 () Bool)

(assert (=> b!4887245 (= e!3055115 (not e!3055120))))

(declare-fun res!2087069 () Bool)

(assert (=> b!4887245 (=> res!2087069 e!3055120)))

(assert (=> b!4887245 (= res!2087069 (or (and (is-Cons!56324 rulesArg!165) (is-Nil!56324 (t!365094 rulesArg!165))) (not (is-Cons!56324 rulesArg!165))))))

(declare-fun isPrefix!4869 (List!56446 List!56446) Bool)

(assert (=> b!4887245 (isPrefix!4869 lt!2002874 lt!2002874)))

(declare-datatypes ((Unit!146313 0))(
  ( (Unit!146314) )
))
(declare-fun lt!2002879 () Unit!146313)

(declare-fun lemmaIsPrefixRefl!3266 (List!56446 List!56446) Unit!146313)

(assert (=> b!4887245 (= lt!2002879 (lemmaIsPrefixRefl!3266 lt!2002874 lt!2002874))))

(assert (=> b!4887245 (= lt!2002874 (list!17684 input!1236))))

(declare-fun tp!1375428 () Bool)

(declare-fun b!4887246 () Bool)

(declare-fun inv!72514 (String!63729) Bool)

(declare-fun inv!72519 (TokenValueInjection!16222) Bool)

(assert (=> b!4887246 (= e!3055118 (and tp!1375428 (inv!72514 (tag!9011 (h!62772 rulesArg!165))) (inv!72519 (transformation!8147 (h!62772 rulesArg!165))) e!3055119))))

(declare-fun b!4887247 () Bool)

(assert (=> b!4887247 (= e!3055109 e!3055111)))

(declare-fun res!2087061 () Bool)

(assert (=> b!4887247 (=> res!2087061 e!3055111)))

(assert (=> b!4887247 (= res!2087061 (not (= lt!2002877 (isDefined!10992 lt!2002875))))))

(declare-fun isDefined!10993 (Option!13978) Bool)

(assert (=> b!4887247 (= lt!2002877 (isDefined!10993 lt!2002876))))

(declare-fun maxPrefixZipper!650 (LexerInterface!7739 List!56448 List!56446) Option!13977)

(assert (=> b!4887247 (= lt!2002875 (maxPrefixZipper!650 thiss!14805 rulesArg!165 lt!2002874))))

(declare-fun b!4887248 () Bool)

(declare-fun res!2087064 () Bool)

(assert (=> b!4887248 (=> (not res!2087064) (not e!3055115))))

(declare-fun isEmpty!30189 (List!56448) Bool)

(assert (=> b!4887248 (= res!2087064 (not (isEmpty!30189 rulesArg!165)))))

(assert (= (and start!511526 res!2087063) b!4887235))

(assert (= (and b!4887235 res!2087067) b!4887248))

(assert (= (and b!4887248 res!2087064) b!4887245))

(assert (= (and b!4887245 (not res!2087069)) b!4887238))

(assert (= (and b!4887238 (not res!2087065)) b!4887247))

(assert (= (and b!4887247 (not res!2087061)) b!4887244))

(assert (= (and b!4887244 res!2087066) b!4887242))

(assert (= (and b!4887242 (not res!2087060)) b!4887239))

(assert (= (and b!4887244 (not res!2087062)) b!4887241))

(assert (= (and b!4887241 (not res!2087068)) b!4887237))

(assert (= b!4887246 b!4887236))

(assert (= b!4887240 b!4887246))

(assert (= (and start!511526 (is-Cons!56324 rulesArg!165)) b!4887240))

(assert (= start!511526 b!4887243))

(declare-fun m!5890976 () Bool)

(assert (=> b!4887242 m!5890976))

(declare-fun m!5890978 () Bool)

(assert (=> b!4887242 m!5890978))

(declare-fun m!5890980 () Bool)

(assert (=> b!4887248 m!5890980))

(declare-fun m!5890982 () Bool)

(assert (=> b!4887238 m!5890982))

(declare-fun m!5890984 () Bool)

(assert (=> b!4887238 m!5890984))

(declare-fun m!5890986 () Bool)

(assert (=> b!4887237 m!5890986))

(assert (=> b!4887237 m!5890986))

(declare-fun m!5890988 () Bool)

(assert (=> b!4887237 m!5890988))

(declare-fun m!5890990 () Bool)

(assert (=> b!4887243 m!5890990))

(declare-fun m!5890992 () Bool)

(assert (=> b!4887246 m!5890992))

(declare-fun m!5890994 () Bool)

(assert (=> b!4887246 m!5890994))

(declare-fun m!5890996 () Bool)

(assert (=> b!4887245 m!5890996))

(declare-fun m!5890998 () Bool)

(assert (=> b!4887245 m!5890998))

(declare-fun m!5891000 () Bool)

(assert (=> b!4887245 m!5891000))

(declare-fun m!5891002 () Bool)

(assert (=> b!4887247 m!5891002))

(declare-fun m!5891004 () Bool)

(assert (=> b!4887247 m!5891004))

(declare-fun m!5891006 () Bool)

(assert (=> b!4887247 m!5891006))

(declare-fun m!5891008 () Bool)

(assert (=> b!4887239 m!5891008))

(declare-fun m!5891010 () Bool)

(assert (=> start!511526 m!5891010))

(declare-fun m!5891012 () Bool)

(assert (=> b!4887235 m!5891012))

(push 1)

(assert (not b_next!132117))

(assert (not b!4887247))

(assert (not b!4887248))

(assert (not b_next!132119))

(assert (not b!4887237))

(assert (not b!4887242))

(assert (not b!4887240))

(assert (not b!4887243))

(assert (not b!4887246))

(assert (not start!511526))

(assert b_and!344159)

(assert (not b!4887245))

(assert (not b!4887235))

(assert (not b!4887239))

(assert (not b!4887238))

(assert b_and!344161)

(check-sat)

(pop 1)

(push 1)

(assert b_and!344161)

(assert b_and!344159)

(assert (not b_next!132117))

(assert (not b_next!132119))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4887299 () Bool)

(declare-fun e!3055164 () Bool)

(declare-fun e!3055165 () Bool)

(assert (=> b!4887299 (= e!3055164 e!3055165)))

(declare-fun res!2087117 () Bool)

(assert (=> b!4887299 (=> (not res!2087117) (not e!3055165))))

(assert (=> b!4887299 (= res!2087117 (not (is-Nil!56322 lt!2002874)))))

(declare-fun d!1569701 () Bool)

(declare-fun e!3055163 () Bool)

(assert (=> d!1569701 e!3055163))

(declare-fun res!2087116 () Bool)

(assert (=> d!1569701 (=> res!2087116 e!3055163)))

(declare-fun lt!2002909 () Bool)

(assert (=> d!1569701 (= res!2087116 (not lt!2002909))))

(assert (=> d!1569701 (= lt!2002909 e!3055164)))

(declare-fun res!2087115 () Bool)

(assert (=> d!1569701 (=> res!2087115 e!3055164)))

(assert (=> d!1569701 (= res!2087115 (is-Nil!56322 lt!2002874))))

(assert (=> d!1569701 (= (isPrefix!4869 lt!2002874 lt!2002874) lt!2002909)))

(declare-fun b!4887300 () Bool)

(declare-fun res!2087118 () Bool)

(assert (=> b!4887300 (=> (not res!2087118) (not e!3055165))))

(declare-fun head!10443 (List!56446) C!26642)

(assert (=> b!4887300 (= res!2087118 (= (head!10443 lt!2002874) (head!10443 lt!2002874)))))

(declare-fun b!4887302 () Bool)

(declare-fun size!37089 (List!56446) Int)

(assert (=> b!4887302 (= e!3055163 (>= (size!37089 lt!2002874) (size!37089 lt!2002874)))))

(declare-fun b!4887301 () Bool)

(declare-fun tail!9589 (List!56446) List!56446)

(assert (=> b!4887301 (= e!3055165 (isPrefix!4869 (tail!9589 lt!2002874) (tail!9589 lt!2002874)))))

(assert (= (and d!1569701 (not res!2087115)) b!4887299))

(assert (= (and b!4887299 res!2087117) b!4887300))

(assert (= (and b!4887300 res!2087118) b!4887301))

(assert (= (and d!1569701 (not res!2087116)) b!4887302))

(declare-fun m!5891052 () Bool)

(assert (=> b!4887300 m!5891052))

(assert (=> b!4887300 m!5891052))

(declare-fun m!5891054 () Bool)

(assert (=> b!4887302 m!5891054))

(assert (=> b!4887302 m!5891054))

(declare-fun m!5891056 () Bool)

(assert (=> b!4887301 m!5891056))

(assert (=> b!4887301 m!5891056))

(assert (=> b!4887301 m!5891056))

(assert (=> b!4887301 m!5891056))

(declare-fun m!5891058 () Bool)

(assert (=> b!4887301 m!5891058))

(assert (=> b!4887245 d!1569701))

(declare-fun d!1569703 () Bool)

(assert (=> d!1569703 (isPrefix!4869 lt!2002874 lt!2002874)))

(declare-fun lt!2002912 () Unit!146313)

(declare-fun choose!35681 (List!56446 List!56446) Unit!146313)

(assert (=> d!1569703 (= lt!2002912 (choose!35681 lt!2002874 lt!2002874))))

(assert (=> d!1569703 (= (lemmaIsPrefixRefl!3266 lt!2002874 lt!2002874) lt!2002912)))

(declare-fun bs!1175640 () Bool)

(assert (= bs!1175640 d!1569703))

(assert (=> bs!1175640 m!5890996))

(declare-fun m!5891060 () Bool)

(assert (=> bs!1175640 m!5891060))

(assert (=> b!4887245 d!1569703))

(declare-fun d!1569705 () Bool)

(declare-fun list!17686 (Conc!14715) List!56446)

(assert (=> d!1569705 (= (list!17684 input!1236) (list!17686 (c!830802 input!1236)))))

(declare-fun bs!1175641 () Bool)

(assert (= bs!1175641 d!1569705))

(declare-fun m!5891062 () Bool)

(assert (=> bs!1175641 m!5891062))

(assert (=> b!4887245 d!1569705))

(declare-fun d!1569707 () Bool)

(declare-fun isBalanced!4000 (Conc!14715) Bool)

(assert (=> d!1569707 (= (inv!72517 input!1236) (isBalanced!4000 (c!830802 input!1236)))))

(declare-fun bs!1175642 () Bool)

(assert (= bs!1175642 d!1569707))

(declare-fun m!5891064 () Bool)

(assert (=> bs!1175642 m!5891064))

(assert (=> start!511526 d!1569707))

(declare-fun d!1569709 () Bool)

(assert (=> d!1569709 (= (inv!72514 (tag!9011 (h!62772 rulesArg!165))) (= (mod (str.len (value!261342 (tag!9011 (h!62772 rulesArg!165)))) 2) 0))))

(assert (=> b!4887246 d!1569709))

(declare-fun d!1569711 () Bool)

(declare-fun res!2087129 () Bool)

(declare-fun e!3055168 () Bool)

(assert (=> d!1569711 (=> (not res!2087129) (not e!3055168))))

(declare-fun semiInverseModEq!3573 (Int Int) Bool)

(assert (=> d!1569711 (= res!2087129 (semiInverseModEq!3573 (toChars!10893 (transformation!8147 (h!62772 rulesArg!165))) (toValue!11034 (transformation!8147 (h!62772 rulesArg!165)))))))

(assert (=> d!1569711 (= (inv!72519 (transformation!8147 (h!62772 rulesArg!165))) e!3055168)))

(declare-fun b!4887305 () Bool)

(declare-fun equivClasses!3452 (Int Int) Bool)

(assert (=> b!4887305 (= e!3055168 (equivClasses!3452 (toChars!10893 (transformation!8147 (h!62772 rulesArg!165))) (toValue!11034 (transformation!8147 (h!62772 rulesArg!165)))))))

(assert (= (and d!1569711 res!2087129) b!4887305))

(declare-fun m!5891066 () Bool)

(assert (=> d!1569711 m!5891066))

(declare-fun m!5891068 () Bool)

(assert (=> b!4887305 m!5891068))

(assert (=> b!4887246 d!1569711))

(declare-fun d!1569713 () Bool)

(assert (=> d!1569713 true))

(declare-fun lt!2002936 () Bool)

(declare-fun lambda!243866 () Int)

(declare-fun forall!13077 (List!56448 Int) Bool)

(assert (=> d!1569713 (= lt!2002936 (forall!13077 rulesArg!165 lambda!243866))))

(declare-fun e!3055192 () Bool)

(assert (=> d!1569713 (= lt!2002936 e!3055192)))

(declare-fun res!2087152 () Bool)

(assert (=> d!1569713 (=> res!2087152 e!3055192)))

(assert (=> d!1569713 (= res!2087152 (not (is-Cons!56324 rulesArg!165)))))

(assert (=> d!1569713 (= (rulesValidInductive!3126 thiss!14805 rulesArg!165) lt!2002936)))

(declare-fun b!4887334 () Bool)

(declare-fun e!3055191 () Bool)

(assert (=> b!4887334 (= e!3055192 e!3055191)))

(declare-fun res!2087153 () Bool)

(assert (=> b!4887334 (=> (not res!2087153) (not e!3055191))))

(declare-fun ruleValid!3659 (LexerInterface!7739 Rule!16094) Bool)

(assert (=> b!4887334 (= res!2087153 (ruleValid!3659 thiss!14805 (h!62772 rulesArg!165)))))

(declare-fun b!4887335 () Bool)

(assert (=> b!4887335 (= e!3055191 (rulesValidInductive!3126 thiss!14805 (t!365094 rulesArg!165)))))

(assert (= (and d!1569713 (not res!2087152)) b!4887334))

(assert (= (and b!4887334 res!2087153) b!4887335))

(declare-fun m!5891096 () Bool)

(assert (=> d!1569713 m!5891096))

(declare-fun m!5891098 () Bool)

(assert (=> b!4887334 m!5891098))

(declare-fun m!5891100 () Bool)

(assert (=> b!4887335 m!5891100))

(assert (=> b!4887235 d!1569713))

(declare-fun d!1569721 () Bool)

(assert (=> d!1569721 (= (get!19423 lt!2002875) (v!49926 lt!2002875))))

(assert (=> b!4887242 d!1569721))

(declare-fun d!1569723 () Bool)

(assert (=> d!1569723 (= (get!19424 lt!2002876) (v!49927 lt!2002876))))

(assert (=> b!4887242 d!1569723))

(declare-fun d!1569725 () Bool)

(declare-fun c!830812 () Bool)

(assert (=> d!1569725 (= c!830812 (is-Node!14715 (c!830802 input!1236)))))

(declare-fun e!3055197 () Bool)

(assert (=> d!1569725 (= (inv!72518 (c!830802 input!1236)) e!3055197)))

(declare-fun b!4887344 () Bool)

(declare-fun inv!72523 (Conc!14715) Bool)

(assert (=> b!4887344 (= e!3055197 (inv!72523 (c!830802 input!1236)))))

(declare-fun b!4887345 () Bool)

(declare-fun e!3055198 () Bool)

(assert (=> b!4887345 (= e!3055197 e!3055198)))

(declare-fun res!2087156 () Bool)

(assert (=> b!4887345 (= res!2087156 (not (is-Leaf!24506 (c!830802 input!1236))))))

(assert (=> b!4887345 (=> res!2087156 e!3055198)))

(declare-fun b!4887346 () Bool)

(declare-fun inv!72524 (Conc!14715) Bool)

(assert (=> b!4887346 (= e!3055198 (inv!72524 (c!830802 input!1236)))))

(assert (= (and d!1569725 c!830812) b!4887344))

(assert (= (and d!1569725 (not c!830812)) b!4887345))

(assert (= (and b!4887345 (not res!2087156)) b!4887346))

(declare-fun m!5891102 () Bool)

(assert (=> b!4887344 m!5891102))

(declare-fun m!5891104 () Bool)

(assert (=> b!4887346 m!5891104))

(assert (=> b!4887243 d!1569725))

(declare-fun d!1569727 () Bool)

(assert (=> d!1569727 (= (list!17684 (_2!33464 lt!2002878)) (list!17686 (c!830802 (_2!33464 lt!2002878))))))

(declare-fun bs!1175643 () Bool)

(assert (= bs!1175643 d!1569727))

(declare-fun m!5891106 () Bool)

(assert (=> bs!1175643 m!5891106))

(assert (=> b!4887239 d!1569727))

(declare-fun d!1569729 () Bool)

(assert (=> d!1569729 (= (isEmpty!30189 rulesArg!165) (is-Nil!56324 rulesArg!165))))

(assert (=> b!4887248 d!1569729))

(declare-fun d!1569731 () Bool)

(declare-fun isEmpty!30191 (Option!13977) Bool)

(assert (=> d!1569731 (= (isDefined!10992 (maxPrefix!4588 thiss!14805 rulesArg!165 lt!2002874)) (not (isEmpty!30191 (maxPrefix!4588 thiss!14805 rulesArg!165 lt!2002874))))))

(declare-fun bs!1175644 () Bool)

(assert (= bs!1175644 d!1569731))

(assert (=> bs!1175644 m!5890986))

(declare-fun m!5891108 () Bool)

(assert (=> bs!1175644 m!5891108))

(assert (=> b!4887237 d!1569731))

(declare-fun b!4887371 () Bool)

(declare-fun res!2087173 () Bool)

(declare-fun e!3055211 () Bool)

(assert (=> b!4887371 (=> (not res!2087173) (not e!3055211))))

(declare-fun lt!2002962 () Option!13977)

(declare-fun apply!13528 (TokenValueInjection!16222 BalanceConc!28860) TokenValue!8457)

(declare-fun seqFromList!5924 (List!56446) BalanceConc!28860)

(assert (=> b!4887371 (= res!2087173 (= (value!261343 (_1!33463 (get!19423 lt!2002962))) (apply!13528 (transformation!8147 (rule!11321 (_1!33463 (get!19423 lt!2002962)))) (seqFromList!5924 (originalCharacters!8462 (_1!33463 (get!19423 lt!2002962)))))))))

(declare-fun d!1569733 () Bool)

(declare-fun e!3055210 () Bool)

(assert (=> d!1569733 e!3055210))

(declare-fun res!2087178 () Bool)

(assert (=> d!1569733 (=> res!2087178 e!3055210)))

(assert (=> d!1569733 (= res!2087178 (isEmpty!30191 lt!2002962))))

(declare-fun e!3055209 () Option!13977)

(assert (=> d!1569733 (= lt!2002962 e!3055209)))

(declare-fun c!830817 () Bool)

(assert (=> d!1569733 (= c!830817 (and (is-Cons!56324 rulesArg!165) (is-Nil!56324 (t!365094 rulesArg!165))))))

(declare-fun lt!2002961 () Unit!146313)

(declare-fun lt!2002963 () Unit!146313)

(assert (=> d!1569733 (= lt!2002961 lt!2002963)))

(assert (=> d!1569733 (isPrefix!4869 lt!2002874 lt!2002874)))

(assert (=> d!1569733 (= lt!2002963 (lemmaIsPrefixRefl!3266 lt!2002874 lt!2002874))))

(assert (=> d!1569733 (rulesValidInductive!3126 thiss!14805 rulesArg!165)))

(assert (=> d!1569733 (= (maxPrefix!4588 thiss!14805 rulesArg!165 lt!2002874) lt!2002962)))

(declare-fun b!4887372 () Bool)

(declare-fun lt!2002964 () Option!13977)

(declare-fun lt!2002965 () Option!13977)

(assert (=> b!4887372 (= e!3055209 (ite (and (is-None!13976 lt!2002964) (is-None!13976 lt!2002965)) None!13976 (ite (is-None!13976 lt!2002965) lt!2002964 (ite (is-None!13976 lt!2002964) lt!2002965 (ite (>= (size!37087 (_1!33463 (v!49926 lt!2002964))) (size!37087 (_1!33463 (v!49926 lt!2002965)))) lt!2002964 lt!2002965)))))))

(declare-fun call!339032 () Option!13977)

(assert (=> b!4887372 (= lt!2002964 call!339032)))

(assert (=> b!4887372 (= lt!2002965 (maxPrefix!4588 thiss!14805 (t!365094 rulesArg!165) lt!2002874))))

(declare-fun b!4887373 () Bool)

(declare-fun res!2087176 () Bool)

(assert (=> b!4887373 (=> (not res!2087176) (not e!3055211))))

(assert (=> b!4887373 (= res!2087176 (< (size!37089 (_2!33463 (get!19423 lt!2002962))) (size!37089 lt!2002874)))))

(declare-fun b!4887374 () Bool)

(declare-fun res!2087179 () Bool)

(assert (=> b!4887374 (=> (not res!2087179) (not e!3055211))))

(declare-fun ++!12233 (List!56446 List!56446) List!56446)

(declare-fun charsOf!5364 (Token!14862) BalanceConc!28860)

(assert (=> b!4887374 (= res!2087179 (= (++!12233 (list!17684 (charsOf!5364 (_1!33463 (get!19423 lt!2002962)))) (_2!33463 (get!19423 lt!2002962))) lt!2002874))))

(declare-fun b!4887375 () Bool)

(assert (=> b!4887375 (= e!3055209 call!339032)))

(declare-fun b!4887376 () Bool)

(declare-fun res!2087175 () Bool)

(assert (=> b!4887376 (=> (not res!2087175) (not e!3055211))))

(declare-fun matchR!6518 (Regex!13222 List!56446) Bool)

(assert (=> b!4887376 (= res!2087175 (matchR!6518 (regex!8147 (rule!11321 (_1!33463 (get!19423 lt!2002962)))) (list!17684 (charsOf!5364 (_1!33463 (get!19423 lt!2002962))))))))

(declare-fun bm!339027 () Bool)

(declare-fun maxPrefixOneRule!3517 (LexerInterface!7739 Rule!16094 List!56446) Option!13977)

(assert (=> bm!339027 (= call!339032 (maxPrefixOneRule!3517 thiss!14805 (h!62772 rulesArg!165) lt!2002874))))

(declare-fun b!4887377 () Bool)

(declare-fun contains!19427 (List!56448 Rule!16094) Bool)

(assert (=> b!4887377 (= e!3055211 (contains!19427 rulesArg!165 (rule!11321 (_1!33463 (get!19423 lt!2002962)))))))

(declare-fun b!4887378 () Bool)

(assert (=> b!4887378 (= e!3055210 e!3055211)))

(declare-fun res!2087174 () Bool)

(assert (=> b!4887378 (=> (not res!2087174) (not e!3055211))))

(assert (=> b!4887378 (= res!2087174 (isDefined!10992 lt!2002962))))

(declare-fun b!4887379 () Bool)

(declare-fun res!2087177 () Bool)

(assert (=> b!4887379 (=> (not res!2087177) (not e!3055211))))

(assert (=> b!4887379 (= res!2087177 (= (list!17684 (charsOf!5364 (_1!33463 (get!19423 lt!2002962)))) (originalCharacters!8462 (_1!33463 (get!19423 lt!2002962)))))))

(assert (= (and d!1569733 c!830817) b!4887375))

(assert (= (and d!1569733 (not c!830817)) b!4887372))

(assert (= (or b!4887375 b!4887372) bm!339027))

(assert (= (and d!1569733 (not res!2087178)) b!4887378))

(assert (= (and b!4887378 res!2087174) b!4887379))

(assert (= (and b!4887379 res!2087177) b!4887373))

(assert (= (and b!4887373 res!2087176) b!4887374))

(assert (= (and b!4887374 res!2087179) b!4887371))

(assert (= (and b!4887371 res!2087173) b!4887376))

(assert (= (and b!4887376 res!2087175) b!4887377))

(declare-fun m!5891110 () Bool)

(assert (=> d!1569733 m!5891110))

(assert (=> d!1569733 m!5890996))

(assert (=> d!1569733 m!5890998))

(assert (=> d!1569733 m!5891012))

(declare-fun m!5891112 () Bool)

(assert (=> b!4887373 m!5891112))

(declare-fun m!5891114 () Bool)

(assert (=> b!4887373 m!5891114))

(assert (=> b!4887373 m!5891054))

(assert (=> b!4887376 m!5891112))

(declare-fun m!5891116 () Bool)

(assert (=> b!4887376 m!5891116))

(assert (=> b!4887376 m!5891116))

(declare-fun m!5891118 () Bool)

(assert (=> b!4887376 m!5891118))

(assert (=> b!4887376 m!5891118))

(declare-fun m!5891120 () Bool)

(assert (=> b!4887376 m!5891120))

(assert (=> b!4887374 m!5891112))

(assert (=> b!4887374 m!5891116))

(assert (=> b!4887374 m!5891116))

(assert (=> b!4887374 m!5891118))

(assert (=> b!4887374 m!5891118))

(declare-fun m!5891122 () Bool)

(assert (=> b!4887374 m!5891122))

(assert (=> b!4887377 m!5891112))

(declare-fun m!5891124 () Bool)

(assert (=> b!4887377 m!5891124))

(assert (=> b!4887371 m!5891112))

(declare-fun m!5891126 () Bool)

(assert (=> b!4887371 m!5891126))

(assert (=> b!4887371 m!5891126))

(declare-fun m!5891128 () Bool)

(assert (=> b!4887371 m!5891128))

(declare-fun m!5891130 () Bool)

(assert (=> bm!339027 m!5891130))

(assert (=> b!4887379 m!5891112))

(assert (=> b!4887379 m!5891116))

(assert (=> b!4887379 m!5891116))

(assert (=> b!4887379 m!5891118))

(declare-fun m!5891132 () Bool)

(assert (=> b!4887378 m!5891132))

(declare-fun m!5891134 () Bool)

(assert (=> b!4887372 m!5891134))

(assert (=> b!4887237 d!1569733))

(declare-fun d!1569735 () Bool)

(assert (=> d!1569735 (= (isDefined!10992 lt!2002875) (not (isEmpty!30191 lt!2002875)))))

(declare-fun bs!1175645 () Bool)

(assert (= bs!1175645 d!1569735))

(declare-fun m!5891136 () Bool)

(assert (=> bs!1175645 m!5891136))

(assert (=> b!4887247 d!1569735))

(declare-fun d!1569737 () Bool)

(declare-fun isEmpty!30192 (Option!13978) Bool)

(assert (=> d!1569737 (= (isDefined!10993 lt!2002876) (not (isEmpty!30192 lt!2002876)))))

(declare-fun bs!1175646 () Bool)

(assert (= bs!1175646 d!1569737))

(declare-fun m!5891138 () Bool)

(assert (=> bs!1175646 m!5891138))

(assert (=> b!4887247 d!1569737))

(declare-fun d!1569739 () Bool)

(declare-fun lt!2002979 () Option!13977)

(assert (=> d!1569739 (= lt!2002979 (maxPrefix!4588 thiss!14805 rulesArg!165 lt!2002874))))

(declare-fun e!3055214 () Option!13977)

(assert (=> d!1569739 (= lt!2002979 e!3055214)))

(declare-fun c!830820 () Bool)

(assert (=> d!1569739 (= c!830820 (and (is-Cons!56324 rulesArg!165) (is-Nil!56324 (t!365094 rulesArg!165))))))

(declare-fun lt!2002977 () Unit!146313)

(declare-fun lt!2002978 () Unit!146313)

(assert (=> d!1569739 (= lt!2002977 lt!2002978)))

(assert (=> d!1569739 (isPrefix!4869 lt!2002874 lt!2002874)))

(assert (=> d!1569739 (= lt!2002978 (lemmaIsPrefixRefl!3266 lt!2002874 lt!2002874))))

(assert (=> d!1569739 (rulesValidInductive!3126 thiss!14805 rulesArg!165)))

(assert (=> d!1569739 (= (maxPrefixZipper!650 thiss!14805 rulesArg!165 lt!2002874) lt!2002979)))

(declare-fun bm!339030 () Bool)

(declare-fun call!339035 () Option!13977)

(declare-fun maxPrefixOneRuleZipper!248 (LexerInterface!7739 Rule!16094 List!56446) Option!13977)

(assert (=> bm!339030 (= call!339035 (maxPrefixOneRuleZipper!248 thiss!14805 (h!62772 rulesArg!165) lt!2002874))))

(declare-fun b!4887384 () Bool)

(assert (=> b!4887384 (= e!3055214 call!339035)))

(declare-fun b!4887385 () Bool)

(declare-fun lt!2002976 () Option!13977)

(declare-fun lt!2002980 () Option!13977)

(assert (=> b!4887385 (= e!3055214 (ite (and (is-None!13976 lt!2002976) (is-None!13976 lt!2002980)) None!13976 (ite (is-None!13976 lt!2002980) lt!2002976 (ite (is-None!13976 lt!2002976) lt!2002980 (ite (>= (size!37087 (_1!33463 (v!49926 lt!2002976))) (size!37087 (_1!33463 (v!49926 lt!2002980)))) lt!2002976 lt!2002980)))))))

(assert (=> b!4887385 (= lt!2002976 call!339035)))

(assert (=> b!4887385 (= lt!2002980 (maxPrefixZipper!650 thiss!14805 (t!365094 rulesArg!165) lt!2002874))))

(assert (= (and d!1569739 c!830820) b!4887384))

(assert (= (and d!1569739 (not c!830820)) b!4887385))

(assert (= (or b!4887384 b!4887385) bm!339030))

(assert (=> d!1569739 m!5890986))

(assert (=> d!1569739 m!5890996))

(assert (=> d!1569739 m!5890998))

(assert (=> d!1569739 m!5891012))

(declare-fun m!5891140 () Bool)

(assert (=> bm!339030 m!5891140))

(declare-fun m!5891142 () Bool)

(assert (=> b!4887385 m!5891142))

(assert (=> b!4887247 d!1569739))

(declare-fun lt!2003000 () Option!13978)

(declare-fun b!4887402 () Bool)

(declare-fun e!3055231 () Bool)

(assert (=> b!4887402 (= e!3055231 (= (list!17684 (_2!33464 (get!19424 lt!2003000))) (_2!33463 (get!19423 (maxPrefixZipper!650 thiss!14805 (t!365094 rulesArg!165) (list!17684 input!1236))))))))

(declare-fun b!4887403 () Bool)

(declare-fun e!3055232 () Option!13978)

(declare-fun lt!2002997 () Option!13978)

(declare-fun lt!2002998 () Option!13978)

(assert (=> b!4887403 (= e!3055232 (ite (and (is-None!13977 lt!2002997) (is-None!13977 lt!2002998)) None!13977 (ite (is-None!13977 lt!2002998) lt!2002997 (ite (is-None!13977 lt!2002997) lt!2002998 (ite (>= (size!37087 (_1!33464 (v!49927 lt!2002997))) (size!37087 (_1!33464 (v!49927 lt!2002998)))) lt!2002997 lt!2002998)))))))

(declare-fun call!339038 () Option!13978)

(assert (=> b!4887403 (= lt!2002997 call!339038)))

(assert (=> b!4887403 (= lt!2002998 (maxPrefixZipperSequence!1308 thiss!14805 (t!365094 (t!365094 rulesArg!165)) input!1236))))

(declare-fun b!4887404 () Bool)

(declare-fun e!3055229 () Bool)

(declare-fun e!3055227 () Bool)

(assert (=> b!4887404 (= e!3055229 e!3055227)))

(declare-fun res!2087192 () Bool)

(assert (=> b!4887404 (=> res!2087192 e!3055227)))

(assert (=> b!4887404 (= res!2087192 (not (isDefined!10993 lt!2003000)))))

(declare-fun b!4887405 () Bool)

(declare-fun res!2087196 () Bool)

(assert (=> b!4887405 (=> (not res!2087196) (not e!3055229))))

(declare-fun e!3055228 () Bool)

(assert (=> b!4887405 (= res!2087196 e!3055228)))

(declare-fun res!2087193 () Bool)

(assert (=> b!4887405 (=> res!2087193 e!3055228)))

(assert (=> b!4887405 (= res!2087193 (not (isDefined!10993 lt!2003000)))))

(declare-fun e!3055230 () Bool)

(declare-fun b!4887406 () Bool)

(assert (=> b!4887406 (= e!3055230 (= (list!17684 (_2!33464 (get!19424 lt!2003000))) (_2!33463 (get!19423 (maxPrefix!4588 thiss!14805 (t!365094 rulesArg!165) (list!17684 input!1236))))))))

(declare-fun b!4887407 () Bool)

(assert (=> b!4887407 (= e!3055228 e!3055231)))

(declare-fun res!2087194 () Bool)

(assert (=> b!4887407 (=> (not res!2087194) (not e!3055231))))

(assert (=> b!4887407 (= res!2087194 (= (_1!33464 (get!19424 lt!2003000)) (_1!33463 (get!19423 (maxPrefixZipper!650 thiss!14805 (t!365094 rulesArg!165) (list!17684 input!1236))))))))

(declare-fun d!1569741 () Bool)

(assert (=> d!1569741 e!3055229))

(declare-fun res!2087197 () Bool)

(assert (=> d!1569741 (=> (not res!2087197) (not e!3055229))))

(assert (=> d!1569741 (= res!2087197 (= (isDefined!10993 lt!2003000) (isDefined!10992 (maxPrefixZipper!650 thiss!14805 (t!365094 rulesArg!165) (list!17684 input!1236)))))))

(assert (=> d!1569741 (= lt!2003000 e!3055232)))

(declare-fun c!830823 () Bool)

(assert (=> d!1569741 (= c!830823 (and (is-Cons!56324 (t!365094 rulesArg!165)) (is-Nil!56324 (t!365094 (t!365094 rulesArg!165)))))))

(declare-fun lt!2002995 () Unit!146313)

(declare-fun lt!2003001 () Unit!146313)

(assert (=> d!1569741 (= lt!2002995 lt!2003001)))

(declare-fun lt!2002996 () List!56446)

(declare-fun lt!2002999 () List!56446)

(assert (=> d!1569741 (isPrefix!4869 lt!2002996 lt!2002999)))

(assert (=> d!1569741 (= lt!2003001 (lemmaIsPrefixRefl!3266 lt!2002996 lt!2002999))))

(assert (=> d!1569741 (= lt!2002999 (list!17684 input!1236))))

(assert (=> d!1569741 (= lt!2002996 (list!17684 input!1236))))

(assert (=> d!1569741 (rulesValidInductive!3126 thiss!14805 (t!365094 rulesArg!165))))

(assert (=> d!1569741 (= (maxPrefixZipperSequence!1308 thiss!14805 (t!365094 rulesArg!165) input!1236) lt!2003000)))

(declare-fun bm!339033 () Bool)

(assert (=> bm!339033 (= call!339038 (maxPrefixOneRuleZipperSequence!673 thiss!14805 (h!62772 (t!365094 rulesArg!165)) input!1236))))

(declare-fun b!4887408 () Bool)

(assert (=> b!4887408 (= e!3055232 call!339038)))

(declare-fun b!4887409 () Bool)

(assert (=> b!4887409 (= e!3055227 e!3055230)))

(declare-fun res!2087195 () Bool)

(assert (=> b!4887409 (=> (not res!2087195) (not e!3055230))))

(assert (=> b!4887409 (= res!2087195 (= (_1!33464 (get!19424 lt!2003000)) (_1!33463 (get!19423 (maxPrefix!4588 thiss!14805 (t!365094 rulesArg!165) (list!17684 input!1236))))))))

(assert (= (and d!1569741 c!830823) b!4887408))

(assert (= (and d!1569741 (not c!830823)) b!4887403))

(assert (= (or b!4887408 b!4887403) bm!339033))

(assert (= (and d!1569741 res!2087197) b!4887405))

(assert (= (and b!4887405 (not res!2087193)) b!4887407))

(assert (= (and b!4887407 res!2087194) b!4887402))

(assert (= (and b!4887405 res!2087196) b!4887404))

(assert (= (and b!4887404 (not res!2087192)) b!4887409))

(assert (= (and b!4887409 res!2087195) b!4887406))

(declare-fun m!5891144 () Bool)

(assert (=> b!4887403 m!5891144))

(declare-fun m!5891146 () Bool)

(assert (=> b!4887409 m!5891146))

(assert (=> b!4887409 m!5891000))

(assert (=> b!4887409 m!5891000))

(declare-fun m!5891148 () Bool)

(assert (=> b!4887409 m!5891148))

(assert (=> b!4887409 m!5891148))

(declare-fun m!5891150 () Bool)

(assert (=> b!4887409 m!5891150))

(assert (=> d!1569741 m!5891100))

(declare-fun m!5891152 () Bool)

(assert (=> d!1569741 m!5891152))

(assert (=> d!1569741 m!5891000))

(declare-fun m!5891154 () Bool)

(assert (=> d!1569741 m!5891154))

(assert (=> d!1569741 m!5891000))

(assert (=> d!1569741 m!5891154))

(declare-fun m!5891156 () Bool)

(assert (=> d!1569741 m!5891156))

(declare-fun m!5891158 () Bool)

(assert (=> d!1569741 m!5891158))

(declare-fun m!5891160 () Bool)

(assert (=> d!1569741 m!5891160))

(declare-fun m!5891162 () Bool)

(assert (=> b!4887402 m!5891162))

(assert (=> b!4887402 m!5891000))

(assert (=> b!4887402 m!5891154))

(assert (=> b!4887402 m!5891154))

(declare-fun m!5891164 () Bool)

(assert (=> b!4887402 m!5891164))

(assert (=> b!4887402 m!5891146))

(assert (=> b!4887402 m!5891000))

(assert (=> b!4887405 m!5891152))

(assert (=> b!4887406 m!5891162))

(assert (=> b!4887406 m!5891146))

(assert (=> b!4887406 m!5891000))

(assert (=> b!4887406 m!5891148))

(assert (=> b!4887406 m!5891150))

(assert (=> b!4887406 m!5891000))

(assert (=> b!4887406 m!5891148))

(assert (=> b!4887407 m!5891146))

(assert (=> b!4887407 m!5891000))

(assert (=> b!4887407 m!5891000))

(assert (=> b!4887407 m!5891154))

(assert (=> b!4887407 m!5891154))

(assert (=> b!4887407 m!5891164))

(assert (=> b!4887404 m!5891152))

(declare-fun m!5891166 () Bool)

(assert (=> bm!339033 m!5891166))

(assert (=> b!4887238 d!1569741))

(declare-fun b!4887435 () Bool)

(declare-fun e!3055253 () Bool)

(assert (=> b!4887435 (= e!3055253 true)))

(declare-fun b!4887434 () Bool)

(declare-fun e!3055252 () Bool)

(assert (=> b!4887434 (= e!3055252 e!3055253)))

(declare-fun b!4887423 () Bool)

(assert (=> b!4887423 e!3055252))

(assert (= b!4887434 b!4887435))

(assert (= b!4887423 b!4887434))

(declare-fun lambda!243871 () Int)

(declare-fun order!25413 () Int)

(declare-fun order!25411 () Int)

(declare-fun dynLambda!22582 (Int Int) Int)

(declare-fun dynLambda!22583 (Int Int) Int)

(assert (=> b!4887435 (< (dynLambda!22582 order!25411 (toValue!11034 (transformation!8147 (h!62772 rulesArg!165)))) (dynLambda!22583 order!25413 lambda!243871))))

(declare-fun order!25415 () Int)

(declare-fun dynLambda!22584 (Int Int) Int)

(assert (=> b!4887435 (< (dynLambda!22584 order!25415 (toChars!10893 (transformation!8147 (h!62772 rulesArg!165)))) (dynLambda!22583 order!25413 lambda!243871))))

(declare-fun b!4887422 () Bool)

(declare-fun e!3055246 () Bool)

(declare-fun lt!2003029 () List!56446)

(declare-datatypes ((tuple2!60328 0))(
  ( (tuple2!60329 (_1!33467 List!56446) (_2!33467 List!56446)) )
))
(declare-fun findLongestMatchInner!1745 (Regex!13222 List!56446 Int List!56446 List!56446 Int) tuple2!60328)

(assert (=> b!4887422 (= e!3055246 (matchR!6518 (regex!8147 (h!62772 rulesArg!165)) (_1!33467 (findLongestMatchInner!1745 (regex!8147 (h!62772 rulesArg!165)) Nil!56322 (size!37089 Nil!56322) lt!2003029 lt!2003029 (size!37089 lt!2003029)))))))

(declare-fun d!1569743 () Bool)

(declare-fun e!3055245 () Bool)

(assert (=> d!1569743 e!3055245))

(declare-fun res!2087208 () Bool)

(assert (=> d!1569743 (=> (not res!2087208) (not e!3055245))))

(declare-fun lt!2003030 () Option!13978)

(assert (=> d!1569743 (= res!2087208 (= (isDefined!10993 lt!2003030) (isDefined!10992 (maxPrefixOneRule!3517 thiss!14805 (h!62772 rulesArg!165) (list!17684 input!1236)))))))

(declare-fun e!3055243 () Option!13978)

(assert (=> d!1569743 (= lt!2003030 e!3055243)))

(declare-fun c!830826 () Bool)

(declare-datatypes ((tuple2!60330 0))(
  ( (tuple2!60331 (_1!33468 BalanceConc!28860) (_2!33468 BalanceConc!28860)) )
))
(declare-fun lt!2003027 () tuple2!60330)

(declare-fun isEmpty!30193 (BalanceConc!28860) Bool)

(assert (=> d!1569743 (= c!830826 (isEmpty!30193 (_1!33468 lt!2003027)))))

(declare-fun findLongestMatchWithZipperSequence!260 (Regex!13222 BalanceConc!28860) tuple2!60330)

(assert (=> d!1569743 (= lt!2003027 (findLongestMatchWithZipperSequence!260 (regex!8147 (h!62772 rulesArg!165)) input!1236))))

(assert (=> d!1569743 (ruleValid!3659 thiss!14805 (h!62772 rulesArg!165))))

(assert (=> d!1569743 (= (maxPrefixOneRuleZipperSequence!673 thiss!14805 (h!62772 rulesArg!165) input!1236) lt!2003030)))

(declare-fun size!37090 (BalanceConc!28860) Int)

(assert (=> b!4887423 (= e!3055243 (Some!13977 (tuple2!60323 (Token!14863 (apply!13528 (transformation!8147 (h!62772 rulesArg!165)) (_1!33468 lt!2003027)) (h!62772 rulesArg!165) (size!37090 (_1!33468 lt!2003027)) (list!17684 (_1!33468 lt!2003027))) (_2!33468 lt!2003027))))))

(assert (=> b!4887423 (= lt!2003029 (list!17684 input!1236))))

(declare-fun lt!2003025 () Unit!146313)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1708 (Regex!13222 List!56446) Unit!146313)

(assert (=> b!4887423 (= lt!2003025 (longestMatchIsAcceptedByMatchOrIsEmpty!1708 (regex!8147 (h!62772 rulesArg!165)) lt!2003029))))

(declare-fun res!2087206 () Bool)

(declare-fun isEmpty!30194 (List!56446) Bool)

(assert (=> b!4887423 (= res!2087206 (isEmpty!30194 (_1!33467 (findLongestMatchInner!1745 (regex!8147 (h!62772 rulesArg!165)) Nil!56322 (size!37089 Nil!56322) lt!2003029 lt!2003029 (size!37089 lt!2003029)))))))

(assert (=> b!4887423 (=> res!2087206 e!3055246)))

(assert (=> b!4887423 e!3055246))

(declare-fun lt!2003028 () Unit!146313)

(assert (=> b!4887423 (= lt!2003028 lt!2003025)))

(declare-fun lt!2003023 () Unit!146313)

(declare-fun lemmaInv!1228 (TokenValueInjection!16222) Unit!146313)

(assert (=> b!4887423 (= lt!2003023 (lemmaInv!1228 (transformation!8147 (h!62772 rulesArg!165))))))

(declare-fun lt!2003026 () Unit!146313)

(declare-fun ForallOf!1125 (Int BalanceConc!28860) Unit!146313)

(assert (=> b!4887423 (= lt!2003026 (ForallOf!1125 lambda!243871 (_1!33468 lt!2003027)))))

(declare-fun lt!2003031 () Unit!146313)

(assert (=> b!4887423 (= lt!2003031 (ForallOf!1125 lambda!243871 (seqFromList!5924 (list!17684 (_1!33468 lt!2003027)))))))

(declare-fun lt!2003022 () Option!13978)

(assert (=> b!4887423 (= lt!2003022 (Some!13977 (tuple2!60323 (Token!14863 (apply!13528 (transformation!8147 (h!62772 rulesArg!165)) (_1!33468 lt!2003027)) (h!62772 rulesArg!165) (size!37090 (_1!33468 lt!2003027)) (list!17684 (_1!33468 lt!2003027))) (_2!33468 lt!2003027))))))

(declare-fun lt!2003024 () Unit!146313)

(declare-fun lemmaEqSameImage!1082 (TokenValueInjection!16222 BalanceConc!28860 BalanceConc!28860) Unit!146313)

(assert (=> b!4887423 (= lt!2003024 (lemmaEqSameImage!1082 (transformation!8147 (h!62772 rulesArg!165)) (_1!33468 lt!2003027) (seqFromList!5924 (list!17684 (_1!33468 lt!2003027)))))))

(declare-fun b!4887424 () Bool)

(assert (=> b!4887424 (= e!3055243 None!13977)))

(declare-fun b!4887425 () Bool)

(declare-fun e!3055247 () Bool)

(assert (=> b!4887425 (= e!3055247 (= (list!17684 (_2!33464 (get!19424 lt!2003030))) (_2!33463 (get!19423 (maxPrefixOneRule!3517 thiss!14805 (h!62772 rulesArg!165) (list!17684 input!1236))))))))

(declare-fun b!4887426 () Bool)

(declare-fun e!3055244 () Bool)

(assert (=> b!4887426 (= e!3055245 e!3055244)))

(declare-fun res!2087207 () Bool)

(assert (=> b!4887426 (=> res!2087207 e!3055244)))

(assert (=> b!4887426 (= res!2087207 (not (isDefined!10993 lt!2003030)))))

(declare-fun b!4887427 () Bool)

(assert (=> b!4887427 (= e!3055244 e!3055247)))

(declare-fun res!2087209 () Bool)

(assert (=> b!4887427 (=> (not res!2087209) (not e!3055247))))

(assert (=> b!4887427 (= res!2087209 (= (_1!33464 (get!19424 lt!2003030)) (_1!33463 (get!19423 (maxPrefixOneRule!3517 thiss!14805 (h!62772 rulesArg!165) (list!17684 input!1236))))))))

(assert (= (and d!1569743 c!830826) b!4887424))

(assert (= (and d!1569743 (not c!830826)) b!4887423))

(assert (= (and b!4887423 (not res!2087206)) b!4887422))

(assert (= (and d!1569743 res!2087208) b!4887426))

(assert (= (and b!4887426 (not res!2087207)) b!4887427))

(assert (= (and b!4887427 res!2087209) b!4887425))

(declare-fun m!5891168 () Bool)

(assert (=> b!4887426 m!5891168))

(declare-fun m!5891170 () Bool)

(assert (=> b!4887427 m!5891170))

(assert (=> b!4887427 m!5891000))

(assert (=> b!4887427 m!5891000))

(declare-fun m!5891172 () Bool)

(assert (=> b!4887427 m!5891172))

(assert (=> b!4887427 m!5891172))

(declare-fun m!5891174 () Bool)

(assert (=> b!4887427 m!5891174))

(assert (=> d!1569743 m!5891000))

(assert (=> d!1569743 m!5891098))

(assert (=> d!1569743 m!5891168))

(assert (=> d!1569743 m!5891000))

(assert (=> d!1569743 m!5891172))

(declare-fun m!5891176 () Bool)

(assert (=> d!1569743 m!5891176))

(declare-fun m!5891178 () Bool)

(assert (=> d!1569743 m!5891178))

(assert (=> d!1569743 m!5891172))

(declare-fun m!5891180 () Bool)

(assert (=> d!1569743 m!5891180))

(declare-fun m!5891182 () Bool)

(assert (=> b!4887425 m!5891182))

(assert (=> b!4887425 m!5891000))

(assert (=> b!4887425 m!5891170))

(assert (=> b!4887425 m!5891000))

(assert (=> b!4887425 m!5891172))

(assert (=> b!4887425 m!5891172))

(assert (=> b!4887425 m!5891174))

(declare-fun m!5891184 () Bool)

(assert (=> b!4887422 m!5891184))

(declare-fun m!5891186 () Bool)

(assert (=> b!4887422 m!5891186))

(assert (=> b!4887422 m!5891184))

(assert (=> b!4887422 m!5891186))

(declare-fun m!5891188 () Bool)

(assert (=> b!4887422 m!5891188))

(declare-fun m!5891190 () Bool)

(assert (=> b!4887422 m!5891190))

(declare-fun m!5891192 () Bool)

(assert (=> b!4887423 m!5891192))

(declare-fun m!5891194 () Bool)

(assert (=> b!4887423 m!5891194))

(assert (=> b!4887423 m!5891000))

(declare-fun m!5891196 () Bool)

(assert (=> b!4887423 m!5891196))

(assert (=> b!4887423 m!5891186))

(declare-fun m!5891198 () Bool)

(assert (=> b!4887423 m!5891198))

(declare-fun m!5891200 () Bool)

(assert (=> b!4887423 m!5891200))

(declare-fun m!5891202 () Bool)

(assert (=> b!4887423 m!5891202))

(declare-fun m!5891204 () Bool)

(assert (=> b!4887423 m!5891204))

(assert (=> b!4887423 m!5891184))

(assert (=> b!4887423 m!5891196))

(assert (=> b!4887423 m!5891202))

(declare-fun m!5891206 () Bool)

(assert (=> b!4887423 m!5891206))

(assert (=> b!4887423 m!5891202))

(declare-fun m!5891208 () Bool)

(assert (=> b!4887423 m!5891208))

(assert (=> b!4887423 m!5891184))

(assert (=> b!4887423 m!5891186))

(assert (=> b!4887423 m!5891188))

(declare-fun m!5891210 () Bool)

(assert (=> b!4887423 m!5891210))

(assert (=> b!4887238 d!1569743))

(declare-fun b!4887446 () Bool)

(declare-fun b_free!131335 () Bool)

(declare-fun b_next!132125 () Bool)

(assert (=> b!4887446 (= b_free!131335 (not b_next!132125))))

(declare-fun tp!1375453 () Bool)

(declare-fun b_and!344167 () Bool)

(assert (=> b!4887446 (= tp!1375453 b_and!344167)))

(declare-fun b_free!131337 () Bool)

(declare-fun b_next!132127 () Bool)

(assert (=> b!4887446 (= b_free!131337 (not b_next!132127))))

(declare-fun tp!1375452 () Bool)

(declare-fun b_and!344169 () Bool)

(assert (=> b!4887446 (= tp!1375452 b_and!344169)))

(declare-fun e!3055265 () Bool)

(assert (=> b!4887446 (= e!3055265 (and tp!1375453 tp!1375452))))

(declare-fun e!3055262 () Bool)

(declare-fun tp!1375454 () Bool)

(declare-fun b!4887445 () Bool)

(assert (=> b!4887445 (= e!3055262 (and tp!1375454 (inv!72514 (tag!9011 (h!62772 (t!365094 rulesArg!165)))) (inv!72519 (transformation!8147 (h!62772 (t!365094 rulesArg!165)))) e!3055265))))

(declare-fun b!4887444 () Bool)

(declare-fun e!3055264 () Bool)

(declare-fun tp!1375455 () Bool)

(assert (=> b!4887444 (= e!3055264 (and e!3055262 tp!1375455))))

(assert (=> b!4887240 (= tp!1375425 e!3055264)))

(assert (= b!4887445 b!4887446))

(assert (= b!4887444 b!4887445))

(assert (= (and b!4887240 (is-Cons!56324 (t!365094 rulesArg!165))) b!4887444))

(declare-fun m!5891212 () Bool)

(assert (=> b!4887445 m!5891212))

(declare-fun m!5891214 () Bool)

(assert (=> b!4887445 m!5891214))

(declare-fun b!4887459 () Bool)

(declare-fun e!3055268 () Bool)

(declare-fun tp!1375470 () Bool)

(assert (=> b!4887459 (= e!3055268 tp!1375470)))

(declare-fun b!4887457 () Bool)

(declare-fun tp_is_empty!35749 () Bool)

(assert (=> b!4887457 (= e!3055268 tp_is_empty!35749)))

(declare-fun b!4887460 () Bool)

(declare-fun tp!1375468 () Bool)

(declare-fun tp!1375467 () Bool)

(assert (=> b!4887460 (= e!3055268 (and tp!1375468 tp!1375467))))

(assert (=> b!4887246 (= tp!1375428 e!3055268)))

(declare-fun b!4887458 () Bool)

(declare-fun tp!1375469 () Bool)

(declare-fun tp!1375466 () Bool)

(assert (=> b!4887458 (= e!3055268 (and tp!1375469 tp!1375466))))

(assert (= (and b!4887246 (is-ElementMatch!13222 (regex!8147 (h!62772 rulesArg!165)))) b!4887457))

(assert (= (and b!4887246 (is-Concat!21680 (regex!8147 (h!62772 rulesArg!165)))) b!4887458))

(assert (= (and b!4887246 (is-Star!13222 (regex!8147 (h!62772 rulesArg!165)))) b!4887459))

(assert (= (and b!4887246 (is-Union!13222 (regex!8147 (h!62772 rulesArg!165)))) b!4887460))

(declare-fun e!3055273 () Bool)

(declare-fun tp!1375479 () Bool)

(declare-fun b!4887469 () Bool)

(declare-fun tp!1375477 () Bool)

(assert (=> b!4887469 (= e!3055273 (and (inv!72518 (left!40907 (c!830802 input!1236))) tp!1375479 (inv!72518 (right!41237 (c!830802 input!1236))) tp!1375477))))

(declare-fun b!4887471 () Bool)

(declare-fun e!3055274 () Bool)

(declare-fun tp!1375478 () Bool)

(assert (=> b!4887471 (= e!3055274 tp!1375478)))

(declare-fun b!4887470 () Bool)

(declare-fun inv!72525 (IArray!29491) Bool)

(assert (=> b!4887470 (= e!3055273 (and (inv!72525 (xs!18031 (c!830802 input!1236))) e!3055274))))

(assert (=> b!4887243 (= tp!1375427 (and (inv!72518 (c!830802 input!1236)) e!3055273))))

(assert (= (and b!4887243 (is-Node!14715 (c!830802 input!1236))) b!4887469))

(assert (= b!4887470 b!4887471))

(assert (= (and b!4887243 (is-Leaf!24506 (c!830802 input!1236))) b!4887470))

(declare-fun m!5891216 () Bool)

(assert (=> b!4887469 m!5891216))

(declare-fun m!5891218 () Bool)

(assert (=> b!4887469 m!5891218))

(declare-fun m!5891220 () Bool)

(assert (=> b!4887470 m!5891220))

(assert (=> b!4887243 m!5890990))

(push 1)

(assert (not bm!339033))

(assert (not b!4887406))

(assert (not b!4887372))

(assert (not d!1569741))

(assert (not d!1569737))

(assert (not b!4887243))

(assert (not b!4887344))

(assert (not b!4887407))

(assert (not b!4887300))

(assert (not b!4887376))

(assert (not b_next!132117))

(assert (not d!1569735))

(assert (not d!1569733))

(assert (not b!4887444))

(assert (not b!4887426))

(assert (not b!4887469))

(assert (not bm!339027))

(assert (not b_next!132125))

(assert (not b!4887402))

(assert (not b!4887371))

(assert (not b!4887409))

(assert b_and!344167)

(assert (not b!4887335))

(assert (not b!4887458))

(assert (not d!1569713))

(assert (not b!4887459))

(assert (not b_next!132119))

(assert (not b!4887377))

(assert (not b!4887302))

(assert (not b!4887425))

(assert (not b!4887423))

(assert (not b!4887460))

(assert (not b!4887422))

(assert (not b!4887404))

(assert (not b!4887471))

(assert (not d!1569731))

(assert (not d!1569703))

(assert b_and!344169)

(assert (not d!1569743))

(assert (not bm!339030))

(assert b_and!344159)

(assert (not b!4887385))

(assert (not b!4887427))

(assert (not d!1569707))

(assert (not b!4887405))

(assert (not d!1569727))

(assert (not b!4887470))

(assert (not b!4887346))

(assert (not d!1569711))

(assert (not d!1569739))

(assert (not b!4887305))

(assert (not b!4887379))

(assert tp_is_empty!35749)

(assert (not b!4887378))

(assert (not d!1569705))

(assert (not b_next!132127))

(assert (not b!4887301))

(assert (not b!4887403))

(assert (not b!4887334))

(assert (not b!4887445))

(assert b_and!344161)

(assert (not b!4887374))

(assert (not b!4887373))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!132117))

(assert (not b_next!132125))

(assert b_and!344167)

(assert (not b_next!132119))

(assert b_and!344169)

(assert b_and!344159)

(assert (not b_next!132127))

(assert b_and!344161)

(check-sat)

(pop 1)

