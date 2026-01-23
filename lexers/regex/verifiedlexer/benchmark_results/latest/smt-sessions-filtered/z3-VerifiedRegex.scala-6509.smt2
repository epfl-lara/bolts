; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!342642 () Bool)

(assert start!342642)

(declare-fun b!3660761 () Bool)

(declare-fun b_free!96609 () Bool)

(declare-fun b_next!97313 () Bool)

(assert (=> b!3660761 (= b_free!96609 (not b_next!97313))))

(declare-fun tp!1115144 () Bool)

(declare-fun b_and!271659 () Bool)

(assert (=> b!3660761 (= tp!1115144 b_and!271659)))

(declare-fun b_free!96611 () Bool)

(declare-fun b_next!97315 () Bool)

(assert (=> b!3660761 (= b_free!96611 (not b_next!97315))))

(declare-fun tp!1115149 () Bool)

(declare-fun b_and!271661 () Bool)

(assert (=> b!3660761 (= tp!1115149 b_and!271661)))

(declare-fun b!3660770 () Bool)

(declare-fun b_free!96613 () Bool)

(declare-fun b_next!97317 () Bool)

(assert (=> b!3660770 (= b_free!96613 (not b_next!97317))))

(declare-fun tp!1115153 () Bool)

(declare-fun b_and!271663 () Bool)

(assert (=> b!3660770 (= tp!1115153 b_and!271663)))

(declare-fun b_free!96615 () Bool)

(declare-fun b_next!97319 () Bool)

(assert (=> b!3660770 (= b_free!96615 (not b_next!97319))))

(declare-fun tp!1115151 () Bool)

(declare-fun b_and!271665 () Bool)

(assert (=> b!3660770 (= tp!1115151 b_and!271665)))

(declare-fun b!3660777 () Bool)

(declare-fun b_free!96617 () Bool)

(declare-fun b_next!97321 () Bool)

(assert (=> b!3660777 (= b_free!96617 (not b_next!97321))))

(declare-fun tp!1115155 () Bool)

(declare-fun b_and!271667 () Bool)

(assert (=> b!3660777 (= tp!1115155 b_and!271667)))

(declare-fun b_free!96619 () Bool)

(declare-fun b_next!97323 () Bool)

(assert (=> b!3660777 (= b_free!96619 (not b_next!97323))))

(declare-fun tp!1115147 () Bool)

(declare-fun b_and!271669 () Bool)

(assert (=> b!3660777 (= tp!1115147 b_and!271669)))

(declare-fun b!3660778 () Bool)

(declare-fun b_free!96621 () Bool)

(declare-fun b_next!97325 () Bool)

(assert (=> b!3660778 (= b_free!96621 (not b_next!97325))))

(declare-fun tp!1115145 () Bool)

(declare-fun b_and!271671 () Bool)

(assert (=> b!3660778 (= tp!1115145 b_and!271671)))

(declare-fun b_free!96623 () Bool)

(declare-fun b_next!97327 () Bool)

(assert (=> b!3660778 (= b_free!96623 (not b_next!97327))))

(declare-fun tp!1115157 () Bool)

(declare-fun b_and!271673 () Bool)

(assert (=> b!3660778 (= tp!1115157 b_and!271673)))

(declare-fun bm!264790 () Bool)

(declare-datatypes ((C!21300 0))(
  ( (C!21301 (val!12698 Int)) )
))
(declare-datatypes ((List!38749 0))(
  ( (Nil!38625) (Cons!38625 (h!44045 C!21300) (t!298492 List!38749)) )
))
(declare-fun call!264800 () List!38749)

(declare-datatypes ((List!38750 0))(
  ( (Nil!38626) (Cons!38626 (h!44046 (_ BitVec 16)) (t!298493 List!38750)) )
))
(declare-datatypes ((TokenValue!6028 0))(
  ( (FloatLiteralValue!12056 (text!42641 List!38750)) (TokenValueExt!6027 (__x!24273 Int)) (Broken!30140 (value!185677 List!38750)) (Object!6151) (End!6028) (Def!6028) (Underscore!6028) (Match!6028) (Else!6028) (Error!6028) (Case!6028) (If!6028) (Extends!6028) (Abstract!6028) (Class!6028) (Val!6028) (DelimiterValue!12056 (del!6088 List!38750)) (KeywordValue!6034 (value!185678 List!38750)) (CommentValue!12056 (value!185679 List!38750)) (WhitespaceValue!12056 (value!185680 List!38750)) (IndentationValue!6028 (value!185681 List!38750)) (String!43473) (Int32!6028) (Broken!30141 (value!185682 List!38750)) (Boolean!6029) (Unit!55928) (OperatorValue!6031 (op!6088 List!38750)) (IdentifierValue!12056 (value!185683 List!38750)) (IdentifierValue!12057 (value!185684 List!38750)) (WhitespaceValue!12057 (value!185685 List!38750)) (True!12056) (False!12056) (Broken!30142 (value!185686 List!38750)) (Broken!30143 (value!185687 List!38750)) (True!12057) (RightBrace!6028) (RightBracket!6028) (Colon!6028) (Null!6028) (Comma!6028) (LeftBracket!6028) (False!12057) (LeftBrace!6028) (ImaginaryLiteralValue!6028 (text!42642 List!38750)) (StringLiteralValue!18084 (value!185688 List!38750)) (EOFValue!6028 (value!185689 List!38750)) (IdentValue!6028 (value!185690 List!38750)) (DelimiterValue!12057 (value!185691 List!38750)) (DedentValue!6028 (value!185692 List!38750)) (NewLineValue!6028 (value!185693 List!38750)) (IntegerValue!18084 (value!185694 (_ BitVec 32)) (text!42643 List!38750)) (IntegerValue!18085 (value!185695 Int) (text!42644 List!38750)) (Times!6028) (Or!6028) (Equal!6028) (Minus!6028) (Broken!30144 (value!185696 List!38750)) (And!6028) (Div!6028) (LessEqual!6028) (Mod!6028) (Concat!16585) (Not!6028) (Plus!6028) (SpaceValue!6028 (value!185697 List!38750)) (IntegerValue!18086 (value!185698 Int) (text!42645 List!38750)) (StringLiteralValue!18085 (text!42646 List!38750)) (FloatLiteralValue!12057 (text!42647 List!38750)) (BytesLiteralValue!6028 (value!185699 List!38750)) (CommentValue!12057 (value!185700 List!38750)) (StringLiteralValue!18086 (value!185701 List!38750)) (ErrorTokenValue!6028 (msg!6089 List!38750)) )
))
(declare-datatypes ((Regex!10557 0))(
  ( (ElementMatch!10557 (c!632714 C!21300)) (Concat!16586 (regOne!21626 Regex!10557) (regTwo!21626 Regex!10557)) (EmptyExpr!10557) (Star!10557 (reg!10886 Regex!10557)) (EmptyLang!10557) (Union!10557 (regOne!21627 Regex!10557) (regTwo!21627 Regex!10557)) )
))
(declare-datatypes ((String!43474 0))(
  ( (String!43475 (value!185702 String)) )
))
(declare-datatypes ((IArray!23627 0))(
  ( (IArray!23628 (innerList!11871 List!38749)) )
))
(declare-datatypes ((Conc!11811 0))(
  ( (Node!11811 (left!30144 Conc!11811) (right!30474 Conc!11811) (csize!23852 Int) (cheight!12022 Int)) (Leaf!18321 (xs!15013 IArray!23627) (csize!23853 Int)) (Empty!11811) )
))
(declare-datatypes ((BalanceConc!23236 0))(
  ( (BalanceConc!23237 (c!632715 Conc!11811)) )
))
(declare-datatypes ((TokenValueInjection!11484 0))(
  ( (TokenValueInjection!11485 (toValue!8090 Int) (toChars!7949 Int)) )
))
(declare-datatypes ((Rule!11396 0))(
  ( (Rule!11397 (regex!5798 Regex!10557) (tag!6576 String!43474) (isSeparator!5798 Bool) (transformation!5798 TokenValueInjection!11484)) )
))
(declare-datatypes ((Token!10962 0))(
  ( (Token!10963 (value!185703 TokenValue!6028) (rule!8610 Rule!11396) (size!29511 Int) (originalCharacters!6512 List!38749)) )
))
(declare-datatypes ((tuple2!38488 0))(
  ( (tuple2!38489 (_1!22378 Token!10962) (_2!22378 List!38749)) )
))
(declare-fun lt!1273386 () tuple2!38488)

(declare-fun usedCharacters!1010 (Regex!10557) List!38749)

(assert (=> bm!264790 (= call!264800 (usedCharacters!1010 (regex!5798 (rule!8610 (_1!22378 lt!1273386)))))))

(declare-fun b!3660730 () Bool)

(declare-datatypes ((Unit!55929 0))(
  ( (Unit!55930) )
))
(declare-fun e!2266727 () Unit!55929)

(declare-fun Unit!55931 () Unit!55929)

(assert (=> b!3660730 (= e!2266727 Unit!55931)))

(declare-datatypes ((List!38751 0))(
  ( (Nil!38627) (Cons!38627 (h!44047 Rule!11396) (t!298494 List!38751)) )
))
(declare-fun rules!3307 () List!38751)

(declare-fun lt!1273373 () List!38749)

(declare-fun lt!1273393 () Unit!55929)

(declare-fun rule!403 () Rule!11396)

(declare-fun lt!1273408 () List!38749)

(declare-datatypes ((LexerInterface!5387 0))(
  ( (LexerInterfaceExt!5384 (__x!24274 Int)) (Lexer!5385) )
))
(declare-fun thiss!23823 () LexerInterface!5387)

(declare-fun lt!1273388 () List!38749)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!340 (LexerInterface!5387 List!38751 Rule!11396 List!38749 List!38749 List!38749 Rule!11396) Unit!55929)

(assert (=> b!3660730 (= lt!1273393 (lemmaMaxPrefixOutputsMaxPrefix!340 thiss!23823 rules!3307 (rule!8610 (_1!22378 lt!1273386)) lt!1273388 lt!1273408 lt!1273373 rule!403))))

(assert (=> b!3660730 false))

(declare-fun res!1486091 () Bool)

(declare-fun e!2266729 () Bool)

(assert (=> start!342642 (=> (not res!1486091) (not e!2266729))))

(get-info :version)

(assert (=> start!342642 (= res!1486091 ((_ is Lexer!5385) thiss!23823))))

(assert (=> start!342642 e!2266729))

(declare-fun e!2266740 () Bool)

(assert (=> start!342642 e!2266740))

(declare-fun e!2266736 () Bool)

(assert (=> start!342642 e!2266736))

(assert (=> start!342642 true))

(declare-fun token!511 () Token!10962)

(declare-fun e!2266713 () Bool)

(declare-fun inv!52093 (Token!10962) Bool)

(assert (=> start!342642 (and (inv!52093 token!511) e!2266713)))

(declare-fun e!2266746 () Bool)

(assert (=> start!342642 e!2266746))

(declare-fun e!2266741 () Bool)

(assert (=> start!342642 e!2266741))

(declare-fun b!3660731 () Bool)

(declare-fun res!1486097 () Bool)

(declare-fun e!2266731 () Bool)

(assert (=> b!3660731 (=> res!1486097 e!2266731)))

(declare-fun getIndex!466 (List!38751 Rule!11396) Int)

(assert (=> b!3660731 (= res!1486097 (>= (getIndex!466 rules!3307 (rule!8610 (_1!22378 lt!1273386))) (getIndex!466 rules!3307 rule!403)))))

(declare-fun b!3660732 () Bool)

(declare-fun e!2266738 () Unit!55929)

(declare-fun Unit!55932 () Unit!55929)

(assert (=> b!3660732 (= e!2266738 Unit!55932)))

(declare-fun b!3660733 () Bool)

(declare-fun res!1486094 () Bool)

(declare-fun e!2266725 () Bool)

(assert (=> b!3660733 (=> res!1486094 e!2266725)))

(declare-fun suffix!1395 () List!38749)

(declare-fun isEmpty!22908 (List!38749) Bool)

(assert (=> b!3660733 (= res!1486094 (isEmpty!22908 suffix!1395))))

(declare-fun b!3660734 () Bool)

(declare-fun e!2266730 () Bool)

(declare-fun tp!1115158 () Bool)

(assert (=> b!3660734 (= e!2266740 (and e!2266730 tp!1115158))))

(declare-fun b!3660735 () Bool)

(declare-fun e!2266744 () Bool)

(assert (=> b!3660735 (= e!2266731 e!2266744)))

(declare-fun res!1486088 () Bool)

(assert (=> b!3660735 (=> res!1486088 e!2266744)))

(declare-fun isPrefix!3161 (List!38749 List!38749) Bool)

(assert (=> b!3660735 (= res!1486088 (not (isPrefix!3161 lt!1273373 lt!1273373)))))

(declare-fun getSuffix!1714 (List!38749 List!38749) List!38749)

(assert (=> b!3660735 (isEmpty!22908 (getSuffix!1714 lt!1273373 lt!1273373))))

(declare-fun lt!1273378 () Unit!55929)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!178 (List!38749) Unit!55929)

(assert (=> b!3660735 (= lt!1273378 (lemmaGetSuffixOnListWithItSelfIsEmpty!178 lt!1273373))))

(declare-fun b!3660736 () Bool)

(declare-fun res!1486099 () Bool)

(declare-fun e!2266714 () Bool)

(assert (=> b!3660736 (=> (not res!1486099) (not e!2266714))))

(assert (=> b!3660736 (= res!1486099 (= (rule!8610 token!511) rule!403))))

(declare-fun b!3660737 () Bool)

(declare-fun e!2266718 () Bool)

(declare-fun tp!1115148 () Bool)

(declare-fun e!2266723 () Bool)

(declare-fun inv!52090 (String!43474) Bool)

(declare-fun inv!52094 (TokenValueInjection!11484) Bool)

(assert (=> b!3660737 (= e!2266718 (and tp!1115148 (inv!52090 (tag!6576 (rule!8610 token!511))) (inv!52094 (transformation!5798 (rule!8610 token!511))) e!2266723))))

(declare-fun b!3660738 () Bool)

(declare-fun res!1486087 () Bool)

(declare-fun e!2266732 () Bool)

(assert (=> b!3660738 (=> res!1486087 e!2266732)))

(declare-fun sepAndNonSepRulesDisjointChars!1966 (List!38751 List!38751) Bool)

(assert (=> b!3660738 (= res!1486087 (not (sepAndNonSepRulesDisjointChars!1966 rules!3307 rules!3307)))))

(declare-fun tp!1115154 () Bool)

(declare-fun b!3660739 () Bool)

(declare-fun inv!21 (TokenValue!6028) Bool)

(assert (=> b!3660739 (= e!2266713 (and (inv!21 (value!185703 token!511)) e!2266718 tp!1115154))))

(declare-fun b!3660740 () Bool)

(declare-fun e!2266737 () Bool)

(declare-fun lt!1273368 () Rule!11396)

(assert (=> b!3660740 (= e!2266737 (= (rule!8610 (_1!22378 lt!1273386)) lt!1273368))))

(declare-fun b!3660741 () Bool)

(declare-fun e!2266734 () Bool)

(assert (=> b!3660741 (= e!2266734 e!2266714)))

(declare-fun res!1486098 () Bool)

(assert (=> b!3660741 (=> (not res!1486098) (not e!2266714))))

(declare-fun lt!1273385 () tuple2!38488)

(assert (=> b!3660741 (= res!1486098 (= (_1!22378 lt!1273385) token!511))))

(declare-datatypes ((Option!8224 0))(
  ( (None!8223) (Some!8223 (v!38111 tuple2!38488)) )
))
(declare-fun lt!1273363 () Option!8224)

(declare-fun get!12733 (Option!8224) tuple2!38488)

(assert (=> b!3660741 (= lt!1273385 (get!12733 lt!1273363))))

(declare-fun b!3660742 () Bool)

(declare-fun e!2266712 () Bool)

(declare-fun e!2266716 () Bool)

(assert (=> b!3660742 (= e!2266712 e!2266716)))

(declare-fun res!1486095 () Bool)

(assert (=> b!3660742 (=> res!1486095 e!2266716)))

(declare-fun lt!1273379 () Option!8224)

(declare-fun lt!1273403 () List!38749)

(assert (=> b!3660742 (= res!1486095 (or (not (= lt!1273403 (_2!22378 lt!1273386))) (not (= lt!1273379 (Some!8223 (tuple2!38489 (_1!22378 lt!1273386) lt!1273403))))))))

(assert (=> b!3660742 (= (_2!22378 lt!1273386) lt!1273403)))

(declare-fun lt!1273364 () Unit!55929)

(declare-fun lemmaSamePrefixThenSameSuffix!1488 (List!38749 List!38749 List!38749 List!38749 List!38749) Unit!55929)

(assert (=> b!3660742 (= lt!1273364 (lemmaSamePrefixThenSameSuffix!1488 lt!1273388 (_2!22378 lt!1273386) lt!1273388 lt!1273403 lt!1273408))))

(assert (=> b!3660742 (= lt!1273403 (getSuffix!1714 lt!1273408 lt!1273388))))

(declare-fun lt!1273387 () Int)

(declare-fun lt!1273391 () TokenValue!6028)

(assert (=> b!3660742 (= lt!1273379 (Some!8223 (tuple2!38489 (Token!10963 lt!1273391 (rule!8610 (_1!22378 lt!1273386)) lt!1273387 lt!1273388) (_2!22378 lt!1273386))))))

(declare-fun maxPrefixOneRule!2059 (LexerInterface!5387 Rule!11396 List!38749) Option!8224)

(assert (=> b!3660742 (= lt!1273379 (maxPrefixOneRule!2059 thiss!23823 (rule!8610 (_1!22378 lt!1273386)) lt!1273408))))

(declare-fun size!29512 (List!38749) Int)

(assert (=> b!3660742 (= lt!1273387 (size!29512 lt!1273388))))

(declare-fun apply!9300 (TokenValueInjection!11484 BalanceConc!23236) TokenValue!6028)

(declare-fun seqFromList!4347 (List!38749) BalanceConc!23236)

(assert (=> b!3660742 (= lt!1273391 (apply!9300 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))) (seqFromList!4347 lt!1273388)))))

(declare-fun lt!1273384 () Unit!55929)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1115 (LexerInterface!5387 List!38751 List!38749 List!38749 List!38749 Rule!11396) Unit!55929)

(assert (=> b!3660742 (= lt!1273384 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1115 thiss!23823 rules!3307 lt!1273388 lt!1273408 (_2!22378 lt!1273386) (rule!8610 (_1!22378 lt!1273386))))))

(declare-fun b!3660743 () Bool)

(declare-fun e!2266726 () Unit!55929)

(assert (=> b!3660743 (= e!2266726 e!2266738)))

(declare-fun c!632707 () Bool)

(assert (=> b!3660743 (= c!632707 (not (isSeparator!5798 (rule!8610 (_1!22378 lt!1273386)))))))

(declare-fun b!3660744 () Bool)

(declare-fun contains!7661 (List!38751 Rule!11396) Bool)

(assert (=> b!3660744 (= e!2266744 (contains!7661 rules!3307 (rule!8610 (_1!22378 lt!1273386))))))

(declare-fun b!3660745 () Bool)

(declare-fun res!1486096 () Bool)

(assert (=> b!3660745 (=> res!1486096 e!2266732)))

(declare-fun anOtherTypeRule!33 () Rule!11396)

(declare-fun lt!1273376 () C!21300)

(declare-fun contains!7662 (List!38749 C!21300) Bool)

(assert (=> b!3660745 (= res!1486096 (not (contains!7662 (usedCharacters!1010 (regex!5798 anOtherTypeRule!33)) lt!1273376)))))

(declare-fun b!3660746 () Bool)

(declare-fun e!2266742 () Unit!55929)

(assert (=> b!3660746 (= e!2266726 e!2266742)))

(declare-fun c!632711 () Bool)

(assert (=> b!3660746 (= c!632711 (isSeparator!5798 (rule!8610 (_1!22378 lt!1273386))))))

(declare-fun b!3660747 () Bool)

(declare-fun e!2266715 () Unit!55929)

(declare-fun Unit!55933 () Unit!55929)

(assert (=> b!3660747 (= e!2266715 Unit!55933)))

(declare-fun lt!1273398 () Unit!55929)

(declare-fun lt!1273399 () C!21300)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!746 (Regex!10557 List!38749 C!21300) Unit!55929)

(assert (=> b!3660747 (= lt!1273398 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!746 (regex!5798 rule!403) lt!1273373 lt!1273399))))

(assert (=> b!3660747 false))

(declare-fun b!3660748 () Bool)

(assert (=> b!3660748 false))

(declare-fun lt!1273397 () Unit!55929)

(declare-fun call!264797 () Unit!55929)

(assert (=> b!3660748 (= lt!1273397 call!264797)))

(declare-fun call!264799 () Bool)

(assert (=> b!3660748 (not call!264799)))

(declare-fun lt!1273366 () Unit!55929)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!326 (LexerInterface!5387 List!38751 List!38751 Rule!11396 Rule!11396 C!21300) Unit!55929)

(assert (=> b!3660748 (= lt!1273366 (lemmaSepRuleNotContainsCharContainedInANonSepRule!326 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8610 (_1!22378 lt!1273386)) lt!1273399))))

(declare-fun Unit!55934 () Unit!55929)

(assert (=> b!3660748 (= e!2266742 Unit!55934)))

(declare-fun b!3660749 () Bool)

(declare-fun e!2266720 () Unit!55929)

(declare-fun e!2266717 () Unit!55929)

(assert (=> b!3660749 (= e!2266720 e!2266717)))

(declare-fun lt!1273383 () Unit!55929)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!106 (List!38749 List!38749 List!38749 List!38749) Unit!55929)

(assert (=> b!3660749 (= lt!1273383 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!106 lt!1273373 suffix!1395 lt!1273388 lt!1273408))))

(assert (=> b!3660749 (contains!7662 lt!1273388 lt!1273376)))

(declare-fun c!632709 () Bool)

(assert (=> b!3660749 (= c!632709 (isSeparator!5798 rule!403))))

(declare-fun e!2266724 () Bool)

(declare-fun b!3660750 () Bool)

(declare-fun tp!1115152 () Bool)

(assert (=> b!3660750 (= e!2266741 (and tp!1115152 (inv!52090 (tag!6576 anOtherTypeRule!33)) (inv!52094 (transformation!5798 anOtherTypeRule!33)) e!2266724))))

(declare-fun b!3660751 () Bool)

(assert (=> b!3660751 (= e!2266729 e!2266734)))

(declare-fun res!1486086 () Bool)

(assert (=> b!3660751 (=> (not res!1486086) (not e!2266734))))

(declare-fun isDefined!6456 (Option!8224) Bool)

(assert (=> b!3660751 (= res!1486086 (isDefined!6456 lt!1273363))))

(declare-fun maxPrefix!2921 (LexerInterface!5387 List!38751 List!38749) Option!8224)

(assert (=> b!3660751 (= lt!1273363 (maxPrefix!2921 thiss!23823 rules!3307 lt!1273373))))

(declare-fun lt!1273367 () BalanceConc!23236)

(declare-fun list!14328 (BalanceConc!23236) List!38749)

(assert (=> b!3660751 (= lt!1273373 (list!14328 lt!1273367))))

(declare-fun charsOf!3812 (Token!10962) BalanceConc!23236)

(assert (=> b!3660751 (= lt!1273367 (charsOf!3812 token!511))))

(declare-fun b!3660752 () Bool)

(declare-fun res!1486104 () Bool)

(assert (=> b!3660752 (=> (not res!1486104) (not e!2266729))))

(assert (=> b!3660752 (= res!1486104 (not (= (isSeparator!5798 anOtherTypeRule!33) (isSeparator!5798 rule!403))))))

(declare-fun b!3660753 () Bool)

(declare-fun res!1486107 () Bool)

(assert (=> b!3660753 (=> (not res!1486107) (not e!2266729))))

(declare-fun rulesInvariant!4784 (LexerInterface!5387 List!38751) Bool)

(assert (=> b!3660753 (= res!1486107 (rulesInvariant!4784 thiss!23823 rules!3307))))

(declare-fun bm!264791 () Bool)

(assert (=> bm!264791 (= call!264797 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!746 (regex!5798 (rule!8610 (_1!22378 lt!1273386))) lt!1273388 lt!1273399))))

(declare-fun b!3660754 () Bool)

(declare-fun e!2266728 () Bool)

(assert (=> b!3660754 (= e!2266728 e!2266737)))

(declare-fun res!1486085 () Bool)

(assert (=> b!3660754 (=> (not res!1486085) (not e!2266737))))

(declare-fun matchR!5126 (Regex!10557 List!38749) Bool)

(assert (=> b!3660754 (= res!1486085 (matchR!5126 (regex!5798 lt!1273368) (list!14328 (charsOf!3812 (_1!22378 lt!1273386)))))))

(declare-datatypes ((Option!8225 0))(
  ( (None!8224) (Some!8224 (v!38112 Rule!11396)) )
))
(declare-fun lt!1273405 () Option!8225)

(declare-fun get!12734 (Option!8225) Rule!11396)

(assert (=> b!3660754 (= lt!1273368 (get!12734 lt!1273405))))

(declare-fun b!3660755 () Bool)

(declare-fun Unit!55935 () Unit!55929)

(assert (=> b!3660755 (= e!2266715 Unit!55935)))

(declare-fun b!3660756 () Bool)

(assert (=> b!3660756 (= e!2266714 (not e!2266725))))

(declare-fun res!1486100 () Bool)

(assert (=> b!3660756 (=> res!1486100 e!2266725)))

(assert (=> b!3660756 (= res!1486100 (not (matchR!5126 (regex!5798 rule!403) lt!1273373)))))

(declare-fun ruleValid!2062 (LexerInterface!5387 Rule!11396) Bool)

(assert (=> b!3660756 (ruleValid!2062 thiss!23823 rule!403)))

(declare-fun lt!1273401 () Unit!55929)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1216 (LexerInterface!5387 Rule!11396 List!38751) Unit!55929)

(assert (=> b!3660756 (= lt!1273401 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1216 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3660757 () Bool)

(assert (=> b!3660757 false))

(declare-fun lt!1273389 () Unit!55929)

(declare-fun call!264798 () Unit!55929)

(assert (=> b!3660757 (= lt!1273389 call!264798)))

(declare-fun call!264796 () Bool)

(assert (=> b!3660757 (not call!264796)))

(declare-fun lt!1273362 () Unit!55929)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!444 (LexerInterface!5387 List!38751 List!38751 Rule!11396 Rule!11396 C!21300) Unit!55929)

(assert (=> b!3660757 (= lt!1273362 (lemmaNonSepRuleNotContainsCharContainedInASepRule!444 thiss!23823 rules!3307 rules!3307 (rule!8610 (_1!22378 lt!1273386)) anOtherTypeRule!33 lt!1273376))))

(declare-fun Unit!55936 () Unit!55929)

(assert (=> b!3660757 (= e!2266717 Unit!55936)))

(declare-fun b!3660758 () Bool)

(declare-fun res!1486105 () Bool)

(assert (=> b!3660758 (=> (not res!1486105) (not e!2266714))))

(assert (=> b!3660758 (= res!1486105 (isEmpty!22908 (_2!22378 lt!1273385)))))

(declare-fun b!3660759 () Bool)

(declare-fun Unit!55937 () Unit!55929)

(assert (=> b!3660759 (= e!2266727 Unit!55937)))

(declare-fun bm!264792 () Bool)

(assert (=> bm!264792 (= call!264796 (contains!7662 call!264800 lt!1273376))))

(declare-fun b!3660760 () Bool)

(declare-fun res!1486090 () Bool)

(assert (=> b!3660760 (=> (not res!1486090) (not e!2266729))))

(declare-fun isEmpty!22909 (List!38751) Bool)

(assert (=> b!3660760 (= res!1486090 (not (isEmpty!22909 rules!3307)))))

(assert (=> b!3660761 (= e!2266724 (and tp!1115144 tp!1115149))))

(declare-fun b!3660762 () Bool)

(declare-fun e!2266733 () Bool)

(assert (=> b!3660762 (= e!2266732 e!2266733)))

(declare-fun res!1486101 () Bool)

(assert (=> b!3660762 (=> res!1486101 e!2266733)))

(assert (=> b!3660762 (= res!1486101 (not (isPrefix!3161 lt!1273388 lt!1273408)))))

(declare-fun ++!9614 (List!38749 List!38749) List!38749)

(assert (=> b!3660762 (isPrefix!3161 lt!1273388 (++!9614 lt!1273388 (_2!22378 lt!1273386)))))

(declare-fun lt!1273396 () Unit!55929)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2080 (List!38749 List!38749) Unit!55929)

(assert (=> b!3660762 (= lt!1273396 (lemmaConcatTwoListThenFirstIsPrefix!2080 lt!1273388 (_2!22378 lt!1273386)))))

(declare-fun lt!1273381 () BalanceConc!23236)

(assert (=> b!3660762 (= lt!1273388 (list!14328 lt!1273381))))

(assert (=> b!3660762 (= lt!1273381 (charsOf!3812 (_1!22378 lt!1273386)))))

(assert (=> b!3660762 e!2266728))

(declare-fun res!1486089 () Bool)

(assert (=> b!3660762 (=> (not res!1486089) (not e!2266728))))

(declare-fun isDefined!6457 (Option!8225) Bool)

(assert (=> b!3660762 (= res!1486089 (isDefined!6457 lt!1273405))))

(declare-fun getRuleFromTag!1402 (LexerInterface!5387 List!38751 String!43474) Option!8225)

(assert (=> b!3660762 (= lt!1273405 (getRuleFromTag!1402 thiss!23823 rules!3307 (tag!6576 (rule!8610 (_1!22378 lt!1273386)))))))

(declare-fun lt!1273370 () Unit!55929)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1402 (LexerInterface!5387 List!38751 List!38749 Token!10962) Unit!55929)

(assert (=> b!3660762 (= lt!1273370 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1402 thiss!23823 rules!3307 lt!1273408 (_1!22378 lt!1273386)))))

(declare-fun lt!1273407 () Option!8224)

(assert (=> b!3660762 (= lt!1273386 (get!12733 lt!1273407))))

(declare-fun lt!1273369 () Unit!55929)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1065 (LexerInterface!5387 List!38751 List!38749 List!38749) Unit!55929)

(assert (=> b!3660762 (= lt!1273369 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1065 thiss!23823 rules!3307 lt!1273373 suffix!1395))))

(assert (=> b!3660762 (= lt!1273407 (maxPrefix!2921 thiss!23823 rules!3307 lt!1273408))))

(assert (=> b!3660762 (isPrefix!3161 lt!1273373 lt!1273408)))

(declare-fun lt!1273406 () Unit!55929)

(assert (=> b!3660762 (= lt!1273406 (lemmaConcatTwoListThenFirstIsPrefix!2080 lt!1273373 suffix!1395))))

(assert (=> b!3660762 (= lt!1273408 (++!9614 lt!1273373 suffix!1395))))

(declare-fun b!3660763 () Bool)

(assert (=> b!3660763 (= e!2266716 e!2266731)))

(declare-fun res!1486103 () Bool)

(assert (=> b!3660763 (=> res!1486103 e!2266731)))

(assert (=> b!3660763 (= res!1486103 (= (rule!8610 (_1!22378 lt!1273386)) (rule!8610 token!511)))))

(assert (=> b!3660763 (= lt!1273388 lt!1273373)))

(declare-fun lt!1273374 () Unit!55929)

