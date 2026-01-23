; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!167804 () Bool)

(assert start!167804)

(declare-fun b!1714835 () Bool)

(declare-fun b_free!46543 () Bool)

(declare-fun b_next!47247 () Bool)

(assert (=> b!1714835 (= b_free!46543 (not b_next!47247))))

(declare-fun tp!489825 () Bool)

(declare-fun b_and!124333 () Bool)

(assert (=> b!1714835 (= tp!489825 b_and!124333)))

(declare-fun b_free!46545 () Bool)

(declare-fun b_next!47249 () Bool)

(assert (=> b!1714835 (= b_free!46545 (not b_next!47249))))

(declare-fun tp!489835 () Bool)

(declare-fun b_and!124335 () Bool)

(assert (=> b!1714835 (= tp!489835 b_and!124335)))

(declare-fun b!1714834 () Bool)

(declare-fun b_free!46547 () Bool)

(declare-fun b_next!47251 () Bool)

(assert (=> b!1714834 (= b_free!46547 (not b_next!47251))))

(declare-fun tp!489833 () Bool)

(declare-fun b_and!124337 () Bool)

(assert (=> b!1714834 (= tp!489833 b_and!124337)))

(declare-fun b_free!46549 () Bool)

(declare-fun b_next!47253 () Bool)

(assert (=> b!1714834 (= b_free!46549 (not b_next!47253))))

(declare-fun tp!489826 () Bool)

(declare-fun b_and!124339 () Bool)

(assert (=> b!1714834 (= tp!489826 b_and!124339)))

(declare-fun b!1714818 () Bool)

(declare-fun b_free!46551 () Bool)

(declare-fun b_next!47255 () Bool)

(assert (=> b!1714818 (= b_free!46551 (not b_next!47255))))

(declare-fun tp!489827 () Bool)

(declare-fun b_and!124341 () Bool)

(assert (=> b!1714818 (= tp!489827 b_and!124341)))

(declare-fun b_free!46553 () Bool)

(declare-fun b_next!47257 () Bool)

(assert (=> b!1714818 (= b_free!46553 (not b_next!47257))))

(declare-fun tp!489828 () Bool)

(declare-fun b_and!124343 () Bool)

(assert (=> b!1714818 (= tp!489828 b_and!124343)))

(declare-fun b!1714850 () Bool)

(declare-fun e!1096625 () Bool)

(assert (=> b!1714850 (= e!1096625 true)))

(declare-fun b!1714849 () Bool)

(declare-fun e!1096624 () Bool)

(assert (=> b!1714849 (= e!1096624 e!1096625)))

(declare-fun b!1714848 () Bool)

(declare-fun e!1096623 () Bool)

(assert (=> b!1714848 (= e!1096623 e!1096624)))

(declare-fun b!1714830 () Bool)

(assert (=> b!1714830 e!1096623))

(assert (= b!1714849 b!1714850))

(assert (= b!1714848 b!1714849))

(assert (= b!1714830 b!1714848))

(declare-fun order!11293 () Int)

(declare-fun lambda!68939 () Int)

(declare-datatypes ((List!18796 0))(
  ( (Nil!18726) (Cons!18726 (h!24127 (_ BitVec 16)) (t!158629 List!18796)) )
))
(declare-datatypes ((TokenValue!3400 0))(
  ( (FloatLiteralValue!6800 (text!24245 List!18796)) (TokenValueExt!3399 (__x!12102 Int)) (Broken!17000 (value!103983 List!18796)) (Object!3469) (End!3400) (Def!3400) (Underscore!3400) (Match!3400) (Else!3400) (Error!3400) (Case!3400) (If!3400) (Extends!3400) (Abstract!3400) (Class!3400) (Val!3400) (DelimiterValue!6800 (del!3460 List!18796)) (KeywordValue!3406 (value!103984 List!18796)) (CommentValue!6800 (value!103985 List!18796)) (WhitespaceValue!6800 (value!103986 List!18796)) (IndentationValue!3400 (value!103987 List!18796)) (String!21333) (Int32!3400) (Broken!17001 (value!103988 List!18796)) (Boolean!3401) (Unit!32557) (OperatorValue!3403 (op!3460 List!18796)) (IdentifierValue!6800 (value!103989 List!18796)) (IdentifierValue!6801 (value!103990 List!18796)) (WhitespaceValue!6801 (value!103991 List!18796)) (True!6800) (False!6800) (Broken!17002 (value!103992 List!18796)) (Broken!17003 (value!103993 List!18796)) (True!6801) (RightBrace!3400) (RightBracket!3400) (Colon!3400) (Null!3400) (Comma!3400) (LeftBracket!3400) (False!6801) (LeftBrace!3400) (ImaginaryLiteralValue!3400 (text!24246 List!18796)) (StringLiteralValue!10200 (value!103994 List!18796)) (EOFValue!3400 (value!103995 List!18796)) (IdentValue!3400 (value!103996 List!18796)) (DelimiterValue!6801 (value!103997 List!18796)) (DedentValue!3400 (value!103998 List!18796)) (NewLineValue!3400 (value!103999 List!18796)) (IntegerValue!10200 (value!104000 (_ BitVec 32)) (text!24247 List!18796)) (IntegerValue!10201 (value!104001 Int) (text!24248 List!18796)) (Times!3400) (Or!3400) (Equal!3400) (Minus!3400) (Broken!17004 (value!104002 List!18796)) (And!3400) (Div!3400) (LessEqual!3400) (Mod!3400) (Concat!8038) (Not!3400) (Plus!3400) (SpaceValue!3400 (value!104003 List!18796)) (IntegerValue!10202 (value!104004 Int) (text!24249 List!18796)) (StringLiteralValue!10201 (text!24250 List!18796)) (FloatLiteralValue!6801 (text!24251 List!18796)) (BytesLiteralValue!3400 (value!104005 List!18796)) (CommentValue!6801 (value!104006 List!18796)) (StringLiteralValue!10202 (value!104007 List!18796)) (ErrorTokenValue!3400 (msg!3461 List!18796)) )
))
(declare-datatypes ((String!21334 0))(
  ( (String!21335 (value!104008 String)) )
))
(declare-datatypes ((C!9450 0))(
  ( (C!9451 (val!5321 Int)) )
))
(declare-datatypes ((List!18797 0))(
  ( (Nil!18727) (Cons!18727 (h!24128 C!9450) (t!158630 List!18797)) )
))
(declare-datatypes ((Regex!4638 0))(
  ( (ElementMatch!4638 (c!280963 C!9450)) (Concat!8039 (regOne!9788 Regex!4638) (regTwo!9788 Regex!4638)) (EmptyExpr!4638) (Star!4638 (reg!4967 Regex!4638)) (EmptyLang!4638) (Union!4638 (regOne!9789 Regex!4638) (regTwo!9789 Regex!4638)) )
))
(declare-datatypes ((IArray!12461 0))(
  ( (IArray!12462 (innerList!6288 List!18797)) )
))
(declare-datatypes ((Conc!6228 0))(
  ( (Node!6228 (left!14927 Conc!6228) (right!15257 Conc!6228) (csize!12686 Int) (cheight!6439 Int)) (Leaf!9104 (xs!9104 IArray!12461) (csize!12687 Int)) (Empty!6228) )
))
(declare-datatypes ((BalanceConc!12400 0))(
  ( (BalanceConc!12401 (c!280964 Conc!6228)) )
))
(declare-datatypes ((TokenValueInjection!6460 0))(
  ( (TokenValueInjection!6461 (toValue!4817 Int) (toChars!4676 Int)) )
))
(declare-datatypes ((Rule!6420 0))(
  ( (Rule!6421 (regex!3310 Regex!4638) (tag!3610 String!21334) (isSeparator!3310 Bool) (transformation!3310 TokenValueInjection!6460)) )
))
(declare-datatypes ((Token!6186 0))(
  ( (Token!6187 (value!104009 TokenValue!3400) (rule!5248 Rule!6420) (size!14885 Int) (originalCharacters!4124 List!18797)) )
))
(declare-datatypes ((tuple2!18440 0))(
  ( (tuple2!18441 (_1!10622 Token!6186) (_2!10622 List!18797)) )
))
(declare-fun lt!655066 () tuple2!18440)

(declare-fun order!11295 () Int)

(declare-fun dynLambda!8528 (Int Int) Int)

(declare-fun dynLambda!8529 (Int Int) Int)

(assert (=> b!1714850 (< (dynLambda!8528 order!11293 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066))))) (dynLambda!8529 order!11295 lambda!68939))))

(declare-fun order!11297 () Int)

(declare-fun dynLambda!8530 (Int Int) Int)

(assert (=> b!1714850 (< (dynLambda!8530 order!11297 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066))))) (dynLambda!8529 order!11295 lambda!68939))))

(declare-fun b!1714813 () Bool)

(declare-fun e!1096610 () Bool)

(declare-fun tp_is_empty!7519 () Bool)

(declare-fun tp!489832 () Bool)

(assert (=> b!1714813 (= e!1096610 (and tp_is_empty!7519 tp!489832))))

(declare-fun b!1714814 () Bool)

(declare-fun res!768847 () Bool)

(declare-fun e!1096615 () Bool)

(assert (=> b!1714814 (=> res!768847 e!1096615)))

(declare-fun suffix!1421 () List!18797)

(declare-fun lt!655074 () List!18797)

(declare-datatypes ((LexerInterface!2939 0))(
  ( (LexerInterfaceExt!2936 (__x!12103 Int)) (Lexer!2937) )
))
(declare-fun thiss!24550 () LexerInterface!2939)

(declare-datatypes ((List!18798 0))(
  ( (Nil!18728) (Cons!18728 (h!24129 Rule!6420) (t!158631 List!18798)) )
))
(declare-fun rules!3447 () List!18798)

(declare-fun prefixMatch!523 (Regex!4638 List!18797) Bool)

(declare-fun rulesRegex!668 (LexerInterface!2939 List!18798) Regex!4638)

(declare-fun ++!5135 (List!18797 List!18797) List!18797)

(declare-fun head!3853 (List!18797) C!9450)

(assert (=> b!1714814 (= res!768847 (prefixMatch!523 (rulesRegex!668 thiss!24550 rules!3447) (++!5135 lt!655074 (Cons!18727 (head!3853 suffix!1421) Nil!18727))))))

(declare-fun res!768843 () Bool)

(declare-fun e!1096603 () Bool)

(assert (=> start!167804 (=> (not res!768843) (not e!1096603))))

(assert (=> start!167804 (= res!768843 (is-Lexer!2937 thiss!24550))))

(assert (=> start!167804 e!1096603))

(assert (=> start!167804 e!1096610))

(declare-fun e!1096609 () Bool)

(assert (=> start!167804 e!1096609))

(assert (=> start!167804 true))

(declare-fun token!523 () Token!6186)

(declare-fun e!1096596 () Bool)

(declare-fun inv!24155 (Token!6186) Bool)

(assert (=> start!167804 (and (inv!24155 token!523) e!1096596)))

(declare-fun e!1096613 () Bool)

(assert (=> start!167804 e!1096613))

(declare-fun e!1096598 () Bool)

(declare-fun tp!489834 () Bool)

(declare-fun e!1096601 () Bool)

(declare-fun b!1714815 () Bool)

(declare-fun inv!24152 (String!21334) Bool)

(declare-fun inv!24156 (TokenValueInjection!6460) Bool)

(assert (=> b!1714815 (= e!1096601 (and tp!489834 (inv!24152 (tag!3610 (h!24129 rules!3447))) (inv!24156 (transformation!3310 (h!24129 rules!3447))) e!1096598))))

(declare-fun b!1714816 () Bool)

(declare-fun e!1096605 () Bool)

(assert (=> b!1714816 (= e!1096605 (not e!1096615))))

(declare-fun res!768844 () Bool)

(assert (=> b!1714816 (=> res!768844 e!1096615)))

(declare-fun rule!422 () Rule!6420)

(declare-fun matchR!2112 (Regex!4638 List!18797) Bool)

(assert (=> b!1714816 (= res!768844 (not (matchR!2112 (regex!3310 rule!422) lt!655074)))))

(declare-fun ruleValid!809 (LexerInterface!2939 Rule!6420) Bool)

(assert (=> b!1714816 (ruleValid!809 thiss!24550 rule!422)))

(declare-datatypes ((Unit!32558 0))(
  ( (Unit!32559) )
))
(declare-fun lt!655073 () Unit!32558)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!333 (LexerInterface!2939 Rule!6420 List!18798) Unit!32558)

(assert (=> b!1714816 (= lt!655073 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!333 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1714817 () Bool)

(declare-fun tp!489831 () Bool)

(assert (=> b!1714817 (= e!1096613 (and e!1096601 tp!489831))))

(assert (=> b!1714818 (= e!1096598 (and tp!489827 tp!489828))))

(declare-fun b!1714819 () Bool)

(declare-fun e!1096595 () Bool)

(declare-fun e!1096600 () Bool)

(assert (=> b!1714819 (= e!1096595 e!1096600)))

(declare-fun res!768848 () Bool)

(assert (=> b!1714819 (=> (not res!768848) (not e!1096600))))

(declare-fun lt!655059 () Rule!6420)

(declare-fun list!7563 (BalanceConc!12400) List!18797)

(declare-fun charsOf!1959 (Token!6186) BalanceConc!12400)

(assert (=> b!1714819 (= res!768848 (matchR!2112 (regex!3310 lt!655059) (list!7563 (charsOf!1959 (_1!10622 lt!655066)))))))

(declare-datatypes ((Option!3644 0))(
  ( (None!3643) (Some!3643 (v!25036 Rule!6420)) )
))
(declare-fun lt!655064 () Option!3644)

(declare-fun get!5517 (Option!3644) Rule!6420)

(assert (=> b!1714819 (= lt!655059 (get!5517 lt!655064))))

(declare-fun b!1714820 () Bool)

(declare-fun res!768851 () Bool)

(declare-fun e!1096614 () Bool)

(assert (=> b!1714820 (=> res!768851 e!1096614)))

(declare-fun lt!655060 () List!18797)

(assert (=> b!1714820 (= res!768851 (not (matchR!2112 (regex!3310 (rule!5248 (_1!10622 lt!655066))) lt!655060)))))

(declare-fun tp!489836 () Bool)

(declare-fun e!1096607 () Bool)

(declare-fun b!1714821 () Bool)

(declare-fun inv!21 (TokenValue!3400) Bool)

(assert (=> b!1714821 (= e!1096596 (and (inv!21 (value!104009 token!523)) e!1096607 tp!489836))))

(declare-fun b!1714822 () Bool)

(declare-fun res!768857 () Bool)

(assert (=> b!1714822 (=> res!768857 e!1096615)))

(declare-fun isEmpty!11771 (List!18797) Bool)

(assert (=> b!1714822 (= res!768857 (isEmpty!11771 suffix!1421))))

(declare-fun tp!489829 () Bool)

(declare-fun b!1714823 () Bool)

(declare-fun e!1096599 () Bool)

(assert (=> b!1714823 (= e!1096607 (and tp!489829 (inv!24152 (tag!3610 (rule!5248 token!523))) (inv!24156 (transformation!3310 (rule!5248 token!523))) e!1096599))))

(declare-fun e!1096602 () Bool)

(declare-fun b!1714824 () Bool)

(declare-fun tp!489830 () Bool)

(assert (=> b!1714824 (= e!1096609 (and tp!489830 (inv!24152 (tag!3610 rule!422)) (inv!24156 (transformation!3310 rule!422)) e!1096602))))

(declare-fun b!1714825 () Bool)

(declare-fun e!1096612 () Bool)

(declare-fun e!1096604 () Bool)

(assert (=> b!1714825 (= e!1096612 e!1096604)))

(declare-fun res!768860 () Bool)

(assert (=> b!1714825 (=> res!768860 e!1096604)))

(declare-fun lt!655061 () BalanceConc!12400)

(declare-fun dynLambda!8531 (Int TokenValue!3400) BalanceConc!12400)

(declare-fun dynLambda!8532 (Int BalanceConc!12400) TokenValue!3400)

(assert (=> b!1714825 (= res!768860 (not (= (list!7563 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061))) lt!655060)))))

(declare-fun lt!655072 () Unit!32558)

(declare-fun lemmaSemiInverse!456 (TokenValueInjection!6460 BalanceConc!12400) Unit!32558)

(assert (=> b!1714825 (= lt!655072 (lemmaSemiInverse!456 (transformation!3310 (rule!5248 (_1!10622 lt!655066))) lt!655061))))

(declare-fun b!1714826 () Bool)

(declare-fun res!768850 () Bool)

(assert (=> b!1714826 (=> (not res!768850) (not e!1096605))))

(declare-fun lt!655070 () tuple2!18440)

(assert (=> b!1714826 (= res!768850 (isEmpty!11771 (_2!10622 lt!655070)))))

(declare-fun b!1714827 () Bool)

(declare-fun e!1096606 () Bool)

(assert (=> b!1714827 (= e!1096606 e!1096605)))

(declare-fun res!768856 () Bool)

(assert (=> b!1714827 (=> (not res!768856) (not e!1096605))))

(assert (=> b!1714827 (= res!768856 (= (_1!10622 lt!655070) token!523))))

(declare-datatypes ((Option!3645 0))(
  ( (None!3644) (Some!3644 (v!25037 tuple2!18440)) )
))
(declare-fun lt!655063 () Option!3645)

(declare-fun get!5518 (Option!3645) tuple2!18440)

(assert (=> b!1714827 (= lt!655070 (get!5518 lt!655063))))

(declare-fun b!1714828 () Bool)

(assert (=> b!1714828 (= e!1096615 e!1096614)))

(declare-fun res!768849 () Bool)

(assert (=> b!1714828 (=> res!768849 e!1096614)))

(declare-fun lt!655076 () List!18797)

(declare-fun isPrefix!1551 (List!18797 List!18797) Bool)

(assert (=> b!1714828 (= res!768849 (not (isPrefix!1551 lt!655060 lt!655076)))))

(assert (=> b!1714828 (isPrefix!1551 lt!655060 (++!5135 lt!655060 (_2!10622 lt!655066)))))

(declare-fun lt!655062 () Unit!32558)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1061 (List!18797 List!18797) Unit!32558)

(assert (=> b!1714828 (= lt!655062 (lemmaConcatTwoListThenFirstIsPrefix!1061 lt!655060 (_2!10622 lt!655066)))))

(assert (=> b!1714828 (= lt!655060 (list!7563 lt!655061))))

(assert (=> b!1714828 (= lt!655061 (charsOf!1959 (_1!10622 lt!655066)))))

(assert (=> b!1714828 e!1096595))

(declare-fun res!768858 () Bool)

(assert (=> b!1714828 (=> (not res!768858) (not e!1096595))))

(declare-fun isDefined!2987 (Option!3644) Bool)

(assert (=> b!1714828 (= res!768858 (isDefined!2987 lt!655064))))

(declare-fun getRuleFromTag!360 (LexerInterface!2939 List!18798 String!21334) Option!3644)

(assert (=> b!1714828 (= lt!655064 (getRuleFromTag!360 thiss!24550 rules!3447 (tag!3610 (rule!5248 (_1!10622 lt!655066)))))))

(declare-fun lt!655067 () Unit!32558)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!360 (LexerInterface!2939 List!18798 List!18797 Token!6186) Unit!32558)

(assert (=> b!1714828 (= lt!655067 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!360 thiss!24550 rules!3447 lt!655076 (_1!10622 lt!655066)))))

(declare-fun lt!655075 () Option!3645)

(assert (=> b!1714828 (= lt!655066 (get!5518 lt!655075))))

(declare-fun lt!655077 () Unit!32558)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!463 (LexerInterface!2939 List!18798 List!18797 List!18797) Unit!32558)

(assert (=> b!1714828 (= lt!655077 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!463 thiss!24550 rules!3447 lt!655074 suffix!1421))))

(declare-fun maxPrefix!1493 (LexerInterface!2939 List!18798 List!18797) Option!3645)

(assert (=> b!1714828 (= lt!655075 (maxPrefix!1493 thiss!24550 rules!3447 lt!655076))))

(assert (=> b!1714828 (isPrefix!1551 lt!655074 lt!655076)))

(declare-fun lt!655065 () Unit!32558)

(assert (=> b!1714828 (= lt!655065 (lemmaConcatTwoListThenFirstIsPrefix!1061 lt!655074 suffix!1421))))

(assert (=> b!1714828 (= lt!655076 (++!5135 lt!655074 suffix!1421))))

(declare-fun b!1714829 () Bool)

(declare-fun res!768854 () Bool)

(assert (=> b!1714829 (=> res!768854 e!1096604)))

(assert (=> b!1714829 (= res!768854 (not (= lt!655061 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (value!104009 (_1!10622 lt!655066))))))))

(assert (=> b!1714830 (= e!1096614 e!1096612)))

(declare-fun res!768859 () Bool)

(assert (=> b!1714830 (=> res!768859 e!1096612)))

(declare-fun Forall!685 (Int) Bool)

(assert (=> b!1714830 (= res!768859 (not (Forall!685 lambda!68939)))))

(declare-fun lt!655071 () Unit!32558)

(declare-fun lemmaInv!517 (TokenValueInjection!6460) Unit!32558)

(assert (=> b!1714830 (= lt!655071 (lemmaInv!517 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))))))

(declare-fun b!1714831 () Bool)

(declare-fun res!768852 () Bool)

(assert (=> b!1714831 (=> (not res!768852) (not e!1096603))))

(declare-fun rulesInvariant!2608 (LexerInterface!2939 List!18798) Bool)

(assert (=> b!1714831 (= res!768852 (rulesInvariant!2608 thiss!24550 rules!3447))))

(declare-fun b!1714832 () Bool)

(assert (=> b!1714832 (= e!1096600 (= (rule!5248 (_1!10622 lt!655066)) lt!655059))))

(declare-fun b!1714833 () Bool)

(declare-fun rulesValidInductive!1093 (LexerInterface!2939 List!18798) Bool)

(assert (=> b!1714833 (= e!1096604 (rulesValidInductive!1093 thiss!24550 rules!3447))))

