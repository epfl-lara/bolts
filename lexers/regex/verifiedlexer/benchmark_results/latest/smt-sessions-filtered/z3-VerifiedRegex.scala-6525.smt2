; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!344418 () Bool)

(assert start!344418)

(declare-fun b!3674082 () Bool)

(declare-fun b_free!97193 () Bool)

(declare-fun b_next!97897 () Bool)

(assert (=> b!3674082 (= b_free!97193 (not b_next!97897))))

(declare-fun tp!1117685 () Bool)

(declare-fun b_and!273883 () Bool)

(assert (=> b!3674082 (= tp!1117685 b_and!273883)))

(declare-fun b_free!97195 () Bool)

(declare-fun b_next!97899 () Bool)

(assert (=> b!3674082 (= b_free!97195 (not b_next!97899))))

(declare-fun tp!1117677 () Bool)

(declare-fun b_and!273885 () Bool)

(assert (=> b!3674082 (= tp!1117677 b_and!273885)))

(declare-fun b!3674108 () Bool)

(declare-fun b_free!97197 () Bool)

(declare-fun b_next!97901 () Bool)

(assert (=> b!3674108 (= b_free!97197 (not b_next!97901))))

(declare-fun tp!1117683 () Bool)

(declare-fun b_and!273887 () Bool)

(assert (=> b!3674108 (= tp!1117683 b_and!273887)))

(declare-fun b_free!97199 () Bool)

(declare-fun b_next!97903 () Bool)

(assert (=> b!3674108 (= b_free!97199 (not b_next!97903))))

(declare-fun tp!1117687 () Bool)

(declare-fun b_and!273889 () Bool)

(assert (=> b!3674108 (= tp!1117687 b_and!273889)))

(declare-fun b!3674089 () Bool)

(declare-fun b_free!97201 () Bool)

(declare-fun b_next!97905 () Bool)

(assert (=> b!3674089 (= b_free!97201 (not b_next!97905))))

(declare-fun tp!1117679 () Bool)

(declare-fun b_and!273891 () Bool)

(assert (=> b!3674089 (= tp!1117679 b_and!273891)))

(declare-fun b_free!97203 () Bool)

(declare-fun b_next!97907 () Bool)

(assert (=> b!3674089 (= b_free!97203 (not b_next!97907))))

(declare-fun tp!1117682 () Bool)

(declare-fun b_and!273893 () Bool)

(assert (=> b!3674089 (= tp!1117682 b_and!273893)))

(declare-fun b!3674087 () Bool)

(declare-fun b_free!97205 () Bool)

(declare-fun b_next!97909 () Bool)

(assert (=> b!3674087 (= b_free!97205 (not b_next!97909))))

(declare-fun tp!1117686 () Bool)

(declare-fun b_and!273895 () Bool)

(assert (=> b!3674087 (= tp!1117686 b_and!273895)))

(declare-fun b_free!97207 () Bool)

(declare-fun b_next!97911 () Bool)

(assert (=> b!3674087 (= b_free!97207 (not b_next!97911))))

(declare-fun tp!1117678 () Bool)

(declare-fun b_and!273897 () Bool)

(assert (=> b!3674087 (= tp!1117678 b_and!273897)))

(declare-fun b!3674056 () Bool)

(declare-fun res!1492355 () Bool)

(declare-fun e!2275025 () Bool)

(assert (=> b!3674056 (=> (not res!1492355) (not e!2275025))))

(declare-datatypes ((List!38877 0))(
  ( (Nil!38753) (Cons!38753 (h!44173 (_ BitVec 16)) (t!299952 List!38877)) )
))
(declare-datatypes ((TokenValue!6060 0))(
  ( (FloatLiteralValue!12120 (text!42865 List!38877)) (TokenValueExt!6059 (__x!24337 Int)) (Broken!30300 (value!186589 List!38877)) (Object!6183) (End!6060) (Def!6060) (Underscore!6060) (Match!6060) (Else!6060) (Error!6060) (Case!6060) (If!6060) (Extends!6060) (Abstract!6060) (Class!6060) (Val!6060) (DelimiterValue!12120 (del!6120 List!38877)) (KeywordValue!6066 (value!186590 List!38877)) (CommentValue!12120 (value!186591 List!38877)) (WhitespaceValue!12120 (value!186592 List!38877)) (IndentationValue!6060 (value!186593 List!38877)) (String!43633) (Int32!6060) (Broken!30301 (value!186594 List!38877)) (Boolean!6061) (Unit!56496) (OperatorValue!6063 (op!6120 List!38877)) (IdentifierValue!12120 (value!186595 List!38877)) (IdentifierValue!12121 (value!186596 List!38877)) (WhitespaceValue!12121 (value!186597 List!38877)) (True!12120) (False!12120) (Broken!30302 (value!186598 List!38877)) (Broken!30303 (value!186599 List!38877)) (True!12121) (RightBrace!6060) (RightBracket!6060) (Colon!6060) (Null!6060) (Comma!6060) (LeftBracket!6060) (False!12121) (LeftBrace!6060) (ImaginaryLiteralValue!6060 (text!42866 List!38877)) (StringLiteralValue!18180 (value!186600 List!38877)) (EOFValue!6060 (value!186601 List!38877)) (IdentValue!6060 (value!186602 List!38877)) (DelimiterValue!12121 (value!186603 List!38877)) (DedentValue!6060 (value!186604 List!38877)) (NewLineValue!6060 (value!186605 List!38877)) (IntegerValue!18180 (value!186606 (_ BitVec 32)) (text!42867 List!38877)) (IntegerValue!18181 (value!186607 Int) (text!42868 List!38877)) (Times!6060) (Or!6060) (Equal!6060) (Minus!6060) (Broken!30304 (value!186608 List!38877)) (And!6060) (Div!6060) (LessEqual!6060) (Mod!6060) (Concat!16649) (Not!6060) (Plus!6060) (SpaceValue!6060 (value!186609 List!38877)) (IntegerValue!18182 (value!186610 Int) (text!42869 List!38877)) (StringLiteralValue!18181 (text!42870 List!38877)) (FloatLiteralValue!12121 (text!42871 List!38877)) (BytesLiteralValue!6060 (value!186611 List!38877)) (CommentValue!12121 (value!186612 List!38877)) (StringLiteralValue!18182 (value!186613 List!38877)) (ErrorTokenValue!6060 (msg!6121 List!38877)) )
))
(declare-datatypes ((String!43634 0))(
  ( (String!43635 (value!186614 String)) )
))
(declare-datatypes ((C!21364 0))(
  ( (C!21365 (val!12730 Int)) )
))
(declare-datatypes ((Regex!10589 0))(
  ( (ElementMatch!10589 (c!635326 C!21364)) (Concat!16650 (regOne!21690 Regex!10589) (regTwo!21690 Regex!10589)) (EmptyExpr!10589) (Star!10589 (reg!10918 Regex!10589)) (EmptyLang!10589) (Union!10589 (regOne!21691 Regex!10589) (regTwo!21691 Regex!10589)) )
))
(declare-datatypes ((List!38878 0))(
  ( (Nil!38754) (Cons!38754 (h!44174 C!21364) (t!299953 List!38878)) )
))
(declare-datatypes ((IArray!23723 0))(
  ( (IArray!23724 (innerList!11919 List!38878)) )
))
(declare-datatypes ((Conc!11859 0))(
  ( (Node!11859 (left!30240 Conc!11859) (right!30570 Conc!11859) (csize!23948 Int) (cheight!12070 Int)) (Leaf!18385 (xs!15061 IArray!23723) (csize!23949 Int)) (Empty!11859) )
))
(declare-datatypes ((BalanceConc!23332 0))(
  ( (BalanceConc!23333 (c!635327 Conc!11859)) )
))
(declare-datatypes ((TokenValueInjection!11548 0))(
  ( (TokenValueInjection!11549 (toValue!8126 Int) (toChars!7985 Int)) )
))
(declare-datatypes ((Rule!11460 0))(
  ( (Rule!11461 (regex!5830 Regex!10589) (tag!6624 String!43634) (isSeparator!5830 Bool) (transformation!5830 TokenValueInjection!11548)) )
))
(declare-datatypes ((List!38879 0))(
  ( (Nil!38755) (Cons!38755 (h!44175 Rule!11460) (t!299954 List!38879)) )
))
(declare-fun rules!3307 () List!38879)

