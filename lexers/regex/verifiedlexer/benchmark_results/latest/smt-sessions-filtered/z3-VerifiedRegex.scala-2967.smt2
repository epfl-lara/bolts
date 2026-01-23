; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!176290 () Bool)

(assert start!176290)

(declare-fun b!1774839 () Bool)

(declare-fun b_free!49151 () Bool)

(declare-fun b_next!49855 () Bool)

(assert (=> b!1774839 (= b_free!49151 (not b_next!49855))))

(declare-fun tp!502938 () Bool)

(declare-fun b_and!135339 () Bool)

(assert (=> b!1774839 (= tp!502938 b_and!135339)))

(declare-fun b_free!49153 () Bool)

(declare-fun b_next!49857 () Bool)

(assert (=> b!1774839 (= b_free!49153 (not b_next!49857))))

(declare-fun tp!502945 () Bool)

(declare-fun b_and!135341 () Bool)

(assert (=> b!1774839 (= tp!502945 b_and!135341)))

(declare-fun b!1774836 () Bool)

(declare-fun b_free!49155 () Bool)

(declare-fun b_next!49859 () Bool)

(assert (=> b!1774836 (= b_free!49155 (not b_next!49859))))

(declare-fun tp!502937 () Bool)

(declare-fun b_and!135343 () Bool)

(assert (=> b!1774836 (= tp!502937 b_and!135343)))

(declare-fun b_free!49157 () Bool)

(declare-fun b_next!49861 () Bool)

(assert (=> b!1774836 (= b_free!49157 (not b_next!49861))))

(declare-fun tp!502936 () Bool)

(declare-fun b_and!135345 () Bool)

(assert (=> b!1774836 (= tp!502936 b_and!135345)))

(declare-fun b!1774834 () Bool)

(declare-fun b_free!49159 () Bool)

(declare-fun b_next!49863 () Bool)

(assert (=> b!1774834 (= b_free!49159 (not b_next!49863))))

(declare-fun tp!502942 () Bool)

(declare-fun b_and!135347 () Bool)

(assert (=> b!1774834 (= tp!502942 b_and!135347)))

(declare-fun b_free!49161 () Bool)

(declare-fun b_next!49865 () Bool)

(assert (=> b!1774834 (= b_free!49161 (not b_next!49865))))

(declare-fun tp!502939 () Bool)

(declare-fun b_and!135349 () Bool)

(assert (=> b!1774834 (= tp!502939 b_and!135349)))

(declare-fun b!1774876 () Bool)

(declare-fun e!1135727 () Bool)

(assert (=> b!1774876 (= e!1135727 true)))

(declare-fun b!1774875 () Bool)

(declare-fun e!1135726 () Bool)

(assert (=> b!1774875 (= e!1135726 e!1135727)))

(declare-fun b!1774874 () Bool)

(declare-fun e!1135725 () Bool)

(assert (=> b!1774874 (= e!1135725 e!1135726)))

(declare-fun b!1774860 () Bool)

(assert (=> b!1774860 e!1135725))

(assert (= b!1774875 b!1774876))

(assert (= b!1774874 b!1774875))

(assert (= b!1774860 b!1774874))

(declare-fun lambda!70520 () Int)

(declare-fun order!12517 () Int)

(declare-fun order!12515 () Int)

(declare-datatypes ((List!19607 0))(
  ( (Nil!19537) (Cons!19537 (h!24938 (_ BitVec 16)) (t!165786 List!19607)) )
))
(declare-datatypes ((TokenValue!3585 0))(
  ( (FloatLiteralValue!7170 (text!25540 List!19607)) (TokenValueExt!3584 (__x!12472 Int)) (Broken!17925 (value!109254 List!19607)) (Object!3654) (End!3585) (Def!3585) (Underscore!3585) (Match!3585) (Else!3585) (Error!3585) (Case!3585) (If!3585) (Extends!3585) (Abstract!3585) (Class!3585) (Val!3585) (DelimiterValue!7170 (del!3645 List!19607)) (KeywordValue!3591 (value!109255 List!19607)) (CommentValue!7170 (value!109256 List!19607)) (WhitespaceValue!7170 (value!109257 List!19607)) (IndentationValue!3585 (value!109258 List!19607)) (String!22256) (Int32!3585) (Broken!17926 (value!109259 List!19607)) (Boolean!3586) (Unit!33759) (OperatorValue!3588 (op!3645 List!19607)) (IdentifierValue!7170 (value!109260 List!19607)) (IdentifierValue!7171 (value!109261 List!19607)) (WhitespaceValue!7171 (value!109262 List!19607)) (True!7170) (False!7170) (Broken!17927 (value!109263 List!19607)) (Broken!17928 (value!109264 List!19607)) (True!7171) (RightBrace!3585) (RightBracket!3585) (Colon!3585) (Null!3585) (Comma!3585) (LeftBracket!3585) (False!7171) (LeftBrace!3585) (ImaginaryLiteralValue!3585 (text!25541 List!19607)) (StringLiteralValue!10755 (value!109265 List!19607)) (EOFValue!3585 (value!109266 List!19607)) (IdentValue!3585 (value!109267 List!19607)) (DelimiterValue!7171 (value!109268 List!19607)) (DedentValue!3585 (value!109269 List!19607)) (NewLineValue!3585 (value!109270 List!19607)) (IntegerValue!10755 (value!109271 (_ BitVec 32)) (text!25542 List!19607)) (IntegerValue!10756 (value!109272 Int) (text!25543 List!19607)) (Times!3585) (Or!3585) (Equal!3585) (Minus!3585) (Broken!17929 (value!109273 List!19607)) (And!3585) (Div!3585) (LessEqual!3585) (Mod!3585) (Concat!8408) (Not!3585) (Plus!3585) (SpaceValue!3585 (value!109274 List!19607)) (IntegerValue!10757 (value!109275 Int) (text!25544 List!19607)) (StringLiteralValue!10756 (text!25545 List!19607)) (FloatLiteralValue!7171 (text!25546 List!19607)) (BytesLiteralValue!3585 (value!109276 List!19607)) (CommentValue!7171 (value!109277 List!19607)) (StringLiteralValue!10757 (value!109278 List!19607)) (ErrorTokenValue!3585 (msg!3646 List!19607)) )
))
(declare-datatypes ((C!9820 0))(
  ( (C!9821 (val!5506 Int)) )
))
(declare-datatypes ((List!19608 0))(
  ( (Nil!19538) (Cons!19538 (h!24939 C!9820) (t!165787 List!19608)) )
))
(declare-datatypes ((Regex!4823 0))(
  ( (ElementMatch!4823 (c!288982 C!9820)) (Concat!8409 (regOne!10158 Regex!4823) (regTwo!10158 Regex!4823)) (EmptyExpr!4823) (Star!4823 (reg!5152 Regex!4823)) (EmptyLang!4823) (Union!4823 (regOne!10159 Regex!4823) (regTwo!10159 Regex!4823)) )
))
(declare-datatypes ((String!22257 0))(
  ( (String!22258 (value!109279 String)) )
))
(declare-datatypes ((IArray!13003 0))(
  ( (IArray!13004 (innerList!6559 List!19608)) )
))
(declare-datatypes ((Conc!6499 0))(
  ( (Node!6499 (left!15648 Conc!6499) (right!15978 Conc!6499) (csize!13228 Int) (cheight!6710 Int)) (Leaf!9467 (xs!9375 IArray!13003) (csize!13229 Int)) (Empty!6499) )
))
(declare-datatypes ((BalanceConc!12942 0))(
  ( (BalanceConc!12943 (c!288983 Conc!6499)) )
))
(declare-datatypes ((TokenValueInjection!6830 0))(
  ( (TokenValueInjection!6831 (toValue!5022 Int) (toChars!4881 Int)) )
))
(declare-datatypes ((Rule!6790 0))(
  ( (Rule!6791 (regex!3495 Regex!4823) (tag!3881 String!22257) (isSeparator!3495 Bool) (transformation!3495 TokenValueInjection!6830)) )
))
(declare-datatypes ((Token!6556 0))(
  ( (Token!6557 (value!109280 TokenValue!3585) (rule!5551 Rule!6790) (size!15520 Int) (originalCharacters!4309 List!19608)) )
))
(declare-datatypes ((tuple2!19142 0))(
  ( (tuple2!19143 (_1!10973 Token!6556) (_2!10973 List!19608)) )
))
(declare-fun lt!687823 () tuple2!19142)