(declare-fun lt!655068 () Unit!32558)

(declare-fun lemmaCharactersSize!382 (Token!6186) Unit!32558)

(assert (=> b!1714833 (= lt!655068 (lemmaCharactersSize!382 (_1!10622 lt!655066)))))

(declare-fun lt!655069 () Unit!32558)

(declare-fun lemmaEqSameImage!235 (TokenValueInjection!6460 BalanceConc!12400 BalanceConc!12400) Unit!32558)

(declare-fun seqFromList!2284 (List!18797) BalanceConc!12400)

(assert (=> b!1714833 (= lt!655069 (lemmaEqSameImage!235 (transformation!3310 (rule!5248 (_1!10622 lt!655066))) lt!655061 (seqFromList!2284 (originalCharacters!4124 (_1!10622 lt!655066)))))))

(assert (=> b!1714834 (= e!1096602 (and tp!489833 tp!489826))))

(assert (=> b!1714835 (= e!1096599 (and tp!489825 tp!489835))))

(declare-fun b!1714836 () Bool)

(assert (=> b!1714836 (= e!1096603 e!1096606)))

(declare-fun res!768855 () Bool)

(assert (=> b!1714836 (=> (not res!768855) (not e!1096606))))

(declare-fun isDefined!2988 (Option!3645) Bool)

(assert (=> b!1714836 (= res!768855 (isDefined!2988 lt!655063))))

(assert (=> b!1714836 (= lt!655063 (maxPrefix!1493 thiss!24550 rules!3447 lt!655074))))

(assert (=> b!1714836 (= lt!655074 (list!7563 (charsOf!1959 token!523)))))

(declare-fun b!1714837 () Bool)

(declare-fun res!768853 () Bool)

(assert (=> b!1714837 (=> (not res!768853) (not e!1096603))))

(declare-fun contains!3332 (List!18798 Rule!6420) Bool)

(assert (=> b!1714837 (= res!768853 (contains!3332 rules!3447 rule!422))))

(declare-fun b!1714838 () Bool)

(declare-fun res!768846 () Bool)

(assert (=> b!1714838 (=> (not res!768846) (not e!1096603))))

(declare-fun isEmpty!11772 (List!18798) Bool)

(assert (=> b!1714838 (= res!768846 (not (isEmpty!11772 rules!3447)))))

(declare-fun b!1714839 () Bool)

(declare-fun res!768845 () Bool)

(assert (=> b!1714839 (=> (not res!768845) (not e!1096605))))

(assert (=> b!1714839 (= res!768845 (= (rule!5248 token!523) rule!422))))

(assert (= (and start!167804 res!768843) b!1714838))

(assert (= (and b!1714838 res!768846) b!1714831))

(assert (= (and b!1714831 res!768852) b!1714837))

(assert (= (and b!1714837 res!768853) b!1714836))

(assert (= (and b!1714836 res!768855) b!1714827))

(assert (= (and b!1714827 res!768856) b!1714826))

(assert (= (and b!1714826 res!768850) b!1714839))

(assert (= (and b!1714839 res!768845) b!1714816))

(assert (= (and b!1714816 (not res!768844)) b!1714822))

(assert (= (and b!1714822 (not res!768857)) b!1714814))

(assert (= (and b!1714814 (not res!768847)) b!1714828))

(assert (= (and b!1714828 res!768858) b!1714819))

(assert (= (and b!1714819 res!768848) b!1714832))

(assert (= (and b!1714828 (not res!768849)) b!1714820))

(assert (= (and b!1714820 (not res!768851)) b!1714830))

(assert (= (and b!1714830 (not res!768859)) b!1714825))

(assert (= (and b!1714825 (not res!768860)) b!1714829))

(assert (= (and b!1714829 (not res!768854)) b!1714833))

(assert (= (and start!167804 (is-Cons!18727 suffix!1421)) b!1714813))

(assert (= b!1714824 b!1714834))

(assert (= start!167804 b!1714824))

(assert (= b!1714823 b!1714835))

(assert (= b!1714821 b!1714823))

(assert (= start!167804 b!1714821))

(assert (= b!1714815 b!1714818))

(assert (= b!1714817 b!1714815))

(assert (= (and start!167804 (is-Cons!18728 rules!3447)) b!1714817))

(declare-fun b_lambda!54145 () Bool)

(assert (=> (not b_lambda!54145) (not b!1714825)))

(declare-fun tb!101251 () Bool)

(declare-fun t!158612 () Bool)

(assert (=> (and b!1714835 (= (toChars!4676 (transformation!3310 (rule!5248 token!523))) (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066))))) t!158612) tb!101251))

(declare-fun e!1096628 () Bool)

(declare-fun b!1714855 () Bool)

(declare-fun tp!489839 () Bool)

(declare-fun inv!24157 (Conc!6228) Bool)

(assert (=> b!1714855 (= e!1096628 (and (inv!24157 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061)))) tp!489839))))

(declare-fun result!121666 () Bool)

(declare-fun inv!24158 (BalanceConc!12400) Bool)

(assert (=> tb!101251 (= result!121666 (and (inv!24158 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061))) e!1096628))))

(assert (= tb!101251 b!1714855))

(declare-fun m!2118929 () Bool)

(assert (=> b!1714855 m!2118929))

(declare-fun m!2118931 () Bool)

(assert (=> tb!101251 m!2118931))

(assert (=> b!1714825 t!158612))

(declare-fun b_and!124345 () Bool)

(assert (= b_and!124335 (and (=> t!158612 result!121666) b_and!124345)))

(declare-fun t!158614 () Bool)

(declare-fun tb!101253 () Bool)

(assert (=> (and b!1714834 (= (toChars!4676 (transformation!3310 rule!422)) (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066))))) t!158614) tb!101253))

(declare-fun result!121670 () Bool)

(assert (= result!121670 result!121666))

(assert (=> b!1714825 t!158614))

(declare-fun b_and!124347 () Bool)

(assert (= b_and!124339 (and (=> t!158614 result!121670) b_and!124347)))

(declare-fun tb!101255 () Bool)

(declare-fun t!158616 () Bool)

(assert (=> (and b!1714818 (= (toChars!4676 (transformation!3310 (h!24129 rules!3447))) (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066))))) t!158616) tb!101255))

(declare-fun result!121672 () Bool)

(assert (= result!121672 result!121666))

(assert (=> b!1714825 t!158616))

(declare-fun b_and!124349 () Bool)

(assert (= b_and!124343 (and (=> t!158616 result!121672) b_and!124349)))

(declare-fun b_lambda!54147 () Bool)

(assert (=> (not b_lambda!54147) (not b!1714825)))

(declare-fun tb!101257 () Bool)

(declare-fun t!158618 () Bool)

(assert (=> (and b!1714835 (= (toValue!4817 (transformation!3310 (rule!5248 token!523))) (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066))))) t!158618) tb!101257))

(declare-fun result!121674 () Bool)

(assert (=> tb!101257 (= result!121674 (inv!21 (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061)))))

(declare-fun m!2118933 () Bool)

(assert (=> tb!101257 m!2118933))

(assert (=> b!1714825 t!158618))

(declare-fun b_and!124351 () Bool)

(assert (= b_and!124333 (and (=> t!158618 result!121674) b_and!124351)))

(declare-fun tb!101259 () Bool)

(declare-fun t!158620 () Bool)

(assert (=> (and b!1714834 (= (toValue!4817 (transformation!3310 rule!422)) (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066))))) t!158620) tb!101259))

(declare-fun result!121678 () Bool)

(assert (= result!121678 result!121674))

(assert (=> b!1714825 t!158620))

(declare-fun b_and!124353 () Bool)

(assert (= b_and!124337 (and (=> t!158620 result!121678) b_and!124353)))

(declare-fun tb!101261 () Bool)

(declare-fun t!158622 () Bool)

(assert (=> (and b!1714818 (= (toValue!4817 (transformation!3310 (h!24129 rules!3447))) (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066))))) t!158622) tb!101261))

(declare-fun result!121680 () Bool)

(assert (= result!121680 result!121674))

(assert (=> b!1714825 t!158622))

(declare-fun b_and!124355 () Bool)

(assert (= b_and!124341 (and (=> t!158622 result!121680) b_and!124355)))

(declare-fun b_lambda!54149 () Bool)

(assert (=> (not b_lambda!54149) (not b!1714829)))

(declare-fun tb!101263 () Bool)

(declare-fun t!158624 () Bool)

(assert (=> (and b!1714835 (= (toChars!4676 (transformation!3310 (rule!5248 token!523))) (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066))))) t!158624) tb!101263))

(declare-fun b!1714858 () Bool)

(declare-fun e!1096632 () Bool)

(declare-fun tp!489840 () Bool)

(assert (=> b!1714858 (= e!1096632 (and (inv!24157 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (value!104009 (_1!10622 lt!655066))))) tp!489840))))

(declare-fun result!121682 () Bool)

(assert (=> tb!101263 (= result!121682 (and (inv!24158 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (value!104009 (_1!10622 lt!655066)))) e!1096632))))

(assert (= tb!101263 b!1714858))

(declare-fun m!2118935 () Bool)

(assert (=> b!1714858 m!2118935))

(declare-fun m!2118937 () Bool)

(assert (=> tb!101263 m!2118937))

(assert (=> b!1714829 t!158624))

(declare-fun b_and!124357 () Bool)

(assert (= b_and!124345 (and (=> t!158624 result!121682) b_and!124357)))

(declare-fun tb!101265 () Bool)

(declare-fun t!158626 () Bool)

(assert (=> (and b!1714834 (= (toChars!4676 (transformation!3310 rule!422)) (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066))))) t!158626) tb!101265))

(declare-fun result!121684 () Bool)

(assert (= result!121684 result!121682))

(assert (=> b!1714829 t!158626))

(declare-fun b_and!124359 () Bool)

(assert (= b_and!124347 (and (=> t!158626 result!121684) b_and!124359)))

(declare-fun t!158628 () Bool)

(declare-fun tb!101267 () Bool)

(assert (=> (and b!1714818 (= (toChars!4676 (transformation!3310 (h!24129 rules!3447))) (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066))))) t!158628) tb!101267))

(declare-fun result!121686 () Bool)

(assert (= result!121686 result!121682))

(assert (=> b!1714829 t!158628))

(declare-fun b_and!124361 () Bool)

(assert (= b_and!124349 (and (=> t!158628 result!121686) b_and!124361)))

(declare-fun m!2118939 () Bool)

(assert (=> b!1714814 m!2118939))

(declare-fun m!2118941 () Bool)

(assert (=> b!1714814 m!2118941))

(declare-fun m!2118943 () Bool)

(assert (=> b!1714814 m!2118943))

(assert (=> b!1714814 m!2118939))

(assert (=> b!1714814 m!2118943))

(declare-fun m!2118945 () Bool)

(assert (=> b!1714814 m!2118945))

(declare-fun m!2118947 () Bool)

(assert (=> b!1714825 m!2118947))

(assert (=> b!1714825 m!2118947))

(declare-fun m!2118949 () Bool)

(assert (=> b!1714825 m!2118949))

(assert (=> b!1714825 m!2118949))

(declare-fun m!2118951 () Bool)

(assert (=> b!1714825 m!2118951))

(declare-fun m!2118953 () Bool)

(assert (=> b!1714825 m!2118953))

(declare-fun m!2118955 () Bool)

(assert (=> b!1714828 m!2118955))

(declare-fun m!2118957 () Bool)

(assert (=> b!1714828 m!2118957))

(declare-fun m!2118959 () Bool)

(assert (=> b!1714828 m!2118959))

(declare-fun m!2118961 () Bool)

(assert (=> b!1714828 m!2118961))

(declare-fun m!2118963 () Bool)

(assert (=> b!1714828 m!2118963))

(declare-fun m!2118965 () Bool)

(assert (=> b!1714828 m!2118965))

(declare-fun m!2118967 () Bool)

(assert (=> b!1714828 m!2118967))

(declare-fun m!2118969 () Bool)

(assert (=> b!1714828 m!2118969))

(declare-fun m!2118971 () Bool)

(assert (=> b!1714828 m!2118971))

(declare-fun m!2118973 () Bool)

(assert (=> b!1714828 m!2118973))

(assert (=> b!1714828 m!2118967))

(declare-fun m!2118975 () Bool)

(assert (=> b!1714828 m!2118975))

(declare-fun m!2118977 () Bool)

(assert (=> b!1714828 m!2118977))

(declare-fun m!2118979 () Bool)

(assert (=> b!1714828 m!2118979))

(declare-fun m!2118981 () Bool)

(assert (=> b!1714828 m!2118981))

(declare-fun m!2118983 () Bool)

(assert (=> b!1714828 m!2118983))

(declare-fun m!2118985 () Bool)

(assert (=> start!167804 m!2118985))

(declare-fun m!2118987 () Bool)

(assert (=> b!1714837 m!2118987))

(declare-fun m!2118989 () Bool)

(assert (=> b!1714815 m!2118989))

(declare-fun m!2118991 () Bool)

(assert (=> b!1714815 m!2118991))

(declare-fun m!2118993 () Bool)

(assert (=> b!1714822 m!2118993))

(declare-fun m!2118995 () Bool)

(assert (=> b!1714820 m!2118995))

(declare-fun m!2118997 () Bool)

(assert (=> b!1714823 m!2118997))

(declare-fun m!2118999 () Bool)

(assert (=> b!1714823 m!2118999))

(declare-fun m!2119001 () Bool)

(assert (=> b!1714826 m!2119001))

(assert (=> b!1714819 m!2118957))

(assert (=> b!1714819 m!2118957))

(declare-fun m!2119003 () Bool)

(assert (=> b!1714819 m!2119003))

(assert (=> b!1714819 m!2119003))

(declare-fun m!2119005 () Bool)

(assert (=> b!1714819 m!2119005))

(declare-fun m!2119007 () Bool)

(assert (=> b!1714819 m!2119007))

(declare-fun m!2119009 () Bool)

(assert (=> b!1714833 m!2119009))

(declare-fun m!2119011 () Bool)

(assert (=> b!1714833 m!2119011))

(declare-fun m!2119013 () Bool)

(assert (=> b!1714833 m!2119013))

(assert (=> b!1714833 m!2119013))

(declare-fun m!2119015 () Bool)

(assert (=> b!1714833 m!2119015))

(declare-fun m!2119017 () Bool)

(assert (=> b!1714838 m!2119017))

(declare-fun m!2119019 () Bool)

(assert (=> b!1714831 m!2119019))

(declare-fun m!2119021 () Bool)

(assert (=> b!1714827 m!2119021))

(declare-fun m!2119023 () Bool)

(assert (=> b!1714816 m!2119023))

(declare-fun m!2119025 () Bool)

(assert (=> b!1714816 m!2119025))

(declare-fun m!2119027 () Bool)

(assert (=> b!1714816 m!2119027))

(declare-fun m!2119029 () Bool)

(assert (=> b!1714829 m!2119029))

(declare-fun m!2119031 () Bool)

(assert (=> b!1714836 m!2119031))

(declare-fun m!2119033 () Bool)

(assert (=> b!1714836 m!2119033))

(declare-fun m!2119035 () Bool)

(assert (=> b!1714836 m!2119035))

(assert (=> b!1714836 m!2119035))

(declare-fun m!2119037 () Bool)

(assert (=> b!1714836 m!2119037))

(declare-fun m!2119039 () Bool)

(assert (=> b!1714830 m!2119039))

(declare-fun m!2119041 () Bool)

(assert (=> b!1714830 m!2119041))

(declare-fun m!2119043 () Bool)

(assert (=> b!1714821 m!2119043))

(declare-fun m!2119045 () Bool)

(assert (=> b!1714824 m!2119045))

(declare-fun m!2119047 () Bool)

(assert (=> b!1714824 m!2119047))

(push 1)

(assert (not b!1714827))

(assert b_and!124353)

(assert (not b_next!47251))

(assert (not b_lambda!54149))

(assert (not b!1714828))

(assert (not b!1714831))

(assert (not b!1714821))

(assert (not b!1714855))

(assert (not b!1714830))

(assert b_and!124357)

(assert (not b!1714814))

(assert (not b_next!47253))

(assert b_and!124361)

(assert (not b!1714823))

(assert (not b!1714817))

(assert (not b_next!47249))

(assert b_and!124355)

(assert (not b_next!47255))

(assert (not b!1714836))

(assert (not b!1714820))

(assert (not b!1714838))

(assert b_and!124359)

(assert (not b!1714819))

(assert (not b!1714816))

(assert (not b!1714824))

(assert b_and!124351)

(assert (not b!1714833))

(assert tp_is_empty!7519)

(assert (not b!1714822))

(assert (not b!1714815))

(assert (not b_next!47247))

(assert (not tb!101263))

(assert (not tb!101257))

(assert (not b!1714858))

(assert (not b!1714813))

(assert (not b!1714826))

(assert (not b!1714837))

(assert (not b_lambda!54145))

(assert (not b_next!47257))

(assert (not b_lambda!54147))

(assert (not b!1714825))

(assert (not start!167804))

(assert (not tb!101251))

(check-sat)

(pop 1)

(push 1)

(assert b_and!124353)

(assert b_and!124359)

(assert (not b_next!47251))

(assert b_and!124351)

(assert (not b_next!47247))

(assert b_and!124357)

(assert (not b_next!47253))

(assert b_and!124361)

(assert (not b_next!47257))

(assert (not b_next!47249))

(assert b_and!124355)

(assert (not b_next!47255))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!526294 () Bool)

(assert (=> d!526294 true))

(declare-fun lt!655137 () Bool)

(declare-fun lambda!68945 () Int)

(declare-fun forall!4252 (List!18798 Int) Bool)

(assert (=> d!526294 (= lt!655137 (forall!4252 rules!3447 lambda!68945))))

(declare-fun e!1096720 () Bool)

(assert (=> d!526294 (= lt!655137 e!1096720)))

(declare-fun res!768920 () Bool)

(assert (=> d!526294 (=> res!768920 e!1096720)))

(assert (=> d!526294 (= res!768920 (not (is-Cons!18728 rules!3447)))))

(assert (=> d!526294 (= (rulesValidInductive!1093 thiss!24550 rules!3447) lt!655137)))

(declare-fun b!1714963 () Bool)

(declare-fun e!1096719 () Bool)

(assert (=> b!1714963 (= e!1096720 e!1096719)))

(declare-fun res!768919 () Bool)

(assert (=> b!1714963 (=> (not res!768919) (not e!1096719))))

(assert (=> b!1714963 (= res!768919 (ruleValid!809 thiss!24550 (h!24129 rules!3447)))))

(declare-fun b!1714964 () Bool)

(assert (=> b!1714964 (= e!1096719 (rulesValidInductive!1093 thiss!24550 (t!158631 rules!3447)))))

(assert (= (and d!526294 (not res!768920)) b!1714963))

(assert (= (and b!1714963 res!768919) b!1714964))

(declare-fun m!2119169 () Bool)

(assert (=> d!526294 m!2119169))

(declare-fun m!2119171 () Bool)

(assert (=> b!1714963 m!2119171))

(declare-fun m!2119173 () Bool)

(assert (=> b!1714964 m!2119173))

(assert (=> b!1714833 d!526294))

(declare-fun d!526296 () Bool)

(declare-fun size!14887 (List!18797) Int)

(assert (=> d!526296 (= (size!14885 (_1!10622 lt!655066)) (size!14887 (originalCharacters!4124 (_1!10622 lt!655066))))))

(declare-fun Unit!32563 () Unit!32558)

(assert (=> d!526296 (= (lemmaCharactersSize!382 (_1!10622 lt!655066)) Unit!32563)))

(declare-fun bs!401998 () Bool)

(assert (= bs!401998 d!526296))

(declare-fun m!2119175 () Bool)

(assert (=> bs!401998 m!2119175))

(assert (=> b!1714833 d!526296))

(declare-fun b!1714973 () Bool)

(declare-fun e!1096725 () Bool)

(assert (=> b!1714973 (= e!1096725 true)))

(declare-fun d!526298 () Bool)

(assert (=> d!526298 e!1096725))

(assert (= d!526298 b!1714973))

(declare-fun order!11305 () Int)

(declare-fun lambda!68948 () Int)

(declare-fun dynLambda!8538 (Int Int) Int)

(assert (=> b!1714973 (< (dynLambda!8528 order!11293 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066))))) (dynLambda!8538 order!11305 lambda!68948))))

(assert (=> b!1714973 (< (dynLambda!8530 order!11297 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066))))) (dynLambda!8538 order!11305 lambda!68948))))

(assert (=> d!526298 (= (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061) (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (seqFromList!2284 (originalCharacters!4124 (_1!10622 lt!655066)))))))

(declare-fun lt!655140 () Unit!32558)

(declare-fun Forall2of!65 (Int BalanceConc!12400 BalanceConc!12400) Unit!32558)

(assert (=> d!526298 (= lt!655140 (Forall2of!65 lambda!68948 lt!655061 (seqFromList!2284 (originalCharacters!4124 (_1!10622 lt!655066)))))))

(assert (=> d!526298 (= (list!7563 lt!655061) (list!7563 (seqFromList!2284 (originalCharacters!4124 (_1!10622 lt!655066)))))))

(assert (=> d!526298 (= (lemmaEqSameImage!235 (transformation!3310 (rule!5248 (_1!10622 lt!655066))) lt!655061 (seqFromList!2284 (originalCharacters!4124 (_1!10622 lt!655066)))) lt!655140)))

(declare-fun b_lambda!54157 () Bool)

(assert (=> (not b_lambda!54157) (not d!526298)))

(assert (=> d!526298 t!158618))

(declare-fun b_and!124393 () Bool)

(assert (= b_and!124351 (and (=> t!158618 result!121674) b_and!124393)))

(assert (=> d!526298 t!158620))

(declare-fun b_and!124395 () Bool)

(assert (= b_and!124353 (and (=> t!158620 result!121678) b_and!124395)))

(assert (=> d!526298 t!158622))

(declare-fun b_and!124397 () Bool)