(declare-fun lemmaIsPrefixSameLengthThenSameList!623 (List!38749 List!38749 List!38749) Unit!55929)

(assert (=> b!3660763 (= lt!1273374 (lemmaIsPrefixSameLengthThenSameList!623 lt!1273388 lt!1273373 lt!1273408))))

(declare-fun lt!1273402 () Unit!55929)

(assert (=> b!3660763 (= lt!1273402 e!2266727)))

(declare-fun c!632713 () Bool)

(declare-fun lt!1273395 () Int)

(declare-fun lt!1273375 () Int)

(assert (=> b!3660763 (= c!632713 (< lt!1273395 lt!1273375))))

(declare-fun lt!1273390 () Unit!55929)

(assert (=> b!3660763 (= lt!1273390 e!2266720)))

(declare-fun c!632710 () Bool)

(assert (=> b!3660763 (= c!632710 (> lt!1273395 lt!1273375))))

(declare-fun size!29513 (BalanceConc!23236) Int)

(assert (=> b!3660763 (= lt!1273375 (size!29513 lt!1273367))))

(declare-fun lt!1273361 () Unit!55929)

(assert (=> b!3660763 (= lt!1273361 e!2266726)))

(declare-fun c!632708 () Bool)

(assert (=> b!3660763 (= c!632708 (isSeparator!5798 rule!403))))

(declare-fun lt!1273394 () Unit!55929)

(assert (=> b!3660763 (= lt!1273394 e!2266715)))

(declare-fun c!632712 () Bool)

(declare-fun lt!1273380 () List!38749)

(assert (=> b!3660763 (= c!632712 (not (contains!7662 lt!1273380 lt!1273399)))))

(declare-fun head!7826 (List!38749) C!21300)

(assert (=> b!3660763 (= lt!1273399 (head!7826 lt!1273388))))

(declare-fun b!3660764 () Bool)

(declare-fun res!1486092 () Bool)

(assert (=> b!3660764 (=> (not res!1486092) (not e!2266729))))

(assert (=> b!3660764 (= res!1486092 (contains!7661 rules!3307 rule!403))))

(declare-fun b!3660765 () Bool)

(declare-fun tp_is_empty!18197 () Bool)

(declare-fun tp!1115146 () Bool)

(assert (=> b!3660765 (= e!2266736 (and tp_is_empty!18197 tp!1115146))))

(declare-fun b!3660766 () Bool)

(assert (=> b!3660766 false))

(declare-fun lt!1273382 () Unit!55929)

(assert (=> b!3660766 (= lt!1273382 call!264798)))

(assert (=> b!3660766 (not call!264796)))

(declare-fun lt!1273371 () Unit!55929)

(assert (=> b!3660766 (= lt!1273371 (lemmaSepRuleNotContainsCharContainedInANonSepRule!326 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8610 (_1!22378 lt!1273386)) lt!1273376))))

(declare-fun Unit!55938 () Unit!55929)

(assert (=> b!3660766 (= e!2266717 Unit!55938)))

(declare-fun b!3660767 () Bool)

(declare-fun res!1486102 () Bool)

(assert (=> b!3660767 (=> res!1486102 e!2266733)))

(assert (=> b!3660767 (= res!1486102 (not (matchR!5126 (regex!5798 (rule!8610 (_1!22378 lt!1273386))) lt!1273388)))))

(declare-fun bm!264793 () Bool)

(declare-fun call!264795 () List!38749)

(assert (=> bm!264793 (= call!264795 (usedCharacters!1010 (regex!5798 (rule!8610 (_1!22378 lt!1273386)))))))

(declare-fun b!3660768 () Bool)

(declare-fun Unit!55939 () Unit!55929)

(assert (=> b!3660768 (= e!2266742 Unit!55939)))

(declare-fun b!3660769 () Bool)

(assert (=> b!3660769 (= e!2266733 e!2266712)))

(declare-fun res!1486093 () Bool)

(assert (=> b!3660769 (=> res!1486093 e!2266712)))

(declare-fun lt!1273372 () TokenValue!6028)

(assert (=> b!3660769 (= res!1486093 (not (= lt!1273407 (Some!8223 (tuple2!38489 (Token!10963 lt!1273372 (rule!8610 (_1!22378 lt!1273386)) lt!1273395 lt!1273388) (_2!22378 lt!1273386))))))))

(assert (=> b!3660769 (= lt!1273395 (size!29513 lt!1273381))))

(assert (=> b!3660769 (= lt!1273372 (apply!9300 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))) lt!1273381))))

(declare-fun lt!1273404 () Unit!55929)

(declare-fun lemmaCharactersSize!843 (Token!10962) Unit!55929)

(assert (=> b!3660769 (= lt!1273404 (lemmaCharactersSize!843 (_1!22378 lt!1273386)))))

(declare-fun lt!1273377 () Unit!55929)

(declare-fun lemmaEqSameImage!981 (TokenValueInjection!11484 BalanceConc!23236 BalanceConc!23236) Unit!55929)

(assert (=> b!3660769 (= lt!1273377 (lemmaEqSameImage!981 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))) lt!1273381 (seqFromList!4347 (originalCharacters!6512 (_1!22378 lt!1273386)))))))

(declare-fun lt!1273400 () Unit!55929)

(declare-fun lemmaSemiInverse!1547 (TokenValueInjection!11484 BalanceConc!23236) Unit!55929)

(assert (=> b!3660769 (= lt!1273400 (lemmaSemiInverse!1547 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))) lt!1273381))))

(declare-fun e!2266743 () Bool)

(assert (=> b!3660770 (= e!2266743 (and tp!1115153 tp!1115151))))

(declare-fun bm!264794 () Bool)

(assert (=> bm!264794 (= call!264798 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!746 (regex!5798 (rule!8610 (_1!22378 lt!1273386))) lt!1273388 lt!1273376))))

(declare-fun b!3660771 () Bool)

(assert (=> b!3660771 false))

(declare-fun lt!1273365 () Unit!55929)

(assert (=> b!3660771 (= lt!1273365 call!264797)))

(assert (=> b!3660771 (not call!264799)))

(declare-fun lt!1273392 () Unit!55929)

(assert (=> b!3660771 (= lt!1273392 (lemmaNonSepRuleNotContainsCharContainedInASepRule!444 thiss!23823 rules!3307 rules!3307 (rule!8610 (_1!22378 lt!1273386)) rule!403 lt!1273399))))

(declare-fun Unit!55940 () Unit!55929)

(assert (=> b!3660771 (= e!2266738 Unit!55940)))

(declare-fun bm!264795 () Bool)

(assert (=> bm!264795 (= call!264799 (contains!7662 call!264795 lt!1273399))))

(declare-fun b!3660772 () Bool)

(assert (=> b!3660772 (= e!2266725 e!2266732)))

(declare-fun res!1486106 () Bool)

(assert (=> b!3660772 (=> res!1486106 e!2266732)))

(assert (=> b!3660772 (= res!1486106 (contains!7662 lt!1273380 lt!1273376))))

(assert (=> b!3660772 (= lt!1273376 (head!7826 suffix!1395))))

(assert (=> b!3660772 (= lt!1273380 (usedCharacters!1010 (regex!5798 rule!403)))))

(declare-fun b!3660773 () Bool)

(declare-fun Unit!55941 () Unit!55929)

(assert (=> b!3660773 (= e!2266720 Unit!55941)))

(declare-fun b!3660774 () Bool)

(declare-fun res!1486084 () Bool)

(assert (=> b!3660774 (=> (not res!1486084) (not e!2266729))))

(assert (=> b!3660774 (= res!1486084 (contains!7661 rules!3307 anOtherTypeRule!33))))

(declare-fun tp!1115150 () Bool)

(declare-fun b!3660775 () Bool)

(assert (=> b!3660775 (= e!2266730 (and tp!1115150 (inv!52090 (tag!6576 (h!44047 rules!3307))) (inv!52094 (transformation!5798 (h!44047 rules!3307))) e!2266743))))

(declare-fun e!2266721 () Bool)

(declare-fun b!3660776 () Bool)

(declare-fun tp!1115156 () Bool)

(assert (=> b!3660776 (= e!2266746 (and tp!1115156 (inv!52090 (tag!6576 rule!403)) (inv!52094 (transformation!5798 rule!403)) e!2266721))))

(assert (=> b!3660777 (= e!2266723 (and tp!1115155 tp!1115147))))

(assert (=> b!3660778 (= e!2266721 (and tp!1115145 tp!1115157))))

(assert (= (and start!342642 res!1486091) b!3660760))

(assert (= (and b!3660760 res!1486090) b!3660753))

(assert (= (and b!3660753 res!1486107) b!3660764))

(assert (= (and b!3660764 res!1486092) b!3660774))

(assert (= (and b!3660774 res!1486084) b!3660752))

(assert (= (and b!3660752 res!1486104) b!3660751))

(assert (= (and b!3660751 res!1486086) b!3660741))

(assert (= (and b!3660741 res!1486098) b!3660758))

(assert (= (and b!3660758 res!1486105) b!3660736))

(assert (= (and b!3660736 res!1486099) b!3660756))

(assert (= (and b!3660756 (not res!1486100)) b!3660733))

(assert (= (and b!3660733 (not res!1486094)) b!3660772))

(assert (= (and b!3660772 (not res!1486106)) b!3660745))

(assert (= (and b!3660745 (not res!1486096)) b!3660738))

(assert (= (and b!3660738 (not res!1486087)) b!3660762))

(assert (= (and b!3660762 res!1486089) b!3660754))

(assert (= (and b!3660754 res!1486085) b!3660740))

(assert (= (and b!3660762 (not res!1486101)) b!3660767))

(assert (= (and b!3660767 (not res!1486102)) b!3660769))

(assert (= (and b!3660769 (not res!1486093)) b!3660742))

(assert (= (and b!3660742 (not res!1486095)) b!3660763))

(assert (= (and b!3660763 c!632712) b!3660747))

(assert (= (and b!3660763 (not c!632712)) b!3660755))

(assert (= (and b!3660763 c!632708) b!3660743))

(assert (= (and b!3660763 (not c!632708)) b!3660746))

(assert (= (and b!3660743 c!632707) b!3660771))

(assert (= (and b!3660743 (not c!632707)) b!3660732))

(assert (= (and b!3660746 c!632711) b!3660748))

(assert (= (and b!3660746 (not c!632711)) b!3660768))

(assert (= (or b!3660771 b!3660748) bm!264791))

(assert (= (or b!3660771 b!3660748) bm!264793))

(assert (= (or b!3660771 b!3660748) bm!264795))

(assert (= (and b!3660763 c!632710) b!3660749))

(assert (= (and b!3660763 (not c!632710)) b!3660773))

(assert (= (and b!3660749 c!632709) b!3660766))

(assert (= (and b!3660749 (not c!632709)) b!3660757))

(assert (= (or b!3660766 b!3660757) bm!264794))

(assert (= (or b!3660766 b!3660757) bm!264790))

(assert (= (or b!3660766 b!3660757) bm!264792))

(assert (= (and b!3660763 c!632713) b!3660730))

(assert (= (and b!3660763 (not c!632713)) b!3660759))

(assert (= (and b!3660763 (not res!1486103)) b!3660731))

(assert (= (and b!3660731 (not res!1486097)) b!3660735))

(assert (= (and b!3660735 (not res!1486088)) b!3660744))

(assert (= b!3660775 b!3660770))

(assert (= b!3660734 b!3660775))

(assert (= (and start!342642 ((_ is Cons!38627) rules!3307)) b!3660734))

(assert (= (and start!342642 ((_ is Cons!38625) suffix!1395)) b!3660765))

(assert (= b!3660737 b!3660777))

(assert (= b!3660739 b!3660737))

(assert (= start!342642 b!3660739))

(assert (= b!3660776 b!3660778))

(assert (= start!342642 b!3660776))

(assert (= b!3660750 b!3660761))

(assert (= start!342642 b!3660750))

(declare-fun m!4167141 () Bool)

(assert (=> b!3660747 m!4167141))

(declare-fun m!4167143 () Bool)

(assert (=> bm!264792 m!4167143))

(declare-fun m!4167145 () Bool)

(assert (=> b!3660766 m!4167145))

(declare-fun m!4167147 () Bool)

(assert (=> b!3660733 m!4167147))

(declare-fun m!4167149 () Bool)

(assert (=> b!3660748 m!4167149))

(declare-fun m!4167151 () Bool)

(assert (=> b!3660775 m!4167151))

(declare-fun m!4167153 () Bool)

(assert (=> b!3660775 m!4167153))

(declare-fun m!4167155 () Bool)

(assert (=> b!3660735 m!4167155))

(declare-fun m!4167157 () Bool)

(assert (=> b!3660735 m!4167157))

(assert (=> b!3660735 m!4167157))

(declare-fun m!4167159 () Bool)

(assert (=> b!3660735 m!4167159))

(declare-fun m!4167161 () Bool)

(assert (=> b!3660735 m!4167161))

(declare-fun m!4167163 () Bool)

(assert (=> b!3660731 m!4167163))

(declare-fun m!4167165 () Bool)

(assert (=> b!3660731 m!4167165))

(declare-fun m!4167167 () Bool)

(assert (=> b!3660744 m!4167167))

(declare-fun m!4167169 () Bool)

(assert (=> b!3660749 m!4167169))

(declare-fun m!4167171 () Bool)

(assert (=> b!3660749 m!4167171))

(declare-fun m!4167173 () Bool)

(assert (=> b!3660776 m!4167173))

(declare-fun m!4167175 () Bool)

(assert (=> b!3660776 m!4167175))

(declare-fun m!4167177 () Bool)

(assert (=> b!3660750 m!4167177))

(declare-fun m!4167179 () Bool)

(assert (=> b!3660750 m!4167179))

(declare-fun m!4167181 () Bool)

(assert (=> b!3660730 m!4167181))

(declare-fun m!4167183 () Bool)

(assert (=> b!3660745 m!4167183))

(assert (=> b!3660745 m!4167183))

(declare-fun m!4167185 () Bool)

(assert (=> b!3660745 m!4167185))

(declare-fun m!4167187 () Bool)

(assert (=> bm!264795 m!4167187))

(declare-fun m!4167189 () Bool)

(assert (=> bm!264791 m!4167189))

(declare-fun m!4167191 () Bool)

(assert (=> b!3660737 m!4167191))

(declare-fun m!4167193 () Bool)

(assert (=> b!3660737 m!4167193))

(declare-fun m!4167195 () Bool)

(assert (=> b!3660762 m!4167195))

(declare-fun m!4167197 () Bool)

(assert (=> b!3660762 m!4167197))

(declare-fun m!4167199 () Bool)

(assert (=> b!3660762 m!4167199))

(declare-fun m!4167201 () Bool)

(assert (=> b!3660762 m!4167201))

(declare-fun m!4167203 () Bool)

(assert (=> b!3660762 m!4167203))

(declare-fun m!4167205 () Bool)

(assert (=> b!3660762 m!4167205))

(declare-fun m!4167207 () Bool)

(assert (=> b!3660762 m!4167207))

(declare-fun m!4167209 () Bool)

(assert (=> b!3660762 m!4167209))

(declare-fun m!4167211 () Bool)

(assert (=> b!3660762 m!4167211))

(declare-fun m!4167213 () Bool)

(assert (=> b!3660762 m!4167213))

(declare-fun m!4167215 () Bool)

(assert (=> b!3660762 m!4167215))

(declare-fun m!4167217 () Bool)

(assert (=> b!3660762 m!4167217))

(assert (=> b!3660762 m!4167201))

(declare-fun m!4167219 () Bool)

(assert (=> b!3660762 m!4167219))

(declare-fun m!4167221 () Bool)

(assert (=> b!3660762 m!4167221))

(declare-fun m!4167223 () Bool)

(assert (=> b!3660762 m!4167223))

(declare-fun m!4167225 () Bool)

(assert (=> b!3660771 m!4167225))

(declare-fun m!4167227 () Bool)

(assert (=> b!3660739 m!4167227))

(declare-fun m!4167229 () Bool)

(assert (=> b!3660751 m!4167229))

(declare-fun m!4167231 () Bool)

(assert (=> b!3660751 m!4167231))

(declare-fun m!4167233 () Bool)

(assert (=> b!3660751 m!4167233))

(declare-fun m!4167235 () Bool)

(assert (=> b!3660751 m!4167235))

(declare-fun m!4167237 () Bool)

(assert (=> bm!264794 m!4167237))

(declare-fun m!4167239 () Bool)

(assert (=> b!3660757 m!4167239))

(declare-fun m!4167241 () Bool)

(assert (=> b!3660758 m!4167241))

(declare-fun m!4167243 () Bool)

(assert (=> b!3660756 m!4167243))

(declare-fun m!4167245 () Bool)

(assert (=> b!3660756 m!4167245))

(declare-fun m!4167247 () Bool)

(assert (=> b!3660756 m!4167247))

(declare-fun m!4167249 () Bool)

(assert (=> start!342642 m!4167249))

(declare-fun m!4167251 () Bool)

(assert (=> b!3660774 m!4167251))

(declare-fun m!4167253 () Bool)

(assert (=> b!3660772 m!4167253))

(declare-fun m!4167255 () Bool)

(assert (=> b!3660772 m!4167255))

(declare-fun m!4167257 () Bool)

(assert (=> b!3660772 m!4167257))

(declare-fun m!4167259 () Bool)

(assert (=> b!3660742 m!4167259))

(declare-fun m!4167261 () Bool)

(assert (=> b!3660742 m!4167261))

(declare-fun m!4167263 () Bool)

(assert (=> b!3660742 m!4167263))

(declare-fun m!4167265 () Bool)

(assert (=> b!3660742 m!4167265))

(declare-fun m!4167267 () Bool)

(assert (=> b!3660742 m!4167267))

(assert (=> b!3660742 m!4167263))

(declare-fun m!4167269 () Bool)

(assert (=> b!3660742 m!4167269))

(declare-fun m!4167271 () Bool)

(assert (=> b!3660742 m!4167271))

(declare-fun m!4167273 () Bool)

(assert (=> b!3660769 m!4167273))

(declare-fun m!4167275 () Bool)

(assert (=> b!3660769 m!4167275))

(declare-fun m!4167277 () Bool)

(assert (=> b!3660769 m!4167277))

(declare-fun m!4167279 () Bool)

(assert (=> b!3660769 m!4167279))

(declare-fun m!4167281 () Bool)

(assert (=> b!3660769 m!4167281))

(assert (=> b!3660769 m!4167279))

(declare-fun m!4167283 () Bool)

(assert (=> b!3660769 m!4167283))

(declare-fun m!4167285 () Bool)

(assert (=> b!3660753 m!4167285))

(declare-fun m!4167287 () Bool)

(assert (=> bm!264790 m!4167287))

(declare-fun m!4167289 () Bool)

(assert (=> b!3660741 m!4167289))

(declare-fun m!4167291 () Bool)

(assert (=> b!3660764 m!4167291))

(declare-fun m!4167293 () Bool)

(assert (=> b!3660760 m!4167293))

(assert (=> b!3660754 m!4167213))

(assert (=> b!3660754 m!4167213))

(declare-fun m!4167295 () Bool)

(assert (=> b!3660754 m!4167295))

(assert (=> b!3660754 m!4167295))

(declare-fun m!4167297 () Bool)

(assert (=> b!3660754 m!4167297))

(declare-fun m!4167299 () Bool)

(assert (=> b!3660754 m!4167299))

(declare-fun m!4167301 () Bool)

(assert (=> b!3660767 m!4167301))

(declare-fun m!4167303 () Bool)

(assert (=> b!3660738 m!4167303))

(assert (=> bm!264793 m!4167287))

(declare-fun m!4167305 () Bool)

(assert (=> b!3660763 m!4167305))

(declare-fun m!4167307 () Bool)

(assert (=> b!3660763 m!4167307))

(declare-fun m!4167309 () Bool)

(assert (=> b!3660763 m!4167309))

(declare-fun m!4167311 () Bool)

(assert (=> b!3660763 m!4167311))

(check-sat (not b!3660730) (not b!3660758) (not b_next!97321) (not b!3660735) (not b_next!97327) (not b!3660775) (not b_next!97323) (not b!3660764) (not b!3660763) b_and!271661 b_and!271673 (not b!3660750) (not bm!264794) b_and!271667 (not b!3660771) (not b!3660766) (not b!3660738) (not b_next!97313) (not b!3660737) (not b!3660756) b_and!271663 (not b!3660762) tp_is_empty!18197 b_and!271669 (not b!3660757) (not start!342642) (not b!3660776) (not b!3660769) (not bm!264790) (not b!3660742) (not b!3660745) (not b!3660774) (not b_next!97317) b_and!271659 b_and!271671 (not b!3660754) (not b!3660741) (not b!3660747) (not b_next!97325) (not b!3660760) (not b!3660772) (not b!3660739) (not bm!264792) (not b_next!97319) (not b!3660749) (not b!3660731) (not b!3660734) (not bm!264793) (not b!3660765) (not b_next!97315) (not b!3660751) (not b!3660753) (not bm!264795) b_and!271665 (not b!3660767) (not b!3660748) (not b!3660733) (not bm!264791) (not b!3660744))
(check-sat (not b_next!97323) b_and!271667 (not b_next!97313) b_and!271663 b_and!271669 b_and!271671 (not b_next!97325) (not b_next!97319) (not b_next!97321) (not b_next!97327) (not b_next!97315) b_and!271665 b_and!271661 b_and!271673 (not b_next!97317) b_and!271659)
(get-model)

(declare-fun d!1074876 () Bool)

(declare-fun lt!1273411 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5582 (List!38751) (InoxSet Rule!11396))

(assert (=> d!1074876 (= lt!1273411 (select (content!5582 rules!3307) (rule!8610 (_1!22378 lt!1273386))))))

(declare-fun e!2266752 () Bool)

(assert (=> d!1074876 (= lt!1273411 e!2266752)))

(declare-fun res!1486122 () Bool)

(assert (=> d!1074876 (=> (not res!1486122) (not e!2266752))))

(assert (=> d!1074876 (= res!1486122 ((_ is Cons!38627) rules!3307))))

(assert (=> d!1074876 (= (contains!7661 rules!3307 (rule!8610 (_1!22378 lt!1273386))) lt!1273411)))

(declare-fun b!3660783 () Bool)

(declare-fun e!2266751 () Bool)

(assert (=> b!3660783 (= e!2266752 e!2266751)))

(declare-fun res!1486123 () Bool)

(assert (=> b!3660783 (=> res!1486123 e!2266751)))

(assert (=> b!3660783 (= res!1486123 (= (h!44047 rules!3307) (rule!8610 (_1!22378 lt!1273386))))))

(declare-fun b!3660784 () Bool)

(assert (=> b!3660784 (= e!2266751 (contains!7661 (t!298494 rules!3307) (rule!8610 (_1!22378 lt!1273386))))))

(assert (= (and d!1074876 res!1486122) b!3660783))

(assert (= (and b!3660783 (not res!1486123)) b!3660784))

(declare-fun m!4167313 () Bool)

(assert (=> d!1074876 m!4167313))

(declare-fun m!4167315 () Bool)

(assert (=> d!1074876 m!4167315))

(declare-fun m!4167317 () Bool)

(assert (=> b!3660784 m!4167317))

(assert (=> b!3660744 d!1074876))

(declare-fun d!1074878 () Bool)

(assert (=> d!1074878 (= lt!1273388 lt!1273373)))

(declare-fun lt!1273414 () Unit!55929)

(declare-fun choose!21660 (List!38749 List!38749 List!38749) Unit!55929)

(assert (=> d!1074878 (= lt!1273414 (choose!21660 lt!1273388 lt!1273373 lt!1273408))))

(assert (=> d!1074878 (isPrefix!3161 lt!1273388 lt!1273408)))

(assert (=> d!1074878 (= (lemmaIsPrefixSameLengthThenSameList!623 lt!1273388 lt!1273373 lt!1273408) lt!1273414)))

(declare-fun bs!572600 () Bool)

(assert (= bs!572600 d!1074878))

(declare-fun m!4167319 () Bool)

(assert (=> bs!572600 m!4167319))

(assert (=> bs!572600 m!4167209))

(assert (=> b!3660763 d!1074878))

(declare-fun d!1074880 () Bool)

(declare-fun lt!1273417 () Int)

(assert (=> d!1074880 (= lt!1273417 (size!29512 (list!14328 lt!1273367)))))

(declare-fun size!29515 (Conc!11811) Int)

(assert (=> d!1074880 (= lt!1273417 (size!29515 (c!632715 lt!1273367)))))

(assert (=> d!1074880 (= (size!29513 lt!1273367) lt!1273417)))

(declare-fun bs!572601 () Bool)

(assert (= bs!572601 d!1074880))

(assert (=> bs!572601 m!4167233))

(assert (=> bs!572601 m!4167233))

(declare-fun m!4167321 () Bool)

(assert (=> bs!572601 m!4167321))

(declare-fun m!4167323 () Bool)

(assert (=> bs!572601 m!4167323))

(assert (=> b!3660763 d!1074880))

(declare-fun d!1074884 () Bool)

(declare-fun lt!1273423 () Bool)

(declare-fun content!5583 (List!38749) (InoxSet C!21300))

(assert (=> d!1074884 (= lt!1273423 (select (content!5583 lt!1273380) lt!1273399))))

(declare-fun e!2266770 () Bool)

(assert (=> d!1074884 (= lt!1273423 e!2266770)))

(declare-fun res!1486141 () Bool)

(assert (=> d!1074884 (=> (not res!1486141) (not e!2266770))))

(assert (=> d!1074884 (= res!1486141 ((_ is Cons!38625) lt!1273380))))

(assert (=> d!1074884 (= (contains!7662 lt!1273380 lt!1273399) lt!1273423)))

(declare-fun b!3660806 () Bool)

(declare-fun e!2266769 () Bool)

(assert (=> b!3660806 (= e!2266770 e!2266769)))

(declare-fun res!1486140 () Bool)

(assert (=> b!3660806 (=> res!1486140 e!2266769)))

(assert (=> b!3660806 (= res!1486140 (= (h!44045 lt!1273380) lt!1273399))))

(declare-fun b!3660807 () Bool)

(assert (=> b!3660807 (= e!2266769 (contains!7662 (t!298492 lt!1273380) lt!1273399))))

(assert (= (and d!1074884 res!1486141) b!3660806))

(assert (= (and b!3660806 (not res!1486140)) b!3660807))

(declare-fun m!4167343 () Bool)

(assert (=> d!1074884 m!4167343))

(declare-fun m!4167345 () Bool)

(assert (=> d!1074884 m!4167345))

(declare-fun m!4167347 () Bool)

(assert (=> b!3660807 m!4167347))

(assert (=> b!3660763 d!1074884))

(declare-fun d!1074890 () Bool)

(assert (=> d!1074890 (= (head!7826 lt!1273388) (h!44045 lt!1273388))))

(assert (=> b!3660763 d!1074890))

(declare-fun d!1074892 () Bool)

(declare-fun res!1486158 () Bool)

(declare-fun e!2266784 () Bool)

(assert (=> d!1074892 (=> (not res!1486158) (not e!2266784))))

(assert (=> d!1074892 (= res!1486158 (not (isEmpty!22908 (originalCharacters!6512 token!511))))))

(assert (=> d!1074892 (= (inv!52093 token!511) e!2266784)))

(declare-fun b!3660828 () Bool)

(declare-fun res!1486159 () Bool)

(assert (=> b!3660828 (=> (not res!1486159) (not e!2266784))))

(declare-fun dynLambda!16871 (Int TokenValue!6028) BalanceConc!23236)

(assert (=> b!3660828 (= res!1486159 (= (originalCharacters!6512 token!511) (list!14328 (dynLambda!16871 (toChars!7949 (transformation!5798 (rule!8610 token!511))) (value!185703 token!511)))))))

(declare-fun b!3660829 () Bool)

(assert (=> b!3660829 (= e!2266784 (= (size!29511 token!511) (size!29512 (originalCharacters!6512 token!511))))))

(assert (= (and d!1074892 res!1486158) b!3660828))

(assert (= (and b!3660828 res!1486159) b!3660829))

(declare-fun b_lambda!108577 () Bool)

(assert (=> (not b_lambda!108577) (not b!3660828)))

(declare-fun tb!211509 () Bool)

(declare-fun t!298504 () Bool)

(assert (=> (and b!3660761 (= (toChars!7949 (transformation!5798 anOtherTypeRule!33)) (toChars!7949 (transformation!5798 (rule!8610 token!511)))) t!298504) tb!211509))

(declare-fun b!3660836 () Bool)

(declare-fun e!2266788 () Bool)

(declare-fun tp!1115164 () Bool)

(declare-fun inv!52097 (Conc!11811) Bool)

(assert (=> b!3660836 (= e!2266788 (and (inv!52097 (c!632715 (dynLambda!16871 (toChars!7949 (transformation!5798 (rule!8610 token!511))) (value!185703 token!511)))) tp!1115164))))

(declare-fun result!257512 () Bool)

(declare-fun inv!52098 (BalanceConc!23236) Bool)

(assert (=> tb!211509 (= result!257512 (and (inv!52098 (dynLambda!16871 (toChars!7949 (transformation!5798 (rule!8610 token!511))) (value!185703 token!511))) e!2266788))))

(assert (= tb!211509 b!3660836))

(declare-fun m!4167363 () Bool)

(assert (=> b!3660836 m!4167363))

(declare-fun m!4167365 () Bool)

(assert (=> tb!211509 m!4167365))

(assert (=> b!3660828 t!298504))

(declare-fun b_and!271683 () Bool)

(assert (= b_and!271661 (and (=> t!298504 result!257512) b_and!271683)))

(declare-fun t!298506 () Bool)

(declare-fun tb!211511 () Bool)

(assert (=> (and b!3660770 (= (toChars!7949 (transformation!5798 (h!44047 rules!3307))) (toChars!7949 (transformation!5798 (rule!8610 token!511)))) t!298506) tb!211511))

(declare-fun result!257516 () Bool)

(assert (= result!257516 result!257512))

(assert (=> b!3660828 t!298506))

(declare-fun b_and!271685 () Bool)

(assert (= b_and!271665 (and (=> t!298506 result!257516) b_and!271685)))

(declare-fun t!298508 () Bool)

(declare-fun tb!211513 () Bool)

(assert (=> (and b!3660777 (= (toChars!7949 (transformation!5798 (rule!8610 token!511))) (toChars!7949 (transformation!5798 (rule!8610 token!511)))) t!298508) tb!211513))

(declare-fun result!257518 () Bool)

(assert (= result!257518 result!257512))

(assert (=> b!3660828 t!298508))

(declare-fun b_and!271687 () Bool)

(assert (= b_and!271669 (and (=> t!298508 result!257518) b_and!271687)))

(declare-fun tb!211515 () Bool)

(declare-fun t!298510 () Bool)

(assert (=> (and b!3660778 (= (toChars!7949 (transformation!5798 rule!403)) (toChars!7949 (transformation!5798 (rule!8610 token!511)))) t!298510) tb!211515))

(declare-fun result!257520 () Bool)

(assert (= result!257520 result!257512))

(assert (=> b!3660828 t!298510))

(declare-fun b_and!271689 () Bool)

(assert (= b_and!271673 (and (=> t!298510 result!257520) b_and!271689)))

(declare-fun m!4167367 () Bool)

(assert (=> d!1074892 m!4167367))

(declare-fun m!4167371 () Bool)

(assert (=> b!3660828 m!4167371))

(assert (=> b!3660828 m!4167371))

(declare-fun m!4167373 () Bool)

