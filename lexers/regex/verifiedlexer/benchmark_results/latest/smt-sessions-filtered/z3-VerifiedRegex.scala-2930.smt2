; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!172354 () Bool)

(assert start!172354)

(declare-fun b!1747832 () Bool)

(declare-fun b_free!48083 () Bool)

(declare-fun b_next!48787 () Bool)

(assert (=> b!1747832 (= b_free!48083 (not b_next!48787))))

(declare-fun tp!497197 () Bool)

(declare-fun b_and!130271 () Bool)

(assert (=> b!1747832 (= tp!497197 b_and!130271)))

(declare-fun b_free!48085 () Bool)

(declare-fun b_next!48789 () Bool)

(assert (=> b!1747832 (= b_free!48085 (not b_next!48789))))

(declare-fun tp!497204 () Bool)

(declare-fun b_and!130273 () Bool)

(assert (=> b!1747832 (= tp!497204 b_and!130273)))

(declare-fun b!1747815 () Bool)

(declare-fun b_free!48087 () Bool)

(declare-fun b_next!48791 () Bool)

(assert (=> b!1747815 (= b_free!48087 (not b_next!48791))))

(declare-fun tp!497198 () Bool)

(declare-fun b_and!130275 () Bool)

(assert (=> b!1747815 (= tp!497198 b_and!130275)))

(declare-fun b_free!48089 () Bool)

(declare-fun b_next!48793 () Bool)

(assert (=> b!1747815 (= b_free!48089 (not b_next!48793))))

(declare-fun tp!497207 () Bool)

(declare-fun b_and!130277 () Bool)

(assert (=> b!1747815 (= tp!497207 b_and!130277)))

(declare-fun b!1747830 () Bool)

(declare-fun b_free!48091 () Bool)

(declare-fun b_next!48795 () Bool)

(assert (=> b!1747830 (= b_free!48091 (not b_next!48795))))

(declare-fun tp!497200 () Bool)

(declare-fun b_and!130279 () Bool)

(assert (=> b!1747830 (= tp!497200 b_and!130279)))

(declare-fun b_free!48093 () Bool)

(declare-fun b_next!48797 () Bool)

(assert (=> b!1747830 (= b_free!48093 (not b_next!48797))))

(declare-fun tp!497199 () Bool)

(declare-fun b_and!130281 () Bool)

(assert (=> b!1747830 (= tp!497199 b_and!130281)))

(declare-fun b!1747846 () Bool)

(declare-fun e!1118437 () Bool)

(assert (=> b!1747846 (= e!1118437 true)))

(declare-fun b!1747845 () Bool)

(declare-fun e!1118436 () Bool)

(assert (=> b!1747845 (= e!1118436 e!1118437)))

(declare-fun b!1747844 () Bool)

(declare-fun e!1118435 () Bool)

(assert (=> b!1747844 (= e!1118435 e!1118436)))

(declare-fun b!1747809 () Bool)

(assert (=> b!1747809 e!1118435))

(assert (= b!1747845 b!1747846))

(assert (= b!1747844 b!1747845))

(assert (= b!1747809 b!1747844))

(declare-fun lambda!69788 () Int)

(declare-fun order!12007 () Int)

(declare-fun order!12009 () Int)

