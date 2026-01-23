; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!173158 () Bool)

(assert start!173158)

(declare-fun b!1754838 () Bool)

(declare-fun b_free!48455 () Bool)

(declare-fun b_next!49159 () Bool)

(assert (=> b!1754838 (= b_free!48455 (not b_next!49159))))

(declare-fun tp!498939 () Bool)

(declare-fun b_and!131619 () Bool)

(assert (=> b!1754838 (= tp!498939 b_and!131619)))

(declare-fun b_free!48457 () Bool)

(declare-fun b_next!49161 () Bool)

(assert (=> b!1754838 (= b_free!48457 (not b_next!49161))))

(declare-fun tp!498943 () Bool)

(declare-fun b_and!131621 () Bool)

(assert (=> b!1754838 (= tp!498943 b_and!131621)))

(declare-fun b!1754845 () Bool)

(declare-fun b_free!48459 () Bool)

(declare-fun b_next!49163 () Bool)

(assert (=> b!1754845 (= b_free!48459 (not b_next!49163))))

(declare-fun tp!498933 () Bool)

(declare-fun b_and!131623 () Bool)

(assert (=> b!1754845 (= tp!498933 b_and!131623)))

(declare-fun b_free!48461 () Bool)

(declare-fun b_next!49165 () Bool)

(assert (=> b!1754845 (= b_free!48461 (not b_next!49165))))

(declare-fun tp!498938 () Bool)

(declare-fun b_and!131625 () Bool)

(assert (=> b!1754845 (= tp!498938 b_and!131625)))

(declare-fun b!1754832 () Bool)

(declare-fun b_free!48463 () Bool)

(declare-fun b_next!49167 () Bool)

(assert (=> b!1754832 (= b_free!48463 (not b_next!49167))))

(declare-fun tp!498940 () Bool)

(declare-fun b_and!131627 () Bool)

(assert (=> b!1754832 (= tp!498940 b_and!131627)))

(declare-fun b_free!48465 () Bool)

(declare-fun b_next!49169 () Bool)

(assert (=> b!1754832 (= b_free!48465 (not b_next!49169))))

(declare-fun tp!498937 () Bool)

(declare-fun b_and!131629 () Bool)

(assert (=> b!1754832 (= tp!498937 b_and!131629)))

(declare-fun b!1754860 () Bool)

(declare-fun e!1123173 () Bool)

(assert (=> b!1754860 (= e!1123173 true)))

(declare-fun b!1754859 () Bool)

(declare-fun e!1123172 () Bool)

(assert (=> b!1754859 (= e!1123172 e!1123173)))

(declare-fun b!1754858 () Bool)

(declare-fun e!1123171 () Bool)

(assert (=> b!1754858 (= e!1123171 e!1123172)))

(declare-fun b!1754830 () Bool)

(assert (=> b!1754830 e!1123171))

(assert (= b!1754859 b!1754860))

(assert (= b!1754858 b!1754859))

(assert (= b!1754830 b!1754858))

(declare-datatypes ((List!19373 0))(
  ( (Nil!19303) (Cons!19303 (h!24704 (_ BitVec 16)) (t!163376 List!19373)) )
))
(declare-datatypes ((TokenValue!3539 0))(
  ( (FloatLiteralValue!7078 (text!25218 List!19373)) (TokenValueExt!3538 (__x!12380 Int)) (Broken!17695 (value!107943 List!19373)) (Object!3608) (End!3539) (Def!3539) (Underscore!3539) (Match!3539) (Else!3539) (Error!3539) (Case!3539) (If!3539) (Extends!3539) (Abstract!3539) (Class!3539) (Val!3539) (DelimiterValue!7078 (del!3599 List!19373)) (KeywordValue!3545 (value!107944 List!19373)) (CommentValue!7078 (value!107945 List!19373)) (WhitespaceValue!7078 (value!107946 List!19373)) (IndentationValue!3539 (value!107947 List!19373)) (String!22026) (Int32!3539) (Broken!17696 (value!107948 List!19373)) (Boolean!3540) (Unit!33464) (OperatorValue!3542 (op!3599 List!19373)) (IdentifierValue!7078 (value!107949 List!19373)) (IdentifierValue!7079 (value!107950 List!19373)) (WhitespaceValue!7079 (value!107951 List!19373)) (True!7078) (False!7078) (Broken!17697 (value!107952 List!19373)) (Broken!17698 (value!107953 List!19373)) (True!7079) (RightBrace!3539) (RightBracket!3539) (Colon!3539) (Null!3539) (Comma!3539) (LeftBracket!3539) (False!7079) (LeftBrace!3539) (ImaginaryLiteralValue!3539 (text!25219 List!19373)) (StringLiteralValue!10617 (value!107954 List!19373)) (EOFValue!3539 (value!107955 List!19373)) (IdentValue!3539 (value!107956 List!19373)) (DelimiterValue!7079 (value!107957 List!19373)) (DedentValue!3539 (value!107958 List!19373)) (NewLineValue!3539 (value!107959 List!19373)) (IntegerValue!10617 (value!107960 (_ BitVec 32)) (text!25220 List!19373)) (IntegerValue!10618 (value!107961 Int) (text!25221 List!19373)) (Times!3539) (Or!3539) (Equal!3539) (Minus!3539) (Broken!17699 (value!107962 List!19373)) (And!3539) (Div!3539) (LessEqual!3539) (Mod!3539) (Concat!8316) (Not!3539) (Plus!3539) (SpaceValue!3539 (value!107963 List!19373)) (IntegerValue!10619 (value!107964 Int) (text!25222 List!19373)) (StringLiteralValue!10618 (text!25223 List!19373)) (FloatLiteralValue!7079 (text!25224 List!19373)) (BytesLiteralValue!3539 (value!107965 List!19373)) (CommentValue!7079 (value!107966 List!19373)) (StringLiteralValue!10619 (value!107967 List!19373)) (ErrorTokenValue!3539 (msg!3600 List!19373)) )
))
(declare-datatypes ((C!9728 0))(
  ( (C!9729 (val!5460 Int)) )
))
(declare-datatypes ((List!19374 0))(
  ( (Nil!19304) (Cons!19304 (h!24705 C!9728) (t!163377 List!19374)) )
))
(declare-datatypes ((Regex!4777 0))(
  ( (ElementMatch!4777 (c!286088 C!9728)) (Concat!8317 (regOne!10066 Regex!4777) (regTwo!10066 Regex!4777)) (EmptyExpr!4777) (Star!4777 (reg!5106 Regex!4777)) (EmptyLang!4777) (Union!4777 (regOne!10067 Regex!4777) (regTwo!10067 Regex!4777)) )
))
(declare-datatypes ((String!22027 0))(
  ( (String!22028 (value!107968 String)) )
))
(declare-datatypes ((IArray!12847 0))(
  ( (IArray!12848 (innerList!6481 List!19374)) )
))
(declare-datatypes ((Conc!6421 0))(
  ( (Node!6421 (left!15455 Conc!6421) (right!15785 Conc!6421) (csize!13072 Int) (cheight!6632 Int)) (Leaf!9366 (xs!9297 IArray!12847) (csize!13073 Int)) (Empty!6421) )
))
(declare-datatypes ((BalanceConc!12786 0))(
  ( (BalanceConc!12787 (c!286089 Conc!6421)) )
))
(declare-datatypes ((TokenValueInjection!6738 0))(
  ( (TokenValueInjection!6739 (toValue!4968 Int) (toChars!4827 Int)) )
))
(declare-datatypes ((Rule!6698 0))(
  ( (Rule!6699 (regex!3449 Regex!4777) (tag!3803 String!22027) (isSeparator!3449 Bool) (transformation!3449 TokenValueInjection!6738)) )
))
(declare-datatypes ((Token!6464 0))(
  ( (Token!6465 (value!107969 TokenValue!3539) (rule!5463 Rule!6698) (size!15338 Int) (originalCharacters!4263 List!19374)) )
))
(declare-datatypes ((tuple2!18930 0))(
  ( (tuple2!18931 (_1!10867 Token!6464) (_2!10867 List!19374)) )
))
(declare-fun lt!677833 () tuple2!18930)

(declare-fun lambda!69980 () Int)

(declare-fun order!12175 () Int)

(declare-fun order!12177 () Int)

(declare-fun dynLambda!9247 (Int Int) Int)

(declare-fun dynLambda!9248 (Int Int) Int)

(assert (=> b!1754860 (< (dynLambda!9247 order!12175 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833))))) (dynLambda!9248 order!12177 lambda!69980))))

(declare-fun order!12179 () Int)

(declare-fun dynLambda!9249 (Int Int) Int)

(assert (=> b!1754860 (< (dynLambda!9249 order!12179 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833))))) (dynLambda!9248 order!12177 lambda!69980))))

(declare-fun b!1754822 () Bool)

(declare-fun res!789424 () Bool)

(declare-fun e!1123151 () Bool)

(assert (=> b!1754822 (=> (not res!789424) (not e!1123151))))

(declare-fun token!523 () Token!6464)

(declare-fun rule!422 () Rule!6698)

(assert (=> b!1754822 (= res!789424 (= (rule!5463 token!523) rule!422))))

(declare-fun b!1754823 () Bool)

(declare-fun res!789441 () Bool)

(declare-fun e!1123149 () Bool)

(assert (=> b!1754823 (=> (not res!789441) (not e!1123149))))

(declare-datatypes ((List!19375 0))(
  ( (Nil!19305) (Cons!19305 (h!24706 Rule!6698) (t!163378 List!19375)) )
))
(declare-fun rules!3447 () List!19375)

(declare-fun contains!3477 (List!19375 Rule!6698) Bool)

(assert (=> b!1754823 (= res!789441 (contains!3477 rules!3447 rule!422))))

(declare-fun tp!498942 () Bool)

(declare-fun b!1754824 () Bool)

(declare-fun e!1123147 () Bool)

(declare-fun e!1123155 () Bool)

(declare-fun inv!25051 (String!22027) Bool)

(declare-fun inv!25056 (TokenValueInjection!6738) Bool)

(assert (=> b!1754824 (= e!1123155 (and tp!498942 (inv!25051 (tag!3803 (h!24706 rules!3447))) (inv!25056 (transformation!3449 (h!24706 rules!3447))) e!1123147))))

(declare-fun b!1754825 () Bool)

(declare-fun e!1123146 () Bool)

(declare-fun tp_is_empty!7797 () Bool)

(declare-fun tp!498944 () Bool)

(assert (=> b!1754825 (= e!1123146 (and tp_is_empty!7797 tp!498944))))

(declare-fun b!1754826 () Bool)

(declare-fun e!1123154 () Bool)

(declare-fun e!1123162 () Bool)

(assert (=> b!1754826 (= e!1123154 e!1123162)))

(declare-fun res!789427 () Bool)

(assert (=> b!1754826 (=> res!789427 e!1123162)))

(declare-fun lt!677835 () BalanceConc!12786)

(declare-datatypes ((Option!3920 0))(
  ( (None!3919) (Some!3919 (v!25368 tuple2!18930)) )
))
(declare-fun lt!677836 () Option!3920)

(declare-fun lt!677843 () List!19374)

(declare-fun apply!5249 (TokenValueInjection!6738 BalanceConc!12786) TokenValue!3539)

(declare-fun size!15339 (BalanceConc!12786) Int)

(assert (=> b!1754826 (= res!789427 (not (= lt!677836 (Some!3919 (tuple2!18931 (Token!6465 (apply!5249 (transformation!3449 (rule!5463 (_1!10867 lt!677833))) lt!677835) (rule!5463 (_1!10867 lt!677833)) (size!15339 lt!677835) lt!677843) (_2!10867 lt!677833))))))))

(declare-datatypes ((Unit!33465 0))(
  ( (Unit!33466) )
))
(declare-fun lt!677841 () Unit!33465)

(declare-fun lemmaCharactersSize!507 (Token!6464) Unit!33465)

(assert (=> b!1754826 (= lt!677841 (lemmaCharactersSize!507 (_1!10867 lt!677833)))))

(declare-fun lt!677848 () Unit!33465)

(declare-fun lemmaEqSameImage!360 (TokenValueInjection!6738 BalanceConc!12786 BalanceConc!12786) Unit!33465)

(declare-fun seqFromList!2418 (List!19374) BalanceConc!12786)

(assert (=> b!1754826 (= lt!677848 (lemmaEqSameImage!360 (transformation!3449 (rule!5463 (_1!10867 lt!677833))) lt!677835 (seqFromList!2418 (originalCharacters!4263 (_1!10867 lt!677833)))))))

(declare-fun b!1754827 () Bool)

(assert (=> b!1754827 (= e!1123162 (contains!3477 rules!3447 (rule!5463 (_1!10867 lt!677833))))))

(declare-fun b!1754828 () Bool)

(declare-fun res!789432 () Bool)

(assert (=> b!1754828 (=> res!789432 e!1123154)))

(declare-fun dynLambda!9250 (Int TokenValue!3539) BalanceConc!12786)

(assert (=> b!1754828 (= res!789432 (not (= lt!677835 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (value!107969 (_1!10867 lt!677833))))))))

(declare-fun b!1754829 () Bool)

(declare-fun e!1123142 () Bool)

(declare-fun e!1123143 () Bool)

(assert (=> b!1754829 (= e!1123142 e!1123143)))

(declare-fun res!789438 () Bool)

(assert (=> b!1754829 (=> res!789438 e!1123143)))

(declare-fun lt!677837 () List!19374)

(declare-fun isPrefix!1689 (List!19374 List!19374) Bool)

(assert (=> b!1754829 (= res!789438 (not (isPrefix!1689 lt!677843 lt!677837)))))

(declare-fun ++!5273 (List!19374 List!19374) List!19374)

(assert (=> b!1754829 (isPrefix!1689 lt!677843 (++!5273 lt!677843 (_2!10867 lt!677833)))))

(declare-fun lt!677832 () Unit!33465)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1198 (List!19374 List!19374) Unit!33465)

(assert (=> b!1754829 (= lt!677832 (lemmaConcatTwoListThenFirstIsPrefix!1198 lt!677843 (_2!10867 lt!677833)))))

(declare-fun list!7823 (BalanceConc!12786) List!19374)

(assert (=> b!1754829 (= lt!677843 (list!7823 lt!677835))))

(declare-fun charsOf!2098 (Token!6464) BalanceConc!12786)

(assert (=> b!1754829 (= lt!677835 (charsOf!2098 (_1!10867 lt!677833)))))

(declare-fun e!1123158 () Bool)

(assert (=> b!1754829 e!1123158))

(declare-fun res!789430 () Bool)

(assert (=> b!1754829 (=> (not res!789430) (not e!1123158))))

(declare-datatypes ((Option!3921 0))(
  ( (None!3920) (Some!3920 (v!25369 Rule!6698)) )
))
(declare-fun lt!677846 () Option!3921)

(declare-fun isDefined!3263 (Option!3921) Bool)

(assert (=> b!1754829 (= res!789430 (isDefined!3263 lt!677846))))

(declare-datatypes ((LexerInterface!3078 0))(
  ( (LexerInterfaceExt!3075 (__x!12381 Int)) (Lexer!3076) )
))
(declare-fun thiss!24550 () LexerInterface!3078)

(declare-fun getRuleFromTag!497 (LexerInterface!3078 List!19375 String!22027) Option!3921)

(assert (=> b!1754829 (= lt!677846 (getRuleFromTag!497 thiss!24550 rules!3447 (tag!3803 (rule!5463 (_1!10867 lt!677833)))))))

(declare-fun lt!677850 () Unit!33465)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!497 (LexerInterface!3078 List!19375 List!19374 Token!6464) Unit!33465)

(assert (=> b!1754829 (= lt!677850 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!497 thiss!24550 rules!3447 lt!677837 (_1!10867 lt!677833)))))

(declare-fun get!5862 (Option!3920) tuple2!18930)

(assert (=> b!1754829 (= lt!677833 (get!5862 lt!677836))))

(declare-fun lt!677834 () Unit!33465)

(declare-fun lt!677842 () List!19374)

(declare-fun suffix!1421 () List!19374)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!600 (LexerInterface!3078 List!19375 List!19374 List!19374) Unit!33465)

(assert (=> b!1754829 (= lt!677834 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!600 thiss!24550 rules!3447 lt!677842 suffix!1421))))

(declare-fun maxPrefix!1632 (LexerInterface!3078 List!19375 List!19374) Option!3920)

(assert (=> b!1754829 (= lt!677836 (maxPrefix!1632 thiss!24550 rules!3447 lt!677837))))

(assert (=> b!1754829 (isPrefix!1689 lt!677842 lt!677837)))

(declare-fun lt!677849 () Unit!33465)

(assert (=> b!1754829 (= lt!677849 (lemmaConcatTwoListThenFirstIsPrefix!1198 lt!677842 suffix!1421))))

(assert (=> b!1754829 (= lt!677837 (++!5273 lt!677842 suffix!1421))))

(declare-fun e!1123144 () Bool)

(assert (=> b!1754830 (= e!1123143 e!1123144)))

(declare-fun res!789433 () Bool)

(assert (=> b!1754830 (=> res!789433 e!1123144)))

(declare-fun Forall!816 (Int) Bool)

(assert (=> b!1754830 (= res!789433 (not (Forall!816 lambda!69980)))))

(declare-fun lt!677839 () Unit!33465)

(declare-fun lemmaInv!648 (TokenValueInjection!6738) Unit!33465)

(assert (=> b!1754830 (= lt!677839 (lemmaInv!648 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))))))

(declare-fun b!1754831 () Bool)

(declare-fun res!789436 () Bool)

(assert (=> b!1754831 (=> (not res!789436) (not e!1123151))))

(declare-fun lt!677840 () tuple2!18930)

(declare-fun isEmpty!12174 (List!19374) Bool)

(assert (=> b!1754831 (= res!789436 (isEmpty!12174 (_2!10867 lt!677840)))))

(assert (=> b!1754832 (= e!1123147 (and tp!498940 tp!498937))))

(declare-fun b!1754833 () Bool)

(assert (=> b!1754833 (= e!1123144 e!1123154)))

(declare-fun res!789425 () Bool)

(assert (=> b!1754833 (=> res!789425 e!1123154)))

(declare-fun dynLambda!9251 (Int BalanceConc!12786) TokenValue!3539)

(assert (=> b!1754833 (= res!789425 (not (= (list!7823 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835))) lt!677843)))))

(declare-fun lt!677838 () Unit!33465)

(declare-fun lemmaSemiInverse!587 (TokenValueInjection!6738 BalanceConc!12786) Unit!33465)

(assert (=> b!1754833 (= lt!677838 (lemmaSemiInverse!587 (transformation!3449 (rule!5463 (_1!10867 lt!677833))) lt!677835))))

(declare-fun b!1754834 () Bool)

(declare-fun e!1123156 () Bool)

(assert (=> b!1754834 (= e!1123158 e!1123156)))

(declare-fun res!789437 () Bool)

(assert (=> b!1754834 (=> (not res!789437) (not e!1123156))))

(declare-fun lt!677844 () Rule!6698)

(declare-fun matchR!2250 (Regex!4777 List!19374) Bool)

(assert (=> b!1754834 (= res!789437 (matchR!2250 (regex!3449 lt!677844) (list!7823 (charsOf!2098 (_1!10867 lt!677833)))))))

(declare-fun get!5863 (Option!3921) Rule!6698)

(assert (=> b!1754834 (= lt!677844 (get!5863 lt!677846))))

(declare-fun b!1754835 () Bool)

(declare-fun e!1123161 () Bool)

(declare-fun tp!498936 () Bool)

(assert (=> b!1754835 (= e!1123161 (and e!1123155 tp!498936))))

(declare-fun b!1754836 () Bool)

(declare-fun res!789426 () Bool)

(assert (=> b!1754836 (=> res!789426 e!1123142)))

(declare-fun prefixMatch!660 (Regex!4777 List!19374) Bool)

(declare-fun rulesRegex!805 (LexerInterface!3078 List!19375) Regex!4777)

(declare-fun head!4050 (List!19374) C!9728)

(assert (=> b!1754836 (= res!789426 (prefixMatch!660 (rulesRegex!805 thiss!24550 rules!3447) (++!5273 lt!677842 (Cons!19304 (head!4050 suffix!1421) Nil!19304))))))

(declare-fun b!1754837 () Bool)

(declare-fun res!789431 () Bool)

(assert (=> b!1754837 (=> (not res!789431) (not e!1123149))))

(declare-fun isEmpty!12175 (List!19375) Bool)

(assert (=> b!1754837 (= res!789431 (not (isEmpty!12175 rules!3447)))))

(declare-fun e!1123152 () Bool)

(assert (=> b!1754838 (= e!1123152 (and tp!498939 tp!498943))))

(declare-fun b!1754839 () Bool)

(declare-fun res!789439 () Bool)

(assert (=> b!1754839 (=> res!789439 e!1123142)))

(assert (=> b!1754839 (= res!789439 (isEmpty!12174 suffix!1421))))

(declare-fun e!1123160 () Bool)

(declare-fun tp!498935 () Bool)

(declare-fun e!1123153 () Bool)

(declare-fun b!1754840 () Bool)

(declare-fun inv!21 (TokenValue!3539) Bool)

(assert (=> b!1754840 (= e!1123160 (and (inv!21 (value!107969 token!523)) e!1123153 tp!498935))))

(declare-fun b!1754841 () Bool)

(assert (=> b!1754841 (= e!1123151 (not e!1123142))))

(declare-fun res!789434 () Bool)

(assert (=> b!1754841 (=> res!789434 e!1123142)))

(assert (=> b!1754841 (= res!789434 (not (matchR!2250 (regex!3449 rule!422) lt!677842)))))

(declare-fun ruleValid!947 (LexerInterface!3078 Rule!6698) Bool)

(assert (=> b!1754841 (ruleValid!947 thiss!24550 rule!422)))

(declare-fun lt!677845 () Unit!33465)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!470 (LexerInterface!3078 Rule!6698 List!19375) Unit!33465)

(assert (=> b!1754841 (= lt!677845 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!470 thiss!24550 rule!422 rules!3447))))

(declare-fun e!1123159 () Bool)

(declare-fun tp!498941 () Bool)

