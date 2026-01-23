; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!176886 () Bool)

(assert start!176886)

(declare-fun b!1779193 () Bool)

(declare-fun b_free!49367 () Bool)

(declare-fun b_next!50071 () Bool)

(assert (=> b!1779193 (= b_free!49367 (not b_next!50071))))

(declare-fun tp!503913 () Bool)

(declare-fun b_and!136215 () Bool)

(assert (=> b!1779193 (= tp!503913 b_and!136215)))

(declare-fun b_free!49369 () Bool)

(declare-fun b_next!50073 () Bool)

(assert (=> b!1779193 (= b_free!49369 (not b_next!50073))))

(declare-fun tp!503905 () Bool)

(declare-fun b_and!136217 () Bool)

(assert (=> b!1779193 (= tp!503905 b_and!136217)))

(declare-fun b!1779203 () Bool)

(declare-fun b_free!49371 () Bool)

(declare-fun b_next!50075 () Bool)

(assert (=> b!1779203 (= b_free!49371 (not b_next!50075))))

(declare-fun tp!503908 () Bool)

(declare-fun b_and!136219 () Bool)

(assert (=> b!1779203 (= tp!503908 b_and!136219)))

(declare-fun b_free!49373 () Bool)

(declare-fun b_next!50077 () Bool)

(assert (=> b!1779203 (= b_free!49373 (not b_next!50077))))

(declare-fun tp!503904 () Bool)

(declare-fun b_and!136221 () Bool)

(assert (=> b!1779203 (= tp!503904 b_and!136221)))

(declare-fun b!1779200 () Bool)

(declare-fun b_free!49375 () Bool)

(declare-fun b_next!50079 () Bool)

(assert (=> b!1779200 (= b_free!49375 (not b_next!50079))))

(declare-fun tp!503914 () Bool)

(declare-fun b_and!136223 () Bool)

(assert (=> b!1779200 (= tp!503914 b_and!136223)))

(declare-fun b_free!49377 () Bool)

(declare-fun b_next!50081 () Bool)

(assert (=> b!1779200 (= b_free!49377 (not b_next!50081))))

(declare-fun tp!503912 () Bool)

(declare-fun b_and!136225 () Bool)

(assert (=> b!1779200 (= tp!503912 b_and!136225)))

(declare-fun b!1779234 () Bool)

(declare-fun e!1138679 () Bool)

(assert (=> b!1779234 (= e!1138679 true)))

(declare-fun b!1779233 () Bool)

(declare-fun e!1138678 () Bool)

(assert (=> b!1779233 (= e!1138678 e!1138679)))

(declare-fun b!1779232 () Bool)

(declare-fun e!1138677 () Bool)

(assert (=> b!1779232 (= e!1138677 e!1138678)))

(declare-fun b!1779199 () Bool)

(assert (=> b!1779199 e!1138677))

(assert (= b!1779233 b!1779234))

(assert (= b!1779232 b!1779233))

(assert (= b!1779199 b!1779232))

(declare-fun order!12623 () Int)

(declare-datatypes ((List!19673 0))(
  ( (Nil!19603) (Cons!19603 (h!25004 (_ BitVec 16)) (t!166352 List!19673)) )
))
(declare-datatypes ((TokenValue!3601 0))(
  ( (FloatLiteralValue!7202 (text!25652 List!19673)) (TokenValueExt!3600 (__x!12504 Int)) (Broken!18005 (value!109710 List!19673)) (Object!3670) (End!3601) (Def!3601) (Underscore!3601) (Match!3601) (Else!3601) (Error!3601) (Case!3601) (If!3601) (Extends!3601) (Abstract!3601) (Class!3601) (Val!3601) (DelimiterValue!7202 (del!3661 List!19673)) (KeywordValue!3607 (value!109711 List!19673)) (CommentValue!7202 (value!109712 List!19673)) (WhitespaceValue!7202 (value!109713 List!19673)) (IndentationValue!3601 (value!109714 List!19673)) (String!22336) (Int32!3601) (Broken!18006 (value!109715 List!19673)) (Boolean!3602) (Unit!33873) (OperatorValue!3604 (op!3661 List!19673)) (IdentifierValue!7202 (value!109716 List!19673)) (IdentifierValue!7203 (value!109717 List!19673)) (WhitespaceValue!7203 (value!109718 List!19673)) (True!7202) (False!7202) (Broken!18007 (value!109719 List!19673)) (Broken!18008 (value!109720 List!19673)) (True!7203) (RightBrace!3601) (RightBracket!3601) (Colon!3601) (Null!3601) (Comma!3601) (LeftBracket!3601) (False!7203) (LeftBrace!3601) (ImaginaryLiteralValue!3601 (text!25653 List!19673)) (StringLiteralValue!10803 (value!109721 List!19673)) (EOFValue!3601 (value!109722 List!19673)) (IdentValue!3601 (value!109723 List!19673)) (DelimiterValue!7203 (value!109724 List!19673)) (DedentValue!3601 (value!109725 List!19673)) (NewLineValue!3601 (value!109726 List!19673)) (IntegerValue!10803 (value!109727 (_ BitVec 32)) (text!25654 List!19673)) (IntegerValue!10804 (value!109728 Int) (text!25655 List!19673)) (Times!3601) (Or!3601) (Equal!3601) (Minus!3601) (Broken!18009 (value!109729 List!19673)) (And!3601) (Div!3601) (LessEqual!3601) (Mod!3601) (Concat!8440) (Not!3601) (Plus!3601) (SpaceValue!3601 (value!109730 List!19673)) (IntegerValue!10805 (value!109731 Int) (text!25656 List!19673)) (StringLiteralValue!10804 (text!25657 List!19673)) (FloatLiteralValue!7203 (text!25658 List!19673)) (BytesLiteralValue!3601 (value!109732 List!19673)) (CommentValue!7203 (value!109733 List!19673)) (StringLiteralValue!10805 (value!109734 List!19673)) (ErrorTokenValue!3601 (msg!3662 List!19673)) )
))
(declare-datatypes ((String!22337 0))(
  ( (String!22338 (value!109735 String)) )
))
(declare-datatypes ((C!9852 0))(
  ( (C!9853 (val!5522 Int)) )
))
(declare-datatypes ((List!19674 0))(
  ( (Nil!19604) (Cons!19604 (h!25005 C!9852) (t!166353 List!19674)) )
))
(declare-datatypes ((Regex!4839 0))(
  ( (ElementMatch!4839 (c!289504 C!9852)) (Concat!8441 (regOne!10190 Regex!4839) (regTwo!10190 Regex!4839)) (EmptyExpr!4839) (Star!4839 (reg!5168 Regex!4839)) (EmptyLang!4839) (Union!4839 (regOne!10191 Regex!4839) (regTwo!10191 Regex!4839)) )
))
(declare-datatypes ((IArray!13047 0))(
  ( (IArray!13048 (innerList!6581 List!19674)) )
))
(declare-datatypes ((Conc!6521 0))(
  ( (Node!6521 (left!15710 Conc!6521) (right!16040 Conc!6521) (csize!13272 Int) (cheight!6732 Int)) (Leaf!9497 (xs!9397 IArray!13047) (csize!13273 Int)) (Empty!6521) )
))
(declare-datatypes ((BalanceConc!12986 0))(
  ( (BalanceConc!12987 (c!289505 Conc!6521)) )
))
(declare-datatypes ((TokenValueInjection!6862 0))(
  ( (TokenValueInjection!6863 (toValue!5038 Int) (toChars!4897 Int)) )
))
(declare-datatypes ((Rule!6822 0))(
  ( (Rule!6823 (regex!3511 Regex!4839) (tag!3903 String!22337) (isSeparator!3511 Bool) (transformation!3511 TokenValueInjection!6862)) )
))
(declare-datatypes ((Token!6588 0))(
  ( (Token!6589 (value!109736 TokenValue!3601) (rule!5579 Rule!6822) (size!15574 Int) (originalCharacters!4325 List!19674)) )
))
(declare-datatypes ((tuple2!19198 0))(
  ( (tuple2!19199 (_1!11001 Token!6588) (_2!11001 List!19674)) )
))
(declare-fun lt!690941 () tuple2!19198)

(declare-fun lambda!70626 () Int)

(declare-fun order!12625 () Int)

(declare-fun dynLambda!9606 (Int Int) Int)

(declare-fun dynLambda!9607 (Int Int) Int)

(assert (=> b!1779234 (< (dynLambda!9606 order!12623 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) (dynLambda!9607 order!12625 lambda!70626))))

(declare-fun order!12627 () Int)

(declare-fun dynLambda!9608 (Int Int) Int)

(assert (=> b!1779234 (< (dynLambda!9608 order!12627 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) (dynLambda!9607 order!12625 lambda!70626))))

(declare-fun b!1779189 () Bool)

(declare-fun res!801826 () Bool)

(declare-fun e!1138643 () Bool)

(assert (=> b!1779189 (=> (not res!801826) (not e!1138643))))

(declare-datatypes ((List!19675 0))(
  ( (Nil!19605) (Cons!19605 (h!25006 Rule!6822) (t!166354 List!19675)) )
))
(declare-fun rules!3447 () List!19675)

(declare-fun rule!422 () Rule!6822)

(declare-fun contains!3543 (List!19675 Rule!6822) Bool)

(assert (=> b!1779189 (= res!801826 (contains!3543 rules!3447 rule!422))))

(declare-fun e!1138661 () Bool)

(declare-fun lt!690934 () List!19674)

(declare-fun lt!690953 () List!19674)

(declare-fun b!1779190 () Bool)

(declare-fun ++!5335 (List!19674 List!19674) List!19674)

(assert (=> b!1779190 (= e!1138661 (= (++!5335 lt!690934 (_2!11001 lt!690941)) lt!690953))))

(declare-fun lt!690956 () List!19674)

(assert (=> b!1779190 (= lt!690956 lt!690934)))

(declare-datatypes ((Unit!33874 0))(
  ( (Unit!33875) )
))
(declare-fun lt!690971 () Unit!33874)

(declare-fun lemmaIsPrefixSameLengthThenSameList!247 (List!19674 List!19674 List!19674) Unit!33874)

(assert (=> b!1779190 (= lt!690971 (lemmaIsPrefixSameLengthThenSameList!247 lt!690956 lt!690934 lt!690953))))

(declare-fun b!1779191 () Bool)

(declare-fun e!1138665 () Bool)

(declare-fun e!1138644 () Bool)

(assert (=> b!1779191 (= e!1138665 e!1138644)))

(declare-fun res!801821 () Bool)

(assert (=> b!1779191 (=> res!801821 e!1138644)))

(declare-fun isPrefix!1751 (List!19674 List!19674) Bool)

(assert (=> b!1779191 (= res!801821 (not (isPrefix!1751 lt!690956 lt!690953)))))

(assert (=> b!1779191 (isPrefix!1751 lt!690956 (++!5335 lt!690956 (_2!11001 lt!690941)))))

(declare-fun lt!690968 () Unit!33874)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1260 (List!19674 List!19674) Unit!33874)

(assert (=> b!1779191 (= lt!690968 (lemmaConcatTwoListThenFirstIsPrefix!1260 lt!690956 (_2!11001 lt!690941)))))

(declare-fun lt!690936 () BalanceConc!12986)

(declare-fun list!7969 (BalanceConc!12986) List!19674)

(assert (=> b!1779191 (= lt!690956 (list!7969 lt!690936))))

(declare-fun charsOf!2160 (Token!6588) BalanceConc!12986)

(assert (=> b!1779191 (= lt!690936 (charsOf!2160 (_1!11001 lt!690941)))))

(declare-fun e!1138656 () Bool)

(assert (=> b!1779191 e!1138656))

(declare-fun res!801819 () Bool)

(assert (=> b!1779191 (=> (not res!801819) (not e!1138656))))

(declare-datatypes ((Option!4044 0))(
  ( (None!4043) (Some!4043 (v!25530 Rule!6822)) )
))
(declare-fun lt!690958 () Option!4044)

(declare-fun isDefined!3387 (Option!4044) Bool)

(assert (=> b!1779191 (= res!801819 (isDefined!3387 lt!690958))))

(declare-datatypes ((LexerInterface!3140 0))(
  ( (LexerInterfaceExt!3137 (__x!12505 Int)) (Lexer!3138) )
))
(declare-fun thiss!24550 () LexerInterface!3140)

(declare-fun getRuleFromTag!559 (LexerInterface!3140 List!19675 String!22337) Option!4044)

(assert (=> b!1779191 (= lt!690958 (getRuleFromTag!559 thiss!24550 rules!3447 (tag!3903 (rule!5579 (_1!11001 lt!690941)))))))

(declare-fun lt!690945 () Unit!33874)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!559 (LexerInterface!3140 List!19675 List!19674 Token!6588) Unit!33874)

(assert (=> b!1779191 (= lt!690945 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!559 thiss!24550 rules!3447 lt!690953 (_1!11001 lt!690941)))))

(declare-datatypes ((Option!4045 0))(
  ( (None!4044) (Some!4044 (v!25531 tuple2!19198)) )
))
(declare-fun lt!690976 () Option!4045)

(declare-fun get!6017 (Option!4045) tuple2!19198)

(assert (=> b!1779191 (= lt!690941 (get!6017 lt!690976))))

(declare-fun suffix!1421 () List!19674)

(declare-fun lt!690946 () Unit!33874)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!662 (LexerInterface!3140 List!19675 List!19674 List!19674) Unit!33874)

(assert (=> b!1779191 (= lt!690946 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!662 thiss!24550 rules!3447 lt!690934 suffix!1421))))

(declare-fun maxPrefix!1694 (LexerInterface!3140 List!19675 List!19674) Option!4045)

(assert (=> b!1779191 (= lt!690976 (maxPrefix!1694 thiss!24550 rules!3447 lt!690953))))

(assert (=> b!1779191 (isPrefix!1751 lt!690934 lt!690953)))

(declare-fun lt!690947 () Unit!33874)

(assert (=> b!1779191 (= lt!690947 (lemmaConcatTwoListThenFirstIsPrefix!1260 lt!690934 suffix!1421))))

(assert (=> b!1779191 (= lt!690953 (++!5335 lt!690934 suffix!1421))))

(declare-fun b!1779192 () Bool)

(declare-fun e!1138646 () Bool)

(assert (=> b!1779192 (= e!1138646 e!1138665)))

(declare-fun res!801814 () Bool)

(assert (=> b!1779192 (=> res!801814 e!1138665)))

(declare-fun lt!690975 () Regex!4839)

(declare-fun lt!690969 () List!19674)

(declare-fun prefixMatch!722 (Regex!4839 List!19674) Bool)

(assert (=> b!1779192 (= res!801814 (prefixMatch!722 lt!690975 lt!690969))))

(declare-fun head!4154 (List!19674) C!9852)

(assert (=> b!1779192 (= lt!690969 (++!5335 lt!690934 (Cons!19604 (head!4154 suffix!1421) Nil!19604)))))

(declare-fun rulesRegex!867 (LexerInterface!3140 List!19675) Regex!4839)

(assert (=> b!1779192 (= lt!690975 (rulesRegex!867 thiss!24550 rules!3447))))

(declare-fun e!1138653 () Bool)

(assert (=> b!1779193 (= e!1138653 (and tp!503913 tp!503905))))

(declare-fun b!1779194 () Bool)

(declare-fun e!1138657 () Bool)

(declare-fun e!1138651 () Bool)

(assert (=> b!1779194 (= e!1138657 e!1138651)))

(declare-fun res!801809 () Bool)

(assert (=> b!1779194 (=> res!801809 e!1138651)))

(declare-fun lt!690954 () List!19674)

(declare-fun lt!690937 () Option!4045)

(assert (=> b!1779194 (= res!801809 (or (not (= lt!690954 (_2!11001 lt!690941))) (not (= lt!690937 (Some!4044 (tuple2!19199 (_1!11001 lt!690941) lt!690954))))))))

(assert (=> b!1779194 (= (_2!11001 lt!690941) lt!690954)))

(declare-fun lt!690939 () Unit!33874)

(declare-fun lemmaSamePrefixThenSameSuffix!862 (List!19674 List!19674 List!19674 List!19674 List!19674) Unit!33874)

(assert (=> b!1779194 (= lt!690939 (lemmaSamePrefixThenSameSuffix!862 lt!690956 (_2!11001 lt!690941) lt!690956 lt!690954 lt!690953))))

(declare-fun getSuffix!918 (List!19674 List!19674) List!19674)

(assert (=> b!1779194 (= lt!690954 (getSuffix!918 lt!690953 lt!690956))))

(declare-fun lt!690962 () Int)

(declare-fun lt!690935 () TokenValue!3601)

(assert (=> b!1779194 (= lt!690937 (Some!4044 (tuple2!19199 (Token!6589 lt!690935 (rule!5579 (_1!11001 lt!690941)) lt!690962 lt!690956) (_2!11001 lt!690941))))))

(declare-fun maxPrefixOneRule!1063 (LexerInterface!3140 Rule!6822 List!19674) Option!4045)

(assert (=> b!1779194 (= lt!690937 (maxPrefixOneRule!1063 thiss!24550 (rule!5579 (_1!11001 lt!690941)) lt!690953))))

(declare-fun size!15575 (List!19674) Int)

(assert (=> b!1779194 (= lt!690962 (size!15575 lt!690956))))

(declare-fun apply!5311 (TokenValueInjection!6862 BalanceConc!12986) TokenValue!3601)

(declare-fun seqFromList!2480 (List!19674) BalanceConc!12986)

(assert (=> b!1779194 (= lt!690935 (apply!5311 (transformation!3511 (rule!5579 (_1!11001 lt!690941))) (seqFromList!2480 lt!690956)))))

(declare-fun lt!690942 () Unit!33874)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!441 (LexerInterface!3140 List!19675 List!19674 List!19674 List!19674 Rule!6822) Unit!33874)

(assert (=> b!1779194 (= lt!690942 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!441 thiss!24550 rules!3447 lt!690956 lt!690953 (_2!11001 lt!690941) (rule!5579 (_1!11001 lt!690941))))))

(declare-fun b!1779196 () Bool)

(declare-fun e!1138650 () Bool)

(declare-fun e!1138669 () Bool)

(assert (=> b!1779196 (= e!1138650 e!1138669)))

(declare-fun res!801810 () Bool)

(assert (=> b!1779196 (=> res!801810 e!1138669)))

(declare-fun dynLambda!9609 (Int TokenValue!3601) BalanceConc!12986)

(declare-fun dynLambda!9610 (Int BalanceConc!12986) TokenValue!3601)

(assert (=> b!1779196 (= res!801810 (not (= (list!7969 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936))) lt!690956)))))

(declare-fun lt!690950 () Unit!33874)

(declare-fun lemmaSemiInverse!649 (TokenValueInjection!6862 BalanceConc!12986) Unit!33874)

(assert (=> b!1779196 (= lt!690950 (lemmaSemiInverse!649 (transformation!3511 (rule!5579 (_1!11001 lt!690941))) lt!690936))))

(declare-fun b!1779197 () Bool)

(declare-fun e!1138662 () Bool)

(assert (=> b!1779197 (= e!1138651 e!1138662)))

(declare-fun res!801812 () Bool)

(assert (=> b!1779197 (=> res!801812 e!1138662)))

(declare-fun lt!690961 () Bool)

(assert (=> b!1779197 (= res!801812 lt!690961)))

(declare-fun lt!690938 () Unit!33874)

(declare-fun e!1138660 () Unit!33874)

(assert (=> b!1779197 (= lt!690938 e!1138660)))

(declare-fun c!289502 () Bool)

(assert (=> b!1779197 (= c!289502 lt!690961)))

(declare-fun lt!690970 () Int)

(declare-fun lt!690967 () Int)

(assert (=> b!1779197 (= lt!690961 (> lt!690970 lt!690967))))

(declare-fun lt!690959 () BalanceConc!12986)

(declare-fun size!15576 (BalanceConc!12986) Int)

(assert (=> b!1779197 (= lt!690967 (size!15576 lt!690959))))

(declare-fun matchR!2312 (Regex!4839 List!19674) Bool)

(assert (=> b!1779197 (matchR!2312 lt!690975 lt!690934)))

(declare-fun lt!690973 () Unit!33874)

(declare-fun token!523 () Token!6588)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!218 (LexerInterface!3140 List!19675 List!19674 Token!6588 Rule!6822 List!19674) Unit!33874)

(assert (=> b!1779197 (= lt!690973 (lemmaMaxPrefixThenMatchesRulesRegex!218 thiss!24550 rules!3447 lt!690934 token!523 rule!422 Nil!19604))))

(declare-fun b!1779198 () Bool)

(declare-fun e!1138648 () Bool)

(assert (=> b!1779198 (= e!1138648 (not e!1138646))))

(declare-fun res!801816 () Bool)

(assert (=> b!1779198 (=> res!801816 e!1138646)))

(assert (=> b!1779198 (= res!801816 (not (matchR!2312 (regex!3511 rule!422) lt!690934)))))

(declare-fun ruleValid!1009 (LexerInterface!3140 Rule!6822) Bool)

(assert (=> b!1779198 (ruleValid!1009 thiss!24550 rule!422)))

(declare-fun lt!690949 () Unit!33874)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!532 (LexerInterface!3140 Rule!6822 List!19675) Unit!33874)

(assert (=> b!1779198 (= lt!690949 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!532 thiss!24550 rule!422 rules!3447))))

(assert (=> b!1779199 (= e!1138644 e!1138650)))

(declare-fun res!801822 () Bool)

(assert (=> b!1779199 (=> res!801822 e!1138650)))

(declare-fun Forall!878 (Int) Bool)

(assert (=> b!1779199 (= res!801822 (not (Forall!878 lambda!70626)))))

(declare-fun lt!690943 () Unit!33874)

(declare-fun lemmaInv!710 (TokenValueInjection!6862) Unit!33874)

(assert (=> b!1779199 (= lt!690943 (lemmaInv!710 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))))))

(declare-fun e!1138667 () Bool)

(assert (=> b!1779200 (= e!1138667 (and tp!503914 tp!503912))))

(declare-fun b!1779201 () Bool)

(declare-fun res!801811 () Bool)

(assert (=> b!1779201 (=> (not res!801811) (not e!1138643))))

(declare-fun rulesInvariant!2809 (LexerInterface!3140 List!19675) Bool)

(assert (=> b!1779201 (= res!801811 (rulesInvariant!2809 thiss!24550 rules!3447))))

(declare-fun b!1779202 () Bool)

(declare-fun res!801827 () Bool)

(assert (=> b!1779202 (=> res!801827 e!1138644)))

(assert (=> b!1779202 (= res!801827 (not (matchR!2312 (regex!3511 (rule!5579 (_1!11001 lt!690941))) lt!690956)))))

(declare-fun e!1138659 () Bool)

(assert (=> b!1779203 (= e!1138659 (and tp!503908 tp!503904))))

(declare-fun b!1779204 () Bool)

(declare-fun e!1138654 () Bool)

(declare-fun lt!690964 () Rule!6822)

(assert (=> b!1779204 (= e!1138654 (= (rule!5579 (_1!11001 lt!690941)) lt!690964))))

(declare-fun e!1138664 () Bool)

(declare-fun tp!503903 () Bool)

(declare-fun b!1779205 () Bool)

(declare-fun e!1138649 () Bool)

(declare-fun inv!21 (TokenValue!3601) Bool)

(assert (=> b!1779205 (= e!1138664 (and (inv!21 (value!109736 token!523)) e!1138649 tp!503903))))

(declare-fun b!1779206 () Bool)

(declare-fun e!1138666 () Unit!33874)

(declare-fun Unit!33876 () Unit!33874)

(assert (=> b!1779206 (= e!1138666 Unit!33876)))

(declare-fun lt!690952 () Unit!33874)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!220 (LexerInterface!3140 List!19675 Rule!6822 List!19674 List!19674 List!19674 Rule!6822) Unit!33874)

(assert (=> b!1779206 (= lt!690952 (lemmaMaxPrefixOutputsMaxPrefix!220 thiss!24550 rules!3447 (rule!5579 (_1!11001 lt!690941)) lt!690956 lt!690953 lt!690934 rule!422))))

(assert (=> b!1779206 false))

(declare-fun res!801820 () Bool)

(assert (=> start!176886 (=> (not res!801820) (not e!1138643))))

(get-info :version)

(assert (=> start!176886 (= res!801820 ((_ is Lexer!3138) thiss!24550))))

(assert (=> start!176886 e!1138643))

(declare-fun e!1138670 () Bool)

(assert (=> start!176886 e!1138670))

(declare-fun e!1138668 () Bool)

(assert (=> start!176886 e!1138668))

(assert (=> start!176886 true))

(declare-fun inv!25508 (Token!6588) Bool)

(assert (=> start!176886 (and (inv!25508 token!523) e!1138664)))

(declare-fun e!1138663 () Bool)

(assert (=> start!176886 e!1138663))

(declare-fun b!1779195 () Bool)

(declare-fun res!801825 () Bool)

(assert (=> b!1779195 (=> res!801825 e!1138646)))

(declare-fun isEmpty!12386 (List!19674) Bool)

(assert (=> b!1779195 (= res!801825 (isEmpty!12386 suffix!1421))))

(declare-fun b!1779207 () Bool)

(declare-fun Unit!33877 () Unit!33874)

(assert (=> b!1779207 (= e!1138660 Unit!33877)))

(declare-fun lt!690955 () Unit!33874)

(assert (=> b!1779207 (= lt!690955 (lemmaMaxPrefixThenMatchesRulesRegex!218 thiss!24550 rules!3447 lt!690953 (_1!11001 lt!690941) (rule!5579 (_1!11001 lt!690941)) (_2!11001 lt!690941)))))

(assert (=> b!1779207 (matchR!2312 lt!690975 lt!690956)))

(declare-fun lt!690960 () List!19674)

(assert (=> b!1779207 (= lt!690960 (getSuffix!918 lt!690953 lt!690934))))

(declare-fun lt!690974 () Unit!33874)

(assert (=> b!1779207 (= lt!690974 (lemmaSamePrefixThenSameSuffix!862 lt!690934 suffix!1421 lt!690934 lt!690960 lt!690953))))

(assert (=> b!1779207 (= suffix!1421 lt!690960)))

(declare-fun lt!690940 () Unit!33874)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!287 (List!19674 List!19674) Unit!33874)

(assert (=> b!1779207 (= lt!690940 (lemmaAddHeadSuffixToPrefixStillPrefix!287 lt!690934 lt!690953))))

(assert (=> b!1779207 (isPrefix!1751 (++!5335 lt!690934 (Cons!19604 (head!4154 lt!690960) Nil!19604)) lt!690953)))

(declare-fun lt!690951 () Unit!33874)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!159 (List!19674 List!19674 List!19674) Unit!33874)

(assert (=> b!1779207 (= lt!690951 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!159 lt!690956 lt!690969 lt!690953))))

(assert (=> b!1779207 (isPrefix!1751 lt!690969 lt!690956)))

(declare-fun lt!690948 () Unit!33874)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!150 (Regex!4839 List!19674 List!19674) Unit!33874)

(assert (=> b!1779207 (= lt!690948 (lemmaNotPrefixMatchThenCannotMatchLonger!150 lt!690975 lt!690969 lt!690956))))

(assert (=> b!1779207 false))

(declare-fun b!1779208 () Bool)

(declare-fun tp_is_empty!7921 () Bool)

(declare-fun tp!503910 () Bool)

(assert (=> b!1779208 (= e!1138670 (and tp_is_empty!7921 tp!503910))))

(declare-fun b!1779209 () Bool)

(declare-fun tp!503911 () Bool)

(declare-fun e!1138658 () Bool)

(declare-fun inv!25503 (String!22337) Bool)

(declare-fun inv!25509 (TokenValueInjection!6862) Bool)

(assert (=> b!1779209 (= e!1138658 (and tp!503911 (inv!25503 (tag!3903 (h!25006 rules!3447))) (inv!25509 (transformation!3511 (h!25006 rules!3447))) e!1138653))))

(declare-fun b!1779210 () Bool)

(assert (=> b!1779210 (= e!1138669 e!1138657)))

(declare-fun res!801807 () Bool)

(assert (=> b!1779210 (=> res!801807 e!1138657)))

(declare-fun lt!690965 () TokenValue!3601)

(assert (=> b!1779210 (= res!801807 (not (= lt!690976 (Some!4044 (tuple2!19199 (Token!6589 lt!690965 (rule!5579 (_1!11001 lt!690941)) lt!690970 lt!690956) (_2!11001 lt!690941))))))))

(assert (=> b!1779210 (= lt!690970 (size!15576 lt!690936))))

(assert (=> b!1779210 (= lt!690965 (apply!5311 (transformation!3511 (rule!5579 (_1!11001 lt!690941))) lt!690936))))

(declare-fun lt!690944 () Unit!33874)

(declare-fun lemmaCharactersSize!569 (Token!6588) Unit!33874)

(assert (=> b!1779210 (= lt!690944 (lemmaCharactersSize!569 (_1!11001 lt!690941)))))

(declare-fun lt!690966 () Unit!33874)

(declare-fun lemmaEqSameImage!422 (TokenValueInjection!6862 BalanceConc!12986 BalanceConc!12986) Unit!33874)

(assert (=> b!1779210 (= lt!690966 (lemmaEqSameImage!422 (transformation!3511 (rule!5579 (_1!11001 lt!690941))) lt!690936 (seqFromList!2480 (originalCharacters!4325 (_1!11001 lt!690941)))))))

(declare-fun b!1779211 () Bool)

(declare-fun e!1138652 () Bool)

(assert (=> b!1779211 (= e!1138643 e!1138652)))

(declare-fun res!801815 () Bool)

(assert (=> b!1779211 (=> (not res!801815) (not e!1138652))))

(declare-fun lt!690963 () Option!4045)

(declare-fun isDefined!3388 (Option!4045) Bool)

(assert (=> b!1779211 (= res!801815 (isDefined!3388 lt!690963))))

