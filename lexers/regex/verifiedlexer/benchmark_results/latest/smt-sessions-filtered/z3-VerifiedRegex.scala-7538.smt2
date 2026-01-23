; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!397914 () Bool)

(assert start!397914)

(declare-fun b!4173376 () Bool)

(declare-fun b_free!120895 () Bool)

(declare-fun b_next!121599 () Bool)

(assert (=> b!4173376 (= b_free!120895 (not b_next!121599))))

(declare-fun tp!1275235 () Bool)

(declare-fun b_and!326053 () Bool)

(assert (=> b!4173376 (= tp!1275235 b_and!326053)))

(declare-fun b_free!120897 () Bool)

(declare-fun b_next!121601 () Bool)

(assert (=> b!4173376 (= b_free!120897 (not b_next!121601))))

(declare-fun tp!1275240 () Bool)

(declare-fun b_and!326055 () Bool)

(assert (=> b!4173376 (= tp!1275240 b_and!326055)))

(declare-fun b!4173372 () Bool)

(declare-fun b_free!120899 () Bool)

(declare-fun b_next!121603 () Bool)

(assert (=> b!4173372 (= b_free!120899 (not b_next!121603))))

(declare-fun tp!1275242 () Bool)

(declare-fun b_and!326057 () Bool)

(assert (=> b!4173372 (= tp!1275242 b_and!326057)))

(declare-fun b_free!120901 () Bool)

(declare-fun b_next!121605 () Bool)

(assert (=> b!4173372 (= b_free!120901 (not b_next!121605))))

(declare-fun tp!1275237 () Bool)

(declare-fun b_and!326059 () Bool)

(assert (=> b!4173372 (= tp!1275237 b_and!326059)))

(declare-fun b!4173364 () Bool)

(declare-fun b_free!120903 () Bool)

(declare-fun b_next!121607 () Bool)

(assert (=> b!4173364 (= b_free!120903 (not b_next!121607))))

(declare-fun tp!1275238 () Bool)

(declare-fun b_and!326061 () Bool)

(assert (=> b!4173364 (= tp!1275238 b_and!326061)))

(declare-fun b_free!120905 () Bool)

(declare-fun b_next!121609 () Bool)

(assert (=> b!4173364 (= b_free!120905 (not b_next!121609))))

(declare-fun tp!1275233 () Bool)

(declare-fun b_and!326063 () Bool)

(assert (=> b!4173364 (= tp!1275233 b_and!326063)))

(declare-fun b!4173361 () Bool)

(declare-fun res!1710241 () Bool)

(declare-fun e!2590907 () Bool)

(assert (=> b!4173361 (=> (not res!1710241) (not e!2590907))))

