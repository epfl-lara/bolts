; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!398010 () Bool)

(assert start!398010)

(declare-fun b!4174339 () Bool)

(declare-fun b_free!120975 () Bool)

(declare-fun b_next!121679 () Bool)

(assert (=> b!4174339 (= b_free!120975 (not b_next!121679))))

(declare-fun tp!1275559 () Bool)

(declare-fun b_and!326169 () Bool)

(assert (=> b!4174339 (= tp!1275559 b_and!326169)))

(declare-fun b_free!120977 () Bool)

(declare-fun b_next!121681 () Bool)

(assert (=> b!4174339 (= b_free!120977 (not b_next!121681))))

(declare-fun tp!1275568 () Bool)

(declare-fun b_and!326171 () Bool)

(assert (=> b!4174339 (= tp!1275568 b_and!326171)))

(declare-fun b!4174350 () Bool)

(declare-fun b_free!120979 () Bool)

(declare-fun b_next!121683 () Bool)

(assert (=> b!4174350 (= b_free!120979 (not b_next!121683))))

(declare-fun tp!1275557 () Bool)

(declare-fun b_and!326173 () Bool)

(assert (=> b!4174350 (= tp!1275557 b_and!326173)))

(declare-fun b_free!120981 () Bool)

(declare-fun b_next!121685 () Bool)

(assert (=> b!4174350 (= b_free!120981 (not b_next!121685))))

(declare-fun tp!1275566 () Bool)

(declare-fun b_and!326175 () Bool)

(assert (=> b!4174350 (= tp!1275566 b_and!326175)))

(declare-fun b!4174361 () Bool)

(declare-fun b_free!120983 () Bool)

(declare-fun b_next!121687 () Bool)

(assert (=> b!4174361 (= b_free!120983 (not b_next!121687))))

(declare-fun tp!1275565 () Bool)

(declare-fun b_and!326177 () Bool)

(assert (=> b!4174361 (= tp!1275565 b_and!326177)))

(declare-fun b_free!120985 () Bool)

(declare-fun b_next!121689 () Bool)

(assert (=> b!4174361 (= b_free!120985 (not b_next!121689))))

(declare-fun tp!1275560 () Bool)

(declare-fun b_and!326179 () Bool)

(assert (=> b!4174361 (= tp!1275560 b_and!326179)))

(declare-fun b!4174338 () Bool)

(declare-fun res!1710797 () Bool)

(declare-fun e!2591520 () Bool)

(assert (=> b!4174338 (=> (not res!1710797) (not e!2591520))))

(declare-datatypes ((C!25196 0))(
  ( (C!25197 (val!14760 Int)) )
))
(declare-datatypes ((List!45895 0))(
  ( (Nil!45771) (Cons!45771 (h!51191 C!25196) (t!344622 List!45895)) )
))
(declare-fun pBis!107 () List!45895)

(declare-fun input!3342 () List!45895)

(declare-fun isPrefix!4455 (List!45895 List!45895) Bool)

(assert (=> b!4174338 (= res!1710797 (isPrefix!4455 pBis!107 input!3342))))

(declare-fun e!2591518 () Bool)

(assert (=> b!4174339 (= e!2591518 (and tp!1275559 tp!1275568))))

(declare-fun b!4174340 () Bool)

(declare-fun res!1710798 () Bool)

(assert (=> b!4174340 (=> (not res!1710798) (not e!2591520))))

(declare-datatypes ((List!45896 0))(
  ( (Nil!45772) (Cons!45772 (h!51192 (_ BitVec 16)) (t!344623 List!45896)) )
))
(declare-datatypes ((TokenValue!7828 0))(
  ( (FloatLiteralValue!15656 (text!55241 List!45896)) (TokenValueExt!7827 (__x!27877 Int)) (Broken!39140 (value!237049 List!45896)) (Object!7951) (End!7828) (Def!7828) (Underscore!7828) (Match!7828) (Else!7828) (Error!7828) (Case!7828) (If!7828) (Extends!7828) (Abstract!7828) (Class!7828) (Val!7828) (DelimiterValue!15656 (del!7888 List!45896)) (KeywordValue!7834 (value!237050 List!45896)) (CommentValue!15656 (value!237051 List!45896)) (WhitespaceValue!15656 (value!237052 List!45896)) (IndentationValue!7828 (value!237053 List!45896)) (String!53005) (Int32!7828) (Broken!39141 (value!237054 List!45896)) (Boolean!7829) (Unit!64838) (OperatorValue!7831 (op!7888 List!45896)) (IdentifierValue!15656 (value!237055 List!45896)) (IdentifierValue!15657 (value!237056 List!45896)) (WhitespaceValue!15657 (value!237057 List!45896)) (True!15656) (False!15656) (Broken!39142 (value!237058 List!45896)) (Broken!39143 (value!237059 List!45896)) (True!15657) (RightBrace!7828) (RightBracket!7828) (Colon!7828) (Null!7828) (Comma!7828) (LeftBracket!7828) (False!15657) (LeftBrace!7828) (ImaginaryLiteralValue!7828 (text!55242 List!45896)) (StringLiteralValue!23484 (value!237060 List!45896)) (EOFValue!7828 (value!237061 List!45896)) (IdentValue!7828 (value!237062 List!45896)) (DelimiterValue!15657 (value!237063 List!45896)) (DedentValue!7828 (value!237064 List!45896)) (NewLineValue!7828 (value!237065 List!45896)) (IntegerValue!23484 (value!237066 (_ BitVec 32)) (text!55243 List!45896)) (IntegerValue!23485 (value!237067 Int) (text!55244 List!45896)) (Times!7828) (Or!7828) (Equal!7828) (Minus!7828) (Broken!39144 (value!237068 List!45896)) (And!7828) (Div!7828) (LessEqual!7828) (Mod!7828) (Concat!20331) (Not!7828) (Plus!7828) (SpaceValue!7828 (value!237069 List!45896)) (IntegerValue!23486 (value!237070 Int) (text!55245 List!45896)) (StringLiteralValue!23485 (text!55246 List!45896)) (FloatLiteralValue!15657 (text!55247 List!45896)) (BytesLiteralValue!7828 (value!237071 List!45896)) (CommentValue!15657 (value!237072 List!45896)) (StringLiteralValue!23486 (value!237073 List!45896)) (ErrorTokenValue!7828 (msg!7889 List!45896)) )
))
(declare-datatypes ((IArray!27623 0))(
  ( (IArray!27624 (innerList!13869 List!45895)) )
))
(declare-datatypes ((Conc!13809 0))(
  ( (Node!13809 (left!34110 Conc!13809) (right!34440 Conc!13809) (csize!27848 Int) (cheight!14020 Int)) (Leaf!21351 (xs!17115 IArray!27623) (csize!27849 Int)) (Empty!13809) )
))
(declare-datatypes ((BalanceConc!27212 0))(
  ( (BalanceConc!27213 (c!713284 Conc!13809)) )
))
(declare-datatypes ((Regex!12503 0))(
  ( (ElementMatch!12503 (c!713285 C!25196)) (Concat!20332 (regOne!25518 Regex!12503) (regTwo!25518 Regex!12503)) (EmptyExpr!12503) (Star!12503 (reg!12832 Regex!12503)) (EmptyLang!12503) (Union!12503 (regOne!25519 Regex!12503) (regTwo!25519 Regex!12503)) )
))
(declare-datatypes ((String!53006 0))(
  ( (String!53007 (value!237074 String)) )
))
(declare-datatypes ((TokenValueInjection!15084 0))(
  ( (TokenValueInjection!15085 (toValue!10282 Int) (toChars!10141 Int)) )
))
(declare-datatypes ((Rule!14996 0))(
  ( (Rule!14997 (regex!7598 Regex!12503) (tag!8462 String!53006) (isSeparator!7598 Bool) (transformation!7598 TokenValueInjection!15084)) )
))
(declare-fun r!4142 () Rule!14996)

(declare-fun p!2959 () List!45895)

(declare-fun matchR!6242 (Regex!12503 List!45895) Bool)

(assert (=> b!4174340 (= res!1710798 (matchR!6242 (regex!7598 r!4142) p!2959))))

(declare-fun b!4174341 () Bool)

(declare-fun res!1710792 () Bool)

(assert (=> b!4174341 (=> (not res!1710792) (not e!2591520))))

(assert (=> b!4174341 (= res!1710792 (isPrefix!4455 p!2959 input!3342))))

(declare-fun res!1710791 () Bool)

(assert (=> start!398010 (=> (not res!1710791) (not e!2591520))))

(declare-datatypes ((LexerInterface!7191 0))(
  ( (LexerInterfaceExt!7188 (__x!27878 Int)) (Lexer!7189) )
))
(declare-fun thiss!25986 () LexerInterface!7191)

(get-info :version)

(assert (=> start!398010 (= res!1710791 ((_ is Lexer!7189) thiss!25986))))

(assert (=> start!398010 e!2591520))

(assert (=> start!398010 true))

(declare-fun e!2591508 () Bool)

(assert (=> start!398010 e!2591508))

(declare-fun e!2591517 () Bool)

(assert (=> start!398010 e!2591517))

(declare-fun e!2591515 () Bool)

(assert (=> start!398010 e!2591515))

(declare-fun e!2591510 () Bool)

(assert (=> start!398010 e!2591510))

(declare-fun e!2591521 () Bool)

(assert (=> start!398010 e!2591521))

(declare-fun e!2591507 () Bool)

(assert (=> start!398010 e!2591507))

(declare-fun b!4174342 () Bool)

(declare-fun tp!1275567 () Bool)

(declare-datatypes ((List!45897 0))(
  ( (Nil!45773) (Cons!45773 (h!51193 Rule!14996) (t!344624 List!45897)) )
))
(declare-fun rules!3843 () List!45897)

(declare-fun e!2591514 () Bool)

(declare-fun e!2591516 () Bool)

(declare-fun inv!60300 (String!53006) Bool)

(declare-fun inv!60302 (TokenValueInjection!15084) Bool)

(assert (=> b!4174342 (= e!2591516 (and tp!1275567 (inv!60300 (tag!8462 (h!51193 rules!3843))) (inv!60302 (transformation!7598 (h!51193 rules!3843))) e!2591514))))

(declare-fun b!4174343 () Bool)

(declare-fun tp_is_empty!21969 () Bool)

(declare-fun tp!1275556 () Bool)

(assert (=> b!4174343 (= e!2591510 (and tp_is_empty!21969 tp!1275556))))

(declare-fun b!4174344 () Bool)

(declare-fun res!1710796 () Bool)

(assert (=> b!4174344 (=> (not res!1710796) (not e!2591520))))

(declare-fun rBis!167 () Rule!14996)

(declare-fun contains!9401 (List!45897 Rule!14996) Bool)

(assert (=> b!4174344 (= res!1710796 (contains!9401 rules!3843 rBis!167))))

(declare-fun b!4174345 () Bool)

(declare-fun tp!1275562 () Bool)

(assert (=> b!4174345 (= e!2591521 (and tp_is_empty!21969 tp!1275562))))

(declare-fun b!4174346 () Bool)

(declare-fun tp!1275564 () Bool)

(assert (=> b!4174346 (= e!2591517 (and tp!1275564 (inv!60300 (tag!8462 r!4142)) (inv!60302 (transformation!7598 r!4142)) e!2591518))))

(declare-fun b!4174347 () Bool)

(declare-fun e!2591511 () Bool)

(declare-datatypes ((Token!13910 0))(
  ( (Token!13911 (value!237075 TokenValue!7828) (rule!10650 Rule!14996) (size!33597 Int) (originalCharacters!7986 List!45895)) )
))
(declare-datatypes ((tuple2!43618 0))(
  ( (tuple2!43619 (_1!24943 Token!13910) (_2!24943 List!45895)) )
))
(declare-datatypes ((Option!9794 0))(
  ( (None!9793) (Some!9793 (v!40591 tuple2!43618)) )
))
(declare-fun lt!1486332 () Option!9794)

(declare-fun isDefined!7320 (Option!9794) Bool)

(assert (=> b!4174347 (= e!2591511 (isDefined!7320 lt!1486332))))

(declare-fun b!4174348 () Bool)

(declare-fun res!1710804 () Bool)

(assert (=> b!4174348 (=> (not res!1710804) (not e!2591520))))

(declare-fun isEmpty!27072 (List!45897) Bool)

(assert (=> b!4174348 (= res!1710804 (not (isEmpty!27072 rules!3843)))))

(declare-fun b!4174349 () Bool)

(declare-fun e!2591506 () Bool)

(declare-fun e!2591512 () Bool)

(assert (=> b!4174349 (= e!2591506 e!2591512)))

(declare-fun res!1710801 () Bool)

(assert (=> b!4174349 (=> res!1710801 e!2591512)))

(declare-fun lt!1486328 () Int)

(declare-fun lt!1486334 () Int)

(assert (=> b!4174349 (= res!1710801 (<= lt!1486328 lt!1486334))))

(declare-fun size!33598 (List!45895) Int)

(assert (=> b!4174349 (= lt!1486328 (size!33598 pBis!107))))

(assert (=> b!4174350 (= e!2591514 (and tp!1275557 tp!1275566))))

(declare-fun b!4174351 () Bool)

(declare-fun res!1710803 () Bool)

(assert (=> b!4174351 (=> res!1710803 e!2591512)))

(declare-fun lt!1486325 () Option!9794)

(declare-fun maxPrefix!4243 (LexerInterface!7191 List!45897 List!45895) Option!9794)

(assert (=> b!4174351 (= res!1710803 (not (= (maxPrefix!4243 thiss!25986 rules!3843 input!3342) lt!1486325)))))

(declare-fun b!4174352 () Bool)

(declare-fun res!1710795 () Bool)

(assert (=> b!4174352 (=> (not res!1710795) (not e!2591520))))

(declare-fun validRegex!5620 (Regex!12503) Bool)

(assert (=> b!4174352 (= res!1710795 (validRegex!5620 (regex!7598 r!4142)))))

(declare-fun b!4174353 () Bool)

