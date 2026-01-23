; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!191816 () Bool)

(assert start!191816)

(declare-fun b!1912245 () Bool)

(declare-fun b_free!54017 () Bool)

(declare-fun b_next!54721 () Bool)

(assert (=> b!1912245 (= b_free!54017 (not b_next!54721))))

(declare-fun tp!545806 () Bool)

(declare-fun b_and!149031 () Bool)

(assert (=> b!1912245 (= tp!545806 b_and!149031)))

(declare-fun b_free!54019 () Bool)

(declare-fun b_next!54723 () Bool)

(assert (=> b!1912245 (= b_free!54019 (not b_next!54723))))

(declare-fun tp!545804 () Bool)

(declare-fun b_and!149033 () Bool)

(assert (=> b!1912245 (= tp!545804 b_and!149033)))

(declare-fun b!1912240 () Bool)

(declare-fun b_free!54021 () Bool)

(declare-fun b_next!54725 () Bool)

(assert (=> b!1912240 (= b_free!54021 (not b_next!54725))))

(declare-fun tp!545809 () Bool)

(declare-fun b_and!149035 () Bool)

(assert (=> b!1912240 (= tp!545809 b_and!149035)))

(declare-fun b_free!54023 () Bool)

(declare-fun b_next!54727 () Bool)

(assert (=> b!1912240 (= b_free!54023 (not b_next!54727))))

(declare-fun tp!545812 () Bool)

(declare-fun b_and!149037 () Bool)

(assert (=> b!1912240 (= tp!545812 b_and!149037)))

(declare-fun b!1912253 () Bool)

(declare-fun b_free!54025 () Bool)

(declare-fun b_next!54729 () Bool)

(assert (=> b!1912253 (= b_free!54025 (not b_next!54729))))

(declare-fun tp!545810 () Bool)

(declare-fun b_and!149039 () Bool)

(assert (=> b!1912253 (= tp!545810 b_and!149039)))

(declare-fun b_free!54027 () Bool)

(declare-fun b_next!54731 () Bool)

(assert (=> b!1912253 (= b_free!54027 (not b_next!54731))))

(declare-fun tp!545807 () Bool)

(declare-fun b_and!149041 () Bool)

(assert (=> b!1912253 (= tp!545807 b_and!149041)))

(declare-fun b!1912217 () Bool)

(declare-fun e!1221576 () Bool)

(declare-fun e!1221567 () Bool)

(assert (=> b!1912217 (= e!1221576 (not e!1221567))))

(declare-fun res!854031 () Bool)

(assert (=> b!1912217 (=> res!854031 e!1221567)))

(declare-datatypes ((List!21648 0))(
  ( (Nil!21566) (Cons!21566 (h!26967 (_ BitVec 16)) (t!178217 List!21648)) )
))
(declare-datatypes ((TokenValue!3982 0))(
  ( (FloatLiteralValue!7964 (text!28319 List!21648)) (TokenValueExt!3981 (__x!13462 Int)) (Broken!19910 (value!121176 List!21648)) (Object!4063) (End!3982) (Def!3982) (Underscore!3982) (Match!3982) (Else!3982) (Error!3982) (Case!3982) (If!3982) (Extends!3982) (Abstract!3982) (Class!3982) (Val!3982) (DelimiterValue!7964 (del!4042 List!21648)) (KeywordValue!3988 (value!121177 List!21648)) (CommentValue!7964 (value!121178 List!21648)) (WhitespaceValue!7964 (value!121179 List!21648)) (IndentationValue!3982 (value!121180 List!21648)) (String!25027) (Int32!3982) (Broken!19911 (value!121181 List!21648)) (Boolean!3983) (Unit!35935) (OperatorValue!3985 (op!4042 List!21648)) (IdentifierValue!7964 (value!121182 List!21648)) (IdentifierValue!7965 (value!121183 List!21648)) (WhitespaceValue!7965 (value!121184 List!21648)) (True!7964) (False!7964) (Broken!19912 (value!121185 List!21648)) (Broken!19913 (value!121186 List!21648)) (True!7965) (RightBrace!3982) (RightBracket!3982) (Colon!3982) (Null!3982) (Comma!3982) (LeftBracket!3982) (False!7965) (LeftBrace!3982) (ImaginaryLiteralValue!3982 (text!28320 List!21648)) (StringLiteralValue!11946 (value!121187 List!21648)) (EOFValue!3982 (value!121188 List!21648)) (IdentValue!3982 (value!121189 List!21648)) (DelimiterValue!7965 (value!121190 List!21648)) (DedentValue!3982 (value!121191 List!21648)) (NewLineValue!3982 (value!121192 List!21648)) (IntegerValue!11946 (value!121193 (_ BitVec 32)) (text!28321 List!21648)) (IntegerValue!11947 (value!121194 Int) (text!28322 List!21648)) (Times!3982) (Or!3982) (Equal!3982) (Minus!3982) (Broken!19914 (value!121195 List!21648)) (And!3982) (Div!3982) (LessEqual!3982) (Mod!3982) (Concat!9253) (Not!3982) (Plus!3982) (SpaceValue!3982 (value!121196 List!21648)) (IntegerValue!11948 (value!121197 Int) (text!28323 List!21648)) (StringLiteralValue!11947 (text!28324 List!21648)) (FloatLiteralValue!7965 (text!28325 List!21648)) (BytesLiteralValue!3982 (value!121198 List!21648)) (CommentValue!7965 (value!121199 List!21648)) (StringLiteralValue!11948 (value!121200 List!21648)) (ErrorTokenValue!3982 (msg!4043 List!21648)) )
))
(declare-datatypes ((C!10688 0))(
  ( (C!10689 (val!6296 Int)) )
))
(declare-datatypes ((List!21649 0))(
  ( (Nil!21567) (Cons!21567 (h!26968 C!10688) (t!178218 List!21649)) )
))
(declare-datatypes ((Regex!5271 0))(
  ( (ElementMatch!5271 (c!311500 C!10688)) (Concat!9254 (regOne!11054 Regex!5271) (regTwo!11054 Regex!5271)) (EmptyExpr!5271) (Star!5271 (reg!5600 Regex!5271)) (EmptyLang!5271) (Union!5271 (regOne!11055 Regex!5271) (regTwo!11055 Regex!5271)) )
))
(declare-datatypes ((String!25028 0))(
  ( (String!25029 (value!121201 String)) )
))
(declare-datatypes ((IArray!14373 0))(
  ( (IArray!14374 (innerList!7244 List!21649)) )
))
(declare-datatypes ((Conc!7184 0))(
  ( (Node!7184 (left!17233 Conc!7184) (right!17563 Conc!7184) (csize!14598 Int) (cheight!7395 Int)) (Leaf!10570 (xs!10078 IArray!14373) (csize!14599 Int)) (Empty!7184) )
))
(declare-datatypes ((BalanceConc!14184 0))(
  ( (BalanceConc!14185 (c!311501 Conc!7184)) )
))
(declare-datatypes ((TokenValueInjection!7548 0))(
  ( (TokenValueInjection!7549 (toValue!5475 Int) (toChars!5334 Int)) )
))
(declare-datatypes ((Rule!7492 0))(
  ( (Rule!7493 (regex!3846 Regex!5271) (tag!4282 String!25028) (isSeparator!3846 Bool) (transformation!3846 TokenValueInjection!7548)) )
))
(declare-datatypes ((Token!7244 0))(
  ( (Token!7245 (value!121202 TokenValue!3982) (rule!6045 Rule!7492) (size!16980 Int) (originalCharacters!4653 List!21649)) )
))
(declare-datatypes ((tuple2!20294 0))(
  ( (tuple2!20295 (_1!11616 Token!7244) (_2!11616 List!21649)) )
))
(declare-datatypes ((Option!4397 0))(
  ( (None!4396) (Some!4396 (v!26453 tuple2!20294)) )
))
(declare-fun lt!731736 () Option!4397)