(declare-fun dynLambda!9520 (Int Int) Int)

(declare-fun dynLambda!9521 (Int Int) Int)

(assert (=> b!1774876 (< (dynLambda!9520 order!12515 (toValue!5022 (transformation!3495 (rule!5551 (_1!10973 lt!687823))))) (dynLambda!9521 order!12517 lambda!70520))))

(declare-fun order!12519 () Int)

(declare-fun dynLambda!9522 (Int Int) Int)

(assert (=> b!1774876 (< (dynLambda!9522 order!12519 (toChars!4881 (transformation!3495 (rule!5551 (_1!10973 lt!687823))))) (dynLambda!9521 order!12517 lambda!70520))))

(declare-fun e!1135697 () Bool)

(assert (=> b!1774834 (= e!1135697 (and tp!502942 tp!502939))))

(declare-fun e!1135701 () Bool)

(declare-fun tp!502943 () Bool)

(declare-fun token!523 () Token!6556)

(declare-fun b!1774835 () Bool)

(declare-fun e!1135700 () Bool)

(declare-fun inv!25397 (String!22257) Bool)

(declare-fun inv!25402 (TokenValueInjection!6830) Bool)

(assert (=> b!1774835 (= e!1135701 (and tp!502943 (inv!25397 (tag!3881 (rule!5551 token!523))) (inv!25402 (transformation!3495 (rule!5551 token!523))) e!1135700))))

(declare-fun e!1135698 () Bool)

(assert (=> b!1774836 (= e!1135698 (and tp!502937 tp!502936))))

(declare-fun b!1774837 () Bool)

(declare-fun res!799513 () Bool)

(declare-fun e!1135707 () Bool)

(assert (=> b!1774837 (=> res!799513 e!1135707)))

(declare-fun lt!687816 () List!19608)

(declare-fun matchR!2296 (Regex!4823 List!19608) Bool)

(assert (=> b!1774837 (= res!799513 (not (matchR!2296 (regex!3495 (rule!5551 (_1!10973 lt!687823))) lt!687816)))))

(declare-fun b!1774838 () Bool)

(declare-fun res!799522 () Bool)

(declare-fun e!1135702 () Bool)

(assert (=> b!1774838 (=> (not res!799522) (not e!1135702))))

(declare-datatypes ((LexerInterface!3124 0))(
  ( (LexerInterfaceExt!3121 (__x!12473 Int)) (Lexer!3122) )
))
(declare-fun thiss!24550 () LexerInterface!3124)

(declare-datatypes ((List!19609 0))(
  ( (Nil!19539) (Cons!19539 (h!24940 Rule!6790) (t!165788 List!19609)) )
))
(declare-fun rules!3447 () List!19609)

(declare-fun rulesInvariant!2793 (LexerInterface!3124 List!19609) Bool)

(assert (=> b!1774838 (= res!799522 (rulesInvariant!2793 thiss!24550 rules!3447))))

(assert (=> b!1774839 (= e!1135700 (and tp!502938 tp!502945))))

(declare-fun b!1774840 () Bool)

(declare-fun e!1135692 () Bool)

(declare-fun e!1135694 () Bool)

(assert (=> b!1774840 (= e!1135692 e!1135694)))

(declare-fun res!799519 () Bool)

(assert (=> b!1774840 (=> (not res!799519) (not e!1135694))))

(declare-fun lt!687813 () Rule!6790)

(declare-fun list!7941 (BalanceConc!12942) List!19608)

(declare-fun charsOf!2144 (Token!6556) BalanceConc!12942)

(assert (=> b!1774840 (= res!799519 (matchR!2296 (regex!3495 lt!687813) (list!7941 (charsOf!2144 (_1!10973 lt!687823)))))))

(declare-datatypes ((Option!4012 0))(
  ( (None!4011) (Some!4011 (v!25492 Rule!6790)) )
))
(declare-fun lt!687821 () Option!4012)

(declare-fun get!5977 (Option!4012) Rule!6790)

(assert (=> b!1774840 (= lt!687813 (get!5977 lt!687821))))

(declare-fun b!1774841 () Bool)

(declare-fun e!1135712 () Bool)

(declare-fun e!1135714 () Bool)

(assert (=> b!1774841 (= e!1135712 e!1135714)))

(declare-fun res!799512 () Bool)

(assert (=> b!1774841 (=> res!799512 e!1135714)))

(declare-datatypes ((Option!4013 0))(
  ( (None!4012) (Some!4012 (v!25493 tuple2!19142)) )
))
(declare-fun lt!687820 () Option!4013)

(declare-fun lt!687825 () List!19608)