(declare-datatypes ((List!45875 0))(
  ( (Nil!45751) (Cons!45751 (h!51171 (_ BitVec 16)) (t!344570 List!45875)) )
))
(declare-datatypes ((TokenValue!7822 0))(
  ( (FloatLiteralValue!15644 (text!55199 List!45875)) (TokenValueExt!7821 (__x!27865 Int)) (Broken!39110 (value!236878 List!45875)) (Object!7945) (End!7822) (Def!7822) (Underscore!7822) (Match!7822) (Else!7822) (Error!7822) (Case!7822) (If!7822) (Extends!7822) (Abstract!7822) (Class!7822) (Val!7822) (DelimiterValue!15644 (del!7882 List!45875)) (KeywordValue!7828 (value!236879 List!45875)) (CommentValue!15644 (value!236880 List!45875)) (WhitespaceValue!15644 (value!236881 List!45875)) (IndentationValue!7822 (value!236882 List!45875)) (String!52975) (Int32!7822) (Broken!39111 (value!236883 List!45875)) (Boolean!7823) (Unit!64820) (OperatorValue!7825 (op!7882 List!45875)) (IdentifierValue!15644 (value!236884 List!45875)) (IdentifierValue!15645 (value!236885 List!45875)) (WhitespaceValue!15645 (value!236886 List!45875)) (True!15644) (False!15644) (Broken!39112 (value!236887 List!45875)) (Broken!39113 (value!236888 List!45875)) (True!15645) (RightBrace!7822) (RightBracket!7822) (Colon!7822) (Null!7822) (Comma!7822) (LeftBracket!7822) (False!15645) (LeftBrace!7822) (ImaginaryLiteralValue!7822 (text!55200 List!45875)) (StringLiteralValue!23466 (value!236889 List!45875)) (EOFValue!7822 (value!236890 List!45875)) (IdentValue!7822 (value!236891 List!45875)) (DelimiterValue!15645 (value!236892 List!45875)) (DedentValue!7822 (value!236893 List!45875)) (NewLineValue!7822 (value!236894 List!45875)) (IntegerValue!23466 (value!236895 (_ BitVec 32)) (text!55201 List!45875)) (IntegerValue!23467 (value!236896 Int) (text!55202 List!45875)) (Times!7822) (Or!7822) (Equal!7822) (Minus!7822) (Broken!39114 (value!236897 List!45875)) (And!7822) (Div!7822) (LessEqual!7822) (Mod!7822) (Concat!20319) (Not!7822) (Plus!7822) (SpaceValue!7822 (value!236898 List!45875)) (IntegerValue!23468 (value!236899 Int) (text!55203 List!45875)) (StringLiteralValue!23467 (text!55204 List!45875)) (FloatLiteralValue!15645 (text!55205 List!45875)) (BytesLiteralValue!7822 (value!236900 List!45875)) (CommentValue!15645 (value!236901 List!45875)) (StringLiteralValue!23468 (value!236902 List!45875)) (ErrorTokenValue!7822 (msg!7883 List!45875)) )
))
(declare-datatypes ((C!25184 0))(
  ( (C!25185 (val!14754 Int)) )
))
(declare-datatypes ((List!45876 0))(
  ( (Nil!45752) (Cons!45752 (h!51172 C!25184) (t!344571 List!45876)) )
))
(declare-datatypes ((IArray!27611 0))(
  ( (IArray!27612 (innerList!13863 List!45876)) )
))
(declare-datatypes ((Conc!13803 0))(
  ( (Node!13803 (left!34097 Conc!13803) (right!34427 Conc!13803) (csize!27836 Int) (cheight!14014 Int)) (Leaf!21342 (xs!17109 IArray!27611) (csize!27837 Int)) (Empty!13803) )
))
(declare-datatypes ((BalanceConc!27200 0))(
  ( (BalanceConc!27201 (c!713194 Conc!13803)) )
))
(declare-datatypes ((Regex!12497 0))(
  ( (ElementMatch!12497 (c!713195 C!25184)) (Concat!20320 (regOne!25506 Regex!12497) (regTwo!25506 Regex!12497)) (EmptyExpr!12497) (Star!12497 (reg!12826 Regex!12497)) (EmptyLang!12497) (Union!12497 (regOne!25507 Regex!12497) (regTwo!25507 Regex!12497)) )
))
(declare-datatypes ((String!52976 0))(
  ( (String!52977 (value!236903 String)) )
))
(declare-datatypes ((TokenValueInjection!15072 0))(
  ( (TokenValueInjection!15073 (toValue!10276 Int) (toChars!10135 Int)) )
))
(declare-datatypes ((Rule!14984 0))(
  ( (Rule!14985 (regex!7592 Regex!12497) (tag!8456 String!52976) (isSeparator!7592 Bool) (transformation!7592 TokenValueInjection!15072)) )
))
(declare-fun r!4142 () Rule!14984)

(declare-fun validRegex!5614 (Regex!12497) Bool)

(assert (=> b!4173361 (= res!1710241 (validRegex!5614 (regex!7592 r!4142)))))

(declare-fun b!4173362 () Bool)

(declare-fun e!2590904 () Bool)

(declare-datatypes ((List!45877 0))(
  ( (Nil!45753) (Cons!45753 (h!51173 Rule!14984) (t!344572 List!45877)) )
))
(declare-fun rules!3843 () List!45877)

(declare-fun tp!1275234 () Bool)

(declare-fun e!2590908 () Bool)

