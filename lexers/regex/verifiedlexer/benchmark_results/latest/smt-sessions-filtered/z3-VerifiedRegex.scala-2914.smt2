; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!170726 () Bool)

(assert start!170726)

(declare-fun b!1735844 () Bool)

(declare-fun b_free!47619 () Bool)

(declare-fun b_next!48323 () Bool)

(assert (=> b!1735844 (= b_free!47619 (not b_next!48323))))

(declare-fun tp!494713 () Bool)

(declare-fun b_and!128535 () Bool)

(assert (=> b!1735844 (= tp!494713 b_and!128535)))

(declare-fun b_free!47621 () Bool)

(declare-fun b_next!48325 () Bool)

(assert (=> b!1735844 (= b_free!47621 (not b_next!48325))))

(declare-fun tp!494719 () Bool)

(declare-fun b_and!128537 () Bool)

(assert (=> b!1735844 (= tp!494719 b_and!128537)))

(declare-fun b!1735835 () Bool)

(declare-fun b_free!47623 () Bool)

(declare-fun b_next!48327 () Bool)

(assert (=> b!1735835 (= b_free!47623 (not b_next!48327))))

(declare-fun tp!494717 () Bool)

(declare-fun b_and!128539 () Bool)

(assert (=> b!1735835 (= tp!494717 b_and!128539)))

(declare-fun b_free!47625 () Bool)

(declare-fun b_next!48329 () Bool)

(assert (=> b!1735835 (= b_free!47625 (not b_next!48329))))

(declare-fun tp!494715 () Bool)

(declare-fun b_and!128541 () Bool)

(assert (=> b!1735835 (= tp!494715 b_and!128541)))

(declare-fun b!1735828 () Bool)

(declare-fun b_free!47627 () Bool)

(declare-fun b_next!48331 () Bool)

(assert (=> b!1735828 (= b_free!47627 (not b_next!48331))))

(declare-fun tp!494718 () Bool)

(declare-fun b_and!128543 () Bool)

(assert (=> b!1735828 (= tp!494718 b_and!128543)))

(declare-fun b_free!47629 () Bool)

(declare-fun b_next!48333 () Bool)

(assert (=> b!1735828 (= b_free!47629 (not b_next!48333))))

(declare-fun tp!494714 () Bool)

(declare-fun b_and!128545 () Bool)

(assert (=> b!1735828 (= tp!494714 b_and!128545)))

(declare-fun b!1735868 () Bool)

(declare-fun e!1110871 () Bool)

(assert (=> b!1735868 (= e!1110871 true)))

(declare-fun b!1735867 () Bool)

(declare-fun e!1110870 () Bool)

(assert (=> b!1735867 (= e!1110870 e!1110871)))

(declare-fun b!1735866 () Bool)

(declare-fun e!1110869 () Bool)

(assert (=> b!1735866 (= e!1110869 e!1110870)))

(declare-fun b!1735826 () Bool)

(assert (=> b!1735826 e!1110869))

(assert (= b!1735867 b!1735868))

(assert (= b!1735866 b!1735867))

(assert (= b!1735826 b!1735866))

(declare-fun lambda!69488 () Int)

(declare-datatypes ((List!19127 0))(
  ( (Nil!19057) (Cons!19057 (h!24458 (_ BitVec 16)) (t!161326 List!19127)) )
))
(declare-datatypes ((TokenValue!3479 0))(
  ( (FloatLiteralValue!6958 (text!24798 List!19127)) (TokenValueExt!3478 (__x!12260 Int)) (Broken!17395 (value!106233 List!19127)) (Object!3548) (End!3479) (Def!3479) (Underscore!3479) (Match!3479) (Else!3479) (Error!3479) (Case!3479) (If!3479) (Extends!3479) (Abstract!3479) (Class!3479) (Val!3479) (DelimiterValue!6958 (del!3539 List!19127)) (KeywordValue!3485 (value!106234 List!19127)) (CommentValue!6958 (value!106235 List!19127)) (WhitespaceValue!6958 (value!106236 List!19127)) (IndentationValue!3479 (value!106237 List!19127)) (String!21726) (Int32!3479) (Broken!17396 (value!106238 List!19127)) (Boolean!3480) (Unit!32970) (OperatorValue!3482 (op!3539 List!19127)) (IdentifierValue!6958 (value!106239 List!19127)) (IdentifierValue!6959 (value!106240 List!19127)) (WhitespaceValue!6959 (value!106241 List!19127)) (True!6958) (False!6958) (Broken!17397 (value!106242 List!19127)) (Broken!17398 (value!106243 List!19127)) (True!6959) (RightBrace!3479) (RightBracket!3479) (Colon!3479) (Null!3479) (Comma!3479) (LeftBracket!3479) (False!6959) (LeftBrace!3479) (ImaginaryLiteralValue!3479 (text!24799 List!19127)) (StringLiteralValue!10437 (value!106244 List!19127)) (EOFValue!3479 (value!106245 List!19127)) (IdentValue!3479 (value!106246 List!19127)) (DelimiterValue!6959 (value!106247 List!19127)) (DedentValue!3479 (value!106248 List!19127)) (NewLineValue!3479 (value!106249 List!19127)) (IntegerValue!10437 (value!106250 (_ BitVec 32)) (text!24800 List!19127)) (IntegerValue!10438 (value!106251 Int) (text!24801 List!19127)) (Times!3479) (Or!3479) (Equal!3479) (Minus!3479) (Broken!17399 (value!106252 List!19127)) (And!3479) (Div!3479) (LessEqual!3479) (Mod!3479) (Concat!8196) (Not!3479) (Plus!3479) (SpaceValue!3479 (value!106253 List!19127)) (IntegerValue!10439 (value!106254 Int) (text!24802 List!19127)) (StringLiteralValue!10438 (text!24803 List!19127)) (FloatLiteralValue!6959 (text!24804 List!19127)) (BytesLiteralValue!3479 (value!106255 List!19127)) (CommentValue!6959 (value!106256 List!19127)) (StringLiteralValue!10439 (value!106257 List!19127)) (ErrorTokenValue!3479 (msg!3540 List!19127)) )
))
(declare-datatypes ((C!9608 0))(
  ( (C!9609 (val!5400 Int)) )
))
(declare-datatypes ((List!19128 0))(
  ( (Nil!19058) (Cons!19058 (h!24459 C!9608) (t!161327 List!19128)) )
))
(declare-datatypes ((String!21727 0))(
  ( (String!21728 (value!106258 String)) )
))
(declare-datatypes ((Regex!4717 0))(
  ( (ElementMatch!4717 (c!283328 C!9608)) (Concat!8197 (regOne!9946 Regex!4717) (regTwo!9946 Regex!4717)) (EmptyExpr!4717) (Star!4717 (reg!5046 Regex!4717)) (EmptyLang!4717) (Union!4717 (regOne!9947 Regex!4717) (regTwo!9947 Regex!4717)) )
))
(declare-datatypes ((IArray!12683 0))(
  ( (IArray!12684 (innerList!6399 List!19128)) )
))
(declare-datatypes ((Conc!6339 0))(
  ( (Node!6339 (left!15235 Conc!6339) (right!15565 Conc!6339) (csize!12908 Int) (cheight!6550 Int)) (Leaf!9254 (xs!9215 IArray!12683) (csize!12909 Int)) (Empty!6339) )
))
(declare-datatypes ((BalanceConc!12622 0))(
  ( (BalanceConc!12623 (c!283329 Conc!6339)) )
))
(declare-datatypes ((TokenValueInjection!6618 0))(
  ( (TokenValueInjection!6619 (toValue!4896 Int) (toChars!4755 Int)) )
))
(declare-datatypes ((Rule!6578 0))(
  ( (Rule!6579 (regex!3389 Regex!4717) (tag!3721 String!21727) (isSeparator!3389 Bool) (transformation!3389 TokenValueInjection!6618)) )
))
(declare-datatypes ((Token!6344 0))(
  ( (Token!6345 (value!106259 TokenValue!3479) (rule!5379 Rule!6578) (size!15146 Int) (originalCharacters!4203 List!19128)) )
))
(declare-datatypes ((tuple2!18722 0))(
  ( (tuple2!18723 (_1!10763 Token!6344) (_2!10763 List!19128)) )
))
(declare-fun lt!667608 () tuple2!18722)

(declare-fun order!11831 () Int)

(declare-fun order!11833 () Int)

(declare-fun dynLambda!8954 (Int Int) Int)

(declare-fun dynLambda!8955 (Int Int) Int)

(assert (=> b!1735868 (< (dynLambda!8954 order!11831 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) (dynLambda!8955 order!11833 lambda!69488))))

(declare-fun order!11835 () Int)

(declare-fun dynLambda!8956 (Int Int) Int)

(assert (=> b!1735868 (< (dynLambda!8956 order!11835 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) (dynLambda!8955 order!11833 lambda!69488))))

(declare-fun b!1735819 () Bool)

(declare-datatypes ((Unit!32971 0))(
  ( (Unit!32972) )
))
(declare-fun e!1110837 () Unit!32971)

(declare-fun Unit!32973 () Unit!32971)

(assert (=> b!1735819 (= e!1110837 Unit!32973)))

(declare-fun lt!667588 () List!19128)

(declare-datatypes ((List!19129 0))(
  ( (Nil!19059) (Cons!19059 (h!24460 Rule!6578) (t!161328 List!19129)) )
))
(declare-fun rules!3447 () List!19129)

(declare-fun lt!667594 () Unit!32971)

(declare-fun lt!667623 () List!19128)

(declare-fun rule!422 () Rule!6578)

(declare-fun lt!667625 () List!19128)

(declare-datatypes ((LexerInterface!3018 0))(
  ( (LexerInterfaceExt!3015 (__x!12261 Int)) (Lexer!3016) )
))
(declare-fun thiss!24550 () LexerInterface!3018)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!186 (LexerInterface!3018 List!19129 Rule!6578 List!19128 List!19128 List!19128 Rule!6578) Unit!32971)

(assert (=> b!1735819 (= lt!667594 (lemmaMaxPrefixOutputsMaxPrefix!186 thiss!24550 rules!3447 (rule!5379 (_1!10763 lt!667608)) lt!667588 lt!667623 lt!667625 rule!422))))

(assert (=> b!1735819 false))

(declare-fun b!1735820 () Bool)

(declare-fun e!1110847 () Bool)

(declare-fun e!1110832 () Bool)

(assert (=> b!1735820 (= e!1110847 (not e!1110832))))

(declare-fun res!780037 () Bool)

(assert (=> b!1735820 (=> res!780037 e!1110832)))

(declare-fun matchR!2191 (Regex!4717 List!19128) Bool)

(assert (=> b!1735820 (= res!780037 (not (matchR!2191 (regex!3389 rule!422) lt!667625)))))

(declare-fun ruleValid!888 (LexerInterface!3018 Rule!6578) Bool)

(assert (=> b!1735820 (ruleValid!888 thiss!24550 rule!422)))

(declare-fun lt!667585 () Unit!32971)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!412 (LexerInterface!3018 Rule!6578 List!19129) Unit!32971)

(assert (=> b!1735820 (= lt!667585 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!412 thiss!24550 rule!422 rules!3447))))

(declare-fun e!1110851 () Bool)

(declare-fun tp!494716 () Bool)

(declare-fun b!1735821 () Bool)

(declare-fun e!1110859 () Bool)

(declare-fun inv!24673 (String!21727) Bool)

(declare-fun inv!24678 (TokenValueInjection!6618) Bool)

(assert (=> b!1735821 (= e!1110859 (and tp!494716 (inv!24673 (tag!3721 rule!422)) (inv!24678 (transformation!3389 rule!422)) e!1110851))))

(declare-fun b!1735822 () Bool)

(declare-fun e!1110861 () Bool)

(declare-fun e!1110857 () Bool)

(assert (=> b!1735822 (= e!1110861 e!1110857)))

(declare-fun res!780043 () Bool)

(assert (=> b!1735822 (=> res!780043 e!1110857)))

(declare-fun lt!667584 () BalanceConc!12622)

(declare-fun list!7706 (BalanceConc!12622) List!19128)

(declare-fun dynLambda!8957 (Int TokenValue!3479) BalanceConc!12622)

(declare-fun dynLambda!8958 (Int BalanceConc!12622) TokenValue!3479)

(assert (=> b!1735822 (= res!780043 (not (= (list!7706 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584))) lt!667588)))))

(declare-fun lt!667602 () Unit!32971)

(declare-fun lemmaSemiInverse!535 (TokenValueInjection!6618 BalanceConc!12622) Unit!32971)

(assert (=> b!1735822 (= lt!667602 (lemmaSemiInverse!535 (transformation!3389 (rule!5379 (_1!10763 lt!667608))) lt!667584))))

(declare-fun b!1735823 () Bool)

(declare-fun e!1110831 () Bool)

(declare-fun contains!3411 (List!19129 Rule!6578) Bool)

(assert (=> b!1735823 (= e!1110831 (contains!3411 rules!3447 (rule!5379 (_1!10763 lt!667608))))))

(declare-fun lt!667620 () Unit!32971)

(declare-fun e!1110853 () Unit!32971)

(assert (=> b!1735823 (= lt!667620 e!1110853)))

(declare-fun c!283327 () Bool)

(declare-fun token!523 () Token!6344)

(declare-fun getIndex!156 (List!19129 Rule!6578) Int)

(assert (=> b!1735823 (= c!283327 (< (getIndex!156 rules!3447 (rule!5379 token!523)) (getIndex!156 rules!3447 (rule!5379 (_1!10763 lt!667608)))))))

(declare-fun b!1735824 () Bool)

(declare-fun res!780052 () Bool)

(assert (=> b!1735824 (=> res!780052 e!1110832)))

(declare-fun suffix!1421 () List!19128)

(declare-fun isEmpty!11993 (List!19128) Bool)

(assert (=> b!1735824 (= res!780052 (isEmpty!11993 suffix!1421))))

(declare-fun b!1735825 () Bool)

(declare-fun e!1110842 () Bool)

(declare-fun e!1110862 () Bool)

(assert (=> b!1735825 (= e!1110842 e!1110862)))

(declare-fun res!780031 () Bool)

(assert (=> b!1735825 (=> res!780031 e!1110862)))

(declare-fun lt!667614 () List!19128)

(declare-datatypes ((Option!3802 0))(
  ( (None!3801) (Some!3801 (v!25226 tuple2!18722)) )
))
(declare-fun lt!667589 () Option!3802)

(assert (=> b!1735825 (= res!780031 (or (not (= lt!667614 (_2!10763 lt!667608))) (not (= lt!667589 (Some!3801 (tuple2!18723 (_1!10763 lt!667608) lt!667614))))))))

(assert (=> b!1735825 (= (_2!10763 lt!667608) lt!667614)))

(declare-fun lt!667597 () Unit!32971)

(declare-fun lemmaSamePrefixThenSameSuffix!774 (List!19128 List!19128 List!19128 List!19128 List!19128) Unit!32971)

(assert (=> b!1735825 (= lt!667597 (lemmaSamePrefixThenSameSuffix!774 lt!667588 (_2!10763 lt!667608) lt!667588 lt!667614 lt!667623))))

(declare-fun getSuffix!824 (List!19128 List!19128) List!19128)

(assert (=> b!1735825 (= lt!667614 (getSuffix!824 lt!667623 lt!667588))))

(declare-fun lt!667609 () Int)

(declare-fun lt!667595 () TokenValue!3479)

(assert (=> b!1735825 (= lt!667589 (Some!3801 (tuple2!18723 (Token!6345 lt!667595 (rule!5379 (_1!10763 lt!667608)) lt!667609 lt!667588) (_2!10763 lt!667608))))))

(declare-fun maxPrefixOneRule!948 (LexerInterface!3018 Rule!6578 List!19128) Option!3802)

(assert (=> b!1735825 (= lt!667589 (maxPrefixOneRule!948 thiss!24550 (rule!5379 (_1!10763 lt!667608)) lt!667623))))

(declare-fun size!15147 (List!19128) Int)

(assert (=> b!1735825 (= lt!667609 (size!15147 lt!667588))))

(declare-fun apply!5194 (TokenValueInjection!6618 BalanceConc!12622) TokenValue!3479)

(declare-fun seqFromList!2363 (List!19128) BalanceConc!12622)

(assert (=> b!1735825 (= lt!667595 (apply!5194 (transformation!3389 (rule!5379 (_1!10763 lt!667608))) (seqFromList!2363 lt!667588)))))

(declare-fun lt!667601 () Unit!32971)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!347 (LexerInterface!3018 List!19129 List!19128 List!19128 List!19128 Rule!6578) Unit!32971)

(assert (=> b!1735825 (= lt!667601 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!347 thiss!24550 rules!3447 lt!667588 lt!667623 (_2!10763 lt!667608) (rule!5379 (_1!10763 lt!667608))))))

(declare-fun e!1110836 () Bool)

(assert (=> b!1735826 (= e!1110836 e!1110861)))

(declare-fun res!780038 () Bool)

(assert (=> b!1735826 (=> res!780038 e!1110861)))

(declare-fun Forall!764 (Int) Bool)

(assert (=> b!1735826 (= res!780038 (not (Forall!764 lambda!69488)))))

(declare-fun lt!667618 () Unit!32971)

(declare-fun lemmaInv!596 (TokenValueInjection!6618) Unit!32971)

(assert (=> b!1735826 (= lt!667618 (lemmaInv!596 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))))))

(declare-fun b!1735827 () Bool)

(declare-fun res!780042 () Bool)

(declare-fun e!1110856 () Bool)

(assert (=> b!1735827 (=> (not res!780042) (not e!1110856))))

(declare-fun isEmpty!11994 (List!19129) Bool)

(assert (=> b!1735827 (= res!780042 (not (isEmpty!11994 rules!3447)))))

(assert (=> b!1735828 (= e!1110851 (and tp!494718 tp!494714))))

(declare-fun b!1735829 () Bool)

(declare-fun res!780040 () Bool)

(assert (=> b!1735829 (=> res!780040 e!1110857)))

(assert (=> b!1735829 (= res!780040 (not (= lt!667584 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (value!106259 (_1!10763 lt!667608))))))))

(declare-fun b!1735830 () Bool)

(declare-fun e!1110839 () Bool)

(declare-fun e!1110835 () Bool)

(declare-fun tp!494721 () Bool)

(assert (=> b!1735830 (= e!1110839 (and e!1110835 tp!494721))))

(declare-fun b!1735831 () Bool)

(declare-fun res!780039 () Bool)

(assert (=> b!1735831 (=> (not res!780039) (not e!1110847))))

(assert (=> b!1735831 (= res!780039 (= (rule!5379 token!523) rule!422))))

(declare-fun b!1735832 () Bool)

(declare-fun e!1110843 () Bool)

(declare-fun e!1110860 () Bool)

(assert (=> b!1735832 (= e!1110843 e!1110860)))

(declare-fun res!780050 () Bool)

(assert (=> b!1735832 (=> res!780050 e!1110860)))

(declare-fun lt!667603 () Int)

(declare-fun lt!667627 () Int)

(assert (=> b!1735832 (= res!780050 (not (= lt!667603 lt!667627)))))

(declare-fun lt!667606 () Unit!32971)

(assert (=> b!1735832 (= lt!667606 e!1110837)))

(declare-fun c!283326 () Bool)

(assert (=> b!1735832 (= c!283326 (< lt!667603 lt!667627))))

(declare-fun b!1735833 () Bool)

(declare-fun e!1110838 () Unit!32971)

(declare-fun Unit!32974 () Unit!32971)

(assert (=> b!1735833 (= e!1110838 Unit!32974)))

(declare-fun b!1735834 () Bool)

(declare-fun res!780041 () Bool)

(assert (=> b!1735834 (=> res!780041 e!1110836)))

(assert (=> b!1735834 (= res!780041 (not (matchR!2191 (regex!3389 (rule!5379 (_1!10763 lt!667608))) lt!667588)))))

(declare-fun e!1110834 () Bool)

(assert (=> b!1735835 (= e!1110834 (and tp!494717 tp!494715))))

(declare-fun b!1735836 () Bool)

(declare-fun tp!494723 () Bool)

(declare-fun e!1110846 () Bool)

(declare-fun e!1110850 () Bool)

(declare-fun inv!21 (TokenValue!3479) Bool)

(assert (=> b!1735836 (= e!1110846 (and (inv!21 (value!106259 token!523)) e!1110850 tp!494723))))

(declare-fun b!1735837 () Bool)

(declare-fun e!1110849 () Bool)

(assert (=> b!1735837 (= e!1110832 e!1110849)))

(declare-fun res!780048 () Bool)

(assert (=> b!1735837 (=> res!780048 e!1110849)))

(declare-fun lt!667604 () Regex!4717)

(declare-fun lt!667610 () List!19128)

(declare-fun prefixMatch!602 (Regex!4717 List!19128) Bool)

(assert (=> b!1735837 (= res!780048 (prefixMatch!602 lt!667604 lt!667610))))

(declare-fun ++!5214 (List!19128 List!19128) List!19128)

(declare-fun head!3964 (List!19128) C!9608)

(assert (=> b!1735837 (= lt!667610 (++!5214 lt!667625 (Cons!19058 (head!3964 suffix!1421) Nil!19058)))))

(declare-fun rulesRegex!747 (LexerInterface!3018 List!19129) Regex!4717)

(assert (=> b!1735837 (= lt!667604 (rulesRegex!747 thiss!24550 rules!3447))))

(declare-fun tp!494720 () Bool)

(declare-fun e!1110841 () Bool)

(declare-fun b!1735838 () Bool)

(assert (=> b!1735838 (= e!1110835 (and tp!494720 (inv!24673 (tag!3721 (h!24460 rules!3447))) (inv!24678 (transformation!3389 (h!24460 rules!3447))) e!1110841))))

(declare-fun b!1735839 () Bool)

(assert (=> b!1735839 (= e!1110860 e!1110831)))

(declare-fun res!780049 () Bool)

(assert (=> b!1735839 (=> res!780049 e!1110831)))

(assert (=> b!1735839 (= res!780049 (= (rule!5379 (_1!10763 lt!667608)) (rule!5379 token!523)))))

(assert (=> b!1735839 (= suffix!1421 (_2!10763 lt!667608))))

(declare-fun lt!667583 () Unit!32971)

(assert (=> b!1735839 (= lt!667583 (lemmaSamePrefixThenSameSuffix!774 lt!667625 suffix!1421 lt!667625 (_2!10763 lt!667608) lt!667623))))

(assert (=> b!1735839 (= lt!667588 lt!667625)))

(declare-fun lt!667587 () Unit!32971)

(declare-fun lemmaIsPrefixSameLengthThenSameList!217 (List!19128 List!19128 List!19128) Unit!32971)

(assert (=> b!1735839 (= lt!667587 (lemmaIsPrefixSameLengthThenSameList!217 lt!667588 lt!667625 lt!667623))))

(declare-fun b!1735840 () Bool)

(declare-fun res!780046 () Bool)

(assert (=> b!1735840 (=> (not res!780046) (not e!1110847))))

(declare-fun lt!667621 () tuple2!18722)

(assert (=> b!1735840 (= res!780046 (isEmpty!11993 (_2!10763 lt!667621)))))

(declare-fun b!1735841 () Bool)

(declare-fun Unit!32975 () Unit!32971)

(assert (=> b!1735841 (= e!1110838 Unit!32975)))

(declare-fun lt!667596 () Unit!32971)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!138 (LexerInterface!3018 List!19129 List!19128 Token!6344 Rule!6578 List!19128) Unit!32971)

(assert (=> b!1735841 (= lt!667596 (lemmaMaxPrefixThenMatchesRulesRegex!138 thiss!24550 rules!3447 lt!667623 (_1!10763 lt!667608) (rule!5379 (_1!10763 lt!667608)) (_2!10763 lt!667608)))))

(assert (=> b!1735841 (matchR!2191 lt!667604 lt!667588)))

(declare-fun lt!667616 () List!19128)

(assert (=> b!1735841 (= lt!667616 (getSuffix!824 lt!667623 lt!667625))))

(declare-fun lt!667598 () Unit!32971)

(assert (=> b!1735841 (= lt!667598 (lemmaSamePrefixThenSameSuffix!774 lt!667625 suffix!1421 lt!667625 lt!667616 lt!667623))))

(assert (=> b!1735841 (= suffix!1421 lt!667616)))

(declare-fun lt!667586 () Unit!32971)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!225 (List!19128 List!19128) Unit!32971)

(assert (=> b!1735841 (= lt!667586 (lemmaAddHeadSuffixToPrefixStillPrefix!225 lt!667625 lt!667623))))

(declare-fun isPrefix!1630 (List!19128 List!19128) Bool)

(assert (=> b!1735841 (isPrefix!1630 (++!5214 lt!667625 (Cons!19058 (head!3964 lt!667616) Nil!19058)) lt!667623)))

(declare-fun lt!667613 () Unit!32971)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!105 (List!19128 List!19128 List!19128) Unit!32971)

(assert (=> b!1735841 (= lt!667613 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!105 lt!667588 lt!667610 lt!667623))))

(assert (=> b!1735841 (isPrefix!1630 lt!667610 lt!667588)))

(declare-fun lt!667593 () Unit!32971)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!98 (Regex!4717 List!19128 List!19128) Unit!32971)

(assert (=> b!1735841 (= lt!667593 (lemmaNotPrefixMatchThenCannotMatchLonger!98 lt!667604 lt!667610 lt!667588))))

(assert (=> b!1735841 false))

(declare-fun b!1735842 () Bool)

(declare-fun e!1110854 () Bool)

(assert (=> b!1735842 (= e!1110854 false)))

(declare-fun b!1735843 () Bool)

(declare-fun e!1110840 () Bool)

(assert (=> b!1735843 (= e!1110840 e!1110847)))

(declare-fun res!780051 () Bool)

(assert (=> b!1735843 (=> (not res!780051) (not e!1110847))))

(assert (=> b!1735843 (= res!780051 (= (_1!10763 lt!667621) token!523))))

(declare-fun lt!667599 () Option!3802)

(declare-fun get!5714 (Option!3802) tuple2!18722)

(assert (=> b!1735843 (= lt!667621 (get!5714 lt!667599))))

(assert (=> b!1735844 (= e!1110841 (and tp!494713 tp!494719))))

(declare-fun b!1735845 () Bool)

(assert (=> b!1735845 (= e!1110862 e!1110843)))

(declare-fun res!780032 () Bool)

(assert (=> b!1735845 (=> res!780032 e!1110843)))

(declare-fun lt!667615 () Bool)

(assert (=> b!1735845 (= res!780032 lt!667615)))

(declare-fun lt!667612 () Unit!32971)

(assert (=> b!1735845 (= lt!667612 e!1110838)))

(declare-fun c!283325 () Bool)

(assert (=> b!1735845 (= c!283325 lt!667615)))

(assert (=> b!1735845 (= lt!667615 (> lt!667603 lt!667627))))

(declare-fun lt!667592 () BalanceConc!12622)

(declare-fun size!15148 (BalanceConc!12622) Int)

(assert (=> b!1735845 (= lt!667627 (size!15148 lt!667592))))

(assert (=> b!1735845 (matchR!2191 lt!667604 lt!667625)))

(declare-fun lt!667628 () Unit!32971)

(assert (=> b!1735845 (= lt!667628 (lemmaMaxPrefixThenMatchesRulesRegex!138 thiss!24550 rules!3447 lt!667625 token!523 rule!422 Nil!19058))))

(declare-fun b!1735846 () Bool)

(declare-fun e!1110858 () Bool)

(declare-fun lt!667617 () Rule!6578)

(assert (=> b!1735846 (= e!1110858 (= (rule!5379 (_1!10763 lt!667608)) lt!667617))))

(declare-fun b!1735847 () Bool)

(declare-fun e!1110855 () Bool)

(assert (=> b!1735847 (= e!1110855 e!1110858)))

(declare-fun res!780047 () Bool)

(assert (=> b!1735847 (=> (not res!780047) (not e!1110858))))

(declare-fun charsOf!2038 (Token!6344) BalanceConc!12622)

(assert (=> b!1735847 (= res!780047 (matchR!2191 (regex!3389 lt!667617) (list!7706 (charsOf!2038 (_1!10763 lt!667608)))))))

(declare-datatypes ((Option!3803 0))(
  ( (None!3802) (Some!3802 (v!25227 Rule!6578)) )
))
(declare-fun lt!667607 () Option!3803)

(declare-fun get!5715 (Option!3803) Rule!6578)

(assert (=> b!1735847 (= lt!667617 (get!5715 lt!667607))))

(declare-fun b!1735848 () Bool)

(declare-fun res!780045 () Bool)

(assert (=> b!1735848 (=> (not res!780045) (not e!1110856))))

(assert (=> b!1735848 (= res!780045 (contains!3411 rules!3447 rule!422))))

(declare-fun res!780033 () Bool)

(assert (=> start!170726 (=> (not res!780033) (not e!1110856))))

(get-info :version)

(assert (=> start!170726 (= res!780033 ((_ is Lexer!3016) thiss!24550))))

(assert (=> start!170726 e!1110856))

(declare-fun e!1110845 () Bool)

(assert (=> start!170726 e!1110845))

(assert (=> start!170726 e!1110859))

(assert (=> start!170726 true))

(declare-fun inv!24679 (Token!6344) Bool)

(assert (=> start!170726 (and (inv!24679 token!523) e!1110846)))

(assert (=> start!170726 e!1110839))

(declare-fun b!1735849 () Bool)

(declare-fun tp_is_empty!7677 () Bool)

(declare-fun tp!494724 () Bool)

(assert (=> b!1735849 (= e!1110845 (and tp_is_empty!7677 tp!494724))))

(declare-fun b!1735850 () Bool)

(declare-fun Unit!32976 () Unit!32971)

(assert (=> b!1735850 (= e!1110853 Unit!32976)))

(declare-fun b!1735851 () Bool)

(assert (=> b!1735851 (= e!1110856 e!1110840)))

(declare-fun res!780044 () Bool)

(assert (=> b!1735851 (=> (not res!780044) (not e!1110840))))

(declare-fun isDefined!3145 (Option!3802) Bool)

(assert (=> b!1735851 (= res!780044 (isDefined!3145 lt!667599))))

(declare-fun maxPrefix!1572 (LexerInterface!3018 List!19129 List!19128) Option!3802)

(assert (=> b!1735851 (= lt!667599 (maxPrefix!1572 thiss!24550 rules!3447 lt!667625))))

(assert (=> b!1735851 (= lt!667625 (list!7706 lt!667592))))

(assert (=> b!1735851 (= lt!667592 (charsOf!2038 token!523))))

(declare-fun b!1735852 () Bool)

(declare-fun Unit!32977 () Unit!32971)

(assert (=> b!1735852 (= e!1110837 Unit!32977)))

(declare-fun b!1735853 () Bool)

(declare-fun Unit!32978 () Unit!32971)

(assert (=> b!1735853 (= e!1110853 Unit!32978)))

(declare-fun lt!667611 () Unit!32971)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!126 (LexerInterface!3018 List!19129 Rule!6578 List!19128 List!19128 Rule!6578) Unit!32971)

(assert (=> b!1735853 (= lt!667611 (lemmaMaxPrefNoSmallerRuleMatches!126 thiss!24550 rules!3447 (rule!5379 (_1!10763 lt!667608)) lt!667588 lt!667623 (rule!5379 token!523)))))

(declare-fun res!780034 () Bool)

(assert (=> b!1735853 (= res!780034 (not (matchR!2191 (regex!3389 (rule!5379 token!523)) lt!667588)))))

(assert (=> b!1735853 (=> (not res!780034) (not e!1110854))))

(assert (=> b!1735853 e!1110854))

(declare-fun b!1735854 () Bool)

(assert (=> b!1735854 (= e!1110849 e!1110836)))

(declare-fun res!780035 () Bool)