(assert (= b_and!124355 (and (=> t!158622 result!121680) b_and!124397)))

(declare-fun b_lambda!54159 () Bool)

(assert (=> (not b_lambda!54159) (not d!526298)))

(declare-fun tb!101287 () Bool)

(declare-fun t!158654 () Bool)

(assert (=> (and b!1714835 (= (toValue!4817 (transformation!3310 (rule!5248 token!523))) (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066))))) t!158654) tb!101287))

(declare-fun result!121710 () Bool)

(assert (=> tb!101287 (= result!121710 (inv!21 (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (seqFromList!2284 (originalCharacters!4124 (_1!10622 lt!655066))))))))

(declare-fun m!2119177 () Bool)

(assert (=> tb!101287 m!2119177))

(assert (=> d!526298 t!158654))

(declare-fun b_and!124399 () Bool)

(assert (= b_and!124393 (and (=> t!158654 result!121710) b_and!124399)))

(declare-fun tb!101289 () Bool)

(declare-fun t!158656 () Bool)

(assert (=> (and b!1714834 (= (toValue!4817 (transformation!3310 rule!422)) (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066))))) t!158656) tb!101289))

(declare-fun result!121712 () Bool)

(assert (= result!121712 result!121710))

(assert (=> d!526298 t!158656))

(declare-fun b_and!124401 () Bool)

(assert (= b_and!124395 (and (=> t!158656 result!121712) b_and!124401)))

(declare-fun t!158658 () Bool)

(declare-fun tb!101291 () Bool)

(assert (=> (and b!1714818 (= (toValue!4817 (transformation!3310 (h!24129 rules!3447))) (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066))))) t!158658) tb!101291))

(declare-fun result!121714 () Bool)

(assert (= result!121714 result!121710))

(assert (=> d!526298 t!158658))

(declare-fun b_and!124403 () Bool)

(assert (= b_and!124397 (and (=> t!158658 result!121714) b_and!124403)))

(assert (=> d!526298 m!2119013))

(declare-fun m!2119179 () Bool)

(assert (=> d!526298 m!2119179))

(assert (=> d!526298 m!2118947))

(assert (=> d!526298 m!2118979))

(assert (=> d!526298 m!2119013))

(declare-fun m!2119181 () Bool)

(assert (=> d!526298 m!2119181))

(assert (=> d!526298 m!2119013))

(declare-fun m!2119183 () Bool)

(assert (=> d!526298 m!2119183))

(assert (=> b!1714833 d!526298))

(declare-fun d!526300 () Bool)

(declare-fun fromListB!1050 (List!18797) BalanceConc!12400)

(assert (=> d!526300 (= (seqFromList!2284 (originalCharacters!4124 (_1!10622 lt!655066))) (fromListB!1050 (originalCharacters!4124 (_1!10622 lt!655066))))))

(declare-fun bs!401999 () Bool)

(assert (= bs!401999 d!526300))

(declare-fun m!2119185 () Bool)

(assert (=> bs!401999 m!2119185))

(assert (=> b!1714833 d!526300))

(declare-fun d!526302 () Bool)

(declare-fun isBalanced!1950 (Conc!6228) Bool)

(assert (=> d!526302 (= (inv!24158 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (value!104009 (_1!10622 lt!655066)))) (isBalanced!1950 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (value!104009 (_1!10622 lt!655066))))))))

(declare-fun bs!402000 () Bool)

(assert (= bs!402000 d!526302))

(declare-fun m!2119187 () Bool)

(assert (=> bs!402000 m!2119187))

(assert (=> tb!101263 d!526302))

(declare-fun d!526304 () Bool)

(declare-fun choose!10411 (Int) Bool)

(assert (=> d!526304 (= (Forall!685 lambda!68939) (choose!10411 lambda!68939))))

(declare-fun bs!402001 () Bool)

(assert (= bs!402001 d!526304))

(declare-fun m!2119189 () Bool)

(assert (=> bs!402001 m!2119189))

(assert (=> b!1714830 d!526304))

(declare-fun d!526306 () Bool)

(declare-fun e!1096729 () Bool)

(assert (=> d!526306 e!1096729))

(declare-fun res!768925 () Bool)

(assert (=> d!526306 (=> (not res!768925) (not e!1096729))))

(declare-fun semiInverseModEq!1308 (Int Int) Bool)

(assert (=> d!526306 (= res!768925 (semiInverseModEq!1308 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066))))))))

(declare-fun Unit!32564 () Unit!32558)

(assert (=> d!526306 (= (lemmaInv!517 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) Unit!32564)))

(declare-fun b!1714976 () Bool)

(declare-fun equivClasses!1249 (Int Int) Bool)

(assert (=> b!1714976 (= e!1096729 (equivClasses!1249 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066))))))))

(assert (= (and d!526306 res!768925) b!1714976))

(declare-fun m!2119191 () Bool)

(assert (=> d!526306 m!2119191))

(declare-fun m!2119193 () Bool)

(assert (=> b!1714976 m!2119193))

(assert (=> b!1714830 d!526306))

(declare-fun d!526308 () Bool)

(declare-fun res!768930 () Bool)

(declare-fun e!1096732 () Bool)

(assert (=> d!526308 (=> (not res!768930) (not e!1096732))))

(assert (=> d!526308 (= res!768930 (not (isEmpty!11771 (originalCharacters!4124 token!523))))))

(assert (=> d!526308 (= (inv!24155 token!523) e!1096732)))

(declare-fun b!1714981 () Bool)

(declare-fun res!768931 () Bool)

(assert (=> b!1714981 (=> (not res!768931) (not e!1096732))))

(assert (=> b!1714981 (= res!768931 (= (originalCharacters!4124 token!523) (list!7563 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 token!523))) (value!104009 token!523)))))))

(declare-fun b!1714982 () Bool)

(assert (=> b!1714982 (= e!1096732 (= (size!14885 token!523) (size!14887 (originalCharacters!4124 token!523))))))

(assert (= (and d!526308 res!768930) b!1714981))

(assert (= (and b!1714981 res!768931) b!1714982))

(declare-fun b_lambda!54161 () Bool)

(assert (=> (not b_lambda!54161) (not b!1714981)))

(declare-fun t!158660 () Bool)

(declare-fun tb!101293 () Bool)

(assert (=> (and b!1714835 (= (toChars!4676 (transformation!3310 (rule!5248 token!523))) (toChars!4676 (transformation!3310 (rule!5248 token!523)))) t!158660) tb!101293))

(declare-fun b!1714983 () Bool)

(declare-fun e!1096733 () Bool)

(declare-fun tp!489881 () Bool)

(assert (=> b!1714983 (= e!1096733 (and (inv!24157 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 token!523))) (value!104009 token!523)))) tp!489881))))

(declare-fun result!121716 () Bool)

(assert (=> tb!101293 (= result!121716 (and (inv!24158 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 token!523))) (value!104009 token!523))) e!1096733))))

(assert (= tb!101293 b!1714983))

(declare-fun m!2119195 () Bool)

(assert (=> b!1714983 m!2119195))

(declare-fun m!2119197 () Bool)

(assert (=> tb!101293 m!2119197))

(assert (=> b!1714981 t!158660))

(declare-fun b_and!124405 () Bool)

(assert (= b_and!124357 (and (=> t!158660 result!121716) b_and!124405)))

(declare-fun t!158662 () Bool)

(declare-fun tb!101295 () Bool)

(assert (=> (and b!1714834 (= (toChars!4676 (transformation!3310 rule!422)) (toChars!4676 (transformation!3310 (rule!5248 token!523)))) t!158662) tb!101295))

(declare-fun result!121718 () Bool)

(assert (= result!121718 result!121716))

(assert (=> b!1714981 t!158662))

(declare-fun b_and!124407 () Bool)

(assert (= b_and!124359 (and (=> t!158662 result!121718) b_and!124407)))

(declare-fun t!158664 () Bool)

(declare-fun tb!101297 () Bool)

(assert (=> (and b!1714818 (= (toChars!4676 (transformation!3310 (h!24129 rules!3447))) (toChars!4676 (transformation!3310 (rule!5248 token!523)))) t!158664) tb!101297))

(declare-fun result!121720 () Bool)

(assert (= result!121720 result!121716))

(assert (=> b!1714981 t!158664))

(declare-fun b_and!124409 () Bool)

(assert (= b_and!124361 (and (=> t!158664 result!121720) b_and!124409)))

(declare-fun m!2119199 () Bool)

(assert (=> d!526308 m!2119199))

(declare-fun m!2119201 () Bool)

(assert (=> b!1714981 m!2119201))

(assert (=> b!1714981 m!2119201))

(declare-fun m!2119203 () Bool)

(assert (=> b!1714981 m!2119203))

(declare-fun m!2119205 () Bool)

(assert (=> b!1714982 m!2119205))

(assert (=> start!167804 d!526308))

(declare-fun d!526310 () Bool)

(declare-fun res!768934 () Bool)

(declare-fun e!1096736 () Bool)

(assert (=> d!526310 (=> (not res!768934) (not e!1096736))))

(declare-fun rulesValid!1236 (LexerInterface!2939 List!18798) Bool)

(assert (=> d!526310 (= res!768934 (rulesValid!1236 thiss!24550 rules!3447))))

(assert (=> d!526310 (= (rulesInvariant!2608 thiss!24550 rules!3447) e!1096736)))

(declare-fun b!1714986 () Bool)

(declare-datatypes ((List!18802 0))(
  ( (Nil!18732) (Cons!18732 (h!24133 String!21334) (t!158681 List!18802)) )
))
(declare-fun noDuplicateTag!1236 (LexerInterface!2939 List!18798 List!18802) Bool)

(assert (=> b!1714986 (= e!1096736 (noDuplicateTag!1236 thiss!24550 rules!3447 Nil!18732))))

(assert (= (and d!526310 res!768934) b!1714986))

(declare-fun m!2119207 () Bool)

(assert (=> d!526310 m!2119207))

(declare-fun m!2119209 () Bool)

(assert (=> b!1714986 m!2119209))

(assert (=> b!1714831 d!526310))

(declare-fun d!526312 () Bool)

(declare-fun c!280970 () Bool)

(assert (=> d!526312 (= c!280970 (is-Node!6228 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061)))))))

(declare-fun e!1096741 () Bool)

(assert (=> d!526312 (= (inv!24157 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061)))) e!1096741)))

(declare-fun b!1714993 () Bool)

(declare-fun inv!24163 (Conc!6228) Bool)

(assert (=> b!1714993 (= e!1096741 (inv!24163 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061)))))))

(declare-fun b!1714994 () Bool)

(declare-fun e!1096742 () Bool)

(assert (=> b!1714994 (= e!1096741 e!1096742)))

(declare-fun res!768937 () Bool)

(assert (=> b!1714994 (= res!768937 (not (is-Leaf!9104 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061))))))))

(assert (=> b!1714994 (=> res!768937 e!1096742)))

(declare-fun b!1714995 () Bool)

(declare-fun inv!24164 (Conc!6228) Bool)

(assert (=> b!1714995 (= e!1096742 (inv!24164 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061)))))))

(assert (= (and d!526312 c!280970) b!1714993))

(assert (= (and d!526312 (not c!280970)) b!1714994))

(assert (= (and b!1714994 (not res!768937)) b!1714995))

(declare-fun m!2119211 () Bool)

(assert (=> b!1714993 m!2119211))

(declare-fun m!2119213 () Bool)

(assert (=> b!1714995 m!2119213))

(assert (=> b!1714855 d!526312))

(declare-fun d!526314 () Bool)

(assert (=> d!526314 (= (isEmpty!11772 rules!3447) (is-Nil!18728 rules!3447))))

(assert (=> b!1714838 d!526314))

(declare-fun d!526316 () Bool)

(declare-fun c!280971 () Bool)

(assert (=> d!526316 (= c!280971 (is-Node!6228 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (value!104009 (_1!10622 lt!655066))))))))

(declare-fun e!1096743 () Bool)

(assert (=> d!526316 (= (inv!24157 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (value!104009 (_1!10622 lt!655066))))) e!1096743)))

(declare-fun b!1714996 () Bool)

(assert (=> b!1714996 (= e!1096743 (inv!24163 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (value!104009 (_1!10622 lt!655066))))))))

(declare-fun b!1714997 () Bool)

(declare-fun e!1096744 () Bool)

(assert (=> b!1714997 (= e!1096743 e!1096744)))

(declare-fun res!768938 () Bool)

(assert (=> b!1714997 (= res!768938 (not (is-Leaf!9104 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (value!104009 (_1!10622 lt!655066)))))))))

(assert (=> b!1714997 (=> res!768938 e!1096744)))

(declare-fun b!1714998 () Bool)

(assert (=> b!1714998 (= e!1096744 (inv!24164 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (value!104009 (_1!10622 lt!655066))))))))

(assert (= (and d!526316 c!280971) b!1714996))

(assert (= (and d!526316 (not c!280971)) b!1714997))

(assert (= (and b!1714997 (not res!768938)) b!1714998))

(declare-fun m!2119215 () Bool)

(assert (=> b!1714996 m!2119215))

(declare-fun m!2119217 () Bool)

(assert (=> b!1714998 m!2119217))

(assert (=> b!1714858 d!526316))

(declare-fun b!1715009 () Bool)

(declare-fun e!1096752 () Bool)

(declare-fun inv!17 (TokenValue!3400) Bool)

(assert (=> b!1715009 (= e!1096752 (inv!17 (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061)))))

(declare-fun b!1715010 () Bool)

(declare-fun e!1096753 () Bool)

(declare-fun inv!15 (TokenValue!3400) Bool)

(assert (=> b!1715010 (= e!1096753 (inv!15 (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061)))))

(declare-fun b!1715011 () Bool)

(declare-fun res!768941 () Bool)

(assert (=> b!1715011 (=> res!768941 e!1096753)))

(assert (=> b!1715011 (= res!768941 (not (is-IntegerValue!10202 (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061))))))

(assert (=> b!1715011 (= e!1096752 e!1096753)))

(declare-fun b!1715012 () Bool)

(declare-fun e!1096751 () Bool)

(assert (=> b!1715012 (= e!1096751 e!1096752)))

(declare-fun c!280977 () Bool)

(assert (=> b!1715012 (= c!280977 (is-IntegerValue!10201 (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061)))))

(declare-fun d!526318 () Bool)

(declare-fun c!280976 () Bool)

(assert (=> d!526318 (= c!280976 (is-IntegerValue!10200 (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061)))))

(assert (=> d!526318 (= (inv!21 (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061)) e!1096751)))

(declare-fun b!1715013 () Bool)

(declare-fun inv!16 (TokenValue!3400) Bool)

(assert (=> b!1715013 (= e!1096751 (inv!16 (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061)))))

(assert (= (and d!526318 c!280976) b!1715013))

(assert (= (and d!526318 (not c!280976)) b!1715012))

(assert (= (and b!1715012 c!280977) b!1715009))

(assert (= (and b!1715012 (not c!280977)) b!1715011))

(assert (= (and b!1715011 (not res!768941)) b!1715010))

(declare-fun m!2119219 () Bool)

(assert (=> b!1715009 m!2119219))

(declare-fun m!2119221 () Bool)

(assert (=> b!1715010 m!2119221))

(declare-fun m!2119223 () Bool)

(assert (=> b!1715013 m!2119223))

(assert (=> tb!101257 d!526318))

(declare-fun b!1715042 () Bool)

(declare-fun e!1096774 () Bool)

(declare-fun e!1096773 () Bool)

(assert (=> b!1715042 (= e!1096774 e!1096773)))

(declare-fun c!280985 () Bool)

(assert (=> b!1715042 (= c!280985 (is-EmptyLang!4638 (regex!3310 lt!655059)))))

(declare-fun b!1715043 () Bool)

(declare-fun e!1096772 () Bool)

(declare-fun e!1096769 () Bool)

(assert (=> b!1715043 (= e!1096772 e!1096769)))

(declare-fun res!768963 () Bool)

(assert (=> b!1715043 (=> (not res!768963) (not e!1096769))))

(declare-fun lt!655143 () Bool)

(assert (=> b!1715043 (= res!768963 (not lt!655143))))

(declare-fun b!1715044 () Bool)

(declare-fun call!109627 () Bool)

(assert (=> b!1715044 (= e!1096774 (= lt!655143 call!109627))))

(declare-fun bm!109622 () Bool)

(assert (=> bm!109622 (= call!109627 (isEmpty!11771 (list!7563 (charsOf!1959 (_1!10622 lt!655066)))))))

(declare-fun b!1715045 () Bool)

(declare-fun e!1096768 () Bool)

(assert (=> b!1715045 (= e!1096768 (= (head!3853 (list!7563 (charsOf!1959 (_1!10622 lt!655066)))) (c!280963 (regex!3310 lt!655059))))))

(declare-fun b!1715046 () Bool)

(declare-fun res!768961 () Bool)

(assert (=> b!1715046 (=> (not res!768961) (not e!1096768))))

(declare-fun tail!2560 (List!18797) List!18797)

(assert (=> b!1715046 (= res!768961 (isEmpty!11771 (tail!2560 (list!7563 (charsOf!1959 (_1!10622 lt!655066))))))))

(declare-fun b!1715047 () Bool)

(declare-fun e!1096770 () Bool)

(declare-fun nullable!1395 (Regex!4638) Bool)

(assert (=> b!1715047 (= e!1096770 (nullable!1395 (regex!3310 lt!655059)))))

(declare-fun b!1715048 () Bool)

(declare-fun e!1096771 () Bool)

(assert (=> b!1715048 (= e!1096769 e!1096771)))

(declare-fun res!768965 () Bool)

(assert (=> b!1715048 (=> res!768965 e!1096771)))

(assert (=> b!1715048 (= res!768965 call!109627)))

(declare-fun b!1715049 () Bool)

(declare-fun res!768962 () Bool)

(assert (=> b!1715049 (=> res!768962 e!1096771)))

(assert (=> b!1715049 (= res!768962 (not (isEmpty!11771 (tail!2560 (list!7563 (charsOf!1959 (_1!10622 lt!655066)))))))))

(declare-fun b!1715050 () Bool)

(assert (=> b!1715050 (= e!1096773 (not lt!655143))))

(declare-fun b!1715051 () Bool)

(declare-fun res!768958 () Bool)

(assert (=> b!1715051 (=> (not res!768958) (not e!1096768))))

(assert (=> b!1715051 (= res!768958 (not call!109627))))

(declare-fun b!1715052 () Bool)

(declare-fun res!768959 () Bool)

(assert (=> b!1715052 (=> res!768959 e!1096772)))

(assert (=> b!1715052 (= res!768959 e!1096768)))

(declare-fun res!768960 () Bool)

(assert (=> b!1715052 (=> (not res!768960) (not e!1096768))))

(assert (=> b!1715052 (= res!768960 lt!655143)))

(declare-fun b!1715053 () Bool)

(declare-fun res!768964 () Bool)

(assert (=> b!1715053 (=> res!768964 e!1096772)))

(assert (=> b!1715053 (= res!768964 (not (is-ElementMatch!4638 (regex!3310 lt!655059))))))

(assert (=> b!1715053 (= e!1096773 e!1096772)))

(declare-fun b!1715054 () Bool)

(assert (=> b!1715054 (= e!1096771 (not (= (head!3853 (list!7563 (charsOf!1959 (_1!10622 lt!655066)))) (c!280963 (regex!3310 lt!655059)))))))

(declare-fun d!526320 () Bool)

(assert (=> d!526320 e!1096774))

(declare-fun c!280984 () Bool)

(assert (=> d!526320 (= c!280984 (is-EmptyExpr!4638 (regex!3310 lt!655059)))))

(assert (=> d!526320 (= lt!655143 e!1096770)))

(declare-fun c!280986 () Bool)

(assert (=> d!526320 (= c!280986 (isEmpty!11771 (list!7563 (charsOf!1959 (_1!10622 lt!655066)))))))

(declare-fun validRegex!1869 (Regex!4638) Bool)

(assert (=> d!526320 (validRegex!1869 (regex!3310 lt!655059))))

(assert (=> d!526320 (= (matchR!2112 (regex!3310 lt!655059) (list!7563 (charsOf!1959 (_1!10622 lt!655066)))) lt!655143)))

(declare-fun b!1715055 () Bool)

(declare-fun derivativeStep!1163 (Regex!4638 C!9450) Regex!4638)

(assert (=> b!1715055 (= e!1096770 (matchR!2112 (derivativeStep!1163 (regex!3310 lt!655059) (head!3853 (list!7563 (charsOf!1959 (_1!10622 lt!655066))))) (tail!2560 (list!7563 (charsOf!1959 (_1!10622 lt!655066))))))))

(assert (= (and d!526320 c!280986) b!1715047))

(assert (= (and d!526320 (not c!280986)) b!1715055))

(assert (= (and d!526320 c!280984) b!1715044))

(assert (= (and d!526320 (not c!280984)) b!1715042))

(assert (= (and b!1715042 c!280985) b!1715050))

(assert (= (and b!1715042 (not c!280985)) b!1715053))

(assert (= (and b!1715053 (not res!768964)) b!1715052))

(assert (= (and b!1715052 res!768960) b!1715051))

(assert (= (and b!1715051 res!768958) b!1715046))

(assert (= (and b!1715046 res!768961) b!1715045))

(assert (= (and b!1715052 (not res!768959)) b!1715043))

(assert (= (and b!1715043 res!768963) b!1715048))

(assert (= (and b!1715048 (not res!768965)) b!1715049))

(assert (= (and b!1715049 (not res!768962)) b!1715054))

(assert (= (or b!1715044 b!1715048 b!1715051) bm!109622))

(assert (=> bm!109622 m!2119003))

(declare-fun m!2119225 () Bool)

(assert (=> bm!109622 m!2119225))

(assert (=> d!526320 m!2119003))

(assert (=> d!526320 m!2119225))

(declare-fun m!2119227 () Bool)

(assert (=> d!526320 m!2119227))

(assert (=> b!1715054 m!2119003))

(declare-fun m!2119229 () Bool)

(assert (=> b!1715054 m!2119229))

(assert (=> b!1715046 m!2119003))