(declare-fun lt!731738 () Bool)

(declare-datatypes ((List!21650 0))(
  ( (Nil!21568) (Cons!21568 (h!26969 Token!7244) (t!178219 List!21650)) )
))
(declare-fun tokens!598 () List!21650)

(assert (=> b!1912217 (= res!854031 (or (and (not lt!731738) (= (_1!11616 (v!26453 lt!731736)) (h!26969 tokens!598))) lt!731738 (= (_1!11616 (v!26453 lt!731736)) (h!26969 tokens!598))))))

(get-info :version)

(assert (=> b!1912217 (= lt!731738 (not ((_ is Some!4396) lt!731736)))))

(declare-datatypes ((LexerInterface!3459 0))(
  ( (LexerInterfaceExt!3456 (__x!13463 Int)) (Lexer!3457) )
))
(declare-fun thiss!23328 () LexerInterface!3459)

(declare-fun lt!731713 () List!21649)

(declare-datatypes ((List!21651 0))(
  ( (Nil!21569) (Cons!21569 (h!26970 Rule!7492) (t!178220 List!21651)) )
))
(declare-fun rules!3198 () List!21651)

(declare-fun lt!731746 () List!21649)

(declare-fun maxPrefix!1905 (LexerInterface!3459 List!21651 List!21649) Option!4397)

(declare-fun ++!5797 (List!21649 List!21649) List!21649)

(assert (=> b!1912217 (= lt!731736 (maxPrefix!1905 thiss!23328 rules!3198 (++!5797 lt!731746 lt!731713)))))

(declare-fun separatorToken!354 () Token!7244)

(declare-fun printWithSeparatorTokenWhenNeededList!502 (LexerInterface!3459 List!21651 List!21650 Token!7244) List!21649)

(assert (=> b!1912217 (= lt!731713 (printWithSeparatorTokenWhenNeededList!502 thiss!23328 rules!3198 (t!178219 tokens!598) separatorToken!354))))

(declare-fun e!1221579 () Bool)

(assert (=> b!1912217 e!1221579))

(declare-fun res!854030 () Bool)

(assert (=> b!1912217 (=> (not res!854030) (not e!1221579))))

(declare-datatypes ((Option!4398 0))(
  ( (None!4397) (Some!4397 (v!26454 Rule!7492)) )
))
(declare-fun lt!731725 () Option!4398)

(declare-fun isDefined!3695 (Option!4398) Bool)

(assert (=> b!1912217 (= res!854030 (isDefined!3695 lt!731725))))

(declare-fun getRuleFromTag!689 (LexerInterface!3459 List!21651 String!25028) Option!4398)

(assert (=> b!1912217 (= lt!731725 (getRuleFromTag!689 thiss!23328 rules!3198 (tag!4282 (rule!6045 (h!26969 tokens!598)))))))