(assert (=> b!1735854 (=> res!780035 e!1110836)))

(assert (=> b!1735854 (= res!780035 (not (isPrefix!1630 lt!667588 lt!667623)))))

(assert (=> b!1735854 (isPrefix!1630 lt!667588 (++!5214 lt!667588 (_2!10763 lt!667608)))))

(declare-fun lt!667624 () Unit!32971)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1140 (List!19128 List!19128) Unit!32971)

(assert (=> b!1735854 (= lt!667624 (lemmaConcatTwoListThenFirstIsPrefix!1140 lt!667588 (_2!10763 lt!667608)))))

(assert (=> b!1735854 (= lt!667588 (list!7706 lt!667584))))

(assert (=> b!1735854 (= lt!667584 (charsOf!2038 (_1!10763 lt!667608)))))

(assert (=> b!1735854 e!1110855))

(declare-fun res!780029 () Bool)

(assert (=> b!1735854 (=> (not res!780029) (not e!1110855))))

(declare-fun isDefined!3146 (Option!3803) Bool)

(assert (=> b!1735854 (= res!780029 (isDefined!3146 lt!667607))))

(declare-fun getRuleFromTag!439 (LexerInterface!3018 List!19129 String!21727) Option!3803)

(assert (=> b!1735854 (= lt!667607 (getRuleFromTag!439 thiss!24550 rules!3447 (tag!3721 (rule!5379 (_1!10763 lt!667608)))))))

(declare-fun lt!667619 () Unit!32971)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!439 (LexerInterface!3018 List!19129 List!19128 Token!6344) Unit!32971)

(assert (=> b!1735854 (= lt!667619 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!439 thiss!24550 rules!3447 lt!667623 (_1!10763 lt!667608)))))

(declare-fun lt!667590 () Option!3802)

(assert (=> b!1735854 (= lt!667608 (get!5714 lt!667590))))

(declare-fun lt!667600 () Unit!32971)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!542 (LexerInterface!3018 List!19129 List!19128 List!19128) Unit!32971)

(assert (=> b!1735854 (= lt!667600 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!542 thiss!24550 rules!3447 lt!667625 suffix!1421))))

(assert (=> b!1735854 (= lt!667590 (maxPrefix!1572 thiss!24550 rules!3447 lt!667623))))

(assert (=> b!1735854 (isPrefix!1630 lt!667625 lt!667623)))

(declare-fun lt!667605 () Unit!32971)

(assert (=> b!1735854 (= lt!667605 (lemmaConcatTwoListThenFirstIsPrefix!1140 lt!667625 suffix!1421))))

(assert (=> b!1735854 (= lt!667623 (++!5214 lt!667625 suffix!1421))))

(declare-fun b!1735855 () Bool)

(assert (=> b!1735855 (= e!1110857 e!1110842)))

(declare-fun res!780030 () Bool)

(assert (=> b!1735855 (=> res!780030 e!1110842)))

(declare-fun lt!667626 () TokenValue!3479)

(assert (=> b!1735855 (= res!780030 (not (= lt!667590 (Some!3801 (tuple2!18723 (Token!6345 lt!667626 (rule!5379 (_1!10763 lt!667608)) lt!667603 lt!667588) (_2!10763 lt!667608))))))))

(assert (=> b!1735855 (= lt!667603 (size!15148 lt!667584))))

(assert (=> b!1735855 (= lt!667626 (apply!5194 (transformation!3389 (rule!5379 (_1!10763 lt!667608))) lt!667584))))

(declare-fun lt!667622 () Unit!32971)

(declare-fun lemmaCharactersSize!461 (Token!6344) Unit!32971)

(assert (=> b!1735855 (= lt!667622 (lemmaCharactersSize!461 (_1!10763 lt!667608)))))

(declare-fun lt!667591 () Unit!32971)

(declare-fun lemmaEqSameImage!314 (TokenValueInjection!6618 BalanceConc!12622 BalanceConc!12622) Unit!32971)

(assert (=> b!1735855 (= lt!667591 (lemmaEqSameImage!314 (transformation!3389 (rule!5379 (_1!10763 lt!667608))) lt!667584 (seqFromList!2363 (originalCharacters!4203 (_1!10763 lt!667608)))))))

(declare-fun b!1735856 () Bool)

(declare-fun res!780036 () Bool)

(assert (=> b!1735856 (=> (not res!780036) (not e!1110856))))

(declare-fun rulesInvariant!2687 (LexerInterface!3018 List!19129) Bool)

(assert (=> b!1735856 (= res!780036 (rulesInvariant!2687 thiss!24550 rules!3447))))

(declare-fun b!1735857 () Bool)

(declare-fun tp!494722 () Bool)

(assert (=> b!1735857 (= e!1110850 (and tp!494722 (inv!24673 (tag!3721 (rule!5379 token!523))) (inv!24678 (transformation!3389 (rule!5379 token!523))) e!1110834))))

(assert (= (and start!170726 res!780033) b!1735827))

(assert (= (and b!1735827 res!780042) b!1735856))

(assert (= (and b!1735856 res!780036) b!1735848))

(assert (= (and b!1735848 res!780045) b!1735851))

(assert (= (and b!1735851 res!780044) b!1735843))

(assert (= (and b!1735843 res!780051) b!1735840))

(assert (= (and b!1735840 res!780046) b!1735831))

(assert (= (and b!1735831 res!780039) b!1735820))

(assert (= (and b!1735820 (not res!780037)) b!1735824))

(assert (= (and b!1735824 (not res!780052)) b!1735837))

(assert (= (and b!1735837 (not res!780048)) b!1735854))

(assert (= (and b!1735854 res!780029) b!1735847))

(assert (= (and b!1735847 res!780047) b!1735846))

(assert (= (and b!1735854 (not res!780035)) b!1735834))

(assert (= (and b!1735834 (not res!780041)) b!1735826))

(assert (= (and b!1735826 (not res!780038)) b!1735822))

(assert (= (and b!1735822 (not res!780043)) b!1735829))

(assert (= (and b!1735829 (not res!780040)) b!1735855))

(assert (= (and b!1735855 (not res!780030)) b!1735825))

(assert (= (and b!1735825 (not res!780031)) b!1735845))

(assert (= (and b!1735845 c!283325) b!1735841))

(assert (= (and b!1735845 (not c!283325)) b!1735833))

(assert (= (and b!1735845 (not res!780032)) b!1735832))

(assert (= (and b!1735832 c!283326) b!1735819))

(assert (= (and b!1735832 (not c!283326)) b!1735852))

(assert (= (and b!1735832 (not res!780050)) b!1735839))

(assert (= (and b!1735839 (not res!780049)) b!1735823))

(assert (= (and b!1735823 c!283327) b!1735853))

(assert (= (and b!1735823 (not c!283327)) b!1735850))

(assert (= (and b!1735853 res!780034) b!1735842))

(assert (= (and start!170726 ((_ is Cons!19058) suffix!1421)) b!1735849))

(assert (= b!1735821 b!1735828))

(assert (= start!170726 b!1735821))

(assert (= b!1735857 b!1735835))

(assert (= b!1735836 b!1735857))

(assert (= start!170726 b!1735836))

(assert (= b!1735838 b!1735844))

(assert (= b!1735830 b!1735838))

(assert (= (and start!170726 ((_ is Cons!19059) rules!3447)) b!1735830))

(declare-fun b_lambda!55507 () Bool)

(assert (=> (not b_lambda!55507) (not b!1735822)))

(declare-fun t!161309 () Bool)

(declare-fun tb!103617 () Bool)

(assert (=> (and b!1735844 (= (toChars!4755 (transformation!3389 (h!24460 rules!3447))) (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) t!161309) tb!103617))

(declare-fun b!1735873 () Bool)

(declare-fun tp!494727 () Bool)

(declare-fun e!1110874 () Bool)

(declare-fun inv!24680 (Conc!6339) Bool)

(assert (=> b!1735873 (= e!1110874 (and (inv!24680 (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584)))) tp!494727))))

(declare-fun result!124604 () Bool)

(declare-fun inv!24681 (BalanceConc!12622) Bool)

(assert (=> tb!103617 (= result!124604 (and (inv!24681 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584))) e!1110874))))

(assert (= tb!103617 b!1735873))

(declare-fun m!2145537 () Bool)

(assert (=> b!1735873 m!2145537))

(declare-fun m!2145539 () Bool)

(assert (=> tb!103617 m!2145539))

(assert (=> b!1735822 t!161309))

(declare-fun b_and!128547 () Bool)

(assert (= b_and!128537 (and (=> t!161309 result!124604) b_and!128547)))

(declare-fun tb!103619 () Bool)

(declare-fun t!161311 () Bool)

(assert (=> (and b!1735835 (= (toChars!4755 (transformation!3389 (rule!5379 token!523))) (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) t!161311) tb!103619))

(declare-fun result!124608 () Bool)

(assert (= result!124608 result!124604))

(assert (=> b!1735822 t!161311))

(declare-fun b_and!128549 () Bool)

(assert (= b_and!128541 (and (=> t!161311 result!124608) b_and!128549)))

(declare-fun t!161313 () Bool)

(declare-fun tb!103621 () Bool)

(assert (=> (and b!1735828 (= (toChars!4755 (transformation!3389 rule!422)) (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) t!161313) tb!103621))

(declare-fun result!124610 () Bool)

(assert (= result!124610 result!124604))

(assert (=> b!1735822 t!161313))

(declare-fun b_and!128551 () Bool)

(assert (= b_and!128545 (and (=> t!161313 result!124610) b_and!128551)))

(declare-fun b_lambda!55509 () Bool)

(assert (=> (not b_lambda!55509) (not b!1735822)))

(declare-fun tb!103623 () Bool)

(declare-fun t!161315 () Bool)

(assert (=> (and b!1735844 (= (toValue!4896 (transformation!3389 (h!24460 rules!3447))) (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) t!161315) tb!103623))

(declare-fun result!124612 () Bool)

(assert (=> tb!103623 (= result!124612 (inv!21 (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584)))))

(declare-fun m!2145541 () Bool)

(assert (=> tb!103623 m!2145541))

(assert (=> b!1735822 t!161315))

(declare-fun b_and!128553 () Bool)

(assert (= b_and!128535 (and (=> t!161315 result!124612) b_and!128553)))

(declare-fun t!161317 () Bool)

(declare-fun tb!103625 () Bool)

(assert (=> (and b!1735835 (= (toValue!4896 (transformation!3389 (rule!5379 token!523))) (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) t!161317) tb!103625))

(declare-fun result!124616 () Bool)

(assert (= result!124616 result!124612))

(assert (=> b!1735822 t!161317))

(declare-fun b_and!128555 () Bool)

(assert (= b_and!128539 (and (=> t!161317 result!124616) b_and!128555)))

(declare-fun tb!103627 () Bool)

(declare-fun t!161319 () Bool)

(assert (=> (and b!1735828 (= (toValue!4896 (transformation!3389 rule!422)) (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) t!161319) tb!103627))

(declare-fun result!124618 () Bool)

(assert (= result!124618 result!124612))

(assert (=> b!1735822 t!161319))

(declare-fun b_and!128557 () Bool)

(assert (= b_and!128543 (and (=> t!161319 result!124618) b_and!128557)))

(declare-fun b_lambda!55511 () Bool)

(assert (=> (not b_lambda!55511) (not b!1735829)))

(declare-fun tb!103629 () Bool)

(declare-fun t!161321 () Bool)

(assert (=> (and b!1735844 (= (toChars!4755 (transformation!3389 (h!24460 rules!3447))) (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) t!161321) tb!103629))

(declare-fun b!1735876 () Bool)

(declare-fun e!1110878 () Bool)

(declare-fun tp!494728 () Bool)

(assert (=> b!1735876 (= e!1110878 (and (inv!24680 (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (value!106259 (_1!10763 lt!667608))))) tp!494728))))

(declare-fun result!124620 () Bool)

(assert (=> tb!103629 (= result!124620 (and (inv!24681 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (value!106259 (_1!10763 lt!667608)))) e!1110878))))

(assert (= tb!103629 b!1735876))

(declare-fun m!2145543 () Bool)

(assert (=> b!1735876 m!2145543))

(declare-fun m!2145545 () Bool)

(assert (=> tb!103629 m!2145545))

(assert (=> b!1735829 t!161321))

(declare-fun b_and!128559 () Bool)

(assert (= b_and!128547 (and (=> t!161321 result!124620) b_and!128559)))

(declare-fun tb!103631 () Bool)

(declare-fun t!161323 () Bool)

(assert (=> (and b!1735835 (= (toChars!4755 (transformation!3389 (rule!5379 token!523))) (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) t!161323) tb!103631))

(declare-fun result!124622 () Bool)

(assert (= result!124622 result!124620))

(assert (=> b!1735829 t!161323))

(declare-fun b_and!128561 () Bool)

(assert (= b_and!128549 (and (=> t!161323 result!124622) b_and!128561)))

(declare-fun t!161325 () Bool)

(declare-fun tb!103633 () Bool)

(assert (=> (and b!1735828 (= (toChars!4755 (transformation!3389 rule!422)) (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) t!161325) tb!103633))

(declare-fun result!124624 () Bool)

(assert (= result!124624 result!124620))

(assert (=> b!1735829 t!161325))

(declare-fun b_and!128563 () Bool)

(assert (= b_and!128551 (and (=> t!161325 result!124624) b_and!128563)))

(declare-fun m!2145547 () Bool)

(assert (=> b!1735821 m!2145547))

(declare-fun m!2145549 () Bool)

(assert (=> b!1735821 m!2145549))

(declare-fun m!2145551 () Bool)

(assert (=> b!1735829 m!2145551))

(declare-fun m!2145553 () Bool)

(assert (=> b!1735820 m!2145553))

(declare-fun m!2145555 () Bool)

(assert (=> b!1735820 m!2145555))

(declare-fun m!2145557 () Bool)

(assert (=> b!1735820 m!2145557))

(declare-fun m!2145559 () Bool)

(assert (=> b!1735819 m!2145559))

(declare-fun m!2145561 () Bool)

(assert (=> start!170726 m!2145561))

(declare-fun m!2145563 () Bool)

(assert (=> b!1735843 m!2145563))

(declare-fun m!2145565 () Bool)

(assert (=> b!1735848 m!2145565))

(declare-fun m!2145567 () Bool)

(assert (=> b!1735854 m!2145567))

(declare-fun m!2145569 () Bool)

(assert (=> b!1735854 m!2145569))

(declare-fun m!2145571 () Bool)

(assert (=> b!1735854 m!2145571))

(declare-fun m!2145573 () Bool)

(assert (=> b!1735854 m!2145573))

(declare-fun m!2145575 () Bool)

(assert (=> b!1735854 m!2145575))

(declare-fun m!2145577 () Bool)

(assert (=> b!1735854 m!2145577))

(declare-fun m!2145579 () Bool)

(assert (=> b!1735854 m!2145579))

(declare-fun m!2145581 () Bool)

(assert (=> b!1735854 m!2145581))

(declare-fun m!2145583 () Bool)

(assert (=> b!1735854 m!2145583))

(declare-fun m!2145585 () Bool)

(assert (=> b!1735854 m!2145585))

(declare-fun m!2145587 () Bool)

(assert (=> b!1735854 m!2145587))

(declare-fun m!2145589 () Bool)

(assert (=> b!1735854 m!2145589))

(assert (=> b!1735854 m!2145581))

(declare-fun m!2145591 () Bool)

(assert (=> b!1735854 m!2145591))

(declare-fun m!2145593 () Bool)

(assert (=> b!1735854 m!2145593))

(declare-fun m!2145595 () Bool)

(assert (=> b!1735854 m!2145595))

(declare-fun m!2145597 () Bool)

(assert (=> b!1735839 m!2145597))

(declare-fun m!2145599 () Bool)

(assert (=> b!1735839 m!2145599))

(declare-fun m!2145601 () Bool)

(assert (=> b!1735826 m!2145601))

(declare-fun m!2145603 () Bool)

(assert (=> b!1735826 m!2145603))

(declare-fun m!2145605 () Bool)

(assert (=> b!1735825 m!2145605))

(declare-fun m!2145607 () Bool)

(assert (=> b!1735825 m!2145607))

(declare-fun m!2145609 () Bool)

(assert (=> b!1735825 m!2145609))

(declare-fun m!2145611 () Bool)

(assert (=> b!1735825 m!2145611))

(declare-fun m!2145613 () Bool)

(assert (=> b!1735825 m!2145613))

(declare-fun m!2145615 () Bool)

(assert (=> b!1735825 m!2145615))

(assert (=> b!1735825 m!2145605))

(declare-fun m!2145617 () Bool)

(assert (=> b!1735825 m!2145617))

(declare-fun m!2145619 () Bool)

(assert (=> b!1735824 m!2145619))

(declare-fun m!2145621 () Bool)

(assert (=> b!1735836 m!2145621))

(declare-fun m!2145623 () Bool)

(assert (=> b!1735857 m!2145623))

(declare-fun m!2145625 () Bool)

(assert (=> b!1735857 m!2145625))

(declare-fun m!2145627 () Bool)

(assert (=> b!1735822 m!2145627))

(assert (=> b!1735822 m!2145627))

(declare-fun m!2145629 () Bool)

(assert (=> b!1735822 m!2145629))

(assert (=> b!1735822 m!2145629))

(declare-fun m!2145631 () Bool)

(assert (=> b!1735822 m!2145631))

(declare-fun m!2145633 () Bool)

(assert (=> b!1735822 m!2145633))

(declare-fun m!2145635 () Bool)

(assert (=> b!1735827 m!2145635))

(declare-fun m!2145637 () Bool)

(assert (=> b!1735853 m!2145637))

(declare-fun m!2145639 () Bool)

(assert (=> b!1735853 m!2145639))

(declare-fun m!2145641 () Bool)

(assert (=> b!1735838 m!2145641))

(declare-fun m!2145643 () Bool)

(assert (=> b!1735838 m!2145643))

(declare-fun m!2145645 () Bool)

(assert (=> b!1735834 m!2145645))

(declare-fun m!2145647 () Bool)

(assert (=> b!1735837 m!2145647))

(declare-fun m!2145649 () Bool)

(assert (=> b!1735837 m!2145649))

(declare-fun m!2145651 () Bool)

(assert (=> b!1735837 m!2145651))

(declare-fun m!2145653 () Bool)

(assert (=> b!1735837 m!2145653))

(declare-fun m!2145655 () Bool)

(assert (=> b!1735845 m!2145655))

(declare-fun m!2145657 () Bool)

(assert (=> b!1735845 m!2145657))

(declare-fun m!2145659 () Bool)

(assert (=> b!1735845 m!2145659))

(declare-fun m!2145661 () Bool)

(assert (=> b!1735855 m!2145661))

(declare-fun m!2145663 () Bool)

(assert (=> b!1735855 m!2145663))

(declare-fun m!2145665 () Bool)

(assert (=> b!1735855 m!2145665))

(assert (=> b!1735855 m!2145661))

(declare-fun m!2145667 () Bool)

(assert (=> b!1735855 m!2145667))

(declare-fun m!2145669 () Bool)

(assert (=> b!1735855 m!2145669))

(declare-fun m!2145671 () Bool)

(assert (=> b!1735840 m!2145671))

(declare-fun m!2145673 () Bool)

(assert (=> b!1735841 m!2145673))

(declare-fun m!2145675 () Bool)

(assert (=> b!1735841 m!2145675))

(declare-fun m!2145677 () Bool)

(assert (=> b!1735841 m!2145677))

(declare-fun m!2145679 () Bool)

(assert (=> b!1735841 m!2145679))

(declare-fun m!2145681 () Bool)

(assert (=> b!1735841 m!2145681))

(declare-fun m!2145683 () Bool)

(assert (=> b!1735841 m!2145683))

(declare-fun m!2145685 () Bool)

(assert (=> b!1735841 m!2145685))

(declare-fun m!2145687 () Bool)

(assert (=> b!1735841 m!2145687))

(assert (=> b!1735841 m!2145681))

(declare-fun m!2145689 () Bool)

(assert (=> b!1735841 m!2145689))

(declare-fun m!2145691 () Bool)

(assert (=> b!1735841 m!2145691))

(declare-fun m!2145693 () Bool)

(assert (=> b!1735841 m!2145693))

(declare-fun m!2145695 () Bool)

(assert (=> b!1735823 m!2145695))

(declare-fun m!2145697 () Bool)

(assert (=> b!1735823 m!2145697))

(declare-fun m!2145699 () Bool)

(assert (=> b!1735823 m!2145699))

(declare-fun m!2145701 () Bool)

(assert (=> b!1735851 m!2145701))

(declare-fun m!2145703 () Bool)

(assert (=> b!1735851 m!2145703))

(declare-fun m!2145705 () Bool)

(assert (=> b!1735851 m!2145705))

(declare-fun m!2145707 () Bool)

(assert (=> b!1735851 m!2145707))

(assert (=> b!1735847 m!2145595))

(assert (=> b!1735847 m!2145595))

(declare-fun m!2145709 () Bool)

(assert (=> b!1735847 m!2145709))

(assert (=> b!1735847 m!2145709))

(declare-fun m!2145711 () Bool)

(assert (=> b!1735847 m!2145711))

(declare-fun m!2145713 () Bool)

(assert (=> b!1735847 m!2145713))

(declare-fun m!2145715 () Bool)

(assert (=> b!1735856 m!2145715))

(check-sat (not b_next!48331) (not b_next!48333) (not tb!103623) (not b!1735856) (not b_next!48325) (not b_lambda!55509) (not b!1735857) (not b!1735849) (not b!1735841) (not tb!103617) (not b!1735853) (not b!1735851) (not b!1735843) b_and!128563 (not b!1735839) (not b_next!48329) (not b!1735824) b_and!128561 (not b!1735836) (not b_lambda!55511) (not tb!103629) (not b!1735854) (not b_next!48327) (not start!170726) (not b!1735837) b_and!128557 (not b!1735820) (not b_next!48323) b_and!128559 (not b!1735825) (not b!1735821) (not b!1735838) (not b!1735819) b_and!128555 (not b!1735823) (not b!1735848) (not b!1735847) (not b!1735855) (not b_lambda!55507) (not b!1735826) (not b!1735827) (not b!1735873) (not b!1735876) tp_is_empty!7677 (not b!1735830) (not b!1735845) (not b!1735822) (not b!1735834) b_and!128553 (not b!1735840))
(check-sat b_and!128563 (not b_next!48331) (not b_next!48329) b_and!128561 (not b_next!48333) (not b_next!48327) (not b_next!48325) b_and!128557 b_and!128555 b_and!128553 (not b_next!48323) b_and!128559)
(get-model)

(declare-fun d!530911 () Bool)

(assert (=> d!530911 (= (get!5714 lt!667599) (v!25226 lt!667599))))

(assert (=> b!1735843 d!530911))

(declare-fun d!530913 () Bool)

(declare-fun list!7708 (Conc!6339) List!19128)

(assert (=> d!530913 (= (list!7706 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584))) (list!7708 (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584)))))))

(declare-fun bs!402805 () Bool)

(assert (= bs!402805 d!530913))

(declare-fun m!2145765 () Bool)

(assert (=> bs!402805 m!2145765))

(assert (=> b!1735822 d!530913))

(declare-fun bs!402806 () Bool)

(declare-fun d!530915 () Bool)

(assert (= bs!402806 (and d!530915 b!1735826)))

(declare-fun lambda!69494 () Int)

(assert (=> bs!402806 (= lambda!69494 lambda!69488)))

(declare-fun b!1735936 () Bool)

(declare-fun e!1110915 () Bool)

(assert (=> b!1735936 (= e!1110915 true)))

(assert (=> d!530915 e!1110915))

(assert (= d!530915 b!1735936))

(assert (=> b!1735936 (< (dynLambda!8954 order!11831 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) (dynLambda!8955 order!11833 lambda!69494))))

(assert (=> b!1735936 (< (dynLambda!8956 order!11835 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) (dynLambda!8955 order!11833 lambda!69494))))

(assert (=> d!530915 (= (list!7706 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584))) (list!7706 lt!667584))))

(declare-fun lt!667646 () Unit!32971)

(declare-fun ForallOf!283 (Int BalanceConc!12622) Unit!32971)

(assert (=> d!530915 (= lt!667646 (ForallOf!283 lambda!69494 lt!667584))))

(assert (=> d!530915 (= (lemmaSemiInverse!535 (transformation!3389 (rule!5379 (_1!10763 lt!667608))) lt!667584) lt!667646)))

(declare-fun b_lambda!55523 () Bool)

(assert (=> (not b_lambda!55523) (not d!530915)))

(assert (=> d!530915 t!161309))

(declare-fun b_and!128595 () Bool)

(assert (= b_and!128559 (and (=> t!161309 result!124604) b_and!128595)))

(assert (=> d!530915 t!161311))

(declare-fun b_and!128597 () Bool)

(assert (= b_and!128561 (and (=> t!161311 result!124608) b_and!128597)))

(assert (=> d!530915 t!161313))

(declare-fun b_and!128599 () Bool)

(assert (= b_and!128563 (and (=> t!161313 result!124610) b_and!128599)))

(declare-fun b_lambda!55525 () Bool)

(assert (=> (not b_lambda!55525) (not d!530915)))

(assert (=> d!530915 t!161315))

(declare-fun b_and!128601 () Bool)

(assert (= b_and!128553 (and (=> t!161315 result!124612) b_and!128601)))

(assert (=> d!530915 t!161317))

(declare-fun b_and!128603 () Bool)

(assert (= b_and!128555 (and (=> t!161317 result!124616) b_and!128603)))

(assert (=> d!530915 t!161319))

(declare-fun b_and!128605 () Bool)

(assert (= b_and!128557 (and (=> t!161319 result!124618) b_and!128605)))

(assert (=> d!530915 m!2145627))

(assert (=> d!530915 m!2145629))

(assert (=> d!530915 m!2145629))

(assert (=> d!530915 m!2145631))

(declare-fun m!2145767 () Bool)

(assert (=> d!530915 m!2145767))

(assert (=> d!530915 m!2145627))

(assert (=> d!530915 m!2145593))

(assert (=> b!1735822 d!530915))

(declare-fun d!530917 () Bool)

(declare-fun lt!667649 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2730 (List!19129) (InoxSet Rule!6578))

(assert (=> d!530917 (= lt!667649 (select (content!2730 rules!3447) (rule!5379 (_1!10763 lt!667608))))))

(declare-fun e!1110921 () Bool)

(assert (=> d!530917 (= lt!667649 e!1110921)))

(declare-fun res!780090 () Bool)

(assert (=> d!530917 (=> (not res!780090) (not e!1110921))))

(assert (=> d!530917 (= res!780090 ((_ is Cons!19059) rules!3447))))

(assert (=> d!530917 (= (contains!3411 rules!3447 (rule!5379 (_1!10763 lt!667608))) lt!667649)))

(declare-fun b!1735941 () Bool)

(declare-fun e!1110920 () Bool)

(assert (=> b!1735941 (= e!1110921 e!1110920)))

(declare-fun res!780089 () Bool)

(assert (=> b!1735941 (=> res!780089 e!1110920)))

(assert (=> b!1735941 (= res!780089 (= (h!24460 rules!3447) (rule!5379 (_1!10763 lt!667608))))))

(declare-fun b!1735942 () Bool)

(assert (=> b!1735942 (= e!1110920 (contains!3411 (t!161328 rules!3447) (rule!5379 (_1!10763 lt!667608))))))

(assert (= (and d!530917 res!780090) b!1735941))

(assert (= (and b!1735941 (not res!780089)) b!1735942))

(declare-fun m!2145769 () Bool)

(assert (=> d!530917 m!2145769))

(declare-fun m!2145771 () Bool)

(assert (=> d!530917 m!2145771))

(declare-fun m!2145773 () Bool)

(assert (=> b!1735942 m!2145773))

(assert (=> b!1735823 d!530917))

(declare-fun b!1735951 () Bool)

(declare-fun e!1110928 () Int)

(assert (=> b!1735951 (= e!1110928 0)))

(declare-fun b!1735954 () Bool)

(declare-fun e!1110927 () Int)

(assert (=> b!1735954 (= e!1110927 (- 1))))

(declare-fun d!530919 () Bool)

(declare-fun lt!667652 () Int)

(assert (=> d!530919 (>= lt!667652 0)))

(assert (=> d!530919 (= lt!667652 e!1110928)))

(declare-fun c!283344 () Bool)

(assert (=> d!530919 (= c!283344 (and ((_ is Cons!19059) rules!3447) (= (h!24460 rules!3447) (rule!5379 token!523))))))

(assert (=> d!530919 (contains!3411 rules!3447 (rule!5379 token!523))))

(assert (=> d!530919 (= (getIndex!156 rules!3447 (rule!5379 token!523)) lt!667652)))

(declare-fun b!1735953 () Bool)

(assert (=> b!1735953 (= e!1110927 (+ 1 (getIndex!156 (t!161328 rules!3447) (rule!5379 token!523))))))

(declare-fun b!1735952 () Bool)

(assert (=> b!1735952 (= e!1110928 e!1110927)))

(declare-fun c!283345 () Bool)

(assert (=> b!1735952 (= c!283345 (and ((_ is Cons!19059) rules!3447) (not (= (h!24460 rules!3447) (rule!5379 token!523)))))))

(assert (= (and d!530919 c!283344) b!1735951))

(assert (= (and d!530919 (not c!283344)) b!1735952))

(assert (= (and b!1735952 c!283345) b!1735953))

(assert (= (and b!1735952 (not c!283345)) b!1735954))

(declare-fun m!2145775 () Bool)

(assert (=> d!530919 m!2145775))

(declare-fun m!2145777 () Bool)

(assert (=> b!1735953 m!2145777))

(assert (=> b!1735823 d!530919))

(declare-fun b!1735955 () Bool)

(declare-fun e!1110930 () Int)

(assert (=> b!1735955 (= e!1110930 0)))

(declare-fun b!1735958 () Bool)

(declare-fun e!1110929 () Int)

(assert (=> b!1735958 (= e!1110929 (- 1))))

(declare-fun d!530921 () Bool)

(declare-fun lt!667653 () Int)

(assert (=> d!530921 (>= lt!667653 0)))

(assert (=> d!530921 (= lt!667653 e!1110930)))

(declare-fun c!283346 () Bool)

(assert (=> d!530921 (= c!283346 (and ((_ is Cons!19059) rules!3447) (= (h!24460 rules!3447) (rule!5379 (_1!10763 lt!667608)))))))

(assert (=> d!530921 (contains!3411 rules!3447 (rule!5379 (_1!10763 lt!667608)))))

(assert (=> d!530921 (= (getIndex!156 rules!3447 (rule!5379 (_1!10763 lt!667608))) lt!667653)))

(declare-fun b!1735957 () Bool)

(assert (=> b!1735957 (= e!1110929 (+ 1 (getIndex!156 (t!161328 rules!3447) (rule!5379 (_1!10763 lt!667608)))))))

(declare-fun b!1735956 () Bool)

(assert (=> b!1735956 (= e!1110930 e!1110929)))

(declare-fun c!283347 () Bool)

(assert (=> b!1735956 (= c!283347 (and ((_ is Cons!19059) rules!3447) (not (= (h!24460 rules!3447) (rule!5379 (_1!10763 lt!667608))))))))

(assert (= (and d!530921 c!283346) b!1735955))

(assert (= (and d!530921 (not c!283346)) b!1735956))

(assert (= (and b!1735956 c!283347) b!1735957))

(assert (= (and b!1735956 (not c!283347)) b!1735958))

(assert (=> d!530921 m!2145695))

(declare-fun m!2145779 () Bool)

(assert (=> b!1735957 m!2145779))

(assert (=> b!1735823 d!530921))

(declare-fun d!530923 () Bool)

(declare-fun lt!667656 () Int)