(declare-datatypes ((List!19270 0))(
  ( (Nil!19200) (Cons!19200 (h!24601 (_ BitVec 16)) (t!162481 List!19270)) )
))
(declare-datatypes ((TokenValue!3511 0))(
  ( (FloatLiteralValue!7022 (text!25022 List!19270)) (TokenValueExt!3510 (__x!12324 Int)) (Broken!17555 (value!107145 List!19270)) (Object!3580) (End!3511) (Def!3511) (Underscore!3511) (Match!3511) (Else!3511) (Error!3511) (Case!3511) (If!3511) (Extends!3511) (Abstract!3511) (Class!3511) (Val!3511) (DelimiterValue!7022 (del!3571 List!19270)) (KeywordValue!3517 (value!107146 List!19270)) (CommentValue!7022 (value!107147 List!19270)) (WhitespaceValue!7022 (value!107148 List!19270)) (IndentationValue!3511 (value!107149 List!19270)) (String!21886) (Int32!3511) (Broken!17556 (value!107150 List!19270)) (Boolean!3512) (Unit!33278) (OperatorValue!3514 (op!3571 List!19270)) (IdentifierValue!7022 (value!107151 List!19270)) (IdentifierValue!7023 (value!107152 List!19270)) (WhitespaceValue!7023 (value!107153 List!19270)) (True!7022) (False!7022) (Broken!17557 (value!107154 List!19270)) (Broken!17558 (value!107155 List!19270)) (True!7023) (RightBrace!3511) (RightBracket!3511) (Colon!3511) (Null!3511) (Comma!3511) (LeftBracket!3511) (False!7023) (LeftBrace!3511) (ImaginaryLiteralValue!3511 (text!25023 List!19270)) (StringLiteralValue!10533 (value!107156 List!19270)) (EOFValue!3511 (value!107157 List!19270)) (IdentValue!3511 (value!107158 List!19270)) (DelimiterValue!7023 (value!107159 List!19270)) (DedentValue!3511 (value!107160 List!19270)) (NewLineValue!3511 (value!107161 List!19270)) (IntegerValue!10533 (value!107162 (_ BitVec 32)) (text!25024 List!19270)) (IntegerValue!10534 (value!107163 Int) (text!25025 List!19270)) (Times!3511) (Or!3511) (Equal!3511) (Minus!3511) (Broken!17559 (value!107164 List!19270)) (And!3511) (Div!3511) (LessEqual!3511) (Mod!3511) (Concat!8260) (Not!3511) (Plus!3511) (SpaceValue!3511 (value!107165 List!19270)) (IntegerValue!10535 (value!107166 Int) (text!25026 List!19270)) (StringLiteralValue!10534 (text!25027 List!19270)) (FloatLiteralValue!7023 (text!25028 List!19270)) (BytesLiteralValue!3511 (value!107167 List!19270)) (CommentValue!7023 (value!107168 List!19270)) (StringLiteralValue!10535 (value!107169 List!19270)) (ErrorTokenValue!3511 (msg!3572 List!19270)) )
))
(declare-datatypes ((C!9672 0))(
  ( (C!9673 (val!5432 Int)) )
))
(declare-datatypes ((List!19271 0))(
  ( (Nil!19201) (Cons!19201 (h!24602 C!9672) (t!162482 List!19271)) )
))
(declare-datatypes ((Regex!4749 0))(
  ( (ElementMatch!4749 (c!285180 C!9672)) (Concat!8261 (regOne!10010 Regex!4749) (regTwo!10010 Regex!4749)) (EmptyExpr!4749) (Star!4749 (reg!5078 Regex!4749)) (EmptyLang!4749) (Union!4749 (regOne!10011 Regex!4749) (regTwo!10011 Regex!4749)) )
))
(declare-datatypes ((String!21887 0))(
  ( (String!21888 (value!107170 String)) )
))
(declare-datatypes ((IArray!12779 0))(
  ( (IArray!12780 (innerList!6447 List!19271)) )
))
(declare-datatypes ((Conc!6387 0))(
  ( (Node!6387 (left!15351 Conc!6387) (right!15681 Conc!6387) (csize!13004 Int) (cheight!6598 Int)) (Leaf!9318 (xs!9263 IArray!12779) (csize!13005 Int)) (Empty!6387) )
))
(declare-datatypes ((BalanceConc!12718 0))(
  ( (BalanceConc!12719 (c!285181 Conc!6387)) )
))
(declare-datatypes ((TokenValueInjection!6682 0))(
  ( (TokenValueInjection!6683 (toValue!4936 Int) (toChars!4795 Int)) )
))
(declare-datatypes ((Rule!6642 0))(
  ( (Rule!6643 (regex!3421 Regex!4749) (tag!3769 String!21887) (isSeparator!3421 Bool) (transformation!3421 TokenValueInjection!6682)) )
))
(declare-datatypes ((Token!6408 0))(
  ( (Token!6409 (value!107171 TokenValue!3511) (rule!5427 Rule!6642) (size!15248 Int) (originalCharacters!4235 List!19271)) )
))
(declare-datatypes ((tuple2!18846 0))(
  ( (tuple2!18847 (_1!10825 Token!6408) (_2!10825 List!19271)) )
))
(declare-fun lt!673758 () tuple2!18846)

(declare-fun dynLambda!9104 (Int Int) Int)

(declare-fun dynLambda!9105 (Int Int) Int)

(assert (=> b!1747846 (< (dynLambda!9104 order!12007 (toValue!4936 (transformation!3421 (rule!5427 (_1!10825 lt!673758))))) (dynLambda!9105 order!12009 lambda!69788))))

(declare-fun order!12011 () Int)

(declare-fun dynLambda!9106 (Int Int) Int)

(assert (=> b!1747846 (< (dynLambda!9106 order!12011 (toChars!4795 (transformation!3421 (rule!5427 (_1!10825 lt!673758))))) (dynLambda!9105 order!12009 lambda!69788))))

(declare-fun b!1747808 () Bool)

(declare-fun res!785948 () Bool)

(declare-fun e!1118425 () Bool)

(assert (=> b!1747808 (=> res!785948 e!1118425)))

(declare-fun lt!673765 () List!19271)

(declare-fun matchR!2223 (Regex!4749 List!19271) Bool)

(assert (=> b!1747808 (= res!785948 (not (matchR!2223 (regex!3421 (rule!5427 (_1!10825 lt!673758))) lt!673765)))))

(declare-fun e!1118407 () Bool)

(assert (=> b!1747809 (= e!1118425 e!1118407)))

(declare-fun res!785959 () Bool)

(assert (=> b!1747809 (=> res!785959 e!1118407)))

(declare-fun Forall!790 (Int) Bool)

(assert (=> b!1747809 (= res!785959 (not (Forall!790 lambda!69788)))))

(declare-datatypes ((Unit!33279 0))(
  ( (Unit!33280) )
))
(declare-fun lt!673771 () Unit!33279)

(declare-fun lemmaInv!622 (TokenValueInjection!6682) Unit!33279)

(assert (=> b!1747809 (= lt!673771 (lemmaInv!622 (transformation!3421 (rule!5427 (_1!10825 lt!673758)))))))

(declare-fun b!1747810 () Bool)

(declare-fun res!785958 () Bool)

(declare-fun e!1118415 () Bool)

(assert (=> b!1747810 (=> res!785958 e!1118415)))

(declare-fun lt!673762 () BalanceConc!12718)

(declare-fun dynLambda!9107 (Int TokenValue!3511) BalanceConc!12718)

(assert (=> b!1747810 (= res!785958 (not (= lt!673762 (dynLambda!9107 (toChars!4795 (transformation!3421 (rule!5427 (_1!10825 lt!673758)))) (value!107171 (_1!10825 lt!673758))))))))

(declare-fun b!1747811 () Bool)

(assert (=> b!1747811 (= e!1118407 e!1118415)))

(declare-fun res!785952 () Bool)

(assert (=> b!1747811 (=> res!785952 e!1118415)))

(declare-fun list!7778 (BalanceConc!12718) List!19271)

(declare-fun dynLambda!9108 (Int BalanceConc!12718) TokenValue!3511)