(assert (=> b!1779211 (= lt!690963 (maxPrefix!1694 thiss!24550 rules!3447 lt!690934))))

(assert (=> b!1779211 (= lt!690934 (list!7969 lt!690959))))

(assert (=> b!1779211 (= lt!690959 (charsOf!2160 token!523))))

(declare-fun b!1779212 () Bool)

(declare-fun res!801817 () Bool)

(assert (=> b!1779212 (=> (not res!801817) (not e!1138648))))

(declare-fun lt!690972 () tuple2!19198)

(assert (=> b!1779212 (= res!801817 (isEmpty!12386 (_2!11001 lt!690972)))))

(declare-fun b!1779213 () Bool)

(declare-fun Unit!33878 () Unit!33874)

(assert (=> b!1779213 (= e!1138660 Unit!33878)))

(declare-fun b!1779214 () Bool)

(assert (=> b!1779214 (= e!1138662 e!1138661)))

(declare-fun res!801828 () Bool)

(assert (=> b!1779214 (=> res!801828 e!1138661)))

(assert (=> b!1779214 (= res!801828 (not (= lt!690970 lt!690967)))))

(declare-fun lt!690957 () Unit!33874)

(assert (=> b!1779214 (= lt!690957 e!1138666)))

(declare-fun c!289503 () Bool)

(assert (=> b!1779214 (= c!289503 (< lt!690970 lt!690967))))

(declare-fun b!1779215 () Bool)

(declare-fun res!801824 () Bool)

(assert (=> b!1779215 (=> res!801824 e!1138669)))

(assert (=> b!1779215 (= res!801824 (not (= lt!690936 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (value!109736 (_1!11001 lt!690941))))))))

(declare-fun b!1779216 () Bool)

(assert (=> b!1779216 (= e!1138656 e!1138654)))

(declare-fun res!801818 () Bool)

(assert (=> b!1779216 (=> (not res!801818) (not e!1138654))))

(assert (=> b!1779216 (= res!801818 (matchR!2312 (regex!3511 lt!690964) (list!7969 (charsOf!2160 (_1!11001 lt!690941)))))))

(declare-fun get!6018 (Option!4044) Rule!6822)

(assert (=> b!1779216 (= lt!690964 (get!6018 lt!690958))))

(declare-fun tp!503906 () Bool)

(declare-fun b!1779217 () Bool)

(assert (=> b!1779217 (= e!1138668 (and tp!503906 (inv!25503 (tag!3903 rule!422)) (inv!25509 (transformation!3511 rule!422)) e!1138667))))

(declare-fun b!1779218 () Bool)

(declare-fun Unit!33879 () Unit!33874)

(assert (=> b!1779218 (= e!1138666 Unit!33879)))

(declare-fun b!1779219 () Bool)

(declare-fun res!801808 () Bool)

(assert (=> b!1779219 (=> (not res!801808) (not e!1138648))))

(assert (=> b!1779219 (= res!801808 (= (rule!5579 token!523) rule!422))))

(declare-fun b!1779220 () Bool)

(declare-fun tp!503909 () Bool)

(assert (=> b!1779220 (= e!1138663 (and e!1138658 tp!503909))))

(declare-fun b!1779221 () Bool)

(assert (=> b!1779221 (= e!1138652 e!1138648)))

(declare-fun res!801823 () Bool)

(assert (=> b!1779221 (=> (not res!801823) (not e!1138648))))

(assert (=> b!1779221 (= res!801823 (= (_1!11001 lt!690972) token!523))))

(assert (=> b!1779221 (= lt!690972 (get!6017 lt!690963))))

(declare-fun b!1779222 () Bool)

(declare-fun res!801813 () Bool)

(assert (=> b!1779222 (=> (not res!801813) (not e!1138643))))

(declare-fun isEmpty!12387 (List!19675) Bool)

(assert (=> b!1779222 (= res!801813 (not (isEmpty!12387 rules!3447)))))

(declare-fun tp!503907 () Bool)

(declare-fun b!1779223 () Bool)

(assert (=> b!1779223 (= e!1138649 (and tp!503907 (inv!25503 (tag!3903 (rule!5579 token!523))) (inv!25509 (transformation!3511 (rule!5579 token!523))) e!1138659))))

(assert (= (and start!176886 res!801820) b!1779222))

(assert (= (and b!1779222 res!801813) b!1779201))

(assert (= (and b!1779201 res!801811) b!1779189))

(assert (= (and b!1779189 res!801826) b!1779211))

(assert (= (and b!1779211 res!801815) b!1779221))

(assert (= (and b!1779221 res!801823) b!1779212))

(assert (= (and b!1779212 res!801817) b!1779219))

(assert (= (and b!1779219 res!801808) b!1779198))

(assert (= (and b!1779198 (not res!801816)) b!1779195))

(assert (= (and b!1779195 (not res!801825)) b!1779192))

(assert (= (and b!1779192 (not res!801814)) b!1779191))

(assert (= (and b!1779191 res!801819) b!1779216))

(assert (= (and b!1779216 res!801818) b!1779204))

(assert (= (and b!1779191 (not res!801821)) b!1779202))

(assert (= (and b!1779202 (not res!801827)) b!1779199))

(assert (= (and b!1779199 (not res!801822)) b!1779196))

(assert (= (and b!1779196 (not res!801810)) b!1779215))

(assert (= (and b!1779215 (not res!801824)) b!1779210))

(assert (= (and b!1779210 (not res!801807)) b!1779194))

(assert (= (and b!1779194 (not res!801809)) b!1779197))

(assert (= (and b!1779197 c!289502) b!1779207))

(assert (= (and b!1779197 (not c!289502)) b!1779213))

(assert (= (and b!1779197 (not res!801812)) b!1779214))

(assert (= (and b!1779214 c!289503) b!1779206))

(assert (= (and b!1779214 (not c!289503)) b!1779218))

(assert (= (and b!1779214 (not res!801828)) b!1779190))

(assert (= (and start!176886 ((_ is Cons!19604) suffix!1421)) b!1779208))

(assert (= b!1779217 b!1779200))

(assert (= start!176886 b!1779217))

(assert (= b!1779223 b!1779203))

(assert (= b!1779205 b!1779223))

(assert (= start!176886 b!1779205))

(assert (= b!1779209 b!1779193))

(assert (= b!1779220 b!1779209))

(assert (= (and start!176886 ((_ is Cons!19605) rules!3447)) b!1779220))

(declare-fun b_lambda!58191 () Bool)

(assert (=> (not b_lambda!58191) (not b!1779196)))

(declare-fun tb!108071 () Bool)

(declare-fun t!166335 () Bool)

(assert (=> (and b!1779193 (= (toChars!4897 (transformation!3511 (h!25006 rules!3447))) (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) t!166335) tb!108071))

(declare-fun b!1779239 () Bool)

(declare-fun tp!503917 () Bool)

(declare-fun e!1138682 () Bool)

(declare-fun inv!25510 (Conc!6521) Bool)

(assert (=> b!1779239 (= e!1138682 (and (inv!25510 (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936)))) tp!503917))))

(declare-fun result!130010 () Bool)

(declare-fun inv!25511 (BalanceConc!12986) Bool)

(assert (=> tb!108071 (= result!130010 (and (inv!25511 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936))) e!1138682))))

(assert (= tb!108071 b!1779239))

(declare-fun m!2200743 () Bool)

(assert (=> b!1779239 m!2200743))

(declare-fun m!2200745 () Bool)

(assert (=> tb!108071 m!2200745))

(assert (=> b!1779196 t!166335))

(declare-fun b_and!136227 () Bool)

(assert (= b_and!136217 (and (=> t!166335 result!130010) b_and!136227)))

(declare-fun tb!108073 () Bool)

(declare-fun t!166337 () Bool)

(assert (=> (and b!1779203 (= (toChars!4897 (transformation!3511 (rule!5579 token!523))) (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) t!166337) tb!108073))

(declare-fun result!130014 () Bool)

(assert (= result!130014 result!130010))

(assert (=> b!1779196 t!166337))

(declare-fun b_and!136229 () Bool)

(assert (= b_and!136221 (and (=> t!166337 result!130014) b_and!136229)))

(declare-fun tb!108075 () Bool)

(declare-fun t!166339 () Bool)

(assert (=> (and b!1779200 (= (toChars!4897 (transformation!3511 rule!422)) (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) t!166339) tb!108075))

(declare-fun result!130016 () Bool)

(assert (= result!130016 result!130010))

(assert (=> b!1779196 t!166339))

(declare-fun b_and!136231 () Bool)

(assert (= b_and!136225 (and (=> t!166339 result!130016) b_and!136231)))

(declare-fun b_lambda!58193 () Bool)

(assert (=> (not b_lambda!58193) (not b!1779196)))

(declare-fun tb!108077 () Bool)

(declare-fun t!166341 () Bool)

(assert (=> (and b!1779193 (= (toValue!5038 (transformation!3511 (h!25006 rules!3447))) (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) t!166341) tb!108077))

(declare-fun result!130018 () Bool)

(assert (=> tb!108077 (= result!130018 (inv!21 (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936)))))

(declare-fun m!2200747 () Bool)

(assert (=> tb!108077 m!2200747))

(assert (=> b!1779196 t!166341))

(declare-fun b_and!136233 () Bool)

(assert (= b_and!136215 (and (=> t!166341 result!130018) b_and!136233)))

(declare-fun t!166343 () Bool)

(declare-fun tb!108079 () Bool)

(assert (=> (and b!1779203 (= (toValue!5038 (transformation!3511 (rule!5579 token!523))) (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) t!166343) tb!108079))

(declare-fun result!130022 () Bool)

(assert (= result!130022 result!130018))

(assert (=> b!1779196 t!166343))

(declare-fun b_and!136235 () Bool)

(assert (= b_and!136219 (and (=> t!166343 result!130022) b_and!136235)))

(declare-fun tb!108081 () Bool)

(declare-fun t!166345 () Bool)

(assert (=> (and b!1779200 (= (toValue!5038 (transformation!3511 rule!422)) (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) t!166345) tb!108081))

(declare-fun result!130024 () Bool)

(assert (= result!130024 result!130018))

(assert (=> b!1779196 t!166345))

(declare-fun b_and!136237 () Bool)

(assert (= b_and!136223 (and (=> t!166345 result!130024) b_and!136237)))

(declare-fun b_lambda!58195 () Bool)

(assert (=> (not b_lambda!58195) (not b!1779215)))

(declare-fun t!166347 () Bool)

(declare-fun tb!108083 () Bool)

(assert (=> (and b!1779193 (= (toChars!4897 (transformation!3511 (h!25006 rules!3447))) (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) t!166347) tb!108083))

(declare-fun b!1779242 () Bool)

(declare-fun e!1138686 () Bool)

(declare-fun tp!503918 () Bool)

(assert (=> b!1779242 (= e!1138686 (and (inv!25510 (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (value!109736 (_1!11001 lt!690941))))) tp!503918))))

(declare-fun result!130026 () Bool)

(assert (=> tb!108083 (= result!130026 (and (inv!25511 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (value!109736 (_1!11001 lt!690941)))) e!1138686))))

(assert (= tb!108083 b!1779242))

(declare-fun m!2200749 () Bool)

(assert (=> b!1779242 m!2200749))

(declare-fun m!2200751 () Bool)

(assert (=> tb!108083 m!2200751))

(assert (=> b!1779215 t!166347))

(declare-fun b_and!136239 () Bool)

(assert (= b_and!136227 (and (=> t!166347 result!130026) b_and!136239)))

(declare-fun tb!108085 () Bool)

(declare-fun t!166349 () Bool)

(assert (=> (and b!1779203 (= (toChars!4897 (transformation!3511 (rule!5579 token!523))) (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) t!166349) tb!108085))

(declare-fun result!130028 () Bool)

(assert (= result!130028 result!130026))

(assert (=> b!1779215 t!166349))

(declare-fun b_and!136241 () Bool)

(assert (= b_and!136229 (and (=> t!166349 result!130028) b_and!136241)))

(declare-fun t!166351 () Bool)

(declare-fun tb!108087 () Bool)

(assert (=> (and b!1779200 (= (toChars!4897 (transformation!3511 rule!422)) (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) t!166351) tb!108087))

(declare-fun result!130030 () Bool)

(assert (= result!130030 result!130026))

(assert (=> b!1779215 t!166351))

(declare-fun b_and!136243 () Bool)

(assert (= b_and!136231 (and (=> t!166351 result!130030) b_and!136243)))

(declare-fun m!2200753 () Bool)

(assert (=> b!1779212 m!2200753))

(declare-fun m!2200755 () Bool)

(assert (=> b!1779221 m!2200755))

(declare-fun m!2200757 () Bool)

(assert (=> b!1779192 m!2200757))

(declare-fun m!2200759 () Bool)

(assert (=> b!1779192 m!2200759))

(declare-fun m!2200761 () Bool)

(assert (=> b!1779192 m!2200761))

(declare-fun m!2200763 () Bool)

(assert (=> b!1779192 m!2200763))

(declare-fun m!2200765 () Bool)

(assert (=> b!1779201 m!2200765))

(declare-fun m!2200767 () Bool)

(assert (=> b!1779217 m!2200767))

(declare-fun m!2200769 () Bool)

(assert (=> b!1779217 m!2200769))

(declare-fun m!2200771 () Bool)

(assert (=> b!1779189 m!2200771))

(declare-fun m!2200773 () Bool)

(assert (=> b!1779198 m!2200773))

(declare-fun m!2200775 () Bool)

(assert (=> b!1779198 m!2200775))

(declare-fun m!2200777 () Bool)

(assert (=> b!1779198 m!2200777))

(declare-fun m!2200779 () Bool)

(assert (=> b!1779216 m!2200779))

(assert (=> b!1779216 m!2200779))

(declare-fun m!2200781 () Bool)

(assert (=> b!1779216 m!2200781))

(assert (=> b!1779216 m!2200781))

(declare-fun m!2200783 () Bool)

(assert (=> b!1779216 m!2200783))

(declare-fun m!2200785 () Bool)

(assert (=> b!1779216 m!2200785))

(declare-fun m!2200787 () Bool)

(assert (=> b!1779223 m!2200787))

(declare-fun m!2200789 () Bool)

(assert (=> b!1779223 m!2200789))

(declare-fun m!2200791 () Bool)

(assert (=> b!1779190 m!2200791))

(declare-fun m!2200793 () Bool)

(assert (=> b!1779190 m!2200793))

(declare-fun m!2200795 () Bool)

(assert (=> b!1779205 m!2200795))

(declare-fun m!2200797 () Bool)

(assert (=> b!1779215 m!2200797))

(declare-fun m!2200799 () Bool)

(assert (=> b!1779195 m!2200799))

(declare-fun m!2200801 () Bool)

(assert (=> b!1779210 m!2200801))

(declare-fun m!2200803 () Bool)

(assert (=> b!1779210 m!2200803))

(declare-fun m!2200805 () Bool)

(assert (=> b!1779210 m!2200805))

(declare-fun m!2200807 () Bool)

(assert (=> b!1779210 m!2200807))

(declare-fun m!2200809 () Bool)

(assert (=> b!1779210 m!2200809))

(assert (=> b!1779210 m!2200803))

(declare-fun m!2200811 () Bool)

(assert (=> b!1779194 m!2200811))

(declare-fun m!2200813 () Bool)

(assert (=> b!1779194 m!2200813))

(declare-fun m!2200815 () Bool)

(assert (=> b!1779194 m!2200815))

(declare-fun m!2200817 () Bool)

(assert (=> b!1779194 m!2200817))

(assert (=> b!1779194 m!2200815))

(declare-fun m!2200819 () Bool)

(assert (=> b!1779194 m!2200819))

(declare-fun m!2200821 () Bool)

(assert (=> b!1779194 m!2200821))

(declare-fun m!2200823 () Bool)

(assert (=> b!1779194 m!2200823))

(declare-fun m!2200825 () Bool)

(assert (=> b!1779207 m!2200825))

(declare-fun m!2200827 () Bool)

(assert (=> b!1779207 m!2200827))

(declare-fun m!2200829 () Bool)

(assert (=> b!1779207 m!2200829))

(assert (=> b!1779207 m!2200825))

(declare-fun m!2200831 () Bool)

(assert (=> b!1779207 m!2200831))

(declare-fun m!2200833 () Bool)

(assert (=> b!1779207 m!2200833))

(declare-fun m!2200835 () Bool)

(assert (=> b!1779207 m!2200835))

(declare-fun m!2200837 () Bool)

(assert (=> b!1779207 m!2200837))

(declare-fun m!2200839 () Bool)

(assert (=> b!1779207 m!2200839))

(declare-fun m!2200841 () Bool)

(assert (=> b!1779207 m!2200841))

(declare-fun m!2200843 () Bool)

(assert (=> b!1779207 m!2200843))

(declare-fun m!2200845 () Bool)

(assert (=> b!1779207 m!2200845))

(declare-fun m!2200847 () Bool)

(assert (=> b!1779191 m!2200847))

(declare-fun m!2200849 () Bool)

(assert (=> b!1779191 m!2200849))

(declare-fun m!2200851 () Bool)

(assert (=> b!1779191 m!2200851))

(declare-fun m!2200853 () Bool)

(assert (=> b!1779191 m!2200853))

(declare-fun m!2200855 () Bool)

(assert (=> b!1779191 m!2200855))

(declare-fun m!2200857 () Bool)

(assert (=> b!1779191 m!2200857))

(declare-fun m!2200859 () Bool)

(assert (=> b!1779191 m!2200859))

(declare-fun m!2200861 () Bool)

(assert (=> b!1779191 m!2200861))

(declare-fun m!2200863 () Bool)

(assert (=> b!1779191 m!2200863))

(declare-fun m!2200865 () Bool)

(assert (=> b!1779191 m!2200865))

(declare-fun m!2200867 () Bool)

(assert (=> b!1779191 m!2200867))

(declare-fun m!2200869 () Bool)

(assert (=> b!1779191 m!2200869))

(declare-fun m!2200871 () Bool)

(assert (=> b!1779191 m!2200871))

(declare-fun m!2200873 () Bool)

(assert (=> b!1779191 m!2200873))

(assert (=> b!1779191 m!2200869))

(assert (=> b!1779191 m!2200779))

(declare-fun m!2200875 () Bool)

(assert (=> b!1779199 m!2200875))

(declare-fun m!2200877 () Bool)

(assert (=> b!1779199 m!2200877))

(declare-fun m!2200879 () Bool)

(assert (=> start!176886 m!2200879))

(declare-fun m!2200881 () Bool)

(assert (=> b!1779202 m!2200881))

(declare-fun m!2200883 () Bool)

(assert (=> b!1779197 m!2200883))

(declare-fun m!2200885 () Bool)

(assert (=> b!1779197 m!2200885))

(declare-fun m!2200887 () Bool)

(assert (=> b!1779197 m!2200887))

(declare-fun m!2200889 () Bool)

(assert (=> b!1779206 m!2200889))

(declare-fun m!2200891 () Bool)

(assert (=> b!1779222 m!2200891))

(declare-fun m!2200893 () Bool)

(assert (=> b!1779196 m!2200893))

(assert (=> b!1779196 m!2200893))

(declare-fun m!2200895 () Bool)

(assert (=> b!1779196 m!2200895))

(assert (=> b!1779196 m!2200895))

(declare-fun m!2200897 () Bool)

(assert (=> b!1779196 m!2200897))

(declare-fun m!2200899 () Bool)

(assert (=> b!1779196 m!2200899))

(declare-fun m!2200901 () Bool)

(assert (=> b!1779211 m!2200901))

(declare-fun m!2200903 () Bool)

(assert (=> b!1779211 m!2200903))

(declare-fun m!2200905 () Bool)

(assert (=> b!1779211 m!2200905))

(declare-fun m!2200907 () Bool)

(assert (=> b!1779211 m!2200907))

(declare-fun m!2200909 () Bool)

(assert (=> b!1779209 m!2200909))

(declare-fun m!2200911 () Bool)

(assert (=> b!1779209 m!2200911))

(check-sat (not b_lambda!58191) (not b!1779209) (not b!1779196) (not b_next!50081) (not b!1779217) (not b!1779202) (not b!1779223) b_and!136235 (not b_lambda!58195) (not b!1779198) (not b_lambda!58193) (not b!1779190) (not b!1779239) tp_is_empty!7921 (not b!1779197) (not b!1779211) b_and!136239 (not b!1779242) b_and!136243 (not b_next!50071) b_and!136241 (not tb!108077) (not b!1779210) (not b!1779199) (not b!1779220) (not b!1779201) (not b!1779191) (not b!1779212) (not b!1779221) (not b_next!50079) (not b!1779205) (not b!1779206) (not b!1779207) (not tb!108083) (not b!1779216) (not tb!108071) (not b!1779208) (not b_next!50075) (not b!1779194) (not b!1779195) b_and!136237 (not b_next!50073) (not b!1779189) (not start!176886) b_and!136233 (not b!1779222) (not b!1779192) (not b_next!50077))
(check-sat b_and!136235 (not b_next!50079) (not b_next!50081) (not b_next!50075) b_and!136233 (not b_next!50077) b_and!136239 b_and!136243 (not b_next!50071) b_and!136241 b_and!136237 (not b_next!50073))
(get-model)

(declare-fun d!543344 () Bool)

(assert (=> d!543344 (= (isEmpty!12387 rules!3447) ((_ is Nil!19605) rules!3447))))

(assert (=> b!1779222 d!543344))

(declare-fun d!543346 () Bool)

(declare-fun res!801831 () Bool)

(declare-fun e!1138689 () Bool)

(assert (=> d!543346 (=> (not res!801831) (not e!1138689))))

(declare-fun rulesValid!1328 (LexerInterface!3140 List!19675) Bool)

(assert (=> d!543346 (= res!801831 (rulesValid!1328 thiss!24550 rules!3447))))

(assert (=> d!543346 (= (rulesInvariant!2809 thiss!24550 rules!3447) e!1138689)))

(declare-fun b!1779245 () Bool)

(declare-datatypes ((List!19677 0))(
  ( (Nil!19607) (Cons!19607 (h!25008 String!22337) (t!166416 List!19677)) )
))
(declare-fun noDuplicateTag!1328 (LexerInterface!3140 List!19675 List!19677) Bool)

(assert (=> b!1779245 (= e!1138689 (noDuplicateTag!1328 thiss!24550 rules!3447 Nil!19607))))

(assert (= (and d!543346 res!801831) b!1779245))

(declare-fun m!2200913 () Bool)

(assert (=> d!543346 m!2200913))

(declare-fun m!2200915 () Bool)

(assert (=> b!1779245 m!2200915))

(assert (=> b!1779201 d!543346))

(declare-fun d!543348 () Bool)

(declare-fun c!289510 () Bool)

(assert (=> d!543348 (= c!289510 ((_ is Node!6521) (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (value!109736 (_1!11001 lt!690941))))))))

(declare-fun e!1138702 () Bool)

(assert (=> d!543348 (= (inv!25510 (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (value!109736 (_1!11001 lt!690941))))) e!1138702)))

(declare-fun b!1779270 () Bool)

(declare-fun inv!25514 (Conc!6521) Bool)

(assert (=> b!1779270 (= e!1138702 (inv!25514 (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (value!109736 (_1!11001 lt!690941))))))))

(declare-fun b!1779271 () Bool)

(declare-fun e!1138703 () Bool)

(assert (=> b!1779271 (= e!1138702 e!1138703)))

(declare-fun res!801848 () Bool)

(assert (=> b!1779271 (= res!801848 (not ((_ is Leaf!9497) (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (value!109736 (_1!11001 lt!690941)))))))))

(assert (=> b!1779271 (=> res!801848 e!1138703)))

(declare-fun b!1779272 () Bool)

(declare-fun inv!25515 (Conc!6521) Bool)

(assert (=> b!1779272 (= e!1138703 (inv!25515 (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (value!109736 (_1!11001 lt!690941))))))))

(assert (= (and d!543348 c!289510) b!1779270))

(assert (= (and d!543348 (not c!289510)) b!1779271))

(assert (= (and b!1779271 (not res!801848)) b!1779272))

(declare-fun m!2200917 () Bool)

(assert (=> b!1779270 m!2200917))

(declare-fun m!2200919 () Bool)

(assert (=> b!1779272 m!2200919))

(assert (=> b!1779242 d!543348))

(declare-fun d!543350 () Bool)

(assert (=> d!543350 (= (inv!25503 (tag!3903 (rule!5579 token!523))) (= (mod (str.len (value!109735 (tag!3903 (rule!5579 token!523)))) 2) 0))))

(assert (=> b!1779223 d!543350))

(declare-fun d!543352 () Bool)

(declare-fun res!801858 () Bool)

(declare-fun e!1138710 () Bool)

(assert (=> d!543352 (=> (not res!801858) (not e!1138710))))

(declare-fun semiInverseModEq!1402 (Int Int) Bool)

(assert (=> d!543352 (= res!801858 (semiInverseModEq!1402 (toChars!4897 (transformation!3511 (rule!5579 token!523))) (toValue!5038 (transformation!3511 (rule!5579 token!523)))))))

(assert (=> d!543352 (= (inv!25509 (transformation!3511 (rule!5579 token!523))) e!1138710)))

(declare-fun b!1779284 () Bool)

(declare-fun equivClasses!1343 (Int Int) Bool)

(assert (=> b!1779284 (= e!1138710 (equivClasses!1343 (toChars!4897 (transformation!3511 (rule!5579 token!523))) (toValue!5038 (transformation!3511 (rule!5579 token!523)))))))

(assert (= (and d!543352 res!801858) b!1779284))

(declare-fun m!2200967 () Bool)

(assert (=> d!543352 m!2200967))

(declare-fun m!2200969 () Bool)

(assert (=> b!1779284 m!2200969))

(assert (=> b!1779223 d!543352))

(declare-fun d!543356 () Bool)

(declare-fun c!289523 () Bool)

(assert (=> d!543356 (= c!289523 ((_ is IntegerValue!10803) (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936)))))

(declare-fun e!1138723 () Bool)

(assert (=> d!543356 (= (inv!21 (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936)) e!1138723)))

(declare-fun b!1779307 () Bool)

(declare-fun e!1138725 () Bool)

(assert (=> b!1779307 (= e!1138723 e!1138725)))

(declare-fun c!289522 () Bool)

(assert (=> b!1779307 (= c!289522 ((_ is IntegerValue!10804) (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936)))))

(declare-fun b!1779308 () Bool)

(declare-fun res!801861 () Bool)

(declare-fun e!1138724 () Bool)

(assert (=> b!1779308 (=> res!801861 e!1138724)))

(assert (=> b!1779308 (= res!801861 (not ((_ is IntegerValue!10805) (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936))))))

(assert (=> b!1779308 (= e!1138725 e!1138724)))

(declare-fun b!1779309 () Bool)

(declare-fun inv!16 (TokenValue!3601) Bool)

(assert (=> b!1779309 (= e!1138723 (inv!16 (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936)))))

(declare-fun b!1779310 () Bool)

(declare-fun inv!15 (TokenValue!3601) Bool)

(assert (=> b!1779310 (= e!1138724 (inv!15 (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936)))))

(declare-fun b!1779311 () Bool)

(declare-fun inv!17 (TokenValue!3601) Bool)

(assert (=> b!1779311 (= e!1138725 (inv!17 (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936)))))

(assert (= (and d!543356 c!289523) b!1779309))

(assert (= (and d!543356 (not c!289523)) b!1779307))

(assert (= (and b!1779307 c!289522) b!1779311))

(assert (= (and b!1779307 (not c!289522)) b!1779308))

(assert (= (and b!1779308 (not res!801861)) b!1779310))

(declare-fun m!2200981 () Bool)

(assert (=> b!1779309 m!2200981))

(declare-fun m!2200983 () Bool)

(assert (=> b!1779310 m!2200983))

(declare-fun m!2200985 () Bool)

(assert (=> b!1779311 m!2200985))

(assert (=> tb!108077 d!543356))

(declare-fun b!1779342 () Bool)

(declare-fun e!1138744 () Bool)

(declare-fun lt!691006 () Bool)

(assert (=> b!1779342 (= e!1138744 (not lt!691006))))

(declare-fun bm!111250 () Bool)

(declare-fun call!111255 () Bool)

(assert (=> bm!111250 (= call!111255 (isEmpty!12386 lt!690956))))

(declare-fun d!543364 () Bool)

(declare-fun e!1138748 () Bool)

(assert (=> d!543364 e!1138748))

(declare-fun c!289531 () Bool)

(assert (=> d!543364 (= c!289531 ((_ is EmptyExpr!4839) (regex!3511 (rule!5579 (_1!11001 lt!690941)))))))

(declare-fun e!1138743 () Bool)

(assert (=> d!543364 (= lt!691006 e!1138743)))

(declare-fun c!289530 () Bool)

(assert (=> d!543364 (= c!289530 (isEmpty!12386 lt!690956))))

(declare-fun validRegex!1960 (Regex!4839) Bool)

(assert (=> d!543364 (validRegex!1960 (regex!3511 (rule!5579 (_1!11001 lt!690941))))))

(assert (=> d!543364 (= (matchR!2312 (regex!3511 (rule!5579 (_1!11001 lt!690941))) lt!690956) lt!691006)))

(declare-fun b!1779343 () Bool)

(declare-fun nullable!1486 (Regex!4839) Bool)

(assert (=> b!1779343 (= e!1138743 (nullable!1486 (regex!3511 (rule!5579 (_1!11001 lt!690941)))))))

(declare-fun b!1779344 () Bool)

(declare-fun e!1138747 () Bool)

(assert (=> b!1779344 (= e!1138747 (= (head!4154 lt!690956) (c!289504 (regex!3511 (rule!5579 (_1!11001 lt!690941))))))))

(declare-fun b!1779345 () Bool)

(declare-fun derivativeStep!1255 (Regex!4839 C!9852) Regex!4839)

(declare-fun tail!2663 (List!19674) List!19674)

(assert (=> b!1779345 (= e!1138743 (matchR!2312 (derivativeStep!1255 (regex!3511 (rule!5579 (_1!11001 lt!690941))) (head!4154 lt!690956)) (tail!2663 lt!690956)))))

(declare-fun b!1779346 () Bool)

(declare-fun res!801887 () Bool)

(assert (=> b!1779346 (=> (not res!801887) (not e!1138747))))

(assert (=> b!1779346 (= res!801887 (isEmpty!12386 (tail!2663 lt!690956)))))

(declare-fun b!1779347 () Bool)

(declare-fun e!1138749 () Bool)

(declare-fun e!1138745 () Bool)

(assert (=> b!1779347 (= e!1138749 e!1138745)))

(declare-fun res!801880 () Bool)

(assert (=> b!1779347 (=> (not res!801880) (not e!1138745))))

(assert (=> b!1779347 (= res!801880 (not lt!691006))))

(declare-fun b!1779348 () Bool)

(declare-fun res!801884 () Bool)

(assert (=> b!1779348 (=> res!801884 e!1138749)))

(assert (=> b!1779348 (= res!801884 e!1138747)))

(declare-fun res!801882 () Bool)

(assert (=> b!1779348 (=> (not res!801882) (not e!1138747))))

(assert (=> b!1779348 (= res!801882 lt!691006)))

(declare-fun b!1779349 () Bool)

(declare-fun res!801883 () Bool)

(declare-fun e!1138746 () Bool)

(assert (=> b!1779349 (=> res!801883 e!1138746)))

(assert (=> b!1779349 (= res!801883 (not (isEmpty!12386 (tail!2663 lt!690956))))))

(declare-fun b!1779350 () Bool)

(assert (=> b!1779350 (= e!1138745 e!1138746)))

(declare-fun res!801886 () Bool)

(assert (=> b!1779350 (=> res!801886 e!1138746)))

(assert (=> b!1779350 (= res!801886 call!111255)))

(declare-fun b!1779351 () Bool)

(assert (=> b!1779351 (= e!1138746 (not (= (head!4154 lt!690956) (c!289504 (regex!3511 (rule!5579 (_1!11001 lt!690941)))))))))

(declare-fun b!1779352 () Bool)

(declare-fun res!801885 () Bool)

(assert (=> b!1779352 (=> (not res!801885) (not e!1138747))))

(assert (=> b!1779352 (= res!801885 (not call!111255))))

(declare-fun b!1779353 () Bool)

(assert (=> b!1779353 (= e!1138748 (= lt!691006 call!111255))))

(declare-fun b!1779354 () Bool)

(assert (=> b!1779354 (= e!1138748 e!1138744)))

(declare-fun c!289532 () Bool)

(assert (=> b!1779354 (= c!289532 ((_ is EmptyLang!4839) (regex!3511 (rule!5579 (_1!11001 lt!690941)))))))

(declare-fun b!1779355 () Bool)

(declare-fun res!801881 () Bool)

(assert (=> b!1779355 (=> res!801881 e!1138749)))

(assert (=> b!1779355 (= res!801881 (not ((_ is ElementMatch!4839) (regex!3511 (rule!5579 (_1!11001 lt!690941))))))))

(assert (=> b!1779355 (= e!1138744 e!1138749)))

(assert (= (and d!543364 c!289530) b!1779343))

(assert (= (and d!543364 (not c!289530)) b!1779345))

(assert (= (and d!543364 c!289531) b!1779353))

(assert (= (and d!543364 (not c!289531)) b!1779354))

(assert (= (and b!1779354 c!289532) b!1779342))

(assert (= (and b!1779354 (not c!289532)) b!1779355))

(assert (= (and b!1779355 (not res!801881)) b!1779348))

(assert (= (and b!1779348 res!801882) b!1779352))

(assert (= (and b!1779352 res!801885) b!1779346))

(assert (= (and b!1779346 res!801887) b!1779344))

(assert (= (and b!1779348 (not res!801884)) b!1779347))

(assert (= (and b!1779347 res!801880) b!1779350))

(assert (= (and b!1779350 (not res!801886)) b!1779349))

(assert (= (and b!1779349 (not res!801883)) b!1779351))

(assert (= (or b!1779353 b!1779350 b!1779352) bm!111250))

(declare-fun m!2201001 () Bool)

(assert (=> b!1779351 m!2201001))

(declare-fun m!2201003 () Bool)

(assert (=> b!1779346 m!2201003))

(assert (=> b!1779346 m!2201003))

(declare-fun m!2201005 () Bool)

(assert (=> b!1779346 m!2201005))

(declare-fun m!2201007 () Bool)

(assert (=> bm!111250 m!2201007))

(assert (=> b!1779344 m!2201001))

(assert (=> d!543364 m!2201007))

(declare-fun m!2201009 () Bool)

(assert (=> d!543364 m!2201009))

(assert (=> b!1779349 m!2201003))

(assert (=> b!1779349 m!2201003))

(assert (=> b!1779349 m!2201005))

(assert (=> b!1779345 m!2201001))

(assert (=> b!1779345 m!2201001))

(declare-fun m!2201011 () Bool)

(assert (=> b!1779345 m!2201011))

(assert (=> b!1779345 m!2201003))

(assert (=> b!1779345 m!2201011))

(assert (=> b!1779345 m!2201003))

(declare-fun m!2201013 () Bool)

(assert (=> b!1779345 m!2201013))

(declare-fun m!2201015 () Bool)

(assert (=> b!1779343 m!2201015))

(assert (=> b!1779202 d!543364))

(declare-fun d!543378 () Bool)

(declare-fun c!289534 () Bool)

(assert (=> d!543378 (= c!289534 ((_ is IntegerValue!10803) (value!109736 token!523)))))

(declare-fun e!1138751 () Bool)

(assert (=> d!543378 (= (inv!21 (value!109736 token!523)) e!1138751)))

(declare-fun b!1779357 () Bool)

(declare-fun e!1138753 () Bool)

(assert (=> b!1779357 (= e!1138751 e!1138753)))

(declare-fun c!289533 () Bool)

(assert (=> b!1779357 (= c!289533 ((_ is IntegerValue!10804) (value!109736 token!523)))))

(declare-fun b!1779358 () Bool)

(declare-fun res!801889 () Bool)

(declare-fun e!1138752 () Bool)

(assert (=> b!1779358 (=> res!801889 e!1138752)))

(assert (=> b!1779358 (= res!801889 (not ((_ is IntegerValue!10805) (value!109736 token!523))))))

(assert (=> b!1779358 (= e!1138753 e!1138752)))

(declare-fun b!1779359 () Bool)

(assert (=> b!1779359 (= e!1138751 (inv!16 (value!109736 token!523)))))

(declare-fun b!1779360 () Bool)

(assert (=> b!1779360 (= e!1138752 (inv!15 (value!109736 token!523)))))

(declare-fun b!1779361 () Bool)

(assert (=> b!1779361 (= e!1138753 (inv!17 (value!109736 token!523)))))

(assert (= (and d!543378 c!289534) b!1779359))

(assert (= (and d!543378 (not c!289534)) b!1779357))

(assert (= (and b!1779357 c!289533) b!1779361))

(assert (= (and b!1779357 (not c!289533)) b!1779358))

(assert (= (and b!1779358 (not res!801889)) b!1779360))

(declare-fun m!2201017 () Bool)

(assert (=> b!1779359 m!2201017))

(declare-fun m!2201019 () Bool)

(assert (=> b!1779360 m!2201019))

(declare-fun m!2201021 () Bool)

(assert (=> b!1779361 m!2201021))

(assert (=> b!1779205 d!543378))

(declare-fun d!543380 () Bool)

(assert (=> d!543380 (not (matchR!2312 (regex!3511 rule!422) lt!690934))))

(declare-fun lt!691009 () Unit!33874)

(declare-fun choose!11141 (LexerInterface!3140 List!19675 Rule!6822 List!19674 List!19674 List!19674 Rule!6822) Unit!33874)

(assert (=> d!543380 (= lt!691009 (choose!11141 thiss!24550 rules!3447 (rule!5579 (_1!11001 lt!690941)) lt!690956 lt!690953 lt!690934 rule!422))))

(assert (=> d!543380 (isPrefix!1751 lt!690956 lt!690953)))

(assert (=> d!543380 (= (lemmaMaxPrefixOutputsMaxPrefix!220 thiss!24550 rules!3447 (rule!5579 (_1!11001 lt!690941)) lt!690956 lt!690953 lt!690934 rule!422) lt!691009)))

(declare-fun bs!405082 () Bool)

(assert (= bs!405082 d!543380))

(assert (=> bs!405082 m!2200773))

(declare-fun m!2201031 () Bool)

(assert (=> bs!405082 m!2201031))

(assert (=> bs!405082 m!2200855))

(assert (=> b!1779206 d!543380))

(declare-fun d!543386 () Bool)

(declare-fun lt!691018 () List!19674)

(assert (=> d!543386 (= (++!5335 lt!690934 lt!691018) lt!690953)))

(declare-fun e!1138771 () List!19674)

(assert (=> d!543386 (= lt!691018 e!1138771)))

(declare-fun c!289543 () Bool)

(assert (=> d!543386 (= c!289543 ((_ is Cons!19604) lt!690934))))

(assert (=> d!543386 (>= (size!15575 lt!690953) (size!15575 lt!690934))))

(assert (=> d!543386 (= (getSuffix!918 lt!690953 lt!690934) lt!691018)))

(declare-fun b!1779390 () Bool)

(assert (=> b!1779390 (= e!1138771 (getSuffix!918 (tail!2663 lt!690953) (t!166353 lt!690934)))))

(declare-fun b!1779391 () Bool)

(assert (=> b!1779391 (= e!1138771 lt!690953)))

(assert (= (and d!543386 c!289543) b!1779390))

(assert (= (and d!543386 (not c!289543)) b!1779391))

(declare-fun m!2201051 () Bool)

(assert (=> d!543386 m!2201051))

(declare-fun m!2201053 () Bool)

(assert (=> d!543386 m!2201053))

(declare-fun m!2201055 () Bool)

(assert (=> d!543386 m!2201055))

(declare-fun m!2201057 () Bool)

(assert (=> b!1779390 m!2201057))

(assert (=> b!1779390 m!2201057))

(declare-fun m!2201059 () Bool)

(assert (=> b!1779390 m!2201059))

(assert (=> b!1779207 d!543386))

(declare-fun d!543394 () Bool)

(declare-fun e!1138778 () Bool)

(assert (=> d!543394 e!1138778))

(declare-fun res!801911 () Bool)

(assert (=> d!543394 (=> res!801911 e!1138778)))

(declare-fun lt!691021 () Bool)

(assert (=> d!543394 (= res!801911 (not lt!691021))))

(declare-fun e!1138779 () Bool)

(assert (=> d!543394 (= lt!691021 e!1138779)))

(declare-fun res!801912 () Bool)

(assert (=> d!543394 (=> res!801912 e!1138779)))

(assert (=> d!543394 (= res!801912 ((_ is Nil!19604) (++!5335 lt!690934 (Cons!19604 (head!4154 lt!690960) Nil!19604))))))

(assert (=> d!543394 (= (isPrefix!1751 (++!5335 lt!690934 (Cons!19604 (head!4154 lt!690960) Nil!19604)) lt!690953) lt!691021)))

(declare-fun b!1779403 () Bool)

(assert (=> b!1779403 (= e!1138778 (>= (size!15575 lt!690953) (size!15575 (++!5335 lt!690934 (Cons!19604 (head!4154 lt!690960) Nil!19604)))))))

(declare-fun b!1779400 () Bool)

(declare-fun e!1138780 () Bool)

(assert (=> b!1779400 (= e!1138779 e!1138780)))

(declare-fun res!801913 () Bool)

(assert (=> b!1779400 (=> (not res!801913) (not e!1138780))))

(assert (=> b!1779400 (= res!801913 (not ((_ is Nil!19604) lt!690953)))))

(declare-fun b!1779402 () Bool)

(assert (=> b!1779402 (= e!1138780 (isPrefix!1751 (tail!2663 (++!5335 lt!690934 (Cons!19604 (head!4154 lt!690960) Nil!19604))) (tail!2663 lt!690953)))))

(declare-fun b!1779401 () Bool)

(declare-fun res!801910 () Bool)

(assert (=> b!1779401 (=> (not res!801910) (not e!1138780))))

(assert (=> b!1779401 (= res!801910 (= (head!4154 (++!5335 lt!690934 (Cons!19604 (head!4154 lt!690960) Nil!19604))) (head!4154 lt!690953)))))

(assert (= (and d!543394 (not res!801912)) b!1779400))

(assert (= (and b!1779400 res!801913) b!1779401))

(assert (= (and b!1779401 res!801910) b!1779402))

(assert (= (and d!543394 (not res!801911)) b!1779403))

(assert (=> b!1779403 m!2201053))

(assert (=> b!1779403 m!2200825))

(declare-fun m!2201061 () Bool)

(assert (=> b!1779403 m!2201061))

(assert (=> b!1779402 m!2200825))

(declare-fun m!2201063 () Bool)

(assert (=> b!1779402 m!2201063))

(assert (=> b!1779402 m!2201057))

(assert (=> b!1779402 m!2201063))

(assert (=> b!1779402 m!2201057))

(declare-fun m!2201065 () Bool)

(assert (=> b!1779402 m!2201065))

(assert (=> b!1779401 m!2200825))

(declare-fun m!2201067 () Bool)

(assert (=> b!1779401 m!2201067))

(declare-fun m!2201069 () Bool)

(assert (=> b!1779401 m!2201069))

(assert (=> b!1779207 d!543394))

(declare-fun b!1779414 () Bool)

(declare-fun res!801918 () Bool)

(declare-fun e!1138785 () Bool)

(assert (=> b!1779414 (=> (not res!801918) (not e!1138785))))

(declare-fun lt!691024 () List!19674)

(assert (=> b!1779414 (= res!801918 (= (size!15575 lt!691024) (+ (size!15575 lt!690934) (size!15575 (Cons!19604 (head!4154 lt!690960) Nil!19604)))))))

(declare-fun d!543396 () Bool)

(assert (=> d!543396 e!1138785))

(declare-fun res!801919 () Bool)

(assert (=> d!543396 (=> (not res!801919) (not e!1138785))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2849 (List!19674) (InoxSet C!9852))

(assert (=> d!543396 (= res!801919 (= (content!2849 lt!691024) ((_ map or) (content!2849 lt!690934) (content!2849 (Cons!19604 (head!4154 lt!690960) Nil!19604)))))))

(declare-fun e!1138786 () List!19674)

(assert (=> d!543396 (= lt!691024 e!1138786)))

(declare-fun c!289546 () Bool)

(assert (=> d!543396 (= c!289546 ((_ is Nil!19604) lt!690934))))

(assert (=> d!543396 (= (++!5335 lt!690934 (Cons!19604 (head!4154 lt!690960) Nil!19604)) lt!691024)))

(declare-fun b!1779412 () Bool)

(assert (=> b!1779412 (= e!1138786 (Cons!19604 (head!4154 lt!690960) Nil!19604))))

(declare-fun b!1779415 () Bool)

(assert (=> b!1779415 (= e!1138785 (or (not (= (Cons!19604 (head!4154 lt!690960) Nil!19604) Nil!19604)) (= lt!691024 lt!690934)))))

(declare-fun b!1779413 () Bool)

(assert (=> b!1779413 (= e!1138786 (Cons!19604 (h!25005 lt!690934) (++!5335 (t!166353 lt!690934) (Cons!19604 (head!4154 lt!690960) Nil!19604))))))

(assert (= (and d!543396 c!289546) b!1779412))

(assert (= (and d!543396 (not c!289546)) b!1779413))

(assert (= (and d!543396 res!801919) b!1779414))

(assert (= (and b!1779414 res!801918) b!1779415))

(declare-fun m!2201071 () Bool)

(assert (=> b!1779414 m!2201071))

(assert (=> b!1779414 m!2201055))

(declare-fun m!2201073 () Bool)

(assert (=> b!1779414 m!2201073))

(declare-fun m!2201075 () Bool)

(assert (=> d!543396 m!2201075))

(declare-fun m!2201077 () Bool)

(assert (=> d!543396 m!2201077))

(declare-fun m!2201079 () Bool)

(assert (=> d!543396 m!2201079))

(declare-fun m!2201081 () Bool)

(assert (=> b!1779413 m!2201081))

(assert (=> b!1779207 d!543396))

(declare-fun d!543398 () Bool)

(assert (=> d!543398 (isPrefix!1751 lt!690969 lt!690956)))

(declare-fun lt!691027 () Unit!33874)

(declare-fun choose!11143 (List!19674 List!19674 List!19674) Unit!33874)

(assert (=> d!543398 (= lt!691027 (choose!11143 lt!690956 lt!690969 lt!690953))))

(assert (=> d!543398 (isPrefix!1751 lt!690956 lt!690953)))

(assert (=> d!543398 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!159 lt!690956 lt!690969 lt!690953) lt!691027)))