(assert (=> d!530923 (= lt!667656 (size!15147 (list!7706 lt!667592)))))

(declare-fun size!15150 (Conc!6339) Int)

(assert (=> d!530923 (= lt!667656 (size!15150 (c!283329 lt!667592)))))

(assert (=> d!530923 (= (size!15148 lt!667592) lt!667656)))

(declare-fun bs!402807 () Bool)

(assert (= bs!402807 d!530923))

(assert (=> bs!402807 m!2145705))

(assert (=> bs!402807 m!2145705))

(declare-fun m!2145781 () Bool)

(assert (=> bs!402807 m!2145781))

(declare-fun m!2145783 () Bool)

(assert (=> bs!402807 m!2145783))

(assert (=> b!1735845 d!530923))

(declare-fun b!1736005 () Bool)

(declare-fun e!1110957 () Bool)

(declare-fun lt!667669 () Bool)

(assert (=> b!1736005 (= e!1110957 (not lt!667669))))

(declare-fun d!530925 () Bool)

(declare-fun e!1110954 () Bool)

(assert (=> d!530925 e!1110954))

(declare-fun c!283358 () Bool)

(assert (=> d!530925 (= c!283358 ((_ is EmptyExpr!4717) lt!667604))))

(declare-fun e!1110953 () Bool)

(assert (=> d!530925 (= lt!667669 e!1110953)))

(declare-fun c!283356 () Bool)

(assert (=> d!530925 (= c!283356 (isEmpty!11993 lt!667625))))

(declare-fun validRegex!1902 (Regex!4717) Bool)

(assert (=> d!530925 (validRegex!1902 lt!667604)))

(assert (=> d!530925 (= (matchR!2191 lt!667604 lt!667625) lt!667669)))

(declare-fun b!1736006 () Bool)

(declare-fun e!1110958 () Bool)

(declare-fun e!1110959 () Bool)

(assert (=> b!1736006 (= e!1110958 e!1110959)))

(declare-fun res!780127 () Bool)

(assert (=> b!1736006 (=> res!780127 e!1110959)))

(declare-fun call!109994 () Bool)

(assert (=> b!1736006 (= res!780127 call!109994)))

(declare-fun b!1736007 () Bool)

(declare-fun res!780123 () Bool)

(declare-fun e!1110956 () Bool)

(assert (=> b!1736007 (=> res!780123 e!1110956)))

(assert (=> b!1736007 (= res!780123 (not ((_ is ElementMatch!4717) lt!667604)))))

(assert (=> b!1736007 (= e!1110957 e!1110956)))

(declare-fun b!1736008 () Bool)

(assert (=> b!1736008 (= e!1110954 e!1110957)))

(declare-fun c!283357 () Bool)

(assert (=> b!1736008 (= c!283357 ((_ is EmptyLang!4717) lt!667604))))

(declare-fun bm!109989 () Bool)

(assert (=> bm!109989 (= call!109994 (isEmpty!11993 lt!667625))))

(declare-fun b!1736009 () Bool)

(assert (=> b!1736009 (= e!1110956 e!1110958)))

(declare-fun res!780122 () Bool)

(assert (=> b!1736009 (=> (not res!780122) (not e!1110958))))

(assert (=> b!1736009 (= res!780122 (not lt!667669))))

(declare-fun b!1736010 () Bool)

(declare-fun derivativeStep!1196 (Regex!4717 C!9608) Regex!4717)

(declare-fun tail!2593 (List!19128) List!19128)

(assert (=> b!1736010 (= e!1110953 (matchR!2191 (derivativeStep!1196 lt!667604 (head!3964 lt!667625)) (tail!2593 lt!667625)))))

(declare-fun b!1736011 () Bool)

(declare-fun res!780128 () Bool)

(declare-fun e!1110955 () Bool)

(assert (=> b!1736011 (=> (not res!780128) (not e!1110955))))

(assert (=> b!1736011 (= res!780128 (not call!109994))))

(declare-fun b!1736012 () Bool)

(assert (=> b!1736012 (= e!1110959 (not (= (head!3964 lt!667625) (c!283328 lt!667604))))))

(declare-fun b!1736013 () Bool)

(declare-fun nullable!1428 (Regex!4717) Bool)

(assert (=> b!1736013 (= e!1110953 (nullable!1428 lt!667604))))

(declare-fun b!1736014 () Bool)

(declare-fun res!780124 () Bool)

(assert (=> b!1736014 (=> res!780124 e!1110956)))

(assert (=> b!1736014 (= res!780124 e!1110955)))

(declare-fun res!780121 () Bool)

(assert (=> b!1736014 (=> (not res!780121) (not e!1110955))))

(assert (=> b!1736014 (= res!780121 lt!667669)))

(declare-fun b!1736015 () Bool)

(declare-fun res!780125 () Bool)

(assert (=> b!1736015 (=> (not res!780125) (not e!1110955))))

(assert (=> b!1736015 (= res!780125 (isEmpty!11993 (tail!2593 lt!667625)))))

(declare-fun b!1736016 () Bool)

(assert (=> b!1736016 (= e!1110955 (= (head!3964 lt!667625) (c!283328 lt!667604)))))

(declare-fun b!1736017 () Bool)

(assert (=> b!1736017 (= e!1110954 (= lt!667669 call!109994))))

(declare-fun b!1736018 () Bool)

(declare-fun res!780126 () Bool)

(assert (=> b!1736018 (=> res!780126 e!1110959)))

(assert (=> b!1736018 (= res!780126 (not (isEmpty!11993 (tail!2593 lt!667625))))))

(assert (= (and d!530925 c!283356) b!1736013))

(assert (= (and d!530925 (not c!283356)) b!1736010))

(assert (= (and d!530925 c!283358) b!1736017))

(assert (= (and d!530925 (not c!283358)) b!1736008))

(assert (= (and b!1736008 c!283357) b!1736005))

(assert (= (and b!1736008 (not c!283357)) b!1736007))

(assert (= (and b!1736007 (not res!780123)) b!1736014))

(assert (= (and b!1736014 res!780121) b!1736011))

(assert (= (and b!1736011 res!780128) b!1736015))

(assert (= (and b!1736015 res!780125) b!1736016))

(assert (= (and b!1736014 (not res!780124)) b!1736009))

(assert (= (and b!1736009 res!780122) b!1736006))

(assert (= (and b!1736006 (not res!780127)) b!1736018))

(assert (= (and b!1736018 (not res!780126)) b!1736012))

(assert (= (or b!1736017 b!1736006 b!1736011) bm!109989))

(declare-fun m!2145785 () Bool)

(assert (=> b!1736010 m!2145785))

(assert (=> b!1736010 m!2145785))

(declare-fun m!2145787 () Bool)

(assert (=> b!1736010 m!2145787))

(declare-fun m!2145789 () Bool)

(assert (=> b!1736010 m!2145789))

(assert (=> b!1736010 m!2145787))

(assert (=> b!1736010 m!2145789))

(declare-fun m!2145791 () Bool)

(assert (=> b!1736010 m!2145791))

(declare-fun m!2145793 () Bool)

(assert (=> b!1736013 m!2145793))

(assert (=> b!1736016 m!2145785))

(assert (=> b!1736012 m!2145785))

(declare-fun m!2145795 () Bool)

(assert (=> d!530925 m!2145795))

(declare-fun m!2145797 () Bool)

(assert (=> d!530925 m!2145797))

(assert (=> b!1736015 m!2145789))

(assert (=> b!1736015 m!2145789))

(declare-fun m!2145799 () Bool)

(assert (=> b!1736015 m!2145799))

(assert (=> b!1736018 m!2145789))

(assert (=> b!1736018 m!2145789))

(assert (=> b!1736018 m!2145799))

(assert (=> bm!109989 m!2145795))

(assert (=> b!1735845 d!530925))

(declare-fun d!530927 () Bool)

(assert (=> d!530927 (matchR!2191 (rulesRegex!747 thiss!24550 rules!3447) (list!7706 (charsOf!2038 token!523)))))

(declare-fun lt!667677 () Unit!32971)

(declare-fun choose!10640 (LexerInterface!3018 List!19129 List!19128 Token!6344 Rule!6578 List!19128) Unit!32971)

(assert (=> d!530927 (= lt!667677 (choose!10640 thiss!24550 rules!3447 lt!667625 token!523 rule!422 Nil!19058))))

(assert (=> d!530927 (not (isEmpty!11994 rules!3447))))

(assert (=> d!530927 (= (lemmaMaxPrefixThenMatchesRulesRegex!138 thiss!24550 rules!3447 lt!667625 token!523 rule!422 Nil!19058) lt!667677)))

(declare-fun bs!402808 () Bool)

(assert (= bs!402808 d!530927))

(assert (=> bs!402808 m!2145635))

(declare-fun m!2145847 () Bool)

(assert (=> bs!402808 m!2145847))

(assert (=> bs!402808 m!2145707))

(assert (=> bs!402808 m!2145653))

(declare-fun m!2145849 () Bool)

(assert (=> bs!402808 m!2145849))

(declare-fun m!2145851 () Bool)

(assert (=> bs!402808 m!2145851))

(assert (=> bs!402808 m!2145707))

(assert (=> bs!402808 m!2145849))

(assert (=> bs!402808 m!2145653))

(assert (=> b!1735845 d!530927))

(declare-fun d!530931 () Bool)

(declare-fun res!780140 () Bool)

(declare-fun e!1110968 () Bool)

(assert (=> d!530931 (=> (not res!780140) (not e!1110968))))

(assert (=> d!530931 (= res!780140 (not (isEmpty!11993 (originalCharacters!4203 token!523))))))

(assert (=> d!530931 (= (inv!24679 token!523) e!1110968)))

(declare-fun b!1736036 () Bool)

(declare-fun res!780141 () Bool)

(assert (=> b!1736036 (=> (not res!780141) (not e!1110968))))

(assert (=> b!1736036 (= res!780141 (= (originalCharacters!4203 token!523) (list!7706 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 token!523))) (value!106259 token!523)))))))

(declare-fun b!1736037 () Bool)

(assert (=> b!1736037 (= e!1110968 (= (size!15146 token!523) (size!15147 (originalCharacters!4203 token!523))))))

(assert (= (and d!530931 res!780140) b!1736036))

(assert (= (and b!1736036 res!780141) b!1736037))

(declare-fun b_lambda!55527 () Bool)

(assert (=> (not b_lambda!55527) (not b!1736036)))

(declare-fun tb!103647 () Bool)

(declare-fun t!161342 () Bool)

(assert (=> (and b!1735844 (= (toChars!4755 (transformation!3389 (h!24460 rules!3447))) (toChars!4755 (transformation!3389 (rule!5379 token!523)))) t!161342) tb!103647))

(declare-fun b!1736040 () Bool)

(declare-fun e!1110970 () Bool)

(declare-fun tp!494729 () Bool)

(assert (=> b!1736040 (= e!1110970 (and (inv!24680 (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 token!523))) (value!106259 token!523)))) tp!494729))))

(declare-fun result!124638 () Bool)

(assert (=> tb!103647 (= result!124638 (and (inv!24681 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 token!523))) (value!106259 token!523))) e!1110970))))

(assert (= tb!103647 b!1736040))

(declare-fun m!2145853 () Bool)

(assert (=> b!1736040 m!2145853))

(declare-fun m!2145857 () Bool)

(assert (=> tb!103647 m!2145857))

(assert (=> b!1736036 t!161342))

(declare-fun b_and!128607 () Bool)

(assert (= b_and!128595 (and (=> t!161342 result!124638) b_and!128607)))

(declare-fun t!161344 () Bool)

(declare-fun tb!103649 () Bool)

(assert (=> (and b!1735835 (= (toChars!4755 (transformation!3389 (rule!5379 token!523))) (toChars!4755 (transformation!3389 (rule!5379 token!523)))) t!161344) tb!103649))

(declare-fun result!124640 () Bool)

(assert (= result!124640 result!124638))

(assert (=> b!1736036 t!161344))

(declare-fun b_and!128609 () Bool)

(assert (= b_and!128597 (and (=> t!161344 result!124640) b_and!128609)))

(declare-fun tb!103651 () Bool)

(declare-fun t!161346 () Bool)

(assert (=> (and b!1735828 (= (toChars!4755 (transformation!3389 rule!422)) (toChars!4755 (transformation!3389 (rule!5379 token!523)))) t!161346) tb!103651))

(declare-fun result!124642 () Bool)

(assert (= result!124642 result!124638))

(assert (=> b!1736036 t!161346))

(declare-fun b_and!128611 () Bool)

(assert (= b_and!128599 (and (=> t!161346 result!124642) b_and!128611)))

(declare-fun m!2145863 () Bool)

(assert (=> d!530931 m!2145863))

(declare-fun m!2145865 () Bool)

(assert (=> b!1736036 m!2145865))

(assert (=> b!1736036 m!2145865))

(declare-fun m!2145867 () Bool)

(assert (=> b!1736036 m!2145867))

(declare-fun m!2145869 () Bool)

(assert (=> b!1736037 m!2145869))

(assert (=> start!170726 d!530931))

(declare-fun d!530935 () Bool)

(assert (=> d!530935 (= (isEmpty!11993 suffix!1421) ((_ is Nil!19058) suffix!1421))))

(assert (=> b!1735824 d!530935))

(declare-fun d!530937 () Bool)

(assert (=> d!530937 (not (matchR!2191 (regex!3389 rule!422) lt!667625))))

(declare-fun lt!667686 () Unit!32971)

(declare-fun choose!10642 (LexerInterface!3018 List!19129 Rule!6578 List!19128 List!19128 List!19128 Rule!6578) Unit!32971)

(assert (=> d!530937 (= lt!667686 (choose!10642 thiss!24550 rules!3447 (rule!5379 (_1!10763 lt!667608)) lt!667588 lt!667623 lt!667625 rule!422))))

(assert (=> d!530937 (isPrefix!1630 lt!667588 lt!667623)))

(assert (=> d!530937 (= (lemmaMaxPrefixOutputsMaxPrefix!186 thiss!24550 rules!3447 (rule!5379 (_1!10763 lt!667608)) lt!667588 lt!667623 lt!667625 rule!422) lt!667686)))

(declare-fun bs!402810 () Bool)

(assert (= bs!402810 d!530937))

(assert (=> bs!402810 m!2145553))

(declare-fun m!2145873 () Bool)

(assert (=> bs!402810 m!2145873))

(assert (=> bs!402810 m!2145573))

(assert (=> b!1735819 d!530937))

(declare-fun d!530941 () Bool)

(assert (=> d!530941 (= suffix!1421 lt!667616)))

(declare-fun lt!667689 () Unit!32971)

(declare-fun choose!10643 (List!19128 List!19128 List!19128 List!19128 List!19128) Unit!32971)

(assert (=> d!530941 (= lt!667689 (choose!10643 lt!667625 suffix!1421 lt!667625 lt!667616 lt!667623))))

(assert (=> d!530941 (isPrefix!1630 lt!667625 lt!667623)))

(assert (=> d!530941 (= (lemmaSamePrefixThenSameSuffix!774 lt!667625 suffix!1421 lt!667625 lt!667616 lt!667623) lt!667689)))

(declare-fun bs!402811 () Bool)

(assert (= bs!402811 d!530941))

(declare-fun m!2145875 () Bool)

(assert (=> bs!402811 m!2145875))

(assert (=> bs!402811 m!2145585))

(assert (=> b!1735841 d!530941))

(declare-fun b!1736041 () Bool)

(declare-fun e!1110975 () Bool)

(declare-fun lt!667690 () Bool)

(assert (=> b!1736041 (= e!1110975 (not lt!667690))))

(declare-fun d!530943 () Bool)

(declare-fun e!1110972 () Bool)

(assert (=> d!530943 e!1110972))

(declare-fun c!283365 () Bool)

(assert (=> d!530943 (= c!283365 ((_ is EmptyExpr!4717) lt!667604))))

(declare-fun e!1110971 () Bool)

(assert (=> d!530943 (= lt!667690 e!1110971)))

(declare-fun c!283363 () Bool)

(assert (=> d!530943 (= c!283363 (isEmpty!11993 lt!667588))))

(assert (=> d!530943 (validRegex!1902 lt!667604)))

(assert (=> d!530943 (= (matchR!2191 lt!667604 lt!667588) lt!667690)))

(declare-fun b!1736042 () Bool)

(declare-fun e!1110976 () Bool)

(declare-fun e!1110977 () Bool)

(assert (=> b!1736042 (= e!1110976 e!1110977)))

(declare-fun res!780148 () Bool)

(assert (=> b!1736042 (=> res!780148 e!1110977)))

(declare-fun call!109995 () Bool)

(assert (=> b!1736042 (= res!780148 call!109995)))

(declare-fun b!1736043 () Bool)

(declare-fun res!780144 () Bool)

(declare-fun e!1110974 () Bool)

(assert (=> b!1736043 (=> res!780144 e!1110974)))

(assert (=> b!1736043 (= res!780144 (not ((_ is ElementMatch!4717) lt!667604)))))

(assert (=> b!1736043 (= e!1110975 e!1110974)))

(declare-fun b!1736044 () Bool)

(assert (=> b!1736044 (= e!1110972 e!1110975)))

(declare-fun c!283364 () Bool)

(assert (=> b!1736044 (= c!283364 ((_ is EmptyLang!4717) lt!667604))))

(declare-fun bm!109990 () Bool)

(assert (=> bm!109990 (= call!109995 (isEmpty!11993 lt!667588))))

(declare-fun b!1736045 () Bool)

(assert (=> b!1736045 (= e!1110974 e!1110976)))

(declare-fun res!780143 () Bool)

(assert (=> b!1736045 (=> (not res!780143) (not e!1110976))))

(assert (=> b!1736045 (= res!780143 (not lt!667690))))

(declare-fun b!1736046 () Bool)

(assert (=> b!1736046 (= e!1110971 (matchR!2191 (derivativeStep!1196 lt!667604 (head!3964 lt!667588)) (tail!2593 lt!667588)))))

(declare-fun b!1736047 () Bool)

(declare-fun res!780149 () Bool)

(declare-fun e!1110973 () Bool)

(assert (=> b!1736047 (=> (not res!780149) (not e!1110973))))

(assert (=> b!1736047 (= res!780149 (not call!109995))))

(declare-fun b!1736048 () Bool)

(assert (=> b!1736048 (= e!1110977 (not (= (head!3964 lt!667588) (c!283328 lt!667604))))))

(declare-fun b!1736049 () Bool)

(assert (=> b!1736049 (= e!1110971 (nullable!1428 lt!667604))))

(declare-fun b!1736050 () Bool)

(declare-fun res!780145 () Bool)

(assert (=> b!1736050 (=> res!780145 e!1110974)))

(assert (=> b!1736050 (= res!780145 e!1110973)))

(declare-fun res!780142 () Bool)

(assert (=> b!1736050 (=> (not res!780142) (not e!1110973))))

(assert (=> b!1736050 (= res!780142 lt!667690)))

(declare-fun b!1736051 () Bool)

(declare-fun res!780146 () Bool)

(assert (=> b!1736051 (=> (not res!780146) (not e!1110973))))

(assert (=> b!1736051 (= res!780146 (isEmpty!11993 (tail!2593 lt!667588)))))

(declare-fun b!1736052 () Bool)

(assert (=> b!1736052 (= e!1110973 (= (head!3964 lt!667588) (c!283328 lt!667604)))))

(declare-fun b!1736053 () Bool)

(assert (=> b!1736053 (= e!1110972 (= lt!667690 call!109995))))

(declare-fun b!1736054 () Bool)

(declare-fun res!780147 () Bool)

(assert (=> b!1736054 (=> res!780147 e!1110977)))

(assert (=> b!1736054 (= res!780147 (not (isEmpty!11993 (tail!2593 lt!667588))))))

(assert (= (and d!530943 c!283363) b!1736049))

(assert (= (and d!530943 (not c!283363)) b!1736046))

(assert (= (and d!530943 c!283365) b!1736053))

(assert (= (and d!530943 (not c!283365)) b!1736044))

(assert (= (and b!1736044 c!283364) b!1736041))

(assert (= (and b!1736044 (not c!283364)) b!1736043))

(assert (= (and b!1736043 (not res!780144)) b!1736050))

(assert (= (and b!1736050 res!780142) b!1736047))

(assert (= (and b!1736047 res!780149) b!1736051))

(assert (= (and b!1736051 res!780146) b!1736052))

(assert (= (and b!1736050 (not res!780145)) b!1736045))

(assert (= (and b!1736045 res!780143) b!1736042))

(assert (= (and b!1736042 (not res!780148)) b!1736054))

(assert (= (and b!1736054 (not res!780147)) b!1736048))

(assert (= (or b!1736053 b!1736042 b!1736047) bm!109990))

(declare-fun m!2145877 () Bool)

(assert (=> b!1736046 m!2145877))

(assert (=> b!1736046 m!2145877))

(declare-fun m!2145879 () Bool)

(assert (=> b!1736046 m!2145879))

(declare-fun m!2145881 () Bool)

(assert (=> b!1736046 m!2145881))

(assert (=> b!1736046 m!2145879))

(assert (=> b!1736046 m!2145881))

(declare-fun m!2145883 () Bool)

(assert (=> b!1736046 m!2145883))

(assert (=> b!1736049 m!2145793))

(assert (=> b!1736052 m!2145877))

(assert (=> b!1736048 m!2145877))

(declare-fun m!2145885 () Bool)

(assert (=> d!530943 m!2145885))

(assert (=> d!530943 m!2145797))

(assert (=> b!1736051 m!2145881))

(assert (=> b!1736051 m!2145881))

(declare-fun m!2145887 () Bool)

(assert (=> b!1736051 m!2145887))

(assert (=> b!1736054 m!2145881))

(assert (=> b!1736054 m!2145881))

(assert (=> b!1736054 m!2145887))

(assert (=> bm!109990 m!2145885))

(assert (=> b!1735841 d!530943))

(declare-fun d!530945 () Bool)

(declare-fun e!1110982 () Bool)

(assert (=> d!530945 e!1110982))

(declare-fun res!780155 () Bool)

(assert (=> d!530945 (=> (not res!780155) (not e!1110982))))

(declare-fun lt!667693 () List!19128)

(declare-fun content!2731 (List!19128) (InoxSet C!9608))

(assert (=> d!530945 (= res!780155 (= (content!2731 lt!667693) ((_ map or) (content!2731 lt!667625) (content!2731 (Cons!19058 (head!3964 lt!667616) Nil!19058)))))))

(declare-fun e!1110983 () List!19128)

(assert (=> d!530945 (= lt!667693 e!1110983)))

(declare-fun c!283368 () Bool)

(assert (=> d!530945 (= c!283368 ((_ is Nil!19058) lt!667625))))

(assert (=> d!530945 (= (++!5214 lt!667625 (Cons!19058 (head!3964 lt!667616) Nil!19058)) lt!667693)))

(declare-fun b!1736066 () Bool)

(assert (=> b!1736066 (= e!1110982 (or (not (= (Cons!19058 (head!3964 lt!667616) Nil!19058) Nil!19058)) (= lt!667693 lt!667625)))))

(declare-fun b!1736063 () Bool)

(assert (=> b!1736063 (= e!1110983 (Cons!19058 (head!3964 lt!667616) Nil!19058))))

(declare-fun b!1736064 () Bool)

(assert (=> b!1736064 (= e!1110983 (Cons!19058 (h!24459 lt!667625) (++!5214 (t!161327 lt!667625) (Cons!19058 (head!3964 lt!667616) Nil!19058))))))

(declare-fun b!1736065 () Bool)

(declare-fun res!780154 () Bool)

(assert (=> b!1736065 (=> (not res!780154) (not e!1110982))))

(assert (=> b!1736065 (= res!780154 (= (size!15147 lt!667693) (+ (size!15147 lt!667625) (size!15147 (Cons!19058 (head!3964 lt!667616) Nil!19058)))))))

(assert (= (and d!530945 c!283368) b!1736063))

(assert (= (and d!530945 (not c!283368)) b!1736064))

(assert (= (and d!530945 res!780155) b!1736065))

(assert (= (and b!1736065 res!780154) b!1736066))

(declare-fun m!2145889 () Bool)

(assert (=> d!530945 m!2145889))

(declare-fun m!2145891 () Bool)

(assert (=> d!530945 m!2145891))

(declare-fun m!2145893 () Bool)

(assert (=> d!530945 m!2145893))

(declare-fun m!2145895 () Bool)

(assert (=> b!1736064 m!2145895))

(declare-fun m!2145897 () Bool)

(assert (=> b!1736065 m!2145897))

(declare-fun m!2145899 () Bool)

(assert (=> b!1736065 m!2145899))

(declare-fun m!2145901 () Bool)

(assert (=> b!1736065 m!2145901))

(assert (=> b!1735841 d!530945))

(declare-fun d!530947 () Bool)

(assert (=> d!530947 (not (matchR!2191 lt!667604 lt!667588))))

(declare-fun lt!667699 () Unit!32971)

(declare-fun choose!10644 (Regex!4717 List!19128 List!19128) Unit!32971)

(assert (=> d!530947 (= lt!667699 (choose!10644 lt!667604 lt!667610 lt!667588))))

(assert (=> d!530947 (validRegex!1902 lt!667604)))

(assert (=> d!530947 (= (lemmaNotPrefixMatchThenCannotMatchLonger!98 lt!667604 lt!667610 lt!667588) lt!667699)))

(declare-fun bs!402813 () Bool)

(assert (= bs!402813 d!530947))

(assert (=> bs!402813 m!2145677))

(declare-fun m!2145905 () Bool)

(assert (=> bs!402813 m!2145905))

(assert (=> bs!402813 m!2145797))

(assert (=> b!1735841 d!530947))

(declare-fun d!530951 () Bool)

(assert (=> d!530951 (isPrefix!1630 (++!5214 lt!667625 (Cons!19058 (head!3964 (getSuffix!824 lt!667623 lt!667625)) Nil!19058)) lt!667623)))

(declare-fun lt!667705 () Unit!32971)

(declare-fun choose!10645 (List!19128 List!19128) Unit!32971)

(assert (=> d!530951 (= lt!667705 (choose!10645 lt!667625 lt!667623))))

(assert (=> d!530951 (isPrefix!1630 lt!667625 lt!667623)))

(assert (=> d!530951 (= (lemmaAddHeadSuffixToPrefixStillPrefix!225 lt!667625 lt!667623) lt!667705)))

(declare-fun bs!402815 () Bool)

(assert (= bs!402815 d!530951))

(assert (=> bs!402815 m!2145687))

(declare-fun m!2145911 () Bool)

(assert (=> bs!402815 m!2145911))

(declare-fun m!2145913 () Bool)

(assert (=> bs!402815 m!2145913))

(assert (=> bs!402815 m!2145585))

(declare-fun m!2145915 () Bool)

(assert (=> bs!402815 m!2145915))

(assert (=> bs!402815 m!2145913))

(declare-fun m!2145917 () Bool)

(assert (=> bs!402815 m!2145917))

(assert (=> bs!402815 m!2145687))

(assert (=> b!1735841 d!530951))

(declare-fun d!530957 () Bool)

(assert (=> d!530957 (= (head!3964 lt!667616) (h!24459 lt!667616))))

(assert (=> b!1735841 d!530957))

(declare-fun d!530959 () Bool)

(declare-fun lt!667711 () List!19128)

(assert (=> d!530959 (= (++!5214 lt!667625 lt!667711) lt!667623)))

(declare-fun e!1110989 () List!19128)

(assert (=> d!530959 (= lt!667711 e!1110989)))

(declare-fun c!283375 () Bool)

(assert (=> d!530959 (= c!283375 ((_ is Cons!19058) lt!667625))))

(assert (=> d!530959 (>= (size!15147 lt!667623) (size!15147 lt!667625))))

(assert (=> d!530959 (= (getSuffix!824 lt!667623 lt!667625) lt!667711)))

(declare-fun b!1736079 () Bool)

(assert (=> b!1736079 (= e!1110989 (getSuffix!824 (tail!2593 lt!667623) (t!161327 lt!667625)))))

(declare-fun b!1736080 () Bool)

(assert (=> b!1736080 (= e!1110989 lt!667623)))

(assert (= (and d!530959 c!283375) b!1736079))

(assert (= (and d!530959 (not c!283375)) b!1736080))

(declare-fun m!2145919 () Bool)

(assert (=> d!530959 m!2145919))

(declare-fun m!2145921 () Bool)

(assert (=> d!530959 m!2145921))

(assert (=> d!530959 m!2145899))

(declare-fun m!2145923 () Bool)

(assert (=> b!1736079 m!2145923))

(assert (=> b!1736079 m!2145923))

(declare-fun m!2145925 () Bool)

(assert (=> b!1736079 m!2145925))

(assert (=> b!1735841 d!530959))

(declare-fun b!1736099 () Bool)

(declare-fun res!780168 () Bool)

(declare-fun e!1111003 () Bool)

(assert (=> b!1736099 (=> (not res!780168) (not e!1111003))))

(assert (=> b!1736099 (= res!780168 (= (head!3964 (++!5214 lt!667625 (Cons!19058 (head!3964 lt!667616) Nil!19058))) (head!3964 lt!667623)))))

(declare-fun b!1736098 () Bool)

(declare-fun e!1111004 () Bool)

(assert (=> b!1736098 (= e!1111004 e!1111003)))

(declare-fun res!780169 () Bool)

(assert (=> b!1736098 (=> (not res!780169) (not e!1111003))))

(assert (=> b!1736098 (= res!780169 (not ((_ is Nil!19058) lt!667623)))))

(declare-fun d!530961 () Bool)

(declare-fun e!1111005 () Bool)

(assert (=> d!530961 e!1111005))

(declare-fun res!780167 () Bool)

(assert (=> d!530961 (=> res!780167 e!1111005)))

(declare-fun lt!667714 () Bool)

(assert (=> d!530961 (= res!780167 (not lt!667714))))

(assert (=> d!530961 (= lt!667714 e!1111004)))

(declare-fun res!780166 () Bool)

(assert (=> d!530961 (=> res!780166 e!1111004)))

(assert (=> d!530961 (= res!780166 ((_ is Nil!19058) (++!5214 lt!667625 (Cons!19058 (head!3964 lt!667616) Nil!19058))))))

(assert (=> d!530961 (= (isPrefix!1630 (++!5214 lt!667625 (Cons!19058 (head!3964 lt!667616) Nil!19058)) lt!667623) lt!667714)))

(declare-fun b!1736100 () Bool)

(assert (=> b!1736100 (= e!1111003 (isPrefix!1630 (tail!2593 (++!5214 lt!667625 (Cons!19058 (head!3964 lt!667616) Nil!19058))) (tail!2593 lt!667623)))))

(declare-fun b!1736101 () Bool)

(assert (=> b!1736101 (= e!1111005 (>= (size!15147 lt!667623) (size!15147 (++!5214 lt!667625 (Cons!19058 (head!3964 lt!667616) Nil!19058)))))))

(assert (= (and d!530961 (not res!780166)) b!1736098))

(assert (= (and b!1736098 res!780169) b!1736099))

(assert (= (and b!1736099 res!780168) b!1736100))

(assert (= (and d!530961 (not res!780167)) b!1736101))

(assert (=> b!1736099 m!2145681))

(declare-fun m!2145929 () Bool)

(assert (=> b!1736099 m!2145929))

(declare-fun m!2145931 () Bool)

(assert (=> b!1736099 m!2145931))

(assert (=> b!1736100 m!2145681))

(declare-fun m!2145933 () Bool)

(assert (=> b!1736100 m!2145933))

(assert (=> b!1736100 m!2145923))

(assert (=> b!1736100 m!2145933))

(assert (=> b!1736100 m!2145923))

(declare-fun m!2145935 () Bool)

(assert (=> b!1736100 m!2145935))

(assert (=> b!1736101 m!2145921))

