; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!377788 () Bool)

(assert start!377788)

(declare-fun b!4011355 () Bool)

(declare-fun b_free!111577 () Bool)

(declare-fun b_next!112281 () Bool)

(assert (=> b!4011355 (= b_free!111577 (not b_next!112281))))

(declare-fun tp!1220288 () Bool)

(declare-fun b_and!308151 () Bool)

(assert (=> b!4011355 (= tp!1220288 b_and!308151)))

(declare-fun b_free!111579 () Bool)

(declare-fun b_next!112283 () Bool)

(assert (=> b!4011355 (= b_free!111579 (not b_next!112283))))

(declare-fun tp!1220281 () Bool)

(declare-fun b_and!308153 () Bool)

(assert (=> b!4011355 (= tp!1220281 b_and!308153)))

(declare-fun b!4011359 () Bool)

(declare-fun b_free!111581 () Bool)

(declare-fun b_next!112285 () Bool)

(assert (=> b!4011359 (= b_free!111581 (not b_next!112285))))

(declare-fun tp!1220277 () Bool)

(declare-fun b_and!308155 () Bool)

(assert (=> b!4011359 (= tp!1220277 b_and!308155)))

(declare-fun b_free!111583 () Bool)

(declare-fun b_next!112287 () Bool)

(assert (=> b!4011359 (= b_free!111583 (not b_next!112287))))

(declare-fun tp!1220286 () Bool)

(declare-fun b_and!308157 () Bool)

(assert (=> b!4011359 (= tp!1220286 b_and!308157)))

(declare-fun b!4011347 () Bool)

(declare-fun e!2487757 () Bool)

(declare-fun e!2487735 () Bool)

(assert (=> b!4011347 (= e!2487757 e!2487735)))

(declare-fun res!1630617 () Bool)

(assert (=> b!4011347 (=> res!1630617 e!2487735)))

(declare-datatypes ((C!23656 0))(
  ( (C!23657 (val!13922 Int)) )
))
(declare-datatypes ((List!43056 0))(
  ( (Nil!42932) (Cons!42932 (h!48352 C!23656) (t!332987 List!43056)) )
))
(declare-datatypes ((IArray!26087 0))(
  ( (IArray!26088 (innerList!13101 List!43056)) )
))
(declare-datatypes ((Conc!13041 0))(
  ( (Node!13041 (left!32386 Conc!13041) (right!32716 Conc!13041) (csize!26312 Int) (cheight!13252 Int)) (Leaf!20163 (xs!16347 IArray!26087) (csize!26313 Int)) (Empty!13041) )
))
(declare-datatypes ((BalanceConc!25676 0))(
  ( (BalanceConc!25677 (c!693550 Conc!13041)) )
))
(declare-datatypes ((List!43057 0))(
  ( (Nil!42933) (Cons!42933 (h!48353 (_ BitVec 16)) (t!332988 List!43057)) )
))
(declare-datatypes ((TokenValue!7060 0))(
  ( (FloatLiteralValue!14120 (text!49865 List!43057)) (TokenValueExt!7059 (__x!26337 Int)) (Broken!35300 (value!215263 List!43057)) (Object!7183) (End!7060) (Def!7060) (Underscore!7060) (Match!7060) (Else!7060) (Error!7060) (Case!7060) (If!7060) (Extends!7060) (Abstract!7060) (Class!7060) (Val!7060) (DelimiterValue!14120 (del!7120 List!43057)) (KeywordValue!7066 (value!215264 List!43057)) (CommentValue!14120 (value!215265 List!43057)) (WhitespaceValue!14120 (value!215266 List!43057)) (IndentationValue!7060 (value!215267 List!43057)) (String!49017) (Int32!7060) (Broken!35301 (value!215268 List!43057)) (Boolean!7061) (Unit!61957) (OperatorValue!7063 (op!7120 List!43057)) (IdentifierValue!14120 (value!215269 List!43057)) (IdentifierValue!14121 (value!215270 List!43057)) (WhitespaceValue!14121 (value!215271 List!43057)) (True!14120) (False!14120) (Broken!35302 (value!215272 List!43057)) (Broken!35303 (value!215273 List!43057)) (True!14121) (RightBrace!7060) (RightBracket!7060) (Colon!7060) (Null!7060) (Comma!7060) (LeftBracket!7060) (False!14121) (LeftBrace!7060) (ImaginaryLiteralValue!7060 (text!49866 List!43057)) (StringLiteralValue!21180 (value!215274 List!43057)) (EOFValue!7060 (value!215275 List!43057)) (IdentValue!7060 (value!215276 List!43057)) (DelimiterValue!14121 (value!215277 List!43057)) (DedentValue!7060 (value!215278 List!43057)) (NewLineValue!7060 (value!215279 List!43057)) (IntegerValue!21180 (value!215280 (_ BitVec 32)) (text!49867 List!43057)) (IntegerValue!21181 (value!215281 Int) (text!49868 List!43057)) (Times!7060) (Or!7060) (Equal!7060) (Minus!7060) (Broken!35304 (value!215282 List!43057)) (And!7060) (Div!7060) (LessEqual!7060) (Mod!7060) (Concat!18795) (Not!7060) (Plus!7060) (SpaceValue!7060 (value!215283 List!43057)) (IntegerValue!21182 (value!215284 Int) (text!49869 List!43057)) (StringLiteralValue!21181 (text!49870 List!43057)) (FloatLiteralValue!14121 (text!49871 List!43057)) (BytesLiteralValue!7060 (value!215285 List!43057)) (CommentValue!14121 (value!215286 List!43057)) (StringLiteralValue!21182 (value!215287 List!43057)) (ErrorTokenValue!7060 (msg!7121 List!43057)) )
))
(declare-datatypes ((Regex!11735 0))(
  ( (ElementMatch!11735 (c!693551 C!23656)) (Concat!18796 (regOne!23982 Regex!11735) (regTwo!23982 Regex!11735)) (EmptyExpr!11735) (Star!11735 (reg!12064 Regex!11735)) (EmptyLang!11735) (Union!11735 (regOne!23983 Regex!11735) (regTwo!23983 Regex!11735)) )
))
(declare-datatypes ((String!49018 0))(
  ( (String!49019 (value!215288 String)) )
))
(declare-datatypes ((TokenValueInjection!13548 0))(
  ( (TokenValueInjection!13549 (toValue!9334 Int) (toChars!9193 Int)) )
))
(declare-datatypes ((Rule!13460 0))(
  ( (Rule!13461 (regex!6830 Regex!11735) (tag!7690 String!49018) (isSeparator!6830 Bool) (transformation!6830 TokenValueInjection!13548)) )
))
(declare-datatypes ((Token!12798 0))(
  ( (Token!12799 (value!215289 TokenValue!7060) (rule!9874 Rule!13460) (size!32101 Int) (originalCharacters!7430 List!43056)) )
))
(declare-datatypes ((tuple2!42082 0))(
  ( (tuple2!42083 (_1!24175 Token!12798) (_2!24175 List!43056)) )
))
(declare-datatypes ((Option!9244 0))(
  ( (None!9243) (Some!9243 (v!39611 tuple2!42082)) )
))
(declare-fun lt!1420425 () Option!9244)

