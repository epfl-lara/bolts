; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!173154 () Bool)

(assert start!173154)

(declare-fun b!1754631 () Bool)

(declare-fun b_free!48431 () Bool)

(declare-fun b_next!49135 () Bool)

(assert (=> b!1754631 (= b_free!48431 (not b_next!49135))))

(declare-fun tp!498862 () Bool)

(declare-fun b_and!131559 () Bool)

(assert (=> b!1754631 (= tp!498862 b_and!131559)))

(declare-fun b_free!48433 () Bool)

(declare-fun b_next!49137 () Bool)

(assert (=> b!1754631 (= b_free!48433 (not b_next!49137))))

(declare-fun tp!498861 () Bool)

(declare-fun b_and!131561 () Bool)

(assert (=> b!1754631 (= tp!498861 b_and!131561)))

(declare-fun b!1754621 () Bool)

(declare-fun b_free!48435 () Bool)

(declare-fun b_next!49139 () Bool)

(assert (=> b!1754621 (= b_free!48435 (not b_next!49139))))

(declare-fun tp!498853 () Bool)

(declare-fun b_and!131563 () Bool)

(assert (=> b!1754621 (= tp!498853 b_and!131563)))

(declare-fun b_free!48437 () Bool)

(declare-fun b_next!49141 () Bool)

(assert (=> b!1754621 (= b_free!48437 (not b_next!49141))))

(declare-fun tp!498860 () Bool)

(declare-fun b_and!131565 () Bool)

(assert (=> b!1754621 (= tp!498860 b_and!131565)))

(declare-fun b!1754629 () Bool)

(declare-fun b_free!48439 () Bool)

(declare-fun b_next!49143 () Bool)

(assert (=> b!1754629 (= b_free!48439 (not b_next!49143))))

(declare-fun tp!498854 () Bool)

(declare-fun b_and!131567 () Bool)

(assert (=> b!1754629 (= tp!498854 b_and!131567)))

(declare-fun b_free!48441 () Bool)

(declare-fun b_next!49145 () Bool)

(assert (=> b!1754629 (= b_free!48441 (not b_next!49145))))

(declare-fun tp!498863 () Bool)

(declare-fun b_and!131569 () Bool)

(assert (=> b!1754629 (= tp!498863 b_and!131569)))

(declare-fun b!1754654 () Bool)

(declare-fun e!1123003 () Bool)

(assert (=> b!1754654 (= e!1123003 true)))

(declare-fun b!1754653 () Bool)

(declare-fun e!1123002 () Bool)

(assert (=> b!1754653 (= e!1123002 e!1123003)))

(declare-fun b!1754652 () Bool)

(declare-fun e!1123001 () Bool)

(assert (=> b!1754652 (= e!1123001 e!1123002)))

(declare-fun b!1754632 () Bool)

(assert (=> b!1754632 e!1123001))

(assert (= b!1754653 b!1754654))

(assert (= b!1754652 b!1754653))

(assert (= b!1754632 b!1754652))