(declare-fun e!1123163 () Bool)

(declare-fun b!1754842 () Bool)

(assert (=> b!1754842 (= e!1123159 (and tp!498941 (inv!25051 (tag!3803 rule!422)) (inv!25056 (transformation!3449 rule!422)) e!1123163))))

(declare-fun b!1754843 () Bool)

(declare-fun res!789442 () Bool)

(assert (=> b!1754843 (=> res!789442 e!1123143)))

(assert (=> b!1754843 (= res!789442 (not (matchR!2250 (regex!3449 (rule!5463 (_1!10867 lt!677833))) lt!677843)))))

(declare-fun res!789429 () Bool)

(assert (=> start!173158 (=> (not res!789429) (not e!1123149))))

(get-info :version)

(assert (=> start!173158 (= res!789429 ((_ is Lexer!3076) thiss!24550))))

(assert (=> start!173158 e!1123149))

(assert (=> start!173158 e!1123146))

(assert (=> start!173158 e!1123159))

(assert (=> start!173158 true))

(declare-fun inv!25057 (Token!6464) Bool)

(assert (=> start!173158 (and (inv!25057 token!523) e!1123160)))

(assert (=> start!173158 e!1123161))

(declare-fun b!1754844 () Bool)

(declare-fun e!1123145 () Bool)

(assert (=> b!1754844 (= e!1123149 e!1123145)))

(declare-fun res!789440 () Bool)

(assert (=> b!1754844 (=> (not res!789440) (not e!1123145))))

(declare-fun lt!677847 () Option!3920)

(declare-fun isDefined!3264 (Option!3920) Bool)

(assert (=> b!1754844 (= res!789440 (isDefined!3264 lt!677847))))

(assert (=> b!1754844 (= lt!677847 (maxPrefix!1632 thiss!24550 rules!3447 lt!677842))))

(assert (=> b!1754844 (= lt!677842 (list!7823 (charsOf!2098 token!523)))))

(assert (=> b!1754845 (= e!1123163 (and tp!498933 tp!498938))))

(declare-fun tp!498934 () Bool)

(declare-fun b!1754846 () Bool)

(assert (=> b!1754846 (= e!1123153 (and tp!498934 (inv!25051 (tag!3803 (rule!5463 token!523))) (inv!25056 (transformation!3449 (rule!5463 token!523))) e!1123152))))

(declare-fun b!1754847 () Bool)

(assert (=> b!1754847 (= e!1123156 (= (rule!5463 (_1!10867 lt!677833)) lt!677844))))

(declare-fun b!1754848 () Bool)

(assert (=> b!1754848 (= e!1123145 e!1123151)))

(declare-fun res!789428 () Bool)

(assert (=> b!1754848 (=> (not res!789428) (not e!1123151))))

(assert (=> b!1754848 (= res!789428 (= (_1!10867 lt!677840) token!523))))

(assert (=> b!1754848 (= lt!677840 (get!5862 lt!677847))))

(declare-fun b!1754849 () Bool)

(declare-fun res!789435 () Bool)

(assert (=> b!1754849 (=> (not res!789435) (not e!1123149))))

(declare-fun rulesInvariant!2747 (LexerInterface!3078 List!19375) Bool)

(assert (=> b!1754849 (= res!789435 (rulesInvariant!2747 thiss!24550 rules!3447))))

(assert (= (and start!173158 res!789429) b!1754837))

(assert (= (and b!1754837 res!789431) b!1754849))

(assert (= (and b!1754849 res!789435) b!1754823))

(assert (= (and b!1754823 res!789441) b!1754844))

(assert (= (and b!1754844 res!789440) b!1754848))

(assert (= (and b!1754848 res!789428) b!1754831))

(assert (= (and b!1754831 res!789436) b!1754822))

(assert (= (and b!1754822 res!789424) b!1754841))

(assert (= (and b!1754841 (not res!789434)) b!1754839))

(assert (= (and b!1754839 (not res!789439)) b!1754836))

(assert (= (and b!1754836 (not res!789426)) b!1754829))

(assert (= (and b!1754829 res!789430) b!1754834))

(assert (= (and b!1754834 res!789437) b!1754847))

(assert (= (and b!1754829 (not res!789438)) b!1754843))

(assert (= (and b!1754843 (not res!789442)) b!1754830))

(assert (= (and b!1754830 (not res!789433)) b!1754833))

(assert (= (and b!1754833 (not res!789425)) b!1754828))

(assert (= (and b!1754828 (not res!789432)) b!1754826))

(assert (= (and b!1754826 (not res!789427)) b!1754827))

(assert (= (and start!173158 ((_ is Cons!19304) suffix!1421)) b!1754825))

(assert (= b!1754842 b!1754845))

(assert (= start!173158 b!1754842))

(assert (= b!1754846 b!1754838))

(assert (= b!1754840 b!1754846))

(assert (= start!173158 b!1754840))

(assert (= b!1754824 b!1754832))

(assert (= b!1754835 b!1754824))

(assert (= (and start!173158 ((_ is Cons!19305) rules!3447)) b!1754835))

(declare-fun b_lambda!56527 () Bool)

(assert (=> (not b_lambda!56527) (not b!1754828)))

(declare-fun tb!105407 () Bool)

(declare-fun t!163359 () Bool)

(assert (=> (and b!1754838 (= (toChars!4827 (transformation!3449 (rule!5463 token!523))) (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833))))) t!163359) tb!105407))

(declare-fun b!1754865 () Bool)

(declare-fun e!1123176 () Bool)

(declare-fun tp!498947 () Bool)

(declare-fun inv!25058 (Conc!6421) Bool)

(assert (=> b!1754865 (= e!1123176 (and (inv!25058 (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (value!107969 (_1!10867 lt!677833))))) tp!498947))))

(declare-fun result!126794 () Bool)

(declare-fun inv!25059 (BalanceConc!12786) Bool)

(assert (=> tb!105407 (= result!126794 (and (inv!25059 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (value!107969 (_1!10867 lt!677833)))) e!1123176))))

(assert (= tb!105407 b!1754865))

(declare-fun m!2169309 () Bool)

(assert (=> b!1754865 m!2169309))

(declare-fun m!2169311 () Bool)

(assert (=> tb!105407 m!2169311))

(assert (=> b!1754828 t!163359))

(declare-fun b_and!131631 () Bool)

(assert (= b_and!131621 (and (=> t!163359 result!126794) b_and!131631)))

(declare-fun t!163361 () Bool)

(declare-fun tb!105409 () Bool)

(assert (=> (and b!1754845 (= (toChars!4827 (transformation!3449 rule!422)) (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833))))) t!163361) tb!105409))

(declare-fun result!126798 () Bool)

(assert (= result!126798 result!126794))

(assert (=> b!1754828 t!163361))

(declare-fun b_and!131633 () Bool)

(assert (= b_and!131625 (and (=> t!163361 result!126798) b_and!131633)))

(declare-fun t!163363 () Bool)

(declare-fun tb!105411 () Bool)

(assert (=> (and b!1754832 (= (toChars!4827 (transformation!3449 (h!24706 rules!3447))) (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833))))) t!163363) tb!105411))

(declare-fun result!126800 () Bool)

(assert (= result!126800 result!126794))

(assert (=> b!1754828 t!163363))

(declare-fun b_and!131635 () Bool)

(assert (= b_and!131629 (and (=> t!163363 result!126800) b_and!131635)))

(declare-fun b_lambda!56529 () Bool)

(assert (=> (not b_lambda!56529) (not b!1754833)))

(declare-fun tb!105413 () Bool)

(declare-fun t!163365 () Bool)

(assert (=> (and b!1754838 (= (toChars!4827 (transformation!3449 (rule!5463 token!523))) (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833))))) t!163365) tb!105413))

(declare-fun b!1754866 () Bool)

(declare-fun tp!498948 () Bool)

(declare-fun e!1123177 () Bool)

(assert (=> b!1754866 (= e!1123177 (and (inv!25058 (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835)))) tp!498948))))

(declare-fun result!126802 () Bool)

(assert (=> tb!105413 (= result!126802 (and (inv!25059 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835))) e!1123177))))

(assert (= tb!105413 b!1754866))

(declare-fun m!2169313 () Bool)

(assert (=> b!1754866 m!2169313))

(declare-fun m!2169315 () Bool)

(assert (=> tb!105413 m!2169315))

(assert (=> b!1754833 t!163365))

(declare-fun b_and!131637 () Bool)

(assert (= b_and!131631 (and (=> t!163365 result!126802) b_and!131637)))

(declare-fun tb!105415 () Bool)

(declare-fun t!163367 () Bool)

(assert (=> (and b!1754845 (= (toChars!4827 (transformation!3449 rule!422)) (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833))))) t!163367) tb!105415))

(declare-fun result!126804 () Bool)

(assert (= result!126804 result!126802))

(assert (=> b!1754833 t!163367))

(declare-fun b_and!131639 () Bool)

(assert (= b_and!131633 (and (=> t!163367 result!126804) b_and!131639)))

(declare-fun t!163369 () Bool)

(declare-fun tb!105417 () Bool)

(assert (=> (and b!1754832 (= (toChars!4827 (transformation!3449 (h!24706 rules!3447))) (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833))))) t!163369) tb!105417))

(declare-fun result!126806 () Bool)

(assert (= result!126806 result!126802))

(assert (=> b!1754833 t!163369))

(declare-fun b_and!131641 () Bool)

(assert (= b_and!131635 (and (=> t!163369 result!126806) b_and!131641)))

(declare-fun b_lambda!56531 () Bool)

(assert (=> (not b_lambda!56531) (not b!1754833)))

(declare-fun t!163371 () Bool)

(declare-fun tb!105419 () Bool)

(assert (=> (and b!1754838 (= (toValue!4968 (transformation!3449 (rule!5463 token!523))) (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833))))) t!163371) tb!105419))

(declare-fun result!126808 () Bool)

(assert (=> tb!105419 (= result!126808 (inv!21 (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835)))))

(declare-fun m!2169317 () Bool)

(assert (=> tb!105419 m!2169317))

(assert (=> b!1754833 t!163371))

(declare-fun b_and!131643 () Bool)

(assert (= b_and!131619 (and (=> t!163371 result!126808) b_and!131643)))

(declare-fun t!163373 () Bool)

(declare-fun tb!105421 () Bool)

(assert (=> (and b!1754845 (= (toValue!4968 (transformation!3449 rule!422)) (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833))))) t!163373) tb!105421))

(declare-fun result!126812 () Bool)

(assert (= result!126812 result!126808))

(assert (=> b!1754833 t!163373))

(declare-fun b_and!131645 () Bool)

(assert (= b_and!131623 (and (=> t!163373 result!126812) b_and!131645)))

(declare-fun t!163375 () Bool)

(declare-fun tb!105423 () Bool)

(assert (=> (and b!1754832 (= (toValue!4968 (transformation!3449 (h!24706 rules!3447))) (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833))))) t!163375) tb!105423))

(declare-fun result!126814 () Bool)

(assert (= result!126814 result!126808))

(assert (=> b!1754833 t!163375))

(declare-fun b_and!131647 () Bool)

(assert (= b_and!131627 (and (=> t!163375 result!126814) b_and!131647)))

(declare-fun m!2169319 () Bool)

(assert (=> b!1754842 m!2169319))

(declare-fun m!2169321 () Bool)

(assert (=> b!1754842 m!2169321))

(declare-fun m!2169323 () Bool)

(assert (=> b!1754837 m!2169323))

(declare-fun m!2169325 () Bool)

(assert (=> b!1754839 m!2169325))

(declare-fun m!2169327 () Bool)

(assert (=> b!1754829 m!2169327))

(declare-fun m!2169329 () Bool)

(assert (=> b!1754829 m!2169329))

(declare-fun m!2169331 () Bool)

(assert (=> b!1754829 m!2169331))

(declare-fun m!2169333 () Bool)

(assert (=> b!1754829 m!2169333))

(declare-fun m!2169335 () Bool)

(assert (=> b!1754829 m!2169335))

(declare-fun m!2169337 () Bool)

(assert (=> b!1754829 m!2169337))

(declare-fun m!2169339 () Bool)

(assert (=> b!1754829 m!2169339))

(declare-fun m!2169341 () Bool)

(assert (=> b!1754829 m!2169341))

(declare-fun m!2169343 () Bool)

(assert (=> b!1754829 m!2169343))

(declare-fun m!2169345 () Bool)

(assert (=> b!1754829 m!2169345))

(declare-fun m!2169347 () Bool)

(assert (=> b!1754829 m!2169347))

(declare-fun m!2169349 () Bool)

(assert (=> b!1754829 m!2169349))

(declare-fun m!2169351 () Bool)

(assert (=> b!1754829 m!2169351))

(assert (=> b!1754829 m!2169333))

(declare-fun m!2169353 () Bool)

(assert (=> b!1754829 m!2169353))

(declare-fun m!2169355 () Bool)

(assert (=> b!1754829 m!2169355))

(declare-fun m!2169357 () Bool)

(assert (=> b!1754848 m!2169357))

(declare-fun m!2169359 () Bool)

(assert (=> b!1754828 m!2169359))

(declare-fun m!2169361 () Bool)

(assert (=> b!1754827 m!2169361))

(declare-fun m!2169363 () Bool)

(assert (=> b!1754823 m!2169363))

(declare-fun m!2169365 () Bool)

(assert (=> b!1754840 m!2169365))

(assert (=> b!1754834 m!2169345))

(assert (=> b!1754834 m!2169345))

(declare-fun m!2169367 () Bool)

(assert (=> b!1754834 m!2169367))

(assert (=> b!1754834 m!2169367))

(declare-fun m!2169369 () Bool)

(assert (=> b!1754834 m!2169369))

(declare-fun m!2169371 () Bool)

(assert (=> b!1754834 m!2169371))

(declare-fun m!2169373 () Bool)

(assert (=> b!1754844 m!2169373))

(declare-fun m!2169375 () Bool)

(assert (=> b!1754844 m!2169375))

(declare-fun m!2169377 () Bool)

(assert (=> b!1754844 m!2169377))

(assert (=> b!1754844 m!2169377))

(declare-fun m!2169379 () Bool)

(assert (=> b!1754844 m!2169379))

(declare-fun m!2169381 () Bool)

(assert (=> b!1754849 m!2169381))

(declare-fun m!2169383 () Bool)

(assert (=> b!1754824 m!2169383))

(declare-fun m!2169385 () Bool)

(assert (=> b!1754824 m!2169385))

(declare-fun m!2169387 () Bool)

(assert (=> b!1754830 m!2169387))

(declare-fun m!2169389 () Bool)

(assert (=> b!1754830 m!2169389))

(declare-fun m!2169391 () Bool)

(assert (=> b!1754836 m!2169391))

(declare-fun m!2169393 () Bool)

(assert (=> b!1754836 m!2169393))

(declare-fun m!2169395 () Bool)

(assert (=> b!1754836 m!2169395))

(assert (=> b!1754836 m!2169391))

(assert (=> b!1754836 m!2169395))

(declare-fun m!2169397 () Bool)

(assert (=> b!1754836 m!2169397))

(declare-fun m!2169399 () Bool)

(assert (=> b!1754826 m!2169399))

(declare-fun m!2169401 () Bool)

(assert (=> b!1754826 m!2169401))

(declare-fun m!2169403 () Bool)

(assert (=> b!1754826 m!2169403))

(declare-fun m!2169405 () Bool)

(assert (=> b!1754826 m!2169405))

(assert (=> b!1754826 m!2169401))

(declare-fun m!2169407 () Bool)

(assert (=> b!1754826 m!2169407))

(declare-fun m!2169409 () Bool)

(assert (=> start!173158 m!2169409))

(declare-fun m!2169411 () Bool)

(assert (=> b!1754841 m!2169411))

(declare-fun m!2169413 () Bool)

(assert (=> b!1754841 m!2169413))

(declare-fun m!2169415 () Bool)

(assert (=> b!1754841 m!2169415))

(declare-fun m!2169417 () Bool)

(assert (=> b!1754831 m!2169417))

(declare-fun m!2169419 () Bool)

(assert (=> b!1754843 m!2169419))

(declare-fun m!2169421 () Bool)

(assert (=> b!1754833 m!2169421))

(assert (=> b!1754833 m!2169421))

(declare-fun m!2169423 () Bool)

(assert (=> b!1754833 m!2169423))

(assert (=> b!1754833 m!2169423))

(declare-fun m!2169425 () Bool)

(assert (=> b!1754833 m!2169425))

(declare-fun m!2169427 () Bool)

(assert (=> b!1754833 m!2169427))

(declare-fun m!2169429 () Bool)

(assert (=> b!1754846 m!2169429))

(declare-fun m!2169431 () Bool)

(assert (=> b!1754846 m!2169431))

(check-sat (not b!1754839) (not b!1754825) (not b_lambda!56529) (not tb!105407) (not b!1754824) (not b!1754848) (not b!1754836) (not b_next!49169) (not b!1754831) (not b!1754841) b_and!131643 (not tb!105413) (not b!1754840) (not b!1754842) (not b!1754846) b_and!131641 (not start!173158) (not b_next!49159) tp_is_empty!7797 (not b!1754843) (not b_next!49161) (not b!1754844) (not b_next!49167) (not b_lambda!56527) (not b!1754823) b_and!131647 (not b!1754829) (not b_lambda!56531) (not b!1754835) (not tb!105419) (not b!1754834) (not b!1754827) (not b!1754849) b_and!131639 b_and!131637 (not b_next!49165) b_and!131645 (not b!1754833) (not b!1754830) (not b!1754837) (not b!1754866) (not b!1754826) (not b_next!49163) (not b!1754865))
(check-sat (not b_next!49169) b_and!131643 b_and!131641 (not b_next!49159) (not b_next!49161) (not b_next!49167) b_and!131647 (not b_next!49163) b_and!131639 b_and!131637 (not b_next!49165) b_and!131645)
(get-model)

(declare-fun d!536103 () Bool)

(declare-fun c!286119 () Bool)

(assert (=> d!536103 (= c!286119 (isEmpty!12174 (++!5273 lt!677842 (Cons!19304 (head!4050 suffix!1421) Nil!19304))))))

(declare-fun e!1123247 () Bool)

(assert (=> d!536103 (= (prefixMatch!660 (rulesRegex!805 thiss!24550 rules!3447) (++!5273 lt!677842 (Cons!19304 (head!4050 suffix!1421) Nil!19304))) e!1123247)))

(declare-fun b!1754989 () Bool)

(declare-fun lostCause!560 (Regex!4777) Bool)

(assert (=> b!1754989 (= e!1123247 (not (lostCause!560 (rulesRegex!805 thiss!24550 rules!3447))))))

(declare-fun b!1754990 () Bool)

(declare-fun derivativeStep!1218 (Regex!4777 C!9728) Regex!4777)

(declare-fun tail!2621 (List!19374) List!19374)

(assert (=> b!1754990 (= e!1123247 (prefixMatch!660 (derivativeStep!1218 (rulesRegex!805 thiss!24550 rules!3447) (head!4050 (++!5273 lt!677842 (Cons!19304 (head!4050 suffix!1421) Nil!19304)))) (tail!2621 (++!5273 lt!677842 (Cons!19304 (head!4050 suffix!1421) Nil!19304)))))))

(assert (= (and d!536103 c!286119) b!1754989))

(assert (= (and d!536103 (not c!286119)) b!1754990))

(assert (=> d!536103 m!2169395))

(declare-fun m!2169525 () Bool)

(assert (=> d!536103 m!2169525))

(assert (=> b!1754989 m!2169391))

(declare-fun m!2169527 () Bool)

(assert (=> b!1754989 m!2169527))

(assert (=> b!1754990 m!2169395))

(declare-fun m!2169529 () Bool)

(assert (=> b!1754990 m!2169529))

(assert (=> b!1754990 m!2169391))

(assert (=> b!1754990 m!2169529))

(declare-fun m!2169531 () Bool)

(assert (=> b!1754990 m!2169531))

(assert (=> b!1754990 m!2169395))

(declare-fun m!2169533 () Bool)

(assert (=> b!1754990 m!2169533))

(assert (=> b!1754990 m!2169531))

(assert (=> b!1754990 m!2169533))

(declare-fun m!2169535 () Bool)

(assert (=> b!1754990 m!2169535))

(assert (=> b!1754836 d!536103))

(declare-fun d!536109 () Bool)

(declare-fun lt!677872 () Unit!33465)

(declare-fun lemma!373 (List!19375 LexerInterface!3078 List!19375) Unit!33465)