(declare-fun m!2119231 () Bool)

(assert (=> b!1715046 m!2119231))

(assert (=> b!1715046 m!2119231))

(declare-fun m!2119233 () Bool)

(assert (=> b!1715046 m!2119233))

(assert (=> b!1715055 m!2119003))

(assert (=> b!1715055 m!2119229))

(assert (=> b!1715055 m!2119229))

(declare-fun m!2119235 () Bool)

(assert (=> b!1715055 m!2119235))

(assert (=> b!1715055 m!2119003))

(assert (=> b!1715055 m!2119231))

(assert (=> b!1715055 m!2119235))

(assert (=> b!1715055 m!2119231))

(declare-fun m!2119237 () Bool)

(assert (=> b!1715055 m!2119237))

(assert (=> b!1715049 m!2119003))

(assert (=> b!1715049 m!2119231))

(assert (=> b!1715049 m!2119231))

(assert (=> b!1715049 m!2119233))

(declare-fun m!2119239 () Bool)

(assert (=> b!1715047 m!2119239))

(assert (=> b!1715045 m!2119003))

(assert (=> b!1715045 m!2119229))

(assert (=> b!1714819 d!526320))

(declare-fun d!526322 () Bool)

(declare-fun list!7565 (Conc!6228) List!18797)

(assert (=> d!526322 (= (list!7563 (charsOf!1959 (_1!10622 lt!655066))) (list!7565 (c!280964 (charsOf!1959 (_1!10622 lt!655066)))))))

(declare-fun bs!402002 () Bool)

(assert (= bs!402002 d!526322))

(declare-fun m!2119241 () Bool)

(assert (=> bs!402002 m!2119241))

(assert (=> b!1714819 d!526322))

(declare-fun d!526324 () Bool)

(declare-fun lt!655146 () BalanceConc!12400)

(assert (=> d!526324 (= (list!7563 lt!655146) (originalCharacters!4124 (_1!10622 lt!655066)))))

(assert (=> d!526324 (= lt!655146 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (value!104009 (_1!10622 lt!655066))))))

(assert (=> d!526324 (= (charsOf!1959 (_1!10622 lt!655066)) lt!655146)))

(declare-fun b_lambda!54163 () Bool)

(assert (=> (not b_lambda!54163) (not d!526324)))

(assert (=> d!526324 t!158624))

(declare-fun b_and!124411 () Bool)

(assert (= b_and!124405 (and (=> t!158624 result!121682) b_and!124411)))

(assert (=> d!526324 t!158626))

(declare-fun b_and!124413 () Bool)

(assert (= b_and!124407 (and (=> t!158626 result!121684) b_and!124413)))

(assert (=> d!526324 t!158628))

(declare-fun b_and!124415 () Bool)

(assert (= b_and!124409 (and (=> t!158628 result!121686) b_and!124415)))

(declare-fun m!2119243 () Bool)

(assert (=> d!526324 m!2119243))

(assert (=> d!526324 m!2119029))

(assert (=> b!1714819 d!526324))

(declare-fun d!526326 () Bool)

(assert (=> d!526326 (= (get!5517 lt!655064) (v!25036 lt!655064))))

(assert (=> b!1714819 d!526326))

(declare-fun d!526328 () Bool)

(declare-fun c!280989 () Bool)

(assert (=> d!526328 (= c!280989 (isEmpty!11771 (++!5135 lt!655074 (Cons!18727 (head!3853 suffix!1421) Nil!18727))))))

(declare-fun e!1096777 () Bool)

(assert (=> d!526328 (= (prefixMatch!523 (rulesRegex!668 thiss!24550 rules!3447) (++!5135 lt!655074 (Cons!18727 (head!3853 suffix!1421) Nil!18727))) e!1096777)))

(declare-fun b!1715060 () Bool)

(declare-fun lostCause!505 (Regex!4638) Bool)

(assert (=> b!1715060 (= e!1096777 (not (lostCause!505 (rulesRegex!668 thiss!24550 rules!3447))))))

(declare-fun b!1715061 () Bool)

(assert (=> b!1715061 (= e!1096777 (prefixMatch!523 (derivativeStep!1163 (rulesRegex!668 thiss!24550 rules!3447) (head!3853 (++!5135 lt!655074 (Cons!18727 (head!3853 suffix!1421) Nil!18727)))) (tail!2560 (++!5135 lt!655074 (Cons!18727 (head!3853 suffix!1421) Nil!18727)))))))

(assert (= (and d!526328 c!280989) b!1715060))

(assert (= (and d!526328 (not c!280989)) b!1715061))

(assert (=> d!526328 m!2118943))

(declare-fun m!2119245 () Bool)

(assert (=> d!526328 m!2119245))

(assert (=> b!1715060 m!2118939))

(declare-fun m!2119247 () Bool)

(assert (=> b!1715060 m!2119247))

(assert (=> b!1715061 m!2118943))

(declare-fun m!2119249 () Bool)

(assert (=> b!1715061 m!2119249))

(assert (=> b!1715061 m!2118939))

(assert (=> b!1715061 m!2119249))

(declare-fun m!2119251 () Bool)

(assert (=> b!1715061 m!2119251))

(assert (=> b!1715061 m!2118943))

(declare-fun m!2119253 () Bool)

(assert (=> b!1715061 m!2119253))

(assert (=> b!1715061 m!2119251))

(assert (=> b!1715061 m!2119253))

(declare-fun m!2119255 () Bool)

(assert (=> b!1715061 m!2119255))

(assert (=> b!1714814 d!526328))

(declare-fun d!526330 () Bool)

(declare-fun lt!655149 () Unit!32558)

(declare-fun lemma!319 (List!18798 LexerInterface!2939 List!18798) Unit!32558)

(assert (=> d!526330 (= lt!655149 (lemma!319 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!68951 () Int)

(declare-datatypes ((List!18803 0))(
  ( (Nil!18733) (Cons!18733 (h!24134 Regex!4638) (t!158682 List!18803)) )
))
(declare-fun generalisedUnion!327 (List!18803) Regex!4638)

(declare-fun map!3854 (List!18798 Int) List!18803)

(assert (=> d!526330 (= (rulesRegex!668 thiss!24550 rules!3447) (generalisedUnion!327 (map!3854 rules!3447 lambda!68951)))))

(declare-fun bs!402003 () Bool)

(assert (= bs!402003 d!526330))

(declare-fun m!2119257 () Bool)

(assert (=> bs!402003 m!2119257))

(declare-fun m!2119259 () Bool)

(assert (=> bs!402003 m!2119259))

(assert (=> bs!402003 m!2119259))

(declare-fun m!2119261 () Bool)

(assert (=> bs!402003 m!2119261))

(assert (=> b!1714814 d!526330))

(declare-fun e!1096783 () Bool)

(declare-fun b!1715073 () Bool)

(declare-fun lt!655152 () List!18797)

(assert (=> b!1715073 (= e!1096783 (or (not (= (Cons!18727 (head!3853 suffix!1421) Nil!18727) Nil!18727)) (= lt!655152 lt!655074)))))

(declare-fun d!526332 () Bool)

(assert (=> d!526332 e!1096783))

(declare-fun res!768970 () Bool)

(assert (=> d!526332 (=> (not res!768970) (not e!1096783))))

(declare-fun content!2667 (List!18797) (Set C!9450))

(assert (=> d!526332 (= res!768970 (= (content!2667 lt!655152) (set.union (content!2667 lt!655074) (content!2667 (Cons!18727 (head!3853 suffix!1421) Nil!18727)))))))

(declare-fun e!1096782 () List!18797)

(assert (=> d!526332 (= lt!655152 e!1096782)))

(declare-fun c!280992 () Bool)

(assert (=> d!526332 (= c!280992 (is-Nil!18727 lt!655074))))

(assert (=> d!526332 (= (++!5135 lt!655074 (Cons!18727 (head!3853 suffix!1421) Nil!18727)) lt!655152)))

(declare-fun b!1715071 () Bool)

(assert (=> b!1715071 (= e!1096782 (Cons!18727 (h!24128 lt!655074) (++!5135 (t!158630 lt!655074) (Cons!18727 (head!3853 suffix!1421) Nil!18727))))))

(declare-fun b!1715070 () Bool)

(assert (=> b!1715070 (= e!1096782 (Cons!18727 (head!3853 suffix!1421) Nil!18727))))

(declare-fun b!1715072 () Bool)

(declare-fun res!768971 () Bool)

(assert (=> b!1715072 (=> (not res!768971) (not e!1096783))))

(assert (=> b!1715072 (= res!768971 (= (size!14887 lt!655152) (+ (size!14887 lt!655074) (size!14887 (Cons!18727 (head!3853 suffix!1421) Nil!18727)))))))

(assert (= (and d!526332 c!280992) b!1715070))

(assert (= (and d!526332 (not c!280992)) b!1715071))

(assert (= (and d!526332 res!768970) b!1715072))

(assert (= (and b!1715072 res!768971) b!1715073))

(declare-fun m!2119263 () Bool)

(assert (=> d!526332 m!2119263))

(declare-fun m!2119265 () Bool)

(assert (=> d!526332 m!2119265))

(declare-fun m!2119267 () Bool)

(assert (=> d!526332 m!2119267))

(declare-fun m!2119269 () Bool)

(assert (=> b!1715071 m!2119269))

(declare-fun m!2119271 () Bool)

(assert (=> b!1715072 m!2119271))

(declare-fun m!2119273 () Bool)

(assert (=> b!1715072 m!2119273))

(declare-fun m!2119275 () Bool)

(assert (=> b!1715072 m!2119275))

(assert (=> b!1714814 d!526332))

(declare-fun d!526334 () Bool)

(assert (=> d!526334 (= (head!3853 suffix!1421) (h!24128 suffix!1421))))

(assert (=> b!1714814 d!526334))

(declare-fun d!526336 () Bool)

(declare-fun isEmpty!11775 (Option!3645) Bool)

(assert (=> d!526336 (= (isDefined!2988 lt!655063) (not (isEmpty!11775 lt!655063)))))

(declare-fun bs!402004 () Bool)

(assert (= bs!402004 d!526336))

(declare-fun m!2119277 () Bool)

(assert (=> bs!402004 m!2119277))

(assert (=> b!1714836 d!526336))

(declare-fun b!1715092 () Bool)

(declare-fun res!768992 () Bool)

(declare-fun e!1096791 () Bool)

(assert (=> b!1715092 (=> (not res!768992) (not e!1096791))))

(declare-fun lt!655166 () Option!3645)

(assert (=> b!1715092 (= res!768992 (= (++!5135 (list!7563 (charsOf!1959 (_1!10622 (get!5518 lt!655166)))) (_2!10622 (get!5518 lt!655166))) lt!655074))))

(declare-fun bm!109625 () Bool)

(declare-fun call!109630 () Option!3645)

(declare-fun maxPrefixOneRule!873 (LexerInterface!2939 Rule!6420 List!18797) Option!3645)

(assert (=> bm!109625 (= call!109630 (maxPrefixOneRule!873 thiss!24550 (h!24129 rules!3447) lt!655074))))

(declare-fun b!1715093 () Bool)

(declare-fun res!768990 () Bool)

(assert (=> b!1715093 (=> (not res!768990) (not e!1096791))))

(assert (=> b!1715093 (= res!768990 (matchR!2112 (regex!3310 (rule!5248 (_1!10622 (get!5518 lt!655166)))) (list!7563 (charsOf!1959 (_1!10622 (get!5518 lt!655166))))))))

(declare-fun b!1715094 () Bool)

(declare-fun e!1096790 () Option!3645)

(assert (=> b!1715094 (= e!1096790 call!109630)))

(declare-fun b!1715095 () Bool)

(declare-fun e!1096792 () Bool)

(assert (=> b!1715095 (= e!1096792 e!1096791)))

(declare-fun res!768989 () Bool)

(assert (=> b!1715095 (=> (not res!768989) (not e!1096791))))

(assert (=> b!1715095 (= res!768989 (isDefined!2988 lt!655166))))

(declare-fun b!1715096 () Bool)

(declare-fun res!768988 () Bool)

(assert (=> b!1715096 (=> (not res!768988) (not e!1096791))))

(declare-fun apply!5117 (TokenValueInjection!6460 BalanceConc!12400) TokenValue!3400)

(assert (=> b!1715096 (= res!768988 (= (value!104009 (_1!10622 (get!5518 lt!655166))) (apply!5117 (transformation!3310 (rule!5248 (_1!10622 (get!5518 lt!655166)))) (seqFromList!2284 (originalCharacters!4124 (_1!10622 (get!5518 lt!655166)))))))))

(declare-fun b!1715098 () Bool)

(declare-fun res!768987 () Bool)

(assert (=> b!1715098 (=> (not res!768987) (not e!1096791))))

(assert (=> b!1715098 (= res!768987 (= (list!7563 (charsOf!1959 (_1!10622 (get!5518 lt!655166)))) (originalCharacters!4124 (_1!10622 (get!5518 lt!655166)))))))

(declare-fun b!1715099 () Bool)

(assert (=> b!1715099 (= e!1096791 (contains!3332 rules!3447 (rule!5248 (_1!10622 (get!5518 lt!655166)))))))

(declare-fun b!1715100 () Bool)

(declare-fun res!768986 () Bool)

(assert (=> b!1715100 (=> (not res!768986) (not e!1096791))))

(assert (=> b!1715100 (= res!768986 (< (size!14887 (_2!10622 (get!5518 lt!655166))) (size!14887 lt!655074)))))

(declare-fun b!1715097 () Bool)

(declare-fun lt!655167 () Option!3645)

(declare-fun lt!655163 () Option!3645)

(assert (=> b!1715097 (= e!1096790 (ite (and (is-None!3644 lt!655167) (is-None!3644 lt!655163)) None!3644 (ite (is-None!3644 lt!655163) lt!655167 (ite (is-None!3644 lt!655167) lt!655163 (ite (>= (size!14885 (_1!10622 (v!25037 lt!655167))) (size!14885 (_1!10622 (v!25037 lt!655163)))) lt!655167 lt!655163)))))))

(assert (=> b!1715097 (= lt!655167 call!109630)))

(assert (=> b!1715097 (= lt!655163 (maxPrefix!1493 thiss!24550 (t!158631 rules!3447) lt!655074))))

(declare-fun d!526338 () Bool)

(assert (=> d!526338 e!1096792))

(declare-fun res!768991 () Bool)

(assert (=> d!526338 (=> res!768991 e!1096792)))

(assert (=> d!526338 (= res!768991 (isEmpty!11775 lt!655166))))

(assert (=> d!526338 (= lt!655166 e!1096790)))

(declare-fun c!280995 () Bool)

(assert (=> d!526338 (= c!280995 (and (is-Cons!18728 rules!3447) (is-Nil!18728 (t!158631 rules!3447))))))

(declare-fun lt!655164 () Unit!32558)

(declare-fun lt!655165 () Unit!32558)

(assert (=> d!526338 (= lt!655164 lt!655165)))

(assert (=> d!526338 (isPrefix!1551 lt!655074 lt!655074)))

(declare-fun lemmaIsPrefixRefl!1058 (List!18797 List!18797) Unit!32558)

(assert (=> d!526338 (= lt!655165 (lemmaIsPrefixRefl!1058 lt!655074 lt!655074))))

(assert (=> d!526338 (rulesValidInductive!1093 thiss!24550 rules!3447)))

(assert (=> d!526338 (= (maxPrefix!1493 thiss!24550 rules!3447 lt!655074) lt!655166)))

(assert (= (and d!526338 c!280995) b!1715094))

(assert (= (and d!526338 (not c!280995)) b!1715097))

(assert (= (or b!1715094 b!1715097) bm!109625))

(assert (= (and d!526338 (not res!768991)) b!1715095))

(assert (= (and b!1715095 res!768989) b!1715098))

(assert (= (and b!1715098 res!768987) b!1715100))

(assert (= (and b!1715100 res!768986) b!1715092))

(assert (= (and b!1715092 res!768992) b!1715096))

(assert (= (and b!1715096 res!768988) b!1715093))

(assert (= (and b!1715093 res!768990) b!1715099))

(declare-fun m!2119279 () Bool)

(assert (=> b!1715098 m!2119279))

(declare-fun m!2119281 () Bool)

(assert (=> b!1715098 m!2119281))

(assert (=> b!1715098 m!2119281))

(declare-fun m!2119283 () Bool)

(assert (=> b!1715098 m!2119283))

(declare-fun m!2119285 () Bool)

(assert (=> d!526338 m!2119285))

(declare-fun m!2119287 () Bool)

(assert (=> d!526338 m!2119287))

(declare-fun m!2119289 () Bool)

(assert (=> d!526338 m!2119289))

(assert (=> d!526338 m!2119009))

(assert (=> b!1715092 m!2119279))

(assert (=> b!1715092 m!2119281))

(assert (=> b!1715092 m!2119281))

(assert (=> b!1715092 m!2119283))

(assert (=> b!1715092 m!2119283))

(declare-fun m!2119291 () Bool)

(assert (=> b!1715092 m!2119291))

(assert (=> b!1715099 m!2119279))

(declare-fun m!2119293 () Bool)

(assert (=> b!1715099 m!2119293))

(assert (=> b!1715093 m!2119279))

(assert (=> b!1715093 m!2119281))

(assert (=> b!1715093 m!2119281))

(assert (=> b!1715093 m!2119283))

(assert (=> b!1715093 m!2119283))

(declare-fun m!2119295 () Bool)

(assert (=> b!1715093 m!2119295))

(declare-fun m!2119297 () Bool)

(assert (=> b!1715097 m!2119297))

(assert (=> b!1715096 m!2119279))

(declare-fun m!2119299 () Bool)

(assert (=> b!1715096 m!2119299))

(assert (=> b!1715096 m!2119299))

(declare-fun m!2119301 () Bool)

(assert (=> b!1715096 m!2119301))

(declare-fun m!2119303 () Bool)

(assert (=> bm!109625 m!2119303))

(assert (=> b!1715100 m!2119279))

(declare-fun m!2119305 () Bool)

(assert (=> b!1715100 m!2119305))

(assert (=> b!1715100 m!2119273))

(declare-fun m!2119307 () Bool)

(assert (=> b!1715095 m!2119307))

(assert (=> b!1714836 d!526338))

(declare-fun d!526340 () Bool)

(assert (=> d!526340 (= (list!7563 (charsOf!1959 token!523)) (list!7565 (c!280964 (charsOf!1959 token!523))))))

(declare-fun bs!402005 () Bool)

(assert (= bs!402005 d!526340))

(declare-fun m!2119309 () Bool)

(assert (=> bs!402005 m!2119309))

(assert (=> b!1714836 d!526340))

(declare-fun d!526342 () Bool)

(declare-fun lt!655168 () BalanceConc!12400)

(assert (=> d!526342 (= (list!7563 lt!655168) (originalCharacters!4124 token!523))))

(assert (=> d!526342 (= lt!655168 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 token!523))) (value!104009 token!523)))))

(assert (=> d!526342 (= (charsOf!1959 token!523) lt!655168)))

(declare-fun b_lambda!54165 () Bool)

(assert (=> (not b_lambda!54165) (not d!526342)))

(assert (=> d!526342 t!158660))

(declare-fun b_and!124417 () Bool)

(assert (= b_and!124411 (and (=> t!158660 result!121716) b_and!124417)))

(assert (=> d!526342 t!158662))

(declare-fun b_and!124419 () Bool)

(assert (= b_and!124413 (and (=> t!158662 result!121718) b_and!124419)))

(assert (=> d!526342 t!158664))

(declare-fun b_and!124421 () Bool)

(assert (= b_and!124415 (and (=> t!158664 result!121720) b_and!124421)))

(declare-fun m!2119311 () Bool)

(assert (=> d!526342 m!2119311))

(assert (=> d!526342 m!2119201))

(assert (=> b!1714836 d!526342))

(declare-fun d!526344 () Bool)

(assert (=> d!526344 (= (inv!24152 (tag!3610 (h!24129 rules!3447))) (= (mod (str.len (value!104008 (tag!3610 (h!24129 rules!3447)))) 2) 0))))

(assert (=> b!1714815 d!526344))

(declare-fun d!526346 () Bool)

(declare-fun res!768995 () Bool)

(declare-fun e!1096795 () Bool)

(assert (=> d!526346 (=> (not res!768995) (not e!1096795))))

(assert (=> d!526346 (= res!768995 (semiInverseModEq!1308 (toChars!4676 (transformation!3310 (h!24129 rules!3447))) (toValue!4817 (transformation!3310 (h!24129 rules!3447)))))))

(assert (=> d!526346 (= (inv!24156 (transformation!3310 (h!24129 rules!3447))) e!1096795)))

(declare-fun b!1715103 () Bool)

(assert (=> b!1715103 (= e!1096795 (equivClasses!1249 (toChars!4676 (transformation!3310 (h!24129 rules!3447))) (toValue!4817 (transformation!3310 (h!24129 rules!3447)))))))

(assert (= (and d!526346 res!768995) b!1715103))

(declare-fun m!2119313 () Bool)

(assert (=> d!526346 m!2119313))

(declare-fun m!2119315 () Bool)

(assert (=> b!1715103 m!2119315))

(assert (=> b!1714815 d!526346))

(declare-fun d!526350 () Bool)

(assert (=> d!526350 (= (inv!24158 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061))) (isBalanced!1950 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061)))))))

(declare-fun bs!402006 () Bool)

(assert (= bs!402006 d!526350))

(declare-fun m!2119317 () Bool)

(assert (=> bs!402006 m!2119317))

(assert (=> tb!101251 d!526350))

(declare-fun d!526352 () Bool)

(declare-fun lt!655171 () Bool)

(declare-fun content!2668 (List!18798) (Set Rule!6420))

(assert (=> d!526352 (= lt!655171 (set.member rule!422 (content!2668 rules!3447)))))

(declare-fun e!1096800 () Bool)

(assert (=> d!526352 (= lt!655171 e!1096800)))

(declare-fun res!769000 () Bool)

(assert (=> d!526352 (=> (not res!769000) (not e!1096800))))

