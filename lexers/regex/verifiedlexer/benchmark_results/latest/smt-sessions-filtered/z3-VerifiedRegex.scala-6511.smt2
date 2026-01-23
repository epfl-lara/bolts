; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!343026 () Bool)

(assert start!343026)

(declare-fun b!3663012 () Bool)

(declare-fun b_free!96689 () Bool)

(declare-fun b_next!97393 () Bool)

(assert (=> b!3663012 (= b_free!96689 (not b_next!97393))))

(declare-fun tp!1115529 () Bool)

(declare-fun b_and!272027 () Bool)

(assert (=> b!3663012 (= tp!1115529 b_and!272027)))

(declare-fun b_free!96691 () Bool)

(declare-fun b_next!97395 () Bool)

(assert (=> b!3663012 (= b_free!96691 (not b_next!97395))))

(declare-fun tp!1115541 () Bool)

(declare-fun b_and!272029 () Bool)

(assert (=> b!3663012 (= tp!1115541 b_and!272029)))

(declare-fun b!3663022 () Bool)

(declare-fun b_free!96693 () Bool)

(declare-fun b_next!97397 () Bool)

(assert (=> b!3663022 (= b_free!96693 (not b_next!97397))))

(declare-fun tp!1115533 () Bool)

(declare-fun b_and!272031 () Bool)

(assert (=> b!3663022 (= tp!1115533 b_and!272031)))

(declare-fun b_free!96695 () Bool)

(declare-fun b_next!97399 () Bool)

(assert (=> b!3663022 (= b_free!96695 (not b_next!97399))))

(declare-fun tp!1115535 () Bool)

(declare-fun b_and!272033 () Bool)

(assert (=> b!3663022 (= tp!1115535 b_and!272033)))

(declare-fun b!3662992 () Bool)

(declare-fun b_free!96697 () Bool)

(declare-fun b_next!97401 () Bool)

(assert (=> b!3662992 (= b_free!96697 (not b_next!97401))))

(declare-fun tp!1115540 () Bool)

(declare-fun b_and!272035 () Bool)

(assert (=> b!3662992 (= tp!1115540 b_and!272035)))

(declare-fun b_free!96699 () Bool)

(declare-fun b_next!97403 () Bool)

(assert (=> b!3662992 (= b_free!96699 (not b_next!97403))))

(declare-fun tp!1115530 () Bool)

(declare-fun b_and!272037 () Bool)

(assert (=> b!3662992 (= tp!1115530 b_and!272037)))

(declare-fun b!3662995 () Bool)

(declare-fun b_free!96701 () Bool)

(declare-fun b_next!97405 () Bool)

(assert (=> b!3662995 (= b_free!96701 (not b_next!97405))))

(declare-fun tp!1115539 () Bool)

(declare-fun b_and!272039 () Bool)

(assert (=> b!3662995 (= tp!1115539 b_and!272039)))

(declare-fun b_free!96703 () Bool)

(declare-fun b_next!97407 () Bool)

(assert (=> b!3662995 (= b_free!96703 (not b_next!97407))))

(declare-fun tp!1115536 () Bool)

(declare-fun b_and!272041 () Bool)

(assert (=> b!3662995 (= tp!1115536 b_and!272041)))

(declare-fun b!3662978 () Bool)

(declare-fun res!1487198 () Bool)

(declare-fun e!2268088 () Bool)

(assert (=> b!3662978 (=> (not res!1487198) (not e!2268088))))

(declare-datatypes ((List!38769 0))(
  ( (Nil!38645) (Cons!38645 (h!44065 (_ BitVec 16)) (t!298752 List!38769)) )
))
(declare-datatypes ((TokenValue!6032 0))(
  ( (FloatLiteralValue!12064 (text!42669 List!38769)) (TokenValueExt!6031 (__x!24281 Int)) (Broken!30160 (value!185791 List!38769)) (Object!6155) (End!6032) (Def!6032) (Underscore!6032) (Match!6032) (Else!6032) (Error!6032) (Case!6032) (If!6032) (Extends!6032) (Abstract!6032) (Class!6032) (Val!6032) (DelimiterValue!12064 (del!6092 List!38769)) (KeywordValue!6038 (value!185792 List!38769)) (CommentValue!12064 (value!185793 List!38769)) (WhitespaceValue!12064 (value!185794 List!38769)) (IndentationValue!6032 (value!185795 List!38769)) (String!43493) (Int32!6032) (Broken!30161 (value!185796 List!38769)) (Boolean!6033) (Unit!55996) (OperatorValue!6035 (op!6092 List!38769)) (IdentifierValue!12064 (value!185797 List!38769)) (IdentifierValue!12065 (value!185798 List!38769)) (WhitespaceValue!12065 (value!185799 List!38769)) (True!12064) (False!12064) (Broken!30162 (value!185800 List!38769)) (Broken!30163 (value!185801 List!38769)) (True!12065) (RightBrace!6032) (RightBracket!6032) (Colon!6032) (Null!6032) (Comma!6032) (LeftBracket!6032) (False!12065) (LeftBrace!6032) (ImaginaryLiteralValue!6032 (text!42670 List!38769)) (StringLiteralValue!18096 (value!185802 List!38769)) (EOFValue!6032 (value!185803 List!38769)) (IdentValue!6032 (value!185804 List!38769)) (DelimiterValue!12065 (value!185805 List!38769)) (DedentValue!6032 (value!185806 List!38769)) (NewLineValue!6032 (value!185807 List!38769)) (IntegerValue!18096 (value!185808 (_ BitVec 32)) (text!42671 List!38769)) (IntegerValue!18097 (value!185809 Int) (text!42672 List!38769)) (Times!6032) (Or!6032) (Equal!6032) (Minus!6032) (Broken!30164 (value!185810 List!38769)) (And!6032) (Div!6032) (LessEqual!6032) (Mod!6032) (Concat!16593) (Not!6032) (Plus!6032) (SpaceValue!6032 (value!185811 List!38769)) (IntegerValue!18098 (value!185812 Int) (text!42673 List!38769)) (StringLiteralValue!18097 (text!42674 List!38769)) (FloatLiteralValue!12065 (text!42675 List!38769)) (BytesLiteralValue!6032 (value!185813 List!38769)) (CommentValue!12065 (value!185814 List!38769)) (StringLiteralValue!18098 (value!185815 List!38769)) (ErrorTokenValue!6032 (msg!6093 List!38769)) )
))
(declare-datatypes ((C!21308 0))(
  ( (C!21309 (val!12702 Int)) )
))
(declare-datatypes ((Regex!10561 0))(
  ( (ElementMatch!10561 (c!633134 C!21308)) (Concat!16594 (regOne!21634 Regex!10561) (regTwo!21634 Regex!10561)) (EmptyExpr!10561) (Star!10561 (reg!10890 Regex!10561)) (EmptyLang!10561) (Union!10561 (regOne!21635 Regex!10561) (regTwo!21635 Regex!10561)) )
))
(declare-datatypes ((String!43494 0))(
  ( (String!43495 (value!185816 String)) )
))
(declare-datatypes ((List!38770 0))(
  ( (Nil!38646) (Cons!38646 (h!44066 C!21308) (t!298753 List!38770)) )
))
(declare-datatypes ((IArray!23643 0))(
  ( (IArray!23644 (innerList!11879 List!38770)) )
))
(declare-datatypes ((Conc!11819 0))(
  ( (Node!11819 (left!30162 Conc!11819) (right!30492 Conc!11819) (csize!23868 Int) (cheight!12030 Int)) (Leaf!18331 (xs!15021 IArray!23643) (csize!23869 Int)) (Empty!11819) )
))
(declare-datatypes ((BalanceConc!23252 0))(
  ( (BalanceConc!23253 (c!633135 Conc!11819)) )
))
(declare-datatypes ((TokenValueInjection!11492 0))(
  ( (TokenValueInjection!11493 (toValue!8094 Int) (toChars!7953 Int)) )
))
(declare-datatypes ((Rule!11404 0))(
  ( (Rule!11405 (regex!5802 Regex!10561) (tag!6584 String!43494) (isSeparator!5802 Bool) (transformation!5802 TokenValueInjection!11492)) )
))
(declare-datatypes ((Token!10970 0))(
  ( (Token!10971 (value!185817 TokenValue!6032) (rule!8618 Rule!11404) (size!29527 Int) (originalCharacters!6516 List!38770)) )
))
(declare-fun token!511 () Token!10970)

(declare-fun rule!403 () Rule!11404)

(assert (=> b!3662978 (= res!1487198 (= (rule!8618 token!511) rule!403))))

(declare-fun b!3662979 () Bool)

(declare-datatypes ((Unit!55997 0))(
  ( (Unit!55998) )
))
(declare-fun e!2268103 () Unit!55997)

(declare-fun Unit!55999 () Unit!55997)

(assert (=> b!3662979 (= e!2268103 Unit!55999)))

(declare-fun b!3662980 () Bool)

(declare-fun res!1487206 () Bool)

(declare-fun e!2268106 () Bool)

(assert (=> b!3662980 (=> res!1487206 e!2268106)))

(declare-datatypes ((tuple2!38512 0))(
  ( (tuple2!38513 (_1!22390 Token!10970) (_2!22390 List!38770)) )
))
(declare-fun lt!1274714 () tuple2!38512)

(declare-fun lt!1274729 () List!38770)

(declare-fun matchR!5130 (Regex!10561 List!38770) Bool)

(assert (=> b!3662980 (= res!1487206 (not (matchR!5130 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) lt!1274729)))))

(declare-fun b!3662981 () Bool)

(declare-fun e!2268104 () Bool)

(declare-fun e!2268100 () Bool)

(assert (=> b!3662981 (= e!2268104 e!2268100)))

(declare-fun res!1487208 () Bool)

(assert (=> b!3662981 (=> res!1487208 e!2268100)))

(declare-datatypes ((Option!8232 0))(
  ( (None!8231) (Some!8231 (v!38127 tuple2!38512)) )
))
(declare-fun lt!1274740 () Option!8232)

(declare-fun lt!1274723 () List!38770)

(assert (=> b!3662981 (= res!1487208 (or (not (= lt!1274723 (_2!22390 lt!1274714))) (not (= lt!1274740 (Some!8231 (tuple2!38513 (_1!22390 lt!1274714) lt!1274723))))))))

(assert (=> b!3662981 (= (_2!22390 lt!1274714) lt!1274723)))

(declare-fun lt!1274715 () Unit!55997)

(declare-fun lt!1274713 () List!38770)

(declare-fun lemmaSamePrefixThenSameSuffix!1492 (List!38770 List!38770 List!38770 List!38770 List!38770) Unit!55997)

(assert (=> b!3662981 (= lt!1274715 (lemmaSamePrefixThenSameSuffix!1492 lt!1274729 (_2!22390 lt!1274714) lt!1274729 lt!1274723 lt!1274713))))

(declare-fun getSuffix!1718 (List!38770 List!38770) List!38770)

(assert (=> b!3662981 (= lt!1274723 (getSuffix!1718 lt!1274713 lt!1274729))))

(declare-fun lt!1274719 () TokenValue!6032)

(declare-fun lt!1274737 () Int)

(assert (=> b!3662981 (= lt!1274740 (Some!8231 (tuple2!38513 (Token!10971 lt!1274719 (rule!8618 (_1!22390 lt!1274714)) lt!1274737 lt!1274729) (_2!22390 lt!1274714))))))

(declare-datatypes ((LexerInterface!5391 0))(
  ( (LexerInterfaceExt!5388 (__x!24282 Int)) (Lexer!5389) )
))
(declare-fun thiss!23823 () LexerInterface!5391)

(declare-fun maxPrefixOneRule!2063 (LexerInterface!5391 Rule!11404 List!38770) Option!8232)

(assert (=> b!3662981 (= lt!1274740 (maxPrefixOneRule!2063 thiss!23823 (rule!8618 (_1!22390 lt!1274714)) lt!1274713))))

(declare-fun size!29528 (List!38770) Int)

(assert (=> b!3662981 (= lt!1274737 (size!29528 lt!1274729))))

(declare-fun apply!9304 (TokenValueInjection!11492 BalanceConc!23252) TokenValue!6032)

(declare-fun seqFromList!4351 (List!38770) BalanceConc!23252)

(assert (=> b!3662981 (= lt!1274719 (apply!9304 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))) (seqFromList!4351 lt!1274729)))))

(declare-datatypes ((List!38771 0))(
  ( (Nil!38647) (Cons!38647 (h!44067 Rule!11404) (t!298754 List!38771)) )
))
(declare-fun rules!3307 () List!38771)

(declare-fun lt!1274757 () Unit!55997)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1119 (LexerInterface!5391 List!38771 List!38770 List!38770 List!38770 Rule!11404) Unit!55997)

(assert (=> b!3662981 (= lt!1274757 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1119 thiss!23823 rules!3307 lt!1274729 lt!1274713 (_2!22390 lt!1274714) (rule!8618 (_1!22390 lt!1274714))))))

(declare-fun b!3662982 () Bool)

(declare-fun e!2268114 () Bool)

(declare-fun e!2268094 () Bool)

(declare-fun tp!1115534 () Bool)

(assert (=> b!3662982 (= e!2268114 (and e!2268094 tp!1115534))))

(declare-fun b!3662983 () Bool)

(declare-fun e!2268112 () Bool)

(declare-fun e!2268093 () Bool)

(assert (=> b!3662983 (= e!2268112 e!2268093)))

(declare-fun res!1487207 () Bool)

(assert (=> b!3662983 (=> (not res!1487207) (not e!2268093))))

(declare-fun lt!1274749 () Option!8232)

(declare-fun isDefined!6464 (Option!8232) Bool)

(assert (=> b!3662983 (= res!1487207 (isDefined!6464 lt!1274749))))

(declare-fun lt!1274731 () List!38770)

(declare-fun maxPrefix!2925 (LexerInterface!5391 List!38771 List!38770) Option!8232)

(assert (=> b!3662983 (= lt!1274749 (maxPrefix!2925 thiss!23823 rules!3307 lt!1274731))))

(declare-fun lt!1274733 () BalanceConc!23252)

(declare-fun list!14340 (BalanceConc!23252) List!38770)

(assert (=> b!3662983 (= lt!1274731 (list!14340 lt!1274733))))

(declare-fun charsOf!3816 (Token!10970) BalanceConc!23252)

(assert (=> b!3662983 (= lt!1274733 (charsOf!3816 token!511))))

(declare-fun bm!264978 () Bool)

(declare-fun call!264984 () Bool)

(declare-fun call!264986 () List!38770)

(declare-fun lt!1274726 () C!21308)

(declare-fun contains!7669 (List!38770 C!21308) Bool)

(assert (=> bm!264978 (= call!264984 (contains!7669 call!264986 lt!1274726))))

(declare-fun b!3662985 () Bool)

(declare-fun e!2268099 () Bool)

(assert (=> b!3662985 (= e!2268099 e!2268106)))

(declare-fun res!1487222 () Bool)

(assert (=> b!3662985 (=> res!1487222 e!2268106)))

(declare-fun isPrefix!3165 (List!38770 List!38770) Bool)

(assert (=> b!3662985 (= res!1487222 (not (isPrefix!3165 lt!1274729 lt!1274713)))))

(declare-fun ++!9618 (List!38770 List!38770) List!38770)

(assert (=> b!3662985 (isPrefix!3165 lt!1274729 (++!9618 lt!1274729 (_2!22390 lt!1274714)))))

(declare-fun lt!1274725 () Unit!55997)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2084 (List!38770 List!38770) Unit!55997)

(assert (=> b!3662985 (= lt!1274725 (lemmaConcatTwoListThenFirstIsPrefix!2084 lt!1274729 (_2!22390 lt!1274714)))))

(declare-fun lt!1274743 () BalanceConc!23252)

(assert (=> b!3662985 (= lt!1274729 (list!14340 lt!1274743))))

(assert (=> b!3662985 (= lt!1274743 (charsOf!3816 (_1!22390 lt!1274714)))))

(declare-fun e!2268115 () Bool)

(assert (=> b!3662985 e!2268115))

(declare-fun res!1487214 () Bool)

(assert (=> b!3662985 (=> (not res!1487214) (not e!2268115))))

(declare-datatypes ((Option!8233 0))(
  ( (None!8232) (Some!8232 (v!38128 Rule!11404)) )
))
(declare-fun lt!1274712 () Option!8233)

(declare-fun isDefined!6465 (Option!8233) Bool)

(assert (=> b!3662985 (= res!1487214 (isDefined!6465 lt!1274712))))

(declare-fun getRuleFromTag!1406 (LexerInterface!5391 List!38771 String!43494) Option!8233)

(assert (=> b!3662985 (= lt!1274712 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun lt!1274711 () Unit!55997)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1406 (LexerInterface!5391 List!38771 List!38770 Token!10970) Unit!55997)

(assert (=> b!3662985 (= lt!1274711 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1406 thiss!23823 rules!3307 lt!1274713 (_1!22390 lt!1274714)))))

(declare-fun lt!1274752 () Option!8232)

(declare-fun get!12743 (Option!8232) tuple2!38512)

(assert (=> b!3662985 (= lt!1274714 (get!12743 lt!1274752))))

(declare-fun lt!1274710 () Unit!55997)

(declare-fun suffix!1395 () List!38770)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1069 (LexerInterface!5391 List!38771 List!38770 List!38770) Unit!55997)

(assert (=> b!3662985 (= lt!1274710 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1069 thiss!23823 rules!3307 lt!1274731 suffix!1395))))

(assert (=> b!3662985 (= lt!1274752 (maxPrefix!2925 thiss!23823 rules!3307 lt!1274713))))

(assert (=> b!3662985 (isPrefix!3165 lt!1274731 lt!1274713)))

(declare-fun lt!1274718 () Unit!55997)

(assert (=> b!3662985 (= lt!1274718 (lemmaConcatTwoListThenFirstIsPrefix!2084 lt!1274731 suffix!1395))))

(assert (=> b!3662985 (= lt!1274713 (++!9618 lt!1274731 suffix!1395))))

(declare-fun b!3662986 () Bool)

(declare-fun res!1487204 () Bool)

(assert (=> b!3662986 (=> (not res!1487204) (not e!2268112))))

(declare-fun rulesInvariant!4788 (LexerInterface!5391 List!38771) Bool)

(assert (=> b!3662986 (= res!1487204 (rulesInvariant!4788 thiss!23823 rules!3307))))

(declare-fun b!3662987 () Bool)

(assert (=> b!3662987 false))

(declare-fun lt!1274736 () Unit!55997)

(declare-fun call!264988 () Unit!55997)

(assert (=> b!3662987 (= lt!1274736 call!264988)))

(assert (=> b!3662987 (not call!264984)))

(declare-fun anOtherTypeRule!33 () Rule!11404)

(declare-fun lt!1274724 () Unit!55997)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!448 (LexerInterface!5391 List!38771 List!38771 Rule!11404 Rule!11404 C!21308) Unit!55997)

(assert (=> b!3662987 (= lt!1274724 (lemmaNonSepRuleNotContainsCharContainedInASepRule!448 thiss!23823 rules!3307 rules!3307 (rule!8618 (_1!22390 lt!1274714)) anOtherTypeRule!33 lt!1274726))))

(declare-fun e!2268096 () Unit!55997)

(declare-fun Unit!56000 () Unit!55997)

(assert (=> b!3662987 (= e!2268096 Unit!56000)))

(declare-fun b!3662988 () Bool)

(declare-fun e!2268089 () Unit!55997)

(declare-fun Unit!56001 () Unit!55997)

(assert (=> b!3662988 (= e!2268089 Unit!56001)))

(declare-fun bm!264979 () Bool)

(declare-fun usedCharacters!1014 (Regex!10561) List!38770)

(assert (=> bm!264979 (= call!264986 (usedCharacters!1014 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun b!3662989 () Bool)

(declare-fun e!2268113 () Bool)

(declare-fun lt!1274756 () Rule!11404)

(assert (=> b!3662989 (= e!2268113 (= (rule!8618 (_1!22390 lt!1274714)) lt!1274756))))

(declare-fun b!3662990 () Bool)

(declare-fun Unit!56002 () Unit!55997)

(assert (=> b!3662990 (= e!2268089 Unit!56002)))

(declare-fun lt!1274732 () C!21308)

(declare-fun lt!1274734 () Unit!55997)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!750 (Regex!10561 List!38770 C!21308) Unit!55997)

(assert (=> b!3662990 (= lt!1274734 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!750 (regex!5802 rule!403) lt!1274731 lt!1274732))))

(assert (=> b!3662990 false))

(declare-fun b!3662991 () Bool)

(declare-fun res!1487216 () Bool)

(declare-fun e!2268097 () Bool)

(assert (=> b!3662991 (=> res!1487216 e!2268097)))

(declare-fun contains!7670 (List!38771 Rule!11404) Bool)

(assert (=> b!3662991 (= res!1487216 (not (contains!7670 rules!3307 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun e!2268084 () Bool)

(assert (=> b!3662992 (= e!2268084 (and tp!1115540 tp!1115530))))

(declare-fun b!3662993 () Bool)

(declare-fun e!2268107 () Bool)

(assert (=> b!3662993 (= e!2268088 (not e!2268107))))

(declare-fun res!1487202 () Bool)

(assert (=> b!3662993 (=> res!1487202 e!2268107)))

(assert (=> b!3662993 (= res!1487202 (not (matchR!5130 (regex!5802 rule!403) lt!1274731)))))

(declare-fun ruleValid!2066 (LexerInterface!5391 Rule!11404) Bool)

(assert (=> b!3662993 (ruleValid!2066 thiss!23823 rule!403)))

(declare-fun lt!1274721 () Unit!55997)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1220 (LexerInterface!5391 Rule!11404 List!38771) Unit!55997)

(assert (=> b!3662993 (= lt!1274721 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1220 thiss!23823 rule!403 rules!3307))))

(declare-fun e!2268118 () Bool)

(declare-fun b!3662994 () Bool)

(declare-fun e!2268105 () Bool)

(declare-fun tp!1115538 () Bool)

(declare-fun inv!52112 (String!43494) Bool)

(declare-fun inv!52115 (TokenValueInjection!11492) Bool)

(assert (=> b!3662994 (= e!2268118 (and tp!1115538 (inv!52112 (tag!6584 anOtherTypeRule!33)) (inv!52115 (transformation!5802 anOtherTypeRule!33)) e!2268105))))

(declare-fun e!2268086 () Bool)

(assert (=> b!3662995 (= e!2268086 (and tp!1115539 tp!1115536))))

(declare-fun b!3662996 () Bool)

(declare-fun res!1487199 () Bool)

(assert (=> b!3662996 (=> res!1487199 e!2268099)))

(declare-fun sepAndNonSepRulesDisjointChars!1970 (List!38771 List!38771) Bool)

(assert (=> b!3662996 (= res!1487199 (not (sepAndNonSepRulesDisjointChars!1970 rules!3307 rules!3307)))))

(declare-fun b!3662997 () Bool)

(declare-fun res!1487209 () Bool)

(assert (=> b!3662997 (=> res!1487209 e!2268097)))

(declare-fun isEmpty!22924 (List!38770) Bool)

(assert (=> b!3662997 (= res!1487209 (isEmpty!22924 lt!1274731))))

(declare-fun bm!264980 () Bool)

(declare-fun call!264985 () Unit!55997)

(assert (=> bm!264980 (= call!264985 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!750 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) lt!1274729 lt!1274732))))

(declare-fun bm!264981 () Bool)

(declare-fun call!264987 () List!38770)

(assert (=> bm!264981 (= call!264987 (usedCharacters!1014 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun b!3662998 () Bool)

(declare-fun res!1487197 () Bool)

(assert (=> b!3662998 (=> res!1487197 e!2268107)))

(assert (=> b!3662998 (= res!1487197 (isEmpty!22924 suffix!1395))))

(declare-fun b!3662999 () Bool)

(declare-fun res!1487218 () Bool)

(declare-fun e!2268109 () Bool)

(assert (=> b!3662999 (=> res!1487218 e!2268109)))

(declare-fun getIndex!470 (List!38771 Rule!11404) Int)

(assert (=> b!3662999 (= res!1487218 (>= (getIndex!470 rules!3307 (rule!8618 (_1!22390 lt!1274714))) (getIndex!470 rules!3307 rule!403)))))

(declare-fun b!3663000 () Bool)

(declare-fun e!2268085 () Unit!55997)

(declare-fun Unit!56003 () Unit!55997)

(assert (=> b!3663000 (= e!2268085 Unit!56003)))

(declare-fun b!3663001 () Bool)

(declare-fun res!1487203 () Bool)

(assert (=> b!3663001 (=> (not res!1487203) (not e!2268112))))

(assert (=> b!3663001 (= res!1487203 (contains!7670 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3663002 () Bool)

(declare-fun e!2268108 () Unit!55997)

(assert (=> b!3663002 (= e!2268108 e!2268103)))

(declare-fun c!633133 () Bool)

(assert (=> b!3663002 (= c!633133 (not (isSeparator!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun b!3663003 () Bool)

(assert (=> b!3663003 false))

(declare-fun lt!1274758 () Unit!55997)

(assert (=> b!3663003 (= lt!1274758 call!264985)))

(declare-fun call!264983 () Bool)

(assert (=> b!3663003 (not call!264983)))

(declare-fun lt!1274716 () Unit!55997)

(assert (=> b!3663003 (= lt!1274716 (lemmaNonSepRuleNotContainsCharContainedInASepRule!448 thiss!23823 rules!3307 rules!3307 (rule!8618 (_1!22390 lt!1274714)) rule!403 lt!1274732))))

(declare-fun Unit!56004 () Unit!55997)

(assert (=> b!3663003 (= e!2268103 Unit!56004)))

(declare-fun b!3663004 () Bool)

(assert (=> b!3663004 (= e!2268093 e!2268088)))

(declare-fun res!1487211 () Bool)

(assert (=> b!3663004 (=> (not res!1487211) (not e!2268088))))

(declare-fun lt!1274735 () tuple2!38512)

(assert (=> b!3663004 (= res!1487211 (= (_1!22390 lt!1274735) token!511))))

(assert (=> b!3663004 (= lt!1274735 (get!12743 lt!1274749))))

(declare-fun tp!1115531 () Bool)

(declare-fun b!3663005 () Bool)

(assert (=> b!3663005 (= e!2268094 (and tp!1115531 (inv!52112 (tag!6584 (h!44067 rules!3307))) (inv!52115 (transformation!5802 (h!44067 rules!3307))) e!2268086))))

(declare-fun b!3663006 () Bool)

(assert (=> b!3663006 (= e!2268107 e!2268099)))

(declare-fun res!1487220 () Bool)

(assert (=> b!3663006 (=> res!1487220 e!2268099)))

(declare-fun lt!1274739 () List!38770)

(assert (=> b!3663006 (= res!1487220 (contains!7669 lt!1274739 lt!1274726))))

(declare-fun head!7834 (List!38770) C!21308)

(assert (=> b!3663006 (= lt!1274726 (head!7834 suffix!1395))))

(assert (=> b!3663006 (= lt!1274739 (usedCharacters!1014 (regex!5802 rule!403)))))

(declare-fun b!3663007 () Bool)

(declare-fun Unit!56005 () Unit!55997)

(assert (=> b!3663007 (= e!2268085 Unit!56005)))

(declare-fun lt!1274728 () Unit!55997)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!344 (LexerInterface!5391 List!38771 Rule!11404 List!38770 List!38770 List!38770 Rule!11404) Unit!55997)

(assert (=> b!3663007 (= lt!1274728 (lemmaMaxPrefixOutputsMaxPrefix!344 thiss!23823 rules!3307 (rule!8618 (_1!22390 lt!1274714)) lt!1274729 lt!1274713 lt!1274731 rule!403))))

(assert (=> b!3663007 false))

(declare-fun e!2268101 () Bool)

(declare-fun e!2268095 () Bool)

(declare-fun tp!1115528 () Bool)

(declare-fun b!3663008 () Bool)

(declare-fun inv!21 (TokenValue!6032) Bool)

(assert (=> b!3663008 (= e!2268095 (and (inv!21 (value!185817 token!511)) e!2268101 tp!1115528))))

(declare-fun b!3663009 () Bool)

(declare-fun e!2268116 () Unit!55997)

(assert (=> b!3663009 (= e!2268116 e!2268096)))

(declare-fun lt!1274742 () Unit!55997)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!110 (List!38770 List!38770 List!38770 List!38770) Unit!55997)

(assert (=> b!3663009 (= lt!1274742 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!110 lt!1274731 suffix!1395 lt!1274729 lt!1274713))))

(assert (=> b!3663009 (contains!7669 lt!1274729 lt!1274726)))

(declare-fun c!633128 () Bool)

(assert (=> b!3663009 (= c!633128 (isSeparator!5802 rule!403))))

(declare-fun lt!1274738 () List!38770)

(declare-fun b!3663010 () Bool)

(declare-fun lt!1274745 () BalanceConc!23252)

(assert (=> b!3663010 (= e!2268097 (= lt!1274749 (Some!8231 (tuple2!38513 (Token!10971 (apply!9304 (transformation!5802 rule!403) lt!1274745) rule!403 (size!29528 lt!1274731) lt!1274731) lt!1274738))))))

(declare-fun lt!1274730 () Unit!55997)

(declare-fun lemmaSemiInverse!1551 (TokenValueInjection!11492 BalanceConc!23252) Unit!55997)

(assert (=> b!3663010 (= lt!1274730 (lemmaSemiInverse!1551 (transformation!5802 rule!403) lt!1274745))))

(assert (=> b!3663010 (= lt!1274745 (seqFromList!4351 lt!1274731))))

(declare-fun b!3663011 () Bool)

(declare-fun res!1487205 () Bool)

(assert (=> b!3663011 (=> (not res!1487205) (not e!2268112))))

(assert (=> b!3663011 (= res!1487205 (not (= (isSeparator!5802 anOtherTypeRule!33) (isSeparator!5802 rule!403))))))

(assert (=> b!3663012 (= e!2268105 (and tp!1115529 tp!1115541))))

(declare-fun b!3662984 () Bool)

(declare-fun e!2268087 () Unit!55997)

(declare-fun Unit!56006 () Unit!55997)

(assert (=> b!3662984 (= e!2268087 Unit!56006)))

(declare-fun res!1487200 () Bool)

(assert (=> start!343026 (=> (not res!1487200) (not e!2268112))))

(get-info :version)

(assert (=> start!343026 (= res!1487200 ((_ is Lexer!5389) thiss!23823))))

(assert (=> start!343026 e!2268112))

(assert (=> start!343026 e!2268114))

(declare-fun e!2268098 () Bool)

(assert (=> start!343026 e!2268098))

(assert (=> start!343026 true))

(declare-fun inv!52116 (Token!10970) Bool)

(assert (=> start!343026 (and (inv!52116 token!511) e!2268095)))

(declare-fun e!2268110 () Bool)

(assert (=> start!343026 e!2268110))

(assert (=> start!343026 e!2268118))

(declare-fun b!3663013 () Bool)

(assert (=> b!3663013 false))

(declare-fun lt!1274746 () Unit!55997)

(assert (=> b!3663013 (= lt!1274746 call!264988)))

(assert (=> b!3663013 (not call!264984)))

(declare-fun lt!1274727 () Unit!55997)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!330 (LexerInterface!5391 List!38771 List!38771 Rule!11404 Rule!11404 C!21308) Unit!55997)

(assert (=> b!3663013 (= lt!1274727 (lemmaSepRuleNotContainsCharContainedInANonSepRule!330 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8618 (_1!22390 lt!1274714)) lt!1274726))))

(declare-fun Unit!56007 () Unit!55997)

(assert (=> b!3663013 (= e!2268096 Unit!56007)))

(declare-fun tp!1115532 () Bool)

(declare-fun b!3663014 () Bool)

(assert (=> b!3663014 (= e!2268101 (and tp!1115532 (inv!52112 (tag!6584 (rule!8618 token!511))) (inv!52115 (transformation!5802 (rule!8618 token!511))) e!2268084))))

(declare-fun b!3663015 () Bool)

(assert (=> b!3663015 (= e!2268108 e!2268087)))

(declare-fun c!633131 () Bool)

(assert (=> b!3663015 (= c!633131 (isSeparator!5802 (rule!8618 (_1!22390 lt!1274714))))))

(declare-fun b!3663016 () Bool)

(declare-fun Unit!56008 () Unit!55997)

(assert (=> b!3663016 (= e!2268116 Unit!56008)))

(declare-fun b!3663017 () Bool)

(declare-fun res!1487213 () Bool)

(assert (=> b!3663017 (=> res!1487213 e!2268099)))

(assert (=> b!3663017 (= res!1487213 (not (contains!7669 (usedCharacters!1014 (regex!5802 anOtherTypeRule!33)) lt!1274726)))))

(declare-fun b!3663018 () Bool)

(declare-fun res!1487201 () Bool)

(assert (=> b!3663018 (=> (not res!1487201) (not e!2268112))))

(assert (=> b!3663018 (= res!1487201 (contains!7670 rules!3307 rule!403))))

(declare-fun b!3663019 () Bool)

(declare-fun res!1487219 () Bool)

(assert (=> b!3663019 (=> (not res!1487219) (not e!2268088))))

(assert (=> b!3663019 (= res!1487219 (isEmpty!22924 (_2!22390 lt!1274735)))))

(declare-fun b!3663020 () Bool)

(assert (=> b!3663020 (= e!2268109 e!2268097)))

(declare-fun res!1487217 () Bool)

(assert (=> b!3663020 (=> res!1487217 e!2268097)))

(assert (=> b!3663020 (= res!1487217 (not (isPrefix!3165 lt!1274731 lt!1274731)))))

(assert (=> b!3663020 (isEmpty!22924 lt!1274738)))

(assert (=> b!3663020 (= lt!1274738 (getSuffix!1718 lt!1274731 lt!1274731))))

(declare-fun lt!1274708 () Unit!55997)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!182 (List!38770) Unit!55997)

(assert (=> b!3663020 (= lt!1274708 (lemmaGetSuffixOnListWithItSelfIsEmpty!182 lt!1274731))))

(declare-fun b!3663021 () Bool)

(assert (=> b!3663021 (= e!2268115 e!2268113)))

(declare-fun res!1487221 () Bool)

(assert (=> b!3663021 (=> (not res!1487221) (not e!2268113))))

(assert (=> b!3663021 (= res!1487221 (matchR!5130 (regex!5802 lt!1274756) (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))))))

(declare-fun get!12744 (Option!8233) Rule!11404)

(assert (=> b!3663021 (= lt!1274756 (get!12744 lt!1274712))))

(declare-fun e!2268092 () Bool)

(assert (=> b!3663022 (= e!2268092 (and tp!1115533 tp!1115535))))

(declare-fun tp!1115537 () Bool)

(declare-fun b!3663023 () Bool)

(assert (=> b!3663023 (= e!2268110 (and tp!1115537 (inv!52112 (tag!6584 rule!403)) (inv!52115 (transformation!5802 rule!403)) e!2268092))))

(declare-fun b!3663024 () Bool)

(assert (=> b!3663024 false))

(declare-fun lt!1274754 () Unit!55997)

(assert (=> b!3663024 (= lt!1274754 call!264985)))

(assert (=> b!3663024 (not call!264983)))

(declare-fun lt!1274720 () Unit!55997)

(assert (=> b!3663024 (= lt!1274720 (lemmaSepRuleNotContainsCharContainedInANonSepRule!330 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8618 (_1!22390 lt!1274714)) lt!1274732))))

(declare-fun Unit!56009 () Unit!55997)

(assert (=> b!3663024 (= e!2268087 Unit!56009)))

(declare-fun b!3663025 () Bool)

(assert (=> b!3663025 (= e!2268106 e!2268104)))

(declare-fun res!1487212 () Bool)

(assert (=> b!3663025 (=> res!1487212 e!2268104)))

(declare-fun lt!1274751 () Int)

(declare-fun lt!1274753 () TokenValue!6032)

(assert (=> b!3663025 (= res!1487212 (not (= lt!1274752 (Some!8231 (tuple2!38513 (Token!10971 lt!1274753 (rule!8618 (_1!22390 lt!1274714)) lt!1274751 lt!1274729) (_2!22390 lt!1274714))))))))

(declare-fun size!29529 (BalanceConc!23252) Int)

(assert (=> b!3663025 (= lt!1274751 (size!29529 lt!1274743))))

(assert (=> b!3663025 (= lt!1274753 (apply!9304 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))) lt!1274743))))

(declare-fun lt!1274747 () Unit!55997)

(declare-fun lemmaCharactersSize!847 (Token!10970) Unit!55997)

(assert (=> b!3663025 (= lt!1274747 (lemmaCharactersSize!847 (_1!22390 lt!1274714)))))

(declare-fun lt!1274748 () Unit!55997)

(declare-fun lemmaEqSameImage!985 (TokenValueInjection!11492 BalanceConc!23252 BalanceConc!23252) Unit!55997)

(assert (=> b!3663025 (= lt!1274748 (lemmaEqSameImage!985 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))) lt!1274743 (seqFromList!4351 (originalCharacters!6516 (_1!22390 lt!1274714)))))))

(declare-fun lt!1274744 () Unit!55997)

(assert (=> b!3663025 (= lt!1274744 (lemmaSemiInverse!1551 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))) lt!1274743))))

(declare-fun b!3663026 () Bool)

(assert (=> b!3663026 (= e!2268100 e!2268109)))

(declare-fun res!1487210 () Bool)

(assert (=> b!3663026 (=> res!1487210 e!2268109)))

(assert (=> b!3663026 (= res!1487210 (= (rule!8618 (_1!22390 lt!1274714)) (rule!8618 token!511)))))

(assert (=> b!3663026 (= lt!1274729 lt!1274731)))

(declare-fun lt!1274722 () Unit!55997)

(declare-fun lemmaIsPrefixSameLengthThenSameList!627 (List!38770 List!38770 List!38770) Unit!55997)

(assert (=> b!3663026 (= lt!1274722 (lemmaIsPrefixSameLengthThenSameList!627 lt!1274729 lt!1274731 lt!1274713))))

(declare-fun lt!1274717 () Unit!55997)

(assert (=> b!3663026 (= lt!1274717 e!2268085)))

(declare-fun c!633130 () Bool)

(declare-fun lt!1274709 () Int)

(assert (=> b!3663026 (= c!633130 (< lt!1274751 lt!1274709))))

(declare-fun lt!1274755 () Unit!55997)

(assert (=> b!3663026 (= lt!1274755 e!2268116)))

(declare-fun c!633129 () Bool)

(assert (=> b!3663026 (= c!633129 (> lt!1274751 lt!1274709))))

(assert (=> b!3663026 (= lt!1274709 (size!29529 lt!1274733))))

(declare-fun lt!1274750 () Unit!55997)

(assert (=> b!3663026 (= lt!1274750 e!2268108)))

(declare-fun c!633127 () Bool)

(assert (=> b!3663026 (= c!633127 (isSeparator!5802 rule!403))))

(declare-fun lt!1274741 () Unit!55997)

(assert (=> b!3663026 (= lt!1274741 e!2268089)))

(declare-fun c!633132 () Bool)

(assert (=> b!3663026 (= c!633132 (not (contains!7669 lt!1274739 lt!1274732)))))

(assert (=> b!3663026 (= lt!1274732 (head!7834 lt!1274729))))

(declare-fun b!3663027 () Bool)

(declare-fun res!1487215 () Bool)

(assert (=> b!3663027 (=> (not res!1487215) (not e!2268112))))

(declare-fun isEmpty!22925 (List!38771) Bool)

(assert (=> b!3663027 (= res!1487215 (not (isEmpty!22925 rules!3307)))))

(declare-fun b!3663028 () Bool)

(declare-fun tp_is_empty!18205 () Bool)

(declare-fun tp!1115542 () Bool)

(assert (=> b!3663028 (= e!2268098 (and tp_is_empty!18205 tp!1115542))))

(declare-fun bm!264982 () Bool)

(assert (=> bm!264982 (= call!264983 (contains!7669 call!264987 lt!1274732))))

(declare-fun bm!264983 () Bool)

(assert (=> bm!264983 (= call!264988 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!750 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) lt!1274729 lt!1274726))))

(assert (= (and start!343026 res!1487200) b!3663027))

(assert (= (and b!3663027 res!1487215) b!3662986))

(assert (= (and b!3662986 res!1487204) b!3663018))

(assert (= (and b!3663018 res!1487201) b!3663001))

(assert (= (and b!3663001 res!1487203) b!3663011))

(assert (= (and b!3663011 res!1487205) b!3662983))

(assert (= (and b!3662983 res!1487207) b!3663004))

(assert (= (and b!3663004 res!1487211) b!3663019))

(assert (= (and b!3663019 res!1487219) b!3662978))

(assert (= (and b!3662978 res!1487198) b!3662993))

(assert (= (and b!3662993 (not res!1487202)) b!3662998))

(assert (= (and b!3662998 (not res!1487197)) b!3663006))

(assert (= (and b!3663006 (not res!1487220)) b!3663017))

(assert (= (and b!3663017 (not res!1487213)) b!3662996))

(assert (= (and b!3662996 (not res!1487199)) b!3662985))

(assert (= (and b!3662985 res!1487214) b!3663021))

(assert (= (and b!3663021 res!1487221) b!3662989))

(assert (= (and b!3662985 (not res!1487222)) b!3662980))

(assert (= (and b!3662980 (not res!1487206)) b!3663025))

(assert (= (and b!3663025 (not res!1487212)) b!3662981))

(assert (= (and b!3662981 (not res!1487208)) b!3663026))

(assert (= (and b!3663026 c!633132) b!3662990))

(assert (= (and b!3663026 (not c!633132)) b!3662988))

(assert (= (and b!3663026 c!633127) b!3663002))

(assert (= (and b!3663026 (not c!633127)) b!3663015))

(assert (= (and b!3663002 c!633133) b!3663003))

(assert (= (and b!3663002 (not c!633133)) b!3662979))

(assert (= (and b!3663015 c!633131) b!3663024))

(assert (= (and b!3663015 (not c!633131)) b!3662984))

(assert (= (or b!3663003 b!3663024) bm!264980))

(assert (= (or b!3663003 b!3663024) bm!264981))

(assert (= (or b!3663003 b!3663024) bm!264982))

(assert (= (and b!3663026 c!633129) b!3663009))

(assert (= (and b!3663026 (not c!633129)) b!3663016))

(assert (= (and b!3663009 c!633128) b!3663013))

(assert (= (and b!3663009 (not c!633128)) b!3662987))

(assert (= (or b!3663013 b!3662987) bm!264983))

(assert (= (or b!3663013 b!3662987) bm!264979))

(assert (= (or b!3663013 b!3662987) bm!264978))

(assert (= (and b!3663026 c!633130) b!3663007))

(assert (= (and b!3663026 (not c!633130)) b!3663000))

(assert (= (and b!3663026 (not res!1487210)) b!3662999))

(assert (= (and b!3662999 (not res!1487218)) b!3663020))

(assert (= (and b!3663020 (not res!1487217)) b!3662991))

(assert (= (and b!3662991 (not res!1487216)) b!3662997))

(assert (= (and b!3662997 (not res!1487209)) b!3663010))

(assert (= b!3663005 b!3662995))

(assert (= b!3662982 b!3663005))

(assert (= (and start!343026 ((_ is Cons!38647) rules!3307)) b!3662982))

(assert (= (and start!343026 ((_ is Cons!38646) suffix!1395)) b!3663028))

(assert (= b!3663014 b!3662992))

(assert (= b!3663008 b!3663014))

(assert (= start!343026 b!3663008))

(assert (= b!3663023 b!3663022))

(assert (= start!343026 b!3663023))

(assert (= b!3662994 b!3663012))

(assert (= start!343026 b!3662994))

(declare-fun m!4169799 () Bool)

(assert (=> bm!264982 m!4169799))

(declare-fun m!4169801 () Bool)

(assert (=> b!3663013 m!4169801))

(declare-fun m!4169803 () Bool)

(assert (=> b!3663021 m!4169803))

(assert (=> b!3663021 m!4169803))

(declare-fun m!4169805 () Bool)

(assert (=> b!3663021 m!4169805))

(assert (=> b!3663021 m!4169805))

(declare-fun m!4169807 () Bool)

(assert (=> b!3663021 m!4169807))

(declare-fun m!4169809 () Bool)

(assert (=> b!3663021 m!4169809))

(declare-fun m!4169811 () Bool)

(assert (=> b!3662990 m!4169811))

(declare-fun m!4169813 () Bool)

(assert (=> b!3662994 m!4169813))

(declare-fun m!4169815 () Bool)

(assert (=> b!3662994 m!4169815))

(declare-fun m!4169817 () Bool)

(assert (=> b!3663005 m!4169817))

(declare-fun m!4169819 () Bool)

(assert (=> b!3663005 m!4169819))

(declare-fun m!4169821 () Bool)

(assert (=> bm!264981 m!4169821))

(declare-fun m!4169823 () Bool)

(assert (=> b!3663007 m!4169823))

(declare-fun m!4169825 () Bool)

(assert (=> bm!264978 m!4169825))

(declare-fun m!4169827 () Bool)

(assert (=> b!3663025 m!4169827))

(declare-fun m!4169829 () Bool)

(assert (=> b!3663025 m!4169829))

(declare-fun m!4169831 () Bool)

(assert (=> b!3663025 m!4169831))

(declare-fun m!4169833 () Bool)

(assert (=> b!3663025 m!4169833))

(declare-fun m!4169835 () Bool)

(assert (=> b!3663025 m!4169835))

(assert (=> b!3663025 m!4169829))

(declare-fun m!4169837 () Bool)

(assert (=> b!3663025 m!4169837))

(declare-fun m!4169839 () Bool)

(assert (=> b!3662996 m!4169839))

(declare-fun m!4169841 () Bool)

(assert (=> b!3662981 m!4169841))

(declare-fun m!4169843 () Bool)

(assert (=> b!3662981 m!4169843))

(declare-fun m!4169845 () Bool)

(assert (=> b!3662981 m!4169845))

(declare-fun m!4169847 () Bool)

(assert (=> b!3662981 m!4169847))

(declare-fun m!4169849 () Bool)

(assert (=> b!3662981 m!4169849))

(declare-fun m!4169851 () Bool)

(assert (=> b!3662981 m!4169851))

(assert (=> b!3662981 m!4169841))

(declare-fun m!4169853 () Bool)

(assert (=> b!3662981 m!4169853))

(declare-fun m!4169855 () Bool)

(assert (=> bm!264983 m!4169855))

(declare-fun m!4169857 () Bool)

(assert (=> b!3663017 m!4169857))

(assert (=> b!3663017 m!4169857))

(declare-fun m!4169859 () Bool)

(assert (=> b!3663017 m!4169859))

(declare-fun m!4169861 () Bool)

(assert (=> b!3663023 m!4169861))

(declare-fun m!4169863 () Bool)

(assert (=> b!3663023 m!4169863))

(declare-fun m!4169865 () Bool)

(assert (=> b!3662993 m!4169865))

(declare-fun m!4169867 () Bool)

(assert (=> b!3662993 m!4169867))

(declare-fun m!4169869 () Bool)

(assert (=> b!3662993 m!4169869))

(declare-fun m!4169871 () Bool)

(assert (=> b!3663014 m!4169871))

(declare-fun m!4169873 () Bool)

(assert (=> b!3663014 m!4169873))

(declare-fun m!4169875 () Bool)

(assert (=> b!3662987 m!4169875))

(declare-fun m!4169877 () Bool)

(assert (=> b!3662986 m!4169877))

(declare-fun m!4169879 () Bool)

(assert (=> b!3662983 m!4169879))

(declare-fun m!4169881 () Bool)

(assert (=> b!3662983 m!4169881))

(declare-fun m!4169883 () Bool)

(assert (=> b!3662983 m!4169883))

(declare-fun m!4169885 () Bool)

(assert (=> b!3662983 m!4169885))

(declare-fun m!4169887 () Bool)

(assert (=> start!343026 m!4169887))

(declare-fun m!4169889 () Bool)

(assert (=> b!3662999 m!4169889))

(declare-fun m!4169891 () Bool)

(assert (=> b!3662999 m!4169891))

(declare-fun m!4169893 () Bool)

(assert (=> b!3663010 m!4169893))

(declare-fun m!4169895 () Bool)

(assert (=> b!3663010 m!4169895))

(declare-fun m!4169897 () Bool)

(assert (=> b!3663010 m!4169897))

(declare-fun m!4169899 () Bool)

(assert (=> b!3663010 m!4169899))

(declare-fun m!4169901 () Bool)

(assert (=> b!3663001 m!4169901))

(declare-fun m!4169903 () Bool)

(assert (=> b!3663004 m!4169903))

(declare-fun m!4169905 () Bool)

(assert (=> b!3662991 m!4169905))

(declare-fun m!4169907 () Bool)

(assert (=> b!3663003 m!4169907))

(declare-fun m!4169909 () Bool)

(assert (=> b!3663009 m!4169909))

(declare-fun m!4169911 () Bool)

(assert (=> b!3663009 m!4169911))

(declare-fun m!4169913 () Bool)

(assert (=> b!3663026 m!4169913))

(declare-fun m!4169915 () Bool)

(assert (=> b!3663026 m!4169915))

(declare-fun m!4169917 () Bool)

(assert (=> b!3663026 m!4169917))

(declare-fun m!4169919 () Bool)

(assert (=> b!3663026 m!4169919))

(declare-fun m!4169921 () Bool)

(assert (=> b!3662980 m!4169921))

(declare-fun m!4169923 () Bool)

(assert (=> bm!264980 m!4169923))

(declare-fun m!4169925 () Bool)

(assert (=> b!3662985 m!4169925))

(declare-fun m!4169927 () Bool)

(assert (=> b!3662985 m!4169927))

(declare-fun m!4169929 () Bool)

(assert (=> b!3662985 m!4169929))

(declare-fun m!4169931 () Bool)

(assert (=> b!3662985 m!4169931))

(declare-fun m!4169933 () Bool)

(assert (=> b!3662985 m!4169933))

(assert (=> b!3662985 m!4169803))

(declare-fun m!4169935 () Bool)

(assert (=> b!3662985 m!4169935))

(declare-fun m!4169937 () Bool)

(assert (=> b!3662985 m!4169937))

(declare-fun m!4169939 () Bool)

(assert (=> b!3662985 m!4169939))

(declare-fun m!4169941 () Bool)

(assert (=> b!3662985 m!4169941))

(declare-fun m!4169943 () Bool)

(assert (=> b!3662985 m!4169943))

(declare-fun m!4169945 () Bool)

(assert (=> b!3662985 m!4169945))

(declare-fun m!4169947 () Bool)

(assert (=> b!3662985 m!4169947))

(assert (=> b!3662985 m!4169925))

(declare-fun m!4169949 () Bool)

(assert (=> b!3662985 m!4169949))

(declare-fun m!4169951 () Bool)

(assert (=> b!3662985 m!4169951))

(declare-fun m!4169953 () Bool)

(assert (=> b!3663024 m!4169953))

(declare-fun m!4169955 () Bool)

(assert (=> b!3663020 m!4169955))

(declare-fun m!4169957 () Bool)

(assert (=> b!3663020 m!4169957))

(declare-fun m!4169959 () Bool)

(assert (=> b!3663020 m!4169959))

(declare-fun m!4169961 () Bool)

(assert (=> b!3663020 m!4169961))

(declare-fun m!4169963 () Bool)

(assert (=> b!3662998 m!4169963))

(declare-fun m!4169965 () Bool)

(assert (=> b!3663019 m!4169965))

(assert (=> bm!264979 m!4169821))

(declare-fun m!4169967 () Bool)

(assert (=> b!3663018 m!4169967))

(declare-fun m!4169969 () Bool)

(assert (=> b!3663008 m!4169969))

(declare-fun m!4169971 () Bool)

(assert (=> b!3663006 m!4169971))

(declare-fun m!4169973 () Bool)

(assert (=> b!3663006 m!4169973))

(declare-fun m!4169975 () Bool)

(assert (=> b!3663006 m!4169975))

(declare-fun m!4169977 () Bool)

(assert (=> b!3662997 m!4169977))

(declare-fun m!4169979 () Bool)

(assert (=> b!3663027 m!4169979))

(check-sat (not b!3662996) b_and!272041 (not b!3663026) (not b!3663018) (not b_next!97399) (not b!3662997) (not b!3663021) (not b!3663001) (not b!3663006) (not bm!264979) b_and!272037 (not b!3662993) (not bm!264981) tp_is_empty!18205 (not bm!264982) (not b!3663008) (not b!3663023) b_and!272027 b_and!272035 (not b!3663013) (not b!3662998) b_and!272031 (not b!3663025) (not b_next!97407) (not b_next!97403) (not b!3663019) (not b_next!97397) (not b!3663017) (not b!3663024) (not b!3662991) (not b_next!97405) (not b!3662980) (not b!3663005) (not bm!264980) b_and!272029 (not b!3662986) (not b!3662985) b_and!272033 (not b!3663007) (not b_next!97393) b_and!272039 (not b!3662983) (not b!3663003) (not b!3662994) (not b!3663010) (not start!343026) (not b!3662999) (not b_next!97401) (not b!3662987) (not b!3662982) (not b!3663027) (not bm!264978) (not bm!264983) (not b!3662981) (not b!3663014) (not b!3663020) (not b!3663028) (not b!3663009) (not b_next!97395) (not b!3662990) (not b!3663004))
(check-sat b_and!272041 b_and!272037 b_and!272031 (not b_next!97399) (not b_next!97397) (not b_next!97405) b_and!272029 b_and!272033 (not b_next!97401) (not b_next!97395) b_and!272027 b_and!272035 (not b_next!97407) (not b_next!97403) (not b_next!97393) b_and!272039)
(get-model)

(declare-fun d!1075582 () Bool)

(assert (=> d!1075582 (contains!7669 lt!1274729 (head!7834 suffix!1395))))

(declare-fun lt!1274766 () Unit!55997)

(declare-fun choose!21704 (List!38770 List!38770 List!38770 List!38770) Unit!55997)

(assert (=> d!1075582 (= lt!1274766 (choose!21704 lt!1274731 suffix!1395 lt!1274729 lt!1274713))))

(assert (=> d!1075582 (isPrefix!3165 lt!1274729 lt!1274713)))

(assert (=> d!1075582 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!110 lt!1274731 suffix!1395 lt!1274729 lt!1274713) lt!1274766)))

(declare-fun bs!572710 () Bool)

(assert (= bs!572710 d!1075582))

(assert (=> bs!572710 m!4169973))

(assert (=> bs!572710 m!4169973))

(declare-fun m!4169997 () Bool)

(assert (=> bs!572710 m!4169997))

(declare-fun m!4169999 () Bool)

(assert (=> bs!572710 m!4169999))

(assert (=> bs!572710 m!4169929))

(assert (=> b!3663009 d!1075582))

(declare-fun d!1075584 () Bool)

(declare-fun lt!1274769 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5589 (List!38770) (InoxSet C!21308))

(assert (=> d!1075584 (= lt!1274769 (select (content!5589 lt!1274729) lt!1274726))))

(declare-fun e!2268142 () Bool)

(assert (=> d!1075584 (= lt!1274769 e!2268142)))

(declare-fun res!1487244 () Bool)

(assert (=> d!1075584 (=> (not res!1487244) (not e!2268142))))

(assert (=> d!1075584 (= res!1487244 ((_ is Cons!38646) lt!1274729))))

(assert (=> d!1075584 (= (contains!7669 lt!1274729 lt!1274726) lt!1274769)))

(declare-fun b!3663063 () Bool)

(declare-fun e!2268141 () Bool)

(assert (=> b!3663063 (= e!2268142 e!2268141)))

(declare-fun res!1487245 () Bool)

(assert (=> b!3663063 (=> res!1487245 e!2268141)))

(assert (=> b!3663063 (= res!1487245 (= (h!44066 lt!1274729) lt!1274726))))

(declare-fun b!3663064 () Bool)

(assert (=> b!3663064 (= e!2268141 (contains!7669 (t!298753 lt!1274729) lt!1274726))))

(assert (= (and d!1075584 res!1487244) b!3663063))

(assert (= (and b!3663063 (not res!1487245)) b!3663064))

(declare-fun m!4170001 () Bool)

(assert (=> d!1075584 m!4170001))

(declare-fun m!4170003 () Bool)

(assert (=> d!1075584 m!4170003))

(declare-fun m!4170005 () Bool)

(assert (=> b!3663064 m!4170005))

(assert (=> b!3663009 d!1075584))

(declare-fun d!1075586 () Bool)

(assert (=> d!1075586 (not (matchR!5130 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) lt!1274729))))

(declare-fun lt!1274772 () Unit!55997)

(declare-fun choose!21705 (Regex!10561 List!38770 C!21308) Unit!55997)

(assert (=> d!1075586 (= lt!1274772 (choose!21705 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) lt!1274729 lt!1274726))))

(declare-fun validRegex!4836 (Regex!10561) Bool)

(assert (=> d!1075586 (validRegex!4836 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))

(assert (=> d!1075586 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!750 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) lt!1274729 lt!1274726) lt!1274772)))

(declare-fun bs!572711 () Bool)

(assert (= bs!572711 d!1075586))

(assert (=> bs!572711 m!4169921))

(declare-fun m!4170007 () Bool)

(assert (=> bs!572711 m!4170007))

(declare-fun m!4170009 () Bool)

(assert (=> bs!572711 m!4170009))

(assert (=> bm!264983 d!1075586))

(declare-fun d!1075588 () Bool)

(assert (=> d!1075588 (not (matchR!5130 (regex!5802 rule!403) lt!1274731))))

(declare-fun lt!1274773 () Unit!55997)

(assert (=> d!1075588 (= lt!1274773 (choose!21705 (regex!5802 rule!403) lt!1274731 lt!1274732))))

(assert (=> d!1075588 (validRegex!4836 (regex!5802 rule!403))))

(assert (=> d!1075588 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!750 (regex!5802 rule!403) lt!1274731 lt!1274732) lt!1274773)))

(declare-fun bs!572712 () Bool)

(assert (= bs!572712 d!1075588))

(assert (=> bs!572712 m!4169865))

(declare-fun m!4170011 () Bool)

(assert (=> bs!572712 m!4170011))

(declare-fun m!4170013 () Bool)

(assert (=> bs!572712 m!4170013))

(assert (=> b!3662990 d!1075588))

(declare-fun b!3663075 () Bool)

(declare-fun e!2268150 () Bool)

(declare-fun e!2268149 () Bool)

(assert (=> b!3663075 (= e!2268150 e!2268149)))

(declare-fun c!633155 () Bool)

(assert (=> b!3663075 (= c!633155 ((_ is IntegerValue!18097) (value!185817 token!511)))))

(declare-fun b!3663076 () Bool)

(declare-fun res!1487248 () Bool)

(declare-fun e!2268151 () Bool)

(assert (=> b!3663076 (=> res!1487248 e!2268151)))

(assert (=> b!3663076 (= res!1487248 (not ((_ is IntegerValue!18098) (value!185817 token!511))))))

(assert (=> b!3663076 (= e!2268149 e!2268151)))

(declare-fun b!3663077 () Bool)

(declare-fun inv!17 (TokenValue!6032) Bool)

(assert (=> b!3663077 (= e!2268149 (inv!17 (value!185817 token!511)))))

(declare-fun d!1075590 () Bool)

(declare-fun c!633154 () Bool)

(assert (=> d!1075590 (= c!633154 ((_ is IntegerValue!18096) (value!185817 token!511)))))

(assert (=> d!1075590 (= (inv!21 (value!185817 token!511)) e!2268150)))

(declare-fun b!3663078 () Bool)

(declare-fun inv!16 (TokenValue!6032) Bool)

(assert (=> b!3663078 (= e!2268150 (inv!16 (value!185817 token!511)))))

(declare-fun b!3663079 () Bool)

(declare-fun inv!15 (TokenValue!6032) Bool)

(assert (=> b!3663079 (= e!2268151 (inv!15 (value!185817 token!511)))))

(assert (= (and d!1075590 c!633154) b!3663078))

(assert (= (and d!1075590 (not c!633154)) b!3663075))

(assert (= (and b!3663075 c!633155) b!3663077))

(assert (= (and b!3663075 (not c!633155)) b!3663076))

(assert (= (and b!3663076 (not res!1487248)) b!3663079))

(declare-fun m!4170015 () Bool)

(assert (=> b!3663077 m!4170015))

(declare-fun m!4170017 () Bool)

(assert (=> b!3663078 m!4170017))

(declare-fun m!4170019 () Bool)

(assert (=> b!3663079 m!4170019))

(assert (=> b!3663008 d!1075590))

(declare-fun d!1075592 () Bool)

(assert (=> d!1075592 (not (matchR!5130 (regex!5802 rule!403) lt!1274731))))

(declare-fun lt!1274776 () Unit!55997)

(declare-fun choose!21706 (LexerInterface!5391 List!38771 Rule!11404 List!38770 List!38770 List!38770 Rule!11404) Unit!55997)

(assert (=> d!1075592 (= lt!1274776 (choose!21706 thiss!23823 rules!3307 (rule!8618 (_1!22390 lt!1274714)) lt!1274729 lt!1274713 lt!1274731 rule!403))))

(assert (=> d!1075592 (isPrefix!3165 lt!1274729 lt!1274713)))

(assert (=> d!1075592 (= (lemmaMaxPrefixOutputsMaxPrefix!344 thiss!23823 rules!3307 (rule!8618 (_1!22390 lt!1274714)) lt!1274729 lt!1274713 lt!1274731 rule!403) lt!1274776)))

(declare-fun bs!572713 () Bool)

(assert (= bs!572713 d!1075592))

(assert (=> bs!572713 m!4169865))

(declare-fun m!4170021 () Bool)

(assert (=> bs!572713 m!4170021))

(assert (=> bs!572713 m!4169929))

(assert (=> b!3663007 d!1075592))

(declare-fun b!3663096 () Bool)

(declare-fun c!633166 () Bool)

(assert (=> b!3663096 (= c!633166 ((_ is Star!10561) (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun e!2268161 () List!38770)

(declare-fun e!2268163 () List!38770)

(assert (=> b!3663096 (= e!2268161 e!2268163)))

(declare-fun b!3663097 () Bool)

(assert (=> b!3663097 (= e!2268161 (Cons!38646 (c!633134 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) Nil!38646))))

(declare-fun b!3663098 () Bool)

(declare-fun e!2268160 () List!38770)

(assert (=> b!3663098 (= e!2268163 e!2268160)))

(declare-fun c!633165 () Bool)

(assert (=> b!3663098 (= c!633165 ((_ is Union!10561) (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun bm!265004 () Bool)

(declare-fun call!265010 () List!38770)

(assert (=> bm!265004 (= call!265010 (usedCharacters!1014 (ite c!633165 (regOne!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regTwo!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))))

(declare-fun b!3663099 () Bool)

(declare-fun call!265011 () List!38770)

(assert (=> b!3663099 (= e!2268163 call!265011)))

(declare-fun b!3663100 () Bool)

(declare-fun e!2268162 () List!38770)

(assert (=> b!3663100 (= e!2268162 Nil!38646)))

(declare-fun call!265012 () List!38770)

(declare-fun call!265009 () List!38770)

(declare-fun bm!265006 () Bool)

(assert (=> bm!265006 (= call!265009 (++!9618 (ite c!633165 call!265010 call!265012) (ite c!633165 call!265012 call!265010)))))

(declare-fun b!3663101 () Bool)

(assert (=> b!3663101 (= e!2268160 call!265009)))

(declare-fun b!3663102 () Bool)

(assert (=> b!3663102 (= e!2268160 call!265009)))

(declare-fun bm!265005 () Bool)

(assert (=> bm!265005 (= call!265012 call!265011)))

(declare-fun d!1075594 () Bool)

(declare-fun c!633164 () Bool)

(assert (=> d!1075594 (= c!633164 (or ((_ is EmptyExpr!10561) (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) ((_ is EmptyLang!10561) (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))))

(assert (=> d!1075594 (= (usedCharacters!1014 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) e!2268162)))

(declare-fun b!3663103 () Bool)

(assert (=> b!3663103 (= e!2268162 e!2268161)))

(declare-fun c!633167 () Bool)

(assert (=> b!3663103 (= c!633167 ((_ is ElementMatch!10561) (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun bm!265007 () Bool)

(assert (=> bm!265007 (= call!265011 (usedCharacters!1014 (ite c!633166 (reg!10890 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (ite c!633165 (regTwo!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regOne!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))))))

(assert (= (and d!1075594 c!633164) b!3663100))

(assert (= (and d!1075594 (not c!633164)) b!3663103))

(assert (= (and b!3663103 c!633167) b!3663097))

(assert (= (and b!3663103 (not c!633167)) b!3663096))

(assert (= (and b!3663096 c!633166) b!3663099))

(assert (= (and b!3663096 (not c!633166)) b!3663098))

(assert (= (and b!3663098 c!633165) b!3663101))

(assert (= (and b!3663098 (not c!633165)) b!3663102))

(assert (= (or b!3663101 b!3663102) bm!265004))

(assert (= (or b!3663101 b!3663102) bm!265005))

(assert (= (or b!3663101 b!3663102) bm!265006))

(assert (= (or b!3663099 bm!265005) bm!265007))

(declare-fun m!4170023 () Bool)

(assert (=> bm!265004 m!4170023))

(declare-fun m!4170025 () Bool)

(assert (=> bm!265006 m!4170025))

(declare-fun m!4170027 () Bool)

(assert (=> bm!265007 m!4170027))

(assert (=> bm!264979 d!1075594))

(declare-fun d!1075596 () Bool)

(declare-fun lt!1274777 () Bool)

(assert (=> d!1075596 (= lt!1274777 (select (content!5589 call!264987) lt!1274732))))

(declare-fun e!2268165 () Bool)

(assert (=> d!1075596 (= lt!1274777 e!2268165)))

(declare-fun res!1487249 () Bool)

(assert (=> d!1075596 (=> (not res!1487249) (not e!2268165))))

(assert (=> d!1075596 (= res!1487249 ((_ is Cons!38646) call!264987))))

(assert (=> d!1075596 (= (contains!7669 call!264987 lt!1274732) lt!1274777)))

(declare-fun b!3663104 () Bool)

(declare-fun e!2268164 () Bool)

(assert (=> b!3663104 (= e!2268165 e!2268164)))

(declare-fun res!1487250 () Bool)

(assert (=> b!3663104 (=> res!1487250 e!2268164)))

(assert (=> b!3663104 (= res!1487250 (= (h!44066 call!264987) lt!1274732))))

(declare-fun b!3663105 () Bool)

(assert (=> b!3663105 (= e!2268164 (contains!7669 (t!298753 call!264987) lt!1274732))))

(assert (= (and d!1075596 res!1487249) b!3663104))

(assert (= (and b!3663104 (not res!1487250)) b!3663105))

(declare-fun m!4170029 () Bool)

(assert (=> d!1075596 m!4170029))

(declare-fun m!4170031 () Bool)

(assert (=> d!1075596 m!4170031))

(declare-fun m!4170033 () Bool)

(assert (=> b!3663105 m!4170033))

(assert (=> bm!264982 d!1075596))

(declare-fun d!1075598 () Bool)

(declare-fun res!1487255 () Bool)

(declare-fun e!2268168 () Bool)

(assert (=> d!1075598 (=> (not res!1487255) (not e!2268168))))

(assert (=> d!1075598 (= res!1487255 (not (isEmpty!22924 (originalCharacters!6516 token!511))))))

(assert (=> d!1075598 (= (inv!52116 token!511) e!2268168)))

(declare-fun b!3663110 () Bool)

(declare-fun res!1487256 () Bool)

(assert (=> b!3663110 (=> (not res!1487256) (not e!2268168))))

(declare-fun dynLambda!16896 (Int TokenValue!6032) BalanceConc!23252)

(assert (=> b!3663110 (= res!1487256 (= (originalCharacters!6516 token!511) (list!14340 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 token!511))) (value!185817 token!511)))))))

(declare-fun b!3663111 () Bool)

(assert (=> b!3663111 (= e!2268168 (= (size!29527 token!511) (size!29528 (originalCharacters!6516 token!511))))))

(assert (= (and d!1075598 res!1487255) b!3663110))

(assert (= (and b!3663110 res!1487256) b!3663111))

(declare-fun b_lambda!108663 () Bool)

(assert (=> (not b_lambda!108663) (not b!3663110)))

(declare-fun tb!211741 () Bool)

(declare-fun t!298756 () Bool)

(assert (=> (and b!3663012 (= (toChars!7953 (transformation!5802 anOtherTypeRule!33)) (toChars!7953 (transformation!5802 (rule!8618 token!511)))) t!298756) tb!211741))

(declare-fun b!3663116 () Bool)

(declare-fun e!2268171 () Bool)

(declare-fun tp!1115545 () Bool)

(declare-fun inv!52119 (Conc!11819) Bool)

(assert (=> b!3663116 (= e!2268171 (and (inv!52119 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 token!511))) (value!185817 token!511)))) tp!1115545))))

(declare-fun result!257782 () Bool)

(declare-fun inv!52120 (BalanceConc!23252) Bool)

(assert (=> tb!211741 (= result!257782 (and (inv!52120 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 token!511))) (value!185817 token!511))) e!2268171))))

(assert (= tb!211741 b!3663116))

(declare-fun m!4170035 () Bool)

(assert (=> b!3663116 m!4170035))

(declare-fun m!4170037 () Bool)

(assert (=> tb!211741 m!4170037))

(assert (=> b!3663110 t!298756))

(declare-fun b_and!272043 () Bool)

(assert (= b_and!272029 (and (=> t!298756 result!257782) b_and!272043)))

(declare-fun t!298758 () Bool)

(declare-fun tb!211743 () Bool)

(assert (=> (and b!3663022 (= (toChars!7953 (transformation!5802 rule!403)) (toChars!7953 (transformation!5802 (rule!8618 token!511)))) t!298758) tb!211743))

(declare-fun result!257786 () Bool)

(assert (= result!257786 result!257782))

(assert (=> b!3663110 t!298758))

(declare-fun b_and!272045 () Bool)

(assert (= b_and!272033 (and (=> t!298758 result!257786) b_and!272045)))

(declare-fun t!298760 () Bool)

(declare-fun tb!211745 () Bool)

(assert (=> (and b!3662992 (= (toChars!7953 (transformation!5802 (rule!8618 token!511))) (toChars!7953 (transformation!5802 (rule!8618 token!511)))) t!298760) tb!211745))

(declare-fun result!257788 () Bool)

(assert (= result!257788 result!257782))

(assert (=> b!3663110 t!298760))

(declare-fun b_and!272047 () Bool)

(assert (= b_and!272037 (and (=> t!298760 result!257788) b_and!272047)))

(declare-fun t!298762 () Bool)

(declare-fun tb!211747 () Bool)

(assert (=> (and b!3662995 (= (toChars!7953 (transformation!5802 (h!44067 rules!3307))) (toChars!7953 (transformation!5802 (rule!8618 token!511)))) t!298762) tb!211747))

(declare-fun result!257790 () Bool)

(assert (= result!257790 result!257782))

(assert (=> b!3663110 t!298762))

(declare-fun b_and!272049 () Bool)

(assert (= b_and!272041 (and (=> t!298762 result!257790) b_and!272049)))

(declare-fun m!4170039 () Bool)

(assert (=> d!1075598 m!4170039))

(declare-fun m!4170041 () Bool)

(assert (=> b!3663110 m!4170041))

(assert (=> b!3663110 m!4170041))

(declare-fun m!4170043 () Bool)

(assert (=> b!3663110 m!4170043))

(declare-fun m!4170045 () Bool)

(assert (=> b!3663111 m!4170045))

(assert (=> start!343026 d!1075598))

(declare-fun d!1075600 () Bool)

(declare-fun lt!1274780 () Bool)

(declare-fun content!5591 (List!38771) (InoxSet Rule!11404))

(assert (=> d!1075600 (= lt!1274780 (select (content!5591 rules!3307) (rule!8618 (_1!22390 lt!1274714))))))

(declare-fun e!2268177 () Bool)

(assert (=> d!1075600 (= lt!1274780 e!2268177)))

(declare-fun res!1487262 () Bool)

(assert (=> d!1075600 (=> (not res!1487262) (not e!2268177))))

(assert (=> d!1075600 (= res!1487262 ((_ is Cons!38647) rules!3307))))

(assert (=> d!1075600 (= (contains!7670 rules!3307 (rule!8618 (_1!22390 lt!1274714))) lt!1274780)))

(declare-fun b!3663121 () Bool)

(declare-fun e!2268176 () Bool)

(assert (=> b!3663121 (= e!2268177 e!2268176)))

(declare-fun res!1487261 () Bool)

(assert (=> b!3663121 (=> res!1487261 e!2268176)))

(assert (=> b!3663121 (= res!1487261 (= (h!44067 rules!3307) (rule!8618 (_1!22390 lt!1274714))))))

(declare-fun b!3663122 () Bool)

(assert (=> b!3663122 (= e!2268176 (contains!7670 (t!298754 rules!3307) (rule!8618 (_1!22390 lt!1274714))))))

(assert (= (and d!1075600 res!1487262) b!3663121))

(assert (= (and b!3663121 (not res!1487261)) b!3663122))

(declare-fun m!4170047 () Bool)

(assert (=> d!1075600 m!4170047))

(declare-fun m!4170049 () Bool)

(assert (=> d!1075600 m!4170049))

(declare-fun m!4170051 () Bool)

(assert (=> b!3663122 m!4170051))

(assert (=> b!3662991 d!1075600))

(declare-fun d!1075602 () Bool)

(declare-fun dynLambda!16897 (Int BalanceConc!23252) TokenValue!6032)

(assert (=> d!1075602 (= (apply!9304 (transformation!5802 rule!403) lt!1274745) (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745))))

(declare-fun b_lambda!108665 () Bool)

(assert (=> (not b_lambda!108665) (not d!1075602)))

(declare-fun t!298764 () Bool)

(declare-fun tb!211749 () Bool)

(assert (=> (and b!3663012 (= (toValue!8094 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 rule!403))) t!298764) tb!211749))

(declare-fun result!257792 () Bool)

(assert (=> tb!211749 (= result!257792 (inv!21 (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745)))))

(declare-fun m!4170053 () Bool)

(assert (=> tb!211749 m!4170053))

(assert (=> d!1075602 t!298764))

(declare-fun b_and!272051 () Bool)

(assert (= b_and!272027 (and (=> t!298764 result!257792) b_and!272051)))

(declare-fun t!298766 () Bool)

(declare-fun tb!211751 () Bool)

(assert (=> (and b!3663022 (= (toValue!8094 (transformation!5802 rule!403)) (toValue!8094 (transformation!5802 rule!403))) t!298766) tb!211751))

(declare-fun result!257796 () Bool)

(assert (= result!257796 result!257792))

(assert (=> d!1075602 t!298766))

(declare-fun b_and!272053 () Bool)

(assert (= b_and!272031 (and (=> t!298766 result!257796) b_and!272053)))

(declare-fun tb!211753 () Bool)

(declare-fun t!298768 () Bool)

(assert (=> (and b!3662992 (= (toValue!8094 (transformation!5802 (rule!8618 token!511))) (toValue!8094 (transformation!5802 rule!403))) t!298768) tb!211753))

(declare-fun result!257798 () Bool)

(assert (= result!257798 result!257792))

(assert (=> d!1075602 t!298768))

(declare-fun b_and!272055 () Bool)

(assert (= b_and!272035 (and (=> t!298768 result!257798) b_and!272055)))

(declare-fun t!298770 () Bool)

(declare-fun tb!211755 () Bool)

(assert (=> (and b!3662995 (= (toValue!8094 (transformation!5802 (h!44067 rules!3307))) (toValue!8094 (transformation!5802 rule!403))) t!298770) tb!211755))

(declare-fun result!257800 () Bool)

(assert (= result!257800 result!257792))

(assert (=> d!1075602 t!298770))

(declare-fun b_and!272057 () Bool)

(assert (= b_and!272039 (and (=> t!298770 result!257800) b_and!272057)))

(declare-fun m!4170055 () Bool)

(assert (=> d!1075602 m!4170055))

(assert (=> b!3663010 d!1075602))

(declare-fun d!1075604 () Bool)

(declare-fun lt!1274783 () Int)

(assert (=> d!1075604 (>= lt!1274783 0)))

(declare-fun e!2268183 () Int)

(assert (=> d!1075604 (= lt!1274783 e!2268183)))

(declare-fun c!633170 () Bool)

(assert (=> d!1075604 (= c!633170 ((_ is Nil!38646) lt!1274731))))

(assert (=> d!1075604 (= (size!29528 lt!1274731) lt!1274783)))

(declare-fun b!3663129 () Bool)

(assert (=> b!3663129 (= e!2268183 0)))

(declare-fun b!3663130 () Bool)

(assert (=> b!3663130 (= e!2268183 (+ 1 (size!29528 (t!298753 lt!1274731))))))

(assert (= (and d!1075604 c!633170) b!3663129))

(assert (= (and d!1075604 (not c!633170)) b!3663130))

(declare-fun m!4170057 () Bool)

(assert (=> b!3663130 m!4170057))

(assert (=> b!3663010 d!1075604))

(declare-fun b!3663176 () Bool)

(declare-fun e!2268216 () Bool)

(assert (=> b!3663176 (= e!2268216 true)))

(declare-fun d!1075606 () Bool)

(assert (=> d!1075606 e!2268216))

(assert (= d!1075606 b!3663176))

(declare-fun order!21355 () Int)

(declare-fun lambda!124596 () Int)

(declare-fun order!21357 () Int)

(declare-fun dynLambda!16898 (Int Int) Int)

(declare-fun dynLambda!16899 (Int Int) Int)

(assert (=> b!3663176 (< (dynLambda!16898 order!21355 (toValue!8094 (transformation!5802 rule!403))) (dynLambda!16899 order!21357 lambda!124596))))

(declare-fun order!21359 () Int)

(declare-fun dynLambda!16900 (Int Int) Int)

(assert (=> b!3663176 (< (dynLambda!16900 order!21359 (toChars!7953 (transformation!5802 rule!403))) (dynLambda!16899 order!21357 lambda!124596))))

(assert (=> d!1075606 (= (list!14340 (dynLambda!16896 (toChars!7953 (transformation!5802 rule!403)) (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745))) (list!14340 lt!1274745))))

(declare-fun lt!1274802 () Unit!55997)

(declare-fun ForallOf!732 (Int BalanceConc!23252) Unit!55997)

(assert (=> d!1075606 (= lt!1274802 (ForallOf!732 lambda!124596 lt!1274745))))

(assert (=> d!1075606 (= (lemmaSemiInverse!1551 (transformation!5802 rule!403) lt!1274745) lt!1274802)))

(declare-fun b_lambda!108677 () Bool)

(assert (=> (not b_lambda!108677) (not d!1075606)))

(declare-fun t!298796 () Bool)

(declare-fun tb!211781 () Bool)

(assert (=> (and b!3663012 (= (toChars!7953 (transformation!5802 anOtherTypeRule!33)) (toChars!7953 (transformation!5802 rule!403))) t!298796) tb!211781))

(declare-fun b!3663179 () Bool)

(declare-fun tp!1115549 () Bool)

(declare-fun e!2268219 () Bool)

(assert (=> b!3663179 (= e!2268219 (and (inv!52119 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 rule!403)) (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745)))) tp!1115549))))

(declare-fun result!257830 () Bool)

(assert (=> tb!211781 (= result!257830 (and (inv!52120 (dynLambda!16896 (toChars!7953 (transformation!5802 rule!403)) (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745))) e!2268219))))

(assert (= tb!211781 b!3663179))

(declare-fun m!4170105 () Bool)

(assert (=> b!3663179 m!4170105))

(declare-fun m!4170107 () Bool)

(assert (=> tb!211781 m!4170107))

(assert (=> d!1075606 t!298796))

(declare-fun b_and!272099 () Bool)

(assert (= b_and!272043 (and (=> t!298796 result!257830) b_and!272099)))

(declare-fun t!298798 () Bool)

(declare-fun tb!211783 () Bool)

(assert (=> (and b!3663022 (= (toChars!7953 (transformation!5802 rule!403)) (toChars!7953 (transformation!5802 rule!403))) t!298798) tb!211783))

(declare-fun result!257832 () Bool)

(assert (= result!257832 result!257830))

(assert (=> d!1075606 t!298798))

(declare-fun b_and!272101 () Bool)

(assert (= b_and!272045 (and (=> t!298798 result!257832) b_and!272101)))

(declare-fun t!298800 () Bool)

(declare-fun tb!211785 () Bool)

(assert (=> (and b!3662992 (= (toChars!7953 (transformation!5802 (rule!8618 token!511))) (toChars!7953 (transformation!5802 rule!403))) t!298800) tb!211785))

(declare-fun result!257834 () Bool)

(assert (= result!257834 result!257830))

(assert (=> d!1075606 t!298800))

(declare-fun b_and!272103 () Bool)

(assert (= b_and!272047 (and (=> t!298800 result!257834) b_and!272103)))

(declare-fun t!298802 () Bool)

(declare-fun tb!211787 () Bool)

(assert (=> (and b!3662995 (= (toChars!7953 (transformation!5802 (h!44067 rules!3307))) (toChars!7953 (transformation!5802 rule!403))) t!298802) tb!211787))

(declare-fun result!257836 () Bool)

(assert (= result!257836 result!257830))

(assert (=> d!1075606 t!298802))

(declare-fun b_and!272105 () Bool)

(assert (= b_and!272049 (and (=> t!298802 result!257836) b_and!272105)))

(declare-fun b_lambda!108679 () Bool)

(assert (=> (not b_lambda!108679) (not d!1075606)))

(assert (=> d!1075606 t!298764))

(declare-fun b_and!272107 () Bool)

(assert (= b_and!272051 (and (=> t!298764 result!257792) b_and!272107)))

(assert (=> d!1075606 t!298766))

(declare-fun b_and!272109 () Bool)

(assert (= b_and!272053 (and (=> t!298766 result!257796) b_and!272109)))

(assert (=> d!1075606 t!298768))

(declare-fun b_and!272111 () Bool)

(assert (= b_and!272055 (and (=> t!298768 result!257798) b_and!272111)))

(assert (=> d!1075606 t!298770))

(declare-fun b_and!272113 () Bool)

(assert (= b_and!272057 (and (=> t!298770 result!257800) b_and!272113)))

(assert (=> d!1075606 m!4170055))

(declare-fun m!4170109 () Bool)

(assert (=> d!1075606 m!4170109))

(assert (=> d!1075606 m!4170109))

(declare-fun m!4170111 () Bool)

(assert (=> d!1075606 m!4170111))

(declare-fun m!4170113 () Bool)

(assert (=> d!1075606 m!4170113))

(declare-fun m!4170115 () Bool)

(assert (=> d!1075606 m!4170115))

(assert (=> d!1075606 m!4170055))

(assert (=> b!3663010 d!1075606))

(declare-fun d!1075630 () Bool)

(declare-fun fromListB!2011 (List!38770) BalanceConc!23252)

(assert (=> d!1075630 (= (seqFromList!4351 lt!1274731) (fromListB!2011 lt!1274731))))

(declare-fun bs!572716 () Bool)

(assert (= bs!572716 d!1075630))

(declare-fun m!4170117 () Bool)

(assert (=> bs!572716 m!4170117))

(assert (=> b!3663010 d!1075630))

(declare-fun d!1075632 () Bool)

(assert (=> d!1075632 (= (get!12743 lt!1274749) (v!38127 lt!1274749))))

(assert (=> b!3663004 d!1075632))

(declare-fun d!1075634 () Bool)

(assert (=> d!1075634 (not (contains!7669 (usedCharacters!1014 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274732))))

(declare-fun lt!1274810 () Unit!55997)

(declare-fun choose!21710 (LexerInterface!5391 List!38771 List!38771 Rule!11404 Rule!11404 C!21308) Unit!55997)

(assert (=> d!1075634 (= lt!1274810 (choose!21710 thiss!23823 rules!3307 rules!3307 (rule!8618 (_1!22390 lt!1274714)) rule!403 lt!1274732))))

(assert (=> d!1075634 (rulesInvariant!4788 thiss!23823 rules!3307)))

(assert (=> d!1075634 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!448 thiss!23823 rules!3307 rules!3307 (rule!8618 (_1!22390 lt!1274714)) rule!403 lt!1274732) lt!1274810)))

(declare-fun bs!572718 () Bool)

(assert (= bs!572718 d!1075634))

(assert (=> bs!572718 m!4169821))

(assert (=> bs!572718 m!4169821))

(declare-fun m!4170131 () Bool)

(assert (=> bs!572718 m!4170131))

(declare-fun m!4170137 () Bool)

(assert (=> bs!572718 m!4170137))

(assert (=> bs!572718 m!4169877))

(assert (=> b!3663003 d!1075634))

(declare-fun d!1075640 () Bool)

(assert (=> d!1075640 (isPrefix!3165 lt!1274731 (++!9618 lt!1274731 suffix!1395))))

(declare-fun lt!1274813 () Unit!55997)

(declare-fun choose!21712 (List!38770 List!38770) Unit!55997)

(assert (=> d!1075640 (= lt!1274813 (choose!21712 lt!1274731 suffix!1395))))

(assert (=> d!1075640 (= (lemmaConcatTwoListThenFirstIsPrefix!2084 lt!1274731 suffix!1395) lt!1274813)))

(declare-fun bs!572719 () Bool)

(assert (= bs!572719 d!1075640))

(assert (=> bs!572719 m!4169937))

(assert (=> bs!572719 m!4169937))

(declare-fun m!4170139 () Bool)

(assert (=> bs!572719 m!4170139))

(declare-fun m!4170141 () Bool)

(assert (=> bs!572719 m!4170141))

(assert (=> b!3662985 d!1075640))

(declare-fun b!3663203 () Bool)

(declare-fun e!2268235 () List!38770)

(assert (=> b!3663203 (= e!2268235 (Cons!38646 (h!44066 lt!1274731) (++!9618 (t!298753 lt!1274731) suffix!1395)))))

(declare-fun d!1075644 () Bool)

(declare-fun e!2268236 () Bool)

(assert (=> d!1075644 e!2268236))

(declare-fun res!1487290 () Bool)

(assert (=> d!1075644 (=> (not res!1487290) (not e!2268236))))

(declare-fun lt!1274816 () List!38770)

(assert (=> d!1075644 (= res!1487290 (= (content!5589 lt!1274816) ((_ map or) (content!5589 lt!1274731) (content!5589 suffix!1395))))))

(assert (=> d!1075644 (= lt!1274816 e!2268235)))

(declare-fun c!633185 () Bool)

(assert (=> d!1075644 (= c!633185 ((_ is Nil!38646) lt!1274731))))

(assert (=> d!1075644 (= (++!9618 lt!1274731 suffix!1395) lt!1274816)))

(declare-fun b!3663205 () Bool)

(assert (=> b!3663205 (= e!2268236 (or (not (= suffix!1395 Nil!38646)) (= lt!1274816 lt!1274731)))))

(declare-fun b!3663204 () Bool)

(declare-fun res!1487291 () Bool)

(assert (=> b!3663204 (=> (not res!1487291) (not e!2268236))))

(assert (=> b!3663204 (= res!1487291 (= (size!29528 lt!1274816) (+ (size!29528 lt!1274731) (size!29528 suffix!1395))))))

(declare-fun b!3663202 () Bool)

(assert (=> b!3663202 (= e!2268235 suffix!1395)))

(assert (= (and d!1075644 c!633185) b!3663202))

(assert (= (and d!1075644 (not c!633185)) b!3663203))

(assert (= (and d!1075644 res!1487290) b!3663204))

(assert (= (and b!3663204 res!1487291) b!3663205))

(declare-fun m!4170151 () Bool)

(assert (=> b!3663203 m!4170151))

(declare-fun m!4170153 () Bool)

(assert (=> d!1075644 m!4170153))

(declare-fun m!4170155 () Bool)

(assert (=> d!1075644 m!4170155))

(declare-fun m!4170157 () Bool)

(assert (=> d!1075644 m!4170157))

(declare-fun m!4170159 () Bool)

(assert (=> b!3663204 m!4170159))

(assert (=> b!3663204 m!4169895))

(declare-fun m!4170161 () Bool)

(assert (=> b!3663204 m!4170161))

(assert (=> b!3662985 d!1075644))

(declare-fun d!1075650 () Bool)

(assert (=> d!1075650 (= (get!12743 lt!1274752) (v!38127 lt!1274752))))

(assert (=> b!3662985 d!1075650))

(declare-fun b!3663240 () Bool)

(declare-fun lt!1274836 () Unit!55997)

(declare-fun lt!1274835 () Unit!55997)

(assert (=> b!3663240 (= lt!1274836 lt!1274835)))

(assert (=> b!3663240 (rulesInvariant!4788 thiss!23823 (t!298754 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!604 (LexerInterface!5391 Rule!11404 List!38771) Unit!55997)

(assert (=> b!3663240 (= lt!1274835 (lemmaInvariantOnRulesThenOnTail!604 thiss!23823 (h!44067 rules!3307) (t!298754 rules!3307)))))

(declare-fun e!2268261 () Option!8233)

(assert (=> b!3663240 (= e!2268261 (getRuleFromTag!1406 thiss!23823 (t!298754 rules!3307) (tag!6584 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun b!3663241 () Bool)

(declare-fun e!2268263 () Bool)

(declare-fun e!2268262 () Bool)

(assert (=> b!3663241 (= e!2268263 e!2268262)))

(declare-fun res!1487312 () Bool)

(assert (=> b!3663241 (=> (not res!1487312) (not e!2268262))))

(declare-fun lt!1274834 () Option!8233)

(assert (=> b!3663241 (= res!1487312 (contains!7670 rules!3307 (get!12744 lt!1274834)))))

(declare-fun b!3663242 () Bool)

(assert (=> b!3663242 (= e!2268261 None!8232)))

(declare-fun b!3663243 () Bool)

(declare-fun e!2268264 () Option!8233)

(assert (=> b!3663243 (= e!2268264 e!2268261)))

(declare-fun c!633193 () Bool)

(assert (=> b!3663243 (= c!633193 (and ((_ is Cons!38647) rules!3307) (not (= (tag!6584 (h!44067 rules!3307)) (tag!6584 (rule!8618 (_1!22390 lt!1274714)))))))))

(declare-fun d!1075652 () Bool)

(assert (=> d!1075652 e!2268263))

(declare-fun res!1487313 () Bool)

(assert (=> d!1075652 (=> res!1487313 e!2268263)))

(declare-fun isEmpty!22926 (Option!8233) Bool)

(assert (=> d!1075652 (= res!1487313 (isEmpty!22926 lt!1274834))))

(assert (=> d!1075652 (= lt!1274834 e!2268264)))

(declare-fun c!633194 () Bool)

(assert (=> d!1075652 (= c!633194 (and ((_ is Cons!38647) rules!3307) (= (tag!6584 (h!44067 rules!3307)) (tag!6584 (rule!8618 (_1!22390 lt!1274714))))))))

(assert (=> d!1075652 (rulesInvariant!4788 thiss!23823 rules!3307)))

(assert (=> d!1075652 (= (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 (_1!22390 lt!1274714)))) lt!1274834)))

(declare-fun b!3663244 () Bool)

(assert (=> b!3663244 (= e!2268262 (= (tag!6584 (get!12744 lt!1274834)) (tag!6584 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun b!3663245 () Bool)

(assert (=> b!3663245 (= e!2268264 (Some!8232 (h!44067 rules!3307)))))

(assert (= (and d!1075652 c!633194) b!3663245))

(assert (= (and d!1075652 (not c!633194)) b!3663243))

(assert (= (and b!3663243 c!633193) b!3663240))

(assert (= (and b!3663243 (not c!633193)) b!3663242))

(assert (= (and d!1075652 (not res!1487313)) b!3663241))

(assert (= (and b!3663241 res!1487312) b!3663244))

(declare-fun m!4170185 () Bool)

(assert (=> b!3663240 m!4170185))

(declare-fun m!4170187 () Bool)

(assert (=> b!3663240 m!4170187))

(declare-fun m!4170189 () Bool)

(assert (=> b!3663240 m!4170189))

(declare-fun m!4170191 () Bool)

(assert (=> b!3663241 m!4170191))

(assert (=> b!3663241 m!4170191))

(declare-fun m!4170193 () Bool)

(assert (=> b!3663241 m!4170193))

(declare-fun m!4170195 () Bool)

(assert (=> d!1075652 m!4170195))

(assert (=> d!1075652 m!4169877))

(assert (=> b!3663244 m!4170191))

(assert (=> b!3662985 d!1075652))

(declare-fun d!1075668 () Bool)

(assert (=> d!1075668 (= (isDefined!6465 lt!1274712) (not (isEmpty!22926 lt!1274712)))))

(declare-fun bs!572722 () Bool)

(assert (= bs!572722 d!1075668))

(declare-fun m!4170197 () Bool)

(assert (=> bs!572722 m!4170197))

(assert (=> b!3662985 d!1075668))

(declare-fun b!3663259 () Bool)

(declare-fun e!2268273 () Bool)

(assert (=> b!3663259 (= e!2268273 (>= (size!29528 (++!9618 lt!1274729 (_2!22390 lt!1274714))) (size!29528 lt!1274729)))))

(declare-fun b!3663258 () Bool)

(declare-fun e!2268275 () Bool)

(declare-fun tail!5673 (List!38770) List!38770)

(assert (=> b!3663258 (= e!2268275 (isPrefix!3165 (tail!5673 lt!1274729) (tail!5673 (++!9618 lt!1274729 (_2!22390 lt!1274714)))))))

(declare-fun b!3663257 () Bool)

(declare-fun res!1487327 () Bool)

(assert (=> b!3663257 (=> (not res!1487327) (not e!2268275))))

(assert (=> b!3663257 (= res!1487327 (= (head!7834 lt!1274729) (head!7834 (++!9618 lt!1274729 (_2!22390 lt!1274714)))))))

(declare-fun d!1075670 () Bool)

(assert (=> d!1075670 e!2268273))

(declare-fun res!1487325 () Bool)

(assert (=> d!1075670 (=> res!1487325 e!2268273)))

(declare-fun lt!1274843 () Bool)

(assert (=> d!1075670 (= res!1487325 (not lt!1274843))))

(declare-fun e!2268274 () Bool)

(assert (=> d!1075670 (= lt!1274843 e!2268274)))

(declare-fun res!1487326 () Bool)

(assert (=> d!1075670 (=> res!1487326 e!2268274)))

(assert (=> d!1075670 (= res!1487326 ((_ is Nil!38646) lt!1274729))))

(assert (=> d!1075670 (= (isPrefix!3165 lt!1274729 (++!9618 lt!1274729 (_2!22390 lt!1274714))) lt!1274843)))

(declare-fun b!3663256 () Bool)

(assert (=> b!3663256 (= e!2268274 e!2268275)))

(declare-fun res!1487324 () Bool)

(assert (=> b!3663256 (=> (not res!1487324) (not e!2268275))))

(assert (=> b!3663256 (= res!1487324 (not ((_ is Nil!38646) (++!9618 lt!1274729 (_2!22390 lt!1274714)))))))

(assert (= (and d!1075670 (not res!1487326)) b!3663256))

(assert (= (and b!3663256 res!1487324) b!3663257))

(assert (= (and b!3663257 res!1487327) b!3663258))

(assert (= (and d!1075670 (not res!1487325)) b!3663259))

(assert (=> b!3663259 m!4169925))

(declare-fun m!4170209 () Bool)

(assert (=> b!3663259 m!4170209))

(assert (=> b!3663259 m!4169845))

(declare-fun m!4170211 () Bool)

(assert (=> b!3663258 m!4170211))

(assert (=> b!3663258 m!4169925))

(declare-fun m!4170213 () Bool)

(assert (=> b!3663258 m!4170213))

(assert (=> b!3663258 m!4170211))

(assert (=> b!3663258 m!4170213))

(declare-fun m!4170215 () Bool)

(assert (=> b!3663258 m!4170215))

(assert (=> b!3663257 m!4169919))

(assert (=> b!3663257 m!4169925))

(declare-fun m!4170217 () Bool)

(assert (=> b!3663257 m!4170217))

(assert (=> b!3662985 d!1075670))

(declare-fun d!1075676 () Bool)

(declare-fun lt!1274846 () BalanceConc!23252)

(assert (=> d!1075676 (= (list!14340 lt!1274846) (originalCharacters!6516 (_1!22390 lt!1274714)))))

(assert (=> d!1075676 (= lt!1274846 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (value!185817 (_1!22390 lt!1274714))))))

(assert (=> d!1075676 (= (charsOf!3816 (_1!22390 lt!1274714)) lt!1274846)))

(declare-fun b_lambda!108683 () Bool)

(assert (=> (not b_lambda!108683) (not d!1075676)))

(declare-fun tb!211797 () Bool)

(declare-fun t!298812 () Bool)

(assert (=> (and b!3663012 (= (toChars!7953 (transformation!5802 anOtherTypeRule!33)) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!298812) tb!211797))

(declare-fun b!3663264 () Bool)

(declare-fun e!2268278 () Bool)

(declare-fun tp!1115551 () Bool)

(assert (=> b!3663264 (= e!2268278 (and (inv!52119 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (value!185817 (_1!22390 lt!1274714))))) tp!1115551))))

(declare-fun result!257846 () Bool)

(assert (=> tb!211797 (= result!257846 (and (inv!52120 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (value!185817 (_1!22390 lt!1274714)))) e!2268278))))

(assert (= tb!211797 b!3663264))

(declare-fun m!4170219 () Bool)

(assert (=> b!3663264 m!4170219))

(declare-fun m!4170221 () Bool)

(assert (=> tb!211797 m!4170221))

(assert (=> d!1075676 t!298812))

(declare-fun b_and!272123 () Bool)

(assert (= b_and!272099 (and (=> t!298812 result!257846) b_and!272123)))

(declare-fun tb!211799 () Bool)

(declare-fun t!298814 () Bool)

(assert (=> (and b!3663022 (= (toChars!7953 (transformation!5802 rule!403)) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!298814) tb!211799))

(declare-fun result!257848 () Bool)

(assert (= result!257848 result!257846))

(assert (=> d!1075676 t!298814))

(declare-fun b_and!272125 () Bool)

(assert (= b_and!272101 (and (=> t!298814 result!257848) b_and!272125)))

(declare-fun tb!211801 () Bool)

(declare-fun t!298816 () Bool)

(assert (=> (and b!3662992 (= (toChars!7953 (transformation!5802 (rule!8618 token!511))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!298816) tb!211801))

(declare-fun result!257850 () Bool)

(assert (= result!257850 result!257846))

(assert (=> d!1075676 t!298816))

(declare-fun b_and!272127 () Bool)

(assert (= b_and!272103 (and (=> t!298816 result!257850) b_and!272127)))

(declare-fun tb!211803 () Bool)

(declare-fun t!298818 () Bool)

(assert (=> (and b!3662995 (= (toChars!7953 (transformation!5802 (h!44067 rules!3307))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!298818) tb!211803))

(declare-fun result!257852 () Bool)

(assert (= result!257852 result!257846))

(assert (=> d!1075676 t!298818))

(declare-fun b_and!272129 () Bool)

(assert (= b_and!272105 (and (=> t!298818 result!257852) b_and!272129)))

(declare-fun m!4170223 () Bool)

(assert (=> d!1075676 m!4170223))

(declare-fun m!4170225 () Bool)

(assert (=> d!1075676 m!4170225))

(assert (=> b!3662985 d!1075676))

(declare-fun b!3663390 () Bool)

(declare-fun e!2268344 () Unit!55997)

(declare-fun Unit!56011 () Unit!55997)

(assert (=> b!3663390 (= e!2268344 Unit!56011)))

(declare-fun d!1075678 () Bool)

(assert (=> d!1075678 (isDefined!6464 (maxPrefix!2925 thiss!23823 rules!3307 (++!9618 lt!1274731 suffix!1395)))))

(declare-fun lt!1274942 () Unit!55997)

(assert (=> d!1075678 (= lt!1274942 e!2268344)))

(declare-fun c!633221 () Bool)

(declare-fun isEmpty!22928 (Option!8232) Bool)

(assert (=> d!1075678 (= c!633221 (isEmpty!22928 (maxPrefix!2925 thiss!23823 rules!3307 (++!9618 lt!1274731 suffix!1395))))))

(declare-fun lt!1274933 () Unit!55997)

(declare-fun lt!1274929 () Unit!55997)

(assert (=> d!1075678 (= lt!1274933 lt!1274929)))

(declare-fun e!2268345 () Bool)

(assert (=> d!1075678 e!2268345))

(declare-fun res!1487401 () Bool)

(assert (=> d!1075678 (=> (not res!1487401) (not e!2268345))))

(declare-fun lt!1274941 () Token!10970)

(assert (=> d!1075678 (= res!1487401 (isDefined!6465 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 lt!1274941)))))))

(assert (=> d!1075678 (= lt!1274929 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1406 thiss!23823 rules!3307 lt!1274731 lt!1274941))))

(declare-fun lt!1274926 () Unit!55997)

(declare-fun lt!1274935 () Unit!55997)

(assert (=> d!1075678 (= lt!1274926 lt!1274935)))

(declare-fun lt!1274934 () List!38770)

(assert (=> d!1075678 (isPrefix!3165 lt!1274934 (++!9618 lt!1274731 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!525 (List!38770 List!38770 List!38770) Unit!55997)

(assert (=> d!1075678 (= lt!1274935 (lemmaPrefixStaysPrefixWhenAddingToSuffix!525 lt!1274934 lt!1274731 suffix!1395))))

(assert (=> d!1075678 (= lt!1274934 (list!14340 (charsOf!3816 lt!1274941)))))

(declare-fun lt!1274938 () Unit!55997)

(declare-fun lt!1274932 () Unit!55997)

(assert (=> d!1075678 (= lt!1274938 lt!1274932)))

(declare-fun lt!1274928 () List!38770)

(declare-fun lt!1274939 () List!38770)

(assert (=> d!1075678 (isPrefix!3165 lt!1274928 (++!9618 lt!1274928 lt!1274939))))

(assert (=> d!1075678 (= lt!1274932 (lemmaConcatTwoListThenFirstIsPrefix!2084 lt!1274928 lt!1274939))))

(assert (=> d!1075678 (= lt!1274939 (_2!22390 (get!12743 (maxPrefix!2925 thiss!23823 rules!3307 lt!1274731))))))

(assert (=> d!1075678 (= lt!1274928 (list!14340 (charsOf!3816 lt!1274941)))))

(declare-datatypes ((List!38772 0))(
  ( (Nil!38648) (Cons!38648 (h!44068 Token!10970) (t!298915 List!38772)) )
))
(declare-fun head!7835 (List!38772) Token!10970)

(declare-datatypes ((IArray!23645 0))(
  ( (IArray!23646 (innerList!11880 List!38772)) )
))
(declare-datatypes ((Conc!11820 0))(
  ( (Node!11820 (left!30167 Conc!11820) (right!30497 Conc!11820) (csize!23870 Int) (cheight!12031 Int)) (Leaf!18332 (xs!15022 IArray!23645) (csize!23871 Int)) (Empty!11820) )
))
(declare-datatypes ((BalanceConc!23254 0))(
  ( (BalanceConc!23255 (c!633298 Conc!11820)) )
))
(declare-fun list!14341 (BalanceConc!23254) List!38772)

(declare-datatypes ((tuple2!38514 0))(
  ( (tuple2!38515 (_1!22391 BalanceConc!23254) (_2!22391 BalanceConc!23252)) )
))
(declare-fun lex!2557 (LexerInterface!5391 List!38771 BalanceConc!23252) tuple2!38514)

(assert (=> d!1075678 (= lt!1274941 (head!7835 (list!14341 (_1!22391 (lex!2557 thiss!23823 rules!3307 (seqFromList!4351 lt!1274731))))))))

(assert (=> d!1075678 (not (isEmpty!22925 rules!3307))))

(assert (=> d!1075678 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1069 thiss!23823 rules!3307 lt!1274731 suffix!1395) lt!1274942)))

(declare-fun b!3663388 () Bool)

(assert (=> b!3663388 (= e!2268345 (= (rule!8618 lt!1274941) (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 lt!1274941))))))))

(declare-fun b!3663389 () Bool)

(declare-fun Unit!56012 () Unit!55997)

(assert (=> b!3663389 (= e!2268344 Unit!56012)))

(declare-fun lt!1274940 () List!38770)

(assert (=> b!3663389 (= lt!1274940 (++!9618 lt!1274731 suffix!1395))))

(declare-fun lt!1274937 () Unit!55997)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!561 (LexerInterface!5391 Rule!11404 List!38771 List!38770) Unit!55997)

(assert (=> b!3663389 (= lt!1274937 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!561 thiss!23823 (rule!8618 lt!1274941) rules!3307 lt!1274940))))

(assert (=> b!3663389 (isEmpty!22928 (maxPrefixOneRule!2063 thiss!23823 (rule!8618 lt!1274941) lt!1274940))))

(declare-fun lt!1274927 () Unit!55997)

(assert (=> b!3663389 (= lt!1274927 lt!1274937)))

(declare-fun lt!1274936 () List!38770)

(assert (=> b!3663389 (= lt!1274936 (list!14340 (charsOf!3816 lt!1274941)))))

(declare-fun lt!1274931 () Unit!55997)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!549 (LexerInterface!5391 Rule!11404 List!38770 List!38770) Unit!55997)

(assert (=> b!3663389 (= lt!1274931 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!549 thiss!23823 (rule!8618 lt!1274941) lt!1274936 (++!9618 lt!1274731 suffix!1395)))))

(assert (=> b!3663389 (not (matchR!5130 (regex!5802 (rule!8618 lt!1274941)) lt!1274936))))

(declare-fun lt!1274930 () Unit!55997)

(assert (=> b!3663389 (= lt!1274930 lt!1274931)))

(assert (=> b!3663389 false))

(declare-fun b!3663387 () Bool)

(declare-fun res!1487402 () Bool)

(assert (=> b!3663387 (=> (not res!1487402) (not e!2268345))))

(assert (=> b!3663387 (= res!1487402 (matchR!5130 (regex!5802 (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 lt!1274941))))) (list!14340 (charsOf!3816 lt!1274941))))))

(assert (= (and d!1075678 res!1487401) b!3663387))

(assert (= (and b!3663387 res!1487402) b!3663388))

(assert (= (and d!1075678 c!633221) b!3663389))

(assert (= (and d!1075678 (not c!633221)) b!3663390))

(declare-fun m!4170371 () Bool)

(assert (=> d!1075678 m!4170371))

(declare-fun m!4170373 () Bool)

(assert (=> d!1075678 m!4170373))

(declare-fun m!4170375 () Bool)

(assert (=> d!1075678 m!4170375))

(assert (=> d!1075678 m!4169899))

(assert (=> d!1075678 m!4169937))

(assert (=> d!1075678 m!4170373))

(declare-fun m!4170377 () Bool)

(assert (=> d!1075678 m!4170377))

(assert (=> d!1075678 m!4170373))

(declare-fun m!4170379 () Bool)

(assert (=> d!1075678 m!4170379))

(declare-fun m!4170381 () Bool)

(assert (=> d!1075678 m!4170381))

(declare-fun m!4170383 () Bool)

(assert (=> d!1075678 m!4170383))

(declare-fun m!4170385 () Bool)

(assert (=> d!1075678 m!4170385))

(declare-fun m!4170387 () Bool)

(assert (=> d!1075678 m!4170387))

(assert (=> d!1075678 m!4169881))

(assert (=> d!1075678 m!4169937))

(declare-fun m!4170389 () Bool)

(assert (=> d!1075678 m!4170389))

(declare-fun m!4170391 () Bool)

(assert (=> d!1075678 m!4170391))

(declare-fun m!4170393 () Bool)

(assert (=> d!1075678 m!4170393))

(assert (=> d!1075678 m!4169899))

(declare-fun m!4170395 () Bool)

(assert (=> d!1075678 m!4170395))

(declare-fun m!4170397 () Bool)

(assert (=> d!1075678 m!4170397))

(declare-fun m!4170399 () Bool)

(assert (=> d!1075678 m!4170399))

(assert (=> d!1075678 m!4170397))

(assert (=> d!1075678 m!4169937))

(assert (=> d!1075678 m!4170381))

(declare-fun m!4170401 () Bool)

(assert (=> d!1075678 m!4170401))

(assert (=> d!1075678 m!4170383))

(assert (=> d!1075678 m!4170391))

(assert (=> d!1075678 m!4169979))

(assert (=> d!1075678 m!4169881))

(declare-fun m!4170403 () Bool)

(assert (=> d!1075678 m!4170403))

(assert (=> b!3663388 m!4170381))

(assert (=> b!3663388 m!4170381))

(declare-fun m!4170405 () Bool)

(assert (=> b!3663388 m!4170405))

(declare-fun m!4170407 () Bool)

(assert (=> b!3663389 m!4170407))

(declare-fun m!4170409 () Bool)

(assert (=> b!3663389 m!4170409))

(assert (=> b!3663389 m!4170397))

(assert (=> b!3663389 m!4170399))

(assert (=> b!3663389 m!4169937))

(declare-fun m!4170411 () Bool)

(assert (=> b!3663389 m!4170411))

(assert (=> b!3663389 m!4170409))

(declare-fun m!4170413 () Bool)

(assert (=> b!3663389 m!4170413))

(declare-fun m!4170415 () Bool)

(assert (=> b!3663389 m!4170415))

(assert (=> b!3663389 m!4170397))

(assert (=> b!3663389 m!4169937))

(assert (=> b!3663387 m!4170399))

(declare-fun m!4170417 () Bool)

(assert (=> b!3663387 m!4170417))

(assert (=> b!3663387 m!4170397))

(assert (=> b!3663387 m!4170399))

(assert (=> b!3663387 m!4170397))

(assert (=> b!3663387 m!4170381))

(assert (=> b!3663387 m!4170381))

(assert (=> b!3663387 m!4170405))

(assert (=> b!3662985 d!1075678))

(declare-fun d!1075746 () Bool)

(declare-fun e!2268356 () Bool)

(assert (=> d!1075746 e!2268356))

(declare-fun res!1487421 () Bool)

(assert (=> d!1075746 (=> (not res!1487421) (not e!2268356))))

(assert (=> d!1075746 (= res!1487421 (isDefined!6465 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 (_1!22390 lt!1274714))))))))

(declare-fun lt!1274955 () Unit!55997)

(declare-fun choose!21716 (LexerInterface!5391 List!38771 List!38770 Token!10970) Unit!55997)

(assert (=> d!1075746 (= lt!1274955 (choose!21716 thiss!23823 rules!3307 lt!1274713 (_1!22390 lt!1274714)))))

(assert (=> d!1075746 (rulesInvariant!4788 thiss!23823 rules!3307)))

(assert (=> d!1075746 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1406 thiss!23823 rules!3307 lt!1274713 (_1!22390 lt!1274714)) lt!1274955)))

(declare-fun b!3663413 () Bool)

(declare-fun res!1487422 () Bool)

(assert (=> b!3663413 (=> (not res!1487422) (not e!2268356))))

(assert (=> b!3663413 (= res!1487422 (matchR!5130 (regex!5802 (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 (_1!22390 lt!1274714)))))) (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))))))

(declare-fun b!3663414 () Bool)

(assert (=> b!3663414 (= e!2268356 (= (rule!8618 (_1!22390 lt!1274714)) (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 (_1!22390 lt!1274714)))))))))

(assert (= (and d!1075746 res!1487421) b!3663413))

(assert (= (and b!3663413 res!1487422) b!3663414))

(assert (=> d!1075746 m!4169943))

(assert (=> d!1075746 m!4169943))

(declare-fun m!4170419 () Bool)

(assert (=> d!1075746 m!4170419))

(declare-fun m!4170421 () Bool)

(assert (=> d!1075746 m!4170421))

(assert (=> d!1075746 m!4169877))

(assert (=> b!3663413 m!4169943))

(declare-fun m!4170423 () Bool)

(assert (=> b!3663413 m!4170423))

(assert (=> b!3663413 m!4169803))

(assert (=> b!3663413 m!4169805))

(assert (=> b!3663413 m!4169943))

(assert (=> b!3663413 m!4169805))

(declare-fun m!4170425 () Bool)

(assert (=> b!3663413 m!4170425))

(assert (=> b!3663413 m!4169803))

(assert (=> b!3663414 m!4169943))

(assert (=> b!3663414 m!4169943))

(assert (=> b!3663414 m!4170423))

(assert (=> b!3662985 d!1075746))

(declare-fun b!3663478 () Bool)

(declare-fun e!2268389 () Option!8232)

(declare-fun lt!1274984 () Option!8232)

(declare-fun lt!1274985 () Option!8232)

(assert (=> b!3663478 (= e!2268389 (ite (and ((_ is None!8231) lt!1274984) ((_ is None!8231) lt!1274985)) None!8231 (ite ((_ is None!8231) lt!1274985) lt!1274984 (ite ((_ is None!8231) lt!1274984) lt!1274985 (ite (>= (size!29527 (_1!22390 (v!38127 lt!1274984))) (size!29527 (_1!22390 (v!38127 lt!1274985)))) lt!1274984 lt!1274985)))))))

(declare-fun call!265031 () Option!8232)

(assert (=> b!3663478 (= lt!1274984 call!265031)))

(assert (=> b!3663478 (= lt!1274985 (maxPrefix!2925 thiss!23823 (t!298754 rules!3307) lt!1274713))))

(declare-fun b!3663479 () Bool)

(declare-fun e!2268388 () Bool)

(declare-fun lt!1274987 () Option!8232)

(assert (=> b!3663479 (= e!2268388 (contains!7670 rules!3307 (rule!8618 (_1!22390 (get!12743 lt!1274987)))))))

(declare-fun bm!265026 () Bool)

(assert (=> bm!265026 (= call!265031 (maxPrefixOneRule!2063 thiss!23823 (h!44067 rules!3307) lt!1274713))))

(declare-fun b!3663480 () Bool)

(declare-fun res!1487465 () Bool)

(assert (=> b!3663480 (=> (not res!1487465) (not e!2268388))))

(assert (=> b!3663480 (= res!1487465 (= (++!9618 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1274987)))) (_2!22390 (get!12743 lt!1274987))) lt!1274713))))

(declare-fun b!3663481 () Bool)

(declare-fun res!1487463 () Bool)

(assert (=> b!3663481 (=> (not res!1487463) (not e!2268388))))

(assert (=> b!3663481 (= res!1487463 (= (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1274987)))) (originalCharacters!6516 (_1!22390 (get!12743 lt!1274987)))))))

(declare-fun d!1075748 () Bool)

(declare-fun e!2268387 () Bool)

(assert (=> d!1075748 e!2268387))

(declare-fun res!1487464 () Bool)

(assert (=> d!1075748 (=> res!1487464 e!2268387)))

(assert (=> d!1075748 (= res!1487464 (isEmpty!22928 lt!1274987))))

(assert (=> d!1075748 (= lt!1274987 e!2268389)))

(declare-fun c!633237 () Bool)

(assert (=> d!1075748 (= c!633237 (and ((_ is Cons!38647) rules!3307) ((_ is Nil!38647) (t!298754 rules!3307))))))

(declare-fun lt!1274988 () Unit!55997)

(declare-fun lt!1274986 () Unit!55997)

(assert (=> d!1075748 (= lt!1274988 lt!1274986)))

(assert (=> d!1075748 (isPrefix!3165 lt!1274713 lt!1274713)))

(declare-fun lemmaIsPrefixRefl!1998 (List!38770 List!38770) Unit!55997)

(assert (=> d!1075748 (= lt!1274986 (lemmaIsPrefixRefl!1998 lt!1274713 lt!1274713))))

(declare-fun rulesValidInductive!2061 (LexerInterface!5391 List!38771) Bool)

(assert (=> d!1075748 (rulesValidInductive!2061 thiss!23823 rules!3307)))

(assert (=> d!1075748 (= (maxPrefix!2925 thiss!23823 rules!3307 lt!1274713) lt!1274987)))

(declare-fun b!3663482 () Bool)

(assert (=> b!3663482 (= e!2268387 e!2268388)))

(declare-fun res!1487461 () Bool)

(assert (=> b!3663482 (=> (not res!1487461) (not e!2268388))))

(assert (=> b!3663482 (= res!1487461 (isDefined!6464 lt!1274987))))

(declare-fun b!3663483 () Bool)

(assert (=> b!3663483 (= e!2268389 call!265031)))

(declare-fun b!3663484 () Bool)

(declare-fun res!1487466 () Bool)

(assert (=> b!3663484 (=> (not res!1487466) (not e!2268388))))

(assert (=> b!3663484 (= res!1487466 (< (size!29528 (_2!22390 (get!12743 lt!1274987))) (size!29528 lt!1274713)))))

(declare-fun b!3663485 () Bool)

(declare-fun res!1487462 () Bool)

(assert (=> b!3663485 (=> (not res!1487462) (not e!2268388))))

(assert (=> b!3663485 (= res!1487462 (= (value!185817 (_1!22390 (get!12743 lt!1274987))) (apply!9304 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987)))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 (get!12743 lt!1274987)))))))))

(declare-fun b!3663486 () Bool)

(declare-fun res!1487460 () Bool)

(assert (=> b!3663486 (=> (not res!1487460) (not e!2268388))))

(assert (=> b!3663486 (= res!1487460 (matchR!5130 (regex!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987)))) (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1274987))))))))

(assert (= (and d!1075748 c!633237) b!3663483))

(assert (= (and d!1075748 (not c!633237)) b!3663478))

(assert (= (or b!3663483 b!3663478) bm!265026))

(assert (= (and d!1075748 (not res!1487464)) b!3663482))

(assert (= (and b!3663482 res!1487461) b!3663481))

(assert (= (and b!3663481 res!1487463) b!3663484))

(assert (= (and b!3663484 res!1487466) b!3663480))

(assert (= (and b!3663480 res!1487465) b!3663485))

(assert (= (and b!3663485 res!1487462) b!3663486))

(assert (= (and b!3663486 res!1487460) b!3663479))

(declare-fun m!4170517 () Bool)

(assert (=> b!3663479 m!4170517))

(declare-fun m!4170523 () Bool)

(assert (=> b!3663479 m!4170523))

(assert (=> b!3663481 m!4170517))

(declare-fun m!4170529 () Bool)

(assert (=> b!3663481 m!4170529))

(assert (=> b!3663481 m!4170529))

(declare-fun m!4170535 () Bool)

(assert (=> b!3663481 m!4170535))

(assert (=> b!3663485 m!4170517))

(declare-fun m!4170537 () Bool)

(assert (=> b!3663485 m!4170537))

(assert (=> b!3663485 m!4170537))

(declare-fun m!4170539 () Bool)

(assert (=> b!3663485 m!4170539))

(assert (=> b!3663480 m!4170517))

(assert (=> b!3663480 m!4170529))

(assert (=> b!3663480 m!4170529))

(assert (=> b!3663480 m!4170535))

(assert (=> b!3663480 m!4170535))

(declare-fun m!4170541 () Bool)

(assert (=> b!3663480 m!4170541))

(assert (=> b!3663486 m!4170517))

(assert (=> b!3663486 m!4170529))

(assert (=> b!3663486 m!4170529))

(assert (=> b!3663486 m!4170535))

(assert (=> b!3663486 m!4170535))

(declare-fun m!4170543 () Bool)

(assert (=> b!3663486 m!4170543))

(assert (=> b!3663484 m!4170517))

(declare-fun m!4170545 () Bool)

(assert (=> b!3663484 m!4170545))

(declare-fun m!4170547 () Bool)

(assert (=> b!3663484 m!4170547))

(declare-fun m!4170549 () Bool)

(assert (=> d!1075748 m!4170549))

(declare-fun m!4170551 () Bool)

(assert (=> d!1075748 m!4170551))

(declare-fun m!4170553 () Bool)

(assert (=> d!1075748 m!4170553))

(declare-fun m!4170555 () Bool)

(assert (=> d!1075748 m!4170555))

(declare-fun m!4170557 () Bool)

(assert (=> bm!265026 m!4170557))

(declare-fun m!4170559 () Bool)

(assert (=> b!3663478 m!4170559))

(declare-fun m!4170561 () Bool)

(assert (=> b!3663482 m!4170561))

(assert (=> b!3662985 d!1075748))

(declare-fun b!3663492 () Bool)

(declare-fun e!2268392 () List!38770)

(assert (=> b!3663492 (= e!2268392 (Cons!38646 (h!44066 lt!1274729) (++!9618 (t!298753 lt!1274729) (_2!22390 lt!1274714))))))

(declare-fun d!1075778 () Bool)

(declare-fun e!2268393 () Bool)

(assert (=> d!1075778 e!2268393))

(declare-fun res!1487469 () Bool)

(assert (=> d!1075778 (=> (not res!1487469) (not e!2268393))))

(declare-fun lt!1274990 () List!38770)

(assert (=> d!1075778 (= res!1487469 (= (content!5589 lt!1274990) ((_ map or) (content!5589 lt!1274729) (content!5589 (_2!22390 lt!1274714)))))))

(assert (=> d!1075778 (= lt!1274990 e!2268392)))

(declare-fun c!633239 () Bool)

(assert (=> d!1075778 (= c!633239 ((_ is Nil!38646) lt!1274729))))

(assert (=> d!1075778 (= (++!9618 lt!1274729 (_2!22390 lt!1274714)) lt!1274990)))

(declare-fun b!3663494 () Bool)

(assert (=> b!3663494 (= e!2268393 (or (not (= (_2!22390 lt!1274714) Nil!38646)) (= lt!1274990 lt!1274729)))))

(declare-fun b!3663493 () Bool)

(declare-fun res!1487470 () Bool)

(assert (=> b!3663493 (=> (not res!1487470) (not e!2268393))))

(assert (=> b!3663493 (= res!1487470 (= (size!29528 lt!1274990) (+ (size!29528 lt!1274729) (size!29528 (_2!22390 lt!1274714)))))))

(declare-fun b!3663491 () Bool)

(assert (=> b!3663491 (= e!2268392 (_2!22390 lt!1274714))))

(assert (= (and d!1075778 c!633239) b!3663491))

(assert (= (and d!1075778 (not c!633239)) b!3663492))

(assert (= (and d!1075778 res!1487469) b!3663493))

(assert (= (and b!3663493 res!1487470) b!3663494))

(declare-fun m!4170563 () Bool)

(assert (=> b!3663492 m!4170563))

(declare-fun m!4170565 () Bool)

(assert (=> d!1075778 m!4170565))

(assert (=> d!1075778 m!4170001))

(declare-fun m!4170567 () Bool)

(assert (=> d!1075778 m!4170567))

(declare-fun m!4170569 () Bool)

(assert (=> b!3663493 m!4170569))

(assert (=> b!3663493 m!4169845))

(declare-fun m!4170571 () Bool)

(assert (=> b!3663493 m!4170571))

(assert (=> b!3662985 d!1075778))

(declare-fun b!3663498 () Bool)

(declare-fun e!2268394 () Bool)

(assert (=> b!3663498 (= e!2268394 (>= (size!29528 lt!1274713) (size!29528 lt!1274731)))))

(declare-fun b!3663497 () Bool)

(declare-fun e!2268396 () Bool)

(assert (=> b!3663497 (= e!2268396 (isPrefix!3165 (tail!5673 lt!1274731) (tail!5673 lt!1274713)))))

(declare-fun b!3663496 () Bool)

(declare-fun res!1487474 () Bool)

(assert (=> b!3663496 (=> (not res!1487474) (not e!2268396))))

(assert (=> b!3663496 (= res!1487474 (= (head!7834 lt!1274731) (head!7834 lt!1274713)))))

(declare-fun d!1075780 () Bool)

(assert (=> d!1075780 e!2268394))

(declare-fun res!1487472 () Bool)

(assert (=> d!1075780 (=> res!1487472 e!2268394)))

(declare-fun lt!1274993 () Bool)

(assert (=> d!1075780 (= res!1487472 (not lt!1274993))))

(declare-fun e!2268395 () Bool)

(assert (=> d!1075780 (= lt!1274993 e!2268395)))

(declare-fun res!1487473 () Bool)

(assert (=> d!1075780 (=> res!1487473 e!2268395)))

(assert (=> d!1075780 (= res!1487473 ((_ is Nil!38646) lt!1274731))))

(assert (=> d!1075780 (= (isPrefix!3165 lt!1274731 lt!1274713) lt!1274993)))

(declare-fun b!3663495 () Bool)

(assert (=> b!3663495 (= e!2268395 e!2268396)))

(declare-fun res!1487471 () Bool)

(assert (=> b!3663495 (=> (not res!1487471) (not e!2268396))))

(assert (=> b!3663495 (= res!1487471 (not ((_ is Nil!38646) lt!1274713)))))

(assert (= (and d!1075780 (not res!1487473)) b!3663495))

(assert (= (and b!3663495 res!1487471) b!3663496))

(assert (= (and b!3663496 res!1487474) b!3663497))

(assert (= (and d!1075780 (not res!1487472)) b!3663498))

(assert (=> b!3663498 m!4170547))

(assert (=> b!3663498 m!4169895))

(declare-fun m!4170575 () Bool)

(assert (=> b!3663497 m!4170575))

(declare-fun m!4170577 () Bool)

(assert (=> b!3663497 m!4170577))

(assert (=> b!3663497 m!4170575))

(assert (=> b!3663497 m!4170577))

(declare-fun m!4170579 () Bool)

(assert (=> b!3663497 m!4170579))

(declare-fun m!4170581 () Bool)

(assert (=> b!3663496 m!4170581))

(declare-fun m!4170583 () Bool)

(assert (=> b!3663496 m!4170583))

(assert (=> b!3662985 d!1075780))

(declare-fun b!3663506 () Bool)

(declare-fun e!2268400 () Bool)

(assert (=> b!3663506 (= e!2268400 (>= (size!29528 lt!1274713) (size!29528 lt!1274729)))))

(declare-fun b!3663505 () Bool)

(declare-fun e!2268402 () Bool)

(assert (=> b!3663505 (= e!2268402 (isPrefix!3165 (tail!5673 lt!1274729) (tail!5673 lt!1274713)))))

(declare-fun b!3663504 () Bool)

(declare-fun res!1487482 () Bool)

(assert (=> b!3663504 (=> (not res!1487482) (not e!2268402))))

(assert (=> b!3663504 (= res!1487482 (= (head!7834 lt!1274729) (head!7834 lt!1274713)))))

(declare-fun d!1075784 () Bool)

(assert (=> d!1075784 e!2268400))

(declare-fun res!1487480 () Bool)

(assert (=> d!1075784 (=> res!1487480 e!2268400)))

(declare-fun lt!1274996 () Bool)

(assert (=> d!1075784 (= res!1487480 (not lt!1274996))))

(declare-fun e!2268401 () Bool)

(assert (=> d!1075784 (= lt!1274996 e!2268401)))

(declare-fun res!1487481 () Bool)

(assert (=> d!1075784 (=> res!1487481 e!2268401)))

(assert (=> d!1075784 (= res!1487481 ((_ is Nil!38646) lt!1274729))))

(assert (=> d!1075784 (= (isPrefix!3165 lt!1274729 lt!1274713) lt!1274996)))

(declare-fun b!3663503 () Bool)

(assert (=> b!3663503 (= e!2268401 e!2268402)))

(declare-fun res!1487479 () Bool)

(assert (=> b!3663503 (=> (not res!1487479) (not e!2268402))))

(assert (=> b!3663503 (= res!1487479 (not ((_ is Nil!38646) lt!1274713)))))

(assert (= (and d!1075784 (not res!1487481)) b!3663503))

(assert (= (and b!3663503 res!1487479) b!3663504))

(assert (= (and b!3663504 res!1487482) b!3663505))

(assert (= (and d!1075784 (not res!1487480)) b!3663506))

(assert (=> b!3663506 m!4170547))

(assert (=> b!3663506 m!4169845))

(assert (=> b!3663505 m!4170211))

(assert (=> b!3663505 m!4170577))

(assert (=> b!3663505 m!4170211))

(assert (=> b!3663505 m!4170577))

(declare-fun m!4170587 () Bool)

(assert (=> b!3663505 m!4170587))

(assert (=> b!3663504 m!4169919))

(assert (=> b!3663504 m!4170583))

(assert (=> b!3662985 d!1075784))

(declare-fun d!1075788 () Bool)

(declare-fun list!14343 (Conc!11819) List!38770)

(assert (=> d!1075788 (= (list!14340 lt!1274743) (list!14343 (c!633135 lt!1274743)))))

(declare-fun bs!572741 () Bool)

(assert (= bs!572741 d!1075788))

(declare-fun m!4170591 () Bool)

(assert (=> bs!572741 m!4170591))

(assert (=> b!3662985 d!1075788))

(declare-fun d!1075790 () Bool)

(assert (=> d!1075790 (isPrefix!3165 lt!1274729 (++!9618 lt!1274729 (_2!22390 lt!1274714)))))

(declare-fun lt!1275002 () Unit!55997)

(assert (=> d!1075790 (= lt!1275002 (choose!21712 lt!1274729 (_2!22390 lt!1274714)))))

(assert (=> d!1075790 (= (lemmaConcatTwoListThenFirstIsPrefix!2084 lt!1274729 (_2!22390 lt!1274714)) lt!1275002)))

(declare-fun bs!572742 () Bool)

(assert (= bs!572742 d!1075790))

(assert (=> bs!572742 m!4169925))

(assert (=> bs!572742 m!4169925))

(assert (=> bs!572742 m!4169949))

(declare-fun m!4170593 () Bool)

(assert (=> bs!572742 m!4170593))

(assert (=> b!3662985 d!1075790))

(declare-fun bs!572743 () Bool)

(declare-fun d!1075792 () Bool)

(assert (= bs!572743 (and d!1075792 d!1075606)))

(declare-fun lambda!124598 () Int)

(assert (=> bs!572743 (= (and (= (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (toChars!7953 (transformation!5802 rule!403))) (= (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (toValue!8094 (transformation!5802 rule!403)))) (= lambda!124598 lambda!124596))))

(declare-fun b!3663516 () Bool)

(declare-fun e!2268406 () Bool)

(assert (=> b!3663516 (= e!2268406 true)))

(assert (=> d!1075792 e!2268406))

(assert (= d!1075792 b!3663516))

(assert (=> b!3663516 (< (dynLambda!16898 order!21355 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) (dynLambda!16899 order!21357 lambda!124598))))

(assert (=> b!3663516 (< (dynLambda!16900 order!21359 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) (dynLambda!16899 order!21357 lambda!124598))))

(assert (=> d!1075792 (= (list!14340 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743))) (list!14340 lt!1274743))))

(declare-fun lt!1275003 () Unit!55997)

(assert (=> d!1075792 (= lt!1275003 (ForallOf!732 lambda!124598 lt!1274743))))

(assert (=> d!1075792 (= (lemmaSemiInverse!1551 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))) lt!1274743) lt!1275003)))

(declare-fun b_lambda!108697 () Bool)

(assert (=> (not b_lambda!108697) (not d!1075792)))

(declare-fun t!298852 () Bool)

(declare-fun tb!211837 () Bool)

(assert (=> (and b!3663012 (= (toChars!7953 (transformation!5802 anOtherTypeRule!33)) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!298852) tb!211837))

(declare-fun b!3663517 () Bool)

(declare-fun e!2268407 () Bool)

(declare-fun tp!1115554 () Bool)

(assert (=> b!3663517 (= e!2268407 (and (inv!52119 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743)))) tp!1115554))))

(declare-fun result!257886 () Bool)

(assert (=> tb!211837 (= result!257886 (and (inv!52120 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743))) e!2268407))))

(assert (= tb!211837 b!3663517))

(declare-fun m!4170625 () Bool)

(assert (=> b!3663517 m!4170625))

(declare-fun m!4170627 () Bool)

(assert (=> tb!211837 m!4170627))

(assert (=> d!1075792 t!298852))

(declare-fun b_and!272179 () Bool)

(assert (= b_and!272123 (and (=> t!298852 result!257886) b_and!272179)))

(declare-fun t!298854 () Bool)

(declare-fun tb!211839 () Bool)

(assert (=> (and b!3663022 (= (toChars!7953 (transformation!5802 rule!403)) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!298854) tb!211839))

(declare-fun result!257888 () Bool)

(assert (= result!257888 result!257886))

(assert (=> d!1075792 t!298854))

(declare-fun b_and!272181 () Bool)

(assert (= b_and!272125 (and (=> t!298854 result!257888) b_and!272181)))

(declare-fun t!298856 () Bool)

(declare-fun tb!211841 () Bool)

(assert (=> (and b!3662992 (= (toChars!7953 (transformation!5802 (rule!8618 token!511))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!298856) tb!211841))

(declare-fun result!257890 () Bool)

(assert (= result!257890 result!257886))

(assert (=> d!1075792 t!298856))

(declare-fun b_and!272183 () Bool)

(assert (= b_and!272127 (and (=> t!298856 result!257890) b_and!272183)))

(declare-fun t!298858 () Bool)

(declare-fun tb!211843 () Bool)

(assert (=> (and b!3662995 (= (toChars!7953 (transformation!5802 (h!44067 rules!3307))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!298858) tb!211843))

(declare-fun result!257892 () Bool)

(assert (= result!257892 result!257886))

(assert (=> d!1075792 t!298858))

(declare-fun b_and!272185 () Bool)

(assert (= b_and!272129 (and (=> t!298858 result!257892) b_and!272185)))

(declare-fun b_lambda!108699 () Bool)

(assert (=> (not b_lambda!108699) (not d!1075792)))

(declare-fun t!298860 () Bool)

(declare-fun tb!211845 () Bool)

(assert (=> (and b!3663012 (= (toValue!8094 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!298860) tb!211845))

(declare-fun result!257894 () Bool)

(assert (=> tb!211845 (= result!257894 (inv!21 (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743)))))

(declare-fun m!4170639 () Bool)

(assert (=> tb!211845 m!4170639))

(assert (=> d!1075792 t!298860))

(declare-fun b_and!272187 () Bool)

(assert (= b_and!272107 (and (=> t!298860 result!257894) b_and!272187)))

(declare-fun t!298862 () Bool)

(declare-fun tb!211847 () Bool)

(assert (=> (and b!3663022 (= (toValue!8094 (transformation!5802 rule!403)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!298862) tb!211847))

(declare-fun result!257896 () Bool)

(assert (= result!257896 result!257894))

(assert (=> d!1075792 t!298862))

(declare-fun b_and!272189 () Bool)

(assert (= b_and!272109 (and (=> t!298862 result!257896) b_and!272189)))

(declare-fun tb!211849 () Bool)

(declare-fun t!298864 () Bool)

(assert (=> (and b!3662992 (= (toValue!8094 (transformation!5802 (rule!8618 token!511))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!298864) tb!211849))

(declare-fun result!257898 () Bool)

(assert (= result!257898 result!257894))

(assert (=> d!1075792 t!298864))

(declare-fun b_and!272191 () Bool)

(assert (= b_and!272111 (and (=> t!298864 result!257898) b_and!272191)))

(declare-fun t!298866 () Bool)

(declare-fun tb!211851 () Bool)

(assert (=> (and b!3662995 (= (toValue!8094 (transformation!5802 (h!44067 rules!3307))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!298866) tb!211851))

(declare-fun result!257900 () Bool)

(assert (= result!257900 result!257894))

(assert (=> d!1075792 t!298866))

(declare-fun b_and!272193 () Bool)

(assert (= b_and!272113 (and (=> t!298866 result!257900) b_and!272193)))

(declare-fun m!4170641 () Bool)

(assert (=> d!1075792 m!4170641))

(declare-fun m!4170643 () Bool)

(assert (=> d!1075792 m!4170643))

(assert (=> d!1075792 m!4170643))

(declare-fun m!4170645 () Bool)

(assert (=> d!1075792 m!4170645))

(assert (=> d!1075792 m!4169947))

(declare-fun m!4170647 () Bool)

(assert (=> d!1075792 m!4170647))

(assert (=> d!1075792 m!4170641))

(assert (=> b!3663025 d!1075792))

(declare-fun b!3663534 () Bool)

(declare-fun e!2268418 () Bool)

(assert (=> b!3663534 (= e!2268418 true)))

(declare-fun d!1075798 () Bool)

(assert (=> d!1075798 e!2268418))

(assert (= d!1075798 b!3663534))

(declare-fun lambda!124601 () Int)

(declare-fun order!21361 () Int)

(declare-fun dynLambda!16901 (Int Int) Int)

(assert (=> b!3663534 (< (dynLambda!16898 order!21355 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) (dynLambda!16901 order!21361 lambda!124601))))

(assert (=> b!3663534 (< (dynLambda!16900 order!21359 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) (dynLambda!16901 order!21361 lambda!124601))))

(assert (=> d!1075798 (= (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 lt!1274714)))))))

(declare-fun lt!1275009 () Unit!55997)

(declare-fun Forall2of!390 (Int BalanceConc!23252 BalanceConc!23252) Unit!55997)

(assert (=> d!1075798 (= lt!1275009 (Forall2of!390 lambda!124601 lt!1274743 (seqFromList!4351 (originalCharacters!6516 (_1!22390 lt!1274714)))))))

(assert (=> d!1075798 (= (list!14340 lt!1274743) (list!14340 (seqFromList!4351 (originalCharacters!6516 (_1!22390 lt!1274714)))))))

(assert (=> d!1075798 (= (lemmaEqSameImage!985 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))) lt!1274743 (seqFromList!4351 (originalCharacters!6516 (_1!22390 lt!1274714)))) lt!1275009)))

(declare-fun b_lambda!108701 () Bool)

(assert (=> (not b_lambda!108701) (not d!1075798)))

(assert (=> d!1075798 t!298860))

(declare-fun b_and!272195 () Bool)

(assert (= b_and!272187 (and (=> t!298860 result!257894) b_and!272195)))

(assert (=> d!1075798 t!298862))

(declare-fun b_and!272197 () Bool)

(assert (= b_and!272189 (and (=> t!298862 result!257896) b_and!272197)))

(assert (=> d!1075798 t!298864))

(declare-fun b_and!272199 () Bool)

(assert (= b_and!272191 (and (=> t!298864 result!257898) b_and!272199)))

(assert (=> d!1075798 t!298866))

(declare-fun b_and!272201 () Bool)

(assert (= b_and!272193 (and (=> t!298866 result!257900) b_and!272201)))

(declare-fun b_lambda!108703 () Bool)

(assert (=> (not b_lambda!108703) (not d!1075798)))

(declare-fun t!298868 () Bool)

(declare-fun tb!211853 () Bool)

(assert (=> (and b!3663012 (= (toValue!8094 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!298868) tb!211853))

(declare-fun result!257902 () Bool)

(assert (=> tb!211853 (= result!257902 (inv!21 (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 lt!1274714))))))))

(declare-fun m!4170657 () Bool)

(assert (=> tb!211853 m!4170657))

(assert (=> d!1075798 t!298868))

(declare-fun b_and!272203 () Bool)

(assert (= b_and!272195 (and (=> t!298868 result!257902) b_and!272203)))

(declare-fun t!298870 () Bool)

(declare-fun tb!211855 () Bool)

(assert (=> (and b!3663022 (= (toValue!8094 (transformation!5802 rule!403)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!298870) tb!211855))

(declare-fun result!257904 () Bool)

(assert (= result!257904 result!257902))

(assert (=> d!1075798 t!298870))

(declare-fun b_and!272205 () Bool)

(assert (= b_and!272197 (and (=> t!298870 result!257904) b_and!272205)))

(declare-fun tb!211857 () Bool)

(declare-fun t!298872 () Bool)

(assert (=> (and b!3662992 (= (toValue!8094 (transformation!5802 (rule!8618 token!511))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!298872) tb!211857))

(declare-fun result!257906 () Bool)

(assert (= result!257906 result!257902))

(assert (=> d!1075798 t!298872))

(declare-fun b_and!272207 () Bool)

(assert (= b_and!272199 (and (=> t!298872 result!257906) b_and!272207)))

(declare-fun t!298874 () Bool)

(declare-fun tb!211859 () Bool)

(assert (=> (and b!3662995 (= (toValue!8094 (transformation!5802 (h!44067 rules!3307))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!298874) tb!211859))

(declare-fun result!257908 () Bool)

(assert (= result!257908 result!257902))

(assert (=> d!1075798 t!298874))

(declare-fun b_and!272209 () Bool)

(assert (= b_and!272201 (and (=> t!298874 result!257908) b_and!272209)))

(assert (=> d!1075798 m!4169829))

(declare-fun m!4170659 () Bool)

(assert (=> d!1075798 m!4170659))

(assert (=> d!1075798 m!4169829))

(declare-fun m!4170661 () Bool)

(assert (=> d!1075798 m!4170661))

(assert (=> d!1075798 m!4169947))

(assert (=> d!1075798 m!4170641))

(assert (=> d!1075798 m!4169829))

(declare-fun m!4170663 () Bool)

(assert (=> d!1075798 m!4170663))

(assert (=> b!3663025 d!1075798))

(declare-fun d!1075804 () Bool)

(assert (=> d!1075804 (= (size!29527 (_1!22390 lt!1274714)) (size!29528 (originalCharacters!6516 (_1!22390 lt!1274714))))))

(declare-fun Unit!56013 () Unit!55997)

(assert (=> d!1075804 (= (lemmaCharactersSize!847 (_1!22390 lt!1274714)) Unit!56013)))

(declare-fun bs!572744 () Bool)

(assert (= bs!572744 d!1075804))

(declare-fun m!4170665 () Bool)

(assert (=> bs!572744 m!4170665))

(assert (=> b!3663025 d!1075804))

(declare-fun d!1075806 () Bool)

(assert (=> d!1075806 (= (apply!9304 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))) lt!1274743) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743))))

(declare-fun b_lambda!108705 () Bool)

(assert (=> (not b_lambda!108705) (not d!1075806)))

(assert (=> d!1075806 t!298860))

(declare-fun b_and!272211 () Bool)

(assert (= b_and!272203 (and (=> t!298860 result!257894) b_and!272211)))

(assert (=> d!1075806 t!298862))

(declare-fun b_and!272213 () Bool)

(assert (= b_and!272205 (and (=> t!298862 result!257896) b_and!272213)))

(assert (=> d!1075806 t!298864))

(declare-fun b_and!272215 () Bool)

(assert (= b_and!272207 (and (=> t!298864 result!257898) b_and!272215)))

(assert (=> d!1075806 t!298866))

(declare-fun b_and!272217 () Bool)

(assert (= b_and!272209 (and (=> t!298866 result!257900) b_and!272217)))

(assert (=> d!1075806 m!4170641))

(assert (=> b!3663025 d!1075806))

(declare-fun d!1075808 () Bool)

(declare-fun lt!1275013 () Int)

(assert (=> d!1075808 (= lt!1275013 (size!29528 (list!14340 lt!1274743)))))

(declare-fun size!29531 (Conc!11819) Int)

(assert (=> d!1075808 (= lt!1275013 (size!29531 (c!633135 lt!1274743)))))

(assert (=> d!1075808 (= (size!29529 lt!1274743) lt!1275013)))

(declare-fun bs!572745 () Bool)

(assert (= bs!572745 d!1075808))

(assert (=> bs!572745 m!4169947))

(assert (=> bs!572745 m!4169947))

(declare-fun m!4170667 () Bool)

(assert (=> bs!572745 m!4170667))

(declare-fun m!4170669 () Bool)

(assert (=> bs!572745 m!4170669))

(assert (=> b!3663025 d!1075808))

(declare-fun d!1075810 () Bool)

(assert (=> d!1075810 (= (seqFromList!4351 (originalCharacters!6516 (_1!22390 lt!1274714))) (fromListB!2011 (originalCharacters!6516 (_1!22390 lt!1274714))))))

(declare-fun bs!572746 () Bool)

(assert (= bs!572746 d!1075810))

(declare-fun m!4170671 () Bool)

(assert (=> bs!572746 m!4170671))

(assert (=> b!3663025 d!1075810))

(declare-fun d!1075812 () Bool)

(assert (=> d!1075812 (= (inv!52112 (tag!6584 rule!403)) (= (mod (str.len (value!185816 (tag!6584 rule!403))) 2) 0))))

(assert (=> b!3663023 d!1075812))

(declare-fun d!1075814 () Bool)

(declare-fun res!1487502 () Bool)

(declare-fun e!2268422 () Bool)

(assert (=> d!1075814 (=> (not res!1487502) (not e!2268422))))

(declare-fun semiInverseModEq!2475 (Int Int) Bool)

(assert (=> d!1075814 (= res!1487502 (semiInverseModEq!2475 (toChars!7953 (transformation!5802 rule!403)) (toValue!8094 (transformation!5802 rule!403))))))

(assert (=> d!1075814 (= (inv!52115 (transformation!5802 rule!403)) e!2268422)))

(declare-fun b!3663537 () Bool)

(declare-fun equivClasses!2374 (Int Int) Bool)

(assert (=> b!3663537 (= e!2268422 (equivClasses!2374 (toChars!7953 (transformation!5802 rule!403)) (toValue!8094 (transformation!5802 rule!403))))))

(assert (= (and d!1075814 res!1487502) b!3663537))

(declare-fun m!4170673 () Bool)

(assert (=> d!1075814 m!4170673))

(declare-fun m!4170675 () Bool)

(assert (=> b!3663537 m!4170675))

(assert (=> b!3663023 d!1075814))

(declare-fun d!1075816 () Bool)

(assert (=> d!1075816 (not (contains!7669 (usedCharacters!1014 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274732))))

(declare-fun lt!1275016 () Unit!55997)

(declare-fun choose!21720 (LexerInterface!5391 List!38771 List!38771 Rule!11404 Rule!11404 C!21308) Unit!55997)

(assert (=> d!1075816 (= lt!1275016 (choose!21720 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8618 (_1!22390 lt!1274714)) lt!1274732))))

(assert (=> d!1075816 (rulesInvariant!4788 thiss!23823 rules!3307)))

(assert (=> d!1075816 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!330 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8618 (_1!22390 lt!1274714)) lt!1274732) lt!1275016)))

(declare-fun bs!572747 () Bool)

(assert (= bs!572747 d!1075816))

(assert (=> bs!572747 m!4169821))

(assert (=> bs!572747 m!4169821))

(assert (=> bs!572747 m!4170131))

(declare-fun m!4170677 () Bool)

(assert (=> bs!572747 m!4170677))

(assert (=> bs!572747 m!4169877))

(assert (=> b!3663024 d!1075816))

(declare-fun d!1075818 () Bool)

(assert (=> d!1075818 (= (isEmpty!22925 rules!3307) ((_ is Nil!38647) rules!3307))))

(assert (=> b!3663027 d!1075818))

(declare-fun d!1075820 () Bool)

(declare-fun lt!1275017 () Bool)

(assert (=> d!1075820 (= lt!1275017 (select (content!5589 lt!1274739) lt!1274726))))

(declare-fun e!2268424 () Bool)

(assert (=> d!1075820 (= lt!1275017 e!2268424)))

(declare-fun res!1487503 () Bool)

(assert (=> d!1075820 (=> (not res!1487503) (not e!2268424))))

(assert (=> d!1075820 (= res!1487503 ((_ is Cons!38646) lt!1274739))))

(assert (=> d!1075820 (= (contains!7669 lt!1274739 lt!1274726) lt!1275017)))

(declare-fun b!3663538 () Bool)

(declare-fun e!2268423 () Bool)

(assert (=> b!3663538 (= e!2268424 e!2268423)))

(declare-fun res!1487504 () Bool)

(assert (=> b!3663538 (=> res!1487504 e!2268423)))

(assert (=> b!3663538 (= res!1487504 (= (h!44066 lt!1274739) lt!1274726))))

(declare-fun b!3663539 () Bool)

(assert (=> b!3663539 (= e!2268423 (contains!7669 (t!298753 lt!1274739) lt!1274726))))

(assert (= (and d!1075820 res!1487503) b!3663538))

(assert (= (and b!3663538 (not res!1487504)) b!3663539))

(declare-fun m!4170679 () Bool)

(assert (=> d!1075820 m!4170679))

(declare-fun m!4170681 () Bool)

(assert (=> d!1075820 m!4170681))

(declare-fun m!4170683 () Bool)

(assert (=> b!3663539 m!4170683))

(assert (=> b!3663006 d!1075820))

(declare-fun d!1075822 () Bool)

(assert (=> d!1075822 (= (head!7834 suffix!1395) (h!44066 suffix!1395))))

(assert (=> b!3663006 d!1075822))

(declare-fun b!3663540 () Bool)

(declare-fun c!633245 () Bool)

(assert (=> b!3663540 (= c!633245 ((_ is Star!10561) (regex!5802 rule!403)))))

(declare-fun e!2268426 () List!38770)

(declare-fun e!2268428 () List!38770)

(assert (=> b!3663540 (= e!2268426 e!2268428)))

(declare-fun b!3663541 () Bool)

(assert (=> b!3663541 (= e!2268426 (Cons!38646 (c!633134 (regex!5802 rule!403)) Nil!38646))))

(declare-fun b!3663542 () Bool)

(declare-fun e!2268425 () List!38770)

(assert (=> b!3663542 (= e!2268428 e!2268425)))

(declare-fun c!633244 () Bool)

(assert (=> b!3663542 (= c!633244 ((_ is Union!10561) (regex!5802 rule!403)))))

(declare-fun bm!265028 () Bool)

(declare-fun call!265034 () List!38770)

(assert (=> bm!265028 (= call!265034 (usedCharacters!1014 (ite c!633244 (regOne!21635 (regex!5802 rule!403)) (regTwo!21634 (regex!5802 rule!403)))))))

(declare-fun b!3663543 () Bool)

(declare-fun call!265035 () List!38770)

(assert (=> b!3663543 (= e!2268428 call!265035)))

(declare-fun b!3663544 () Bool)

(declare-fun e!2268427 () List!38770)

(assert (=> b!3663544 (= e!2268427 Nil!38646)))

(declare-fun call!265036 () List!38770)

(declare-fun bm!265030 () Bool)

(declare-fun call!265033 () List!38770)

(assert (=> bm!265030 (= call!265033 (++!9618 (ite c!633244 call!265034 call!265036) (ite c!633244 call!265036 call!265034)))))

(declare-fun b!3663545 () Bool)

(assert (=> b!3663545 (= e!2268425 call!265033)))

(declare-fun b!3663546 () Bool)

(assert (=> b!3663546 (= e!2268425 call!265033)))

(declare-fun bm!265029 () Bool)

(assert (=> bm!265029 (= call!265036 call!265035)))

(declare-fun d!1075824 () Bool)

(declare-fun c!633243 () Bool)

(assert (=> d!1075824 (= c!633243 (or ((_ is EmptyExpr!10561) (regex!5802 rule!403)) ((_ is EmptyLang!10561) (regex!5802 rule!403))))))

(assert (=> d!1075824 (= (usedCharacters!1014 (regex!5802 rule!403)) e!2268427)))

(declare-fun b!3663547 () Bool)

(assert (=> b!3663547 (= e!2268427 e!2268426)))

(declare-fun c!633246 () Bool)

(assert (=> b!3663547 (= c!633246 ((_ is ElementMatch!10561) (regex!5802 rule!403)))))

(declare-fun bm!265031 () Bool)

(assert (=> bm!265031 (= call!265035 (usedCharacters!1014 (ite c!633245 (reg!10890 (regex!5802 rule!403)) (ite c!633244 (regTwo!21635 (regex!5802 rule!403)) (regOne!21634 (regex!5802 rule!403))))))))

(assert (= (and d!1075824 c!633243) b!3663544))

(assert (= (and d!1075824 (not c!633243)) b!3663547))

(assert (= (and b!3663547 c!633246) b!3663541))

(assert (= (and b!3663547 (not c!633246)) b!3663540))

(assert (= (and b!3663540 c!633245) b!3663543))

(assert (= (and b!3663540 (not c!633245)) b!3663542))

(assert (= (and b!3663542 c!633244) b!3663545))

(assert (= (and b!3663542 (not c!633244)) b!3663546))

(assert (= (or b!3663545 b!3663546) bm!265028))

(assert (= (or b!3663545 b!3663546) bm!265029))

(assert (= (or b!3663545 b!3663546) bm!265030))

(assert (= (or b!3663543 bm!265029) bm!265031))

(declare-fun m!4170685 () Bool)

(assert (=> bm!265028 m!4170685))

(declare-fun m!4170687 () Bool)

(assert (=> bm!265030 m!4170687))

(declare-fun m!4170689 () Bool)

(assert (=> bm!265031 m!4170689))

(assert (=> b!3663006 d!1075824))

(declare-fun d!1075826 () Bool)

(assert (=> d!1075826 (= (inv!52112 (tag!6584 (h!44067 rules!3307))) (= (mod (str.len (value!185816 (tag!6584 (h!44067 rules!3307)))) 2) 0))))

(assert (=> b!3663005 d!1075826))

(declare-fun d!1075828 () Bool)

(declare-fun res!1487505 () Bool)

(declare-fun e!2268429 () Bool)

(assert (=> d!1075828 (=> (not res!1487505) (not e!2268429))))

(assert (=> d!1075828 (= res!1487505 (semiInverseModEq!2475 (toChars!7953 (transformation!5802 (h!44067 rules!3307))) (toValue!8094 (transformation!5802 (h!44067 rules!3307)))))))

(assert (=> d!1075828 (= (inv!52115 (transformation!5802 (h!44067 rules!3307))) e!2268429)))

(declare-fun b!3663548 () Bool)

(assert (=> b!3663548 (= e!2268429 (equivClasses!2374 (toChars!7953 (transformation!5802 (h!44067 rules!3307))) (toValue!8094 (transformation!5802 (h!44067 rules!3307)))))))

(assert (= (and d!1075828 res!1487505) b!3663548))

(declare-fun m!4170691 () Bool)

(assert (=> d!1075828 m!4170691))

(declare-fun m!4170693 () Bool)

(assert (=> b!3663548 m!4170693))

(assert (=> b!3663005 d!1075828))

(declare-fun d!1075830 () Bool)

(assert (=> d!1075830 (= lt!1274729 lt!1274731)))

(declare-fun lt!1275020 () Unit!55997)

(declare-fun choose!21721 (List!38770 List!38770 List!38770) Unit!55997)

(assert (=> d!1075830 (= lt!1275020 (choose!21721 lt!1274729 lt!1274731 lt!1274713))))

(assert (=> d!1075830 (isPrefix!3165 lt!1274729 lt!1274713)))

(assert (=> d!1075830 (= (lemmaIsPrefixSameLengthThenSameList!627 lt!1274729 lt!1274731 lt!1274713) lt!1275020)))

(declare-fun bs!572748 () Bool)

(assert (= bs!572748 d!1075830))

(declare-fun m!4170695 () Bool)

(assert (=> bs!572748 m!4170695))

(assert (=> bs!572748 m!4169929))

(assert (=> b!3663026 d!1075830))

(declare-fun d!1075832 () Bool)

(declare-fun lt!1275021 () Int)

(assert (=> d!1075832 (= lt!1275021 (size!29528 (list!14340 lt!1274733)))))

(assert (=> d!1075832 (= lt!1275021 (size!29531 (c!633135 lt!1274733)))))

(assert (=> d!1075832 (= (size!29529 lt!1274733) lt!1275021)))

(declare-fun bs!572749 () Bool)

(assert (= bs!572749 d!1075832))

(assert (=> bs!572749 m!4169883))

(assert (=> bs!572749 m!4169883))

(declare-fun m!4170697 () Bool)

(assert (=> bs!572749 m!4170697))

(declare-fun m!4170699 () Bool)

(assert (=> bs!572749 m!4170699))

(assert (=> b!3663026 d!1075832))

(declare-fun d!1075834 () Bool)

(declare-fun lt!1275022 () Bool)

(assert (=> d!1075834 (= lt!1275022 (select (content!5589 lt!1274739) lt!1274732))))

(declare-fun e!2268431 () Bool)

(assert (=> d!1075834 (= lt!1275022 e!2268431)))

(declare-fun res!1487506 () Bool)

(assert (=> d!1075834 (=> (not res!1487506) (not e!2268431))))

(assert (=> d!1075834 (= res!1487506 ((_ is Cons!38646) lt!1274739))))

(assert (=> d!1075834 (= (contains!7669 lt!1274739 lt!1274732) lt!1275022)))

(declare-fun b!3663549 () Bool)

(declare-fun e!2268430 () Bool)

(assert (=> b!3663549 (= e!2268431 e!2268430)))

(declare-fun res!1487507 () Bool)

(assert (=> b!3663549 (=> res!1487507 e!2268430)))

(assert (=> b!3663549 (= res!1487507 (= (h!44066 lt!1274739) lt!1274732))))

(declare-fun b!3663550 () Bool)

(assert (=> b!3663550 (= e!2268430 (contains!7669 (t!298753 lt!1274739) lt!1274732))))

(assert (= (and d!1075834 res!1487506) b!3663549))

(assert (= (and b!3663549 (not res!1487507)) b!3663550))

(assert (=> d!1075834 m!4170679))

(declare-fun m!4170701 () Bool)

(assert (=> d!1075834 m!4170701))

(declare-fun m!4170703 () Bool)

(assert (=> b!3663550 m!4170703))

(assert (=> b!3663026 d!1075834))

(declare-fun d!1075836 () Bool)

(assert (=> d!1075836 (= (head!7834 lt!1274729) (h!44066 lt!1274729))))

(assert (=> b!3663026 d!1075836))

(declare-fun d!1075838 () Bool)

(assert (=> d!1075838 (not (contains!7669 (usedCharacters!1014 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274726))))

(declare-fun lt!1275023 () Unit!55997)

(assert (=> d!1075838 (= lt!1275023 (choose!21710 thiss!23823 rules!3307 rules!3307 (rule!8618 (_1!22390 lt!1274714)) anOtherTypeRule!33 lt!1274726))))

(assert (=> d!1075838 (rulesInvariant!4788 thiss!23823 rules!3307)))

(assert (=> d!1075838 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!448 thiss!23823 rules!3307 rules!3307 (rule!8618 (_1!22390 lt!1274714)) anOtherTypeRule!33 lt!1274726) lt!1275023)))

(declare-fun bs!572750 () Bool)

(assert (= bs!572750 d!1075838))

(assert (=> bs!572750 m!4169821))

(assert (=> bs!572750 m!4169821))

(declare-fun m!4170705 () Bool)

(assert (=> bs!572750 m!4170705))

(declare-fun m!4170707 () Bool)

(assert (=> bs!572750 m!4170707))

(assert (=> bs!572750 m!4169877))

(assert (=> b!3662987 d!1075838))

(declare-fun d!1075840 () Bool)

(declare-fun res!1487510 () Bool)

(declare-fun e!2268434 () Bool)

(assert (=> d!1075840 (=> (not res!1487510) (not e!2268434))))

(declare-fun rulesValid!2232 (LexerInterface!5391 List!38771) Bool)

(assert (=> d!1075840 (= res!1487510 (rulesValid!2232 thiss!23823 rules!3307))))

(assert (=> d!1075840 (= (rulesInvariant!4788 thiss!23823 rules!3307) e!2268434)))

(declare-fun b!3663553 () Bool)

(declare-datatypes ((List!38774 0))(
  ( (Nil!38650) (Cons!38650 (h!44070 String!43494) (t!298917 List!38774)) )
))
(declare-fun noDuplicateTag!2228 (LexerInterface!5391 List!38771 List!38774) Bool)

(assert (=> b!3663553 (= e!2268434 (noDuplicateTag!2228 thiss!23823 rules!3307 Nil!38650))))

(assert (= (and d!1075840 res!1487510) b!3663553))

(declare-fun m!4170709 () Bool)

(assert (=> d!1075840 m!4170709))

(declare-fun m!4170711 () Bool)

(assert (=> b!3663553 m!4170711))

(assert (=> b!3662986 d!1075840))

(declare-fun d!1075842 () Bool)

(declare-fun lt!1275024 () Int)

(assert (=> d!1075842 (>= lt!1275024 0)))

(declare-fun e!2268435 () Int)

(assert (=> d!1075842 (= lt!1275024 e!2268435)))

(declare-fun c!633247 () Bool)

(assert (=> d!1075842 (= c!633247 ((_ is Nil!38646) lt!1274729))))

(assert (=> d!1075842 (= (size!29528 lt!1274729) lt!1275024)))

(declare-fun b!3663554 () Bool)

(assert (=> b!3663554 (= e!2268435 0)))

(declare-fun b!3663555 () Bool)

(assert (=> b!3663555 (= e!2268435 (+ 1 (size!29528 (t!298753 lt!1274729))))))

(assert (= (and d!1075842 c!633247) b!3663554))

(assert (= (and d!1075842 (not c!633247)) b!3663555))

(declare-fun m!4170713 () Bool)

(assert (=> b!3663555 m!4170713))

(assert (=> b!3662981 d!1075842))

(declare-fun d!1075844 () Bool)

(assert (=> d!1075844 (= (_2!22390 lt!1274714) lt!1274723)))

(declare-fun lt!1275027 () Unit!55997)

(declare-fun choose!21722 (List!38770 List!38770 List!38770 List!38770 List!38770) Unit!55997)

(assert (=> d!1075844 (= lt!1275027 (choose!21722 lt!1274729 (_2!22390 lt!1274714) lt!1274729 lt!1274723 lt!1274713))))

(assert (=> d!1075844 (isPrefix!3165 lt!1274729 lt!1274713)))

(assert (=> d!1075844 (= (lemmaSamePrefixThenSameSuffix!1492 lt!1274729 (_2!22390 lt!1274714) lt!1274729 lt!1274723 lt!1274713) lt!1275027)))

(declare-fun bs!572751 () Bool)

(assert (= bs!572751 d!1075844))

(declare-fun m!4170715 () Bool)

(assert (=> bs!572751 m!4170715))

(assert (=> bs!572751 m!4169929))

(assert (=> b!3662981 d!1075844))

(declare-fun d!1075846 () Bool)

(assert (=> d!1075846 (= (seqFromList!4351 lt!1274729) (fromListB!2011 lt!1274729))))

(declare-fun bs!572752 () Bool)

(assert (= bs!572752 d!1075846))

(declare-fun m!4170717 () Bool)

(assert (=> bs!572752 m!4170717))

(assert (=> b!3662981 d!1075846))

(declare-fun d!1075848 () Bool)

(assert (=> d!1075848 (= (apply!9304 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))) (seqFromList!4351 lt!1274729)) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (seqFromList!4351 lt!1274729)))))

(declare-fun b_lambda!108707 () Bool)

(assert (=> (not b_lambda!108707) (not d!1075848)))

(declare-fun tb!211861 () Bool)

(declare-fun t!298876 () Bool)

(assert (=> (and b!3663012 (= (toValue!8094 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!298876) tb!211861))

(declare-fun result!257910 () Bool)

(assert (=> tb!211861 (= result!257910 (inv!21 (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (seqFromList!4351 lt!1274729))))))

(declare-fun m!4170719 () Bool)

(assert (=> tb!211861 m!4170719))

(assert (=> d!1075848 t!298876))

(declare-fun b_and!272219 () Bool)

(assert (= b_and!272211 (and (=> t!298876 result!257910) b_and!272219)))

(declare-fun tb!211863 () Bool)

(declare-fun t!298878 () Bool)

(assert (=> (and b!3663022 (= (toValue!8094 (transformation!5802 rule!403)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!298878) tb!211863))

(declare-fun result!257912 () Bool)

(assert (= result!257912 result!257910))

(assert (=> d!1075848 t!298878))

(declare-fun b_and!272221 () Bool)

(assert (= b_and!272213 (and (=> t!298878 result!257912) b_and!272221)))

(declare-fun tb!211865 () Bool)

(declare-fun t!298880 () Bool)

(assert (=> (and b!3662992 (= (toValue!8094 (transformation!5802 (rule!8618 token!511))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!298880) tb!211865))

(declare-fun result!257914 () Bool)

(assert (= result!257914 result!257910))

(assert (=> d!1075848 t!298880))

(declare-fun b_and!272223 () Bool)

(assert (= b_and!272215 (and (=> t!298880 result!257914) b_and!272223)))

(declare-fun t!298882 () Bool)

(declare-fun tb!211867 () Bool)

(assert (=> (and b!3662995 (= (toValue!8094 (transformation!5802 (h!44067 rules!3307))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!298882) tb!211867))

(declare-fun result!257916 () Bool)

(assert (= result!257916 result!257910))

(assert (=> d!1075848 t!298882))

(declare-fun b_and!272225 () Bool)

(assert (= b_and!272217 (and (=> t!298882 result!257916) b_and!272225)))

(assert (=> d!1075848 m!4169841))

(declare-fun m!4170721 () Bool)

(assert (=> d!1075848 m!4170721))

(assert (=> b!3662981 d!1075848))

(declare-fun d!1075850 () Bool)

(declare-fun lt!1275030 () List!38770)

(assert (=> d!1075850 (= (++!9618 lt!1274729 lt!1275030) lt!1274713)))

(declare-fun e!2268439 () List!38770)

(assert (=> d!1075850 (= lt!1275030 e!2268439)))

(declare-fun c!633250 () Bool)

(assert (=> d!1075850 (= c!633250 ((_ is Cons!38646) lt!1274729))))

(assert (=> d!1075850 (>= (size!29528 lt!1274713) (size!29528 lt!1274729))))

(assert (=> d!1075850 (= (getSuffix!1718 lt!1274713 lt!1274729) lt!1275030)))

(declare-fun b!3663560 () Bool)

(assert (=> b!3663560 (= e!2268439 (getSuffix!1718 (tail!5673 lt!1274713) (t!298753 lt!1274729)))))

(declare-fun b!3663561 () Bool)

(assert (=> b!3663561 (= e!2268439 lt!1274713)))

(assert (= (and d!1075850 c!633250) b!3663560))

(assert (= (and d!1075850 (not c!633250)) b!3663561))

(declare-fun m!4170723 () Bool)

(assert (=> d!1075850 m!4170723))

(assert (=> d!1075850 m!4170547))

(assert (=> d!1075850 m!4169845))

(assert (=> b!3663560 m!4170577))

(assert (=> b!3663560 m!4170577))

(declare-fun m!4170725 () Bool)

(assert (=> b!3663560 m!4170725))

(assert (=> b!3662981 d!1075850))

(declare-fun b!3663580 () Bool)

(declare-fun res!1487528 () Bool)

(declare-fun e!2268451 () Bool)

(assert (=> b!3663580 (=> (not res!1487528) (not e!2268451))))

(declare-fun lt!1275044 () Option!8232)

(assert (=> b!3663580 (= res!1487528 (= (rule!8618 (_1!22390 (get!12743 lt!1275044))) (rule!8618 (_1!22390 lt!1274714))))))

(declare-fun b!3663581 () Bool)

(declare-fun e!2268450 () Bool)

(assert (=> b!3663581 (= e!2268450 e!2268451)))

(declare-fun res!1487529 () Bool)

(assert (=> b!3663581 (=> (not res!1487529) (not e!2268451))))

(assert (=> b!3663581 (= res!1487529 (matchR!5130 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275044))))))))

(declare-fun b!3663582 () Bool)

(declare-fun e!2268448 () Option!8232)

(assert (=> b!3663582 (= e!2268448 None!8231)))

(declare-fun b!3663583 () Bool)

(declare-fun res!1487530 () Bool)

(assert (=> b!3663583 (=> (not res!1487530) (not e!2268451))))

(assert (=> b!3663583 (= res!1487530 (= (value!185817 (_1!22390 (get!12743 lt!1275044))) (apply!9304 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275044)))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 (get!12743 lt!1275044)))))))))

(declare-fun d!1075852 () Bool)

(assert (=> d!1075852 e!2268450))

(declare-fun res!1487531 () Bool)

(assert (=> d!1075852 (=> res!1487531 e!2268450)))

(assert (=> d!1075852 (= res!1487531 (isEmpty!22928 lt!1275044))))

(assert (=> d!1075852 (= lt!1275044 e!2268448)))

(declare-fun c!633253 () Bool)

(declare-datatypes ((tuple2!38518 0))(
  ( (tuple2!38519 (_1!22393 List!38770) (_2!22393 List!38770)) )
))
(declare-fun lt!1275042 () tuple2!38518)

(assert (=> d!1075852 (= c!633253 (isEmpty!22924 (_1!22393 lt!1275042)))))

(declare-fun findLongestMatch!986 (Regex!10561 List!38770) tuple2!38518)

(assert (=> d!1075852 (= lt!1275042 (findLongestMatch!986 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) lt!1274713))))

(assert (=> d!1075852 (ruleValid!2066 thiss!23823 (rule!8618 (_1!22390 lt!1274714)))))

(assert (=> d!1075852 (= (maxPrefixOneRule!2063 thiss!23823 (rule!8618 (_1!22390 lt!1274714)) lt!1274713) lt!1275044)))

(declare-fun b!3663584 () Bool)

(declare-fun e!2268449 () Bool)

(declare-fun findLongestMatchInner!1071 (Regex!10561 List!38770 Int List!38770 List!38770 Int) tuple2!38518)

(assert (=> b!3663584 (= e!2268449 (matchR!5130 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) (_1!22393 (findLongestMatchInner!1071 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) Nil!38646 (size!29528 Nil!38646) lt!1274713 lt!1274713 (size!29528 lt!1274713)))))))

(declare-fun b!3663585 () Bool)

(assert (=> b!3663585 (= e!2268451 (= (size!29527 (_1!22390 (get!12743 lt!1275044))) (size!29528 (originalCharacters!6516 (_1!22390 (get!12743 lt!1275044))))))))

(declare-fun b!3663586 () Bool)

(declare-fun res!1487527 () Bool)

(assert (=> b!3663586 (=> (not res!1487527) (not e!2268451))))

(assert (=> b!3663586 (= res!1487527 (< (size!29528 (_2!22390 (get!12743 lt!1275044))) (size!29528 lt!1274713)))))

(declare-fun b!3663587 () Bool)

(declare-fun res!1487526 () Bool)

(assert (=> b!3663587 (=> (not res!1487526) (not e!2268451))))

(assert (=> b!3663587 (= res!1487526 (= (++!9618 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275044)))) (_2!22390 (get!12743 lt!1275044))) lt!1274713))))

(declare-fun b!3663588 () Bool)

(assert (=> b!3663588 (= e!2268448 (Some!8231 (tuple2!38513 (Token!10971 (apply!9304 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))) (seqFromList!4351 (_1!22393 lt!1275042))) (rule!8618 (_1!22390 lt!1274714)) (size!29529 (seqFromList!4351 (_1!22393 lt!1275042))) (_1!22393 lt!1275042)) (_2!22393 lt!1275042))))))

(declare-fun lt!1275041 () Unit!55997)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1044 (Regex!10561 List!38770) Unit!55997)

(assert (=> b!3663588 (= lt!1275041 (longestMatchIsAcceptedByMatchOrIsEmpty!1044 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) lt!1274713))))

(declare-fun res!1487525 () Bool)

(assert (=> b!3663588 (= res!1487525 (isEmpty!22924 (_1!22393 (findLongestMatchInner!1071 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) Nil!38646 (size!29528 Nil!38646) lt!1274713 lt!1274713 (size!29528 lt!1274713)))))))

(assert (=> b!3663588 (=> res!1487525 e!2268449)))

(assert (=> b!3663588 e!2268449))

(declare-fun lt!1275045 () Unit!55997)

(assert (=> b!3663588 (= lt!1275045 lt!1275041)))

(declare-fun lt!1275043 () Unit!55997)

(assert (=> b!3663588 (= lt!1275043 (lemmaSemiInverse!1551 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))) (seqFromList!4351 (_1!22393 lt!1275042))))))

(assert (= (and d!1075852 c!633253) b!3663582))

(assert (= (and d!1075852 (not c!633253)) b!3663588))

(assert (= (and b!3663588 (not res!1487525)) b!3663584))

(assert (= (and d!1075852 (not res!1487531)) b!3663581))

(assert (= (and b!3663581 res!1487529) b!3663587))

(assert (= (and b!3663587 res!1487526) b!3663586))

(assert (= (and b!3663586 res!1487527) b!3663580))

(assert (= (and b!3663580 res!1487528) b!3663583))

(assert (= (and b!3663583 res!1487530) b!3663585))

(declare-fun m!4170727 () Bool)

(assert (=> b!3663585 m!4170727))

(declare-fun m!4170729 () Bool)

(assert (=> b!3663585 m!4170729))

(assert (=> b!3663587 m!4170727))

(declare-fun m!4170731 () Bool)

(assert (=> b!3663587 m!4170731))

(assert (=> b!3663587 m!4170731))

(declare-fun m!4170733 () Bool)

(assert (=> b!3663587 m!4170733))

(assert (=> b!3663587 m!4170733))

(declare-fun m!4170735 () Bool)

(assert (=> b!3663587 m!4170735))

(declare-fun m!4170737 () Bool)

(assert (=> d!1075852 m!4170737))

(declare-fun m!4170739 () Bool)

(assert (=> d!1075852 m!4170739))

(declare-fun m!4170741 () Bool)

(assert (=> d!1075852 m!4170741))

(declare-fun m!4170743 () Bool)

(assert (=> d!1075852 m!4170743))

(assert (=> b!3663581 m!4170727))

(assert (=> b!3663581 m!4170731))

(assert (=> b!3663581 m!4170731))

(assert (=> b!3663581 m!4170733))

(assert (=> b!3663581 m!4170733))

(declare-fun m!4170745 () Bool)

(assert (=> b!3663581 m!4170745))

(declare-fun m!4170747 () Bool)

(assert (=> b!3663588 m!4170747))

(declare-fun m!4170749 () Bool)

(assert (=> b!3663588 m!4170749))

(declare-fun m!4170751 () Bool)

(assert (=> b!3663588 m!4170751))

(assert (=> b!3663588 m!4170547))

(declare-fun m!4170753 () Bool)

(assert (=> b!3663588 m!4170753))

(assert (=> b!3663588 m!4170747))

(declare-fun m!4170755 () Bool)

(assert (=> b!3663588 m!4170755))

(assert (=> b!3663588 m!4170547))

(assert (=> b!3663588 m!4170747))

(assert (=> b!3663588 m!4170751))

(assert (=> b!3663588 m!4170747))

(declare-fun m!4170757 () Bool)

(assert (=> b!3663588 m!4170757))

(declare-fun m!4170759 () Bool)

(assert (=> b!3663588 m!4170759))

(declare-fun m!4170761 () Bool)

(assert (=> b!3663588 m!4170761))

(assert (=> b!3663586 m!4170727))

(declare-fun m!4170763 () Bool)

(assert (=> b!3663586 m!4170763))

(assert (=> b!3663586 m!4170547))

(assert (=> b!3663583 m!4170727))

(declare-fun m!4170765 () Bool)

(assert (=> b!3663583 m!4170765))

(assert (=> b!3663583 m!4170765))

(declare-fun m!4170767 () Bool)

(assert (=> b!3663583 m!4170767))

(assert (=> b!3663580 m!4170727))

(assert (=> b!3663584 m!4170751))

(assert (=> b!3663584 m!4170547))

(assert (=> b!3663584 m!4170751))

(assert (=> b!3663584 m!4170547))

(assert (=> b!3663584 m!4170753))

(declare-fun m!4170769 () Bool)

(assert (=> b!3663584 m!4170769))

(assert (=> b!3662981 d!1075852))

(declare-fun d!1075854 () Bool)

(assert (=> d!1075854 (= (maxPrefixOneRule!2063 thiss!23823 (rule!8618 (_1!22390 lt!1274714)) lt!1274713) (Some!8231 (tuple2!38513 (Token!10971 (apply!9304 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))) (seqFromList!4351 lt!1274729)) (rule!8618 (_1!22390 lt!1274714)) (size!29528 lt!1274729) lt!1274729) (_2!22390 lt!1274714))))))

(declare-fun lt!1275048 () Unit!55997)

(declare-fun choose!21724 (LexerInterface!5391 List!38771 List!38770 List!38770 List!38770 Rule!11404) Unit!55997)

(assert (=> d!1075854 (= lt!1275048 (choose!21724 thiss!23823 rules!3307 lt!1274729 lt!1274713 (_2!22390 lt!1274714) (rule!8618 (_1!22390 lt!1274714))))))

(assert (=> d!1075854 (not (isEmpty!22925 rules!3307))))

(assert (=> d!1075854 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1119 thiss!23823 rules!3307 lt!1274729 lt!1274713 (_2!22390 lt!1274714) (rule!8618 (_1!22390 lt!1274714))) lt!1275048)))

(declare-fun bs!572753 () Bool)

(assert (= bs!572753 d!1075854))

(assert (=> bs!572753 m!4169845))

(assert (=> bs!572753 m!4169841))

(assert (=> bs!572753 m!4169843))

(assert (=> bs!572753 m!4169847))

(declare-fun m!4170771 () Bool)

(assert (=> bs!572753 m!4170771))

(assert (=> bs!572753 m!4169841))

(assert (=> bs!572753 m!4169979))

(assert (=> b!3662981 d!1075854))

(declare-fun d!1075856 () Bool)

(assert (=> d!1075856 (= (isEmpty!22924 (_2!22390 lt!1274735)) ((_ is Nil!38646) (_2!22390 lt!1274735)))))

(assert (=> b!3663019 d!1075856))

(declare-fun b!3663592 () Bool)

(declare-fun e!2268452 () Bool)

(assert (=> b!3663592 (= e!2268452 (>= (size!29528 lt!1274731) (size!29528 lt!1274731)))))

(declare-fun b!3663591 () Bool)

(declare-fun e!2268454 () Bool)

(assert (=> b!3663591 (= e!2268454 (isPrefix!3165 (tail!5673 lt!1274731) (tail!5673 lt!1274731)))))

(declare-fun b!3663590 () Bool)

(declare-fun res!1487535 () Bool)

(assert (=> b!3663590 (=> (not res!1487535) (not e!2268454))))

(assert (=> b!3663590 (= res!1487535 (= (head!7834 lt!1274731) (head!7834 lt!1274731)))))

(declare-fun d!1075858 () Bool)

(assert (=> d!1075858 e!2268452))

(declare-fun res!1487533 () Bool)

(assert (=> d!1075858 (=> res!1487533 e!2268452)))

(declare-fun lt!1275049 () Bool)

(assert (=> d!1075858 (= res!1487533 (not lt!1275049))))

(declare-fun e!2268453 () Bool)

(assert (=> d!1075858 (= lt!1275049 e!2268453)))

(declare-fun res!1487534 () Bool)

(assert (=> d!1075858 (=> res!1487534 e!2268453)))

(assert (=> d!1075858 (= res!1487534 ((_ is Nil!38646) lt!1274731))))

(assert (=> d!1075858 (= (isPrefix!3165 lt!1274731 lt!1274731) lt!1275049)))

(declare-fun b!3663589 () Bool)

(assert (=> b!3663589 (= e!2268453 e!2268454)))

(declare-fun res!1487532 () Bool)

(assert (=> b!3663589 (=> (not res!1487532) (not e!2268454))))

(assert (=> b!3663589 (= res!1487532 (not ((_ is Nil!38646) lt!1274731)))))

(assert (= (and d!1075858 (not res!1487534)) b!3663589))

(assert (= (and b!3663589 res!1487532) b!3663590))

(assert (= (and b!3663590 res!1487535) b!3663591))

(assert (= (and d!1075858 (not res!1487533)) b!3663592))

(assert (=> b!3663592 m!4169895))

(assert (=> b!3663592 m!4169895))

(assert (=> b!3663591 m!4170575))

(assert (=> b!3663591 m!4170575))

(assert (=> b!3663591 m!4170575))

(assert (=> b!3663591 m!4170575))

(declare-fun m!4170773 () Bool)

(assert (=> b!3663591 m!4170773))

(assert (=> b!3663590 m!4170581))

(assert (=> b!3663590 m!4170581))

(assert (=> b!3663020 d!1075858))

(declare-fun d!1075860 () Bool)

(assert (=> d!1075860 (= (isEmpty!22924 lt!1274738) ((_ is Nil!38646) lt!1274738))))

(assert (=> b!3663020 d!1075860))

(declare-fun d!1075862 () Bool)

(declare-fun lt!1275050 () List!38770)

(assert (=> d!1075862 (= (++!9618 lt!1274731 lt!1275050) lt!1274731)))

(declare-fun e!2268455 () List!38770)

(assert (=> d!1075862 (= lt!1275050 e!2268455)))

(declare-fun c!633254 () Bool)

(assert (=> d!1075862 (= c!633254 ((_ is Cons!38646) lt!1274731))))

(assert (=> d!1075862 (>= (size!29528 lt!1274731) (size!29528 lt!1274731))))

(assert (=> d!1075862 (= (getSuffix!1718 lt!1274731 lt!1274731) lt!1275050)))

(declare-fun b!3663593 () Bool)

(assert (=> b!3663593 (= e!2268455 (getSuffix!1718 (tail!5673 lt!1274731) (t!298753 lt!1274731)))))

(declare-fun b!3663594 () Bool)

(assert (=> b!3663594 (= e!2268455 lt!1274731)))

(assert (= (and d!1075862 c!633254) b!3663593))

(assert (= (and d!1075862 (not c!633254)) b!3663594))

(declare-fun m!4170775 () Bool)

(assert (=> d!1075862 m!4170775))

(assert (=> d!1075862 m!4169895))

(assert (=> d!1075862 m!4169895))

(assert (=> b!3663593 m!4170575))

(assert (=> b!3663593 m!4170575))

(declare-fun m!4170777 () Bool)

(assert (=> b!3663593 m!4170777))

(assert (=> b!3663020 d!1075862))

(declare-fun d!1075864 () Bool)

(assert (=> d!1075864 (isEmpty!22924 (getSuffix!1718 lt!1274731 lt!1274731))))

(declare-fun lt!1275053 () Unit!55997)

(declare-fun choose!21726 (List!38770) Unit!55997)

(assert (=> d!1075864 (= lt!1275053 (choose!21726 lt!1274731))))

(assert (=> d!1075864 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!182 lt!1274731) lt!1275053)))

(declare-fun bs!572754 () Bool)

(assert (= bs!572754 d!1075864))

(assert (=> bs!572754 m!4169959))

(assert (=> bs!572754 m!4169959))

(declare-fun m!4170779 () Bool)

(assert (=> bs!572754 m!4170779))

(declare-fun m!4170781 () Bool)

(assert (=> bs!572754 m!4170781))

(assert (=> b!3663020 d!1075864))

(declare-fun d!1075866 () Bool)

(assert (=> d!1075866 (= (isEmpty!22924 suffix!1395) ((_ is Nil!38646) suffix!1395))))

(assert (=> b!3662998 d!1075866))

(assert (=> bm!264981 d!1075594))

(declare-fun d!1075868 () Bool)

(declare-fun lt!1275054 () Bool)

(assert (=> d!1075868 (= lt!1275054 (select (content!5591 rules!3307) rule!403))))

(declare-fun e!2268457 () Bool)

(assert (=> d!1075868 (= lt!1275054 e!2268457)))

(declare-fun res!1487537 () Bool)

(assert (=> d!1075868 (=> (not res!1487537) (not e!2268457))))

(assert (=> d!1075868 (= res!1487537 ((_ is Cons!38647) rules!3307))))

(assert (=> d!1075868 (= (contains!7670 rules!3307 rule!403) lt!1275054)))

(declare-fun b!3663595 () Bool)

(declare-fun e!2268456 () Bool)

(assert (=> b!3663595 (= e!2268457 e!2268456)))

(declare-fun res!1487536 () Bool)

(assert (=> b!3663595 (=> res!1487536 e!2268456)))

(assert (=> b!3663595 (= res!1487536 (= (h!44067 rules!3307) rule!403))))

(declare-fun b!3663596 () Bool)

(assert (=> b!3663596 (= e!2268456 (contains!7670 (t!298754 rules!3307) rule!403))))

(assert (= (and d!1075868 res!1487537) b!3663595))

(assert (= (and b!3663595 (not res!1487536)) b!3663596))

(assert (=> d!1075868 m!4170047))

(declare-fun m!4170783 () Bool)

(assert (=> d!1075868 m!4170783))

(declare-fun m!4170785 () Bool)

(assert (=> b!3663596 m!4170785))

(assert (=> b!3663018 d!1075868))

(declare-fun bm!265034 () Bool)

(declare-fun call!265039 () Bool)

(assert (=> bm!265034 (= call!265039 (isEmpty!22924 lt!1274729))))

(declare-fun b!3663637 () Bool)

(declare-fun e!2268481 () Bool)

(declare-fun derivativeStep!3224 (Regex!10561 C!21308) Regex!10561)

(assert (=> b!3663637 (= e!2268481 (matchR!5130 (derivativeStep!3224 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) (head!7834 lt!1274729)) (tail!5673 lt!1274729)))))

(declare-fun b!3663638 () Bool)

(declare-fun e!2268482 () Bool)

(assert (=> b!3663638 (= e!2268482 (not (= (head!7834 lt!1274729) (c!633134 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))))

(declare-fun d!1075870 () Bool)

(declare-fun e!2268479 () Bool)

(assert (=> d!1075870 e!2268479))

(declare-fun c!633264 () Bool)

(assert (=> d!1075870 (= c!633264 ((_ is EmptyExpr!10561) (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun lt!1275108 () Bool)

(assert (=> d!1075870 (= lt!1275108 e!2268481)))

(declare-fun c!633266 () Bool)

(assert (=> d!1075870 (= c!633266 (isEmpty!22924 lt!1274729))))

(assert (=> d!1075870 (validRegex!4836 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))

(assert (=> d!1075870 (= (matchR!5130 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) lt!1274729) lt!1275108)))

(declare-fun b!3663639 () Bool)

(declare-fun e!2268478 () Bool)

(assert (=> b!3663639 (= e!2268478 e!2268482)))

(declare-fun res!1487567 () Bool)

(assert (=> b!3663639 (=> res!1487567 e!2268482)))

(assert (=> b!3663639 (= res!1487567 call!265039)))

(declare-fun b!3663640 () Bool)

(declare-fun e!2268483 () Bool)

(assert (=> b!3663640 (= e!2268483 (= (head!7834 lt!1274729) (c!633134 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))))

(declare-fun b!3663641 () Bool)

(declare-fun res!1487562 () Bool)

(assert (=> b!3663641 (=> (not res!1487562) (not e!2268483))))

(assert (=> b!3663641 (= res!1487562 (not call!265039))))

(declare-fun b!3663642 () Bool)

(declare-fun e!2268484 () Bool)

(assert (=> b!3663642 (= e!2268484 e!2268478)))

(declare-fun res!1487564 () Bool)

(assert (=> b!3663642 (=> (not res!1487564) (not e!2268478))))

(assert (=> b!3663642 (= res!1487564 (not lt!1275108))))

(declare-fun b!3663643 () Bool)

(declare-fun e!2268480 () Bool)

(assert (=> b!3663643 (= e!2268480 (not lt!1275108))))

(declare-fun b!3663644 () Bool)

(assert (=> b!3663644 (= e!2268479 e!2268480)))

(declare-fun c!633265 () Bool)

(assert (=> b!3663644 (= c!633265 ((_ is EmptyLang!10561) (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun b!3663645 () Bool)

(declare-fun res!1487565 () Bool)

(assert (=> b!3663645 (=> res!1487565 e!2268482)))

(assert (=> b!3663645 (= res!1487565 (not (isEmpty!22924 (tail!5673 lt!1274729))))))

(declare-fun b!3663646 () Bool)

(declare-fun res!1487566 () Bool)

(assert (=> b!3663646 (=> res!1487566 e!2268484)))

(assert (=> b!3663646 (= res!1487566 (not ((_ is ElementMatch!10561) (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))))

(assert (=> b!3663646 (= e!2268480 e!2268484)))

(declare-fun b!3663647 () Bool)

(declare-fun res!1487563 () Bool)

(assert (=> b!3663647 (=> (not res!1487563) (not e!2268483))))

(assert (=> b!3663647 (= res!1487563 (isEmpty!22924 (tail!5673 lt!1274729)))))

(declare-fun b!3663648 () Bool)

(assert (=> b!3663648 (= e!2268479 (= lt!1275108 call!265039))))

(declare-fun b!3663649 () Bool)

(declare-fun nullable!3675 (Regex!10561) Bool)

(assert (=> b!3663649 (= e!2268481 (nullable!3675 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun b!3663650 () Bool)

(declare-fun res!1487561 () Bool)

(assert (=> b!3663650 (=> res!1487561 e!2268484)))

(assert (=> b!3663650 (= res!1487561 e!2268483)))

(declare-fun res!1487560 () Bool)

(assert (=> b!3663650 (=> (not res!1487560) (not e!2268483))))

(assert (=> b!3663650 (= res!1487560 lt!1275108)))

(assert (= (and d!1075870 c!633266) b!3663649))

(assert (= (and d!1075870 (not c!633266)) b!3663637))

(assert (= (and d!1075870 c!633264) b!3663648))

(assert (= (and d!1075870 (not c!633264)) b!3663644))

(assert (= (and b!3663644 c!633265) b!3663643))

(assert (= (and b!3663644 (not c!633265)) b!3663646))

(assert (= (and b!3663646 (not res!1487566)) b!3663650))

(assert (= (and b!3663650 res!1487560) b!3663641))

(assert (= (and b!3663641 res!1487562) b!3663647))

(assert (= (and b!3663647 res!1487563) b!3663640))

(assert (= (and b!3663650 (not res!1487561)) b!3663642))

(assert (= (and b!3663642 res!1487564) b!3663639))

(assert (= (and b!3663639 (not res!1487567)) b!3663645))

(assert (= (and b!3663645 (not res!1487565)) b!3663638))

(assert (= (or b!3663648 b!3663639 b!3663641) bm!265034))

(assert (=> b!3663645 m!4170211))

(assert (=> b!3663645 m!4170211))

(declare-fun m!4170837 () Bool)

(assert (=> b!3663645 m!4170837))

(assert (=> b!3663647 m!4170211))

(assert (=> b!3663647 m!4170211))

(assert (=> b!3663647 m!4170837))

(assert (=> b!3663640 m!4169919))

(assert (=> b!3663637 m!4169919))

(assert (=> b!3663637 m!4169919))

(declare-fun m!4170839 () Bool)

(assert (=> b!3663637 m!4170839))

(assert (=> b!3663637 m!4170211))

(assert (=> b!3663637 m!4170839))

(assert (=> b!3663637 m!4170211))

(declare-fun m!4170841 () Bool)

(assert (=> b!3663637 m!4170841))

(declare-fun m!4170843 () Bool)

(assert (=> b!3663649 m!4170843))

(assert (=> b!3663638 m!4169919))

(declare-fun m!4170845 () Bool)

(assert (=> d!1075870 m!4170845))

(assert (=> d!1075870 m!4170009))

(assert (=> bm!265034 m!4170845))

(assert (=> b!3662980 d!1075870))

(declare-fun d!1075876 () Bool)

(declare-fun lt!1275111 () Bool)

(assert (=> d!1075876 (= lt!1275111 (select (content!5591 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2268492 () Bool)

(assert (=> d!1075876 (= lt!1275111 e!2268492)))

(declare-fun res!1487577 () Bool)

(assert (=> d!1075876 (=> (not res!1487577) (not e!2268492))))

(assert (=> d!1075876 (= res!1487577 ((_ is Cons!38647) rules!3307))))

(assert (=> d!1075876 (= (contains!7670 rules!3307 anOtherTypeRule!33) lt!1275111)))

(declare-fun b!3663659 () Bool)

(declare-fun e!2268491 () Bool)

(assert (=> b!3663659 (= e!2268492 e!2268491)))

(declare-fun res!1487576 () Bool)

(assert (=> b!3663659 (=> res!1487576 e!2268491)))

(assert (=> b!3663659 (= res!1487576 (= (h!44067 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3663660 () Bool)

(assert (=> b!3663660 (= e!2268491 (contains!7670 (t!298754 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1075876 res!1487577) b!3663659))

(assert (= (and b!3663659 (not res!1487576)) b!3663660))

(assert (=> d!1075876 m!4170047))

(declare-fun m!4170855 () Bool)

(assert (=> d!1075876 m!4170855))

(declare-fun m!4170857 () Bool)

(assert (=> b!3663660 m!4170857))

(assert (=> b!3663001 d!1075876))

(declare-fun d!1075880 () Bool)

(declare-fun lt!1275112 () Bool)

(assert (=> d!1075880 (= lt!1275112 (select (content!5589 call!264986) lt!1274726))))

(declare-fun e!2268494 () Bool)

(assert (=> d!1075880 (= lt!1275112 e!2268494)))

(declare-fun res!1487578 () Bool)

(assert (=> d!1075880 (=> (not res!1487578) (not e!2268494))))

(assert (=> d!1075880 (= res!1487578 ((_ is Cons!38646) call!264986))))

(assert (=> d!1075880 (= (contains!7669 call!264986 lt!1274726) lt!1275112)))

(declare-fun b!3663661 () Bool)

(declare-fun e!2268493 () Bool)

(assert (=> b!3663661 (= e!2268494 e!2268493)))

(declare-fun res!1487579 () Bool)

(assert (=> b!3663661 (=> res!1487579 e!2268493)))

(assert (=> b!3663661 (= res!1487579 (= (h!44066 call!264986) lt!1274726))))

(declare-fun b!3663662 () Bool)

(assert (=> b!3663662 (= e!2268493 (contains!7669 (t!298753 call!264986) lt!1274726))))

(assert (= (and d!1075880 res!1487578) b!3663661))

(assert (= (and b!3663661 (not res!1487579)) b!3663662))

(declare-fun m!4170859 () Bool)

(assert (=> d!1075880 m!4170859))

(declare-fun m!4170861 () Bool)

(assert (=> d!1075880 m!4170861))

(declare-fun m!4170863 () Bool)

(assert (=> b!3663662 m!4170863))

(assert (=> bm!264978 d!1075880))

(declare-fun d!1075882 () Bool)

(assert (=> d!1075882 (= (isDefined!6464 lt!1274749) (not (isEmpty!22928 lt!1274749)))))

(declare-fun bs!572755 () Bool)

(assert (= bs!572755 d!1075882))

(declare-fun m!4170865 () Bool)

(assert (=> bs!572755 m!4170865))

(assert (=> b!3662983 d!1075882))

(declare-fun b!3663663 () Bool)

(declare-fun e!2268497 () Option!8232)

(declare-fun lt!1275113 () Option!8232)

(declare-fun lt!1275114 () Option!8232)

(assert (=> b!3663663 (= e!2268497 (ite (and ((_ is None!8231) lt!1275113) ((_ is None!8231) lt!1275114)) None!8231 (ite ((_ is None!8231) lt!1275114) lt!1275113 (ite ((_ is None!8231) lt!1275113) lt!1275114 (ite (>= (size!29527 (_1!22390 (v!38127 lt!1275113))) (size!29527 (_1!22390 (v!38127 lt!1275114)))) lt!1275113 lt!1275114)))))))

(declare-fun call!265040 () Option!8232)

(assert (=> b!3663663 (= lt!1275113 call!265040)))

(assert (=> b!3663663 (= lt!1275114 (maxPrefix!2925 thiss!23823 (t!298754 rules!3307) lt!1274731))))

(declare-fun b!3663664 () Bool)

(declare-fun e!2268496 () Bool)

(declare-fun lt!1275116 () Option!8232)

(assert (=> b!3663664 (= e!2268496 (contains!7670 rules!3307 (rule!8618 (_1!22390 (get!12743 lt!1275116)))))))

(declare-fun bm!265035 () Bool)

(assert (=> bm!265035 (= call!265040 (maxPrefixOneRule!2063 thiss!23823 (h!44067 rules!3307) lt!1274731))))

(declare-fun b!3663665 () Bool)

(declare-fun res!1487585 () Bool)

(assert (=> b!3663665 (=> (not res!1487585) (not e!2268496))))

(assert (=> b!3663665 (= res!1487585 (= (++!9618 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275116)))) (_2!22390 (get!12743 lt!1275116))) lt!1274731))))

(declare-fun b!3663666 () Bool)

(declare-fun res!1487583 () Bool)

(assert (=> b!3663666 (=> (not res!1487583) (not e!2268496))))

(assert (=> b!3663666 (= res!1487583 (= (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275116)))) (originalCharacters!6516 (_1!22390 (get!12743 lt!1275116)))))))

(declare-fun d!1075884 () Bool)

(declare-fun e!2268495 () Bool)

(assert (=> d!1075884 e!2268495))

(declare-fun res!1487584 () Bool)

(assert (=> d!1075884 (=> res!1487584 e!2268495)))

(assert (=> d!1075884 (= res!1487584 (isEmpty!22928 lt!1275116))))

(assert (=> d!1075884 (= lt!1275116 e!2268497)))

(declare-fun c!633267 () Bool)

(assert (=> d!1075884 (= c!633267 (and ((_ is Cons!38647) rules!3307) ((_ is Nil!38647) (t!298754 rules!3307))))))

(declare-fun lt!1275117 () Unit!55997)

(declare-fun lt!1275115 () Unit!55997)

(assert (=> d!1075884 (= lt!1275117 lt!1275115)))

(assert (=> d!1075884 (isPrefix!3165 lt!1274731 lt!1274731)))

(assert (=> d!1075884 (= lt!1275115 (lemmaIsPrefixRefl!1998 lt!1274731 lt!1274731))))

(assert (=> d!1075884 (rulesValidInductive!2061 thiss!23823 rules!3307)))

(assert (=> d!1075884 (= (maxPrefix!2925 thiss!23823 rules!3307 lt!1274731) lt!1275116)))

(declare-fun b!3663667 () Bool)

(assert (=> b!3663667 (= e!2268495 e!2268496)))

(declare-fun res!1487581 () Bool)

(assert (=> b!3663667 (=> (not res!1487581) (not e!2268496))))

(assert (=> b!3663667 (= res!1487581 (isDefined!6464 lt!1275116))))

(declare-fun b!3663668 () Bool)

(assert (=> b!3663668 (= e!2268497 call!265040)))

(declare-fun b!3663669 () Bool)

(declare-fun res!1487586 () Bool)

(assert (=> b!3663669 (=> (not res!1487586) (not e!2268496))))

(assert (=> b!3663669 (= res!1487586 (< (size!29528 (_2!22390 (get!12743 lt!1275116))) (size!29528 lt!1274731)))))

(declare-fun b!3663670 () Bool)

(declare-fun res!1487582 () Bool)

(assert (=> b!3663670 (=> (not res!1487582) (not e!2268496))))

(assert (=> b!3663670 (= res!1487582 (= (value!185817 (_1!22390 (get!12743 lt!1275116))) (apply!9304 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116)))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 (get!12743 lt!1275116)))))))))

(declare-fun b!3663671 () Bool)

(declare-fun res!1487580 () Bool)

(assert (=> b!3663671 (=> (not res!1487580) (not e!2268496))))

(assert (=> b!3663671 (= res!1487580 (matchR!5130 (regex!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116)))) (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275116))))))))

(assert (= (and d!1075884 c!633267) b!3663668))

(assert (= (and d!1075884 (not c!633267)) b!3663663))

(assert (= (or b!3663668 b!3663663) bm!265035))

(assert (= (and d!1075884 (not res!1487584)) b!3663667))

(assert (= (and b!3663667 res!1487581) b!3663666))

(assert (= (and b!3663666 res!1487583) b!3663669))

(assert (= (and b!3663669 res!1487586) b!3663665))

(assert (= (and b!3663665 res!1487585) b!3663670))

(assert (= (and b!3663670 res!1487582) b!3663671))

(assert (= (and b!3663671 res!1487580) b!3663664))

(declare-fun m!4170867 () Bool)

(assert (=> b!3663664 m!4170867))

(declare-fun m!4170869 () Bool)

(assert (=> b!3663664 m!4170869))

(assert (=> b!3663666 m!4170867))

(declare-fun m!4170871 () Bool)

(assert (=> b!3663666 m!4170871))

(assert (=> b!3663666 m!4170871))

(declare-fun m!4170873 () Bool)

(assert (=> b!3663666 m!4170873))

(assert (=> b!3663670 m!4170867))

(declare-fun m!4170875 () Bool)

(assert (=> b!3663670 m!4170875))

(assert (=> b!3663670 m!4170875))

(declare-fun m!4170877 () Bool)

(assert (=> b!3663670 m!4170877))

(assert (=> b!3663665 m!4170867))

(assert (=> b!3663665 m!4170871))

(assert (=> b!3663665 m!4170871))

(assert (=> b!3663665 m!4170873))

(assert (=> b!3663665 m!4170873))

(declare-fun m!4170879 () Bool)

(assert (=> b!3663665 m!4170879))

(assert (=> b!3663671 m!4170867))

(assert (=> b!3663671 m!4170871))

(assert (=> b!3663671 m!4170871))

(assert (=> b!3663671 m!4170873))

(assert (=> b!3663671 m!4170873))

(declare-fun m!4170881 () Bool)

(assert (=> b!3663671 m!4170881))

(assert (=> b!3663669 m!4170867))

(declare-fun m!4170883 () Bool)

(assert (=> b!3663669 m!4170883))

(assert (=> b!3663669 m!4169895))

(declare-fun m!4170885 () Bool)

(assert (=> d!1075884 m!4170885))

(assert (=> d!1075884 m!4169955))

(declare-fun m!4170887 () Bool)

(assert (=> d!1075884 m!4170887))

(assert (=> d!1075884 m!4170555))

(declare-fun m!4170889 () Bool)

(assert (=> bm!265035 m!4170889))

(declare-fun m!4170891 () Bool)

(assert (=> b!3663663 m!4170891))

(declare-fun m!4170893 () Bool)

(assert (=> b!3663667 m!4170893))

(assert (=> b!3662983 d!1075884))

(declare-fun d!1075886 () Bool)

(assert (=> d!1075886 (= (list!14340 lt!1274733) (list!14343 (c!633135 lt!1274733)))))

(declare-fun bs!572756 () Bool)

(assert (= bs!572756 d!1075886))

(declare-fun m!4170895 () Bool)

(assert (=> bs!572756 m!4170895))

(assert (=> b!3662983 d!1075886))

(declare-fun d!1075888 () Bool)

(declare-fun lt!1275118 () BalanceConc!23252)

(assert (=> d!1075888 (= (list!14340 lt!1275118) (originalCharacters!6516 token!511))))

(assert (=> d!1075888 (= lt!1275118 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 token!511))) (value!185817 token!511)))))

(assert (=> d!1075888 (= (charsOf!3816 token!511) lt!1275118)))

(declare-fun b_lambda!108709 () Bool)

(assert (=> (not b_lambda!108709) (not d!1075888)))

(assert (=> d!1075888 t!298756))

(declare-fun b_and!272227 () Bool)

(assert (= b_and!272179 (and (=> t!298756 result!257782) b_and!272227)))

(assert (=> d!1075888 t!298758))

(declare-fun b_and!272229 () Bool)

(assert (= b_and!272181 (and (=> t!298758 result!257786) b_and!272229)))

(assert (=> d!1075888 t!298760))

(declare-fun b_and!272231 () Bool)

(assert (= b_and!272183 (and (=> t!298760 result!257788) b_and!272231)))

(assert (=> d!1075888 t!298762))

(declare-fun b_and!272233 () Bool)

(assert (= b_and!272185 (and (=> t!298762 result!257790) b_and!272233)))

(declare-fun m!4170897 () Bool)

(assert (=> d!1075888 m!4170897))

(assert (=> d!1075888 m!4170041))

(assert (=> b!3662983 d!1075888))

(declare-fun d!1075890 () Bool)

(declare-fun lt!1275127 () Int)

(assert (=> d!1075890 (>= lt!1275127 0)))

(declare-fun e!2268511 () Int)

(assert (=> d!1075890 (= lt!1275127 e!2268511)))

(declare-fun c!633276 () Bool)

(assert (=> d!1075890 (= c!633276 (and ((_ is Cons!38647) rules!3307) (= (h!44067 rules!3307) (rule!8618 (_1!22390 lt!1274714)))))))

(assert (=> d!1075890 (contains!7670 rules!3307 (rule!8618 (_1!22390 lt!1274714)))))

(assert (=> d!1075890 (= (getIndex!470 rules!3307 (rule!8618 (_1!22390 lt!1274714))) lt!1275127)))

(declare-fun b!3663694 () Bool)

(declare-fun e!2268512 () Int)

(assert (=> b!3663694 (= e!2268512 (+ 1 (getIndex!470 (t!298754 rules!3307) (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun b!3663695 () Bool)

(assert (=> b!3663695 (= e!2268512 (- 1))))

(declare-fun b!3663692 () Bool)

(assert (=> b!3663692 (= e!2268511 0)))

(declare-fun b!3663693 () Bool)

(assert (=> b!3663693 (= e!2268511 e!2268512)))

(declare-fun c!633277 () Bool)

(assert (=> b!3663693 (= c!633277 (and ((_ is Cons!38647) rules!3307) (not (= (h!44067 rules!3307) (rule!8618 (_1!22390 lt!1274714))))))))

(assert (= (and d!1075890 c!633276) b!3663692))

(assert (= (and d!1075890 (not c!633276)) b!3663693))

(assert (= (and b!3663693 c!633277) b!3663694))

(assert (= (and b!3663693 (not c!633277)) b!3663695))

(assert (=> d!1075890 m!4169905))

(declare-fun m!4170899 () Bool)

(assert (=> b!3663694 m!4170899))

(assert (=> b!3662999 d!1075890))

(declare-fun d!1075892 () Bool)

(declare-fun lt!1275128 () Int)

(assert (=> d!1075892 (>= lt!1275128 0)))

(declare-fun e!2268513 () Int)

(assert (=> d!1075892 (= lt!1275128 e!2268513)))

(declare-fun c!633278 () Bool)

(assert (=> d!1075892 (= c!633278 (and ((_ is Cons!38647) rules!3307) (= (h!44067 rules!3307) rule!403)))))

(assert (=> d!1075892 (contains!7670 rules!3307 rule!403)))

(assert (=> d!1075892 (= (getIndex!470 rules!3307 rule!403) lt!1275128)))

(declare-fun b!3663698 () Bool)

(declare-fun e!2268514 () Int)

(assert (=> b!3663698 (= e!2268514 (+ 1 (getIndex!470 (t!298754 rules!3307) rule!403)))))

(declare-fun b!3663699 () Bool)

(assert (=> b!3663699 (= e!2268514 (- 1))))

(declare-fun b!3663696 () Bool)

(assert (=> b!3663696 (= e!2268513 0)))

(declare-fun b!3663697 () Bool)

(assert (=> b!3663697 (= e!2268513 e!2268514)))

(declare-fun c!633279 () Bool)

(assert (=> b!3663697 (= c!633279 (and ((_ is Cons!38647) rules!3307) (not (= (h!44067 rules!3307) rule!403))))))

(assert (= (and d!1075892 c!633278) b!3663696))

(assert (= (and d!1075892 (not c!633278)) b!3663697))

(assert (= (and b!3663697 c!633279) b!3663698))

(assert (= (and b!3663697 (not c!633279)) b!3663699))

(assert (=> d!1075892 m!4169967))

(declare-fun m!4170901 () Bool)

(assert (=> b!3663698 m!4170901))

(assert (=> b!3662999 d!1075892))

(declare-fun bm!265036 () Bool)

(declare-fun call!265041 () Bool)

(assert (=> bm!265036 (= call!265041 (isEmpty!22924 (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))))))

(declare-fun b!3663700 () Bool)

(declare-fun e!2268518 () Bool)

(assert (=> b!3663700 (= e!2268518 (matchR!5130 (derivativeStep!3224 (regex!5802 lt!1274756) (head!7834 (list!14340 (charsOf!3816 (_1!22390 lt!1274714))))) (tail!5673 (list!14340 (charsOf!3816 (_1!22390 lt!1274714))))))))

(declare-fun b!3663701 () Bool)

(declare-fun e!2268519 () Bool)

(assert (=> b!3663701 (= e!2268519 (not (= (head!7834 (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))) (c!633134 (regex!5802 lt!1274756)))))))

(declare-fun d!1075894 () Bool)

(declare-fun e!2268516 () Bool)

(assert (=> d!1075894 e!2268516))

(declare-fun c!633280 () Bool)

(assert (=> d!1075894 (= c!633280 ((_ is EmptyExpr!10561) (regex!5802 lt!1274756)))))

(declare-fun lt!1275129 () Bool)

(assert (=> d!1075894 (= lt!1275129 e!2268518)))

(declare-fun c!633282 () Bool)

(assert (=> d!1075894 (= c!633282 (isEmpty!22924 (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))))))

(assert (=> d!1075894 (validRegex!4836 (regex!5802 lt!1274756))))

(assert (=> d!1075894 (= (matchR!5130 (regex!5802 lt!1274756) (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))) lt!1275129)))

(declare-fun b!3663702 () Bool)

(declare-fun e!2268515 () Bool)

(assert (=> b!3663702 (= e!2268515 e!2268519)))

(declare-fun res!1487598 () Bool)

(assert (=> b!3663702 (=> res!1487598 e!2268519)))

(assert (=> b!3663702 (= res!1487598 call!265041)))

(declare-fun b!3663703 () Bool)

(declare-fun e!2268520 () Bool)

(assert (=> b!3663703 (= e!2268520 (= (head!7834 (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))) (c!633134 (regex!5802 lt!1274756))))))

(declare-fun b!3663704 () Bool)

(declare-fun res!1487593 () Bool)

(assert (=> b!3663704 (=> (not res!1487593) (not e!2268520))))

(assert (=> b!3663704 (= res!1487593 (not call!265041))))

(declare-fun b!3663705 () Bool)

(declare-fun e!2268521 () Bool)

(assert (=> b!3663705 (= e!2268521 e!2268515)))

(declare-fun res!1487595 () Bool)

(assert (=> b!3663705 (=> (not res!1487595) (not e!2268515))))

(assert (=> b!3663705 (= res!1487595 (not lt!1275129))))

(declare-fun b!3663706 () Bool)

(declare-fun e!2268517 () Bool)

(assert (=> b!3663706 (= e!2268517 (not lt!1275129))))

(declare-fun b!3663707 () Bool)

(assert (=> b!3663707 (= e!2268516 e!2268517)))

(declare-fun c!633281 () Bool)

(assert (=> b!3663707 (= c!633281 ((_ is EmptyLang!10561) (regex!5802 lt!1274756)))))

(declare-fun b!3663708 () Bool)

(declare-fun res!1487596 () Bool)

(assert (=> b!3663708 (=> res!1487596 e!2268519)))

(assert (=> b!3663708 (= res!1487596 (not (isEmpty!22924 (tail!5673 (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))))))))

(declare-fun b!3663709 () Bool)

(declare-fun res!1487597 () Bool)

(assert (=> b!3663709 (=> res!1487597 e!2268521)))

(assert (=> b!3663709 (= res!1487597 (not ((_ is ElementMatch!10561) (regex!5802 lt!1274756))))))

(assert (=> b!3663709 (= e!2268517 e!2268521)))

(declare-fun b!3663710 () Bool)

(declare-fun res!1487594 () Bool)

(assert (=> b!3663710 (=> (not res!1487594) (not e!2268520))))

(assert (=> b!3663710 (= res!1487594 (isEmpty!22924 (tail!5673 (list!14340 (charsOf!3816 (_1!22390 lt!1274714))))))))

(declare-fun b!3663711 () Bool)

(assert (=> b!3663711 (= e!2268516 (= lt!1275129 call!265041))))

(declare-fun b!3663712 () Bool)

(assert (=> b!3663712 (= e!2268518 (nullable!3675 (regex!5802 lt!1274756)))))

(declare-fun b!3663713 () Bool)

(declare-fun res!1487592 () Bool)

(assert (=> b!3663713 (=> res!1487592 e!2268521)))

(assert (=> b!3663713 (= res!1487592 e!2268520)))

(declare-fun res!1487591 () Bool)

(assert (=> b!3663713 (=> (not res!1487591) (not e!2268520))))

(assert (=> b!3663713 (= res!1487591 lt!1275129)))

(assert (= (and d!1075894 c!633282) b!3663712))

(assert (= (and d!1075894 (not c!633282)) b!3663700))

(assert (= (and d!1075894 c!633280) b!3663711))

(assert (= (and d!1075894 (not c!633280)) b!3663707))

(assert (= (and b!3663707 c!633281) b!3663706))

(assert (= (and b!3663707 (not c!633281)) b!3663709))

(assert (= (and b!3663709 (not res!1487597)) b!3663713))

(assert (= (and b!3663713 res!1487591) b!3663704))

(assert (= (and b!3663704 res!1487593) b!3663710))

(assert (= (and b!3663710 res!1487594) b!3663703))

(assert (= (and b!3663713 (not res!1487592)) b!3663705))

(assert (= (and b!3663705 res!1487595) b!3663702))

(assert (= (and b!3663702 (not res!1487598)) b!3663708))

(assert (= (and b!3663708 (not res!1487596)) b!3663701))

(assert (= (or b!3663711 b!3663702 b!3663704) bm!265036))

(assert (=> b!3663708 m!4169805))

(declare-fun m!4170903 () Bool)

(assert (=> b!3663708 m!4170903))

(assert (=> b!3663708 m!4170903))

(declare-fun m!4170905 () Bool)

(assert (=> b!3663708 m!4170905))

(assert (=> b!3663710 m!4169805))

(assert (=> b!3663710 m!4170903))

(assert (=> b!3663710 m!4170903))

(assert (=> b!3663710 m!4170905))

(assert (=> b!3663703 m!4169805))

(declare-fun m!4170909 () Bool)

(assert (=> b!3663703 m!4170909))

(assert (=> b!3663700 m!4169805))

(assert (=> b!3663700 m!4170909))

(assert (=> b!3663700 m!4170909))

(declare-fun m!4170915 () Bool)

(assert (=> b!3663700 m!4170915))

(assert (=> b!3663700 m!4169805))

(assert (=> b!3663700 m!4170903))

(assert (=> b!3663700 m!4170915))

(assert (=> b!3663700 m!4170903))

(declare-fun m!4170923 () Bool)

(assert (=> b!3663700 m!4170923))

(declare-fun m!4170925 () Bool)

(assert (=> b!3663712 m!4170925))

(assert (=> b!3663701 m!4169805))

(assert (=> b!3663701 m!4170909))

(assert (=> d!1075894 m!4169805))

(declare-fun m!4170927 () Bool)

(assert (=> d!1075894 m!4170927))

(declare-fun m!4170929 () Bool)

(assert (=> d!1075894 m!4170929))

(assert (=> bm!265036 m!4169805))

(assert (=> bm!265036 m!4170927))

(assert (=> b!3663021 d!1075894))

(declare-fun d!1075898 () Bool)

(assert (=> d!1075898 (= (list!14340 (charsOf!3816 (_1!22390 lt!1274714))) (list!14343 (c!633135 (charsOf!3816 (_1!22390 lt!1274714)))))))

(declare-fun bs!572758 () Bool)

(assert (= bs!572758 d!1075898))

(declare-fun m!4170933 () Bool)

(assert (=> bs!572758 m!4170933))

(assert (=> b!3663021 d!1075898))

(assert (=> b!3663021 d!1075676))

(declare-fun d!1075902 () Bool)

(assert (=> d!1075902 (= (get!12744 lt!1274712) (v!38128 lt!1274712))))

(assert (=> b!3663021 d!1075902))

(declare-fun d!1075906 () Bool)

(assert (=> d!1075906 (= (inv!52112 (tag!6584 (rule!8618 token!511))) (= (mod (str.len (value!185816 (tag!6584 (rule!8618 token!511)))) 2) 0))))

(assert (=> b!3663014 d!1075906))

(declare-fun d!1075908 () Bool)

(declare-fun res!1487601 () Bool)

(declare-fun e!2268526 () Bool)

(assert (=> d!1075908 (=> (not res!1487601) (not e!2268526))))

(assert (=> d!1075908 (= res!1487601 (semiInverseModEq!2475 (toChars!7953 (transformation!5802 (rule!8618 token!511))) (toValue!8094 (transformation!5802 (rule!8618 token!511)))))))

(assert (=> d!1075908 (= (inv!52115 (transformation!5802 (rule!8618 token!511))) e!2268526)))

(declare-fun b!3663720 () Bool)

(assert (=> b!3663720 (= e!2268526 (equivClasses!2374 (toChars!7953 (transformation!5802 (rule!8618 token!511))) (toValue!8094 (transformation!5802 (rule!8618 token!511)))))))

(assert (= (and d!1075908 res!1487601) b!3663720))

(declare-fun m!4170941 () Bool)

(assert (=> d!1075908 m!4170941))

(declare-fun m!4170943 () Bool)

(assert (=> b!3663720 m!4170943))

(assert (=> b!3663014 d!1075908))

(declare-fun d!1075912 () Bool)

(assert (=> d!1075912 (not (contains!7669 (usedCharacters!1014 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274726))))

(declare-fun lt!1275134 () Unit!55997)

(assert (=> d!1075912 (= lt!1275134 (choose!21720 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8618 (_1!22390 lt!1274714)) lt!1274726))))

(assert (=> d!1075912 (rulesInvariant!4788 thiss!23823 rules!3307)))

(assert (=> d!1075912 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!330 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8618 (_1!22390 lt!1274714)) lt!1274726) lt!1275134)))

(declare-fun bs!572761 () Bool)

(assert (= bs!572761 d!1075912))

(assert (=> bs!572761 m!4169821))

(assert (=> bs!572761 m!4169821))

(assert (=> bs!572761 m!4170705))

(declare-fun m!4170945 () Bool)

(assert (=> bs!572761 m!4170945))

(assert (=> bs!572761 m!4169877))

(assert (=> b!3663013 d!1075912))

(declare-fun d!1075914 () Bool)

(assert (=> d!1075914 (= (inv!52112 (tag!6584 anOtherTypeRule!33)) (= (mod (str.len (value!185816 (tag!6584 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3662994 d!1075914))

(declare-fun d!1075916 () Bool)

(declare-fun res!1487602 () Bool)

(declare-fun e!2268527 () Bool)

(assert (=> d!1075916 (=> (not res!1487602) (not e!2268527))))

(assert (=> d!1075916 (= res!1487602 (semiInverseModEq!2475 (toChars!7953 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 anOtherTypeRule!33))))))

(assert (=> d!1075916 (= (inv!52115 (transformation!5802 anOtherTypeRule!33)) e!2268527)))

(declare-fun b!3663721 () Bool)

(assert (=> b!3663721 (= e!2268527 (equivClasses!2374 (toChars!7953 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 anOtherTypeRule!33))))))

(assert (= (and d!1075916 res!1487602) b!3663721))

(declare-fun m!4170947 () Bool)

(assert (=> d!1075916 m!4170947))

(declare-fun m!4170949 () Bool)

(assert (=> b!3663721 m!4170949))

(assert (=> b!3662994 d!1075916))

(declare-fun bm!265037 () Bool)

(declare-fun call!265042 () Bool)

(assert (=> bm!265037 (= call!265042 (isEmpty!22924 lt!1274731))))

(declare-fun b!3663722 () Bool)

(declare-fun e!2268531 () Bool)

(assert (=> b!3663722 (= e!2268531 (matchR!5130 (derivativeStep!3224 (regex!5802 rule!403) (head!7834 lt!1274731)) (tail!5673 lt!1274731)))))

(declare-fun b!3663723 () Bool)

(declare-fun e!2268532 () Bool)

(assert (=> b!3663723 (= e!2268532 (not (= (head!7834 lt!1274731) (c!633134 (regex!5802 rule!403)))))))

(declare-fun d!1075918 () Bool)

(declare-fun e!2268529 () Bool)

(assert (=> d!1075918 e!2268529))

(declare-fun c!633285 () Bool)

(assert (=> d!1075918 (= c!633285 ((_ is EmptyExpr!10561) (regex!5802 rule!403)))))

(declare-fun lt!1275135 () Bool)

(assert (=> d!1075918 (= lt!1275135 e!2268531)))

(declare-fun c!633287 () Bool)

(assert (=> d!1075918 (= c!633287 (isEmpty!22924 lt!1274731))))

(assert (=> d!1075918 (validRegex!4836 (regex!5802 rule!403))))

(assert (=> d!1075918 (= (matchR!5130 (regex!5802 rule!403) lt!1274731) lt!1275135)))

(declare-fun b!3663724 () Bool)

(declare-fun e!2268528 () Bool)

(assert (=> b!3663724 (= e!2268528 e!2268532)))

(declare-fun res!1487610 () Bool)

(assert (=> b!3663724 (=> res!1487610 e!2268532)))

(assert (=> b!3663724 (= res!1487610 call!265042)))

(declare-fun b!3663725 () Bool)

(declare-fun e!2268533 () Bool)

(assert (=> b!3663725 (= e!2268533 (= (head!7834 lt!1274731) (c!633134 (regex!5802 rule!403))))))

(declare-fun b!3663726 () Bool)

(declare-fun res!1487605 () Bool)

(assert (=> b!3663726 (=> (not res!1487605) (not e!2268533))))

(assert (=> b!3663726 (= res!1487605 (not call!265042))))

(declare-fun b!3663727 () Bool)

(declare-fun e!2268534 () Bool)

(assert (=> b!3663727 (= e!2268534 e!2268528)))

(declare-fun res!1487607 () Bool)

(assert (=> b!3663727 (=> (not res!1487607) (not e!2268528))))

(assert (=> b!3663727 (= res!1487607 (not lt!1275135))))

(declare-fun b!3663728 () Bool)

(declare-fun e!2268530 () Bool)

(assert (=> b!3663728 (= e!2268530 (not lt!1275135))))

(declare-fun b!3663729 () Bool)

(assert (=> b!3663729 (= e!2268529 e!2268530)))

(declare-fun c!633286 () Bool)

(assert (=> b!3663729 (= c!633286 ((_ is EmptyLang!10561) (regex!5802 rule!403)))))

(declare-fun b!3663730 () Bool)

(declare-fun res!1487608 () Bool)

(assert (=> b!3663730 (=> res!1487608 e!2268532)))

(assert (=> b!3663730 (= res!1487608 (not (isEmpty!22924 (tail!5673 lt!1274731))))))

(declare-fun b!3663731 () Bool)

(declare-fun res!1487609 () Bool)

(assert (=> b!3663731 (=> res!1487609 e!2268534)))

(assert (=> b!3663731 (= res!1487609 (not ((_ is ElementMatch!10561) (regex!5802 rule!403))))))

(assert (=> b!3663731 (= e!2268530 e!2268534)))

(declare-fun b!3663732 () Bool)

(declare-fun res!1487606 () Bool)

(assert (=> b!3663732 (=> (not res!1487606) (not e!2268533))))

(assert (=> b!3663732 (= res!1487606 (isEmpty!22924 (tail!5673 lt!1274731)))))

(declare-fun b!3663733 () Bool)

(assert (=> b!3663733 (= e!2268529 (= lt!1275135 call!265042))))

(declare-fun b!3663734 () Bool)

(assert (=> b!3663734 (= e!2268531 (nullable!3675 (regex!5802 rule!403)))))

(declare-fun b!3663735 () Bool)

(declare-fun res!1487604 () Bool)

(assert (=> b!3663735 (=> res!1487604 e!2268534)))

(assert (=> b!3663735 (= res!1487604 e!2268533)))

(declare-fun res!1487603 () Bool)

(assert (=> b!3663735 (=> (not res!1487603) (not e!2268533))))

(assert (=> b!3663735 (= res!1487603 lt!1275135)))

(assert (= (and d!1075918 c!633287) b!3663734))

(assert (= (and d!1075918 (not c!633287)) b!3663722))

(assert (= (and d!1075918 c!633285) b!3663733))

(assert (= (and d!1075918 (not c!633285)) b!3663729))

(assert (= (and b!3663729 c!633286) b!3663728))

(assert (= (and b!3663729 (not c!633286)) b!3663731))

(assert (= (and b!3663731 (not res!1487609)) b!3663735))

(assert (= (and b!3663735 res!1487603) b!3663726))

(assert (= (and b!3663726 res!1487605) b!3663732))

(assert (= (and b!3663732 res!1487606) b!3663725))

(assert (= (and b!3663735 (not res!1487604)) b!3663727))

(assert (= (and b!3663727 res!1487607) b!3663724))

(assert (= (and b!3663724 (not res!1487610)) b!3663730))

(assert (= (and b!3663730 (not res!1487608)) b!3663723))

(assert (= (or b!3663733 b!3663724 b!3663726) bm!265037))

(assert (=> b!3663730 m!4170575))

(assert (=> b!3663730 m!4170575))

(declare-fun m!4170951 () Bool)

(assert (=> b!3663730 m!4170951))

(assert (=> b!3663732 m!4170575))

(assert (=> b!3663732 m!4170575))

(assert (=> b!3663732 m!4170951))

(assert (=> b!3663725 m!4170581))

(assert (=> b!3663722 m!4170581))

(assert (=> b!3663722 m!4170581))

(declare-fun m!4170953 () Bool)

(assert (=> b!3663722 m!4170953))

(assert (=> b!3663722 m!4170575))

(assert (=> b!3663722 m!4170953))

(assert (=> b!3663722 m!4170575))

(declare-fun m!4170955 () Bool)

(assert (=> b!3663722 m!4170955))

(declare-fun m!4170957 () Bool)

(assert (=> b!3663734 m!4170957))

(assert (=> b!3663723 m!4170581))

(assert (=> d!1075918 m!4169977))

(assert (=> d!1075918 m!4170013))

(assert (=> bm!265037 m!4169977))

(assert (=> b!3662993 d!1075918))

(declare-fun d!1075920 () Bool)

(declare-fun res!1487618 () Bool)

(declare-fun e!2268546 () Bool)

(assert (=> d!1075920 (=> (not res!1487618) (not e!2268546))))

(assert (=> d!1075920 (= res!1487618 (validRegex!4836 (regex!5802 rule!403)))))

(assert (=> d!1075920 (= (ruleValid!2066 thiss!23823 rule!403) e!2268546)))

(declare-fun b!3663755 () Bool)

(declare-fun res!1487619 () Bool)

(assert (=> b!3663755 (=> (not res!1487619) (not e!2268546))))

(assert (=> b!3663755 (= res!1487619 (not (nullable!3675 (regex!5802 rule!403))))))

(declare-fun b!3663756 () Bool)

(assert (=> b!3663756 (= e!2268546 (not (= (tag!6584 rule!403) (String!43495 ""))))))

(assert (= (and d!1075920 res!1487618) b!3663755))

(assert (= (and b!3663755 res!1487619) b!3663756))

(assert (=> d!1075920 m!4170013))

(assert (=> b!3663755 m!4170957))

(assert (=> b!3662993 d!1075920))

(declare-fun d!1075922 () Bool)

(assert (=> d!1075922 (ruleValid!2066 thiss!23823 rule!403)))

(declare-fun lt!1275138 () Unit!55997)

(declare-fun choose!21727 (LexerInterface!5391 Rule!11404 List!38771) Unit!55997)

(assert (=> d!1075922 (= lt!1275138 (choose!21727 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1075922 (contains!7670 rules!3307 rule!403)))

(assert (=> d!1075922 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1220 thiss!23823 rule!403 rules!3307) lt!1275138)))

(declare-fun bs!572762 () Bool)

(assert (= bs!572762 d!1075922))

(assert (=> bs!572762 m!4169867))

(declare-fun m!4170965 () Bool)

(assert (=> bs!572762 m!4170965))

(assert (=> bs!572762 m!4169967))

(assert (=> b!3662993 d!1075922))

(declare-fun d!1075924 () Bool)

(assert (=> d!1075924 (not (matchR!5130 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) lt!1274729))))

(declare-fun lt!1275139 () Unit!55997)

(assert (=> d!1075924 (= lt!1275139 (choose!21705 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) lt!1274729 lt!1274732))))

(assert (=> d!1075924 (validRegex!4836 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))

(assert (=> d!1075924 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!750 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) lt!1274729 lt!1274732) lt!1275139)))

(declare-fun bs!572763 () Bool)

(assert (= bs!572763 d!1075924))

(assert (=> bs!572763 m!4169921))

(declare-fun m!4170967 () Bool)

(assert (=> bs!572763 m!4170967))

(assert (=> bs!572763 m!4170009))

(assert (=> bm!264980 d!1075924))

(declare-fun d!1075926 () Bool)

(assert (=> d!1075926 (= (isEmpty!22924 lt!1274731) ((_ is Nil!38646) lt!1274731))))

(assert (=> b!3662997 d!1075926))

(declare-fun d!1075928 () Bool)

(declare-fun lt!1275140 () Bool)

(assert (=> d!1075928 (= lt!1275140 (select (content!5589 (usedCharacters!1014 (regex!5802 anOtherTypeRule!33))) lt!1274726))))

(declare-fun e!2268564 () Bool)

(assert (=> d!1075928 (= lt!1275140 e!2268564)))

(declare-fun res!1487620 () Bool)

(assert (=> d!1075928 (=> (not res!1487620) (not e!2268564))))

(assert (=> d!1075928 (= res!1487620 ((_ is Cons!38646) (usedCharacters!1014 (regex!5802 anOtherTypeRule!33))))))

(assert (=> d!1075928 (= (contains!7669 (usedCharacters!1014 (regex!5802 anOtherTypeRule!33)) lt!1274726) lt!1275140)))

(declare-fun b!3663795 () Bool)

(declare-fun e!2268563 () Bool)

(assert (=> b!3663795 (= e!2268564 e!2268563)))

(declare-fun res!1487621 () Bool)

(assert (=> b!3663795 (=> res!1487621 e!2268563)))

(assert (=> b!3663795 (= res!1487621 (= (h!44066 (usedCharacters!1014 (regex!5802 anOtherTypeRule!33))) lt!1274726))))

(declare-fun b!3663796 () Bool)

(assert (=> b!3663796 (= e!2268563 (contains!7669 (t!298753 (usedCharacters!1014 (regex!5802 anOtherTypeRule!33))) lt!1274726))))

(assert (= (and d!1075928 res!1487620) b!3663795))

(assert (= (and b!3663795 (not res!1487621)) b!3663796))

(assert (=> d!1075928 m!4169857))

(declare-fun m!4170969 () Bool)

(assert (=> d!1075928 m!4170969))

(declare-fun m!4170971 () Bool)

(assert (=> d!1075928 m!4170971))

(declare-fun m!4170973 () Bool)

(assert (=> b!3663796 m!4170973))

(assert (=> b!3663017 d!1075928))

(declare-fun b!3663799 () Bool)

(declare-fun c!633296 () Bool)

(assert (=> b!3663799 (= c!633296 ((_ is Star!10561) (regex!5802 anOtherTypeRule!33)))))

(declare-fun e!2268568 () List!38770)

(declare-fun e!2268570 () List!38770)

(assert (=> b!3663799 (= e!2268568 e!2268570)))

(declare-fun b!3663800 () Bool)

(assert (=> b!3663800 (= e!2268568 (Cons!38646 (c!633134 (regex!5802 anOtherTypeRule!33)) Nil!38646))))

(declare-fun b!3663801 () Bool)

(declare-fun e!2268567 () List!38770)

(assert (=> b!3663801 (= e!2268570 e!2268567)))

(declare-fun c!633295 () Bool)

(assert (=> b!3663801 (= c!633295 ((_ is Union!10561) (regex!5802 anOtherTypeRule!33)))))

(declare-fun bm!265038 () Bool)

(declare-fun call!265044 () List!38770)

(assert (=> bm!265038 (= call!265044 (usedCharacters!1014 (ite c!633295 (regOne!21635 (regex!5802 anOtherTypeRule!33)) (regTwo!21634 (regex!5802 anOtherTypeRule!33)))))))

(declare-fun b!3663802 () Bool)

(declare-fun call!265045 () List!38770)

(assert (=> b!3663802 (= e!2268570 call!265045)))

(declare-fun b!3663803 () Bool)

(declare-fun e!2268569 () List!38770)

(assert (=> b!3663803 (= e!2268569 Nil!38646)))

(declare-fun call!265046 () List!38770)

(declare-fun call!265043 () List!38770)

(declare-fun bm!265040 () Bool)

(assert (=> bm!265040 (= call!265043 (++!9618 (ite c!633295 call!265044 call!265046) (ite c!633295 call!265046 call!265044)))))

(declare-fun b!3663804 () Bool)

(assert (=> b!3663804 (= e!2268567 call!265043)))

(declare-fun b!3663805 () Bool)

(assert (=> b!3663805 (= e!2268567 call!265043)))

(declare-fun bm!265039 () Bool)

(assert (=> bm!265039 (= call!265046 call!265045)))

(declare-fun d!1075930 () Bool)

(declare-fun c!633294 () Bool)

(assert (=> d!1075930 (= c!633294 (or ((_ is EmptyExpr!10561) (regex!5802 anOtherTypeRule!33)) ((_ is EmptyLang!10561) (regex!5802 anOtherTypeRule!33))))))

(assert (=> d!1075930 (= (usedCharacters!1014 (regex!5802 anOtherTypeRule!33)) e!2268569)))

(declare-fun b!3663806 () Bool)

(assert (=> b!3663806 (= e!2268569 e!2268568)))

(declare-fun c!633297 () Bool)

(assert (=> b!3663806 (= c!633297 ((_ is ElementMatch!10561) (regex!5802 anOtherTypeRule!33)))))

(declare-fun bm!265041 () Bool)

(assert (=> bm!265041 (= call!265045 (usedCharacters!1014 (ite c!633296 (reg!10890 (regex!5802 anOtherTypeRule!33)) (ite c!633295 (regTwo!21635 (regex!5802 anOtherTypeRule!33)) (regOne!21634 (regex!5802 anOtherTypeRule!33))))))))

(assert (= (and d!1075930 c!633294) b!3663803))

(assert (= (and d!1075930 (not c!633294)) b!3663806))

(assert (= (and b!3663806 c!633297) b!3663800))

(assert (= (and b!3663806 (not c!633297)) b!3663799))

(assert (= (and b!3663799 c!633296) b!3663802))

(assert (= (and b!3663799 (not c!633296)) b!3663801))

(assert (= (and b!3663801 c!633295) b!3663804))

(assert (= (and b!3663801 (not c!633295)) b!3663805))

(assert (= (or b!3663804 b!3663805) bm!265038))

(assert (= (or b!3663804 b!3663805) bm!265039))

(assert (= (or b!3663804 b!3663805) bm!265040))

(assert (= (or b!3663802 bm!265039) bm!265041))

(declare-fun m!4170975 () Bool)

(assert (=> bm!265038 m!4170975))

(declare-fun m!4170977 () Bool)

(assert (=> bm!265040 m!4170977))

(declare-fun m!4170979 () Bool)

(assert (=> bm!265041 m!4170979))

(assert (=> b!3663017 d!1075930))

(declare-fun d!1075932 () Bool)

(declare-fun res!1487626 () Bool)

(declare-fun e!2268579 () Bool)

(assert (=> d!1075932 (=> res!1487626 e!2268579)))

(assert (=> d!1075932 (= res!1487626 (not ((_ is Cons!38647) rules!3307)))))

(assert (=> d!1075932 (= (sepAndNonSepRulesDisjointChars!1970 rules!3307 rules!3307) e!2268579)))

(declare-fun b!3663814 () Bool)

(declare-fun e!2268580 () Bool)

(assert (=> b!3663814 (= e!2268579 e!2268580)))

(declare-fun res!1487627 () Bool)

(assert (=> b!3663814 (=> (not res!1487627) (not e!2268580))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!899 (Rule!11404 List!38771) Bool)

(assert (=> b!3663814 (= res!1487627 (ruleDisjointCharsFromAllFromOtherType!899 (h!44067 rules!3307) rules!3307))))

(declare-fun b!3663815 () Bool)

(assert (=> b!3663815 (= e!2268580 (sepAndNonSepRulesDisjointChars!1970 rules!3307 (t!298754 rules!3307)))))

(assert (= (and d!1075932 (not res!1487626)) b!3663814))

(assert (= (and b!3663814 res!1487627) b!3663815))

(declare-fun m!4170985 () Bool)

(assert (=> b!3663814 m!4170985))

(declare-fun m!4170987 () Bool)

(assert (=> b!3663815 m!4170987))

(assert (=> b!3662996 d!1075932))

(declare-fun b!3663827 () Bool)

(declare-fun e!2268583 () Bool)

(declare-fun tp!1115613 () Bool)

(declare-fun tp!1115614 () Bool)

(assert (=> b!3663827 (= e!2268583 (and tp!1115613 tp!1115614))))

(declare-fun b!3663829 () Bool)

(declare-fun tp!1115615 () Bool)

(declare-fun tp!1115611 () Bool)

(assert (=> b!3663829 (= e!2268583 (and tp!1115615 tp!1115611))))

(declare-fun b!3663828 () Bool)

(declare-fun tp!1115612 () Bool)

(assert (=> b!3663828 (= e!2268583 tp!1115612)))

(declare-fun b!3663826 () Bool)

(assert (=> b!3663826 (= e!2268583 tp_is_empty!18205)))

(assert (=> b!3663014 (= tp!1115532 e!2268583)))

(assert (= (and b!3663014 ((_ is ElementMatch!10561) (regex!5802 (rule!8618 token!511)))) b!3663826))

(assert (= (and b!3663014 ((_ is Concat!16594) (regex!5802 (rule!8618 token!511)))) b!3663827))

(assert (= (and b!3663014 ((_ is Star!10561) (regex!5802 (rule!8618 token!511)))) b!3663828))

(assert (= (and b!3663014 ((_ is Union!10561) (regex!5802 (rule!8618 token!511)))) b!3663829))

(declare-fun b!3663834 () Bool)

(declare-fun e!2268586 () Bool)

(declare-fun tp!1115618 () Bool)

(assert (=> b!3663834 (= e!2268586 (and tp_is_empty!18205 tp!1115618))))

(assert (=> b!3663008 (= tp!1115528 e!2268586)))

(assert (= (and b!3663008 ((_ is Cons!38646) (originalCharacters!6516 token!511))) b!3663834))

(declare-fun b!3663836 () Bool)

(declare-fun e!2268587 () Bool)

(declare-fun tp!1115621 () Bool)

(declare-fun tp!1115622 () Bool)

(assert (=> b!3663836 (= e!2268587 (and tp!1115621 tp!1115622))))

(declare-fun b!3663838 () Bool)

(declare-fun tp!1115623 () Bool)

(declare-fun tp!1115619 () Bool)

(assert (=> b!3663838 (= e!2268587 (and tp!1115623 tp!1115619))))

(declare-fun b!3663837 () Bool)

(declare-fun tp!1115620 () Bool)

(assert (=> b!3663837 (= e!2268587 tp!1115620)))

(declare-fun b!3663835 () Bool)

(assert (=> b!3663835 (= e!2268587 tp_is_empty!18205)))

(assert (=> b!3662994 (= tp!1115538 e!2268587)))

(assert (= (and b!3662994 ((_ is ElementMatch!10561) (regex!5802 anOtherTypeRule!33))) b!3663835))

(assert (= (and b!3662994 ((_ is Concat!16594) (regex!5802 anOtherTypeRule!33))) b!3663836))

(assert (= (and b!3662994 ((_ is Star!10561) (regex!5802 anOtherTypeRule!33))) b!3663837))

(assert (= (and b!3662994 ((_ is Union!10561) (regex!5802 anOtherTypeRule!33))) b!3663838))

(declare-fun b!3663840 () Bool)

(declare-fun e!2268588 () Bool)

(declare-fun tp!1115626 () Bool)

(declare-fun tp!1115627 () Bool)

(assert (=> b!3663840 (= e!2268588 (and tp!1115626 tp!1115627))))

(declare-fun b!3663842 () Bool)

(declare-fun tp!1115628 () Bool)

(declare-fun tp!1115624 () Bool)

(assert (=> b!3663842 (= e!2268588 (and tp!1115628 tp!1115624))))

(declare-fun b!3663841 () Bool)

(declare-fun tp!1115625 () Bool)

(assert (=> b!3663841 (= e!2268588 tp!1115625)))

(declare-fun b!3663839 () Bool)

(assert (=> b!3663839 (= e!2268588 tp_is_empty!18205)))

(assert (=> b!3663023 (= tp!1115537 e!2268588)))

(assert (= (and b!3663023 ((_ is ElementMatch!10561) (regex!5802 rule!403))) b!3663839))

(assert (= (and b!3663023 ((_ is Concat!16594) (regex!5802 rule!403))) b!3663840))

(assert (= (and b!3663023 ((_ is Star!10561) (regex!5802 rule!403))) b!3663841))

(assert (= (and b!3663023 ((_ is Union!10561) (regex!5802 rule!403))) b!3663842))

(declare-fun b!3663843 () Bool)

(declare-fun e!2268589 () Bool)

(declare-fun tp!1115629 () Bool)

(assert (=> b!3663843 (= e!2268589 (and tp_is_empty!18205 tp!1115629))))

(assert (=> b!3663028 (= tp!1115542 e!2268589)))

(assert (= (and b!3663028 ((_ is Cons!38646) (t!298753 suffix!1395))) b!3663843))

(declare-fun b!3663845 () Bool)

(declare-fun e!2268590 () Bool)

(declare-fun tp!1115632 () Bool)

(declare-fun tp!1115633 () Bool)

(assert (=> b!3663845 (= e!2268590 (and tp!1115632 tp!1115633))))

(declare-fun b!3663847 () Bool)

(declare-fun tp!1115634 () Bool)

(declare-fun tp!1115630 () Bool)

(assert (=> b!3663847 (= e!2268590 (and tp!1115634 tp!1115630))))

(declare-fun b!3663846 () Bool)

(declare-fun tp!1115631 () Bool)

(assert (=> b!3663846 (= e!2268590 tp!1115631)))

(declare-fun b!3663844 () Bool)

(assert (=> b!3663844 (= e!2268590 tp_is_empty!18205)))

(assert (=> b!3663005 (= tp!1115531 e!2268590)))

(assert (= (and b!3663005 ((_ is ElementMatch!10561) (regex!5802 (h!44067 rules!3307)))) b!3663844))

(assert (= (and b!3663005 ((_ is Concat!16594) (regex!5802 (h!44067 rules!3307)))) b!3663845))

(assert (= (and b!3663005 ((_ is Star!10561) (regex!5802 (h!44067 rules!3307)))) b!3663846))

(assert (= (and b!3663005 ((_ is Union!10561) (regex!5802 (h!44067 rules!3307)))) b!3663847))

(declare-fun b!3663858 () Bool)

(declare-fun b_free!96709 () Bool)

(declare-fun b_next!97413 () Bool)

(assert (=> b!3663858 (= b_free!96709 (not b_next!97413))))

(declare-fun tb!211885 () Bool)

(declare-fun t!298900 () Bool)

(assert (=> (and b!3663858 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!298900) tb!211885))

(declare-fun result!257946 () Bool)

(assert (= result!257946 result!257902))

(assert (=> d!1075798 t!298900))

(declare-fun tb!211887 () Bool)

(declare-fun t!298902 () Bool)

(assert (=> (and b!3663858 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!298902) tb!211887))

(declare-fun result!257948 () Bool)

(assert (= result!257948 result!257910))

(assert (=> d!1075848 t!298902))

(declare-fun tb!211889 () Bool)

(declare-fun t!298904 () Bool)

(assert (=> (and b!3663858 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!298904) tb!211889))

(declare-fun result!257950 () Bool)

(assert (= result!257950 result!257894))

(assert (=> d!1075806 t!298904))

(assert (=> d!1075798 t!298904))

(declare-fun t!298906 () Bool)

(declare-fun tb!211891 () Bool)

(assert (=> (and b!3663858 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toValue!8094 (transformation!5802 rule!403))) t!298906) tb!211891))

(declare-fun result!257952 () Bool)

(assert (= result!257952 result!257792))

(assert (=> d!1075602 t!298906))

(assert (=> d!1075792 t!298904))

(assert (=> d!1075606 t!298906))

(declare-fun b_and!272239 () Bool)

(declare-fun tp!1115646 () Bool)

(assert (=> b!3663858 (= tp!1115646 (and (=> t!298906 result!257952) (=> t!298904 result!257950) (=> t!298902 result!257948) (=> t!298900 result!257946) b_and!272239))))

(declare-fun b_free!96711 () Bool)

(declare-fun b_next!97415 () Bool)

(assert (=> b!3663858 (= b_free!96711 (not b_next!97415))))

(declare-fun t!298908 () Bool)

(declare-fun tb!211893 () Bool)

(assert (=> (and b!3663858 (= (toChars!7953 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!298908) tb!211893))

(declare-fun result!257954 () Bool)

(assert (= result!257954 result!257886))

(assert (=> d!1075792 t!298908))

(declare-fun tb!211895 () Bool)

(declare-fun t!298910 () Bool)

(assert (=> (and b!3663858 (= (toChars!7953 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!298910) tb!211895))

(declare-fun result!257956 () Bool)

(assert (= result!257956 result!257846))

(assert (=> d!1075676 t!298910))

(declare-fun tb!211897 () Bool)

(declare-fun t!298912 () Bool)

(assert (=> (and b!3663858 (= (toChars!7953 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toChars!7953 (transformation!5802 rule!403))) t!298912) tb!211897))

(declare-fun result!257958 () Bool)

(assert (= result!257958 result!257830))

(assert (=> d!1075606 t!298912))

(declare-fun tb!211899 () Bool)

(declare-fun t!298914 () Bool)

(assert (=> (and b!3663858 (= (toChars!7953 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toChars!7953 (transformation!5802 (rule!8618 token!511)))) t!298914) tb!211899))

(declare-fun result!257960 () Bool)

(assert (= result!257960 result!257782))

(assert (=> b!3663110 t!298914))

(assert (=> d!1075888 t!298914))

(declare-fun tp!1115643 () Bool)

(declare-fun b_and!272241 () Bool)

(assert (=> b!3663858 (= tp!1115643 (and (=> t!298908 result!257954) (=> t!298910 result!257956) (=> t!298912 result!257958) (=> t!298914 result!257960) b_and!272241))))

(declare-fun e!2268601 () Bool)

(assert (=> b!3663858 (= e!2268601 (and tp!1115646 tp!1115643))))

(declare-fun b!3663857 () Bool)

(declare-fun e!2268599 () Bool)

(declare-fun tp!1115644 () Bool)

(assert (=> b!3663857 (= e!2268599 (and tp!1115644 (inv!52112 (tag!6584 (h!44067 (t!298754 rules!3307)))) (inv!52115 (transformation!5802 (h!44067 (t!298754 rules!3307)))) e!2268601))))

(declare-fun b!3663856 () Bool)

(declare-fun e!2268600 () Bool)

(declare-fun tp!1115645 () Bool)

(assert (=> b!3663856 (= e!2268600 (and e!2268599 tp!1115645))))

(assert (=> b!3662982 (= tp!1115534 e!2268600)))

(assert (= b!3663857 b!3663858))

(assert (= b!3663856 b!3663857))

(assert (= (and b!3662982 ((_ is Cons!38647) (t!298754 rules!3307))) b!3663856))

(declare-fun m!4170989 () Bool)

(assert (=> b!3663857 m!4170989))

(declare-fun m!4170991 () Bool)

(assert (=> b!3663857 m!4170991))

(declare-fun b_lambda!108721 () Bool)

(assert (= b_lambda!108709 (or (and b!3663858 b_free!96711 (= (toChars!7953 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toChars!7953 (transformation!5802 (rule!8618 token!511))))) (and b!3662992 b_free!96699) (and b!3662995 b_free!96703 (= (toChars!7953 (transformation!5802 (h!44067 rules!3307))) (toChars!7953 (transformation!5802 (rule!8618 token!511))))) (and b!3663022 b_free!96695 (= (toChars!7953 (transformation!5802 rule!403)) (toChars!7953 (transformation!5802 (rule!8618 token!511))))) (and b!3663012 b_free!96691 (= (toChars!7953 (transformation!5802 anOtherTypeRule!33)) (toChars!7953 (transformation!5802 (rule!8618 token!511))))) b_lambda!108721)))

(declare-fun b_lambda!108723 () Bool)

(assert (= b_lambda!108677 (or (and b!3662995 b_free!96703 (= (toChars!7953 (transformation!5802 (h!44067 rules!3307))) (toChars!7953 (transformation!5802 rule!403)))) (and b!3663022 b_free!96695) (and b!3663012 b_free!96691 (= (toChars!7953 (transformation!5802 anOtherTypeRule!33)) (toChars!7953 (transformation!5802 rule!403)))) (and b!3662992 b_free!96699 (= (toChars!7953 (transformation!5802 (rule!8618 token!511))) (toChars!7953 (transformation!5802 rule!403)))) (and b!3663858 b_free!96711 (= (toChars!7953 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toChars!7953 (transformation!5802 rule!403)))) b_lambda!108723)))

(declare-fun b_lambda!108725 () Bool)

(assert (= b_lambda!108663 (or (and b!3663858 b_free!96711 (= (toChars!7953 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toChars!7953 (transformation!5802 (rule!8618 token!511))))) (and b!3662992 b_free!96699) (and b!3662995 b_free!96703 (= (toChars!7953 (transformation!5802 (h!44067 rules!3307))) (toChars!7953 (transformation!5802 (rule!8618 token!511))))) (and b!3663022 b_free!96695 (= (toChars!7953 (transformation!5802 rule!403)) (toChars!7953 (transformation!5802 (rule!8618 token!511))))) (and b!3663012 b_free!96691 (= (toChars!7953 (transformation!5802 anOtherTypeRule!33)) (toChars!7953 (transformation!5802 (rule!8618 token!511))))) b_lambda!108725)))

(declare-fun b_lambda!108727 () Bool)

(assert (= b_lambda!108679 (or (and b!3663858 b_free!96709 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toValue!8094 (transformation!5802 rule!403)))) (and b!3663022 b_free!96693) (and b!3662992 b_free!96697 (= (toValue!8094 (transformation!5802 (rule!8618 token!511))) (toValue!8094 (transformation!5802 rule!403)))) (and b!3662995 b_free!96701 (= (toValue!8094 (transformation!5802 (h!44067 rules!3307))) (toValue!8094 (transformation!5802 rule!403)))) (and b!3663012 b_free!96689 (= (toValue!8094 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 rule!403)))) b_lambda!108727)))

(declare-fun b_lambda!108729 () Bool)

(assert (= b_lambda!108665 (or (and b!3663858 b_free!96709 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toValue!8094 (transformation!5802 rule!403)))) (and b!3663022 b_free!96693) (and b!3662992 b_free!96697 (= (toValue!8094 (transformation!5802 (rule!8618 token!511))) (toValue!8094 (transformation!5802 rule!403)))) (and b!3662995 b_free!96701 (= (toValue!8094 (transformation!5802 (h!44067 rules!3307))) (toValue!8094 (transformation!5802 rule!403)))) (and b!3663012 b_free!96689 (= (toValue!8094 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 rule!403)))) b_lambda!108729)))

(check-sat (not b!3663703) (not b!3663660) (not b_lambda!108703) (not bm!265004) (not bm!265041) (not d!1075898) (not d!1075588) (not bm!265037) (not b!3663078) (not d!1075922) (not b!3663478) (not d!1075640) (not b!3663264) (not tb!211741) (not d!1075778) (not d!1075644) (not b!3663560) (not b!3663485) (not b!3663734) (not b!3663505) (not d!1075804) (not b!3663389) (not b!3663664) (not d!1075814) (not b!3663587) (not d!1075790) (not b!3663555) (not b!3663482) (not b!3663259) (not b!3663130) (not b!3663480) (not d!1075828) (not d!1075894) (not b!3663796) tp_is_empty!18205 (not b!3663840) (not d!1075884) (not tb!211781) b_and!272239 (not b!3663257) (not b!3663698) (not b!3663647) (not b!3663496) (not b!3663837) (not b!3663666) (not b!3663479) (not d!1075820) (not b!3663244) (not b!3663669) (not d!1075882) (not tb!211853) (not b!3663723) (not b_lambda!108697) (not b!3663857) (not b!3663079) (not tb!211861) (not d!1075748) (not d!1075832) (not bm!265035) (not b!3663720) (not b_lambda!108727) (not d!1075890) (not bm!265036) (not b!3663493) b_and!272223 (not tb!211749) (not b!3663662) (not b_next!97413) (not b!3663814) (not b!3663846) (not d!1075870) (not b!3663498) (not b!3663721) (not b!3663548) (not b_lambda!108701) (not d!1075600) (not b!3663116) (not tb!211797) (not d!1075592) (not b!3663537) (not d!1075854) (not b!3663847) (not b!3663414) (not bm!265006) (not b_lambda!108721) (not b!3663583) (not d!1075584) (not b_next!97407) (not b_next!97403) (not d!1075678) b_and!272221 (not b!3663585) (not d!1075912) (not b!3663553) (not b_next!97399) b_and!272241 (not bm!265028) (not d!1075598) (not b_lambda!108725) (not b!3663204) (not d!1075810) (not d!1075844) (not b!3663517) (not b_next!97397) (not d!1075880) (not d!1075920) (not b!3663240) (not d!1075630) (not d!1075816) (not b!3663841) (not b!3663504) (not bm!265026) (not b!3663834) (not b_next!97405) (not b_lambda!108729) b_and!272219 (not d!1075852) (not b!3663843) (not d!1075918) (not b!3663591) (not b!3663586) (not d!1075834) (not b!3663179) (not b!3663828) (not bm!265007) (not b!3663665) (not b!3663580) (not b!3663732) (not d!1075746) (not d!1075888) (not b!3663593) (not bm!265038) (not d!1075676) (not d!1075830) (not b!3663670) (not d!1075838) (not d!1075864) (not bm!265031) b_and!272229 (not b!3663667) (not d!1075862) (not b!3663694) (not b_next!97393) (not b!3663581) (not b!3663539) (not tb!211845) (not d!1075634) (not b!3663550) (not b!3663827) (not b!3663671) (not b!3663241) (not b!3663492) (not b!3663387) (not b!3663064) b_and!272231 (not bm!265040) (not b_lambda!108707) (not b!3663836) (not d!1075596) (not b_next!97401) (not b!3663829) (not b!3663497) (not b_lambda!108723) (not d!1075850) (not d!1075924) (not d!1075868) (not d!1075606) (not b!3663712) (not b!3663388) (not b!3663258) (not b_lambda!108705) (not d!1075846) (not b!3663596) (not d!1075928) (not bm!265030) (not b!3663838) (not b_lambda!108683) (not b!3663645) (not b!3663725) (not b!3663845) (not b!3663588) (not d!1075908) (not d!1075840) b_and!272225 (not b!3663584) (not d!1075916) (not b!3663649) (not b_next!97415) (not b!3663592) (not b!3663506) (not d!1075886) (not b!3663122) (not b!3663700) (not b!3663842) (not b!3663701) b_and!272233 (not b!3663590) (not d!1075892) (not b!3663638) (not b_next!97395) (not b!3663710) (not b!3663722) (not b!3663730) (not d!1075788) (not b!3663708) (not tb!211837) (not d!1075652) (not b!3663481) (not b!3663856) (not b!3663640) (not b!3663755) (not d!1075792) (not d!1075798) (not b!3663111) (not b!3663105) (not d!1075876) (not d!1075586) (not b!3663077) (not b!3663484) (not b!3663203) b_and!272227 (not b!3663486) (not d!1075668) (not b!3663637) (not b!3663815) (not b!3663110) (not d!1075808) (not d!1075582) (not b!3663663) (not b!3663413) (not bm!265034) (not b_lambda!108699))
(check-sat b_and!272239 (not b_next!97397) b_and!272229 (not b_next!97393) b_and!272231 (not b_next!97401) b_and!272225 (not b_next!97415) b_and!272233 (not b_next!97395) b_and!272227 (not b_next!97413) b_and!272223 (not b_next!97407) (not b_next!97403) b_and!272221 (not b_next!97399) b_and!272241 (not b_next!97405) b_and!272219)
(get-model)

(declare-fun b!3663860 () Bool)

(declare-fun e!2268603 () List!38770)

(assert (=> b!3663860 (= e!2268603 (Cons!38646 (h!44066 (ite c!633295 call!265044 call!265046)) (++!9618 (t!298753 (ite c!633295 call!265044 call!265046)) (ite c!633295 call!265046 call!265044))))))

(declare-fun d!1075934 () Bool)

(declare-fun e!2268604 () Bool)

(assert (=> d!1075934 e!2268604))

(declare-fun res!1487628 () Bool)

(assert (=> d!1075934 (=> (not res!1487628) (not e!2268604))))

(declare-fun lt!1275141 () List!38770)

(assert (=> d!1075934 (= res!1487628 (= (content!5589 lt!1275141) ((_ map or) (content!5589 (ite c!633295 call!265044 call!265046)) (content!5589 (ite c!633295 call!265046 call!265044)))))))

(assert (=> d!1075934 (= lt!1275141 e!2268603)))

(declare-fun c!633300 () Bool)

(assert (=> d!1075934 (= c!633300 ((_ is Nil!38646) (ite c!633295 call!265044 call!265046)))))

(assert (=> d!1075934 (= (++!9618 (ite c!633295 call!265044 call!265046) (ite c!633295 call!265046 call!265044)) lt!1275141)))

(declare-fun b!3663862 () Bool)

(assert (=> b!3663862 (= e!2268604 (or (not (= (ite c!633295 call!265046 call!265044) Nil!38646)) (= lt!1275141 (ite c!633295 call!265044 call!265046))))))

(declare-fun b!3663861 () Bool)

(declare-fun res!1487629 () Bool)

(assert (=> b!3663861 (=> (not res!1487629) (not e!2268604))))

(assert (=> b!3663861 (= res!1487629 (= (size!29528 lt!1275141) (+ (size!29528 (ite c!633295 call!265044 call!265046)) (size!29528 (ite c!633295 call!265046 call!265044)))))))

(declare-fun b!3663859 () Bool)

(assert (=> b!3663859 (= e!2268603 (ite c!633295 call!265046 call!265044))))

(assert (= (and d!1075934 c!633300) b!3663859))

(assert (= (and d!1075934 (not c!633300)) b!3663860))

(assert (= (and d!1075934 res!1487628) b!3663861))

(assert (= (and b!3663861 res!1487629) b!3663862))

(declare-fun m!4170993 () Bool)

(assert (=> b!3663860 m!4170993))

(declare-fun m!4170995 () Bool)

(assert (=> d!1075934 m!4170995))

(declare-fun m!4170997 () Bool)

(assert (=> d!1075934 m!4170997))

(declare-fun m!4170999 () Bool)

(assert (=> d!1075934 m!4170999))

(declare-fun m!4171001 () Bool)

(assert (=> b!3663861 m!4171001))

(declare-fun m!4171003 () Bool)

(assert (=> b!3663861 m!4171003))

(declare-fun m!4171005 () Bool)

(assert (=> b!3663861 m!4171005))

(assert (=> bm!265040 d!1075934))

(declare-fun d!1075936 () Bool)

(declare-fun isBalanced!3504 (Conc!11819) Bool)

(assert (=> d!1075936 (= (inv!52120 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (value!185817 (_1!22390 lt!1274714)))) (isBalanced!3504 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (value!185817 (_1!22390 lt!1274714))))))))

(declare-fun bs!572764 () Bool)

(assert (= bs!572764 d!1075936))

(declare-fun m!4171007 () Bool)

(assert (=> bs!572764 m!4171007))

(assert (=> tb!211797 d!1075936))

(declare-fun bm!265042 () Bool)

(declare-fun call!265047 () Bool)

(assert (=> bm!265042 (= call!265047 (isEmpty!22924 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275116))))))))

(declare-fun b!3663863 () Bool)

(declare-fun e!2268608 () Bool)

(assert (=> b!3663863 (= e!2268608 (matchR!5130 (derivativeStep!3224 (regex!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116)))) (head!7834 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275116)))))) (tail!5673 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275116)))))))))

(declare-fun b!3663864 () Bool)

(declare-fun e!2268609 () Bool)

(assert (=> b!3663864 (= e!2268609 (not (= (head!7834 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275116))))) (c!633134 (regex!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116))))))))))

(declare-fun d!1075942 () Bool)

(declare-fun e!2268606 () Bool)

(assert (=> d!1075942 e!2268606))

(declare-fun c!633301 () Bool)

(assert (=> d!1075942 (= c!633301 ((_ is EmptyExpr!10561) (regex!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116))))))))

(declare-fun lt!1275142 () Bool)

(assert (=> d!1075942 (= lt!1275142 e!2268608)))

(declare-fun c!633303 () Bool)

(assert (=> d!1075942 (= c!633303 (isEmpty!22924 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275116))))))))

(assert (=> d!1075942 (validRegex!4836 (regex!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116)))))))

(assert (=> d!1075942 (= (matchR!5130 (regex!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116)))) (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275116))))) lt!1275142)))

(declare-fun b!3663865 () Bool)

(declare-fun e!2268605 () Bool)

(assert (=> b!3663865 (= e!2268605 e!2268609)))

(declare-fun res!1487637 () Bool)

(assert (=> b!3663865 (=> res!1487637 e!2268609)))

(assert (=> b!3663865 (= res!1487637 call!265047)))

(declare-fun b!3663866 () Bool)

(declare-fun e!2268610 () Bool)

(assert (=> b!3663866 (= e!2268610 (= (head!7834 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275116))))) (c!633134 (regex!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116)))))))))

(declare-fun b!3663867 () Bool)

(declare-fun res!1487632 () Bool)

(assert (=> b!3663867 (=> (not res!1487632) (not e!2268610))))

(assert (=> b!3663867 (= res!1487632 (not call!265047))))

(declare-fun b!3663868 () Bool)

(declare-fun e!2268611 () Bool)

(assert (=> b!3663868 (= e!2268611 e!2268605)))

(declare-fun res!1487634 () Bool)

(assert (=> b!3663868 (=> (not res!1487634) (not e!2268605))))

(assert (=> b!3663868 (= res!1487634 (not lt!1275142))))

(declare-fun b!3663869 () Bool)

(declare-fun e!2268607 () Bool)

(assert (=> b!3663869 (= e!2268607 (not lt!1275142))))

(declare-fun b!3663870 () Bool)

(assert (=> b!3663870 (= e!2268606 e!2268607)))

(declare-fun c!633302 () Bool)

(assert (=> b!3663870 (= c!633302 ((_ is EmptyLang!10561) (regex!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116))))))))

(declare-fun b!3663871 () Bool)

(declare-fun res!1487635 () Bool)

(assert (=> b!3663871 (=> res!1487635 e!2268609)))

(assert (=> b!3663871 (= res!1487635 (not (isEmpty!22924 (tail!5673 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275116))))))))))

(declare-fun b!3663872 () Bool)

(declare-fun res!1487636 () Bool)

(assert (=> b!3663872 (=> res!1487636 e!2268611)))

(assert (=> b!3663872 (= res!1487636 (not ((_ is ElementMatch!10561) (regex!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116)))))))))

(assert (=> b!3663872 (= e!2268607 e!2268611)))

(declare-fun b!3663873 () Bool)

(declare-fun res!1487633 () Bool)

(assert (=> b!3663873 (=> (not res!1487633) (not e!2268610))))

(assert (=> b!3663873 (= res!1487633 (isEmpty!22924 (tail!5673 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275116)))))))))

(declare-fun b!3663874 () Bool)

(assert (=> b!3663874 (= e!2268606 (= lt!1275142 call!265047))))

(declare-fun b!3663875 () Bool)

(assert (=> b!3663875 (= e!2268608 (nullable!3675 (regex!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116))))))))

(declare-fun b!3663876 () Bool)

(declare-fun res!1487631 () Bool)

(assert (=> b!3663876 (=> res!1487631 e!2268611)))

(assert (=> b!3663876 (= res!1487631 e!2268610)))

(declare-fun res!1487630 () Bool)

(assert (=> b!3663876 (=> (not res!1487630) (not e!2268610))))

(assert (=> b!3663876 (= res!1487630 lt!1275142)))

(assert (= (and d!1075942 c!633303) b!3663875))

(assert (= (and d!1075942 (not c!633303)) b!3663863))

(assert (= (and d!1075942 c!633301) b!3663874))

(assert (= (and d!1075942 (not c!633301)) b!3663870))

(assert (= (and b!3663870 c!633302) b!3663869))

(assert (= (and b!3663870 (not c!633302)) b!3663872))

(assert (= (and b!3663872 (not res!1487636)) b!3663876))

(assert (= (and b!3663876 res!1487630) b!3663867))

(assert (= (and b!3663867 res!1487632) b!3663873))

(assert (= (and b!3663873 res!1487633) b!3663866))

(assert (= (and b!3663876 (not res!1487631)) b!3663868))

(assert (= (and b!3663868 res!1487634) b!3663865))

(assert (= (and b!3663865 (not res!1487637)) b!3663871))

(assert (= (and b!3663871 (not res!1487635)) b!3663864))

(assert (= (or b!3663874 b!3663865 b!3663867) bm!265042))

(assert (=> b!3663871 m!4170873))

(declare-fun m!4171009 () Bool)

(assert (=> b!3663871 m!4171009))

(assert (=> b!3663871 m!4171009))

(declare-fun m!4171011 () Bool)

(assert (=> b!3663871 m!4171011))

(assert (=> b!3663873 m!4170873))

(assert (=> b!3663873 m!4171009))

(assert (=> b!3663873 m!4171009))

(assert (=> b!3663873 m!4171011))

(assert (=> b!3663866 m!4170873))

(declare-fun m!4171013 () Bool)

(assert (=> b!3663866 m!4171013))

(assert (=> b!3663863 m!4170873))

(assert (=> b!3663863 m!4171013))

(assert (=> b!3663863 m!4171013))

(declare-fun m!4171015 () Bool)

(assert (=> b!3663863 m!4171015))

(assert (=> b!3663863 m!4170873))

(assert (=> b!3663863 m!4171009))

(assert (=> b!3663863 m!4171015))

(assert (=> b!3663863 m!4171009))

(declare-fun m!4171017 () Bool)

(assert (=> b!3663863 m!4171017))

(declare-fun m!4171019 () Bool)

(assert (=> b!3663875 m!4171019))

(assert (=> b!3663864 m!4170873))

(assert (=> b!3663864 m!4171013))

(assert (=> d!1075942 m!4170873))

(declare-fun m!4171021 () Bool)

(assert (=> d!1075942 m!4171021))

(declare-fun m!4171023 () Bool)

(assert (=> d!1075942 m!4171023))

(assert (=> bm!265042 m!4170873))

(assert (=> bm!265042 m!4171021))

(assert (=> b!3663671 d!1075942))

(declare-fun d!1075946 () Bool)

(assert (=> d!1075946 (= (get!12743 lt!1275116) (v!38127 lt!1275116))))

(assert (=> b!3663671 d!1075946))

(declare-fun d!1075948 () Bool)

(assert (=> d!1075948 (= (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275116)))) (list!14343 (c!633135 (charsOf!3816 (_1!22390 (get!12743 lt!1275116))))))))

(declare-fun bs!572765 () Bool)

(assert (= bs!572765 d!1075948))

(declare-fun m!4171025 () Bool)

(assert (=> bs!572765 m!4171025))

(assert (=> b!3663671 d!1075948))

(declare-fun d!1075950 () Bool)

(declare-fun lt!1275143 () BalanceConc!23252)

(assert (=> d!1075950 (= (list!14340 lt!1275143) (originalCharacters!6516 (_1!22390 (get!12743 lt!1275116))))))

(assert (=> d!1075950 (= lt!1275143 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116))))) (value!185817 (_1!22390 (get!12743 lt!1275116)))))))

(assert (=> d!1075950 (= (charsOf!3816 (_1!22390 (get!12743 lt!1275116))) lt!1275143)))

(declare-fun b_lambda!108731 () Bool)

(assert (=> (not b_lambda!108731) (not d!1075950)))

(declare-fun t!298920 () Bool)

(declare-fun tb!211901 () Bool)

(assert (=> (and b!3662995 (= (toChars!7953 (transformation!5802 (h!44067 rules!3307))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116)))))) t!298920) tb!211901))

(declare-fun b!3663877 () Bool)

(declare-fun e!2268612 () Bool)

(declare-fun tp!1115647 () Bool)

(assert (=> b!3663877 (= e!2268612 (and (inv!52119 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116))))) (value!185817 (_1!22390 (get!12743 lt!1275116)))))) tp!1115647))))

(declare-fun result!257962 () Bool)

(assert (=> tb!211901 (= result!257962 (and (inv!52120 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116))))) (value!185817 (_1!22390 (get!12743 lt!1275116))))) e!2268612))))

(assert (= tb!211901 b!3663877))

(declare-fun m!4171027 () Bool)

(assert (=> b!3663877 m!4171027))

(declare-fun m!4171029 () Bool)

(assert (=> tb!211901 m!4171029))

(assert (=> d!1075950 t!298920))

(declare-fun b_and!272243 () Bool)

(assert (= b_and!272233 (and (=> t!298920 result!257962) b_and!272243)))

(declare-fun tb!211903 () Bool)

(declare-fun t!298922 () Bool)

(assert (=> (and b!3662992 (= (toChars!7953 (transformation!5802 (rule!8618 token!511))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116)))))) t!298922) tb!211903))

(declare-fun result!257964 () Bool)

(assert (= result!257964 result!257962))

(assert (=> d!1075950 t!298922))

(declare-fun b_and!272245 () Bool)

(assert (= b_and!272231 (and (=> t!298922 result!257964) b_and!272245)))

(declare-fun t!298924 () Bool)

(declare-fun tb!211905 () Bool)

(assert (=> (and b!3663012 (= (toChars!7953 (transformation!5802 anOtherTypeRule!33)) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116)))))) t!298924) tb!211905))

(declare-fun result!257966 () Bool)

(assert (= result!257966 result!257962))

(assert (=> d!1075950 t!298924))

(declare-fun b_and!272247 () Bool)

(assert (= b_and!272227 (and (=> t!298924 result!257966) b_and!272247)))

(declare-fun tb!211907 () Bool)

(declare-fun t!298926 () Bool)

(assert (=> (and b!3663858 (= (toChars!7953 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116)))))) t!298926) tb!211907))

(declare-fun result!257968 () Bool)

(assert (= result!257968 result!257962))

(assert (=> d!1075950 t!298926))

(declare-fun b_and!272249 () Bool)

(assert (= b_and!272241 (and (=> t!298926 result!257968) b_and!272249)))

(declare-fun t!298928 () Bool)

(declare-fun tb!211909 () Bool)

(assert (=> (and b!3663022 (= (toChars!7953 (transformation!5802 rule!403)) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116)))))) t!298928) tb!211909))

(declare-fun result!257970 () Bool)

(assert (= result!257970 result!257962))

(assert (=> d!1075950 t!298928))

(declare-fun b_and!272251 () Bool)

(assert (= b_and!272229 (and (=> t!298928 result!257970) b_and!272251)))

(declare-fun m!4171031 () Bool)

(assert (=> d!1075950 m!4171031))

(declare-fun m!4171033 () Bool)

(assert (=> d!1075950 m!4171033))

(assert (=> b!3663671 d!1075950))

(assert (=> d!1075592 d!1075918))

(declare-fun d!1075952 () Bool)

(assert (=> d!1075952 (not (matchR!5130 (regex!5802 rule!403) lt!1274731))))

(assert (=> d!1075952 true))

(declare-fun _$57!106 () Unit!55997)

(assert (=> d!1075952 (= (choose!21706 thiss!23823 rules!3307 (rule!8618 (_1!22390 lt!1274714)) lt!1274729 lt!1274713 lt!1274731 rule!403) _$57!106)))

(declare-fun bs!572766 () Bool)

(assert (= bs!572766 d!1075952))

(assert (=> bs!572766 m!4169865))

(assert (=> d!1075592 d!1075952))

(assert (=> d!1075592 d!1075784))

(declare-fun d!1075954 () Bool)

(assert (=> d!1075954 (= (isEmpty!22926 lt!1274834) (not ((_ is Some!8232) lt!1274834)))))

(assert (=> d!1075652 d!1075954))

(assert (=> d!1075652 d!1075840))

(declare-fun d!1075956 () Bool)

(declare-fun lt!1275144 () Bool)

(assert (=> d!1075956 (= lt!1275144 (select (content!5589 (usedCharacters!1014 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))) lt!1274732))))

(declare-fun e!2268616 () Bool)

(assert (=> d!1075956 (= lt!1275144 e!2268616)))

(declare-fun res!1487640 () Bool)

(assert (=> d!1075956 (=> (not res!1487640) (not e!2268616))))

(assert (=> d!1075956 (= res!1487640 ((_ is Cons!38646) (usedCharacters!1014 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))))

(assert (=> d!1075956 (= (contains!7669 (usedCharacters!1014 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274732) lt!1275144)))

(declare-fun b!3663880 () Bool)

(declare-fun e!2268615 () Bool)

(assert (=> b!3663880 (= e!2268616 e!2268615)))

(declare-fun res!1487641 () Bool)

(assert (=> b!3663880 (=> res!1487641 e!2268615)))

(assert (=> b!3663880 (= res!1487641 (= (h!44066 (usedCharacters!1014 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))) lt!1274732))))

(declare-fun b!3663881 () Bool)

(assert (=> b!3663881 (= e!2268615 (contains!7669 (t!298753 (usedCharacters!1014 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))) lt!1274732))))

(assert (= (and d!1075956 res!1487640) b!3663880))

(assert (= (and b!3663880 (not res!1487641)) b!3663881))

(assert (=> d!1075956 m!4169821))

(declare-fun m!4171035 () Bool)

(assert (=> d!1075956 m!4171035))

(declare-fun m!4171037 () Bool)

(assert (=> d!1075956 m!4171037))

(declare-fun m!4171039 () Bool)

(assert (=> b!3663881 m!4171039))

(assert (=> d!1075634 d!1075956))

(assert (=> d!1075634 d!1075594))

(declare-fun d!1075958 () Bool)

(assert (=> d!1075958 (not (contains!7669 (usedCharacters!1014 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274732))))

(assert (=> d!1075958 true))

(declare-fun _$73!325 () Unit!55997)

(assert (=> d!1075958 (= (choose!21710 thiss!23823 rules!3307 rules!3307 (rule!8618 (_1!22390 lt!1274714)) rule!403 lt!1274732) _$73!325)))

(declare-fun bs!572768 () Bool)

(assert (= bs!572768 d!1075958))

(assert (=> bs!572768 m!4169821))

(assert (=> bs!572768 m!4169821))

(assert (=> bs!572768 m!4170131))

(assert (=> d!1075634 d!1075958))

(assert (=> d!1075634 d!1075840))

(declare-fun d!1075960 () Bool)

(assert (=> d!1075960 (= (head!7834 lt!1274731) (h!44066 lt!1274731))))

(assert (=> b!3663590 d!1075960))

(assert (=> b!3663638 d!1075836))

(declare-fun d!1075964 () Bool)

(declare-fun lt!1275145 () Int)

(assert (=> d!1075964 (>= lt!1275145 0)))

(declare-fun e!2268617 () Int)

(assert (=> d!1075964 (= lt!1275145 e!2268617)))

(declare-fun c!633305 () Bool)

(assert (=> d!1075964 (= c!633305 ((_ is Nil!38646) (++!9618 lt!1274729 (_2!22390 lt!1274714))))))

(assert (=> d!1075964 (= (size!29528 (++!9618 lt!1274729 (_2!22390 lt!1274714))) lt!1275145)))

(declare-fun b!3663884 () Bool)

(assert (=> b!3663884 (= e!2268617 0)))

(declare-fun b!3663885 () Bool)

(assert (=> b!3663885 (= e!2268617 (+ 1 (size!29528 (t!298753 (++!9618 lt!1274729 (_2!22390 lt!1274714))))))))

(assert (= (and d!1075964 c!633305) b!3663884))

(assert (= (and d!1075964 (not c!633305)) b!3663885))

(declare-fun m!4171043 () Bool)

(assert (=> b!3663885 m!4171043))

(assert (=> b!3663259 d!1075964))

(assert (=> b!3663259 d!1075842))

(declare-fun e!2268618 () List!38770)

(declare-fun b!3663887 () Bool)

(assert (=> b!3663887 (= e!2268618 (Cons!38646 (h!44066 (ite c!633165 call!265010 call!265012)) (++!9618 (t!298753 (ite c!633165 call!265010 call!265012)) (ite c!633165 call!265012 call!265010))))))

(declare-fun d!1075966 () Bool)

(declare-fun e!2268619 () Bool)

(assert (=> d!1075966 e!2268619))

(declare-fun res!1487642 () Bool)

(assert (=> d!1075966 (=> (not res!1487642) (not e!2268619))))

(declare-fun lt!1275146 () List!38770)

(assert (=> d!1075966 (= res!1487642 (= (content!5589 lt!1275146) ((_ map or) (content!5589 (ite c!633165 call!265010 call!265012)) (content!5589 (ite c!633165 call!265012 call!265010)))))))

(assert (=> d!1075966 (= lt!1275146 e!2268618)))

(declare-fun c!633306 () Bool)

(assert (=> d!1075966 (= c!633306 ((_ is Nil!38646) (ite c!633165 call!265010 call!265012)))))

(assert (=> d!1075966 (= (++!9618 (ite c!633165 call!265010 call!265012) (ite c!633165 call!265012 call!265010)) lt!1275146)))

(declare-fun b!3663889 () Bool)

(assert (=> b!3663889 (= e!2268619 (or (not (= (ite c!633165 call!265012 call!265010) Nil!38646)) (= lt!1275146 (ite c!633165 call!265010 call!265012))))))

(declare-fun b!3663888 () Bool)

(declare-fun res!1487643 () Bool)

(assert (=> b!3663888 (=> (not res!1487643) (not e!2268619))))

(assert (=> b!3663888 (= res!1487643 (= (size!29528 lt!1275146) (+ (size!29528 (ite c!633165 call!265010 call!265012)) (size!29528 (ite c!633165 call!265012 call!265010)))))))

(declare-fun b!3663886 () Bool)

(assert (=> b!3663886 (= e!2268618 (ite c!633165 call!265012 call!265010))))

(assert (= (and d!1075966 c!633306) b!3663886))

(assert (= (and d!1075966 (not c!633306)) b!3663887))

(assert (= (and d!1075966 res!1487642) b!3663888))

(assert (= (and b!3663888 res!1487643) b!3663889))

(declare-fun m!4171045 () Bool)

(assert (=> b!3663887 m!4171045))

(declare-fun m!4171047 () Bool)

(assert (=> d!1075966 m!4171047))

(declare-fun m!4171049 () Bool)

(assert (=> d!1075966 m!4171049))

(declare-fun m!4171051 () Bool)

(assert (=> d!1075966 m!4171051))

(declare-fun m!4171053 () Bool)

(assert (=> b!3663888 m!4171053))

(declare-fun m!4171055 () Bool)

(assert (=> b!3663888 m!4171055))

(declare-fun m!4171057 () Bool)

(assert (=> b!3663888 m!4171057))

(assert (=> bm!265006 d!1075966))

(declare-fun b!3663913 () Bool)

(declare-fun e!2268631 () List!38770)

(declare-fun e!2268632 () List!38770)

(assert (=> b!3663913 (= e!2268631 e!2268632)))

(declare-fun c!633315 () Bool)

(assert (=> b!3663913 (= c!633315 ((_ is Leaf!18331) (c!633135 lt!1274743)))))

(declare-fun b!3663912 () Bool)

(assert (=> b!3663912 (= e!2268631 Nil!38646)))

(declare-fun b!3663914 () Bool)

(declare-fun list!14345 (IArray!23643) List!38770)

(assert (=> b!3663914 (= e!2268632 (list!14345 (xs!15021 (c!633135 lt!1274743))))))

(declare-fun b!3663915 () Bool)

(assert (=> b!3663915 (= e!2268632 (++!9618 (list!14343 (left!30162 (c!633135 lt!1274743))) (list!14343 (right!30492 (c!633135 lt!1274743)))))))

(declare-fun d!1075968 () Bool)

(declare-fun c!633314 () Bool)

(assert (=> d!1075968 (= c!633314 ((_ is Empty!11819) (c!633135 lt!1274743)))))

(assert (=> d!1075968 (= (list!14343 (c!633135 lt!1274743)) e!2268631)))

(assert (= (and d!1075968 c!633314) b!3663912))

(assert (= (and d!1075968 (not c!633314)) b!3663913))

(assert (= (and b!3663913 c!633315) b!3663914))

(assert (= (and b!3663913 (not c!633315)) b!3663915))

(declare-fun m!4171063 () Bool)

(assert (=> b!3663914 m!4171063))

(declare-fun m!4171065 () Bool)

(assert (=> b!3663915 m!4171065))

(declare-fun m!4171067 () Bool)

(assert (=> b!3663915 m!4171067))

(assert (=> b!3663915 m!4171065))

(assert (=> b!3663915 m!4171067))

(declare-fun m!4171071 () Bool)

(assert (=> b!3663915 m!4171071))

(assert (=> d!1075788 d!1075968))

(declare-fun bm!265044 () Bool)

(declare-fun call!265049 () Bool)

(assert (=> bm!265044 (= call!265049 (isEmpty!22924 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275044))))))))

(declare-fun b!3663916 () Bool)

(declare-fun e!2268636 () Bool)

(assert (=> b!3663916 (= e!2268636 (matchR!5130 (derivativeStep!3224 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) (head!7834 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275044)))))) (tail!5673 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275044)))))))))

(declare-fun b!3663917 () Bool)

(declare-fun e!2268637 () Bool)

(assert (=> b!3663917 (= e!2268637 (not (= (head!7834 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275044))))) (c!633134 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))))

(declare-fun d!1075972 () Bool)

(declare-fun e!2268634 () Bool)

(assert (=> d!1075972 e!2268634))

(declare-fun c!633316 () Bool)

(assert (=> d!1075972 (= c!633316 ((_ is EmptyExpr!10561) (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun lt!1275148 () Bool)

(assert (=> d!1075972 (= lt!1275148 e!2268636)))

(declare-fun c!633318 () Bool)

(assert (=> d!1075972 (= c!633318 (isEmpty!22924 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275044))))))))

(assert (=> d!1075972 (validRegex!4836 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))

(assert (=> d!1075972 (= (matchR!5130 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275044))))) lt!1275148)))

(declare-fun b!3663918 () Bool)

(declare-fun e!2268633 () Bool)

(assert (=> b!3663918 (= e!2268633 e!2268637)))

(declare-fun res!1487659 () Bool)

(assert (=> b!3663918 (=> res!1487659 e!2268637)))

(assert (=> b!3663918 (= res!1487659 call!265049)))

(declare-fun b!3663919 () Bool)

(declare-fun e!2268638 () Bool)

(assert (=> b!3663919 (= e!2268638 (= (head!7834 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275044))))) (c!633134 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))))

(declare-fun b!3663920 () Bool)

(declare-fun res!1487654 () Bool)

(assert (=> b!3663920 (=> (not res!1487654) (not e!2268638))))

(assert (=> b!3663920 (= res!1487654 (not call!265049))))

(declare-fun b!3663921 () Bool)

(declare-fun e!2268639 () Bool)

(assert (=> b!3663921 (= e!2268639 e!2268633)))

(declare-fun res!1487656 () Bool)

(assert (=> b!3663921 (=> (not res!1487656) (not e!2268633))))

(assert (=> b!3663921 (= res!1487656 (not lt!1275148))))

(declare-fun b!3663922 () Bool)

(declare-fun e!2268635 () Bool)

(assert (=> b!3663922 (= e!2268635 (not lt!1275148))))

(declare-fun b!3663923 () Bool)

(assert (=> b!3663923 (= e!2268634 e!2268635)))

(declare-fun c!633317 () Bool)

(assert (=> b!3663923 (= c!633317 ((_ is EmptyLang!10561) (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun b!3663924 () Bool)

(declare-fun res!1487657 () Bool)

(assert (=> b!3663924 (=> res!1487657 e!2268637)))

(assert (=> b!3663924 (= res!1487657 (not (isEmpty!22924 (tail!5673 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275044))))))))))

(declare-fun b!3663925 () Bool)

(declare-fun res!1487658 () Bool)

(assert (=> b!3663925 (=> res!1487658 e!2268639)))

(assert (=> b!3663925 (= res!1487658 (not ((_ is ElementMatch!10561) (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))))

(assert (=> b!3663925 (= e!2268635 e!2268639)))

(declare-fun b!3663926 () Bool)

(declare-fun res!1487655 () Bool)

(assert (=> b!3663926 (=> (not res!1487655) (not e!2268638))))

(assert (=> b!3663926 (= res!1487655 (isEmpty!22924 (tail!5673 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275044)))))))))

(declare-fun b!3663927 () Bool)

(assert (=> b!3663927 (= e!2268634 (= lt!1275148 call!265049))))

(declare-fun b!3663928 () Bool)

(assert (=> b!3663928 (= e!2268636 (nullable!3675 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun b!3663929 () Bool)

(declare-fun res!1487653 () Bool)

(assert (=> b!3663929 (=> res!1487653 e!2268639)))

(assert (=> b!3663929 (= res!1487653 e!2268638)))

(declare-fun res!1487652 () Bool)

(assert (=> b!3663929 (=> (not res!1487652) (not e!2268638))))

(assert (=> b!3663929 (= res!1487652 lt!1275148)))

(assert (= (and d!1075972 c!633318) b!3663928))

(assert (= (and d!1075972 (not c!633318)) b!3663916))

(assert (= (and d!1075972 c!633316) b!3663927))

(assert (= (and d!1075972 (not c!633316)) b!3663923))

(assert (= (and b!3663923 c!633317) b!3663922))

(assert (= (and b!3663923 (not c!633317)) b!3663925))

(assert (= (and b!3663925 (not res!1487658)) b!3663929))

(assert (= (and b!3663929 res!1487652) b!3663920))

(assert (= (and b!3663920 res!1487654) b!3663926))

(assert (= (and b!3663926 res!1487655) b!3663919))

(assert (= (and b!3663929 (not res!1487653)) b!3663921))

(assert (= (and b!3663921 res!1487656) b!3663918))

(assert (= (and b!3663918 (not res!1487659)) b!3663924))

(assert (= (and b!3663924 (not res!1487657)) b!3663917))

(assert (= (or b!3663927 b!3663918 b!3663920) bm!265044))

(assert (=> b!3663924 m!4170733))

(declare-fun m!4171077 () Bool)

(assert (=> b!3663924 m!4171077))

(assert (=> b!3663924 m!4171077))

(declare-fun m!4171079 () Bool)

(assert (=> b!3663924 m!4171079))

(assert (=> b!3663926 m!4170733))

(assert (=> b!3663926 m!4171077))

(assert (=> b!3663926 m!4171077))

(assert (=> b!3663926 m!4171079))

(assert (=> b!3663919 m!4170733))

(declare-fun m!4171081 () Bool)

(assert (=> b!3663919 m!4171081))

(assert (=> b!3663916 m!4170733))

(assert (=> b!3663916 m!4171081))

(assert (=> b!3663916 m!4171081))

(declare-fun m!4171083 () Bool)

(assert (=> b!3663916 m!4171083))

(assert (=> b!3663916 m!4170733))

(assert (=> b!3663916 m!4171077))

(assert (=> b!3663916 m!4171083))

(assert (=> b!3663916 m!4171077))

(declare-fun m!4171085 () Bool)

(assert (=> b!3663916 m!4171085))

(assert (=> b!3663928 m!4170843))

(assert (=> b!3663917 m!4170733))

(assert (=> b!3663917 m!4171081))

(assert (=> d!1075972 m!4170733))

(declare-fun m!4171087 () Bool)

(assert (=> d!1075972 m!4171087))

(assert (=> d!1075972 m!4170009))

(assert (=> bm!265044 m!4170733))

(assert (=> bm!265044 m!4171087))

(assert (=> b!3663581 d!1075972))

(declare-fun d!1075978 () Bool)

(assert (=> d!1075978 (= (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275044)))) (list!14343 (c!633135 (charsOf!3816 (_1!22390 (get!12743 lt!1275044))))))))

(declare-fun bs!572773 () Bool)

(assert (= bs!572773 d!1075978))

(declare-fun m!4171089 () Bool)

(assert (=> bs!572773 m!4171089))

(assert (=> b!3663581 d!1075978))

(declare-fun d!1075980 () Bool)

(declare-fun lt!1275149 () BalanceConc!23252)

(assert (=> d!1075980 (= (list!14340 lt!1275149) (originalCharacters!6516 (_1!22390 (get!12743 lt!1275044))))))

(assert (=> d!1075980 (= lt!1275149 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275044))))) (value!185817 (_1!22390 (get!12743 lt!1275044)))))))

(assert (=> d!1075980 (= (charsOf!3816 (_1!22390 (get!12743 lt!1275044))) lt!1275149)))

(declare-fun b_lambda!108733 () Bool)

(assert (=> (not b_lambda!108733) (not d!1075980)))

(declare-fun t!298931 () Bool)

(declare-fun tb!211911 () Bool)

(assert (=> (and b!3663858 (= (toChars!7953 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275044)))))) t!298931) tb!211911))

(declare-fun b!3663934 () Bool)

(declare-fun e!2268642 () Bool)

(declare-fun tp!1115648 () Bool)

(assert (=> b!3663934 (= e!2268642 (and (inv!52119 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275044))))) (value!185817 (_1!22390 (get!12743 lt!1275044)))))) tp!1115648))))

(declare-fun result!257972 () Bool)

(assert (=> tb!211911 (= result!257972 (and (inv!52120 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275044))))) (value!185817 (_1!22390 (get!12743 lt!1275044))))) e!2268642))))

(assert (= tb!211911 b!3663934))

(declare-fun m!4171091 () Bool)

(assert (=> b!3663934 m!4171091))

(declare-fun m!4171093 () Bool)

(assert (=> tb!211911 m!4171093))

(assert (=> d!1075980 t!298931))

(declare-fun b_and!272253 () Bool)

(assert (= b_and!272249 (and (=> t!298931 result!257972) b_and!272253)))

(declare-fun t!298933 () Bool)

(declare-fun tb!211913 () Bool)

(assert (=> (and b!3662992 (= (toChars!7953 (transformation!5802 (rule!8618 token!511))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275044)))))) t!298933) tb!211913))

(declare-fun result!257974 () Bool)

(assert (= result!257974 result!257972))

(assert (=> d!1075980 t!298933))

(declare-fun b_and!272255 () Bool)

(assert (= b_and!272245 (and (=> t!298933 result!257974) b_and!272255)))

(declare-fun t!298935 () Bool)

(declare-fun tb!211915 () Bool)

(assert (=> (and b!3663012 (= (toChars!7953 (transformation!5802 anOtherTypeRule!33)) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275044)))))) t!298935) tb!211915))

(declare-fun result!257976 () Bool)

(assert (= result!257976 result!257972))

(assert (=> d!1075980 t!298935))

(declare-fun b_and!272257 () Bool)

(assert (= b_and!272247 (and (=> t!298935 result!257976) b_and!272257)))

(declare-fun tb!211917 () Bool)

(declare-fun t!298937 () Bool)

(assert (=> (and b!3662995 (= (toChars!7953 (transformation!5802 (h!44067 rules!3307))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275044)))))) t!298937) tb!211917))

(declare-fun result!257978 () Bool)

(assert (= result!257978 result!257972))

(assert (=> d!1075980 t!298937))

(declare-fun b_and!272259 () Bool)

(assert (= b_and!272243 (and (=> t!298937 result!257978) b_and!272259)))

(declare-fun t!298939 () Bool)

(declare-fun tb!211919 () Bool)

(assert (=> (and b!3663022 (= (toChars!7953 (transformation!5802 rule!403)) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275044)))))) t!298939) tb!211919))

(declare-fun result!257980 () Bool)

(assert (= result!257980 result!257972))

(assert (=> d!1075980 t!298939))

(declare-fun b_and!272261 () Bool)

(assert (= b_and!272251 (and (=> t!298939 result!257980) b_and!272261)))

(declare-fun m!4171095 () Bool)

(assert (=> d!1075980 m!4171095))

(declare-fun m!4171097 () Bool)

(assert (=> d!1075980 m!4171097))

(assert (=> b!3663581 d!1075980))

(declare-fun d!1075982 () Bool)

(assert (=> d!1075982 (= (get!12743 lt!1275044) (v!38127 lt!1275044))))

(assert (=> b!3663581 d!1075982))

(declare-fun c!633323 () Bool)

(declare-fun b!3663935 () Bool)

(assert (=> b!3663935 (= c!633323 ((_ is Star!10561) (ite c!633296 (reg!10890 (regex!5802 anOtherTypeRule!33)) (ite c!633295 (regTwo!21635 (regex!5802 anOtherTypeRule!33)) (regOne!21634 (regex!5802 anOtherTypeRule!33))))))))

(declare-fun e!2268644 () List!38770)

(declare-fun e!2268646 () List!38770)

(assert (=> b!3663935 (= e!2268644 e!2268646)))

(declare-fun b!3663936 () Bool)

(assert (=> b!3663936 (= e!2268644 (Cons!38646 (c!633134 (ite c!633296 (reg!10890 (regex!5802 anOtherTypeRule!33)) (ite c!633295 (regTwo!21635 (regex!5802 anOtherTypeRule!33)) (regOne!21634 (regex!5802 anOtherTypeRule!33))))) Nil!38646))))

(declare-fun b!3663937 () Bool)

(declare-fun e!2268643 () List!38770)

(assert (=> b!3663937 (= e!2268646 e!2268643)))

(declare-fun c!633322 () Bool)

(assert (=> b!3663937 (= c!633322 ((_ is Union!10561) (ite c!633296 (reg!10890 (regex!5802 anOtherTypeRule!33)) (ite c!633295 (regTwo!21635 (regex!5802 anOtherTypeRule!33)) (regOne!21634 (regex!5802 anOtherTypeRule!33))))))))

(declare-fun bm!265045 () Bool)

(declare-fun call!265051 () List!38770)

(assert (=> bm!265045 (= call!265051 (usedCharacters!1014 (ite c!633322 (regOne!21635 (ite c!633296 (reg!10890 (regex!5802 anOtherTypeRule!33)) (ite c!633295 (regTwo!21635 (regex!5802 anOtherTypeRule!33)) (regOne!21634 (regex!5802 anOtherTypeRule!33))))) (regTwo!21634 (ite c!633296 (reg!10890 (regex!5802 anOtherTypeRule!33)) (ite c!633295 (regTwo!21635 (regex!5802 anOtherTypeRule!33)) (regOne!21634 (regex!5802 anOtherTypeRule!33))))))))))

(declare-fun b!3663938 () Bool)

(declare-fun call!265052 () List!38770)

(assert (=> b!3663938 (= e!2268646 call!265052)))

(declare-fun b!3663939 () Bool)

(declare-fun e!2268645 () List!38770)

(assert (=> b!3663939 (= e!2268645 Nil!38646)))

(declare-fun call!265050 () List!38770)

(declare-fun call!265053 () List!38770)

(declare-fun bm!265047 () Bool)

(assert (=> bm!265047 (= call!265050 (++!9618 (ite c!633322 call!265051 call!265053) (ite c!633322 call!265053 call!265051)))))

(declare-fun b!3663940 () Bool)

(assert (=> b!3663940 (= e!2268643 call!265050)))

(declare-fun b!3663941 () Bool)

(assert (=> b!3663941 (= e!2268643 call!265050)))

(declare-fun bm!265046 () Bool)

(assert (=> bm!265046 (= call!265053 call!265052)))

(declare-fun c!633321 () Bool)

(declare-fun d!1075984 () Bool)

(assert (=> d!1075984 (= c!633321 (or ((_ is EmptyExpr!10561) (ite c!633296 (reg!10890 (regex!5802 anOtherTypeRule!33)) (ite c!633295 (regTwo!21635 (regex!5802 anOtherTypeRule!33)) (regOne!21634 (regex!5802 anOtherTypeRule!33))))) ((_ is EmptyLang!10561) (ite c!633296 (reg!10890 (regex!5802 anOtherTypeRule!33)) (ite c!633295 (regTwo!21635 (regex!5802 anOtherTypeRule!33)) (regOne!21634 (regex!5802 anOtherTypeRule!33)))))))))

(assert (=> d!1075984 (= (usedCharacters!1014 (ite c!633296 (reg!10890 (regex!5802 anOtherTypeRule!33)) (ite c!633295 (regTwo!21635 (regex!5802 anOtherTypeRule!33)) (regOne!21634 (regex!5802 anOtherTypeRule!33))))) e!2268645)))

(declare-fun b!3663942 () Bool)

(assert (=> b!3663942 (= e!2268645 e!2268644)))

(declare-fun c!633324 () Bool)

(assert (=> b!3663942 (= c!633324 ((_ is ElementMatch!10561) (ite c!633296 (reg!10890 (regex!5802 anOtherTypeRule!33)) (ite c!633295 (regTwo!21635 (regex!5802 anOtherTypeRule!33)) (regOne!21634 (regex!5802 anOtherTypeRule!33))))))))

(declare-fun bm!265048 () Bool)

(assert (=> bm!265048 (= call!265052 (usedCharacters!1014 (ite c!633323 (reg!10890 (ite c!633296 (reg!10890 (regex!5802 anOtherTypeRule!33)) (ite c!633295 (regTwo!21635 (regex!5802 anOtherTypeRule!33)) (regOne!21634 (regex!5802 anOtherTypeRule!33))))) (ite c!633322 (regTwo!21635 (ite c!633296 (reg!10890 (regex!5802 anOtherTypeRule!33)) (ite c!633295 (regTwo!21635 (regex!5802 anOtherTypeRule!33)) (regOne!21634 (regex!5802 anOtherTypeRule!33))))) (regOne!21634 (ite c!633296 (reg!10890 (regex!5802 anOtherTypeRule!33)) (ite c!633295 (regTwo!21635 (regex!5802 anOtherTypeRule!33)) (regOne!21634 (regex!5802 anOtherTypeRule!33)))))))))))

(assert (= (and d!1075984 c!633321) b!3663939))

(assert (= (and d!1075984 (not c!633321)) b!3663942))

(assert (= (and b!3663942 c!633324) b!3663936))

(assert (= (and b!3663942 (not c!633324)) b!3663935))

(assert (= (and b!3663935 c!633323) b!3663938))

(assert (= (and b!3663935 (not c!633323)) b!3663937))

(assert (= (and b!3663937 c!633322) b!3663940))

(assert (= (and b!3663937 (not c!633322)) b!3663941))

(assert (= (or b!3663940 b!3663941) bm!265045))

(assert (= (or b!3663940 b!3663941) bm!265046))

(assert (= (or b!3663940 b!3663941) bm!265047))

(assert (= (or b!3663938 bm!265046) bm!265048))

(declare-fun m!4171099 () Bool)

(assert (=> bm!265045 m!4171099))

(declare-fun m!4171101 () Bool)

(assert (=> bm!265047 m!4171101))

(declare-fun m!4171103 () Bool)

(assert (=> bm!265048 m!4171103))

(assert (=> bm!265041 d!1075984))

(declare-fun bm!265049 () Bool)

(declare-fun call!265054 () Bool)

(assert (=> bm!265049 (= call!265054 (isEmpty!22924 (tail!5673 lt!1274731)))))

(declare-fun b!3663945 () Bool)

(declare-fun e!2268651 () Bool)

(assert (=> b!3663945 (= e!2268651 (matchR!5130 (derivativeStep!3224 (derivativeStep!3224 (regex!5802 rule!403) (head!7834 lt!1274731)) (head!7834 (tail!5673 lt!1274731))) (tail!5673 (tail!5673 lt!1274731))))))

(declare-fun b!3663946 () Bool)

(declare-fun e!2268652 () Bool)

(assert (=> b!3663946 (= e!2268652 (not (= (head!7834 (tail!5673 lt!1274731)) (c!633134 (derivativeStep!3224 (regex!5802 rule!403) (head!7834 lt!1274731))))))))

(declare-fun d!1075986 () Bool)

(declare-fun e!2268649 () Bool)

(assert (=> d!1075986 e!2268649))

(declare-fun c!633326 () Bool)

(assert (=> d!1075986 (= c!633326 ((_ is EmptyExpr!10561) (derivativeStep!3224 (regex!5802 rule!403) (head!7834 lt!1274731))))))

(declare-fun lt!1275150 () Bool)

(assert (=> d!1075986 (= lt!1275150 e!2268651)))

(declare-fun c!633328 () Bool)

(assert (=> d!1075986 (= c!633328 (isEmpty!22924 (tail!5673 lt!1274731)))))

(assert (=> d!1075986 (validRegex!4836 (derivativeStep!3224 (regex!5802 rule!403) (head!7834 lt!1274731)))))

(assert (=> d!1075986 (= (matchR!5130 (derivativeStep!3224 (regex!5802 rule!403) (head!7834 lt!1274731)) (tail!5673 lt!1274731)) lt!1275150)))

(declare-fun b!3663947 () Bool)

(declare-fun e!2268648 () Bool)

(assert (=> b!3663947 (= e!2268648 e!2268652)))

(declare-fun res!1487667 () Bool)

(assert (=> b!3663947 (=> res!1487667 e!2268652)))

(assert (=> b!3663947 (= res!1487667 call!265054)))

(declare-fun b!3663948 () Bool)

(declare-fun e!2268653 () Bool)

(assert (=> b!3663948 (= e!2268653 (= (head!7834 (tail!5673 lt!1274731)) (c!633134 (derivativeStep!3224 (regex!5802 rule!403) (head!7834 lt!1274731)))))))

(declare-fun b!3663949 () Bool)

(declare-fun res!1487662 () Bool)

(assert (=> b!3663949 (=> (not res!1487662) (not e!2268653))))

(assert (=> b!3663949 (= res!1487662 (not call!265054))))

(declare-fun b!3663950 () Bool)

(declare-fun e!2268654 () Bool)

(assert (=> b!3663950 (= e!2268654 e!2268648)))

(declare-fun res!1487664 () Bool)

(assert (=> b!3663950 (=> (not res!1487664) (not e!2268648))))

(assert (=> b!3663950 (= res!1487664 (not lt!1275150))))

(declare-fun b!3663951 () Bool)

(declare-fun e!2268650 () Bool)

(assert (=> b!3663951 (= e!2268650 (not lt!1275150))))

(declare-fun b!3663952 () Bool)

(assert (=> b!3663952 (= e!2268649 e!2268650)))

(declare-fun c!633327 () Bool)

(assert (=> b!3663952 (= c!633327 ((_ is EmptyLang!10561) (derivativeStep!3224 (regex!5802 rule!403) (head!7834 lt!1274731))))))

(declare-fun b!3663953 () Bool)

(declare-fun res!1487665 () Bool)

(assert (=> b!3663953 (=> res!1487665 e!2268652)))

(assert (=> b!3663953 (= res!1487665 (not (isEmpty!22924 (tail!5673 (tail!5673 lt!1274731)))))))

(declare-fun b!3663954 () Bool)

(declare-fun res!1487666 () Bool)

(assert (=> b!3663954 (=> res!1487666 e!2268654)))

(assert (=> b!3663954 (= res!1487666 (not ((_ is ElementMatch!10561) (derivativeStep!3224 (regex!5802 rule!403) (head!7834 lt!1274731)))))))

(assert (=> b!3663954 (= e!2268650 e!2268654)))

(declare-fun b!3663955 () Bool)

(declare-fun res!1487663 () Bool)

(assert (=> b!3663955 (=> (not res!1487663) (not e!2268653))))

(assert (=> b!3663955 (= res!1487663 (isEmpty!22924 (tail!5673 (tail!5673 lt!1274731))))))

(declare-fun b!3663956 () Bool)

(assert (=> b!3663956 (= e!2268649 (= lt!1275150 call!265054))))

(declare-fun b!3663957 () Bool)

(assert (=> b!3663957 (= e!2268651 (nullable!3675 (derivativeStep!3224 (regex!5802 rule!403) (head!7834 lt!1274731))))))

(declare-fun b!3663958 () Bool)

(declare-fun res!1487661 () Bool)

(assert (=> b!3663958 (=> res!1487661 e!2268654)))

(assert (=> b!3663958 (= res!1487661 e!2268653)))

(declare-fun res!1487660 () Bool)

(assert (=> b!3663958 (=> (not res!1487660) (not e!2268653))))

(assert (=> b!3663958 (= res!1487660 lt!1275150)))

(assert (= (and d!1075986 c!633328) b!3663957))

(assert (= (and d!1075986 (not c!633328)) b!3663945))

(assert (= (and d!1075986 c!633326) b!3663956))

(assert (= (and d!1075986 (not c!633326)) b!3663952))

(assert (= (and b!3663952 c!633327) b!3663951))

(assert (= (and b!3663952 (not c!633327)) b!3663954))

(assert (= (and b!3663954 (not res!1487666)) b!3663958))

(assert (= (and b!3663958 res!1487660) b!3663949))

(assert (= (and b!3663949 res!1487662) b!3663955))

(assert (= (and b!3663955 res!1487663) b!3663948))

(assert (= (and b!3663958 (not res!1487661)) b!3663950))

(assert (= (and b!3663950 res!1487664) b!3663947))

(assert (= (and b!3663947 (not res!1487667)) b!3663953))

(assert (= (and b!3663953 (not res!1487665)) b!3663946))

(assert (= (or b!3663956 b!3663947 b!3663949) bm!265049))

(assert (=> b!3663953 m!4170575))

(declare-fun m!4171111 () Bool)

(assert (=> b!3663953 m!4171111))

(assert (=> b!3663953 m!4171111))

(declare-fun m!4171113 () Bool)

(assert (=> b!3663953 m!4171113))

(assert (=> b!3663955 m!4170575))

(assert (=> b!3663955 m!4171111))

(assert (=> b!3663955 m!4171111))

(assert (=> b!3663955 m!4171113))

(assert (=> b!3663948 m!4170575))

(declare-fun m!4171115 () Bool)

(assert (=> b!3663948 m!4171115))

(assert (=> b!3663945 m!4170575))

(assert (=> b!3663945 m!4171115))

(assert (=> b!3663945 m!4170953))

(assert (=> b!3663945 m!4171115))

(declare-fun m!4171117 () Bool)

(assert (=> b!3663945 m!4171117))

(assert (=> b!3663945 m!4170575))

(assert (=> b!3663945 m!4171111))

(assert (=> b!3663945 m!4171117))

(assert (=> b!3663945 m!4171111))

(declare-fun m!4171119 () Bool)

(assert (=> b!3663945 m!4171119))

(assert (=> b!3663957 m!4170953))

(declare-fun m!4171121 () Bool)

(assert (=> b!3663957 m!4171121))

(assert (=> b!3663946 m!4170575))

(assert (=> b!3663946 m!4171115))

(assert (=> d!1075986 m!4170575))

(assert (=> d!1075986 m!4170951))

(assert (=> d!1075986 m!4170953))

(declare-fun m!4171123 () Bool)

(assert (=> d!1075986 m!4171123))

(assert (=> bm!265049 m!4170575))

(assert (=> bm!265049 m!4170951))

(assert (=> b!3663722 d!1075986))

(declare-fun b!3663988 () Bool)

(declare-fun e!2268674 () Regex!10561)

(assert (=> b!3663988 (= e!2268674 EmptyLang!10561)))

(declare-fun b!3663989 () Bool)

(declare-fun e!2268675 () Regex!10561)

(declare-fun call!265065 () Regex!10561)

(assert (=> b!3663989 (= e!2268675 (Concat!16594 call!265065 (regex!5802 rule!403)))))

(declare-fun b!3663990 () Bool)

(declare-fun e!2268672 () Regex!10561)

(assert (=> b!3663990 (= e!2268672 e!2268675)))

(declare-fun c!633345 () Bool)

(assert (=> b!3663990 (= c!633345 ((_ is Star!10561) (regex!5802 rule!403)))))

(declare-fun b!3663991 () Bool)

(declare-fun call!265063 () Regex!10561)

(declare-fun call!265064 () Regex!10561)

(declare-fun e!2268673 () Regex!10561)

(assert (=> b!3663991 (= e!2268673 (Union!10561 (Concat!16594 call!265064 (regTwo!21634 (regex!5802 rule!403))) call!265063))))

(declare-fun b!3663992 () Bool)

(declare-fun e!2268671 () Regex!10561)

(assert (=> b!3663992 (= e!2268671 (ite (= (head!7834 lt!1274731) (c!633134 (regex!5802 rule!403))) EmptyExpr!10561 EmptyLang!10561))))

(declare-fun b!3663993 () Bool)

(assert (=> b!3663993 (= e!2268674 e!2268671)))

(declare-fun c!633344 () Bool)

(assert (=> b!3663993 (= c!633344 ((_ is ElementMatch!10561) (regex!5802 rule!403)))))

(declare-fun b!3663994 () Bool)

(declare-fun c!633347 () Bool)

(assert (=> b!3663994 (= c!633347 (nullable!3675 (regOne!21634 (regex!5802 rule!403))))))

(assert (=> b!3663994 (= e!2268675 e!2268673)))

(declare-fun b!3663995 () Bool)

(assert (=> b!3663995 (= e!2268673 (Union!10561 (Concat!16594 call!265064 (regTwo!21634 (regex!5802 rule!403))) EmptyLang!10561))))

(declare-fun b!3663996 () Bool)

(declare-fun call!265066 () Regex!10561)

(assert (=> b!3663996 (= e!2268672 (Union!10561 call!265063 call!265066))))

(declare-fun c!633346 () Bool)

(declare-fun bm!265059 () Bool)

(assert (=> bm!265059 (= call!265066 (derivativeStep!3224 (ite c!633346 (regTwo!21635 (regex!5802 rule!403)) (ite c!633345 (reg!10890 (regex!5802 rule!403)) (regOne!21634 (regex!5802 rule!403)))) (head!7834 lt!1274731)))))

(declare-fun bm!265060 () Bool)

(assert (=> bm!265060 (= call!265064 call!265065)))

(declare-fun bm!265061 () Bool)

(assert (=> bm!265061 (= call!265063 (derivativeStep!3224 (ite c!633346 (regOne!21635 (regex!5802 rule!403)) (regTwo!21634 (regex!5802 rule!403))) (head!7834 lt!1274731)))))

(declare-fun b!3663997 () Bool)

(assert (=> b!3663997 (= c!633346 ((_ is Union!10561) (regex!5802 rule!403)))))

(assert (=> b!3663997 (= e!2268671 e!2268672)))

(declare-fun bm!265058 () Bool)

(assert (=> bm!265058 (= call!265065 call!265066)))

(declare-fun d!1075994 () Bool)

(declare-fun lt!1275155 () Regex!10561)

(assert (=> d!1075994 (validRegex!4836 lt!1275155)))

(assert (=> d!1075994 (= lt!1275155 e!2268674)))

(declare-fun c!633343 () Bool)

(assert (=> d!1075994 (= c!633343 (or ((_ is EmptyExpr!10561) (regex!5802 rule!403)) ((_ is EmptyLang!10561) (regex!5802 rule!403))))))

(assert (=> d!1075994 (validRegex!4836 (regex!5802 rule!403))))

(assert (=> d!1075994 (= (derivativeStep!3224 (regex!5802 rule!403) (head!7834 lt!1274731)) lt!1275155)))

(assert (= (and d!1075994 c!633343) b!3663988))

(assert (= (and d!1075994 (not c!633343)) b!3663993))

(assert (= (and b!3663993 c!633344) b!3663992))

(assert (= (and b!3663993 (not c!633344)) b!3663997))

(assert (= (and b!3663997 c!633346) b!3663996))

(assert (= (and b!3663997 (not c!633346)) b!3663990))

(assert (= (and b!3663990 c!633345) b!3663989))

(assert (= (and b!3663990 (not c!633345)) b!3663994))

(assert (= (and b!3663994 c!633347) b!3663991))

(assert (= (and b!3663994 (not c!633347)) b!3663995))

(assert (= (or b!3663991 b!3663995) bm!265060))

(assert (= (or b!3663989 bm!265060) bm!265058))

(assert (= (or b!3663996 bm!265058) bm!265059))

(assert (= (or b!3663996 b!3663991) bm!265061))

(declare-fun m!4171143 () Bool)

(assert (=> b!3663994 m!4171143))

(assert (=> bm!265059 m!4170581))

(declare-fun m!4171145 () Bool)

(assert (=> bm!265059 m!4171145))

(assert (=> bm!265061 m!4170581))

(declare-fun m!4171147 () Bool)

(assert (=> bm!265061 m!4171147))

(declare-fun m!4171149 () Bool)

(assert (=> d!1075994 m!4171149))

(assert (=> d!1075994 m!4170013))

(assert (=> b!3663722 d!1075994))

(assert (=> b!3663722 d!1075960))

(declare-fun d!1076006 () Bool)

(assert (=> d!1076006 (= (tail!5673 lt!1274731) (t!298753 lt!1274731))))

(assert (=> b!3663722 d!1076006))

(declare-fun d!1076008 () Bool)

(declare-fun c!633350 () Bool)

(assert (=> d!1076008 (= c!633350 ((_ is Nil!38647) rules!3307))))

(declare-fun e!2268678 () (InoxSet Rule!11404))

(assert (=> d!1076008 (= (content!5591 rules!3307) e!2268678)))

(declare-fun b!3664002 () Bool)

(assert (=> b!3664002 (= e!2268678 ((as const (Array Rule!11404 Bool)) false))))

(declare-fun b!3664003 () Bool)

(assert (=> b!3664003 (= e!2268678 ((_ map or) (store ((as const (Array Rule!11404 Bool)) false) (h!44067 rules!3307) true) (content!5591 (t!298754 rules!3307))))))

(assert (= (and d!1076008 c!633350) b!3664002))

(assert (= (and d!1076008 (not c!633350)) b!3664003))

(declare-fun m!4171153 () Bool)

(assert (=> b!3664003 m!4171153))

(declare-fun m!4171155 () Bool)

(assert (=> b!3664003 m!4171155))

(assert (=> d!1075868 d!1076008))

(declare-fun d!1076014 () Bool)

(declare-fun nullableFct!1041 (Regex!10561) Bool)

(assert (=> d!1076014 (= (nullable!3675 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (nullableFct!1041 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun bs!572777 () Bool)

(assert (= bs!572777 d!1076014))

(declare-fun m!4171157 () Bool)

(assert (=> bs!572777 m!4171157))

(assert (=> b!3663649 d!1076014))

(declare-fun bs!572778 () Bool)

(declare-fun d!1076016 () Bool)

(assert (= bs!572778 (and d!1076016 d!1075606)))

(declare-fun lambda!124608 () Int)

(assert (=> bs!572778 (= (and (= (toChars!7953 (transformation!5802 (h!44067 rules!3307))) (toChars!7953 (transformation!5802 rule!403))) (= (toValue!8094 (transformation!5802 (h!44067 rules!3307))) (toValue!8094 (transformation!5802 rule!403)))) (= lambda!124608 lambda!124596))))

(declare-fun bs!572779 () Bool)

(assert (= bs!572779 (and d!1076016 d!1075792)))

(assert (=> bs!572779 (= (and (= (toChars!7953 (transformation!5802 (h!44067 rules!3307))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) (= (toValue!8094 (transformation!5802 (h!44067 rules!3307))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (= lambda!124608 lambda!124598))))

(assert (=> d!1076016 true))

(assert (=> d!1076016 (< (dynLambda!16900 order!21359 (toChars!7953 (transformation!5802 (h!44067 rules!3307)))) (dynLambda!16899 order!21357 lambda!124608))))

(assert (=> d!1076016 true))

(assert (=> d!1076016 (< (dynLambda!16898 order!21355 (toValue!8094 (transformation!5802 (h!44067 rules!3307)))) (dynLambda!16899 order!21357 lambda!124608))))

(declare-fun Forall!1370 (Int) Bool)

(assert (=> d!1076016 (= (semiInverseModEq!2475 (toChars!7953 (transformation!5802 (h!44067 rules!3307))) (toValue!8094 (transformation!5802 (h!44067 rules!3307)))) (Forall!1370 lambda!124608))))

(declare-fun bs!572780 () Bool)

(assert (= bs!572780 d!1076016))

(declare-fun m!4171159 () Bool)

(assert (=> bs!572780 m!4171159))

(assert (=> d!1075828 d!1076016))

(declare-fun d!1076018 () Bool)

(assert (=> d!1076018 (= (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 (_1!22390 lt!1274714))))) (v!38128 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 (_1!22390 lt!1274714))))))))

(assert (=> b!3663414 d!1076018))

(assert (=> b!3663414 d!1075652))

(declare-fun b!3664008 () Bool)

(declare-fun c!633353 () Bool)

(assert (=> b!3664008 (= c!633353 ((_ is Star!10561) (ite c!633295 (regOne!21635 (regex!5802 anOtherTypeRule!33)) (regTwo!21634 (regex!5802 anOtherTypeRule!33)))))))

(declare-fun e!2268680 () List!38770)

(declare-fun e!2268682 () List!38770)

(assert (=> b!3664008 (= e!2268680 e!2268682)))

(declare-fun b!3664009 () Bool)

(assert (=> b!3664009 (= e!2268680 (Cons!38646 (c!633134 (ite c!633295 (regOne!21635 (regex!5802 anOtherTypeRule!33)) (regTwo!21634 (regex!5802 anOtherTypeRule!33)))) Nil!38646))))

(declare-fun b!3664010 () Bool)

(declare-fun e!2268679 () List!38770)

(assert (=> b!3664010 (= e!2268682 e!2268679)))

(declare-fun c!633352 () Bool)

(assert (=> b!3664010 (= c!633352 ((_ is Union!10561) (ite c!633295 (regOne!21635 (regex!5802 anOtherTypeRule!33)) (regTwo!21634 (regex!5802 anOtherTypeRule!33)))))))

(declare-fun bm!265062 () Bool)

(declare-fun call!265068 () List!38770)

(assert (=> bm!265062 (= call!265068 (usedCharacters!1014 (ite c!633352 (regOne!21635 (ite c!633295 (regOne!21635 (regex!5802 anOtherTypeRule!33)) (regTwo!21634 (regex!5802 anOtherTypeRule!33)))) (regTwo!21634 (ite c!633295 (regOne!21635 (regex!5802 anOtherTypeRule!33)) (regTwo!21634 (regex!5802 anOtherTypeRule!33)))))))))

(declare-fun b!3664011 () Bool)

(declare-fun call!265069 () List!38770)

(assert (=> b!3664011 (= e!2268682 call!265069)))

(declare-fun b!3664012 () Bool)

(declare-fun e!2268681 () List!38770)

(assert (=> b!3664012 (= e!2268681 Nil!38646)))

(declare-fun call!265070 () List!38770)

(declare-fun bm!265064 () Bool)

(declare-fun call!265067 () List!38770)

(assert (=> bm!265064 (= call!265067 (++!9618 (ite c!633352 call!265068 call!265070) (ite c!633352 call!265070 call!265068)))))

(declare-fun b!3664013 () Bool)

(assert (=> b!3664013 (= e!2268679 call!265067)))

(declare-fun b!3664014 () Bool)

(assert (=> b!3664014 (= e!2268679 call!265067)))

(declare-fun bm!265063 () Bool)

(assert (=> bm!265063 (= call!265070 call!265069)))

(declare-fun d!1076020 () Bool)

(declare-fun c!633351 () Bool)

(assert (=> d!1076020 (= c!633351 (or ((_ is EmptyExpr!10561) (ite c!633295 (regOne!21635 (regex!5802 anOtherTypeRule!33)) (regTwo!21634 (regex!5802 anOtherTypeRule!33)))) ((_ is EmptyLang!10561) (ite c!633295 (regOne!21635 (regex!5802 anOtherTypeRule!33)) (regTwo!21634 (regex!5802 anOtherTypeRule!33))))))))

(assert (=> d!1076020 (= (usedCharacters!1014 (ite c!633295 (regOne!21635 (regex!5802 anOtherTypeRule!33)) (regTwo!21634 (regex!5802 anOtherTypeRule!33)))) e!2268681)))

(declare-fun b!3664015 () Bool)

(assert (=> b!3664015 (= e!2268681 e!2268680)))

(declare-fun c!633354 () Bool)

(assert (=> b!3664015 (= c!633354 ((_ is ElementMatch!10561) (ite c!633295 (regOne!21635 (regex!5802 anOtherTypeRule!33)) (regTwo!21634 (regex!5802 anOtherTypeRule!33)))))))

(declare-fun bm!265065 () Bool)

(assert (=> bm!265065 (= call!265069 (usedCharacters!1014 (ite c!633353 (reg!10890 (ite c!633295 (regOne!21635 (regex!5802 anOtherTypeRule!33)) (regTwo!21634 (regex!5802 anOtherTypeRule!33)))) (ite c!633352 (regTwo!21635 (ite c!633295 (regOne!21635 (regex!5802 anOtherTypeRule!33)) (regTwo!21634 (regex!5802 anOtherTypeRule!33)))) (regOne!21634 (ite c!633295 (regOne!21635 (regex!5802 anOtherTypeRule!33)) (regTwo!21634 (regex!5802 anOtherTypeRule!33))))))))))

(assert (= (and d!1076020 c!633351) b!3664012))

(assert (= (and d!1076020 (not c!633351)) b!3664015))

(assert (= (and b!3664015 c!633354) b!3664009))

(assert (= (and b!3664015 (not c!633354)) b!3664008))

(assert (= (and b!3664008 c!633353) b!3664011))

(assert (= (and b!3664008 (not c!633353)) b!3664010))

(assert (= (and b!3664010 c!633352) b!3664013))

(assert (= (and b!3664010 (not c!633352)) b!3664014))

(assert (= (or b!3664013 b!3664014) bm!265062))

(assert (= (or b!3664013 b!3664014) bm!265063))

(assert (= (or b!3664013 b!3664014) bm!265064))

(assert (= (or b!3664011 bm!265063) bm!265065))

(declare-fun m!4171161 () Bool)

(assert (=> bm!265062 m!4171161))

(declare-fun m!4171163 () Bool)

(assert (=> bm!265064 m!4171163))

(declare-fun m!4171165 () Bool)

(assert (=> bm!265065 m!4171165))

(assert (=> bm!265038 d!1076020))

(declare-fun d!1076022 () Bool)

(assert (=> d!1076022 (= (isDefined!6464 lt!1275116) (not (isEmpty!22928 lt!1275116)))))

(declare-fun bs!572781 () Bool)

(assert (= bs!572781 d!1076022))

(assert (=> bs!572781 m!4170885))

(assert (=> b!3663667 d!1076022))

(declare-fun b!3664016 () Bool)

(declare-fun c!633357 () Bool)

(assert (=> b!3664016 (= c!633357 ((_ is Star!10561) (ite c!633165 (regOne!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regTwo!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))))

(declare-fun e!2268684 () List!38770)

(declare-fun e!2268686 () List!38770)

(assert (=> b!3664016 (= e!2268684 e!2268686)))

(declare-fun b!3664017 () Bool)

(assert (=> b!3664017 (= e!2268684 (Cons!38646 (c!633134 (ite c!633165 (regOne!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regTwo!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))) Nil!38646))))

(declare-fun b!3664018 () Bool)

(declare-fun e!2268683 () List!38770)

(assert (=> b!3664018 (= e!2268686 e!2268683)))

(declare-fun c!633356 () Bool)

(assert (=> b!3664018 (= c!633356 ((_ is Union!10561) (ite c!633165 (regOne!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regTwo!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))))

(declare-fun call!265072 () List!38770)

(declare-fun bm!265066 () Bool)

(assert (=> bm!265066 (= call!265072 (usedCharacters!1014 (ite c!633356 (regOne!21635 (ite c!633165 (regOne!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regTwo!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))) (regTwo!21634 (ite c!633165 (regOne!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regTwo!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))))))

(declare-fun b!3664019 () Bool)

(declare-fun call!265073 () List!38770)

(assert (=> b!3664019 (= e!2268686 call!265073)))

(declare-fun b!3664020 () Bool)

(declare-fun e!2268685 () List!38770)

(assert (=> b!3664020 (= e!2268685 Nil!38646)))

(declare-fun call!265074 () List!38770)

(declare-fun bm!265068 () Bool)

(declare-fun call!265071 () List!38770)

(assert (=> bm!265068 (= call!265071 (++!9618 (ite c!633356 call!265072 call!265074) (ite c!633356 call!265074 call!265072)))))

(declare-fun b!3664021 () Bool)

(assert (=> b!3664021 (= e!2268683 call!265071)))

(declare-fun b!3664022 () Bool)

(assert (=> b!3664022 (= e!2268683 call!265071)))

(declare-fun bm!265067 () Bool)

(assert (=> bm!265067 (= call!265074 call!265073)))

(declare-fun d!1076024 () Bool)

(declare-fun c!633355 () Bool)

(assert (=> d!1076024 (= c!633355 (or ((_ is EmptyExpr!10561) (ite c!633165 (regOne!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regTwo!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))) ((_ is EmptyLang!10561) (ite c!633165 (regOne!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regTwo!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))))))

(assert (=> d!1076024 (= (usedCharacters!1014 (ite c!633165 (regOne!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regTwo!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))) e!2268685)))

(declare-fun b!3664023 () Bool)

(assert (=> b!3664023 (= e!2268685 e!2268684)))

(declare-fun c!633358 () Bool)

(assert (=> b!3664023 (= c!633358 ((_ is ElementMatch!10561) (ite c!633165 (regOne!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regTwo!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))))

(declare-fun bm!265069 () Bool)

(assert (=> bm!265069 (= call!265073 (usedCharacters!1014 (ite c!633357 (reg!10890 (ite c!633165 (regOne!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regTwo!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))) (ite c!633356 (regTwo!21635 (ite c!633165 (regOne!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regTwo!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))) (regOne!21634 (ite c!633165 (regOne!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regTwo!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))))))))

(assert (= (and d!1076024 c!633355) b!3664020))

(assert (= (and d!1076024 (not c!633355)) b!3664023))

(assert (= (and b!3664023 c!633358) b!3664017))

(assert (= (and b!3664023 (not c!633358)) b!3664016))

(assert (= (and b!3664016 c!633357) b!3664019))

(assert (= (and b!3664016 (not c!633357)) b!3664018))

(assert (= (and b!3664018 c!633356) b!3664021))

(assert (= (and b!3664018 (not c!633356)) b!3664022))

(assert (= (or b!3664021 b!3664022) bm!265066))

(assert (= (or b!3664021 b!3664022) bm!265067))

(assert (= (or b!3664021 b!3664022) bm!265068))

(assert (= (or b!3664019 bm!265067) bm!265069))

(declare-fun m!4171167 () Bool)

(assert (=> bm!265066 m!4171167))

(declare-fun m!4171169 () Bool)

(assert (=> bm!265068 m!4171169))

(declare-fun m!4171171 () Bool)

(assert (=> bm!265069 m!4171171))

(assert (=> bm!265004 d!1076024))

(declare-fun d!1076026 () Bool)

(declare-fun c!633361 () Bool)

(assert (=> d!1076026 (= c!633361 ((_ is Nil!38646) lt!1274990))))

(declare-fun e!2268689 () (InoxSet C!21308))

(assert (=> d!1076026 (= (content!5589 lt!1274990) e!2268689)))

(declare-fun b!3664028 () Bool)

(assert (=> b!3664028 (= e!2268689 ((as const (Array C!21308 Bool)) false))))

(declare-fun b!3664029 () Bool)

(assert (=> b!3664029 (= e!2268689 ((_ map or) (store ((as const (Array C!21308 Bool)) false) (h!44066 lt!1274990) true) (content!5589 (t!298753 lt!1274990))))))

(assert (= (and d!1076026 c!633361) b!3664028))

(assert (= (and d!1076026 (not c!633361)) b!3664029))

(declare-fun m!4171173 () Bool)

(assert (=> b!3664029 m!4171173))

(declare-fun m!4171175 () Bool)

(assert (=> b!3664029 m!4171175))

(assert (=> d!1075778 d!1076026))

(declare-fun d!1076028 () Bool)

(declare-fun c!633362 () Bool)

(assert (=> d!1076028 (= c!633362 ((_ is Nil!38646) lt!1274729))))

(declare-fun e!2268690 () (InoxSet C!21308))

(assert (=> d!1076028 (= (content!5589 lt!1274729) e!2268690)))

(declare-fun b!3664030 () Bool)

(assert (=> b!3664030 (= e!2268690 ((as const (Array C!21308 Bool)) false))))

(declare-fun b!3664031 () Bool)

(assert (=> b!3664031 (= e!2268690 ((_ map or) (store ((as const (Array C!21308 Bool)) false) (h!44066 lt!1274729) true) (content!5589 (t!298753 lt!1274729))))))

(assert (= (and d!1076028 c!633362) b!3664030))

(assert (= (and d!1076028 (not c!633362)) b!3664031))

(declare-fun m!4171177 () Bool)

(assert (=> b!3664031 m!4171177))

(declare-fun m!4171179 () Bool)

(assert (=> b!3664031 m!4171179))

(assert (=> d!1075778 d!1076028))

(declare-fun d!1076030 () Bool)

(declare-fun c!633363 () Bool)

(assert (=> d!1076030 (= c!633363 ((_ is Nil!38646) (_2!22390 lt!1274714)))))

(declare-fun e!2268691 () (InoxSet C!21308))

(assert (=> d!1076030 (= (content!5589 (_2!22390 lt!1274714)) e!2268691)))

(declare-fun b!3664032 () Bool)

(assert (=> b!3664032 (= e!2268691 ((as const (Array C!21308 Bool)) false))))

(declare-fun b!3664033 () Bool)

(assert (=> b!3664033 (= e!2268691 ((_ map or) (store ((as const (Array C!21308 Bool)) false) (h!44066 (_2!22390 lt!1274714)) true) (content!5589 (t!298753 (_2!22390 lt!1274714)))))))

(assert (= (and d!1076030 c!633363) b!3664032))

(assert (= (and d!1076030 (not c!633363)) b!3664033))

(declare-fun m!4171181 () Bool)

(assert (=> b!3664033 m!4171181))

(declare-fun m!4171183 () Bool)

(assert (=> b!3664033 m!4171183))

(assert (=> d!1075778 d!1076030))

(assert (=> d!1075586 d!1075870))

(declare-fun d!1076032 () Bool)

(assert (=> d!1076032 (not (matchR!5130 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) lt!1274729))))

(assert (=> d!1076032 true))

(declare-fun _$127!433 () Unit!55997)

(assert (=> d!1076032 (= (choose!21705 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) lt!1274729 lt!1274726) _$127!433)))

(declare-fun bs!572782 () Bool)

(assert (= bs!572782 d!1076032))

(assert (=> bs!572782 m!4169921))

(assert (=> d!1075586 d!1076032))

(declare-fun b!3664052 () Bool)

(declare-fun e!2268712 () Bool)

(declare-fun e!2268707 () Bool)

(assert (=> b!3664052 (= e!2268712 e!2268707)))

(declare-fun res!1487683 () Bool)

(assert (=> b!3664052 (=> (not res!1487683) (not e!2268707))))

(declare-fun call!265082 () Bool)

(assert (=> b!3664052 (= res!1487683 call!265082)))

(declare-fun b!3664053 () Bool)

(declare-fun e!2268710 () Bool)

(declare-fun call!265083 () Bool)

(assert (=> b!3664053 (= e!2268710 call!265083)))

(declare-fun b!3664054 () Bool)

(declare-fun e!2268711 () Bool)

(assert (=> b!3664054 (= e!2268711 e!2268710)))

(declare-fun res!1487684 () Bool)

(assert (=> b!3664054 (= res!1487684 (not (nullable!3675 (reg!10890 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))))

(assert (=> b!3664054 (=> (not res!1487684) (not e!2268710))))

(declare-fun b!3664055 () Bool)

(declare-fun e!2268708 () Bool)

(assert (=> b!3664055 (= e!2268708 e!2268711)))

(declare-fun c!633370 () Bool)

(assert (=> b!3664055 (= c!633370 ((_ is Star!10561) (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun b!3664056 () Bool)

(declare-fun e!2268709 () Bool)

(assert (=> b!3664056 (= e!2268709 call!265082)))

(declare-fun b!3664057 () Bool)

(declare-fun res!1487681 () Bool)

(assert (=> b!3664057 (=> res!1487681 e!2268712)))

(assert (=> b!3664057 (= res!1487681 (not ((_ is Concat!16594) (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))))

(declare-fun e!2268706 () Bool)

(assert (=> b!3664057 (= e!2268706 e!2268712)))

(declare-fun bm!265077 () Bool)

(declare-fun call!265081 () Bool)

(assert (=> bm!265077 (= call!265081 call!265083)))

(declare-fun c!633369 () Bool)

(declare-fun bm!265078 () Bool)

(assert (=> bm!265078 (= call!265083 (validRegex!4836 (ite c!633370 (reg!10890 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (ite c!633369 (regOne!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regTwo!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))))))

(declare-fun b!3664058 () Bool)

(assert (=> b!3664058 (= e!2268711 e!2268706)))

(assert (=> b!3664058 (= c!633369 ((_ is Union!10561) (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun d!1076034 () Bool)

(declare-fun res!1487680 () Bool)

(assert (=> d!1076034 (=> res!1487680 e!2268708)))

(assert (=> d!1076034 (= res!1487680 ((_ is ElementMatch!10561) (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(assert (=> d!1076034 (= (validRegex!4836 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) e!2268708)))

(declare-fun bm!265076 () Bool)

(assert (=> bm!265076 (= call!265082 (validRegex!4836 (ite c!633369 (regTwo!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regOne!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))))

(declare-fun b!3664059 () Bool)

(declare-fun res!1487682 () Bool)

(assert (=> b!3664059 (=> (not res!1487682) (not e!2268709))))

(assert (=> b!3664059 (= res!1487682 call!265081)))

(assert (=> b!3664059 (= e!2268706 e!2268709)))

(declare-fun b!3664060 () Bool)

(assert (=> b!3664060 (= e!2268707 call!265081)))

(assert (= (and d!1076034 (not res!1487680)) b!3664055))

(assert (= (and b!3664055 c!633370) b!3664054))

(assert (= (and b!3664055 (not c!633370)) b!3664058))

(assert (= (and b!3664054 res!1487684) b!3664053))

(assert (= (and b!3664058 c!633369) b!3664059))

(assert (= (and b!3664058 (not c!633369)) b!3664057))

(assert (= (and b!3664059 res!1487682) b!3664056))

(assert (= (and b!3664057 (not res!1487681)) b!3664052))

(assert (= (and b!3664052 res!1487683) b!3664060))

(assert (= (or b!3664059 b!3664060) bm!265077))

(assert (= (or b!3664056 b!3664052) bm!265076))

(assert (= (or b!3664053 bm!265077) bm!265078))

(declare-fun m!4171185 () Bool)

(assert (=> b!3664054 m!4171185))

(declare-fun m!4171187 () Bool)

(assert (=> bm!265078 m!4171187))

(declare-fun m!4171189 () Bool)

(assert (=> bm!265076 m!4171189))

(assert (=> d!1075586 d!1076034))

(declare-fun bm!265079 () Bool)

(declare-fun call!265084 () Bool)

(assert (=> bm!265079 (= call!265084 (isEmpty!22924 (tail!5673 (list!14340 (charsOf!3816 (_1!22390 lt!1274714))))))))

(declare-fun b!3664061 () Bool)

(declare-fun e!2268716 () Bool)

(assert (=> b!3664061 (= e!2268716 (matchR!5130 (derivativeStep!3224 (derivativeStep!3224 (regex!5802 lt!1274756) (head!7834 (list!14340 (charsOf!3816 (_1!22390 lt!1274714))))) (head!7834 (tail!5673 (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))))) (tail!5673 (tail!5673 (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))))))))

(declare-fun b!3664062 () Bool)

(declare-fun e!2268717 () Bool)

(assert (=> b!3664062 (= e!2268717 (not (= (head!7834 (tail!5673 (list!14340 (charsOf!3816 (_1!22390 lt!1274714))))) (c!633134 (derivativeStep!3224 (regex!5802 lt!1274756) (head!7834 (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))))))))))

(declare-fun d!1076036 () Bool)

(declare-fun e!2268714 () Bool)

(assert (=> d!1076036 e!2268714))

(declare-fun c!633371 () Bool)

(assert (=> d!1076036 (= c!633371 ((_ is EmptyExpr!10561) (derivativeStep!3224 (regex!5802 lt!1274756) (head!7834 (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))))))))

(declare-fun lt!1275156 () Bool)

(assert (=> d!1076036 (= lt!1275156 e!2268716)))

(declare-fun c!633373 () Bool)

(assert (=> d!1076036 (= c!633373 (isEmpty!22924 (tail!5673 (list!14340 (charsOf!3816 (_1!22390 lt!1274714))))))))

(assert (=> d!1076036 (validRegex!4836 (derivativeStep!3224 (regex!5802 lt!1274756) (head!7834 (list!14340 (charsOf!3816 (_1!22390 lt!1274714))))))))

(assert (=> d!1076036 (= (matchR!5130 (derivativeStep!3224 (regex!5802 lt!1274756) (head!7834 (list!14340 (charsOf!3816 (_1!22390 lt!1274714))))) (tail!5673 (list!14340 (charsOf!3816 (_1!22390 lt!1274714))))) lt!1275156)))

(declare-fun b!3664063 () Bool)

(declare-fun e!2268713 () Bool)

(assert (=> b!3664063 (= e!2268713 e!2268717)))

(declare-fun res!1487692 () Bool)

(assert (=> b!3664063 (=> res!1487692 e!2268717)))

(assert (=> b!3664063 (= res!1487692 call!265084)))

(declare-fun b!3664064 () Bool)

(declare-fun e!2268718 () Bool)

(assert (=> b!3664064 (= e!2268718 (= (head!7834 (tail!5673 (list!14340 (charsOf!3816 (_1!22390 lt!1274714))))) (c!633134 (derivativeStep!3224 (regex!5802 lt!1274756) (head!7834 (list!14340 (charsOf!3816 (_1!22390 lt!1274714))))))))))

(declare-fun b!3664065 () Bool)

(declare-fun res!1487687 () Bool)

(assert (=> b!3664065 (=> (not res!1487687) (not e!2268718))))

(assert (=> b!3664065 (= res!1487687 (not call!265084))))

(declare-fun b!3664066 () Bool)

(declare-fun e!2268719 () Bool)

(assert (=> b!3664066 (= e!2268719 e!2268713)))

(declare-fun res!1487689 () Bool)

(assert (=> b!3664066 (=> (not res!1487689) (not e!2268713))))

(assert (=> b!3664066 (= res!1487689 (not lt!1275156))))

(declare-fun b!3664067 () Bool)

(declare-fun e!2268715 () Bool)

(assert (=> b!3664067 (= e!2268715 (not lt!1275156))))

(declare-fun b!3664068 () Bool)

(assert (=> b!3664068 (= e!2268714 e!2268715)))

(declare-fun c!633372 () Bool)

(assert (=> b!3664068 (= c!633372 ((_ is EmptyLang!10561) (derivativeStep!3224 (regex!5802 lt!1274756) (head!7834 (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))))))))

(declare-fun b!3664069 () Bool)

(declare-fun res!1487690 () Bool)

(assert (=> b!3664069 (=> res!1487690 e!2268717)))

(assert (=> b!3664069 (= res!1487690 (not (isEmpty!22924 (tail!5673 (tail!5673 (list!14340 (charsOf!3816 (_1!22390 lt!1274714))))))))))

(declare-fun b!3664070 () Bool)

(declare-fun res!1487691 () Bool)

(assert (=> b!3664070 (=> res!1487691 e!2268719)))

(assert (=> b!3664070 (= res!1487691 (not ((_ is ElementMatch!10561) (derivativeStep!3224 (regex!5802 lt!1274756) (head!7834 (list!14340 (charsOf!3816 (_1!22390 lt!1274714))))))))))

(assert (=> b!3664070 (= e!2268715 e!2268719)))

(declare-fun b!3664071 () Bool)

(declare-fun res!1487688 () Bool)

(assert (=> b!3664071 (=> (not res!1487688) (not e!2268718))))

(assert (=> b!3664071 (= res!1487688 (isEmpty!22924 (tail!5673 (tail!5673 (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))))))))

(declare-fun b!3664072 () Bool)

(assert (=> b!3664072 (= e!2268714 (= lt!1275156 call!265084))))

(declare-fun b!3664073 () Bool)

(assert (=> b!3664073 (= e!2268716 (nullable!3675 (derivativeStep!3224 (regex!5802 lt!1274756) (head!7834 (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))))))))

(declare-fun b!3664074 () Bool)

(declare-fun res!1487686 () Bool)

(assert (=> b!3664074 (=> res!1487686 e!2268719)))

(assert (=> b!3664074 (= res!1487686 e!2268718)))

(declare-fun res!1487685 () Bool)

(assert (=> b!3664074 (=> (not res!1487685) (not e!2268718))))

(assert (=> b!3664074 (= res!1487685 lt!1275156)))

(assert (= (and d!1076036 c!633373) b!3664073))

(assert (= (and d!1076036 (not c!633373)) b!3664061))

(assert (= (and d!1076036 c!633371) b!3664072))

(assert (= (and d!1076036 (not c!633371)) b!3664068))

(assert (= (and b!3664068 c!633372) b!3664067))

(assert (= (and b!3664068 (not c!633372)) b!3664070))

(assert (= (and b!3664070 (not res!1487691)) b!3664074))

(assert (= (and b!3664074 res!1487685) b!3664065))

(assert (= (and b!3664065 res!1487687) b!3664071))

(assert (= (and b!3664071 res!1487688) b!3664064))

(assert (= (and b!3664074 (not res!1487686)) b!3664066))

(assert (= (and b!3664066 res!1487689) b!3664063))

(assert (= (and b!3664063 (not res!1487692)) b!3664069))

(assert (= (and b!3664069 (not res!1487690)) b!3664062))

(assert (= (or b!3664072 b!3664063 b!3664065) bm!265079))

(assert (=> b!3664069 m!4170903))

(declare-fun m!4171191 () Bool)

(assert (=> b!3664069 m!4171191))

(assert (=> b!3664069 m!4171191))

(declare-fun m!4171193 () Bool)

(assert (=> b!3664069 m!4171193))

(assert (=> b!3664071 m!4170903))

(assert (=> b!3664071 m!4171191))

(assert (=> b!3664071 m!4171191))

(assert (=> b!3664071 m!4171193))

(assert (=> b!3664064 m!4170903))

(declare-fun m!4171195 () Bool)

(assert (=> b!3664064 m!4171195))

(assert (=> b!3664061 m!4170903))

(assert (=> b!3664061 m!4171195))

(assert (=> b!3664061 m!4170915))

(assert (=> b!3664061 m!4171195))

(declare-fun m!4171197 () Bool)

(assert (=> b!3664061 m!4171197))

(assert (=> b!3664061 m!4170903))

(assert (=> b!3664061 m!4171191))

(assert (=> b!3664061 m!4171197))

(assert (=> b!3664061 m!4171191))

(declare-fun m!4171199 () Bool)

(assert (=> b!3664061 m!4171199))

(assert (=> b!3664073 m!4170915))

(declare-fun m!4171201 () Bool)

(assert (=> b!3664073 m!4171201))

(assert (=> b!3664062 m!4170903))

(assert (=> b!3664062 m!4171195))

(assert (=> d!1076036 m!4170903))

(assert (=> d!1076036 m!4170905))

(assert (=> d!1076036 m!4170915))

(declare-fun m!4171203 () Bool)

(assert (=> d!1076036 m!4171203))

(assert (=> bm!265079 m!4170903))

(assert (=> bm!265079 m!4170905))

(assert (=> b!3663700 d!1076036))

(declare-fun b!3664075 () Bool)

(declare-fun e!2268723 () Regex!10561)

(assert (=> b!3664075 (= e!2268723 EmptyLang!10561)))

(declare-fun b!3664076 () Bool)

(declare-fun e!2268724 () Regex!10561)

(declare-fun call!265087 () Regex!10561)

(assert (=> b!3664076 (= e!2268724 (Concat!16594 call!265087 (regex!5802 lt!1274756)))))

(declare-fun b!3664077 () Bool)

(declare-fun e!2268721 () Regex!10561)

(assert (=> b!3664077 (= e!2268721 e!2268724)))

(declare-fun c!633376 () Bool)

(assert (=> b!3664077 (= c!633376 ((_ is Star!10561) (regex!5802 lt!1274756)))))

(declare-fun e!2268722 () Regex!10561)

(declare-fun call!265086 () Regex!10561)

(declare-fun b!3664078 () Bool)

(declare-fun call!265085 () Regex!10561)

(assert (=> b!3664078 (= e!2268722 (Union!10561 (Concat!16594 call!265086 (regTwo!21634 (regex!5802 lt!1274756))) call!265085))))

(declare-fun b!3664079 () Bool)

(declare-fun e!2268720 () Regex!10561)

(assert (=> b!3664079 (= e!2268720 (ite (= (head!7834 (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))) (c!633134 (regex!5802 lt!1274756))) EmptyExpr!10561 EmptyLang!10561))))

(declare-fun b!3664080 () Bool)

(assert (=> b!3664080 (= e!2268723 e!2268720)))

(declare-fun c!633375 () Bool)

(assert (=> b!3664080 (= c!633375 ((_ is ElementMatch!10561) (regex!5802 lt!1274756)))))

(declare-fun b!3664081 () Bool)

(declare-fun c!633378 () Bool)

(assert (=> b!3664081 (= c!633378 (nullable!3675 (regOne!21634 (regex!5802 lt!1274756))))))

(assert (=> b!3664081 (= e!2268724 e!2268722)))

(declare-fun b!3664082 () Bool)

(assert (=> b!3664082 (= e!2268722 (Union!10561 (Concat!16594 call!265086 (regTwo!21634 (regex!5802 lt!1274756))) EmptyLang!10561))))

(declare-fun b!3664083 () Bool)

(declare-fun call!265088 () Regex!10561)

(assert (=> b!3664083 (= e!2268721 (Union!10561 call!265085 call!265088))))

(declare-fun c!633377 () Bool)

(declare-fun bm!265081 () Bool)

(assert (=> bm!265081 (= call!265088 (derivativeStep!3224 (ite c!633377 (regTwo!21635 (regex!5802 lt!1274756)) (ite c!633376 (reg!10890 (regex!5802 lt!1274756)) (regOne!21634 (regex!5802 lt!1274756)))) (head!7834 (list!14340 (charsOf!3816 (_1!22390 lt!1274714))))))))

(declare-fun bm!265082 () Bool)

(assert (=> bm!265082 (= call!265086 call!265087)))

(declare-fun bm!265083 () Bool)

(assert (=> bm!265083 (= call!265085 (derivativeStep!3224 (ite c!633377 (regOne!21635 (regex!5802 lt!1274756)) (regTwo!21634 (regex!5802 lt!1274756))) (head!7834 (list!14340 (charsOf!3816 (_1!22390 lt!1274714))))))))

(declare-fun b!3664084 () Bool)

(assert (=> b!3664084 (= c!633377 ((_ is Union!10561) (regex!5802 lt!1274756)))))

(assert (=> b!3664084 (= e!2268720 e!2268721)))

(declare-fun bm!265080 () Bool)

(assert (=> bm!265080 (= call!265087 call!265088)))

(declare-fun d!1076042 () Bool)

(declare-fun lt!1275157 () Regex!10561)

(assert (=> d!1076042 (validRegex!4836 lt!1275157)))

(assert (=> d!1076042 (= lt!1275157 e!2268723)))

(declare-fun c!633374 () Bool)

(assert (=> d!1076042 (= c!633374 (or ((_ is EmptyExpr!10561) (regex!5802 lt!1274756)) ((_ is EmptyLang!10561) (regex!5802 lt!1274756))))))

(assert (=> d!1076042 (validRegex!4836 (regex!5802 lt!1274756))))

(assert (=> d!1076042 (= (derivativeStep!3224 (regex!5802 lt!1274756) (head!7834 (list!14340 (charsOf!3816 (_1!22390 lt!1274714))))) lt!1275157)))

(assert (= (and d!1076042 c!633374) b!3664075))

(assert (= (and d!1076042 (not c!633374)) b!3664080))

(assert (= (and b!3664080 c!633375) b!3664079))

(assert (= (and b!3664080 (not c!633375)) b!3664084))

(assert (= (and b!3664084 c!633377) b!3664083))

(assert (= (and b!3664084 (not c!633377)) b!3664077))

(assert (= (and b!3664077 c!633376) b!3664076))

(assert (= (and b!3664077 (not c!633376)) b!3664081))

(assert (= (and b!3664081 c!633378) b!3664078))

(assert (= (and b!3664081 (not c!633378)) b!3664082))

(assert (= (or b!3664078 b!3664082) bm!265082))

(assert (= (or b!3664076 bm!265082) bm!265080))

(assert (= (or b!3664083 bm!265080) bm!265081))

(assert (= (or b!3664083 b!3664078) bm!265083))

(declare-fun m!4171205 () Bool)

(assert (=> b!3664081 m!4171205))

(assert (=> bm!265081 m!4170909))

(declare-fun m!4171207 () Bool)

(assert (=> bm!265081 m!4171207))

(assert (=> bm!265083 m!4170909))

(declare-fun m!4171209 () Bool)

(assert (=> bm!265083 m!4171209))

(declare-fun m!4171211 () Bool)

(assert (=> d!1076042 m!4171211))

(assert (=> d!1076042 m!4170929))

(assert (=> b!3663700 d!1076042))

(declare-fun d!1076044 () Bool)

(assert (=> d!1076044 (= (head!7834 (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))) (h!44066 (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))))))

(assert (=> b!3663700 d!1076044))

(declare-fun d!1076046 () Bool)

(assert (=> d!1076046 (= (tail!5673 (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))) (t!298753 (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))))))

(assert (=> b!3663700 d!1076046))

(declare-fun b!3664085 () Bool)

(declare-fun e!2268727 () Bool)

(declare-fun e!2268726 () Bool)

(assert (=> b!3664085 (= e!2268727 e!2268726)))

(declare-fun c!633380 () Bool)

(assert (=> b!3664085 (= c!633380 ((_ is IntegerValue!18097) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 lt!1274714))))))))

(declare-fun b!3664086 () Bool)

(declare-fun res!1487693 () Bool)

(declare-fun e!2268728 () Bool)

(assert (=> b!3664086 (=> res!1487693 e!2268728)))

(assert (=> b!3664086 (= res!1487693 (not ((_ is IntegerValue!18098) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 lt!1274714)))))))))

(assert (=> b!3664086 (= e!2268726 e!2268728)))

(declare-fun b!3664087 () Bool)

(assert (=> b!3664087 (= e!2268726 (inv!17 (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 lt!1274714))))))))

(declare-fun d!1076048 () Bool)

(declare-fun c!633379 () Bool)

(assert (=> d!1076048 (= c!633379 ((_ is IntegerValue!18096) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 lt!1274714))))))))

(assert (=> d!1076048 (= (inv!21 (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 lt!1274714))))) e!2268727)))

(declare-fun b!3664088 () Bool)

(assert (=> b!3664088 (= e!2268727 (inv!16 (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 lt!1274714))))))))

(declare-fun b!3664089 () Bool)

(assert (=> b!3664089 (= e!2268728 (inv!15 (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 lt!1274714))))))))

(assert (= (and d!1076048 c!633379) b!3664088))

(assert (= (and d!1076048 (not c!633379)) b!3664085))

(assert (= (and b!3664085 c!633380) b!3664087))

(assert (= (and b!3664085 (not c!633380)) b!3664086))

(assert (= (and b!3664086 (not res!1487693)) b!3664089))

(declare-fun m!4171215 () Bool)

(assert (=> b!3664087 m!4171215))

(declare-fun m!4171217 () Bool)

(assert (=> b!3664088 m!4171217))

(declare-fun m!4171219 () Bool)

(assert (=> b!3664089 m!4171219))

(assert (=> tb!211853 d!1076048))

(declare-fun b!3664091 () Bool)

(declare-fun e!2268729 () List!38770)

(assert (=> b!3664091 (= e!2268729 (Cons!38646 (h!44066 lt!1274729) (++!9618 (t!298753 lt!1274729) lt!1275030)))))

(declare-fun d!1076050 () Bool)

(declare-fun e!2268730 () Bool)

(assert (=> d!1076050 e!2268730))

(declare-fun res!1487694 () Bool)

(assert (=> d!1076050 (=> (not res!1487694) (not e!2268730))))

(declare-fun lt!1275158 () List!38770)

(assert (=> d!1076050 (= res!1487694 (= (content!5589 lt!1275158) ((_ map or) (content!5589 lt!1274729) (content!5589 lt!1275030))))))

(assert (=> d!1076050 (= lt!1275158 e!2268729)))

(declare-fun c!633381 () Bool)

(assert (=> d!1076050 (= c!633381 ((_ is Nil!38646) lt!1274729))))

(assert (=> d!1076050 (= (++!9618 lt!1274729 lt!1275030) lt!1275158)))

(declare-fun b!3664093 () Bool)

(assert (=> b!3664093 (= e!2268730 (or (not (= lt!1275030 Nil!38646)) (= lt!1275158 lt!1274729)))))

(declare-fun b!3664092 () Bool)

(declare-fun res!1487695 () Bool)

(assert (=> b!3664092 (=> (not res!1487695) (not e!2268730))))

(assert (=> b!3664092 (= res!1487695 (= (size!29528 lt!1275158) (+ (size!29528 lt!1274729) (size!29528 lt!1275030))))))

(declare-fun b!3664090 () Bool)

(assert (=> b!3664090 (= e!2268729 lt!1275030)))

(assert (= (and d!1076050 c!633381) b!3664090))

(assert (= (and d!1076050 (not c!633381)) b!3664091))

(assert (= (and d!1076050 res!1487694) b!3664092))

(assert (= (and b!3664092 res!1487695) b!3664093))

(declare-fun m!4171221 () Bool)

(assert (=> b!3664091 m!4171221))

(declare-fun m!4171223 () Bool)

(assert (=> d!1076050 m!4171223))

(assert (=> d!1076050 m!4170001))

(declare-fun m!4171225 () Bool)

(assert (=> d!1076050 m!4171225))

(declare-fun m!4171227 () Bool)

(assert (=> b!3664092 m!4171227))

(assert (=> b!3664092 m!4169845))

(declare-fun m!4171229 () Bool)

(assert (=> b!3664092 m!4171229))

(assert (=> d!1075850 d!1076050))

(declare-fun d!1076052 () Bool)

(declare-fun lt!1275159 () Int)

(assert (=> d!1076052 (>= lt!1275159 0)))

(declare-fun e!2268731 () Int)

(assert (=> d!1076052 (= lt!1275159 e!2268731)))

(declare-fun c!633382 () Bool)

(assert (=> d!1076052 (= c!633382 ((_ is Nil!38646) lt!1274713))))

(assert (=> d!1076052 (= (size!29528 lt!1274713) lt!1275159)))

(declare-fun b!3664094 () Bool)

(assert (=> b!3664094 (= e!2268731 0)))

(declare-fun b!3664095 () Bool)

(assert (=> b!3664095 (= e!2268731 (+ 1 (size!29528 (t!298753 lt!1274713))))))

(assert (= (and d!1076052 c!633382) b!3664094))

(assert (= (and d!1076052 (not c!633382)) b!3664095))

(declare-fun m!4171231 () Bool)

(assert (=> b!3664095 m!4171231))

(assert (=> d!1075850 d!1076052))

(assert (=> d!1075850 d!1075842))

(declare-fun b!3664097 () Bool)

(declare-fun e!2268732 () List!38770)

(assert (=> b!3664097 (= e!2268732 (Cons!38646 (h!44066 lt!1274731) (++!9618 (t!298753 lt!1274731) lt!1275050)))))

(declare-fun d!1076054 () Bool)

(declare-fun e!2268733 () Bool)

(assert (=> d!1076054 e!2268733))

(declare-fun res!1487696 () Bool)

(assert (=> d!1076054 (=> (not res!1487696) (not e!2268733))))

(declare-fun lt!1275160 () List!38770)

(assert (=> d!1076054 (= res!1487696 (= (content!5589 lt!1275160) ((_ map or) (content!5589 lt!1274731) (content!5589 lt!1275050))))))

(assert (=> d!1076054 (= lt!1275160 e!2268732)))

(declare-fun c!633383 () Bool)

(assert (=> d!1076054 (= c!633383 ((_ is Nil!38646) lt!1274731))))

(assert (=> d!1076054 (= (++!9618 lt!1274731 lt!1275050) lt!1275160)))

(declare-fun b!3664099 () Bool)

(assert (=> b!3664099 (= e!2268733 (or (not (= lt!1275050 Nil!38646)) (= lt!1275160 lt!1274731)))))

(declare-fun b!3664098 () Bool)

(declare-fun res!1487697 () Bool)

(assert (=> b!3664098 (=> (not res!1487697) (not e!2268733))))

(assert (=> b!3664098 (= res!1487697 (= (size!29528 lt!1275160) (+ (size!29528 lt!1274731) (size!29528 lt!1275050))))))

(declare-fun b!3664096 () Bool)

(assert (=> b!3664096 (= e!2268732 lt!1275050)))

(assert (= (and d!1076054 c!633383) b!3664096))

(assert (= (and d!1076054 (not c!633383)) b!3664097))

(assert (= (and d!1076054 res!1487696) b!3664098))

(assert (= (and b!3664098 res!1487697) b!3664099))

(declare-fun m!4171235 () Bool)

(assert (=> b!3664097 m!4171235))

(declare-fun m!4171237 () Bool)

(assert (=> d!1076054 m!4171237))

(assert (=> d!1076054 m!4170155))

(declare-fun m!4171239 () Bool)

(assert (=> d!1076054 m!4171239))

(declare-fun m!4171241 () Bool)

(assert (=> b!3664098 m!4171241))

(assert (=> b!3664098 m!4169895))

(declare-fun m!4171243 () Bool)

(assert (=> b!3664098 m!4171243))

(assert (=> d!1075862 d!1076054))

(assert (=> d!1075862 d!1075604))

(declare-fun d!1076058 () Bool)

(declare-fun lt!1275161 () Bool)

(assert (=> d!1076058 (= lt!1275161 (select (content!5589 (t!298753 lt!1274739)) lt!1274732))))

(declare-fun e!2268735 () Bool)

(assert (=> d!1076058 (= lt!1275161 e!2268735)))

(declare-fun res!1487698 () Bool)

(assert (=> d!1076058 (=> (not res!1487698) (not e!2268735))))

(assert (=> d!1076058 (= res!1487698 ((_ is Cons!38646) (t!298753 lt!1274739)))))

(assert (=> d!1076058 (= (contains!7669 (t!298753 lt!1274739) lt!1274732) lt!1275161)))

(declare-fun b!3664100 () Bool)

(declare-fun e!2268734 () Bool)

(assert (=> b!3664100 (= e!2268735 e!2268734)))

(declare-fun res!1487699 () Bool)

(assert (=> b!3664100 (=> res!1487699 e!2268734)))

(assert (=> b!3664100 (= res!1487699 (= (h!44066 (t!298753 lt!1274739)) lt!1274732))))

(declare-fun b!3664101 () Bool)

(assert (=> b!3664101 (= e!2268734 (contains!7669 (t!298753 (t!298753 lt!1274739)) lt!1274732))))

(assert (= (and d!1076058 res!1487698) b!3664100))

(assert (= (and b!3664100 (not res!1487699)) b!3664101))

(declare-fun m!4171247 () Bool)

(assert (=> d!1076058 m!4171247))

(declare-fun m!4171249 () Bool)

(assert (=> d!1076058 m!4171249))

(declare-fun m!4171251 () Bool)

(assert (=> b!3664101 m!4171251))

(assert (=> b!3663550 d!1076058))

(declare-fun d!1076062 () Bool)

(assert (=> d!1076062 (= (isEmpty!22924 (tail!5673 lt!1274731)) ((_ is Nil!38646) (tail!5673 lt!1274731)))))

(assert (=> b!3663730 d!1076062))

(assert (=> b!3663730 d!1076006))

(declare-fun b!3664104 () Bool)

(declare-fun e!2268740 () Option!8232)

(declare-fun lt!1275163 () Option!8232)

(declare-fun lt!1275164 () Option!8232)

(assert (=> b!3664104 (= e!2268740 (ite (and ((_ is None!8231) lt!1275163) ((_ is None!8231) lt!1275164)) None!8231 (ite ((_ is None!8231) lt!1275164) lt!1275163 (ite ((_ is None!8231) lt!1275163) lt!1275164 (ite (>= (size!29527 (_1!22390 (v!38127 lt!1275163))) (size!29527 (_1!22390 (v!38127 lt!1275164)))) lt!1275163 lt!1275164)))))))

(declare-fun call!265089 () Option!8232)

(assert (=> b!3664104 (= lt!1275163 call!265089)))

(assert (=> b!3664104 (= lt!1275164 (maxPrefix!2925 thiss!23823 (t!298754 (t!298754 rules!3307)) lt!1274731))))

(declare-fun b!3664105 () Bool)

(declare-fun e!2268739 () Bool)

(declare-fun lt!1275166 () Option!8232)

(assert (=> b!3664105 (= e!2268739 (contains!7670 (t!298754 rules!3307) (rule!8618 (_1!22390 (get!12743 lt!1275166)))))))

(declare-fun bm!265084 () Bool)

(assert (=> bm!265084 (= call!265089 (maxPrefixOneRule!2063 thiss!23823 (h!44067 (t!298754 rules!3307)) lt!1274731))))

(declare-fun b!3664106 () Bool)

(declare-fun res!1487707 () Bool)

(assert (=> b!3664106 (=> (not res!1487707) (not e!2268739))))

(assert (=> b!3664106 (= res!1487707 (= (++!9618 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275166)))) (_2!22390 (get!12743 lt!1275166))) lt!1274731))))

(declare-fun b!3664107 () Bool)

(declare-fun res!1487705 () Bool)

(assert (=> b!3664107 (=> (not res!1487705) (not e!2268739))))

(assert (=> b!3664107 (= res!1487705 (= (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275166)))) (originalCharacters!6516 (_1!22390 (get!12743 lt!1275166)))))))

(declare-fun d!1076064 () Bool)

(declare-fun e!2268738 () Bool)

(assert (=> d!1076064 e!2268738))

(declare-fun res!1487706 () Bool)

(assert (=> d!1076064 (=> res!1487706 e!2268738)))

(assert (=> d!1076064 (= res!1487706 (isEmpty!22928 lt!1275166))))

(assert (=> d!1076064 (= lt!1275166 e!2268740)))

(declare-fun c!633384 () Bool)

(assert (=> d!1076064 (= c!633384 (and ((_ is Cons!38647) (t!298754 rules!3307)) ((_ is Nil!38647) (t!298754 (t!298754 rules!3307)))))))

(declare-fun lt!1275167 () Unit!55997)

(declare-fun lt!1275165 () Unit!55997)

(assert (=> d!1076064 (= lt!1275167 lt!1275165)))

(assert (=> d!1076064 (isPrefix!3165 lt!1274731 lt!1274731)))

(assert (=> d!1076064 (= lt!1275165 (lemmaIsPrefixRefl!1998 lt!1274731 lt!1274731))))

(assert (=> d!1076064 (rulesValidInductive!2061 thiss!23823 (t!298754 rules!3307))))

(assert (=> d!1076064 (= (maxPrefix!2925 thiss!23823 (t!298754 rules!3307) lt!1274731) lt!1275166)))

(declare-fun b!3664108 () Bool)

(assert (=> b!3664108 (= e!2268738 e!2268739)))

(declare-fun res!1487703 () Bool)

(assert (=> b!3664108 (=> (not res!1487703) (not e!2268739))))

(assert (=> b!3664108 (= res!1487703 (isDefined!6464 lt!1275166))))

(declare-fun b!3664109 () Bool)

(assert (=> b!3664109 (= e!2268740 call!265089)))

(declare-fun b!3664110 () Bool)

(declare-fun res!1487708 () Bool)

(assert (=> b!3664110 (=> (not res!1487708) (not e!2268739))))

(assert (=> b!3664110 (= res!1487708 (< (size!29528 (_2!22390 (get!12743 lt!1275166))) (size!29528 lt!1274731)))))

(declare-fun b!3664111 () Bool)

(declare-fun res!1487704 () Bool)

(assert (=> b!3664111 (=> (not res!1487704) (not e!2268739))))

(assert (=> b!3664111 (= res!1487704 (= (value!185817 (_1!22390 (get!12743 lt!1275166))) (apply!9304 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275166)))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 (get!12743 lt!1275166)))))))))

(declare-fun b!3664112 () Bool)

(declare-fun res!1487702 () Bool)

(assert (=> b!3664112 (=> (not res!1487702) (not e!2268739))))

(assert (=> b!3664112 (= res!1487702 (matchR!5130 (regex!5802 (rule!8618 (_1!22390 (get!12743 lt!1275166)))) (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275166))))))))

(assert (= (and d!1076064 c!633384) b!3664109))

(assert (= (and d!1076064 (not c!633384)) b!3664104))

(assert (= (or b!3664109 b!3664104) bm!265084))

(assert (= (and d!1076064 (not res!1487706)) b!3664108))

(assert (= (and b!3664108 res!1487703) b!3664107))

(assert (= (and b!3664107 res!1487705) b!3664110))

(assert (= (and b!3664110 res!1487708) b!3664106))

(assert (= (and b!3664106 res!1487707) b!3664111))

(assert (= (and b!3664111 res!1487704) b!3664112))

(assert (= (and b!3664112 res!1487702) b!3664105))

(declare-fun m!4171265 () Bool)

(assert (=> b!3664105 m!4171265))

(declare-fun m!4171269 () Bool)

(assert (=> b!3664105 m!4171269))

(assert (=> b!3664107 m!4171265))

(declare-fun m!4171275 () Bool)

(assert (=> b!3664107 m!4171275))

(assert (=> b!3664107 m!4171275))

(declare-fun m!4171277 () Bool)

(assert (=> b!3664107 m!4171277))

(assert (=> b!3664111 m!4171265))

(declare-fun m!4171279 () Bool)

(assert (=> b!3664111 m!4171279))

(assert (=> b!3664111 m!4171279))

(declare-fun m!4171281 () Bool)

(assert (=> b!3664111 m!4171281))

(assert (=> b!3664106 m!4171265))

(assert (=> b!3664106 m!4171275))

(assert (=> b!3664106 m!4171275))

(assert (=> b!3664106 m!4171277))

(assert (=> b!3664106 m!4171277))

(declare-fun m!4171285 () Bool)

(assert (=> b!3664106 m!4171285))

(assert (=> b!3664112 m!4171265))

(assert (=> b!3664112 m!4171275))

(assert (=> b!3664112 m!4171275))

(assert (=> b!3664112 m!4171277))

(assert (=> b!3664112 m!4171277))

(declare-fun m!4171287 () Bool)

(assert (=> b!3664112 m!4171287))

(assert (=> b!3664110 m!4171265))

(declare-fun m!4171289 () Bool)

(assert (=> b!3664110 m!4171289))

(assert (=> b!3664110 m!4169895))

(declare-fun m!4171291 () Bool)

(assert (=> d!1076064 m!4171291))

(assert (=> d!1076064 m!4169955))

(assert (=> d!1076064 m!4170887))

(declare-fun m!4171293 () Bool)

(assert (=> d!1076064 m!4171293))

(declare-fun m!4171295 () Bool)

(assert (=> bm!265084 m!4171295))

(declare-fun m!4171297 () Bool)

(assert (=> b!3664104 m!4171297))

(declare-fun m!4171299 () Bool)

(assert (=> b!3664108 m!4171299))

(assert (=> b!3663663 d!1076064))

(declare-fun bs!572785 () Bool)

(declare-fun d!1076078 () Bool)

(assert (= bs!572785 (and d!1076078 d!1075606)))

(declare-fun lambda!124609 () Int)

(assert (=> bs!572785 (= (and (= (toChars!7953 (transformation!5802 (rule!8618 token!511))) (toChars!7953 (transformation!5802 rule!403))) (= (toValue!8094 (transformation!5802 (rule!8618 token!511))) (toValue!8094 (transformation!5802 rule!403)))) (= lambda!124609 lambda!124596))))

(declare-fun bs!572786 () Bool)

(assert (= bs!572786 (and d!1076078 d!1075792)))

(assert (=> bs!572786 (= (and (= (toChars!7953 (transformation!5802 (rule!8618 token!511))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) (= (toValue!8094 (transformation!5802 (rule!8618 token!511))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (= lambda!124609 lambda!124598))))

(declare-fun bs!572787 () Bool)

(assert (= bs!572787 (and d!1076078 d!1076016)))

(assert (=> bs!572787 (= (and (= (toChars!7953 (transformation!5802 (rule!8618 token!511))) (toChars!7953 (transformation!5802 (h!44067 rules!3307)))) (= (toValue!8094 (transformation!5802 (rule!8618 token!511))) (toValue!8094 (transformation!5802 (h!44067 rules!3307))))) (= lambda!124609 lambda!124608))))

(assert (=> d!1076078 true))

(assert (=> d!1076078 (< (dynLambda!16900 order!21359 (toChars!7953 (transformation!5802 (rule!8618 token!511)))) (dynLambda!16899 order!21357 lambda!124609))))

(assert (=> d!1076078 true))

(assert (=> d!1076078 (< (dynLambda!16898 order!21355 (toValue!8094 (transformation!5802 (rule!8618 token!511)))) (dynLambda!16899 order!21357 lambda!124609))))

(assert (=> d!1076078 (= (semiInverseModEq!2475 (toChars!7953 (transformation!5802 (rule!8618 token!511))) (toValue!8094 (transformation!5802 (rule!8618 token!511)))) (Forall!1370 lambda!124609))))

(declare-fun bs!572788 () Bool)

(assert (= bs!572788 d!1076078))

(declare-fun m!4171301 () Bool)

(assert (=> bs!572788 m!4171301))

(assert (=> d!1075908 d!1076078))

(declare-fun d!1076080 () Bool)

(declare-fun c!633388 () Bool)

(assert (=> d!1076080 (= c!633388 ((_ is Nil!38646) call!264987))))

(declare-fun e!2268745 () (InoxSet C!21308))

(assert (=> d!1076080 (= (content!5589 call!264987) e!2268745)))

(declare-fun b!3664121 () Bool)

(assert (=> b!3664121 (= e!2268745 ((as const (Array C!21308 Bool)) false))))

(declare-fun b!3664122 () Bool)

(assert (=> b!3664122 (= e!2268745 ((_ map or) (store ((as const (Array C!21308 Bool)) false) (h!44066 call!264987) true) (content!5589 (t!298753 call!264987))))))

(assert (= (and d!1076080 c!633388) b!3664121))

(assert (= (and d!1076080 (not c!633388)) b!3664122))

(declare-fun m!4171303 () Bool)

(assert (=> b!3664122 m!4171303))

(declare-fun m!4171305 () Bool)

(assert (=> b!3664122 m!4171305))

(assert (=> d!1075596 d!1076080))

(declare-fun d!1076082 () Bool)

(assert (=> d!1076082 (= (isEmpty!22928 lt!1275044) (not ((_ is Some!8231) lt!1275044)))))

(assert (=> d!1075852 d!1076082))

(declare-fun d!1076084 () Bool)

(assert (=> d!1076084 (= (isEmpty!22924 (_1!22393 lt!1275042)) ((_ is Nil!38646) (_1!22393 lt!1275042)))))

(assert (=> d!1075852 d!1076084))

(declare-fun d!1076086 () Bool)

(declare-fun lt!1275195 () tuple2!38518)

(assert (=> d!1076086 (= (++!9618 (_1!22393 lt!1275195) (_2!22393 lt!1275195)) lt!1274713)))

(declare-fun sizeTr!227 (List!38770 Int) Int)

(assert (=> d!1076086 (= lt!1275195 (findLongestMatchInner!1071 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) Nil!38646 0 lt!1274713 lt!1274713 (sizeTr!227 lt!1274713 0)))))

(declare-fun lt!1275194 () Unit!55997)

(declare-fun lt!1275191 () Unit!55997)

(assert (=> d!1076086 (= lt!1275194 lt!1275191)))

(declare-fun lt!1275190 () List!38770)

(declare-fun lt!1275193 () Int)

(assert (=> d!1076086 (= (sizeTr!227 lt!1275190 lt!1275193) (+ (size!29528 lt!1275190) lt!1275193))))

(declare-fun lemmaSizeTrEqualsSize!226 (List!38770 Int) Unit!55997)

(assert (=> d!1076086 (= lt!1275191 (lemmaSizeTrEqualsSize!226 lt!1275190 lt!1275193))))

(assert (=> d!1076086 (= lt!1275193 0)))

(assert (=> d!1076086 (= lt!1275190 Nil!38646)))

(declare-fun lt!1275189 () Unit!55997)

(declare-fun lt!1275192 () Unit!55997)

(assert (=> d!1076086 (= lt!1275189 lt!1275192)))

(declare-fun lt!1275188 () Int)

(assert (=> d!1076086 (= (sizeTr!227 lt!1274713 lt!1275188) (+ (size!29528 lt!1274713) lt!1275188))))

(assert (=> d!1076086 (= lt!1275192 (lemmaSizeTrEqualsSize!226 lt!1274713 lt!1275188))))

(assert (=> d!1076086 (= lt!1275188 0)))

(assert (=> d!1076086 (validRegex!4836 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))

(assert (=> d!1076086 (= (findLongestMatch!986 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) lt!1274713) lt!1275195)))

(declare-fun bs!572792 () Bool)

(assert (= bs!572792 d!1076086))

(assert (=> bs!572792 m!4170009))

(declare-fun m!4171331 () Bool)

(assert (=> bs!572792 m!4171331))

(declare-fun m!4171333 () Bool)

(assert (=> bs!572792 m!4171333))

(declare-fun m!4171335 () Bool)

(assert (=> bs!572792 m!4171335))

(assert (=> bs!572792 m!4170547))

(declare-fun m!4171337 () Bool)

(assert (=> bs!572792 m!4171337))

(declare-fun m!4171339 () Bool)

(assert (=> bs!572792 m!4171339))

(assert (=> bs!572792 m!4171339))

(declare-fun m!4171341 () Bool)

(assert (=> bs!572792 m!4171341))

(declare-fun m!4171343 () Bool)

(assert (=> bs!572792 m!4171343))

(declare-fun m!4171345 () Bool)

(assert (=> bs!572792 m!4171345))

(assert (=> d!1075852 d!1076086))

(declare-fun d!1076102 () Bool)

(declare-fun res!1487718 () Bool)

(declare-fun e!2268755 () Bool)

(assert (=> d!1076102 (=> (not res!1487718) (not e!2268755))))

(assert (=> d!1076102 (= res!1487718 (validRegex!4836 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(assert (=> d!1076102 (= (ruleValid!2066 thiss!23823 (rule!8618 (_1!22390 lt!1274714))) e!2268755)))

(declare-fun b!3664136 () Bool)

(declare-fun res!1487719 () Bool)

(assert (=> b!3664136 (=> (not res!1487719) (not e!2268755))))

(assert (=> b!3664136 (= res!1487719 (not (nullable!3675 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))))

(declare-fun b!3664137 () Bool)

(assert (=> b!3664137 (= e!2268755 (not (= (tag!6584 (rule!8618 (_1!22390 lt!1274714))) (String!43495 ""))))))

(assert (= (and d!1076102 res!1487718) b!3664136))

(assert (= (and b!3664136 res!1487719) b!3664137))

(assert (=> d!1076102 m!4170009))

(assert (=> b!3664136 m!4170843))

(assert (=> d!1075852 d!1076102))

(declare-fun d!1076108 () Bool)

(declare-fun lt!1275196 () Bool)

(assert (=> d!1076108 (= lt!1275196 (select (content!5589 (t!298753 lt!1274739)) lt!1274726))))

(declare-fun e!2268757 () Bool)

(assert (=> d!1076108 (= lt!1275196 e!2268757)))

(declare-fun res!1487720 () Bool)

(assert (=> d!1076108 (=> (not res!1487720) (not e!2268757))))

(assert (=> d!1076108 (= res!1487720 ((_ is Cons!38646) (t!298753 lt!1274739)))))

(assert (=> d!1076108 (= (contains!7669 (t!298753 lt!1274739) lt!1274726) lt!1275196)))

(declare-fun b!3664138 () Bool)

(declare-fun e!2268756 () Bool)

(assert (=> b!3664138 (= e!2268757 e!2268756)))

(declare-fun res!1487721 () Bool)

(assert (=> b!3664138 (=> res!1487721 e!2268756)))

(assert (=> b!3664138 (= res!1487721 (= (h!44066 (t!298753 lt!1274739)) lt!1274726))))

(declare-fun b!3664139 () Bool)

(assert (=> b!3664139 (= e!2268756 (contains!7669 (t!298753 (t!298753 lt!1274739)) lt!1274726))))

(assert (= (and d!1076108 res!1487720) b!3664138))

(assert (= (and b!3664138 (not res!1487721)) b!3664139))

(assert (=> d!1076108 m!4171247))

(declare-fun m!4171347 () Bool)

(assert (=> d!1076108 m!4171347))

(declare-fun m!4171349 () Bool)

(assert (=> b!3664139 m!4171349))

(assert (=> b!3663539 d!1076108))

(declare-fun b!3664141 () Bool)

(declare-fun e!2268758 () List!38770)

(assert (=> b!3664141 (= e!2268758 (Cons!38646 (h!44066 (t!298753 lt!1274731)) (++!9618 (t!298753 (t!298753 lt!1274731)) suffix!1395)))))

(declare-fun d!1076112 () Bool)

(declare-fun e!2268759 () Bool)

(assert (=> d!1076112 e!2268759))

(declare-fun res!1487722 () Bool)

(assert (=> d!1076112 (=> (not res!1487722) (not e!2268759))))

(declare-fun lt!1275197 () List!38770)

(assert (=> d!1076112 (= res!1487722 (= (content!5589 lt!1275197) ((_ map or) (content!5589 (t!298753 lt!1274731)) (content!5589 suffix!1395))))))

(assert (=> d!1076112 (= lt!1275197 e!2268758)))

(declare-fun c!633392 () Bool)

(assert (=> d!1076112 (= c!633392 ((_ is Nil!38646) (t!298753 lt!1274731)))))

(assert (=> d!1076112 (= (++!9618 (t!298753 lt!1274731) suffix!1395) lt!1275197)))

(declare-fun b!3664143 () Bool)

(assert (=> b!3664143 (= e!2268759 (or (not (= suffix!1395 Nil!38646)) (= lt!1275197 (t!298753 lt!1274731))))))

(declare-fun b!3664142 () Bool)

(declare-fun res!1487723 () Bool)

(assert (=> b!3664142 (=> (not res!1487723) (not e!2268759))))

(assert (=> b!3664142 (= res!1487723 (= (size!29528 lt!1275197) (+ (size!29528 (t!298753 lt!1274731)) (size!29528 suffix!1395))))))

(declare-fun b!3664140 () Bool)

(assert (=> b!3664140 (= e!2268758 suffix!1395)))

(assert (= (and d!1076112 c!633392) b!3664140))

(assert (= (and d!1076112 (not c!633392)) b!3664141))

(assert (= (and d!1076112 res!1487722) b!3664142))

(assert (= (and b!3664142 res!1487723) b!3664143))

(declare-fun m!4171351 () Bool)

(assert (=> b!3664141 m!4171351))

(declare-fun m!4171353 () Bool)

(assert (=> d!1076112 m!4171353))

(declare-fun m!4171355 () Bool)

(assert (=> d!1076112 m!4171355))

(assert (=> d!1076112 m!4170157))

(declare-fun m!4171357 () Bool)

(assert (=> b!3664142 m!4171357))

(assert (=> b!3664142 m!4170057))

(assert (=> b!3664142 m!4170161))

(assert (=> b!3663203 d!1076112))

(declare-fun d!1076114 () Bool)

(declare-fun charsToInt!0 (List!38769) (_ BitVec 32))

(assert (=> d!1076114 (= (inv!16 (value!185817 token!511)) (= (charsToInt!0 (text!42671 (value!185817 token!511))) (value!185808 (value!185817 token!511))))))

(declare-fun bs!572793 () Bool)

(assert (= bs!572793 d!1076114))

(declare-fun m!4171359 () Bool)

(assert (=> bs!572793 m!4171359))

(assert (=> b!3663078 d!1076114))

(declare-fun d!1076116 () Bool)

(declare-fun res!1487724 () Bool)

(declare-fun e!2268760 () Bool)

(assert (=> d!1076116 (=> res!1487724 e!2268760)))

(assert (=> d!1076116 (= res!1487724 (not ((_ is Cons!38647) (t!298754 rules!3307))))))

(assert (=> d!1076116 (= (sepAndNonSepRulesDisjointChars!1970 rules!3307 (t!298754 rules!3307)) e!2268760)))

(declare-fun b!3664144 () Bool)

(declare-fun e!2268761 () Bool)

(assert (=> b!3664144 (= e!2268760 e!2268761)))

(declare-fun res!1487725 () Bool)

(assert (=> b!3664144 (=> (not res!1487725) (not e!2268761))))

(assert (=> b!3664144 (= res!1487725 (ruleDisjointCharsFromAllFromOtherType!899 (h!44067 (t!298754 rules!3307)) rules!3307))))

(declare-fun b!3664145 () Bool)

(assert (=> b!3664145 (= e!2268761 (sepAndNonSepRulesDisjointChars!1970 rules!3307 (t!298754 (t!298754 rules!3307))))))

(assert (= (and d!1076116 (not res!1487724)) b!3664144))

(assert (= (and b!3664144 res!1487725) b!3664145))

(declare-fun m!4171361 () Bool)

(assert (=> b!3664144 m!4171361))

(declare-fun m!4171363 () Bool)

(assert (=> b!3664145 m!4171363))

(assert (=> b!3663815 d!1076116))

(declare-fun d!1076118 () Bool)

(declare-fun lt!1275198 () Bool)

(assert (=> d!1076118 (= lt!1275198 (select (content!5591 rules!3307) (rule!8618 (_1!22390 (get!12743 lt!1274987)))))))

(declare-fun e!2268763 () Bool)

(assert (=> d!1076118 (= lt!1275198 e!2268763)))

(declare-fun res!1487727 () Bool)

(assert (=> d!1076118 (=> (not res!1487727) (not e!2268763))))

(assert (=> d!1076118 (= res!1487727 ((_ is Cons!38647) rules!3307))))

(assert (=> d!1076118 (= (contains!7670 rules!3307 (rule!8618 (_1!22390 (get!12743 lt!1274987)))) lt!1275198)))

(declare-fun b!3664146 () Bool)

(declare-fun e!2268762 () Bool)

(assert (=> b!3664146 (= e!2268763 e!2268762)))

(declare-fun res!1487726 () Bool)

(assert (=> b!3664146 (=> res!1487726 e!2268762)))

(assert (=> b!3664146 (= res!1487726 (= (h!44067 rules!3307) (rule!8618 (_1!22390 (get!12743 lt!1274987)))))))

(declare-fun b!3664147 () Bool)

(assert (=> b!3664147 (= e!2268762 (contains!7670 (t!298754 rules!3307) (rule!8618 (_1!22390 (get!12743 lt!1274987)))))))

(assert (= (and d!1076118 res!1487727) b!3664146))

(assert (= (and b!3664146 (not res!1487726)) b!3664147))

(assert (=> d!1076118 m!4170047))

(declare-fun m!4171365 () Bool)

(assert (=> d!1076118 m!4171365))

(declare-fun m!4171367 () Bool)

(assert (=> b!3664147 m!4171367))

(assert (=> b!3663479 d!1076118))

(declare-fun d!1076120 () Bool)

(assert (=> d!1076120 (= (get!12743 lt!1274987) (v!38127 lt!1274987))))

(assert (=> b!3663479 d!1076120))

(declare-fun d!1076122 () Bool)

(declare-fun lt!1275199 () List!38770)

(assert (=> d!1076122 (= (++!9618 (t!298753 lt!1274731) lt!1275199) (tail!5673 lt!1274731))))

(declare-fun e!2268764 () List!38770)

(assert (=> d!1076122 (= lt!1275199 e!2268764)))

(declare-fun c!633393 () Bool)

(assert (=> d!1076122 (= c!633393 ((_ is Cons!38646) (t!298753 lt!1274731)))))

(assert (=> d!1076122 (>= (size!29528 (tail!5673 lt!1274731)) (size!29528 (t!298753 lt!1274731)))))

(assert (=> d!1076122 (= (getSuffix!1718 (tail!5673 lt!1274731) (t!298753 lt!1274731)) lt!1275199)))

(declare-fun b!3664148 () Bool)

(assert (=> b!3664148 (= e!2268764 (getSuffix!1718 (tail!5673 (tail!5673 lt!1274731)) (t!298753 (t!298753 lt!1274731))))))

(declare-fun b!3664149 () Bool)

(assert (=> b!3664149 (= e!2268764 (tail!5673 lt!1274731))))

(assert (= (and d!1076122 c!633393) b!3664148))

(assert (= (and d!1076122 (not c!633393)) b!3664149))

(declare-fun m!4171369 () Bool)

(assert (=> d!1076122 m!4171369))

(assert (=> d!1076122 m!4170575))

(declare-fun m!4171371 () Bool)

(assert (=> d!1076122 m!4171371))

(assert (=> d!1076122 m!4170057))

(assert (=> b!3664148 m!4170575))

(assert (=> b!3664148 m!4171111))

(assert (=> b!3664148 m!4171111))

(declare-fun m!4171373 () Bool)

(assert (=> b!3664148 m!4171373))

(assert (=> b!3663593 d!1076122))

(assert (=> b!3663593 d!1076006))

(assert (=> d!1075924 d!1075870))

(declare-fun d!1076124 () Bool)

(assert (=> d!1076124 (not (matchR!5130 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) lt!1274729))))

(assert (=> d!1076124 true))

(declare-fun _$127!434 () Unit!55997)

(assert (=> d!1076124 (= (choose!21705 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) lt!1274729 lt!1274732) _$127!434)))

(declare-fun bs!572794 () Bool)

(assert (= bs!572794 d!1076124))

(assert (=> bs!572794 m!4169921))

(assert (=> d!1075924 d!1076124))

(assert (=> d!1075924 d!1076034))

(declare-fun b!3664150 () Bool)

(declare-fun c!633396 () Bool)

(assert (=> b!3664150 (= c!633396 ((_ is Star!10561) (ite c!633166 (reg!10890 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (ite c!633165 (regTwo!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regOne!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))))))

(declare-fun e!2268766 () List!38770)

(declare-fun e!2268768 () List!38770)

(assert (=> b!3664150 (= e!2268766 e!2268768)))

(declare-fun b!3664151 () Bool)

(assert (=> b!3664151 (= e!2268766 (Cons!38646 (c!633134 (ite c!633166 (reg!10890 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (ite c!633165 (regTwo!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regOne!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))) Nil!38646))))

(declare-fun b!3664152 () Bool)

(declare-fun e!2268765 () List!38770)

(assert (=> b!3664152 (= e!2268768 e!2268765)))

(declare-fun c!633395 () Bool)

(assert (=> b!3664152 (= c!633395 ((_ is Union!10561) (ite c!633166 (reg!10890 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (ite c!633165 (regTwo!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regOne!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))))))

(declare-fun bm!265085 () Bool)

(declare-fun call!265091 () List!38770)

(assert (=> bm!265085 (= call!265091 (usedCharacters!1014 (ite c!633395 (regOne!21635 (ite c!633166 (reg!10890 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (ite c!633165 (regTwo!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regOne!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))) (regTwo!21634 (ite c!633166 (reg!10890 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (ite c!633165 (regTwo!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regOne!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))))))))

(declare-fun b!3664153 () Bool)

(declare-fun call!265092 () List!38770)

(assert (=> b!3664153 (= e!2268768 call!265092)))

(declare-fun b!3664154 () Bool)

(declare-fun e!2268767 () List!38770)

(assert (=> b!3664154 (= e!2268767 Nil!38646)))

(declare-fun call!265093 () List!38770)

(declare-fun bm!265087 () Bool)

(declare-fun call!265090 () List!38770)

(assert (=> bm!265087 (= call!265090 (++!9618 (ite c!633395 call!265091 call!265093) (ite c!633395 call!265093 call!265091)))))

(declare-fun b!3664155 () Bool)

(assert (=> b!3664155 (= e!2268765 call!265090)))

(declare-fun b!3664156 () Bool)

(assert (=> b!3664156 (= e!2268765 call!265090)))

(declare-fun bm!265086 () Bool)

(assert (=> bm!265086 (= call!265093 call!265092)))

(declare-fun c!633394 () Bool)

(declare-fun d!1076126 () Bool)

(assert (=> d!1076126 (= c!633394 (or ((_ is EmptyExpr!10561) (ite c!633166 (reg!10890 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (ite c!633165 (regTwo!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regOne!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))) ((_ is EmptyLang!10561) (ite c!633166 (reg!10890 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (ite c!633165 (regTwo!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regOne!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))))))

(assert (=> d!1076126 (= (usedCharacters!1014 (ite c!633166 (reg!10890 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (ite c!633165 (regTwo!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regOne!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))) e!2268767)))

(declare-fun b!3664157 () Bool)

(assert (=> b!3664157 (= e!2268767 e!2268766)))

(declare-fun c!633397 () Bool)

(assert (=> b!3664157 (= c!633397 ((_ is ElementMatch!10561) (ite c!633166 (reg!10890 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (ite c!633165 (regTwo!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regOne!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))))))

(declare-fun bm!265088 () Bool)

(assert (=> bm!265088 (= call!265092 (usedCharacters!1014 (ite c!633396 (reg!10890 (ite c!633166 (reg!10890 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (ite c!633165 (regTwo!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regOne!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))) (ite c!633395 (regTwo!21635 (ite c!633166 (reg!10890 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (ite c!633165 (regTwo!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regOne!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))) (regOne!21634 (ite c!633166 (reg!10890 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (ite c!633165 (regTwo!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regOne!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))))))))

(assert (= (and d!1076126 c!633394) b!3664154))

(assert (= (and d!1076126 (not c!633394)) b!3664157))

(assert (= (and b!3664157 c!633397) b!3664151))

(assert (= (and b!3664157 (not c!633397)) b!3664150))

(assert (= (and b!3664150 c!633396) b!3664153))

(assert (= (and b!3664150 (not c!633396)) b!3664152))

(assert (= (and b!3664152 c!633395) b!3664155))

(assert (= (and b!3664152 (not c!633395)) b!3664156))

(assert (= (or b!3664155 b!3664156) bm!265085))

(assert (= (or b!3664155 b!3664156) bm!265086))

(assert (= (or b!3664155 b!3664156) bm!265087))

(assert (= (or b!3664153 bm!265086) bm!265088))

(declare-fun m!4171375 () Bool)

(assert (=> bm!265085 m!4171375))

(declare-fun m!4171377 () Bool)

(assert (=> bm!265087 m!4171377))

(declare-fun m!4171379 () Bool)

(assert (=> bm!265088 m!4171379))

(assert (=> bm!265007 d!1076126))

(declare-fun b!3664159 () Bool)

(declare-fun e!2268769 () List!38770)

(assert (=> b!3664159 (= e!2268769 (Cons!38646 (h!44066 (t!298753 lt!1274729)) (++!9618 (t!298753 (t!298753 lt!1274729)) (_2!22390 lt!1274714))))))

(declare-fun d!1076128 () Bool)

(declare-fun e!2268770 () Bool)

(assert (=> d!1076128 e!2268770))

(declare-fun res!1487728 () Bool)

(assert (=> d!1076128 (=> (not res!1487728) (not e!2268770))))

(declare-fun lt!1275200 () List!38770)

(assert (=> d!1076128 (= res!1487728 (= (content!5589 lt!1275200) ((_ map or) (content!5589 (t!298753 lt!1274729)) (content!5589 (_2!22390 lt!1274714)))))))

(assert (=> d!1076128 (= lt!1275200 e!2268769)))

(declare-fun c!633398 () Bool)

(assert (=> d!1076128 (= c!633398 ((_ is Nil!38646) (t!298753 lt!1274729)))))

(assert (=> d!1076128 (= (++!9618 (t!298753 lt!1274729) (_2!22390 lt!1274714)) lt!1275200)))

(declare-fun b!3664161 () Bool)

(assert (=> b!3664161 (= e!2268770 (or (not (= (_2!22390 lt!1274714) Nil!38646)) (= lt!1275200 (t!298753 lt!1274729))))))

(declare-fun b!3664160 () Bool)

(declare-fun res!1487729 () Bool)

(assert (=> b!3664160 (=> (not res!1487729) (not e!2268770))))

(assert (=> b!3664160 (= res!1487729 (= (size!29528 lt!1275200) (+ (size!29528 (t!298753 lt!1274729)) (size!29528 (_2!22390 lt!1274714)))))))

(declare-fun b!3664158 () Bool)

(assert (=> b!3664158 (= e!2268769 (_2!22390 lt!1274714))))

(assert (= (and d!1076128 c!633398) b!3664158))

(assert (= (and d!1076128 (not c!633398)) b!3664159))

(assert (= (and d!1076128 res!1487728) b!3664160))

(assert (= (and b!3664160 res!1487729) b!3664161))

(declare-fun m!4171381 () Bool)

(assert (=> b!3664159 m!4171381))

(declare-fun m!4171383 () Bool)

(assert (=> d!1076128 m!4171383))

(assert (=> d!1076128 m!4171179))

(assert (=> d!1076128 m!4170567))

(declare-fun m!4171385 () Bool)

(assert (=> b!3664160 m!4171385))

(assert (=> b!3664160 m!4170713))

(assert (=> b!3664160 m!4170571))

(assert (=> b!3663492 d!1076128))

(declare-fun b!3664162 () Bool)

(declare-fun e!2268772 () Bool)

(declare-fun e!2268771 () Bool)

(assert (=> b!3664162 (= e!2268772 e!2268771)))

(declare-fun c!633400 () Bool)

(assert (=> b!3664162 (= c!633400 ((_ is IntegerValue!18097) (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745)))))

(declare-fun b!3664163 () Bool)

(declare-fun res!1487730 () Bool)

(declare-fun e!2268773 () Bool)

(assert (=> b!3664163 (=> res!1487730 e!2268773)))

(assert (=> b!3664163 (= res!1487730 (not ((_ is IntegerValue!18098) (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745))))))

(assert (=> b!3664163 (= e!2268771 e!2268773)))

(declare-fun b!3664164 () Bool)

(assert (=> b!3664164 (= e!2268771 (inv!17 (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745)))))

(declare-fun d!1076130 () Bool)

(declare-fun c!633399 () Bool)

(assert (=> d!1076130 (= c!633399 ((_ is IntegerValue!18096) (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745)))))

(assert (=> d!1076130 (= (inv!21 (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745)) e!2268772)))

(declare-fun b!3664165 () Bool)

(assert (=> b!3664165 (= e!2268772 (inv!16 (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745)))))

(declare-fun b!3664166 () Bool)

(assert (=> b!3664166 (= e!2268773 (inv!15 (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745)))))

(assert (= (and d!1076130 c!633399) b!3664165))

(assert (= (and d!1076130 (not c!633399)) b!3664162))

(assert (= (and b!3664162 c!633400) b!3664164))

(assert (= (and b!3664162 (not c!633400)) b!3664163))

(assert (= (and b!3664163 (not res!1487730)) b!3664166))

(declare-fun m!4171387 () Bool)

(assert (=> b!3664164 m!4171387))

(declare-fun m!4171389 () Bool)

(assert (=> b!3664165 m!4171389))

(declare-fun m!4171391 () Bool)

(assert (=> b!3664166 m!4171391))

(assert (=> tb!211749 d!1076130))

(declare-fun d!1076132 () Bool)

(declare-fun e!2268776 () Bool)

(assert (=> d!1076132 e!2268776))

(declare-fun res!1487733 () Bool)

(assert (=> d!1076132 (=> (not res!1487733) (not e!2268776))))

(declare-fun lt!1275203 () BalanceConc!23252)

(assert (=> d!1076132 (= res!1487733 (= (list!14340 lt!1275203) lt!1274729))))

(declare-fun fromList!798 (List!38770) Conc!11819)

(assert (=> d!1076132 (= lt!1275203 (BalanceConc!23253 (fromList!798 lt!1274729)))))

(assert (=> d!1076132 (= (fromListB!2011 lt!1274729) lt!1275203)))

(declare-fun b!3664169 () Bool)

(assert (=> b!3664169 (= e!2268776 (isBalanced!3504 (fromList!798 lt!1274729)))))

(assert (= (and d!1076132 res!1487733) b!3664169))

(declare-fun m!4171393 () Bool)

(assert (=> d!1076132 m!4171393))

(declare-fun m!4171395 () Bool)

(assert (=> d!1076132 m!4171395))

(assert (=> b!3664169 m!4171395))

(assert (=> b!3664169 m!4171395))

(declare-fun m!4171397 () Bool)

(assert (=> b!3664169 m!4171397))

(assert (=> d!1075846 d!1076132))

(assert (=> b!3663585 d!1075982))

(declare-fun d!1076134 () Bool)

(declare-fun lt!1275204 () Int)

(assert (=> d!1076134 (>= lt!1275204 0)))

(declare-fun e!2268777 () Int)

(assert (=> d!1076134 (= lt!1275204 e!2268777)))

(declare-fun c!633402 () Bool)

(assert (=> d!1076134 (= c!633402 ((_ is Nil!38646) (originalCharacters!6516 (_1!22390 (get!12743 lt!1275044)))))))

(assert (=> d!1076134 (= (size!29528 (originalCharacters!6516 (_1!22390 (get!12743 lt!1275044)))) lt!1275204)))

(declare-fun b!3664170 () Bool)

(assert (=> b!3664170 (= e!2268777 0)))

(declare-fun b!3664171 () Bool)

(assert (=> b!3664171 (= e!2268777 (+ 1 (size!29528 (t!298753 (originalCharacters!6516 (_1!22390 (get!12743 lt!1275044)))))))))

(assert (= (and d!1076134 c!633402) b!3664170))

(assert (= (and d!1076134 (not c!633402)) b!3664171))

(declare-fun m!4171399 () Bool)

(assert (=> b!3664171 m!4171399))

(assert (=> b!3663585 d!1076134))

(assert (=> d!1075890 d!1075600))

(declare-fun bs!572795 () Bool)

(declare-fun d!1076136 () Bool)

(assert (= bs!572795 (and d!1076136 d!1075606)))

(declare-fun lambda!124610 () Int)

(assert (=> bs!572795 (= lambda!124610 lambda!124596)))

(declare-fun bs!572796 () Bool)

(assert (= bs!572796 (and d!1076136 d!1075792)))

(assert (=> bs!572796 (= (and (= (toChars!7953 (transformation!5802 rule!403)) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) (= (toValue!8094 (transformation!5802 rule!403)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (= lambda!124610 lambda!124598))))

(declare-fun bs!572797 () Bool)

(assert (= bs!572797 (and d!1076136 d!1076016)))

(assert (=> bs!572797 (= (and (= (toChars!7953 (transformation!5802 rule!403)) (toChars!7953 (transformation!5802 (h!44067 rules!3307)))) (= (toValue!8094 (transformation!5802 rule!403)) (toValue!8094 (transformation!5802 (h!44067 rules!3307))))) (= lambda!124610 lambda!124608))))

(declare-fun bs!572798 () Bool)

(assert (= bs!572798 (and d!1076136 d!1076078)))

(assert (=> bs!572798 (= (and (= (toChars!7953 (transformation!5802 rule!403)) (toChars!7953 (transformation!5802 (rule!8618 token!511)))) (= (toValue!8094 (transformation!5802 rule!403)) (toValue!8094 (transformation!5802 (rule!8618 token!511))))) (= lambda!124610 lambda!124609))))

(assert (=> d!1076136 true))

(assert (=> d!1076136 (< (dynLambda!16900 order!21359 (toChars!7953 (transformation!5802 rule!403))) (dynLambda!16899 order!21357 lambda!124610))))

(assert (=> d!1076136 true))

(assert (=> d!1076136 (< (dynLambda!16898 order!21355 (toValue!8094 (transformation!5802 rule!403))) (dynLambda!16899 order!21357 lambda!124610))))

(assert (=> d!1076136 (= (semiInverseModEq!2475 (toChars!7953 (transformation!5802 rule!403)) (toValue!8094 (transformation!5802 rule!403))) (Forall!1370 lambda!124610))))

(declare-fun bs!572799 () Bool)

(assert (= bs!572799 d!1076136))

(declare-fun m!4171401 () Bool)

(assert (=> bs!572799 m!4171401))

(assert (=> d!1075814 d!1076136))

(assert (=> b!3663670 d!1075946))

(declare-fun d!1076138 () Bool)

(assert (=> d!1076138 (= (apply!9304 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116)))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 (get!12743 lt!1275116))))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116))))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 (get!12743 lt!1275116))))))))

(declare-fun b_lambda!108739 () Bool)

(assert (=> (not b_lambda!108739) (not d!1076138)))

(declare-fun t!298961 () Bool)

(declare-fun tb!211941 () Bool)

(assert (=> (and b!3663858 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116)))))) t!298961) tb!211941))

(declare-fun result!258002 () Bool)

(assert (=> tb!211941 (= result!258002 (inv!21 (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116))))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 (get!12743 lt!1275116)))))))))

(declare-fun m!4171403 () Bool)

(assert (=> tb!211941 m!4171403))

(assert (=> d!1076138 t!298961))

(declare-fun b_and!272283 () Bool)

(assert (= b_and!272239 (and (=> t!298961 result!258002) b_and!272283)))

(declare-fun t!298963 () Bool)

(declare-fun tb!211943 () Bool)

(assert (=> (and b!3662995 (= (toValue!8094 (transformation!5802 (h!44067 rules!3307))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116)))))) t!298963) tb!211943))

(declare-fun result!258004 () Bool)

(assert (= result!258004 result!258002))

(assert (=> d!1076138 t!298963))

(declare-fun b_and!272285 () Bool)

(assert (= b_and!272225 (and (=> t!298963 result!258004) b_and!272285)))

(declare-fun tb!211945 () Bool)

(declare-fun t!298965 () Bool)

(assert (=> (and b!3663022 (= (toValue!8094 (transformation!5802 rule!403)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116)))))) t!298965) tb!211945))

(declare-fun result!258006 () Bool)

(assert (= result!258006 result!258002))

(assert (=> d!1076138 t!298965))

(declare-fun b_and!272287 () Bool)

(assert (= b_and!272221 (and (=> t!298965 result!258006) b_and!272287)))

(declare-fun t!298967 () Bool)

(declare-fun tb!211947 () Bool)

(assert (=> (and b!3663012 (= (toValue!8094 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116)))))) t!298967) tb!211947))

(declare-fun result!258008 () Bool)

(assert (= result!258008 result!258002))

(assert (=> d!1076138 t!298967))

(declare-fun b_and!272289 () Bool)

(assert (= b_and!272219 (and (=> t!298967 result!258008) b_and!272289)))

(declare-fun tb!211949 () Bool)

(declare-fun t!298969 () Bool)

(assert (=> (and b!3662992 (= (toValue!8094 (transformation!5802 (rule!8618 token!511))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116)))))) t!298969) tb!211949))

(declare-fun result!258010 () Bool)

(assert (= result!258010 result!258002))

(assert (=> d!1076138 t!298969))

(declare-fun b_and!272291 () Bool)

(assert (= b_and!272223 (and (=> t!298969 result!258010) b_and!272291)))

(assert (=> d!1076138 m!4170875))

(declare-fun m!4171405 () Bool)

(assert (=> d!1076138 m!4171405))

(assert (=> b!3663670 d!1076138))

(declare-fun d!1076140 () Bool)

(assert (=> d!1076140 (= (seqFromList!4351 (originalCharacters!6516 (_1!22390 (get!12743 lt!1275116)))) (fromListB!2011 (originalCharacters!6516 (_1!22390 (get!12743 lt!1275116)))))))

(declare-fun bs!572800 () Bool)

(assert (= bs!572800 d!1076140))

(declare-fun m!4171407 () Bool)

(assert (=> bs!572800 m!4171407))

(assert (=> b!3663670 d!1076140))

(declare-fun bs!572801 () Bool)

(declare-fun d!1076142 () Bool)

(assert (= bs!572801 (and d!1076142 d!1075798)))

(declare-fun lambda!124613 () Int)

(assert (=> bs!572801 (= (= (toValue!8094 (transformation!5802 rule!403)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) (= lambda!124613 lambda!124601))))

(assert (=> d!1076142 true))

(assert (=> d!1076142 (< (dynLambda!16898 order!21355 (toValue!8094 (transformation!5802 rule!403))) (dynLambda!16901 order!21361 lambda!124613))))

(declare-fun Forall2!968 (Int) Bool)

(assert (=> d!1076142 (= (equivClasses!2374 (toChars!7953 (transformation!5802 rule!403)) (toValue!8094 (transformation!5802 rule!403))) (Forall2!968 lambda!124613))))

(declare-fun bs!572802 () Bool)

(assert (= bs!572802 d!1076142))

(declare-fun m!4171409 () Bool)

(assert (=> bs!572802 m!4171409))

(assert (=> b!3663537 d!1076142))

(declare-fun d!1076144 () Bool)

(declare-fun c!633403 () Bool)

(assert (=> d!1076144 (= c!633403 ((_ is Nil!38646) (usedCharacters!1014 (regex!5802 anOtherTypeRule!33))))))

(declare-fun e!2268781 () (InoxSet C!21308))

(assert (=> d!1076144 (= (content!5589 (usedCharacters!1014 (regex!5802 anOtherTypeRule!33))) e!2268781)))

(declare-fun b!3664176 () Bool)

(assert (=> b!3664176 (= e!2268781 ((as const (Array C!21308 Bool)) false))))

(declare-fun b!3664177 () Bool)

(assert (=> b!3664177 (= e!2268781 ((_ map or) (store ((as const (Array C!21308 Bool)) false) (h!44066 (usedCharacters!1014 (regex!5802 anOtherTypeRule!33))) true) (content!5589 (t!298753 (usedCharacters!1014 (regex!5802 anOtherTypeRule!33))))))))

(assert (= (and d!1076144 c!633403) b!3664176))

(assert (= (and d!1076144 (not c!633403)) b!3664177))

(declare-fun m!4171411 () Bool)

(assert (=> b!3664177 m!4171411))

(declare-fun m!4171413 () Bool)

(assert (=> b!3664177 m!4171413))

(assert (=> d!1075928 d!1076144))

(declare-fun d!1076146 () Bool)

(assert (=> d!1076146 (= (isDefined!6465 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 (_1!22390 lt!1274714))))) (not (isEmpty!22926 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 (_1!22390 lt!1274714)))))))))

(declare-fun bs!572803 () Bool)

(assert (= bs!572803 d!1076146))

(assert (=> bs!572803 m!4169943))

(declare-fun m!4171415 () Bool)

(assert (=> bs!572803 m!4171415))

(assert (=> d!1075746 d!1076146))

(assert (=> d!1075746 d!1075652))

(declare-fun d!1076148 () Bool)

(declare-fun e!2268787 () Bool)

(assert (=> d!1076148 e!2268787))

(declare-fun res!1487742 () Bool)

(assert (=> d!1076148 (=> (not res!1487742) (not e!2268787))))

(assert (=> d!1076148 (= res!1487742 (isDefined!6465 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 (_1!22390 lt!1274714))))))))

(assert (=> d!1076148 true))

(declare-fun _$52!2079 () Unit!55997)

(assert (=> d!1076148 (= (choose!21716 thiss!23823 rules!3307 lt!1274713 (_1!22390 lt!1274714)) _$52!2079)))

(declare-fun b!3664188 () Bool)

(declare-fun res!1487743 () Bool)

(assert (=> b!3664188 (=> (not res!1487743) (not e!2268787))))

(assert (=> b!3664188 (= res!1487743 (matchR!5130 (regex!5802 (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 (_1!22390 lt!1274714)))))) (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))))))

(declare-fun b!3664189 () Bool)

(assert (=> b!3664189 (= e!2268787 (= (rule!8618 (_1!22390 lt!1274714)) (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 (_1!22390 lt!1274714)))))))))

(assert (= (and d!1076148 res!1487742) b!3664188))

(assert (= (and b!3664188 res!1487743) b!3664189))

(assert (=> d!1076148 m!4169943))

(assert (=> d!1076148 m!4169943))

(assert (=> d!1076148 m!4170419))

(assert (=> b!3664188 m!4169943))

(assert (=> b!3664188 m!4170423))

(assert (=> b!3664188 m!4169943))

(assert (=> b!3664188 m!4169805))

(assert (=> b!3664188 m!4170425))

(assert (=> b!3664188 m!4169803))

(assert (=> b!3664188 m!4169803))

(assert (=> b!3664188 m!4169805))

(assert (=> b!3664189 m!4169943))

(assert (=> b!3664189 m!4169943))

(assert (=> b!3664189 m!4170423))

(assert (=> d!1075746 d!1076148))

(assert (=> d!1075746 d!1075840))

(declare-fun d!1076160 () Bool)

(declare-fun dynLambda!16903 (Int BalanceConc!23252 BalanceConc!23252) Bool)

(assert (=> d!1076160 (dynLambda!16903 lambda!124601 lt!1274743 (seqFromList!4351 (originalCharacters!6516 (_1!22390 lt!1274714))))))

(declare-fun lt!1275232 () Unit!55997)

(declare-fun choose!21733 (Int BalanceConc!23252 BalanceConc!23252) Unit!55997)

(assert (=> d!1076160 (= lt!1275232 (choose!21733 lambda!124601 lt!1274743 (seqFromList!4351 (originalCharacters!6516 (_1!22390 lt!1274714)))))))

(assert (=> d!1076160 (Forall2!968 lambda!124601)))

(assert (=> d!1076160 (= (Forall2of!390 lambda!124601 lt!1274743 (seqFromList!4351 (originalCharacters!6516 (_1!22390 lt!1274714)))) lt!1275232)))

(declare-fun b_lambda!108743 () Bool)

(assert (=> (not b_lambda!108743) (not d!1076160)))

(declare-fun bs!572806 () Bool)

(assert (= bs!572806 d!1076160))

(assert (=> bs!572806 m!4169829))

(declare-fun m!4171451 () Bool)

(assert (=> bs!572806 m!4171451))

(assert (=> bs!572806 m!4169829))

(declare-fun m!4171453 () Bool)

(assert (=> bs!572806 m!4171453))

(declare-fun m!4171457 () Bool)

(assert (=> bs!572806 m!4171457))

(assert (=> d!1075798 d!1076160))

(assert (=> d!1075798 d!1075788))

(declare-fun d!1076164 () Bool)

(assert (=> d!1076164 (= (list!14340 (seqFromList!4351 (originalCharacters!6516 (_1!22390 lt!1274714)))) (list!14343 (c!633135 (seqFromList!4351 (originalCharacters!6516 (_1!22390 lt!1274714))))))))

(declare-fun bs!572807 () Bool)

(assert (= bs!572807 d!1076164))

(declare-fun m!4171461 () Bool)

(assert (=> bs!572807 m!4171461))

(assert (=> d!1075798 d!1076164))

(declare-fun b!3664194 () Bool)

(declare-fun c!633409 () Bool)

(assert (=> b!3664194 (= c!633409 ((_ is Star!10561) (ite c!633244 (regOne!21635 (regex!5802 rule!403)) (regTwo!21634 (regex!5802 rule!403)))))))

(declare-fun e!2268791 () List!38770)

(declare-fun e!2268793 () List!38770)

(assert (=> b!3664194 (= e!2268791 e!2268793)))

(declare-fun b!3664195 () Bool)

(assert (=> b!3664195 (= e!2268791 (Cons!38646 (c!633134 (ite c!633244 (regOne!21635 (regex!5802 rule!403)) (regTwo!21634 (regex!5802 rule!403)))) Nil!38646))))

(declare-fun b!3664196 () Bool)

(declare-fun e!2268790 () List!38770)

(assert (=> b!3664196 (= e!2268793 e!2268790)))

(declare-fun c!633408 () Bool)

(assert (=> b!3664196 (= c!633408 ((_ is Union!10561) (ite c!633244 (regOne!21635 (regex!5802 rule!403)) (regTwo!21634 (regex!5802 rule!403)))))))

(declare-fun bm!265089 () Bool)

(declare-fun call!265095 () List!38770)

(assert (=> bm!265089 (= call!265095 (usedCharacters!1014 (ite c!633408 (regOne!21635 (ite c!633244 (regOne!21635 (regex!5802 rule!403)) (regTwo!21634 (regex!5802 rule!403)))) (regTwo!21634 (ite c!633244 (regOne!21635 (regex!5802 rule!403)) (regTwo!21634 (regex!5802 rule!403)))))))))

(declare-fun b!3664197 () Bool)

(declare-fun call!265096 () List!38770)

(assert (=> b!3664197 (= e!2268793 call!265096)))

(declare-fun b!3664198 () Bool)

(declare-fun e!2268792 () List!38770)

(assert (=> b!3664198 (= e!2268792 Nil!38646)))

(declare-fun bm!265091 () Bool)

(declare-fun call!265097 () List!38770)

(declare-fun call!265094 () List!38770)

(assert (=> bm!265091 (= call!265094 (++!9618 (ite c!633408 call!265095 call!265097) (ite c!633408 call!265097 call!265095)))))

(declare-fun b!3664199 () Bool)

(assert (=> b!3664199 (= e!2268790 call!265094)))

(declare-fun b!3664200 () Bool)

(assert (=> b!3664200 (= e!2268790 call!265094)))

(declare-fun bm!265090 () Bool)

(assert (=> bm!265090 (= call!265097 call!265096)))

(declare-fun d!1076168 () Bool)

(declare-fun c!633407 () Bool)

(assert (=> d!1076168 (= c!633407 (or ((_ is EmptyExpr!10561) (ite c!633244 (regOne!21635 (regex!5802 rule!403)) (regTwo!21634 (regex!5802 rule!403)))) ((_ is EmptyLang!10561) (ite c!633244 (regOne!21635 (regex!5802 rule!403)) (regTwo!21634 (regex!5802 rule!403))))))))

(assert (=> d!1076168 (= (usedCharacters!1014 (ite c!633244 (regOne!21635 (regex!5802 rule!403)) (regTwo!21634 (regex!5802 rule!403)))) e!2268792)))

(declare-fun b!3664201 () Bool)

(assert (=> b!3664201 (= e!2268792 e!2268791)))

(declare-fun c!633410 () Bool)

(assert (=> b!3664201 (= c!633410 ((_ is ElementMatch!10561) (ite c!633244 (regOne!21635 (regex!5802 rule!403)) (regTwo!21634 (regex!5802 rule!403)))))))

(declare-fun bm!265092 () Bool)

(assert (=> bm!265092 (= call!265096 (usedCharacters!1014 (ite c!633409 (reg!10890 (ite c!633244 (regOne!21635 (regex!5802 rule!403)) (regTwo!21634 (regex!5802 rule!403)))) (ite c!633408 (regTwo!21635 (ite c!633244 (regOne!21635 (regex!5802 rule!403)) (regTwo!21634 (regex!5802 rule!403)))) (regOne!21634 (ite c!633244 (regOne!21635 (regex!5802 rule!403)) (regTwo!21634 (regex!5802 rule!403))))))))))

(assert (= (and d!1076168 c!633407) b!3664198))

(assert (= (and d!1076168 (not c!633407)) b!3664201))

(assert (= (and b!3664201 c!633410) b!3664195))

(assert (= (and b!3664201 (not c!633410)) b!3664194))

(assert (= (and b!3664194 c!633409) b!3664197))

(assert (= (and b!3664194 (not c!633409)) b!3664196))

(assert (= (and b!3664196 c!633408) b!3664199))

(assert (= (and b!3664196 (not c!633408)) b!3664200))

(assert (= (or b!3664199 b!3664200) bm!265089))

(assert (= (or b!3664199 b!3664200) bm!265090))

(assert (= (or b!3664199 b!3664200) bm!265091))

(assert (= (or b!3664197 bm!265090) bm!265092))

(declare-fun m!4171465 () Bool)

(assert (=> bm!265089 m!4171465))

(declare-fun m!4171467 () Bool)

(assert (=> bm!265091 m!4171467))

(declare-fun m!4171469 () Bool)

(assert (=> bm!265092 m!4171469))

(assert (=> bm!265028 d!1076168))

(declare-fun d!1076172 () Bool)

(declare-fun lt!1275235 () Bool)

(assert (=> d!1076172 (= lt!1275235 (select (content!5589 (t!298753 call!264986)) lt!1274726))))

(declare-fun e!2268796 () Bool)

(assert (=> d!1076172 (= lt!1275235 e!2268796)))

(declare-fun res!1487744 () Bool)

(assert (=> d!1076172 (=> (not res!1487744) (not e!2268796))))

(assert (=> d!1076172 (= res!1487744 ((_ is Cons!38646) (t!298753 call!264986)))))

(assert (=> d!1076172 (= (contains!7669 (t!298753 call!264986) lt!1274726) lt!1275235)))

(declare-fun b!3664204 () Bool)

(declare-fun e!2268795 () Bool)

(assert (=> b!3664204 (= e!2268796 e!2268795)))

(declare-fun res!1487745 () Bool)

(assert (=> b!3664204 (=> res!1487745 e!2268795)))

(assert (=> b!3664204 (= res!1487745 (= (h!44066 (t!298753 call!264986)) lt!1274726))))

(declare-fun b!3664205 () Bool)

(assert (=> b!3664205 (= e!2268795 (contains!7669 (t!298753 (t!298753 call!264986)) lt!1274726))))

(assert (= (and d!1076172 res!1487744) b!3664204))

(assert (= (and b!3664204 (not res!1487745)) b!3664205))

(declare-fun m!4171473 () Bool)

(assert (=> d!1076172 m!4171473))

(declare-fun m!4171475 () Bool)

(assert (=> d!1076172 m!4171475))

(declare-fun m!4171477 () Bool)

(assert (=> b!3664205 m!4171477))

(assert (=> b!3663662 d!1076172))

(declare-fun d!1076176 () Bool)

(assert (=> d!1076176 (= (nullable!3675 (regex!5802 lt!1274756)) (nullableFct!1041 (regex!5802 lt!1274756)))))

(declare-fun bs!572809 () Bool)

(assert (= bs!572809 d!1076176))

(declare-fun m!4171479 () Bool)

(assert (=> bs!572809 m!4171479))

(assert (=> b!3663712 d!1076176))

(declare-fun d!1076178 () Bool)

(assert (=> d!1076178 (= (list!14340 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743))) (list!14343 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743)))))))

(declare-fun bs!572810 () Bool)

(assert (= bs!572810 d!1076178))

(declare-fun m!4171485 () Bool)

(assert (=> bs!572810 m!4171485))

(assert (=> d!1075792 d!1076178))

(assert (=> d!1075792 d!1075788))

(declare-fun d!1076182 () Bool)

(declare-fun dynLambda!16904 (Int BalanceConc!23252) Bool)

(assert (=> d!1076182 (dynLambda!16904 lambda!124598 lt!1274743)))

(declare-fun lt!1275241 () Unit!55997)

(declare-fun choose!21735 (Int BalanceConc!23252) Unit!55997)

(assert (=> d!1076182 (= lt!1275241 (choose!21735 lambda!124598 lt!1274743))))

(assert (=> d!1076182 (Forall!1370 lambda!124598)))

(assert (=> d!1076182 (= (ForallOf!732 lambda!124598 lt!1274743) lt!1275241)))

(declare-fun b_lambda!108745 () Bool)

(assert (=> (not b_lambda!108745) (not d!1076182)))

(declare-fun bs!572811 () Bool)

(assert (= bs!572811 d!1076182))

(declare-fun m!4171501 () Bool)

(assert (=> bs!572811 m!4171501))

(declare-fun m!4171503 () Bool)

(assert (=> bs!572811 m!4171503))

(declare-fun m!4171505 () Bool)

(assert (=> bs!572811 m!4171505))

(assert (=> d!1075792 d!1076182))

(declare-fun bm!265093 () Bool)

(declare-fun call!265098 () Bool)

(assert (=> bm!265093 (= call!265098 (isEmpty!22924 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1274987))))))))

(declare-fun b!3664218 () Bool)

(declare-fun e!2268806 () Bool)

(assert (=> b!3664218 (= e!2268806 (matchR!5130 (derivativeStep!3224 (regex!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987)))) (head!7834 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1274987)))))) (tail!5673 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1274987)))))))))

(declare-fun b!3664219 () Bool)

(declare-fun e!2268809 () Bool)

(assert (=> b!3664219 (= e!2268809 (not (= (head!7834 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1274987))))) (c!633134 (regex!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987))))))))))

(declare-fun d!1076188 () Bool)

(declare-fun e!2268804 () Bool)

(assert (=> d!1076188 e!2268804))

(declare-fun c!633413 () Bool)

(assert (=> d!1076188 (= c!633413 ((_ is EmptyExpr!10561) (regex!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987))))))))

(declare-fun lt!1275242 () Bool)

(assert (=> d!1076188 (= lt!1275242 e!2268806)))

(declare-fun c!633417 () Bool)

(assert (=> d!1076188 (= c!633417 (isEmpty!22924 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1274987))))))))

(assert (=> d!1076188 (validRegex!4836 (regex!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987)))))))

(assert (=> d!1076188 (= (matchR!5130 (regex!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987)))) (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1274987))))) lt!1275242)))

(declare-fun b!3664220 () Bool)

(declare-fun e!2268803 () Bool)

(assert (=> b!3664220 (= e!2268803 e!2268809)))

(declare-fun res!1487759 () Bool)

(assert (=> b!3664220 (=> res!1487759 e!2268809)))

(assert (=> b!3664220 (= res!1487759 call!265098)))

(declare-fun b!3664221 () Bool)

(declare-fun e!2268810 () Bool)

(assert (=> b!3664221 (= e!2268810 (= (head!7834 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1274987))))) (c!633134 (regex!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987)))))))))

(declare-fun b!3664222 () Bool)

(declare-fun res!1487754 () Bool)

(assert (=> b!3664222 (=> (not res!1487754) (not e!2268810))))

(assert (=> b!3664222 (= res!1487754 (not call!265098))))

(declare-fun b!3664223 () Bool)

(declare-fun e!2268811 () Bool)

(assert (=> b!3664223 (= e!2268811 e!2268803)))

(declare-fun res!1487756 () Bool)

(assert (=> b!3664223 (=> (not res!1487756) (not e!2268803))))

(assert (=> b!3664223 (= res!1487756 (not lt!1275242))))

(declare-fun b!3664224 () Bool)

(declare-fun e!2268805 () Bool)

(assert (=> b!3664224 (= e!2268805 (not lt!1275242))))

(declare-fun b!3664225 () Bool)

(assert (=> b!3664225 (= e!2268804 e!2268805)))

(declare-fun c!633415 () Bool)

(assert (=> b!3664225 (= c!633415 ((_ is EmptyLang!10561) (regex!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987))))))))

(declare-fun b!3664226 () Bool)

(declare-fun res!1487757 () Bool)

(assert (=> b!3664226 (=> res!1487757 e!2268809)))

(assert (=> b!3664226 (= res!1487757 (not (isEmpty!22924 (tail!5673 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1274987))))))))))

(declare-fun b!3664227 () Bool)

(declare-fun res!1487758 () Bool)

(assert (=> b!3664227 (=> res!1487758 e!2268811)))

(assert (=> b!3664227 (= res!1487758 (not ((_ is ElementMatch!10561) (regex!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987)))))))))

(assert (=> b!3664227 (= e!2268805 e!2268811)))

(declare-fun b!3664228 () Bool)

(declare-fun res!1487755 () Bool)

(assert (=> b!3664228 (=> (not res!1487755) (not e!2268810))))

(assert (=> b!3664228 (= res!1487755 (isEmpty!22924 (tail!5673 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1274987)))))))))

(declare-fun b!3664229 () Bool)

(assert (=> b!3664229 (= e!2268804 (= lt!1275242 call!265098))))

(declare-fun b!3664230 () Bool)

(assert (=> b!3664230 (= e!2268806 (nullable!3675 (regex!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987))))))))

(declare-fun b!3664231 () Bool)

(declare-fun res!1487753 () Bool)

(assert (=> b!3664231 (=> res!1487753 e!2268811)))

(assert (=> b!3664231 (= res!1487753 e!2268810)))

(declare-fun res!1487752 () Bool)

(assert (=> b!3664231 (=> (not res!1487752) (not e!2268810))))

(assert (=> b!3664231 (= res!1487752 lt!1275242)))

(assert (= (and d!1076188 c!633417) b!3664230))

(assert (= (and d!1076188 (not c!633417)) b!3664218))

(assert (= (and d!1076188 c!633413) b!3664229))

(assert (= (and d!1076188 (not c!633413)) b!3664225))

(assert (= (and b!3664225 c!633415) b!3664224))

(assert (= (and b!3664225 (not c!633415)) b!3664227))

(assert (= (and b!3664227 (not res!1487758)) b!3664231))

(assert (= (and b!3664231 res!1487752) b!3664222))

(assert (= (and b!3664222 res!1487754) b!3664228))

(assert (= (and b!3664228 res!1487755) b!3664221))

(assert (= (and b!3664231 (not res!1487753)) b!3664223))

(assert (= (and b!3664223 res!1487756) b!3664220))

(assert (= (and b!3664220 (not res!1487759)) b!3664226))

(assert (= (and b!3664226 (not res!1487757)) b!3664219))

(assert (= (or b!3664229 b!3664220 b!3664222) bm!265093))

(assert (=> b!3664226 m!4170535))

(declare-fun m!4171507 () Bool)

(assert (=> b!3664226 m!4171507))

(assert (=> b!3664226 m!4171507))

(declare-fun m!4171509 () Bool)

(assert (=> b!3664226 m!4171509))

(assert (=> b!3664228 m!4170535))

(assert (=> b!3664228 m!4171507))

(assert (=> b!3664228 m!4171507))

(assert (=> b!3664228 m!4171509))

(assert (=> b!3664221 m!4170535))

(declare-fun m!4171511 () Bool)

(assert (=> b!3664221 m!4171511))

(assert (=> b!3664218 m!4170535))

(assert (=> b!3664218 m!4171511))

(assert (=> b!3664218 m!4171511))

(declare-fun m!4171513 () Bool)

(assert (=> b!3664218 m!4171513))

(assert (=> b!3664218 m!4170535))

(assert (=> b!3664218 m!4171507))

(assert (=> b!3664218 m!4171513))

(assert (=> b!3664218 m!4171507))

(declare-fun m!4171515 () Bool)

(assert (=> b!3664218 m!4171515))

(declare-fun m!4171517 () Bool)

(assert (=> b!3664230 m!4171517))

(assert (=> b!3664219 m!4170535))

(assert (=> b!3664219 m!4171511))

(assert (=> d!1076188 m!4170535))

(declare-fun m!4171519 () Bool)

(assert (=> d!1076188 m!4171519))

(declare-fun m!4171521 () Bool)

(assert (=> d!1076188 m!4171521))

(assert (=> bm!265093 m!4170535))

(assert (=> bm!265093 m!4171519))

(assert (=> b!3663486 d!1076188))

(assert (=> b!3663486 d!1076120))

(declare-fun d!1076190 () Bool)

(assert (=> d!1076190 (= (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1274987)))) (list!14343 (c!633135 (charsOf!3816 (_1!22390 (get!12743 lt!1274987))))))))

(declare-fun bs!572812 () Bool)

(assert (= bs!572812 d!1076190))

(declare-fun m!4171523 () Bool)

(assert (=> bs!572812 m!4171523))

(assert (=> b!3663486 d!1076190))

(declare-fun d!1076192 () Bool)

(declare-fun lt!1275243 () BalanceConc!23252)

(assert (=> d!1076192 (= (list!14340 lt!1275243) (originalCharacters!6516 (_1!22390 (get!12743 lt!1274987))))))

(assert (=> d!1076192 (= lt!1275243 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987))))) (value!185817 (_1!22390 (get!12743 lt!1274987)))))))

(assert (=> d!1076192 (= (charsOf!3816 (_1!22390 (get!12743 lt!1274987))) lt!1275243)))

(declare-fun b_lambda!108747 () Bool)

(assert (=> (not b_lambda!108747) (not d!1076192)))

(declare-fun t!298982 () Bool)

(declare-fun tb!211961 () Bool)

(assert (=> (and b!3663012 (= (toChars!7953 (transformation!5802 anOtherTypeRule!33)) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987)))))) t!298982) tb!211961))

(declare-fun b!3664240 () Bool)

(declare-fun e!2268816 () Bool)

(declare-fun tp!1115651 () Bool)

(assert (=> b!3664240 (= e!2268816 (and (inv!52119 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987))))) (value!185817 (_1!22390 (get!12743 lt!1274987)))))) tp!1115651))))

(declare-fun result!258022 () Bool)

(assert (=> tb!211961 (= result!258022 (and (inv!52120 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987))))) (value!185817 (_1!22390 (get!12743 lt!1274987))))) e!2268816))))

(assert (= tb!211961 b!3664240))

(declare-fun m!4171533 () Bool)

(assert (=> b!3664240 m!4171533))

(declare-fun m!4171535 () Bool)

(assert (=> tb!211961 m!4171535))

(assert (=> d!1076192 t!298982))

(declare-fun b_and!272303 () Bool)

(assert (= b_and!272257 (and (=> t!298982 result!258022) b_and!272303)))

(declare-fun t!298984 () Bool)

(declare-fun tb!211963 () Bool)

(assert (=> (and b!3662992 (= (toChars!7953 (transformation!5802 (rule!8618 token!511))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987)))))) t!298984) tb!211963))

(declare-fun result!258024 () Bool)

(assert (= result!258024 result!258022))

(assert (=> d!1076192 t!298984))

(declare-fun b_and!272305 () Bool)

(assert (= b_and!272255 (and (=> t!298984 result!258024) b_and!272305)))

(declare-fun t!298986 () Bool)

(declare-fun tb!211965 () Bool)

(assert (=> (and b!3663858 (= (toChars!7953 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987)))))) t!298986) tb!211965))

(declare-fun result!258026 () Bool)

(assert (= result!258026 result!258022))

(assert (=> d!1076192 t!298986))

(declare-fun b_and!272307 () Bool)

(assert (= b_and!272253 (and (=> t!298986 result!258026) b_and!272307)))

(declare-fun tb!211967 () Bool)

(declare-fun t!298988 () Bool)

(assert (=> (and b!3663022 (= (toChars!7953 (transformation!5802 rule!403)) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987)))))) t!298988) tb!211967))

(declare-fun result!258028 () Bool)

(assert (= result!258028 result!258022))

(assert (=> d!1076192 t!298988))

(declare-fun b_and!272309 () Bool)

(assert (= b_and!272261 (and (=> t!298988 result!258028) b_and!272309)))

(declare-fun tb!211969 () Bool)

(declare-fun t!298990 () Bool)

(assert (=> (and b!3662995 (= (toChars!7953 (transformation!5802 (h!44067 rules!3307))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987)))))) t!298990) tb!211969))

(declare-fun result!258030 () Bool)

(assert (= result!258030 result!258022))

(assert (=> d!1076192 t!298990))

(declare-fun b_and!272311 () Bool)

(assert (= b_and!272259 (and (=> t!298990 result!258030) b_and!272311)))

(declare-fun m!4171537 () Bool)

(assert (=> d!1076192 m!4171537))

(declare-fun m!4171539 () Bool)

(assert (=> d!1076192 m!4171539))

(assert (=> b!3663486 d!1076192))

(declare-fun d!1076196 () Bool)

(assert (=> d!1076196 (= (nullable!3675 (regex!5802 rule!403)) (nullableFct!1041 (regex!5802 rule!403)))))

(declare-fun bs!572813 () Bool)

(assert (= bs!572813 d!1076196))

(declare-fun m!4171541 () Bool)

(assert (=> bs!572813 m!4171541))

(assert (=> b!3663755 d!1076196))

(declare-fun d!1076198 () Bool)

(declare-fun lt!1275244 () Bool)

(assert (=> d!1076198 (= lt!1275244 (select (content!5591 (t!298754 rules!3307)) rule!403))))

(declare-fun e!2268818 () Bool)

(assert (=> d!1076198 (= lt!1275244 e!2268818)))

(declare-fun res!1487761 () Bool)

(assert (=> d!1076198 (=> (not res!1487761) (not e!2268818))))

(assert (=> d!1076198 (= res!1487761 ((_ is Cons!38647) (t!298754 rules!3307)))))

(assert (=> d!1076198 (= (contains!7670 (t!298754 rules!3307) rule!403) lt!1275244)))

(declare-fun b!3664241 () Bool)

(declare-fun e!2268817 () Bool)

(assert (=> b!3664241 (= e!2268818 e!2268817)))

(declare-fun res!1487760 () Bool)

(assert (=> b!3664241 (=> res!1487760 e!2268817)))

(assert (=> b!3664241 (= res!1487760 (= (h!44067 (t!298754 rules!3307)) rule!403))))

(declare-fun b!3664242 () Bool)

(assert (=> b!3664242 (= e!2268817 (contains!7670 (t!298754 (t!298754 rules!3307)) rule!403))))

(assert (= (and d!1076198 res!1487761) b!3664241))

(assert (= (and b!3664241 (not res!1487760)) b!3664242))

(assert (=> d!1076198 m!4171155))

(declare-fun m!4171543 () Bool)

(assert (=> d!1076198 m!4171543))

(declare-fun m!4171547 () Bool)

(assert (=> b!3664242 m!4171547))

(assert (=> b!3663596 d!1076198))

(declare-fun b!3664250 () Bool)

(declare-fun e!2268821 () Bool)

(assert (=> b!3664250 (= e!2268821 (>= (size!29528 (tail!5673 (++!9618 lt!1274729 (_2!22390 lt!1274714)))) (size!29528 (tail!5673 lt!1274729))))))

(declare-fun b!3664249 () Bool)

(declare-fun e!2268823 () Bool)

(assert (=> b!3664249 (= e!2268823 (isPrefix!3165 (tail!5673 (tail!5673 lt!1274729)) (tail!5673 (tail!5673 (++!9618 lt!1274729 (_2!22390 lt!1274714))))))))

(declare-fun b!3664248 () Bool)

(declare-fun res!1487765 () Bool)

(assert (=> b!3664248 (=> (not res!1487765) (not e!2268823))))

(assert (=> b!3664248 (= res!1487765 (= (head!7834 (tail!5673 lt!1274729)) (head!7834 (tail!5673 (++!9618 lt!1274729 (_2!22390 lt!1274714))))))))

(declare-fun d!1076204 () Bool)

(assert (=> d!1076204 e!2268821))

(declare-fun res!1487763 () Bool)

(assert (=> d!1076204 (=> res!1487763 e!2268821)))

(declare-fun lt!1275247 () Bool)

(assert (=> d!1076204 (= res!1487763 (not lt!1275247))))

(declare-fun e!2268822 () Bool)

(assert (=> d!1076204 (= lt!1275247 e!2268822)))

(declare-fun res!1487764 () Bool)

(assert (=> d!1076204 (=> res!1487764 e!2268822)))

(assert (=> d!1076204 (= res!1487764 ((_ is Nil!38646) (tail!5673 lt!1274729)))))

(assert (=> d!1076204 (= (isPrefix!3165 (tail!5673 lt!1274729) (tail!5673 (++!9618 lt!1274729 (_2!22390 lt!1274714)))) lt!1275247)))

(declare-fun b!3664247 () Bool)

(assert (=> b!3664247 (= e!2268822 e!2268823)))

(declare-fun res!1487762 () Bool)

(assert (=> b!3664247 (=> (not res!1487762) (not e!2268823))))

(assert (=> b!3664247 (= res!1487762 (not ((_ is Nil!38646) (tail!5673 (++!9618 lt!1274729 (_2!22390 lt!1274714))))))))

(assert (= (and d!1076204 (not res!1487764)) b!3664247))

(assert (= (and b!3664247 res!1487762) b!3664248))

(assert (= (and b!3664248 res!1487765) b!3664249))

(assert (= (and d!1076204 (not res!1487763)) b!3664250))

(assert (=> b!3664250 m!4170213))

(declare-fun m!4171555 () Bool)

(assert (=> b!3664250 m!4171555))

(assert (=> b!3664250 m!4170211))

(declare-fun m!4171559 () Bool)

(assert (=> b!3664250 m!4171559))

(assert (=> b!3664249 m!4170211))

(declare-fun m!4171561 () Bool)

(assert (=> b!3664249 m!4171561))

(assert (=> b!3664249 m!4170213))

(declare-fun m!4171563 () Bool)

(assert (=> b!3664249 m!4171563))

(assert (=> b!3664249 m!4171561))

(assert (=> b!3664249 m!4171563))

(declare-fun m!4171567 () Bool)

(assert (=> b!3664249 m!4171567))

(assert (=> b!3664248 m!4170211))

(declare-fun m!4171569 () Bool)

(assert (=> b!3664248 m!4171569))

(assert (=> b!3664248 m!4170213))

(declare-fun m!4171571 () Bool)

(assert (=> b!3664248 m!4171571))

(assert (=> b!3663258 d!1076204))

(declare-fun d!1076214 () Bool)

(assert (=> d!1076214 (= (tail!5673 lt!1274729) (t!298753 lt!1274729))))

(assert (=> b!3663258 d!1076214))

(declare-fun d!1076216 () Bool)

(assert (=> d!1076216 (= (tail!5673 (++!9618 lt!1274729 (_2!22390 lt!1274714))) (t!298753 (++!9618 lt!1274729 (_2!22390 lt!1274714))))))

(assert (=> b!3663258 d!1076216))

(declare-fun bm!265094 () Bool)

(declare-fun call!265099 () Bool)

(assert (=> bm!265094 (= call!265099 (isEmpty!22924 (tail!5673 lt!1274729)))))

(declare-fun b!3664253 () Bool)

(declare-fun e!2268828 () Bool)

(assert (=> b!3664253 (= e!2268828 (matchR!5130 (derivativeStep!3224 (derivativeStep!3224 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) (head!7834 lt!1274729)) (head!7834 (tail!5673 lt!1274729))) (tail!5673 (tail!5673 lt!1274729))))))

(declare-fun b!3664254 () Bool)

(declare-fun e!2268829 () Bool)

(assert (=> b!3664254 (= e!2268829 (not (= (head!7834 (tail!5673 lt!1274729)) (c!633134 (derivativeStep!3224 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) (head!7834 lt!1274729))))))))

(declare-fun d!1076218 () Bool)

(declare-fun e!2268826 () Bool)

(assert (=> d!1076218 e!2268826))

(declare-fun c!633425 () Bool)

(assert (=> d!1076218 (= c!633425 ((_ is EmptyExpr!10561) (derivativeStep!3224 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) (head!7834 lt!1274729))))))

(declare-fun lt!1275248 () Bool)

(assert (=> d!1076218 (= lt!1275248 e!2268828)))

(declare-fun c!633427 () Bool)

(assert (=> d!1076218 (= c!633427 (isEmpty!22924 (tail!5673 lt!1274729)))))

(assert (=> d!1076218 (validRegex!4836 (derivativeStep!3224 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) (head!7834 lt!1274729)))))

(assert (=> d!1076218 (= (matchR!5130 (derivativeStep!3224 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) (head!7834 lt!1274729)) (tail!5673 lt!1274729)) lt!1275248)))

(declare-fun b!3664255 () Bool)

(declare-fun e!2268825 () Bool)

(assert (=> b!3664255 (= e!2268825 e!2268829)))

(declare-fun res!1487773 () Bool)

(assert (=> b!3664255 (=> res!1487773 e!2268829)))

(assert (=> b!3664255 (= res!1487773 call!265099)))

(declare-fun b!3664256 () Bool)

(declare-fun e!2268830 () Bool)

(assert (=> b!3664256 (= e!2268830 (= (head!7834 (tail!5673 lt!1274729)) (c!633134 (derivativeStep!3224 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) (head!7834 lt!1274729)))))))

(declare-fun b!3664257 () Bool)

(declare-fun res!1487768 () Bool)

(assert (=> b!3664257 (=> (not res!1487768) (not e!2268830))))

(assert (=> b!3664257 (= res!1487768 (not call!265099))))

(declare-fun b!3664258 () Bool)

(declare-fun e!2268831 () Bool)

(assert (=> b!3664258 (= e!2268831 e!2268825)))

(declare-fun res!1487770 () Bool)

(assert (=> b!3664258 (=> (not res!1487770) (not e!2268825))))

(assert (=> b!3664258 (= res!1487770 (not lt!1275248))))

(declare-fun b!3664259 () Bool)

(declare-fun e!2268827 () Bool)

(assert (=> b!3664259 (= e!2268827 (not lt!1275248))))

(declare-fun b!3664260 () Bool)

(assert (=> b!3664260 (= e!2268826 e!2268827)))

(declare-fun c!633426 () Bool)

(assert (=> b!3664260 (= c!633426 ((_ is EmptyLang!10561) (derivativeStep!3224 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) (head!7834 lt!1274729))))))

(declare-fun b!3664261 () Bool)

(declare-fun res!1487771 () Bool)

(assert (=> b!3664261 (=> res!1487771 e!2268829)))

(assert (=> b!3664261 (= res!1487771 (not (isEmpty!22924 (tail!5673 (tail!5673 lt!1274729)))))))

(declare-fun b!3664262 () Bool)

(declare-fun res!1487772 () Bool)

(assert (=> b!3664262 (=> res!1487772 e!2268831)))

(assert (=> b!3664262 (= res!1487772 (not ((_ is ElementMatch!10561) (derivativeStep!3224 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) (head!7834 lt!1274729)))))))

(assert (=> b!3664262 (= e!2268827 e!2268831)))

(declare-fun b!3664263 () Bool)

(declare-fun res!1487769 () Bool)

(assert (=> b!3664263 (=> (not res!1487769) (not e!2268830))))

(assert (=> b!3664263 (= res!1487769 (isEmpty!22924 (tail!5673 (tail!5673 lt!1274729))))))

(declare-fun b!3664264 () Bool)

(assert (=> b!3664264 (= e!2268826 (= lt!1275248 call!265099))))

(declare-fun b!3664265 () Bool)

(assert (=> b!3664265 (= e!2268828 (nullable!3675 (derivativeStep!3224 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) (head!7834 lt!1274729))))))

(declare-fun b!3664266 () Bool)

(declare-fun res!1487767 () Bool)

(assert (=> b!3664266 (=> res!1487767 e!2268831)))

(assert (=> b!3664266 (= res!1487767 e!2268830)))

(declare-fun res!1487766 () Bool)

(assert (=> b!3664266 (=> (not res!1487766) (not e!2268830))))

(assert (=> b!3664266 (= res!1487766 lt!1275248)))

(assert (= (and d!1076218 c!633427) b!3664265))

(assert (= (and d!1076218 (not c!633427)) b!3664253))

(assert (= (and d!1076218 c!633425) b!3664264))

(assert (= (and d!1076218 (not c!633425)) b!3664260))

(assert (= (and b!3664260 c!633426) b!3664259))

(assert (= (and b!3664260 (not c!633426)) b!3664262))

(assert (= (and b!3664262 (not res!1487772)) b!3664266))

(assert (= (and b!3664266 res!1487766) b!3664257))

(assert (= (and b!3664257 res!1487768) b!3664263))

(assert (= (and b!3664263 res!1487769) b!3664256))

(assert (= (and b!3664266 (not res!1487767)) b!3664258))

(assert (= (and b!3664258 res!1487770) b!3664255))

(assert (= (and b!3664255 (not res!1487773)) b!3664261))

(assert (= (and b!3664261 (not res!1487771)) b!3664254))

(assert (= (or b!3664264 b!3664255 b!3664257) bm!265094))

(assert (=> b!3664261 m!4170211))

(assert (=> b!3664261 m!4171561))

(assert (=> b!3664261 m!4171561))

(declare-fun m!4171573 () Bool)

(assert (=> b!3664261 m!4171573))

(assert (=> b!3664263 m!4170211))

(assert (=> b!3664263 m!4171561))

(assert (=> b!3664263 m!4171561))

(assert (=> b!3664263 m!4171573))

(assert (=> b!3664256 m!4170211))

(assert (=> b!3664256 m!4171569))

(assert (=> b!3664253 m!4170211))

(assert (=> b!3664253 m!4171569))

(assert (=> b!3664253 m!4170839))

(assert (=> b!3664253 m!4171569))

(declare-fun m!4171575 () Bool)

(assert (=> b!3664253 m!4171575))

(assert (=> b!3664253 m!4170211))

(assert (=> b!3664253 m!4171561))

(assert (=> b!3664253 m!4171575))

(assert (=> b!3664253 m!4171561))

(declare-fun m!4171577 () Bool)

(assert (=> b!3664253 m!4171577))

(assert (=> b!3664265 m!4170839))

(declare-fun m!4171579 () Bool)

(assert (=> b!3664265 m!4171579))

(assert (=> b!3664254 m!4170211))

(assert (=> b!3664254 m!4171569))

(assert (=> d!1076218 m!4170211))

(assert (=> d!1076218 m!4170837))

(assert (=> d!1076218 m!4170839))

(declare-fun m!4171581 () Bool)

(assert (=> d!1076218 m!4171581))

(assert (=> bm!265094 m!4170211))

(assert (=> bm!265094 m!4170837))

(assert (=> b!3663637 d!1076218))

(declare-fun b!3664267 () Bool)

(declare-fun e!2268835 () Regex!10561)

(assert (=> b!3664267 (= e!2268835 EmptyLang!10561)))

(declare-fun b!3664268 () Bool)

(declare-fun e!2268836 () Regex!10561)

(declare-fun call!265102 () Regex!10561)

(assert (=> b!3664268 (= e!2268836 (Concat!16594 call!265102 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun b!3664269 () Bool)

(declare-fun e!2268833 () Regex!10561)

(assert (=> b!3664269 (= e!2268833 e!2268836)))

(declare-fun c!633430 () Bool)

(assert (=> b!3664269 (= c!633430 ((_ is Star!10561) (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun call!265100 () Regex!10561)

(declare-fun b!3664270 () Bool)

(declare-fun e!2268834 () Regex!10561)

(declare-fun call!265101 () Regex!10561)

(assert (=> b!3664270 (= e!2268834 (Union!10561 (Concat!16594 call!265101 (regTwo!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))) call!265100))))

(declare-fun b!3664271 () Bool)

(declare-fun e!2268832 () Regex!10561)

(assert (=> b!3664271 (= e!2268832 (ite (= (head!7834 lt!1274729) (c!633134 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))) EmptyExpr!10561 EmptyLang!10561))))

(declare-fun b!3664272 () Bool)

(assert (=> b!3664272 (= e!2268835 e!2268832)))

(declare-fun c!633429 () Bool)

(assert (=> b!3664272 (= c!633429 ((_ is ElementMatch!10561) (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun b!3664273 () Bool)

(declare-fun c!633432 () Bool)

(assert (=> b!3664273 (= c!633432 (nullable!3675 (regOne!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))))

(assert (=> b!3664273 (= e!2268836 e!2268834)))

(declare-fun b!3664274 () Bool)

(assert (=> b!3664274 (= e!2268834 (Union!10561 (Concat!16594 call!265101 (regTwo!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))) EmptyLang!10561))))

(declare-fun b!3664275 () Bool)

(declare-fun call!265103 () Regex!10561)

(assert (=> b!3664275 (= e!2268833 (Union!10561 call!265100 call!265103))))

(declare-fun bm!265096 () Bool)

(declare-fun c!633431 () Bool)

(assert (=> bm!265096 (= call!265103 (derivativeStep!3224 (ite c!633431 (regTwo!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (ite c!633430 (reg!10890 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regOne!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))) (head!7834 lt!1274729)))))

(declare-fun bm!265097 () Bool)

(assert (=> bm!265097 (= call!265101 call!265102)))

(declare-fun bm!265098 () Bool)

(assert (=> bm!265098 (= call!265100 (derivativeStep!3224 (ite c!633431 (regOne!21635 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) (regTwo!21634 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))) (head!7834 lt!1274729)))))

(declare-fun b!3664276 () Bool)

(assert (=> b!3664276 (= c!633431 ((_ is Union!10561) (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(assert (=> b!3664276 (= e!2268832 e!2268833)))

(declare-fun bm!265095 () Bool)

(assert (=> bm!265095 (= call!265102 call!265103)))

(declare-fun d!1076220 () Bool)

(declare-fun lt!1275252 () Regex!10561)

(assert (=> d!1076220 (validRegex!4836 lt!1275252)))

(assert (=> d!1076220 (= lt!1275252 e!2268835)))

(declare-fun c!633428 () Bool)

(assert (=> d!1076220 (= c!633428 (or ((_ is EmptyExpr!10561) (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) ((_ is EmptyLang!10561) (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))))

(assert (=> d!1076220 (validRegex!4836 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))

(assert (=> d!1076220 (= (derivativeStep!3224 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) (head!7834 lt!1274729)) lt!1275252)))

(assert (= (and d!1076220 c!633428) b!3664267))

(assert (= (and d!1076220 (not c!633428)) b!3664272))

(assert (= (and b!3664272 c!633429) b!3664271))

(assert (= (and b!3664272 (not c!633429)) b!3664276))

(assert (= (and b!3664276 c!633431) b!3664275))

(assert (= (and b!3664276 (not c!633431)) b!3664269))

(assert (= (and b!3664269 c!633430) b!3664268))

(assert (= (and b!3664269 (not c!633430)) b!3664273))

(assert (= (and b!3664273 c!633432) b!3664270))

(assert (= (and b!3664273 (not c!633432)) b!3664274))

(assert (= (or b!3664270 b!3664274) bm!265097))

(assert (= (or b!3664268 bm!265097) bm!265095))

(assert (= (or b!3664275 bm!265095) bm!265096))

(assert (= (or b!3664275 b!3664270) bm!265098))

(declare-fun m!4171589 () Bool)

(assert (=> b!3664273 m!4171589))

(assert (=> bm!265096 m!4169919))

(declare-fun m!4171591 () Bool)

(assert (=> bm!265096 m!4171591))

(assert (=> bm!265098 m!4169919))

(declare-fun m!4171593 () Bool)

(assert (=> bm!265098 m!4171593))

(declare-fun m!4171595 () Bool)

(assert (=> d!1076220 m!4171595))

(assert (=> d!1076220 m!4170009))

(assert (=> b!3663637 d!1076220))

(assert (=> b!3663637 d!1075836))

(assert (=> b!3663637 d!1076214))

(assert (=> bm!265037 d!1075926))

(assert (=> d!1075600 d!1076008))

(assert (=> b!3663580 d!1075982))

(assert (=> d!1075918 d!1075926))

(declare-fun b!3664277 () Bool)

(declare-fun e!2268843 () Bool)

(declare-fun e!2268838 () Bool)

(assert (=> b!3664277 (= e!2268843 e!2268838)))

(declare-fun res!1487777 () Bool)

(assert (=> b!3664277 (=> (not res!1487777) (not e!2268838))))

(declare-fun call!265105 () Bool)

(assert (=> b!3664277 (= res!1487777 call!265105)))

(declare-fun b!3664278 () Bool)

(declare-fun e!2268841 () Bool)

(declare-fun call!265106 () Bool)

(assert (=> b!3664278 (= e!2268841 call!265106)))

(declare-fun b!3664279 () Bool)

(declare-fun e!2268842 () Bool)

(assert (=> b!3664279 (= e!2268842 e!2268841)))

(declare-fun res!1487778 () Bool)

(assert (=> b!3664279 (= res!1487778 (not (nullable!3675 (reg!10890 (regex!5802 rule!403)))))))

(assert (=> b!3664279 (=> (not res!1487778) (not e!2268841))))

(declare-fun b!3664280 () Bool)

(declare-fun e!2268839 () Bool)

(assert (=> b!3664280 (= e!2268839 e!2268842)))

(declare-fun c!633434 () Bool)

(assert (=> b!3664280 (= c!633434 ((_ is Star!10561) (regex!5802 rule!403)))))

(declare-fun b!3664281 () Bool)

(declare-fun e!2268840 () Bool)

(assert (=> b!3664281 (= e!2268840 call!265105)))

(declare-fun b!3664282 () Bool)

(declare-fun res!1487775 () Bool)

(assert (=> b!3664282 (=> res!1487775 e!2268843)))

(assert (=> b!3664282 (= res!1487775 (not ((_ is Concat!16594) (regex!5802 rule!403))))))

(declare-fun e!2268837 () Bool)

(assert (=> b!3664282 (= e!2268837 e!2268843)))

(declare-fun bm!265100 () Bool)

(declare-fun call!265104 () Bool)

(assert (=> bm!265100 (= call!265104 call!265106)))

(declare-fun bm!265101 () Bool)

(declare-fun c!633433 () Bool)

(assert (=> bm!265101 (= call!265106 (validRegex!4836 (ite c!633434 (reg!10890 (regex!5802 rule!403)) (ite c!633433 (regOne!21635 (regex!5802 rule!403)) (regTwo!21634 (regex!5802 rule!403))))))))

(declare-fun b!3664283 () Bool)

(assert (=> b!3664283 (= e!2268842 e!2268837)))

(assert (=> b!3664283 (= c!633433 ((_ is Union!10561) (regex!5802 rule!403)))))

(declare-fun d!1076224 () Bool)

(declare-fun res!1487774 () Bool)

(assert (=> d!1076224 (=> res!1487774 e!2268839)))

(assert (=> d!1076224 (= res!1487774 ((_ is ElementMatch!10561) (regex!5802 rule!403)))))

(assert (=> d!1076224 (= (validRegex!4836 (regex!5802 rule!403)) e!2268839)))

(declare-fun bm!265099 () Bool)

(assert (=> bm!265099 (= call!265105 (validRegex!4836 (ite c!633433 (regTwo!21635 (regex!5802 rule!403)) (regOne!21634 (regex!5802 rule!403)))))))

(declare-fun b!3664284 () Bool)

(declare-fun res!1487776 () Bool)

(assert (=> b!3664284 (=> (not res!1487776) (not e!2268840))))

(assert (=> b!3664284 (= res!1487776 call!265104)))

(assert (=> b!3664284 (= e!2268837 e!2268840)))

(declare-fun b!3664285 () Bool)

(assert (=> b!3664285 (= e!2268838 call!265104)))

(assert (= (and d!1076224 (not res!1487774)) b!3664280))

(assert (= (and b!3664280 c!633434) b!3664279))

(assert (= (and b!3664280 (not c!633434)) b!3664283))

(assert (= (and b!3664279 res!1487778) b!3664278))

(assert (= (and b!3664283 c!633433) b!3664284))

(assert (= (and b!3664283 (not c!633433)) b!3664282))

(assert (= (and b!3664284 res!1487776) b!3664281))

(assert (= (and b!3664282 (not res!1487775)) b!3664277))

(assert (= (and b!3664277 res!1487777) b!3664285))

(assert (= (or b!3664284 b!3664285) bm!265100))

(assert (= (or b!3664281 b!3664277) bm!265099))

(assert (= (or b!3664278 bm!265100) bm!265101))

(declare-fun m!4171597 () Bool)

(assert (=> b!3664279 m!4171597))

(declare-fun m!4171599 () Bool)

(assert (=> bm!265101 m!4171599))

(declare-fun m!4171601 () Bool)

(assert (=> bm!265099 m!4171601))

(assert (=> d!1075918 d!1076224))

(declare-fun e!2268848 () List!38770)

(declare-fun b!3664291 () Bool)

(assert (=> b!3664291 (= e!2268848 (Cons!38646 (h!44066 (ite c!633244 call!265034 call!265036)) (++!9618 (t!298753 (ite c!633244 call!265034 call!265036)) (ite c!633244 call!265036 call!265034))))))

(declare-fun d!1076226 () Bool)

(declare-fun e!2268849 () Bool)

(assert (=> d!1076226 e!2268849))

(declare-fun res!1487783 () Bool)

(assert (=> d!1076226 (=> (not res!1487783) (not e!2268849))))

(declare-fun lt!1275253 () List!38770)

(assert (=> d!1076226 (= res!1487783 (= (content!5589 lt!1275253) ((_ map or) (content!5589 (ite c!633244 call!265034 call!265036)) (content!5589 (ite c!633244 call!265036 call!265034)))))))

(assert (=> d!1076226 (= lt!1275253 e!2268848)))

(declare-fun c!633435 () Bool)

(assert (=> d!1076226 (= c!633435 ((_ is Nil!38646) (ite c!633244 call!265034 call!265036)))))

(assert (=> d!1076226 (= (++!9618 (ite c!633244 call!265034 call!265036) (ite c!633244 call!265036 call!265034)) lt!1275253)))

(declare-fun b!3664293 () Bool)

(assert (=> b!3664293 (= e!2268849 (or (not (= (ite c!633244 call!265036 call!265034) Nil!38646)) (= lt!1275253 (ite c!633244 call!265034 call!265036))))))

(declare-fun b!3664292 () Bool)

(declare-fun res!1487784 () Bool)

(assert (=> b!3664292 (=> (not res!1487784) (not e!2268849))))

(assert (=> b!3664292 (= res!1487784 (= (size!29528 lt!1275253) (+ (size!29528 (ite c!633244 call!265034 call!265036)) (size!29528 (ite c!633244 call!265036 call!265034)))))))

(declare-fun b!3664290 () Bool)

(assert (=> b!3664290 (= e!2268848 (ite c!633244 call!265036 call!265034))))

(assert (= (and d!1076226 c!633435) b!3664290))

(assert (= (and d!1076226 (not c!633435)) b!3664291))

(assert (= (and d!1076226 res!1487783) b!3664292))

(assert (= (and b!3664292 res!1487784) b!3664293))

(declare-fun m!4171603 () Bool)

(assert (=> b!3664291 m!4171603))

(declare-fun m!4171605 () Bool)

(assert (=> d!1076226 m!4171605))

(declare-fun m!4171607 () Bool)

(assert (=> d!1076226 m!4171607))

(declare-fun m!4171609 () Bool)

(assert (=> d!1076226 m!4171609))

(declare-fun m!4171611 () Bool)

(assert (=> b!3664292 m!4171611))

(declare-fun m!4171613 () Bool)

(assert (=> b!3664292 m!4171613))

(declare-fun m!4171615 () Bool)

(assert (=> b!3664292 m!4171615))

(assert (=> bm!265030 d!1076226))

(declare-fun d!1076228 () Bool)

(assert (=> d!1076228 (= (list!14340 lt!1274846) (list!14343 (c!633135 lt!1274846)))))

(declare-fun bs!572818 () Bool)

(assert (= bs!572818 d!1076228))

(declare-fun m!4171617 () Bool)

(assert (=> bs!572818 m!4171617))

(assert (=> d!1075676 d!1076228))

(assert (=> b!3663413 d!1075676))

(assert (=> b!3663413 d!1075898))

(assert (=> b!3663413 d!1076018))

(assert (=> b!3663413 d!1075652))

(declare-fun bm!265102 () Bool)

(declare-fun call!265107 () Bool)

(assert (=> bm!265102 (= call!265107 (isEmpty!22924 (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))))))

(declare-fun b!3664294 () Bool)

(declare-fun e!2268853 () Bool)

(assert (=> b!3664294 (= e!2268853 (matchR!5130 (derivativeStep!3224 (regex!5802 (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 (_1!22390 lt!1274714)))))) (head!7834 (list!14340 (charsOf!3816 (_1!22390 lt!1274714))))) (tail!5673 (list!14340 (charsOf!3816 (_1!22390 lt!1274714))))))))

(declare-fun b!3664295 () Bool)

(declare-fun e!2268854 () Bool)

(assert (=> b!3664295 (= e!2268854 (not (= (head!7834 (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))) (c!633134 (regex!5802 (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 (_1!22390 lt!1274714))))))))))))

(declare-fun d!1076230 () Bool)

(declare-fun e!2268851 () Bool)

(assert (=> d!1076230 e!2268851))

(declare-fun c!633436 () Bool)

(assert (=> d!1076230 (= c!633436 ((_ is EmptyExpr!10561) (regex!5802 (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 (_1!22390 lt!1274714))))))))))

(declare-fun lt!1275254 () Bool)

(assert (=> d!1076230 (= lt!1275254 e!2268853)))

(declare-fun c!633438 () Bool)

(assert (=> d!1076230 (= c!633438 (isEmpty!22924 (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))))))

(assert (=> d!1076230 (validRegex!4836 (regex!5802 (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 (_1!22390 lt!1274714)))))))))

(assert (=> d!1076230 (= (matchR!5130 (regex!5802 (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 (_1!22390 lt!1274714)))))) (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))) lt!1275254)))

(declare-fun b!3664296 () Bool)

(declare-fun e!2268850 () Bool)

(assert (=> b!3664296 (= e!2268850 e!2268854)))

(declare-fun res!1487792 () Bool)

(assert (=> b!3664296 (=> res!1487792 e!2268854)))

(assert (=> b!3664296 (= res!1487792 call!265107)))

(declare-fun b!3664297 () Bool)

(declare-fun e!2268855 () Bool)

(assert (=> b!3664297 (= e!2268855 (= (head!7834 (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))) (c!633134 (regex!5802 (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 (_1!22390 lt!1274714)))))))))))

(declare-fun b!3664298 () Bool)

(declare-fun res!1487787 () Bool)

(assert (=> b!3664298 (=> (not res!1487787) (not e!2268855))))

(assert (=> b!3664298 (= res!1487787 (not call!265107))))

(declare-fun b!3664299 () Bool)

(declare-fun e!2268856 () Bool)

(assert (=> b!3664299 (= e!2268856 e!2268850)))

(declare-fun res!1487789 () Bool)

(assert (=> b!3664299 (=> (not res!1487789) (not e!2268850))))

(assert (=> b!3664299 (= res!1487789 (not lt!1275254))))

(declare-fun b!3664300 () Bool)

(declare-fun e!2268852 () Bool)

(assert (=> b!3664300 (= e!2268852 (not lt!1275254))))

(declare-fun b!3664301 () Bool)

(assert (=> b!3664301 (= e!2268851 e!2268852)))

(declare-fun c!633437 () Bool)

(assert (=> b!3664301 (= c!633437 ((_ is EmptyLang!10561) (regex!5802 (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 (_1!22390 lt!1274714))))))))))

(declare-fun b!3664302 () Bool)

(declare-fun res!1487790 () Bool)

(assert (=> b!3664302 (=> res!1487790 e!2268854)))

(assert (=> b!3664302 (= res!1487790 (not (isEmpty!22924 (tail!5673 (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))))))))

(declare-fun b!3664303 () Bool)

(declare-fun res!1487791 () Bool)

(assert (=> b!3664303 (=> res!1487791 e!2268856)))

(assert (=> b!3664303 (= res!1487791 (not ((_ is ElementMatch!10561) (regex!5802 (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 (_1!22390 lt!1274714)))))))))))

(assert (=> b!3664303 (= e!2268852 e!2268856)))

(declare-fun b!3664304 () Bool)

(declare-fun res!1487788 () Bool)

(assert (=> b!3664304 (=> (not res!1487788) (not e!2268855))))

(assert (=> b!3664304 (= res!1487788 (isEmpty!22924 (tail!5673 (list!14340 (charsOf!3816 (_1!22390 lt!1274714))))))))

(declare-fun b!3664305 () Bool)

(assert (=> b!3664305 (= e!2268851 (= lt!1275254 call!265107))))

(declare-fun b!3664306 () Bool)

(assert (=> b!3664306 (= e!2268853 (nullable!3675 (regex!5802 (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 (_1!22390 lt!1274714))))))))))

(declare-fun b!3664307 () Bool)

(declare-fun res!1487786 () Bool)

(assert (=> b!3664307 (=> res!1487786 e!2268856)))

(assert (=> b!3664307 (= res!1487786 e!2268855)))

(declare-fun res!1487785 () Bool)

(assert (=> b!3664307 (=> (not res!1487785) (not e!2268855))))

(assert (=> b!3664307 (= res!1487785 lt!1275254)))

(assert (= (and d!1076230 c!633438) b!3664306))

(assert (= (and d!1076230 (not c!633438)) b!3664294))

(assert (= (and d!1076230 c!633436) b!3664305))

(assert (= (and d!1076230 (not c!633436)) b!3664301))

(assert (= (and b!3664301 c!633437) b!3664300))

(assert (= (and b!3664301 (not c!633437)) b!3664303))

(assert (= (and b!3664303 (not res!1487791)) b!3664307))

(assert (= (and b!3664307 res!1487785) b!3664298))

(assert (= (and b!3664298 res!1487787) b!3664304))

(assert (= (and b!3664304 res!1487788) b!3664297))

(assert (= (and b!3664307 (not res!1487786)) b!3664299))

(assert (= (and b!3664299 res!1487789) b!3664296))

(assert (= (and b!3664296 (not res!1487792)) b!3664302))

(assert (= (and b!3664302 (not res!1487790)) b!3664295))

(assert (= (or b!3664305 b!3664296 b!3664298) bm!265102))

(assert (=> b!3664302 m!4169805))

(assert (=> b!3664302 m!4170903))

(assert (=> b!3664302 m!4170903))

(assert (=> b!3664302 m!4170905))

(assert (=> b!3664304 m!4169805))

(assert (=> b!3664304 m!4170903))

(assert (=> b!3664304 m!4170903))

(assert (=> b!3664304 m!4170905))

(assert (=> b!3664297 m!4169805))

(assert (=> b!3664297 m!4170909))

(assert (=> b!3664294 m!4169805))

(assert (=> b!3664294 m!4170909))

(assert (=> b!3664294 m!4170909))

(declare-fun m!4171631 () Bool)

(assert (=> b!3664294 m!4171631))

(assert (=> b!3664294 m!4169805))

(assert (=> b!3664294 m!4170903))

(assert (=> b!3664294 m!4171631))

(assert (=> b!3664294 m!4170903))

(declare-fun m!4171633 () Bool)

(assert (=> b!3664294 m!4171633))

(declare-fun m!4171639 () Bool)

(assert (=> b!3664306 m!4171639))

(assert (=> b!3664295 m!4169805))

(assert (=> b!3664295 m!4170909))

(assert (=> d!1076230 m!4169805))

(assert (=> d!1076230 m!4170927))

(declare-fun m!4171641 () Bool)

(assert (=> d!1076230 m!4171641))

(assert (=> bm!265102 m!4169805))

(assert (=> bm!265102 m!4170927))

(assert (=> b!3663413 d!1076230))

(assert (=> b!3663734 d!1076196))

(assert (=> b!3663666 d!1075948))

(assert (=> b!3663666 d!1075950))

(assert (=> b!3663666 d!1075946))

(declare-fun bs!572819 () Bool)

(declare-fun d!1076238 () Bool)

(assert (= bs!572819 (and d!1076238 d!1075798)))

(declare-fun lambda!124614 () Int)

(assert (=> bs!572819 (= (= (toValue!8094 (transformation!5802 (rule!8618 token!511))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) (= lambda!124614 lambda!124601))))

(declare-fun bs!572820 () Bool)

(assert (= bs!572820 (and d!1076238 d!1076142)))

(assert (=> bs!572820 (= (= (toValue!8094 (transformation!5802 (rule!8618 token!511))) (toValue!8094 (transformation!5802 rule!403))) (= lambda!124614 lambda!124613))))

(assert (=> d!1076238 true))

(assert (=> d!1076238 (< (dynLambda!16898 order!21355 (toValue!8094 (transformation!5802 (rule!8618 token!511)))) (dynLambda!16901 order!21361 lambda!124614))))

(assert (=> d!1076238 (= (equivClasses!2374 (toChars!7953 (transformation!5802 (rule!8618 token!511))) (toValue!8094 (transformation!5802 (rule!8618 token!511)))) (Forall2!968 lambda!124614))))

(declare-fun bs!572821 () Bool)

(assert (= bs!572821 d!1076238))

(declare-fun m!4171643 () Bool)

(assert (=> bs!572821 m!4171643))

(assert (=> b!3663720 d!1076238))

(declare-fun d!1076240 () Bool)

(assert (=> d!1076240 (= (isEmpty!22924 (tail!5673 (list!14340 (charsOf!3816 (_1!22390 lt!1274714))))) ((_ is Nil!38646) (tail!5673 (list!14340 (charsOf!3816 (_1!22390 lt!1274714))))))))

(assert (=> b!3663708 d!1076240))

(assert (=> b!3663708 d!1076046))

(assert (=> d!1075678 d!1075644))

(declare-fun d!1076242 () Bool)

(declare-fun lt!1275255 () BalanceConc!23252)

(assert (=> d!1076242 (= (list!14340 lt!1275255) (originalCharacters!6516 lt!1274941))))

(assert (=> d!1076242 (= lt!1275255 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 lt!1274941))) (value!185817 lt!1274941)))))

(assert (=> d!1076242 (= (charsOf!3816 lt!1274941) lt!1275255)))

(declare-fun b_lambda!108751 () Bool)

(assert (=> (not b_lambda!108751) (not d!1076242)))

(declare-fun tb!211971 () Bool)

(declare-fun t!298992 () Bool)

(assert (=> (and b!3663858 (= (toChars!7953 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toChars!7953 (transformation!5802 (rule!8618 lt!1274941)))) t!298992) tb!211971))

(declare-fun b!3664316 () Bool)

(declare-fun e!2268863 () Bool)

(declare-fun tp!1115652 () Bool)

(assert (=> b!3664316 (= e!2268863 (and (inv!52119 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 lt!1274941))) (value!185817 lt!1274941)))) tp!1115652))))

(declare-fun result!258032 () Bool)

(assert (=> tb!211971 (= result!258032 (and (inv!52120 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 lt!1274941))) (value!185817 lt!1274941))) e!2268863))))

(assert (= tb!211971 b!3664316))

(declare-fun m!4171645 () Bool)

(assert (=> b!3664316 m!4171645))

(declare-fun m!4171647 () Bool)

(assert (=> tb!211971 m!4171647))

(assert (=> d!1076242 t!298992))

(declare-fun b_and!272313 () Bool)

(assert (= b_and!272307 (and (=> t!298992 result!258032) b_and!272313)))

(declare-fun t!298994 () Bool)

(declare-fun tb!211973 () Bool)

(assert (=> (and b!3662992 (= (toChars!7953 (transformation!5802 (rule!8618 token!511))) (toChars!7953 (transformation!5802 (rule!8618 lt!1274941)))) t!298994) tb!211973))

(declare-fun result!258034 () Bool)

(assert (= result!258034 result!258032))

(assert (=> d!1076242 t!298994))

(declare-fun b_and!272315 () Bool)

(assert (= b_and!272305 (and (=> t!298994 result!258034) b_and!272315)))

(declare-fun t!298996 () Bool)

(declare-fun tb!211975 () Bool)

(assert (=> (and b!3663012 (= (toChars!7953 (transformation!5802 anOtherTypeRule!33)) (toChars!7953 (transformation!5802 (rule!8618 lt!1274941)))) t!298996) tb!211975))

(declare-fun result!258036 () Bool)

(assert (= result!258036 result!258032))

(assert (=> d!1076242 t!298996))

(declare-fun b_and!272317 () Bool)

(assert (= b_and!272303 (and (=> t!298996 result!258036) b_and!272317)))

(declare-fun tb!211977 () Bool)

(declare-fun t!298998 () Bool)

(assert (=> (and b!3663022 (= (toChars!7953 (transformation!5802 rule!403)) (toChars!7953 (transformation!5802 (rule!8618 lt!1274941)))) t!298998) tb!211977))

(declare-fun result!258038 () Bool)

(assert (= result!258038 result!258032))

(assert (=> d!1076242 t!298998))

(declare-fun b_and!272319 () Bool)

(assert (= b_and!272309 (and (=> t!298998 result!258038) b_and!272319)))

(declare-fun t!299000 () Bool)

(declare-fun tb!211979 () Bool)

(assert (=> (and b!3662995 (= (toChars!7953 (transformation!5802 (h!44067 rules!3307))) (toChars!7953 (transformation!5802 (rule!8618 lt!1274941)))) t!299000) tb!211979))

(declare-fun result!258040 () Bool)

(assert (= result!258040 result!258032))

(assert (=> d!1076242 t!299000))

(declare-fun b_and!272321 () Bool)

(assert (= b_and!272311 (and (=> t!299000 result!258040) b_and!272321)))

(declare-fun m!4171649 () Bool)

(assert (=> d!1076242 m!4171649))

(declare-fun m!4171651 () Bool)

(assert (=> d!1076242 m!4171651))

(assert (=> d!1075678 d!1076242))

(declare-fun d!1076244 () Bool)

(declare-fun list!14347 (Conc!11820) List!38772)

(assert (=> d!1076244 (= (list!14341 (_1!22391 (lex!2557 thiss!23823 rules!3307 (seqFromList!4351 lt!1274731)))) (list!14347 (c!633298 (_1!22391 (lex!2557 thiss!23823 rules!3307 (seqFromList!4351 lt!1274731))))))))

(declare-fun bs!572822 () Bool)

(assert (= bs!572822 d!1076244))

(declare-fun m!4171653 () Bool)

(assert (=> bs!572822 m!4171653))

(assert (=> d!1075678 d!1076244))

(declare-fun b!3664320 () Bool)

(declare-fun e!2268864 () Bool)

(assert (=> b!3664320 (= e!2268864 (>= (size!29528 (++!9618 lt!1274928 lt!1274939)) (size!29528 lt!1274928)))))

(declare-fun b!3664319 () Bool)

(declare-fun e!2268866 () Bool)

(assert (=> b!3664319 (= e!2268866 (isPrefix!3165 (tail!5673 lt!1274928) (tail!5673 (++!9618 lt!1274928 lt!1274939))))))

(declare-fun b!3664318 () Bool)

(declare-fun res!1487800 () Bool)

(assert (=> b!3664318 (=> (not res!1487800) (not e!2268866))))

(assert (=> b!3664318 (= res!1487800 (= (head!7834 lt!1274928) (head!7834 (++!9618 lt!1274928 lt!1274939))))))

(declare-fun d!1076246 () Bool)

(assert (=> d!1076246 e!2268864))

(declare-fun res!1487798 () Bool)

(assert (=> d!1076246 (=> res!1487798 e!2268864)))

(declare-fun lt!1275256 () Bool)

(assert (=> d!1076246 (= res!1487798 (not lt!1275256))))

(declare-fun e!2268865 () Bool)

(assert (=> d!1076246 (= lt!1275256 e!2268865)))

(declare-fun res!1487799 () Bool)

(assert (=> d!1076246 (=> res!1487799 e!2268865)))

(assert (=> d!1076246 (= res!1487799 ((_ is Nil!38646) lt!1274928))))

(assert (=> d!1076246 (= (isPrefix!3165 lt!1274928 (++!9618 lt!1274928 lt!1274939)) lt!1275256)))

(declare-fun b!3664317 () Bool)

(assert (=> b!3664317 (= e!2268865 e!2268866)))

(declare-fun res!1487797 () Bool)

(assert (=> b!3664317 (=> (not res!1487797) (not e!2268866))))

(assert (=> b!3664317 (= res!1487797 (not ((_ is Nil!38646) (++!9618 lt!1274928 lt!1274939))))))

(assert (= (and d!1076246 (not res!1487799)) b!3664317))

(assert (= (and b!3664317 res!1487797) b!3664318))

(assert (= (and b!3664318 res!1487800) b!3664319))

(assert (= (and d!1076246 (not res!1487798)) b!3664320))

(assert (=> b!3664320 m!4170391))

(declare-fun m!4171655 () Bool)

(assert (=> b!3664320 m!4171655))

(declare-fun m!4171657 () Bool)

(assert (=> b!3664320 m!4171657))

(declare-fun m!4171659 () Bool)

(assert (=> b!3664319 m!4171659))

(assert (=> b!3664319 m!4170391))

(declare-fun m!4171661 () Bool)

(assert (=> b!3664319 m!4171661))

(assert (=> b!3664319 m!4171659))

(assert (=> b!3664319 m!4171661))

(declare-fun m!4171663 () Bool)

(assert (=> b!3664319 m!4171663))

(declare-fun m!4171665 () Bool)

(assert (=> b!3664318 m!4171665))

(assert (=> b!3664318 m!4170391))

(declare-fun m!4171667 () Bool)

(assert (=> b!3664318 m!4171667))

(assert (=> d!1075678 d!1076246))

(declare-fun b!3664321 () Bool)

(declare-fun e!2268869 () Option!8232)

(declare-fun lt!1275257 () Option!8232)

(declare-fun lt!1275258 () Option!8232)

(assert (=> b!3664321 (= e!2268869 (ite (and ((_ is None!8231) lt!1275257) ((_ is None!8231) lt!1275258)) None!8231 (ite ((_ is None!8231) lt!1275258) lt!1275257 (ite ((_ is None!8231) lt!1275257) lt!1275258 (ite (>= (size!29527 (_1!22390 (v!38127 lt!1275257))) (size!29527 (_1!22390 (v!38127 lt!1275258)))) lt!1275257 lt!1275258)))))))

(declare-fun call!265108 () Option!8232)

(assert (=> b!3664321 (= lt!1275257 call!265108)))

(assert (=> b!3664321 (= lt!1275258 (maxPrefix!2925 thiss!23823 (t!298754 rules!3307) (++!9618 lt!1274731 suffix!1395)))))

(declare-fun b!3664322 () Bool)

(declare-fun e!2268868 () Bool)

(declare-fun lt!1275260 () Option!8232)

(assert (=> b!3664322 (= e!2268868 (contains!7670 rules!3307 (rule!8618 (_1!22390 (get!12743 lt!1275260)))))))

(declare-fun bm!265103 () Bool)

(assert (=> bm!265103 (= call!265108 (maxPrefixOneRule!2063 thiss!23823 (h!44067 rules!3307) (++!9618 lt!1274731 suffix!1395)))))

(declare-fun b!3664323 () Bool)

(declare-fun res!1487806 () Bool)

(assert (=> b!3664323 (=> (not res!1487806) (not e!2268868))))

(assert (=> b!3664323 (= res!1487806 (= (++!9618 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275260)))) (_2!22390 (get!12743 lt!1275260))) (++!9618 lt!1274731 suffix!1395)))))

(declare-fun b!3664324 () Bool)

(declare-fun res!1487804 () Bool)

(assert (=> b!3664324 (=> (not res!1487804) (not e!2268868))))

(assert (=> b!3664324 (= res!1487804 (= (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275260)))) (originalCharacters!6516 (_1!22390 (get!12743 lt!1275260)))))))

(declare-fun d!1076248 () Bool)

(declare-fun e!2268867 () Bool)

(assert (=> d!1076248 e!2268867))

(declare-fun res!1487805 () Bool)

(assert (=> d!1076248 (=> res!1487805 e!2268867)))

(assert (=> d!1076248 (= res!1487805 (isEmpty!22928 lt!1275260))))

(assert (=> d!1076248 (= lt!1275260 e!2268869)))

(declare-fun c!633441 () Bool)

(assert (=> d!1076248 (= c!633441 (and ((_ is Cons!38647) rules!3307) ((_ is Nil!38647) (t!298754 rules!3307))))))

(declare-fun lt!1275261 () Unit!55997)

(declare-fun lt!1275259 () Unit!55997)

(assert (=> d!1076248 (= lt!1275261 lt!1275259)))

(assert (=> d!1076248 (isPrefix!3165 (++!9618 lt!1274731 suffix!1395) (++!9618 lt!1274731 suffix!1395))))

(assert (=> d!1076248 (= lt!1275259 (lemmaIsPrefixRefl!1998 (++!9618 lt!1274731 suffix!1395) (++!9618 lt!1274731 suffix!1395)))))

(assert (=> d!1076248 (rulesValidInductive!2061 thiss!23823 rules!3307)))

(assert (=> d!1076248 (= (maxPrefix!2925 thiss!23823 rules!3307 (++!9618 lt!1274731 suffix!1395)) lt!1275260)))

(declare-fun b!3664325 () Bool)

(assert (=> b!3664325 (= e!2268867 e!2268868)))

(declare-fun res!1487802 () Bool)

(assert (=> b!3664325 (=> (not res!1487802) (not e!2268868))))

(assert (=> b!3664325 (= res!1487802 (isDefined!6464 lt!1275260))))

(declare-fun b!3664326 () Bool)

(assert (=> b!3664326 (= e!2268869 call!265108)))

(declare-fun b!3664327 () Bool)

(declare-fun res!1487807 () Bool)

(assert (=> b!3664327 (=> (not res!1487807) (not e!2268868))))

(assert (=> b!3664327 (= res!1487807 (< (size!29528 (_2!22390 (get!12743 lt!1275260))) (size!29528 (++!9618 lt!1274731 suffix!1395))))))

(declare-fun b!3664328 () Bool)

(declare-fun res!1487803 () Bool)

(assert (=> b!3664328 (=> (not res!1487803) (not e!2268868))))

(assert (=> b!3664328 (= res!1487803 (= (value!185817 (_1!22390 (get!12743 lt!1275260))) (apply!9304 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275260)))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 (get!12743 lt!1275260)))))))))

(declare-fun b!3664329 () Bool)

(declare-fun res!1487801 () Bool)

(assert (=> b!3664329 (=> (not res!1487801) (not e!2268868))))

(assert (=> b!3664329 (= res!1487801 (matchR!5130 (regex!5802 (rule!8618 (_1!22390 (get!12743 lt!1275260)))) (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275260))))))))

(assert (= (and d!1076248 c!633441) b!3664326))

(assert (= (and d!1076248 (not c!633441)) b!3664321))

(assert (= (or b!3664326 b!3664321) bm!265103))

(assert (= (and d!1076248 (not res!1487805)) b!3664325))

(assert (= (and b!3664325 res!1487802) b!3664324))

(assert (= (and b!3664324 res!1487804) b!3664327))

(assert (= (and b!3664327 res!1487807) b!3664323))

(assert (= (and b!3664323 res!1487806) b!3664328))

(assert (= (and b!3664328 res!1487803) b!3664329))

(assert (= (and b!3664329 res!1487801) b!3664322))

(declare-fun m!4171669 () Bool)

(assert (=> b!3664322 m!4171669))

(declare-fun m!4171671 () Bool)

(assert (=> b!3664322 m!4171671))

(assert (=> b!3664324 m!4171669))

(declare-fun m!4171673 () Bool)

(assert (=> b!3664324 m!4171673))

(assert (=> b!3664324 m!4171673))

(declare-fun m!4171675 () Bool)

(assert (=> b!3664324 m!4171675))

(assert (=> b!3664328 m!4171669))

(declare-fun m!4171677 () Bool)

(assert (=> b!3664328 m!4171677))

(assert (=> b!3664328 m!4171677))

(declare-fun m!4171679 () Bool)

(assert (=> b!3664328 m!4171679))

(assert (=> b!3664323 m!4171669))

(assert (=> b!3664323 m!4171673))

(assert (=> b!3664323 m!4171673))

(assert (=> b!3664323 m!4171675))

(assert (=> b!3664323 m!4171675))

(declare-fun m!4171681 () Bool)

(assert (=> b!3664323 m!4171681))

(assert (=> b!3664329 m!4171669))

(assert (=> b!3664329 m!4171673))

(assert (=> b!3664329 m!4171673))

(assert (=> b!3664329 m!4171675))

(assert (=> b!3664329 m!4171675))

(declare-fun m!4171683 () Bool)

(assert (=> b!3664329 m!4171683))

(assert (=> b!3664327 m!4171669))

(declare-fun m!4171685 () Bool)

(assert (=> b!3664327 m!4171685))

(assert (=> b!3664327 m!4169937))

(declare-fun m!4171687 () Bool)

(assert (=> b!3664327 m!4171687))

(declare-fun m!4171689 () Bool)

(assert (=> d!1076248 m!4171689))

(assert (=> d!1076248 m!4169937))

(assert (=> d!1076248 m!4169937))

(declare-fun m!4171691 () Bool)

(assert (=> d!1076248 m!4171691))

(assert (=> d!1076248 m!4169937))

(assert (=> d!1076248 m!4169937))

(declare-fun m!4171693 () Bool)

(assert (=> d!1076248 m!4171693))

(assert (=> d!1076248 m!4170555))

(assert (=> bm!265103 m!4169937))

(declare-fun m!4171695 () Bool)

(assert (=> bm!265103 m!4171695))

(assert (=> b!3664321 m!4169937))

(declare-fun m!4171697 () Bool)

(assert (=> b!3664321 m!4171697))

(declare-fun m!4171699 () Bool)

(assert (=> b!3664325 m!4171699))

(assert (=> d!1075678 d!1076248))

(declare-fun d!1076250 () Bool)

(assert (=> d!1076250 (= (get!12743 (maxPrefix!2925 thiss!23823 rules!3307 lt!1274731)) (v!38127 (maxPrefix!2925 thiss!23823 rules!3307 lt!1274731)))))

(assert (=> d!1075678 d!1076250))

(declare-fun d!1076252 () Bool)

(assert (=> d!1076252 (= (list!14340 (charsOf!3816 lt!1274941)) (list!14343 (c!633135 (charsOf!3816 lt!1274941))))))

(declare-fun bs!572823 () Bool)

(assert (= bs!572823 d!1076252))

(declare-fun m!4171701 () Bool)

(assert (=> bs!572823 m!4171701))

(assert (=> d!1075678 d!1076252))

(declare-fun d!1076254 () Bool)

(assert (=> d!1076254 (= (head!7835 (list!14341 (_1!22391 (lex!2557 thiss!23823 rules!3307 (seqFromList!4351 lt!1274731))))) (h!44068 (list!14341 (_1!22391 (lex!2557 thiss!23823 rules!3307 (seqFromList!4351 lt!1274731))))))))

(assert (=> d!1075678 d!1076254))

(assert (=> d!1075678 d!1075630))

(assert (=> d!1075678 d!1075818))

(assert (=> d!1075678 d!1075884))

(declare-fun d!1076256 () Bool)

(assert (=> d!1076256 (= (isDefined!6465 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 lt!1274941)))) (not (isEmpty!22926 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 lt!1274941))))))))

(declare-fun bs!572824 () Bool)

(assert (= bs!572824 d!1076256))

(assert (=> bs!572824 m!4170381))

(declare-fun m!4171703 () Bool)

(assert (=> bs!572824 m!4171703))

(assert (=> d!1075678 d!1076256))

(declare-fun b!3664330 () Bool)

(declare-fun lt!1275264 () Unit!55997)

(declare-fun lt!1275263 () Unit!55997)

(assert (=> b!3664330 (= lt!1275264 lt!1275263)))

(assert (=> b!3664330 (rulesInvariant!4788 thiss!23823 (t!298754 rules!3307))))

(assert (=> b!3664330 (= lt!1275263 (lemmaInvariantOnRulesThenOnTail!604 thiss!23823 (h!44067 rules!3307) (t!298754 rules!3307)))))

(declare-fun e!2268870 () Option!8233)

(assert (=> b!3664330 (= e!2268870 (getRuleFromTag!1406 thiss!23823 (t!298754 rules!3307) (tag!6584 (rule!8618 lt!1274941))))))

(declare-fun b!3664331 () Bool)

(declare-fun e!2268872 () Bool)

(declare-fun e!2268871 () Bool)

(assert (=> b!3664331 (= e!2268872 e!2268871)))

(declare-fun res!1487808 () Bool)

(assert (=> b!3664331 (=> (not res!1487808) (not e!2268871))))

(declare-fun lt!1275262 () Option!8233)

(assert (=> b!3664331 (= res!1487808 (contains!7670 rules!3307 (get!12744 lt!1275262)))))

(declare-fun b!3664332 () Bool)

(assert (=> b!3664332 (= e!2268870 None!8232)))

(declare-fun b!3664333 () Bool)

(declare-fun e!2268873 () Option!8233)

(assert (=> b!3664333 (= e!2268873 e!2268870)))

(declare-fun c!633442 () Bool)

(assert (=> b!3664333 (= c!633442 (and ((_ is Cons!38647) rules!3307) (not (= (tag!6584 (h!44067 rules!3307)) (tag!6584 (rule!8618 lt!1274941))))))))

(declare-fun d!1076258 () Bool)

(assert (=> d!1076258 e!2268872))

(declare-fun res!1487809 () Bool)

(assert (=> d!1076258 (=> res!1487809 e!2268872)))

(assert (=> d!1076258 (= res!1487809 (isEmpty!22926 lt!1275262))))

(assert (=> d!1076258 (= lt!1275262 e!2268873)))

(declare-fun c!633443 () Bool)

(assert (=> d!1076258 (= c!633443 (and ((_ is Cons!38647) rules!3307) (= (tag!6584 (h!44067 rules!3307)) (tag!6584 (rule!8618 lt!1274941)))))))

(assert (=> d!1076258 (rulesInvariant!4788 thiss!23823 rules!3307)))

(assert (=> d!1076258 (= (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 lt!1274941))) lt!1275262)))

(declare-fun b!3664334 () Bool)

(assert (=> b!3664334 (= e!2268871 (= (tag!6584 (get!12744 lt!1275262)) (tag!6584 (rule!8618 lt!1274941))))))

(declare-fun b!3664335 () Bool)

(assert (=> b!3664335 (= e!2268873 (Some!8232 (h!44067 rules!3307)))))

(assert (= (and d!1076258 c!633443) b!3664335))

(assert (= (and d!1076258 (not c!633443)) b!3664333))

(assert (= (and b!3664333 c!633442) b!3664330))

(assert (= (and b!3664333 (not c!633442)) b!3664332))

(assert (= (and d!1076258 (not res!1487809)) b!3664331))

(assert (= (and b!3664331 res!1487808) b!3664334))

(assert (=> b!3664330 m!4170185))

(assert (=> b!3664330 m!4170187))

(declare-fun m!4171705 () Bool)

(assert (=> b!3664330 m!4171705))

(declare-fun m!4171707 () Bool)

(assert (=> b!3664331 m!4171707))

(assert (=> b!3664331 m!4171707))

(declare-fun m!4171709 () Bool)

(assert (=> b!3664331 m!4171709))

(declare-fun m!4171711 () Bool)

(assert (=> d!1076258 m!4171711))

(assert (=> d!1076258 m!4169877))

(assert (=> b!3664334 m!4171707))

(assert (=> d!1075678 d!1076258))

(declare-fun d!1076260 () Bool)

(assert (=> d!1076260 (= (isEmpty!22928 (maxPrefix!2925 thiss!23823 rules!3307 (++!9618 lt!1274731 suffix!1395))) (not ((_ is Some!8231) (maxPrefix!2925 thiss!23823 rules!3307 (++!9618 lt!1274731 suffix!1395)))))))

(assert (=> d!1075678 d!1076260))

(declare-fun d!1076262 () Bool)

(assert (=> d!1076262 (= (isDefined!6464 (maxPrefix!2925 thiss!23823 rules!3307 (++!9618 lt!1274731 suffix!1395))) (not (isEmpty!22928 (maxPrefix!2925 thiss!23823 rules!3307 (++!9618 lt!1274731 suffix!1395)))))))

(declare-fun bs!572825 () Bool)

(assert (= bs!572825 d!1076262))

(assert (=> bs!572825 m!4170373))

(assert (=> bs!572825 m!4170375))

(assert (=> d!1075678 d!1076262))

(declare-fun d!1076264 () Bool)

(assert (=> d!1076264 (isPrefix!3165 lt!1274934 (++!9618 lt!1274731 suffix!1395))))

(declare-fun lt!1275267 () Unit!55997)

(declare-fun choose!21736 (List!38770 List!38770 List!38770) Unit!55997)

(assert (=> d!1076264 (= lt!1275267 (choose!21736 lt!1274934 lt!1274731 suffix!1395))))

(assert (=> d!1076264 (isPrefix!3165 lt!1274934 lt!1274731)))

(assert (=> d!1076264 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!525 lt!1274934 lt!1274731 suffix!1395) lt!1275267)))

(declare-fun bs!572826 () Bool)

(assert (= bs!572826 d!1076264))

(assert (=> bs!572826 m!4169937))

(assert (=> bs!572826 m!4169937))

(assert (=> bs!572826 m!4170389))

(declare-fun m!4171713 () Bool)

(assert (=> bs!572826 m!4171713))

(declare-fun m!4171715 () Bool)

(assert (=> bs!572826 m!4171715))

(assert (=> d!1075678 d!1076264))

(declare-fun b!3664337 () Bool)

(declare-fun e!2268874 () List!38770)

(assert (=> b!3664337 (= e!2268874 (Cons!38646 (h!44066 lt!1274928) (++!9618 (t!298753 lt!1274928) lt!1274939)))))

(declare-fun d!1076266 () Bool)

(declare-fun e!2268875 () Bool)

(assert (=> d!1076266 e!2268875))

(declare-fun res!1487810 () Bool)

(assert (=> d!1076266 (=> (not res!1487810) (not e!2268875))))

(declare-fun lt!1275268 () List!38770)

(assert (=> d!1076266 (= res!1487810 (= (content!5589 lt!1275268) ((_ map or) (content!5589 lt!1274928) (content!5589 lt!1274939))))))

(assert (=> d!1076266 (= lt!1275268 e!2268874)))

(declare-fun c!633444 () Bool)

(assert (=> d!1076266 (= c!633444 ((_ is Nil!38646) lt!1274928))))

(assert (=> d!1076266 (= (++!9618 lt!1274928 lt!1274939) lt!1275268)))

(declare-fun b!3664339 () Bool)

(assert (=> b!3664339 (= e!2268875 (or (not (= lt!1274939 Nil!38646)) (= lt!1275268 lt!1274928)))))

(declare-fun b!3664338 () Bool)

(declare-fun res!1487811 () Bool)

(assert (=> b!3664338 (=> (not res!1487811) (not e!2268875))))

(assert (=> b!3664338 (= res!1487811 (= (size!29528 lt!1275268) (+ (size!29528 lt!1274928) (size!29528 lt!1274939))))))

(declare-fun b!3664336 () Bool)

(assert (=> b!3664336 (= e!2268874 lt!1274939)))

(assert (= (and d!1076266 c!633444) b!3664336))

(assert (= (and d!1076266 (not c!633444)) b!3664337))

(assert (= (and d!1076266 res!1487810) b!3664338))

(assert (= (and b!3664338 res!1487811) b!3664339))

(declare-fun m!4171717 () Bool)

(assert (=> b!3664337 m!4171717))

(declare-fun m!4171719 () Bool)

(assert (=> d!1076266 m!4171719))

(declare-fun m!4171721 () Bool)

(assert (=> d!1076266 m!4171721))

(declare-fun m!4171723 () Bool)

(assert (=> d!1076266 m!4171723))

(declare-fun m!4171725 () Bool)

(assert (=> b!3664338 m!4171725))

(assert (=> b!3664338 m!4171657))

(declare-fun m!4171727 () Bool)

(assert (=> b!3664338 m!4171727))

(assert (=> d!1075678 d!1076266))

(declare-fun b!3664343 () Bool)

(declare-fun e!2268876 () Bool)

(assert (=> b!3664343 (= e!2268876 (>= (size!29528 (++!9618 lt!1274731 suffix!1395)) (size!29528 lt!1274934)))))

(declare-fun b!3664342 () Bool)

(declare-fun e!2268878 () Bool)

(assert (=> b!3664342 (= e!2268878 (isPrefix!3165 (tail!5673 lt!1274934) (tail!5673 (++!9618 lt!1274731 suffix!1395))))))

(declare-fun b!3664341 () Bool)

(declare-fun res!1487815 () Bool)

(assert (=> b!3664341 (=> (not res!1487815) (not e!2268878))))

(assert (=> b!3664341 (= res!1487815 (= (head!7834 lt!1274934) (head!7834 (++!9618 lt!1274731 suffix!1395))))))

(declare-fun d!1076268 () Bool)

(assert (=> d!1076268 e!2268876))

(declare-fun res!1487813 () Bool)

(assert (=> d!1076268 (=> res!1487813 e!2268876)))

(declare-fun lt!1275269 () Bool)

(assert (=> d!1076268 (= res!1487813 (not lt!1275269))))

(declare-fun e!2268877 () Bool)

(assert (=> d!1076268 (= lt!1275269 e!2268877)))

(declare-fun res!1487814 () Bool)

(assert (=> d!1076268 (=> res!1487814 e!2268877)))

(assert (=> d!1076268 (= res!1487814 ((_ is Nil!38646) lt!1274934))))

(assert (=> d!1076268 (= (isPrefix!3165 lt!1274934 (++!9618 lt!1274731 suffix!1395)) lt!1275269)))

(declare-fun b!3664340 () Bool)

(assert (=> b!3664340 (= e!2268877 e!2268878)))

(declare-fun res!1487812 () Bool)

(assert (=> b!3664340 (=> (not res!1487812) (not e!2268878))))

(assert (=> b!3664340 (= res!1487812 (not ((_ is Nil!38646) (++!9618 lt!1274731 suffix!1395))))))

(assert (= (and d!1076268 (not res!1487814)) b!3664340))

(assert (= (and b!3664340 res!1487812) b!3664341))

(assert (= (and b!3664341 res!1487815) b!3664342))

(assert (= (and d!1076268 (not res!1487813)) b!3664343))

(assert (=> b!3664343 m!4169937))

(assert (=> b!3664343 m!4171687))

(declare-fun m!4171729 () Bool)

(assert (=> b!3664343 m!4171729))

(declare-fun m!4171731 () Bool)

(assert (=> b!3664342 m!4171731))

(assert (=> b!3664342 m!4169937))

(declare-fun m!4171733 () Bool)

(assert (=> b!3664342 m!4171733))

(assert (=> b!3664342 m!4171731))

(assert (=> b!3664342 m!4171733))

(declare-fun m!4171735 () Bool)

(assert (=> b!3664342 m!4171735))

(declare-fun m!4171737 () Bool)

(assert (=> b!3664341 m!4171737))

(assert (=> b!3664341 m!4169937))

(declare-fun m!4171739 () Bool)

(assert (=> b!3664341 m!4171739))

(assert (=> d!1075678 d!1076268))

(declare-fun d!1076270 () Bool)

(declare-fun e!2268915 () Bool)

(assert (=> d!1076270 e!2268915))

(declare-fun res!1487830 () Bool)

(assert (=> d!1076270 (=> (not res!1487830) (not e!2268915))))

(declare-fun e!2268914 () Bool)

(assert (=> d!1076270 (= res!1487830 e!2268914)))

(declare-fun c!633466 () Bool)

(declare-fun lt!1275359 () tuple2!38514)

(declare-fun size!29532 (BalanceConc!23254) Int)

(assert (=> d!1076270 (= c!633466 (> (size!29532 (_1!22391 lt!1275359)) 0))))

(declare-fun lexTailRecV2!1121 (LexerInterface!5391 List!38771 BalanceConc!23252 BalanceConc!23252 BalanceConc!23252 BalanceConc!23254) tuple2!38514)

(assert (=> d!1076270 (= lt!1275359 (lexTailRecV2!1121 thiss!23823 rules!3307 (seqFromList!4351 lt!1274731) (BalanceConc!23253 Empty!11819) (seqFromList!4351 lt!1274731) (BalanceConc!23255 Empty!11820)))))

(assert (=> d!1076270 (= (lex!2557 thiss!23823 rules!3307 (seqFromList!4351 lt!1274731)) lt!1275359)))

(declare-fun b!3664400 () Bool)

(declare-fun e!2268913 () Bool)

(assert (=> b!3664400 (= e!2268914 e!2268913)))

(declare-fun res!1487829 () Bool)

(assert (=> b!3664400 (= res!1487829 (< (size!29529 (_2!22391 lt!1275359)) (size!29529 (seqFromList!4351 lt!1274731))))))

(assert (=> b!3664400 (=> (not res!1487829) (not e!2268913))))

(declare-fun b!3664401 () Bool)

(assert (=> b!3664401 (= e!2268914 (= (_2!22391 lt!1275359) (seqFromList!4351 lt!1274731)))))

(declare-fun b!3664402 () Bool)

(declare-fun res!1487828 () Bool)

(assert (=> b!3664402 (=> (not res!1487828) (not e!2268915))))

(declare-datatypes ((tuple2!38522 0))(
  ( (tuple2!38523 (_1!22395 List!38772) (_2!22395 List!38770)) )
))
(declare-fun lexList!1515 (LexerInterface!5391 List!38771 List!38770) tuple2!38522)

(assert (=> b!3664402 (= res!1487828 (= (list!14341 (_1!22391 lt!1275359)) (_1!22395 (lexList!1515 thiss!23823 rules!3307 (list!14340 (seqFromList!4351 lt!1274731))))))))

(declare-fun b!3664403 () Bool)

(declare-fun isEmpty!22930 (BalanceConc!23254) Bool)

(assert (=> b!3664403 (= e!2268913 (not (isEmpty!22930 (_1!22391 lt!1275359))))))

(declare-fun b!3664404 () Bool)

(assert (=> b!3664404 (= e!2268915 (= (list!14340 (_2!22391 lt!1275359)) (_2!22395 (lexList!1515 thiss!23823 rules!3307 (list!14340 (seqFromList!4351 lt!1274731))))))))

(assert (= (and d!1076270 c!633466) b!3664400))

(assert (= (and d!1076270 (not c!633466)) b!3664401))

(assert (= (and b!3664400 res!1487829) b!3664403))

(assert (= (and d!1076270 res!1487830) b!3664402))

(assert (= (and b!3664402 res!1487828) b!3664404))

(declare-fun m!4171809 () Bool)

(assert (=> d!1076270 m!4171809))

(assert (=> d!1076270 m!4169899))

(assert (=> d!1076270 m!4169899))

(declare-fun m!4171811 () Bool)

(assert (=> d!1076270 m!4171811))

(declare-fun m!4171813 () Bool)

(assert (=> b!3664403 m!4171813))

(declare-fun m!4171815 () Bool)

(assert (=> b!3664400 m!4171815))

(assert (=> b!3664400 m!4169899))

(declare-fun m!4171817 () Bool)

(assert (=> b!3664400 m!4171817))

(declare-fun m!4171819 () Bool)

(assert (=> b!3664402 m!4171819))

(assert (=> b!3664402 m!4169899))

(declare-fun m!4171821 () Bool)

(assert (=> b!3664402 m!4171821))

(assert (=> b!3664402 m!4171821))

(declare-fun m!4171823 () Bool)

(assert (=> b!3664402 m!4171823))

(declare-fun m!4171825 () Bool)

(assert (=> b!3664404 m!4171825))

(assert (=> b!3664404 m!4169899))

(assert (=> b!3664404 m!4171821))

(assert (=> b!3664404 m!4171821))

(assert (=> b!3664404 m!4171823))

(assert (=> d!1075678 d!1076270))

(declare-fun d!1076286 () Bool)

(assert (=> d!1076286 (isPrefix!3165 lt!1274928 (++!9618 lt!1274928 lt!1274939))))

(declare-fun lt!1275360 () Unit!55997)

(assert (=> d!1076286 (= lt!1275360 (choose!21712 lt!1274928 lt!1274939))))

(assert (=> d!1076286 (= (lemmaConcatTwoListThenFirstIsPrefix!2084 lt!1274928 lt!1274939) lt!1275360)))

(declare-fun bs!572831 () Bool)

(assert (= bs!572831 d!1076286))

(assert (=> bs!572831 m!4170391))

(assert (=> bs!572831 m!4170391))

(assert (=> bs!572831 m!4170393))

(declare-fun m!4171827 () Bool)

(assert (=> bs!572831 m!4171827))

(assert (=> d!1075678 d!1076286))

(declare-fun d!1076288 () Bool)

(declare-fun e!2268916 () Bool)

(assert (=> d!1076288 e!2268916))

(declare-fun res!1487831 () Bool)

(assert (=> d!1076288 (=> (not res!1487831) (not e!2268916))))

(assert (=> d!1076288 (= res!1487831 (isDefined!6465 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 lt!1274941)))))))

(declare-fun lt!1275361 () Unit!55997)

(assert (=> d!1076288 (= lt!1275361 (choose!21716 thiss!23823 rules!3307 lt!1274731 lt!1274941))))

(assert (=> d!1076288 (rulesInvariant!4788 thiss!23823 rules!3307)))

(assert (=> d!1076288 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1406 thiss!23823 rules!3307 lt!1274731 lt!1274941) lt!1275361)))

(declare-fun b!3664405 () Bool)

(declare-fun res!1487832 () Bool)

(assert (=> b!3664405 (=> (not res!1487832) (not e!2268916))))

(assert (=> b!3664405 (= res!1487832 (matchR!5130 (regex!5802 (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 lt!1274941))))) (list!14340 (charsOf!3816 lt!1274941))))))

(declare-fun b!3664406 () Bool)

(assert (=> b!3664406 (= e!2268916 (= (rule!8618 lt!1274941) (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 lt!1274941))))))))

(assert (= (and d!1076288 res!1487831) b!3664405))

(assert (= (and b!3664405 res!1487832) b!3664406))

(assert (=> d!1076288 m!4170381))

(assert (=> d!1076288 m!4170381))

(assert (=> d!1076288 m!4170401))

(declare-fun m!4171829 () Bool)

(assert (=> d!1076288 m!4171829))

(assert (=> d!1076288 m!4169877))

(assert (=> b!3664405 m!4170381))

(assert (=> b!3664405 m!4170405))

(assert (=> b!3664405 m!4170397))

(assert (=> b!3664405 m!4170399))

(assert (=> b!3664405 m!4170381))

(assert (=> b!3664405 m!4170399))

(assert (=> b!3664405 m!4170417))

(assert (=> b!3664405 m!4170397))

(assert (=> b!3664406 m!4170381))

(assert (=> b!3664406 m!4170381))

(assert (=> b!3664406 m!4170405))

(assert (=> d!1075678 d!1076288))

(declare-fun d!1076290 () Bool)

(assert (=> d!1076290 (= (isDefined!6464 lt!1274987) (not (isEmpty!22928 lt!1274987)))))

(declare-fun bs!572832 () Bool)

(assert (= bs!572832 d!1076290))

(assert (=> bs!572832 m!4170549))

(assert (=> b!3663482 d!1076290))

(declare-fun bs!572833 () Bool)

(declare-fun d!1076292 () Bool)

(assert (= bs!572833 (and d!1076292 d!1075798)))

(declare-fun lambda!124616 () Int)

(assert (=> bs!572833 (= (= (toValue!8094 (transformation!5802 (h!44067 rules!3307))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) (= lambda!124616 lambda!124601))))

(declare-fun bs!572834 () Bool)

(assert (= bs!572834 (and d!1076292 d!1076142)))

(assert (=> bs!572834 (= (= (toValue!8094 (transformation!5802 (h!44067 rules!3307))) (toValue!8094 (transformation!5802 rule!403))) (= lambda!124616 lambda!124613))))

(declare-fun bs!572835 () Bool)

(assert (= bs!572835 (and d!1076292 d!1076238)))

(assert (=> bs!572835 (= (= (toValue!8094 (transformation!5802 (h!44067 rules!3307))) (toValue!8094 (transformation!5802 (rule!8618 token!511)))) (= lambda!124616 lambda!124614))))

(assert (=> d!1076292 true))

(assert (=> d!1076292 (< (dynLambda!16898 order!21355 (toValue!8094 (transformation!5802 (h!44067 rules!3307)))) (dynLambda!16901 order!21361 lambda!124616))))

(assert (=> d!1076292 (= (equivClasses!2374 (toChars!7953 (transformation!5802 (h!44067 rules!3307))) (toValue!8094 (transformation!5802 (h!44067 rules!3307)))) (Forall2!968 lambda!124616))))

(declare-fun bs!572836 () Bool)

(assert (= bs!572836 d!1076292))

(declare-fun m!4171831 () Bool)

(assert (=> bs!572836 m!4171831))

(assert (=> b!3663548 d!1076292))

(declare-fun d!1076294 () Bool)

(declare-fun res!1487837 () Bool)

(declare-fun e!2268921 () Bool)

(assert (=> d!1076294 (=> res!1487837 e!2268921)))

(assert (=> d!1076294 (= res!1487837 ((_ is Nil!38647) rules!3307))))

(assert (=> d!1076294 (= (noDuplicateTag!2228 thiss!23823 rules!3307 Nil!38650) e!2268921)))

(declare-fun b!3664411 () Bool)

(declare-fun e!2268922 () Bool)

(assert (=> b!3664411 (= e!2268921 e!2268922)))

(declare-fun res!1487838 () Bool)

(assert (=> b!3664411 (=> (not res!1487838) (not e!2268922))))

(declare-fun contains!7672 (List!38774 String!43494) Bool)

(assert (=> b!3664411 (= res!1487838 (not (contains!7672 Nil!38650 (tag!6584 (h!44067 rules!3307)))))))

(declare-fun b!3664412 () Bool)

(assert (=> b!3664412 (= e!2268922 (noDuplicateTag!2228 thiss!23823 (t!298754 rules!3307) (Cons!38650 (tag!6584 (h!44067 rules!3307)) Nil!38650)))))

(assert (= (and d!1076294 (not res!1487837)) b!3664411))

(assert (= (and b!3664411 res!1487838) b!3664412))

(declare-fun m!4171833 () Bool)

(assert (=> b!3664411 m!4171833))

(declare-fun m!4171835 () Bool)

(assert (=> b!3664412 m!4171835))

(assert (=> b!3663553 d!1076294))

(declare-fun d!1076296 () Bool)

(declare-fun lt!1275362 () Bool)

(assert (=> d!1076296 (= lt!1275362 (select (content!5589 (usedCharacters!1014 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))) lt!1274726))))

(declare-fun e!2268924 () Bool)

(assert (=> d!1076296 (= lt!1275362 e!2268924)))

(declare-fun res!1487839 () Bool)

(assert (=> d!1076296 (=> (not res!1487839) (not e!2268924))))

(assert (=> d!1076296 (= res!1487839 ((_ is Cons!38646) (usedCharacters!1014 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))))

(assert (=> d!1076296 (= (contains!7669 (usedCharacters!1014 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274726) lt!1275362)))

(declare-fun b!3664413 () Bool)

(declare-fun e!2268923 () Bool)

(assert (=> b!3664413 (= e!2268924 e!2268923)))

(declare-fun res!1487840 () Bool)

(assert (=> b!3664413 (=> res!1487840 e!2268923)))

(assert (=> b!3664413 (= res!1487840 (= (h!44066 (usedCharacters!1014 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))) lt!1274726))))

(declare-fun b!3664414 () Bool)

(assert (=> b!3664414 (= e!2268923 (contains!7669 (t!298753 (usedCharacters!1014 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))) lt!1274726))))

(assert (= (and d!1076296 res!1487839) b!3664413))

(assert (= (and b!3664413 (not res!1487840)) b!3664414))

(assert (=> d!1076296 m!4169821))

(assert (=> d!1076296 m!4171035))

(declare-fun m!4171837 () Bool)

(assert (=> d!1076296 m!4171837))

(declare-fun m!4171839 () Bool)

(assert (=> b!3664414 m!4171839))

(assert (=> d!1075838 d!1076296))

(assert (=> d!1075838 d!1075594))

(declare-fun d!1076298 () Bool)

(assert (=> d!1076298 (not (contains!7669 (usedCharacters!1014 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274726))))

(assert (=> d!1076298 true))

(declare-fun _$73!326 () Unit!55997)

(assert (=> d!1076298 (= (choose!21710 thiss!23823 rules!3307 rules!3307 (rule!8618 (_1!22390 lt!1274714)) anOtherTypeRule!33 lt!1274726) _$73!326)))

(declare-fun bs!572837 () Bool)

(assert (= bs!572837 d!1076298))

(assert (=> bs!572837 m!4169821))

(assert (=> bs!572837 m!4169821))

(assert (=> bs!572837 m!4170705))

(assert (=> d!1075838 d!1076298))

(assert (=> d!1075838 d!1075840))

(declare-fun d!1076300 () Bool)

(declare-fun charsToBigInt!1 (List!38769) Int)

(assert (=> d!1076300 (= (inv!17 (value!185817 token!511)) (= (charsToBigInt!1 (text!42672 (value!185817 token!511))) (value!185809 (value!185817 token!511))))))

(declare-fun bs!572838 () Bool)

(assert (= bs!572838 d!1076300))

(declare-fun m!4171841 () Bool)

(assert (=> bs!572838 m!4171841))

(assert (=> b!3663077 d!1076300))

(assert (=> d!1075588 d!1075918))

(declare-fun d!1076302 () Bool)

(assert (=> d!1076302 (not (matchR!5130 (regex!5802 rule!403) lt!1274731))))

(assert (=> d!1076302 true))

(declare-fun _$127!435 () Unit!55997)

(assert (=> d!1076302 (= (choose!21705 (regex!5802 rule!403) lt!1274731 lt!1274732) _$127!435)))

(declare-fun bs!572839 () Bool)

(assert (= bs!572839 d!1076302))

(assert (=> bs!572839 m!4169865))

(assert (=> d!1075588 d!1076302))

(assert (=> d!1075588 d!1076224))

(declare-fun d!1076304 () Bool)

(declare-fun lt!1275366 () Int)

(assert (=> d!1076304 (>= lt!1275366 0)))

(declare-fun e!2268928 () Int)

(assert (=> d!1076304 (= lt!1275366 e!2268928)))

(declare-fun c!633467 () Bool)

(assert (=> d!1076304 (= c!633467 ((_ is Nil!38646) Nil!38646))))

(assert (=> d!1076304 (= (size!29528 Nil!38646) lt!1275366)))

(declare-fun b!3664418 () Bool)

(assert (=> b!3664418 (= e!2268928 0)))

(declare-fun b!3664419 () Bool)

(assert (=> b!3664419 (= e!2268928 (+ 1 (size!29528 (t!298753 Nil!38646))))))

(assert (= (and d!1076304 c!633467) b!3664418))

(assert (= (and d!1076304 (not c!633467)) b!3664419))

(declare-fun m!4171843 () Bool)

(assert (=> b!3664419 m!4171843))

(assert (=> b!3663588 d!1076304))

(declare-fun d!1076306 () Bool)

(declare-fun e!2268939 () Bool)

(assert (=> d!1076306 e!2268939))

(declare-fun res!1487857 () Bool)

(assert (=> d!1076306 (=> res!1487857 e!2268939)))

(assert (=> d!1076306 (= res!1487857 (isEmpty!22924 (_1!22393 (findLongestMatchInner!1071 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) Nil!38646 (size!29528 Nil!38646) lt!1274713 lt!1274713 (size!29528 lt!1274713)))))))

(declare-fun lt!1275376 () Unit!55997)

(declare-fun choose!21737 (Regex!10561 List!38770) Unit!55997)

(assert (=> d!1076306 (= lt!1275376 (choose!21737 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) lt!1274713))))

(assert (=> d!1076306 (validRegex!4836 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))

(assert (=> d!1076306 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1044 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) lt!1274713) lt!1275376)))

(declare-fun b!3664437 () Bool)

(assert (=> b!3664437 (= e!2268939 (matchR!5130 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) (_1!22393 (findLongestMatchInner!1071 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) Nil!38646 (size!29528 Nil!38646) lt!1274713 lt!1274713 (size!29528 lt!1274713)))))))

(assert (= (and d!1076306 (not res!1487857)) b!3664437))

(declare-fun m!4171891 () Bool)

(assert (=> d!1076306 m!4171891))

(assert (=> d!1076306 m!4170547))

(assert (=> d!1076306 m!4170759))

(assert (=> d!1076306 m!4170751))

(assert (=> d!1076306 m!4170751))

(assert (=> d!1076306 m!4170547))

(assert (=> d!1076306 m!4170753))

(assert (=> d!1076306 m!4170009))

(assert (=> b!3664437 m!4170751))

(assert (=> b!3664437 m!4170547))

(assert (=> b!3664437 m!4170751))

(assert (=> b!3664437 m!4170547))

(assert (=> b!3664437 m!4170753))

(assert (=> b!3664437 m!4170769))

(assert (=> b!3663588 d!1076306))

(declare-fun d!1076332 () Bool)

(assert (=> d!1076332 (= (apply!9304 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))) (seqFromList!4351 (_1!22393 lt!1275042))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (seqFromList!4351 (_1!22393 lt!1275042))))))

(declare-fun b_lambda!108759 () Bool)

(assert (=> (not b_lambda!108759) (not d!1076332)))

(declare-fun tb!212001 () Bool)

(declare-fun t!299022 () Bool)

(assert (=> (and b!3663858 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!299022) tb!212001))

(declare-fun result!258062 () Bool)

(assert (=> tb!212001 (= result!258062 (inv!21 (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (seqFromList!4351 (_1!22393 lt!1275042)))))))

(declare-fun m!4171893 () Bool)

(assert (=> tb!212001 m!4171893))

(assert (=> d!1076332 t!299022))

(declare-fun b_and!272353 () Bool)

(assert (= b_and!272283 (and (=> t!299022 result!258062) b_and!272353)))

(declare-fun tb!212003 () Bool)

(declare-fun t!299024 () Bool)

(assert (=> (and b!3662995 (= (toValue!8094 (transformation!5802 (h!44067 rules!3307))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!299024) tb!212003))

(declare-fun result!258064 () Bool)

(assert (= result!258064 result!258062))

(assert (=> d!1076332 t!299024))

(declare-fun b_and!272355 () Bool)

(assert (= b_and!272285 (and (=> t!299024 result!258064) b_and!272355)))

(declare-fun t!299026 () Bool)

(declare-fun tb!212005 () Bool)

(assert (=> (and b!3663022 (= (toValue!8094 (transformation!5802 rule!403)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!299026) tb!212005))

(declare-fun result!258066 () Bool)

(assert (= result!258066 result!258062))

(assert (=> d!1076332 t!299026))

(declare-fun b_and!272357 () Bool)

(assert (= b_and!272287 (and (=> t!299026 result!258066) b_and!272357)))

(declare-fun tb!212007 () Bool)

(declare-fun t!299028 () Bool)

(assert (=> (and b!3662992 (= (toValue!8094 (transformation!5802 (rule!8618 token!511))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!299028) tb!212007))

(declare-fun result!258068 () Bool)

(assert (= result!258068 result!258062))

(assert (=> d!1076332 t!299028))

(declare-fun b_and!272359 () Bool)

(assert (= b_and!272291 (and (=> t!299028 result!258068) b_and!272359)))

(declare-fun tb!212009 () Bool)

(declare-fun t!299030 () Bool)

(assert (=> (and b!3663012 (= (toValue!8094 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!299030) tb!212009))

(declare-fun result!258070 () Bool)

(assert (= result!258070 result!258062))

(assert (=> d!1076332 t!299030))

(declare-fun b_and!272361 () Bool)

(assert (= b_and!272289 (and (=> t!299030 result!258070) b_and!272361)))

(assert (=> d!1076332 m!4170747))

(declare-fun m!4171899 () Bool)

(assert (=> d!1076332 m!4171899))

(assert (=> b!3663588 d!1076332))

(declare-fun d!1076336 () Bool)

(assert (=> d!1076336 (= (isEmpty!22924 (_1!22393 (findLongestMatchInner!1071 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) Nil!38646 (size!29528 Nil!38646) lt!1274713 lt!1274713 (size!29528 lt!1274713)))) ((_ is Nil!38646) (_1!22393 (findLongestMatchInner!1071 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) Nil!38646 (size!29528 Nil!38646) lt!1274713 lt!1274713 (size!29528 lt!1274713)))))))

(assert (=> b!3663588 d!1076336))

(declare-fun b!3664639 () Bool)

(declare-fun e!2269058 () Bool)

(declare-fun lt!1275512 () tuple2!38518)

(assert (=> b!3664639 (= e!2269058 (>= (size!29528 (_1!22393 lt!1275512)) (size!29528 Nil!38646)))))

(declare-fun b!3664640 () Bool)

(declare-fun e!2269057 () Bool)

(assert (=> b!3664640 (= e!2269057 e!2269058)))

(declare-fun res!1487936 () Bool)

(assert (=> b!3664640 (=> res!1487936 e!2269058)))

(assert (=> b!3664640 (= res!1487936 (isEmpty!22924 (_1!22393 lt!1275512)))))

(declare-fun call!265180 () Regex!10561)

(declare-fun call!265179 () tuple2!38518)

(declare-fun lt!1275499 () List!38770)

(declare-fun bm!265169 () Bool)

(declare-fun call!265178 () List!38770)

(assert (=> bm!265169 (= call!265179 (findLongestMatchInner!1071 call!265180 lt!1275499 (+ (size!29528 Nil!38646) 1) call!265178 lt!1274713 (size!29528 lt!1274713)))))

(declare-fun b!3664641 () Bool)

(declare-fun e!2269060 () Unit!55997)

(declare-fun Unit!56019 () Unit!55997)

(assert (=> b!3664641 (= e!2269060 Unit!56019)))

(declare-fun bm!265170 () Bool)

(declare-fun call!265177 () Bool)

(assert (=> bm!265170 (= call!265177 (isPrefix!3165 lt!1274713 lt!1274713))))

(declare-fun bm!265171 () Bool)

(declare-fun call!265175 () C!21308)

(assert (=> bm!265171 (= call!265180 (derivativeStep!3224 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) call!265175))))

(declare-fun d!1076338 () Bool)

(assert (=> d!1076338 e!2269057))

(declare-fun res!1487935 () Bool)

(assert (=> d!1076338 (=> (not res!1487935) (not e!2269057))))

(assert (=> d!1076338 (= res!1487935 (= (++!9618 (_1!22393 lt!1275512) (_2!22393 lt!1275512)) lt!1274713))))

(declare-fun e!2269059 () tuple2!38518)

(assert (=> d!1076338 (= lt!1275512 e!2269059)))

(declare-fun c!633528 () Bool)

(declare-fun lostCause!948 (Regex!10561) Bool)

(assert (=> d!1076338 (= c!633528 (lostCause!948 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun lt!1275495 () Unit!55997)

(declare-fun Unit!56020 () Unit!55997)

(assert (=> d!1076338 (= lt!1275495 Unit!56020)))

(assert (=> d!1076338 (= (getSuffix!1718 lt!1274713 Nil!38646) lt!1274713)))

(declare-fun lt!1275504 () Unit!55997)

(declare-fun lt!1275491 () Unit!55997)

(assert (=> d!1076338 (= lt!1275504 lt!1275491)))

(declare-fun lt!1275510 () List!38770)

(assert (=> d!1076338 (= lt!1274713 lt!1275510)))

(assert (=> d!1076338 (= lt!1275491 (lemmaSamePrefixThenSameSuffix!1492 Nil!38646 lt!1274713 Nil!38646 lt!1275510 lt!1274713))))

(assert (=> d!1076338 (= lt!1275510 (getSuffix!1718 lt!1274713 Nil!38646))))

(declare-fun lt!1275500 () Unit!55997)

(declare-fun lt!1275485 () Unit!55997)

(assert (=> d!1076338 (= lt!1275500 lt!1275485)))

(assert (=> d!1076338 (isPrefix!3165 Nil!38646 (++!9618 Nil!38646 lt!1274713))))

(assert (=> d!1076338 (= lt!1275485 (lemmaConcatTwoListThenFirstIsPrefix!2084 Nil!38646 lt!1274713))))

(assert (=> d!1076338 (validRegex!4836 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))

(assert (=> d!1076338 (= (findLongestMatchInner!1071 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) Nil!38646 (size!29528 Nil!38646) lt!1274713 lt!1274713 (size!29528 lt!1274713)) lt!1275512)))

(declare-fun b!3664642 () Bool)

(declare-fun e!2269056 () tuple2!38518)

(assert (=> b!3664642 (= e!2269059 e!2269056)))

(declare-fun c!633529 () Bool)

(assert (=> b!3664642 (= c!633529 (= (size!29528 Nil!38646) (size!29528 lt!1274713)))))

(declare-fun bm!265172 () Bool)

(assert (=> bm!265172 (= call!265178 (tail!5673 lt!1274713))))

(declare-fun b!3664643 () Bool)

(declare-fun e!2269061 () tuple2!38518)

(assert (=> b!3664643 (= e!2269061 (tuple2!38519 Nil!38646 Nil!38646))))

(declare-fun bm!265173 () Bool)

(declare-fun call!265181 () Bool)

(assert (=> bm!265173 (= call!265181 (nullable!3675 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun b!3664644 () Bool)

(declare-fun e!2269063 () tuple2!38518)

(assert (=> b!3664644 (= e!2269063 call!265179)))

(declare-fun bm!265174 () Bool)

(declare-fun call!265176 () Unit!55997)

(assert (=> bm!265174 (= call!265176 (lemmaIsPrefixRefl!1998 lt!1274713 lt!1274713))))

(declare-fun b!3664645 () Bool)

(declare-fun e!2269062 () tuple2!38518)

(assert (=> b!3664645 (= e!2269062 (tuple2!38519 Nil!38646 lt!1274713))))

(declare-fun b!3664646 () Bool)

(declare-fun c!633533 () Bool)

(assert (=> b!3664646 (= c!633533 call!265181)))

(declare-fun lt!1275486 () Unit!55997)

(declare-fun lt!1275488 () Unit!55997)

(assert (=> b!3664646 (= lt!1275486 lt!1275488)))

(declare-fun lt!1275501 () C!21308)

(declare-fun lt!1275503 () List!38770)

(assert (=> b!3664646 (= (++!9618 (++!9618 Nil!38646 (Cons!38646 lt!1275501 Nil!38646)) lt!1275503) lt!1274713)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1186 (List!38770 C!21308 List!38770 List!38770) Unit!55997)

(assert (=> b!3664646 (= lt!1275488 (lemmaMoveElementToOtherListKeepsConcatEq!1186 Nil!38646 lt!1275501 lt!1275503 lt!1274713))))

(assert (=> b!3664646 (= lt!1275503 (tail!5673 lt!1274713))))

(assert (=> b!3664646 (= lt!1275501 (head!7834 lt!1274713))))

(declare-fun lt!1275490 () Unit!55997)

(declare-fun lt!1275497 () Unit!55997)

(assert (=> b!3664646 (= lt!1275490 lt!1275497)))

(assert (=> b!3664646 (isPrefix!3165 (++!9618 Nil!38646 (Cons!38646 (head!7834 (getSuffix!1718 lt!1274713 Nil!38646)) Nil!38646)) lt!1274713)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!574 (List!38770 List!38770) Unit!55997)

(assert (=> b!3664646 (= lt!1275497 (lemmaAddHeadSuffixToPrefixStillPrefix!574 Nil!38646 lt!1274713))))

(declare-fun lt!1275505 () Unit!55997)

(declare-fun lt!1275511 () Unit!55997)

(assert (=> b!3664646 (= lt!1275505 lt!1275511)))

(assert (=> b!3664646 (= lt!1275511 (lemmaAddHeadSuffixToPrefixStillPrefix!574 Nil!38646 lt!1274713))))

(assert (=> b!3664646 (= lt!1275499 (++!9618 Nil!38646 (Cons!38646 (head!7834 lt!1274713) Nil!38646)))))

(declare-fun lt!1275496 () Unit!55997)

(assert (=> b!3664646 (= lt!1275496 e!2269060)))

(declare-fun c!633530 () Bool)

(assert (=> b!3664646 (= c!633530 (= (size!29528 Nil!38646) (size!29528 lt!1274713)))))

(declare-fun lt!1275509 () Unit!55997)

(declare-fun lt!1275506 () Unit!55997)

(assert (=> b!3664646 (= lt!1275509 lt!1275506)))

(assert (=> b!3664646 (<= (size!29528 Nil!38646) (size!29528 lt!1274713))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!382 (List!38770 List!38770) Unit!55997)

(assert (=> b!3664646 (= lt!1275506 (lemmaIsPrefixThenSmallerEqSize!382 Nil!38646 lt!1274713))))

(assert (=> b!3664646 (= e!2269056 e!2269063)))

(declare-fun bm!265175 () Bool)

(assert (=> bm!265175 (= call!265175 (head!7834 lt!1274713))))

(declare-fun b!3664647 () Bool)

(assert (=> b!3664647 (= e!2269059 (tuple2!38519 Nil!38646 lt!1274713))))

(declare-fun bm!265176 () Bool)

(declare-fun call!265174 () Unit!55997)

(assert (=> bm!265176 (= call!265174 (lemmaIsPrefixSameLengthThenSameList!627 lt!1274713 Nil!38646 lt!1274713))))

(declare-fun b!3664648 () Bool)

(declare-fun lt!1275498 () tuple2!38518)

(assert (=> b!3664648 (= e!2269062 lt!1275498)))

(declare-fun b!3664649 () Bool)

(declare-fun c!633532 () Bool)

(assert (=> b!3664649 (= c!633532 call!265181)))

(declare-fun lt!1275493 () Unit!55997)

(declare-fun lt!1275489 () Unit!55997)

(assert (=> b!3664649 (= lt!1275493 lt!1275489)))

(assert (=> b!3664649 (= lt!1274713 Nil!38646)))

(assert (=> b!3664649 (= lt!1275489 call!265174)))

(declare-fun lt!1275487 () Unit!55997)

(declare-fun lt!1275492 () Unit!55997)

(assert (=> b!3664649 (= lt!1275487 lt!1275492)))

(assert (=> b!3664649 call!265177))

(assert (=> b!3664649 (= lt!1275492 call!265176)))

(assert (=> b!3664649 (= e!2269056 e!2269061)))

(declare-fun b!3664650 () Bool)

(declare-fun Unit!56021 () Unit!55997)

(assert (=> b!3664650 (= e!2269060 Unit!56021)))

(declare-fun lt!1275502 () Unit!55997)

(assert (=> b!3664650 (= lt!1275502 call!265176)))

(assert (=> b!3664650 call!265177))

(declare-fun lt!1275507 () Unit!55997)

(assert (=> b!3664650 (= lt!1275507 lt!1275502)))

(declare-fun lt!1275508 () Unit!55997)

(assert (=> b!3664650 (= lt!1275508 call!265174)))

(assert (=> b!3664650 (= lt!1274713 Nil!38646)))

(declare-fun lt!1275494 () Unit!55997)

(assert (=> b!3664650 (= lt!1275494 lt!1275508)))

(assert (=> b!3664650 false))

(declare-fun b!3664651 () Bool)

(assert (=> b!3664651 (= e!2269061 (tuple2!38519 Nil!38646 lt!1274713))))

(declare-fun b!3664652 () Bool)

(assert (=> b!3664652 (= e!2269063 e!2269062)))

(assert (=> b!3664652 (= lt!1275498 call!265179)))

(declare-fun c!633531 () Bool)

(assert (=> b!3664652 (= c!633531 (isEmpty!22924 (_1!22393 lt!1275498)))))

(assert (= (and d!1076338 c!633528) b!3664647))

(assert (= (and d!1076338 (not c!633528)) b!3664642))

(assert (= (and b!3664642 c!633529) b!3664649))

(assert (= (and b!3664642 (not c!633529)) b!3664646))

(assert (= (and b!3664649 c!633532) b!3664643))

(assert (= (and b!3664649 (not c!633532)) b!3664651))

(assert (= (and b!3664646 c!633530) b!3664650))

(assert (= (and b!3664646 (not c!633530)) b!3664641))

(assert (= (and b!3664646 c!633533) b!3664652))

(assert (= (and b!3664646 (not c!633533)) b!3664644))

(assert (= (and b!3664652 c!633531) b!3664645))

(assert (= (and b!3664652 (not c!633531)) b!3664648))

(assert (= (or b!3664652 b!3664644) bm!265172))

(assert (= (or b!3664652 b!3664644) bm!265175))

(assert (= (or b!3664652 b!3664644) bm!265171))

(assert (= (or b!3664652 b!3664644) bm!265169))

(assert (= (or b!3664649 b!3664646) bm!265173))

(assert (= (or b!3664649 b!3664650) bm!265170))

(assert (= (or b!3664649 b!3664650) bm!265176))

(assert (= (or b!3664649 b!3664650) bm!265174))

(assert (= (and d!1076338 res!1487935) b!3664640))

(assert (= (and b!3664640 (not res!1487936)) b!3664639))

(assert (=> bm!265173 m!4170843))

(declare-fun m!4172199 () Bool)

(assert (=> b!3664639 m!4172199))

(assert (=> b!3664639 m!4170751))

(assert (=> bm!265169 m!4170547))

(declare-fun m!4172201 () Bool)

(assert (=> bm!265169 m!4172201))

(declare-fun m!4172203 () Bool)

(assert (=> bm!265176 m!4172203))

(declare-fun m!4172205 () Bool)

(assert (=> b!3664640 m!4172205))

(declare-fun m!4172207 () Bool)

(assert (=> b!3664652 m!4172207))

(assert (=> b!3664646 m!4170547))

(declare-fun m!4172209 () Bool)

(assert (=> b!3664646 m!4172209))

(declare-fun m!4172211 () Bool)

(assert (=> b!3664646 m!4172211))

(assert (=> b!3664646 m!4170577))

(declare-fun m!4172217 () Bool)

(assert (=> b!3664646 m!4172217))

(declare-fun m!4172221 () Bool)

(assert (=> b!3664646 m!4172221))

(declare-fun m!4172223 () Bool)

(assert (=> b!3664646 m!4172223))

(declare-fun m!4172227 () Bool)

(assert (=> b!3664646 m!4172227))

(declare-fun m!4172229 () Bool)

(assert (=> b!3664646 m!4172229))

(assert (=> b!3664646 m!4170583))

(declare-fun m!4172231 () Bool)

(assert (=> b!3664646 m!4172231))

(declare-fun m!4172233 () Bool)

(assert (=> b!3664646 m!4172233))

(assert (=> b!3664646 m!4172209))

(assert (=> b!3664646 m!4172227))

(assert (=> b!3664646 m!4170751))

(assert (=> b!3664646 m!4172233))

(declare-fun m!4172235 () Bool)

(assert (=> b!3664646 m!4172235))

(declare-fun m!4172237 () Bool)

(assert (=> bm!265171 m!4172237))

(assert (=> bm!265174 m!4170553))

(declare-fun m!4172239 () Bool)

(assert (=> d!1076338 m!4172239))

(assert (=> d!1076338 m!4172209))

(declare-fun m!4172241 () Bool)

(assert (=> d!1076338 m!4172241))

(declare-fun m!4172243 () Bool)

(assert (=> d!1076338 m!4172243))

(assert (=> d!1076338 m!4172243))

(declare-fun m!4172245 () Bool)

(assert (=> d!1076338 m!4172245))

(declare-fun m!4172247 () Bool)

(assert (=> d!1076338 m!4172247))

(declare-fun m!4172249 () Bool)

(assert (=> d!1076338 m!4172249))

(assert (=> d!1076338 m!4170009))

(assert (=> bm!265170 m!4170551))

(assert (=> bm!265172 m!4170577))

(assert (=> bm!265175 m!4170583))

(assert (=> b!3663588 d!1076338))

(declare-fun d!1076444 () Bool)

(declare-fun lt!1275522 () Int)

(assert (=> d!1076444 (= lt!1275522 (size!29528 (list!14340 (seqFromList!4351 (_1!22393 lt!1275042)))))))

(assert (=> d!1076444 (= lt!1275522 (size!29531 (c!633135 (seqFromList!4351 (_1!22393 lt!1275042)))))))

(assert (=> d!1076444 (= (size!29529 (seqFromList!4351 (_1!22393 lt!1275042))) lt!1275522)))

(declare-fun bs!572865 () Bool)

(assert (= bs!572865 d!1076444))

(assert (=> bs!572865 m!4170747))

(declare-fun m!4172251 () Bool)

(assert (=> bs!572865 m!4172251))

(assert (=> bs!572865 m!4172251))

(declare-fun m!4172253 () Bool)

(assert (=> bs!572865 m!4172253))

(declare-fun m!4172255 () Bool)

(assert (=> bs!572865 m!4172255))

(assert (=> b!3663588 d!1076444))

(declare-fun bs!572866 () Bool)

(declare-fun d!1076446 () Bool)

(assert (= bs!572866 (and d!1076446 d!1076136)))

(declare-fun lambda!124627 () Int)

(assert (=> bs!572866 (= (and (= (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (toChars!7953 (transformation!5802 rule!403))) (= (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (toValue!8094 (transformation!5802 rule!403)))) (= lambda!124627 lambda!124610))))

(declare-fun bs!572867 () Bool)

(assert (= bs!572867 (and d!1076446 d!1075792)))

(assert (=> bs!572867 (= lambda!124627 lambda!124598)))

(declare-fun bs!572868 () Bool)

(assert (= bs!572868 (and d!1076446 d!1075606)))

(assert (=> bs!572868 (= (and (= (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (toChars!7953 (transformation!5802 rule!403))) (= (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (toValue!8094 (transformation!5802 rule!403)))) (= lambda!124627 lambda!124596))))

(declare-fun bs!572869 () Bool)

(assert (= bs!572869 (and d!1076446 d!1076016)))

(assert (=> bs!572869 (= (and (= (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (toChars!7953 (transformation!5802 (h!44067 rules!3307)))) (= (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (toValue!8094 (transformation!5802 (h!44067 rules!3307))))) (= lambda!124627 lambda!124608))))

(declare-fun bs!572870 () Bool)

(assert (= bs!572870 (and d!1076446 d!1076078)))

(assert (=> bs!572870 (= (and (= (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (toChars!7953 (transformation!5802 (rule!8618 token!511)))) (= (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (toValue!8094 (transformation!5802 (rule!8618 token!511))))) (= lambda!124627 lambda!124609))))

(declare-fun b!3664679 () Bool)

(declare-fun e!2269078 () Bool)

(assert (=> b!3664679 (= e!2269078 true)))

(assert (=> d!1076446 e!2269078))

(assert (= d!1076446 b!3664679))

(assert (=> b!3664679 (< (dynLambda!16898 order!21355 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) (dynLambda!16899 order!21357 lambda!124627))))

(assert (=> b!3664679 (< (dynLambda!16900 order!21359 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) (dynLambda!16899 order!21357 lambda!124627))))

(assert (=> d!1076446 (= (list!14340 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (seqFromList!4351 (_1!22393 lt!1275042))))) (list!14340 (seqFromList!4351 (_1!22393 lt!1275042))))))

(declare-fun lt!1275523 () Unit!55997)

(assert (=> d!1076446 (= lt!1275523 (ForallOf!732 lambda!124627 (seqFromList!4351 (_1!22393 lt!1275042))))))

(assert (=> d!1076446 (= (lemmaSemiInverse!1551 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))) (seqFromList!4351 (_1!22393 lt!1275042))) lt!1275523)))

(declare-fun b_lambda!108767 () Bool)

(assert (=> (not b_lambda!108767) (not d!1076446)))

(declare-fun t!299062 () Bool)

(declare-fun tb!212041 () Bool)

(assert (=> (and b!3663858 (= (toChars!7953 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!299062) tb!212041))

(declare-fun b!3664680 () Bool)

(declare-fun tp!1115656 () Bool)

(declare-fun e!2269079 () Bool)

(assert (=> b!3664680 (= e!2269079 (and (inv!52119 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (seqFromList!4351 (_1!22393 lt!1275042)))))) tp!1115656))))

(declare-fun result!258102 () Bool)

(assert (=> tb!212041 (= result!258102 (and (inv!52120 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (seqFromList!4351 (_1!22393 lt!1275042))))) e!2269079))))

(assert (= tb!212041 b!3664680))

(declare-fun m!4172297 () Bool)

(assert (=> b!3664680 m!4172297))

(declare-fun m!4172301 () Bool)

(assert (=> tb!212041 m!4172301))

(assert (=> d!1076446 t!299062))

(declare-fun b_and!272393 () Bool)

(assert (= b_and!272313 (and (=> t!299062 result!258102) b_and!272393)))

(declare-fun t!299064 () Bool)

(declare-fun tb!212043 () Bool)

(assert (=> (and b!3663022 (= (toChars!7953 (transformation!5802 rule!403)) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!299064) tb!212043))

(declare-fun result!258104 () Bool)

(assert (= result!258104 result!258102))

(assert (=> d!1076446 t!299064))

(declare-fun b_and!272395 () Bool)

(assert (= b_and!272319 (and (=> t!299064 result!258104) b_and!272395)))

(declare-fun t!299066 () Bool)

(declare-fun tb!212045 () Bool)

(assert (=> (and b!3662992 (= (toChars!7953 (transformation!5802 (rule!8618 token!511))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!299066) tb!212045))

(declare-fun result!258106 () Bool)

(assert (= result!258106 result!258102))

(assert (=> d!1076446 t!299066))

(declare-fun b_and!272397 () Bool)

(assert (= b_and!272315 (and (=> t!299066 result!258106) b_and!272397)))

(declare-fun tb!212047 () Bool)

(declare-fun t!299068 () Bool)

(assert (=> (and b!3663012 (= (toChars!7953 (transformation!5802 anOtherTypeRule!33)) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!299068) tb!212047))

(declare-fun result!258108 () Bool)

(assert (= result!258108 result!258102))

(assert (=> d!1076446 t!299068))

(declare-fun b_and!272399 () Bool)

(assert (= b_and!272317 (and (=> t!299068 result!258108) b_and!272399)))

(declare-fun t!299070 () Bool)

(declare-fun tb!212049 () Bool)

(assert (=> (and b!3662995 (= (toChars!7953 (transformation!5802 (h!44067 rules!3307))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!299070) tb!212049))

(declare-fun result!258110 () Bool)

(assert (= result!258110 result!258102))

(assert (=> d!1076446 t!299070))

(declare-fun b_and!272401 () Bool)

(assert (= b_and!272321 (and (=> t!299070 result!258110) b_and!272401)))

(declare-fun b_lambda!108769 () Bool)

(assert (=> (not b_lambda!108769) (not d!1076446)))

(assert (=> d!1076446 t!299030))

(declare-fun b_and!272403 () Bool)

(assert (= b_and!272361 (and (=> t!299030 result!258070) b_and!272403)))

(assert (=> d!1076446 t!299022))

(declare-fun b_and!272405 () Bool)

(assert (= b_and!272353 (and (=> t!299022 result!258062) b_and!272405)))

(assert (=> d!1076446 t!299024))

(declare-fun b_and!272407 () Bool)

(assert (= b_and!272355 (and (=> t!299024 result!258064) b_and!272407)))

(assert (=> d!1076446 t!299028))

(declare-fun b_and!272409 () Bool)

(assert (= b_and!272359 (and (=> t!299028 result!258068) b_and!272409)))

(assert (=> d!1076446 t!299026))

(declare-fun b_and!272411 () Bool)

(assert (= b_and!272357 (and (=> t!299026 result!258066) b_and!272411)))

(assert (=> d!1076446 m!4171899))

(declare-fun m!4172303 () Bool)

(assert (=> d!1076446 m!4172303))

(assert (=> d!1076446 m!4172303))

(declare-fun m!4172305 () Bool)

(assert (=> d!1076446 m!4172305))

(assert (=> d!1076446 m!4170747))

(assert (=> d!1076446 m!4172251))

(assert (=> d!1076446 m!4170747))

(declare-fun m!4172307 () Bool)

(assert (=> d!1076446 m!4172307))

(assert (=> d!1076446 m!4170747))

(assert (=> d!1076446 m!4171899))

(assert (=> b!3663588 d!1076446))

(declare-fun d!1076452 () Bool)

(assert (=> d!1076452 (= (seqFromList!4351 (_1!22393 lt!1275042)) (fromListB!2011 (_1!22393 lt!1275042)))))

(declare-fun bs!572872 () Bool)

(assert (= bs!572872 d!1076452))

(declare-fun m!4172309 () Bool)

(assert (=> bs!572872 m!4172309))

(assert (=> b!3663588 d!1076452))

(assert (=> b!3663588 d!1076052))

(assert (=> d!1075876 d!1076008))

(declare-fun d!1076454 () Bool)

(declare-fun c!633541 () Bool)

(assert (=> d!1076454 (= c!633541 (and ((_ is Cons!38647) rules!3307) (not (= (isSeparator!5802 (h!44067 rules!3307)) (isSeparator!5802 (h!44067 rules!3307))))))))

(declare-fun e!2269090 () Bool)

(assert (=> d!1076454 (= (ruleDisjointCharsFromAllFromOtherType!899 (h!44067 rules!3307) rules!3307) e!2269090)))

(declare-fun bm!265179 () Bool)

(declare-fun call!265184 () Bool)

(assert (=> bm!265179 (= call!265184 (ruleDisjointCharsFromAllFromOtherType!899 (h!44067 rules!3307) (t!298754 rules!3307)))))

(declare-fun b!3664695 () Bool)

(declare-fun e!2269089 () Bool)

(assert (=> b!3664695 (= e!2269090 e!2269089)))

(declare-fun res!1487964 () Bool)

(declare-fun rulesUseDisjointChars!372 (Rule!11404 Rule!11404) Bool)

(assert (=> b!3664695 (= res!1487964 (rulesUseDisjointChars!372 (h!44067 rules!3307) (h!44067 rules!3307)))))

(assert (=> b!3664695 (=> (not res!1487964) (not e!2269089))))

(declare-fun b!3664696 () Bool)

(assert (=> b!3664696 (= e!2269089 call!265184)))

(declare-fun b!3664697 () Bool)

(declare-fun e!2269091 () Bool)

(assert (=> b!3664697 (= e!2269091 call!265184)))

(declare-fun b!3664698 () Bool)

(assert (=> b!3664698 (= e!2269090 e!2269091)))

(declare-fun res!1487963 () Bool)

(assert (=> b!3664698 (= res!1487963 (not ((_ is Cons!38647) rules!3307)))))

(assert (=> b!3664698 (=> res!1487963 e!2269091)))

(assert (= (and d!1076454 c!633541) b!3664695))

(assert (= (and d!1076454 (not c!633541)) b!3664698))

(assert (= (and b!3664695 res!1487964) b!3664696))

(assert (= (and b!3664698 (not res!1487963)) b!3664697))

(assert (= (or b!3664696 b!3664697) bm!265179))

(declare-fun m!4172311 () Bool)

(assert (=> bm!265179 m!4172311))

(declare-fun m!4172313 () Bool)

(assert (=> b!3664695 m!4172313))

(assert (=> b!3663814 d!1076454))

(assert (=> b!3663389 d!1075644))

(declare-fun d!1076456 () Bool)

(assert (=> d!1076456 (isEmpty!22928 (maxPrefixOneRule!2063 thiss!23823 (rule!8618 lt!1274941) lt!1274940))))

(declare-fun lt!1275532 () Unit!55997)

(declare-fun choose!21739 (LexerInterface!5391 Rule!11404 List!38771 List!38770) Unit!55997)

(assert (=> d!1076456 (= lt!1275532 (choose!21739 thiss!23823 (rule!8618 lt!1274941) rules!3307 lt!1274940))))

(assert (=> d!1076456 (not (isEmpty!22925 rules!3307))))

(assert (=> d!1076456 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!561 thiss!23823 (rule!8618 lt!1274941) rules!3307 lt!1274940) lt!1275532)))

(declare-fun bs!572882 () Bool)

(assert (= bs!572882 d!1076456))

(assert (=> bs!572882 m!4170409))

(assert (=> bs!572882 m!4170409))

(assert (=> bs!572882 m!4170413))

(declare-fun m!4172359 () Bool)

(assert (=> bs!572882 m!4172359))

(assert (=> bs!572882 m!4169979))

(assert (=> b!3663389 d!1076456))

(assert (=> b!3663389 d!1076242))

(declare-fun d!1076484 () Bool)

(assert (=> d!1076484 (not (matchR!5130 (regex!5802 (rule!8618 lt!1274941)) lt!1274936))))

(declare-fun lt!1275537 () Unit!55997)

(declare-fun choose!21740 (LexerInterface!5391 Rule!11404 List!38770 List!38770) Unit!55997)

(assert (=> d!1076484 (= lt!1275537 (choose!21740 thiss!23823 (rule!8618 lt!1274941) lt!1274936 (++!9618 lt!1274731 suffix!1395)))))

(assert (=> d!1076484 (isPrefix!3165 lt!1274936 (++!9618 lt!1274731 suffix!1395))))

(assert (=> d!1076484 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!549 thiss!23823 (rule!8618 lt!1274941) lt!1274936 (++!9618 lt!1274731 suffix!1395)) lt!1275537)))

(declare-fun bs!572884 () Bool)

(assert (= bs!572884 d!1076484))

(assert (=> bs!572884 m!4170407))

(assert (=> bs!572884 m!4169937))

(declare-fun m!4172379 () Bool)

(assert (=> bs!572884 m!4172379))

(assert (=> bs!572884 m!4169937))

(declare-fun m!4172381 () Bool)

(assert (=> bs!572884 m!4172381))

(assert (=> b!3663389 d!1076484))

(declare-fun bm!265183 () Bool)

(declare-fun call!265188 () Bool)

(assert (=> bm!265183 (= call!265188 (isEmpty!22924 lt!1274936))))

(declare-fun b!3664733 () Bool)

(declare-fun e!2269119 () Bool)

(assert (=> b!3664733 (= e!2269119 (matchR!5130 (derivativeStep!3224 (regex!5802 (rule!8618 lt!1274941)) (head!7834 lt!1274936)) (tail!5673 lt!1274936)))))

(declare-fun b!3664734 () Bool)

(declare-fun e!2269120 () Bool)

(assert (=> b!3664734 (= e!2269120 (not (= (head!7834 lt!1274936) (c!633134 (regex!5802 (rule!8618 lt!1274941))))))))

(declare-fun d!1076492 () Bool)

(declare-fun e!2269117 () Bool)

(assert (=> d!1076492 e!2269117))

(declare-fun c!633552 () Bool)

(assert (=> d!1076492 (= c!633552 ((_ is EmptyExpr!10561) (regex!5802 (rule!8618 lt!1274941))))))

(declare-fun lt!1275538 () Bool)

(assert (=> d!1076492 (= lt!1275538 e!2269119)))

(declare-fun c!633554 () Bool)

(assert (=> d!1076492 (= c!633554 (isEmpty!22924 lt!1274936))))

(assert (=> d!1076492 (validRegex!4836 (regex!5802 (rule!8618 lt!1274941)))))

(assert (=> d!1076492 (= (matchR!5130 (regex!5802 (rule!8618 lt!1274941)) lt!1274936) lt!1275538)))

(declare-fun b!3664735 () Bool)

(declare-fun e!2269116 () Bool)

(assert (=> b!3664735 (= e!2269116 e!2269120)))

(declare-fun res!1487992 () Bool)

(assert (=> b!3664735 (=> res!1487992 e!2269120)))

(assert (=> b!3664735 (= res!1487992 call!265188)))

(declare-fun b!3664736 () Bool)

(declare-fun e!2269121 () Bool)

(assert (=> b!3664736 (= e!2269121 (= (head!7834 lt!1274936) (c!633134 (regex!5802 (rule!8618 lt!1274941)))))))

(declare-fun b!3664737 () Bool)

(declare-fun res!1487987 () Bool)

(assert (=> b!3664737 (=> (not res!1487987) (not e!2269121))))

(assert (=> b!3664737 (= res!1487987 (not call!265188))))

(declare-fun b!3664738 () Bool)

(declare-fun e!2269122 () Bool)

(assert (=> b!3664738 (= e!2269122 e!2269116)))

(declare-fun res!1487989 () Bool)

(assert (=> b!3664738 (=> (not res!1487989) (not e!2269116))))

(assert (=> b!3664738 (= res!1487989 (not lt!1275538))))

(declare-fun b!3664739 () Bool)

(declare-fun e!2269118 () Bool)

(assert (=> b!3664739 (= e!2269118 (not lt!1275538))))

(declare-fun b!3664740 () Bool)

(assert (=> b!3664740 (= e!2269117 e!2269118)))

(declare-fun c!633553 () Bool)

(assert (=> b!3664740 (= c!633553 ((_ is EmptyLang!10561) (regex!5802 (rule!8618 lt!1274941))))))

(declare-fun b!3664741 () Bool)

(declare-fun res!1487990 () Bool)

(assert (=> b!3664741 (=> res!1487990 e!2269120)))

(assert (=> b!3664741 (= res!1487990 (not (isEmpty!22924 (tail!5673 lt!1274936))))))

(declare-fun b!3664742 () Bool)

(declare-fun res!1487991 () Bool)

(assert (=> b!3664742 (=> res!1487991 e!2269122)))

(assert (=> b!3664742 (= res!1487991 (not ((_ is ElementMatch!10561) (regex!5802 (rule!8618 lt!1274941)))))))

(assert (=> b!3664742 (= e!2269118 e!2269122)))

(declare-fun b!3664743 () Bool)

(declare-fun res!1487988 () Bool)

(assert (=> b!3664743 (=> (not res!1487988) (not e!2269121))))

(assert (=> b!3664743 (= res!1487988 (isEmpty!22924 (tail!5673 lt!1274936)))))

(declare-fun b!3664744 () Bool)

(assert (=> b!3664744 (= e!2269117 (= lt!1275538 call!265188))))

(declare-fun b!3664745 () Bool)

(assert (=> b!3664745 (= e!2269119 (nullable!3675 (regex!5802 (rule!8618 lt!1274941))))))

(declare-fun b!3664746 () Bool)

(declare-fun res!1487986 () Bool)

(assert (=> b!3664746 (=> res!1487986 e!2269122)))

(assert (=> b!3664746 (= res!1487986 e!2269121)))

(declare-fun res!1487985 () Bool)

(assert (=> b!3664746 (=> (not res!1487985) (not e!2269121))))

(assert (=> b!3664746 (= res!1487985 lt!1275538)))

(assert (= (and d!1076492 c!633554) b!3664745))

(assert (= (and d!1076492 (not c!633554)) b!3664733))

(assert (= (and d!1076492 c!633552) b!3664744))

(assert (= (and d!1076492 (not c!633552)) b!3664740))

(assert (= (and b!3664740 c!633553) b!3664739))

(assert (= (and b!3664740 (not c!633553)) b!3664742))

(assert (= (and b!3664742 (not res!1487991)) b!3664746))

(assert (= (and b!3664746 res!1487985) b!3664737))

(assert (= (and b!3664737 res!1487987) b!3664743))

(assert (= (and b!3664743 res!1487988) b!3664736))

(assert (= (and b!3664746 (not res!1487986)) b!3664738))

(assert (= (and b!3664738 res!1487989) b!3664735))

(assert (= (and b!3664735 (not res!1487992)) b!3664741))

(assert (= (and b!3664741 (not res!1487990)) b!3664734))

(assert (= (or b!3664744 b!3664735 b!3664737) bm!265183))

(declare-fun m!4172383 () Bool)

(assert (=> b!3664741 m!4172383))

(assert (=> b!3664741 m!4172383))

(declare-fun m!4172385 () Bool)

(assert (=> b!3664741 m!4172385))

(assert (=> b!3664743 m!4172383))

(assert (=> b!3664743 m!4172383))

(assert (=> b!3664743 m!4172385))

(declare-fun m!4172387 () Bool)

(assert (=> b!3664736 m!4172387))

(assert (=> b!3664733 m!4172387))

(assert (=> b!3664733 m!4172387))

(declare-fun m!4172389 () Bool)

(assert (=> b!3664733 m!4172389))

(assert (=> b!3664733 m!4172383))

(assert (=> b!3664733 m!4172389))

(assert (=> b!3664733 m!4172383))

(declare-fun m!4172391 () Bool)

(assert (=> b!3664733 m!4172391))

(declare-fun m!4172393 () Bool)

(assert (=> b!3664745 m!4172393))

(assert (=> b!3664734 m!4172387))

(declare-fun m!4172395 () Bool)

(assert (=> d!1076492 m!4172395))

(declare-fun m!4172397 () Bool)

(assert (=> d!1076492 m!4172397))

(assert (=> bm!265183 m!4172395))

(assert (=> b!3663389 d!1076492))

(declare-fun d!1076494 () Bool)

(assert (=> d!1076494 (= (isEmpty!22928 (maxPrefixOneRule!2063 thiss!23823 (rule!8618 lt!1274941) lt!1274940)) (not ((_ is Some!8231) (maxPrefixOneRule!2063 thiss!23823 (rule!8618 lt!1274941) lt!1274940))))))

(assert (=> b!3663389 d!1076494))

(assert (=> b!3663389 d!1076252))

(declare-fun b!3664747 () Bool)

(declare-fun res!1487996 () Bool)

(declare-fun e!2269126 () Bool)

(assert (=> b!3664747 (=> (not res!1487996) (not e!2269126))))

(declare-fun lt!1275542 () Option!8232)

(assert (=> b!3664747 (= res!1487996 (= (rule!8618 (_1!22390 (get!12743 lt!1275542))) (rule!8618 lt!1274941)))))

(declare-fun b!3664748 () Bool)

(declare-fun e!2269125 () Bool)

(assert (=> b!3664748 (= e!2269125 e!2269126)))

(declare-fun res!1487997 () Bool)

(assert (=> b!3664748 (=> (not res!1487997) (not e!2269126))))

(assert (=> b!3664748 (= res!1487997 (matchR!5130 (regex!5802 (rule!8618 lt!1274941)) (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275542))))))))

(declare-fun b!3664749 () Bool)

(declare-fun e!2269123 () Option!8232)

(assert (=> b!3664749 (= e!2269123 None!8231)))

(declare-fun b!3664750 () Bool)

(declare-fun res!1487998 () Bool)

(assert (=> b!3664750 (=> (not res!1487998) (not e!2269126))))

(assert (=> b!3664750 (= res!1487998 (= (value!185817 (_1!22390 (get!12743 lt!1275542))) (apply!9304 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275542)))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 (get!12743 lt!1275542)))))))))

(declare-fun d!1076496 () Bool)

(assert (=> d!1076496 e!2269125))

(declare-fun res!1487999 () Bool)

(assert (=> d!1076496 (=> res!1487999 e!2269125)))

(assert (=> d!1076496 (= res!1487999 (isEmpty!22928 lt!1275542))))

(assert (=> d!1076496 (= lt!1275542 e!2269123)))

(declare-fun c!633555 () Bool)

(declare-fun lt!1275540 () tuple2!38518)

(assert (=> d!1076496 (= c!633555 (isEmpty!22924 (_1!22393 lt!1275540)))))

(assert (=> d!1076496 (= lt!1275540 (findLongestMatch!986 (regex!5802 (rule!8618 lt!1274941)) lt!1274940))))

(assert (=> d!1076496 (ruleValid!2066 thiss!23823 (rule!8618 lt!1274941))))

(assert (=> d!1076496 (= (maxPrefixOneRule!2063 thiss!23823 (rule!8618 lt!1274941) lt!1274940) lt!1275542)))

(declare-fun b!3664751 () Bool)

(declare-fun e!2269124 () Bool)

(assert (=> b!3664751 (= e!2269124 (matchR!5130 (regex!5802 (rule!8618 lt!1274941)) (_1!22393 (findLongestMatchInner!1071 (regex!5802 (rule!8618 lt!1274941)) Nil!38646 (size!29528 Nil!38646) lt!1274940 lt!1274940 (size!29528 lt!1274940)))))))

(declare-fun b!3664752 () Bool)

(assert (=> b!3664752 (= e!2269126 (= (size!29527 (_1!22390 (get!12743 lt!1275542))) (size!29528 (originalCharacters!6516 (_1!22390 (get!12743 lt!1275542))))))))

(declare-fun b!3664753 () Bool)

(declare-fun res!1487995 () Bool)

(assert (=> b!3664753 (=> (not res!1487995) (not e!2269126))))

(assert (=> b!3664753 (= res!1487995 (< (size!29528 (_2!22390 (get!12743 lt!1275542))) (size!29528 lt!1274940)))))

(declare-fun b!3664754 () Bool)

(declare-fun res!1487994 () Bool)

(assert (=> b!3664754 (=> (not res!1487994) (not e!2269126))))

(assert (=> b!3664754 (= res!1487994 (= (++!9618 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275542)))) (_2!22390 (get!12743 lt!1275542))) lt!1274940))))

(declare-fun b!3664755 () Bool)

(assert (=> b!3664755 (= e!2269123 (Some!8231 (tuple2!38513 (Token!10971 (apply!9304 (transformation!5802 (rule!8618 lt!1274941)) (seqFromList!4351 (_1!22393 lt!1275540))) (rule!8618 lt!1274941) (size!29529 (seqFromList!4351 (_1!22393 lt!1275540))) (_1!22393 lt!1275540)) (_2!22393 lt!1275540))))))

(declare-fun lt!1275539 () Unit!55997)

(assert (=> b!3664755 (= lt!1275539 (longestMatchIsAcceptedByMatchOrIsEmpty!1044 (regex!5802 (rule!8618 lt!1274941)) lt!1274940))))

(declare-fun res!1487993 () Bool)

(assert (=> b!3664755 (= res!1487993 (isEmpty!22924 (_1!22393 (findLongestMatchInner!1071 (regex!5802 (rule!8618 lt!1274941)) Nil!38646 (size!29528 Nil!38646) lt!1274940 lt!1274940 (size!29528 lt!1274940)))))))

(assert (=> b!3664755 (=> res!1487993 e!2269124)))

(assert (=> b!3664755 e!2269124))

(declare-fun lt!1275543 () Unit!55997)

(assert (=> b!3664755 (= lt!1275543 lt!1275539)))

(declare-fun lt!1275541 () Unit!55997)

(assert (=> b!3664755 (= lt!1275541 (lemmaSemiInverse!1551 (transformation!5802 (rule!8618 lt!1274941)) (seqFromList!4351 (_1!22393 lt!1275540))))))

(assert (= (and d!1076496 c!633555) b!3664749))

(assert (= (and d!1076496 (not c!633555)) b!3664755))

(assert (= (and b!3664755 (not res!1487993)) b!3664751))

(assert (= (and d!1076496 (not res!1487999)) b!3664748))

(assert (= (and b!3664748 res!1487997) b!3664754))

(assert (= (and b!3664754 res!1487994) b!3664753))

(assert (= (and b!3664753 res!1487995) b!3664747))

(assert (= (and b!3664747 res!1487996) b!3664750))

(assert (= (and b!3664750 res!1487998) b!3664752))

(declare-fun m!4172399 () Bool)

(assert (=> b!3664752 m!4172399))

(declare-fun m!4172401 () Bool)

(assert (=> b!3664752 m!4172401))

(assert (=> b!3664754 m!4172399))

(declare-fun m!4172403 () Bool)

(assert (=> b!3664754 m!4172403))

(assert (=> b!3664754 m!4172403))

(declare-fun m!4172405 () Bool)

(assert (=> b!3664754 m!4172405))

(assert (=> b!3664754 m!4172405))

(declare-fun m!4172407 () Bool)

(assert (=> b!3664754 m!4172407))

(declare-fun m!4172409 () Bool)

(assert (=> d!1076496 m!4172409))

(declare-fun m!4172411 () Bool)

(assert (=> d!1076496 m!4172411))

(declare-fun m!4172413 () Bool)

(assert (=> d!1076496 m!4172413))

(declare-fun m!4172415 () Bool)

(assert (=> d!1076496 m!4172415))

(assert (=> b!3664748 m!4172399))

(assert (=> b!3664748 m!4172403))

(assert (=> b!3664748 m!4172403))

(assert (=> b!3664748 m!4172405))

(assert (=> b!3664748 m!4172405))

(declare-fun m!4172421 () Bool)

(assert (=> b!3664748 m!4172421))

(declare-fun m!4172423 () Bool)

(assert (=> b!3664755 m!4172423))

(declare-fun m!4172425 () Bool)

(assert (=> b!3664755 m!4172425))

(assert (=> b!3664755 m!4170751))

(declare-fun m!4172429 () Bool)

(assert (=> b!3664755 m!4172429))

(declare-fun m!4172431 () Bool)

(assert (=> b!3664755 m!4172431))

(assert (=> b!3664755 m!4172423))

(declare-fun m!4172433 () Bool)

(assert (=> b!3664755 m!4172433))

(assert (=> b!3664755 m!4172429))

(assert (=> b!3664755 m!4172423))

(assert (=> b!3664755 m!4170751))

(assert (=> b!3664755 m!4172423))

(declare-fun m!4172435 () Bool)

(assert (=> b!3664755 m!4172435))

(declare-fun m!4172437 () Bool)

(assert (=> b!3664755 m!4172437))

(declare-fun m!4172439 () Bool)

(assert (=> b!3664755 m!4172439))

(assert (=> b!3664753 m!4172399))

(declare-fun m!4172445 () Bool)

(assert (=> b!3664753 m!4172445))

(assert (=> b!3664753 m!4172429))

(assert (=> b!3664750 m!4172399))

(declare-fun m!4172447 () Bool)

(assert (=> b!3664750 m!4172447))

(assert (=> b!3664750 m!4172447))

(declare-fun m!4172449 () Bool)

(assert (=> b!3664750 m!4172449))

(assert (=> b!3664747 m!4172399))

(assert (=> b!3664751 m!4170751))

(assert (=> b!3664751 m!4172429))

(assert (=> b!3664751 m!4170751))

(assert (=> b!3664751 m!4172429))

(assert (=> b!3664751 m!4172431))

(declare-fun m!4172455 () Bool)

(assert (=> b!3664751 m!4172455))

(assert (=> b!3663389 d!1076496))

(declare-fun b!3664780 () Bool)

(declare-fun e!2269146 () Option!8232)

(declare-fun lt!1275546 () Option!8232)

(declare-fun lt!1275547 () Option!8232)

(assert (=> b!3664780 (= e!2269146 (ite (and ((_ is None!8231) lt!1275546) ((_ is None!8231) lt!1275547)) None!8231 (ite ((_ is None!8231) lt!1275547) lt!1275546 (ite ((_ is None!8231) lt!1275546) lt!1275547 (ite (>= (size!29527 (_1!22390 (v!38127 lt!1275546))) (size!29527 (_1!22390 (v!38127 lt!1275547)))) lt!1275546 lt!1275547)))))))

(declare-fun call!265196 () Option!8232)

(assert (=> b!3664780 (= lt!1275546 call!265196)))

(assert (=> b!3664780 (= lt!1275547 (maxPrefix!2925 thiss!23823 (t!298754 (t!298754 rules!3307)) lt!1274713))))

(declare-fun b!3664781 () Bool)

(declare-fun e!2269145 () Bool)

(declare-fun lt!1275549 () Option!8232)

(assert (=> b!3664781 (= e!2269145 (contains!7670 (t!298754 rules!3307) (rule!8618 (_1!22390 (get!12743 lt!1275549)))))))

(declare-fun bm!265191 () Bool)

(assert (=> bm!265191 (= call!265196 (maxPrefixOneRule!2063 thiss!23823 (h!44067 (t!298754 rules!3307)) lt!1274713))))

(declare-fun b!3664782 () Bool)

(declare-fun res!1488015 () Bool)

(assert (=> b!3664782 (=> (not res!1488015) (not e!2269145))))

(assert (=> b!3664782 (= res!1488015 (= (++!9618 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275549)))) (_2!22390 (get!12743 lt!1275549))) lt!1274713))))

(declare-fun b!3664783 () Bool)

(declare-fun res!1488013 () Bool)

(assert (=> b!3664783 (=> (not res!1488013) (not e!2269145))))

(assert (=> b!3664783 (= res!1488013 (= (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275549)))) (originalCharacters!6516 (_1!22390 (get!12743 lt!1275549)))))))

(declare-fun d!1076506 () Bool)

(declare-fun e!2269144 () Bool)

(assert (=> d!1076506 e!2269144))

(declare-fun res!1488014 () Bool)

(assert (=> d!1076506 (=> res!1488014 e!2269144)))

(assert (=> d!1076506 (= res!1488014 (isEmpty!22928 lt!1275549))))

(assert (=> d!1076506 (= lt!1275549 e!2269146)))

(declare-fun c!633563 () Bool)

(assert (=> d!1076506 (= c!633563 (and ((_ is Cons!38647) (t!298754 rules!3307)) ((_ is Nil!38647) (t!298754 (t!298754 rules!3307)))))))

(declare-fun lt!1275550 () Unit!55997)

(declare-fun lt!1275548 () Unit!55997)

(assert (=> d!1076506 (= lt!1275550 lt!1275548)))

(assert (=> d!1076506 (isPrefix!3165 lt!1274713 lt!1274713)))

(assert (=> d!1076506 (= lt!1275548 (lemmaIsPrefixRefl!1998 lt!1274713 lt!1274713))))

(assert (=> d!1076506 (rulesValidInductive!2061 thiss!23823 (t!298754 rules!3307))))

(assert (=> d!1076506 (= (maxPrefix!2925 thiss!23823 (t!298754 rules!3307) lt!1274713) lt!1275549)))

(declare-fun b!3664784 () Bool)

(assert (=> b!3664784 (= e!2269144 e!2269145)))

(declare-fun res!1488011 () Bool)

(assert (=> b!3664784 (=> (not res!1488011) (not e!2269145))))

(assert (=> b!3664784 (= res!1488011 (isDefined!6464 lt!1275549))))

(declare-fun b!3664785 () Bool)

(assert (=> b!3664785 (= e!2269146 call!265196)))

(declare-fun b!3664786 () Bool)

(declare-fun res!1488016 () Bool)

(assert (=> b!3664786 (=> (not res!1488016) (not e!2269145))))

(assert (=> b!3664786 (= res!1488016 (< (size!29528 (_2!22390 (get!12743 lt!1275549))) (size!29528 lt!1274713)))))

(declare-fun b!3664787 () Bool)

(declare-fun res!1488012 () Bool)

(assert (=> b!3664787 (=> (not res!1488012) (not e!2269145))))

(assert (=> b!3664787 (= res!1488012 (= (value!185817 (_1!22390 (get!12743 lt!1275549))) (apply!9304 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275549)))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 (get!12743 lt!1275549)))))))))

(declare-fun b!3664788 () Bool)

(declare-fun res!1488010 () Bool)

(assert (=> b!3664788 (=> (not res!1488010) (not e!2269145))))

(assert (=> b!3664788 (= res!1488010 (matchR!5130 (regex!5802 (rule!8618 (_1!22390 (get!12743 lt!1275549)))) (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275549))))))))

(assert (= (and d!1076506 c!633563) b!3664785))

(assert (= (and d!1076506 (not c!633563)) b!3664780))

(assert (= (or b!3664785 b!3664780) bm!265191))

(assert (= (and d!1076506 (not res!1488014)) b!3664784))

(assert (= (and b!3664784 res!1488011) b!3664783))

(assert (= (and b!3664783 res!1488013) b!3664786))

(assert (= (and b!3664786 res!1488016) b!3664782))

(assert (= (and b!3664782 res!1488015) b!3664787))

(assert (= (and b!3664787 res!1488012) b!3664788))

(assert (= (and b!3664788 res!1488010) b!3664781))

(declare-fun m!4172467 () Bool)

(assert (=> b!3664781 m!4172467))

(declare-fun m!4172469 () Bool)

(assert (=> b!3664781 m!4172469))

(assert (=> b!3664783 m!4172467))

(declare-fun m!4172473 () Bool)

(assert (=> b!3664783 m!4172473))

(assert (=> b!3664783 m!4172473))

(declare-fun m!4172477 () Bool)

(assert (=> b!3664783 m!4172477))

(assert (=> b!3664787 m!4172467))

(declare-fun m!4172481 () Bool)

(assert (=> b!3664787 m!4172481))

(assert (=> b!3664787 m!4172481))

(declare-fun m!4172483 () Bool)

(assert (=> b!3664787 m!4172483))

(assert (=> b!3664782 m!4172467))

(assert (=> b!3664782 m!4172473))

(assert (=> b!3664782 m!4172473))

(assert (=> b!3664782 m!4172477))

(assert (=> b!3664782 m!4172477))

(declare-fun m!4172485 () Bool)

(assert (=> b!3664782 m!4172485))

(assert (=> b!3664788 m!4172467))

(assert (=> b!3664788 m!4172473))

(assert (=> b!3664788 m!4172473))

(assert (=> b!3664788 m!4172477))

(assert (=> b!3664788 m!4172477))

(declare-fun m!4172487 () Bool)

(assert (=> b!3664788 m!4172487))

(assert (=> b!3664786 m!4172467))

(declare-fun m!4172489 () Bool)

(assert (=> b!3664786 m!4172489))

(assert (=> b!3664786 m!4170547))

(declare-fun m!4172491 () Bool)

(assert (=> d!1076506 m!4172491))

(assert (=> d!1076506 m!4170551))

(assert (=> d!1076506 m!4170553))

(assert (=> d!1076506 m!4171293))

(declare-fun m!4172493 () Bool)

(assert (=> bm!265191 m!4172493))

(declare-fun m!4172495 () Bool)

(assert (=> b!3664780 m!4172495))

(declare-fun m!4172497 () Bool)

(assert (=> b!3664784 m!4172497))

(assert (=> b!3663478 d!1076506))

(assert (=> b!3663703 d!1076044))

(assert (=> b!3663506 d!1076052))

(assert (=> b!3663506 d!1075842))

(declare-fun b!3664816 () Bool)

(declare-fun e!2269160 () Bool)

(assert (=> b!3664816 (= e!2269160 (>= (size!29528 (++!9618 lt!1274731 suffix!1395)) (size!29528 lt!1274731)))))

(declare-fun b!3664815 () Bool)

(declare-fun e!2269162 () Bool)

(assert (=> b!3664815 (= e!2269162 (isPrefix!3165 (tail!5673 lt!1274731) (tail!5673 (++!9618 lt!1274731 suffix!1395))))))

(declare-fun b!3664814 () Bool)

(declare-fun res!1488030 () Bool)

(assert (=> b!3664814 (=> (not res!1488030) (not e!2269162))))

(assert (=> b!3664814 (= res!1488030 (= (head!7834 lt!1274731) (head!7834 (++!9618 lt!1274731 suffix!1395))))))

(declare-fun d!1076514 () Bool)

(assert (=> d!1076514 e!2269160))

(declare-fun res!1488028 () Bool)

(assert (=> d!1076514 (=> res!1488028 e!2269160)))

(declare-fun lt!1275553 () Bool)

(assert (=> d!1076514 (= res!1488028 (not lt!1275553))))

(declare-fun e!2269161 () Bool)

(assert (=> d!1076514 (= lt!1275553 e!2269161)))

(declare-fun res!1488029 () Bool)

(assert (=> d!1076514 (=> res!1488029 e!2269161)))

(assert (=> d!1076514 (= res!1488029 ((_ is Nil!38646) lt!1274731))))

(assert (=> d!1076514 (= (isPrefix!3165 lt!1274731 (++!9618 lt!1274731 suffix!1395)) lt!1275553)))

(declare-fun b!3664813 () Bool)

(assert (=> b!3664813 (= e!2269161 e!2269162)))

(declare-fun res!1488027 () Bool)

(assert (=> b!3664813 (=> (not res!1488027) (not e!2269162))))

(assert (=> b!3664813 (= res!1488027 (not ((_ is Nil!38646) (++!9618 lt!1274731 suffix!1395))))))

(assert (= (and d!1076514 (not res!1488029)) b!3664813))

(assert (= (and b!3664813 res!1488027) b!3664814))

(assert (= (and b!3664814 res!1488030) b!3664815))

(assert (= (and d!1076514 (not res!1488028)) b!3664816))

(assert (=> b!3664816 m!4169937))

(assert (=> b!3664816 m!4171687))

(assert (=> b!3664816 m!4169895))

(assert (=> b!3664815 m!4170575))

(assert (=> b!3664815 m!4169937))

(assert (=> b!3664815 m!4171733))

(assert (=> b!3664815 m!4170575))

(assert (=> b!3664815 m!4171733))

(declare-fun m!4172509 () Bool)

(assert (=> b!3664815 m!4172509))

(assert (=> b!3664814 m!4170581))

(assert (=> b!3664814 m!4169937))

(assert (=> b!3664814 m!4171739))

(assert (=> d!1075640 d!1076514))

(assert (=> d!1075640 d!1075644))

(declare-fun d!1076518 () Bool)

(assert (=> d!1076518 (isPrefix!3165 lt!1274731 (++!9618 lt!1274731 suffix!1395))))

(assert (=> d!1076518 true))

(declare-fun _$46!1474 () Unit!55997)

(assert (=> d!1076518 (= (choose!21712 lt!1274731 suffix!1395) _$46!1474)))

(declare-fun bs!572887 () Bool)

(assert (= bs!572887 d!1076518))

(assert (=> bs!572887 m!4169937))

(assert (=> bs!572887 m!4169937))

(assert (=> bs!572887 m!4170139))

(assert (=> d!1075640 d!1076518))

(declare-fun d!1076524 () Bool)

(assert (=> d!1076524 (= (isEmpty!22924 (tail!5673 lt!1274729)) ((_ is Nil!38646) (tail!5673 lt!1274729)))))

(assert (=> b!3663647 d!1076524))

(assert (=> b!3663647 d!1076214))

(assert (=> d!1075854 d!1075842))

(assert (=> d!1075854 d!1075818))

(assert (=> d!1075854 d!1075846))

(assert (=> d!1075854 d!1075852))

(declare-fun d!1076530 () Bool)

(assert (=> d!1076530 (= (maxPrefixOneRule!2063 thiss!23823 (rule!8618 (_1!22390 lt!1274714)) lt!1274713) (Some!8231 (tuple2!38513 (Token!10971 (apply!9304 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))) (seqFromList!4351 lt!1274729)) (rule!8618 (_1!22390 lt!1274714)) (size!29528 lt!1274729) lt!1274729) (_2!22390 lt!1274714))))))

(assert (=> d!1076530 true))

(declare-fun _$59!581 () Unit!55997)

(assert (=> d!1076530 (= (choose!21724 thiss!23823 rules!3307 lt!1274729 lt!1274713 (_2!22390 lt!1274714) (rule!8618 (_1!22390 lt!1274714))) _$59!581)))

(declare-fun bs!572892 () Bool)

(assert (= bs!572892 d!1076530))

(assert (=> bs!572892 m!4169847))

(assert (=> bs!572892 m!4169841))

(assert (=> bs!572892 m!4169841))

(assert (=> bs!572892 m!4169843))

(assert (=> bs!572892 m!4169845))

(assert (=> d!1075854 d!1076530))

(assert (=> d!1075854 d!1075848))

(assert (=> b!3663725 d!1075960))

(declare-fun d!1076548 () Bool)

(declare-fun lt!1275567 () Int)

(assert (=> d!1076548 (>= lt!1275567 0)))

(declare-fun e!2269182 () Int)

(assert (=> d!1076548 (= lt!1275567 e!2269182)))

(declare-fun c!633580 () Bool)

(assert (=> d!1076548 (= c!633580 ((_ is Nil!38646) (originalCharacters!6516 token!511)))))

(assert (=> d!1076548 (= (size!29528 (originalCharacters!6516 token!511)) lt!1275567)))

(declare-fun b!3664851 () Bool)

(assert (=> b!3664851 (= e!2269182 0)))

(declare-fun b!3664852 () Bool)

(assert (=> b!3664852 (= e!2269182 (+ 1 (size!29528 (t!298753 (originalCharacters!6516 token!511)))))))

(assert (= (and d!1076548 c!633580) b!3664851))

(assert (= (and d!1076548 (not c!633580)) b!3664852))

(declare-fun m!4172607 () Bool)

(assert (=> b!3664852 m!4172607))

(assert (=> b!3663111 d!1076548))

(declare-fun d!1076550 () Bool)

(assert (=> d!1076550 true))

(declare-fun lt!1275570 () Bool)

(assert (=> d!1076550 (= lt!1275570 (rulesValidInductive!2061 thiss!23823 rules!3307))))

(declare-fun lambda!124631 () Int)

(declare-fun forall!8156 (List!38771 Int) Bool)

(assert (=> d!1076550 (= lt!1275570 (forall!8156 rules!3307 lambda!124631))))

(assert (=> d!1076550 (= (rulesValid!2232 thiss!23823 rules!3307) lt!1275570)))

(declare-fun bs!572893 () Bool)

(assert (= bs!572893 d!1076550))

(assert (=> bs!572893 m!4170555))

(declare-fun m!4172609 () Bool)

(assert (=> bs!572893 m!4172609))

(assert (=> d!1075840 d!1076550))

(declare-fun d!1076552 () Bool)

(declare-fun lt!1275571 () Bool)

(assert (=> d!1076552 (= lt!1275571 (select (content!5591 rules!3307) (get!12744 lt!1274834)))))

(declare-fun e!2269184 () Bool)

(assert (=> d!1076552 (= lt!1275571 e!2269184)))

(declare-fun res!1488048 () Bool)

(assert (=> d!1076552 (=> (not res!1488048) (not e!2269184))))

(assert (=> d!1076552 (= res!1488048 ((_ is Cons!38647) rules!3307))))

(assert (=> d!1076552 (= (contains!7670 rules!3307 (get!12744 lt!1274834)) lt!1275571)))

(declare-fun b!3664855 () Bool)

(declare-fun e!2269183 () Bool)

(assert (=> b!3664855 (= e!2269184 e!2269183)))

(declare-fun res!1488047 () Bool)

(assert (=> b!3664855 (=> res!1488047 e!2269183)))

(assert (=> b!3664855 (= res!1488047 (= (h!44067 rules!3307) (get!12744 lt!1274834)))))

(declare-fun b!3664856 () Bool)

(assert (=> b!3664856 (= e!2269183 (contains!7670 (t!298754 rules!3307) (get!12744 lt!1274834)))))

(assert (= (and d!1076552 res!1488048) b!3664855))

(assert (= (and b!3664855 (not res!1488047)) b!3664856))

(assert (=> d!1076552 m!4170047))

(assert (=> d!1076552 m!4170191))

(declare-fun m!4172611 () Bool)

(assert (=> d!1076552 m!4172611))

(assert (=> b!3664856 m!4170191))

(declare-fun m!4172613 () Bool)

(assert (=> b!3664856 m!4172613))

(assert (=> b!3663241 d!1076552))

(declare-fun d!1076554 () Bool)

(assert (=> d!1076554 (= (get!12744 lt!1274834) (v!38128 lt!1274834))))

(assert (=> b!3663241 d!1076554))

(assert (=> d!1075912 d!1076296))

(assert (=> d!1075912 d!1075594))

(declare-fun d!1076556 () Bool)

(assert (=> d!1076556 (not (contains!7669 (usedCharacters!1014 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274726))))

(assert (=> d!1076556 true))

(declare-fun _$75!360 () Unit!55997)

(assert (=> d!1076556 (= (choose!21720 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8618 (_1!22390 lt!1274714)) lt!1274726) _$75!360)))

(declare-fun bs!572894 () Bool)

(assert (= bs!572894 d!1076556))

(assert (=> bs!572894 m!4169821))

(assert (=> bs!572894 m!4169821))

(assert (=> bs!572894 m!4170705))

(assert (=> d!1075912 d!1076556))

(assert (=> d!1075912 d!1075840))

(declare-fun bm!265201 () Bool)

(declare-fun call!265206 () Bool)

(assert (=> bm!265201 (= call!265206 (isEmpty!22924 (_1!22393 (findLongestMatchInner!1071 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) Nil!38646 (size!29528 Nil!38646) lt!1274713 lt!1274713 (size!29528 lt!1274713)))))))

(declare-fun b!3664857 () Bool)

(declare-fun e!2269188 () Bool)

(assert (=> b!3664857 (= e!2269188 (matchR!5130 (derivativeStep!3224 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) (head!7834 (_1!22393 (findLongestMatchInner!1071 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) Nil!38646 (size!29528 Nil!38646) lt!1274713 lt!1274713 (size!29528 lt!1274713))))) (tail!5673 (_1!22393 (findLongestMatchInner!1071 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) Nil!38646 (size!29528 Nil!38646) lt!1274713 lt!1274713 (size!29528 lt!1274713))))))))

(declare-fun b!3664858 () Bool)

(declare-fun e!2269189 () Bool)

(assert (=> b!3664858 (= e!2269189 (not (= (head!7834 (_1!22393 (findLongestMatchInner!1071 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) Nil!38646 (size!29528 Nil!38646) lt!1274713 lt!1274713 (size!29528 lt!1274713)))) (c!633134 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))))

(declare-fun d!1076558 () Bool)

(declare-fun e!2269186 () Bool)

(assert (=> d!1076558 e!2269186))

(declare-fun c!633582 () Bool)

(assert (=> d!1076558 (= c!633582 ((_ is EmptyExpr!10561) (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun lt!1275572 () Bool)

(assert (=> d!1076558 (= lt!1275572 e!2269188)))

(declare-fun c!633584 () Bool)

(assert (=> d!1076558 (= c!633584 (isEmpty!22924 (_1!22393 (findLongestMatchInner!1071 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) Nil!38646 (size!29528 Nil!38646) lt!1274713 lt!1274713 (size!29528 lt!1274713)))))))

(assert (=> d!1076558 (validRegex!4836 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))

(assert (=> d!1076558 (= (matchR!5130 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) (_1!22393 (findLongestMatchInner!1071 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) Nil!38646 (size!29528 Nil!38646) lt!1274713 lt!1274713 (size!29528 lt!1274713)))) lt!1275572)))

(declare-fun b!3664859 () Bool)

(declare-fun e!2269185 () Bool)

(assert (=> b!3664859 (= e!2269185 e!2269189)))

(declare-fun res!1488056 () Bool)

(assert (=> b!3664859 (=> res!1488056 e!2269189)))

(assert (=> b!3664859 (= res!1488056 call!265206)))

(declare-fun b!3664860 () Bool)

(declare-fun e!2269190 () Bool)

(assert (=> b!3664860 (= e!2269190 (= (head!7834 (_1!22393 (findLongestMatchInner!1071 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) Nil!38646 (size!29528 Nil!38646) lt!1274713 lt!1274713 (size!29528 lt!1274713)))) (c!633134 (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))))

(declare-fun b!3664861 () Bool)

(declare-fun res!1488051 () Bool)

(assert (=> b!3664861 (=> (not res!1488051) (not e!2269190))))

(assert (=> b!3664861 (= res!1488051 (not call!265206))))

(declare-fun b!3664862 () Bool)

(declare-fun e!2269191 () Bool)

(assert (=> b!3664862 (= e!2269191 e!2269185)))

(declare-fun res!1488053 () Bool)

(assert (=> b!3664862 (=> (not res!1488053) (not e!2269185))))

(assert (=> b!3664862 (= res!1488053 (not lt!1275572))))

(declare-fun b!3664863 () Bool)

(declare-fun e!2269187 () Bool)

(assert (=> b!3664863 (= e!2269187 (not lt!1275572))))

(declare-fun b!3664864 () Bool)

(assert (=> b!3664864 (= e!2269186 e!2269187)))

(declare-fun c!633583 () Bool)

(assert (=> b!3664864 (= c!633583 ((_ is EmptyLang!10561) (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun b!3664865 () Bool)

(declare-fun res!1488054 () Bool)

(assert (=> b!3664865 (=> res!1488054 e!2269189)))

(assert (=> b!3664865 (= res!1488054 (not (isEmpty!22924 (tail!5673 (_1!22393 (findLongestMatchInner!1071 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) Nil!38646 (size!29528 Nil!38646) lt!1274713 lt!1274713 (size!29528 lt!1274713)))))))))

(declare-fun b!3664866 () Bool)

(declare-fun res!1488055 () Bool)

(assert (=> b!3664866 (=> res!1488055 e!2269191)))

(assert (=> b!3664866 (= res!1488055 (not ((_ is ElementMatch!10561) (regex!5802 (rule!8618 (_1!22390 lt!1274714))))))))

(assert (=> b!3664866 (= e!2269187 e!2269191)))

(declare-fun b!3664867 () Bool)

(declare-fun res!1488052 () Bool)

(assert (=> b!3664867 (=> (not res!1488052) (not e!2269190))))

(assert (=> b!3664867 (= res!1488052 (isEmpty!22924 (tail!5673 (_1!22393 (findLongestMatchInner!1071 (regex!5802 (rule!8618 (_1!22390 lt!1274714))) Nil!38646 (size!29528 Nil!38646) lt!1274713 lt!1274713 (size!29528 lt!1274713))))))))

(declare-fun b!3664868 () Bool)

(assert (=> b!3664868 (= e!2269186 (= lt!1275572 call!265206))))

(declare-fun b!3664869 () Bool)

(assert (=> b!3664869 (= e!2269188 (nullable!3675 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun b!3664870 () Bool)

(declare-fun res!1488050 () Bool)

(assert (=> b!3664870 (=> res!1488050 e!2269191)))

(assert (=> b!3664870 (= res!1488050 e!2269190)))

(declare-fun res!1488049 () Bool)

(assert (=> b!3664870 (=> (not res!1488049) (not e!2269190))))

(assert (=> b!3664870 (= res!1488049 lt!1275572)))

(assert (= (and d!1076558 c!633584) b!3664869))

(assert (= (and d!1076558 (not c!633584)) b!3664857))

(assert (= (and d!1076558 c!633582) b!3664868))

(assert (= (and d!1076558 (not c!633582)) b!3664864))

(assert (= (and b!3664864 c!633583) b!3664863))

(assert (= (and b!3664864 (not c!633583)) b!3664866))

(assert (= (and b!3664866 (not res!1488055)) b!3664870))

(assert (= (and b!3664870 res!1488049) b!3664861))

(assert (= (and b!3664861 res!1488051) b!3664867))

(assert (= (and b!3664867 res!1488052) b!3664860))

(assert (= (and b!3664870 (not res!1488050)) b!3664862))

(assert (= (and b!3664862 res!1488053) b!3664859))

(assert (= (and b!3664859 (not res!1488056)) b!3664865))

(assert (= (and b!3664865 (not res!1488054)) b!3664858))

(assert (= (or b!3664868 b!3664859 b!3664861) bm!265201))

(declare-fun m!4172615 () Bool)

(assert (=> b!3664865 m!4172615))

(assert (=> b!3664865 m!4172615))

(declare-fun m!4172617 () Bool)

(assert (=> b!3664865 m!4172617))

(assert (=> b!3664867 m!4172615))

(assert (=> b!3664867 m!4172615))

(assert (=> b!3664867 m!4172617))

(declare-fun m!4172619 () Bool)

(assert (=> b!3664860 m!4172619))

(assert (=> b!3664857 m!4172619))

(assert (=> b!3664857 m!4172619))

(declare-fun m!4172621 () Bool)

(assert (=> b!3664857 m!4172621))

(assert (=> b!3664857 m!4172615))

(assert (=> b!3664857 m!4172621))

(assert (=> b!3664857 m!4172615))

(declare-fun m!4172623 () Bool)

(assert (=> b!3664857 m!4172623))

(assert (=> b!3664869 m!4170843))

(assert (=> b!3664858 m!4172619))

(assert (=> d!1076558 m!4170759))

(assert (=> d!1076558 m!4170009))

(assert (=> bm!265201 m!4170759))

(assert (=> b!3663584 d!1076558))

(assert (=> b!3663584 d!1076338))

(assert (=> b!3663584 d!1076304))

(assert (=> b!3663584 d!1076052))

(declare-fun b!3664871 () Bool)

(declare-fun c!633587 () Bool)

(assert (=> b!3664871 (= c!633587 ((_ is Star!10561) (ite c!633245 (reg!10890 (regex!5802 rule!403)) (ite c!633244 (regTwo!21635 (regex!5802 rule!403)) (regOne!21634 (regex!5802 rule!403))))))))

(declare-fun e!2269193 () List!38770)

(declare-fun e!2269195 () List!38770)

(assert (=> b!3664871 (= e!2269193 e!2269195)))

(declare-fun b!3664872 () Bool)

(assert (=> b!3664872 (= e!2269193 (Cons!38646 (c!633134 (ite c!633245 (reg!10890 (regex!5802 rule!403)) (ite c!633244 (regTwo!21635 (regex!5802 rule!403)) (regOne!21634 (regex!5802 rule!403))))) Nil!38646))))

(declare-fun b!3664873 () Bool)

(declare-fun e!2269192 () List!38770)

(assert (=> b!3664873 (= e!2269195 e!2269192)))

(declare-fun c!633586 () Bool)

(assert (=> b!3664873 (= c!633586 ((_ is Union!10561) (ite c!633245 (reg!10890 (regex!5802 rule!403)) (ite c!633244 (regTwo!21635 (regex!5802 rule!403)) (regOne!21634 (regex!5802 rule!403))))))))

(declare-fun bm!265202 () Bool)

(declare-fun call!265208 () List!38770)

(assert (=> bm!265202 (= call!265208 (usedCharacters!1014 (ite c!633586 (regOne!21635 (ite c!633245 (reg!10890 (regex!5802 rule!403)) (ite c!633244 (regTwo!21635 (regex!5802 rule!403)) (regOne!21634 (regex!5802 rule!403))))) (regTwo!21634 (ite c!633245 (reg!10890 (regex!5802 rule!403)) (ite c!633244 (regTwo!21635 (regex!5802 rule!403)) (regOne!21634 (regex!5802 rule!403))))))))))

(declare-fun b!3664874 () Bool)

(declare-fun call!265209 () List!38770)

(assert (=> b!3664874 (= e!2269195 call!265209)))

(declare-fun b!3664875 () Bool)

(declare-fun e!2269194 () List!38770)

(assert (=> b!3664875 (= e!2269194 Nil!38646)))

(declare-fun call!265210 () List!38770)

(declare-fun call!265207 () List!38770)

(declare-fun bm!265204 () Bool)

(assert (=> bm!265204 (= call!265207 (++!9618 (ite c!633586 call!265208 call!265210) (ite c!633586 call!265210 call!265208)))))

(declare-fun b!3664876 () Bool)

(assert (=> b!3664876 (= e!2269192 call!265207)))

(declare-fun b!3664877 () Bool)

(assert (=> b!3664877 (= e!2269192 call!265207)))

(declare-fun bm!265203 () Bool)

(assert (=> bm!265203 (= call!265210 call!265209)))

(declare-fun c!633585 () Bool)

(declare-fun d!1076560 () Bool)

(assert (=> d!1076560 (= c!633585 (or ((_ is EmptyExpr!10561) (ite c!633245 (reg!10890 (regex!5802 rule!403)) (ite c!633244 (regTwo!21635 (regex!5802 rule!403)) (regOne!21634 (regex!5802 rule!403))))) ((_ is EmptyLang!10561) (ite c!633245 (reg!10890 (regex!5802 rule!403)) (ite c!633244 (regTwo!21635 (regex!5802 rule!403)) (regOne!21634 (regex!5802 rule!403)))))))))

(assert (=> d!1076560 (= (usedCharacters!1014 (ite c!633245 (reg!10890 (regex!5802 rule!403)) (ite c!633244 (regTwo!21635 (regex!5802 rule!403)) (regOne!21634 (regex!5802 rule!403))))) e!2269194)))

(declare-fun b!3664878 () Bool)

(assert (=> b!3664878 (= e!2269194 e!2269193)))

(declare-fun c!633588 () Bool)

(assert (=> b!3664878 (= c!633588 ((_ is ElementMatch!10561) (ite c!633245 (reg!10890 (regex!5802 rule!403)) (ite c!633244 (regTwo!21635 (regex!5802 rule!403)) (regOne!21634 (regex!5802 rule!403))))))))

(declare-fun bm!265205 () Bool)

(assert (=> bm!265205 (= call!265209 (usedCharacters!1014 (ite c!633587 (reg!10890 (ite c!633245 (reg!10890 (regex!5802 rule!403)) (ite c!633244 (regTwo!21635 (regex!5802 rule!403)) (regOne!21634 (regex!5802 rule!403))))) (ite c!633586 (regTwo!21635 (ite c!633245 (reg!10890 (regex!5802 rule!403)) (ite c!633244 (regTwo!21635 (regex!5802 rule!403)) (regOne!21634 (regex!5802 rule!403))))) (regOne!21634 (ite c!633245 (reg!10890 (regex!5802 rule!403)) (ite c!633244 (regTwo!21635 (regex!5802 rule!403)) (regOne!21634 (regex!5802 rule!403)))))))))))

(assert (= (and d!1076560 c!633585) b!3664875))

(assert (= (and d!1076560 (not c!633585)) b!3664878))

(assert (= (and b!3664878 c!633588) b!3664872))

(assert (= (and b!3664878 (not c!633588)) b!3664871))

(assert (= (and b!3664871 c!633587) b!3664874))

(assert (= (and b!3664871 (not c!633587)) b!3664873))

(assert (= (and b!3664873 c!633586) b!3664876))

(assert (= (and b!3664873 (not c!633586)) b!3664877))

(assert (= (or b!3664876 b!3664877) bm!265202))

(assert (= (or b!3664876 b!3664877) bm!265203))

(assert (= (or b!3664876 b!3664877) bm!265204))

(assert (= (or b!3664874 bm!265203) bm!265205))

(declare-fun m!4172625 () Bool)

(assert (=> bm!265202 m!4172625))

(declare-fun m!4172627 () Bool)

(assert (=> bm!265204 m!4172627))

(declare-fun m!4172629 () Bool)

(assert (=> bm!265205 m!4172629))

(assert (=> bm!265031 d!1076560))

(declare-fun d!1076562 () Bool)

(assert (=> d!1076562 (= (isEmpty!22928 lt!1274749) (not ((_ is Some!8231) lt!1274749)))))

(assert (=> d!1075882 d!1076562))

(declare-fun d!1076564 () Bool)

(declare-fun lt!1275573 () Int)

(assert (=> d!1076564 (>= lt!1275573 0)))

(declare-fun e!2269196 () Int)

(assert (=> d!1076564 (= lt!1275573 e!2269196)))

(declare-fun c!633589 () Bool)

(assert (=> d!1076564 (= c!633589 ((_ is Nil!38646) (originalCharacters!6516 (_1!22390 lt!1274714))))))

(assert (=> d!1076564 (= (size!29528 (originalCharacters!6516 (_1!22390 lt!1274714))) lt!1275573)))

(declare-fun b!3664879 () Bool)

(assert (=> b!3664879 (= e!2269196 0)))

(declare-fun b!3664880 () Bool)

(assert (=> b!3664880 (= e!2269196 (+ 1 (size!29528 (t!298753 (originalCharacters!6516 (_1!22390 lt!1274714))))))))

(assert (= (and d!1076564 c!633589) b!3664879))

(assert (= (and d!1076564 (not c!633589)) b!3664880))

(declare-fun m!4172631 () Bool)

(assert (=> b!3664880 m!4172631))

(assert (=> d!1075804 d!1076564))

(declare-fun d!1076566 () Bool)

(declare-fun c!633592 () Bool)

(assert (=> d!1076566 (= c!633592 ((_ is Node!11819) (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 rule!403)) (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745)))))))

(declare-fun e!2269201 () Bool)

(assert (=> d!1076566 (= (inv!52119 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 rule!403)) (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745)))) e!2269201)))

(declare-fun b!3664887 () Bool)

(declare-fun inv!52123 (Conc!11819) Bool)

(assert (=> b!3664887 (= e!2269201 (inv!52123 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 rule!403)) (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745)))))))

(declare-fun b!3664888 () Bool)

(declare-fun e!2269202 () Bool)

(assert (=> b!3664888 (= e!2269201 e!2269202)))

(declare-fun res!1488059 () Bool)

(assert (=> b!3664888 (= res!1488059 (not ((_ is Leaf!18331) (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 rule!403)) (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745))))))))

(assert (=> b!3664888 (=> res!1488059 e!2269202)))

(declare-fun b!3664889 () Bool)

(declare-fun inv!52124 (Conc!11819) Bool)

(assert (=> b!3664889 (= e!2269202 (inv!52124 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 rule!403)) (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745)))))))

(assert (= (and d!1076566 c!633592) b!3664887))

(assert (= (and d!1076566 (not c!633592)) b!3664888))

(assert (= (and b!3664888 (not res!1488059)) b!3664889))

(declare-fun m!4172633 () Bool)

(assert (=> b!3664887 m!4172633))

(declare-fun m!4172635 () Bool)

(assert (=> b!3664889 m!4172635))

(assert (=> b!3663179 d!1076566))

(declare-fun d!1076568 () Bool)

(declare-fun lt!1275574 () Bool)

(assert (=> d!1076568 (= lt!1275574 (select (content!5591 (t!298754 rules!3307)) (rule!8618 (_1!22390 lt!1274714))))))

(declare-fun e!2269204 () Bool)

(assert (=> d!1076568 (= lt!1275574 e!2269204)))

(declare-fun res!1488061 () Bool)

(assert (=> d!1076568 (=> (not res!1488061) (not e!2269204))))

(assert (=> d!1076568 (= res!1488061 ((_ is Cons!38647) (t!298754 rules!3307)))))

(assert (=> d!1076568 (= (contains!7670 (t!298754 rules!3307) (rule!8618 (_1!22390 lt!1274714))) lt!1275574)))

(declare-fun b!3664890 () Bool)

(declare-fun e!2269203 () Bool)

(assert (=> b!3664890 (= e!2269204 e!2269203)))

(declare-fun res!1488060 () Bool)

(assert (=> b!3664890 (=> res!1488060 e!2269203)))

(assert (=> b!3664890 (= res!1488060 (= (h!44067 (t!298754 rules!3307)) (rule!8618 (_1!22390 lt!1274714))))))

(declare-fun b!3664891 () Bool)

(assert (=> b!3664891 (= e!2269203 (contains!7670 (t!298754 (t!298754 rules!3307)) (rule!8618 (_1!22390 lt!1274714))))))

(assert (= (and d!1076568 res!1488061) b!3664890))

(assert (= (and b!3664890 (not res!1488060)) b!3664891))

(assert (=> d!1076568 m!4171155))

(declare-fun m!4172637 () Bool)

(assert (=> d!1076568 m!4172637))

(declare-fun m!4172639 () Bool)

(assert (=> b!3664891 m!4172639))

(assert (=> b!3663122 d!1076568))

(declare-fun d!1076570 () Bool)

(assert (=> d!1076570 (= (isEmpty!22924 (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))) ((_ is Nil!38646) (list!14340 (charsOf!3816 (_1!22390 lt!1274714)))))))

(assert (=> d!1075894 d!1076570))

(declare-fun b!3664892 () Bool)

(declare-fun e!2269211 () Bool)

(declare-fun e!2269206 () Bool)

(assert (=> b!3664892 (= e!2269211 e!2269206)))

(declare-fun res!1488065 () Bool)

(assert (=> b!3664892 (=> (not res!1488065) (not e!2269206))))

(declare-fun call!265212 () Bool)

(assert (=> b!3664892 (= res!1488065 call!265212)))

(declare-fun b!3664893 () Bool)

(declare-fun e!2269209 () Bool)

(declare-fun call!265213 () Bool)

(assert (=> b!3664893 (= e!2269209 call!265213)))

(declare-fun b!3664894 () Bool)

(declare-fun e!2269210 () Bool)

(assert (=> b!3664894 (= e!2269210 e!2269209)))

(declare-fun res!1488066 () Bool)

(assert (=> b!3664894 (= res!1488066 (not (nullable!3675 (reg!10890 (regex!5802 lt!1274756)))))))

(assert (=> b!3664894 (=> (not res!1488066) (not e!2269209))))

(declare-fun b!3664895 () Bool)

(declare-fun e!2269207 () Bool)

(assert (=> b!3664895 (= e!2269207 e!2269210)))

(declare-fun c!633594 () Bool)

(assert (=> b!3664895 (= c!633594 ((_ is Star!10561) (regex!5802 lt!1274756)))))

(declare-fun b!3664896 () Bool)

(declare-fun e!2269208 () Bool)

(assert (=> b!3664896 (= e!2269208 call!265212)))

(declare-fun b!3664897 () Bool)

(declare-fun res!1488063 () Bool)

(assert (=> b!3664897 (=> res!1488063 e!2269211)))

(assert (=> b!3664897 (= res!1488063 (not ((_ is Concat!16594) (regex!5802 lt!1274756))))))

(declare-fun e!2269205 () Bool)

(assert (=> b!3664897 (= e!2269205 e!2269211)))

(declare-fun bm!265207 () Bool)

(declare-fun call!265211 () Bool)

(assert (=> bm!265207 (= call!265211 call!265213)))

(declare-fun c!633593 () Bool)

(declare-fun bm!265208 () Bool)

(assert (=> bm!265208 (= call!265213 (validRegex!4836 (ite c!633594 (reg!10890 (regex!5802 lt!1274756)) (ite c!633593 (regOne!21635 (regex!5802 lt!1274756)) (regTwo!21634 (regex!5802 lt!1274756))))))))

(declare-fun b!3664898 () Bool)

(assert (=> b!3664898 (= e!2269210 e!2269205)))

(assert (=> b!3664898 (= c!633593 ((_ is Union!10561) (regex!5802 lt!1274756)))))

(declare-fun d!1076572 () Bool)

(declare-fun res!1488062 () Bool)

(assert (=> d!1076572 (=> res!1488062 e!2269207)))

(assert (=> d!1076572 (= res!1488062 ((_ is ElementMatch!10561) (regex!5802 lt!1274756)))))

(assert (=> d!1076572 (= (validRegex!4836 (regex!5802 lt!1274756)) e!2269207)))

(declare-fun bm!265206 () Bool)

(assert (=> bm!265206 (= call!265212 (validRegex!4836 (ite c!633593 (regTwo!21635 (regex!5802 lt!1274756)) (regOne!21634 (regex!5802 lt!1274756)))))))

(declare-fun b!3664899 () Bool)

(declare-fun res!1488064 () Bool)

(assert (=> b!3664899 (=> (not res!1488064) (not e!2269208))))

(assert (=> b!3664899 (= res!1488064 call!265211)))

(assert (=> b!3664899 (= e!2269205 e!2269208)))

(declare-fun b!3664900 () Bool)

(assert (=> b!3664900 (= e!2269206 call!265211)))

(assert (= (and d!1076572 (not res!1488062)) b!3664895))

(assert (= (and b!3664895 c!633594) b!3664894))

(assert (= (and b!3664895 (not c!633594)) b!3664898))

(assert (= (and b!3664894 res!1488066) b!3664893))

(assert (= (and b!3664898 c!633593) b!3664899))

(assert (= (and b!3664898 (not c!633593)) b!3664897))

(assert (= (and b!3664899 res!1488064) b!3664896))

(assert (= (and b!3664897 (not res!1488063)) b!3664892))

(assert (= (and b!3664892 res!1488065) b!3664900))

(assert (= (or b!3664899 b!3664900) bm!265207))

(assert (= (or b!3664896 b!3664892) bm!265206))

(assert (= (or b!3664893 bm!265207) bm!265208))

(declare-fun m!4172641 () Bool)

(assert (=> b!3664894 m!4172641))

(declare-fun m!4172643 () Bool)

(assert (=> bm!265208 m!4172643))

(declare-fun m!4172645 () Bool)

(assert (=> bm!265206 m!4172645))

(assert (=> d!1075894 d!1076572))

(assert (=> bm!265036 d!1076570))

(declare-fun d!1076574 () Bool)

(declare-fun lt!1275575 () Bool)

(assert (=> d!1076574 (= lt!1275575 (select (content!5589 (t!298753 call!264987)) lt!1274732))))

(declare-fun e!2269213 () Bool)

(assert (=> d!1076574 (= lt!1275575 e!2269213)))

(declare-fun res!1488067 () Bool)

(assert (=> d!1076574 (=> (not res!1488067) (not e!2269213))))

(assert (=> d!1076574 (= res!1488067 ((_ is Cons!38646) (t!298753 call!264987)))))

(assert (=> d!1076574 (= (contains!7669 (t!298753 call!264987) lt!1274732) lt!1275575)))

(declare-fun b!3664901 () Bool)

(declare-fun e!2269212 () Bool)

(assert (=> b!3664901 (= e!2269213 e!2269212)))

(declare-fun res!1488068 () Bool)

(assert (=> b!3664901 (=> res!1488068 e!2269212)))

(assert (=> b!3664901 (= res!1488068 (= (h!44066 (t!298753 call!264987)) lt!1274732))))

(declare-fun b!3664902 () Bool)

(assert (=> b!3664902 (= e!2269212 (contains!7669 (t!298753 (t!298753 call!264987)) lt!1274732))))

(assert (= (and d!1076574 res!1488067) b!3664901))

(assert (= (and b!3664901 (not res!1488068)) b!3664902))

(assert (=> d!1076574 m!4171305))

(declare-fun m!4172647 () Bool)

(assert (=> d!1076574 m!4172647))

(declare-fun m!4172649 () Bool)

(assert (=> b!3664902 m!4172649))

(assert (=> b!3663105 d!1076574))

(declare-fun d!1076576 () Bool)

(declare-fun lt!1275576 () Int)

(assert (=> d!1076576 (>= lt!1275576 0)))

(declare-fun e!2269214 () Int)

(assert (=> d!1076576 (= lt!1275576 e!2269214)))

(declare-fun c!633595 () Bool)

(assert (=> d!1076576 (= c!633595 ((_ is Nil!38646) (t!298753 lt!1274731)))))

(assert (=> d!1076576 (= (size!29528 (t!298753 lt!1274731)) lt!1275576)))

(declare-fun b!3664903 () Bool)

(assert (=> b!3664903 (= e!2269214 0)))

(declare-fun b!3664904 () Bool)

(assert (=> b!3664904 (= e!2269214 (+ 1 (size!29528 (t!298753 (t!298753 lt!1274731)))))))

(assert (= (and d!1076576 c!633595) b!3664903))

(assert (= (and d!1076576 (not c!633595)) b!3664904))

(declare-fun m!4172651 () Bool)

(assert (=> b!3664904 m!4172651))

(assert (=> b!3663130 d!1076576))

(declare-fun d!1076578 () Bool)

(declare-fun e!2269215 () Bool)

(assert (=> d!1076578 e!2269215))

(declare-fun res!1488069 () Bool)

(assert (=> d!1076578 (=> (not res!1488069) (not e!2269215))))

(declare-fun lt!1275577 () BalanceConc!23252)

(assert (=> d!1076578 (= res!1488069 (= (list!14340 lt!1275577) lt!1274731))))

(assert (=> d!1076578 (= lt!1275577 (BalanceConc!23253 (fromList!798 lt!1274731)))))

(assert (=> d!1076578 (= (fromListB!2011 lt!1274731) lt!1275577)))

(declare-fun b!3664905 () Bool)

(assert (=> b!3664905 (= e!2269215 (isBalanced!3504 (fromList!798 lt!1274731)))))

(assert (= (and d!1076578 res!1488069) b!3664905))

(declare-fun m!4172653 () Bool)

(assert (=> d!1076578 m!4172653))

(declare-fun m!4172655 () Bool)

(assert (=> d!1076578 m!4172655))

(assert (=> b!3664905 m!4172655))

(assert (=> b!3664905 m!4172655))

(declare-fun m!4172657 () Bool)

(assert (=> b!3664905 m!4172657))

(assert (=> d!1075630 d!1076578))

(assert (=> b!3663485 d!1076120))

(declare-fun d!1076580 () Bool)

(assert (=> d!1076580 (= (apply!9304 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987)))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 (get!12743 lt!1274987))))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987))))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 (get!12743 lt!1274987))))))))

(declare-fun b_lambda!108773 () Bool)

(assert (=> (not b_lambda!108773) (not d!1076580)))

(declare-fun t!299072 () Bool)

(declare-fun tb!212051 () Bool)

(assert (=> (and b!3663022 (= (toValue!8094 (transformation!5802 rule!403)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987)))))) t!299072) tb!212051))

(declare-fun result!258112 () Bool)

(assert (=> tb!212051 (= result!258112 (inv!21 (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987))))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 (get!12743 lt!1274987)))))))))

(declare-fun m!4172659 () Bool)

(assert (=> tb!212051 m!4172659))

(assert (=> d!1076580 t!299072))

(declare-fun b_and!272413 () Bool)

(assert (= b_and!272411 (and (=> t!299072 result!258112) b_and!272413)))

(declare-fun tb!212053 () Bool)

(declare-fun t!299074 () Bool)

(assert (=> (and b!3663012 (= (toValue!8094 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987)))))) t!299074) tb!212053))

(declare-fun result!258114 () Bool)

(assert (= result!258114 result!258112))

(assert (=> d!1076580 t!299074))

(declare-fun b_and!272415 () Bool)

(assert (= b_and!272403 (and (=> t!299074 result!258114) b_and!272415)))

(declare-fun tb!212055 () Bool)

(declare-fun t!299076 () Bool)

(assert (=> (and b!3662995 (= (toValue!8094 (transformation!5802 (h!44067 rules!3307))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987)))))) t!299076) tb!212055))

(declare-fun result!258116 () Bool)

(assert (= result!258116 result!258112))

(assert (=> d!1076580 t!299076))

(declare-fun b_and!272417 () Bool)

(assert (= b_and!272407 (and (=> t!299076 result!258116) b_and!272417)))

(declare-fun tb!212057 () Bool)

(declare-fun t!299078 () Bool)

(assert (=> (and b!3662992 (= (toValue!8094 (transformation!5802 (rule!8618 token!511))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987)))))) t!299078) tb!212057))

(declare-fun result!258118 () Bool)

(assert (= result!258118 result!258112))

(assert (=> d!1076580 t!299078))

(declare-fun b_and!272419 () Bool)

(assert (= b_and!272409 (and (=> t!299078 result!258118) b_and!272419)))

(declare-fun tb!212059 () Bool)

(declare-fun t!299080 () Bool)

(assert (=> (and b!3663858 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987)))))) t!299080) tb!212059))

(declare-fun result!258120 () Bool)

(assert (= result!258120 result!258112))

(assert (=> d!1076580 t!299080))

(declare-fun b_and!272421 () Bool)

(assert (= b_and!272405 (and (=> t!299080 result!258120) b_and!272421)))

(assert (=> d!1076580 m!4170537))

(declare-fun m!4172661 () Bool)

(assert (=> d!1076580 m!4172661))

(assert (=> b!3663485 d!1076580))

(declare-fun d!1076582 () Bool)

(assert (=> d!1076582 (= (seqFromList!4351 (originalCharacters!6516 (_1!22390 (get!12743 lt!1274987)))) (fromListB!2011 (originalCharacters!6516 (_1!22390 (get!12743 lt!1274987)))))))

(declare-fun bs!572895 () Bool)

(assert (= bs!572895 d!1076582))

(declare-fun m!4172663 () Bool)

(assert (=> bs!572895 m!4172663))

(assert (=> b!3663485 d!1076582))

(declare-fun d!1076584 () Bool)

(declare-fun e!2269217 () Bool)

(assert (=> d!1076584 e!2269217))

(declare-fun res!1488070 () Bool)

(assert (=> d!1076584 (=> (not res!1488070) (not e!2269217))))

(declare-fun lt!1275578 () BalanceConc!23252)

(assert (=> d!1076584 (= res!1488070 (= (list!14340 lt!1275578) (originalCharacters!6516 (_1!22390 lt!1274714))))))

(assert (=> d!1076584 (= lt!1275578 (BalanceConc!23253 (fromList!798 (originalCharacters!6516 (_1!22390 lt!1274714)))))))

(assert (=> d!1076584 (= (fromListB!2011 (originalCharacters!6516 (_1!22390 lt!1274714))) lt!1275578)))

(declare-fun b!3664906 () Bool)

(assert (=> b!3664906 (= e!2269217 (isBalanced!3504 (fromList!798 (originalCharacters!6516 (_1!22390 lt!1274714)))))))

(assert (= (and d!1076584 res!1488070) b!3664906))

(declare-fun m!4172665 () Bool)

(assert (=> d!1076584 m!4172665))

(declare-fun m!4172667 () Bool)

(assert (=> d!1076584 m!4172667))

(assert (=> b!3664906 m!4172667))

(assert (=> b!3664906 m!4172667))

(declare-fun m!4172669 () Bool)

(assert (=> b!3664906 m!4172669))

(assert (=> d!1075810 d!1076584))

(declare-fun d!1076586 () Bool)

(assert (=> d!1076586 (= (isEmpty!22924 lt!1274729) ((_ is Nil!38646) lt!1274729))))

(assert (=> bm!265034 d!1076586))

(declare-fun d!1076588 () Bool)

(assert (=> d!1076588 (= (isEmpty!22924 (getSuffix!1718 lt!1274731 lt!1274731)) ((_ is Nil!38646) (getSuffix!1718 lt!1274731 lt!1274731)))))

(assert (=> d!1075864 d!1076588))

(assert (=> d!1075864 d!1075862))

(declare-fun d!1076590 () Bool)

(assert (=> d!1076590 (isEmpty!22924 (getSuffix!1718 lt!1274731 lt!1274731))))

(assert (=> d!1076590 true))

(declare-fun _$66!539 () Unit!55997)

(assert (=> d!1076590 (= (choose!21726 lt!1274731) _$66!539)))

(declare-fun bs!572896 () Bool)

(assert (= bs!572896 d!1076590))

(assert (=> bs!572896 m!4169959))

(assert (=> bs!572896 m!4169959))

(assert (=> bs!572896 m!4170779))

(assert (=> d!1075864 d!1076590))

(declare-fun d!1076592 () Bool)

(assert (=> d!1076592 (= (list!14340 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 token!511))) (value!185817 token!511))) (list!14343 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 token!511))) (value!185817 token!511)))))))

(declare-fun bs!572897 () Bool)

(assert (= bs!572897 d!1076592))

(declare-fun m!4172671 () Bool)

(assert (=> bs!572897 m!4172671))

(assert (=> b!3663110 d!1076592))

(assert (=> b!3663257 d!1075836))

(declare-fun d!1076594 () Bool)

(assert (=> d!1076594 (= (head!7834 (++!9618 lt!1274729 (_2!22390 lt!1274714))) (h!44066 (++!9618 lt!1274729 (_2!22390 lt!1274714))))))

(assert (=> b!3663257 d!1076594))

(declare-fun d!1076596 () Bool)

(assert (=> d!1076596 (= (inv!52120 (dynLambda!16896 (toChars!7953 (transformation!5802 rule!403)) (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745))) (isBalanced!3504 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 rule!403)) (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745)))))))

(declare-fun bs!572898 () Bool)

(assert (= bs!572898 d!1076596))

(declare-fun m!4172673 () Bool)

(assert (=> bs!572898 m!4172673))

(assert (=> tb!211781 d!1076596))

(declare-fun bs!572899 () Bool)

(declare-fun d!1076598 () Bool)

(assert (= bs!572899 (and d!1076598 d!1076136)))

(declare-fun lambda!124632 () Int)

(assert (=> bs!572899 (= (and (= (toChars!7953 (transformation!5802 anOtherTypeRule!33)) (toChars!7953 (transformation!5802 rule!403))) (= (toValue!8094 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 rule!403)))) (= lambda!124632 lambda!124610))))

(declare-fun bs!572900 () Bool)

(assert (= bs!572900 (and d!1076598 d!1075792)))

(assert (=> bs!572900 (= (and (= (toChars!7953 (transformation!5802 anOtherTypeRule!33)) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) (= (toValue!8094 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (= lambda!124632 lambda!124598))))

(declare-fun bs!572901 () Bool)

(assert (= bs!572901 (and d!1076598 d!1075606)))

(assert (=> bs!572901 (= (and (= (toChars!7953 (transformation!5802 anOtherTypeRule!33)) (toChars!7953 (transformation!5802 rule!403))) (= (toValue!8094 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 rule!403)))) (= lambda!124632 lambda!124596))))

(declare-fun bs!572902 () Bool)

(assert (= bs!572902 (and d!1076598 d!1076016)))

(assert (=> bs!572902 (= (and (= (toChars!7953 (transformation!5802 anOtherTypeRule!33)) (toChars!7953 (transformation!5802 (h!44067 rules!3307)))) (= (toValue!8094 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 (h!44067 rules!3307))))) (= lambda!124632 lambda!124608))))

(declare-fun bs!572903 () Bool)

(assert (= bs!572903 (and d!1076598 d!1076078)))

(assert (=> bs!572903 (= (and (= (toChars!7953 (transformation!5802 anOtherTypeRule!33)) (toChars!7953 (transformation!5802 (rule!8618 token!511)))) (= (toValue!8094 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 (rule!8618 token!511))))) (= lambda!124632 lambda!124609))))

(declare-fun bs!572904 () Bool)

(assert (= bs!572904 (and d!1076598 d!1076446)))

(assert (=> bs!572904 (= (and (= (toChars!7953 (transformation!5802 anOtherTypeRule!33)) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) (= (toValue!8094 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (= lambda!124632 lambda!124627))))

(assert (=> d!1076598 true))

(assert (=> d!1076598 (< (dynLambda!16900 order!21359 (toChars!7953 (transformation!5802 anOtherTypeRule!33))) (dynLambda!16899 order!21357 lambda!124632))))

(assert (=> d!1076598 true))

(assert (=> d!1076598 (< (dynLambda!16898 order!21355 (toValue!8094 (transformation!5802 anOtherTypeRule!33))) (dynLambda!16899 order!21357 lambda!124632))))

(assert (=> d!1076598 (= (semiInverseModEq!2475 (toChars!7953 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 anOtherTypeRule!33))) (Forall!1370 lambda!124632))))

(declare-fun bs!572905 () Bool)

(assert (= bs!572905 d!1076598))

(declare-fun m!4172675 () Bool)

(assert (=> bs!572905 m!4172675))

(assert (=> d!1075916 d!1076598))

(declare-fun b!3664907 () Bool)

(declare-fun e!2269219 () Bool)

(declare-fun e!2269218 () Bool)

(assert (=> b!3664907 (= e!2269219 e!2269218)))

(declare-fun c!633597 () Bool)

(assert (=> b!3664907 (= c!633597 ((_ is IntegerValue!18097) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743)))))

(declare-fun b!3664908 () Bool)

(declare-fun res!1488071 () Bool)

(declare-fun e!2269220 () Bool)

(assert (=> b!3664908 (=> res!1488071 e!2269220)))

(assert (=> b!3664908 (= res!1488071 (not ((_ is IntegerValue!18098) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743))))))

(assert (=> b!3664908 (= e!2269218 e!2269220)))

(declare-fun b!3664909 () Bool)

(assert (=> b!3664909 (= e!2269218 (inv!17 (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743)))))

(declare-fun d!1076600 () Bool)

(declare-fun c!633596 () Bool)

(assert (=> d!1076600 (= c!633596 ((_ is IntegerValue!18096) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743)))))

(assert (=> d!1076600 (= (inv!21 (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743)) e!2269219)))

(declare-fun b!3664910 () Bool)

(assert (=> b!3664910 (= e!2269219 (inv!16 (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743)))))

(declare-fun b!3664911 () Bool)

(assert (=> b!3664911 (= e!2269220 (inv!15 (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743)))))

(assert (= (and d!1076600 c!633596) b!3664910))

(assert (= (and d!1076600 (not c!633596)) b!3664907))

(assert (= (and b!3664907 c!633597) b!3664909))

(assert (= (and b!3664907 (not c!633597)) b!3664908))

(assert (= (and b!3664908 (not res!1488071)) b!3664911))

(declare-fun m!4172677 () Bool)

(assert (=> b!3664909 m!4172677))

(declare-fun m!4172679 () Bool)

(assert (=> b!3664910 m!4172679))

(declare-fun m!4172681 () Bool)

(assert (=> b!3664911 m!4172681))

(assert (=> tb!211845 d!1076600))

(assert (=> b!3663498 d!1076052))

(assert (=> b!3663498 d!1075604))

(declare-fun d!1076602 () Bool)

(assert (=> d!1076602 (= (isEmpty!22928 lt!1275116) (not ((_ is Some!8231) lt!1275116)))))

(assert (=> d!1075884 d!1076602))

(assert (=> d!1075884 d!1075858))

(declare-fun d!1076604 () Bool)

(assert (=> d!1076604 (isPrefix!3165 lt!1274731 lt!1274731)))

(declare-fun lt!1275581 () Unit!55997)

(declare-fun choose!21742 (List!38770 List!38770) Unit!55997)

(assert (=> d!1076604 (= lt!1275581 (choose!21742 lt!1274731 lt!1274731))))

(assert (=> d!1076604 (= (lemmaIsPrefixRefl!1998 lt!1274731 lt!1274731) lt!1275581)))

(declare-fun bs!572906 () Bool)

(assert (= bs!572906 d!1076604))

(assert (=> bs!572906 m!4169955))

(declare-fun m!4172683 () Bool)

(assert (=> bs!572906 m!4172683))

(assert (=> d!1075884 d!1076604))

(declare-fun bs!572907 () Bool)

(declare-fun d!1076606 () Bool)

(assert (= bs!572907 (and d!1076606 d!1076550)))

(declare-fun lambda!124635 () Int)

(assert (=> bs!572907 (= lambda!124635 lambda!124631)))

(assert (=> d!1076606 true))

(declare-fun lt!1275584 () Bool)

(assert (=> d!1076606 (= lt!1275584 (forall!8156 rules!3307 lambda!124635))))

(declare-fun e!2269225 () Bool)

(assert (=> d!1076606 (= lt!1275584 e!2269225)))

(declare-fun res!1488077 () Bool)

(assert (=> d!1076606 (=> res!1488077 e!2269225)))

(assert (=> d!1076606 (= res!1488077 (not ((_ is Cons!38647) rules!3307)))))

(assert (=> d!1076606 (= (rulesValidInductive!2061 thiss!23823 rules!3307) lt!1275584)))

(declare-fun b!3664916 () Bool)

(declare-fun e!2269226 () Bool)

(assert (=> b!3664916 (= e!2269225 e!2269226)))

(declare-fun res!1488076 () Bool)

(assert (=> b!3664916 (=> (not res!1488076) (not e!2269226))))

(assert (=> b!3664916 (= res!1488076 (ruleValid!2066 thiss!23823 (h!44067 rules!3307)))))

(declare-fun b!3664917 () Bool)

(assert (=> b!3664917 (= e!2269226 (rulesValidInductive!2061 thiss!23823 (t!298754 rules!3307)))))

(assert (= (and d!1076606 (not res!1488077)) b!3664916))

(assert (= (and b!3664916 res!1488076) b!3664917))

(declare-fun m!4172685 () Bool)

(assert (=> d!1076606 m!4172685))

(declare-fun m!4172687 () Bool)

(assert (=> b!3664916 m!4172687))

(assert (=> b!3664917 m!4171293))

(assert (=> d!1075884 d!1076606))

(declare-fun b!3664919 () Bool)

(declare-fun e!2269227 () List!38770)

(assert (=> b!3664919 (= e!2269227 (Cons!38646 (h!44066 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275116))))) (++!9618 (t!298753 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275116))))) (_2!22390 (get!12743 lt!1275116)))))))

(declare-fun d!1076608 () Bool)

(declare-fun e!2269228 () Bool)

(assert (=> d!1076608 e!2269228))

(declare-fun res!1488078 () Bool)

(assert (=> d!1076608 (=> (not res!1488078) (not e!2269228))))

(declare-fun lt!1275585 () List!38770)

(assert (=> d!1076608 (= res!1488078 (= (content!5589 lt!1275585) ((_ map or) (content!5589 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275116))))) (content!5589 (_2!22390 (get!12743 lt!1275116))))))))

(assert (=> d!1076608 (= lt!1275585 e!2269227)))

(declare-fun c!633598 () Bool)

(assert (=> d!1076608 (= c!633598 ((_ is Nil!38646) (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275116))))))))

(assert (=> d!1076608 (= (++!9618 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275116)))) (_2!22390 (get!12743 lt!1275116))) lt!1275585)))

(declare-fun b!3664921 () Bool)

(assert (=> b!3664921 (= e!2269228 (or (not (= (_2!22390 (get!12743 lt!1275116)) Nil!38646)) (= lt!1275585 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275116)))))))))

(declare-fun b!3664920 () Bool)

(declare-fun res!1488079 () Bool)

(assert (=> b!3664920 (=> (not res!1488079) (not e!2269228))))

(assert (=> b!3664920 (= res!1488079 (= (size!29528 lt!1275585) (+ (size!29528 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275116))))) (size!29528 (_2!22390 (get!12743 lt!1275116))))))))

(declare-fun b!3664918 () Bool)

(assert (=> b!3664918 (= e!2269227 (_2!22390 (get!12743 lt!1275116)))))

(assert (= (and d!1076608 c!633598) b!3664918))

(assert (= (and d!1076608 (not c!633598)) b!3664919))

(assert (= (and d!1076608 res!1488078) b!3664920))

(assert (= (and b!3664920 res!1488079) b!3664921))

(declare-fun m!4172689 () Bool)

(assert (=> b!3664919 m!4172689))

(declare-fun m!4172691 () Bool)

(assert (=> d!1076608 m!4172691))

(assert (=> d!1076608 m!4170873))

(declare-fun m!4172693 () Bool)

(assert (=> d!1076608 m!4172693))

(declare-fun m!4172695 () Bool)

(assert (=> d!1076608 m!4172695))

(declare-fun m!4172697 () Bool)

(assert (=> b!3664920 m!4172697))

(assert (=> b!3664920 m!4170873))

(declare-fun m!4172699 () Bool)

(assert (=> b!3664920 m!4172699))

(assert (=> b!3664920 m!4170883))

(assert (=> b!3663665 d!1076608))

(assert (=> b!3663665 d!1075948))

(assert (=> b!3663665 d!1075950))

(assert (=> b!3663665 d!1075946))

(declare-fun b!3664922 () Bool)

(declare-fun e!2269230 () Bool)

(declare-fun e!2269229 () Bool)

(assert (=> b!3664922 (= e!2269230 e!2269229)))

(declare-fun c!633600 () Bool)

(assert (=> b!3664922 (= c!633600 ((_ is IntegerValue!18097) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (seqFromList!4351 lt!1274729))))))

(declare-fun b!3664923 () Bool)

(declare-fun res!1488080 () Bool)

(declare-fun e!2269231 () Bool)

(assert (=> b!3664923 (=> res!1488080 e!2269231)))

(assert (=> b!3664923 (= res!1488080 (not ((_ is IntegerValue!18098) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (seqFromList!4351 lt!1274729)))))))

(assert (=> b!3664923 (= e!2269229 e!2269231)))

(declare-fun b!3664924 () Bool)

(assert (=> b!3664924 (= e!2269229 (inv!17 (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (seqFromList!4351 lt!1274729))))))

(declare-fun d!1076610 () Bool)

(declare-fun c!633599 () Bool)

(assert (=> d!1076610 (= c!633599 ((_ is IntegerValue!18096) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (seqFromList!4351 lt!1274729))))))

(assert (=> d!1076610 (= (inv!21 (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (seqFromList!4351 lt!1274729))) e!2269230)))

(declare-fun b!3664925 () Bool)

(assert (=> b!3664925 (= e!2269230 (inv!16 (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (seqFromList!4351 lt!1274729))))))

(declare-fun b!3664926 () Bool)

(assert (=> b!3664926 (= e!2269231 (inv!15 (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (seqFromList!4351 lt!1274729))))))

(assert (= (and d!1076610 c!633599) b!3664925))

(assert (= (and d!1076610 (not c!633599)) b!3664922))

(assert (= (and b!3664922 c!633600) b!3664924))

(assert (= (and b!3664922 (not c!633600)) b!3664923))

(assert (= (and b!3664923 (not res!1488080)) b!3664926))

(declare-fun m!4172701 () Bool)

(assert (=> b!3664924 m!4172701))

(declare-fun m!4172703 () Bool)

(assert (=> b!3664925 m!4172703))

(declare-fun m!4172705 () Bool)

(assert (=> b!3664926 m!4172705))

(assert (=> tb!211861 d!1076610))

(assert (=> b!3663481 d!1076190))

(assert (=> b!3663481 d!1076192))

(assert (=> b!3663481 d!1076120))

(assert (=> d!1075892 d!1075868))

(declare-fun d!1076612 () Bool)

(declare-fun lt!1275586 () Int)

(assert (=> d!1076612 (>= lt!1275586 0)))

(declare-fun e!2269232 () Int)

(assert (=> d!1076612 (= lt!1275586 e!2269232)))

(declare-fun c!633601 () Bool)

(assert (=> d!1076612 (= c!633601 ((_ is Nil!38646) (_2!22390 (get!12743 lt!1275116))))))

(assert (=> d!1076612 (= (size!29528 (_2!22390 (get!12743 lt!1275116))) lt!1275586)))

(declare-fun b!3664927 () Bool)

(assert (=> b!3664927 (= e!2269232 0)))

(declare-fun b!3664928 () Bool)

(assert (=> b!3664928 (= e!2269232 (+ 1 (size!29528 (t!298753 (_2!22390 (get!12743 lt!1275116))))))))

(assert (= (and d!1076612 c!633601) b!3664927))

(assert (= (and d!1076612 (not c!633601)) b!3664928))

(declare-fun m!4172707 () Bool)

(assert (=> b!3664928 m!4172707))

(assert (=> b!3663669 d!1076612))

(assert (=> b!3663669 d!1075946))

(assert (=> b!3663669 d!1075604))

(declare-fun b!3664930 () Bool)

(declare-fun e!2269233 () List!38770)

(assert (=> b!3664930 (= e!2269233 (Cons!38646 (h!44066 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275044))))) (++!9618 (t!298753 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275044))))) (_2!22390 (get!12743 lt!1275044)))))))

(declare-fun d!1076614 () Bool)

(declare-fun e!2269234 () Bool)

(assert (=> d!1076614 e!2269234))

(declare-fun res!1488081 () Bool)

(assert (=> d!1076614 (=> (not res!1488081) (not e!2269234))))

(declare-fun lt!1275587 () List!38770)

(assert (=> d!1076614 (= res!1488081 (= (content!5589 lt!1275587) ((_ map or) (content!5589 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275044))))) (content!5589 (_2!22390 (get!12743 lt!1275044))))))))

(assert (=> d!1076614 (= lt!1275587 e!2269233)))

(declare-fun c!633602 () Bool)

(assert (=> d!1076614 (= c!633602 ((_ is Nil!38646) (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275044))))))))

(assert (=> d!1076614 (= (++!9618 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275044)))) (_2!22390 (get!12743 lt!1275044))) lt!1275587)))

(declare-fun b!3664932 () Bool)

(assert (=> b!3664932 (= e!2269234 (or (not (= (_2!22390 (get!12743 lt!1275044)) Nil!38646)) (= lt!1275587 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275044)))))))))

(declare-fun b!3664931 () Bool)

(declare-fun res!1488082 () Bool)

(assert (=> b!3664931 (=> (not res!1488082) (not e!2269234))))

(assert (=> b!3664931 (= res!1488082 (= (size!29528 lt!1275587) (+ (size!29528 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275044))))) (size!29528 (_2!22390 (get!12743 lt!1275044))))))))

(declare-fun b!3664929 () Bool)

(assert (=> b!3664929 (= e!2269233 (_2!22390 (get!12743 lt!1275044)))))

(assert (= (and d!1076614 c!633602) b!3664929))

(assert (= (and d!1076614 (not c!633602)) b!3664930))

(assert (= (and d!1076614 res!1488081) b!3664931))

(assert (= (and b!3664931 res!1488082) b!3664932))

(declare-fun m!4172709 () Bool)

(assert (=> b!3664930 m!4172709))

(declare-fun m!4172711 () Bool)

(assert (=> d!1076614 m!4172711))

(assert (=> d!1076614 m!4170733))

(declare-fun m!4172713 () Bool)

(assert (=> d!1076614 m!4172713))

(declare-fun m!4172715 () Bool)

(assert (=> d!1076614 m!4172715))

(declare-fun m!4172717 () Bool)

(assert (=> b!3664931 m!4172717))

(assert (=> b!3664931 m!4170733))

(declare-fun m!4172719 () Bool)

(assert (=> b!3664931 m!4172719))

(assert (=> b!3664931 m!4170763))

(assert (=> b!3663587 d!1076614))

(assert (=> b!3663587 d!1075978))

(assert (=> b!3663587 d!1075980))

(assert (=> b!3663587 d!1075982))

(assert (=> b!3663244 d!1076554))

(declare-fun d!1076616 () Bool)

(declare-fun lt!1275588 () Bool)

(assert (=> d!1076616 (= lt!1275588 (select (content!5589 lt!1274729) (head!7834 suffix!1395)))))

(declare-fun e!2269236 () Bool)

(assert (=> d!1076616 (= lt!1275588 e!2269236)))

(declare-fun res!1488083 () Bool)

(assert (=> d!1076616 (=> (not res!1488083) (not e!2269236))))

(assert (=> d!1076616 (= res!1488083 ((_ is Cons!38646) lt!1274729))))

(assert (=> d!1076616 (= (contains!7669 lt!1274729 (head!7834 suffix!1395)) lt!1275588)))

(declare-fun b!3664933 () Bool)

(declare-fun e!2269235 () Bool)

(assert (=> b!3664933 (= e!2269236 e!2269235)))

(declare-fun res!1488084 () Bool)

(assert (=> b!3664933 (=> res!1488084 e!2269235)))

(assert (=> b!3664933 (= res!1488084 (= (h!44066 lt!1274729) (head!7834 suffix!1395)))))

(declare-fun b!3664934 () Bool)

(assert (=> b!3664934 (= e!2269235 (contains!7669 (t!298753 lt!1274729) (head!7834 suffix!1395)))))

(assert (= (and d!1076616 res!1488083) b!3664933))

(assert (= (and b!3664933 (not res!1488084)) b!3664934))

(assert (=> d!1076616 m!4170001))

(assert (=> d!1076616 m!4169973))

(declare-fun m!4172721 () Bool)

(assert (=> d!1076616 m!4172721))

(assert (=> b!3664934 m!4169973))

(declare-fun m!4172723 () Bool)

(assert (=> b!3664934 m!4172723))

(assert (=> d!1075582 d!1076616))

(assert (=> d!1075582 d!1075822))

(declare-fun d!1076618 () Bool)

(assert (=> d!1076618 (contains!7669 lt!1274729 (head!7834 suffix!1395))))

(assert (=> d!1076618 true))

(declare-fun _$49!324 () Unit!55997)

(assert (=> d!1076618 (= (choose!21704 lt!1274731 suffix!1395 lt!1274729 lt!1274713) _$49!324)))

(declare-fun bs!572908 () Bool)

(assert (= bs!572908 d!1076618))

(assert (=> bs!572908 m!4169973))

(assert (=> bs!572908 m!4169973))

(assert (=> bs!572908 m!4169997))

(assert (=> d!1075582 d!1076618))

(assert (=> d!1075582 d!1075784))

(declare-fun b!3664936 () Bool)

(declare-fun e!2269237 () List!38770)

(declare-fun e!2269238 () List!38770)

(assert (=> b!3664936 (= e!2269237 e!2269238)))

(declare-fun c!633604 () Bool)

(assert (=> b!3664936 (= c!633604 ((_ is Leaf!18331) (c!633135 (charsOf!3816 (_1!22390 lt!1274714)))))))

(declare-fun b!3664935 () Bool)

(assert (=> b!3664935 (= e!2269237 Nil!38646)))

(declare-fun b!3664937 () Bool)

(assert (=> b!3664937 (= e!2269238 (list!14345 (xs!15021 (c!633135 (charsOf!3816 (_1!22390 lt!1274714))))))))

(declare-fun b!3664938 () Bool)

(assert (=> b!3664938 (= e!2269238 (++!9618 (list!14343 (left!30162 (c!633135 (charsOf!3816 (_1!22390 lt!1274714))))) (list!14343 (right!30492 (c!633135 (charsOf!3816 (_1!22390 lt!1274714)))))))))

(declare-fun d!1076620 () Bool)

(declare-fun c!633603 () Bool)

(assert (=> d!1076620 (= c!633603 ((_ is Empty!11819) (c!633135 (charsOf!3816 (_1!22390 lt!1274714)))))))

(assert (=> d!1076620 (= (list!14343 (c!633135 (charsOf!3816 (_1!22390 lt!1274714)))) e!2269237)))

(assert (= (and d!1076620 c!633603) b!3664935))

(assert (= (and d!1076620 (not c!633603)) b!3664936))

(assert (= (and b!3664936 c!633604) b!3664937))

(assert (= (and b!3664936 (not c!633604)) b!3664938))

(declare-fun m!4172725 () Bool)

(assert (=> b!3664937 m!4172725))

(declare-fun m!4172727 () Bool)

(assert (=> b!3664938 m!4172727))

(declare-fun m!4172729 () Bool)

(assert (=> b!3664938 m!4172729))

(assert (=> b!3664938 m!4172727))

(assert (=> b!3664938 m!4172729))

(declare-fun m!4172731 () Bool)

(assert (=> b!3664938 m!4172731))

(assert (=> d!1075898 d!1076620))

(declare-fun d!1076622 () Bool)

(assert (=> d!1076622 (= (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 lt!1274941)))) (v!38128 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 lt!1274941)))))))

(assert (=> b!3663388 d!1076622))

(assert (=> b!3663388 d!1076258))

(declare-fun d!1076624 () Bool)

(assert (=> d!1076624 (= (_2!22390 lt!1274714) lt!1274723)))

(assert (=> d!1076624 true))

(declare-fun _$63!924 () Unit!55997)

(assert (=> d!1076624 (= (choose!21722 lt!1274729 (_2!22390 lt!1274714) lt!1274729 lt!1274723 lt!1274713) _$63!924)))

(assert (=> d!1075844 d!1076624))

(assert (=> d!1075844 d!1075784))

(declare-fun d!1076626 () Bool)

(declare-fun lt!1275589 () Int)

(assert (=> d!1076626 (>= lt!1275589 0)))

(declare-fun e!2269239 () Int)

(assert (=> d!1076626 (= lt!1275589 e!2269239)))

(declare-fun c!633605 () Bool)

(assert (=> d!1076626 (= c!633605 (and ((_ is Cons!38647) (t!298754 rules!3307)) (= (h!44067 (t!298754 rules!3307)) (rule!8618 (_1!22390 lt!1274714)))))))

(assert (=> d!1076626 (contains!7670 (t!298754 rules!3307) (rule!8618 (_1!22390 lt!1274714)))))

(assert (=> d!1076626 (= (getIndex!470 (t!298754 rules!3307) (rule!8618 (_1!22390 lt!1274714))) lt!1275589)))

(declare-fun b!3664941 () Bool)

(declare-fun e!2269240 () Int)

(assert (=> b!3664941 (= e!2269240 (+ 1 (getIndex!470 (t!298754 (t!298754 rules!3307)) (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun b!3664942 () Bool)

(assert (=> b!3664942 (= e!2269240 (- 1))))

(declare-fun b!3664939 () Bool)

(assert (=> b!3664939 (= e!2269239 0)))

(declare-fun b!3664940 () Bool)

(assert (=> b!3664940 (= e!2269239 e!2269240)))

(declare-fun c!633606 () Bool)

(assert (=> b!3664940 (= c!633606 (and ((_ is Cons!38647) (t!298754 rules!3307)) (not (= (h!44067 (t!298754 rules!3307)) (rule!8618 (_1!22390 lt!1274714))))))))

(assert (= (and d!1076626 c!633605) b!3664939))

(assert (= (and d!1076626 (not c!633605)) b!3664940))

(assert (= (and b!3664940 c!633606) b!3664941))

(assert (= (and b!3664940 (not c!633606)) b!3664942))

(assert (=> d!1076626 m!4170051))

(declare-fun m!4172733 () Bool)

(assert (=> b!3664941 m!4172733))

(assert (=> b!3663694 d!1076626))

(declare-fun b!3664946 () Bool)

(declare-fun e!2269241 () Bool)

(assert (=> b!3664946 (= e!2269241 (>= (size!29528 (tail!5673 lt!1274713)) (size!29528 (tail!5673 lt!1274729))))))

(declare-fun b!3664945 () Bool)

(declare-fun e!2269243 () Bool)

(assert (=> b!3664945 (= e!2269243 (isPrefix!3165 (tail!5673 (tail!5673 lt!1274729)) (tail!5673 (tail!5673 lt!1274713))))))

(declare-fun b!3664944 () Bool)

(declare-fun res!1488088 () Bool)

(assert (=> b!3664944 (=> (not res!1488088) (not e!2269243))))

(assert (=> b!3664944 (= res!1488088 (= (head!7834 (tail!5673 lt!1274729)) (head!7834 (tail!5673 lt!1274713))))))

(declare-fun d!1076628 () Bool)

(assert (=> d!1076628 e!2269241))

(declare-fun res!1488086 () Bool)

(assert (=> d!1076628 (=> res!1488086 e!2269241)))

(declare-fun lt!1275590 () Bool)

(assert (=> d!1076628 (= res!1488086 (not lt!1275590))))

(declare-fun e!2269242 () Bool)

(assert (=> d!1076628 (= lt!1275590 e!2269242)))

(declare-fun res!1488087 () Bool)

(assert (=> d!1076628 (=> res!1488087 e!2269242)))

(assert (=> d!1076628 (= res!1488087 ((_ is Nil!38646) (tail!5673 lt!1274729)))))

(assert (=> d!1076628 (= (isPrefix!3165 (tail!5673 lt!1274729) (tail!5673 lt!1274713)) lt!1275590)))

(declare-fun b!3664943 () Bool)

(assert (=> b!3664943 (= e!2269242 e!2269243)))

(declare-fun res!1488085 () Bool)

(assert (=> b!3664943 (=> (not res!1488085) (not e!2269243))))

(assert (=> b!3664943 (= res!1488085 (not ((_ is Nil!38646) (tail!5673 lt!1274713))))))

(assert (= (and d!1076628 (not res!1488087)) b!3664943))

(assert (= (and b!3664943 res!1488085) b!3664944))

(assert (= (and b!3664944 res!1488088) b!3664945))

(assert (= (and d!1076628 (not res!1488086)) b!3664946))

(assert (=> b!3664946 m!4170577))

(declare-fun m!4172735 () Bool)

(assert (=> b!3664946 m!4172735))

(assert (=> b!3664946 m!4170211))

(assert (=> b!3664946 m!4171559))

(assert (=> b!3664945 m!4170211))

(assert (=> b!3664945 m!4171561))

(assert (=> b!3664945 m!4170577))

(declare-fun m!4172737 () Bool)

(assert (=> b!3664945 m!4172737))

(assert (=> b!3664945 m!4171561))

(assert (=> b!3664945 m!4172737))

(declare-fun m!4172739 () Bool)

(assert (=> b!3664945 m!4172739))

(assert (=> b!3664944 m!4170211))

(assert (=> b!3664944 m!4171569))

(assert (=> b!3664944 m!4170577))

(declare-fun m!4172741 () Bool)

(assert (=> b!3664944 m!4172741))

(assert (=> b!3663505 d!1076628))

(assert (=> b!3663505 d!1076214))

(declare-fun d!1076630 () Bool)

(assert (=> d!1076630 (= (tail!5673 lt!1274713) (t!298753 lt!1274713))))

(assert (=> b!3663505 d!1076630))

(declare-fun d!1076632 () Bool)

(assert (=> d!1076632 (= (list!14340 lt!1275118) (list!14343 (c!633135 lt!1275118)))))

(declare-fun bs!572909 () Bool)

(assert (= bs!572909 d!1076632))

(declare-fun m!4172743 () Bool)

(assert (=> bs!572909 m!4172743))

(assert (=> d!1075888 d!1076632))

(assert (=> b!3663732 d!1076062))

(assert (=> b!3663732 d!1076006))

(declare-fun b!3664947 () Bool)

(declare-fun res!1488092 () Bool)

(declare-fun e!2269247 () Bool)

(assert (=> b!3664947 (=> (not res!1488092) (not e!2269247))))

(declare-fun lt!1275594 () Option!8232)

(assert (=> b!3664947 (= res!1488092 (= (rule!8618 (_1!22390 (get!12743 lt!1275594))) (h!44067 rules!3307)))))

(declare-fun b!3664948 () Bool)

(declare-fun e!2269246 () Bool)

(assert (=> b!3664948 (= e!2269246 e!2269247)))

(declare-fun res!1488093 () Bool)

(assert (=> b!3664948 (=> (not res!1488093) (not e!2269247))))

(assert (=> b!3664948 (= res!1488093 (matchR!5130 (regex!5802 (h!44067 rules!3307)) (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275594))))))))

(declare-fun b!3664949 () Bool)

(declare-fun e!2269244 () Option!8232)

(assert (=> b!3664949 (= e!2269244 None!8231)))

(declare-fun b!3664950 () Bool)

(declare-fun res!1488094 () Bool)

(assert (=> b!3664950 (=> (not res!1488094) (not e!2269247))))

(assert (=> b!3664950 (= res!1488094 (= (value!185817 (_1!22390 (get!12743 lt!1275594))) (apply!9304 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275594)))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 (get!12743 lt!1275594)))))))))

(declare-fun d!1076634 () Bool)

(assert (=> d!1076634 e!2269246))

(declare-fun res!1488095 () Bool)

(assert (=> d!1076634 (=> res!1488095 e!2269246)))

(assert (=> d!1076634 (= res!1488095 (isEmpty!22928 lt!1275594))))

(assert (=> d!1076634 (= lt!1275594 e!2269244)))

(declare-fun c!633607 () Bool)

(declare-fun lt!1275592 () tuple2!38518)

(assert (=> d!1076634 (= c!633607 (isEmpty!22924 (_1!22393 lt!1275592)))))

(assert (=> d!1076634 (= lt!1275592 (findLongestMatch!986 (regex!5802 (h!44067 rules!3307)) lt!1274731))))

(assert (=> d!1076634 (ruleValid!2066 thiss!23823 (h!44067 rules!3307))))

(assert (=> d!1076634 (= (maxPrefixOneRule!2063 thiss!23823 (h!44067 rules!3307) lt!1274731) lt!1275594)))

(declare-fun b!3664951 () Bool)

(declare-fun e!2269245 () Bool)

(assert (=> b!3664951 (= e!2269245 (matchR!5130 (regex!5802 (h!44067 rules!3307)) (_1!22393 (findLongestMatchInner!1071 (regex!5802 (h!44067 rules!3307)) Nil!38646 (size!29528 Nil!38646) lt!1274731 lt!1274731 (size!29528 lt!1274731)))))))

(declare-fun b!3664952 () Bool)

(assert (=> b!3664952 (= e!2269247 (= (size!29527 (_1!22390 (get!12743 lt!1275594))) (size!29528 (originalCharacters!6516 (_1!22390 (get!12743 lt!1275594))))))))

(declare-fun b!3664953 () Bool)

(declare-fun res!1488091 () Bool)

(assert (=> b!3664953 (=> (not res!1488091) (not e!2269247))))

(assert (=> b!3664953 (= res!1488091 (< (size!29528 (_2!22390 (get!12743 lt!1275594))) (size!29528 lt!1274731)))))

(declare-fun b!3664954 () Bool)

(declare-fun res!1488090 () Bool)

(assert (=> b!3664954 (=> (not res!1488090) (not e!2269247))))

(assert (=> b!3664954 (= res!1488090 (= (++!9618 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275594)))) (_2!22390 (get!12743 lt!1275594))) lt!1274731))))

(declare-fun b!3664955 () Bool)

(assert (=> b!3664955 (= e!2269244 (Some!8231 (tuple2!38513 (Token!10971 (apply!9304 (transformation!5802 (h!44067 rules!3307)) (seqFromList!4351 (_1!22393 lt!1275592))) (h!44067 rules!3307) (size!29529 (seqFromList!4351 (_1!22393 lt!1275592))) (_1!22393 lt!1275592)) (_2!22393 lt!1275592))))))

(declare-fun lt!1275591 () Unit!55997)

(assert (=> b!3664955 (= lt!1275591 (longestMatchIsAcceptedByMatchOrIsEmpty!1044 (regex!5802 (h!44067 rules!3307)) lt!1274731))))

(declare-fun res!1488089 () Bool)

(assert (=> b!3664955 (= res!1488089 (isEmpty!22924 (_1!22393 (findLongestMatchInner!1071 (regex!5802 (h!44067 rules!3307)) Nil!38646 (size!29528 Nil!38646) lt!1274731 lt!1274731 (size!29528 lt!1274731)))))))

(assert (=> b!3664955 (=> res!1488089 e!2269245)))

(assert (=> b!3664955 e!2269245))

(declare-fun lt!1275595 () Unit!55997)

(assert (=> b!3664955 (= lt!1275595 lt!1275591)))

(declare-fun lt!1275593 () Unit!55997)

(assert (=> b!3664955 (= lt!1275593 (lemmaSemiInverse!1551 (transformation!5802 (h!44067 rules!3307)) (seqFromList!4351 (_1!22393 lt!1275592))))))

(assert (= (and d!1076634 c!633607) b!3664949))

(assert (= (and d!1076634 (not c!633607)) b!3664955))

(assert (= (and b!3664955 (not res!1488089)) b!3664951))

(assert (= (and d!1076634 (not res!1488095)) b!3664948))

(assert (= (and b!3664948 res!1488093) b!3664954))

(assert (= (and b!3664954 res!1488090) b!3664953))

(assert (= (and b!3664953 res!1488091) b!3664947))

(assert (= (and b!3664947 res!1488092) b!3664950))

(assert (= (and b!3664950 res!1488094) b!3664952))

(declare-fun m!4172745 () Bool)

(assert (=> b!3664952 m!4172745))

(declare-fun m!4172747 () Bool)

(assert (=> b!3664952 m!4172747))

(assert (=> b!3664954 m!4172745))

(declare-fun m!4172749 () Bool)

(assert (=> b!3664954 m!4172749))

(assert (=> b!3664954 m!4172749))

(declare-fun m!4172751 () Bool)

(assert (=> b!3664954 m!4172751))

(assert (=> b!3664954 m!4172751))

(declare-fun m!4172753 () Bool)

(assert (=> b!3664954 m!4172753))

(declare-fun m!4172755 () Bool)

(assert (=> d!1076634 m!4172755))

(declare-fun m!4172757 () Bool)

(assert (=> d!1076634 m!4172757))

(declare-fun m!4172759 () Bool)

(assert (=> d!1076634 m!4172759))

(assert (=> d!1076634 m!4172687))

(assert (=> b!3664948 m!4172745))

(assert (=> b!3664948 m!4172749))

(assert (=> b!3664948 m!4172749))

(assert (=> b!3664948 m!4172751))

(assert (=> b!3664948 m!4172751))

(declare-fun m!4172761 () Bool)

(assert (=> b!3664948 m!4172761))

(declare-fun m!4172763 () Bool)

(assert (=> b!3664955 m!4172763))

(declare-fun m!4172765 () Bool)

(assert (=> b!3664955 m!4172765))

(assert (=> b!3664955 m!4170751))

(assert (=> b!3664955 m!4169895))

(declare-fun m!4172767 () Bool)

(assert (=> b!3664955 m!4172767))

(assert (=> b!3664955 m!4172763))

(declare-fun m!4172769 () Bool)

(assert (=> b!3664955 m!4172769))

(assert (=> b!3664955 m!4169895))

(assert (=> b!3664955 m!4172763))

(assert (=> b!3664955 m!4170751))

(assert (=> b!3664955 m!4172763))

(declare-fun m!4172771 () Bool)

(assert (=> b!3664955 m!4172771))

(declare-fun m!4172773 () Bool)

(assert (=> b!3664955 m!4172773))

(declare-fun m!4172775 () Bool)

(assert (=> b!3664955 m!4172775))

(assert (=> b!3664953 m!4172745))

(declare-fun m!4172777 () Bool)

(assert (=> b!3664953 m!4172777))

(assert (=> b!3664953 m!4169895))

(assert (=> b!3664950 m!4172745))

(declare-fun m!4172779 () Bool)

(assert (=> b!3664950 m!4172779))

(assert (=> b!3664950 m!4172779))

(declare-fun m!4172781 () Bool)

(assert (=> b!3664950 m!4172781))

(assert (=> b!3664947 m!4172745))

(assert (=> b!3664951 m!4170751))

(assert (=> b!3664951 m!4169895))

(assert (=> b!3664951 m!4170751))

(assert (=> b!3664951 m!4169895))

(assert (=> b!3664951 m!4172767))

(declare-fun m!4172783 () Bool)

(assert (=> b!3664951 m!4172783))

(assert (=> bm!265035 d!1076634))

(declare-fun b!3664959 () Bool)

(declare-fun e!2269248 () Bool)

(assert (=> b!3664959 (= e!2269248 (>= (size!29528 (tail!5673 lt!1274713)) (size!29528 (tail!5673 lt!1274731))))))

(declare-fun b!3664958 () Bool)

(declare-fun e!2269250 () Bool)

(assert (=> b!3664958 (= e!2269250 (isPrefix!3165 (tail!5673 (tail!5673 lt!1274731)) (tail!5673 (tail!5673 lt!1274713))))))

(declare-fun b!3664957 () Bool)

(declare-fun res!1488099 () Bool)

(assert (=> b!3664957 (=> (not res!1488099) (not e!2269250))))

(assert (=> b!3664957 (= res!1488099 (= (head!7834 (tail!5673 lt!1274731)) (head!7834 (tail!5673 lt!1274713))))))

(declare-fun d!1076636 () Bool)

(assert (=> d!1076636 e!2269248))

(declare-fun res!1488097 () Bool)

(assert (=> d!1076636 (=> res!1488097 e!2269248)))

(declare-fun lt!1275596 () Bool)

(assert (=> d!1076636 (= res!1488097 (not lt!1275596))))

(declare-fun e!2269249 () Bool)

(assert (=> d!1076636 (= lt!1275596 e!2269249)))

(declare-fun res!1488098 () Bool)

(assert (=> d!1076636 (=> res!1488098 e!2269249)))

(assert (=> d!1076636 (= res!1488098 ((_ is Nil!38646) (tail!5673 lt!1274731)))))

(assert (=> d!1076636 (= (isPrefix!3165 (tail!5673 lt!1274731) (tail!5673 lt!1274713)) lt!1275596)))

(declare-fun b!3664956 () Bool)

(assert (=> b!3664956 (= e!2269249 e!2269250)))

(declare-fun res!1488096 () Bool)

(assert (=> b!3664956 (=> (not res!1488096) (not e!2269250))))

(assert (=> b!3664956 (= res!1488096 (not ((_ is Nil!38646) (tail!5673 lt!1274713))))))

(assert (= (and d!1076636 (not res!1488098)) b!3664956))

(assert (= (and b!3664956 res!1488096) b!3664957))

(assert (= (and b!3664957 res!1488099) b!3664958))

(assert (= (and d!1076636 (not res!1488097)) b!3664959))

(assert (=> b!3664959 m!4170577))

(assert (=> b!3664959 m!4172735))

(assert (=> b!3664959 m!4170575))

(assert (=> b!3664959 m!4171371))

(assert (=> b!3664958 m!4170575))

(assert (=> b!3664958 m!4171111))

(assert (=> b!3664958 m!4170577))

(assert (=> b!3664958 m!4172737))

(assert (=> b!3664958 m!4171111))

(assert (=> b!3664958 m!4172737))

(declare-fun m!4172785 () Bool)

(assert (=> b!3664958 m!4172785))

(assert (=> b!3664957 m!4170575))

(assert (=> b!3664957 m!4171115))

(assert (=> b!3664957 m!4170577))

(assert (=> b!3664957 m!4172741))

(assert (=> b!3663497 d!1076636))

(assert (=> b!3663497 d!1076006))

(assert (=> b!3663497 d!1076630))

(declare-fun d!1076638 () Bool)

(assert (=> d!1076638 (= (isEmpty!22928 lt!1274987) (not ((_ is Some!8231) lt!1274987)))))

(assert (=> d!1075748 d!1076638))

(declare-fun b!3664963 () Bool)

(declare-fun e!2269251 () Bool)

(assert (=> b!3664963 (= e!2269251 (>= (size!29528 lt!1274713) (size!29528 lt!1274713)))))

(declare-fun b!3664962 () Bool)

(declare-fun e!2269253 () Bool)

(assert (=> b!3664962 (= e!2269253 (isPrefix!3165 (tail!5673 lt!1274713) (tail!5673 lt!1274713)))))

(declare-fun b!3664961 () Bool)

(declare-fun res!1488103 () Bool)

(assert (=> b!3664961 (=> (not res!1488103) (not e!2269253))))

(assert (=> b!3664961 (= res!1488103 (= (head!7834 lt!1274713) (head!7834 lt!1274713)))))

(declare-fun d!1076640 () Bool)

(assert (=> d!1076640 e!2269251))

(declare-fun res!1488101 () Bool)

(assert (=> d!1076640 (=> res!1488101 e!2269251)))

(declare-fun lt!1275597 () Bool)

(assert (=> d!1076640 (= res!1488101 (not lt!1275597))))

(declare-fun e!2269252 () Bool)

(assert (=> d!1076640 (= lt!1275597 e!2269252)))

(declare-fun res!1488102 () Bool)

(assert (=> d!1076640 (=> res!1488102 e!2269252)))

(assert (=> d!1076640 (= res!1488102 ((_ is Nil!38646) lt!1274713))))

(assert (=> d!1076640 (= (isPrefix!3165 lt!1274713 lt!1274713) lt!1275597)))

(declare-fun b!3664960 () Bool)

(assert (=> b!3664960 (= e!2269252 e!2269253)))

(declare-fun res!1488100 () Bool)

(assert (=> b!3664960 (=> (not res!1488100) (not e!2269253))))

(assert (=> b!3664960 (= res!1488100 (not ((_ is Nil!38646) lt!1274713)))))

(assert (= (and d!1076640 (not res!1488102)) b!3664960))

(assert (= (and b!3664960 res!1488100) b!3664961))

(assert (= (and b!3664961 res!1488103) b!3664962))

(assert (= (and d!1076640 (not res!1488101)) b!3664963))

(assert (=> b!3664963 m!4170547))

(assert (=> b!3664963 m!4170547))

(assert (=> b!3664962 m!4170577))

(assert (=> b!3664962 m!4170577))

(assert (=> b!3664962 m!4170577))

(assert (=> b!3664962 m!4170577))

(declare-fun m!4172787 () Bool)

(assert (=> b!3664962 m!4172787))

(assert (=> b!3664961 m!4170583))

(assert (=> b!3664961 m!4170583))

(assert (=> d!1075748 d!1076640))

(declare-fun d!1076642 () Bool)

(assert (=> d!1076642 (isPrefix!3165 lt!1274713 lt!1274713)))

(declare-fun lt!1275598 () Unit!55997)

(assert (=> d!1076642 (= lt!1275598 (choose!21742 lt!1274713 lt!1274713))))

(assert (=> d!1076642 (= (lemmaIsPrefixRefl!1998 lt!1274713 lt!1274713) lt!1275598)))

(declare-fun bs!572910 () Bool)

(assert (= bs!572910 d!1076642))

(assert (=> bs!572910 m!4170551))

(declare-fun m!4172789 () Bool)

(assert (=> bs!572910 m!4172789))

(assert (=> d!1075748 d!1076642))

(assert (=> d!1075748 d!1076606))

(assert (=> b!3663592 d!1075604))

(assert (=> b!3663640 d!1075836))

(declare-fun d!1076644 () Bool)

(declare-fun lt!1275599 () Int)

(assert (=> d!1076644 (>= lt!1275599 0)))

(declare-fun e!2269254 () Int)

(assert (=> d!1076644 (= lt!1275599 e!2269254)))

(declare-fun c!633608 () Bool)

(assert (=> d!1076644 (= c!633608 (and ((_ is Cons!38647) (t!298754 rules!3307)) (= (h!44067 (t!298754 rules!3307)) rule!403)))))

(assert (=> d!1076644 (contains!7670 (t!298754 rules!3307) rule!403)))

(assert (=> d!1076644 (= (getIndex!470 (t!298754 rules!3307) rule!403) lt!1275599)))

(declare-fun b!3664966 () Bool)

(declare-fun e!2269255 () Int)

(assert (=> b!3664966 (= e!2269255 (+ 1 (getIndex!470 (t!298754 (t!298754 rules!3307)) rule!403)))))

(declare-fun b!3664967 () Bool)

(assert (=> b!3664967 (= e!2269255 (- 1))))

(declare-fun b!3664964 () Bool)

(assert (=> b!3664964 (= e!2269254 0)))

(declare-fun b!3664965 () Bool)

(assert (=> b!3664965 (= e!2269254 e!2269255)))

(declare-fun c!633609 () Bool)

(assert (=> b!3664965 (= c!633609 (and ((_ is Cons!38647) (t!298754 rules!3307)) (not (= (h!44067 (t!298754 rules!3307)) rule!403))))))

(assert (= (and d!1076644 c!633608) b!3664964))

(assert (= (and d!1076644 (not c!633608)) b!3664965))

(assert (= (and b!3664965 c!633609) b!3664966))

(assert (= (and b!3664965 (not c!633609)) b!3664967))

(assert (=> d!1076644 m!4170785))

(declare-fun m!4172791 () Bool)

(assert (=> b!3664966 m!4172791))

(assert (=> b!3663698 d!1076644))

(assert (=> d!1075920 d!1076224))

(assert (=> b!3663583 d!1075982))

(declare-fun d!1076646 () Bool)

(assert (=> d!1076646 (= (apply!9304 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275044)))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 (get!12743 lt!1275044))))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275044))))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 (get!12743 lt!1275044))))))))

(declare-fun b_lambda!108775 () Bool)

(assert (=> (not b_lambda!108775) (not d!1076646)))

(declare-fun t!299082 () Bool)

(declare-fun tb!212061 () Bool)

(assert (=> (and b!3662992 (= (toValue!8094 (transformation!5802 (rule!8618 token!511))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275044)))))) t!299082) tb!212061))

(declare-fun result!258122 () Bool)

(assert (=> tb!212061 (= result!258122 (inv!21 (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275044))))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 (get!12743 lt!1275044)))))))))

(declare-fun m!4172793 () Bool)

(assert (=> tb!212061 m!4172793))

(assert (=> d!1076646 t!299082))

(declare-fun b_and!272423 () Bool)

(assert (= b_and!272419 (and (=> t!299082 result!258122) b_and!272423)))

(declare-fun tb!212063 () Bool)

(declare-fun t!299084 () Bool)

(assert (=> (and b!3663022 (= (toValue!8094 (transformation!5802 rule!403)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275044)))))) t!299084) tb!212063))

(declare-fun result!258124 () Bool)

(assert (= result!258124 result!258122))

(assert (=> d!1076646 t!299084))

(declare-fun b_and!272425 () Bool)

(assert (= b_and!272413 (and (=> t!299084 result!258124) b_and!272425)))

(declare-fun tb!212065 () Bool)

(declare-fun t!299086 () Bool)

(assert (=> (and b!3662995 (= (toValue!8094 (transformation!5802 (h!44067 rules!3307))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275044)))))) t!299086) tb!212065))

(declare-fun result!258126 () Bool)

(assert (= result!258126 result!258122))

(assert (=> d!1076646 t!299086))

(declare-fun b_and!272427 () Bool)

(assert (= b_and!272417 (and (=> t!299086 result!258126) b_and!272427)))

(declare-fun tb!212067 () Bool)

(declare-fun t!299088 () Bool)

(assert (=> (and b!3663012 (= (toValue!8094 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275044)))))) t!299088) tb!212067))

(declare-fun result!258128 () Bool)

(assert (= result!258128 result!258122))

(assert (=> d!1076646 t!299088))

(declare-fun b_and!272429 () Bool)

(assert (= b_and!272415 (and (=> t!299088 result!258128) b_and!272429)))

(declare-fun tb!212069 () Bool)

(declare-fun t!299090 () Bool)

(assert (=> (and b!3663858 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275044)))))) t!299090) tb!212069))

(declare-fun result!258130 () Bool)

(assert (= result!258130 result!258122))

(assert (=> d!1076646 t!299090))

(declare-fun b_and!272431 () Bool)

(assert (= b_and!272421 (and (=> t!299090 result!258130) b_and!272431)))

(assert (=> d!1076646 m!4170765))

(declare-fun m!4172795 () Bool)

(assert (=> d!1076646 m!4172795))

(assert (=> b!3663583 d!1076646))

(declare-fun d!1076648 () Bool)

(assert (=> d!1076648 (= (seqFromList!4351 (originalCharacters!6516 (_1!22390 (get!12743 lt!1275044)))) (fromListB!2011 (originalCharacters!6516 (_1!22390 (get!12743 lt!1275044)))))))

(declare-fun bs!572911 () Bool)

(assert (= bs!572911 d!1076648))

(declare-fun m!4172797 () Bool)

(assert (=> bs!572911 m!4172797))

(assert (=> b!3663583 d!1076648))

(declare-fun d!1076650 () Bool)

(declare-fun lt!1275600 () Bool)

(assert (=> d!1076650 (= lt!1275600 (select (content!5589 (t!298753 (usedCharacters!1014 (regex!5802 anOtherTypeRule!33)))) lt!1274726))))

(declare-fun e!2269258 () Bool)

(assert (=> d!1076650 (= lt!1275600 e!2269258)))

(declare-fun res!1488104 () Bool)

(assert (=> d!1076650 (=> (not res!1488104) (not e!2269258))))

(assert (=> d!1076650 (= res!1488104 ((_ is Cons!38646) (t!298753 (usedCharacters!1014 (regex!5802 anOtherTypeRule!33)))))))

(assert (=> d!1076650 (= (contains!7669 (t!298753 (usedCharacters!1014 (regex!5802 anOtherTypeRule!33))) lt!1274726) lt!1275600)))

(declare-fun b!3664968 () Bool)

(declare-fun e!2269257 () Bool)

(assert (=> b!3664968 (= e!2269258 e!2269257)))

(declare-fun res!1488105 () Bool)

(assert (=> b!3664968 (=> res!1488105 e!2269257)))

(assert (=> b!3664968 (= res!1488105 (= (h!44066 (t!298753 (usedCharacters!1014 (regex!5802 anOtherTypeRule!33)))) lt!1274726))))

(declare-fun b!3664969 () Bool)

(assert (=> b!3664969 (= e!2269257 (contains!7669 (t!298753 (t!298753 (usedCharacters!1014 (regex!5802 anOtherTypeRule!33)))) lt!1274726))))

(assert (= (and d!1076650 res!1488104) b!3664968))

(assert (= (and b!3664968 (not res!1488105)) b!3664969))

(assert (=> d!1076650 m!4171413))

(declare-fun m!4172799 () Bool)

(assert (=> d!1076650 m!4172799))

(declare-fun m!4172801 () Bool)

(assert (=> b!3664969 m!4172801))

(assert (=> b!3663796 d!1076650))

(declare-fun d!1076652 () Bool)

(assert (=> d!1076652 (= (list!14340 (dynLambda!16896 (toChars!7953 (transformation!5802 rule!403)) (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745))) (list!14343 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 rule!403)) (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745)))))))

(declare-fun bs!572912 () Bool)

(assert (= bs!572912 d!1076652))

(declare-fun m!4172803 () Bool)

(assert (=> bs!572912 m!4172803))

(assert (=> d!1075606 d!1076652))

(declare-fun d!1076654 () Bool)

(assert (=> d!1076654 (= (list!14340 lt!1274745) (list!14343 (c!633135 lt!1274745)))))

(declare-fun bs!572913 () Bool)

(assert (= bs!572913 d!1076654))

(declare-fun m!4172805 () Bool)

(assert (=> bs!572913 m!4172805))

(assert (=> d!1075606 d!1076654))

(declare-fun d!1076656 () Bool)

(assert (=> d!1076656 (dynLambda!16904 lambda!124596 lt!1274745)))

(declare-fun lt!1275601 () Unit!55997)

(assert (=> d!1076656 (= lt!1275601 (choose!21735 lambda!124596 lt!1274745))))

(assert (=> d!1076656 (Forall!1370 lambda!124596)))

(assert (=> d!1076656 (= (ForallOf!732 lambda!124596 lt!1274745) lt!1275601)))

(declare-fun b_lambda!108777 () Bool)

(assert (=> (not b_lambda!108777) (not d!1076656)))

(declare-fun bs!572914 () Bool)

(assert (= bs!572914 d!1076656))

(declare-fun m!4172807 () Bool)

(assert (=> bs!572914 m!4172807))

(declare-fun m!4172809 () Bool)

(assert (=> bs!572914 m!4172809))

(declare-fun m!4172811 () Bool)

(assert (=> bs!572914 m!4172811))

(assert (=> d!1075606 d!1076656))

(declare-fun d!1076658 () Bool)

(declare-fun lt!1275602 () Int)

(assert (=> d!1076658 (>= lt!1275602 0)))

(declare-fun e!2269259 () Int)

(assert (=> d!1076658 (= lt!1275602 e!2269259)))

(declare-fun c!633610 () Bool)

(assert (=> d!1076658 (= c!633610 ((_ is Nil!38646) (list!14340 lt!1274743)))))

(assert (=> d!1076658 (= (size!29528 (list!14340 lt!1274743)) lt!1275602)))

(declare-fun b!3664970 () Bool)

(assert (=> b!3664970 (= e!2269259 0)))

(declare-fun b!3664971 () Bool)

(assert (=> b!3664971 (= e!2269259 (+ 1 (size!29528 (t!298753 (list!14340 lt!1274743)))))))

(assert (= (and d!1076658 c!633610) b!3664970))

(assert (= (and d!1076658 (not c!633610)) b!3664971))

(declare-fun m!4172813 () Bool)

(assert (=> b!3664971 m!4172813))

(assert (=> d!1075808 d!1076658))

(assert (=> d!1075808 d!1075788))

(declare-fun d!1076660 () Bool)

(declare-fun lt!1275605 () Int)

(assert (=> d!1076660 (= lt!1275605 (size!29528 (list!14343 (c!633135 lt!1274743))))))

(assert (=> d!1076660 (= lt!1275605 (ite ((_ is Empty!11819) (c!633135 lt!1274743)) 0 (ite ((_ is Leaf!18331) (c!633135 lt!1274743)) (csize!23869 (c!633135 lt!1274743)) (csize!23868 (c!633135 lt!1274743)))))))

(assert (=> d!1076660 (= (size!29531 (c!633135 lt!1274743)) lt!1275605)))

(declare-fun bs!572915 () Bool)

(assert (= bs!572915 d!1076660))

(assert (=> bs!572915 m!4170591))

(assert (=> bs!572915 m!4170591))

(declare-fun m!4172815 () Bool)

(assert (=> bs!572915 m!4172815))

(assert (=> d!1075808 d!1076660))

(declare-fun d!1076662 () Bool)

(assert (=> d!1076662 (= (isEmpty!22924 (originalCharacters!6516 token!511)) ((_ is Nil!38646) (originalCharacters!6516 token!511)))))

(assert (=> d!1075598 d!1076662))

(declare-fun d!1076664 () Bool)

(declare-fun lt!1275606 () Int)

(assert (=> d!1076664 (>= lt!1275606 0)))

(declare-fun e!2269260 () Int)

(assert (=> d!1076664 (= lt!1275606 e!2269260)))

(declare-fun c!633611 () Bool)

(assert (=> d!1076664 (= c!633611 ((_ is Nil!38646) (t!298753 lt!1274729)))))

(assert (=> d!1076664 (= (size!29528 (t!298753 lt!1274729)) lt!1275606)))

(declare-fun b!3664972 () Bool)

(assert (=> b!3664972 (= e!2269260 0)))

(declare-fun b!3664973 () Bool)

(assert (=> b!3664973 (= e!2269260 (+ 1 (size!29528 (t!298753 (t!298753 lt!1274729)))))))

(assert (= (and d!1076664 c!633611) b!3664972))

(assert (= (and d!1076664 (not c!633611)) b!3664973))

(declare-fun m!4172817 () Bool)

(assert (=> b!3664973 m!4172817))

(assert (=> b!3663555 d!1076664))

(declare-fun d!1076666 () Bool)

(declare-fun res!1488106 () Bool)

(declare-fun e!2269261 () Bool)

(assert (=> d!1076666 (=> (not res!1488106) (not e!2269261))))

(assert (=> d!1076666 (= res!1488106 (rulesValid!2232 thiss!23823 (t!298754 rules!3307)))))

(assert (=> d!1076666 (= (rulesInvariant!4788 thiss!23823 (t!298754 rules!3307)) e!2269261)))

(declare-fun b!3664974 () Bool)

(assert (=> b!3664974 (= e!2269261 (noDuplicateTag!2228 thiss!23823 (t!298754 rules!3307) Nil!38650))))

(assert (= (and d!1076666 res!1488106) b!3664974))

(declare-fun m!4172819 () Bool)

(assert (=> d!1076666 m!4172819))

(declare-fun m!4172821 () Bool)

(assert (=> b!3664974 m!4172821))

(assert (=> b!3663240 d!1076666))

(declare-fun d!1076668 () Bool)

(assert (=> d!1076668 (rulesInvariant!4788 thiss!23823 (t!298754 rules!3307))))

(declare-fun lt!1275609 () Unit!55997)

(declare-fun choose!21743 (LexerInterface!5391 Rule!11404 List!38771) Unit!55997)

(assert (=> d!1076668 (= lt!1275609 (choose!21743 thiss!23823 (h!44067 rules!3307) (t!298754 rules!3307)))))

(assert (=> d!1076668 (rulesInvariant!4788 thiss!23823 (Cons!38647 (h!44067 rules!3307) (t!298754 rules!3307)))))

(assert (=> d!1076668 (= (lemmaInvariantOnRulesThenOnTail!604 thiss!23823 (h!44067 rules!3307) (t!298754 rules!3307)) lt!1275609)))

(declare-fun bs!572916 () Bool)

(assert (= bs!572916 d!1076668))

(assert (=> bs!572916 m!4170185))

(declare-fun m!4172823 () Bool)

(assert (=> bs!572916 m!4172823))

(declare-fun m!4172825 () Bool)

(assert (=> bs!572916 m!4172825))

(assert (=> b!3663240 d!1076668))

(declare-fun b!3664975 () Bool)

(declare-fun lt!1275612 () Unit!55997)

(declare-fun lt!1275611 () Unit!55997)

(assert (=> b!3664975 (= lt!1275612 lt!1275611)))

(assert (=> b!3664975 (rulesInvariant!4788 thiss!23823 (t!298754 (t!298754 rules!3307)))))

(assert (=> b!3664975 (= lt!1275611 (lemmaInvariantOnRulesThenOnTail!604 thiss!23823 (h!44067 (t!298754 rules!3307)) (t!298754 (t!298754 rules!3307))))))

(declare-fun e!2269262 () Option!8233)

(assert (=> b!3664975 (= e!2269262 (getRuleFromTag!1406 thiss!23823 (t!298754 (t!298754 rules!3307)) (tag!6584 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun b!3664976 () Bool)

(declare-fun e!2269264 () Bool)

(declare-fun e!2269263 () Bool)

(assert (=> b!3664976 (= e!2269264 e!2269263)))

(declare-fun res!1488107 () Bool)

(assert (=> b!3664976 (=> (not res!1488107) (not e!2269263))))

(declare-fun lt!1275610 () Option!8233)

(assert (=> b!3664976 (= res!1488107 (contains!7670 (t!298754 rules!3307) (get!12744 lt!1275610)))))

(declare-fun b!3664977 () Bool)

(assert (=> b!3664977 (= e!2269262 None!8232)))

(declare-fun b!3664978 () Bool)

(declare-fun e!2269265 () Option!8233)

(assert (=> b!3664978 (= e!2269265 e!2269262)))

(declare-fun c!633612 () Bool)

(assert (=> b!3664978 (= c!633612 (and ((_ is Cons!38647) (t!298754 rules!3307)) (not (= (tag!6584 (h!44067 (t!298754 rules!3307))) (tag!6584 (rule!8618 (_1!22390 lt!1274714)))))))))

(declare-fun d!1076670 () Bool)

(assert (=> d!1076670 e!2269264))

(declare-fun res!1488108 () Bool)

(assert (=> d!1076670 (=> res!1488108 e!2269264)))

(assert (=> d!1076670 (= res!1488108 (isEmpty!22926 lt!1275610))))

(assert (=> d!1076670 (= lt!1275610 e!2269265)))

(declare-fun c!633613 () Bool)

(assert (=> d!1076670 (= c!633613 (and ((_ is Cons!38647) (t!298754 rules!3307)) (= (tag!6584 (h!44067 (t!298754 rules!3307))) (tag!6584 (rule!8618 (_1!22390 lt!1274714))))))))

(assert (=> d!1076670 (rulesInvariant!4788 thiss!23823 (t!298754 rules!3307))))

(assert (=> d!1076670 (= (getRuleFromTag!1406 thiss!23823 (t!298754 rules!3307) (tag!6584 (rule!8618 (_1!22390 lt!1274714)))) lt!1275610)))

(declare-fun b!3664979 () Bool)

(assert (=> b!3664979 (= e!2269263 (= (tag!6584 (get!12744 lt!1275610)) (tag!6584 (rule!8618 (_1!22390 lt!1274714)))))))

(declare-fun b!3664980 () Bool)

(assert (=> b!3664980 (= e!2269265 (Some!8232 (h!44067 (t!298754 rules!3307))))))

(assert (= (and d!1076670 c!633613) b!3664980))

(assert (= (and d!1076670 (not c!633613)) b!3664978))

(assert (= (and b!3664978 c!633612) b!3664975))

(assert (= (and b!3664978 (not c!633612)) b!3664977))

(assert (= (and d!1076670 (not res!1488108)) b!3664976))

(assert (= (and b!3664976 res!1488107) b!3664979))

(declare-fun m!4172827 () Bool)

(assert (=> b!3664975 m!4172827))

(declare-fun m!4172829 () Bool)

(assert (=> b!3664975 m!4172829))

(declare-fun m!4172831 () Bool)

(assert (=> b!3664975 m!4172831))

(declare-fun m!4172833 () Bool)

(assert (=> b!3664976 m!4172833))

(assert (=> b!3664976 m!4172833))

(declare-fun m!4172835 () Bool)

(assert (=> b!3664976 m!4172835))

(declare-fun m!4172837 () Bool)

(assert (=> d!1076670 m!4172837))

(assert (=> d!1076670 m!4170185))

(assert (=> b!3664979 m!4172833))

(assert (=> b!3663240 d!1076670))

(declare-fun d!1076672 () Bool)

(declare-fun c!633614 () Bool)

(assert (=> d!1076672 (= c!633614 ((_ is Node!11819) (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (value!185817 (_1!22390 lt!1274714))))))))

(declare-fun e!2269266 () Bool)

(assert (=> d!1076672 (= (inv!52119 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (value!185817 (_1!22390 lt!1274714))))) e!2269266)))

(declare-fun b!3664981 () Bool)

(assert (=> b!3664981 (= e!2269266 (inv!52123 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (value!185817 (_1!22390 lt!1274714))))))))

(declare-fun b!3664982 () Bool)

(declare-fun e!2269267 () Bool)

(assert (=> b!3664982 (= e!2269266 e!2269267)))

(declare-fun res!1488109 () Bool)

(assert (=> b!3664982 (= res!1488109 (not ((_ is Leaf!18331) (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (value!185817 (_1!22390 lt!1274714)))))))))

(assert (=> b!3664982 (=> res!1488109 e!2269267)))

(declare-fun b!3664983 () Bool)

(assert (=> b!3664983 (= e!2269267 (inv!52124 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (value!185817 (_1!22390 lt!1274714))))))))

(assert (= (and d!1076672 c!633614) b!3664981))

(assert (= (and d!1076672 (not c!633614)) b!3664982))

(assert (= (and b!3664982 (not res!1488109)) b!3664983))

(declare-fun m!4172839 () Bool)

(assert (=> b!3664981 m!4172839))

(declare-fun m!4172841 () Bool)

(assert (=> b!3664983 m!4172841))

(assert (=> b!3663264 d!1076672))

(declare-fun b!3664987 () Bool)

(declare-fun e!2269268 () Bool)

(assert (=> b!3664987 (= e!2269268 (>= (size!29528 (tail!5673 lt!1274731)) (size!29528 (tail!5673 lt!1274731))))))

(declare-fun b!3664986 () Bool)

(declare-fun e!2269270 () Bool)

(assert (=> b!3664986 (= e!2269270 (isPrefix!3165 (tail!5673 (tail!5673 lt!1274731)) (tail!5673 (tail!5673 lt!1274731))))))

(declare-fun b!3664985 () Bool)

(declare-fun res!1488113 () Bool)

(assert (=> b!3664985 (=> (not res!1488113) (not e!2269270))))

(assert (=> b!3664985 (= res!1488113 (= (head!7834 (tail!5673 lt!1274731)) (head!7834 (tail!5673 lt!1274731))))))

(declare-fun d!1076674 () Bool)

(assert (=> d!1076674 e!2269268))

(declare-fun res!1488111 () Bool)

(assert (=> d!1076674 (=> res!1488111 e!2269268)))

(declare-fun lt!1275613 () Bool)

(assert (=> d!1076674 (= res!1488111 (not lt!1275613))))

(declare-fun e!2269269 () Bool)

(assert (=> d!1076674 (= lt!1275613 e!2269269)))

(declare-fun res!1488112 () Bool)

(assert (=> d!1076674 (=> res!1488112 e!2269269)))

(assert (=> d!1076674 (= res!1488112 ((_ is Nil!38646) (tail!5673 lt!1274731)))))

(assert (=> d!1076674 (= (isPrefix!3165 (tail!5673 lt!1274731) (tail!5673 lt!1274731)) lt!1275613)))

(declare-fun b!3664984 () Bool)

(assert (=> b!3664984 (= e!2269269 e!2269270)))

(declare-fun res!1488110 () Bool)

(assert (=> b!3664984 (=> (not res!1488110) (not e!2269270))))

(assert (=> b!3664984 (= res!1488110 (not ((_ is Nil!38646) (tail!5673 lt!1274731))))))

(assert (= (and d!1076674 (not res!1488112)) b!3664984))

(assert (= (and b!3664984 res!1488110) b!3664985))

(assert (= (and b!3664985 res!1488113) b!3664986))

(assert (= (and d!1076674 (not res!1488111)) b!3664987))

(assert (=> b!3664987 m!4170575))

(assert (=> b!3664987 m!4171371))

(assert (=> b!3664987 m!4170575))

(assert (=> b!3664987 m!4171371))

(assert (=> b!3664986 m!4170575))

(assert (=> b!3664986 m!4171111))

(assert (=> b!3664986 m!4170575))

(assert (=> b!3664986 m!4171111))

(assert (=> b!3664986 m!4171111))

(assert (=> b!3664986 m!4171111))

(declare-fun m!4172843 () Bool)

(assert (=> b!3664986 m!4172843))

(assert (=> b!3664985 m!4170575))

(assert (=> b!3664985 m!4171115))

(assert (=> b!3664985 m!4170575))

(assert (=> b!3664985 m!4171115))

(assert (=> b!3663591 d!1076674))

(assert (=> b!3663591 d!1076006))

(declare-fun b!3664989 () Bool)

(declare-fun e!2269271 () List!38770)

(assert (=> b!3664989 (= e!2269271 (Cons!38646 (h!44066 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1274987))))) (++!9618 (t!298753 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1274987))))) (_2!22390 (get!12743 lt!1274987)))))))

(declare-fun d!1076676 () Bool)

(declare-fun e!2269272 () Bool)

(assert (=> d!1076676 e!2269272))

(declare-fun res!1488114 () Bool)

(assert (=> d!1076676 (=> (not res!1488114) (not e!2269272))))

(declare-fun lt!1275614 () List!38770)

(assert (=> d!1076676 (= res!1488114 (= (content!5589 lt!1275614) ((_ map or) (content!5589 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1274987))))) (content!5589 (_2!22390 (get!12743 lt!1274987))))))))

(assert (=> d!1076676 (= lt!1275614 e!2269271)))

(declare-fun c!633615 () Bool)

(assert (=> d!1076676 (= c!633615 ((_ is Nil!38646) (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1274987))))))))

(assert (=> d!1076676 (= (++!9618 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1274987)))) (_2!22390 (get!12743 lt!1274987))) lt!1275614)))

(declare-fun b!3664991 () Bool)

(assert (=> b!3664991 (= e!2269272 (or (not (= (_2!22390 (get!12743 lt!1274987)) Nil!38646)) (= lt!1275614 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1274987)))))))))

(declare-fun b!3664990 () Bool)

(declare-fun res!1488115 () Bool)

(assert (=> b!3664990 (=> (not res!1488115) (not e!2269272))))

(assert (=> b!3664990 (= res!1488115 (= (size!29528 lt!1275614) (+ (size!29528 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1274987))))) (size!29528 (_2!22390 (get!12743 lt!1274987))))))))

(declare-fun b!3664988 () Bool)

(assert (=> b!3664988 (= e!2269271 (_2!22390 (get!12743 lt!1274987)))))

(assert (= (and d!1076676 c!633615) b!3664988))

(assert (= (and d!1076676 (not c!633615)) b!3664989))

(assert (= (and d!1076676 res!1488114) b!3664990))

(assert (= (and b!3664990 res!1488115) b!3664991))

(declare-fun m!4172845 () Bool)

(assert (=> b!3664989 m!4172845))

(declare-fun m!4172847 () Bool)

(assert (=> d!1076676 m!4172847))

(assert (=> d!1076676 m!4170535))

(declare-fun m!4172849 () Bool)

(assert (=> d!1076676 m!4172849))

(declare-fun m!4172851 () Bool)

(assert (=> d!1076676 m!4172851))

(declare-fun m!4172853 () Bool)

(assert (=> b!3664990 m!4172853))

(assert (=> b!3664990 m!4170535))

(declare-fun m!4172855 () Bool)

(assert (=> b!3664990 m!4172855))

(assert (=> b!3664990 m!4170545))

(assert (=> b!3663480 d!1076676))

(assert (=> b!3663480 d!1076190))

(assert (=> b!3663480 d!1076192))

(assert (=> b!3663480 d!1076120))

(assert (=> d!1075922 d!1075920))

(declare-fun d!1076678 () Bool)

(assert (=> d!1076678 (ruleValid!2066 thiss!23823 rule!403)))

(assert (=> d!1076678 true))

(declare-fun _$65!1299 () Unit!55997)

(assert (=> d!1076678 (= (choose!21727 thiss!23823 rule!403 rules!3307) _$65!1299)))

(declare-fun bs!572917 () Bool)

(assert (= bs!572917 d!1076678))

(assert (=> bs!572917 m!4169867))

(assert (=> d!1075922 d!1076678))

(assert (=> d!1075922 d!1075868))

(assert (=> d!1075790 d!1075670))

(assert (=> d!1075790 d!1075778))

(declare-fun d!1076680 () Bool)

(assert (=> d!1076680 (isPrefix!3165 lt!1274729 (++!9618 lt!1274729 (_2!22390 lt!1274714)))))

(assert (=> d!1076680 true))

(declare-fun _$46!1475 () Unit!55997)

(assert (=> d!1076680 (= (choose!21712 lt!1274729 (_2!22390 lt!1274714)) _$46!1475)))

(declare-fun bs!572918 () Bool)

(assert (= bs!572918 d!1076680))

(assert (=> bs!572918 m!4169925))

(assert (=> bs!572918 m!4169925))

(assert (=> bs!572918 m!4169949))

(assert (=> d!1075790 d!1076680))

(declare-fun d!1076682 () Bool)

(declare-fun lt!1275615 () Int)

(assert (=> d!1076682 (>= lt!1275615 0)))

(declare-fun e!2269273 () Int)

(assert (=> d!1076682 (= lt!1275615 e!2269273)))

(declare-fun c!633616 () Bool)

(assert (=> d!1076682 (= c!633616 ((_ is Nil!38646) (list!14340 lt!1274733)))))

(assert (=> d!1076682 (= (size!29528 (list!14340 lt!1274733)) lt!1275615)))

(declare-fun b!3664992 () Bool)

(assert (=> b!3664992 (= e!2269273 0)))

(declare-fun b!3664993 () Bool)

(assert (=> b!3664993 (= e!2269273 (+ 1 (size!29528 (t!298753 (list!14340 lt!1274733)))))))

(assert (= (and d!1076682 c!633616) b!3664992))

(assert (= (and d!1076682 (not c!633616)) b!3664993))

(declare-fun m!4172857 () Bool)

(assert (=> b!3664993 m!4172857))

(assert (=> d!1075832 d!1076682))

(assert (=> d!1075832 d!1075886))

(declare-fun d!1076684 () Bool)

(declare-fun lt!1275616 () Int)

(assert (=> d!1076684 (= lt!1275616 (size!29528 (list!14343 (c!633135 lt!1274733))))))

(assert (=> d!1076684 (= lt!1275616 (ite ((_ is Empty!11819) (c!633135 lt!1274733)) 0 (ite ((_ is Leaf!18331) (c!633135 lt!1274733)) (csize!23869 (c!633135 lt!1274733)) (csize!23868 (c!633135 lt!1274733)))))))

(assert (=> d!1076684 (= (size!29531 (c!633135 lt!1274733)) lt!1275616)))

(declare-fun bs!572919 () Bool)

(assert (= bs!572919 d!1076684))

(assert (=> bs!572919 m!4170895))

(assert (=> bs!572919 m!4170895))

(declare-fun m!4172859 () Bool)

(assert (=> bs!572919 m!4172859))

(assert (=> d!1075832 d!1076684))

(declare-fun bs!572920 () Bool)

(declare-fun d!1076686 () Bool)

(assert (= bs!572920 (and d!1076686 d!1075798)))

(declare-fun lambda!124636 () Int)

(assert (=> bs!572920 (= (= (toValue!8094 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) (= lambda!124636 lambda!124601))))

(declare-fun bs!572921 () Bool)

(assert (= bs!572921 (and d!1076686 d!1076142)))

(assert (=> bs!572921 (= (= (toValue!8094 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 rule!403))) (= lambda!124636 lambda!124613))))

(declare-fun bs!572922 () Bool)

(assert (= bs!572922 (and d!1076686 d!1076238)))

(assert (=> bs!572922 (= (= (toValue!8094 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 (rule!8618 token!511)))) (= lambda!124636 lambda!124614))))

(declare-fun bs!572923 () Bool)

(assert (= bs!572923 (and d!1076686 d!1076292)))

(assert (=> bs!572923 (= (= (toValue!8094 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 (h!44067 rules!3307)))) (= lambda!124636 lambda!124616))))

(assert (=> d!1076686 true))

(assert (=> d!1076686 (< (dynLambda!16898 order!21355 (toValue!8094 (transformation!5802 anOtherTypeRule!33))) (dynLambda!16901 order!21361 lambda!124636))))

(assert (=> d!1076686 (= (equivClasses!2374 (toChars!7953 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 anOtherTypeRule!33))) (Forall2!968 lambda!124636))))

(declare-fun bs!572924 () Bool)

(assert (= bs!572924 d!1076686))

(declare-fun m!4172861 () Bool)

(assert (=> bs!572924 m!4172861))

(assert (=> b!3663721 d!1076686))

(declare-fun d!1076688 () Bool)

(declare-fun lt!1275617 () Int)

(assert (=> d!1076688 (>= lt!1275617 0)))

(declare-fun e!2269274 () Int)

(assert (=> d!1076688 (= lt!1275617 e!2269274)))

(declare-fun c!633617 () Bool)

(assert (=> d!1076688 (= c!633617 ((_ is Nil!38646) (_2!22390 (get!12743 lt!1274987))))))

(assert (=> d!1076688 (= (size!29528 (_2!22390 (get!12743 lt!1274987))) lt!1275617)))

(declare-fun b!3664994 () Bool)

(assert (=> b!3664994 (= e!2269274 0)))

(declare-fun b!3664995 () Bool)

(assert (=> b!3664995 (= e!2269274 (+ 1 (size!29528 (t!298753 (_2!22390 (get!12743 lt!1274987))))))))

(assert (= (and d!1076688 c!633617) b!3664994))

(assert (= (and d!1076688 (not c!633617)) b!3664995))

(declare-fun m!4172863 () Bool)

(assert (=> b!3664995 m!4172863))

(assert (=> b!3663484 d!1076688))

(assert (=> b!3663484 d!1076120))

(assert (=> b!3663484 d!1076052))

(declare-fun d!1076690 () Bool)

(declare-fun c!633618 () Bool)

(assert (=> d!1076690 (= c!633618 ((_ is Node!11819) (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743)))))))

(declare-fun e!2269275 () Bool)

(assert (=> d!1076690 (= (inv!52119 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743)))) e!2269275)))

(declare-fun b!3664996 () Bool)

(assert (=> b!3664996 (= e!2269275 (inv!52123 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743)))))))

(declare-fun b!3664997 () Bool)

(declare-fun e!2269276 () Bool)

(assert (=> b!3664997 (= e!2269275 e!2269276)))

(declare-fun res!1488116 () Bool)

(assert (=> b!3664997 (= res!1488116 (not ((_ is Leaf!18331) (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743))))))))

(assert (=> b!3664997 (=> res!1488116 e!2269276)))

(declare-fun b!3664998 () Bool)

(assert (=> b!3664998 (= e!2269276 (inv!52124 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743)))))))

(assert (= (and d!1076690 c!633618) b!3664996))

(assert (= (and d!1076690 (not c!633618)) b!3664997))

(assert (= (and b!3664997 (not res!1488116)) b!3664998))

(declare-fun m!4172865 () Bool)

(assert (=> b!3664996 m!4172865))

(declare-fun m!4172867 () Bool)

(assert (=> b!3664998 m!4172867))

(assert (=> b!3663517 d!1076690))

(assert (=> b!3663710 d!1076240))

(assert (=> b!3663710 d!1076046))

(declare-fun d!1076692 () Bool)

(declare-fun lt!1275618 () Bool)

(assert (=> d!1076692 (= lt!1275618 (select (content!5591 (t!298754 rules!3307)) anOtherTypeRule!33))))

(declare-fun e!2269278 () Bool)

(assert (=> d!1076692 (= lt!1275618 e!2269278)))

(declare-fun res!1488118 () Bool)

(assert (=> d!1076692 (=> (not res!1488118) (not e!2269278))))

(assert (=> d!1076692 (= res!1488118 ((_ is Cons!38647) (t!298754 rules!3307)))))

(assert (=> d!1076692 (= (contains!7670 (t!298754 rules!3307) anOtherTypeRule!33) lt!1275618)))

(declare-fun b!3664999 () Bool)

(declare-fun e!2269277 () Bool)

(assert (=> b!3664999 (= e!2269278 e!2269277)))

(declare-fun res!1488117 () Bool)

(assert (=> b!3664999 (=> res!1488117 e!2269277)))

(assert (=> b!3664999 (= res!1488117 (= (h!44067 (t!298754 rules!3307)) anOtherTypeRule!33))))

(declare-fun b!3665000 () Bool)

(assert (=> b!3665000 (= e!2269277 (contains!7670 (t!298754 (t!298754 rules!3307)) anOtherTypeRule!33))))

(assert (= (and d!1076692 res!1488118) b!3664999))

(assert (= (and b!3664999 (not res!1488117)) b!3665000))

(assert (=> d!1076692 m!4171155))

(declare-fun m!4172869 () Bool)

(assert (=> d!1076692 m!4172869))

(declare-fun m!4172871 () Bool)

(assert (=> b!3665000 m!4172871))

(assert (=> b!3663660 d!1076692))

(declare-fun d!1076694 () Bool)

(assert (=> d!1076694 (= (inv!52120 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 token!511))) (value!185817 token!511))) (isBalanced!3504 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 token!511))) (value!185817 token!511)))))))

(declare-fun bs!572925 () Bool)

(assert (= bs!572925 d!1076694))

(declare-fun m!4172873 () Bool)

(assert (=> bs!572925 m!4172873))

(assert (=> tb!211741 d!1076694))

(assert (=> b!3663387 d!1076622))

(assert (=> b!3663387 d!1076258))

(assert (=> b!3663387 d!1076242))

(assert (=> b!3663387 d!1076252))

(declare-fun bm!265209 () Bool)

(declare-fun call!265214 () Bool)

(assert (=> bm!265209 (= call!265214 (isEmpty!22924 (list!14340 (charsOf!3816 lt!1274941))))))

(declare-fun b!3665001 () Bool)

(declare-fun e!2269282 () Bool)

(assert (=> b!3665001 (= e!2269282 (matchR!5130 (derivativeStep!3224 (regex!5802 (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 lt!1274941))))) (head!7834 (list!14340 (charsOf!3816 lt!1274941)))) (tail!5673 (list!14340 (charsOf!3816 lt!1274941)))))))

(declare-fun b!3665002 () Bool)

(declare-fun e!2269283 () Bool)

(assert (=> b!3665002 (= e!2269283 (not (= (head!7834 (list!14340 (charsOf!3816 lt!1274941))) (c!633134 (regex!5802 (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 lt!1274941)))))))))))

(declare-fun d!1076696 () Bool)

(declare-fun e!2269280 () Bool)

(assert (=> d!1076696 e!2269280))

(declare-fun c!633619 () Bool)

(assert (=> d!1076696 (= c!633619 ((_ is EmptyExpr!10561) (regex!5802 (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 lt!1274941)))))))))

(declare-fun lt!1275619 () Bool)

(assert (=> d!1076696 (= lt!1275619 e!2269282)))

(declare-fun c!633621 () Bool)

(assert (=> d!1076696 (= c!633621 (isEmpty!22924 (list!14340 (charsOf!3816 lt!1274941))))))

(assert (=> d!1076696 (validRegex!4836 (regex!5802 (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 lt!1274941))))))))

(assert (=> d!1076696 (= (matchR!5130 (regex!5802 (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 lt!1274941))))) (list!14340 (charsOf!3816 lt!1274941))) lt!1275619)))

(declare-fun b!3665003 () Bool)

(declare-fun e!2269279 () Bool)

(assert (=> b!3665003 (= e!2269279 e!2269283)))

(declare-fun res!1488126 () Bool)

(assert (=> b!3665003 (=> res!1488126 e!2269283)))

(assert (=> b!3665003 (= res!1488126 call!265214)))

(declare-fun e!2269284 () Bool)

(declare-fun b!3665004 () Bool)

(assert (=> b!3665004 (= e!2269284 (= (head!7834 (list!14340 (charsOf!3816 lt!1274941))) (c!633134 (regex!5802 (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 lt!1274941))))))))))

(declare-fun b!3665005 () Bool)

(declare-fun res!1488121 () Bool)

(assert (=> b!3665005 (=> (not res!1488121) (not e!2269284))))

(assert (=> b!3665005 (= res!1488121 (not call!265214))))

(declare-fun b!3665006 () Bool)

(declare-fun e!2269285 () Bool)

(assert (=> b!3665006 (= e!2269285 e!2269279)))

(declare-fun res!1488123 () Bool)

(assert (=> b!3665006 (=> (not res!1488123) (not e!2269279))))

(assert (=> b!3665006 (= res!1488123 (not lt!1275619))))

(declare-fun b!3665007 () Bool)

(declare-fun e!2269281 () Bool)

(assert (=> b!3665007 (= e!2269281 (not lt!1275619))))

(declare-fun b!3665008 () Bool)

(assert (=> b!3665008 (= e!2269280 e!2269281)))

(declare-fun c!633620 () Bool)

(assert (=> b!3665008 (= c!633620 ((_ is EmptyLang!10561) (regex!5802 (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 lt!1274941)))))))))

(declare-fun b!3665009 () Bool)

(declare-fun res!1488124 () Bool)

(assert (=> b!3665009 (=> res!1488124 e!2269283)))

(assert (=> b!3665009 (= res!1488124 (not (isEmpty!22924 (tail!5673 (list!14340 (charsOf!3816 lt!1274941))))))))

(declare-fun b!3665010 () Bool)

(declare-fun res!1488125 () Bool)

(assert (=> b!3665010 (=> res!1488125 e!2269285)))

(assert (=> b!3665010 (= res!1488125 (not ((_ is ElementMatch!10561) (regex!5802 (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 lt!1274941))))))))))

(assert (=> b!3665010 (= e!2269281 e!2269285)))

(declare-fun b!3665011 () Bool)

(declare-fun res!1488122 () Bool)

(assert (=> b!3665011 (=> (not res!1488122) (not e!2269284))))

(assert (=> b!3665011 (= res!1488122 (isEmpty!22924 (tail!5673 (list!14340 (charsOf!3816 lt!1274941)))))))

(declare-fun b!3665012 () Bool)

(assert (=> b!3665012 (= e!2269280 (= lt!1275619 call!265214))))

(declare-fun b!3665013 () Bool)

(assert (=> b!3665013 (= e!2269282 (nullable!3675 (regex!5802 (get!12744 (getRuleFromTag!1406 thiss!23823 rules!3307 (tag!6584 (rule!8618 lt!1274941)))))))))

(declare-fun b!3665014 () Bool)

(declare-fun res!1488120 () Bool)

(assert (=> b!3665014 (=> res!1488120 e!2269285)))

(assert (=> b!3665014 (= res!1488120 e!2269284)))

(declare-fun res!1488119 () Bool)

(assert (=> b!3665014 (=> (not res!1488119) (not e!2269284))))

(assert (=> b!3665014 (= res!1488119 lt!1275619)))

(assert (= (and d!1076696 c!633621) b!3665013))

(assert (= (and d!1076696 (not c!633621)) b!3665001))

(assert (= (and d!1076696 c!633619) b!3665012))

(assert (= (and d!1076696 (not c!633619)) b!3665008))

(assert (= (and b!3665008 c!633620) b!3665007))

(assert (= (and b!3665008 (not c!633620)) b!3665010))

(assert (= (and b!3665010 (not res!1488125)) b!3665014))

(assert (= (and b!3665014 res!1488119) b!3665005))

(assert (= (and b!3665005 res!1488121) b!3665011))

(assert (= (and b!3665011 res!1488122) b!3665004))

(assert (= (and b!3665014 (not res!1488120)) b!3665006))

(assert (= (and b!3665006 res!1488123) b!3665003))

(assert (= (and b!3665003 (not res!1488126)) b!3665009))

(assert (= (and b!3665009 (not res!1488124)) b!3665002))

(assert (= (or b!3665012 b!3665003 b!3665005) bm!265209))

(assert (=> b!3665009 m!4170399))

(declare-fun m!4172875 () Bool)

(assert (=> b!3665009 m!4172875))

(assert (=> b!3665009 m!4172875))

(declare-fun m!4172877 () Bool)

(assert (=> b!3665009 m!4172877))

(assert (=> b!3665011 m!4170399))

(assert (=> b!3665011 m!4172875))

(assert (=> b!3665011 m!4172875))

(assert (=> b!3665011 m!4172877))

(assert (=> b!3665004 m!4170399))

(declare-fun m!4172879 () Bool)

(assert (=> b!3665004 m!4172879))

(assert (=> b!3665001 m!4170399))

(assert (=> b!3665001 m!4172879))

(assert (=> b!3665001 m!4172879))

(declare-fun m!4172881 () Bool)

(assert (=> b!3665001 m!4172881))

(assert (=> b!3665001 m!4170399))

(assert (=> b!3665001 m!4172875))

(assert (=> b!3665001 m!4172881))

(assert (=> b!3665001 m!4172875))

(declare-fun m!4172883 () Bool)

(assert (=> b!3665001 m!4172883))

(declare-fun m!4172885 () Bool)

(assert (=> b!3665013 m!4172885))

(assert (=> b!3665002 m!4170399))

(assert (=> b!3665002 m!4172879))

(assert (=> d!1076696 m!4170399))

(declare-fun m!4172887 () Bool)

(assert (=> d!1076696 m!4172887))

(declare-fun m!4172889 () Bool)

(assert (=> d!1076696 m!4172889))

(assert (=> bm!265209 m!4170399))

(assert (=> bm!265209 m!4172887))

(assert (=> b!3663387 d!1076696))

(declare-fun d!1076698 () Bool)

(assert (=> d!1076698 (= (isEmpty!22926 lt!1274712) (not ((_ is Some!8232) lt!1274712)))))

(assert (=> d!1075668 d!1076698))

(assert (=> b!3663701 d!1076044))

(declare-fun d!1076700 () Bool)

(declare-fun c!633622 () Bool)

(assert (=> d!1076700 (= c!633622 ((_ is Nil!38646) lt!1274816))))

(declare-fun e!2269286 () (InoxSet C!21308))

(assert (=> d!1076700 (= (content!5589 lt!1274816) e!2269286)))

(declare-fun b!3665015 () Bool)

(assert (=> b!3665015 (= e!2269286 ((as const (Array C!21308 Bool)) false))))

(declare-fun b!3665016 () Bool)

(assert (=> b!3665016 (= e!2269286 ((_ map or) (store ((as const (Array C!21308 Bool)) false) (h!44066 lt!1274816) true) (content!5589 (t!298753 lt!1274816))))))

(assert (= (and d!1076700 c!633622) b!3665015))

(assert (= (and d!1076700 (not c!633622)) b!3665016))

(declare-fun m!4172891 () Bool)

(assert (=> b!3665016 m!4172891))

(declare-fun m!4172893 () Bool)

(assert (=> b!3665016 m!4172893))

(assert (=> d!1075644 d!1076700))

(declare-fun d!1076702 () Bool)

(declare-fun c!633623 () Bool)

(assert (=> d!1076702 (= c!633623 ((_ is Nil!38646) lt!1274731))))

(declare-fun e!2269287 () (InoxSet C!21308))

(assert (=> d!1076702 (= (content!5589 lt!1274731) e!2269287)))

(declare-fun b!3665017 () Bool)

(assert (=> b!3665017 (= e!2269287 ((as const (Array C!21308 Bool)) false))))

(declare-fun b!3665018 () Bool)

(assert (=> b!3665018 (= e!2269287 ((_ map or) (store ((as const (Array C!21308 Bool)) false) (h!44066 lt!1274731) true) (content!5589 (t!298753 lt!1274731))))))

(assert (= (and d!1076702 c!633623) b!3665017))

(assert (= (and d!1076702 (not c!633623)) b!3665018))

(declare-fun m!4172895 () Bool)

(assert (=> b!3665018 m!4172895))

(assert (=> b!3665018 m!4171355))

(assert (=> d!1075644 d!1076702))

(declare-fun d!1076704 () Bool)

(declare-fun c!633624 () Bool)

(assert (=> d!1076704 (= c!633624 ((_ is Nil!38646) suffix!1395))))

(declare-fun e!2269288 () (InoxSet C!21308))

(assert (=> d!1076704 (= (content!5589 suffix!1395) e!2269288)))

(declare-fun b!3665019 () Bool)

(assert (=> b!3665019 (= e!2269288 ((as const (Array C!21308 Bool)) false))))

(declare-fun b!3665020 () Bool)

(assert (=> b!3665020 (= e!2269288 ((_ map or) (store ((as const (Array C!21308 Bool)) false) (h!44066 suffix!1395) true) (content!5589 (t!298753 suffix!1395))))))

(assert (= (and d!1076704 c!633624) b!3665019))

(assert (= (and d!1076704 (not c!633624)) b!3665020))

(declare-fun m!4172897 () Bool)

(assert (=> b!3665020 m!4172897))

(declare-fun m!4172899 () Bool)

(assert (=> b!3665020 m!4172899))

(assert (=> d!1075644 d!1076704))

(declare-fun d!1076706 () Bool)

(assert (=> d!1076706 (= (inv!52120 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743))) (isBalanced!3504 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743)))))))

(declare-fun bs!572926 () Bool)

(assert (= bs!572926 d!1076706))

(declare-fun m!4172901 () Bool)

(assert (=> bs!572926 m!4172901))

(assert (=> tb!211837 d!1076706))

(declare-fun d!1076708 () Bool)

(declare-fun lt!1275620 () Bool)

(assert (=> d!1076708 (= lt!1275620 (select (content!5589 (t!298753 lt!1274729)) lt!1274726))))

(declare-fun e!2269290 () Bool)

(assert (=> d!1076708 (= lt!1275620 e!2269290)))

(declare-fun res!1488127 () Bool)

(assert (=> d!1076708 (=> (not res!1488127) (not e!2269290))))

(assert (=> d!1076708 (= res!1488127 ((_ is Cons!38646) (t!298753 lt!1274729)))))

(assert (=> d!1076708 (= (contains!7669 (t!298753 lt!1274729) lt!1274726) lt!1275620)))

(declare-fun b!3665021 () Bool)

(declare-fun e!2269289 () Bool)

(assert (=> b!3665021 (= e!2269290 e!2269289)))

(declare-fun res!1488128 () Bool)

(assert (=> b!3665021 (=> res!1488128 e!2269289)))

(assert (=> b!3665021 (= res!1488128 (= (h!44066 (t!298753 lt!1274729)) lt!1274726))))

(declare-fun b!3665022 () Bool)

(assert (=> b!3665022 (= e!2269289 (contains!7669 (t!298753 (t!298753 lt!1274729)) lt!1274726))))

(assert (= (and d!1076708 res!1488127) b!3665021))

(assert (= (and b!3665021 (not res!1488128)) b!3665022))

(assert (=> d!1076708 m!4171179))

(declare-fun m!4172903 () Bool)

(assert (=> d!1076708 m!4172903))

(declare-fun m!4172905 () Bool)

(assert (=> b!3665022 m!4172905))

(assert (=> b!3663064 d!1076708))

(assert (=> b!3663645 d!1076524))

(assert (=> b!3663645 d!1076214))

(assert (=> b!3663496 d!1075960))

(declare-fun d!1076710 () Bool)

(assert (=> d!1076710 (= (head!7834 lt!1274713) (h!44066 lt!1274713))))

(assert (=> b!3663496 d!1076710))

(assert (=> b!3663504 d!1075836))

(assert (=> b!3663504 d!1076710))

(declare-fun d!1076712 () Bool)

(assert (=> d!1076712 (= (inv!52112 (tag!6584 (h!44067 (t!298754 rules!3307)))) (= (mod (str.len (value!185816 (tag!6584 (h!44067 (t!298754 rules!3307))))) 2) 0))))

(assert (=> b!3663857 d!1076712))

(declare-fun d!1076714 () Bool)

(declare-fun res!1488129 () Bool)

(declare-fun e!2269291 () Bool)

(assert (=> d!1076714 (=> (not res!1488129) (not e!2269291))))

(assert (=> d!1076714 (= res!1488129 (semiInverseModEq!2475 (toChars!7953 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toValue!8094 (transformation!5802 (h!44067 (t!298754 rules!3307))))))))

(assert (=> d!1076714 (= (inv!52115 (transformation!5802 (h!44067 (t!298754 rules!3307)))) e!2269291)))

(declare-fun b!3665023 () Bool)

(assert (=> b!3665023 (= e!2269291 (equivClasses!2374 (toChars!7953 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toValue!8094 (transformation!5802 (h!44067 (t!298754 rules!3307))))))))

(assert (= (and d!1076714 res!1488129) b!3665023))

(declare-fun m!4172907 () Bool)

(assert (=> d!1076714 m!4172907))

(declare-fun m!4172909 () Bool)

(assert (=> b!3665023 m!4172909))

(assert (=> b!3663857 d!1076714))

(declare-fun b!3665024 () Bool)

(declare-fun res!1488133 () Bool)

(declare-fun e!2269295 () Bool)

(assert (=> b!3665024 (=> (not res!1488133) (not e!2269295))))

(declare-fun lt!1275624 () Option!8232)

(assert (=> b!3665024 (= res!1488133 (= (rule!8618 (_1!22390 (get!12743 lt!1275624))) (h!44067 rules!3307)))))

(declare-fun b!3665025 () Bool)

(declare-fun e!2269294 () Bool)

(assert (=> b!3665025 (= e!2269294 e!2269295)))

(declare-fun res!1488134 () Bool)

(assert (=> b!3665025 (=> (not res!1488134) (not e!2269295))))

(assert (=> b!3665025 (= res!1488134 (matchR!5130 (regex!5802 (h!44067 rules!3307)) (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275624))))))))

(declare-fun b!3665026 () Bool)

(declare-fun e!2269292 () Option!8232)

(assert (=> b!3665026 (= e!2269292 None!8231)))

(declare-fun b!3665027 () Bool)

(declare-fun res!1488135 () Bool)

(assert (=> b!3665027 (=> (not res!1488135) (not e!2269295))))

(assert (=> b!3665027 (= res!1488135 (= (value!185817 (_1!22390 (get!12743 lt!1275624))) (apply!9304 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275624)))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 (get!12743 lt!1275624)))))))))

(declare-fun d!1076716 () Bool)

(assert (=> d!1076716 e!2269294))

(declare-fun res!1488136 () Bool)

(assert (=> d!1076716 (=> res!1488136 e!2269294)))

(assert (=> d!1076716 (= res!1488136 (isEmpty!22928 lt!1275624))))

(assert (=> d!1076716 (= lt!1275624 e!2269292)))

(declare-fun c!633625 () Bool)

(declare-fun lt!1275622 () tuple2!38518)

(assert (=> d!1076716 (= c!633625 (isEmpty!22924 (_1!22393 lt!1275622)))))

(assert (=> d!1076716 (= lt!1275622 (findLongestMatch!986 (regex!5802 (h!44067 rules!3307)) lt!1274713))))

(assert (=> d!1076716 (ruleValid!2066 thiss!23823 (h!44067 rules!3307))))

(assert (=> d!1076716 (= (maxPrefixOneRule!2063 thiss!23823 (h!44067 rules!3307) lt!1274713) lt!1275624)))

(declare-fun b!3665028 () Bool)

(declare-fun e!2269293 () Bool)

(assert (=> b!3665028 (= e!2269293 (matchR!5130 (regex!5802 (h!44067 rules!3307)) (_1!22393 (findLongestMatchInner!1071 (regex!5802 (h!44067 rules!3307)) Nil!38646 (size!29528 Nil!38646) lt!1274713 lt!1274713 (size!29528 lt!1274713)))))))

(declare-fun b!3665029 () Bool)

(assert (=> b!3665029 (= e!2269295 (= (size!29527 (_1!22390 (get!12743 lt!1275624))) (size!29528 (originalCharacters!6516 (_1!22390 (get!12743 lt!1275624))))))))

(declare-fun b!3665030 () Bool)

(declare-fun res!1488132 () Bool)

(assert (=> b!3665030 (=> (not res!1488132) (not e!2269295))))

(assert (=> b!3665030 (= res!1488132 (< (size!29528 (_2!22390 (get!12743 lt!1275624))) (size!29528 lt!1274713)))))

(declare-fun b!3665031 () Bool)

(declare-fun res!1488131 () Bool)

(assert (=> b!3665031 (=> (not res!1488131) (not e!2269295))))

(assert (=> b!3665031 (= res!1488131 (= (++!9618 (list!14340 (charsOf!3816 (_1!22390 (get!12743 lt!1275624)))) (_2!22390 (get!12743 lt!1275624))) lt!1274713))))

(declare-fun b!3665032 () Bool)

(assert (=> b!3665032 (= e!2269292 (Some!8231 (tuple2!38513 (Token!10971 (apply!9304 (transformation!5802 (h!44067 rules!3307)) (seqFromList!4351 (_1!22393 lt!1275622))) (h!44067 rules!3307) (size!29529 (seqFromList!4351 (_1!22393 lt!1275622))) (_1!22393 lt!1275622)) (_2!22393 lt!1275622))))))

(declare-fun lt!1275621 () Unit!55997)

(assert (=> b!3665032 (= lt!1275621 (longestMatchIsAcceptedByMatchOrIsEmpty!1044 (regex!5802 (h!44067 rules!3307)) lt!1274713))))

(declare-fun res!1488130 () Bool)

(assert (=> b!3665032 (= res!1488130 (isEmpty!22924 (_1!22393 (findLongestMatchInner!1071 (regex!5802 (h!44067 rules!3307)) Nil!38646 (size!29528 Nil!38646) lt!1274713 lt!1274713 (size!29528 lt!1274713)))))))

(assert (=> b!3665032 (=> res!1488130 e!2269293)))

(assert (=> b!3665032 e!2269293))

(declare-fun lt!1275625 () Unit!55997)

(assert (=> b!3665032 (= lt!1275625 lt!1275621)))

(declare-fun lt!1275623 () Unit!55997)

(assert (=> b!3665032 (= lt!1275623 (lemmaSemiInverse!1551 (transformation!5802 (h!44067 rules!3307)) (seqFromList!4351 (_1!22393 lt!1275622))))))

(assert (= (and d!1076716 c!633625) b!3665026))

(assert (= (and d!1076716 (not c!633625)) b!3665032))

(assert (= (and b!3665032 (not res!1488130)) b!3665028))

(assert (= (and d!1076716 (not res!1488136)) b!3665025))

(assert (= (and b!3665025 res!1488134) b!3665031))

(assert (= (and b!3665031 res!1488131) b!3665030))

(assert (= (and b!3665030 res!1488132) b!3665024))

(assert (= (and b!3665024 res!1488133) b!3665027))

(assert (= (and b!3665027 res!1488135) b!3665029))

(declare-fun m!4172911 () Bool)

(assert (=> b!3665029 m!4172911))

(declare-fun m!4172913 () Bool)

(assert (=> b!3665029 m!4172913))

(assert (=> b!3665031 m!4172911))

(declare-fun m!4172915 () Bool)

(assert (=> b!3665031 m!4172915))

(assert (=> b!3665031 m!4172915))

(declare-fun m!4172917 () Bool)

(assert (=> b!3665031 m!4172917))

(assert (=> b!3665031 m!4172917))

(declare-fun m!4172919 () Bool)

(assert (=> b!3665031 m!4172919))

(declare-fun m!4172921 () Bool)

(assert (=> d!1076716 m!4172921))

(declare-fun m!4172923 () Bool)

(assert (=> d!1076716 m!4172923))

(declare-fun m!4172925 () Bool)

(assert (=> d!1076716 m!4172925))

(assert (=> d!1076716 m!4172687))

(assert (=> b!3665025 m!4172911))

(assert (=> b!3665025 m!4172915))

(assert (=> b!3665025 m!4172915))

(assert (=> b!3665025 m!4172917))

(assert (=> b!3665025 m!4172917))

(declare-fun m!4172927 () Bool)

(assert (=> b!3665025 m!4172927))

(declare-fun m!4172929 () Bool)

(assert (=> b!3665032 m!4172929))

(declare-fun m!4172931 () Bool)

(assert (=> b!3665032 m!4172931))

(assert (=> b!3665032 m!4170751))

(assert (=> b!3665032 m!4170547))

(declare-fun m!4172933 () Bool)

(assert (=> b!3665032 m!4172933))

(assert (=> b!3665032 m!4172929))

(declare-fun m!4172935 () Bool)

(assert (=> b!3665032 m!4172935))

(assert (=> b!3665032 m!4170547))

(assert (=> b!3665032 m!4172929))

(assert (=> b!3665032 m!4170751))

(assert (=> b!3665032 m!4172929))

(declare-fun m!4172937 () Bool)

(assert (=> b!3665032 m!4172937))

(declare-fun m!4172939 () Bool)

(assert (=> b!3665032 m!4172939))

(declare-fun m!4172941 () Bool)

(assert (=> b!3665032 m!4172941))

(assert (=> b!3665030 m!4172911))

(declare-fun m!4172943 () Bool)

(assert (=> b!3665030 m!4172943))

(assert (=> b!3665030 m!4170547))

(assert (=> b!3665027 m!4172911))

(declare-fun m!4172945 () Bool)

(assert (=> b!3665027 m!4172945))

(assert (=> b!3665027 m!4172945))

(declare-fun m!4172947 () Bool)

(assert (=> b!3665027 m!4172947))

(assert (=> b!3665024 m!4172911))

(assert (=> b!3665028 m!4170751))

(assert (=> b!3665028 m!4170547))

(assert (=> b!3665028 m!4170751))

(assert (=> b!3665028 m!4170547))

(assert (=> b!3665028 m!4172933))

(declare-fun m!4172949 () Bool)

(assert (=> b!3665028 m!4172949))

(assert (=> bm!265026 d!1076716))

(declare-fun d!1076718 () Bool)

(declare-fun lt!1275628 () Bool)

(assert (=> d!1076718 (= lt!1275628 (select (content!5591 rules!3307) (rule!8618 (_1!22390 (get!12743 lt!1275116)))))))

(declare-fun e!2269303 () Bool)

(assert (=> d!1076718 (= lt!1275628 e!2269303)))

(declare-fun res!1488144 () Bool)

(assert (=> d!1076718 (=> (not res!1488144) (not e!2269303))))

(assert (=> d!1076718 (= res!1488144 ((_ is Cons!38647) rules!3307))))

(assert (=> d!1076718 (= (contains!7670 rules!3307 (rule!8618 (_1!22390 (get!12743 lt!1275116)))) lt!1275628)))

(declare-fun b!3665043 () Bool)

(declare-fun e!2269302 () Bool)

(assert (=> b!3665043 (= e!2269303 e!2269302)))

(declare-fun res!1488143 () Bool)

(assert (=> b!3665043 (=> res!1488143 e!2269302)))

(assert (=> b!3665043 (= res!1488143 (= (h!44067 rules!3307) (rule!8618 (_1!22390 (get!12743 lt!1275116)))))))

(declare-fun b!3665044 () Bool)

(assert (=> b!3665044 (= e!2269302 (contains!7670 (t!298754 rules!3307) (rule!8618 (_1!22390 (get!12743 lt!1275116)))))))

(assert (= (and d!1076718 res!1488144) b!3665043))

(assert (= (and b!3665043 (not res!1488143)) b!3665044))

(assert (=> d!1076718 m!4170047))

(declare-fun m!4172951 () Bool)

(assert (=> d!1076718 m!4172951))

(declare-fun m!4172953 () Bool)

(assert (=> b!3665044 m!4172953))

(assert (=> b!3663664 d!1076718))

(assert (=> b!3663664 d!1075946))

(declare-fun d!1076720 () Bool)

(declare-fun charsToBigInt!0 (List!38769 Int) Int)

(assert (=> d!1076720 (= (inv!15 (value!185817 token!511)) (= (charsToBigInt!0 (text!42673 (value!185817 token!511)) 0) (value!185812 (value!185817 token!511))))))

(declare-fun bs!572927 () Bool)

(assert (= bs!572927 d!1076720))

(declare-fun m!4172955 () Bool)

(assert (=> bs!572927 m!4172955))

(assert (=> b!3663079 d!1076720))

(declare-fun d!1076722 () Bool)

(declare-fun lt!1275630 () Int)

(assert (=> d!1076722 (>= lt!1275630 0)))

(declare-fun e!2269307 () Int)

(assert (=> d!1076722 (= lt!1275630 e!2269307)))

(declare-fun c!633629 () Bool)

(assert (=> d!1076722 (= c!633629 ((_ is Nil!38646) lt!1274816))))

(assert (=> d!1076722 (= (size!29528 lt!1274816) lt!1275630)))

(declare-fun b!3665050 () Bool)

(assert (=> b!3665050 (= e!2269307 0)))

(declare-fun b!3665051 () Bool)

(assert (=> b!3665051 (= e!2269307 (+ 1 (size!29528 (t!298753 lt!1274816))))))

(assert (= (and d!1076722 c!633629) b!3665050))

(assert (= (and d!1076722 (not c!633629)) b!3665051))

(declare-fun m!4172969 () Bool)

(assert (=> b!3665051 m!4172969))

(assert (=> b!3663204 d!1076722))

(assert (=> b!3663204 d!1075604))

(declare-fun d!1076724 () Bool)

(declare-fun lt!1275631 () Int)

(assert (=> d!1076724 (>= lt!1275631 0)))

(declare-fun e!2269308 () Int)

(assert (=> d!1076724 (= lt!1275631 e!2269308)))

(declare-fun c!633630 () Bool)

(assert (=> d!1076724 (= c!633630 ((_ is Nil!38646) suffix!1395))))

(assert (=> d!1076724 (= (size!29528 suffix!1395) lt!1275631)))

(declare-fun b!3665052 () Bool)

(assert (=> b!3665052 (= e!2269308 0)))

(declare-fun b!3665053 () Bool)

(assert (=> b!3665053 (= e!2269308 (+ 1 (size!29528 (t!298753 suffix!1395))))))

(assert (= (and d!1076724 c!633630) b!3665052))

(assert (= (and d!1076724 (not c!633630)) b!3665053))

(declare-fun m!4172977 () Bool)

(assert (=> b!3665053 m!4172977))

(assert (=> b!3663204 d!1076724))

(declare-fun d!1076728 () Bool)

(declare-fun c!633631 () Bool)

(assert (=> d!1076728 (= c!633631 ((_ is Nil!38646) call!264986))))

(declare-fun e!2269309 () (InoxSet C!21308))

(assert (=> d!1076728 (= (content!5589 call!264986) e!2269309)))

(declare-fun b!3665054 () Bool)

(assert (=> b!3665054 (= e!2269309 ((as const (Array C!21308 Bool)) false))))

(declare-fun b!3665055 () Bool)

(assert (=> b!3665055 (= e!2269309 ((_ map or) (store ((as const (Array C!21308 Bool)) false) (h!44066 call!264986) true) (content!5589 (t!298753 call!264986))))))

(assert (= (and d!1076728 c!633631) b!3665054))

(assert (= (and d!1076728 (not c!633631)) b!3665055))

(declare-fun m!4172979 () Bool)

(assert (=> b!3665055 m!4172979))

(assert (=> b!3665055 m!4171473))

(assert (=> d!1075880 d!1076728))

(assert (=> b!3663723 d!1075960))

(declare-fun d!1076730 () Bool)

(declare-fun lt!1275632 () Int)

(assert (=> d!1076730 (>= lt!1275632 0)))

(declare-fun e!2269310 () Int)

(assert (=> d!1076730 (= lt!1275632 e!2269310)))

(declare-fun c!633632 () Bool)

(assert (=> d!1076730 (= c!633632 ((_ is Nil!38646) lt!1274990))))

(assert (=> d!1076730 (= (size!29528 lt!1274990) lt!1275632)))

(declare-fun b!3665056 () Bool)

(assert (=> b!3665056 (= e!2269310 0)))

(declare-fun b!3665057 () Bool)

(assert (=> b!3665057 (= e!2269310 (+ 1 (size!29528 (t!298753 lt!1274990))))))

(assert (= (and d!1076730 c!633632) b!3665056))

(assert (= (and d!1076730 (not c!633632)) b!3665057))

(declare-fun m!4172981 () Bool)

(assert (=> b!3665057 m!4172981))

(assert (=> b!3663493 d!1076730))

(assert (=> b!3663493 d!1075842))

(declare-fun d!1076734 () Bool)

(declare-fun lt!1275633 () Int)

(assert (=> d!1076734 (>= lt!1275633 0)))

(declare-fun e!2269311 () Int)

(assert (=> d!1076734 (= lt!1275633 e!2269311)))

(declare-fun c!633633 () Bool)

(assert (=> d!1076734 (= c!633633 ((_ is Nil!38646) (_2!22390 lt!1274714)))))

(assert (=> d!1076734 (= (size!29528 (_2!22390 lt!1274714)) lt!1275633)))

(declare-fun b!3665058 () Bool)

(assert (=> b!3665058 (= e!2269311 0)))

(declare-fun b!3665059 () Bool)

(assert (=> b!3665059 (= e!2269311 (+ 1 (size!29528 (t!298753 (_2!22390 lt!1274714)))))))

(assert (= (and d!1076734 c!633633) b!3665058))

(assert (= (and d!1076734 (not c!633633)) b!3665059))

(declare-fun m!4172983 () Bool)

(assert (=> b!3665059 m!4172983))

(assert (=> b!3663493 d!1076734))

(assert (=> d!1075584 d!1076028))

(declare-fun d!1076738 () Bool)

(declare-fun c!633634 () Bool)

(assert (=> d!1076738 (= c!633634 ((_ is Node!11819) (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 token!511))) (value!185817 token!511)))))))

(declare-fun e!2269313 () Bool)

(assert (=> d!1076738 (= (inv!52119 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 token!511))) (value!185817 token!511)))) e!2269313)))

(declare-fun b!3665062 () Bool)

(assert (=> b!3665062 (= e!2269313 (inv!52123 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 token!511))) (value!185817 token!511)))))))

(declare-fun b!3665063 () Bool)

(declare-fun e!2269314 () Bool)

(assert (=> b!3665063 (= e!2269313 e!2269314)))

(declare-fun res!1488150 () Bool)

(assert (=> b!3665063 (= res!1488150 (not ((_ is Leaf!18331) (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 token!511))) (value!185817 token!511))))))))

(assert (=> b!3665063 (=> res!1488150 e!2269314)))

(declare-fun b!3665064 () Bool)

(assert (=> b!3665064 (= e!2269314 (inv!52124 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 token!511))) (value!185817 token!511)))))))

(assert (= (and d!1076738 c!633634) b!3665062))

(assert (= (and d!1076738 (not c!633634)) b!3665063))

(assert (= (and b!3665063 (not res!1488150)) b!3665064))

(declare-fun m!4172985 () Bool)

(assert (=> b!3665062 m!4172985))

(declare-fun m!4172987 () Bool)

(assert (=> b!3665064 m!4172987))

(assert (=> b!3663116 d!1076738))

(declare-fun d!1076740 () Bool)

(declare-fun c!633635 () Bool)

(assert (=> d!1076740 (= c!633635 ((_ is Nil!38646) lt!1274739))))

(declare-fun e!2269315 () (InoxSet C!21308))

(assert (=> d!1076740 (= (content!5589 lt!1274739) e!2269315)))

(declare-fun b!3665065 () Bool)

(assert (=> b!3665065 (= e!2269315 ((as const (Array C!21308 Bool)) false))))

(declare-fun b!3665066 () Bool)

(assert (=> b!3665066 (= e!2269315 ((_ map or) (store ((as const (Array C!21308 Bool)) false) (h!44066 lt!1274739) true) (content!5589 (t!298753 lt!1274739))))))

(assert (= (and d!1076740 c!633635) b!3665065))

(assert (= (and d!1076740 (not c!633635)) b!3665066))

(declare-fun m!4172989 () Bool)

(assert (=> b!3665066 m!4172989))

(assert (=> b!3665066 m!4171247))

(assert (=> d!1075834 d!1076740))

(declare-fun d!1076742 () Bool)

(assert (=> d!1076742 (= lt!1274729 lt!1274731)))

(assert (=> d!1076742 true))

(declare-fun _$60!786 () Unit!55997)

(assert (=> d!1076742 (= (choose!21721 lt!1274729 lt!1274731 lt!1274713) _$60!786)))

(assert (=> d!1075830 d!1076742))

(assert (=> d!1075830 d!1075784))

(assert (=> d!1075820 d!1076740))

(assert (=> d!1075816 d!1075956))

(assert (=> d!1075816 d!1075594))

(declare-fun d!1076746 () Bool)

(assert (=> d!1076746 (not (contains!7669 (usedCharacters!1014 (regex!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274732))))

(assert (=> d!1076746 true))

(declare-fun _$75!361 () Unit!55997)

(assert (=> d!1076746 (= (choose!21720 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8618 (_1!22390 lt!1274714)) lt!1274732) _$75!361)))

(declare-fun bs!572929 () Bool)

(assert (= bs!572929 d!1076746))

(assert (=> bs!572929 m!4169821))

(assert (=> bs!572929 m!4169821))

(assert (=> bs!572929 m!4170131))

(assert (=> d!1075816 d!1076746))

(assert (=> d!1075816 d!1075840))

(declare-fun d!1076748 () Bool)

(declare-fun lt!1275640 () List!38770)

(assert (=> d!1076748 (= (++!9618 (t!298753 lt!1274729) lt!1275640) (tail!5673 lt!1274713))))

(declare-fun e!2269319 () List!38770)

(assert (=> d!1076748 (= lt!1275640 e!2269319)))

(declare-fun c!633637 () Bool)

(assert (=> d!1076748 (= c!633637 ((_ is Cons!38646) (t!298753 lt!1274729)))))

(assert (=> d!1076748 (>= (size!29528 (tail!5673 lt!1274713)) (size!29528 (t!298753 lt!1274729)))))

(assert (=> d!1076748 (= (getSuffix!1718 (tail!5673 lt!1274713) (t!298753 lt!1274729)) lt!1275640)))

(declare-fun b!3665076 () Bool)

(assert (=> b!3665076 (= e!2269319 (getSuffix!1718 (tail!5673 (tail!5673 lt!1274713)) (t!298753 (t!298753 lt!1274729))))))

(declare-fun b!3665077 () Bool)

(assert (=> b!3665077 (= e!2269319 (tail!5673 lt!1274713))))

(assert (= (and d!1076748 c!633637) b!3665076))

(assert (= (and d!1076748 (not c!633637)) b!3665077))

(declare-fun m!4172993 () Bool)

(assert (=> d!1076748 m!4172993))

(assert (=> d!1076748 m!4170577))

(assert (=> d!1076748 m!4172735))

(assert (=> d!1076748 m!4170713))

(assert (=> b!3665076 m!4170577))

(assert (=> b!3665076 m!4172737))

(assert (=> b!3665076 m!4172737))

(declare-fun m!4172995 () Bool)

(assert (=> b!3665076 m!4172995))

(assert (=> b!3663560 d!1076748))

(assert (=> b!3663560 d!1076630))

(assert (=> d!1075870 d!1076586))

(assert (=> d!1075870 d!1076034))

(declare-fun d!1076750 () Bool)

(declare-fun lt!1275641 () Int)

(assert (=> d!1076750 (>= lt!1275641 0)))

(declare-fun e!2269320 () Int)

(assert (=> d!1076750 (= lt!1275641 e!2269320)))

(declare-fun c!633638 () Bool)

(assert (=> d!1076750 (= c!633638 ((_ is Nil!38646) (_2!22390 (get!12743 lt!1275044))))))

(assert (=> d!1076750 (= (size!29528 (_2!22390 (get!12743 lt!1275044))) lt!1275641)))

(declare-fun b!3665078 () Bool)

(assert (=> b!3665078 (= e!2269320 0)))

(declare-fun b!3665079 () Bool)

(assert (=> b!3665079 (= e!2269320 (+ 1 (size!29528 (t!298753 (_2!22390 (get!12743 lt!1275044))))))))

(assert (= (and d!1076750 c!633638) b!3665078))

(assert (= (and d!1076750 (not c!633638)) b!3665079))

(declare-fun m!4172997 () Bool)

(assert (=> b!3665079 m!4172997))

(assert (=> b!3663586 d!1076750))

(assert (=> b!3663586 d!1075982))

(assert (=> b!3663586 d!1076052))

(declare-fun b!3665081 () Bool)

(declare-fun e!2269321 () List!38770)

(declare-fun e!2269322 () List!38770)

(assert (=> b!3665081 (= e!2269321 e!2269322)))

(declare-fun c!633640 () Bool)

(assert (=> b!3665081 (= c!633640 ((_ is Leaf!18331) (c!633135 lt!1274733)))))

(declare-fun b!3665080 () Bool)

(assert (=> b!3665080 (= e!2269321 Nil!38646)))

(declare-fun b!3665082 () Bool)

(assert (=> b!3665082 (= e!2269322 (list!14345 (xs!15021 (c!633135 lt!1274733))))))

(declare-fun b!3665083 () Bool)

(assert (=> b!3665083 (= e!2269322 (++!9618 (list!14343 (left!30162 (c!633135 lt!1274733))) (list!14343 (right!30492 (c!633135 lt!1274733)))))))

(declare-fun d!1076752 () Bool)

(declare-fun c!633639 () Bool)

(assert (=> d!1076752 (= c!633639 ((_ is Empty!11819) (c!633135 lt!1274733)))))

(assert (=> d!1076752 (= (list!14343 (c!633135 lt!1274733)) e!2269321)))

(assert (= (and d!1076752 c!633639) b!3665080))

(assert (= (and d!1076752 (not c!633639)) b!3665081))

(assert (= (and b!3665081 c!633640) b!3665082))

(assert (= (and b!3665081 (not c!633640)) b!3665083))

(declare-fun m!4172999 () Bool)

(assert (=> b!3665082 m!4172999))

(declare-fun m!4173001 () Bool)

(assert (=> b!3665083 m!4173001))

(declare-fun m!4173003 () Bool)

(assert (=> b!3665083 m!4173003))

(assert (=> b!3665083 m!4173001))

(assert (=> b!3665083 m!4173003))

(declare-fun m!4173007 () Bool)

(assert (=> b!3665083 m!4173007))

(assert (=> d!1075886 d!1076752))

(declare-fun b!3665085 () Bool)

(declare-fun e!2269323 () Bool)

(declare-fun tp!1115659 () Bool)

(declare-fun tp!1115660 () Bool)

(assert (=> b!3665085 (= e!2269323 (and tp!1115659 tp!1115660))))

(declare-fun b!3665087 () Bool)

(declare-fun tp!1115661 () Bool)

(declare-fun tp!1115657 () Bool)

(assert (=> b!3665087 (= e!2269323 (and tp!1115661 tp!1115657))))

(declare-fun b!3665086 () Bool)

(declare-fun tp!1115658 () Bool)

(assert (=> b!3665086 (= e!2269323 tp!1115658)))

(declare-fun b!3665084 () Bool)

(assert (=> b!3665084 (= e!2269323 tp_is_empty!18205)))

(assert (=> b!3663840 (= tp!1115626 e!2269323)))

(assert (= (and b!3663840 ((_ is ElementMatch!10561) (regOne!21634 (regex!5802 rule!403)))) b!3665084))

(assert (= (and b!3663840 ((_ is Concat!16594) (regOne!21634 (regex!5802 rule!403)))) b!3665085))

(assert (= (and b!3663840 ((_ is Star!10561) (regOne!21634 (regex!5802 rule!403)))) b!3665086))

(assert (= (and b!3663840 ((_ is Union!10561) (regOne!21634 (regex!5802 rule!403)))) b!3665087))

(declare-fun b!3665089 () Bool)

(declare-fun e!2269324 () Bool)

(declare-fun tp!1115664 () Bool)

(declare-fun tp!1115665 () Bool)

(assert (=> b!3665089 (= e!2269324 (and tp!1115664 tp!1115665))))

(declare-fun b!3665091 () Bool)

(declare-fun tp!1115666 () Bool)

(declare-fun tp!1115662 () Bool)

(assert (=> b!3665091 (= e!2269324 (and tp!1115666 tp!1115662))))

(declare-fun b!3665090 () Bool)

(declare-fun tp!1115663 () Bool)

(assert (=> b!3665090 (= e!2269324 tp!1115663)))

(declare-fun b!3665088 () Bool)

(assert (=> b!3665088 (= e!2269324 tp_is_empty!18205)))

(assert (=> b!3663840 (= tp!1115627 e!2269324)))

(assert (= (and b!3663840 ((_ is ElementMatch!10561) (regTwo!21634 (regex!5802 rule!403)))) b!3665088))

(assert (= (and b!3663840 ((_ is Concat!16594) (regTwo!21634 (regex!5802 rule!403)))) b!3665089))

(assert (= (and b!3663840 ((_ is Star!10561) (regTwo!21634 (regex!5802 rule!403)))) b!3665090))

(assert (= (and b!3663840 ((_ is Union!10561) (regTwo!21634 (regex!5802 rule!403)))) b!3665091))

(declare-fun b!3665104 () Bool)

(declare-fun e!2269333 () Bool)

(declare-fun tp!1115674 () Bool)

(declare-fun tp!1115673 () Bool)

(assert (=> b!3665104 (= e!2269333 (and (inv!52119 (left!30162 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (value!185817 (_1!22390 lt!1274714)))))) tp!1115674 (inv!52119 (right!30492 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (value!185817 (_1!22390 lt!1274714)))))) tp!1115673))))

(declare-fun b!3665106 () Bool)

(declare-fun e!2269332 () Bool)

(declare-fun tp!1115675 () Bool)

(assert (=> b!3665106 (= e!2269332 tp!1115675)))

(declare-fun b!3665105 () Bool)

(declare-fun inv!52126 (IArray!23643) Bool)

(assert (=> b!3665105 (= e!2269333 (and (inv!52126 (xs!15021 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (value!185817 (_1!22390 lt!1274714)))))) e!2269332))))

(assert (=> b!3663264 (= tp!1115551 (and (inv!52119 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (value!185817 (_1!22390 lt!1274714))))) e!2269333))))

(assert (= (and b!3663264 ((_ is Node!11819) (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (value!185817 (_1!22390 lt!1274714)))))) b!3665104))

(assert (= b!3665105 b!3665106))

(assert (= (and b!3663264 ((_ is Leaf!18331) (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (value!185817 (_1!22390 lt!1274714)))))) b!3665105))

(declare-fun m!4173045 () Bool)

(assert (=> b!3665104 m!4173045))

(declare-fun m!4173047 () Bool)

(assert (=> b!3665104 m!4173047))

(declare-fun m!4173049 () Bool)

(assert (=> b!3665105 m!4173049))

(assert (=> b!3663264 m!4170219))

(declare-fun b!3665108 () Bool)

(declare-fun e!2269334 () Bool)

(declare-fun tp!1115678 () Bool)

(declare-fun tp!1115679 () Bool)

(assert (=> b!3665108 (= e!2269334 (and tp!1115678 tp!1115679))))

(declare-fun b!3665110 () Bool)

(declare-fun tp!1115680 () Bool)

(declare-fun tp!1115676 () Bool)

(assert (=> b!3665110 (= e!2269334 (and tp!1115680 tp!1115676))))

(declare-fun b!3665109 () Bool)

(declare-fun tp!1115677 () Bool)

(assert (=> b!3665109 (= e!2269334 tp!1115677)))

(declare-fun b!3665107 () Bool)

(assert (=> b!3665107 (= e!2269334 tp_is_empty!18205)))

(assert (=> b!3663841 (= tp!1115625 e!2269334)))

(assert (= (and b!3663841 ((_ is ElementMatch!10561) (reg!10890 (regex!5802 rule!403)))) b!3665107))

(assert (= (and b!3663841 ((_ is Concat!16594) (reg!10890 (regex!5802 rule!403)))) b!3665108))

(assert (= (and b!3663841 ((_ is Star!10561) (reg!10890 (regex!5802 rule!403)))) b!3665109))

(assert (= (and b!3663841 ((_ is Union!10561) (reg!10890 (regex!5802 rule!403)))) b!3665110))

(declare-fun b!3665112 () Bool)

(declare-fun e!2269335 () Bool)

(declare-fun tp!1115683 () Bool)

(declare-fun tp!1115684 () Bool)

(assert (=> b!3665112 (= e!2269335 (and tp!1115683 tp!1115684))))

(declare-fun b!3665114 () Bool)

(declare-fun tp!1115685 () Bool)

(declare-fun tp!1115681 () Bool)

(assert (=> b!3665114 (= e!2269335 (and tp!1115685 tp!1115681))))

(declare-fun b!3665113 () Bool)

(declare-fun tp!1115682 () Bool)

(assert (=> b!3665113 (= e!2269335 tp!1115682)))

(declare-fun b!3665111 () Bool)

(assert (=> b!3665111 (= e!2269335 tp_is_empty!18205)))

(assert (=> b!3663837 (= tp!1115620 e!2269335)))

(assert (= (and b!3663837 ((_ is ElementMatch!10561) (reg!10890 (regex!5802 anOtherTypeRule!33)))) b!3665111))

(assert (= (and b!3663837 ((_ is Concat!16594) (reg!10890 (regex!5802 anOtherTypeRule!33)))) b!3665112))

(assert (= (and b!3663837 ((_ is Star!10561) (reg!10890 (regex!5802 anOtherTypeRule!33)))) b!3665113))

(assert (= (and b!3663837 ((_ is Union!10561) (reg!10890 (regex!5802 anOtherTypeRule!33)))) b!3665114))

(declare-fun b!3665116 () Bool)

(declare-fun e!2269336 () Bool)

(declare-fun tp!1115688 () Bool)

(declare-fun tp!1115689 () Bool)

(assert (=> b!3665116 (= e!2269336 (and tp!1115688 tp!1115689))))

(declare-fun b!3665118 () Bool)

(declare-fun tp!1115690 () Bool)

(declare-fun tp!1115686 () Bool)

(assert (=> b!3665118 (= e!2269336 (and tp!1115690 tp!1115686))))

(declare-fun b!3665117 () Bool)

(declare-fun tp!1115687 () Bool)

(assert (=> b!3665117 (= e!2269336 tp!1115687)))

(declare-fun b!3665115 () Bool)

(assert (=> b!3665115 (= e!2269336 tp_is_empty!18205)))

(assert (=> b!3663845 (= tp!1115632 e!2269336)))

(assert (= (and b!3663845 ((_ is ElementMatch!10561) (regOne!21634 (regex!5802 (h!44067 rules!3307))))) b!3665115))

(assert (= (and b!3663845 ((_ is Concat!16594) (regOne!21634 (regex!5802 (h!44067 rules!3307))))) b!3665116))

(assert (= (and b!3663845 ((_ is Star!10561) (regOne!21634 (regex!5802 (h!44067 rules!3307))))) b!3665117))

(assert (= (and b!3663845 ((_ is Union!10561) (regOne!21634 (regex!5802 (h!44067 rules!3307))))) b!3665118))

(declare-fun b!3665120 () Bool)

(declare-fun e!2269337 () Bool)

(declare-fun tp!1115693 () Bool)

(declare-fun tp!1115694 () Bool)

(assert (=> b!3665120 (= e!2269337 (and tp!1115693 tp!1115694))))

(declare-fun b!3665122 () Bool)

(declare-fun tp!1115695 () Bool)

(declare-fun tp!1115691 () Bool)

(assert (=> b!3665122 (= e!2269337 (and tp!1115695 tp!1115691))))

(declare-fun b!3665121 () Bool)

(declare-fun tp!1115692 () Bool)

(assert (=> b!3665121 (= e!2269337 tp!1115692)))

(declare-fun b!3665119 () Bool)

(assert (=> b!3665119 (= e!2269337 tp_is_empty!18205)))

(assert (=> b!3663845 (= tp!1115633 e!2269337)))

(assert (= (and b!3663845 ((_ is ElementMatch!10561) (regTwo!21634 (regex!5802 (h!44067 rules!3307))))) b!3665119))

(assert (= (and b!3663845 ((_ is Concat!16594) (regTwo!21634 (regex!5802 (h!44067 rules!3307))))) b!3665120))

(assert (= (and b!3663845 ((_ is Star!10561) (regTwo!21634 (regex!5802 (h!44067 rules!3307))))) b!3665121))

(assert (= (and b!3663845 ((_ is Union!10561) (regTwo!21634 (regex!5802 (h!44067 rules!3307))))) b!3665122))

(declare-fun b!3665130 () Bool)

(declare-fun e!2269342 () Bool)

(declare-fun tp!1115698 () Bool)

(declare-fun tp!1115699 () Bool)

(assert (=> b!3665130 (= e!2269342 (and tp!1115698 tp!1115699))))

(declare-fun b!3665132 () Bool)

(declare-fun tp!1115700 () Bool)

(declare-fun tp!1115696 () Bool)

(assert (=> b!3665132 (= e!2269342 (and tp!1115700 tp!1115696))))

(declare-fun b!3665131 () Bool)

(declare-fun tp!1115697 () Bool)

(assert (=> b!3665131 (= e!2269342 tp!1115697)))

(declare-fun b!3665129 () Bool)

(assert (=> b!3665129 (= e!2269342 tp_is_empty!18205)))

(assert (=> b!3663838 (= tp!1115623 e!2269342)))

(assert (= (and b!3663838 ((_ is ElementMatch!10561) (regOne!21635 (regex!5802 anOtherTypeRule!33)))) b!3665129))

(assert (= (and b!3663838 ((_ is Concat!16594) (regOne!21635 (regex!5802 anOtherTypeRule!33)))) b!3665130))

(assert (= (and b!3663838 ((_ is Star!10561) (regOne!21635 (regex!5802 anOtherTypeRule!33)))) b!3665131))

(assert (= (and b!3663838 ((_ is Union!10561) (regOne!21635 (regex!5802 anOtherTypeRule!33)))) b!3665132))

(declare-fun b!3665134 () Bool)

(declare-fun e!2269343 () Bool)

(declare-fun tp!1115703 () Bool)

(declare-fun tp!1115704 () Bool)

(assert (=> b!3665134 (= e!2269343 (and tp!1115703 tp!1115704))))

(declare-fun b!3665136 () Bool)

(declare-fun tp!1115705 () Bool)

(declare-fun tp!1115701 () Bool)

(assert (=> b!3665136 (= e!2269343 (and tp!1115705 tp!1115701))))

(declare-fun b!3665135 () Bool)

(declare-fun tp!1115702 () Bool)

(assert (=> b!3665135 (= e!2269343 tp!1115702)))

(declare-fun b!3665133 () Bool)

(assert (=> b!3665133 (= e!2269343 tp_is_empty!18205)))

(assert (=> b!3663838 (= tp!1115619 e!2269343)))

(assert (= (and b!3663838 ((_ is ElementMatch!10561) (regTwo!21635 (regex!5802 anOtherTypeRule!33)))) b!3665133))

(assert (= (and b!3663838 ((_ is Concat!16594) (regTwo!21635 (regex!5802 anOtherTypeRule!33)))) b!3665134))

(assert (= (and b!3663838 ((_ is Star!10561) (regTwo!21635 (regex!5802 anOtherTypeRule!33)))) b!3665135))

(assert (= (and b!3663838 ((_ is Union!10561) (regTwo!21635 (regex!5802 anOtherTypeRule!33)))) b!3665136))

(declare-fun b!3665138 () Bool)

(declare-fun e!2269344 () Bool)

(declare-fun tp!1115708 () Bool)

(declare-fun tp!1115709 () Bool)

(assert (=> b!3665138 (= e!2269344 (and tp!1115708 tp!1115709))))

(declare-fun b!3665140 () Bool)

(declare-fun tp!1115710 () Bool)

(declare-fun tp!1115706 () Bool)

(assert (=> b!3665140 (= e!2269344 (and tp!1115710 tp!1115706))))

(declare-fun b!3665139 () Bool)

(declare-fun tp!1115707 () Bool)

(assert (=> b!3665139 (= e!2269344 tp!1115707)))

(declare-fun b!3665137 () Bool)

(assert (=> b!3665137 (= e!2269344 tp_is_empty!18205)))

(assert (=> b!3663846 (= tp!1115631 e!2269344)))

(assert (= (and b!3663846 ((_ is ElementMatch!10561) (reg!10890 (regex!5802 (h!44067 rules!3307))))) b!3665137))

(assert (= (and b!3663846 ((_ is Concat!16594) (reg!10890 (regex!5802 (h!44067 rules!3307))))) b!3665138))

(assert (= (and b!3663846 ((_ is Star!10561) (reg!10890 (regex!5802 (h!44067 rules!3307))))) b!3665139))

(assert (= (and b!3663846 ((_ is Union!10561) (reg!10890 (regex!5802 (h!44067 rules!3307))))) b!3665140))

(declare-fun b!3665142 () Bool)

(declare-fun e!2269345 () Bool)

(declare-fun tp!1115713 () Bool)

(declare-fun tp!1115714 () Bool)

(assert (=> b!3665142 (= e!2269345 (and tp!1115713 tp!1115714))))

(declare-fun b!3665144 () Bool)

(declare-fun tp!1115715 () Bool)

(declare-fun tp!1115711 () Bool)

(assert (=> b!3665144 (= e!2269345 (and tp!1115715 tp!1115711))))

(declare-fun b!3665143 () Bool)

(declare-fun tp!1115712 () Bool)

(assert (=> b!3665143 (= e!2269345 tp!1115712)))

(declare-fun b!3665141 () Bool)

(assert (=> b!3665141 (= e!2269345 tp_is_empty!18205)))

(assert (=> b!3663847 (= tp!1115634 e!2269345)))

(assert (= (and b!3663847 ((_ is ElementMatch!10561) (regOne!21635 (regex!5802 (h!44067 rules!3307))))) b!3665141))

(assert (= (and b!3663847 ((_ is Concat!16594) (regOne!21635 (regex!5802 (h!44067 rules!3307))))) b!3665142))

(assert (= (and b!3663847 ((_ is Star!10561) (regOne!21635 (regex!5802 (h!44067 rules!3307))))) b!3665143))

(assert (= (and b!3663847 ((_ is Union!10561) (regOne!21635 (regex!5802 (h!44067 rules!3307))))) b!3665144))

(declare-fun b!3665146 () Bool)

(declare-fun e!2269346 () Bool)

(declare-fun tp!1115718 () Bool)

(declare-fun tp!1115719 () Bool)

(assert (=> b!3665146 (= e!2269346 (and tp!1115718 tp!1115719))))

(declare-fun b!3665148 () Bool)

(declare-fun tp!1115720 () Bool)

(declare-fun tp!1115716 () Bool)

(assert (=> b!3665148 (= e!2269346 (and tp!1115720 tp!1115716))))

(declare-fun b!3665147 () Bool)

(declare-fun tp!1115717 () Bool)

(assert (=> b!3665147 (= e!2269346 tp!1115717)))

(declare-fun b!3665145 () Bool)

(assert (=> b!3665145 (= e!2269346 tp_is_empty!18205)))

(assert (=> b!3663847 (= tp!1115630 e!2269346)))

(assert (= (and b!3663847 ((_ is ElementMatch!10561) (regTwo!21635 (regex!5802 (h!44067 rules!3307))))) b!3665145))

(assert (= (and b!3663847 ((_ is Concat!16594) (regTwo!21635 (regex!5802 (h!44067 rules!3307))))) b!3665146))

(assert (= (and b!3663847 ((_ is Star!10561) (regTwo!21635 (regex!5802 (h!44067 rules!3307))))) b!3665147))

(assert (= (and b!3663847 ((_ is Union!10561) (regTwo!21635 (regex!5802 (h!44067 rules!3307))))) b!3665148))

(declare-fun b!3665149 () Bool)

(declare-fun tp!1115722 () Bool)

(declare-fun tp!1115721 () Bool)

(declare-fun e!2269348 () Bool)

(assert (=> b!3665149 (= e!2269348 (and (inv!52119 (left!30162 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743))))) tp!1115722 (inv!52119 (right!30492 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743))))) tp!1115721))))

(declare-fun b!3665151 () Bool)

(declare-fun e!2269347 () Bool)

(declare-fun tp!1115723 () Bool)

(assert (=> b!3665151 (= e!2269347 tp!1115723)))

(declare-fun b!3665150 () Bool)

(assert (=> b!3665150 (= e!2269348 (and (inv!52126 (xs!15021 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743))))) e!2269347))))

(assert (=> b!3663517 (= tp!1115554 (and (inv!52119 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743)))) e!2269348))))

(assert (= (and b!3663517 ((_ is Node!11819) (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743))))) b!3665149))

(assert (= b!3665150 b!3665151))

(assert (= (and b!3663517 ((_ is Leaf!18331) (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743))))) b!3665150))

(declare-fun m!4173063 () Bool)

(assert (=> b!3665149 m!4173063))

(declare-fun m!4173065 () Bool)

(assert (=> b!3665149 m!4173065))

(declare-fun m!4173067 () Bool)

(assert (=> b!3665150 m!4173067))

(assert (=> b!3663517 m!4170625))

(declare-fun b!3665155 () Bool)

(declare-fun e!2269350 () Bool)

(declare-fun tp!1115726 () Bool)

(declare-fun tp!1115727 () Bool)

(assert (=> b!3665155 (= e!2269350 (and tp!1115726 tp!1115727))))

(declare-fun b!3665157 () Bool)

(declare-fun tp!1115728 () Bool)

(declare-fun tp!1115724 () Bool)

(assert (=> b!3665157 (= e!2269350 (and tp!1115728 tp!1115724))))

(declare-fun b!3665156 () Bool)

(declare-fun tp!1115725 () Bool)

(assert (=> b!3665156 (= e!2269350 tp!1115725)))

(declare-fun b!3665154 () Bool)

(assert (=> b!3665154 (= e!2269350 tp_is_empty!18205)))

(assert (=> b!3663827 (= tp!1115613 e!2269350)))

(assert (= (and b!3663827 ((_ is ElementMatch!10561) (regOne!21634 (regex!5802 (rule!8618 token!511))))) b!3665154))

(assert (= (and b!3663827 ((_ is Concat!16594) (regOne!21634 (regex!5802 (rule!8618 token!511))))) b!3665155))

(assert (= (and b!3663827 ((_ is Star!10561) (regOne!21634 (regex!5802 (rule!8618 token!511))))) b!3665156))

(assert (= (and b!3663827 ((_ is Union!10561) (regOne!21634 (regex!5802 (rule!8618 token!511))))) b!3665157))

(declare-fun b!3665167 () Bool)

(declare-fun e!2269355 () Bool)

(declare-fun tp!1115731 () Bool)

(declare-fun tp!1115732 () Bool)

(assert (=> b!3665167 (= e!2269355 (and tp!1115731 tp!1115732))))

(declare-fun b!3665169 () Bool)

(declare-fun tp!1115733 () Bool)

(declare-fun tp!1115729 () Bool)

(assert (=> b!3665169 (= e!2269355 (and tp!1115733 tp!1115729))))

(declare-fun b!3665168 () Bool)

(declare-fun tp!1115730 () Bool)

(assert (=> b!3665168 (= e!2269355 tp!1115730)))

(declare-fun b!3665166 () Bool)

(assert (=> b!3665166 (= e!2269355 tp_is_empty!18205)))

(assert (=> b!3663827 (= tp!1115614 e!2269355)))

(assert (= (and b!3663827 ((_ is ElementMatch!10561) (regTwo!21634 (regex!5802 (rule!8618 token!511))))) b!3665166))

(assert (= (and b!3663827 ((_ is Concat!16594) (regTwo!21634 (regex!5802 (rule!8618 token!511))))) b!3665167))

(assert (= (and b!3663827 ((_ is Star!10561) (regTwo!21634 (regex!5802 (rule!8618 token!511))))) b!3665168))

(assert (= (and b!3663827 ((_ is Union!10561) (regTwo!21634 (regex!5802 (rule!8618 token!511))))) b!3665169))

(declare-fun b!3665171 () Bool)

(declare-fun e!2269356 () Bool)

(declare-fun tp!1115736 () Bool)

(declare-fun tp!1115737 () Bool)

(assert (=> b!3665171 (= e!2269356 (and tp!1115736 tp!1115737))))

(declare-fun b!3665173 () Bool)

(declare-fun tp!1115738 () Bool)

(declare-fun tp!1115734 () Bool)

(assert (=> b!3665173 (= e!2269356 (and tp!1115738 tp!1115734))))

(declare-fun b!3665172 () Bool)

(declare-fun tp!1115735 () Bool)

(assert (=> b!3665172 (= e!2269356 tp!1115735)))

(declare-fun b!3665170 () Bool)

(assert (=> b!3665170 (= e!2269356 tp_is_empty!18205)))

(assert (=> b!3663828 (= tp!1115612 e!2269356)))

(assert (= (and b!3663828 ((_ is ElementMatch!10561) (reg!10890 (regex!5802 (rule!8618 token!511))))) b!3665170))

(assert (= (and b!3663828 ((_ is Concat!16594) (reg!10890 (regex!5802 (rule!8618 token!511))))) b!3665171))

(assert (= (and b!3663828 ((_ is Star!10561) (reg!10890 (regex!5802 (rule!8618 token!511))))) b!3665172))

(assert (= (and b!3663828 ((_ is Union!10561) (reg!10890 (regex!5802 (rule!8618 token!511))))) b!3665173))

(declare-fun b!3665176 () Bool)

(declare-fun b_free!96713 () Bool)

(declare-fun b_next!97417 () Bool)

(assert (=> b!3665176 (= b_free!96713 (not b_next!97417))))

(declare-fun t!299093 () Bool)

(declare-fun tb!212071 () Bool)

(assert (=> (and b!3665176 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 (t!298754 rules!3307))))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275044)))))) t!299093) tb!212071))

(declare-fun result!258134 () Bool)

(assert (= result!258134 result!258122))

(assert (=> d!1076646 t!299093))

(declare-fun tb!212073 () Bool)

(declare-fun t!299095 () Bool)

(assert (=> (and b!3665176 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 (t!298754 rules!3307))))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!299095) tb!212073))

(declare-fun result!258136 () Bool)

(assert (= result!258136 result!257902))

(assert (=> d!1075798 t!299095))

(declare-fun t!299097 () Bool)

(declare-fun tb!212075 () Bool)

(assert (=> (and b!3665176 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 (t!298754 rules!3307))))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!299097) tb!212075))

(declare-fun result!258138 () Bool)

(assert (= result!258138 result!257910))

(assert (=> d!1075848 t!299097))

(declare-fun t!299099 () Bool)

(declare-fun tb!212077 () Bool)

(assert (=> (and b!3665176 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 (t!298754 rules!3307))))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116)))))) t!299099) tb!212077))

(declare-fun result!258140 () Bool)

(assert (= result!258140 result!258002))

(assert (=> d!1076138 t!299099))

(declare-fun tb!212079 () Bool)

(declare-fun t!299101 () Bool)

(assert (=> (and b!3665176 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 (t!298754 rules!3307))))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!299101) tb!212079))

(declare-fun result!258142 () Bool)

(assert (= result!258142 result!257894))

(assert (=> d!1075806 t!299101))

(assert (=> d!1075798 t!299101))

(assert (=> d!1075792 t!299101))

(declare-fun tb!212081 () Bool)

(declare-fun t!299103 () Bool)

(assert (=> (and b!3665176 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 (t!298754 rules!3307))))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!299103) tb!212081))

(declare-fun result!258144 () Bool)

(assert (= result!258144 result!258062))

(assert (=> d!1076446 t!299103))

(declare-fun t!299105 () Bool)

(declare-fun tb!212083 () Bool)

(assert (=> (and b!3665176 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 (t!298754 rules!3307))))) (toValue!8094 (transformation!5802 rule!403))) t!299105) tb!212083))

(declare-fun result!258146 () Bool)

(assert (= result!258146 result!257792))

(assert (=> d!1075606 t!299105))

(declare-fun tb!212085 () Bool)

(declare-fun t!299107 () Bool)

(assert (=> (and b!3665176 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 (t!298754 rules!3307))))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987)))))) t!299107) tb!212085))

(declare-fun result!258148 () Bool)

(assert (= result!258148 result!258112))

(assert (=> d!1076580 t!299107))

(assert (=> d!1076332 t!299103))

(assert (=> d!1075602 t!299105))

(declare-fun tp!1115742 () Bool)

(declare-fun b_and!272433 () Bool)

(assert (=> b!3665176 (= tp!1115742 (and (=> t!299093 result!258134) (=> t!299101 result!258142) (=> t!299095 result!258136) (=> t!299105 result!258146) (=> t!299107 result!258148) (=> t!299099 result!258140) (=> t!299103 result!258144) (=> t!299097 result!258138) b_and!272433))))

(declare-fun b_free!96715 () Bool)

(declare-fun b_next!97419 () Bool)

(assert (=> b!3665176 (= b_free!96715 (not b_next!97419))))

(declare-fun t!299109 () Bool)

(declare-fun tb!212087 () Bool)

(assert (=> (and b!3665176 (= (toChars!7953 (transformation!5802 (h!44067 (t!298754 (t!298754 rules!3307))))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!299109) tb!212087))

(declare-fun result!258150 () Bool)

(assert (= result!258150 result!257886))

(assert (=> d!1075792 t!299109))

(declare-fun t!299111 () Bool)

(declare-fun tb!212089 () Bool)

(assert (=> (and b!3665176 (= (toChars!7953 (transformation!5802 (h!44067 (t!298754 (t!298754 rules!3307))))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!299111) tb!212089))

(declare-fun result!258152 () Bool)

(assert (= result!258152 result!257846))

(assert (=> d!1075676 t!299111))

(declare-fun t!299113 () Bool)

(declare-fun tb!212091 () Bool)

(assert (=> (and b!3665176 (= (toChars!7953 (transformation!5802 (h!44067 (t!298754 (t!298754 rules!3307))))) (toChars!7953 (transformation!5802 rule!403))) t!299113) tb!212091))

(declare-fun result!258154 () Bool)

(assert (= result!258154 result!257830))

(assert (=> d!1075606 t!299113))

(declare-fun tb!212093 () Bool)

(declare-fun t!299115 () Bool)

(assert (=> (and b!3665176 (= (toChars!7953 (transformation!5802 (h!44067 (t!298754 (t!298754 rules!3307))))) (toChars!7953 (transformation!5802 (rule!8618 token!511)))) t!299115) tb!212093))

(declare-fun result!258156 () Bool)

(assert (= result!258156 result!257782))

(assert (=> d!1075888 t!299115))

(declare-fun t!299117 () Bool)

(declare-fun tb!212095 () Bool)

(assert (=> (and b!3665176 (= (toChars!7953 (transformation!5802 (h!44067 (t!298754 (t!298754 rules!3307))))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275116)))))) t!299117) tb!212095))

(declare-fun result!258158 () Bool)

(assert (= result!258158 result!257962))

(assert (=> d!1075950 t!299117))

(declare-fun t!299119 () Bool)

(declare-fun tb!212097 () Bool)

(assert (=> (and b!3665176 (= (toChars!7953 (transformation!5802 (h!44067 (t!298754 (t!298754 rules!3307))))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714))))) t!299119) tb!212097))

(declare-fun result!258160 () Bool)

(assert (= result!258160 result!258102))

(assert (=> d!1076446 t!299119))

(declare-fun tb!212099 () Bool)

(declare-fun t!299121 () Bool)

(assert (=> (and b!3665176 (= (toChars!7953 (transformation!5802 (h!44067 (t!298754 (t!298754 rules!3307))))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1275044)))))) t!299121) tb!212099))

(declare-fun result!258162 () Bool)

(assert (= result!258162 result!257972))

(assert (=> d!1075980 t!299121))

(declare-fun tb!212101 () Bool)

(declare-fun t!299123 () Bool)

(assert (=> (and b!3665176 (= (toChars!7953 (transformation!5802 (h!44067 (t!298754 (t!298754 rules!3307))))) (toChars!7953 (transformation!5802 (rule!8618 lt!1274941)))) t!299123) tb!212101))

(declare-fun result!258164 () Bool)

(assert (= result!258164 result!258032))

(assert (=> d!1076242 t!299123))

(assert (=> b!3663110 t!299115))

(declare-fun tb!212103 () Bool)

(declare-fun t!299125 () Bool)

(assert (=> (and b!3665176 (= (toChars!7953 (transformation!5802 (h!44067 (t!298754 (t!298754 rules!3307))))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 (get!12743 lt!1274987)))))) t!299125) tb!212103))

(declare-fun result!258166 () Bool)

(assert (= result!258166 result!258022))

(assert (=> d!1076192 t!299125))

(declare-fun tp!1115739 () Bool)

(declare-fun b_and!272435 () Bool)

(assert (=> b!3665176 (= tp!1115739 (and (=> t!299121 result!258162) (=> t!299111 result!258152) (=> t!299109 result!258150) (=> t!299117 result!258158) (=> t!299113 result!258154) (=> t!299119 result!258160) (=> t!299123 result!258164) (=> t!299125 result!258166) (=> t!299115 result!258156) b_and!272435))))

(declare-fun e!2269359 () Bool)

(assert (=> b!3665176 (= e!2269359 (and tp!1115742 tp!1115739))))

(declare-fun b!3665175 () Bool)

(declare-fun e!2269357 () Bool)

(declare-fun tp!1115740 () Bool)

(assert (=> b!3665175 (= e!2269357 (and tp!1115740 (inv!52112 (tag!6584 (h!44067 (t!298754 (t!298754 rules!3307))))) (inv!52115 (transformation!5802 (h!44067 (t!298754 (t!298754 rules!3307))))) e!2269359))))

(declare-fun b!3665174 () Bool)

(declare-fun e!2269358 () Bool)

(declare-fun tp!1115741 () Bool)

(assert (=> b!3665174 (= e!2269358 (and e!2269357 tp!1115741))))

(assert (=> b!3663856 (= tp!1115645 e!2269358)))

(assert (= b!3665175 b!3665176))

(assert (= b!3665174 b!3665175))

(assert (= (and b!3663856 ((_ is Cons!38647) (t!298754 (t!298754 rules!3307)))) b!3665174))

(declare-fun m!4173081 () Bool)

(assert (=> b!3665175 m!4173081))

(declare-fun m!4173083 () Bool)

(assert (=> b!3665175 m!4173083))

(declare-fun b!3665186 () Bool)

(declare-fun e!2269366 () Bool)

(declare-fun tp!1115745 () Bool)

(declare-fun tp!1115746 () Bool)

(assert (=> b!3665186 (= e!2269366 (and tp!1115745 tp!1115746))))

(declare-fun b!3665188 () Bool)

(declare-fun tp!1115747 () Bool)

(declare-fun tp!1115743 () Bool)

(assert (=> b!3665188 (= e!2269366 (and tp!1115747 tp!1115743))))

(declare-fun b!3665187 () Bool)

(declare-fun tp!1115744 () Bool)

(assert (=> b!3665187 (= e!2269366 tp!1115744)))

(declare-fun b!3665185 () Bool)

(assert (=> b!3665185 (= e!2269366 tp_is_empty!18205)))

(assert (=> b!3663829 (= tp!1115615 e!2269366)))

(assert (= (and b!3663829 ((_ is ElementMatch!10561) (regOne!21635 (regex!5802 (rule!8618 token!511))))) b!3665185))

(assert (= (and b!3663829 ((_ is Concat!16594) (regOne!21635 (regex!5802 (rule!8618 token!511))))) b!3665186))

(assert (= (and b!3663829 ((_ is Star!10561) (regOne!21635 (regex!5802 (rule!8618 token!511))))) b!3665187))

(assert (= (and b!3663829 ((_ is Union!10561) (regOne!21635 (regex!5802 (rule!8618 token!511))))) b!3665188))

(declare-fun b!3665204 () Bool)

(declare-fun e!2269373 () Bool)

(declare-fun tp!1115750 () Bool)

(declare-fun tp!1115751 () Bool)

(assert (=> b!3665204 (= e!2269373 (and tp!1115750 tp!1115751))))

(declare-fun b!3665206 () Bool)

(declare-fun tp!1115752 () Bool)

(declare-fun tp!1115748 () Bool)

(assert (=> b!3665206 (= e!2269373 (and tp!1115752 tp!1115748))))

(declare-fun b!3665205 () Bool)

(declare-fun tp!1115749 () Bool)

(assert (=> b!3665205 (= e!2269373 tp!1115749)))

(declare-fun b!3665203 () Bool)

(assert (=> b!3665203 (= e!2269373 tp_is_empty!18205)))

(assert (=> b!3663829 (= tp!1115611 e!2269373)))

(assert (= (and b!3663829 ((_ is ElementMatch!10561) (regTwo!21635 (regex!5802 (rule!8618 token!511))))) b!3665203))

(assert (= (and b!3663829 ((_ is Concat!16594) (regTwo!21635 (regex!5802 (rule!8618 token!511))))) b!3665204))

(assert (= (and b!3663829 ((_ is Star!10561) (regTwo!21635 (regex!5802 (rule!8618 token!511))))) b!3665205))

(assert (= (and b!3663829 ((_ is Union!10561) (regTwo!21635 (regex!5802 (rule!8618 token!511))))) b!3665206))

(declare-fun b!3665208 () Bool)

(declare-fun e!2269374 () Bool)

(declare-fun tp!1115755 () Bool)

(declare-fun tp!1115756 () Bool)

(assert (=> b!3665208 (= e!2269374 (and tp!1115755 tp!1115756))))

(declare-fun b!3665210 () Bool)

(declare-fun tp!1115757 () Bool)

(declare-fun tp!1115753 () Bool)

(assert (=> b!3665210 (= e!2269374 (and tp!1115757 tp!1115753))))

(declare-fun b!3665209 () Bool)

(declare-fun tp!1115754 () Bool)

(assert (=> b!3665209 (= e!2269374 tp!1115754)))

(declare-fun b!3665207 () Bool)

(assert (=> b!3665207 (= e!2269374 tp_is_empty!18205)))

(assert (=> b!3663857 (= tp!1115644 e!2269374)))

(assert (= (and b!3663857 ((_ is ElementMatch!10561) (regex!5802 (h!44067 (t!298754 rules!3307))))) b!3665207))

(assert (= (and b!3663857 ((_ is Concat!16594) (regex!5802 (h!44067 (t!298754 rules!3307))))) b!3665208))

(assert (= (and b!3663857 ((_ is Star!10561) (regex!5802 (h!44067 (t!298754 rules!3307))))) b!3665209))

(assert (= (and b!3663857 ((_ is Union!10561) (regex!5802 (h!44067 (t!298754 rules!3307))))) b!3665210))

(declare-fun b!3665212 () Bool)

(declare-fun e!2269375 () Bool)

(declare-fun tp!1115760 () Bool)

(declare-fun tp!1115761 () Bool)

(assert (=> b!3665212 (= e!2269375 (and tp!1115760 tp!1115761))))

(declare-fun b!3665214 () Bool)

(declare-fun tp!1115762 () Bool)

(declare-fun tp!1115758 () Bool)

(assert (=> b!3665214 (= e!2269375 (and tp!1115762 tp!1115758))))

(declare-fun b!3665213 () Bool)

(declare-fun tp!1115759 () Bool)

(assert (=> b!3665213 (= e!2269375 tp!1115759)))

(declare-fun b!3665211 () Bool)

(assert (=> b!3665211 (= e!2269375 tp_is_empty!18205)))

(assert (=> b!3663836 (= tp!1115621 e!2269375)))

(assert (= (and b!3663836 ((_ is ElementMatch!10561) (regOne!21634 (regex!5802 anOtherTypeRule!33)))) b!3665211))

(assert (= (and b!3663836 ((_ is Concat!16594) (regOne!21634 (regex!5802 anOtherTypeRule!33)))) b!3665212))

(assert (= (and b!3663836 ((_ is Star!10561) (regOne!21634 (regex!5802 anOtherTypeRule!33)))) b!3665213))

(assert (= (and b!3663836 ((_ is Union!10561) (regOne!21634 (regex!5802 anOtherTypeRule!33)))) b!3665214))

(declare-fun b!3665216 () Bool)

(declare-fun e!2269376 () Bool)

(declare-fun tp!1115765 () Bool)

(declare-fun tp!1115766 () Bool)

(assert (=> b!3665216 (= e!2269376 (and tp!1115765 tp!1115766))))

(declare-fun b!3665218 () Bool)

(declare-fun tp!1115767 () Bool)

(declare-fun tp!1115763 () Bool)

(assert (=> b!3665218 (= e!2269376 (and tp!1115767 tp!1115763))))

(declare-fun b!3665217 () Bool)

(declare-fun tp!1115764 () Bool)

(assert (=> b!3665217 (= e!2269376 tp!1115764)))

(declare-fun b!3665215 () Bool)

(assert (=> b!3665215 (= e!2269376 tp_is_empty!18205)))

(assert (=> b!3663836 (= tp!1115622 e!2269376)))

(assert (= (and b!3663836 ((_ is ElementMatch!10561) (regTwo!21634 (regex!5802 anOtherTypeRule!33)))) b!3665215))

(assert (= (and b!3663836 ((_ is Concat!16594) (regTwo!21634 (regex!5802 anOtherTypeRule!33)))) b!3665216))

(assert (= (and b!3663836 ((_ is Star!10561) (regTwo!21634 (regex!5802 anOtherTypeRule!33)))) b!3665217))

(assert (= (and b!3663836 ((_ is Union!10561) (regTwo!21634 (regex!5802 anOtherTypeRule!33)))) b!3665218))

(declare-fun b!3665220 () Bool)

(declare-fun e!2269377 () Bool)

(declare-fun tp!1115770 () Bool)

(declare-fun tp!1115771 () Bool)

(assert (=> b!3665220 (= e!2269377 (and tp!1115770 tp!1115771))))

(declare-fun b!3665222 () Bool)

(declare-fun tp!1115772 () Bool)

(declare-fun tp!1115768 () Bool)

(assert (=> b!3665222 (= e!2269377 (and tp!1115772 tp!1115768))))

(declare-fun b!3665221 () Bool)

(declare-fun tp!1115769 () Bool)

(assert (=> b!3665221 (= e!2269377 tp!1115769)))

(declare-fun b!3665219 () Bool)

(assert (=> b!3665219 (= e!2269377 tp_is_empty!18205)))

(assert (=> b!3663842 (= tp!1115628 e!2269377)))

(assert (= (and b!3663842 ((_ is ElementMatch!10561) (regOne!21635 (regex!5802 rule!403)))) b!3665219))

(assert (= (and b!3663842 ((_ is Concat!16594) (regOne!21635 (regex!5802 rule!403)))) b!3665220))

(assert (= (and b!3663842 ((_ is Star!10561) (regOne!21635 (regex!5802 rule!403)))) b!3665221))

(assert (= (and b!3663842 ((_ is Union!10561) (regOne!21635 (regex!5802 rule!403)))) b!3665222))

(declare-fun b!3665224 () Bool)

(declare-fun e!2269378 () Bool)

(declare-fun tp!1115775 () Bool)

(declare-fun tp!1115776 () Bool)

(assert (=> b!3665224 (= e!2269378 (and tp!1115775 tp!1115776))))

(declare-fun b!3665226 () Bool)

(declare-fun tp!1115777 () Bool)

(declare-fun tp!1115773 () Bool)

(assert (=> b!3665226 (= e!2269378 (and tp!1115777 tp!1115773))))

(declare-fun b!3665225 () Bool)

(declare-fun tp!1115774 () Bool)

(assert (=> b!3665225 (= e!2269378 tp!1115774)))

(declare-fun b!3665223 () Bool)

(assert (=> b!3665223 (= e!2269378 tp_is_empty!18205)))

(assert (=> b!3663842 (= tp!1115624 e!2269378)))

(assert (= (and b!3663842 ((_ is ElementMatch!10561) (regTwo!21635 (regex!5802 rule!403)))) b!3665223))

(assert (= (and b!3663842 ((_ is Concat!16594) (regTwo!21635 (regex!5802 rule!403)))) b!3665224))

(assert (= (and b!3663842 ((_ is Star!10561) (regTwo!21635 (regex!5802 rule!403)))) b!3665225))

(assert (= (and b!3663842 ((_ is Union!10561) (regTwo!21635 (regex!5802 rule!403)))) b!3665226))

(declare-fun tp!1115779 () Bool)

(declare-fun e!2269380 () Bool)

(declare-fun tp!1115778 () Bool)

(declare-fun b!3665227 () Bool)

(assert (=> b!3665227 (= e!2269380 (and (inv!52119 (left!30162 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 token!511))) (value!185817 token!511))))) tp!1115779 (inv!52119 (right!30492 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 token!511))) (value!185817 token!511))))) tp!1115778))))

(declare-fun b!3665229 () Bool)

(declare-fun e!2269379 () Bool)

(declare-fun tp!1115780 () Bool)

(assert (=> b!3665229 (= e!2269379 tp!1115780)))

(declare-fun b!3665228 () Bool)

(assert (=> b!3665228 (= e!2269380 (and (inv!52126 (xs!15021 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 token!511))) (value!185817 token!511))))) e!2269379))))

(assert (=> b!3663116 (= tp!1115545 (and (inv!52119 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 token!511))) (value!185817 token!511)))) e!2269380))))

(assert (= (and b!3663116 ((_ is Node!11819) (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 token!511))) (value!185817 token!511))))) b!3665227))

(assert (= b!3665228 b!3665229))

(assert (= (and b!3663116 ((_ is Leaf!18331) (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 token!511))) (value!185817 token!511))))) b!3665228))

(declare-fun m!4173095 () Bool)

(assert (=> b!3665227 m!4173095))

(declare-fun m!4173097 () Bool)

(assert (=> b!3665227 m!4173097))

(declare-fun m!4173099 () Bool)

(assert (=> b!3665228 m!4173099))

(assert (=> b!3663116 m!4170035))

(declare-fun b!3665230 () Bool)

(declare-fun e!2269381 () Bool)

(declare-fun tp!1115781 () Bool)

(assert (=> b!3665230 (= e!2269381 (and tp_is_empty!18205 tp!1115781))))

(assert (=> b!3663834 (= tp!1115618 e!2269381)))

(assert (= (and b!3663834 ((_ is Cons!38646) (t!298753 (originalCharacters!6516 token!511)))) b!3665230))

(declare-fun b!3665231 () Bool)

(declare-fun e!2269382 () Bool)

(declare-fun tp!1115782 () Bool)

(assert (=> b!3665231 (= e!2269382 (and tp_is_empty!18205 tp!1115782))))

(assert (=> b!3663843 (= tp!1115629 e!2269382)))

(assert (= (and b!3663843 ((_ is Cons!38646) (t!298753 (t!298753 suffix!1395)))) b!3665231))

(declare-fun e!2269384 () Bool)

(declare-fun tp!1115783 () Bool)

(declare-fun b!3665232 () Bool)

(declare-fun tp!1115784 () Bool)

(assert (=> b!3665232 (= e!2269384 (and (inv!52119 (left!30162 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 rule!403)) (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745))))) tp!1115784 (inv!52119 (right!30492 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 rule!403)) (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745))))) tp!1115783))))

(declare-fun b!3665234 () Bool)

(declare-fun e!2269383 () Bool)

(declare-fun tp!1115785 () Bool)

(assert (=> b!3665234 (= e!2269383 tp!1115785)))

(declare-fun b!3665233 () Bool)

(assert (=> b!3665233 (= e!2269384 (and (inv!52126 (xs!15021 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 rule!403)) (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745))))) e!2269383))))

(assert (=> b!3663179 (= tp!1115549 (and (inv!52119 (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 rule!403)) (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745)))) e!2269384))))

(assert (= (and b!3663179 ((_ is Node!11819) (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 rule!403)) (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745))))) b!3665232))

(assert (= b!3665233 b!3665234))

(assert (= (and b!3663179 ((_ is Leaf!18331) (c!633135 (dynLambda!16896 (toChars!7953 (transformation!5802 rule!403)) (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745))))) b!3665233))

(declare-fun m!4173101 () Bool)

(assert (=> b!3665232 m!4173101))

(declare-fun m!4173103 () Bool)

(assert (=> b!3665232 m!4173103))

(declare-fun m!4173105 () Bool)

(assert (=> b!3665233 m!4173105))

(assert (=> b!3663179 m!4170105))

(declare-fun b_lambda!108779 () Bool)

(assert (= b_lambda!108745 (or d!1075792 b_lambda!108779)))

(declare-fun bs!572933 () Bool)

(declare-fun d!1076784 () Bool)

(assert (= bs!572933 (and d!1076784 d!1075792)))

(assert (=> bs!572933 (= (dynLambda!16904 lambda!124598 lt!1274743) (= (list!14340 (dynLambda!16896 (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743))) (list!14340 lt!1274743)))))

(declare-fun b_lambda!108799 () Bool)

(assert (=> (not b_lambda!108799) (not bs!572933)))

(assert (=> bs!572933 t!299109))

(declare-fun b_and!272437 () Bool)

(assert (= b_and!272435 (and (=> t!299109 result!258150) b_and!272437)))

(assert (=> bs!572933 t!298858))

(declare-fun b_and!272439 () Bool)

(assert (= b_and!272401 (and (=> t!298858 result!257892) b_and!272439)))

(assert (=> bs!572933 t!298854))

(declare-fun b_and!272441 () Bool)

(assert (= b_and!272395 (and (=> t!298854 result!257888) b_and!272441)))

(assert (=> bs!572933 t!298856))

(declare-fun b_and!272443 () Bool)

(assert (= b_and!272397 (and (=> t!298856 result!257890) b_and!272443)))

(assert (=> bs!572933 t!298852))

(declare-fun b_and!272445 () Bool)

(assert (= b_and!272399 (and (=> t!298852 result!257886) b_and!272445)))

(assert (=> bs!572933 t!298908))

(declare-fun b_and!272447 () Bool)

(assert (= b_and!272393 (and (=> t!298908 result!257954) b_and!272447)))

(declare-fun b_lambda!108801 () Bool)

(assert (=> (not b_lambda!108801) (not bs!572933)))

(assert (=> bs!572933 t!299101))

(declare-fun b_and!272449 () Bool)

(assert (= b_and!272433 (and (=> t!299101 result!258142) b_and!272449)))

(assert (=> bs!572933 t!298862))

(declare-fun b_and!272451 () Bool)

(assert (= b_and!272425 (and (=> t!298862 result!257896) b_and!272451)))

(assert (=> bs!572933 t!298866))

(declare-fun b_and!272453 () Bool)

(assert (= b_and!272427 (and (=> t!298866 result!257900) b_and!272453)))

(assert (=> bs!572933 t!298904))

(declare-fun b_and!272455 () Bool)

(assert (= b_and!272431 (and (=> t!298904 result!257950) b_and!272455)))

(assert (=> bs!572933 t!298864))

(declare-fun b_and!272457 () Bool)

(assert (= b_and!272423 (and (=> t!298864 result!257898) b_and!272457)))

(assert (=> bs!572933 t!298860))

(declare-fun b_and!272459 () Bool)

(assert (= b_and!272429 (and (=> t!298860 result!257894) b_and!272459)))

(assert (=> bs!572933 m!4170641))

(assert (=> bs!572933 m!4170643))

(assert (=> bs!572933 m!4170643))

(assert (=> bs!572933 m!4170645))

(assert (=> bs!572933 m!4170641))

(assert (=> bs!572933 m!4169947))

(assert (=> d!1076182 d!1076784))

(declare-fun b_lambda!108781 () Bool)

(assert (= b_lambda!108703 (or (and b!3662995 b_free!96701 (= (toValue!8094 (transformation!5802 (h!44067 rules!3307))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3663858 b_free!96709 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3662992 b_free!96697 (= (toValue!8094 (transformation!5802 (rule!8618 token!511))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3665176 b_free!96713 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 (t!298754 rules!3307))))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3663022 b_free!96693 (= (toValue!8094 (transformation!5802 rule!403)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3663012 b_free!96689 (= (toValue!8094 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) b_lambda!108781)))

(declare-fun b_lambda!108783 () Bool)

(assert (= b_lambda!108683 (or (and b!3662992 b_free!96699 (= (toChars!7953 (transformation!5802 (rule!8618 token!511))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3663858 b_free!96711 (= (toChars!7953 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3663012 b_free!96691 (= (toChars!7953 (transformation!5802 anOtherTypeRule!33)) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3665176 b_free!96715 (= (toChars!7953 (transformation!5802 (h!44067 (t!298754 (t!298754 rules!3307))))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3663022 b_free!96695 (= (toChars!7953 (transformation!5802 rule!403)) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3662995 b_free!96703 (= (toChars!7953 (transformation!5802 (h!44067 rules!3307))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) b_lambda!108783)))

(declare-fun b_lambda!108785 () Bool)

(assert (= b_lambda!108697 (or (and b!3662992 b_free!96699 (= (toChars!7953 (transformation!5802 (rule!8618 token!511))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3663858 b_free!96711 (= (toChars!7953 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3663012 b_free!96691 (= (toChars!7953 (transformation!5802 anOtherTypeRule!33)) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3665176 b_free!96715 (= (toChars!7953 (transformation!5802 (h!44067 (t!298754 (t!298754 rules!3307))))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3663022 b_free!96695 (= (toChars!7953 (transformation!5802 rule!403)) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3662995 b_free!96703 (= (toChars!7953 (transformation!5802 (h!44067 rules!3307))) (toChars!7953 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) b_lambda!108785)))

(declare-fun b_lambda!108787 () Bool)

(assert (= b_lambda!108777 (or d!1075606 b_lambda!108787)))

(declare-fun bs!572935 () Bool)

(declare-fun d!1076790 () Bool)

(assert (= bs!572935 (and d!1076790 d!1075606)))

(assert (=> bs!572935 (= (dynLambda!16904 lambda!124596 lt!1274745) (= (list!14340 (dynLambda!16896 (toChars!7953 (transformation!5802 rule!403)) (dynLambda!16897 (toValue!8094 (transformation!5802 rule!403)) lt!1274745))) (list!14340 lt!1274745)))))

(declare-fun b_lambda!108803 () Bool)

(assert (=> (not b_lambda!108803) (not bs!572935)))

(assert (=> bs!572935 t!298796))

(declare-fun b_and!272461 () Bool)

(assert (= b_and!272445 (and (=> t!298796 result!257830) b_and!272461)))

(assert (=> bs!572935 t!298800))

(declare-fun b_and!272463 () Bool)

(assert (= b_and!272443 (and (=> t!298800 result!257834) b_and!272463)))

(assert (=> bs!572935 t!298802))

(declare-fun b_and!272465 () Bool)

(assert (= b_and!272439 (and (=> t!298802 result!257836) b_and!272465)))

(assert (=> bs!572935 t!299113))

(declare-fun b_and!272467 () Bool)

(assert (= b_and!272437 (and (=> t!299113 result!258154) b_and!272467)))

(assert (=> bs!572935 t!298798))

(declare-fun b_and!272469 () Bool)

(assert (= b_and!272441 (and (=> t!298798 result!257832) b_and!272469)))

(assert (=> bs!572935 t!298912))

(declare-fun b_and!272471 () Bool)

(assert (= b_and!272447 (and (=> t!298912 result!257958) b_and!272471)))

(declare-fun b_lambda!108805 () Bool)

(assert (=> (not b_lambda!108805) (not bs!572935)))

(assert (=> bs!572935 t!299105))

(declare-fun b_and!272473 () Bool)

(assert (= b_and!272449 (and (=> t!299105 result!258146) b_and!272473)))

(assert (=> bs!572935 t!298906))

(declare-fun b_and!272475 () Bool)

(assert (= b_and!272455 (and (=> t!298906 result!257952) b_and!272475)))

(assert (=> bs!572935 t!298764))

(declare-fun b_and!272477 () Bool)

(assert (= b_and!272459 (and (=> t!298764 result!257792) b_and!272477)))

(assert (=> bs!572935 t!298766))

(declare-fun b_and!272479 () Bool)

(assert (= b_and!272451 (and (=> t!298766 result!257796) b_and!272479)))

(assert (=> bs!572935 t!298770))

(declare-fun b_and!272481 () Bool)

(assert (= b_and!272453 (and (=> t!298770 result!257800) b_and!272481)))

(assert (=> bs!572935 t!298768))

(declare-fun b_and!272483 () Bool)

(assert (= b_and!272457 (and (=> t!298768 result!257798) b_and!272483)))

(assert (=> bs!572935 m!4170055))

(assert (=> bs!572935 m!4170109))

(assert (=> bs!572935 m!4170109))

(assert (=> bs!572935 m!4170111))

(assert (=> bs!572935 m!4170055))

(assert (=> bs!572935 m!4170113))

(assert (=> d!1076656 d!1076790))

(declare-fun b_lambda!108789 () Bool)

(assert (= b_lambda!108705 (or (and b!3662995 b_free!96701 (= (toValue!8094 (transformation!5802 (h!44067 rules!3307))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3663858 b_free!96709 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3662992 b_free!96697 (= (toValue!8094 (transformation!5802 (rule!8618 token!511))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3665176 b_free!96713 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 (t!298754 rules!3307))))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3663022 b_free!96693 (= (toValue!8094 (transformation!5802 rule!403)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3663012 b_free!96689 (= (toValue!8094 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) b_lambda!108789)))

(declare-fun b_lambda!108791 () Bool)

(assert (= b_lambda!108699 (or (and b!3662995 b_free!96701 (= (toValue!8094 (transformation!5802 (h!44067 rules!3307))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3663858 b_free!96709 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3662992 b_free!96697 (= (toValue!8094 (transformation!5802 (rule!8618 token!511))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3665176 b_free!96713 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 (t!298754 rules!3307))))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3663022 b_free!96693 (= (toValue!8094 (transformation!5802 rule!403)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3663012 b_free!96689 (= (toValue!8094 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) b_lambda!108791)))

(declare-fun b_lambda!108793 () Bool)

(assert (= b_lambda!108701 (or (and b!3662995 b_free!96701 (= (toValue!8094 (transformation!5802 (h!44067 rules!3307))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3663858 b_free!96709 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3662992 b_free!96697 (= (toValue!8094 (transformation!5802 (rule!8618 token!511))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3665176 b_free!96713 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 (t!298754 rules!3307))))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3663022 b_free!96693 (= (toValue!8094 (transformation!5802 rule!403)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3663012 b_free!96689 (= (toValue!8094 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) b_lambda!108793)))

(declare-fun b_lambda!108795 () Bool)

(assert (= b_lambda!108707 (or (and b!3662995 b_free!96701 (= (toValue!8094 (transformation!5802 (h!44067 rules!3307))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3663858 b_free!96709 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 rules!3307)))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3662992 b_free!96697 (= (toValue!8094 (transformation!5802 (rule!8618 token!511))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3665176 b_free!96713 (= (toValue!8094 (transformation!5802 (h!44067 (t!298754 (t!298754 rules!3307))))) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3663022 b_free!96693 (= (toValue!8094 (transformation!5802 rule!403)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) (and b!3663012 b_free!96689 (= (toValue!8094 (transformation!5802 anOtherTypeRule!33)) (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))))) b_lambda!108795)))

(declare-fun b_lambda!108797 () Bool)

(assert (= b_lambda!108743 (or d!1075798 b_lambda!108797)))

(declare-fun bs!572936 () Bool)

(declare-fun d!1076794 () Bool)

(assert (= bs!572936 (and d!1076794 d!1075798)))

(declare-fun res!1488182 () Bool)

(declare-fun e!2269398 () Bool)

(assert (=> bs!572936 (=> res!1488182 e!2269398)))

(assert (=> bs!572936 (= res!1488182 (not (= (list!14340 lt!1274743) (list!14340 (seqFromList!4351 (originalCharacters!6516 (_1!22390 lt!1274714)))))))))

(assert (=> bs!572936 (= (dynLambda!16903 lambda!124601 lt!1274743 (seqFromList!4351 (originalCharacters!6516 (_1!22390 lt!1274714)))) e!2269398)))

(declare-fun b!3665259 () Bool)

(assert (=> b!3665259 (= e!2269398 (= (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) lt!1274743) (dynLambda!16897 (toValue!8094 (transformation!5802 (rule!8618 (_1!22390 lt!1274714)))) (seqFromList!4351 (originalCharacters!6516 (_1!22390 lt!1274714))))))))

(assert (= (and bs!572936 (not res!1488182)) b!3665259))

(declare-fun b_lambda!108807 () Bool)

(assert (=> (not b_lambda!108807) (not b!3665259)))

(assert (=> b!3665259 t!298866))

(declare-fun b_and!272485 () Bool)

(assert (= b_and!272481 (and (=> t!298866 result!257900) b_and!272485)))

(assert (=> b!3665259 t!298862))

(declare-fun b_and!272487 () Bool)

(assert (= b_and!272479 (and (=> t!298862 result!257896) b_and!272487)))

(assert (=> b!3665259 t!299101))

(declare-fun b_and!272489 () Bool)

(assert (= b_and!272473 (and (=> t!299101 result!258142) b_and!272489)))

(assert (=> b!3665259 t!298860))

(declare-fun b_and!272491 () Bool)

(assert (= b_and!272477 (and (=> t!298860 result!257894) b_and!272491)))

(assert (=> b!3665259 t!298904))

(declare-fun b_and!272493 () Bool)

(assert (= b_and!272475 (and (=> t!298904 result!257950) b_and!272493)))

(assert (=> b!3665259 t!298864))

(declare-fun b_and!272495 () Bool)

(assert (= b_and!272483 (and (=> t!298864 result!257898) b_and!272495)))

(declare-fun b_lambda!108809 () Bool)

(assert (=> (not b_lambda!108809) (not b!3665259)))

(assert (=> b!3665259 t!298900))

(declare-fun b_and!272497 () Bool)

(assert (= b_and!272493 (and (=> t!298900 result!257946) b_and!272497)))

(assert (=> b!3665259 t!299095))

(declare-fun b_and!272499 () Bool)

(assert (= b_and!272489 (and (=> t!299095 result!258136) b_and!272499)))

(assert (=> b!3665259 t!298868))

(declare-fun b_and!272501 () Bool)

(assert (= b_and!272491 (and (=> t!298868 result!257902) b_and!272501)))

(assert (=> b!3665259 t!298870))

(declare-fun b_and!272503 () Bool)

(assert (= b_and!272487 (and (=> t!298870 result!257904) b_and!272503)))

(assert (=> b!3665259 t!298872))

(declare-fun b_and!272505 () Bool)

(assert (= b_and!272495 (and (=> t!298872 result!257906) b_and!272505)))

(assert (=> b!3665259 t!298874))

(declare-fun b_and!272507 () Bool)

(assert (= b_and!272485 (and (=> t!298874 result!257908) b_and!272507)))

(assert (=> bs!572936 m!4169947))

(assert (=> bs!572936 m!4169829))

(assert (=> bs!572936 m!4170661))

(assert (=> b!3665259 m!4170641))

(assert (=> b!3665259 m!4169829))

(assert (=> b!3665259 m!4170659))

(assert (=> d!1076160 d!1076794))

(check-sat (not b!3664029) (not d!1076584) (not b!3664147) (not d!1076172) (not b!3664098) (not b!3664945) (not b!3664754) (not b!3665029) (not b!3663860) (not bm!265064) (not d!1076650) (not b!3664334) (not d!1076676) (not bm!265096) (not b!3664962) (not bm!265204) (not b!3664944) (not bm!265173) (not b!3664404) (not b!3663948) (not b!3664331) (not b_lambda!108773) (not bm!265201) (not d!1076656) (not d!1076592) (not b!3663994) (not b!3664414) (not d!1076648) (not d!1076078) (not b!3663264) (not b!3664325) (not b_lambda!108803) (not bm!265176) (not b!3664996) (not b_lambda!108769) (not b!3663919) (not d!1076568) (not d!1076530) (not b!3664110) b_and!272467 (not b!3664695) (not b!3665009) (not b!3664403) (not d!1076452) (not d!1076618) (not d!1076114) (not b!3665016) (not b!3663916) (not d!1076160) (not b!3664089) (not b_lambda!108799) (not b!3664733) (not b!3665209) (not b!3663915) (not b!3664169) (not b!3664910) (not b!3665079) (not b!3664412) (not b!3664937) (not b!3665053) b_and!272463 (not b!3665044) (not tb!212061) (not d!1075994) (not bm!265205) (not b_lambda!108775) (not d!1075956) (not bm!265171) (not d!1076492) (not d!1076556) (not b!3665118) (not d!1076694) (not b!3665150) (not b!3664946) (not b!3665002) (not d!1076086) (not b!3665187) (not b!3664911) (not b!3664188) (not b!3665210) (not b!3664639) (not b!3664979) (not b!3664253) (not b!3664139) (not b!3664934) tp_is_empty!18205 (not b!3664894) (not b!3664751) (not b!3664164) (not d!1076632) (not b!3664941) (not b!3664852) (not b!3665083) (not d!1076598) (not b!3665147) (not d!1076164) (not bm!265087) (not b!3663873) (not b!3665206) (not d!1076112) (not b!3664218) (not b!3664953) (not b!3665230) (not b!3664981) (not b!3664975) (not bm!265088) (not b!3665004) (not b!3664734) (not bm!265209) (not bm!265103) (not b!3665138) (not d!1076518) (not b!3664228) (not d!1076230) (not b!3664328) (not b!3664054) (not b!3664993) (not b_lambda!108787) (not b!3665030) (not d!1076606) (not b!3665087) (not b_lambda!108727) (not b!3664747) b_and!272471 (not d!1076176) (not b!3663945) (not b!3665117) (not b!3664926) (not b!3664411) (not b!3663866) (not b!3664108) (not b_next!97413) (not b!3664320) (not b!3664990) (not bm!265076) (not d!1076678) (not b!3664652) (not b!3664904) (not bm!265045) (not b!3665130) b_and!272465 (not b!3664938) (not b!3664858) (not d!1076456) (not bm!265101) (not b!3664741) (not b!3664302) (not b!3664782) (not bs!572933) (not b!3664263) (not b!3665135) (not b!3664957) (not b!3664952) (not b_lambda!108731) (not b!3664781) (not d!1076264) (not b!3665090) (not d!1076288) (not b!3664106) (not d!1076716) (not b!3665025) (not tb!212001) (not b!3665000) (not d!1076064) (not b_lambda!108767) (not b!3665082) (not b!3665174) (not d!1076686) (not tb!211961) (not d!1076050) (not b!3664640) (not b!3665086) (not d!1076666) (not bm!265093) (not b!3665149) (not d!1076574) b_and!272461 (not b!3663116) (not b!3665213) (not b!3664736) (not b!3664342) (not b_lambda!108791) (not b!3665142) (not d!1076142) (not b_next!97403) (not d!1076558) (not b!3665167) (not b!3664995) (not d!1076302) (not b!3665188) (not d!1076300) (not b!3665023) (not b!3664909) (not b!3664400) (not d!1076122) (not b_next!97407) (not b!3664189) (not b!3665168) (not b_lambda!108807) (not b!3664319) (not b!3664891) (not d!1076140) (not b!3663877) (not b!3664963) (not tb!211911) (not b!3664329) (not b!3664294) (not b!3664341) (not d!1075936) (not b!3664064) (not d!1076022) (not b!3663864) (not b_lambda!108721) (not b!3664985) (not b!3664951) (not b_lambda!108725) (not b!3664924) (not b!3665105) (not bm!265062) (not b!3665156) (not d!1076614) (not b!3665139) (not d!1076256) (not b!3664177) (not b!3663926) (not d!1076582) (not bm!265206) (not d!1076258) (not b!3663946) (not b!3664265) (not b_next!97399) (not b!3664406) (not d!1076506) (not bm!265048) (not d!1076596) (not d!1076188) (not b!3665233) (not b!3665148) b_and!272505 (not b!3665059) (not b!3664136) (not b!3664986) (not d!1076696) (not b_next!97397) (not b!3664061) (not b!3664905) (not d!1076244) (not b!3664107) (not b!3664003) (not b!3664306) (not b!3664088) (not b_lambda!108809) (not b!3663517) (not d!1076642) (not b!3664816) (not bm!265091) (not b_lambda!108747) (not b!3664983) (not b!3664249) (not b!3665110) (not d!1076550) (not b!3664291) (not b!3664930) (not b!3664419) (not d!1076178) (not b!3664947) (not b!3664297) (not b!3665085) (not b!3665220) (not b!3664786) (not bm!265044) (not b!3664402) (not b!3664750) (not b!3665134) (not b!3664062) (not b!3663861) (not b!3664097) b_and!272469 (not b!3664304) (not d!1076146) b_and!272507 (not b!3664250) (not b!3664880) (not d!1076634) (not b!3664958) (not bm!265066) (not b!3664969) (not d!1076196) (not b!3664145) (not b_next!97405) (not b_lambda!108729) (not b!3664219) (not d!1076578) (not b!3664902) (not b!3664343) (not b!3664780) (not b!3664784) (not b!3664031) (not b!3664254) (not b!3664142) (not d!1076124) (not b!3664338) (not b!3664205) (not b!3664322) (not b!3664961) (not b!3664857) (not d!1076608) (not b!3665186) (not b!3664743) (not b!3664087) (not b!3664925) (not d!1076684) (not bm!265084) (not b!3663179) (not d!1076058) (not b!3664680) (not d!1076016) (not d!1075942) (not b!3664165) (not b!3665028) (not b!3663871) (not b!3665175) (not d!1076136) (not b!3665055) (not d!1076652) (not b!3665062) (not b!3665231) (not d!1075952) (not b!3665120) (not d!1076626) (not b!3665031) (not b!3664105) (not b_lambda!108751) (not bm!265174) (not b!3664248) (not b!3665113) (not b!3664323) (not b!3663957) (not tb!211971) (not b!3664033) (not b_lambda!108781) (not b!3664092) (not d!1076182) (not d!1076252) (not d!1076668) (not b!3665132) (not bm!265059) (not d!1076032) (not bm!265078) (not d!1076654) (not d!1076132) (not b_next!97393) (not d!1075972) (not b!3664273) (not d!1076286) (not d!1076708) (not b!3664869) (not d!1076270) (not d!1076644) (not b!3665001) (not b!3665106) (not b!3664327) (not bm!265183) (not b!3665122) (not b!3665173) (not b_lambda!108801) (not b!3665205) (not b!3664887) (not b!3665112) (not d!1076720) (not b!3665232) (not b!3663917) (not b!3664973) (not b!3664437) (not d!1076102) (not d!1076660) (not b!3664931) (not b!3665146) (not b!3665109) (not bm!265069) (not b!3664755) (not b!3663953) (not b_lambda!108793) (not b!3663914) (not b!3664318) (not bm!265049) (not b!3663928) (not b!3664159) (not b_lambda!108795) (not b!3664256) (not d!1076604) (not b_next!97401) (not d!1075978) (not b!3665057) (not b!3665020) (not b!3664928) (not bs!572935) (not b!3664860) (not b!3664279) (not bm!265202) (not d!1076496) (not d!1076296) (not d!1075966) (not b!3664166) (not b!3664954) (not b_lambda!108723) (not b!3664141) (not b!3664814) (not b!3665027) (not b!3665144) (not d!1076248) (not b!3665222) (not b!3665171) (not d!1076616) (not b_lambda!108759) (not b!3664144) (not b!3663888) (not bm!265179) (not b!3665136) (not d!1076306) (not d!1076298) b_and!272501 (not b!3665172) (not d!1076692) (not b!3665114) (not b!3664920) (not b!3665108) (not b_next!97417) (not b_lambda!108785) (not b!3664148) (not b!3663885) (not b!3664867) (not b!3665221) (not b!3663934) (not tb!211941) (not d!1076670) (not b_lambda!108733) (not b!3665229) (not d!1075980) (not tb!212051) (not b!3664122) (not bs!572936) (not b!3664971) (not d!1076220) (not b!3665227) (not b!3664987) (not b!3664955) (not b!3664321) (not d!1076198) (not bm!265191) (not b!3665157) (not b!3664081) (not b!3665151) (not b!3665226) (not b!3665225) (not b!3664966) (not bm!265208) (not b!3664815) (not d!1076226) (not d!1076118) (not d!1076552) (not b!3664856) (not d!1076238) (not b!3665143) (not b!3665024) (not d!1076714) (not b_lambda!108783) (not b!3664261) (not bm!265061) (not b!3664171) (not d!1076266) (not bm!265169) (not b!3665064) (not b!3664242) (not b!3665066) b_and!272499 (not b!3665116) (not d!1076242) (not d!1076590) (not bm!265172) (not b!3665051) (not b!3664292) (not b!3664646) (not b!3665217) (not b!3664337) (not b!3665140) (not b!3664787) (not b_next!97419) (not bm!265092) (not b!3664783) (not d!1076718) (not bm!265089) (not d!1076218) (not b!3664959) (not b!3665228) (not d!1076148) (not d!1076036) (not b!3664919) (not b!3664160) (not b!3664405) (not b!3664916) (not b_next!97415) (not b!3665218) (not d!1076484) (not d!1076292) (not d!1076446) (not b!3663924) (not b!3664101) (not b_lambda!108739) (not b!3665224) (not b!3664745) (not b!3664240) (not b!3665208) (not b!3664753) (not bm!265081) (not b!3664950) (not d!1076190) (not d!1076706) (not b!3665018) (not d!1075986) (not b!3665214) (not d!1076192) (not d!1075934) (not b!3664073) (not b!3664104) (not b!3664976) (not bm!265170) (not d!1076262) (not d!1076444) (not bm!265098) (not b!3665204) (not b!3665091) (not tb!212041) (not b!3663875) (not bm!265102) (not b!3664865) (not b!3665104) (not bm!265094) (not d!1076748) (not b!3664989) (not b!3665121) (not b!3663955) (not b!3665011) (not bm!265068) (not bm!265065) (not bm!265085) (not b!3663863) (not b!3665131) (not d!1075958) (not b!3663881) (not b!3664112) (not b!3664324) (not b!3664221) (not b_next!97395) (not d!1075948) (not bm!265175) (not d!1076338) (not b!3665022) (not b!3665032) (not b!3665089) (not b!3664091) (not d!1076128) (not b!3664974) (not d!1075950) (not b!3664917) (not b!3665234) (not b!3664226) (not b!3664330) (not b!3665013) (not b_lambda!108789) (not b!3664998) (not b!3664748) (not d!1076054) (not bm!265042) (not b!3665155) (not b!3664111) (not bm!265079) (not b!3664788) (not d!1076042) (not b!3664095) (not b_lambda!108797) (not d!1076290) (not b!3664752) (not d!1076228) (not b!3665216) (not b_lambda!108805) (not b!3664316) (not b!3664889) (not b!3664948) (not tb!211901) b_and!272503 (not b_lambda!108779) (not d!1076108) (not b!3664071) (not b!3664230) (not b!3665169) (not b!3664295) (not d!1076680) (not bm!265047) b_and!272497 (not b!3664906) (not b!3665076) (not bm!265099) (not d!1076746) (not b!3664069) (not bm!265083) (not b!3665212) (not b!3663887) (not d!1076014))
(check-sat b_and!272467 b_and!272463 b_and!272471 b_and!272461 (not b_next!97399) b_and!272469 (not b_next!97393) (not b_next!97401) b_and!272501 (not b_next!97417) b_and!272499 (not b_next!97395) (not b_next!97413) b_and!272465 (not b_next!97407) (not b_next!97403) b_and!272505 (not b_next!97397) b_and!272507 (not b_next!97405) (not b_next!97419) (not b_next!97415) b_and!272503 b_and!272497)
