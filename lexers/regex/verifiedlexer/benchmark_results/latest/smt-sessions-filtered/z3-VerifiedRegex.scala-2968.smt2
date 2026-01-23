; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!176294 () Bool)

(assert start!176294)

(declare-fun b!1775092 () Bool)

(declare-fun b_free!49175 () Bool)

(declare-fun b_next!49879 () Bool)

(assert (=> b!1775092 (= b_free!49175 (not b_next!49879))))

(declare-fun tp!503024 () Bool)

(declare-fun b_and!135399 () Bool)

(assert (=> b!1775092 (= tp!503024 b_and!135399)))

(declare-fun b_free!49177 () Bool)

(declare-fun b_next!49881 () Bool)

(assert (=> b!1775092 (= b_free!49177 (not b_next!49881))))

(declare-fun tp!503019 () Bool)

(declare-fun b_and!135401 () Bool)

(assert (=> b!1775092 (= tp!503019 b_and!135401)))

(declare-fun b!1775084 () Bool)

(declare-fun b_free!49179 () Bool)

(declare-fun b_next!49883 () Bool)

(assert (=> b!1775084 (= b_free!49179 (not b_next!49883))))

(declare-fun tp!503023 () Bool)

(declare-fun b_and!135403 () Bool)

(assert (=> b!1775084 (= tp!503023 b_and!135403)))

(declare-fun b_free!49181 () Bool)

(declare-fun b_next!49885 () Bool)

(assert (=> b!1775084 (= b_free!49181 (not b_next!49885))))

(declare-fun tp!503021 () Bool)

(declare-fun b_and!135405 () Bool)

(assert (=> b!1775084 (= tp!503021 b_and!135405)))

(declare-fun b!1775093 () Bool)

(declare-fun b_free!49183 () Bool)

(declare-fun b_next!49887 () Bool)

(assert (=> b!1775093 (= b_free!49183 (not b_next!49887))))

(declare-fun tp!503018 () Bool)

(declare-fun b_and!135407 () Bool)

(assert (=> b!1775093 (= tp!503018 b_and!135407)))

(declare-fun b_free!49185 () Bool)

(declare-fun b_next!49889 () Bool)

(assert (=> b!1775093 (= b_free!49185 (not b_next!49889))))

(declare-fun tp!503020 () Bool)

(declare-fun b_and!135409 () Bool)

(assert (=> b!1775093 (= tp!503020 b_and!135409)))

(declare-fun b!1775112 () Bool)

(declare-fun e!1135921 () Bool)

(assert (=> b!1775112 (= e!1135921 true)))

(declare-fun b!1775111 () Bool)

(declare-fun e!1135920 () Bool)

(assert (=> b!1775111 (= e!1135920 e!1135921)))

(declare-fun b!1775110 () Bool)

(declare-fun e!1135919 () Bool)

(assert (=> b!1775110 (= e!1135919 e!1135920)))

(declare-fun b!1775099 () Bool)

(assert (=> b!1775099 e!1135919))

(assert (= b!1775111 b!1775112))

(assert (= b!1775110 b!1775111))

(assert (= b!1775099 b!1775110))

(declare-datatypes ((List!19613 0))(
  ( (Nil!19543) (Cons!19543 (h!24944 (_ BitVec 16)) (t!165828 List!19613)) )
))
(declare-datatypes ((TokenValue!3587 0))(
  ( (FloatLiteralValue!7174 (text!25554 List!19613)) (TokenValueExt!3586 (__x!12476 Int)) (Broken!17935 (value!109311 List!19613)) (Object!3656) (End!3587) (Def!3587) (Underscore!3587) (Match!3587) (Else!3587) (Error!3587) (Case!3587) (If!3587) (Extends!3587) (Abstract!3587) (Class!3587) (Val!3587) (DelimiterValue!7174 (del!3647 List!19613)) (KeywordValue!3593 (value!109312 List!19613)) (CommentValue!7174 (value!109313 List!19613)) (WhitespaceValue!7174 (value!109314 List!19613)) (IndentationValue!3587 (value!109315 List!19613)) (String!22266) (Int32!3587) (Broken!17936 (value!109316 List!19613)) (Boolean!3588) (Unit!33769) (OperatorValue!3590 (op!3647 List!19613)) (IdentifierValue!7174 (value!109317 List!19613)) (IdentifierValue!7175 (value!109318 List!19613)) (WhitespaceValue!7175 (value!109319 List!19613)) (True!7174) (False!7174) (Broken!17937 (value!109320 List!19613)) (Broken!17938 (value!109321 List!19613)) (True!7175) (RightBrace!3587) (RightBracket!3587) (Colon!3587) (Null!3587) (Comma!3587) (LeftBracket!3587) (False!7175) (LeftBrace!3587) (ImaginaryLiteralValue!3587 (text!25555 List!19613)) (StringLiteralValue!10761 (value!109322 List!19613)) (EOFValue!3587 (value!109323 List!19613)) (IdentValue!3587 (value!109324 List!19613)) (DelimiterValue!7175 (value!109325 List!19613)) (DedentValue!3587 (value!109326 List!19613)) (NewLineValue!3587 (value!109327 List!19613)) (IntegerValue!10761 (value!109328 (_ BitVec 32)) (text!25556 List!19613)) (IntegerValue!10762 (value!109329 Int) (text!25557 List!19613)) (Times!3587) (Or!3587) (Equal!3587) (Minus!3587) (Broken!17939 (value!109330 List!19613)) (And!3587) (Div!3587) (LessEqual!3587) (Mod!3587) (Concat!8412) (Not!3587) (Plus!3587) (SpaceValue!3587 (value!109331 List!19613)) (IntegerValue!10763 (value!109332 Int) (text!25558 List!19613)) (StringLiteralValue!10762 (text!25559 List!19613)) (FloatLiteralValue!7175 (text!25560 List!19613)) (BytesLiteralValue!3587 (value!109333 List!19613)) (CommentValue!7175 (value!109334 List!19613)) (StringLiteralValue!10763 (value!109335 List!19613)) (ErrorTokenValue!3587 (msg!3648 List!19613)) )
))
(declare-datatypes ((C!9824 0))(
  ( (C!9825 (val!5508 Int)) )
))
(declare-datatypes ((List!19614 0))(
  ( (Nil!19544) (Cons!19544 (h!24945 C!9824) (t!165829 List!19614)) )
))
(declare-datatypes ((Regex!4825 0))(
  ( (ElementMatch!4825 (c!288994 C!9824)) (Concat!8413 (regOne!10162 Regex!4825) (regTwo!10162 Regex!4825)) (EmptyExpr!4825) (Star!4825 (reg!5154 Regex!4825)) (EmptyLang!4825) (Union!4825 (regOne!10163 Regex!4825) (regTwo!10163 Regex!4825)) )
))
(declare-datatypes ((String!22267 0))(
  ( (String!22268 (value!109336 String)) )
))
(declare-datatypes ((IArray!13007 0))(
  ( (IArray!13008 (innerList!6561 List!19614)) )
))
(declare-datatypes ((Conc!6501 0))(
  ( (Node!6501 (left!15655 Conc!6501) (right!15985 Conc!6501) (csize!13232 Int) (cheight!6712 Int)) (Leaf!9470 (xs!9377 IArray!13007) (csize!13233 Int)) (Empty!6501) )
))
(declare-datatypes ((BalanceConc!12946 0))(
  ( (BalanceConc!12947 (c!288995 Conc!6501)) )
))
(declare-datatypes ((TokenValueInjection!6834 0))(
  ( (TokenValueInjection!6835 (toValue!5024 Int) (toChars!4883 Int)) )
))
(declare-datatypes ((Rule!6794 0))(
  ( (Rule!6795 (regex!3497 Regex!4825) (tag!3883 String!22267) (isSeparator!3497 Bool) (transformation!3497 TokenValueInjection!6834)) )
))
(declare-datatypes ((Token!6560 0))(
  ( (Token!6561 (value!109337 TokenValue!3587) (rule!5553 Rule!6794) (size!15526 Int) (originalCharacters!4311 List!19614)) )
))
(declare-datatypes ((tuple2!19146 0))(
  ( (tuple2!19147 (_1!10975 Token!6560) (_2!10975 List!19614)) )
))
(declare-fun lt!688074 () tuple2!19146)