(assert (=> b!4174353 (= e!2591512 e!2591511)))

(declare-fun res!1710790 () Bool)

(assert (=> b!4174353 (=> res!1710790 e!2591511)))

(declare-fun isEmpty!27073 (Option!9794) Bool)

(assert (=> b!4174353 (= res!1710790 (isEmpty!27073 lt!1486332))))

(declare-fun maxPrefixOneRule!3202 (LexerInterface!7191 Rule!14996 List!45895) Option!9794)

(assert (=> b!4174353 (= lt!1486332 (maxPrefixOneRule!3202 thiss!25986 rBis!167 input!3342))))

(declare-datatypes ((Unit!64839 0))(
  ( (Unit!64840) )
))
(declare-fun lt!1486329 () Unit!64839)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2330 (LexerInterface!7191 Rule!14996 List!45897) Unit!64839)

(assert (=> b!4174353 (= lt!1486329 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2330 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4174353 (<= lt!1486328 (size!33598 input!3342))))

(declare-fun lt!1486333 () Unit!64839)

(declare-fun lemmaIsPrefixThenSmallerEqSize!487 (List!45895 List!45895) Unit!64839)

(assert (=> b!4174353 (= lt!1486333 (lemmaIsPrefixThenSmallerEqSize!487 pBis!107 input!3342))))

(declare-fun b!4174354 () Bool)

(declare-fun res!1710793 () Bool)

(assert (=> b!4174354 (=> res!1710793 e!2591512)))

(declare-fun ruleValid!3316 (LexerInterface!7191 Rule!14996) Bool)

(assert (=> b!4174354 (= res!1710793 (not (ruleValid!3316 thiss!25986 rBis!167)))))

(declare-fun b!4174355 () Bool)

(declare-fun res!1710800 () Bool)

(assert (=> b!4174355 (=> (not res!1710800) (not e!2591520))))

(assert (=> b!4174355 (= res!1710800 (contains!9401 rules!3843 r!4142))))

(declare-fun b!4174356 () Bool)

(declare-fun tp!1275558 () Bool)

(assert (=> b!4174356 (= e!2591515 (and e!2591516 tp!1275558))))

(declare-fun b!4174357 () Bool)

(assert (=> b!4174357 (= e!2591520 (not e!2591506))))

(declare-fun res!1710802 () Bool)

(assert (=> b!4174357 (=> res!1710802 e!2591506)))

(assert (=> b!4174357 (= res!1710802 (not (= (maxPrefixOneRule!3202 thiss!25986 r!4142 input!3342) lt!1486325)))))

(declare-fun lt!1486327 () TokenValue!7828)

(declare-fun getSuffix!2750 (List!45895 List!45895) List!45895)

(assert (=> b!4174357 (= lt!1486325 (Some!9793 (tuple2!43619 (Token!13911 lt!1486327 r!4142 lt!1486334 p!2959) (getSuffix!2750 input!3342 p!2959))))))

(assert (=> b!4174357 (= lt!1486334 (size!33598 p!2959))))

(declare-fun lt!1486326 () BalanceConc!27212)

(declare-fun apply!10563 (TokenValueInjection!15084 BalanceConc!27212) TokenValue!7828)

(assert (=> b!4174357 (= lt!1486327 (apply!10563 (transformation!7598 r!4142) lt!1486326))))

(assert (=> b!4174357 (isPrefix!4455 input!3342 input!3342)))

(declare-fun lt!1486331 () Unit!64839)

(declare-fun lemmaIsPrefixRefl!2884 (List!45895 List!45895) Unit!64839)

(assert (=> b!4174357 (= lt!1486331 (lemmaIsPrefixRefl!2884 input!3342 input!3342))))

(declare-fun lt!1486330 () Unit!64839)

(declare-fun lemmaSemiInverse!2364 (TokenValueInjection!15084 BalanceConc!27212) Unit!64839)

(assert (=> b!4174357 (= lt!1486330 (lemmaSemiInverse!2364 (transformation!7598 r!4142) lt!1486326))))

(declare-fun seqFromList!5623 (List!45895) BalanceConc!27212)

(assert (=> b!4174357 (= lt!1486326 (seqFromList!5623 p!2959))))

(declare-fun b!4174358 () Bool)

(declare-fun tp!1275561 () Bool)

(assert (=> b!4174358 (= e!2591507 (and tp_is_empty!21969 tp!1275561))))

(declare-fun b!4174359 () Bool)

(declare-fun res!1710794 () Bool)

(assert (=> b!4174359 (=> (not res!1710794) (not e!2591520))))

(declare-fun rulesInvariant!6404 (LexerInterface!7191 List!45897) Bool)

(assert (=> b!4174359 (= res!1710794 (rulesInvariant!6404 thiss!25986 rules!3843))))

(declare-fun b!4174360 () Bool)

(declare-fun res!1710799 () Bool)

(assert (=> b!4174360 (=> (not res!1710799) (not e!2591520))))

(assert (=> b!4174360 (= res!1710799 (ruleValid!3316 thiss!25986 r!4142))))

(declare-fun e!2591519 () Bool)

(assert (=> b!4174361 (= e!2591519 (and tp!1275565 tp!1275560))))

(declare-fun tp!1275563 () Bool)

(declare-fun b!4174362 () Bool)

(assert (=> b!4174362 (= e!2591508 (and tp!1275563 (inv!60300 (tag!8462 rBis!167)) (inv!60302 (transformation!7598 rBis!167)) e!2591519))))

(assert (= (and start!398010 res!1710791) b!4174341))

(assert (= (and b!4174341 res!1710792) b!4174338))

(assert (= (and b!4174338 res!1710797) b!4174348))

(assert (= (and b!4174348 res!1710804) b!4174359))

(assert (= (and b!4174359 res!1710794) b!4174355))

(assert (= (and b!4174355 res!1710800) b!4174344))

(assert (= (and b!4174344 res!1710796) b!4174352))

(assert (= (and b!4174352 res!1710795) b!4174340))

(assert (= (and b!4174340 res!1710798) b!4174360))

(assert (= (and b!4174360 res!1710799) b!4174357))

(assert (= (and b!4174357 (not res!1710802)) b!4174349))

(assert (= (and b!4174349 (not res!1710801)) b!4174354))

(assert (= (and b!4174354 (not res!1710793)) b!4174351))

(assert (= (and b!4174351 (not res!1710803)) b!4174353))

(assert (= (and b!4174353 (not res!1710790)) b!4174347))

(assert (= b!4174362 b!4174361))

(assert (= start!398010 b!4174362))

(assert (= b!4174346 b!4174339))

(assert (= start!398010 b!4174346))

(assert (= b!4174342 b!4174350))

(assert (= b!4174356 b!4174342))

(assert (= (and start!398010 ((_ is Cons!45773) rules!3843)) b!4174356))

(assert (= (and start!398010 ((_ is Cons!45771) input!3342)) b!4174343))

(assert (= (and start!398010 ((_ is Cons!45771) pBis!107)) b!4174345))

(assert (= (and start!398010 ((_ is Cons!45771) p!2959)) b!4174358))

(declare-fun m!4764155 () Bool)

(assert (=> b!4174344 m!4764155))

(declare-fun m!4764157 () Bool)

(assert (=> b!4174340 m!4764157))

(declare-fun m!4764159 () Bool)

(assert (=> b!4174360 m!4764159))

(declare-fun m!4764161 () Bool)

(assert (=> b!4174338 m!4764161))

(declare-fun m!4764163 () Bool)

(assert (=> b!4174355 m!4764163))

(declare-fun m!4764165 () Bool)

(assert (=> b!4174352 m!4764165))

(declare-fun m!4764167 () Bool)

(assert (=> b!4174347 m!4764167))

(declare-fun m!4764169 () Bool)

(assert (=> b!4174353 m!4764169))

(declare-fun m!4764171 () Bool)

(assert (=> b!4174353 m!4764171))

(declare-fun m!4764173 () Bool)

(assert (=> b!4174353 m!4764173))

(declare-fun m!4764175 () Bool)

(assert (=> b!4174353 m!4764175))

(declare-fun m!4764177 () Bool)

(assert (=> b!4174353 m!4764177))

(declare-fun m!4764179 () Bool)

(assert (=> b!4174348 m!4764179))

(declare-fun m!4764181 () Bool)

(assert (=> b!4174349 m!4764181))

(declare-fun m!4764183 () Bool)

(assert (=> b!4174362 m!4764183))

(declare-fun m!4764185 () Bool)

(assert (=> b!4174362 m!4764185))

(declare-fun m!4764187 () Bool)

(assert (=> b!4174357 m!4764187))

(declare-fun m!4764189 () Bool)

(assert (=> b!4174357 m!4764189))

(declare-fun m!4764191 () Bool)

(assert (=> b!4174357 m!4764191))

(declare-fun m!4764193 () Bool)

(assert (=> b!4174357 m!4764193))

(declare-fun m!4764195 () Bool)

(assert (=> b!4174357 m!4764195))

(declare-fun m!4764197 () Bool)

(assert (=> b!4174357 m!4764197))

(declare-fun m!4764199 () Bool)

(assert (=> b!4174357 m!4764199))

(declare-fun m!4764201 () Bool)

(assert (=> b!4174357 m!4764201))

(declare-fun m!4764203 () Bool)

(assert (=> b!4174346 m!4764203))

(declare-fun m!4764205 () Bool)

(assert (=> b!4174346 m!4764205))

(declare-fun m!4764207 () Bool)

(assert (=> b!4174341 m!4764207))

(declare-fun m!4764209 () Bool)

(assert (=> b!4174351 m!4764209))

(declare-fun m!4764211 () Bool)

(assert (=> b!4174359 m!4764211))

(declare-fun m!4764213 () Bool)

(assert (=> b!4174342 m!4764213))

(declare-fun m!4764215 () Bool)

(assert (=> b!4174342 m!4764215))

(declare-fun m!4764217 () Bool)

(assert (=> b!4174354 m!4764217))

(check-sat tp_is_empty!21969 b_and!326169 b_and!326175 (not b!4174355) (not b!4174342) (not b_next!121685) (not b_next!121683) (not b!4174353) b_and!326171 (not b!4174357) (not b!4174358) (not b!4174346) (not b!4174349) (not b!4174340) (not b!4174352) (not b!4174348) (not b!4174341) (not b!4174362) (not b!4174338) (not b_next!121681) (not b!4174347) b_and!326173 b_and!326177 b_and!326179 (not b!4174360) (not b!4174354) (not b!4174344) (not b_next!121679) (not b!4174351) (not b!4174359) (not b!4174343) (not b!4174356) (not b!4174345) (not b_next!121689) (not b_next!121687))
(check-sat b_and!326169 b_and!326175 (not b_next!121681) b_and!326173 (not b_next!121685) (not b_next!121683) b_and!326171 (not b_next!121679) b_and!326177 b_and!326179 (not b_next!121689) (not b_next!121687))
(get-model)

(declare-fun d!1232768 () Bool)

(assert (=> d!1232768 (= (inv!60300 (tag!8462 rBis!167)) (= (mod (str.len (value!237074 (tag!8462 rBis!167))) 2) 0))))

(assert (=> b!4174362 d!1232768))

(declare-fun d!1232770 () Bool)

(declare-fun res!1710815 () Bool)

(declare-fun e!2591525 () Bool)

(assert (=> d!1232770 (=> (not res!1710815) (not e!2591525))))

(declare-fun semiInverseModEq!3294 (Int Int) Bool)

(assert (=> d!1232770 (= res!1710815 (semiInverseModEq!3294 (toChars!10141 (transformation!7598 rBis!167)) (toValue!10282 (transformation!7598 rBis!167))))))

(assert (=> d!1232770 (= (inv!60302 (transformation!7598 rBis!167)) e!2591525)))

(declare-fun b!4174365 () Bool)

(declare-fun equivClasses!3193 (Int Int) Bool)

(assert (=> b!4174365 (= e!2591525 (equivClasses!3193 (toChars!10141 (transformation!7598 rBis!167)) (toValue!10282 (transformation!7598 rBis!167))))))

(assert (= (and d!1232770 res!1710815) b!4174365))

(declare-fun m!4764219 () Bool)

(assert (=> d!1232770 m!4764219))

(declare-fun m!4764221 () Bool)

(assert (=> b!4174365 m!4764221))

(assert (=> b!4174362 d!1232770))

(declare-fun d!1232772 () Bool)

(declare-fun e!2591564 () Bool)

(assert (=> d!1232772 e!2591564))

(declare-fun res!1710874 () Bool)

(assert (=> d!1232772 (=> res!1710874 e!2591564)))

(declare-fun lt!1486379 () Option!9794)

(assert (=> d!1232772 (= res!1710874 (isEmpty!27073 lt!1486379))))

(declare-fun e!2591562 () Option!9794)

(assert (=> d!1232772 (= lt!1486379 e!2591562)))

(declare-fun c!713298 () Bool)

(assert (=> d!1232772 (= c!713298 (and ((_ is Cons!45773) rules!3843) ((_ is Nil!45773) (t!344624 rules!3843))))))

(declare-fun lt!1486376 () Unit!64839)

(declare-fun lt!1486377 () Unit!64839)

(assert (=> d!1232772 (= lt!1486376 lt!1486377)))

(assert (=> d!1232772 (isPrefix!4455 input!3342 input!3342)))

(assert (=> d!1232772 (= lt!1486377 (lemmaIsPrefixRefl!2884 input!3342 input!3342))))

(declare-fun rulesValidInductive!2800 (LexerInterface!7191 List!45897) Bool)

(assert (=> d!1232772 (rulesValidInductive!2800 thiss!25986 rules!3843)))

(assert (=> d!1232772 (= (maxPrefix!4243 thiss!25986 rules!3843 input!3342) lt!1486379)))

(declare-fun b!4174442 () Bool)

(declare-fun e!2591563 () Bool)

(declare-fun get!14862 (Option!9794) tuple2!43618)

(assert (=> b!4174442 (= e!2591563 (contains!9401 rules!3843 (rule!10650 (_1!24943 (get!14862 lt!1486379)))))))

(declare-fun b!4174443 () Bool)

(declare-fun res!1710873 () Bool)

(assert (=> b!4174443 (=> (not res!1710873) (not e!2591563))))

(declare-fun list!16533 (BalanceConc!27212) List!45895)

(declare-fun charsOf!5039 (Token!13910) BalanceConc!27212)

(assert (=> b!4174443 (= res!1710873 (= (list!16533 (charsOf!5039 (_1!24943 (get!14862 lt!1486379)))) (originalCharacters!7986 (_1!24943 (get!14862 lt!1486379)))))))

(declare-fun b!4174444 () Bool)

(declare-fun res!1710872 () Bool)

(assert (=> b!4174444 (=> (not res!1710872) (not e!2591563))))

(declare-fun ++!11676 (List!45895 List!45895) List!45895)

(assert (=> b!4174444 (= res!1710872 (= (++!11676 (list!16533 (charsOf!5039 (_1!24943 (get!14862 lt!1486379)))) (_2!24943 (get!14862 lt!1486379))) input!3342))))

(declare-fun b!4174445 () Bool)

(declare-fun res!1710871 () Bool)

(assert (=> b!4174445 (=> (not res!1710871) (not e!2591563))))

(assert (=> b!4174445 (= res!1710871 (matchR!6242 (regex!7598 (rule!10650 (_1!24943 (get!14862 lt!1486379)))) (list!16533 (charsOf!5039 (_1!24943 (get!14862 lt!1486379))))))))

(declare-fun b!4174446 () Bool)

(assert (=> b!4174446 (= e!2591564 e!2591563)))

(declare-fun res!1710876 () Bool)

(assert (=> b!4174446 (=> (not res!1710876) (not e!2591563))))

(assert (=> b!4174446 (= res!1710876 (isDefined!7320 lt!1486379))))

(declare-fun b!4174447 () Bool)

(declare-fun res!1710870 () Bool)

(assert (=> b!4174447 (=> (not res!1710870) (not e!2591563))))

(assert (=> b!4174447 (= res!1710870 (= (value!237075 (_1!24943 (get!14862 lt!1486379))) (apply!10563 (transformation!7598 (rule!10650 (_1!24943 (get!14862 lt!1486379)))) (seqFromList!5623 (originalCharacters!7986 (_1!24943 (get!14862 lt!1486379)))))))))

(declare-fun b!4174448 () Bool)

(declare-fun res!1710875 () Bool)

(assert (=> b!4174448 (=> (not res!1710875) (not e!2591563))))

(assert (=> b!4174448 (= res!1710875 (< (size!33598 (_2!24943 (get!14862 lt!1486379))) (size!33598 input!3342)))))

(declare-fun bm!291397 () Bool)

(declare-fun call!291402 () Option!9794)

(assert (=> bm!291397 (= call!291402 (maxPrefixOneRule!3202 thiss!25986 (h!51193 rules!3843) input!3342))))

(declare-fun b!4174449 () Bool)

(assert (=> b!4174449 (= e!2591562 call!291402)))

(declare-fun b!4174450 () Bool)

(declare-fun lt!1486375 () Option!9794)

(declare-fun lt!1486378 () Option!9794)

(assert (=> b!4174450 (= e!2591562 (ite (and ((_ is None!9793) lt!1486375) ((_ is None!9793) lt!1486378)) None!9793 (ite ((_ is None!9793) lt!1486378) lt!1486375 (ite ((_ is None!9793) lt!1486375) lt!1486378 (ite (>= (size!33597 (_1!24943 (v!40591 lt!1486375))) (size!33597 (_1!24943 (v!40591 lt!1486378)))) lt!1486375 lt!1486378)))))))

(assert (=> b!4174450 (= lt!1486375 call!291402)))

(assert (=> b!4174450 (= lt!1486378 (maxPrefix!4243 thiss!25986 (t!344624 rules!3843) input!3342))))

(assert (= (and d!1232772 c!713298) b!4174449))

(assert (= (and d!1232772 (not c!713298)) b!4174450))

(assert (= (or b!4174449 b!4174450) bm!291397))

(assert (= (and d!1232772 (not res!1710874)) b!4174446))

(assert (= (and b!4174446 res!1710876) b!4174443))

(assert (= (and b!4174443 res!1710873) b!4174448))

(assert (= (and b!4174448 res!1710875) b!4174444))

(assert (= (and b!4174444 res!1710872) b!4174447))

(assert (= (and b!4174447 res!1710870) b!4174445))

(assert (= (and b!4174445 res!1710871) b!4174442))

(declare-fun m!4764277 () Bool)

(assert (=> b!4174445 m!4764277))

(declare-fun m!4764279 () Bool)

(assert (=> b!4174445 m!4764279))

(assert (=> b!4174445 m!4764279))

(declare-fun m!4764281 () Bool)

(assert (=> b!4174445 m!4764281))

(assert (=> b!4174445 m!4764281))

(declare-fun m!4764283 () Bool)

(assert (=> b!4174445 m!4764283))

(declare-fun m!4764285 () Bool)

(assert (=> bm!291397 m!4764285))

(declare-fun m!4764287 () Bool)

(assert (=> b!4174446 m!4764287))

(assert (=> b!4174442 m!4764277))

(declare-fun m!4764289 () Bool)

(assert (=> b!4174442 m!4764289))

(assert (=> b!4174448 m!4764277))

(declare-fun m!4764291 () Bool)

(assert (=> b!4174448 m!4764291))

(assert (=> b!4174448 m!4764171))

(assert (=> b!4174443 m!4764277))

(assert (=> b!4174443 m!4764279))

(assert (=> b!4174443 m!4764279))

(assert (=> b!4174443 m!4764281))

(declare-fun m!4764293 () Bool)

(assert (=> b!4174450 m!4764293))

(assert (=> b!4174447 m!4764277))

(declare-fun m!4764295 () Bool)

(assert (=> b!4174447 m!4764295))

(assert (=> b!4174447 m!4764295))

(declare-fun m!4764297 () Bool)

(assert (=> b!4174447 m!4764297))

(declare-fun m!4764299 () Bool)

(assert (=> d!1232772 m!4764299))

(assert (=> d!1232772 m!4764191))

(assert (=> d!1232772 m!4764199))

(declare-fun m!4764301 () Bool)

(assert (=> d!1232772 m!4764301))

(assert (=> b!4174444 m!4764277))

(assert (=> b!4174444 m!4764279))

(assert (=> b!4174444 m!4764279))

(assert (=> b!4174444 m!4764281))

(assert (=> b!4174444 m!4764281))

(declare-fun m!4764303 () Bool)

(assert (=> b!4174444 m!4764303))

(assert (=> b!4174351 d!1232772))

(declare-fun b!4174469 () Bool)

(declare-fun e!2591585 () Bool)

(declare-fun e!2591580 () Bool)

(assert (=> b!4174469 (= e!2591585 e!2591580)))

(declare-fun res!1710890 () Bool)

(assert (=> b!4174469 (=> (not res!1710890) (not e!2591580))))

(declare-fun call!291410 () Bool)

(assert (=> b!4174469 (= res!1710890 call!291410)))

(declare-fun d!1232794 () Bool)

(declare-fun res!1710887 () Bool)

(declare-fun e!2591584 () Bool)

(assert (=> d!1232794 (=> res!1710887 e!2591584)))

(assert (=> d!1232794 (= res!1710887 ((_ is ElementMatch!12503) (regex!7598 r!4142)))))

(assert (=> d!1232794 (= (validRegex!5620 (regex!7598 r!4142)) e!2591584)))

(declare-fun b!4174470 () Bool)

(declare-fun call!291411 () Bool)

(assert (=> b!4174470 (= e!2591580 call!291411)))

(declare-fun c!713304 () Bool)

(declare-fun call!291409 () Bool)

(declare-fun bm!291404 () Bool)

(declare-fun c!713303 () Bool)

(assert (=> bm!291404 (= call!291409 (validRegex!5620 (ite c!713303 (reg!12832 (regex!7598 r!4142)) (ite c!713304 (regOne!25519 (regex!7598 r!4142)) (regOne!25518 (regex!7598 r!4142))))))))

(declare-fun b!4174471 () Bool)

(declare-fun e!2591582 () Bool)

(declare-fun e!2591579 () Bool)

(assert (=> b!4174471 (= e!2591582 e!2591579)))

(declare-fun res!1710891 () Bool)

(declare-fun nullable!4385 (Regex!12503) Bool)

(assert (=> b!4174471 (= res!1710891 (not (nullable!4385 (reg!12832 (regex!7598 r!4142)))))))

(assert (=> b!4174471 (=> (not res!1710891) (not e!2591579))))

(declare-fun b!4174472 () Bool)

(assert (=> b!4174472 (= e!2591579 call!291409)))

(declare-fun bm!291405 () Bool)

(assert (=> bm!291405 (= call!291411 (validRegex!5620 (ite c!713304 (regTwo!25519 (regex!7598 r!4142)) (regTwo!25518 (regex!7598 r!4142)))))))

(declare-fun bm!291406 () Bool)

(assert (=> bm!291406 (= call!291410 call!291409)))

(declare-fun b!4174473 () Bool)

(declare-fun res!1710888 () Bool)

(declare-fun e!2591583 () Bool)

(assert (=> b!4174473 (=> (not res!1710888) (not e!2591583))))

(assert (=> b!4174473 (= res!1710888 call!291410)))

(declare-fun e!2591581 () Bool)

(assert (=> b!4174473 (= e!2591581 e!2591583)))

(declare-fun b!4174474 () Bool)

(assert (=> b!4174474 (= e!2591582 e!2591581)))

(assert (=> b!4174474 (= c!713304 ((_ is Union!12503) (regex!7598 r!4142)))))

(declare-fun b!4174475 () Bool)

(assert (=> b!4174475 (= e!2591584 e!2591582)))

(assert (=> b!4174475 (= c!713303 ((_ is Star!12503) (regex!7598 r!4142)))))

(declare-fun b!4174476 () Bool)

(declare-fun res!1710889 () Bool)

(assert (=> b!4174476 (=> res!1710889 e!2591585)))

(assert (=> b!4174476 (= res!1710889 (not ((_ is Concat!20332) (regex!7598 r!4142))))))

(assert (=> b!4174476 (= e!2591581 e!2591585)))

(declare-fun b!4174477 () Bool)

(assert (=> b!4174477 (= e!2591583 call!291411)))

(assert (= (and d!1232794 (not res!1710887)) b!4174475))

(assert (= (and b!4174475 c!713303) b!4174471))

(assert (= (and b!4174475 (not c!713303)) b!4174474))

(assert (= (and b!4174471 res!1710891) b!4174472))

(assert (= (and b!4174474 c!713304) b!4174473))

(assert (= (and b!4174474 (not c!713304)) b!4174476))

(assert (= (and b!4174473 res!1710888) b!4174477))

(assert (= (and b!4174476 (not res!1710889)) b!4174469))

(assert (= (and b!4174469 res!1710890) b!4174470))

(assert (= (or b!4174477 b!4174470) bm!291405))

(assert (= (or b!4174473 b!4174469) bm!291406))

(assert (= (or b!4174472 bm!291406) bm!291404))

(declare-fun m!4764305 () Bool)

(assert (=> bm!291404 m!4764305))

(declare-fun m!4764307 () Bool)

(assert (=> b!4174471 m!4764307))

(declare-fun m!4764309 () Bool)

(assert (=> bm!291405 m!4764309))

(assert (=> b!4174352 d!1232794))

(declare-fun d!1232796 () Bool)

(declare-fun e!2591592 () Bool)

(assert (=> d!1232796 e!2591592))

(declare-fun res!1710901 () Bool)

(assert (=> d!1232796 (=> res!1710901 e!2591592)))

(declare-fun lt!1486382 () Bool)

(assert (=> d!1232796 (= res!1710901 (not lt!1486382))))

(declare-fun e!2591594 () Bool)

(assert (=> d!1232796 (= lt!1486382 e!2591594)))

(declare-fun res!1710902 () Bool)

(assert (=> d!1232796 (=> res!1710902 e!2591594)))

(assert (=> d!1232796 (= res!1710902 ((_ is Nil!45771) p!2959))))

(assert (=> d!1232796 (= (isPrefix!4455 p!2959 input!3342) lt!1486382)))

(declare-fun b!4174488 () Bool)

(declare-fun e!2591593 () Bool)

(declare-fun tail!6709 (List!45895) List!45895)

(assert (=> b!4174488 (= e!2591593 (isPrefix!4455 (tail!6709 p!2959) (tail!6709 input!3342)))))

(declare-fun b!4174486 () Bool)

(assert (=> b!4174486 (= e!2591594 e!2591593)))

(declare-fun res!1710900 () Bool)

(assert (=> b!4174486 (=> (not res!1710900) (not e!2591593))))

(assert (=> b!4174486 (= res!1710900 (not ((_ is Nil!45771) input!3342)))))

(declare-fun b!4174489 () Bool)

(assert (=> b!4174489 (= e!2591592 (>= (size!33598 input!3342) (size!33598 p!2959)))))

(declare-fun b!4174487 () Bool)

(declare-fun res!1710903 () Bool)

(assert (=> b!4174487 (=> (not res!1710903) (not e!2591593))))

(declare-fun head!8862 (List!45895) C!25196)

(assert (=> b!4174487 (= res!1710903 (= (head!8862 p!2959) (head!8862 input!3342)))))

(assert (= (and d!1232796 (not res!1710902)) b!4174486))

(assert (= (and b!4174486 res!1710900) b!4174487))

(assert (= (and b!4174487 res!1710903) b!4174488))

(assert (= (and d!1232796 (not res!1710901)) b!4174489))

(declare-fun m!4764311 () Bool)

(assert (=> b!4174488 m!4764311))

(declare-fun m!4764313 () Bool)

(assert (=> b!4174488 m!4764313))

(assert (=> b!4174488 m!4764311))

(assert (=> b!4174488 m!4764313))

(declare-fun m!4764315 () Bool)

(assert (=> b!4174488 m!4764315))

(assert (=> b!4174489 m!4764171))

(assert (=> b!4174489 m!4764195))

(declare-fun m!4764317 () Bool)

(assert (=> b!4174487 m!4764317))

(declare-fun m!4764319 () Bool)

(assert (=> b!4174487 m!4764319))

(assert (=> b!4174341 d!1232796))

(declare-fun b!4174518 () Bool)

(declare-fun res!1710925 () Bool)

(declare-fun e!2591615 () Bool)

(assert (=> b!4174518 (=> res!1710925 e!2591615)))

(declare-fun e!2591611 () Bool)

(assert (=> b!4174518 (= res!1710925 e!2591611)))

(declare-fun res!1710920 () Bool)

(assert (=> b!4174518 (=> (not res!1710920) (not e!2591611))))

(declare-fun lt!1486385 () Bool)

(assert (=> b!4174518 (= res!1710920 lt!1486385)))

(declare-fun b!4174519 () Bool)

(declare-fun res!1710921 () Bool)

(assert (=> b!4174519 (=> (not res!1710921) (not e!2591611))))

(declare-fun call!291414 () Bool)

(assert (=> b!4174519 (= res!1710921 (not call!291414))))

(declare-fun b!4174520 () Bool)

(declare-fun e!2591610 () Bool)

(assert (=> b!4174520 (= e!2591615 e!2591610)))

(declare-fun res!1710924 () Bool)

(assert (=> b!4174520 (=> (not res!1710924) (not e!2591610))))

(assert (=> b!4174520 (= res!1710924 (not lt!1486385))))

(declare-fun b!4174521 () Bool)

(declare-fun e!2591613 () Bool)

(assert (=> b!4174521 (= e!2591610 e!2591613)))

(declare-fun res!1710927 () Bool)

(assert (=> b!4174521 (=> res!1710927 e!2591613)))

(assert (=> b!4174521 (= res!1710927 call!291414)))

(declare-fun d!1232798 () Bool)

(declare-fun e!2591612 () Bool)

(assert (=> d!1232798 e!2591612))

(declare-fun c!713312 () Bool)

(assert (=> d!1232798 (= c!713312 ((_ is EmptyExpr!12503) (regex!7598 r!4142)))))

(declare-fun e!2591614 () Bool)

(assert (=> d!1232798 (= lt!1486385 e!2591614)))

(declare-fun c!713313 () Bool)

(declare-fun isEmpty!27075 (List!45895) Bool)

(assert (=> d!1232798 (= c!713313 (isEmpty!27075 p!2959))))

(assert (=> d!1232798 (validRegex!5620 (regex!7598 r!4142))))

(assert (=> d!1232798 (= (matchR!6242 (regex!7598 r!4142) p!2959) lt!1486385)))

(declare-fun bm!291409 () Bool)

(assert (=> bm!291409 (= call!291414 (isEmpty!27075 p!2959))))

(declare-fun b!4174522 () Bool)

(declare-fun res!1710923 () Bool)

(assert (=> b!4174522 (=> (not res!1710923) (not e!2591611))))

(assert (=> b!4174522 (= res!1710923 (isEmpty!27075 (tail!6709 p!2959)))))

(declare-fun b!4174523 () Bool)

(assert (=> b!4174523 (= e!2591611 (= (head!8862 p!2959) (c!713285 (regex!7598 r!4142))))))

(declare-fun b!4174524 () Bool)

(declare-fun e!2591609 () Bool)

(assert (=> b!4174524 (= e!2591609 (not lt!1486385))))

(declare-fun b!4174525 () Bool)

(assert (=> b!4174525 (= e!2591614 (nullable!4385 (regex!7598 r!4142)))))

(declare-fun b!4174526 () Bool)

(assert (=> b!4174526 (= e!2591613 (not (= (head!8862 p!2959) (c!713285 (regex!7598 r!4142)))))))

(declare-fun b!4174527 () Bool)

(declare-fun derivativeStep!3775 (Regex!12503 C!25196) Regex!12503)

(assert (=> b!4174527 (= e!2591614 (matchR!6242 (derivativeStep!3775 (regex!7598 r!4142) (head!8862 p!2959)) (tail!6709 p!2959)))))

(declare-fun b!4174528 () Bool)

(assert (=> b!4174528 (= e!2591612 (= lt!1486385 call!291414))))

(declare-fun b!4174529 () Bool)

(assert (=> b!4174529 (= e!2591612 e!2591609)))

(declare-fun c!713311 () Bool)

(assert (=> b!4174529 (= c!713311 ((_ is EmptyLang!12503) (regex!7598 r!4142)))))

(declare-fun b!4174530 () Bool)

(declare-fun res!1710922 () Bool)

(assert (=> b!4174530 (=> res!1710922 e!2591615)))

(assert (=> b!4174530 (= res!1710922 (not ((_ is ElementMatch!12503) (regex!7598 r!4142))))))

(assert (=> b!4174530 (= e!2591609 e!2591615)))

(declare-fun b!4174531 () Bool)

(declare-fun res!1710926 () Bool)

(assert (=> b!4174531 (=> res!1710926 e!2591613)))

(assert (=> b!4174531 (= res!1710926 (not (isEmpty!27075 (tail!6709 p!2959))))))

(assert (= (and d!1232798 c!713313) b!4174525))

(assert (= (and d!1232798 (not c!713313)) b!4174527))

(assert (= (and d!1232798 c!713312) b!4174528))

(assert (= (and d!1232798 (not c!713312)) b!4174529))

(assert (= (and b!4174529 c!713311) b!4174524))

(assert (= (and b!4174529 (not c!713311)) b!4174530))

(assert (= (and b!4174530 (not res!1710922)) b!4174518))

(assert (= (and b!4174518 res!1710920) b!4174519))

(assert (= (and b!4174519 res!1710921) b!4174522))

(assert (= (and b!4174522 res!1710923) b!4174523))

(assert (= (and b!4174518 (not res!1710925)) b!4174520))

(assert (= (and b!4174520 res!1710924) b!4174521))

(assert (= (and b!4174521 (not res!1710927)) b!4174531))

(assert (= (and b!4174531 (not res!1710926)) b!4174526))

(assert (= (or b!4174528 b!4174519 b!4174521) bm!291409))

(assert (=> b!4174523 m!4764317))

(declare-fun m!4764321 () Bool)

(assert (=> b!4174525 m!4764321))

(assert (=> b!4174526 m!4764317))

(assert (=> b!4174522 m!4764311))

(assert (=> b!4174522 m!4764311))

(declare-fun m!4764323 () Bool)

(assert (=> b!4174522 m!4764323))

(assert (=> b!4174527 m!4764317))

(assert (=> b!4174527 m!4764317))

(declare-fun m!4764325 () Bool)

(assert (=> b!4174527 m!4764325))

(assert (=> b!4174527 m!4764311))

(assert (=> b!4174527 m!4764325))

(assert (=> b!4174527 m!4764311))

(declare-fun m!4764327 () Bool)

(assert (=> b!4174527 m!4764327))

(assert (=> b!4174531 m!4764311))

(assert (=> b!4174531 m!4764311))

(assert (=> b!4174531 m!4764323))

(declare-fun m!4764329 () Bool)

(assert (=> d!1232798 m!4764329))

(assert (=> d!1232798 m!4764165))

(assert (=> bm!291409 m!4764329))

(assert (=> b!4174340 d!1232798))

(declare-fun d!1232800 () Bool)

(declare-fun e!2591616 () Bool)

(assert (=> d!1232800 e!2591616))

(declare-fun res!1710929 () Bool)

(assert (=> d!1232800 (=> res!1710929 e!2591616)))

(declare-fun lt!1486386 () Bool)

(assert (=> d!1232800 (= res!1710929 (not lt!1486386))))

(declare-fun e!2591618 () Bool)

(assert (=> d!1232800 (= lt!1486386 e!2591618)))

(declare-fun res!1710930 () Bool)

(assert (=> d!1232800 (=> res!1710930 e!2591618)))

(assert (=> d!1232800 (= res!1710930 ((_ is Nil!45771) pBis!107))))

(assert (=> d!1232800 (= (isPrefix!4455 pBis!107 input!3342) lt!1486386)))

(declare-fun b!4174534 () Bool)

(declare-fun e!2591617 () Bool)

(assert (=> b!4174534 (= e!2591617 (isPrefix!4455 (tail!6709 pBis!107) (tail!6709 input!3342)))))

(declare-fun b!4174532 () Bool)

(assert (=> b!4174532 (= e!2591618 e!2591617)))

(declare-fun res!1710928 () Bool)

(assert (=> b!4174532 (=> (not res!1710928) (not e!2591617))))

(assert (=> b!4174532 (= res!1710928 (not ((_ is Nil!45771) input!3342)))))

(declare-fun b!4174535 () Bool)

(assert (=> b!4174535 (= e!2591616 (>= (size!33598 input!3342) (size!33598 pBis!107)))))

(declare-fun b!4174533 () Bool)

(declare-fun res!1710931 () Bool)

(assert (=> b!4174533 (=> (not res!1710931) (not e!2591617))))

(assert (=> b!4174533 (= res!1710931 (= (head!8862 pBis!107) (head!8862 input!3342)))))

(assert (= (and d!1232800 (not res!1710930)) b!4174532))

(assert (= (and b!4174532 res!1710928) b!4174533))

(assert (= (and b!4174533 res!1710931) b!4174534))

(assert (= (and d!1232800 (not res!1710929)) b!4174535))

(declare-fun m!4764331 () Bool)

(assert (=> b!4174534 m!4764331))

(assert (=> b!4174534 m!4764313))

(assert (=> b!4174534 m!4764331))

(assert (=> b!4174534 m!4764313))

(declare-fun m!4764333 () Bool)

(assert (=> b!4174534 m!4764333))

(assert (=> b!4174535 m!4764171))

(assert (=> b!4174535 m!4764181))

(declare-fun m!4764335 () Bool)

(assert (=> b!4174533 m!4764335))

(assert (=> b!4174533 m!4764319))

(assert (=> b!4174338 d!1232800))

(declare-fun d!1232802 () Bool)

(declare-fun res!1710934 () Bool)

(declare-fun e!2591621 () Bool)

(assert (=> d!1232802 (=> (not res!1710934) (not e!2591621))))

(declare-fun rulesValid!2962 (LexerInterface!7191 List!45897) Bool)

(assert (=> d!1232802 (= res!1710934 (rulesValid!2962 thiss!25986 rules!3843))))

(assert (=> d!1232802 (= (rulesInvariant!6404 thiss!25986 rules!3843) e!2591621)))

(declare-fun b!4174538 () Bool)

(declare-datatypes ((List!45899 0))(
  ( (Nil!45775) (Cons!45775 (h!51195 String!53006) (t!344658 List!45899)) )
))
(declare-fun noDuplicateTag!3123 (LexerInterface!7191 List!45897 List!45899) Bool)

(assert (=> b!4174538 (= e!2591621 (noDuplicateTag!3123 thiss!25986 rules!3843 Nil!45775))))

(assert (= (and d!1232802 res!1710934) b!4174538))

(declare-fun m!4764337 () Bool)

(assert (=> d!1232802 m!4764337))

(declare-fun m!4764339 () Bool)

(assert (=> b!4174538 m!4764339))

(assert (=> b!4174359 d!1232802))

(declare-fun d!1232804 () Bool)

(declare-fun res!1710939 () Bool)

(declare-fun e!2591624 () Bool)

(assert (=> d!1232804 (=> (not res!1710939) (not e!2591624))))

(assert (=> d!1232804 (= res!1710939 (validRegex!5620 (regex!7598 r!4142)))))

(assert (=> d!1232804 (= (ruleValid!3316 thiss!25986 r!4142) e!2591624)))

(declare-fun b!4174543 () Bool)

(declare-fun res!1710940 () Bool)

(assert (=> b!4174543 (=> (not res!1710940) (not e!2591624))))

(assert (=> b!4174543 (= res!1710940 (not (nullable!4385 (regex!7598 r!4142))))))

(declare-fun b!4174544 () Bool)

(assert (=> b!4174544 (= e!2591624 (not (= (tag!8462 r!4142) (String!53007 ""))))))

(assert (= (and d!1232804 res!1710939) b!4174543))

(assert (= (and b!4174543 res!1710940) b!4174544))

(assert (=> d!1232804 m!4764165))

(assert (=> b!4174543 m!4764321))

(assert (=> b!4174360 d!1232804))

(declare-fun d!1232806 () Bool)

(declare-fun lt!1486389 () Int)

(assert (=> d!1232806 (>= lt!1486389 0)))

(declare-fun e!2591627 () Int)

(assert (=> d!1232806 (= lt!1486389 e!2591627)))

(declare-fun c!713316 () Bool)

(assert (=> d!1232806 (= c!713316 ((_ is Nil!45771) pBis!107))))

(assert (=> d!1232806 (= (size!33598 pBis!107) lt!1486389)))

(declare-fun b!4174549 () Bool)

(assert (=> b!4174549 (= e!2591627 0)))

(declare-fun b!4174550 () Bool)

(assert (=> b!4174550 (= e!2591627 (+ 1 (size!33598 (t!344622 pBis!107))))))

(assert (= (and d!1232806 c!713316) b!4174549))

(assert (= (and d!1232806 (not c!713316)) b!4174550))

(declare-fun m!4764341 () Bool)

(assert (=> b!4174550 m!4764341))

(assert (=> b!4174349 d!1232806))

(declare-fun d!1232808 () Bool)

(assert (=> d!1232808 (= (isDefined!7320 lt!1486332) (not (isEmpty!27073 lt!1486332)))))

(declare-fun bs!596128 () Bool)

(assert (= bs!596128 d!1232808))

(assert (=> bs!596128 m!4764175))

(assert (=> b!4174347 d!1232808))

(declare-fun d!1232810 () Bool)

(assert (=> d!1232810 (= (isEmpty!27072 rules!3843) ((_ is Nil!45773) rules!3843))))

(assert (=> b!4174348 d!1232810))

(declare-fun d!1232812 () Bool)

(assert (=> d!1232812 (= (inv!60300 (tag!8462 r!4142)) (= (mod (str.len (value!237074 (tag!8462 r!4142))) 2) 0))))

(assert (=> b!4174346 d!1232812))

(declare-fun d!1232814 () Bool)

(declare-fun res!1710941 () Bool)

(declare-fun e!2591628 () Bool)

(assert (=> d!1232814 (=> (not res!1710941) (not e!2591628))))

(assert (=> d!1232814 (= res!1710941 (semiInverseModEq!3294 (toChars!10141 (transformation!7598 r!4142)) (toValue!10282 (transformation!7598 r!4142))))))

(assert (=> d!1232814 (= (inv!60302 (transformation!7598 r!4142)) e!2591628)))

(declare-fun b!4174551 () Bool)

(assert (=> b!4174551 (= e!2591628 (equivClasses!3193 (toChars!10141 (transformation!7598 r!4142)) (toValue!10282 (transformation!7598 r!4142))))))

(assert (= (and d!1232814 res!1710941) b!4174551))

(declare-fun m!4764343 () Bool)

(assert (=> d!1232814 m!4764343))

(declare-fun m!4764345 () Bool)

(assert (=> b!4174551 m!4764345))

(assert (=> b!4174346 d!1232814))

(declare-fun d!1232816 () Bool)

(declare-fun lt!1486392 () List!45895)

(assert (=> d!1232816 (= (++!11676 p!2959 lt!1486392) input!3342)))

(declare-fun e!2591631 () List!45895)

(assert (=> d!1232816 (= lt!1486392 e!2591631)))

(declare-fun c!713319 () Bool)

(assert (=> d!1232816 (= c!713319 ((_ is Cons!45771) p!2959))))

(assert (=> d!1232816 (>= (size!33598 input!3342) (size!33598 p!2959))))

(assert (=> d!1232816 (= (getSuffix!2750 input!3342 p!2959) lt!1486392)))

(declare-fun b!4174556 () Bool)

(assert (=> b!4174556 (= e!2591631 (getSuffix!2750 (tail!6709 input!3342) (t!344622 p!2959)))))

(declare-fun b!4174557 () Bool)

(assert (=> b!4174557 (= e!2591631 input!3342)))

(assert (= (and d!1232816 c!713319) b!4174556))

(assert (= (and d!1232816 (not c!713319)) b!4174557))

(declare-fun m!4764347 () Bool)

(assert (=> d!1232816 m!4764347))

(assert (=> d!1232816 m!4764171))

(assert (=> d!1232816 m!4764195))

(assert (=> b!4174556 m!4764313))

(assert (=> b!4174556 m!4764313))

(declare-fun m!4764349 () Bool)

(assert (=> b!4174556 m!4764349))

(assert (=> b!4174357 d!1232816))

(declare-fun d!1232818 () Bool)

(declare-fun dynLambda!19633 (Int BalanceConc!27212) TokenValue!7828)

(assert (=> d!1232818 (= (apply!10563 (transformation!7598 r!4142) lt!1486326) (dynLambda!19633 (toValue!10282 (transformation!7598 r!4142)) lt!1486326))))

(declare-fun b_lambda!122631 () Bool)

(assert (=> (not b_lambda!122631) (not d!1232818)))

(declare-fun t!344626 () Bool)

(declare-fun tb!249947 () Bool)

(assert (=> (and b!4174339 (= (toValue!10282 (transformation!7598 r!4142)) (toValue!10282 (transformation!7598 r!4142))) t!344626) tb!249947))

(declare-fun result!304520 () Bool)

(declare-fun inv!21 (TokenValue!7828) Bool)

(assert (=> tb!249947 (= result!304520 (inv!21 (dynLambda!19633 (toValue!10282 (transformation!7598 r!4142)) lt!1486326)))))

(declare-fun m!4764351 () Bool)

(assert (=> tb!249947 m!4764351))

(assert (=> d!1232818 t!344626))

(declare-fun b_and!326181 () Bool)

(assert (= b_and!326169 (and (=> t!344626 result!304520) b_and!326181)))

(declare-fun tb!249949 () Bool)

(declare-fun t!344628 () Bool)

(assert (=> (and b!4174350 (= (toValue!10282 (transformation!7598 (h!51193 rules!3843))) (toValue!10282 (transformation!7598 r!4142))) t!344628) tb!249949))

(declare-fun result!304524 () Bool)

(assert (= result!304524 result!304520))

(assert (=> d!1232818 t!344628))

(declare-fun b_and!326183 () Bool)

(assert (= b_and!326173 (and (=> t!344628 result!304524) b_and!326183)))

(declare-fun tb!249951 () Bool)

(declare-fun t!344630 () Bool)

(assert (=> (and b!4174361 (= (toValue!10282 (transformation!7598 rBis!167)) (toValue!10282 (transformation!7598 r!4142))) t!344630) tb!249951))

(declare-fun result!304526 () Bool)

(assert (= result!304526 result!304520))

(assert (=> d!1232818 t!344630))

(declare-fun b_and!326185 () Bool)

(assert (= b_and!326177 (and (=> t!344630 result!304526) b_and!326185)))

(declare-fun m!4764353 () Bool)

(assert (=> d!1232818 m!4764353))

(assert (=> b!4174357 d!1232818))

(declare-fun d!1232820 () Bool)

(declare-fun fromListB!2577 (List!45895) BalanceConc!27212)

(assert (=> d!1232820 (= (seqFromList!5623 p!2959) (fromListB!2577 p!2959))))

(declare-fun bs!596129 () Bool)

(assert (= bs!596129 d!1232820))

(declare-fun m!4764355 () Bool)

(assert (=> bs!596129 m!4764355))

(assert (=> b!4174357 d!1232820))

(declare-fun d!1232822 () Bool)

(assert (=> d!1232822 (isPrefix!4455 input!3342 input!3342)))

(declare-fun lt!1486395 () Unit!64839)

(declare-fun choose!25550 (List!45895 List!45895) Unit!64839)

(assert (=> d!1232822 (= lt!1486395 (choose!25550 input!3342 input!3342))))

(assert (=> d!1232822 (= (lemmaIsPrefixRefl!2884 input!3342 input!3342) lt!1486395)))

(declare-fun bs!596130 () Bool)

(assert (= bs!596130 d!1232822))

(assert (=> bs!596130 m!4764191))

(declare-fun m!4764357 () Bool)

(assert (=> bs!596130 m!4764357))

(assert (=> b!4174357 d!1232822))

(declare-fun b!4174578 () Bool)

(declare-fun res!1710961 () Bool)

(declare-fun e!2591643 () Bool)

(assert (=> b!4174578 (=> (not res!1710961) (not e!2591643))))

(declare-fun lt!1486407 () Option!9794)

(assert (=> b!4174578 (= res!1710961 (< (size!33598 (_2!24943 (get!14862 lt!1486407))) (size!33598 input!3342)))))

(declare-fun b!4174579 () Bool)

(declare-fun res!1710957 () Bool)

(assert (=> b!4174579 (=> (not res!1710957) (not e!2591643))))

(assert (=> b!4174579 (= res!1710957 (= (value!237075 (_1!24943 (get!14862 lt!1486407))) (apply!10563 (transformation!7598 (rule!10650 (_1!24943 (get!14862 lt!1486407)))) (seqFromList!5623 (originalCharacters!7986 (_1!24943 (get!14862 lt!1486407)))))))))

(declare-fun d!1232824 () Bool)

(declare-fun e!2591644 () Bool)

(assert (=> d!1232824 e!2591644))

(declare-fun res!1710956 () Bool)

(assert (=> d!1232824 (=> res!1710956 e!2591644)))

(assert (=> d!1232824 (= res!1710956 (isEmpty!27073 lt!1486407))))

(declare-fun e!2591646 () Option!9794)

(assert (=> d!1232824 (= lt!1486407 e!2591646)))

(declare-fun c!713322 () Bool)

(declare-datatypes ((tuple2!43622 0))(
  ( (tuple2!43623 (_1!24945 List!45895) (_2!24945 List!45895)) )
))
(declare-fun lt!1486410 () tuple2!43622)

(assert (=> d!1232824 (= c!713322 (isEmpty!27075 (_1!24945 lt!1486410)))))

(declare-fun findLongestMatch!1490 (Regex!12503 List!45895) tuple2!43622)

(assert (=> d!1232824 (= lt!1486410 (findLongestMatch!1490 (regex!7598 r!4142) input!3342))))

(assert (=> d!1232824 (ruleValid!3316 thiss!25986 r!4142)))

(assert (=> d!1232824 (= (maxPrefixOneRule!3202 thiss!25986 r!4142 input!3342) lt!1486407)))

(declare-fun b!4174580 () Bool)

(declare-fun res!1710960 () Bool)

(assert (=> b!4174580 (=> (not res!1710960) (not e!2591643))))

(assert (=> b!4174580 (= res!1710960 (= (rule!10650 (_1!24943 (get!14862 lt!1486407))) r!4142))))

(declare-fun b!4174581 () Bool)

(declare-fun e!2591645 () Bool)

(declare-fun findLongestMatchInner!1577 (Regex!12503 List!45895 Int List!45895 List!45895 Int) tuple2!43622)

(assert (=> b!4174581 (= e!2591645 (matchR!6242 (regex!7598 r!4142) (_1!24945 (findLongestMatchInner!1577 (regex!7598 r!4142) Nil!45771 (size!33598 Nil!45771) input!3342 input!3342 (size!33598 input!3342)))))))

(declare-fun b!4174582 () Bool)

(declare-fun size!33600 (BalanceConc!27212) Int)

(assert (=> b!4174582 (= e!2591646 (Some!9793 (tuple2!43619 (Token!13911 (apply!10563 (transformation!7598 r!4142) (seqFromList!5623 (_1!24945 lt!1486410))) r!4142 (size!33600 (seqFromList!5623 (_1!24945 lt!1486410))) (_1!24945 lt!1486410)) (_2!24945 lt!1486410))))))

(declare-fun lt!1486408 () Unit!64839)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1550 (Regex!12503 List!45895) Unit!64839)

