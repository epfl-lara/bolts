; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!397918 () Bool)

(assert start!397918)

(declare-fun b!4173520 () Bool)

(declare-fun b_free!120919 () Bool)

(declare-fun b_next!121623 () Bool)

(assert (=> b!4173520 (= b_free!120919 (not b_next!121623))))

(declare-fun tp!1275320 () Bool)

(declare-fun b_and!326077 () Bool)

(assert (=> b!4173520 (= tp!1275320 b_and!326077)))

(declare-fun b_free!120921 () Bool)

(declare-fun b_next!121625 () Bool)

(assert (=> b!4173520 (= b_free!120921 (not b_next!121625))))

(declare-fun tp!1275314 () Bool)

(declare-fun b_and!326079 () Bool)

(assert (=> b!4173520 (= tp!1275314 b_and!326079)))

(declare-fun b!4173506 () Bool)

(declare-fun b_free!120923 () Bool)

(declare-fun b_next!121627 () Bool)

(assert (=> b!4173506 (= b_free!120923 (not b_next!121627))))

(declare-fun tp!1275310 () Bool)

(declare-fun b_and!326081 () Bool)

(assert (=> b!4173506 (= tp!1275310 b_and!326081)))

(declare-fun b_free!120925 () Bool)

(declare-fun b_next!121629 () Bool)

(assert (=> b!4173506 (= b_free!120925 (not b_next!121629))))

(declare-fun tp!1275312 () Bool)

(declare-fun b_and!326083 () Bool)

(assert (=> b!4173506 (= tp!1275312 b_and!326083)))

(declare-fun b!4173510 () Bool)

(declare-fun b_free!120927 () Bool)

(declare-fun b_next!121631 () Bool)

(assert (=> b!4173510 (= b_free!120927 (not b_next!121631))))

(declare-fun tp!1275322 () Bool)

(declare-fun b_and!326085 () Bool)

(assert (=> b!4173510 (= tp!1275322 b_and!326085)))

(declare-fun b_free!120929 () Bool)

(declare-fun b_next!121633 () Bool)

(assert (=> b!4173510 (= b_free!120929 (not b_next!121633))))

(declare-fun tp!1275321 () Bool)

(declare-fun b_and!326087 () Bool)

(assert (=> b!4173510 (= tp!1275321 b_and!326087)))

(declare-fun b!4173505 () Bool)

(declare-fun e!2591004 () Bool)

(assert (=> b!4173505 (= e!2591004 true)))

(declare-datatypes ((C!25188 0))(
  ( (C!25189 (val!14756 Int)) )
))
(declare-datatypes ((List!45881 0))(
  ( (Nil!45757) (Cons!45757 (h!51177 C!25188) (t!344576 List!45881)) )
))
(declare-fun input!3342 () List!45881)

(declare-datatypes ((LexerInterface!7187 0))(
  ( (LexerInterfaceExt!7184 (__x!27869 Int)) (Lexer!7185) )
))
(declare-fun thiss!25986 () LexerInterface!7187)