(declare-datatypes ((List!19367 0))(
  ( (Nil!19297) (Cons!19297 (h!24698 (_ BitVec 16)) (t!163334 List!19367)) )
))
(declare-datatypes ((TokenValue!3537 0))(
  ( (FloatLiteralValue!7074 (text!25204 List!19367)) (TokenValueExt!3536 (__x!12376 Int)) (Broken!17685 (value!107886 List!19367)) (Object!3606) (End!3537) (Def!3537) (Underscore!3537) (Match!3537) (Else!3537) (Error!3537) (Case!3537) (If!3537) (Extends!3537) (Abstract!3537) (Class!3537) (Val!3537) (DelimiterValue!7074 (del!3597 List!19367)) (KeywordValue!3543 (value!107887 List!19367)) (CommentValue!7074 (value!107888 List!19367)) (WhitespaceValue!7074 (value!107889 List!19367)) (IndentationValue!3537 (value!107890 List!19367)) (String!22016) (Int32!3537) (Broken!17686 (value!107891 List!19367)) (Boolean!3538) (Unit!33458) (OperatorValue!3540 (op!3597 List!19367)) (IdentifierValue!7074 (value!107892 List!19367)) (IdentifierValue!7075 (value!107893 List!19367)) (WhitespaceValue!7075 (value!107894 List!19367)) (True!7074) (False!7074) (Broken!17687 (value!107895 List!19367)) (Broken!17688 (value!107896 List!19367)) (True!7075) (RightBrace!3537) (RightBracket!3537) (Colon!3537) (Null!3537) (Comma!3537) (LeftBracket!3537) (False!7075) (LeftBrace!3537) (ImaginaryLiteralValue!3537 (text!25205 List!19367)) (StringLiteralValue!10611 (value!107897 List!19367)) (EOFValue!3537 (value!107898 List!19367)) (IdentValue!3537 (value!107899 List!19367)) (DelimiterValue!7075 (value!107900 List!19367)) (DedentValue!3537 (value!107901 List!19367)) (NewLineValue!3537 (value!107902 List!19367)) (IntegerValue!10611 (value!107903 (_ BitVec 32)) (text!25206 List!19367)) (IntegerValue!10612 (value!107904 Int) (text!25207 List!19367)) (Times!3537) (Or!3537) (Equal!3537) (Minus!3537) (Broken!17689 (value!107905 List!19367)) (And!3537) (Div!3537) (LessEqual!3537) (Mod!3537) (Concat!8312) (Not!3537) (Plus!3537) (SpaceValue!3537 (value!107906 List!19367)) (IntegerValue!10613 (value!107907 Int) (text!25208 List!19367)) (StringLiteralValue!10612 (text!25209 List!19367)) (FloatLiteralValue!7075 (text!25210 List!19367)) (BytesLiteralValue!3537 (value!107908 List!19367)) (CommentValue!7075 (value!107909 List!19367)) (StringLiteralValue!10613 (value!107910 List!19367)) (ErrorTokenValue!3537 (msg!3598 List!19367)) )
))
(declare-datatypes ((String!22017 0))(
  ( (String!22018 (value!107911 String)) )
))
(declare-datatypes ((C!9724 0))(
  ( (C!9725 (val!5458 Int)) )
))
(declare-datatypes ((List!19368 0))(
  ( (Nil!19298) (Cons!19298 (h!24699 C!9724) (t!163335 List!19368)) )
))
(declare-datatypes ((Regex!4775 0))(
  ( (ElementMatch!4775 (c!286082 C!9724)) (Concat!8313 (regOne!10062 Regex!4775) (regTwo!10062 Regex!4775)) (EmptyExpr!4775) (Star!4775 (reg!5104 Regex!4775)) (EmptyLang!4775) (Union!4775 (regOne!10063 Regex!4775) (regTwo!10063 Regex!4775)) )
))
(declare-datatypes ((IArray!12843 0))(
  ( (IArray!12844 (innerList!6479 List!19368)) )
))
(declare-datatypes ((Conc!6419 0))(
  ( (Node!6419 (left!15448 Conc!6419) (right!15778 Conc!6419) (csize!13068 Int) (cheight!6630 Int)) (Leaf!9363 (xs!9295 IArray!12843) (csize!13069 Int)) (Empty!6419) )
))
(declare-datatypes ((BalanceConc!12782 0))(
  ( (BalanceConc!12783 (c!286083 Conc!6419)) )
))
(declare-datatypes ((TokenValueInjection!6734 0))(
  ( (TokenValueInjection!6735 (toValue!4966 Int) (toChars!4825 Int)) )
))
(declare-datatypes ((Rule!6694 0))(
  ( (Rule!6695 (regex!3447 Regex!4775) (tag!3801 String!22017) (isSeparator!3447 Bool) (transformation!3447 TokenValueInjection!6734)) )
))
(declare-datatypes ((Token!6460 0))(
  ( (Token!6461 (value!107912 TokenValue!3537) (rule!5461 Rule!6694) (size!15334 Int) (originalCharacters!4261 List!19368)) )
))
(declare-datatypes ((tuple2!18926 0))(
  ( (tuple2!18927 (_1!10865 Token!6460) (_2!10865 List!19368)) )
))
(declare-fun lt!677731 () tuple2!18926)

(declare-fun order!12163 () Int)

(declare-fun lambda!69974 () Int)

(declare-fun order!12165 () Int)

(declare-fun dynLambda!9237 (Int Int) Int)

(declare-fun dynLambda!9238 (Int Int) Int)

(assert (=> b!1754654 (< (dynLambda!9237 order!12163 (toValue!4966 (transformation!3447 (rule!5461 (_1!10865 lt!677731))))) (dynLambda!9238 order!12165 lambda!69974))))

(declare-fun order!12167 () Int)

(declare-fun dynLambda!9239 (Int Int) Int)

(assert (=> b!1754654 (< (dynLambda!9239 order!12167 (toChars!4825 (transformation!3447 (rule!5461 (_1!10865 lt!677731))))) (dynLambda!9238 order!12165 lambda!69974))))

(declare-fun b!1754617 () Bool)

(declare-fun e!1122979 () Bool)

(declare-fun tp_is_empty!7793 () Bool)

(declare-fun tp!498858 () Bool)

(assert (=> b!1754617 (= e!1122979 (and tp_is_empty!7793 tp!498858))))

(declare-fun b!1754618 () Bool)

(declare-fun e!1122989 () Bool)

(assert (=> b!1754618 (= e!1122989 true)))

(declare-fun lt!677733 () Int)

(declare-fun lt!677720 () BalanceConc!12782)

(declare-fun size!15335 (BalanceConc!12782) Int)

(assert (=> b!1754618 (= lt!677733 (size!15335 lt!677720))))

(declare-fun lt!677732 () TokenValue!3537)

(declare-fun apply!5247 (TokenValueInjection!6734 BalanceConc!12782) TokenValue!3537)

(assert (=> b!1754618 (= lt!677732 (apply!5247 (transformation!3447 (rule!5461 (_1!10865 lt!677731))) lt!677720))))

(declare-datatypes ((Unit!33459 0))(
  ( (Unit!33460) )
))
(declare-fun lt!677721 () Unit!33459)

(declare-fun lemmaCharactersSize!505 (Token!6460) Unit!33459)

(assert (=> b!1754618 (= lt!677721 (lemmaCharactersSize!505 (_1!10865 lt!677731)))))

(declare-fun lt!677727 () Unit!33459)

(declare-fun lemmaEqSameImage!358 (TokenValueInjection!6734 BalanceConc!12782 BalanceConc!12782) Unit!33459)

(declare-fun seqFromList!2416 (List!19368) BalanceConc!12782)