(declare-fun order!12529 () Int)

(declare-fun order!12527 () Int)

(declare-fun lambda!70526 () Int)

(declare-fun dynLambda!9530 (Int Int) Int)

(declare-fun dynLambda!9531 (Int Int) Int)

(assert (=> b!1775112 (< (dynLambda!9530 order!12527 (toValue!5024 (transformation!3497 (rule!5553 (_1!10975 lt!688074))))) (dynLambda!9531 order!12529 lambda!70526))))

(declare-fun order!12531 () Int)

(declare-fun dynLambda!9532 (Int Int) Int)

(assert (=> b!1775112 (< (dynLambda!9532 order!12531 (toChars!4883 (transformation!3497 (rule!5553 (_1!10975 lt!688074))))) (dynLambda!9531 order!12529 lambda!70526))))

(declare-fun b!1775069 () Bool)

(declare-fun rule!422 () Rule!6794)

(declare-fun e!1135895 () Bool)

(declare-fun e!1135911 () Bool)

(declare-fun tp!503015 () Bool)

(declare-fun inv!25408 (String!22267) Bool)

(declare-fun inv!25413 (TokenValueInjection!6834) Bool)

(assert (=> b!1775069 (= e!1135911 (and tp!503015 (inv!25408 (tag!3883 rule!422)) (inv!25413 (transformation!3497 rule!422)) e!1135895))))

(declare-fun b!1775070 () Bool)

(declare-fun e!1135910 () Bool)

(declare-fun e!1135902 () Bool)

(assert (=> b!1775070 (= e!1135910 (not e!1135902))))

(declare-fun res!799640 () Bool)

(assert (=> b!1775070 (=> res!799640 e!1135902)))

(declare-fun lt!688075 () List!19614)

(declare-fun matchR!2298 (Regex!4825 List!19614) Bool)

(assert (=> b!1775070 (= res!799640 (not (matchR!2298 (regex!3497 rule!422) lt!688075)))))

(declare-datatypes ((LexerInterface!3126 0))(
  ( (LexerInterfaceExt!3123 (__x!12477 Int)) (Lexer!3124) )
))
(declare-fun thiss!24550 () LexerInterface!3126)

(declare-fun ruleValid!995 (LexerInterface!3126 Rule!6794) Bool)

(assert (=> b!1775070 (ruleValid!995 thiss!24550 rule!422)))

(declare-datatypes ((List!19615 0))(
  ( (Nil!19545) (Cons!19545 (h!24946 Rule!6794) (t!165830 List!19615)) )
))
(declare-fun rules!3447 () List!19615)

(declare-datatypes ((Unit!33770 0))(
  ( (Unit!33771) )
))
(declare-fun lt!688064 () Unit!33770)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!518 (LexerInterface!3126 Rule!6794 List!19615) Unit!33770)