(assert (=> b!3660828 m!4167373))

(declare-fun m!4167375 () Bool)

(assert (=> b!3660829 m!4167375))

(assert (=> start!342642 d!1074892))

(declare-fun d!1074904 () Bool)

(declare-fun lt!1273436 () Bool)

(assert (=> d!1074904 (= lt!1273436 (select (content!5583 (usedCharacters!1010 (regex!5798 anOtherTypeRule!33))) lt!1273376))))

(declare-fun e!2266790 () Bool)

(assert (=> d!1074904 (= lt!1273436 e!2266790)))

(declare-fun res!1486161 () Bool)

(assert (=> d!1074904 (=> (not res!1486161) (not e!2266790))))

(assert (=> d!1074904 (= res!1486161 ((_ is Cons!38625) (usedCharacters!1010 (regex!5798 anOtherTypeRule!33))))))

(assert (=> d!1074904 (= (contains!7662 (usedCharacters!1010 (regex!5798 anOtherTypeRule!33)) lt!1273376) lt!1273436)))

(declare-fun b!3660837 () Bool)

(declare-fun e!2266789 () Bool)

(assert (=> b!3660837 (= e!2266790 e!2266789)))

(declare-fun res!1486160 () Bool)

(assert (=> b!3660837 (=> res!1486160 e!2266789)))

(assert (=> b!3660837 (= res!1486160 (= (h!44045 (usedCharacters!1010 (regex!5798 anOtherTypeRule!33))) lt!1273376))))

(declare-fun b!3660838 () Bool)

(assert (=> b!3660838 (= e!2266789 (contains!7662 (t!298492 (usedCharacters!1010 (regex!5798 anOtherTypeRule!33))) lt!1273376))))

(assert (= (and d!1074904 res!1486161) b!3660837))

(assert (= (and b!3660837 (not res!1486160)) b!3660838))

(assert (=> d!1074904 m!4167183))

(declare-fun m!4167377 () Bool)

(assert (=> d!1074904 m!4167377))

(declare-fun m!4167379 () Bool)

(assert (=> d!1074904 m!4167379))

(declare-fun m!4167381 () Bool)

(assert (=> b!3660838 m!4167381))

(assert (=> b!3660745 d!1074904))

(declare-fun b!3660861 () Bool)

(declare-fun e!2266805 () List!38749)

(declare-fun e!2266806 () List!38749)

(assert (=> b!3660861 (= e!2266805 e!2266806)))

(declare-fun c!632730 () Bool)

(assert (=> b!3660861 (= c!632730 ((_ is ElementMatch!10557) (regex!5798 anOtherTypeRule!33)))))

(declare-fun b!3660862 () Bool)

(assert (=> b!3660862 (= e!2266806 (Cons!38625 (c!632714 (regex!5798 anOtherTypeRule!33)) Nil!38625))))

(declare-fun b!3660864 () Bool)

(declare-fun e!2266808 () List!38749)

(declare-fun call!264812 () List!38749)

(assert (=> b!3660864 (= e!2266808 call!264812)))

(declare-fun b!3660865 () Bool)

(assert (=> b!3660865 (= e!2266808 call!264812)))

(declare-fun call!264809 () List!38749)

(declare-fun c!632732 () Bool)

(declare-fun c!632731 () Bool)

(declare-fun bm!264804 () Bool)

(assert (=> bm!264804 (= call!264809 (usedCharacters!1010 (ite c!632731 (reg!10886 (regex!5798 anOtherTypeRule!33)) (ite c!632732 (regTwo!21627 (regex!5798 anOtherTypeRule!33)) (regOne!21626 (regex!5798 anOtherTypeRule!33))))))))

(declare-fun bm!264805 () Bool)

(declare-fun call!264810 () List!38749)

(declare-fun call!264811 () List!38749)

(assert (=> bm!264805 (= call!264812 (++!9614 (ite c!632732 call!264810 call!264811) (ite c!632732 call!264811 call!264810)))))

(declare-fun b!3660866 () Bool)

(declare-fun e!2266807 () List!38749)

(assert (=> b!3660866 (= e!2266807 call!264809)))

(declare-fun b!3660867 () Bool)

(assert (=> b!3660867 (= e!2266807 e!2266808)))

(assert (=> b!3660867 (= c!632732 ((_ is Union!10557) (regex!5798 anOtherTypeRule!33)))))

(declare-fun bm!264806 () Bool)

(assert (=> bm!264806 (= call!264810 (usedCharacters!1010 (ite c!632732 (regOne!21627 (regex!5798 anOtherTypeRule!33)) (regTwo!21626 (regex!5798 anOtherTypeRule!33)))))))

(declare-fun b!3660868 () Bool)

(assert (=> b!3660868 (= c!632731 ((_ is Star!10557) (regex!5798 anOtherTypeRule!33)))))

(assert (=> b!3660868 (= e!2266806 e!2266807)))

(declare-fun bm!264807 () Bool)

(assert (=> bm!264807 (= call!264811 call!264809)))

(declare-fun d!1074906 () Bool)

(declare-fun c!632733 () Bool)

(assert (=> d!1074906 (= c!632733 (or ((_ is EmptyExpr!10557) (regex!5798 anOtherTypeRule!33)) ((_ is EmptyLang!10557) (regex!5798 anOtherTypeRule!33))))))

(assert (=> d!1074906 (= (usedCharacters!1010 (regex!5798 anOtherTypeRule!33)) e!2266805)))

(declare-fun b!3660863 () Bool)

(assert (=> b!3660863 (= e!2266805 Nil!38625)))

(assert (= (and d!1074906 c!632733) b!3660863))

(assert (= (and d!1074906 (not c!632733)) b!3660861))

(assert (= (and b!3660861 c!632730) b!3660862))

(assert (= (and b!3660861 (not c!632730)) b!3660868))

(assert (= (and b!3660868 c!632731) b!3660866))

(assert (= (and b!3660868 (not c!632731)) b!3660867))

(assert (= (and b!3660867 c!632732) b!3660864))

(assert (= (and b!3660867 (not c!632732)) b!3660865))

(assert (= (or b!3660864 b!3660865) bm!264806))

(assert (= (or b!3660864 b!3660865) bm!264807))

(assert (= (or b!3660864 b!3660865) bm!264805))

(assert (= (or b!3660866 bm!264807) bm!264804))

(declare-fun m!4167401 () Bool)

(assert (=> bm!264804 m!4167401))

(declare-fun m!4167403 () Bool)

(assert (=> bm!264805 m!4167403))

(declare-fun m!4167405 () Bool)

(assert (=> bm!264806 m!4167405))

(assert (=> b!3660745 d!1074906))

(declare-fun d!1074920 () Bool)

(declare-fun lt!1273451 () Bool)

(assert (=> d!1074920 (= lt!1273451 (select (content!5582 rules!3307) rule!403))))

(declare-fun e!2266810 () Bool)

(assert (=> d!1074920 (= lt!1273451 e!2266810)))

(declare-fun res!1486168 () Bool)

(assert (=> d!1074920 (=> (not res!1486168) (not e!2266810))))

(assert (=> d!1074920 (= res!1486168 ((_ is Cons!38627) rules!3307))))

(assert (=> d!1074920 (= (contains!7661 rules!3307 rule!403) lt!1273451)))

(declare-fun b!3660869 () Bool)

(declare-fun e!2266809 () Bool)

(assert (=> b!3660869 (= e!2266810 e!2266809)))

(declare-fun res!1486169 () Bool)

(assert (=> b!3660869 (=> res!1486169 e!2266809)))

(assert (=> b!3660869 (= res!1486169 (= (h!44047 rules!3307) rule!403))))

(declare-fun b!3660870 () Bool)

(assert (=> b!3660870 (= e!2266809 (contains!7661 (t!298494 rules!3307) rule!403))))

(assert (= (and d!1074920 res!1486168) b!3660869))

(assert (= (and b!3660869 (not res!1486169)) b!3660870))

(assert (=> d!1074920 m!4167313))

(declare-fun m!4167407 () Bool)

(assert (=> d!1074920 m!4167407))

(declare-fun m!4167409 () Bool)

(assert (=> b!3660870 m!4167409))

(assert (=> b!3660764 d!1074920))

(declare-fun d!1074922 () Bool)

(assert (=> d!1074922 (not (contains!7662 (usedCharacters!1010 (regex!5798 (rule!8610 (_1!22378 lt!1273386)))) lt!1273376))))

(declare-fun lt!1273454 () Unit!55929)

(declare-fun choose!21662 (LexerInterface!5387 List!38751 List!38751 Rule!11396 Rule!11396 C!21300) Unit!55929)

(assert (=> d!1074922 (= lt!1273454 (choose!21662 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8610 (_1!22378 lt!1273386)) lt!1273376))))

(assert (=> d!1074922 (rulesInvariant!4784 thiss!23823 rules!3307)))

(assert (=> d!1074922 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!326 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8610 (_1!22378 lt!1273386)) lt!1273376) lt!1273454)))

(declare-fun bs!572607 () Bool)

(assert (= bs!572607 d!1074922))

(assert (=> bs!572607 m!4167287))

(assert (=> bs!572607 m!4167287))

(declare-fun m!4167411 () Bool)

(assert (=> bs!572607 m!4167411))

(declare-fun m!4167413 () Bool)

(assert (=> bs!572607 m!4167413))

(assert (=> bs!572607 m!4167285))

(assert (=> b!3660766 d!1074922))

(declare-fun d!1074924 () Bool)

(assert (=> d!1074924 (not (contains!7662 (usedCharacters!1010 (regex!5798 (rule!8610 (_1!22378 lt!1273386)))) lt!1273399))))

(declare-fun lt!1273455 () Unit!55929)

(assert (=> d!1074924 (= lt!1273455 (choose!21662 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8610 (_1!22378 lt!1273386)) lt!1273399))))

(assert (=> d!1074924 (rulesInvariant!4784 thiss!23823 rules!3307)))

(assert (=> d!1074924 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!326 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8610 (_1!22378 lt!1273386)) lt!1273399) lt!1273455)))

(declare-fun bs!572608 () Bool)

(assert (= bs!572608 d!1074924))

(assert (=> bs!572608 m!4167287))

(assert (=> bs!572608 m!4167287))

(declare-fun m!4167415 () Bool)

(assert (=> bs!572608 m!4167415))

(declare-fun m!4167417 () Bool)

(assert (=> bs!572608 m!4167417))

(assert (=> bs!572608 m!4167285))

(assert (=> b!3660748 d!1074924))

(declare-fun bm!264810 () Bool)

(declare-fun call!264815 () Bool)

(assert (=> bm!264810 (= call!264815 (isEmpty!22908 lt!1273388))))

(declare-fun b!3660899 () Bool)

(declare-fun res!1486193 () Bool)

(declare-fun e!2266831 () Bool)

(assert (=> b!3660899 (=> res!1486193 e!2266831)))

(assert (=> b!3660899 (= res!1486193 (not ((_ is ElementMatch!10557) (regex!5798 (rule!8610 (_1!22378 lt!1273386))))))))

(declare-fun e!2266828 () Bool)

(assert (=> b!3660899 (= e!2266828 e!2266831)))

(declare-fun b!3660900 () Bool)

(declare-fun e!2266826 () Bool)

(declare-fun e!2266825 () Bool)

(assert (=> b!3660900 (= e!2266826 e!2266825)))

(declare-fun res!1486187 () Bool)

(assert (=> b!3660900 (=> res!1486187 e!2266825)))

(assert (=> b!3660900 (= res!1486187 call!264815)))

(declare-fun b!3660901 () Bool)

(declare-fun lt!1273458 () Bool)

(assert (=> b!3660901 (= e!2266828 (not lt!1273458))))

(declare-fun d!1074926 () Bool)

(declare-fun e!2266829 () Bool)

(assert (=> d!1074926 e!2266829))

(declare-fun c!632743 () Bool)

(assert (=> d!1074926 (= c!632743 ((_ is EmptyExpr!10557) (regex!5798 (rule!8610 (_1!22378 lt!1273386)))))))

(declare-fun e!2266830 () Bool)

(assert (=> d!1074926 (= lt!1273458 e!2266830)))

(declare-fun c!632742 () Bool)

(assert (=> d!1074926 (= c!632742 (isEmpty!22908 lt!1273388))))

(declare-fun validRegex!4833 (Regex!10557) Bool)

(assert (=> d!1074926 (validRegex!4833 (regex!5798 (rule!8610 (_1!22378 lt!1273386))))))

(assert (=> d!1074926 (= (matchR!5126 (regex!5798 (rule!8610 (_1!22378 lt!1273386))) lt!1273388) lt!1273458)))

(declare-fun b!3660902 () Bool)

(declare-fun nullable!3670 (Regex!10557) Bool)

(assert (=> b!3660902 (= e!2266830 (nullable!3670 (regex!5798 (rule!8610 (_1!22378 lt!1273386)))))))

(declare-fun b!3660903 () Bool)

(declare-fun e!2266827 () Bool)

(assert (=> b!3660903 (= e!2266827 (= (head!7826 lt!1273388) (c!632714 (regex!5798 (rule!8610 (_1!22378 lt!1273386))))))))

(declare-fun b!3660904 () Bool)

(assert (=> b!3660904 (= e!2266829 e!2266828)))

(declare-fun c!632741 () Bool)

(assert (=> b!3660904 (= c!632741 ((_ is EmptyLang!10557) (regex!5798 (rule!8610 (_1!22378 lt!1273386)))))))

(declare-fun b!3660905 () Bool)

(declare-fun res!1486188 () Bool)

(assert (=> b!3660905 (=> res!1486188 e!2266831)))

(assert (=> b!3660905 (= res!1486188 e!2266827)))

(declare-fun res!1486191 () Bool)

(assert (=> b!3660905 (=> (not res!1486191) (not e!2266827))))

(assert (=> b!3660905 (= res!1486191 lt!1273458)))

(declare-fun b!3660906 () Bool)

(assert (=> b!3660906 (= e!2266831 e!2266826)))

(declare-fun res!1486190 () Bool)

(assert (=> b!3660906 (=> (not res!1486190) (not e!2266826))))

(assert (=> b!3660906 (= res!1486190 (not lt!1273458))))

(declare-fun b!3660907 () Bool)

(assert (=> b!3660907 (= e!2266829 (= lt!1273458 call!264815))))

(declare-fun b!3660908 () Bool)

(declare-fun derivativeStep!3219 (Regex!10557 C!21300) Regex!10557)

(declare-fun tail!5669 (List!38749) List!38749)

(assert (=> b!3660908 (= e!2266830 (matchR!5126 (derivativeStep!3219 (regex!5798 (rule!8610 (_1!22378 lt!1273386))) (head!7826 lt!1273388)) (tail!5669 lt!1273388)))))

(declare-fun b!3660909 () Bool)

(declare-fun res!1486192 () Bool)

(assert (=> b!3660909 (=> (not res!1486192) (not e!2266827))))

(assert (=> b!3660909 (= res!1486192 (isEmpty!22908 (tail!5669 lt!1273388)))))

(declare-fun b!3660910 () Bool)

(declare-fun res!1486186 () Bool)

(assert (=> b!3660910 (=> (not res!1486186) (not e!2266827))))

(assert (=> b!3660910 (= res!1486186 (not call!264815))))

(declare-fun b!3660911 () Bool)

(declare-fun res!1486189 () Bool)

(assert (=> b!3660911 (=> res!1486189 e!2266825)))

(assert (=> b!3660911 (= res!1486189 (not (isEmpty!22908 (tail!5669 lt!1273388))))))

(declare-fun b!3660912 () Bool)

(assert (=> b!3660912 (= e!2266825 (not (= (head!7826 lt!1273388) (c!632714 (regex!5798 (rule!8610 (_1!22378 lt!1273386)))))))))

(assert (= (and d!1074926 c!632742) b!3660902))

(assert (= (and d!1074926 (not c!632742)) b!3660908))

(assert (= (and d!1074926 c!632743) b!3660907))

(assert (= (and d!1074926 (not c!632743)) b!3660904))

(assert (= (and b!3660904 c!632741) b!3660901))

(assert (= (and b!3660904 (not c!632741)) b!3660899))

(assert (= (and b!3660899 (not res!1486193)) b!3660905))

(assert (= (and b!3660905 res!1486191) b!3660910))

(assert (= (and b!3660910 res!1486186) b!3660909))

(assert (= (and b!3660909 res!1486192) b!3660903))

(assert (= (and b!3660905 (not res!1486188)) b!3660906))

(assert (= (and b!3660906 res!1486190) b!3660900))

(assert (= (and b!3660900 (not res!1486187)) b!3660911))

(assert (= (and b!3660911 (not res!1486189)) b!3660912))

(assert (= (or b!3660907 b!3660900 b!3660910) bm!264810))

(declare-fun m!4167419 () Bool)

(assert (=> b!3660911 m!4167419))

(assert (=> b!3660911 m!4167419))

(declare-fun m!4167421 () Bool)

(assert (=> b!3660911 m!4167421))

(assert (=> b!3660903 m!4167311))

(declare-fun m!4167423 () Bool)

(assert (=> b!3660902 m!4167423))

(assert (=> b!3660912 m!4167311))

(declare-fun m!4167425 () Bool)

(assert (=> d!1074926 m!4167425))

(declare-fun m!4167427 () Bool)

(assert (=> d!1074926 m!4167427))

(assert (=> b!3660909 m!4167419))

(assert (=> b!3660909 m!4167419))

(assert (=> b!3660909 m!4167421))

(assert (=> b!3660908 m!4167311))

(assert (=> b!3660908 m!4167311))

(declare-fun m!4167429 () Bool)

(assert (=> b!3660908 m!4167429))

(assert (=> b!3660908 m!4167419))

(assert (=> b!3660908 m!4167429))

(assert (=> b!3660908 m!4167419))

(declare-fun m!4167431 () Bool)

(assert (=> b!3660908 m!4167431))

(assert (=> bm!264810 m!4167425))

(assert (=> b!3660767 d!1074926))

(declare-fun d!1074928 () Bool)

(assert (=> d!1074928 (not (matchR!5126 (regex!5798 rule!403) lt!1273373))))

(declare-fun lt!1273461 () Unit!55929)

(declare-fun choose!21663 (Regex!10557 List!38749 C!21300) Unit!55929)

(assert (=> d!1074928 (= lt!1273461 (choose!21663 (regex!5798 rule!403) lt!1273373 lt!1273399))))

(assert (=> d!1074928 (validRegex!4833 (regex!5798 rule!403))))

(assert (=> d!1074928 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!746 (regex!5798 rule!403) lt!1273373 lt!1273399) lt!1273461)))

(declare-fun bs!572609 () Bool)

(assert (= bs!572609 d!1074928))

(assert (=> bs!572609 m!4167243))

(declare-fun m!4167433 () Bool)

(assert (=> bs!572609 m!4167433))

(declare-fun m!4167435 () Bool)

(assert (=> bs!572609 m!4167435))

(assert (=> b!3660747 d!1074928))

(declare-fun d!1074930 () Bool)

(assert (=> d!1074930 (contains!7662 lt!1273388 (head!7826 suffix!1395))))

(declare-fun lt!1273464 () Unit!55929)

(declare-fun choose!21664 (List!38749 List!38749 List!38749 List!38749) Unit!55929)

(assert (=> d!1074930 (= lt!1273464 (choose!21664 lt!1273373 suffix!1395 lt!1273388 lt!1273408))))

(assert (=> d!1074930 (isPrefix!3161 lt!1273388 lt!1273408)))

(assert (=> d!1074930 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!106 lt!1273373 suffix!1395 lt!1273388 lt!1273408) lt!1273464)))

(declare-fun bs!572610 () Bool)

(assert (= bs!572610 d!1074930))

(assert (=> bs!572610 m!4167255))

(assert (=> bs!572610 m!4167255))

(declare-fun m!4167437 () Bool)

(assert (=> bs!572610 m!4167437))

(declare-fun m!4167439 () Bool)

(assert (=> bs!572610 m!4167439))

(assert (=> bs!572610 m!4167209))

(assert (=> b!3660749 d!1074930))

(declare-fun d!1074932 () Bool)

(declare-fun lt!1273465 () Bool)

(assert (=> d!1074932 (= lt!1273465 (select (content!5583 lt!1273388) lt!1273376))))

(declare-fun e!2266833 () Bool)

(assert (=> d!1074932 (= lt!1273465 e!2266833)))

(declare-fun res!1486195 () Bool)

(assert (=> d!1074932 (=> (not res!1486195) (not e!2266833))))

(assert (=> d!1074932 (= res!1486195 ((_ is Cons!38625) lt!1273388))))

(assert (=> d!1074932 (= (contains!7662 lt!1273388 lt!1273376) lt!1273465)))

(declare-fun b!3660913 () Bool)

(declare-fun e!2266832 () Bool)

(assert (=> b!3660913 (= e!2266833 e!2266832)))

(declare-fun res!1486194 () Bool)

(assert (=> b!3660913 (=> res!1486194 e!2266832)))

(assert (=> b!3660913 (= res!1486194 (= (h!44045 lt!1273388) lt!1273376))))

(declare-fun b!3660914 () Bool)

(assert (=> b!3660914 (= e!2266832 (contains!7662 (t!298492 lt!1273388) lt!1273376))))

(assert (= (and d!1074932 res!1486195) b!3660913))

(assert (= (and b!3660913 (not res!1486194)) b!3660914))

(declare-fun m!4167441 () Bool)

(assert (=> d!1074932 m!4167441))

(declare-fun m!4167443 () Bool)

(assert (=> d!1074932 m!4167443))

(declare-fun m!4167445 () Bool)

(assert (=> b!3660914 m!4167445))

(assert (=> b!3660749 d!1074932))

(declare-fun b!3660915 () Bool)

(declare-fun e!2266834 () List!38749)

(declare-fun e!2266835 () List!38749)

(assert (=> b!3660915 (= e!2266834 e!2266835)))

(declare-fun c!632745 () Bool)

(assert (=> b!3660915 (= c!632745 ((_ is ElementMatch!10557) (regex!5798 (rule!8610 (_1!22378 lt!1273386)))))))

(declare-fun b!3660916 () Bool)

(assert (=> b!3660916 (= e!2266835 (Cons!38625 (c!632714 (regex!5798 (rule!8610 (_1!22378 lt!1273386)))) Nil!38625))))

(declare-fun b!3660918 () Bool)

(declare-fun e!2266837 () List!38749)

(declare-fun call!264819 () List!38749)

(assert (=> b!3660918 (= e!2266837 call!264819)))

(declare-fun b!3660919 () Bool)

(assert (=> b!3660919 (= e!2266837 call!264819)))

(declare-fun call!264816 () List!38749)

(declare-fun c!632746 () Bool)

(declare-fun c!632747 () Bool)

(declare-fun bm!264811 () Bool)

(assert (=> bm!264811 (= call!264816 (usedCharacters!1010 (ite c!632746 (reg!10886 (regex!5798 (rule!8610 (_1!22378 lt!1273386)))) (ite c!632747 (regTwo!21627 (regex!5798 (rule!8610 (_1!22378 lt!1273386)))) (regOne!21626 (regex!5798 (rule!8610 (_1!22378 lt!1273386))))))))))

(declare-fun call!264818 () List!38749)

(declare-fun call!264817 () List!38749)

(declare-fun bm!264812 () Bool)

(assert (=> bm!264812 (= call!264819 (++!9614 (ite c!632747 call!264817 call!264818) (ite c!632747 call!264818 call!264817)))))

(declare-fun b!3660920 () Bool)

(declare-fun e!2266836 () List!38749)

(assert (=> b!3660920 (= e!2266836 call!264816)))

(declare-fun b!3660921 () Bool)

(assert (=> b!3660921 (= e!2266836 e!2266837)))

(assert (=> b!3660921 (= c!632747 ((_ is Union!10557) (regex!5798 (rule!8610 (_1!22378 lt!1273386)))))))

(declare-fun bm!264813 () Bool)

(assert (=> bm!264813 (= call!264817 (usedCharacters!1010 (ite c!632747 (regOne!21627 (regex!5798 (rule!8610 (_1!22378 lt!1273386)))) (regTwo!21626 (regex!5798 (rule!8610 (_1!22378 lt!1273386)))))))))

(declare-fun b!3660922 () Bool)

(assert (=> b!3660922 (= c!632746 ((_ is Star!10557) (regex!5798 (rule!8610 (_1!22378 lt!1273386)))))))

(assert (=> b!3660922 (= e!2266835 e!2266836)))

(declare-fun bm!264814 () Bool)

(assert (=> bm!264814 (= call!264818 call!264816)))

(declare-fun d!1074934 () Bool)

(declare-fun c!632748 () Bool)

(assert (=> d!1074934 (= c!632748 (or ((_ is EmptyExpr!10557) (regex!5798 (rule!8610 (_1!22378 lt!1273386)))) ((_ is EmptyLang!10557) (regex!5798 (rule!8610 (_1!22378 lt!1273386))))))))

(assert (=> d!1074934 (= (usedCharacters!1010 (regex!5798 (rule!8610 (_1!22378 lt!1273386)))) e!2266834)))

(declare-fun b!3660917 () Bool)

(assert (=> b!3660917 (= e!2266834 Nil!38625)))

(assert (= (and d!1074934 c!632748) b!3660917))

(assert (= (and d!1074934 (not c!632748)) b!3660915))

(assert (= (and b!3660915 c!632745) b!3660916))

(assert (= (and b!3660915 (not c!632745)) b!3660922))

(assert (= (and b!3660922 c!632746) b!3660920))

(assert (= (and b!3660922 (not c!632746)) b!3660921))

(assert (= (and b!3660921 c!632747) b!3660918))

(assert (= (and b!3660921 (not c!632747)) b!3660919))

(assert (= (or b!3660918 b!3660919) bm!264813))

(assert (= (or b!3660918 b!3660919) bm!264814))

(assert (= (or b!3660918 b!3660919) bm!264812))

(assert (= (or b!3660920 bm!264814) bm!264811))

(declare-fun m!4167447 () Bool)

(assert (=> bm!264811 m!4167447))

(declare-fun m!4167449 () Bool)

(assert (=> bm!264812 m!4167449))

(declare-fun m!4167451 () Bool)

(assert (=> bm!264813 m!4167451))

(assert (=> bm!264793 d!1074934))

(declare-fun d!1074936 () Bool)

(assert (=> d!1074936 (= (size!29511 (_1!22378 lt!1273386)) (size!29512 (originalCharacters!6512 (_1!22378 lt!1273386))))))

(declare-fun Unit!55943 () Unit!55929)

(assert (=> d!1074936 (= (lemmaCharactersSize!843 (_1!22378 lt!1273386)) Unit!55943)))

(declare-fun bs!572611 () Bool)

(assert (= bs!572611 d!1074936))

(declare-fun m!4167453 () Bool)

(assert (=> bs!572611 m!4167453))

(assert (=> b!3660769 d!1074936))

(declare-fun b!3661062 () Bool)

(declare-fun e!2266922 () Bool)

(assert (=> b!3661062 (= e!2266922 true)))

(declare-fun d!1074938 () Bool)

(assert (=> d!1074938 e!2266922))

(assert (= d!1074938 b!3661062))

(declare-fun order!21325 () Int)

(declare-fun lambda!124572 () Int)

(declare-fun order!21323 () Int)

(declare-fun dynLambda!16873 (Int Int) Int)

(declare-fun dynLambda!16874 (Int Int) Int)

(assert (=> b!3661062 (< (dynLambda!16873 order!21323 (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) (dynLambda!16874 order!21325 lambda!124572))))

(declare-fun order!21327 () Int)

(declare-fun dynLambda!16875 (Int Int) Int)

(assert (=> b!3661062 (< (dynLambda!16875 order!21327 (toChars!7949 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) (dynLambda!16874 order!21325 lambda!124572))))

(declare-fun dynLambda!16876 (Int BalanceConc!23236) TokenValue!6028)

(assert (=> d!1074938 (= (list!14328 (dynLambda!16871 (toChars!7949 (transformation!5798 (rule!8610 (_1!22378 lt!1273386)))) (dynLambda!16876 (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386)))) lt!1273381))) (list!14328 lt!1273381))))

(declare-fun lt!1273498 () Unit!55929)

(declare-fun ForallOf!728 (Int BalanceConc!23236) Unit!55929)

(assert (=> d!1074938 (= lt!1273498 (ForallOf!728 lambda!124572 lt!1273381))))

(assert (=> d!1074938 (= (lemmaSemiInverse!1547 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))) lt!1273381) lt!1273498)))

(declare-fun b_lambda!108591 () Bool)

(assert (=> (not b_lambda!108591) (not d!1074938)))

(declare-fun tb!211549 () Bool)

(declare-fun t!298544 () Bool)

(assert (=> (and b!3660761 (= (toChars!7949 (transformation!5798 anOtherTypeRule!33)) (toChars!7949 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) t!298544) tb!211549))

(declare-fun e!2266923 () Bool)

(declare-fun tp!1115167 () Bool)

(declare-fun b!3661063 () Bool)

(assert (=> b!3661063 (= e!2266923 (and (inv!52097 (c!632715 (dynLambda!16871 (toChars!7949 (transformation!5798 (rule!8610 (_1!22378 lt!1273386)))) (dynLambda!16876 (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386)))) lt!1273381)))) tp!1115167))))

(declare-fun result!257556 () Bool)

(assert (=> tb!211549 (= result!257556 (and (inv!52098 (dynLambda!16871 (toChars!7949 (transformation!5798 (rule!8610 (_1!22378 lt!1273386)))) (dynLambda!16876 (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386)))) lt!1273381))) e!2266923))))

(assert (= tb!211549 b!3661063))

(declare-fun m!4167587 () Bool)

(assert (=> b!3661063 m!4167587))

(declare-fun m!4167589 () Bool)

(assert (=> tb!211549 m!4167589))

(assert (=> d!1074938 t!298544))

(declare-fun b_and!271739 () Bool)

(assert (= b_and!271683 (and (=> t!298544 result!257556) b_and!271739)))

(declare-fun t!298546 () Bool)

(declare-fun tb!211551 () Bool)