(declare-fun lt!1420450 () Option!9244)

(assert (=> b!4011347 (= res!1630617 (not (= lt!1420425 lt!1420450)))))

(declare-fun lt!1420422 () Token!12798)

(declare-fun suffixResult!105 () List!43056)

(assert (=> b!4011347 (= lt!1420425 (Some!9243 (tuple2!42083 lt!1420422 suffixResult!105)))))

(declare-fun token!484 () Token!12798)

(declare-datatypes ((LexerInterface!6419 0))(
  ( (LexerInterfaceExt!6416 (__x!26338 Int)) (Lexer!6417) )
))
(declare-fun thiss!21717 () LexerInterface!6419)

(declare-fun lt!1420449 () List!43056)

(declare-fun maxPrefixOneRule!2737 (LexerInterface!6419 Rule!13460 List!43056) Option!9244)

(assert (=> b!4011347 (= lt!1420425 (maxPrefixOneRule!2737 thiss!21717 (rule!9874 token!484) lt!1420449))))

(declare-fun lt!1420441 () Int)

(declare-fun lt!1420446 () TokenValue!7060)

(declare-fun lt!1420432 () List!43056)

(assert (=> b!4011347 (= lt!1420422 (Token!12799 lt!1420446 (rule!9874 token!484) lt!1420441 lt!1420432))))

(declare-fun apply!10027 (TokenValueInjection!13548 BalanceConc!25676) TokenValue!7060)

(declare-fun seqFromList!5055 (List!43056) BalanceConc!25676)

(assert (=> b!4011347 (= lt!1420446 (apply!10027 (transformation!6830 (rule!9874 token!484)) (seqFromList!5055 lt!1420432)))))

(declare-datatypes ((Unit!61958 0))(
  ( (Unit!61959) )
))
(declare-fun lt!1420414 () Unit!61958)

(declare-datatypes ((List!43058 0))(
  ( (Nil!42934) (Cons!42934 (h!48354 Rule!13460) (t!332989 List!43058)) )
))
(declare-fun rules!2999 () List!43058)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1555 (LexerInterface!6419 List!43058 List!43056 List!43056 List!43056 Rule!13460) Unit!61958)

(assert (=> b!4011347 (= lt!1420414 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1555 thiss!21717 rules!2999 lt!1420432 lt!1420449 suffixResult!105 (rule!9874 token!484)))))

(declare-fun lt!1420420 () List!43056)

(assert (=> b!4011347 (= lt!1420420 suffixResult!105)))

(declare-fun lt!1420458 () Unit!61958)

(declare-fun lemmaSamePrefixThenSameSuffix!2088 (List!43056 List!43056 List!43056 List!43056 List!43056) Unit!61958)

(assert (=> b!4011347 (= lt!1420458 (lemmaSamePrefixThenSameSuffix!2088 lt!1420432 lt!1420420 lt!1420432 suffixResult!105 lt!1420449))))

(declare-fun lt!1420454 () List!43056)

(declare-fun isPrefix!3917 (List!43056 List!43056) Bool)

(assert (=> b!4011347 (isPrefix!3917 lt!1420432 lt!1420454)))

(declare-fun lt!1420438 () Unit!61958)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2758 (List!43056 List!43056) Unit!61958)

(assert (=> b!4011347 (= lt!1420438 (lemmaConcatTwoListThenFirstIsPrefix!2758 lt!1420432 lt!1420420))))

(declare-fun b!4011348 () Bool)

(declare-fun e!2487758 () Bool)

(assert (=> b!4011348 (= e!2487758 e!2487757)))

(declare-fun res!1630631 () Bool)