(assert (=> b!1736101 m!2145681))

(declare-fun m!2145937 () Bool)

(assert (=> b!1736101 m!2145937))

(assert (=> b!1735841 d!530961))

(declare-fun b!1736103 () Bool)

(declare-fun res!780172 () Bool)

(declare-fun e!1111006 () Bool)

(assert (=> b!1736103 (=> (not res!780172) (not e!1111006))))

(assert (=> b!1736103 (= res!780172 (= (head!3964 lt!667610) (head!3964 lt!667588)))))

(declare-fun b!1736102 () Bool)

(declare-fun e!1111007 () Bool)

(assert (=> b!1736102 (= e!1111007 e!1111006)))

(declare-fun res!780173 () Bool)

(assert (=> b!1736102 (=> (not res!780173) (not e!1111006))))

(assert (=> b!1736102 (= res!780173 (not ((_ is Nil!19058) lt!667588)))))

(declare-fun d!530965 () Bool)

(declare-fun e!1111008 () Bool)

(assert (=> d!530965 e!1111008))

(declare-fun res!780171 () Bool)

(assert (=> d!530965 (=> res!780171 e!1111008)))

(declare-fun lt!667715 () Bool)

(assert (=> d!530965 (= res!780171 (not lt!667715))))

(assert (=> d!530965 (= lt!667715 e!1111007)))

(declare-fun res!780170 () Bool)

(assert (=> d!530965 (=> res!780170 e!1111007)))

(assert (=> d!530965 (= res!780170 ((_ is Nil!19058) lt!667610))))

(assert (=> d!530965 (= (isPrefix!1630 lt!667610 lt!667588) lt!667715)))

(declare-fun b!1736104 () Bool)

(assert (=> b!1736104 (= e!1111006 (isPrefix!1630 (tail!2593 lt!667610) (tail!2593 lt!667588)))))

(declare-fun b!1736105 () Bool)

(assert (=> b!1736105 (= e!1111008 (>= (size!15147 lt!667588) (size!15147 lt!667610)))))

(assert (= (and d!530965 (not res!780170)) b!1736102))

(assert (= (and b!1736102 res!780173) b!1736103))

(assert (= (and b!1736103 res!780172) b!1736104))

(assert (= (and d!530965 (not res!780171)) b!1736105))

(declare-fun m!2145939 () Bool)

(assert (=> b!1736103 m!2145939))

(assert (=> b!1736103 m!2145877))

(declare-fun m!2145941 () Bool)

(assert (=> b!1736104 m!2145941))

(assert (=> b!1736104 m!2145881))

(assert (=> b!1736104 m!2145941))

(assert (=> b!1736104 m!2145881))

(declare-fun m!2145943 () Bool)

(assert (=> b!1736104 m!2145943))

(assert (=> b!1736105 m!2145615))

(declare-fun m!2145945 () Bool)

(assert (=> b!1736105 m!2145945))

(assert (=> b!1735841 d!530965))

(declare-fun d!530967 () Bool)

(assert (=> d!530967 (isPrefix!1630 lt!667610 lt!667588)))

(declare-fun lt!667719 () Unit!32971)

(declare-fun choose!10646 (List!19128 List!19128 List!19128) Unit!32971)

(assert (=> d!530967 (= lt!667719 (choose!10646 lt!667588 lt!667610 lt!667623))))

(assert (=> d!530967 (isPrefix!1630 lt!667588 lt!667623)))

(assert (=> d!530967 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!105 lt!667588 lt!667610 lt!667623) lt!667719)))

(declare-fun bs!402817 () Bool)

(assert (= bs!402817 d!530967))

(assert (=> bs!402817 m!2145679))

(declare-fun m!2145955 () Bool)

(assert (=> bs!402817 m!2145955))

(assert (=> bs!402817 m!2145573))

(assert (=> b!1735841 d!530967))

(declare-fun d!530973 () Bool)

(assert (=> d!530973 (matchR!2191 (rulesRegex!747 thiss!24550 rules!3447) (list!7706 (charsOf!2038 (_1!10763 lt!667608))))))

(declare-fun lt!667720 () Unit!32971)

(assert (=> d!530973 (= lt!667720 (choose!10640 thiss!24550 rules!3447 lt!667623 (_1!10763 lt!667608) (rule!5379 (_1!10763 lt!667608)) (_2!10763 lt!667608)))))

(assert (=> d!530973 (not (isEmpty!11994 rules!3447))))

(assert (=> d!530973 (= (lemmaMaxPrefixThenMatchesRulesRegex!138 thiss!24550 rules!3447 lt!667623 (_1!10763 lt!667608) (rule!5379 (_1!10763 lt!667608)) (_2!10763 lt!667608)) lt!667720)))

(declare-fun bs!402818 () Bool)

(assert (= bs!402818 d!530973))

(assert (=> bs!402818 m!2145635))

(declare-fun m!2145957 () Bool)

(assert (=> bs!402818 m!2145957))

(assert (=> bs!402818 m!2145595))

(assert (=> bs!402818 m!2145653))

(assert (=> bs!402818 m!2145709))

(declare-fun m!2145959 () Bool)

(assert (=> bs!402818 m!2145959))

(assert (=> bs!402818 m!2145595))

(assert (=> bs!402818 m!2145709))

(assert (=> bs!402818 m!2145653))

(assert (=> b!1735841 d!530973))

(declare-fun b!1736115 () Bool)

(declare-fun e!1111018 () Bool)

(declare-fun lt!667723 () Bool)

(assert (=> b!1736115 (= e!1111018 (not lt!667723))))

(declare-fun d!530975 () Bool)

(declare-fun e!1111015 () Bool)

(assert (=> d!530975 e!1111015))

(declare-fun c!283382 () Bool)

(assert (=> d!530975 (= c!283382 ((_ is EmptyExpr!4717) (regex!3389 rule!422)))))

(declare-fun e!1111014 () Bool)

(assert (=> d!530975 (= lt!667723 e!1111014)))

(declare-fun c!283379 () Bool)

(assert (=> d!530975 (= c!283379 (isEmpty!11993 lt!667625))))

(assert (=> d!530975 (validRegex!1902 (regex!3389 rule!422))))

(assert (=> d!530975 (= (matchR!2191 (regex!3389 rule!422) lt!667625) lt!667723)))

(declare-fun b!1736116 () Bool)

(declare-fun e!1111019 () Bool)

(declare-fun e!1111021 () Bool)

(assert (=> b!1736116 (= e!1111019 e!1111021)))

(declare-fun res!780183 () Bool)

(assert (=> b!1736116 (=> res!780183 e!1111021)))

(declare-fun call!109996 () Bool)

(assert (=> b!1736116 (= res!780183 call!109996)))

(declare-fun b!1736117 () Bool)

(declare-fun res!780179 () Bool)

(declare-fun e!1111017 () Bool)

(assert (=> b!1736117 (=> res!780179 e!1111017)))

(assert (=> b!1736117 (= res!780179 (not ((_ is ElementMatch!4717) (regex!3389 rule!422))))))

(assert (=> b!1736117 (= e!1111018 e!1111017)))

(declare-fun b!1736118 () Bool)

(assert (=> b!1736118 (= e!1111015 e!1111018)))

(declare-fun c!283380 () Bool)

(assert (=> b!1736118 (= c!283380 ((_ is EmptyLang!4717) (regex!3389 rule!422)))))

(declare-fun bm!109991 () Bool)

(assert (=> bm!109991 (= call!109996 (isEmpty!11993 lt!667625))))

(declare-fun b!1736119 () Bool)

(assert (=> b!1736119 (= e!1111017 e!1111019)))

(declare-fun res!780178 () Bool)

(assert (=> b!1736119 (=> (not res!780178) (not e!1111019))))

(assert (=> b!1736119 (= res!780178 (not lt!667723))))

(declare-fun b!1736120 () Bool)

(assert (=> b!1736120 (= e!1111014 (matchR!2191 (derivativeStep!1196 (regex!3389 rule!422) (head!3964 lt!667625)) (tail!2593 lt!667625)))))

(declare-fun b!1736121 () Bool)

(declare-fun res!780184 () Bool)

(declare-fun e!1111016 () Bool)

(assert (=> b!1736121 (=> (not res!780184) (not e!1111016))))

(assert (=> b!1736121 (= res!780184 (not call!109996))))

(declare-fun b!1736122 () Bool)

(assert (=> b!1736122 (= e!1111021 (not (= (head!3964 lt!667625) (c!283328 (regex!3389 rule!422)))))))

(declare-fun b!1736123 () Bool)

(assert (=> b!1736123 (= e!1111014 (nullable!1428 (regex!3389 rule!422)))))

(declare-fun b!1736124 () Bool)

(declare-fun res!780180 () Bool)

(assert (=> b!1736124 (=> res!780180 e!1111017)))

(assert (=> b!1736124 (= res!780180 e!1111016)))

(declare-fun res!780177 () Bool)

(assert (=> b!1736124 (=> (not res!780177) (not e!1111016))))

(assert (=> b!1736124 (= res!780177 lt!667723)))

(declare-fun b!1736125 () Bool)

(declare-fun res!780181 () Bool)

(assert (=> b!1736125 (=> (not res!780181) (not e!1111016))))

(assert (=> b!1736125 (= res!780181 (isEmpty!11993 (tail!2593 lt!667625)))))

(declare-fun b!1736126 () Bool)

(assert (=> b!1736126 (= e!1111016 (= (head!3964 lt!667625) (c!283328 (regex!3389 rule!422))))))

(declare-fun b!1736127 () Bool)

(assert (=> b!1736127 (= e!1111015 (= lt!667723 call!109996))))

(declare-fun b!1736128 () Bool)

(declare-fun res!780182 () Bool)

(assert (=> b!1736128 (=> res!780182 e!1111021)))

(assert (=> b!1736128 (= res!780182 (not (isEmpty!11993 (tail!2593 lt!667625))))))

(assert (= (and d!530975 c!283379) b!1736123))

(assert (= (and d!530975 (not c!283379)) b!1736120))

(assert (= (and d!530975 c!283382) b!1736127))

(assert (= (and d!530975 (not c!283382)) b!1736118))

(assert (= (and b!1736118 c!283380) b!1736115))

(assert (= (and b!1736118 (not c!283380)) b!1736117))

(assert (= (and b!1736117 (not res!780179)) b!1736124))

(assert (= (and b!1736124 res!780177) b!1736121))

(assert (= (and b!1736121 res!780184) b!1736125))

(assert (= (and b!1736125 res!780181) b!1736126))

(assert (= (and b!1736124 (not res!780180)) b!1736119))

(assert (= (and b!1736119 res!780178) b!1736116))

(assert (= (and b!1736116 (not res!780183)) b!1736128))

(assert (= (and b!1736128 (not res!780182)) b!1736122))

(assert (= (or b!1736127 b!1736116 b!1736121) bm!109991))

(assert (=> b!1736120 m!2145785))

(assert (=> b!1736120 m!2145785))

(declare-fun m!2145961 () Bool)

(assert (=> b!1736120 m!2145961))

(assert (=> b!1736120 m!2145789))

(assert (=> b!1736120 m!2145961))

(assert (=> b!1736120 m!2145789))

(declare-fun m!2145963 () Bool)

(assert (=> b!1736120 m!2145963))

(declare-fun m!2145965 () Bool)

(assert (=> b!1736123 m!2145965))

(assert (=> b!1736126 m!2145785))

(assert (=> b!1736122 m!2145785))

(assert (=> d!530975 m!2145795))

(declare-fun m!2145967 () Bool)

(assert (=> d!530975 m!2145967))

(assert (=> b!1736125 m!2145789))

(assert (=> b!1736125 m!2145789))

(assert (=> b!1736125 m!2145799))

(assert (=> b!1736128 m!2145789))

(assert (=> b!1736128 m!2145789))

(assert (=> b!1736128 m!2145799))

(assert (=> bm!109991 m!2145795))

(assert (=> b!1735820 d!530975))

(declare-fun d!530977 () Bool)

(declare-fun res!780189 () Bool)

(declare-fun e!1111031 () Bool)

(assert (=> d!530977 (=> (not res!780189) (not e!1111031))))

(assert (=> d!530977 (= res!780189 (validRegex!1902 (regex!3389 rule!422)))))

(assert (=> d!530977 (= (ruleValid!888 thiss!24550 rule!422) e!1111031)))

(declare-fun b!1736145 () Bool)

(declare-fun res!780190 () Bool)

(assert (=> b!1736145 (=> (not res!780190) (not e!1111031))))

(assert (=> b!1736145 (= res!780190 (not (nullable!1428 (regex!3389 rule!422))))))

(declare-fun b!1736146 () Bool)

(assert (=> b!1736146 (= e!1111031 (not (= (tag!3721 rule!422) (String!21728 ""))))))

(assert (= (and d!530977 res!780189) b!1736145))

(assert (= (and b!1736145 res!780190) b!1736146))

(assert (=> d!530977 m!2145967))

(assert (=> b!1736145 m!2145965))

(assert (=> b!1735820 d!530977))

(declare-fun d!530985 () Bool)

(assert (=> d!530985 (ruleValid!888 thiss!24550 rule!422)))

(declare-fun lt!667728 () Unit!32971)

(declare-fun choose!10647 (LexerInterface!3018 Rule!6578 List!19129) Unit!32971)

(assert (=> d!530985 (= lt!667728 (choose!10647 thiss!24550 rule!422 rules!3447))))

(assert (=> d!530985 (contains!3411 rules!3447 rule!422)))

(assert (=> d!530985 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!412 thiss!24550 rule!422 rules!3447) lt!667728)))

(declare-fun bs!402819 () Bool)

(assert (= bs!402819 d!530985))

(assert (=> bs!402819 m!2145555))

(declare-fun m!2145975 () Bool)

(assert (=> bs!402819 m!2145975))

(assert (=> bs!402819 m!2145565))

(assert (=> b!1735820 d!530985))

(declare-fun d!530989 () Bool)

(assert (=> d!530989 (= (inv!24673 (tag!3721 rule!422)) (= (mod (str.len (value!106258 (tag!3721 rule!422))) 2) 0))))

(assert (=> b!1735821 d!530989))

(declare-fun d!530991 () Bool)

(declare-fun res!780201 () Bool)

(declare-fun e!1111041 () Bool)

(assert (=> d!530991 (=> (not res!780201) (not e!1111041))))

(declare-fun semiInverseModEq!1340 (Int Int) Bool)

(assert (=> d!530991 (= res!780201 (semiInverseModEq!1340 (toChars!4755 (transformation!3389 rule!422)) (toValue!4896 (transformation!3389 rule!422))))))

(assert (=> d!530991 (= (inv!24678 (transformation!3389 rule!422)) e!1111041)))

(declare-fun b!1736163 () Bool)

(declare-fun equivClasses!1281 (Int Int) Bool)

(assert (=> b!1736163 (= e!1111041 (equivClasses!1281 (toChars!4755 (transformation!3389 rule!422)) (toValue!4896 (transformation!3389 rule!422))))))

(assert (= (and d!530991 res!780201) b!1736163))

(declare-fun m!2145995 () Bool)

(assert (=> d!530991 m!2145995))

(declare-fun m!2145997 () Bool)

(assert (=> b!1736163 m!2145997))

(assert (=> b!1735821 d!530991))

(declare-fun d!530997 () Bool)

(assert (=> d!530997 (= (inv!24673 (tag!3721 (h!24460 rules!3447))) (= (mod (str.len (value!106258 (tag!3721 (h!24460 rules!3447)))) 2) 0))))

(assert (=> b!1735838 d!530997))

(declare-fun d!530999 () Bool)

(declare-fun res!780202 () Bool)

(declare-fun e!1111042 () Bool)

(assert (=> d!530999 (=> (not res!780202) (not e!1111042))))

(assert (=> d!530999 (= res!780202 (semiInverseModEq!1340 (toChars!4755 (transformation!3389 (h!24460 rules!3447))) (toValue!4896 (transformation!3389 (h!24460 rules!3447)))))))

(assert (=> d!530999 (= (inv!24678 (transformation!3389 (h!24460 rules!3447))) e!1111042)))

(declare-fun b!1736164 () Bool)

(assert (=> b!1736164 (= e!1111042 (equivClasses!1281 (toChars!4755 (transformation!3389 (h!24460 rules!3447))) (toValue!4896 (transformation!3389 (h!24460 rules!3447)))))))

(assert (= (and d!530999 res!780202) b!1736164))

(declare-fun m!2145999 () Bool)

(assert (=> d!530999 m!2145999))

(declare-fun m!2146001 () Bool)

(assert (=> b!1736164 m!2146001))

(assert (=> b!1735838 d!530999))

(declare-fun d!531001 () Bool)

(assert (=> d!531001 (= suffix!1421 (_2!10763 lt!667608))))

(declare-fun lt!667733 () Unit!32971)

(assert (=> d!531001 (= lt!667733 (choose!10643 lt!667625 suffix!1421 lt!667625 (_2!10763 lt!667608) lt!667623))))

(assert (=> d!531001 (isPrefix!1630 lt!667625 lt!667623)))

(assert (=> d!531001 (= (lemmaSamePrefixThenSameSuffix!774 lt!667625 suffix!1421 lt!667625 (_2!10763 lt!667608) lt!667623) lt!667733)))

(declare-fun bs!402821 () Bool)

(assert (= bs!402821 d!531001))

(declare-fun m!2146003 () Bool)

(assert (=> bs!402821 m!2146003))

(assert (=> bs!402821 m!2145585))

(assert (=> b!1735839 d!531001))

(declare-fun d!531003 () Bool)

(assert (=> d!531003 (= lt!667588 lt!667625)))

(declare-fun lt!667736 () Unit!32971)

(declare-fun choose!10649 (List!19128 List!19128 List!19128) Unit!32971)

(assert (=> d!531003 (= lt!667736 (choose!10649 lt!667588 lt!667625 lt!667623))))

(assert (=> d!531003 (isPrefix!1630 lt!667588 lt!667623)))

(assert (=> d!531003 (= (lemmaIsPrefixSameLengthThenSameList!217 lt!667588 lt!667625 lt!667623) lt!667736)))

(declare-fun bs!402822 () Bool)

(assert (= bs!402822 d!531003))

(declare-fun m!2146005 () Bool)

(assert (=> bs!402822 m!2146005))

(assert (=> bs!402822 m!2145573))

(assert (=> b!1735839 d!531003))

(declare-fun d!531005 () Bool)

(assert (=> d!531005 (= (isEmpty!11993 (_2!10763 lt!667621)) ((_ is Nil!19058) (_2!10763 lt!667621)))))

(assert (=> b!1735840 d!531005))

(declare-fun d!531007 () Bool)

(declare-fun c!283401 () Bool)

(assert (=> d!531007 (= c!283401 ((_ is Node!6339) (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (value!106259 (_1!10763 lt!667608))))))))

(declare-fun e!1111059 () Bool)

(assert (=> d!531007 (= (inv!24680 (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (value!106259 (_1!10763 lt!667608))))) e!1111059)))

(declare-fun b!1736189 () Bool)

(declare-fun inv!24684 (Conc!6339) Bool)

(assert (=> b!1736189 (= e!1111059 (inv!24684 (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (value!106259 (_1!10763 lt!667608))))))))

(declare-fun b!1736190 () Bool)

(declare-fun e!1111060 () Bool)

(assert (=> b!1736190 (= e!1111059 e!1111060)))

(declare-fun res!780211 () Bool)

(assert (=> b!1736190 (= res!780211 (not ((_ is Leaf!9254) (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (value!106259 (_1!10763 lt!667608)))))))))

(assert (=> b!1736190 (=> res!780211 e!1111060)))

(declare-fun b!1736191 () Bool)

(declare-fun inv!24685 (Conc!6339) Bool)

(assert (=> b!1736191 (= e!1111060 (inv!24685 (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (value!106259 (_1!10763 lt!667608))))))))

(assert (= (and d!531007 c!283401) b!1736189))

(assert (= (and d!531007 (not c!283401)) b!1736190))

(assert (= (and b!1736190 (not res!780211)) b!1736191))

(declare-fun m!2146017 () Bool)

(assert (=> b!1736189 m!2146017))

(declare-fun m!2146019 () Bool)

(assert (=> b!1736191 m!2146019))

(assert (=> b!1735876 d!531007))

(declare-fun d!531015 () Bool)

(assert (=> d!531015 (= (inv!24673 (tag!3721 (rule!5379 token!523))) (= (mod (str.len (value!106258 (tag!3721 (rule!5379 token!523)))) 2) 0))))

(assert (=> b!1735857 d!531015))

(declare-fun d!531017 () Bool)

(declare-fun res!780212 () Bool)

(declare-fun e!1111061 () Bool)

(assert (=> d!531017 (=> (not res!780212) (not e!1111061))))

(assert (=> d!531017 (= res!780212 (semiInverseModEq!1340 (toChars!4755 (transformation!3389 (rule!5379 token!523))) (toValue!4896 (transformation!3389 (rule!5379 token!523)))))))

(assert (=> d!531017 (= (inv!24678 (transformation!3389 (rule!5379 token!523))) e!1111061)))

(declare-fun b!1736192 () Bool)

(assert (=> b!1736192 (= e!1111061 (equivClasses!1281 (toChars!4755 (transformation!3389 (rule!5379 token!523))) (toValue!4896 (transformation!3389 (rule!5379 token!523)))))))

(assert (= (and d!531017 res!780212) b!1736192))

(declare-fun m!2146021 () Bool)

(assert (=> d!531017 m!2146021))

(declare-fun m!2146023 () Bool)

(assert (=> b!1736192 m!2146023))

(assert (=> b!1735857 d!531017))

(declare-fun b!1736209 () Bool)

(declare-fun res!780215 () Bool)

(declare-fun e!1111073 () Bool)

(assert (=> b!1736209 (=> res!780215 e!1111073)))

(assert (=> b!1736209 (= res!780215 (not ((_ is IntegerValue!10439) (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584))))))

(declare-fun e!1111071 () Bool)

(assert (=> b!1736209 (= e!1111071 e!1111073)))

(declare-fun b!1736210 () Bool)

(declare-fun inv!15 (TokenValue!3479) Bool)

(assert (=> b!1736210 (= e!1111073 (inv!15 (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584)))))

(declare-fun b!1736211 () Bool)

(declare-fun e!1111072 () Bool)

(assert (=> b!1736211 (= e!1111072 e!1111071)))

(declare-fun c!283410 () Bool)

(assert (=> b!1736211 (= c!283410 ((_ is IntegerValue!10438) (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584)))))

(declare-fun b!1736212 () Bool)

(declare-fun inv!17 (TokenValue!3479) Bool)

(assert (=> b!1736212 (= e!1111071 (inv!17 (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584)))))

(declare-fun b!1736213 () Bool)

(declare-fun inv!16 (TokenValue!3479) Bool)

(assert (=> b!1736213 (= e!1111072 (inv!16 (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584)))))

(declare-fun d!531019 () Bool)

(declare-fun c!283409 () Bool)

(assert (=> d!531019 (= c!283409 ((_ is IntegerValue!10437) (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584)))))

(assert (=> d!531019 (= (inv!21 (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584)) e!1111072)))

(assert (= (and d!531019 c!283409) b!1736213))

(assert (= (and d!531019 (not c!283409)) b!1736211))

(assert (= (and b!1736211 c!283410) b!1736212))

(assert (= (and b!1736211 (not c!283410)) b!1736209))

(assert (= (and b!1736209 (not res!780215)) b!1736210))

(declare-fun m!2146037 () Bool)

(assert (=> b!1736210 m!2146037))

(declare-fun m!2146039 () Bool)

(assert (=> b!1736212 m!2146039))

(declare-fun m!2146041 () Bool)

(assert (=> b!1736213 m!2146041))

(assert (=> tb!103623 d!531019))

(declare-fun b!1736214 () Bool)

(declare-fun res!780216 () Bool)

(declare-fun e!1111076 () Bool)

(assert (=> b!1736214 (=> res!780216 e!1111076)))

(assert (=> b!1736214 (= res!780216 (not ((_ is IntegerValue!10439) (value!106259 token!523))))))

(declare-fun e!1111074 () Bool)

(assert (=> b!1736214 (= e!1111074 e!1111076)))

(declare-fun b!1736215 () Bool)

(assert (=> b!1736215 (= e!1111076 (inv!15 (value!106259 token!523)))))

(declare-fun b!1736216 () Bool)

(declare-fun e!1111075 () Bool)

(assert (=> b!1736216 (= e!1111075 e!1111074)))

(declare-fun c!283412 () Bool)

(assert (=> b!1736216 (= c!283412 ((_ is IntegerValue!10438) (value!106259 token!523)))))

(declare-fun b!1736217 () Bool)

(assert (=> b!1736217 (= e!1111074 (inv!17 (value!106259 token!523)))))

(declare-fun b!1736218 () Bool)

(assert (=> b!1736218 (= e!1111075 (inv!16 (value!106259 token!523)))))

(declare-fun d!531023 () Bool)

(declare-fun c!283411 () Bool)

(assert (=> d!531023 (= c!283411 ((_ is IntegerValue!10437) (value!106259 token!523)))))

(assert (=> d!531023 (= (inv!21 (value!106259 token!523)) e!1111075)))

(assert (= (and d!531023 c!283411) b!1736218))

(assert (= (and d!531023 (not c!283411)) b!1736216))

(assert (= (and b!1736216 c!283412) b!1736217))

(assert (= (and b!1736216 (not c!283412)) b!1736214))

(assert (= (and b!1736214 (not res!780216)) b!1736215))

(declare-fun m!2146043 () Bool)

(assert (=> b!1736215 m!2146043))

(declare-fun m!2146045 () Bool)

(assert (=> b!1736217 m!2146045))

(declare-fun m!2146047 () Bool)

(assert (=> b!1736218 m!2146047))

(assert (=> b!1735836 d!531023))

(declare-fun d!531025 () Bool)

(declare-fun c!283418 () Bool)

(assert (=> d!531025 (= c!283418 (isEmpty!11993 lt!667610))))

(declare-fun e!1111085 () Bool)

(assert (=> d!531025 (= (prefixMatch!602 lt!667604 lt!667610) e!1111085)))

(declare-fun b!1736235 () Bool)

(declare-fun lostCause!538 (Regex!4717) Bool)

(assert (=> b!1736235 (= e!1111085 (not (lostCause!538 lt!667604)))))

(declare-fun b!1736236 () Bool)

(assert (=> b!1736236 (= e!1111085 (prefixMatch!602 (derivativeStep!1196 lt!667604 (head!3964 lt!667610)) (tail!2593 lt!667610)))))

(assert (= (and d!531025 c!283418) b!1736235))

(assert (= (and d!531025 (not c!283418)) b!1736236))

(declare-fun m!2146063 () Bool)

(assert (=> d!531025 m!2146063))

(declare-fun m!2146065 () Bool)

(assert (=> b!1736235 m!2146065))

(assert (=> b!1736236 m!2145939))

(assert (=> b!1736236 m!2145939))

(declare-fun m!2146067 () Bool)

(assert (=> b!1736236 m!2146067))

(assert (=> b!1736236 m!2145941))

(assert (=> b!1736236 m!2146067))

(assert (=> b!1736236 m!2145941))

(declare-fun m!2146069 () Bool)

(assert (=> b!1736236 m!2146069))

(assert (=> b!1735837 d!531025))

(declare-fun d!531031 () Bool)

(declare-fun e!1111086 () Bool)

(assert (=> d!531031 e!1111086))

(declare-fun res!780224 () Bool)

(assert (=> d!531031 (=> (not res!780224) (not e!1111086))))

(declare-fun lt!667740 () List!19128)

(assert (=> d!531031 (= res!780224 (= (content!2731 lt!667740) ((_ map or) (content!2731 lt!667625) (content!2731 (Cons!19058 (head!3964 suffix!1421) Nil!19058)))))))

(declare-fun e!1111087 () List!19128)

(assert (=> d!531031 (= lt!667740 e!1111087)))

(declare-fun c!283419 () Bool)

(assert (=> d!531031 (= c!283419 ((_ is Nil!19058) lt!667625))))

(assert (=> d!531031 (= (++!5214 lt!667625 (Cons!19058 (head!3964 suffix!1421) Nil!19058)) lt!667740)))

(declare-fun b!1736240 () Bool)

(assert (=> b!1736240 (= e!1111086 (or (not (= (Cons!19058 (head!3964 suffix!1421) Nil!19058) Nil!19058)) (= lt!667740 lt!667625)))))

(declare-fun b!1736237 () Bool)

(assert (=> b!1736237 (= e!1111087 (Cons!19058 (head!3964 suffix!1421) Nil!19058))))

(declare-fun b!1736238 () Bool)

(assert (=> b!1736238 (= e!1111087 (Cons!19058 (h!24459 lt!667625) (++!5214 (t!161327 lt!667625) (Cons!19058 (head!3964 suffix!1421) Nil!19058))))))

(declare-fun b!1736239 () Bool)

(declare-fun res!780223 () Bool)

(assert (=> b!1736239 (=> (not res!780223) (not e!1111086))))

(assert (=> b!1736239 (= res!780223 (= (size!15147 lt!667740) (+ (size!15147 lt!667625) (size!15147 (Cons!19058 (head!3964 suffix!1421) Nil!19058)))))))

(assert (= (and d!531031 c!283419) b!1736237))

(assert (= (and d!531031 (not c!283419)) b!1736238))

(assert (= (and d!531031 res!780224) b!1736239))

(assert (= (and b!1736239 res!780223) b!1736240))

(declare-fun m!2146071 () Bool)

(assert (=> d!531031 m!2146071))

(assert (=> d!531031 m!2145891))

(declare-fun m!2146073 () Bool)

(assert (=> d!531031 m!2146073))

(declare-fun m!2146075 () Bool)

(assert (=> b!1736238 m!2146075))

(declare-fun m!2146077 () Bool)

(assert (=> b!1736239 m!2146077))

(assert (=> b!1736239 m!2145899))

(declare-fun m!2146079 () Bool)

(assert (=> b!1736239 m!2146079))

(assert (=> b!1735837 d!531031))

(declare-fun d!531033 () Bool)

(assert (=> d!531033 (= (head!3964 suffix!1421) (h!24459 suffix!1421))))

(assert (=> b!1735837 d!531033))

(declare-fun d!531035 () Bool)

(declare-fun lt!667747 () Unit!32971)

(declare-fun lemma!351 (List!19129 LexerInterface!3018 List!19129) Unit!32971)