(assert (=> b!1774841 (= res!799512 (or (not (= lt!687825 (_2!10973 lt!687823))) (not (= lt!687820 (Some!4012 (tuple2!19143 (_1!10973 lt!687823) lt!687825))))))))

(assert (=> b!1774841 (= (_2!10973 lt!687823) lt!687825)))

(declare-fun lt!687830 () List!19608)

(declare-datatypes ((Unit!33760 0))(
  ( (Unit!33761) )
))
(declare-fun lt!687839 () Unit!33760)

(declare-fun lemmaSamePrefixThenSameSuffix!846 (List!19608 List!19608 List!19608 List!19608 List!19608) Unit!33760)

(assert (=> b!1774841 (= lt!687839 (lemmaSamePrefixThenSameSuffix!846 lt!687816 (_2!10973 lt!687823) lt!687816 lt!687825 lt!687830))))

(declare-fun getSuffix!902 (List!19608 List!19608) List!19608)

(assert (=> b!1774841 (= lt!687825 (getSuffix!902 lt!687830 lt!687816))))

(declare-fun lt!687833 () Int)

(declare-fun lt!687831 () TokenValue!3585)

(assert (=> b!1774841 (= lt!687820 (Some!4012 (tuple2!19143 (Token!6557 lt!687831 (rule!5551 (_1!10973 lt!687823)) lt!687833 lt!687816) (_2!10973 lt!687823))))))

(declare-fun maxPrefixOneRule!1047 (LexerInterface!3124 Rule!6790 List!19608) Option!4013)

(assert (=> b!1774841 (= lt!687820 (maxPrefixOneRule!1047 thiss!24550 (rule!5551 (_1!10973 lt!687823)) lt!687830))))

(declare-fun size!15521 (List!19608) Int)

(assert (=> b!1774841 (= lt!687833 (size!15521 lt!687816))))

(declare-fun apply!5295 (TokenValueInjection!6830 BalanceConc!12942) TokenValue!3585)

(declare-fun seqFromList!2464 (List!19608) BalanceConc!12942)

(assert (=> b!1774841 (= lt!687831 (apply!5295 (transformation!3495 (rule!5551 (_1!10973 lt!687823))) (seqFromList!2464 lt!687816)))))

(declare-fun lt!687841 () Unit!33760)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!425 (LexerInterface!3124 List!19609 List!19608 List!19608 List!19608 Rule!6790) Unit!33760)

(assert (=> b!1774841 (= lt!687841 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!425 thiss!24550 rules!3447 lt!687816 lt!687830 (_2!10973 lt!687823) (rule!5551 (_1!10973 lt!687823))))))

(declare-fun b!1774842 () Bool)

(declare-fun e!1135717 () Bool)

(declare-fun e!1135696 () Bool)

(declare-fun tp!502946 () Bool)

(assert (=> b!1774842 (= e!1135717 (and e!1135696 tp!502946))))

(declare-fun b!1774843 () Bool)

(declare-fun e!1135710 () Unit!33760)

(declare-fun Unit!33762 () Unit!33760)

(assert (=> b!1774843 (= e!1135710 Unit!33762)))

(declare-fun lt!687809 () Unit!33760)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!202 (LexerInterface!3124 List!19609 List!19608 Token!6556 Rule!6790 List!19608) Unit!33760)

(assert (=> b!1774843 (= lt!687809 (lemmaMaxPrefixThenMatchesRulesRegex!202 thiss!24550 rules!3447 lt!687830 (_1!10973 lt!687823) (rule!5551 (_1!10973 lt!687823)) (_2!10973 lt!687823)))))

(declare-fun lt!687826 () Regex!4823)

(assert (=> b!1774843 (matchR!2296 lt!687826 lt!687816)))

(declare-fun lt!687822 () List!19608)

(declare-fun lt!687829 () List!19608)

(assert (=> b!1774843 (= lt!687822 (getSuffix!902 lt!687830 lt!687829))))

(declare-fun suffix!1421 () List!19608)

(declare-fun lt!687846 () Unit!33760)

(assert (=> b!1774843 (= lt!687846 (lemmaSamePrefixThenSameSuffix!846 lt!687829 suffix!1421 lt!687829 lt!687822 lt!687830))))

(assert (=> b!1774843 (= suffix!1421 lt!687822)))

(declare-fun lt!687811 () Unit!33760)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!271 (List!19608 List!19608) Unit!33760)

(assert (=> b!1774843 (= lt!687811 (lemmaAddHeadSuffixToPrefixStillPrefix!271 lt!687829 lt!687830))))

(declare-fun isPrefix!1735 (List!19608 List!19608) Bool)

(declare-fun ++!5319 (List!19608 List!19608) List!19608)

(declare-fun head!4132 (List!19608) C!9820)

(assert (=> b!1774843 (isPrefix!1735 (++!5319 lt!687829 (Cons!19538 (head!4132 lt!687822) Nil!19538)) lt!687830)))

(declare-fun lt!687838 () Unit!33760)

(declare-fun lt!687814 () List!19608)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!143 (List!19608 List!19608 List!19608) Unit!33760)

(assert (=> b!1774843 (= lt!687838 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!143 lt!687816 lt!687814 lt!687830))))

(assert (=> b!1774843 (isPrefix!1735 lt!687814 lt!687816)))

(declare-fun lt!687842 () Unit!33760)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!134 (Regex!4823 List!19608 List!19608) Unit!33760)

(assert (=> b!1774843 (= lt!687842 (lemmaNotPrefixMatchThenCannotMatchLonger!134 lt!687826 lt!687814 lt!687816))))

(assert (=> b!1774843 false))

(declare-fun b!1774844 () Bool)

(assert (=> b!1774844 (= e!1135694 (= (rule!5551 (_1!10973 lt!687823)) lt!687813))))

(declare-fun b!1774845 () Bool)

(declare-fun e!1135704 () Bool)

(declare-fun tp_is_empty!7889 () Bool)

(declare-fun tp!502935 () Bool)

(assert (=> b!1774845 (= e!1135704 (and tp_is_empty!7889 tp!502935))))

(declare-fun b!1774846 () Bool)

(declare-fun res!799502 () Bool)

(assert (=> b!1774846 (=> (not res!799502) (not e!1135702))))

(declare-fun rule!422 () Rule!6790)

(declare-fun contains!3527 (List!19609 Rule!6790) Bool)

(assert (=> b!1774846 (= res!799502 (contains!3527 rules!3447 rule!422))))

(declare-fun e!1135718 () Bool)

(declare-fun b!1774847 () Bool)

(declare-fun tp!502944 () Bool)