(assert (=> b!4174582 (= lt!1486408 (longestMatchIsAcceptedByMatchOrIsEmpty!1550 (regex!7598 r!4142) input!3342))))

(declare-fun res!1710962 () Bool)

(assert (=> b!4174582 (= res!1710962 (isEmpty!27075 (_1!24945 (findLongestMatchInner!1577 (regex!7598 r!4142) Nil!45771 (size!33598 Nil!45771) input!3342 input!3342 (size!33598 input!3342)))))))

(assert (=> b!4174582 (=> res!1710962 e!2591645)))

(assert (=> b!4174582 e!2591645))

(declare-fun lt!1486409 () Unit!64839)

(assert (=> b!4174582 (= lt!1486409 lt!1486408)))

(declare-fun lt!1486406 () Unit!64839)

(assert (=> b!4174582 (= lt!1486406 (lemmaSemiInverse!2364 (transformation!7598 r!4142) (seqFromList!5623 (_1!24945 lt!1486410))))))

(declare-fun b!4174583 () Bool)

(assert (=> b!4174583 (= e!2591643 (= (size!33597 (_1!24943 (get!14862 lt!1486407))) (size!33598 (originalCharacters!7986 (_1!24943 (get!14862 lt!1486407))))))))

(declare-fun b!4174584 () Bool)