(assert (=> b!1747811 (= res!785952 (not (= (list!7778 (dynLambda!9107 (toChars!4795 (transformation!3421 (rule!5427 (_1!10825 lt!673758)))) (dynLambda!9108 (toValue!4936 (transformation!3421 (rule!5427 (_1!10825 lt!673758)))) lt!673762))) lt!673765)))))

(declare-fun lt!673764 () Unit!33279)

(declare-fun lemmaSemiInverse!561 (TokenValueInjection!6682 BalanceConc!12718) Unit!33279)

(assert (=> b!1747811 (= lt!673764 (lemmaSemiInverse!561 (transformation!3421 (rule!5427 (_1!10825 lt!673758))) lt!673762))))

(declare-fun b!1747812 () Bool)

(declare-fun e!1118413 () Bool)

(declare-fun tp_is_empty!7741 () Bool)

(declare-fun tp!497206 () Bool)

(assert (=> b!1747812 (= e!1118413 (and tp_is_empty!7741 tp!497206))))

(declare-fun b!1747813 () Bool)

(declare-fun e!1118408 () Bool)

(declare-fun e!1118420 () Bool)

(assert (=> b!1747813 (= e!1118408 e!1118420)))

(declare-fun res!785945 () Bool)

(assert (=> b!1747813 (=> (not res!785945) (not e!1118420))))

(declare-fun lt!673774 () Rule!6642)

(declare-fun charsOf!2070 (Token!6408) BalanceConc!12718)

(assert (=> b!1747813 (= res!785945 (matchR!2223 (regex!3421 lt!673774) (list!7778 (charsOf!2070 (_1!10825 lt!673758)))))))

(declare-datatypes ((Option!3866 0))(
  ( (None!3865) (Some!3865 (v!25306 Rule!6642)) )
))
(declare-fun lt!673775 () Option!3866)

(declare-fun get!5794 (Option!3866) Rule!6642)

(assert (=> b!1747813 (= lt!673774 (get!5794 lt!673775))))

(declare-fun b!1747814 () Bool)

(declare-fun res!785957 () Bool)

(declare-fun e!1118412 () Bool)

(assert (=> b!1747814 (=> (not res!785957) (not e!1118412))))

(declare-datatypes ((LexerInterface!3050 0))(
  ( (LexerInterfaceExt!3047 (__x!12325 Int)) (Lexer!3048) )
))
(declare-fun thiss!24550 () LexerInterface!3050)

(declare-datatypes ((List!19272 0))(
  ( (Nil!19202) (Cons!19202 (h!24603 Rule!6642) (t!162483 List!19272)) )
))
(declare-fun rules!3447 () List!19272)

(declare-fun rulesInvariant!2719 (LexerInterface!3050 List!19272) Bool)

(assert (=> b!1747814 (= res!785957 (rulesInvariant!2719 thiss!24550 rules!3447))))

(declare-fun e!1118409 () Bool)

(assert (=> b!1747815 (= e!1118409 (and tp!497198 tp!497207))))

(declare-fun b!1747816 () Bool)

(declare-fun e!1118416 () Bool)

(assert (=> b!1747816 (= e!1118412 e!1118416)))

(declare-fun res!785951 () Bool)

(assert (=> b!1747816 (=> (not res!785951) (not e!1118416))))

(declare-datatypes ((Option!3867 0))(
  ( (None!3866) (Some!3866 (v!25307 tuple2!18846)) )
))
(declare-fun lt!673766 () Option!3867)

(declare-fun isDefined!3209 (Option!3867) Bool)

(assert (=> b!1747816 (= res!785951 (isDefined!3209 lt!673766))))

(declare-fun lt!673778 () List!19271)

(declare-fun maxPrefix!1604 (LexerInterface!3050 List!19272 List!19271) Option!3867)

(assert (=> b!1747816 (= lt!673766 (maxPrefix!1604 thiss!24550 rules!3447 lt!673778))))

(declare-fun token!523 () Token!6408)

(assert (=> b!1747816 (= lt!673778 (list!7778 (charsOf!2070 token!523)))))

(declare-fun b!1747817 () Bool)

(declare-fun res!785943 () Bool)

(assert (=> b!1747817 (=> (not res!785943) (not e!1118412))))

(declare-fun rule!422 () Rule!6642)

(declare-fun contains!3447 (List!19272 Rule!6642) Bool)

(assert (=> b!1747817 (= res!785943 (contains!3447 rules!3447 rule!422))))

(declare-fun b!1747818 () Bool)

(declare-fun e!1118423 () Bool)

(declare-fun lt!673769 () List!19271)

(assert (=> b!1747818 (= e!1118423 (= lt!673769 (_2!10825 lt!673758)))))

(assert (=> b!1747818 (= (_2!10825 lt!673758) lt!673769)))

(declare-fun lt!673773 () List!19271)

(declare-fun lt!673772 () Unit!33279)

(declare-fun lemmaSamePrefixThenSameSuffix!792 (List!19271 List!19271 List!19271 List!19271 List!19271) Unit!33279)

(assert (=> b!1747818 (= lt!673772 (lemmaSamePrefixThenSameSuffix!792 lt!673765 (_2!10825 lt!673758) lt!673765 lt!673769 lt!673773))))

(declare-fun getSuffix!842 (List!19271 List!19271) List!19271)

(assert (=> b!1747818 (= lt!673769 (getSuffix!842 lt!673773 lt!673765))))

(declare-fun maxPrefixOneRule!976 (LexerInterface!3050 Rule!6642 List!19271) Option!3867)

(declare-fun apply!5222 (TokenValueInjection!6682 BalanceConc!12718) TokenValue!3511)

(declare-fun seqFromList!2391 (List!19271) BalanceConc!12718)