(assert (=> b!1754618 (= lt!677727 (lemmaEqSameImage!358 (transformation!3447 (rule!5461 (_1!10865 lt!677731))) lt!677720 (seqFromList!2416 (originalCharacters!4261 (_1!10865 lt!677731)))))))

(declare-fun b!1754619 () Bool)

(declare-fun e!1122993 () Bool)

(declare-fun e!1122982 () Bool)

(assert (=> b!1754619 (= e!1122993 e!1122982)))

(declare-fun res!789312 () Bool)

(assert (=> b!1754619 (=> (not res!789312) (not e!1122982))))

(declare-datatypes ((Option!3916 0))(
  ( (None!3915) (Some!3915 (v!25364 tuple2!18926)) )
))
(declare-fun lt!677734 () Option!3916)

(declare-fun isDefined!3259 (Option!3916) Bool)

(assert (=> b!1754619 (= res!789312 (isDefined!3259 lt!677734))))

(declare-fun lt!677717 () List!19368)

(declare-datatypes ((LexerInterface!3076 0))(
  ( (LexerInterfaceExt!3073 (__x!12377 Int)) (Lexer!3074) )
))
(declare-fun thiss!24550 () LexerInterface!3076)

(declare-datatypes ((List!19369 0))(
  ( (Nil!19299) (Cons!19299 (h!24700 Rule!6694) (t!163336 List!19369)) )
))
(declare-fun rules!3447 () List!19369)

(declare-fun maxPrefix!1630 (LexerInterface!3076 List!19369 List!19368) Option!3916)

(assert (=> b!1754619 (= lt!677734 (maxPrefix!1630 thiss!24550 rules!3447 lt!677717))))

(declare-fun token!523 () Token!6460)

(declare-fun list!7821 (BalanceConc!12782) List!19368)

(declare-fun charsOf!2096 (Token!6460) BalanceConc!12782)

(assert (=> b!1754619 (= lt!677717 (list!7821 (charsOf!2096 token!523)))))

(declare-fun e!1122978 () Bool)

(assert (=> b!1754621 (= e!1122978 (and tp!498853 tp!498860))))

(declare-fun b!1754622 () Bool)

(declare-fun res!789327 () Bool)

(declare-fun e!1122994 () Bool)

(assert (=> b!1754622 (=> (not res!789327) (not e!1122994))))

(declare-fun rule!422 () Rule!6694)

(assert (=> b!1754622 (= res!789327 (= (rule!5461 token!523) rule!422))))

(declare-fun b!1754623 () Bool)

(declare-fun e!1122992 () Bool)

(declare-fun lt!677735 () Rule!6694)

(assert (=> b!1754623 (= e!1122992 (= (rule!5461 (_1!10865 lt!677731)) lt!677735))))

(declare-fun b!1754624 () Bool)

(declare-fun e!1122988 () Bool)

(assert (=> b!1754624 (= e!1122988 e!1122992)))

(declare-fun res!789326 () Bool)

(assert (=> b!1754624 (=> (not res!789326) (not e!1122992))))

(declare-fun matchR!2248 (Regex!4775 List!19368) Bool)

(assert (=> b!1754624 (= res!789326 (matchR!2248 (regex!3447 lt!677735) (list!7821 (charsOf!2096 (_1!10865 lt!677731)))))))

(declare-datatypes ((Option!3917 0))(
  ( (None!3916) (Some!3916 (v!25365 Rule!6694)) )
))
(declare-fun lt!677730 () Option!3917)

(declare-fun get!5857 (Option!3917) Rule!6694)

(assert (=> b!1754624 (= lt!677735 (get!5857 lt!677730))))

(declare-fun b!1754625 () Bool)

(declare-fun res!789314 () Bool)

(assert (=> b!1754625 (=> (not res!789314) (not e!1122993))))

(declare-fun rulesInvariant!2745 (LexerInterface!3076 List!19369) Bool)

(assert (=> b!1754625 (= res!789314 (rulesInvariant!2745 thiss!24550 rules!3447))))

(declare-fun b!1754626 () Bool)

(declare-fun e!1122991 () Bool)

(declare-fun e!1122980 () Bool)

(declare-fun tp!498856 () Bool)

(assert (=> b!1754626 (= e!1122991 (and e!1122980 tp!498856))))

(declare-fun b!1754627 () Bool)

(declare-fun e!1122977 () Bool)

(declare-fun tp!498859 () Bool)

(declare-fun inv!25040 (String!22017) Bool)

(declare-fun inv!25045 (TokenValueInjection!6734) Bool)

(assert (=> b!1754627 (= e!1122980 (and tp!498859 (inv!25040 (tag!3801 (h!24700 rules!3447))) (inv!25045 (transformation!3447 (h!24700 rules!3447))) e!1122977))))

(declare-fun b!1754628 () Bool)

(declare-fun res!789317 () Bool)

(declare-fun e!1122990 () Bool)

(assert (=> b!1754628 (=> res!789317 e!1122990)))

(declare-fun lt!677726 () List!19368)

(assert (=> b!1754628 (= res!789317 (not (matchR!2248 (regex!3447 (rule!5461 (_1!10865 lt!677731))) lt!677726)))))

(assert (=> b!1754629 (= e!1122977 (and tp!498854 tp!498863))))

(declare-fun b!1754630 () Bool)