(assert (=> b!4011348 (=> res!1630631 e!2487757)))

(declare-fun lt!1420444 () List!43056)

(assert (=> b!4011348 (= res!1630631 (or (not (= lt!1420449 lt!1420444)) (not (= lt!1420449 lt!1420454))))))

(assert (=> b!4011348 (= lt!1420444 lt!1420454)))

(declare-fun ++!11232 (List!43056 List!43056) List!43056)

(assert (=> b!4011348 (= lt!1420454 (++!11232 lt!1420432 lt!1420420))))

(declare-fun lt!1420443 () List!43056)

(declare-fun suffix!1299 () List!43056)

(assert (=> b!4011348 (= lt!1420444 (++!11232 lt!1420443 suffix!1299))))

(declare-fun lt!1420419 () List!43056)

(assert (=> b!4011348 (= lt!1420420 (++!11232 lt!1420419 suffix!1299))))

(declare-fun lt!1420455 () Unit!61958)

(declare-fun lemmaConcatAssociativity!2542 (List!43056 List!43056 List!43056) Unit!61958)

(assert (=> b!4011348 (= lt!1420455 (lemmaConcatAssociativity!2542 lt!1420432 lt!1420419 suffix!1299))))

(declare-fun e!2487748 () Bool)

(declare-fun e!2487736 () Bool)

(declare-fun b!4011349 () Bool)

(declare-fun tp!1220280 () Bool)

(declare-fun inv!57342 (String!49018) Bool)

(declare-fun inv!57345 (TokenValueInjection!13548) Bool)

(assert (=> b!4011349 (= e!2487748 (and tp!1220280 (inv!57342 (tag!7690 (rule!9874 token!484))) (inv!57345 (transformation!6830 (rule!9874 token!484))) e!2487736))))

(declare-fun b!4011350 () Bool)

(declare-fun e!2487746 () Bool)

(declare-fun e!2487752 () Bool)

(assert (=> b!4011350 (= e!2487746 e!2487752)))

(declare-fun res!1630633 () Bool)

(assert (=> b!4011350 (=> res!1630633 e!2487752)))

(declare-fun lt!1420451 () List!43056)

(assert (=> b!4011350 (= res!1630633 (not (= lt!1420451 lt!1420449)))))

(declare-fun lt!1420426 () List!43056)

(assert (=> b!4011350 (= lt!1420451 (++!11232 lt!1420432 lt!1420426))))

(declare-fun getSuffix!2342 (List!43056 List!43056) List!43056)

(assert (=> b!4011350 (= lt!1420426 (getSuffix!2342 lt!1420449 lt!1420432))))

(declare-fun e!2487751 () Bool)

(assert (=> b!4011350 e!2487751))

(declare-fun res!1630613 () Bool)

(assert (=> b!4011350 (=> (not res!1630613) (not e!2487751))))

(assert (=> b!4011350 (= res!1630613 (isPrefix!3917 lt!1420449 lt!1420449))))

(declare-fun lt!1420447 () Unit!61958)

(declare-fun lemmaIsPrefixRefl!2493 (List!43056 List!43056) Unit!61958)

(assert (=> b!4011350 (= lt!1420447 (lemmaIsPrefixRefl!2493 lt!1420449 lt!1420449))))

(declare-fun b!4011351 () Bool)

(declare-fun e!2487762 () Bool)

(declare-fun e!2487740 () Bool)

(assert (=> b!4011351 (= e!2487762 e!2487740)))

(declare-fun res!1630615 () Bool)

(assert (=> b!4011351 (=> (not res!1630615) (not e!2487740))))

(declare-fun lt!1420421 () Int)

(assert (=> b!4011351 (= res!1630615 (>= lt!1420421 lt!1420441))))

(declare-fun size!32102 (List!43056) Int)

(assert (=> b!4011351 (= lt!1420441 (size!32102 lt!1420432))))

(declare-fun prefix!494 () List!43056)

(assert (=> b!4011351 (= lt!1420421 (size!32102 prefix!494))))

(declare-fun list!15956 (BalanceConc!25676) List!43056)

(declare-fun charsOf!4646 (Token!12798) BalanceConc!25676)

(assert (=> b!4011351 (= lt!1420432 (list!15956 (charsOf!4646 token!484)))))

(declare-fun b!4011352 () Bool)

(declare-fun e!2487754 () Bool)

(declare-fun tp_is_empty!20441 () Bool)

(declare-fun tp!1220282 () Bool)

(assert (=> b!4011352 (= e!2487754 (and tp_is_empty!20441 tp!1220282))))

(declare-fun b!4011353 () Bool)

(declare-fun e!2487738 () Bool)

(assert (=> b!4011353 (= e!2487740 e!2487738)))

(declare-fun res!1630624 () Bool)

(assert (=> b!4011353 (=> (not res!1630624) (not e!2487738))))

(declare-fun lt!1420445 () List!43056)

(declare-fun lt!1420429 () List!43056)

(assert (=> b!4011353 (= res!1630624 (= lt!1420445 lt!1420429))))

(declare-fun newSuffix!27 () List!43056)