(declare-fun size!15249 (List!19271) Int)

(assert (=> b!1747818 (= (maxPrefixOneRule!976 thiss!24550 (rule!5427 (_1!10825 lt!673758)) lt!673773) (Some!3866 (tuple2!18847 (Token!6409 (apply!5222 (transformation!3421 (rule!5427 (_1!10825 lt!673758))) (seqFromList!2391 lt!673765)) (rule!5427 (_1!10825 lt!673758)) (size!15249 lt!673765) lt!673765) (_2!10825 lt!673758))))))

(declare-fun lt!673757 () Unit!33279)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!365 (LexerInterface!3050 List!19272 List!19271 List!19271 List!19271 Rule!6642) Unit!33279)

(assert (=> b!1747818 (= lt!673757 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!365 thiss!24550 rules!3447 lt!673765 lt!673773 (_2!10825 lt!673758) (rule!5427 (_1!10825 lt!673758))))))

(declare-fun b!1747819 () Bool)

(declare-fun res!785949 () Bool)

(declare-fun e!1118422 () Bool)

(assert (=> b!1747819 (=> res!785949 e!1118422)))

(declare-fun suffix!1421 () List!19271)

(declare-fun prefixMatch!634 (Regex!4749 List!19271) Bool)

(declare-fun rulesRegex!779 (LexerInterface!3050 List!19272) Regex!4749)

(declare-fun ++!5246 (List!19271 List!19271) List!19271)

(declare-fun head!4016 (List!19271) C!9672)

(assert (=> b!1747819 (= res!785949 (prefixMatch!634 (rulesRegex!779 thiss!24550 rules!3447) (++!5246 lt!673778 (Cons!19201 (head!4016 suffix!1421) Nil!19201))))))

(declare-fun b!1747820 () Bool)

(assert (=> b!1747820 (= e!1118420 (= (rule!5427 (_1!10825 lt!673758)) lt!673774))))

(declare-fun e!1118424 () Bool)

(declare-fun b!1747821 () Bool)

(declare-fun tp!497202 () Bool)

(declare-fun e!1118428 () Bool)

(declare-fun inv!21 (TokenValue!3511) Bool)

(assert (=> b!1747821 (= e!1118428 (and (inv!21 (value!107171 token!523)) e!1118424 tp!497202))))

(declare-fun res!785947 () Bool)

(assert (=> start!172354 (=> (not res!785947) (not e!1118412))))

(get-info :version)

(assert (=> start!172354 (= res!785947 ((_ is Lexer!3048) thiss!24550))))

(assert (=> start!172354 e!1118412))

(assert (=> start!172354 e!1118413))

(declare-fun e!1118417 () Bool)

(assert (=> start!172354 e!1118417))

(assert (=> start!172354 true))

(declare-fun inv!24886 (Token!6408) Bool)

(assert (=> start!172354 (and (inv!24886 token!523) e!1118428)))

(declare-fun e!1118421 () Bool)

(assert (=> start!172354 e!1118421))

(declare-fun b!1747822 () Bool)

(assert (=> b!1747822 (= e!1118422 e!1118425)))

(declare-fun res!785944 () Bool)

(assert (=> b!1747822 (=> res!785944 e!1118425)))

(declare-fun isPrefix!1662 (List!19271 List!19271) Bool)

(assert (=> b!1747822 (= res!785944 (not (isPrefix!1662 lt!673765 lt!673773)))))

(assert (=> b!1747822 (isPrefix!1662 lt!673765 (++!5246 lt!673765 (_2!10825 lt!673758)))))

(declare-fun lt!673768 () Unit!33279)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1172 (List!19271 List!19271) Unit!33279)

(assert (=> b!1747822 (= lt!673768 (lemmaConcatTwoListThenFirstIsPrefix!1172 lt!673765 (_2!10825 lt!673758)))))

(assert (=> b!1747822 (= lt!673765 (list!7778 lt!673762))))

(assert (=> b!1747822 (= lt!673762 (charsOf!2070 (_1!10825 lt!673758)))))

(assert (=> b!1747822 e!1118408))

(declare-fun res!785960 () Bool)

(assert (=> b!1747822 (=> (not res!785960) (not e!1118408))))

(declare-fun isDefined!3210 (Option!3866) Bool)

(assert (=> b!1747822 (= res!785960 (isDefined!3210 lt!673775))))

(declare-fun getRuleFromTag!471 (LexerInterface!3050 List!19272 String!21887) Option!3866)

(assert (=> b!1747822 (= lt!673775 (getRuleFromTag!471 thiss!24550 rules!3447 (tag!3769 (rule!5427 (_1!10825 lt!673758)))))))

(declare-fun lt!673767 () Unit!33279)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!471 (LexerInterface!3050 List!19272 List!19271 Token!6408) Unit!33279)

(assert (=> b!1747822 (= lt!673767 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!471 thiss!24550 rules!3447 lt!673773 (_1!10825 lt!673758)))))

(declare-fun lt!673770 () Option!3867)

(declare-fun get!5795 (Option!3867) tuple2!18846)

(assert (=> b!1747822 (= lt!673758 (get!5795 lt!673770))))

(declare-fun lt!673761 () Unit!33279)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!574 (LexerInterface!3050 List!19272 List!19271 List!19271) Unit!33279)

(assert (=> b!1747822 (= lt!673761 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!574 thiss!24550 rules!3447 lt!673778 suffix!1421))))

(assert (=> b!1747822 (= lt!673770 (maxPrefix!1604 thiss!24550 rules!3447 lt!673773))))

(assert (=> b!1747822 (isPrefix!1662 lt!673778 lt!673773)))

(declare-fun lt!673760 () Unit!33279)