(assert (=> (and b!3660770 (= (toChars!7949 (transformation!5798 (h!44047 rules!3307))) (toChars!7949 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) t!298546) tb!211551))

(declare-fun result!257558 () Bool)

(assert (= result!257558 result!257556))

(assert (=> d!1074938 t!298546))

(declare-fun b_and!271741 () Bool)

(assert (= b_and!271685 (and (=> t!298546 result!257558) b_and!271741)))

(declare-fun tb!211553 () Bool)

(declare-fun t!298548 () Bool)

(assert (=> (and b!3660777 (= (toChars!7949 (transformation!5798 (rule!8610 token!511))) (toChars!7949 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) t!298548) tb!211553))

(declare-fun result!257560 () Bool)

(assert (= result!257560 result!257556))

(assert (=> d!1074938 t!298548))

(declare-fun b_and!271743 () Bool)

(assert (= b_and!271687 (and (=> t!298548 result!257560) b_and!271743)))

(declare-fun t!298550 () Bool)

(declare-fun tb!211555 () Bool)

(assert (=> (and b!3660778 (= (toChars!7949 (transformation!5798 rule!403)) (toChars!7949 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) t!298550) tb!211555))

(declare-fun result!257562 () Bool)

(assert (= result!257562 result!257556))

(assert (=> d!1074938 t!298550))

(declare-fun b_and!271745 () Bool)

(assert (= b_and!271689 (and (=> t!298550 result!257562) b_and!271745)))

(declare-fun b_lambda!108593 () Bool)

(assert (=> (not b_lambda!108593) (not d!1074938)))

(declare-fun t!298552 () Bool)

(declare-fun tb!211557 () Bool)

(assert (=> (and b!3660761 (= (toValue!8090 (transformation!5798 anOtherTypeRule!33)) (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) t!298552) tb!211557))

(declare-fun result!257564 () Bool)

(assert (=> tb!211557 (= result!257564 (inv!21 (dynLambda!16876 (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386)))) lt!1273381)))))

(declare-fun m!4167593 () Bool)

(assert (=> tb!211557 m!4167593))

(assert (=> d!1074938 t!298552))

(declare-fun b_and!271747 () Bool)

(assert (= b_and!271659 (and (=> t!298552 result!257564) b_and!271747)))

(declare-fun tb!211559 () Bool)

(declare-fun t!298554 () Bool)

(assert (=> (and b!3660770 (= (toValue!8090 (transformation!5798 (h!44047 rules!3307))) (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) t!298554) tb!211559))

(declare-fun result!257568 () Bool)

(assert (= result!257568 result!257564))

(assert (=> d!1074938 t!298554))

(declare-fun b_and!271749 () Bool)

(assert (= b_and!271663 (and (=> t!298554 result!257568) b_and!271749)))

(declare-fun tb!211561 () Bool)

(declare-fun t!298556 () Bool)

(assert (=> (and b!3660777 (= (toValue!8090 (transformation!5798 (rule!8610 token!511))) (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) t!298556) tb!211561))

(declare-fun result!257570 () Bool)

(assert (= result!257570 result!257564))

(assert (=> d!1074938 t!298556))

(declare-fun b_and!271751 () Bool)

(assert (= b_and!271667 (and (=> t!298556 result!257570) b_and!271751)))

(declare-fun tb!211563 () Bool)

(declare-fun t!298558 () Bool)

(assert (=> (and b!3660778 (= (toValue!8090 (transformation!5798 rule!403)) (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) t!298558) tb!211563))

(declare-fun result!257572 () Bool)

(assert (= result!257572 result!257564))

(assert (=> d!1074938 t!298558))

(declare-fun b_and!271753 () Bool)

(assert (= b_and!271671 (and (=> t!298558 result!257572) b_and!271753)))

(declare-fun m!4167595 () Bool)

(assert (=> d!1074938 m!4167595))

(assert (=> d!1074938 m!4167215))

(declare-fun m!4167597 () Bool)

(assert (=> d!1074938 m!4167597))

(declare-fun m!4167599 () Bool)

(assert (=> d!1074938 m!4167599))

(declare-fun m!4167601 () Bool)

(assert (=> d!1074938 m!4167601))

(assert (=> d!1074938 m!4167597))

(assert (=> d!1074938 m!4167601))

(assert (=> b!3660769 d!1074938))

(declare-fun d!1074992 () Bool)

(declare-fun fromListB!2007 (List!38749) BalanceConc!23236)

(assert (=> d!1074992 (= (seqFromList!4347 (originalCharacters!6512 (_1!22378 lt!1273386))) (fromListB!2007 (originalCharacters!6512 (_1!22378 lt!1273386))))))

(declare-fun bs!572620 () Bool)

(assert (= bs!572620 d!1074992))

(declare-fun m!4167603 () Bool)

(assert (=> bs!572620 m!4167603))

(assert (=> b!3660769 d!1074992))

(declare-fun d!1074994 () Bool)

(assert (=> d!1074994 (= (apply!9300 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))) lt!1273381) (dynLambda!16876 (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386)))) lt!1273381))))

(declare-fun b_lambda!108595 () Bool)

(assert (=> (not b_lambda!108595) (not d!1074994)))

(assert (=> d!1074994 t!298552))

(declare-fun b_and!271755 () Bool)

(assert (= b_and!271747 (and (=> t!298552 result!257564) b_and!271755)))

(assert (=> d!1074994 t!298554))

(declare-fun b_and!271757 () Bool)

(assert (= b_and!271749 (and (=> t!298554 result!257568) b_and!271757)))

(assert (=> d!1074994 t!298556))

(declare-fun b_and!271759 () Bool)

(assert (= b_and!271751 (and (=> t!298556 result!257570) b_and!271759)))

(assert (=> d!1074994 t!298558))

(declare-fun b_and!271761 () Bool)

(assert (= b_and!271753 (and (=> t!298558 result!257572) b_and!271761)))

(assert (=> d!1074994 m!4167601))

(assert (=> b!3660769 d!1074994))

(declare-fun d!1074996 () Bool)

(declare-fun lt!1273500 () Int)

(assert (=> d!1074996 (= lt!1273500 (size!29512 (list!14328 lt!1273381)))))

(assert (=> d!1074996 (= lt!1273500 (size!29515 (c!632715 lt!1273381)))))

(assert (=> d!1074996 (= (size!29513 lt!1273381) lt!1273500)))

(declare-fun bs!572621 () Bool)

(assert (= bs!572621 d!1074996))

(assert (=> bs!572621 m!4167215))

(assert (=> bs!572621 m!4167215))

(declare-fun m!4167605 () Bool)

(assert (=> bs!572621 m!4167605))

(declare-fun m!4167607 () Bool)

(assert (=> bs!572621 m!4167607))

(assert (=> b!3660769 d!1074996))

(declare-fun b!3661094 () Bool)

(declare-fun e!2266945 () Bool)

(assert (=> b!3661094 (= e!2266945 true)))

(declare-fun d!1074998 () Bool)

(assert (=> d!1074998 e!2266945))

(assert (= d!1074998 b!3661094))

(declare-fun order!21329 () Int)

(declare-fun lambda!124575 () Int)

(declare-fun dynLambda!16877 (Int Int) Int)

(assert (=> b!3661094 (< (dynLambda!16873 order!21323 (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) (dynLambda!16877 order!21329 lambda!124575))))

(assert (=> b!3661094 (< (dynLambda!16875 order!21327 (toChars!7949 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) (dynLambda!16877 order!21329 lambda!124575))))

(assert (=> d!1074998 (= (dynLambda!16876 (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386)))) lt!1273381) (dynLambda!16876 (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386)))) (seqFromList!4347 (originalCharacters!6512 (_1!22378 lt!1273386)))))))

(declare-fun lt!1273512 () Unit!55929)

(declare-fun Forall2of!386 (Int BalanceConc!23236 BalanceConc!23236) Unit!55929)

(assert (=> d!1074998 (= lt!1273512 (Forall2of!386 lambda!124575 lt!1273381 (seqFromList!4347 (originalCharacters!6512 (_1!22378 lt!1273386)))))))

(assert (=> d!1074998 (= (list!14328 lt!1273381) (list!14328 (seqFromList!4347 (originalCharacters!6512 (_1!22378 lt!1273386)))))))

(assert (=> d!1074998 (= (lemmaEqSameImage!981 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))) lt!1273381 (seqFromList!4347 (originalCharacters!6512 (_1!22378 lt!1273386)))) lt!1273512)))

(declare-fun b_lambda!108597 () Bool)

(assert (=> (not b_lambda!108597) (not d!1074998)))

(assert (=> d!1074998 t!298552))

(declare-fun b_and!271763 () Bool)

(assert (= b_and!271755 (and (=> t!298552 result!257564) b_and!271763)))

(assert (=> d!1074998 t!298554))

(declare-fun b_and!271765 () Bool)

(assert (= b_and!271757 (and (=> t!298554 result!257568) b_and!271765)))

(assert (=> d!1074998 t!298556))

(declare-fun b_and!271767 () Bool)

(assert (= b_and!271759 (and (=> t!298556 result!257570) b_and!271767)))

(assert (=> d!1074998 t!298558))

(declare-fun b_and!271769 () Bool)

(assert (= b_and!271761 (and (=> t!298558 result!257572) b_and!271769)))

(declare-fun b_lambda!108599 () Bool)

(assert (=> (not b_lambda!108599) (not d!1074998)))

(declare-fun t!298560 () Bool)

(declare-fun tb!211565 () Bool)

(assert (=> (and b!3660761 (= (toValue!8090 (transformation!5798 anOtherTypeRule!33)) (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) t!298560) tb!211565))

(declare-fun result!257574 () Bool)

(assert (=> tb!211565 (= result!257574 (inv!21 (dynLambda!16876 (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386)))) (seqFromList!4347 (originalCharacters!6512 (_1!22378 lt!1273386))))))))

(declare-fun m!4167633 () Bool)

(assert (=> tb!211565 m!4167633))

(assert (=> d!1074998 t!298560))

(declare-fun b_and!271771 () Bool)

(assert (= b_and!271763 (and (=> t!298560 result!257574) b_and!271771)))

(declare-fun t!298562 () Bool)

(declare-fun tb!211567 () Bool)