(declare-fun res!1710959 () Bool)

(assert (=> b!4174584 (=> (not res!1710959) (not e!2591643))))

(assert (=> b!4174584 (= res!1710959 (= (++!11676 (list!16533 (charsOf!5039 (_1!24943 (get!14862 lt!1486407)))) (_2!24943 (get!14862 lt!1486407))) input!3342))))

(declare-fun b!4174585 () Bool)

(assert (=> b!4174585 (= e!2591646 None!9793)))

(declare-fun b!4174586 () Bool)

(assert (=> b!4174586 (= e!2591644 e!2591643)))

(declare-fun res!1710958 () Bool)

(assert (=> b!4174586 (=> (not res!1710958) (not e!2591643))))

(assert (=> b!4174586 (= res!1710958 (matchR!6242 (regex!7598 r!4142) (list!16533 (charsOf!5039 (_1!24943 (get!14862 lt!1486407))))))))

(assert (= (and d!1232824 c!713322) b!4174585))

(assert (= (and d!1232824 (not c!713322)) b!4174582))

(assert (= (and b!4174582 (not res!1710962)) b!4174581))

(assert (= (and d!1232824 (not res!1710956)) b!4174586))

(assert (= (and b!4174586 res!1710958) b!4174584))

(assert (= (and b!4174584 res!1710959) b!4174578))