(assert (=> b!1747822 (= lt!673760 (lemmaConcatTwoListThenFirstIsPrefix!1172 lt!673778 suffix!1421))))

(assert (=> b!1747822 (= lt!673773 (++!5246 lt!673778 suffix!1421))))

(declare-fun b!1747823 () Bool)

(declare-fun e!1118418 () Bool)

(assert (=> b!1747823 (= e!1118416 e!1118418)))

(declare-fun res!785946 () Bool)

(assert (=> b!1747823 (=> (not res!785946) (not e!1118418))))

(declare-fun lt!673763 () tuple2!18846)

(assert (=> b!1747823 (= res!785946 (= (_1!10825 lt!673763) token!523))))

(assert (=> b!1747823 (= lt!673763 (get!5795 lt!673766))))

(declare-fun b!1747824 () Bool)

(declare-fun res!785956 () Bool)

(assert (=> b!1747824 (=> (not res!785956) (not e!1118418))))

(assert (=> b!1747824 (= res!785956 (= (rule!5427 token!523) rule!422))))

(declare-fun b!1747825 () Bool)

(declare-fun res!785953 () Bool)

(assert (=> b!1747825 (=> res!785953 e!1118422)))

(declare-fun isEmpty!12099 (List!19271) Bool)

(assert (=> b!1747825 (= res!785953 (isEmpty!12099 suffix!1421))))

(declare-fun b!1747826 () Bool)

(declare-fun res!785942 () Bool)

(assert (=> b!1747826 (=> (not res!785942) (not e!1118418))))

(assert (=> b!1747826 (= res!785942 (isEmpty!12099 (_2!10825 lt!673763)))))

(declare-fun tp!497205 () Bool)

(declare-fun b!1747827 () Bool)

(declare-fun e!1118406 () Bool)

(declare-fun inv!24881 (String!21887) Bool)

(declare-fun inv!24887 (TokenValueInjection!6682) Bool)

(assert (=> b!1747827 (= e!1118417 (and tp!497205 (inv!24881 (tag!3769 rule!422)) (inv!24887 (transformation!3421 rule!422)) e!1118406))))

(declare-fun e!1118426 () Bool)

(declare-fun b!1747828 () Bool)

(declare-fun tp!497208 () Bool)

(declare-fun e!1118427 () Bool)

(assert (=> b!1747828 (= e!1118427 (and tp!497208 (inv!24881 (tag!3769 (h!24603 rules!3447))) (inv!24887 (transformation!3421 (h!24603 rules!3447))) e!1118426))))

(declare-fun b!1747829 () Bool)

(declare-fun tp!497203 () Bool)

(assert (=> b!1747829 (= e!1118421 (and e!1118427 tp!497203))))

(assert (=> b!1747830 (= e!1118406 (and tp!497200 tp!497199))))

(declare-fun b!1747831 () Bool)

(assert (=> b!1747831 (= e!1118418 (not e!1118422))))

(declare-fun res!785950 () Bool)

(assert (=> b!1747831 (=> res!785950 e!1118422)))

(assert (=> b!1747831 (= res!785950 (not (matchR!2223 (regex!3421 rule!422) lt!673778)))))

(declare-fun ruleValid!920 (LexerInterface!3050 Rule!6642) Bool)

(assert (=> b!1747831 (ruleValid!920 thiss!24550 rule!422)))

(declare-fun lt!673777 () Unit!33279)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!444 (LexerInterface!3050 Rule!6642 List!19272) Unit!33279)

(assert (=> b!1747831 (= lt!673777 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!444 thiss!24550 rule!422 rules!3447))))

(assert (=> b!1747832 (= e!1118426 (and tp!497197 tp!497204))))

(declare-fun b!1747833 () Bool)

(assert (=> b!1747833 (= e!1118415 e!1118423)))

(declare-fun res!785954 () Bool)

(assert (=> b!1747833 (=> res!785954 e!1118423)))

(declare-fun size!15250 (BalanceConc!12718) Int)

(assert (=> b!1747833 (= res!785954 (not (= lt!673770 (Some!3866 (tuple2!18847 (Token!6409 (apply!5222 (transformation!3421 (rule!5427 (_1!10825 lt!673758))) lt!673762) (rule!5427 (_1!10825 lt!673758)) (size!15250 lt!673762) lt!673765) (_2!10825 lt!673758))))))))

(declare-fun lt!673776 () Unit!33279)

(declare-fun lemmaCharactersSize!481 (Token!6408) Unit!33279)

(assert (=> b!1747833 (= lt!673776 (lemmaCharactersSize!481 (_1!10825 lt!673758)))))

(declare-fun lt!673759 () Unit!33279)

(declare-fun lemmaEqSameImage!334 (TokenValueInjection!6682 BalanceConc!12718 BalanceConc!12718) Unit!33279)

(assert (=> b!1747833 (= lt!673759 (lemmaEqSameImage!334 (transformation!3421 (rule!5427 (_1!10825 lt!673758))) lt!673762 (seqFromList!2391 (originalCharacters!4235 (_1!10825 lt!673758)))))))

(declare-fun b!1747834 () Bool)

(declare-fun tp!497201 () Bool)

(assert (=> b!1747834 (= e!1118424 (and tp!497201 (inv!24881 (tag!3769 (rule!5427 token!523))) (inv!24887 (transformation!3421 (rule!5427 token!523))) e!1118409))))

(declare-fun b!1747835 () Bool)

(declare-fun res!785955 () Bool)

(assert (=> b!1747835 (=> (not res!785955) (not e!1118412))))

(declare-fun isEmpty!12100 (List!19272) Bool)

(assert (=> b!1747835 (= res!785955 (not (isEmpty!12100 rules!3447)))))

(assert (= (and start!172354 res!785947) b!1747835))