(declare-datatypes ((List!45882 0))(
  ( (Nil!45758) (Cons!45758 (h!51178 (_ BitVec 16)) (t!344577 List!45882)) )
))
(declare-datatypes ((TokenValue!7824 0))(
  ( (FloatLiteralValue!15648 (text!55213 List!45882)) (TokenValueExt!7823 (__x!27870 Int)) (Broken!39120 (value!236935 List!45882)) (Object!7947) (End!7824) (Def!7824) (Underscore!7824) (Match!7824) (Else!7824) (Error!7824) (Case!7824) (If!7824) (Extends!7824) (Abstract!7824) (Class!7824) (Val!7824) (DelimiterValue!15648 (del!7884 List!45882)) (KeywordValue!7830 (value!236936 List!45882)) (CommentValue!15648 (value!236937 List!45882)) (WhitespaceValue!15648 (value!236938 List!45882)) (IndentationValue!7824 (value!236939 List!45882)) (String!52985) (Int32!7824) (Broken!39121 (value!236940 List!45882)) (Boolean!7825) (Unit!64826) (OperatorValue!7827 (op!7884 List!45882)) (IdentifierValue!15648 (value!236941 List!45882)) (IdentifierValue!15649 (value!236942 List!45882)) (WhitespaceValue!15649 (value!236943 List!45882)) (True!15648) (False!15648) (Broken!39122 (value!236944 List!45882)) (Broken!39123 (value!236945 List!45882)) (True!15649) (RightBrace!7824) (RightBracket!7824) (Colon!7824) (Null!7824) (Comma!7824) (LeftBracket!7824) (False!15649) (LeftBrace!7824) (ImaginaryLiteralValue!7824 (text!55214 List!45882)) (StringLiteralValue!23472 (value!236946 List!45882)) (EOFValue!7824 (value!236947 List!45882)) (IdentValue!7824 (value!236948 List!45882)) (DelimiterValue!15649 (value!236949 List!45882)) (DedentValue!7824 (value!236950 List!45882)) (NewLineValue!7824 (value!236951 List!45882)) (IntegerValue!23472 (value!236952 (_ BitVec 32)) (text!55215 List!45882)) (IntegerValue!23473 (value!236953 Int) (text!55216 List!45882)) (Times!7824) (Or!7824) (Equal!7824) (Minus!7824) (Broken!39124 (value!236954 List!45882)) (And!7824) (Div!7824) (LessEqual!7824) (Mod!7824) (Concat!20323) (Not!7824) (Plus!7824) (SpaceValue!7824 (value!236955 List!45882)) (IntegerValue!23474 (value!236956 Int) (text!55217 List!45882)) (StringLiteralValue!23473 (text!55218 List!45882)) (FloatLiteralValue!15649 (text!55219 List!45882)) (BytesLiteralValue!7824 (value!236957 List!45882)) (CommentValue!15649 (value!236958 List!45882)) (StringLiteralValue!23474 (value!236959 List!45882)) (ErrorTokenValue!7824 (msg!7885 List!45882)) )
))
(declare-datatypes ((IArray!27615 0))(
  ( (IArray!27616 (innerList!13865 List!45881)) )
))
(declare-datatypes ((Conc!13805 0))(
  ( (Node!13805 (left!34100 Conc!13805) (right!34430 Conc!13805) (csize!27840 Int) (cheight!14016 Int)) (Leaf!21345 (xs!17111 IArray!27615) (csize!27841 Int)) (Empty!13805) )
))
(declare-datatypes ((BalanceConc!27204 0))(
  ( (BalanceConc!27205 (c!713200 Conc!13805)) )
))
(declare-datatypes ((Regex!12499 0))(
  ( (ElementMatch!12499 (c!713201 C!25188)) (Concat!20324 (regOne!25510 Regex!12499) (regTwo!25510 Regex!12499)) (EmptyExpr!12499) (Star!12499 (reg!12828 Regex!12499)) (EmptyLang!12499) (Union!12499 (regOne!25511 Regex!12499) (regTwo!25511 Regex!12499)) )
))
(declare-datatypes ((String!52986 0))(
  ( (String!52987 (value!236960 String)) )
))
(declare-datatypes ((TokenValueInjection!15076 0))(
  ( (TokenValueInjection!15077 (toValue!10278 Int) (toChars!10137 Int)) )
))
(declare-datatypes ((Rule!14988 0))(
  ( (Rule!14989 (regex!7594 Regex!12499) (tag!8458 String!52986) (isSeparator!7594 Bool) (transformation!7594 TokenValueInjection!15076)) )
))
(declare-fun rBis!167 () Rule!14988)

(declare-datatypes ((Token!13902 0))(
  ( (Token!13903 (value!236961 TokenValue!7824) (rule!10644 Rule!14988) (size!33587 Int) (originalCharacters!7982 List!45881)) )
))
(declare-datatypes ((tuple2!43606 0))(
  ( (tuple2!43607 (_1!24937 Token!13902) (_2!24937 List!45881)) )
))
(declare-datatypes ((Option!9790 0))(
  ( (None!9789) (Some!9789 (v!40585 tuple2!43606)) )
))
(declare-fun lt!1486063 () Option!9790)