(assert (=> b!1774847 (= e!1135718 (and tp!502944 (inv!25397 (tag!3881 rule!422)) (inv!25402 (transformation!3495 rule!422)) e!1135698))))

(declare-fun b!1774848 () Bool)

(declare-fun res!799518 () Bool)

(declare-fun e!1135699 () Bool)

(assert (=> b!1774848 (=> res!799518 e!1135699)))

(declare-fun isEmpty!12342 (List!19608) Bool)

(assert (=> b!1774848 (= res!799518 (isEmpty!12342 suffix!1421))))

(declare-fun b!1774849 () Bool)

(declare-fun e!1135708 () Bool)

(assert (=> b!1774849 (= e!1135708 (not e!1135699))))

(declare-fun res!799511 () Bool)

(assert (=> b!1774849 (=> res!799511 e!1135699)))

(assert (=> b!1774849 (= res!799511 (not (matchR!2296 (regex!3495 rule!422) lt!687829)))))

(declare-fun ruleValid!993 (LexerInterface!3124 Rule!6790) Bool)

(assert (=> b!1774849 (ruleValid!993 thiss!24550 rule!422)))

(declare-fun lt!687806 () Unit!33760)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!516 (LexerInterface!3124 Rule!6790 List!19609) Unit!33760)

(assert (=> b!1774849 (= lt!687806 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!516 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1774850 () Bool)

(declare-fun e!1135695 () Bool)

(assert (=> b!1774850 (= e!1135699 e!1135695)))

(declare-fun res!799521 () Bool)

(assert (=> b!1774850 (=> res!799521 e!1135695)))

(declare-fun prefixMatch!706 (Regex!4823 List!19608) Bool)

(assert (=> b!1774850 (= res!799521 (prefixMatch!706 lt!687826 lt!687814))))

(assert (=> b!1774850 (= lt!687814 (++!5319 lt!687829 (Cons!19538 (head!4132 suffix!1421) Nil!19538)))))

(declare-fun rulesRegex!851 (LexerInterface!3124 List!19609) Regex!4823)

(assert (=> b!1774850 (= lt!687826 (rulesRegex!851 thiss!24550 rules!3447))))

(declare-fun e!1135693 () Bool)

(declare-fun tp!502941 () Bool)

(declare-fun b!1774851 () Bool)

(declare-fun inv!21 (TokenValue!3585) Bool)

(assert (=> b!1774851 (= e!1135693 (and (inv!21 (value!109280 token!523)) e!1135701 tp!502941))))

(declare-fun tp!502940 () Bool)

(declare-fun b!1774852 () Bool)

(assert (=> b!1774852 (= e!1135696 (and tp!502940 (inv!25397 (tag!3881 (h!24940 rules!3447))) (inv!25402 (transformation!3495 (h!24940 rules!3447))) e!1135697))))

(declare-fun b!1774853 () Bool)

(declare-fun e!1135715 () Bool)

(assert (=> b!1774853 (= e!1135702 e!1135715)))

(declare-fun res!799504 () Bool)

(assert (=> b!1774853 (=> (not res!799504) (not e!1135715))))

(declare-fun lt!687834 () Option!4013)

(declare-fun isDefined!3355 (Option!4013) Bool)

(assert (=> b!1774853 (= res!799504 (isDefined!3355 lt!687834))))

(declare-fun maxPrefix!1678 (LexerInterface!3124 List!19609 List!19608) Option!4013)

(assert (=> b!1774853 (= lt!687834 (maxPrefix!1678 thiss!24550 rules!3447 lt!687829))))

(declare-fun lt!687817 () BalanceConc!12942)

(assert (=> b!1774853 (= lt!687829 (list!7941 lt!687817))))

(assert (=> b!1774853 (= lt!687817 (charsOf!2144 token!523))))

(declare-fun b!1774854 () Bool)

(assert (=> b!1774854 (= e!1135695 e!1135707)))

(declare-fun res!799505 () Bool)

(assert (=> b!1774854 (=> res!799505 e!1135707)))

(assert (=> b!1774854 (= res!799505 (not (isPrefix!1735 lt!687816 lt!687830)))))

(assert (=> b!1774854 (isPrefix!1735 lt!687816 (++!5319 lt!687816 (_2!10973 lt!687823)))))

(declare-fun lt!687844 () Unit!33760)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1244 (List!19608 List!19608) Unit!33760)

(assert (=> b!1774854 (= lt!687844 (lemmaConcatTwoListThenFirstIsPrefix!1244 lt!687816 (_2!10973 lt!687823)))))

(declare-fun lt!687819 () BalanceConc!12942)

(assert (=> b!1774854 (= lt!687816 (list!7941 lt!687819))))

(assert (=> b!1774854 (= lt!687819 (charsOf!2144 (_1!10973 lt!687823)))))

(assert (=> b!1774854 e!1135692))

(declare-fun res!799516 () Bool)

(assert (=> b!1774854 (=> (not res!799516) (not e!1135692))))

(declare-fun isDefined!3356 (Option!4012) Bool)

(assert (=> b!1774854 (= res!799516 (isDefined!3356 lt!687821))))

(declare-fun getRuleFromTag!543 (LexerInterface!3124 List!19609 String!22257) Option!4012)

(assert (=> b!1774854 (= lt!687821 (getRuleFromTag!543 thiss!24550 rules!3447 (tag!3881 (rule!5551 (_1!10973 lt!687823)))))))

(declare-fun lt!687837 () Unit!33760)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!543 (LexerInterface!3124 List!19609 List!19608 Token!6556) Unit!33760)

(assert (=> b!1774854 (= lt!687837 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!543 thiss!24550 rules!3447 lt!687830 (_1!10973 lt!687823)))))

(declare-fun lt!687845 () Option!4013)

(declare-fun get!5978 (Option!4013) tuple2!19142)

(assert (=> b!1774854 (= lt!687823 (get!5978 lt!687845))))

(declare-fun lt!687828 () Unit!33760)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!646 (LexerInterface!3124 List!19609 List!19608 List!19608) Unit!33760)

(assert (=> b!1774854 (= lt!687828 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!646 thiss!24550 rules!3447 lt!687829 suffix!1421))))

(assert (=> b!1774854 (= lt!687845 (maxPrefix!1678 thiss!24550 rules!3447 lt!687830))))

(assert (=> b!1774854 (isPrefix!1735 lt!687829 lt!687830)))

(declare-fun lt!687810 () Unit!33760)

(assert (=> b!1774854 (= lt!687810 (lemmaConcatTwoListThenFirstIsPrefix!1244 lt!687829 suffix!1421))))

(assert (=> b!1774854 (= lt!687830 (++!5319 lt!687829 suffix!1421))))

