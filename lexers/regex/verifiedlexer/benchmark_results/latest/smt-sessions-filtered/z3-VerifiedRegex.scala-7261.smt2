; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!387028 () Bool)

(assert start!387028)

(declare-fun b!4090241 () Bool)

(declare-fun b_free!114353 () Bool)

(declare-fun b_next!115057 () Bool)

(assert (=> b!4090241 (= b_free!114353 (not b_next!115057))))

(declare-fun tp!1238342 () Bool)

(declare-fun b_and!315127 () Bool)

(assert (=> b!4090241 (= tp!1238342 b_and!315127)))

(declare-fun b_free!114355 () Bool)

(declare-fun b_next!115059 () Bool)

(assert (=> b!4090241 (= b_free!114355 (not b_next!115059))))

(declare-fun tp!1238350 () Bool)

(declare-fun b_and!315129 () Bool)

(assert (=> b!4090241 (= tp!1238350 b_and!315129)))

(declare-fun b!4090244 () Bool)

(declare-fun b_free!114357 () Bool)

(declare-fun b_next!115061 () Bool)

(assert (=> b!4090244 (= b_free!114357 (not b_next!115061))))

(declare-fun tp!1238347 () Bool)

(declare-fun b_and!315131 () Bool)

(assert (=> b!4090244 (= tp!1238347 b_and!315131)))

(declare-fun b_free!114359 () Bool)

(declare-fun b_next!115063 () Bool)

(assert (=> b!4090244 (= b_free!114359 (not b_next!115063))))

(declare-fun tp!1238343 () Bool)

(declare-fun b_and!315133 () Bool)

(assert (=> b!4090244 (= tp!1238343 b_and!315133)))

(declare-fun b!4090236 () Bool)

(declare-fun e!2538471 () Bool)

(declare-fun tp!1238344 () Bool)

(declare-datatypes ((List!43987 0))(
  ( (Nil!43863) (Cons!43863 (h!49283 (_ BitVec 16)) (t!338562 List!43987)) )
))
(declare-datatypes ((TokenValue!7324 0))(
  ( (FloatLiteralValue!14648 (text!51713 List!43987)) (TokenValueExt!7323 (__x!26865 Int)) (Broken!36620 (value!222805 List!43987)) (Object!7447) (End!7324) (Def!7324) (Underscore!7324) (Match!7324) (Else!7324) (Error!7324) (Case!7324) (If!7324) (Extends!7324) (Abstract!7324) (Class!7324) (Val!7324) (DelimiterValue!14648 (del!7384 List!43987)) (KeywordValue!7330 (value!222806 List!43987)) (CommentValue!14648 (value!222807 List!43987)) (WhitespaceValue!14648 (value!222808 List!43987)) (IndentationValue!7324 (value!222809 List!43987)) (String!50369) (Int32!7324) (Broken!36621 (value!222810 List!43987)) (Boolean!7325) (Unit!63384) (OperatorValue!7327 (op!7384 List!43987)) (IdentifierValue!14648 (value!222811 List!43987)) (IdentifierValue!14649 (value!222812 List!43987)) (WhitespaceValue!14649 (value!222813 List!43987)) (True!14648) (False!14648) (Broken!36622 (value!222814 List!43987)) (Broken!36623 (value!222815 List!43987)) (True!14649) (RightBrace!7324) (RightBracket!7324) (Colon!7324) (Null!7324) (Comma!7324) (LeftBracket!7324) (False!14649) (LeftBrace!7324) (ImaginaryLiteralValue!7324 (text!51714 List!43987)) (StringLiteralValue!21972 (value!222816 List!43987)) (EOFValue!7324 (value!222817 List!43987)) (IdentValue!7324 (value!222818 List!43987)) (DelimiterValue!14649 (value!222819 List!43987)) (DedentValue!7324 (value!222820 List!43987)) (NewLineValue!7324 (value!222821 List!43987)) (IntegerValue!21972 (value!222822 (_ BitVec 32)) (text!51715 List!43987)) (IntegerValue!21973 (value!222823 Int) (text!51716 List!43987)) (Times!7324) (Or!7324) (Equal!7324) (Minus!7324) (Broken!36624 (value!222824 List!43987)) (And!7324) (Div!7324) (LessEqual!7324) (Mod!7324) (Concat!19323) (Not!7324) (Plus!7324) (SpaceValue!7324 (value!222825 List!43987)) (IntegerValue!21974 (value!222826 Int) (text!51717 List!43987)) (StringLiteralValue!21973 (text!51718 List!43987)) (FloatLiteralValue!14649 (text!51719 List!43987)) (BytesLiteralValue!7324 (value!222827 List!43987)) (CommentValue!14649 (value!222828 List!43987)) (StringLiteralValue!21974 (value!222829 List!43987)) (ErrorTokenValue!7324 (msg!7385 List!43987)) )
))
(declare-datatypes ((C!24184 0))(
  ( (C!24185 (val!14202 Int)) )
))
(declare-datatypes ((Regex!11999 0))(
  ( (ElementMatch!11999 (c!704950 C!24184)) (Concat!19324 (regOne!24510 Regex!11999) (regTwo!24510 Regex!11999)) (EmptyExpr!11999) (Star!11999 (reg!12328 Regex!11999)) (EmptyLang!11999) (Union!11999 (regOne!24511 Regex!11999) (regTwo!24511 Regex!11999)) )
))
(declare-datatypes ((String!50370 0))(
  ( (String!50371 (value!222830 String)) )
))
(declare-datatypes ((List!43988 0))(
  ( (Nil!43864) (Cons!43864 (h!49284 C!24184) (t!338563 List!43988)) )
))
(declare-datatypes ((IArray!26615 0))(
  ( (IArray!26616 (innerList!13365 List!43988)) )
))
(declare-datatypes ((Conc!13305 0))(
  ( (Node!13305 (left!32970 Conc!13305) (right!33300 Conc!13305) (csize!26840 Int) (cheight!13516 Int)) (Leaf!20567 (xs!16611 IArray!26615) (csize!26841 Int)) (Empty!13305) )
))
(declare-datatypes ((BalanceConc!26204 0))(
  ( (BalanceConc!26205 (c!704951 Conc!13305)) )
))
(declare-datatypes ((TokenValueInjection!14076 0))(
  ( (TokenValueInjection!14077 (toValue!9682 Int) (toChars!9541 Int)) )
))
(declare-datatypes ((Rule!13988 0))(
  ( (Rule!13989 (regex!7094 Regex!11999) (tag!7954 String!50370) (isSeparator!7094 Bool) (transformation!7094 TokenValueInjection!14076)) )
))
(declare-datatypes ((List!43989 0))(
  ( (Nil!43865) (Cons!43865 (h!49285 Rule!13988) (t!338564 List!43989)) )
))
(declare-fun rules!3870 () List!43989)

(declare-fun e!2538477 () Bool)

(declare-fun inv!58562 (String!50370) Bool)

(declare-fun inv!58564 (TokenValueInjection!14076) Bool)

(assert (=> b!4090236 (= e!2538477 (and tp!1238344 (inv!58562 (tag!7954 (h!49285 rules!3870))) (inv!58564 (transformation!7094 (h!49285 rules!3870))) e!2538471))))

(declare-fun b!4090237 () Bool)

(declare-fun e!2538466 () Bool)

(declare-fun tp!1238349 () Bool)

(assert (=> b!4090237 (= e!2538466 (and e!2538477 tp!1238349))))

(declare-fun b!4090238 () Bool)

(declare-fun res!1671673 () Bool)

(declare-fun e!2538476 () Bool)

(assert (=> b!4090238 (=> res!1671673 e!2538476)))

(declare-fun isEmpty!26235 (List!43989) Bool)

(assert (=> b!4090238 (= res!1671673 (isEmpty!26235 (t!338564 rules!3870)))))

(declare-fun b!4090239 () Bool)

(declare-fun res!1671675 () Bool)

(declare-fun e!2538465 () Bool)

(assert (=> b!4090239 (=> (not res!1671675) (not e!2538465))))

(declare-fun r!4213 () Rule!13988)

(declare-fun contains!8773 (List!43989 Rule!13988) Bool)

(assert (=> b!4090239 (= res!1671675 (contains!8773 rules!3870 r!4213))))

(declare-fun b!4090240 () Bool)

(declare-fun e!2538474 () Bool)

(declare-fun tp_is_empty!21001 () Bool)

(declare-fun tp!1238348 () Bool)

(assert (=> b!4090240 (= e!2538474 (and tp_is_empty!21001 tp!1238348))))

(assert (=> b!4090241 (= e!2538471 (and tp!1238342 tp!1238350))))

(declare-fun b!4090242 () Bool)

(declare-fun e!2538475 () Bool)

(declare-fun tp!1238345 () Bool)

(assert (=> b!4090242 (= e!2538475 (and tp_is_empty!21001 tp!1238345))))

(declare-fun b!4090243 () Bool)

(declare-fun res!1671674 () Bool)

(assert (=> b!4090243 (=> (not res!1671674) (not e!2538465))))

(assert (=> b!4090243 (= res!1671674 (not (isEmpty!26235 rules!3870)))))

(declare-fun e!2538472 () Bool)

(assert (=> b!4090244 (= e!2538472 (and tp!1238347 tp!1238343))))

(declare-fun b!4090245 () Bool)

(declare-fun res!1671678 () Bool)

(declare-fun e!2538478 () Bool)

(assert (=> b!4090245 (=> res!1671678 e!2538478)))

(get-info :version)

(assert (=> b!4090245 (= res!1671678 (or (and ((_ is Cons!43865) rules!3870) (= (h!49285 rules!3870) r!4213)) (not ((_ is Cons!43865) rules!3870)) (= (h!49285 rules!3870) r!4213)))))

(declare-fun b!4090246 () Bool)

(declare-fun res!1671677 () Bool)

(assert (=> b!4090246 (=> res!1671677 e!2538476)))

(assert (=> b!4090246 (= res!1671677 (not (contains!8773 (t!338564 rules!3870) r!4213)))))

(declare-fun b!4090247 () Bool)

(assert (=> b!4090247 (= e!2538478 e!2538476)))

(declare-fun res!1671672 () Bool)

(assert (=> b!4090247 (=> res!1671672 e!2538476)))

(declare-datatypes ((LexerInterface!6683 0))(
  ( (LexerInterfaceExt!6680 (__x!26866 Int)) (Lexer!6681) )
))
(declare-fun thiss!26199 () LexerInterface!6683)

(declare-fun input!3411 () List!43988)

(declare-datatypes ((Token!13314 0))(
  ( (Token!13315 (value!222831 TokenValue!7324) (rule!10234 Rule!13988) (size!32763 Int) (originalCharacters!7688 List!43988)) )
))
(declare-datatypes ((tuple2!42796 0))(
  ( (tuple2!42797 (_1!24532 Token!13314) (_2!24532 List!43988)) )
))
(declare-datatypes ((Option!9500 0))(
  ( (None!9499) (Some!9499 (v!39985 tuple2!42796)) )
))
(declare-fun isEmpty!26236 (Option!9500) Bool)

(declare-fun maxPrefixOneRule!2955 (LexerInterface!6683 Rule!13988 List!43988) Option!9500)

(assert (=> b!4090247 (= res!1671672 (not (isEmpty!26236 (maxPrefixOneRule!2955 thiss!26199 (h!49285 rules!3870) input!3411))))))

(declare-fun rulesInvariant!6026 (LexerInterface!6683 List!43989) Bool)

(assert (=> b!4090247 (rulesInvariant!6026 thiss!26199 (t!338564 rules!3870))))

