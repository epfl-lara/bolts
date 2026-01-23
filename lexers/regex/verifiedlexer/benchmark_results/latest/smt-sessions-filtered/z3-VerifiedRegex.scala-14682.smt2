; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757456 () Bool)

(assert start!757456)

(declare-fun b!8044940 () Bool)

(declare-fun b_free!136267 () Bool)

(declare-fun b_next!137057 () Bool)

(assert (=> b!8044940 (= b_free!136267 (not b_next!137057))))

(declare-fun tp!2411146 () Bool)

(declare-fun b_and!354703 () Bool)

(assert (=> b!8044940 (= tp!2411146 b_and!354703)))

(declare-fun b_free!136269 () Bool)

(declare-fun b_next!137059 () Bool)

(assert (=> b!8044940 (= b_free!136269 (not b_next!137059))))

(declare-fun tp!2411145 () Bool)

(declare-fun b_and!354705 () Bool)

(assert (=> b!8044940 (= tp!2411145 b_and!354705)))

(declare-fun b!8044938 () Bool)

(declare-fun b_free!136271 () Bool)

(declare-fun b_next!137061 () Bool)

(assert (=> b!8044938 (= b_free!136271 (not b_next!137061))))

(declare-fun tp!2411151 () Bool)

(declare-fun b_and!354707 () Bool)

(assert (=> b!8044938 (= tp!2411151 b_and!354707)))

(declare-fun b_free!136273 () Bool)

(declare-fun b_next!137063 () Bool)

(assert (=> b!8044938 (= b_free!136273 (not b_next!137063))))

(declare-fun tp!2411147 () Bool)

(declare-fun b_and!354709 () Bool)

(assert (=> b!8044938 (= tp!2411147 b_and!354709)))

(declare-fun b!8044936 () Bool)

(declare-fun e!4739339 () Bool)

(declare-fun tp!2411149 () Bool)

(declare-datatypes ((C!43972 0))(
  ( (C!43973 (val!32762 Int)) )
))
(declare-datatypes ((List!75400 0))(
  ( (Nil!75274) (Cons!75274 (h!81722 C!43972) (t!391170 List!75400)) )
))
(declare-datatypes ((IArray!32089 0))(
  ( (IArray!32090 (innerList!16102 List!75400)) )
))
(declare-datatypes ((Conc!16014 0))(
  ( (Node!16014 (left!57344 Conc!16014) (right!57674 Conc!16014) (csize!32258 Int) (cheight!16225 Int)) (Leaf!30697 (xs!19412 IArray!32089) (csize!32259 Int)) (Empty!16014) )
))
(declare-datatypes ((List!75401 0))(
  ( (Nil!75275) (Cons!75275 (h!81723 (_ BitVec 16)) (t!391171 List!75401)) )
))
(declare-datatypes ((TokenValue!9066 0))(
  ( (FloatLiteralValue!18132 (text!63907 List!75401)) (TokenValueExt!9065 (__x!35413 Int)) (Broken!45330 (value!292281 List!75401)) (Object!9191) (End!9066) (Def!9066) (Underscore!9066) (Match!9066) (Else!9066) (Error!9066) (Case!9066) (If!9066) (Extends!9066) (Abstract!9066) (Class!9066) (Val!9066) (DelimiterValue!18132 (del!9126 List!75401)) (KeywordValue!9072 (value!292282 List!75401)) (CommentValue!18132 (value!292283 List!75401)) (WhitespaceValue!18132 (value!292284 List!75401)) (IndentationValue!9066 (value!292285 List!75401)) (String!85103) (Int32!9066) (Broken!45331 (value!292286 List!75401)) (Boolean!9067) (Unit!171113) (OperatorValue!9069 (op!9126 List!75401)) (IdentifierValue!18132 (value!292287 List!75401)) (IdentifierValue!18133 (value!292288 List!75401)) (WhitespaceValue!18133 (value!292289 List!75401)) (True!18132) (False!18132) (Broken!45332 (value!292290 List!75401)) (Broken!45333 (value!292291 List!75401)) (True!18133) (RightBrace!9066) (RightBracket!9066) (Colon!9066) (Null!9066) (Comma!9066) (LeftBracket!9066) (False!18133) (LeftBrace!9066) (ImaginaryLiteralValue!9066 (text!63908 List!75401)) (StringLiteralValue!27198 (value!292292 List!75401)) (EOFValue!9066 (value!292293 List!75401)) (IdentValue!9066 (value!292294 List!75401)) (DelimiterValue!18133 (value!292295 List!75401)) (DedentValue!9066 (value!292296 List!75401)) (NewLineValue!9066 (value!292297 List!75401)) (IntegerValue!27198 (value!292298 (_ BitVec 32)) (text!63909 List!75401)) (IntegerValue!27199 (value!292299 Int) (text!63910 List!75401)) (Times!9066) (Or!9066) (Equal!9066) (Minus!9066) (Broken!45334 (value!292300 List!75401)) (And!9066) (Div!9066) (LessEqual!9066) (Mod!9066) (Concat!30883) (Not!9066) (Plus!9066) (SpaceValue!9066 (value!292301 List!75401)) (IntegerValue!27200 (value!292302 Int) (text!63911 List!75401)) (StringLiteralValue!27199 (text!63912 List!75401)) (FloatLiteralValue!18133 (text!63913 List!75401)) (BytesLiteralValue!9066 (value!292303 List!75401)) (CommentValue!18133 (value!292304 List!75401)) (StringLiteralValue!27200 (value!292305 List!75401)) (ErrorTokenValue!9066 (msg!9127 List!75401)) )
))
(declare-datatypes ((BalanceConc!30984 0))(
  ( (BalanceConc!30985 (c!1475405 Conc!16014)) )
))
(declare-datatypes ((TokenValueInjection!17440 0))(
  ( (TokenValueInjection!17441 (toValue!11821 Int) (toChars!11680 Int)) )
))
(declare-datatypes ((Regex!21817 0))(
  ( (ElementMatch!21817 (c!1475406 C!43972)) (Concat!30884 (regOne!44146 Regex!21817) (regTwo!44146 Regex!21817)) (EmptyExpr!21817) (Star!21817 (reg!22146 Regex!21817)) (EmptyLang!21817) (Union!21817 (regOne!44147 Regex!21817) (regTwo!44147 Regex!21817)) )
))
(declare-datatypes ((String!85104 0))(
  ( (String!85105 (value!292306 String)) )
))
(declare-datatypes ((Rule!17292 0))(
  ( (Rule!17293 (regex!8746 Regex!21817) (tag!9610 String!85104) (isSeparator!8746 Bool) (transformation!8746 TokenValueInjection!17440)) )
))
(declare-datatypes ((List!75402 0))(
  ( (Nil!75276) (Cons!75276 (h!81724 Rule!17292) (t!391172 List!75402)) )
))
(declare-fun rules!4030 () List!75402)

(declare-fun e!4739338 () Bool)

(declare-fun inv!97032 (String!85104) Bool)

(declare-fun inv!97034 (TokenValueInjection!17440) Bool)

(assert (=> b!8044936 (= e!4739339 (and tp!2411149 (inv!97032 (tag!9610 (h!81724 rules!4030))) (inv!97034 (transformation!8746 (h!81724 rules!4030))) e!4739338))))

(declare-fun res!3180137 () Bool)

(declare-fun e!4739343 () Bool)

(assert (=> start!757456 (=> (not res!3180137) (not e!4739343))))

(declare-datatypes ((LexerInterface!8336 0))(
  ( (LexerInterfaceExt!8333 (__x!35414 Int)) (Lexer!8334) )
))
(declare-fun thiss!26855 () LexerInterface!8336)

(get-info :version)

(assert (=> start!757456 (= res!3180137 ((_ is Lexer!8334) thiss!26855))))