(assert (=> (and b!3660770 (= (toValue!8090 (transformation!5798 (h!44047 rules!3307))) (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) t!298562) tb!211567))

(declare-fun result!257576 () Bool)

(assert (= result!257576 result!257574))

(assert (=> d!1074998 t!298562))

(declare-fun b_and!271773 () Bool)

(assert (= b_and!271765 (and (=> t!298562 result!257576) b_and!271773)))

(declare-fun tb!211569 () Bool)

(declare-fun t!298564 () Bool)

(assert (=> (and b!3660777 (= (toValue!8090 (transformation!5798 (rule!8610 token!511))) (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) t!298564) tb!211569))

(declare-fun result!257578 () Bool)

(assert (= result!257578 result!257574))

(assert (=> d!1074998 t!298564))

(declare-fun b_and!271775 () Bool)

(assert (= b_and!271767 (and (=> t!298564 result!257578) b_and!271775)))

(declare-fun tb!211571 () Bool)

(declare-fun t!298566 () Bool)

(assert (=> (and b!3660778 (= (toValue!8090 (transformation!5798 rule!403)) (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) t!298566) tb!211571))

(declare-fun result!257580 () Bool)

(assert (= result!257580 result!257574))

(assert (=> d!1074998 t!298566))

(declare-fun b_and!271777 () Bool)

(assert (= b_and!271769 (and (=> t!298566 result!257580) b_and!271777)))

(assert (=> d!1074998 m!4167601))

(assert (=> d!1074998 m!4167279))

(declare-fun m!4167635 () Bool)

(assert (=> d!1074998 m!4167635))

(assert (=> d!1074998 m!4167215))

(assert (=> d!1074998 m!4167279))

(declare-fun m!4167637 () Bool)

(assert (=> d!1074998 m!4167637))

(assert (=> d!1074998 m!4167279))

(declare-fun m!4167639 () Bool)

(assert (=> d!1074998 m!4167639))

(assert (=> b!3660769 d!1074998))

(assert (=> bm!264790 d!1074934))

(declare-fun d!1075004 () Bool)

(assert (=> d!1075004 (= (inv!52090 (tag!6576 anOtherTypeRule!33)) (= (mod (str.len (value!185702 (tag!6576 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3660750 d!1075004))

(declare-fun d!1075006 () Bool)

(declare-fun res!1486269 () Bool)

(declare-fun e!2266949 () Bool)

(assert (=> d!1075006 (=> (not res!1486269) (not e!2266949))))

(declare-fun semiInverseModEq!2470 (Int Int) Bool)

(assert (=> d!1075006 (= res!1486269 (semiInverseModEq!2470 (toChars!7949 (transformation!5798 anOtherTypeRule!33)) (toValue!8090 (transformation!5798 anOtherTypeRule!33))))))

(assert (=> d!1075006 (= (inv!52094 (transformation!5798 anOtherTypeRule!33)) e!2266949)))

(declare-fun b!3661097 () Bool)

(declare-fun equivClasses!2369 (Int Int) Bool)

(assert (=> b!3661097 (= e!2266949 (equivClasses!2369 (toChars!7949 (transformation!5798 anOtherTypeRule!33)) (toValue!8090 (transformation!5798 anOtherTypeRule!33))))))

(assert (= (and d!1075006 res!1486269) b!3661097))

(declare-fun m!4167641 () Bool)

(assert (=> d!1075006 m!4167641))

(declare-fun m!4167643 () Bool)

(assert (=> b!3661097 m!4167643))

(assert (=> b!3660750 d!1075006))

(declare-fun d!1075008 () Bool)

(assert (=> d!1075008 (not (matchR!5126 (regex!5798 rule!403) lt!1273373))))

(declare-fun lt!1273516 () Unit!55929)

(declare-fun choose!21666 (LexerInterface!5387 List!38751 Rule!11396 List!38749 List!38749 List!38749 Rule!11396) Unit!55929)

(assert (=> d!1075008 (= lt!1273516 (choose!21666 thiss!23823 rules!3307 (rule!8610 (_1!22378 lt!1273386)) lt!1273388 lt!1273408 lt!1273373 rule!403))))

(assert (=> d!1075008 (isPrefix!3161 lt!1273388 lt!1273408)))

(assert (=> d!1075008 (= (lemmaMaxPrefixOutputsMaxPrefix!340 thiss!23823 rules!3307 (rule!8610 (_1!22378 lt!1273386)) lt!1273388 lt!1273408 lt!1273373 rule!403) lt!1273516)))

(declare-fun bs!572622 () Bool)

(assert (= bs!572622 d!1075008))

(assert (=> bs!572622 m!4167243))

(declare-fun m!4167645 () Bool)

(assert (=> bs!572622 m!4167645))

(assert (=> bs!572622 m!4167209))

(assert (=> b!3660730 d!1075008))

(declare-fun d!1075010 () Bool)

(declare-fun isEmpty!22911 (Option!8224) Bool)

(assert (=> d!1075010 (= (isDefined!6456 lt!1273363) (not (isEmpty!22911 lt!1273363)))))

(declare-fun bs!572623 () Bool)

(assert (= bs!572623 d!1075010))

(declare-fun m!4167647 () Bool)

(assert (=> bs!572623 m!4167647))

(assert (=> b!3660751 d!1075010))

(declare-fun b!3661143 () Bool)

(declare-fun res!1486306 () Bool)

(declare-fun e!2266966 () Bool)

(assert (=> b!3661143 (=> (not res!1486306) (not e!2266966))))

(declare-fun lt!1273546 () Option!8224)

(assert (=> b!3661143 (= res!1486306 (< (size!29512 (_2!22378 (get!12733 lt!1273546))) (size!29512 lt!1273373)))))

(declare-fun b!3661144 () Bool)

(declare-fun e!2266965 () Option!8224)

(declare-fun call!264840 () Option!8224)

(assert (=> b!3661144 (= e!2266965 call!264840)))

(declare-fun d!1075012 () Bool)

(declare-fun e!2266967 () Bool)

(assert (=> d!1075012 e!2266967))

(declare-fun res!1486305 () Bool)

(assert (=> d!1075012 (=> res!1486305 e!2266967)))

(assert (=> d!1075012 (= res!1486305 (isEmpty!22911 lt!1273546))))

(assert (=> d!1075012 (= lt!1273546 e!2266965)))

(declare-fun c!632792 () Bool)

(assert (=> d!1075012 (= c!632792 (and ((_ is Cons!38627) rules!3307) ((_ is Nil!38627) (t!298494 rules!3307))))))

(declare-fun lt!1273545 () Unit!55929)

(declare-fun lt!1273542 () Unit!55929)

(assert (=> d!1075012 (= lt!1273545 lt!1273542)))

(assert (=> d!1075012 (isPrefix!3161 lt!1273373 lt!1273373)))

(declare-fun lemmaIsPrefixRefl!1993 (List!38749 List!38749) Unit!55929)

(assert (=> d!1075012 (= lt!1273542 (lemmaIsPrefixRefl!1993 lt!1273373 lt!1273373))))

(declare-fun rulesValidInductive!2056 (LexerInterface!5387 List!38751) Bool)

(assert (=> d!1075012 (rulesValidInductive!2056 thiss!23823 rules!3307)))

(assert (=> d!1075012 (= (maxPrefix!2921 thiss!23823 rules!3307 lt!1273373) lt!1273546)))

(declare-fun b!3661145 () Bool)

(declare-fun res!1486310 () Bool)

(assert (=> b!3661145 (=> (not res!1486310) (not e!2266966))))

(assert (=> b!3661145 (= res!1486310 (= (list!14328 (charsOf!3812 (_1!22378 (get!12733 lt!1273546)))) (originalCharacters!6512 (_1!22378 (get!12733 lt!1273546)))))))

(declare-fun b!3661146 () Bool)

(assert (=> b!3661146 (= e!2266967 e!2266966)))

(declare-fun res!1486311 () Bool)

(assert (=> b!3661146 (=> (not res!1486311) (not e!2266966))))

(assert (=> b!3661146 (= res!1486311 (isDefined!6456 lt!1273546))))

(declare-fun bm!264835 () Bool)

(assert (=> bm!264835 (= call!264840 (maxPrefixOneRule!2059 thiss!23823 (h!44047 rules!3307) lt!1273373))))

(declare-fun b!3661147 () Bool)

(declare-fun res!1486308 () Bool)

(assert (=> b!3661147 (=> (not res!1486308) (not e!2266966))))

(assert (=> b!3661147 (= res!1486308 (matchR!5126 (regex!5798 (rule!8610 (_1!22378 (get!12733 lt!1273546)))) (list!14328 (charsOf!3812 (_1!22378 (get!12733 lt!1273546))))))))

(declare-fun b!3661148 () Bool)

(declare-fun res!1486309 () Bool)

(assert (=> b!3661148 (=> (not res!1486309) (not e!2266966))))

(assert (=> b!3661148 (= res!1486309 (= (value!185703 (_1!22378 (get!12733 lt!1273546))) (apply!9300 (transformation!5798 (rule!8610 (_1!22378 (get!12733 lt!1273546)))) (seqFromList!4347 (originalCharacters!6512 (_1!22378 (get!12733 lt!1273546)))))))))

(declare-fun b!3661149 () Bool)

(declare-fun res!1486307 () Bool)

(assert (=> b!3661149 (=> (not res!1486307) (not e!2266966))))

(assert (=> b!3661149 (= res!1486307 (= (++!9614 (list!14328 (charsOf!3812 (_1!22378 (get!12733 lt!1273546)))) (_2!22378 (get!12733 lt!1273546))) lt!1273373))))

(declare-fun b!3661150 () Bool)

(assert (=> b!3661150 (= e!2266966 (contains!7661 rules!3307 (rule!8610 (_1!22378 (get!12733 lt!1273546)))))))

(declare-fun b!3661151 () Bool)

(declare-fun lt!1273543 () Option!8224)

(declare-fun lt!1273544 () Option!8224)

(assert (=> b!3661151 (= e!2266965 (ite (and ((_ is None!8223) lt!1273543) ((_ is None!8223) lt!1273544)) None!8223 (ite ((_ is None!8223) lt!1273544) lt!1273543 (ite ((_ is None!8223) lt!1273543) lt!1273544 (ite (>= (size!29511 (_1!22378 (v!38111 lt!1273543))) (size!29511 (_1!22378 (v!38111 lt!1273544)))) lt!1273543 lt!1273544)))))))

(assert (=> b!3661151 (= lt!1273543 call!264840)))

(assert (=> b!3661151 (= lt!1273544 (maxPrefix!2921 thiss!23823 (t!298494 rules!3307) lt!1273373))))

(assert (= (and d!1075012 c!632792) b!3661144))

(assert (= (and d!1075012 (not c!632792)) b!3661151))

(assert (= (or b!3661144 b!3661151) bm!264835))

(assert (= (and d!1075012 (not res!1486305)) b!3661146))

(assert (= (and b!3661146 res!1486311) b!3661145))

(assert (= (and b!3661145 res!1486310) b!3661143))

(assert (= (and b!3661143 res!1486306) b!3661149))

(assert (= (and b!3661149 res!1486307) b!3661148))

(assert (= (and b!3661148 res!1486309) b!3661147))

(assert (= (and b!3661147 res!1486308) b!3661150))

(declare-fun m!4167681 () Bool)

(assert (=> d!1075012 m!4167681))

(assert (=> d!1075012 m!4167155))

(declare-fun m!4167683 () Bool)

(assert (=> d!1075012 m!4167683))

(declare-fun m!4167685 () Bool)

(assert (=> d!1075012 m!4167685))

(declare-fun m!4167687 () Bool)

(assert (=> bm!264835 m!4167687))

(declare-fun m!4167689 () Bool)

(assert (=> b!3661151 m!4167689))

(declare-fun m!4167691 () Bool)

(assert (=> b!3661147 m!4167691))

(declare-fun m!4167693 () Bool)

(assert (=> b!3661147 m!4167693))

(assert (=> b!3661147 m!4167693))

(declare-fun m!4167695 () Bool)

(assert (=> b!3661147 m!4167695))

(assert (=> b!3661147 m!4167695))

(declare-fun m!4167697 () Bool)

(assert (=> b!3661147 m!4167697))

(assert (=> b!3661143 m!4167691))

(declare-fun m!4167699 () Bool)

(assert (=> b!3661143 m!4167699))

(declare-fun m!4167701 () Bool)

(assert (=> b!3661143 m!4167701))

(declare-fun m!4167703 () Bool)

(assert (=> b!3661146 m!4167703))

(assert (=> b!3661150 m!4167691))

(declare-fun m!4167705 () Bool)

(assert (=> b!3661150 m!4167705))

(assert (=> b!3661149 m!4167691))

(assert (=> b!3661149 m!4167693))

(assert (=> b!3661149 m!4167693))

(assert (=> b!3661149 m!4167695))

(assert (=> b!3661149 m!4167695))

(declare-fun m!4167707 () Bool)

(assert (=> b!3661149 m!4167707))

(assert (=> b!3661148 m!4167691))

(declare-fun m!4167709 () Bool)

(assert (=> b!3661148 m!4167709))

(assert (=> b!3661148 m!4167709))

(declare-fun m!4167711 () Bool)

(assert (=> b!3661148 m!4167711))

(assert (=> b!3661145 m!4167691))

(assert (=> b!3661145 m!4167693))

(assert (=> b!3661145 m!4167693))

(assert (=> b!3661145 m!4167695))

(assert (=> b!3660751 d!1075012))

(declare-fun d!1075016 () Bool)

(declare-fun list!14330 (Conc!11811) List!38749)

(assert (=> d!1075016 (= (list!14328 lt!1273367) (list!14330 (c!632715 lt!1273367)))))

(declare-fun bs!572624 () Bool)

(assert (= bs!572624 d!1075016))

(declare-fun m!4167713 () Bool)

(assert (=> bs!572624 m!4167713))

(assert (=> b!3660751 d!1075016))

(declare-fun d!1075018 () Bool)

(declare-fun lt!1273549 () BalanceConc!23236)

(assert (=> d!1075018 (= (list!14328 lt!1273549) (originalCharacters!6512 token!511))))

(assert (=> d!1075018 (= lt!1273549 (dynLambda!16871 (toChars!7949 (transformation!5798 (rule!8610 token!511))) (value!185703 token!511)))))

(assert (=> d!1075018 (= (charsOf!3812 token!511) lt!1273549)))

(declare-fun b_lambda!108601 () Bool)

(assert (=> (not b_lambda!108601) (not d!1075018)))

(assert (=> d!1075018 t!298504))

(declare-fun b_and!271779 () Bool)

(assert (= b_and!271739 (and (=> t!298504 result!257512) b_and!271779)))

(assert (=> d!1075018 t!298506))

(declare-fun b_and!271781 () Bool)

(assert (= b_and!271741 (and (=> t!298506 result!257516) b_and!271781)))

(assert (=> d!1075018 t!298508))

(declare-fun b_and!271783 () Bool)

(assert (= b_and!271743 (and (=> t!298508 result!257518) b_and!271783)))

(assert (=> d!1075018 t!298510))

(declare-fun b_and!271785 () Bool)

(assert (= b_and!271745 (and (=> t!298510 result!257520) b_and!271785)))

(declare-fun m!4167715 () Bool)

(assert (=> d!1075018 m!4167715))

(assert (=> d!1075018 m!4167371))

(assert (=> b!3660751 d!1075018))

(declare-fun d!1075020 () Bool)

(declare-fun res!1486314 () Bool)

(declare-fun e!2266970 () Bool)

(assert (=> d!1075020 (=> (not res!1486314) (not e!2266970))))

(declare-fun rulesValid!2227 (LexerInterface!5387 List!38751) Bool)

(assert (=> d!1075020 (= res!1486314 (rulesValid!2227 thiss!23823 rules!3307))))

(assert (=> d!1075020 (= (rulesInvariant!4784 thiss!23823 rules!3307) e!2266970)))

(declare-fun b!3661154 () Bool)

(declare-datatypes ((List!38752 0))(
  ( (Nil!38628) (Cons!38628 (h!44048 String!43474) (t!298615 List!38752)) )
))
(declare-fun noDuplicateTag!2223 (LexerInterface!5387 List!38751 List!38752) Bool)

(assert (=> b!3661154 (= e!2266970 (noDuplicateTag!2223 thiss!23823 rules!3307 Nil!38628))))

(assert (= (and d!1075020 res!1486314) b!3661154))

(declare-fun m!4167717 () Bool)

(assert (=> d!1075020 m!4167717))

(declare-fun m!4167719 () Bool)

(assert (=> b!3661154 m!4167719))

(assert (=> b!3660753 d!1075020))

(declare-fun d!1075022 () Bool)

(assert (=> d!1075022 (not (matchR!5126 (regex!5798 (rule!8610 (_1!22378 lt!1273386))) lt!1273388))))

(declare-fun lt!1273550 () Unit!55929)

(assert (=> d!1075022 (= lt!1273550 (choose!21663 (regex!5798 (rule!8610 (_1!22378 lt!1273386))) lt!1273388 lt!1273376))))

(assert (=> d!1075022 (validRegex!4833 (regex!5798 (rule!8610 (_1!22378 lt!1273386))))))

(assert (=> d!1075022 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!746 (regex!5798 (rule!8610 (_1!22378 lt!1273386))) lt!1273388 lt!1273376) lt!1273550)))

(declare-fun bs!572625 () Bool)

(assert (= bs!572625 d!1075022))

(assert (=> bs!572625 m!4167301))

(declare-fun m!4167721 () Bool)

(assert (=> bs!572625 m!4167721))

(assert (=> bs!572625 m!4167427))

(assert (=> bm!264794 d!1075022))

(declare-fun b!3661163 () Bool)

(declare-fun e!2266977 () Int)

(assert (=> b!3661163 (= e!2266977 0)))

(declare-fun b!3661164 () Bool)

(declare-fun e!2266976 () Int)

(assert (=> b!3661164 (= e!2266977 e!2266976)))

(declare-fun c!632798 () Bool)

(assert (=> b!3661164 (= c!632798 (and ((_ is Cons!38627) rules!3307) (not (= (h!44047 rules!3307) (rule!8610 (_1!22378 lt!1273386))))))))

(declare-fun b!3661166 () Bool)

(assert (=> b!3661166 (= e!2266976 (- 1))))

(declare-fun b!3661165 () Bool)

(assert (=> b!3661165 (= e!2266976 (+ 1 (getIndex!466 (t!298494 rules!3307) (rule!8610 (_1!22378 lt!1273386)))))))

(declare-fun d!1075024 () Bool)

(declare-fun lt!1273553 () Int)

(assert (=> d!1075024 (>= lt!1273553 0)))

(assert (=> d!1075024 (= lt!1273553 e!2266977)))

(declare-fun c!632797 () Bool)

(assert (=> d!1075024 (= c!632797 (and ((_ is Cons!38627) rules!3307) (= (h!44047 rules!3307) (rule!8610 (_1!22378 lt!1273386)))))))

(assert (=> d!1075024 (contains!7661 rules!3307 (rule!8610 (_1!22378 lt!1273386)))))

(assert (=> d!1075024 (= (getIndex!466 rules!3307 (rule!8610 (_1!22378 lt!1273386))) lt!1273553)))

(assert (= (and d!1075024 c!632797) b!3661163))

(assert (= (and d!1075024 (not c!632797)) b!3661164))

(assert (= (and b!3661164 c!632798) b!3661165))

(assert (= (and b!3661164 (not c!632798)) b!3661166))

(declare-fun m!4167723 () Bool)

(assert (=> b!3661165 m!4167723))

(assert (=> d!1075024 m!4167167))

(assert (=> b!3660731 d!1075024))

(declare-fun b!3661167 () Bool)

(declare-fun e!2266979 () Int)

(assert (=> b!3661167 (= e!2266979 0)))

(declare-fun b!3661168 () Bool)

(declare-fun e!2266978 () Int)

(assert (=> b!3661168 (= e!2266979 e!2266978)))

(declare-fun c!632800 () Bool)

(assert (=> b!3661168 (= c!632800 (and ((_ is Cons!38627) rules!3307) (not (= (h!44047 rules!3307) rule!403))))))

(declare-fun b!3661170 () Bool)

(assert (=> b!3661170 (= e!2266978 (- 1))))

(declare-fun b!3661169 () Bool)

(assert (=> b!3661169 (= e!2266978 (+ 1 (getIndex!466 (t!298494 rules!3307) rule!403)))))

(declare-fun d!1075026 () Bool)

(declare-fun lt!1273554 () Int)

(assert (=> d!1075026 (>= lt!1273554 0)))

(assert (=> d!1075026 (= lt!1273554 e!2266979)))

(declare-fun c!632799 () Bool)

(assert (=> d!1075026 (= c!632799 (and ((_ is Cons!38627) rules!3307) (= (h!44047 rules!3307) rule!403)))))

(assert (=> d!1075026 (contains!7661 rules!3307 rule!403)))

(assert (=> d!1075026 (= (getIndex!466 rules!3307 rule!403) lt!1273554)))

(assert (= (and d!1075026 c!632799) b!3661167))

(assert (= (and d!1075026 (not c!632799)) b!3661168))

(assert (= (and b!3661168 c!632800) b!3661169))

(assert (= (and b!3661168 (not c!632800)) b!3661170))

(declare-fun m!4167725 () Bool)

(assert (=> b!3661169 m!4167725))

(assert (=> d!1075026 m!4167291))

(assert (=> b!3660731 d!1075026))

(declare-fun d!1075028 () Bool)

(declare-fun lt!1273555 () Bool)

(assert (=> d!1075028 (= lt!1273555 (select (content!5583 call!264795) lt!1273399))))

(declare-fun e!2266981 () Bool)

(assert (=> d!1075028 (= lt!1273555 e!2266981)))

(declare-fun res!1486316 () Bool)

(assert (=> d!1075028 (=> (not res!1486316) (not e!2266981))))

(assert (=> d!1075028 (= res!1486316 ((_ is Cons!38625) call!264795))))

(assert (=> d!1075028 (= (contains!7662 call!264795 lt!1273399) lt!1273555)))

(declare-fun b!3661171 () Bool)

(declare-fun e!2266980 () Bool)

(assert (=> b!3661171 (= e!2266981 e!2266980)))

(declare-fun res!1486315 () Bool)

(assert (=> b!3661171 (=> res!1486315 e!2266980)))

(assert (=> b!3661171 (= res!1486315 (= (h!44045 call!264795) lt!1273399))))

(declare-fun b!3661172 () Bool)

(assert (=> b!3661172 (= e!2266980 (contains!7662 (t!298492 call!264795) lt!1273399))))

(assert (= (and d!1075028 res!1486316) b!3661171))

(assert (= (and b!3661171 (not res!1486315)) b!3661172))

(declare-fun m!4167727 () Bool)

(assert (=> d!1075028 m!4167727))

(declare-fun m!4167729 () Bool)

(assert (=> d!1075028 m!4167729))

(declare-fun m!4167731 () Bool)

(assert (=> b!3661172 m!4167731))

(assert (=> bm!264795 d!1075028))

(declare-fun d!1075030 () Bool)

(assert (=> d!1075030 (= (isEmpty!22908 suffix!1395) ((_ is Nil!38625) suffix!1395))))

(assert (=> b!3660733 d!1075030))

(declare-fun d!1075032 () Bool)

(assert (=> d!1075032 (not (matchR!5126 (regex!5798 (rule!8610 (_1!22378 lt!1273386))) lt!1273388))))

(declare-fun lt!1273556 () Unit!55929)

(assert (=> d!1075032 (= lt!1273556 (choose!21663 (regex!5798 (rule!8610 (_1!22378 lt!1273386))) lt!1273388 lt!1273399))))

(assert (=> d!1075032 (validRegex!4833 (regex!5798 (rule!8610 (_1!22378 lt!1273386))))))

(assert (=> d!1075032 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!746 (regex!5798 (rule!8610 (_1!22378 lt!1273386))) lt!1273388 lt!1273399) lt!1273556)))

(declare-fun bs!572626 () Bool)

(assert (= bs!572626 d!1075032))

(assert (=> bs!572626 m!4167301))

(declare-fun m!4167733 () Bool)

(assert (=> bs!572626 m!4167733))

(assert (=> bs!572626 m!4167427))

(assert (=> bm!264791 d!1075032))

(declare-fun d!1075034 () Bool)

(assert (=> d!1075034 (not (contains!7662 (usedCharacters!1010 (regex!5798 (rule!8610 (_1!22378 lt!1273386)))) lt!1273399))))

(declare-fun lt!1273559 () Unit!55929)

(declare-fun choose!21668 (LexerInterface!5387 List!38751 List!38751 Rule!11396 Rule!11396 C!21300) Unit!55929)

(assert (=> d!1075034 (= lt!1273559 (choose!21668 thiss!23823 rules!3307 rules!3307 (rule!8610 (_1!22378 lt!1273386)) rule!403 lt!1273399))))

(assert (=> d!1075034 (rulesInvariant!4784 thiss!23823 rules!3307)))

(assert (=> d!1075034 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!444 thiss!23823 rules!3307 rules!3307 (rule!8610 (_1!22378 lt!1273386)) rule!403 lt!1273399) lt!1273559)))

(declare-fun bs!572627 () Bool)

(assert (= bs!572627 d!1075034))

(assert (=> bs!572627 m!4167287))

(assert (=> bs!572627 m!4167287))

(assert (=> bs!572627 m!4167415))

(declare-fun m!4167735 () Bool)

(assert (=> bs!572627 m!4167735))

(assert (=> bs!572627 m!4167285))

(assert (=> b!3660771 d!1075034))

(declare-fun d!1075036 () Bool)

(declare-fun lt!1273560 () Bool)

(assert (=> d!1075036 (= lt!1273560 (select (content!5583 lt!1273380) lt!1273376))))

(declare-fun e!2266983 () Bool)

(assert (=> d!1075036 (= lt!1273560 e!2266983)))

(declare-fun res!1486318 () Bool)

(assert (=> d!1075036 (=> (not res!1486318) (not e!2266983))))

(assert (=> d!1075036 (= res!1486318 ((_ is Cons!38625) lt!1273380))))

(assert (=> d!1075036 (= (contains!7662 lt!1273380 lt!1273376) lt!1273560)))

(declare-fun b!3661173 () Bool)

(declare-fun e!2266982 () Bool)

(assert (=> b!3661173 (= e!2266983 e!2266982)))

(declare-fun res!1486317 () Bool)

(assert (=> b!3661173 (=> res!1486317 e!2266982)))

(assert (=> b!3661173 (= res!1486317 (= (h!44045 lt!1273380) lt!1273376))))

(declare-fun b!3661174 () Bool)

(assert (=> b!3661174 (= e!2266982 (contains!7662 (t!298492 lt!1273380) lt!1273376))))

(assert (= (and d!1075036 res!1486318) b!3661173))

(assert (= (and b!3661173 (not res!1486317)) b!3661174))

(assert (=> d!1075036 m!4167343))

(declare-fun m!4167737 () Bool)

(assert (=> d!1075036 m!4167737))

(declare-fun m!4167739 () Bool)

(assert (=> b!3661174 m!4167739))

(assert (=> b!3660772 d!1075036))

(declare-fun d!1075038 () Bool)

(assert (=> d!1075038 (= (head!7826 suffix!1395) (h!44045 suffix!1395))))

(assert (=> b!3660772 d!1075038))

(declare-fun b!3661175 () Bool)

(declare-fun e!2266984 () List!38749)

(declare-fun e!2266985 () List!38749)

(assert (=> b!3661175 (= e!2266984 e!2266985)))

(declare-fun c!632802 () Bool)

(assert (=> b!3661175 (= c!632802 ((_ is ElementMatch!10557) (regex!5798 rule!403)))))

(declare-fun b!3661176 () Bool)

(assert (=> b!3661176 (= e!2266985 (Cons!38625 (c!632714 (regex!5798 rule!403)) Nil!38625))))

(declare-fun b!3661178 () Bool)

(declare-fun e!2266987 () List!38749)

(declare-fun call!264844 () List!38749)

(assert (=> b!3661178 (= e!2266987 call!264844)))

(declare-fun b!3661179 () Bool)

(assert (=> b!3661179 (= e!2266987 call!264844)))

(declare-fun c!632804 () Bool)

(declare-fun c!632803 () Bool)

(declare-fun bm!264836 () Bool)

(declare-fun call!264841 () List!38749)

(assert (=> bm!264836 (= call!264841 (usedCharacters!1010 (ite c!632803 (reg!10886 (regex!5798 rule!403)) (ite c!632804 (regTwo!21627 (regex!5798 rule!403)) (regOne!21626 (regex!5798 rule!403))))))))

(declare-fun call!264843 () List!38749)

(declare-fun bm!264837 () Bool)

(declare-fun call!264842 () List!38749)

(assert (=> bm!264837 (= call!264844 (++!9614 (ite c!632804 call!264842 call!264843) (ite c!632804 call!264843 call!264842)))))

(declare-fun b!3661180 () Bool)

(declare-fun e!2266986 () List!38749)

(assert (=> b!3661180 (= e!2266986 call!264841)))

(declare-fun b!3661181 () Bool)

(assert (=> b!3661181 (= e!2266986 e!2266987)))

(assert (=> b!3661181 (= c!632804 ((_ is Union!10557) (regex!5798 rule!403)))))

(declare-fun bm!264838 () Bool)

(assert (=> bm!264838 (= call!264842 (usedCharacters!1010 (ite c!632804 (regOne!21627 (regex!5798 rule!403)) (regTwo!21626 (regex!5798 rule!403)))))))

(declare-fun b!3661182 () Bool)

(assert (=> b!3661182 (= c!632803 ((_ is Star!10557) (regex!5798 rule!403)))))

(assert (=> b!3661182 (= e!2266985 e!2266986)))

(declare-fun bm!264839 () Bool)

(assert (=> bm!264839 (= call!264843 call!264841)))

(declare-fun d!1075040 () Bool)

(declare-fun c!632805 () Bool)

(assert (=> d!1075040 (= c!632805 (or ((_ is EmptyExpr!10557) (regex!5798 rule!403)) ((_ is EmptyLang!10557) (regex!5798 rule!403))))))

(assert (=> d!1075040 (= (usedCharacters!1010 (regex!5798 rule!403)) e!2266984)))

(declare-fun b!3661177 () Bool)

(assert (=> b!3661177 (= e!2266984 Nil!38625)))

(assert (= (and d!1075040 c!632805) b!3661177))

(assert (= (and d!1075040 (not c!632805)) b!3661175))

(assert (= (and b!3661175 c!632802) b!3661176))

(assert (= (and b!3661175 (not c!632802)) b!3661182))

(assert (= (and b!3661182 c!632803) b!3661180))

(assert (= (and b!3661182 (not c!632803)) b!3661181))

(assert (= (and b!3661181 c!632804) b!3661178))

(assert (= (and b!3661181 (not c!632804)) b!3661179))

(assert (= (or b!3661178 b!3661179) bm!264838))

(assert (= (or b!3661178 b!3661179) bm!264839))

(assert (= (or b!3661178 b!3661179) bm!264837))

(assert (= (or b!3661180 bm!264839) bm!264836))

(declare-fun m!4167741 () Bool)

(assert (=> bm!264836 m!4167741))

(declare-fun m!4167743 () Bool)

(assert (=> bm!264837 m!4167743))

(declare-fun m!4167745 () Bool)

(assert (=> bm!264838 m!4167745))

(assert (=> b!3660772 d!1075040))

(declare-fun bm!264840 () Bool)

(declare-fun call!264845 () Bool)

(assert (=> bm!264840 (= call!264845 (isEmpty!22908 (list!14328 (charsOf!3812 (_1!22378 lt!1273386)))))))

(declare-fun b!3661183 () Bool)

(declare-fun res!1486326 () Bool)

(declare-fun e!2266994 () Bool)

(assert (=> b!3661183 (=> res!1486326 e!2266994)))

(assert (=> b!3661183 (= res!1486326 (not ((_ is ElementMatch!10557) (regex!5798 lt!1273368))))))

(declare-fun e!2266991 () Bool)

(assert (=> b!3661183 (= e!2266991 e!2266994)))

(declare-fun b!3661184 () Bool)

(declare-fun e!2266989 () Bool)

(declare-fun e!2266988 () Bool)

(assert (=> b!3661184 (= e!2266989 e!2266988)))

(declare-fun res!1486320 () Bool)

(assert (=> b!3661184 (=> res!1486320 e!2266988)))

(assert (=> b!3661184 (= res!1486320 call!264845)))

(declare-fun b!3661185 () Bool)

(declare-fun lt!1273561 () Bool)

(assert (=> b!3661185 (= e!2266991 (not lt!1273561))))

(declare-fun d!1075042 () Bool)

(declare-fun e!2266992 () Bool)

(assert (=> d!1075042 e!2266992))

(declare-fun c!632808 () Bool)

(assert (=> d!1075042 (= c!632808 ((_ is EmptyExpr!10557) (regex!5798 lt!1273368)))))

(declare-fun e!2266993 () Bool)

(assert (=> d!1075042 (= lt!1273561 e!2266993)))

(declare-fun c!632807 () Bool)

(assert (=> d!1075042 (= c!632807 (isEmpty!22908 (list!14328 (charsOf!3812 (_1!22378 lt!1273386)))))))

(assert (=> d!1075042 (validRegex!4833 (regex!5798 lt!1273368))))

(assert (=> d!1075042 (= (matchR!5126 (regex!5798 lt!1273368) (list!14328 (charsOf!3812 (_1!22378 lt!1273386)))) lt!1273561)))

(declare-fun b!3661186 () Bool)

(assert (=> b!3661186 (= e!2266993 (nullable!3670 (regex!5798 lt!1273368)))))

(declare-fun b!3661187 () Bool)

(declare-fun e!2266990 () Bool)

(assert (=> b!3661187 (= e!2266990 (= (head!7826 (list!14328 (charsOf!3812 (_1!22378 lt!1273386)))) (c!632714 (regex!5798 lt!1273368))))))

(declare-fun b!3661188 () Bool)

(assert (=> b!3661188 (= e!2266992 e!2266991)))

(declare-fun c!632806 () Bool)

(assert (=> b!3661188 (= c!632806 ((_ is EmptyLang!10557) (regex!5798 lt!1273368)))))

(declare-fun b!3661189 () Bool)

(declare-fun res!1486321 () Bool)

(assert (=> b!3661189 (=> res!1486321 e!2266994)))

(assert (=> b!3661189 (= res!1486321 e!2266990)))

(declare-fun res!1486324 () Bool)

(assert (=> b!3661189 (=> (not res!1486324) (not e!2266990))))

(assert (=> b!3661189 (= res!1486324 lt!1273561)))

(declare-fun b!3661190 () Bool)

(assert (=> b!3661190 (= e!2266994 e!2266989)))

(declare-fun res!1486323 () Bool)

(assert (=> b!3661190 (=> (not res!1486323) (not e!2266989))))

(assert (=> b!3661190 (= res!1486323 (not lt!1273561))))

(declare-fun b!3661191 () Bool)

(assert (=> b!3661191 (= e!2266992 (= lt!1273561 call!264845))))

(declare-fun b!3661192 () Bool)

(assert (=> b!3661192 (= e!2266993 (matchR!5126 (derivativeStep!3219 (regex!5798 lt!1273368) (head!7826 (list!14328 (charsOf!3812 (_1!22378 lt!1273386))))) (tail!5669 (list!14328 (charsOf!3812 (_1!22378 lt!1273386))))))))

(declare-fun b!3661193 () Bool)

(declare-fun res!1486325 () Bool)

(assert (=> b!3661193 (=> (not res!1486325) (not e!2266990))))

(assert (=> b!3661193 (= res!1486325 (isEmpty!22908 (tail!5669 (list!14328 (charsOf!3812 (_1!22378 lt!1273386))))))))

(declare-fun b!3661194 () Bool)

(declare-fun res!1486319 () Bool)

(assert (=> b!3661194 (=> (not res!1486319) (not e!2266990))))

(assert (=> b!3661194 (= res!1486319 (not call!264845))))

(declare-fun b!3661195 () Bool)

(declare-fun res!1486322 () Bool)

(assert (=> b!3661195 (=> res!1486322 e!2266988)))

(assert (=> b!3661195 (= res!1486322 (not (isEmpty!22908 (tail!5669 (list!14328 (charsOf!3812 (_1!22378 lt!1273386)))))))))

(declare-fun b!3661196 () Bool)

(assert (=> b!3661196 (= e!2266988 (not (= (head!7826 (list!14328 (charsOf!3812 (_1!22378 lt!1273386)))) (c!632714 (regex!5798 lt!1273368)))))))

(assert (= (and d!1075042 c!632807) b!3661186))

(assert (= (and d!1075042 (not c!632807)) b!3661192))

(assert (= (and d!1075042 c!632808) b!3661191))

(assert (= (and d!1075042 (not c!632808)) b!3661188))

(assert (= (and b!3661188 c!632806) b!3661185))

(assert (= (and b!3661188 (not c!632806)) b!3661183))

(assert (= (and b!3661183 (not res!1486326)) b!3661189))

(assert (= (and b!3661189 res!1486324) b!3661194))

(assert (= (and b!3661194 res!1486319) b!3661193))

(assert (= (and b!3661193 res!1486325) b!3661187))

(assert (= (and b!3661189 (not res!1486321)) b!3661190))

(assert (= (and b!3661190 res!1486323) b!3661184))

(assert (= (and b!3661184 (not res!1486320)) b!3661195))

(assert (= (and b!3661195 (not res!1486322)) b!3661196))

(assert (= (or b!3661191 b!3661184 b!3661194) bm!264840))

(assert (=> b!3661195 m!4167295))

(declare-fun m!4167747 () Bool)

(assert (=> b!3661195 m!4167747))

(assert (=> b!3661195 m!4167747))

(declare-fun m!4167749 () Bool)

(assert (=> b!3661195 m!4167749))

(assert (=> b!3661187 m!4167295))

(declare-fun m!4167751 () Bool)

(assert (=> b!3661187 m!4167751))

(declare-fun m!4167753 () Bool)

(assert (=> b!3661186 m!4167753))

(assert (=> b!3661196 m!4167295))

(assert (=> b!3661196 m!4167751))

(assert (=> d!1075042 m!4167295))

(declare-fun m!4167755 () Bool)

(assert (=> d!1075042 m!4167755))

(declare-fun m!4167757 () Bool)

(assert (=> d!1075042 m!4167757))

(assert (=> b!3661193 m!4167295))

(assert (=> b!3661193 m!4167747))

(assert (=> b!3661193 m!4167747))

(assert (=> b!3661193 m!4167749))

(assert (=> b!3661192 m!4167295))

(assert (=> b!3661192 m!4167751))

(assert (=> b!3661192 m!4167751))

(declare-fun m!4167759 () Bool)

(assert (=> b!3661192 m!4167759))

(assert (=> b!3661192 m!4167295))

(assert (=> b!3661192 m!4167747))

(assert (=> b!3661192 m!4167759))

(assert (=> b!3661192 m!4167747))

(declare-fun m!4167761 () Bool)

(assert (=> b!3661192 m!4167761))

(assert (=> bm!264840 m!4167295))

(assert (=> bm!264840 m!4167755))

(assert (=> b!3660754 d!1075042))

(declare-fun d!1075044 () Bool)

(assert (=> d!1075044 (= (list!14328 (charsOf!3812 (_1!22378 lt!1273386))) (list!14330 (c!632715 (charsOf!3812 (_1!22378 lt!1273386)))))))

(declare-fun bs!572628 () Bool)

(assert (= bs!572628 d!1075044))

(declare-fun m!4167763 () Bool)

(assert (=> bs!572628 m!4167763))

(assert (=> b!3660754 d!1075044))

(declare-fun d!1075046 () Bool)

(declare-fun lt!1273562 () BalanceConc!23236)

(assert (=> d!1075046 (= (list!14328 lt!1273562) (originalCharacters!6512 (_1!22378 lt!1273386)))))

(assert (=> d!1075046 (= lt!1273562 (dynLambda!16871 (toChars!7949 (transformation!5798 (rule!8610 (_1!22378 lt!1273386)))) (value!185703 (_1!22378 lt!1273386))))))

(assert (=> d!1075046 (= (charsOf!3812 (_1!22378 lt!1273386)) lt!1273562)))

(declare-fun b_lambda!108603 () Bool)

(assert (=> (not b_lambda!108603) (not d!1075046)))

(declare-fun tb!211573 () Bool)

(declare-fun t!298568 () Bool)

(assert (=> (and b!3660761 (= (toChars!7949 (transformation!5798 anOtherTypeRule!33)) (toChars!7949 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) t!298568) tb!211573))

(declare-fun b!3661197 () Bool)

(declare-fun e!2266995 () Bool)

(declare-fun tp!1115168 () Bool)

(assert (=> b!3661197 (= e!2266995 (and (inv!52097 (c!632715 (dynLambda!16871 (toChars!7949 (transformation!5798 (rule!8610 (_1!22378 lt!1273386)))) (value!185703 (_1!22378 lt!1273386))))) tp!1115168))))

(declare-fun result!257582 () Bool)

(assert (=> tb!211573 (= result!257582 (and (inv!52098 (dynLambda!16871 (toChars!7949 (transformation!5798 (rule!8610 (_1!22378 lt!1273386)))) (value!185703 (_1!22378 lt!1273386)))) e!2266995))))

(assert (= tb!211573 b!3661197))

(declare-fun m!4167765 () Bool)

(assert (=> b!3661197 m!4167765))

(declare-fun m!4167767 () Bool)

(assert (=> tb!211573 m!4167767))

(assert (=> d!1075046 t!298568))

(declare-fun b_and!271787 () Bool)

(assert (= b_and!271779 (and (=> t!298568 result!257582) b_and!271787)))

(declare-fun tb!211575 () Bool)

(declare-fun t!298570 () Bool)

(assert (=> (and b!3660770 (= (toChars!7949 (transformation!5798 (h!44047 rules!3307))) (toChars!7949 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) t!298570) tb!211575))

(declare-fun result!257584 () Bool)

(assert (= result!257584 result!257582))

(assert (=> d!1075046 t!298570))

(declare-fun b_and!271789 () Bool)

(assert (= b_and!271781 (and (=> t!298570 result!257584) b_and!271789)))

(declare-fun t!298572 () Bool)

(declare-fun tb!211577 () Bool)

(assert (=> (and b!3660777 (= (toChars!7949 (transformation!5798 (rule!8610 token!511))) (toChars!7949 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) t!298572) tb!211577))

(declare-fun result!257586 () Bool)

(assert (= result!257586 result!257582))

(assert (=> d!1075046 t!298572))

(declare-fun b_and!271791 () Bool)

(assert (= b_and!271783 (and (=> t!298572 result!257586) b_and!271791)))

(declare-fun tb!211579 () Bool)

(declare-fun t!298574 () Bool)

(assert (=> (and b!3660778 (= (toChars!7949 (transformation!5798 rule!403)) (toChars!7949 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) t!298574) tb!211579))

(declare-fun result!257588 () Bool)

(assert (= result!257588 result!257582))

(assert (=> d!1075046 t!298574))

(declare-fun b_and!271793 () Bool)

(assert (= b_and!271785 (and (=> t!298574 result!257588) b_and!271793)))

(declare-fun m!4167769 () Bool)

(assert (=> d!1075046 m!4167769))

(declare-fun m!4167771 () Bool)

(assert (=> d!1075046 m!4167771))

(assert (=> b!3660754 d!1075046))

(declare-fun d!1075048 () Bool)

(assert (=> d!1075048 (= (get!12734 lt!1273405) (v!38112 lt!1273405))))

(assert (=> b!3660754 d!1075048))

(declare-fun bm!264841 () Bool)

(declare-fun call!264846 () Bool)

(assert (=> bm!264841 (= call!264846 (isEmpty!22908 lt!1273373))))

(declare-fun b!3661198 () Bool)

(declare-fun res!1486334 () Bool)

(declare-fun e!2267002 () Bool)

(assert (=> b!3661198 (=> res!1486334 e!2267002)))

(assert (=> b!3661198 (= res!1486334 (not ((_ is ElementMatch!10557) (regex!5798 rule!403))))))

(declare-fun e!2266999 () Bool)

(assert (=> b!3661198 (= e!2266999 e!2267002)))

(declare-fun b!3661199 () Bool)

(declare-fun e!2266997 () Bool)

(declare-fun e!2266996 () Bool)

(assert (=> b!3661199 (= e!2266997 e!2266996)))

(declare-fun res!1486328 () Bool)

(assert (=> b!3661199 (=> res!1486328 e!2266996)))

(assert (=> b!3661199 (= res!1486328 call!264846)))

(declare-fun b!3661200 () Bool)

(declare-fun lt!1273563 () Bool)

(assert (=> b!3661200 (= e!2266999 (not lt!1273563))))

(declare-fun d!1075050 () Bool)

(declare-fun e!2267000 () Bool)

(assert (=> d!1075050 e!2267000))

(declare-fun c!632811 () Bool)

(assert (=> d!1075050 (= c!632811 ((_ is EmptyExpr!10557) (regex!5798 rule!403)))))

(declare-fun e!2267001 () Bool)

(assert (=> d!1075050 (= lt!1273563 e!2267001)))

(declare-fun c!632810 () Bool)

(assert (=> d!1075050 (= c!632810 (isEmpty!22908 lt!1273373))))

(assert (=> d!1075050 (validRegex!4833 (regex!5798 rule!403))))

(assert (=> d!1075050 (= (matchR!5126 (regex!5798 rule!403) lt!1273373) lt!1273563)))

(declare-fun b!3661201 () Bool)

(assert (=> b!3661201 (= e!2267001 (nullable!3670 (regex!5798 rule!403)))))

(declare-fun b!3661202 () Bool)

(declare-fun e!2266998 () Bool)

(assert (=> b!3661202 (= e!2266998 (= (head!7826 lt!1273373) (c!632714 (regex!5798 rule!403))))))

(declare-fun b!3661203 () Bool)

(assert (=> b!3661203 (= e!2267000 e!2266999)))

(declare-fun c!632809 () Bool)

(assert (=> b!3661203 (= c!632809 ((_ is EmptyLang!10557) (regex!5798 rule!403)))))

(declare-fun b!3661204 () Bool)

(declare-fun res!1486329 () Bool)

(assert (=> b!3661204 (=> res!1486329 e!2267002)))

(assert (=> b!3661204 (= res!1486329 e!2266998)))

(declare-fun res!1486332 () Bool)

(assert (=> b!3661204 (=> (not res!1486332) (not e!2266998))))

(assert (=> b!3661204 (= res!1486332 lt!1273563)))

(declare-fun b!3661205 () Bool)

(assert (=> b!3661205 (= e!2267002 e!2266997)))

(declare-fun res!1486331 () Bool)

(assert (=> b!3661205 (=> (not res!1486331) (not e!2266997))))

(assert (=> b!3661205 (= res!1486331 (not lt!1273563))))

(declare-fun b!3661206 () Bool)

(assert (=> b!3661206 (= e!2267000 (= lt!1273563 call!264846))))

(declare-fun b!3661207 () Bool)

(assert (=> b!3661207 (= e!2267001 (matchR!5126 (derivativeStep!3219 (regex!5798 rule!403) (head!7826 lt!1273373)) (tail!5669 lt!1273373)))))

(declare-fun b!3661208 () Bool)

(declare-fun res!1486333 () Bool)

(assert (=> b!3661208 (=> (not res!1486333) (not e!2266998))))

(assert (=> b!3661208 (= res!1486333 (isEmpty!22908 (tail!5669 lt!1273373)))))

(declare-fun b!3661209 () Bool)

(declare-fun res!1486327 () Bool)

(assert (=> b!3661209 (=> (not res!1486327) (not e!2266998))))

(assert (=> b!3661209 (= res!1486327 (not call!264846))))

(declare-fun b!3661210 () Bool)

(declare-fun res!1486330 () Bool)

(assert (=> b!3661210 (=> res!1486330 e!2266996)))

(assert (=> b!3661210 (= res!1486330 (not (isEmpty!22908 (tail!5669 lt!1273373))))))

(declare-fun b!3661211 () Bool)

(assert (=> b!3661211 (= e!2266996 (not (= (head!7826 lt!1273373) (c!632714 (regex!5798 rule!403)))))))

(assert (= (and d!1075050 c!632810) b!3661201))

(assert (= (and d!1075050 (not c!632810)) b!3661207))

(assert (= (and d!1075050 c!632811) b!3661206))

(assert (= (and d!1075050 (not c!632811)) b!3661203))

(assert (= (and b!3661203 c!632809) b!3661200))

(assert (= (and b!3661203 (not c!632809)) b!3661198))

(assert (= (and b!3661198 (not res!1486334)) b!3661204))

(assert (= (and b!3661204 res!1486332) b!3661209))

(assert (= (and b!3661209 res!1486327) b!3661208))

(assert (= (and b!3661208 res!1486333) b!3661202))

(assert (= (and b!3661204 (not res!1486329)) b!3661205))

(assert (= (and b!3661205 res!1486331) b!3661199))

(assert (= (and b!3661199 (not res!1486328)) b!3661210))

(assert (= (and b!3661210 (not res!1486330)) b!3661211))

(assert (= (or b!3661206 b!3661199 b!3661209) bm!264841))

(declare-fun m!4167773 () Bool)

(assert (=> b!3661210 m!4167773))

(assert (=> b!3661210 m!4167773))

(declare-fun m!4167775 () Bool)

(assert (=> b!3661210 m!4167775))

(declare-fun m!4167777 () Bool)

(assert (=> b!3661202 m!4167777))

(declare-fun m!4167779 () Bool)

(assert (=> b!3661201 m!4167779))

(assert (=> b!3661211 m!4167777))

(declare-fun m!4167781 () Bool)

(assert (=> d!1075050 m!4167781))

(assert (=> d!1075050 m!4167435))

(assert (=> b!3661208 m!4167773))

(assert (=> b!3661208 m!4167773))

(assert (=> b!3661208 m!4167775))

(assert (=> b!3661207 m!4167777))

(assert (=> b!3661207 m!4167777))

(declare-fun m!4167783 () Bool)

(assert (=> b!3661207 m!4167783))

(assert (=> b!3661207 m!4167773))

(assert (=> b!3661207 m!4167783))

(assert (=> b!3661207 m!4167773))

(declare-fun m!4167785 () Bool)

(assert (=> b!3661207 m!4167785))

(assert (=> bm!264841 m!4167781))

(assert (=> b!3660756 d!1075050))

(declare-fun d!1075052 () Bool)

(declare-fun res!1486339 () Bool)

(declare-fun e!2267005 () Bool)

(assert (=> d!1075052 (=> (not res!1486339) (not e!2267005))))

(assert (=> d!1075052 (= res!1486339 (validRegex!4833 (regex!5798 rule!403)))))

(assert (=> d!1075052 (= (ruleValid!2062 thiss!23823 rule!403) e!2267005)))

(declare-fun b!3661216 () Bool)

(declare-fun res!1486340 () Bool)

(assert (=> b!3661216 (=> (not res!1486340) (not e!2267005))))

(assert (=> b!3661216 (= res!1486340 (not (nullable!3670 (regex!5798 rule!403))))))

(declare-fun b!3661217 () Bool)

(assert (=> b!3661217 (= e!2267005 (not (= (tag!6576 rule!403) (String!43475 ""))))))

(assert (= (and d!1075052 res!1486339) b!3661216))

(assert (= (and b!3661216 res!1486340) b!3661217))

(assert (=> d!1075052 m!4167435))

(assert (=> b!3661216 m!4167779))

(assert (=> b!3660756 d!1075052))

(declare-fun d!1075054 () Bool)

(assert (=> d!1075054 (ruleValid!2062 thiss!23823 rule!403)))

(declare-fun lt!1273566 () Unit!55929)

(declare-fun choose!21670 (LexerInterface!5387 Rule!11396 List!38751) Unit!55929)

(assert (=> d!1075054 (= lt!1273566 (choose!21670 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1075054 (contains!7661 rules!3307 rule!403)))

(assert (=> d!1075054 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1216 thiss!23823 rule!403 rules!3307) lt!1273566)))

(declare-fun bs!572629 () Bool)

(assert (= bs!572629 d!1075054))

(assert (=> bs!572629 m!4167245))

(declare-fun m!4167787 () Bool)

(assert (=> bs!572629 m!4167787))

(assert (=> bs!572629 m!4167291))

(assert (=> b!3660756 d!1075054))

(declare-fun b!3661228 () Bool)

(declare-fun e!2267012 () Bool)

(assert (=> b!3661228 (= e!2267012 (isPrefix!3161 (tail!5669 lt!1273373) (tail!5669 lt!1273373)))))

(declare-fun b!3661226 () Bool)

(declare-fun e!2267014 () Bool)

(assert (=> b!3661226 (= e!2267014 e!2267012)))

(declare-fun res!1486352 () Bool)

(assert (=> b!3661226 (=> (not res!1486352) (not e!2267012))))

(assert (=> b!3661226 (= res!1486352 (not ((_ is Nil!38625) lt!1273373)))))

(declare-fun b!3661227 () Bool)

(declare-fun res!1486351 () Bool)

(assert (=> b!3661227 (=> (not res!1486351) (not e!2267012))))

(assert (=> b!3661227 (= res!1486351 (= (head!7826 lt!1273373) (head!7826 lt!1273373)))))

(declare-fun d!1075056 () Bool)

(declare-fun e!2267013 () Bool)

(assert (=> d!1075056 e!2267013))

(declare-fun res!1486350 () Bool)

(assert (=> d!1075056 (=> res!1486350 e!2267013)))

(declare-fun lt!1273569 () Bool)

(assert (=> d!1075056 (= res!1486350 (not lt!1273569))))

(assert (=> d!1075056 (= lt!1273569 e!2267014)))

(declare-fun res!1486349 () Bool)

(assert (=> d!1075056 (=> res!1486349 e!2267014)))

(assert (=> d!1075056 (= res!1486349 ((_ is Nil!38625) lt!1273373))))

(assert (=> d!1075056 (= (isPrefix!3161 lt!1273373 lt!1273373) lt!1273569)))

(declare-fun b!3661229 () Bool)

(assert (=> b!3661229 (= e!2267013 (>= (size!29512 lt!1273373) (size!29512 lt!1273373)))))

(assert (= (and d!1075056 (not res!1486349)) b!3661226))

(assert (= (and b!3661226 res!1486352) b!3661227))

(assert (= (and b!3661227 res!1486351) b!3661228))

(assert (= (and d!1075056 (not res!1486350)) b!3661229))

(assert (=> b!3661228 m!4167773))

(assert (=> b!3661228 m!4167773))

(assert (=> b!3661228 m!4167773))

(assert (=> b!3661228 m!4167773))

(declare-fun m!4167789 () Bool)

(assert (=> b!3661228 m!4167789))

(assert (=> b!3661227 m!4167777))

(assert (=> b!3661227 m!4167777))

(assert (=> b!3661229 m!4167701))

(assert (=> b!3661229 m!4167701))

(assert (=> b!3660735 d!1075056))

(declare-fun d!1075058 () Bool)

(assert (=> d!1075058 (= (isEmpty!22908 (getSuffix!1714 lt!1273373 lt!1273373)) ((_ is Nil!38625) (getSuffix!1714 lt!1273373 lt!1273373)))))

(assert (=> b!3660735 d!1075058))

(declare-fun d!1075060 () Bool)

(declare-fun lt!1273572 () List!38749)

(assert (=> d!1075060 (= (++!9614 lt!1273373 lt!1273572) lt!1273373)))

(declare-fun e!2267017 () List!38749)

(assert (=> d!1075060 (= lt!1273572 e!2267017)))

(declare-fun c!632814 () Bool)

(assert (=> d!1075060 (= c!632814 ((_ is Cons!38625) lt!1273373))))

(assert (=> d!1075060 (>= (size!29512 lt!1273373) (size!29512 lt!1273373))))

(assert (=> d!1075060 (= (getSuffix!1714 lt!1273373 lt!1273373) lt!1273572)))

(declare-fun b!3661234 () Bool)

(assert (=> b!3661234 (= e!2267017 (getSuffix!1714 (tail!5669 lt!1273373) (t!298492 lt!1273373)))))

(declare-fun b!3661235 () Bool)

(assert (=> b!3661235 (= e!2267017 lt!1273373)))

(assert (= (and d!1075060 c!632814) b!3661234))

(assert (= (and d!1075060 (not c!632814)) b!3661235))

(declare-fun m!4167791 () Bool)

(assert (=> d!1075060 m!4167791))

(assert (=> d!1075060 m!4167701))

(assert (=> d!1075060 m!4167701))

(assert (=> b!3661234 m!4167773))

(assert (=> b!3661234 m!4167773))

(declare-fun m!4167793 () Bool)

(assert (=> b!3661234 m!4167793))

(assert (=> b!3660735 d!1075060))

(declare-fun d!1075062 () Bool)

(assert (=> d!1075062 (isEmpty!22908 (getSuffix!1714 lt!1273373 lt!1273373))))

(declare-fun lt!1273575 () Unit!55929)

(declare-fun choose!21671 (List!38749) Unit!55929)

(assert (=> d!1075062 (= lt!1273575 (choose!21671 lt!1273373))))

(assert (=> d!1075062 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!178 lt!1273373) lt!1273575)))

(declare-fun bs!572630 () Bool)

(assert (= bs!572630 d!1075062))

(assert (=> bs!572630 m!4167157))

(assert (=> bs!572630 m!4167157))

(assert (=> bs!572630 m!4167159))

(declare-fun m!4167795 () Bool)

(assert (=> bs!572630 m!4167795))

(assert (=> b!3660735 d!1075062))

(declare-fun d!1075064 () Bool)

(assert (=> d!1075064 (= (inv!52090 (tag!6576 (h!44047 rules!3307))) (= (mod (str.len (value!185702 (tag!6576 (h!44047 rules!3307)))) 2) 0))))

(assert (=> b!3660775 d!1075064))

(declare-fun d!1075066 () Bool)

(declare-fun res!1486353 () Bool)

(declare-fun e!2267018 () Bool)

(assert (=> d!1075066 (=> (not res!1486353) (not e!2267018))))

(assert (=> d!1075066 (= res!1486353 (semiInverseModEq!2470 (toChars!7949 (transformation!5798 (h!44047 rules!3307))) (toValue!8090 (transformation!5798 (h!44047 rules!3307)))))))

(assert (=> d!1075066 (= (inv!52094 (transformation!5798 (h!44047 rules!3307))) e!2267018)))

(declare-fun b!3661236 () Bool)

(assert (=> b!3661236 (= e!2267018 (equivClasses!2369 (toChars!7949 (transformation!5798 (h!44047 rules!3307))) (toValue!8090 (transformation!5798 (h!44047 rules!3307)))))))

(assert (= (and d!1075066 res!1486353) b!3661236))

(declare-fun m!4167797 () Bool)

(assert (=> d!1075066 m!4167797))

(declare-fun m!4167799 () Bool)

(assert (=> b!3661236 m!4167799))

(assert (=> b!3660775 d!1075066))

(declare-fun d!1075068 () Bool)

(assert (=> d!1075068 (= (inv!52090 (tag!6576 (rule!8610 token!511))) (= (mod (str.len (value!185702 (tag!6576 (rule!8610 token!511)))) 2) 0))))

(assert (=> b!3660737 d!1075068))

(declare-fun d!1075070 () Bool)

(declare-fun res!1486354 () Bool)

(declare-fun e!2267019 () Bool)

(assert (=> d!1075070 (=> (not res!1486354) (not e!2267019))))

(assert (=> d!1075070 (= res!1486354 (semiInverseModEq!2470 (toChars!7949 (transformation!5798 (rule!8610 token!511))) (toValue!8090 (transformation!5798 (rule!8610 token!511)))))))

(assert (=> d!1075070 (= (inv!52094 (transformation!5798 (rule!8610 token!511))) e!2267019)))

(declare-fun b!3661237 () Bool)

(assert (=> b!3661237 (= e!2267019 (equivClasses!2369 (toChars!7949 (transformation!5798 (rule!8610 token!511))) (toValue!8090 (transformation!5798 (rule!8610 token!511)))))))

(assert (= (and d!1075070 res!1486354) b!3661237))

(declare-fun m!4167801 () Bool)

(assert (=> d!1075070 m!4167801))

(declare-fun m!4167803 () Bool)

(assert (=> b!3661237 m!4167803))

(assert (=> b!3660737 d!1075070))

(declare-fun d!1075072 () Bool)

(assert (=> d!1075072 (not (contains!7662 (usedCharacters!1010 (regex!5798 (rule!8610 (_1!22378 lt!1273386)))) lt!1273376))))

(declare-fun lt!1273576 () Unit!55929)

(assert (=> d!1075072 (= lt!1273576 (choose!21668 thiss!23823 rules!3307 rules!3307 (rule!8610 (_1!22378 lt!1273386)) anOtherTypeRule!33 lt!1273376))))

(assert (=> d!1075072 (rulesInvariant!4784 thiss!23823 rules!3307)))

(assert (=> d!1075072 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!444 thiss!23823 rules!3307 rules!3307 (rule!8610 (_1!22378 lt!1273386)) anOtherTypeRule!33 lt!1273376) lt!1273576)))

(declare-fun bs!572631 () Bool)

(assert (= bs!572631 d!1075072))

(assert (=> bs!572631 m!4167287))

(assert (=> bs!572631 m!4167287))

(assert (=> bs!572631 m!4167411))

(declare-fun m!4167805 () Bool)

(assert (=> bs!572631 m!4167805))

(assert (=> bs!572631 m!4167285))

(assert (=> b!3660757 d!1075072))

(declare-fun d!1075074 () Bool)

(declare-fun lt!1273577 () Bool)

(assert (=> d!1075074 (= lt!1273577 (select (content!5582 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2267021 () Bool)

(assert (=> d!1075074 (= lt!1273577 e!2267021)))

(declare-fun res!1486355 () Bool)

(assert (=> d!1075074 (=> (not res!1486355) (not e!2267021))))

(assert (=> d!1075074 (= res!1486355 ((_ is Cons!38627) rules!3307))))

(assert (=> d!1075074 (= (contains!7661 rules!3307 anOtherTypeRule!33) lt!1273577)))

(declare-fun b!3661238 () Bool)

(declare-fun e!2267020 () Bool)

(assert (=> b!3661238 (= e!2267021 e!2267020)))

(declare-fun res!1486356 () Bool)

(assert (=> b!3661238 (=> res!1486356 e!2267020)))

(assert (=> b!3661238 (= res!1486356 (= (h!44047 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3661239 () Bool)

(assert (=> b!3661239 (= e!2267020 (contains!7661 (t!298494 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1075074 res!1486355) b!3661238))

(assert (= (and b!3661238 (not res!1486356)) b!3661239))

(assert (=> d!1075074 m!4167313))

(declare-fun m!4167807 () Bool)

(assert (=> d!1075074 m!4167807))

(declare-fun m!4167809 () Bool)

(assert (=> b!3661239 m!4167809))

(assert (=> b!3660774 d!1075074))

(declare-fun d!1075076 () Bool)

(assert (=> d!1075076 (= (inv!52090 (tag!6576 rule!403)) (= (mod (str.len (value!185702 (tag!6576 rule!403))) 2) 0))))

(assert (=> b!3660776 d!1075076))

(declare-fun d!1075078 () Bool)

(declare-fun res!1486357 () Bool)

(declare-fun e!2267022 () Bool)

(assert (=> d!1075078 (=> (not res!1486357) (not e!2267022))))

(assert (=> d!1075078 (= res!1486357 (semiInverseModEq!2470 (toChars!7949 (transformation!5798 rule!403)) (toValue!8090 (transformation!5798 rule!403))))))

(assert (=> d!1075078 (= (inv!52094 (transformation!5798 rule!403)) e!2267022)))

(declare-fun b!3661240 () Bool)

(assert (=> b!3661240 (= e!2267022 (equivClasses!2369 (toChars!7949 (transformation!5798 rule!403)) (toValue!8090 (transformation!5798 rule!403))))))

(assert (= (and d!1075078 res!1486357) b!3661240))

(declare-fun m!4167811 () Bool)

(assert (=> d!1075078 m!4167811))

(declare-fun m!4167813 () Bool)

(assert (=> b!3661240 m!4167813))

(assert (=> b!3660776 d!1075078))

(declare-fun d!1075080 () Bool)

(declare-fun res!1486362 () Bool)

(declare-fun e!2267027 () Bool)

(assert (=> d!1075080 (=> res!1486362 e!2267027)))

(assert (=> d!1075080 (= res!1486362 (not ((_ is Cons!38627) rules!3307)))))

(assert (=> d!1075080 (= (sepAndNonSepRulesDisjointChars!1966 rules!3307 rules!3307) e!2267027)))

(declare-fun b!3661245 () Bool)

(declare-fun e!2267028 () Bool)

(assert (=> b!3661245 (= e!2267027 e!2267028)))

(declare-fun res!1486363 () Bool)

(assert (=> b!3661245 (=> (not res!1486363) (not e!2267028))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!894 (Rule!11396 List!38751) Bool)

(assert (=> b!3661245 (= res!1486363 (ruleDisjointCharsFromAllFromOtherType!894 (h!44047 rules!3307) rules!3307))))

(declare-fun b!3661246 () Bool)

(assert (=> b!3661246 (= e!2267028 (sepAndNonSepRulesDisjointChars!1966 rules!3307 (t!298494 rules!3307)))))

(assert (= (and d!1075080 (not res!1486362)) b!3661245))

(assert (= (and b!3661245 res!1486363) b!3661246))

(declare-fun m!4167815 () Bool)

(assert (=> b!3661245 m!4167815))

(declare-fun m!4167817 () Bool)

(assert (=> b!3661246 m!4167817))

(assert (=> b!3660738 d!1075080))

(declare-fun d!1075082 () Bool)

(assert (=> d!1075082 (= (isEmpty!22908 (_2!22378 lt!1273385)) ((_ is Nil!38625) (_2!22378 lt!1273385)))))

(assert (=> b!3660758 d!1075082))

(declare-fun d!1075084 () Bool)

(declare-fun lt!1273578 () Bool)

(assert (=> d!1075084 (= lt!1273578 (select (content!5583 call!264800) lt!1273376))))

(declare-fun e!2267030 () Bool)

(assert (=> d!1075084 (= lt!1273578 e!2267030)))

(declare-fun res!1486365 () Bool)

(assert (=> d!1075084 (=> (not res!1486365) (not e!2267030))))

(assert (=> d!1075084 (= res!1486365 ((_ is Cons!38625) call!264800))))

(assert (=> d!1075084 (= (contains!7662 call!264800 lt!1273376) lt!1273578)))

(declare-fun b!3661247 () Bool)

(declare-fun e!2267029 () Bool)

(assert (=> b!3661247 (= e!2267030 e!2267029)))

(declare-fun res!1486364 () Bool)

(assert (=> b!3661247 (=> res!1486364 e!2267029)))

(assert (=> b!3661247 (= res!1486364 (= (h!44045 call!264800) lt!1273376))))

(declare-fun b!3661248 () Bool)

(assert (=> b!3661248 (= e!2267029 (contains!7662 (t!298492 call!264800) lt!1273376))))

(assert (= (and d!1075084 res!1486365) b!3661247))

(assert (= (and b!3661247 (not res!1486364)) b!3661248))

(declare-fun m!4167819 () Bool)

(assert (=> d!1075084 m!4167819))

(declare-fun m!4167821 () Bool)

(assert (=> d!1075084 m!4167821))

(declare-fun m!4167823 () Bool)

(assert (=> b!3661248 m!4167823))

(assert (=> bm!264792 d!1075084))

(declare-fun b!3661259 () Bool)

(declare-fun e!2267037 () Bool)

(declare-fun inv!16 (TokenValue!6028) Bool)

(assert (=> b!3661259 (= e!2267037 (inv!16 (value!185703 token!511)))))

(declare-fun d!1075086 () Bool)

(declare-fun c!632819 () Bool)

(assert (=> d!1075086 (= c!632819 ((_ is IntegerValue!18084) (value!185703 token!511)))))

(assert (=> d!1075086 (= (inv!21 (value!185703 token!511)) e!2267037)))

(declare-fun b!3661260 () Bool)

(declare-fun e!2267038 () Bool)

(declare-fun inv!17 (TokenValue!6028) Bool)

(assert (=> b!3661260 (= e!2267038 (inv!17 (value!185703 token!511)))))

(declare-fun b!3661261 () Bool)

(declare-fun e!2267039 () Bool)

(declare-fun inv!15 (TokenValue!6028) Bool)

(assert (=> b!3661261 (= e!2267039 (inv!15 (value!185703 token!511)))))

(declare-fun b!3661262 () Bool)

(declare-fun res!1486368 () Bool)

(assert (=> b!3661262 (=> res!1486368 e!2267039)))

(assert (=> b!3661262 (= res!1486368 (not ((_ is IntegerValue!18086) (value!185703 token!511))))))

(assert (=> b!3661262 (= e!2267038 e!2267039)))

(declare-fun b!3661263 () Bool)

(assert (=> b!3661263 (= e!2267037 e!2267038)))

(declare-fun c!632820 () Bool)

(assert (=> b!3661263 (= c!632820 ((_ is IntegerValue!18085) (value!185703 token!511)))))

(assert (= (and d!1075086 c!632819) b!3661259))

(assert (= (and d!1075086 (not c!632819)) b!3661263))

(assert (= (and b!3661263 c!632820) b!3661260))

(assert (= (and b!3661263 (not c!632820)) b!3661262))

(assert (= (and b!3661262 (not res!1486368)) b!3661261))

(declare-fun m!4167825 () Bool)

(assert (=> b!3661259 m!4167825))

(declare-fun m!4167827 () Bool)

(assert (=> b!3661260 m!4167827))

(declare-fun m!4167829 () Bool)

(assert (=> b!3661261 m!4167829))

(assert (=> b!3660739 d!1075086))

(declare-fun d!1075088 () Bool)

(assert (=> d!1075088 (= (get!12733 lt!1273363) (v!38111 lt!1273363))))

(assert (=> b!3660741 d!1075088))

(declare-fun d!1075090 () Bool)

(assert (=> d!1075090 (= (isEmpty!22909 rules!3307) ((_ is Nil!38627) rules!3307))))

(assert (=> b!3660760 d!1075090))

(declare-fun d!1075092 () Bool)

(assert (=> d!1075092 (isPrefix!3161 lt!1273388 (++!9614 lt!1273388 (_2!22378 lt!1273386)))))

(declare-fun lt!1273581 () Unit!55929)

(declare-fun choose!21673 (List!38749 List!38749) Unit!55929)

(assert (=> d!1075092 (= lt!1273581 (choose!21673 lt!1273388 (_2!22378 lt!1273386)))))

(assert (=> d!1075092 (= (lemmaConcatTwoListThenFirstIsPrefix!2080 lt!1273388 (_2!22378 lt!1273386)) lt!1273581)))

(declare-fun bs!572632 () Bool)

(assert (= bs!572632 d!1075092))

(assert (=> bs!572632 m!4167201))

(assert (=> bs!572632 m!4167201))

(assert (=> bs!572632 m!4167219))

(declare-fun m!4167831 () Bool)

(assert (=> bs!572632 m!4167831))

(assert (=> b!3660762 d!1075092))

(declare-fun b!3661266 () Bool)

(declare-fun e!2267040 () Bool)

(assert (=> b!3661266 (= e!2267040 (isPrefix!3161 (tail!5669 lt!1273373) (tail!5669 lt!1273408)))))

(declare-fun b!3661264 () Bool)

(declare-fun e!2267042 () Bool)

(assert (=> b!3661264 (= e!2267042 e!2267040)))

(declare-fun res!1486372 () Bool)

(assert (=> b!3661264 (=> (not res!1486372) (not e!2267040))))

(assert (=> b!3661264 (= res!1486372 (not ((_ is Nil!38625) lt!1273408)))))

(declare-fun b!3661265 () Bool)

(declare-fun res!1486371 () Bool)

(assert (=> b!3661265 (=> (not res!1486371) (not e!2267040))))

(assert (=> b!3661265 (= res!1486371 (= (head!7826 lt!1273373) (head!7826 lt!1273408)))))

(declare-fun d!1075094 () Bool)

(declare-fun e!2267041 () Bool)

(assert (=> d!1075094 e!2267041))

(declare-fun res!1486370 () Bool)

(assert (=> d!1075094 (=> res!1486370 e!2267041)))

(declare-fun lt!1273582 () Bool)

(assert (=> d!1075094 (= res!1486370 (not lt!1273582))))

(assert (=> d!1075094 (= lt!1273582 e!2267042)))

(declare-fun res!1486369 () Bool)

(assert (=> d!1075094 (=> res!1486369 e!2267042)))

(assert (=> d!1075094 (= res!1486369 ((_ is Nil!38625) lt!1273373))))

(assert (=> d!1075094 (= (isPrefix!3161 lt!1273373 lt!1273408) lt!1273582)))

(declare-fun b!3661267 () Bool)

(assert (=> b!3661267 (= e!2267041 (>= (size!29512 lt!1273408) (size!29512 lt!1273373)))))

(assert (= (and d!1075094 (not res!1486369)) b!3661264))

(assert (= (and b!3661264 res!1486372) b!3661265))

(assert (= (and b!3661265 res!1486371) b!3661266))

(assert (= (and d!1075094 (not res!1486370)) b!3661267))

(assert (=> b!3661266 m!4167773))

(declare-fun m!4167833 () Bool)

(assert (=> b!3661266 m!4167833))

(assert (=> b!3661266 m!4167773))

(assert (=> b!3661266 m!4167833))

(declare-fun m!4167835 () Bool)

(assert (=> b!3661266 m!4167835))

(assert (=> b!3661265 m!4167777))

(declare-fun m!4167837 () Bool)

(assert (=> b!3661265 m!4167837))

(declare-fun m!4167839 () Bool)

(assert (=> b!3661267 m!4167839))

(assert (=> b!3661267 m!4167701))

(assert (=> b!3660762 d!1075094))

(declare-fun d!1075096 () Bool)

(declare-fun e!2267048 () Bool)

(assert (=> d!1075096 e!2267048))

(declare-fun res!1486378 () Bool)

(assert (=> d!1075096 (=> (not res!1486378) (not e!2267048))))

(declare-fun lt!1273585 () List!38749)

(assert (=> d!1075096 (= res!1486378 (= (content!5583 lt!1273585) ((_ map or) (content!5583 lt!1273388) (content!5583 (_2!22378 lt!1273386)))))))

(declare-fun e!2267047 () List!38749)

(assert (=> d!1075096 (= lt!1273585 e!2267047)))

(declare-fun c!632823 () Bool)

(assert (=> d!1075096 (= c!632823 ((_ is Nil!38625) lt!1273388))))

(assert (=> d!1075096 (= (++!9614 lt!1273388 (_2!22378 lt!1273386)) lt!1273585)))

(declare-fun b!3661277 () Bool)

(assert (=> b!3661277 (= e!2267047 (Cons!38625 (h!44045 lt!1273388) (++!9614 (t!298492 lt!1273388) (_2!22378 lt!1273386))))))

(declare-fun b!3661276 () Bool)

(assert (=> b!3661276 (= e!2267047 (_2!22378 lt!1273386))))

(declare-fun b!3661279 () Bool)

(assert (=> b!3661279 (= e!2267048 (or (not (= (_2!22378 lt!1273386) Nil!38625)) (= lt!1273585 lt!1273388)))))

(declare-fun b!3661278 () Bool)

(declare-fun res!1486377 () Bool)

(assert (=> b!3661278 (=> (not res!1486377) (not e!2267048))))

(assert (=> b!3661278 (= res!1486377 (= (size!29512 lt!1273585) (+ (size!29512 lt!1273388) (size!29512 (_2!22378 lt!1273386)))))))

(assert (= (and d!1075096 c!632823) b!3661276))

(assert (= (and d!1075096 (not c!632823)) b!3661277))

(assert (= (and d!1075096 res!1486378) b!3661278))

(assert (= (and b!3661278 res!1486377) b!3661279))

(declare-fun m!4167841 () Bool)

(assert (=> d!1075096 m!4167841))

(assert (=> d!1075096 m!4167441))

(declare-fun m!4167843 () Bool)

(assert (=> d!1075096 m!4167843))

(declare-fun m!4167845 () Bool)

(assert (=> b!3661277 m!4167845))

(declare-fun m!4167847 () Bool)

(assert (=> b!3661278 m!4167847))

(assert (=> b!3661278 m!4167271))

(declare-fun m!4167849 () Bool)

(assert (=> b!3661278 m!4167849))

(assert (=> b!3660762 d!1075096))

(declare-fun d!1075098 () Bool)

(declare-fun e!2267060 () Bool)

(assert (=> d!1075098 e!2267060))

(declare-fun res!1486383 () Bool)

(assert (=> d!1075098 (=> res!1486383 e!2267060)))

(declare-fun lt!1273594 () Option!8225)

(declare-fun isEmpty!22913 (Option!8225) Bool)

(assert (=> d!1075098 (= res!1486383 (isEmpty!22913 lt!1273594))))

(declare-fun e!2267059 () Option!8225)

(assert (=> d!1075098 (= lt!1273594 e!2267059)))

(declare-fun c!632829 () Bool)

(assert (=> d!1075098 (= c!632829 (and ((_ is Cons!38627) rules!3307) (= (tag!6576 (h!44047 rules!3307)) (tag!6576 (rule!8610 (_1!22378 lt!1273386))))))))

(assert (=> d!1075098 (rulesInvariant!4784 thiss!23823 rules!3307)))

(assert (=> d!1075098 (= (getRuleFromTag!1402 thiss!23823 rules!3307 (tag!6576 (rule!8610 (_1!22378 lt!1273386)))) lt!1273594)))

(declare-fun b!3661292 () Bool)

(declare-fun e!2267057 () Option!8225)

(assert (=> b!3661292 (= e!2267059 e!2267057)))

(declare-fun c!632828 () Bool)

(assert (=> b!3661292 (= c!632828 (and ((_ is Cons!38627) rules!3307) (not (= (tag!6576 (h!44047 rules!3307)) (tag!6576 (rule!8610 (_1!22378 lt!1273386)))))))))

(declare-fun b!3661293 () Bool)

(assert (=> b!3661293 (= e!2267057 None!8224)))

(declare-fun b!3661294 () Bool)

(declare-fun lt!1273593 () Unit!55929)

(declare-fun lt!1273592 () Unit!55929)

(assert (=> b!3661294 (= lt!1273593 lt!1273592)))

(assert (=> b!3661294 (rulesInvariant!4784 thiss!23823 (t!298494 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!601 (LexerInterface!5387 Rule!11396 List!38751) Unit!55929)

(assert (=> b!3661294 (= lt!1273592 (lemmaInvariantOnRulesThenOnTail!601 thiss!23823 (h!44047 rules!3307) (t!298494 rules!3307)))))

(assert (=> b!3661294 (= e!2267057 (getRuleFromTag!1402 thiss!23823 (t!298494 rules!3307) (tag!6576 (rule!8610 (_1!22378 lt!1273386)))))))

(declare-fun b!3661295 () Bool)

(assert (=> b!3661295 (= e!2267059 (Some!8224 (h!44047 rules!3307)))))

(declare-fun b!3661296 () Bool)

(declare-fun e!2267058 () Bool)

(assert (=> b!3661296 (= e!2267058 (= (tag!6576 (get!12734 lt!1273594)) (tag!6576 (rule!8610 (_1!22378 lt!1273386)))))))

(declare-fun b!3661297 () Bool)

(assert (=> b!3661297 (= e!2267060 e!2267058)))

(declare-fun res!1486384 () Bool)

(assert (=> b!3661297 (=> (not res!1486384) (not e!2267058))))

(assert (=> b!3661297 (= res!1486384 (contains!7661 rules!3307 (get!12734 lt!1273594)))))

(assert (= (and d!1075098 c!632829) b!3661295))

(assert (= (and d!1075098 (not c!632829)) b!3661292))

(assert (= (and b!3661292 c!632828) b!3661294))

(assert (= (and b!3661292 (not c!632828)) b!3661293))

(assert (= (and d!1075098 (not res!1486383)) b!3661297))

(assert (= (and b!3661297 res!1486384) b!3661296))

(declare-fun m!4167851 () Bool)

(assert (=> d!1075098 m!4167851))

(assert (=> d!1075098 m!4167285))

(declare-fun m!4167853 () Bool)

(assert (=> b!3661294 m!4167853))

(declare-fun m!4167855 () Bool)

(assert (=> b!3661294 m!4167855))

(declare-fun m!4167857 () Bool)

(assert (=> b!3661294 m!4167857))

(declare-fun m!4167859 () Bool)

(assert (=> b!3661296 m!4167859))

(assert (=> b!3661297 m!4167859))

(assert (=> b!3661297 m!4167859))

(declare-fun m!4167861 () Bool)

(assert (=> b!3661297 m!4167861))

(assert (=> b!3660762 d!1075098))

(declare-fun b!3661300 () Bool)

(declare-fun e!2267061 () Bool)

(assert (=> b!3661300 (= e!2267061 (isPrefix!3161 (tail!5669 lt!1273388) (tail!5669 (++!9614 lt!1273388 (_2!22378 lt!1273386)))))))

(declare-fun b!3661298 () Bool)

(declare-fun e!2267063 () Bool)

(assert (=> b!3661298 (= e!2267063 e!2267061)))

(declare-fun res!1486388 () Bool)

(assert (=> b!3661298 (=> (not res!1486388) (not e!2267061))))

(assert (=> b!3661298 (= res!1486388 (not ((_ is Nil!38625) (++!9614 lt!1273388 (_2!22378 lt!1273386)))))))

(declare-fun b!3661299 () Bool)

(declare-fun res!1486387 () Bool)

(assert (=> b!3661299 (=> (not res!1486387) (not e!2267061))))

(assert (=> b!3661299 (= res!1486387 (= (head!7826 lt!1273388) (head!7826 (++!9614 lt!1273388 (_2!22378 lt!1273386)))))))

(declare-fun d!1075100 () Bool)

(declare-fun e!2267062 () Bool)

(assert (=> d!1075100 e!2267062))

(declare-fun res!1486386 () Bool)

(assert (=> d!1075100 (=> res!1486386 e!2267062)))

(declare-fun lt!1273595 () Bool)

(assert (=> d!1075100 (= res!1486386 (not lt!1273595))))

(assert (=> d!1075100 (= lt!1273595 e!2267063)))

(declare-fun res!1486385 () Bool)

(assert (=> d!1075100 (=> res!1486385 e!2267063)))

(assert (=> d!1075100 (= res!1486385 ((_ is Nil!38625) lt!1273388))))

(assert (=> d!1075100 (= (isPrefix!3161 lt!1273388 (++!9614 lt!1273388 (_2!22378 lt!1273386))) lt!1273595)))

(declare-fun b!3661301 () Bool)

(assert (=> b!3661301 (= e!2267062 (>= (size!29512 (++!9614 lt!1273388 (_2!22378 lt!1273386))) (size!29512 lt!1273388)))))

(assert (= (and d!1075100 (not res!1486385)) b!3661298))

(assert (= (and b!3661298 res!1486388) b!3661299))

(assert (= (and b!3661299 res!1486387) b!3661300))

(assert (= (and d!1075100 (not res!1486386)) b!3661301))

(assert (=> b!3661300 m!4167419))

(assert (=> b!3661300 m!4167201))

(declare-fun m!4167863 () Bool)

(assert (=> b!3661300 m!4167863))

(assert (=> b!3661300 m!4167419))

(assert (=> b!3661300 m!4167863))

(declare-fun m!4167865 () Bool)

(assert (=> b!3661300 m!4167865))

(assert (=> b!3661299 m!4167311))

(assert (=> b!3661299 m!4167201))

(declare-fun m!4167867 () Bool)

(assert (=> b!3661299 m!4167867))

(assert (=> b!3661301 m!4167201))

(declare-fun m!4167869 () Bool)

(assert (=> b!3661301 m!4167869))

(assert (=> b!3661301 m!4167271))

(assert (=> b!3660762 d!1075100))

(declare-fun b!3661302 () Bool)

(declare-fun res!1486390 () Bool)

(declare-fun e!2267065 () Bool)

(assert (=> b!3661302 (=> (not res!1486390) (not e!2267065))))

(declare-fun lt!1273600 () Option!8224)

(assert (=> b!3661302 (= res!1486390 (< (size!29512 (_2!22378 (get!12733 lt!1273600))) (size!29512 lt!1273408)))))

(declare-fun b!3661303 () Bool)

(declare-fun e!2267064 () Option!8224)

(declare-fun call!264847 () Option!8224)

(assert (=> b!3661303 (= e!2267064 call!264847)))

(declare-fun d!1075102 () Bool)

(declare-fun e!2267066 () Bool)

(assert (=> d!1075102 e!2267066))

(declare-fun res!1486389 () Bool)

(assert (=> d!1075102 (=> res!1486389 e!2267066)))

(assert (=> d!1075102 (= res!1486389 (isEmpty!22911 lt!1273600))))

(assert (=> d!1075102 (= lt!1273600 e!2267064)))

(declare-fun c!632830 () Bool)

(assert (=> d!1075102 (= c!632830 (and ((_ is Cons!38627) rules!3307) ((_ is Nil!38627) (t!298494 rules!3307))))))

(declare-fun lt!1273599 () Unit!55929)

(declare-fun lt!1273596 () Unit!55929)

(assert (=> d!1075102 (= lt!1273599 lt!1273596)))

(assert (=> d!1075102 (isPrefix!3161 lt!1273408 lt!1273408)))

(assert (=> d!1075102 (= lt!1273596 (lemmaIsPrefixRefl!1993 lt!1273408 lt!1273408))))

(assert (=> d!1075102 (rulesValidInductive!2056 thiss!23823 rules!3307)))

(assert (=> d!1075102 (= (maxPrefix!2921 thiss!23823 rules!3307 lt!1273408) lt!1273600)))

(declare-fun b!3661304 () Bool)

(declare-fun res!1486394 () Bool)

(assert (=> b!3661304 (=> (not res!1486394) (not e!2267065))))

(assert (=> b!3661304 (= res!1486394 (= (list!14328 (charsOf!3812 (_1!22378 (get!12733 lt!1273600)))) (originalCharacters!6512 (_1!22378 (get!12733 lt!1273600)))))))

(declare-fun b!3661305 () Bool)

(assert (=> b!3661305 (= e!2267066 e!2267065)))

(declare-fun res!1486395 () Bool)

(assert (=> b!3661305 (=> (not res!1486395) (not e!2267065))))

(assert (=> b!3661305 (= res!1486395 (isDefined!6456 lt!1273600))))

(declare-fun bm!264842 () Bool)

(assert (=> bm!264842 (= call!264847 (maxPrefixOneRule!2059 thiss!23823 (h!44047 rules!3307) lt!1273408))))

(declare-fun b!3661306 () Bool)

(declare-fun res!1486392 () Bool)

(assert (=> b!3661306 (=> (not res!1486392) (not e!2267065))))

(assert (=> b!3661306 (= res!1486392 (matchR!5126 (regex!5798 (rule!8610 (_1!22378 (get!12733 lt!1273600)))) (list!14328 (charsOf!3812 (_1!22378 (get!12733 lt!1273600))))))))

(declare-fun b!3661307 () Bool)

(declare-fun res!1486393 () Bool)

(assert (=> b!3661307 (=> (not res!1486393) (not e!2267065))))

(assert (=> b!3661307 (= res!1486393 (= (value!185703 (_1!22378 (get!12733 lt!1273600))) (apply!9300 (transformation!5798 (rule!8610 (_1!22378 (get!12733 lt!1273600)))) (seqFromList!4347 (originalCharacters!6512 (_1!22378 (get!12733 lt!1273600)))))))))

(declare-fun b!3661308 () Bool)

(declare-fun res!1486391 () Bool)

(assert (=> b!3661308 (=> (not res!1486391) (not e!2267065))))

(assert (=> b!3661308 (= res!1486391 (= (++!9614 (list!14328 (charsOf!3812 (_1!22378 (get!12733 lt!1273600)))) (_2!22378 (get!12733 lt!1273600))) lt!1273408))))

(declare-fun b!3661309 () Bool)

(assert (=> b!3661309 (= e!2267065 (contains!7661 rules!3307 (rule!8610 (_1!22378 (get!12733 lt!1273600)))))))

(declare-fun b!3661310 () Bool)

(declare-fun lt!1273597 () Option!8224)

(declare-fun lt!1273598 () Option!8224)

(assert (=> b!3661310 (= e!2267064 (ite (and ((_ is None!8223) lt!1273597) ((_ is None!8223) lt!1273598)) None!8223 (ite ((_ is None!8223) lt!1273598) lt!1273597 (ite ((_ is None!8223) lt!1273597) lt!1273598 (ite (>= (size!29511 (_1!22378 (v!38111 lt!1273597))) (size!29511 (_1!22378 (v!38111 lt!1273598)))) lt!1273597 lt!1273598)))))))

(assert (=> b!3661310 (= lt!1273597 call!264847)))

(assert (=> b!3661310 (= lt!1273598 (maxPrefix!2921 thiss!23823 (t!298494 rules!3307) lt!1273408))))

(assert (= (and d!1075102 c!632830) b!3661303))

(assert (= (and d!1075102 (not c!632830)) b!3661310))

(assert (= (or b!3661303 b!3661310) bm!264842))

(assert (= (and d!1075102 (not res!1486389)) b!3661305))

(assert (= (and b!3661305 res!1486395) b!3661304))

(assert (= (and b!3661304 res!1486394) b!3661302))

(assert (= (and b!3661302 res!1486390) b!3661308))

(assert (= (and b!3661308 res!1486391) b!3661307))

(assert (= (and b!3661307 res!1486393) b!3661306))

(assert (= (and b!3661306 res!1486392) b!3661309))

(declare-fun m!4167871 () Bool)

(assert (=> d!1075102 m!4167871))

(declare-fun m!4167873 () Bool)

(assert (=> d!1075102 m!4167873))

(declare-fun m!4167875 () Bool)

(assert (=> d!1075102 m!4167875))

(assert (=> d!1075102 m!4167685))

(declare-fun m!4167877 () Bool)

(assert (=> bm!264842 m!4167877))

(declare-fun m!4167879 () Bool)

(assert (=> b!3661310 m!4167879))

(declare-fun m!4167881 () Bool)

(assert (=> b!3661306 m!4167881))

(declare-fun m!4167883 () Bool)

(assert (=> b!3661306 m!4167883))

(assert (=> b!3661306 m!4167883))

(declare-fun m!4167885 () Bool)

(assert (=> b!3661306 m!4167885))

(assert (=> b!3661306 m!4167885))

(declare-fun m!4167887 () Bool)

(assert (=> b!3661306 m!4167887))

(assert (=> b!3661302 m!4167881))

(declare-fun m!4167889 () Bool)

(assert (=> b!3661302 m!4167889))

(assert (=> b!3661302 m!4167839))

(declare-fun m!4167891 () Bool)

(assert (=> b!3661305 m!4167891))

(assert (=> b!3661309 m!4167881))

(declare-fun m!4167893 () Bool)

(assert (=> b!3661309 m!4167893))

(assert (=> b!3661308 m!4167881))

(assert (=> b!3661308 m!4167883))

(assert (=> b!3661308 m!4167883))

(assert (=> b!3661308 m!4167885))

(assert (=> b!3661308 m!4167885))

(declare-fun m!4167895 () Bool)

(assert (=> b!3661308 m!4167895))

(assert (=> b!3661307 m!4167881))

(declare-fun m!4167897 () Bool)

(assert (=> b!3661307 m!4167897))

(assert (=> b!3661307 m!4167897))

(declare-fun m!4167899 () Bool)

(assert (=> b!3661307 m!4167899))

(assert (=> b!3661304 m!4167881))

(assert (=> b!3661304 m!4167883))

(assert (=> b!3661304 m!4167883))

(assert (=> b!3661304 m!4167885))

(assert (=> b!3660762 d!1075102))

(declare-fun d!1075104 () Bool)

(assert (=> d!1075104 (= (get!12733 lt!1273407) (v!38111 lt!1273407))))

(assert (=> b!3660762 d!1075104))

(declare-fun d!1075106 () Bool)

(declare-fun e!2267069 () Bool)

(assert (=> d!1075106 e!2267069))

(declare-fun res!1486400 () Bool)

(assert (=> d!1075106 (=> (not res!1486400) (not e!2267069))))

(assert (=> d!1075106 (= res!1486400 (isDefined!6457 (getRuleFromTag!1402 thiss!23823 rules!3307 (tag!6576 (rule!8610 (_1!22378 lt!1273386))))))))

(declare-fun lt!1273603 () Unit!55929)

(declare-fun choose!21676 (LexerInterface!5387 List!38751 List!38749 Token!10962) Unit!55929)

(assert (=> d!1075106 (= lt!1273603 (choose!21676 thiss!23823 rules!3307 lt!1273408 (_1!22378 lt!1273386)))))

(assert (=> d!1075106 (rulesInvariant!4784 thiss!23823 rules!3307)))

(assert (=> d!1075106 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1402 thiss!23823 rules!3307 lt!1273408 (_1!22378 lt!1273386)) lt!1273603)))

(declare-fun b!3661315 () Bool)

(declare-fun res!1486401 () Bool)

(assert (=> b!3661315 (=> (not res!1486401) (not e!2267069))))

(assert (=> b!3661315 (= res!1486401 (matchR!5126 (regex!5798 (get!12734 (getRuleFromTag!1402 thiss!23823 rules!3307 (tag!6576 (rule!8610 (_1!22378 lt!1273386)))))) (list!14328 (charsOf!3812 (_1!22378 lt!1273386)))))))

(declare-fun b!3661316 () Bool)

(assert (=> b!3661316 (= e!2267069 (= (rule!8610 (_1!22378 lt!1273386)) (get!12734 (getRuleFromTag!1402 thiss!23823 rules!3307 (tag!6576 (rule!8610 (_1!22378 lt!1273386)))))))))

(assert (= (and d!1075106 res!1486400) b!3661315))

(assert (= (and b!3661315 res!1486401) b!3661316))

(assert (=> d!1075106 m!4167217))

(assert (=> d!1075106 m!4167217))

(declare-fun m!4167901 () Bool)

(assert (=> d!1075106 m!4167901))

(declare-fun m!4167903 () Bool)

(assert (=> d!1075106 m!4167903))

(assert (=> d!1075106 m!4167285))

(assert (=> b!3661315 m!4167213))

(assert (=> b!3661315 m!4167295))

(assert (=> b!3661315 m!4167213))

(assert (=> b!3661315 m!4167295))

(declare-fun m!4167905 () Bool)

(assert (=> b!3661315 m!4167905))

(assert (=> b!3661315 m!4167217))

(assert (=> b!3661315 m!4167217))

(declare-fun m!4167907 () Bool)

(assert (=> b!3661315 m!4167907))

(assert (=> b!3661316 m!4167217))

(assert (=> b!3661316 m!4167217))

(assert (=> b!3661316 m!4167907))

(assert (=> b!3660762 d!1075106))

(declare-fun d!1075108 () Bool)

(assert (=> d!1075108 (isDefined!6456 (maxPrefix!2921 thiss!23823 rules!3307 (++!9614 lt!1273373 suffix!1395)))))

(declare-fun lt!1273724 () Unit!55929)

(declare-fun e!2267123 () Unit!55929)

(assert (=> d!1075108 (= lt!1273724 e!2267123)))

(declare-fun c!632856 () Bool)

(assert (=> d!1075108 (= c!632856 (isEmpty!22911 (maxPrefix!2921 thiss!23823 rules!3307 (++!9614 lt!1273373 suffix!1395))))))

(declare-fun lt!1273721 () Unit!55929)

(declare-fun lt!1273725 () Unit!55929)

(assert (=> d!1075108 (= lt!1273721 lt!1273725)))

(declare-fun e!2267124 () Bool)

(assert (=> d!1075108 e!2267124))

(declare-fun res!1486452 () Bool)

(assert (=> d!1075108 (=> (not res!1486452) (not e!2267124))))

(declare-fun lt!1273728 () Token!10962)

(assert (=> d!1075108 (= res!1486452 (isDefined!6457 (getRuleFromTag!1402 thiss!23823 rules!3307 (tag!6576 (rule!8610 lt!1273728)))))))

(assert (=> d!1075108 (= lt!1273725 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1402 thiss!23823 rules!3307 lt!1273373 lt!1273728))))

(declare-fun lt!1273732 () Unit!55929)

(declare-fun lt!1273723 () Unit!55929)

(assert (=> d!1075108 (= lt!1273732 lt!1273723)))

(declare-fun lt!1273722 () List!38749)

(assert (=> d!1075108 (isPrefix!3161 lt!1273722 (++!9614 lt!1273373 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!522 (List!38749 List!38749 List!38749) Unit!55929)

(assert (=> d!1075108 (= lt!1273723 (lemmaPrefixStaysPrefixWhenAddingToSuffix!522 lt!1273722 lt!1273373 suffix!1395))))

(assert (=> d!1075108 (= lt!1273722 (list!14328 (charsOf!3812 lt!1273728)))))

(declare-fun lt!1273731 () Unit!55929)

(declare-fun lt!1273719 () Unit!55929)

(assert (=> d!1075108 (= lt!1273731 lt!1273719)))

(declare-fun lt!1273729 () List!38749)

(declare-fun lt!1273717 () List!38749)

(assert (=> d!1075108 (isPrefix!3161 lt!1273729 (++!9614 lt!1273729 lt!1273717))))

(assert (=> d!1075108 (= lt!1273719 (lemmaConcatTwoListThenFirstIsPrefix!2080 lt!1273729 lt!1273717))))

(assert (=> d!1075108 (= lt!1273717 (_2!22378 (get!12733 (maxPrefix!2921 thiss!23823 rules!3307 lt!1273373))))))

(assert (=> d!1075108 (= lt!1273729 (list!14328 (charsOf!3812 lt!1273728)))))

(declare-datatypes ((List!38754 0))(
  ( (Nil!38630) (Cons!38630 (h!44050 Token!10962) (t!298617 List!38754)) )
))
(declare-fun head!7828 (List!38754) Token!10962)

(declare-datatypes ((IArray!23631 0))(
  ( (IArray!23632 (innerList!11873 List!38754)) )
))
(declare-datatypes ((Conc!11813 0))(
  ( (Node!11813 (left!30150 Conc!11813) (right!30480 Conc!11813) (csize!23856 Int) (cheight!12024 Int)) (Leaf!18323 (xs!15015 IArray!23631) (csize!23857 Int)) (Empty!11813) )
))
(declare-datatypes ((BalanceConc!23240 0))(
  ( (BalanceConc!23241 (c!632877 Conc!11813)) )
))
(declare-fun list!14332 (BalanceConc!23240) List!38754)

(declare-datatypes ((tuple2!38494 0))(
  ( (tuple2!38495 (_1!22381 BalanceConc!23240) (_2!22381 BalanceConc!23236)) )
))
(declare-fun lex!2554 (LexerInterface!5387 List!38751 BalanceConc!23236) tuple2!38494)

(assert (=> d!1075108 (= lt!1273728 (head!7828 (list!14332 (_1!22381 (lex!2554 thiss!23823 rules!3307 (seqFromList!4347 lt!1273373))))))))

(assert (=> d!1075108 (not (isEmpty!22909 rules!3307))))

(assert (=> d!1075108 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1065 thiss!23823 rules!3307 lt!1273373 suffix!1395) lt!1273724)))

(declare-fun b!3661415 () Bool)

(assert (=> b!3661415 (= e!2267124 (= (rule!8610 lt!1273728) (get!12734 (getRuleFromTag!1402 thiss!23823 rules!3307 (tag!6576 (rule!8610 lt!1273728))))))))

(declare-fun b!3661416 () Bool)

(declare-fun Unit!55946 () Unit!55929)

(assert (=> b!3661416 (= e!2267123 Unit!55946)))

(declare-fun lt!1273727 () List!38749)

(assert (=> b!3661416 (= lt!1273727 (++!9614 lt!1273373 suffix!1395))))

(declare-fun lt!1273720 () Unit!55929)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!558 (LexerInterface!5387 Rule!11396 List!38751 List!38749) Unit!55929)

(assert (=> b!3661416 (= lt!1273720 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!558 thiss!23823 (rule!8610 lt!1273728) rules!3307 lt!1273727))))

(assert (=> b!3661416 (isEmpty!22911 (maxPrefixOneRule!2059 thiss!23823 (rule!8610 lt!1273728) lt!1273727))))

(declare-fun lt!1273718 () Unit!55929)

(assert (=> b!3661416 (= lt!1273718 lt!1273720)))

(declare-fun lt!1273726 () List!38749)

(assert (=> b!3661416 (= lt!1273726 (list!14328 (charsOf!3812 lt!1273728)))))

(declare-fun lt!1273733 () Unit!55929)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!546 (LexerInterface!5387 Rule!11396 List!38749 List!38749) Unit!55929)

(assert (=> b!3661416 (= lt!1273733 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!546 thiss!23823 (rule!8610 lt!1273728) lt!1273726 (++!9614 lt!1273373 suffix!1395)))))

(assert (=> b!3661416 (not (matchR!5126 (regex!5798 (rule!8610 lt!1273728)) lt!1273726))))

(declare-fun lt!1273730 () Unit!55929)

(assert (=> b!3661416 (= lt!1273730 lt!1273733)))

(assert (=> b!3661416 false))

(declare-fun b!3661414 () Bool)

(declare-fun res!1486451 () Bool)

(assert (=> b!3661414 (=> (not res!1486451) (not e!2267124))))

(assert (=> b!3661414 (= res!1486451 (matchR!5126 (regex!5798 (get!12734 (getRuleFromTag!1402 thiss!23823 rules!3307 (tag!6576 (rule!8610 lt!1273728))))) (list!14328 (charsOf!3812 lt!1273728))))))

(declare-fun b!3661417 () Bool)

(declare-fun Unit!55947 () Unit!55929)

(assert (=> b!3661417 (= e!2267123 Unit!55947)))

(assert (= (and d!1075108 res!1486452) b!3661414))

(assert (= (and b!3661414 res!1486451) b!3661415))

(assert (= (and d!1075108 c!632856) b!3661416))

(assert (= (and d!1075108 (not c!632856)) b!3661417))

(assert (=> d!1075108 m!4167293))

(declare-fun m!4168061 () Bool)

(assert (=> d!1075108 m!4168061))

(declare-fun m!4168063 () Bool)

(assert (=> d!1075108 m!4168063))

(declare-fun m!4168065 () Bool)

(assert (=> d!1075108 m!4168065))

(declare-fun m!4168067 () Bool)

(assert (=> d!1075108 m!4168067))

(declare-fun m!4168069 () Bool)

(assert (=> d!1075108 m!4168069))

(declare-fun m!4168071 () Bool)

(assert (=> d!1075108 m!4168071))

(assert (=> d!1075108 m!4167195))

(declare-fun m!4168073 () Bool)

(assert (=> d!1075108 m!4168073))

(declare-fun m!4168075 () Bool)

(assert (=> d!1075108 m!4168075))

(declare-fun m!4168077 () Bool)

(assert (=> d!1075108 m!4168077))

(declare-fun m!4168079 () Bool)

(assert (=> d!1075108 m!4168079))

(declare-fun m!4168081 () Bool)

(assert (=> d!1075108 m!4168081))

(assert (=> d!1075108 m!4167195))

(assert (=> d!1075108 m!4168075))

(assert (=> d!1075108 m!4168069))

(assert (=> d!1075108 m!4168061))

(assert (=> d!1075108 m!4167195))

(assert (=> d!1075108 m!4168081))

(declare-fun m!4168083 () Bool)

(assert (=> d!1075108 m!4168083))

(declare-fun m!4168085 () Bool)

(assert (=> d!1075108 m!4168085))

(assert (=> d!1075108 m!4168079))

(declare-fun m!4168087 () Bool)

(assert (=> d!1075108 m!4168087))

(assert (=> d!1075108 m!4167231))

(declare-fun m!4168089 () Bool)

(assert (=> d!1075108 m!4168089))

(assert (=> d!1075108 m!4167231))

(declare-fun m!4168091 () Bool)

(assert (=> d!1075108 m!4168091))

(declare-fun m!4168093 () Bool)

(assert (=> d!1075108 m!4168093))

(assert (=> d!1075108 m!4168065))

(assert (=> d!1075108 m!4168075))

(declare-fun m!4168095 () Bool)

(assert (=> d!1075108 m!4168095))

(assert (=> b!3661415 m!4168079))

(assert (=> b!3661415 m!4168079))

(declare-fun m!4168097 () Bool)

(assert (=> b!3661415 m!4168097))

(assert (=> b!3661416 m!4168081))

(assert (=> b!3661416 m!4167195))

(declare-fun m!4168099 () Bool)

(assert (=> b!3661416 m!4168099))

(declare-fun m!4168101 () Bool)

(assert (=> b!3661416 m!4168101))

(declare-fun m!4168103 () Bool)

(assert (=> b!3661416 m!4168103))

(declare-fun m!4168105 () Bool)

(assert (=> b!3661416 m!4168105))

(assert (=> b!3661416 m!4168103))

(declare-fun m!4168107 () Bool)

(assert (=> b!3661416 m!4168107))

(assert (=> b!3661416 m!4167195))

(assert (=> b!3661416 m!4168081))

(assert (=> b!3661416 m!4168083))

(assert (=> b!3661414 m!4168079))

(assert (=> b!3661414 m!4168097))

(assert (=> b!3661414 m!4168083))

(declare-fun m!4168109 () Bool)

(assert (=> b!3661414 m!4168109))

(assert (=> b!3661414 m!4168081))

(assert (=> b!3661414 m!4168083))

(assert (=> b!3661414 m!4168079))

(assert (=> b!3661414 m!4168081))

(assert (=> b!3660762 d!1075108))

(declare-fun d!1075166 () Bool)

(declare-fun e!2267126 () Bool)

(assert (=> d!1075166 e!2267126))

(declare-fun res!1486454 () Bool)

(assert (=> d!1075166 (=> (not res!1486454) (not e!2267126))))

(declare-fun lt!1273734 () List!38749)

(assert (=> d!1075166 (= res!1486454 (= (content!5583 lt!1273734) ((_ map or) (content!5583 lt!1273373) (content!5583 suffix!1395))))))

(declare-fun e!2267125 () List!38749)

(assert (=> d!1075166 (= lt!1273734 e!2267125)))

(declare-fun c!632857 () Bool)

(assert (=> d!1075166 (= c!632857 ((_ is Nil!38625) lt!1273373))))

(assert (=> d!1075166 (= (++!9614 lt!1273373 suffix!1395) lt!1273734)))

(declare-fun b!3661419 () Bool)

(assert (=> b!3661419 (= e!2267125 (Cons!38625 (h!44045 lt!1273373) (++!9614 (t!298492 lt!1273373) suffix!1395)))))

(declare-fun b!3661418 () Bool)

(assert (=> b!3661418 (= e!2267125 suffix!1395)))

(declare-fun b!3661421 () Bool)

(assert (=> b!3661421 (= e!2267126 (or (not (= suffix!1395 Nil!38625)) (= lt!1273734 lt!1273373)))))

(declare-fun b!3661420 () Bool)

(declare-fun res!1486453 () Bool)

(assert (=> b!3661420 (=> (not res!1486453) (not e!2267126))))

(assert (=> b!3661420 (= res!1486453 (= (size!29512 lt!1273734) (+ (size!29512 lt!1273373) (size!29512 suffix!1395))))))

(assert (= (and d!1075166 c!632857) b!3661418))

(assert (= (and d!1075166 (not c!632857)) b!3661419))

(assert (= (and d!1075166 res!1486454) b!3661420))

(assert (= (and b!3661420 res!1486453) b!3661421))

(declare-fun m!4168111 () Bool)

(assert (=> d!1075166 m!4168111))

(declare-fun m!4168113 () Bool)

(assert (=> d!1075166 m!4168113))

(declare-fun m!4168115 () Bool)

(assert (=> d!1075166 m!4168115))

(declare-fun m!4168117 () Bool)

(assert (=> b!3661419 m!4168117))

(declare-fun m!4168119 () Bool)

(assert (=> b!3661420 m!4168119))

(assert (=> b!3661420 m!4167701))

(declare-fun m!4168121 () Bool)

(assert (=> b!3661420 m!4168121))

(assert (=> b!3660762 d!1075166))

(declare-fun d!1075168 () Bool)

(assert (=> d!1075168 (= (list!14328 lt!1273381) (list!14330 (c!632715 lt!1273381)))))

(declare-fun bs!572644 () Bool)

(assert (= bs!572644 d!1075168))

(declare-fun m!4168123 () Bool)

(assert (=> bs!572644 m!4168123))

(assert (=> b!3660762 d!1075168))

(assert (=> b!3660762 d!1075046))

(declare-fun d!1075170 () Bool)

(assert (=> d!1075170 (= (isDefined!6457 lt!1273405) (not (isEmpty!22913 lt!1273405)))))

(declare-fun bs!572645 () Bool)

(assert (= bs!572645 d!1075170))

(declare-fun m!4168125 () Bool)

(assert (=> bs!572645 m!4168125))

(assert (=> b!3660762 d!1075170))

(declare-fun b!3661424 () Bool)

(declare-fun e!2267127 () Bool)

(assert (=> b!3661424 (= e!2267127 (isPrefix!3161 (tail!5669 lt!1273388) (tail!5669 lt!1273408)))))

(declare-fun b!3661422 () Bool)

(declare-fun e!2267129 () Bool)

(assert (=> b!3661422 (= e!2267129 e!2267127)))

(declare-fun res!1486458 () Bool)

(assert (=> b!3661422 (=> (not res!1486458) (not e!2267127))))

(assert (=> b!3661422 (= res!1486458 (not ((_ is Nil!38625) lt!1273408)))))

(declare-fun b!3661423 () Bool)

(declare-fun res!1486457 () Bool)

(assert (=> b!3661423 (=> (not res!1486457) (not e!2267127))))

(assert (=> b!3661423 (= res!1486457 (= (head!7826 lt!1273388) (head!7826 lt!1273408)))))

(declare-fun d!1075172 () Bool)

(declare-fun e!2267128 () Bool)

(assert (=> d!1075172 e!2267128))

(declare-fun res!1486456 () Bool)

(assert (=> d!1075172 (=> res!1486456 e!2267128)))

(declare-fun lt!1273735 () Bool)

(assert (=> d!1075172 (= res!1486456 (not lt!1273735))))

(assert (=> d!1075172 (= lt!1273735 e!2267129)))

(declare-fun res!1486455 () Bool)

(assert (=> d!1075172 (=> res!1486455 e!2267129)))

(assert (=> d!1075172 (= res!1486455 ((_ is Nil!38625) lt!1273388))))

(assert (=> d!1075172 (= (isPrefix!3161 lt!1273388 lt!1273408) lt!1273735)))

(declare-fun b!3661425 () Bool)

(assert (=> b!3661425 (= e!2267128 (>= (size!29512 lt!1273408) (size!29512 lt!1273388)))))

(assert (= (and d!1075172 (not res!1486455)) b!3661422))

(assert (= (and b!3661422 res!1486458) b!3661423))

(assert (= (and b!3661423 res!1486457) b!3661424))

(assert (= (and d!1075172 (not res!1486456)) b!3661425))

(assert (=> b!3661424 m!4167419))

(assert (=> b!3661424 m!4167833))

(assert (=> b!3661424 m!4167419))

(assert (=> b!3661424 m!4167833))

(declare-fun m!4168127 () Bool)

(assert (=> b!3661424 m!4168127))

(assert (=> b!3661423 m!4167311))

(assert (=> b!3661423 m!4167837))

(assert (=> b!3661425 m!4167839))

(assert (=> b!3661425 m!4167271))

(assert (=> b!3660762 d!1075172))

(declare-fun d!1075174 () Bool)

(assert (=> d!1075174 (isPrefix!3161 lt!1273373 (++!9614 lt!1273373 suffix!1395))))

(declare-fun lt!1273736 () Unit!55929)

(assert (=> d!1075174 (= lt!1273736 (choose!21673 lt!1273373 suffix!1395))))

(assert (=> d!1075174 (= (lemmaConcatTwoListThenFirstIsPrefix!2080 lt!1273373 suffix!1395) lt!1273736)))

(declare-fun bs!572646 () Bool)

(assert (= bs!572646 d!1075174))

(assert (=> bs!572646 m!4167195))

(assert (=> bs!572646 m!4167195))

(declare-fun m!4168129 () Bool)

(assert (=> bs!572646 m!4168129))

(declare-fun m!4168131 () Bool)

(assert (=> bs!572646 m!4168131))

(assert (=> b!3660762 d!1075174))

(declare-fun b!3661541 () Bool)

(declare-fun e!2267192 () Bool)

(declare-datatypes ((tuple2!38496 0))(
  ( (tuple2!38497 (_1!22382 List!38749) (_2!22382 List!38749)) )
))
(declare-fun findLongestMatchInner!1067 (Regex!10557 List!38749 Int List!38749 List!38749 Int) tuple2!38496)

(assert (=> b!3661541 (= e!2267192 (matchR!5126 (regex!5798 (rule!8610 (_1!22378 lt!1273386))) (_1!22382 (findLongestMatchInner!1067 (regex!5798 (rule!8610 (_1!22378 lt!1273386))) Nil!38625 (size!29512 Nil!38625) lt!1273408 lt!1273408 (size!29512 lt!1273408)))))))

(declare-fun b!3661542 () Bool)

(declare-fun res!1486506 () Bool)

(declare-fun e!2267193 () Bool)

(assert (=> b!3661542 (=> (not res!1486506) (not e!2267193))))

(declare-fun lt!1273772 () Option!8224)

(assert (=> b!3661542 (= res!1486506 (< (size!29512 (_2!22378 (get!12733 lt!1273772))) (size!29512 lt!1273408)))))

(declare-fun b!3661543 () Bool)

(declare-fun res!1486505 () Bool)

(assert (=> b!3661543 (=> (not res!1486505) (not e!2267193))))

(assert (=> b!3661543 (= res!1486505 (= (++!9614 (list!14328 (charsOf!3812 (_1!22378 (get!12733 lt!1273772)))) (_2!22378 (get!12733 lt!1273772))) lt!1273408))))

(declare-fun b!3661544 () Bool)

(declare-fun res!1486511 () Bool)

(assert (=> b!3661544 (=> (not res!1486511) (not e!2267193))))

(assert (=> b!3661544 (= res!1486511 (= (value!185703 (_1!22378 (get!12733 lt!1273772))) (apply!9300 (transformation!5798 (rule!8610 (_1!22378 (get!12733 lt!1273772)))) (seqFromList!4347 (originalCharacters!6512 (_1!22378 (get!12733 lt!1273772)))))))))

(declare-fun b!3661545 () Bool)

(declare-fun e!2267194 () Option!8224)

(assert (=> b!3661545 (= e!2267194 None!8223)))

(declare-fun b!3661547 () Bool)

(assert (=> b!3661547 (= e!2267193 (= (size!29511 (_1!22378 (get!12733 lt!1273772))) (size!29512 (originalCharacters!6512 (_1!22378 (get!12733 lt!1273772))))))))

(declare-fun b!3661548 () Bool)

(declare-fun res!1486508 () Bool)

(assert (=> b!3661548 (=> (not res!1486508) (not e!2267193))))

(assert (=> b!3661548 (= res!1486508 (= (rule!8610 (_1!22378 (get!12733 lt!1273772))) (rule!8610 (_1!22378 lt!1273386))))))

(declare-fun b!3661549 () Bool)

(declare-fun e!2267195 () Bool)

(assert (=> b!3661549 (= e!2267195 e!2267193)))

(declare-fun res!1486510 () Bool)

(assert (=> b!3661549 (=> (not res!1486510) (not e!2267193))))

(assert (=> b!3661549 (= res!1486510 (matchR!5126 (regex!5798 (rule!8610 (_1!22378 lt!1273386))) (list!14328 (charsOf!3812 (_1!22378 (get!12733 lt!1273772))))))))

(declare-fun d!1075176 () Bool)

(assert (=> d!1075176 e!2267195))

(declare-fun res!1486509 () Bool)

(assert (=> d!1075176 (=> res!1486509 e!2267195)))

(assert (=> d!1075176 (= res!1486509 (isEmpty!22911 lt!1273772))))

(assert (=> d!1075176 (= lt!1273772 e!2267194)))

(declare-fun c!632871 () Bool)

(declare-fun lt!1273773 () tuple2!38496)

(assert (=> d!1075176 (= c!632871 (isEmpty!22908 (_1!22382 lt!1273773)))))

(declare-fun findLongestMatch!982 (Regex!10557 List!38749) tuple2!38496)

(assert (=> d!1075176 (= lt!1273773 (findLongestMatch!982 (regex!5798 (rule!8610 (_1!22378 lt!1273386))) lt!1273408))))

(assert (=> d!1075176 (ruleValid!2062 thiss!23823 (rule!8610 (_1!22378 lt!1273386)))))

(assert (=> d!1075176 (= (maxPrefixOneRule!2059 thiss!23823 (rule!8610 (_1!22378 lt!1273386)) lt!1273408) lt!1273772)))

(declare-fun b!3661546 () Bool)

(assert (=> b!3661546 (= e!2267194 (Some!8223 (tuple2!38489 (Token!10963 (apply!9300 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))) (seqFromList!4347 (_1!22382 lt!1273773))) (rule!8610 (_1!22378 lt!1273386)) (size!29513 (seqFromList!4347 (_1!22382 lt!1273773))) (_1!22382 lt!1273773)) (_2!22382 lt!1273773))))))

(declare-fun lt!1273774 () Unit!55929)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1040 (Regex!10557 List!38749) Unit!55929)

(assert (=> b!3661546 (= lt!1273774 (longestMatchIsAcceptedByMatchOrIsEmpty!1040 (regex!5798 (rule!8610 (_1!22378 lt!1273386))) lt!1273408))))

(declare-fun res!1486507 () Bool)

(assert (=> b!3661546 (= res!1486507 (isEmpty!22908 (_1!22382 (findLongestMatchInner!1067 (regex!5798 (rule!8610 (_1!22378 lt!1273386))) Nil!38625 (size!29512 Nil!38625) lt!1273408 lt!1273408 (size!29512 lt!1273408)))))))

(assert (=> b!3661546 (=> res!1486507 e!2267192)))

(assert (=> b!3661546 e!2267192))

(declare-fun lt!1273775 () Unit!55929)

(assert (=> b!3661546 (= lt!1273775 lt!1273774)))

(declare-fun lt!1273776 () Unit!55929)

(assert (=> b!3661546 (= lt!1273776 (lemmaSemiInverse!1547 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))) (seqFromList!4347 (_1!22382 lt!1273773))))))

(assert (= (and d!1075176 c!632871) b!3661545))

(assert (= (and d!1075176 (not c!632871)) b!3661546))

(assert (= (and b!3661546 (not res!1486507)) b!3661541))

(assert (= (and d!1075176 (not res!1486509)) b!3661549))

(assert (= (and b!3661549 res!1486510) b!3661543))

(assert (= (and b!3661543 res!1486505) b!3661542))

(assert (= (and b!3661542 res!1486506) b!3661548))

(assert (= (and b!3661548 res!1486508) b!3661544))

(assert (= (and b!3661544 res!1486511) b!3661547))

(declare-fun m!4168229 () Bool)

(assert (=> b!3661546 m!4168229))

(declare-fun m!4168231 () Bool)

(assert (=> b!3661546 m!4168231))

(assert (=> b!3661546 m!4168229))

(declare-fun m!4168233 () Bool)

(assert (=> b!3661546 m!4168233))

(assert (=> b!3661546 m!4168229))

(declare-fun m!4168235 () Bool)

(assert (=> b!3661546 m!4168235))

(assert (=> b!3661546 m!4168229))

(assert (=> b!3661546 m!4167839))

(declare-fun m!4168237 () Bool)

(assert (=> b!3661546 m!4168237))

(declare-fun m!4168239 () Bool)

(assert (=> b!3661546 m!4168239))

(assert (=> b!3661546 m!4168239))

(assert (=> b!3661546 m!4167839))

(declare-fun m!4168241 () Bool)

(assert (=> b!3661546 m!4168241))

(declare-fun m!4168243 () Bool)

(assert (=> b!3661546 m!4168243))

(declare-fun m!4168245 () Bool)

(assert (=> b!3661544 m!4168245))

(declare-fun m!4168247 () Bool)

(assert (=> b!3661544 m!4168247))

(assert (=> b!3661544 m!4168247))

(declare-fun m!4168249 () Bool)

(assert (=> b!3661544 m!4168249))

(assert (=> b!3661548 m!4168245))

(assert (=> b!3661549 m!4168245))

(declare-fun m!4168251 () Bool)

(assert (=> b!3661549 m!4168251))

(assert (=> b!3661549 m!4168251))

(declare-fun m!4168253 () Bool)

(assert (=> b!3661549 m!4168253))

(assert (=> b!3661549 m!4168253))

(declare-fun m!4168255 () Bool)

(assert (=> b!3661549 m!4168255))

(assert (=> b!3661542 m!4168245))

(declare-fun m!4168257 () Bool)

(assert (=> b!3661542 m!4168257))

(assert (=> b!3661542 m!4167839))

(assert (=> b!3661543 m!4168245))

(assert (=> b!3661543 m!4168251))

(assert (=> b!3661543 m!4168251))

(assert (=> b!3661543 m!4168253))

(assert (=> b!3661543 m!4168253))

(declare-fun m!4168259 () Bool)

(assert (=> b!3661543 m!4168259))

(assert (=> b!3661547 m!4168245))

(declare-fun m!4168261 () Bool)

(assert (=> b!3661547 m!4168261))

(declare-fun m!4168263 () Bool)

(assert (=> d!1075176 m!4168263))

(declare-fun m!4168265 () Bool)

(assert (=> d!1075176 m!4168265))

(declare-fun m!4168267 () Bool)

(assert (=> d!1075176 m!4168267))

(declare-fun m!4168269 () Bool)

(assert (=> d!1075176 m!4168269))

(assert (=> b!3661541 m!4168239))

(assert (=> b!3661541 m!4167839))

(assert (=> b!3661541 m!4168239))

(assert (=> b!3661541 m!4167839))

(assert (=> b!3661541 m!4168241))

(declare-fun m!4168271 () Bool)

(assert (=> b!3661541 m!4168271))

(assert (=> b!3660742 d!1075176))

(declare-fun d!1075208 () Bool)

(assert (=> d!1075208 (= (_2!22378 lt!1273386) lt!1273403)))

(declare-fun lt!1273779 () Unit!55929)

(declare-fun choose!21678 (List!38749 List!38749 List!38749 List!38749 List!38749) Unit!55929)

(assert (=> d!1075208 (= lt!1273779 (choose!21678 lt!1273388 (_2!22378 lt!1273386) lt!1273388 lt!1273403 lt!1273408))))

(assert (=> d!1075208 (isPrefix!3161 lt!1273388 lt!1273408)))

(assert (=> d!1075208 (= (lemmaSamePrefixThenSameSuffix!1488 lt!1273388 (_2!22378 lt!1273386) lt!1273388 lt!1273403 lt!1273408) lt!1273779)))

(declare-fun bs!572649 () Bool)

(assert (= bs!572649 d!1075208))

(declare-fun m!4168273 () Bool)

(assert (=> bs!572649 m!4168273))

(assert (=> bs!572649 m!4167209))

(assert (=> b!3660742 d!1075208))

(declare-fun d!1075210 () Bool)

(assert (=> d!1075210 (= (maxPrefixOneRule!2059 thiss!23823 (rule!8610 (_1!22378 lt!1273386)) lt!1273408) (Some!8223 (tuple2!38489 (Token!10963 (apply!9300 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))) (seqFromList!4347 lt!1273388)) (rule!8610 (_1!22378 lt!1273386)) (size!29512 lt!1273388) lt!1273388) (_2!22378 lt!1273386))))))

(declare-fun lt!1273782 () Unit!55929)

(declare-fun choose!21679 (LexerInterface!5387 List!38751 List!38749 List!38749 List!38749 Rule!11396) Unit!55929)

(assert (=> d!1075210 (= lt!1273782 (choose!21679 thiss!23823 rules!3307 lt!1273388 lt!1273408 (_2!22378 lt!1273386) (rule!8610 (_1!22378 lt!1273386))))))

(assert (=> d!1075210 (not (isEmpty!22909 rules!3307))))

(assert (=> d!1075210 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1115 thiss!23823 rules!3307 lt!1273388 lt!1273408 (_2!22378 lt!1273386) (rule!8610 (_1!22378 lt!1273386))) lt!1273782)))