(assert (=> b!1775070 (= lt!688064 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!518 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1775072 () Bool)

(declare-fun e!1135904 () Bool)

(declare-fun e!1135892 () Bool)

(declare-fun tp!503026 () Bool)

(assert (=> b!1775072 (= e!1135904 (and e!1135892 tp!503026))))

(declare-fun b!1775073 () Bool)

(declare-fun e!1135903 () Bool)

(declare-fun e!1135894 () Bool)

(assert (=> b!1775073 (= e!1135903 e!1135894)))

(declare-fun res!799635 () Bool)

(assert (=> b!1775073 (=> res!799635 e!1135894)))

(declare-fun lt!688067 () List!19614)

(declare-fun lt!688059 () BalanceConc!12946)

(declare-fun list!7943 (BalanceConc!12946) List!19614)

(declare-fun dynLambda!9533 (Int TokenValue!3587) BalanceConc!12946)

(declare-fun dynLambda!9534 (Int BalanceConc!12946) TokenValue!3587)

(assert (=> b!1775073 (= res!799635 (not (= (list!7943 (dynLambda!9533 (toChars!4883 (transformation!3497 (rule!5553 (_1!10975 lt!688074)))) (dynLambda!9534 (toValue!5024 (transformation!3497 (rule!5553 (_1!10975 lt!688074)))) lt!688059))) lt!688067)))))

(declare-fun lt!688062 () Unit!33770)

(declare-fun lemmaSemiInverse!635 (TokenValueInjection!6834 BalanceConc!12946) Unit!33770)

(assert (=> b!1775073 (= lt!688062 (lemmaSemiInverse!635 (transformation!3497 (rule!5553 (_1!10975 lt!688074))) lt!688059))))

(declare-fun b!1775074 () Bool)

(declare-fun res!799654 () Bool)

(assert (=> b!1775074 (=> (not res!799654) (not e!1135910))))

(declare-fun token!523 () Token!6560)

(assert (=> b!1775074 (= res!799654 (= (rule!5553 token!523) rule!422))))

(declare-fun b!1775075 () Bool)

(declare-fun e!1135901 () Bool)

(declare-fun tp_is_empty!7893 () Bool)

(declare-fun tp!503017 () Bool)

(assert (=> b!1775075 (= e!1135901 (and tp_is_empty!7893 tp!503017))))

(declare-fun b!1775076 () Bool)

(declare-fun e!1135899 () Bool)

(declare-fun tp!503022 () Bool)

(assert (=> b!1775076 (= e!1135892 (and tp!503022 (inv!25408 (tag!3883 (h!24946 rules!3447))) (inv!25413 (transformation!3497 (h!24946 rules!3447))) e!1135899))))

(declare-fun b!1775077 () Bool)

(declare-fun e!1135897 () Bool)

(declare-fun e!1135893 () Bool)

(assert (=> b!1775077 (= e!1135897 e!1135893)))

(declare-fun res!799641 () Bool)

(assert (=> b!1775077 (=> res!799641 e!1135893)))

(declare-fun lt!688082 () List!19614)

(declare-fun isPrefix!1737 (List!19614 List!19614) Bool)

(assert (=> b!1775077 (= res!799641 (not (isPrefix!1737 lt!688067 lt!688082)))))

(declare-fun ++!5321 (List!19614 List!19614) List!19614)

(assert (=> b!1775077 (isPrefix!1737 lt!688067 (++!5321 lt!688067 (_2!10975 lt!688074)))))

(declare-fun lt!688081 () Unit!33770)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1246 (List!19614 List!19614) Unit!33770)

(assert (=> b!1775077 (= lt!688081 (lemmaConcatTwoListThenFirstIsPrefix!1246 lt!688067 (_2!10975 lt!688074)))))

(assert (=> b!1775077 (= lt!688067 (list!7943 lt!688059))))

(declare-fun charsOf!2146 (Token!6560) BalanceConc!12946)

(assert (=> b!1775077 (= lt!688059 (charsOf!2146 (_1!10975 lt!688074)))))

(declare-fun e!1135898 () Bool)

(assert (=> b!1775077 e!1135898))

(declare-fun res!799650 () Bool)

(assert (=> b!1775077 (=> (not res!799650) (not e!1135898))))

(declare-datatypes ((Option!4016 0))(
  ( (None!4015) (Some!4015 (v!25496 Rule!6794)) )
))
(declare-fun lt!688068 () Option!4016)

(declare-fun isDefined!3359 (Option!4016) Bool)

(assert (=> b!1775077 (= res!799650 (isDefined!3359 lt!688068))))

(declare-fun getRuleFromTag!545 (LexerInterface!3126 List!19615 String!22267) Option!4016)

(assert (=> b!1775077 (= lt!688068 (getRuleFromTag!545 thiss!24550 rules!3447 (tag!3883 (rule!5553 (_1!10975 lt!688074)))))))

(declare-fun lt!688053 () Unit!33770)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!545 (LexerInterface!3126 List!19615 List!19614 Token!6560) Unit!33770)

(assert (=> b!1775077 (= lt!688053 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!545 thiss!24550 rules!3447 lt!688082 (_1!10975 lt!688074)))))

(declare-datatypes ((Option!4017 0))(
  ( (None!4016) (Some!4016 (v!25497 tuple2!19146)) )
))
(declare-fun lt!688088 () Option!4017)

(declare-fun get!5982 (Option!4017) tuple2!19146)

(assert (=> b!1775077 (= lt!688074 (get!5982 lt!688088))))

(declare-fun suffix!1421 () List!19614)

(declare-fun lt!688070 () Unit!33770)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!648 (LexerInterface!3126 List!19615 List!19614 List!19614) Unit!33770)

(assert (=> b!1775077 (= lt!688070 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!648 thiss!24550 rules!3447 lt!688075 suffix!1421))))

(declare-fun maxPrefix!1680 (LexerInterface!3126 List!19615 List!19614) Option!4017)

(assert (=> b!1775077 (= lt!688088 (maxPrefix!1680 thiss!24550 rules!3447 lt!688082))))

(assert (=> b!1775077 (isPrefix!1737 lt!688075 lt!688082)))

(declare-fun lt!688055 () Unit!33770)

(assert (=> b!1775077 (= lt!688055 (lemmaConcatTwoListThenFirstIsPrefix!1246 lt!688075 suffix!1421))))

(assert (=> b!1775077 (= lt!688082 (++!5321 lt!688075 suffix!1421))))

(declare-fun b!1775078 () Bool)

(declare-fun e!1135886 () Bool)

(assert (=> b!1775078 (= e!1135898 e!1135886)))

(declare-fun res!799637 () Bool)

(assert (=> b!1775078 (=> (not res!799637) (not e!1135886))))

(declare-fun lt!688057 () Rule!6794)

(assert (=> b!1775078 (= res!799637 (matchR!2298 (regex!3497 lt!688057) (list!7943 (charsOf!2146 (_1!10975 lt!688074)))))))

(declare-fun get!5983 (Option!4016) Rule!6794)

(assert (=> b!1775078 (= lt!688057 (get!5983 lt!688068))))

(declare-fun res!799651 () Bool)

(declare-fun e!1135906 () Bool)

(assert (=> start!176294 (=> (not res!799651) (not e!1135906))))

(get-info :version)

(assert (=> start!176294 (= res!799651 ((_ is Lexer!3124) thiss!24550))))

(assert (=> start!176294 e!1135906))

(assert (=> start!176294 e!1135901))

(assert (=> start!176294 e!1135911))

(assert (=> start!176294 true))

(declare-fun e!1135905 () Bool)

(declare-fun inv!25414 (Token!6560) Bool)

(assert (=> start!176294 (and (inv!25414 token!523) e!1135905)))

(assert (=> start!176294 e!1135904))

(declare-fun b!1775071 () Bool)

(declare-fun res!799652 () Bool)

(assert (=> b!1775071 (=> res!799652 e!1135902)))

(declare-fun isEmpty!12346 (List!19614) Bool)

(assert (=> b!1775071 (= res!799652 (isEmpty!12346 suffix!1421))))

(declare-fun b!1775079 () Bool)

(declare-fun e!1135900 () Bool)

(declare-fun e!1135888 () Bool)

(assert (=> b!1775079 (= e!1135900 e!1135888)))

(declare-fun res!799646 () Bool)

(assert (=> b!1775079 (=> res!799646 e!1135888)))

(declare-fun lt!688077 () Bool)

(declare-fun lt!688073 () Int)

(declare-fun lt!688058 () Int)

(assert (=> b!1775079 (= res!799646 (or lt!688077 (>= lt!688058 lt!688073)))))

(declare-fun lt!688072 () Unit!33770)

(declare-fun e!1135890 () Unit!33770)

(assert (=> b!1775079 (= lt!688072 e!1135890)))

(declare-fun c!288993 () Bool)