(declare-fun b!1774855 () Bool)

(declare-fun res!799508 () Bool)

(assert (=> b!1774855 (=> (not res!799508) (not e!1135708))))

(assert (=> b!1774855 (= res!799508 (= (rule!5551 token!523) rule!422))))

(declare-fun b!1774856 () Bool)

(declare-fun res!799509 () Bool)

(declare-fun e!1135703 () Bool)

(assert (=> b!1774856 (=> res!799509 e!1135703)))

(declare-fun dynLambda!9523 (Int TokenValue!3585) BalanceConc!12942)

(assert (=> b!1774856 (= res!799509 (not (= lt!687819 (dynLambda!9523 (toChars!4881 (transformation!3495 (rule!5551 (_1!10973 lt!687823)))) (value!109280 (_1!10973 lt!687823))))))))

(declare-fun b!1774857 () Bool)

(declare-fun Unit!33763 () Unit!33760)

(assert (=> b!1774857 (= e!1135710 Unit!33763)))

(declare-fun b!1774858 () Bool)

(assert (=> b!1774858 (= e!1135703 e!1135712)))

(declare-fun res!799503 () Bool)

(assert (=> b!1774858 (=> res!799503 e!1135712)))

(declare-fun lt!687827 () Int)

(declare-fun lt!687832 () TokenValue!3585)

(assert (=> b!1774858 (= res!799503 (not (= lt!687845 (Some!4012 (tuple2!19143 (Token!6557 lt!687832 (rule!5551 (_1!10973 lt!687823)) lt!687827 lt!687816) (_2!10973 lt!687823))))))))

(declare-fun size!15522 (BalanceConc!12942) Int)

(assert (=> b!1774858 (= lt!687827 (size!15522 lt!687819))))

(assert (=> b!1774858 (= lt!687832 (apply!5295 (transformation!3495 (rule!5551 (_1!10973 lt!687823))) lt!687819))))

(declare-fun lt!687824 () Unit!33760)

(declare-fun lemmaCharactersSize!553 (Token!6556) Unit!33760)

(assert (=> b!1774858 (= lt!687824 (lemmaCharactersSize!553 (_1!10973 lt!687823)))))

(declare-fun lt!687812 () Unit!33760)

(declare-fun lemmaEqSameImage!406 (TokenValueInjection!6830 BalanceConc!12942 BalanceConc!12942) Unit!33760)

(assert (=> b!1774858 (= lt!687812 (lemmaEqSameImage!406 (transformation!3495 (rule!5551 (_1!10973 lt!687823))) lt!687819 (seqFromList!2464 (originalCharacters!4309 (_1!10973 lt!687823)))))))

(declare-fun b!1774859 () Bool)

(declare-fun e!1135711 () Bool)

(assert (=> b!1774859 (= e!1135711 e!1135703)))

(declare-fun res!799507 () Bool)

(assert (=> b!1774859 (=> res!799507 e!1135703)))

(declare-fun dynLambda!9524 (Int BalanceConc!12942) TokenValue!3585)

(assert (=> b!1774859 (= res!799507 (not (= (list!7941 (dynLambda!9523 (toChars!4881 (transformation!3495 (rule!5551 (_1!10973 lt!687823)))) (dynLambda!9524 (toValue!5022 (transformation!3495 (rule!5551 (_1!10973 lt!687823)))) lt!687819))) lt!687816)))))

(declare-fun lt!687835 () Unit!33760)

(declare-fun lemmaSemiInverse!633 (TokenValueInjection!6830 BalanceConc!12942) Unit!33760)

(assert (=> b!1774859 (= lt!687835 (lemmaSemiInverse!633 (transformation!3495 (rule!5551 (_1!10973 lt!687823))) lt!687819))))

(assert (=> b!1774860 (= e!1135707 e!1135711)))

(declare-fun res!799514 () Bool)

(assert (=> b!1774860 (=> res!799514 e!1135711)))

(declare-fun Forall!862 (Int) Bool)

(assert (=> b!1774860 (= res!799514 (not (Forall!862 lambda!70520)))))

(declare-fun lt!687818 () Unit!33760)

(declare-fun lemmaInv!694 (TokenValueInjection!6830) Unit!33760)

(assert (=> b!1774860 (= lt!687818 (lemmaInv!694 (transformation!3495 (rule!5551 (_1!10973 lt!687823)))))))

(declare-fun res!799510 () Bool)

(assert (=> start!176290 (=> (not res!799510) (not e!1135702))))

(get-info :version)

(assert (=> start!176290 (= res!799510 ((_ is Lexer!3122) thiss!24550))))

(assert (=> start!176290 e!1135702))

(assert (=> start!176290 e!1135704))

(assert (=> start!176290 e!1135718))

(assert (=> start!176290 true))

(declare-fun inv!25403 (Token!6556) Bool)

(assert (=> start!176290 (and (inv!25403 token!523) e!1135693)))

(assert (=> start!176290 e!1135717))

(declare-fun b!1774861 () Bool)

(declare-fun e!1135713 () Bool)

(assert (=> b!1774861 (= e!1135714 e!1135713)))

(declare-fun res!799515 () Bool)

(assert (=> b!1774861 (=> res!799515 e!1135713)))

(declare-fun lt!687840 () Int)

(declare-fun lt!687836 () Bool)

(assert (=> b!1774861 (= res!799515 (or lt!687836 (>= lt!687827 lt!687840)))))

(declare-fun lt!687808 () Unit!33760)

(assert (=> b!1774861 (= lt!687808 e!1135710)))

(declare-fun c!288981 () Bool)

(assert (=> b!1774861 (= c!288981 lt!687836)))

(assert (=> b!1774861 (= lt!687836 (> lt!687827 lt!687840))))

(assert (=> b!1774861 (= lt!687840 (size!15522 lt!687817))))

(assert (=> b!1774861 (matchR!2296 lt!687826 lt!687829)))

(declare-fun lt!687843 () Unit!33760)

(assert (=> b!1774861 (= lt!687843 (lemmaMaxPrefixThenMatchesRulesRegex!202 thiss!24550 rules!3447 lt!687829 token!523 rule!422 Nil!19538))))

(declare-fun b!1774862 () Bool)

(assert (=> b!1774862 (= e!1135715 e!1135708)))

(declare-fun res!799506 () Bool)

(assert (=> b!1774862 (=> (not res!799506) (not e!1135708))))

(declare-fun lt!687807 () tuple2!19142)

(assert (=> b!1774862 (= res!799506 (= (_1!10973 lt!687807) token!523))))