(declare-fun anOtherTypeRule!33 () Rule!11460)

(declare-fun contains!7727 (List!38879 Rule!11460) Bool)

(assert (=> b!3674056 (= res!1492355 (contains!7727 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3674057 () Bool)

(assert (=> b!3674057 false))

(declare-fun lt!1282034 () List!38878)

(declare-datatypes ((Token!11026 0))(
  ( (Token!11027 (value!186615 TokenValue!6060) (rule!8658 Rule!11460) (size!29625 Int) (originalCharacters!6544 List!38878)) )
))
(declare-datatypes ((tuple2!38620 0))(
  ( (tuple2!38621 (_1!22444 Token!11026) (_2!22444 List!38878)) )
))
(declare-fun lt!1282076 () tuple2!38620)

(declare-datatypes ((Unit!56497 0))(
  ( (Unit!56498) )
))
(declare-fun lt!1282032 () Unit!56497)

(declare-fun lt!1282046 () List!38878)

(declare-datatypes ((LexerInterface!5419 0))(
  ( (LexerInterfaceExt!5416 (__x!24338 Int)) (Lexer!5417) )
))
(declare-fun thiss!23823 () LexerInterface!5419)

(declare-fun rule!403 () Rule!11460)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!238 (LexerInterface!5419 List!38879 Rule!11460 List!38878 List!38878 Rule!11460) Unit!56497)

(assert (=> b!3674057 (= lt!1282032 (lemmaMaxPrefNoSmallerRuleMatches!238 thiss!23823 rules!3307 (rule!8658 (_1!22444 lt!1282076)) lt!1282046 lt!1282034 rule!403))))

(declare-fun e!2275051 () Unit!56497)

(declare-fun Unit!56499 () Unit!56497)

(assert (=> b!3674057 (= e!2275051 Unit!56499)))

(declare-fun lt!1282031 () C!21364)

(declare-fun call!266046 () Unit!56497)

(declare-fun bm!266038 () Bool)

(declare-fun lt!1282040 () List!38878)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!778 (Regex!10589 List!38878 C!21364) Unit!56497)

(assert (=> bm!266038 (= call!266046 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!778 (regex!5830 (rule!8658 (_1!22444 lt!1282076))) lt!1282040 lt!1282031))))

(declare-fun b!3674058 () Bool)

(declare-fun e!2275058 () Bool)

(declare-fun e!2275029 () Bool)

(assert (=> b!3674058 (= e!2275058 (not e!2275029))))

(declare-fun res!1492350 () Bool)

(assert (=> b!3674058 (=> res!1492350 e!2275029)))

(declare-fun matchR!5158 (Regex!10589 List!38878) Bool)

(assert (=> b!3674058 (= res!1492350 (not (matchR!5158 (regex!5830 rule!403) lt!1282046)))))

(declare-fun ruleValid!2094 (LexerInterface!5419 Rule!11460) Bool)

(assert (=> b!3674058 (ruleValid!2094 thiss!23823 rule!403)))

(declare-fun lt!1282068 () Unit!56497)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1248 (LexerInterface!5419 Rule!11460 List!38879) Unit!56497)