(assert (=> b!1775079 (= c!288993 lt!688077)))

(assert (=> b!1775079 (= lt!688077 (> lt!688058 lt!688073))))

(declare-fun lt!688083 () BalanceConc!12946)

(declare-fun size!15527 (BalanceConc!12946) Int)

(assert (=> b!1775079 (= lt!688073 (size!15527 lt!688083))))

(declare-fun lt!688087 () Regex!4825)

(assert (=> b!1775079 (matchR!2298 lt!688087 lt!688075)))

(declare-fun lt!688056 () Unit!33770)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!204 (LexerInterface!3126 List!19615 List!19614 Token!6560 Rule!6794 List!19614) Unit!33770)

(assert (=> b!1775079 (= lt!688056 (lemmaMaxPrefixThenMatchesRulesRegex!204 thiss!24550 rules!3447 lt!688075 token!523 rule!422 Nil!19544))))

(declare-fun tp!503016 () Bool)

(declare-fun e!1135912 () Bool)

(declare-fun b!1775080 () Bool)

(declare-fun inv!21 (TokenValue!3587) Bool)

(assert (=> b!1775080 (= e!1135905 (and (inv!21 (value!109337 token!523)) e!1135912 tp!503016))))

(declare-fun b!1775081 () Bool)

(declare-fun Unit!33772 () Unit!33770)

(assert (=> b!1775081 (= e!1135890 Unit!33772)))

(declare-fun lt!688060 () Unit!33770)

(assert (=> b!1775081 (= lt!688060 (lemmaMaxPrefixThenMatchesRulesRegex!204 thiss!24550 rules!3447 lt!688082 (_1!10975 lt!688074) (rule!5553 (_1!10975 lt!688074)) (_2!10975 lt!688074)))))

(assert (=> b!1775081 (matchR!2298 lt!688087 lt!688067)))

(declare-fun lt!688090 () List!19614)

(declare-fun getSuffix!904 (List!19614 List!19614) List!19614)

(assert (=> b!1775081 (= lt!688090 (getSuffix!904 lt!688082 lt!688075))))

(declare-fun lt!688063 () Unit!33770)

(declare-fun lemmaSamePrefixThenSameSuffix!848 (List!19614 List!19614 List!19614 List!19614 List!19614) Unit!33770)

(assert (=> b!1775081 (= lt!688063 (lemmaSamePrefixThenSameSuffix!848 lt!688075 suffix!1421 lt!688075 lt!688090 lt!688082))))

(assert (=> b!1775081 (= suffix!1421 lt!688090)))

(declare-fun lt!688054 () Unit!33770)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!273 (List!19614 List!19614) Unit!33770)

(assert (=> b!1775081 (= lt!688054 (lemmaAddHeadSuffixToPrefixStillPrefix!273 lt!688075 lt!688082))))

(declare-fun head!4134 (List!19614) C!9824)

(assert (=> b!1775081 (isPrefix!1737 (++!5321 lt!688075 (Cons!19544 (head!4134 lt!688090) Nil!19544)) lt!688082)))

(declare-fun lt!688069 () List!19614)

(declare-fun lt!688092 () Unit!33770)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!145 (List!19614 List!19614 List!19614) Unit!33770)

(assert (=> b!1775081 (= lt!688092 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!145 lt!688067 lt!688069 lt!688082))))

(assert (=> b!1775081 (isPrefix!1737 lt!688069 lt!688067)))

(declare-fun lt!688089 () Unit!33770)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!136 (Regex!4825 List!19614 List!19614) Unit!33770)

(assert (=> b!1775081 (= lt!688089 (lemmaNotPrefixMatchThenCannotMatchLonger!136 lt!688087 lt!688069 lt!688067))))

(assert (=> b!1775081 false))

(declare-fun b!1775082 () Bool)

(declare-fun res!799644 () Bool)

(assert (=> b!1775082 (=> (not res!799644) (not e!1135906))))

(declare-fun rulesInvariant!2795 (LexerInterface!3126 List!19615) Bool)

(assert (=> b!1775082 (= res!799644 (rulesInvariant!2795 thiss!24550 rules!3447))))

(declare-fun b!1775083 () Bool)

(assert (=> b!1775083 (= e!1135902 e!1135897)))

(declare-fun res!799653 () Bool)

(assert (=> b!1775083 (=> res!799653 e!1135897)))

(declare-fun prefixMatch!708 (Regex!4825 List!19614) Bool)

(assert (=> b!1775083 (= res!799653 (prefixMatch!708 lt!688087 lt!688069))))

(assert (=> b!1775083 (= lt!688069 (++!5321 lt!688075 (Cons!19544 (head!4134 suffix!1421) Nil!19544)))))

(declare-fun rulesRegex!853 (LexerInterface!3126 List!19615) Regex!4825)

(assert (=> b!1775083 (= lt!688087 (rulesRegex!853 thiss!24550 rules!3447))))

(assert (=> b!1775084 (= e!1135899 (and tp!503023 tp!503021))))

(declare-fun b!1775085 () Bool)

(declare-fun e!1135908 () Bool)

(assert (=> b!1775085 (= e!1135906 e!1135908)))

(declare-fun res!799648 () Bool)

(assert (=> b!1775085 (=> (not res!799648) (not e!1135908))))

(declare-fun lt!688052 () Option!4017)

(declare-fun isDefined!3360 (Option!4017) Bool)

(assert (=> b!1775085 (= res!799648 (isDefined!3360 lt!688052))))

(assert (=> b!1775085 (= lt!688052 (maxPrefix!1680 thiss!24550 rules!3447 lt!688075))))

(assert (=> b!1775085 (= lt!688075 (list!7943 lt!688083))))

(assert (=> b!1775085 (= lt!688083 (charsOf!2146 token!523))))

(declare-fun b!1775086 () Bool)

(assert (=> b!1775086 (= e!1135888 true)))

(assert (=> b!1775086 (ruleValid!995 thiss!24550 (rule!5553 (_1!10975 lt!688074)))))

(declare-fun lt!688076 () Unit!33770)

(assert (=> b!1775086 (= lt!688076 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!518 thiss!24550 (rule!5553 (_1!10975 lt!688074)) rules!3447))))

(declare-fun b!1775087 () Bool)

(declare-fun tp!503025 () Bool)

(declare-fun e!1135889 () Bool)

(assert (=> b!1775087 (= e!1135912 (and tp!503025 (inv!25408 (tag!3883 (rule!5553 token!523))) (inv!25413 (transformation!3497 (rule!5553 token!523))) e!1135889))))

(declare-fun b!1775088 () Bool)

(declare-fun res!799649 () Bool)