(declare-datatypes ((Unit!63385 0))(
  ( (Unit!63386) )
))
(declare-fun lt!1462869 () Unit!63385)

(declare-fun lemmaInvariantOnRulesThenOnTail!796 (LexerInterface!6683 Rule!13988 List!43989) Unit!63385)

(assert (=> b!4090247 (= lt!1462869 (lemmaInvariantOnRulesThenOnTail!796 thiss!26199 (h!49285 rules!3870) (t!338564 rules!3870)))))

(declare-fun b!4090248 () Bool)

(declare-fun res!1671683 () Bool)

(assert (=> b!4090248 (=> res!1671683 e!2538476)))

(declare-fun lt!1462871 () Option!9500)

(declare-fun maxPrefix!3973 (LexerInterface!6683 List!43989 List!43988) Option!9500)

(assert (=> b!4090248 (= res!1671683 (not (= (maxPrefix!3973 thiss!26199 (t!338564 rules!3870) input!3411) lt!1462871)))))

(declare-fun res!1671680 () Bool)

(assert (=> start!387028 (=> (not res!1671680) (not e!2538465))))

(assert (=> start!387028 (= res!1671680 ((_ is Lexer!6681) thiss!26199))))

(assert (=> start!387028 e!2538465))

(assert (=> start!387028 true))

(declare-fun e!2538468 () Bool)

(assert (=> start!387028 e!2538468))

(assert (=> start!387028 e!2538466))

(assert (=> start!387028 e!2538474))

(assert (=> start!387028 e!2538475))

(declare-fun e!2538469 () Bool)

(assert (=> start!387028 e!2538469))

(declare-fun b!4090249 () Bool)

(declare-fun e!2538467 () Bool)

(assert (=> b!4090249 (= e!2538465 e!2538467)))

(declare-fun res!1671676 () Bool)

(assert (=> b!4090249 (=> (not res!1671676) (not e!2538467))))

(assert (=> b!4090249 (= res!1671676 (= (maxPrefix!3973 thiss!26199 rules!3870 input!3411) lt!1462871))))

(declare-fun suffix!1518 () List!43988)

(declare-fun lt!1462873 () BalanceConc!26204)

(declare-fun p!2988 () List!43988)

(declare-fun apply!10277 (TokenValueInjection!14076 BalanceConc!26204) TokenValue!7324)

(declare-fun size!32764 (List!43988) Int)

(assert (=> b!4090249 (= lt!1462871 (Some!9499 (tuple2!42797 (Token!13315 (apply!10277 (transformation!7094 r!4213) lt!1462873) r!4213 (size!32764 p!2988) p!2988) suffix!1518)))))

(declare-fun lt!1462872 () Unit!63385)

(declare-fun lemmaSemiInverse!2061 (TokenValueInjection!14076 BalanceConc!26204) Unit!63385)

(assert (=> b!4090249 (= lt!1462872 (lemmaSemiInverse!2061 (transformation!7094 r!4213) lt!1462873))))

(declare-fun seqFromList!5311 (List!43988) BalanceConc!26204)

(assert (=> b!4090249 (= lt!1462873 (seqFromList!5311 p!2988))))

(declare-fun b!4090250 () Bool)

(declare-fun res!1671682 () Bool)

(assert (=> b!4090250 (=> (not res!1671682) (not e!2538465))))

(declare-fun isEmpty!26237 (List!43988) Bool)

(assert (=> b!4090250 (= res!1671682 (not (isEmpty!26237 p!2988)))))

(declare-fun b!4090251 () Bool)

(assert (=> b!4090251 (= e!2538467 (not e!2538478))))

(declare-fun res!1671679 () Bool)

(assert (=> b!4090251 (=> res!1671679 e!2538478)))

(declare-fun matchR!5940 (Regex!11999 List!43988) Bool)

(assert (=> b!4090251 (= res!1671679 (not (matchR!5940 (regex!7094 r!4213) p!2988)))))

(declare-fun ruleValid!3014 (LexerInterface!6683 Rule!13988) Bool)

(assert (=> b!4090251 (ruleValid!3014 thiss!26199 r!4213)))

(declare-fun lt!1462870 () Unit!63385)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2080 (LexerInterface!6683 Rule!13988 List!43989) Unit!63385)

(assert (=> b!4090251 (= lt!1462870 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2080 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4090252 () Bool)

(declare-fun size!32765 (List!43989) Int)

(assert (=> b!4090252 (= e!2538476 (< (size!32765 (t!338564 rules!3870)) (size!32765 rules!3870)))))

(declare-fun lt!1462868 () Unit!63385)

(assert (=> b!4090252 (= lt!1462868 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2080 thiss!26199 r!4213 (t!338564 rules!3870)))))

(declare-fun b!4090253 () Bool)

(declare-fun res!1671681 () Bool)

(assert (=> b!4090253 (=> (not res!1671681) (not e!2538465))))

(assert (=> b!4090253 (= res!1671681 (rulesInvariant!6026 thiss!26199 rules!3870))))

(declare-fun b!4090254 () Bool)

(declare-fun tp!1238341 () Bool)

(assert (=> b!4090254 (= e!2538469 (and tp!1238341 (inv!58562 (tag!7954 r!4213)) (inv!58564 (transformation!7094 r!4213)) e!2538472))))

(declare-fun b!4090255 () Bool)

(declare-fun tp!1238346 () Bool)

(assert (=> b!4090255 (= e!2538468 (and tp_is_empty!21001 tp!1238346))))

(declare-fun b!4090256 () Bool)

(declare-fun res!1671671 () Bool)

(assert (=> b!4090256 (=> (not res!1671671) (not e!2538465))))

(declare-fun ++!11500 (List!43988 List!43988) List!43988)

(assert (=> b!4090256 (= res!1671671 (= input!3411 (++!11500 p!2988 suffix!1518)))))

(assert (= (and start!387028 res!1671680) b!4090243))

(assert (= (and b!4090243 res!1671674) b!4090253))

(assert (= (and b!4090253 res!1671681) b!4090239))

(assert (= (and b!4090239 res!1671675) b!4090256))

(assert (= (and b!4090256 res!1671671) b!4090250))

(assert (= (and b!4090250 res!1671682) b!4090249))

(assert (= (and b!4090249 res!1671676) b!4090251))

(assert (= (and b!4090251 (not res!1671679)) b!4090245))

(assert (= (and b!4090245 (not res!1671678)) b!4090247))

(assert (= (and b!4090247 (not res!1671672)) b!4090238))

(assert (= (and b!4090238 (not res!1671673)) b!4090246))

(assert (= (and b!4090246 (not res!1671677)) b!4090248))

(assert (= (and b!4090248 (not res!1671683)) b!4090252))

(assert (= (and start!387028 ((_ is Cons!43864) suffix!1518)) b!4090255))

(assert (= b!4090236 b!4090241))

(assert (= b!4090237 b!4090236))

(assert (= (and start!387028 ((_ is Cons!43865) rules!3870)) b!4090237))

(assert (= (and start!387028 ((_ is Cons!43864) p!2988)) b!4090240))

(assert (= (and start!387028 ((_ is Cons!43864) input!3411)) b!4090242))

(assert (= b!4090254 b!4090244))

(assert (= start!387028 b!4090254))

(declare-fun m!4696979 () Bool)

(assert (=> b!4090249 m!4696979))

(declare-fun m!4696981 () Bool)

(assert (=> b!4090249 m!4696981))

(declare-fun m!4696983 () Bool)

(assert (=> b!4090249 m!4696983))

(declare-fun m!4696985 () Bool)

(assert (=> b!4090249 m!4696985))

(declare-fun m!4696987 () Bool)

(assert (=> b!4090249 m!4696987))

(declare-fun m!4696989 () Bool)

(assert (=> b!4090239 m!4696989))

(declare-fun m!4696991 () Bool)

(assert (=> b!4090250 m!4696991))

(declare-fun m!4696993 () Bool)

(assert (=> b!4090248 m!4696993))

(declare-fun m!4696995 () Bool)

(assert (=> b!4090246 m!4696995))

(declare-fun m!4696997 () Bool)

(assert (=> b!4090253 m!4696997))

(declare-fun m!4696999 () Bool)

(assert (=> b!4090238 m!4696999))

(declare-fun m!4697001 () Bool)

(assert (=> b!4090254 m!4697001))

(declare-fun m!4697003 () Bool)

(assert (=> b!4090254 m!4697003))

(declare-fun m!4697005 () Bool)

(assert (=> b!4090236 m!4697005))

(declare-fun m!4697007 () Bool)

(assert (=> b!4090236 m!4697007))

(declare-fun m!4697009 () Bool)

(assert (=> b!4090256 m!4697009))

(declare-fun m!4697011 () Bool)

(assert (=> b!4090251 m!4697011))

(declare-fun m!4697013 () Bool)

(assert (=> b!4090251 m!4697013))

(declare-fun m!4697015 () Bool)

(assert (=> b!4090251 m!4697015))

(declare-fun m!4697017 () Bool)

(assert (=> b!4090243 m!4697017))

(declare-fun m!4697019 () Bool)

(assert (=> b!4090247 m!4697019))

(assert (=> b!4090247 m!4697019))

(declare-fun m!4697021 () Bool)

(assert (=> b!4090247 m!4697021))

(declare-fun m!4697023 () Bool)

(assert (=> b!4090247 m!4697023))

(declare-fun m!4697025 () Bool)

(assert (=> b!4090247 m!4697025))

(declare-fun m!4697027 () Bool)

(assert (=> b!4090252 m!4697027))

(declare-fun m!4697029 () Bool)

(assert (=> b!4090252 m!4697029))

(declare-fun m!4697031 () Bool)

(assert (=> b!4090252 m!4697031))

(check-sat b_and!315131 (not b_next!115059) (not b_next!115057) (not b!4090243) (not b_next!115061) b_and!315127 b_and!315133 (not b_next!115063) (not b!4090246) (not b!4090256) (not b!4090238) (not b!4090253) (not b!4090255) (not b!4090249) tp_is_empty!21001 (not b!4090242) (not b!4090237) (not b!4090236) b_and!315129 (not b!4090240) (not b!4090250) (not b!4090248) (not b!4090239) (not b!4090252) (not b!4090251) (not b!4090247) (not b!4090254))
(check-sat b_and!315131 (not b_next!115059) (not b_next!115057) (not b_next!115061) b_and!315129 b_and!315127 b_and!315133 (not b_next!115063))
(get-model)

(declare-fun d!1214350 () Bool)

(declare-fun lt!1462876 () Int)

(assert (=> d!1214350 (>= lt!1462876 0)))

(declare-fun e!2538481 () Int)

(assert (=> d!1214350 (= lt!1462876 e!2538481)))

(declare-fun c!704954 () Bool)

(assert (=> d!1214350 (= c!704954 ((_ is Nil!43865) (t!338564 rules!3870)))))

(assert (=> d!1214350 (= (size!32765 (t!338564 rules!3870)) lt!1462876)))

(declare-fun b!4090261 () Bool)

(assert (=> b!4090261 (= e!2538481 0)))

(declare-fun b!4090262 () Bool)

(assert (=> b!4090262 (= e!2538481 (+ 1 (size!32765 (t!338564 (t!338564 rules!3870)))))))

(assert (= (and d!1214350 c!704954) b!4090261))

(assert (= (and d!1214350 (not c!704954)) b!4090262))

(declare-fun m!4697033 () Bool)

(assert (=> b!4090262 m!4697033))

(assert (=> b!4090252 d!1214350))

(declare-fun d!1214352 () Bool)

(declare-fun lt!1462877 () Int)

(assert (=> d!1214352 (>= lt!1462877 0)))

(declare-fun e!2538482 () Int)

(assert (=> d!1214352 (= lt!1462877 e!2538482)))

(declare-fun c!704955 () Bool)

(assert (=> d!1214352 (= c!704955 ((_ is Nil!43865) rules!3870))))

(assert (=> d!1214352 (= (size!32765 rules!3870) lt!1462877)))

(declare-fun b!4090263 () Bool)

(assert (=> b!4090263 (= e!2538482 0)))

(declare-fun b!4090264 () Bool)

(assert (=> b!4090264 (= e!2538482 (+ 1 (size!32765 (t!338564 rules!3870))))))

(assert (= (and d!1214352 c!704955) b!4090263))

(assert (= (and d!1214352 (not c!704955)) b!4090264))

(assert (=> b!4090264 m!4697027))

(assert (=> b!4090252 d!1214352))

(declare-fun d!1214354 () Bool)

(assert (=> d!1214354 (ruleValid!3014 thiss!26199 r!4213)))

(declare-fun lt!1462880 () Unit!63385)

(declare-fun choose!24981 (LexerInterface!6683 Rule!13988 List!43989) Unit!63385)

(assert (=> d!1214354 (= lt!1462880 (choose!24981 thiss!26199 r!4213 (t!338564 rules!3870)))))

(assert (=> d!1214354 (contains!8773 (t!338564 rules!3870) r!4213)))

(assert (=> d!1214354 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2080 thiss!26199 r!4213 (t!338564 rules!3870)) lt!1462880)))