(assert (=> d!536109 (= lt!677872 (lemma!373 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69989 () Int)

(declare-datatypes ((List!19378 0))(
  ( (Nil!19308) (Cons!19308 (h!24709 Regex!4777) (t!163425 List!19378)) )
))
(declare-fun generalisedUnion!381 (List!19378) Regex!4777)

(declare-fun map!3977 (List!19375 Int) List!19378)

(assert (=> d!536109 (= (rulesRegex!805 thiss!24550 rules!3447) (generalisedUnion!381 (map!3977 rules!3447 lambda!69989)))))

(declare-fun bs!403777 () Bool)

(assert (= bs!403777 d!536109))

(declare-fun m!2169553 () Bool)

(assert (=> bs!403777 m!2169553))

(declare-fun m!2169555 () Bool)

(assert (=> bs!403777 m!2169555))

(assert (=> bs!403777 m!2169555))

(declare-fun m!2169557 () Bool)

(assert (=> bs!403777 m!2169557))

(assert (=> b!1754836 d!536109))

(declare-fun b!1755021 () Bool)

(declare-fun e!1123268 () List!19374)

(assert (=> b!1755021 (= e!1123268 (Cons!19304 (h!24705 lt!677842) (++!5273 (t!163377 lt!677842) (Cons!19304 (head!4050 suffix!1421) Nil!19304))))))

(declare-fun d!536121 () Bool)

(declare-fun e!1123269 () Bool)

(assert (=> d!536121 e!1123269))

(declare-fun res!789525 () Bool)

(assert (=> d!536121 (=> (not res!789525) (not e!1123269))))

(declare-fun lt!677879 () List!19374)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2774 (List!19374) (InoxSet C!9728))

(assert (=> d!536121 (= res!789525 (= (content!2774 lt!677879) ((_ map or) (content!2774 lt!677842) (content!2774 (Cons!19304 (head!4050 suffix!1421) Nil!19304)))))))

(assert (=> d!536121 (= lt!677879 e!1123268)))

(declare-fun c!286122 () Bool)

(assert (=> d!536121 (= c!286122 ((_ is Nil!19304) lt!677842))))

(assert (=> d!536121 (= (++!5273 lt!677842 (Cons!19304 (head!4050 suffix!1421) Nil!19304)) lt!677879)))

(declare-fun b!1755023 () Bool)

(assert (=> b!1755023 (= e!1123269 (or (not (= (Cons!19304 (head!4050 suffix!1421) Nil!19304) Nil!19304)) (= lt!677879 lt!677842)))))

(declare-fun b!1755022 () Bool)

(declare-fun res!789524 () Bool)

(assert (=> b!1755022 (=> (not res!789524) (not e!1123269))))

(declare-fun size!15342 (List!19374) Int)

(assert (=> b!1755022 (= res!789524 (= (size!15342 lt!677879) (+ (size!15342 lt!677842) (size!15342 (Cons!19304 (head!4050 suffix!1421) Nil!19304)))))))

(declare-fun b!1755020 () Bool)

(assert (=> b!1755020 (= e!1123268 (Cons!19304 (head!4050 suffix!1421) Nil!19304))))

(assert (= (and d!536121 c!286122) b!1755020))

(assert (= (and d!536121 (not c!286122)) b!1755021))

(assert (= (and d!536121 res!789525) b!1755022))

(assert (= (and b!1755022 res!789524) b!1755023))

(declare-fun m!2169579 () Bool)

(assert (=> b!1755021 m!2169579))

(declare-fun m!2169581 () Bool)

(assert (=> d!536121 m!2169581))

(declare-fun m!2169583 () Bool)

(assert (=> d!536121 m!2169583))

(declare-fun m!2169585 () Bool)

(assert (=> d!536121 m!2169585))

(declare-fun m!2169587 () Bool)

(assert (=> b!1755022 m!2169587))

(declare-fun m!2169589 () Bool)

(assert (=> b!1755022 m!2169589))

(declare-fun m!2169591 () Bool)

(assert (=> b!1755022 m!2169591))

(assert (=> b!1754836 d!536121))

(declare-fun d!536129 () Bool)

(assert (=> d!536129 (= (head!4050 suffix!1421) (h!24705 suffix!1421))))

(assert (=> b!1754836 d!536129))

(declare-fun bm!110522 () Bool)

(declare-fun call!110527 () Bool)

(assert (=> bm!110522 (= call!110527 (isEmpty!12174 (list!7823 (charsOf!2098 (_1!10867 lt!677833)))))))

(declare-fun b!1755063 () Bool)

(declare-fun e!1123291 () Bool)

(declare-fun lt!677890 () Bool)

(assert (=> b!1755063 (= e!1123291 (not lt!677890))))

(declare-fun b!1755064 () Bool)

(declare-fun e!1123293 () Bool)

(declare-fun nullable!1449 (Regex!4777) Bool)

(assert (=> b!1755064 (= e!1123293 (nullable!1449 (regex!3449 lt!677844)))))

(declare-fun b!1755065 () Bool)

(declare-fun e!1123290 () Bool)

(assert (=> b!1755065 (= e!1123290 (not (= (head!4050 (list!7823 (charsOf!2098 (_1!10867 lt!677833)))) (c!286088 (regex!3449 lt!677844)))))))

(declare-fun b!1755066 () Bool)

(declare-fun res!789556 () Bool)

(assert (=> b!1755066 (=> res!789556 e!1123290)))

(assert (=> b!1755066 (= res!789556 (not (isEmpty!12174 (tail!2621 (list!7823 (charsOf!2098 (_1!10867 lt!677833)))))))))

(declare-fun b!1755067 () Bool)

(declare-fun e!1123294 () Bool)

(assert (=> b!1755067 (= e!1123294 (= (head!4050 (list!7823 (charsOf!2098 (_1!10867 lt!677833)))) (c!286088 (regex!3449 lt!677844))))))

(declare-fun b!1755068 () Bool)

(declare-fun e!1123295 () Bool)

(assert (=> b!1755068 (= e!1123295 (= lt!677890 call!110527))))

(declare-fun b!1755069 () Bool)

(declare-fun res!789555 () Bool)

(assert (=> b!1755069 (=> (not res!789555) (not e!1123294))))

(assert (=> b!1755069 (= res!789555 (not call!110527))))

(declare-fun b!1755070 () Bool)

(declare-fun e!1123289 () Bool)

(assert (=> b!1755070 (= e!1123289 e!1123290)))

(declare-fun res!789553 () Bool)

(assert (=> b!1755070 (=> res!789553 e!1123290)))

(assert (=> b!1755070 (= res!789553 call!110527)))

(declare-fun b!1755071 () Bool)

(assert (=> b!1755071 (= e!1123293 (matchR!2250 (derivativeStep!1218 (regex!3449 lt!677844) (head!4050 (list!7823 (charsOf!2098 (_1!10867 lt!677833))))) (tail!2621 (list!7823 (charsOf!2098 (_1!10867 lt!677833))))))))

(declare-fun b!1755062 () Bool)

(declare-fun res!789557 () Bool)

(assert (=> b!1755062 (=> (not res!789557) (not e!1123294))))

(assert (=> b!1755062 (= res!789557 (isEmpty!12174 (tail!2621 (list!7823 (charsOf!2098 (_1!10867 lt!677833))))))))

(declare-fun d!536131 () Bool)

(assert (=> d!536131 e!1123295))

(declare-fun c!286130 () Bool)

(assert (=> d!536131 (= c!286130 ((_ is EmptyExpr!4777) (regex!3449 lt!677844)))))

(assert (=> d!536131 (= lt!677890 e!1123293)))

(declare-fun c!286132 () Bool)

(assert (=> d!536131 (= c!286132 (isEmpty!12174 (list!7823 (charsOf!2098 (_1!10867 lt!677833)))))))

(declare-fun validRegex!1923 (Regex!4777) Bool)

(assert (=> d!536131 (validRegex!1923 (regex!3449 lt!677844))))

(assert (=> d!536131 (= (matchR!2250 (regex!3449 lt!677844) (list!7823 (charsOf!2098 (_1!10867 lt!677833)))) lt!677890)))

(declare-fun b!1755072 () Bool)

(declare-fun res!789554 () Bool)

(declare-fun e!1123292 () Bool)

(assert (=> b!1755072 (=> res!789554 e!1123292)))

(assert (=> b!1755072 (= res!789554 (not ((_ is ElementMatch!4777) (regex!3449 lt!677844))))))

(assert (=> b!1755072 (= e!1123291 e!1123292)))

(declare-fun b!1755073 () Bool)

(assert (=> b!1755073 (= e!1123292 e!1123289)))

(declare-fun res!789552 () Bool)

(assert (=> b!1755073 (=> (not res!789552) (not e!1123289))))

(assert (=> b!1755073 (= res!789552 (not lt!677890))))

(declare-fun b!1755074 () Bool)

(declare-fun res!789551 () Bool)

(assert (=> b!1755074 (=> res!789551 e!1123292)))

(assert (=> b!1755074 (= res!789551 e!1123294)))

(declare-fun res!789550 () Bool)

(assert (=> b!1755074 (=> (not res!789550) (not e!1123294))))

(assert (=> b!1755074 (= res!789550 lt!677890)))

(declare-fun b!1755075 () Bool)

(assert (=> b!1755075 (= e!1123295 e!1123291)))

(declare-fun c!286131 () Bool)

(assert (=> b!1755075 (= c!286131 ((_ is EmptyLang!4777) (regex!3449 lt!677844)))))

(assert (= (and d!536131 c!286132) b!1755064))

(assert (= (and d!536131 (not c!286132)) b!1755071))

(assert (= (and d!536131 c!286130) b!1755068))

(assert (= (and d!536131 (not c!286130)) b!1755075))

(assert (= (and b!1755075 c!286131) b!1755063))

(assert (= (and b!1755075 (not c!286131)) b!1755072))

(assert (= (and b!1755072 (not res!789554)) b!1755074))

(assert (= (and b!1755074 res!789550) b!1755069))

(assert (= (and b!1755069 res!789555) b!1755062))

(assert (= (and b!1755062 res!789557) b!1755067))

(assert (= (and b!1755074 (not res!789551)) b!1755073))

(assert (= (and b!1755073 res!789552) b!1755070))

(assert (= (and b!1755070 (not res!789553)) b!1755066))

(assert (= (and b!1755066 (not res!789556)) b!1755065))

(assert (= (or b!1755068 b!1755069 b!1755070) bm!110522))

(assert (=> b!1755071 m!2169367))

(declare-fun m!2169619 () Bool)

(assert (=> b!1755071 m!2169619))

(assert (=> b!1755071 m!2169619))

(declare-fun m!2169621 () Bool)

(assert (=> b!1755071 m!2169621))

(assert (=> b!1755071 m!2169367))

(declare-fun m!2169623 () Bool)

(assert (=> b!1755071 m!2169623))

(assert (=> b!1755071 m!2169621))

(assert (=> b!1755071 m!2169623))

(declare-fun m!2169625 () Bool)

(assert (=> b!1755071 m!2169625))

(declare-fun m!2169627 () Bool)

(assert (=> b!1755064 m!2169627))

(assert (=> b!1755065 m!2169367))

(assert (=> b!1755065 m!2169619))

(assert (=> b!1755067 m!2169367))

(assert (=> b!1755067 m!2169619))

(assert (=> b!1755066 m!2169367))

(assert (=> b!1755066 m!2169623))

(assert (=> b!1755066 m!2169623))

(declare-fun m!2169629 () Bool)

(assert (=> b!1755066 m!2169629))

(assert (=> d!536131 m!2169367))

(declare-fun m!2169631 () Bool)

(assert (=> d!536131 m!2169631))

(declare-fun m!2169633 () Bool)

(assert (=> d!536131 m!2169633))

(assert (=> b!1755062 m!2169367))

(assert (=> b!1755062 m!2169623))

(assert (=> b!1755062 m!2169623))

(assert (=> b!1755062 m!2169629))

(assert (=> bm!110522 m!2169367))

(assert (=> bm!110522 m!2169631))

(assert (=> b!1754834 d!536131))

(declare-fun d!536143 () Bool)

(declare-fun list!7825 (Conc!6421) List!19374)

(assert (=> d!536143 (= (list!7823 (charsOf!2098 (_1!10867 lt!677833))) (list!7825 (c!286089 (charsOf!2098 (_1!10867 lt!677833)))))))

(declare-fun bs!403781 () Bool)

(assert (= bs!403781 d!536143))

(declare-fun m!2169635 () Bool)

(assert (=> bs!403781 m!2169635))

(assert (=> b!1754834 d!536143))

(declare-fun d!536145 () Bool)

(declare-fun lt!677893 () BalanceConc!12786)

(assert (=> d!536145 (= (list!7823 lt!677893) (originalCharacters!4263 (_1!10867 lt!677833)))))

(assert (=> d!536145 (= lt!677893 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (value!107969 (_1!10867 lt!677833))))))

(assert (=> d!536145 (= (charsOf!2098 (_1!10867 lt!677833)) lt!677893)))

(declare-fun b_lambda!56541 () Bool)

(assert (=> (not b_lambda!56541) (not d!536145)))

(assert (=> d!536145 t!163359))

(declare-fun b_and!131673 () Bool)

(assert (= b_and!131637 (and (=> t!163359 result!126794) b_and!131673)))

(assert (=> d!536145 t!163361))

(declare-fun b_and!131675 () Bool)

(assert (= b_and!131639 (and (=> t!163361 result!126798) b_and!131675)))

(assert (=> d!536145 t!163363))

(declare-fun b_and!131677 () Bool)

(assert (= b_and!131641 (and (=> t!163363 result!126800) b_and!131677)))

(declare-fun m!2169637 () Bool)

(assert (=> d!536145 m!2169637))

(assert (=> d!536145 m!2169359))

(assert (=> b!1754834 d!536145))

(declare-fun d!536147 () Bool)

(assert (=> d!536147 (= (get!5863 lt!677846) (v!25369 lt!677846))))

(assert (=> b!1754834 d!536147))

(declare-fun d!536149 () Bool)

(assert (=> d!536149 (= (list!7823 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835))) (list!7825 (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835)))))))

(declare-fun bs!403782 () Bool)

(assert (= bs!403782 d!536149))

(declare-fun m!2169639 () Bool)

(assert (=> bs!403782 m!2169639))

(assert (=> b!1754833 d!536149))

(declare-fun bs!403783 () Bool)

(declare-fun d!536151 () Bool)

(assert (= bs!403783 (and d!536151 b!1754830)))

(declare-fun lambda!69992 () Int)

(assert (=> bs!403783 (= lambda!69992 lambda!69980)))

(declare-fun b!1755080 () Bool)

(declare-fun e!1123298 () Bool)

(assert (=> b!1755080 (= e!1123298 true)))

(assert (=> d!536151 e!1123298))

(assert (= d!536151 b!1755080))

(assert (=> b!1755080 (< (dynLambda!9247 order!12175 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833))))) (dynLambda!9248 order!12177 lambda!69992))))

(assert (=> b!1755080 (< (dynLambda!9249 order!12179 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833))))) (dynLambda!9248 order!12177 lambda!69992))))

(assert (=> d!536151 (= (list!7823 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835))) (list!7823 lt!677835))))

(declare-fun lt!677896 () Unit!33465)

(declare-fun ForallOf!301 (Int BalanceConc!12786) Unit!33465)

(assert (=> d!536151 (= lt!677896 (ForallOf!301 lambda!69992 lt!677835))))

(assert (=> d!536151 (= (lemmaSemiInverse!587 (transformation!3449 (rule!5463 (_1!10867 lt!677833))) lt!677835) lt!677896)))

(declare-fun b_lambda!56543 () Bool)

(assert (=> (not b_lambda!56543) (not d!536151)))

(assert (=> d!536151 t!163365))

(declare-fun b_and!131679 () Bool)

(assert (= b_and!131673 (and (=> t!163365 result!126802) b_and!131679)))

(assert (=> d!536151 t!163367))

(declare-fun b_and!131681 () Bool)

(assert (= b_and!131675 (and (=> t!163367 result!126804) b_and!131681)))

(assert (=> d!536151 t!163369))

(declare-fun b_and!131683 () Bool)

(assert (= b_and!131677 (and (=> t!163369 result!126806) b_and!131683)))

(declare-fun b_lambda!56545 () Bool)

(assert (=> (not b_lambda!56545) (not d!536151)))

(assert (=> d!536151 t!163371))

(declare-fun b_and!131685 () Bool)

(assert (= b_and!131643 (and (=> t!163371 result!126808) b_and!131685)))

(assert (=> d!536151 t!163373))

(declare-fun b_and!131687 () Bool)

(assert (= b_and!131645 (and (=> t!163373 result!126812) b_and!131687)))

(assert (=> d!536151 t!163375))

(declare-fun b_and!131689 () Bool)

(assert (= b_and!131647 (and (=> t!163375 result!126814) b_and!131689)))

(assert (=> d!536151 m!2169421))

(assert (=> d!536151 m!2169423))

(assert (=> d!536151 m!2169425))

(assert (=> d!536151 m!2169349))

(declare-fun m!2169641 () Bool)

(assert (=> d!536151 m!2169641))

(assert (=> d!536151 m!2169421))

(assert (=> d!536151 m!2169423))

(assert (=> b!1754833 d!536151))

(declare-fun d!536153 () Bool)

(declare-fun c!286136 () Bool)

(assert (=> d!536153 (= c!286136 ((_ is Node!6421) (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835)))))))

(declare-fun e!1123303 () Bool)

(assert (=> d!536153 (= (inv!25058 (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835)))) e!1123303)))

(declare-fun b!1755087 () Bool)

(declare-fun inv!25062 (Conc!6421) Bool)

(assert (=> b!1755087 (= e!1123303 (inv!25062 (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835)))))))

(declare-fun b!1755088 () Bool)

(declare-fun e!1123304 () Bool)

(assert (=> b!1755088 (= e!1123303 e!1123304)))

(declare-fun res!789560 () Bool)

(assert (=> b!1755088 (= res!789560 (not ((_ is Leaf!9366) (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835))))))))

(assert (=> b!1755088 (=> res!789560 e!1123304)))

(declare-fun b!1755089 () Bool)

(declare-fun inv!25063 (Conc!6421) Bool)

(assert (=> b!1755089 (= e!1123304 (inv!25063 (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835)))))))

(assert (= (and d!536153 c!286136) b!1755087))

(assert (= (and d!536153 (not c!286136)) b!1755088))

(assert (= (and b!1755088 (not res!789560)) b!1755089))

(declare-fun m!2169643 () Bool)

(assert (=> b!1755087 m!2169643))

(declare-fun m!2169645 () Bool)

(assert (=> b!1755089 m!2169645))

(assert (=> b!1754866 d!536153))

(declare-fun d!536155 () Bool)

(declare-fun res!789565 () Bool)

(declare-fun e!1123307 () Bool)

(assert (=> d!536155 (=> (not res!789565) (not e!1123307))))

(assert (=> d!536155 (= res!789565 (not (isEmpty!12174 (originalCharacters!4263 token!523))))))

(assert (=> d!536155 (= (inv!25057 token!523) e!1123307)))

(declare-fun b!1755094 () Bool)

(declare-fun res!789566 () Bool)

(assert (=> b!1755094 (=> (not res!789566) (not e!1123307))))

(assert (=> b!1755094 (= res!789566 (= (originalCharacters!4263 token!523) (list!7823 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 token!523))) (value!107969 token!523)))))))

(declare-fun b!1755095 () Bool)

(assert (=> b!1755095 (= e!1123307 (= (size!15338 token!523) (size!15342 (originalCharacters!4263 token!523))))))

(assert (= (and d!536155 res!789565) b!1755094))

(assert (= (and b!1755094 res!789566) b!1755095))

(declare-fun b_lambda!56547 () Bool)

(assert (=> (not b_lambda!56547) (not b!1755094)))

(declare-fun t!163392 () Bool)

(declare-fun tb!105437 () Bool)

(assert (=> (and b!1754838 (= (toChars!4827 (transformation!3449 (rule!5463 token!523))) (toChars!4827 (transformation!3449 (rule!5463 token!523)))) t!163392) tb!105437))

(declare-fun b!1755096 () Bool)

(declare-fun e!1123308 () Bool)

(declare-fun tp!498950 () Bool)

(assert (=> b!1755096 (= e!1123308 (and (inv!25058 (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 token!523))) (value!107969 token!523)))) tp!498950))))

(declare-fun result!126828 () Bool)

(assert (=> tb!105437 (= result!126828 (and (inv!25059 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 token!523))) (value!107969 token!523))) e!1123308))))

(assert (= tb!105437 b!1755096))

(declare-fun m!2169647 () Bool)

(assert (=> b!1755096 m!2169647))

(declare-fun m!2169649 () Bool)

(assert (=> tb!105437 m!2169649))

(assert (=> b!1755094 t!163392))

(declare-fun b_and!131691 () Bool)

(assert (= b_and!131679 (and (=> t!163392 result!126828) b_and!131691)))

(declare-fun t!163394 () Bool)

(declare-fun tb!105439 () Bool)

(assert (=> (and b!1754845 (= (toChars!4827 (transformation!3449 rule!422)) (toChars!4827 (transformation!3449 (rule!5463 token!523)))) t!163394) tb!105439))

(declare-fun result!126830 () Bool)

(assert (= result!126830 result!126828))

(assert (=> b!1755094 t!163394))

(declare-fun b_and!131693 () Bool)

(assert (= b_and!131681 (and (=> t!163394 result!126830) b_and!131693)))

(declare-fun t!163396 () Bool)

(declare-fun tb!105441 () Bool)

(assert (=> (and b!1754832 (= (toChars!4827 (transformation!3449 (h!24706 rules!3447))) (toChars!4827 (transformation!3449 (rule!5463 token!523)))) t!163396) tb!105441))

(declare-fun result!126832 () Bool)

(assert (= result!126832 result!126828))

(assert (=> b!1755094 t!163396))

(declare-fun b_and!131695 () Bool)

(assert (= b_and!131683 (and (=> t!163396 result!126832) b_and!131695)))

(declare-fun m!2169651 () Bool)

(assert (=> d!536155 m!2169651))

(declare-fun m!2169653 () Bool)

(assert (=> b!1755094 m!2169653))

(assert (=> b!1755094 m!2169653))

(declare-fun m!2169655 () Bool)

(assert (=> b!1755094 m!2169655))

(declare-fun m!2169657 () Bool)

(assert (=> b!1755095 m!2169657))

(assert (=> start!173158 d!536155))

(declare-fun d!536157 () Bool)

(assert (=> d!536157 (= (isEmpty!12174 (_2!10867 lt!677840)) ((_ is Nil!19304) (_2!10867 lt!677840)))))

(assert (=> b!1754831 d!536157))

(declare-fun d!536159 () Bool)

(declare-fun choose!10844 (Int) Bool)

(assert (=> d!536159 (= (Forall!816 lambda!69980) (choose!10844 lambda!69980))))

(declare-fun bs!403784 () Bool)

(assert (= bs!403784 d!536159))

(declare-fun m!2169659 () Bool)

(assert (=> bs!403784 m!2169659))

(assert (=> b!1754830 d!536159))

(declare-fun d!536161 () Bool)

(declare-fun e!1123311 () Bool)

(assert (=> d!536161 e!1123311))

(declare-fun res!789569 () Bool)

(assert (=> d!536161 (=> (not res!789569) (not e!1123311))))

(declare-fun semiInverseModEq!1363 (Int Int) Bool)

(assert (=> d!536161 (= res!789569 (semiInverseModEq!1363 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833))))))))

(declare-fun Unit!33470 () Unit!33465)

(assert (=> d!536161 (= (lemmaInv!648 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) Unit!33470)))

(declare-fun b!1755099 () Bool)