(assert (=> start!757456 e!4739343))

(assert (=> start!757456 true))

(declare-fun e!4739345 () Bool)

(assert (=> start!757456 e!4739345))

(declare-fun e!4739336 () Bool)

(assert (=> start!757456 e!4739336))

(declare-fun b!8044937 () Bool)

(declare-fun e!4739337 () Bool)

(declare-fun lt!2722630 () List!75402)

(declare-datatypes ((List!75403 0))(
  ( (Nil!75277) (Cons!75277 (h!81725 String!85104) (t!391173 List!75403)) )
))
(declare-fun noDuplicateTag!3324 (LexerInterface!8336 List!75402 List!75403) Bool)

(assert (=> b!8044937 (= e!4739337 (not (noDuplicateTag!3324 thiss!26855 lt!2722630 Nil!75277)))))

(declare-fun e!4739344 () Bool)

(assert (=> b!8044938 (= e!4739344 (and tp!2411151 tp!2411147))))

(declare-fun b!8044939 () Bool)

(declare-fun tp!2411148 () Bool)

(assert (=> b!8044939 (= e!4739336 (and e!4739339 tp!2411148))))

(assert (=> b!8044940 (= e!4739338 (and tp!2411146 tp!2411145))))

(declare-fun b!8044941 () Bool)

(declare-fun e!4739342 () Bool)

(assert (=> b!8044941 (= e!4739342 e!4739337)))

(declare-fun res!3180139 () Bool)

(assert (=> b!8044941 (=> res!3180139 e!4739337)))

(declare-fun rulesValidInductive!3465 (LexerInterface!8336 List!75402) Bool)

(assert (=> b!8044941 (= res!3180139 (not (rulesValidInductive!3465 thiss!26855 lt!2722630)))))

(declare-fun b!8044942 () Bool)

(assert (=> b!8044942 (= e!4739343 e!4739342)))

(declare-fun res!3180138 () Bool)

(assert (=> b!8044942 (=> (not res!3180138) (not e!4739342))))

(declare-fun rulesInvariant!6804 (LexerInterface!8336 List!75402) Bool)

(assert (=> b!8044942 (= res!3180138 (rulesInvariant!6804 thiss!26855 lt!2722630))))

(declare-fun r!4387 () Rule!17292)

(assert (=> b!8044942 (= lt!2722630 (Cons!75276 r!4387 rules!4030))))

(declare-fun b!8044943 () Bool)

(declare-fun tp!2411150 () Bool)

(assert (=> b!8044943 (= e!4739345 (and tp!2411150 (inv!97032 (tag!9610 r!4387)) (inv!97034 (transformation!8746 r!4387)) e!4739344))))

(assert (= (and start!757456 res!3180137) b!8044942))

(assert (= (and b!8044942 res!3180138) b!8044941))

(assert (= (and b!8044941 (not res!3180139)) b!8044937))

(assert (= b!8044943 b!8044938))

(assert (= start!757456 b!8044943))

(assert (= b!8044936 b!8044940))

(assert (= b!8044939 b!8044936))

(assert (= (and start!757456 ((_ is Cons!75276) rules!4030)) b!8044939))

(declare-fun m!8397700 () Bool)

(assert (=> b!8044942 m!8397700))

(declare-fun m!8397702 () Bool)

(assert (=> b!8044937 m!8397702))

(declare-fun m!8397704 () Bool)

(assert (=> b!8044943 m!8397704))

(declare-fun m!8397706 () Bool)

(assert (=> b!8044943 m!8397706))

(declare-fun m!8397708 () Bool)

(assert (=> b!8044941 m!8397708))

(declare-fun m!8397710 () Bool)

(assert (=> b!8044936 m!8397710))

(declare-fun m!8397712 () Bool)

(assert (=> b!8044936 m!8397712))

(check-sat (not b!8044939) (not b_next!137061) (not b_next!137057) (not b!8044936) (not b!8044941) b_and!354707 (not b!8044937) b_and!354703 b_and!354709 (not b_next!137063) (not b!8044942) (not b_next!137059) (not b!8044943) b_and!354705)
(check-sat (not b_next!137059) (not b_next!137061) (not b_next!137057) b_and!354707 b_and!354703 b_and!354709 b_and!354705 (not b_next!137063))
(get-model)

(declare-fun d!2396249 () Bool)

(declare-fun res!3180146 () Bool)

(declare-fun e!4739348 () Bool)

(assert (=> d!2396249 (=> (not res!3180146) (not e!4739348))))

(declare-fun rulesValid!3155 (LexerInterface!8336 List!75402) Bool)

(assert (=> d!2396249 (= res!3180146 (rulesValid!3155 thiss!26855 lt!2722630))))

(assert (=> d!2396249 (= (rulesInvariant!6804 thiss!26855 lt!2722630) e!4739348)))

(declare-fun b!8044946 () Bool)

(assert (=> b!8044946 (= e!4739348 (noDuplicateTag!3324 thiss!26855 lt!2722630 Nil!75277))))

(assert (= (and d!2396249 res!3180146) b!8044946))

(declare-fun m!8397714 () Bool)

(assert (=> d!2396249 m!8397714))

(assert (=> b!8044946 m!8397702))

(assert (=> b!8044942 d!2396249))

(declare-fun d!2396253 () Bool)

(declare-fun res!3180155 () Bool)

(declare-fun e!4739357 () Bool)

(assert (=> d!2396253 (=> res!3180155 e!4739357)))

(assert (=> d!2396253 (= res!3180155 ((_ is Nil!75276) lt!2722630))))

(assert (=> d!2396253 (= (noDuplicateTag!3324 thiss!26855 lt!2722630 Nil!75277) e!4739357)))

(declare-fun b!8044955 () Bool)

(declare-fun e!4739358 () Bool)

(assert (=> b!8044955 (= e!4739357 e!4739358)))

(declare-fun res!3180156 () Bool)

(assert (=> b!8044955 (=> (not res!3180156) (not e!4739358))))

(declare-fun contains!21056 (List!75403 String!85104) Bool)

(assert (=> b!8044955 (= res!3180156 (not (contains!21056 Nil!75277 (tag!9610 (h!81724 lt!2722630)))))))

(declare-fun b!8044956 () Bool)

(assert (=> b!8044956 (= e!4739358 (noDuplicateTag!3324 thiss!26855 (t!391172 lt!2722630) (Cons!75277 (tag!9610 (h!81724 lt!2722630)) Nil!75277)))))

(assert (= (and d!2396253 (not res!3180155)) b!8044955))

(assert (= (and b!8044955 res!3180156) b!8044956))

(declare-fun m!8397716 () Bool)

(assert (=> b!8044955 m!8397716))

(declare-fun m!8397718 () Bool)

(assert (=> b!8044956 m!8397718))

(assert (=> b!8044937 d!2396253))

(declare-fun d!2396255 () Bool)

(assert (=> d!2396255 (= (inv!97032 (tag!9610 (h!81724 rules!4030))) (= (mod (str.len (value!292306 (tag!9610 (h!81724 rules!4030)))) 2) 0))))

(assert (=> b!8044936 d!2396255))

(declare-fun d!2396257 () Bool)

(declare-fun res!3180159 () Bool)

(declare-fun e!4739361 () Bool)

(assert (=> d!2396257 (=> (not res!3180159) (not e!4739361))))

(declare-fun semiInverseModEq!3881 (Int Int) Bool)

(assert (=> d!2396257 (= res!3180159 (semiInverseModEq!3881 (toChars!11680 (transformation!8746 (h!81724 rules!4030))) (toValue!11821 (transformation!8746 (h!81724 rules!4030)))))))

(assert (=> d!2396257 (= (inv!97034 (transformation!8746 (h!81724 rules!4030))) e!4739361)))