(declare-fun maxPrefixOneRule!3198 (LexerInterface!7187 Rule!14988 List!45881) Option!9790)

(assert (=> b!4173505 (= lt!1486063 (maxPrefixOneRule!3198 thiss!25986 rBis!167 input!3342))))

(declare-datatypes ((Unit!64827 0))(
  ( (Unit!64828) )
))
(declare-fun lt!1486067 () Unit!64827)

(declare-datatypes ((List!45883 0))(
  ( (Nil!45759) (Cons!45759 (h!51179 Rule!14988) (t!344578 List!45883)) )
))
(declare-fun rules!3843 () List!45883)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2326 (LexerInterface!7187 Rule!14988 List!45883) Unit!64827)

(assert (=> b!4173505 (= lt!1486067 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2326 thiss!25986 rBis!167 rules!3843))))

(declare-fun lt!1486064 () Int)

(declare-fun size!33588 (List!45881) Int)

(assert (=> b!4173505 (<= lt!1486064 (size!33588 input!3342))))

(declare-fun lt!1486066 () Unit!64827)

(declare-fun pBis!107 () List!45881)

(declare-fun lemmaIsPrefixThenSmallerEqSize!483 (List!45881 List!45881) Unit!64827)

(assert (=> b!4173505 (= lt!1486066 (lemmaIsPrefixThenSmallerEqSize!483 pBis!107 input!3342))))

(declare-fun e!2590997 () Bool)

(assert (=> b!4173506 (= e!2590997 (and tp!1275310 tp!1275312))))

(declare-fun b!4173507 () Bool)

(declare-fun res!1710319 () Bool)

(declare-fun e!2591000 () Bool)

(assert (=> b!4173507 (=> (not res!1710319) (not e!2591000))))

(declare-fun r!4142 () Rule!14988)

(declare-fun ruleValid!3312 (LexerInterface!7187 Rule!14988) Bool)

(assert (=> b!4173507 (= res!1710319 (ruleValid!3312 thiss!25986 r!4142))))

(declare-fun b!4173508 () Bool)

(declare-fun e!2590999 () Bool)

(declare-fun tp_is_empty!21961 () Bool)

(declare-fun tp!1275315 () Bool)

(assert (=> b!4173508 (= e!2590999 (and tp_is_empty!21961 tp!1275315))))

(declare-fun b!4173509 () Bool)

(declare-fun res!1710320 () Bool)

(assert (=> b!4173509 (=> res!1710320 e!2591004)))

(declare-fun lt!1486065 () Option!9790)

(declare-fun maxPrefix!4239 (LexerInterface!7187 List!45883 List!45881) Option!9790)

(assert (=> b!4173509 (= res!1710320 (not (= (maxPrefix!4239 thiss!25986 rules!3843 input!3342) lt!1486065)))))

(declare-fun e!2591006 () Bool)

(assert (=> b!4173510 (= e!2591006 (and tp!1275322 tp!1275321))))

(declare-fun b!4173511 () Bool)

(declare-fun res!1710323 () Bool)

(assert (=> b!4173511 (=> (not res!1710323) (not e!2591000))))

(declare-fun validRegex!5616 (Regex!12499) Bool)

(assert (=> b!4173511 (= res!1710323 (validRegex!5616 (regex!7594 r!4142)))))

(declare-fun b!4173512 () Bool)

(declare-fun res!1710317 () Bool)

(assert (=> b!4173512 (=> (not res!1710317) (not e!2591000))))

(declare-fun contains!9397 (List!45883 Rule!14988) Bool)

(assert (=> b!4173512 (= res!1710317 (contains!9397 rules!3843 r!4142))))

(declare-fun b!4173513 () Bool)

(declare-fun res!1710313 () Bool)

(assert (=> b!4173513 (=> (not res!1710313) (not e!2591000))))

(declare-fun isPrefix!4451 (List!45881 List!45881) Bool)

(assert (=> b!4173513 (= res!1710313 (isPrefix!4451 pBis!107 input!3342))))

(declare-fun b!4173514 () Bool)

(declare-fun res!1710318 () Bool)

(assert (=> b!4173514 (=> (not res!1710318) (not e!2591000))))