(assert (= (and b!4174578 res!1710961) b!4174580))

(assert (= (and b!4174580 res!1710960) b!4174579))

(assert (= (and b!4174579 res!1710957) b!4174583))

(declare-fun m!4764359 () Bool)

(assert (=> b!4174583 m!4764359))

(declare-fun m!4764361 () Bool)

(assert (=> b!4174583 m!4764361))

(assert (=> b!4174586 m!4764359))

(declare-fun m!4764363 () Bool)

(assert (=> b!4174586 m!4764363))

(assert (=> b!4174586 m!4764363))

(declare-fun m!4764365 () Bool)

(assert (=> b!4174586 m!4764365))

(assert (=> b!4174586 m!4764365))

(declare-fun m!4764367 () Bool)

(assert (=> b!4174586 m!4764367))

(declare-fun m!4764369 () Bool)

(assert (=> b!4174581 m!4764369))

(assert (=> b!4174581 m!4764171))

(assert (=> b!4174581 m!4764369))

(assert (=> b!4174581 m!4764171))

(declare-fun m!4764371 () Bool)

(assert (=> b!4174581 m!4764371))

(declare-fun m!4764373 () Bool)

(assert (=> b!4174581 m!4764373))

(assert (=> b!4174580 m!4764359))

(assert (=> b!4174579 m!4764359))

(declare-fun m!4764375 () Bool)