(assert (=> d!531035 (= lt!667747 (lemma!351 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69503 () Int)

(declare-datatypes ((List!19132 0))(
  ( (Nil!19062) (Cons!19062 (h!24463 Regex!4717) (t!161391 List!19132)) )
))
(declare-fun generalisedUnion!359 (List!19132) Regex!4717)

(declare-fun map!3925 (List!19129 Int) List!19132)

(assert (=> d!531035 (= (rulesRegex!747 thiss!24550 rules!3447) (generalisedUnion!359 (map!3925 rules!3447 lambda!69503)))))

(declare-fun bs!402824 () Bool)

(assert (= bs!402824 d!531035))

(declare-fun m!2146087 () Bool)

(assert (=> bs!402824 m!2146087))

(declare-fun m!2146089 () Bool)

(assert (=> bs!402824 m!2146089))

(assert (=> bs!402824 m!2146089))

(declare-fun m!2146091 () Bool)

(assert (=> bs!402824 m!2146091))

(assert (=> b!1735837 d!531035))

(declare-fun b!1736256 () Bool)

(declare-fun res!780235 () Bool)

(declare-fun e!1111095 () Bool)

(assert (=> b!1736256 (=> (not res!780235) (not e!1111095))))

(assert (=> b!1736256 (= res!780235 (= (head!3964 lt!667588) (head!3964 (++!5214 lt!667588 (_2!10763 lt!667608)))))))

(declare-fun b!1736255 () Bool)

(declare-fun e!1111096 () Bool)

(assert (=> b!1736255 (= e!1111096 e!1111095)))

(declare-fun res!780236 () Bool)

(assert (=> b!1736255 (=> (not res!780236) (not e!1111095))))

(assert (=> b!1736255 (= res!780236 (not ((_ is Nil!19058) (++!5214 lt!667588 (_2!10763 lt!667608)))))))

(declare-fun d!531039 () Bool)

(declare-fun e!1111097 () Bool)

(assert (=> d!531039 e!1111097))

(declare-fun res!780234 () Bool)

(assert (=> d!531039 (=> res!780234 e!1111097)))

(declare-fun lt!667748 () Bool)

(assert (=> d!531039 (= res!780234 (not lt!667748))))

(assert (=> d!531039 (= lt!667748 e!1111096)))

(declare-fun res!780233 () Bool)

(assert (=> d!531039 (=> res!780233 e!1111096)))

(assert (=> d!531039 (= res!780233 ((_ is Nil!19058) lt!667588))))

(assert (=> d!531039 (= (isPrefix!1630 lt!667588 (++!5214 lt!667588 (_2!10763 lt!667608))) lt!667748)))

(declare-fun b!1736257 () Bool)

(assert (=> b!1736257 (= e!1111095 (isPrefix!1630 (tail!2593 lt!667588) (tail!2593 (++!5214 lt!667588 (_2!10763 lt!667608)))))))

(declare-fun b!1736258 () Bool)

(assert (=> b!1736258 (= e!1111097 (>= (size!15147 (++!5214 lt!667588 (_2!10763 lt!667608))) (size!15147 lt!667588)))))

(assert (= (and d!531039 (not res!780233)) b!1736255))

(assert (= (and b!1736255 res!780236) b!1736256))

(assert (= (and b!1736256 res!780235) b!1736257))

(assert (= (and d!531039 (not res!780234)) b!1736258))

(assert (=> b!1736256 m!2145877))

(assert (=> b!1736256 m!2145581))

(declare-fun m!2146101 () Bool)

(assert (=> b!1736256 m!2146101))

(assert (=> b!1736257 m!2145881))

(assert (=> b!1736257 m!2145581))

(declare-fun m!2146103 () Bool)

(assert (=> b!1736257 m!2146103))

(assert (=> b!1736257 m!2145881))

(assert (=> b!1736257 m!2146103))

(declare-fun m!2146105 () Bool)

(assert (=> b!1736257 m!2146105))

(assert (=> b!1736258 m!2145581))

(declare-fun m!2146107 () Bool)

(assert (=> b!1736258 m!2146107))

(assert (=> b!1736258 m!2145615))

(assert (=> b!1735854 d!531039))

(declare-fun d!531043 () Bool)

(assert (=> d!531043 (isPrefix!1630 lt!667625 (++!5214 lt!667625 suffix!1421))))

(declare-fun lt!667751 () Unit!32971)

(declare-fun choose!10652 (List!19128 List!19128) Unit!32971)

(assert (=> d!531043 (= lt!667751 (choose!10652 lt!667625 suffix!1421))))

(assert (=> d!531043 (= (lemmaConcatTwoListThenFirstIsPrefix!1140 lt!667625 suffix!1421) lt!667751)))

(declare-fun bs!402825 () Bool)

(assert (= bs!402825 d!531043))

(assert (=> bs!402825 m!2145571))

(assert (=> bs!402825 m!2145571))

(declare-fun m!2146109 () Bool)

(assert (=> bs!402825 m!2146109))

(declare-fun m!2146111 () Bool)

(assert (=> bs!402825 m!2146111))

(assert (=> b!1735854 d!531043))

(declare-fun d!531045 () Bool)

(declare-fun e!1111100 () Bool)

(assert (=> d!531045 e!1111100))

(declare-fun res!780242 () Bool)

(assert (=> d!531045 (=> (not res!780242) (not e!1111100))))

(declare-fun lt!667752 () List!19128)

(assert (=> d!531045 (= res!780242 (= (content!2731 lt!667752) ((_ map or) (content!2731 lt!667625) (content!2731 suffix!1421))))))

(declare-fun e!1111101 () List!19128)

(assert (=> d!531045 (= lt!667752 e!1111101)))

(declare-fun c!283423 () Bool)

(assert (=> d!531045 (= c!283423 ((_ is Nil!19058) lt!667625))))

(assert (=> d!531045 (= (++!5214 lt!667625 suffix!1421) lt!667752)))

(declare-fun b!1736266 () Bool)

(assert (=> b!1736266 (= e!1111100 (or (not (= suffix!1421 Nil!19058)) (= lt!667752 lt!667625)))))

(declare-fun b!1736263 () Bool)

(assert (=> b!1736263 (= e!1111101 suffix!1421)))

(declare-fun b!1736264 () Bool)

(assert (=> b!1736264 (= e!1111101 (Cons!19058 (h!24459 lt!667625) (++!5214 (t!161327 lt!667625) suffix!1421)))))

(declare-fun b!1736265 () Bool)

(declare-fun res!780241 () Bool)

(assert (=> b!1736265 (=> (not res!780241) (not e!1111100))))

(assert (=> b!1736265 (= res!780241 (= (size!15147 lt!667752) (+ (size!15147 lt!667625) (size!15147 suffix!1421))))))

(assert (= (and d!531045 c!283423) b!1736263))

(assert (= (and d!531045 (not c!283423)) b!1736264))

(assert (= (and d!531045 res!780242) b!1736265))

(assert (= (and b!1736265 res!780241) b!1736266))

(declare-fun m!2146113 () Bool)

(assert (=> d!531045 m!2146113))

(assert (=> d!531045 m!2145891))

(declare-fun m!2146115 () Bool)

(assert (=> d!531045 m!2146115))

(declare-fun m!2146117 () Bool)

(assert (=> b!1736264 m!2146117))

(declare-fun m!2146119 () Bool)

(assert (=> b!1736265 m!2146119))

(assert (=> b!1736265 m!2145899))

(declare-fun m!2146121 () Bool)

(assert (=> b!1736265 m!2146121))

(assert (=> b!1735854 d!531045))

(declare-fun b!1736331 () Bool)

(declare-fun e!1111137 () Unit!32971)

(declare-fun Unit!32982 () Unit!32971)

(assert (=> b!1736331 (= e!1111137 Unit!32982)))

(declare-fun lt!667808 () List!19128)

(assert (=> b!1736331 (= lt!667808 (++!5214 lt!667625 suffix!1421))))

(declare-fun lt!667811 () Token!6344)

(declare-fun lt!667809 () Unit!32971)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!285 (LexerInterface!3018 Rule!6578 List!19129 List!19128) Unit!32971)

(assert (=> b!1736331 (= lt!667809 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!285 thiss!24550 (rule!5379 lt!667811) rules!3447 lt!667808))))

(declare-fun isEmpty!11996 (Option!3802) Bool)

(assert (=> b!1736331 (isEmpty!11996 (maxPrefixOneRule!948 thiss!24550 (rule!5379 lt!667811) lt!667808))))

(declare-fun lt!667814 () Unit!32971)

(assert (=> b!1736331 (= lt!667814 lt!667809)))

(declare-fun lt!667810 () List!19128)

(assert (=> b!1736331 (= lt!667810 (list!7706 (charsOf!2038 lt!667811)))))

(declare-fun lt!667817 () Unit!32971)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!281 (LexerInterface!3018 Rule!6578 List!19128 List!19128) Unit!32971)

(assert (=> b!1736331 (= lt!667817 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!281 thiss!24550 (rule!5379 lt!667811) lt!667810 (++!5214 lt!667625 suffix!1421)))))

(assert (=> b!1736331 (not (matchR!2191 (regex!3389 (rule!5379 lt!667811)) lt!667810))))

(declare-fun lt!667813 () Unit!32971)

(assert (=> b!1736331 (= lt!667813 lt!667817)))

(assert (=> b!1736331 false))

(declare-fun d!531047 () Bool)

(assert (=> d!531047 (isDefined!3145 (maxPrefix!1572 thiss!24550 rules!3447 (++!5214 lt!667625 suffix!1421)))))

(declare-fun lt!667819 () Unit!32971)

(assert (=> d!531047 (= lt!667819 e!1111137)))

(declare-fun c!283434 () Bool)

(assert (=> d!531047 (= c!283434 (isEmpty!11996 (maxPrefix!1572 thiss!24550 rules!3447 (++!5214 lt!667625 suffix!1421))))))

(declare-fun lt!667815 () Unit!32971)

(declare-fun lt!667804 () Unit!32971)

(assert (=> d!531047 (= lt!667815 lt!667804)))

(declare-fun e!1111138 () Bool)

(assert (=> d!531047 e!1111138))

(declare-fun res!780285 () Bool)

(assert (=> d!531047 (=> (not res!780285) (not e!1111138))))

(assert (=> d!531047 (= res!780285 (isDefined!3146 (getRuleFromTag!439 thiss!24550 rules!3447 (tag!3721 (rule!5379 lt!667811)))))))

(assert (=> d!531047 (= lt!667804 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!439 thiss!24550 rules!3447 lt!667625 lt!667811))))

(declare-fun lt!667812 () Unit!32971)

(declare-fun lt!667806 () Unit!32971)

(assert (=> d!531047 (= lt!667812 lt!667806)))

(declare-fun lt!667816 () List!19128)

(assert (=> d!531047 (isPrefix!1630 lt!667816 (++!5214 lt!667625 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!277 (List!19128 List!19128 List!19128) Unit!32971)

(assert (=> d!531047 (= lt!667806 (lemmaPrefixStaysPrefixWhenAddingToSuffix!277 lt!667816 lt!667625 suffix!1421))))

(assert (=> d!531047 (= lt!667816 (list!7706 (charsOf!2038 lt!667811)))))

(declare-fun lt!667818 () Unit!32971)

(declare-fun lt!667807 () Unit!32971)

(assert (=> d!531047 (= lt!667818 lt!667807)))

(declare-fun lt!667803 () List!19128)

(declare-fun lt!667805 () List!19128)

(assert (=> d!531047 (isPrefix!1630 lt!667803 (++!5214 lt!667803 lt!667805))))

(assert (=> d!531047 (= lt!667807 (lemmaConcatTwoListThenFirstIsPrefix!1140 lt!667803 lt!667805))))

(assert (=> d!531047 (= lt!667805 (_2!10763 (get!5714 (maxPrefix!1572 thiss!24550 rules!3447 lt!667625))))))

(assert (=> d!531047 (= lt!667803 (list!7706 (charsOf!2038 lt!667811)))))

(declare-datatypes ((List!19134 0))(
  ( (Nil!19064) (Cons!19064 (h!24465 Token!6344) (t!161393 List!19134)) )
))
(declare-fun head!3966 (List!19134) Token!6344)

(declare-datatypes ((IArray!12687 0))(
  ( (IArray!12688 (innerList!6401 List!19134)) )
))
(declare-datatypes ((Conc!6341 0))(
  ( (Node!6341 (left!15237 Conc!6341) (right!15567 Conc!6341) (csize!12912 Int) (cheight!6552 Int)) (Leaf!9256 (xs!9217 IArray!12687) (csize!12913 Int)) (Empty!6341) )
))
(declare-datatypes ((BalanceConc!12626 0))(
  ( (BalanceConc!12627 (c!283485 Conc!6341)) )
))
(declare-fun list!7710 (BalanceConc!12626) List!19134)

(declare-datatypes ((tuple2!18728 0))(
  ( (tuple2!18729 (_1!10766 BalanceConc!12626) (_2!10766 BalanceConc!12622)) )
))
(declare-fun lex!1416 (LexerInterface!3018 List!19129 BalanceConc!12622) tuple2!18728)

(assert (=> d!531047 (= lt!667811 (head!3966 (list!7710 (_1!10766 (lex!1416 thiss!24550 rules!3447 (seqFromList!2363 lt!667625))))))))

(assert (=> d!531047 (not (isEmpty!11994 rules!3447))))

(assert (=> d!531047 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!542 thiss!24550 rules!3447 lt!667625 suffix!1421) lt!667819)))

(declare-fun b!1736329 () Bool)

(declare-fun res!780284 () Bool)

(assert (=> b!1736329 (=> (not res!780284) (not e!1111138))))

(assert (=> b!1736329 (= res!780284 (matchR!2191 (regex!3389 (get!5715 (getRuleFromTag!439 thiss!24550 rules!3447 (tag!3721 (rule!5379 lt!667811))))) (list!7706 (charsOf!2038 lt!667811))))))

(declare-fun b!1736332 () Bool)

(declare-fun Unit!32983 () Unit!32971)

(assert (=> b!1736332 (= e!1111137 Unit!32983)))

(declare-fun b!1736330 () Bool)

(assert (=> b!1736330 (= e!1111138 (= (rule!5379 lt!667811) (get!5715 (getRuleFromTag!439 thiss!24550 rules!3447 (tag!3721 (rule!5379 lt!667811))))))))

(assert (= (and d!531047 res!780285) b!1736329))

(assert (= (and b!1736329 res!780284) b!1736330))

(assert (= (and d!531047 c!283434) b!1736331))

(assert (= (and d!531047 (not c!283434)) b!1736332))

(declare-fun m!2146187 () Bool)

(assert (=> b!1736331 m!2146187))

(declare-fun m!2146189 () Bool)

(assert (=> b!1736331 m!2146189))

(assert (=> b!1736331 m!2145571))

(assert (=> b!1736331 m!2145571))

(declare-fun m!2146191 () Bool)

(assert (=> b!1736331 m!2146191))

(assert (=> b!1736331 m!2146187))

(declare-fun m!2146193 () Bool)

(assert (=> b!1736331 m!2146193))

(declare-fun m!2146195 () Bool)

(assert (=> b!1736331 m!2146195))

(declare-fun m!2146197 () Bool)

(assert (=> b!1736331 m!2146197))

(declare-fun m!2146199 () Bool)

(assert (=> b!1736331 m!2146199))

(assert (=> b!1736331 m!2146195))

(assert (=> d!531047 m!2145571))

(declare-fun m!2146201 () Bool)

(assert (=> d!531047 m!2146201))

(declare-fun m!2146203 () Bool)

(assert (=> d!531047 m!2146203))

(declare-fun m!2146205 () Bool)

(assert (=> d!531047 m!2146205))

(declare-fun m!2146207 () Bool)

(assert (=> d!531047 m!2146207))

(declare-fun m!2146209 () Bool)

(assert (=> d!531047 m!2146209))

(assert (=> d!531047 m!2146207))

(declare-fun m!2146211 () Bool)

(assert (=> d!531047 m!2146211))

(assert (=> d!531047 m!2146203))

(assert (=> d!531047 m!2146201))

(declare-fun m!2146213 () Bool)

(assert (=> d!531047 m!2146213))

(declare-fun m!2146215 () Bool)

(assert (=> d!531047 m!2146215))

(assert (=> d!531047 m!2145571))

(declare-fun m!2146217 () Bool)

(assert (=> d!531047 m!2146217))

(assert (=> d!531047 m!2146209))

(declare-fun m!2146219 () Bool)

(assert (=> d!531047 m!2146219))

(assert (=> d!531047 m!2146215))

(declare-fun m!2146221 () Bool)

(assert (=> d!531047 m!2146221))

(declare-fun m!2146223 () Bool)

(assert (=> d!531047 m!2146223))

(assert (=> d!531047 m!2146195))

(assert (=> d!531047 m!2145703))

(declare-fun m!2146225 () Bool)

(assert (=> d!531047 m!2146225))

(assert (=> d!531047 m!2145703))

(assert (=> d!531047 m!2145635))

(assert (=> d!531047 m!2145571))

(declare-fun m!2146227 () Bool)

(assert (=> d!531047 m!2146227))

(assert (=> d!531047 m!2146201))

(declare-fun m!2146229 () Bool)

(assert (=> d!531047 m!2146229))

(declare-fun m!2146231 () Bool)

(assert (=> d!531047 m!2146231))

(assert (=> d!531047 m!2146195))

(assert (=> d!531047 m!2146197))

(assert (=> b!1736329 m!2146197))

(declare-fun m!2146233 () Bool)

(assert (=> b!1736329 m!2146233))

(assert (=> b!1736329 m!2146195))

(assert (=> b!1736329 m!2146195))

(assert (=> b!1736329 m!2146197))

(assert (=> b!1736329 m!2146209))

(assert (=> b!1736329 m!2146209))

(declare-fun m!2146235 () Bool)

(assert (=> b!1736329 m!2146235))

(assert (=> b!1736330 m!2146209))

(assert (=> b!1736330 m!2146209))

(assert (=> b!1736330 m!2146235))

(assert (=> b!1735854 d!531047))

(declare-fun d!531073 () Bool)

(assert (=> d!531073 (= (list!7706 lt!667584) (list!7708 (c!283329 lt!667584)))))

(declare-fun bs!402831 () Bool)

(assert (= bs!402831 d!531073))

(declare-fun m!2146237 () Bool)

(assert (=> bs!402831 m!2146237))

(assert (=> b!1735854 d!531073))

(declare-fun d!531075 () Bool)

(assert (=> d!531075 (= (get!5714 lt!667590) (v!25226 lt!667590))))

(assert (=> b!1735854 d!531075))

(declare-fun d!531077 () Bool)

(declare-fun lt!667822 () BalanceConc!12622)

(assert (=> d!531077 (= (list!7706 lt!667822) (originalCharacters!4203 (_1!10763 lt!667608)))))

(assert (=> d!531077 (= lt!667822 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (value!106259 (_1!10763 lt!667608))))))

(assert (=> d!531077 (= (charsOf!2038 (_1!10763 lt!667608)) lt!667822)))

(declare-fun b_lambda!55535 () Bool)

(assert (=> (not b_lambda!55535) (not d!531077)))

(assert (=> d!531077 t!161321))

(declare-fun b_and!128631 () Bool)

(assert (= b_and!128607 (and (=> t!161321 result!124620) b_and!128631)))

(assert (=> d!531077 t!161323))

(declare-fun b_and!128633 () Bool)

(assert (= b_and!128609 (and (=> t!161323 result!124622) b_and!128633)))

(assert (=> d!531077 t!161325))

(declare-fun b_and!128635 () Bool)

(assert (= b_and!128611 (and (=> t!161325 result!124624) b_and!128635)))

(declare-fun m!2146239 () Bool)

(assert (=> d!531077 m!2146239))

(assert (=> d!531077 m!2145551))

(assert (=> b!1735854 d!531077))

(declare-fun b!1736334 () Bool)

(declare-fun res!780288 () Bool)

(declare-fun e!1111139 () Bool)

(assert (=> b!1736334 (=> (not res!780288) (not e!1111139))))

(assert (=> b!1736334 (= res!780288 (= (head!3964 lt!667625) (head!3964 lt!667623)))))

(declare-fun b!1736333 () Bool)

(declare-fun e!1111140 () Bool)

(assert (=> b!1736333 (= e!1111140 e!1111139)))

(declare-fun res!780289 () Bool)

(assert (=> b!1736333 (=> (not res!780289) (not e!1111139))))

(assert (=> b!1736333 (= res!780289 (not ((_ is Nil!19058) lt!667623)))))

(declare-fun d!531079 () Bool)

(declare-fun e!1111141 () Bool)

(assert (=> d!531079 e!1111141))

(declare-fun res!780287 () Bool)

(assert (=> d!531079 (=> res!780287 e!1111141)))

(declare-fun lt!667823 () Bool)

(assert (=> d!531079 (= res!780287 (not lt!667823))))

(assert (=> d!531079 (= lt!667823 e!1111140)))

(declare-fun res!780286 () Bool)

(assert (=> d!531079 (=> res!780286 e!1111140)))

(assert (=> d!531079 (= res!780286 ((_ is Nil!19058) lt!667625))))

(assert (=> d!531079 (= (isPrefix!1630 lt!667625 lt!667623) lt!667823)))

(declare-fun b!1736335 () Bool)

(assert (=> b!1736335 (= e!1111139 (isPrefix!1630 (tail!2593 lt!667625) (tail!2593 lt!667623)))))

(declare-fun b!1736336 () Bool)

(assert (=> b!1736336 (= e!1111141 (>= (size!15147 lt!667623) (size!15147 lt!667625)))))

(assert (= (and d!531079 (not res!780286)) b!1736333))

(assert (= (and b!1736333 res!780289) b!1736334))

(assert (= (and b!1736334 res!780288) b!1736335))

(assert (= (and d!531079 (not res!780287)) b!1736336))

(assert (=> b!1736334 m!2145785))

(assert (=> b!1736334 m!2145931))

(assert (=> b!1736335 m!2145789))

(assert (=> b!1736335 m!2145923))

(assert (=> b!1736335 m!2145789))

(assert (=> b!1736335 m!2145923))

(declare-fun m!2146241 () Bool)

(assert (=> b!1736335 m!2146241))

(assert (=> b!1736336 m!2145921))

(assert (=> b!1736336 m!2145899))

(assert (=> b!1735854 d!531079))

(declare-fun b!1736338 () Bool)

(declare-fun res!780292 () Bool)

(declare-fun e!1111142 () Bool)

(assert (=> b!1736338 (=> (not res!780292) (not e!1111142))))

(assert (=> b!1736338 (= res!780292 (= (head!3964 lt!667588) (head!3964 lt!667623)))))

(declare-fun b!1736337 () Bool)

(declare-fun e!1111143 () Bool)

(assert (=> b!1736337 (= e!1111143 e!1111142)))

(declare-fun res!780293 () Bool)

(assert (=> b!1736337 (=> (not res!780293) (not e!1111142))))

(assert (=> b!1736337 (= res!780293 (not ((_ is Nil!19058) lt!667623)))))

(declare-fun d!531081 () Bool)

(declare-fun e!1111144 () Bool)

(assert (=> d!531081 e!1111144))

(declare-fun res!780291 () Bool)

(assert (=> d!531081 (=> res!780291 e!1111144)))

(declare-fun lt!667824 () Bool)

(assert (=> d!531081 (= res!780291 (not lt!667824))))

(assert (=> d!531081 (= lt!667824 e!1111143)))

(declare-fun res!780290 () Bool)

(assert (=> d!531081 (=> res!780290 e!1111143)))

(assert (=> d!531081 (= res!780290 ((_ is Nil!19058) lt!667588))))

(assert (=> d!531081 (= (isPrefix!1630 lt!667588 lt!667623) lt!667824)))

(declare-fun b!1736339 () Bool)

(assert (=> b!1736339 (= e!1111142 (isPrefix!1630 (tail!2593 lt!667588) (tail!2593 lt!667623)))))

(declare-fun b!1736340 () Bool)

(assert (=> b!1736340 (= e!1111144 (>= (size!15147 lt!667623) (size!15147 lt!667588)))))

(assert (= (and d!531081 (not res!780290)) b!1736337))

(assert (= (and b!1736337 res!780293) b!1736338))

(assert (= (and b!1736338 res!780292) b!1736339))

(assert (= (and d!531081 (not res!780291)) b!1736340))

(assert (=> b!1736338 m!2145877))

(assert (=> b!1736338 m!2145931))

(assert (=> b!1736339 m!2145881))

(assert (=> b!1736339 m!2145923))

(assert (=> b!1736339 m!2145881))

(assert (=> b!1736339 m!2145923))

(declare-fun m!2146243 () Bool)

(assert (=> b!1736339 m!2146243))

(assert (=> b!1736340 m!2145921))

(assert (=> b!1736340 m!2145615))

(assert (=> b!1735854 d!531081))

(declare-fun b!1736361 () Bool)

(declare-fun e!1111160 () Bool)

(declare-fun e!1111159 () Bool)

(assert (=> b!1736361 (= e!1111160 e!1111159)))

(declare-fun res!780302 () Bool)

(assert (=> b!1736361 (=> (not res!780302) (not e!1111159))))

(declare-fun lt!667867 () Option!3803)

(assert (=> b!1736361 (= res!780302 (contains!3411 rules!3447 (get!5715 lt!667867)))))

(declare-fun b!1736362 () Bool)

(declare-fun e!1111158 () Option!3803)

(declare-fun e!1111157 () Option!3803)

(assert (=> b!1736362 (= e!1111158 e!1111157)))

(declare-fun c!283441 () Bool)

(assert (=> b!1736362 (= c!283441 (and ((_ is Cons!19059) rules!3447) (not (= (tag!3721 (h!24460 rules!3447)) (tag!3721 (rule!5379 (_1!10763 lt!667608)))))))))

(declare-fun d!531083 () Bool)

(assert (=> d!531083 e!1111160))

(declare-fun res!780303 () Bool)

(assert (=> d!531083 (=> res!780303 e!1111160)))

(declare-fun isEmpty!11998 (Option!3803) Bool)

(assert (=> d!531083 (= res!780303 (isEmpty!11998 lt!667867))))

(assert (=> d!531083 (= lt!667867 e!1111158)))

(declare-fun c!283442 () Bool)

(assert (=> d!531083 (= c!283442 (and ((_ is Cons!19059) rules!3447) (= (tag!3721 (h!24460 rules!3447)) (tag!3721 (rule!5379 (_1!10763 lt!667608))))))))

(assert (=> d!531083 (rulesInvariant!2687 thiss!24550 rules!3447)))

(assert (=> d!531083 (= (getRuleFromTag!439 thiss!24550 rules!3447 (tag!3721 (rule!5379 (_1!10763 lt!667608)))) lt!667867)))

(declare-fun b!1736363 () Bool)

(assert (=> b!1736363 (= e!1111159 (= (tag!3721 (get!5715 lt!667867)) (tag!3721 (rule!5379 (_1!10763 lt!667608)))))))

(declare-fun b!1736364 () Bool)

(declare-fun lt!667866 () Unit!32971)

(declare-fun lt!667865 () Unit!32971)

(assert (=> b!1736364 (= lt!667866 lt!667865)))