(assert (=> d!526352 (= res!769000 (is-Cons!18728 rules!3447))))

(assert (=> d!526352 (= (contains!3332 rules!3447 rule!422) lt!655171)))

(declare-fun b!1715108 () Bool)

(declare-fun e!1096801 () Bool)

(assert (=> b!1715108 (= e!1096800 e!1096801)))

(declare-fun res!769001 () Bool)

(assert (=> b!1715108 (=> res!769001 e!1096801)))

(assert (=> b!1715108 (= res!769001 (= (h!24129 rules!3447) rule!422))))

(declare-fun b!1715109 () Bool)

(assert (=> b!1715109 (= e!1096801 (contains!3332 (t!158631 rules!3447) rule!422))))

(assert (= (and d!526352 res!769000) b!1715108))

(assert (= (and b!1715108 (not res!769001)) b!1715109))

(declare-fun m!2119321 () Bool)

(assert (=> d!526352 m!2119321))

(declare-fun m!2119323 () Bool)

(assert (=> d!526352 m!2119323))

(declare-fun m!2119325 () Bool)

(assert (=> b!1715109 m!2119325))

(assert (=> b!1714837 d!526352))

(declare-fun b!1715110 () Bool)

(declare-fun e!1096808 () Bool)

(declare-fun e!1096807 () Bool)

(assert (=> b!1715110 (= e!1096808 e!1096807)))

(declare-fun c!280997 () Bool)

(assert (=> b!1715110 (= c!280997 (is-EmptyLang!4638 (regex!3310 rule!422)))))

(declare-fun b!1715111 () Bool)

(declare-fun e!1096806 () Bool)

(declare-fun e!1096803 () Bool)

(assert (=> b!1715111 (= e!1096806 e!1096803)))

(declare-fun res!769007 () Bool)

(assert (=> b!1715111 (=> (not res!769007) (not e!1096803))))

(declare-fun lt!655172 () Bool)

(assert (=> b!1715111 (= res!769007 (not lt!655172))))

(declare-fun b!1715112 () Bool)

(declare-fun call!109631 () Bool)

(assert (=> b!1715112 (= e!1096808 (= lt!655172 call!109631))))

(declare-fun bm!109626 () Bool)

(assert (=> bm!109626 (= call!109631 (isEmpty!11771 lt!655074))))

(declare-fun b!1715113 () Bool)

(declare-fun e!1096802 () Bool)

(assert (=> b!1715113 (= e!1096802 (= (head!3853 lt!655074) (c!280963 (regex!3310 rule!422))))))

(declare-fun b!1715114 () Bool)

(declare-fun res!769005 () Bool)

(assert (=> b!1715114 (=> (not res!769005) (not e!1096802))))

(assert (=> b!1715114 (= res!769005 (isEmpty!11771 (tail!2560 lt!655074)))))

(declare-fun b!1715115 () Bool)

(declare-fun e!1096804 () Bool)

(assert (=> b!1715115 (= e!1096804 (nullable!1395 (regex!3310 rule!422)))))

(declare-fun b!1715116 () Bool)

(declare-fun e!1096805 () Bool)

(assert (=> b!1715116 (= e!1096803 e!1096805)))

(declare-fun res!769009 () Bool)

(assert (=> b!1715116 (=> res!769009 e!1096805)))

(assert (=> b!1715116 (= res!769009 call!109631)))

(declare-fun b!1715117 () Bool)

(declare-fun res!769006 () Bool)

(assert (=> b!1715117 (=> res!769006 e!1096805)))

(assert (=> b!1715117 (= res!769006 (not (isEmpty!11771 (tail!2560 lt!655074))))))

(declare-fun b!1715118 () Bool)

(assert (=> b!1715118 (= e!1096807 (not lt!655172))))

(declare-fun b!1715119 () Bool)

(declare-fun res!769002 () Bool)

(assert (=> b!1715119 (=> (not res!769002) (not e!1096802))))

(assert (=> b!1715119 (= res!769002 (not call!109631))))

(declare-fun b!1715120 () Bool)

(declare-fun res!769003 () Bool)

(assert (=> b!1715120 (=> res!769003 e!1096806)))

(assert (=> b!1715120 (= res!769003 e!1096802)))

(declare-fun res!769004 () Bool)

(assert (=> b!1715120 (=> (not res!769004) (not e!1096802))))

(assert (=> b!1715120 (= res!769004 lt!655172)))

(declare-fun b!1715121 () Bool)

(declare-fun res!769008 () Bool)

(assert (=> b!1715121 (=> res!769008 e!1096806)))

(assert (=> b!1715121 (= res!769008 (not (is-ElementMatch!4638 (regex!3310 rule!422))))))

(assert (=> b!1715121 (= e!1096807 e!1096806)))

(declare-fun b!1715122 () Bool)

(assert (=> b!1715122 (= e!1096805 (not (= (head!3853 lt!655074) (c!280963 (regex!3310 rule!422)))))))

(declare-fun d!526356 () Bool)

(assert (=> d!526356 e!1096808))

(declare-fun c!280996 () Bool)

(assert (=> d!526356 (= c!280996 (is-EmptyExpr!4638 (regex!3310 rule!422)))))

(assert (=> d!526356 (= lt!655172 e!1096804)))

(declare-fun c!280998 () Bool)

(assert (=> d!526356 (= c!280998 (isEmpty!11771 lt!655074))))

(assert (=> d!526356 (validRegex!1869 (regex!3310 rule!422))))

(assert (=> d!526356 (= (matchR!2112 (regex!3310 rule!422) lt!655074) lt!655172)))

(declare-fun b!1715123 () Bool)

(assert (=> b!1715123 (= e!1096804 (matchR!2112 (derivativeStep!1163 (regex!3310 rule!422) (head!3853 lt!655074)) (tail!2560 lt!655074)))))

(assert (= (and d!526356 c!280998) b!1715115))

(assert (= (and d!526356 (not c!280998)) b!1715123))

(assert (= (and d!526356 c!280996) b!1715112))

(assert (= (and d!526356 (not c!280996)) b!1715110))

(assert (= (and b!1715110 c!280997) b!1715118))

(assert (= (and b!1715110 (not c!280997)) b!1715121))

(assert (= (and b!1715121 (not res!769008)) b!1715120))

(assert (= (and b!1715120 res!769004) b!1715119))

(assert (= (and b!1715119 res!769002) b!1715114))

(assert (= (and b!1715114 res!769005) b!1715113))

(assert (= (and b!1715120 (not res!769003)) b!1715111))

(assert (= (and b!1715111 res!769007) b!1715116))

(assert (= (and b!1715116 (not res!769009)) b!1715117))

(assert (= (and b!1715117 (not res!769006)) b!1715122))

(assert (= (or b!1715112 b!1715116 b!1715119) bm!109626))

(declare-fun m!2119327 () Bool)

(assert (=> bm!109626 m!2119327))

(assert (=> d!526356 m!2119327))

(declare-fun m!2119329 () Bool)

(assert (=> d!526356 m!2119329))

(declare-fun m!2119331 () Bool)

(assert (=> b!1715122 m!2119331))

(declare-fun m!2119333 () Bool)

(assert (=> b!1715114 m!2119333))

(assert (=> b!1715114 m!2119333))

(declare-fun m!2119335 () Bool)

(assert (=> b!1715114 m!2119335))

(assert (=> b!1715123 m!2119331))

(assert (=> b!1715123 m!2119331))

(declare-fun m!2119337 () Bool)

(assert (=> b!1715123 m!2119337))

(assert (=> b!1715123 m!2119333))

(assert (=> b!1715123 m!2119337))

(assert (=> b!1715123 m!2119333))

(declare-fun m!2119339 () Bool)

(assert (=> b!1715123 m!2119339))

(assert (=> b!1715117 m!2119333))

(assert (=> b!1715117 m!2119333))

(assert (=> b!1715117 m!2119335))

(declare-fun m!2119341 () Bool)

(assert (=> b!1715115 m!2119341))

(assert (=> b!1715113 m!2119331))

(assert (=> b!1714816 d!526356))

(declare-fun d!526358 () Bool)

(declare-fun res!769014 () Bool)

(declare-fun e!1096811 () Bool)

(assert (=> d!526358 (=> (not res!769014) (not e!1096811))))

(assert (=> d!526358 (= res!769014 (validRegex!1869 (regex!3310 rule!422)))))

(assert (=> d!526358 (= (ruleValid!809 thiss!24550 rule!422) e!1096811)))

(declare-fun b!1715128 () Bool)

(declare-fun res!769015 () Bool)

(assert (=> b!1715128 (=> (not res!769015) (not e!1096811))))

(assert (=> b!1715128 (= res!769015 (not (nullable!1395 (regex!3310 rule!422))))))

(declare-fun b!1715129 () Bool)

(assert (=> b!1715129 (= e!1096811 (not (= (tag!3610 rule!422) (String!21335 ""))))))

(assert (= (and d!526358 res!769014) b!1715128))

(assert (= (and b!1715128 res!769015) b!1715129))

(assert (=> d!526358 m!2119329))

(assert (=> b!1715128 m!2119341))

(assert (=> b!1714816 d!526358))

(declare-fun d!526360 () Bool)

(assert (=> d!526360 (ruleValid!809 thiss!24550 rule!422)))

(declare-fun lt!655175 () Unit!32558)

(declare-fun choose!10412 (LexerInterface!2939 Rule!6420 List!18798) Unit!32558)

(assert (=> d!526360 (= lt!655175 (choose!10412 thiss!24550 rule!422 rules!3447))))

(assert (=> d!526360 (contains!3332 rules!3447 rule!422)))

(assert (=> d!526360 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!333 thiss!24550 rule!422 rules!3447) lt!655175)))

(declare-fun bs!402008 () Bool)

(assert (= bs!402008 d!526360))

(assert (=> bs!402008 m!2119025))

(declare-fun m!2119343 () Bool)

(assert (=> bs!402008 m!2119343))

(assert (=> bs!402008 m!2118987))

(assert (=> b!1714816 d!526360))

(declare-fun d!526362 () Bool)

(assert (=> d!526362 (= (isEmpty!11771 suffix!1421) (is-Nil!18727 suffix!1421))))

(assert (=> b!1714822 d!526362))

(declare-fun d!526364 () Bool)

(assert (=> d!526364 (= (inv!24152 (tag!3610 (rule!5248 token!523))) (= (mod (str.len (value!104008 (tag!3610 (rule!5248 token!523)))) 2) 0))))

(assert (=> b!1714823 d!526364))

(declare-fun d!526366 () Bool)

(declare-fun res!769016 () Bool)

(declare-fun e!1096812 () Bool)

(assert (=> d!526366 (=> (not res!769016) (not e!1096812))))

(assert (=> d!526366 (= res!769016 (semiInverseModEq!1308 (toChars!4676 (transformation!3310 (rule!5248 token!523))) (toValue!4817 (transformation!3310 (rule!5248 token!523)))))))

(assert (=> d!526366 (= (inv!24156 (transformation!3310 (rule!5248 token!523))) e!1096812)))

(declare-fun b!1715130 () Bool)

(assert (=> b!1715130 (= e!1096812 (equivClasses!1249 (toChars!4676 (transformation!3310 (rule!5248 token!523))) (toValue!4817 (transformation!3310 (rule!5248 token!523)))))))

(assert (= (and d!526366 res!769016) b!1715130))

(declare-fun m!2119345 () Bool)

(assert (=> d!526366 m!2119345))

(declare-fun m!2119347 () Bool)

(assert (=> b!1715130 m!2119347))

(assert (=> b!1714823 d!526366))

(declare-fun d!526368 () Bool)

(assert (=> d!526368 (= (inv!24152 (tag!3610 rule!422)) (= (mod (str.len (value!104008 (tag!3610 rule!422))) 2) 0))))

(assert (=> b!1714824 d!526368))

(declare-fun d!526370 () Bool)

(declare-fun res!769017 () Bool)

(declare-fun e!1096813 () Bool)

(assert (=> d!526370 (=> (not res!769017) (not e!1096813))))

(assert (=> d!526370 (= res!769017 (semiInverseModEq!1308 (toChars!4676 (transformation!3310 rule!422)) (toValue!4817 (transformation!3310 rule!422))))))

(assert (=> d!526370 (= (inv!24156 (transformation!3310 rule!422)) e!1096813)))

(declare-fun b!1715131 () Bool)

(assert (=> b!1715131 (= e!1096813 (equivClasses!1249 (toChars!4676 (transformation!3310 rule!422)) (toValue!4817 (transformation!3310 rule!422))))))

(assert (= (and d!526370 res!769017) b!1715131))

(declare-fun m!2119349 () Bool)

(assert (=> d!526370 m!2119349))

(declare-fun m!2119351 () Bool)

(assert (=> b!1715131 m!2119351))

(assert (=> b!1714824 d!526370))

(declare-fun b!1715132 () Bool)

(declare-fun e!1096820 () Bool)

(declare-fun e!1096819 () Bool)

(assert (=> b!1715132 (= e!1096820 e!1096819)))

(declare-fun c!281000 () Bool)

(assert (=> b!1715132 (= c!281000 (is-EmptyLang!4638 (regex!3310 (rule!5248 (_1!10622 lt!655066)))))))

(declare-fun b!1715133 () Bool)

(declare-fun e!1096818 () Bool)

(declare-fun e!1096815 () Bool)

(assert (=> b!1715133 (= e!1096818 e!1096815)))

(declare-fun res!769023 () Bool)

(assert (=> b!1715133 (=> (not res!769023) (not e!1096815))))

(declare-fun lt!655176 () Bool)

(assert (=> b!1715133 (= res!769023 (not lt!655176))))

(declare-fun b!1715134 () Bool)

(declare-fun call!109632 () Bool)

(assert (=> b!1715134 (= e!1096820 (= lt!655176 call!109632))))

(declare-fun bm!109627 () Bool)

(assert (=> bm!109627 (= call!109632 (isEmpty!11771 lt!655060))))

(declare-fun b!1715135 () Bool)

(declare-fun e!1096814 () Bool)

(assert (=> b!1715135 (= e!1096814 (= (head!3853 lt!655060) (c!280963 (regex!3310 (rule!5248 (_1!10622 lt!655066))))))))

(declare-fun b!1715136 () Bool)

(declare-fun res!769021 () Bool)

(assert (=> b!1715136 (=> (not res!769021) (not e!1096814))))

(assert (=> b!1715136 (= res!769021 (isEmpty!11771 (tail!2560 lt!655060)))))

(declare-fun b!1715137 () Bool)

(declare-fun e!1096816 () Bool)

(assert (=> b!1715137 (= e!1096816 (nullable!1395 (regex!3310 (rule!5248 (_1!10622 lt!655066)))))))

(declare-fun b!1715138 () Bool)

(declare-fun e!1096817 () Bool)

(assert (=> b!1715138 (= e!1096815 e!1096817)))

(declare-fun res!769025 () Bool)

(assert (=> b!1715138 (=> res!769025 e!1096817)))

(assert (=> b!1715138 (= res!769025 call!109632)))

(declare-fun b!1715139 () Bool)

(declare-fun res!769022 () Bool)

(assert (=> b!1715139 (=> res!769022 e!1096817)))

(assert (=> b!1715139 (= res!769022 (not (isEmpty!11771 (tail!2560 lt!655060))))))

(declare-fun b!1715140 () Bool)

(assert (=> b!1715140 (= e!1096819 (not lt!655176))))

(declare-fun b!1715141 () Bool)

(declare-fun res!769018 () Bool)

(assert (=> b!1715141 (=> (not res!769018) (not e!1096814))))

(assert (=> b!1715141 (= res!769018 (not call!109632))))

(declare-fun b!1715142 () Bool)

(declare-fun res!769019 () Bool)

(assert (=> b!1715142 (=> res!769019 e!1096818)))

(assert (=> b!1715142 (= res!769019 e!1096814)))

(declare-fun res!769020 () Bool)

(assert (=> b!1715142 (=> (not res!769020) (not e!1096814))))

(assert (=> b!1715142 (= res!769020 lt!655176)))

(declare-fun b!1715143 () Bool)

(declare-fun res!769024 () Bool)

(assert (=> b!1715143 (=> res!769024 e!1096818)))

(assert (=> b!1715143 (= res!769024 (not (is-ElementMatch!4638 (regex!3310 (rule!5248 (_1!10622 lt!655066))))))))

(assert (=> b!1715143 (= e!1096819 e!1096818)))

(declare-fun b!1715144 () Bool)

(assert (=> b!1715144 (= e!1096817 (not (= (head!3853 lt!655060) (c!280963 (regex!3310 (rule!5248 (_1!10622 lt!655066)))))))))

(declare-fun d!526372 () Bool)

(assert (=> d!526372 e!1096820))

(declare-fun c!280999 () Bool)

(assert (=> d!526372 (= c!280999 (is-EmptyExpr!4638 (regex!3310 (rule!5248 (_1!10622 lt!655066)))))))

(assert (=> d!526372 (= lt!655176 e!1096816)))

(declare-fun c!281001 () Bool)

(assert (=> d!526372 (= c!281001 (isEmpty!11771 lt!655060))))

(assert (=> d!526372 (validRegex!1869 (regex!3310 (rule!5248 (_1!10622 lt!655066))))))

(assert (=> d!526372 (= (matchR!2112 (regex!3310 (rule!5248 (_1!10622 lt!655066))) lt!655060) lt!655176)))

(declare-fun b!1715145 () Bool)

(assert (=> b!1715145 (= e!1096816 (matchR!2112 (derivativeStep!1163 (regex!3310 (rule!5248 (_1!10622 lt!655066))) (head!3853 lt!655060)) (tail!2560 lt!655060)))))

(assert (= (and d!526372 c!281001) b!1715137))

(assert (= (and d!526372 (not c!281001)) b!1715145))

(assert (= (and d!526372 c!280999) b!1715134))

(assert (= (and d!526372 (not c!280999)) b!1715132))

(assert (= (and b!1715132 c!281000) b!1715140))

(assert (= (and b!1715132 (not c!281000)) b!1715143))

(assert (= (and b!1715143 (not res!769024)) b!1715142))

(assert (= (and b!1715142 res!769020) b!1715141))

(assert (= (and b!1715141 res!769018) b!1715136))

(assert (= (and b!1715136 res!769021) b!1715135))

(assert (= (and b!1715142 (not res!769019)) b!1715133))

(assert (= (and b!1715133 res!769023) b!1715138))

(assert (= (and b!1715138 (not res!769025)) b!1715139))

(assert (= (and b!1715139 (not res!769022)) b!1715144))

(assert (= (or b!1715134 b!1715138 b!1715141) bm!109627))

(declare-fun m!2119353 () Bool)

(assert (=> bm!109627 m!2119353))

(assert (=> d!526372 m!2119353))

(declare-fun m!2119355 () Bool)

(assert (=> d!526372 m!2119355))

(declare-fun m!2119357 () Bool)

(assert (=> b!1715144 m!2119357))

(declare-fun m!2119359 () Bool)

(assert (=> b!1715136 m!2119359))

(assert (=> b!1715136 m!2119359))

(declare-fun m!2119361 () Bool)

(assert (=> b!1715136 m!2119361))

(assert (=> b!1715145 m!2119357))

(assert (=> b!1715145 m!2119357))

(declare-fun m!2119363 () Bool)

(assert (=> b!1715145 m!2119363))

(assert (=> b!1715145 m!2119359))

(assert (=> b!1715145 m!2119363))

(assert (=> b!1715145 m!2119359))

(declare-fun m!2119365 () Bool)

(assert (=> b!1715145 m!2119365))

(assert (=> b!1715139 m!2119359))

(assert (=> b!1715139 m!2119359))

(assert (=> b!1715139 m!2119361))

(declare-fun m!2119367 () Bool)

(assert (=> b!1715137 m!2119367))

(assert (=> b!1715135 m!2119357))

(assert (=> b!1714820 d!526372))

(declare-fun b!1715146 () Bool)

(declare-fun e!1096822 () Bool)

(assert (=> b!1715146 (= e!1096822 (inv!17 (value!104009 token!523)))))

(declare-fun b!1715147 () Bool)

(declare-fun e!1096823 () Bool)

(assert (=> b!1715147 (= e!1096823 (inv!15 (value!104009 token!523)))))

(declare-fun b!1715148 () Bool)

(declare-fun res!769026 () Bool)

(assert (=> b!1715148 (=> res!769026 e!1096823)))

(assert (=> b!1715148 (= res!769026 (not (is-IntegerValue!10202 (value!104009 token!523))))))

(assert (=> b!1715148 (= e!1096822 e!1096823)))

(declare-fun b!1715149 () Bool)

(declare-fun e!1096821 () Bool)

(assert (=> b!1715149 (= e!1096821 e!1096822)))

(declare-fun c!281003 () Bool)

(assert (=> b!1715149 (= c!281003 (is-IntegerValue!10201 (value!104009 token!523)))))

(declare-fun d!526374 () Bool)

(declare-fun c!281002 () Bool)

(assert (=> d!526374 (= c!281002 (is-IntegerValue!10200 (value!104009 token!523)))))

(assert (=> d!526374 (= (inv!21 (value!104009 token!523)) e!1096821)))

(declare-fun b!1715150 () Bool)

(assert (=> b!1715150 (= e!1096821 (inv!16 (value!104009 token!523)))))

(assert (= (and d!526374 c!281002) b!1715150))

(assert (= (and d!526374 (not c!281002)) b!1715149))

(assert (= (and b!1715149 c!281003) b!1715146))

(assert (= (and b!1715149 (not c!281003)) b!1715148))

(assert (= (and b!1715148 (not res!769026)) b!1715147))

(declare-fun m!2119369 () Bool)

(assert (=> b!1715146 m!2119369))

(declare-fun m!2119371 () Bool)

(assert (=> b!1715147 m!2119371))

(declare-fun m!2119373 () Bool)

(assert (=> b!1715150 m!2119373))

(assert (=> b!1714821 d!526374))

(declare-fun lt!655177 () List!18797)

(declare-fun e!1096825 () Bool)