(assert (=> b!3674058 (= lt!1282068 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1248 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3674059 () Bool)

(declare-fun e!2275044 () Bool)

(declare-fun lt!1282077 () Rule!11460)

(assert (=> b!3674059 (= e!2275044 (= (rule!8658 (_1!22444 lt!1282076)) lt!1282077))))

(declare-fun b!3674060 () Bool)

(declare-fun res!1492344 () Bool)

(declare-fun e!2275034 () Bool)

(assert (=> b!3674060 (=> res!1492344 e!2275034)))

(assert (=> b!3674060 (= res!1492344 (not (matchR!5158 (regex!5830 (rule!8658 (_1!22444 lt!1282076))) lt!1282040)))))

(declare-fun b!3674061 () Bool)

(declare-fun e!2275043 () Bool)

(assert (=> b!3674061 (= e!2275043 false)))

(declare-fun b!3674062 () Bool)

(declare-fun e!2275026 () Bool)

(assert (=> b!3674062 (= e!2275026 e!2275058)))

(declare-fun res!1492359 () Bool)

(assert (=> b!3674062 (=> (not res!1492359) (not e!2275058))))

(declare-fun lt!1282063 () tuple2!38620)

(declare-fun token!511 () Token!11026)

(assert (=> b!3674062 (= res!1492359 (= (_1!22444 lt!1282063) token!511))))

(declare-datatypes ((Option!8288 0))(
  ( (None!8287) (Some!8287 (v!38207 tuple2!38620)) )
))
(declare-fun lt!1282082 () Option!8288)

(declare-fun get!12813 (Option!8288) tuple2!38620)

(assert (=> b!3674062 (= lt!1282063 (get!12813 lt!1282082))))

(declare-fun b!3674063 () Bool)

(declare-fun e!2275035 () Bool)

(assert (=> b!3674063 (= e!2275035 true)))

(declare-fun lt!1282035 () List!38878)

(declare-fun getSuffix!1746 (List!38878 List!38878) List!38878)

(assert (=> b!3674063 (= lt!1282035 (getSuffix!1746 lt!1282034 lt!1282046))))

(declare-fun lt!1282061 () Unit!56497)

(declare-fun e!2275055 () Unit!56497)

(assert (=> b!3674063 (= lt!1282061 e!2275055)))

(declare-fun c!635317 () Bool)

(assert (=> b!3674063 (= c!635317 (not (= (rule!8658 (_1!22444 lt!1282076)) (rule!8658 token!511))))))

(assert (=> b!3674063 (= lt!1282040 lt!1282046)))

(declare-fun lt!1282047 () Unit!56497)

(declare-fun lemmaIsPrefixSameLengthThenSameList!655 (List!38878 List!38878 List!38878) Unit!56497)

(assert (=> b!3674063 (= lt!1282047 (lemmaIsPrefixSameLengthThenSameList!655 lt!1282040 lt!1282046 lt!1282034))))

(declare-fun lt!1282027 () Unit!56497)

(declare-fun e!2275050 () Unit!56497)

(assert (=> b!3674063 (= lt!1282027 e!2275050)))

(declare-fun c!635321 () Bool)

(declare-fun lt!1282058 () Int)

(declare-fun lt!1282078 () Int)

(assert (=> b!3674063 (= c!635321 (< lt!1282058 lt!1282078))))

(declare-fun lt!1282070 () Unit!56497)

(declare-fun e!2275053 () Unit!56497)

(assert (=> b!3674063 (= lt!1282070 e!2275053)))

(declare-fun c!635319 () Bool)

(assert (=> b!3674063 (= c!635319 (> lt!1282058 lt!1282078))))

(declare-fun lt!1282050 () BalanceConc!23332)

(declare-fun size!29626 (BalanceConc!23332) Int)

(assert (=> b!3674063 (= lt!1282078 (size!29626 lt!1282050))))

(declare-fun lt!1282028 () Unit!56497)

(declare-fun e!2275036 () Unit!56497)

(assert (=> b!3674063 (= lt!1282028 e!2275036)))

(declare-fun c!635318 () Bool)

(assert (=> b!3674063 (= c!635318 (isSeparator!5830 rule!403))))

(declare-fun lt!1282071 () Unit!56497)

(declare-fun e!2275027 () Unit!56497)

(assert (=> b!3674063 (= lt!1282071 e!2275027)))

(declare-fun c!635320 () Bool)

(declare-fun lt!1282044 () List!38878)

(declare-fun contains!7728 (List!38878 C!21364) Bool)

(assert (=> b!3674063 (= c!635320 (not (contains!7728 lt!1282044 lt!1282031)))))

(declare-fun head!7874 (List!38878) C!21364)

(assert (=> b!3674063 (= lt!1282031 (head!7874 lt!1282040))))

(declare-fun b!3674064 () Bool)

(declare-fun res!1492340 () Bool)

(declare-fun e!2275040 () Bool)

(assert (=> b!3674064 (=> res!1492340 e!2275040)))

(declare-fun lt!1282072 () C!21364)

(declare-fun usedCharacters!1042 (Regex!10589) List!38878)

(assert (=> b!3674064 (= res!1492340 (not (contains!7728 (usedCharacters!1042 (regex!5830 anOtherTypeRule!33)) lt!1282072)))))

(declare-fun b!3674065 () Bool)

(declare-fun Unit!56500 () Unit!56497)

(assert (=> b!3674065 (= e!2275053 Unit!56500)))

(declare-fun b!3674066 () Bool)

(declare-fun Unit!56501 () Unit!56497)

(assert (=> b!3674066 (= e!2275055 Unit!56501)))

(declare-fun b!3674067 () Bool)

(assert (=> b!3674067 false))

(declare-fun lt!1282056 () Unit!56497)

(assert (=> b!3674067 (= lt!1282056 call!266046)))

(declare-fun call!266044 () Bool)

(assert (=> b!3674067 (not call!266044)))

(declare-fun lt!1282079 () Unit!56497)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!358 (LexerInterface!5419 List!38879 List!38879 Rule!11460 Rule!11460 C!21364) Unit!56497)

(assert (=> b!3674067 (= lt!1282079 (lemmaSepRuleNotContainsCharContainedInANonSepRule!358 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8658 (_1!22444 lt!1282076)) lt!1282031))))

(declare-fun e!2275047 () Unit!56497)

(declare-fun Unit!56502 () Unit!56497)

(assert (=> b!3674067 (= e!2275047 Unit!56502)))

(declare-fun b!3674068 () Bool)

(assert (=> b!3674068 false))

(declare-fun lt!1282033 () Unit!56497)

(declare-fun call!266047 () Unit!56497)

(assert (=> b!3674068 (= lt!1282033 call!266047)))

(declare-fun call!266043 () Bool)

(assert (=> b!3674068 (not call!266043)))

(declare-fun lt!1282062 () Unit!56497)

(assert (=> b!3674068 (= lt!1282062 (lemmaSepRuleNotContainsCharContainedInANonSepRule!358 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8658 (_1!22444 lt!1282076)) lt!1282072))))

(declare-fun e!2275038 () Unit!56497)

(declare-fun Unit!56503 () Unit!56497)

(assert (=> b!3674068 (= e!2275038 Unit!56503)))

(declare-fun bm!266039 () Bool)

(declare-fun call!266048 () List!38878)

(assert (=> bm!266039 (= call!266044 (contains!7728 call!266048 lt!1282031))))

(declare-fun b!3674069 () Bool)

(assert (=> b!3674069 (= e!2275029 e!2275040)))

(declare-fun res!1492347 () Bool)

(assert (=> b!3674069 (=> res!1492347 e!2275040)))

(assert (=> b!3674069 (= res!1492347 (contains!7728 lt!1282044 lt!1282072))))

(declare-fun suffix!1395 () List!38878)

(assert (=> b!3674069 (= lt!1282072 (head!7874 suffix!1395))))

(assert (=> b!3674069 (= lt!1282044 (usedCharacters!1042 (regex!5830 rule!403)))))

(declare-fun b!3674070 () Bool)

(declare-fun res!1492342 () Bool)

(assert (=> b!3674070 (=> res!1492342 e!2275029)))

(declare-fun isEmpty!23006 (List!38878) Bool)

(assert (=> b!3674070 (= res!1492342 (isEmpty!23006 suffix!1395))))

(declare-fun b!3674071 () Bool)

(declare-fun res!1492358 () Bool)

(assert (=> b!3674071 (=> (not res!1492358) (not e!2275025))))

(assert (=> b!3674071 (= res!1492358 (contains!7727 rules!3307 rule!403))))

(declare-fun b!3674072 () Bool)

(declare-fun e!2275054 () Bool)

(assert (=> b!3674072 (= e!2275054 e!2275044)))

(declare-fun res!1492348 () Bool)

(assert (=> b!3674072 (=> (not res!1492348) (not e!2275044))))

(declare-fun list!14396 (BalanceConc!23332) List!38878)

(declare-fun charsOf!3844 (Token!11026) BalanceConc!23332)

(assert (=> b!3674072 (= res!1492348 (matchR!5158 (regex!5830 lt!1282077) (list!14396 (charsOf!3844 (_1!22444 lt!1282076)))))))

(declare-datatypes ((Option!8289 0))(
  ( (None!8288) (Some!8288 (v!38208 Rule!11460)) )
))
(declare-fun lt!1282037 () Option!8289)

(declare-fun get!12814 (Option!8289) Rule!11460)

(assert (=> b!3674072 (= lt!1282077 (get!12814 lt!1282037))))

(declare-fun b!3674073 () Bool)

(declare-fun Unit!56504 () Unit!56497)

(assert (=> b!3674073 (= e!2275027 Unit!56504)))

(declare-fun lt!1282055 () Unit!56497)

(assert (=> b!3674073 (= lt!1282055 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!778 (regex!5830 rule!403) lt!1282046 lt!1282031))))

(assert (=> b!3674073 false))

(declare-fun b!3674074 () Bool)

(declare-fun res!1492346 () Bool)

(assert (=> b!3674074 (=> (not res!1492346) (not e!2275025))))

(declare-fun rulesInvariant!4816 (LexerInterface!5419 List!38879) Bool)