(declare-fun bs!572650 () Bool)

(assert (= bs!572650 d!1075210))

(assert (=> bs!572650 m!4167259))

(assert (=> bs!572650 m!4167293))

(assert (=> bs!572650 m!4167263))

(assert (=> bs!572650 m!4167269))

(assert (=> bs!572650 m!4167263))

(assert (=> bs!572650 m!4167271))

(declare-fun m!4168275 () Bool)

(assert (=> bs!572650 m!4168275))

(assert (=> b!3660742 d!1075210))

(declare-fun d!1075212 () Bool)

(declare-fun lt!1273785 () Int)

(assert (=> d!1075212 (>= lt!1273785 0)))

(declare-fun e!2267198 () Int)

(assert (=> d!1075212 (= lt!1273785 e!2267198)))

(declare-fun c!632874 () Bool)

(assert (=> d!1075212 (= c!632874 ((_ is Nil!38625) lt!1273388))))

(assert (=> d!1075212 (= (size!29512 lt!1273388) lt!1273785)))

(declare-fun b!3661554 () Bool)

(assert (=> b!3661554 (= e!2267198 0)))

(declare-fun b!3661555 () Bool)

(assert (=> b!3661555 (= e!2267198 (+ 1 (size!29512 (t!298492 lt!1273388))))))