(declare-fun b!8044959 () Bool)

(declare-fun equivClasses!3696 (Int Int) Bool)

(assert (=> b!8044959 (= e!4739361 (equivClasses!3696 (toChars!11680 (transformation!8746 (h!81724 rules!4030))) (toValue!11821 (transformation!8746 (h!81724 rules!4030)))))))

(assert (= (and d!2396257 res!3180159) b!8044959))

(declare-fun m!8397720 () Bool)

(assert (=> d!2396257 m!8397720))

(declare-fun m!8397722 () Bool)

(assert (=> b!8044959 m!8397722))

(assert (=> b!8044936 d!2396257))

(declare-fun d!2396259 () Bool)

(assert (=> d!2396259 true))

(declare-fun lt!2722636 () Bool)

(declare-fun lambda!472691 () Int)

(declare-fun forall!18467 (List!75402 Int) Bool)

(assert (=> d!2396259 (= lt!2722636 (forall!18467 lt!2722630 lambda!472691))))

(declare-fun e!4739398 () Bool)

(assert (=> d!2396259 (= lt!2722636 e!4739398)))

(declare-fun res!3180180 () Bool)

(assert (=> d!2396259 (=> res!3180180 e!4739398)))

(assert (=> d!2396259 (= res!3180180 (not ((_ is Cons!75276) lt!2722630)))))

(assert (=> d!2396259 (= (rulesValidInductive!3465 thiss!26855 lt!2722630) lt!2722636)))

(declare-fun b!8045010 () Bool)

(declare-fun e!4739397 () Bool)

(assert (=> b!8045010 (= e!4739398 e!4739397)))

(declare-fun res!3180179 () Bool)

(assert (=> b!8045010 (=> (not res!3180179) (not e!4739397))))

(declare-fun ruleValid!3991 (LexerInterface!8336 Rule!17292) Bool)

(assert (=> b!8045010 (= res!3180179 (ruleValid!3991 thiss!26855 (h!81724 lt!2722630)))))

(declare-fun b!8045011 () Bool)

(assert (=> b!8045011 (= e!4739397 (rulesValidInductive!3465 thiss!26855 (t!391172 lt!2722630)))))

(assert (= (and d!2396259 (not res!3180180)) b!8045010))

(assert (= (and b!8045010 res!3180179) b!8045011))

(declare-fun m!8397748 () Bool)

(assert (=> d!2396259 m!8397748))

(declare-fun m!8397750 () Bool)

(assert (=> b!8045010 m!8397750))

(declare-fun m!8397752 () Bool)

(assert (=> b!8045011 m!8397752))

(assert (=> b!8044941 d!2396259))

(declare-fun d!2396273 () Bool)

(assert (=> d!2396273 (= (inv!97032 (tag!9610 r!4387)) (= (mod (str.len (value!292306 (tag!9610 r!4387))) 2) 0))))

(assert (=> b!8044943 d!2396273))

(declare-fun d!2396275 () Bool)

(declare-fun res!3180181 () Bool)

(declare-fun e!4739399 () Bool)

(assert (=> d!2396275 (=> (not res!3180181) (not e!4739399))))

(assert (=> d!2396275 (= res!3180181 (semiInverseModEq!3881 (toChars!11680 (transformation!8746 r!4387)) (toValue!11821 (transformation!8746 r!4387))))))

(assert (=> d!2396275 (= (inv!97034 (transformation!8746 r!4387)) e!4739399)))

(declare-fun b!8045014 () Bool)

(assert (=> b!8045014 (= e!4739399 (equivClasses!3696 (toChars!11680 (transformation!8746 r!4387)) (toValue!11821 (transformation!8746 r!4387))))))

(assert (= (and d!2396275 res!3180181) b!8045014))

(declare-fun m!8397754 () Bool)

(assert (=> d!2396275 m!8397754))

(declare-fun m!8397756 () Bool)

(assert (=> b!8045014 m!8397756))

(assert (=> b!8044943 d!2396275))

(declare-fun b!8045028 () Bool)

(declare-fun e!4739402 () Bool)

(declare-fun tp!2411196 () Bool)

(declare-fun tp!2411195 () Bool)

(assert (=> b!8045028 (= e!4739402 (and tp!2411196 tp!2411195))))

(declare-fun b!8045026 () Bool)

(declare-fun tp!2411194 () Bool)

(declare-fun tp!2411197 () Bool)

(assert (=> b!8045026 (= e!4739402 (and tp!2411194 tp!2411197))))

(assert (=> b!8044936 (= tp!2411149 e!4739402)))

(declare-fun b!8045025 () Bool)

(declare-fun tp_is_empty!54609 () Bool)

(assert (=> b!8045025 (= e!4739402 tp_is_empty!54609)))

(declare-fun b!8045027 () Bool)

(declare-fun tp!2411198 () Bool)

(assert (=> b!8045027 (= e!4739402 tp!2411198)))

(assert (= (and b!8044936 ((_ is ElementMatch!21817) (regex!8746 (h!81724 rules!4030)))) b!8045025))

(assert (= (and b!8044936 ((_ is Concat!30884) (regex!8746 (h!81724 rules!4030)))) b!8045026))

(assert (= (and b!8044936 ((_ is Star!21817) (regex!8746 (h!81724 rules!4030)))) b!8045027))

(assert (= (and b!8044936 ((_ is Union!21817) (regex!8746 (h!81724 rules!4030)))) b!8045028))

(declare-fun b!8045039 () Bool)

(declare-fun b_free!136279 () Bool)

(declare-fun b_next!137069 () Bool)

(assert (=> b!8045039 (= b_free!136279 (not b_next!137069))))

(declare-fun tp!2411209 () Bool)

(declare-fun b_and!354715 () Bool)

(assert (=> b!8045039 (= tp!2411209 b_and!354715)))

(declare-fun b_free!136281 () Bool)

(declare-fun b_next!137071 () Bool)

(assert (=> b!8045039 (= b_free!136281 (not b_next!137071))))

(declare-fun tp!2411207 () Bool)

(declare-fun b_and!354717 () Bool)

(assert (=> b!8045039 (= tp!2411207 b_and!354717)))

(declare-fun e!4739413 () Bool)

(assert (=> b!8045039 (= e!4739413 (and tp!2411209 tp!2411207))))

(declare-fun e!4739412 () Bool)

(declare-fun b!8045038 () Bool)

(declare-fun tp!2411210 () Bool)

(assert (=> b!8045038 (= e!4739412 (and tp!2411210 (inv!97032 (tag!9610 (h!81724 (t!391172 rules!4030)))) (inv!97034 (transformation!8746 (h!81724 (t!391172 rules!4030)))) e!4739413))))

(declare-fun b!8045037 () Bool)

(declare-fun e!4739411 () Bool)

(declare-fun tp!2411208 () Bool)

(assert (=> b!8045037 (= e!4739411 (and e!4739412 tp!2411208))))

(assert (=> b!8044939 (= tp!2411148 e!4739411)))

(assert (= b!8045038 b!8045039))

(assert (= b!8045037 b!8045038))

(assert (= (and b!8044939 ((_ is Cons!75276) (t!391172 rules!4030))) b!8045037))

(declare-fun m!8397758 () Bool)

(assert (=> b!8045038 m!8397758))

(declare-fun m!8397760 () Bool)

(assert (=> b!8045038 m!8397760))

(declare-fun b!8045043 () Bool)

(declare-fun e!4739415 () Bool)

(declare-fun tp!2411213 () Bool)

(declare-fun tp!2411212 () Bool)

(assert (=> b!8045043 (= e!4739415 (and tp!2411213 tp!2411212))))

(declare-fun b!8045041 () Bool)

(declare-fun tp!2411211 () Bool)