(assert (=> b!4174579 m!4764375))

(assert (=> b!4174579 m!4764375))

(declare-fun m!4764377 () Bool)

(assert (=> b!4174579 m!4764377))

(declare-fun m!4764379 () Bool)

(assert (=> d!1232824 m!4764379))

(declare-fun m!4764381 () Bool)

(assert (=> d!1232824 m!4764381))

(declare-fun m!4764383 () Bool)

(assert (=> d!1232824 m!4764383))

(assert (=> d!1232824 m!4764159))

(assert (=> b!4174584 m!4764359))

(assert (=> b!4174584 m!4764363))

(assert (=> b!4174584 m!4764363))

(assert (=> b!4174584 m!4764365))

(assert (=> b!4174584 m!4764365))

(declare-fun m!4764385 () Bool)

(assert (=> b!4174584 m!4764385))

(declare-fun m!4764387 () Bool)

(assert (=> b!4174582 m!4764387))

(assert (=> b!4174582 m!4764387))

(declare-fun m!4764389 () Bool)

(assert (=> b!4174582 m!4764389))

(assert (=> b!4174582 m!4764387))

(declare-fun m!4764391 () Bool)

(assert (=> b!4174582 m!4764391))

(assert (=> b!4174582 m!4764369))

(assert (=> b!4174582 m!4764171))

(assert (=> b!4174582 m!4764371))

(declare-fun m!4764393 () Bool)

(assert (=> b!4174582 m!4764393))

(assert (=> b!4174582 m!4764171))

(declare-fun m!4764395 () Bool)

(assert (=> b!4174582 m!4764395))

(assert (=> b!4174582 m!4764387))

(declare-fun m!4764397 () Bool)

(assert (=> b!4174582 m!4764397))

(assert (=> b!4174582 m!4764369))

(assert (=> b!4174578 m!4764359))

(declare-fun m!4764399 () Bool)

(assert (=> b!4174578 m!4764399))

(assert (=> b!4174578 m!4764171))

(assert (=> b!4174357 d!1232824))

(declare-fun d!1232826 () Bool)

(declare-fun lt!1486411 () Int)

(assert (=> d!1232826 (>= lt!1486411 0)))

(declare-fun e!2591647 () Int)

(assert (=> d!1232826 (= lt!1486411 e!2591647)))

(declare-fun c!713323 () Bool)

(assert (=> d!1232826 (= c!713323 ((_ is Nil!45771) p!2959))))

(assert (=> d!1232826 (= (size!33598 p!2959) lt!1486411)))

(declare-fun b!4174587 () Bool)

(assert (=> b!4174587 (= e!2591647 0)))

(declare-fun b!4174588 () Bool)

(assert (=> b!4174588 (= e!2591647 (+ 1 (size!33598 (t!344622 p!2959))))))

(assert (= (and d!1232826 c!713323) b!4174587))

(assert (= (and d!1232826 (not c!713323)) b!4174588))

(declare-fun m!4764401 () Bool)

(assert (=> b!4174588 m!4764401))

(assert (=> b!4174357 d!1232826))

(declare-fun d!1232828 () Bool)

(declare-fun e!2591648 () Bool)

(assert (=> d!1232828 e!2591648))

(declare-fun res!1710964 () Bool)

(assert (=> d!1232828 (=> res!1710964 e!2591648)))

(declare-fun lt!1486412 () Bool)

(assert (=> d!1232828 (= res!1710964 (not lt!1486412))))

(declare-fun e!2591650 () Bool)

(assert (=> d!1232828 (= lt!1486412 e!2591650)))

(declare-fun res!1710965 () Bool)

(assert (=> d!1232828 (=> res!1710965 e!2591650)))

(assert (=> d!1232828 (= res!1710965 ((_ is Nil!45771) input!3342))))

(assert (=> d!1232828 (= (isPrefix!4455 input!3342 input!3342) lt!1486412)))

(declare-fun b!4174591 () Bool)

(declare-fun e!2591649 () Bool)

(assert (=> b!4174591 (= e!2591649 (isPrefix!4455 (tail!6709 input!3342) (tail!6709 input!3342)))))

(declare-fun b!4174589 () Bool)

(assert (=> b!4174589 (= e!2591650 e!2591649)))

(declare-fun res!1710963 () Bool)

(assert (=> b!4174589 (=> (not res!1710963) (not e!2591649))))

(assert (=> b!4174589 (= res!1710963 (not ((_ is Nil!45771) input!3342)))))

(declare-fun b!4174592 () Bool)

(assert (=> b!4174592 (= e!2591648 (>= (size!33598 input!3342) (size!33598 input!3342)))))

(declare-fun b!4174590 () Bool)

(declare-fun res!1710966 () Bool)

(assert (=> b!4174590 (=> (not res!1710966) (not e!2591649))))

(assert (=> b!4174590 (= res!1710966 (= (head!8862 input!3342) (head!8862 input!3342)))))

(assert (= (and d!1232828 (not res!1710965)) b!4174589))

(assert (= (and b!4174589 res!1710963) b!4174590))

(assert (= (and b!4174590 res!1710966) b!4174591))

(assert (= (and d!1232828 (not res!1710964)) b!4174592))

(assert (=> b!4174591 m!4764313))

(assert (=> b!4174591 m!4764313))

(assert (=> b!4174591 m!4764313))

(assert (=> b!4174591 m!4764313))

(declare-fun m!4764403 () Bool)

(assert (=> b!4174591 m!4764403))

(assert (=> b!4174592 m!4764171))

(assert (=> b!4174592 m!4764171))

(assert (=> b!4174590 m!4764319))

(assert (=> b!4174590 m!4764319))

(assert (=> b!4174357 d!1232828))

(declare-fun b!4174783 () Bool)

(declare-fun e!2591764 () Bool)

(assert (=> b!4174783 (= e!2591764 true)))

(declare-fun d!1232830 () Bool)

(assert (=> d!1232830 e!2591764))

(assert (= d!1232830 b!4174783))

(declare-fun order!24147 () Int)

(declare-fun lambda!129289 () Int)

(declare-fun order!24145 () Int)

(declare-fun dynLambda!19634 (Int Int) Int)

(declare-fun dynLambda!19635 (Int Int) Int)

(assert (=> b!4174783 (< (dynLambda!19634 order!24145 (toValue!10282 (transformation!7598 r!4142))) (dynLambda!19635 order!24147 lambda!129289))))

(declare-fun order!24149 () Int)

(declare-fun dynLambda!19636 (Int Int) Int)

(assert (=> b!4174783 (< (dynLambda!19636 order!24149 (toChars!10141 (transformation!7598 r!4142))) (dynLambda!19635 order!24147 lambda!129289))))

(declare-fun dynLambda!19637 (Int TokenValue!7828) BalanceConc!27212)

(assert (=> d!1232830 (= (list!16533 (dynLambda!19637 (toChars!10141 (transformation!7598 r!4142)) (dynLambda!19633 (toValue!10282 (transformation!7598 r!4142)) lt!1486326))) (list!16533 lt!1486326))))

(declare-fun lt!1486452 () Unit!64839)

(declare-fun ForallOf!1028 (Int BalanceConc!27212) Unit!64839)

(assert (=> d!1232830 (= lt!1486452 (ForallOf!1028 lambda!129289 lt!1486326))))

(assert (=> d!1232830 (= (lemmaSemiInverse!2364 (transformation!7598 r!4142) lt!1486326) lt!1486452)))

(declare-fun b_lambda!122645 () Bool)

(assert (=> (not b_lambda!122645) (not d!1232830)))

(declare-fun t!344648 () Bool)

(declare-fun tb!249969 () Bool)

(assert (=> (and b!4174339 (= (toChars!10141 (transformation!7598 r!4142)) (toChars!10141 (transformation!7598 r!4142))) t!344648) tb!249969))

(declare-fun b!4174788 () Bool)

(declare-fun tp!1275616 () Bool)

(declare-fun e!2591767 () Bool)

(declare-fun inv!60305 (Conc!13809) Bool)

(assert (=> b!4174788 (= e!2591767 (and (inv!60305 (c!713284 (dynLambda!19637 (toChars!10141 (transformation!7598 r!4142)) (dynLambda!19633 (toValue!10282 (transformation!7598 r!4142)) lt!1486326)))) tp!1275616))))

(declare-fun result!304554 () Bool)

(declare-fun inv!60306 (BalanceConc!27212) Bool)

(assert (=> tb!249969 (= result!304554 (and (inv!60306 (dynLambda!19637 (toChars!10141 (transformation!7598 r!4142)) (dynLambda!19633 (toValue!10282 (transformation!7598 r!4142)) lt!1486326))) e!2591767))))

(assert (= tb!249969 b!4174788))

(declare-fun m!4764563 () Bool)

(assert (=> b!4174788 m!4764563))

(declare-fun m!4764565 () Bool)

(assert (=> tb!249969 m!4764565))

(assert (=> d!1232830 t!344648))

(declare-fun b_and!326209 () Bool)

(assert (= b_and!326171 (and (=> t!344648 result!304554) b_and!326209)))

(declare-fun t!344650 () Bool)

(declare-fun tb!249971 () Bool)

(assert (=> (and b!4174350 (= (toChars!10141 (transformation!7598 (h!51193 rules!3843))) (toChars!10141 (transformation!7598 r!4142))) t!344650) tb!249971))

(declare-fun result!304558 () Bool)

(assert (= result!304558 result!304554))

(assert (=> d!1232830 t!344650))

(declare-fun b_and!326211 () Bool)

(assert (= b_and!326175 (and (=> t!344650 result!304558) b_and!326211)))

(declare-fun tb!249973 () Bool)

(declare-fun t!344652 () Bool)

(assert (=> (and b!4174361 (= (toChars!10141 (transformation!7598 rBis!167)) (toChars!10141 (transformation!7598 r!4142))) t!344652) tb!249973))

(declare-fun result!304560 () Bool)

(assert (= result!304560 result!304554))

(assert (=> d!1232830 t!344652))

(declare-fun b_and!326213 () Bool)

(assert (= b_and!326179 (and (=> t!344652 result!304560) b_and!326213)))

(declare-fun b_lambda!122647 () Bool)

(assert (=> (not b_lambda!122647) (not d!1232830)))

(assert (=> d!1232830 t!344626))

(declare-fun b_and!326215 () Bool)

(assert (= b_and!326181 (and (=> t!344626 result!304520) b_and!326215)))

(assert (=> d!1232830 t!344628))

(declare-fun b_and!326217 () Bool)

(assert (= b_and!326183 (and (=> t!344628 result!304524) b_and!326217)))

(assert (=> d!1232830 t!344630))

(declare-fun b_and!326219 () Bool)

(assert (= b_and!326185 (and (=> t!344630 result!304526) b_and!326219)))

(declare-fun m!4764567 () Bool)

(assert (=> d!1232830 m!4764567))

(assert (=> d!1232830 m!4764353))

(declare-fun m!4764569 () Bool)

(assert (=> d!1232830 m!4764569))

(declare-fun m!4764571 () Bool)

(assert (=> d!1232830 m!4764571))

(declare-fun m!4764573 () Bool)

(assert (=> d!1232830 m!4764573))

(assert (=> d!1232830 m!4764353))

(assert (=> d!1232830 m!4764569))

(assert (=> b!4174357 d!1232830))

(declare-fun d!1232874 () Bool)

(declare-fun lt!1486455 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7112 (List!45897) (InoxSet Rule!14996))

(assert (=> d!1232874 (= lt!1486455 (select (content!7112 rules!3843) r!4142))))

(declare-fun e!2591773 () Bool)

(assert (=> d!1232874 (= lt!1486455 e!2591773)))

(declare-fun res!1711064 () Bool)

(assert (=> d!1232874 (=> (not res!1711064) (not e!2591773))))

(assert (=> d!1232874 (= res!1711064 ((_ is Cons!45773) rules!3843))))

(assert (=> d!1232874 (= (contains!9401 rules!3843 r!4142) lt!1486455)))

(declare-fun b!4174793 () Bool)

(declare-fun e!2591772 () Bool)

(assert (=> b!4174793 (= e!2591773 e!2591772)))

(declare-fun res!1711063 () Bool)

(assert (=> b!4174793 (=> res!1711063 e!2591772)))

(assert (=> b!4174793 (= res!1711063 (= (h!51193 rules!3843) r!4142))))

(declare-fun b!4174794 () Bool)

(assert (=> b!4174794 (= e!2591772 (contains!9401 (t!344624 rules!3843) r!4142))))

(assert (= (and d!1232874 res!1711064) b!4174793))

(assert (= (and b!4174793 (not res!1711063)) b!4174794))

(declare-fun m!4764575 () Bool)

(assert (=> d!1232874 m!4764575))

(declare-fun m!4764577 () Bool)

(assert (=> d!1232874 m!4764577))

(declare-fun m!4764579 () Bool)

(assert (=> b!4174794 m!4764579))

(assert (=> b!4174355 d!1232874))

(declare-fun d!1232876 () Bool)

(declare-fun res!1711065 () Bool)

(declare-fun e!2591774 () Bool)

(assert (=> d!1232876 (=> (not res!1711065) (not e!2591774))))

(assert (=> d!1232876 (= res!1711065 (validRegex!5620 (regex!7598 rBis!167)))))

(assert (=> d!1232876 (= (ruleValid!3316 thiss!25986 rBis!167) e!2591774)))

(declare-fun b!4174795 () Bool)

(declare-fun res!1711066 () Bool)

(assert (=> b!4174795 (=> (not res!1711066) (not e!2591774))))

(assert (=> b!4174795 (= res!1711066 (not (nullable!4385 (regex!7598 rBis!167))))))

(declare-fun b!4174796 () Bool)

(assert (=> b!4174796 (= e!2591774 (not (= (tag!8462 rBis!167) (String!53007 ""))))))

(assert (= (and d!1232876 res!1711065) b!4174795))

(assert (= (and b!4174795 res!1711066) b!4174796))

(declare-fun m!4764581 () Bool)