(assert (=> b!1736364 (rulesInvariant!2687 thiss!24550 (t!161328 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!156 (LexerInterface!3018 Rule!6578 List!19129) Unit!32971)

(assert (=> b!1736364 (= lt!667865 (lemmaInvariantOnRulesThenOnTail!156 thiss!24550 (h!24460 rules!3447) (t!161328 rules!3447)))))

(assert (=> b!1736364 (= e!1111157 (getRuleFromTag!439 thiss!24550 (t!161328 rules!3447) (tag!3721 (rule!5379 (_1!10763 lt!667608)))))))

(declare-fun b!1736365 () Bool)

(assert (=> b!1736365 (= e!1111158 (Some!3802 (h!24460 rules!3447)))))

(declare-fun b!1736366 () Bool)

(assert (=> b!1736366 (= e!1111157 None!3802)))

(assert (= (and d!531083 c!283442) b!1736365))

(assert (= (and d!531083 (not c!283442)) b!1736362))

(assert (= (and b!1736362 c!283441) b!1736364))

(assert (= (and b!1736362 (not c!283441)) b!1736366))

(assert (= (and d!531083 (not res!780303)) b!1736361))

(assert (= (and b!1736361 res!780302) b!1736363))

(declare-fun m!2146245 () Bool)

(assert (=> b!1736361 m!2146245))

(assert (=> b!1736361 m!2146245))

(declare-fun m!2146247 () Bool)

(assert (=> b!1736361 m!2146247))

(declare-fun m!2146249 () Bool)

(assert (=> d!531083 m!2146249))

(assert (=> d!531083 m!2145715))

(assert (=> b!1736363 m!2146245))

(declare-fun m!2146251 () Bool)

(assert (=> b!1736364 m!2146251))

(declare-fun m!2146253 () Bool)

(assert (=> b!1736364 m!2146253))

(declare-fun m!2146255 () Bool)

(assert (=> b!1736364 m!2146255))

(assert (=> b!1735854 d!531083))

(declare-fun d!531085 () Bool)

(assert (=> d!531085 (= (isDefined!3146 lt!667607) (not (isEmpty!11998 lt!667607)))))

(declare-fun bs!402832 () Bool)

(assert (= bs!402832 d!531085))

(declare-fun m!2146257 () Bool)

(assert (=> bs!402832 m!2146257))

(assert (=> b!1735854 d!531085))

(declare-fun d!531087 () Bool)

(declare-fun e!1111170 () Bool)

(assert (=> d!531087 e!1111170))

(declare-fun res!780316 () Bool)

(assert (=> d!531087 (=> (not res!780316) (not e!1111170))))

(assert (=> d!531087 (= res!780316 (isDefined!3146 (getRuleFromTag!439 thiss!24550 rules!3447 (tag!3721 (rule!5379 (_1!10763 lt!667608))))))))

(declare-fun lt!667889 () Unit!32971)

(declare-fun choose!10654 (LexerInterface!3018 List!19129 List!19128 Token!6344) Unit!32971)

(assert (=> d!531087 (= lt!667889 (choose!10654 thiss!24550 rules!3447 lt!667623 (_1!10763 lt!667608)))))

(assert (=> d!531087 (rulesInvariant!2687 thiss!24550 rules!3447)))

(assert (=> d!531087 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!439 thiss!24550 rules!3447 lt!667623 (_1!10763 lt!667608)) lt!667889)))

(declare-fun b!1736383 () Bool)

(declare-fun res!780317 () Bool)

(assert (=> b!1736383 (=> (not res!780317) (not e!1111170))))

(assert (=> b!1736383 (= res!780317 (matchR!2191 (regex!3389 (get!5715 (getRuleFromTag!439 thiss!24550 rules!3447 (tag!3721 (rule!5379 (_1!10763 lt!667608)))))) (list!7706 (charsOf!2038 (_1!10763 lt!667608)))))))

(declare-fun b!1736384 () Bool)

(assert (=> b!1736384 (= e!1111170 (= (rule!5379 (_1!10763 lt!667608)) (get!5715 (getRuleFromTag!439 thiss!24550 rules!3447 (tag!3721 (rule!5379 (_1!10763 lt!667608)))))))))

(assert (= (and d!531087 res!780316) b!1736383))

(assert (= (and b!1736383 res!780317) b!1736384))

(assert (=> d!531087 m!2145587))

(assert (=> d!531087 m!2145587))

(declare-fun m!2146331 () Bool)

(assert (=> d!531087 m!2146331))

(declare-fun m!2146333 () Bool)

(assert (=> d!531087 m!2146333))

(assert (=> d!531087 m!2145715))

(assert (=> b!1736383 m!2145709))

(declare-fun m!2146335 () Bool)

(assert (=> b!1736383 m!2146335))

(assert (=> b!1736383 m!2145595))

(assert (=> b!1736383 m!2145709))

(assert (=> b!1736383 m!2145595))

(assert (=> b!1736383 m!2145587))

(declare-fun m!2146337 () Bool)

(assert (=> b!1736383 m!2146337))

(assert (=> b!1736383 m!2145587))

(assert (=> b!1736384 m!2145587))

(assert (=> b!1736384 m!2145587))

(assert (=> b!1736384 m!2146337))

(assert (=> b!1735854 d!531087))

(declare-fun d!531099 () Bool)

(declare-fun e!1111171 () Bool)

(assert (=> d!531099 e!1111171))

(declare-fun res!780319 () Bool)

(assert (=> d!531099 (=> (not res!780319) (not e!1111171))))

(declare-fun lt!667890 () List!19128)

(assert (=> d!531099 (= res!780319 (= (content!2731 lt!667890) ((_ map or) (content!2731 lt!667588) (content!2731 (_2!10763 lt!667608)))))))

(declare-fun e!1111172 () List!19128)

(assert (=> d!531099 (= lt!667890 e!1111172)))

(declare-fun c!283445 () Bool)

(assert (=> d!531099 (= c!283445 ((_ is Nil!19058) lt!667588))))

(assert (=> d!531099 (= (++!5214 lt!667588 (_2!10763 lt!667608)) lt!667890)))

(declare-fun b!1736388 () Bool)

(assert (=> b!1736388 (= e!1111171 (or (not (= (_2!10763 lt!667608) Nil!19058)) (= lt!667890 lt!667588)))))

(declare-fun b!1736385 () Bool)

(assert (=> b!1736385 (= e!1111172 (_2!10763 lt!667608))))

(declare-fun b!1736386 () Bool)

(assert (=> b!1736386 (= e!1111172 (Cons!19058 (h!24459 lt!667588) (++!5214 (t!161327 lt!667588) (_2!10763 lt!667608))))))

(declare-fun b!1736387 () Bool)

(declare-fun res!780318 () Bool)

(assert (=> b!1736387 (=> (not res!780318) (not e!1111171))))

(assert (=> b!1736387 (= res!780318 (= (size!15147 lt!667890) (+ (size!15147 lt!667588) (size!15147 (_2!10763 lt!667608)))))))

(assert (= (and d!531099 c!283445) b!1736385))

(assert (= (and d!531099 (not c!283445)) b!1736386))

(assert (= (and d!531099 res!780319) b!1736387))

(assert (= (and b!1736387 res!780318) b!1736388))

(declare-fun m!2146339 () Bool)

(assert (=> d!531099 m!2146339))

(declare-fun m!2146341 () Bool)

(assert (=> d!531099 m!2146341))

(declare-fun m!2146343 () Bool)

(assert (=> d!531099 m!2146343))

(declare-fun m!2146345 () Bool)

(assert (=> b!1736386 m!2146345))

(declare-fun m!2146347 () Bool)

(assert (=> b!1736387 m!2146347))

(assert (=> b!1736387 m!2145615))

(declare-fun m!2146349 () Bool)

(assert (=> b!1736387 m!2146349))

(assert (=> b!1735854 d!531099))

(declare-fun b!1736439 () Bool)

(declare-fun e!1111200 () Bool)

(declare-fun e!1111199 () Bool)

(assert (=> b!1736439 (= e!1111200 e!1111199)))

(declare-fun res!780355 () Bool)

(assert (=> b!1736439 (=> (not res!780355) (not e!1111199))))

(declare-fun lt!667917 () Option!3802)

(assert (=> b!1736439 (= res!780355 (isDefined!3145 lt!667917))))

(declare-fun b!1736440 () Bool)

(declare-fun e!1111201 () Option!3802)

(declare-fun lt!667916 () Option!3802)

(declare-fun lt!667919 () Option!3802)

(assert (=> b!1736440 (= e!1111201 (ite (and ((_ is None!3801) lt!667916) ((_ is None!3801) lt!667919)) None!3801 (ite ((_ is None!3801) lt!667919) lt!667916 (ite ((_ is None!3801) lt!667916) lt!667919 (ite (>= (size!15146 (_1!10763 (v!25226 lt!667916))) (size!15146 (_1!10763 (v!25226 lt!667919)))) lt!667916 lt!667919)))))))

(declare-fun call!110003 () Option!3802)

(assert (=> b!1736440 (= lt!667916 call!110003)))

(assert (=> b!1736440 (= lt!667919 (maxPrefix!1572 thiss!24550 (t!161328 rules!3447) lt!667623))))

(declare-fun b!1736441 () Bool)

(declare-fun res!780358 () Bool)

(assert (=> b!1736441 (=> (not res!780358) (not e!1111199))))

(assert (=> b!1736441 (= res!780358 (= (++!5214 (list!7706 (charsOf!2038 (_1!10763 (get!5714 lt!667917)))) (_2!10763 (get!5714 lt!667917))) lt!667623))))

(declare-fun d!531101 () Bool)

(assert (=> d!531101 e!1111200))

(declare-fun res!780352 () Bool)

(assert (=> d!531101 (=> res!780352 e!1111200)))

(assert (=> d!531101 (= res!780352 (isEmpty!11996 lt!667917))))

(assert (=> d!531101 (= lt!667917 e!1111201)))

(declare-fun c!283455 () Bool)

(assert (=> d!531101 (= c!283455 (and ((_ is Cons!19059) rules!3447) ((_ is Nil!19059) (t!161328 rules!3447))))))

(declare-fun lt!667918 () Unit!32971)

(declare-fun lt!667915 () Unit!32971)

(assert (=> d!531101 (= lt!667918 lt!667915)))

(assert (=> d!531101 (isPrefix!1630 lt!667623 lt!667623)))

(declare-fun lemmaIsPrefixRefl!1093 (List!19128 List!19128) Unit!32971)

(assert (=> d!531101 (= lt!667915 (lemmaIsPrefixRefl!1093 lt!667623 lt!667623))))

(declare-fun rulesValidInductive!1128 (LexerInterface!3018 List!19129) Bool)

(assert (=> d!531101 (rulesValidInductive!1128 thiss!24550 rules!3447)))

(assert (=> d!531101 (= (maxPrefix!1572 thiss!24550 rules!3447 lt!667623) lt!667917)))

(declare-fun b!1736442 () Bool)

(declare-fun res!780353 () Bool)

(assert (=> b!1736442 (=> (not res!780353) (not e!1111199))))

(assert (=> b!1736442 (= res!780353 (< (size!15147 (_2!10763 (get!5714 lt!667917))) (size!15147 lt!667623)))))

(declare-fun b!1736443 () Bool)

(assert (=> b!1736443 (= e!1111201 call!110003)))

(declare-fun bm!109998 () Bool)

(assert (=> bm!109998 (= call!110003 (maxPrefixOneRule!948 thiss!24550 (h!24460 rules!3447) lt!667623))))

(declare-fun b!1736444 () Bool)

(declare-fun res!780354 () Bool)

(assert (=> b!1736444 (=> (not res!780354) (not e!1111199))))

(assert (=> b!1736444 (= res!780354 (= (list!7706 (charsOf!2038 (_1!10763 (get!5714 lt!667917)))) (originalCharacters!4203 (_1!10763 (get!5714 lt!667917)))))))

(declare-fun b!1736445 () Bool)

(declare-fun res!780356 () Bool)

(assert (=> b!1736445 (=> (not res!780356) (not e!1111199))))

(assert (=> b!1736445 (= res!780356 (= (value!106259 (_1!10763 (get!5714 lt!667917))) (apply!5194 (transformation!3389 (rule!5379 (_1!10763 (get!5714 lt!667917)))) (seqFromList!2363 (originalCharacters!4203 (_1!10763 (get!5714 lt!667917)))))))))

(declare-fun b!1736446 () Bool)

(assert (=> b!1736446 (= e!1111199 (contains!3411 rules!3447 (rule!5379 (_1!10763 (get!5714 lt!667917)))))))

(declare-fun b!1736447 () Bool)

(declare-fun res!780357 () Bool)

(assert (=> b!1736447 (=> (not res!780357) (not e!1111199))))

(assert (=> b!1736447 (= res!780357 (matchR!2191 (regex!3389 (rule!5379 (_1!10763 (get!5714 lt!667917)))) (list!7706 (charsOf!2038 (_1!10763 (get!5714 lt!667917))))))))

(assert (= (and d!531101 c!283455) b!1736443))

(assert (= (and d!531101 (not c!283455)) b!1736440))

(assert (= (or b!1736443 b!1736440) bm!109998))

(assert (= (and d!531101 (not res!780352)) b!1736439))

(assert (= (and b!1736439 res!780355) b!1736444))

(assert (= (and b!1736444 res!780354) b!1736442))

(assert (= (and b!1736442 res!780353) b!1736441))

(assert (= (and b!1736441 res!780358) b!1736445))

(assert (= (and b!1736445 res!780356) b!1736447))

(assert (= (and b!1736447 res!780357) b!1736446))

(declare-fun m!2146385 () Bool)

(assert (=> b!1736444 m!2146385))

(declare-fun m!2146387 () Bool)

(assert (=> b!1736444 m!2146387))

(assert (=> b!1736444 m!2146387))

(declare-fun m!2146389 () Bool)

(assert (=> b!1736444 m!2146389))

(assert (=> b!1736445 m!2146385))

(declare-fun m!2146391 () Bool)

(assert (=> b!1736445 m!2146391))

(assert (=> b!1736445 m!2146391))

(declare-fun m!2146393 () Bool)

(assert (=> b!1736445 m!2146393))

(assert (=> b!1736447 m!2146385))

(assert (=> b!1736447 m!2146387))

(assert (=> b!1736447 m!2146387))

(assert (=> b!1736447 m!2146389))

(assert (=> b!1736447 m!2146389))

(declare-fun m!2146395 () Bool)

(assert (=> b!1736447 m!2146395))

(assert (=> b!1736441 m!2146385))

(assert (=> b!1736441 m!2146387))

(assert (=> b!1736441 m!2146387))

(assert (=> b!1736441 m!2146389))

(assert (=> b!1736441 m!2146389))

(declare-fun m!2146397 () Bool)

(assert (=> b!1736441 m!2146397))

(declare-fun m!2146399 () Bool)

(assert (=> bm!109998 m!2146399))

(declare-fun m!2146401 () Bool)

(assert (=> d!531101 m!2146401))

(declare-fun m!2146403 () Bool)

(assert (=> d!531101 m!2146403))

(declare-fun m!2146405 () Bool)

(assert (=> d!531101 m!2146405))

(declare-fun m!2146407 () Bool)

(assert (=> d!531101 m!2146407))

(assert (=> b!1736446 m!2146385))

(declare-fun m!2146409 () Bool)

(assert (=> b!1736446 m!2146409))

(declare-fun m!2146411 () Bool)

(assert (=> b!1736440 m!2146411))

(assert (=> b!1736442 m!2146385))

(declare-fun m!2146413 () Bool)

(assert (=> b!1736442 m!2146413))

(assert (=> b!1736442 m!2145921))

(declare-fun m!2146415 () Bool)

(assert (=> b!1736439 m!2146415))

(assert (=> b!1735854 d!531101))

(declare-fun d!531113 () Bool)

(assert (=> d!531113 (isPrefix!1630 lt!667588 (++!5214 lt!667588 (_2!10763 lt!667608)))))

(declare-fun lt!667920 () Unit!32971)

(assert (=> d!531113 (= lt!667920 (choose!10652 lt!667588 (_2!10763 lt!667608)))))

(assert (=> d!531113 (= (lemmaConcatTwoListThenFirstIsPrefix!1140 lt!667588 (_2!10763 lt!667608)) lt!667920)))

(declare-fun bs!402835 () Bool)

(assert (= bs!402835 d!531113))

(assert (=> bs!402835 m!2145581))

(assert (=> bs!402835 m!2145581))

(assert (=> bs!402835 m!2145591))

(declare-fun m!2146417 () Bool)

(assert (=> bs!402835 m!2146417))

(assert (=> b!1735854 d!531113))

(declare-fun d!531115 () Bool)

(declare-fun isBalanced!1981 (Conc!6339) Bool)

(assert (=> d!531115 (= (inv!24681 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584))) (isBalanced!1981 (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584)))))))

(declare-fun bs!402836 () Bool)

(assert (= bs!402836 d!531115))

(declare-fun m!2146419 () Bool)

(assert (=> bs!402836 m!2146419))

(assert (=> tb!103617 d!531115))

(declare-fun b!1736456 () Bool)

(declare-fun e!1111206 () Bool)

(assert (=> b!1736456 (= e!1111206 true)))

(declare-fun d!531117 () Bool)

(assert (=> d!531117 e!1111206))

(assert (= d!531117 b!1736456))

(declare-fun order!11839 () Int)

(declare-fun lambda!69506 () Int)

(declare-fun dynLambda!8960 (Int Int) Int)

(assert (=> b!1736456 (< (dynLambda!8954 order!11831 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) (dynLambda!8960 order!11839 lambda!69506))))

(assert (=> b!1736456 (< (dynLambda!8956 order!11835 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) (dynLambda!8960 order!11839 lambda!69506))))

(assert (=> d!531117 (= (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584) (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (seqFromList!2363 (originalCharacters!4203 (_1!10763 lt!667608)))))))

(declare-fun lt!667923 () Unit!32971)

(declare-fun Forall2of!97 (Int BalanceConc!12622 BalanceConc!12622) Unit!32971)

(assert (=> d!531117 (= lt!667923 (Forall2of!97 lambda!69506 lt!667584 (seqFromList!2363 (originalCharacters!4203 (_1!10763 lt!667608)))))))

(assert (=> d!531117 (= (list!7706 lt!667584) (list!7706 (seqFromList!2363 (originalCharacters!4203 (_1!10763 lt!667608)))))))

(assert (=> d!531117 (= (lemmaEqSameImage!314 (transformation!3389 (rule!5379 (_1!10763 lt!667608))) lt!667584 (seqFromList!2363 (originalCharacters!4203 (_1!10763 lt!667608)))) lt!667923)))

(declare-fun b_lambda!55537 () Bool)

(assert (=> (not b_lambda!55537) (not d!531117)))

(assert (=> d!531117 t!161315))

(declare-fun b_and!128637 () Bool)

(assert (= b_and!128601 (and (=> t!161315 result!124612) b_and!128637)))

(assert (=> d!531117 t!161317))

(declare-fun b_and!128639 () Bool)

(assert (= b_and!128603 (and (=> t!161317 result!124616) b_and!128639)))

(assert (=> d!531117 t!161319))

(declare-fun b_and!128641 () Bool)

(assert (= b_and!128605 (and (=> t!161319 result!124618) b_and!128641)))

(declare-fun b_lambda!55539 () Bool)

(assert (=> (not b_lambda!55539) (not d!531117)))

(declare-fun tb!103659 () Bool)

(declare-fun t!161354 () Bool)

(assert (=> (and b!1735844 (= (toValue!4896 (transformation!3389 (h!24460 rules!3447))) (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) t!161354) tb!103659))

(declare-fun result!124650 () Bool)

(assert (=> tb!103659 (= result!124650 (inv!21 (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (seqFromList!2363 (originalCharacters!4203 (_1!10763 lt!667608))))))))

(declare-fun m!2146421 () Bool)

(assert (=> tb!103659 m!2146421))

(assert (=> d!531117 t!161354))

(declare-fun b_and!128643 () Bool)

(assert (= b_and!128637 (and (=> t!161354 result!124650) b_and!128643)))

(declare-fun tb!103661 () Bool)

(declare-fun t!161356 () Bool)

(assert (=> (and b!1735835 (= (toValue!4896 (transformation!3389 (rule!5379 token!523))) (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) t!161356) tb!103661))

(declare-fun result!124652 () Bool)

(assert (= result!124652 result!124650))

(assert (=> d!531117 t!161356))

(declare-fun b_and!128645 () Bool)

(assert (= b_and!128639 (and (=> t!161356 result!124652) b_and!128645)))

(declare-fun tb!103663 () Bool)

(declare-fun t!161358 () Bool)

(assert (=> (and b!1735828 (= (toValue!4896 (transformation!3389 rule!422)) (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) t!161358) tb!103663))

(declare-fun result!124654 () Bool)

(assert (= result!124654 result!124650))

(assert (=> d!531117 t!161358))

(declare-fun b_and!128647 () Bool)

(assert (= b_and!128641 (and (=> t!161358 result!124654) b_and!128647)))

(assert (=> d!531117 m!2145627))

(assert (=> d!531117 m!2145661))

(declare-fun m!2146423 () Bool)

(assert (=> d!531117 m!2146423))

(assert (=> d!531117 m!2145593))

(assert (=> d!531117 m!2145661))

(declare-fun m!2146425 () Bool)

(assert (=> d!531117 m!2146425))

(assert (=> d!531117 m!2145661))

(declare-fun m!2146427 () Bool)

(assert (=> d!531117 m!2146427))

(assert (=> b!1735855 d!531117))

(declare-fun d!531119 () Bool)

(declare-fun fromListB!1082 (List!19128) BalanceConc!12622)

(assert (=> d!531119 (= (seqFromList!2363 (originalCharacters!4203 (_1!10763 lt!667608))) (fromListB!1082 (originalCharacters!4203 (_1!10763 lt!667608))))))

(declare-fun bs!402837 () Bool)

(assert (= bs!402837 d!531119))

(declare-fun m!2146429 () Bool)

(assert (=> bs!402837 m!2146429))

(assert (=> b!1735855 d!531119))

(declare-fun d!531121 () Bool)

(declare-fun lt!667934 () Int)

(assert (=> d!531121 (= lt!667934 (size!15147 (list!7706 lt!667584)))))

(assert (=> d!531121 (= lt!667934 (size!15150 (c!283329 lt!667584)))))

(assert (=> d!531121 (= (size!15148 lt!667584) lt!667934)))

(declare-fun bs!402838 () Bool)

(assert (= bs!402838 d!531121))

(assert (=> bs!402838 m!2145593))

(assert (=> bs!402838 m!2145593))

(declare-fun m!2146431 () Bool)

(assert (=> bs!402838 m!2146431))

(declare-fun m!2146433 () Bool)

(assert (=> bs!402838 m!2146433))

(assert (=> b!1735855 d!531121))

(declare-fun d!531123 () Bool)

(assert (=> d!531123 (= (apply!5194 (transformation!3389 (rule!5379 (_1!10763 lt!667608))) lt!667584) (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584))))

(declare-fun b_lambda!55541 () Bool)

(assert (=> (not b_lambda!55541) (not d!531123)))

(assert (=> d!531123 t!161315))

(declare-fun b_and!128649 () Bool)

(assert (= b_and!128643 (and (=> t!161315 result!124612) b_and!128649)))

(assert (=> d!531123 t!161317))

(declare-fun b_and!128651 () Bool)

(assert (= b_and!128645 (and (=> t!161317 result!124616) b_and!128651)))

(assert (=> d!531123 t!161319))

(declare-fun b_and!128653 () Bool)

(assert (= b_and!128647 (and (=> t!161319 result!124618) b_and!128653)))

(assert (=> d!531123 m!2145627))

(assert (=> b!1735855 d!531123))

(declare-fun d!531125 () Bool)

(assert (=> d!531125 (= (size!15146 (_1!10763 lt!667608)) (size!15147 (originalCharacters!4203 (_1!10763 lt!667608))))))

(declare-fun Unit!32984 () Unit!32971)

(assert (=> d!531125 (= (lemmaCharactersSize!461 (_1!10763 lt!667608)) Unit!32984)))

(declare-fun bs!402839 () Bool)

(assert (= bs!402839 d!531125))

(declare-fun m!2146435 () Bool)

(assert (=> bs!402839 m!2146435))

(assert (=> b!1735855 d!531125))

(declare-fun b!1736473 () Bool)

(declare-fun e!1111218 () Bool)

(declare-fun lt!667935 () Bool)

(assert (=> b!1736473 (= e!1111218 (not lt!667935))))

(declare-fun d!531127 () Bool)

(declare-fun e!1111215 () Bool)

(assert (=> d!531127 e!1111215))

(declare-fun c!283460 () Bool)

(assert (=> d!531127 (= c!283460 ((_ is EmptyExpr!4717) (regex!3389 (rule!5379 (_1!10763 lt!667608)))))))

(declare-fun e!1111214 () Bool)

(assert (=> d!531127 (= lt!667935 e!1111214)))

(declare-fun c!283458 () Bool)

(assert (=> d!531127 (= c!283458 (isEmpty!11993 lt!667588))))

(assert (=> d!531127 (validRegex!1902 (regex!3389 (rule!5379 (_1!10763 lt!667608))))))

(assert (=> d!531127 (= (matchR!2191 (regex!3389 (rule!5379 (_1!10763 lt!667608))) lt!667588) lt!667935)))

(declare-fun b!1736474 () Bool)

(declare-fun e!1111219 () Bool)

(declare-fun e!1111220 () Bool)

(assert (=> b!1736474 (= e!1111219 e!1111220)))

(declare-fun res!780381 () Bool)

(assert (=> b!1736474 (=> res!780381 e!1111220)))

(declare-fun call!110006 () Bool)

(assert (=> b!1736474 (= res!780381 call!110006)))

(declare-fun b!1736475 () Bool)

(declare-fun res!780377 () Bool)

(declare-fun e!1111217 () Bool)

(assert (=> b!1736475 (=> res!780377 e!1111217)))

(assert (=> b!1736475 (= res!780377 (not ((_ is ElementMatch!4717) (regex!3389 (rule!5379 (_1!10763 lt!667608))))))))

(assert (=> b!1736475 (= e!1111218 e!1111217)))

(declare-fun b!1736476 () Bool)

(assert (=> b!1736476 (= e!1111215 e!1111218)))

(declare-fun c!283459 () Bool)

(assert (=> b!1736476 (= c!283459 ((_ is EmptyLang!4717) (regex!3389 (rule!5379 (_1!10763 lt!667608)))))))

(declare-fun bm!110001 () Bool)

(assert (=> bm!110001 (= call!110006 (isEmpty!11993 lt!667588))))

(declare-fun b!1736477 () Bool)

(assert (=> b!1736477 (= e!1111217 e!1111219)))

(declare-fun res!780376 () Bool)

(assert (=> b!1736477 (=> (not res!780376) (not e!1111219))))

(assert (=> b!1736477 (= res!780376 (not lt!667935))))

(declare-fun b!1736478 () Bool)

(assert (=> b!1736478 (= e!1111214 (matchR!2191 (derivativeStep!1196 (regex!3389 (rule!5379 (_1!10763 lt!667608))) (head!3964 lt!667588)) (tail!2593 lt!667588)))))

(declare-fun b!1736479 () Bool)

(declare-fun res!780382 () Bool)

(declare-fun e!1111216 () Bool)

(assert (=> b!1736479 (=> (not res!780382) (not e!1111216))))

(assert (=> b!1736479 (= res!780382 (not call!110006))))

(declare-fun b!1736480 () Bool)

(assert (=> b!1736480 (= e!1111220 (not (= (head!3964 lt!667588) (c!283328 (regex!3389 (rule!5379 (_1!10763 lt!667608)))))))))

(declare-fun b!1736481 () Bool)

(assert (=> b!1736481 (= e!1111214 (nullable!1428 (regex!3389 (rule!5379 (_1!10763 lt!667608)))))))

(declare-fun b!1736482 () Bool)

(declare-fun res!780378 () Bool)

(assert (=> b!1736482 (=> res!780378 e!1111217)))

(assert (=> b!1736482 (= res!780378 e!1111216)))

(declare-fun res!780375 () Bool)

(assert (=> b!1736482 (=> (not res!780375) (not e!1111216))))

(assert (=> b!1736482 (= res!780375 lt!667935)))

(declare-fun b!1736483 () Bool)

(declare-fun res!780379 () Bool)

(assert (=> b!1736483 (=> (not res!780379) (not e!1111216))))

(assert (=> b!1736483 (= res!780379 (isEmpty!11993 (tail!2593 lt!667588)))))

(declare-fun b!1736484 () Bool)

(assert (=> b!1736484 (= e!1111216 (= (head!3964 lt!667588) (c!283328 (regex!3389 (rule!5379 (_1!10763 lt!667608))))))))

(declare-fun b!1736485 () Bool)

(assert (=> b!1736485 (= e!1111215 (= lt!667935 call!110006))))

(declare-fun b!1736486 () Bool)

(declare-fun res!780380 () Bool)

(assert (=> b!1736486 (=> res!780380 e!1111220)))

(assert (=> b!1736486 (= res!780380 (not (isEmpty!11993 (tail!2593 lt!667588))))))

(assert (= (and d!531127 c!283458) b!1736481))

(assert (= (and d!531127 (not c!283458)) b!1736478))

(assert (= (and d!531127 c!283460) b!1736485))

(assert (= (and d!531127 (not c!283460)) b!1736476))

(assert (= (and b!1736476 c!283459) b!1736473))

(assert (= (and b!1736476 (not c!283459)) b!1736475))

(assert (= (and b!1736475 (not res!780377)) b!1736482))

(assert (= (and b!1736482 res!780375) b!1736479))

(assert (= (and b!1736479 res!780382) b!1736483))

(assert (= (and b!1736483 res!780379) b!1736484))

(assert (= (and b!1736482 (not res!780378)) b!1736477))

(assert (= (and b!1736477 res!780376) b!1736474))

(assert (= (and b!1736474 (not res!780381)) b!1736486))

(assert (= (and b!1736486 (not res!780380)) b!1736480))

(assert (= (or b!1736485 b!1736474 b!1736479) bm!110001))

(assert (=> b!1736478 m!2145877))

(assert (=> b!1736478 m!2145877))

(declare-fun m!2146437 () Bool)

(assert (=> b!1736478 m!2146437))

(assert (=> b!1736478 m!2145881))

(assert (=> b!1736478 m!2146437))

(assert (=> b!1736478 m!2145881))

(declare-fun m!2146439 () Bool)

(assert (=> b!1736478 m!2146439))

(declare-fun m!2146441 () Bool)

(assert (=> b!1736481 m!2146441))

(assert (=> b!1736484 m!2145877))

(assert (=> b!1736480 m!2145877))

(assert (=> d!531127 m!2145885))

(declare-fun m!2146443 () Bool)

(assert (=> d!531127 m!2146443))

(assert (=> b!1736483 m!2145881))

(assert (=> b!1736483 m!2145881))

(assert (=> b!1736483 m!2145887))

(assert (=> b!1736486 m!2145881))

(assert (=> b!1736486 m!2145881))

(assert (=> b!1736486 m!2145887))

(assert (=> bm!110001 m!2145885))

(assert (=> b!1735834 d!531127))

(declare-fun d!531129 () Bool)

(declare-fun res!780392 () Bool)

(declare-fun e!1111226 () Bool)

(assert (=> d!531129 (=> (not res!780392) (not e!1111226))))

(declare-fun rulesValid!1268 (LexerInterface!3018 List!19129) Bool)

(assert (=> d!531129 (= res!780392 (rulesValid!1268 thiss!24550 rules!3447))))

(assert (=> d!531129 (= (rulesInvariant!2687 thiss!24550 rules!3447) e!1111226)))

(declare-fun b!1736498 () Bool)

(declare-datatypes ((List!19135 0))(
  ( (Nil!19065) (Cons!19065 (h!24466 String!21727) (t!161394 List!19135)) )
))
(declare-fun noDuplicateTag!1268 (LexerInterface!3018 List!19129 List!19135) Bool)

(assert (=> b!1736498 (= e!1111226 (noDuplicateTag!1268 thiss!24550 rules!3447 Nil!19065))))

(assert (= (and d!531129 res!780392) b!1736498))

(declare-fun m!2146445 () Bool)

(assert (=> d!531129 m!2146445))

(declare-fun m!2146447 () Bool)

(assert (=> b!1736498 m!2146447))

(assert (=> b!1735856 d!531129))

(declare-fun d!531131 () Bool)

(assert (=> d!531131 (= (isDefined!3145 lt!667599) (not (isEmpty!11996 lt!667599)))))

(declare-fun bs!402840 () Bool)

(assert (= bs!402840 d!531131))

(declare-fun m!2146459 () Bool)

(assert (=> bs!402840 m!2146459))

(assert (=> b!1735851 d!531131))

(declare-fun b!1736499 () Bool)

(declare-fun e!1111228 () Bool)

(declare-fun e!1111227 () Bool)

(assert (=> b!1736499 (= e!1111228 e!1111227)))

(declare-fun res!780396 () Bool)

(assert (=> b!1736499 (=> (not res!780396) (not e!1111227))))

(declare-fun lt!667943 () Option!3802)

(assert (=> b!1736499 (= res!780396 (isDefined!3145 lt!667943))))

(declare-fun b!1736500 () Bool)

(declare-fun e!1111229 () Option!3802)

(declare-fun lt!667942 () Option!3802)

(declare-fun lt!667945 () Option!3802)

(assert (=> b!1736500 (= e!1111229 (ite (and ((_ is None!3801) lt!667942) ((_ is None!3801) lt!667945)) None!3801 (ite ((_ is None!3801) lt!667945) lt!667942 (ite ((_ is None!3801) lt!667942) lt!667945 (ite (>= (size!15146 (_1!10763 (v!25226 lt!667942))) (size!15146 (_1!10763 (v!25226 lt!667945)))) lt!667942 lt!667945)))))))

(declare-fun call!110008 () Option!3802)

(assert (=> b!1736500 (= lt!667942 call!110008)))

(assert (=> b!1736500 (= lt!667945 (maxPrefix!1572 thiss!24550 (t!161328 rules!3447) lt!667625))))

(declare-fun b!1736501 () Bool)

(declare-fun res!780399 () Bool)

(assert (=> b!1736501 (=> (not res!780399) (not e!1111227))))

(assert (=> b!1736501 (= res!780399 (= (++!5214 (list!7706 (charsOf!2038 (_1!10763 (get!5714 lt!667943)))) (_2!10763 (get!5714 lt!667943))) lt!667625))))

(declare-fun d!531133 () Bool)

(assert (=> d!531133 e!1111228))

(declare-fun res!780393 () Bool)

(assert (=> d!531133 (=> res!780393 e!1111228)))

(assert (=> d!531133 (= res!780393 (isEmpty!11996 lt!667943))))

(assert (=> d!531133 (= lt!667943 e!1111229)))

(declare-fun c!283462 () Bool)

(assert (=> d!531133 (= c!283462 (and ((_ is Cons!19059) rules!3447) ((_ is Nil!19059) (t!161328 rules!3447))))))

(declare-fun lt!667944 () Unit!32971)

(declare-fun lt!667941 () Unit!32971)

(assert (=> d!531133 (= lt!667944 lt!667941)))

(assert (=> d!531133 (isPrefix!1630 lt!667625 lt!667625)))

(assert (=> d!531133 (= lt!667941 (lemmaIsPrefixRefl!1093 lt!667625 lt!667625))))

(assert (=> d!531133 (rulesValidInductive!1128 thiss!24550 rules!3447)))

(assert (=> d!531133 (= (maxPrefix!1572 thiss!24550 rules!3447 lt!667625) lt!667943)))

(declare-fun b!1736502 () Bool)

(declare-fun res!780394 () Bool)

(assert (=> b!1736502 (=> (not res!780394) (not e!1111227))))

(assert (=> b!1736502 (= res!780394 (< (size!15147 (_2!10763 (get!5714 lt!667943))) (size!15147 lt!667625)))))

(declare-fun b!1736503 () Bool)

(assert (=> b!1736503 (= e!1111229 call!110008)))

(declare-fun bm!110003 () Bool)

(assert (=> bm!110003 (= call!110008 (maxPrefixOneRule!948 thiss!24550 (h!24460 rules!3447) lt!667625))))

(declare-fun b!1736504 () Bool)

(declare-fun res!780395 () Bool)

(assert (=> b!1736504 (=> (not res!780395) (not e!1111227))))

(assert (=> b!1736504 (= res!780395 (= (list!7706 (charsOf!2038 (_1!10763 (get!5714 lt!667943)))) (originalCharacters!4203 (_1!10763 (get!5714 lt!667943)))))))

(declare-fun b!1736505 () Bool)

(declare-fun res!780397 () Bool)

(assert (=> b!1736505 (=> (not res!780397) (not e!1111227))))

(assert (=> b!1736505 (= res!780397 (= (value!106259 (_1!10763 (get!5714 lt!667943))) (apply!5194 (transformation!3389 (rule!5379 (_1!10763 (get!5714 lt!667943)))) (seqFromList!2363 (originalCharacters!4203 (_1!10763 (get!5714 lt!667943)))))))))

(declare-fun b!1736506 () Bool)

(assert (=> b!1736506 (= e!1111227 (contains!3411 rules!3447 (rule!5379 (_1!10763 (get!5714 lt!667943)))))))

(declare-fun b!1736507 () Bool)

(declare-fun res!780398 () Bool)

(assert (=> b!1736507 (=> (not res!780398) (not e!1111227))))

(assert (=> b!1736507 (= res!780398 (matchR!2191 (regex!3389 (rule!5379 (_1!10763 (get!5714 lt!667943)))) (list!7706 (charsOf!2038 (_1!10763 (get!5714 lt!667943))))))))

(assert (= (and d!531133 c!283462) b!1736503))

(assert (= (and d!531133 (not c!283462)) b!1736500))

(assert (= (or b!1736503 b!1736500) bm!110003))

(assert (= (and d!531133 (not res!780393)) b!1736499))

(assert (= (and b!1736499 res!780396) b!1736504))

(assert (= (and b!1736504 res!780395) b!1736502))

(assert (= (and b!1736502 res!780394) b!1736501))

(assert (= (and b!1736501 res!780399) b!1736505))

(assert (= (and b!1736505 res!780397) b!1736507))

(assert (= (and b!1736507 res!780398) b!1736506))

(declare-fun m!2146483 () Bool)

(assert (=> b!1736504 m!2146483))

(declare-fun m!2146485 () Bool)

(assert (=> b!1736504 m!2146485))

(assert (=> b!1736504 m!2146485))

(declare-fun m!2146487 () Bool)

(assert (=> b!1736504 m!2146487))

(assert (=> b!1736505 m!2146483))

(declare-fun m!2146489 () Bool)

(assert (=> b!1736505 m!2146489))

(assert (=> b!1736505 m!2146489))

(declare-fun m!2146491 () Bool)

(assert (=> b!1736505 m!2146491))

(assert (=> b!1736507 m!2146483))

(assert (=> b!1736507 m!2146485))

(assert (=> b!1736507 m!2146485))

(assert (=> b!1736507 m!2146487))

(assert (=> b!1736507 m!2146487))

(declare-fun m!2146493 () Bool)

(assert (=> b!1736507 m!2146493))

(assert (=> b!1736501 m!2146483))

(assert (=> b!1736501 m!2146485))

(assert (=> b!1736501 m!2146485))

(assert (=> b!1736501 m!2146487))

(assert (=> b!1736501 m!2146487))

(declare-fun m!2146495 () Bool)

(assert (=> b!1736501 m!2146495))

(declare-fun m!2146497 () Bool)

(assert (=> bm!110003 m!2146497))

(declare-fun m!2146499 () Bool)

(assert (=> d!531133 m!2146499))

(declare-fun m!2146501 () Bool)

(assert (=> d!531133 m!2146501))

(declare-fun m!2146503 () Bool)

(assert (=> d!531133 m!2146503))

(assert (=> d!531133 m!2146407))

(assert (=> b!1736506 m!2146483))

(declare-fun m!2146505 () Bool)

(assert (=> b!1736506 m!2146505))

(declare-fun m!2146507 () Bool)

(assert (=> b!1736500 m!2146507))

(assert (=> b!1736502 m!2146483))

(declare-fun m!2146509 () Bool)

(assert (=> b!1736502 m!2146509))

(assert (=> b!1736502 m!2145899))

(declare-fun m!2146511 () Bool)

(assert (=> b!1736499 m!2146511))

(assert (=> b!1735851 d!531133))

(declare-fun d!531139 () Bool)

(assert (=> d!531139 (= (list!7706 lt!667592) (list!7708 (c!283329 lt!667592)))))

(declare-fun bs!402841 () Bool)

(assert (= bs!402841 d!531139))

(declare-fun m!2146513 () Bool)

(assert (=> bs!402841 m!2146513))

(assert (=> b!1735851 d!531139))

(declare-fun d!531141 () Bool)

(declare-fun lt!667946 () BalanceConc!12622)

(assert (=> d!531141 (= (list!7706 lt!667946) (originalCharacters!4203 token!523))))

(assert (=> d!531141 (= lt!667946 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 token!523))) (value!106259 token!523)))))