(declare-fun bs!405085 () Bool)

(assert (= bs!405085 d!543398))

(assert (=> bs!405085 m!2200845))

(declare-fun m!2201083 () Bool)

(assert (=> bs!405085 m!2201083))

(assert (=> bs!405085 m!2200855))

(assert (=> b!1779207 d!543398))

(declare-fun d!543400 () Bool)

(assert (=> d!543400 (not (matchR!2312 lt!690975 lt!690956))))

(declare-fun lt!691030 () Unit!33874)

(declare-fun choose!11145 (Regex!4839 List!19674 List!19674) Unit!33874)

(assert (=> d!543400 (= lt!691030 (choose!11145 lt!690975 lt!690969 lt!690956))))

(assert (=> d!543400 (validRegex!1960 lt!690975)))

(assert (=> d!543400 (= (lemmaNotPrefixMatchThenCannotMatchLonger!150 lt!690975 lt!690969 lt!690956) lt!691030)))

(declare-fun bs!405086 () Bool)

(assert (= bs!405086 d!543400))

(assert (=> bs!405086 m!2200843))

(declare-fun m!2201085 () Bool)

(assert (=> bs!405086 m!2201085))

(declare-fun m!2201087 () Bool)

(assert (=> bs!405086 m!2201087))

(assert (=> b!1779207 d!543400))

(declare-fun d!543402 () Bool)

(assert (=> d!543402 (isPrefix!1751 (++!5335 lt!690934 (Cons!19604 (head!4154 (getSuffix!918 lt!690953 lt!690934)) Nil!19604)) lt!690953)))

(declare-fun lt!691033 () Unit!33874)

(declare-fun choose!11146 (List!19674 List!19674) Unit!33874)

(assert (=> d!543402 (= lt!691033 (choose!11146 lt!690934 lt!690953))))

(assert (=> d!543402 (isPrefix!1751 lt!690934 lt!690953)))

(assert (=> d!543402 (= (lemmaAddHeadSuffixToPrefixStillPrefix!287 lt!690934 lt!690953) lt!691033)))

(declare-fun bs!405087 () Bool)

(assert (= bs!405087 d!543402))

(assert (=> bs!405087 m!2200841))

(assert (=> bs!405087 m!2200851))

(assert (=> bs!405087 m!2200841))

(declare-fun m!2201089 () Bool)

(assert (=> bs!405087 m!2201089))

(declare-fun m!2201091 () Bool)

(assert (=> bs!405087 m!2201091))

(assert (=> bs!405087 m!2201091))

(declare-fun m!2201093 () Bool)

(assert (=> bs!405087 m!2201093))

(declare-fun m!2201095 () Bool)

(assert (=> bs!405087 m!2201095))

(assert (=> b!1779207 d!543402))

(declare-fun b!1779416 () Bool)

(declare-fun e!1138788 () Bool)

(declare-fun lt!691040 () Bool)

(assert (=> b!1779416 (= e!1138788 (not lt!691040))))

(declare-fun bm!111251 () Bool)

(declare-fun call!111256 () Bool)

(assert (=> bm!111251 (= call!111256 (isEmpty!12386 lt!690956))))

(declare-fun d!543404 () Bool)

(declare-fun e!1138792 () Bool)

(assert (=> d!543404 e!1138792))

(declare-fun c!289548 () Bool)

(assert (=> d!543404 (= c!289548 ((_ is EmptyExpr!4839) lt!690975))))

(declare-fun e!1138787 () Bool)

(assert (=> d!543404 (= lt!691040 e!1138787)))

(declare-fun c!289547 () Bool)

(assert (=> d!543404 (= c!289547 (isEmpty!12386 lt!690956))))

(assert (=> d!543404 (validRegex!1960 lt!690975)))

(assert (=> d!543404 (= (matchR!2312 lt!690975 lt!690956) lt!691040)))

(declare-fun b!1779417 () Bool)

(assert (=> b!1779417 (= e!1138787 (nullable!1486 lt!690975))))

(declare-fun b!1779418 () Bool)

(declare-fun e!1138791 () Bool)

(assert (=> b!1779418 (= e!1138791 (= (head!4154 lt!690956) (c!289504 lt!690975)))))

(declare-fun b!1779419 () Bool)

(assert (=> b!1779419 (= e!1138787 (matchR!2312 (derivativeStep!1255 lt!690975 (head!4154 lt!690956)) (tail!2663 lt!690956)))))

(declare-fun b!1779420 () Bool)

(declare-fun res!801927 () Bool)

(assert (=> b!1779420 (=> (not res!801927) (not e!1138791))))

(assert (=> b!1779420 (= res!801927 (isEmpty!12386 (tail!2663 lt!690956)))))

(declare-fun b!1779421 () Bool)

(declare-fun e!1138793 () Bool)

(declare-fun e!1138789 () Bool)

(assert (=> b!1779421 (= e!1138793 e!1138789)))

(declare-fun res!801920 () Bool)

(assert (=> b!1779421 (=> (not res!801920) (not e!1138789))))

(assert (=> b!1779421 (= res!801920 (not lt!691040))))

(declare-fun b!1779422 () Bool)

(declare-fun res!801924 () Bool)

(assert (=> b!1779422 (=> res!801924 e!1138793)))

(assert (=> b!1779422 (= res!801924 e!1138791)))

(declare-fun res!801922 () Bool)

(assert (=> b!1779422 (=> (not res!801922) (not e!1138791))))

(assert (=> b!1779422 (= res!801922 lt!691040)))

(declare-fun b!1779423 () Bool)

(declare-fun res!801923 () Bool)

(declare-fun e!1138790 () Bool)

(assert (=> b!1779423 (=> res!801923 e!1138790)))

(assert (=> b!1779423 (= res!801923 (not (isEmpty!12386 (tail!2663 lt!690956))))))

(declare-fun b!1779424 () Bool)

(assert (=> b!1779424 (= e!1138789 e!1138790)))

(declare-fun res!801926 () Bool)

(assert (=> b!1779424 (=> res!801926 e!1138790)))

(assert (=> b!1779424 (= res!801926 call!111256)))

(declare-fun b!1779425 () Bool)

(assert (=> b!1779425 (= e!1138790 (not (= (head!4154 lt!690956) (c!289504 lt!690975))))))

(declare-fun b!1779426 () Bool)

(declare-fun res!801925 () Bool)

(assert (=> b!1779426 (=> (not res!801925) (not e!1138791))))

(assert (=> b!1779426 (= res!801925 (not call!111256))))

(declare-fun b!1779427 () Bool)

(assert (=> b!1779427 (= e!1138792 (= lt!691040 call!111256))))

(declare-fun b!1779428 () Bool)

(assert (=> b!1779428 (= e!1138792 e!1138788)))

(declare-fun c!289549 () Bool)

(assert (=> b!1779428 (= c!289549 ((_ is EmptyLang!4839) lt!690975))))

(declare-fun b!1779429 () Bool)

(declare-fun res!801921 () Bool)

(assert (=> b!1779429 (=> res!801921 e!1138793)))

(assert (=> b!1779429 (= res!801921 (not ((_ is ElementMatch!4839) lt!690975)))))

(assert (=> b!1779429 (= e!1138788 e!1138793)))

(assert (= (and d!543404 c!289547) b!1779417))

(assert (= (and d!543404 (not c!289547)) b!1779419))

(assert (= (and d!543404 c!289548) b!1779427))

(assert (= (and d!543404 (not c!289548)) b!1779428))

(assert (= (and b!1779428 c!289549) b!1779416))

(assert (= (and b!1779428 (not c!289549)) b!1779429))

(assert (= (and b!1779429 (not res!801921)) b!1779422))

(assert (= (and b!1779422 res!801922) b!1779426))

(assert (= (and b!1779426 res!801925) b!1779420))

(assert (= (and b!1779420 res!801927) b!1779418))

(assert (= (and b!1779422 (not res!801924)) b!1779421))

(assert (= (and b!1779421 res!801920) b!1779424))

(assert (= (and b!1779424 (not res!801926)) b!1779423))

(assert (= (and b!1779423 (not res!801923)) b!1779425))

(assert (= (or b!1779427 b!1779424 b!1779426) bm!111251))

(assert (=> b!1779425 m!2201001))

(assert (=> b!1779420 m!2201003))

(assert (=> b!1779420 m!2201003))

(assert (=> b!1779420 m!2201005))

(assert (=> bm!111251 m!2201007))

(assert (=> b!1779418 m!2201001))

(assert (=> d!543404 m!2201007))

(assert (=> d!543404 m!2201087))

(assert (=> b!1779423 m!2201003))

(assert (=> b!1779423 m!2201003))

(assert (=> b!1779423 m!2201005))

(assert (=> b!1779419 m!2201001))

(assert (=> b!1779419 m!2201001))

(declare-fun m!2201097 () Bool)

(assert (=> b!1779419 m!2201097))

(assert (=> b!1779419 m!2201003))

(assert (=> b!1779419 m!2201097))

(assert (=> b!1779419 m!2201003))

(declare-fun m!2201099 () Bool)

(assert (=> b!1779419 m!2201099))

(declare-fun m!2201101 () Bool)

(assert (=> b!1779417 m!2201101))

(assert (=> b!1779207 d!543404))

(declare-fun d!543406 () Bool)

(assert (=> d!543406 (= suffix!1421 lt!690960)))

(declare-fun lt!691047 () Unit!33874)

(declare-fun choose!11148 (List!19674 List!19674 List!19674 List!19674 List!19674) Unit!33874)

(assert (=> d!543406 (= lt!691047 (choose!11148 lt!690934 suffix!1421 lt!690934 lt!690960 lt!690953))))

(assert (=> d!543406 (isPrefix!1751 lt!690934 lt!690953)))

(assert (=> d!543406 (= (lemmaSamePrefixThenSameSuffix!862 lt!690934 suffix!1421 lt!690934 lt!690960 lt!690953) lt!691047)))

(declare-fun bs!405088 () Bool)

(assert (= bs!405088 d!543406))

(declare-fun m!2201103 () Bool)

(assert (=> bs!405088 m!2201103))

(assert (=> bs!405088 m!2200851))

(assert (=> b!1779207 d!543406))

(declare-fun d!543408 () Bool)

(declare-fun e!1138800 () Bool)

(assert (=> d!543408 e!1138800))

(declare-fun res!801943 () Bool)

(assert (=> d!543408 (=> res!801943 e!1138800)))

(declare-fun lt!691048 () Bool)

(assert (=> d!543408 (= res!801943 (not lt!691048))))

(declare-fun e!1138801 () Bool)

(assert (=> d!543408 (= lt!691048 e!1138801)))

(declare-fun res!801944 () Bool)

(assert (=> d!543408 (=> res!801944 e!1138801)))

(assert (=> d!543408 (= res!801944 ((_ is Nil!19604) lt!690969))))

(assert (=> d!543408 (= (isPrefix!1751 lt!690969 lt!690956) lt!691048)))

(declare-fun b!1779451 () Bool)

(assert (=> b!1779451 (= e!1138800 (>= (size!15575 lt!690956) (size!15575 lt!690969)))))

(declare-fun b!1779448 () Bool)

(declare-fun e!1138802 () Bool)

(assert (=> b!1779448 (= e!1138801 e!1138802)))

(declare-fun res!801945 () Bool)

(assert (=> b!1779448 (=> (not res!801945) (not e!1138802))))

(assert (=> b!1779448 (= res!801945 (not ((_ is Nil!19604) lt!690956)))))

(declare-fun b!1779450 () Bool)

(assert (=> b!1779450 (= e!1138802 (isPrefix!1751 (tail!2663 lt!690969) (tail!2663 lt!690956)))))

(declare-fun b!1779449 () Bool)

(declare-fun res!801942 () Bool)

(assert (=> b!1779449 (=> (not res!801942) (not e!1138802))))

(assert (=> b!1779449 (= res!801942 (= (head!4154 lt!690969) (head!4154 lt!690956)))))

(assert (= (and d!543408 (not res!801944)) b!1779448))

(assert (= (and b!1779448 res!801945) b!1779449))

(assert (= (and b!1779449 res!801942) b!1779450))

(assert (= (and d!543408 (not res!801943)) b!1779451))

(assert (=> b!1779451 m!2200813))

(declare-fun m!2201105 () Bool)

(assert (=> b!1779451 m!2201105))

(declare-fun m!2201107 () Bool)

(assert (=> b!1779450 m!2201107))

(assert (=> b!1779450 m!2201003))

(assert (=> b!1779450 m!2201107))

(assert (=> b!1779450 m!2201003))

(declare-fun m!2201109 () Bool)

(assert (=> b!1779450 m!2201109))

(declare-fun m!2201111 () Bool)

(assert (=> b!1779449 m!2201111))

(assert (=> b!1779449 m!2201001))

(assert (=> b!1779207 d!543408))

(declare-fun d!543410 () Bool)

(assert (=> d!543410 (matchR!2312 (rulesRegex!867 thiss!24550 rules!3447) (list!7969 (charsOf!2160 (_1!11001 lt!690941))))))