(assert (=> b!3674074 (= res!1492346 (rulesInvariant!4816 thiss!23823 rules!3307))))

(declare-fun b!3674075 () Bool)

(declare-fun Unit!56505 () Unit!56497)

(assert (=> b!3674075 (= e!2275050 Unit!56505)))

(declare-fun lt!1282051 () Unit!56497)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!372 (LexerInterface!5419 List!38879 Rule!11460 List!38878 List!38878 List!38878 Rule!11460) Unit!56497)

(assert (=> b!3674075 (= lt!1282051 (lemmaMaxPrefixOutputsMaxPrefix!372 thiss!23823 rules!3307 (rule!8658 (_1!22444 lt!1282076)) lt!1282040 lt!1282034 lt!1282046 rule!403))))

(assert (=> b!3674075 false))

(declare-fun bm!266040 () Bool)

(assert (=> bm!266040 (= call!266048 (usedCharacters!1042 (regex!5830 (rule!8658 (_1!22444 lt!1282076)))))))

(declare-fun b!3674076 () Bool)

(declare-fun res!1492357 () Bool)

(assert (=> b!3674076 (=> (not res!1492357) (not e!2275058))))

(assert (=> b!3674076 (= res!1492357 (= (rule!8658 token!511) rule!403))))

(declare-fun b!3674077 () Bool)

(declare-fun e!2275048 () Unit!56497)

(declare-fun Unit!56506 () Unit!56497)

(assert (=> b!3674077 (= e!2275048 Unit!56506)))

(declare-fun b!3674078 () Bool)

(assert (=> b!3674078 (= e!2275036 e!2275048)))

(declare-fun c!635323 () Bool)

(assert (=> b!3674078 (= c!635323 (not (isSeparator!5830 (rule!8658 (_1!22444 lt!1282076)))))))

(declare-fun b!3674079 () Bool)

(declare-fun res!1492351 () Bool)

(assert (=> b!3674079 (=> res!1492351 e!2275040)))

(declare-fun sepAndNonSepRulesDisjointChars!1998 (List!38879 List!38879) Bool)

(assert (=> b!3674079 (= res!1492351 (not (sepAndNonSepRulesDisjointChars!1998 rules!3307 rules!3307)))))

(declare-fun b!3674080 () Bool)

(declare-fun e!2275032 () Bool)

(assert (=> b!3674080 (= e!2275034 e!2275032)))

(declare-fun res!1492353 () Bool)

(assert (=> b!3674080 (=> res!1492353 e!2275032)))

(declare-fun lt!1282038 () Option!8288)

(declare-fun lt!1282026 () TokenValue!6060)

(assert (=> b!3674080 (= res!1492353 (not (= lt!1282038 (Some!8287 (tuple2!38621 (Token!11027 lt!1282026 (rule!8658 (_1!22444 lt!1282076)) lt!1282058 lt!1282040) (_2!22444 lt!1282076))))))))

(declare-fun lt!1282049 () BalanceConc!23332)

(assert (=> b!3674080 (= lt!1282058 (size!29626 lt!1282049))))

(declare-fun apply!9332 (TokenValueInjection!11548 BalanceConc!23332) TokenValue!6060)

(assert (=> b!3674080 (= lt!1282026 (apply!9332 (transformation!5830 (rule!8658 (_1!22444 lt!1282076))) lt!1282049))))

(declare-fun lt!1282029 () Unit!56497)

(declare-fun lemmaCharactersSize!875 (Token!11026) Unit!56497)

(assert (=> b!3674080 (= lt!1282029 (lemmaCharactersSize!875 (_1!22444 lt!1282076)))))

(declare-fun lt!1282074 () Unit!56497)

(declare-fun lemmaEqSameImage!1013 (TokenValueInjection!11548 BalanceConc!23332 BalanceConc!23332) Unit!56497)

(declare-fun seqFromList!4379 (List!38878) BalanceConc!23332)

(assert (=> b!3674080 (= lt!1282074 (lemmaEqSameImage!1013 (transformation!5830 (rule!8658 (_1!22444 lt!1282076))) lt!1282049 (seqFromList!4379 (originalCharacters!6544 (_1!22444 lt!1282076)))))))

(declare-fun lt!1282043 () Unit!56497)

(declare-fun lemmaSemiInverse!1579 (TokenValueInjection!11548 BalanceConc!23332) Unit!56497)

(assert (=> b!3674080 (= lt!1282043 (lemmaSemiInverse!1579 (transformation!5830 (rule!8658 (_1!22444 lt!1282076))) lt!1282049))))

(declare-fun b!3674081 () Bool)

(assert (=> b!3674081 (= e!2275025 e!2275026)))

(declare-fun res!1492341 () Bool)

(assert (=> b!3674081 (=> (not res!1492341) (not e!2275026))))

(declare-fun isDefined!6520 (Option!8288) Bool)

(assert (=> b!3674081 (= res!1492341 (isDefined!6520 lt!1282082))))

(declare-fun maxPrefix!2953 (LexerInterface!5419 List!38879 List!38878) Option!8288)

(assert (=> b!3674081 (= lt!1282082 (maxPrefix!2953 thiss!23823 rules!3307 lt!1282046))))

(assert (=> b!3674081 (= lt!1282046 (list!14396 lt!1282050))))

(assert (=> b!3674081 (= lt!1282050 (charsOf!3844 token!511))))

(declare-fun e!2275030 () Bool)

(assert (=> b!3674082 (= e!2275030 (and tp!1117685 tp!1117677))))

(declare-fun res!1492356 () Bool)

(assert (=> start!344418 (=> (not res!1492356) (not e!2275025))))

(get-info :version)

(assert (=> start!344418 (= res!1492356 ((_ is Lexer!5417) thiss!23823))))

(assert (=> start!344418 e!2275025))

(declare-fun e!2275042 () Bool)

(assert (=> start!344418 e!2275042))

(declare-fun e!2275031 () Bool)

(assert (=> start!344418 e!2275031))

(assert (=> start!344418 true))

(declare-fun e!2275056 () Bool)

(declare-fun inv!52243 (Token!11026) Bool)

(assert (=> start!344418 (and (inv!52243 token!511) e!2275056)))

(declare-fun e!2275059 () Bool)

(assert (=> start!344418 e!2275059))

(declare-fun e!2275049 () Bool)

(assert (=> start!344418 e!2275049))

(declare-fun b!3674083 () Bool)

(declare-fun res!1492352 () Bool)

(assert (=> b!3674083 (=> (not res!1492352) (not e!2275025))))

(declare-fun isEmpty!23007 (List!38879) Bool)

(assert (=> b!3674083 (= res!1492352 (not (isEmpty!23007 rules!3307)))))

(declare-fun b!3674084 () Bool)

(declare-fun res!1492343 () Bool)

(assert (=> b!3674084 (=> (not res!1492343) (not e!2275058))))

(assert (=> b!3674084 (= res!1492343 (isEmpty!23006 (_2!22444 lt!1282063)))))

(declare-fun b!3674085 () Bool)

(declare-fun Unit!56507 () Unit!56497)

(assert (=> b!3674085 (= e!2275047 Unit!56507)))

(declare-fun b!3674086 () Bool)

(declare-fun e!2275046 () Unit!56497)