(declare-fun res!789322 () Bool)

(assert (=> b!1754630 (=> res!789322 e!1122989)))

(declare-fun dynLambda!9240 (Int TokenValue!3537) BalanceConc!12782)

(assert (=> b!1754630 (= res!789322 (not (= lt!677720 (dynLambda!9240 (toChars!4825 (transformation!3447 (rule!5461 (_1!10865 lt!677731)))) (value!107912 (_1!10865 lt!677731))))))))

(declare-fun e!1122974 () Bool)

(assert (=> b!1754631 (= e!1122974 (and tp!498862 tp!498861))))

(declare-fun e!1122987 () Bool)

(assert (=> b!1754632 (= e!1122990 e!1122987)))

(declare-fun res!789323 () Bool)

(assert (=> b!1754632 (=> res!789323 e!1122987)))

(declare-fun Forall!814 (Int) Bool)

(assert (=> b!1754632 (= res!789323 (not (Forall!814 lambda!69974)))))

(declare-fun lt!677728 () Unit!33459)

(declare-fun lemmaInv!646 (TokenValueInjection!6734) Unit!33459)

(assert (=> b!1754632 (= lt!677728 (lemmaInv!646 (transformation!3447 (rule!5461 (_1!10865 lt!677731)))))))

(declare-fun e!1122983 () Bool)

(declare-fun b!1754633 () Bool)

(declare-fun tp!498864 () Bool)

(assert (=> b!1754633 (= e!1122983 (and tp!498864 (inv!25040 (tag!3801 (rule!5461 token!523))) (inv!25045 (transformation!3447 (rule!5461 token!523))) e!1122978))))

(declare-fun b!1754634 () Bool)

(declare-fun res!789325 () Bool)

(assert (=> b!1754634 (=> (not res!789325) (not e!1122993))))

(declare-fun isEmpty!12170 (List!19369) Bool)

(assert (=> b!1754634 (= res!789325 (not (isEmpty!12170 rules!3447)))))

(declare-fun b!1754635 () Bool)

(declare-fun e!1122986 () Bool)

(assert (=> b!1754635 (= e!1122994 (not e!1122986))))

(declare-fun res!789315 () Bool)

(assert (=> b!1754635 (=> res!789315 e!1122986)))

(assert (=> b!1754635 (= res!789315 (not (matchR!2248 (regex!3447 rule!422) lt!677717)))))

(declare-fun ruleValid!945 (LexerInterface!3076 Rule!6694) Bool)

(assert (=> b!1754635 (ruleValid!945 thiss!24550 rule!422)))

(declare-fun lt!677724 () Unit!33459)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!468 (LexerInterface!3076 Rule!6694 List!19369) Unit!33459)

(assert (=> b!1754635 (= lt!677724 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!468 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1754636 () Bool)

(declare-fun res!789328 () Bool)

(assert (=> b!1754636 (=> res!789328 e!1122986)))

(declare-fun suffix!1421 () List!19368)

(declare-fun isEmpty!12171 (List!19368) Bool)

(assert (=> b!1754636 (= res!789328 (isEmpty!12171 suffix!1421))))

(declare-fun b!1754637 () Bool)

(assert (=> b!1754637 (= e!1122986 e!1122990)))

(declare-fun res!789313 () Bool)

(assert (=> b!1754637 (=> res!789313 e!1122990)))

(declare-fun lt!677725 () List!19368)

(declare-fun isPrefix!1687 (List!19368 List!19368) Bool)

(assert (=> b!1754637 (= res!789313 (not (isPrefix!1687 lt!677726 lt!677725)))))

(declare-fun ++!5271 (List!19368 List!19368) List!19368)

(assert (=> b!1754637 (isPrefix!1687 lt!677726 (++!5271 lt!677726 (_2!10865 lt!677731)))))

(declare-fun lt!677718 () Unit!33459)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1196 (List!19368 List!19368) Unit!33459)

(assert (=> b!1754637 (= lt!677718 (lemmaConcatTwoListThenFirstIsPrefix!1196 lt!677726 (_2!10865 lt!677731)))))

(assert (=> b!1754637 (= lt!677726 (list!7821 lt!677720))))

(assert (=> b!1754637 (= lt!677720 (charsOf!2096 (_1!10865 lt!677731)))))

(assert (=> b!1754637 e!1122988))

(declare-fun res!789311 () Bool)

(assert (=> b!1754637 (=> (not res!789311) (not e!1122988))))

(declare-fun isDefined!3260 (Option!3917) Bool)

(assert (=> b!1754637 (= res!789311 (isDefined!3260 lt!677730))))

(declare-fun getRuleFromTag!495 (LexerInterface!3076 List!19369 String!22017) Option!3917)

(assert (=> b!1754637 (= lt!677730 (getRuleFromTag!495 thiss!24550 rules!3447 (tag!3801 (rule!5461 (_1!10865 lt!677731)))))))

(declare-fun lt!677722 () Unit!33459)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!495 (LexerInterface!3076 List!19369 List!19368 Token!6460) Unit!33459)

(assert (=> b!1754637 (= lt!677722 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!495 thiss!24550 rules!3447 lt!677725 (_1!10865 lt!677731)))))

(declare-fun lt!677716 () Option!3916)

(declare-fun get!5858 (Option!3916) tuple2!18926)