(declare-fun lt!691056 () Unit!33874)

(declare-fun choose!11149 (LexerInterface!3140 List!19675 List!19674 Token!6588 Rule!6822 List!19674) Unit!33874)

(assert (=> d!543410 (= lt!691056 (choose!11149 thiss!24550 rules!3447 lt!690953 (_1!11001 lt!690941) (rule!5579 (_1!11001 lt!690941)) (_2!11001 lt!690941)))))

(assert (=> d!543410 (not (isEmpty!12387 rules!3447))))

(assert (=> d!543410 (= (lemmaMaxPrefixThenMatchesRulesRegex!218 thiss!24550 rules!3447 lt!690953 (_1!11001 lt!690941) (rule!5579 (_1!11001 lt!690941)) (_2!11001 lt!690941)) lt!691056)))

(declare-fun bs!405089 () Bool)

(assert (= bs!405089 d!543410))

(assert (=> bs!405089 m!2200779))

(declare-fun m!2201133 () Bool)

(assert (=> bs!405089 m!2201133))

(assert (=> bs!405089 m!2200763))

(assert (=> bs!405089 m!2200779))

(assert (=> bs!405089 m!2200781))

(assert (=> bs!405089 m!2200891))

(assert (=> bs!405089 m!2200763))

(assert (=> bs!405089 m!2200781))

(declare-fun m!2201137 () Bool)

(assert (=> bs!405089 m!2201137))

(assert (=> b!1779207 d!543410))

(declare-fun d!543412 () Bool)

(assert (=> d!543412 (= (head!4154 lt!690960) (h!25005 lt!690960))))

(assert (=> b!1779207 d!543412))

(declare-fun d!543416 () Bool)

(declare-fun res!801957 () Bool)

(declare-fun e!1138808 () Bool)

(assert (=> d!543416 (=> (not res!801957) (not e!1138808))))

(assert (=> d!543416 (= res!801957 (not (isEmpty!12386 (originalCharacters!4325 token!523))))))

(assert (=> d!543416 (= (inv!25508 token!523) e!1138808)))

(declare-fun b!1779465 () Bool)

(declare-fun res!801958 () Bool)

(assert (=> b!1779465 (=> (not res!801958) (not e!1138808))))

(assert (=> b!1779465 (= res!801958 (= (originalCharacters!4325 token!523) (list!7969 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 token!523))) (value!109736 token!523)))))))

(declare-fun b!1779466 () Bool)

(assert (=> b!1779466 (= e!1138808 (= (size!15574 token!523) (size!15575 (originalCharacters!4325 token!523))))))

(assert (= (and d!543416 res!801957) b!1779465))

(assert (= (and b!1779465 res!801958) b!1779466))

(declare-fun b_lambda!58199 () Bool)

(assert (=> (not b_lambda!58199) (not b!1779465)))

(declare-fun tb!108095 () Bool)

(declare-fun t!166362 () Bool)

(assert (=> (and b!1779193 (= (toChars!4897 (transformation!3511 (h!25006 rules!3447))) (toChars!4897 (transformation!3511 (rule!5579 token!523)))) t!166362) tb!108095))

(declare-fun b!1779467 () Bool)

(declare-fun e!1138809 () Bool)

(declare-fun tp!503919 () Bool)

(assert (=> b!1779467 (= e!1138809 (and (inv!25510 (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 token!523))) (value!109736 token!523)))) tp!503919))))

(declare-fun result!130038 () Bool)

(assert (=> tb!108095 (= result!130038 (and (inv!25511 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 token!523))) (value!109736 token!523))) e!1138809))))

(assert (= tb!108095 b!1779467))

(declare-fun m!2201151 () Bool)

(assert (=> b!1779467 m!2201151))

(declare-fun m!2201155 () Bool)

(assert (=> tb!108095 m!2201155))

(assert (=> b!1779465 t!166362))

(declare-fun b_and!136251 () Bool)

(assert (= b_and!136239 (and (=> t!166362 result!130038) b_and!136251)))

(declare-fun t!166366 () Bool)

(declare-fun tb!108099 () Bool)

(assert (=> (and b!1779203 (= (toChars!4897 (transformation!3511 (rule!5579 token!523))) (toChars!4897 (transformation!3511 (rule!5579 token!523)))) t!166366) tb!108099))

(declare-fun result!130042 () Bool)

(assert (= result!130042 result!130038))

(assert (=> b!1779465 t!166366))

(declare-fun b_and!136255 () Bool)

(assert (= b_and!136241 (and (=> t!166366 result!130042) b_and!136255)))

(declare-fun tb!108103 () Bool)

(declare-fun t!166370 () Bool)

(assert (=> (and b!1779200 (= (toChars!4897 (transformation!3511 rule!422)) (toChars!4897 (transformation!3511 (rule!5579 token!523)))) t!166370) tb!108103))

(declare-fun result!130046 () Bool)

(assert (= result!130046 result!130038))

(assert (=> b!1779465 t!166370))

(declare-fun b_and!136259 () Bool)

(assert (= b_and!136243 (and (=> t!166370 result!130046) b_and!136259)))

(declare-fun m!2201159 () Bool)

(assert (=> d!543416 m!2201159))

(declare-fun m!2201163 () Bool)

(assert (=> b!1779465 m!2201163))

(assert (=> b!1779465 m!2201163))

(declare-fun m!2201167 () Bool)

(assert (=> b!1779465 m!2201167))

(declare-fun m!2201169 () Bool)

(assert (=> b!1779466 m!2201169))

(assert (=> start!176886 d!543416))

(declare-fun d!543422 () Bool)

(assert (=> d!543422 (= (inv!25503 (tag!3903 (h!25006 rules!3447))) (= (mod (str.len (value!109735 (tag!3903 (h!25006 rules!3447)))) 2) 0))))

(assert (=> b!1779209 d!543422))

(declare-fun d!543424 () Bool)

(declare-fun res!801959 () Bool)

(declare-fun e!1138811 () Bool)

(assert (=> d!543424 (=> (not res!801959) (not e!1138811))))

(assert (=> d!543424 (= res!801959 (semiInverseModEq!1402 (toChars!4897 (transformation!3511 (h!25006 rules!3447))) (toValue!5038 (transformation!3511 (h!25006 rules!3447)))))))

(assert (=> d!543424 (= (inv!25509 (transformation!3511 (h!25006 rules!3447))) e!1138811)))

(declare-fun b!1779469 () Bool)

(assert (=> b!1779469 (= e!1138811 (equivClasses!1343 (toChars!4897 (transformation!3511 (h!25006 rules!3447))) (toValue!5038 (transformation!3511 (h!25006 rules!3447)))))))

(assert (= (and d!543424 res!801959) b!1779469))

(declare-fun m!2201171 () Bool)

(assert (=> d!543424 m!2201171))

(declare-fun m!2201173 () Bool)

(assert (=> b!1779469 m!2201173))

(assert (=> b!1779209 d!543424))

(declare-fun d!543426 () Bool)

(assert (=> d!543426 (= (apply!5311 (transformation!3511 (rule!5579 (_1!11001 lt!690941))) lt!690936) (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936))))

(declare-fun b_lambda!58203 () Bool)

(assert (=> (not b_lambda!58203) (not d!543426)))

(assert (=> d!543426 t!166341))

(declare-fun b_and!136263 () Bool)

(assert (= b_and!136233 (and (=> t!166341 result!130018) b_and!136263)))

(assert (=> d!543426 t!166343))

(declare-fun b_and!136265 () Bool)

(assert (= b_and!136235 (and (=> t!166343 result!130022) b_and!136265)))

(assert (=> d!543426 t!166345))

(declare-fun b_and!136267 () Bool)

(assert (= b_and!136237 (and (=> t!166345 result!130024) b_and!136267)))

(assert (=> d!543426 m!2200893))

(assert (=> b!1779210 d!543426))

(declare-fun d!543428 () Bool)

(assert (=> d!543428 (= (size!15574 (_1!11001 lt!690941)) (size!15575 (originalCharacters!4325 (_1!11001 lt!690941))))))

(declare-fun Unit!33880 () Unit!33874)

(assert (=> d!543428 (= (lemmaCharactersSize!569 (_1!11001 lt!690941)) Unit!33880)))

(declare-fun bs!405091 () Bool)

(assert (= bs!405091 d!543428))

(declare-fun m!2201175 () Bool)

(assert (=> bs!405091 m!2201175))

(assert (=> b!1779210 d!543428))

(declare-fun b!1779513 () Bool)

(declare-fun e!1138835 () Bool)

(assert (=> b!1779513 (= e!1138835 true)))

(declare-fun d!543430 () Bool)

(assert (=> d!543430 e!1138835))

(assert (= d!543430 b!1779513))

(declare-fun lambda!70629 () Int)

(declare-fun order!12629 () Int)

(declare-fun dynLambda!9611 (Int Int) Int)

(assert (=> b!1779513 (< (dynLambda!9606 order!12623 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) (dynLambda!9611 order!12629 lambda!70629))))

(assert (=> b!1779513 (< (dynLambda!9608 order!12627 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) (dynLambda!9611 order!12629 lambda!70629))))

(assert (=> d!543430 (= (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936) (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (seqFromList!2480 (originalCharacters!4325 (_1!11001 lt!690941)))))))

(declare-fun lt!691062 () Unit!33874)

(declare-fun Forall2of!147 (Int BalanceConc!12986 BalanceConc!12986) Unit!33874)

(assert (=> d!543430 (= lt!691062 (Forall2of!147 lambda!70629 lt!690936 (seqFromList!2480 (originalCharacters!4325 (_1!11001 lt!690941)))))))

(assert (=> d!543430 (= (list!7969 lt!690936) (list!7969 (seqFromList!2480 (originalCharacters!4325 (_1!11001 lt!690941)))))))

(assert (=> d!543430 (= (lemmaEqSameImage!422 (transformation!3511 (rule!5579 (_1!11001 lt!690941))) lt!690936 (seqFromList!2480 (originalCharacters!4325 (_1!11001 lt!690941)))) lt!691062)))

(declare-fun b_lambda!58205 () Bool)

(assert (=> (not b_lambda!58205) (not d!543430)))

(assert (=> d!543430 t!166341))

(declare-fun b_and!136269 () Bool)

(assert (= b_and!136263 (and (=> t!166341 result!130018) b_and!136269)))

(assert (=> d!543430 t!166343))

(declare-fun b_and!136271 () Bool)

(assert (= b_and!136265 (and (=> t!166343 result!130022) b_and!136271)))

(assert (=> d!543430 t!166345))

(declare-fun b_and!136273 () Bool)

(assert (= b_and!136267 (and (=> t!166345 result!130024) b_and!136273)))

(declare-fun b_lambda!58207 () Bool)

(assert (=> (not b_lambda!58207) (not d!543430)))

(declare-fun t!166374 () Bool)

(declare-fun tb!108107 () Bool)

(assert (=> (and b!1779193 (= (toValue!5038 (transformation!3511 (h!25006 rules!3447))) (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) t!166374) tb!108107))

(declare-fun result!130050 () Bool)

(assert (=> tb!108107 (= result!130050 (inv!21 (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (seqFromList!2480 (originalCharacters!4325 (_1!11001 lt!690941))))))))

(declare-fun m!2201183 () Bool)

(assert (=> tb!108107 m!2201183))

(assert (=> d!543430 t!166374))

(declare-fun b_and!136275 () Bool)

(assert (= b_and!136269 (and (=> t!166374 result!130050) b_and!136275)))

(declare-fun t!166376 () Bool)

(declare-fun tb!108109 () Bool)

(assert (=> (and b!1779203 (= (toValue!5038 (transformation!3511 (rule!5579 token!523))) (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) t!166376) tb!108109))

(declare-fun result!130052 () Bool)

(assert (= result!130052 result!130050))

(assert (=> d!543430 t!166376))

(declare-fun b_and!136277 () Bool)

(assert (= b_and!136271 (and (=> t!166376 result!130052) b_and!136277)))

(declare-fun t!166378 () Bool)

(declare-fun tb!108111 () Bool)

(assert (=> (and b!1779200 (= (toValue!5038 (transformation!3511 rule!422)) (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) t!166378) tb!108111))

(declare-fun result!130054 () Bool)

(assert (= result!130054 result!130050))

(assert (=> d!543430 t!166378))

(declare-fun b_and!136279 () Bool)

(assert (= b_and!136273 (and (=> t!166378 result!130054) b_and!136279)))

(assert (=> d!543430 m!2200803))

(declare-fun m!2201185 () Bool)

(assert (=> d!543430 m!2201185))

(assert (=> d!543430 m!2200849))

(assert (=> d!543430 m!2200803))

(declare-fun m!2201187 () Bool)

(assert (=> d!543430 m!2201187))

(assert (=> d!543430 m!2200893))

(assert (=> d!543430 m!2200803))

(declare-fun m!2201189 () Bool)

(assert (=> d!543430 m!2201189))

(assert (=> b!1779210 d!543430))

(declare-fun d!543434 () Bool)

(declare-fun lt!691067 () Int)

(assert (=> d!543434 (= lt!691067 (size!15575 (list!7969 lt!690936)))))

(declare-fun size!15577 (Conc!6521) Int)

(assert (=> d!543434 (= lt!691067 (size!15577 (c!289505 lt!690936)))))

(assert (=> d!543434 (= (size!15576 lt!690936) lt!691067)))

(declare-fun bs!405092 () Bool)

(assert (= bs!405092 d!543434))

(assert (=> bs!405092 m!2200849))

(assert (=> bs!405092 m!2200849))

(declare-fun m!2201191 () Bool)

(assert (=> bs!405092 m!2201191))

(declare-fun m!2201193 () Bool)

(assert (=> bs!405092 m!2201193))

(assert (=> b!1779210 d!543434))

(declare-fun d!543436 () Bool)

(declare-fun fromListB!1136 (List!19674) BalanceConc!12986)

(assert (=> d!543436 (= (seqFromList!2480 (originalCharacters!4325 (_1!11001 lt!690941))) (fromListB!1136 (originalCharacters!4325 (_1!11001 lt!690941))))))

(declare-fun bs!405093 () Bool)

(assert (= bs!405093 d!543436))

(declare-fun m!2201195 () Bool)

(assert (=> bs!405093 m!2201195))

(assert (=> b!1779210 d!543436))

(declare-fun d!543438 () Bool)

(declare-fun lt!691071 () Bool)

(declare-fun content!2850 (List!19675) (InoxSet Rule!6822))

(assert (=> d!543438 (= lt!691071 (select (content!2850 rules!3447) rule!422))))

(declare-fun e!1138854 () Bool)

(assert (=> d!543438 (= lt!691071 e!1138854)))

(declare-fun res!801998 () Bool)

(assert (=> d!543438 (=> (not res!801998) (not e!1138854))))

(assert (=> d!543438 (= res!801998 ((_ is Cons!19605) rules!3447))))

(assert (=> d!543438 (= (contains!3543 rules!3447 rule!422) lt!691071)))

(declare-fun b!1779542 () Bool)

(declare-fun e!1138855 () Bool)

(assert (=> b!1779542 (= e!1138854 e!1138855)))

(declare-fun res!801997 () Bool)

(assert (=> b!1779542 (=> res!801997 e!1138855)))

(assert (=> b!1779542 (= res!801997 (= (h!25006 rules!3447) rule!422))))

(declare-fun b!1779543 () Bool)

(assert (=> b!1779543 (= e!1138855 (contains!3543 (t!166354 rules!3447) rule!422))))

(assert (= (and d!543438 res!801998) b!1779542))

(assert (= (and b!1779542 (not res!801997)) b!1779543))

(declare-fun m!2201213 () Bool)

(assert (=> d!543438 m!2201213))

(declare-fun m!2201215 () Bool)

(assert (=> d!543438 m!2201215))

(declare-fun m!2201217 () Bool)

(assert (=> b!1779543 m!2201217))

(assert (=> b!1779189 d!543438))

(declare-fun d!543442 () Bool)

(declare-fun isEmpty!12390 (Option!4045) Bool)

(assert (=> d!543442 (= (isDefined!3388 lt!690963) (not (isEmpty!12390 lt!690963)))))

(declare-fun bs!405094 () Bool)

(assert (= bs!405094 d!543442))

(declare-fun m!2201219 () Bool)

(assert (=> bs!405094 m!2201219))

(assert (=> b!1779211 d!543442))

(declare-fun call!111266 () Option!4045)

(declare-fun bm!111261 () Bool)

(assert (=> bm!111261 (= call!111266 (maxPrefixOneRule!1063 thiss!24550 (h!25006 rules!3447) lt!690934))))

(declare-fun b!1779603 () Bool)

(declare-fun res!802056 () Bool)

(declare-fun e!1138888 () Bool)

(assert (=> b!1779603 (=> (not res!802056) (not e!1138888))))

(declare-fun lt!691106 () Option!4045)

(assert (=> b!1779603 (= res!802056 (= (++!5335 (list!7969 (charsOf!2160 (_1!11001 (get!6017 lt!691106)))) (_2!11001 (get!6017 lt!691106))) lt!690934))))

(declare-fun b!1779604 () Bool)

(declare-fun e!1138887 () Option!4045)

(assert (=> b!1779604 (= e!1138887 call!111266)))

(declare-fun b!1779605 () Bool)

(declare-fun e!1138886 () Bool)

(assert (=> b!1779605 (= e!1138886 e!1138888)))

(declare-fun res!802055 () Bool)

(assert (=> b!1779605 (=> (not res!802055) (not e!1138888))))

(assert (=> b!1779605 (= res!802055 (isDefined!3388 lt!691106))))

(declare-fun b!1779606 () Bool)

(declare-fun lt!691105 () Option!4045)

(declare-fun lt!691107 () Option!4045)

(assert (=> b!1779606 (= e!1138887 (ite (and ((_ is None!4044) lt!691105) ((_ is None!4044) lt!691107)) None!4044 (ite ((_ is None!4044) lt!691107) lt!691105 (ite ((_ is None!4044) lt!691105) lt!691107 (ite (>= (size!15574 (_1!11001 (v!25531 lt!691105))) (size!15574 (_1!11001 (v!25531 lt!691107)))) lt!691105 lt!691107)))))))

(assert (=> b!1779606 (= lt!691105 call!111266)))

(assert (=> b!1779606 (= lt!691107 (maxPrefix!1694 thiss!24550 (t!166354 rules!3447) lt!690934))))

(declare-fun b!1779607 () Bool)

(declare-fun res!802053 () Bool)

(assert (=> b!1779607 (=> (not res!802053) (not e!1138888))))

(assert (=> b!1779607 (= res!802053 (< (size!15575 (_2!11001 (get!6017 lt!691106))) (size!15575 lt!690934)))))

(declare-fun d!543446 () Bool)

(assert (=> d!543446 e!1138886))

(declare-fun res!802052 () Bool)

(assert (=> d!543446 (=> res!802052 e!1138886)))

(assert (=> d!543446 (= res!802052 (isEmpty!12390 lt!691106))))

(assert (=> d!543446 (= lt!691106 e!1138887)))

(declare-fun c!289572 () Bool)

(assert (=> d!543446 (= c!289572 (and ((_ is Cons!19605) rules!3447) ((_ is Nil!19605) (t!166354 rules!3447))))))

(declare-fun lt!691104 () Unit!33874)

(declare-fun lt!691103 () Unit!33874)

(assert (=> d!543446 (= lt!691104 lt!691103)))

(assert (=> d!543446 (isPrefix!1751 lt!690934 lt!690934)))

(declare-fun lemmaIsPrefixRefl!1156 (List!19674 List!19674) Unit!33874)

(assert (=> d!543446 (= lt!691103 (lemmaIsPrefixRefl!1156 lt!690934 lt!690934))))

(declare-fun rulesValidInductive!1192 (LexerInterface!3140 List!19675) Bool)

(assert (=> d!543446 (rulesValidInductive!1192 thiss!24550 rules!3447)))

(assert (=> d!543446 (= (maxPrefix!1694 thiss!24550 rules!3447 lt!690934) lt!691106)))

(declare-fun b!1779608 () Bool)

(declare-fun res!802054 () Bool)

(assert (=> b!1779608 (=> (not res!802054) (not e!1138888))))

(assert (=> b!1779608 (= res!802054 (matchR!2312 (regex!3511 (rule!5579 (_1!11001 (get!6017 lt!691106)))) (list!7969 (charsOf!2160 (_1!11001 (get!6017 lt!691106))))))))

(declare-fun b!1779609 () Bool)

(declare-fun res!802050 () Bool)

(assert (=> b!1779609 (=> (not res!802050) (not e!1138888))))

(assert (=> b!1779609 (= res!802050 (= (list!7969 (charsOf!2160 (_1!11001 (get!6017 lt!691106)))) (originalCharacters!4325 (_1!11001 (get!6017 lt!691106)))))))

(declare-fun b!1779610 () Bool)

(assert (=> b!1779610 (= e!1138888 (contains!3543 rules!3447 (rule!5579 (_1!11001 (get!6017 lt!691106)))))))

(declare-fun b!1779611 () Bool)

(declare-fun res!802051 () Bool)

(assert (=> b!1779611 (=> (not res!802051) (not e!1138888))))

(assert (=> b!1779611 (= res!802051 (= (value!109736 (_1!11001 (get!6017 lt!691106))) (apply!5311 (transformation!3511 (rule!5579 (_1!11001 (get!6017 lt!691106)))) (seqFromList!2480 (originalCharacters!4325 (_1!11001 (get!6017 lt!691106)))))))))

(assert (= (and d!543446 c!289572) b!1779604))

(assert (= (and d!543446 (not c!289572)) b!1779606))

(assert (= (or b!1779604 b!1779606) bm!111261))

(assert (= (and d!543446 (not res!802052)) b!1779605))

(assert (= (and b!1779605 res!802055) b!1779609))

(assert (= (and b!1779609 res!802050) b!1779607))

(assert (= (and b!1779607 res!802053) b!1779603))

(assert (= (and b!1779603 res!802056) b!1779611))

(assert (= (and b!1779611 res!802051) b!1779608))

(assert (= (and b!1779608 res!802054) b!1779610))

(declare-fun m!2201299 () Bool)

(assert (=> d!543446 m!2201299))

(declare-fun m!2201301 () Bool)

(assert (=> d!543446 m!2201301))

(declare-fun m!2201303 () Bool)

(assert (=> d!543446 m!2201303))

(declare-fun m!2201305 () Bool)

(assert (=> d!543446 m!2201305))

(declare-fun m!2201307 () Bool)

(assert (=> b!1779606 m!2201307))

(declare-fun m!2201309 () Bool)

(assert (=> b!1779605 m!2201309))

(declare-fun m!2201311 () Bool)

(assert (=> b!1779603 m!2201311))

(declare-fun m!2201313 () Bool)

(assert (=> b!1779603 m!2201313))

(assert (=> b!1779603 m!2201313))

(declare-fun m!2201315 () Bool)

(assert (=> b!1779603 m!2201315))

(assert (=> b!1779603 m!2201315))

(declare-fun m!2201317 () Bool)

(assert (=> b!1779603 m!2201317))

(assert (=> b!1779610 m!2201311))

(declare-fun m!2201319 () Bool)

(assert (=> b!1779610 m!2201319))

(assert (=> b!1779609 m!2201311))

(assert (=> b!1779609 m!2201313))

(assert (=> b!1779609 m!2201313))

(assert (=> b!1779609 m!2201315))

(assert (=> b!1779607 m!2201311))

(declare-fun m!2201321 () Bool)

(assert (=> b!1779607 m!2201321))

(assert (=> b!1779607 m!2201055))

(assert (=> b!1779611 m!2201311))

(declare-fun m!2201323 () Bool)

(assert (=> b!1779611 m!2201323))

(assert (=> b!1779611 m!2201323))

(declare-fun m!2201325 () Bool)

(assert (=> b!1779611 m!2201325))

(declare-fun m!2201327 () Bool)

(assert (=> bm!111261 m!2201327))

(assert (=> b!1779608 m!2201311))

(assert (=> b!1779608 m!2201313))

(assert (=> b!1779608 m!2201313))

(assert (=> b!1779608 m!2201315))

(assert (=> b!1779608 m!2201315))

(declare-fun m!2201329 () Bool)

(assert (=> b!1779608 m!2201329))

(assert (=> b!1779211 d!543446))

(declare-fun d!543472 () Bool)

(declare-fun list!7972 (Conc!6521) List!19674)

(assert (=> d!543472 (= (list!7969 lt!690959) (list!7972 (c!289505 lt!690959)))))

(declare-fun bs!405100 () Bool)

(assert (= bs!405100 d!543472))

(declare-fun m!2201331 () Bool)

(assert (=> bs!405100 m!2201331))

(assert (=> b!1779211 d!543472))

(declare-fun d!543474 () Bool)

(declare-fun lt!691110 () BalanceConc!12986)

(assert (=> d!543474 (= (list!7969 lt!691110) (originalCharacters!4325 token!523))))

(assert (=> d!543474 (= lt!691110 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 token!523))) (value!109736 token!523)))))

(assert (=> d!543474 (= (charsOf!2160 token!523) lt!691110)))

(declare-fun b_lambda!58209 () Bool)

(assert (=> (not b_lambda!58209) (not d!543474)))

(assert (=> d!543474 t!166362))

(declare-fun b_and!136281 () Bool)

(assert (= b_and!136251 (and (=> t!166362 result!130038) b_and!136281)))

(assert (=> d!543474 t!166366))

(declare-fun b_and!136283 () Bool)

(assert (= b_and!136255 (and (=> t!166366 result!130042) b_and!136283)))

(assert (=> d!543474 t!166370))

(declare-fun b_and!136285 () Bool)

(assert (= b_and!136259 (and (=> t!166370 result!130046) b_and!136285)))

(declare-fun m!2201333 () Bool)

(assert (=> d!543474 m!2201333))

(assert (=> d!543474 m!2201163))

(assert (=> b!1779211 d!543474))

(declare-fun b!1779614 () Bool)

(declare-fun res!802057 () Bool)

(declare-fun e!1138889 () Bool)

(assert (=> b!1779614 (=> (not res!802057) (not e!1138889))))

(declare-fun lt!691111 () List!19674)

(assert (=> b!1779614 (= res!802057 (= (size!15575 lt!691111) (+ (size!15575 lt!690934) (size!15575 (_2!11001 lt!690941)))))))

(declare-fun d!543476 () Bool)

(assert (=> d!543476 e!1138889))

(declare-fun res!802058 () Bool)

(assert (=> d!543476 (=> (not res!802058) (not e!1138889))))

(assert (=> d!543476 (= res!802058 (= (content!2849 lt!691111) ((_ map or) (content!2849 lt!690934) (content!2849 (_2!11001 lt!690941)))))))

(declare-fun e!1138890 () List!19674)

(assert (=> d!543476 (= lt!691111 e!1138890)))

(declare-fun c!289573 () Bool)

(assert (=> d!543476 (= c!289573 ((_ is Nil!19604) lt!690934))))

(assert (=> d!543476 (= (++!5335 lt!690934 (_2!11001 lt!690941)) lt!691111)))

(declare-fun b!1779612 () Bool)

(assert (=> b!1779612 (= e!1138890 (_2!11001 lt!690941))))

(declare-fun b!1779615 () Bool)

(assert (=> b!1779615 (= e!1138889 (or (not (= (_2!11001 lt!690941) Nil!19604)) (= lt!691111 lt!690934)))))

(declare-fun b!1779613 () Bool)

(assert (=> b!1779613 (= e!1138890 (Cons!19604 (h!25005 lt!690934) (++!5335 (t!166353 lt!690934) (_2!11001 lt!690941))))))

(assert (= (and d!543476 c!289573) b!1779612))

(assert (= (and d!543476 (not c!289573)) b!1779613))

(assert (= (and d!543476 res!802058) b!1779614))

(assert (= (and b!1779614 res!802057) b!1779615))

(declare-fun m!2201335 () Bool)

(assert (=> b!1779614 m!2201335))

(assert (=> b!1779614 m!2201055))

(declare-fun m!2201337 () Bool)

(assert (=> b!1779614 m!2201337))

(declare-fun m!2201339 () Bool)

(assert (=> d!543476 m!2201339))

(assert (=> d!543476 m!2201077))

(declare-fun m!2201341 () Bool)

(assert (=> d!543476 m!2201341))

(declare-fun m!2201343 () Bool)

(assert (=> b!1779613 m!2201343))

(assert (=> b!1779190 d!543476))

(declare-fun d!543478 () Bool)

(assert (=> d!543478 (= lt!690956 lt!690934)))

(declare-fun lt!691114 () Unit!33874)

(declare-fun choose!11150 (List!19674 List!19674 List!19674) Unit!33874)

(assert (=> d!543478 (= lt!691114 (choose!11150 lt!690956 lt!690934 lt!690953))))

(assert (=> d!543478 (isPrefix!1751 lt!690956 lt!690953)))

(assert (=> d!543478 (= (lemmaIsPrefixSameLengthThenSameList!247 lt!690956 lt!690934 lt!690953) lt!691114)))

(declare-fun bs!405101 () Bool)

(assert (= bs!405101 d!543478))

(declare-fun m!2201345 () Bool)

(assert (=> bs!405101 m!2201345))

(assert (=> bs!405101 m!2200855))

(assert (=> b!1779190 d!543478))

(declare-fun d!543480 () Bool)

(assert (=> d!543480 (= (isEmpty!12386 (_2!11001 lt!690972)) ((_ is Nil!19604) (_2!11001 lt!690972)))))

(assert (=> b!1779212 d!543480))

(declare-fun b!1779628 () Bool)

(declare-fun e!1138900 () Option!4044)

(assert (=> b!1779628 (= e!1138900 (Some!4043 (h!25006 rules!3447)))))

(declare-fun b!1779629 () Bool)

(declare-fun e!1138902 () Bool)

(declare-fun lt!691122 () Option!4044)