(declare-fun Unit!56508 () Unit!56497)

(assert (=> b!3674086 (= e!2275046 Unit!56508)))

(declare-fun e!2275037 () Bool)

(assert (=> b!3674087 (= e!2275037 (and tp!1117686 tp!1117678))))

(declare-fun b!3674088 () Bool)

(declare-fun Unit!56509 () Unit!56497)

(assert (=> b!3674088 (= e!2275055 Unit!56509)))

(declare-fun lt!1282069 () Int)

(declare-fun getIndex!498 (List!38879 Rule!11460) Int)

(assert (=> b!3674088 (= lt!1282069 (getIndex!498 rules!3307 (rule!8658 (_1!22444 lt!1282076))))))

(declare-fun lt!1282045 () Int)

(assert (=> b!3674088 (= lt!1282045 (getIndex!498 rules!3307 rule!403))))

(declare-fun c!635316 () Bool)

(assert (=> b!3674088 (= c!635316 (< lt!1282069 lt!1282045))))

(declare-fun lt!1282067 () Unit!56497)

(assert (=> b!3674088 (= lt!1282067 e!2275046)))

(declare-fun c!635322 () Bool)

(assert (=> b!3674088 (= c!635322 (< lt!1282045 lt!1282069))))

(declare-fun lt!1282041 () Unit!56497)

(assert (=> b!3674088 (= lt!1282041 e!2275051)))

(declare-fun lt!1282060 () Unit!56497)

(declare-fun lemmaSameIndexThenSameElement!230 (List!38879 Rule!11460 Rule!11460) Unit!56497)

(assert (=> b!3674088 (= lt!1282060 (lemmaSameIndexThenSameElement!230 rules!3307 (rule!8658 (_1!22444 lt!1282076)) rule!403))))

(assert (=> b!3674088 false))

(declare-fun e!2275041 () Bool)

(assert (=> b!3674089 (= e!2275041 (and tp!1117679 tp!1117682))))

(declare-fun b!3674090 () Bool)

(assert (=> b!3674090 (= e!2275040 e!2275034)))

(declare-fun res!1492338 () Bool)

(assert (=> b!3674090 (=> res!1492338 e!2275034)))

(declare-fun isPrefix!3193 (List!38878 List!38878) Bool)

(assert (=> b!3674090 (= res!1492338 (not (isPrefix!3193 lt!1282040 lt!1282034)))))

(declare-fun ++!9646 (List!38878 List!38878) List!38878)

(assert (=> b!3674090 (isPrefix!3193 lt!1282040 (++!9646 lt!1282040 (_2!22444 lt!1282076)))))

(declare-fun lt!1282059 () Unit!56497)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2112 (List!38878 List!38878) Unit!56497)

(assert (=> b!3674090 (= lt!1282059 (lemmaConcatTwoListThenFirstIsPrefix!2112 lt!1282040 (_2!22444 lt!1282076)))))

(assert (=> b!3674090 (= lt!1282040 (list!14396 lt!1282049))))

(assert (=> b!3674090 (= lt!1282049 (charsOf!3844 (_1!22444 lt!1282076)))))

(assert (=> b!3674090 e!2275054))

(declare-fun res!1492354 () Bool)

(assert (=> b!3674090 (=> (not res!1492354) (not e!2275054))))

(declare-fun isDefined!6521 (Option!8289) Bool)

(assert (=> b!3674090 (= res!1492354 (isDefined!6521 lt!1282037))))

(declare-fun getRuleFromTag!1434 (LexerInterface!5419 List!38879 String!43634) Option!8289)

(assert (=> b!3674090 (= lt!1282037 (getRuleFromTag!1434 thiss!23823 rules!3307 (tag!6624 (rule!8658 (_1!22444 lt!1282076)))))))

(declare-fun lt!1282048 () Unit!56497)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1434 (LexerInterface!5419 List!38879 List!38878 Token!11026) Unit!56497)

(assert (=> b!3674090 (= lt!1282048 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1434 thiss!23823 rules!3307 lt!1282034 (_1!22444 lt!1282076)))))

(assert (=> b!3674090 (= lt!1282076 (get!12813 lt!1282038))))

(declare-fun lt!1282064 () Unit!56497)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1097 (LexerInterface!5419 List!38879 List!38878 List!38878) Unit!56497)

(assert (=> b!3674090 (= lt!1282064 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1097 thiss!23823 rules!3307 lt!1282046 suffix!1395))))

(assert (=> b!3674090 (= lt!1282038 (maxPrefix!2953 thiss!23823 rules!3307 lt!1282034))))

(assert (=> b!3674090 (isPrefix!3193 lt!1282046 lt!1282034)))

(declare-fun lt!1282057 () Unit!56497)

(assert (=> b!3674090 (= lt!1282057 (lemmaConcatTwoListThenFirstIsPrefix!2112 lt!1282046 suffix!1395))))

(assert (=> b!3674090 (= lt!1282034 (++!9646 lt!1282046 suffix!1395))))

(declare-fun b!3674091 () Bool)

(declare-fun Unit!56510 () Unit!56497)

(assert (=> b!3674091 (= e!2275027 Unit!56510)))

(declare-fun bm!266041 () Bool)

(assert (=> bm!266041 (= call!266047 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!778 (regex!5830 (rule!8658 (_1!22444 lt!1282076))) lt!1282040 lt!1282072))))

(declare-fun b!3674092 () Bool)

(assert (=> b!3674092 false))

(declare-fun lt!1282066 () Unit!56497)

(assert (=> b!3674092 (= lt!1282066 call!266046)))

(assert (=> b!3674092 (not call!266044)))

(declare-fun lt!1282081 () Unit!56497)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!476 (LexerInterface!5419 List!38879 List!38879 Rule!11460 Rule!11460 C!21364) Unit!56497)

(assert (=> b!3674092 (= lt!1282081 (lemmaNonSepRuleNotContainsCharContainedInASepRule!476 thiss!23823 rules!3307 rules!3307 (rule!8658 (_1!22444 lt!1282076)) rule!403 lt!1282031))))

(declare-fun Unit!56511 () Unit!56497)

(assert (=> b!3674092 (= e!2275048 Unit!56511)))

(declare-fun bm!266042 () Bool)

(declare-fun call!266045 () List!38878)

(assert (=> bm!266042 (= call!266043 (contains!7728 call!266045 lt!1282072))))

(declare-fun b!3674093 () Bool)

(assert (=> b!3674093 (= e!2275053 e!2275038)))

(declare-fun lt!1282030 () Unit!56497)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!138 (List!38878 List!38878 List!38878 List!38878) Unit!56497)

(assert (=> b!3674093 (= lt!1282030 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!138 lt!1282046 suffix!1395 lt!1282040 lt!1282034))))

(assert (=> b!3674093 (contains!7728 lt!1282040 lt!1282072)))

(declare-fun c!635325 () Bool)

(assert (=> b!3674093 (= c!635325 (isSeparator!5830 rule!403))))

(declare-fun b!3674094 () Bool)

(declare-fun e!2275045 () Bool)

(declare-fun tp!1117684 () Bool)

(assert (=> b!3674094 (= e!2275042 (and e!2275045 tp!1117684))))

(declare-fun b!3674095 () Bool)