(declare-fun p!2959 () List!45881)

(assert (=> b!4173514 (= res!1710318 (isPrefix!4451 p!2959 input!3342))))

(declare-fun b!4173515 () Bool)

(declare-fun res!1710314 () Bool)

(assert (=> b!4173515 (=> (not res!1710314) (not e!2591000))))

(assert (=> b!4173515 (= res!1710314 (contains!9397 rules!3843 rBis!167))))

(declare-fun b!4173516 () Bool)

(declare-fun e!2590996 () Bool)

(declare-fun tp!1275318 () Bool)

(assert (=> b!4173516 (= e!2590996 (and tp_is_empty!21961 tp!1275318))))

(declare-fun b!4173517 () Bool)

(declare-fun res!1710325 () Bool)

(assert (=> b!4173517 (=> (not res!1710325) (not e!2591000))))

(declare-fun matchR!6238 (Regex!12499 List!45881) Bool)

(assert (=> b!4173517 (= res!1710325 (matchR!6238 (regex!7594 r!4142) p!2959))))

(declare-fun b!4173518 () Bool)

(declare-fun e!2591007 () Bool)

(declare-fun e!2590998 () Bool)

(declare-fun tp!1275316 () Bool)

(assert (=> b!4173518 (= e!2591007 (and e!2590998 tp!1275316))))

(declare-fun b!4173519 () Bool)

(declare-fun res!1710316 () Bool)

(assert (=> b!4173519 (=> (not res!1710316) (not e!2591000))))

(declare-fun rulesInvariant!6400 (LexerInterface!7187 List!45883) Bool)

(assert (=> b!4173519 (= res!1710316 (rulesInvariant!6400 thiss!25986 rules!3843))))

(declare-fun e!2591002 () Bool)

(assert (=> b!4173520 (= e!2591002 (and tp!1275320 tp!1275314))))

(declare-fun b!4173521 () Bool)

(declare-fun e!2591003 () Bool)

(assert (=> b!4173521 (= e!2591003 e!2591004)))

(declare-fun res!1710321 () Bool)

(assert (=> b!4173521 (=> res!1710321 e!2591004)))

(declare-fun lt!1486070 () Int)

(assert (=> b!4173521 (= res!1710321 (<= lt!1486064 lt!1486070))))

(assert (=> b!4173521 (= lt!1486064 (size!33588 pBis!107))))

(declare-fun b!4173522 () Bool)

(declare-fun res!1710315 () Bool)

(assert (=> b!4173522 (=> (not res!1710315) (not e!2591000))))

(declare-fun isEmpty!27063 (List!45883) Bool)

(assert (=> b!4173522 (= res!1710315 (not (isEmpty!27063 rules!3843)))))

(declare-fun res!1710322 () Bool)

(assert (=> start!397918 (=> (not res!1710322) (not e!2591000))))

(get-info :version)

(assert (=> start!397918 (= res!1710322 ((_ is Lexer!7185) thiss!25986))))

(assert (=> start!397918 e!2591000))

(assert (=> start!397918 true))

(declare-fun e!2590994 () Bool)

(assert (=> start!397918 e!2590994))

(declare-fun e!2591001 () Bool)

(assert (=> start!397918 e!2591001))

(assert (=> start!397918 e!2591007))

(assert (=> start!397918 e!2590996))

(assert (=> start!397918 e!2590999))

(declare-fun e!2590995 () Bool)

(assert (=> start!397918 e!2590995))

(declare-fun b!4173523 () Bool)

(declare-fun tp!1275317 () Bool)

(declare-fun inv!60286 (String!52986) Bool)

(declare-fun inv!60288 (TokenValueInjection!15076) Bool)

(assert (=> b!4173523 (= e!2590994 (and tp!1275317 (inv!60286 (tag!8458 rBis!167)) (inv!60288 (transformation!7594 rBis!167)) e!2591002))))

(declare-fun b!4173524 () Bool)

(declare-fun tp!1275319 () Bool)

(assert (=> b!4173524 (= e!2590995 (and tp_is_empty!21961 tp!1275319))))

(declare-fun tp!1275311 () Bool)