(assert (= (and d!1075212 c!632874) b!3661554))

(assert (= (and d!1075212 (not c!632874)) b!3661555))

(declare-fun m!4168277 () Bool)

(assert (=> b!3661555 m!4168277))

(assert (=> b!3660742 d!1075212))

(declare-fun d!1075214 () Bool)

(declare-fun lt!1273786 () List!38749)

(assert (=> d!1075214 (= (++!9614 lt!1273388 lt!1273786) lt!1273408)))

(declare-fun e!2267199 () List!38749)

(assert (=> d!1075214 (= lt!1273786 e!2267199)))

(declare-fun c!632875 () Bool)

(assert (=> d!1075214 (= c!632875 ((_ is Cons!38625) lt!1273388))))

(assert (=> d!1075214 (>= (size!29512 lt!1273408) (size!29512 lt!1273388))))

(assert (=> d!1075214 (= (getSuffix!1714 lt!1273408 lt!1273388) lt!1273786)))

(declare-fun b!3661556 () Bool)

(assert (=> b!3661556 (= e!2267199 (getSuffix!1714 (tail!5669 lt!1273408) (t!298492 lt!1273388)))))

(declare-fun b!3661557 () Bool)

(assert (=> b!3661557 (= e!2267199 lt!1273408)))

(assert (= (and d!1075214 c!632875) b!3661556))