(assert (=> b!1779629 (= e!1138902 (= (tag!3903 (get!6018 lt!691122)) (tag!3903 (rule!5579 (_1!11001 lt!690941)))))))

(declare-fun b!1779630 () Bool)

(declare-fun lt!691123 () Unit!33874)

(declare-fun lt!691121 () Unit!33874)

(assert (=> b!1779630 (= lt!691123 lt!691121)))

(assert (=> b!1779630 (rulesInvariant!2809 thiss!24550 (t!166354 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!216 (LexerInterface!3140 Rule!6822 List!19675) Unit!33874)

(assert (=> b!1779630 (= lt!691121 (lemmaInvariantOnRulesThenOnTail!216 thiss!24550 (h!25006 rules!3447) (t!166354 rules!3447)))))

(declare-fun e!1138899 () Option!4044)

(assert (=> b!1779630 (= e!1138899 (getRuleFromTag!559 thiss!24550 (t!166354 rules!3447) (tag!3903 (rule!5579 (_1!11001 lt!690941)))))))

(declare-fun b!1779631 () Bool)

(assert (=> b!1779631 (= e!1138899 None!4043)))

(declare-fun b!1779632 () Bool)

(declare-fun e!1138901 () Bool)

(assert (=> b!1779632 (= e!1138901 e!1138902)))

(declare-fun res!802064 () Bool)

(assert (=> b!1779632 (=> (not res!802064) (not e!1138902))))

(assert (=> b!1779632 (= res!802064 (contains!3543 rules!3447 (get!6018 lt!691122)))))

(declare-fun d!543482 () Bool)

(assert (=> d!543482 e!1138901))

(declare-fun res!802063 () Bool)

(assert (=> d!543482 (=> res!802063 e!1138901)))

(declare-fun isEmpty!12391 (Option!4044) Bool)

(assert (=> d!543482 (= res!802063 (isEmpty!12391 lt!691122))))

(assert (=> d!543482 (= lt!691122 e!1138900)))

(declare-fun c!289578 () Bool)

(assert (=> d!543482 (= c!289578 (and ((_ is Cons!19605) rules!3447) (= (tag!3903 (h!25006 rules!3447)) (tag!3903 (rule!5579 (_1!11001 lt!690941))))))))

(assert (=> d!543482 (rulesInvariant!2809 thiss!24550 rules!3447)))

(assert (=> d!543482 (= (getRuleFromTag!559 thiss!24550 rules!3447 (tag!3903 (rule!5579 (_1!11001 lt!690941)))) lt!691122)))

(declare-fun b!1779633 () Bool)

(assert (=> b!1779633 (= e!1138900 e!1138899)))

(declare-fun c!289579 () Bool)

(assert (=> b!1779633 (= c!289579 (and ((_ is Cons!19605) rules!3447) (not (= (tag!3903 (h!25006 rules!3447)) (tag!3903 (rule!5579 (_1!11001 lt!690941)))))))))

(assert (= (and d!543482 c!289578) b!1779628))

(assert (= (and d!543482 (not c!289578)) b!1779633))

(assert (= (and b!1779633 c!289579) b!1779630))

(assert (= (and b!1779633 (not c!289579)) b!1779631))

(assert (= (and d!543482 (not res!802063)) b!1779632))

(assert (= (and b!1779632 res!802064) b!1779629))

(declare-fun m!2201347 () Bool)

(assert (=> b!1779629 m!2201347))

(declare-fun m!2201349 () Bool)

(assert (=> b!1779630 m!2201349))

(declare-fun m!2201351 () Bool)

(assert (=> b!1779630 m!2201351))

(declare-fun m!2201353 () Bool)

(assert (=> b!1779630 m!2201353))

(assert (=> b!1779632 m!2201347))

(assert (=> b!1779632 m!2201347))

(declare-fun m!2201355 () Bool)

(assert (=> b!1779632 m!2201355))

(declare-fun m!2201357 () Bool)

(assert (=> d!543482 m!2201357))

(assert (=> d!543482 m!2200765))

(assert (=> b!1779191 d!543482))

(declare-fun d!543484 () Bool)

(declare-fun e!1138903 () Bool)

(assert (=> d!543484 e!1138903))

(declare-fun res!802066 () Bool)

(assert (=> d!543484 (=> res!802066 e!1138903)))

(declare-fun lt!691124 () Bool)

(assert (=> d!543484 (= res!802066 (not lt!691124))))

(declare-fun e!1138904 () Bool)

(assert (=> d!543484 (= lt!691124 e!1138904)))

(declare-fun res!802067 () Bool)

(assert (=> d!543484 (=> res!802067 e!1138904)))

(assert (=> d!543484 (= res!802067 ((_ is Nil!19604) lt!690956))))

(assert (=> d!543484 (= (isPrefix!1751 lt!690956 lt!690953) lt!691124)))

(declare-fun b!1779637 () Bool)

(assert (=> b!1779637 (= e!1138903 (>= (size!15575 lt!690953) (size!15575 lt!690956)))))

(declare-fun b!1779634 () Bool)

(declare-fun e!1138905 () Bool)

(assert (=> b!1779634 (= e!1138904 e!1138905)))

(declare-fun res!802068 () Bool)

(assert (=> b!1779634 (=> (not res!802068) (not e!1138905))))

(assert (=> b!1779634 (= res!802068 (not ((_ is Nil!19604) lt!690953)))))

(declare-fun b!1779636 () Bool)

(assert (=> b!1779636 (= e!1138905 (isPrefix!1751 (tail!2663 lt!690956) (tail!2663 lt!690953)))))

(declare-fun b!1779635 () Bool)

(declare-fun res!802065 () Bool)

(assert (=> b!1779635 (=> (not res!802065) (not e!1138905))))

(assert (=> b!1779635 (= res!802065 (= (head!4154 lt!690956) (head!4154 lt!690953)))))

(assert (= (and d!543484 (not res!802067)) b!1779634))

(assert (= (and b!1779634 res!802068) b!1779635))

(assert (= (and b!1779635 res!802065) b!1779636))

(assert (= (and d!543484 (not res!802066)) b!1779637))

(assert (=> b!1779637 m!2201053))

(assert (=> b!1779637 m!2200813))

(assert (=> b!1779636 m!2201003))

(assert (=> b!1779636 m!2201057))

(assert (=> b!1779636 m!2201003))

(assert (=> b!1779636 m!2201057))

(declare-fun m!2201359 () Bool)

(assert (=> b!1779636 m!2201359))

(assert (=> b!1779635 m!2201001))

(assert (=> b!1779635 m!2201069))

(assert (=> b!1779191 d!543484))

(declare-fun d!543486 () Bool)

(assert (=> d!543486 (= (get!6017 lt!690976) (v!25531 lt!690976))))

(assert (=> b!1779191 d!543486))

(declare-fun d!543488 () Bool)

(declare-fun e!1138906 () Bool)

(assert (=> d!543488 e!1138906))

(declare-fun res!802070 () Bool)

(assert (=> d!543488 (=> res!802070 e!1138906)))

(declare-fun lt!691125 () Bool)

(assert (=> d!543488 (= res!802070 (not lt!691125))))

(declare-fun e!1138907 () Bool)

(assert (=> d!543488 (= lt!691125 e!1138907)))

(declare-fun res!802071 () Bool)

(assert (=> d!543488 (=> res!802071 e!1138907)))

(assert (=> d!543488 (= res!802071 ((_ is Nil!19604) lt!690956))))

(assert (=> d!543488 (= (isPrefix!1751 lt!690956 (++!5335 lt!690956 (_2!11001 lt!690941))) lt!691125)))

(declare-fun b!1779641 () Bool)

(assert (=> b!1779641 (= e!1138906 (>= (size!15575 (++!5335 lt!690956 (_2!11001 lt!690941))) (size!15575 lt!690956)))))

(declare-fun b!1779638 () Bool)

(declare-fun e!1138908 () Bool)

(assert (=> b!1779638 (= e!1138907 e!1138908)))

(declare-fun res!802072 () Bool)

(assert (=> b!1779638 (=> (not res!802072) (not e!1138908))))

(assert (=> b!1779638 (= res!802072 (not ((_ is Nil!19604) (++!5335 lt!690956 (_2!11001 lt!690941)))))))

(declare-fun b!1779640 () Bool)

(assert (=> b!1779640 (= e!1138908 (isPrefix!1751 (tail!2663 lt!690956) (tail!2663 (++!5335 lt!690956 (_2!11001 lt!690941)))))))

(declare-fun b!1779639 () Bool)

(declare-fun res!802069 () Bool)

(assert (=> b!1779639 (=> (not res!802069) (not e!1138908))))

(assert (=> b!1779639 (= res!802069 (= (head!4154 lt!690956) (head!4154 (++!5335 lt!690956 (_2!11001 lt!690941)))))))

(assert (= (and d!543488 (not res!802071)) b!1779638))

(assert (= (and b!1779638 res!802072) b!1779639))

(assert (= (and b!1779639 res!802069) b!1779640))

(assert (= (and d!543488 (not res!802070)) b!1779641))

(assert (=> b!1779641 m!2200869))

(declare-fun m!2201361 () Bool)

(assert (=> b!1779641 m!2201361))

(assert (=> b!1779641 m!2200813))

(assert (=> b!1779640 m!2201003))

(assert (=> b!1779640 m!2200869))

(declare-fun m!2201363 () Bool)

(assert (=> b!1779640 m!2201363))

(assert (=> b!1779640 m!2201003))

(assert (=> b!1779640 m!2201363))

(declare-fun m!2201365 () Bool)

(assert (=> b!1779640 m!2201365))

(assert (=> b!1779639 m!2201001))

(assert (=> b!1779639 m!2200869))

(declare-fun m!2201367 () Bool)

(assert (=> b!1779639 m!2201367))

(assert (=> b!1779191 d!543488))

(declare-fun d!543490 () Bool)

(declare-fun e!1138909 () Bool)

(assert (=> d!543490 e!1138909))

(declare-fun res!802074 () Bool)

(assert (=> d!543490 (=> res!802074 e!1138909)))

(declare-fun lt!691126 () Bool)

(assert (=> d!543490 (= res!802074 (not lt!691126))))

(declare-fun e!1138910 () Bool)

(assert (=> d!543490 (= lt!691126 e!1138910)))

(declare-fun res!802075 () Bool)

(assert (=> d!543490 (=> res!802075 e!1138910)))

(assert (=> d!543490 (= res!802075 ((_ is Nil!19604) lt!690934))))

(assert (=> d!543490 (= (isPrefix!1751 lt!690934 lt!690953) lt!691126)))

(declare-fun b!1779645 () Bool)

(assert (=> b!1779645 (= e!1138909 (>= (size!15575 lt!690953) (size!15575 lt!690934)))))

(declare-fun b!1779642 () Bool)

(declare-fun e!1138911 () Bool)

(assert (=> b!1779642 (= e!1138910 e!1138911)))

(declare-fun res!802076 () Bool)

(assert (=> b!1779642 (=> (not res!802076) (not e!1138911))))

(assert (=> b!1779642 (= res!802076 (not ((_ is Nil!19604) lt!690953)))))

(declare-fun b!1779644 () Bool)

(assert (=> b!1779644 (= e!1138911 (isPrefix!1751 (tail!2663 lt!690934) (tail!2663 lt!690953)))))

(declare-fun b!1779643 () Bool)

(declare-fun res!802073 () Bool)

(assert (=> b!1779643 (=> (not res!802073) (not e!1138911))))

(assert (=> b!1779643 (= res!802073 (= (head!4154 lt!690934) (head!4154 lt!690953)))))

(assert (= (and d!543490 (not res!802075)) b!1779642))

(assert (= (and b!1779642 res!802076) b!1779643))

(assert (= (and b!1779643 res!802073) b!1779644))

(assert (= (and d!543490 (not res!802074)) b!1779645))

(assert (=> b!1779645 m!2201053))

(assert (=> b!1779645 m!2201055))

(declare-fun m!2201369 () Bool)

(assert (=> b!1779644 m!2201369))

(assert (=> b!1779644 m!2201057))

(assert (=> b!1779644 m!2201369))

(assert (=> b!1779644 m!2201057))

(declare-fun m!2201371 () Bool)

(assert (=> b!1779644 m!2201371))

(declare-fun m!2201373 () Bool)

(assert (=> b!1779643 m!2201373))

(assert (=> b!1779643 m!2201069))

(assert (=> b!1779191 d!543490))

(declare-fun d!543492 () Bool)

(assert (=> d!543492 (= (list!7969 lt!690936) (list!7972 (c!289505 lt!690936)))))

(declare-fun bs!405102 () Bool)

(assert (= bs!405102 d!543492))

(declare-fun m!2201375 () Bool)

(assert (=> bs!405102 m!2201375))

(assert (=> b!1779191 d!543492))

(declare-fun d!543494 () Bool)

(assert (=> d!543494 (= (isDefined!3387 lt!690958) (not (isEmpty!12391 lt!690958)))))

(declare-fun bs!405103 () Bool)

(assert (= bs!405103 d!543494))

(declare-fun m!2201377 () Bool)

(assert (=> bs!405103 m!2201377))

(assert (=> b!1779191 d!543494))

(declare-fun d!543496 () Bool)

(assert (=> d!543496 (isPrefix!1751 lt!690956 (++!5335 lt!690956 (_2!11001 lt!690941)))))

(declare-fun lt!691129 () Unit!33874)

(declare-fun choose!11151 (List!19674 List!19674) Unit!33874)

(assert (=> d!543496 (= lt!691129 (choose!11151 lt!690956 (_2!11001 lt!690941)))))

(assert (=> d!543496 (= (lemmaConcatTwoListThenFirstIsPrefix!1260 lt!690956 (_2!11001 lt!690941)) lt!691129)))

(declare-fun bs!405104 () Bool)

(assert (= bs!405104 d!543496))

(assert (=> bs!405104 m!2200869))

(assert (=> bs!405104 m!2200869))

(assert (=> bs!405104 m!2200871))

(declare-fun m!2201379 () Bool)

(assert (=> bs!405104 m!2201379))

(assert (=> b!1779191 d!543496))

(declare-fun d!543498 () Bool)

(declare-fun e!1138914 () Bool)

(assert (=> d!543498 e!1138914))

(declare-fun res!802081 () Bool)

(assert (=> d!543498 (=> (not res!802081) (not e!1138914))))

(assert (=> d!543498 (= res!802081 (isDefined!3387 (getRuleFromTag!559 thiss!24550 rules!3447 (tag!3903 (rule!5579 (_1!11001 lt!690941))))))))

(declare-fun lt!691132 () Unit!33874)

(declare-fun choose!11152 (LexerInterface!3140 List!19675 List!19674 Token!6588) Unit!33874)

(assert (=> d!543498 (= lt!691132 (choose!11152 thiss!24550 rules!3447 lt!690953 (_1!11001 lt!690941)))))

(assert (=> d!543498 (rulesInvariant!2809 thiss!24550 rules!3447)))

(assert (=> d!543498 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!559 thiss!24550 rules!3447 lt!690953 (_1!11001 lt!690941)) lt!691132)))

(declare-fun b!1779650 () Bool)

(declare-fun res!802082 () Bool)

(assert (=> b!1779650 (=> (not res!802082) (not e!1138914))))

(assert (=> b!1779650 (= res!802082 (matchR!2312 (regex!3511 (get!6018 (getRuleFromTag!559 thiss!24550 rules!3447 (tag!3903 (rule!5579 (_1!11001 lt!690941)))))) (list!7969 (charsOf!2160 (_1!11001 lt!690941)))))))

(declare-fun b!1779651 () Bool)

(assert (=> b!1779651 (= e!1138914 (= (rule!5579 (_1!11001 lt!690941)) (get!6018 (getRuleFromTag!559 thiss!24550 rules!3447 (tag!3903 (rule!5579 (_1!11001 lt!690941)))))))))

(assert (= (and d!543498 res!802081) b!1779650))

(assert (= (and b!1779650 res!802082) b!1779651))

(assert (=> d!543498 m!2200847))

(assert (=> d!543498 m!2200847))

(declare-fun m!2201381 () Bool)

(assert (=> d!543498 m!2201381))

(declare-fun m!2201383 () Bool)

(assert (=> d!543498 m!2201383))

(assert (=> d!543498 m!2200765))

(assert (=> b!1779650 m!2200779))

(assert (=> b!1779650 m!2200781))

(declare-fun m!2201385 () Bool)

(assert (=> b!1779650 m!2201385))

(assert (=> b!1779650 m!2200847))

(assert (=> b!1779650 m!2200779))

(assert (=> b!1779650 m!2200781))

(assert (=> b!1779650 m!2200847))

(declare-fun m!2201387 () Bool)

(assert (=> b!1779650 m!2201387))

(assert (=> b!1779651 m!2200847))

(assert (=> b!1779651 m!2200847))

(assert (=> b!1779651 m!2201387))

(assert (=> b!1779191 d!543498))

(declare-fun b!1779654 () Bool)

(declare-fun res!802083 () Bool)

(declare-fun e!1138915 () Bool)

(assert (=> b!1779654 (=> (not res!802083) (not e!1138915))))

(declare-fun lt!691133 () List!19674)

(assert (=> b!1779654 (= res!802083 (= (size!15575 lt!691133) (+ (size!15575 lt!690934) (size!15575 suffix!1421))))))

(declare-fun d!543500 () Bool)

(assert (=> d!543500 e!1138915))

(declare-fun res!802084 () Bool)

(assert (=> d!543500 (=> (not res!802084) (not e!1138915))))

(assert (=> d!543500 (= res!802084 (= (content!2849 lt!691133) ((_ map or) (content!2849 lt!690934) (content!2849 suffix!1421))))))

(declare-fun e!1138916 () List!19674)

(assert (=> d!543500 (= lt!691133 e!1138916)))

(declare-fun c!289580 () Bool)

(assert (=> d!543500 (= c!289580 ((_ is Nil!19604) lt!690934))))

(assert (=> d!543500 (= (++!5335 lt!690934 suffix!1421) lt!691133)))

(declare-fun b!1779652 () Bool)

(assert (=> b!1779652 (= e!1138916 suffix!1421)))

(declare-fun b!1779655 () Bool)

(assert (=> b!1779655 (= e!1138915 (or (not (= suffix!1421 Nil!19604)) (= lt!691133 lt!690934)))))

(declare-fun b!1779653 () Bool)

(assert (=> b!1779653 (= e!1138916 (Cons!19604 (h!25005 lt!690934) (++!5335 (t!166353 lt!690934) suffix!1421)))))

(assert (= (and d!543500 c!289580) b!1779652))

(assert (= (and d!543500 (not c!289580)) b!1779653))

(assert (= (and d!543500 res!802084) b!1779654))

(assert (= (and b!1779654 res!802083) b!1779655))

(declare-fun m!2201389 () Bool)

(assert (=> b!1779654 m!2201389))

(assert (=> b!1779654 m!2201055))

(declare-fun m!2201391 () Bool)

(assert (=> b!1779654 m!2201391))

(declare-fun m!2201393 () Bool)

(assert (=> d!543500 m!2201393))

(assert (=> d!543500 m!2201077))

(declare-fun m!2201395 () Bool)

(assert (=> d!543500 m!2201395))

(declare-fun m!2201397 () Bool)

(assert (=> b!1779653 m!2201397))

(assert (=> b!1779191 d!543500))

(declare-fun bm!111262 () Bool)

(declare-fun call!111267 () Option!4045)

(assert (=> bm!111262 (= call!111267 (maxPrefixOneRule!1063 thiss!24550 (h!25006 rules!3447) lt!690953))))

(declare-fun b!1779656 () Bool)

(declare-fun res!802091 () Bool)

(declare-fun e!1138919 () Bool)

(assert (=> b!1779656 (=> (not res!802091) (not e!1138919))))

(declare-fun lt!691137 () Option!4045)

(assert (=> b!1779656 (= res!802091 (= (++!5335 (list!7969 (charsOf!2160 (_1!11001 (get!6017 lt!691137)))) (_2!11001 (get!6017 lt!691137))) lt!690953))))

(declare-fun b!1779657 () Bool)

(declare-fun e!1138918 () Option!4045)

(assert (=> b!1779657 (= e!1138918 call!111267)))

(declare-fun b!1779658 () Bool)

(declare-fun e!1138917 () Bool)

(assert (=> b!1779658 (= e!1138917 e!1138919)))

(declare-fun res!802090 () Bool)

(assert (=> b!1779658 (=> (not res!802090) (not e!1138919))))

(assert (=> b!1779658 (= res!802090 (isDefined!3388 lt!691137))))

(declare-fun b!1779659 () Bool)

(declare-fun lt!691136 () Option!4045)

(declare-fun lt!691138 () Option!4045)

(assert (=> b!1779659 (= e!1138918 (ite (and ((_ is None!4044) lt!691136) ((_ is None!4044) lt!691138)) None!4044 (ite ((_ is None!4044) lt!691138) lt!691136 (ite ((_ is None!4044) lt!691136) lt!691138 (ite (>= (size!15574 (_1!11001 (v!25531 lt!691136))) (size!15574 (_1!11001 (v!25531 lt!691138)))) lt!691136 lt!691138)))))))

(assert (=> b!1779659 (= lt!691136 call!111267)))

(assert (=> b!1779659 (= lt!691138 (maxPrefix!1694 thiss!24550 (t!166354 rules!3447) lt!690953))))

(declare-fun b!1779660 () Bool)

(declare-fun res!802088 () Bool)

(assert (=> b!1779660 (=> (not res!802088) (not e!1138919))))

(assert (=> b!1779660 (= res!802088 (< (size!15575 (_2!11001 (get!6017 lt!691137))) (size!15575 lt!690953)))))

(declare-fun d!543502 () Bool)

(assert (=> d!543502 e!1138917))

(declare-fun res!802087 () Bool)

(assert (=> d!543502 (=> res!802087 e!1138917)))

(assert (=> d!543502 (= res!802087 (isEmpty!12390 lt!691137))))

(assert (=> d!543502 (= lt!691137 e!1138918)))

(declare-fun c!289581 () Bool)

(assert (=> d!543502 (= c!289581 (and ((_ is Cons!19605) rules!3447) ((_ is Nil!19605) (t!166354 rules!3447))))))

(declare-fun lt!691135 () Unit!33874)

(declare-fun lt!691134 () Unit!33874)

(assert (=> d!543502 (= lt!691135 lt!691134)))

(assert (=> d!543502 (isPrefix!1751 lt!690953 lt!690953)))

(assert (=> d!543502 (= lt!691134 (lemmaIsPrefixRefl!1156 lt!690953 lt!690953))))

(assert (=> d!543502 (rulesValidInductive!1192 thiss!24550 rules!3447)))

(assert (=> d!543502 (= (maxPrefix!1694 thiss!24550 rules!3447 lt!690953) lt!691137)))

(declare-fun b!1779661 () Bool)

(declare-fun res!802089 () Bool)

(assert (=> b!1779661 (=> (not res!802089) (not e!1138919))))

(assert (=> b!1779661 (= res!802089 (matchR!2312 (regex!3511 (rule!5579 (_1!11001 (get!6017 lt!691137)))) (list!7969 (charsOf!2160 (_1!11001 (get!6017 lt!691137))))))))

(declare-fun b!1779662 () Bool)

(declare-fun res!802085 () Bool)

(assert (=> b!1779662 (=> (not res!802085) (not e!1138919))))

(assert (=> b!1779662 (= res!802085 (= (list!7969 (charsOf!2160 (_1!11001 (get!6017 lt!691137)))) (originalCharacters!4325 (_1!11001 (get!6017 lt!691137)))))))

(declare-fun b!1779663 () Bool)

(assert (=> b!1779663 (= e!1138919 (contains!3543 rules!3447 (rule!5579 (_1!11001 (get!6017 lt!691137)))))))

(declare-fun b!1779664 () Bool)

(declare-fun res!802086 () Bool)

(assert (=> b!1779664 (=> (not res!802086) (not e!1138919))))

(assert (=> b!1779664 (= res!802086 (= (value!109736 (_1!11001 (get!6017 lt!691137))) (apply!5311 (transformation!3511 (rule!5579 (_1!11001 (get!6017 lt!691137)))) (seqFromList!2480 (originalCharacters!4325 (_1!11001 (get!6017 lt!691137)))))))))

(assert (= (and d!543502 c!289581) b!1779657))

(assert (= (and d!543502 (not c!289581)) b!1779659))

(assert (= (or b!1779657 b!1779659) bm!111262))

(assert (= (and d!543502 (not res!802087)) b!1779658))

(assert (= (and b!1779658 res!802090) b!1779662))

(assert (= (and b!1779662 res!802085) b!1779660))

(assert (= (and b!1779660 res!802088) b!1779656))

(assert (= (and b!1779656 res!802091) b!1779664))

(assert (= (and b!1779664 res!802086) b!1779661))

(assert (= (and b!1779661 res!802089) b!1779663))

(declare-fun m!2201399 () Bool)

(assert (=> d!543502 m!2201399))

(declare-fun m!2201401 () Bool)

(assert (=> d!543502 m!2201401))

(declare-fun m!2201403 () Bool)

(assert (=> d!543502 m!2201403))

(assert (=> d!543502 m!2201305))

(declare-fun m!2201405 () Bool)

(assert (=> b!1779659 m!2201405))

(declare-fun m!2201407 () Bool)

(assert (=> b!1779658 m!2201407))

(declare-fun m!2201409 () Bool)

(assert (=> b!1779656 m!2201409))

(declare-fun m!2201411 () Bool)

(assert (=> b!1779656 m!2201411))

(assert (=> b!1779656 m!2201411))

(declare-fun m!2201413 () Bool)

(assert (=> b!1779656 m!2201413))

(assert (=> b!1779656 m!2201413))

(declare-fun m!2201415 () Bool)

(assert (=> b!1779656 m!2201415))

(assert (=> b!1779663 m!2201409))

(declare-fun m!2201417 () Bool)

(assert (=> b!1779663 m!2201417))

(assert (=> b!1779662 m!2201409))

(assert (=> b!1779662 m!2201411))

(assert (=> b!1779662 m!2201411))

(assert (=> b!1779662 m!2201413))

(assert (=> b!1779660 m!2201409))

(declare-fun m!2201419 () Bool)

(assert (=> b!1779660 m!2201419))

(assert (=> b!1779660 m!2201053))

(assert (=> b!1779664 m!2201409))

(declare-fun m!2201421 () Bool)

(assert (=> b!1779664 m!2201421))

(assert (=> b!1779664 m!2201421))

(declare-fun m!2201423 () Bool)

(assert (=> b!1779664 m!2201423))

(declare-fun m!2201425 () Bool)

(assert (=> bm!111262 m!2201425))

(assert (=> b!1779661 m!2201409))

(assert (=> b!1779661 m!2201411))

(assert (=> b!1779661 m!2201411))

(assert (=> b!1779661 m!2201413))

(assert (=> b!1779661 m!2201413))

(declare-fun m!2201427 () Bool)

(assert (=> b!1779661 m!2201427))

(assert (=> b!1779191 d!543502))

(declare-fun b!1779667 () Bool)

(declare-fun res!802092 () Bool)

(declare-fun e!1138920 () Bool)

(assert (=> b!1779667 (=> (not res!802092) (not e!1138920))))

(declare-fun lt!691139 () List!19674)

(assert (=> b!1779667 (= res!802092 (= (size!15575 lt!691139) (+ (size!15575 lt!690956) (size!15575 (_2!11001 lt!690941)))))))

(declare-fun d!543504 () Bool)

(assert (=> d!543504 e!1138920))

(declare-fun res!802093 () Bool)

(assert (=> d!543504 (=> (not res!802093) (not e!1138920))))

(assert (=> d!543504 (= res!802093 (= (content!2849 lt!691139) ((_ map or) (content!2849 lt!690956) (content!2849 (_2!11001 lt!690941)))))))

(declare-fun e!1138921 () List!19674)

(assert (=> d!543504 (= lt!691139 e!1138921)))

(declare-fun c!289582 () Bool)

(assert (=> d!543504 (= c!289582 ((_ is Nil!19604) lt!690956))))

(assert (=> d!543504 (= (++!5335 lt!690956 (_2!11001 lt!690941)) lt!691139)))

(declare-fun b!1779665 () Bool)

(assert (=> b!1779665 (= e!1138921 (_2!11001 lt!690941))))

(declare-fun b!1779668 () Bool)

(assert (=> b!1779668 (= e!1138920 (or (not (= (_2!11001 lt!690941) Nil!19604)) (= lt!691139 lt!690956)))))

(declare-fun b!1779666 () Bool)

(assert (=> b!1779666 (= e!1138921 (Cons!19604 (h!25005 lt!690956) (++!5335 (t!166353 lt!690956) (_2!11001 lt!690941))))))

(assert (= (and d!543504 c!289582) b!1779665))

(assert (= (and d!543504 (not c!289582)) b!1779666))

(assert (= (and d!543504 res!802093) b!1779667))

(assert (= (and b!1779667 res!802092) b!1779668))

(declare-fun m!2201429 () Bool)

(assert (=> b!1779667 m!2201429))

(assert (=> b!1779667 m!2200813))

(assert (=> b!1779667 m!2201337))

(declare-fun m!2201431 () Bool)

(assert (=> d!543504 m!2201431))

(declare-fun m!2201433 () Bool)

(assert (=> d!543504 m!2201433))

(assert (=> d!543504 m!2201341))

(declare-fun m!2201435 () Bool)

(assert (=> b!1779666 m!2201435))

(assert (=> b!1779191 d!543504))

(declare-fun d!543506 () Bool)

(declare-fun lt!691140 () BalanceConc!12986)

(assert (=> d!543506 (= (list!7969 lt!691140) (originalCharacters!4325 (_1!11001 lt!690941)))))

(assert (=> d!543506 (= lt!691140 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (value!109736 (_1!11001 lt!690941))))))

(assert (=> d!543506 (= (charsOf!2160 (_1!11001 lt!690941)) lt!691140)))