(declare-fun inv!60281 (String!52976) Bool)

(declare-fun inv!60283 (TokenValueInjection!15072) Bool)

(assert (=> b!4173362 (= e!2590908 (and tp!1275234 (inv!60281 (tag!8456 (h!51173 rules!3843))) (inv!60283 (transformation!7592 (h!51173 rules!3843))) e!2590904))))

(declare-fun b!4173363 () Bool)

(declare-fun res!1710233 () Bool)

(assert (=> b!4173363 (=> (not res!1710233) (not e!2590907))))

(declare-fun pBis!107 () List!45876)

(declare-fun input!3342 () List!45876)

(declare-fun isPrefix!4449 (List!45876 List!45876) Bool)

(assert (=> b!4173363 (= res!1710233 (isPrefix!4449 pBis!107 input!3342))))

(declare-fun e!2590901 () Bool)

(assert (=> b!4173364 (= e!2590901 (and tp!1275238 tp!1275233))))

(declare-fun b!4173365 () Bool)

(declare-fun e!2590898 () Bool)

(declare-fun tp_is_empty!21957 () Bool)

(declare-fun tp!1275241 () Bool)

(assert (=> b!4173365 (= e!2590898 (and tp_is_empty!21957 tp!1275241))))

(declare-fun b!4173367 () Bool)

(declare-fun res!1710234 () Bool)

(declare-fun e!2590912 () Bool)

(assert (=> b!4173367 (=> res!1710234 e!2590912)))

(declare-datatypes ((LexerInterface!7185 0))(
  ( (LexerInterfaceExt!7182 (__x!27866 Int)) (Lexer!7183) )
))
(declare-fun thiss!25986 () LexerInterface!7185)

(declare-fun rBis!167 () Rule!14984)

(declare-fun ruleValid!3310 (LexerInterface!7185 Rule!14984) Bool)

(assert (=> b!4173367 (= res!1710234 (not (ruleValid!3310 thiss!25986 rBis!167)))))

(declare-fun b!4173368 () Bool)

(declare-fun e!2590897 () Bool)

(declare-fun tp!1275239 () Bool)

(assert (=> b!4173368 (= e!2590897 (and tp_is_empty!21957 tp!1275239))))

(declare-fun b!4173369 () Bool)

(declare-fun e!2590900 () Bool)

(assert (=> b!4173369 (= e!2590900 e!2590912)))

(declare-fun res!1710235 () Bool)

(assert (=> b!4173369 (=> res!1710235 e!2590912)))

(declare-fun lt!1486010 () Int)

(declare-fun lt!1486004 () Int)

(assert (=> b!4173369 (= res!1710235 (<= lt!1486010 lt!1486004))))

(declare-fun size!33583 (List!45876) Int)

(assert (=> b!4173369 (= lt!1486010 (size!33583 pBis!107))))

(declare-fun b!4173370 () Bool)

(declare-fun res!1710236 () Bool)

(assert (=> b!4173370 (=> (not res!1710236) (not e!2590907))))

(declare-fun rulesInvariant!6398 (LexerInterface!7185 List!45877) Bool)

(assert (=> b!4173370 (= res!1710236 (rulesInvariant!6398 thiss!25986 rules!3843))))

(declare-fun b!4173371 () Bool)

(declare-fun res!1710231 () Bool)

(assert (=> b!4173371 (=> (not res!1710231) (not e!2590907))))

(assert (=> b!4173371 (= res!1710231 (ruleValid!3310 thiss!25986 r!4142))))

(assert (=> b!4173372 (= e!2590904 (and tp!1275242 tp!1275237))))

(declare-fun b!4173373 () Bool)

(declare-fun res!1710242 () Bool)

(assert (=> b!4173373 (=> (not res!1710242) (not e!2590907))))

(declare-fun contains!9395 (List!45877 Rule!14984) Bool)

(assert (=> b!4173373 (= res!1710242 (contains!9395 rules!3843 rBis!167))))

(declare-fun b!4173374 () Bool)

(declare-fun res!1710232 () Bool)

(assert (=> b!4173374 (=> (not res!1710232) (not e!2590907))))