(declare-fun equivClasses!1304 (Int Int) Bool)

(assert (=> b!1755099 (= e!1123311 (equivClasses!1304 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833))))))))

(assert (= (and d!536161 res!789569) b!1755099))

(declare-fun m!2169661 () Bool)

(assert (=> d!536161 m!2169661))

(declare-fun m!2169663 () Bool)

(assert (=> b!1755099 m!2169663))

(assert (=> b!1754830 d!536161))

(declare-fun d!536163 () Bool)

(assert (=> d!536163 (isPrefix!1689 lt!677843 (++!5273 lt!677843 (_2!10867 lt!677833)))))

(declare-fun lt!677899 () Unit!33465)

(declare-fun choose!10845 (List!19374 List!19374) Unit!33465)

(assert (=> d!536163 (= lt!677899 (choose!10845 lt!677843 (_2!10867 lt!677833)))))

(assert (=> d!536163 (= (lemmaConcatTwoListThenFirstIsPrefix!1198 lt!677843 (_2!10867 lt!677833)) lt!677899)))

(declare-fun bs!403785 () Bool)

(assert (= bs!403785 d!536163))

(assert (=> bs!403785 m!2169333))

(assert (=> bs!403785 m!2169333))

(assert (=> bs!403785 m!2169335))

(declare-fun m!2169665 () Bool)

(assert (=> bs!403785 m!2169665))

(assert (=> b!1754829 d!536163))

(declare-fun b!1755179 () Bool)

(declare-fun e!1123351 () Bool)

(declare-fun lt!678030 () Token!6464)

(assert (=> b!1755179 (= e!1123351 (= (rule!5463 lt!678030) (get!5863 (getRuleFromTag!497 thiss!24550 rules!3447 (tag!3803 (rule!5463 lt!678030))))))))

(declare-fun b!1755180 () Bool)

(declare-fun e!1123352 () Unit!33465)

(declare-fun Unit!33471 () Unit!33465)

(assert (=> b!1755180 (= e!1123352 Unit!33471)))

(declare-fun lt!678018 () List!19374)

(assert (=> b!1755180 (= lt!678018 (++!5273 lt!677842 suffix!1421))))

(declare-fun lt!678017 () Unit!33465)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!307 (LexerInterface!3078 Rule!6698 List!19375 List!19374) Unit!33465)

(assert (=> b!1755180 (= lt!678017 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!307 thiss!24550 (rule!5463 lt!678030) rules!3447 lt!678018))))

(declare-fun isEmpty!12177 (Option!3920) Bool)

(declare-fun maxPrefixOneRule!1001 (LexerInterface!3078 Rule!6698 List!19374) Option!3920)

(assert (=> b!1755180 (isEmpty!12177 (maxPrefixOneRule!1001 thiss!24550 (rule!5463 lt!678030) lt!678018))))

(declare-fun lt!678033 () Unit!33465)

(assert (=> b!1755180 (= lt!678033 lt!678017)))

(declare-fun lt!678032 () List!19374)

(assert (=> b!1755180 (= lt!678032 (list!7823 (charsOf!2098 lt!678030)))))

(declare-fun lt!678020 () Unit!33465)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!303 (LexerInterface!3078 Rule!6698 List!19374 List!19374) Unit!33465)

(assert (=> b!1755180 (= lt!678020 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!303 thiss!24550 (rule!5463 lt!678030) lt!678032 (++!5273 lt!677842 suffix!1421)))))

(assert (=> b!1755180 (not (matchR!2250 (regex!3449 (rule!5463 lt!678030)) lt!678032))))

(declare-fun lt!678031 () Unit!33465)

(assert (=> b!1755180 (= lt!678031 lt!678020)))

(assert (=> b!1755180 false))

(declare-fun d!536165 () Bool)

(assert (=> d!536165 (isDefined!3264 (maxPrefix!1632 thiss!24550 rules!3447 (++!5273 lt!677842 suffix!1421)))))

(declare-fun lt!678023 () Unit!33465)

(assert (=> d!536165 (= lt!678023 e!1123352)))

(declare-fun c!286153 () Bool)

(assert (=> d!536165 (= c!286153 (isEmpty!12177 (maxPrefix!1632 thiss!24550 rules!3447 (++!5273 lt!677842 suffix!1421))))))

(declare-fun lt!678028 () Unit!33465)

(declare-fun lt!678026 () Unit!33465)

(assert (=> d!536165 (= lt!678028 lt!678026)))

(assert (=> d!536165 e!1123351))

(declare-fun res!789614 () Bool)

(assert (=> d!536165 (=> (not res!789614) (not e!1123351))))

(assert (=> d!536165 (= res!789614 (isDefined!3263 (getRuleFromTag!497 thiss!24550 rules!3447 (tag!3803 (rule!5463 lt!678030)))))))

(assert (=> d!536165 (= lt!678026 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!497 thiss!24550 rules!3447 lt!677842 lt!678030))))

(declare-fun lt!678029 () Unit!33465)

(declare-fun lt!678027 () Unit!33465)

(assert (=> d!536165 (= lt!678029 lt!678027)))

(declare-fun lt!678025 () List!19374)