(declare-datatypes ((Unit!35936 0))(
  ( (Unit!35937) )
))
(declare-fun lt!731740 () Unit!35936)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!689 (LexerInterface!3459 List!21651 List!21649 Token!7244) Unit!35936)

(assert (=> b!1912217 (= lt!731740 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!689 thiss!23328 rules!3198 lt!731746 (h!26969 tokens!598)))))

(declare-fun lt!731731 () tuple2!20294)

(assert (=> b!1912217 (= (_1!11616 lt!731731) (h!26969 tokens!598))))

(declare-fun lt!731733 () Option!4397)

(declare-fun get!6727 (Option!4397) tuple2!20294)

(assert (=> b!1912217 (= lt!731731 (get!6727 lt!731733))))

(declare-fun isDefined!3696 (Option!4397) Bool)

(assert (=> b!1912217 (isDefined!3696 lt!731733)))

(assert (=> b!1912217 (= lt!731733 (maxPrefix!1905 thiss!23328 rules!3198 lt!731746))))

(declare-fun lt!731732 () BalanceConc!14184)

(declare-fun list!8770 (BalanceConc!14184) List!21649)

(assert (=> b!1912217 (= lt!731746 (list!8770 lt!731732))))

(declare-fun e!1221572 () Bool)

(assert (=> b!1912217 e!1221572))

(declare-fun res!854037 () Bool)

(assert (=> b!1912217 (=> (not res!854037) (not e!1221572))))

(declare-fun lt!731737 () Option!4398)

(assert (=> b!1912217 (= res!854037 (isDefined!3695 lt!731737))))

(assert (=> b!1912217 (= lt!731737 (getRuleFromTag!689 thiss!23328 rules!3198 (tag!4282 (rule!6045 separatorToken!354))))))

(declare-fun lt!731715 () Unit!35936)

(declare-fun lt!731745 () List!21649)

(assert (=> b!1912217 (= lt!731715 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!689 thiss!23328 rules!3198 lt!731745 separatorToken!354))))

(declare-fun charsOf!2402 (Token!7244) BalanceConc!14184)

(assert (=> b!1912217 (= lt!731745 (list!8770 (charsOf!2402 separatorToken!354)))))

(declare-fun lt!731716 () Unit!35936)

(declare-fun lemmaEqSameImage!554 (TokenValueInjection!7548 BalanceConc!14184 BalanceConc!14184) Unit!35936)

(declare-fun seqFromList!2718 (List!21649) BalanceConc!14184)

(assert (=> b!1912217 (= lt!731716 (lemmaEqSameImage!554 (transformation!3846 (rule!6045 (h!26969 tokens!598))) lt!731732 (seqFromList!2718 (originalCharacters!4653 (h!26969 tokens!598)))))))

(declare-fun lt!731735 () Unit!35936)

(declare-fun lemmaSemiInverse!825 (TokenValueInjection!7548 BalanceConc!14184) Unit!35936)

(assert (=> b!1912217 (= lt!731735 (lemmaSemiInverse!825 (transformation!3846 (rule!6045 (h!26969 tokens!598))) lt!731732))))

(assert (=> b!1912217 (= lt!731732 (charsOf!2402 (h!26969 tokens!598)))))

(declare-fun b!1912218 () Bool)

(declare-fun res!854027 () Bool)

(assert (=> b!1912218 (=> (not res!854027) (not e!1221576))))

(assert (=> b!1912218 (= res!854027 (isSeparator!3846 (rule!6045 separatorToken!354)))))

(declare-fun b!1912219 () Bool)

(declare-fun res!854041 () Bool)

(declare-fun e!1221580 () Bool)

(assert (=> b!1912219 (=> res!854041 e!1221580)))

(declare-fun contains!3896 (List!21651 Rule!7492) Bool)

(assert (=> b!1912219 (= res!854041 (not (contains!3896 rules!3198 (rule!6045 (h!26969 tokens!598)))))))

(declare-fun b!1912220 () Bool)

(declare-fun e!1221555 () Bool)

(assert (=> b!1912220 (= e!1221572 e!1221555)))

(declare-fun res!854035 () Bool)

(assert (=> b!1912220 (=> (not res!854035) (not e!1221555))))

(declare-fun lt!731718 () Rule!7492)

(declare-fun matchR!2557 (Regex!5271 List!21649) Bool)

(assert (=> b!1912220 (= res!854035 (matchR!2557 (regex!3846 lt!731718) lt!731745))))

(declare-fun get!6728 (Option!4398) Rule!7492)

(assert (=> b!1912220 (= lt!731718 (get!6728 lt!731737))))

(declare-fun b!1912221 () Bool)

(declare-fun e!1221575 () Bool)

(declare-fun e!1221568 () Bool)

(assert (=> b!1912221 (= e!1221575 e!1221568)))

(declare-fun res!854049 () Bool)

(assert (=> b!1912221 (=> res!854049 e!1221568)))

(declare-fun lt!731727 () List!21649)

(declare-fun lt!731714 () C!10688)

(declare-fun contains!3897 (List!21649 C!10688) Bool)

(assert (=> b!1912221 (= res!854049 (contains!3897 lt!731727 lt!731714))))

(declare-fun lt!731742 () List!21649)

(declare-fun head!4452 (List!21649) C!10688)

(assert (=> b!1912221 (= lt!731714 (head!4452 lt!731742))))

(declare-fun b!1912222 () Bool)