(assert (=> b!3674095 (= e!2275036 e!2275047)))

(declare-fun c!635324 () Bool)

(assert (=> b!3674095 (= c!635324 (isSeparator!5830 (rule!8658 (_1!22444 lt!1282076))))))

(declare-fun b!3674096 () Bool)

(declare-fun tp!1117675 () Bool)

(declare-fun e!2275060 () Bool)

(declare-fun inv!21 (TokenValue!6060) Bool)

(assert (=> b!3674096 (= e!2275056 (and (inv!21 (value!186615 token!511)) e!2275060 tp!1117675))))

(declare-fun b!3674097 () Bool)

(declare-fun Unit!56512 () Unit!56497)

(assert (=> b!3674097 (= e!2275050 Unit!56512)))

(declare-fun b!3674098 () Bool)

(assert (=> b!3674098 (= e!2275032 e!2275035)))

(declare-fun res!1492345 () Bool)

(assert (=> b!3674098 (=> res!1492345 e!2275035)))

(declare-fun lt!1282054 () List!38878)

(declare-fun lt!1282065 () Option!8288)

(assert (=> b!3674098 (= res!1492345 (or (not (= lt!1282054 (_2!22444 lt!1282076))) (not (= lt!1282065 (Some!8287 (tuple2!38621 (_1!22444 lt!1282076) lt!1282054))))))))

(assert (=> b!3674098 (= (_2!22444 lt!1282076) lt!1282054)))

(declare-fun lt!1282036 () Unit!56497)

(declare-fun lemmaSamePrefixThenSameSuffix!1520 (List!38878 List!38878 List!38878 List!38878 List!38878) Unit!56497)

(assert (=> b!3674098 (= lt!1282036 (lemmaSamePrefixThenSameSuffix!1520 lt!1282040 (_2!22444 lt!1282076) lt!1282040 lt!1282054 lt!1282034))))

(assert (=> b!3674098 (= lt!1282054 (getSuffix!1746 lt!1282034 lt!1282040))))

(declare-fun lt!1282073 () TokenValue!6060)

(declare-fun lt!1282053 () Int)

(assert (=> b!3674098 (= lt!1282065 (Some!8287 (tuple2!38621 (Token!11027 lt!1282073 (rule!8658 (_1!22444 lt!1282076)) lt!1282053 lt!1282040) (_2!22444 lt!1282076))))))

(declare-fun maxPrefixOneRule!2091 (LexerInterface!5419 Rule!11460 List!38878) Option!8288)

(assert (=> b!3674098 (= lt!1282065 (maxPrefixOneRule!2091 thiss!23823 (rule!8658 (_1!22444 lt!1282076)) lt!1282034))))

(declare-fun size!29627 (List!38878) Int)

(assert (=> b!3674098 (= lt!1282053 (size!29627 lt!1282040))))

(assert (=> b!3674098 (= lt!1282073 (apply!9332 (transformation!5830 (rule!8658 (_1!22444 lt!1282076))) (seqFromList!4379 lt!1282040)))))

(declare-fun lt!1282039 () Unit!56497)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1147 (LexerInterface!5419 List!38879 List!38878 List!38878 List!38878 Rule!11460) Unit!56497)

(assert (=> b!3674098 (= lt!1282039 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1147 thiss!23823 rules!3307 lt!1282040 lt!1282034 (_2!22444 lt!1282076) (rule!8658 (_1!22444 lt!1282076))))))

(declare-fun bm!266043 () Bool)

(assert (=> bm!266043 (= call!266045 (usedCharacters!1042 (regex!5830 (rule!8658 (_1!22444 lt!1282076)))))))

(declare-fun b!3674099 () Bool)

(assert (=> b!3674099 e!2275043))

(declare-fun res!1492349 () Bool)

(assert (=> b!3674099 (=> (not res!1492349) (not e!2275043))))

(assert (=> b!3674099 (= res!1492349 (not (matchR!5158 (regex!5830 (rule!8658 (_1!22444 lt!1282076))) lt!1282046)))))

(declare-fun lt!1282080 () Unit!56497)

(assert (=> b!3674099 (= lt!1282080 (lemmaMaxPrefNoSmallerRuleMatches!238 thiss!23823 rules!3307 rule!403 lt!1282046 lt!1282046 (rule!8658 (_1!22444 lt!1282076))))))

(assert (=> b!3674099 (isEmpty!23006 (getSuffix!1746 lt!1282046 lt!1282046))))

(declare-fun lt!1282052 () Unit!56497)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!210 (List!38878) Unit!56497)

(assert (=> b!3674099 (= lt!1282052 (lemmaGetSuffixOnListWithItSelfIsEmpty!210 lt!1282046))))

(declare-fun Unit!56513 () Unit!56497)

(assert (=> b!3674099 (= e!2275046 Unit!56513)))

(declare-fun b!3674100 () Bool)

(assert (=> b!3674100 false))

(declare-fun lt!1282075 () Unit!56497)

(assert (=> b!3674100 (= lt!1282075 call!266047)))

(assert (=> b!3674100 (not call!266043)))

(declare-fun lt!1282042 () Unit!56497)

(assert (=> b!3674100 (= lt!1282042 (lemmaNonSepRuleNotContainsCharContainedInASepRule!476 thiss!23823 rules!3307 rules!3307 (rule!8658 (_1!22444 lt!1282076)) anOtherTypeRule!33 lt!1282072))))

(declare-fun Unit!56514 () Unit!56497)

(assert (=> b!3674100 (= e!2275038 Unit!56514)))

(declare-fun b!3674101 () Bool)

(declare-fun tp!1117676 () Bool)

(declare-fun inv!52240 (String!43634) Bool)

(declare-fun inv!52244 (TokenValueInjection!11548) Bool)

(assert (=> b!3674101 (= e!2275060 (and tp!1117676 (inv!52240 (tag!6624 (rule!8658 token!511))) (inv!52244 (transformation!5830 (rule!8658 token!511))) e!2275030))))

(declare-fun b!3674102 () Bool)

(declare-fun tp!1117688 () Bool)

(assert (=> b!3674102 (= e!2275045 (and tp!1117688 (inv!52240 (tag!6624 (h!44175 rules!3307))) (inv!52244 (transformation!5830 (h!44175 rules!3307))) e!2275037))))

(declare-fun b!3674103 () Bool)

(declare-fun res!1492339 () Bool)

(assert (=> b!3674103 (=> (not res!1492339) (not e!2275025))))

(assert (=> b!3674103 (= res!1492339 (not (= (isSeparator!5830 anOtherTypeRule!33) (isSeparator!5830 rule!403))))))

(declare-fun b!3674104 () Bool)

(declare-fun tp!1117674 () Bool)

(assert (=> b!3674104 (= e!2275049 (and tp!1117674 (inv!52240 (tag!6624 anOtherTypeRule!33)) (inv!52244 (transformation!5830 anOtherTypeRule!33)) e!2275041))))

(declare-fun b!3674105 () Bool)

(declare-fun tp_is_empty!18261 () Bool)

(declare-fun tp!1117681 () Bool)

(assert (=> b!3674105 (= e!2275031 (and tp_is_empty!18261 tp!1117681))))

(declare-fun b!3674106 () Bool)