(assert (=> b!4011353 (= lt!1420429 (++!11232 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43056)

(assert (=> b!4011353 (= lt!1420445 (++!11232 lt!1420432 newSuffixResult!27))))

(declare-fun b!4011354 () Bool)

(declare-fun res!1630627 () Bool)

(assert (=> b!4011354 (=> (not res!1630627) (not e!2487762))))

(assert (=> b!4011354 (= res!1630627 (>= (size!32102 suffix!1299) (size!32102 newSuffix!27)))))

(assert (=> b!4011355 (= e!2487736 (and tp!1220288 tp!1220281))))

(declare-fun b!4011356 () Bool)

(declare-fun res!1630614 () Bool)

(assert (=> b!4011356 (=> (not res!1630614) (not e!2487762))))

(declare-fun isEmpty!25646 (List!43058) Bool)

(assert (=> b!4011356 (= res!1630614 (not (isEmpty!25646 rules!2999)))))

(declare-fun b!4011357 () Bool)

(declare-fun e!2487747 () Bool)

(declare-fun tp!1220276 () Bool)

(declare-fun e!2487737 () Bool)

(assert (=> b!4011357 (= e!2487737 (and tp!1220276 (inv!57342 (tag!7690 (h!48354 rules!2999))) (inv!57345 (transformation!6830 (h!48354 rules!2999))) e!2487747))))

(declare-fun b!4011358 () Bool)

(declare-fun e!2487739 () Bool)

(declare-fun e!2487741 () Bool)

(assert (=> b!4011358 (= e!2487739 e!2487741)))

(declare-fun res!1630630 () Bool)

(assert (=> b!4011358 (=> res!1630630 e!2487741)))

(declare-fun lt!1420413 () List!43056)

(assert (=> b!4011358 (= res!1630630 (not (= lt!1420413 suffix!1299)))))

(declare-fun lt!1420442 () List!43056)

(assert (=> b!4011358 (= lt!1420413 (++!11232 newSuffix!27 lt!1420442))))

(assert (=> b!4011358 (= lt!1420442 (getSuffix!2342 suffix!1299 newSuffix!27))))

(assert (=> b!4011359 (= e!2487747 (and tp!1220277 tp!1220286))))

(declare-fun b!4011360 () Bool)

(declare-fun e!2487759 () Bool)

(assert (=> b!4011360 (= e!2487759 e!2487739)))

(declare-fun res!1630620 () Bool)

(assert (=> b!4011360 (=> res!1630620 e!2487739)))

(declare-fun lt!1420440 () Option!9244)

(declare-fun lt!1420459 () Option!9244)

(assert (=> b!4011360 (= res!1630620 (not (= lt!1420440 (Some!9243 (v!39611 lt!1420459)))))))

(declare-fun lt!1420437 () List!43056)

(assert (=> b!4011360 (isPrefix!3917 lt!1420437 (++!11232 lt!1420437 newSuffixResult!27))))

(declare-fun lt!1420436 () Unit!61958)

(assert (=> b!4011360 (= lt!1420436 (lemmaConcatTwoListThenFirstIsPrefix!2758 lt!1420437 newSuffixResult!27))))

(assert (=> b!4011360 (isPrefix!3917 lt!1420437 (++!11232 lt!1420437 (_2!24175 (v!39611 lt!1420459))))))

(declare-fun lt!1420418 () Unit!61958)

(assert (=> b!4011360 (= lt!1420418 (lemmaConcatTwoListThenFirstIsPrefix!2758 lt!1420437 (_2!24175 (v!39611 lt!1420459))))))

(declare-fun lt!1420457 () Int)

(declare-fun lt!1420435 () TokenValue!7060)

(assert (=> b!4011360 (= lt!1420440 (Some!9243 (tuple2!42083 (Token!12799 lt!1420435 (rule!9874 (_1!24175 (v!39611 lt!1420459))) lt!1420457 lt!1420437) (_2!24175 (v!39611 lt!1420459)))))))

(assert (=> b!4011360 (= lt!1420440 (maxPrefixOneRule!2737 thiss!21717 (rule!9874 (_1!24175 (v!39611 lt!1420459))) lt!1420429))))

(assert (=> b!4011360 (= lt!1420457 (size!32102 lt!1420437))))

(assert (=> b!4011360 (= lt!1420435 (apply!10027 (transformation!6830 (rule!9874 (_1!24175 (v!39611 lt!1420459)))) (seqFromList!5055 lt!1420437)))))

(declare-fun lt!1420427 () Unit!61958)

(assert (=> b!4011360 (= lt!1420427 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1555 thiss!21717 rules!2999 lt!1420437 lt!1420429 (_2!24175 (v!39611 lt!1420459)) (rule!9874 (_1!24175 (v!39611 lt!1420459)))))))

(assert (=> b!4011360 (= lt!1420437 (list!15956 (charsOf!4646 (_1!24175 (v!39611 lt!1420459)))))))

(declare-fun lt!1420415 () Unit!61958)

(declare-fun lemmaInv!1045 (TokenValueInjection!13548) Unit!61958)

(assert (=> b!4011360 (= lt!1420415 (lemmaInv!1045 (transformation!6830 (rule!9874 (_1!24175 (v!39611 lt!1420459))))))))

(declare-fun ruleValid!2762 (LexerInterface!6419 Rule!13460) Bool)

(assert (=> b!4011360 (ruleValid!2762 thiss!21717 (rule!9874 (_1!24175 (v!39611 lt!1420459))))))

(declare-fun lt!1420417 () Unit!61958)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1836 (LexerInterface!6419 Rule!13460 List!43058) Unit!61958)

(assert (=> b!4011360 (= lt!1420417 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1836 thiss!21717 (rule!9874 (_1!24175 (v!39611 lt!1420459))) rules!2999))))