(assert (=> b!1774862 (= lt!687807 (get!5978 lt!687834))))

(declare-fun b!1774863 () Bool)

(declare-fun res!799520 () Bool)

(assert (=> b!1774863 (=> (not res!799520) (not e!1135702))))

(declare-fun isEmpty!12343 (List!19609) Bool)

(assert (=> b!1774863 (= res!799520 (not (isEmpty!12343 rules!3447)))))

(declare-fun b!1774864 () Bool)

(declare-fun res!799517 () Bool)

(assert (=> b!1774864 (=> (not res!799517) (not e!1135708))))

(assert (=> b!1774864 (= res!799517 (isEmpty!12342 (_2!10973 lt!687807)))))

(declare-fun b!1774865 () Bool)

(assert (=> b!1774865 (= e!1135713 true)))

(declare-fun lt!687815 () Bool)

(assert (=> b!1774865 (= lt!687815 (contains!3527 rules!3447 (rule!5551 (_1!10973 lt!687823))))))

(assert (= (and start!176290 res!799510) b!1774863))

(assert (= (and b!1774863 res!799520) b!1774838))

(assert (= (and b!1774838 res!799522) b!1774846))

(assert (= (and b!1774846 res!799502) b!1774853))

(assert (= (and b!1774853 res!799504) b!1774862))

(assert (= (and b!1774862 res!799506) b!1774864))

(assert (= (and b!1774864 res!799517) b!1774855))

(assert (= (and b!1774855 res!799508) b!1774849))

(assert (= (and b!1774849 (not res!799511)) b!1774848))

(assert (= (and b!1774848 (not res!799518)) b!1774850))

(assert (= (and b!1774850 (not res!799521)) b!1774854))

(assert (= (and b!1774854 res!799516) b!1774840))

(assert (= (and b!1774840 res!799519) b!1774844))

(assert (= (and b!1774854 (not res!799505)) b!1774837))

(assert (= (and b!1774837 (not res!799513)) b!1774860))

(assert (= (and b!1774860 (not res!799514)) b!1774859))

(assert (= (and b!1774859 (not res!799507)) b!1774856))

(assert (= (and b!1774856 (not res!799509)) b!1774858))

(assert (= (and b!1774858 (not res!799503)) b!1774841))

(assert (= (and b!1774841 (not res!799512)) b!1774861))

(assert (= (and b!1774861 c!288981) b!1774843))

(assert (= (and b!1774861 (not c!288981)) b!1774857))

(assert (= (and b!1774861 (not res!799515)) b!1774865))

(assert (= (and start!176290 ((_ is Cons!19538) suffix!1421)) b!1774845))

(assert (= b!1774847 b!1774836))

(assert (= start!176290 b!1774847))

(assert (= b!1774835 b!1774839))

(assert (= b!1774851 b!1774835))

(assert (= start!176290 b!1774851))

(assert (= b!1774852 b!1774834))

(assert (= b!1774842 b!1774852))

(assert (= (and start!176290 ((_ is Cons!19539) rules!3447)) b!1774842))

(declare-fun b_lambda!57911 () Bool)

(assert (=> (not b_lambda!57911) (not b!1774856)))

(declare-fun tb!107571 () Bool)

(declare-fun t!165769 () Bool)

(assert (=> (and b!1774839 (= (toChars!4881 (transformation!3495 (rule!5551 token!523))) (toChars!4881 (transformation!3495 (rule!5551 (_1!10973 lt!687823))))) t!165769) tb!107571))

(declare-fun b!1774881 () Bool)

(declare-fun e!1135730 () Bool)

(declare-fun tp!502949 () Bool)

(declare-fun inv!25404 (Conc!6499) Bool)

(assert (=> b!1774881 (= e!1135730 (and (inv!25404 (c!288983 (dynLambda!9523 (toChars!4881 (transformation!3495 (rule!5551 (_1!10973 lt!687823)))) (value!109280 (_1!10973 lt!687823))))) tp!502949))))

(declare-fun result!129398 () Bool)

(declare-fun inv!25405 (BalanceConc!12942) Bool)

(assert (=> tb!107571 (= result!129398 (and (inv!25405 (dynLambda!9523 (toChars!4881 (transformation!3495 (rule!5551 (_1!10973 lt!687823)))) (value!109280 (_1!10973 lt!687823)))) e!1135730))))

(assert (= tb!107571 b!1774881))

(declare-fun m!2194927 () Bool)

(assert (=> b!1774881 m!2194927))

(declare-fun m!2194929 () Bool)

(assert (=> tb!107571 m!2194929))

(assert (=> b!1774856 t!165769))

(declare-fun b_and!135351 () Bool)

(assert (= b_and!135341 (and (=> t!165769 result!129398) b_and!135351)))

(declare-fun tb!107573 () Bool)

(declare-fun t!165771 () Bool)

(assert (=> (and b!1774836 (= (toChars!4881 (transformation!3495 rule!422)) (toChars!4881 (transformation!3495 (rule!5551 (_1!10973 lt!687823))))) t!165771) tb!107573))

(declare-fun result!129402 () Bool)

(assert (= result!129402 result!129398))

(assert (=> b!1774856 t!165771))

(declare-fun b_and!135353 () Bool)

(assert (= b_and!135345 (and (=> t!165771 result!129402) b_and!135353)))

(declare-fun tb!107575 () Bool)

(declare-fun t!165773 () Bool)

(assert (=> (and b!1774834 (= (toChars!4881 (transformation!3495 (h!24940 rules!3447))) (toChars!4881 (transformation!3495 (rule!5551 (_1!10973 lt!687823))))) t!165773) tb!107575))

(declare-fun result!129404 () Bool)

(assert (= result!129404 result!129398))

(assert (=> b!1774856 t!165773))

(declare-fun b_and!135355 () Bool)

(assert (= b_and!135349 (and (=> t!165773 result!129404) b_and!135355)))

(declare-fun b_lambda!57913 () Bool)

(assert (=> (not b_lambda!57913) (not b!1774859)))

(declare-fun tb!107577 () Bool)

(declare-fun t!165775 () Bool)

(assert (=> (and b!1774839 (= (toChars!4881 (transformation!3495 (rule!5551 token!523))) (toChars!4881 (transformation!3495 (rule!5551 (_1!10973 lt!687823))))) t!165775) tb!107577))

(declare-fun e!1135731 () Bool)

(declare-fun tp!502950 () Bool)

(declare-fun b!1774882 () Bool)