(declare-fun Unit!56515 () Unit!56497)

(assert (=> b!3674106 (= e!2275051 Unit!56515)))

(declare-fun e!2275033 () Bool)

(declare-fun b!3674107 () Bool)

(declare-fun tp!1117680 () Bool)

(assert (=> b!3674107 (= e!2275059 (and tp!1117680 (inv!52240 (tag!6624 rule!403)) (inv!52244 (transformation!5830 rule!403)) e!2275033))))

(assert (=> b!3674108 (= e!2275033 (and tp!1117683 tp!1117687))))

(assert (= (and start!344418 res!1492356) b!3674083))

(assert (= (and b!3674083 res!1492352) b!3674074))

(assert (= (and b!3674074 res!1492346) b!3674071))

(assert (= (and b!3674071 res!1492358) b!3674056))

(assert (= (and b!3674056 res!1492355) b!3674103))

(assert (= (and b!3674103 res!1492339) b!3674081))

(assert (= (and b!3674081 res!1492341) b!3674062))

(assert (= (and b!3674062 res!1492359) b!3674084))

(assert (= (and b!3674084 res!1492343) b!3674076))

(assert (= (and b!3674076 res!1492357) b!3674058))

(assert (= (and b!3674058 (not res!1492350)) b!3674070))

(assert (= (and b!3674070 (not res!1492342)) b!3674069))

(assert (= (and b!3674069 (not res!1492347)) b!3674064))

(assert (= (and b!3674064 (not res!1492340)) b!3674079))

(assert (= (and b!3674079 (not res!1492351)) b!3674090))

(assert (= (and b!3674090 res!1492354) b!3674072))

(assert (= (and b!3674072 res!1492348) b!3674059))

(assert (= (and b!3674090 (not res!1492338)) b!3674060))

(assert (= (and b!3674060 (not res!1492344)) b!3674080))

(assert (= (and b!3674080 (not res!1492353)) b!3674098))

(assert (= (and b!3674098 (not res!1492345)) b!3674063))

(assert (= (and b!3674063 c!635320) b!3674073))

(assert (= (and b!3674063 (not c!635320)) b!3674091))

(assert (= (and b!3674063 c!635318) b!3674078))

(assert (= (and b!3674063 (not c!635318)) b!3674095))

(assert (= (and b!3674078 c!635323) b!3674092))

(assert (= (and b!3674078 (not c!635323)) b!3674077))

(assert (= (and b!3674095 c!635324) b!3674067))

(assert (= (and b!3674095 (not c!635324)) b!3674085))

(assert (= (or b!3674092 b!3674067) bm!266038))

(assert (= (or b!3674092 b!3674067) bm!266040))

(assert (= (or b!3674092 b!3674067) bm!266039))

(assert (= (and b!3674063 c!635319) b!3674093))

(assert (= (and b!3674063 (not c!635319)) b!3674065))

(assert (= (and b!3674093 c!635325) b!3674068))

(assert (= (and b!3674093 (not c!635325)) b!3674100))

(assert (= (or b!3674068 b!3674100) bm!266041))

(assert (= (or b!3674068 b!3674100) bm!266043))

(assert (= (or b!3674068 b!3674100) bm!266042))

(assert (= (and b!3674063 c!635321) b!3674075))

(assert (= (and b!3674063 (not c!635321)) b!3674097))

(assert (= (and b!3674063 c!635317) b!3674088))

(assert (= (and b!3674063 (not c!635317)) b!3674066))

(assert (= (and b!3674088 c!635316) b!3674099))

(assert (= (and b!3674088 (not c!635316)) b!3674086))

(assert (= (and b!3674099 res!1492349) b!3674061))

(assert (= (and b!3674088 c!635322) b!3674057))

(assert (= (and b!3674088 (not c!635322)) b!3674106))

(assert (= b!3674102 b!3674087))

(assert (= b!3674094 b!3674102))

(assert (= (and start!344418 ((_ is Cons!38755) rules!3307)) b!3674094))

(assert (= (and start!344418 ((_ is Cons!38754) suffix!1395)) b!3674105))

(assert (= b!3674101 b!3674082))

(assert (= b!3674096 b!3674101))

(assert (= start!344418 b!3674096))

(assert (= b!3674107 b!3674108))

(assert (= start!344418 b!3674107))

(assert (= b!3674104 b!3674089))

(assert (= start!344418 b!3674104))

(declare-fun m!4183167 () Bool)

(assert (=> b!3674068 m!4183167))

(declare-fun m!4183169 () Bool)

(assert (=> b!3674104 m!4183169))

(declare-fun m!4183171 () Bool)

(assert (=> b!3674104 m!4183171))

(declare-fun m!4183173 () Bool)

(assert (=> b!3674064 m!4183173))

(assert (=> b!3674064 m!4183173))

(declare-fun m!4183175 () Bool)

(assert (=> b!3674064 m!4183175))

(declare-fun m!4183177 () Bool)

(assert (=> b!3674062 m!4183177))

(declare-fun m!4183179 () Bool)

(assert (=> b!3674057 m!4183179))

(declare-fun m!4183181 () Bool)

(assert (=> b!3674102 m!4183181))

(declare-fun m!4183183 () Bool)

(assert (=> b!3674102 m!4183183))

(declare-fun m!4183185 () Bool)

(assert (=> b!3674099 m!4183185))

(declare-fun m!4183187 () Bool)

(assert (=> b!3674099 m!4183187))

(declare-fun m!4183189 () Bool)

(assert (=> b!3674099 m!4183189))

(declare-fun m!4183191 () Bool)

(assert (=> b!3674099 m!4183191))

(assert (=> b!3674099 m!4183185))

(declare-fun m!4183193 () Bool)

(assert (=> b!3674099 m!4183193))

(declare-fun m!4183195 () Bool)

(assert (=> b!3674088 m!4183195))

(declare-fun m!4183197 () Bool)

(assert (=> b!3674088 m!4183197))

(declare-fun m!4183199 () Bool)

(assert (=> b!3674088 m!4183199))

(declare-fun m!4183201 () Bool)

(assert (=> b!3674075 m!4183201))

(declare-fun m!4183203 () Bool)

(assert (=> b!3674098 m!4183203))

(declare-fun m!4183205 () Bool)

(assert (=> b!3674098 m!4183205))

(declare-fun m!4183207 () Bool)

(assert (=> b!3674098 m!4183207))

(declare-fun m!4183209 () Bool)

(assert (=> b!3674098 m!4183209))

(assert (=> b!3674098 m!4183207))

(declare-fun m!4183211 () Bool)

(assert (=> b!3674098 m!4183211))

(declare-fun m!4183213 () Bool)

(assert (=> b!3674098 m!4183213))

(declare-fun m!4183215 () Bool)

(assert (=> b!3674098 m!4183215))

(declare-fun m!4183217 () Bool)

(assert (=> b!3674067 m!4183217))

(declare-fun m!4183219 () Bool)

(assert (=> b!3674070 m!4183219))

(declare-fun m!4183221 () Bool)

(assert (=> b!3674058 m!4183221))

(declare-fun m!4183223 () Bool)

(assert (=> b!3674058 m!4183223))

(declare-fun m!4183225 () Bool)

(assert (=> b!3674058 m!4183225))