(declare-fun lt!1420453 () Unit!61958)

(declare-fun lemmaCharactersSize!1389 (Token!12798) Unit!61958)

(assert (=> b!4011360 (= lt!1420453 (lemmaCharactersSize!1389 token!484))))

(declare-fun lt!1420452 () Unit!61958)

(assert (=> b!4011360 (= lt!1420452 (lemmaCharactersSize!1389 (_1!24175 (v!39611 lt!1420459))))))

(declare-fun b!4011361 () Bool)

(declare-fun e!2487750 () Bool)

(declare-fun tp!1220278 () Bool)

(assert (=> b!4011361 (= e!2487750 (and e!2487737 tp!1220278))))

(declare-fun b!4011362 () Bool)

(declare-fun e!2487749 () Bool)

(declare-fun e!2487755 () Bool)

(assert (=> b!4011362 (= e!2487749 (not e!2487755))))

(declare-fun res!1630626 () Bool)

(assert (=> b!4011362 (=> res!1630626 e!2487755)))

(declare-fun lt!1420416 () List!43056)

(assert (=> b!4011362 (= res!1630626 (not (= lt!1420416 lt!1420449)))))

(assert (=> b!4011362 (= lt!1420416 (++!11232 lt!1420432 suffixResult!105))))

(declare-fun lt!1420423 () Unit!61958)

(assert (=> b!4011362 (= lt!1420423 (lemmaInv!1045 (transformation!6830 (rule!9874 token!484))))))

(assert (=> b!4011362 (ruleValid!2762 thiss!21717 (rule!9874 token!484))))

(declare-fun lt!1420430 () Unit!61958)

(assert (=> b!4011362 (= lt!1420430 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1836 thiss!21717 (rule!9874 token!484) rules!2999))))

(declare-fun b!4011363 () Bool)

(declare-fun e!2487743 () Bool)

(declare-fun tp!1220284 () Bool)

(assert (=> b!4011363 (= e!2487743 (and tp_is_empty!20441 tp!1220284))))

(declare-fun b!4011364 () Bool)

(declare-fun e!2487753 () Bool)

(assert (=> b!4011364 (= e!2487755 e!2487753)))

(declare-fun res!1630632 () Bool)

(assert (=> b!4011364 (=> res!1630632 e!2487753)))

(assert (=> b!4011364 (= res!1630632 (not (isPrefix!3917 lt!1420432 lt!1420449)))))

(assert (=> b!4011364 (isPrefix!3917 prefix!494 lt!1420449)))

(declare-fun lt!1420428 () Unit!61958)

(assert (=> b!4011364 (= lt!1420428 (lemmaConcatTwoListThenFirstIsPrefix!2758 prefix!494 suffix!1299))))

(assert (=> b!4011364 (isPrefix!3917 lt!1420432 lt!1420416)))

(declare-fun lt!1420433 () Unit!61958)

(assert (=> b!4011364 (= lt!1420433 (lemmaConcatTwoListThenFirstIsPrefix!2758 lt!1420432 suffixResult!105))))

(declare-fun b!4011365 () Bool)

(assert (=> b!4011365 (= e!2487752 e!2487759)))

(declare-fun res!1630629 () Bool)

(assert (=> b!4011365 (=> res!1630629 e!2487759)))

(get-info :version)

(assert (=> b!4011365 (= res!1630629 (not ((_ is Some!9243) lt!1420459)))))

(declare-fun maxPrefix!3717 (LexerInterface!6419 List!43058 List!43056) Option!9244)

(assert (=> b!4011365 (= lt!1420459 (maxPrefix!3717 thiss!21717 rules!2999 lt!1420429))))

(declare-fun lt!1420456 () tuple2!42082)

(assert (=> b!4011365 (and (= suffixResult!105 lt!1420426) (= lt!1420456 (tuple2!42083 lt!1420422 lt!1420426)))))

(declare-fun lt!1420431 () Unit!61958)

(assert (=> b!4011365 (= lt!1420431 (lemmaSamePrefixThenSameSuffix!2088 lt!1420432 suffixResult!105 lt!1420432 lt!1420426 lt!1420449))))

(assert (=> b!4011365 (isPrefix!3917 lt!1420432 lt!1420451)))

(declare-fun lt!1420424 () Unit!61958)

(assert (=> b!4011365 (= lt!1420424 (lemmaConcatTwoListThenFirstIsPrefix!2758 lt!1420432 lt!1420426))))

(declare-fun b!4011366 () Bool)

(assert (=> b!4011366 (= e!2487735 e!2487746)))

(declare-fun res!1630618 () Bool)

(assert (=> b!4011366 (=> res!1630618 e!2487746)))

(declare-fun matchR!5696 (Regex!11735 List!43056) Bool)

(assert (=> b!4011366 (= res!1630618 (not (matchR!5696 (regex!6830 (rule!9874 token!484)) lt!1420432)))))

(assert (=> b!4011366 (isPrefix!3917 lt!1420432 lt!1420429)))

(declare-fun lt!1420434 () Unit!61958)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!730 (List!43056 List!43056 List!43056) Unit!61958)

(assert (=> b!4011366 (= lt!1420434 (lemmaPrefixStaysPrefixWhenAddingToSuffix!730 lt!1420432 prefix!494 newSuffix!27))))

(declare-fun lt!1420439 () Unit!61958)