(assert (=> b!1775088 (=> (not res!799649) (not e!1135906))))

(declare-fun contains!3529 (List!19615 Rule!6794) Bool)

(assert (=> b!1775088 (= res!799649 (contains!3529 rules!3447 rule!422))))

(declare-fun b!1775089 () Bool)

(declare-fun e!1135887 () Bool)

(assert (=> b!1775089 (= e!1135894 e!1135887)))

(declare-fun res!799647 () Bool)

(assert (=> b!1775089 (=> res!799647 e!1135887)))

(declare-fun lt!688079 () TokenValue!3587)

(assert (=> b!1775089 (= res!799647 (not (= lt!688088 (Some!4016 (tuple2!19147 (Token!6561 lt!688079 (rule!5553 (_1!10975 lt!688074)) lt!688058 lt!688067) (_2!10975 lt!688074))))))))

(assert (=> b!1775089 (= lt!688058 (size!15527 lt!688059))))

(declare-fun apply!5297 (TokenValueInjection!6834 BalanceConc!12946) TokenValue!3587)

(assert (=> b!1775089 (= lt!688079 (apply!5297 (transformation!3497 (rule!5553 (_1!10975 lt!688074))) lt!688059))))

(declare-fun lt!688080 () Unit!33770)

(declare-fun lemmaCharactersSize!555 (Token!6560) Unit!33770)

(assert (=> b!1775089 (= lt!688080 (lemmaCharactersSize!555 (_1!10975 lt!688074)))))

(declare-fun lt!688066 () Unit!33770)

(declare-fun lemmaEqSameImage!408 (TokenValueInjection!6834 BalanceConc!12946 BalanceConc!12946) Unit!33770)

(declare-fun seqFromList!2466 (List!19614) BalanceConc!12946)

(assert (=> b!1775089 (= lt!688066 (lemmaEqSameImage!408 (transformation!3497 (rule!5553 (_1!10975 lt!688074))) lt!688059 (seqFromList!2466 (originalCharacters!4311 (_1!10975 lt!688074)))))))

(declare-fun b!1775090 () Bool)

(assert (=> b!1775090 (= e!1135886 (= (rule!5553 (_1!10975 lt!688074)) lt!688057))))

(declare-fun b!1775091 () Bool)

(declare-fun res!799633 () Bool)

(assert (=> b!1775091 (=> res!799633 e!1135888)))

(assert (=> b!1775091 (= res!799633 (not (contains!3529 rules!3447 (rule!5553 (_1!10975 lt!688074)))))))

(assert (=> b!1775092 (= e!1135889 (and tp!503024 tp!503019))))

(assert (=> b!1775093 (= e!1135895 (and tp!503018 tp!503020))))

(declare-fun b!1775094 () Bool)

(declare-fun Unit!33773 () Unit!33770)

(assert (=> b!1775094 (= e!1135890 Unit!33773)))

(declare-fun b!1775095 () Bool)

(declare-fun res!799645 () Bool)

(assert (=> b!1775095 (=> res!799645 e!1135893)))

(assert (=> b!1775095 (= res!799645 (not (matchR!2298 (regex!3497 (rule!5553 (_1!10975 lt!688074))) lt!688067)))))

(declare-fun b!1775096 () Bool)

(declare-fun res!799643 () Bool)

(assert (=> b!1775096 (=> (not res!799643) (not e!1135910))))

(declare-fun lt!688061 () tuple2!19146)

(assert (=> b!1775096 (= res!799643 (isEmpty!12346 (_2!10975 lt!688061)))))

(declare-fun b!1775097 () Bool)

(declare-fun res!799639 () Bool)

(assert (=> b!1775097 (=> (not res!799639) (not e!1135906))))

(declare-fun isEmpty!12347 (List!19615) Bool)

(assert (=> b!1775097 (= res!799639 (not (isEmpty!12347 rules!3447)))))

(declare-fun b!1775098 () Bool)

(assert (=> b!1775098 (= e!1135908 e!1135910)))

(declare-fun res!799642 () Bool)

(assert (=> b!1775098 (=> (not res!799642) (not e!1135910))))

(assert (=> b!1775098 (= res!799642 (= (_1!10975 lt!688061) token!523))))

(assert (=> b!1775098 (= lt!688061 (get!5982 lt!688052))))

(assert (=> b!1775099 (= e!1135893 e!1135903)))

(declare-fun res!799634 () Bool)

(assert (=> b!1775099 (=> res!799634 e!1135903)))

(declare-fun Forall!864 (Int) Bool)

(assert (=> b!1775099 (= res!799634 (not (Forall!864 lambda!70526)))))

(declare-fun lt!688065 () Unit!33770)

(declare-fun lemmaInv!696 (TokenValueInjection!6834) Unit!33770)

(assert (=> b!1775099 (= lt!688065 (lemmaInv!696 (transformation!3497 (rule!5553 (_1!10975 lt!688074)))))))

(declare-fun b!1775100 () Bool)

(declare-fun res!799638 () Bool)

(assert (=> b!1775100 (=> res!799638 e!1135894)))

(assert (=> b!1775100 (= res!799638 (not (= lt!688059 (dynLambda!9533 (toChars!4883 (transformation!3497 (rule!5553 (_1!10975 lt!688074)))) (value!109337 (_1!10975 lt!688074))))))))

(declare-fun b!1775101 () Bool)

(assert (=> b!1775101 (= e!1135887 e!1135900)))

(declare-fun res!799636 () Bool)

(assert (=> b!1775101 (=> res!799636 e!1135900)))

(declare-fun lt!688071 () Option!4017)

(declare-fun lt!688078 () List!19614)

(assert (=> b!1775101 (= res!799636 (or (not (= lt!688078 (_2!10975 lt!688074))) (not (= lt!688071 (Some!4016 (tuple2!19147 (_1!10975 lt!688074) lt!688078))))))))

(assert (=> b!1775101 (= (_2!10975 lt!688074) lt!688078)))

(declare-fun lt!688091 () Unit!33770)

(assert (=> b!1775101 (= lt!688091 (lemmaSamePrefixThenSameSuffix!848 lt!688067 (_2!10975 lt!688074) lt!688067 lt!688078 lt!688082))))

(assert (=> b!1775101 (= lt!688078 (getSuffix!904 lt!688082 lt!688067))))

(declare-fun lt!688084 () TokenValue!3587)

(declare-fun lt!688085 () Int)

(assert (=> b!1775101 (= lt!688071 (Some!4016 (tuple2!19147 (Token!6561 lt!688084 (rule!5553 (_1!10975 lt!688074)) lt!688085 lt!688067) (_2!10975 lt!688074))))))

(declare-fun maxPrefixOneRule!1049 (LexerInterface!3126 Rule!6794 List!19614) Option!4017)