(assert (=> b!1774882 (= e!1135731 (and (inv!25404 (c!288983 (dynLambda!9523 (toChars!4881 (transformation!3495 (rule!5551 (_1!10973 lt!687823)))) (dynLambda!9524 (toValue!5022 (transformation!3495 (rule!5551 (_1!10973 lt!687823)))) lt!687819)))) tp!502950))))

(declare-fun result!129406 () Bool)

(assert (=> tb!107577 (= result!129406 (and (inv!25405 (dynLambda!9523 (toChars!4881 (transformation!3495 (rule!5551 (_1!10973 lt!687823)))) (dynLambda!9524 (toValue!5022 (transformation!3495 (rule!5551 (_1!10973 lt!687823)))) lt!687819))) e!1135731))))

(assert (= tb!107577 b!1774882))

(declare-fun m!2194931 () Bool)

(assert (=> b!1774882 m!2194931))

(declare-fun m!2194933 () Bool)

(assert (=> tb!107577 m!2194933))

(assert (=> b!1774859 t!165775))

(declare-fun b_and!135357 () Bool)

(assert (= b_and!135351 (and (=> t!165775 result!129406) b_and!135357)))

(declare-fun tb!107579 () Bool)

(declare-fun t!165777 () Bool)

(assert (=> (and b!1774836 (= (toChars!4881 (transformation!3495 rule!422)) (toChars!4881 (transformation!3495 (rule!5551 (_1!10973 lt!687823))))) t!165777) tb!107579))

(declare-fun result!129408 () Bool)

(assert (= result!129408 result!129406))

(assert (=> b!1774859 t!165777))

(declare-fun b_and!135359 () Bool)

(assert (= b_and!135353 (and (=> t!165777 result!129408) b_and!135359)))

(declare-fun t!165779 () Bool)

(declare-fun tb!107581 () Bool)

(assert (=> (and b!1774834 (= (toChars!4881 (transformation!3495 (h!24940 rules!3447))) (toChars!4881 (transformation!3495 (rule!5551 (_1!10973 lt!687823))))) t!165779) tb!107581))

(declare-fun result!129410 () Bool)

(assert (= result!129410 result!129406))

(assert (=> b!1774859 t!165779))

(declare-fun b_and!135361 () Bool)

(assert (= b_and!135355 (and (=> t!165779 result!129410) b_and!135361)))

(declare-fun b_lambda!57915 () Bool)

(assert (=> (not b_lambda!57915) (not b!1774859)))

(declare-fun t!165781 () Bool)

(declare-fun tb!107583 () Bool)

(assert (=> (and b!1774839 (= (toValue!5022 (transformation!3495 (rule!5551 token!523))) (toValue!5022 (transformation!3495 (rule!5551 (_1!10973 lt!687823))))) t!165781) tb!107583))

(declare-fun result!129412 () Bool)

(assert (=> tb!107583 (= result!129412 (inv!21 (dynLambda!9524 (toValue!5022 (transformation!3495 (rule!5551 (_1!10973 lt!687823)))) lt!687819)))))

(declare-fun m!2194935 () Bool)

(assert (=> tb!107583 m!2194935))

(assert (=> b!1774859 t!165781))

(declare-fun b_and!135363 () Bool)

(assert (= b_and!135339 (and (=> t!165781 result!129412) b_and!135363)))

(declare-fun tb!107585 () Bool)

(declare-fun t!165783 () Bool)

(assert (=> (and b!1774836 (= (toValue!5022 (transformation!3495 rule!422)) (toValue!5022 (transformation!3495 (rule!5551 (_1!10973 lt!687823))))) t!165783) tb!107585))

(declare-fun result!129416 () Bool)

(assert (= result!129416 result!129412))

(assert (=> b!1774859 t!165783))

(declare-fun b_and!135365 () Bool)

(assert (= b_and!135343 (and (=> t!165783 result!129416) b_and!135365)))

(declare-fun tb!107587 () Bool)

(declare-fun t!165785 () Bool)

(assert (=> (and b!1774834 (= (toValue!5022 (transformation!3495 (h!24940 rules!3447))) (toValue!5022 (transformation!3495 (rule!5551 (_1!10973 lt!687823))))) t!165785) tb!107587))

(declare-fun result!129418 () Bool)

(assert (= result!129418 result!129412))

(assert (=> b!1774859 t!165785))

(declare-fun b_and!135367 () Bool)

(assert (= b_and!135347 (and (=> t!165785 result!129418) b_and!135367)))

(declare-fun m!2194937 () Bool)

(assert (=> b!1774850 m!2194937))

(declare-fun m!2194939 () Bool)

(assert (=> b!1774850 m!2194939))

(declare-fun m!2194941 () Bool)

(assert (=> b!1774850 m!2194941))

(declare-fun m!2194943 () Bool)

(assert (=> b!1774850 m!2194943))

(declare-fun m!2194945 () Bool)

(assert (=> b!1774835 m!2194945))

(declare-fun m!2194947 () Bool)

(assert (=> b!1774835 m!2194947))

(declare-fun m!2194949 () Bool)

(assert (=> b!1774841 m!2194949))

(declare-fun m!2194951 () Bool)

(assert (=> b!1774841 m!2194951))

(declare-fun m!2194953 () Bool)

(assert (=> b!1774841 m!2194953))

(assert (=> b!1774841 m!2194951))

(declare-fun m!2194955 () Bool)

(assert (=> b!1774841 m!2194955))

(declare-fun m!2194957 () Bool)

(assert (=> b!1774841 m!2194957))

(declare-fun m!2194959 () Bool)

(assert (=> b!1774841 m!2194959))

(declare-fun m!2194961 () Bool)

(assert (=> b!1774841 m!2194961))

(declare-fun m!2194963 () Bool)

(assert (=> b!1774858 m!2194963))

(assert (=> b!1774858 m!2194963))

(declare-fun m!2194965 () Bool)

(assert (=> b!1774858 m!2194965))

(declare-fun m!2194967 () Bool)

(assert (=> b!1774858 m!2194967))

(declare-fun m!2194969 () Bool)

(assert (=> b!1774858 m!2194969))

(declare-fun m!2194971 () Bool)

(assert (=> b!1774858 m!2194971))

(declare-fun m!2194973 () Bool)

(assert (=> b!1774865 m!2194973))

(declare-fun m!2194975 () Bool)

(assert (=> b!1774860 m!2194975))

(declare-fun m!2194977 () Bool)

(assert (=> b!1774860 m!2194977))

(declare-fun m!2194979 () Bool)

(assert (=> b!1774864 m!2194979))

(declare-fun m!2194981 () Bool)

(assert (=> b!1774847 m!2194981))

(declare-fun m!2194983 () Bool)