(assert (=> b!1754637 (= lt!677731 (get!5858 lt!677716))))

(declare-fun lt!677719 () Unit!33459)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!598 (LexerInterface!3076 List!19369 List!19368 List!19368) Unit!33459)

(assert (=> b!1754637 (= lt!677719 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!598 thiss!24550 rules!3447 lt!677717 suffix!1421))))

(assert (=> b!1754637 (= lt!677716 (maxPrefix!1630 thiss!24550 rules!3447 lt!677725))))

(assert (=> b!1754637 (isPrefix!1687 lt!677717 lt!677725)))

(declare-fun lt!677729 () Unit!33459)

(assert (=> b!1754637 (= lt!677729 (lemmaConcatTwoListThenFirstIsPrefix!1196 lt!677717 suffix!1421))))

(assert (=> b!1754637 (= lt!677725 (++!5271 lt!677717 suffix!1421))))

(declare-fun b!1754638 () Bool)

(declare-fun e!1122973 () Bool)

(declare-fun tp!498855 () Bool)

(assert (=> b!1754638 (= e!1122973 (and tp!498855 (inv!25040 (tag!3801 rule!422)) (inv!25045 (transformation!3447 rule!422)) e!1122974))))

(declare-fun b!1754639 () Bool)

(assert (=> b!1754639 (= e!1122982 e!1122994)))

(declare-fun res!789318 () Bool)

(assert (=> b!1754639 (=> (not res!789318) (not e!1122994))))

(declare-fun lt!677723 () tuple2!18926)

(assert (=> b!1754639 (= res!789318 (= (_1!10865 lt!677723) token!523))))

(assert (=> b!1754639 (= lt!677723 (get!5858 lt!677734))))

(declare-fun b!1754640 () Bool)

(declare-fun res!789316 () Bool)

(assert (=> b!1754640 (=> (not res!789316) (not e!1122994))))

(assert (=> b!1754640 (= res!789316 (isEmpty!12171 (_2!10865 lt!677723)))))

(declare-fun b!1754641 () Bool)

(declare-fun res!789320 () Bool)

(assert (=> b!1754641 (=> res!789320 e!1122986)))

(declare-fun prefixMatch!658 (Regex!4775 List!19368) Bool)

(declare-fun rulesRegex!803 (LexerInterface!3076 List!19369) Regex!4775)

(declare-fun head!4048 (List!19368) C!9724)

(assert (=> b!1754641 (= res!789320 (prefixMatch!658 (rulesRegex!803 thiss!24550 rules!3447) (++!5271 lt!677717 (Cons!19298 (head!4048 suffix!1421) Nil!19298))))))

(declare-fun b!1754620 () Bool)

(assert (=> b!1754620 (= e!1122987 e!1122989)))

(declare-fun res!789321 () Bool)

(assert (=> b!1754620 (=> res!789321 e!1122989)))

(declare-fun dynLambda!9241 (Int BalanceConc!12782) TokenValue!3537)

(assert (=> b!1754620 (= res!789321 (not (= (list!7821 (dynLambda!9240 (toChars!4825 (transformation!3447 (rule!5461 (_1!10865 lt!677731)))) (dynLambda!9241 (toValue!4966 (transformation!3447 (rule!5461 (_1!10865 lt!677731)))) lt!677720))) lt!677726)))))

(declare-fun lt!677736 () Unit!33459)

(declare-fun lemmaSemiInverse!585 (TokenValueInjection!6734 BalanceConc!12782) Unit!33459)

(assert (=> b!1754620 (= lt!677736 (lemmaSemiInverse!585 (transformation!3447 (rule!5461 (_1!10865 lt!677731))) lt!677720))))

(declare-fun res!789319 () Bool)

(assert (=> start!173154 (=> (not res!789319) (not e!1122993))))

(get-info :version)

(assert (=> start!173154 (= res!789319 ((_ is Lexer!3074) thiss!24550))))

(assert (=> start!173154 e!1122993))

(assert (=> start!173154 e!1122979))

(assert (=> start!173154 e!1122973))

(assert (=> start!173154 true))

(declare-fun e!1122985 () Bool)

(declare-fun inv!25046 (Token!6460) Bool)

(assert (=> start!173154 (and (inv!25046 token!523) e!1122985)))

(assert (=> start!173154 e!1122991))

(declare-fun tp!498857 () Bool)

(declare-fun b!1754642 () Bool)

(declare-fun inv!21 (TokenValue!3537) Bool)

(assert (=> b!1754642 (= e!1122985 (and (inv!21 (value!107912 token!523)) e!1122983 tp!498857))))

(declare-fun b!1754643 () Bool)

(declare-fun res!789324 () Bool)

(assert (=> b!1754643 (=> (not res!789324) (not e!1122993))))

(declare-fun contains!3475 (List!19369 Rule!6694) Bool)

(assert (=> b!1754643 (= res!789324 (contains!3475 rules!3447 rule!422))))

(assert (= (and start!173154 res!789319) b!1754634))

(assert (= (and b!1754634 res!789325) b!1754625))

(assert (= (and b!1754625 res!789314) b!1754643))

(assert (= (and b!1754643 res!789324) b!1754619))

(assert (= (and b!1754619 res!789312) b!1754639))

(assert (= (and b!1754639 res!789318) b!1754640))

(assert (= (and b!1754640 res!789316) b!1754622))