(assert (=> d!531141 (= (charsOf!2038 token!523) lt!667946)))

(declare-fun b_lambda!55543 () Bool)

(assert (=> (not b_lambda!55543) (not d!531141)))

(assert (=> d!531141 t!161342))

(declare-fun b_and!128655 () Bool)

(assert (= b_and!128631 (and (=> t!161342 result!124638) b_and!128655)))

(assert (=> d!531141 t!161344))

(declare-fun b_and!128657 () Bool)

(assert (= b_and!128633 (and (=> t!161344 result!124640) b_and!128657)))

(assert (=> d!531141 t!161346))

(declare-fun b_and!128659 () Bool)

(assert (= b_and!128635 (and (=> t!161346 result!124642) b_and!128659)))

(declare-fun m!2146515 () Bool)

(assert (=> d!531141 m!2146515))

(assert (=> d!531141 m!2145865))

(assert (=> b!1735851 d!531141))

(declare-fun d!531143 () Bool)

(assert (=> d!531143 (= (inv!24681 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (value!106259 (_1!10763 lt!667608)))) (isBalanced!1981 (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (value!106259 (_1!10763 lt!667608))))))))

(declare-fun bs!402842 () Bool)

(assert (= bs!402842 d!531143))

(declare-fun m!2146517 () Bool)

(assert (=> bs!402842 m!2146517))

(assert (=> tb!103629 d!531143))

(declare-fun d!531145 () Bool)

(assert (=> d!531145 (not (matchR!2191 (regex!3389 (rule!5379 token!523)) lt!667588))))

(declare-fun lt!667954 () Unit!32971)

(declare-fun choose!10658 (LexerInterface!3018 List!19129 Rule!6578 List!19128 List!19128 Rule!6578) Unit!32971)

(assert (=> d!531145 (= lt!667954 (choose!10658 thiss!24550 rules!3447 (rule!5379 (_1!10763 lt!667608)) lt!667588 lt!667623 (rule!5379 token!523)))))

(assert (=> d!531145 (isPrefix!1630 lt!667588 lt!667623)))

(assert (=> d!531145 (= (lemmaMaxPrefNoSmallerRuleMatches!126 thiss!24550 rules!3447 (rule!5379 (_1!10763 lt!667608)) lt!667588 lt!667623 (rule!5379 token!523)) lt!667954)))

(declare-fun bs!402844 () Bool)

(assert (= bs!402844 d!531145))

(assert (=> bs!402844 m!2145639))

(declare-fun m!2146533 () Bool)

(assert (=> bs!402844 m!2146533))

(assert (=> bs!402844 m!2145573))

(assert (=> b!1735853 d!531145))

(declare-fun b!1736524 () Bool)

(declare-fun e!1111243 () Bool)

(declare-fun lt!667955 () Bool)

(assert (=> b!1736524 (= e!1111243 (not lt!667955))))

(declare-fun d!531157 () Bool)

(declare-fun e!1111240 () Bool)

(assert (=> d!531157 e!1111240))

(declare-fun c!283467 () Bool)

(assert (=> d!531157 (= c!283467 ((_ is EmptyExpr!4717) (regex!3389 (rule!5379 token!523))))))

(declare-fun e!1111239 () Bool)

(assert (=> d!531157 (= lt!667955 e!1111239)))

(declare-fun c!283465 () Bool)

(assert (=> d!531157 (= c!283465 (isEmpty!11993 lt!667588))))

(assert (=> d!531157 (validRegex!1902 (regex!3389 (rule!5379 token!523)))))

(assert (=> d!531157 (= (matchR!2191 (regex!3389 (rule!5379 token!523)) lt!667588) lt!667955)))

(declare-fun b!1736525 () Bool)

(declare-fun e!1111244 () Bool)

(declare-fun e!1111245 () Bool)

(assert (=> b!1736525 (= e!1111244 e!1111245)))

(declare-fun res!780418 () Bool)

(assert (=> b!1736525 (=> res!780418 e!1111245)))

(declare-fun call!110010 () Bool)

(assert (=> b!1736525 (= res!780418 call!110010)))

(declare-fun b!1736526 () Bool)

(declare-fun res!780414 () Bool)

(declare-fun e!1111242 () Bool)

(assert (=> b!1736526 (=> res!780414 e!1111242)))

(assert (=> b!1736526 (= res!780414 (not ((_ is ElementMatch!4717) (regex!3389 (rule!5379 token!523)))))))

(assert (=> b!1736526 (= e!1111243 e!1111242)))

(declare-fun b!1736527 () Bool)

(assert (=> b!1736527 (= e!1111240 e!1111243)))

(declare-fun c!283466 () Bool)

(assert (=> b!1736527 (= c!283466 ((_ is EmptyLang!4717) (regex!3389 (rule!5379 token!523))))))

(declare-fun bm!110005 () Bool)

(assert (=> bm!110005 (= call!110010 (isEmpty!11993 lt!667588))))

(declare-fun b!1736528 () Bool)

(assert (=> b!1736528 (= e!1111242 e!1111244)))

(declare-fun res!780413 () Bool)

(assert (=> b!1736528 (=> (not res!780413) (not e!1111244))))

(assert (=> b!1736528 (= res!780413 (not lt!667955))))

(declare-fun b!1736529 () Bool)

(assert (=> b!1736529 (= e!1111239 (matchR!2191 (derivativeStep!1196 (regex!3389 (rule!5379 token!523)) (head!3964 lt!667588)) (tail!2593 lt!667588)))))

(declare-fun b!1736530 () Bool)

(declare-fun res!780419 () Bool)

(declare-fun e!1111241 () Bool)

(assert (=> b!1736530 (=> (not res!780419) (not e!1111241))))

(assert (=> b!1736530 (= res!780419 (not call!110010))))

(declare-fun b!1736531 () Bool)

(assert (=> b!1736531 (= e!1111245 (not (= (head!3964 lt!667588) (c!283328 (regex!3389 (rule!5379 token!523))))))))

(declare-fun b!1736532 () Bool)

(assert (=> b!1736532 (= e!1111239 (nullable!1428 (regex!3389 (rule!5379 token!523))))))

(declare-fun b!1736533 () Bool)

(declare-fun res!780415 () Bool)

(assert (=> b!1736533 (=> res!780415 e!1111242)))

(assert (=> b!1736533 (= res!780415 e!1111241)))

(declare-fun res!780412 () Bool)

(assert (=> b!1736533 (=> (not res!780412) (not e!1111241))))

(assert (=> b!1736533 (= res!780412 lt!667955)))

(declare-fun b!1736534 () Bool)

(declare-fun res!780416 () Bool)

(assert (=> b!1736534 (=> (not res!780416) (not e!1111241))))

(assert (=> b!1736534 (= res!780416 (isEmpty!11993 (tail!2593 lt!667588)))))

(declare-fun b!1736535 () Bool)

(assert (=> b!1736535 (= e!1111241 (= (head!3964 lt!667588) (c!283328 (regex!3389 (rule!5379 token!523)))))))

(declare-fun b!1736536 () Bool)

(assert (=> b!1736536 (= e!1111240 (= lt!667955 call!110010))))

(declare-fun b!1736537 () Bool)

(declare-fun res!780417 () Bool)

(assert (=> b!1736537 (=> res!780417 e!1111245)))

(assert (=> b!1736537 (= res!780417 (not (isEmpty!11993 (tail!2593 lt!667588))))))

(assert (= (and d!531157 c!283465) b!1736532))

(assert (= (and d!531157 (not c!283465)) b!1736529))

(assert (= (and d!531157 c!283467) b!1736536))

(assert (= (and d!531157 (not c!283467)) b!1736527))

(assert (= (and b!1736527 c!283466) b!1736524))

(assert (= (and b!1736527 (not c!283466)) b!1736526))

(assert (= (and b!1736526 (not res!780414)) b!1736533))

(assert (= (and b!1736533 res!780412) b!1736530))

(assert (= (and b!1736530 res!780419) b!1736534))

(assert (= (and b!1736534 res!780416) b!1736535))

(assert (= (and b!1736533 (not res!780415)) b!1736528))

(assert (= (and b!1736528 res!780413) b!1736525))

(assert (= (and b!1736525 (not res!780418)) b!1736537))

(assert (= (and b!1736537 (not res!780417)) b!1736531))

(assert (= (or b!1736536 b!1736525 b!1736530) bm!110005))

(assert (=> b!1736529 m!2145877))

(assert (=> b!1736529 m!2145877))

(declare-fun m!2146557 () Bool)

(assert (=> b!1736529 m!2146557))

(assert (=> b!1736529 m!2145881))

(assert (=> b!1736529 m!2146557))

(assert (=> b!1736529 m!2145881))

(declare-fun m!2146565 () Bool)

(assert (=> b!1736529 m!2146565))

(declare-fun m!2146569 () Bool)

(assert (=> b!1736532 m!2146569))

(assert (=> b!1736535 m!2145877))

(assert (=> b!1736531 m!2145877))

(assert (=> d!531157 m!2145885))

(declare-fun m!2146571 () Bool)

(assert (=> d!531157 m!2146571))

(assert (=> b!1736534 m!2145881))

(assert (=> b!1736534 m!2145881))

(assert (=> b!1736534 m!2145887))

(assert (=> b!1736537 m!2145881))

(assert (=> b!1736537 m!2145881))

(assert (=> b!1736537 m!2145887))

(assert (=> bm!110005 m!2145885))

(assert (=> b!1735853 d!531157))

(declare-fun d!531163 () Bool)

(assert (=> d!531163 (= (isEmpty!11994 rules!3447) ((_ is Nil!19059) rules!3447))))

(assert (=> b!1735827 d!531163))

(declare-fun d!531167 () Bool)

(declare-fun c!283468 () Bool)

(assert (=> d!531167 (= c!283468 ((_ is Node!6339) (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584)))))))

(declare-fun e!1111246 () Bool)

(assert (=> d!531167 (= (inv!24680 (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584)))) e!1111246)))

(declare-fun b!1736538 () Bool)

(assert (=> b!1736538 (= e!1111246 (inv!24684 (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584)))))))

(declare-fun b!1736539 () Bool)

(declare-fun e!1111247 () Bool)

(assert (=> b!1736539 (= e!1111246 e!1111247)))

(declare-fun res!780420 () Bool)

(assert (=> b!1736539 (= res!780420 (not ((_ is Leaf!9254) (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584))))))))

(assert (=> b!1736539 (=> res!780420 e!1111247)))

(declare-fun b!1736540 () Bool)

(assert (=> b!1736540 (= e!1111247 (inv!24685 (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584)))))))

(assert (= (and d!531167 c!283468) b!1736538))

(assert (= (and d!531167 (not c!283468)) b!1736539))

(assert (= (and b!1736539 (not res!780420)) b!1736540))

(declare-fun m!2146579 () Bool)

(assert (=> b!1736538 m!2146579))

(declare-fun m!2146581 () Bool)

(assert (=> b!1736540 m!2146581))

(assert (=> b!1735873 d!531167))

(declare-fun d!531171 () Bool)

(assert (=> d!531171 (= (seqFromList!2363 lt!667588) (fromListB!1082 lt!667588))))

(declare-fun bs!402847 () Bool)

(assert (= bs!402847 d!531171))

(declare-fun m!2146583 () Bool)

(assert (=> bs!402847 m!2146583))

(assert (=> b!1735825 d!531171))

(declare-fun b!1736644 () Bool)

(declare-fun e!1111307 () Option!3802)

(declare-datatypes ((tuple2!18730 0))(
  ( (tuple2!18731 (_1!10767 List!19128) (_2!10767 List!19128)) )
))
(declare-fun lt!667990 () tuple2!18730)

(assert (=> b!1736644 (= e!1111307 (Some!3801 (tuple2!18723 (Token!6345 (apply!5194 (transformation!3389 (rule!5379 (_1!10763 lt!667608))) (seqFromList!2363 (_1!10767 lt!667990))) (rule!5379 (_1!10763 lt!667608)) (size!15148 (seqFromList!2363 (_1!10767 lt!667990))) (_1!10767 lt!667990)) (_2!10767 lt!667990))))))

(declare-fun lt!667992 () Unit!32971)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!403 (Regex!4717 List!19128) Unit!32971)

(assert (=> b!1736644 (= lt!667992 (longestMatchIsAcceptedByMatchOrIsEmpty!403 (regex!3389 (rule!5379 (_1!10763 lt!667608))) lt!667623))))

(declare-fun res!780460 () Bool)

(declare-fun findLongestMatchInner!419 (Regex!4717 List!19128 Int List!19128 List!19128 Int) tuple2!18730)

(assert (=> b!1736644 (= res!780460 (isEmpty!11993 (_1!10767 (findLongestMatchInner!419 (regex!3389 (rule!5379 (_1!10763 lt!667608))) Nil!19058 (size!15147 Nil!19058) lt!667623 lt!667623 (size!15147 lt!667623)))))))

(declare-fun e!1111305 () Bool)

(assert (=> b!1736644 (=> res!780460 e!1111305)))

(assert (=> b!1736644 e!1111305))

(declare-fun lt!667994 () Unit!32971)

(assert (=> b!1736644 (= lt!667994 lt!667992)))

(declare-fun lt!667993 () Unit!32971)

(assert (=> b!1736644 (= lt!667993 (lemmaSemiInverse!535 (transformation!3389 (rule!5379 (_1!10763 lt!667608))) (seqFromList!2363 (_1!10767 lt!667990))))))

(declare-fun b!1736645 () Bool)

(declare-fun res!780461 () Bool)

(declare-fun e!1111308 () Bool)

(assert (=> b!1736645 (=> (not res!780461) (not e!1111308))))

(declare-fun lt!667991 () Option!3802)

(assert (=> b!1736645 (= res!780461 (= (value!106259 (_1!10763 (get!5714 lt!667991))) (apply!5194 (transformation!3389 (rule!5379 (_1!10763 (get!5714 lt!667991)))) (seqFromList!2363 (originalCharacters!4203 (_1!10763 (get!5714 lt!667991)))))))))

(declare-fun b!1736646 () Bool)

(assert (=> b!1736646 (= e!1111307 None!3801)))

(declare-fun b!1736647 () Bool)

(declare-fun res!780457 () Bool)

(assert (=> b!1736647 (=> (not res!780457) (not e!1111308))))

(assert (=> b!1736647 (= res!780457 (= (rule!5379 (_1!10763 (get!5714 lt!667991))) (rule!5379 (_1!10763 lt!667608))))))

(declare-fun b!1736648 () Bool)

(declare-fun res!780463 () Bool)

(assert (=> b!1736648 (=> (not res!780463) (not e!1111308))))

(assert (=> b!1736648 (= res!780463 (< (size!15147 (_2!10763 (get!5714 lt!667991))) (size!15147 lt!667623)))))

(declare-fun b!1736649 () Bool)

(declare-fun e!1111306 () Bool)

(assert (=> b!1736649 (= e!1111306 e!1111308)))

(declare-fun res!780462 () Bool)

(assert (=> b!1736649 (=> (not res!780462) (not e!1111308))))

(assert (=> b!1736649 (= res!780462 (matchR!2191 (regex!3389 (rule!5379 (_1!10763 lt!667608))) (list!7706 (charsOf!2038 (_1!10763 (get!5714 lt!667991))))))))

(declare-fun b!1736650 () Bool)

(assert (=> b!1736650 (= e!1111305 (matchR!2191 (regex!3389 (rule!5379 (_1!10763 lt!667608))) (_1!10767 (findLongestMatchInner!419 (regex!3389 (rule!5379 (_1!10763 lt!667608))) Nil!19058 (size!15147 Nil!19058) lt!667623 lt!667623 (size!15147 lt!667623)))))))

(declare-fun b!1736651 () Bool)

(declare-fun res!780458 () Bool)

(assert (=> b!1736651 (=> (not res!780458) (not e!1111308))))

(assert (=> b!1736651 (= res!780458 (= (++!5214 (list!7706 (charsOf!2038 (_1!10763 (get!5714 lt!667991)))) (_2!10763 (get!5714 lt!667991))) lt!667623))))

(declare-fun d!531173 () Bool)

(assert (=> d!531173 e!1111306))

(declare-fun res!780459 () Bool)

(assert (=> d!531173 (=> res!780459 e!1111306)))

(assert (=> d!531173 (= res!780459 (isEmpty!11996 lt!667991))))

(assert (=> d!531173 (= lt!667991 e!1111307)))

(declare-fun c!283476 () Bool)

(assert (=> d!531173 (= c!283476 (isEmpty!11993 (_1!10767 lt!667990)))))

(declare-fun findLongestMatch!346 (Regex!4717 List!19128) tuple2!18730)

(assert (=> d!531173 (= lt!667990 (findLongestMatch!346 (regex!3389 (rule!5379 (_1!10763 lt!667608))) lt!667623))))

(assert (=> d!531173 (ruleValid!888 thiss!24550 (rule!5379 (_1!10763 lt!667608)))))

(assert (=> d!531173 (= (maxPrefixOneRule!948 thiss!24550 (rule!5379 (_1!10763 lt!667608)) lt!667623) lt!667991)))

(declare-fun b!1736652 () Bool)

(assert (=> b!1736652 (= e!1111308 (= (size!15146 (_1!10763 (get!5714 lt!667991))) (size!15147 (originalCharacters!4203 (_1!10763 (get!5714 lt!667991))))))))

(assert (= (and d!531173 c!283476) b!1736646))

(assert (= (and d!531173 (not c!283476)) b!1736644))

(assert (= (and b!1736644 (not res!780460)) b!1736650))

(assert (= (and d!531173 (not res!780459)) b!1736649))

(assert (= (and b!1736649 res!780462) b!1736651))

(assert (= (and b!1736651 res!780458) b!1736648))

(assert (= (and b!1736648 res!780463) b!1736647))

(assert (= (and b!1736647 res!780457) b!1736645))

(assert (= (and b!1736645 res!780461) b!1736652))

(declare-fun m!2146667 () Bool)

(assert (=> b!1736648 m!2146667))

(declare-fun m!2146669 () Bool)

(assert (=> b!1736648 m!2146669))

(assert (=> b!1736648 m!2145921))

(assert (=> b!1736651 m!2146667))

(declare-fun m!2146671 () Bool)

(assert (=> b!1736651 m!2146671))

(assert (=> b!1736651 m!2146671))

(declare-fun m!2146673 () Bool)

(assert (=> b!1736651 m!2146673))

(assert (=> b!1736651 m!2146673))

(declare-fun m!2146675 () Bool)

(assert (=> b!1736651 m!2146675))

(declare-fun m!2146677 () Bool)

(assert (=> d!531173 m!2146677))

(declare-fun m!2146679 () Bool)

(assert (=> d!531173 m!2146679))

(declare-fun m!2146681 () Bool)

(assert (=> d!531173 m!2146681))

(declare-fun m!2146683 () Bool)

(assert (=> d!531173 m!2146683))

(assert (=> b!1736649 m!2146667))

(assert (=> b!1736649 m!2146671))

(assert (=> b!1736649 m!2146671))

(assert (=> b!1736649 m!2146673))

(assert (=> b!1736649 m!2146673))

(declare-fun m!2146685 () Bool)

(assert (=> b!1736649 m!2146685))

(assert (=> b!1736652 m!2146667))

(declare-fun m!2146687 () Bool)

(assert (=> b!1736652 m!2146687))

(declare-fun m!2146689 () Bool)

(assert (=> b!1736650 m!2146689))

(assert (=> b!1736650 m!2145921))

(assert (=> b!1736650 m!2146689))

(assert (=> b!1736650 m!2145921))

(declare-fun m!2146691 () Bool)

(assert (=> b!1736650 m!2146691))

(declare-fun m!2146693 () Bool)

(assert (=> b!1736650 m!2146693))

(assert (=> b!1736647 m!2146667))

(declare-fun m!2146695 () Bool)

(assert (=> b!1736644 m!2146695))

(assert (=> b!1736644 m!2146689))

(assert (=> b!1736644 m!2146689))

(assert (=> b!1736644 m!2145921))

(assert (=> b!1736644 m!2146691))

(declare-fun m!2146697 () Bool)

(assert (=> b!1736644 m!2146697))

(declare-fun m!2146699 () Bool)

(assert (=> b!1736644 m!2146699))

(assert (=> b!1736644 m!2146697))

(declare-fun m!2146701 () Bool)

(assert (=> b!1736644 m!2146701))

(assert (=> b!1736644 m!2146697))

(assert (=> b!1736644 m!2145921))

(assert (=> b!1736644 m!2146697))

(declare-fun m!2146703 () Bool)

(assert (=> b!1736644 m!2146703))

(declare-fun m!2146705 () Bool)

(assert (=> b!1736644 m!2146705))

(assert (=> b!1736645 m!2146667))

(declare-fun m!2146707 () Bool)

(assert (=> b!1736645 m!2146707))

(assert (=> b!1736645 m!2146707))

(declare-fun m!2146709 () Bool)

(assert (=> b!1736645 m!2146709))

(assert (=> b!1735825 d!531173))

(declare-fun d!531211 () Bool)

(assert (=> d!531211 (= (_2!10763 lt!667608) lt!667614)))

(declare-fun lt!667995 () Unit!32971)

(assert (=> d!531211 (= lt!667995 (choose!10643 lt!667588 (_2!10763 lt!667608) lt!667588 lt!667614 lt!667623))))

(assert (=> d!531211 (isPrefix!1630 lt!667588 lt!667623)))

(assert (=> d!531211 (= (lemmaSamePrefixThenSameSuffix!774 lt!667588 (_2!10763 lt!667608) lt!667588 lt!667614 lt!667623) lt!667995)))

(declare-fun bs!402858 () Bool)

(assert (= bs!402858 d!531211))

(declare-fun m!2146711 () Bool)

(assert (=> bs!402858 m!2146711))

(assert (=> bs!402858 m!2145573))

(assert (=> b!1735825 d!531211))

(declare-fun d!531213 () Bool)

(assert (=> d!531213 (= (apply!5194 (transformation!3389 (rule!5379 (_1!10763 lt!667608))) (seqFromList!2363 lt!667588)) (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (seqFromList!2363 lt!667588)))))

(declare-fun b_lambda!55557 () Bool)

(assert (=> (not b_lambda!55557) (not d!531213)))

(declare-fun t!161372 () Bool)

(declare-fun tb!103677 () Bool)