(declare-fun tp!2411214 () Bool)

(assert (=> b!8045041 (= e!4739415 (and tp!2411211 tp!2411214))))

(assert (=> b!8044943 (= tp!2411150 e!4739415)))

(declare-fun b!8045040 () Bool)

(assert (=> b!8045040 (= e!4739415 tp_is_empty!54609)))

(declare-fun b!8045042 () Bool)

(declare-fun tp!2411215 () Bool)

(assert (=> b!8045042 (= e!4739415 tp!2411215)))

(assert (= (and b!8044943 ((_ is ElementMatch!21817) (regex!8746 r!4387))) b!8045040))

(assert (= (and b!8044943 ((_ is Concat!30884) (regex!8746 r!4387))) b!8045041))

(assert (= (and b!8044943 ((_ is Star!21817) (regex!8746 r!4387))) b!8045042))

(assert (= (and b!8044943 ((_ is Union!21817) (regex!8746 r!4387))) b!8045043))

(check-sat (not b!8044956) (not b!8044955) (not b_next!137071) (not b!8045042) (not b_next!137057) (not b!8045014) (not b_next!137069) b_and!354703 (not b!8045041) b_and!354705 (not b_next!137063) tp_is_empty!54609 (not b!8045010) (not b_next!137059) (not b!8044946) (not d!2396259) (not d!2396249) (not b!8045027) (not d!2396275) (not b!8044959) (not b!8045026) (not b!8045028) (not b_next!137061) (not b!8045011) (not d!2396257) b_and!354715 (not b!8045037) b_and!354707 (not b!8045043) b_and!354709 b_and!354717 (not b!8045038))
(check-sat (not b_next!137059) (not b_next!137061) (not b_next!137071) (not b_next!137057) b_and!354715 b_and!354707 (not b_next!137069) b_and!354703 b_and!354709 b_and!354705 b_and!354717 (not b_next!137063))
(get-model)

(declare-fun d!2396285 () Bool)

(assert (=> d!2396285 true))

(declare-fun order!30039 () Int)

(declare-fun order!30037 () Int)

(declare-fun lambda!472700 () Int)

(declare-fun dynLambda!30248 (Int Int) Int)

(declare-fun dynLambda!30249 (Int Int) Int)

(assert (=> d!2396285 (< (dynLambda!30248 order!30037 (toChars!11680 (transformation!8746 r!4387))) (dynLambda!30249 order!30039 lambda!472700))))

(assert (=> d!2396285 true))

(declare-fun order!30041 () Int)

(declare-fun dynLambda!30250 (Int Int) Int)

(assert (=> d!2396285 (< (dynLambda!30250 order!30041 (toValue!11821 (transformation!8746 r!4387))) (dynLambda!30249 order!30039 lambda!472700))))

(declare-fun Forall!1857 (Int) Bool)

(assert (=> d!2396285 (= (semiInverseModEq!3881 (toChars!11680 (transformation!8746 r!4387)) (toValue!11821 (transformation!8746 r!4387))) (Forall!1857 lambda!472700))))

(declare-fun bs!1971656 () Bool)

(assert (= bs!1971656 d!2396285))

(declare-fun m!8397784 () Bool)

(assert (=> bs!1971656 m!8397784))

(assert (=> d!2396275 d!2396285))

(declare-fun bs!1971657 () Bool)

(declare-fun d!2396293 () Bool)

(assert (= bs!1971657 (and d!2396293 d!2396259)))

(declare-fun lambda!472701 () Int)

(assert (=> bs!1971657 (= lambda!472701 lambda!472691)))

(assert (=> d!2396293 true))

(declare-fun lt!2722643 () Bool)

(assert (=> d!2396293 (= lt!2722643 (forall!18467 (t!391172 lt!2722630) lambda!472701))))

(declare-fun e!4739434 () Bool)

(assert (=> d!2396293 (= lt!2722643 e!4739434)))

(declare-fun res!3180207 () Bool)

(assert (=> d!2396293 (=> res!3180207 e!4739434)))

(assert (=> d!2396293 (= res!3180207 (not ((_ is Cons!75276) (t!391172 lt!2722630))))))

(assert (=> d!2396293 (= (rulesValidInductive!3465 thiss!26855 (t!391172 lt!2722630)) lt!2722643)))

(declare-fun b!8045072 () Bool)

(declare-fun e!4739433 () Bool)

(assert (=> b!8045072 (= e!4739434 e!4739433)))

(declare-fun res!3180206 () Bool)

(assert (=> b!8045072 (=> (not res!3180206) (not e!4739433))))

(assert (=> b!8045072 (= res!3180206 (ruleValid!3991 thiss!26855 (h!81724 (t!391172 lt!2722630))))))

(declare-fun b!8045073 () Bool)

(assert (=> b!8045073 (= e!4739433 (rulesValidInductive!3465 thiss!26855 (t!391172 (t!391172 lt!2722630))))))

(assert (= (and d!2396293 (not res!3180207)) b!8045072))

(assert (= (and b!8045072 res!3180206) b!8045073))

(declare-fun m!8397786 () Bool)

(assert (=> d!2396293 m!8397786))

(declare-fun m!8397788 () Bool)

(assert (=> b!8045072 m!8397788))

(declare-fun m!8397790 () Bool)

(assert (=> b!8045073 m!8397790))

(assert (=> b!8045011 d!2396293))

(declare-fun d!2396295 () Bool)

(declare-fun res!3180217 () Bool)

(declare-fun e!4739457 () Bool)

(assert (=> d!2396295 (=> (not res!3180217) (not e!4739457))))

(declare-fun validRegex!12051 (Regex!21817) Bool)

(assert (=> d!2396295 (= res!3180217 (validRegex!12051 (regex!8746 (h!81724 lt!2722630))))))

(assert (=> d!2396295 (= (ruleValid!3991 thiss!26855 (h!81724 lt!2722630)) e!4739457)))

(declare-fun b!8045132 () Bool)

(declare-fun res!3180218 () Bool)

(assert (=> b!8045132 (=> (not res!3180218) (not e!4739457))))

(declare-fun nullable!9780 (Regex!21817) Bool)

(assert (=> b!8045132 (= res!3180218 (not (nullable!9780 (regex!8746 (h!81724 lt!2722630)))))))

(declare-fun b!8045133 () Bool)

(assert (=> b!8045133 (= e!4739457 (not (= (tag!9610 (h!81724 lt!2722630)) (String!85105 ""))))))

(assert (= (and d!2396295 res!3180217) b!8045132))

(assert (= (and b!8045132 res!3180218) b!8045133))

(declare-fun m!8397812 () Bool)

(assert (=> d!2396295 m!8397812))

(declare-fun m!8397814 () Bool)

(assert (=> b!8045132 m!8397814))

(assert (=> b!8045010 d!2396295))

(declare-fun d!2396309 () Bool)

(assert (=> d!2396309 true))

(declare-fun order!30045 () Int)

(declare-fun lambda!472710 () Int)

(declare-fun dynLambda!30251 (Int Int) Int)

(assert (=> d!2396309 (< (dynLambda!30250 order!30041 (toValue!11821 (transformation!8746 r!4387))) (dynLambda!30251 order!30045 lambda!472710))))

(declare-fun Forall2!1326 (Int) Bool)

(assert (=> d!2396309 (= (equivClasses!3696 (toChars!11680 (transformation!8746 r!4387)) (toValue!11821 (transformation!8746 r!4387))) (Forall2!1326 lambda!472710))))

(declare-fun bs!1971666 () Bool)

(assert (= bs!1971666 d!2396309))

(declare-fun m!8397816 () Bool)

(assert (=> bs!1971666 m!8397816))

(assert (=> b!8045014 d!2396309))

(declare-fun d!2396311 () Bool)

(declare-fun res!3180225 () Bool)