(assert (=> b!1774847 m!2194983))

(declare-fun m!2194985 () Bool)

(assert (=> b!1774851 m!2194985))

(declare-fun m!2194987 () Bool)

(assert (=> b!1774859 m!2194987))

(assert (=> b!1774859 m!2194987))

(declare-fun m!2194989 () Bool)

(assert (=> b!1774859 m!2194989))

(assert (=> b!1774859 m!2194989))

(declare-fun m!2194991 () Bool)

(assert (=> b!1774859 m!2194991))

(declare-fun m!2194993 () Bool)

(assert (=> b!1774859 m!2194993))

(declare-fun m!2194995 () Bool)

(assert (=> b!1774854 m!2194995))

(declare-fun m!2194997 () Bool)

(assert (=> b!1774854 m!2194997))

(declare-fun m!2194999 () Bool)

(assert (=> b!1774854 m!2194999))

(declare-fun m!2195001 () Bool)

(assert (=> b!1774854 m!2195001))

(declare-fun m!2195003 () Bool)

(assert (=> b!1774854 m!2195003))

(declare-fun m!2195005 () Bool)

(assert (=> b!1774854 m!2195005))

(declare-fun m!2195007 () Bool)

(assert (=> b!1774854 m!2195007))

(declare-fun m!2195009 () Bool)

(assert (=> b!1774854 m!2195009))

(declare-fun m!2195011 () Bool)

(assert (=> b!1774854 m!2195011))

(declare-fun m!2195013 () Bool)

(assert (=> b!1774854 m!2195013))

(declare-fun m!2195015 () Bool)

(assert (=> b!1774854 m!2195015))

(declare-fun m!2195017 () Bool)

(assert (=> b!1774854 m!2195017))

(declare-fun m!2195019 () Bool)

(assert (=> b!1774854 m!2195019))

(declare-fun m!2195021 () Bool)

(assert (=> b!1774854 m!2195021))

(assert (=> b!1774854 m!2194999))

(declare-fun m!2195023 () Bool)

(assert (=> b!1774854 m!2195023))

(declare-fun m!2195025 () Bool)

(assert (=> b!1774848 m!2195025))

(declare-fun m!2195027 () Bool)

(assert (=> b!1774837 m!2195027))

(declare-fun m!2195029 () Bool)

(assert (=> b!1774862 m!2195029))

(declare-fun m!2195031 () Bool)

(assert (=> b!1774838 m!2195031))

(assert (=> b!1774840 m!2194995))

(assert (=> b!1774840 m!2194995))

(declare-fun m!2195033 () Bool)

(assert (=> b!1774840 m!2195033))

(assert (=> b!1774840 m!2195033))

(declare-fun m!2195035 () Bool)

(assert (=> b!1774840 m!2195035))

(declare-fun m!2195037 () Bool)

(assert (=> b!1774840 m!2195037))

(declare-fun m!2195039 () Bool)

(assert (=> b!1774853 m!2195039))

(declare-fun m!2195041 () Bool)

(assert (=> b!1774853 m!2195041))

(declare-fun m!2195043 () Bool)

(assert (=> b!1774853 m!2195043))

(declare-fun m!2195045 () Bool)

(assert (=> b!1774853 m!2195045))

(declare-fun m!2195047 () Bool)

(assert (=> b!1774856 m!2195047))

(declare-fun m!2195049 () Bool)

(assert (=> b!1774846 m!2195049))

(declare-fun m!2195051 () Bool)

(assert (=> start!176290 m!2195051))

(declare-fun m!2195053 () Bool)

(assert (=> b!1774843 m!2195053))

(declare-fun m!2195055 () Bool)

(assert (=> b!1774843 m!2195055))

(declare-fun m!2195057 () Bool)

(assert (=> b!1774843 m!2195057))

(assert (=> b!1774843 m!2195055))

(declare-fun m!2195059 () Bool)

(assert (=> b!1774843 m!2195059))

(declare-fun m!2195061 () Bool)

(assert (=> b!1774843 m!2195061))

(declare-fun m!2195063 () Bool)

(assert (=> b!1774843 m!2195063))

(declare-fun m!2195065 () Bool)

(assert (=> b!1774843 m!2195065))

(declare-fun m!2195067 () Bool)

(assert (=> b!1774843 m!2195067))

(declare-fun m!2195069 () Bool)

(assert (=> b!1774843 m!2195069))

(declare-fun m!2195071 () Bool)

(assert (=> b!1774843 m!2195071))

(declare-fun m!2195073 () Bool)

(assert (=> b!1774843 m!2195073))

(declare-fun m!2195075 () Bool)

(assert (=> b!1774852 m!2195075))

(declare-fun m!2195077 () Bool)

(assert (=> b!1774852 m!2195077))

(declare-fun m!2195079 () Bool)

(assert (=> b!1774863 m!2195079))

(declare-fun m!2195081 () Bool)

(assert (=> b!1774861 m!2195081))

(declare-fun m!2195083 () Bool)

(assert (=> b!1774861 m!2195083))

(declare-fun m!2195085 () Bool)

(assert (=> b!1774861 m!2195085))

(declare-fun m!2195087 () Bool)

(assert (=> b!1774849 m!2195087))

(declare-fun m!2195089 () Bool)

(assert (=> b!1774849 m!2195089))

(declare-fun m!2195091 () Bool)

(assert (=> b!1774849 m!2195091))

(check-sat (not b!1774842) (not b!1774851) (not b!1774865) b_and!135359 (not b!1774863) b_and!135367 (not b!1774847) (not b!1774854) (not b!1774850) (not start!176290) (not b_next!49855) (not b!1774846) (not b!1774849) (not b_next!49857) (not b!1774848) b_and!135361 (not b_lambda!57915) (not b!1774859) (not b_next!49859) b_and!135363 (not b_next!49863) (not b!1774862) (not b!1774845) (not b!1774843) (not tb!107583) (not b!1774860) (not b!1774864) (not b!1774861) (not b!1774882) (not tb!107571) (not b!1774838) (not b_lambda!57913) (not b!1774837) (not b!1774840) (not b_next!49865) b_and!135365 (not b_next!49861) (not b!1774841) (not b!1774852) (not b!1774881) (not b!1774858) (not tb!107577) (not b_lambda!57911) (not b!1774835) (not b!1774853) tp_is_empty!7889 b_and!135357)
(check-sat b_and!135361 (not b_next!49859) b_and!135359 b_and!135367 (not b_next!49861) (not b_next!49855) b_and!135357 (not b_next!49857) b_and!135363 (not b_next!49863) (not b_next!49865) b_and!135365)