(assert (=> b!4011366 (= lt!1420439 (lemmaPrefixStaysPrefixWhenAddingToSuffix!730 lt!1420432 prefix!494 suffix!1299))))

(declare-fun b!4011367 () Bool)

(declare-fun res!1630619 () Bool)

(assert (=> b!4011367 (=> (not res!1630619) (not e!2487762))))

(assert (=> b!4011367 (= res!1630619 (isPrefix!3917 newSuffix!27 suffix!1299))))

(declare-fun b!4011368 () Bool)

(declare-fun e!2487744 () Bool)

(declare-fun tp!1220287 () Bool)

(assert (=> b!4011368 (= e!2487744 (and tp_is_empty!20441 tp!1220287))))

(declare-fun b!4011369 () Bool)

(assert (=> b!4011369 (= e!2487738 e!2487749)))

(declare-fun res!1630628 () Bool)

(assert (=> b!4011369 (=> (not res!1630628) (not e!2487749))))

(assert (=> b!4011369 (= res!1630628 (= (maxPrefix!3717 thiss!21717 rules!2999 lt!1420449) lt!1420450))))

(assert (=> b!4011369 (= lt!1420450 (Some!9243 lt!1420456))))

(assert (=> b!4011369 (= lt!1420456 (tuple2!42083 token!484 suffixResult!105))))

(assert (=> b!4011369 (= lt!1420449 (++!11232 prefix!494 suffix!1299))))

(declare-fun b!4011370 () Bool)

(declare-fun res!1630616 () Bool)

(assert (=> b!4011370 (=> (not res!1630616) (not e!2487751))))

(assert (=> b!4011370 (= res!1630616 (= (value!215289 token!484) lt!1420446))))

(declare-fun b!4011371 () Bool)

(declare-fun e!2487760 () Bool)

(declare-fun tp!1220283 () Bool)

(declare-fun inv!21 (TokenValue!7060) Bool)

(assert (=> b!4011371 (= e!2487760 (and (inv!21 (value!215289 token!484)) e!2487748 tp!1220283))))

(declare-fun b!4011372 () Bool)

(assert (=> b!4011372 (= e!2487741 true)))

(assert (=> b!4011372 (= (++!11232 lt!1420429 lt!1420442) (++!11232 prefix!494 lt!1420413))))

(declare-fun lt!1420448 () Unit!61958)

(assert (=> b!4011372 (= lt!1420448 (lemmaConcatAssociativity!2542 prefix!494 newSuffix!27 lt!1420442))))

(declare-fun b!4011373 () Bool)

(declare-fun res!1630621 () Bool)

(assert (=> b!4011373 (=> (not res!1630621) (not e!2487762))))

(declare-fun rulesInvariant!5762 (LexerInterface!6419 List!43058) Bool)

(assert (=> b!4011373 (= res!1630621 (rulesInvariant!5762 thiss!21717 rules!2999))))

(declare-fun b!4011374 () Bool)

(declare-fun e!2487734 () Bool)

(declare-fun tp!1220285 () Bool)

(assert (=> b!4011374 (= e!2487734 (and tp_is_empty!20441 tp!1220285))))

(declare-fun b!4011375 () Bool)

(assert (=> b!4011375 (= e!2487751 (and (= (size!32101 token!484) lt!1420441) (= (originalCharacters!7430 token!484) lt!1420432)))))

(declare-fun b!4011376 () Bool)

(declare-fun e!2487761 () Bool)

(declare-fun tp!1220279 () Bool)

(assert (=> b!4011376 (= e!2487761 (and tp_is_empty!20441 tp!1220279))))

(declare-fun res!1630625 () Bool)

(assert (=> start!377788 (=> (not res!1630625) (not e!2487762))))

(assert (=> start!377788 (= res!1630625 ((_ is Lexer!6417) thiss!21717))))

(assert (=> start!377788 e!2487762))

(assert (=> start!377788 e!2487744))

(declare-fun inv!57346 (Token!12798) Bool)

(assert (=> start!377788 (and (inv!57346 token!484) e!2487760)))

(assert (=> start!377788 e!2487734))

(assert (=> start!377788 e!2487761))

(assert (=> start!377788 e!2487743))

(assert (=> start!377788 true))

(assert (=> start!377788 e!2487750))

(assert (=> start!377788 e!2487754))

(declare-fun b!4011377 () Bool)

(declare-fun res!1630623 () Bool)

(assert (=> b!4011377 (=> (not res!1630623) (not e!2487751))))

(assert (=> b!4011377 (= res!1630623 (= (size!32101 token!484) (size!32102 (originalCharacters!7430 token!484))))))

(declare-fun b!4011378 () Bool)

(assert (=> b!4011378 (= e!2487753 e!2487758)))

(declare-fun res!1630622 () Bool)

(assert (=> b!4011378 (=> res!1630622 e!2487758)))

(assert (=> b!4011378 (= res!1630622 (not (= lt!1420443 prefix!494)))))

(assert (=> b!4011378 (= lt!1420443 (++!11232 lt!1420432 lt!1420419))))

(assert (=> b!4011378 (= lt!1420419 (getSuffix!2342 prefix!494 lt!1420432))))

(assert (=> b!4011378 (isPrefix!3917 lt!1420432 prefix!494)))

(declare-fun lt!1420412 () Unit!61958)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!489 (List!43056 List!43056 List!43056) Unit!61958)

(assert (=> b!4011378 (= lt!1420412 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!489 prefix!494 lt!1420432 lt!1420449))))