(assert (=> d!536165 (isPrefix!1689 lt!678025 (++!5273 lt!677842 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!299 (List!19374 List!19374 List!19374) Unit!33465)

(assert (=> d!536165 (= lt!678027 (lemmaPrefixStaysPrefixWhenAddingToSuffix!299 lt!678025 lt!677842 suffix!1421))))

(assert (=> d!536165 (= lt!678025 (list!7823 (charsOf!2098 lt!678030)))))

(declare-fun lt!678021 () Unit!33465)

(declare-fun lt!678024 () Unit!33465)

(assert (=> d!536165 (= lt!678021 lt!678024)))

(declare-fun lt!678022 () List!19374)

(declare-fun lt!678019 () List!19374)

(assert (=> d!536165 (isPrefix!1689 lt!678022 (++!5273 lt!678022 lt!678019))))

(assert (=> d!536165 (= lt!678024 (lemmaConcatTwoListThenFirstIsPrefix!1198 lt!678022 lt!678019))))

(assert (=> d!536165 (= lt!678019 (_2!10867 (get!5862 (maxPrefix!1632 thiss!24550 rules!3447 lt!677842))))))

(assert (=> d!536165 (= lt!678022 (list!7823 (charsOf!2098 lt!678030)))))

(declare-datatypes ((List!19380 0))(
  ( (Nil!19310) (Cons!19310 (h!24711 Token!6464) (t!163427 List!19380)) )
))
(declare-fun head!4052 (List!19380) Token!6464)

(declare-datatypes ((IArray!12851 0))(
  ( (IArray!12852 (innerList!6483 List!19380)) )
))
(declare-datatypes ((Conc!6423 0))(
  ( (Node!6423 (left!15457 Conc!6423) (right!15787 Conc!6423) (csize!13076 Int) (cheight!6634 Int)) (Leaf!9368 (xs!9299 IArray!12851) (csize!13077 Int)) (Empty!6423) )
))
(declare-datatypes ((BalanceConc!12790 0))(
  ( (BalanceConc!12791 (c!286189 Conc!6423)) )
))
(declare-fun list!7827 (BalanceConc!12790) List!19380)

(declare-datatypes ((tuple2!18934 0))(
  ( (tuple2!18935 (_1!10869 BalanceConc!12790) (_2!10869 BalanceConc!12786)) )
))
(declare-fun lex!1438 (LexerInterface!3078 List!19375 BalanceConc!12786) tuple2!18934)

(assert (=> d!536165 (= lt!678030 (head!4052 (list!7827 (_1!10869 (lex!1438 thiss!24550 rules!3447 (seqFromList!2418 lt!677842))))))))

(assert (=> d!536165 (not (isEmpty!12175 rules!3447))))

(assert (=> d!536165 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!600 thiss!24550 rules!3447 lt!677842 suffix!1421) lt!678023)))

(declare-fun b!1755178 () Bool)

(declare-fun res!789613 () Bool)

(assert (=> b!1755178 (=> (not res!789613) (not e!1123351))))

(assert (=> b!1755178 (= res!789613 (matchR!2250 (regex!3449 (get!5863 (getRuleFromTag!497 thiss!24550 rules!3447 (tag!3803 (rule!5463 lt!678030))))) (list!7823 (charsOf!2098 lt!678030))))))

(declare-fun b!1755181 () Bool)

(declare-fun Unit!33472 () Unit!33465)

(assert (=> b!1755181 (= e!1123352 Unit!33472)))

(assert (= (and d!536165 res!789614) b!1755178))

(assert (= (and b!1755178 res!789613) b!1755179))

(assert (= (and d!536165 c!286153) b!1755180))

(assert (= (and d!536165 (not c!286153)) b!1755181))

(declare-fun m!2169789 () Bool)

(assert (=> b!1755179 m!2169789))

(assert (=> b!1755179 m!2169789))

(declare-fun m!2169791 () Bool)

(assert (=> b!1755179 m!2169791))

(assert (=> b!1755180 m!2169339))

(declare-fun m!2169799 () Bool)

(assert (=> b!1755180 m!2169799))

(declare-fun m!2169801 () Bool)

(assert (=> b!1755180 m!2169801))

(declare-fun m!2169803 () Bool)

(assert (=> b!1755180 m!2169803))

(declare-fun m!2169805 () Bool)

(assert (=> b!1755180 m!2169805))

(declare-fun m!2169807 () Bool)

(assert (=> b!1755180 m!2169807))

(assert (=> b!1755180 m!2169801))

(assert (=> b!1755180 m!2169807))

(declare-fun m!2169811 () Bool)

(assert (=> b!1755180 m!2169811))

(declare-fun m!2169813 () Bool)

(assert (=> b!1755180 m!2169813))

(assert (=> b!1755180 m!2169339))

(declare-fun m!2169815 () Bool)

(assert (=> d!536165 m!2169815))

(declare-fun m!2169817 () Bool)

(assert (=> d!536165 m!2169817))

(assert (=> d!536165 m!2169801))

(assert (=> d!536165 m!2169803))

(declare-fun m!2169819 () Bool)

(assert (=> d!536165 m!2169819))

(declare-fun m!2169821 () Bool)

(assert (=> d!536165 m!2169821))

(assert (=> d!536165 m!2169323))

(declare-fun m!2169823 () Bool)

(assert (=> d!536165 m!2169823))

(declare-fun m!2169825 () Bool)

(assert (=> d!536165 m!2169825))

(declare-fun m!2169827 () Bool)

(assert (=> d!536165 m!2169827))

(declare-fun m!2169829 () Bool)

(assert (=> d!536165 m!2169829))

(assert (=> d!536165 m!2169819))

(assert (=> d!536165 m!2169339))

(declare-fun m!2169831 () Bool)

(assert (=> d!536165 m!2169831))

(assert (=> d!536165 m!2169801))

(assert (=> d!536165 m!2169789))

(declare-fun m!2169833 () Bool)

(assert (=> d!536165 m!2169833))

(assert (=> d!536165 m!2169339))

(assert (=> d!536165 m!2169827))

(assert (=> d!536165 m!2169823))

(declare-fun m!2169835 () Bool)

(assert (=> d!536165 m!2169835))

(declare-fun m!2169837 () Bool)

(assert (=> d!536165 m!2169837))

(assert (=> d!536165 m!2169375))

(declare-fun m!2169839 () Bool)

(assert (=> d!536165 m!2169839))

(declare-fun m!2169841 () Bool)

(assert (=> d!536165 m!2169841))

(assert (=> d!536165 m!2169789))

(assert (=> d!536165 m!2169339))

(assert (=> d!536165 m!2169815))

(assert (=> d!536165 m!2169827))

(declare-fun m!2169843 () Bool)

(assert (=> d!536165 m!2169843))

(assert (=> d!536165 m!2169375))

(assert (=> b!1755178 m!2169803))

(declare-fun m!2169845 () Bool)

(assert (=> b!1755178 m!2169845))

(assert (=> b!1755178 m!2169801))

(assert (=> b!1755178 m!2169803))

(assert (=> b!1755178 m!2169789))

(assert (=> b!1755178 m!2169791))

(assert (=> b!1755178 m!2169801))

(assert (=> b!1755178 m!2169789))

(assert (=> b!1754829 d!536165))

(declare-fun b!1755191 () Bool)

(declare-fun e!1123359 () List!19374)

(assert (=> b!1755191 (= e!1123359 (Cons!19304 (h!24705 lt!677842) (++!5273 (t!163377 lt!677842) suffix!1421)))))

(declare-fun d!536195 () Bool)

(declare-fun e!1123360 () Bool)

(assert (=> d!536195 e!1123360))

(declare-fun res!789620 () Bool)

(assert (=> d!536195 (=> (not res!789620) (not e!1123360))))

(declare-fun lt!678034 () List!19374)

(assert (=> d!536195 (= res!789620 (= (content!2774 lt!678034) ((_ map or) (content!2774 lt!677842) (content!2774 suffix!1421))))))

(assert (=> d!536195 (= lt!678034 e!1123359)))

(declare-fun c!286156 () Bool)

(assert (=> d!536195 (= c!286156 ((_ is Nil!19304) lt!677842))))

(assert (=> d!536195 (= (++!5273 lt!677842 suffix!1421) lt!678034)))

(declare-fun b!1755193 () Bool)

(assert (=> b!1755193 (= e!1123360 (or (not (= suffix!1421 Nil!19304)) (= lt!678034 lt!677842)))))

(declare-fun b!1755192 () Bool)

(declare-fun res!789619 () Bool)

(assert (=> b!1755192 (=> (not res!789619) (not e!1123360))))

(assert (=> b!1755192 (= res!789619 (= (size!15342 lt!678034) (+ (size!15342 lt!677842) (size!15342 suffix!1421))))))

(declare-fun b!1755190 () Bool)

(assert (=> b!1755190 (= e!1123359 suffix!1421)))

(assert (= (and d!536195 c!286156) b!1755190))

(assert (= (and d!536195 (not c!286156)) b!1755191))

(assert (= (and d!536195 res!789620) b!1755192))

(assert (= (and b!1755192 res!789619) b!1755193))

(declare-fun m!2169847 () Bool)

(assert (=> b!1755191 m!2169847))

(declare-fun m!2169849 () Bool)

(assert (=> d!536195 m!2169849))

(assert (=> d!536195 m!2169583))

(declare-fun m!2169851 () Bool)

(assert (=> d!536195 m!2169851))

(declare-fun m!2169853 () Bool)

(assert (=> b!1755192 m!2169853))

(assert (=> b!1755192 m!2169589))

(declare-fun m!2169855 () Bool)

(assert (=> b!1755192 m!2169855))

(assert (=> b!1754829 d!536195))

(declare-fun d!536197 () Bool)

(assert (=> d!536197 (= (get!5862 lt!677836) (v!25368 lt!677836))))

(assert (=> b!1754829 d!536197))

(declare-fun b!1755199 () Bool)

(declare-fun e!1123365 () List!19374)

(assert (=> b!1755199 (= e!1123365 (Cons!19304 (h!24705 lt!677843) (++!5273 (t!163377 lt!677843) (_2!10867 lt!677833))))))

(declare-fun d!536199 () Bool)

(declare-fun e!1123366 () Bool)

(assert (=> d!536199 e!1123366))

(declare-fun res!789626 () Bool)

(assert (=> d!536199 (=> (not res!789626) (not e!1123366))))

(declare-fun lt!678037 () List!19374)

(assert (=> d!536199 (= res!789626 (= (content!2774 lt!678037) ((_ map or) (content!2774 lt!677843) (content!2774 (_2!10867 lt!677833)))))))

(assert (=> d!536199 (= lt!678037 e!1123365)))

(declare-fun c!286157 () Bool)

(assert (=> d!536199 (= c!286157 ((_ is Nil!19304) lt!677843))))

(assert (=> d!536199 (= (++!5273 lt!677843 (_2!10867 lt!677833)) lt!678037)))

(declare-fun b!1755201 () Bool)

(assert (=> b!1755201 (= e!1123366 (or (not (= (_2!10867 lt!677833) Nil!19304)) (= lt!678037 lt!677843)))))

(declare-fun b!1755200 () Bool)

(declare-fun res!789625 () Bool)

(assert (=> b!1755200 (=> (not res!789625) (not e!1123366))))

(assert (=> b!1755200 (= res!789625 (= (size!15342 lt!678037) (+ (size!15342 lt!677843) (size!15342 (_2!10867 lt!677833)))))))

(declare-fun b!1755198 () Bool)

(assert (=> b!1755198 (= e!1123365 (_2!10867 lt!677833))))

(assert (= (and d!536199 c!286157) b!1755198))

(assert (= (and d!536199 (not c!286157)) b!1755199))

(assert (= (and d!536199 res!789626) b!1755200))

(assert (= (and b!1755200 res!789625) b!1755201))

(declare-fun m!2169859 () Bool)

(assert (=> b!1755199 m!2169859))

(declare-fun m!2169863 () Bool)

(assert (=> d!536199 m!2169863))

(declare-fun m!2169865 () Bool)

(assert (=> d!536199 m!2169865))

(declare-fun m!2169869 () Bool)

(assert (=> d!536199 m!2169869))

(declare-fun m!2169871 () Bool)

(assert (=> b!1755200 m!2169871))

(declare-fun m!2169873 () Bool)

(assert (=> b!1755200 m!2169873))

(declare-fun m!2169875 () Bool)

(assert (=> b!1755200 m!2169875))

(assert (=> b!1754829 d!536199))

(declare-fun b!1755249 () Bool)

(declare-fun e!1123396 () Option!3921)

(assert (=> b!1755249 (= e!1123396 None!3920)))

(declare-fun b!1755250 () Bool)

(declare-fun lt!678052 () Unit!33465)

(declare-fun lt!678054 () Unit!33465)

(assert (=> b!1755250 (= lt!678052 lt!678054)))

(assert (=> b!1755250 (rulesInvariant!2747 thiss!24550 (t!163378 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!177 (LexerInterface!3078 Rule!6698 List!19375) Unit!33465)

(assert (=> b!1755250 (= lt!678054 (lemmaInvariantOnRulesThenOnTail!177 thiss!24550 (h!24706 rules!3447) (t!163378 rules!3447)))))

(assert (=> b!1755250 (= e!1123396 (getRuleFromTag!497 thiss!24550 (t!163378 rules!3447) (tag!3803 (rule!5463 (_1!10867 lt!677833)))))))

(declare-fun b!1755251 () Bool)

(declare-fun e!1123398 () Bool)

(declare-fun lt!678053 () Option!3921)

(assert (=> b!1755251 (= e!1123398 (= (tag!3803 (get!5863 lt!678053)) (tag!3803 (rule!5463 (_1!10867 lt!677833)))))))

(declare-fun b!1755252 () Bool)

(declare-fun e!1123399 () Bool)

(assert (=> b!1755252 (= e!1123399 e!1123398)))

(declare-fun res!789656 () Bool)

(assert (=> b!1755252 (=> (not res!789656) (not e!1123398))))

(assert (=> b!1755252 (= res!789656 (contains!3477 rules!3447 (get!5863 lt!678053)))))

(declare-fun b!1755254 () Bool)

(declare-fun e!1123397 () Option!3921)

(assert (=> b!1755254 (= e!1123397 e!1123396)))

(declare-fun c!286167 () Bool)

(assert (=> b!1755254 (= c!286167 (and ((_ is Cons!19305) rules!3447) (not (= (tag!3803 (h!24706 rules!3447)) (tag!3803 (rule!5463 (_1!10867 lt!677833)))))))))

(declare-fun d!536203 () Bool)

(assert (=> d!536203 e!1123399))

(declare-fun res!789657 () Bool)

(assert (=> d!536203 (=> res!789657 e!1123399)))

(declare-fun isEmpty!12179 (Option!3921) Bool)

(assert (=> d!536203 (= res!789657 (isEmpty!12179 lt!678053))))

(assert (=> d!536203 (= lt!678053 e!1123397)))

(declare-fun c!286168 () Bool)

(assert (=> d!536203 (= c!286168 (and ((_ is Cons!19305) rules!3447) (= (tag!3803 (h!24706 rules!3447)) (tag!3803 (rule!5463 (_1!10867 lt!677833))))))))

(assert (=> d!536203 (rulesInvariant!2747 thiss!24550 rules!3447)))

(assert (=> d!536203 (= (getRuleFromTag!497 thiss!24550 rules!3447 (tag!3803 (rule!5463 (_1!10867 lt!677833)))) lt!678053)))

(declare-fun b!1755253 () Bool)

(assert (=> b!1755253 (= e!1123397 (Some!3920 (h!24706 rules!3447)))))

(assert (= (and d!536203 c!286168) b!1755253))

(assert (= (and d!536203 (not c!286168)) b!1755254))

(assert (= (and b!1755254 c!286167) b!1755250))

(assert (= (and b!1755254 (not c!286167)) b!1755249))

(assert (= (and d!536203 (not res!789657)) b!1755252))

(assert (= (and b!1755252 res!789656) b!1755251))

(declare-fun m!2169951 () Bool)

(assert (=> b!1755250 m!2169951))

(declare-fun m!2169953 () Bool)

(assert (=> b!1755250 m!2169953))

(declare-fun m!2169955 () Bool)

(assert (=> b!1755250 m!2169955))

(declare-fun m!2169957 () Bool)

(assert (=> b!1755251 m!2169957))

(assert (=> b!1755252 m!2169957))

(assert (=> b!1755252 m!2169957))

(declare-fun m!2169959 () Bool)

(assert (=> b!1755252 m!2169959))

(declare-fun m!2169961 () Bool)

(assert (=> d!536203 m!2169961))

(assert (=> d!536203 m!2169381))

(assert (=> b!1754829 d!536203))

(declare-fun d!536235 () Bool)

(declare-fun e!1123431 () Bool)

(assert (=> d!536235 e!1123431))

(declare-fun res!789662 () Bool)

(assert (=> d!536235 (=> (not res!789662) (not e!1123431))))

(assert (=> d!536235 (= res!789662 (isDefined!3263 (getRuleFromTag!497 thiss!24550 rules!3447 (tag!3803 (rule!5463 (_1!10867 lt!677833))))))))

(declare-fun lt!678058 () Unit!33465)

(declare-fun choose!10846 (LexerInterface!3078 List!19375 List!19374 Token!6464) Unit!33465)

(assert (=> d!536235 (= lt!678058 (choose!10846 thiss!24550 rules!3447 lt!677837 (_1!10867 lt!677833)))))

(assert (=> d!536235 (rulesInvariant!2747 thiss!24550 rules!3447)))

(assert (=> d!536235 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!497 thiss!24550 rules!3447 lt!677837 (_1!10867 lt!677833)) lt!678058)))

(declare-fun b!1755312 () Bool)

(declare-fun res!789663 () Bool)

(assert (=> b!1755312 (=> (not res!789663) (not e!1123431))))

(assert (=> b!1755312 (= res!789663 (matchR!2250 (regex!3449 (get!5863 (getRuleFromTag!497 thiss!24550 rules!3447 (tag!3803 (rule!5463 (_1!10867 lt!677833)))))) (list!7823 (charsOf!2098 (_1!10867 lt!677833)))))))

(declare-fun b!1755313 () Bool)

(assert (=> b!1755313 (= e!1123431 (= (rule!5463 (_1!10867 lt!677833)) (get!5863 (getRuleFromTag!497 thiss!24550 rules!3447 (tag!3803 (rule!5463 (_1!10867 lt!677833)))))))))

(assert (= (and d!536235 res!789662) b!1755312))

(assert (= (and b!1755312 res!789663) b!1755313))

(assert (=> d!536235 m!2169353))

(assert (=> d!536235 m!2169353))

(declare-fun m!2169979 () Bool)

(assert (=> d!536235 m!2169979))

(declare-fun m!2169981 () Bool)

(assert (=> d!536235 m!2169981))

(assert (=> d!536235 m!2169381))

(assert (=> b!1755312 m!2169345))

(assert (=> b!1755312 m!2169367))

(assert (=> b!1755312 m!2169353))

(assert (=> b!1755312 m!2169367))

(declare-fun m!2169983 () Bool)

(assert (=> b!1755312 m!2169983))

(assert (=> b!1755312 m!2169345))

(assert (=> b!1755312 m!2169353))

(declare-fun m!2169985 () Bool)

(assert (=> b!1755312 m!2169985))

(assert (=> b!1755313 m!2169353))

(assert (=> b!1755313 m!2169353))

(assert (=> b!1755313 m!2169985))

(assert (=> b!1754829 d!536235))

(assert (=> b!1754829 d!536145))

(declare-fun b!1755325 () Bool)

(declare-fun e!1123438 () Bool)

(assert (=> b!1755325 (= e!1123438 (>= (size!15342 lt!677837) (size!15342 lt!677842)))))

(declare-fun d!536237 () Bool)

(assert (=> d!536237 e!1123438))

(declare-fun res!789674 () Bool)

(assert (=> d!536237 (=> res!789674 e!1123438)))

(declare-fun lt!678061 () Bool)

(assert (=> d!536237 (= res!789674 (not lt!678061))))

(declare-fun e!1123439 () Bool)

(assert (=> d!536237 (= lt!678061 e!1123439)))

(declare-fun res!789675 () Bool)

(assert (=> d!536237 (=> res!789675 e!1123439)))

(assert (=> d!536237 (= res!789675 ((_ is Nil!19304) lt!677842))))

(assert (=> d!536237 (= (isPrefix!1689 lt!677842 lt!677837) lt!678061)))

(declare-fun b!1755322 () Bool)

(declare-fun e!1123440 () Bool)

(assert (=> b!1755322 (= e!1123439 e!1123440)))

(declare-fun res!789672 () Bool)

(assert (=> b!1755322 (=> (not res!789672) (not e!1123440))))

(assert (=> b!1755322 (= res!789672 (not ((_ is Nil!19304) lt!677837)))))

(declare-fun b!1755324 () Bool)

(assert (=> b!1755324 (= e!1123440 (isPrefix!1689 (tail!2621 lt!677842) (tail!2621 lt!677837)))))

(declare-fun b!1755323 () Bool)

(declare-fun res!789673 () Bool)

(assert (=> b!1755323 (=> (not res!789673) (not e!1123440))))

(assert (=> b!1755323 (= res!789673 (= (head!4050 lt!677842) (head!4050 lt!677837)))))

(assert (= (and d!536237 (not res!789675)) b!1755322))

(assert (= (and b!1755322 res!789672) b!1755323))

(assert (= (and b!1755323 res!789673) b!1755324))

(assert (= (and d!536237 (not res!789674)) b!1755325))

(declare-fun m!2169987 () Bool)

(assert (=> b!1755325 m!2169987))

(assert (=> b!1755325 m!2169589))

(declare-fun m!2169989 () Bool)

(assert (=> b!1755324 m!2169989))

(declare-fun m!2169991 () Bool)

(assert (=> b!1755324 m!2169991))

(assert (=> b!1755324 m!2169989))

(assert (=> b!1755324 m!2169991))

(declare-fun m!2169993 () Bool)

(assert (=> b!1755324 m!2169993))

(declare-fun m!2169995 () Bool)

(assert (=> b!1755323 m!2169995))

(declare-fun m!2169997 () Bool)

(assert (=> b!1755323 m!2169997))

(assert (=> b!1754829 d!536237))

(declare-fun b!1755329 () Bool)

(declare-fun e!1123441 () Bool)

(assert (=> b!1755329 (= e!1123441 (>= (size!15342 (++!5273 lt!677843 (_2!10867 lt!677833))) (size!15342 lt!677843)))))

(declare-fun d!536239 () Bool)

(assert (=> d!536239 e!1123441))

(declare-fun res!789678 () Bool)

(assert (=> d!536239 (=> res!789678 e!1123441)))

(declare-fun lt!678062 () Bool)

(assert (=> d!536239 (= res!789678 (not lt!678062))))

(declare-fun e!1123442 () Bool)

(assert (=> d!536239 (= lt!678062 e!1123442)))

(declare-fun res!789679 () Bool)

(assert (=> d!536239 (=> res!789679 e!1123442)))

(assert (=> d!536239 (= res!789679 ((_ is Nil!19304) lt!677843))))

(assert (=> d!536239 (= (isPrefix!1689 lt!677843 (++!5273 lt!677843 (_2!10867 lt!677833))) lt!678062)))

(declare-fun b!1755326 () Bool)

(declare-fun e!1123443 () Bool)

(assert (=> b!1755326 (= e!1123442 e!1123443)))

(declare-fun res!789676 () Bool)

(assert (=> b!1755326 (=> (not res!789676) (not e!1123443))))

(assert (=> b!1755326 (= res!789676 (not ((_ is Nil!19304) (++!5273 lt!677843 (_2!10867 lt!677833)))))))

(declare-fun b!1755328 () Bool)

(assert (=> b!1755328 (= e!1123443 (isPrefix!1689 (tail!2621 lt!677843) (tail!2621 (++!5273 lt!677843 (_2!10867 lt!677833)))))))

(declare-fun b!1755327 () Bool)

(declare-fun res!789677 () Bool)

(assert (=> b!1755327 (=> (not res!789677) (not e!1123443))))

(assert (=> b!1755327 (= res!789677 (= (head!4050 lt!677843) (head!4050 (++!5273 lt!677843 (_2!10867 lt!677833)))))))

(assert (= (and d!536239 (not res!789679)) b!1755326))

(assert (= (and b!1755326 res!789676) b!1755327))

(assert (= (and b!1755327 res!789677) b!1755328))

(assert (= (and d!536239 (not res!789678)) b!1755329))

(assert (=> b!1755329 m!2169333))

(declare-fun m!2169999 () Bool)

(assert (=> b!1755329 m!2169999))

(assert (=> b!1755329 m!2169873))

(declare-fun m!2170001 () Bool)

(assert (=> b!1755328 m!2170001))

(assert (=> b!1755328 m!2169333))

(declare-fun m!2170003 () Bool)

(assert (=> b!1755328 m!2170003))

(assert (=> b!1755328 m!2170001))

(assert (=> b!1755328 m!2170003))

(declare-fun m!2170005 () Bool)

(assert (=> b!1755328 m!2170005))

(declare-fun m!2170007 () Bool)

(assert (=> b!1755327 m!2170007))

(assert (=> b!1755327 m!2169333))

(declare-fun m!2170009 () Bool)

(assert (=> b!1755327 m!2170009))

(assert (=> b!1754829 d!536239))

(declare-fun d!536241 () Bool)

(declare-fun e!1123450 () Bool)

(assert (=> d!536241 e!1123450))

(declare-fun res!789699 () Bool)

(assert (=> d!536241 (=> res!789699 e!1123450)))

(declare-fun lt!678073 () Option!3920)

(assert (=> d!536241 (= res!789699 (isEmpty!12177 lt!678073))))

(declare-fun e!1123452 () Option!3920)

(assert (=> d!536241 (= lt!678073 e!1123452)))

(declare-fun c!286171 () Bool)

(assert (=> d!536241 (= c!286171 (and ((_ is Cons!19305) rules!3447) ((_ is Nil!19305) (t!163378 rules!3447))))))

(declare-fun lt!678077 () Unit!33465)

(declare-fun lt!678076 () Unit!33465)

(assert (=> d!536241 (= lt!678077 lt!678076)))

(assert (=> d!536241 (isPrefix!1689 lt!677837 lt!677837)))

(declare-fun lemmaIsPrefixRefl!1116 (List!19374 List!19374) Unit!33465)

(assert (=> d!536241 (= lt!678076 (lemmaIsPrefixRefl!1116 lt!677837 lt!677837))))

(declare-fun rulesValidInductive!1154 (LexerInterface!3078 List!19375) Bool)

(assert (=> d!536241 (rulesValidInductive!1154 thiss!24550 rules!3447)))

(assert (=> d!536241 (= (maxPrefix!1632 thiss!24550 rules!3447 lt!677837) lt!678073)))

(declare-fun b!1755348 () Bool)

(declare-fun res!789694 () Bool)

(declare-fun e!1123451 () Bool)

(assert (=> b!1755348 (=> (not res!789694) (not e!1123451))))

(assert (=> b!1755348 (= res!789694 (= (list!7823 (charsOf!2098 (_1!10867 (get!5862 lt!678073)))) (originalCharacters!4263 (_1!10867 (get!5862 lt!678073)))))))

(declare-fun bm!110530 () Bool)

(declare-fun call!110535 () Option!3920)

(assert (=> bm!110530 (= call!110535 (maxPrefixOneRule!1001 thiss!24550 (h!24706 rules!3447) lt!677837))))

(declare-fun b!1755349 () Bool)

(assert (=> b!1755349 (= e!1123451 (contains!3477 rules!3447 (rule!5463 (_1!10867 (get!5862 lt!678073)))))))

(declare-fun b!1755350 () Bool)

(declare-fun lt!678074 () Option!3920)

(declare-fun lt!678075 () Option!3920)

(assert (=> b!1755350 (= e!1123452 (ite (and ((_ is None!3919) lt!678074) ((_ is None!3919) lt!678075)) None!3919 (ite ((_ is None!3919) lt!678075) lt!678074 (ite ((_ is None!3919) lt!678074) lt!678075 (ite (>= (size!15338 (_1!10867 (v!25368 lt!678074))) (size!15338 (_1!10867 (v!25368 lt!678075)))) lt!678074 lt!678075)))))))

(assert (=> b!1755350 (= lt!678074 call!110535)))

(assert (=> b!1755350 (= lt!678075 (maxPrefix!1632 thiss!24550 (t!163378 rules!3447) lt!677837))))

(declare-fun b!1755351 () Bool)

(assert (=> b!1755351 (= e!1123452 call!110535)))

(declare-fun b!1755352 () Bool)

(declare-fun res!789698 () Bool)

(assert (=> b!1755352 (=> (not res!789698) (not e!1123451))))

(assert (=> b!1755352 (= res!789698 (= (value!107969 (_1!10867 (get!5862 lt!678073))) (apply!5249 (transformation!3449 (rule!5463 (_1!10867 (get!5862 lt!678073)))) (seqFromList!2418 (originalCharacters!4263 (_1!10867 (get!5862 lt!678073)))))))))

(declare-fun b!1755353 () Bool)

(declare-fun res!789700 () Bool)

(assert (=> b!1755353 (=> (not res!789700) (not e!1123451))))

(assert (=> b!1755353 (= res!789700 (= (++!5273 (list!7823 (charsOf!2098 (_1!10867 (get!5862 lt!678073)))) (_2!10867 (get!5862 lt!678073))) lt!677837))))

(declare-fun b!1755354 () Bool)

(declare-fun res!789696 () Bool)

(assert (=> b!1755354 (=> (not res!789696) (not e!1123451))))

(assert (=> b!1755354 (= res!789696 (< (size!15342 (_2!10867 (get!5862 lt!678073))) (size!15342 lt!677837)))))

(declare-fun b!1755355 () Bool)

(assert (=> b!1755355 (= e!1123450 e!1123451)))

(declare-fun res!789697 () Bool)

(assert (=> b!1755355 (=> (not res!789697) (not e!1123451))))

(assert (=> b!1755355 (= res!789697 (isDefined!3264 lt!678073))))

(declare-fun b!1755356 () Bool)

(declare-fun res!789695 () Bool)

(assert (=> b!1755356 (=> (not res!789695) (not e!1123451))))

(assert (=> b!1755356 (= res!789695 (matchR!2250 (regex!3449 (rule!5463 (_1!10867 (get!5862 lt!678073)))) (list!7823 (charsOf!2098 (_1!10867 (get!5862 lt!678073))))))))

(assert (= (and d!536241 c!286171) b!1755351))

(assert (= (and d!536241 (not c!286171)) b!1755350))

(assert (= (or b!1755351 b!1755350) bm!110530))

(assert (= (and d!536241 (not res!789699)) b!1755355))

(assert (= (and b!1755355 res!789697) b!1755348))

(assert (= (and b!1755348 res!789694) b!1755354))

(assert (= (and b!1755354 res!789696) b!1755353))

(assert (= (and b!1755353 res!789700) b!1755352))

(assert (= (and b!1755352 res!789698) b!1755356))

(assert (= (and b!1755356 res!789695) b!1755349))

(declare-fun m!2170011 () Bool)

(assert (=> b!1755349 m!2170011))

(declare-fun m!2170013 () Bool)

(assert (=> b!1755349 m!2170013))

(assert (=> b!1755352 m!2170011))

(declare-fun m!2170015 () Bool)

(assert (=> b!1755352 m!2170015))

(assert (=> b!1755352 m!2170015))

(declare-fun m!2170017 () Bool)

(assert (=> b!1755352 m!2170017))

(assert (=> b!1755354 m!2170011))

(declare-fun m!2170019 () Bool)

(assert (=> b!1755354 m!2170019))

(assert (=> b!1755354 m!2169987))

(assert (=> b!1755353 m!2170011))

(declare-fun m!2170021 () Bool)

(assert (=> b!1755353 m!2170021))

(assert (=> b!1755353 m!2170021))

(declare-fun m!2170023 () Bool)

(assert (=> b!1755353 m!2170023))

(assert (=> b!1755353 m!2170023))

(declare-fun m!2170025 () Bool)

(assert (=> b!1755353 m!2170025))

(declare-fun m!2170027 () Bool)

(assert (=> d!536241 m!2170027))

(declare-fun m!2170029 () Bool)

(assert (=> d!536241 m!2170029))

(declare-fun m!2170031 () Bool)

(assert (=> d!536241 m!2170031))

(declare-fun m!2170033 () Bool)

(assert (=> d!536241 m!2170033))

(declare-fun m!2170035 () Bool)

(assert (=> bm!110530 m!2170035))

(assert (=> b!1755356 m!2170011))

(assert (=> b!1755356 m!2170021))

(assert (=> b!1755356 m!2170021))

(assert (=> b!1755356 m!2170023))

(assert (=> b!1755356 m!2170023))

(declare-fun m!2170037 () Bool)

(assert (=> b!1755356 m!2170037))

(assert (=> b!1755348 m!2170011))

(assert (=> b!1755348 m!2170021))

(assert (=> b!1755348 m!2170021))

(assert (=> b!1755348 m!2170023))

(declare-fun m!2170039 () Bool)

(assert (=> b!1755350 m!2170039))

(declare-fun m!2170041 () Bool)

(assert (=> b!1755355 m!2170041))

(assert (=> b!1754829 d!536241))

(declare-fun d!536243 () Bool)

(assert (=> d!536243 (isPrefix!1689 lt!677842 (++!5273 lt!677842 suffix!1421))))

(declare-fun lt!678078 () Unit!33465)

(assert (=> d!536243 (= lt!678078 (choose!10845 lt!677842 suffix!1421))))

(assert (=> d!536243 (= (lemmaConcatTwoListThenFirstIsPrefix!1198 lt!677842 suffix!1421) lt!678078)))

(declare-fun bs!403795 () Bool)

(assert (= bs!403795 d!536243))

(assert (=> bs!403795 m!2169339))

(assert (=> bs!403795 m!2169339))

(declare-fun m!2170043 () Bool)

(assert (=> bs!403795 m!2170043))

(declare-fun m!2170045 () Bool)

(assert (=> bs!403795 m!2170045))

(assert (=> b!1754829 d!536243))

(declare-fun b!1755360 () Bool)

(declare-fun e!1123453 () Bool)

(assert (=> b!1755360 (= e!1123453 (>= (size!15342 lt!677837) (size!15342 lt!677843)))))

(declare-fun d!536245 () Bool)

(assert (=> d!536245 e!1123453))

(declare-fun res!789703 () Bool)

(assert (=> d!536245 (=> res!789703 e!1123453)))

(declare-fun lt!678079 () Bool)

(assert (=> d!536245 (= res!789703 (not lt!678079))))

(declare-fun e!1123454 () Bool)

(assert (=> d!536245 (= lt!678079 e!1123454)))

(declare-fun res!789704 () Bool)

(assert (=> d!536245 (=> res!789704 e!1123454)))

(assert (=> d!536245 (= res!789704 ((_ is Nil!19304) lt!677843))))

(assert (=> d!536245 (= (isPrefix!1689 lt!677843 lt!677837) lt!678079)))

(declare-fun b!1755357 () Bool)

(declare-fun e!1123455 () Bool)

(assert (=> b!1755357 (= e!1123454 e!1123455)))

(declare-fun res!789701 () Bool)

(assert (=> b!1755357 (=> (not res!789701) (not e!1123455))))

(assert (=> b!1755357 (= res!789701 (not ((_ is Nil!19304) lt!677837)))))

(declare-fun b!1755359 () Bool)

(assert (=> b!1755359 (= e!1123455 (isPrefix!1689 (tail!2621 lt!677843) (tail!2621 lt!677837)))))

(declare-fun b!1755358 () Bool)

(declare-fun res!789702 () Bool)

(assert (=> b!1755358 (=> (not res!789702) (not e!1123455))))

(assert (=> b!1755358 (= res!789702 (= (head!4050 lt!677843) (head!4050 lt!677837)))))

(assert (= (and d!536245 (not res!789704)) b!1755357))

(assert (= (and b!1755357 res!789701) b!1755358))

(assert (= (and b!1755358 res!789702) b!1755359))

(assert (= (and d!536245 (not res!789703)) b!1755360))

(assert (=> b!1755360 m!2169987))

(assert (=> b!1755360 m!2169873))

(assert (=> b!1755359 m!2170001))

(assert (=> b!1755359 m!2169991))

(assert (=> b!1755359 m!2170001))

(assert (=> b!1755359 m!2169991))

(declare-fun m!2170047 () Bool)

(assert (=> b!1755359 m!2170047))

(assert (=> b!1755358 m!2170007))

(assert (=> b!1755358 m!2169997))

(assert (=> b!1754829 d!536245))

(declare-fun d!536247 () Bool)

(assert (=> d!536247 (= (list!7823 lt!677835) (list!7825 (c!286089 lt!677835)))))

(declare-fun bs!403796 () Bool)

(assert (= bs!403796 d!536247))

(declare-fun m!2170049 () Bool)

(assert (=> bs!403796 m!2170049))

(assert (=> b!1754829 d!536247))

(declare-fun d!536249 () Bool)

(assert (=> d!536249 (= (isDefined!3263 lt!677846) (not (isEmpty!12179 lt!677846)))))

(declare-fun bs!403797 () Bool)

(assert (= bs!403797 d!536249))

(declare-fun m!2170051 () Bool)

(assert (=> bs!403797 m!2170051))

(assert (=> b!1754829 d!536249))

(declare-fun d!536251 () Bool)

(declare-fun res!789707 () Bool)

(declare-fun e!1123458 () Bool)

(assert (=> d!536251 (=> (not res!789707) (not e!1123458))))

(declare-fun rulesValid!1290 (LexerInterface!3078 List!19375) Bool)

(assert (=> d!536251 (= res!789707 (rulesValid!1290 thiss!24550 rules!3447))))

(assert (=> d!536251 (= (rulesInvariant!2747 thiss!24550 rules!3447) e!1123458)))

(declare-fun b!1755363 () Bool)

(declare-datatypes ((List!19381 0))(
  ( (Nil!19311) (Cons!19311 (h!24712 String!22027) (t!163428 List!19381)) )
))
(declare-fun noDuplicateTag!1290 (LexerInterface!3078 List!19375 List!19381) Bool)

(assert (=> b!1755363 (= e!1123458 (noDuplicateTag!1290 thiss!24550 rules!3447 Nil!19311))))

(assert (= (and d!536251 res!789707) b!1755363))

(declare-fun m!2170053 () Bool)

(assert (=> d!536251 m!2170053))

(declare-fun m!2170055 () Bool)

(assert (=> b!1755363 m!2170055))

(assert (=> b!1754849 d!536251))

(declare-fun d!536253 () Bool)

(declare-fun isBalanced!2002 (Conc!6421) Bool)

(assert (=> d!536253 (= (inv!25059 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835))) (isBalanced!2002 (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835)))))))

(declare-fun bs!403798 () Bool)

(assert (= bs!403798 d!536253))

(declare-fun m!2170057 () Bool)

(assert (=> bs!403798 m!2170057))

(assert (=> tb!105413 d!536253))

(declare-fun d!536255 () Bool)