(declare-fun m!4183227 () Bool)

(assert (=> bm!266040 m!4183227))

(declare-fun m!4183229 () Bool)

(assert (=> b!3674074 m!4183229))

(declare-fun m!4183231 () Bool)

(assert (=> start!344418 m!4183231))

(declare-fun m!4183233 () Bool)

(assert (=> b!3674069 m!4183233))

(declare-fun m!4183235 () Bool)

(assert (=> b!3674069 m!4183235))

(declare-fun m!4183237 () Bool)

(assert (=> b!3674069 m!4183237))

(declare-fun m!4183239 () Bool)

(assert (=> bm!266039 m!4183239))

(declare-fun m!4183241 () Bool)

(assert (=> b!3674071 m!4183241))

(declare-fun m!4183243 () Bool)

(assert (=> b!3674100 m!4183243))

(declare-fun m!4183245 () Bool)

(assert (=> bm!266041 m!4183245))

(declare-fun m!4183247 () Bool)

(assert (=> bm!266038 m!4183247))

(declare-fun m!4183249 () Bool)

(assert (=> b!3674093 m!4183249))

(declare-fun m!4183251 () Bool)

(assert (=> b!3674093 m!4183251))

(declare-fun m!4183253 () Bool)

(assert (=> b!3674083 m!4183253))

(declare-fun m!4183255 () Bool)

(assert (=> b!3674084 m!4183255))

(declare-fun m!4183257 () Bool)

(assert (=> b!3674063 m!4183257))

(declare-fun m!4183259 () Bool)

(assert (=> b!3674063 m!4183259))

(declare-fun m!4183261 () Bool)

(assert (=> b!3674063 m!4183261))

(declare-fun m!4183263 () Bool)

(assert (=> b!3674063 m!4183263))

(declare-fun m!4183265 () Bool)

(assert (=> b!3674063 m!4183265))

(declare-fun m!4183267 () Bool)

(assert (=> b!3674080 m!4183267))

(declare-fun m!4183269 () Bool)

(assert (=> b!3674080 m!4183269))

(declare-fun m!4183271 () Bool)

(assert (=> b!3674080 m!4183271))

(assert (=> b!3674080 m!4183267))

(declare-fun m!4183273 () Bool)

(assert (=> b!3674080 m!4183273))

(declare-fun m!4183275 () Bool)

(assert (=> b!3674080 m!4183275))

(declare-fun m!4183277 () Bool)

(assert (=> b!3674080 m!4183277))

(declare-fun m!4183279 () Bool)

(assert (=> b!3674101 m!4183279))

(declare-fun m!4183281 () Bool)

(assert (=> b!3674101 m!4183281))

(declare-fun m!4183283 () Bool)

(assert (=> b!3674072 m!4183283))

(assert (=> b!3674072 m!4183283))

(declare-fun m!4183285 () Bool)

(assert (=> b!3674072 m!4183285))

(assert (=> b!3674072 m!4183285))

(declare-fun m!4183287 () Bool)

(assert (=> b!3674072 m!4183287))

(declare-fun m!4183289 () Bool)

(assert (=> b!3674072 m!4183289))

(declare-fun m!4183291 () Bool)

(assert (=> b!3674090 m!4183291))

(declare-fun m!4183293 () Bool)

(assert (=> b!3674090 m!4183293))

(declare-fun m!4183295 () Bool)

(assert (=> b!3674090 m!4183295))

(declare-fun m!4183297 () Bool)

(assert (=> b!3674090 m!4183297))

(declare-fun m!4183299 () Bool)

(assert (=> b!3674090 m!4183299))

(declare-fun m!4183301 () Bool)

(assert (=> b!3674090 m!4183301))

(declare-fun m!4183303 () Bool)

(assert (=> b!3674090 m!4183303))

(assert (=> b!3674090 m!4183283))

(declare-fun m!4183305 () Bool)

(assert (=> b!3674090 m!4183305))

(declare-fun m!4183307 () Bool)

(assert (=> b!3674090 m!4183307))

(declare-fun m!4183309 () Bool)

(assert (=> b!3674090 m!4183309))

(declare-fun m!4183311 () Bool)

(assert (=> b!3674090 m!4183311))

(declare-fun m!4183313 () Bool)

(assert (=> b!3674090 m!4183313))

(declare-fun m!4183315 () Bool)

(assert (=> b!3674090 m!4183315))

(assert (=> b!3674090 m!4183291))

(declare-fun m!4183317 () Bool)

(assert (=> b!3674090 m!4183317))

(declare-fun m!4183319 () Bool)

(assert (=> b!3674081 m!4183319))

(declare-fun m!4183321 () Bool)

(assert (=> b!3674081 m!4183321))

(declare-fun m!4183323 () Bool)

(assert (=> b!3674081 m!4183323))

(declare-fun m!4183325 () Bool)

(assert (=> b!3674081 m!4183325))

(assert (=> bm!266043 m!4183227))

(declare-fun m!4183327 () Bool)

(assert (=> bm!266042 m!4183327))

(declare-fun m!4183329 () Bool)

(assert (=> b!3674056 m!4183329))

(declare-fun m!4183331 () Bool)

(assert (=> b!3674107 m!4183331))

(declare-fun m!4183333 () Bool)

(assert (=> b!3674107 m!4183333))

(declare-fun m!4183335 () Bool)

(assert (=> b!3674073 m!4183335))

(declare-fun m!4183337 () Bool)

(assert (=> b!3674092 m!4183337))

(declare-fun m!4183339 () Bool)

(assert (=> b!3674060 m!4183339))

(declare-fun m!4183341 () Bool)

(assert (=> b!3674096 m!4183341))

(declare-fun m!4183343 () Bool)

(assert (=> b!3674079 m!4183343))

(check-sat (not b!3674084) (not b!3674060) b_and!273893 (not bm!266039) (not b!3674075) (not b_next!97909) (not bm!266042) (not b!3674094) b_and!273885 (not b!3674090) b_and!273883 (not b!3674069) (not b!3674083) (not b!3674093) (not b!3674064) tp_is_empty!18261 (not b!3674101) (not b!3674080) (not b!3674057) (not b!3674107) (not b!3674071) (not b_next!97897) (not bm!266038) (not b!3674088) b_and!273891 (not b!3674099) b_and!273889 (not b_next!97901) (not b!3674098) (not b!3674072) (not bm!266041) (not b_next!97905) b_and!273895 (not bm!266040) (not b!3674096) (not start!344418) b_and!273897 (not b!3674102) (not b_next!97907) (not b!3674068) (not b!3674056) (not b_next!97899) (not b!3674105) (not b!3674070) (not b!3674073) (not b!3674100) (not b!3674079) (not b!3674081) (not b_next!97911) b_and!273887 (not b!3674104) (not b!3674074) (not b!3674062) (not b!3674067) (not b!3674063) (not b!3674092) (not b!3674058) (not b_next!97903) (not bm!266043))
(check-sat b_and!273883 (not b_next!97897) (not b_next!97901) b_and!273893 (not b_next!97909) (not b_next!97899) b_and!273885 (not b_next!97911) b_and!273887 (not b_next!97903) b_and!273891 b_and!273889 (not b_next!97905) b_and!273895 b_and!273897 (not b_next!97907))