(declare-fun b!1715154 () Bool)

(assert (=> b!1715154 (= e!1096825 (or (not (= (_2!10622 lt!655066) Nil!18727)) (= lt!655177 lt!655060)))))

(declare-fun d!526376 () Bool)

(assert (=> d!526376 e!1096825))

(declare-fun res!769027 () Bool)

(assert (=> d!526376 (=> (not res!769027) (not e!1096825))))

(assert (=> d!526376 (= res!769027 (= (content!2667 lt!655177) (set.union (content!2667 lt!655060) (content!2667 (_2!10622 lt!655066)))))))

(declare-fun e!1096824 () List!18797)

(assert (=> d!526376 (= lt!655177 e!1096824)))

(declare-fun c!281004 () Bool)

(assert (=> d!526376 (= c!281004 (is-Nil!18727 lt!655060))))

(assert (=> d!526376 (= (++!5135 lt!655060 (_2!10622 lt!655066)) lt!655177)))

(declare-fun b!1715152 () Bool)

(assert (=> b!1715152 (= e!1096824 (Cons!18727 (h!24128 lt!655060) (++!5135 (t!158630 lt!655060) (_2!10622 lt!655066))))))

(declare-fun b!1715151 () Bool)

(assert (=> b!1715151 (= e!1096824 (_2!10622 lt!655066))))

(declare-fun b!1715153 () Bool)

(declare-fun res!769028 () Bool)

(assert (=> b!1715153 (=> (not res!769028) (not e!1096825))))

(assert (=> b!1715153 (= res!769028 (= (size!14887 lt!655177) (+ (size!14887 lt!655060) (size!14887 (_2!10622 lt!655066)))))))

(assert (= (and d!526376 c!281004) b!1715151))

(assert (= (and d!526376 (not c!281004)) b!1715152))

(assert (= (and d!526376 res!769027) b!1715153))

(assert (= (and b!1715153 res!769028) b!1715154))

(declare-fun m!2119375 () Bool)

(assert (=> d!526376 m!2119375))

(declare-fun m!2119377 () Bool)

(assert (=> d!526376 m!2119377))

(declare-fun m!2119379 () Bool)

(assert (=> d!526376 m!2119379))

(declare-fun m!2119381 () Bool)

(assert (=> b!1715152 m!2119381))

(declare-fun m!2119383 () Bool)

(assert (=> b!1715153 m!2119383))

(declare-fun m!2119385 () Bool)

(assert (=> b!1715153 m!2119385))

(declare-fun m!2119387 () Bool)

(assert (=> b!1715153 m!2119387))

(assert (=> b!1714828 d!526376))

(declare-fun e!1096827 () Bool)

(declare-fun lt!655178 () List!18797)

(declare-fun b!1715158 () Bool)

(assert (=> b!1715158 (= e!1096827 (or (not (= suffix!1421 Nil!18727)) (= lt!655178 lt!655074)))))

(declare-fun d!526378 () Bool)

(assert (=> d!526378 e!1096827))

(declare-fun res!769029 () Bool)

(assert (=> d!526378 (=> (not res!769029) (not e!1096827))))

(assert (=> d!526378 (= res!769029 (= (content!2667 lt!655178) (set.union (content!2667 lt!655074) (content!2667 suffix!1421))))))

(declare-fun e!1096826 () List!18797)

(assert (=> d!526378 (= lt!655178 e!1096826)))

(declare-fun c!281005 () Bool)

(assert (=> d!526378 (= c!281005 (is-Nil!18727 lt!655074))))

(assert (=> d!526378 (= (++!5135 lt!655074 suffix!1421) lt!655178)))

(declare-fun b!1715156 () Bool)

(assert (=> b!1715156 (= e!1096826 (Cons!18727 (h!24128 lt!655074) (++!5135 (t!158630 lt!655074) suffix!1421)))))

(declare-fun b!1715155 () Bool)

(assert (=> b!1715155 (= e!1096826 suffix!1421)))

(declare-fun b!1715157 () Bool)

(declare-fun res!769030 () Bool)

(assert (=> b!1715157 (=> (not res!769030) (not e!1096827))))

(assert (=> b!1715157 (= res!769030 (= (size!14887 lt!655178) (+ (size!14887 lt!655074) (size!14887 suffix!1421))))))

(assert (= (and d!526378 c!281005) b!1715155))

(assert (= (and d!526378 (not c!281005)) b!1715156))

(assert (= (and d!526378 res!769029) b!1715157))

(assert (= (and b!1715157 res!769030) b!1715158))

(declare-fun m!2119389 () Bool)

(assert (=> d!526378 m!2119389))

(assert (=> d!526378 m!2119265))

(declare-fun m!2119391 () Bool)

(assert (=> d!526378 m!2119391))

(declare-fun m!2119393 () Bool)

(assert (=> b!1715156 m!2119393))

(declare-fun m!2119395 () Bool)

(assert (=> b!1715157 m!2119395))

(assert (=> b!1715157 m!2119273))

(declare-fun m!2119397 () Bool)

(assert (=> b!1715157 m!2119397))

(assert (=> b!1714828 d!526378))

(declare-fun d!526380 () Bool)

(declare-fun e!1096830 () Bool)

(assert (=> d!526380 e!1096830))

(declare-fun res!769035 () Bool)

(assert (=> d!526380 (=> (not res!769035) (not e!1096830))))

(assert (=> d!526380 (= res!769035 (isDefined!2987 (getRuleFromTag!360 thiss!24550 rules!3447 (tag!3610 (rule!5248 (_1!10622 lt!655066))))))))

(declare-fun lt!655181 () Unit!32558)

(declare-fun choose!10413 (LexerInterface!2939 List!18798 List!18797 Token!6186) Unit!32558)

(assert (=> d!526380 (= lt!655181 (choose!10413 thiss!24550 rules!3447 lt!655076 (_1!10622 lt!655066)))))

(assert (=> d!526380 (rulesInvariant!2608 thiss!24550 rules!3447)))

(assert (=> d!526380 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!360 thiss!24550 rules!3447 lt!655076 (_1!10622 lt!655066)) lt!655181)))

(declare-fun b!1715163 () Bool)

(declare-fun res!769036 () Bool)

(assert (=> b!1715163 (=> (not res!769036) (not e!1096830))))

(assert (=> b!1715163 (= res!769036 (matchR!2112 (regex!3310 (get!5517 (getRuleFromTag!360 thiss!24550 rules!3447 (tag!3610 (rule!5248 (_1!10622 lt!655066)))))) (list!7563 (charsOf!1959 (_1!10622 lt!655066)))))))

(declare-fun b!1715164 () Bool)

(assert (=> b!1715164 (= e!1096830 (= (rule!5248 (_1!10622 lt!655066)) (get!5517 (getRuleFromTag!360 thiss!24550 rules!3447 (tag!3610 (rule!5248 (_1!10622 lt!655066)))))))))

(assert (= (and d!526380 res!769035) b!1715163))

(assert (= (and b!1715163 res!769036) b!1715164))

(assert (=> d!526380 m!2118963))

(assert (=> d!526380 m!2118963))

(declare-fun m!2119399 () Bool)

(assert (=> d!526380 m!2119399))

(declare-fun m!2119401 () Bool)

(assert (=> d!526380 m!2119401))

(assert (=> d!526380 m!2119019))

(assert (=> b!1715163 m!2118957))

(assert (=> b!1715163 m!2119003))

(declare-fun m!2119403 () Bool)

(assert (=> b!1715163 m!2119403))

(assert (=> b!1715163 m!2118963))

(assert (=> b!1715163 m!2118963))

(declare-fun m!2119405 () Bool)

(assert (=> b!1715163 m!2119405))

(assert (=> b!1715163 m!2118957))

(assert (=> b!1715163 m!2119003))

(assert (=> b!1715164 m!2118963))

(assert (=> b!1715164 m!2118963))

(assert (=> b!1715164 m!2119405))

(assert (=> b!1714828 d!526380))

(declare-fun b!1715174 () Bool)

(declare-fun res!769045 () Bool)

(declare-fun e!1096837 () Bool)

(assert (=> b!1715174 (=> (not res!769045) (not e!1096837))))

(assert (=> b!1715174 (= res!769045 (= (head!3853 lt!655060) (head!3853 lt!655076)))))

(declare-fun b!1715176 () Bool)

(declare-fun e!1096839 () Bool)

(assert (=> b!1715176 (= e!1096839 (>= (size!14887 lt!655076) (size!14887 lt!655060)))))

(declare-fun d!526382 () Bool)

(assert (=> d!526382 e!1096839))

(declare-fun res!769047 () Bool)

(assert (=> d!526382 (=> res!769047 e!1096839)))

(declare-fun lt!655184 () Bool)

(assert (=> d!526382 (= res!769047 (not lt!655184))))

(declare-fun e!1096838 () Bool)

(assert (=> d!526382 (= lt!655184 e!1096838)))

(declare-fun res!769048 () Bool)

(assert (=> d!526382 (=> res!769048 e!1096838)))

(assert (=> d!526382 (= res!769048 (is-Nil!18727 lt!655060))))

(assert (=> d!526382 (= (isPrefix!1551 lt!655060 lt!655076) lt!655184)))

(declare-fun b!1715173 () Bool)

(assert (=> b!1715173 (= e!1096838 e!1096837)))

(declare-fun res!769046 () Bool)

(assert (=> b!1715173 (=> (not res!769046) (not e!1096837))))

(assert (=> b!1715173 (= res!769046 (not (is-Nil!18727 lt!655076)))))

(declare-fun b!1715175 () Bool)

(assert (=> b!1715175 (= e!1096837 (isPrefix!1551 (tail!2560 lt!655060) (tail!2560 lt!655076)))))

(assert (= (and d!526382 (not res!769048)) b!1715173))

(assert (= (and b!1715173 res!769046) b!1715174))

(assert (= (and b!1715174 res!769045) b!1715175))

(assert (= (and d!526382 (not res!769047)) b!1715176))

(assert (=> b!1715174 m!2119357))

(declare-fun m!2119407 () Bool)

(assert (=> b!1715174 m!2119407))

(declare-fun m!2119409 () Bool)

(assert (=> b!1715176 m!2119409))

(assert (=> b!1715176 m!2119385))

(assert (=> b!1715175 m!2119359))

(declare-fun m!2119411 () Bool)

(assert (=> b!1715175 m!2119411))

(assert (=> b!1715175 m!2119359))

(assert (=> b!1715175 m!2119411))

(declare-fun m!2119413 () Bool)

(assert (=> b!1715175 m!2119413))

(assert (=> b!1714828 d!526382))

(declare-fun d!526384 () Bool)

(assert (=> d!526384 (isDefined!2988 (maxPrefix!1493 thiss!24550 rules!3447 (++!5135 lt!655074 suffix!1421)))))

(declare-fun lt!655243 () Unit!32558)

(declare-fun e!1096855 () Unit!32558)

(assert (=> d!526384 (= lt!655243 e!1096855)))

(declare-fun c!281011 () Bool)

(assert (=> d!526384 (= c!281011 (isEmpty!11775 (maxPrefix!1493 thiss!24550 rules!3447 (++!5135 lt!655074 suffix!1421))))))

(declare-fun lt!655245 () Unit!32558)

(declare-fun lt!655248 () Unit!32558)

(assert (=> d!526384 (= lt!655245 lt!655248)))

(declare-fun e!1096854 () Bool)

(assert (=> d!526384 e!1096854))

(declare-fun res!769074 () Bool)

(assert (=> d!526384 (=> (not res!769074) (not e!1096854))))

(declare-fun lt!655252 () Token!6186)

(assert (=> d!526384 (= res!769074 (isDefined!2987 (getRuleFromTag!360 thiss!24550 rules!3447 (tag!3610 (rule!5248 lt!655252)))))))

(assert (=> d!526384 (= lt!655248 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!360 thiss!24550 rules!3447 lt!655074 lt!655252))))

(declare-fun lt!655250 () Unit!32558)

(declare-fun lt!655249 () Unit!32558)

(assert (=> d!526384 (= lt!655250 lt!655249)))

(declare-fun lt!655241 () List!18797)

(assert (=> d!526384 (isPrefix!1551 lt!655241 (++!5135 lt!655074 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!244 (List!18797 List!18797 List!18797) Unit!32558)

(assert (=> d!526384 (= lt!655249 (lemmaPrefixStaysPrefixWhenAddingToSuffix!244 lt!655241 lt!655074 suffix!1421))))

(assert (=> d!526384 (= lt!655241 (list!7563 (charsOf!1959 lt!655252)))))

(declare-fun lt!655257 () Unit!32558)

(declare-fun lt!655246 () Unit!32558)

(assert (=> d!526384 (= lt!655257 lt!655246)))

(declare-fun lt!655244 () List!18797)

(declare-fun lt!655247 () List!18797)

(assert (=> d!526384 (isPrefix!1551 lt!655244 (++!5135 lt!655244 lt!655247))))

(assert (=> d!526384 (= lt!655246 (lemmaConcatTwoListThenFirstIsPrefix!1061 lt!655244 lt!655247))))

(assert (=> d!526384 (= lt!655247 (_2!10622 (get!5518 (maxPrefix!1493 thiss!24550 rules!3447 lt!655074))))))

(assert (=> d!526384 (= lt!655244 (list!7563 (charsOf!1959 lt!655252)))))

(declare-datatypes ((List!18804 0))(
  ( (Nil!18734) (Cons!18734 (h!24135 Token!6186) (t!158689 List!18804)) )
))
(declare-fun head!3855 (List!18804) Token!6186)

(declare-datatypes ((IArray!12465 0))(
  ( (IArray!12466 (innerList!6290 List!18804)) )
))
(declare-datatypes ((Conc!6230 0))(
  ( (Node!6230 (left!14931 Conc!6230) (right!15261 Conc!6230) (csize!12690 Int) (cheight!6441 Int)) (Leaf!9106 (xs!9106 IArray!12465) (csize!12691 Int)) (Empty!6230) )
))
(declare-datatypes ((BalanceConc!12404 0))(
  ( (BalanceConc!12405 (c!281066 Conc!6230)) )
))
(declare-fun list!7566 (BalanceConc!12404) List!18804)

(declare-datatypes ((tuple2!18444 0))(
  ( (tuple2!18445 (_1!10624 BalanceConc!12404) (_2!10624 BalanceConc!12400)) )
))
(declare-fun lex!1383 (LexerInterface!2939 List!18798 BalanceConc!12400) tuple2!18444)

(assert (=> d!526384 (= lt!655252 (head!3855 (list!7566 (_1!10624 (lex!1383 thiss!24550 rules!3447 (seqFromList!2284 lt!655074))))))))

(assert (=> d!526384 (not (isEmpty!11772 rules!3447))))

(assert (=> d!526384 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!463 thiss!24550 rules!3447 lt!655074 suffix!1421) lt!655243)))

(declare-fun b!1715215 () Bool)

(declare-fun Unit!32565 () Unit!32558)

(assert (=> b!1715215 (= e!1096855 Unit!32565)))

(declare-fun lt!655251 () List!18797)

(assert (=> b!1715215 (= lt!655251 (++!5135 lt!655074 suffix!1421))))

(declare-fun lt!655242 () Unit!32558)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!252 (LexerInterface!2939 Rule!6420 List!18798 List!18797) Unit!32558)

(assert (=> b!1715215 (= lt!655242 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!252 thiss!24550 (rule!5248 lt!655252) rules!3447 lt!655251))))

(assert (=> b!1715215 (isEmpty!11775 (maxPrefixOneRule!873 thiss!24550 (rule!5248 lt!655252) lt!655251))))

(declare-fun lt!655253 () Unit!32558)

(assert (=> b!1715215 (= lt!655253 lt!655242)))

(declare-fun lt!655256 () List!18797)

(assert (=> b!1715215 (= lt!655256 (list!7563 (charsOf!1959 lt!655252)))))

(declare-fun lt!655254 () Unit!32558)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!248 (LexerInterface!2939 Rule!6420 List!18797 List!18797) Unit!32558)

(assert (=> b!1715215 (= lt!655254 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!248 thiss!24550 (rule!5248 lt!655252) lt!655256 (++!5135 lt!655074 suffix!1421)))))

(assert (=> b!1715215 (not (matchR!2112 (regex!3310 (rule!5248 lt!655252)) lt!655256))))

(declare-fun lt!655255 () Unit!32558)

(assert (=> b!1715215 (= lt!655255 lt!655254)))

(assert (=> b!1715215 false))

(declare-fun b!1715214 () Bool)

(assert (=> b!1715214 (= e!1096854 (= (rule!5248 lt!655252) (get!5517 (getRuleFromTag!360 thiss!24550 rules!3447 (tag!3610 (rule!5248 lt!655252))))))))

(declare-fun b!1715213 () Bool)

(declare-fun res!769075 () Bool)

(assert (=> b!1715213 (=> (not res!769075) (not e!1096854))))

(assert (=> b!1715213 (= res!769075 (matchR!2112 (regex!3310 (get!5517 (getRuleFromTag!360 thiss!24550 rules!3447 (tag!3610 (rule!5248 lt!655252))))) (list!7563 (charsOf!1959 lt!655252))))))

(declare-fun b!1715216 () Bool)

(declare-fun Unit!32566 () Unit!32558)

(assert (=> b!1715216 (= e!1096855 Unit!32566)))

(assert (= (and d!526384 res!769074) b!1715213))

(assert (= (and b!1715213 res!769075) b!1715214))

(assert (= (and d!526384 c!281011) b!1715215))

(assert (= (and d!526384 (not c!281011)) b!1715216))

(assert (=> d!526384 m!2119033))

(assert (=> d!526384 m!2118961))

(declare-fun m!2119463 () Bool)

(assert (=> d!526384 m!2119463))

(declare-fun m!2119465 () Bool)

(assert (=> d!526384 m!2119465))

(declare-fun m!2119467 () Bool)

(assert (=> d!526384 m!2119467))

(declare-fun m!2119469 () Bool)

(assert (=> d!526384 m!2119469))

(declare-fun m!2119471 () Bool)

(assert (=> d!526384 m!2119471))

(assert (=> d!526384 m!2119471))

(declare-fun m!2119473 () Bool)

(assert (=> d!526384 m!2119473))

(declare-fun m!2119475 () Bool)

(assert (=> d!526384 m!2119475))

(declare-fun m!2119477 () Bool)

(assert (=> d!526384 m!2119477))

(declare-fun m!2119479 () Bool)

(assert (=> d!526384 m!2119479))

(assert (=> d!526384 m!2118961))

(assert (=> d!526384 m!2119467))

(declare-fun m!2119481 () Bool)

(assert (=> d!526384 m!2119481))

(assert (=> d!526384 m!2119479))

(declare-fun m!2119483 () Bool)

(assert (=> d!526384 m!2119483))

(assert (=> d!526384 m!2119463))

(assert (=> d!526384 m!2119017))

(assert (=> d!526384 m!2118961))

(declare-fun m!2119485 () Bool)

(assert (=> d!526384 m!2119485))

(declare-fun m!2119487 () Bool)

(assert (=> d!526384 m!2119487))

(assert (=> d!526384 m!2119475))

(declare-fun m!2119489 () Bool)

(assert (=> d!526384 m!2119489))

(assert (=> d!526384 m!2119487))

(declare-fun m!2119491 () Bool)

(assert (=> d!526384 m!2119491))

(assert (=> d!526384 m!2119033))

(declare-fun m!2119493 () Bool)

(assert (=> d!526384 m!2119493))

(assert (=> d!526384 m!2119467))

(declare-fun m!2119495 () Bool)

(assert (=> d!526384 m!2119495))

(declare-fun m!2119497 () Bool)

(assert (=> d!526384 m!2119497))

(assert (=> b!1715215 m!2118961))

(assert (=> b!1715215 m!2119475))

(declare-fun m!2119499 () Bool)

(assert (=> b!1715215 m!2119499))

(declare-fun m!2119501 () Bool)

(assert (=> b!1715215 m!2119501))

(assert (=> b!1715215 m!2119475))

(assert (=> b!1715215 m!2119477))

(declare-fun m!2119503 () Bool)

(assert (=> b!1715215 m!2119503))

(assert (=> b!1715215 m!2118961))

(declare-fun m!2119505 () Bool)

(assert (=> b!1715215 m!2119505))

(assert (=> b!1715215 m!2119503))

(declare-fun m!2119507 () Bool)

(assert (=> b!1715215 m!2119507))

(assert (=> b!1715214 m!2119479))

(assert (=> b!1715214 m!2119479))

(declare-fun m!2119509 () Bool)

(assert (=> b!1715214 m!2119509))

(assert (=> b!1715213 m!2119477))

(declare-fun m!2119511 () Bool)

(assert (=> b!1715213 m!2119511))

(assert (=> b!1715213 m!2119475))

(assert (=> b!1715213 m!2119479))

(assert (=> b!1715213 m!2119509))

(assert (=> b!1715213 m!2119475))

(assert (=> b!1715213 m!2119477))

(assert (=> b!1715213 m!2119479))

(assert (=> b!1714828 d!526384))

(declare-fun b!1715229 () Bool)

(declare-fun e!1096864 () Option!3644)

(declare-fun e!1096866 () Option!3644)

(assert (=> b!1715229 (= e!1096864 e!1096866)))

(declare-fun c!281016 () Bool)

(assert (=> b!1715229 (= c!281016 (and (is-Cons!18728 rules!3447) (not (= (tag!3610 (h!24129 rules!3447)) (tag!3610 (rule!5248 (_1!10622 lt!655066)))))))))

(declare-fun b!1715230 () Bool)

(declare-fun lt!655265 () Unit!32558)

(declare-fun lt!655266 () Unit!32558)

(assert (=> b!1715230 (= lt!655265 lt!655266)))