(declare-fun b_lambda!58211 () Bool)

(assert (=> (not b_lambda!58211) (not d!543506)))

(assert (=> d!543506 t!166347))

(declare-fun b_and!136287 () Bool)

(assert (= b_and!136281 (and (=> t!166347 result!130026) b_and!136287)))

(assert (=> d!543506 t!166349))

(declare-fun b_and!136289 () Bool)

(assert (= b_and!136283 (and (=> t!166349 result!130028) b_and!136289)))

(assert (=> d!543506 t!166351))

(declare-fun b_and!136291 () Bool)

(assert (= b_and!136285 (and (=> t!166351 result!130030) b_and!136291)))

(declare-fun m!2201437 () Bool)

(assert (=> d!543506 m!2201437))

(assert (=> d!543506 m!2200797))

(assert (=> b!1779191 d!543506))

(declare-fun d!543508 () Bool)

(assert (=> d!543508 (isPrefix!1751 lt!690934 (++!5335 lt!690934 suffix!1421))))

(declare-fun lt!691141 () Unit!33874)

(assert (=> d!543508 (= lt!691141 (choose!11151 lt!690934 suffix!1421))))

(assert (=> d!543508 (= (lemmaConcatTwoListThenFirstIsPrefix!1260 lt!690934 suffix!1421) lt!691141)))

(declare-fun bs!405105 () Bool)

(assert (= bs!405105 d!543508))

(assert (=> bs!405105 m!2200867))

(assert (=> bs!405105 m!2200867))

(declare-fun m!2201439 () Bool)

(assert (=> bs!405105 m!2201439))

(declare-fun m!2201441 () Bool)

(assert (=> bs!405105 m!2201441))

(assert (=> b!1779191 d!543508))

(declare-fun b!1779747 () Bool)

(declare-fun e!1138969 () Unit!33874)

(declare-fun Unit!33884 () Unit!33874)

(assert (=> b!1779747 (= e!1138969 Unit!33884)))

(declare-fun lt!691256 () List!19674)

(assert (=> b!1779747 (= lt!691256 (++!5335 lt!690934 suffix!1421))))

(declare-fun lt!691257 () Unit!33874)

(declare-fun lt!691261 () Token!6588)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!345 (LexerInterface!3140 Rule!6822 List!19675 List!19674) Unit!33874)

(assert (=> b!1779747 (= lt!691257 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!345 thiss!24550 (rule!5579 lt!691261) rules!3447 lt!691256))))

(assert (=> b!1779747 (isEmpty!12390 (maxPrefixOneRule!1063 thiss!24550 (rule!5579 lt!691261) lt!691256))))

(declare-fun lt!691263 () Unit!33874)

(assert (=> b!1779747 (= lt!691263 lt!691257)))

(declare-fun lt!691266 () List!19674)

(assert (=> b!1779747 (= lt!691266 (list!7969 (charsOf!2160 lt!691261)))))

(declare-fun lt!691269 () Unit!33874)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!341 (LexerInterface!3140 Rule!6822 List!19674 List!19674) Unit!33874)

(assert (=> b!1779747 (= lt!691269 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!341 thiss!24550 (rule!5579 lt!691261) lt!691266 (++!5335 lt!690934 suffix!1421)))))

(assert (=> b!1779747 (not (matchR!2312 (regex!3511 (rule!5579 lt!691261)) lt!691266))))

(declare-fun lt!691255 () Unit!33874)

(assert (=> b!1779747 (= lt!691255 lt!691269)))

(assert (=> b!1779747 false))

(declare-fun d!543510 () Bool)

(assert (=> d!543510 (isDefined!3388 (maxPrefix!1694 thiss!24550 rules!3447 (++!5335 lt!690934 suffix!1421)))))

(declare-fun lt!691259 () Unit!33874)

(assert (=> d!543510 (= lt!691259 e!1138969)))

(declare-fun c!289599 () Bool)

(assert (=> d!543510 (= c!289599 (isEmpty!12390 (maxPrefix!1694 thiss!24550 rules!3447 (++!5335 lt!690934 suffix!1421))))))

(declare-fun lt!691270 () Unit!33874)

(declare-fun lt!691254 () Unit!33874)

(assert (=> d!543510 (= lt!691270 lt!691254)))

(declare-fun e!1138968 () Bool)

(assert (=> d!543510 e!1138968))

(declare-fun res!802135 () Bool)

(assert (=> d!543510 (=> (not res!802135) (not e!1138968))))

(assert (=> d!543510 (= res!802135 (isDefined!3387 (getRuleFromTag!559 thiss!24550 rules!3447 (tag!3903 (rule!5579 lt!691261)))))))

(assert (=> d!543510 (= lt!691254 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!559 thiss!24550 rules!3447 lt!690934 lt!691261))))

(declare-fun lt!691262 () Unit!33874)

(declare-fun lt!691264 () Unit!33874)

(assert (=> d!543510 (= lt!691262 lt!691264)))

(declare-fun lt!691258 () List!19674)

(assert (=> d!543510 (isPrefix!1751 lt!691258 (++!5335 lt!690934 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!337 (List!19674 List!19674 List!19674) Unit!33874)

(assert (=> d!543510 (= lt!691264 (lemmaPrefixStaysPrefixWhenAddingToSuffix!337 lt!691258 lt!690934 suffix!1421))))

(assert (=> d!543510 (= lt!691258 (list!7969 (charsOf!2160 lt!691261)))))

(declare-fun lt!691260 () Unit!33874)

(declare-fun lt!691267 () Unit!33874)

(assert (=> d!543510 (= lt!691260 lt!691267)))

(declare-fun lt!691265 () List!19674)

(declare-fun lt!691268 () List!19674)

(assert (=> d!543510 (isPrefix!1751 lt!691265 (++!5335 lt!691265 lt!691268))))

(assert (=> d!543510 (= lt!691267 (lemmaConcatTwoListThenFirstIsPrefix!1260 lt!691265 lt!691268))))

(assert (=> d!543510 (= lt!691268 (_2!11001 (get!6017 (maxPrefix!1694 thiss!24550 rules!3447 lt!690934))))))

(assert (=> d!543510 (= lt!691265 (list!7969 (charsOf!2160 lt!691261)))))

(declare-datatypes ((List!19679 0))(
  ( (Nil!19609) (Cons!19609 (h!25010 Token!6588) (t!166418 List!19679)) )
))
(declare-fun head!4156 (List!19679) Token!6588)

(declare-datatypes ((IArray!13051 0))(
  ( (IArray!13052 (innerList!6583 List!19679)) )
))
(declare-datatypes ((Conc!6523 0))(
  ( (Node!6523 (left!15712 Conc!6523) (right!16042 Conc!6523) (csize!13276 Int) (cheight!6734 Int)) (Leaf!9499 (xs!9399 IArray!13051) (csize!13277 Int)) (Empty!6523) )
))
(declare-datatypes ((BalanceConc!12990 0))(
  ( (BalanceConc!12991 (c!289641 Conc!6523)) )
))
(declare-fun list!7973 (BalanceConc!12990) List!19679)

(declare-datatypes ((tuple2!19204 0))(
  ( (tuple2!19205 (_1!11004 BalanceConc!12990) (_2!11004 BalanceConc!12986)) )
))
(declare-fun lex!1476 (LexerInterface!3140 List!19675 BalanceConc!12986) tuple2!19204)

(assert (=> d!543510 (= lt!691261 (head!4156 (list!7973 (_1!11004 (lex!1476 thiss!24550 rules!3447 (seqFromList!2480 lt!690934))))))))

(assert (=> d!543510 (not (isEmpty!12387 rules!3447))))

(assert (=> d!543510 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!662 thiss!24550 rules!3447 lt!690934 suffix!1421) lt!691259)))

(declare-fun b!1779748 () Bool)

(declare-fun Unit!33885 () Unit!33874)

(assert (=> b!1779748 (= e!1138969 Unit!33885)))

(declare-fun b!1779746 () Bool)

(assert (=> b!1779746 (= e!1138968 (= (rule!5579 lt!691261) (get!6018 (getRuleFromTag!559 thiss!24550 rules!3447 (tag!3903 (rule!5579 lt!691261))))))))

(declare-fun b!1779745 () Bool)

(declare-fun res!802136 () Bool)

(assert (=> b!1779745 (=> (not res!802136) (not e!1138968))))

(assert (=> b!1779745 (= res!802136 (matchR!2312 (regex!3511 (get!6018 (getRuleFromTag!559 thiss!24550 rules!3447 (tag!3903 (rule!5579 lt!691261))))) (list!7969 (charsOf!2160 lt!691261))))))

(assert (= (and d!543510 res!802135) b!1779745))

(assert (= (and b!1779745 res!802136) b!1779746))

(assert (= (and d!543510 c!289599) b!1779747))

(assert (= (and d!543510 (not c!289599)) b!1779748))

(declare-fun m!2201555 () Bool)

(assert (=> b!1779747 m!2201555))

(assert (=> b!1779747 m!2201555))

(declare-fun m!2201557 () Bool)

(assert (=> b!1779747 m!2201557))

(declare-fun m!2201559 () Bool)

(assert (=> b!1779747 m!2201559))

(declare-fun m!2201561 () Bool)

(assert (=> b!1779747 m!2201561))

(assert (=> b!1779747 m!2200867))

(assert (=> b!1779747 m!2201559))

(declare-fun m!2201563 () Bool)

(assert (=> b!1779747 m!2201563))

(assert (=> b!1779747 m!2200867))

(declare-fun m!2201565 () Bool)

(assert (=> b!1779747 m!2201565))

(declare-fun m!2201567 () Bool)

(assert (=> b!1779747 m!2201567))

(assert (=> d!543510 m!2201555))

(declare-fun m!2201569 () Bool)

(assert (=> d!543510 m!2201569))

(assert (=> d!543510 m!2201555))

(assert (=> d!543510 m!2201557))

(declare-fun m!2201571 () Bool)

(assert (=> d!543510 m!2201571))

(assert (=> d!543510 m!2200867))

(declare-fun m!2201573 () Bool)

(assert (=> d!543510 m!2201573))

(assert (=> d!543510 m!2200891))

(assert (=> d!543510 m!2201569))

(declare-fun m!2201577 () Bool)

(assert (=> d!543510 m!2201577))

(declare-fun m!2201579 () Bool)

(assert (=> d!543510 m!2201579))

(declare-fun m!2201581 () Bool)

(assert (=> d!543510 m!2201581))

(assert (=> d!543510 m!2200903))

(assert (=> d!543510 m!2201573))

(declare-fun m!2201583 () Bool)

(assert (=> d!543510 m!2201583))

(declare-fun m!2201585 () Bool)

(assert (=> d!543510 m!2201585))

(declare-fun m!2201587 () Bool)

(assert (=> d!543510 m!2201587))

(declare-fun m!2201589 () Bool)

(assert (=> d!543510 m!2201589))

(assert (=> d!543510 m!2200867))

(declare-fun m!2201591 () Bool)

(assert (=> d!543510 m!2201591))

(assert (=> d!543510 m!2201585))

(assert (=> d!543510 m!2201571))

(declare-fun m!2201593 () Bool)

(assert (=> d!543510 m!2201593))

(assert (=> d!543510 m!2200867))

(declare-fun m!2201597 () Bool)

(assert (=> d!543510 m!2201597))

(assert (=> d!543510 m!2200903))

(declare-fun m!2201601 () Bool)

(assert (=> d!543510 m!2201601))

(declare-fun m!2201603 () Bool)

(assert (=> d!543510 m!2201603))

(assert (=> d!543510 m!2201573))

(declare-fun m!2201607 () Bool)

(assert (=> d!543510 m!2201607))

(assert (=> d!543510 m!2201579))

(assert (=> b!1779746 m!2201571))

(assert (=> b!1779746 m!2201571))

(declare-fun m!2201609 () Bool)

(assert (=> b!1779746 m!2201609))

(assert (=> b!1779745 m!2201555))

(assert (=> b!1779745 m!2201555))

(assert (=> b!1779745 m!2201557))

(assert (=> b!1779745 m!2201571))

(assert (=> b!1779745 m!2201557))

(declare-fun m!2201611 () Bool)

(assert (=> b!1779745 m!2201611))

(assert (=> b!1779745 m!2201571))

(assert (=> b!1779745 m!2201609))

(assert (=> b!1779191 d!543510))

(declare-fun d!543548 () Bool)

(declare-fun c!289602 () Bool)

(assert (=> d!543548 (= c!289602 (isEmpty!12386 lt!690969))))

(declare-fun e!1138976 () Bool)

(assert (=> d!543548 (= (prefixMatch!722 lt!690975 lt!690969) e!1138976)))

(declare-fun b!1779758 () Bool)

(declare-fun lostCause!597 (Regex!4839) Bool)

(assert (=> b!1779758 (= e!1138976 (not (lostCause!597 lt!690975)))))

(declare-fun b!1779759 () Bool)

(assert (=> b!1779759 (= e!1138976 (prefixMatch!722 (derivativeStep!1255 lt!690975 (head!4154 lt!690969)) (tail!2663 lt!690969)))))

(assert (= (and d!543548 c!289602) b!1779758))

(assert (= (and d!543548 (not c!289602)) b!1779759))

(declare-fun m!2201623 () Bool)

(assert (=> d!543548 m!2201623))

(declare-fun m!2201625 () Bool)

(assert (=> b!1779758 m!2201625))

(assert (=> b!1779759 m!2201111))

(assert (=> b!1779759 m!2201111))

(declare-fun m!2201627 () Bool)

(assert (=> b!1779759 m!2201627))

(assert (=> b!1779759 m!2201107))

(assert (=> b!1779759 m!2201627))

(assert (=> b!1779759 m!2201107))

(declare-fun m!2201629 () Bool)

(assert (=> b!1779759 m!2201629))

(assert (=> b!1779192 d!543548))

(declare-fun b!1779762 () Bool)

(declare-fun res!802137 () Bool)

(declare-fun e!1138977 () Bool)

(assert (=> b!1779762 (=> (not res!802137) (not e!1138977))))

(declare-fun lt!691274 () List!19674)

(assert (=> b!1779762 (= res!802137 (= (size!15575 lt!691274) (+ (size!15575 lt!690934) (size!15575 (Cons!19604 (head!4154 suffix!1421) Nil!19604)))))))

(declare-fun d!543556 () Bool)

(assert (=> d!543556 e!1138977))

(declare-fun res!802138 () Bool)

(assert (=> d!543556 (=> (not res!802138) (not e!1138977))))

(assert (=> d!543556 (= res!802138 (= (content!2849 lt!691274) ((_ map or) (content!2849 lt!690934) (content!2849 (Cons!19604 (head!4154 suffix!1421) Nil!19604)))))))

(declare-fun e!1138978 () List!19674)

(assert (=> d!543556 (= lt!691274 e!1138978)))

(declare-fun c!289603 () Bool)

(assert (=> d!543556 (= c!289603 ((_ is Nil!19604) lt!690934))))

(assert (=> d!543556 (= (++!5335 lt!690934 (Cons!19604 (head!4154 suffix!1421) Nil!19604)) lt!691274)))

(declare-fun b!1779760 () Bool)

(assert (=> b!1779760 (= e!1138978 (Cons!19604 (head!4154 suffix!1421) Nil!19604))))

(declare-fun b!1779763 () Bool)

(assert (=> b!1779763 (= e!1138977 (or (not (= (Cons!19604 (head!4154 suffix!1421) Nil!19604) Nil!19604)) (= lt!691274 lt!690934)))))

(declare-fun b!1779761 () Bool)

(assert (=> b!1779761 (= e!1138978 (Cons!19604 (h!25005 lt!690934) (++!5335 (t!166353 lt!690934) (Cons!19604 (head!4154 suffix!1421) Nil!19604))))))

(assert (= (and d!543556 c!289603) b!1779760))

(assert (= (and d!543556 (not c!289603)) b!1779761))

(assert (= (and d!543556 res!802138) b!1779762))

(assert (= (and b!1779762 res!802137) b!1779763))

(declare-fun m!2201631 () Bool)

(assert (=> b!1779762 m!2201631))

(assert (=> b!1779762 m!2201055))

(declare-fun m!2201633 () Bool)

(assert (=> b!1779762 m!2201633))

(declare-fun m!2201635 () Bool)

(assert (=> d!543556 m!2201635))

(assert (=> d!543556 m!2201077))

(declare-fun m!2201637 () Bool)

(assert (=> d!543556 m!2201637))

(declare-fun m!2201639 () Bool)

(assert (=> b!1779761 m!2201639))

(assert (=> b!1779192 d!543556))

(declare-fun d!543558 () Bool)

(assert (=> d!543558 (= (head!4154 suffix!1421) (h!25005 suffix!1421))))

(assert (=> b!1779192 d!543558))

(declare-fun d!543560 () Bool)

(declare-fun lt!691280 () Unit!33874)

(declare-fun lemma!410 (List!19675 LexerInterface!3140 List!19675) Unit!33874)

(assert (=> d!543560 (= lt!691280 (lemma!410 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70638 () Int)

(declare-datatypes ((List!19680 0))(
  ( (Nil!19610) (Cons!19610 (h!25011 Regex!4839) (t!166419 List!19680)) )
))
(declare-fun generalisedUnion!418 (List!19680) Regex!4839)

(declare-fun map!4045 (List!19675 Int) List!19680)

(assert (=> d!543560 (= (rulesRegex!867 thiss!24550 rules!3447) (generalisedUnion!418 (map!4045 rules!3447 lambda!70638)))))

(declare-fun bs!405114 () Bool)

(assert (= bs!405114 d!543560))

(declare-fun m!2201645 () Bool)

(assert (=> bs!405114 m!2201645))

(declare-fun m!2201647 () Bool)

(assert (=> bs!405114 m!2201647))

(assert (=> bs!405114 m!2201647))

(declare-fun m!2201649 () Bool)

(assert (=> bs!405114 m!2201649))

(assert (=> b!1779192 d!543560))

(declare-fun d!543566 () Bool)

(declare-fun lt!691283 () Int)

(assert (=> d!543566 (>= lt!691283 0)))

(declare-fun e!1138981 () Int)

(assert (=> d!543566 (= lt!691283 e!1138981)))

(declare-fun c!289606 () Bool)

(assert (=> d!543566 (= c!289606 ((_ is Nil!19604) lt!690956))))

(assert (=> d!543566 (= (size!15575 lt!690956) lt!691283)))

(declare-fun b!1779768 () Bool)

(assert (=> b!1779768 (= e!1138981 0)))

(declare-fun b!1779769 () Bool)

(assert (=> b!1779769 (= e!1138981 (+ 1 (size!15575 (t!166353 lt!690956))))))

(assert (= (and d!543566 c!289606) b!1779768))

(assert (= (and d!543566 (not c!289606)) b!1779769))

(declare-fun m!2201651 () Bool)

(assert (=> b!1779769 m!2201651))

(assert (=> b!1779194 d!543566))

(declare-fun d!543568 () Bool)

(assert (=> d!543568 (= (seqFromList!2480 lt!690956) (fromListB!1136 lt!690956))))

(declare-fun bs!405115 () Bool)

(assert (= bs!405115 d!543568))

(declare-fun m!2201653 () Bool)

(assert (=> bs!405115 m!2201653))

(assert (=> b!1779194 d!543568))

(declare-fun d!543570 () Bool)

(declare-fun lt!691284 () List!19674)

(assert (=> d!543570 (= (++!5335 lt!690956 lt!691284) lt!690953)))

(declare-fun e!1138982 () List!19674)

(assert (=> d!543570 (= lt!691284 e!1138982)))

(declare-fun c!289607 () Bool)

(assert (=> d!543570 (= c!289607 ((_ is Cons!19604) lt!690956))))

(assert (=> d!543570 (>= (size!15575 lt!690953) (size!15575 lt!690956))))

(assert (=> d!543570 (= (getSuffix!918 lt!690953 lt!690956) lt!691284)))

(declare-fun b!1779770 () Bool)

(assert (=> b!1779770 (= e!1138982 (getSuffix!918 (tail!2663 lt!690953) (t!166353 lt!690956)))))

(declare-fun b!1779771 () Bool)

(assert (=> b!1779771 (= e!1138982 lt!690953)))

(assert (= (and d!543570 c!289607) b!1779770))

(assert (= (and d!543570 (not c!289607)) b!1779771))

(declare-fun m!2201655 () Bool)

(assert (=> d!543570 m!2201655))

(assert (=> d!543570 m!2201053))

(assert (=> d!543570 m!2200813))

(assert (=> b!1779770 m!2201057))

(assert (=> b!1779770 m!2201057))

(declare-fun m!2201657 () Bool)

(assert (=> b!1779770 m!2201657))

(assert (=> b!1779194 d!543570))

(declare-fun d!543572 () Bool)

(assert (=> d!543572 (= (_2!11001 lt!690941) lt!690954)))

(declare-fun lt!691287 () Unit!33874)

(assert (=> d!543572 (= lt!691287 (choose!11148 lt!690956 (_2!11001 lt!690941) lt!690956 lt!690954 lt!690953))))

(assert (=> d!543572 (isPrefix!1751 lt!690956 lt!690953)))

(assert (=> d!543572 (= (lemmaSamePrefixThenSameSuffix!862 lt!690956 (_2!11001 lt!690941) lt!690956 lt!690954 lt!690953) lt!691287)))

(declare-fun bs!405116 () Bool)

(assert (= bs!405116 d!543572))

(declare-fun m!2201659 () Bool)

(assert (=> bs!405116 m!2201659))

(assert (=> bs!405116 m!2200855))

(assert (=> b!1779194 d!543572))

(declare-fun b!1779921 () Bool)

(declare-fun e!1139066 () Bool)

(declare-datatypes ((tuple2!19206 0))(
  ( (tuple2!19207 (_1!11005 List!19674) (_2!11005 List!19674)) )
))
(declare-fun findLongestMatchInner!465 (Regex!4839 List!19674 Int List!19674 List!19674 Int) tuple2!19206)

(assert (=> b!1779921 (= e!1139066 (matchR!2312 (regex!3511 (rule!5579 (_1!11001 lt!690941))) (_1!11005 (findLongestMatchInner!465 (regex!3511 (rule!5579 (_1!11001 lt!690941))) Nil!19604 (size!15575 Nil!19604) lt!690953 lt!690953 (size!15575 lt!690953)))))))

(declare-fun b!1779923 () Bool)

(declare-fun e!1139065 () Option!4045)

(assert (=> b!1779923 (= e!1139065 None!4044)))

(declare-fun b!1779924 () Bool)

(declare-fun res!802197 () Bool)

(declare-fun e!1139067 () Bool)

(assert (=> b!1779924 (=> (not res!802197) (not e!1139067))))

(declare-fun lt!691320 () Option!4045)

(assert (=> b!1779924 (= res!802197 (< (size!15575 (_2!11001 (get!6017 lt!691320))) (size!15575 lt!690953)))))

(declare-fun b!1779925 () Bool)

(declare-fun lt!691319 () tuple2!19206)

(assert (=> b!1779925 (= e!1139065 (Some!4044 (tuple2!19199 (Token!6589 (apply!5311 (transformation!3511 (rule!5579 (_1!11001 lt!690941))) (seqFromList!2480 (_1!11005 lt!691319))) (rule!5579 (_1!11001 lt!690941)) (size!15576 (seqFromList!2480 (_1!11005 lt!691319))) (_1!11005 lt!691319)) (_2!11005 lt!691319))))))

(declare-fun lt!691316 () Unit!33874)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!449 (Regex!4839 List!19674) Unit!33874)

(assert (=> b!1779925 (= lt!691316 (longestMatchIsAcceptedByMatchOrIsEmpty!449 (regex!3511 (rule!5579 (_1!11001 lt!690941))) lt!690953))))

(declare-fun res!802200 () Bool)

(assert (=> b!1779925 (= res!802200 (isEmpty!12386 (_1!11005 (findLongestMatchInner!465 (regex!3511 (rule!5579 (_1!11001 lt!690941))) Nil!19604 (size!15575 Nil!19604) lt!690953 lt!690953 (size!15575 lt!690953)))))))

(assert (=> b!1779925 (=> res!802200 e!1139066)))

(assert (=> b!1779925 e!1139066))

(declare-fun lt!691317 () Unit!33874)

(assert (=> b!1779925 (= lt!691317 lt!691316)))

(declare-fun lt!691318 () Unit!33874)

(assert (=> b!1779925 (= lt!691318 (lemmaSemiInverse!649 (transformation!3511 (rule!5579 (_1!11001 lt!690941))) (seqFromList!2480 (_1!11005 lt!691319))))))

(declare-fun b!1779926 () Bool)

(declare-fun res!802199 () Bool)

(assert (=> b!1779926 (=> (not res!802199) (not e!1139067))))

(assert (=> b!1779926 (= res!802199 (= (value!109736 (_1!11001 (get!6017 lt!691320))) (apply!5311 (transformation!3511 (rule!5579 (_1!11001 (get!6017 lt!691320)))) (seqFromList!2480 (originalCharacters!4325 (_1!11001 (get!6017 lt!691320)))))))))

(declare-fun b!1779927 () Bool)

(declare-fun e!1139064 () Bool)

(assert (=> b!1779927 (= e!1139064 e!1139067)))

(declare-fun res!802196 () Bool)

(assert (=> b!1779927 (=> (not res!802196) (not e!1139067))))

(assert (=> b!1779927 (= res!802196 (matchR!2312 (regex!3511 (rule!5579 (_1!11001 lt!690941))) (list!7969 (charsOf!2160 (_1!11001 (get!6017 lt!691320))))))))

(declare-fun b!1779928 () Bool)

(declare-fun res!802198 () Bool)

(assert (=> b!1779928 (=> (not res!802198) (not e!1139067))))

(assert (=> b!1779928 (= res!802198 (= (++!5335 (list!7969 (charsOf!2160 (_1!11001 (get!6017 lt!691320)))) (_2!11001 (get!6017 lt!691320))) lt!690953))))

(declare-fun b!1779929 () Bool)

(declare-fun res!802201 () Bool)

(assert (=> b!1779929 (=> (not res!802201) (not e!1139067))))

(assert (=> b!1779929 (= res!802201 (= (rule!5579 (_1!11001 (get!6017 lt!691320))) (rule!5579 (_1!11001 lt!690941))))))

(declare-fun d!543574 () Bool)

(assert (=> d!543574 e!1139064))

(declare-fun res!802195 () Bool)

(assert (=> d!543574 (=> res!802195 e!1139064)))

(assert (=> d!543574 (= res!802195 (isEmpty!12390 lt!691320))))

(assert (=> d!543574 (= lt!691320 e!1139065)))

(declare-fun c!289628 () Bool)

(assert (=> d!543574 (= c!289628 (isEmpty!12386 (_1!11005 lt!691319)))))

(declare-fun findLongestMatch!392 (Regex!4839 List!19674) tuple2!19206)

(assert (=> d!543574 (= lt!691319 (findLongestMatch!392 (regex!3511 (rule!5579 (_1!11001 lt!690941))) lt!690953))))

(assert (=> d!543574 (ruleValid!1009 thiss!24550 (rule!5579 (_1!11001 lt!690941)))))

(assert (=> d!543574 (= (maxPrefixOneRule!1063 thiss!24550 (rule!5579 (_1!11001 lt!690941)) lt!690953) lt!691320)))

(declare-fun b!1779922 () Bool)

(assert (=> b!1779922 (= e!1139067 (= (size!15574 (_1!11001 (get!6017 lt!691320))) (size!15575 (originalCharacters!4325 (_1!11001 (get!6017 lt!691320))))))))

(assert (= (and d!543574 c!289628) b!1779923))

(assert (= (and d!543574 (not c!289628)) b!1779925))

(assert (= (and b!1779925 (not res!802200)) b!1779921))

(assert (= (and d!543574 (not res!802195)) b!1779927))

(assert (= (and b!1779927 res!802196) b!1779928))

(assert (= (and b!1779928 res!802198) b!1779924))

(assert (= (and b!1779924 res!802197) b!1779929))

(assert (= (and b!1779929 res!802201) b!1779926))

(assert (= (and b!1779926 res!802199) b!1779922))

(declare-fun m!2201799 () Bool)

(assert (=> b!1779924 m!2201799))

(declare-fun m!2201801 () Bool)

(assert (=> b!1779924 m!2201801))

(assert (=> b!1779924 m!2201053))

(assert (=> b!1779928 m!2201799))

(declare-fun m!2201803 () Bool)

(assert (=> b!1779928 m!2201803))

(assert (=> b!1779928 m!2201803))

(declare-fun m!2201805 () Bool)

(assert (=> b!1779928 m!2201805))

(assert (=> b!1779928 m!2201805))

(declare-fun m!2201807 () Bool)

(assert (=> b!1779928 m!2201807))

(declare-fun m!2201809 () Bool)

(assert (=> d!543574 m!2201809))

(declare-fun m!2201811 () Bool)

(assert (=> d!543574 m!2201811))

(declare-fun m!2201813 () Bool)

(assert (=> d!543574 m!2201813))

(declare-fun m!2201815 () Bool)

(assert (=> d!543574 m!2201815))

(assert (=> b!1779929 m!2201799))

(assert (=> b!1779927 m!2201799))

(assert (=> b!1779927 m!2201803))

(assert (=> b!1779927 m!2201803))

(assert (=> b!1779927 m!2201805))

(assert (=> b!1779927 m!2201805))

(declare-fun m!2201817 () Bool)

(assert (=> b!1779927 m!2201817))

(assert (=> b!1779926 m!2201799))

(declare-fun m!2201819 () Bool)

(assert (=> b!1779926 m!2201819))

(assert (=> b!1779926 m!2201819))

(declare-fun m!2201821 () Bool)

(assert (=> b!1779926 m!2201821))

(assert (=> b!1779922 m!2201799))

(declare-fun m!2201823 () Bool)

(assert (=> b!1779922 m!2201823))

(declare-fun m!2201825 () Bool)

(assert (=> b!1779921 m!2201825))

(assert (=> b!1779921 m!2201053))

(assert (=> b!1779921 m!2201825))

(assert (=> b!1779921 m!2201053))

(declare-fun m!2201827 () Bool)

(assert (=> b!1779921 m!2201827))

(declare-fun m!2201829 () Bool)

(assert (=> b!1779921 m!2201829))

(declare-fun m!2201831 () Bool)

(assert (=> b!1779925 m!2201831))

(declare-fun m!2201833 () Bool)

(assert (=> b!1779925 m!2201833))

(assert (=> b!1779925 m!2201831))

(declare-fun m!2201835 () Bool)

(assert (=> b!1779925 m!2201835))

(declare-fun m!2201837 () Bool)

(assert (=> b!1779925 m!2201837))

(assert (=> b!1779925 m!2201831))

(declare-fun m!2201839 () Bool)

(assert (=> b!1779925 m!2201839))

(assert (=> b!1779925 m!2201825))

(assert (=> b!1779925 m!2201053))

(assert (=> b!1779925 m!2201827))

(assert (=> b!1779925 m!2201831))

(declare-fun m!2201841 () Bool)

(assert (=> b!1779925 m!2201841))

(assert (=> b!1779925 m!2201053))

(assert (=> b!1779925 m!2201825))

(assert (=> b!1779194 d!543574))

(declare-fun d!543626 () Bool)

(assert (=> d!543626 (= (maxPrefixOneRule!1063 thiss!24550 (rule!5579 (_1!11001 lt!690941)) lt!690953) (Some!4044 (tuple2!19199 (Token!6589 (apply!5311 (transformation!3511 (rule!5579 (_1!11001 lt!690941))) (seqFromList!2480 lt!690956)) (rule!5579 (_1!11001 lt!690941)) (size!15575 lt!690956) lt!690956) (_2!11001 lt!690941))))))

(declare-fun lt!691323 () Unit!33874)

(declare-fun choose!11158 (LexerInterface!3140 List!19675 List!19674 List!19674 List!19674 Rule!6822) Unit!33874)

(assert (=> d!543626 (= lt!691323 (choose!11158 thiss!24550 rules!3447 lt!690956 lt!690953 (_2!11001 lt!690941) (rule!5579 (_1!11001 lt!690941))))))

(assert (=> d!543626 (not (isEmpty!12387 rules!3447))))

(assert (=> d!543626 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!441 thiss!24550 rules!3447 lt!690956 lt!690953 (_2!11001 lt!690941) (rule!5579 (_1!11001 lt!690941))) lt!691323)))

(declare-fun bs!405126 () Bool)

(assert (= bs!405126 d!543626))

(assert (=> bs!405126 m!2200813))

(assert (=> bs!405126 m!2200815))

(assert (=> bs!405126 m!2200817))

(declare-fun m!2201843 () Bool)

(assert (=> bs!405126 m!2201843))

(assert (=> bs!405126 m!2200821))

(assert (=> bs!405126 m!2200815))

(assert (=> bs!405126 m!2200891))

(assert (=> b!1779194 d!543626))

(declare-fun d!543628 () Bool)

(assert (=> d!543628 (= (apply!5311 (transformation!3511 (rule!5579 (_1!11001 lt!690941))) (seqFromList!2480 lt!690956)) (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (seqFromList!2480 lt!690956)))))

(declare-fun b_lambda!58237 () Bool)

(assert (=> (not b_lambda!58237) (not d!543628)))

(declare-fun t!166398 () Bool)

(declare-fun tb!108131 () Bool)

(assert (=> (and b!1779193 (= (toValue!5038 (transformation!3511 (h!25006 rules!3447))) (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) t!166398) tb!108131))

(declare-fun result!130082 () Bool)

(assert (=> tb!108131 (= result!130082 (inv!21 (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (seqFromList!2480 lt!690956))))))

(declare-fun m!2201845 () Bool)

(assert (=> tb!108131 m!2201845))

(assert (=> d!543628 t!166398))

(declare-fun b_and!136339 () Bool)

(assert (= b_and!136275 (and (=> t!166398 result!130082) b_and!136339)))

(declare-fun tb!108133 () Bool)

(declare-fun t!166400 () Bool)

(assert (=> (and b!1779203 (= (toValue!5038 (transformation!3511 (rule!5579 token!523))) (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) t!166400) tb!108133))

(declare-fun result!130084 () Bool)

(assert (= result!130084 result!130082))

(assert (=> d!543628 t!166400))

(declare-fun b_and!136341 () Bool)

(assert (= b_and!136277 (and (=> t!166400 result!130084) b_and!136341)))

(declare-fun tb!108135 () Bool)

(declare-fun t!166402 () Bool)

(assert (=> (and b!1779200 (= (toValue!5038 (transformation!3511 rule!422)) (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) t!166402) tb!108135))

(declare-fun result!130086 () Bool)

(assert (= result!130086 result!130082))

(assert (=> d!543628 t!166402))

(declare-fun b_and!136343 () Bool)

(assert (= b_and!136279 (and (=> t!166402 result!130086) b_and!136343)))

(assert (=> d!543628 m!2200815))

(declare-fun m!2201847 () Bool)

(assert (=> d!543628 m!2201847))

(assert (=> b!1779194 d!543628))

(declare-fun b!1779930 () Bool)

(declare-fun e!1139070 () Bool)

(declare-fun lt!691324 () Bool)

(assert (=> b!1779930 (= e!1139070 (not lt!691324))))

(declare-fun bm!111267 () Bool)

(declare-fun call!111272 () Bool)

(assert (=> bm!111267 (= call!111272 (isEmpty!12386 (list!7969 (charsOf!2160 (_1!11001 lt!690941)))))))

(declare-fun d!543630 () Bool)

(declare-fun e!1139074 () Bool)

(assert (=> d!543630 e!1139074))

(declare-fun c!289630 () Bool)

(assert (=> d!543630 (= c!289630 ((_ is EmptyExpr!4839) (regex!3511 lt!690964)))))

(declare-fun e!1139069 () Bool)

(assert (=> d!543630 (= lt!691324 e!1139069)))

(declare-fun c!289629 () Bool)

(assert (=> d!543630 (= c!289629 (isEmpty!12386 (list!7969 (charsOf!2160 (_1!11001 lt!690941)))))))

(assert (=> d!543630 (validRegex!1960 (regex!3511 lt!690964))))

(assert (=> d!543630 (= (matchR!2312 (regex!3511 lt!690964) (list!7969 (charsOf!2160 (_1!11001 lt!690941)))) lt!691324)))

(declare-fun b!1779931 () Bool)

(assert (=> b!1779931 (= e!1139069 (nullable!1486 (regex!3511 lt!690964)))))

(declare-fun b!1779932 () Bool)

(declare-fun e!1139073 () Bool)

(assert (=> b!1779932 (= e!1139073 (= (head!4154 (list!7969 (charsOf!2160 (_1!11001 lt!690941)))) (c!289504 (regex!3511 lt!690964))))))

(declare-fun b!1779933 () Bool)

(assert (=> b!1779933 (= e!1139069 (matchR!2312 (derivativeStep!1255 (regex!3511 lt!690964) (head!4154 (list!7969 (charsOf!2160 (_1!11001 lt!690941))))) (tail!2663 (list!7969 (charsOf!2160 (_1!11001 lt!690941))))))))

(declare-fun b!1779934 () Bool)

(declare-fun res!802209 () Bool)

(assert (=> b!1779934 (=> (not res!802209) (not e!1139073))))

(assert (=> b!1779934 (= res!802209 (isEmpty!12386 (tail!2663 (list!7969 (charsOf!2160 (_1!11001 lt!690941))))))))

(declare-fun b!1779935 () Bool)

(declare-fun e!1139075 () Bool)

(declare-fun e!1139071 () Bool)

(assert (=> b!1779935 (= e!1139075 e!1139071)))

(declare-fun res!802202 () Bool)

(assert (=> b!1779935 (=> (not res!802202) (not e!1139071))))

(assert (=> b!1779935 (= res!802202 (not lt!691324))))

(declare-fun b!1779936 () Bool)

(declare-fun res!802206 () Bool)

(assert (=> b!1779936 (=> res!802206 e!1139075)))

(assert (=> b!1779936 (= res!802206 e!1139073)))

(declare-fun res!802204 () Bool)

(assert (=> b!1779936 (=> (not res!802204) (not e!1139073))))

(assert (=> b!1779936 (= res!802204 lt!691324)))

(declare-fun b!1779937 () Bool)

(declare-fun res!802205 () Bool)

(declare-fun e!1139072 () Bool)

(assert (=> b!1779937 (=> res!802205 e!1139072)))

(assert (=> b!1779937 (= res!802205 (not (isEmpty!12386 (tail!2663 (list!7969 (charsOf!2160 (_1!11001 lt!690941)))))))))

(declare-fun b!1779938 () Bool)

(assert (=> b!1779938 (= e!1139071 e!1139072)))

(declare-fun res!802208 () Bool)

(assert (=> b!1779938 (=> res!802208 e!1139072)))

(assert (=> b!1779938 (= res!802208 call!111272)))

(declare-fun b!1779939 () Bool)

(assert (=> b!1779939 (= e!1139072 (not (= (head!4154 (list!7969 (charsOf!2160 (_1!11001 lt!690941)))) (c!289504 (regex!3511 lt!690964)))))))

(declare-fun b!1779940 () Bool)

(declare-fun res!802207 () Bool)

(assert (=> b!1779940 (=> (not res!802207) (not e!1139073))))

(assert (=> b!1779940 (= res!802207 (not call!111272))))

(declare-fun b!1779941 () Bool)

(assert (=> b!1779941 (= e!1139074 (= lt!691324 call!111272))))

(declare-fun b!1779942 () Bool)

(assert (=> b!1779942 (= e!1139074 e!1139070)))

(declare-fun c!289631 () Bool)

(assert (=> b!1779942 (= c!289631 ((_ is EmptyLang!4839) (regex!3511 lt!690964)))))

(declare-fun b!1779943 () Bool)

(declare-fun res!802203 () Bool)

(assert (=> b!1779943 (=> res!802203 e!1139075)))

(assert (=> b!1779943 (= res!802203 (not ((_ is ElementMatch!4839) (regex!3511 lt!690964))))))

(assert (=> b!1779943 (= e!1139070 e!1139075)))

(assert (= (and d!543630 c!289629) b!1779931))

(assert (= (and d!543630 (not c!289629)) b!1779933))

(assert (= (and d!543630 c!289630) b!1779941))

(assert (= (and d!543630 (not c!289630)) b!1779942))

(assert (= (and b!1779942 c!289631) b!1779930))

(assert (= (and b!1779942 (not c!289631)) b!1779943))

(assert (= (and b!1779943 (not res!802203)) b!1779936))

(assert (= (and b!1779936 res!802204) b!1779940))

(assert (= (and b!1779940 res!802207) b!1779934))

(assert (= (and b!1779934 res!802209) b!1779932))

(assert (= (and b!1779936 (not res!802206)) b!1779935))

(assert (= (and b!1779935 res!802202) b!1779938))

(assert (= (and b!1779938 (not res!802208)) b!1779937))

(assert (= (and b!1779937 (not res!802205)) b!1779939))

(assert (= (or b!1779941 b!1779938 b!1779940) bm!111267))

(assert (=> b!1779939 m!2200781))

(declare-fun m!2201849 () Bool)

(assert (=> b!1779939 m!2201849))

(assert (=> b!1779934 m!2200781))

(declare-fun m!2201851 () Bool)

(assert (=> b!1779934 m!2201851))

(assert (=> b!1779934 m!2201851))

(declare-fun m!2201853 () Bool)

(assert (=> b!1779934 m!2201853))

(assert (=> bm!111267 m!2200781))

(declare-fun m!2201855 () Bool)

(assert (=> bm!111267 m!2201855))

(assert (=> b!1779932 m!2200781))

(assert (=> b!1779932 m!2201849))

(assert (=> d!543630 m!2200781))

(assert (=> d!543630 m!2201855))

(declare-fun m!2201857 () Bool)

(assert (=> d!543630 m!2201857))

(assert (=> b!1779937 m!2200781))

(assert (=> b!1779937 m!2201851))

(assert (=> b!1779937 m!2201851))

(assert (=> b!1779937 m!2201853))

(assert (=> b!1779933 m!2200781))

(assert (=> b!1779933 m!2201849))

(assert (=> b!1779933 m!2201849))

(declare-fun m!2201859 () Bool)

(assert (=> b!1779933 m!2201859))

(assert (=> b!1779933 m!2200781))

(assert (=> b!1779933 m!2201851))

(assert (=> b!1779933 m!2201859))

(assert (=> b!1779933 m!2201851))

(declare-fun m!2201861 () Bool)

(assert (=> b!1779933 m!2201861))

(declare-fun m!2201863 () Bool)

(assert (=> b!1779931 m!2201863))

(assert (=> b!1779216 d!543630))

(declare-fun d!543632 () Bool)

(assert (=> d!543632 (= (list!7969 (charsOf!2160 (_1!11001 lt!690941))) (list!7972 (c!289505 (charsOf!2160 (_1!11001 lt!690941)))))))

(declare-fun bs!405127 () Bool)

(assert (= bs!405127 d!543632))

(declare-fun m!2201865 () Bool)

(assert (=> bs!405127 m!2201865))

(assert (=> b!1779216 d!543632))

(assert (=> b!1779216 d!543506))

(declare-fun d!543634 () Bool)

(assert (=> d!543634 (= (get!6018 lt!690958) (v!25530 lt!690958))))

(assert (=> b!1779216 d!543634))

(declare-fun d!543636 () Bool)

(assert (=> d!543636 (= (isEmpty!12386 suffix!1421) ((_ is Nil!19604) suffix!1421))))

(assert (=> b!1779195 d!543636))

(declare-fun d!543638 () Bool)

(declare-fun c!289632 () Bool)

(assert (=> d!543638 (= c!289632 ((_ is Node!6521) (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936)))))))

(declare-fun e!1139076 () Bool)

(assert (=> d!543638 (= (inv!25510 (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936)))) e!1139076)))