(declare-fun bs!593253 () Bool)

(assert (= bs!593253 d!1214354))

(assert (=> bs!593253 m!4697013))

(declare-fun m!4697035 () Bool)

(assert (=> bs!593253 m!4697035))

(assert (=> bs!593253 m!4696995))

(assert (=> b!4090252 d!1214354))

(declare-fun d!1214358 () Bool)

(declare-fun res!1671697 () Bool)

(declare-fun e!2538489 () Bool)

(assert (=> d!1214358 (=> (not res!1671697) (not e!2538489))))

(declare-fun rulesValid!2782 (LexerInterface!6683 List!43989) Bool)

(assert (=> d!1214358 (= res!1671697 (rulesValid!2782 thiss!26199 rules!3870))))

(assert (=> d!1214358 (= (rulesInvariant!6026 thiss!26199 rules!3870) e!2538489)))

(declare-fun b!4090271 () Bool)

(declare-datatypes ((List!43991 0))(
  ( (Nil!43867) (Cons!43867 (h!49287 String!50370) (t!338590 List!43991)) )
))
(declare-fun noDuplicateTag!2783 (LexerInterface!6683 List!43989 List!43991) Bool)

(assert (=> b!4090271 (= e!2538489 (noDuplicateTag!2783 thiss!26199 rules!3870 Nil!43867))))

(assert (= (and d!1214358 res!1671697) b!4090271))

(declare-fun m!4697037 () Bool)

(assert (=> d!1214358 m!4697037))

(declare-fun m!4697039 () Bool)

(assert (=> b!4090271 m!4697039))

(assert (=> b!4090253 d!1214358))

(declare-fun d!1214360 () Bool)

(assert (=> d!1214360 (= (inv!58562 (tag!7954 r!4213)) (= (mod (str.len (value!222830 (tag!7954 r!4213))) 2) 0))))

(assert (=> b!4090254 d!1214360))

(declare-fun d!1214364 () Bool)

(declare-fun res!1671702 () Bool)

(declare-fun e!2538494 () Bool)

(assert (=> d!1214364 (=> (not res!1671702) (not e!2538494))))

(declare-fun semiInverseModEq!3048 (Int Int) Bool)

(assert (=> d!1214364 (= res!1671702 (semiInverseModEq!3048 (toChars!9541 (transformation!7094 r!4213)) (toValue!9682 (transformation!7094 r!4213))))))

(assert (=> d!1214364 (= (inv!58564 (transformation!7094 r!4213)) e!2538494)))

(declare-fun b!4090276 () Bool)

(declare-fun equivClasses!2947 (Int Int) Bool)

(assert (=> b!4090276 (= e!2538494 (equivClasses!2947 (toChars!9541 (transformation!7094 r!4213)) (toValue!9682 (transformation!7094 r!4213))))))

(assert (= (and d!1214364 res!1671702) b!4090276))

(declare-fun m!4697047 () Bool)

(assert (=> d!1214364 m!4697047))

(declare-fun m!4697049 () Bool)

(assert (=> b!4090276 m!4697049))

(assert (=> b!4090254 d!1214364))

(declare-fun d!1214368 () Bool)

(assert (=> d!1214368 (= (isEmpty!26235 rules!3870) ((_ is Nil!43865) rules!3870))))

(assert (=> b!4090243 d!1214368))

(declare-fun lt!1462886 () List!43988)

(declare-fun b!4090288 () Bool)

(declare-fun e!2538500 () Bool)

(assert (=> b!4090288 (= e!2538500 (or (not (= suffix!1518 Nil!43864)) (= lt!1462886 p!2988)))))

(declare-fun d!1214370 () Bool)

(assert (=> d!1214370 e!2538500))

(declare-fun res!1671707 () Bool)

(assert (=> d!1214370 (=> (not res!1671707) (not e!2538500))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6758 (List!43988) (InoxSet C!24184))

(assert (=> d!1214370 (= res!1671707 (= (content!6758 lt!1462886) ((_ map or) (content!6758 p!2988) (content!6758 suffix!1518))))))

(declare-fun e!2538499 () List!43988)

(assert (=> d!1214370 (= lt!1462886 e!2538499)))

(declare-fun c!704958 () Bool)

(assert (=> d!1214370 (= c!704958 ((_ is Nil!43864) p!2988))))

(assert (=> d!1214370 (= (++!11500 p!2988 suffix!1518) lt!1462886)))

(declare-fun b!4090287 () Bool)

(declare-fun res!1671708 () Bool)

(assert (=> b!4090287 (=> (not res!1671708) (not e!2538500))))

(assert (=> b!4090287 (= res!1671708 (= (size!32764 lt!1462886) (+ (size!32764 p!2988) (size!32764 suffix!1518))))))

(declare-fun b!4090285 () Bool)

(assert (=> b!4090285 (= e!2538499 suffix!1518)))

(declare-fun b!4090286 () Bool)

(assert (=> b!4090286 (= e!2538499 (Cons!43864 (h!49284 p!2988) (++!11500 (t!338563 p!2988) suffix!1518)))))

(assert (= (and d!1214370 c!704958) b!4090285))

(assert (= (and d!1214370 (not c!704958)) b!4090286))

(assert (= (and d!1214370 res!1671707) b!4090287))

(assert (= (and b!4090287 res!1671708) b!4090288))

(declare-fun m!4697051 () Bool)

(assert (=> d!1214370 m!4697051))

(declare-fun m!4697053 () Bool)

(assert (=> d!1214370 m!4697053))

(declare-fun m!4697055 () Bool)

(assert (=> d!1214370 m!4697055))

(declare-fun m!4697057 () Bool)

(assert (=> b!4090287 m!4697057))

(assert (=> b!4090287 m!4696987))

(declare-fun m!4697059 () Bool)

(assert (=> b!4090287 m!4697059))

(declare-fun m!4697061 () Bool)

(assert (=> b!4090286 m!4697061))

(assert (=> b!4090256 d!1214370))

(declare-fun d!1214372 () Bool)

(declare-fun lt!1462889 () Bool)

(declare-fun content!6759 (List!43989) (InoxSet Rule!13988))

(assert (=> d!1214372 (= lt!1462889 (select (content!6759 (t!338564 rules!3870)) r!4213))))

(declare-fun e!2538505 () Bool)

(assert (=> d!1214372 (= lt!1462889 e!2538505)))

(declare-fun res!1671713 () Bool)

(assert (=> d!1214372 (=> (not res!1671713) (not e!2538505))))

(assert (=> d!1214372 (= res!1671713 ((_ is Cons!43865) (t!338564 rules!3870)))))

(assert (=> d!1214372 (= (contains!8773 (t!338564 rules!3870) r!4213) lt!1462889)))

(declare-fun b!4090293 () Bool)

(declare-fun e!2538506 () Bool)

(assert (=> b!4090293 (= e!2538505 e!2538506)))

(declare-fun res!1671714 () Bool)

(assert (=> b!4090293 (=> res!1671714 e!2538506)))

(assert (=> b!4090293 (= res!1671714 (= (h!49285 (t!338564 rules!3870)) r!4213))))

(declare-fun b!4090294 () Bool)

(assert (=> b!4090294 (= e!2538506 (contains!8773 (t!338564 (t!338564 rules!3870)) r!4213))))

(assert (= (and d!1214372 res!1671713) b!4090293))

(assert (= (and b!4090293 (not res!1671714)) b!4090294))

(declare-fun m!4697063 () Bool)

(assert (=> d!1214372 m!4697063))

(declare-fun m!4697065 () Bool)

(assert (=> d!1214372 m!4697065))

(declare-fun m!4697067 () Bool)

(assert (=> b!4090294 m!4697067))

(assert (=> b!4090246 d!1214372))

(declare-fun d!1214374 () Bool)

(assert (=> d!1214374 (= (inv!58562 (tag!7954 (h!49285 rules!3870))) (= (mod (str.len (value!222830 (tag!7954 (h!49285 rules!3870)))) 2) 0))))

(assert (=> b!4090236 d!1214374))

(declare-fun d!1214376 () Bool)

(declare-fun res!1671715 () Bool)

(declare-fun e!2538507 () Bool)

(assert (=> d!1214376 (=> (not res!1671715) (not e!2538507))))

(assert (=> d!1214376 (= res!1671715 (semiInverseModEq!3048 (toChars!9541 (transformation!7094 (h!49285 rules!3870))) (toValue!9682 (transformation!7094 (h!49285 rules!3870)))))))

(assert (=> d!1214376 (= (inv!58564 (transformation!7094 (h!49285 rules!3870))) e!2538507)))

(declare-fun b!4090295 () Bool)

(assert (=> b!4090295 (= e!2538507 (equivClasses!2947 (toChars!9541 (transformation!7094 (h!49285 rules!3870))) (toValue!9682 (transformation!7094 (h!49285 rules!3870)))))))

(assert (= (and d!1214376 res!1671715) b!4090295))

(declare-fun m!4697069 () Bool)

(assert (=> d!1214376 m!4697069))

(declare-fun m!4697071 () Bool)

(assert (=> b!4090295 m!4697071))

(assert (=> b!4090236 d!1214376))

(declare-fun d!1214378 () Bool)

(assert (=> d!1214378 (= (isEmpty!26236 (maxPrefixOneRule!2955 thiss!26199 (h!49285 rules!3870) input!3411)) (not ((_ is Some!9499) (maxPrefixOneRule!2955 thiss!26199 (h!49285 rules!3870) input!3411))))))

(assert (=> b!4090247 d!1214378))

(declare-fun b!4090415 () Bool)

(declare-fun res!1671803 () Bool)

(declare-fun e!2538567 () Bool)

(assert (=> b!4090415 (=> (not res!1671803) (not e!2538567))))

(declare-fun lt!1462939 () Option!9500)

(declare-fun get!14385 (Option!9500) tuple2!42796)

(assert (=> b!4090415 (= res!1671803 (< (size!32764 (_2!24532 (get!14385 lt!1462939))) (size!32764 input!3411)))))

(declare-fun b!4090416 () Bool)

(declare-fun e!2538566 () Option!9500)

(declare-datatypes ((tuple2!42800 0))(
  ( (tuple2!42801 (_1!24534 List!43988) (_2!24534 List!43988)) )
))
(declare-fun lt!1462941 () tuple2!42800)

(declare-fun size!32767 (BalanceConc!26204) Int)

(assert (=> b!4090416 (= e!2538566 (Some!9499 (tuple2!42797 (Token!13315 (apply!10277 (transformation!7094 (h!49285 rules!3870)) (seqFromList!5311 (_1!24534 lt!1462941))) (h!49285 rules!3870) (size!32767 (seqFromList!5311 (_1!24534 lt!1462941))) (_1!24534 lt!1462941)) (_2!24534 lt!1462941))))))

(declare-fun lt!1462942 () Unit!63385)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1433 (Regex!11999 List!43988) Unit!63385)