(declare-fun e!4739464 () Bool)

(assert (=> d!2396311 (=> res!3180225 e!4739464)))

(assert (=> d!2396311 (= res!3180225 ((_ is Nil!75276) lt!2722630))))

(assert (=> d!2396311 (= (forall!18467 lt!2722630 lambda!472691) e!4739464)))

(declare-fun b!8045142 () Bool)

(declare-fun e!4739465 () Bool)

(assert (=> b!8045142 (= e!4739464 e!4739465)))

(declare-fun res!3180226 () Bool)

(assert (=> b!8045142 (=> (not res!3180226) (not e!4739465))))

(declare-fun dynLambda!30252 (Int Rule!17292) Bool)

(assert (=> b!8045142 (= res!3180226 (dynLambda!30252 lambda!472691 (h!81724 lt!2722630)))))

(declare-fun b!8045143 () Bool)

(assert (=> b!8045143 (= e!4739465 (forall!18467 (t!391172 lt!2722630) lambda!472691))))

(assert (= (and d!2396311 (not res!3180225)) b!8045142))

(assert (= (and b!8045142 res!3180226) b!8045143))

(declare-fun b_lambda!290315 () Bool)

(assert (=> (not b_lambda!290315) (not b!8045142)))

(declare-fun m!8397818 () Bool)

(assert (=> b!8045142 m!8397818))

(declare-fun m!8397820 () Bool)

(assert (=> b!8045143 m!8397820))

(assert (=> d!2396259 d!2396311))

(declare-fun bs!1971667 () Bool)

(declare-fun d!2396313 () Bool)

(assert (= bs!1971667 (and d!2396313 d!2396285)))

(declare-fun lambda!472711 () Int)

(assert (=> bs!1971667 (= (and (= (toChars!11680 (transformation!8746 (h!81724 rules!4030))) (toChars!11680 (transformation!8746 r!4387))) (= (toValue!11821 (transformation!8746 (h!81724 rules!4030))) (toValue!11821 (transformation!8746 r!4387)))) (= lambda!472711 lambda!472700))))

(assert (=> d!2396313 true))

(assert (=> d!2396313 (< (dynLambda!30248 order!30037 (toChars!11680 (transformation!8746 (h!81724 rules!4030)))) (dynLambda!30249 order!30039 lambda!472711))))

(assert (=> d!2396313 true))

(assert (=> d!2396313 (< (dynLambda!30250 order!30041 (toValue!11821 (transformation!8746 (h!81724 rules!4030)))) (dynLambda!30249 order!30039 lambda!472711))))

(assert (=> d!2396313 (= (semiInverseModEq!3881 (toChars!11680 (transformation!8746 (h!81724 rules!4030))) (toValue!11821 (transformation!8746 (h!81724 rules!4030)))) (Forall!1857 lambda!472711))))

(declare-fun bs!1971668 () Bool)

(assert (= bs!1971668 d!2396313))

(declare-fun m!8397822 () Bool)

(assert (=> bs!1971668 m!8397822))

(assert (=> d!2396257 d!2396313))

(declare-fun d!2396315 () Bool)

(declare-fun res!3180227 () Bool)

(declare-fun e!4739466 () Bool)

(assert (=> d!2396315 (=> res!3180227 e!4739466)))

(assert (=> d!2396315 (= res!3180227 ((_ is Nil!75276) (t!391172 lt!2722630)))))

(assert (=> d!2396315 (= (noDuplicateTag!3324 thiss!26855 (t!391172 lt!2722630) (Cons!75277 (tag!9610 (h!81724 lt!2722630)) Nil!75277)) e!4739466)))

(declare-fun b!8045144 () Bool)

(declare-fun e!4739467 () Bool)

(assert (=> b!8045144 (= e!4739466 e!4739467)))

(declare-fun res!3180228 () Bool)

(assert (=> b!8045144 (=> (not res!3180228) (not e!4739467))))

(assert (=> b!8045144 (= res!3180228 (not (contains!21056 (Cons!75277 (tag!9610 (h!81724 lt!2722630)) Nil!75277) (tag!9610 (h!81724 (t!391172 lt!2722630))))))))

(declare-fun b!8045145 () Bool)

(assert (=> b!8045145 (= e!4739467 (noDuplicateTag!3324 thiss!26855 (t!391172 (t!391172 lt!2722630)) (Cons!75277 (tag!9610 (h!81724 (t!391172 lt!2722630))) (Cons!75277 (tag!9610 (h!81724 lt!2722630)) Nil!75277))))))

(assert (= (and d!2396315 (not res!3180227)) b!8045144))

(assert (= (and b!8045144 res!3180228) b!8045145))

(declare-fun m!8397824 () Bool)

(assert (=> b!8045144 m!8397824))

(declare-fun m!8397826 () Bool)

(assert (=> b!8045145 m!8397826))

(assert (=> b!8044956 d!2396315))

(declare-fun d!2396317 () Bool)

(declare-fun lt!2722647 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16070 (List!75403) (InoxSet String!85104))

(assert (=> d!2396317 (= lt!2722647 (select (content!16070 Nil!75277) (tag!9610 (h!81724 lt!2722630))))))

(declare-fun e!4739472 () Bool)

(assert (=> d!2396317 (= lt!2722647 e!4739472)))

(declare-fun res!3180234 () Bool)

(assert (=> d!2396317 (=> (not res!3180234) (not e!4739472))))

(assert (=> d!2396317 (= res!3180234 ((_ is Cons!75277) Nil!75277))))

(assert (=> d!2396317 (= (contains!21056 Nil!75277 (tag!9610 (h!81724 lt!2722630))) lt!2722647)))

(declare-fun b!8045150 () Bool)

(declare-fun e!4739473 () Bool)

(assert (=> b!8045150 (= e!4739472 e!4739473)))

(declare-fun res!3180233 () Bool)

(assert (=> b!8045150 (=> res!3180233 e!4739473)))

(assert (=> b!8045150 (= res!3180233 (= (h!81725 Nil!75277) (tag!9610 (h!81724 lt!2722630))))))

(declare-fun b!8045151 () Bool)

(assert (=> b!8045151 (= e!4739473 (contains!21056 (t!391173 Nil!75277) (tag!9610 (h!81724 lt!2722630))))))

(assert (= (and d!2396317 res!3180234) b!8045150))

(assert (= (and b!8045150 (not res!3180233)) b!8045151))

(declare-fun m!8397828 () Bool)

(assert (=> d!2396317 m!8397828))

(declare-fun m!8397830 () Bool)

(assert (=> d!2396317 m!8397830))

(declare-fun m!8397832 () Bool)

(assert (=> b!8045151 m!8397832))

(assert (=> b!8044955 d!2396317))

(declare-fun d!2396319 () Bool)

(assert (=> d!2396319 (= (inv!97032 (tag!9610 (h!81724 (t!391172 rules!4030)))) (= (mod (str.len (value!292306 (tag!9610 (h!81724 (t!391172 rules!4030))))) 2) 0))))

(assert (=> b!8045038 d!2396319))

(declare-fun d!2396321 () Bool)

(declare-fun res!3180235 () Bool)

(declare-fun e!4739474 () Bool)

(assert (=> d!2396321 (=> (not res!3180235) (not e!4739474))))

(assert (=> d!2396321 (= res!3180235 (semiInverseModEq!3881 (toChars!11680 (transformation!8746 (h!81724 (t!391172 rules!4030)))) (toValue!11821 (transformation!8746 (h!81724 (t!391172 rules!4030))))))))

(assert (=> d!2396321 (= (inv!97034 (transformation!8746 (h!81724 (t!391172 rules!4030)))) e!4739474)))

(declare-fun b!8045152 () Bool)