(declare-fun lt!678082 () Bool)

(declare-fun content!2776 (List!19375) (InoxSet Rule!6698))

(assert (=> d!536255 (= lt!678082 (select (content!2776 rules!3447) (rule!5463 (_1!10867 lt!677833))))))

(declare-fun e!1123463 () Bool)

(assert (=> d!536255 (= lt!678082 e!1123463)))

(declare-fun res!789713 () Bool)

(assert (=> d!536255 (=> (not res!789713) (not e!1123463))))

(assert (=> d!536255 (= res!789713 ((_ is Cons!19305) rules!3447))))

(assert (=> d!536255 (= (contains!3477 rules!3447 (rule!5463 (_1!10867 lt!677833))) lt!678082)))

(declare-fun b!1755368 () Bool)

(declare-fun e!1123464 () Bool)

(assert (=> b!1755368 (= e!1123463 e!1123464)))

(declare-fun res!789712 () Bool)

(assert (=> b!1755368 (=> res!789712 e!1123464)))

(assert (=> b!1755368 (= res!789712 (= (h!24706 rules!3447) (rule!5463 (_1!10867 lt!677833))))))

(declare-fun b!1755369 () Bool)

(assert (=> b!1755369 (= e!1123464 (contains!3477 (t!163378 rules!3447) (rule!5463 (_1!10867 lt!677833))))))

(assert (= (and d!536255 res!789713) b!1755368))

(assert (= (and b!1755368 (not res!789712)) b!1755369))

(declare-fun m!2170059 () Bool)

(assert (=> d!536255 m!2170059))

(declare-fun m!2170061 () Bool)

(assert (=> d!536255 m!2170061))

(declare-fun m!2170063 () Bool)

(assert (=> b!1755369 m!2170063))

(assert (=> b!1754827 d!536255))

(declare-fun d!536257 () Bool)

(assert (=> d!536257 (= (get!5862 lt!677847) (v!25368 lt!677847))))

(assert (=> b!1754848 d!536257))

(declare-fun b!1755376 () Bool)

(declare-fun e!1123469 () Bool)

(assert (=> b!1755376 (= e!1123469 true)))

(declare-fun d!536259 () Bool)

(assert (=> d!536259 e!1123469))

(assert (= d!536259 b!1755376))

(declare-fun lambda!69998 () Int)

(declare-fun order!12183 () Int)

(declare-fun dynLambda!9253 (Int Int) Int)

(assert (=> b!1755376 (< (dynLambda!9247 order!12175 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833))))) (dynLambda!9253 order!12183 lambda!69998))))

(assert (=> b!1755376 (< (dynLambda!9249 order!12179 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833))))) (dynLambda!9253 order!12183 lambda!69998))))

(assert (=> d!536259 (= (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835) (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (seqFromList!2418 (originalCharacters!4263 (_1!10867 lt!677833)))))))

(declare-fun lt!678085 () Unit!33465)

(declare-fun Forall2of!111 (Int BalanceConc!12786 BalanceConc!12786) Unit!33465)

(assert (=> d!536259 (= lt!678085 (Forall2of!111 lambda!69998 lt!677835 (seqFromList!2418 (originalCharacters!4263 (_1!10867 lt!677833)))))))

(assert (=> d!536259 (= (list!7823 lt!677835) (list!7823 (seqFromList!2418 (originalCharacters!4263 (_1!10867 lt!677833)))))))

(assert (=> d!536259 (= (lemmaEqSameImage!360 (transformation!3449 (rule!5463 (_1!10867 lt!677833))) lt!677835 (seqFromList!2418 (originalCharacters!4263 (_1!10867 lt!677833)))) lt!678085)))

(declare-fun b_lambda!56567 () Bool)

(assert (=> (not b_lambda!56567) (not d!536259)))

(assert (=> d!536259 t!163371))

(declare-fun b_and!131725 () Bool)

(assert (= b_and!131685 (and (=> t!163371 result!126808) b_and!131725)))

(assert (=> d!536259 t!163373))

(declare-fun b_and!131727 () Bool)

(assert (= b_and!131687 (and (=> t!163373 result!126812) b_and!131727)))

(assert (=> d!536259 t!163375))

(declare-fun b_and!131729 () Bool)

(assert (= b_and!131689 (and (=> t!163375 result!126814) b_and!131729)))

(declare-fun b_lambda!56569 () Bool)

(assert (=> (not b_lambda!56569) (not d!536259)))

(declare-fun tb!105453 () Bool)

(declare-fun t!163410 () Bool)

(assert (=> (and b!1754838 (= (toValue!4968 (transformation!3449 (rule!5463 token!523))) (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833))))) t!163410) tb!105453))

(declare-fun result!126852 () Bool)

(assert (=> tb!105453 (= result!126852 (inv!21 (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (seqFromList!2418 (originalCharacters!4263 (_1!10867 lt!677833))))))))

(declare-fun m!2170065 () Bool)

(assert (=> tb!105453 m!2170065))

(assert (=> d!536259 t!163410))

(declare-fun b_and!131731 () Bool)

(assert (= b_and!131725 (and (=> t!163410 result!126852) b_and!131731)))

(declare-fun tb!105455 () Bool)

(declare-fun t!163412 () Bool)

(assert (=> (and b!1754845 (= (toValue!4968 (transformation!3449 rule!422)) (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833))))) t!163412) tb!105455))

(declare-fun result!126854 () Bool)

(assert (= result!126854 result!126852))

(assert (=> d!536259 t!163412))

(declare-fun b_and!131733 () Bool)

(assert (= b_and!131727 (and (=> t!163412 result!126854) b_and!131733)))

(declare-fun t!163414 () Bool)

(declare-fun tb!105457 () Bool)

(assert (=> (and b!1754832 (= (toValue!4968 (transformation!3449 (h!24706 rules!3447))) (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833))))) t!163414) tb!105457))

(declare-fun result!126856 () Bool)

(assert (= result!126856 result!126852))

(assert (=> d!536259 t!163414))

(declare-fun b_and!131735 () Bool)

(assert (= b_and!131729 (and (=> t!163414 result!126856) b_and!131735)))

(assert (=> d!536259 m!2169349))

(assert (=> d!536259 m!2169401))

(declare-fun m!2170067 () Bool)

(assert (=> d!536259 m!2170067))

(assert (=> d!536259 m!2169421))

(assert (=> d!536259 m!2169401))

(declare-fun m!2170069 () Bool)

(assert (=> d!536259 m!2170069))

(assert (=> d!536259 m!2169401))

(declare-fun m!2170071 () Bool)

(assert (=> d!536259 m!2170071))

(assert (=> b!1754826 d!536259))

(declare-fun d!536261 () Bool)

(declare-fun fromListB!1098 (List!19374) BalanceConc!12786)

(assert (=> d!536261 (= (seqFromList!2418 (originalCharacters!4263 (_1!10867 lt!677833))) (fromListB!1098 (originalCharacters!4263 (_1!10867 lt!677833))))))

(declare-fun bs!403799 () Bool)

(assert (= bs!403799 d!536261))

(declare-fun m!2170073 () Bool)

(assert (=> bs!403799 m!2170073))

(assert (=> b!1754826 d!536261))

(declare-fun d!536263 () Bool)

(assert (=> d!536263 (= (apply!5249 (transformation!3449 (rule!5463 (_1!10867 lt!677833))) lt!677835) (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835))))

(declare-fun b_lambda!56571 () Bool)

(assert (=> (not b_lambda!56571) (not d!536263)))

(assert (=> d!536263 t!163371))

(declare-fun b_and!131737 () Bool)

(assert (= b_and!131731 (and (=> t!163371 result!126808) b_and!131737)))

(assert (=> d!536263 t!163373))

(declare-fun b_and!131739 () Bool)

(assert (= b_and!131733 (and (=> t!163373 result!126812) b_and!131739)))

(assert (=> d!536263 t!163375))

(declare-fun b_and!131741 () Bool)

(assert (= b_and!131735 (and (=> t!163375 result!126814) b_and!131741)))

(assert (=> d!536263 m!2169421))

(assert (=> b!1754826 d!536263))

(declare-fun d!536265 () Bool)

(assert (=> d!536265 (= (size!15338 (_1!10867 lt!677833)) (size!15342 (originalCharacters!4263 (_1!10867 lt!677833))))))

(declare-fun Unit!33474 () Unit!33465)

(assert (=> d!536265 (= (lemmaCharactersSize!507 (_1!10867 lt!677833)) Unit!33474)))

(declare-fun bs!403800 () Bool)

(assert (= bs!403800 d!536265))

(declare-fun m!2170075 () Bool)

(assert (=> bs!403800 m!2170075))

(assert (=> b!1754826 d!536265))

(declare-fun d!536267 () Bool)

(declare-fun lt!678088 () Int)

(assert (=> d!536267 (= lt!678088 (size!15342 (list!7823 lt!677835)))))

(declare-fun size!15343 (Conc!6421) Int)

(assert (=> d!536267 (= lt!678088 (size!15343 (c!286089 lt!677835)))))

(assert (=> d!536267 (= (size!15339 lt!677835) lt!678088)))

(declare-fun bs!403801 () Bool)

(assert (= bs!403801 d!536267))

(assert (=> bs!403801 m!2169349))

(assert (=> bs!403801 m!2169349))

(declare-fun m!2170077 () Bool)

(assert (=> bs!403801 m!2170077))

(declare-fun m!2170079 () Bool)

(assert (=> bs!403801 m!2170079))

(assert (=> b!1754826 d!536267))

(declare-fun d!536269 () Bool)

(assert (=> d!536269 (= (inv!25059 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (value!107969 (_1!10867 lt!677833)))) (isBalanced!2002 (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (value!107969 (_1!10867 lt!677833))))))))

(declare-fun bs!403802 () Bool)

(assert (= bs!403802 d!536269))

(declare-fun m!2170081 () Bool)

(assert (=> bs!403802 m!2170081))

(assert (=> tb!105407 d!536269))

(declare-fun d!536271 () Bool)

(assert (=> d!536271 (= (inv!25051 (tag!3803 (rule!5463 token!523))) (= (mod (str.len (value!107968 (tag!3803 (rule!5463 token!523)))) 2) 0))))

(assert (=> b!1754846 d!536271))

(declare-fun d!536273 () Bool)

(declare-fun res!789718 () Bool)

(declare-fun e!1123473 () Bool)

(assert (=> d!536273 (=> (not res!789718) (not e!1123473))))

(assert (=> d!536273 (= res!789718 (semiInverseModEq!1363 (toChars!4827 (transformation!3449 (rule!5463 token!523))) (toValue!4968 (transformation!3449 (rule!5463 token!523)))))))

(assert (=> d!536273 (= (inv!25056 (transformation!3449 (rule!5463 token!523))) e!1123473)))

(declare-fun b!1755379 () Bool)

(assert (=> b!1755379 (= e!1123473 (equivClasses!1304 (toChars!4827 (transformation!3449 (rule!5463 token!523))) (toValue!4968 (transformation!3449 (rule!5463 token!523)))))))

(assert (= (and d!536273 res!789718) b!1755379))

(declare-fun m!2170083 () Bool)

(assert (=> d!536273 m!2170083))

(declare-fun m!2170085 () Bool)

(assert (=> b!1755379 m!2170085))

(assert (=> b!1754846 d!536273))

(declare-fun d!536275 () Bool)

(assert (=> d!536275 (= (inv!25051 (tag!3803 (h!24706 rules!3447))) (= (mod (str.len (value!107968 (tag!3803 (h!24706 rules!3447)))) 2) 0))))

(assert (=> b!1754824 d!536275))

(declare-fun d!536277 () Bool)

(declare-fun res!789719 () Bool)

(declare-fun e!1123474 () Bool)

(assert (=> d!536277 (=> (not res!789719) (not e!1123474))))

(assert (=> d!536277 (= res!789719 (semiInverseModEq!1363 (toChars!4827 (transformation!3449 (h!24706 rules!3447))) (toValue!4968 (transformation!3449 (h!24706 rules!3447)))))))

(assert (=> d!536277 (= (inv!25056 (transformation!3449 (h!24706 rules!3447))) e!1123474)))

(declare-fun b!1755380 () Bool)

(assert (=> b!1755380 (= e!1123474 (equivClasses!1304 (toChars!4827 (transformation!3449 (h!24706 rules!3447))) (toValue!4968 (transformation!3449 (h!24706 rules!3447)))))))

(assert (= (and d!536277 res!789719) b!1755380))

(declare-fun m!2170087 () Bool)

(assert (=> d!536277 m!2170087))

(declare-fun m!2170089 () Bool)

(assert (=> b!1755380 m!2170089))

(assert (=> b!1754824 d!536277))

(declare-fun d!536279 () Bool)

(declare-fun lt!678089 () Bool)

(assert (=> d!536279 (= lt!678089 (select (content!2776 rules!3447) rule!422))))

(declare-fun e!1123475 () Bool)

(assert (=> d!536279 (= lt!678089 e!1123475)))

(declare-fun res!789721 () Bool)

(assert (=> d!536279 (=> (not res!789721) (not e!1123475))))

(assert (=> d!536279 (= res!789721 ((_ is Cons!19305) rules!3447))))

(assert (=> d!536279 (= (contains!3477 rules!3447 rule!422) lt!678089)))

(declare-fun b!1755381 () Bool)

(declare-fun e!1123476 () Bool)

(assert (=> b!1755381 (= e!1123475 e!1123476)))

(declare-fun res!789720 () Bool)

(assert (=> b!1755381 (=> res!789720 e!1123476)))

(assert (=> b!1755381 (= res!789720 (= (h!24706 rules!3447) rule!422))))

(declare-fun b!1755382 () Bool)

(assert (=> b!1755382 (= e!1123476 (contains!3477 (t!163378 rules!3447) rule!422))))

(assert (= (and d!536279 res!789721) b!1755381))

(assert (= (and b!1755381 (not res!789720)) b!1755382))

(assert (=> d!536279 m!2170059))

(declare-fun m!2170091 () Bool)

(assert (=> d!536279 m!2170091))

(declare-fun m!2170093 () Bool)

(assert (=> b!1755382 m!2170093))

(assert (=> b!1754823 d!536279))

(declare-fun d!536281 () Bool)

(assert (=> d!536281 (= (isDefined!3264 lt!677847) (not (isEmpty!12177 lt!677847)))))

(declare-fun bs!403803 () Bool)

(assert (= bs!403803 d!536281))

(declare-fun m!2170095 () Bool)

(assert (=> bs!403803 m!2170095))

(assert (=> b!1754844 d!536281))

(declare-fun d!536283 () Bool)

(declare-fun e!1123477 () Bool)

(assert (=> d!536283 e!1123477))

(declare-fun res!789727 () Bool)

(assert (=> d!536283 (=> res!789727 e!1123477)))

(declare-fun lt!678090 () Option!3920)

(assert (=> d!536283 (= res!789727 (isEmpty!12177 lt!678090))))

(declare-fun e!1123479 () Option!3920)

(assert (=> d!536283 (= lt!678090 e!1123479)))

(declare-fun c!286172 () Bool)

(assert (=> d!536283 (= c!286172 (and ((_ is Cons!19305) rules!3447) ((_ is Nil!19305) (t!163378 rules!3447))))))

(declare-fun lt!678094 () Unit!33465)

(declare-fun lt!678093 () Unit!33465)

(assert (=> d!536283 (= lt!678094 lt!678093)))

(assert (=> d!536283 (isPrefix!1689 lt!677842 lt!677842)))

(assert (=> d!536283 (= lt!678093 (lemmaIsPrefixRefl!1116 lt!677842 lt!677842))))

(assert (=> d!536283 (rulesValidInductive!1154 thiss!24550 rules!3447)))

(assert (=> d!536283 (= (maxPrefix!1632 thiss!24550 rules!3447 lt!677842) lt!678090)))

(declare-fun b!1755383 () Bool)

(declare-fun res!789722 () Bool)

(declare-fun e!1123478 () Bool)

(assert (=> b!1755383 (=> (not res!789722) (not e!1123478))))

(assert (=> b!1755383 (= res!789722 (= (list!7823 (charsOf!2098 (_1!10867 (get!5862 lt!678090)))) (originalCharacters!4263 (_1!10867 (get!5862 lt!678090)))))))

(declare-fun call!110536 () Option!3920)

(declare-fun bm!110531 () Bool)

(assert (=> bm!110531 (= call!110536 (maxPrefixOneRule!1001 thiss!24550 (h!24706 rules!3447) lt!677842))))

(declare-fun b!1755384 () Bool)

(assert (=> b!1755384 (= e!1123478 (contains!3477 rules!3447 (rule!5463 (_1!10867 (get!5862 lt!678090)))))))

(declare-fun b!1755385 () Bool)

(declare-fun lt!678091 () Option!3920)

(declare-fun lt!678092 () Option!3920)

(assert (=> b!1755385 (= e!1123479 (ite (and ((_ is None!3919) lt!678091) ((_ is None!3919) lt!678092)) None!3919 (ite ((_ is None!3919) lt!678092) lt!678091 (ite ((_ is None!3919) lt!678091) lt!678092 (ite (>= (size!15338 (_1!10867 (v!25368 lt!678091))) (size!15338 (_1!10867 (v!25368 lt!678092)))) lt!678091 lt!678092)))))))

(assert (=> b!1755385 (= lt!678091 call!110536)))

(assert (=> b!1755385 (= lt!678092 (maxPrefix!1632 thiss!24550 (t!163378 rules!3447) lt!677842))))

(declare-fun b!1755386 () Bool)

(assert (=> b!1755386 (= e!1123479 call!110536)))

(declare-fun b!1755387 () Bool)

(declare-fun res!789726 () Bool)

(assert (=> b!1755387 (=> (not res!789726) (not e!1123478))))

(assert (=> b!1755387 (= res!789726 (= (value!107969 (_1!10867 (get!5862 lt!678090))) (apply!5249 (transformation!3449 (rule!5463 (_1!10867 (get!5862 lt!678090)))) (seqFromList!2418 (originalCharacters!4263 (_1!10867 (get!5862 lt!678090)))))))))

(declare-fun b!1755388 () Bool)

(declare-fun res!789728 () Bool)

(assert (=> b!1755388 (=> (not res!789728) (not e!1123478))))

(assert (=> b!1755388 (= res!789728 (= (++!5273 (list!7823 (charsOf!2098 (_1!10867 (get!5862 lt!678090)))) (_2!10867 (get!5862 lt!678090))) lt!677842))))

(declare-fun b!1755389 () Bool)

(declare-fun res!789724 () Bool)

(assert (=> b!1755389 (=> (not res!789724) (not e!1123478))))

(assert (=> b!1755389 (= res!789724 (< (size!15342 (_2!10867 (get!5862 lt!678090))) (size!15342 lt!677842)))))

(declare-fun b!1755390 () Bool)

(assert (=> b!1755390 (= e!1123477 e!1123478)))

(declare-fun res!789725 () Bool)

(assert (=> b!1755390 (=> (not res!789725) (not e!1123478))))

(assert (=> b!1755390 (= res!789725 (isDefined!3264 lt!678090))))

(declare-fun b!1755391 () Bool)

(declare-fun res!789723 () Bool)

(assert (=> b!1755391 (=> (not res!789723) (not e!1123478))))

(assert (=> b!1755391 (= res!789723 (matchR!2250 (regex!3449 (rule!5463 (_1!10867 (get!5862 lt!678090)))) (list!7823 (charsOf!2098 (_1!10867 (get!5862 lt!678090))))))))

(assert (= (and d!536283 c!286172) b!1755386))

(assert (= (and d!536283 (not c!286172)) b!1755385))

(assert (= (or b!1755386 b!1755385) bm!110531))

(assert (= (and d!536283 (not res!789727)) b!1755390))

(assert (= (and b!1755390 res!789725) b!1755383))

(assert (= (and b!1755383 res!789722) b!1755389))

(assert (= (and b!1755389 res!789724) b!1755388))

(assert (= (and b!1755388 res!789728) b!1755387))

(assert (= (and b!1755387 res!789726) b!1755391))

(assert (= (and b!1755391 res!789723) b!1755384))

(declare-fun m!2170097 () Bool)

(assert (=> b!1755384 m!2170097))

(declare-fun m!2170099 () Bool)

(assert (=> b!1755384 m!2170099))

(assert (=> b!1755387 m!2170097))

(declare-fun m!2170101 () Bool)

(assert (=> b!1755387 m!2170101))

(assert (=> b!1755387 m!2170101))

(declare-fun m!2170103 () Bool)

(assert (=> b!1755387 m!2170103))

(assert (=> b!1755389 m!2170097))

(declare-fun m!2170105 () Bool)

(assert (=> b!1755389 m!2170105))

(assert (=> b!1755389 m!2169589))

(assert (=> b!1755388 m!2170097))

(declare-fun m!2170107 () Bool)

(assert (=> b!1755388 m!2170107))

(assert (=> b!1755388 m!2170107))

(declare-fun m!2170109 () Bool)

(assert (=> b!1755388 m!2170109))

(assert (=> b!1755388 m!2170109))

(declare-fun m!2170111 () Bool)

(assert (=> b!1755388 m!2170111))

(declare-fun m!2170113 () Bool)

(assert (=> d!536283 m!2170113))

(declare-fun m!2170115 () Bool)

(assert (=> d!536283 m!2170115))

(declare-fun m!2170117 () Bool)

(assert (=> d!536283 m!2170117))

(assert (=> d!536283 m!2170033))

(declare-fun m!2170119 () Bool)

(assert (=> bm!110531 m!2170119))

(assert (=> b!1755391 m!2170097))

(assert (=> b!1755391 m!2170107))

(assert (=> b!1755391 m!2170107))

(assert (=> b!1755391 m!2170109))

(assert (=> b!1755391 m!2170109))

(declare-fun m!2170121 () Bool)

(assert (=> b!1755391 m!2170121))

(assert (=> b!1755383 m!2170097))

(assert (=> b!1755383 m!2170107))

(assert (=> b!1755383 m!2170107))

(assert (=> b!1755383 m!2170109))

(declare-fun m!2170123 () Bool)

(assert (=> b!1755385 m!2170123))