(assert (=> b!4090416 (= lt!1462942 (longestMatchIsAcceptedByMatchOrIsEmpty!1433 (regex!7094 (h!49285 rules!3870)) input!3411))))

(declare-fun res!1671805 () Bool)

(declare-fun findLongestMatchInner!1460 (Regex!11999 List!43988 Int List!43988 List!43988 Int) tuple2!42800)

(assert (=> b!4090416 (= res!1671805 (isEmpty!26237 (_1!24534 (findLongestMatchInner!1460 (regex!7094 (h!49285 rules!3870)) Nil!43864 (size!32764 Nil!43864) input!3411 input!3411 (size!32764 input!3411)))))))

(declare-fun e!2538565 () Bool)

(assert (=> b!4090416 (=> res!1671805 e!2538565)))

(assert (=> b!4090416 e!2538565))

(declare-fun lt!1462938 () Unit!63385)

(assert (=> b!4090416 (= lt!1462938 lt!1462942)))

(declare-fun lt!1462940 () Unit!63385)

(assert (=> b!4090416 (= lt!1462940 (lemmaSemiInverse!2061 (transformation!7094 (h!49285 rules!3870)) (seqFromList!5311 (_1!24534 lt!1462941))))))

(declare-fun d!1214380 () Bool)

(declare-fun e!2538564 () Bool)

(assert (=> d!1214380 e!2538564))

(declare-fun res!1671804 () Bool)

(assert (=> d!1214380 (=> res!1671804 e!2538564)))

(assert (=> d!1214380 (= res!1671804 (isEmpty!26236 lt!1462939))))

(assert (=> d!1214380 (= lt!1462939 e!2538566)))

(declare-fun c!704976 () Bool)

(assert (=> d!1214380 (= c!704976 (isEmpty!26237 (_1!24534 lt!1462941)))))

(declare-fun findLongestMatch!1373 (Regex!11999 List!43988) tuple2!42800)

(assert (=> d!1214380 (= lt!1462941 (findLongestMatch!1373 (regex!7094 (h!49285 rules!3870)) input!3411))))

(assert (=> d!1214380 (ruleValid!3014 thiss!26199 (h!49285 rules!3870))))

(assert (=> d!1214380 (= (maxPrefixOneRule!2955 thiss!26199 (h!49285 rules!3870) input!3411) lt!1462939)))

(declare-fun b!4090417 () Bool)

(declare-fun res!1671807 () Bool)

(assert (=> b!4090417 (=> (not res!1671807) (not e!2538567))))

(assert (=> b!4090417 (= res!1671807 (= (rule!10234 (_1!24532 (get!14385 lt!1462939))) (h!49285 rules!3870)))))

(declare-fun b!4090418 () Bool)

(declare-fun res!1671801 () Bool)

(assert (=> b!4090418 (=> (not res!1671801) (not e!2538567))))

(assert (=> b!4090418 (= res!1671801 (= (value!222831 (_1!24532 (get!14385 lt!1462939))) (apply!10277 (transformation!7094 (rule!10234 (_1!24532 (get!14385 lt!1462939)))) (seqFromList!5311 (originalCharacters!7688 (_1!24532 (get!14385 lt!1462939)))))))))

(declare-fun b!4090419 () Bool)

(assert (=> b!4090419 (= e!2538564 e!2538567)))

(declare-fun res!1671802 () Bool)

(assert (=> b!4090419 (=> (not res!1671802) (not e!2538567))))

(declare-fun list!16282 (BalanceConc!26204) List!43988)

(declare-fun charsOf!4854 (Token!13314) BalanceConc!26204)

(assert (=> b!4090419 (= res!1671802 (matchR!5940 (regex!7094 (h!49285 rules!3870)) (list!16282 (charsOf!4854 (_1!24532 (get!14385 lt!1462939))))))))

(declare-fun b!4090420 () Bool)

(assert (=> b!4090420 (= e!2538566 None!9499)))

(declare-fun b!4090421 () Bool)

(assert (=> b!4090421 (= e!2538565 (matchR!5940 (regex!7094 (h!49285 rules!3870)) (_1!24534 (findLongestMatchInner!1460 (regex!7094 (h!49285 rules!3870)) Nil!43864 (size!32764 Nil!43864) input!3411 input!3411 (size!32764 input!3411)))))))

(declare-fun b!4090422 () Bool)

(assert (=> b!4090422 (= e!2538567 (= (size!32763 (_1!24532 (get!14385 lt!1462939))) (size!32764 (originalCharacters!7688 (_1!24532 (get!14385 lt!1462939))))))))

(declare-fun b!4090423 () Bool)

(declare-fun res!1671806 () Bool)

(assert (=> b!4090423 (=> (not res!1671806) (not e!2538567))))

(assert (=> b!4090423 (= res!1671806 (= (++!11500 (list!16282 (charsOf!4854 (_1!24532 (get!14385 lt!1462939)))) (_2!24532 (get!14385 lt!1462939))) input!3411))))

(assert (= (and d!1214380 c!704976) b!4090420))

(assert (= (and d!1214380 (not c!704976)) b!4090416))

(assert (= (and b!4090416 (not res!1671805)) b!4090421))

(assert (= (and d!1214380 (not res!1671804)) b!4090419))

(assert (= (and b!4090419 res!1671802) b!4090423))

(assert (= (and b!4090423 res!1671806) b!4090415))

(assert (= (and b!4090415 res!1671803) b!4090417))

(assert (= (and b!4090417 res!1671807) b!4090418))

(assert (= (and b!4090418 res!1671801) b!4090422))

(declare-fun m!4697179 () Bool)

(assert (=> b!4090419 m!4697179))

(declare-fun m!4697181 () Bool)

(assert (=> b!4090419 m!4697181))

(assert (=> b!4090419 m!4697181))

(declare-fun m!4697183 () Bool)

(assert (=> b!4090419 m!4697183))

(assert (=> b!4090419 m!4697183))

(declare-fun m!4697185 () Bool)

(assert (=> b!4090419 m!4697185))

(assert (=> b!4090415 m!4697179))

(declare-fun m!4697187 () Bool)

(assert (=> b!4090415 m!4697187))

(declare-fun m!4697189 () Bool)

(assert (=> b!4090415 m!4697189))

(assert (=> b!4090422 m!4697179))

(declare-fun m!4697191 () Bool)

(assert (=> b!4090422 m!4697191))

(declare-fun m!4697193 () Bool)

(assert (=> b!4090416 m!4697193))

(declare-fun m!4697195 () Bool)

(assert (=> b!4090416 m!4697195))

(declare-fun m!4697197 () Bool)

(assert (=> b!4090416 m!4697197))

(declare-fun m!4697201 () Bool)

(assert (=> b!4090416 m!4697201))

(assert (=> b!4090416 m!4697197))

(assert (=> b!4090416 m!4697197))

(declare-fun m!4697209 () Bool)

(assert (=> b!4090416 m!4697209))

(assert (=> b!4090416 m!4697189))

(assert (=> b!4090416 m!4697197))

(declare-fun m!4697215 () Bool)

(assert (=> b!4090416 m!4697215))

(declare-fun m!4697219 () Bool)

(assert (=> b!4090416 m!4697219))

(assert (=> b!4090416 m!4697195))

(assert (=> b!4090416 m!4697189))

(declare-fun m!4697221 () Bool)

(assert (=> b!4090416 m!4697221))

(assert (=> b!4090423 m!4697179))

(assert (=> b!4090423 m!4697181))

(assert (=> b!4090423 m!4697181))

(assert (=> b!4090423 m!4697183))

(assert (=> b!4090423 m!4697183))

(declare-fun m!4697223 () Bool)

(assert (=> b!4090423 m!4697223))

(assert (=> b!4090417 m!4697179))

(assert (=> b!4090421 m!4697195))

(assert (=> b!4090421 m!4697189))

(assert (=> b!4090421 m!4697195))

(assert (=> b!4090421 m!4697189))

(assert (=> b!4090421 m!4697221))

(declare-fun m!4697225 () Bool)

(assert (=> b!4090421 m!4697225))

(assert (=> b!4090418 m!4697179))

(declare-fun m!4697227 () Bool)

(assert (=> b!4090418 m!4697227))

(assert (=> b!4090418 m!4697227))

(declare-fun m!4697229 () Bool)

(assert (=> b!4090418 m!4697229))

(declare-fun m!4697231 () Bool)

(assert (=> d!1214380 m!4697231))

(declare-fun m!4697233 () Bool)

(assert (=> d!1214380 m!4697233))

(declare-fun m!4697235 () Bool)

(assert (=> d!1214380 m!4697235))

(declare-fun m!4697237 () Bool)

(assert (=> d!1214380 m!4697237))

(assert (=> b!4090247 d!1214380))

(declare-fun d!1214402 () Bool)

(declare-fun res!1671820 () Bool)

(declare-fun e!2538577 () Bool)

(assert (=> d!1214402 (=> (not res!1671820) (not e!2538577))))

(assert (=> d!1214402 (= res!1671820 (rulesValid!2782 thiss!26199 (t!338564 rules!3870)))))

(assert (=> d!1214402 (= (rulesInvariant!6026 thiss!26199 (t!338564 rules!3870)) e!2538577)))

(declare-fun b!4090442 () Bool)

(assert (=> b!4090442 (= e!2538577 (noDuplicateTag!2783 thiss!26199 (t!338564 rules!3870) Nil!43867))))

(assert (= (and d!1214402 res!1671820) b!4090442))

(declare-fun m!4697239 () Bool)

(assert (=> d!1214402 m!4697239))

(declare-fun m!4697241 () Bool)

(assert (=> b!4090442 m!4697241))

(assert (=> b!4090247 d!1214402))

(declare-fun d!1214404 () Bool)

(assert (=> d!1214404 (rulesInvariant!6026 thiss!26199 (t!338564 rules!3870))))

(declare-fun lt!1462954 () Unit!63385)

(declare-fun choose!24983 (LexerInterface!6683 Rule!13988 List!43989) Unit!63385)

(assert (=> d!1214404 (= lt!1462954 (choose!24983 thiss!26199 (h!49285 rules!3870) (t!338564 rules!3870)))))

(assert (=> d!1214404 (rulesInvariant!6026 thiss!26199 (Cons!43865 (h!49285 rules!3870) (t!338564 rules!3870)))))

(assert (=> d!1214404 (= (lemmaInvariantOnRulesThenOnTail!796 thiss!26199 (h!49285 rules!3870) (t!338564 rules!3870)) lt!1462954)))

(declare-fun bs!593257 () Bool)

(assert (= bs!593257 d!1214404))

(assert (=> bs!593257 m!4697023))

(declare-fun m!4697253 () Bool)

(assert (=> bs!593257 m!4697253))

(declare-fun m!4697255 () Bool)

(assert (=> bs!593257 m!4697255))

(assert (=> b!4090247 d!1214404))

(declare-fun b!4090474 () Bool)