(assert (=> b!1715230 (rulesInvariant!2608 thiss!24550 (t!158631 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!123 (LexerInterface!2939 Rule!6420 List!18798) Unit!32558)

(assert (=> b!1715230 (= lt!655266 (lemmaInvariantOnRulesThenOnTail!123 thiss!24550 (h!24129 rules!3447) (t!158631 rules!3447)))))

(assert (=> b!1715230 (= e!1096866 (getRuleFromTag!360 thiss!24550 (t!158631 rules!3447) (tag!3610 (rule!5248 (_1!10622 lt!655066)))))))

(declare-fun b!1715231 () Bool)

(assert (=> b!1715231 (= e!1096864 (Some!3643 (h!24129 rules!3447)))))

(declare-fun b!1715232 () Bool)

(declare-fun e!1096865 () Bool)

(declare-fun lt!655264 () Option!3644)

(assert (=> b!1715232 (= e!1096865 (= (tag!3610 (get!5517 lt!655264)) (tag!3610 (rule!5248 (_1!10622 lt!655066)))))))

(declare-fun b!1715233 () Bool)

(assert (=> b!1715233 (= e!1096866 None!3643)))

(declare-fun b!1715234 () Bool)

(declare-fun e!1096867 () Bool)

(assert (=> b!1715234 (= e!1096867 e!1096865)))

(declare-fun res!769081 () Bool)

(assert (=> b!1715234 (=> (not res!769081) (not e!1096865))))

(assert (=> b!1715234 (= res!769081 (contains!3332 rules!3447 (get!5517 lt!655264)))))

(declare-fun d!526396 () Bool)

(assert (=> d!526396 e!1096867))

(declare-fun res!769080 () Bool)

(assert (=> d!526396 (=> res!769080 e!1096867)))

(declare-fun isEmpty!11777 (Option!3644) Bool)

(assert (=> d!526396 (= res!769080 (isEmpty!11777 lt!655264))))

(assert (=> d!526396 (= lt!655264 e!1096864)))

(declare-fun c!281017 () Bool)

(assert (=> d!526396 (= c!281017 (and (is-Cons!18728 rules!3447) (= (tag!3610 (h!24129 rules!3447)) (tag!3610 (rule!5248 (_1!10622 lt!655066))))))))

(assert (=> d!526396 (rulesInvariant!2608 thiss!24550 rules!3447)))

(assert (=> d!526396 (= (getRuleFromTag!360 thiss!24550 rules!3447 (tag!3610 (rule!5248 (_1!10622 lt!655066)))) lt!655264)))

(assert (= (and d!526396 c!281017) b!1715231))

(assert (= (and d!526396 (not c!281017)) b!1715229))

(assert (= (and b!1715229 c!281016) b!1715230))

(assert (= (and b!1715229 (not c!281016)) b!1715233))

(assert (= (and d!526396 (not res!769080)) b!1715234))

(assert (= (and b!1715234 res!769081) b!1715232))

(declare-fun m!2119513 () Bool)

(assert (=> b!1715230 m!2119513))

(declare-fun m!2119515 () Bool)

(assert (=> b!1715230 m!2119515))

(declare-fun m!2119517 () Bool)

(assert (=> b!1715230 m!2119517))

(declare-fun m!2119519 () Bool)

(assert (=> b!1715232 m!2119519))

(assert (=> b!1715234 m!2119519))

(assert (=> b!1715234 m!2119519))

(declare-fun m!2119521 () Bool)

(assert (=> b!1715234 m!2119521))

(declare-fun m!2119523 () Bool)

(assert (=> d!526396 m!2119523))

(assert (=> d!526396 m!2119019))

(assert (=> b!1714828 d!526396))

(declare-fun b!1715236 () Bool)

(declare-fun res!769082 () Bool)

(declare-fun e!1096868 () Bool)

(assert (=> b!1715236 (=> (not res!769082) (not e!1096868))))

(assert (=> b!1715236 (= res!769082 (= (head!3853 lt!655060) (head!3853 (++!5135 lt!655060 (_2!10622 lt!655066)))))))

(declare-fun b!1715238 () Bool)

(declare-fun e!1096870 () Bool)

(assert (=> b!1715238 (= e!1096870 (>= (size!14887 (++!5135 lt!655060 (_2!10622 lt!655066))) (size!14887 lt!655060)))))

(declare-fun d!526398 () Bool)

(assert (=> d!526398 e!1096870))

(declare-fun res!769084 () Bool)

(assert (=> d!526398 (=> res!769084 e!1096870)))

(declare-fun lt!655267 () Bool)

(assert (=> d!526398 (= res!769084 (not lt!655267))))

(declare-fun e!1096869 () Bool)

(assert (=> d!526398 (= lt!655267 e!1096869)))

(declare-fun res!769085 () Bool)

(assert (=> d!526398 (=> res!769085 e!1096869)))

(assert (=> d!526398 (= res!769085 (is-Nil!18727 lt!655060))))

(assert (=> d!526398 (= (isPrefix!1551 lt!655060 (++!5135 lt!655060 (_2!10622 lt!655066))) lt!655267)))

(declare-fun b!1715235 () Bool)

(assert (=> b!1715235 (= e!1096869 e!1096868)))

(declare-fun res!769083 () Bool)

(assert (=> b!1715235 (=> (not res!769083) (not e!1096868))))

(assert (=> b!1715235 (= res!769083 (not (is-Nil!18727 (++!5135 lt!655060 (_2!10622 lt!655066)))))))

(declare-fun b!1715237 () Bool)

(assert (=> b!1715237 (= e!1096868 (isPrefix!1551 (tail!2560 lt!655060) (tail!2560 (++!5135 lt!655060 (_2!10622 lt!655066)))))))

(assert (= (and d!526398 (not res!769085)) b!1715235))

(assert (= (and b!1715235 res!769083) b!1715236))

(assert (= (and b!1715236 res!769082) b!1715237))

(assert (= (and d!526398 (not res!769084)) b!1715238))

(assert (=> b!1715236 m!2119357))

(assert (=> b!1715236 m!2118967))

(declare-fun m!2119525 () Bool)

(assert (=> b!1715236 m!2119525))

(assert (=> b!1715238 m!2118967))

(declare-fun m!2119527 () Bool)

(assert (=> b!1715238 m!2119527))

(assert (=> b!1715238 m!2119385))

(assert (=> b!1715237 m!2119359))

(assert (=> b!1715237 m!2118967))

(declare-fun m!2119529 () Bool)

(assert (=> b!1715237 m!2119529))

(assert (=> b!1715237 m!2119359))

(assert (=> b!1715237 m!2119529))

(declare-fun m!2119531 () Bool)

(assert (=> b!1715237 m!2119531))

(assert (=> b!1714828 d!526398))

(declare-fun d!526400 () Bool)

(assert (=> d!526400 (= (list!7563 lt!655061) (list!7565 (c!280964 lt!655061)))))

(declare-fun bs!402012 () Bool)

(assert (= bs!402012 d!526400))

(declare-fun m!2119533 () Bool)

(assert (=> bs!402012 m!2119533))

(assert (=> b!1714828 d!526400))

(declare-fun b!1715240 () Bool)

(declare-fun res!769086 () Bool)

(declare-fun e!1096871 () Bool)

(assert (=> b!1715240 (=> (not res!769086) (not e!1096871))))

(assert (=> b!1715240 (= res!769086 (= (head!3853 lt!655074) (head!3853 lt!655076)))))

(declare-fun b!1715242 () Bool)

(declare-fun e!1096873 () Bool)

(assert (=> b!1715242 (= e!1096873 (>= (size!14887 lt!655076) (size!14887 lt!655074)))))

(declare-fun d!526402 () Bool)

(assert (=> d!526402 e!1096873))

(declare-fun res!769088 () Bool)

(assert (=> d!526402 (=> res!769088 e!1096873)))

(declare-fun lt!655268 () Bool)

(assert (=> d!526402 (= res!769088 (not lt!655268))))

(declare-fun e!1096872 () Bool)

(assert (=> d!526402 (= lt!655268 e!1096872)))

(declare-fun res!769089 () Bool)

(assert (=> d!526402 (=> res!769089 e!1096872)))

(assert (=> d!526402 (= res!769089 (is-Nil!18727 lt!655074))))

(assert (=> d!526402 (= (isPrefix!1551 lt!655074 lt!655076) lt!655268)))

(declare-fun b!1715239 () Bool)

(assert (=> b!1715239 (= e!1096872 e!1096871)))

(declare-fun res!769087 () Bool)

(assert (=> b!1715239 (=> (not res!769087) (not e!1096871))))

(assert (=> b!1715239 (= res!769087 (not (is-Nil!18727 lt!655076)))))

(declare-fun b!1715241 () Bool)

(assert (=> b!1715241 (= e!1096871 (isPrefix!1551 (tail!2560 lt!655074) (tail!2560 lt!655076)))))

(assert (= (and d!526402 (not res!769089)) b!1715239))

(assert (= (and b!1715239 res!769087) b!1715240))

(assert (= (and b!1715240 res!769086) b!1715241))

(assert (= (and d!526402 (not res!769088)) b!1715242))

(assert (=> b!1715240 m!2119331))

(assert (=> b!1715240 m!2119407))

(assert (=> b!1715242 m!2119409))

(assert (=> b!1715242 m!2119273))

(assert (=> b!1715241 m!2119333))

(assert (=> b!1715241 m!2119411))

(assert (=> b!1715241 m!2119333))

(assert (=> b!1715241 m!2119411))

(declare-fun m!2119535 () Bool)

(assert (=> b!1715241 m!2119535))

(assert (=> b!1714828 d!526402))

(declare-fun d!526404 () Bool)

(assert (=> d!526404 (isPrefix!1551 lt!655074 (++!5135 lt!655074 suffix!1421))))

(declare-fun lt!655271 () Unit!32558)

(declare-fun choose!10414 (List!18797 List!18797) Unit!32558)

(assert (=> d!526404 (= lt!655271 (choose!10414 lt!655074 suffix!1421))))

(assert (=> d!526404 (= (lemmaConcatTwoListThenFirstIsPrefix!1061 lt!655074 suffix!1421) lt!655271)))

(declare-fun bs!402013 () Bool)

(assert (= bs!402013 d!526404))

(assert (=> bs!402013 m!2118961))

(assert (=> bs!402013 m!2118961))

(declare-fun m!2119537 () Bool)

(assert (=> bs!402013 m!2119537))

(declare-fun m!2119539 () Bool)

(assert (=> bs!402013 m!2119539))

(assert (=> b!1714828 d!526404))

(declare-fun b!1715243 () Bool)

(declare-fun res!769096 () Bool)

(declare-fun e!1096875 () Bool)

(assert (=> b!1715243 (=> (not res!769096) (not e!1096875))))

(declare-fun lt!655275 () Option!3645)

(assert (=> b!1715243 (= res!769096 (= (++!5135 (list!7563 (charsOf!1959 (_1!10622 (get!5518 lt!655275)))) (_2!10622 (get!5518 lt!655275))) lt!655076))))

(declare-fun bm!109631 () Bool)

(declare-fun call!109636 () Option!3645)

(assert (=> bm!109631 (= call!109636 (maxPrefixOneRule!873 thiss!24550 (h!24129 rules!3447) lt!655076))))

(declare-fun b!1715244 () Bool)

(declare-fun res!769094 () Bool)

(assert (=> b!1715244 (=> (not res!769094) (not e!1096875))))

(assert (=> b!1715244 (= res!769094 (matchR!2112 (regex!3310 (rule!5248 (_1!10622 (get!5518 lt!655275)))) (list!7563 (charsOf!1959 (_1!10622 (get!5518 lt!655275))))))))

(declare-fun b!1715245 () Bool)

(declare-fun e!1096874 () Option!3645)

(assert (=> b!1715245 (= e!1096874 call!109636)))

(declare-fun b!1715246 () Bool)

(declare-fun e!1096876 () Bool)

(assert (=> b!1715246 (= e!1096876 e!1096875)))

(declare-fun res!769093 () Bool)

(assert (=> b!1715246 (=> (not res!769093) (not e!1096875))))

(assert (=> b!1715246 (= res!769093 (isDefined!2988 lt!655275))))

(declare-fun b!1715247 () Bool)

(declare-fun res!769092 () Bool)

(assert (=> b!1715247 (=> (not res!769092) (not e!1096875))))

(assert (=> b!1715247 (= res!769092 (= (value!104009 (_1!10622 (get!5518 lt!655275))) (apply!5117 (transformation!3310 (rule!5248 (_1!10622 (get!5518 lt!655275)))) (seqFromList!2284 (originalCharacters!4124 (_1!10622 (get!5518 lt!655275)))))))))

(declare-fun b!1715249 () Bool)

(declare-fun res!769091 () Bool)

(assert (=> b!1715249 (=> (not res!769091) (not e!1096875))))

(assert (=> b!1715249 (= res!769091 (= (list!7563 (charsOf!1959 (_1!10622 (get!5518 lt!655275)))) (originalCharacters!4124 (_1!10622 (get!5518 lt!655275)))))))

(declare-fun b!1715250 () Bool)

(assert (=> b!1715250 (= e!1096875 (contains!3332 rules!3447 (rule!5248 (_1!10622 (get!5518 lt!655275)))))))

(declare-fun b!1715251 () Bool)

(declare-fun res!769090 () Bool)

(assert (=> b!1715251 (=> (not res!769090) (not e!1096875))))

(assert (=> b!1715251 (= res!769090 (< (size!14887 (_2!10622 (get!5518 lt!655275))) (size!14887 lt!655076)))))

(declare-fun b!1715248 () Bool)

(declare-fun lt!655276 () Option!3645)

(declare-fun lt!655272 () Option!3645)

(assert (=> b!1715248 (= e!1096874 (ite (and (is-None!3644 lt!655276) (is-None!3644 lt!655272)) None!3644 (ite (is-None!3644 lt!655272) lt!655276 (ite (is-None!3644 lt!655276) lt!655272 (ite (>= (size!14885 (_1!10622 (v!25037 lt!655276))) (size!14885 (_1!10622 (v!25037 lt!655272)))) lt!655276 lt!655272)))))))

(assert (=> b!1715248 (= lt!655276 call!109636)))

(assert (=> b!1715248 (= lt!655272 (maxPrefix!1493 thiss!24550 (t!158631 rules!3447) lt!655076))))

(declare-fun d!526406 () Bool)

(assert (=> d!526406 e!1096876))

(declare-fun res!769095 () Bool)

(assert (=> d!526406 (=> res!769095 e!1096876)))

(assert (=> d!526406 (= res!769095 (isEmpty!11775 lt!655275))))

(assert (=> d!526406 (= lt!655275 e!1096874)))

(declare-fun c!281018 () Bool)

(assert (=> d!526406 (= c!281018 (and (is-Cons!18728 rules!3447) (is-Nil!18728 (t!158631 rules!3447))))))

(declare-fun lt!655273 () Unit!32558)

(declare-fun lt!655274 () Unit!32558)

(assert (=> d!526406 (= lt!655273 lt!655274)))

(assert (=> d!526406 (isPrefix!1551 lt!655076 lt!655076)))

(assert (=> d!526406 (= lt!655274 (lemmaIsPrefixRefl!1058 lt!655076 lt!655076))))

(assert (=> d!526406 (rulesValidInductive!1093 thiss!24550 rules!3447)))

(assert (=> d!526406 (= (maxPrefix!1493 thiss!24550 rules!3447 lt!655076) lt!655275)))

(assert (= (and d!526406 c!281018) b!1715245))

(assert (= (and d!526406 (not c!281018)) b!1715248))

(assert (= (or b!1715245 b!1715248) bm!109631))

(assert (= (and d!526406 (not res!769095)) b!1715246))

(assert (= (and b!1715246 res!769093) b!1715249))

(assert (= (and b!1715249 res!769091) b!1715251))

(assert (= (and b!1715251 res!769090) b!1715243))

(assert (= (and b!1715243 res!769096) b!1715247))

(assert (= (and b!1715247 res!769092) b!1715244))

(assert (= (and b!1715244 res!769094) b!1715250))

(declare-fun m!2119541 () Bool)

(assert (=> b!1715249 m!2119541))

(declare-fun m!2119543 () Bool)

(assert (=> b!1715249 m!2119543))

(assert (=> b!1715249 m!2119543))

(declare-fun m!2119545 () Bool)

(assert (=> b!1715249 m!2119545))

(declare-fun m!2119547 () Bool)

(assert (=> d!526406 m!2119547))

(declare-fun m!2119549 () Bool)

(assert (=> d!526406 m!2119549))

(declare-fun m!2119551 () Bool)

(assert (=> d!526406 m!2119551))

(assert (=> d!526406 m!2119009))

(assert (=> b!1715243 m!2119541))

(assert (=> b!1715243 m!2119543))

(assert (=> b!1715243 m!2119543))

(assert (=> b!1715243 m!2119545))

(assert (=> b!1715243 m!2119545))

(declare-fun m!2119553 () Bool)

(assert (=> b!1715243 m!2119553))

(assert (=> b!1715250 m!2119541))

(declare-fun m!2119555 () Bool)

(assert (=> b!1715250 m!2119555))

(assert (=> b!1715244 m!2119541))

(assert (=> b!1715244 m!2119543))

(assert (=> b!1715244 m!2119543))

(assert (=> b!1715244 m!2119545))

(assert (=> b!1715244 m!2119545))

(declare-fun m!2119557 () Bool)

(assert (=> b!1715244 m!2119557))

(declare-fun m!2119559 () Bool)

(assert (=> b!1715248 m!2119559))

(assert (=> b!1715247 m!2119541))

(declare-fun m!2119561 () Bool)

(assert (=> b!1715247 m!2119561))

(assert (=> b!1715247 m!2119561))

(declare-fun m!2119563 () Bool)

(assert (=> b!1715247 m!2119563))

(declare-fun m!2119565 () Bool)

(assert (=> bm!109631 m!2119565))

(assert (=> b!1715251 m!2119541))

(declare-fun m!2119567 () Bool)

(assert (=> b!1715251 m!2119567))

(assert (=> b!1715251 m!2119409))

(declare-fun m!2119569 () Bool)

(assert (=> b!1715246 m!2119569))

(assert (=> b!1714828 d!526406))

(declare-fun d!526408 () Bool)

(assert (=> d!526408 (= (get!5518 lt!655075) (v!25037 lt!655075))))

(assert (=> b!1714828 d!526408))

(declare-fun d!526410 () Bool)

(assert (=> d!526410 (isPrefix!1551 lt!655060 (++!5135 lt!655060 (_2!10622 lt!655066)))))

(declare-fun lt!655277 () Unit!32558)

(assert (=> d!526410 (= lt!655277 (choose!10414 lt!655060 (_2!10622 lt!655066)))))

(assert (=> d!526410 (= (lemmaConcatTwoListThenFirstIsPrefix!1061 lt!655060 (_2!10622 lt!655066)) lt!655277)))

(declare-fun bs!402014 () Bool)

(assert (= bs!402014 d!526410))

(assert (=> bs!402014 m!2118967))

(assert (=> bs!402014 m!2118967))

(assert (=> bs!402014 m!2118975))

(declare-fun m!2119571 () Bool)

(assert (=> bs!402014 m!2119571))

(assert (=> b!1714828 d!526410))

(declare-fun d!526412 () Bool)

(assert (=> d!526412 (= (isDefined!2987 lt!655064) (not (isEmpty!11777 lt!655064)))))

(declare-fun bs!402015 () Bool)

(assert (= bs!402015 d!526412))

(declare-fun m!2119573 () Bool)

(assert (=> bs!402015 m!2119573))

(assert (=> b!1714828 d!526412))

(assert (=> b!1714828 d!526324))

(declare-fun d!526414 () Bool)

(assert (=> d!526414 (= (list!7563 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061))) (list!7565 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061)))))))

(declare-fun bs!402016 () Bool)

(assert (= bs!402016 d!526414))

(declare-fun m!2119575 () Bool)

(assert (=> bs!402016 m!2119575))

(assert (=> b!1714825 d!526414))

(declare-fun bs!402017 () Bool)

(declare-fun d!526416 () Bool)

(assert (= bs!402017 (and d!526416 b!1714830)))

(declare-fun lambda!68954 () Int)

(assert (=> bs!402017 (= lambda!68954 lambda!68939)))

(declare-fun b!1715256 () Bool)

(declare-fun e!1096879 () Bool)

(assert (=> b!1715256 (= e!1096879 true)))

(assert (=> d!526416 e!1096879))

(assert (= d!526416 b!1715256))

(assert (=> b!1715256 (< (dynLambda!8528 order!11293 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066))))) (dynLambda!8529 order!11295 lambda!68954))))

(assert (=> b!1715256 (< (dynLambda!8530 order!11297 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066))))) (dynLambda!8529 order!11295 lambda!68954))))

(assert (=> d!526416 (= (list!7563 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061))) (list!7563 lt!655061))))

(declare-fun lt!655280 () Unit!32558)

(declare-fun ForallOf!251 (Int BalanceConc!12400) Unit!32558)

(assert (=> d!526416 (= lt!655280 (ForallOf!251 lambda!68954 lt!655061))))

(assert (=> d!526416 (= (lemmaSemiInverse!456 (transformation!3310 (rule!5248 (_1!10622 lt!655066))) lt!655061) lt!655280)))

(declare-fun b_lambda!54169 () Bool)

(assert (=> (not b_lambda!54169) (not d!526416)))

(assert (=> d!526416 t!158612))

(declare-fun b_and!124429 () Bool)

(assert (= b_and!124417 (and (=> t!158612 result!121666) b_and!124429)))

(assert (=> d!526416 t!158614))

(declare-fun b_and!124431 () Bool)

(assert (= b_and!124419 (and (=> t!158614 result!121670) b_and!124431)))

(assert (=> d!526416 t!158616))

(declare-fun b_and!124433 () Bool)

(assert (= b_and!124421 (and (=> t!158616 result!121672) b_and!124433)))

(declare-fun b_lambda!54171 () Bool)

(assert (=> (not b_lambda!54171) (not d!526416)))

(assert (=> d!526416 t!158618))

(declare-fun b_and!124435 () Bool)

(assert (= b_and!124399 (and (=> t!158618 result!121674) b_and!124435)))

(assert (=> d!526416 t!158620))

(declare-fun b_and!124437 () Bool)

(assert (= b_and!124401 (and (=> t!158620 result!121678) b_and!124437)))