(assert (=> b!1775101 (= lt!688071 (maxPrefixOneRule!1049 thiss!24550 (rule!5553 (_1!10975 lt!688074)) lt!688082))))

(declare-fun size!15528 (List!19614) Int)

(assert (=> b!1775101 (= lt!688085 (size!15528 lt!688067))))

(assert (=> b!1775101 (= lt!688084 (apply!5297 (transformation!3497 (rule!5553 (_1!10975 lt!688074))) (seqFromList!2466 lt!688067)))))

(declare-fun lt!688086 () Unit!33770)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!427 (LexerInterface!3126 List!19615 List!19614 List!19614 List!19614 Rule!6794) Unit!33770)

(assert (=> b!1775101 (= lt!688086 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!427 thiss!24550 rules!3447 lt!688067 lt!688082 (_2!10975 lt!688074) (rule!5553 (_1!10975 lt!688074))))))

(assert (= (and start!176294 res!799651) b!1775097))

(assert (= (and b!1775097 res!799639) b!1775082))

(assert (= (and b!1775082 res!799644) b!1775088))

(assert (= (and b!1775088 res!799649) b!1775085))

(assert (= (and b!1775085 res!799648) b!1775098))

(assert (= (and b!1775098 res!799642) b!1775096))

(assert (= (and b!1775096 res!799643) b!1775074))

(assert (= (and b!1775074 res!799654) b!1775070))

(assert (= (and b!1775070 (not res!799640)) b!1775071))

(assert (= (and b!1775071 (not res!799652)) b!1775083))

(assert (= (and b!1775083 (not res!799653)) b!1775077))

(assert (= (and b!1775077 res!799650) b!1775078))

(assert (= (and b!1775078 res!799637) b!1775090))

(assert (= (and b!1775077 (not res!799641)) b!1775095))

(assert (= (and b!1775095 (not res!799645)) b!1775099))

(assert (= (and b!1775099 (not res!799634)) b!1775073))

(assert (= (and b!1775073 (not res!799635)) b!1775100))

(assert (= (and b!1775100 (not res!799638)) b!1775089))

(assert (= (and b!1775089 (not res!799647)) b!1775101))

(assert (= (and b!1775101 (not res!799636)) b!1775079))

(assert (= (and b!1775079 c!288993) b!1775081))

(assert (= (and b!1775079 (not c!288993)) b!1775094))

(assert (= (and b!1775079 (not res!799646)) b!1775091))

(assert (= (and b!1775091 (not res!799633)) b!1775086))

(assert (= (and start!176294 ((_ is Cons!19544) suffix!1421)) b!1775075))

(assert (= b!1775069 b!1775093))

(assert (= start!176294 b!1775069))

(assert (= b!1775087 b!1775092))

(assert (= b!1775080 b!1775087))

(assert (= start!176294 b!1775080))

(assert (= b!1775076 b!1775084))

(assert (= b!1775072 b!1775076))

(assert (= (and start!176294 ((_ is Cons!19545) rules!3447)) b!1775072))

(declare-fun b_lambda!57923 () Bool)

(assert (=> (not b_lambda!57923) (not b!1775073)))

(declare-fun tb!107607 () Bool)

(declare-fun t!165811 () Bool)

(assert (=> (and b!1775092 (= (toChars!4883 (transformation!3497 (rule!5553 token!523))) (toChars!4883 (transformation!3497 (rule!5553 (_1!10975 lt!688074))))) t!165811) tb!107607))

(declare-fun tp!503029 () Bool)

(declare-fun b!1775117 () Bool)

(declare-fun e!1135924 () Bool)

(declare-fun inv!25415 (Conc!6501) Bool)

(assert (=> b!1775117 (= e!1135924 (and (inv!25415 (c!288995 (dynLambda!9533 (toChars!4883 (transformation!3497 (rule!5553 (_1!10975 lt!688074)))) (dynLambda!9534 (toValue!5024 (transformation!3497 (rule!5553 (_1!10975 lt!688074)))) lt!688059)))) tp!503029))))

(declare-fun result!129442 () Bool)

(declare-fun inv!25416 (BalanceConc!12946) Bool)

(assert (=> tb!107607 (= result!129442 (and (inv!25416 (dynLambda!9533 (toChars!4883 (transformation!3497 (rule!5553 (_1!10975 lt!688074)))) (dynLambda!9534 (toValue!5024 (transformation!3497 (rule!5553 (_1!10975 lt!688074)))) lt!688059))) e!1135924))))

(assert (= tb!107607 b!1775117))

(declare-fun m!2195263 () Bool)

(assert (=> b!1775117 m!2195263))

(declare-fun m!2195265 () Bool)

(assert (=> tb!107607 m!2195265))

(assert (=> b!1775073 t!165811))

(declare-fun b_and!135411 () Bool)

(assert (= b_and!135401 (and (=> t!165811 result!129442) b_and!135411)))

(declare-fun t!165813 () Bool)

(declare-fun tb!107609 () Bool)

(assert (=> (and b!1775084 (= (toChars!4883 (transformation!3497 (h!24946 rules!3447))) (toChars!4883 (transformation!3497 (rule!5553 (_1!10975 lt!688074))))) t!165813) tb!107609))

(declare-fun result!129446 () Bool)

(assert (= result!129446 result!129442))

(assert (=> b!1775073 t!165813))

(declare-fun b_and!135413 () Bool)

(assert (= b_and!135405 (and (=> t!165813 result!129446) b_and!135413)))

(declare-fun tb!107611 () Bool)

(declare-fun t!165815 () Bool)

(assert (=> (and b!1775093 (= (toChars!4883 (transformation!3497 rule!422)) (toChars!4883 (transformation!3497 (rule!5553 (_1!10975 lt!688074))))) t!165815) tb!107611))

(declare-fun result!129448 () Bool)

(assert (= result!129448 result!129442))

(assert (=> b!1775073 t!165815))

(declare-fun b_and!135415 () Bool)

(assert (= b_and!135409 (and (=> t!165815 result!129448) b_and!135415)))

(declare-fun b_lambda!57925 () Bool)

(assert (=> (not b_lambda!57925) (not b!1775073)))

(declare-fun t!165817 () Bool)

(declare-fun tb!107613 () Bool)

(assert (=> (and b!1775092 (= (toValue!5024 (transformation!3497 (rule!5553 token!523))) (toValue!5024 (transformation!3497 (rule!5553 (_1!10975 lt!688074))))) t!165817) tb!107613))

(declare-fun result!129450 () Bool)

(assert (=> tb!107613 (= result!129450 (inv!21 (dynLambda!9534 (toValue!5024 (transformation!3497 (rule!5553 (_1!10975 lt!688074)))) lt!688059)))))