(assert (=> b!4173374 (= res!1710232 (contains!9395 rules!3843 r!4142))))

(declare-fun b!4173375 () Bool)

(assert (=> b!4173375 (= e!2590912 true)))

(declare-datatypes ((Unit!64821 0))(
  ( (Unit!64822) )
))
(declare-fun lt!1486011 () Unit!64821)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2324 (LexerInterface!7185 Rule!14984 List!45877) Unit!64821)

(assert (=> b!4173375 (= lt!1486011 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2324 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4173375 (<= lt!1486010 (size!33583 input!3342))))

(declare-fun lt!1486008 () Unit!64821)

(declare-fun lemmaIsPrefixThenSmallerEqSize!481 (List!45876 List!45876) Unit!64821)

(assert (=> b!4173375 (= lt!1486008 (lemmaIsPrefixThenSmallerEqSize!481 pBis!107 input!3342))))

(declare-fun e!2590899 () Bool)

(assert (=> b!4173376 (= e!2590899 (and tp!1275235 tp!1275240))))

(declare-fun b!4173377 () Bool)

(assert (=> b!4173377 (= e!2590907 (not e!2590900))))

(declare-fun res!1710230 () Bool)

(assert (=> b!4173377 (=> res!1710230 e!2590900)))

(declare-datatypes ((Token!13898 0))(
  ( (Token!13899 (value!236904 TokenValue!7822) (rule!10642 Rule!14984) (size!33584 Int) (originalCharacters!7980 List!45876)) )
))
(declare-datatypes ((tuple2!43602 0))(
  ( (tuple2!43603 (_1!24935 Token!13898) (_2!24935 List!45876)) )
))
(declare-datatypes ((Option!9788 0))(
  ( (None!9787) (Some!9787 (v!40583 tuple2!43602)) )
))
(declare-fun lt!1486012 () Option!9788)

(declare-fun maxPrefixOneRule!3196 (LexerInterface!7185 Rule!14984 List!45876) Option!9788)

(assert (=> b!4173377 (= res!1710230 (not (= (maxPrefixOneRule!3196 thiss!25986 r!4142 input!3342) lt!1486012)))))

(declare-fun lt!1486009 () TokenValue!7822)

(declare-fun p!2959 () List!45876)

(declare-fun getSuffix!2744 (List!45876 List!45876) List!45876)

(assert (=> b!4173377 (= lt!1486012 (Some!9787 (tuple2!43603 (Token!13899 lt!1486009 r!4142 lt!1486004 p!2959) (getSuffix!2744 input!3342 p!2959))))))

(assert (=> b!4173377 (= lt!1486004 (size!33583 p!2959))))

(declare-fun lt!1486007 () BalanceConc!27200)

(declare-fun apply!10557 (TokenValueInjection!15072 BalanceConc!27200) TokenValue!7822)

(assert (=> b!4173377 (= lt!1486009 (apply!10557 (transformation!7592 r!4142) lt!1486007))))

(assert (=> b!4173377 (isPrefix!4449 input!3342 input!3342)))

(declare-fun lt!1486005 () Unit!64821)

(declare-fun lemmaIsPrefixRefl!2878 (List!45876 List!45876) Unit!64821)

(assert (=> b!4173377 (= lt!1486005 (lemmaIsPrefixRefl!2878 input!3342 input!3342))))

(declare-fun lt!1486006 () Unit!64821)

(declare-fun lemmaSemiInverse!2358 (TokenValueInjection!15072 BalanceConc!27200) Unit!64821)

(assert (=> b!4173377 (= lt!1486006 (lemmaSemiInverse!2358 (transformation!7592 r!4142) lt!1486007))))

(declare-fun seqFromList!5617 (List!45876) BalanceConc!27200)

(assert (=> b!4173377 (= lt!1486007 (seqFromList!5617 p!2959))))

(declare-fun b!4173378 () Bool)

(declare-fun res!1710229 () Bool)

(assert (=> b!4173378 (=> (not res!1710229) (not e!2590907))))

(declare-fun matchR!6236 (Regex!12497 List!45876) Bool)

(assert (=> b!4173378 (= res!1710229 (matchR!6236 (regex!7592 r!4142) p!2959))))

(declare-fun b!4173379 () Bool)

(declare-fun tp!1275244 () Bool)

(declare-fun e!2590906 () Bool)

(assert (=> b!4173379 (= e!2590906 (and tp!1275244 (inv!60281 (tag!8456 r!4142)) (inv!60283 (transformation!7592 r!4142)) e!2590899))))

(declare-fun tp!1275232 () Bool)

(declare-fun b!4173380 () Bool)

(declare-fun e!2590902 () Bool)

(assert (=> b!4173380 (= e!2590902 (and tp!1275232 (inv!60281 (tag!8456 rBis!167)) (inv!60283 (transformation!7592 rBis!167)) e!2590901))))

(declare-fun b!4173366 () Bool)

(declare-fun res!1710238 () Bool)

(assert (=> b!4173366 (=> (not res!1710238) (not e!2590907))))

(declare-fun isEmpty!27061 (List!45877) Bool)

(assert (=> b!4173366 (= res!1710238 (not (isEmpty!27061 rules!3843)))))

(declare-fun res!1710240 () Bool)

(assert (=> start!397914 (=> (not res!1710240) (not e!2590907))))

(get-info :version)

(assert (=> start!397914 (= res!1710240 ((_ is Lexer!7183) thiss!25986))))

(assert (=> start!397914 e!2590907))

(assert (=> start!397914 true))

(assert (=> start!397914 e!2590902))

(assert (=> start!397914 e!2590906))

(declare-fun e!2590903 () Bool)

(assert (=> start!397914 e!2590903))

(declare-fun e!2590910 () Bool)

(assert (=> start!397914 e!2590910))

(assert (=> start!397914 e!2590897))

(assert (=> start!397914 e!2590898))

(declare-fun b!4173381 () Bool)

(declare-fun res!1710239 () Bool)

(assert (=> b!4173381 (=> res!1710239 e!2590912)))

(declare-fun maxPrefix!4237 (LexerInterface!7185 List!45877 List!45876) Option!9788)

(assert (=> b!4173381 (= res!1710239 (not (= (maxPrefix!4237 thiss!25986 rules!3843 input!3342) lt!1486012)))))

(declare-fun b!4173382 () Bool)

(declare-fun tp!1275243 () Bool)

(assert (=> b!4173382 (= e!2590903 (and e!2590908 tp!1275243))))

(declare-fun b!4173383 () Bool)

(declare-fun res!1710237 () Bool)

(assert (=> b!4173383 (=> (not res!1710237) (not e!2590907))))

(assert (=> b!4173383 (= res!1710237 (isPrefix!4449 p!2959 input!3342))))

(declare-fun b!4173384 () Bool)

(declare-fun tp!1275236 () Bool)

(assert (=> b!4173384 (= e!2590910 (and tp_is_empty!21957 tp!1275236))))

(assert (= (and start!397914 res!1710240) b!4173383))

(assert (= (and b!4173383 res!1710237) b!4173363))

(assert (= (and b!4173363 res!1710233) b!4173366))

(assert (= (and b!4173366 res!1710238) b!4173370))

(assert (= (and b!4173370 res!1710236) b!4173374))

(assert (= (and b!4173374 res!1710232) b!4173373))

(assert (= (and b!4173373 res!1710242) b!4173361))

(assert (= (and b!4173361 res!1710241) b!4173378))

(assert (= (and b!4173378 res!1710229) b!4173371))

(assert (= (and b!4173371 res!1710231) b!4173377))

(assert (= (and b!4173377 (not res!1710230)) b!4173369))

(assert (= (and b!4173369 (not res!1710235)) b!4173367))

(assert (= (and b!4173367 (not res!1710234)) b!4173381))

(assert (= (and b!4173381 (not res!1710239)) b!4173375))

(assert (= b!4173380 b!4173364))

(assert (= start!397914 b!4173380))

(assert (= b!4173379 b!4173376))

(assert (= start!397914 b!4173379))

(assert (= b!4173362 b!4173372))

(assert (= b!4173382 b!4173362))

(assert (= (and start!397914 ((_ is Cons!45753) rules!3843)) b!4173382))

(assert (= (and start!397914 ((_ is Cons!45752) input!3342)) b!4173384))

(assert (= (and start!397914 ((_ is Cons!45752) pBis!107)) b!4173368))

(assert (= (and start!397914 ((_ is Cons!45752) p!2959)) b!4173365))

(declare-fun m!4763325 () Bool)

(assert (=> b!4173366 m!4763325))

(declare-fun m!4763327 () Bool)

(assert (=> b!4173361 m!4763327))

(declare-fun m!4763329 () Bool)

(assert (=> b!4173367 m!4763329))

(declare-fun m!4763331 () Bool)

(assert (=> b!4173363 m!4763331))

(declare-fun m!4763333 () Bool)

(assert (=> b!4173380 m!4763333))

(declare-fun m!4763335 () Bool)

(assert (=> b!4173380 m!4763335))

(declare-fun m!4763337 () Bool)

(assert (=> b!4173371 m!4763337))

(declare-fun m!4763339 () Bool)

(assert (=> b!4173373 m!4763339))

(declare-fun m!4763341 () Bool)

(assert (=> b!4173362 m!4763341))

(declare-fun m!4763343 () Bool)

(assert (=> b!4173362 m!4763343))

(declare-fun m!4763345 () Bool)

(assert (=> b!4173383 m!4763345))

(declare-fun m!4763347 () Bool)

(assert (=> b!4173379 m!4763347))

(declare-fun m!4763349 () Bool)

(assert (=> b!4173379 m!4763349))

(declare-fun m!4763351 () Bool)

(assert (=> b!4173370 m!4763351))

(declare-fun m!4763353 () Bool)

(assert (=> b!4173378 m!4763353))

(declare-fun m!4763355 () Bool)

(assert (=> b!4173377 m!4763355))

(declare-fun m!4763357 () Bool)

(assert (=> b!4173377 m!4763357))

(declare-fun m!4763359 () Bool)

(assert (=> b!4173377 m!4763359))

(declare-fun m!4763361 () Bool)

(assert (=> b!4173377 m!4763361))

(declare-fun m!4763363 () Bool)

(assert (=> b!4173377 m!4763363))

(declare-fun m!4763365 () Bool)

(assert (=> b!4173377 m!4763365))

(declare-fun m!4763367 () Bool)

(assert (=> b!4173377 m!4763367))

(declare-fun m!4763369 () Bool)

(assert (=> b!4173377 m!4763369))

(declare-fun m!4763371 () Bool)

(assert (=> b!4173381 m!4763371))

(declare-fun m!4763373 () Bool)

(assert (=> b!4173375 m!4763373))

(declare-fun m!4763375 () Bool)

(assert (=> b!4173375 m!4763375))

(declare-fun m!4763377 () Bool)

(assert (=> b!4173375 m!4763377))

(declare-fun m!4763379 () Bool)

(assert (=> b!4173369 m!4763379))

(declare-fun m!4763381 () Bool)

(assert (=> b!4173374 m!4763381))

(check-sat (not b!4173369) (not b!4173371) (not b!4173377) (not b_next!121599) (not b!4173375) (not b!4173367) (not b_next!121603) (not b!4173381) (not b!4173384) (not b!4173382) (not b_next!121601) b_and!326061 (not b_next!121609) (not b!4173374) (not b!4173373) (not b!4173383) b_and!326053 b_and!326057 b_and!326055 (not b!4173378) (not b!4173365) (not b_next!121607) (not b!4173363) (not b!4173361) b_and!326059 (not b!4173368) b_and!326063 (not b!4173370) tp_is_empty!21957 (not b!4173362) (not b!4173366) (not b_next!121605) (not b!4173379) (not b!4173380))
(check-sat (not b_next!121599) (not b_next!121607) (not b_next!121603) b_and!326059 b_and!326063 (not b_next!121601) b_and!326061 (not b_next!121609) (not b_next!121605) b_and!326053 b_and!326057 b_and!326055)