(declare-fun m!2170125 () Bool)

(assert (=> b!1755390 m!2170125))

(assert (=> b!1754844 d!536283))

(declare-fun d!536285 () Bool)

(assert (=> d!536285 (= (list!7823 (charsOf!2098 token!523)) (list!7825 (c!286089 (charsOf!2098 token!523))))))

(declare-fun bs!403804 () Bool)

(assert (= bs!403804 d!536285))

(declare-fun m!2170127 () Bool)

(assert (=> bs!403804 m!2170127))

(assert (=> b!1754844 d!536285))

(declare-fun d!536287 () Bool)

(declare-fun lt!678095 () BalanceConc!12786)

(assert (=> d!536287 (= (list!7823 lt!678095) (originalCharacters!4263 token!523))))

(assert (=> d!536287 (= lt!678095 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 token!523))) (value!107969 token!523)))))

(assert (=> d!536287 (= (charsOf!2098 token!523) lt!678095)))

(declare-fun b_lambda!56573 () Bool)

(assert (=> (not b_lambda!56573) (not d!536287)))

(assert (=> d!536287 t!163392))

(declare-fun b_and!131743 () Bool)

(assert (= b_and!131691 (and (=> t!163392 result!126828) b_and!131743)))

(assert (=> d!536287 t!163394))

(declare-fun b_and!131745 () Bool)

(assert (= b_and!131693 (and (=> t!163394 result!126830) b_and!131745)))

(assert (=> d!536287 t!163396))

(declare-fun b_and!131747 () Bool)

(assert (= b_and!131695 (and (=> t!163396 result!126832) b_and!131747)))

(declare-fun m!2170129 () Bool)

(assert (=> d!536287 m!2170129))

(assert (=> d!536287 m!2169653))

(assert (=> b!1754844 d!536287))

(declare-fun bm!110532 () Bool)

(declare-fun call!110537 () Bool)

(assert (=> bm!110532 (= call!110537 (isEmpty!12174 lt!677843))))

(declare-fun b!1755393 () Bool)

(declare-fun e!1123482 () Bool)

(declare-fun lt!678096 () Bool)

(assert (=> b!1755393 (= e!1123482 (not lt!678096))))

(declare-fun b!1755394 () Bool)

(declare-fun e!1123484 () Bool)

(assert (=> b!1755394 (= e!1123484 (nullable!1449 (regex!3449 (rule!5463 (_1!10867 lt!677833)))))))

(declare-fun b!1755395 () Bool)

(declare-fun e!1123481 () Bool)

(assert (=> b!1755395 (= e!1123481 (not (= (head!4050 lt!677843) (c!286088 (regex!3449 (rule!5463 (_1!10867 lt!677833)))))))))

(declare-fun b!1755396 () Bool)

(declare-fun res!789735 () Bool)

(assert (=> b!1755396 (=> res!789735 e!1123481)))

(assert (=> b!1755396 (= res!789735 (not (isEmpty!12174 (tail!2621 lt!677843))))))

(declare-fun b!1755397 () Bool)

(declare-fun e!1123485 () Bool)

(assert (=> b!1755397 (= e!1123485 (= (head!4050 lt!677843) (c!286088 (regex!3449 (rule!5463 (_1!10867 lt!677833))))))))

(declare-fun b!1755398 () Bool)

(declare-fun e!1123486 () Bool)

(assert (=> b!1755398 (= e!1123486 (= lt!678096 call!110537))))

(declare-fun b!1755399 () Bool)

(declare-fun res!789734 () Bool)

(assert (=> b!1755399 (=> (not res!789734) (not e!1123485))))

(assert (=> b!1755399 (= res!789734 (not call!110537))))

(declare-fun b!1755400 () Bool)

(declare-fun e!1123480 () Bool)

(assert (=> b!1755400 (= e!1123480 e!1123481)))

(declare-fun res!789732 () Bool)

(assert (=> b!1755400 (=> res!789732 e!1123481)))

(assert (=> b!1755400 (= res!789732 call!110537)))

(declare-fun b!1755401 () Bool)

(assert (=> b!1755401 (= e!1123484 (matchR!2250 (derivativeStep!1218 (regex!3449 (rule!5463 (_1!10867 lt!677833))) (head!4050 lt!677843)) (tail!2621 lt!677843)))))

(declare-fun b!1755392 () Bool)

(declare-fun res!789736 () Bool)

(assert (=> b!1755392 (=> (not res!789736) (not e!1123485))))

(assert (=> b!1755392 (= res!789736 (isEmpty!12174 (tail!2621 lt!677843)))))

(declare-fun d!536289 () Bool)

(assert (=> d!536289 e!1123486))

(declare-fun c!286173 () Bool)

(assert (=> d!536289 (= c!286173 ((_ is EmptyExpr!4777) (regex!3449 (rule!5463 (_1!10867 lt!677833)))))))

(assert (=> d!536289 (= lt!678096 e!1123484)))

(declare-fun c!286175 () Bool)

(assert (=> d!536289 (= c!286175 (isEmpty!12174 lt!677843))))

(assert (=> d!536289 (validRegex!1923 (regex!3449 (rule!5463 (_1!10867 lt!677833))))))

(assert (=> d!536289 (= (matchR!2250 (regex!3449 (rule!5463 (_1!10867 lt!677833))) lt!677843) lt!678096)))

(declare-fun b!1755402 () Bool)

(declare-fun res!789733 () Bool)

(declare-fun e!1123483 () Bool)

(assert (=> b!1755402 (=> res!789733 e!1123483)))

(assert (=> b!1755402 (= res!789733 (not ((_ is ElementMatch!4777) (regex!3449 (rule!5463 (_1!10867 lt!677833))))))))

(assert (=> b!1755402 (= e!1123482 e!1123483)))

(declare-fun b!1755403 () Bool)

(assert (=> b!1755403 (= e!1123483 e!1123480)))

(declare-fun res!789731 () Bool)

(assert (=> b!1755403 (=> (not res!789731) (not e!1123480))))

(assert (=> b!1755403 (= res!789731 (not lt!678096))))

(declare-fun b!1755404 () Bool)

(declare-fun res!789730 () Bool)

(assert (=> b!1755404 (=> res!789730 e!1123483)))

(assert (=> b!1755404 (= res!789730 e!1123485)))

(declare-fun res!789729 () Bool)

(assert (=> b!1755404 (=> (not res!789729) (not e!1123485))))

(assert (=> b!1755404 (= res!789729 lt!678096)))

(declare-fun b!1755405 () Bool)

(assert (=> b!1755405 (= e!1123486 e!1123482)))

(declare-fun c!286174 () Bool)

(assert (=> b!1755405 (= c!286174 ((_ is EmptyLang!4777) (regex!3449 (rule!5463 (_1!10867 lt!677833)))))))

(assert (= (and d!536289 c!286175) b!1755394))

(assert (= (and d!536289 (not c!286175)) b!1755401))

(assert (= (and d!536289 c!286173) b!1755398))

(assert (= (and d!536289 (not c!286173)) b!1755405))

(assert (= (and b!1755405 c!286174) b!1755393))

(assert (= (and b!1755405 (not c!286174)) b!1755402))

(assert (= (and b!1755402 (not res!789733)) b!1755404))

(assert (= (and b!1755404 res!789729) b!1755399))

(assert (= (and b!1755399 res!789734) b!1755392))

(assert (= (and b!1755392 res!789736) b!1755397))

(assert (= (and b!1755404 (not res!789730)) b!1755403))

(assert (= (and b!1755403 res!789731) b!1755400))

(assert (= (and b!1755400 (not res!789732)) b!1755396))

(assert (= (and b!1755396 (not res!789735)) b!1755395))

(assert (= (or b!1755398 b!1755399 b!1755400) bm!110532))

(assert (=> b!1755401 m!2170007))

(assert (=> b!1755401 m!2170007))

(declare-fun m!2170131 () Bool)

(assert (=> b!1755401 m!2170131))

(assert (=> b!1755401 m!2170001))

(assert (=> b!1755401 m!2170131))

(assert (=> b!1755401 m!2170001))

(declare-fun m!2170133 () Bool)

(assert (=> b!1755401 m!2170133))

(declare-fun m!2170135 () Bool)

(assert (=> b!1755394 m!2170135))

(assert (=> b!1755395 m!2170007))

(assert (=> b!1755397 m!2170007))

(assert (=> b!1755396 m!2170001))

(assert (=> b!1755396 m!2170001))

(declare-fun m!2170137 () Bool)

(assert (=> b!1755396 m!2170137))

(declare-fun m!2170139 () Bool)

(assert (=> d!536289 m!2170139))

(declare-fun m!2170141 () Bool)

(assert (=> d!536289 m!2170141))

(assert (=> b!1755392 m!2170001))

(assert (=> b!1755392 m!2170001))

(assert (=> b!1755392 m!2170137))

(assert (=> bm!110532 m!2170139))

(assert (=> b!1754843 d!536289))

(declare-fun d!536291 () Bool)

(declare-fun c!286176 () Bool)

(assert (=> d!536291 (= c!286176 ((_ is Node!6421) (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (value!107969 (_1!10867 lt!677833))))))))

(declare-fun e!1123487 () Bool)

(assert (=> d!536291 (= (inv!25058 (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (value!107969 (_1!10867 lt!677833))))) e!1123487)))

(declare-fun b!1755406 () Bool)

(assert (=> b!1755406 (= e!1123487 (inv!25062 (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (value!107969 (_1!10867 lt!677833))))))))

(declare-fun b!1755407 () Bool)

(declare-fun e!1123488 () Bool)

(assert (=> b!1755407 (= e!1123487 e!1123488)))

(declare-fun res!789737 () Bool)

(assert (=> b!1755407 (= res!789737 (not ((_ is Leaf!9366) (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (value!107969 (_1!10867 lt!677833)))))))))

(assert (=> b!1755407 (=> res!789737 e!1123488)))

(declare-fun b!1755408 () Bool)

(assert (=> b!1755408 (= e!1123488 (inv!25063 (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (value!107969 (_1!10867 lt!677833))))))))

(assert (= (and d!536291 c!286176) b!1755406))

(assert (= (and d!536291 (not c!286176)) b!1755407))

(assert (= (and b!1755407 (not res!789737)) b!1755408))

(declare-fun m!2170143 () Bool)

(assert (=> b!1755406 m!2170143))

(declare-fun m!2170145 () Bool)

(assert (=> b!1755408 m!2170145))

(assert (=> b!1754865 d!536291))

(declare-fun d!536293 () Bool)

(assert (=> d!536293 (= (inv!25051 (tag!3803 rule!422)) (= (mod (str.len (value!107968 (tag!3803 rule!422))) 2) 0))))

(assert (=> b!1754842 d!536293))

(declare-fun d!536295 () Bool)

(declare-fun res!789738 () Bool)

(declare-fun e!1123489 () Bool)

(assert (=> d!536295 (=> (not res!789738) (not e!1123489))))

(assert (=> d!536295 (= res!789738 (semiInverseModEq!1363 (toChars!4827 (transformation!3449 rule!422)) (toValue!4968 (transformation!3449 rule!422))))))

(assert (=> d!536295 (= (inv!25056 (transformation!3449 rule!422)) e!1123489)))

(declare-fun b!1755409 () Bool)

(assert (=> b!1755409 (= e!1123489 (equivClasses!1304 (toChars!4827 (transformation!3449 rule!422)) (toValue!4968 (transformation!3449 rule!422))))))

(assert (= (and d!536295 res!789738) b!1755409))

(declare-fun m!2170147 () Bool)

(assert (=> d!536295 m!2170147))

(declare-fun m!2170149 () Bool)

(assert (=> b!1755409 m!2170149))

(assert (=> b!1754842 d!536295))

(declare-fun bm!110533 () Bool)

(declare-fun call!110538 () Bool)

(assert (=> bm!110533 (= call!110538 (isEmpty!12174 lt!677842))))

(declare-fun b!1755411 () Bool)

(declare-fun e!1123492 () Bool)

(declare-fun lt!678097 () Bool)

(assert (=> b!1755411 (= e!1123492 (not lt!678097))))

(declare-fun b!1755412 () Bool)

(declare-fun e!1123494 () Bool)

(assert (=> b!1755412 (= e!1123494 (nullable!1449 (regex!3449 rule!422)))))

(declare-fun b!1755413 () Bool)

(declare-fun e!1123491 () Bool)

(assert (=> b!1755413 (= e!1123491 (not (= (head!4050 lt!677842) (c!286088 (regex!3449 rule!422)))))))

(declare-fun b!1755414 () Bool)

(declare-fun res!789745 () Bool)

(assert (=> b!1755414 (=> res!789745 e!1123491)))

(assert (=> b!1755414 (= res!789745 (not (isEmpty!12174 (tail!2621 lt!677842))))))

(declare-fun b!1755415 () Bool)

(declare-fun e!1123495 () Bool)

(assert (=> b!1755415 (= e!1123495 (= (head!4050 lt!677842) (c!286088 (regex!3449 rule!422))))))

(declare-fun b!1755416 () Bool)

(declare-fun e!1123496 () Bool)

(assert (=> b!1755416 (= e!1123496 (= lt!678097 call!110538))))

(declare-fun b!1755417 () Bool)

(declare-fun res!789744 () Bool)

(assert (=> b!1755417 (=> (not res!789744) (not e!1123495))))

(assert (=> b!1755417 (= res!789744 (not call!110538))))

(declare-fun b!1755418 () Bool)

(declare-fun e!1123490 () Bool)

(assert (=> b!1755418 (= e!1123490 e!1123491)))

(declare-fun res!789742 () Bool)

(assert (=> b!1755418 (=> res!789742 e!1123491)))

(assert (=> b!1755418 (= res!789742 call!110538)))

(declare-fun b!1755419 () Bool)

(assert (=> b!1755419 (= e!1123494 (matchR!2250 (derivativeStep!1218 (regex!3449 rule!422) (head!4050 lt!677842)) (tail!2621 lt!677842)))))

(declare-fun b!1755410 () Bool)

(declare-fun res!789746 () Bool)

(assert (=> b!1755410 (=> (not res!789746) (not e!1123495))))

(assert (=> b!1755410 (= res!789746 (isEmpty!12174 (tail!2621 lt!677842)))))

(declare-fun d!536297 () Bool)

(assert (=> d!536297 e!1123496))

(declare-fun c!286177 () Bool)

(assert (=> d!536297 (= c!286177 ((_ is EmptyExpr!4777) (regex!3449 rule!422)))))

(assert (=> d!536297 (= lt!678097 e!1123494)))

(declare-fun c!286179 () Bool)

(assert (=> d!536297 (= c!286179 (isEmpty!12174 lt!677842))))

(assert (=> d!536297 (validRegex!1923 (regex!3449 rule!422))))

(assert (=> d!536297 (= (matchR!2250 (regex!3449 rule!422) lt!677842) lt!678097)))

(declare-fun b!1755420 () Bool)

(declare-fun res!789743 () Bool)

(declare-fun e!1123493 () Bool)

(assert (=> b!1755420 (=> res!789743 e!1123493)))

(assert (=> b!1755420 (= res!789743 (not ((_ is ElementMatch!4777) (regex!3449 rule!422))))))

(assert (=> b!1755420 (= e!1123492 e!1123493)))

(declare-fun b!1755421 () Bool)

(assert (=> b!1755421 (= e!1123493 e!1123490)))

(declare-fun res!789741 () Bool)

(assert (=> b!1755421 (=> (not res!789741) (not e!1123490))))

(assert (=> b!1755421 (= res!789741 (not lt!678097))))

(declare-fun b!1755422 () Bool)

(declare-fun res!789740 () Bool)

(assert (=> b!1755422 (=> res!789740 e!1123493)))

(assert (=> b!1755422 (= res!789740 e!1123495)))

(declare-fun res!789739 () Bool)

(assert (=> b!1755422 (=> (not res!789739) (not e!1123495))))

(assert (=> b!1755422 (= res!789739 lt!678097)))

(declare-fun b!1755423 () Bool)

(assert (=> b!1755423 (= e!1123496 e!1123492)))

(declare-fun c!286178 () Bool)

(assert (=> b!1755423 (= c!286178 ((_ is EmptyLang!4777) (regex!3449 rule!422)))))

(assert (= (and d!536297 c!286179) b!1755412))

(assert (= (and d!536297 (not c!286179)) b!1755419))

(assert (= (and d!536297 c!286177) b!1755416))

(assert (= (and d!536297 (not c!286177)) b!1755423))

(assert (= (and b!1755423 c!286178) b!1755411))

(assert (= (and b!1755423 (not c!286178)) b!1755420))

(assert (= (and b!1755420 (not res!789743)) b!1755422))

(assert (= (and b!1755422 res!789739) b!1755417))

(assert (= (and b!1755417 res!789744) b!1755410))

(assert (= (and b!1755410 res!789746) b!1755415))

(assert (= (and b!1755422 (not res!789740)) b!1755421))

(assert (= (and b!1755421 res!789741) b!1755418))

(assert (= (and b!1755418 (not res!789742)) b!1755414))

(assert (= (and b!1755414 (not res!789745)) b!1755413))

(assert (= (or b!1755416 b!1755417 b!1755418) bm!110533))

(assert (=> b!1755419 m!2169995))

(assert (=> b!1755419 m!2169995))

(declare-fun m!2170151 () Bool)

(assert (=> b!1755419 m!2170151))

(assert (=> b!1755419 m!2169989))

(assert (=> b!1755419 m!2170151))

(assert (=> b!1755419 m!2169989))

(declare-fun m!2170153 () Bool)

(assert (=> b!1755419 m!2170153))

(declare-fun m!2170155 () Bool)

(assert (=> b!1755412 m!2170155))

(assert (=> b!1755413 m!2169995))

(assert (=> b!1755415 m!2169995))

(assert (=> b!1755414 m!2169989))

(assert (=> b!1755414 m!2169989))

(declare-fun m!2170157 () Bool)

(assert (=> b!1755414 m!2170157))

(declare-fun m!2170159 () Bool)

(assert (=> d!536297 m!2170159))

(declare-fun m!2170161 () Bool)

(assert (=> d!536297 m!2170161))

(assert (=> b!1755410 m!2169989))

(assert (=> b!1755410 m!2169989))

(assert (=> b!1755410 m!2170157))

(assert (=> bm!110533 m!2170159))

(assert (=> b!1754841 d!536297))

(declare-fun d!536299 () Bool)

(declare-fun res!789751 () Bool)

(declare-fun e!1123499 () Bool)

(assert (=> d!536299 (=> (not res!789751) (not e!1123499))))

(assert (=> d!536299 (= res!789751 (validRegex!1923 (regex!3449 rule!422)))))

(assert (=> d!536299 (= (ruleValid!947 thiss!24550 rule!422) e!1123499)))

(declare-fun b!1755428 () Bool)

(declare-fun res!789752 () Bool)

(assert (=> b!1755428 (=> (not res!789752) (not e!1123499))))

(assert (=> b!1755428 (= res!789752 (not (nullable!1449 (regex!3449 rule!422))))))

(declare-fun b!1755429 () Bool)

(assert (=> b!1755429 (= e!1123499 (not (= (tag!3803 rule!422) (String!22028 ""))))))

(assert (= (and d!536299 res!789751) b!1755428))

(assert (= (and b!1755428 res!789752) b!1755429))

(assert (=> d!536299 m!2170161))

(assert (=> b!1755428 m!2170155))

(assert (=> b!1754841 d!536299))

(declare-fun d!536301 () Bool)

(assert (=> d!536301 (ruleValid!947 thiss!24550 rule!422)))

(declare-fun lt!678100 () Unit!33465)

(declare-fun choose!10848 (LexerInterface!3078 Rule!6698 List!19375) Unit!33465)

(assert (=> d!536301 (= lt!678100 (choose!10848 thiss!24550 rule!422 rules!3447))))

(assert (=> d!536301 (contains!3477 rules!3447 rule!422)))

(assert (=> d!536301 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!470 thiss!24550 rule!422 rules!3447) lt!678100)))

(declare-fun bs!403805 () Bool)

(assert (= bs!403805 d!536301))

(assert (=> bs!403805 m!2169413))

(declare-fun m!2170163 () Bool)

(assert (=> bs!403805 m!2170163))

(assert (=> bs!403805 m!2169363))

(assert (=> b!1754841 d!536301))

(declare-fun b!1755440 () Bool)

(declare-fun e!1123506 () Bool)

(declare-fun e!1123507 () Bool)

(assert (=> b!1755440 (= e!1123506 e!1123507)))

(declare-fun c!286185 () Bool)

(assert (=> b!1755440 (= c!286185 ((_ is IntegerValue!10618) (value!107969 token!523)))))

(declare-fun b!1755441 () Bool)

(declare-fun res!789755 () Bool)

(declare-fun e!1123508 () Bool)

(assert (=> b!1755441 (=> res!789755 e!1123508)))

(assert (=> b!1755441 (= res!789755 (not ((_ is IntegerValue!10619) (value!107969 token!523))))))

(assert (=> b!1755441 (= e!1123507 e!1123508)))

(declare-fun b!1755442 () Bool)

(declare-fun inv!16 (TokenValue!3539) Bool)

(assert (=> b!1755442 (= e!1123506 (inv!16 (value!107969 token!523)))))

(declare-fun d!536303 () Bool)

(declare-fun c!286184 () Bool)

(assert (=> d!536303 (= c!286184 ((_ is IntegerValue!10617) (value!107969 token!523)))))

(assert (=> d!536303 (= (inv!21 (value!107969 token!523)) e!1123506)))

(declare-fun b!1755443 () Bool)

(declare-fun inv!17 (TokenValue!3539) Bool)

(assert (=> b!1755443 (= e!1123507 (inv!17 (value!107969 token!523)))))

(declare-fun b!1755444 () Bool)

(declare-fun inv!15 (TokenValue!3539) Bool)

(assert (=> b!1755444 (= e!1123508 (inv!15 (value!107969 token!523)))))

(assert (= (and d!536303 c!286184) b!1755442))

(assert (= (and d!536303 (not c!286184)) b!1755440))

(assert (= (and b!1755440 c!286185) b!1755443))

(assert (= (and b!1755440 (not c!286185)) b!1755441))