(assert (= (and b!1747835 res!785955) b!1747814))

(assert (= (and b!1747814 res!785957) b!1747817))

(assert (= (and b!1747817 res!785943) b!1747816))

(assert (= (and b!1747816 res!785951) b!1747823))

(assert (= (and b!1747823 res!785946) b!1747826))

(assert (= (and b!1747826 res!785942) b!1747824))

(assert (= (and b!1747824 res!785956) b!1747831))

(assert (= (and b!1747831 (not res!785950)) b!1747825))

(assert (= (and b!1747825 (not res!785953)) b!1747819))

(assert (= (and b!1747819 (not res!785949)) b!1747822))

(assert (= (and b!1747822 res!785960) b!1747813))

(assert (= (and b!1747813 res!785945) b!1747820))

(assert (= (and b!1747822 (not res!785944)) b!1747808))

(assert (= (and b!1747808 (not res!785948)) b!1747809))

(assert (= (and b!1747809 (not res!785959)) b!1747811))

(assert (= (and b!1747811 (not res!785952)) b!1747810))

(assert (= (and b!1747810 (not res!785958)) b!1747833))

(assert (= (and b!1747833 (not res!785954)) b!1747818))

(assert (= (and start!172354 ((_ is Cons!19201) suffix!1421)) b!1747812))

(assert (= b!1747827 b!1747830))

(assert (= start!172354 b!1747827))

(assert (= b!1747834 b!1747815))

(assert (= b!1747821 b!1747834))

(assert (= start!172354 b!1747821))

(assert (= b!1747828 b!1747832))

(assert (= b!1747829 b!1747828))

(assert (= (and start!172354 ((_ is Cons!19202) rules!3447)) b!1747829))

(declare-fun b_lambda!56099 () Bool)

(assert (=> (not b_lambda!56099) (not b!1747810)))

(declare-fun t!162464 () Bool)

(declare-fun tb!104621 () Bool)

(assert (=> (and b!1747832 (= (toChars!4795 (transformation!3421 (h!24603 rules!3447))) (toChars!4795 (transformation!3421 (rule!5427 (_1!10825 lt!673758))))) t!162464) tb!104621))

(declare-fun b!1747851 () Bool)

(declare-fun e!1118440 () Bool)

(declare-fun tp!497211 () Bool)

(declare-fun inv!24888 (Conc!6387) Bool)

(assert (=> b!1747851 (= e!1118440 (and (inv!24888 (c!285181 (dynLambda!9107 (toChars!4795 (transformation!3421 (rule!5427 (_1!10825 lt!673758)))) (value!107171 (_1!10825 lt!673758))))) tp!497211))))

(declare-fun result!125840 () Bool)

(declare-fun inv!24889 (BalanceConc!12718) Bool)

(assert (=> tb!104621 (= result!125840 (and (inv!24889 (dynLambda!9107 (toChars!4795 (transformation!3421 (rule!5427 (_1!10825 lt!673758)))) (value!107171 (_1!10825 lt!673758)))) e!1118440))))

(assert (= tb!104621 b!1747851))

(declare-fun m!2160393 () Bool)

(assert (=> b!1747851 m!2160393))

(declare-fun m!2160395 () Bool)

(assert (=> tb!104621 m!2160395))

(assert (=> b!1747810 t!162464))

(declare-fun b_and!130283 () Bool)

(assert (= b_and!130273 (and (=> t!162464 result!125840) b_and!130283)))

(declare-fun t!162466 () Bool)

(declare-fun tb!104623 () Bool)

(assert (=> (and b!1747815 (= (toChars!4795 (transformation!3421 (rule!5427 token!523))) (toChars!4795 (transformation!3421 (rule!5427 (_1!10825 lt!673758))))) t!162466) tb!104623))

(declare-fun result!125844 () Bool)

(assert (= result!125844 result!125840))

(assert (=> b!1747810 t!162466))

(declare-fun b_and!130285 () Bool)

(assert (= b_and!130277 (and (=> t!162466 result!125844) b_and!130285)))

(declare-fun t!162468 () Bool)

(declare-fun tb!104625 () Bool)

(assert (=> (and b!1747830 (= (toChars!4795 (transformation!3421 rule!422)) (toChars!4795 (transformation!3421 (rule!5427 (_1!10825 lt!673758))))) t!162468) tb!104625))

(declare-fun result!125846 () Bool)

(assert (= result!125846 result!125840))

(assert (=> b!1747810 t!162468))

(declare-fun b_and!130287 () Bool)

(assert (= b_and!130281 (and (=> t!162468 result!125846) b_and!130287)))

(declare-fun b_lambda!56101 () Bool)

(assert (=> (not b_lambda!56101) (not b!1747811)))

(declare-fun tb!104627 () Bool)

(declare-fun t!162470 () Bool)

(assert (=> (and b!1747832 (= (toChars!4795 (transformation!3421 (h!24603 rules!3447))) (toChars!4795 (transformation!3421 (rule!5427 (_1!10825 lt!673758))))) t!162470) tb!104627))

(declare-fun b!1747852 () Bool)

(declare-fun e!1118441 () Bool)

(declare-fun tp!497212 () Bool)

(assert (=> b!1747852 (= e!1118441 (and (inv!24888 (c!285181 (dynLambda!9107 (toChars!4795 (transformation!3421 (rule!5427 (_1!10825 lt!673758)))) (dynLambda!9108 (toValue!4936 (transformation!3421 (rule!5427 (_1!10825 lt!673758)))) lt!673762)))) tp!497212))))

(declare-fun result!125848 () Bool)