(assert (= (and start!377788 res!1630625) b!4011356))

(assert (= (and b!4011356 res!1630614) b!4011373))

(assert (= (and b!4011373 res!1630621) b!4011354))

(assert (= (and b!4011354 res!1630627) b!4011367))

(assert (= (and b!4011367 res!1630619) b!4011351))

(assert (= (and b!4011351 res!1630615) b!4011353))

(assert (= (and b!4011353 res!1630624) b!4011369))

(assert (= (and b!4011369 res!1630628) b!4011362))

(assert (= (and b!4011362 (not res!1630626)) b!4011364))

(assert (= (and b!4011364 (not res!1630632)) b!4011378))

(assert (= (and b!4011378 (not res!1630622)) b!4011348))

(assert (= (and b!4011348 (not res!1630631)) b!4011347))

(assert (= (and b!4011347 (not res!1630617)) b!4011366))

(assert (= (and b!4011366 (not res!1630618)) b!4011350))

(assert (= (and b!4011350 res!1630613) b!4011370))

(assert (= (and b!4011370 res!1630616) b!4011377))

(assert (= (and b!4011377 res!1630623) b!4011375))

(assert (= (and b!4011350 (not res!1630633)) b!4011365))

(assert (= (and b!4011365 (not res!1630629)) b!4011360))

(assert (= (and b!4011360 (not res!1630620)) b!4011358))

(assert (= (and b!4011358 (not res!1630630)) b!4011372))

(assert (= (and start!377788 ((_ is Cons!42932) prefix!494)) b!4011368))

(assert (= b!4011349 b!4011355))

(assert (= b!4011371 b!4011349))

(assert (= start!377788 b!4011371))

(assert (= (and start!377788 ((_ is Cons!42932) suffixResult!105)) b!4011374))

(assert (= (and start!377788 ((_ is Cons!42932) suffix!1299)) b!4011376))

(assert (= (and start!377788 ((_ is Cons!42932) newSuffix!27)) b!4011363))

(assert (= b!4011357 b!4011359))

(assert (= b!4011361 b!4011357))

(assert (= (and start!377788 ((_ is Cons!42934) rules!2999)) b!4011361))

(assert (= (and start!377788 ((_ is Cons!42932) newSuffixResult!27)) b!4011352))

(declare-fun m!4596735 () Bool)

(assert (=> b!4011360 m!4596735))

(declare-fun m!4596737 () Bool)

(assert (=> b!4011360 m!4596737))

(declare-fun m!4596739 () Bool)

(assert (=> b!4011360 m!4596739))

(declare-fun m!4596741 () Bool)

(assert (=> b!4011360 m!4596741))

(declare-fun m!4596743 () Bool)

(assert (=> b!4011360 m!4596743))

(declare-fun m!4596745 () Bool)

(assert (=> b!4011360 m!4596745))

(declare-fun m!4596747 () Bool)

(assert (=> b!4011360 m!4596747))

(declare-fun m!4596749 () Bool)

(assert (=> b!4011360 m!4596749))

(assert (=> b!4011360 m!4596735))

(declare-fun m!4596751 () Bool)

(assert (=> b!4011360 m!4596751))

(declare-fun m!4596753 () Bool)

(assert (=> b!4011360 m!4596753))

(declare-fun m!4596755 () Bool)

(assert (=> b!4011360 m!4596755))

(declare-fun m!4596757 () Bool)

(assert (=> b!4011360 m!4596757))

(declare-fun m!4596759 () Bool)

(assert (=> b!4011360 m!4596759))

(assert (=> b!4011360 m!4596755))

(declare-fun m!4596761 () Bool)

(assert (=> b!4011360 m!4596761))

(declare-fun m!4596763 () Bool)

(assert (=> b!4011360 m!4596763))

(assert (=> b!4011360 m!4596739))

(declare-fun m!4596765 () Bool)

(assert (=> b!4011360 m!4596765))

(declare-fun m!4596767 () Bool)

(assert (=> b!4011360 m!4596767))

(declare-fun m!4596769 () Bool)

(assert (=> b!4011360 m!4596769))

(assert (=> b!4011360 m!4596745))

(declare-fun m!4596771 () Bool)

(assert (=> b!4011369 m!4596771))

(declare-fun m!4596773 () Bool)

(assert (=> b!4011369 m!4596773))

(declare-fun m!4596775 () Bool)

(assert (=> b!4011349 m!4596775))

(declare-fun m!4596777 () Bool)

(assert (=> b!4011349 m!4596777))

(declare-fun m!4596779 () Bool)

(assert (=> b!4011373 m!4596779))

(declare-fun m!4596781 () Bool)

(assert (=> b!4011353 m!4596781))

(declare-fun m!4596783 () Bool)

(assert (=> b!4011353 m!4596783))

(declare-fun m!4596785 () Bool)

(assert (=> b!4011365 m!4596785))

(declare-fun m!4596787 () Bool)

(assert (=> b!4011365 m!4596787))

(declare-fun m!4596789 () Bool)

(assert (=> b!4011365 m!4596789))

(declare-fun m!4596791 () Bool)

(assert (=> b!4011365 m!4596791))

(declare-fun m!4596793 () Bool)

(assert (=> b!4011371 m!4596793))

(declare-fun m!4596795 () Bool)

(assert (=> b!4011356 m!4596795))

(declare-fun m!4596797 () Bool)

(assert (=> b!4011378 m!4596797))