(assert (= (and d!1075214 (not c!632875)) b!3661557))

(declare-fun m!4168279 () Bool)

(assert (=> d!1075214 m!4168279))

(assert (=> d!1075214 m!4167839))

(assert (=> d!1075214 m!4167271))

(assert (=> b!3661556 m!4167833))

(assert (=> b!3661556 m!4167833))

(declare-fun m!4168281 () Bool)

(assert (=> b!3661556 m!4168281))

(assert (=> b!3660742 d!1075214))

(declare-fun d!1075216 () Bool)

(assert (=> d!1075216 (= (apply!9300 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))) (seqFromList!4347 lt!1273388)) (dynLambda!16876 (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386)))) (seqFromList!4347 lt!1273388)))))

(declare-fun b_lambda!108613 () Bool)

(assert (=> (not b_lambda!108613) (not d!1075216)))

(declare-fun t!298596 () Bool)

(declare-fun tb!211601 () Bool)

(assert (=> (and b!3660761 (= (toValue!8090 (transformation!5798 anOtherTypeRule!33)) (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) t!298596) tb!211601))

(declare-fun result!257616 () Bool)

(assert (=> tb!211601 (= result!257616 (inv!21 (dynLambda!16876 (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386)))) (seqFromList!4347 lt!1273388))))))

(declare-fun m!4168283 () Bool)

(assert (=> tb!211601 m!4168283))

(assert (=> d!1075216 t!298596))

(declare-fun b_and!271815 () Bool)

(assert (= b_and!271771 (and (=> t!298596 result!257616) b_and!271815)))

(declare-fun tb!211603 () Bool)

(declare-fun t!298598 () Bool)

(assert (=> (and b!3660770 (= (toValue!8090 (transformation!5798 (h!44047 rules!3307))) (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) t!298598) tb!211603))

(declare-fun result!257618 () Bool)

(assert (= result!257618 result!257616))

(assert (=> d!1075216 t!298598))

(declare-fun b_and!271817 () Bool)

(assert (= b_and!271773 (and (=> t!298598 result!257618) b_and!271817)))

(declare-fun t!298600 () Bool)

(declare-fun tb!211605 () Bool)

(assert (=> (and b!3660777 (= (toValue!8090 (transformation!5798 (rule!8610 token!511))) (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) t!298600) tb!211605))

(declare-fun result!257620 () Bool)

(assert (= result!257620 result!257616))

(assert (=> d!1075216 t!298600))

(declare-fun b_and!271819 () Bool)

(assert (= b_and!271775 (and (=> t!298600 result!257620) b_and!271819)))

(declare-fun t!298602 () Bool)

(declare-fun tb!211607 () Bool)

(assert (=> (and b!3660778 (= (toValue!8090 (transformation!5798 rule!403)) (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) t!298602) tb!211607))

(declare-fun result!257622 () Bool)

(assert (= result!257622 result!257616))

(assert (=> d!1075216 t!298602))

(declare-fun b_and!271821 () Bool)

(assert (= b_and!271777 (and (=> t!298602 result!257622) b_and!271821)))

(assert (=> d!1075216 m!4167263))

(declare-fun m!4168285 () Bool)

(assert (=> d!1075216 m!4168285))

(assert (=> b!3660742 d!1075216))

(declare-fun d!1075218 () Bool)

(assert (=> d!1075218 (= (seqFromList!4347 lt!1273388) (fromListB!2007 lt!1273388))))

(declare-fun bs!572651 () Bool)

(assert (= bs!572651 d!1075218))

(declare-fun m!4168287 () Bool)

(assert (=> bs!572651 m!4168287))

(assert (=> b!3660742 d!1075218))

(declare-fun b!3661570 () Bool)

(declare-fun e!2267203 () Bool)

(declare-fun tp!1115226 () Bool)

(assert (=> b!3661570 (= e!2267203 tp!1115226)))

(declare-fun b!3661571 () Bool)

(declare-fun tp!1115229 () Bool)

(declare-fun tp!1115225 () Bool)

(assert (=> b!3661571 (= e!2267203 (and tp!1115229 tp!1115225))))

(declare-fun b!3661569 () Bool)

(declare-fun tp!1115227 () Bool)

(declare-fun tp!1115228 () Bool)

(assert (=> b!3661569 (= e!2267203 (and tp!1115227 tp!1115228))))

(assert (=> b!3660776 (= tp!1115156 e!2267203)))

(declare-fun b!3661568 () Bool)

(assert (=> b!3661568 (= e!2267203 tp_is_empty!18197)))

(assert (= (and b!3660776 ((_ is ElementMatch!10557) (regex!5798 rule!403))) b!3661568))

(assert (= (and b!3660776 ((_ is Concat!16586) (regex!5798 rule!403))) b!3661569))

(assert (= (and b!3660776 ((_ is Star!10557) (regex!5798 rule!403))) b!3661570))

(assert (= (and b!3660776 ((_ is Union!10557) (regex!5798 rule!403))) b!3661571))

(declare-fun b!3661574 () Bool)

(declare-fun e!2267204 () Bool)

(declare-fun tp!1115231 () Bool)

(assert (=> b!3661574 (= e!2267204 tp!1115231)))

(declare-fun b!3661575 () Bool)

(declare-fun tp!1115234 () Bool)

(declare-fun tp!1115230 () Bool)

(assert (=> b!3661575 (= e!2267204 (and tp!1115234 tp!1115230))))

(declare-fun b!3661573 () Bool)

(declare-fun tp!1115232 () Bool)

(declare-fun tp!1115233 () Bool)

(assert (=> b!3661573 (= e!2267204 (and tp!1115232 tp!1115233))))

(assert (=> b!3660750 (= tp!1115152 e!2267204)))

(declare-fun b!3661572 () Bool)

(assert (=> b!3661572 (= e!2267204 tp_is_empty!18197)))

(assert (= (and b!3660750 ((_ is ElementMatch!10557) (regex!5798 anOtherTypeRule!33))) b!3661572))

(assert (= (and b!3660750 ((_ is Concat!16586) (regex!5798 anOtherTypeRule!33))) b!3661573))

(assert (= (and b!3660750 ((_ is Star!10557) (regex!5798 anOtherTypeRule!33))) b!3661574))

(assert (= (and b!3660750 ((_ is Union!10557) (regex!5798 anOtherTypeRule!33))) b!3661575))

(declare-fun b!3661586 () Bool)

(declare-fun b_free!96629 () Bool)

(declare-fun b_next!97333 () Bool)

(assert (=> b!3661586 (= b_free!96629 (not b_next!97333))))

(declare-fun tb!211609 () Bool)

(declare-fun t!298604 () Bool)

(assert (=> (and b!3661586 (= (toValue!8090 (transformation!5798 (h!44047 (t!298494 rules!3307)))) (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) t!298604) tb!211609))

(declare-fun result!257628 () Bool)

(assert (= result!257628 result!257616))

(assert (=> d!1075216 t!298604))

(declare-fun tb!211611 () Bool)

(declare-fun t!298606 () Bool)

(assert (=> (and b!3661586 (= (toValue!8090 (transformation!5798 (h!44047 (t!298494 rules!3307)))) (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) t!298606) tb!211611))

(declare-fun result!257630 () Bool)

(assert (= result!257630 result!257564))

(assert (=> d!1074994 t!298606))

(declare-fun tb!211613 () Bool)

(declare-fun t!298608 () Bool)

(assert (=> (and b!3661586 (= (toValue!8090 (transformation!5798 (h!44047 (t!298494 rules!3307)))) (toValue!8090 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) t!298608) tb!211613))

(declare-fun result!257632 () Bool)

(assert (= result!257632 result!257574))

(assert (=> d!1074998 t!298608))

(assert (=> d!1074938 t!298606))

(assert (=> d!1074998 t!298606))

(declare-fun tp!1115245 () Bool)

(declare-fun b_and!271823 () Bool)

(assert (=> b!3661586 (= tp!1115245 (and (=> t!298608 result!257632) (=> t!298606 result!257630) (=> t!298604 result!257628) b_and!271823))))

(declare-fun b_free!96631 () Bool)

(declare-fun b_next!97335 () Bool)

(assert (=> b!3661586 (= b_free!96631 (not b_next!97335))))

(declare-fun t!298610 () Bool)

(declare-fun tb!211615 () Bool)

(assert (=> (and b!3661586 (= (toChars!7949 (transformation!5798 (h!44047 (t!298494 rules!3307)))) (toChars!7949 (transformation!5798 (rule!8610 token!511)))) t!298610) tb!211615))

(declare-fun result!257634 () Bool)

(assert (= result!257634 result!257512))

(assert (=> b!3660828 t!298610))

(declare-fun t!298612 () Bool)

(declare-fun tb!211617 () Bool)

(assert (=> (and b!3661586 (= (toChars!7949 (transformation!5798 (h!44047 (t!298494 rules!3307)))) (toChars!7949 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) t!298612) tb!211617))

(declare-fun result!257636 () Bool)

(assert (= result!257636 result!257556))

(assert (=> d!1074938 t!298612))

(assert (=> d!1075018 t!298610))

(declare-fun tb!211619 () Bool)

(declare-fun t!298614 () Bool)

(assert (=> (and b!3661586 (= (toChars!7949 (transformation!5798 (h!44047 (t!298494 rules!3307)))) (toChars!7949 (transformation!5798 (rule!8610 (_1!22378 lt!1273386))))) t!298614) tb!211619))

(declare-fun result!257638 () Bool)

(assert (= result!257638 result!257582))

(assert (=> d!1075046 t!298614))

(declare-fun tp!1115243 () Bool)

(declare-fun b_and!271825 () Bool)

(assert (=> b!3661586 (= tp!1115243 (and (=> t!298610 result!257634) (=> t!298612 result!257636) (=> t!298614 result!257638) b_and!271825))))

(declare-fun e!2267213 () Bool)

(assert (=> b!3661586 (= e!2267213 (and tp!1115245 tp!1115243))))

(declare-fun e!2267215 () Bool)

(declare-fun tp!1115244 () Bool)

(declare-fun b!3661585 () Bool)

(assert (=> b!3661585 (= e!2267215 (and tp!1115244 (inv!52090 (tag!6576 (h!44047 (t!298494 rules!3307)))) (inv!52094 (transformation!5798 (h!44047 (t!298494 rules!3307)))) e!2267213))))

(declare-fun b!3661584 () Bool)

(declare-fun e!2267214 () Bool)

(declare-fun tp!1115246 () Bool)

(assert (=> b!3661584 (= e!2267214 (and e!2267215 tp!1115246))))

(assert (=> b!3660734 (= tp!1115158 e!2267214)))

(assert (= b!3661585 b!3661586))

(assert (= b!3661584 b!3661585))

(assert (= (and b!3660734 ((_ is Cons!38627) (t!298494 rules!3307))) b!3661584))

(declare-fun m!4168289 () Bool)

(assert (=> b!3661585 m!4168289))

(declare-fun m!4168291 () Bool)

(assert (=> b!3661585 m!4168291))

(declare-fun b!3661591 () Bool)

(declare-fun e!2267219 () Bool)

(declare-fun tp!1115249 () Bool)

(assert (=> b!3661591 (= e!2267219 (and tp_is_empty!18197 tp!1115249))))

(assert (=> b!3660739 (= tp!1115154 e!2267219)))

(assert (= (and b!3660739 ((_ is Cons!38625) (originalCharacters!6512 token!511))) b!3661591))

(declare-fun b!3661592 () Bool)

(declare-fun e!2267220 () Bool)

(declare-fun tp!1115250 () Bool)

(assert (=> b!3661592 (= e!2267220 (and tp_is_empty!18197 tp!1115250))))

(assert (=> b!3660765 (= tp!1115146 e!2267220)))

(assert (= (and b!3660765 ((_ is Cons!38625) (t!298492 suffix!1395))) b!3661592))

(declare-fun b!3661595 () Bool)

(declare-fun e!2267221 () Bool)

(declare-fun tp!1115252 () Bool)

(assert (=> b!3661595 (= e!2267221 tp!1115252)))

(declare-fun b!3661596 () Bool)

(declare-fun tp!1115255 () Bool)

(declare-fun tp!1115251 () Bool)

(assert (=> b!3661596 (= e!2267221 (and tp!1115255 tp!1115251))))

(declare-fun b!3661594 () Bool)

(declare-fun tp!1115253 () Bool)

(declare-fun tp!1115254 () Bool)

(assert (=> b!3661594 (= e!2267221 (and tp!1115253 tp!1115254))))

(assert (=> b!3660775 (= tp!1115150 e!2267221)))

(declare-fun b!3661593 () Bool)

(assert (=> b!3661593 (= e!2267221 tp_is_empty!18197)))

(assert (= (and b!3660775 ((_ is ElementMatch!10557) (regex!5798 (h!44047 rules!3307)))) b!3661593))

(assert (= (and b!3660775 ((_ is Concat!16586) (regex!5798 (h!44047 rules!3307)))) b!3661594))

(assert (= (and b!3660775 ((_ is Star!10557) (regex!5798 (h!44047 rules!3307)))) b!3661595))

(assert (= (and b!3660775 ((_ is Union!10557) (regex!5798 (h!44047 rules!3307)))) b!3661596))

(declare-fun b!3661599 () Bool)

(declare-fun e!2267222 () Bool)

(declare-fun tp!1115257 () Bool)

(assert (=> b!3661599 (= e!2267222 tp!1115257)))

(declare-fun b!3661600 () Bool)

(declare-fun tp!1115260 () Bool)

(declare-fun tp!1115256 () Bool)

(assert (=> b!3661600 (= e!2267222 (and tp!1115260 tp!1115256))))

(declare-fun b!3661598 () Bool)

(declare-fun tp!1115258 () Bool)

(declare-fun tp!1115259 () Bool)

(assert (=> b!3661598 (= e!2267222 (and tp!1115258 tp!1115259))))

(assert (=> b!3660737 (= tp!1115148 e!2267222)))

(declare-fun b!3661597 () Bool)

(assert (=> b!3661597 (= e!2267222 tp_is_empty!18197)))

(assert (= (and b!3660737 ((_ is ElementMatch!10557) (regex!5798 (rule!8610 token!511)))) b!3661597))

(assert (= (and b!3660737 ((_ is Concat!16586) (regex!5798 (rule!8610 token!511)))) b!3661598))

(assert (= (and b!3660737 ((_ is Star!10557) (regex!5798 (rule!8610 token!511)))) b!3661599))

(assert (= (and b!3660737 ((_ is Union!10557) (regex!5798 (rule!8610 token!511)))) b!3661600))

(declare-fun b_lambda!108615 () Bool)

(assert (= b_lambda!108601 (or (and b!3660761 b_free!96611 (= (toChars!7949 (transformation!5798 anOtherTypeRule!33)) (toChars!7949 (transformation!5798 (rule!8610 token!511))))) (and b!3660770 b_free!96615 (= (toChars!7949 (transformation!5798 (h!44047 rules!3307))) (toChars!7949 (transformation!5798 (rule!8610 token!511))))) (and b!3660777 b_free!96619) (and b!3661586 b_free!96631 (= (toChars!7949 (transformation!5798 (h!44047 (t!298494 rules!3307)))) (toChars!7949 (transformation!5798 (rule!8610 token!511))))) (and b!3660778 b_free!96623 (= (toChars!7949 (transformation!5798 rule!403)) (toChars!7949 (transformation!5798 (rule!8610 token!511))))) b_lambda!108615)))

(declare-fun b_lambda!108617 () Bool)

(assert (= b_lambda!108577 (or (and b!3660761 b_free!96611 (= (toChars!7949 (transformation!5798 anOtherTypeRule!33)) (toChars!7949 (transformation!5798 (rule!8610 token!511))))) (and b!3660770 b_free!96615 (= (toChars!7949 (transformation!5798 (h!44047 rules!3307))) (toChars!7949 (transformation!5798 (rule!8610 token!511))))) (and b!3660777 b_free!96619) (and b!3661586 b_free!96631 (= (toChars!7949 (transformation!5798 (h!44047 (t!298494 rules!3307)))) (toChars!7949 (transformation!5798 (rule!8610 token!511))))) (and b!3660778 b_free!96623 (= (toChars!7949 (transformation!5798 rule!403)) (toChars!7949 (transformation!5798 (rule!8610 token!511))))) b_lambda!108617)))

(check-sat (not b!3660902) (not d!1075062) (not d!1075106) (not d!1075218) (not b!3661296) (not b_next!97323) (not bm!264811) (not d!1075166) (not bm!264806) (not d!1075032) (not b!3661165) (not d!1075170) (not b!3660807) (not b!3661201) (not bm!264836) (not b_next!97333) (not b!3661308) (not d!1074920) (not d!1075044) (not b_lambda!108613) (not b!3661547) (not b!3661149) (not b!3661424) (not b!3661216) (not d!1075046) (not b!3660836) (not b!3661246) (not d!1074922) (not d!1075016) (not b_lambda!108599) (not bm!264812) (not b!3661596) (not d!1075210) (not b_next!97313) (not b!3661300) (not b!3661542) (not b!3661420) (not d!1075006) (not b!3661316) (not b!3661600) (not d!1074924) (not b!3661570) (not b!3661063) (not b!3661423) (not d!1074892) (not b!3661574) (not b!3660911) (not d!1074996) (not b!3661544) (not tb!211601) tp_is_empty!18197 (not b!3661145) (not b!3661299) (not bm!264841) (not d!1075176) (not b!3660912) (not b_lambda!108593) (not b!3661297) (not tb!211573) (not b_next!97335) (not b!3661259) (not d!1075102) (not d!1075036) b_and!271821 (not d!1074938) (not d!1075034) (not b!3661097) (not bm!264835) (not b!3661266) (not b!3661598) (not b!3661196) (not b!3661584) (not b!3661150) (not b!3661309) (not d!1075168) (not b_lambda!108591) b_and!271817 (not b!3661208) b_and!271819 (not tb!211565) (not b!3661207) (not b!3661571) (not d!1074904) (not b!3661549) (not b!3661174) (not d!1075214) (not b!3661261) (not bm!264837) (not b!3661265) (not b_next!97317) (not b!3660829) (not b!3661546) (not tb!211509) (not d!1074992) (not b!3661585) (not d!1075024) (not d!1074932) (not b!3661211) (not d!1075028) (not b!3661595) (not d!1075084) b_and!271793 (not b!3661240) (not b!3660909) (not b!3661304) (not b_lambda!108597) (not b!3661543) (not b!3661154) (not d!1074880) (not b_next!97325) (not d!1075074) (not d!1074930) (not b!3661234) (not tb!211549) (not b_next!97319) b_and!271787 (not b!3661148) (not b!3661415) (not b!3661419) (not b!3661248) (not b!3661186) (not d!1075078) (not b!3661573) (not b_next!97321) (not b!3660838) b_and!271823 (not d!1075208) (not b!3661548) (not d!1075020) (not b!3660828) (not d!1074876) (not d!1074926) (not b!3661425) (not b!3661306) (not b!3661229) (not b!3661301) (not bm!264838) (not b!3661237) (not b_next!97327) (not tb!211557) (not d!1074998) b_and!271825 (not b!3661315) (not b!3661239) (not d!1075022) (not b!3660903) (not b!3661202) (not b!3661307) (not d!1074878) (not d!1075098) (not bm!264842) (not d!1075096) (not b!3661197) b_and!271789 (not b!3661260) (not d!1074928) b_and!271815 (not d!1075092) (not d!1075054) (not b!3661591) (not b!3661569) (not b!3661599) (not b_lambda!108615) (not b!3661267) (not b_lambda!108595) (not b!3661302) (not bm!264813) (not b!3661195) (not b!3661143) (not b!3661277) (not d!1075060) (not d!1074936) (not b!3661192) (not b!3661236) (not b!3661594) (not b!3661146) (not d!1075070) (not b!3660870) (not b!3661169) (not b_lambda!108617) (not b!3660914) (not d!1075012) (not b!3661278) (not b_next!97315) (not bm!264805) (not bm!264810) (not bm!264840) (not b!3661310) (not b!3661555) (not d!1075174) (not b!3661227) (not b!3661556) (not b!3660908) (not d!1075026) (not b!3661592) (not d!1075066) (not b!3661305) (not d!1075072) (not b!3661228) b_and!271791 (not b!3661245) (not b!3661151) (not b!3661294) (not b!3660784) (not b!3661575) (not d!1075050) (not b_lambda!108603) (not b!3661187) (not b!3661172) (not b!3661414) (not d!1075108) (not d!1075052) (not b!3661193) (not b!3661416) (not d!1075042) (not b!3661147) (not d!1075008) (not d!1075010) (not bm!264804) (not d!1074884) (not b!3661541) (not b!3661210) (not d!1075018))
(check-sat (not b_next!97323) (not b_next!97333) (not b_next!97313) (not b_next!97317) b_and!271793 (not b_next!97325) b_and!271789 b_and!271815 (not b_next!97315) b_and!271791 b_and!271821 (not b_next!97335) b_and!271817 b_and!271819 (not b_next!97319) b_and!271787 (not b_next!97321) b_and!271823 b_and!271825 (not b_next!97327))