(assert (=> b!8045152 (= e!4739474 (equivClasses!3696 (toChars!11680 (transformation!8746 (h!81724 (t!391172 rules!4030)))) (toValue!11821 (transformation!8746 (h!81724 (t!391172 rules!4030))))))))

(assert (= (and d!2396321 res!3180235) b!8045152))

(declare-fun m!8397834 () Bool)

(assert (=> d!2396321 m!8397834))

(declare-fun m!8397836 () Bool)

(assert (=> b!8045152 m!8397836))

(assert (=> b!8045038 d!2396321))

(declare-fun bs!1971669 () Bool)

(declare-fun d!2396323 () Bool)

(assert (= bs!1971669 (and d!2396323 d!2396309)))

(declare-fun lambda!472712 () Int)

(assert (=> bs!1971669 (= (= (toValue!11821 (transformation!8746 (h!81724 rules!4030))) (toValue!11821 (transformation!8746 r!4387))) (= lambda!472712 lambda!472710))))

(assert (=> d!2396323 true))

(assert (=> d!2396323 (< (dynLambda!30250 order!30041 (toValue!11821 (transformation!8746 (h!81724 rules!4030)))) (dynLambda!30251 order!30045 lambda!472712))))

(assert (=> d!2396323 (= (equivClasses!3696 (toChars!11680 (transformation!8746 (h!81724 rules!4030))) (toValue!11821 (transformation!8746 (h!81724 rules!4030)))) (Forall2!1326 lambda!472712))))

(declare-fun bs!1971670 () Bool)

(assert (= bs!1971670 d!2396323))

(declare-fun m!8397838 () Bool)

(assert (=> bs!1971670 m!8397838))

(assert (=> b!8044959 d!2396323))

(assert (=> b!8044946 d!2396253))

(declare-fun bs!1971671 () Bool)

(declare-fun d!2396325 () Bool)

(assert (= bs!1971671 (and d!2396325 d!2396259)))

(declare-fun lambda!472715 () Int)

(assert (=> bs!1971671 (= lambda!472715 lambda!472691)))

(declare-fun bs!1971672 () Bool)

(assert (= bs!1971672 (and d!2396325 d!2396293)))

(assert (=> bs!1971672 (= lambda!472715 lambda!472701)))

(assert (=> d!2396325 true))

(declare-fun lt!2722650 () Bool)

(assert (=> d!2396325 (= lt!2722650 (rulesValidInductive!3465 thiss!26855 lt!2722630))))

(assert (=> d!2396325 (= lt!2722650 (forall!18467 lt!2722630 lambda!472715))))

(assert (=> d!2396325 (= (rulesValid!3155 thiss!26855 lt!2722630) lt!2722650)))

(declare-fun bs!1971673 () Bool)

(assert (= bs!1971673 d!2396325))

(assert (=> bs!1971673 m!8397708))

(declare-fun m!8397840 () Bool)

(assert (=> bs!1971673 m!8397840))

(assert (=> d!2396249 d!2396325))

(declare-fun b!8045156 () Bool)

(declare-fun e!4739475 () Bool)

(declare-fun tp!2411277 () Bool)

(declare-fun tp!2411276 () Bool)

(assert (=> b!8045156 (= e!4739475 (and tp!2411277 tp!2411276))))

(declare-fun b!8045154 () Bool)

(declare-fun tp!2411275 () Bool)

(declare-fun tp!2411278 () Bool)

(assert (=> b!8045154 (= e!4739475 (and tp!2411275 tp!2411278))))

(assert (=> b!8045026 (= tp!2411194 e!4739475)))

(declare-fun b!8045153 () Bool)

(assert (=> b!8045153 (= e!4739475 tp_is_empty!54609)))

(declare-fun b!8045155 () Bool)

(declare-fun tp!2411279 () Bool)

(assert (=> b!8045155 (= e!4739475 tp!2411279)))

(assert (= (and b!8045026 ((_ is ElementMatch!21817) (regOne!44146 (regex!8746 (h!81724 rules!4030))))) b!8045153))

(assert (= (and b!8045026 ((_ is Concat!30884) (regOne!44146 (regex!8746 (h!81724 rules!4030))))) b!8045154))

(assert (= (and b!8045026 ((_ is Star!21817) (regOne!44146 (regex!8746 (h!81724 rules!4030))))) b!8045155))

(assert (= (and b!8045026 ((_ is Union!21817) (regOne!44146 (regex!8746 (h!81724 rules!4030))))) b!8045156))

(declare-fun b!8045160 () Bool)

(declare-fun e!4739476 () Bool)

(declare-fun tp!2411282 () Bool)

(declare-fun tp!2411281 () Bool)

(assert (=> b!8045160 (= e!4739476 (and tp!2411282 tp!2411281))))

(declare-fun b!8045158 () Bool)

(declare-fun tp!2411280 () Bool)

(declare-fun tp!2411283 () Bool)

(assert (=> b!8045158 (= e!4739476 (and tp!2411280 tp!2411283))))

(assert (=> b!8045026 (= tp!2411197 e!4739476)))

(declare-fun b!8045157 () Bool)

(assert (=> b!8045157 (= e!4739476 tp_is_empty!54609)))

(declare-fun b!8045159 () Bool)

(declare-fun tp!2411284 () Bool)

(assert (=> b!8045159 (= e!4739476 tp!2411284)))

(assert (= (and b!8045026 ((_ is ElementMatch!21817) (regTwo!44146 (regex!8746 (h!81724 rules!4030))))) b!8045157))

(assert (= (and b!8045026 ((_ is Concat!30884) (regTwo!44146 (regex!8746 (h!81724 rules!4030))))) b!8045158))

(assert (= (and b!8045026 ((_ is Star!21817) (regTwo!44146 (regex!8746 (h!81724 rules!4030))))) b!8045159))

(assert (= (and b!8045026 ((_ is Union!21817) (regTwo!44146 (regex!8746 (h!81724 rules!4030))))) b!8045160))

(declare-fun b!8045164 () Bool)

(declare-fun e!4739477 () Bool)

(declare-fun tp!2411287 () Bool)

(declare-fun tp!2411286 () Bool)

(assert (=> b!8045164 (= e!4739477 (and tp!2411287 tp!2411286))))

(declare-fun b!8045162 () Bool)

(declare-fun tp!2411285 () Bool)

(declare-fun tp!2411288 () Bool)

(assert (=> b!8045162 (= e!4739477 (and tp!2411285 tp!2411288))))

(assert (=> b!8045038 (= tp!2411210 e!4739477)))

(declare-fun b!8045161 () Bool)

(assert (=> b!8045161 (= e!4739477 tp_is_empty!54609)))

(declare-fun b!8045163 () Bool)

(declare-fun tp!2411289 () Bool)

(assert (=> b!8045163 (= e!4739477 tp!2411289)))

(assert (= (and b!8045038 ((_ is ElementMatch!21817) (regex!8746 (h!81724 (t!391172 rules!4030))))) b!8045161))

(assert (= (and b!8045038 ((_ is Concat!30884) (regex!8746 (h!81724 (t!391172 rules!4030))))) b!8045162))

(assert (= (and b!8045038 ((_ is Star!21817) (regex!8746 (h!81724 (t!391172 rules!4030))))) b!8045163))

(assert (= (and b!8045038 ((_ is Union!21817) (regex!8746 (h!81724 (t!391172 rules!4030))))) b!8045164))

(declare-fun b!8045168 () Bool)

(declare-fun e!4739478 () Bool)

(declare-fun tp!2411292 () Bool)

(declare-fun tp!2411291 () Bool)

(assert (=> b!8045168 (= e!4739478 (and tp!2411292 tp!2411291))))

(declare-fun b!8045166 () Bool)

(declare-fun tp!2411290 () Bool)

(declare-fun tp!2411293 () Bool)