(assert (= (and b!1754622 res!789327) b!1754635))

(assert (= (and b!1754635 (not res!789315)) b!1754636))

(assert (= (and b!1754636 (not res!789328)) b!1754641))

(assert (= (and b!1754641 (not res!789320)) b!1754637))

(assert (= (and b!1754637 res!789311) b!1754624))

(assert (= (and b!1754624 res!789326) b!1754623))

(assert (= (and b!1754637 (not res!789313)) b!1754628))

(assert (= (and b!1754628 (not res!789317)) b!1754632))

(assert (= (and b!1754632 (not res!789323)) b!1754620))

(assert (= (and b!1754620 (not res!789321)) b!1754630))

(assert (= (and b!1754630 (not res!789322)) b!1754618))

(assert (= (and start!173154 ((_ is Cons!19298) suffix!1421)) b!1754617))

(assert (= b!1754638 b!1754631))

(assert (= start!173154 b!1754638))

(assert (= b!1754633 b!1754621))

(assert (= b!1754642 b!1754633))

(assert (= start!173154 b!1754642))

(assert (= b!1754627 b!1754629))

(assert (= b!1754626 b!1754627))

(assert (= (and start!173154 ((_ is Cons!19299) rules!3447)) b!1754626))

(declare-fun b_lambda!56515 () Bool)

(assert (=> (not b_lambda!56515) (not b!1754630)))

(declare-fun t!163317 () Bool)

(declare-fun tb!105371 () Bool)

(assert (=> (and b!1754631 (= (toChars!4825 (transformation!3447 rule!422)) (toChars!4825 (transformation!3447 (rule!5461 (_1!10865 lt!677731))))) t!163317) tb!105371))

(declare-fun b!1754659 () Bool)

(declare-fun e!1123006 () Bool)

(declare-fun tp!498867 () Bool)

(declare-fun inv!25047 (Conc!6419) Bool)

(assert (=> b!1754659 (= e!1123006 (and (inv!25047 (c!286083 (dynLambda!9240 (toChars!4825 (transformation!3447 (rule!5461 (_1!10865 lt!677731)))) (value!107912 (_1!10865 lt!677731))))) tp!498867))))

(declare-fun result!126750 () Bool)

(declare-fun inv!25048 (BalanceConc!12782) Bool)

(assert (=> tb!105371 (= result!126750 (and (inv!25048 (dynLambda!9240 (toChars!4825 (transformation!3447 (rule!5461 (_1!10865 lt!677731)))) (value!107912 (_1!10865 lt!677731)))) e!1123006))))

(assert (= tb!105371 b!1754659))

(declare-fun m!2169063 () Bool)

(assert (=> b!1754659 m!2169063))

(declare-fun m!2169065 () Bool)

(assert (=> tb!105371 m!2169065))

(assert (=> b!1754630 t!163317))

(declare-fun b_and!131571 () Bool)

(assert (= b_and!131561 (and (=> t!163317 result!126750) b_and!131571)))

(declare-fun tb!105373 () Bool)

(declare-fun t!163319 () Bool)

(assert (=> (and b!1754621 (= (toChars!4825 (transformation!3447 (rule!5461 token!523))) (toChars!4825 (transformation!3447 (rule!5461 (_1!10865 lt!677731))))) t!163319) tb!105373))

(declare-fun result!126754 () Bool)

(assert (= result!126754 result!126750))

(assert (=> b!1754630 t!163319))

(declare-fun b_and!131573 () Bool)

(assert (= b_and!131565 (and (=> t!163319 result!126754) b_and!131573)))

(declare-fun tb!105375 () Bool)

(declare-fun t!163321 () Bool)

(assert (=> (and b!1754629 (= (toChars!4825 (transformation!3447 (h!24700 rules!3447))) (toChars!4825 (transformation!3447 (rule!5461 (_1!10865 lt!677731))))) t!163321) tb!105375))

(declare-fun result!126756 () Bool)

(assert (= result!126756 result!126750))

(assert (=> b!1754630 t!163321))

(declare-fun b_and!131575 () Bool)

(assert (= b_and!131569 (and (=> t!163321 result!126756) b_and!131575)))

(declare-fun b_lambda!56517 () Bool)

(assert (=> (not b_lambda!56517) (not b!1754620)))

(declare-fun t!163323 () Bool)

(declare-fun tb!105377 () Bool)

(assert (=> (and b!1754631 (= (toChars!4825 (transformation!3447 rule!422)) (toChars!4825 (transformation!3447 (rule!5461 (_1!10865 lt!677731))))) t!163323) tb!105377))

(declare-fun b!1754660 () Bool)

(declare-fun e!1123007 () Bool)

(declare-fun tp!498868 () Bool)

(assert (=> b!1754660 (= e!1123007 (and (inv!25047 (c!286083 (dynLambda!9240 (toChars!4825 (transformation!3447 (rule!5461 (_1!10865 lt!677731)))) (dynLambda!9241 (toValue!4966 (transformation!3447 (rule!5461 (_1!10865 lt!677731)))) lt!677720)))) tp!498868))))

(declare-fun result!126758 () Bool)

(assert (=> tb!105377 (= result!126758 (and (inv!25048 (dynLambda!9240 (toChars!4825 (transformation!3447 (rule!5461 (_1!10865 lt!677731)))) (dynLambda!9241 (toValue!4966 (transformation!3447 (rule!5461 (_1!10865 lt!677731)))) lt!677720))) e!1123007))))