(assert (=> tb!104627 (= result!125848 (and (inv!24889 (dynLambda!9107 (toChars!4795 (transformation!3421 (rule!5427 (_1!10825 lt!673758)))) (dynLambda!9108 (toValue!4936 (transformation!3421 (rule!5427 (_1!10825 lt!673758)))) lt!673762))) e!1118441))))

(assert (= tb!104627 b!1747852))

(declare-fun m!2160397 () Bool)

(assert (=> b!1747852 m!2160397))

(declare-fun m!2160399 () Bool)

(assert (=> tb!104627 m!2160399))

(assert (=> b!1747811 t!162470))

(declare-fun b_and!130289 () Bool)

(assert (= b_and!130283 (and (=> t!162470 result!125848) b_and!130289)))

(declare-fun t!162472 () Bool)

(declare-fun tb!104629 () Bool)

(assert (=> (and b!1747815 (= (toChars!4795 (transformation!3421 (rule!5427 token!523))) (toChars!4795 (transformation!3421 (rule!5427 (_1!10825 lt!673758))))) t!162472) tb!104629))

(declare-fun result!125850 () Bool)

(assert (= result!125850 result!125848))

(assert (=> b!1747811 t!162472))

(declare-fun b_and!130291 () Bool)

(assert (= b_and!130285 (and (=> t!162472 result!125850) b_and!130291)))

(declare-fun t!162474 () Bool)

(declare-fun tb!104631 () Bool)

(assert (=> (and b!1747830 (= (toChars!4795 (transformation!3421 rule!422)) (toChars!4795 (transformation!3421 (rule!5427 (_1!10825 lt!673758))))) t!162474) tb!104631))

(declare-fun result!125852 () Bool)

(assert (= result!125852 result!125848))

(assert (=> b!1747811 t!162474))

(declare-fun b_and!130293 () Bool)

(assert (= b_and!130287 (and (=> t!162474 result!125852) b_and!130293)))

(declare-fun b_lambda!56103 () Bool)

(assert (=> (not b_lambda!56103) (not b!1747811)))

(declare-fun t!162476 () Bool)

(declare-fun tb!104633 () Bool)

(assert (=> (and b!1747832 (= (toValue!4936 (transformation!3421 (h!24603 rules!3447))) (toValue!4936 (transformation!3421 (rule!5427 (_1!10825 lt!673758))))) t!162476) tb!104633))

(declare-fun result!125854 () Bool)

(assert (=> tb!104633 (= result!125854 (inv!21 (dynLambda!9108 (toValue!4936 (transformation!3421 (rule!5427 (_1!10825 lt!673758)))) lt!673762)))))

(declare-fun m!2160401 () Bool)

(assert (=> tb!104633 m!2160401))

(assert (=> b!1747811 t!162476))

(declare-fun b_and!130295 () Bool)

(assert (= b_and!130271 (and (=> t!162476 result!125854) b_and!130295)))

(declare-fun tb!104635 () Bool)

(declare-fun t!162478 () Bool)

(assert (=> (and b!1747815 (= (toValue!4936 (transformation!3421 (rule!5427 token!523))) (toValue!4936 (transformation!3421 (rule!5427 (_1!10825 lt!673758))))) t!162478) tb!104635))

(declare-fun result!125858 () Bool)

(assert (= result!125858 result!125854))

(assert (=> b!1747811 t!162478))

(declare-fun b_and!130297 () Bool)

(assert (= b_and!130275 (and (=> t!162478 result!125858) b_and!130297)))

(declare-fun t!162480 () Bool)

(declare-fun tb!104637 () Bool)

(assert (=> (and b!1747830 (= (toValue!4936 (transformation!3421 rule!422)) (toValue!4936 (transformation!3421 (rule!5427 (_1!10825 lt!673758))))) t!162480) tb!104637))

(declare-fun result!125860 () Bool)

(assert (= result!125860 result!125854))

(assert (=> b!1747811 t!162480))

(declare-fun b_and!130299 () Bool)

(assert (= b_and!130279 (and (=> t!162480 result!125860) b_and!130299)))

(declare-fun m!2160403 () Bool)

(assert (=> b!1747826 m!2160403))

(declare-fun m!2160405 () Bool)

(assert (=> b!1747831 m!2160405))

(declare-fun m!2160407 () Bool)

(assert (=> b!1747831 m!2160407))

(declare-fun m!2160409 () Bool)

(assert (=> b!1747831 m!2160409))

(declare-fun m!2160411 () Bool)

(assert (=> b!1747834 m!2160411))

(declare-fun m!2160413 () Bool)

(assert (=> b!1747834 m!2160413))

(declare-fun m!2160415 () Bool)

(assert (=> b!1747825 m!2160415))

(declare-fun m!2160417 () Bool)

(assert (=> b!1747817 m!2160417))

(declare-fun m!2160419 () Bool)

(assert (=> b!1747835 m!2160419))

(declare-fun m!2160421 () Bool)

(assert (=> b!1747819 m!2160421))

(declare-fun m!2160423 () Bool)

(assert (=> b!1747819 m!2160423))

(declare-fun m!2160425 () Bool)

(assert (=> b!1747819 m!2160425))

(assert (=> b!1747819 m!2160421))

(assert (=> b!1747819 m!2160425))

(declare-fun m!2160427 () Bool)

(assert (=> b!1747819 m!2160427))

(declare-fun m!2160429 () Bool)

(assert (=> b!1747813 m!2160429))

(assert (=> b!1747813 m!2160429))

(declare-fun m!2160431 () Bool)

(assert (=> b!1747813 m!2160431))

(assert (=> b!1747813 m!2160431))

(declare-fun m!2160433 () Bool)

(assert (=> b!1747813 m!2160433))

(declare-fun m!2160435 () Bool)

(assert (=> b!1747813 m!2160435))

(declare-fun m!2160437 () Bool)