(assert (=> b!8045166 (= e!4739478 (and tp!2411290 tp!2411293))))

(assert (=> b!8045043 (= tp!2411213 e!4739478)))

(declare-fun b!8045165 () Bool)

(assert (=> b!8045165 (= e!4739478 tp_is_empty!54609)))

(declare-fun b!8045167 () Bool)

(declare-fun tp!2411294 () Bool)

(assert (=> b!8045167 (= e!4739478 tp!2411294)))

(assert (= (and b!8045043 ((_ is ElementMatch!21817) (regOne!44147 (regex!8746 r!4387)))) b!8045165))

(assert (= (and b!8045043 ((_ is Concat!30884) (regOne!44147 (regex!8746 r!4387)))) b!8045166))

(assert (= (and b!8045043 ((_ is Star!21817) (regOne!44147 (regex!8746 r!4387)))) b!8045167))

(assert (= (and b!8045043 ((_ is Union!21817) (regOne!44147 (regex!8746 r!4387)))) b!8045168))

(declare-fun b!8045172 () Bool)

(declare-fun e!4739479 () Bool)

(declare-fun tp!2411297 () Bool)

(declare-fun tp!2411296 () Bool)

(assert (=> b!8045172 (= e!4739479 (and tp!2411297 tp!2411296))))

(declare-fun b!8045170 () Bool)

(declare-fun tp!2411295 () Bool)

(declare-fun tp!2411298 () Bool)

(assert (=> b!8045170 (= e!4739479 (and tp!2411295 tp!2411298))))

(assert (=> b!8045043 (= tp!2411212 e!4739479)))

(declare-fun b!8045169 () Bool)

(assert (=> b!8045169 (= e!4739479 tp_is_empty!54609)))

(declare-fun b!8045171 () Bool)

(declare-fun tp!2411299 () Bool)

(assert (=> b!8045171 (= e!4739479 tp!2411299)))

(assert (= (and b!8045043 ((_ is ElementMatch!21817) (regTwo!44147 (regex!8746 r!4387)))) b!8045169))

(assert (= (and b!8045043 ((_ is Concat!30884) (regTwo!44147 (regex!8746 r!4387)))) b!8045170))

(assert (= (and b!8045043 ((_ is Star!21817) (regTwo!44147 (regex!8746 r!4387)))) b!8045171))

(assert (= (and b!8045043 ((_ is Union!21817) (regTwo!44147 (regex!8746 r!4387)))) b!8045172))

(declare-fun b!8045176 () Bool)

(declare-fun e!4739480 () Bool)

(declare-fun tp!2411302 () Bool)

(declare-fun tp!2411301 () Bool)

(assert (=> b!8045176 (= e!4739480 (and tp!2411302 tp!2411301))))

(declare-fun b!8045174 () Bool)

(declare-fun tp!2411300 () Bool)

(declare-fun tp!2411303 () Bool)

(assert (=> b!8045174 (= e!4739480 (and tp!2411300 tp!2411303))))

(assert (=> b!8045041 (= tp!2411211 e!4739480)))

(declare-fun b!8045173 () Bool)

(assert (=> b!8045173 (= e!4739480 tp_is_empty!54609)))

(declare-fun b!8045175 () Bool)

(declare-fun tp!2411304 () Bool)

(assert (=> b!8045175 (= e!4739480 tp!2411304)))

(assert (= (and b!8045041 ((_ is ElementMatch!21817) (regOne!44146 (regex!8746 r!4387)))) b!8045173))

(assert (= (and b!8045041 ((_ is Concat!30884) (regOne!44146 (regex!8746 r!4387)))) b!8045174))

(assert (= (and b!8045041 ((_ is Star!21817) (regOne!44146 (regex!8746 r!4387)))) b!8045175))

(assert (= (and b!8045041 ((_ is Union!21817) (regOne!44146 (regex!8746 r!4387)))) b!8045176))

(declare-fun b!8045180 () Bool)

(declare-fun e!4739481 () Bool)

(declare-fun tp!2411307 () Bool)

(declare-fun tp!2411306 () Bool)

(assert (=> b!8045180 (= e!4739481 (and tp!2411307 tp!2411306))))

(declare-fun b!8045178 () Bool)

(declare-fun tp!2411305 () Bool)

(declare-fun tp!2411308 () Bool)

(assert (=> b!8045178 (= e!4739481 (and tp!2411305 tp!2411308))))

(assert (=> b!8045041 (= tp!2411214 e!4739481)))

(declare-fun b!8045177 () Bool)

(assert (=> b!8045177 (= e!4739481 tp_is_empty!54609)))

(declare-fun b!8045179 () Bool)

(declare-fun tp!2411309 () Bool)

(assert (=> b!8045179 (= e!4739481 tp!2411309)))

(assert (= (and b!8045041 ((_ is ElementMatch!21817) (regTwo!44146 (regex!8746 r!4387)))) b!8045177))

(assert (= (and b!8045041 ((_ is Concat!30884) (regTwo!44146 (regex!8746 r!4387)))) b!8045178))

(assert (= (and b!8045041 ((_ is Star!21817) (regTwo!44146 (regex!8746 r!4387)))) b!8045179))

(assert (= (and b!8045041 ((_ is Union!21817) (regTwo!44146 (regex!8746 r!4387)))) b!8045180))

(declare-fun b!8045184 () Bool)

(declare-fun e!4739482 () Bool)

(declare-fun tp!2411312 () Bool)

(declare-fun tp!2411311 () Bool)

(assert (=> b!8045184 (= e!4739482 (and tp!2411312 tp!2411311))))

(declare-fun b!8045182 () Bool)

(declare-fun tp!2411310 () Bool)

(declare-fun tp!2411313 () Bool)

(assert (=> b!8045182 (= e!4739482 (and tp!2411310 tp!2411313))))

(assert (=> b!8045027 (= tp!2411198 e!4739482)))

(declare-fun b!8045181 () Bool)

(assert (=> b!8045181 (= e!4739482 tp_is_empty!54609)))

(declare-fun b!8045183 () Bool)

(declare-fun tp!2411314 () Bool)

(assert (=> b!8045183 (= e!4739482 tp!2411314)))

(assert (= (and b!8045027 ((_ is ElementMatch!21817) (reg!22146 (regex!8746 (h!81724 rules!4030))))) b!8045181))

(assert (= (and b!8045027 ((_ is Concat!30884) (reg!22146 (regex!8746 (h!81724 rules!4030))))) b!8045182))

(assert (= (and b!8045027 ((_ is Star!21817) (reg!22146 (regex!8746 (h!81724 rules!4030))))) b!8045183))

(assert (= (and b!8045027 ((_ is Union!21817) (reg!22146 (regex!8746 (h!81724 rules!4030))))) b!8045184))

(declare-fun b!8045187 () Bool)

(declare-fun b_free!136287 () Bool)

(declare-fun b_next!137077 () Bool)

(assert (=> b!8045187 (= b_free!136287 (not b_next!137077))))

(declare-fun tp!2411317 () Bool)

(declare-fun b_and!354723 () Bool)

(assert (=> b!8045187 (= tp!2411317 b_and!354723)))

(declare-fun b_free!136289 () Bool)

(declare-fun b_next!137079 () Bool)

(assert (=> b!8045187 (= b_free!136289 (not b_next!137079))))

(declare-fun tp!2411315 () Bool)

(declare-fun b_and!354725 () Bool)

(assert (=> b!8045187 (= tp!2411315 b_and!354725)))

(declare-fun e!4739485 () Bool)

(assert (=> b!8045187 (= e!4739485 (and tp!2411317 tp!2411315))))

(declare-fun e!4739484 () Bool)

(declare-fun tp!2411318 () Bool)

(declare-fun b!8045186 () Bool)