(assert (= (and b!1755441 (not res!789755)) b!1755444))

(declare-fun m!2170165 () Bool)

(assert (=> b!1755442 m!2170165))

(declare-fun m!2170167 () Bool)

(assert (=> b!1755443 m!2170167))

(declare-fun m!2170169 () Bool)

(assert (=> b!1755444 m!2170169))

(assert (=> b!1754840 d!536303))

(declare-fun d!536305 () Bool)

(assert (=> d!536305 (= (isEmpty!12174 suffix!1421) ((_ is Nil!19304) suffix!1421))))

(assert (=> b!1754839 d!536305))

(declare-fun b!1755445 () Bool)

(declare-fun e!1123509 () Bool)

(declare-fun e!1123510 () Bool)

(assert (=> b!1755445 (= e!1123509 e!1123510)))

(declare-fun c!286187 () Bool)

(assert (=> b!1755445 (= c!286187 ((_ is IntegerValue!10618) (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835)))))

(declare-fun b!1755446 () Bool)

(declare-fun res!789756 () Bool)

(declare-fun e!1123511 () Bool)

(assert (=> b!1755446 (=> res!789756 e!1123511)))

(assert (=> b!1755446 (= res!789756 (not ((_ is IntegerValue!10619) (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835))))))

(assert (=> b!1755446 (= e!1123510 e!1123511)))

(declare-fun b!1755447 () Bool)

(assert (=> b!1755447 (= e!1123509 (inv!16 (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835)))))

(declare-fun d!536307 () Bool)

(declare-fun c!286186 () Bool)

(assert (=> d!536307 (= c!286186 ((_ is IntegerValue!10617) (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835)))))

(assert (=> d!536307 (= (inv!21 (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835)) e!1123509)))

(declare-fun b!1755448 () Bool)

(assert (=> b!1755448 (= e!1123510 (inv!17 (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835)))))

(declare-fun b!1755449 () Bool)

(assert (=> b!1755449 (= e!1123511 (inv!15 (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835)))))

(assert (= (and d!536307 c!286186) b!1755447))

(assert (= (and d!536307 (not c!286186)) b!1755445))

(assert (= (and b!1755445 c!286187) b!1755448))

(assert (= (and b!1755445 (not c!286187)) b!1755446))

(assert (= (and b!1755446 (not res!789756)) b!1755449))

(declare-fun m!2170171 () Bool)

(assert (=> b!1755447 m!2170171))

(declare-fun m!2170173 () Bool)

(assert (=> b!1755448 m!2170173))

(declare-fun m!2170175 () Bool)

(assert (=> b!1755449 m!2170175))

(assert (=> tb!105419 d!536307))

(declare-fun d!536309 () Bool)

(assert (=> d!536309 (= (isEmpty!12175 rules!3447) ((_ is Nil!19305) rules!3447))))

(assert (=> b!1754837 d!536309))

(declare-fun b!1755462 () Bool)

(declare-fun e!1123514 () Bool)

(declare-fun tp!499018 () Bool)

(assert (=> b!1755462 (= e!1123514 tp!499018)))

(declare-fun b!1755460 () Bool)

(assert (=> b!1755460 (= e!1123514 tp_is_empty!7797)))

(declare-fun b!1755461 () Bool)

(declare-fun tp!499015 () Bool)

(declare-fun tp!499016 () Bool)

(assert (=> b!1755461 (= e!1123514 (and tp!499015 tp!499016))))

(declare-fun b!1755463 () Bool)

(declare-fun tp!499017 () Bool)

(declare-fun tp!499014 () Bool)

(assert (=> b!1755463 (= e!1123514 (and tp!499017 tp!499014))))

(assert (=> b!1754842 (= tp!498941 e!1123514)))

(assert (= (and b!1754842 ((_ is ElementMatch!4777) (regex!3449 rule!422))) b!1755460))

(assert (= (and b!1754842 ((_ is Concat!8317) (regex!3449 rule!422))) b!1755461))

(assert (= (and b!1754842 ((_ is Star!4777) (regex!3449 rule!422))) b!1755462))

(assert (= (and b!1754842 ((_ is Union!4777) (regex!3449 rule!422))) b!1755463))

(declare-fun b!1755468 () Bool)

(declare-fun e!1123517 () Bool)

(declare-fun tp!499021 () Bool)

(assert (=> b!1755468 (= e!1123517 (and tp_is_empty!7797 tp!499021))))

(assert (=> b!1754825 (= tp!498944 e!1123517)))

(assert (= (and b!1754825 ((_ is Cons!19304) (t!163377 suffix!1421))) b!1755468))

(declare-fun b!1755479 () Bool)

(declare-fun b_free!48471 () Bool)

(declare-fun b_next!49175 () Bool)

(assert (=> b!1755479 (= b_free!48471 (not b_next!49175))))

(declare-fun tb!105459 () Bool)

(declare-fun t!163416 () Bool)

(assert (=> (and b!1755479 (= (toValue!4968 (transformation!3449 (h!24706 (t!163378 rules!3447)))) (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833))))) t!163416) tb!105459))

(declare-fun result!126864 () Bool)

(assert (= result!126864 result!126808))

(assert (=> d!536259 t!163416))

(declare-fun tb!105461 () Bool)

(declare-fun t!163418 () Bool)

(assert (=> (and b!1755479 (= (toValue!4968 (transformation!3449 (h!24706 (t!163378 rules!3447)))) (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833))))) t!163418) tb!105461))

(declare-fun result!126866 () Bool)

(assert (= result!126866 result!126852))

(assert (=> d!536259 t!163418))

(assert (=> d!536263 t!163416))

(assert (=> d!536151 t!163416))

(assert (=> b!1754833 t!163416))

(declare-fun b_and!131749 () Bool)

(declare-fun tp!499031 () Bool)

(assert (=> b!1755479 (= tp!499031 (and (=> t!163416 result!126864) (=> t!163418 result!126866) b_and!131749))))

(declare-fun b_free!48473 () Bool)

(declare-fun b_next!49177 () Bool)

(assert (=> b!1755479 (= b_free!48473 (not b_next!49177))))

(declare-fun tb!105463 () Bool)

(declare-fun t!163420 () Bool)

(assert (=> (and b!1755479 (= (toChars!4827 (transformation!3449 (h!24706 (t!163378 rules!3447)))) (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833))))) t!163420) tb!105463))

(declare-fun result!126868 () Bool)

(assert (= result!126868 result!126794))

(assert (=> d!536145 t!163420))

(declare-fun t!163422 () Bool)

(declare-fun tb!105465 () Bool)

(assert (=> (and b!1755479 (= (toChars!4827 (transformation!3449 (h!24706 (t!163378 rules!3447)))) (toChars!4827 (transformation!3449 (rule!5463 token!523)))) t!163422) tb!105465))

(declare-fun result!126870 () Bool)

(assert (= result!126870 result!126828))

(assert (=> d!536287 t!163422))

(declare-fun t!163424 () Bool)

(declare-fun tb!105467 () Bool)

(assert (=> (and b!1755479 (= (toChars!4827 (transformation!3449 (h!24706 (t!163378 rules!3447)))) (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833))))) t!163424) tb!105467))

(declare-fun result!126872 () Bool)

(assert (= result!126872 result!126802))

(assert (=> b!1754833 t!163424))

(assert (=> d!536151 t!163424))

(assert (=> b!1755094 t!163422))

(assert (=> b!1754828 t!163420))

(declare-fun tp!499032 () Bool)

(declare-fun b_and!131751 () Bool)

(assert (=> b!1755479 (= tp!499032 (and (=> t!163424 result!126872) (=> t!163422 result!126870) (=> t!163420 result!126868) b_and!131751))))

(declare-fun e!1123526 () Bool)

(assert (=> b!1755479 (= e!1123526 (and tp!499031 tp!499032))))

(declare-fun tp!499030 () Bool)

(declare-fun e!1123529 () Bool)

(declare-fun b!1755478 () Bool)

(assert (=> b!1755478 (= e!1123529 (and tp!499030 (inv!25051 (tag!3803 (h!24706 (t!163378 rules!3447)))) (inv!25056 (transformation!3449 (h!24706 (t!163378 rules!3447)))) e!1123526))))

(declare-fun b!1755477 () Bool)

(declare-fun e!1123528 () Bool)

(declare-fun tp!499033 () Bool)

(assert (=> b!1755477 (= e!1123528 (and e!1123529 tp!499033))))

(assert (=> b!1754835 (= tp!498936 e!1123528)))

(assert (= b!1755478 b!1755479))

(assert (= b!1755477 b!1755478))

(assert (= (and b!1754835 ((_ is Cons!19305) (t!163378 rules!3447))) b!1755477))

(declare-fun m!2170177 () Bool)

(assert (=> b!1755478 m!2170177))

(declare-fun m!2170179 () Bool)

(assert (=> b!1755478 m!2170179))

(declare-fun b!1755482 () Bool)

(declare-fun e!1123530 () Bool)

(declare-fun tp!499038 () Bool)

(assert (=> b!1755482 (= e!1123530 tp!499038)))

(declare-fun b!1755480 () Bool)

(assert (=> b!1755480 (= e!1123530 tp_is_empty!7797)))

(declare-fun b!1755481 () Bool)

(declare-fun tp!499035 () Bool)

(declare-fun tp!499036 () Bool)

(assert (=> b!1755481 (= e!1123530 (and tp!499035 tp!499036))))

(declare-fun b!1755483 () Bool)

(declare-fun tp!499037 () Bool)

(declare-fun tp!499034 () Bool)

(assert (=> b!1755483 (= e!1123530 (and tp!499037 tp!499034))))

(assert (=> b!1754846 (= tp!498934 e!1123530)))

(assert (= (and b!1754846 ((_ is ElementMatch!4777) (regex!3449 (rule!5463 token!523)))) b!1755480))

(assert (= (and b!1754846 ((_ is Concat!8317) (regex!3449 (rule!5463 token!523)))) b!1755481))

(assert (= (and b!1754846 ((_ is Star!4777) (regex!3449 (rule!5463 token!523)))) b!1755482))

(assert (= (and b!1754846 ((_ is Union!4777) (regex!3449 (rule!5463 token!523)))) b!1755483))

(declare-fun b!1755486 () Bool)

(declare-fun e!1123531 () Bool)

(declare-fun tp!499043 () Bool)

(assert (=> b!1755486 (= e!1123531 tp!499043)))

(declare-fun b!1755484 () Bool)

(assert (=> b!1755484 (= e!1123531 tp_is_empty!7797)))

(declare-fun b!1755485 () Bool)

(declare-fun tp!499040 () Bool)

(declare-fun tp!499041 () Bool)

(assert (=> b!1755485 (= e!1123531 (and tp!499040 tp!499041))))

(declare-fun b!1755487 () Bool)

(declare-fun tp!499042 () Bool)

(declare-fun tp!499039 () Bool)

(assert (=> b!1755487 (= e!1123531 (and tp!499042 tp!499039))))

(assert (=> b!1754824 (= tp!498942 e!1123531)))

(assert (= (and b!1754824 ((_ is ElementMatch!4777) (regex!3449 (h!24706 rules!3447)))) b!1755484))

(assert (= (and b!1754824 ((_ is Concat!8317) (regex!3449 (h!24706 rules!3447)))) b!1755485))

(assert (= (and b!1754824 ((_ is Star!4777) (regex!3449 (h!24706 rules!3447)))) b!1755486))

(assert (= (and b!1754824 ((_ is Union!4777) (regex!3449 (h!24706 rules!3447)))) b!1755487))

(declare-fun b!1755488 () Bool)

(declare-fun e!1123532 () Bool)

(declare-fun tp!499044 () Bool)

(assert (=> b!1755488 (= e!1123532 (and tp_is_empty!7797 tp!499044))))

(assert (=> b!1754840 (= tp!498935 e!1123532)))

(assert (= (and b!1754840 ((_ is Cons!19304) (originalCharacters!4263 token!523))) b!1755488))

(declare-fun b!1755497 () Bool)

(declare-fun e!1123538 () Bool)

(declare-fun tp!499053 () Bool)

(declare-fun tp!499052 () Bool)

(assert (=> b!1755497 (= e!1123538 (and (inv!25058 (left!15455 (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835))))) tp!499052 (inv!25058 (right!15785 (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835))))) tp!499053))))

(declare-fun b!1755499 () Bool)

(declare-fun e!1123537 () Bool)

(declare-fun tp!499051 () Bool)

(assert (=> b!1755499 (= e!1123537 tp!499051)))

(declare-fun b!1755498 () Bool)

(declare-fun inv!25065 (IArray!12847) Bool)

(assert (=> b!1755498 (= e!1123538 (and (inv!25065 (xs!9297 (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835))))) e!1123537))))

(assert (=> b!1754866 (= tp!498948 (and (inv!25058 (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835)))) e!1123538))))

(assert (= (and b!1754866 ((_ is Node!6421) (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835))))) b!1755497))

(assert (= b!1755498 b!1755499))

(assert (= (and b!1754866 ((_ is Leaf!9366) (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (dynLambda!9251 (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) lt!677835))))) b!1755498))

(declare-fun m!2170181 () Bool)

(assert (=> b!1755497 m!2170181))

(declare-fun m!2170183 () Bool)

(assert (=> b!1755497 m!2170183))

(declare-fun m!2170185 () Bool)

(assert (=> b!1755498 m!2170185))

(assert (=> b!1754866 m!2169313))

(declare-fun e!1123540 () Bool)

(declare-fun b!1755500 () Bool)

(declare-fun tp!499055 () Bool)

(declare-fun tp!499056 () Bool)

(assert (=> b!1755500 (= e!1123540 (and (inv!25058 (left!15455 (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (value!107969 (_1!10867 lt!677833)))))) tp!499055 (inv!25058 (right!15785 (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (value!107969 (_1!10867 lt!677833)))))) tp!499056))))

(declare-fun b!1755502 () Bool)

(declare-fun e!1123539 () Bool)

(declare-fun tp!499054 () Bool)

(assert (=> b!1755502 (= e!1123539 tp!499054)))

(declare-fun b!1755501 () Bool)

(assert (=> b!1755501 (= e!1123540 (and (inv!25065 (xs!9297 (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (value!107969 (_1!10867 lt!677833)))))) e!1123539))))

(assert (=> b!1754865 (= tp!498947 (and (inv!25058 (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (value!107969 (_1!10867 lt!677833))))) e!1123540))))

(assert (= (and b!1754865 ((_ is Node!6421) (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (value!107969 (_1!10867 lt!677833)))))) b!1755500))

(assert (= b!1755501 b!1755502))

(assert (= (and b!1754865 ((_ is Leaf!9366) (c!286089 (dynLambda!9250 (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))) (value!107969 (_1!10867 lt!677833)))))) b!1755501))

(declare-fun m!2170187 () Bool)

(assert (=> b!1755500 m!2170187))

(declare-fun m!2170189 () Bool)

(assert (=> b!1755500 m!2170189))

(declare-fun m!2170191 () Bool)

(assert (=> b!1755501 m!2170191))

(assert (=> b!1754865 m!2169309))

(declare-fun b_lambda!56575 () Bool)

(assert (= b_lambda!56547 (or (and b!1754838 b_free!48457) (and b!1754845 b_free!48461 (= (toChars!4827 (transformation!3449 rule!422)) (toChars!4827 (transformation!3449 (rule!5463 token!523))))) (and b!1754832 b_free!48465 (= (toChars!4827 (transformation!3449 (h!24706 rules!3447))) (toChars!4827 (transformation!3449 (rule!5463 token!523))))) (and b!1755479 b_free!48473 (= (toChars!4827 (transformation!3449 (h!24706 (t!163378 rules!3447)))) (toChars!4827 (transformation!3449 (rule!5463 token!523))))) b_lambda!56575)))

(declare-fun b_lambda!56577 () Bool)

(assert (= b_lambda!56527 (or (and b!1754838 b_free!48457 (= (toChars!4827 (transformation!3449 (rule!5463 token!523))) (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))))) (and b!1754845 b_free!48461 (= (toChars!4827 (transformation!3449 rule!422)) (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))))) (and b!1754832 b_free!48465 (= (toChars!4827 (transformation!3449 (h!24706 rules!3447))) (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))))) (and b!1755479 b_free!48473 (= (toChars!4827 (transformation!3449 (h!24706 (t!163378 rules!3447)))) (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))))) b_lambda!56577)))

(declare-fun b_lambda!56579 () Bool)

(assert (= b_lambda!56531 (or (and b!1754838 b_free!48455 (= (toValue!4968 (transformation!3449 (rule!5463 token!523))) (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))))) (and b!1754845 b_free!48459 (= (toValue!4968 (transformation!3449 rule!422)) (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))))) (and b!1754832 b_free!48463 (= (toValue!4968 (transformation!3449 (h!24706 rules!3447))) (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))))) (and b!1755479 b_free!48471 (= (toValue!4968 (transformation!3449 (h!24706 (t!163378 rules!3447)))) (toValue!4968 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))))) b_lambda!56579)))

(declare-fun b_lambda!56581 () Bool)

(assert (= b_lambda!56529 (or (and b!1754838 b_free!48457 (= (toChars!4827 (transformation!3449 (rule!5463 token!523))) (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))))) (and b!1754845 b_free!48461 (= (toChars!4827 (transformation!3449 rule!422)) (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))))) (and b!1754832 b_free!48465 (= (toChars!4827 (transformation!3449 (h!24706 rules!3447))) (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))))) (and b!1755479 b_free!48473 (= (toChars!4827 (transformation!3449 (h!24706 (t!163378 rules!3447)))) (toChars!4827 (transformation!3449 (rule!5463 (_1!10867 lt!677833)))))) b_lambda!56581)))

(declare-fun b_lambda!56583 () Bool)

(assert (= b_lambda!56573 (or (and b!1754838 b_free!48457) (and b!1754845 b_free!48461 (= (toChars!4827 (transformation!3449 rule!422)) (toChars!4827 (transformation!3449 (rule!5463 token!523))))) (and b!1754832 b_free!48465 (= (toChars!4827 (transformation!3449 (h!24706 rules!3447))) (toChars!4827 (transformation!3449 (rule!5463 token!523))))) (and b!1755479 b_free!48473 (= (toChars!4827 (transformation!3449 (h!24706 (t!163378 rules!3447)))) (toChars!4827 (transformation!3449 (rule!5463 token!523))))) b_lambda!56583)))

(check-sat (not b!1755392) (not b!1755199) (not b!1755350) (not b!1755415) (not bm!110522) (not d!536259) (not b_next!49169) (not b!1755353) (not b!1755449) (not d!536243) b_and!131749 (not d!536155) (not b!1755395) b_and!131739 (not b!1755462) (not d!536241) (not b!1755486) (not b!1755087) (not b!1755324) (not b!1755487) (not b!1755313) (not b!1755200) (not b!1755461) (not b!1755349) (not b!1755363) (not d!536149) (not b!1755096) (not b_next!49175) (not d!536159) (not tb!105437) (not b!1755067) (not b!1755325) (not b!1755323) (not d!536145) (not d!536289) (not d!536249) (not b_lambda!56575) (not b!1755485) tp_is_empty!7797 (not d!536261) (not b_next!49159) (not b!1755022) (not d!536279) (not b!1755095) (not d!536203) (not b_next!49161) (not d!536255) (not b_lambda!56543) (not bm!110530) (not b!1755448) (not b!1755412) (not b!1755501) (not b!1755499) (not d!536299) (not b!1755360) (not b!1755179) (not b_lambda!56541) (not b!1755089) (not b!1755389) (not b_next!49167) (not b!1755178) (not d!536151) (not b!1755382) (not b!1755352) (not b!1755463) (not bm!110531) (not d!536161) (not d!536295) (not d!536301) (not d!536195) (not b!1755021) (not b!1755388) (not b!1755251) b_and!131745 (not b!1755502) (not b!1755396) (not d!536199) (not d!536247) (not d!536109) (not b!1755328) (not b!1754989) b_and!131747 (not b!1755250) (not d!536269) (not b_lambda!56571) (not b!1755391) (not d!536103) (not b_lambda!56577) (not b!1755312) (not b!1755329) (not b!1755410) (not b!1755358) (not d!536143) (not d!536273) (not b!1755481) (not d!536267) (not b!1755477) b_and!131751 (not b_lambda!56567) (not b_lambda!56545) (not b!1755387) (not b!1755180) (not b!1755191) (not d!536287) (not b!1755408) b_and!131737 (not b!1755094) (not b!1755390) (not d!536265) (not b!1755379) (not d!536131) (not d!536165) (not b!1755252) (not d!536283) (not b!1755383) (not b!1755498) b_and!131741 (not b!1755385) (not d!536285) (not bm!110532) (not d!536163) (not b!1755401) (not b!1755482) (not b_lambda!56569) (not b!1755192) (not d!536253) (not b!1755478) (not b!1755355) (not d!536251) (not b!1755064) (not b_next!49165) (not d!536277) (not b_lambda!56579) (not b!1755409) (not b!1755442) (not d!536281) (not b!1755447) (not b!1755394) (not b!1755397) (not b!1755488) (not b!1755359) (not b!1755065) (not b!1755406) (not b!1755443) (not tb!105453) (not b!1755413) (not d!536235) (not b!1755066) (not b!1755444) (not b_lambda!56581) (not b!1754866) (not b!1755384) (not b!1755414) (not b!1755483) (not b!1755348) (not bm!110533) (not b!1755354) (not b!1755497) (not b!1755099) (not b!1755468) (not b!1755356) (not b_next!49177) (not b!1755428) (not b!1755500) (not b!1755327) (not b!1754865) (not b_lambda!56583) (not b!1755419) (not b!1755380) (not b!1754990) (not b!1755071) (not b_next!49163) (not d!536297) (not b!1755062) (not d!536121) (not b!1755369) b_and!131743)
(check-sat b_and!131739 (not b_next!49175) (not b_next!49159) (not b_next!49161) (not b_next!49167) b_and!131745 b_and!131747 b_and!131751 b_and!131737 b_and!131741 (not b_next!49165) b_and!131743 b_and!131749 (not b_next!49169) (not b_next!49177) (not b_next!49163))