(declare-fun b!1779944 () Bool)

(assert (=> b!1779944 (= e!1139076 (inv!25514 (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936)))))))

(declare-fun b!1779945 () Bool)

(declare-fun e!1139077 () Bool)

(assert (=> b!1779945 (= e!1139076 e!1139077)))

(declare-fun res!802210 () Bool)

(assert (=> b!1779945 (= res!802210 (not ((_ is Leaf!9497) (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936))))))))

(assert (=> b!1779945 (=> res!802210 e!1139077)))

(declare-fun b!1779946 () Bool)

(assert (=> b!1779946 (= e!1139077 (inv!25515 (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936)))))))

(assert (= (and d!543638 c!289632) b!1779944))

(assert (= (and d!543638 (not c!289632)) b!1779945))

(assert (= (and b!1779945 (not res!802210)) b!1779946))

(declare-fun m!2201867 () Bool)

(assert (=> b!1779944 m!2201867))

(declare-fun m!2201869 () Bool)

(assert (=> b!1779946 m!2201869))

(assert (=> b!1779239 d!543638))

(declare-fun d!543640 () Bool)

(assert (=> d!543640 (= (inv!25503 (tag!3903 rule!422)) (= (mod (str.len (value!109735 (tag!3903 rule!422))) 2) 0))))

(assert (=> b!1779217 d!543640))

(declare-fun d!543642 () Bool)

(declare-fun res!802211 () Bool)

(declare-fun e!1139078 () Bool)

(assert (=> d!543642 (=> (not res!802211) (not e!1139078))))

(assert (=> d!543642 (= res!802211 (semiInverseModEq!1402 (toChars!4897 (transformation!3511 rule!422)) (toValue!5038 (transformation!3511 rule!422))))))

(assert (=> d!543642 (= (inv!25509 (transformation!3511 rule!422)) e!1139078)))

(declare-fun b!1779947 () Bool)

(assert (=> b!1779947 (= e!1139078 (equivClasses!1343 (toChars!4897 (transformation!3511 rule!422)) (toValue!5038 (transformation!3511 rule!422))))))

(assert (= (and d!543642 res!802211) b!1779947))

(declare-fun m!2201871 () Bool)

(assert (=> d!543642 m!2201871))

(declare-fun m!2201873 () Bool)

(assert (=> b!1779947 m!2201873))

(assert (=> b!1779217 d!543642))

(declare-fun d!543644 () Bool)

(assert (=> d!543644 (= (list!7969 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936))) (list!7972 (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936)))))))

(declare-fun bs!405128 () Bool)

(assert (= bs!405128 d!543644))

(declare-fun m!2201875 () Bool)

(assert (=> bs!405128 m!2201875))

(assert (=> b!1779196 d!543644))

(declare-fun bs!405129 () Bool)

(declare-fun d!543646 () Bool)

(assert (= bs!405129 (and d!543646 b!1779199)))

(declare-fun lambda!70644 () Int)

(assert (=> bs!405129 (= lambda!70644 lambda!70626)))

(declare-fun b!1779952 () Bool)

(declare-fun e!1139081 () Bool)

(assert (=> b!1779952 (= e!1139081 true)))

(assert (=> d!543646 e!1139081))

(assert (= d!543646 b!1779952))

(assert (=> b!1779952 (< (dynLambda!9606 order!12623 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) (dynLambda!9607 order!12625 lambda!70644))))

(assert (=> b!1779952 (< (dynLambda!9608 order!12627 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) (dynLambda!9607 order!12625 lambda!70644))))

(assert (=> d!543646 (= (list!7969 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936))) (list!7969 lt!690936))))

(declare-fun lt!691327 () Unit!33874)

(declare-fun ForallOf!339 (Int BalanceConc!12986) Unit!33874)

(assert (=> d!543646 (= lt!691327 (ForallOf!339 lambda!70644 lt!690936))))

(assert (=> d!543646 (= (lemmaSemiInverse!649 (transformation!3511 (rule!5579 (_1!11001 lt!690941))) lt!690936) lt!691327)))

(declare-fun b_lambda!58239 () Bool)

(assert (=> (not b_lambda!58239) (not d!543646)))

(assert (=> d!543646 t!166335))

(declare-fun b_and!136345 () Bool)

(assert (= b_and!136287 (and (=> t!166335 result!130010) b_and!136345)))

(assert (=> d!543646 t!166337))

(declare-fun b_and!136347 () Bool)

(assert (= b_and!136289 (and (=> t!166337 result!130014) b_and!136347)))

(assert (=> d!543646 t!166339))

(declare-fun b_and!136349 () Bool)

(assert (= b_and!136291 (and (=> t!166339 result!130016) b_and!136349)))

(declare-fun b_lambda!58241 () Bool)

(assert (=> (not b_lambda!58241) (not d!543646)))

(assert (=> d!543646 t!166341))

(declare-fun b_and!136351 () Bool)

(assert (= b_and!136339 (and (=> t!166341 result!130018) b_and!136351)))

(assert (=> d!543646 t!166343))

(declare-fun b_and!136353 () Bool)

(assert (= b_and!136341 (and (=> t!166343 result!130022) b_and!136353)))

(assert (=> d!543646 t!166345))

(declare-fun b_and!136355 () Bool)

(assert (= b_and!136343 (and (=> t!166345 result!130024) b_and!136355)))

(assert (=> d!543646 m!2200893))

(assert (=> d!543646 m!2200895))

(assert (=> d!543646 m!2200897))

(assert (=> d!543646 m!2200849))

(declare-fun m!2201877 () Bool)

(assert (=> d!543646 m!2201877))

(assert (=> d!543646 m!2200893))

(assert (=> d!543646 m!2200895))

(assert (=> b!1779196 d!543646))

(declare-fun d!543648 () Bool)

(declare-fun isBalanced!2040 (Conc!6521) Bool)

(assert (=> d!543648 (= (inv!25511 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (value!109736 (_1!11001 lt!690941)))) (isBalanced!2040 (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (value!109736 (_1!11001 lt!690941))))))))

(declare-fun bs!405130 () Bool)

(assert (= bs!405130 d!543648))

(declare-fun m!2201879 () Bool)

(assert (=> bs!405130 m!2201879))

(assert (=> tb!108083 d!543648))

(declare-fun d!543650 () Bool)

(declare-fun lt!691328 () Int)

(assert (=> d!543650 (= lt!691328 (size!15575 (list!7969 lt!690959)))))

(assert (=> d!543650 (= lt!691328 (size!15577 (c!289505 lt!690959)))))

(assert (=> d!543650 (= (size!15576 lt!690959) lt!691328)))

(declare-fun bs!405131 () Bool)

(assert (= bs!405131 d!543650))

(assert (=> bs!405131 m!2200905))

(assert (=> bs!405131 m!2200905))

(declare-fun m!2201881 () Bool)

(assert (=> bs!405131 m!2201881))

(declare-fun m!2201883 () Bool)

(assert (=> bs!405131 m!2201883))

(assert (=> b!1779197 d!543650))

(declare-fun b!1779953 () Bool)

(declare-fun e!1139083 () Bool)

(declare-fun lt!691329 () Bool)

(assert (=> b!1779953 (= e!1139083 (not lt!691329))))

(declare-fun bm!111268 () Bool)

(declare-fun call!111273 () Bool)

(assert (=> bm!111268 (= call!111273 (isEmpty!12386 lt!690934))))

(declare-fun d!543652 () Bool)

(declare-fun e!1139087 () Bool)

(assert (=> d!543652 e!1139087))

(declare-fun c!289635 () Bool)

(assert (=> d!543652 (= c!289635 ((_ is EmptyExpr!4839) lt!690975))))

(declare-fun e!1139082 () Bool)

(assert (=> d!543652 (= lt!691329 e!1139082)))

(declare-fun c!289634 () Bool)

(assert (=> d!543652 (= c!289634 (isEmpty!12386 lt!690934))))

(assert (=> d!543652 (validRegex!1960 lt!690975)))

(assert (=> d!543652 (= (matchR!2312 lt!690975 lt!690934) lt!691329)))

(declare-fun b!1779954 () Bool)

(assert (=> b!1779954 (= e!1139082 (nullable!1486 lt!690975))))

(declare-fun b!1779955 () Bool)

(declare-fun e!1139086 () Bool)

(assert (=> b!1779955 (= e!1139086 (= (head!4154 lt!690934) (c!289504 lt!690975)))))

(declare-fun b!1779956 () Bool)

(assert (=> b!1779956 (= e!1139082 (matchR!2312 (derivativeStep!1255 lt!690975 (head!4154 lt!690934)) (tail!2663 lt!690934)))))

(declare-fun b!1779957 () Bool)

(declare-fun res!802219 () Bool)

(assert (=> b!1779957 (=> (not res!802219) (not e!1139086))))

(assert (=> b!1779957 (= res!802219 (isEmpty!12386 (tail!2663 lt!690934)))))

(declare-fun b!1779958 () Bool)

(declare-fun e!1139088 () Bool)

(declare-fun e!1139084 () Bool)

(assert (=> b!1779958 (= e!1139088 e!1139084)))

(declare-fun res!802212 () Bool)

(assert (=> b!1779958 (=> (not res!802212) (not e!1139084))))

(assert (=> b!1779958 (= res!802212 (not lt!691329))))

(declare-fun b!1779959 () Bool)

(declare-fun res!802216 () Bool)

(assert (=> b!1779959 (=> res!802216 e!1139088)))

(assert (=> b!1779959 (= res!802216 e!1139086)))

(declare-fun res!802214 () Bool)

(assert (=> b!1779959 (=> (not res!802214) (not e!1139086))))

(assert (=> b!1779959 (= res!802214 lt!691329)))

(declare-fun b!1779960 () Bool)

(declare-fun res!802215 () Bool)

(declare-fun e!1139085 () Bool)

(assert (=> b!1779960 (=> res!802215 e!1139085)))

(assert (=> b!1779960 (= res!802215 (not (isEmpty!12386 (tail!2663 lt!690934))))))

(declare-fun b!1779961 () Bool)

(assert (=> b!1779961 (= e!1139084 e!1139085)))

(declare-fun res!802218 () Bool)

(assert (=> b!1779961 (=> res!802218 e!1139085)))

(assert (=> b!1779961 (= res!802218 call!111273)))

(declare-fun b!1779962 () Bool)

(assert (=> b!1779962 (= e!1139085 (not (= (head!4154 lt!690934) (c!289504 lt!690975))))))

(declare-fun b!1779963 () Bool)

(declare-fun res!802217 () Bool)

(assert (=> b!1779963 (=> (not res!802217) (not e!1139086))))

(assert (=> b!1779963 (= res!802217 (not call!111273))))

(declare-fun b!1779964 () Bool)

(assert (=> b!1779964 (= e!1139087 (= lt!691329 call!111273))))

(declare-fun b!1779965 () Bool)

(assert (=> b!1779965 (= e!1139087 e!1139083)))

(declare-fun c!289636 () Bool)

(assert (=> b!1779965 (= c!289636 ((_ is EmptyLang!4839) lt!690975))))

(declare-fun b!1779966 () Bool)

(declare-fun res!802213 () Bool)

(assert (=> b!1779966 (=> res!802213 e!1139088)))

(assert (=> b!1779966 (= res!802213 (not ((_ is ElementMatch!4839) lt!690975)))))

(assert (=> b!1779966 (= e!1139083 e!1139088)))

(assert (= (and d!543652 c!289634) b!1779954))

(assert (= (and d!543652 (not c!289634)) b!1779956))

(assert (= (and d!543652 c!289635) b!1779964))

(assert (= (and d!543652 (not c!289635)) b!1779965))

(assert (= (and b!1779965 c!289636) b!1779953))

(assert (= (and b!1779965 (not c!289636)) b!1779966))

(assert (= (and b!1779966 (not res!802213)) b!1779959))

(assert (= (and b!1779959 res!802214) b!1779963))

(assert (= (and b!1779963 res!802217) b!1779957))

(assert (= (and b!1779957 res!802219) b!1779955))

(assert (= (and b!1779959 (not res!802216)) b!1779958))

(assert (= (and b!1779958 res!802212) b!1779961))

(assert (= (and b!1779961 (not res!802218)) b!1779960))

(assert (= (and b!1779960 (not res!802215)) b!1779962))

(assert (= (or b!1779964 b!1779961 b!1779963) bm!111268))

(assert (=> b!1779962 m!2201373))

(assert (=> b!1779957 m!2201369))

(assert (=> b!1779957 m!2201369))

(declare-fun m!2201885 () Bool)

(assert (=> b!1779957 m!2201885))

(declare-fun m!2201887 () Bool)

(assert (=> bm!111268 m!2201887))

(assert (=> b!1779955 m!2201373))

(assert (=> d!543652 m!2201887))

(assert (=> d!543652 m!2201087))

(assert (=> b!1779960 m!2201369))

(assert (=> b!1779960 m!2201369))

(assert (=> b!1779960 m!2201885))

(assert (=> b!1779956 m!2201373))

(assert (=> b!1779956 m!2201373))

(declare-fun m!2201889 () Bool)

(assert (=> b!1779956 m!2201889))

(assert (=> b!1779956 m!2201369))

(assert (=> b!1779956 m!2201889))

(assert (=> b!1779956 m!2201369))

(declare-fun m!2201891 () Bool)

(assert (=> b!1779956 m!2201891))

(assert (=> b!1779954 m!2201101))

(assert (=> b!1779197 d!543652))

(declare-fun d!543654 () Bool)

(assert (=> d!543654 (matchR!2312 (rulesRegex!867 thiss!24550 rules!3447) (list!7969 (charsOf!2160 token!523)))))

(declare-fun lt!691330 () Unit!33874)

(assert (=> d!543654 (= lt!691330 (choose!11149 thiss!24550 rules!3447 lt!690934 token!523 rule!422 Nil!19604))))

(assert (=> d!543654 (not (isEmpty!12387 rules!3447))))

(assert (=> d!543654 (= (lemmaMaxPrefixThenMatchesRulesRegex!218 thiss!24550 rules!3447 lt!690934 token!523 rule!422 Nil!19604) lt!691330)))

(declare-fun bs!405132 () Bool)

(assert (= bs!405132 d!543654))

(assert (=> bs!405132 m!2200907))

(declare-fun m!2201893 () Bool)

(assert (=> bs!405132 m!2201893))

(assert (=> bs!405132 m!2200763))

(assert (=> bs!405132 m!2200907))

(declare-fun m!2201895 () Bool)

(assert (=> bs!405132 m!2201895))

(assert (=> bs!405132 m!2200891))

(assert (=> bs!405132 m!2200763))

(assert (=> bs!405132 m!2201895))

(declare-fun m!2201897 () Bool)

(assert (=> bs!405132 m!2201897))

(assert (=> b!1779197 d!543654))

(declare-fun b!1779967 () Bool)

(declare-fun e!1139090 () Bool)

(declare-fun lt!691331 () Bool)

(assert (=> b!1779967 (= e!1139090 (not lt!691331))))

(declare-fun bm!111269 () Bool)

(declare-fun call!111274 () Bool)

(assert (=> bm!111269 (= call!111274 (isEmpty!12386 lt!690934))))

(declare-fun d!543656 () Bool)

(declare-fun e!1139094 () Bool)

(assert (=> d!543656 e!1139094))

(declare-fun c!289638 () Bool)

(assert (=> d!543656 (= c!289638 ((_ is EmptyExpr!4839) (regex!3511 rule!422)))))

(declare-fun e!1139089 () Bool)

(assert (=> d!543656 (= lt!691331 e!1139089)))

(declare-fun c!289637 () Bool)

(assert (=> d!543656 (= c!289637 (isEmpty!12386 lt!690934))))

(assert (=> d!543656 (validRegex!1960 (regex!3511 rule!422))))

(assert (=> d!543656 (= (matchR!2312 (regex!3511 rule!422) lt!690934) lt!691331)))

(declare-fun b!1779968 () Bool)