(declare-fun res!854050 () Bool)

(assert (=> b!1912222 (=> res!854050 e!1221575)))

(declare-fun isEmpty!13248 (List!21649) Bool)

(assert (=> b!1912222 (= res!854050 (isEmpty!13248 lt!731742))))

(declare-fun b!1912223 () Bool)

(declare-fun res!854046 () Bool)

(assert (=> b!1912223 (=> (not res!854046) (not e!1221576))))

(declare-fun sepAndNonSepRulesDisjointChars!944 (List!21651 List!21651) Bool)

(assert (=> b!1912223 (= res!854046 (sepAndNonSepRulesDisjointChars!944 rules!3198 rules!3198))))

(declare-fun b!1912224 () Bool)

(assert (=> b!1912224 (= e!1221568 true)))

(declare-fun lt!731739 () List!21649)

(assert (=> b!1912224 (= (maxPrefix!1905 thiss!23328 rules!3198 lt!731739) (Some!4396 (tuple2!20295 (h!26969 tokens!598) lt!731742)))))

(declare-fun lt!731720 () Unit!35936)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!82 (LexerInterface!3459 List!21651 Token!7244 Rule!7492 List!21649 Rule!7492) Unit!35936)

(assert (=> b!1912224 (= lt!731720 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!82 thiss!23328 rules!3198 (h!26969 tokens!598) (rule!6045 (h!26969 tokens!598)) lt!731742 (rule!6045 separatorToken!354)))))

(declare-fun tp!545813 () Bool)

(declare-fun e!1221564 () Bool)

(declare-fun e!1221559 () Bool)

(declare-fun b!1912225 () Bool)

(declare-fun inv!21 (TokenValue!3982) Bool)

(assert (=> b!1912225 (= e!1221564 (and (inv!21 (value!121202 separatorToken!354)) e!1221559 tp!545813))))

(declare-fun b!1912226 () Bool)

(declare-fun res!854040 () Bool)

(assert (=> b!1912226 (=> (not res!854040) (not e!1221576))))

(assert (=> b!1912226 (= res!854040 ((_ is Cons!21568) tokens!598))))

(declare-fun tp!545805 () Bool)

(declare-fun b!1912228 () Bool)

(declare-fun e!1221566 () Bool)

(declare-fun e!1221560 () Bool)

(assert (=> b!1912228 (= e!1221560 (and (inv!21 (value!121202 (h!26969 tokens!598))) e!1221566 tp!545805))))

(declare-fun b!1912229 () Bool)

(declare-fun e!1221574 () Unit!35936)

(declare-fun Unit!35938 () Unit!35936)

(assert (=> b!1912229 (= e!1221574 Unit!35938)))

(declare-fun lt!731722 () Unit!35936)

(declare-fun lt!731717 () C!10688)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!254 (Regex!5271 List!21649 C!10688) Unit!35936)

(assert (=> b!1912229 (= lt!731722 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!254 (regex!3846 (rule!6045 separatorToken!354)) lt!731745 lt!731717))))

(declare-fun res!854039 () Bool)

(assert (=> b!1912229 (= res!854039 (not (matchR!2557 (regex!3846 (rule!6045 separatorToken!354)) lt!731745)))))

(declare-fun e!1221573 () Bool)

(assert (=> b!1912229 (=> (not res!854039) (not e!1221573))))

(assert (=> b!1912229 e!1221573))

(declare-fun b!1912230 () Bool)

(assert (=> b!1912230 (= e!1221573 false)))

(declare-fun b!1912231 () Bool)

(declare-fun e!1221569 () Bool)

(declare-fun e!1221561 () Bool)

(declare-fun tp!545811 () Bool)

(assert (=> b!1912231 (= e!1221569 (and e!1221561 tp!545811))))

(declare-fun b!1912232 () Bool)

(declare-fun Unit!35939 () Unit!35936)

(assert (=> b!1912232 (= e!1221574 Unit!35939)))

(declare-fun b!1912233 () Bool)

(declare-fun res!854034 () Bool)

(assert (=> b!1912233 (=> (not res!854034) (not e!1221576))))

(declare-fun rulesProduceEachTokenIndividuallyList!1190 (LexerInterface!3459 List!21651 List!21650) Bool)