(declare-fun res!1671846 () Bool)

(declare-fun e!2538593 () Bool)

(assert (=> b!4090474 (=> (not res!1671846) (not e!2538593))))

(declare-fun lt!1462971 () Option!9500)

(assert (=> b!4090474 (= res!1671846 (= (value!222831 (_1!24532 (get!14385 lt!1462971))) (apply!10277 (transformation!7094 (rule!10234 (_1!24532 (get!14385 lt!1462971)))) (seqFromList!5311 (originalCharacters!7688 (_1!24532 (get!14385 lt!1462971)))))))))

(declare-fun b!4090475 () Bool)

(declare-fun res!1671845 () Bool)

(assert (=> b!4090475 (=> (not res!1671845) (not e!2538593))))

(assert (=> b!4090475 (= res!1671845 (= (++!11500 (list!16282 (charsOf!4854 (_1!24532 (get!14385 lt!1462971)))) (_2!24532 (get!14385 lt!1462971))) input!3411))))

(declare-fun call!289089 () Option!9500)

(declare-fun bm!289084 () Bool)

(assert (=> bm!289084 (= call!289089 (maxPrefixOneRule!2955 thiss!26199 (h!49285 (t!338564 rules!3870)) input!3411))))

(declare-fun b!4090477 () Bool)

(declare-fun e!2538592 () Bool)

(assert (=> b!4090477 (= e!2538592 e!2538593)))

(declare-fun res!1671843 () Bool)

(assert (=> b!4090477 (=> (not res!1671843) (not e!2538593))))

(declare-fun isDefined!7190 (Option!9500) Bool)

(assert (=> b!4090477 (= res!1671843 (isDefined!7190 lt!1462971))))

(declare-fun b!4090478 () Bool)

(declare-fun res!1671840 () Bool)

(assert (=> b!4090478 (=> (not res!1671840) (not e!2538593))))

(assert (=> b!4090478 (= res!1671840 (= (list!16282 (charsOf!4854 (_1!24532 (get!14385 lt!1462971)))) (originalCharacters!7688 (_1!24532 (get!14385 lt!1462971)))))))

(declare-fun b!4090479 () Bool)

(declare-fun e!2538594 () Option!9500)

(assert (=> b!4090479 (= e!2538594 call!289089)))

(declare-fun b!4090480 () Bool)

(declare-fun res!1671844 () Bool)

(assert (=> b!4090480 (=> (not res!1671844) (not e!2538593))))

(assert (=> b!4090480 (= res!1671844 (matchR!5940 (regex!7094 (rule!10234 (_1!24532 (get!14385 lt!1462971)))) (list!16282 (charsOf!4854 (_1!24532 (get!14385 lt!1462971))))))))

(declare-fun b!4090476 () Bool)

(declare-fun res!1671842 () Bool)

(assert (=> b!4090476 (=> (not res!1671842) (not e!2538593))))

(assert (=> b!4090476 (= res!1671842 (< (size!32764 (_2!24532 (get!14385 lt!1462971))) (size!32764 input!3411)))))

(declare-fun d!1214424 () Bool)

(assert (=> d!1214424 e!2538592))

(declare-fun res!1671841 () Bool)

(assert (=> d!1214424 (=> res!1671841 e!2538592)))

(assert (=> d!1214424 (= res!1671841 (isEmpty!26236 lt!1462971))))

(assert (=> d!1214424 (= lt!1462971 e!2538594)))

(declare-fun c!704987 () Bool)

(assert (=> d!1214424 (= c!704987 (and ((_ is Cons!43865) (t!338564 rules!3870)) ((_ is Nil!43865) (t!338564 (t!338564 rules!3870)))))))

(declare-fun lt!1462972 () Unit!63385)

(declare-fun lt!1462970 () Unit!63385)

(assert (=> d!1214424 (= lt!1462972 lt!1462970)))

(declare-fun isPrefix!4141 (List!43988 List!43988) Bool)