(assert (=> d!1232876 m!4764581))

(declare-fun m!4764583 () Bool)

(assert (=> b!4174795 m!4764583))

(assert (=> b!4174354 d!1232876))

(declare-fun d!1232878 () Bool)

(declare-fun lt!1486456 () Bool)

(assert (=> d!1232878 (= lt!1486456 (select (content!7112 rules!3843) rBis!167))))

(declare-fun e!2591776 () Bool)

(assert (=> d!1232878 (= lt!1486456 e!2591776)))

(declare-fun res!1711068 () Bool)

(assert (=> d!1232878 (=> (not res!1711068) (not e!2591776))))

(assert (=> d!1232878 (= res!1711068 ((_ is Cons!45773) rules!3843))))

(assert (=> d!1232878 (= (contains!9401 rules!3843 rBis!167) lt!1486456)))

(declare-fun b!4174797 () Bool)

(declare-fun e!2591775 () Bool)

(assert (=> b!4174797 (= e!2591776 e!2591775)))

(declare-fun res!1711067 () Bool)

(assert (=> b!4174797 (=> res!1711067 e!2591775)))

(assert (=> b!4174797 (= res!1711067 (= (h!51193 rules!3843) rBis!167))))

(declare-fun b!4174798 () Bool)

(assert (=> b!4174798 (= e!2591775 (contains!9401 (t!344624 rules!3843) rBis!167))))

(assert (= (and d!1232878 res!1711068) b!4174797))

(assert (= (and b!4174797 (not res!1711067)) b!4174798))

(assert (=> d!1232878 m!4764575))

(declare-fun m!4764585 () Bool)

(assert (=> d!1232878 m!4764585))

(declare-fun m!4764587 () Bool)

(assert (=> b!4174798 m!4764587))

(assert (=> b!4174344 d!1232878))

(declare-fun d!1232880 () Bool)

(assert (=> d!1232880 (= (inv!60300 (tag!8462 (h!51193 rules!3843))) (= (mod (str.len (value!237074 (tag!8462 (h!51193 rules!3843)))) 2) 0))))

(assert (=> b!4174342 d!1232880))

(declare-fun d!1232882 () Bool)

(declare-fun res!1711069 () Bool)

(declare-fun e!2591777 () Bool)

(assert (=> d!1232882 (=> (not res!1711069) (not e!2591777))))

(assert (=> d!1232882 (= res!1711069 (semiInverseModEq!3294 (toChars!10141 (transformation!7598 (h!51193 rules!3843))) (toValue!10282 (transformation!7598 (h!51193 rules!3843)))))))

(assert (=> d!1232882 (= (inv!60302 (transformation!7598 (h!51193 rules!3843))) e!2591777)))

(declare-fun b!4174799 () Bool)

(assert (=> b!4174799 (= e!2591777 (equivClasses!3193 (toChars!10141 (transformation!7598 (h!51193 rules!3843))) (toValue!10282 (transformation!7598 (h!51193 rules!3843)))))))

(assert (= (and d!1232882 res!1711069) b!4174799))

(declare-fun m!4764589 () Bool)

(assert (=> d!1232882 m!4764589))

(declare-fun m!4764591 () Bool)

(assert (=> b!4174799 m!4764591))

(assert (=> b!4174342 d!1232882))

(declare-fun d!1232884 () Bool)

(assert (=> d!1232884 (ruleValid!3316 thiss!25986 rBis!167)))

(declare-fun lt!1486459 () Unit!64839)

(declare-fun choose!25551 (LexerInterface!7191 Rule!14996 List!45897) Unit!64839)

(assert (=> d!1232884 (= lt!1486459 (choose!25551 thiss!25986 rBis!167 rules!3843))))

(assert (=> d!1232884 (contains!9401 rules!3843 rBis!167)))

(assert (=> d!1232884 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2330 thiss!25986 rBis!167 rules!3843) lt!1486459)))

(declare-fun bs!596134 () Bool)

(assert (= bs!596134 d!1232884))

(assert (=> bs!596134 m!4764217))

(declare-fun m!4764593 () Bool)

(assert (=> bs!596134 m!4764593))

(assert (=> bs!596134 m!4764155))

(assert (=> b!4174353 d!1232884))

(declare-fun b!4174800 () Bool)

(declare-fun res!1711075 () Bool)

(declare-fun e!2591778 () Bool)

(assert (=> b!4174800 (=> (not res!1711075) (not e!2591778))))

(declare-fun lt!1486461 () Option!9794)

(assert (=> b!4174800 (= res!1711075 (< (size!33598 (_2!24943 (get!14862 lt!1486461))) (size!33598 input!3342)))))

(declare-fun b!4174801 () Bool)

(declare-fun res!1711071 () Bool)

(assert (=> b!4174801 (=> (not res!1711071) (not e!2591778))))

(assert (=> b!4174801 (= res!1711071 (= (value!237075 (_1!24943 (get!14862 lt!1486461))) (apply!10563 (transformation!7598 (rule!10650 (_1!24943 (get!14862 lt!1486461)))) (seqFromList!5623 (originalCharacters!7986 (_1!24943 (get!14862 lt!1486461)))))))))

(declare-fun d!1232886 () Bool)

(declare-fun e!2591779 () Bool)

(assert (=> d!1232886 e!2591779))

(declare-fun res!1711070 () Bool)

(assert (=> d!1232886 (=> res!1711070 e!2591779)))

(assert (=> d!1232886 (= res!1711070 (isEmpty!27073 lt!1486461))))

(declare-fun e!2591781 () Option!9794)

(assert (=> d!1232886 (= lt!1486461 e!2591781)))

(declare-fun c!713346 () Bool)

(declare-fun lt!1486464 () tuple2!43622)

(assert (=> d!1232886 (= c!713346 (isEmpty!27075 (_1!24945 lt!1486464)))))

(assert (=> d!1232886 (= lt!1486464 (findLongestMatch!1490 (regex!7598 rBis!167) input!3342))))

(assert (=> d!1232886 (ruleValid!3316 thiss!25986 rBis!167)))

(assert (=> d!1232886 (= (maxPrefixOneRule!3202 thiss!25986 rBis!167 input!3342) lt!1486461)))

(declare-fun b!4174802 () Bool)

(declare-fun res!1711074 () Bool)

(assert (=> b!4174802 (=> (not res!1711074) (not e!2591778))))

(assert (=> b!4174802 (= res!1711074 (= (rule!10650 (_1!24943 (get!14862 lt!1486461))) rBis!167))))

(declare-fun b!4174803 () Bool)

(declare-fun e!2591780 () Bool)

(assert (=> b!4174803 (= e!2591780 (matchR!6242 (regex!7598 rBis!167) (_1!24945 (findLongestMatchInner!1577 (regex!7598 rBis!167) Nil!45771 (size!33598 Nil!45771) input!3342 input!3342 (size!33598 input!3342)))))))

(declare-fun b!4174804 () Bool)

(assert (=> b!4174804 (= e!2591781 (Some!9793 (tuple2!43619 (Token!13911 (apply!10563 (transformation!7598 rBis!167) (seqFromList!5623 (_1!24945 lt!1486464))) rBis!167 (size!33600 (seqFromList!5623 (_1!24945 lt!1486464))) (_1!24945 lt!1486464)) (_2!24945 lt!1486464))))))

(declare-fun lt!1486462 () Unit!64839)

(assert (=> b!4174804 (= lt!1486462 (longestMatchIsAcceptedByMatchOrIsEmpty!1550 (regex!7598 rBis!167) input!3342))))

(declare-fun res!1711076 () Bool)

(assert (=> b!4174804 (= res!1711076 (isEmpty!27075 (_1!24945 (findLongestMatchInner!1577 (regex!7598 rBis!167) Nil!45771 (size!33598 Nil!45771) input!3342 input!3342 (size!33598 input!3342)))))))

(assert (=> b!4174804 (=> res!1711076 e!2591780)))

(assert (=> b!4174804 e!2591780))

(declare-fun lt!1486463 () Unit!64839)

(assert (=> b!4174804 (= lt!1486463 lt!1486462)))

(declare-fun lt!1486460 () Unit!64839)

(assert (=> b!4174804 (= lt!1486460 (lemmaSemiInverse!2364 (transformation!7598 rBis!167) (seqFromList!5623 (_1!24945 lt!1486464))))))

(declare-fun b!4174805 () Bool)

(assert (=> b!4174805 (= e!2591778 (= (size!33597 (_1!24943 (get!14862 lt!1486461))) (size!33598 (originalCharacters!7986 (_1!24943 (get!14862 lt!1486461))))))))

(declare-fun b!4174806 () Bool)

(declare-fun res!1711073 () Bool)

(assert (=> b!4174806 (=> (not res!1711073) (not e!2591778))))

(assert (=> b!4174806 (= res!1711073 (= (++!11676 (list!16533 (charsOf!5039 (_1!24943 (get!14862 lt!1486461)))) (_2!24943 (get!14862 lt!1486461))) input!3342))))

(declare-fun b!4174807 () Bool)

(assert (=> b!4174807 (= e!2591781 None!9793)))

(declare-fun b!4174808 () Bool)

(assert (=> b!4174808 (= e!2591779 e!2591778)))

(declare-fun res!1711072 () Bool)

(assert (=> b!4174808 (=> (not res!1711072) (not e!2591778))))

(assert (=> b!4174808 (= res!1711072 (matchR!6242 (regex!7598 rBis!167) (list!16533 (charsOf!5039 (_1!24943 (get!14862 lt!1486461))))))))

(assert (= (and d!1232886 c!713346) b!4174807))

(assert (= (and d!1232886 (not c!713346)) b!4174804))

(assert (= (and b!4174804 (not res!1711076)) b!4174803))

(assert (= (and d!1232886 (not res!1711070)) b!4174808))

(assert (= (and b!4174808 res!1711072) b!4174806))

(assert (= (and b!4174806 res!1711073) b!4174800))

(assert (= (and b!4174800 res!1711075) b!4174802))

(assert (= (and b!4174802 res!1711074) b!4174801))

(assert (= (and b!4174801 res!1711071) b!4174805))

(declare-fun m!4764595 () Bool)

(assert (=> b!4174805 m!4764595))

(declare-fun m!4764597 () Bool)

(assert (=> b!4174805 m!4764597))

(assert (=> b!4174808 m!4764595))

(declare-fun m!4764599 () Bool)

(assert (=> b!4174808 m!4764599))

(assert (=> b!4174808 m!4764599))

(declare-fun m!4764601 () Bool)

(assert (=> b!4174808 m!4764601))

(assert (=> b!4174808 m!4764601))

(declare-fun m!4764603 () Bool)

(assert (=> b!4174808 m!4764603))

(assert (=> b!4174803 m!4764369))

(assert (=> b!4174803 m!4764171))

(assert (=> b!4174803 m!4764369))

(assert (=> b!4174803 m!4764171))

(declare-fun m!4764605 () Bool)

(assert (=> b!4174803 m!4764605))

(declare-fun m!4764607 () Bool)

(assert (=> b!4174803 m!4764607))

(assert (=> b!4174802 m!4764595))

(assert (=> b!4174801 m!4764595))

(declare-fun m!4764609 () Bool)

(assert (=> b!4174801 m!4764609))

(assert (=> b!4174801 m!4764609))

(declare-fun m!4764611 () Bool)

(assert (=> b!4174801 m!4764611))

(declare-fun m!4764613 () Bool)

(assert (=> d!1232886 m!4764613))

(declare-fun m!4764615 () Bool)

(assert (=> d!1232886 m!4764615))

(declare-fun m!4764617 () Bool)

(assert (=> d!1232886 m!4764617))

(assert (=> d!1232886 m!4764217))

(assert (=> b!4174806 m!4764595))

(assert (=> b!4174806 m!4764599))

(assert (=> b!4174806 m!4764599))

(assert (=> b!4174806 m!4764601))

(assert (=> b!4174806 m!4764601))

(declare-fun m!4764619 () Bool)

(assert (=> b!4174806 m!4764619))

(declare-fun m!4764621 () Bool)

(assert (=> b!4174804 m!4764621))

(assert (=> b!4174804 m!4764621))

(declare-fun m!4764623 () Bool)

(assert (=> b!4174804 m!4764623))

(assert (=> b!4174804 m!4764621))

(declare-fun m!4764625 () Bool)

(assert (=> b!4174804 m!4764625))

(assert (=> b!4174804 m!4764369))

(assert (=> b!4174804 m!4764171))

(assert (=> b!4174804 m!4764605))

(declare-fun m!4764627 () Bool)

(assert (=> b!4174804 m!4764627))

(assert (=> b!4174804 m!4764171))

(declare-fun m!4764629 () Bool)

(assert (=> b!4174804 m!4764629))

(assert (=> b!4174804 m!4764621))

(declare-fun m!4764631 () Bool)

(assert (=> b!4174804 m!4764631))

(assert (=> b!4174804 m!4764369))

(assert (=> b!4174800 m!4764595))

(declare-fun m!4764633 () Bool)

(assert (=> b!4174800 m!4764633))

(assert (=> b!4174800 m!4764171))

(assert (=> b!4174353 d!1232886))

(declare-fun d!1232888 () Bool)

(assert (=> d!1232888 (<= (size!33598 pBis!107) (size!33598 input!3342))))

(declare-fun lt!1486467 () Unit!64839)

(declare-fun choose!25552 (List!45895 List!45895) Unit!64839)

(assert (=> d!1232888 (= lt!1486467 (choose!25552 pBis!107 input!3342))))

(assert (=> d!1232888 (isPrefix!4455 pBis!107 input!3342)))

(assert (=> d!1232888 (= (lemmaIsPrefixThenSmallerEqSize!487 pBis!107 input!3342) lt!1486467)))

(declare-fun bs!596135 () Bool)

(assert (= bs!596135 d!1232888))

(assert (=> bs!596135 m!4764181))

(assert (=> bs!596135 m!4764171))

(declare-fun m!4764635 () Bool)

(assert (=> bs!596135 m!4764635))

(assert (=> bs!596135 m!4764161))