(assert (=> b!1747810 m!2160437))

(declare-fun m!2160439 () Bool)

(assert (=> start!172354 m!2160439))

(declare-fun m!2160441 () Bool)

(assert (=> b!1747823 m!2160441))

(declare-fun m!2160443 () Bool)

(assert (=> b!1747814 m!2160443))

(declare-fun m!2160445 () Bool)

(assert (=> b!1747811 m!2160445))

(assert (=> b!1747811 m!2160445))

(declare-fun m!2160447 () Bool)

(assert (=> b!1747811 m!2160447))

(assert (=> b!1747811 m!2160447))

(declare-fun m!2160449 () Bool)

(assert (=> b!1747811 m!2160449))

(declare-fun m!2160451 () Bool)

(assert (=> b!1747811 m!2160451))

(declare-fun m!2160453 () Bool)

(assert (=> b!1747828 m!2160453))

(declare-fun m!2160455 () Bool)

(assert (=> b!1747828 m!2160455))

(declare-fun m!2160457 () Bool)

(assert (=> b!1747818 m!2160457))

(declare-fun m!2160459 () Bool)

(assert (=> b!1747818 m!2160459))

(declare-fun m!2160461 () Bool)

(assert (=> b!1747818 m!2160461))

(assert (=> b!1747818 m!2160457))

(declare-fun m!2160463 () Bool)

(assert (=> b!1747818 m!2160463))

(declare-fun m!2160465 () Bool)

(assert (=> b!1747818 m!2160465))

(declare-fun m!2160467 () Bool)

(assert (=> b!1747818 m!2160467))

(declare-fun m!2160469 () Bool)

(assert (=> b!1747818 m!2160469))

(declare-fun m!2160471 () Bool)

(assert (=> b!1747822 m!2160471))

(declare-fun m!2160473 () Bool)

(assert (=> b!1747822 m!2160473))

(declare-fun m!2160475 () Bool)

(assert (=> b!1747822 m!2160475))

(declare-fun m!2160477 () Bool)

(assert (=> b!1747822 m!2160477))

(declare-fun m!2160479 () Bool)

(assert (=> b!1747822 m!2160479))

(declare-fun m!2160481 () Bool)

(assert (=> b!1747822 m!2160481))

(declare-fun m!2160483 () Bool)

(assert (=> b!1747822 m!2160483))

(declare-fun m!2160485 () Bool)

(assert (=> b!1747822 m!2160485))

(declare-fun m!2160487 () Bool)

(assert (=> b!1747822 m!2160487))

(declare-fun m!2160489 () Bool)

(assert (=> b!1747822 m!2160489))

(declare-fun m!2160491 () Bool)

(assert (=> b!1747822 m!2160491))

(declare-fun m!2160493 () Bool)

(assert (=> b!1747822 m!2160493))

(declare-fun m!2160495 () Bool)

(assert (=> b!1747822 m!2160495))

(assert (=> b!1747822 m!2160429))

(assert (=> b!1747822 m!2160477))

(declare-fun m!2160497 () Bool)

(assert (=> b!1747822 m!2160497))

(declare-fun m!2160499 () Bool)

(assert (=> b!1747821 m!2160499))

(declare-fun m!2160501 () Bool)

(assert (=> b!1747833 m!2160501))

(declare-fun m!2160503 () Bool)

(assert (=> b!1747833 m!2160503))

(declare-fun m!2160505 () Bool)

(assert (=> b!1747833 m!2160505))

(declare-fun m!2160507 () Bool)

(assert (=> b!1747833 m!2160507))

(assert (=> b!1747833 m!2160505))

(declare-fun m!2160509 () Bool)

(assert (=> b!1747833 m!2160509))

(declare-fun m!2160511 () Bool)

(assert (=> b!1747808 m!2160511))

(declare-fun m!2160513 () Bool)

(assert (=> b!1747809 m!2160513))

(declare-fun m!2160515 () Bool)

(assert (=> b!1747809 m!2160515))

(declare-fun m!2160517 () Bool)

(assert (=> b!1747827 m!2160517))

(declare-fun m!2160519 () Bool)

(assert (=> b!1747827 m!2160519))

(declare-fun m!2160521 () Bool)

(assert (=> b!1747816 m!2160521))

(declare-fun m!2160523 () Bool)

(assert (=> b!1747816 m!2160523))

(declare-fun m!2160525 () Bool)

(assert (=> b!1747816 m!2160525))

(assert (=> b!1747816 m!2160525))

(declare-fun m!2160527 () Bool)

(assert (=> b!1747816 m!2160527))

(check-sat (not b_next!48789) (not b!1747829) (not b_lambda!56101) tp_is_empty!7741 (not tb!104621) b_and!130293 (not b!1747852) (not b!1747814) (not b!1747812) (not b!1747808) (not b!1747816) b_and!130291 (not tb!104633) (not b!1747821) (not b_next!48787) (not b!1747818) (not b!1747834) (not b!1747819) (not b!1747822) (not b!1747826) (not start!172354) (not b!1747813) (not b_lambda!56099) (not b_lambda!56103) (not b!1747831) (not b_next!48793) (not b!1747835) (not b!1747809) (not b_next!48797) (not b!1747811) (not tb!104627) (not b!1747823) b_and!130289 (not b!1747833) (not b!1747825) (not b!1747817) (not b_next!48791) b_and!130295 b_and!130299 (not b!1747827) b_and!130297 (not b!1747851) (not b!1747828) (not b_next!48795))
(check-sat (not b_next!48789) b_and!130293 (not b_next!48793) (not b_next!48797) b_and!130289 (not b_next!48791) b_and!130291 b_and!130297 (not b_next!48795) (not b_next!48787) b_and!130295 b_and!130299)