(declare-fun m!4596799 () Bool)

(assert (=> b!4011378 m!4596799))

(declare-fun m!4596801 () Bool)

(assert (=> b!4011378 m!4596801))

(declare-fun m!4596803 () Bool)

(assert (=> b!4011378 m!4596803))

(declare-fun m!4596805 () Bool)

(assert (=> b!4011358 m!4596805))

(declare-fun m!4596807 () Bool)

(assert (=> b!4011358 m!4596807))

(declare-fun m!4596809 () Bool)

(assert (=> b!4011347 m!4596809))

(declare-fun m!4596811 () Bool)

(assert (=> b!4011347 m!4596811))

(assert (=> b!4011347 m!4596809))

(declare-fun m!4596813 () Bool)

(assert (=> b!4011347 m!4596813))

(declare-fun m!4596815 () Bool)

(assert (=> b!4011347 m!4596815))

(declare-fun m!4596817 () Bool)

(assert (=> b!4011347 m!4596817))

(declare-fun m!4596819 () Bool)

(assert (=> b!4011347 m!4596819))

(declare-fun m!4596821 () Bool)

(assert (=> b!4011347 m!4596821))

(declare-fun m!4596823 () Bool)

(assert (=> b!4011364 m!4596823))

(declare-fun m!4596825 () Bool)

(assert (=> b!4011364 m!4596825))

(declare-fun m!4596827 () Bool)

(assert (=> b!4011364 m!4596827))

(declare-fun m!4596829 () Bool)

(assert (=> b!4011364 m!4596829))

(declare-fun m!4596831 () Bool)

(assert (=> b!4011364 m!4596831))

(declare-fun m!4596833 () Bool)

(assert (=> b!4011366 m!4596833))

(declare-fun m!4596835 () Bool)

(assert (=> b!4011366 m!4596835))

(declare-fun m!4596837 () Bool)

(assert (=> b!4011366 m!4596837))

(declare-fun m!4596839 () Bool)

(assert (=> b!4011366 m!4596839))

(declare-fun m!4596841 () Bool)

(assert (=> b!4011348 m!4596841))

(declare-fun m!4596843 () Bool)

(assert (=> b!4011348 m!4596843))

(declare-fun m!4596845 () Bool)

(assert (=> b!4011348 m!4596845))

(declare-fun m!4596847 () Bool)

(assert (=> b!4011348 m!4596847))

(declare-fun m!4596849 () Bool)

(assert (=> start!377788 m!4596849))

(declare-fun m!4596851 () Bool)

(assert (=> b!4011367 m!4596851))

(declare-fun m!4596853 () Bool)

(assert (=> b!4011372 m!4596853))

(declare-fun m!4596855 () Bool)

(assert (=> b!4011372 m!4596855))

(declare-fun m!4596857 () Bool)

(assert (=> b!4011372 m!4596857))

(declare-fun m!4596859 () Bool)

(assert (=> b!4011350 m!4596859))

(declare-fun m!4596861 () Bool)

(assert (=> b!4011350 m!4596861))

(declare-fun m!4596863 () Bool)

(assert (=> b!4011350 m!4596863))

(declare-fun m!4596865 () Bool)

(assert (=> b!4011350 m!4596865))

(declare-fun m!4596867 () Bool)

(assert (=> b!4011357 m!4596867))

(declare-fun m!4596869 () Bool)

(assert (=> b!4011357 m!4596869))

(declare-fun m!4596871 () Bool)

(assert (=> b!4011354 m!4596871))

(declare-fun m!4596873 () Bool)

(assert (=> b!4011354 m!4596873))

(declare-fun m!4596875 () Bool)

(assert (=> b!4011377 m!4596875))

(declare-fun m!4596877 () Bool)

(assert (=> b!4011362 m!4596877))

(declare-fun m!4596879 () Bool)

(assert (=> b!4011362 m!4596879))

(declare-fun m!4596881 () Bool)

(assert (=> b!4011362 m!4596881))

(declare-fun m!4596883 () Bool)

(assert (=> b!4011362 m!4596883))

(declare-fun m!4596885 () Bool)

(assert (=> b!4011351 m!4596885))

(declare-fun m!4596887 () Bool)

(assert (=> b!4011351 m!4596887))

(declare-fun m!4596889 () Bool)

(assert (=> b!4011351 m!4596889))

(assert (=> b!4011351 m!4596889))

(declare-fun m!4596891 () Bool)

(assert (=> b!4011351 m!4596891))

(check-sat (not b_next!112283) (not b_next!112287) (not b!4011354) (not start!377788) (not b!4011369) (not b!4011364) (not b!4011366) (not b!4011350) (not b!4011353) (not b!4011374) b_and!308155 (not b!4011377) tp_is_empty!20441 (not b!4011365) (not b!4011360) (not b!4011371) (not b!4011351) b_and!308151 (not b!4011347) (not b!4011378) (not b!4011363) (not b!4011356) (not b!4011376) (not b_next!112285) (not b!4011367) (not b!4011373) b_and!308153 (not b!4011357) (not b!4011362) (not b_next!112281) (not b!4011368) (not b!4011349) (not b!4011372) (not b!4011361) b_and!308157 (not b!4011352) (not b!4011358) (not b!4011348))
(check-sat (not b_next!112283) (not b_next!112287) b_and!308151 (not b_next!112285) b_and!308155 b_and!308153 (not b_next!112281) b_and!308157)