(assert (=> b!1779968 (= e!1139089 (nullable!1486 (regex!3511 rule!422)))))

(declare-fun b!1779969 () Bool)

(declare-fun e!1139093 () Bool)

(assert (=> b!1779969 (= e!1139093 (= (head!4154 lt!690934) (c!289504 (regex!3511 rule!422))))))

(declare-fun b!1779970 () Bool)

(assert (=> b!1779970 (= e!1139089 (matchR!2312 (derivativeStep!1255 (regex!3511 rule!422) (head!4154 lt!690934)) (tail!2663 lt!690934)))))

(declare-fun b!1779971 () Bool)

(declare-fun res!802227 () Bool)

(assert (=> b!1779971 (=> (not res!802227) (not e!1139093))))

(assert (=> b!1779971 (= res!802227 (isEmpty!12386 (tail!2663 lt!690934)))))

(declare-fun b!1779972 () Bool)

(declare-fun e!1139095 () Bool)

(declare-fun e!1139091 () Bool)

(assert (=> b!1779972 (= e!1139095 e!1139091)))

(declare-fun res!802220 () Bool)

(assert (=> b!1779972 (=> (not res!802220) (not e!1139091))))

(assert (=> b!1779972 (= res!802220 (not lt!691331))))

(declare-fun b!1779973 () Bool)

(declare-fun res!802224 () Bool)

(assert (=> b!1779973 (=> res!802224 e!1139095)))

(assert (=> b!1779973 (= res!802224 e!1139093)))

(declare-fun res!802222 () Bool)

(assert (=> b!1779973 (=> (not res!802222) (not e!1139093))))

(assert (=> b!1779973 (= res!802222 lt!691331)))

(declare-fun b!1779974 () Bool)

(declare-fun res!802223 () Bool)

(declare-fun e!1139092 () Bool)

(assert (=> b!1779974 (=> res!802223 e!1139092)))

(assert (=> b!1779974 (= res!802223 (not (isEmpty!12386 (tail!2663 lt!690934))))))

(declare-fun b!1779975 () Bool)

(assert (=> b!1779975 (= e!1139091 e!1139092)))

(declare-fun res!802226 () Bool)

(assert (=> b!1779975 (=> res!802226 e!1139092)))

(assert (=> b!1779975 (= res!802226 call!111274)))

(declare-fun b!1779976 () Bool)

(assert (=> b!1779976 (= e!1139092 (not (= (head!4154 lt!690934) (c!289504 (regex!3511 rule!422)))))))

(declare-fun b!1779977 () Bool)

(declare-fun res!802225 () Bool)

(assert (=> b!1779977 (=> (not res!802225) (not e!1139093))))

(assert (=> b!1779977 (= res!802225 (not call!111274))))

(declare-fun b!1779978 () Bool)

(assert (=> b!1779978 (= e!1139094 (= lt!691331 call!111274))))

(declare-fun b!1779979 () Bool)

(assert (=> b!1779979 (= e!1139094 e!1139090)))

(declare-fun c!289639 () Bool)

(assert (=> b!1779979 (= c!289639 ((_ is EmptyLang!4839) (regex!3511 rule!422)))))

(declare-fun b!1779980 () Bool)

(declare-fun res!802221 () Bool)

(assert (=> b!1779980 (=> res!802221 e!1139095)))

(assert (=> b!1779980 (= res!802221 (not ((_ is ElementMatch!4839) (regex!3511 rule!422))))))

(assert (=> b!1779980 (= e!1139090 e!1139095)))

(assert (= (and d!543656 c!289637) b!1779968))

(assert (= (and d!543656 (not c!289637)) b!1779970))

(assert (= (and d!543656 c!289638) b!1779978))

(assert (= (and d!543656 (not c!289638)) b!1779979))

(assert (= (and b!1779979 c!289639) b!1779967))

(assert (= (and b!1779979 (not c!289639)) b!1779980))

(assert (= (and b!1779980 (not res!802221)) b!1779973))

(assert (= (and b!1779973 res!802222) b!1779977))

(assert (= (and b!1779977 res!802225) b!1779971))

(assert (= (and b!1779971 res!802227) b!1779969))

(assert (= (and b!1779973 (not res!802224)) b!1779972))

(assert (= (and b!1779972 res!802220) b!1779975))

(assert (= (and b!1779975 (not res!802226)) b!1779974))

(assert (= (and b!1779974 (not res!802223)) b!1779976))

(assert (= (or b!1779978 b!1779975 b!1779977) bm!111269))

(assert (=> b!1779976 m!2201373))

(assert (=> b!1779971 m!2201369))

(assert (=> b!1779971 m!2201369))

(assert (=> b!1779971 m!2201885))

(assert (=> bm!111269 m!2201887))

(assert (=> b!1779969 m!2201373))

(assert (=> d!543656 m!2201887))

(declare-fun m!2201899 () Bool)

(assert (=> d!543656 m!2201899))

(assert (=> b!1779974 m!2201369))

(assert (=> b!1779974 m!2201369))

(assert (=> b!1779974 m!2201885))

(assert (=> b!1779970 m!2201373))

(assert (=> b!1779970 m!2201373))

(declare-fun m!2201901 () Bool)

(assert (=> b!1779970 m!2201901))

(assert (=> b!1779970 m!2201369))

(assert (=> b!1779970 m!2201901))

(assert (=> b!1779970 m!2201369))

(declare-fun m!2201903 () Bool)

(assert (=> b!1779970 m!2201903))

(declare-fun m!2201905 () Bool)

(assert (=> b!1779968 m!2201905))

(assert (=> b!1779198 d!543656))

(declare-fun d!543658 () Bool)

(declare-fun res!802232 () Bool)

(declare-fun e!1139098 () Bool)

(assert (=> d!543658 (=> (not res!802232) (not e!1139098))))

(assert (=> d!543658 (= res!802232 (validRegex!1960 (regex!3511 rule!422)))))

(assert (=> d!543658 (= (ruleValid!1009 thiss!24550 rule!422) e!1139098)))

(declare-fun b!1779985 () Bool)

(declare-fun res!802233 () Bool)

(assert (=> b!1779985 (=> (not res!802233) (not e!1139098))))

(assert (=> b!1779985 (= res!802233 (not (nullable!1486 (regex!3511 rule!422))))))

(declare-fun b!1779986 () Bool)

(assert (=> b!1779986 (= e!1139098 (not (= (tag!3903 rule!422) (String!22338 ""))))))

(assert (= (and d!543658 res!802232) b!1779985))

(assert (= (and b!1779985 res!802233) b!1779986))

(assert (=> d!543658 m!2201899))

(assert (=> b!1779985 m!2201905))

(assert (=> b!1779198 d!543658))

(declare-fun d!543660 () Bool)

(assert (=> d!543660 (ruleValid!1009 thiss!24550 rule!422)))

(declare-fun lt!691334 () Unit!33874)

(declare-fun choose!11160 (LexerInterface!3140 Rule!6822 List!19675) Unit!33874)

(assert (=> d!543660 (= lt!691334 (choose!11160 thiss!24550 rule!422 rules!3447))))

(assert (=> d!543660 (contains!3543 rules!3447 rule!422)))

(assert (=> d!543660 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!532 thiss!24550 rule!422 rules!3447) lt!691334)))

(declare-fun bs!405133 () Bool)

(assert (= bs!405133 d!543660))

(assert (=> bs!405133 m!2200775))

(declare-fun m!2201907 () Bool)

(assert (=> bs!405133 m!2201907))

(assert (=> bs!405133 m!2200771))

(assert (=> b!1779198 d!543660))

(declare-fun d!543662 () Bool)

(declare-fun choose!11161 (Int) Bool)

(assert (=> d!543662 (= (Forall!878 lambda!70626) (choose!11161 lambda!70626))))

(declare-fun bs!405134 () Bool)

(assert (= bs!405134 d!543662))

(declare-fun m!2201909 () Bool)

(assert (=> bs!405134 m!2201909))

(assert (=> b!1779199 d!543662))

(declare-fun d!543664 () Bool)

(declare-fun e!1139101 () Bool)

(assert (=> d!543664 e!1139101))

(declare-fun res!802236 () Bool)

(assert (=> d!543664 (=> (not res!802236) (not e!1139101))))

(assert (=> d!543664 (= res!802236 (semiInverseModEq!1402 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))))))

(declare-fun Unit!33887 () Unit!33874)

(assert (=> d!543664 (= (lemmaInv!710 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) Unit!33887)))

(declare-fun b!1779989 () Bool)

(assert (=> b!1779989 (= e!1139101 (equivClasses!1343 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))))))

(assert (= (and d!543664 res!802236) b!1779989))

(declare-fun m!2201911 () Bool)

(assert (=> d!543664 m!2201911))

(declare-fun m!2201913 () Bool)

(assert (=> b!1779989 m!2201913))

(assert (=> b!1779199 d!543664))

(declare-fun d!543666 () Bool)

(assert (=> d!543666 (= (inv!25511 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936))) (isBalanced!2040 (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936)))))))

(declare-fun bs!405135 () Bool)

(assert (= bs!405135 d!543666))

(declare-fun m!2201915 () Bool)

(assert (=> bs!405135 m!2201915))

(assert (=> tb!108071 d!543666))

(declare-fun d!543668 () Bool)

(assert (=> d!543668 (= (get!6017 lt!690963) (v!25531 lt!690963))))

(assert (=> b!1779221 d!543668))

(declare-fun e!1139104 () Bool)

(assert (=> b!1779217 (= tp!503906 e!1139104)))

(declare-fun b!1780001 () Bool)

(declare-fun tp!503985 () Bool)

(declare-fun tp!503984 () Bool)

(assert (=> b!1780001 (= e!1139104 (and tp!503985 tp!503984))))

(declare-fun b!1780003 () Bool)

(declare-fun tp!503987 () Bool)

(declare-fun tp!503988 () Bool)

(assert (=> b!1780003 (= e!1139104 (and tp!503987 tp!503988))))

(declare-fun b!1780000 () Bool)

(assert (=> b!1780000 (= e!1139104 tp_is_empty!7921)))

(declare-fun b!1780002 () Bool)

(declare-fun tp!503986 () Bool)

(assert (=> b!1780002 (= e!1139104 tp!503986)))

(assert (= (and b!1779217 ((_ is ElementMatch!4839) (regex!3511 rule!422))) b!1780000))

(assert (= (and b!1779217 ((_ is Concat!8441) (regex!3511 rule!422))) b!1780001))

(assert (= (and b!1779217 ((_ is Star!4839) (regex!3511 rule!422))) b!1780002))

(assert (= (and b!1779217 ((_ is Union!4839) (regex!3511 rule!422))) b!1780003))

(declare-fun tp!503996 () Bool)

(declare-fun e!1139110 () Bool)

(declare-fun tp!503997 () Bool)

(declare-fun b!1780012 () Bool)

(assert (=> b!1780012 (= e!1139110 (and (inv!25510 (left!15710 (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (value!109736 (_1!11001 lt!690941)))))) tp!503997 (inv!25510 (right!16040 (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (value!109736 (_1!11001 lt!690941)))))) tp!503996))))

(declare-fun b!1780014 () Bool)

(declare-fun e!1139109 () Bool)

(declare-fun tp!503995 () Bool)

(assert (=> b!1780014 (= e!1139109 tp!503995)))

(declare-fun b!1780013 () Bool)

(declare-fun inv!25517 (IArray!13047) Bool)

(assert (=> b!1780013 (= e!1139110 (and (inv!25517 (xs!9397 (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (value!109736 (_1!11001 lt!690941)))))) e!1139109))))

(assert (=> b!1779242 (= tp!503918 (and (inv!25510 (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (value!109736 (_1!11001 lt!690941))))) e!1139110))))

(assert (= (and b!1779242 ((_ is Node!6521) (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (value!109736 (_1!11001 lt!690941)))))) b!1780012))

(assert (= b!1780013 b!1780014))

(assert (= (and b!1779242 ((_ is Leaf!9497) (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (value!109736 (_1!11001 lt!690941)))))) b!1780013))

(declare-fun m!2201917 () Bool)

(assert (=> b!1780012 m!2201917))

(declare-fun m!2201919 () Bool)

(assert (=> b!1780012 m!2201919))

(declare-fun m!2201921 () Bool)

(assert (=> b!1780013 m!2201921))

(assert (=> b!1779242 m!2200749))

(declare-fun e!1139111 () Bool)

(assert (=> b!1779223 (= tp!503907 e!1139111)))

(declare-fun b!1780016 () Bool)

(declare-fun tp!503999 () Bool)

(declare-fun tp!503998 () Bool)

(assert (=> b!1780016 (= e!1139111 (and tp!503999 tp!503998))))

(declare-fun b!1780018 () Bool)

(declare-fun tp!504001 () Bool)

(declare-fun tp!504002 () Bool)

(assert (=> b!1780018 (= e!1139111 (and tp!504001 tp!504002))))

(declare-fun b!1780015 () Bool)

(assert (=> b!1780015 (= e!1139111 tp_is_empty!7921)))

(declare-fun b!1780017 () Bool)

(declare-fun tp!504000 () Bool)

(assert (=> b!1780017 (= e!1139111 tp!504000)))

(assert (= (and b!1779223 ((_ is ElementMatch!4839) (regex!3511 (rule!5579 token!523)))) b!1780015))

(assert (= (and b!1779223 ((_ is Concat!8441) (regex!3511 (rule!5579 token!523)))) b!1780016))

(assert (= (and b!1779223 ((_ is Star!4839) (regex!3511 (rule!5579 token!523)))) b!1780017))

(assert (= (and b!1779223 ((_ is Union!4839) (regex!3511 (rule!5579 token!523)))) b!1780018))

(declare-fun b!1780023 () Bool)

(declare-fun e!1139114 () Bool)

(declare-fun tp!504005 () Bool)

(assert (=> b!1780023 (= e!1139114 (and tp_is_empty!7921 tp!504005))))

(assert (=> b!1779208 (= tp!503910 e!1139114)))

(assert (= (and b!1779208 ((_ is Cons!19604) (t!166353 suffix!1421))) b!1780023))

(declare-fun e!1139115 () Bool)

(assert (=> b!1779209 (= tp!503911 e!1139115)))

(declare-fun b!1780025 () Bool)

(declare-fun tp!504007 () Bool)

(declare-fun tp!504006 () Bool)

(assert (=> b!1780025 (= e!1139115 (and tp!504007 tp!504006))))

(declare-fun b!1780027 () Bool)

(declare-fun tp!504009 () Bool)

(declare-fun tp!504010 () Bool)

(assert (=> b!1780027 (= e!1139115 (and tp!504009 tp!504010))))

(declare-fun b!1780024 () Bool)

(assert (=> b!1780024 (= e!1139115 tp_is_empty!7921)))

(declare-fun b!1780026 () Bool)

(declare-fun tp!504008 () Bool)

(assert (=> b!1780026 (= e!1139115 tp!504008)))

(assert (= (and b!1779209 ((_ is ElementMatch!4839) (regex!3511 (h!25006 rules!3447)))) b!1780024))

(assert (= (and b!1779209 ((_ is Concat!8441) (regex!3511 (h!25006 rules!3447)))) b!1780025))

(assert (= (and b!1779209 ((_ is Star!4839) (regex!3511 (h!25006 rules!3447)))) b!1780026))

(assert (= (and b!1779209 ((_ is Union!4839) (regex!3511 (h!25006 rules!3447)))) b!1780027))

(declare-fun b!1780038 () Bool)

(declare-fun b_free!49383 () Bool)

(declare-fun b_next!50087 () Bool)

(assert (=> b!1780038 (= b_free!49383 (not b_next!50087))))

(declare-fun t!166405 () Bool)

(declare-fun tb!108137 () Bool)

(assert (=> (and b!1780038 (= (toValue!5038 (transformation!3511 (h!25006 (t!166354 rules!3447)))) (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) t!166405) tb!108137))

(declare-fun result!130096 () Bool)

(assert (= result!130096 result!130050))

(assert (=> d!543430 t!166405))

(declare-fun t!166407 () Bool)

(declare-fun tb!108139 () Bool)

(assert (=> (and b!1780038 (= (toValue!5038 (transformation!3511 (h!25006 (t!166354 rules!3447)))) (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) t!166407) tb!108139))

(declare-fun result!130098 () Bool)

(assert (= result!130098 result!130018))

(assert (=> d!543426 t!166407))

(declare-fun tb!108141 () Bool)

(declare-fun t!166409 () Bool)

(assert (=> (and b!1780038 (= (toValue!5038 (transformation!3511 (h!25006 (t!166354 rules!3447)))) (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) t!166409) tb!108141))

(declare-fun result!130100 () Bool)

(assert (= result!130100 result!130082))

(assert (=> d!543628 t!166409))

(assert (=> b!1779196 t!166407))

(assert (=> d!543646 t!166407))

(assert (=> d!543430 t!166407))

(declare-fun b_and!136357 () Bool)

(declare-fun tp!504022 () Bool)

(assert (=> b!1780038 (= tp!504022 (and (=> t!166405 result!130096) (=> t!166407 result!130098) (=> t!166409 result!130100) b_and!136357))))

(declare-fun b_free!49385 () Bool)

(declare-fun b_next!50089 () Bool)

(assert (=> b!1780038 (= b_free!49385 (not b_next!50089))))

(declare-fun t!166411 () Bool)

(declare-fun tb!108143 () Bool)

(assert (=> (and b!1780038 (= (toChars!4897 (transformation!3511 (h!25006 (t!166354 rules!3447)))) (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) t!166411) tb!108143))

(declare-fun result!130102 () Bool)

(assert (= result!130102 result!130010))

(assert (=> b!1779196 t!166411))

(declare-fun t!166413 () Bool)

(declare-fun tb!108145 () Bool)

(assert (=> (and b!1780038 (= (toChars!4897 (transformation!3511 (h!25006 (t!166354 rules!3447)))) (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941))))) t!166413) tb!108145))

(declare-fun result!130104 () Bool)

(assert (= result!130104 result!130026))

(assert (=> d!543506 t!166413))

(declare-fun t!166415 () Bool)

(declare-fun tb!108147 () Bool)

(assert (=> (and b!1780038 (= (toChars!4897 (transformation!3511 (h!25006 (t!166354 rules!3447)))) (toChars!4897 (transformation!3511 (rule!5579 token!523)))) t!166415) tb!108147))

(declare-fun result!130106 () Bool)

(assert (= result!130106 result!130038))

(assert (=> d!543474 t!166415))

(assert (=> b!1779465 t!166415))

(assert (=> b!1779215 t!166413))

(assert (=> d!543646 t!166411))

(declare-fun tp!504019 () Bool)

(declare-fun b_and!136359 () Bool)

(assert (=> b!1780038 (= tp!504019 (and (=> t!166415 result!130106) (=> t!166413 result!130104) (=> t!166411 result!130102) b_and!136359))))

(declare-fun e!1139125 () Bool)

(assert (=> b!1780038 (= e!1139125 (and tp!504022 tp!504019))))

(declare-fun e!1139124 () Bool)

(declare-fun tp!504021 () Bool)

(declare-fun b!1780037 () Bool)

(assert (=> b!1780037 (= e!1139124 (and tp!504021 (inv!25503 (tag!3903 (h!25006 (t!166354 rules!3447)))) (inv!25509 (transformation!3511 (h!25006 (t!166354 rules!3447)))) e!1139125))))

(declare-fun b!1780036 () Bool)

(declare-fun e!1139126 () Bool)

(declare-fun tp!504020 () Bool)

(assert (=> b!1780036 (= e!1139126 (and e!1139124 tp!504020))))

(assert (=> b!1779220 (= tp!503909 e!1139126)))

(assert (= b!1780037 b!1780038))

(assert (= b!1780036 b!1780037))

(assert (= (and b!1779220 ((_ is Cons!19605) (t!166354 rules!3447))) b!1780036))

(declare-fun m!2201923 () Bool)

(assert (=> b!1780037 m!2201923))

(declare-fun m!2201925 () Bool)

(assert (=> b!1780037 m!2201925))

(declare-fun b!1780039 () Bool)

(declare-fun e!1139128 () Bool)

(declare-fun tp!504023 () Bool)

(assert (=> b!1780039 (= e!1139128 (and tp_is_empty!7921 tp!504023))))

(assert (=> b!1779205 (= tp!503903 e!1139128)))

(assert (= (and b!1779205 ((_ is Cons!19604) (originalCharacters!4325 token!523))) b!1780039))

(declare-fun tp!504025 () Bool)

(declare-fun e!1139130 () Bool)

(declare-fun tp!504026 () Bool)

(declare-fun b!1780040 () Bool)

(assert (=> b!1780040 (= e!1139130 (and (inv!25510 (left!15710 (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936))))) tp!504026 (inv!25510 (right!16040 (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936))))) tp!504025))))

(declare-fun b!1780042 () Bool)

(declare-fun e!1139129 () Bool)

(declare-fun tp!504024 () Bool)

(assert (=> b!1780042 (= e!1139129 tp!504024)))

(declare-fun b!1780041 () Bool)

(assert (=> b!1780041 (= e!1139130 (and (inv!25517 (xs!9397 (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936))))) e!1139129))))

(assert (=> b!1779239 (= tp!503917 (and (inv!25510 (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936)))) e!1139130))))

(assert (= (and b!1779239 ((_ is Node!6521) (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936))))) b!1780040))

(assert (= b!1780041 b!1780042))

(assert (= (and b!1779239 ((_ is Leaf!9497) (c!289505 (dynLambda!9609 (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) (dynLambda!9610 (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))) lt!690936))))) b!1780041))

(declare-fun m!2201927 () Bool)

(assert (=> b!1780040 m!2201927))

(declare-fun m!2201929 () Bool)

(assert (=> b!1780040 m!2201929))

(declare-fun m!2201931 () Bool)

(assert (=> b!1780041 m!2201931))

(assert (=> b!1779239 m!2200743))

(declare-fun b_lambda!58243 () Bool)

(assert (= b_lambda!58191 (or (and b!1779193 b_free!49369 (= (toChars!4897 (transformation!3511 (h!25006 rules!3447))) (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))))) (and b!1779203 b_free!49373 (= (toChars!4897 (transformation!3511 (rule!5579 token!523))) (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))))) (and b!1779200 b_free!49377 (= (toChars!4897 (transformation!3511 rule!422)) (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))))) (and b!1780038 b_free!49385 (= (toChars!4897 (transformation!3511 (h!25006 (t!166354 rules!3447)))) (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))))) b_lambda!58243)))

(declare-fun b_lambda!58245 () Bool)

(assert (= b_lambda!58195 (or (and b!1779193 b_free!49369 (= (toChars!4897 (transformation!3511 (h!25006 rules!3447))) (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))))) (and b!1779203 b_free!49373 (= (toChars!4897 (transformation!3511 (rule!5579 token!523))) (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))))) (and b!1779200 b_free!49377 (= (toChars!4897 (transformation!3511 rule!422)) (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))))) (and b!1780038 b_free!49385 (= (toChars!4897 (transformation!3511 (h!25006 (t!166354 rules!3447)))) (toChars!4897 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))))) b_lambda!58245)))

(declare-fun b_lambda!58247 () Bool)

(assert (= b_lambda!58193 (or (and b!1779193 b_free!49367 (= (toValue!5038 (transformation!3511 (h!25006 rules!3447))) (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))))) (and b!1779203 b_free!49371 (= (toValue!5038 (transformation!3511 (rule!5579 token!523))) (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))))) (and b!1779200 b_free!49375 (= (toValue!5038 (transformation!3511 rule!422)) (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))))) (and b!1780038 b_free!49383 (= (toValue!5038 (transformation!3511 (h!25006 (t!166354 rules!3447)))) (toValue!5038 (transformation!3511 (rule!5579 (_1!11001 lt!690941)))))) b_lambda!58247)))

(declare-fun b_lambda!58249 () Bool)

(assert (= b_lambda!58209 (or (and b!1779193 b_free!49369 (= (toChars!4897 (transformation!3511 (h!25006 rules!3447))) (toChars!4897 (transformation!3511 (rule!5579 token!523))))) (and b!1779203 b_free!49373) (and b!1779200 b_free!49377 (= (toChars!4897 (transformation!3511 rule!422)) (toChars!4897 (transformation!3511 (rule!5579 token!523))))) (and b!1780038 b_free!49385 (= (toChars!4897 (transformation!3511 (h!25006 (t!166354 rules!3447)))) (toChars!4897 (transformation!3511 (rule!5579 token!523))))) b_lambda!58249)))

(declare-fun b_lambda!58251 () Bool)

(assert (= b_lambda!58199 (or (and b!1779193 b_free!49369 (= (toChars!4897 (transformation!3511 (h!25006 rules!3447))) (toChars!4897 (transformation!3511 (rule!5579 token!523))))) (and b!1779203 b_free!49373) (and b!1779200 b_free!49377 (= (toChars!4897 (transformation!3511 rule!422)) (toChars!4897 (transformation!3511 (rule!5579 token!523))))) (and b!1780038 b_free!49385 (= (toChars!4897 (transformation!3511 (h!25006 (t!166354 rules!3447)))) (toChars!4897 (transformation!3511 (rule!5579 token!523))))) b_lambda!58251)))

(check-sat (not tb!108131) (not b!1779976) (not b!1780026) (not b_lambda!58241) (not b!1779640) (not b!1779746) (not b!1779351) (not d!543352) (not b!1779929) (not b!1779418) (not b!1779611) (not b!1779658) (not d!543508) (not b!1779954) (not d!543548) (not b_lambda!58249) (not d!543656) (not d!543482) (not bm!111269) (not b!1779636) (not b!1779606) (not b!1779239) (not b!1780003) (not b!1779667) (not b!1779346) b_and!136349 tp_is_empty!7921 (not b!1779656) b_and!136355 (not b!1779661) (not b!1779924) (not b!1779926) (not d!543396) (not d!543574) (not b!1779971) (not b!1779467) (not b!1779660) (not b!1779637) (not d!543568) (not d!543560) (not b!1779608) (not d!543446) (not b!1779934) (not bm!111261) (not b!1779344) (not b!1779242) (not b_next!50089) (not d!543650) (not b!1779769) (not b!1779921) (not b!1779401) (not b!1779758) (not bm!111267) b_and!136357 (not d!543438) (not b_next!50071) (not b!1779651) (not b!1779925) (not tb!108107) (not d!543478) (not b!1779614) (not b!1780002) (not b!1779630) (not b!1779609) (not b_lambda!58245) (not d!543644) (not d!543666) (not b!1779245) (not d!543402) (not d!543662) b_and!136353 (not b!1780013) (not b!1779664) (not b!1779270) (not b!1779944) (not b!1780017) (not b!1780023) (not b!1780036) (not b!1779605) (not b!1779603) (not d!543664) (not d!543570) b_and!136351 (not b!1780001) (not b_lambda!58237) (not b_next!50079) (not d!543492) (not d!543504) (not d!543572) (not b!1779423) (not d!543346) (not b!1779465) (not d!543632) (not b!1780027) (not b!1779643) (not b!1779425) (not b!1779666) (not b!1779361) (not b!1779543) (not b!1779644) (not b!1779970) (not b!1779629) (not d!543430) (not b!1779403) (not b!1779641) (not b!1779762) (not b!1779770) (not d!543498) (not b!1779759) (not b_lambda!58211) (not b!1779284) (not b!1779632) (not b!1779639) (not b!1779345) (not b!1780037) (not d!543442) b_and!136345 (not bm!111251) (not b!1780025) (not b!1779311) (not b!1779360) (not d!543502) (not d!543510) (not b!1779933) (not d!543496) (not b!1780012) (not b!1779969) (not bm!111268) (not d!543410) (not b!1779962) (not b!1780014) (not b!1779420) (not b!1779932) (not b_next!50081) (not b!1779937) (not d!543652) (not b!1779450) (not d!543472) (not b!1779310) (not b!1779402) (not b!1779645) (not d!543646) (not d!543660) (not d!543654) (not d!543434) (not b!1779469) (not b_lambda!58239) (not b_lambda!58243) (not b!1779663) (not d!543506) (not d!543474) (not d!543476) (not b!1779413) (not b!1779989) (not b!1779947) (not d!543630) (not d!543404) (not b!1779745) (not b!1779343) (not b!1779466) (not b!1779659) (not d!543494) (not b!1780041) (not d!543556) (not b_next!50075) (not b!1779928) (not b!1779349) (not b!1779931) (not b_lambda!58207) b_and!136359 (not d!543380) (not d!543500) (not b!1779451) (not b!1780018) (not d!543642) (not d!543364) (not b!1779957) (not b!1779985) (not b!1779922) (not bm!111250) (not b!1780042) (not b!1779359) (not bm!111262) (not b_next!50073) (not b!1779968) (not b!1779650) (not b!1779610) (not b!1780040) (not b!1779607) (not d!543436) (not b!1779414) (not b!1779974) (not b!1779939) (not tb!108095) (not d!543428) (not b!1779635) (not b!1779662) (not d!543386) (not d!543406) (not b_next!50087) (not d!543400) (not d!543424) (not b_lambda!58205) (not b!1779390) (not b!1779449) (not b!1779272) (not b!1779309) (not b_next!50077) (not d!543648) (not b!1779960) (not b_lambda!58203) (not b!1779613) (not b!1779927) (not d!543416) (not b!1780016) (not b_lambda!58251) (not b!1779956) (not b!1779946) (not b!1779417) b_and!136347 (not d!543398) (not d!543626) (not b!1779653) (not b!1779761) (not b!1779955) (not b!1780039) (not b_lambda!58247) (not d!543658) (not b!1779747) (not b!1779654) (not b!1779419))
(check-sat b_and!136349 b_and!136355 (not b_next!50071) b_and!136353 b_and!136351 (not b_next!50079) b_and!136345 (not b_next!50081) (not b_next!50075) b_and!136359 (not b_next!50073) (not b_next!50087) (not b_next!50077) b_and!136347 (not b_next!50089) b_and!136357)