(assert (=> b!4174353 d!1232888))

(declare-fun d!1232890 () Bool)

(declare-fun lt!1486468 () Int)

(assert (=> d!1232890 (>= lt!1486468 0)))

(declare-fun e!2591782 () Int)

(assert (=> d!1232890 (= lt!1486468 e!2591782)))

(declare-fun c!713347 () Bool)

(assert (=> d!1232890 (= c!713347 ((_ is Nil!45771) input!3342))))

(assert (=> d!1232890 (= (size!33598 input!3342) lt!1486468)))

(declare-fun b!4174809 () Bool)

(assert (=> b!4174809 (= e!2591782 0)))

(declare-fun b!4174810 () Bool)

(assert (=> b!4174810 (= e!2591782 (+ 1 (size!33598 (t!344622 input!3342))))))

(assert (= (and d!1232890 c!713347) b!4174809))

(assert (= (and d!1232890 (not c!713347)) b!4174810))

(declare-fun m!4764637 () Bool)

(assert (=> b!4174810 m!4764637))

(assert (=> b!4174353 d!1232890))

(declare-fun d!1232892 () Bool)

(assert (=> d!1232892 (= (isEmpty!27073 lt!1486332) (not ((_ is Some!9793) lt!1486332)))))

(assert (=> b!4174353 d!1232892))

(declare-fun b!4174822 () Bool)

(declare-fun e!2591785 () Bool)

(declare-fun tp!1275629 () Bool)

(declare-fun tp!1275628 () Bool)

(assert (=> b!4174822 (= e!2591785 (and tp!1275629 tp!1275628))))

(declare-fun b!4174824 () Bool)

(declare-fun tp!1275627 () Bool)

(declare-fun tp!1275631 () Bool)

(assert (=> b!4174824 (= e!2591785 (and tp!1275627 tp!1275631))))

(declare-fun b!4174823 () Bool)

(declare-fun tp!1275630 () Bool)

(assert (=> b!4174823 (= e!2591785 tp!1275630)))

(declare-fun b!4174821 () Bool)

(assert (=> b!4174821 (= e!2591785 tp_is_empty!21969)))

(assert (=> b!4174346 (= tp!1275564 e!2591785)))

(assert (= (and b!4174346 ((_ is ElementMatch!12503) (regex!7598 r!4142))) b!4174821))

(assert (= (and b!4174346 ((_ is Concat!20332) (regex!7598 r!4142))) b!4174822))

(assert (= (and b!4174346 ((_ is Star!12503) (regex!7598 r!4142))) b!4174823))

(assert (= (and b!4174346 ((_ is Union!12503) (regex!7598 r!4142))) b!4174824))

(declare-fun b!4174826 () Bool)

(declare-fun e!2591786 () Bool)

(declare-fun tp!1275634 () Bool)

(declare-fun tp!1275633 () Bool)

(assert (=> b!4174826 (= e!2591786 (and tp!1275634 tp!1275633))))

(declare-fun b!4174828 () Bool)

(declare-fun tp!1275632 () Bool)

(declare-fun tp!1275636 () Bool)

(assert (=> b!4174828 (= e!2591786 (and tp!1275632 tp!1275636))))

(declare-fun b!4174827 () Bool)

(declare-fun tp!1275635 () Bool)

(assert (=> b!4174827 (= e!2591786 tp!1275635)))

(declare-fun b!4174825 () Bool)

(assert (=> b!4174825 (= e!2591786 tp_is_empty!21969)))

(assert (=> b!4174362 (= tp!1275563 e!2591786)))

(assert (= (and b!4174362 ((_ is ElementMatch!12503) (regex!7598 rBis!167))) b!4174825))

(assert (= (and b!4174362 ((_ is Concat!20332) (regex!7598 rBis!167))) b!4174826))

(assert (= (and b!4174362 ((_ is Star!12503) (regex!7598 rBis!167))) b!4174827))

(assert (= (and b!4174362 ((_ is Union!12503) (regex!7598 rBis!167))) b!4174828))

(declare-fun b!4174839 () Bool)

(declare-fun b_free!120991 () Bool)

(declare-fun b_next!121695 () Bool)

(assert (=> b!4174839 (= b_free!120991 (not b_next!121695))))

(declare-fun tb!249975 () Bool)

(declare-fun t!344654 () Bool)

(assert (=> (and b!4174839 (= (toValue!10282 (transformation!7598 (h!51193 (t!344624 rules!3843)))) (toValue!10282 (transformation!7598 r!4142))) t!344654) tb!249975))

(declare-fun result!304566 () Bool)

(assert (= result!304566 result!304520))

(assert (=> d!1232818 t!344654))

(assert (=> d!1232830 t!344654))

(declare-fun b_and!326221 () Bool)

(declare-fun tp!1275646 () Bool)

(assert (=> b!4174839 (= tp!1275646 (and (=> t!344654 result!304566) b_and!326221))))

(declare-fun b_free!120993 () Bool)

(declare-fun b_next!121697 () Bool)

(assert (=> b!4174839 (= b_free!120993 (not b_next!121697))))

(declare-fun tb!249977 () Bool)

(declare-fun t!344656 () Bool)

(assert (=> (and b!4174839 (= (toChars!10141 (transformation!7598 (h!51193 (t!344624 rules!3843)))) (toChars!10141 (transformation!7598 r!4142))) t!344656) tb!249977))

(declare-fun result!304568 () Bool)

(assert (= result!304568 result!304554))

(assert (=> d!1232830 t!344656))

(declare-fun tp!1275648 () Bool)

(declare-fun b_and!326223 () Bool)

(assert (=> b!4174839 (= tp!1275648 (and (=> t!344656 result!304568) b_and!326223))))

(declare-fun e!2591798 () Bool)

(assert (=> b!4174839 (= e!2591798 (and tp!1275646 tp!1275648))))

(declare-fun b!4174838 () Bool)

(declare-fun e!2591797 () Bool)

(declare-fun tp!1275647 () Bool)

(assert (=> b!4174838 (= e!2591797 (and tp!1275647 (inv!60300 (tag!8462 (h!51193 (t!344624 rules!3843)))) (inv!60302 (transformation!7598 (h!51193 (t!344624 rules!3843)))) e!2591798))))

(declare-fun b!4174837 () Bool)

(declare-fun e!2591796 () Bool)

(declare-fun tp!1275645 () Bool)

(assert (=> b!4174837 (= e!2591796 (and e!2591797 tp!1275645))))

(assert (=> b!4174356 (= tp!1275558 e!2591796)))

(assert (= b!4174838 b!4174839))

(assert (= b!4174837 b!4174838))

(assert (= (and b!4174356 ((_ is Cons!45773) (t!344624 rules!3843))) b!4174837))

(declare-fun m!4764639 () Bool)

(assert (=> b!4174838 m!4764639))

(declare-fun m!4764641 () Bool)

(assert (=> b!4174838 m!4764641))

(declare-fun b!4174844 () Bool)

(declare-fun e!2591801 () Bool)

(declare-fun tp!1275651 () Bool)

(assert (=> b!4174844 (= e!2591801 (and tp_is_empty!21969 tp!1275651))))

(assert (=> b!4174345 (= tp!1275562 e!2591801)))

(assert (= (and b!4174345 ((_ is Cons!45771) (t!344622 pBis!107))) b!4174844))

(declare-fun b!4174845 () Bool)

(declare-fun e!2591802 () Bool)

(declare-fun tp!1275652 () Bool)

(assert (=> b!4174845 (= e!2591802 (and tp_is_empty!21969 tp!1275652))))

(assert (=> b!4174343 (= tp!1275556 e!2591802)))

(assert (= (and b!4174343 ((_ is Cons!45771) (t!344622 input!3342))) b!4174845))

(declare-fun b!4174846 () Bool)

(declare-fun e!2591803 () Bool)

(declare-fun tp!1275653 () Bool)

(assert (=> b!4174846 (= e!2591803 (and tp_is_empty!21969 tp!1275653))))

(assert (=> b!4174358 (= tp!1275561 e!2591803)))

(assert (= (and b!4174358 ((_ is Cons!45771) (t!344622 p!2959))) b!4174846))

(declare-fun b!4174848 () Bool)

(declare-fun e!2591804 () Bool)

(declare-fun tp!1275656 () Bool)

(declare-fun tp!1275655 () Bool)

(assert (=> b!4174848 (= e!2591804 (and tp!1275656 tp!1275655))))

(declare-fun b!4174850 () Bool)

(declare-fun tp!1275654 () Bool)

(declare-fun tp!1275658 () Bool)

(assert (=> b!4174850 (= e!2591804 (and tp!1275654 tp!1275658))))

(declare-fun b!4174849 () Bool)

(declare-fun tp!1275657 () Bool)

(assert (=> b!4174849 (= e!2591804 tp!1275657)))

(declare-fun b!4174847 () Bool)

(assert (=> b!4174847 (= e!2591804 tp_is_empty!21969)))

(assert (=> b!4174342 (= tp!1275567 e!2591804)))

(assert (= (and b!4174342 ((_ is ElementMatch!12503) (regex!7598 (h!51193 rules!3843)))) b!4174847))

(assert (= (and b!4174342 ((_ is Concat!20332) (regex!7598 (h!51193 rules!3843)))) b!4174848))

(assert (= (and b!4174342 ((_ is Star!12503) (regex!7598 (h!51193 rules!3843)))) b!4174849))

(assert (= (and b!4174342 ((_ is Union!12503) (regex!7598 (h!51193 rules!3843)))) b!4174850))

(declare-fun b_lambda!122649 () Bool)

(assert (= b_lambda!122631 (or (and b!4174339 b_free!120975) (and b!4174350 b_free!120979 (= (toValue!10282 (transformation!7598 (h!51193 rules!3843))) (toValue!10282 (transformation!7598 r!4142)))) (and b!4174361 b_free!120983 (= (toValue!10282 (transformation!7598 rBis!167)) (toValue!10282 (transformation!7598 r!4142)))) (and b!4174839 b_free!120991 (= (toValue!10282 (transformation!7598 (h!51193 (t!344624 rules!3843)))) (toValue!10282 (transformation!7598 r!4142)))) b_lambda!122649)))

(declare-fun b_lambda!122651 () Bool)

(assert (= b_lambda!122647 (or (and b!4174339 b_free!120975) (and b!4174350 b_free!120979 (= (toValue!10282 (transformation!7598 (h!51193 rules!3843))) (toValue!10282 (transformation!7598 r!4142)))) (and b!4174361 b_free!120983 (= (toValue!10282 (transformation!7598 rBis!167)) (toValue!10282 (transformation!7598 r!4142)))) (and b!4174839 b_free!120991 (= (toValue!10282 (transformation!7598 (h!51193 (t!344624 rules!3843)))) (toValue!10282 (transformation!7598 r!4142)))) b_lambda!122651)))

(declare-fun b_lambda!122653 () Bool)

(assert (= b_lambda!122645 (or (and b!4174339 b_free!120977) (and b!4174350 b_free!120981 (= (toChars!10141 (transformation!7598 (h!51193 rules!3843))) (toChars!10141 (transformation!7598 r!4142)))) (and b!4174361 b_free!120985 (= (toChars!10141 (transformation!7598 rBis!167)) (toChars!10141 (transformation!7598 r!4142)))) (and b!4174839 b_free!120993 (= (toChars!10141 (transformation!7598 (h!51193 (t!344624 rules!3843)))) (toChars!10141 (transformation!7598 r!4142)))) b_lambda!122653)))

(check-sat (not b!4174550) (not b!4174365) (not d!1232884) (not b!4174489) tp_is_empty!21969 b_and!326211 (not b!4174551) (not b!4174822) (not tb!249947) (not b!4174443) (not b!4174450) (not b!4174543) (not b!4174531) (not b!4174556) (not bm!291404) (not b!4174844) (not d!1232888) (not b!4174848) (not b!4174798) (not b!4174538) (not b!4174788) (not b!4174794) (not b!4174446) (not d!1232874) (not b!4174581) (not b!4174534) (not b!4174533) (not b!4174823) (not b!4174802) (not b!4174444) (not b!4174525) (not b!4174845) (not d!1232814) b_and!326219 (not d!1232804) (not d!1232802) (not b_next!121697) (not b_next!121681) (not b!4174445) (not b!4174487) (not b!4174799) (not b!4174471) (not b!4174582) (not bm!291397) (not d!1232816) (not b!4174837) (not d!1232822) (not b!4174804) (not d!1232824) (not b!4174838) (not bm!291409) (not b!4174795) (not b!4174592) b_and!326221 (not b_next!121685) (not b!4174828) (not b!4174805) b_and!326217 (not b!4174586) (not b!4174800) (not d!1232772) (not b!4174810) (not b_next!121683) (not b!4174806) (not b!4174846) (not b!4174526) (not d!1232798) (not b!4174826) (not b!4174803) (not b!4174590) (not d!1232878) (not d!1232882) (not b!4174824) (not b_lambda!122653) (not d!1232876) (not tb!249969) (not b!4174827) (not d!1232830) b_and!326213 (not b!4174522) (not b_next!121679) (not d!1232820) (not b!4174488) (not b!4174801) (not b!4174447) (not b!4174527) (not bm!291405) (not b!4174442) (not b!4174849) (not b_next!121695) (not b!4174580) (not b!4174588) (not b!4174808) (not b!4174583) (not d!1232770) (not d!1232886) (not b!4174579) (not b!4174578) b_and!326215 (not b_lambda!122649) b_and!326223 b_and!326209 (not b!4174584) (not b!4174850) (not b!4174535) (not d!1232808) (not b!4174448) (not b!4174591) (not b_next!121687) (not b!4174523) (not b_lambda!122651) (not b_next!121689))
(check-sat b_and!326211 b_and!326219 b_and!326217 (not b_next!121683) (not b_next!121695) (not b_next!121697) (not b_next!121681) b_and!326221 (not b_next!121685) b_and!326213 (not b_next!121679) b_and!326215 b_and!326223 b_and!326209 (not b_next!121689) (not b_next!121687))