(assert (= tb!105377 b!1754660))

(declare-fun m!2169067 () Bool)

(assert (=> b!1754660 m!2169067))

(declare-fun m!2169069 () Bool)

(assert (=> tb!105377 m!2169069))

(assert (=> b!1754620 t!163323))

(declare-fun b_and!131577 () Bool)

(assert (= b_and!131571 (and (=> t!163323 result!126758) b_and!131577)))

(declare-fun tb!105379 () Bool)

(declare-fun t!163325 () Bool)

(assert (=> (and b!1754621 (= (toChars!4825 (transformation!3447 (rule!5461 token!523))) (toChars!4825 (transformation!3447 (rule!5461 (_1!10865 lt!677731))))) t!163325) tb!105379))

(declare-fun result!126760 () Bool)

(assert (= result!126760 result!126758))

(assert (=> b!1754620 t!163325))

(declare-fun b_and!131579 () Bool)

(assert (= b_and!131573 (and (=> t!163325 result!126760) b_and!131579)))

(declare-fun t!163327 () Bool)

(declare-fun tb!105381 () Bool)

(assert (=> (and b!1754629 (= (toChars!4825 (transformation!3447 (h!24700 rules!3447))) (toChars!4825 (transformation!3447 (rule!5461 (_1!10865 lt!677731))))) t!163327) tb!105381))

(declare-fun result!126762 () Bool)

(assert (= result!126762 result!126758))

(assert (=> b!1754620 t!163327))

(declare-fun b_and!131581 () Bool)

(assert (= b_and!131575 (and (=> t!163327 result!126762) b_and!131581)))

(declare-fun b_lambda!56519 () Bool)

(assert (=> (not b_lambda!56519) (not b!1754620)))

(declare-fun tb!105383 () Bool)

(declare-fun t!163329 () Bool)

(assert (=> (and b!1754631 (= (toValue!4966 (transformation!3447 rule!422)) (toValue!4966 (transformation!3447 (rule!5461 (_1!10865 lt!677731))))) t!163329) tb!105383))

(declare-fun result!126764 () Bool)

(assert (=> tb!105383 (= result!126764 (inv!21 (dynLambda!9241 (toValue!4966 (transformation!3447 (rule!5461 (_1!10865 lt!677731)))) lt!677720)))))

(declare-fun m!2169071 () Bool)

(assert (=> tb!105383 m!2169071))

(assert (=> b!1754620 t!163329))

(declare-fun b_and!131583 () Bool)

(assert (= b_and!131559 (and (=> t!163329 result!126764) b_and!131583)))

(declare-fun t!163331 () Bool)

(declare-fun tb!105385 () Bool)

(assert (=> (and b!1754621 (= (toValue!4966 (transformation!3447 (rule!5461 token!523))) (toValue!4966 (transformation!3447 (rule!5461 (_1!10865 lt!677731))))) t!163331) tb!105385))

(declare-fun result!126768 () Bool)

(assert (= result!126768 result!126764))

(assert (=> b!1754620 t!163331))

(declare-fun b_and!131585 () Bool)

(assert (= b_and!131563 (and (=> t!163331 result!126768) b_and!131585)))

(declare-fun t!163333 () Bool)

(declare-fun tb!105387 () Bool)

(assert (=> (and b!1754629 (= (toValue!4966 (transformation!3447 (h!24700 rules!3447))) (toValue!4966 (transformation!3447 (rule!5461 (_1!10865 lt!677731))))) t!163333) tb!105387))

(declare-fun result!126770 () Bool)

(assert (= result!126770 result!126764))

(assert (=> b!1754620 t!163333))

(declare-fun b_and!131587 () Bool)

(assert (= b_and!131567 (and (=> t!163333 result!126770) b_and!131587)))

(declare-fun m!2169073 () Bool)

(assert (=> b!1754633 m!2169073))

(declare-fun m!2169075 () Bool)

(assert (=> b!1754633 m!2169075))

(declare-fun m!2169077 () Bool)

(assert (=> b!1754638 m!2169077))

(declare-fun m!2169079 () Bool)

(assert (=> b!1754638 m!2169079))

(declare-fun m!2169081 () Bool)

(assert (=> b!1754624 m!2169081))

(assert (=> b!1754624 m!2169081))

(declare-fun m!2169083 () Bool)

(assert (=> b!1754624 m!2169083))

(assert (=> b!1754624 m!2169083))

(declare-fun m!2169085 () Bool)

(assert (=> b!1754624 m!2169085))

(declare-fun m!2169087 () Bool)

(assert (=> b!1754624 m!2169087))

(declare-fun m!2169089 () Bool)

(assert (=> b!1754627 m!2169089))

(declare-fun m!2169091 () Bool)

(assert (=> b!1754627 m!2169091))

(declare-fun m!2169093 () Bool)

(assert (=> b!1754632 m!2169093))

(declare-fun m!2169095 () Bool)

(assert (=> b!1754632 m!2169095))

(declare-fun m!2169097 () Bool)

(assert (=> b!1754643 m!2169097))

(declare-fun m!2169099 () Bool)

(assert (=> b!1754619 m!2169099))

(declare-fun m!2169101 () Bool)

(assert (=> b!1754619 m!2169101))