(assert (=> b!8045186 (= e!4739484 (and tp!2411318 (inv!97032 (tag!9610 (h!81724 (t!391172 (t!391172 rules!4030))))) (inv!97034 (transformation!8746 (h!81724 (t!391172 (t!391172 rules!4030))))) e!4739485))))

(declare-fun b!8045185 () Bool)

(declare-fun e!4739483 () Bool)

(declare-fun tp!2411316 () Bool)

(assert (=> b!8045185 (= e!4739483 (and e!4739484 tp!2411316))))

(assert (=> b!8045037 (= tp!2411208 e!4739483)))

(assert (= b!8045186 b!8045187))

(assert (= b!8045185 b!8045186))

(assert (= (and b!8045037 ((_ is Cons!75276) (t!391172 (t!391172 rules!4030)))) b!8045185))

(declare-fun m!8397842 () Bool)

(assert (=> b!8045186 m!8397842))

(declare-fun m!8397844 () Bool)

(assert (=> b!8045186 m!8397844))

(declare-fun b!8045191 () Bool)

(declare-fun e!4739487 () Bool)

(declare-fun tp!2411321 () Bool)

(declare-fun tp!2411320 () Bool)

(assert (=> b!8045191 (= e!4739487 (and tp!2411321 tp!2411320))))

(declare-fun b!8045189 () Bool)

(declare-fun tp!2411319 () Bool)

(declare-fun tp!2411322 () Bool)

(assert (=> b!8045189 (= e!4739487 (and tp!2411319 tp!2411322))))

(assert (=> b!8045042 (= tp!2411215 e!4739487)))

(declare-fun b!8045188 () Bool)

(assert (=> b!8045188 (= e!4739487 tp_is_empty!54609)))

(declare-fun b!8045190 () Bool)

(declare-fun tp!2411323 () Bool)

(assert (=> b!8045190 (= e!4739487 tp!2411323)))

(assert (= (and b!8045042 ((_ is ElementMatch!21817) (reg!22146 (regex!8746 r!4387)))) b!8045188))

(assert (= (and b!8045042 ((_ is Concat!30884) (reg!22146 (regex!8746 r!4387)))) b!8045189))

(assert (= (and b!8045042 ((_ is Star!21817) (reg!22146 (regex!8746 r!4387)))) b!8045190))

(assert (= (and b!8045042 ((_ is Union!21817) (reg!22146 (regex!8746 r!4387)))) b!8045191))

(declare-fun b!8045195 () Bool)

(declare-fun e!4739488 () Bool)

(declare-fun tp!2411326 () Bool)

(declare-fun tp!2411325 () Bool)

(assert (=> b!8045195 (= e!4739488 (and tp!2411326 tp!2411325))))

(declare-fun b!8045193 () Bool)

(declare-fun tp!2411324 () Bool)

(declare-fun tp!2411327 () Bool)

(assert (=> b!8045193 (= e!4739488 (and tp!2411324 tp!2411327))))

(assert (=> b!8045028 (= tp!2411196 e!4739488)))

(declare-fun b!8045192 () Bool)

(assert (=> b!8045192 (= e!4739488 tp_is_empty!54609)))

(declare-fun b!8045194 () Bool)

(declare-fun tp!2411328 () Bool)

(assert (=> b!8045194 (= e!4739488 tp!2411328)))

(assert (= (and b!8045028 ((_ is ElementMatch!21817) (regOne!44147 (regex!8746 (h!81724 rules!4030))))) b!8045192))

(assert (= (and b!8045028 ((_ is Concat!30884) (regOne!44147 (regex!8746 (h!81724 rules!4030))))) b!8045193))

(assert (= (and b!8045028 ((_ is Star!21817) (regOne!44147 (regex!8746 (h!81724 rules!4030))))) b!8045194))

(assert (= (and b!8045028 ((_ is Union!21817) (regOne!44147 (regex!8746 (h!81724 rules!4030))))) b!8045195))

(declare-fun b!8045199 () Bool)

(declare-fun e!4739489 () Bool)

(declare-fun tp!2411331 () Bool)

(declare-fun tp!2411330 () Bool)

(assert (=> b!8045199 (= e!4739489 (and tp!2411331 tp!2411330))))

(declare-fun b!8045197 () Bool)

(declare-fun tp!2411329 () Bool)

(declare-fun tp!2411332 () Bool)

(assert (=> b!8045197 (= e!4739489 (and tp!2411329 tp!2411332))))

(assert (=> b!8045028 (= tp!2411195 e!4739489)))

(declare-fun b!8045196 () Bool)

(assert (=> b!8045196 (= e!4739489 tp_is_empty!54609)))

(declare-fun b!8045198 () Bool)

(declare-fun tp!2411333 () Bool)

(assert (=> b!8045198 (= e!4739489 tp!2411333)))

(assert (= (and b!8045028 ((_ is ElementMatch!21817) (regTwo!44147 (regex!8746 (h!81724 rules!4030))))) b!8045196))

(assert (= (and b!8045028 ((_ is Concat!30884) (regTwo!44147 (regex!8746 (h!81724 rules!4030))))) b!8045197))

(assert (= (and b!8045028 ((_ is Star!21817) (regTwo!44147 (regex!8746 (h!81724 rules!4030))))) b!8045198))

(assert (= (and b!8045028 ((_ is Union!21817) (regTwo!44147 (regex!8746 (h!81724 rules!4030))))) b!8045199))

(declare-fun b_lambda!290317 () Bool)

(assert (= b_lambda!290315 (or d!2396259 b_lambda!290317)))

(declare-fun bs!1971674 () Bool)

(declare-fun d!2396327 () Bool)

(assert (= bs!1971674 (and d!2396327 d!2396259)))

(assert (=> bs!1971674 (= (dynLambda!30252 lambda!472691 (h!81724 lt!2722630)) (ruleValid!3991 thiss!26855 (h!81724 lt!2722630)))))

(assert (=> bs!1971674 m!8397750))

(assert (=> b!8045142 d!2396327))

(check-sat (not b!8045186) (not b!8045190) (not b!8045195) (not b_next!137057) (not b!8045183) (not b!8045191) (not b!8045152) (not b!8045143) (not b!8045154) (not b!8045160) (not d!2396313) (not b!8045182) (not b_next!137059) (not b!8045144) (not b!8045174) (not b!8045179) (not b!8045176) (not b!8045163) (not b!8045193) (not b!8045158) (not b!8045178) (not b_next!137077) (not b!8045162) (not b!8045073) b_and!354723 (not b!8045170) (not b!8045199) (not b_next!137061) (not b_next!137079) (not d!2396323) (not d!2396309) (not b!8045194) (not b!8045151) (not d!2396321) (not b!8045171) (not b!8045167) (not b!8045072) (not b_next!137071) (not b!8045184) (not d!2396293) (not bs!1971674) (not b!8045164) (not b_lambda!290317) (not b!8045145) (not b!8045159) (not d!2396325) b_and!354715 (not b!8045197) (not b!8045180) (not b!8045156) (not b!8045185) (not b!8045166) b_and!354707 (not d!2396295) (not b_next!137069) (not b!8045175) (not d!2396285) b_and!354703 b_and!354709 (not b!8045198) (not b!8045155) b_and!354705 b_and!354717 b_and!354725 (not b!8045168) (not d!2396317) (not b_next!137063) (not b!8045189) (not b!8045132) tp_is_empty!54609 (not b!8045172))
(check-sat (not b_next!137059) (not b_next!137077) b_and!354723 (not b_next!137061) (not b_next!137079) (not b_next!137071) (not b_next!137057) b_and!354715 b_and!354707 (not b_next!137069) b_and!354703 b_and!354709 b_and!354705 (not b_next!137063) b_and!354717 b_and!354725)