(declare-fun m!2195267 () Bool)

(assert (=> tb!107613 m!2195267))

(assert (=> b!1775073 t!165817))

(declare-fun b_and!135417 () Bool)

(assert (= b_and!135399 (and (=> t!165817 result!129450) b_and!135417)))

(declare-fun tb!107615 () Bool)

(declare-fun t!165819 () Bool)

(assert (=> (and b!1775084 (= (toValue!5024 (transformation!3497 (h!24946 rules!3447))) (toValue!5024 (transformation!3497 (rule!5553 (_1!10975 lt!688074))))) t!165819) tb!107615))

(declare-fun result!129454 () Bool)

(assert (= result!129454 result!129450))

(assert (=> b!1775073 t!165819))

(declare-fun b_and!135419 () Bool)

(assert (= b_and!135403 (and (=> t!165819 result!129454) b_and!135419)))

(declare-fun t!165821 () Bool)

(declare-fun tb!107617 () Bool)

(assert (=> (and b!1775093 (= (toValue!5024 (transformation!3497 rule!422)) (toValue!5024 (transformation!3497 (rule!5553 (_1!10975 lt!688074))))) t!165821) tb!107617))

(declare-fun result!129456 () Bool)

(assert (= result!129456 result!129450))

(assert (=> b!1775073 t!165821))

(declare-fun b_and!135421 () Bool)

(assert (= b_and!135407 (and (=> t!165821 result!129456) b_and!135421)))

(declare-fun b_lambda!57927 () Bool)

(assert (=> (not b_lambda!57927) (not b!1775100)))

(declare-fun tb!107619 () Bool)

(declare-fun t!165823 () Bool)

(assert (=> (and b!1775092 (= (toChars!4883 (transformation!3497 (rule!5553 token!523))) (toChars!4883 (transformation!3497 (rule!5553 (_1!10975 lt!688074))))) t!165823) tb!107619))

(declare-fun b!1775120 () Bool)

(declare-fun e!1135928 () Bool)

(declare-fun tp!503030 () Bool)

(assert (=> b!1775120 (= e!1135928 (and (inv!25415 (c!288995 (dynLambda!9533 (toChars!4883 (transformation!3497 (rule!5553 (_1!10975 lt!688074)))) (value!109337 (_1!10975 lt!688074))))) tp!503030))))

(declare-fun result!129458 () Bool)

(assert (=> tb!107619 (= result!129458 (and (inv!25416 (dynLambda!9533 (toChars!4883 (transformation!3497 (rule!5553 (_1!10975 lt!688074)))) (value!109337 (_1!10975 lt!688074)))) e!1135928))))

(assert (= tb!107619 b!1775120))

(declare-fun m!2195269 () Bool)

(assert (=> b!1775120 m!2195269))

(declare-fun m!2195271 () Bool)

(assert (=> tb!107619 m!2195271))

(assert (=> b!1775100 t!165823))

(declare-fun b_and!135423 () Bool)

(assert (= b_and!135411 (and (=> t!165823 result!129458) b_and!135423)))

(declare-fun t!165825 () Bool)

(declare-fun tb!107621 () Bool)

(assert (=> (and b!1775084 (= (toChars!4883 (transformation!3497 (h!24946 rules!3447))) (toChars!4883 (transformation!3497 (rule!5553 (_1!10975 lt!688074))))) t!165825) tb!107621))

(declare-fun result!129460 () Bool)

(assert (= result!129460 result!129458))

(assert (=> b!1775100 t!165825))

(declare-fun b_and!135425 () Bool)

(assert (= b_and!135413 (and (=> t!165825 result!129460) b_and!135425)))

(declare-fun t!165827 () Bool)

(declare-fun tb!107623 () Bool)

(assert (=> (and b!1775093 (= (toChars!4883 (transformation!3497 rule!422)) (toChars!4883 (transformation!3497 (rule!5553 (_1!10975 lt!688074))))) t!165827) tb!107623))

(declare-fun result!129462 () Bool)

(assert (= result!129462 result!129458))

(assert (=> b!1775100 t!165827))

(declare-fun b_and!135427 () Bool)

(assert (= b_and!135415 (and (=> t!165827 result!129462) b_and!135427)))

(declare-fun m!2195273 () Bool)

(assert (=> b!1775089 m!2195273))

(declare-fun m!2195275 () Bool)

(assert (=> b!1775089 m!2195275))

(declare-fun m!2195277 () Bool)

(assert (=> b!1775089 m!2195277))

(assert (=> b!1775089 m!2195273))

(declare-fun m!2195279 () Bool)

(assert (=> b!1775089 m!2195279))

(declare-fun m!2195281 () Bool)

(assert (=> b!1775089 m!2195281))

(declare-fun m!2195283 () Bool)

(assert (=> b!1775081 m!2195283))

(declare-fun m!2195285 () Bool)

(assert (=> b!1775081 m!2195285))

(assert (=> b!1775081 m!2195283))

(declare-fun m!2195287 () Bool)

(assert (=> b!1775081 m!2195287))

(declare-fun m!2195289 () Bool)

(assert (=> b!1775081 m!2195289))

(declare-fun m!2195291 () Bool)

(assert (=> b!1775081 m!2195291))

(declare-fun m!2195293 () Bool)

(assert (=> b!1775081 m!2195293))

(declare-fun m!2195295 () Bool)

(assert (=> b!1775081 m!2195295))

(declare-fun m!2195297 () Bool)

(assert (=> b!1775081 m!2195297))

(declare-fun m!2195299 () Bool)

(assert (=> b!1775081 m!2195299))

(declare-fun m!2195301 () Bool)

(assert (=> b!1775081 m!2195301))

(declare-fun m!2195303 () Bool)

(assert (=> b!1775081 m!2195303))

(declare-fun m!2195305 () Bool)

(assert (=> b!1775100 m!2195305))

(declare-fun m!2195307 () Bool)

(assert (=> b!1775079 m!2195307))

(declare-fun m!2195309 () Bool)

(assert (=> b!1775079 m!2195309))

(declare-fun m!2195311 () Bool)

(assert (=> b!1775079 m!2195311))

(declare-fun m!2195313 () Bool)

(assert (=> b!1775097 m!2195313))

(declare-fun m!2195315 () Bool)

(assert (=> b!1775087 m!2195315))

(declare-fun m!2195317 () Bool)

(assert (=> b!1775087 m!2195317))

(declare-fun m!2195319 () Bool)

(assert (=> b!1775095 m!2195319))

(declare-fun m!2195321 () Bool)

(assert (=> b!1775073 m!2195321))