(declare-fun m!2169103 () Bool)

(assert (=> b!1754619 m!2169103))

(assert (=> b!1754619 m!2169103))

(declare-fun m!2169105 () Bool)

(assert (=> b!1754619 m!2169105))

(declare-fun m!2169107 () Bool)

(assert (=> b!1754618 m!2169107))

(declare-fun m!2169109 () Bool)

(assert (=> b!1754618 m!2169109))

(declare-fun m!2169111 () Bool)

(assert (=> b!1754618 m!2169111))

(declare-fun m!2169113 () Bool)

(assert (=> b!1754618 m!2169113))

(assert (=> b!1754618 m!2169111))

(declare-fun m!2169115 () Bool)

(assert (=> b!1754618 m!2169115))

(declare-fun m!2169117 () Bool)

(assert (=> b!1754642 m!2169117))

(declare-fun m!2169119 () Bool)

(assert (=> start!173154 m!2169119))

(declare-fun m!2169121 () Bool)

(assert (=> b!1754635 m!2169121))

(declare-fun m!2169123 () Bool)

(assert (=> b!1754635 m!2169123))

(declare-fun m!2169125 () Bool)

(assert (=> b!1754635 m!2169125))

(declare-fun m!2169127 () Bool)

(assert (=> b!1754625 m!2169127))

(declare-fun m!2169129 () Bool)

(assert (=> b!1754636 m!2169129))

(declare-fun m!2169131 () Bool)

(assert (=> b!1754634 m!2169131))

(declare-fun m!2169133 () Bool)

(assert (=> b!1754639 m!2169133))

(declare-fun m!2169135 () Bool)

(assert (=> b!1754637 m!2169135))

(assert (=> b!1754637 m!2169081))

(declare-fun m!2169137 () Bool)

(assert (=> b!1754637 m!2169137))

(declare-fun m!2169139 () Bool)

(assert (=> b!1754637 m!2169139))

(declare-fun m!2169141 () Bool)

(assert (=> b!1754637 m!2169141))

(declare-fun m!2169143 () Bool)

(assert (=> b!1754637 m!2169143))

(declare-fun m!2169145 () Bool)

(assert (=> b!1754637 m!2169145))

(declare-fun m!2169147 () Bool)

(assert (=> b!1754637 m!2169147))

(declare-fun m!2169149 () Bool)

(assert (=> b!1754637 m!2169149))

(declare-fun m!2169151 () Bool)

(assert (=> b!1754637 m!2169151))

(declare-fun m!2169153 () Bool)

(assert (=> b!1754637 m!2169153))

(declare-fun m!2169155 () Bool)

(assert (=> b!1754637 m!2169155))

(declare-fun m!2169157 () Bool)

(assert (=> b!1754637 m!2169157))

(assert (=> b!1754637 m!2169145))

(declare-fun m!2169159 () Bool)

(assert (=> b!1754637 m!2169159))

(declare-fun m!2169161 () Bool)

(assert (=> b!1754637 m!2169161))

(declare-fun m!2169163 () Bool)

(assert (=> b!1754630 m!2169163))

(declare-fun m!2169165 () Bool)

(assert (=> b!1754641 m!2169165))

(declare-fun m!2169167 () Bool)

(assert (=> b!1754641 m!2169167))

(declare-fun m!2169169 () Bool)

(assert (=> b!1754641 m!2169169))

(assert (=> b!1754641 m!2169165))

(assert (=> b!1754641 m!2169169))

(declare-fun m!2169171 () Bool)

(assert (=> b!1754641 m!2169171))

(declare-fun m!2169173 () Bool)

(assert (=> b!1754628 m!2169173))

(declare-fun m!2169175 () Bool)

(assert (=> b!1754640 m!2169175))

(declare-fun m!2169177 () Bool)

(assert (=> b!1754620 m!2169177))

(assert (=> b!1754620 m!2169177))

(declare-fun m!2169179 () Bool)

(assert (=> b!1754620 m!2169179))

(assert (=> b!1754620 m!2169179))

(declare-fun m!2169181 () Bool)

(assert (=> b!1754620 m!2169181))

(declare-fun m!2169183 () Bool)

(assert (=> b!1754620 m!2169183))

(check-sat (not b_next!49141) (not b!1754634) (not b!1754640) (not b!1754638) b_and!131581 (not b!1754632) (not b_next!49139) (not b!1754619) (not start!173154) (not b!1754617) (not tb!105371) (not b!1754636) (not b!1754639) (not b!1754625) (not b_next!49135) b_and!131587 (not b!1754642) (not b!1754624) (not b_next!49145) (not b_lambda!56519) (not b_next!49137) (not b_lambda!56515) (not b!1754627) (not b!1754660) (not b!1754643) b_and!131585 (not b_lambda!56517) b_and!131579 (not tb!105377) (not b!1754637) (not b!1754659) (not b!1754620) (not b!1754628) (not b!1754626) (not b!1754635) (not b!1754641) (not b!1754633) tp_is_empty!7793 b_and!131583 b_and!131577 (not b!1754618) (not tb!105383) (not b_next!49143))
(check-sat (not b_next!49141) (not b_next!49145) (not b_next!49137) b_and!131581 (not b_next!49139) b_and!131585 b_and!131579 (not b_next!49143) (not b_next!49135) b_and!131587 b_and!131583 b_and!131577)