(declare-fun b!4173525 () Bool)

(assert (=> b!4173525 (= e!2591001 (and tp!1275311 (inv!60286 (tag!8458 r!4142)) (inv!60288 (transformation!7594 r!4142)) e!2591006))))

(declare-fun b!4173526 () Bool)

(declare-fun tp!1275313 () Bool)

(assert (=> b!4173526 (= e!2590998 (and tp!1275313 (inv!60286 (tag!8458 (h!51179 rules!3843))) (inv!60288 (transformation!7594 (h!51179 rules!3843))) e!2590997))))

(declare-fun b!4173527 () Bool)

(assert (=> b!4173527 (= e!2591000 (not e!2591003))))

(declare-fun res!1710326 () Bool)

(assert (=> b!4173527 (=> res!1710326 e!2591003)))

(assert (=> b!4173527 (= res!1710326 (not (= (maxPrefixOneRule!3198 thiss!25986 r!4142 input!3342) lt!1486065)))))

(declare-fun lt!1486071 () TokenValue!7824)

(declare-fun getSuffix!2746 (List!45881 List!45881) List!45881)

(assert (=> b!4173527 (= lt!1486065 (Some!9789 (tuple2!43607 (Token!13903 lt!1486071 r!4142 lt!1486070 p!2959) (getSuffix!2746 input!3342 p!2959))))))

(assert (=> b!4173527 (= lt!1486070 (size!33588 p!2959))))

(declare-fun lt!1486072 () BalanceConc!27204)

(declare-fun apply!10559 (TokenValueInjection!15076 BalanceConc!27204) TokenValue!7824)

(assert (=> b!4173527 (= lt!1486071 (apply!10559 (transformation!7594 r!4142) lt!1486072))))

(assert (=> b!4173527 (isPrefix!4451 input!3342 input!3342)))

(declare-fun lt!1486069 () Unit!64827)

(declare-fun lemmaIsPrefixRefl!2880 (List!45881 List!45881) Unit!64827)

(assert (=> b!4173527 (= lt!1486069 (lemmaIsPrefixRefl!2880 input!3342 input!3342))))

(declare-fun lt!1486068 () Unit!64827)

(declare-fun lemmaSemiInverse!2360 (TokenValueInjection!15076 BalanceConc!27204) Unit!64827)

(assert (=> b!4173527 (= lt!1486068 (lemmaSemiInverse!2360 (transformation!7594 r!4142) lt!1486072))))

(declare-fun seqFromList!5619 (List!45881) BalanceConc!27204)

(assert (=> b!4173527 (= lt!1486072 (seqFromList!5619 p!2959))))

(declare-fun b!4173528 () Bool)

(declare-fun res!1710324 () Bool)

(assert (=> b!4173528 (=> res!1710324 e!2591004)))

(assert (=> b!4173528 (= res!1710324 (not (ruleValid!3312 thiss!25986 rBis!167)))))

(assert (= (and start!397918 res!1710322) b!4173514))

(assert (= (and b!4173514 res!1710318) b!4173513))

(assert (= (and b!4173513 res!1710313) b!4173522))

(assert (= (and b!4173522 res!1710315) b!4173519))

(assert (= (and b!4173519 res!1710316) b!4173512))

(assert (= (and b!4173512 res!1710317) b!4173515))

(assert (= (and b!4173515 res!1710314) b!4173511))

(assert (= (and b!4173511 res!1710323) b!4173517))

(assert (= (and b!4173517 res!1710325) b!4173507))

(assert (= (and b!4173507 res!1710319) b!4173527))

(assert (= (and b!4173527 (not res!1710326)) b!4173521))

(assert (= (and b!4173521 (not res!1710321)) b!4173528))

(assert (= (and b!4173528 (not res!1710324)) b!4173509))

(assert (= (and b!4173509 (not res!1710320)) b!4173505))

(assert (= b!4173523 b!4173520))

(assert (= start!397918 b!4173523))

(assert (= b!4173525 b!4173510))

(assert (= start!397918 b!4173525))

(assert (= b!4173526 b!4173506))

(assert (= b!4173518 b!4173526))