(assert (=> d!1214424 (isPrefix!4141 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2692 (List!43988 List!43988) Unit!63385)

(assert (=> d!1214424 (= lt!1462970 (lemmaIsPrefixRefl!2692 input!3411 input!3411))))

(declare-fun rulesValidInductive!2623 (LexerInterface!6683 List!43989) Bool)

(assert (=> d!1214424 (rulesValidInductive!2623 thiss!26199 (t!338564 rules!3870))))

(assert (=> d!1214424 (= (maxPrefix!3973 thiss!26199 (t!338564 rules!3870) input!3411) lt!1462971)))

(declare-fun b!4090481 () Bool)

(assert (=> b!4090481 (= e!2538593 (contains!8773 (t!338564 rules!3870) (rule!10234 (_1!24532 (get!14385 lt!1462971)))))))

(declare-fun b!4090482 () Bool)

(declare-fun lt!1462969 () Option!9500)

(declare-fun lt!1462968 () Option!9500)

(assert (=> b!4090482 (= e!2538594 (ite (and ((_ is None!9499) lt!1462969) ((_ is None!9499) lt!1462968)) None!9499 (ite ((_ is None!9499) lt!1462968) lt!1462969 (ite ((_ is None!9499) lt!1462969) lt!1462968 (ite (>= (size!32763 (_1!24532 (v!39985 lt!1462969))) (size!32763 (_1!24532 (v!39985 lt!1462968)))) lt!1462969 lt!1462968)))))))

(assert (=> b!4090482 (= lt!1462969 call!289089)))

(assert (=> b!4090482 (= lt!1462968 (maxPrefix!3973 thiss!26199 (t!338564 (t!338564 rules!3870)) input!3411))))

(assert (= (and d!1214424 c!704987) b!4090479))

(assert (= (and d!1214424 (not c!704987)) b!4090482))

(assert (= (or b!4090479 b!4090482) bm!289084))

(assert (= (and d!1214424 (not res!1671841)) b!4090477))

(assert (= (and b!4090477 res!1671843) b!4090478))

(assert (= (and b!4090478 res!1671840) b!4090476))

(assert (= (and b!4090476 res!1671842) b!4090475))

(assert (= (and b!4090475 res!1671845) b!4090474))

(assert (= (and b!4090474 res!1671846) b!4090480))

(assert (= (and b!4090480 res!1671844) b!4090481))

(declare-fun m!4697261 () Bool)

(assert (=> b!4090477 m!4697261))

(declare-fun m!4697263 () Bool)

(assert (=> b!4090481 m!4697263))

(declare-fun m!4697265 () Bool)

(assert (=> b!4090481 m!4697265))

(assert (=> b!4090478 m!4697263))

(declare-fun m!4697267 () Bool)

(assert (=> b!4090478 m!4697267))

(assert (=> b!4090478 m!4697267))

(declare-fun m!4697269 () Bool)

(assert (=> b!4090478 m!4697269))

(declare-fun m!4697271 () Bool)

(assert (=> b!4090482 m!4697271))

(assert (=> b!4090476 m!4697263))

(declare-fun m!4697273 () Bool)

(assert (=> b!4090476 m!4697273))

(assert (=> b!4090476 m!4697189))

(declare-fun m!4697275 () Bool)

(assert (=> d!1214424 m!4697275))

(declare-fun m!4697277 () Bool)

(assert (=> d!1214424 m!4697277))

(declare-fun m!4697279 () Bool)

(assert (=> d!1214424 m!4697279))

(declare-fun m!4697281 () Bool)

(assert (=> d!1214424 m!4697281))

(assert (=> b!4090474 m!4697263))

(declare-fun m!4697283 () Bool)

(assert (=> b!4090474 m!4697283))

(assert (=> b!4090474 m!4697283))

(declare-fun m!4697285 () Bool)

(assert (=> b!4090474 m!4697285))

(assert (=> b!4090475 m!4697263))

(assert (=> b!4090475 m!4697267))

(assert (=> b!4090475 m!4697267))

(assert (=> b!4090475 m!4697269))

(assert (=> b!4090475 m!4697269))

(declare-fun m!4697287 () Bool)

(assert (=> b!4090475 m!4697287))

(assert (=> b!4090480 m!4697263))

(assert (=> b!4090480 m!4697267))

(assert (=> b!4090480 m!4697267))

(assert (=> b!4090480 m!4697269))

(assert (=> b!4090480 m!4697269))

(declare-fun m!4697289 () Bool)

(assert (=> b!4090480 m!4697289))

(declare-fun m!4697291 () Bool)

(assert (=> bm!289084 m!4697291))

(assert (=> b!4090248 d!1214424))

(declare-fun d!1214428 () Bool)

(assert (=> d!1214428 (= (isEmpty!26235 (t!338564 rules!3870)) ((_ is Nil!43865) (t!338564 rules!3870)))))

(assert (=> b!4090238 d!1214428))

(declare-fun b!4090483 () Bool)

(declare-fun res!1671853 () Bool)

(declare-fun e!2538596 () Bool)

(assert (=> b!4090483 (=> (not res!1671853) (not e!2538596))))

(declare-fun lt!1462976 () Option!9500)

(assert (=> b!4090483 (= res!1671853 (= (value!222831 (_1!24532 (get!14385 lt!1462976))) (apply!10277 (transformation!7094 (rule!10234 (_1!24532 (get!14385 lt!1462976)))) (seqFromList!5311 (originalCharacters!7688 (_1!24532 (get!14385 lt!1462976)))))))))

(declare-fun b!4090484 () Bool)

(declare-fun res!1671852 () Bool)

(assert (=> b!4090484 (=> (not res!1671852) (not e!2538596))))

(assert (=> b!4090484 (= res!1671852 (= (++!11500 (list!16282 (charsOf!4854 (_1!24532 (get!14385 lt!1462976)))) (_2!24532 (get!14385 lt!1462976))) input!3411))))

(declare-fun bm!289085 () Bool)

(declare-fun call!289090 () Option!9500)

(assert (=> bm!289085 (= call!289090 (maxPrefixOneRule!2955 thiss!26199 (h!49285 rules!3870) input!3411))))

(declare-fun b!4090486 () Bool)

(declare-fun e!2538595 () Bool)

(assert (=> b!4090486 (= e!2538595 e!2538596)))

(declare-fun res!1671850 () Bool)

(assert (=> b!4090486 (=> (not res!1671850) (not e!2538596))))

(assert (=> b!4090486 (= res!1671850 (isDefined!7190 lt!1462976))))

(declare-fun b!4090487 () Bool)

(declare-fun res!1671847 () Bool)

(assert (=> b!4090487 (=> (not res!1671847) (not e!2538596))))

(assert (=> b!4090487 (= res!1671847 (= (list!16282 (charsOf!4854 (_1!24532 (get!14385 lt!1462976)))) (originalCharacters!7688 (_1!24532 (get!14385 lt!1462976)))))))

(declare-fun b!4090488 () Bool)

(declare-fun e!2538597 () Option!9500)

(assert (=> b!4090488 (= e!2538597 call!289090)))

(declare-fun b!4090489 () Bool)

(declare-fun res!1671851 () Bool)

(assert (=> b!4090489 (=> (not res!1671851) (not e!2538596))))

(assert (=> b!4090489 (= res!1671851 (matchR!5940 (regex!7094 (rule!10234 (_1!24532 (get!14385 lt!1462976)))) (list!16282 (charsOf!4854 (_1!24532 (get!14385 lt!1462976))))))))

(declare-fun b!4090485 () Bool)

(declare-fun res!1671849 () Bool)

(assert (=> b!4090485 (=> (not res!1671849) (not e!2538596))))

(assert (=> b!4090485 (= res!1671849 (< (size!32764 (_2!24532 (get!14385 lt!1462976))) (size!32764 input!3411)))))

(declare-fun d!1214430 () Bool)

(assert (=> d!1214430 e!2538595))

(declare-fun res!1671848 () Bool)

(assert (=> d!1214430 (=> res!1671848 e!2538595)))

(assert (=> d!1214430 (= res!1671848 (isEmpty!26236 lt!1462976))))

(assert (=> d!1214430 (= lt!1462976 e!2538597)))

(declare-fun c!704988 () Bool)

(assert (=> d!1214430 (= c!704988 (and ((_ is Cons!43865) rules!3870) ((_ is Nil!43865) (t!338564 rules!3870))))))

(declare-fun lt!1462977 () Unit!63385)

(declare-fun lt!1462975 () Unit!63385)

(assert (=> d!1214430 (= lt!1462977 lt!1462975)))

(assert (=> d!1214430 (isPrefix!4141 input!3411 input!3411)))

(assert (=> d!1214430 (= lt!1462975 (lemmaIsPrefixRefl!2692 input!3411 input!3411))))

(assert (=> d!1214430 (rulesValidInductive!2623 thiss!26199 rules!3870)))

(assert (=> d!1214430 (= (maxPrefix!3973 thiss!26199 rules!3870 input!3411) lt!1462976)))

(declare-fun b!4090490 () Bool)

(assert (=> b!4090490 (= e!2538596 (contains!8773 rules!3870 (rule!10234 (_1!24532 (get!14385 lt!1462976)))))))

(declare-fun b!4090491 () Bool)

(declare-fun lt!1462974 () Option!9500)

(declare-fun lt!1462973 () Option!9500)

(assert (=> b!4090491 (= e!2538597 (ite (and ((_ is None!9499) lt!1462974) ((_ is None!9499) lt!1462973)) None!9499 (ite ((_ is None!9499) lt!1462973) lt!1462974 (ite ((_ is None!9499) lt!1462974) lt!1462973 (ite (>= (size!32763 (_1!24532 (v!39985 lt!1462974))) (size!32763 (_1!24532 (v!39985 lt!1462973)))) lt!1462974 lt!1462973)))))))

(assert (=> b!4090491 (= lt!1462974 call!289090)))

(assert (=> b!4090491 (= lt!1462973 (maxPrefix!3973 thiss!26199 (t!338564 rules!3870) input!3411))))

(assert (= (and d!1214430 c!704988) b!4090488))

(assert (= (and d!1214430 (not c!704988)) b!4090491))

(assert (= (or b!4090488 b!4090491) bm!289085))

(assert (= (and d!1214430 (not res!1671848)) b!4090486))

(assert (= (and b!4090486 res!1671850) b!4090487))

(assert (= (and b!4090487 res!1671847) b!4090485))

(assert (= (and b!4090485 res!1671849) b!4090484))

(assert (= (and b!4090484 res!1671852) b!4090483))

(assert (= (and b!4090483 res!1671853) b!4090489))

(assert (= (and b!4090489 res!1671851) b!4090490))

(declare-fun m!4697293 () Bool)

(assert (=> b!4090486 m!4697293))

(declare-fun m!4697295 () Bool)

(assert (=> b!4090490 m!4697295))

(declare-fun m!4697297 () Bool)

(assert (=> b!4090490 m!4697297))

(assert (=> b!4090487 m!4697295))

(declare-fun m!4697299 () Bool)

(assert (=> b!4090487 m!4697299))

(assert (=> b!4090487 m!4697299))

(declare-fun m!4697301 () Bool)

(assert (=> b!4090487 m!4697301))

(assert (=> b!4090491 m!4696993))

(assert (=> b!4090485 m!4697295))

(declare-fun m!4697303 () Bool)

(assert (=> b!4090485 m!4697303))

(assert (=> b!4090485 m!4697189))

(declare-fun m!4697305 () Bool)

(assert (=> d!1214430 m!4697305))

(assert (=> d!1214430 m!4697277))

(assert (=> d!1214430 m!4697279))

(declare-fun m!4697307 () Bool)

(assert (=> d!1214430 m!4697307))

(assert (=> b!4090483 m!4697295))

(declare-fun m!4697309 () Bool)

(assert (=> b!4090483 m!4697309))

(assert (=> b!4090483 m!4697309))

(declare-fun m!4697311 () Bool)

(assert (=> b!4090483 m!4697311))

(assert (=> b!4090484 m!4697295))

(assert (=> b!4090484 m!4697299))

(assert (=> b!4090484 m!4697299))

(assert (=> b!4090484 m!4697301))

(assert (=> b!4090484 m!4697301))

(declare-fun m!4697313 () Bool)

(assert (=> b!4090484 m!4697313))

(assert (=> b!4090489 m!4697295))

(assert (=> b!4090489 m!4697299))

(assert (=> b!4090489 m!4697299))

(assert (=> b!4090489 m!4697301))

(assert (=> b!4090489 m!4697301))

(declare-fun m!4697315 () Bool)

(assert (=> b!4090489 m!4697315))

(assert (=> bm!289085 m!4697019))

(assert (=> b!4090249 d!1214430))

(declare-fun d!1214432 () Bool)

(declare-fun lt!1462980 () Int)

(assert (=> d!1214432 (>= lt!1462980 0)))

(declare-fun e!2538600 () Int)

(assert (=> d!1214432 (= lt!1462980 e!2538600)))

(declare-fun c!704991 () Bool)

(assert (=> d!1214432 (= c!704991 ((_ is Nil!43864) p!2988))))

(assert (=> d!1214432 (= (size!32764 p!2988) lt!1462980)))

(declare-fun b!4090496 () Bool)

(assert (=> b!4090496 (= e!2538600 0)))

(declare-fun b!4090497 () Bool)

(assert (=> b!4090497 (= e!2538600 (+ 1 (size!32764 (t!338563 p!2988))))))

(assert (= (and d!1214432 c!704991) b!4090496))

(assert (= (and d!1214432 (not c!704991)) b!4090497))

(declare-fun m!4697317 () Bool)

(assert (=> b!4090497 m!4697317))

(assert (=> b!4090249 d!1214432))

(declare-fun d!1214434 () Bool)

(declare-fun fromListB!2434 (List!43988) BalanceConc!26204)

(assert (=> d!1214434 (= (seqFromList!5311 p!2988) (fromListB!2434 p!2988))))

(declare-fun bs!593258 () Bool)

(assert (= bs!593258 d!1214434))

(declare-fun m!4697319 () Bool)

(assert (=> bs!593258 m!4697319))

(assert (=> b!4090249 d!1214434))

(declare-fun b!4090565 () Bool)

(declare-fun e!2538639 () Bool)

(assert (=> b!4090565 (= e!2538639 true)))

(declare-fun d!1214436 () Bool)

(assert (=> d!1214436 e!2538639))

(assert (= d!1214436 b!4090565))

(declare-fun lambda!127995 () Int)

(declare-fun order!23065 () Int)

(declare-fun order!23067 () Int)

(declare-fun dynLambda!18766 (Int Int) Int)

(declare-fun dynLambda!18767 (Int Int) Int)

(assert (=> b!4090565 (< (dynLambda!18766 order!23065 (toValue!9682 (transformation!7094 r!4213))) (dynLambda!18767 order!23067 lambda!127995))))

(declare-fun order!23069 () Int)

(declare-fun dynLambda!18768 (Int Int) Int)

(assert (=> b!4090565 (< (dynLambda!18768 order!23069 (toChars!9541 (transformation!7094 r!4213))) (dynLambda!18767 order!23067 lambda!127995))))

(declare-fun dynLambda!18769 (Int TokenValue!7324) BalanceConc!26204)

(declare-fun dynLambda!18770 (Int BalanceConc!26204) TokenValue!7324)

(assert (=> d!1214436 (= (list!16282 (dynLambda!18769 (toChars!9541 (transformation!7094 r!4213)) (dynLambda!18770 (toValue!9682 (transformation!7094 r!4213)) lt!1462873))) (list!16282 lt!1462873))))

(declare-fun lt!1462992 () Unit!63385)

(declare-fun ForallOf!887 (Int BalanceConc!26204) Unit!63385)

(assert (=> d!1214436 (= lt!1462992 (ForallOf!887 lambda!127995 lt!1462873))))

(assert (=> d!1214436 (= (lemmaSemiInverse!2061 (transformation!7094 r!4213) lt!1462873) lt!1462992)))

(declare-fun b_lambda!119867 () Bool)

(assert (=> (not b_lambda!119867) (not d!1214436)))

(declare-fun tb!245813 () Bool)

(declare-fun t!338578 () Bool)

(assert (=> (and b!4090241 (= (toChars!9541 (transformation!7094 (h!49285 rules!3870))) (toChars!9541 (transformation!7094 r!4213))) t!338578) tb!245813))

(declare-fun tp!1238393 () Bool)

(declare-fun e!2538642 () Bool)

(declare-fun b!4090570 () Bool)

(declare-fun inv!58567 (Conc!13305) Bool)

(assert (=> b!4090570 (= e!2538642 (and (inv!58567 (c!704951 (dynLambda!18769 (toChars!9541 (transformation!7094 r!4213)) (dynLambda!18770 (toValue!9682 (transformation!7094 r!4213)) lt!1462873)))) tp!1238393))))

(declare-fun result!298292 () Bool)

(declare-fun inv!58568 (BalanceConc!26204) Bool)

(assert (=> tb!245813 (= result!298292 (and (inv!58568 (dynLambda!18769 (toChars!9541 (transformation!7094 r!4213)) (dynLambda!18770 (toValue!9682 (transformation!7094 r!4213)) lt!1462873))) e!2538642))))

(assert (= tb!245813 b!4090570))

(declare-fun m!4697369 () Bool)

(assert (=> b!4090570 m!4697369))

(declare-fun m!4697371 () Bool)

(assert (=> tb!245813 m!4697371))

(assert (=> d!1214436 t!338578))

(declare-fun b_and!315151 () Bool)

(assert (= b_and!315129 (and (=> t!338578 result!298292) b_and!315151)))

(declare-fun t!338580 () Bool)

(declare-fun tb!245815 () Bool)

(assert (=> (and b!4090244 (= (toChars!9541 (transformation!7094 r!4213)) (toChars!9541 (transformation!7094 r!4213))) t!338580) tb!245815))

(declare-fun result!298296 () Bool)

(assert (= result!298296 result!298292))

(assert (=> d!1214436 t!338580))

(declare-fun b_and!315153 () Bool)

(assert (= b_and!315133 (and (=> t!338580 result!298296) b_and!315153)))

(declare-fun b_lambda!119869 () Bool)

(assert (=> (not b_lambda!119869) (not d!1214436)))

(declare-fun tb!245817 () Bool)

(declare-fun t!338582 () Bool)

(assert (=> (and b!4090241 (= (toValue!9682 (transformation!7094 (h!49285 rules!3870))) (toValue!9682 (transformation!7094 r!4213))) t!338582) tb!245817))

(declare-fun result!298298 () Bool)

(declare-fun inv!21 (TokenValue!7324) Bool)

(assert (=> tb!245817 (= result!298298 (inv!21 (dynLambda!18770 (toValue!9682 (transformation!7094 r!4213)) lt!1462873)))))

(declare-fun m!4697373 () Bool)

(assert (=> tb!245817 m!4697373))

(assert (=> d!1214436 t!338582))

(declare-fun b_and!315155 () Bool)

(assert (= b_and!315127 (and (=> t!338582 result!298298) b_and!315155)))

(declare-fun t!338584 () Bool)

(declare-fun tb!245819 () Bool)

(assert (=> (and b!4090244 (= (toValue!9682 (transformation!7094 r!4213)) (toValue!9682 (transformation!7094 r!4213))) t!338584) tb!245819))

(declare-fun result!298302 () Bool)

(assert (= result!298302 result!298298))

(assert (=> d!1214436 t!338584))

(declare-fun b_and!315157 () Bool)

(assert (= b_and!315131 (and (=> t!338584 result!298302) b_and!315157)))

(declare-fun m!4697375 () Bool)

(assert (=> d!1214436 m!4697375))

(declare-fun m!4697377 () Bool)

(assert (=> d!1214436 m!4697377))

(declare-fun m!4697379 () Bool)

(assert (=> d!1214436 m!4697379))

(declare-fun m!4697381 () Bool)

(assert (=> d!1214436 m!4697381))

(assert (=> d!1214436 m!4697375))

(assert (=> d!1214436 m!4697381))

(declare-fun m!4697383 () Bool)

(assert (=> d!1214436 m!4697383))

(assert (=> b!4090249 d!1214436))

(declare-fun d!1214446 () Bool)

(assert (=> d!1214446 (= (apply!10277 (transformation!7094 r!4213) lt!1462873) (dynLambda!18770 (toValue!9682 (transformation!7094 r!4213)) lt!1462873))))

(declare-fun b_lambda!119871 () Bool)

(assert (=> (not b_lambda!119871) (not d!1214446)))

(assert (=> d!1214446 t!338582))

(declare-fun b_and!315159 () Bool)

(assert (= b_and!315155 (and (=> t!338582 result!298298) b_and!315159)))

(assert (=> d!1214446 t!338584))

(declare-fun b_and!315161 () Bool)

(assert (= b_and!315157 (and (=> t!338584 result!298302) b_and!315161)))

(assert (=> d!1214446 m!4697381))

(assert (=> b!4090249 d!1214446))

(declare-fun d!1214448 () Bool)

(assert (=> d!1214448 (= (isEmpty!26237 p!2988) ((_ is Nil!43864) p!2988))))

(assert (=> b!4090250 d!1214448))

(declare-fun d!1214450 () Bool)

(declare-fun lt!1462993 () Bool)

(assert (=> d!1214450 (= lt!1462993 (select (content!6759 rules!3870) r!4213))))

(declare-fun e!2538646 () Bool)

(assert (=> d!1214450 (= lt!1462993 e!2538646)))

(declare-fun res!1671861 () Bool)

(assert (=> d!1214450 (=> (not res!1671861) (not e!2538646))))

(assert (=> d!1214450 (= res!1671861 ((_ is Cons!43865) rules!3870))))

(assert (=> d!1214450 (= (contains!8773 rules!3870 r!4213) lt!1462993)))

(declare-fun b!4090573 () Bool)

(declare-fun e!2538647 () Bool)

(assert (=> b!4090573 (= e!2538646 e!2538647)))

(declare-fun res!1671862 () Bool)

(assert (=> b!4090573 (=> res!1671862 e!2538647)))

(assert (=> b!4090573 (= res!1671862 (= (h!49285 rules!3870) r!4213))))

(declare-fun b!4090574 () Bool)

(assert (=> b!4090574 (= e!2538647 (contains!8773 (t!338564 rules!3870) r!4213))))

(assert (= (and d!1214450 res!1671861) b!4090573))

(assert (= (and b!4090573 (not res!1671862)) b!4090574))

(declare-fun m!4697385 () Bool)

(assert (=> d!1214450 m!4697385))

(declare-fun m!4697387 () Bool)

(assert (=> d!1214450 m!4697387))

(assert (=> b!4090574 m!4696995))

(assert (=> b!4090239 d!1214450))

(declare-fun b!4090603 () Bool)

(declare-fun e!2538668 () Bool)

(declare-fun nullable!4236 (Regex!11999) Bool)

(assert (=> b!4090603 (= e!2538668 (nullable!4236 (regex!7094 r!4213)))))

(declare-fun b!4090604 () Bool)

(declare-fun res!1671881 () Bool)

(declare-fun e!2538666 () Bool)

(assert (=> b!4090604 (=> res!1671881 e!2538666)))

(assert (=> b!4090604 (= res!1671881 (not ((_ is ElementMatch!11999) (regex!7094 r!4213))))))

(declare-fun e!2538664 () Bool)

(assert (=> b!4090604 (= e!2538664 e!2538666)))

(declare-fun b!4090605 () Bool)

(declare-fun derivativeStep!3637 (Regex!11999 C!24184) Regex!11999)

(declare-fun head!8647 (List!43988) C!24184)

(declare-fun tail!6381 (List!43988) List!43988)

(assert (=> b!4090605 (= e!2538668 (matchR!5940 (derivativeStep!3637 (regex!7094 r!4213) (head!8647 p!2988)) (tail!6381 p!2988)))))

(declare-fun b!4090606 () Bool)

(declare-fun e!2538663 () Bool)

(assert (=> b!4090606 (= e!2538663 e!2538664)))

(declare-fun c!705003 () Bool)

(assert (=> b!4090606 (= c!705003 ((_ is EmptyLang!11999) (regex!7094 r!4213)))))

(declare-fun b!4090607 () Bool)

(declare-fun res!1671885 () Bool)

(assert (=> b!4090607 (=> res!1671885 e!2538666)))

(declare-fun e!2538662 () Bool)

(assert (=> b!4090607 (= res!1671885 e!2538662)))

(declare-fun res!1671880 () Bool)

(assert (=> b!4090607 (=> (not res!1671880) (not e!2538662))))

(declare-fun lt!1462996 () Bool)

(assert (=> b!4090607 (= res!1671880 lt!1462996)))

(declare-fun b!4090608 () Bool)

(declare-fun e!2538665 () Bool)

(declare-fun e!2538667 () Bool)

(assert (=> b!4090608 (= e!2538665 e!2538667)))

(declare-fun res!1671882 () Bool)

(assert (=> b!4090608 (=> res!1671882 e!2538667)))

(declare-fun call!289094 () Bool)

(assert (=> b!4090608 (= res!1671882 call!289094)))

(declare-fun b!4090609 () Bool)

(assert (=> b!4090609 (= e!2538662 (= (head!8647 p!2988) (c!704950 (regex!7094 r!4213))))))

(declare-fun b!4090610 () Bool)

(declare-fun res!1671886 () Bool)

(assert (=> b!4090610 (=> (not res!1671886) (not e!2538662))))

(assert (=> b!4090610 (= res!1671886 (not call!289094))))

(declare-fun bm!289089 () Bool)

(assert (=> bm!289089 (= call!289094 (isEmpty!26237 p!2988))))

(declare-fun b!4090611 () Bool)

(assert (=> b!4090611 (= e!2538664 (not lt!1462996))))

(declare-fun b!4090613 () Bool)

(assert (=> b!4090613 (= e!2538667 (not (= (head!8647 p!2988) (c!704950 (regex!7094 r!4213)))))))

(declare-fun b!4090614 () Bool)

(assert (=> b!4090614 (= e!2538666 e!2538665)))

(declare-fun res!1671879 () Bool)

(assert (=> b!4090614 (=> (not res!1671879) (not e!2538665))))

(assert (=> b!4090614 (= res!1671879 (not lt!1462996))))

(declare-fun b!4090615 () Bool)

(assert (=> b!4090615 (= e!2538663 (= lt!1462996 call!289094))))

(declare-fun b!4090616 () Bool)

(declare-fun res!1671884 () Bool)

(assert (=> b!4090616 (=> res!1671884 e!2538667)))

(assert (=> b!4090616 (= res!1671884 (not (isEmpty!26237 (tail!6381 p!2988))))))

(declare-fun d!1214452 () Bool)

(assert (=> d!1214452 e!2538663))

(declare-fun c!705004 () Bool)

(assert (=> d!1214452 (= c!705004 ((_ is EmptyExpr!11999) (regex!7094 r!4213)))))

(assert (=> d!1214452 (= lt!1462996 e!2538668)))

(declare-fun c!705005 () Bool)

(assert (=> d!1214452 (= c!705005 (isEmpty!26237 p!2988))))

(declare-fun validRegex!5436 (Regex!11999) Bool)

(assert (=> d!1214452 (validRegex!5436 (regex!7094 r!4213))))

(assert (=> d!1214452 (= (matchR!5940 (regex!7094 r!4213) p!2988) lt!1462996)))

(declare-fun b!4090612 () Bool)

(declare-fun res!1671883 () Bool)

(assert (=> b!4090612 (=> (not res!1671883) (not e!2538662))))

(assert (=> b!4090612 (= res!1671883 (isEmpty!26237 (tail!6381 p!2988)))))

(assert (= (and d!1214452 c!705005) b!4090603))

(assert (= (and d!1214452 (not c!705005)) b!4090605))

(assert (= (and d!1214452 c!705004) b!4090615))

(assert (= (and d!1214452 (not c!705004)) b!4090606))

(assert (= (and b!4090606 c!705003) b!4090611))

(assert (= (and b!4090606 (not c!705003)) b!4090604))

(assert (= (and b!4090604 (not res!1671881)) b!4090607))

(assert (= (and b!4090607 res!1671880) b!4090610))

(assert (= (and b!4090610 res!1671886) b!4090612))

(assert (= (and b!4090612 res!1671883) b!4090609))

(assert (= (and b!4090607 (not res!1671885)) b!4090614))

(assert (= (and b!4090614 res!1671879) b!4090608))

(assert (= (and b!4090608 (not res!1671882)) b!4090616))

(assert (= (and b!4090616 (not res!1671884)) b!4090613))

(assert (= (or b!4090615 b!4090608 b!4090610) bm!289089))

(declare-fun m!4697389 () Bool)

(assert (=> b!4090609 m!4697389))

(assert (=> d!1214452 m!4696991))

(declare-fun m!4697391 () Bool)

(assert (=> d!1214452 m!4697391))

(declare-fun m!4697393 () Bool)

(assert (=> b!4090616 m!4697393))

(assert (=> b!4090616 m!4697393))

(declare-fun m!4697395 () Bool)

(assert (=> b!4090616 m!4697395))

(assert (=> b!4090612 m!4697393))

(assert (=> b!4090612 m!4697393))

(assert (=> b!4090612 m!4697395))

(declare-fun m!4697397 () Bool)

(assert (=> b!4090603 m!4697397))

(assert (=> bm!289089 m!4696991))

(assert (=> b!4090613 m!4697389))

(assert (=> b!4090605 m!4697389))

(assert (=> b!4090605 m!4697389))

(declare-fun m!4697399 () Bool)

(assert (=> b!4090605 m!4697399))

(assert (=> b!4090605 m!4697393))

(assert (=> b!4090605 m!4697399))

(assert (=> b!4090605 m!4697393))

(declare-fun m!4697401 () Bool)

(assert (=> b!4090605 m!4697401))

(assert (=> b!4090251 d!1214452))

(declare-fun d!1214454 () Bool)

(declare-fun res!1671891 () Bool)

(declare-fun e!2538671 () Bool)

(assert (=> d!1214454 (=> (not res!1671891) (not e!2538671))))

(assert (=> d!1214454 (= res!1671891 (validRegex!5436 (regex!7094 r!4213)))))

(assert (=> d!1214454 (= (ruleValid!3014 thiss!26199 r!4213) e!2538671)))

(declare-fun b!4090621 () Bool)

(declare-fun res!1671892 () Bool)

(assert (=> b!4090621 (=> (not res!1671892) (not e!2538671))))

(assert (=> b!4090621 (= res!1671892 (not (nullable!4236 (regex!7094 r!4213))))))

(declare-fun b!4090622 () Bool)

(assert (=> b!4090622 (= e!2538671 (not (= (tag!7954 r!4213) (String!50371 ""))))))

(assert (= (and d!1214454 res!1671891) b!4090621))

(assert (= (and b!4090621 res!1671892) b!4090622))

(assert (=> d!1214454 m!4697391))

(assert (=> b!4090621 m!4697397))

(assert (=> b!4090251 d!1214454))

(declare-fun d!1214456 () Bool)

(assert (=> d!1214456 (ruleValid!3014 thiss!26199 r!4213)))

(declare-fun lt!1462997 () Unit!63385)

(assert (=> d!1214456 (= lt!1462997 (choose!24981 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1214456 (contains!8773 rules!3870 r!4213)))

(assert (=> d!1214456 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2080 thiss!26199 r!4213 rules!3870) lt!1462997)))

(declare-fun bs!593260 () Bool)

(assert (= bs!593260 d!1214456))

(assert (=> bs!593260 m!4697013))

(declare-fun m!4697403 () Bool)

(assert (=> bs!593260 m!4697403))

(assert (=> bs!593260 m!4696989))

(assert (=> b!4090251 d!1214456))

(declare-fun b!4090634 () Bool)

(declare-fun e!2538674 () Bool)

(declare-fun tp!1238408 () Bool)

(declare-fun tp!1238405 () Bool)

(assert (=> b!4090634 (= e!2538674 (and tp!1238408 tp!1238405))))

(declare-fun b!4090633 () Bool)

(assert (=> b!4090633 (= e!2538674 tp_is_empty!21001)))

(assert (=> b!4090236 (= tp!1238344 e!2538674)))

(declare-fun b!4090635 () Bool)

(declare-fun tp!1238407 () Bool)

(assert (=> b!4090635 (= e!2538674 tp!1238407)))

(declare-fun b!4090636 () Bool)

(declare-fun tp!1238404 () Bool)

(declare-fun tp!1238406 () Bool)

(assert (=> b!4090636 (= e!2538674 (and tp!1238404 tp!1238406))))

(assert (= (and b!4090236 ((_ is ElementMatch!11999) (regex!7094 (h!49285 rules!3870)))) b!4090633))

(assert (= (and b!4090236 ((_ is Concat!19324) (regex!7094 (h!49285 rules!3870)))) b!4090634))

(assert (= (and b!4090236 ((_ is Star!11999) (regex!7094 (h!49285 rules!3870)))) b!4090635))

(assert (= (and b!4090236 ((_ is Union!11999) (regex!7094 (h!49285 rules!3870)))) b!4090636))

(declare-fun b!4090641 () Bool)

(declare-fun e!2538677 () Bool)

(declare-fun tp!1238411 () Bool)

(assert (=> b!4090641 (= e!2538677 (and tp_is_empty!21001 tp!1238411))))

(assert (=> b!4090242 (= tp!1238345 e!2538677)))

(assert (= (and b!4090242 ((_ is Cons!43864) (t!338563 input!3411))) b!4090641))

(declare-fun b!4090652 () Bool)

(declare-fun b_free!114365 () Bool)

(declare-fun b_next!115069 () Bool)

(assert (=> b!4090652 (= b_free!114365 (not b_next!115069))))

(declare-fun t!338586 () Bool)

(declare-fun tb!245821 () Bool)

(assert (=> (and b!4090652 (= (toValue!9682 (transformation!7094 (h!49285 (t!338564 rules!3870)))) (toValue!9682 (transformation!7094 r!4213))) t!338586) tb!245821))

(declare-fun result!298310 () Bool)

(assert (= result!298310 result!298298))

(assert (=> d!1214436 t!338586))

(assert (=> d!1214446 t!338586))

(declare-fun tp!1238422 () Bool)

(declare-fun b_and!315163 () Bool)

(assert (=> b!4090652 (= tp!1238422 (and (=> t!338586 result!298310) b_and!315163))))

(declare-fun b_free!114367 () Bool)

(declare-fun b_next!115071 () Bool)

(assert (=> b!4090652 (= b_free!114367 (not b_next!115071))))

(declare-fun t!338588 () Bool)

(declare-fun tb!245823 () Bool)

(assert (=> (and b!4090652 (= (toChars!9541 (transformation!7094 (h!49285 (t!338564 rules!3870)))) (toChars!9541 (transformation!7094 r!4213))) t!338588) tb!245823))

(declare-fun result!298312 () Bool)

(assert (= result!298312 result!298292))

(assert (=> d!1214436 t!338588))

(declare-fun tp!1238420 () Bool)

(declare-fun b_and!315165 () Bool)

(assert (=> b!4090652 (= tp!1238420 (and (=> t!338588 result!298312) b_and!315165))))

(declare-fun e!2538688 () Bool)

(assert (=> b!4090652 (= e!2538688 (and tp!1238422 tp!1238420))))

(declare-fun e!2538686 () Bool)

(declare-fun tp!1238423 () Bool)

(declare-fun b!4090651 () Bool)

(assert (=> b!4090651 (= e!2538686 (and tp!1238423 (inv!58562 (tag!7954 (h!49285 (t!338564 rules!3870)))) (inv!58564 (transformation!7094 (h!49285 (t!338564 rules!3870)))) e!2538688))))

(declare-fun b!4090650 () Bool)

(declare-fun e!2538689 () Bool)

(declare-fun tp!1238421 () Bool)

(assert (=> b!4090650 (= e!2538689 (and e!2538686 tp!1238421))))

(assert (=> b!4090237 (= tp!1238349 e!2538689)))

(assert (= b!4090651 b!4090652))

(assert (= b!4090650 b!4090651))

(assert (= (and b!4090237 ((_ is Cons!43865) (t!338564 rules!3870))) b!4090650))

(declare-fun m!4697405 () Bool)

(assert (=> b!4090651 m!4697405))

(declare-fun m!4697407 () Bool)

(assert (=> b!4090651 m!4697407))

(declare-fun b!4090654 () Bool)

(declare-fun e!2538690 () Bool)

(declare-fun tp!1238428 () Bool)

(declare-fun tp!1238425 () Bool)

(assert (=> b!4090654 (= e!2538690 (and tp!1238428 tp!1238425))))

(declare-fun b!4090653 () Bool)

(assert (=> b!4090653 (= e!2538690 tp_is_empty!21001)))

(assert (=> b!4090254 (= tp!1238341 e!2538690)))

(declare-fun b!4090655 () Bool)

(declare-fun tp!1238427 () Bool)

(assert (=> b!4090655 (= e!2538690 tp!1238427)))

(declare-fun b!4090656 () Bool)

(declare-fun tp!1238424 () Bool)

(declare-fun tp!1238426 () Bool)

(assert (=> b!4090656 (= e!2538690 (and tp!1238424 tp!1238426))))

(assert (= (and b!4090254 ((_ is ElementMatch!11999) (regex!7094 r!4213))) b!4090653))

(assert (= (and b!4090254 ((_ is Concat!19324) (regex!7094 r!4213))) b!4090654))

(assert (= (and b!4090254 ((_ is Star!11999) (regex!7094 r!4213))) b!4090655))

(assert (= (and b!4090254 ((_ is Union!11999) (regex!7094 r!4213))) b!4090656))

(declare-fun b!4090657 () Bool)

(declare-fun e!2538691 () Bool)

(declare-fun tp!1238429 () Bool)

(assert (=> b!4090657 (= e!2538691 (and tp_is_empty!21001 tp!1238429))))

(assert (=> b!4090255 (= tp!1238346 e!2538691)))

(assert (= (and b!4090255 ((_ is Cons!43864) (t!338563 suffix!1518))) b!4090657))

(declare-fun b!4090658 () Bool)

(declare-fun e!2538692 () Bool)

(declare-fun tp!1238430 () Bool)

(assert (=> b!4090658 (= e!2538692 (and tp_is_empty!21001 tp!1238430))))

(assert (=> b!4090240 (= tp!1238348 e!2538692)))

(assert (= (and b!4090240 ((_ is Cons!43864) (t!338563 p!2988))) b!4090658))

(declare-fun b_lambda!119873 () Bool)

(assert (= b_lambda!119869 (or (and b!4090241 b_free!114353 (= (toValue!9682 (transformation!7094 (h!49285 rules!3870))) (toValue!9682 (transformation!7094 r!4213)))) (and b!4090244 b_free!114357) (and b!4090652 b_free!114365 (= (toValue!9682 (transformation!7094 (h!49285 (t!338564 rules!3870)))) (toValue!9682 (transformation!7094 r!4213)))) b_lambda!119873)))

(declare-fun b_lambda!119875 () Bool)

(assert (= b_lambda!119867 (or (and b!4090241 b_free!114355 (= (toChars!9541 (transformation!7094 (h!49285 rules!3870))) (toChars!9541 (transformation!7094 r!4213)))) (and b!4090244 b_free!114359) (and b!4090652 b_free!114367 (= (toChars!9541 (transformation!7094 (h!49285 (t!338564 rules!3870)))) (toChars!9541 (transformation!7094 r!4213)))) b_lambda!119875)))

(declare-fun b_lambda!119877 () Bool)

(assert (= b_lambda!119871 (or (and b!4090241 b_free!114353 (= (toValue!9682 (transformation!7094 (h!49285 rules!3870))) (toValue!9682 (transformation!7094 r!4213)))) (and b!4090244 b_free!114357) (and b!4090652 b_free!114365 (= (toValue!9682 (transformation!7094 (h!49285 (t!338564 rules!3870)))) (toValue!9682 (transformation!7094 r!4213)))) b_lambda!119877)))

(check-sat (not d!1214380) (not b!4090613) (not b!4090476) (not b!4090419) (not d!1214450) (not b!4090475) (not b!4090442) (not tb!245813) (not d!1214370) (not b!4090656) (not b!4090478) (not b!4090636) (not d!1214402) (not b!4090415) (not b_next!115059) (not d!1214424) (not b!4090491) (not b!4090480) (not bm!289089) (not bm!289084) (not b!4090423) (not b_lambda!119877) (not b_lambda!119873) (not b_next!115057) (not b!4090422) (not b!4090295) (not b!4090482) (not b!4090609) (not b!4090477) (not b!4090650) (not b!4090485) (not b_next!115061) (not b!4090264) (not d!1214434) (not b!4090417) (not b!4090634) b_and!315153 (not b!4090486) (not b!4090474) (not d!1214354) (not b!4090657) b_and!315165 b_and!315151 (not b!4090276) (not b!4090421) (not d!1214404) (not d!1214454) (not bm!289085) (not b_next!115063) (not b!4090651) (not b!4090605) (not d!1214430) (not d!1214452) (not b!4090603) b_and!315161 (not b!4090570) (not b!4090286) (not b!4090574) (not d!1214456) (not b!4090616) (not b_next!115071) b_and!315163 (not b!4090287) (not b_next!115069) (not b!4090489) (not b!4090490) (not b!4090418) (not b!4090641) (not b!4090487) (not b_lambda!119875) (not b!4090483) (not d!1214436) (not b!4090271) (not b!4090612) (not b!4090654) (not tb!245817) (not b!4090294) (not d!1214376) (not b!4090635) tp_is_empty!21001 (not b!4090658) (not b!4090655) (not d!1214364) (not d!1214372) (not b!4090497) (not b!4090416) (not b!4090481) b_and!315159 (not b!4090621) (not d!1214358) (not b!4090262) (not b!4090484))
(check-sat (not b_next!115059) (not b_next!115057) (not b_next!115061) b_and!315153 (not b_next!115063) b_and!315161 (not b_next!115071) b_and!315163 (not b_next!115069) b_and!315159 b_and!315165 b_and!315151)