(assert (=> b!1775073 m!2195321))

(declare-fun m!2195323 () Bool)

(assert (=> b!1775073 m!2195323))

(assert (=> b!1775073 m!2195323))

(declare-fun m!2195325 () Bool)

(assert (=> b!1775073 m!2195325))

(declare-fun m!2195327 () Bool)

(assert (=> b!1775073 m!2195327))

(declare-fun m!2195329 () Bool)

(assert (=> b!1775086 m!2195329))

(declare-fun m!2195331 () Bool)

(assert (=> b!1775086 m!2195331))

(declare-fun m!2195333 () Bool)

(assert (=> b!1775101 m!2195333))

(declare-fun m!2195335 () Bool)

(assert (=> b!1775101 m!2195335))

(declare-fun m!2195337 () Bool)

(assert (=> b!1775101 m!2195337))

(declare-fun m!2195339 () Bool)

(assert (=> b!1775101 m!2195339))

(assert (=> b!1775101 m!2195337))

(declare-fun m!2195341 () Bool)

(assert (=> b!1775101 m!2195341))

(declare-fun m!2195343 () Bool)

(assert (=> b!1775101 m!2195343))

(declare-fun m!2195345 () Bool)

(assert (=> b!1775101 m!2195345))

(declare-fun m!2195347 () Bool)

(assert (=> b!1775077 m!2195347))

(declare-fun m!2195349 () Bool)

(assert (=> b!1775077 m!2195349))

(declare-fun m!2195351 () Bool)

(assert (=> b!1775077 m!2195351))

(declare-fun m!2195353 () Bool)

(assert (=> b!1775077 m!2195353))

(declare-fun m!2195355 () Bool)

(assert (=> b!1775077 m!2195355))

(declare-fun m!2195357 () Bool)

(assert (=> b!1775077 m!2195357))

(declare-fun m!2195359 () Bool)

(assert (=> b!1775077 m!2195359))

(declare-fun m!2195361 () Bool)

(assert (=> b!1775077 m!2195361))

(declare-fun m!2195363 () Bool)

(assert (=> b!1775077 m!2195363))

(declare-fun m!2195365 () Bool)

(assert (=> b!1775077 m!2195365))

(declare-fun m!2195367 () Bool)

(assert (=> b!1775077 m!2195367))

(declare-fun m!2195369 () Bool)

(assert (=> b!1775077 m!2195369))

(declare-fun m!2195371 () Bool)

(assert (=> b!1775077 m!2195371))

(assert (=> b!1775077 m!2195361))

(declare-fun m!2195373 () Bool)

(assert (=> b!1775077 m!2195373))

(declare-fun m!2195375 () Bool)

(assert (=> b!1775077 m!2195375))

(declare-fun m!2195377 () Bool)

(assert (=> b!1775085 m!2195377))

(declare-fun m!2195379 () Bool)

(assert (=> b!1775085 m!2195379))

(declare-fun m!2195381 () Bool)

(assert (=> b!1775085 m!2195381))

(declare-fun m!2195383 () Bool)

(assert (=> b!1775085 m!2195383))

(declare-fun m!2195385 () Bool)

(assert (=> b!1775099 m!2195385))

(declare-fun m!2195387 () Bool)

(assert (=> b!1775099 m!2195387))

(declare-fun m!2195389 () Bool)

(assert (=> b!1775076 m!2195389))

(declare-fun m!2195391 () Bool)

(assert (=> b!1775076 m!2195391))

(declare-fun m!2195393 () Bool)

(assert (=> b!1775091 m!2195393))

(declare-fun m!2195395 () Bool)

(assert (=> b!1775088 m!2195395))

(declare-fun m!2195397 () Bool)

(assert (=> b!1775080 m!2195397))

(declare-fun m!2195399 () Bool)

(assert (=> b!1775069 m!2195399))

(declare-fun m!2195401 () Bool)

(assert (=> b!1775069 m!2195401))

(declare-fun m!2195403 () Bool)

(assert (=> b!1775083 m!2195403))

(declare-fun m!2195405 () Bool)

(assert (=> b!1775083 m!2195405))

(declare-fun m!2195407 () Bool)

(assert (=> b!1775083 m!2195407))

(declare-fun m!2195409 () Bool)

(assert (=> b!1775083 m!2195409))

(declare-fun m!2195411 () Bool)

(assert (=> start!176294 m!2195411))

(assert (=> b!1775078 m!2195359))

(assert (=> b!1775078 m!2195359))

(declare-fun m!2195413 () Bool)

(assert (=> b!1775078 m!2195413))

(assert (=> b!1775078 m!2195413))

(declare-fun m!2195415 () Bool)

(assert (=> b!1775078 m!2195415))

(declare-fun m!2195417 () Bool)

(assert (=> b!1775078 m!2195417))

(declare-fun m!2195419 () Bool)

(assert (=> b!1775096 m!2195419))

(declare-fun m!2195421 () Bool)

(assert (=> b!1775098 m!2195421))

(declare-fun m!2195423 () Bool)

(assert (=> b!1775070 m!2195423))

(declare-fun m!2195425 () Bool)

(assert (=> b!1775070 m!2195425))

(declare-fun m!2195427 () Bool)

(assert (=> b!1775070 m!2195427))

(declare-fun m!2195429 () Bool)

(assert (=> b!1775082 m!2195429))

(declare-fun m!2195431 () Bool)

(assert (=> b!1775071 m!2195431))

(check-sat (not b!1775082) (not b!1775096) (not b!1775085) b_and!135421 (not b!1775073) (not b!1775070) (not b_next!49887) (not b!1775081) (not b!1775098) (not b!1775075) (not b!1775089) (not b!1775117) (not b!1775072) b_and!135419 b_and!135425 (not b!1775069) (not tb!107607) (not b!1775099) b_and!135427 (not b!1775095) tp_is_empty!7893 (not b!1775101) (not b_next!49879) (not b_next!49881) (not b_next!49885) b_and!135423 (not b!1775080) (not b!1775083) (not b_next!49889) (not b!1775086) (not b!1775071) (not b!1775087) (not b_lambda!57927) (not tb!107619) (not b!1775078) (not b!1775091) (not b_lambda!57925) (not b_lambda!57923) (not b!1775077) (not start!176294) (not b!1775079) (not b_next!49883) (not b!1775097) (not b!1775120) (not tb!107613) (not b!1775088) (not b!1775076) b_and!135417)
(check-sat b_and!135427 b_and!135423 b_and!135421 (not b_next!49887) (not b_next!49889) (not b_next!49883) b_and!135417 b_and!135419 b_and!135425 (not b_next!49879) (not b_next!49881) (not b_next!49885))