(assert (=> d!526416 t!158622))

(declare-fun b_and!124439 () Bool)

(assert (= b_and!124403 (and (=> t!158622 result!121680) b_and!124439)))

(assert (=> d!526416 m!2118949))

(assert (=> d!526416 m!2118951))

(assert (=> d!526416 m!2118979))

(assert (=> d!526416 m!2118947))

(assert (=> d!526416 m!2118949))

(assert (=> d!526416 m!2118947))

(declare-fun m!2119577 () Bool)

(assert (=> d!526416 m!2119577))

(assert (=> b!1714825 d!526416))

(declare-fun d!526418 () Bool)

(assert (=> d!526418 (= (isEmpty!11771 (_2!10622 lt!655070)) (is-Nil!18727 (_2!10622 lt!655070)))))

(assert (=> b!1714826 d!526418))

(declare-fun d!526420 () Bool)

(assert (=> d!526420 (= (get!5518 lt!655063) (v!25037 lt!655063))))

(assert (=> b!1714827 d!526420))

(declare-fun b!1715267 () Bool)

(declare-fun b_free!46567 () Bool)

(declare-fun b_next!47271 () Bool)

(assert (=> b!1715267 (= b_free!46567 (not b_next!47271))))

(declare-fun t!158672 () Bool)

(declare-fun tb!101305 () Bool)

(assert (=> (and b!1715267 (= (toValue!4817 (transformation!3310 (h!24129 (t!158631 rules!3447)))) (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066))))) t!158672) tb!101305))

(declare-fun result!121730 () Bool)

(assert (= result!121730 result!121674))

(assert (=> b!1714825 t!158672))

(assert (=> d!526298 t!158672))

(declare-fun tb!101307 () Bool)

(declare-fun t!158674 () Bool)

(assert (=> (and b!1715267 (= (toValue!4817 (transformation!3310 (h!24129 (t!158631 rules!3447)))) (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066))))) t!158674) tb!101307))

(declare-fun result!121732 () Bool)

(assert (= result!121732 result!121710))

(assert (=> d!526298 t!158674))

(assert (=> d!526416 t!158672))

(declare-fun tp!489892 () Bool)

(declare-fun b_and!124441 () Bool)

(assert (=> b!1715267 (= tp!489892 (and (=> t!158672 result!121730) (=> t!158674 result!121732) b_and!124441))))

(declare-fun b_free!46569 () Bool)

(declare-fun b_next!47273 () Bool)

(assert (=> b!1715267 (= b_free!46569 (not b_next!47273))))

(declare-fun t!158676 () Bool)

(declare-fun tb!101309 () Bool)

(assert (=> (and b!1715267 (= (toChars!4676 (transformation!3310 (h!24129 (t!158631 rules!3447)))) (toChars!4676 (transformation!3310 (rule!5248 token!523)))) t!158676) tb!101309))

(declare-fun result!121734 () Bool)

(assert (= result!121734 result!121716))

(assert (=> d!526342 t!158676))

(assert (=> b!1714981 t!158676))

(declare-fun tb!101311 () Bool)

(declare-fun t!158678 () Bool)

(assert (=> (and b!1715267 (= (toChars!4676 (transformation!3310 (h!24129 (t!158631 rules!3447)))) (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066))))) t!158678) tb!101311))

(declare-fun result!121736 () Bool)

(assert (= result!121736 result!121666))

(assert (=> b!1714825 t!158678))

(assert (=> d!526416 t!158678))

(declare-fun t!158680 () Bool)

(declare-fun tb!101313 () Bool)

(assert (=> (and b!1715267 (= (toChars!4676 (transformation!3310 (h!24129 (t!158631 rules!3447)))) (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066))))) t!158680) tb!101313))

(declare-fun result!121738 () Bool)

(assert (= result!121738 result!121682))

(assert (=> b!1714829 t!158680))

(assert (=> d!526324 t!158680))

(declare-fun tp!489891 () Bool)

(declare-fun b_and!124443 () Bool)

(assert (=> b!1715267 (= tp!489891 (and (=> t!158680 result!121738) (=> t!158678 result!121736) (=> t!158676 result!121734) b_and!124443))))

(declare-fun e!1096891 () Bool)

(assert (=> b!1715267 (= e!1096891 (and tp!489892 tp!489891))))

(declare-fun tp!489893 () Bool)

(declare-fun b!1715266 () Bool)

(declare-fun e!1096888 () Bool)

(assert (=> b!1715266 (= e!1096888 (and tp!489893 (inv!24152 (tag!3610 (h!24129 (t!158631 rules!3447)))) (inv!24156 (transformation!3310 (h!24129 (t!158631 rules!3447)))) e!1096891))))

(declare-fun b!1715265 () Bool)

(declare-fun e!1096890 () Bool)

(declare-fun tp!489894 () Bool)

(assert (=> b!1715265 (= e!1096890 (and e!1096888 tp!489894))))

(assert (=> b!1714817 (= tp!489831 e!1096890)))

(assert (= b!1715266 b!1715267))

(assert (= b!1715265 b!1715266))

(assert (= (and b!1714817 (is-Cons!18728 (t!158631 rules!3447))) b!1715265))

(declare-fun m!2119579 () Bool)

(assert (=> b!1715266 m!2119579))

(declare-fun m!2119581 () Bool)

(assert (=> b!1715266 m!2119581))

(declare-fun tp!489903 () Bool)

(declare-fun b!1715276 () Bool)

(declare-fun e!1096896 () Bool)

(declare-fun tp!489901 () Bool)

(assert (=> b!1715276 (= e!1096896 (and (inv!24157 (left!14927 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (value!104009 (_1!10622 lt!655066)))))) tp!489903 (inv!24157 (right!15257 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (value!104009 (_1!10622 lt!655066)))))) tp!489901))))

(declare-fun b!1715278 () Bool)

(declare-fun e!1096897 () Bool)

(declare-fun tp!489902 () Bool)

(assert (=> b!1715278 (= e!1096897 tp!489902)))

(declare-fun b!1715277 () Bool)

(declare-fun inv!24165 (IArray!12461) Bool)

(assert (=> b!1715277 (= e!1096896 (and (inv!24165 (xs!9104 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (value!104009 (_1!10622 lt!655066)))))) e!1096897))))

(assert (=> b!1714858 (= tp!489840 (and (inv!24157 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (value!104009 (_1!10622 lt!655066))))) e!1096896))))

(assert (= (and b!1714858 (is-Node!6228 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (value!104009 (_1!10622 lt!655066)))))) b!1715276))

(assert (= b!1715277 b!1715278))

(assert (= (and b!1714858 (is-Leaf!9104 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (value!104009 (_1!10622 lt!655066)))))) b!1715277))

(declare-fun m!2119583 () Bool)

(assert (=> b!1715276 m!2119583))

(declare-fun m!2119585 () Bool)

(assert (=> b!1715276 m!2119585))

(declare-fun m!2119587 () Bool)

(assert (=> b!1715277 m!2119587))

(assert (=> b!1714858 m!2118935))

(declare-fun b!1715291 () Bool)

(declare-fun e!1096900 () Bool)

(declare-fun tp!489914 () Bool)

(assert (=> b!1715291 (= e!1096900 tp!489914)))

(declare-fun b!1715289 () Bool)

(assert (=> b!1715289 (= e!1096900 tp_is_empty!7519)))

(declare-fun b!1715290 () Bool)

(declare-fun tp!489915 () Bool)

(declare-fun tp!489917 () Bool)

(assert (=> b!1715290 (= e!1096900 (and tp!489915 tp!489917))))

(assert (=> b!1714823 (= tp!489829 e!1096900)))

(declare-fun b!1715292 () Bool)

(declare-fun tp!489918 () Bool)

(declare-fun tp!489916 () Bool)

(assert (=> b!1715292 (= e!1096900 (and tp!489918 tp!489916))))

(assert (= (and b!1714823 (is-ElementMatch!4638 (regex!3310 (rule!5248 token!523)))) b!1715289))

(assert (= (and b!1714823 (is-Concat!8039 (regex!3310 (rule!5248 token!523)))) b!1715290))

(assert (= (and b!1714823 (is-Star!4638 (regex!3310 (rule!5248 token!523)))) b!1715291))

(assert (= (and b!1714823 (is-Union!4638 (regex!3310 (rule!5248 token!523)))) b!1715292))

(declare-fun b!1715297 () Bool)

(declare-fun e!1096903 () Bool)

(declare-fun tp!489921 () Bool)

(assert (=> b!1715297 (= e!1096903 (and tp_is_empty!7519 tp!489921))))

(assert (=> b!1714813 (= tp!489832 e!1096903)))

(assert (= (and b!1714813 (is-Cons!18727 (t!158630 suffix!1421))) b!1715297))

(declare-fun b!1715300 () Bool)

(declare-fun e!1096904 () Bool)

(declare-fun tp!489922 () Bool)

(assert (=> b!1715300 (= e!1096904 tp!489922)))

(declare-fun b!1715298 () Bool)

(assert (=> b!1715298 (= e!1096904 tp_is_empty!7519)))

(declare-fun b!1715299 () Bool)

(declare-fun tp!489923 () Bool)

(declare-fun tp!489925 () Bool)

(assert (=> b!1715299 (= e!1096904 (and tp!489923 tp!489925))))

(assert (=> b!1714824 (= tp!489830 e!1096904)))

(declare-fun b!1715301 () Bool)

(declare-fun tp!489926 () Bool)

(declare-fun tp!489924 () Bool)

(assert (=> b!1715301 (= e!1096904 (and tp!489926 tp!489924))))

(assert (= (and b!1714824 (is-ElementMatch!4638 (regex!3310 rule!422))) b!1715298))

(assert (= (and b!1714824 (is-Concat!8039 (regex!3310 rule!422))) b!1715299))

(assert (= (and b!1714824 (is-Star!4638 (regex!3310 rule!422))) b!1715300))

(assert (= (and b!1714824 (is-Union!4638 (regex!3310 rule!422))) b!1715301))

(declare-fun b!1715304 () Bool)

(declare-fun e!1096905 () Bool)

(declare-fun tp!489927 () Bool)

(assert (=> b!1715304 (= e!1096905 tp!489927)))

(declare-fun b!1715302 () Bool)

(assert (=> b!1715302 (= e!1096905 tp_is_empty!7519)))

(declare-fun b!1715303 () Bool)

(declare-fun tp!489928 () Bool)

(declare-fun tp!489930 () Bool)

(assert (=> b!1715303 (= e!1096905 (and tp!489928 tp!489930))))

(assert (=> b!1714815 (= tp!489834 e!1096905)))

(declare-fun b!1715305 () Bool)

(declare-fun tp!489931 () Bool)

(declare-fun tp!489929 () Bool)

(assert (=> b!1715305 (= e!1096905 (and tp!489931 tp!489929))))

(assert (= (and b!1714815 (is-ElementMatch!4638 (regex!3310 (h!24129 rules!3447)))) b!1715302))

(assert (= (and b!1714815 (is-Concat!8039 (regex!3310 (h!24129 rules!3447)))) b!1715303))

(assert (= (and b!1714815 (is-Star!4638 (regex!3310 (h!24129 rules!3447)))) b!1715304))

(assert (= (and b!1714815 (is-Union!4638 (regex!3310 (h!24129 rules!3447)))) b!1715305))

(declare-fun b!1715306 () Bool)

(declare-fun e!1096906 () Bool)

(declare-fun tp!489932 () Bool)

(assert (=> b!1715306 (= e!1096906 (and tp_is_empty!7519 tp!489932))))

(assert (=> b!1714821 (= tp!489836 e!1096906)))

(assert (= (and b!1714821 (is-Cons!18727 (originalCharacters!4124 token!523))) b!1715306))

(declare-fun tp!489933 () Bool)

(declare-fun tp!489935 () Bool)

(declare-fun e!1096907 () Bool)

(declare-fun b!1715307 () Bool)

(assert (=> b!1715307 (= e!1096907 (and (inv!24157 (left!14927 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061))))) tp!489935 (inv!24157 (right!15257 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061))))) tp!489933))))

(declare-fun b!1715309 () Bool)

(declare-fun e!1096908 () Bool)

(declare-fun tp!489934 () Bool)

(assert (=> b!1715309 (= e!1096908 tp!489934)))

(declare-fun b!1715308 () Bool)

(assert (=> b!1715308 (= e!1096907 (and (inv!24165 (xs!9104 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061))))) e!1096908))))

(assert (=> b!1714855 (= tp!489839 (and (inv!24157 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061)))) e!1096907))))

(assert (= (and b!1714855 (is-Node!6228 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061))))) b!1715307))

(assert (= b!1715308 b!1715309))

(assert (= (and b!1714855 (is-Leaf!9104 (c!280964 (dynLambda!8531 (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) (dynLambda!8532 (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))) lt!655061))))) b!1715308))

(declare-fun m!2119589 () Bool)

(assert (=> b!1715307 m!2119589))

(declare-fun m!2119591 () Bool)

(assert (=> b!1715307 m!2119591))

(declare-fun m!2119593 () Bool)

(assert (=> b!1715308 m!2119593))

(assert (=> b!1714855 m!2118929))

(declare-fun b_lambda!54173 () Bool)

(assert (= b_lambda!54145 (or (and b!1714835 b_free!46545 (= (toChars!4676 (transformation!3310 (rule!5248 token!523))) (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))))) (and b!1714834 b_free!46549 (= (toChars!4676 (transformation!3310 rule!422)) (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))))) (and b!1714818 b_free!46553 (= (toChars!4676 (transformation!3310 (h!24129 rules!3447))) (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))))) (and b!1715267 b_free!46569 (= (toChars!4676 (transformation!3310 (h!24129 (t!158631 rules!3447)))) (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))))) b_lambda!54173)))

(declare-fun b_lambda!54175 () Bool)

(assert (= b_lambda!54147 (or (and b!1714835 b_free!46543 (= (toValue!4817 (transformation!3310 (rule!5248 token!523))) (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))))) (and b!1714834 b_free!46547 (= (toValue!4817 (transformation!3310 rule!422)) (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))))) (and b!1714818 b_free!46551 (= (toValue!4817 (transformation!3310 (h!24129 rules!3447))) (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))))) (and b!1715267 b_free!46567 (= (toValue!4817 (transformation!3310 (h!24129 (t!158631 rules!3447)))) (toValue!4817 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))))) b_lambda!54175)))

(declare-fun b_lambda!54177 () Bool)

(assert (= b_lambda!54165 (or (and b!1714835 b_free!46545) (and b!1714834 b_free!46549 (= (toChars!4676 (transformation!3310 rule!422)) (toChars!4676 (transformation!3310 (rule!5248 token!523))))) (and b!1714818 b_free!46553 (= (toChars!4676 (transformation!3310 (h!24129 rules!3447))) (toChars!4676 (transformation!3310 (rule!5248 token!523))))) (and b!1715267 b_free!46569 (= (toChars!4676 (transformation!3310 (h!24129 (t!158631 rules!3447)))) (toChars!4676 (transformation!3310 (rule!5248 token!523))))) b_lambda!54177)))

(declare-fun b_lambda!54179 () Bool)

(assert (= b_lambda!54149 (or (and b!1714835 b_free!46545 (= (toChars!4676 (transformation!3310 (rule!5248 token!523))) (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))))) (and b!1714834 b_free!46549 (= (toChars!4676 (transformation!3310 rule!422)) (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))))) (and b!1714818 b_free!46553 (= (toChars!4676 (transformation!3310 (h!24129 rules!3447))) (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))))) (and b!1715267 b_free!46569 (= (toChars!4676 (transformation!3310 (h!24129 (t!158631 rules!3447)))) (toChars!4676 (transformation!3310 (rule!5248 (_1!10622 lt!655066)))))) b_lambda!54179)))

(declare-fun b_lambda!54181 () Bool)

(assert (= b_lambda!54161 (or (and b!1714835 b_free!46545) (and b!1714834 b_free!46549 (= (toChars!4676 (transformation!3310 rule!422)) (toChars!4676 (transformation!3310 (rule!5248 token!523))))) (and b!1714818 b_free!46553 (= (toChars!4676 (transformation!3310 (h!24129 rules!3447))) (toChars!4676 (transformation!3310 (rule!5248 token!523))))) (and b!1715267 b_free!46569 (= (toChars!4676 (transformation!3310 (h!24129 (t!158631 rules!3447)))) (toChars!4676 (transformation!3310 (rule!5248 token!523))))) b_lambda!54181)))

(push 1)

(assert (not b!1715251))

(assert (not d!526340))

(assert (not b!1715095))

(assert (not d!526328))

(assert (not b_next!47249))

(assert (not bm!109625))

(assert (not b!1715109))

(assert (not d!526308))

(assert (not b_next!47255))

(assert (not b!1715054))

(assert (not b!1715297))

(assert (not b!1715300))

(assert (not d!526410))

(assert (not d!526372))

(assert (not b!1715246))

(assert (not b!1715291))

(assert (not b!1715163))

(assert (not b!1714998))

(assert (not b_next!47271))

(assert (not b_lambda!54177))

(assert (not d!526366))

(assert (not b!1715164))

(assert (not d!526376))

(assert (not b!1715117))

(assert (not d!526414))

(assert (not b!1715010))

(assert (not b!1715099))

(assert b_and!124431)

(assert (not b!1715309))

(assert (not b!1715299))

(assert (not b!1715049))

(assert (not b!1714981))

(assert (not b!1715009))

(assert (not b!1715248))

(assert (not b!1715250))

(assert (not b!1715098))

(assert (not b!1715147))

(assert (not b_next!47251))

(assert (not tb!101293))

(assert (not b!1715150))

(assert (not b!1715301))

(assert (not b!1715122))

(assert (not b!1715278))

(assert (not b!1715174))

(assert (not b!1715146))

(assert (not b!1715153))

(assert b_and!124437)

(assert (not b!1714982))

(assert (not b!1714996))

(assert (not d!526304))

(assert (not bm!109627))

(assert (not d!526336))

(assert (not b!1715139))

(assert (not b!1715306))

(assert (not d!526358))

(assert (not b!1714983))

(assert (not b!1715241))

(assert (not b!1715136))

(assert (not b!1715072))

(assert (not b!1715237))

(assert (not b!1715092))

(assert (not b!1715157))

(assert (not b!1715276))

(assert (not b!1715152))

(assert (not b!1715242))

(assert (not b!1715290))

(assert (not d!526310))

(assert (not b!1714976))

(assert (not bm!109622))

(assert (not b!1715243))

(assert (not b!1715097))

(assert (not d!526412))

(assert (not d!526396))

(assert (not b!1715176))

(assert (not b!1715230))

(assert (not d!526338))

(assert (not b!1714993))

(assert (not d!526380))

(assert (not b!1714855))

(assert (not d!526342))

(assert b_and!124443)

(assert (not bm!109626))

(assert (not d!526324))

(assert (not d!526416))

(assert (not d!526330))

(assert (not b!1715156))

(assert (not b!1715240))

(assert (not b!1715266))

(assert (not d!526298))

(assert (not b!1714964))

(assert (not d!526294))

(assert tp_is_empty!7519)

(assert (not b!1715265))

(assert (not b!1715115))

(assert (not b!1715308))

(assert (not b!1715303))

(assert (not b!1715096))

(assert (not d!526306))

(assert (not b!1715234))

(assert (not b!1715238))

(assert (not d!526332))

(assert (not b!1715045))

(assert (not b!1715292))

(assert (not bm!109631))

(assert (not b_next!47247))

(assert b_and!124429)

(assert (not b_next!47273))

(assert (not tb!101287))

(assert (not b!1715100))

(assert (not b!1715135))

(assert (not b!1715232))

(assert (not b!1715145))

(assert (not d!526322))

(assert (not b!1715247))

(assert (not d!526350))

(assert b_and!124435)

(assert (not b!1715175))

(assert (not b_lambda!54179))

(assert b_and!124433)

(assert (not b!1715277))

(assert (not b!1715215))

(assert (not b_lambda!54169))

(assert b_and!124439)

(assert (not b!1714858))

(assert (not b!1714986))

(assert (not d!526378))

(assert (not d!526320))

(assert (not b!1715236))

(assert (not b_lambda!54181))

(assert (not d!526384))

(assert (not b!1715137))

(assert (not b!1715013))

(assert (not d!526302))

(assert (not b!1715093))

(assert (not b!1715103))

(assert (not b!1715060))

(assert (not b!1715055))

(assert (not b!1715061))

(assert (not b!1715304))

(assert (not b!1714995))

(assert (not b!1715244))

(assert (not b!1714963))

(assert (not b_lambda!54171))

(assert (not b!1715307))

(assert (not d!526370))

(assert (not d!526360))

(assert (not b_lambda!54159))

(assert (not d!526400))

(assert (not b!1715128))

(assert (not b!1715214))

(assert (not b!1715213))

(assert (not b_next!47253))

(assert (not b!1715305))

(assert (not b_lambda!54163))

(assert (not d!526404))

(assert (not d!526352))

(assert (not b!1715249))

(assert b_and!124441)

(assert (not b_lambda!54173))

(assert (not d!526346))

(assert (not b!1715113))

(assert (not b_lambda!54175))

(assert (not b!1715047))

(assert (not b_next!47257))

(assert (not b!1715123))

(assert (not b!1715131))

(assert (not b!1715144))

(assert (not b_lambda!54157))

(assert (not d!526406))

(assert (not b!1715071))

(assert (not b!1715114))

(assert (not d!526300))

(assert (not d!526356))

(assert (not b!1715046))

(assert (not d!526296))

(assert (not b!1715130))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!47271))

(assert b_and!124431)

(assert (not b_next!47251))

(assert b_and!124437)

(assert b_and!124443)

(assert (not b_next!47273))

(assert b_and!124435)

(assert (not b_next!47253))

(assert b_and!124441)

(assert (not b_next!47257))

(assert (not b_next!47249))

(assert (not b_next!47255))

(assert (not b_next!47247))

(assert b_and!124429)

(assert b_and!124433)

(assert b_and!124439)

(check-sat)

(pop 1)