(assert (= (and start!397918 ((_ is Cons!45759) rules!3843)) b!4173518))

(assert (= (and start!397918 ((_ is Cons!45757) input!3342)) b!4173516))

(assert (= (and start!397918 ((_ is Cons!45757) pBis!107)) b!4173508))

(assert (= (and start!397918 ((_ is Cons!45757) p!2959)) b!4173524))

(declare-fun m!4763443 () Bool)

(assert (=> b!4173517 m!4763443))

(declare-fun m!4763445 () Bool)

(assert (=> b!4173522 m!4763445))

(declare-fun m!4763447 () Bool)

(assert (=> b!4173513 m!4763447))

(declare-fun m!4763449 () Bool)

(assert (=> b!4173527 m!4763449))

(declare-fun m!4763451 () Bool)

(assert (=> b!4173527 m!4763451))

(declare-fun m!4763453 () Bool)

(assert (=> b!4173527 m!4763453))

(declare-fun m!4763455 () Bool)

(assert (=> b!4173527 m!4763455))

(declare-fun m!4763457 () Bool)

(assert (=> b!4173527 m!4763457))

(declare-fun m!4763459 () Bool)

(assert (=> b!4173527 m!4763459))

(declare-fun m!4763461 () Bool)

(assert (=> b!4173527 m!4763461))

(declare-fun m!4763463 () Bool)

(assert (=> b!4173527 m!4763463))

(declare-fun m!4763465 () Bool)

(assert (=> b!4173505 m!4763465))

(declare-fun m!4763467 () Bool)

(assert (=> b!4173505 m!4763467))

(declare-fun m!4763469 () Bool)

(assert (=> b!4173505 m!4763469))

(declare-fun m!4763471 () Bool)

(assert (=> b!4173505 m!4763471))

(declare-fun m!4763473 () Bool)

(assert (=> b!4173525 m!4763473))

(declare-fun m!4763475 () Bool)

(assert (=> b!4173525 m!4763475))

(declare-fun m!4763477 () Bool)

(assert (=> b!4173509 m!4763477))

(declare-fun m!4763479 () Bool)

(assert (=> b!4173521 m!4763479))

(declare-fun m!4763481 () Bool)

(assert (=> b!4173511 m!4763481))

(declare-fun m!4763483 () Bool)

(assert (=> b!4173507 m!4763483))

(declare-fun m!4763485 () Bool)

(assert (=> b!4173512 m!4763485))

(declare-fun m!4763487 () Bool)

(assert (=> b!4173515 m!4763487))

(declare-fun m!4763489 () Bool)

(assert (=> b!4173526 m!4763489))

(declare-fun m!4763491 () Bool)

(assert (=> b!4173526 m!4763491))

(declare-fun m!4763493 () Bool)

(assert (=> b!4173528 m!4763493))

(declare-fun m!4763495 () Bool)

(assert (=> b!4173523 m!4763495))

(declare-fun m!4763497 () Bool)

(assert (=> b!4173523 m!4763497))

(declare-fun m!4763499 () Bool)

(assert (=> b!4173514 m!4763499))

(declare-fun m!4763501 () Bool)

(assert (=> b!4173519 m!4763501))

(check-sat tp_is_empty!21961 (not b!4173522) b_and!326077 (not b!4173516) (not b_next!121633) (not b!4173528) (not b_next!121623) (not b!4173515) (not b!4173524) (not b!4173518) (not b!4173508) (not b_next!121627) (not b!4173527) b_and!326085 (not b_next!121629) (not b_next!121625) (not b_next!121631) (not b!4173513) (not b!4173525) (not b!4173511) (not b!4173521) b_and!326087 (not b!4173512) (not b!4173517) b_and!326079 b_and!326081 (not b!4173523) (not b!4173507) (not b!4173526) (not b!4173505) (not b!4173509) b_and!326083 (not b!4173514) (not b!4173519))
(check-sat (not b_next!121631) b_and!326077 b_and!326087 (not b_next!121633) b_and!326079 (not b_next!121623) b_and!326081 (not b_next!121627) b_and!326085 (not b_next!121629) (not b_next!121625) b_and!326083)