(assert (=> (and b!1735844 (= (toValue!4896 (transformation!3389 (h!24460 rules!3447))) (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) t!161372) tb!103677))

(declare-fun result!124676 () Bool)

(assert (=> tb!103677 (= result!124676 (inv!21 (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (seqFromList!2363 lt!667588))))))

(declare-fun m!2146713 () Bool)

(assert (=> tb!103677 m!2146713))

(assert (=> d!531213 t!161372))

(declare-fun b_and!128671 () Bool)

(assert (= b_and!128649 (and (=> t!161372 result!124676) b_and!128671)))

(declare-fun tb!103679 () Bool)

(declare-fun t!161374 () Bool)

(assert (=> (and b!1735835 (= (toValue!4896 (transformation!3389 (rule!5379 token!523))) (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) t!161374) tb!103679))

(declare-fun result!124678 () Bool)

(assert (= result!124678 result!124676))

(assert (=> d!531213 t!161374))

(declare-fun b_and!128673 () Bool)

(assert (= b_and!128651 (and (=> t!161374 result!124678) b_and!128673)))

(declare-fun tb!103681 () Bool)

(declare-fun t!161376 () Bool)

(assert (=> (and b!1735828 (= (toValue!4896 (transformation!3389 rule!422)) (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) t!161376) tb!103681))

(declare-fun result!124680 () Bool)

(assert (= result!124680 result!124676))

(assert (=> d!531213 t!161376))

(declare-fun b_and!128675 () Bool)

(assert (= b_and!128653 (and (=> t!161376 result!124680) b_and!128675)))

(assert (=> d!531213 m!2145605))

(declare-fun m!2146715 () Bool)

(assert (=> d!531213 m!2146715))

(assert (=> b!1735825 d!531213))

(declare-fun d!531215 () Bool)

(declare-fun lt!667996 () List!19128)

(assert (=> d!531215 (= (++!5214 lt!667588 lt!667996) lt!667623)))

(declare-fun e!1111310 () List!19128)

(assert (=> d!531215 (= lt!667996 e!1111310)))

(declare-fun c!283477 () Bool)

(assert (=> d!531215 (= c!283477 ((_ is Cons!19058) lt!667588))))

(assert (=> d!531215 (>= (size!15147 lt!667623) (size!15147 lt!667588))))

(assert (=> d!531215 (= (getSuffix!824 lt!667623 lt!667588) lt!667996)))

(declare-fun b!1736653 () Bool)

(assert (=> b!1736653 (= e!1111310 (getSuffix!824 (tail!2593 lt!667623) (t!161327 lt!667588)))))

(declare-fun b!1736654 () Bool)

(assert (=> b!1736654 (= e!1111310 lt!667623)))

(assert (= (and d!531215 c!283477) b!1736653))

(assert (= (and d!531215 (not c!283477)) b!1736654))

(declare-fun m!2146717 () Bool)

(assert (=> d!531215 m!2146717))

(assert (=> d!531215 m!2145921))

(assert (=> d!531215 m!2145615))

(assert (=> b!1736653 m!2145923))

(assert (=> b!1736653 m!2145923))

(declare-fun m!2146719 () Bool)

(assert (=> b!1736653 m!2146719))

(assert (=> b!1735825 d!531215))

(declare-fun d!531217 () Bool)

(declare-fun lt!667999 () Int)

(assert (=> d!531217 (>= lt!667999 0)))

(declare-fun e!1111313 () Int)

(assert (=> d!531217 (= lt!667999 e!1111313)))

(declare-fun c!283480 () Bool)

(assert (=> d!531217 (= c!283480 ((_ is Nil!19058) lt!667588))))

(assert (=> d!531217 (= (size!15147 lt!667588) lt!667999)))

(declare-fun b!1736659 () Bool)

(assert (=> b!1736659 (= e!1111313 0)))

(declare-fun b!1736660 () Bool)

(assert (=> b!1736660 (= e!1111313 (+ 1 (size!15147 (t!161327 lt!667588))))))

(assert (= (and d!531217 c!283480) b!1736659))

(assert (= (and d!531217 (not c!283480)) b!1736660))

(declare-fun m!2146721 () Bool)

(assert (=> b!1736660 m!2146721))

(assert (=> b!1735825 d!531217))

(declare-fun d!531219 () Bool)

(assert (=> d!531219 (= (maxPrefixOneRule!948 thiss!24550 (rule!5379 (_1!10763 lt!667608)) lt!667623) (Some!3801 (tuple2!18723 (Token!6345 (apply!5194 (transformation!3389 (rule!5379 (_1!10763 lt!667608))) (seqFromList!2363 lt!667588)) (rule!5379 (_1!10763 lt!667608)) (size!15147 lt!667588) lt!667588) (_2!10763 lt!667608))))))

(declare-fun lt!668002 () Unit!32971)

(declare-fun choose!10662 (LexerInterface!3018 List!19129 List!19128 List!19128 List!19128 Rule!6578) Unit!32971)

(assert (=> d!531219 (= lt!668002 (choose!10662 thiss!24550 rules!3447 lt!667588 lt!667623 (_2!10763 lt!667608) (rule!5379 (_1!10763 lt!667608))))))

(assert (=> d!531219 (not (isEmpty!11994 rules!3447))))

(assert (=> d!531219 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!347 thiss!24550 rules!3447 lt!667588 lt!667623 (_2!10763 lt!667608) (rule!5379 (_1!10763 lt!667608))) lt!668002)))

(declare-fun bs!402859 () Bool)

(assert (= bs!402859 d!531219))

(assert (=> bs!402859 m!2145615))

(assert (=> bs!402859 m!2145605))

(assert (=> bs!402859 m!2145607))

(assert (=> bs!402859 m!2145635))

(declare-fun m!2146723 () Bool)

(assert (=> bs!402859 m!2146723))

(assert (=> bs!402859 m!2145605))

(assert (=> bs!402859 m!2145617))

(assert (=> b!1735825 d!531219))

(declare-fun b!1736661 () Bool)

(declare-fun e!1111318 () Bool)

(declare-fun lt!668003 () Bool)

(assert (=> b!1736661 (= e!1111318 (not lt!668003))))

(declare-fun d!531221 () Bool)

(declare-fun e!1111315 () Bool)

(assert (=> d!531221 e!1111315))

(declare-fun c!283483 () Bool)

(assert (=> d!531221 (= c!283483 ((_ is EmptyExpr!4717) (regex!3389 lt!667617)))))

(declare-fun e!1111314 () Bool)

(assert (=> d!531221 (= lt!668003 e!1111314)))

(declare-fun c!283481 () Bool)

(assert (=> d!531221 (= c!283481 (isEmpty!11993 (list!7706 (charsOf!2038 (_1!10763 lt!667608)))))))

(assert (=> d!531221 (validRegex!1902 (regex!3389 lt!667617))))

(assert (=> d!531221 (= (matchR!2191 (regex!3389 lt!667617) (list!7706 (charsOf!2038 (_1!10763 lt!667608)))) lt!668003)))

(declare-fun b!1736662 () Bool)

(declare-fun e!1111319 () Bool)

(declare-fun e!1111320 () Bool)

(assert (=> b!1736662 (= e!1111319 e!1111320)))

(declare-fun res!780470 () Bool)

(assert (=> b!1736662 (=> res!780470 e!1111320)))

(declare-fun call!110012 () Bool)

(assert (=> b!1736662 (= res!780470 call!110012)))

(declare-fun b!1736663 () Bool)

(declare-fun res!780466 () Bool)

(declare-fun e!1111317 () Bool)

(assert (=> b!1736663 (=> res!780466 e!1111317)))

(assert (=> b!1736663 (= res!780466 (not ((_ is ElementMatch!4717) (regex!3389 lt!667617))))))

(assert (=> b!1736663 (= e!1111318 e!1111317)))

(declare-fun b!1736664 () Bool)

(assert (=> b!1736664 (= e!1111315 e!1111318)))

(declare-fun c!283482 () Bool)

(assert (=> b!1736664 (= c!283482 ((_ is EmptyLang!4717) (regex!3389 lt!667617)))))

(declare-fun bm!110007 () Bool)

(assert (=> bm!110007 (= call!110012 (isEmpty!11993 (list!7706 (charsOf!2038 (_1!10763 lt!667608)))))))

(declare-fun b!1736665 () Bool)

(assert (=> b!1736665 (= e!1111317 e!1111319)))

(declare-fun res!780465 () Bool)

(assert (=> b!1736665 (=> (not res!780465) (not e!1111319))))

(assert (=> b!1736665 (= res!780465 (not lt!668003))))

(declare-fun b!1736666 () Bool)

(assert (=> b!1736666 (= e!1111314 (matchR!2191 (derivativeStep!1196 (regex!3389 lt!667617) (head!3964 (list!7706 (charsOf!2038 (_1!10763 lt!667608))))) (tail!2593 (list!7706 (charsOf!2038 (_1!10763 lt!667608))))))))

(declare-fun b!1736667 () Bool)

(declare-fun res!780471 () Bool)

(declare-fun e!1111316 () Bool)

(assert (=> b!1736667 (=> (not res!780471) (not e!1111316))))

(assert (=> b!1736667 (= res!780471 (not call!110012))))

(declare-fun b!1736668 () Bool)

(assert (=> b!1736668 (= e!1111320 (not (= (head!3964 (list!7706 (charsOf!2038 (_1!10763 lt!667608)))) (c!283328 (regex!3389 lt!667617)))))))

(declare-fun b!1736669 () Bool)

(assert (=> b!1736669 (= e!1111314 (nullable!1428 (regex!3389 lt!667617)))))

(declare-fun b!1736670 () Bool)

(declare-fun res!780467 () Bool)

(assert (=> b!1736670 (=> res!780467 e!1111317)))

(assert (=> b!1736670 (= res!780467 e!1111316)))

(declare-fun res!780464 () Bool)

(assert (=> b!1736670 (=> (not res!780464) (not e!1111316))))

(assert (=> b!1736670 (= res!780464 lt!668003)))

(declare-fun b!1736671 () Bool)

(declare-fun res!780468 () Bool)

(assert (=> b!1736671 (=> (not res!780468) (not e!1111316))))

(assert (=> b!1736671 (= res!780468 (isEmpty!11993 (tail!2593 (list!7706 (charsOf!2038 (_1!10763 lt!667608))))))))

(declare-fun b!1736672 () Bool)

(assert (=> b!1736672 (= e!1111316 (= (head!3964 (list!7706 (charsOf!2038 (_1!10763 lt!667608)))) (c!283328 (regex!3389 lt!667617))))))

(declare-fun b!1736673 () Bool)

(assert (=> b!1736673 (= e!1111315 (= lt!668003 call!110012))))

(declare-fun b!1736674 () Bool)

(declare-fun res!780469 () Bool)

(assert (=> b!1736674 (=> res!780469 e!1111320)))

(assert (=> b!1736674 (= res!780469 (not (isEmpty!11993 (tail!2593 (list!7706 (charsOf!2038 (_1!10763 lt!667608)))))))))

(assert (= (and d!531221 c!283481) b!1736669))

(assert (= (and d!531221 (not c!283481)) b!1736666))

(assert (= (and d!531221 c!283483) b!1736673))

(assert (= (and d!531221 (not c!283483)) b!1736664))

(assert (= (and b!1736664 c!283482) b!1736661))

(assert (= (and b!1736664 (not c!283482)) b!1736663))

(assert (= (and b!1736663 (not res!780466)) b!1736670))

(assert (= (and b!1736670 res!780464) b!1736667))

(assert (= (and b!1736667 res!780471) b!1736671))

(assert (= (and b!1736671 res!780468) b!1736672))

(assert (= (and b!1736670 (not res!780467)) b!1736665))

(assert (= (and b!1736665 res!780465) b!1736662))

(assert (= (and b!1736662 (not res!780470)) b!1736674))

(assert (= (and b!1736674 (not res!780469)) b!1736668))

(assert (= (or b!1736673 b!1736662 b!1736667) bm!110007))

(assert (=> b!1736666 m!2145709))

(declare-fun m!2146725 () Bool)

(assert (=> b!1736666 m!2146725))

(assert (=> b!1736666 m!2146725))

(declare-fun m!2146727 () Bool)

(assert (=> b!1736666 m!2146727))

(assert (=> b!1736666 m!2145709))

(declare-fun m!2146729 () Bool)

(assert (=> b!1736666 m!2146729))

(assert (=> b!1736666 m!2146727))

(assert (=> b!1736666 m!2146729))

(declare-fun m!2146731 () Bool)

(assert (=> b!1736666 m!2146731))

(declare-fun m!2146733 () Bool)

(assert (=> b!1736669 m!2146733))

(assert (=> b!1736672 m!2145709))

(assert (=> b!1736672 m!2146725))

(assert (=> b!1736668 m!2145709))

(assert (=> b!1736668 m!2146725))

(assert (=> d!531221 m!2145709))

(declare-fun m!2146735 () Bool)

(assert (=> d!531221 m!2146735))

(declare-fun m!2146737 () Bool)

(assert (=> d!531221 m!2146737))

(assert (=> b!1736671 m!2145709))

(assert (=> b!1736671 m!2146729))

(assert (=> b!1736671 m!2146729))

(declare-fun m!2146739 () Bool)

(assert (=> b!1736671 m!2146739))

(assert (=> b!1736674 m!2145709))

(assert (=> b!1736674 m!2146729))

(assert (=> b!1736674 m!2146729))

(assert (=> b!1736674 m!2146739))

(assert (=> bm!110007 m!2145709))

(assert (=> bm!110007 m!2146735))

(assert (=> b!1735847 d!531221))

(declare-fun d!531223 () Bool)

(assert (=> d!531223 (= (list!7706 (charsOf!2038 (_1!10763 lt!667608))) (list!7708 (c!283329 (charsOf!2038 (_1!10763 lt!667608)))))))

(declare-fun bs!402860 () Bool)

(assert (= bs!402860 d!531223))

(declare-fun m!2146741 () Bool)

(assert (=> bs!402860 m!2146741))

(assert (=> b!1735847 d!531223))

(assert (=> b!1735847 d!531077))

(declare-fun d!531225 () Bool)

(assert (=> d!531225 (= (get!5715 lt!667607) (v!25227 lt!667607))))

(assert (=> b!1735847 d!531225))

(declare-fun d!531227 () Bool)

(declare-fun choose!10663 (Int) Bool)

(assert (=> d!531227 (= (Forall!764 lambda!69488) (choose!10663 lambda!69488))))

(declare-fun bs!402861 () Bool)

(assert (= bs!402861 d!531227))

(declare-fun m!2146743 () Bool)

(assert (=> bs!402861 m!2146743))

(assert (=> b!1735826 d!531227))

(declare-fun d!531229 () Bool)

(declare-fun e!1111323 () Bool)

(assert (=> d!531229 e!1111323))

(declare-fun res!780474 () Bool)

(assert (=> d!531229 (=> (not res!780474) (not e!1111323))))

(assert (=> d!531229 (= res!780474 (semiInverseModEq!1340 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))))))

(declare-fun Unit!32986 () Unit!32971)

(assert (=> d!531229 (= (lemmaInv!596 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) Unit!32986)))

(declare-fun b!1736677 () Bool)

(assert (=> b!1736677 (= e!1111323 (equivClasses!1281 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))))))

(assert (= (and d!531229 res!780474) b!1736677))

(declare-fun m!2146745 () Bool)

(assert (=> d!531229 m!2146745))

(declare-fun m!2146747 () Bool)

(assert (=> b!1736677 m!2146747))

(assert (=> b!1735826 d!531229))

(declare-fun d!531231 () Bool)

(declare-fun lt!668004 () Bool)

(assert (=> d!531231 (= lt!668004 (select (content!2730 rules!3447) rule!422))))

(declare-fun e!1111325 () Bool)

(assert (=> d!531231 (= lt!668004 e!1111325)))

(declare-fun res!780476 () Bool)

(assert (=> d!531231 (=> (not res!780476) (not e!1111325))))

(assert (=> d!531231 (= res!780476 ((_ is Cons!19059) rules!3447))))

(assert (=> d!531231 (= (contains!3411 rules!3447 rule!422) lt!668004)))

(declare-fun b!1736678 () Bool)

(declare-fun e!1111324 () Bool)

(assert (=> b!1736678 (= e!1111325 e!1111324)))

(declare-fun res!780475 () Bool)

(assert (=> b!1736678 (=> res!780475 e!1111324)))

(assert (=> b!1736678 (= res!780475 (= (h!24460 rules!3447) rule!422))))

(declare-fun b!1736679 () Bool)

(assert (=> b!1736679 (= e!1111324 (contains!3411 (t!161328 rules!3447) rule!422))))

(assert (= (and d!531231 res!780476) b!1736678))

(assert (= (and b!1736678 (not res!780475)) b!1736679))

(assert (=> d!531231 m!2145769))

(declare-fun m!2146749 () Bool)

(assert (=> d!531231 m!2146749))

(declare-fun m!2146751 () Bool)

(assert (=> b!1736679 m!2146751))

(assert (=> b!1735848 d!531231))

(declare-fun b!1736690 () Bool)

(declare-fun e!1111328 () Bool)

(assert (=> b!1736690 (= e!1111328 tp_is_empty!7677)))

(assert (=> b!1735838 (= tp!494720 e!1111328)))

(declare-fun b!1736692 () Bool)

(declare-fun tp!494798 () Bool)

(assert (=> b!1736692 (= e!1111328 tp!494798)))

(declare-fun b!1736693 () Bool)

(declare-fun tp!494796 () Bool)

(declare-fun tp!494794 () Bool)

(assert (=> b!1736693 (= e!1111328 (and tp!494796 tp!494794))))

(declare-fun b!1736691 () Bool)

(declare-fun tp!494797 () Bool)

(declare-fun tp!494795 () Bool)

(assert (=> b!1736691 (= e!1111328 (and tp!494797 tp!494795))))

(assert (= (and b!1735838 ((_ is ElementMatch!4717) (regex!3389 (h!24460 rules!3447)))) b!1736690))

(assert (= (and b!1735838 ((_ is Concat!8197) (regex!3389 (h!24460 rules!3447)))) b!1736691))

(assert (= (and b!1735838 ((_ is Star!4717) (regex!3389 (h!24460 rules!3447)))) b!1736692))

(assert (= (and b!1735838 ((_ is Union!4717) (regex!3389 (h!24460 rules!3447)))) b!1736693))

(declare-fun b!1736698 () Bool)

(declare-fun e!1111331 () Bool)

(declare-fun tp!494801 () Bool)

(assert (=> b!1736698 (= e!1111331 (and tp_is_empty!7677 tp!494801))))

(assert (=> b!1735849 (= tp!494724 e!1111331)))

(assert (= (and b!1735849 ((_ is Cons!19058) (t!161327 suffix!1421))) b!1736698))

(declare-fun b!1736707 () Bool)

(declare-fun e!1111336 () Bool)

(declare-fun tp!494810 () Bool)

(declare-fun tp!494809 () Bool)

(assert (=> b!1736707 (= e!1111336 (and (inv!24680 (left!15235 (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584))))) tp!494810 (inv!24680 (right!15565 (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584))))) tp!494809))))

(declare-fun b!1736709 () Bool)

(declare-fun e!1111337 () Bool)

(declare-fun tp!494808 () Bool)

(assert (=> b!1736709 (= e!1111337 tp!494808)))

(declare-fun b!1736708 () Bool)

(declare-fun inv!24687 (IArray!12683) Bool)

(assert (=> b!1736708 (= e!1111336 (and (inv!24687 (xs!9215 (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584))))) e!1111337))))

(assert (=> b!1735873 (= tp!494727 (and (inv!24680 (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584)))) e!1111336))))

(assert (= (and b!1735873 ((_ is Node!6339) (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584))))) b!1736707))

(assert (= b!1736708 b!1736709))

(assert (= (and b!1735873 ((_ is Leaf!9254) (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (dynLambda!8958 (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) lt!667584))))) b!1736708))

(declare-fun m!2146753 () Bool)

(assert (=> b!1736707 m!2146753))

(declare-fun m!2146755 () Bool)

(assert (=> b!1736707 m!2146755))

(declare-fun m!2146757 () Bool)

(assert (=> b!1736708 m!2146757))

(assert (=> b!1735873 m!2145537))

(declare-fun e!1111338 () Bool)

(declare-fun b!1736710 () Bool)

(declare-fun tp!494813 () Bool)

(declare-fun tp!494812 () Bool)

(assert (=> b!1736710 (= e!1111338 (and (inv!24680 (left!15235 (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (value!106259 (_1!10763 lt!667608)))))) tp!494813 (inv!24680 (right!15565 (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (value!106259 (_1!10763 lt!667608)))))) tp!494812))))

(declare-fun b!1736712 () Bool)

(declare-fun e!1111339 () Bool)

(declare-fun tp!494811 () Bool)

(assert (=> b!1736712 (= e!1111339 tp!494811)))

(declare-fun b!1736711 () Bool)

(assert (=> b!1736711 (= e!1111338 (and (inv!24687 (xs!9215 (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (value!106259 (_1!10763 lt!667608)))))) e!1111339))))

(assert (=> b!1735876 (= tp!494728 (and (inv!24680 (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (value!106259 (_1!10763 lt!667608))))) e!1111338))))

(assert (= (and b!1735876 ((_ is Node!6339) (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (value!106259 (_1!10763 lt!667608)))))) b!1736710))

(assert (= b!1736711 b!1736712))

(assert (= (and b!1735876 ((_ is Leaf!9254) (c!283329 (dynLambda!8957 (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))) (value!106259 (_1!10763 lt!667608)))))) b!1736711))

(declare-fun m!2146759 () Bool)

(assert (=> b!1736710 m!2146759))

(declare-fun m!2146761 () Bool)

(assert (=> b!1736710 m!2146761))

(declare-fun m!2146763 () Bool)

(assert (=> b!1736711 m!2146763))

(assert (=> b!1735876 m!2145543))

(declare-fun b!1736723 () Bool)

(declare-fun b_free!47635 () Bool)

(declare-fun b_next!48339 () Bool)

(assert (=> b!1736723 (= b_free!47635 (not b_next!48339))))

(declare-fun t!161378 () Bool)

(declare-fun tb!103683 () Bool)

(assert (=> (and b!1736723 (= (toValue!4896 (transformation!3389 (h!24460 (t!161328 rules!3447)))) (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) t!161378) tb!103683))

(declare-fun result!124690 () Bool)

(assert (= result!124690 result!124612))

(assert (=> d!531117 t!161378))

(assert (=> d!531123 t!161378))

(assert (=> b!1735822 t!161378))

(assert (=> d!530915 t!161378))

(declare-fun t!161380 () Bool)

(declare-fun tb!103685 () Bool)

(assert (=> (and b!1736723 (= (toValue!4896 (transformation!3389 (h!24460 (t!161328 rules!3447)))) (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) t!161380) tb!103685))

(declare-fun result!124692 () Bool)

(assert (= result!124692 result!124650))

(assert (=> d!531117 t!161380))

(declare-fun tb!103687 () Bool)

(declare-fun t!161382 () Bool)

(assert (=> (and b!1736723 (= (toValue!4896 (transformation!3389 (h!24460 (t!161328 rules!3447)))) (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) t!161382) tb!103687))

(declare-fun result!124694 () Bool)

(assert (= result!124694 result!124676))

(assert (=> d!531213 t!161382))

(declare-fun tp!494823 () Bool)

(declare-fun b_and!128677 () Bool)

(assert (=> b!1736723 (= tp!494823 (and (=> t!161380 result!124692) (=> t!161378 result!124690) (=> t!161382 result!124694) b_and!128677))))

(declare-fun b_free!47637 () Bool)

(declare-fun b_next!48341 () Bool)

(assert (=> b!1736723 (= b_free!47637 (not b_next!48341))))

(declare-fun tb!103689 () Bool)

(declare-fun t!161384 () Bool)

(assert (=> (and b!1736723 (= (toChars!4755 (transformation!3389 (h!24460 (t!161328 rules!3447)))) (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) t!161384) tb!103689))

(declare-fun result!124696 () Bool)

(assert (= result!124696 result!124620))

(assert (=> b!1735829 t!161384))

(declare-fun tb!103691 () Bool)

(declare-fun t!161386 () Bool)

(assert (=> (and b!1736723 (= (toChars!4755 (transformation!3389 (h!24460 (t!161328 rules!3447)))) (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608))))) t!161386) tb!103691))

(declare-fun result!124698 () Bool)

(assert (= result!124698 result!124604))

(assert (=> d!530915 t!161386))

(assert (=> b!1735822 t!161386))

(declare-fun tb!103693 () Bool)

(declare-fun t!161388 () Bool)

(assert (=> (and b!1736723 (= (toChars!4755 (transformation!3389 (h!24460 (t!161328 rules!3447)))) (toChars!4755 (transformation!3389 (rule!5379 token!523)))) t!161388) tb!103693))

(declare-fun result!124700 () Bool)

(assert (= result!124700 result!124638))

(assert (=> b!1736036 t!161388))

(assert (=> d!531077 t!161384))

(assert (=> d!531141 t!161388))

(declare-fun b_and!128679 () Bool)

(declare-fun tp!494824 () Bool)

(assert (=> b!1736723 (= tp!494824 (and (=> t!161388 result!124700) (=> t!161386 result!124698) (=> t!161384 result!124696) b_and!128679))))

(declare-fun e!1111349 () Bool)

(assert (=> b!1736723 (= e!1111349 (and tp!494823 tp!494824))))

(declare-fun e!1111348 () Bool)

(declare-fun tp!494822 () Bool)

(declare-fun b!1736722 () Bool)

(assert (=> b!1736722 (= e!1111348 (and tp!494822 (inv!24673 (tag!3721 (h!24460 (t!161328 rules!3447)))) (inv!24678 (transformation!3389 (h!24460 (t!161328 rules!3447)))) e!1111349))))

(declare-fun b!1736721 () Bool)

(declare-fun e!1111350 () Bool)

(declare-fun tp!494825 () Bool)

(assert (=> b!1736721 (= e!1111350 (and e!1111348 tp!494825))))

(assert (=> b!1735830 (= tp!494721 e!1111350)))

(assert (= b!1736722 b!1736723))

(assert (= b!1736721 b!1736722))

(assert (= (and b!1735830 ((_ is Cons!19059) (t!161328 rules!3447))) b!1736721))

(declare-fun m!2146765 () Bool)

(assert (=> b!1736722 m!2146765))

(declare-fun m!2146767 () Bool)

(assert (=> b!1736722 m!2146767))

(declare-fun b!1736724 () Bool)

(declare-fun e!1111352 () Bool)

(assert (=> b!1736724 (= e!1111352 tp_is_empty!7677)))

(assert (=> b!1735857 (= tp!494722 e!1111352)))

(declare-fun b!1736726 () Bool)

(declare-fun tp!494830 () Bool)

(assert (=> b!1736726 (= e!1111352 tp!494830)))

(declare-fun b!1736727 () Bool)

(declare-fun tp!494828 () Bool)

(declare-fun tp!494826 () Bool)

(assert (=> b!1736727 (= e!1111352 (and tp!494828 tp!494826))))

(declare-fun b!1736725 () Bool)

(declare-fun tp!494829 () Bool)

(declare-fun tp!494827 () Bool)

(assert (=> b!1736725 (= e!1111352 (and tp!494829 tp!494827))))

(assert (= (and b!1735857 ((_ is ElementMatch!4717) (regex!3389 (rule!5379 token!523)))) b!1736724))

(assert (= (and b!1735857 ((_ is Concat!8197) (regex!3389 (rule!5379 token!523)))) b!1736725))

(assert (= (and b!1735857 ((_ is Star!4717) (regex!3389 (rule!5379 token!523)))) b!1736726))

(assert (= (and b!1735857 ((_ is Union!4717) (regex!3389 (rule!5379 token!523)))) b!1736727))

(declare-fun b!1736728 () Bool)

(declare-fun e!1111353 () Bool)

(declare-fun tp!494831 () Bool)

(assert (=> b!1736728 (= e!1111353 (and tp_is_empty!7677 tp!494831))))

(assert (=> b!1735836 (= tp!494723 e!1111353)))

(assert (= (and b!1735836 ((_ is Cons!19058) (originalCharacters!4203 token!523))) b!1736728))

(declare-fun b!1736729 () Bool)

(declare-fun e!1111354 () Bool)

(assert (=> b!1736729 (= e!1111354 tp_is_empty!7677)))

(assert (=> b!1735821 (= tp!494716 e!1111354)))

(declare-fun b!1736731 () Bool)

(declare-fun tp!494836 () Bool)

(assert (=> b!1736731 (= e!1111354 tp!494836)))

(declare-fun b!1736732 () Bool)

(declare-fun tp!494834 () Bool)

(declare-fun tp!494832 () Bool)

(assert (=> b!1736732 (= e!1111354 (and tp!494834 tp!494832))))

(declare-fun b!1736730 () Bool)

(declare-fun tp!494835 () Bool)

(declare-fun tp!494833 () Bool)

(assert (=> b!1736730 (= e!1111354 (and tp!494835 tp!494833))))

(assert (= (and b!1735821 ((_ is ElementMatch!4717) (regex!3389 rule!422))) b!1736729))

(assert (= (and b!1735821 ((_ is Concat!8197) (regex!3389 rule!422))) b!1736730))

(assert (= (and b!1735821 ((_ is Star!4717) (regex!3389 rule!422))) b!1736731))

(assert (= (and b!1735821 ((_ is Union!4717) (regex!3389 rule!422))) b!1736732))

(declare-fun b_lambda!55559 () Bool)

(assert (= b_lambda!55507 (or (and b!1735844 b_free!47621 (= (toChars!4755 (transformation!3389 (h!24460 rules!3447))) (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))))) (and b!1735835 b_free!47625 (= (toChars!4755 (transformation!3389 (rule!5379 token!523))) (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))))) (and b!1735828 b_free!47629 (= (toChars!4755 (transformation!3389 rule!422)) (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))))) (and b!1736723 b_free!47637 (= (toChars!4755 (transformation!3389 (h!24460 (t!161328 rules!3447)))) (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))))) b_lambda!55559)))

(declare-fun b_lambda!55561 () Bool)

(assert (= b_lambda!55511 (or (and b!1735844 b_free!47621 (= (toChars!4755 (transformation!3389 (h!24460 rules!3447))) (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))))) (and b!1735835 b_free!47625 (= (toChars!4755 (transformation!3389 (rule!5379 token!523))) (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))))) (and b!1735828 b_free!47629 (= (toChars!4755 (transformation!3389 rule!422)) (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))))) (and b!1736723 b_free!47637 (= (toChars!4755 (transformation!3389 (h!24460 (t!161328 rules!3447)))) (toChars!4755 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))))) b_lambda!55561)))

(declare-fun b_lambda!55563 () Bool)

(assert (= b_lambda!55543 (or (and b!1735844 b_free!47621 (= (toChars!4755 (transformation!3389 (h!24460 rules!3447))) (toChars!4755 (transformation!3389 (rule!5379 token!523))))) (and b!1735835 b_free!47625) (and b!1735828 b_free!47629 (= (toChars!4755 (transformation!3389 rule!422)) (toChars!4755 (transformation!3389 (rule!5379 token!523))))) (and b!1736723 b_free!47637 (= (toChars!4755 (transformation!3389 (h!24460 (t!161328 rules!3447)))) (toChars!4755 (transformation!3389 (rule!5379 token!523))))) b_lambda!55563)))

(declare-fun b_lambda!55565 () Bool)

(assert (= b_lambda!55527 (or (and b!1735844 b_free!47621 (= (toChars!4755 (transformation!3389 (h!24460 rules!3447))) (toChars!4755 (transformation!3389 (rule!5379 token!523))))) (and b!1735835 b_free!47625) (and b!1735828 b_free!47629 (= (toChars!4755 (transformation!3389 rule!422)) (toChars!4755 (transformation!3389 (rule!5379 token!523))))) (and b!1736723 b_free!47637 (= (toChars!4755 (transformation!3389 (h!24460 (t!161328 rules!3447)))) (toChars!4755 (transformation!3389 (rule!5379 token!523))))) b_lambda!55565)))

(declare-fun b_lambda!55567 () Bool)

(assert (= b_lambda!55509 (or (and b!1735844 b_free!47619 (= (toValue!4896 (transformation!3389 (h!24460 rules!3447))) (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))))) (and b!1735835 b_free!47623 (= (toValue!4896 (transformation!3389 (rule!5379 token!523))) (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))))) (and b!1735828 b_free!47627 (= (toValue!4896 (transformation!3389 rule!422)) (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))))) (and b!1736723 b_free!47635 (= (toValue!4896 (transformation!3389 (h!24460 (t!161328 rules!3447)))) (toValue!4896 (transformation!3389 (rule!5379 (_1!10763 lt!667608)))))) b_lambda!55567)))

(check-sat (not d!531157) (not b!1736498) (not b!1736239) (not b!1736480) (not b!1736652) (not b!1736507) (not b!1736529) (not d!531139) (not b!1735957) b_and!128671 (not tb!103677) (not b_lambda!55563) (not d!531077) (not d!531145) (not b!1736441) (not b!1736036) (not b_lambda!55541) (not b!1736711) (not d!531227) (not b_next!48331) (not bm!109990) (not b_next!48329) (not b!1736645) (not d!531229) (not b!1736439) (not b!1736721) (not b!1736189) (not b!1736338) (not b!1736120) (not b_lambda!55525) (not b!1736478) (not d!531127) (not d!531119) b_and!128655 (not bm!109991) (not b!1736331) (not tb!103647) (not b!1736502) (not b!1736012) (not b!1736483) (not d!531099) (not b!1736040) (not b!1736236) (not b_lambda!55539) b_and!128679 (not b_next!48333) (not b!1735953) (not d!531083) (not d!530919) (not d!531115) (not d!531121) (not d!531117) (not b!1736054) (not d!531113) (not b!1736217) (not b!1736442) (not b_lambda!55535) (not b!1736122) (not b_lambda!55567) (not d!530941) (not b_lambda!55557) (not d!530943) (not d!530913) (not b_next!48327) (not b!1736212) (not d!531035) (not b!1736540) (not b!1736651) (not b!1736727) (not b!1736499) (not b!1736257) (not d!531223) (not d!530925) (not b!1736447) (not d!531045) (not b!1736015) (not b!1736444) (not d!530945) (not b_next!48341) (not b!1736334) (not b_next!48325) (not b!1736440) (not bm!109989) (not b!1736264) (not b!1736052) (not b!1736210) (not d!531025) (not d!531221) (not d!531219) (not b!1736732) (not b!1736722) (not b!1736340) (not b!1736016) (not b!1736710) (not b!1736336) (not b!1736125) (not b!1736677) (not b!1736163) (not b!1736105) (not d!530923) (not b!1736647) (not bm!110001) (not b!1736501) (not d!531003) (not b!1736238) (not b!1736361) (not b!1736692) (not d!531043) (not b!1736672) (not b!1736500) (not b_next!48323) b_and!128677 (not b_lambda!55537) (not d!531085) (not b!1736128) (not b!1736265) (not b!1736698) (not b!1736649) (not b!1736213) (not b!1736339) (not b!1736049) (not b!1736535) (not d!530975) (not d!530931) (not d!531017) (not b!1736728) (not b!1735942) (not b_next!48339) (not b!1736079) (not b!1736531) (not b!1736650) (not bm!110007) (not b!1736064) (not d!531231) (not d!530927) (not b!1736330) (not d!531211) (not d!531215) (not d!531001) (not b!1736364) (not b!1736329) (not b!1736164) (not b!1736730) (not d!530921) (not b!1736731) (not b!1736504) (not b!1736708) (not b!1736010) (not b_lambda!55523) (not b!1736387) (not b!1736691) (not b!1736384) (not d!531031) (not b!1736065) (not b!1736671) (not b!1736532) (not b!1736258) (not bm!109998) (not b!1736363) (not b!1736679) (not d!531047) (not d!531143) (not b!1736101) b_and!128657 (not bm!110005) (not b!1736693) (not b!1736218) b_and!128675 (not b!1736486) (not d!531173) (not b!1736445) (not b!1736534) (not d!530917) (not b!1736669) (not b!1736644) (not b!1736484) (not b!1736538) (not d!530959) (not b!1736256) (not b!1736505) b_and!128659 (not b!1736481) (not d!531171) (not b!1736709) (not b!1736668) (not b!1736383) (not b!1736099) (not b!1735873) (not b!1736712) (not b!1736666) (not b!1736013) tp_is_empty!7677 (not b_lambda!55565) (not d!530915) b_and!128673 (not b!1736707) (not b!1735876) (not b!1736386) (not b!1736726) (not d!531131) (not b!1736725) (not b!1736235) (not b!1736103) (not b!1736191) (not b!1736660) (not b!1736653) (not b!1736100) (not b!1736126) (not d!531087) (not b!1736506) (not d!530937) (not b!1736123) (not d!530991) (not d!531125) (not b!1736018) (not b!1736674) (not d!530977) (not d!531129) (not b!1736104) (not b!1736648) (not b!1736446) (not d!530951) (not b_lambda!55561) (not b!1736145) (not d!531101) (not d!531141) (not b!1736051) (not d!530973) (not b!1736335) (not d!531133) (not b!1736192) (not d!530999) (not b!1736537) (not b!1736037) (not bm!110003) (not d!530947) (not d!530967) (not d!530985) (not b!1736048) (not b!1736046) (not tb!103659) (not b_lambda!55559) (not d!531073) (not b!1736215))
(check-sat b_and!128671 (not b_next!48331) (not b_next!48329) b_and!128655 (not b_next!48327) (not b_next!48339) b_and!128657 b_and!128675 b_and!128659 b_and!128673 b_and!128679 (not b_next!48333) (not b_next!48341) (not b_next!48325) (not b_next!48323) b_and!128677)