(assert (=> b!1912233 (= res!854034 (rulesProduceEachTokenIndividuallyList!1190 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1912234 () Bool)

(declare-fun res!854048 () Bool)

(assert (=> b!1912234 (=> res!854048 e!1221580)))

(declare-datatypes ((IArray!14375 0))(
  ( (IArray!14376 (innerList!7245 List!21650)) )
))
(declare-datatypes ((Conc!7185 0))(
  ( (Node!7185 (left!17234 Conc!7185) (right!17564 Conc!7185) (csize!14600 Int) (cheight!7396 Int)) (Leaf!10571 (xs!10079 IArray!14375) (csize!14601 Int)) (Empty!7185) )
))
(declare-datatypes ((BalanceConc!14186 0))(
  ( (BalanceConc!14187 (c!311502 Conc!7185)) )
))
(declare-fun isEmpty!13249 (BalanceConc!14186) Bool)

(declare-datatypes ((tuple2!20296 0))(
  ( (tuple2!20297 (_1!11617 BalanceConc!14186) (_2!11617 BalanceConc!14184)) )
))
(declare-fun lex!1534 (LexerInterface!3459 List!21651 BalanceConc!14184) tuple2!20296)

(assert (=> b!1912234 (= res!854048 (isEmpty!13249 (_1!11617 (lex!1534 thiss!23328 rules!3198 (seqFromList!2718 lt!731746)))))))

(declare-fun b!1912235 () Bool)

(declare-fun res!854029 () Bool)

(assert (=> b!1912235 (=> res!854029 e!1221568)))

(declare-fun lt!731730 () List!21649)

(assert (=> b!1912235 (= res!854029 (not (contains!3897 lt!731730 lt!731714)))))

(declare-fun b!1912236 () Bool)

(declare-fun res!854052 () Bool)

(assert (=> b!1912236 (=> res!854052 e!1221580)))

(declare-fun rulesProduceIndividualToken!1631 (LexerInterface!3459 List!21651 Token!7244) Bool)

(assert (=> b!1912236 (= res!854052 (not (rulesProduceIndividualToken!1631 thiss!23328 rules!3198 (h!26969 tokens!598))))))

(declare-fun tp!545814 () Bool)

(declare-fun b!1912237 () Bool)

(declare-fun e!1221578 () Bool)

(declare-fun inv!28668 (String!25028) Bool)

(declare-fun inv!28671 (TokenValueInjection!7548) Bool)

(assert (=> b!1912237 (= e!1221566 (and tp!545814 (inv!28668 (tag!4282 (rule!6045 (h!26969 tokens!598)))) (inv!28671 (transformation!3846 (rule!6045 (h!26969 tokens!598)))) e!1221578))))

(declare-fun b!1912238 () Bool)

(declare-fun res!854028 () Bool)

(assert (=> b!1912238 (=> res!854028 e!1221580)))

(assert (=> b!1912238 (= res!854028 (not (isEmpty!13248 (_2!11616 lt!731731))))))

(declare-fun b!1912239 () Bool)

(declare-fun e!1221565 () Bool)

(assert (=> b!1912239 (= e!1221579 e!1221565)))

(declare-fun res!854051 () Bool)

(assert (=> b!1912239 (=> (not res!854051) (not e!1221565))))

(declare-fun lt!731719 () Rule!7492)

(assert (=> b!1912239 (= res!854051 (matchR!2557 (regex!3846 lt!731719) lt!731746))))

(assert (=> b!1912239 (= lt!731719 (get!6728 lt!731725))))

(declare-fun e!1221556 () Bool)

(assert (=> b!1912240 (= e!1221556 (and tp!545809 tp!545812))))

(declare-fun b!1912241 () Bool)

(declare-fun res!854036 () Bool)

(assert (=> b!1912241 (=> (not res!854036) (not e!1221576))))

(assert (=> b!1912241 (= res!854036 (rulesProduceIndividualToken!1631 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1912242 () Bool)

(assert (=> b!1912242 (= e!1221565 (= (rule!6045 (h!26969 tokens!598)) lt!731719))))

(declare-fun b!1912243 () Bool)

(assert (=> b!1912243 (= e!1221567 e!1221580)))

(declare-fun res!854032 () Bool)

(assert (=> b!1912243 (=> res!854032 e!1221580)))

(declare-fun lt!731726 () List!21649)

(declare-fun lt!731728 () List!21649)

(assert (=> b!1912243 (= res!854032 (or (not (= lt!731728 lt!731726)) (not (= lt!731726 lt!731746)) (not (= lt!731728 lt!731746))))))

(declare-fun printList!1042 (LexerInterface!3459 List!21650) List!21649)

(assert (=> b!1912243 (= lt!731726 (printList!1042 thiss!23328 (Cons!21568 (h!26969 tokens!598) Nil!21568)))))

(declare-fun lt!731729 () BalanceConc!14184)

(assert (=> b!1912243 (= lt!731728 (list!8770 lt!731729))))

(declare-fun lt!731744 () BalanceConc!14186)

(declare-fun printTailRec!976 (LexerInterface!3459 BalanceConc!14186 Int BalanceConc!14184) BalanceConc!14184)

(assert (=> b!1912243 (= lt!731729 (printTailRec!976 thiss!23328 lt!731744 0 (BalanceConc!14185 Empty!7184)))))

(declare-fun print!1469 (LexerInterface!3459 BalanceConc!14186) BalanceConc!14184)

(assert (=> b!1912243 (= lt!731729 (print!1469 thiss!23328 lt!731744))))

(declare-fun singletonSeq!1869 (Token!7244) BalanceConc!14186)

(assert (=> b!1912243 (= lt!731744 (singletonSeq!1869 (h!26969 tokens!598)))))

(assert (=> b!1912243 (not (contains!3897 lt!731727 lt!731717))))

(declare-fun usedCharacters!354 (Regex!5271) List!21649)

(assert (=> b!1912243 (= lt!731727 (usedCharacters!354 (regex!3846 (rule!6045 (h!26969 tokens!598)))))))

(declare-fun lt!731721 () Unit!35936)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!50 (LexerInterface!3459 List!21651 List!21651 Rule!7492 Rule!7492 C!10688) Unit!35936)

(assert (=> b!1912243 (= lt!731721 (lemmaNonSepRuleNotContainsCharContainedInASepRule!50 thiss!23328 rules!3198 rules!3198 (rule!6045 (h!26969 tokens!598)) (rule!6045 separatorToken!354) lt!731717))))

(declare-fun lt!731724 () Unit!35936)

(assert (=> b!1912243 (= lt!731724 e!1221574)))

(declare-fun c!311499 () Bool)

(assert (=> b!1912243 (= c!311499 (not (contains!3897 lt!731730 lt!731717)))))

(assert (=> b!1912243 (= lt!731717 (head!4452 lt!731745))))

(assert (=> b!1912243 (= lt!731730 (usedCharacters!354 (regex!3846 (rule!6045 separatorToken!354))))))

(declare-fun lt!731723 () List!21649)

(assert (=> b!1912243 (= lt!731723 lt!731739)))

(assert (=> b!1912243 (= lt!731739 (++!5797 lt!731746 lt!731742))))

(declare-fun lt!731734 () List!21649)

(assert (=> b!1912243 (= lt!731723 (++!5797 lt!731734 lt!731713))))

(assert (=> b!1912243 (= lt!731742 (++!5797 lt!731745 lt!731713))))

(assert (=> b!1912243 (= lt!731734 (++!5797 lt!731746 lt!731745))))

(declare-fun lt!731741 () Unit!35936)

(declare-fun lemmaConcatAssociativity!1161 (List!21649 List!21649 List!21649) Unit!35936)

(assert (=> b!1912243 (= lt!731741 (lemmaConcatAssociativity!1161 lt!731746 lt!731745 lt!731713))))

(declare-fun b!1912244 () Bool)

(assert (=> b!1912244 (= e!1221555 (= (rule!6045 separatorToken!354) lt!731718))))

(declare-fun res!854045 () Bool)

(assert (=> start!191816 (=> (not res!854045) (not e!1221576))))

(assert (=> start!191816 (= res!854045 ((_ is Lexer!3457) thiss!23328))))

(assert (=> start!191816 e!1221576))

(assert (=> start!191816 true))

(assert (=> start!191816 e!1221569))

(declare-fun e!1221557 () Bool)

(assert (=> start!191816 e!1221557))

(declare-fun inv!28672 (Token!7244) Bool)

(assert (=> start!191816 (and (inv!28672 separatorToken!354) e!1221564)))

(declare-fun b!1912227 () Bool)

(declare-fun res!854047 () Bool)

(assert (=> b!1912227 (=> (not res!854047) (not e!1221576))))

(declare-fun lambda!74665 () Int)

(declare-fun forall!4538 (List!21650 Int) Bool)

(assert (=> b!1912227 (= res!854047 (forall!4538 tokens!598 lambda!74665))))

(declare-fun e!1221570 () Bool)

(assert (=> b!1912245 (= e!1221570 (and tp!545806 tp!545804))))

(declare-fun b!1912246 () Bool)

(declare-fun tp!545816 () Bool)

(assert (=> b!1912246 (= e!1221557 (and (inv!28672 (h!26969 tokens!598)) e!1221560 tp!545816))))

(declare-fun b!1912247 () Bool)

(assert (=> b!1912247 (= e!1221580 e!1221575)))

(declare-fun res!854044 () Bool)

(assert (=> b!1912247 (=> res!854044 e!1221575)))

(assert (=> b!1912247 (= res!854044 (not (matchR!2557 (regex!3846 (rule!6045 (h!26969 tokens!598))) lt!731746)))))

(declare-fun ruleValid!1165 (LexerInterface!3459 Rule!7492) Bool)

(assert (=> b!1912247 (ruleValid!1165 thiss!23328 (rule!6045 (h!26969 tokens!598)))))

(declare-fun lt!731743 () Unit!35936)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!662 (LexerInterface!3459 Rule!7492 List!21651) Unit!35936)

(assert (=> b!1912247 (= lt!731743 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!662 thiss!23328 (rule!6045 (h!26969 tokens!598)) rules!3198))))

(declare-fun b!1912248 () Bool)

(declare-fun res!854038 () Bool)

(assert (=> b!1912248 (=> (not res!854038) (not e!1221576))))

(declare-fun isEmpty!13250 (List!21651) Bool)

(assert (=> b!1912248 (= res!854038 (not (isEmpty!13250 rules!3198)))))

(declare-fun b!1912249 () Bool)

(declare-fun res!854033 () Bool)

(assert (=> b!1912249 (=> res!854033 e!1221580)))

(assert (=> b!1912249 (= res!854033 (not (contains!3896 rules!3198 (rule!6045 separatorToken!354))))))

(declare-fun b!1912250 () Bool)

(declare-fun res!854042 () Bool)

(assert (=> b!1912250 (=> res!854042 e!1221580)))

(assert (=> b!1912250 (= res!854042 (isSeparator!3846 (rule!6045 (h!26969 tokens!598))))))

(declare-fun tp!545808 () Bool)

(declare-fun b!1912251 () Bool)

(assert (=> b!1912251 (= e!1221559 (and tp!545808 (inv!28668 (tag!4282 (rule!6045 separatorToken!354))) (inv!28671 (transformation!3846 (rule!6045 separatorToken!354))) e!1221556))))

(declare-fun b!1912252 () Bool)

(declare-fun res!854043 () Bool)

(assert (=> b!1912252 (=> (not res!854043) (not e!1221576))))

(declare-fun rulesInvariant!3066 (LexerInterface!3459 List!21651) Bool)

(assert (=> b!1912252 (= res!854043 (rulesInvariant!3066 thiss!23328 rules!3198))))

(assert (=> b!1912253 (= e!1221578 (and tp!545810 tp!545807))))

(declare-fun tp!545815 () Bool)

(declare-fun b!1912254 () Bool)

(assert (=> b!1912254 (= e!1221561 (and tp!545815 (inv!28668 (tag!4282 (h!26970 rules!3198))) (inv!28671 (transformation!3846 (h!26970 rules!3198))) e!1221570))))

(assert (= (and start!191816 res!854045) b!1912248))

(assert (= (and b!1912248 res!854038) b!1912252))

(assert (= (and b!1912252 res!854043) b!1912233))

(assert (= (and b!1912233 res!854034) b!1912241))

(assert (= (and b!1912241 res!854036) b!1912218))

(assert (= (and b!1912218 res!854027) b!1912227))

(assert (= (and b!1912227 res!854047) b!1912223))

(assert (= (and b!1912223 res!854046) b!1912226))

(assert (= (and b!1912226 res!854040) b!1912217))

(assert (= (and b!1912217 res!854037) b!1912220))

(assert (= (and b!1912220 res!854035) b!1912244))

(assert (= (and b!1912217 res!854030) b!1912239))

(assert (= (and b!1912239 res!854051) b!1912242))

(assert (= (and b!1912217 (not res!854031)) b!1912243))

(assert (= (and b!1912243 c!311499) b!1912229))

(assert (= (and b!1912243 (not c!311499)) b!1912232))

(assert (= (and b!1912229 res!854039) b!1912230))

(assert (= (and b!1912243 (not res!854032)) b!1912236))

(assert (= (and b!1912236 (not res!854052)) b!1912234))

(assert (= (and b!1912234 (not res!854048)) b!1912219))

(assert (= (and b!1912219 (not res!854041)) b!1912249))

(assert (= (and b!1912249 (not res!854033)) b!1912250))

(assert (= (and b!1912250 (not res!854042)) b!1912238))

(assert (= (and b!1912238 (not res!854028)) b!1912247))

(assert (= (and b!1912247 (not res!854044)) b!1912222))

(assert (= (and b!1912222 (not res!854050)) b!1912221))

(assert (= (and b!1912221 (not res!854049)) b!1912235))

(assert (= (and b!1912235 (not res!854029)) b!1912224))

(assert (= b!1912254 b!1912245))

(assert (= b!1912231 b!1912254))

(assert (= (and start!191816 ((_ is Cons!21569) rules!3198)) b!1912231))

(assert (= b!1912237 b!1912253))

(assert (= b!1912228 b!1912237))

(assert (= b!1912246 b!1912228))

(assert (= (and start!191816 ((_ is Cons!21568) tokens!598)) b!1912246))

(assert (= b!1912251 b!1912240))

(assert (= b!1912225 b!1912251))

(assert (= start!191816 b!1912225))

(declare-fun m!2346205 () Bool)

(assert (=> b!1912254 m!2346205))

(declare-fun m!2346207 () Bool)

(assert (=> b!1912254 m!2346207))

(declare-fun m!2346209 () Bool)

(assert (=> b!1912223 m!2346209))

(declare-fun m!2346211 () Bool)

(assert (=> b!1912221 m!2346211))

(declare-fun m!2346213 () Bool)

(assert (=> b!1912221 m!2346213))

(declare-fun m!2346215 () Bool)

(assert (=> b!1912249 m!2346215))

(declare-fun m!2346217 () Bool)

(assert (=> start!191816 m!2346217))

(declare-fun m!2346219 () Bool)

(assert (=> b!1912248 m!2346219))

(declare-fun m!2346221 () Bool)

(assert (=> b!1912225 m!2346221))

(declare-fun m!2346223 () Bool)

(assert (=> b!1912227 m!2346223))

(declare-fun m!2346225 () Bool)

(assert (=> b!1912235 m!2346225))

(declare-fun m!2346227 () Bool)

(assert (=> b!1912234 m!2346227))

(assert (=> b!1912234 m!2346227))

(declare-fun m!2346229 () Bool)

(assert (=> b!1912234 m!2346229))

(declare-fun m!2346231 () Bool)

(assert (=> b!1912234 m!2346231))

(declare-fun m!2346233 () Bool)

(assert (=> b!1912224 m!2346233))

(declare-fun m!2346235 () Bool)

(assert (=> b!1912224 m!2346235))

(declare-fun m!2346237 () Bool)

(assert (=> b!1912217 m!2346237))

(declare-fun m!2346239 () Bool)

(assert (=> b!1912217 m!2346239))

(declare-fun m!2346241 () Bool)

(assert (=> b!1912217 m!2346241))

(declare-fun m!2346243 () Bool)

(assert (=> b!1912217 m!2346243))

(declare-fun m!2346245 () Bool)

(assert (=> b!1912217 m!2346245))

(declare-fun m!2346247 () Bool)

(assert (=> b!1912217 m!2346247))

(declare-fun m!2346249 () Bool)

(assert (=> b!1912217 m!2346249))

(declare-fun m!2346251 () Bool)

(assert (=> b!1912217 m!2346251))

(declare-fun m!2346253 () Bool)

(assert (=> b!1912217 m!2346253))

(assert (=> b!1912217 m!2346251))

(declare-fun m!2346255 () Bool)

(assert (=> b!1912217 m!2346255))

(declare-fun m!2346257 () Bool)

(assert (=> b!1912217 m!2346257))

(declare-fun m!2346259 () Bool)

(assert (=> b!1912217 m!2346259))

(declare-fun m!2346261 () Bool)

(assert (=> b!1912217 m!2346261))

(declare-fun m!2346263 () Bool)

(assert (=> b!1912217 m!2346263))

(assert (=> b!1912217 m!2346239))

(declare-fun m!2346265 () Bool)

(assert (=> b!1912217 m!2346265))

(declare-fun m!2346267 () Bool)

(assert (=> b!1912217 m!2346267))

(assert (=> b!1912217 m!2346263))

(declare-fun m!2346269 () Bool)

(assert (=> b!1912217 m!2346269))

(declare-fun m!2346271 () Bool)

(assert (=> b!1912217 m!2346271))

(declare-fun m!2346273 () Bool)

(assert (=> b!1912217 m!2346273))

(declare-fun m!2346275 () Bool)

(assert (=> b!1912219 m!2346275))

(declare-fun m!2346277 () Bool)

(assert (=> b!1912229 m!2346277))

(declare-fun m!2346279 () Bool)

(assert (=> b!1912229 m!2346279))

(declare-fun m!2346281 () Bool)

(assert (=> b!1912237 m!2346281))

(declare-fun m!2346283 () Bool)

(assert (=> b!1912237 m!2346283))

(declare-fun m!2346285 () Bool)

(assert (=> b!1912241 m!2346285))

(declare-fun m!2346287 () Bool)

(assert (=> b!1912238 m!2346287))

(declare-fun m!2346289 () Bool)

(assert (=> b!1912251 m!2346289))

(declare-fun m!2346291 () Bool)

(assert (=> b!1912251 m!2346291))

(declare-fun m!2346293 () Bool)

(assert (=> b!1912243 m!2346293))

(declare-fun m!2346295 () Bool)

(assert (=> b!1912243 m!2346295))

(declare-fun m!2346297 () Bool)

(assert (=> b!1912243 m!2346297))

(declare-fun m!2346299 () Bool)

(assert (=> b!1912243 m!2346299))

(declare-fun m!2346301 () Bool)

(assert (=> b!1912243 m!2346301))

(declare-fun m!2346303 () Bool)

(assert (=> b!1912243 m!2346303))

(declare-fun m!2346305 () Bool)

(assert (=> b!1912243 m!2346305))

(declare-fun m!2346307 () Bool)

(assert (=> b!1912243 m!2346307))

(declare-fun m!2346309 () Bool)

(assert (=> b!1912243 m!2346309))

(declare-fun m!2346311 () Bool)

(assert (=> b!1912243 m!2346311))

(declare-fun m!2346313 () Bool)

(assert (=> b!1912243 m!2346313))

(declare-fun m!2346315 () Bool)

(assert (=> b!1912243 m!2346315))

(declare-fun m!2346317 () Bool)

(assert (=> b!1912243 m!2346317))

(declare-fun m!2346319 () Bool)

(assert (=> b!1912243 m!2346319))

(declare-fun m!2346321 () Bool)

(assert (=> b!1912243 m!2346321))

(declare-fun m!2346323 () Bool)

(assert (=> b!1912243 m!2346323))

(declare-fun m!2346325 () Bool)

(assert (=> b!1912252 m!2346325))

(declare-fun m!2346327 () Bool)

(assert (=> b!1912222 m!2346327))

(declare-fun m!2346329 () Bool)

(assert (=> b!1912220 m!2346329))

(declare-fun m!2346331 () Bool)

(assert (=> b!1912220 m!2346331))

(declare-fun m!2346333 () Bool)

(assert (=> b!1912239 m!2346333))

(declare-fun m!2346335 () Bool)

(assert (=> b!1912239 m!2346335))

(declare-fun m!2346337 () Bool)

(assert (=> b!1912246 m!2346337))

(declare-fun m!2346339 () Bool)

(assert (=> b!1912233 m!2346339))

(declare-fun m!2346341 () Bool)

(assert (=> b!1912228 m!2346341))

(declare-fun m!2346343 () Bool)

(assert (=> b!1912236 m!2346343))

(declare-fun m!2346345 () Bool)

(assert (=> b!1912247 m!2346345))

(declare-fun m!2346347 () Bool)

(assert (=> b!1912247 m!2346347))

(declare-fun m!2346349 () Bool)

(assert (=> b!1912247 m!2346349))

(check-sat (not b!1912220) (not b!1912235) b_and!149033 (not b!1912227) (not b!1912238) b_and!149039 (not b!1912233) (not b!1912225) (not start!191816) (not b!1912231) (not b!1912248) (not b!1912254) (not b!1912252) (not b_next!54721) b_and!149037 (not b!1912223) (not b!1912247) b_and!149031 (not b!1912217) (not b!1912222) (not b!1912246) (not b!1912239) (not b!1912251) (not b!1912219) (not b!1912249) (not b_next!54725) b_and!149041 (not b!1912236) (not b!1912234) (not b!1912241) b_and!149035 (not b_next!54731) (not b_next!54723) (not b_next!54727) (not b!1912221) (not b!1912237) (not b!1912243) (not b_next!54729) (not b!1912229) (not b!1912224) (not b!1912228))
(check-sat b_and!149033 (not b_next!54721) b_and!149037 b_and!149031 b_and!149039 (not b_next!54725) b_and!149041 (not b_next!54729) b_and!149035 (not b_next!54731) (not b_next!54723) (not b_next!54727))
