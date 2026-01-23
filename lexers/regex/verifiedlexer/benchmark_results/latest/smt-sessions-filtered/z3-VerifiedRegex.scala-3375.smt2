; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!191332 () Bool)

(assert start!191332)

(declare-fun b!1907389 () Bool)

(declare-fun b_free!53729 () Bool)

(declare-fun b_next!54433 () Bool)

(assert (=> b!1907389 (= b_free!53729 (not b_next!54433))))

(declare-fun tp!544553 () Bool)

(declare-fun b_and!148299 () Bool)

(assert (=> b!1907389 (= tp!544553 b_and!148299)))

(declare-fun b_free!53731 () Bool)

(declare-fun b_next!54435 () Bool)

(assert (=> b!1907389 (= b_free!53731 (not b_next!54435))))

(declare-fun tp!544551 () Bool)

(declare-fun b_and!148301 () Bool)

(assert (=> b!1907389 (= tp!544551 b_and!148301)))

(declare-fun b!1907387 () Bool)

(declare-fun b_free!53733 () Bool)

(declare-fun b_next!54437 () Bool)

(assert (=> b!1907387 (= b_free!53733 (not b_next!54437))))

(declare-fun tp!544558 () Bool)

(declare-fun b_and!148303 () Bool)

(assert (=> b!1907387 (= tp!544558 b_and!148303)))

(declare-fun b_free!53735 () Bool)

(declare-fun b_next!54439 () Bool)

(assert (=> b!1907387 (= b_free!53735 (not b_next!54439))))

(declare-fun tp!544549 () Bool)

(declare-fun b_and!148305 () Bool)

(assert (=> b!1907387 (= tp!544549 b_and!148305)))

(declare-fun b!1907400 () Bool)

(declare-fun b_free!53737 () Bool)

(declare-fun b_next!54441 () Bool)

(assert (=> b!1907400 (= b_free!53737 (not b_next!54441))))

(declare-fun tp!544557 () Bool)

(declare-fun b_and!148307 () Bool)

(assert (=> b!1907400 (= tp!544557 b_and!148307)))

(declare-fun b_free!53739 () Bool)

(declare-fun b_next!54443 () Bool)

(assert (=> b!1907400 (= b_free!53739 (not b_next!54443))))

(declare-fun tp!544559 () Bool)

(declare-fun b_and!148309 () Bool)

(assert (=> b!1907400 (= tp!544559 b_and!148309)))

(declare-datatypes ((List!21564 0))(
  ( (Nil!21482) (Cons!21482 (h!26883 (_ BitVec 16)) (t!177699 List!21564)) )
))
(declare-datatypes ((TokenValue!3962 0))(
  ( (FloatLiteralValue!7924 (text!28179 List!21564)) (TokenValueExt!3961 (__x!13422 Int)) (Broken!19810 (value!120606 List!21564)) (Object!4043) (End!3962) (Def!3962) (Underscore!3962) (Match!3962) (Else!3962) (Error!3962) (Case!3962) (If!3962) (Extends!3962) (Abstract!3962) (Class!3962) (Val!3962) (DelimiterValue!7924 (del!4022 List!21564)) (KeywordValue!3968 (value!120607 List!21564)) (CommentValue!7924 (value!120608 List!21564)) (WhitespaceValue!7924 (value!120609 List!21564)) (IndentationValue!3962 (value!120610 List!21564)) (String!24927) (Int32!3962) (Broken!19811 (value!120611 List!21564)) (Boolean!3963) (Unit!35819) (OperatorValue!3965 (op!4022 List!21564)) (IdentifierValue!7924 (value!120612 List!21564)) (IdentifierValue!7925 (value!120613 List!21564)) (WhitespaceValue!7925 (value!120614 List!21564)) (True!7924) (False!7924) (Broken!19812 (value!120615 List!21564)) (Broken!19813 (value!120616 List!21564)) (True!7925) (RightBrace!3962) (RightBracket!3962) (Colon!3962) (Null!3962) (Comma!3962) (LeftBracket!3962) (False!7925) (LeftBrace!3962) (ImaginaryLiteralValue!3962 (text!28180 List!21564)) (StringLiteralValue!11886 (value!120617 List!21564)) (EOFValue!3962 (value!120618 List!21564)) (IdentValue!3962 (value!120619 List!21564)) (DelimiterValue!7925 (value!120620 List!21564)) (DedentValue!3962 (value!120621 List!21564)) (NewLineValue!3962 (value!120622 List!21564)) (IntegerValue!11886 (value!120623 (_ BitVec 32)) (text!28181 List!21564)) (IntegerValue!11887 (value!120624 Int) (text!28182 List!21564)) (Times!3962) (Or!3962) (Equal!3962) (Minus!3962) (Broken!19814 (value!120625 List!21564)) (And!3962) (Div!3962) (LessEqual!3962) (Mod!3962) (Concat!9213) (Not!3962) (Plus!3962) (SpaceValue!3962 (value!120626 List!21564)) (IntegerValue!11888 (value!120627 Int) (text!28183 List!21564)) (StringLiteralValue!11887 (text!28184 List!21564)) (FloatLiteralValue!7925 (text!28185 List!21564)) (BytesLiteralValue!3962 (value!120628 List!21564)) (CommentValue!7925 (value!120629 List!21564)) (StringLiteralValue!11888 (value!120630 List!21564)) (ErrorTokenValue!3962 (msg!4023 List!21564)) )
))
(declare-datatypes ((C!10648 0))(
  ( (C!10649 (val!6276 Int)) )
))
(declare-datatypes ((List!21565 0))(
  ( (Nil!21483) (Cons!21483 (h!26884 C!10648) (t!177700 List!21565)) )
))
(declare-datatypes ((String!24928 0))(
  ( (String!24929 (value!120631 String)) )
))
(declare-datatypes ((Regex!5251 0))(
  ( (ElementMatch!5251 (c!310755 C!10648)) (Concat!9214 (regOne!11014 Regex!5251) (regTwo!11014 Regex!5251)) (EmptyExpr!5251) (Star!5251 (reg!5580 Regex!5251)) (EmptyLang!5251) (Union!5251 (regOne!11015 Regex!5251) (regTwo!11015 Regex!5251)) )
))
(declare-datatypes ((IArray!14295 0))(
  ( (IArray!14296 (innerList!7205 List!21565)) )
))
(declare-datatypes ((Conc!7145 0))(
  ( (Node!7145 (left!17176 Conc!7145) (right!17506 Conc!7145) (csize!14520 Int) (cheight!7356 Int)) (Leaf!10521 (xs!10039 IArray!14295) (csize!14521 Int)) (Empty!7145) )
))
(declare-datatypes ((BalanceConc!14106 0))(
  ( (BalanceConc!14107 (c!310756 Conc!7145)) )
))
(declare-datatypes ((TokenValueInjection!7508 0))(
  ( (TokenValueInjection!7509 (toValue!5451 Int) (toChars!5310 Int)) )
))
(declare-datatypes ((Rule!7452 0))(
  ( (Rule!7453 (regex!3826 Regex!5251) (tag!4258 String!24928) (isSeparator!3826 Bool) (transformation!3826 TokenValueInjection!7508)) )
))
(declare-datatypes ((Token!7204 0))(
  ( (Token!7205 (value!120632 TokenValue!3962) (rule!6023 Rule!7452) (size!16944 Int) (originalCharacters!4633 List!21565)) )
))
(declare-fun separatorToken!354 () Token!7204)

(declare-fun tp!544552 () Bool)

(declare-fun e!1218301 () Bool)

(declare-fun e!1218309 () Bool)

(declare-fun b!1907383 () Bool)

(declare-fun inv!21 (TokenValue!3962) Bool)

(assert (=> b!1907383 (= e!1218309 (and (inv!21 (value!120632 separatorToken!354)) e!1218301 tp!544552))))

(declare-fun b!1907384 () Bool)

(declare-fun res!851673 () Bool)

(declare-fun e!1218307 () Bool)

(assert (=> b!1907384 (=> (not res!851673) (not e!1218307))))

(declare-datatypes ((List!21566 0))(
  ( (Nil!21484) (Cons!21484 (h!26885 Token!7204) (t!177701 List!21566)) )
))
(declare-fun tokens!598 () List!21566)

(get-info :version)

(assert (=> b!1907384 (= res!851673 ((_ is Cons!21484) tokens!598))))

(declare-fun b!1907385 () Bool)

(declare-fun e!1218319 () Bool)

(declare-fun e!1218299 () Bool)

(assert (=> b!1907385 (= e!1218319 e!1218299)))

(declare-fun res!851683 () Bool)

(assert (=> b!1907385 (=> (not res!851683) (not e!1218299))))

(declare-fun lt!729321 () Rule!7452)

(declare-fun lt!729332 () List!21565)

(declare-fun matchR!2537 (Regex!5251 List!21565) Bool)

(assert (=> b!1907385 (= res!851683 (matchR!2537 (regex!3826 lt!729321) lt!729332))))

(declare-datatypes ((Option!4357 0))(
  ( (None!4356) (Some!4356 (v!26399 Rule!7452)) )
))
(declare-fun lt!729324 () Option!4357)

(declare-fun get!6677 (Option!4357) Rule!7452)

(assert (=> b!1907385 (= lt!729321 (get!6677 lt!729324))))

(declare-fun b!1907386 () Bool)

(declare-fun res!851684 () Bool)

(assert (=> b!1907386 (=> (not res!851684) (not e!1218307))))

(declare-datatypes ((LexerInterface!3439 0))(
  ( (LexerInterfaceExt!3436 (__x!13423 Int)) (Lexer!3437) )
))
(declare-fun thiss!23328 () LexerInterface!3439)

(declare-datatypes ((List!21567 0))(
  ( (Nil!21485) (Cons!21485 (h!26886 Rule!7452) (t!177702 List!21567)) )
))
(declare-fun rules!3198 () List!21567)

(declare-fun rulesProduceEachTokenIndividuallyList!1170 (LexerInterface!3439 List!21567 List!21566) Bool)

(assert (=> b!1907386 (= res!851684 (rulesProduceEachTokenIndividuallyList!1170 thiss!23328 rules!3198 tokens!598))))

(declare-fun e!1218306 () Bool)

(assert (=> b!1907387 (= e!1218306 (and tp!544558 tp!544549))))

(declare-fun e!1218320 () Bool)

(assert (=> b!1907389 (= e!1218320 (and tp!544553 tp!544551))))

(declare-fun b!1907390 () Bool)

(declare-fun e!1218310 () Bool)

(declare-fun lt!729326 () List!21565)

(assert (=> b!1907390 (= e!1218310 (not (= lt!729326 Nil!21483)))))

(declare-datatypes ((Unit!35820 0))(
  ( (Unit!35821) )
))
(declare-fun lt!729331 () Unit!35820)

(declare-fun e!1218302 () Unit!35820)

(assert (=> b!1907390 (= lt!729331 e!1218302)))

(declare-fun c!310754 () Bool)

(declare-fun lt!729334 () C!10648)

(declare-fun contains!3863 (List!21565 C!10648) Bool)

(declare-fun usedCharacters!334 (Regex!5251) List!21565)

(assert (=> b!1907390 (= c!310754 (not (contains!3863 (usedCharacters!334 (regex!3826 (rule!6023 separatorToken!354))) lt!729334)))))

(declare-fun head!4428 (List!21565) C!10648)

(assert (=> b!1907390 (= lt!729334 (head!4428 lt!729326))))

(declare-fun lt!729325 () List!21565)

(declare-fun ++!5773 (List!21565 List!21565) List!21565)

(assert (=> b!1907390 (= (++!5773 (++!5773 lt!729332 lt!729326) lt!729325) (++!5773 lt!729332 (++!5773 lt!729326 lt!729325)))))

(declare-fun lt!729329 () Unit!35820)

(declare-fun lemmaConcatAssociativity!1141 (List!21565 List!21565 List!21565) Unit!35820)

(assert (=> b!1907390 (= lt!729329 (lemmaConcatAssociativity!1141 lt!729332 lt!729326 lt!729325))))

(declare-fun b!1907391 () Bool)

(declare-fun Unit!35822 () Unit!35820)

(assert (=> b!1907391 (= e!1218302 Unit!35822)))

(declare-fun b!1907392 () Bool)

(declare-fun res!851688 () Bool)

(assert (=> b!1907392 (=> (not res!851688) (not e!1218307))))

(declare-fun lambda!74515 () Int)

(declare-fun forall!4514 (List!21566 Int) Bool)

(assert (=> b!1907392 (= res!851688 (forall!4514 tokens!598 lambda!74515))))

(declare-fun e!1218314 () Bool)

(declare-fun tp!544550 () Bool)

(declare-fun b!1907393 () Bool)

(declare-fun e!1218318 () Bool)

(assert (=> b!1907393 (= e!1218314 (and (inv!21 (value!120632 (h!26885 tokens!598))) e!1218318 tp!544550))))

(declare-fun tp!544554 () Bool)

(declare-fun b!1907394 () Bool)

(declare-fun inv!28584 (String!24928) Bool)

(declare-fun inv!28587 (TokenValueInjection!7508) Bool)

(assert (=> b!1907394 (= e!1218318 (and tp!544554 (inv!28584 (tag!4258 (rule!6023 (h!26885 tokens!598)))) (inv!28587 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) e!1218306))))

(declare-fun tp!544560 () Bool)

(declare-fun e!1218308 () Bool)

(declare-fun b!1907395 () Bool)

(declare-fun inv!28588 (Token!7204) Bool)

(assert (=> b!1907395 (= e!1218308 (and (inv!28588 (h!26885 tokens!598)) e!1218314 tp!544560))))

(declare-fun b!1907396 () Bool)

(declare-fun res!851674 () Bool)

(assert (=> b!1907396 (=> (not res!851674) (not e!1218307))))

(declare-fun rulesProduceIndividualToken!1611 (LexerInterface!3439 List!21567 Token!7204) Bool)

(assert (=> b!1907396 (= res!851674 (rulesProduceIndividualToken!1611 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1907397 () Bool)

(declare-fun e!1218305 () Bool)

(declare-fun lt!729320 () Rule!7452)

(assert (=> b!1907397 (= e!1218305 (= (rule!6023 separatorToken!354) lt!729320))))

(declare-fun b!1907398 () Bool)

(declare-fun Unit!35823 () Unit!35820)

(assert (=> b!1907398 (= e!1218302 Unit!35823)))

(declare-fun lt!729318 () Unit!35820)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!234 (Regex!5251 List!21565 C!10648) Unit!35820)

(assert (=> b!1907398 (= lt!729318 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!234 (regex!3826 (rule!6023 separatorToken!354)) lt!729326 lt!729334))))

(declare-fun res!851685 () Bool)

(assert (=> b!1907398 (= res!851685 (not (matchR!2537 (regex!3826 (rule!6023 separatorToken!354)) lt!729326)))))

(declare-fun e!1218316 () Bool)

(assert (=> b!1907398 (=> (not res!851685) (not e!1218316))))

(assert (=> b!1907398 e!1218316))

(declare-fun b!1907399 () Bool)

(assert (=> b!1907399 (= e!1218316 false)))

(declare-fun e!1218313 () Bool)

(assert (=> b!1907400 (= e!1218313 (and tp!544557 tp!544559))))

(declare-fun tp!544556 () Bool)

(declare-fun b!1907388 () Bool)

(declare-fun e!1218304 () Bool)

(assert (=> b!1907388 (= e!1218304 (and tp!544556 (inv!28584 (tag!4258 (h!26886 rules!3198))) (inv!28587 (transformation!3826 (h!26886 rules!3198))) e!1218320))))

(declare-fun res!851686 () Bool)

(assert (=> start!191332 (=> (not res!851686) (not e!1218307))))

(assert (=> start!191332 (= res!851686 ((_ is Lexer!3437) thiss!23328))))

(assert (=> start!191332 e!1218307))

(assert (=> start!191332 true))

(declare-fun e!1218303 () Bool)

(assert (=> start!191332 e!1218303))

(assert (=> start!191332 e!1218308))

(assert (=> start!191332 (and (inv!28588 separatorToken!354) e!1218309)))

(declare-fun b!1907401 () Bool)

(declare-fun res!851676 () Bool)

(assert (=> b!1907401 (=> (not res!851676) (not e!1218307))))

(declare-fun isEmpty!13192 (List!21567) Bool)

(assert (=> b!1907401 (= res!851676 (not (isEmpty!13192 rules!3198)))))

(declare-fun tp!544548 () Bool)

(declare-fun b!1907402 () Bool)

(assert (=> b!1907402 (= e!1218301 (and tp!544548 (inv!28584 (tag!4258 (rule!6023 separatorToken!354))) (inv!28587 (transformation!3826 (rule!6023 separatorToken!354))) e!1218313))))

(declare-fun b!1907403 () Bool)

(declare-fun res!851679 () Bool)

(assert (=> b!1907403 (=> (not res!851679) (not e!1218307))))

(declare-fun sepAndNonSepRulesDisjointChars!924 (List!21567 List!21567) Bool)

(assert (=> b!1907403 (= res!851679 (sepAndNonSepRulesDisjointChars!924 rules!3198 rules!3198))))

(declare-fun b!1907404 () Bool)

(declare-fun e!1218321 () Bool)

(assert (=> b!1907404 (= e!1218321 e!1218305)))

(declare-fun res!851681 () Bool)

(assert (=> b!1907404 (=> (not res!851681) (not e!1218305))))

(assert (=> b!1907404 (= res!851681 (matchR!2537 (regex!3826 lt!729320) lt!729326))))

(declare-fun lt!729316 () Option!4357)

(assert (=> b!1907404 (= lt!729320 (get!6677 lt!729316))))

(declare-fun b!1907405 () Bool)

(assert (=> b!1907405 (= e!1218299 (= (rule!6023 (h!26885 tokens!598)) lt!729321))))

(declare-fun b!1907406 () Bool)

(declare-fun tp!544555 () Bool)

(assert (=> b!1907406 (= e!1218303 (and e!1218304 tp!544555))))

(declare-fun b!1907407 () Bool)

(declare-fun res!851677 () Bool)

(assert (=> b!1907407 (=> (not res!851677) (not e!1218307))))

(declare-fun rulesInvariant!3046 (LexerInterface!3439 List!21567) Bool)

(assert (=> b!1907407 (= res!851677 (rulesInvariant!3046 thiss!23328 rules!3198))))

(declare-fun b!1907408 () Bool)

(assert (=> b!1907408 (= e!1218307 (not e!1218310))))

(declare-fun res!851680 () Bool)

(assert (=> b!1907408 (=> res!851680 e!1218310)))

(declare-datatypes ((tuple2!20220 0))(
  ( (tuple2!20221 (_1!11579 Token!7204) (_2!11579 List!21565)) )
))
(declare-datatypes ((Option!4358 0))(
  ( (None!4357) (Some!4357 (v!26400 tuple2!20220)) )
))
(declare-fun lt!729327 () Option!4358)

(declare-fun lt!729328 () Bool)

(assert (=> b!1907408 (= res!851680 (or (and (not lt!729328) (= (_1!11579 (v!26400 lt!729327)) (h!26885 tokens!598))) lt!729328 (= (_1!11579 (v!26400 lt!729327)) (h!26885 tokens!598))))))

(assert (=> b!1907408 (= lt!729328 (not ((_ is Some!4357) lt!729327)))))

(declare-fun maxPrefix!1885 (LexerInterface!3439 List!21567 List!21565) Option!4358)

(assert (=> b!1907408 (= lt!729327 (maxPrefix!1885 thiss!23328 rules!3198 (++!5773 lt!729332 lt!729325)))))

(declare-fun printWithSeparatorTokenWhenNeededList!482 (LexerInterface!3439 List!21567 List!21566 Token!7204) List!21565)

(assert (=> b!1907408 (= lt!729325 (printWithSeparatorTokenWhenNeededList!482 thiss!23328 rules!3198 (t!177701 tokens!598) separatorToken!354))))

(assert (=> b!1907408 e!1218319))

(declare-fun res!851687 () Bool)

(assert (=> b!1907408 (=> (not res!851687) (not e!1218319))))

(declare-fun isDefined!3655 (Option!4357) Bool)

(assert (=> b!1907408 (= res!851687 (isDefined!3655 lt!729324))))

(declare-fun getRuleFromTag!669 (LexerInterface!3439 List!21567 String!24928) Option!4357)

(assert (=> b!1907408 (= lt!729324 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 (h!26885 tokens!598)))))))

(declare-fun lt!729333 () Unit!35820)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!669 (LexerInterface!3439 List!21567 List!21565 Token!7204) Unit!35820)

(assert (=> b!1907408 (= lt!729333 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!669 thiss!23328 rules!3198 lt!729332 (h!26885 tokens!598)))))

(declare-fun e!1218312 () Bool)

(assert (=> b!1907408 e!1218312))

(declare-fun res!851678 () Bool)

(assert (=> b!1907408 (=> (not res!851678) (not e!1218312))))

(declare-fun lt!729322 () Option!4358)

(declare-fun isDefined!3656 (Option!4358) Bool)

(assert (=> b!1907408 (= res!851678 (isDefined!3656 lt!729322))))

(assert (=> b!1907408 (= lt!729322 (maxPrefix!1885 thiss!23328 rules!3198 lt!729332))))

(declare-fun lt!729323 () BalanceConc!14106)

(declare-fun list!8738 (BalanceConc!14106) List!21565)

(assert (=> b!1907408 (= lt!729332 (list!8738 lt!729323))))

(assert (=> b!1907408 e!1218321))

(declare-fun res!851682 () Bool)

(assert (=> b!1907408 (=> (not res!851682) (not e!1218321))))

(assert (=> b!1907408 (= res!851682 (isDefined!3655 lt!729316))))

(assert (=> b!1907408 (= lt!729316 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 separatorToken!354))))))

(declare-fun lt!729317 () Unit!35820)

(assert (=> b!1907408 (= lt!729317 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!669 thiss!23328 rules!3198 lt!729326 separatorToken!354))))

(declare-fun charsOf!2382 (Token!7204) BalanceConc!14106)

(assert (=> b!1907408 (= lt!729326 (list!8738 (charsOf!2382 separatorToken!354)))))

(declare-fun lt!729330 () Unit!35820)

(declare-fun lemmaEqSameImage!534 (TokenValueInjection!7508 BalanceConc!14106 BalanceConc!14106) Unit!35820)

(declare-fun seqFromList!2698 (List!21565) BalanceConc!14106)

(assert (=> b!1907408 (= lt!729330 (lemmaEqSameImage!534 (transformation!3826 (rule!6023 (h!26885 tokens!598))) lt!729323 (seqFromList!2698 (originalCharacters!4633 (h!26885 tokens!598)))))))

(declare-fun lt!729319 () Unit!35820)

(declare-fun lemmaSemiInverse!805 (TokenValueInjection!7508 BalanceConc!14106) Unit!35820)

(assert (=> b!1907408 (= lt!729319 (lemmaSemiInverse!805 (transformation!3826 (rule!6023 (h!26885 tokens!598))) lt!729323))))

(assert (=> b!1907408 (= lt!729323 (charsOf!2382 (h!26885 tokens!598)))))

(declare-fun b!1907409 () Bool)

(declare-fun get!6678 (Option!4358) tuple2!20220)

(assert (=> b!1907409 (= e!1218312 (= (_1!11579 (get!6678 lt!729322)) (h!26885 tokens!598)))))

(declare-fun b!1907410 () Bool)

(declare-fun res!851675 () Bool)

(assert (=> b!1907410 (=> (not res!851675) (not e!1218307))))

(assert (=> b!1907410 (= res!851675 (isSeparator!3826 (rule!6023 separatorToken!354)))))

(assert (= (and start!191332 res!851686) b!1907401))

(assert (= (and b!1907401 res!851676) b!1907407))

(assert (= (and b!1907407 res!851677) b!1907386))

(assert (= (and b!1907386 res!851684) b!1907396))

(assert (= (and b!1907396 res!851674) b!1907410))

(assert (= (and b!1907410 res!851675) b!1907392))

(assert (= (and b!1907392 res!851688) b!1907403))

(assert (= (and b!1907403 res!851679) b!1907384))

(assert (= (and b!1907384 res!851673) b!1907408))

(assert (= (and b!1907408 res!851682) b!1907404))

(assert (= (and b!1907404 res!851681) b!1907397))

(assert (= (and b!1907408 res!851678) b!1907409))

(assert (= (and b!1907408 res!851687) b!1907385))

(assert (= (and b!1907385 res!851683) b!1907405))

(assert (= (and b!1907408 (not res!851680)) b!1907390))

(assert (= (and b!1907390 c!310754) b!1907398))

(assert (= (and b!1907390 (not c!310754)) b!1907391))

(assert (= (and b!1907398 res!851685) b!1907399))

(assert (= b!1907388 b!1907389))

(assert (= b!1907406 b!1907388))

(assert (= (and start!191332 ((_ is Cons!21485) rules!3198)) b!1907406))

(assert (= b!1907394 b!1907387))

(assert (= b!1907393 b!1907394))

(assert (= b!1907395 b!1907393))

(assert (= (and start!191332 ((_ is Cons!21484) tokens!598)) b!1907395))

(assert (= b!1907402 b!1907400))

(assert (= b!1907383 b!1907402))

(assert (= start!191332 b!1907383))

(declare-fun m!2340097 () Bool)

(assert (=> b!1907390 m!2340097))

(declare-fun m!2340099 () Bool)

(assert (=> b!1907390 m!2340099))

(declare-fun m!2340101 () Bool)

(assert (=> b!1907390 m!2340101))

(assert (=> b!1907390 m!2340101))

(declare-fun m!2340103 () Bool)

(assert (=> b!1907390 m!2340103))

(declare-fun m!2340105 () Bool)

(assert (=> b!1907390 m!2340105))

(declare-fun m!2340107 () Bool)

(assert (=> b!1907390 m!2340107))

(declare-fun m!2340109 () Bool)

(assert (=> b!1907390 m!2340109))

(assert (=> b!1907390 m!2340097))

(declare-fun m!2340111 () Bool)

(assert (=> b!1907390 m!2340111))

(assert (=> b!1907390 m!2340105))

(declare-fun m!2340113 () Bool)

(assert (=> b!1907394 m!2340113))

(declare-fun m!2340115 () Bool)

(assert (=> b!1907394 m!2340115))

(declare-fun m!2340117 () Bool)

(assert (=> b!1907409 m!2340117))

(declare-fun m!2340119 () Bool)

(assert (=> b!1907407 m!2340119))

(declare-fun m!2340121 () Bool)

(assert (=> b!1907402 m!2340121))

(declare-fun m!2340123 () Bool)

(assert (=> b!1907402 m!2340123))

(declare-fun m!2340125 () Bool)

(assert (=> b!1907392 m!2340125))

(declare-fun m!2340127 () Bool)

(assert (=> b!1907393 m!2340127))

(declare-fun m!2340129 () Bool)

(assert (=> b!1907408 m!2340129))

(declare-fun m!2340131 () Bool)

(assert (=> b!1907408 m!2340131))

(declare-fun m!2340133 () Bool)

(assert (=> b!1907408 m!2340133))

(declare-fun m!2340135 () Bool)

(assert (=> b!1907408 m!2340135))

(declare-fun m!2340137 () Bool)

(assert (=> b!1907408 m!2340137))

(declare-fun m!2340139 () Bool)

(assert (=> b!1907408 m!2340139))

(declare-fun m!2340141 () Bool)

(assert (=> b!1907408 m!2340141))

(declare-fun m!2340143 () Bool)

(assert (=> b!1907408 m!2340143))

(declare-fun m!2340145 () Bool)

(assert (=> b!1907408 m!2340145))

(declare-fun m!2340147 () Bool)

(assert (=> b!1907408 m!2340147))

(declare-fun m!2340149 () Bool)

(assert (=> b!1907408 m!2340149))

(assert (=> b!1907408 m!2340129))

(declare-fun m!2340151 () Bool)

(assert (=> b!1907408 m!2340151))

(declare-fun m!2340153 () Bool)

(assert (=> b!1907408 m!2340153))

(declare-fun m!2340155 () Bool)

(assert (=> b!1907408 m!2340155))

(declare-fun m!2340157 () Bool)

(assert (=> b!1907408 m!2340157))

(assert (=> b!1907408 m!2340143))

(assert (=> b!1907408 m!2340133))

(declare-fun m!2340159 () Bool)

(assert (=> b!1907408 m!2340159))

(declare-fun m!2340161 () Bool)

(assert (=> b!1907408 m!2340161))

(declare-fun m!2340163 () Bool)

(assert (=> b!1907408 m!2340163))

(declare-fun m!2340165 () Bool)

(assert (=> b!1907383 m!2340165))

(declare-fun m!2340167 () Bool)

(assert (=> b!1907386 m!2340167))

(declare-fun m!2340169 () Bool)

(assert (=> b!1907398 m!2340169))

(declare-fun m!2340171 () Bool)

(assert (=> b!1907398 m!2340171))

(declare-fun m!2340173 () Bool)

(assert (=> b!1907385 m!2340173))

(declare-fun m!2340175 () Bool)

(assert (=> b!1907385 m!2340175))

(declare-fun m!2340177 () Bool)

(assert (=> b!1907404 m!2340177))

(declare-fun m!2340179 () Bool)

(assert (=> b!1907404 m!2340179))

(declare-fun m!2340181 () Bool)

(assert (=> b!1907388 m!2340181))

(declare-fun m!2340183 () Bool)

(assert (=> b!1907388 m!2340183))

(declare-fun m!2340185 () Bool)

(assert (=> b!1907403 m!2340185))

(declare-fun m!2340187 () Bool)

(assert (=> b!1907401 m!2340187))

(declare-fun m!2340189 () Bool)

(assert (=> b!1907396 m!2340189))

(declare-fun m!2340191 () Bool)

(assert (=> b!1907395 m!2340191))

(declare-fun m!2340193 () Bool)

(assert (=> start!191332 m!2340193))

(check-sat (not b!1907388) (not b!1907404) (not b!1907396) (not b_next!54441) (not b!1907401) (not b!1907386) (not b!1907395) b_and!148307 b_and!148299 (not b!1907406) b_and!148305 (not b!1907383) (not b!1907402) (not b!1907409) (not start!191332) (not b!1907385) (not b!1907394) (not b!1907407) b_and!148309 (not b!1907390) (not b_next!54439) b_and!148303 (not b!1907403) (not b_next!54437) (not b!1907408) (not b_next!54443) (not b_next!54433) (not b!1907392) b_and!148301 (not b_next!54435) (not b!1907393) (not b!1907398))
(check-sat (not b_next!54441) b_and!148309 (not b_next!54439) b_and!148307 b_and!148299 (not b_next!54443) (not b_next!54433) b_and!148305 b_and!148303 (not b_next!54437) b_and!148301 (not b_next!54435))
(get-model)

(declare-fun d!583508 () Bool)

(declare-fun res!851709 () Bool)

(declare-fun e!1218337 () Bool)

(assert (=> d!583508 (=> (not res!851709) (not e!1218337))))

(declare-fun isEmpty!13197 (List!21565) Bool)

(assert (=> d!583508 (= res!851709 (not (isEmpty!13197 (originalCharacters!4633 separatorToken!354))))))

(assert (=> d!583508 (= (inv!28588 separatorToken!354) e!1218337)))

(declare-fun b!1907433 () Bool)

(declare-fun res!851710 () Bool)

(assert (=> b!1907433 (=> (not res!851710) (not e!1218337))))

(declare-fun dynLambda!10477 (Int TokenValue!3962) BalanceConc!14106)

(assert (=> b!1907433 (= res!851710 (= (originalCharacters!4633 separatorToken!354) (list!8738 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (value!120632 separatorToken!354)))))))

(declare-fun b!1907434 () Bool)

(declare-fun size!16947 (List!21565) Int)

(assert (=> b!1907434 (= e!1218337 (= (size!16944 separatorToken!354) (size!16947 (originalCharacters!4633 separatorToken!354))))))

(assert (= (and d!583508 res!851709) b!1907433))

(assert (= (and b!1907433 res!851710) b!1907434))

(declare-fun b_lambda!63045 () Bool)

(assert (=> (not b_lambda!63045) (not b!1907433)))

(declare-fun tb!116665 () Bool)

(declare-fun t!177704 () Bool)

(assert (=> (and b!1907389 (= (toChars!5310 (transformation!3826 (h!26886 rules!3198))) (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354)))) t!177704) tb!116665))

(declare-fun b!1907439 () Bool)

(declare-fun e!1218340 () Bool)

(declare-fun tp!544563 () Bool)

(declare-fun inv!28591 (Conc!7145) Bool)

(assert (=> b!1907439 (= e!1218340 (and (inv!28591 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (value!120632 separatorToken!354)))) tp!544563))))

(declare-fun result!140996 () Bool)

(declare-fun inv!28592 (BalanceConc!14106) Bool)

(assert (=> tb!116665 (= result!140996 (and (inv!28592 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (value!120632 separatorToken!354))) e!1218340))))

(assert (= tb!116665 b!1907439))

(declare-fun m!2340205 () Bool)

(assert (=> b!1907439 m!2340205))

(declare-fun m!2340207 () Bool)

(assert (=> tb!116665 m!2340207))

(assert (=> b!1907433 t!177704))

(declare-fun b_and!148311 () Bool)

(assert (= b_and!148301 (and (=> t!177704 result!140996) b_and!148311)))

(declare-fun tb!116667 () Bool)

(declare-fun t!177706 () Bool)

(assert (=> (and b!1907387 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354)))) t!177706) tb!116667))

(declare-fun result!141000 () Bool)

(assert (= result!141000 result!140996))

(assert (=> b!1907433 t!177706))

(declare-fun b_and!148313 () Bool)

(assert (= b_and!148305 (and (=> t!177706 result!141000) b_and!148313)))

(declare-fun t!177708 () Bool)

(declare-fun tb!116669 () Bool)

(assert (=> (and b!1907400 (= (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354)))) t!177708) tb!116669))

(declare-fun result!141002 () Bool)

(assert (= result!141002 result!140996))

(assert (=> b!1907433 t!177708))

(declare-fun b_and!148315 () Bool)

(assert (= b_and!148309 (and (=> t!177708 result!141002) b_and!148315)))

(declare-fun m!2340209 () Bool)

(assert (=> d!583508 m!2340209))

(declare-fun m!2340211 () Bool)

(assert (=> b!1907433 m!2340211))

(assert (=> b!1907433 m!2340211))

(declare-fun m!2340213 () Bool)

(assert (=> b!1907433 m!2340213))

(declare-fun m!2340215 () Bool)

(assert (=> b!1907434 m!2340215))

(assert (=> start!191332 d!583508))

(declare-fun bs!413971 () Bool)

(declare-fun d!583510 () Bool)

(assert (= bs!413971 (and d!583510 b!1907392)))

(declare-fun lambda!74521 () Int)

(assert (=> bs!413971 (not (= lambda!74521 lambda!74515))))

(declare-fun b!1907615 () Bool)

(declare-fun e!1218454 () Bool)

(assert (=> b!1907615 (= e!1218454 true)))

(declare-fun b!1907614 () Bool)

(declare-fun e!1218453 () Bool)

(assert (=> b!1907614 (= e!1218453 e!1218454)))

(declare-fun b!1907613 () Bool)

(declare-fun e!1218452 () Bool)

(assert (=> b!1907613 (= e!1218452 e!1218453)))

(assert (=> d!583510 e!1218452))

(assert (= b!1907614 b!1907615))

(assert (= b!1907613 b!1907614))

(assert (= (and d!583510 ((_ is Cons!21485) rules!3198)) b!1907613))

(declare-fun order!13587 () Int)

(declare-fun order!13589 () Int)

(declare-fun dynLambda!10478 (Int Int) Int)

(declare-fun dynLambda!10479 (Int Int) Int)

(assert (=> b!1907615 (< (dynLambda!10478 order!13587 (toValue!5451 (transformation!3826 (h!26886 rules!3198)))) (dynLambda!10479 order!13589 lambda!74521))))

(declare-fun order!13591 () Int)

(declare-fun dynLambda!10480 (Int Int) Int)

(assert (=> b!1907615 (< (dynLambda!10480 order!13591 (toChars!5310 (transformation!3826 (h!26886 rules!3198)))) (dynLambda!10479 order!13589 lambda!74521))))

(assert (=> d!583510 true))

(declare-fun lt!729361 () Bool)

(assert (=> d!583510 (= lt!729361 (forall!4514 tokens!598 lambda!74521))))

(declare-fun e!1218444 () Bool)

(assert (=> d!583510 (= lt!729361 e!1218444)))

(declare-fun res!851797 () Bool)

(assert (=> d!583510 (=> res!851797 e!1218444)))

(assert (=> d!583510 (= res!851797 (not ((_ is Cons!21484) tokens!598)))))

(assert (=> d!583510 (not (isEmpty!13192 rules!3198))))

(assert (=> d!583510 (= (rulesProduceEachTokenIndividuallyList!1170 thiss!23328 rules!3198 tokens!598) lt!729361)))

(declare-fun b!1907603 () Bool)

(declare-fun e!1218445 () Bool)

(assert (=> b!1907603 (= e!1218444 e!1218445)))

(declare-fun res!851798 () Bool)

(assert (=> b!1907603 (=> (not res!851798) (not e!1218445))))

(assert (=> b!1907603 (= res!851798 (rulesProduceIndividualToken!1611 thiss!23328 rules!3198 (h!26885 tokens!598)))))

(declare-fun b!1907604 () Bool)

(assert (=> b!1907604 (= e!1218445 (rulesProduceEachTokenIndividuallyList!1170 thiss!23328 rules!3198 (t!177701 tokens!598)))))

(assert (= (and d!583510 (not res!851797)) b!1907603))

(assert (= (and b!1907603 res!851798) b!1907604))

(declare-fun m!2340361 () Bool)

(assert (=> d!583510 m!2340361))

(assert (=> d!583510 m!2340187))

(declare-fun m!2340363 () Bool)

(assert (=> b!1907603 m!2340363))

(declare-fun m!2340365 () Bool)

(assert (=> b!1907604 m!2340365))

(assert (=> b!1907386 d!583510))

(declare-fun d!583554 () Bool)

(declare-fun isEmpty!13198 (Option!4357) Bool)

(assert (=> d!583554 (= (isDefined!3655 lt!729324) (not (isEmpty!13198 lt!729324)))))

(declare-fun bs!413972 () Bool)

(assert (= bs!413972 d!583554))

(declare-fun m!2340367 () Bool)

(assert (=> bs!413972 m!2340367))

(assert (=> b!1907408 d!583554))

(declare-fun d!583556 () Bool)

(declare-fun e!1218460 () Bool)

(assert (=> d!583556 e!1218460))

(declare-fun res!851809 () Bool)

(assert (=> d!583556 (=> (not res!851809) (not e!1218460))))

(assert (=> d!583556 (= res!851809 (isDefined!3655 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 separatorToken!354)))))))

(declare-fun lt!729367 () Unit!35820)

(declare-fun choose!11879 (LexerInterface!3439 List!21567 List!21565 Token!7204) Unit!35820)

(assert (=> d!583556 (= lt!729367 (choose!11879 thiss!23328 rules!3198 lt!729326 separatorToken!354))))

(assert (=> d!583556 (rulesInvariant!3046 thiss!23328 rules!3198)))

(assert (=> d!583556 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!669 thiss!23328 rules!3198 lt!729326 separatorToken!354) lt!729367)))

(declare-fun b!1907628 () Bool)

(declare-fun res!851810 () Bool)

(assert (=> b!1907628 (=> (not res!851810) (not e!1218460))))

(assert (=> b!1907628 (= res!851810 (matchR!2537 (regex!3826 (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 separatorToken!354))))) (list!8738 (charsOf!2382 separatorToken!354))))))

(declare-fun b!1907629 () Bool)

(assert (=> b!1907629 (= e!1218460 (= (rule!6023 separatorToken!354) (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 separatorToken!354))))))))

(assert (= (and d!583556 res!851809) b!1907628))

(assert (= (and b!1907628 res!851810) b!1907629))

(assert (=> d!583556 m!2340153))

(assert (=> d!583556 m!2340153))

(declare-fun m!2340379 () Bool)

(assert (=> d!583556 m!2340379))

(declare-fun m!2340381 () Bool)

(assert (=> d!583556 m!2340381))

(assert (=> d!583556 m!2340119))

(assert (=> b!1907628 m!2340153))

(assert (=> b!1907628 m!2340143))

(assert (=> b!1907628 m!2340153))

(declare-fun m!2340383 () Bool)

(assert (=> b!1907628 m!2340383))

(assert (=> b!1907628 m!2340145))

(declare-fun m!2340385 () Bool)

(assert (=> b!1907628 m!2340385))

(assert (=> b!1907628 m!2340143))

(assert (=> b!1907628 m!2340145))

(assert (=> b!1907629 m!2340153))

(assert (=> b!1907629 m!2340153))

(assert (=> b!1907629 m!2340383))

(assert (=> b!1907408 d!583556))

(declare-fun d!583560 () Bool)

(declare-fun isEmpty!13199 (Option!4358) Bool)

(assert (=> d!583560 (= (isDefined!3656 lt!729322) (not (isEmpty!13199 lt!729322)))))

(declare-fun bs!413973 () Bool)

(assert (= bs!413973 d!583560))

(declare-fun m!2340387 () Bool)

(assert (=> bs!413973 m!2340387))

(assert (=> b!1907408 d!583560))

(declare-fun d!583562 () Bool)

(declare-fun e!1218480 () Bool)

(assert (=> d!583562 e!1218480))

(declare-fun res!851851 () Bool)

(assert (=> d!583562 (=> res!851851 e!1218480)))

(declare-fun lt!729395 () Option!4358)

(assert (=> d!583562 (= res!851851 (isEmpty!13199 lt!729395))))

(declare-fun e!1218478 () Option!4358)

(assert (=> d!583562 (= lt!729395 e!1218478)))

(declare-fun c!310798 () Bool)

(assert (=> d!583562 (= c!310798 (and ((_ is Cons!21485) rules!3198) ((_ is Nil!21485) (t!177702 rules!3198))))))

(declare-fun lt!729396 () Unit!35820)

(declare-fun lt!729397 () Unit!35820)

(assert (=> d!583562 (= lt!729396 lt!729397)))

(declare-fun isPrefix!1923 (List!21565 List!21565) Bool)

(assert (=> d!583562 (isPrefix!1923 lt!729332 lt!729332)))

(declare-fun lemmaIsPrefixRefl!1241 (List!21565 List!21565) Unit!35820)

(assert (=> d!583562 (= lt!729397 (lemmaIsPrefixRefl!1241 lt!729332 lt!729332))))

(declare-fun rulesValidInductive!1302 (LexerInterface!3439 List!21567) Bool)

(assert (=> d!583562 (rulesValidInductive!1302 thiss!23328 rules!3198)))

(assert (=> d!583562 (= (maxPrefix!1885 thiss!23328 rules!3198 lt!729332) lt!729395)))

(declare-fun b!1907679 () Bool)

(declare-fun res!851849 () Bool)

(declare-fun e!1218479 () Bool)

(assert (=> b!1907679 (=> (not res!851849) (not e!1218479))))

(assert (=> b!1907679 (= res!851849 (matchR!2537 (regex!3826 (rule!6023 (_1!11579 (get!6678 lt!729395)))) (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729395))))))))

(declare-fun b!1907680 () Bool)

(declare-fun res!851850 () Bool)

(assert (=> b!1907680 (=> (not res!851850) (not e!1218479))))

(assert (=> b!1907680 (= res!851850 (= (++!5773 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729395)))) (_2!11579 (get!6678 lt!729395))) lt!729332))))

(declare-fun bm!117520 () Bool)

(declare-fun call!117525 () Option!4358)

(declare-fun maxPrefixOneRule!1205 (LexerInterface!3439 Rule!7452 List!21565) Option!4358)

(assert (=> bm!117520 (= call!117525 (maxPrefixOneRule!1205 thiss!23328 (h!26886 rules!3198) lt!729332))))

(declare-fun b!1907681 () Bool)

(assert (=> b!1907681 (= e!1218480 e!1218479)))

(declare-fun res!851852 () Bool)

(assert (=> b!1907681 (=> (not res!851852) (not e!1218479))))

(assert (=> b!1907681 (= res!851852 (isDefined!3656 lt!729395))))

(declare-fun b!1907682 () Bool)

(declare-fun lt!729398 () Option!4358)

(declare-fun lt!729394 () Option!4358)

(assert (=> b!1907682 (= e!1218478 (ite (and ((_ is None!4357) lt!729398) ((_ is None!4357) lt!729394)) None!4357 (ite ((_ is None!4357) lt!729394) lt!729398 (ite ((_ is None!4357) lt!729398) lt!729394 (ite (>= (size!16944 (_1!11579 (v!26400 lt!729398))) (size!16944 (_1!11579 (v!26400 lt!729394)))) lt!729398 lt!729394)))))))

(assert (=> b!1907682 (= lt!729398 call!117525)))

(assert (=> b!1907682 (= lt!729394 (maxPrefix!1885 thiss!23328 (t!177702 rules!3198) lt!729332))))

(declare-fun b!1907683 () Bool)

(declare-fun res!851848 () Bool)

(assert (=> b!1907683 (=> (not res!851848) (not e!1218479))))

(assert (=> b!1907683 (= res!851848 (< (size!16947 (_2!11579 (get!6678 lt!729395))) (size!16947 lt!729332)))))

(declare-fun b!1907684 () Bool)

(assert (=> b!1907684 (= e!1218478 call!117525)))

(declare-fun b!1907685 () Bool)

(declare-fun res!851853 () Bool)

(assert (=> b!1907685 (=> (not res!851853) (not e!1218479))))

(declare-fun apply!5639 (TokenValueInjection!7508 BalanceConc!14106) TokenValue!3962)

(assert (=> b!1907685 (= res!851853 (= (value!120632 (_1!11579 (get!6678 lt!729395))) (apply!5639 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729395)))) (seqFromList!2698 (originalCharacters!4633 (_1!11579 (get!6678 lt!729395)))))))))

(declare-fun b!1907686 () Bool)

(declare-fun res!851854 () Bool)

(assert (=> b!1907686 (=> (not res!851854) (not e!1218479))))

(assert (=> b!1907686 (= res!851854 (= (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729395)))) (originalCharacters!4633 (_1!11579 (get!6678 lt!729395)))))))

(declare-fun b!1907687 () Bool)

(declare-fun contains!3865 (List!21567 Rule!7452) Bool)

(assert (=> b!1907687 (= e!1218479 (contains!3865 rules!3198 (rule!6023 (_1!11579 (get!6678 lt!729395)))))))

(assert (= (and d!583562 c!310798) b!1907684))

(assert (= (and d!583562 (not c!310798)) b!1907682))

(assert (= (or b!1907684 b!1907682) bm!117520))

(assert (= (and d!583562 (not res!851851)) b!1907681))

(assert (= (and b!1907681 res!851852) b!1907686))

(assert (= (and b!1907686 res!851854) b!1907683))

(assert (= (and b!1907683 res!851848) b!1907680))

(assert (= (and b!1907680 res!851850) b!1907685))

(assert (= (and b!1907685 res!851853) b!1907679))

(assert (= (and b!1907679 res!851849) b!1907687))

(declare-fun m!2340433 () Bool)

(assert (=> b!1907682 m!2340433))

(declare-fun m!2340435 () Bool)

(assert (=> b!1907687 m!2340435))

(declare-fun m!2340437 () Bool)

(assert (=> b!1907687 m!2340437))

(declare-fun m!2340439 () Bool)

(assert (=> bm!117520 m!2340439))

(assert (=> b!1907683 m!2340435))

(declare-fun m!2340441 () Bool)

(assert (=> b!1907683 m!2340441))

(declare-fun m!2340443 () Bool)

(assert (=> b!1907683 m!2340443))

(declare-fun m!2340445 () Bool)

(assert (=> d!583562 m!2340445))

(declare-fun m!2340447 () Bool)

(assert (=> d!583562 m!2340447))

(declare-fun m!2340449 () Bool)

(assert (=> d!583562 m!2340449))

(declare-fun m!2340451 () Bool)

(assert (=> d!583562 m!2340451))

(assert (=> b!1907685 m!2340435))

(declare-fun m!2340453 () Bool)

(assert (=> b!1907685 m!2340453))

(assert (=> b!1907685 m!2340453))

(declare-fun m!2340455 () Bool)

(assert (=> b!1907685 m!2340455))

(assert (=> b!1907680 m!2340435))

(declare-fun m!2340457 () Bool)

(assert (=> b!1907680 m!2340457))

(assert (=> b!1907680 m!2340457))

(declare-fun m!2340459 () Bool)

(assert (=> b!1907680 m!2340459))

(assert (=> b!1907680 m!2340459))

(declare-fun m!2340461 () Bool)

(assert (=> b!1907680 m!2340461))

(assert (=> b!1907679 m!2340435))

(assert (=> b!1907679 m!2340457))

(assert (=> b!1907679 m!2340457))

(assert (=> b!1907679 m!2340459))

(assert (=> b!1907679 m!2340459))

(declare-fun m!2340463 () Bool)

(assert (=> b!1907679 m!2340463))

(assert (=> b!1907686 m!2340435))

(assert (=> b!1907686 m!2340457))

(assert (=> b!1907686 m!2340457))

(assert (=> b!1907686 m!2340459))

(declare-fun m!2340465 () Bool)

(assert (=> b!1907681 m!2340465))

(assert (=> b!1907408 d!583562))

(declare-fun bs!413977 () Bool)

(declare-fun b!1907731 () Bool)

(assert (= bs!413977 (and b!1907731 b!1907392)))

(declare-fun lambda!74527 () Int)

(assert (=> bs!413977 (not (= lambda!74527 lambda!74515))))

(declare-fun bs!413978 () Bool)

(assert (= bs!413978 (and b!1907731 d!583510)))

(assert (=> bs!413978 (= lambda!74527 lambda!74521)))

(declare-fun b!1907740 () Bool)

(declare-fun e!1218514 () Bool)

(assert (=> b!1907740 (= e!1218514 true)))

(declare-fun b!1907739 () Bool)

(declare-fun e!1218513 () Bool)

(assert (=> b!1907739 (= e!1218513 e!1218514)))

(declare-fun b!1907738 () Bool)

(declare-fun e!1218512 () Bool)

(assert (=> b!1907738 (= e!1218512 e!1218513)))

(assert (=> b!1907731 e!1218512))

(assert (= b!1907739 b!1907740))

(assert (= b!1907738 b!1907739))

(assert (= (and b!1907731 ((_ is Cons!21485) rules!3198)) b!1907738))

(assert (=> b!1907740 (< (dynLambda!10478 order!13587 (toValue!5451 (transformation!3826 (h!26886 rules!3198)))) (dynLambda!10479 order!13589 lambda!74527))))

(assert (=> b!1907740 (< (dynLambda!10480 order!13591 (toChars!5310 (transformation!3826 (h!26886 rules!3198)))) (dynLambda!10479 order!13589 lambda!74527))))

(assert (=> b!1907731 true))

(declare-fun b!1907730 () Bool)

(declare-fun e!1218509 () List!21565)

(assert (=> b!1907730 (= e!1218509 Nil!21483)))

(declare-fun c!310814 () Bool)

(declare-fun call!117537 () BalanceConc!14106)

(declare-fun c!310816 () Bool)

(declare-fun bm!117531 () Bool)

(assert (=> bm!117531 (= call!117537 (charsOf!2382 (ite c!310816 (h!26885 (t!177701 tokens!598)) (ite c!310814 separatorToken!354 (h!26885 (t!177701 tokens!598))))))))

(declare-fun b!1907732 () Bool)

(declare-fun e!1218511 () List!21565)

(declare-fun call!117539 () List!21565)

(declare-fun lt!729424 () List!21565)

(assert (=> b!1907732 (= e!1218511 (++!5773 call!117539 lt!729424))))

(declare-fun b!1907733 () Bool)

(assert (=> b!1907733 (= e!1218511 Nil!21483)))

(declare-datatypes ((IArray!14299 0))(
  ( (IArray!14300 (innerList!7207 List!21566)) )
))
(declare-datatypes ((Conc!7147 0))(
  ( (Node!7147 (left!17182 Conc!7147) (right!17512 Conc!7147) (csize!14524 Int) (cheight!7358 Int)) (Leaf!10523 (xs!10041 IArray!14299) (csize!14525 Int)) (Empty!7147) )
))
(declare-datatypes ((BalanceConc!14110 0))(
  ( (BalanceConc!14111 (c!310894 Conc!7147)) )
))
(declare-fun print!1453 (LexerInterface!3439 BalanceConc!14110) BalanceConc!14106)

(declare-fun singletonSeq!1851 (Token!7204) BalanceConc!14110)

(declare-fun printTailRec!960 (LexerInterface!3439 BalanceConc!14110 Int BalanceConc!14106) BalanceConc!14106)

(assert (=> b!1907733 (= (print!1453 thiss!23328 (singletonSeq!1851 (h!26885 (t!177701 tokens!598)))) (printTailRec!960 thiss!23328 (singletonSeq!1851 (h!26885 (t!177701 tokens!598))) 0 (BalanceConc!14107 Empty!7145)))))

(declare-fun lt!729428 () Unit!35820)

(declare-fun Unit!35826 () Unit!35820)

(assert (=> b!1907733 (= lt!729428 Unit!35826)))

(declare-fun lt!729426 () Unit!35820)

(declare-fun call!117536 () List!21565)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!722 (LexerInterface!3439 List!21567 List!21565 List!21565) Unit!35820)

(assert (=> b!1907733 (= lt!729426 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!722 thiss!23328 rules!3198 call!117536 lt!729424))))

(assert (=> b!1907733 false))

(declare-fun lt!729427 () Unit!35820)

(declare-fun Unit!35827 () Unit!35820)

(assert (=> b!1907733 (= lt!729427 Unit!35827)))

(declare-fun bm!117532 () Bool)

(declare-fun call!117540 () List!21565)

(assert (=> bm!117532 (= call!117536 call!117540)))

(declare-fun b!1907734 () Bool)

(declare-fun e!1218508 () List!21565)

(assert (=> b!1907734 (= e!1218508 (list!8738 (charsOf!2382 (h!26885 (t!177701 tokens!598)))))))

(declare-fun b!1907735 () Bool)

(assert (=> b!1907735 (= e!1218508 call!117540)))

(declare-fun b!1907736 () Bool)

(declare-fun lt!729425 () Option!4358)

(assert (=> b!1907736 (= c!310814 (and ((_ is Some!4357) lt!729425) (not (= (_1!11579 (v!26400 lt!729425)) (h!26885 (t!177701 tokens!598))))))))

(declare-fun e!1218510 () List!21565)

(assert (=> b!1907736 (= e!1218510 e!1218511)))

(declare-fun d!583574 () Bool)

(declare-fun c!310815 () Bool)

(assert (=> d!583574 (= c!310815 ((_ is Cons!21484) (t!177701 tokens!598)))))

(assert (=> d!583574 (= (printWithSeparatorTokenWhenNeededList!482 thiss!23328 rules!3198 (t!177701 tokens!598) separatorToken!354) e!1218509)))

(assert (=> b!1907731 (= e!1218509 e!1218510)))

(declare-fun lt!729423 () Unit!35820)

(declare-fun forallContained!692 (List!21566 Int Token!7204) Unit!35820)

(assert (=> b!1907731 (= lt!729423 (forallContained!692 (t!177701 tokens!598) lambda!74527 (h!26885 (t!177701 tokens!598))))))

(assert (=> b!1907731 (= lt!729424 (printWithSeparatorTokenWhenNeededList!482 thiss!23328 rules!3198 (t!177701 (t!177701 tokens!598)) separatorToken!354))))

(assert (=> b!1907731 (= lt!729425 (maxPrefix!1885 thiss!23328 rules!3198 (++!5773 (list!8738 (charsOf!2382 (h!26885 (t!177701 tokens!598)))) lt!729424)))))

(assert (=> b!1907731 (= c!310816 (and ((_ is Some!4357) lt!729425) (= (_1!11579 (v!26400 lt!729425)) (h!26885 (t!177701 tokens!598)))))))

(declare-fun b!1907737 () Bool)

(assert (=> b!1907737 (= e!1218510 call!117539)))

(declare-fun bm!117533 () Bool)

(declare-fun c!310817 () Bool)

(assert (=> bm!117533 (= c!310817 c!310816)))

(assert (=> bm!117533 (= call!117539 (++!5773 e!1218508 (ite c!310816 lt!729424 call!117536)))))

(declare-fun bm!117534 () Bool)

(declare-fun call!117538 () BalanceConc!14106)

(assert (=> bm!117534 (= call!117540 (list!8738 (ite c!310816 call!117537 call!117538)))))

(declare-fun bm!117535 () Bool)

(assert (=> bm!117535 (= call!117538 call!117537)))

(assert (= (and d!583574 c!310815) b!1907731))

(assert (= (and d!583574 (not c!310815)) b!1907730))

(assert (= (and b!1907731 c!310816) b!1907737))

(assert (= (and b!1907731 (not c!310816)) b!1907736))

(assert (= (and b!1907736 c!310814) b!1907732))

(assert (= (and b!1907736 (not c!310814)) b!1907733))

(assert (= (or b!1907732 b!1907733) bm!117535))

(assert (= (or b!1907732 b!1907733) bm!117532))

(assert (= (or b!1907737 bm!117535) bm!117531))

(assert (= (or b!1907737 bm!117532) bm!117534))

(assert (= (or b!1907737 b!1907732) bm!117533))

(assert (= (and bm!117533 c!310817) b!1907735))

(assert (= (and bm!117533 (not c!310817)) b!1907734))

(declare-fun m!2340493 () Bool)

(assert (=> bm!117534 m!2340493))

(declare-fun m!2340495 () Bool)

(assert (=> b!1907732 m!2340495))

(declare-fun m!2340497 () Bool)

(assert (=> b!1907731 m!2340497))

(declare-fun m!2340499 () Bool)

(assert (=> b!1907731 m!2340499))

(declare-fun m!2340501 () Bool)

(assert (=> b!1907731 m!2340501))

(declare-fun m!2340503 () Bool)

(assert (=> b!1907731 m!2340503))

(declare-fun m!2340505 () Bool)

(assert (=> b!1907731 m!2340505))

(assert (=> b!1907731 m!2340499))

(assert (=> b!1907731 m!2340505))

(assert (=> b!1907731 m!2340501))

(declare-fun m!2340507 () Bool)

(assert (=> b!1907731 m!2340507))

(declare-fun m!2340509 () Bool)

(assert (=> bm!117531 m!2340509))

(assert (=> b!1907734 m!2340505))

(assert (=> b!1907734 m!2340505))

(assert (=> b!1907734 m!2340499))

(declare-fun m!2340511 () Bool)

(assert (=> b!1907733 m!2340511))

(assert (=> b!1907733 m!2340511))

(declare-fun m!2340513 () Bool)

(assert (=> b!1907733 m!2340513))

(assert (=> b!1907733 m!2340511))

(declare-fun m!2340515 () Bool)

(assert (=> b!1907733 m!2340515))

(declare-fun m!2340517 () Bool)

(assert (=> b!1907733 m!2340517))

(declare-fun m!2340519 () Bool)

(assert (=> bm!117533 m!2340519))

(assert (=> b!1907408 d!583574))

(declare-fun d!583580 () Bool)

(declare-fun list!8741 (Conc!7145) List!21565)

(assert (=> d!583580 (= (list!8738 (charsOf!2382 separatorToken!354)) (list!8741 (c!310756 (charsOf!2382 separatorToken!354))))))

(declare-fun bs!413979 () Bool)

(assert (= bs!413979 d!583580))

(declare-fun m!2340521 () Bool)

(assert (=> bs!413979 m!2340521))

(assert (=> b!1907408 d!583580))

(declare-fun e!1218527 () Bool)

(declare-fun b!1907768 () Bool)

(declare-fun lt!729443 () List!21565)

(assert (=> b!1907768 (= e!1218527 (or (not (= lt!729325 Nil!21483)) (= lt!729443 lt!729332)))))

(declare-fun b!1907766 () Bool)

(declare-fun e!1218528 () List!21565)

(assert (=> b!1907766 (= e!1218528 (Cons!21483 (h!26884 lt!729332) (++!5773 (t!177700 lt!729332) lt!729325)))))

(declare-fun d!583582 () Bool)

(assert (=> d!583582 e!1218527))

(declare-fun res!851866 () Bool)

(assert (=> d!583582 (=> (not res!851866) (not e!1218527))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3147 (List!21565) (InoxSet C!10648))

(assert (=> d!583582 (= res!851866 (= (content!3147 lt!729443) ((_ map or) (content!3147 lt!729332) (content!3147 lt!729325))))))

(assert (=> d!583582 (= lt!729443 e!1218528)))

(declare-fun c!310828 () Bool)

(assert (=> d!583582 (= c!310828 ((_ is Nil!21483) lt!729332))))

(assert (=> d!583582 (= (++!5773 lt!729332 lt!729325) lt!729443)))

(declare-fun b!1907765 () Bool)

(assert (=> b!1907765 (= e!1218528 lt!729325)))

(declare-fun b!1907767 () Bool)

(declare-fun res!851865 () Bool)

(assert (=> b!1907767 (=> (not res!851865) (not e!1218527))))

(assert (=> b!1907767 (= res!851865 (= (size!16947 lt!729443) (+ (size!16947 lt!729332) (size!16947 lt!729325))))))

(assert (= (and d!583582 c!310828) b!1907765))

(assert (= (and d!583582 (not c!310828)) b!1907766))

(assert (= (and d!583582 res!851866) b!1907767))

(assert (= (and b!1907767 res!851865) b!1907768))

(declare-fun m!2340523 () Bool)

(assert (=> b!1907766 m!2340523))

(declare-fun m!2340525 () Bool)

(assert (=> d!583582 m!2340525))

(declare-fun m!2340527 () Bool)

(assert (=> d!583582 m!2340527))

(declare-fun m!2340529 () Bool)

(assert (=> d!583582 m!2340529))

(declare-fun m!2340531 () Bool)

(assert (=> b!1907767 m!2340531))

(assert (=> b!1907767 m!2340443))

(declare-fun m!2340533 () Bool)

(assert (=> b!1907767 m!2340533))

(assert (=> b!1907408 d!583582))

(declare-fun b!1907786 () Bool)

(declare-fun e!1218540 () Bool)

(assert (=> b!1907786 (= e!1218540 true)))

(declare-fun d!583584 () Bool)

(assert (=> d!583584 e!1218540))

(assert (= d!583584 b!1907786))

(declare-fun lambda!74533 () Int)

(declare-fun order!13595 () Int)

(declare-fun dynLambda!10482 (Int Int) Int)

(assert (=> b!1907786 (< (dynLambda!10478 order!13587 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) (dynLambda!10482 order!13595 lambda!74533))))

(assert (=> b!1907786 (< (dynLambda!10480 order!13591 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) (dynLambda!10482 order!13595 lambda!74533))))

(declare-fun dynLambda!10483 (Int BalanceConc!14106) TokenValue!3962)

(assert (=> d!583584 (= (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (seqFromList!2698 (originalCharacters!4633 (h!26885 tokens!598)))))))

(declare-fun lt!729452 () Unit!35820)

(declare-fun Forall2of!187 (Int BalanceConc!14106 BalanceConc!14106) Unit!35820)

(assert (=> d!583584 (= lt!729452 (Forall2of!187 lambda!74533 lt!729323 (seqFromList!2698 (originalCharacters!4633 (h!26885 tokens!598)))))))

(assert (=> d!583584 (= (list!8738 lt!729323) (list!8738 (seqFromList!2698 (originalCharacters!4633 (h!26885 tokens!598)))))))

(assert (=> d!583584 (= (lemmaEqSameImage!534 (transformation!3826 (rule!6023 (h!26885 tokens!598))) lt!729323 (seqFromList!2698 (originalCharacters!4633 (h!26885 tokens!598)))) lt!729452)))

(declare-fun b_lambda!63057 () Bool)

(assert (=> (not b_lambda!63057) (not d!583584)))

(declare-fun tb!116695 () Bool)

(declare-fun t!177743 () Bool)

(assert (=> (and b!1907389 (= (toValue!5451 (transformation!3826 (h!26886 rules!3198))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!177743) tb!116695))

(declare-fun result!141032 () Bool)

(assert (=> tb!116695 (= result!141032 (inv!21 (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323)))))

(declare-fun m!2340565 () Bool)

(assert (=> tb!116695 m!2340565))

(assert (=> d!583584 t!177743))

(declare-fun b_and!148341 () Bool)

(assert (= b_and!148299 (and (=> t!177743 result!141032) b_and!148341)))

(declare-fun t!177745 () Bool)

(declare-fun tb!116697 () Bool)

(assert (=> (and b!1907387 (= (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!177745) tb!116697))

(declare-fun result!141036 () Bool)

(assert (= result!141036 result!141032))

(assert (=> d!583584 t!177745))

(declare-fun b_and!148343 () Bool)

(assert (= b_and!148303 (and (=> t!177745 result!141036) b_and!148343)))

(declare-fun t!177747 () Bool)

(declare-fun tb!116699 () Bool)

(assert (=> (and b!1907400 (= (toValue!5451 (transformation!3826 (rule!6023 separatorToken!354))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!177747) tb!116699))

(declare-fun result!141038 () Bool)

(assert (= result!141038 result!141032))

(assert (=> d!583584 t!177747))

(declare-fun b_and!148345 () Bool)

(assert (= b_and!148307 (and (=> t!177747 result!141038) b_and!148345)))

(declare-fun b_lambda!63059 () Bool)

(assert (=> (not b_lambda!63059) (not d!583584)))

(declare-fun tb!116701 () Bool)

(declare-fun t!177749 () Bool)

(assert (=> (and b!1907389 (= (toValue!5451 (transformation!3826 (h!26886 rules!3198))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!177749) tb!116701))

(declare-fun result!141040 () Bool)

(assert (=> tb!116701 (= result!141040 (inv!21 (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (seqFromList!2698 (originalCharacters!4633 (h!26885 tokens!598))))))))

(declare-fun m!2340567 () Bool)

(assert (=> tb!116701 m!2340567))

(assert (=> d!583584 t!177749))

(declare-fun b_and!148347 () Bool)

(assert (= b_and!148341 (and (=> t!177749 result!141040) b_and!148347)))

(declare-fun t!177751 () Bool)

(declare-fun tb!116703 () Bool)

(assert (=> (and b!1907387 (= (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!177751) tb!116703))

(declare-fun result!141042 () Bool)

(assert (= result!141042 result!141040))

(assert (=> d!583584 t!177751))

(declare-fun b_and!148349 () Bool)

(assert (= b_and!148343 (and (=> t!177751 result!141042) b_and!148349)))

(declare-fun t!177753 () Bool)

(declare-fun tb!116705 () Bool)

(assert (=> (and b!1907400 (= (toValue!5451 (transformation!3826 (rule!6023 separatorToken!354))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!177753) tb!116705))

(declare-fun result!141044 () Bool)

(assert (= result!141044 result!141040))

(assert (=> d!583584 t!177753))

(declare-fun b_and!148351 () Bool)

(assert (= b_and!148345 (and (=> t!177753 result!141044) b_and!148351)))

(assert (=> d!583584 m!2340133))

(declare-fun m!2340569 () Bool)

(assert (=> d!583584 m!2340569))

(assert (=> d!583584 m!2340131))

(assert (=> d!583584 m!2340133))

(declare-fun m!2340571 () Bool)

(assert (=> d!583584 m!2340571))

(declare-fun m!2340573 () Bool)

(assert (=> d!583584 m!2340573))

(assert (=> d!583584 m!2340133))

(declare-fun m!2340575 () Bool)

(assert (=> d!583584 m!2340575))

(assert (=> b!1907408 d!583584))

(declare-fun d!583590 () Bool)

(declare-fun lt!729458 () BalanceConc!14106)

(assert (=> d!583590 (= (list!8738 lt!729458) (originalCharacters!4633 separatorToken!354))))

(assert (=> d!583590 (= lt!729458 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (value!120632 separatorToken!354)))))

(assert (=> d!583590 (= (charsOf!2382 separatorToken!354) lt!729458)))

(declare-fun b_lambda!63063 () Bool)

(assert (=> (not b_lambda!63063) (not d!583590)))

(assert (=> d!583590 t!177704))

(declare-fun b_and!148359 () Bool)

(assert (= b_and!148311 (and (=> t!177704 result!140996) b_and!148359)))

(assert (=> d!583590 t!177706))

(declare-fun b_and!148361 () Bool)

(assert (= b_and!148313 (and (=> t!177706 result!141000) b_and!148361)))

(assert (=> d!583590 t!177708))

(declare-fun b_and!148363 () Bool)

(assert (= b_and!148315 (and (=> t!177708 result!141002) b_and!148363)))

(declare-fun m!2340579 () Bool)

(assert (=> d!583590 m!2340579))

(assert (=> d!583590 m!2340211))

(assert (=> b!1907408 d!583590))

(declare-fun b!1907795 () Bool)

(declare-fun e!1218549 () Bool)

(assert (=> b!1907795 (= e!1218549 true)))

(declare-fun d!583594 () Bool)

(assert (=> d!583594 e!1218549))

(assert (= d!583594 b!1907795))

(declare-fun order!13597 () Int)

(declare-fun lambda!74536 () Int)

(declare-fun dynLambda!10484 (Int Int) Int)

(assert (=> b!1907795 (< (dynLambda!10478 order!13587 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) (dynLambda!10484 order!13597 lambda!74536))))

(assert (=> b!1907795 (< (dynLambda!10480 order!13591 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) (dynLambda!10484 order!13597 lambda!74536))))

(assert (=> d!583594 (= (list!8738 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323))) (list!8738 lt!729323))))

(declare-fun lt!729464 () Unit!35820)

(declare-fun ForallOf!391 (Int BalanceConc!14106) Unit!35820)

(assert (=> d!583594 (= lt!729464 (ForallOf!391 lambda!74536 lt!729323))))

(assert (=> d!583594 (= (lemmaSemiInverse!805 (transformation!3826 (rule!6023 (h!26885 tokens!598))) lt!729323) lt!729464)))

(declare-fun b_lambda!63067 () Bool)

(assert (=> (not b_lambda!63067) (not d!583594)))

(declare-fun t!177755 () Bool)

(declare-fun tb!116707 () Bool)

(assert (=> (and b!1907389 (= (toChars!5310 (transformation!3826 (h!26886 rules!3198))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!177755) tb!116707))

(declare-fun e!1218550 () Bool)

(declare-fun tp!544569 () Bool)

(declare-fun b!1907796 () Bool)

(assert (=> b!1907796 (= e!1218550 (and (inv!28591 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323)))) tp!544569))))

(declare-fun result!141046 () Bool)

(assert (=> tb!116707 (= result!141046 (and (inv!28592 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323))) e!1218550))))

(assert (= tb!116707 b!1907796))

(declare-fun m!2340585 () Bool)

(assert (=> b!1907796 m!2340585))

(declare-fun m!2340587 () Bool)

(assert (=> tb!116707 m!2340587))

(assert (=> d!583594 t!177755))

(declare-fun b_and!148371 () Bool)

(assert (= b_and!148359 (and (=> t!177755 result!141046) b_and!148371)))

(declare-fun t!177757 () Bool)

(declare-fun tb!116709 () Bool)

(assert (=> (and b!1907387 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!177757) tb!116709))

(declare-fun result!141048 () Bool)

(assert (= result!141048 result!141046))

(assert (=> d!583594 t!177757))

(declare-fun b_and!148373 () Bool)

(assert (= b_and!148361 (and (=> t!177757 result!141048) b_and!148373)))

(declare-fun tb!116711 () Bool)

(declare-fun t!177759 () Bool)

(assert (=> (and b!1907400 (= (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!177759) tb!116711))

(declare-fun result!141050 () Bool)

(assert (= result!141050 result!141046))

(assert (=> d!583594 t!177759))

(declare-fun b_and!148375 () Bool)

(assert (= b_and!148363 (and (=> t!177759 result!141050) b_and!148375)))

(declare-fun b_lambda!63069 () Bool)

(assert (=> (not b_lambda!63069) (not d!583594)))

(assert (=> d!583594 t!177743))

(declare-fun b_and!148377 () Bool)

(assert (= b_and!148347 (and (=> t!177743 result!141032) b_and!148377)))

(assert (=> d!583594 t!177745))

(declare-fun b_and!148379 () Bool)

(assert (= b_and!148349 (and (=> t!177745 result!141036) b_and!148379)))

(assert (=> d!583594 t!177747))

(declare-fun b_and!148381 () Bool)

(assert (= b_and!148351 (and (=> t!177747 result!141038) b_and!148381)))

(assert (=> d!583594 m!2340573))

(declare-fun m!2340589 () Bool)

(assert (=> d!583594 m!2340589))

(declare-fun m!2340591 () Bool)

(assert (=> d!583594 m!2340591))

(assert (=> d!583594 m!2340131))

(declare-fun m!2340593 () Bool)

(assert (=> d!583594 m!2340593))

(assert (=> d!583594 m!2340573))

(assert (=> d!583594 m!2340589))

(assert (=> b!1907408 d!583594))

(declare-fun b!1907831 () Bool)

(declare-fun lt!729481 () Unit!35820)

(declare-fun lt!729483 () Unit!35820)

(assert (=> b!1907831 (= lt!729481 lt!729483)))

(assert (=> b!1907831 (rulesInvariant!3046 thiss!23328 (t!177702 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!256 (LexerInterface!3439 Rule!7452 List!21567) Unit!35820)

(assert (=> b!1907831 (= lt!729483 (lemmaInvariantOnRulesThenOnTail!256 thiss!23328 (h!26886 rules!3198) (t!177702 rules!3198)))))

(declare-fun e!1218571 () Option!4357)

(assert (=> b!1907831 (= e!1218571 (getRuleFromTag!669 thiss!23328 (t!177702 rules!3198) (tag!4258 (rule!6023 separatorToken!354))))))

(declare-fun b!1907833 () Bool)

(declare-fun e!1218574 () Bool)

(declare-fun e!1218573 () Bool)

(assert (=> b!1907833 (= e!1218574 e!1218573)))

(declare-fun res!851887 () Bool)

(assert (=> b!1907833 (=> (not res!851887) (not e!1218573))))

(declare-fun lt!729482 () Option!4357)

(assert (=> b!1907833 (= res!851887 (contains!3865 rules!3198 (get!6677 lt!729482)))))

(declare-fun b!1907834 () Bool)

(declare-fun e!1218572 () Option!4357)

(assert (=> b!1907834 (= e!1218572 (Some!4356 (h!26886 rules!3198)))))

(declare-fun b!1907835 () Bool)

(assert (=> b!1907835 (= e!1218571 None!4356)))

(declare-fun b!1907836 () Bool)

(assert (=> b!1907836 (= e!1218573 (= (tag!4258 (get!6677 lt!729482)) (tag!4258 (rule!6023 separatorToken!354))))))

(declare-fun b!1907832 () Bool)

(assert (=> b!1907832 (= e!1218572 e!1218571)))

(declare-fun c!310841 () Bool)

(assert (=> b!1907832 (= c!310841 (and ((_ is Cons!21485) rules!3198) (not (= (tag!4258 (h!26886 rules!3198)) (tag!4258 (rule!6023 separatorToken!354))))))))

(declare-fun d!583600 () Bool)

(assert (=> d!583600 e!1218574))

(declare-fun res!851886 () Bool)

(assert (=> d!583600 (=> res!851886 e!1218574)))

(assert (=> d!583600 (= res!851886 (isEmpty!13198 lt!729482))))

(assert (=> d!583600 (= lt!729482 e!1218572)))

(declare-fun c!310842 () Bool)

(assert (=> d!583600 (= c!310842 (and ((_ is Cons!21485) rules!3198) (= (tag!4258 (h!26886 rules!3198)) (tag!4258 (rule!6023 separatorToken!354)))))))

(assert (=> d!583600 (rulesInvariant!3046 thiss!23328 rules!3198)))

(assert (=> d!583600 (= (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 separatorToken!354))) lt!729482)))

(assert (= (and d!583600 c!310842) b!1907834))

(assert (= (and d!583600 (not c!310842)) b!1907832))

(assert (= (and b!1907832 c!310841) b!1907831))

(assert (= (and b!1907832 (not c!310841)) b!1907835))

(assert (= (and d!583600 (not res!851886)) b!1907833))

(assert (= (and b!1907833 res!851887) b!1907836))

(declare-fun m!2340653 () Bool)

(assert (=> b!1907831 m!2340653))

(declare-fun m!2340655 () Bool)

(assert (=> b!1907831 m!2340655))

(declare-fun m!2340657 () Bool)

(assert (=> b!1907831 m!2340657))

(declare-fun m!2340659 () Bool)

(assert (=> b!1907833 m!2340659))

(assert (=> b!1907833 m!2340659))

(declare-fun m!2340661 () Bool)

(assert (=> b!1907833 m!2340661))

(assert (=> b!1907836 m!2340659))

(declare-fun m!2340663 () Bool)

(assert (=> d!583600 m!2340663))

(assert (=> d!583600 m!2340119))

(assert (=> b!1907408 d!583600))

(declare-fun b!1907837 () Bool)

(declare-fun lt!729486 () Unit!35820)

(declare-fun lt!729488 () Unit!35820)

(assert (=> b!1907837 (= lt!729486 lt!729488)))

(assert (=> b!1907837 (rulesInvariant!3046 thiss!23328 (t!177702 rules!3198))))

(assert (=> b!1907837 (= lt!729488 (lemmaInvariantOnRulesThenOnTail!256 thiss!23328 (h!26886 rules!3198) (t!177702 rules!3198)))))

(declare-fun e!1218575 () Option!4357)

(assert (=> b!1907837 (= e!1218575 (getRuleFromTag!669 thiss!23328 (t!177702 rules!3198) (tag!4258 (rule!6023 (h!26885 tokens!598)))))))

(declare-fun b!1907839 () Bool)

(declare-fun e!1218578 () Bool)

(declare-fun e!1218577 () Bool)

(assert (=> b!1907839 (= e!1218578 e!1218577)))

(declare-fun res!851889 () Bool)

(assert (=> b!1907839 (=> (not res!851889) (not e!1218577))))

(declare-fun lt!729487 () Option!4357)

(assert (=> b!1907839 (= res!851889 (contains!3865 rules!3198 (get!6677 lt!729487)))))

(declare-fun b!1907840 () Bool)

(declare-fun e!1218576 () Option!4357)

(assert (=> b!1907840 (= e!1218576 (Some!4356 (h!26886 rules!3198)))))

(declare-fun b!1907841 () Bool)

(assert (=> b!1907841 (= e!1218575 None!4356)))

(declare-fun b!1907842 () Bool)

(assert (=> b!1907842 (= e!1218577 (= (tag!4258 (get!6677 lt!729487)) (tag!4258 (rule!6023 (h!26885 tokens!598)))))))

(declare-fun b!1907838 () Bool)

(assert (=> b!1907838 (= e!1218576 e!1218575)))

(declare-fun c!310844 () Bool)

(assert (=> b!1907838 (= c!310844 (and ((_ is Cons!21485) rules!3198) (not (= (tag!4258 (h!26886 rules!3198)) (tag!4258 (rule!6023 (h!26885 tokens!598)))))))))

(declare-fun d!583612 () Bool)

(assert (=> d!583612 e!1218578))

(declare-fun res!851888 () Bool)

(assert (=> d!583612 (=> res!851888 e!1218578)))

(assert (=> d!583612 (= res!851888 (isEmpty!13198 lt!729487))))

(assert (=> d!583612 (= lt!729487 e!1218576)))

(declare-fun c!310845 () Bool)

(assert (=> d!583612 (= c!310845 (and ((_ is Cons!21485) rules!3198) (= (tag!4258 (h!26886 rules!3198)) (tag!4258 (rule!6023 (h!26885 tokens!598))))))))

(assert (=> d!583612 (rulesInvariant!3046 thiss!23328 rules!3198)))

(assert (=> d!583612 (= (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 (h!26885 tokens!598)))) lt!729487)))

(assert (= (and d!583612 c!310845) b!1907840))

(assert (= (and d!583612 (not c!310845)) b!1907838))

(assert (= (and b!1907838 c!310844) b!1907837))

(assert (= (and b!1907838 (not c!310844)) b!1907841))

(assert (= (and d!583612 (not res!851888)) b!1907839))

(assert (= (and b!1907839 res!851889) b!1907842))

(assert (=> b!1907837 m!2340653))

(assert (=> b!1907837 m!2340655))

(declare-fun m!2340669 () Bool)

(assert (=> b!1907837 m!2340669))

(declare-fun m!2340671 () Bool)

(assert (=> b!1907839 m!2340671))

(assert (=> b!1907839 m!2340671))

(declare-fun m!2340673 () Bool)

(assert (=> b!1907839 m!2340673))

(assert (=> b!1907842 m!2340671))

(declare-fun m!2340675 () Bool)

(assert (=> d!583612 m!2340675))

(assert (=> d!583612 m!2340119))

(assert (=> b!1907408 d!583612))

(declare-fun d!583616 () Bool)

(assert (=> d!583616 (= (isDefined!3655 lt!729316) (not (isEmpty!13198 lt!729316)))))

(declare-fun bs!413986 () Bool)

(assert (= bs!413986 d!583616))

(declare-fun m!2340677 () Bool)

(assert (=> bs!413986 m!2340677))

(assert (=> b!1907408 d!583616))

(declare-fun d!583618 () Bool)

(declare-fun e!1218588 () Bool)

(assert (=> d!583618 e!1218588))

(declare-fun res!851901 () Bool)

(assert (=> d!583618 (=> res!851901 e!1218588)))

(declare-fun lt!729492 () Option!4358)

(assert (=> d!583618 (= res!851901 (isEmpty!13199 lt!729492))))

(declare-fun e!1218586 () Option!4358)

(assert (=> d!583618 (= lt!729492 e!1218586)))

(declare-fun c!310849 () Bool)

(assert (=> d!583618 (= c!310849 (and ((_ is Cons!21485) rules!3198) ((_ is Nil!21485) (t!177702 rules!3198))))))

(declare-fun lt!729493 () Unit!35820)

(declare-fun lt!729494 () Unit!35820)

(assert (=> d!583618 (= lt!729493 lt!729494)))

(assert (=> d!583618 (isPrefix!1923 (++!5773 lt!729332 lt!729325) (++!5773 lt!729332 lt!729325))))

(assert (=> d!583618 (= lt!729494 (lemmaIsPrefixRefl!1241 (++!5773 lt!729332 lt!729325) (++!5773 lt!729332 lt!729325)))))

(assert (=> d!583618 (rulesValidInductive!1302 thiss!23328 rules!3198)))

(assert (=> d!583618 (= (maxPrefix!1885 thiss!23328 rules!3198 (++!5773 lt!729332 lt!729325)) lt!729492)))

(declare-fun b!1907857 () Bool)

(declare-fun res!851899 () Bool)

(declare-fun e!1218587 () Bool)

(assert (=> b!1907857 (=> (not res!851899) (not e!1218587))))

(assert (=> b!1907857 (= res!851899 (matchR!2537 (regex!3826 (rule!6023 (_1!11579 (get!6678 lt!729492)))) (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729492))))))))

(declare-fun b!1907858 () Bool)

(declare-fun res!851900 () Bool)

(assert (=> b!1907858 (=> (not res!851900) (not e!1218587))))

(assert (=> b!1907858 (= res!851900 (= (++!5773 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729492)))) (_2!11579 (get!6678 lt!729492))) (++!5773 lt!729332 lt!729325)))))

(declare-fun bm!117553 () Bool)

(declare-fun call!117558 () Option!4358)

(assert (=> bm!117553 (= call!117558 (maxPrefixOneRule!1205 thiss!23328 (h!26886 rules!3198) (++!5773 lt!729332 lt!729325)))))

(declare-fun b!1907859 () Bool)

(assert (=> b!1907859 (= e!1218588 e!1218587)))

(declare-fun res!851902 () Bool)

(assert (=> b!1907859 (=> (not res!851902) (not e!1218587))))

(assert (=> b!1907859 (= res!851902 (isDefined!3656 lt!729492))))

(declare-fun b!1907860 () Bool)

(declare-fun lt!729495 () Option!4358)

(declare-fun lt!729491 () Option!4358)

(assert (=> b!1907860 (= e!1218586 (ite (and ((_ is None!4357) lt!729495) ((_ is None!4357) lt!729491)) None!4357 (ite ((_ is None!4357) lt!729491) lt!729495 (ite ((_ is None!4357) lt!729495) lt!729491 (ite (>= (size!16944 (_1!11579 (v!26400 lt!729495))) (size!16944 (_1!11579 (v!26400 lt!729491)))) lt!729495 lt!729491)))))))

(assert (=> b!1907860 (= lt!729495 call!117558)))

(assert (=> b!1907860 (= lt!729491 (maxPrefix!1885 thiss!23328 (t!177702 rules!3198) (++!5773 lt!729332 lt!729325)))))

(declare-fun b!1907861 () Bool)

(declare-fun res!851898 () Bool)

(assert (=> b!1907861 (=> (not res!851898) (not e!1218587))))

(assert (=> b!1907861 (= res!851898 (< (size!16947 (_2!11579 (get!6678 lt!729492))) (size!16947 (++!5773 lt!729332 lt!729325))))))

(declare-fun b!1907862 () Bool)

(assert (=> b!1907862 (= e!1218586 call!117558)))

(declare-fun b!1907863 () Bool)

(declare-fun res!851903 () Bool)

(assert (=> b!1907863 (=> (not res!851903) (not e!1218587))))

(assert (=> b!1907863 (= res!851903 (= (value!120632 (_1!11579 (get!6678 lt!729492))) (apply!5639 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729492)))) (seqFromList!2698 (originalCharacters!4633 (_1!11579 (get!6678 lt!729492)))))))))

(declare-fun b!1907864 () Bool)

(declare-fun res!851904 () Bool)

(assert (=> b!1907864 (=> (not res!851904) (not e!1218587))))

(assert (=> b!1907864 (= res!851904 (= (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729492)))) (originalCharacters!4633 (_1!11579 (get!6678 lt!729492)))))))

(declare-fun b!1907865 () Bool)

(assert (=> b!1907865 (= e!1218587 (contains!3865 rules!3198 (rule!6023 (_1!11579 (get!6678 lt!729492)))))))

(assert (= (and d!583618 c!310849) b!1907862))

(assert (= (and d!583618 (not c!310849)) b!1907860))

(assert (= (or b!1907862 b!1907860) bm!117553))

(assert (= (and d!583618 (not res!851901)) b!1907859))

(assert (= (and b!1907859 res!851902) b!1907864))

(assert (= (and b!1907864 res!851904) b!1907861))

(assert (= (and b!1907861 res!851898) b!1907858))

(assert (= (and b!1907858 res!851900) b!1907863))

(assert (= (and b!1907863 res!851903) b!1907857))

(assert (= (and b!1907857 res!851899) b!1907865))

(assert (=> b!1907860 m!2340129))

(declare-fun m!2340697 () Bool)

(assert (=> b!1907860 m!2340697))

(declare-fun m!2340701 () Bool)

(assert (=> b!1907865 m!2340701))

(declare-fun m!2340703 () Bool)

(assert (=> b!1907865 m!2340703))

(assert (=> bm!117553 m!2340129))

(declare-fun m!2340705 () Bool)

(assert (=> bm!117553 m!2340705))

(assert (=> b!1907861 m!2340701))

(declare-fun m!2340707 () Bool)

(assert (=> b!1907861 m!2340707))

(assert (=> b!1907861 m!2340129))

(declare-fun m!2340709 () Bool)

(assert (=> b!1907861 m!2340709))

(declare-fun m!2340711 () Bool)

(assert (=> d!583618 m!2340711))

(assert (=> d!583618 m!2340129))

(assert (=> d!583618 m!2340129))

(declare-fun m!2340713 () Bool)

(assert (=> d!583618 m!2340713))

(assert (=> d!583618 m!2340129))

(assert (=> d!583618 m!2340129))

(declare-fun m!2340715 () Bool)

(assert (=> d!583618 m!2340715))

(assert (=> d!583618 m!2340451))

(assert (=> b!1907863 m!2340701))

(declare-fun m!2340717 () Bool)

(assert (=> b!1907863 m!2340717))

(assert (=> b!1907863 m!2340717))

(declare-fun m!2340721 () Bool)

(assert (=> b!1907863 m!2340721))

(assert (=> b!1907858 m!2340701))

(declare-fun m!2340725 () Bool)

(assert (=> b!1907858 m!2340725))

(assert (=> b!1907858 m!2340725))

(declare-fun m!2340727 () Bool)

(assert (=> b!1907858 m!2340727))

(assert (=> b!1907858 m!2340727))

(declare-fun m!2340729 () Bool)

(assert (=> b!1907858 m!2340729))

(assert (=> b!1907857 m!2340701))

(assert (=> b!1907857 m!2340725))

(assert (=> b!1907857 m!2340725))

(assert (=> b!1907857 m!2340727))

(assert (=> b!1907857 m!2340727))

(declare-fun m!2340731 () Bool)

(assert (=> b!1907857 m!2340731))

(assert (=> b!1907864 m!2340701))

(assert (=> b!1907864 m!2340725))

(assert (=> b!1907864 m!2340725))

(assert (=> b!1907864 m!2340727))

(declare-fun m!2340733 () Bool)

(assert (=> b!1907859 m!2340733))

(assert (=> b!1907408 d!583618))

(declare-fun d!583630 () Bool)

(declare-fun lt!729497 () BalanceConc!14106)

(assert (=> d!583630 (= (list!8738 lt!729497) (originalCharacters!4633 (h!26885 tokens!598)))))

(assert (=> d!583630 (= lt!729497 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (value!120632 (h!26885 tokens!598))))))

(assert (=> d!583630 (= (charsOf!2382 (h!26885 tokens!598)) lt!729497)))

(declare-fun b_lambda!63075 () Bool)

(assert (=> (not b_lambda!63075) (not d!583630)))

(declare-fun t!177767 () Bool)

(declare-fun tb!116719 () Bool)

(assert (=> (and b!1907389 (= (toChars!5310 (transformation!3826 (h!26886 rules!3198))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!177767) tb!116719))

(declare-fun b!1907885 () Bool)

(declare-fun e!1218599 () Bool)

(declare-fun tp!544572 () Bool)

(assert (=> b!1907885 (= e!1218599 (and (inv!28591 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (value!120632 (h!26885 tokens!598))))) tp!544572))))

(declare-fun result!141060 () Bool)

(assert (=> tb!116719 (= result!141060 (and (inv!28592 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (value!120632 (h!26885 tokens!598)))) e!1218599))))

(assert (= tb!116719 b!1907885))

(declare-fun m!2340735 () Bool)

(assert (=> b!1907885 m!2340735))

(declare-fun m!2340737 () Bool)

(assert (=> tb!116719 m!2340737))

(assert (=> d!583630 t!177767))

(declare-fun b_and!148395 () Bool)

(assert (= b_and!148371 (and (=> t!177767 result!141060) b_and!148395)))

(declare-fun t!177769 () Bool)

(declare-fun tb!116721 () Bool)

(assert (=> (and b!1907387 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!177769) tb!116721))

(declare-fun result!141062 () Bool)

(assert (= result!141062 result!141060))

(assert (=> d!583630 t!177769))

(declare-fun b_and!148397 () Bool)

(assert (= b_and!148373 (and (=> t!177769 result!141062) b_and!148397)))

(declare-fun t!177771 () Bool)

(declare-fun tb!116723 () Bool)

(assert (=> (and b!1907400 (= (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!177771) tb!116723))

(declare-fun result!141066 () Bool)

(assert (= result!141066 result!141060))

(assert (=> d!583630 t!177771))

(declare-fun b_and!148399 () Bool)

(assert (= b_and!148375 (and (=> t!177771 result!141066) b_and!148399)))

(declare-fun m!2340739 () Bool)

(assert (=> d!583630 m!2340739))

(declare-fun m!2340741 () Bool)

(assert (=> d!583630 m!2340741))

(assert (=> b!1907408 d!583630))

(declare-fun d!583632 () Bool)

(declare-fun fromListB!1224 (List!21565) BalanceConc!14106)

(assert (=> d!583632 (= (seqFromList!2698 (originalCharacters!4633 (h!26885 tokens!598))) (fromListB!1224 (originalCharacters!4633 (h!26885 tokens!598))))))

(declare-fun bs!413987 () Bool)

(assert (= bs!413987 d!583632))

(declare-fun m!2340743 () Bool)

(assert (=> bs!413987 m!2340743))

(assert (=> b!1907408 d!583632))

(declare-fun d!583634 () Bool)

(assert (=> d!583634 (= (list!8738 lt!729323) (list!8741 (c!310756 lt!729323)))))

(declare-fun bs!413988 () Bool)

(assert (= bs!413988 d!583634))

(declare-fun m!2340745 () Bool)

(assert (=> bs!413988 m!2340745))

(assert (=> b!1907408 d!583634))

(declare-fun d!583636 () Bool)

(declare-fun e!1218613 () Bool)

(assert (=> d!583636 e!1218613))

(declare-fun res!851914 () Bool)

(assert (=> d!583636 (=> (not res!851914) (not e!1218613))))

(assert (=> d!583636 (= res!851914 (isDefined!3655 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 (h!26885 tokens!598))))))))

(declare-fun lt!729498 () Unit!35820)

(assert (=> d!583636 (= lt!729498 (choose!11879 thiss!23328 rules!3198 lt!729332 (h!26885 tokens!598)))))

(assert (=> d!583636 (rulesInvariant!3046 thiss!23328 rules!3198)))

(assert (=> d!583636 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!669 thiss!23328 rules!3198 lt!729332 (h!26885 tokens!598)) lt!729498)))

(declare-fun b!1907898 () Bool)

(declare-fun res!851915 () Bool)

(assert (=> b!1907898 (=> (not res!851915) (not e!1218613))))

(assert (=> b!1907898 (= res!851915 (matchR!2537 (regex!3826 (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 (h!26885 tokens!598)))))) (list!8738 (charsOf!2382 (h!26885 tokens!598)))))))

(declare-fun b!1907899 () Bool)

(assert (=> b!1907899 (= e!1218613 (= (rule!6023 (h!26885 tokens!598)) (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 (h!26885 tokens!598)))))))))

(assert (= (and d!583636 res!851914) b!1907898))

(assert (= (and b!1907898 res!851915) b!1907899))

(assert (=> d!583636 m!2340161))

(assert (=> d!583636 m!2340161))

(declare-fun m!2340751 () Bool)

(assert (=> d!583636 m!2340751))

(declare-fun m!2340753 () Bool)

(assert (=> d!583636 m!2340753))

(assert (=> d!583636 m!2340119))

(assert (=> b!1907898 m!2340161))

(assert (=> b!1907898 m!2340139))

(assert (=> b!1907898 m!2340161))

(declare-fun m!2340755 () Bool)

(assert (=> b!1907898 m!2340755))

(declare-fun m!2340757 () Bool)

(assert (=> b!1907898 m!2340757))

(declare-fun m!2340759 () Bool)

(assert (=> b!1907898 m!2340759))

(assert (=> b!1907898 m!2340139))

(assert (=> b!1907898 m!2340757))

(assert (=> b!1907899 m!2340161))

(assert (=> b!1907899 m!2340161))

(assert (=> b!1907899 m!2340755))

(assert (=> b!1907408 d!583636))

(declare-fun d!583638 () Bool)

(assert (=> d!583638 (= (get!6678 lt!729322) (v!26400 lt!729322))))

(assert (=> b!1907409 d!583638))

(declare-fun d!583640 () Bool)

(assert (=> d!583640 (not (matchR!2537 (regex!3826 (rule!6023 separatorToken!354)) lt!729326))))

(declare-fun lt!729501 () Unit!35820)

(declare-fun choose!11881 (Regex!5251 List!21565 C!10648) Unit!35820)

(assert (=> d!583640 (= lt!729501 (choose!11881 (regex!3826 (rule!6023 separatorToken!354)) lt!729326 lt!729334))))

(declare-fun validRegex!2121 (Regex!5251) Bool)

(assert (=> d!583640 (validRegex!2121 (regex!3826 (rule!6023 separatorToken!354)))))

(assert (=> d!583640 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!234 (regex!3826 (rule!6023 separatorToken!354)) lt!729326 lt!729334) lt!729501)))

(declare-fun bs!413989 () Bool)

(assert (= bs!413989 d!583640))

(assert (=> bs!413989 m!2340171))

(declare-fun m!2340761 () Bool)

(assert (=> bs!413989 m!2340761))

(declare-fun m!2340763 () Bool)

(assert (=> bs!413989 m!2340763))

(assert (=> b!1907398 d!583640))

(declare-fun b!1907965 () Bool)

(declare-fun res!851939 () Bool)

(declare-fun e!1218653 () Bool)

(assert (=> b!1907965 (=> res!851939 e!1218653)))

(declare-fun e!1218658 () Bool)

(assert (=> b!1907965 (= res!851939 e!1218658)))

(declare-fun res!851938 () Bool)

(assert (=> b!1907965 (=> (not res!851938) (not e!1218658))))

(declare-fun lt!729504 () Bool)

(assert (=> b!1907965 (= res!851938 lt!729504)))

(declare-fun b!1907966 () Bool)

(declare-fun e!1218657 () Bool)

(assert (=> b!1907966 (= e!1218657 (not lt!729504))))

(declare-fun bm!117557 () Bool)

(declare-fun call!117562 () Bool)

(assert (=> bm!117557 (= call!117562 (isEmpty!13197 lt!729326))))

(declare-fun b!1907967 () Bool)

(declare-fun res!851932 () Bool)

(declare-fun e!1218652 () Bool)

(assert (=> b!1907967 (=> res!851932 e!1218652)))

(declare-fun tail!2952 (List!21565) List!21565)

(assert (=> b!1907967 (= res!851932 (not (isEmpty!13197 (tail!2952 lt!729326))))))

(declare-fun b!1907968 () Bool)

(declare-fun res!851935 () Bool)

(assert (=> b!1907968 (=> res!851935 e!1218653)))

(assert (=> b!1907968 (= res!851935 (not ((_ is ElementMatch!5251) (regex!3826 (rule!6023 separatorToken!354)))))))

(assert (=> b!1907968 (= e!1218657 e!1218653)))

(declare-fun b!1907969 () Bool)

(declare-fun e!1218656 () Bool)

(declare-fun nullable!1595 (Regex!5251) Bool)

(assert (=> b!1907969 (= e!1218656 (nullable!1595 (regex!3826 (rule!6023 separatorToken!354))))))

(declare-fun d!583642 () Bool)

(declare-fun e!1218655 () Bool)

(assert (=> d!583642 e!1218655))

(declare-fun c!310862 () Bool)

(assert (=> d!583642 (= c!310862 ((_ is EmptyExpr!5251) (regex!3826 (rule!6023 separatorToken!354))))))

(assert (=> d!583642 (= lt!729504 e!1218656)))

(declare-fun c!310861 () Bool)

(assert (=> d!583642 (= c!310861 (isEmpty!13197 lt!729326))))

(assert (=> d!583642 (validRegex!2121 (regex!3826 (rule!6023 separatorToken!354)))))

(assert (=> d!583642 (= (matchR!2537 (regex!3826 (rule!6023 separatorToken!354)) lt!729326) lt!729504)))

(declare-fun b!1907970 () Bool)

(assert (=> b!1907970 (= e!1218655 (= lt!729504 call!117562))))

(declare-fun b!1907971 () Bool)

(declare-fun res!851934 () Bool)

(assert (=> b!1907971 (=> (not res!851934) (not e!1218658))))

(assert (=> b!1907971 (= res!851934 (not call!117562))))

(declare-fun b!1907972 () Bool)

(assert (=> b!1907972 (= e!1218652 (not (= (head!4428 lt!729326) (c!310755 (regex!3826 (rule!6023 separatorToken!354))))))))

(declare-fun b!1907973 () Bool)

(declare-fun derivativeStep!1354 (Regex!5251 C!10648) Regex!5251)

(assert (=> b!1907973 (= e!1218656 (matchR!2537 (derivativeStep!1354 (regex!3826 (rule!6023 separatorToken!354)) (head!4428 lt!729326)) (tail!2952 lt!729326)))))

(declare-fun b!1907974 () Bool)

(declare-fun e!1218654 () Bool)

(assert (=> b!1907974 (= e!1218653 e!1218654)))

(declare-fun res!851936 () Bool)

(assert (=> b!1907974 (=> (not res!851936) (not e!1218654))))

(assert (=> b!1907974 (= res!851936 (not lt!729504))))

(declare-fun b!1907975 () Bool)

(assert (=> b!1907975 (= e!1218655 e!1218657)))

(declare-fun c!310860 () Bool)

(assert (=> b!1907975 (= c!310860 ((_ is EmptyLang!5251) (regex!3826 (rule!6023 separatorToken!354))))))

(declare-fun b!1907976 () Bool)

(assert (=> b!1907976 (= e!1218654 e!1218652)))

(declare-fun res!851937 () Bool)

(assert (=> b!1907976 (=> res!851937 e!1218652)))

(assert (=> b!1907976 (= res!851937 call!117562)))

(declare-fun b!1907977 () Bool)

(declare-fun res!851933 () Bool)

(assert (=> b!1907977 (=> (not res!851933) (not e!1218658))))

(assert (=> b!1907977 (= res!851933 (isEmpty!13197 (tail!2952 lt!729326)))))

(declare-fun b!1907978 () Bool)

(assert (=> b!1907978 (= e!1218658 (= (head!4428 lt!729326) (c!310755 (regex!3826 (rule!6023 separatorToken!354)))))))

(assert (= (and d!583642 c!310861) b!1907969))

(assert (= (and d!583642 (not c!310861)) b!1907973))

(assert (= (and d!583642 c!310862) b!1907970))

(assert (= (and d!583642 (not c!310862)) b!1907975))

(assert (= (and b!1907975 c!310860) b!1907966))

(assert (= (and b!1907975 (not c!310860)) b!1907968))

(assert (= (and b!1907968 (not res!851935)) b!1907965))

(assert (= (and b!1907965 res!851938) b!1907971))

(assert (= (and b!1907971 res!851934) b!1907977))

(assert (= (and b!1907977 res!851933) b!1907978))

(assert (= (and b!1907965 (not res!851939)) b!1907974))

(assert (= (and b!1907974 res!851936) b!1907976))

(assert (= (and b!1907976 (not res!851937)) b!1907967))

(assert (= (and b!1907967 (not res!851932)) b!1907972))

(assert (= (or b!1907970 b!1907971 b!1907976) bm!117557))

(declare-fun m!2340773 () Bool)

(assert (=> d!583642 m!2340773))

(assert (=> d!583642 m!2340763))

(declare-fun m!2340775 () Bool)

(assert (=> b!1907969 m!2340775))

(assert (=> b!1907972 m!2340109))

(declare-fun m!2340777 () Bool)

(assert (=> b!1907977 m!2340777))

(assert (=> b!1907977 m!2340777))

(declare-fun m!2340779 () Bool)

(assert (=> b!1907977 m!2340779))

(assert (=> bm!117557 m!2340773))

(assert (=> b!1907973 m!2340109))

(assert (=> b!1907973 m!2340109))

(declare-fun m!2340781 () Bool)

(assert (=> b!1907973 m!2340781))

(assert (=> b!1907973 m!2340777))

(assert (=> b!1907973 m!2340781))

(assert (=> b!1907973 m!2340777))

(declare-fun m!2340783 () Bool)

(assert (=> b!1907973 m!2340783))

(assert (=> b!1907978 m!2340109))

(assert (=> b!1907967 m!2340777))

(assert (=> b!1907967 m!2340777))

(assert (=> b!1907967 m!2340779))

(assert (=> b!1907398 d!583642))

(declare-fun d!583646 () Bool)

(assert (=> d!583646 (= (inv!28584 (tag!4258 (h!26886 rules!3198))) (= (mod (str.len (value!120631 (tag!4258 (h!26886 rules!3198)))) 2) 0))))

(assert (=> b!1907388 d!583646))

(declare-fun d!583648 () Bool)

(declare-fun res!851942 () Bool)

(declare-fun e!1218661 () Bool)

(assert (=> d!583648 (=> (not res!851942) (not e!1218661))))

(declare-fun semiInverseModEq!1545 (Int Int) Bool)

(assert (=> d!583648 (= res!851942 (semiInverseModEq!1545 (toChars!5310 (transformation!3826 (h!26886 rules!3198))) (toValue!5451 (transformation!3826 (h!26886 rules!3198)))))))

(assert (=> d!583648 (= (inv!28587 (transformation!3826 (h!26886 rules!3198))) e!1218661)))

(declare-fun b!1907981 () Bool)

(declare-fun equivClasses!1472 (Int Int) Bool)

(assert (=> b!1907981 (= e!1218661 (equivClasses!1472 (toChars!5310 (transformation!3826 (h!26886 rules!3198))) (toValue!5451 (transformation!3826 (h!26886 rules!3198)))))))

(assert (= (and d!583648 res!851942) b!1907981))

(declare-fun m!2340785 () Bool)

(assert (=> d!583648 m!2340785))

(declare-fun m!2340787 () Bool)

(assert (=> b!1907981 m!2340787))

(assert (=> b!1907388 d!583648))

(declare-fun d!583650 () Bool)

(assert (=> d!583650 (= (inv!28584 (tag!4258 (rule!6023 (h!26885 tokens!598)))) (= (mod (str.len (value!120631 (tag!4258 (rule!6023 (h!26885 tokens!598))))) 2) 0))))

(assert (=> b!1907394 d!583650))

(declare-fun d!583652 () Bool)

(declare-fun res!851943 () Bool)

(declare-fun e!1218662 () Bool)

(assert (=> d!583652 (=> (not res!851943) (not e!1218662))))

(assert (=> d!583652 (= res!851943 (semiInverseModEq!1545 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598))))))))

(assert (=> d!583652 (= (inv!28587 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) e!1218662)))

(declare-fun b!1907982 () Bool)

(assert (=> b!1907982 (= e!1218662 (equivClasses!1472 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598))))))))

(assert (= (and d!583652 res!851943) b!1907982))

(declare-fun m!2340789 () Bool)

(assert (=> d!583652 m!2340789))

(declare-fun m!2340791 () Bool)

(assert (=> b!1907982 m!2340791))

(assert (=> b!1907394 d!583652))

(declare-fun d!583654 () Bool)

(declare-fun res!851944 () Bool)

(declare-fun e!1218663 () Bool)

(assert (=> d!583654 (=> (not res!851944) (not e!1218663))))

(assert (=> d!583654 (= res!851944 (not (isEmpty!13197 (originalCharacters!4633 (h!26885 tokens!598)))))))

(assert (=> d!583654 (= (inv!28588 (h!26885 tokens!598)) e!1218663)))

(declare-fun b!1907983 () Bool)

(declare-fun res!851945 () Bool)

(assert (=> b!1907983 (=> (not res!851945) (not e!1218663))))

(assert (=> b!1907983 (= res!851945 (= (originalCharacters!4633 (h!26885 tokens!598)) (list!8738 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (value!120632 (h!26885 tokens!598))))))))

(declare-fun b!1907984 () Bool)

(assert (=> b!1907984 (= e!1218663 (= (size!16944 (h!26885 tokens!598)) (size!16947 (originalCharacters!4633 (h!26885 tokens!598)))))))

(assert (= (and d!583654 res!851944) b!1907983))

(assert (= (and b!1907983 res!851945) b!1907984))

(declare-fun b_lambda!63095 () Bool)

(assert (=> (not b_lambda!63095) (not b!1907983)))

(assert (=> b!1907983 t!177767))

(declare-fun b_and!148409 () Bool)

(assert (= b_and!148395 (and (=> t!177767 result!141060) b_and!148409)))

(assert (=> b!1907983 t!177769))

(declare-fun b_and!148411 () Bool)

(assert (= b_and!148397 (and (=> t!177769 result!141062) b_and!148411)))

(assert (=> b!1907983 t!177771))

(declare-fun b_and!148413 () Bool)

(assert (= b_and!148399 (and (=> t!177771 result!141066) b_and!148413)))

(declare-fun m!2340793 () Bool)

(assert (=> d!583654 m!2340793))

(assert (=> b!1907983 m!2340741))

(assert (=> b!1907983 m!2340741))

(declare-fun m!2340795 () Bool)

(assert (=> b!1907983 m!2340795))

(declare-fun m!2340797 () Bool)

(assert (=> b!1907984 m!2340797))

(assert (=> b!1907395 d!583654))

(declare-fun b!1907985 () Bool)

(declare-fun res!851953 () Bool)

(declare-fun e!1218665 () Bool)

(assert (=> b!1907985 (=> res!851953 e!1218665)))

(declare-fun e!1218670 () Bool)

(assert (=> b!1907985 (= res!851953 e!1218670)))

(declare-fun res!851952 () Bool)

(assert (=> b!1907985 (=> (not res!851952) (not e!1218670))))

(declare-fun lt!729505 () Bool)

(assert (=> b!1907985 (= res!851952 lt!729505)))

(declare-fun b!1907986 () Bool)

(declare-fun e!1218669 () Bool)

(assert (=> b!1907986 (= e!1218669 (not lt!729505))))

(declare-fun bm!117558 () Bool)

(declare-fun call!117563 () Bool)

(assert (=> bm!117558 (= call!117563 (isEmpty!13197 lt!729332))))

(declare-fun b!1907987 () Bool)

(declare-fun res!851946 () Bool)

(declare-fun e!1218664 () Bool)

(assert (=> b!1907987 (=> res!851946 e!1218664)))

(assert (=> b!1907987 (= res!851946 (not (isEmpty!13197 (tail!2952 lt!729332))))))

(declare-fun b!1907988 () Bool)

(declare-fun res!851949 () Bool)

(assert (=> b!1907988 (=> res!851949 e!1218665)))

(assert (=> b!1907988 (= res!851949 (not ((_ is ElementMatch!5251) (regex!3826 lt!729321))))))

(assert (=> b!1907988 (= e!1218669 e!1218665)))

(declare-fun b!1907989 () Bool)

(declare-fun e!1218668 () Bool)

(assert (=> b!1907989 (= e!1218668 (nullable!1595 (regex!3826 lt!729321)))))

(declare-fun d!583656 () Bool)

(declare-fun e!1218667 () Bool)

(assert (=> d!583656 e!1218667))

(declare-fun c!310865 () Bool)

(assert (=> d!583656 (= c!310865 ((_ is EmptyExpr!5251) (regex!3826 lt!729321)))))

(assert (=> d!583656 (= lt!729505 e!1218668)))

(declare-fun c!310864 () Bool)

(assert (=> d!583656 (= c!310864 (isEmpty!13197 lt!729332))))

(assert (=> d!583656 (validRegex!2121 (regex!3826 lt!729321))))

(assert (=> d!583656 (= (matchR!2537 (regex!3826 lt!729321) lt!729332) lt!729505)))

(declare-fun b!1907990 () Bool)

(assert (=> b!1907990 (= e!1218667 (= lt!729505 call!117563))))

(declare-fun b!1907991 () Bool)

(declare-fun res!851948 () Bool)

(assert (=> b!1907991 (=> (not res!851948) (not e!1218670))))

(assert (=> b!1907991 (= res!851948 (not call!117563))))

(declare-fun b!1907992 () Bool)

(assert (=> b!1907992 (= e!1218664 (not (= (head!4428 lt!729332) (c!310755 (regex!3826 lt!729321)))))))

(declare-fun b!1907993 () Bool)

(assert (=> b!1907993 (= e!1218668 (matchR!2537 (derivativeStep!1354 (regex!3826 lt!729321) (head!4428 lt!729332)) (tail!2952 lt!729332)))))

(declare-fun b!1907994 () Bool)

(declare-fun e!1218666 () Bool)

(assert (=> b!1907994 (= e!1218665 e!1218666)))

(declare-fun res!851950 () Bool)

(assert (=> b!1907994 (=> (not res!851950) (not e!1218666))))

(assert (=> b!1907994 (= res!851950 (not lt!729505))))

(declare-fun b!1907995 () Bool)

(assert (=> b!1907995 (= e!1218667 e!1218669)))

(declare-fun c!310863 () Bool)

(assert (=> b!1907995 (= c!310863 ((_ is EmptyLang!5251) (regex!3826 lt!729321)))))

(declare-fun b!1907996 () Bool)

(assert (=> b!1907996 (= e!1218666 e!1218664)))

(declare-fun res!851951 () Bool)

(assert (=> b!1907996 (=> res!851951 e!1218664)))

(assert (=> b!1907996 (= res!851951 call!117563)))

(declare-fun b!1907997 () Bool)

(declare-fun res!851947 () Bool)

(assert (=> b!1907997 (=> (not res!851947) (not e!1218670))))

(assert (=> b!1907997 (= res!851947 (isEmpty!13197 (tail!2952 lt!729332)))))

(declare-fun b!1907998 () Bool)

(assert (=> b!1907998 (= e!1218670 (= (head!4428 lt!729332) (c!310755 (regex!3826 lt!729321))))))

(assert (= (and d!583656 c!310864) b!1907989))

(assert (= (and d!583656 (not c!310864)) b!1907993))

(assert (= (and d!583656 c!310865) b!1907990))

(assert (= (and d!583656 (not c!310865)) b!1907995))

(assert (= (and b!1907995 c!310863) b!1907986))

(assert (= (and b!1907995 (not c!310863)) b!1907988))

(assert (= (and b!1907988 (not res!851949)) b!1907985))

(assert (= (and b!1907985 res!851952) b!1907991))

(assert (= (and b!1907991 res!851948) b!1907997))

(assert (= (and b!1907997 res!851947) b!1907998))

(assert (= (and b!1907985 (not res!851953)) b!1907994))

(assert (= (and b!1907994 res!851950) b!1907996))

(assert (= (and b!1907996 (not res!851951)) b!1907987))

(assert (= (and b!1907987 (not res!851946)) b!1907992))

(assert (= (or b!1907990 b!1907991 b!1907996) bm!117558))

(declare-fun m!2340799 () Bool)

(assert (=> d!583656 m!2340799))

(declare-fun m!2340801 () Bool)

(assert (=> d!583656 m!2340801))

(declare-fun m!2340803 () Bool)

(assert (=> b!1907989 m!2340803))

(declare-fun m!2340805 () Bool)

(assert (=> b!1907992 m!2340805))

(declare-fun m!2340807 () Bool)

(assert (=> b!1907997 m!2340807))

(assert (=> b!1907997 m!2340807))

(declare-fun m!2340809 () Bool)

(assert (=> b!1907997 m!2340809))

(assert (=> bm!117558 m!2340799))

(assert (=> b!1907993 m!2340805))

(assert (=> b!1907993 m!2340805))

(declare-fun m!2340811 () Bool)

(assert (=> b!1907993 m!2340811))

(assert (=> b!1907993 m!2340807))

(assert (=> b!1907993 m!2340811))

(assert (=> b!1907993 m!2340807))

(declare-fun m!2340813 () Bool)

(assert (=> b!1907993 m!2340813))

(assert (=> b!1907998 m!2340805))

(assert (=> b!1907987 m!2340807))

(assert (=> b!1907987 m!2340807))

(assert (=> b!1907987 m!2340809))

(assert (=> b!1907385 d!583656))

(declare-fun d!583658 () Bool)

(assert (=> d!583658 (= (get!6677 lt!729324) (v!26399 lt!729324))))

(assert (=> b!1907385 d!583658))

(declare-fun d!583660 () Bool)

(declare-fun res!851956 () Bool)

(declare-fun e!1218673 () Bool)

(assert (=> d!583660 (=> (not res!851956) (not e!1218673))))

(declare-fun rulesValid!1432 (LexerInterface!3439 List!21567) Bool)

(assert (=> d!583660 (= res!851956 (rulesValid!1432 thiss!23328 rules!3198))))

(assert (=> d!583660 (= (rulesInvariant!3046 thiss!23328 rules!3198) e!1218673)))

(declare-fun b!1908001 () Bool)

(declare-datatypes ((List!21569 0))(
  ( (Nil!21487) (Cons!21487 (h!26888 String!24928) (t!177814 List!21569)) )
))
(declare-fun noDuplicateTag!1430 (LexerInterface!3439 List!21567 List!21569) Bool)

(assert (=> b!1908001 (= e!1218673 (noDuplicateTag!1430 thiss!23328 rules!3198 Nil!21487))))

(assert (= (and d!583660 res!851956) b!1908001))

(declare-fun m!2340815 () Bool)

(assert (=> d!583660 m!2340815))

(declare-fun m!2340817 () Bool)

(assert (=> b!1908001 m!2340817))

(assert (=> b!1907407 d!583660))

(declare-fun d!583662 () Bool)

(declare-fun lt!729510 () Bool)

(declare-fun e!1218679 () Bool)

(assert (=> d!583662 (= lt!729510 e!1218679)))

(declare-fun res!851963 () Bool)

(assert (=> d!583662 (=> (not res!851963) (not e!1218679))))

(declare-fun list!8742 (BalanceConc!14110) List!21566)

(declare-datatypes ((tuple2!20224 0))(
  ( (tuple2!20225 (_1!11581 BalanceConc!14110) (_2!11581 BalanceConc!14106)) )
))
(declare-fun lex!1524 (LexerInterface!3439 List!21567 BalanceConc!14106) tuple2!20224)

(assert (=> d!583662 (= res!851963 (= (list!8742 (_1!11581 (lex!1524 thiss!23328 rules!3198 (print!1453 thiss!23328 (singletonSeq!1851 separatorToken!354))))) (list!8742 (singletonSeq!1851 separatorToken!354))))))

(declare-fun e!1218678 () Bool)

(assert (=> d!583662 (= lt!729510 e!1218678)))

(declare-fun res!851964 () Bool)

(assert (=> d!583662 (=> (not res!851964) (not e!1218678))))

(declare-fun lt!729511 () tuple2!20224)

(declare-fun size!16948 (BalanceConc!14110) Int)

(assert (=> d!583662 (= res!851964 (= (size!16948 (_1!11581 lt!729511)) 1))))

(assert (=> d!583662 (= lt!729511 (lex!1524 thiss!23328 rules!3198 (print!1453 thiss!23328 (singletonSeq!1851 separatorToken!354))))))

(assert (=> d!583662 (not (isEmpty!13192 rules!3198))))

(assert (=> d!583662 (= (rulesProduceIndividualToken!1611 thiss!23328 rules!3198 separatorToken!354) lt!729510)))

(declare-fun b!1908008 () Bool)

(declare-fun res!851965 () Bool)

(assert (=> b!1908008 (=> (not res!851965) (not e!1218678))))

(declare-fun apply!5640 (BalanceConc!14110 Int) Token!7204)

(assert (=> b!1908008 (= res!851965 (= (apply!5640 (_1!11581 lt!729511) 0) separatorToken!354))))

(declare-fun b!1908009 () Bool)

(declare-fun isEmpty!13200 (BalanceConc!14106) Bool)

(assert (=> b!1908009 (= e!1218678 (isEmpty!13200 (_2!11581 lt!729511)))))

(declare-fun b!1908010 () Bool)

(assert (=> b!1908010 (= e!1218679 (isEmpty!13200 (_2!11581 (lex!1524 thiss!23328 rules!3198 (print!1453 thiss!23328 (singletonSeq!1851 separatorToken!354))))))))

(assert (= (and d!583662 res!851964) b!1908008))

(assert (= (and b!1908008 res!851965) b!1908009))

(assert (= (and d!583662 res!851963) b!1908010))

(declare-fun m!2340819 () Bool)

(assert (=> d!583662 m!2340819))

(declare-fun m!2340821 () Bool)

(assert (=> d!583662 m!2340821))

(declare-fun m!2340823 () Bool)

(assert (=> d!583662 m!2340823))

(assert (=> d!583662 m!2340187))

(assert (=> d!583662 m!2340823))

(declare-fun m!2340825 () Bool)

(assert (=> d!583662 m!2340825))

(assert (=> d!583662 m!2340823))

(declare-fun m!2340827 () Bool)

(assert (=> d!583662 m!2340827))

(assert (=> d!583662 m!2340827))

(declare-fun m!2340829 () Bool)

(assert (=> d!583662 m!2340829))

(declare-fun m!2340831 () Bool)

(assert (=> b!1908008 m!2340831))

(declare-fun m!2340833 () Bool)

(assert (=> b!1908009 m!2340833))

(assert (=> b!1908010 m!2340823))

(assert (=> b!1908010 m!2340823))

(assert (=> b!1908010 m!2340827))

(assert (=> b!1908010 m!2340827))

(assert (=> b!1908010 m!2340829))

(declare-fun m!2340835 () Bool)

(assert (=> b!1908010 m!2340835))

(assert (=> b!1907396 d!583662))

(declare-fun d!583664 () Bool)

(assert (=> d!583664 (= (inv!28584 (tag!4258 (rule!6023 separatorToken!354))) (= (mod (str.len (value!120631 (tag!4258 (rule!6023 separatorToken!354)))) 2) 0))))

(assert (=> b!1907402 d!583664))

(declare-fun d!583666 () Bool)

(declare-fun res!851966 () Bool)

(declare-fun e!1218680 () Bool)

(assert (=> d!583666 (=> (not res!851966) (not e!1218680))))

(assert (=> d!583666 (= res!851966 (semiInverseModEq!1545 (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (toValue!5451 (transformation!3826 (rule!6023 separatorToken!354)))))))

(assert (=> d!583666 (= (inv!28587 (transformation!3826 (rule!6023 separatorToken!354))) e!1218680)))

(declare-fun b!1908011 () Bool)

(assert (=> b!1908011 (= e!1218680 (equivClasses!1472 (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (toValue!5451 (transformation!3826 (rule!6023 separatorToken!354)))))))

(assert (= (and d!583666 res!851966) b!1908011))

(declare-fun m!2340837 () Bool)

(assert (=> d!583666 m!2340837))

(declare-fun m!2340839 () Bool)

(assert (=> b!1908011 m!2340839))

(assert (=> b!1907402 d!583666))

(declare-fun d!583668 () Bool)

(declare-fun res!851971 () Bool)

(declare-fun e!1218685 () Bool)

(assert (=> d!583668 (=> res!851971 e!1218685)))

(assert (=> d!583668 (= res!851971 (not ((_ is Cons!21485) rules!3198)))))

(assert (=> d!583668 (= (sepAndNonSepRulesDisjointChars!924 rules!3198 rules!3198) e!1218685)))

(declare-fun b!1908016 () Bool)

(declare-fun e!1218686 () Bool)

(assert (=> b!1908016 (= e!1218685 e!1218686)))

(declare-fun res!851972 () Bool)

(assert (=> b!1908016 (=> (not res!851972) (not e!1218686))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!430 (Rule!7452 List!21567) Bool)

(assert (=> b!1908016 (= res!851972 (ruleDisjointCharsFromAllFromOtherType!430 (h!26886 rules!3198) rules!3198))))

(declare-fun b!1908017 () Bool)

(assert (=> b!1908017 (= e!1218686 (sepAndNonSepRulesDisjointChars!924 rules!3198 (t!177702 rules!3198)))))

(assert (= (and d!583668 (not res!851971)) b!1908016))

(assert (= (and b!1908016 res!851972) b!1908017))

(declare-fun m!2340841 () Bool)

(assert (=> b!1908016 m!2340841))

(declare-fun m!2340843 () Bool)

(assert (=> b!1908017 m!2340843))

(assert (=> b!1907403 d!583668))

(declare-fun d!583670 () Bool)

(declare-fun res!851977 () Bool)

(declare-fun e!1218691 () Bool)

(assert (=> d!583670 (=> res!851977 e!1218691)))

(assert (=> d!583670 (= res!851977 ((_ is Nil!21484) tokens!598))))

(assert (=> d!583670 (= (forall!4514 tokens!598 lambda!74515) e!1218691)))

(declare-fun b!1908022 () Bool)

(declare-fun e!1218692 () Bool)

(assert (=> b!1908022 (= e!1218691 e!1218692)))

(declare-fun res!851978 () Bool)

(assert (=> b!1908022 (=> (not res!851978) (not e!1218692))))

(declare-fun dynLambda!10485 (Int Token!7204) Bool)

(assert (=> b!1908022 (= res!851978 (dynLambda!10485 lambda!74515 (h!26885 tokens!598)))))

(declare-fun b!1908023 () Bool)

(assert (=> b!1908023 (= e!1218692 (forall!4514 (t!177701 tokens!598) lambda!74515))))

(assert (= (and d!583670 (not res!851977)) b!1908022))

(assert (= (and b!1908022 res!851978) b!1908023))

(declare-fun b_lambda!63097 () Bool)

(assert (=> (not b_lambda!63097) (not b!1908022)))

(declare-fun m!2340845 () Bool)

(assert (=> b!1908022 m!2340845))

(declare-fun m!2340847 () Bool)

(assert (=> b!1908023 m!2340847))

(assert (=> b!1907392 d!583670))

(declare-fun b!1908034 () Bool)

(declare-fun e!1218701 () Bool)

(declare-fun inv!16 (TokenValue!3962) Bool)

(assert (=> b!1908034 (= e!1218701 (inv!16 (value!120632 (h!26885 tokens!598))))))

(declare-fun b!1908035 () Bool)

(declare-fun res!851981 () Bool)

(declare-fun e!1218700 () Bool)

(assert (=> b!1908035 (=> res!851981 e!1218700)))

(assert (=> b!1908035 (= res!851981 (not ((_ is IntegerValue!11888) (value!120632 (h!26885 tokens!598)))))))

(declare-fun e!1218699 () Bool)

(assert (=> b!1908035 (= e!1218699 e!1218700)))

(declare-fun d!583672 () Bool)

(declare-fun c!310871 () Bool)

(assert (=> d!583672 (= c!310871 ((_ is IntegerValue!11886) (value!120632 (h!26885 tokens!598))))))

(assert (=> d!583672 (= (inv!21 (value!120632 (h!26885 tokens!598))) e!1218701)))

(declare-fun b!1908036 () Bool)

(declare-fun inv!15 (TokenValue!3962) Bool)

(assert (=> b!1908036 (= e!1218700 (inv!15 (value!120632 (h!26885 tokens!598))))))

(declare-fun b!1908037 () Bool)

(declare-fun inv!17 (TokenValue!3962) Bool)

(assert (=> b!1908037 (= e!1218699 (inv!17 (value!120632 (h!26885 tokens!598))))))

(declare-fun b!1908038 () Bool)

(assert (=> b!1908038 (= e!1218701 e!1218699)))

(declare-fun c!310872 () Bool)

(assert (=> b!1908038 (= c!310872 ((_ is IntegerValue!11887) (value!120632 (h!26885 tokens!598))))))

(assert (= (and d!583672 c!310871) b!1908034))

(assert (= (and d!583672 (not c!310871)) b!1908038))

(assert (= (and b!1908038 c!310872) b!1908037))

(assert (= (and b!1908038 (not c!310872)) b!1908035))

(assert (= (and b!1908035 (not res!851981)) b!1908036))

(declare-fun m!2340849 () Bool)

(assert (=> b!1908034 m!2340849))

(declare-fun m!2340851 () Bool)

(assert (=> b!1908036 m!2340851))

(declare-fun m!2340853 () Bool)

(assert (=> b!1908037 m!2340853))

(assert (=> b!1907393 d!583672))

(declare-fun b!1908039 () Bool)

(declare-fun e!1218704 () Bool)

(assert (=> b!1908039 (= e!1218704 (inv!16 (value!120632 separatorToken!354)))))

(declare-fun b!1908040 () Bool)

(declare-fun res!851982 () Bool)

(declare-fun e!1218703 () Bool)

(assert (=> b!1908040 (=> res!851982 e!1218703)))

(assert (=> b!1908040 (= res!851982 (not ((_ is IntegerValue!11888) (value!120632 separatorToken!354))))))

(declare-fun e!1218702 () Bool)

(assert (=> b!1908040 (= e!1218702 e!1218703)))

(declare-fun d!583674 () Bool)

(declare-fun c!310873 () Bool)

(assert (=> d!583674 (= c!310873 ((_ is IntegerValue!11886) (value!120632 separatorToken!354)))))

(assert (=> d!583674 (= (inv!21 (value!120632 separatorToken!354)) e!1218704)))

(declare-fun b!1908041 () Bool)

(assert (=> b!1908041 (= e!1218703 (inv!15 (value!120632 separatorToken!354)))))

(declare-fun b!1908042 () Bool)

(assert (=> b!1908042 (= e!1218702 (inv!17 (value!120632 separatorToken!354)))))

(declare-fun b!1908043 () Bool)

(assert (=> b!1908043 (= e!1218704 e!1218702)))

(declare-fun c!310874 () Bool)

(assert (=> b!1908043 (= c!310874 ((_ is IntegerValue!11887) (value!120632 separatorToken!354)))))

(assert (= (and d!583674 c!310873) b!1908039))

(assert (= (and d!583674 (not c!310873)) b!1908043))

(assert (= (and b!1908043 c!310874) b!1908042))

(assert (= (and b!1908043 (not c!310874)) b!1908040))

(assert (= (and b!1908040 (not res!851982)) b!1908041))

(declare-fun m!2340855 () Bool)

(assert (=> b!1908039 m!2340855))

(declare-fun m!2340857 () Bool)

(assert (=> b!1908041 m!2340857))

(declare-fun m!2340859 () Bool)

(assert (=> b!1908042 m!2340859))

(assert (=> b!1907383 d!583674))

(declare-fun b!1908044 () Bool)

(declare-fun res!851990 () Bool)

(declare-fun e!1218706 () Bool)

(assert (=> b!1908044 (=> res!851990 e!1218706)))

(declare-fun e!1218711 () Bool)

(assert (=> b!1908044 (= res!851990 e!1218711)))

(declare-fun res!851989 () Bool)

(assert (=> b!1908044 (=> (not res!851989) (not e!1218711))))

(declare-fun lt!729512 () Bool)

(assert (=> b!1908044 (= res!851989 lt!729512)))

(declare-fun b!1908045 () Bool)

(declare-fun e!1218710 () Bool)

(assert (=> b!1908045 (= e!1218710 (not lt!729512))))

(declare-fun bm!117559 () Bool)

(declare-fun call!117564 () Bool)

(assert (=> bm!117559 (= call!117564 (isEmpty!13197 lt!729326))))

(declare-fun b!1908046 () Bool)

(declare-fun res!851983 () Bool)

(declare-fun e!1218705 () Bool)

(assert (=> b!1908046 (=> res!851983 e!1218705)))

(assert (=> b!1908046 (= res!851983 (not (isEmpty!13197 (tail!2952 lt!729326))))))

(declare-fun b!1908047 () Bool)

(declare-fun res!851986 () Bool)

(assert (=> b!1908047 (=> res!851986 e!1218706)))

(assert (=> b!1908047 (= res!851986 (not ((_ is ElementMatch!5251) (regex!3826 lt!729320))))))

(assert (=> b!1908047 (= e!1218710 e!1218706)))

(declare-fun b!1908048 () Bool)

(declare-fun e!1218709 () Bool)

(assert (=> b!1908048 (= e!1218709 (nullable!1595 (regex!3826 lt!729320)))))

(declare-fun d!583676 () Bool)

(declare-fun e!1218708 () Bool)

(assert (=> d!583676 e!1218708))

(declare-fun c!310877 () Bool)

(assert (=> d!583676 (= c!310877 ((_ is EmptyExpr!5251) (regex!3826 lt!729320)))))

(assert (=> d!583676 (= lt!729512 e!1218709)))

(declare-fun c!310876 () Bool)

(assert (=> d!583676 (= c!310876 (isEmpty!13197 lt!729326))))

(assert (=> d!583676 (validRegex!2121 (regex!3826 lt!729320))))

(assert (=> d!583676 (= (matchR!2537 (regex!3826 lt!729320) lt!729326) lt!729512)))

(declare-fun b!1908049 () Bool)

(assert (=> b!1908049 (= e!1218708 (= lt!729512 call!117564))))

(declare-fun b!1908050 () Bool)

(declare-fun res!851985 () Bool)

(assert (=> b!1908050 (=> (not res!851985) (not e!1218711))))

(assert (=> b!1908050 (= res!851985 (not call!117564))))

(declare-fun b!1908051 () Bool)

(assert (=> b!1908051 (= e!1218705 (not (= (head!4428 lt!729326) (c!310755 (regex!3826 lt!729320)))))))

(declare-fun b!1908052 () Bool)

(assert (=> b!1908052 (= e!1218709 (matchR!2537 (derivativeStep!1354 (regex!3826 lt!729320) (head!4428 lt!729326)) (tail!2952 lt!729326)))))

(declare-fun b!1908053 () Bool)

(declare-fun e!1218707 () Bool)

(assert (=> b!1908053 (= e!1218706 e!1218707)))

(declare-fun res!851987 () Bool)

(assert (=> b!1908053 (=> (not res!851987) (not e!1218707))))

(assert (=> b!1908053 (= res!851987 (not lt!729512))))

(declare-fun b!1908054 () Bool)

(assert (=> b!1908054 (= e!1218708 e!1218710)))

(declare-fun c!310875 () Bool)

(assert (=> b!1908054 (= c!310875 ((_ is EmptyLang!5251) (regex!3826 lt!729320)))))

(declare-fun b!1908055 () Bool)

(assert (=> b!1908055 (= e!1218707 e!1218705)))

(declare-fun res!851988 () Bool)

(assert (=> b!1908055 (=> res!851988 e!1218705)))

(assert (=> b!1908055 (= res!851988 call!117564)))

(declare-fun b!1908056 () Bool)

(declare-fun res!851984 () Bool)

(assert (=> b!1908056 (=> (not res!851984) (not e!1218711))))

(assert (=> b!1908056 (= res!851984 (isEmpty!13197 (tail!2952 lt!729326)))))

(declare-fun b!1908057 () Bool)

(assert (=> b!1908057 (= e!1218711 (= (head!4428 lt!729326) (c!310755 (regex!3826 lt!729320))))))

(assert (= (and d!583676 c!310876) b!1908048))

(assert (= (and d!583676 (not c!310876)) b!1908052))

(assert (= (and d!583676 c!310877) b!1908049))

(assert (= (and d!583676 (not c!310877)) b!1908054))

(assert (= (and b!1908054 c!310875) b!1908045))

(assert (= (and b!1908054 (not c!310875)) b!1908047))

(assert (= (and b!1908047 (not res!851986)) b!1908044))

(assert (= (and b!1908044 res!851989) b!1908050))

(assert (= (and b!1908050 res!851985) b!1908056))

(assert (= (and b!1908056 res!851984) b!1908057))

(assert (= (and b!1908044 (not res!851990)) b!1908053))

(assert (= (and b!1908053 res!851987) b!1908055))

(assert (= (and b!1908055 (not res!851988)) b!1908046))

(assert (= (and b!1908046 (not res!851983)) b!1908051))

(assert (= (or b!1908049 b!1908050 b!1908055) bm!117559))

(assert (=> d!583676 m!2340773))

(declare-fun m!2340861 () Bool)

(assert (=> d!583676 m!2340861))

(declare-fun m!2340863 () Bool)

(assert (=> b!1908048 m!2340863))

(assert (=> b!1908051 m!2340109))

(assert (=> b!1908056 m!2340777))

(assert (=> b!1908056 m!2340777))

(assert (=> b!1908056 m!2340779))

(assert (=> bm!117559 m!2340773))

(assert (=> b!1908052 m!2340109))

(assert (=> b!1908052 m!2340109))

(declare-fun m!2340865 () Bool)

(assert (=> b!1908052 m!2340865))

(assert (=> b!1908052 m!2340777))

(assert (=> b!1908052 m!2340865))

(assert (=> b!1908052 m!2340777))

(declare-fun m!2340867 () Bool)

(assert (=> b!1908052 m!2340867))

(assert (=> b!1908057 m!2340109))

(assert (=> b!1908046 m!2340777))

(assert (=> b!1908046 m!2340777))

(assert (=> b!1908046 m!2340779))

(assert (=> b!1907404 d!583676))

(declare-fun d!583678 () Bool)

(assert (=> d!583678 (= (get!6677 lt!729316) (v!26399 lt!729316))))

(assert (=> b!1907404 d!583678))

(declare-fun d!583680 () Bool)

(assert (=> d!583680 (= (isEmpty!13192 rules!3198) ((_ is Nil!21485) rules!3198))))

(assert (=> b!1907401 d!583680))

(declare-fun lt!729513 () List!21565)

(declare-fun e!1218712 () Bool)

(declare-fun b!1908061 () Bool)

(assert (=> b!1908061 (= e!1218712 (or (not (= lt!729325 Nil!21483)) (= lt!729513 (++!5773 lt!729332 lt!729326))))))

(declare-fun b!1908059 () Bool)

(declare-fun e!1218713 () List!21565)

(assert (=> b!1908059 (= e!1218713 (Cons!21483 (h!26884 (++!5773 lt!729332 lt!729326)) (++!5773 (t!177700 (++!5773 lt!729332 lt!729326)) lt!729325)))))

(declare-fun d!583682 () Bool)

(assert (=> d!583682 e!1218712))

(declare-fun res!851992 () Bool)

(assert (=> d!583682 (=> (not res!851992) (not e!1218712))))

(assert (=> d!583682 (= res!851992 (= (content!3147 lt!729513) ((_ map or) (content!3147 (++!5773 lt!729332 lt!729326)) (content!3147 lt!729325))))))

(assert (=> d!583682 (= lt!729513 e!1218713)))

(declare-fun c!310878 () Bool)

(assert (=> d!583682 (= c!310878 ((_ is Nil!21483) (++!5773 lt!729332 lt!729326)))))

(assert (=> d!583682 (= (++!5773 (++!5773 lt!729332 lt!729326) lt!729325) lt!729513)))

(declare-fun b!1908058 () Bool)

(assert (=> b!1908058 (= e!1218713 lt!729325)))

(declare-fun b!1908060 () Bool)

(declare-fun res!851991 () Bool)

(assert (=> b!1908060 (=> (not res!851991) (not e!1218712))))

(assert (=> b!1908060 (= res!851991 (= (size!16947 lt!729513) (+ (size!16947 (++!5773 lt!729332 lt!729326)) (size!16947 lt!729325))))))

(assert (= (and d!583682 c!310878) b!1908058))

(assert (= (and d!583682 (not c!310878)) b!1908059))

(assert (= (and d!583682 res!851992) b!1908060))

(assert (= (and b!1908060 res!851991) b!1908061))

(declare-fun m!2340869 () Bool)

(assert (=> b!1908059 m!2340869))

(declare-fun m!2340871 () Bool)

(assert (=> d!583682 m!2340871))

(assert (=> d!583682 m!2340101))

(declare-fun m!2340873 () Bool)

(assert (=> d!583682 m!2340873))

(assert (=> d!583682 m!2340529))

(declare-fun m!2340875 () Bool)

(assert (=> b!1908060 m!2340875))

(assert (=> b!1908060 m!2340101))

(declare-fun m!2340877 () Bool)

(assert (=> b!1908060 m!2340877))

(assert (=> b!1908060 m!2340533))

(assert (=> b!1907390 d!583682))

(declare-fun b!1908078 () Bool)

(declare-fun e!1218724 () List!21565)

(assert (=> b!1908078 (= e!1218724 Nil!21483)))

(declare-fun b!1908079 () Bool)

(declare-fun e!1218722 () List!21565)

(declare-fun call!117574 () List!21565)

(assert (=> b!1908079 (= e!1218722 call!117574)))

(declare-fun b!1908080 () Bool)

(assert (=> b!1908080 (= e!1218722 call!117574)))

(declare-fun b!1908081 () Bool)

(declare-fun c!310887 () Bool)

(assert (=> b!1908081 (= c!310887 ((_ is Star!5251) (regex!3826 (rule!6023 separatorToken!354))))))

(declare-fun e!1218725 () List!21565)

(declare-fun e!1218723 () List!21565)

(assert (=> b!1908081 (= e!1218725 e!1218723)))

(declare-fun b!1908082 () Bool)

(assert (=> b!1908082 (= e!1218723 e!1218722)))

(declare-fun c!310888 () Bool)

(assert (=> b!1908082 (= c!310888 ((_ is Union!5251) (regex!3826 (rule!6023 separatorToken!354))))))

(declare-fun b!1908083 () Bool)

(assert (=> b!1908083 (= e!1218724 e!1218725)))

(declare-fun c!310889 () Bool)

(assert (=> b!1908083 (= c!310889 ((_ is ElementMatch!5251) (regex!3826 (rule!6023 separatorToken!354))))))

(declare-fun bm!117569 () Bool)

(declare-fun call!117575 () List!21565)

(assert (=> bm!117569 (= call!117575 (usedCharacters!334 (ite c!310888 (regTwo!11015 (regex!3826 (rule!6023 separatorToken!354))) (regOne!11014 (regex!3826 (rule!6023 separatorToken!354))))))))

(declare-fun bm!117570 () Bool)

(declare-fun call!117573 () List!21565)

(declare-fun call!117576 () List!21565)

(assert (=> bm!117570 (= call!117573 call!117576)))

(declare-fun bm!117571 () Bool)

(assert (=> bm!117571 (= call!117576 (usedCharacters!334 (ite c!310887 (reg!5580 (regex!3826 (rule!6023 separatorToken!354))) (ite c!310888 (regOne!11015 (regex!3826 (rule!6023 separatorToken!354))) (regTwo!11014 (regex!3826 (rule!6023 separatorToken!354)))))))))

(declare-fun b!1908084 () Bool)

(assert (=> b!1908084 (= e!1218725 (Cons!21483 (c!310755 (regex!3826 (rule!6023 separatorToken!354))) Nil!21483))))

(declare-fun b!1908085 () Bool)

(assert (=> b!1908085 (= e!1218723 call!117576)))

(declare-fun bm!117568 () Bool)

(assert (=> bm!117568 (= call!117574 (++!5773 (ite c!310888 call!117573 call!117575) (ite c!310888 call!117575 call!117573)))))

(declare-fun d!583684 () Bool)

(declare-fun c!310890 () Bool)

(assert (=> d!583684 (= c!310890 (or ((_ is EmptyExpr!5251) (regex!3826 (rule!6023 separatorToken!354))) ((_ is EmptyLang!5251) (regex!3826 (rule!6023 separatorToken!354)))))))

(assert (=> d!583684 (= (usedCharacters!334 (regex!3826 (rule!6023 separatorToken!354))) e!1218724)))

(assert (= (and d!583684 c!310890) b!1908078))

(assert (= (and d!583684 (not c!310890)) b!1908083))

(assert (= (and b!1908083 c!310889) b!1908084))

(assert (= (and b!1908083 (not c!310889)) b!1908081))

(assert (= (and b!1908081 c!310887) b!1908085))

(assert (= (and b!1908081 (not c!310887)) b!1908082))

(assert (= (and b!1908082 c!310888) b!1908079))

(assert (= (and b!1908082 (not c!310888)) b!1908080))

(assert (= (or b!1908079 b!1908080) bm!117570))

(assert (= (or b!1908079 b!1908080) bm!117569))

(assert (= (or b!1908079 b!1908080) bm!117568))

(assert (= (or b!1908085 bm!117570) bm!117571))

(declare-fun m!2340879 () Bool)

(assert (=> bm!117569 m!2340879))

(declare-fun m!2340881 () Bool)

(assert (=> bm!117571 m!2340881))

(declare-fun m!2340883 () Bool)

(assert (=> bm!117568 m!2340883))

(assert (=> b!1907390 d!583684))

(declare-fun d!583686 () Bool)

(assert (=> d!583686 (= (head!4428 lt!729326) (h!26884 lt!729326))))

(assert (=> b!1907390 d!583686))

(declare-fun b!1908089 () Bool)

(declare-fun lt!729514 () List!21565)

(declare-fun e!1218726 () Bool)

(assert (=> b!1908089 (= e!1218726 (or (not (= lt!729325 Nil!21483)) (= lt!729514 lt!729326)))))

(declare-fun b!1908087 () Bool)

(declare-fun e!1218727 () List!21565)

(assert (=> b!1908087 (= e!1218727 (Cons!21483 (h!26884 lt!729326) (++!5773 (t!177700 lt!729326) lt!729325)))))

(declare-fun d!583688 () Bool)

(assert (=> d!583688 e!1218726))

(declare-fun res!851994 () Bool)

(assert (=> d!583688 (=> (not res!851994) (not e!1218726))))

(assert (=> d!583688 (= res!851994 (= (content!3147 lt!729514) ((_ map or) (content!3147 lt!729326) (content!3147 lt!729325))))))

(assert (=> d!583688 (= lt!729514 e!1218727)))

(declare-fun c!310891 () Bool)

(assert (=> d!583688 (= c!310891 ((_ is Nil!21483) lt!729326))))

(assert (=> d!583688 (= (++!5773 lt!729326 lt!729325) lt!729514)))

(declare-fun b!1908086 () Bool)

(assert (=> b!1908086 (= e!1218727 lt!729325)))

(declare-fun b!1908088 () Bool)

(declare-fun res!851993 () Bool)

(assert (=> b!1908088 (=> (not res!851993) (not e!1218726))))

(assert (=> b!1908088 (= res!851993 (= (size!16947 lt!729514) (+ (size!16947 lt!729326) (size!16947 lt!729325))))))

(assert (= (and d!583688 c!310891) b!1908086))

(assert (= (and d!583688 (not c!310891)) b!1908087))

(assert (= (and d!583688 res!851994) b!1908088))

(assert (= (and b!1908088 res!851993) b!1908089))

(declare-fun m!2340885 () Bool)

(assert (=> b!1908087 m!2340885))

(declare-fun m!2340887 () Bool)

(assert (=> d!583688 m!2340887))

(declare-fun m!2340889 () Bool)

(assert (=> d!583688 m!2340889))

(assert (=> d!583688 m!2340529))

(declare-fun m!2340891 () Bool)

(assert (=> b!1908088 m!2340891))

(declare-fun m!2340893 () Bool)

(assert (=> b!1908088 m!2340893))

(assert (=> b!1908088 m!2340533))

(assert (=> b!1907390 d!583688))

(declare-fun lt!729515 () List!21565)

(declare-fun e!1218728 () Bool)

(declare-fun b!1908093 () Bool)

(assert (=> b!1908093 (= e!1218728 (or (not (= (++!5773 lt!729326 lt!729325) Nil!21483)) (= lt!729515 lt!729332)))))

(declare-fun e!1218729 () List!21565)

(declare-fun b!1908091 () Bool)

(assert (=> b!1908091 (= e!1218729 (Cons!21483 (h!26884 lt!729332) (++!5773 (t!177700 lt!729332) (++!5773 lt!729326 lt!729325))))))

(declare-fun d!583690 () Bool)

(assert (=> d!583690 e!1218728))

(declare-fun res!851996 () Bool)

(assert (=> d!583690 (=> (not res!851996) (not e!1218728))))

(assert (=> d!583690 (= res!851996 (= (content!3147 lt!729515) ((_ map or) (content!3147 lt!729332) (content!3147 (++!5773 lt!729326 lt!729325)))))))

(assert (=> d!583690 (= lt!729515 e!1218729)))

(declare-fun c!310892 () Bool)

(assert (=> d!583690 (= c!310892 ((_ is Nil!21483) lt!729332))))

(assert (=> d!583690 (= (++!5773 lt!729332 (++!5773 lt!729326 lt!729325)) lt!729515)))

(declare-fun b!1908090 () Bool)

(assert (=> b!1908090 (= e!1218729 (++!5773 lt!729326 lt!729325))))

(declare-fun b!1908092 () Bool)

(declare-fun res!851995 () Bool)

(assert (=> b!1908092 (=> (not res!851995) (not e!1218728))))

(assert (=> b!1908092 (= res!851995 (= (size!16947 lt!729515) (+ (size!16947 lt!729332) (size!16947 (++!5773 lt!729326 lt!729325)))))))

(assert (= (and d!583690 c!310892) b!1908090))

(assert (= (and d!583690 (not c!310892)) b!1908091))

(assert (= (and d!583690 res!851996) b!1908092))

(assert (= (and b!1908092 res!851995) b!1908093))

(assert (=> b!1908091 m!2340097))

(declare-fun m!2340895 () Bool)

(assert (=> b!1908091 m!2340895))

(declare-fun m!2340897 () Bool)

(assert (=> d!583690 m!2340897))

(assert (=> d!583690 m!2340527))

(assert (=> d!583690 m!2340097))

(declare-fun m!2340899 () Bool)

(assert (=> d!583690 m!2340899))

(declare-fun m!2340901 () Bool)

(assert (=> b!1908092 m!2340901))

(assert (=> b!1908092 m!2340443))

(assert (=> b!1908092 m!2340097))

(declare-fun m!2340903 () Bool)

(assert (=> b!1908092 m!2340903))

(assert (=> b!1907390 d!583690))

(declare-fun e!1218730 () Bool)

(declare-fun b!1908097 () Bool)

(declare-fun lt!729516 () List!21565)

(assert (=> b!1908097 (= e!1218730 (or (not (= lt!729326 Nil!21483)) (= lt!729516 lt!729332)))))

(declare-fun b!1908095 () Bool)

(declare-fun e!1218731 () List!21565)

(assert (=> b!1908095 (= e!1218731 (Cons!21483 (h!26884 lt!729332) (++!5773 (t!177700 lt!729332) lt!729326)))))

(declare-fun d!583692 () Bool)

(assert (=> d!583692 e!1218730))

(declare-fun res!851998 () Bool)

(assert (=> d!583692 (=> (not res!851998) (not e!1218730))))

(assert (=> d!583692 (= res!851998 (= (content!3147 lt!729516) ((_ map or) (content!3147 lt!729332) (content!3147 lt!729326))))))

(assert (=> d!583692 (= lt!729516 e!1218731)))

(declare-fun c!310893 () Bool)

(assert (=> d!583692 (= c!310893 ((_ is Nil!21483) lt!729332))))

(assert (=> d!583692 (= (++!5773 lt!729332 lt!729326) lt!729516)))

(declare-fun b!1908094 () Bool)

(assert (=> b!1908094 (= e!1218731 lt!729326)))

(declare-fun b!1908096 () Bool)

(declare-fun res!851997 () Bool)

(assert (=> b!1908096 (=> (not res!851997) (not e!1218730))))

(assert (=> b!1908096 (= res!851997 (= (size!16947 lt!729516) (+ (size!16947 lt!729332) (size!16947 lt!729326))))))

(assert (= (and d!583692 c!310893) b!1908094))

(assert (= (and d!583692 (not c!310893)) b!1908095))

(assert (= (and d!583692 res!851998) b!1908096))

(assert (= (and b!1908096 res!851997) b!1908097))

(declare-fun m!2340905 () Bool)

(assert (=> b!1908095 m!2340905))

(declare-fun m!2340907 () Bool)

(assert (=> d!583692 m!2340907))

(assert (=> d!583692 m!2340527))

(assert (=> d!583692 m!2340889))

(declare-fun m!2340909 () Bool)

(assert (=> b!1908096 m!2340909))

(assert (=> b!1908096 m!2340443))

(assert (=> b!1908096 m!2340893))

(assert (=> b!1907390 d!583692))

(declare-fun d!583694 () Bool)

(assert (=> d!583694 (= (++!5773 (++!5773 lt!729332 lt!729326) lt!729325) (++!5773 lt!729332 (++!5773 lt!729326 lt!729325)))))

(declare-fun lt!729519 () Unit!35820)

(declare-fun choose!11882 (List!21565 List!21565 List!21565) Unit!35820)

(assert (=> d!583694 (= lt!729519 (choose!11882 lt!729332 lt!729326 lt!729325))))

(assert (=> d!583694 (= (lemmaConcatAssociativity!1141 lt!729332 lt!729326 lt!729325) lt!729519)))

(declare-fun bs!413991 () Bool)

(assert (= bs!413991 d!583694))

(assert (=> bs!413991 m!2340101))

(assert (=> bs!413991 m!2340103))

(assert (=> bs!413991 m!2340101))

(assert (=> bs!413991 m!2340097))

(assert (=> bs!413991 m!2340097))

(assert (=> bs!413991 m!2340099))

(declare-fun m!2340911 () Bool)

(assert (=> bs!413991 m!2340911))

(assert (=> b!1907390 d!583694))

(declare-fun d!583696 () Bool)

(declare-fun lt!729522 () Bool)

(assert (=> d!583696 (= lt!729522 (select (content!3147 (usedCharacters!334 (regex!3826 (rule!6023 separatorToken!354)))) lt!729334))))

(declare-fun e!1218737 () Bool)

(assert (=> d!583696 (= lt!729522 e!1218737)))

(declare-fun res!852003 () Bool)

(assert (=> d!583696 (=> (not res!852003) (not e!1218737))))

(assert (=> d!583696 (= res!852003 ((_ is Cons!21483) (usedCharacters!334 (regex!3826 (rule!6023 separatorToken!354)))))))

(assert (=> d!583696 (= (contains!3863 (usedCharacters!334 (regex!3826 (rule!6023 separatorToken!354))) lt!729334) lt!729522)))

(declare-fun b!1908102 () Bool)

(declare-fun e!1218736 () Bool)

(assert (=> b!1908102 (= e!1218737 e!1218736)))

(declare-fun res!852004 () Bool)

(assert (=> b!1908102 (=> res!852004 e!1218736)))

(assert (=> b!1908102 (= res!852004 (= (h!26884 (usedCharacters!334 (regex!3826 (rule!6023 separatorToken!354)))) lt!729334))))

(declare-fun b!1908103 () Bool)

(assert (=> b!1908103 (= e!1218736 (contains!3863 (t!177700 (usedCharacters!334 (regex!3826 (rule!6023 separatorToken!354)))) lt!729334))))

(assert (= (and d!583696 res!852003) b!1908102))

(assert (= (and b!1908102 (not res!852004)) b!1908103))

(assert (=> d!583696 m!2340105))

(declare-fun m!2340913 () Bool)

(assert (=> d!583696 m!2340913))

(declare-fun m!2340915 () Bool)

(assert (=> d!583696 m!2340915))

(declare-fun m!2340917 () Bool)

(assert (=> b!1908103 m!2340917))

(assert (=> b!1907390 d!583696))

(declare-fun b!1908116 () Bool)

(declare-fun e!1218740 () Bool)

(declare-fun tp!544638 () Bool)

(assert (=> b!1908116 (= e!1218740 tp!544638)))

(assert (=> b!1907388 (= tp!544556 e!1218740)))

(declare-fun b!1908117 () Bool)

(declare-fun tp!544639 () Bool)

(declare-fun tp!544637 () Bool)

(assert (=> b!1908117 (= e!1218740 (and tp!544639 tp!544637))))

(declare-fun b!1908115 () Bool)

(declare-fun tp!544640 () Bool)

(declare-fun tp!544641 () Bool)

(assert (=> b!1908115 (= e!1218740 (and tp!544640 tp!544641))))

(declare-fun b!1908114 () Bool)

(declare-fun tp_is_empty!9097 () Bool)

(assert (=> b!1908114 (= e!1218740 tp_is_empty!9097)))

(assert (= (and b!1907388 ((_ is ElementMatch!5251) (regex!3826 (h!26886 rules!3198)))) b!1908114))

(assert (= (and b!1907388 ((_ is Concat!9214) (regex!3826 (h!26886 rules!3198)))) b!1908115))

(assert (= (and b!1907388 ((_ is Star!5251) (regex!3826 (h!26886 rules!3198)))) b!1908116))

(assert (= (and b!1907388 ((_ is Union!5251) (regex!3826 (h!26886 rules!3198)))) b!1908117))

(declare-fun b!1908120 () Bool)

(declare-fun e!1218741 () Bool)

(declare-fun tp!544643 () Bool)

(assert (=> b!1908120 (= e!1218741 tp!544643)))

(assert (=> b!1907394 (= tp!544554 e!1218741)))

(declare-fun b!1908121 () Bool)

(declare-fun tp!544644 () Bool)

(declare-fun tp!544642 () Bool)

(assert (=> b!1908121 (= e!1218741 (and tp!544644 tp!544642))))

(declare-fun b!1908119 () Bool)

(declare-fun tp!544645 () Bool)

(declare-fun tp!544646 () Bool)

(assert (=> b!1908119 (= e!1218741 (and tp!544645 tp!544646))))

(declare-fun b!1908118 () Bool)

(assert (=> b!1908118 (= e!1218741 tp_is_empty!9097)))

(assert (= (and b!1907394 ((_ is ElementMatch!5251) (regex!3826 (rule!6023 (h!26885 tokens!598))))) b!1908118))

(assert (= (and b!1907394 ((_ is Concat!9214) (regex!3826 (rule!6023 (h!26885 tokens!598))))) b!1908119))

(assert (= (and b!1907394 ((_ is Star!5251) (regex!3826 (rule!6023 (h!26885 tokens!598))))) b!1908120))

(assert (= (and b!1907394 ((_ is Union!5251) (regex!3826 (rule!6023 (h!26885 tokens!598))))) b!1908121))

(declare-fun b!1908135 () Bool)

(declare-fun b_free!53749 () Bool)

(declare-fun b_next!54453 () Bool)

(assert (=> b!1908135 (= b_free!53749 (not b_next!54453))))

(declare-fun t!177795 () Bool)

(declare-fun tb!116745 () Bool)

(assert (=> (and b!1908135 (= (toValue!5451 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!177795) tb!116745))

(declare-fun result!141096 () Bool)

(assert (= result!141096 result!141032))

(assert (=> d!583584 t!177795))

(declare-fun t!177797 () Bool)

(declare-fun tb!116747 () Bool)

(assert (=> (and b!1908135 (= (toValue!5451 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!177797) tb!116747))

(declare-fun result!141098 () Bool)

(assert (= result!141098 result!141040))

(assert (=> d!583584 t!177797))

(assert (=> d!583594 t!177795))

(declare-fun tp!544660 () Bool)

(declare-fun b_and!148415 () Bool)

(assert (=> b!1908135 (= tp!544660 (and (=> t!177795 result!141096) (=> t!177797 result!141098) b_and!148415))))

(declare-fun b_free!53751 () Bool)

(declare-fun b_next!54455 () Bool)

(assert (=> b!1908135 (= b_free!53751 (not b_next!54455))))

(declare-fun t!177799 () Bool)

(declare-fun tb!116749 () Bool)

(assert (=> (and b!1908135 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!177799) tb!116749))

(declare-fun result!141100 () Bool)

(assert (= result!141100 result!141060))

(assert (=> b!1907983 t!177799))

(assert (=> d!583630 t!177799))

(declare-fun t!177801 () Bool)

(declare-fun tb!116751 () Bool)

(assert (=> (and b!1908135 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!177801) tb!116751))

(declare-fun result!141102 () Bool)

(assert (= result!141102 result!141046))

(assert (=> d!583594 t!177801))

(declare-fun t!177803 () Bool)

(declare-fun tb!116753 () Bool)

(assert (=> (and b!1908135 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354)))) t!177803) tb!116753))

(declare-fun result!141104 () Bool)

(assert (= result!141104 result!140996))

(assert (=> d!583590 t!177803))

(assert (=> b!1907433 t!177803))

(declare-fun b_and!148417 () Bool)

(declare-fun tp!544659 () Bool)

(assert (=> b!1908135 (= tp!544659 (and (=> t!177803 result!141104) (=> t!177799 result!141100) (=> t!177801 result!141102) b_and!148417))))

(declare-fun e!1218759 () Bool)

(declare-fun b!1908132 () Bool)

(declare-fun tp!544658 () Bool)

(declare-fun e!1218755 () Bool)

(assert (=> b!1908132 (= e!1218759 (and (inv!28588 (h!26885 (t!177701 tokens!598))) e!1218755 tp!544658))))

(assert (=> b!1907395 (= tp!544560 e!1218759)))

(declare-fun e!1218756 () Bool)

(assert (=> b!1908135 (= e!1218756 (and tp!544660 tp!544659))))

(declare-fun tp!544657 () Bool)

(declare-fun e!1218754 () Bool)

(declare-fun b!1908134 () Bool)

(assert (=> b!1908134 (= e!1218754 (and tp!544657 (inv!28584 (tag!4258 (rule!6023 (h!26885 (t!177701 tokens!598))))) (inv!28587 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) e!1218756))))

(declare-fun b!1908133 () Bool)

(declare-fun tp!544661 () Bool)

(assert (=> b!1908133 (= e!1218755 (and (inv!21 (value!120632 (h!26885 (t!177701 tokens!598)))) e!1218754 tp!544661))))

(assert (= b!1908134 b!1908135))

(assert (= b!1908133 b!1908134))

(assert (= b!1908132 b!1908133))

(assert (= (and b!1907395 ((_ is Cons!21484) (t!177701 tokens!598))) b!1908132))

(declare-fun m!2340919 () Bool)

(assert (=> b!1908132 m!2340919))

(declare-fun m!2340921 () Bool)

(assert (=> b!1908134 m!2340921))

(declare-fun m!2340923 () Bool)

(assert (=> b!1908134 m!2340923))

(declare-fun m!2340925 () Bool)

(assert (=> b!1908133 m!2340925))

(declare-fun b!1908146 () Bool)

(declare-fun b_free!53753 () Bool)

(declare-fun b_next!54457 () Bool)

(assert (=> b!1908146 (= b_free!53753 (not b_next!54457))))

(declare-fun tb!116755 () Bool)

(declare-fun t!177805 () Bool)

(assert (=> (and b!1908146 (= (toValue!5451 (transformation!3826 (h!26886 (t!177702 rules!3198)))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!177805) tb!116755))

(declare-fun result!141108 () Bool)

(assert (= result!141108 result!141032))

(assert (=> d!583584 t!177805))

(declare-fun t!177807 () Bool)

(declare-fun tb!116757 () Bool)

(assert (=> (and b!1908146 (= (toValue!5451 (transformation!3826 (h!26886 (t!177702 rules!3198)))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!177807) tb!116757))

(declare-fun result!141110 () Bool)

(assert (= result!141110 result!141040))

(assert (=> d!583584 t!177807))

(assert (=> d!583594 t!177805))

(declare-fun tp!544673 () Bool)

(declare-fun b_and!148419 () Bool)

(assert (=> b!1908146 (= tp!544673 (and (=> t!177805 result!141108) (=> t!177807 result!141110) b_and!148419))))

(declare-fun b_free!53755 () Bool)

(declare-fun b_next!54459 () Bool)

(assert (=> b!1908146 (= b_free!53755 (not b_next!54459))))

(declare-fun tb!116759 () Bool)

(declare-fun t!177809 () Bool)

(assert (=> (and b!1908146 (= (toChars!5310 (transformation!3826 (h!26886 (t!177702 rules!3198)))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!177809) tb!116759))

(declare-fun result!141112 () Bool)

(assert (= result!141112 result!141060))

(assert (=> b!1907983 t!177809))

(assert (=> d!583630 t!177809))

(declare-fun t!177811 () Bool)

(declare-fun tb!116761 () Bool)

(assert (=> (and b!1908146 (= (toChars!5310 (transformation!3826 (h!26886 (t!177702 rules!3198)))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!177811) tb!116761))

(declare-fun result!141114 () Bool)

(assert (= result!141114 result!141046))

(assert (=> d!583594 t!177811))

(declare-fun t!177813 () Bool)

(declare-fun tb!116763 () Bool)

(assert (=> (and b!1908146 (= (toChars!5310 (transformation!3826 (h!26886 (t!177702 rules!3198)))) (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354)))) t!177813) tb!116763))

(declare-fun result!141116 () Bool)

(assert (= result!141116 result!140996))

(assert (=> d!583590 t!177813))

(assert (=> b!1907433 t!177813))

(declare-fun tp!544670 () Bool)

(declare-fun b_and!148421 () Bool)

(assert (=> b!1908146 (= tp!544670 (and (=> t!177811 result!141114) (=> t!177813 result!141116) (=> t!177809 result!141112) b_and!148421))))

(declare-fun e!1218770 () Bool)

(assert (=> b!1908146 (= e!1218770 (and tp!544673 tp!544670))))

(declare-fun tp!544672 () Bool)

(declare-fun b!1908145 () Bool)

(declare-fun e!1218769 () Bool)

(assert (=> b!1908145 (= e!1218769 (and tp!544672 (inv!28584 (tag!4258 (h!26886 (t!177702 rules!3198)))) (inv!28587 (transformation!3826 (h!26886 (t!177702 rules!3198)))) e!1218770))))

(declare-fun b!1908144 () Bool)

(declare-fun e!1218771 () Bool)

(declare-fun tp!544671 () Bool)

(assert (=> b!1908144 (= e!1218771 (and e!1218769 tp!544671))))

(assert (=> b!1907406 (= tp!544555 e!1218771)))

(assert (= b!1908145 b!1908146))

(assert (= b!1908144 b!1908145))

(assert (= (and b!1907406 ((_ is Cons!21485) (t!177702 rules!3198))) b!1908144))

(declare-fun m!2340927 () Bool)

(assert (=> b!1908145 m!2340927))

(declare-fun m!2340929 () Bool)

(assert (=> b!1908145 m!2340929))

(declare-fun b!1908149 () Bool)

(declare-fun e!1218772 () Bool)

(declare-fun tp!544675 () Bool)

(assert (=> b!1908149 (= e!1218772 tp!544675)))

(assert (=> b!1907402 (= tp!544548 e!1218772)))

(declare-fun b!1908150 () Bool)

(declare-fun tp!544676 () Bool)

(declare-fun tp!544674 () Bool)

(assert (=> b!1908150 (= e!1218772 (and tp!544676 tp!544674))))

(declare-fun b!1908148 () Bool)

(declare-fun tp!544677 () Bool)

(declare-fun tp!544678 () Bool)

(assert (=> b!1908148 (= e!1218772 (and tp!544677 tp!544678))))

(declare-fun b!1908147 () Bool)

(assert (=> b!1908147 (= e!1218772 tp_is_empty!9097)))

(assert (= (and b!1907402 ((_ is ElementMatch!5251) (regex!3826 (rule!6023 separatorToken!354)))) b!1908147))

(assert (= (and b!1907402 ((_ is Concat!9214) (regex!3826 (rule!6023 separatorToken!354)))) b!1908148))

(assert (= (and b!1907402 ((_ is Star!5251) (regex!3826 (rule!6023 separatorToken!354)))) b!1908149))

(assert (= (and b!1907402 ((_ is Union!5251) (regex!3826 (rule!6023 separatorToken!354)))) b!1908150))

(declare-fun b!1908155 () Bool)

(declare-fun e!1218775 () Bool)

(declare-fun tp!544681 () Bool)

(assert (=> b!1908155 (= e!1218775 (and tp_is_empty!9097 tp!544681))))

(assert (=> b!1907393 (= tp!544550 e!1218775)))

(assert (= (and b!1907393 ((_ is Cons!21483) (originalCharacters!4633 (h!26885 tokens!598)))) b!1908155))

(declare-fun b!1908156 () Bool)

(declare-fun e!1218776 () Bool)

(declare-fun tp!544682 () Bool)

(assert (=> b!1908156 (= e!1218776 (and tp_is_empty!9097 tp!544682))))

(assert (=> b!1907383 (= tp!544552 e!1218776)))

(assert (= (and b!1907383 ((_ is Cons!21483) (originalCharacters!4633 separatorToken!354))) b!1908156))

(declare-fun b_lambda!63099 () Bool)

(assert (= b_lambda!63075 (or (and b!1907387 b_free!53735) (and b!1908146 b_free!53755 (= (toChars!5310 (transformation!3826 (h!26886 (t!177702 rules!3198)))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) (and b!1908135 b_free!53751 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) (and b!1907389 b_free!53731 (= (toChars!5310 (transformation!3826 (h!26886 rules!3198))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) (and b!1907400 b_free!53739 (= (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) b_lambda!63099)))

(declare-fun b_lambda!63101 () Bool)

(assert (= b_lambda!63097 (or b!1907392 b_lambda!63101)))

(declare-fun bs!413992 () Bool)

(declare-fun d!583698 () Bool)

(assert (= bs!413992 (and d!583698 b!1907392)))

(assert (=> bs!413992 (= (dynLambda!10485 lambda!74515 (h!26885 tokens!598)) (not (isSeparator!3826 (rule!6023 (h!26885 tokens!598)))))))

(assert (=> b!1908022 d!583698))

(declare-fun b_lambda!63103 () Bool)

(assert (= b_lambda!63069 (or (and b!1907389 b_free!53729 (= (toValue!5451 (transformation!3826 (h!26886 rules!3198))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) (and b!1907400 b_free!53737 (= (toValue!5451 (transformation!3826 (rule!6023 separatorToken!354))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) (and b!1908146 b_free!53753 (= (toValue!5451 (transformation!3826 (h!26886 (t!177702 rules!3198)))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) (and b!1907387 b_free!53733) (and b!1908135 b_free!53749 (= (toValue!5451 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) b_lambda!63103)))

(declare-fun b_lambda!63105 () Bool)

(assert (= b_lambda!63045 (or (and b!1907387 b_free!53735 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))))) (and b!1907389 b_free!53731 (= (toChars!5310 (transformation!3826 (h!26886 rules!3198))) (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))))) (and b!1907400 b_free!53739) (and b!1908135 b_free!53751 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))))) (and b!1908146 b_free!53755 (= (toChars!5310 (transformation!3826 (h!26886 (t!177702 rules!3198)))) (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))))) b_lambda!63105)))

(declare-fun b_lambda!63107 () Bool)

(assert (= b_lambda!63059 (or (and b!1907389 b_free!53729 (= (toValue!5451 (transformation!3826 (h!26886 rules!3198))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) (and b!1907400 b_free!53737 (= (toValue!5451 (transformation!3826 (rule!6023 separatorToken!354))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) (and b!1908146 b_free!53753 (= (toValue!5451 (transformation!3826 (h!26886 (t!177702 rules!3198)))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) (and b!1907387 b_free!53733) (and b!1908135 b_free!53749 (= (toValue!5451 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) b_lambda!63107)))

(declare-fun b_lambda!63109 () Bool)

(assert (= b_lambda!63057 (or (and b!1907389 b_free!53729 (= (toValue!5451 (transformation!3826 (h!26886 rules!3198))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) (and b!1907400 b_free!53737 (= (toValue!5451 (transformation!3826 (rule!6023 separatorToken!354))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) (and b!1908146 b_free!53753 (= (toValue!5451 (transformation!3826 (h!26886 (t!177702 rules!3198)))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) (and b!1907387 b_free!53733) (and b!1908135 b_free!53749 (= (toValue!5451 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) b_lambda!63109)))

(declare-fun b_lambda!63111 () Bool)

(assert (= b_lambda!63095 (or (and b!1907387 b_free!53735) (and b!1908146 b_free!53755 (= (toChars!5310 (transformation!3826 (h!26886 (t!177702 rules!3198)))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) (and b!1908135 b_free!53751 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) (and b!1907389 b_free!53731 (= (toChars!5310 (transformation!3826 (h!26886 rules!3198))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) (and b!1907400 b_free!53739 (= (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) b_lambda!63111)))

(declare-fun b_lambda!63113 () Bool)

(assert (= b_lambda!63063 (or (and b!1907387 b_free!53735 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))))) (and b!1907389 b_free!53731 (= (toChars!5310 (transformation!3826 (h!26886 rules!3198))) (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))))) (and b!1907400 b_free!53739) (and b!1908135 b_free!53751 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))))) (and b!1908146 b_free!53755 (= (toChars!5310 (transformation!3826 (h!26886 (t!177702 rules!3198)))) (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))))) b_lambda!63113)))

(declare-fun b_lambda!63115 () Bool)

(assert (= b_lambda!63067 (or (and b!1907387 b_free!53735) (and b!1908146 b_free!53755 (= (toChars!5310 (transformation!3826 (h!26886 (t!177702 rules!3198)))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) (and b!1908135 b_free!53751 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) (and b!1907389 b_free!53731 (= (toChars!5310 (transformation!3826 (h!26886 rules!3198))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) (and b!1907400 b_free!53739 (= (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) b_lambda!63115)))

(check-sat (not b_next!54453) (not d!583594) (not d!583632) (not d!583634) (not b!1908103) (not b!1908121) (not b!1907860) (not b!1907885) (not d!583562) (not b!1907857) (not b!1908087) (not bm!117531) (not b!1907839) (not b!1908036) (not b!1908048) (not b!1908095) (not b!1907682) (not d!583642) (not b!1907831) (not b!1908001) (not d!583580) (not d!583694) (not b!1907983) tp_is_empty!9097 (not bm!117533) (not b!1907993) (not d!583616) (not b!1908088) (not b!1907861) (not bm!117558) (not d!583582) (not b!1908091) (not b!1908134) (not b!1907987) (not d!583510) (not tb!116707) b_and!148377 (not b!1907982) (not b_next!54441) (not b_next!54459) (not b!1908115) (not d!583584) (not b!1907969) (not b!1908042) (not b_lambda!63113) (not b!1908092) (not bm!117571) (not b_lambda!63099) (not b_lambda!63103) (not b!1907680) (not b!1907989) (not d!583560) (not tb!116695) (not b!1908060) (not b!1908149) (not b!1908059) (not b_lambda!63109) (not b!1907833) (not b!1908119) (not b!1907992) (not b_lambda!63101) (not b!1907613) (not d!583666) (not d!583676) (not b!1907973) (not b!1907998) (not b!1908156) (not b!1908117) (not b!1907433) (not d!583508) (not b!1907687) (not b!1907865) (not b!1907604) (not b!1908051) (not b!1907984) (not b!1907981) (not b_next!54457) (not b!1907679) (not b!1907972) (not d!583660) (not b!1908011) (not b_next!54439) (not b!1907898) (not b!1908148) (not b!1907997) (not b_lambda!63107) b_and!148379 b_and!148417 (not b!1907603) (not d!583636) (not b!1907434) (not b_next!54437) (not bm!117559) (not d!583612) (not b!1908096) (not d!583690) (not d!583640) (not b!1908023) (not b!1907836) (not b!1907967) (not b!1907734) (not b!1907733) (not b!1908116) (not d!583688) (not b!1907738) (not b!1908008) (not b!1908056) (not b!1908009) (not b!1907731) (not b!1907842) (not b!1908145) (not b!1908016) (not d!583656) (not d!583590) (not bm!117520) (not b!1907683) (not b!1907858) (not bm!117553) b_and!148413 (not tb!116701) (not tb!116719) b_and!148415 (not b!1908017) (not b!1907864) (not b!1908144) (not d!583556) (not b!1907766) (not b_next!54443) (not b!1908034) (not b!1908155) (not b_next!54433) (not b!1907732) (not d!583652) (not bm!117569) (not d!583696) (not b!1907796) (not b!1907899) (not b!1908052) (not b_lambda!63105) (not d!583692) (not b!1907767) (not b!1907629) (not d!583682) b_and!148409 (not d!583662) (not b_lambda!63111) (not d!583654) (not b!1907681) (not b_next!54435) (not b!1908041) (not b_lambda!63115) (not b!1907685) (not b!1907978) (not b!1907977) (not b!1908120) b_and!148411 b_and!148421 (not d!583630) (not bm!117557) (not b!1908057) (not d!583618) (not b!1907439) (not b!1907628) (not b!1908133) (not b!1908046) b_and!148419 (not b!1908037) (not b_next!54455) (not b!1907686) (not tb!116665) (not b!1908039) (not d!583600) (not bm!117568) (not b!1908132) b_and!148381 (not b!1907837) (not b!1907859) (not b!1908150) (not d!583648) (not bm!117534) (not d!583554) (not b!1907863) (not b!1908010))
(check-sat (not b_next!54453) b_and!148377 (not b_next!54457) (not b_next!54439) b_and!148379 b_and!148413 (not b_next!54433) b_and!148409 (not b_next!54435) b_and!148381 (not b_next!54441) (not b_next!54459) b_and!148417 (not b_next!54437) b_and!148415 (not b_next!54443) b_and!148411 b_and!148421 b_and!148419 (not b_next!54455))
(get-model)

(declare-fun d!583870 () Bool)

(declare-fun c!310985 () Bool)

(assert (=> d!583870 (= c!310985 ((_ is Node!7145) (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (value!120632 separatorToken!354)))))))

(declare-fun e!1218974 () Bool)

(assert (=> d!583870 (= (inv!28591 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (value!120632 separatorToken!354)))) e!1218974)))

(declare-fun b!1908506 () Bool)

(declare-fun inv!28595 (Conc!7145) Bool)

(assert (=> b!1908506 (= e!1218974 (inv!28595 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (value!120632 separatorToken!354)))))))

(declare-fun b!1908507 () Bool)

(declare-fun e!1218975 () Bool)

(assert (=> b!1908507 (= e!1218974 e!1218975)))

(declare-fun res!852161 () Bool)

(assert (=> b!1908507 (= res!852161 (not ((_ is Leaf!10521) (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (value!120632 separatorToken!354))))))))

(assert (=> b!1908507 (=> res!852161 e!1218975)))

(declare-fun b!1908508 () Bool)

(declare-fun inv!28596 (Conc!7145) Bool)

(assert (=> b!1908508 (= e!1218975 (inv!28596 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (value!120632 separatorToken!354)))))))

(assert (= (and d!583870 c!310985) b!1908506))

(assert (= (and d!583870 (not c!310985)) b!1908507))

(assert (= (and b!1908507 (not res!852161)) b!1908508))

(declare-fun m!2341505 () Bool)

(assert (=> b!1908506 m!2341505))

(declare-fun m!2341507 () Bool)

(assert (=> b!1908508 m!2341507))

(assert (=> b!1907439 d!583870))

(assert (=> d!583640 d!583642))

(declare-fun d!583880 () Bool)

(assert (=> d!583880 (not (matchR!2537 (regex!3826 (rule!6023 separatorToken!354)) lt!729326))))

(assert (=> d!583880 true))

(declare-fun _$127!216 () Unit!35820)

(assert (=> d!583880 (= (choose!11881 (regex!3826 (rule!6023 separatorToken!354)) lt!729326 lt!729334) _$127!216)))

(declare-fun bs!414026 () Bool)

(assert (= bs!414026 d!583880))

(assert (=> bs!414026 m!2340171))

(assert (=> d!583640 d!583880))

(declare-fun b!1908558 () Bool)

(declare-fun e!1219014 () Bool)

(declare-fun call!117626 () Bool)

(assert (=> b!1908558 (= e!1219014 call!117626)))

(declare-fun c!310999 () Bool)

(declare-fun c!311000 () Bool)

(declare-fun bm!117621 () Bool)

(declare-fun call!117628 () Bool)

(assert (=> bm!117621 (= call!117628 (validRegex!2121 (ite c!310999 (reg!5580 (regex!3826 (rule!6023 separatorToken!354))) (ite c!311000 (regTwo!11015 (regex!3826 (rule!6023 separatorToken!354))) (regTwo!11014 (regex!3826 (rule!6023 separatorToken!354)))))))))

(declare-fun d!583882 () Bool)

(declare-fun res!852187 () Bool)

(declare-fun e!1219013 () Bool)

(assert (=> d!583882 (=> res!852187 e!1219013)))

(assert (=> d!583882 (= res!852187 ((_ is ElementMatch!5251) (regex!3826 (rule!6023 separatorToken!354))))))

(assert (=> d!583882 (= (validRegex!2121 (regex!3826 (rule!6023 separatorToken!354))) e!1219013)))

(declare-fun b!1908559 () Bool)

(declare-fun res!852190 () Bool)

(declare-fun e!1219011 () Bool)

(assert (=> b!1908559 (=> res!852190 e!1219011)))

(assert (=> b!1908559 (= res!852190 (not ((_ is Concat!9214) (regex!3826 (rule!6023 separatorToken!354)))))))

(declare-fun e!1219016 () Bool)

(assert (=> b!1908559 (= e!1219016 e!1219011)))

(declare-fun b!1908560 () Bool)

(declare-fun e!1219012 () Bool)

(assert (=> b!1908560 (= e!1219012 call!117628)))

(declare-fun b!1908561 () Bool)

(declare-fun e!1219010 () Bool)

(assert (=> b!1908561 (= e!1219010 e!1219016)))

(assert (=> b!1908561 (= c!311000 ((_ is Union!5251) (regex!3826 (rule!6023 separatorToken!354))))))

(declare-fun bm!117622 () Bool)

(declare-fun call!117627 () Bool)

(assert (=> bm!117622 (= call!117627 (validRegex!2121 (ite c!311000 (regOne!11015 (regex!3826 (rule!6023 separatorToken!354))) (regOne!11014 (regex!3826 (rule!6023 separatorToken!354))))))))

(declare-fun b!1908562 () Bool)

(declare-fun e!1219015 () Bool)

(assert (=> b!1908562 (= e!1219011 e!1219015)))

(declare-fun res!852189 () Bool)

(assert (=> b!1908562 (=> (not res!852189) (not e!1219015))))

(assert (=> b!1908562 (= res!852189 call!117627)))

(declare-fun b!1908563 () Bool)

(assert (=> b!1908563 (= e!1219010 e!1219012)))

(declare-fun res!852188 () Bool)

(assert (=> b!1908563 (= res!852188 (not (nullable!1595 (reg!5580 (regex!3826 (rule!6023 separatorToken!354))))))))

(assert (=> b!1908563 (=> (not res!852188) (not e!1219012))))

(declare-fun b!1908564 () Bool)

(assert (=> b!1908564 (= e!1219013 e!1219010)))

(assert (=> b!1908564 (= c!310999 ((_ is Star!5251) (regex!3826 (rule!6023 separatorToken!354))))))

(declare-fun bm!117623 () Bool)

(assert (=> bm!117623 (= call!117626 call!117628)))

(declare-fun b!1908565 () Bool)

(assert (=> b!1908565 (= e!1219015 call!117626)))

(declare-fun b!1908566 () Bool)

(declare-fun res!852191 () Bool)

(assert (=> b!1908566 (=> (not res!852191) (not e!1219014))))

(assert (=> b!1908566 (= res!852191 call!117627)))

(assert (=> b!1908566 (= e!1219016 e!1219014)))

(assert (= (and d!583882 (not res!852187)) b!1908564))

(assert (= (and b!1908564 c!310999) b!1908563))

(assert (= (and b!1908564 (not c!310999)) b!1908561))

(assert (= (and b!1908563 res!852188) b!1908560))

(assert (= (and b!1908561 c!311000) b!1908566))

(assert (= (and b!1908561 (not c!311000)) b!1908559))

(assert (= (and b!1908566 res!852191) b!1908558))

(assert (= (and b!1908559 (not res!852190)) b!1908562))

(assert (= (and b!1908562 res!852189) b!1908565))

(assert (= (or b!1908566 b!1908562) bm!117622))

(assert (= (or b!1908558 b!1908565) bm!117623))

(assert (= (or b!1908560 bm!117623) bm!117621))

(declare-fun m!2341549 () Bool)

(assert (=> bm!117621 m!2341549))

(declare-fun m!2341551 () Bool)

(assert (=> bm!117622 m!2341551))

(declare-fun m!2341553 () Bool)

(assert (=> b!1908563 m!2341553))

(assert (=> d!583640 d!583882))

(declare-fun d!583912 () Bool)

(declare-fun c!311003 () Bool)

(assert (=> d!583912 (= c!311003 ((_ is Nil!21483) lt!729514))))

(declare-fun e!1219019 () (InoxSet C!10648))

(assert (=> d!583912 (= (content!3147 lt!729514) e!1219019)))

(declare-fun b!1908571 () Bool)

(assert (=> b!1908571 (= e!1219019 ((as const (Array C!10648 Bool)) false))))

(declare-fun b!1908572 () Bool)

(assert (=> b!1908572 (= e!1219019 ((_ map or) (store ((as const (Array C!10648 Bool)) false) (h!26884 lt!729514) true) (content!3147 (t!177700 lt!729514))))))

(assert (= (and d!583912 c!311003) b!1908571))

(assert (= (and d!583912 (not c!311003)) b!1908572))

(declare-fun m!2341555 () Bool)

(assert (=> b!1908572 m!2341555))

(declare-fun m!2341557 () Bool)

(assert (=> b!1908572 m!2341557))

(assert (=> d!583688 d!583912))

(declare-fun d!583914 () Bool)

(declare-fun c!311004 () Bool)

(assert (=> d!583914 (= c!311004 ((_ is Nil!21483) lt!729326))))

(declare-fun e!1219024 () (InoxSet C!10648))

(assert (=> d!583914 (= (content!3147 lt!729326) e!1219024)))

(declare-fun b!1908579 () Bool)

(assert (=> b!1908579 (= e!1219024 ((as const (Array C!10648 Bool)) false))))

(declare-fun b!1908580 () Bool)

(assert (=> b!1908580 (= e!1219024 ((_ map or) (store ((as const (Array C!10648 Bool)) false) (h!26884 lt!729326) true) (content!3147 (t!177700 lt!729326))))))

(assert (= (and d!583914 c!311004) b!1908579))

(assert (= (and d!583914 (not c!311004)) b!1908580))

(declare-fun m!2341559 () Bool)

(assert (=> b!1908580 m!2341559))

(declare-fun m!2341561 () Bool)

(assert (=> b!1908580 m!2341561))

(assert (=> d!583688 d!583914))

(declare-fun d!583916 () Bool)

(declare-fun c!311005 () Bool)

(assert (=> d!583916 (= c!311005 ((_ is Nil!21483) lt!729325))))

(declare-fun e!1219027 () (InoxSet C!10648))

(assert (=> d!583916 (= (content!3147 lt!729325) e!1219027)))

(declare-fun b!1908583 () Bool)

(assert (=> b!1908583 (= e!1219027 ((as const (Array C!10648 Bool)) false))))

(declare-fun b!1908584 () Bool)

(assert (=> b!1908584 (= e!1219027 ((_ map or) (store ((as const (Array C!10648 Bool)) false) (h!26884 lt!729325) true) (content!3147 (t!177700 lt!729325))))))

(assert (= (and d!583916 c!311005) b!1908583))

(assert (= (and d!583916 (not c!311005)) b!1908584))

(declare-fun m!2341563 () Bool)

(assert (=> b!1908584 m!2341563))

(declare-fun m!2341565 () Bool)

(assert (=> b!1908584 m!2341565))

(assert (=> d!583688 d!583916))

(declare-fun d!583918 () Bool)

(assert (=> d!583918 (= (list!8738 (charsOf!2382 (h!26885 (t!177701 tokens!598)))) (list!8741 (c!310756 (charsOf!2382 (h!26885 (t!177701 tokens!598))))))))

(declare-fun bs!414032 () Bool)

(assert (= bs!414032 d!583918))

(declare-fun m!2341567 () Bool)

(assert (=> bs!414032 m!2341567))

(assert (=> b!1907734 d!583918))

(declare-fun d!583920 () Bool)

(declare-fun lt!729627 () BalanceConc!14106)

(assert (=> d!583920 (= (list!8738 lt!729627) (originalCharacters!4633 (h!26885 (t!177701 tokens!598))))))

(assert (=> d!583920 (= lt!729627 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) (value!120632 (h!26885 (t!177701 tokens!598)))))))

(assert (=> d!583920 (= (charsOf!2382 (h!26885 (t!177701 tokens!598))) lt!729627)))

(declare-fun b_lambda!63133 () Bool)

(assert (=> (not b_lambda!63133) (not d!583920)))

(declare-fun t!177868 () Bool)

(declare-fun tb!116815 () Bool)

(assert (=> (and b!1907387 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598)))))) t!177868) tb!116815))

(declare-fun b!1908585 () Bool)

(declare-fun e!1219028 () Bool)

(declare-fun tp!544686 () Bool)

(assert (=> b!1908585 (= e!1219028 (and (inv!28591 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) (value!120632 (h!26885 (t!177701 tokens!598)))))) tp!544686))))

(declare-fun result!141170 () Bool)

(assert (=> tb!116815 (= result!141170 (and (inv!28592 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) (value!120632 (h!26885 (t!177701 tokens!598))))) e!1219028))))

(assert (= tb!116815 b!1908585))

(declare-fun m!2341569 () Bool)

(assert (=> b!1908585 m!2341569))

(declare-fun m!2341571 () Bool)

(assert (=> tb!116815 m!2341571))

(assert (=> d!583920 t!177868))

(declare-fun b_and!148473 () Bool)

(assert (= b_and!148411 (and (=> t!177868 result!141170) b_and!148473)))

(declare-fun t!177870 () Bool)

(declare-fun tb!116817 () Bool)

(assert (=> (and b!1908135 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598)))))) t!177870) tb!116817))

(declare-fun result!141172 () Bool)

(assert (= result!141172 result!141170))

(assert (=> d!583920 t!177870))

(declare-fun b_and!148475 () Bool)

(assert (= b_and!148417 (and (=> t!177870 result!141172) b_and!148475)))

(declare-fun t!177872 () Bool)

(declare-fun tb!116819 () Bool)

(assert (=> (and b!1908146 (= (toChars!5310 (transformation!3826 (h!26886 (t!177702 rules!3198)))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598)))))) t!177872) tb!116819))

(declare-fun result!141174 () Bool)

(assert (= result!141174 result!141170))

(assert (=> d!583920 t!177872))

(declare-fun b_and!148477 () Bool)

(assert (= b_and!148421 (and (=> t!177872 result!141174) b_and!148477)))

(declare-fun t!177874 () Bool)

(declare-fun tb!116821 () Bool)

(assert (=> (and b!1907400 (= (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598)))))) t!177874) tb!116821))

(declare-fun result!141176 () Bool)

(assert (= result!141176 result!141170))

(assert (=> d!583920 t!177874))

(declare-fun b_and!148479 () Bool)

(assert (= b_and!148413 (and (=> t!177874 result!141176) b_and!148479)))

(declare-fun tb!116823 () Bool)

(declare-fun t!177876 () Bool)

(assert (=> (and b!1907389 (= (toChars!5310 (transformation!3826 (h!26886 rules!3198))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598)))))) t!177876) tb!116823))

(declare-fun result!141178 () Bool)

(assert (= result!141178 result!141170))

(assert (=> d!583920 t!177876))

(declare-fun b_and!148481 () Bool)

(assert (= b_and!148409 (and (=> t!177876 result!141178) b_and!148481)))

(declare-fun m!2341573 () Bool)

(assert (=> d!583920 m!2341573))

(declare-fun m!2341575 () Bool)

(assert (=> d!583920 m!2341575))

(assert (=> b!1907734 d!583920))

(assert (=> b!1907972 d!583686))

(declare-fun bs!414034 () Bool)

(declare-fun d!583922 () Bool)

(assert (= bs!414034 (and d!583922 d!583594)))

(declare-fun lambda!74554 () Int)

(assert (=> bs!414034 (= (and (= (toChars!5310 (transformation!3826 (h!26886 rules!3198))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) (= (toValue!5451 (transformation!3826 (h!26886 rules!3198))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) (= lambda!74554 lambda!74536))))

(assert (=> d!583922 true))

(assert (=> d!583922 (< (dynLambda!10480 order!13591 (toChars!5310 (transformation!3826 (h!26886 rules!3198)))) (dynLambda!10484 order!13597 lambda!74554))))

(assert (=> d!583922 true))

(assert (=> d!583922 (< (dynLambda!10478 order!13587 (toValue!5451 (transformation!3826 (h!26886 rules!3198)))) (dynLambda!10484 order!13597 lambda!74554))))

(declare-fun Forall!996 (Int) Bool)

(assert (=> d!583922 (= (semiInverseModEq!1545 (toChars!5310 (transformation!3826 (h!26886 rules!3198))) (toValue!5451 (transformation!3826 (h!26886 rules!3198)))) (Forall!996 lambda!74554))))

(declare-fun bs!414035 () Bool)

(assert (= bs!414035 d!583922))

(declare-fun m!2341585 () Bool)

(assert (=> bs!414035 m!2341585))

(assert (=> d!583648 d!583922))

(declare-fun b!1908598 () Bool)

(declare-fun e!1219038 () List!21565)

(assert (=> b!1908598 (= e!1219038 Nil!21483)))

(declare-fun b!1908599 () Bool)

(declare-fun e!1219036 () List!21565)

(declare-fun call!117630 () List!21565)

(assert (=> b!1908599 (= e!1219036 call!117630)))

(declare-fun b!1908600 () Bool)

(assert (=> b!1908600 (= e!1219036 call!117630)))

(declare-fun b!1908601 () Bool)

(declare-fun c!311006 () Bool)

(assert (=> b!1908601 (= c!311006 ((_ is Star!5251) (ite c!310888 (regTwo!11015 (regex!3826 (rule!6023 separatorToken!354))) (regOne!11014 (regex!3826 (rule!6023 separatorToken!354))))))))

(declare-fun e!1219039 () List!21565)

(declare-fun e!1219037 () List!21565)

(assert (=> b!1908601 (= e!1219039 e!1219037)))

(declare-fun b!1908602 () Bool)

(assert (=> b!1908602 (= e!1219037 e!1219036)))

(declare-fun c!311007 () Bool)

(assert (=> b!1908602 (= c!311007 ((_ is Union!5251) (ite c!310888 (regTwo!11015 (regex!3826 (rule!6023 separatorToken!354))) (regOne!11014 (regex!3826 (rule!6023 separatorToken!354))))))))

(declare-fun b!1908603 () Bool)

(assert (=> b!1908603 (= e!1219038 e!1219039)))

(declare-fun c!311008 () Bool)

(assert (=> b!1908603 (= c!311008 ((_ is ElementMatch!5251) (ite c!310888 (regTwo!11015 (regex!3826 (rule!6023 separatorToken!354))) (regOne!11014 (regex!3826 (rule!6023 separatorToken!354))))))))

(declare-fun bm!117625 () Bool)

(declare-fun call!117631 () List!21565)

(assert (=> bm!117625 (= call!117631 (usedCharacters!334 (ite c!311007 (regTwo!11015 (ite c!310888 (regTwo!11015 (regex!3826 (rule!6023 separatorToken!354))) (regOne!11014 (regex!3826 (rule!6023 separatorToken!354))))) (regOne!11014 (ite c!310888 (regTwo!11015 (regex!3826 (rule!6023 separatorToken!354))) (regOne!11014 (regex!3826 (rule!6023 separatorToken!354))))))))))

(declare-fun bm!117626 () Bool)

(declare-fun call!117629 () List!21565)

(declare-fun call!117632 () List!21565)

(assert (=> bm!117626 (= call!117629 call!117632)))

(declare-fun bm!117627 () Bool)

(assert (=> bm!117627 (= call!117632 (usedCharacters!334 (ite c!311006 (reg!5580 (ite c!310888 (regTwo!11015 (regex!3826 (rule!6023 separatorToken!354))) (regOne!11014 (regex!3826 (rule!6023 separatorToken!354))))) (ite c!311007 (regOne!11015 (ite c!310888 (regTwo!11015 (regex!3826 (rule!6023 separatorToken!354))) (regOne!11014 (regex!3826 (rule!6023 separatorToken!354))))) (regTwo!11014 (ite c!310888 (regTwo!11015 (regex!3826 (rule!6023 separatorToken!354))) (regOne!11014 (regex!3826 (rule!6023 separatorToken!354)))))))))))

(declare-fun b!1908604 () Bool)

(assert (=> b!1908604 (= e!1219039 (Cons!21483 (c!310755 (ite c!310888 (regTwo!11015 (regex!3826 (rule!6023 separatorToken!354))) (regOne!11014 (regex!3826 (rule!6023 separatorToken!354))))) Nil!21483))))

(declare-fun b!1908605 () Bool)

(assert (=> b!1908605 (= e!1219037 call!117632)))

(declare-fun bm!117624 () Bool)

(assert (=> bm!117624 (= call!117630 (++!5773 (ite c!311007 call!117629 call!117631) (ite c!311007 call!117631 call!117629)))))

(declare-fun d!583928 () Bool)

(declare-fun c!311009 () Bool)

(assert (=> d!583928 (= c!311009 (or ((_ is EmptyExpr!5251) (ite c!310888 (regTwo!11015 (regex!3826 (rule!6023 separatorToken!354))) (regOne!11014 (regex!3826 (rule!6023 separatorToken!354))))) ((_ is EmptyLang!5251) (ite c!310888 (regTwo!11015 (regex!3826 (rule!6023 separatorToken!354))) (regOne!11014 (regex!3826 (rule!6023 separatorToken!354)))))))))

(assert (=> d!583928 (= (usedCharacters!334 (ite c!310888 (regTwo!11015 (regex!3826 (rule!6023 separatorToken!354))) (regOne!11014 (regex!3826 (rule!6023 separatorToken!354))))) e!1219038)))

(assert (= (and d!583928 c!311009) b!1908598))

(assert (= (and d!583928 (not c!311009)) b!1908603))

(assert (= (and b!1908603 c!311008) b!1908604))

(assert (= (and b!1908603 (not c!311008)) b!1908601))

(assert (= (and b!1908601 c!311006) b!1908605))

(assert (= (and b!1908601 (not c!311006)) b!1908602))

(assert (= (and b!1908602 c!311007) b!1908599))

(assert (= (and b!1908602 (not c!311007)) b!1908600))

(assert (= (or b!1908599 b!1908600) bm!117626))

(assert (= (or b!1908599 b!1908600) bm!117625))

(assert (= (or b!1908599 b!1908600) bm!117624))

(assert (= (or b!1908605 bm!117626) bm!117627))

(declare-fun m!2341587 () Bool)

(assert (=> bm!117625 m!2341587))

(declare-fun m!2341589 () Bool)

(assert (=> bm!117627 m!2341589))

(declare-fun m!2341591 () Bool)

(assert (=> bm!117624 m!2341591))

(assert (=> bm!117569 d!583928))

(declare-fun e!1219040 () Bool)

(declare-fun b!1908609 () Bool)

(declare-fun lt!729634 () List!21565)

(assert (=> b!1908609 (= e!1219040 (or (not (= (ite c!310816 lt!729424 call!117536) Nil!21483)) (= lt!729634 e!1218508)))))

(declare-fun e!1219041 () List!21565)

(declare-fun b!1908607 () Bool)

(assert (=> b!1908607 (= e!1219041 (Cons!21483 (h!26884 e!1218508) (++!5773 (t!177700 e!1218508) (ite c!310816 lt!729424 call!117536))))))

(declare-fun d!583930 () Bool)

(assert (=> d!583930 e!1219040))

(declare-fun res!852209 () Bool)

(assert (=> d!583930 (=> (not res!852209) (not e!1219040))))

(assert (=> d!583930 (= res!852209 (= (content!3147 lt!729634) ((_ map or) (content!3147 e!1218508) (content!3147 (ite c!310816 lt!729424 call!117536)))))))

(assert (=> d!583930 (= lt!729634 e!1219041)))

(declare-fun c!311010 () Bool)

(assert (=> d!583930 (= c!311010 ((_ is Nil!21483) e!1218508))))

(assert (=> d!583930 (= (++!5773 e!1218508 (ite c!310816 lt!729424 call!117536)) lt!729634)))

(declare-fun b!1908606 () Bool)

(assert (=> b!1908606 (= e!1219041 (ite c!310816 lt!729424 call!117536))))

(declare-fun b!1908608 () Bool)

(declare-fun res!852208 () Bool)

(assert (=> b!1908608 (=> (not res!852208) (not e!1219040))))

(assert (=> b!1908608 (= res!852208 (= (size!16947 lt!729634) (+ (size!16947 e!1218508) (size!16947 (ite c!310816 lt!729424 call!117536)))))))

(assert (= (and d!583930 c!311010) b!1908606))

(assert (= (and d!583930 (not c!311010)) b!1908607))

(assert (= (and d!583930 res!852209) b!1908608))

(assert (= (and b!1908608 res!852208) b!1908609))

(declare-fun m!2341593 () Bool)

(assert (=> b!1908607 m!2341593))

(declare-fun m!2341595 () Bool)

(assert (=> d!583930 m!2341595))

(declare-fun m!2341597 () Bool)

(assert (=> d!583930 m!2341597))

(declare-fun m!2341599 () Bool)

(assert (=> d!583930 m!2341599))

(declare-fun m!2341601 () Bool)

(assert (=> b!1908608 m!2341601))

(declare-fun m!2341603 () Bool)

(assert (=> b!1908608 m!2341603))

(declare-fun m!2341605 () Bool)

(assert (=> b!1908608 m!2341605))

(assert (=> bm!117533 d!583930))

(declare-fun d!583932 () Bool)

(assert (=> d!583932 (= (head!4428 lt!729332) (h!26884 lt!729332))))

(assert (=> b!1907998 d!583932))

(declare-fun d!583934 () Bool)

(declare-fun isBalanced!2242 (Conc!7145) Bool)

(assert (=> d!583934 (= (inv!28592 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (value!120632 separatorToken!354))) (isBalanced!2242 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (value!120632 separatorToken!354)))))))

(declare-fun bs!414037 () Bool)

(assert (= bs!414037 d!583934))

(declare-fun m!2341615 () Bool)

(assert (=> bs!414037 m!2341615))

(assert (=> tb!116665 d!583934))

(declare-fun d!583942 () Bool)

(assert (=> d!583942 (= (isEmpty!13198 lt!729324) (not ((_ is Some!4356) lt!729324)))))

(assert (=> d!583554 d!583942))

(declare-fun d!583946 () Bool)

(assert (=> d!583946 (= (isDefined!3655 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 (h!26885 tokens!598))))) (not (isEmpty!13198 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 (h!26885 tokens!598)))))))))

(declare-fun bs!414039 () Bool)

(assert (= bs!414039 d!583946))

(assert (=> bs!414039 m!2340161))

(declare-fun m!2341625 () Bool)

(assert (=> bs!414039 m!2341625))

(assert (=> d!583636 d!583946))

(assert (=> d!583636 d!583612))

(declare-fun d!583948 () Bool)

(declare-fun e!1219052 () Bool)

(assert (=> d!583948 e!1219052))

(declare-fun res!852219 () Bool)

(assert (=> d!583948 (=> (not res!852219) (not e!1219052))))

(assert (=> d!583948 (= res!852219 (isDefined!3655 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 (h!26885 tokens!598))))))))

(assert (=> d!583948 true))

(declare-fun _$52!1203 () Unit!35820)

(assert (=> d!583948 (= (choose!11879 thiss!23328 rules!3198 lt!729332 (h!26885 tokens!598)) _$52!1203)))

(declare-fun b!1908626 () Bool)

(declare-fun res!852220 () Bool)

(assert (=> b!1908626 (=> (not res!852220) (not e!1219052))))

(assert (=> b!1908626 (= res!852220 (matchR!2537 (regex!3826 (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 (h!26885 tokens!598)))))) (list!8738 (charsOf!2382 (h!26885 tokens!598)))))))

(declare-fun b!1908627 () Bool)

(assert (=> b!1908627 (= e!1219052 (= (rule!6023 (h!26885 tokens!598)) (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 (h!26885 tokens!598)))))))))

(assert (= (and d!583948 res!852219) b!1908626))

(assert (= (and b!1908626 res!852220) b!1908627))

(assert (=> d!583948 m!2340161))

(assert (=> d!583948 m!2340161))

(assert (=> d!583948 m!2340751))

(assert (=> b!1908626 m!2340161))

(assert (=> b!1908626 m!2340139))

(assert (=> b!1908626 m!2340139))

(assert (=> b!1908626 m!2340757))

(assert (=> b!1908626 m!2340757))

(assert (=> b!1908626 m!2340759))

(assert (=> b!1908626 m!2340161))

(assert (=> b!1908626 m!2340755))

(assert (=> b!1908627 m!2340161))

(assert (=> b!1908627 m!2340161))

(assert (=> b!1908627 m!2340755))

(assert (=> d!583636 d!583948))

(assert (=> d!583636 d!583660))

(declare-fun d!583962 () Bool)

(declare-fun e!1219055 () Bool)

(assert (=> d!583962 e!1219055))

(declare-fun res!852223 () Bool)

(assert (=> d!583962 (=> (not res!852223) (not e!1219055))))

(declare-fun lt!729643 () BalanceConc!14110)

(assert (=> d!583962 (= res!852223 (= (list!8742 lt!729643) (Cons!21484 separatorToken!354 Nil!21484)))))

(declare-fun singleton!834 (Token!7204) BalanceConc!14110)

(assert (=> d!583962 (= lt!729643 (singleton!834 separatorToken!354))))

(assert (=> d!583962 (= (singletonSeq!1851 separatorToken!354) lt!729643)))

(declare-fun b!1908630 () Bool)

(declare-fun isBalanced!2243 (Conc!7147) Bool)

(assert (=> b!1908630 (= e!1219055 (isBalanced!2243 (c!310894 lt!729643)))))

(assert (= (and d!583962 res!852223) b!1908630))

(declare-fun m!2341661 () Bool)

(assert (=> d!583962 m!2341661))

(declare-fun m!2341663 () Bool)

(assert (=> d!583962 m!2341663))

(declare-fun m!2341665 () Bool)

(assert (=> b!1908630 m!2341665))

(assert (=> d!583662 d!583962))

(declare-fun d!583964 () Bool)

(declare-fun lt!729648 () BalanceConc!14106)

(declare-fun printList!1028 (LexerInterface!3439 List!21566) List!21565)

(assert (=> d!583964 (= (list!8738 lt!729648) (printList!1028 thiss!23328 (list!8742 (singletonSeq!1851 separatorToken!354))))))

(assert (=> d!583964 (= lt!729648 (printTailRec!960 thiss!23328 (singletonSeq!1851 separatorToken!354) 0 (BalanceConc!14107 Empty!7145)))))

(assert (=> d!583964 (= (print!1453 thiss!23328 (singletonSeq!1851 separatorToken!354)) lt!729648)))

(declare-fun bs!414043 () Bool)

(assert (= bs!414043 d!583964))

(declare-fun m!2341667 () Bool)

(assert (=> bs!414043 m!2341667))

(assert (=> bs!414043 m!2340823))

(assert (=> bs!414043 m!2340825))

(assert (=> bs!414043 m!2340825))

(declare-fun m!2341669 () Bool)

(assert (=> bs!414043 m!2341669))

(assert (=> bs!414043 m!2340823))

(declare-fun m!2341671 () Bool)

(assert (=> bs!414043 m!2341671))

(assert (=> d!583662 d!583964))

(declare-fun d!583966 () Bool)

(declare-fun list!8745 (Conc!7147) List!21566)

(assert (=> d!583966 (= (list!8742 (_1!11581 (lex!1524 thiss!23328 rules!3198 (print!1453 thiss!23328 (singletonSeq!1851 separatorToken!354))))) (list!8745 (c!310894 (_1!11581 (lex!1524 thiss!23328 rules!3198 (print!1453 thiss!23328 (singletonSeq!1851 separatorToken!354)))))))))

(declare-fun bs!414044 () Bool)

(assert (= bs!414044 d!583966))

(declare-fun m!2341673 () Bool)

(assert (=> bs!414044 m!2341673))

(assert (=> d!583662 d!583966))

(declare-fun d!583968 () Bool)

(assert (=> d!583968 (= (list!8742 (singletonSeq!1851 separatorToken!354)) (list!8745 (c!310894 (singletonSeq!1851 separatorToken!354))))))

(declare-fun bs!414045 () Bool)

(assert (= bs!414045 d!583968))

(declare-fun m!2341675 () Bool)

(assert (=> bs!414045 m!2341675))

(assert (=> d!583662 d!583968))

(declare-fun b!1908650 () Bool)

(declare-fun res!852235 () Bool)

(declare-fun e!1219069 () Bool)

(assert (=> b!1908650 (=> (not res!852235) (not e!1219069))))

(declare-fun lt!729670 () tuple2!20224)

(declare-datatypes ((tuple2!20230 0))(
  ( (tuple2!20231 (_1!11584 List!21566) (_2!11584 List!21565)) )
))
(declare-fun lexList!941 (LexerInterface!3439 List!21567 List!21565) tuple2!20230)

(assert (=> b!1908650 (= res!852235 (= (list!8742 (_1!11581 lt!729670)) (_1!11584 (lexList!941 thiss!23328 rules!3198 (list!8738 (print!1453 thiss!23328 (singletonSeq!1851 separatorToken!354)))))))))

(declare-fun b!1908651 () Bool)

(declare-fun e!1219070 () Bool)

(declare-fun e!1219068 () Bool)

(assert (=> b!1908651 (= e!1219070 e!1219068)))

(declare-fun res!852234 () Bool)

(declare-fun size!16952 (BalanceConc!14106) Int)

(assert (=> b!1908651 (= res!852234 (< (size!16952 (_2!11581 lt!729670)) (size!16952 (print!1453 thiss!23328 (singletonSeq!1851 separatorToken!354)))))))

(assert (=> b!1908651 (=> (not res!852234) (not e!1219068))))

(declare-fun b!1908652 () Bool)

(declare-fun isEmpty!13203 (BalanceConc!14110) Bool)

(assert (=> b!1908652 (= e!1219068 (not (isEmpty!13203 (_1!11581 lt!729670))))))

(declare-fun b!1908653 () Bool)

(assert (=> b!1908653 (= e!1219070 (= (_2!11581 lt!729670) (print!1453 thiss!23328 (singletonSeq!1851 separatorToken!354))))))

(declare-fun b!1908654 () Bool)

(assert (=> b!1908654 (= e!1219069 (= (list!8738 (_2!11581 lt!729670)) (_2!11584 (lexList!941 thiss!23328 rules!3198 (list!8738 (print!1453 thiss!23328 (singletonSeq!1851 separatorToken!354)))))))))

(declare-fun d!583970 () Bool)

(assert (=> d!583970 e!1219069))

(declare-fun res!852233 () Bool)

(assert (=> d!583970 (=> (not res!852233) (not e!1219069))))

(assert (=> d!583970 (= res!852233 e!1219070)))

(declare-fun c!311019 () Bool)

(assert (=> d!583970 (= c!311019 (> (size!16948 (_1!11581 lt!729670)) 0))))

(declare-fun lexTailRecV2!664 (LexerInterface!3439 List!21567 BalanceConc!14106 BalanceConc!14106 BalanceConc!14106 BalanceConc!14110) tuple2!20224)

(assert (=> d!583970 (= lt!729670 (lexTailRecV2!664 thiss!23328 rules!3198 (print!1453 thiss!23328 (singletonSeq!1851 separatorToken!354)) (BalanceConc!14107 Empty!7145) (print!1453 thiss!23328 (singletonSeq!1851 separatorToken!354)) (BalanceConc!14111 Empty!7147)))))

(assert (=> d!583970 (= (lex!1524 thiss!23328 rules!3198 (print!1453 thiss!23328 (singletonSeq!1851 separatorToken!354))) lt!729670)))

(assert (= (and d!583970 c!311019) b!1908651))

(assert (= (and d!583970 (not c!311019)) b!1908653))

(assert (= (and b!1908651 res!852234) b!1908652))

(assert (= (and d!583970 res!852233) b!1908650))

(assert (= (and b!1908650 res!852235) b!1908654))

(declare-fun m!2341711 () Bool)

(assert (=> b!1908652 m!2341711))

(declare-fun m!2341713 () Bool)

(assert (=> b!1908650 m!2341713))

(assert (=> b!1908650 m!2340827))

(declare-fun m!2341715 () Bool)

(assert (=> b!1908650 m!2341715))

(assert (=> b!1908650 m!2341715))

(declare-fun m!2341717 () Bool)

(assert (=> b!1908650 m!2341717))

(declare-fun m!2341719 () Bool)

(assert (=> b!1908654 m!2341719))

(assert (=> b!1908654 m!2340827))

(assert (=> b!1908654 m!2341715))

(assert (=> b!1908654 m!2341715))

(assert (=> b!1908654 m!2341717))

(declare-fun m!2341721 () Bool)

(assert (=> b!1908651 m!2341721))

(assert (=> b!1908651 m!2340827))

(declare-fun m!2341723 () Bool)

(assert (=> b!1908651 m!2341723))

(declare-fun m!2341725 () Bool)

(assert (=> d!583970 m!2341725))

(assert (=> d!583970 m!2340827))

(assert (=> d!583970 m!2340827))

(declare-fun m!2341727 () Bool)

(assert (=> d!583970 m!2341727))

(assert (=> d!583662 d!583970))

(assert (=> d!583662 d!583680))

(declare-fun d!583974 () Bool)

(declare-fun lt!729673 () Int)

(declare-fun size!16953 (List!21566) Int)

(assert (=> d!583974 (= lt!729673 (size!16953 (list!8742 (_1!11581 lt!729511))))))

(declare-fun size!16954 (Conc!7147) Int)

(assert (=> d!583974 (= lt!729673 (size!16954 (c!310894 (_1!11581 lt!729511))))))

(assert (=> d!583974 (= (size!16948 (_1!11581 lt!729511)) lt!729673)))

(declare-fun bs!414046 () Bool)

(assert (= bs!414046 d!583974))

(declare-fun m!2341729 () Bool)

(assert (=> bs!414046 m!2341729))

(assert (=> bs!414046 m!2341729))

(declare-fun m!2341731 () Bool)

(assert (=> bs!414046 m!2341731))

(declare-fun m!2341733 () Bool)

(assert (=> bs!414046 m!2341733))

(assert (=> d!583662 d!583974))

(declare-fun d!583976 () Bool)

(declare-fun nullableFct!358 (Regex!5251) Bool)

(assert (=> d!583976 (= (nullable!1595 (regex!3826 lt!729320)) (nullableFct!358 (regex!3826 lt!729320)))))

(declare-fun bs!414047 () Bool)

(assert (= bs!414047 d!583976))

(declare-fun m!2341735 () Bool)

(assert (=> bs!414047 m!2341735))

(assert (=> b!1908048 d!583976))

(declare-fun b!1908655 () Bool)

(declare-fun res!852243 () Bool)

(declare-fun e!1219072 () Bool)

(assert (=> b!1908655 (=> res!852243 e!1219072)))

(declare-fun e!1219077 () Bool)

(assert (=> b!1908655 (= res!852243 e!1219077)))

(declare-fun res!852242 () Bool)

(assert (=> b!1908655 (=> (not res!852242) (not e!1219077))))

(declare-fun lt!729674 () Bool)

(assert (=> b!1908655 (= res!852242 lt!729674)))

(declare-fun b!1908656 () Bool)

(declare-fun e!1219076 () Bool)

(assert (=> b!1908656 (= e!1219076 (not lt!729674))))

(declare-fun bm!117628 () Bool)

(declare-fun call!117633 () Bool)

(assert (=> bm!117628 (= call!117633 (isEmpty!13197 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729395))))))))

(declare-fun b!1908657 () Bool)

(declare-fun res!852236 () Bool)

(declare-fun e!1219071 () Bool)

(assert (=> b!1908657 (=> res!852236 e!1219071)))

(assert (=> b!1908657 (= res!852236 (not (isEmpty!13197 (tail!2952 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729395))))))))))

(declare-fun b!1908658 () Bool)

(declare-fun res!852239 () Bool)

(assert (=> b!1908658 (=> res!852239 e!1219072)))

(assert (=> b!1908658 (= res!852239 (not ((_ is ElementMatch!5251) (regex!3826 (rule!6023 (_1!11579 (get!6678 lt!729395)))))))))

(assert (=> b!1908658 (= e!1219076 e!1219072)))

(declare-fun b!1908659 () Bool)

(declare-fun e!1219075 () Bool)

(assert (=> b!1908659 (= e!1219075 (nullable!1595 (regex!3826 (rule!6023 (_1!11579 (get!6678 lt!729395))))))))

(declare-fun d!583978 () Bool)

(declare-fun e!1219074 () Bool)

(assert (=> d!583978 e!1219074))

(declare-fun c!311022 () Bool)

(assert (=> d!583978 (= c!311022 ((_ is EmptyExpr!5251) (regex!3826 (rule!6023 (_1!11579 (get!6678 lt!729395))))))))

(assert (=> d!583978 (= lt!729674 e!1219075)))

(declare-fun c!311021 () Bool)

(assert (=> d!583978 (= c!311021 (isEmpty!13197 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729395))))))))

(assert (=> d!583978 (validRegex!2121 (regex!3826 (rule!6023 (_1!11579 (get!6678 lt!729395)))))))

(assert (=> d!583978 (= (matchR!2537 (regex!3826 (rule!6023 (_1!11579 (get!6678 lt!729395)))) (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729395))))) lt!729674)))

(declare-fun b!1908660 () Bool)

(assert (=> b!1908660 (= e!1219074 (= lt!729674 call!117633))))

(declare-fun b!1908661 () Bool)

(declare-fun res!852238 () Bool)

(assert (=> b!1908661 (=> (not res!852238) (not e!1219077))))

(assert (=> b!1908661 (= res!852238 (not call!117633))))

(declare-fun b!1908662 () Bool)

(assert (=> b!1908662 (= e!1219071 (not (= (head!4428 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729395))))) (c!310755 (regex!3826 (rule!6023 (_1!11579 (get!6678 lt!729395))))))))))

(declare-fun b!1908663 () Bool)

(assert (=> b!1908663 (= e!1219075 (matchR!2537 (derivativeStep!1354 (regex!3826 (rule!6023 (_1!11579 (get!6678 lt!729395)))) (head!4428 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729395)))))) (tail!2952 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729395)))))))))

(declare-fun b!1908664 () Bool)

(declare-fun e!1219073 () Bool)

(assert (=> b!1908664 (= e!1219072 e!1219073)))

(declare-fun res!852240 () Bool)

(assert (=> b!1908664 (=> (not res!852240) (not e!1219073))))

(assert (=> b!1908664 (= res!852240 (not lt!729674))))

(declare-fun b!1908665 () Bool)

(assert (=> b!1908665 (= e!1219074 e!1219076)))

(declare-fun c!311020 () Bool)

(assert (=> b!1908665 (= c!311020 ((_ is EmptyLang!5251) (regex!3826 (rule!6023 (_1!11579 (get!6678 lt!729395))))))))

(declare-fun b!1908666 () Bool)

(assert (=> b!1908666 (= e!1219073 e!1219071)))

(declare-fun res!852241 () Bool)

(assert (=> b!1908666 (=> res!852241 e!1219071)))

(assert (=> b!1908666 (= res!852241 call!117633)))

(declare-fun b!1908667 () Bool)

(declare-fun res!852237 () Bool)

(assert (=> b!1908667 (=> (not res!852237) (not e!1219077))))

(assert (=> b!1908667 (= res!852237 (isEmpty!13197 (tail!2952 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729395)))))))))

(declare-fun b!1908668 () Bool)

(assert (=> b!1908668 (= e!1219077 (= (head!4428 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729395))))) (c!310755 (regex!3826 (rule!6023 (_1!11579 (get!6678 lt!729395)))))))))

(assert (= (and d!583978 c!311021) b!1908659))

(assert (= (and d!583978 (not c!311021)) b!1908663))

(assert (= (and d!583978 c!311022) b!1908660))

(assert (= (and d!583978 (not c!311022)) b!1908665))

(assert (= (and b!1908665 c!311020) b!1908656))

(assert (= (and b!1908665 (not c!311020)) b!1908658))

(assert (= (and b!1908658 (not res!852239)) b!1908655))

(assert (= (and b!1908655 res!852242) b!1908661))

(assert (= (and b!1908661 res!852238) b!1908667))

(assert (= (and b!1908667 res!852237) b!1908668))

(assert (= (and b!1908655 (not res!852243)) b!1908664))

(assert (= (and b!1908664 res!852240) b!1908666))

(assert (= (and b!1908666 (not res!852241)) b!1908657))

(assert (= (and b!1908657 (not res!852236)) b!1908662))

(assert (= (or b!1908660 b!1908661 b!1908666) bm!117628))

(assert (=> d!583978 m!2340459))

(declare-fun m!2341737 () Bool)

(assert (=> d!583978 m!2341737))

(declare-fun m!2341739 () Bool)

(assert (=> d!583978 m!2341739))

(declare-fun m!2341741 () Bool)

(assert (=> b!1908659 m!2341741))

(assert (=> b!1908662 m!2340459))

(declare-fun m!2341743 () Bool)

(assert (=> b!1908662 m!2341743))

(assert (=> b!1908667 m!2340459))

(declare-fun m!2341745 () Bool)

(assert (=> b!1908667 m!2341745))

(assert (=> b!1908667 m!2341745))

(declare-fun m!2341747 () Bool)

(assert (=> b!1908667 m!2341747))

(assert (=> bm!117628 m!2340459))

(assert (=> bm!117628 m!2341737))

(assert (=> b!1908663 m!2340459))

(assert (=> b!1908663 m!2341743))

(assert (=> b!1908663 m!2341743))

(declare-fun m!2341749 () Bool)

(assert (=> b!1908663 m!2341749))

(assert (=> b!1908663 m!2340459))

(assert (=> b!1908663 m!2341745))

(assert (=> b!1908663 m!2341749))

(assert (=> b!1908663 m!2341745))

(declare-fun m!2341751 () Bool)

(assert (=> b!1908663 m!2341751))

(assert (=> b!1908668 m!2340459))

(assert (=> b!1908668 m!2341743))

(assert (=> b!1908657 m!2340459))

(assert (=> b!1908657 m!2341745))

(assert (=> b!1908657 m!2341745))

(assert (=> b!1908657 m!2341747))

(assert (=> b!1907679 d!583978))

(declare-fun d!583980 () Bool)

(assert (=> d!583980 (= (get!6678 lt!729395) (v!26400 lt!729395))))

(assert (=> b!1907679 d!583980))

(declare-fun d!583982 () Bool)

(assert (=> d!583982 (= (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729395)))) (list!8741 (c!310756 (charsOf!2382 (_1!11579 (get!6678 lt!729395))))))))

(declare-fun bs!414048 () Bool)

(assert (= bs!414048 d!583982))

(declare-fun m!2341753 () Bool)

(assert (=> bs!414048 m!2341753))

(assert (=> b!1907679 d!583982))

(declare-fun d!583984 () Bool)

(declare-fun lt!729675 () BalanceConc!14106)

(assert (=> d!583984 (= (list!8738 lt!729675) (originalCharacters!4633 (_1!11579 (get!6678 lt!729395))))))

(assert (=> d!583984 (= lt!729675 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729395))))) (value!120632 (_1!11579 (get!6678 lt!729395)))))))

(assert (=> d!583984 (= (charsOf!2382 (_1!11579 (get!6678 lt!729395))) lt!729675)))

(declare-fun b_lambda!63137 () Bool)

(assert (=> (not b_lambda!63137) (not d!583984)))

(declare-fun t!177889 () Bool)

(declare-fun tb!116835 () Bool)

(assert (=> (and b!1907400 (= (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (toChars!5310 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729395)))))) t!177889) tb!116835))

(declare-fun b!1908669 () Bool)

(declare-fun e!1219078 () Bool)

(declare-fun tp!544688 () Bool)

(assert (=> b!1908669 (= e!1219078 (and (inv!28591 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729395))))) (value!120632 (_1!11579 (get!6678 lt!729395)))))) tp!544688))))

(declare-fun result!141190 () Bool)

(assert (=> tb!116835 (= result!141190 (and (inv!28592 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729395))))) (value!120632 (_1!11579 (get!6678 lt!729395))))) e!1219078))))

(assert (= tb!116835 b!1908669))

(declare-fun m!2341755 () Bool)

(assert (=> b!1908669 m!2341755))

(declare-fun m!2341757 () Bool)

(assert (=> tb!116835 m!2341757))

(assert (=> d!583984 t!177889))

(declare-fun b_and!148493 () Bool)

(assert (= b_and!148479 (and (=> t!177889 result!141190) b_and!148493)))

(declare-fun tb!116837 () Bool)

(declare-fun t!177891 () Bool)

(assert (=> (and b!1908146 (= (toChars!5310 (transformation!3826 (h!26886 (t!177702 rules!3198)))) (toChars!5310 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729395)))))) t!177891) tb!116837))

(declare-fun result!141192 () Bool)

(assert (= result!141192 result!141190))

(assert (=> d!583984 t!177891))

(declare-fun b_and!148495 () Bool)

(assert (= b_and!148477 (and (=> t!177891 result!141192) b_and!148495)))

(declare-fun t!177893 () Bool)

(declare-fun tb!116839 () Bool)

(assert (=> (and b!1908135 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) (toChars!5310 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729395)))))) t!177893) tb!116839))

(declare-fun result!141194 () Bool)

(assert (= result!141194 result!141190))

(assert (=> d!583984 t!177893))

(declare-fun b_and!148497 () Bool)

(assert (= b_and!148475 (and (=> t!177893 result!141194) b_and!148497)))

(declare-fun tb!116841 () Bool)

(declare-fun t!177895 () Bool)

(assert (=> (and b!1907389 (= (toChars!5310 (transformation!3826 (h!26886 rules!3198))) (toChars!5310 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729395)))))) t!177895) tb!116841))

(declare-fun result!141196 () Bool)

(assert (= result!141196 result!141190))

(assert (=> d!583984 t!177895))

(declare-fun b_and!148499 () Bool)

(assert (= b_and!148481 (and (=> t!177895 result!141196) b_and!148499)))

(declare-fun tb!116843 () Bool)

(declare-fun t!177897 () Bool)

(assert (=> (and b!1907387 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (toChars!5310 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729395)))))) t!177897) tb!116843))

(declare-fun result!141198 () Bool)

(assert (= result!141198 result!141190))

(assert (=> d!583984 t!177897))

(declare-fun b_and!148501 () Bool)

(assert (= b_and!148473 (and (=> t!177897 result!141198) b_and!148501)))

(declare-fun m!2341759 () Bool)

(assert (=> d!583984 m!2341759))

(declare-fun m!2341761 () Bool)

(assert (=> d!583984 m!2341761))

(assert (=> b!1907679 d!583984))

(declare-fun b!1908670 () Bool)

(declare-fun res!852251 () Bool)

(declare-fun e!1219080 () Bool)

(assert (=> b!1908670 (=> res!852251 e!1219080)))

(declare-fun e!1219085 () Bool)

(assert (=> b!1908670 (= res!852251 e!1219085)))

(declare-fun res!852250 () Bool)

(assert (=> b!1908670 (=> (not res!852250) (not e!1219085))))

(declare-fun lt!729676 () Bool)

(assert (=> b!1908670 (= res!852250 lt!729676)))

(declare-fun b!1908671 () Bool)

(declare-fun e!1219084 () Bool)

(assert (=> b!1908671 (= e!1219084 (not lt!729676))))

(declare-fun bm!117629 () Bool)

(declare-fun call!117634 () Bool)

(assert (=> bm!117629 (= call!117634 (isEmpty!13197 (tail!2952 lt!729326)))))

(declare-fun b!1908672 () Bool)

(declare-fun res!852244 () Bool)

(declare-fun e!1219079 () Bool)

(assert (=> b!1908672 (=> res!852244 e!1219079)))

(assert (=> b!1908672 (= res!852244 (not (isEmpty!13197 (tail!2952 (tail!2952 lt!729326)))))))

(declare-fun b!1908673 () Bool)

(declare-fun res!852247 () Bool)

(assert (=> b!1908673 (=> res!852247 e!1219080)))

(assert (=> b!1908673 (= res!852247 (not ((_ is ElementMatch!5251) (derivativeStep!1354 (regex!3826 lt!729320) (head!4428 lt!729326)))))))

(assert (=> b!1908673 (= e!1219084 e!1219080)))

(declare-fun b!1908674 () Bool)

(declare-fun e!1219083 () Bool)

(assert (=> b!1908674 (= e!1219083 (nullable!1595 (derivativeStep!1354 (regex!3826 lt!729320) (head!4428 lt!729326))))))

(declare-fun d!583986 () Bool)

(declare-fun e!1219082 () Bool)

(assert (=> d!583986 e!1219082))

(declare-fun c!311025 () Bool)

(assert (=> d!583986 (= c!311025 ((_ is EmptyExpr!5251) (derivativeStep!1354 (regex!3826 lt!729320) (head!4428 lt!729326))))))

(assert (=> d!583986 (= lt!729676 e!1219083)))

(declare-fun c!311024 () Bool)

(assert (=> d!583986 (= c!311024 (isEmpty!13197 (tail!2952 lt!729326)))))

(assert (=> d!583986 (validRegex!2121 (derivativeStep!1354 (regex!3826 lt!729320) (head!4428 lt!729326)))))

(assert (=> d!583986 (= (matchR!2537 (derivativeStep!1354 (regex!3826 lt!729320) (head!4428 lt!729326)) (tail!2952 lt!729326)) lt!729676)))

(declare-fun b!1908675 () Bool)

(assert (=> b!1908675 (= e!1219082 (= lt!729676 call!117634))))

(declare-fun b!1908676 () Bool)

(declare-fun res!852246 () Bool)

(assert (=> b!1908676 (=> (not res!852246) (not e!1219085))))

(assert (=> b!1908676 (= res!852246 (not call!117634))))

(declare-fun b!1908677 () Bool)

(assert (=> b!1908677 (= e!1219079 (not (= (head!4428 (tail!2952 lt!729326)) (c!310755 (derivativeStep!1354 (regex!3826 lt!729320) (head!4428 lt!729326))))))))

(declare-fun b!1908678 () Bool)

(assert (=> b!1908678 (= e!1219083 (matchR!2537 (derivativeStep!1354 (derivativeStep!1354 (regex!3826 lt!729320) (head!4428 lt!729326)) (head!4428 (tail!2952 lt!729326))) (tail!2952 (tail!2952 lt!729326))))))

(declare-fun b!1908679 () Bool)

(declare-fun e!1219081 () Bool)

(assert (=> b!1908679 (= e!1219080 e!1219081)))

(declare-fun res!852248 () Bool)

(assert (=> b!1908679 (=> (not res!852248) (not e!1219081))))

(assert (=> b!1908679 (= res!852248 (not lt!729676))))

(declare-fun b!1908680 () Bool)

(assert (=> b!1908680 (= e!1219082 e!1219084)))

(declare-fun c!311023 () Bool)

(assert (=> b!1908680 (= c!311023 ((_ is EmptyLang!5251) (derivativeStep!1354 (regex!3826 lt!729320) (head!4428 lt!729326))))))

(declare-fun b!1908681 () Bool)

(assert (=> b!1908681 (= e!1219081 e!1219079)))

(declare-fun res!852249 () Bool)

(assert (=> b!1908681 (=> res!852249 e!1219079)))

(assert (=> b!1908681 (= res!852249 call!117634)))

(declare-fun b!1908682 () Bool)

(declare-fun res!852245 () Bool)

(assert (=> b!1908682 (=> (not res!852245) (not e!1219085))))

(assert (=> b!1908682 (= res!852245 (isEmpty!13197 (tail!2952 (tail!2952 lt!729326))))))

(declare-fun b!1908683 () Bool)

(assert (=> b!1908683 (= e!1219085 (= (head!4428 (tail!2952 lt!729326)) (c!310755 (derivativeStep!1354 (regex!3826 lt!729320) (head!4428 lt!729326)))))))

(assert (= (and d!583986 c!311024) b!1908674))

(assert (= (and d!583986 (not c!311024)) b!1908678))

(assert (= (and d!583986 c!311025) b!1908675))

(assert (= (and d!583986 (not c!311025)) b!1908680))

(assert (= (and b!1908680 c!311023) b!1908671))

(assert (= (and b!1908680 (not c!311023)) b!1908673))

(assert (= (and b!1908673 (not res!852247)) b!1908670))

(assert (= (and b!1908670 res!852250) b!1908676))

(assert (= (and b!1908676 res!852246) b!1908682))

(assert (= (and b!1908682 res!852245) b!1908683))

(assert (= (and b!1908670 (not res!852251)) b!1908679))

(assert (= (and b!1908679 res!852248) b!1908681))

(assert (= (and b!1908681 (not res!852249)) b!1908672))

(assert (= (and b!1908672 (not res!852244)) b!1908677))

(assert (= (or b!1908675 b!1908676 b!1908681) bm!117629))

(assert (=> d!583986 m!2340777))

(assert (=> d!583986 m!2340779))

(assert (=> d!583986 m!2340865))

(declare-fun m!2341763 () Bool)

(assert (=> d!583986 m!2341763))

(assert (=> b!1908674 m!2340865))

(declare-fun m!2341765 () Bool)

(assert (=> b!1908674 m!2341765))

(assert (=> b!1908677 m!2340777))

(declare-fun m!2341767 () Bool)

(assert (=> b!1908677 m!2341767))

(assert (=> b!1908682 m!2340777))

(declare-fun m!2341769 () Bool)

(assert (=> b!1908682 m!2341769))

(assert (=> b!1908682 m!2341769))

(declare-fun m!2341771 () Bool)

(assert (=> b!1908682 m!2341771))

(assert (=> bm!117629 m!2340777))

(assert (=> bm!117629 m!2340779))

(assert (=> b!1908678 m!2340777))

(assert (=> b!1908678 m!2341767))

(assert (=> b!1908678 m!2340865))

(assert (=> b!1908678 m!2341767))

(declare-fun m!2341773 () Bool)

(assert (=> b!1908678 m!2341773))

(assert (=> b!1908678 m!2340777))

(assert (=> b!1908678 m!2341769))

(assert (=> b!1908678 m!2341773))

(assert (=> b!1908678 m!2341769))

(declare-fun m!2341775 () Bool)

(assert (=> b!1908678 m!2341775))

(assert (=> b!1908683 m!2340777))

(assert (=> b!1908683 m!2341767))

(assert (=> b!1908672 m!2340777))

(assert (=> b!1908672 m!2341769))

(assert (=> b!1908672 m!2341769))

(assert (=> b!1908672 m!2341771))

(assert (=> b!1908052 d!583986))

(declare-fun bm!117638 () Bool)

(declare-fun call!117645 () Regex!5251)

(declare-fun call!117643 () Regex!5251)

(assert (=> bm!117638 (= call!117645 call!117643)))

(declare-fun bm!117639 () Bool)

(declare-fun call!117644 () Regex!5251)

(declare-fun call!117646 () Regex!5251)

(assert (=> bm!117639 (= call!117644 call!117646)))

(declare-fun b!1908704 () Bool)

(declare-fun e!1219098 () Regex!5251)

(assert (=> b!1908704 (= e!1219098 (Concat!9214 call!117644 (regex!3826 lt!729320)))))

(declare-fun b!1908705 () Bool)

(declare-fun e!1219099 () Regex!5251)

(assert (=> b!1908705 (= e!1219099 EmptyLang!5251)))

(declare-fun b!1908706 () Bool)

(declare-fun e!1219096 () Regex!5251)

(assert (=> b!1908706 (= e!1219096 (Union!5251 (Concat!9214 call!117644 (regTwo!11014 (regex!3826 lt!729320))) call!117645))))

(declare-fun c!311037 () Bool)

(declare-fun c!311040 () Bool)

(declare-fun bm!117640 () Bool)

(assert (=> bm!117640 (= call!117643 (derivativeStep!1354 (ite c!311040 (regTwo!11015 (regex!3826 lt!729320)) (ite c!311037 (regTwo!11014 (regex!3826 lt!729320)) (regOne!11014 (regex!3826 lt!729320)))) (head!4428 lt!729326)))))

(declare-fun b!1908707 () Bool)

(declare-fun e!1219100 () Regex!5251)

(assert (=> b!1908707 (= e!1219100 (Union!5251 call!117646 call!117643))))

(declare-fun b!1908708 () Bool)

(declare-fun e!1219097 () Regex!5251)

(assert (=> b!1908708 (= e!1219097 (ite (= (head!4428 lt!729326) (c!310755 (regex!3826 lt!729320))) EmptyExpr!5251 EmptyLang!5251))))

(declare-fun b!1908709 () Bool)

(assert (=> b!1908709 (= e!1219099 e!1219097)))

(declare-fun c!311039 () Bool)

(assert (=> b!1908709 (= c!311039 ((_ is ElementMatch!5251) (regex!3826 lt!729320)))))

(declare-fun d!583988 () Bool)

(declare-fun lt!729679 () Regex!5251)

(assert (=> d!583988 (validRegex!2121 lt!729679)))

(assert (=> d!583988 (= lt!729679 e!1219099)))

(declare-fun c!311036 () Bool)

(assert (=> d!583988 (= c!311036 (or ((_ is EmptyExpr!5251) (regex!3826 lt!729320)) ((_ is EmptyLang!5251) (regex!3826 lt!729320))))))

(assert (=> d!583988 (validRegex!2121 (regex!3826 lt!729320))))

(assert (=> d!583988 (= (derivativeStep!1354 (regex!3826 lt!729320) (head!4428 lt!729326)) lt!729679)))

(declare-fun b!1908710 () Bool)

(assert (=> b!1908710 (= e!1219100 e!1219098)))

(declare-fun c!311038 () Bool)

(assert (=> b!1908710 (= c!311038 ((_ is Star!5251) (regex!3826 lt!729320)))))

(declare-fun b!1908711 () Bool)

(assert (=> b!1908711 (= c!311037 (nullable!1595 (regOne!11014 (regex!3826 lt!729320))))))

(assert (=> b!1908711 (= e!1219098 e!1219096)))

(declare-fun b!1908712 () Bool)

(assert (=> b!1908712 (= e!1219096 (Union!5251 (Concat!9214 call!117645 (regTwo!11014 (regex!3826 lt!729320))) EmptyLang!5251))))

(declare-fun bm!117641 () Bool)

(assert (=> bm!117641 (= call!117646 (derivativeStep!1354 (ite c!311040 (regOne!11015 (regex!3826 lt!729320)) (ite c!311038 (reg!5580 (regex!3826 lt!729320)) (regOne!11014 (regex!3826 lt!729320)))) (head!4428 lt!729326)))))

(declare-fun b!1908713 () Bool)

(assert (=> b!1908713 (= c!311040 ((_ is Union!5251) (regex!3826 lt!729320)))))

(assert (=> b!1908713 (= e!1219097 e!1219100)))

(assert (= (and d!583988 c!311036) b!1908705))

(assert (= (and d!583988 (not c!311036)) b!1908709))

(assert (= (and b!1908709 c!311039) b!1908708))

(assert (= (and b!1908709 (not c!311039)) b!1908713))

(assert (= (and b!1908713 c!311040) b!1908707))

(assert (= (and b!1908713 (not c!311040)) b!1908710))

(assert (= (and b!1908710 c!311038) b!1908704))

(assert (= (and b!1908710 (not c!311038)) b!1908711))

(assert (= (and b!1908711 c!311037) b!1908706))

(assert (= (and b!1908711 (not c!311037)) b!1908712))

(assert (= (or b!1908706 b!1908712) bm!117638))

(assert (= (or b!1908704 b!1908706) bm!117639))

(assert (= (or b!1908707 bm!117639) bm!117641))

(assert (= (or b!1908707 bm!117638) bm!117640))

(assert (=> bm!117640 m!2340109))

(declare-fun m!2341777 () Bool)

(assert (=> bm!117640 m!2341777))

(declare-fun m!2341779 () Bool)

(assert (=> d!583988 m!2341779))

(assert (=> d!583988 m!2340861))

(declare-fun m!2341781 () Bool)

(assert (=> b!1908711 m!2341781))

(assert (=> bm!117641 m!2340109))

(declare-fun m!2341783 () Bool)

(assert (=> bm!117641 m!2341783))

(assert (=> b!1908052 d!583988))

(assert (=> b!1908052 d!583686))

(declare-fun d!583990 () Bool)

(assert (=> d!583990 (= (tail!2952 lt!729326) (t!177700 lt!729326))))

(assert (=> b!1908052 d!583990))

(declare-fun b!1908714 () Bool)

(declare-fun res!852259 () Bool)

(declare-fun e!1219102 () Bool)

(assert (=> b!1908714 (=> res!852259 e!1219102)))

(declare-fun e!1219107 () Bool)

(assert (=> b!1908714 (= res!852259 e!1219107)))

(declare-fun res!852258 () Bool)

(assert (=> b!1908714 (=> (not res!852258) (not e!1219107))))

(declare-fun lt!729680 () Bool)

(assert (=> b!1908714 (= res!852258 lt!729680)))

(declare-fun b!1908715 () Bool)

(declare-fun e!1219106 () Bool)

(assert (=> b!1908715 (= e!1219106 (not lt!729680))))

(declare-fun bm!117642 () Bool)

(declare-fun call!117647 () Bool)

(assert (=> bm!117642 (= call!117647 (isEmpty!13197 (list!8738 (charsOf!2382 separatorToken!354))))))

(declare-fun b!1908716 () Bool)

(declare-fun res!852252 () Bool)

(declare-fun e!1219101 () Bool)

(assert (=> b!1908716 (=> res!852252 e!1219101)))

(assert (=> b!1908716 (= res!852252 (not (isEmpty!13197 (tail!2952 (list!8738 (charsOf!2382 separatorToken!354))))))))

(declare-fun b!1908717 () Bool)

(declare-fun res!852255 () Bool)

(assert (=> b!1908717 (=> res!852255 e!1219102)))

(assert (=> b!1908717 (= res!852255 (not ((_ is ElementMatch!5251) (regex!3826 (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 separatorToken!354))))))))))

(assert (=> b!1908717 (= e!1219106 e!1219102)))

(declare-fun e!1219105 () Bool)

(declare-fun b!1908718 () Bool)

(assert (=> b!1908718 (= e!1219105 (nullable!1595 (regex!3826 (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 separatorToken!354)))))))))

(declare-fun d!583992 () Bool)

(declare-fun e!1219104 () Bool)

(assert (=> d!583992 e!1219104))

(declare-fun c!311043 () Bool)

(assert (=> d!583992 (= c!311043 ((_ is EmptyExpr!5251) (regex!3826 (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 separatorToken!354)))))))))

(assert (=> d!583992 (= lt!729680 e!1219105)))

(declare-fun c!311042 () Bool)

(assert (=> d!583992 (= c!311042 (isEmpty!13197 (list!8738 (charsOf!2382 separatorToken!354))))))

(assert (=> d!583992 (validRegex!2121 (regex!3826 (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 separatorToken!354))))))))

(assert (=> d!583992 (= (matchR!2537 (regex!3826 (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 separatorToken!354))))) (list!8738 (charsOf!2382 separatorToken!354))) lt!729680)))

(declare-fun b!1908719 () Bool)

(assert (=> b!1908719 (= e!1219104 (= lt!729680 call!117647))))

(declare-fun b!1908720 () Bool)

(declare-fun res!852254 () Bool)

(assert (=> b!1908720 (=> (not res!852254) (not e!1219107))))

(assert (=> b!1908720 (= res!852254 (not call!117647))))

(declare-fun b!1908721 () Bool)

(assert (=> b!1908721 (= e!1219101 (not (= (head!4428 (list!8738 (charsOf!2382 separatorToken!354))) (c!310755 (regex!3826 (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 separatorToken!354)))))))))))

(declare-fun b!1908722 () Bool)

(assert (=> b!1908722 (= e!1219105 (matchR!2537 (derivativeStep!1354 (regex!3826 (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 separatorToken!354))))) (head!4428 (list!8738 (charsOf!2382 separatorToken!354)))) (tail!2952 (list!8738 (charsOf!2382 separatorToken!354)))))))

(declare-fun b!1908723 () Bool)

(declare-fun e!1219103 () Bool)

(assert (=> b!1908723 (= e!1219102 e!1219103)))

(declare-fun res!852256 () Bool)

(assert (=> b!1908723 (=> (not res!852256) (not e!1219103))))

(assert (=> b!1908723 (= res!852256 (not lt!729680))))

(declare-fun b!1908724 () Bool)

(assert (=> b!1908724 (= e!1219104 e!1219106)))

(declare-fun c!311041 () Bool)

(assert (=> b!1908724 (= c!311041 ((_ is EmptyLang!5251) (regex!3826 (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 separatorToken!354)))))))))

(declare-fun b!1908725 () Bool)

(assert (=> b!1908725 (= e!1219103 e!1219101)))

(declare-fun res!852257 () Bool)

(assert (=> b!1908725 (=> res!852257 e!1219101)))

(assert (=> b!1908725 (= res!852257 call!117647)))

(declare-fun b!1908726 () Bool)

(declare-fun res!852253 () Bool)

(assert (=> b!1908726 (=> (not res!852253) (not e!1219107))))

(assert (=> b!1908726 (= res!852253 (isEmpty!13197 (tail!2952 (list!8738 (charsOf!2382 separatorToken!354)))))))

(declare-fun b!1908727 () Bool)

(assert (=> b!1908727 (= e!1219107 (= (head!4428 (list!8738 (charsOf!2382 separatorToken!354))) (c!310755 (regex!3826 (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 separatorToken!354))))))))))

(assert (= (and d!583992 c!311042) b!1908718))

(assert (= (and d!583992 (not c!311042)) b!1908722))

(assert (= (and d!583992 c!311043) b!1908719))

(assert (= (and d!583992 (not c!311043)) b!1908724))

(assert (= (and b!1908724 c!311041) b!1908715))

(assert (= (and b!1908724 (not c!311041)) b!1908717))

(assert (= (and b!1908717 (not res!852255)) b!1908714))

(assert (= (and b!1908714 res!852258) b!1908720))

(assert (= (and b!1908720 res!852254) b!1908726))

(assert (= (and b!1908726 res!852253) b!1908727))

(assert (= (and b!1908714 (not res!852259)) b!1908723))

(assert (= (and b!1908723 res!852256) b!1908725))

(assert (= (and b!1908725 (not res!852257)) b!1908716))

(assert (= (and b!1908716 (not res!852252)) b!1908721))

(assert (= (or b!1908719 b!1908720 b!1908725) bm!117642))

(assert (=> d!583992 m!2340145))

(declare-fun m!2341785 () Bool)

(assert (=> d!583992 m!2341785))

(declare-fun m!2341787 () Bool)

(assert (=> d!583992 m!2341787))

(declare-fun m!2341789 () Bool)

(assert (=> b!1908718 m!2341789))

(assert (=> b!1908721 m!2340145))

(declare-fun m!2341791 () Bool)

(assert (=> b!1908721 m!2341791))

(assert (=> b!1908726 m!2340145))

(declare-fun m!2341793 () Bool)

(assert (=> b!1908726 m!2341793))

(assert (=> b!1908726 m!2341793))

(declare-fun m!2341795 () Bool)

(assert (=> b!1908726 m!2341795))

(assert (=> bm!117642 m!2340145))

(assert (=> bm!117642 m!2341785))

(assert (=> b!1908722 m!2340145))

(assert (=> b!1908722 m!2341791))

(assert (=> b!1908722 m!2341791))

(declare-fun m!2341797 () Bool)

(assert (=> b!1908722 m!2341797))

(assert (=> b!1908722 m!2340145))

(assert (=> b!1908722 m!2341793))

(assert (=> b!1908722 m!2341797))

(assert (=> b!1908722 m!2341793))

(declare-fun m!2341799 () Bool)

(assert (=> b!1908722 m!2341799))

(assert (=> b!1908727 m!2340145))

(assert (=> b!1908727 m!2341791))

(assert (=> b!1908716 m!2340145))

(assert (=> b!1908716 m!2341793))

(assert (=> b!1908716 m!2341793))

(assert (=> b!1908716 m!2341795))

(assert (=> b!1907628 d!583992))

(declare-fun d!583994 () Bool)

(assert (=> d!583994 (= (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 separatorToken!354)))) (v!26399 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 separatorToken!354)))))))

(assert (=> b!1907628 d!583994))

(assert (=> b!1907628 d!583580))

(assert (=> b!1907628 d!583590))

(assert (=> b!1907628 d!583600))

(declare-fun d!583996 () Bool)

(declare-fun e!1219110 () Bool)

(assert (=> d!583996 e!1219110))

(declare-fun res!852263 () Bool)

(assert (=> d!583996 (=> res!852263 e!1219110)))

(declare-fun lt!729682 () Option!4358)

(assert (=> d!583996 (= res!852263 (isEmpty!13199 lt!729682))))

(declare-fun e!1219108 () Option!4358)

(assert (=> d!583996 (= lt!729682 e!1219108)))

(declare-fun c!311044 () Bool)

(assert (=> d!583996 (= c!311044 (and ((_ is Cons!21485) (t!177702 rules!3198)) ((_ is Nil!21485) (t!177702 (t!177702 rules!3198)))))))

(declare-fun lt!729683 () Unit!35820)

(declare-fun lt!729684 () Unit!35820)

(assert (=> d!583996 (= lt!729683 lt!729684)))

(assert (=> d!583996 (isPrefix!1923 lt!729332 lt!729332)))

(assert (=> d!583996 (= lt!729684 (lemmaIsPrefixRefl!1241 lt!729332 lt!729332))))

(assert (=> d!583996 (rulesValidInductive!1302 thiss!23328 (t!177702 rules!3198))))

(assert (=> d!583996 (= (maxPrefix!1885 thiss!23328 (t!177702 rules!3198) lt!729332) lt!729682)))

(declare-fun b!1908728 () Bool)

(declare-fun res!852261 () Bool)

(declare-fun e!1219109 () Bool)

(assert (=> b!1908728 (=> (not res!852261) (not e!1219109))))

(assert (=> b!1908728 (= res!852261 (matchR!2537 (regex!3826 (rule!6023 (_1!11579 (get!6678 lt!729682)))) (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729682))))))))

(declare-fun b!1908729 () Bool)

(declare-fun res!852262 () Bool)

(assert (=> b!1908729 (=> (not res!852262) (not e!1219109))))

(assert (=> b!1908729 (= res!852262 (= (++!5773 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729682)))) (_2!11579 (get!6678 lt!729682))) lt!729332))))

(declare-fun call!117648 () Option!4358)

(declare-fun bm!117643 () Bool)

(assert (=> bm!117643 (= call!117648 (maxPrefixOneRule!1205 thiss!23328 (h!26886 (t!177702 rules!3198)) lt!729332))))

(declare-fun b!1908730 () Bool)

(assert (=> b!1908730 (= e!1219110 e!1219109)))

(declare-fun res!852264 () Bool)

(assert (=> b!1908730 (=> (not res!852264) (not e!1219109))))

(assert (=> b!1908730 (= res!852264 (isDefined!3656 lt!729682))))

(declare-fun b!1908731 () Bool)

(declare-fun lt!729685 () Option!4358)

(declare-fun lt!729681 () Option!4358)

(assert (=> b!1908731 (= e!1219108 (ite (and ((_ is None!4357) lt!729685) ((_ is None!4357) lt!729681)) None!4357 (ite ((_ is None!4357) lt!729681) lt!729685 (ite ((_ is None!4357) lt!729685) lt!729681 (ite (>= (size!16944 (_1!11579 (v!26400 lt!729685))) (size!16944 (_1!11579 (v!26400 lt!729681)))) lt!729685 lt!729681)))))))

(assert (=> b!1908731 (= lt!729685 call!117648)))

(assert (=> b!1908731 (= lt!729681 (maxPrefix!1885 thiss!23328 (t!177702 (t!177702 rules!3198)) lt!729332))))

(declare-fun b!1908732 () Bool)

(declare-fun res!852260 () Bool)

(assert (=> b!1908732 (=> (not res!852260) (not e!1219109))))

(assert (=> b!1908732 (= res!852260 (< (size!16947 (_2!11579 (get!6678 lt!729682))) (size!16947 lt!729332)))))

(declare-fun b!1908733 () Bool)

(assert (=> b!1908733 (= e!1219108 call!117648)))

(declare-fun b!1908734 () Bool)

(declare-fun res!852265 () Bool)

(assert (=> b!1908734 (=> (not res!852265) (not e!1219109))))

(assert (=> b!1908734 (= res!852265 (= (value!120632 (_1!11579 (get!6678 lt!729682))) (apply!5639 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729682)))) (seqFromList!2698 (originalCharacters!4633 (_1!11579 (get!6678 lt!729682)))))))))

(declare-fun b!1908735 () Bool)

(declare-fun res!852266 () Bool)

(assert (=> b!1908735 (=> (not res!852266) (not e!1219109))))

(assert (=> b!1908735 (= res!852266 (= (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729682)))) (originalCharacters!4633 (_1!11579 (get!6678 lt!729682)))))))

(declare-fun b!1908736 () Bool)

(assert (=> b!1908736 (= e!1219109 (contains!3865 (t!177702 rules!3198) (rule!6023 (_1!11579 (get!6678 lt!729682)))))))

(assert (= (and d!583996 c!311044) b!1908733))

(assert (= (and d!583996 (not c!311044)) b!1908731))

(assert (= (or b!1908733 b!1908731) bm!117643))

(assert (= (and d!583996 (not res!852263)) b!1908730))

(assert (= (and b!1908730 res!852264) b!1908735))

(assert (= (and b!1908735 res!852266) b!1908732))

(assert (= (and b!1908732 res!852260) b!1908729))

(assert (= (and b!1908729 res!852262) b!1908734))

(assert (= (and b!1908734 res!852265) b!1908728))

(assert (= (and b!1908728 res!852261) b!1908736))

(declare-fun m!2341801 () Bool)

(assert (=> b!1908731 m!2341801))

(declare-fun m!2341803 () Bool)

(assert (=> b!1908736 m!2341803))

(declare-fun m!2341805 () Bool)

(assert (=> b!1908736 m!2341805))

(declare-fun m!2341807 () Bool)

(assert (=> bm!117643 m!2341807))

(assert (=> b!1908732 m!2341803))

(declare-fun m!2341809 () Bool)

(assert (=> b!1908732 m!2341809))

(assert (=> b!1908732 m!2340443))

(declare-fun m!2341811 () Bool)

(assert (=> d!583996 m!2341811))

(assert (=> d!583996 m!2340447))

(assert (=> d!583996 m!2340449))

(declare-fun m!2341813 () Bool)

(assert (=> d!583996 m!2341813))

(assert (=> b!1908734 m!2341803))

(declare-fun m!2341815 () Bool)

(assert (=> b!1908734 m!2341815))

(assert (=> b!1908734 m!2341815))

(declare-fun m!2341817 () Bool)

(assert (=> b!1908734 m!2341817))

(assert (=> b!1908729 m!2341803))

(declare-fun m!2341819 () Bool)

(assert (=> b!1908729 m!2341819))

(assert (=> b!1908729 m!2341819))

(declare-fun m!2341821 () Bool)

(assert (=> b!1908729 m!2341821))

(assert (=> b!1908729 m!2341821))

(declare-fun m!2341823 () Bool)

(assert (=> b!1908729 m!2341823))

(assert (=> b!1908728 m!2341803))

(assert (=> b!1908728 m!2341819))

(assert (=> b!1908728 m!2341819))

(assert (=> b!1908728 m!2341821))

(assert (=> b!1908728 m!2341821))

(declare-fun m!2341825 () Bool)

(assert (=> b!1908728 m!2341825))

(assert (=> b!1908735 m!2341803))

(assert (=> b!1908735 m!2341819))

(assert (=> b!1908735 m!2341819))

(assert (=> b!1908735 m!2341821))

(declare-fun m!2341827 () Bool)

(assert (=> b!1908730 m!2341827))

(assert (=> b!1907682 d!583996))

(declare-fun d!583998 () Bool)

(declare-fun res!852267 () Bool)

(declare-fun e!1219111 () Bool)

(assert (=> d!583998 (=> res!852267 e!1219111)))

(assert (=> d!583998 (= res!852267 (not ((_ is Cons!21485) (t!177702 rules!3198))))))

(assert (=> d!583998 (= (sepAndNonSepRulesDisjointChars!924 rules!3198 (t!177702 rules!3198)) e!1219111)))

(declare-fun b!1908737 () Bool)

(declare-fun e!1219112 () Bool)

(assert (=> b!1908737 (= e!1219111 e!1219112)))

(declare-fun res!852268 () Bool)

(assert (=> b!1908737 (=> (not res!852268) (not e!1219112))))

(assert (=> b!1908737 (= res!852268 (ruleDisjointCharsFromAllFromOtherType!430 (h!26886 (t!177702 rules!3198)) rules!3198))))

(declare-fun b!1908738 () Bool)

(assert (=> b!1908738 (= e!1219112 (sepAndNonSepRulesDisjointChars!924 rules!3198 (t!177702 (t!177702 rules!3198))))))

(assert (= (and d!583998 (not res!852267)) b!1908737))

(assert (= (and b!1908737 res!852268) b!1908738))

(declare-fun m!2341829 () Bool)

(assert (=> b!1908737 m!2341829))

(declare-fun m!2341831 () Bool)

(assert (=> b!1908738 m!2341831))

(assert (=> b!1908017 d!583998))

(declare-fun lt!729686 () List!21565)

(declare-fun e!1219113 () Bool)

(declare-fun b!1908742 () Bool)

(assert (=> b!1908742 (= e!1219113 (or (not (= lt!729325 Nil!21483)) (= lt!729686 (t!177700 lt!729326))))))

(declare-fun b!1908740 () Bool)

(declare-fun e!1219114 () List!21565)

(assert (=> b!1908740 (= e!1219114 (Cons!21483 (h!26884 (t!177700 lt!729326)) (++!5773 (t!177700 (t!177700 lt!729326)) lt!729325)))))

(declare-fun d!584000 () Bool)

(assert (=> d!584000 e!1219113))

(declare-fun res!852270 () Bool)

(assert (=> d!584000 (=> (not res!852270) (not e!1219113))))

(assert (=> d!584000 (= res!852270 (= (content!3147 lt!729686) ((_ map or) (content!3147 (t!177700 lt!729326)) (content!3147 lt!729325))))))

(assert (=> d!584000 (= lt!729686 e!1219114)))

(declare-fun c!311045 () Bool)

(assert (=> d!584000 (= c!311045 ((_ is Nil!21483) (t!177700 lt!729326)))))

(assert (=> d!584000 (= (++!5773 (t!177700 lt!729326) lt!729325) lt!729686)))

(declare-fun b!1908739 () Bool)

(assert (=> b!1908739 (= e!1219114 lt!729325)))

(declare-fun b!1908741 () Bool)

(declare-fun res!852269 () Bool)

(assert (=> b!1908741 (=> (not res!852269) (not e!1219113))))

(assert (=> b!1908741 (= res!852269 (= (size!16947 lt!729686) (+ (size!16947 (t!177700 lt!729326)) (size!16947 lt!729325))))))

(assert (= (and d!584000 c!311045) b!1908739))

(assert (= (and d!584000 (not c!311045)) b!1908740))

(assert (= (and d!584000 res!852270) b!1908741))

(assert (= (and b!1908741 res!852269) b!1908742))

(declare-fun m!2341833 () Bool)

(assert (=> b!1908740 m!2341833))

(declare-fun m!2341835 () Bool)

(assert (=> d!584000 m!2341835))

(assert (=> d!584000 m!2341561))

(assert (=> d!584000 m!2340529))

(declare-fun m!2341837 () Bool)

(assert (=> b!1908741 m!2341837))

(declare-fun m!2341839 () Bool)

(assert (=> b!1908741 m!2341839))

(assert (=> b!1908741 m!2340533))

(assert (=> b!1908087 d!584000))

(declare-fun d!584002 () Bool)

(assert (=> d!584002 (= (isEmpty!13197 lt!729326) ((_ is Nil!21483) lt!729326))))

(assert (=> d!583642 d!584002))

(assert (=> d!583642 d!583882))

(declare-fun d!584004 () Bool)

(declare-fun c!311046 () Bool)

(assert (=> d!584004 (= c!311046 ((_ is Nil!21483) (usedCharacters!334 (regex!3826 (rule!6023 separatorToken!354)))))))

(declare-fun e!1219115 () (InoxSet C!10648))

(assert (=> d!584004 (= (content!3147 (usedCharacters!334 (regex!3826 (rule!6023 separatorToken!354)))) e!1219115)))

(declare-fun b!1908743 () Bool)

(assert (=> b!1908743 (= e!1219115 ((as const (Array C!10648 Bool)) false))))

(declare-fun b!1908744 () Bool)

(assert (=> b!1908744 (= e!1219115 ((_ map or) (store ((as const (Array C!10648 Bool)) false) (h!26884 (usedCharacters!334 (regex!3826 (rule!6023 separatorToken!354)))) true) (content!3147 (t!177700 (usedCharacters!334 (regex!3826 (rule!6023 separatorToken!354)))))))))

(assert (= (and d!584004 c!311046) b!1908743))

(assert (= (and d!584004 (not c!311046)) b!1908744))

(declare-fun m!2341841 () Bool)

(assert (=> b!1908744 m!2341841))

(declare-fun m!2341843 () Bool)

(assert (=> b!1908744 m!2341843))

(assert (=> d!583696 d!584004))

(declare-fun b!1908745 () Bool)

(declare-fun res!852278 () Bool)

(declare-fun e!1219117 () Bool)

(assert (=> b!1908745 (=> res!852278 e!1219117)))

(declare-fun e!1219122 () Bool)

(assert (=> b!1908745 (= res!852278 e!1219122)))

(declare-fun res!852277 () Bool)

(assert (=> b!1908745 (=> (not res!852277) (not e!1219122))))

(declare-fun lt!729687 () Bool)

(assert (=> b!1908745 (= res!852277 lt!729687)))

(declare-fun b!1908746 () Bool)

(declare-fun e!1219121 () Bool)

(assert (=> b!1908746 (= e!1219121 (not lt!729687))))

(declare-fun bm!117644 () Bool)

(declare-fun call!117649 () Bool)

(assert (=> bm!117644 (= call!117649 (isEmpty!13197 (list!8738 (charsOf!2382 (h!26885 tokens!598)))))))

(declare-fun b!1908747 () Bool)

(declare-fun res!852271 () Bool)

(declare-fun e!1219116 () Bool)

(assert (=> b!1908747 (=> res!852271 e!1219116)))

(assert (=> b!1908747 (= res!852271 (not (isEmpty!13197 (tail!2952 (list!8738 (charsOf!2382 (h!26885 tokens!598)))))))))

(declare-fun b!1908748 () Bool)

(declare-fun res!852274 () Bool)

(assert (=> b!1908748 (=> res!852274 e!1219117)))

(assert (=> b!1908748 (= res!852274 (not ((_ is ElementMatch!5251) (regex!3826 (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 (h!26885 tokens!598)))))))))))

(assert (=> b!1908748 (= e!1219121 e!1219117)))

(declare-fun b!1908749 () Bool)

(declare-fun e!1219120 () Bool)

(assert (=> b!1908749 (= e!1219120 (nullable!1595 (regex!3826 (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 (h!26885 tokens!598))))))))))

(declare-fun d!584006 () Bool)

(declare-fun e!1219119 () Bool)

(assert (=> d!584006 e!1219119))

(declare-fun c!311049 () Bool)

(assert (=> d!584006 (= c!311049 ((_ is EmptyExpr!5251) (regex!3826 (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 (h!26885 tokens!598))))))))))

(assert (=> d!584006 (= lt!729687 e!1219120)))

(declare-fun c!311048 () Bool)

(assert (=> d!584006 (= c!311048 (isEmpty!13197 (list!8738 (charsOf!2382 (h!26885 tokens!598)))))))

(assert (=> d!584006 (validRegex!2121 (regex!3826 (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 (h!26885 tokens!598)))))))))

(assert (=> d!584006 (= (matchR!2537 (regex!3826 (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 (h!26885 tokens!598)))))) (list!8738 (charsOf!2382 (h!26885 tokens!598)))) lt!729687)))

(declare-fun b!1908750 () Bool)

(assert (=> b!1908750 (= e!1219119 (= lt!729687 call!117649))))

(declare-fun b!1908751 () Bool)

(declare-fun res!852273 () Bool)

(assert (=> b!1908751 (=> (not res!852273) (not e!1219122))))

(assert (=> b!1908751 (= res!852273 (not call!117649))))

(declare-fun b!1908752 () Bool)

(assert (=> b!1908752 (= e!1219116 (not (= (head!4428 (list!8738 (charsOf!2382 (h!26885 tokens!598)))) (c!310755 (regex!3826 (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 (h!26885 tokens!598))))))))))))

(declare-fun b!1908753 () Bool)

(assert (=> b!1908753 (= e!1219120 (matchR!2537 (derivativeStep!1354 (regex!3826 (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 (h!26885 tokens!598)))))) (head!4428 (list!8738 (charsOf!2382 (h!26885 tokens!598))))) (tail!2952 (list!8738 (charsOf!2382 (h!26885 tokens!598))))))))

(declare-fun b!1908754 () Bool)

(declare-fun e!1219118 () Bool)

(assert (=> b!1908754 (= e!1219117 e!1219118)))

(declare-fun res!852275 () Bool)

(assert (=> b!1908754 (=> (not res!852275) (not e!1219118))))

(assert (=> b!1908754 (= res!852275 (not lt!729687))))

(declare-fun b!1908755 () Bool)

(assert (=> b!1908755 (= e!1219119 e!1219121)))

(declare-fun c!311047 () Bool)

(assert (=> b!1908755 (= c!311047 ((_ is EmptyLang!5251) (regex!3826 (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 (h!26885 tokens!598))))))))))

(declare-fun b!1908756 () Bool)

(assert (=> b!1908756 (= e!1219118 e!1219116)))

(declare-fun res!852276 () Bool)

(assert (=> b!1908756 (=> res!852276 e!1219116)))

(assert (=> b!1908756 (= res!852276 call!117649)))

(declare-fun b!1908757 () Bool)

(declare-fun res!852272 () Bool)

(assert (=> b!1908757 (=> (not res!852272) (not e!1219122))))

(assert (=> b!1908757 (= res!852272 (isEmpty!13197 (tail!2952 (list!8738 (charsOf!2382 (h!26885 tokens!598))))))))

(declare-fun b!1908758 () Bool)

(assert (=> b!1908758 (= e!1219122 (= (head!4428 (list!8738 (charsOf!2382 (h!26885 tokens!598)))) (c!310755 (regex!3826 (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 (h!26885 tokens!598)))))))))))

(assert (= (and d!584006 c!311048) b!1908749))

(assert (= (and d!584006 (not c!311048)) b!1908753))

(assert (= (and d!584006 c!311049) b!1908750))

(assert (= (and d!584006 (not c!311049)) b!1908755))

(assert (= (and b!1908755 c!311047) b!1908746))

(assert (= (and b!1908755 (not c!311047)) b!1908748))

(assert (= (and b!1908748 (not res!852274)) b!1908745))

(assert (= (and b!1908745 res!852277) b!1908751))

(assert (= (and b!1908751 res!852273) b!1908757))

(assert (= (and b!1908757 res!852272) b!1908758))

(assert (= (and b!1908745 (not res!852278)) b!1908754))

(assert (= (and b!1908754 res!852275) b!1908756))

(assert (= (and b!1908756 (not res!852276)) b!1908747))

(assert (= (and b!1908747 (not res!852271)) b!1908752))

(assert (= (or b!1908750 b!1908751 b!1908756) bm!117644))

(assert (=> d!584006 m!2340757))

(declare-fun m!2341845 () Bool)

(assert (=> d!584006 m!2341845))

(declare-fun m!2341847 () Bool)

(assert (=> d!584006 m!2341847))

(declare-fun m!2341849 () Bool)

(assert (=> b!1908749 m!2341849))

(assert (=> b!1908752 m!2340757))

(declare-fun m!2341851 () Bool)

(assert (=> b!1908752 m!2341851))

(assert (=> b!1908757 m!2340757))

(declare-fun m!2341853 () Bool)

(assert (=> b!1908757 m!2341853))

(assert (=> b!1908757 m!2341853))

(declare-fun m!2341855 () Bool)

(assert (=> b!1908757 m!2341855))

(assert (=> bm!117644 m!2340757))

(assert (=> bm!117644 m!2341845))

(assert (=> b!1908753 m!2340757))

(assert (=> b!1908753 m!2341851))

(assert (=> b!1908753 m!2341851))

(declare-fun m!2341857 () Bool)

(assert (=> b!1908753 m!2341857))

(assert (=> b!1908753 m!2340757))

(assert (=> b!1908753 m!2341853))

(assert (=> b!1908753 m!2341857))

(assert (=> b!1908753 m!2341853))

(declare-fun m!2341859 () Bool)

(assert (=> b!1908753 m!2341859))

(assert (=> b!1908758 m!2340757))

(assert (=> b!1908758 m!2341851))

(assert (=> b!1908747 m!2340757))

(assert (=> b!1908747 m!2341853))

(assert (=> b!1908747 m!2341853))

(assert (=> b!1908747 m!2341855))

(assert (=> b!1907898 d!584006))

(declare-fun d!584008 () Bool)

(assert (=> d!584008 (= (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 (h!26885 tokens!598))))) (v!26399 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 (h!26885 tokens!598))))))))

(assert (=> b!1907898 d!584008))

(assert (=> b!1907898 d!583630))

(declare-fun d!584010 () Bool)

(assert (=> d!584010 (= (list!8738 (charsOf!2382 (h!26885 tokens!598))) (list!8741 (c!310756 (charsOf!2382 (h!26885 tokens!598)))))))

(declare-fun bs!414049 () Bool)

(assert (= bs!414049 d!584010))

(declare-fun m!2341861 () Bool)

(assert (=> bs!414049 m!2341861))

(assert (=> b!1907898 d!584010))

(assert (=> b!1907898 d!583612))

(declare-fun d!584012 () Bool)

(assert (=> d!584012 (= (isEmpty!13198 lt!729316) (not ((_ is Some!4356) lt!729316)))))

(assert (=> d!583616 d!584012))

(declare-fun d!584014 () Bool)

(declare-fun lt!729690 () Int)

(assert (=> d!584014 (>= lt!729690 0)))

(declare-fun e!1219125 () Int)

(assert (=> d!584014 (= lt!729690 e!1219125)))

(declare-fun c!311052 () Bool)

(assert (=> d!584014 (= c!311052 ((_ is Nil!21483) lt!729443))))

(assert (=> d!584014 (= (size!16947 lt!729443) lt!729690)))

(declare-fun b!1908763 () Bool)

(assert (=> b!1908763 (= e!1219125 0)))

(declare-fun b!1908764 () Bool)

(assert (=> b!1908764 (= e!1219125 (+ 1 (size!16947 (t!177700 lt!729443))))))

(assert (= (and d!584014 c!311052) b!1908763))

(assert (= (and d!584014 (not c!311052)) b!1908764))

(declare-fun m!2341863 () Bool)

(assert (=> b!1908764 m!2341863))

(assert (=> b!1907767 d!584014))

(declare-fun d!584016 () Bool)

(declare-fun lt!729691 () Int)

(assert (=> d!584016 (>= lt!729691 0)))

(declare-fun e!1219126 () Int)

(assert (=> d!584016 (= lt!729691 e!1219126)))

(declare-fun c!311053 () Bool)

(assert (=> d!584016 (= c!311053 ((_ is Nil!21483) lt!729332))))

(assert (=> d!584016 (= (size!16947 lt!729332) lt!729691)))

(declare-fun b!1908765 () Bool)

(assert (=> b!1908765 (= e!1219126 0)))

(declare-fun b!1908766 () Bool)

(assert (=> b!1908766 (= e!1219126 (+ 1 (size!16947 (t!177700 lt!729332))))))

(assert (= (and d!584016 c!311053) b!1908765))

(assert (= (and d!584016 (not c!311053)) b!1908766))

(declare-fun m!2341865 () Bool)

(assert (=> b!1908766 m!2341865))

(assert (=> b!1907767 d!584016))

(declare-fun d!584018 () Bool)

(declare-fun lt!729692 () Int)

(assert (=> d!584018 (>= lt!729692 0)))

(declare-fun e!1219127 () Int)

(assert (=> d!584018 (= lt!729692 e!1219127)))

(declare-fun c!311054 () Bool)

(assert (=> d!584018 (= c!311054 ((_ is Nil!21483) lt!729325))))

(assert (=> d!584018 (= (size!16947 lt!729325) lt!729692)))

(declare-fun b!1908767 () Bool)

(assert (=> b!1908767 (= e!1219127 0)))

(declare-fun b!1908768 () Bool)

(assert (=> b!1908768 (= e!1219127 (+ 1 (size!16947 (t!177700 lt!729325))))))

(assert (= (and d!584018 c!311054) b!1908767))

(assert (= (and d!584018 (not c!311054)) b!1908768))

(declare-fun m!2341867 () Bool)

(assert (=> b!1908768 m!2341867))

(assert (=> b!1907767 d!584018))

(assert (=> b!1908057 d!583686))

(assert (=> b!1907686 d!583982))

(assert (=> b!1907686 d!583984))

(assert (=> b!1907686 d!583980))

(declare-fun d!584020 () Bool)

(assert (=> d!584020 (= (inv!28592 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323))) (isBalanced!2242 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323)))))))

(declare-fun bs!414050 () Bool)

(assert (= bs!414050 d!584020))

(declare-fun m!2341869 () Bool)

(assert (=> bs!414050 m!2341869))

(assert (=> tb!116707 d!584020))

(declare-fun d!584022 () Bool)

(declare-fun lt!729727 () Bool)

(assert (=> d!584022 (= lt!729727 (isEmpty!13197 (list!8738 (_2!11581 lt!729511))))))

(declare-fun isEmpty!13204 (Conc!7145) Bool)

(assert (=> d!584022 (= lt!729727 (isEmpty!13204 (c!310756 (_2!11581 lt!729511))))))

(assert (=> d!584022 (= (isEmpty!13200 (_2!11581 lt!729511)) lt!729727)))

(declare-fun bs!414051 () Bool)

(assert (= bs!414051 d!584022))

(declare-fun m!2341871 () Bool)

(assert (=> bs!414051 m!2341871))

(assert (=> bs!414051 m!2341871))

(declare-fun m!2341873 () Bool)

(assert (=> bs!414051 m!2341873))

(declare-fun m!2341875 () Bool)

(assert (=> bs!414051 m!2341875))

(assert (=> b!1908009 d!584022))

(declare-fun lt!729730 () BalanceConc!14106)

(declare-fun d!584024 () Bool)

(assert (=> d!584024 (= (list!8738 lt!729730) (originalCharacters!4633 (ite c!310816 (h!26885 (t!177701 tokens!598)) (ite c!310814 separatorToken!354 (h!26885 (t!177701 tokens!598))))))))

(assert (=> d!584024 (= lt!729730 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (ite c!310816 (h!26885 (t!177701 tokens!598)) (ite c!310814 separatorToken!354 (h!26885 (t!177701 tokens!598))))))) (value!120632 (ite c!310816 (h!26885 (t!177701 tokens!598)) (ite c!310814 separatorToken!354 (h!26885 (t!177701 tokens!598)))))))))

(assert (=> d!584024 (= (charsOf!2382 (ite c!310816 (h!26885 (t!177701 tokens!598)) (ite c!310814 separatorToken!354 (h!26885 (t!177701 tokens!598))))) lt!729730)))

(declare-fun b_lambda!63139 () Bool)

(assert (=> (not b_lambda!63139) (not d!584024)))

(declare-fun tb!116845 () Bool)

(declare-fun t!177899 () Bool)

(assert (=> (and b!1908146 (= (toChars!5310 (transformation!3826 (h!26886 (t!177702 rules!3198)))) (toChars!5310 (transformation!3826 (rule!6023 (ite c!310816 (h!26885 (t!177701 tokens!598)) (ite c!310814 separatorToken!354 (h!26885 (t!177701 tokens!598)))))))) t!177899) tb!116845))

(declare-fun e!1219132 () Bool)

(declare-fun b!1908777 () Bool)

(declare-fun tp!544689 () Bool)

(assert (=> b!1908777 (= e!1219132 (and (inv!28591 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (ite c!310816 (h!26885 (t!177701 tokens!598)) (ite c!310814 separatorToken!354 (h!26885 (t!177701 tokens!598))))))) (value!120632 (ite c!310816 (h!26885 (t!177701 tokens!598)) (ite c!310814 separatorToken!354 (h!26885 (t!177701 tokens!598)))))))) tp!544689))))

(declare-fun result!141200 () Bool)

(assert (=> tb!116845 (= result!141200 (and (inv!28592 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (ite c!310816 (h!26885 (t!177701 tokens!598)) (ite c!310814 separatorToken!354 (h!26885 (t!177701 tokens!598))))))) (value!120632 (ite c!310816 (h!26885 (t!177701 tokens!598)) (ite c!310814 separatorToken!354 (h!26885 (t!177701 tokens!598))))))) e!1219132))))

(assert (= tb!116845 b!1908777))

(declare-fun m!2341877 () Bool)

(assert (=> b!1908777 m!2341877))

(declare-fun m!2341879 () Bool)

(assert (=> tb!116845 m!2341879))

(assert (=> d!584024 t!177899))

(declare-fun b_and!148503 () Bool)

(assert (= b_and!148495 (and (=> t!177899 result!141200) b_and!148503)))

(declare-fun tb!116847 () Bool)

(declare-fun t!177901 () Bool)

(assert (=> (and b!1908135 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) (toChars!5310 (transformation!3826 (rule!6023 (ite c!310816 (h!26885 (t!177701 tokens!598)) (ite c!310814 separatorToken!354 (h!26885 (t!177701 tokens!598)))))))) t!177901) tb!116847))

(declare-fun result!141202 () Bool)

(assert (= result!141202 result!141200))

(assert (=> d!584024 t!177901))

(declare-fun b_and!148505 () Bool)

(assert (= b_and!148497 (and (=> t!177901 result!141202) b_and!148505)))

(declare-fun tb!116849 () Bool)

(declare-fun t!177903 () Bool)

(assert (=> (and b!1907400 (= (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (toChars!5310 (transformation!3826 (rule!6023 (ite c!310816 (h!26885 (t!177701 tokens!598)) (ite c!310814 separatorToken!354 (h!26885 (t!177701 tokens!598)))))))) t!177903) tb!116849))

(declare-fun result!141204 () Bool)

(assert (= result!141204 result!141200))

(assert (=> d!584024 t!177903))

(declare-fun b_and!148507 () Bool)

(assert (= b_and!148493 (and (=> t!177903 result!141204) b_and!148507)))

(declare-fun t!177905 () Bool)

(declare-fun tb!116851 () Bool)

(assert (=> (and b!1907387 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (toChars!5310 (transformation!3826 (rule!6023 (ite c!310816 (h!26885 (t!177701 tokens!598)) (ite c!310814 separatorToken!354 (h!26885 (t!177701 tokens!598)))))))) t!177905) tb!116851))

(declare-fun result!141206 () Bool)

(assert (= result!141206 result!141200))

(assert (=> d!584024 t!177905))

(declare-fun b_and!148509 () Bool)

(assert (= b_and!148501 (and (=> t!177905 result!141206) b_and!148509)))

(declare-fun t!177907 () Bool)

(declare-fun tb!116853 () Bool)

(assert (=> (and b!1907389 (= (toChars!5310 (transformation!3826 (h!26886 rules!3198))) (toChars!5310 (transformation!3826 (rule!6023 (ite c!310816 (h!26885 (t!177701 tokens!598)) (ite c!310814 separatorToken!354 (h!26885 (t!177701 tokens!598)))))))) t!177907) tb!116853))

(declare-fun result!141208 () Bool)

(assert (= result!141208 result!141200))

(assert (=> d!584024 t!177907))

(declare-fun b_and!148511 () Bool)

(assert (= b_and!148499 (and (=> t!177907 result!141208) b_and!148511)))

(declare-fun m!2341881 () Bool)

(assert (=> d!584024 m!2341881))

(declare-fun m!2341883 () Bool)

(assert (=> d!584024 m!2341883))

(assert (=> bm!117531 d!584024))

(declare-fun d!584026 () Bool)

(assert (=> d!584026 (= (isEmpty!13197 lt!729332) ((_ is Nil!21483) lt!729332))))

(assert (=> bm!117558 d!584026))

(declare-fun d!584028 () Bool)

(declare-fun charsToBigInt!1 (List!21564) Int)

(assert (=> d!584028 (= (inv!17 (value!120632 (h!26885 tokens!598))) (= (charsToBigInt!1 (text!28182 (value!120632 (h!26885 tokens!598)))) (value!120624 (value!120632 (h!26885 tokens!598)))))))

(declare-fun bs!414052 () Bool)

(assert (= bs!414052 d!584028))

(declare-fun m!2341885 () Bool)

(assert (=> bs!414052 m!2341885))

(assert (=> b!1908037 d!584028))

(assert (=> d!583694 d!583682))

(declare-fun d!584030 () Bool)

(assert (=> d!584030 (= (++!5773 (++!5773 lt!729332 lt!729326) lt!729325) (++!5773 lt!729332 (++!5773 lt!729326 lt!729325)))))

(assert (=> d!584030 true))

(declare-fun _$52!1206 () Unit!35820)

(assert (=> d!584030 (= (choose!11882 lt!729332 lt!729326 lt!729325) _$52!1206)))

(declare-fun bs!414053 () Bool)

(assert (= bs!414053 d!584030))

(assert (=> bs!414053 m!2340101))

(assert (=> bs!414053 m!2340101))

(assert (=> bs!414053 m!2340103))

(assert (=> bs!414053 m!2340097))

(assert (=> bs!414053 m!2340097))

(assert (=> bs!414053 m!2340099))

(assert (=> d!583694 d!584030))

(assert (=> d!583694 d!583688))

(assert (=> d!583694 d!583690))

(assert (=> d!583694 d!583692))

(declare-fun d!584032 () Bool)

(assert (=> d!584032 (= (inv!28584 (tag!4258 (h!26886 (t!177702 rules!3198)))) (= (mod (str.len (value!120631 (tag!4258 (h!26886 (t!177702 rules!3198))))) 2) 0))))

(assert (=> b!1908145 d!584032))

(declare-fun d!584034 () Bool)

(declare-fun res!852283 () Bool)

(declare-fun e!1219133 () Bool)

(assert (=> d!584034 (=> (not res!852283) (not e!1219133))))

(assert (=> d!584034 (= res!852283 (semiInverseModEq!1545 (toChars!5310 (transformation!3826 (h!26886 (t!177702 rules!3198)))) (toValue!5451 (transformation!3826 (h!26886 (t!177702 rules!3198))))))))

(assert (=> d!584034 (= (inv!28587 (transformation!3826 (h!26886 (t!177702 rules!3198)))) e!1219133)))

(declare-fun b!1908778 () Bool)

(assert (=> b!1908778 (= e!1219133 (equivClasses!1472 (toChars!5310 (transformation!3826 (h!26886 (t!177702 rules!3198)))) (toValue!5451 (transformation!3826 (h!26886 (t!177702 rules!3198))))))))

(assert (= (and d!584034 res!852283) b!1908778))

(declare-fun m!2341887 () Bool)

(assert (=> d!584034 m!2341887))

(declare-fun m!2341889 () Bool)

(assert (=> b!1908778 m!2341889))

(assert (=> b!1908145 d!584034))

(declare-fun b!1908979 () Bool)

(declare-fun res!852371 () Bool)

(declare-fun e!1219250 () Bool)

(assert (=> b!1908979 (=> (not res!852371) (not e!1219250))))

(declare-fun lt!729797 () Option!4358)

(assert (=> b!1908979 (= res!852371 (< (size!16947 (_2!11579 (get!6678 lt!729797))) (size!16947 (++!5773 lt!729332 lt!729325))))))

(declare-fun b!1908980 () Bool)

(declare-fun e!1219253 () Bool)

(assert (=> b!1908980 (= e!1219253 e!1219250)))

(declare-fun res!852376 () Bool)

(assert (=> b!1908980 (=> (not res!852376) (not e!1219250))))

(assert (=> b!1908980 (= res!852376 (matchR!2537 (regex!3826 (h!26886 rules!3198)) (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729797))))))))

(declare-fun b!1908981 () Bool)

(assert (=> b!1908981 (= e!1219250 (= (size!16944 (_1!11579 (get!6678 lt!729797))) (size!16947 (originalCharacters!4633 (_1!11579 (get!6678 lt!729797))))))))

(declare-fun b!1908982 () Bool)

(declare-fun e!1219251 () Option!4358)

(declare-datatypes ((tuple2!20232 0))(
  ( (tuple2!20233 (_1!11585 List!21565) (_2!11585 List!21565)) )
))
(declare-fun lt!729793 () tuple2!20232)

(assert (=> b!1908982 (= e!1219251 (Some!4357 (tuple2!20221 (Token!7205 (apply!5639 (transformation!3826 (h!26886 rules!3198)) (seqFromList!2698 (_1!11585 lt!729793))) (h!26886 rules!3198) (size!16952 (seqFromList!2698 (_1!11585 lt!729793))) (_1!11585 lt!729793)) (_2!11585 lt!729793))))))

(declare-fun lt!729794 () Unit!35820)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!515 (Regex!5251 List!21565) Unit!35820)

(assert (=> b!1908982 (= lt!729794 (longestMatchIsAcceptedByMatchOrIsEmpty!515 (regex!3826 (h!26886 rules!3198)) (++!5773 lt!729332 lt!729325)))))

(declare-fun res!852372 () Bool)

(declare-fun findLongestMatchInner!531 (Regex!5251 List!21565 Int List!21565 List!21565 Int) tuple2!20232)

(assert (=> b!1908982 (= res!852372 (isEmpty!13197 (_1!11585 (findLongestMatchInner!531 (regex!3826 (h!26886 rules!3198)) Nil!21483 (size!16947 Nil!21483) (++!5773 lt!729332 lt!729325) (++!5773 lt!729332 lt!729325) (size!16947 (++!5773 lt!729332 lt!729325))))))))

(declare-fun e!1219252 () Bool)

(assert (=> b!1908982 (=> res!852372 e!1219252)))

(assert (=> b!1908982 e!1219252))

(declare-fun lt!729795 () Unit!35820)

(assert (=> b!1908982 (= lt!729795 lt!729794)))

(declare-fun lt!729796 () Unit!35820)

(assert (=> b!1908982 (= lt!729796 (lemmaSemiInverse!805 (transformation!3826 (h!26886 rules!3198)) (seqFromList!2698 (_1!11585 lt!729793))))))

(declare-fun d!584036 () Bool)

(assert (=> d!584036 e!1219253))

(declare-fun res!852375 () Bool)

(assert (=> d!584036 (=> res!852375 e!1219253)))

(assert (=> d!584036 (= res!852375 (isEmpty!13199 lt!729797))))

(assert (=> d!584036 (= lt!729797 e!1219251)))

(declare-fun c!311108 () Bool)

(assert (=> d!584036 (= c!311108 (isEmpty!13197 (_1!11585 lt!729793)))))

(declare-fun findLongestMatch!458 (Regex!5251 List!21565) tuple2!20232)

(assert (=> d!584036 (= lt!729793 (findLongestMatch!458 (regex!3826 (h!26886 rules!3198)) (++!5773 lt!729332 lt!729325)))))

(declare-fun ruleValid!1159 (LexerInterface!3439 Rule!7452) Bool)

(assert (=> d!584036 (ruleValid!1159 thiss!23328 (h!26886 rules!3198))))

(assert (=> d!584036 (= (maxPrefixOneRule!1205 thiss!23328 (h!26886 rules!3198) (++!5773 lt!729332 lt!729325)) lt!729797)))

(declare-fun b!1908983 () Bool)

(assert (=> b!1908983 (= e!1219251 None!4357)))

(declare-fun b!1908984 () Bool)

(declare-fun res!852370 () Bool)

(assert (=> b!1908984 (=> (not res!852370) (not e!1219250))))

(assert (=> b!1908984 (= res!852370 (= (rule!6023 (_1!11579 (get!6678 lt!729797))) (h!26886 rules!3198)))))

(declare-fun b!1908985 () Bool)

(declare-fun res!852373 () Bool)

(assert (=> b!1908985 (=> (not res!852373) (not e!1219250))))

(assert (=> b!1908985 (= res!852373 (= (value!120632 (_1!11579 (get!6678 lt!729797))) (apply!5639 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729797)))) (seqFromList!2698 (originalCharacters!4633 (_1!11579 (get!6678 lt!729797)))))))))

(declare-fun b!1908986 () Bool)

(assert (=> b!1908986 (= e!1219252 (matchR!2537 (regex!3826 (h!26886 rules!3198)) (_1!11585 (findLongestMatchInner!531 (regex!3826 (h!26886 rules!3198)) Nil!21483 (size!16947 Nil!21483) (++!5773 lt!729332 lt!729325) (++!5773 lt!729332 lt!729325) (size!16947 (++!5773 lt!729332 lt!729325))))))))

(declare-fun b!1908987 () Bool)

(declare-fun res!852374 () Bool)

(assert (=> b!1908987 (=> (not res!852374) (not e!1219250))))

(assert (=> b!1908987 (= res!852374 (= (++!5773 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729797)))) (_2!11579 (get!6678 lt!729797))) (++!5773 lt!729332 lt!729325)))))

(assert (= (and d!584036 c!311108) b!1908983))

(assert (= (and d!584036 (not c!311108)) b!1908982))

(assert (= (and b!1908982 (not res!852372)) b!1908986))

(assert (= (and d!584036 (not res!852375)) b!1908980))

(assert (= (and b!1908980 res!852376) b!1908987))

(assert (= (and b!1908987 res!852374) b!1908979))

(assert (= (and b!1908979 res!852371) b!1908984))

(assert (= (and b!1908984 res!852370) b!1908985))

(assert (= (and b!1908985 res!852373) b!1908981))

(declare-fun m!2342187 () Bool)

(assert (=> b!1908979 m!2342187))

(declare-fun m!2342189 () Bool)

(assert (=> b!1908979 m!2342189))

(assert (=> b!1908979 m!2340129))

(assert (=> b!1908979 m!2340709))

(declare-fun m!2342191 () Bool)

(assert (=> b!1908982 m!2342191))

(declare-fun m!2342193 () Bool)

(assert (=> b!1908982 m!2342193))

(assert (=> b!1908982 m!2342191))

(declare-fun m!2342199 () Bool)

(assert (=> b!1908982 m!2342199))

(assert (=> b!1908982 m!2340129))

(declare-fun m!2342203 () Bool)

(assert (=> b!1908982 m!2342203))

(declare-fun m!2342205 () Bool)

(assert (=> b!1908982 m!2342205))

(assert (=> b!1908982 m!2340129))

(assert (=> b!1908982 m!2340709))

(declare-fun m!2342207 () Bool)

(assert (=> b!1908982 m!2342207))

(assert (=> b!1908982 m!2342191))

(assert (=> b!1908982 m!2342191))

(declare-fun m!2342209 () Bool)

(assert (=> b!1908982 m!2342209))

(assert (=> b!1908982 m!2342207))

(assert (=> b!1908982 m!2340129))

(assert (=> b!1908982 m!2340129))

(assert (=> b!1908982 m!2340709))

(declare-fun m!2342211 () Bool)

(assert (=> b!1908982 m!2342211))

(assert (=> b!1908987 m!2342187))

(declare-fun m!2342213 () Bool)

(assert (=> b!1908987 m!2342213))

(assert (=> b!1908987 m!2342213))

(declare-fun m!2342215 () Bool)

(assert (=> b!1908987 m!2342215))

(assert (=> b!1908987 m!2342215))

(declare-fun m!2342217 () Bool)

(assert (=> b!1908987 m!2342217))

(declare-fun m!2342219 () Bool)

(assert (=> d!584036 m!2342219))

(declare-fun m!2342221 () Bool)

(assert (=> d!584036 m!2342221))

(assert (=> d!584036 m!2340129))

(declare-fun m!2342223 () Bool)

(assert (=> d!584036 m!2342223))

(declare-fun m!2342225 () Bool)

(assert (=> d!584036 m!2342225))

(assert (=> b!1908981 m!2342187))

(declare-fun m!2342227 () Bool)

(assert (=> b!1908981 m!2342227))

(assert (=> b!1908986 m!2342207))

(assert (=> b!1908986 m!2340129))

(assert (=> b!1908986 m!2340709))

(assert (=> b!1908986 m!2342207))

(assert (=> b!1908986 m!2340129))

(assert (=> b!1908986 m!2340129))

(assert (=> b!1908986 m!2340709))

(assert (=> b!1908986 m!2342211))

(declare-fun m!2342229 () Bool)

(assert (=> b!1908986 m!2342229))

(assert (=> b!1908985 m!2342187))

(declare-fun m!2342231 () Bool)

(assert (=> b!1908985 m!2342231))

(assert (=> b!1908985 m!2342231))

(declare-fun m!2342233 () Bool)

(assert (=> b!1908985 m!2342233))

(assert (=> b!1908984 m!2342187))

(assert (=> b!1908980 m!2342187))

(assert (=> b!1908980 m!2342213))

(assert (=> b!1908980 m!2342213))

(assert (=> b!1908980 m!2342215))

(assert (=> b!1908980 m!2342215))

(declare-fun m!2342235 () Bool)

(assert (=> b!1908980 m!2342235))

(assert (=> bm!117553 d!584036))

(declare-fun b!1909045 () Bool)

(declare-fun res!852384 () Bool)

(declare-fun e!1219281 () Bool)

(assert (=> b!1909045 (=> res!852384 e!1219281)))

(declare-fun e!1219286 () Bool)

(assert (=> b!1909045 (= res!852384 e!1219286)))

(declare-fun res!852383 () Bool)

(assert (=> b!1909045 (=> (not res!852383) (not e!1219286))))

(declare-fun lt!729798 () Bool)

(assert (=> b!1909045 (= res!852383 lt!729798)))

(declare-fun b!1909046 () Bool)

(declare-fun e!1219285 () Bool)

(assert (=> b!1909046 (= e!1219285 (not lt!729798))))

(declare-fun bm!117663 () Bool)

(declare-fun call!117668 () Bool)

(assert (=> bm!117663 (= call!117668 (isEmpty!13197 (tail!2952 lt!729326)))))

(declare-fun b!1909047 () Bool)

(declare-fun res!852377 () Bool)

(declare-fun e!1219280 () Bool)

(assert (=> b!1909047 (=> res!852377 e!1219280)))

(assert (=> b!1909047 (= res!852377 (not (isEmpty!13197 (tail!2952 (tail!2952 lt!729326)))))))

(declare-fun b!1909048 () Bool)

(declare-fun res!852380 () Bool)

(assert (=> b!1909048 (=> res!852380 e!1219281)))

(assert (=> b!1909048 (= res!852380 (not ((_ is ElementMatch!5251) (derivativeStep!1354 (regex!3826 (rule!6023 separatorToken!354)) (head!4428 lt!729326)))))))

(assert (=> b!1909048 (= e!1219285 e!1219281)))

(declare-fun b!1909049 () Bool)

(declare-fun e!1219284 () Bool)

(assert (=> b!1909049 (= e!1219284 (nullable!1595 (derivativeStep!1354 (regex!3826 (rule!6023 separatorToken!354)) (head!4428 lt!729326))))))

(declare-fun d!584160 () Bool)

(declare-fun e!1219283 () Bool)

(assert (=> d!584160 e!1219283))

(declare-fun c!311111 () Bool)

(assert (=> d!584160 (= c!311111 ((_ is EmptyExpr!5251) (derivativeStep!1354 (regex!3826 (rule!6023 separatorToken!354)) (head!4428 lt!729326))))))

(assert (=> d!584160 (= lt!729798 e!1219284)))

(declare-fun c!311110 () Bool)

(assert (=> d!584160 (= c!311110 (isEmpty!13197 (tail!2952 lt!729326)))))

(assert (=> d!584160 (validRegex!2121 (derivativeStep!1354 (regex!3826 (rule!6023 separatorToken!354)) (head!4428 lt!729326)))))

(assert (=> d!584160 (= (matchR!2537 (derivativeStep!1354 (regex!3826 (rule!6023 separatorToken!354)) (head!4428 lt!729326)) (tail!2952 lt!729326)) lt!729798)))

(declare-fun b!1909050 () Bool)

(assert (=> b!1909050 (= e!1219283 (= lt!729798 call!117668))))

(declare-fun b!1909051 () Bool)

(declare-fun res!852379 () Bool)

(assert (=> b!1909051 (=> (not res!852379) (not e!1219286))))

(assert (=> b!1909051 (= res!852379 (not call!117668))))

(declare-fun b!1909052 () Bool)

(assert (=> b!1909052 (= e!1219280 (not (= (head!4428 (tail!2952 lt!729326)) (c!310755 (derivativeStep!1354 (regex!3826 (rule!6023 separatorToken!354)) (head!4428 lt!729326))))))))

(declare-fun b!1909053 () Bool)

(assert (=> b!1909053 (= e!1219284 (matchR!2537 (derivativeStep!1354 (derivativeStep!1354 (regex!3826 (rule!6023 separatorToken!354)) (head!4428 lt!729326)) (head!4428 (tail!2952 lt!729326))) (tail!2952 (tail!2952 lt!729326))))))

(declare-fun b!1909054 () Bool)

(declare-fun e!1219282 () Bool)

(assert (=> b!1909054 (= e!1219281 e!1219282)))

(declare-fun res!852381 () Bool)

(assert (=> b!1909054 (=> (not res!852381) (not e!1219282))))

(assert (=> b!1909054 (= res!852381 (not lt!729798))))

(declare-fun b!1909055 () Bool)

(assert (=> b!1909055 (= e!1219283 e!1219285)))

(declare-fun c!311109 () Bool)

(assert (=> b!1909055 (= c!311109 ((_ is EmptyLang!5251) (derivativeStep!1354 (regex!3826 (rule!6023 separatorToken!354)) (head!4428 lt!729326))))))

(declare-fun b!1909056 () Bool)

(assert (=> b!1909056 (= e!1219282 e!1219280)))

(declare-fun res!852382 () Bool)

(assert (=> b!1909056 (=> res!852382 e!1219280)))

(assert (=> b!1909056 (= res!852382 call!117668)))

(declare-fun b!1909057 () Bool)

(declare-fun res!852378 () Bool)

(assert (=> b!1909057 (=> (not res!852378) (not e!1219286))))

(assert (=> b!1909057 (= res!852378 (isEmpty!13197 (tail!2952 (tail!2952 lt!729326))))))

(declare-fun b!1909058 () Bool)

(assert (=> b!1909058 (= e!1219286 (= (head!4428 (tail!2952 lt!729326)) (c!310755 (derivativeStep!1354 (regex!3826 (rule!6023 separatorToken!354)) (head!4428 lt!729326)))))))

(assert (= (and d!584160 c!311110) b!1909049))

(assert (= (and d!584160 (not c!311110)) b!1909053))

(assert (= (and d!584160 c!311111) b!1909050))

(assert (= (and d!584160 (not c!311111)) b!1909055))

(assert (= (and b!1909055 c!311109) b!1909046))

(assert (= (and b!1909055 (not c!311109)) b!1909048))

(assert (= (and b!1909048 (not res!852380)) b!1909045))

(assert (= (and b!1909045 res!852383) b!1909051))

(assert (= (and b!1909051 res!852379) b!1909057))

(assert (= (and b!1909057 res!852378) b!1909058))

(assert (= (and b!1909045 (not res!852384)) b!1909054))

(assert (= (and b!1909054 res!852381) b!1909056))

(assert (= (and b!1909056 (not res!852382)) b!1909047))

(assert (= (and b!1909047 (not res!852377)) b!1909052))

(assert (= (or b!1909050 b!1909051 b!1909056) bm!117663))

(assert (=> d!584160 m!2340777))

(assert (=> d!584160 m!2340779))

(assert (=> d!584160 m!2340781))

(declare-fun m!2342237 () Bool)

(assert (=> d!584160 m!2342237))

(assert (=> b!1909049 m!2340781))

(declare-fun m!2342239 () Bool)

(assert (=> b!1909049 m!2342239))

(assert (=> b!1909052 m!2340777))

(assert (=> b!1909052 m!2341767))

(assert (=> b!1909057 m!2340777))

(assert (=> b!1909057 m!2341769))

(assert (=> b!1909057 m!2341769))

(assert (=> b!1909057 m!2341771))

(assert (=> bm!117663 m!2340777))

(assert (=> bm!117663 m!2340779))

(assert (=> b!1909053 m!2340777))

(assert (=> b!1909053 m!2341767))

(assert (=> b!1909053 m!2340781))

(assert (=> b!1909053 m!2341767))

(declare-fun m!2342241 () Bool)

(assert (=> b!1909053 m!2342241))

(assert (=> b!1909053 m!2340777))

(assert (=> b!1909053 m!2341769))

(assert (=> b!1909053 m!2342241))

(assert (=> b!1909053 m!2341769))

(declare-fun m!2342243 () Bool)

(assert (=> b!1909053 m!2342243))

(assert (=> b!1909058 m!2340777))

(assert (=> b!1909058 m!2341767))

(assert (=> b!1909047 m!2340777))

(assert (=> b!1909047 m!2341769))

(assert (=> b!1909047 m!2341769))

(assert (=> b!1909047 m!2341771))

(assert (=> b!1907973 d!584160))

(declare-fun bm!117664 () Bool)

(declare-fun call!117671 () Regex!5251)

(declare-fun call!117669 () Regex!5251)

(assert (=> bm!117664 (= call!117671 call!117669)))

(declare-fun bm!117665 () Bool)

(declare-fun call!117670 () Regex!5251)

(declare-fun call!117672 () Regex!5251)

(assert (=> bm!117665 (= call!117670 call!117672)))

(declare-fun b!1909059 () Bool)

(declare-fun e!1219289 () Regex!5251)

(assert (=> b!1909059 (= e!1219289 (Concat!9214 call!117670 (regex!3826 (rule!6023 separatorToken!354))))))

(declare-fun b!1909060 () Bool)

(declare-fun e!1219290 () Regex!5251)

(assert (=> b!1909060 (= e!1219290 EmptyLang!5251)))

(declare-fun e!1219287 () Regex!5251)

(declare-fun b!1909061 () Bool)

(assert (=> b!1909061 (= e!1219287 (Union!5251 (Concat!9214 call!117670 (regTwo!11014 (regex!3826 (rule!6023 separatorToken!354)))) call!117671))))

(declare-fun bm!117666 () Bool)

(declare-fun c!311113 () Bool)

(declare-fun c!311116 () Bool)

(assert (=> bm!117666 (= call!117669 (derivativeStep!1354 (ite c!311116 (regTwo!11015 (regex!3826 (rule!6023 separatorToken!354))) (ite c!311113 (regTwo!11014 (regex!3826 (rule!6023 separatorToken!354))) (regOne!11014 (regex!3826 (rule!6023 separatorToken!354))))) (head!4428 lt!729326)))))

(declare-fun b!1909062 () Bool)

(declare-fun e!1219291 () Regex!5251)

(assert (=> b!1909062 (= e!1219291 (Union!5251 call!117672 call!117669))))

(declare-fun b!1909063 () Bool)

(declare-fun e!1219288 () Regex!5251)

(assert (=> b!1909063 (= e!1219288 (ite (= (head!4428 lt!729326) (c!310755 (regex!3826 (rule!6023 separatorToken!354)))) EmptyExpr!5251 EmptyLang!5251))))

(declare-fun b!1909064 () Bool)

(assert (=> b!1909064 (= e!1219290 e!1219288)))

(declare-fun c!311115 () Bool)

(assert (=> b!1909064 (= c!311115 ((_ is ElementMatch!5251) (regex!3826 (rule!6023 separatorToken!354))))))

(declare-fun d!584162 () Bool)

(declare-fun lt!729799 () Regex!5251)

(assert (=> d!584162 (validRegex!2121 lt!729799)))

(assert (=> d!584162 (= lt!729799 e!1219290)))

(declare-fun c!311112 () Bool)

(assert (=> d!584162 (= c!311112 (or ((_ is EmptyExpr!5251) (regex!3826 (rule!6023 separatorToken!354))) ((_ is EmptyLang!5251) (regex!3826 (rule!6023 separatorToken!354)))))))

(assert (=> d!584162 (validRegex!2121 (regex!3826 (rule!6023 separatorToken!354)))))

(assert (=> d!584162 (= (derivativeStep!1354 (regex!3826 (rule!6023 separatorToken!354)) (head!4428 lt!729326)) lt!729799)))

(declare-fun b!1909065 () Bool)

(assert (=> b!1909065 (= e!1219291 e!1219289)))

(declare-fun c!311114 () Bool)

(assert (=> b!1909065 (= c!311114 ((_ is Star!5251) (regex!3826 (rule!6023 separatorToken!354))))))

(declare-fun b!1909066 () Bool)

(assert (=> b!1909066 (= c!311113 (nullable!1595 (regOne!11014 (regex!3826 (rule!6023 separatorToken!354)))))))

(assert (=> b!1909066 (= e!1219289 e!1219287)))

(declare-fun b!1909067 () Bool)

(assert (=> b!1909067 (= e!1219287 (Union!5251 (Concat!9214 call!117671 (regTwo!11014 (regex!3826 (rule!6023 separatorToken!354)))) EmptyLang!5251))))

(declare-fun bm!117667 () Bool)

(assert (=> bm!117667 (= call!117672 (derivativeStep!1354 (ite c!311116 (regOne!11015 (regex!3826 (rule!6023 separatorToken!354))) (ite c!311114 (reg!5580 (regex!3826 (rule!6023 separatorToken!354))) (regOne!11014 (regex!3826 (rule!6023 separatorToken!354))))) (head!4428 lt!729326)))))

(declare-fun b!1909068 () Bool)

(assert (=> b!1909068 (= c!311116 ((_ is Union!5251) (regex!3826 (rule!6023 separatorToken!354))))))

(assert (=> b!1909068 (= e!1219288 e!1219291)))

(assert (= (and d!584162 c!311112) b!1909060))

(assert (= (and d!584162 (not c!311112)) b!1909064))

(assert (= (and b!1909064 c!311115) b!1909063))

(assert (= (and b!1909064 (not c!311115)) b!1909068))

(assert (= (and b!1909068 c!311116) b!1909062))

(assert (= (and b!1909068 (not c!311116)) b!1909065))

(assert (= (and b!1909065 c!311114) b!1909059))

(assert (= (and b!1909065 (not c!311114)) b!1909066))

(assert (= (and b!1909066 c!311113) b!1909061))

(assert (= (and b!1909066 (not c!311113)) b!1909067))

(assert (= (or b!1909061 b!1909067) bm!117664))

(assert (= (or b!1909059 b!1909061) bm!117665))

(assert (= (or b!1909062 bm!117665) bm!117667))

(assert (= (or b!1909062 bm!117664) bm!117666))

(assert (=> bm!117666 m!2340109))

(declare-fun m!2342249 () Bool)

(assert (=> bm!117666 m!2342249))

(declare-fun m!2342251 () Bool)

(assert (=> d!584162 m!2342251))

(assert (=> d!584162 m!2340763))

(declare-fun m!2342253 () Bool)

(assert (=> b!1909066 m!2342253))

(assert (=> bm!117667 m!2340109))

(declare-fun m!2342255 () Bool)

(assert (=> bm!117667 m!2342255))

(assert (=> b!1907973 d!584162))

(assert (=> b!1907973 d!583686))

(assert (=> b!1907973 d!583990))

(declare-fun bs!414082 () Bool)

(declare-fun d!584164 () Bool)

(assert (= bs!414082 (and d!584164 d!583584)))

(declare-fun lambda!74563 () Int)

(assert (=> bs!414082 (= (= (toValue!5451 (transformation!3826 (rule!6023 separatorToken!354))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) (= lambda!74563 lambda!74533))))

(assert (=> d!584164 true))

(assert (=> d!584164 (< (dynLambda!10478 order!13587 (toValue!5451 (transformation!3826 (rule!6023 separatorToken!354)))) (dynLambda!10482 order!13595 lambda!74563))))

(declare-fun Forall2!621 (Int) Bool)

(assert (=> d!584164 (= (equivClasses!1472 (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (toValue!5451 (transformation!3826 (rule!6023 separatorToken!354)))) (Forall2!621 lambda!74563))))

(declare-fun bs!414083 () Bool)

(assert (= bs!414083 d!584164))

(declare-fun m!2342265 () Bool)

(assert (=> bs!414083 m!2342265))

(assert (=> b!1908011 d!584164))

(declare-fun d!584170 () Bool)

(declare-fun res!852387 () Bool)

(declare-fun e!1219308 () Bool)

(assert (=> d!584170 (=> (not res!852387) (not e!1219308))))

(assert (=> d!584170 (= res!852387 (rulesValid!1432 thiss!23328 (t!177702 rules!3198)))))

(assert (=> d!584170 (= (rulesInvariant!3046 thiss!23328 (t!177702 rules!3198)) e!1219308)))

(declare-fun b!1909106 () Bool)

(assert (=> b!1909106 (= e!1219308 (noDuplicateTag!1430 thiss!23328 (t!177702 rules!3198) Nil!21487))))

(assert (= (and d!584170 res!852387) b!1909106))

(declare-fun m!2342267 () Bool)

(assert (=> d!584170 m!2342267))

(declare-fun m!2342269 () Bool)

(assert (=> b!1909106 m!2342269))

(assert (=> b!1907837 d!584170))

(declare-fun d!584178 () Bool)

(assert (=> d!584178 (rulesInvariant!3046 thiss!23328 (t!177702 rules!3198))))

(declare-fun lt!729802 () Unit!35820)

(declare-fun choose!11886 (LexerInterface!3439 Rule!7452 List!21567) Unit!35820)

(assert (=> d!584178 (= lt!729802 (choose!11886 thiss!23328 (h!26886 rules!3198) (t!177702 rules!3198)))))

(assert (=> d!584178 (rulesInvariant!3046 thiss!23328 (Cons!21485 (h!26886 rules!3198) (t!177702 rules!3198)))))

(assert (=> d!584178 (= (lemmaInvariantOnRulesThenOnTail!256 thiss!23328 (h!26886 rules!3198) (t!177702 rules!3198)) lt!729802)))

(declare-fun bs!414087 () Bool)

(assert (= bs!414087 d!584178))

(assert (=> bs!414087 m!2340653))

(declare-fun m!2342271 () Bool)

(assert (=> bs!414087 m!2342271))

(declare-fun m!2342273 () Bool)

(assert (=> bs!414087 m!2342273))

(assert (=> b!1907837 d!584178))

(declare-fun b!1909108 () Bool)

(declare-fun lt!729803 () Unit!35820)

(declare-fun lt!729805 () Unit!35820)

(assert (=> b!1909108 (= lt!729803 lt!729805)))

(assert (=> b!1909108 (rulesInvariant!3046 thiss!23328 (t!177702 (t!177702 rules!3198)))))

(assert (=> b!1909108 (= lt!729805 (lemmaInvariantOnRulesThenOnTail!256 thiss!23328 (h!26886 (t!177702 rules!3198)) (t!177702 (t!177702 rules!3198))))))

(declare-fun e!1219310 () Option!4357)

(assert (=> b!1909108 (= e!1219310 (getRuleFromTag!669 thiss!23328 (t!177702 (t!177702 rules!3198)) (tag!4258 (rule!6023 (h!26885 tokens!598)))))))

(declare-fun b!1909110 () Bool)

(declare-fun e!1219313 () Bool)

(declare-fun e!1219312 () Bool)

(assert (=> b!1909110 (= e!1219313 e!1219312)))

(declare-fun res!852390 () Bool)

(assert (=> b!1909110 (=> (not res!852390) (not e!1219312))))

(declare-fun lt!729804 () Option!4357)

(assert (=> b!1909110 (= res!852390 (contains!3865 (t!177702 rules!3198) (get!6677 lt!729804)))))

(declare-fun b!1909111 () Bool)

(declare-fun e!1219311 () Option!4357)

(assert (=> b!1909111 (= e!1219311 (Some!4356 (h!26886 (t!177702 rules!3198))))))

(declare-fun b!1909112 () Bool)

(assert (=> b!1909112 (= e!1219310 None!4356)))

(declare-fun b!1909113 () Bool)

(assert (=> b!1909113 (= e!1219312 (= (tag!4258 (get!6677 lt!729804)) (tag!4258 (rule!6023 (h!26885 tokens!598)))))))

(declare-fun b!1909109 () Bool)

(assert (=> b!1909109 (= e!1219311 e!1219310)))

(declare-fun c!311117 () Bool)

(assert (=> b!1909109 (= c!311117 (and ((_ is Cons!21485) (t!177702 rules!3198)) (not (= (tag!4258 (h!26886 (t!177702 rules!3198))) (tag!4258 (rule!6023 (h!26885 tokens!598)))))))))

(declare-fun d!584180 () Bool)

(assert (=> d!584180 e!1219313))

(declare-fun res!852389 () Bool)

(assert (=> d!584180 (=> res!852389 e!1219313)))

(assert (=> d!584180 (= res!852389 (isEmpty!13198 lt!729804))))

(assert (=> d!584180 (= lt!729804 e!1219311)))

(declare-fun c!311118 () Bool)

(assert (=> d!584180 (= c!311118 (and ((_ is Cons!21485) (t!177702 rules!3198)) (= (tag!4258 (h!26886 (t!177702 rules!3198))) (tag!4258 (rule!6023 (h!26885 tokens!598))))))))

(assert (=> d!584180 (rulesInvariant!3046 thiss!23328 (t!177702 rules!3198))))

(assert (=> d!584180 (= (getRuleFromTag!669 thiss!23328 (t!177702 rules!3198) (tag!4258 (rule!6023 (h!26885 tokens!598)))) lt!729804)))

(assert (= (and d!584180 c!311118) b!1909111))

(assert (= (and d!584180 (not c!311118)) b!1909109))

(assert (= (and b!1909109 c!311117) b!1909108))

(assert (= (and b!1909109 (not c!311117)) b!1909112))

(assert (= (and d!584180 (not res!852389)) b!1909110))

(assert (= (and b!1909110 res!852390) b!1909113))

(declare-fun m!2342275 () Bool)

(assert (=> b!1909108 m!2342275))

(declare-fun m!2342277 () Bool)

(assert (=> b!1909108 m!2342277))

(declare-fun m!2342279 () Bool)

(assert (=> b!1909108 m!2342279))

(declare-fun m!2342281 () Bool)

(assert (=> b!1909110 m!2342281))

(assert (=> b!1909110 m!2342281))

(declare-fun m!2342283 () Bool)

(assert (=> b!1909110 m!2342283))

(assert (=> b!1909113 m!2342281))

(declare-fun m!2342285 () Bool)

(assert (=> d!584180 m!2342285))

(assert (=> d!584180 m!2340653))

(assert (=> b!1907837 d!584180))

(declare-fun d!584182 () Bool)

(declare-fun c!311119 () Bool)

(assert (=> d!584182 (= c!311119 ((_ is Nil!21483) lt!729515))))

(declare-fun e!1219314 () (InoxSet C!10648))

(assert (=> d!584182 (= (content!3147 lt!729515) e!1219314)))

(declare-fun b!1909114 () Bool)

(assert (=> b!1909114 (= e!1219314 ((as const (Array C!10648 Bool)) false))))

(declare-fun b!1909115 () Bool)

(assert (=> b!1909115 (= e!1219314 ((_ map or) (store ((as const (Array C!10648 Bool)) false) (h!26884 lt!729515) true) (content!3147 (t!177700 lt!729515))))))

(assert (= (and d!584182 c!311119) b!1909114))

(assert (= (and d!584182 (not c!311119)) b!1909115))

(declare-fun m!2342287 () Bool)

(assert (=> b!1909115 m!2342287))

(declare-fun m!2342289 () Bool)

(assert (=> b!1909115 m!2342289))

(assert (=> d!583690 d!584182))

(declare-fun d!584184 () Bool)

(declare-fun c!311120 () Bool)

(assert (=> d!584184 (= c!311120 ((_ is Nil!21483) lt!729332))))

(declare-fun e!1219315 () (InoxSet C!10648))

(assert (=> d!584184 (= (content!3147 lt!729332) e!1219315)))

(declare-fun b!1909116 () Bool)

(assert (=> b!1909116 (= e!1219315 ((as const (Array C!10648 Bool)) false))))

(declare-fun b!1909117 () Bool)

(assert (=> b!1909117 (= e!1219315 ((_ map or) (store ((as const (Array C!10648 Bool)) false) (h!26884 lt!729332) true) (content!3147 (t!177700 lt!729332))))))

(assert (= (and d!584184 c!311120) b!1909116))

(assert (= (and d!584184 (not c!311120)) b!1909117))

(declare-fun m!2342291 () Bool)

(assert (=> b!1909117 m!2342291))

(declare-fun m!2342293 () Bool)

(assert (=> b!1909117 m!2342293))

(assert (=> d!583690 d!584184))

(declare-fun d!584186 () Bool)

(declare-fun c!311121 () Bool)

(assert (=> d!584186 (= c!311121 ((_ is Nil!21483) (++!5773 lt!729326 lt!729325)))))

(declare-fun e!1219316 () (InoxSet C!10648))

(assert (=> d!584186 (= (content!3147 (++!5773 lt!729326 lt!729325)) e!1219316)))

(declare-fun b!1909118 () Bool)

(assert (=> b!1909118 (= e!1219316 ((as const (Array C!10648 Bool)) false))))

(declare-fun b!1909119 () Bool)

(assert (=> b!1909119 (= e!1219316 ((_ map or) (store ((as const (Array C!10648 Bool)) false) (h!26884 (++!5773 lt!729326 lt!729325)) true) (content!3147 (t!177700 (++!5773 lt!729326 lt!729325)))))))

(assert (= (and d!584186 c!311121) b!1909118))

(assert (= (and d!584186 (not c!311121)) b!1909119))

(declare-fun m!2342295 () Bool)

(assert (=> b!1909119 m!2342295))

(declare-fun m!2342297 () Bool)

(assert (=> b!1909119 m!2342297))

(assert (=> d!583690 d!584186))

(declare-fun d!584188 () Bool)

(assert (=> d!584188 (= (list!8738 (ite c!310816 call!117537 call!117538)) (list!8741 (c!310756 (ite c!310816 call!117537 call!117538))))))

(declare-fun bs!414088 () Bool)

(assert (= bs!414088 d!584188))

(declare-fun m!2342299 () Bool)

(assert (=> bs!414088 m!2342299))

(assert (=> bm!117534 d!584188))

(assert (=> b!1907831 d!584170))

(assert (=> b!1907831 d!584178))

(declare-fun b!1909120 () Bool)

(declare-fun lt!729806 () Unit!35820)

(declare-fun lt!729808 () Unit!35820)

(assert (=> b!1909120 (= lt!729806 lt!729808)))

(assert (=> b!1909120 (rulesInvariant!3046 thiss!23328 (t!177702 (t!177702 rules!3198)))))

(assert (=> b!1909120 (= lt!729808 (lemmaInvariantOnRulesThenOnTail!256 thiss!23328 (h!26886 (t!177702 rules!3198)) (t!177702 (t!177702 rules!3198))))))

(declare-fun e!1219317 () Option!4357)

(assert (=> b!1909120 (= e!1219317 (getRuleFromTag!669 thiss!23328 (t!177702 (t!177702 rules!3198)) (tag!4258 (rule!6023 separatorToken!354))))))

(declare-fun b!1909122 () Bool)

(declare-fun e!1219320 () Bool)

(declare-fun e!1219319 () Bool)

(assert (=> b!1909122 (= e!1219320 e!1219319)))

(declare-fun res!852392 () Bool)

(assert (=> b!1909122 (=> (not res!852392) (not e!1219319))))

(declare-fun lt!729807 () Option!4357)

(assert (=> b!1909122 (= res!852392 (contains!3865 (t!177702 rules!3198) (get!6677 lt!729807)))))

(declare-fun b!1909123 () Bool)

(declare-fun e!1219318 () Option!4357)

(assert (=> b!1909123 (= e!1219318 (Some!4356 (h!26886 (t!177702 rules!3198))))))

(declare-fun b!1909124 () Bool)

(assert (=> b!1909124 (= e!1219317 None!4356)))

(declare-fun b!1909125 () Bool)

(assert (=> b!1909125 (= e!1219319 (= (tag!4258 (get!6677 lt!729807)) (tag!4258 (rule!6023 separatorToken!354))))))

(declare-fun b!1909121 () Bool)

(assert (=> b!1909121 (= e!1219318 e!1219317)))

(declare-fun c!311122 () Bool)

(assert (=> b!1909121 (= c!311122 (and ((_ is Cons!21485) (t!177702 rules!3198)) (not (= (tag!4258 (h!26886 (t!177702 rules!3198))) (tag!4258 (rule!6023 separatorToken!354))))))))

(declare-fun d!584190 () Bool)

(assert (=> d!584190 e!1219320))

(declare-fun res!852391 () Bool)

(assert (=> d!584190 (=> res!852391 e!1219320)))

(assert (=> d!584190 (= res!852391 (isEmpty!13198 lt!729807))))

(assert (=> d!584190 (= lt!729807 e!1219318)))

(declare-fun c!311123 () Bool)

(assert (=> d!584190 (= c!311123 (and ((_ is Cons!21485) (t!177702 rules!3198)) (= (tag!4258 (h!26886 (t!177702 rules!3198))) (tag!4258 (rule!6023 separatorToken!354)))))))

(assert (=> d!584190 (rulesInvariant!3046 thiss!23328 (t!177702 rules!3198))))

(assert (=> d!584190 (= (getRuleFromTag!669 thiss!23328 (t!177702 rules!3198) (tag!4258 (rule!6023 separatorToken!354))) lt!729807)))

(assert (= (and d!584190 c!311123) b!1909123))

(assert (= (and d!584190 (not c!311123)) b!1909121))

(assert (= (and b!1909121 c!311122) b!1909120))

(assert (= (and b!1909121 (not c!311122)) b!1909124))

(assert (= (and d!584190 (not res!852391)) b!1909122))

(assert (= (and b!1909122 res!852392) b!1909125))

(assert (=> b!1909120 m!2342275))

(assert (=> b!1909120 m!2342277))

(declare-fun m!2342301 () Bool)

(assert (=> b!1909120 m!2342301))

(declare-fun m!2342303 () Bool)

(assert (=> b!1909122 m!2342303))

(assert (=> b!1909122 m!2342303))

(declare-fun m!2342305 () Bool)

(assert (=> b!1909122 m!2342305))

(assert (=> b!1909125 m!2342303))

(declare-fun m!2342307 () Bool)

(assert (=> d!584190 m!2342307))

(assert (=> d!584190 m!2340653))

(assert (=> b!1907831 d!584190))

(declare-fun b!1909126 () Bool)

(declare-fun e!1219323 () Bool)

(assert (=> b!1909126 (= e!1219323 (inv!16 (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323)))))

(declare-fun b!1909127 () Bool)

(declare-fun res!852393 () Bool)

(declare-fun e!1219322 () Bool)

(assert (=> b!1909127 (=> res!852393 e!1219322)))

(assert (=> b!1909127 (= res!852393 (not ((_ is IntegerValue!11888) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323))))))

(declare-fun e!1219321 () Bool)

(assert (=> b!1909127 (= e!1219321 e!1219322)))

(declare-fun d!584192 () Bool)

(declare-fun c!311124 () Bool)

(assert (=> d!584192 (= c!311124 ((_ is IntegerValue!11886) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323)))))

(assert (=> d!584192 (= (inv!21 (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323)) e!1219323)))

(declare-fun b!1909128 () Bool)

(assert (=> b!1909128 (= e!1219322 (inv!15 (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323)))))

(declare-fun b!1909129 () Bool)

(assert (=> b!1909129 (= e!1219321 (inv!17 (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323)))))

(declare-fun b!1909130 () Bool)

(assert (=> b!1909130 (= e!1219323 e!1219321)))

(declare-fun c!311125 () Bool)

(assert (=> b!1909130 (= c!311125 ((_ is IntegerValue!11887) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323)))))

(assert (= (and d!584192 c!311124) b!1909126))

(assert (= (and d!584192 (not c!311124)) b!1909130))

(assert (= (and b!1909130 c!311125) b!1909129))

(assert (= (and b!1909130 (not c!311125)) b!1909127))

(assert (= (and b!1909127 (not res!852393)) b!1909128))

(declare-fun m!2342309 () Bool)

(assert (=> b!1909126 m!2342309))

(declare-fun m!2342311 () Bool)

(assert (=> b!1909128 m!2342311))

(declare-fun m!2342313 () Bool)

(assert (=> b!1909129 m!2342313))

(assert (=> tb!116695 d!584192))

(declare-fun d!584194 () Bool)

(assert (=> d!584194 (= (list!8738 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (value!120632 separatorToken!354))) (list!8741 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (value!120632 separatorToken!354)))))))

(declare-fun bs!414089 () Bool)

(assert (= bs!414089 d!584194))

(declare-fun m!2342315 () Bool)

(assert (=> bs!414089 m!2342315))

(assert (=> b!1907433 d!584194))

(declare-fun b!1909131 () Bool)

(declare-fun e!1219326 () Bool)

(assert (=> b!1909131 (= e!1219326 (inv!16 (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (seqFromList!2698 (originalCharacters!4633 (h!26885 tokens!598))))))))

(declare-fun b!1909132 () Bool)

(declare-fun res!852394 () Bool)

(declare-fun e!1219325 () Bool)

(assert (=> b!1909132 (=> res!852394 e!1219325)))

(assert (=> b!1909132 (= res!852394 (not ((_ is IntegerValue!11888) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (seqFromList!2698 (originalCharacters!4633 (h!26885 tokens!598)))))))))

(declare-fun e!1219324 () Bool)

(assert (=> b!1909132 (= e!1219324 e!1219325)))

(declare-fun d!584196 () Bool)

(declare-fun c!311126 () Bool)

(assert (=> d!584196 (= c!311126 ((_ is IntegerValue!11886) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (seqFromList!2698 (originalCharacters!4633 (h!26885 tokens!598))))))))

(assert (=> d!584196 (= (inv!21 (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (seqFromList!2698 (originalCharacters!4633 (h!26885 tokens!598))))) e!1219326)))

(declare-fun b!1909133 () Bool)

(assert (=> b!1909133 (= e!1219325 (inv!15 (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (seqFromList!2698 (originalCharacters!4633 (h!26885 tokens!598))))))))

(declare-fun b!1909134 () Bool)

(assert (=> b!1909134 (= e!1219324 (inv!17 (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (seqFromList!2698 (originalCharacters!4633 (h!26885 tokens!598))))))))

(declare-fun b!1909135 () Bool)

(assert (=> b!1909135 (= e!1219326 e!1219324)))

(declare-fun c!311127 () Bool)

(assert (=> b!1909135 (= c!311127 ((_ is IntegerValue!11887) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (seqFromList!2698 (originalCharacters!4633 (h!26885 tokens!598))))))))

(assert (= (and d!584196 c!311126) b!1909131))

(assert (= (and d!584196 (not c!311126)) b!1909135))

(assert (= (and b!1909135 c!311127) b!1909134))

(assert (= (and b!1909135 (not c!311127)) b!1909132))

(assert (= (and b!1909132 (not res!852394)) b!1909133))

(declare-fun m!2342317 () Bool)

(assert (=> b!1909131 m!2342317))

(declare-fun m!2342319 () Bool)

(assert (=> b!1909133 m!2342319))

(declare-fun m!2342321 () Bool)

(assert (=> b!1909134 m!2342321))

(assert (=> tb!116701 d!584196))

(declare-fun d!584198 () Bool)

(assert (=> d!584198 (= (get!6678 lt!729492) (v!26400 lt!729492))))

(assert (=> b!1907863 d!584198))

(declare-fun d!584200 () Bool)

(assert (=> d!584200 (= (apply!5639 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729492)))) (seqFromList!2698 (originalCharacters!4633 (_1!11579 (get!6678 lt!729492))))) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729492))))) (seqFromList!2698 (originalCharacters!4633 (_1!11579 (get!6678 lt!729492))))))))

(declare-fun b_lambda!63169 () Bool)

(assert (=> (not b_lambda!63169) (not d!584200)))

(declare-fun t!177953 () Bool)

(declare-fun tb!116899 () Bool)

(assert (=> (and b!1907389 (= (toValue!5451 (transformation!3826 (h!26886 rules!3198))) (toValue!5451 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729492)))))) t!177953) tb!116899))

(declare-fun result!141256 () Bool)

(assert (=> tb!116899 (= result!141256 (inv!21 (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729492))))) (seqFromList!2698 (originalCharacters!4633 (_1!11579 (get!6678 lt!729492)))))))))

(declare-fun m!2342323 () Bool)

(assert (=> tb!116899 m!2342323))

(assert (=> d!584200 t!177953))

(declare-fun b_and!148587 () Bool)

(assert (= b_and!148377 (and (=> t!177953 result!141256) b_and!148587)))

(declare-fun t!177955 () Bool)

(declare-fun tb!116901 () Bool)

(assert (=> (and b!1907387 (= (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (toValue!5451 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729492)))))) t!177955) tb!116901))

(declare-fun result!141258 () Bool)

(assert (= result!141258 result!141256))

(assert (=> d!584200 t!177955))

(declare-fun b_and!148589 () Bool)

(assert (= b_and!148379 (and (=> t!177955 result!141258) b_and!148589)))

(declare-fun t!177957 () Bool)

(declare-fun tb!116903 () Bool)

(assert (=> (and b!1908135 (= (toValue!5451 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) (toValue!5451 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729492)))))) t!177957) tb!116903))

(declare-fun result!141260 () Bool)

(assert (= result!141260 result!141256))

(assert (=> d!584200 t!177957))

(declare-fun b_and!148591 () Bool)

(assert (= b_and!148415 (and (=> t!177957 result!141260) b_and!148591)))

(declare-fun t!177959 () Bool)

(declare-fun tb!116905 () Bool)

(assert (=> (and b!1907400 (= (toValue!5451 (transformation!3826 (rule!6023 separatorToken!354))) (toValue!5451 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729492)))))) t!177959) tb!116905))

(declare-fun result!141262 () Bool)

(assert (= result!141262 result!141256))

(assert (=> d!584200 t!177959))

(declare-fun b_and!148593 () Bool)

(assert (= b_and!148381 (and (=> t!177959 result!141262) b_and!148593)))

(declare-fun tb!116907 () Bool)

(declare-fun t!177961 () Bool)

(assert (=> (and b!1908146 (= (toValue!5451 (transformation!3826 (h!26886 (t!177702 rules!3198)))) (toValue!5451 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729492)))))) t!177961) tb!116907))

(declare-fun result!141264 () Bool)

(assert (= result!141264 result!141256))

(assert (=> d!584200 t!177961))

(declare-fun b_and!148595 () Bool)

(assert (= b_and!148419 (and (=> t!177961 result!141264) b_and!148595)))

(assert (=> d!584200 m!2340717))

(declare-fun m!2342325 () Bool)

(assert (=> d!584200 m!2342325))

(assert (=> b!1907863 d!584200))

(declare-fun d!584202 () Bool)

(assert (=> d!584202 (= (seqFromList!2698 (originalCharacters!4633 (_1!11579 (get!6678 lt!729492)))) (fromListB!1224 (originalCharacters!4633 (_1!11579 (get!6678 lt!729492)))))))

(declare-fun bs!414090 () Bool)

(assert (= bs!414090 d!584202))

(declare-fun m!2342327 () Bool)

(assert (=> bs!414090 m!2342327))

(assert (=> b!1907863 d!584202))

(assert (=> bm!117559 d!584002))

(declare-fun b!1909139 () Bool)

(declare-fun e!1219328 () Bool)

(declare-fun lt!729809 () List!21565)

(assert (=> b!1909139 (= e!1219328 (or (not (= (_2!11579 (get!6678 lt!729395)) Nil!21483)) (= lt!729809 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729395)))))))))

(declare-fun b!1909137 () Bool)

(declare-fun e!1219329 () List!21565)

(assert (=> b!1909137 (= e!1219329 (Cons!21483 (h!26884 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729395))))) (++!5773 (t!177700 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729395))))) (_2!11579 (get!6678 lt!729395)))))))

(declare-fun d!584204 () Bool)

(assert (=> d!584204 e!1219328))

(declare-fun res!852396 () Bool)

(assert (=> d!584204 (=> (not res!852396) (not e!1219328))))

(assert (=> d!584204 (= res!852396 (= (content!3147 lt!729809) ((_ map or) (content!3147 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729395))))) (content!3147 (_2!11579 (get!6678 lt!729395))))))))

(assert (=> d!584204 (= lt!729809 e!1219329)))

(declare-fun c!311128 () Bool)

(assert (=> d!584204 (= c!311128 ((_ is Nil!21483) (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729395))))))))

(assert (=> d!584204 (= (++!5773 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729395)))) (_2!11579 (get!6678 lt!729395))) lt!729809)))

(declare-fun b!1909136 () Bool)

(assert (=> b!1909136 (= e!1219329 (_2!11579 (get!6678 lt!729395)))))

(declare-fun b!1909138 () Bool)

(declare-fun res!852395 () Bool)

(assert (=> b!1909138 (=> (not res!852395) (not e!1219328))))

(assert (=> b!1909138 (= res!852395 (= (size!16947 lt!729809) (+ (size!16947 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729395))))) (size!16947 (_2!11579 (get!6678 lt!729395))))))))

(assert (= (and d!584204 c!311128) b!1909136))

(assert (= (and d!584204 (not c!311128)) b!1909137))

(assert (= (and d!584204 res!852396) b!1909138))

(assert (= (and b!1909138 res!852395) b!1909139))

(declare-fun m!2342329 () Bool)

(assert (=> b!1909137 m!2342329))

(declare-fun m!2342331 () Bool)

(assert (=> d!584204 m!2342331))

(assert (=> d!584204 m!2340459))

(declare-fun m!2342333 () Bool)

(assert (=> d!584204 m!2342333))

(declare-fun m!2342335 () Bool)

(assert (=> d!584204 m!2342335))

(declare-fun m!2342337 () Bool)

(assert (=> b!1909138 m!2342337))

(assert (=> b!1909138 m!2340459))

(declare-fun m!2342339 () Bool)

(assert (=> b!1909138 m!2342339))

(assert (=> b!1909138 m!2340441))

(assert (=> b!1907680 d!584204))

(assert (=> b!1907680 d!583982))

(assert (=> b!1907680 d!583984))

(assert (=> b!1907680 d!583980))

(declare-fun d!584206 () Bool)

(assert (=> d!584206 (= (isEmpty!13197 (tail!2952 lt!729326)) ((_ is Nil!21483) (tail!2952 lt!729326)))))

(assert (=> b!1907977 d!584206))

(assert (=> b!1907977 d!583990))

(assert (=> b!1907629 d!583994))

(assert (=> b!1907629 d!583600))

(declare-fun d!584208 () Bool)

(declare-fun lt!729810 () Int)

(assert (=> d!584208 (>= lt!729810 0)))

(declare-fun e!1219330 () Int)

(assert (=> d!584208 (= lt!729810 e!1219330)))

(declare-fun c!311129 () Bool)

(assert (=> d!584208 (= c!311129 ((_ is Nil!21483) (_2!11579 (get!6678 lt!729395))))))

(assert (=> d!584208 (= (size!16947 (_2!11579 (get!6678 lt!729395))) lt!729810)))

(declare-fun b!1909140 () Bool)

(assert (=> b!1909140 (= e!1219330 0)))

(declare-fun b!1909141 () Bool)

(assert (=> b!1909141 (= e!1219330 (+ 1 (size!16947 (t!177700 (_2!11579 (get!6678 lt!729395))))))))

(assert (= (and d!584208 c!311129) b!1909140))

(assert (= (and d!584208 (not c!311129)) b!1909141))

(declare-fun m!2342341 () Bool)

(assert (=> b!1909141 m!2342341))

(assert (=> b!1907683 d!584208))

(assert (=> b!1907683 d!583980))

(assert (=> b!1907683 d!584016))

(declare-fun d!584210 () Bool)

(assert (=> d!584210 (= (isEmpty!13197 (originalCharacters!4633 separatorToken!354)) ((_ is Nil!21483) (originalCharacters!4633 separatorToken!354)))))

(assert (=> d!583508 d!584210))

(declare-fun bs!414091 () Bool)

(declare-fun d!584212 () Bool)

(assert (= bs!414091 (and d!584212 d!583584)))

(declare-fun lambda!74564 () Int)

(assert (=> bs!414091 (= lambda!74564 lambda!74533)))

(declare-fun bs!414092 () Bool)

(assert (= bs!414092 (and d!584212 d!584164)))

(assert (=> bs!414092 (= (= (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (toValue!5451 (transformation!3826 (rule!6023 separatorToken!354)))) (= lambda!74564 lambda!74563))))

(assert (=> d!584212 true))

(assert (=> d!584212 (< (dynLambda!10478 order!13587 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) (dynLambda!10482 order!13595 lambda!74564))))

(assert (=> d!584212 (= (equivClasses!1472 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) (Forall2!621 lambda!74564))))

(declare-fun bs!414093 () Bool)

(assert (= bs!414093 d!584212))

(declare-fun m!2342343 () Bool)

(assert (=> bs!414093 m!2342343))

(assert (=> b!1907982 d!584212))

(declare-fun d!584214 () Bool)

(declare-fun lt!729811 () Int)

(assert (=> d!584214 (>= lt!729811 0)))

(declare-fun e!1219331 () Int)

(assert (=> d!584214 (= lt!729811 e!1219331)))

(declare-fun c!311130 () Bool)

(assert (=> d!584214 (= c!311130 ((_ is Nil!21483) lt!729514))))

(assert (=> d!584214 (= (size!16947 lt!729514) lt!729811)))

(declare-fun b!1909142 () Bool)

(assert (=> b!1909142 (= e!1219331 0)))

(declare-fun b!1909143 () Bool)

(assert (=> b!1909143 (= e!1219331 (+ 1 (size!16947 (t!177700 lt!729514))))))

(assert (= (and d!584214 c!311130) b!1909142))

(assert (= (and d!584214 (not c!311130)) b!1909143))

(declare-fun m!2342345 () Bool)

(assert (=> b!1909143 m!2342345))

(assert (=> b!1908088 d!584214))

(declare-fun d!584216 () Bool)

(declare-fun lt!729812 () Int)

(assert (=> d!584216 (>= lt!729812 0)))

(declare-fun e!1219332 () Int)

(assert (=> d!584216 (= lt!729812 e!1219332)))

(declare-fun c!311131 () Bool)

(assert (=> d!584216 (= c!311131 ((_ is Nil!21483) lt!729326))))

(assert (=> d!584216 (= (size!16947 lt!729326) lt!729812)))

(declare-fun b!1909144 () Bool)

(assert (=> b!1909144 (= e!1219332 0)))

(declare-fun b!1909145 () Bool)

(assert (=> b!1909145 (= e!1219332 (+ 1 (size!16947 (t!177700 lt!729326))))))

(assert (= (and d!584216 c!311131) b!1909144))

(assert (= (and d!584216 (not c!311131)) b!1909145))

(assert (=> b!1909145 m!2341839))

(assert (=> b!1908088 d!584216))

(assert (=> b!1908088 d!584018))

(declare-fun b!1909149 () Bool)

(declare-fun lt!729813 () List!21565)

(declare-fun e!1219333 () Bool)

(assert (=> b!1909149 (= e!1219333 (or (not (= (++!5773 lt!729326 lt!729325) Nil!21483)) (= lt!729813 (t!177700 lt!729332))))))

(declare-fun b!1909147 () Bool)

(declare-fun e!1219334 () List!21565)

(assert (=> b!1909147 (= e!1219334 (Cons!21483 (h!26884 (t!177700 lt!729332)) (++!5773 (t!177700 (t!177700 lt!729332)) (++!5773 lt!729326 lt!729325))))))

(declare-fun d!584218 () Bool)

(assert (=> d!584218 e!1219333))

(declare-fun res!852398 () Bool)

(assert (=> d!584218 (=> (not res!852398) (not e!1219333))))

(assert (=> d!584218 (= res!852398 (= (content!3147 lt!729813) ((_ map or) (content!3147 (t!177700 lt!729332)) (content!3147 (++!5773 lt!729326 lt!729325)))))))

(assert (=> d!584218 (= lt!729813 e!1219334)))

(declare-fun c!311132 () Bool)

(assert (=> d!584218 (= c!311132 ((_ is Nil!21483) (t!177700 lt!729332)))))

(assert (=> d!584218 (= (++!5773 (t!177700 lt!729332) (++!5773 lt!729326 lt!729325)) lt!729813)))

(declare-fun b!1909146 () Bool)

(assert (=> b!1909146 (= e!1219334 (++!5773 lt!729326 lt!729325))))

(declare-fun b!1909148 () Bool)

(declare-fun res!852397 () Bool)

(assert (=> b!1909148 (=> (not res!852397) (not e!1219333))))

(assert (=> b!1909148 (= res!852397 (= (size!16947 lt!729813) (+ (size!16947 (t!177700 lt!729332)) (size!16947 (++!5773 lt!729326 lt!729325)))))))

(assert (= (and d!584218 c!311132) b!1909146))

(assert (= (and d!584218 (not c!311132)) b!1909147))

(assert (= (and d!584218 res!852398) b!1909148))

(assert (= (and b!1909148 res!852397) b!1909149))

(assert (=> b!1909147 m!2340097))

(declare-fun m!2342347 () Bool)

(assert (=> b!1909147 m!2342347))

(declare-fun m!2342349 () Bool)

(assert (=> d!584218 m!2342349))

(assert (=> d!584218 m!2342293))

(assert (=> d!584218 m!2340097))

(assert (=> d!584218 m!2340899))

(declare-fun m!2342351 () Bool)

(assert (=> b!1909148 m!2342351))

(assert (=> b!1909148 m!2341865))

(assert (=> b!1909148 m!2340097))

(assert (=> b!1909148 m!2340903))

(assert (=> b!1908091 d!584218))

(declare-fun d!584220 () Bool)

(declare-fun lt!729814 () Bool)

(declare-fun e!1219336 () Bool)

(assert (=> d!584220 (= lt!729814 e!1219336)))

(declare-fun res!852399 () Bool)

(assert (=> d!584220 (=> (not res!852399) (not e!1219336))))

(assert (=> d!584220 (= res!852399 (= (list!8742 (_1!11581 (lex!1524 thiss!23328 rules!3198 (print!1453 thiss!23328 (singletonSeq!1851 (h!26885 tokens!598)))))) (list!8742 (singletonSeq!1851 (h!26885 tokens!598)))))))

(declare-fun e!1219335 () Bool)

(assert (=> d!584220 (= lt!729814 e!1219335)))

(declare-fun res!852400 () Bool)

(assert (=> d!584220 (=> (not res!852400) (not e!1219335))))

(declare-fun lt!729815 () tuple2!20224)

(assert (=> d!584220 (= res!852400 (= (size!16948 (_1!11581 lt!729815)) 1))))

(assert (=> d!584220 (= lt!729815 (lex!1524 thiss!23328 rules!3198 (print!1453 thiss!23328 (singletonSeq!1851 (h!26885 tokens!598)))))))

(assert (=> d!584220 (not (isEmpty!13192 rules!3198))))

(assert (=> d!584220 (= (rulesProduceIndividualToken!1611 thiss!23328 rules!3198 (h!26885 tokens!598)) lt!729814)))

(declare-fun b!1909150 () Bool)

(declare-fun res!852401 () Bool)

(assert (=> b!1909150 (=> (not res!852401) (not e!1219335))))

(assert (=> b!1909150 (= res!852401 (= (apply!5640 (_1!11581 lt!729815) 0) (h!26885 tokens!598)))))

(declare-fun b!1909151 () Bool)

(assert (=> b!1909151 (= e!1219335 (isEmpty!13200 (_2!11581 lt!729815)))))

(declare-fun b!1909152 () Bool)

(assert (=> b!1909152 (= e!1219336 (isEmpty!13200 (_2!11581 (lex!1524 thiss!23328 rules!3198 (print!1453 thiss!23328 (singletonSeq!1851 (h!26885 tokens!598)))))))))

(assert (= (and d!584220 res!852400) b!1909150))

(assert (= (and b!1909150 res!852401) b!1909151))

(assert (= (and d!584220 res!852399) b!1909152))

(declare-fun m!2342353 () Bool)

(assert (=> d!584220 m!2342353))

(declare-fun m!2342355 () Bool)

(assert (=> d!584220 m!2342355))

(declare-fun m!2342357 () Bool)

(assert (=> d!584220 m!2342357))

(assert (=> d!584220 m!2340187))

(assert (=> d!584220 m!2342357))

(declare-fun m!2342359 () Bool)

(assert (=> d!584220 m!2342359))

(assert (=> d!584220 m!2342357))

(declare-fun m!2342361 () Bool)

(assert (=> d!584220 m!2342361))

(assert (=> d!584220 m!2342361))

(declare-fun m!2342363 () Bool)

(assert (=> d!584220 m!2342363))

(declare-fun m!2342365 () Bool)

(assert (=> b!1909150 m!2342365))

(declare-fun m!2342367 () Bool)

(assert (=> b!1909151 m!2342367))

(assert (=> b!1909152 m!2342357))

(assert (=> b!1909152 m!2342357))

(assert (=> b!1909152 m!2342361))

(assert (=> b!1909152 m!2342361))

(assert (=> b!1909152 m!2342363))

(declare-fun m!2342369 () Bool)

(assert (=> b!1909152 m!2342369))

(assert (=> b!1907603 d!584220))

(declare-fun d!584222 () Bool)

(declare-fun c!311133 () Bool)

(assert (=> d!584222 (= c!311133 ((_ is Nil!21483) lt!729513))))

(declare-fun e!1219337 () (InoxSet C!10648))

(assert (=> d!584222 (= (content!3147 lt!729513) e!1219337)))

(declare-fun b!1909153 () Bool)

(assert (=> b!1909153 (= e!1219337 ((as const (Array C!10648 Bool)) false))))

(declare-fun b!1909154 () Bool)

(assert (=> b!1909154 (= e!1219337 ((_ map or) (store ((as const (Array C!10648 Bool)) false) (h!26884 lt!729513) true) (content!3147 (t!177700 lt!729513))))))

(assert (= (and d!584222 c!311133) b!1909153))

(assert (= (and d!584222 (not c!311133)) b!1909154))

(declare-fun m!2342371 () Bool)

(assert (=> b!1909154 m!2342371))

(declare-fun m!2342373 () Bool)

(assert (=> b!1909154 m!2342373))

(assert (=> d!583682 d!584222))

(declare-fun d!584224 () Bool)

(declare-fun c!311134 () Bool)

(assert (=> d!584224 (= c!311134 ((_ is Nil!21483) (++!5773 lt!729332 lt!729326)))))

(declare-fun e!1219338 () (InoxSet C!10648))

(assert (=> d!584224 (= (content!3147 (++!5773 lt!729332 lt!729326)) e!1219338)))

(declare-fun b!1909155 () Bool)

(assert (=> b!1909155 (= e!1219338 ((as const (Array C!10648 Bool)) false))))

(declare-fun b!1909156 () Bool)

(assert (=> b!1909156 (= e!1219338 ((_ map or) (store ((as const (Array C!10648 Bool)) false) (h!26884 (++!5773 lt!729332 lt!729326)) true) (content!3147 (t!177700 (++!5773 lt!729332 lt!729326)))))))

(assert (= (and d!584224 c!311134) b!1909155))

(assert (= (and d!584224 (not c!311134)) b!1909156))

(declare-fun m!2342375 () Bool)

(assert (=> b!1909156 m!2342375))

(declare-fun m!2342377 () Bool)

(assert (=> b!1909156 m!2342377))

(assert (=> d!583682 d!584224))

(assert (=> d!583682 d!583916))

(declare-fun d!584226 () Bool)

(declare-fun charsToBigInt!0 (List!21564 Int) Int)

(assert (=> d!584226 (= (inv!15 (value!120632 separatorToken!354)) (= (charsToBigInt!0 (text!28183 (value!120632 separatorToken!354)) 0) (value!120627 (value!120632 separatorToken!354))))))

(declare-fun bs!414094 () Bool)

(assert (= bs!414094 d!584226))

(declare-fun m!2342379 () Bool)

(assert (=> bs!414094 m!2342379))

(assert (=> b!1908041 d!584226))

(assert (=> b!1907899 d!584008))

(assert (=> b!1907899 d!583612))

(declare-fun d!584228 () Bool)

(assert (=> d!584228 (= (list!8738 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323))) (list!8741 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323)))))))

(declare-fun bs!414095 () Bool)

(assert (= bs!414095 d!584228))

(declare-fun m!2342381 () Bool)

(assert (=> bs!414095 m!2342381))

(assert (=> d!583594 d!584228))

(assert (=> d!583594 d!583634))

(declare-fun d!584230 () Bool)

(declare-fun dynLambda!10486 (Int BalanceConc!14106) Bool)

(assert (=> d!584230 (dynLambda!10486 lambda!74536 lt!729323)))

(declare-fun lt!729818 () Unit!35820)

(declare-fun choose!11887 (Int BalanceConc!14106) Unit!35820)

(assert (=> d!584230 (= lt!729818 (choose!11887 lambda!74536 lt!729323))))

(assert (=> d!584230 (Forall!996 lambda!74536)))

(assert (=> d!584230 (= (ForallOf!391 lambda!74536 lt!729323) lt!729818)))

(declare-fun b_lambda!63171 () Bool)

(assert (=> (not b_lambda!63171) (not d!584230)))

(declare-fun bs!414096 () Bool)

(assert (= bs!414096 d!584230))

(declare-fun m!2342383 () Bool)

(assert (=> bs!414096 m!2342383))

(declare-fun m!2342385 () Bool)

(assert (=> bs!414096 m!2342385))

(declare-fun m!2342387 () Bool)

(assert (=> bs!414096 m!2342387))

(assert (=> d!583594 d!584230))

(declare-fun d!584232 () Bool)

(declare-fun res!852402 () Bool)

(declare-fun e!1219339 () Bool)

(assert (=> d!584232 (=> (not res!852402) (not e!1219339))))

(assert (=> d!584232 (= res!852402 (not (isEmpty!13197 (originalCharacters!4633 (h!26885 (t!177701 tokens!598))))))))

(assert (=> d!584232 (= (inv!28588 (h!26885 (t!177701 tokens!598))) e!1219339)))

(declare-fun b!1909157 () Bool)

(declare-fun res!852403 () Bool)

(assert (=> b!1909157 (=> (not res!852403) (not e!1219339))))

(assert (=> b!1909157 (= res!852403 (= (originalCharacters!4633 (h!26885 (t!177701 tokens!598))) (list!8738 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) (value!120632 (h!26885 (t!177701 tokens!598)))))))))

(declare-fun b!1909158 () Bool)

(assert (=> b!1909158 (= e!1219339 (= (size!16944 (h!26885 (t!177701 tokens!598))) (size!16947 (originalCharacters!4633 (h!26885 (t!177701 tokens!598))))))))

(assert (= (and d!584232 res!852402) b!1909157))

(assert (= (and b!1909157 res!852403) b!1909158))

(declare-fun b_lambda!63173 () Bool)

(assert (=> (not b_lambda!63173) (not b!1909157)))

(assert (=> b!1909157 t!177872))

(declare-fun b_and!148597 () Bool)

(assert (= b_and!148503 (and (=> t!177872 result!141174) b_and!148597)))

(assert (=> b!1909157 t!177876))

(declare-fun b_and!148599 () Bool)

(assert (= b_and!148511 (and (=> t!177876 result!141178) b_and!148599)))

(assert (=> b!1909157 t!177874))

(declare-fun b_and!148601 () Bool)

(assert (= b_and!148507 (and (=> t!177874 result!141176) b_and!148601)))

(assert (=> b!1909157 t!177870))

(declare-fun b_and!148603 () Bool)

(assert (= b_and!148505 (and (=> t!177870 result!141172) b_and!148603)))

(assert (=> b!1909157 t!177868))

(declare-fun b_and!148605 () Bool)

(assert (= b_and!148509 (and (=> t!177868 result!141170) b_and!148605)))

(declare-fun m!2342389 () Bool)

(assert (=> d!584232 m!2342389))

(assert (=> b!1909157 m!2341575))

(assert (=> b!1909157 m!2341575))

(declare-fun m!2342391 () Bool)

(assert (=> b!1909157 m!2342391))

(declare-fun m!2342393 () Bool)

(assert (=> b!1909158 m!2342393))

(assert (=> b!1908132 d!584232))

(declare-fun d!584234 () Bool)

(declare-fun lt!729821 () Bool)

(declare-fun content!3148 (List!21567) (InoxSet Rule!7452))

(assert (=> d!584234 (= lt!729821 (select (content!3148 rules!3198) (rule!6023 (_1!11579 (get!6678 lt!729395)))))))

(declare-fun e!1219345 () Bool)

(assert (=> d!584234 (= lt!729821 e!1219345)))

(declare-fun res!852408 () Bool)

(assert (=> d!584234 (=> (not res!852408) (not e!1219345))))

(assert (=> d!584234 (= res!852408 ((_ is Cons!21485) rules!3198))))

(assert (=> d!584234 (= (contains!3865 rules!3198 (rule!6023 (_1!11579 (get!6678 lt!729395)))) lt!729821)))

(declare-fun b!1909163 () Bool)

(declare-fun e!1219344 () Bool)

(assert (=> b!1909163 (= e!1219345 e!1219344)))

(declare-fun res!852409 () Bool)

(assert (=> b!1909163 (=> res!852409 e!1219344)))

(assert (=> b!1909163 (= res!852409 (= (h!26886 rules!3198) (rule!6023 (_1!11579 (get!6678 lt!729395)))))))

(declare-fun b!1909164 () Bool)

(assert (=> b!1909164 (= e!1219344 (contains!3865 (t!177702 rules!3198) (rule!6023 (_1!11579 (get!6678 lt!729395)))))))

(assert (= (and d!584234 res!852408) b!1909163))

(assert (= (and b!1909163 (not res!852409)) b!1909164))

(declare-fun m!2342395 () Bool)

(assert (=> d!584234 m!2342395))

(declare-fun m!2342397 () Bool)

(assert (=> d!584234 m!2342397))

(declare-fun m!2342399 () Bool)

(assert (=> b!1909164 m!2342399))

(assert (=> b!1907687 d!584234))

(assert (=> b!1907687 d!583980))

(declare-fun d!584236 () Bool)

(declare-fun charsToInt!0 (List!21564) (_ BitVec 32))

(assert (=> d!584236 (= (inv!16 (value!120632 (h!26885 tokens!598))) (= (charsToInt!0 (text!28181 (value!120632 (h!26885 tokens!598)))) (value!120623 (value!120632 (h!26885 tokens!598)))))))

(declare-fun bs!414097 () Bool)

(assert (= bs!414097 d!584236))

(declare-fun m!2342401 () Bool)

(assert (=> bs!414097 m!2342401))

(assert (=> b!1908034 d!584236))

(declare-fun lt!729822 () List!21565)

(declare-fun b!1909168 () Bool)

(declare-fun e!1219346 () Bool)

(assert (=> b!1909168 (= e!1219346 (or (not (= lt!729424 Nil!21483)) (= lt!729822 call!117539)))))

(declare-fun b!1909166 () Bool)

(declare-fun e!1219347 () List!21565)

(assert (=> b!1909166 (= e!1219347 (Cons!21483 (h!26884 call!117539) (++!5773 (t!177700 call!117539) lt!729424)))))

(declare-fun d!584238 () Bool)

(assert (=> d!584238 e!1219346))

(declare-fun res!852411 () Bool)

(assert (=> d!584238 (=> (not res!852411) (not e!1219346))))

(assert (=> d!584238 (= res!852411 (= (content!3147 lt!729822) ((_ map or) (content!3147 call!117539) (content!3147 lt!729424))))))

(assert (=> d!584238 (= lt!729822 e!1219347)))

(declare-fun c!311135 () Bool)

(assert (=> d!584238 (= c!311135 ((_ is Nil!21483) call!117539))))

(assert (=> d!584238 (= (++!5773 call!117539 lt!729424) lt!729822)))

(declare-fun b!1909165 () Bool)

(assert (=> b!1909165 (= e!1219347 lt!729424)))

(declare-fun b!1909167 () Bool)

(declare-fun res!852410 () Bool)

(assert (=> b!1909167 (=> (not res!852410) (not e!1219346))))

(assert (=> b!1909167 (= res!852410 (= (size!16947 lt!729822) (+ (size!16947 call!117539) (size!16947 lt!729424))))))

(assert (= (and d!584238 c!311135) b!1909165))

(assert (= (and d!584238 (not c!311135)) b!1909166))

(assert (= (and d!584238 res!852411) b!1909167))

(assert (= (and b!1909167 res!852410) b!1909168))

(declare-fun m!2342403 () Bool)

(assert (=> b!1909166 m!2342403))

(declare-fun m!2342405 () Bool)

(assert (=> d!584238 m!2342405))

(declare-fun m!2342407 () Bool)

(assert (=> d!584238 m!2342407))

(declare-fun m!2342409 () Bool)

(assert (=> d!584238 m!2342409))

(declare-fun m!2342411 () Bool)

(assert (=> b!1909167 m!2342411))

(declare-fun m!2342413 () Bool)

(assert (=> b!1909167 m!2342413))

(declare-fun m!2342415 () Bool)

(assert (=> b!1909167 m!2342415))

(assert (=> b!1907732 d!584238))

(declare-fun d!584240 () Bool)

(declare-fun c!311136 () Bool)

(assert (=> d!584240 (= c!311136 ((_ is Node!7145) (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323)))))))

(declare-fun e!1219348 () Bool)

(assert (=> d!584240 (= (inv!28591 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323)))) e!1219348)))

(declare-fun b!1909169 () Bool)

(assert (=> b!1909169 (= e!1219348 (inv!28595 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323)))))))

(declare-fun b!1909170 () Bool)

(declare-fun e!1219349 () Bool)

(assert (=> b!1909170 (= e!1219348 e!1219349)))

(declare-fun res!852412 () Bool)

(assert (=> b!1909170 (= res!852412 (not ((_ is Leaf!10521) (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323))))))))

(assert (=> b!1909170 (=> res!852412 e!1219349)))

(declare-fun b!1909171 () Bool)

(assert (=> b!1909171 (= e!1219349 (inv!28596 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323)))))))

(assert (= (and d!584240 c!311136) b!1909169))

(assert (= (and d!584240 (not c!311136)) b!1909170))

(assert (= (and b!1909170 (not res!852412)) b!1909171))

(declare-fun m!2342417 () Bool)

(assert (=> b!1909169 m!2342417))

(declare-fun m!2342419 () Bool)

(assert (=> b!1909171 m!2342419))

(assert (=> b!1907796 d!584240))

(declare-fun d!584242 () Bool)

(assert (=> d!584242 (= (isEmpty!13197 (tail!2952 lt!729332)) ((_ is Nil!21483) (tail!2952 lt!729332)))))

(assert (=> b!1907987 d!584242))

(declare-fun d!584244 () Bool)

(assert (=> d!584244 (= (tail!2952 lt!729332) (t!177700 lt!729332))))

(assert (=> b!1907987 d!584244))

(declare-fun d!584246 () Bool)

(declare-fun lt!729823 () Bool)

(assert (=> d!584246 (= lt!729823 (select (content!3147 (t!177700 (usedCharacters!334 (regex!3826 (rule!6023 separatorToken!354))))) lt!729334))))

(declare-fun e!1219351 () Bool)

(assert (=> d!584246 (= lt!729823 e!1219351)))

(declare-fun res!852413 () Bool)

(assert (=> d!584246 (=> (not res!852413) (not e!1219351))))

(assert (=> d!584246 (= res!852413 ((_ is Cons!21483) (t!177700 (usedCharacters!334 (regex!3826 (rule!6023 separatorToken!354))))))))

(assert (=> d!584246 (= (contains!3863 (t!177700 (usedCharacters!334 (regex!3826 (rule!6023 separatorToken!354)))) lt!729334) lt!729823)))

(declare-fun b!1909172 () Bool)

(declare-fun e!1219350 () Bool)

(assert (=> b!1909172 (= e!1219351 e!1219350)))

(declare-fun res!852414 () Bool)

(assert (=> b!1909172 (=> res!852414 e!1219350)))

(assert (=> b!1909172 (= res!852414 (= (h!26884 (t!177700 (usedCharacters!334 (regex!3826 (rule!6023 separatorToken!354))))) lt!729334))))

(declare-fun b!1909173 () Bool)

(assert (=> b!1909173 (= e!1219350 (contains!3863 (t!177700 (t!177700 (usedCharacters!334 (regex!3826 (rule!6023 separatorToken!354))))) lt!729334))))

(assert (= (and d!584246 res!852413) b!1909172))

(assert (= (and b!1909172 (not res!852414)) b!1909173))

(assert (=> d!584246 m!2341843))

(declare-fun m!2342421 () Bool)

(assert (=> d!584246 m!2342421))

(declare-fun m!2342423 () Bool)

(assert (=> b!1909173 m!2342423))

(assert (=> b!1908103 d!584246))

(declare-fun d!584248 () Bool)

(assert (=> d!584248 (= (isEmpty!13199 lt!729492) (not ((_ is Some!4357) lt!729492)))))

(assert (=> d!583618 d!584248))

(declare-fun b!1909184 () Bool)

(declare-fun e!1219359 () Bool)

(assert (=> b!1909184 (= e!1219359 (isPrefix!1923 (tail!2952 (++!5773 lt!729332 lt!729325)) (tail!2952 (++!5773 lt!729332 lt!729325))))))

(declare-fun b!1909183 () Bool)

(declare-fun res!852425 () Bool)

(assert (=> b!1909183 (=> (not res!852425) (not e!1219359))))

(assert (=> b!1909183 (= res!852425 (= (head!4428 (++!5773 lt!729332 lt!729325)) (head!4428 (++!5773 lt!729332 lt!729325))))))

(declare-fun d!584250 () Bool)

(declare-fun e!1219360 () Bool)

(assert (=> d!584250 e!1219360))

(declare-fun res!852426 () Bool)

(assert (=> d!584250 (=> res!852426 e!1219360)))

(declare-fun lt!729826 () Bool)

(assert (=> d!584250 (= res!852426 (not lt!729826))))

(declare-fun e!1219358 () Bool)

(assert (=> d!584250 (= lt!729826 e!1219358)))

(declare-fun res!852423 () Bool)

(assert (=> d!584250 (=> res!852423 e!1219358)))

(assert (=> d!584250 (= res!852423 ((_ is Nil!21483) (++!5773 lt!729332 lt!729325)))))

(assert (=> d!584250 (= (isPrefix!1923 (++!5773 lt!729332 lt!729325) (++!5773 lt!729332 lt!729325)) lt!729826)))

(declare-fun b!1909185 () Bool)

(assert (=> b!1909185 (= e!1219360 (>= (size!16947 (++!5773 lt!729332 lt!729325)) (size!16947 (++!5773 lt!729332 lt!729325))))))

(declare-fun b!1909182 () Bool)

(assert (=> b!1909182 (= e!1219358 e!1219359)))

(declare-fun res!852424 () Bool)

(assert (=> b!1909182 (=> (not res!852424) (not e!1219359))))

(assert (=> b!1909182 (= res!852424 (not ((_ is Nil!21483) (++!5773 lt!729332 lt!729325))))))

(assert (= (and d!584250 (not res!852423)) b!1909182))

(assert (= (and b!1909182 res!852424) b!1909183))

(assert (= (and b!1909183 res!852425) b!1909184))

(assert (= (and d!584250 (not res!852426)) b!1909185))

(assert (=> b!1909184 m!2340129))

(declare-fun m!2342425 () Bool)

(assert (=> b!1909184 m!2342425))

(assert (=> b!1909184 m!2340129))

(assert (=> b!1909184 m!2342425))

(assert (=> b!1909184 m!2342425))

(assert (=> b!1909184 m!2342425))

(declare-fun m!2342427 () Bool)

(assert (=> b!1909184 m!2342427))

(assert (=> b!1909183 m!2340129))

(declare-fun m!2342429 () Bool)

(assert (=> b!1909183 m!2342429))

(assert (=> b!1909183 m!2340129))

(assert (=> b!1909183 m!2342429))

(assert (=> b!1909185 m!2340129))

(assert (=> b!1909185 m!2340709))

(assert (=> b!1909185 m!2340129))

(assert (=> b!1909185 m!2340709))

(assert (=> d!583618 d!584250))

(declare-fun d!584252 () Bool)

(assert (=> d!584252 (isPrefix!1923 (++!5773 lt!729332 lt!729325) (++!5773 lt!729332 lt!729325))))

(declare-fun lt!729829 () Unit!35820)

(declare-fun choose!11888 (List!21565 List!21565) Unit!35820)

(assert (=> d!584252 (= lt!729829 (choose!11888 (++!5773 lt!729332 lt!729325) (++!5773 lt!729332 lt!729325)))))

(assert (=> d!584252 (= (lemmaIsPrefixRefl!1241 (++!5773 lt!729332 lt!729325) (++!5773 lt!729332 lt!729325)) lt!729829)))

(declare-fun bs!414098 () Bool)

(assert (= bs!414098 d!584252))

(assert (=> bs!414098 m!2340129))

(assert (=> bs!414098 m!2340129))

(assert (=> bs!414098 m!2340713))

(assert (=> bs!414098 m!2340129))

(assert (=> bs!414098 m!2340129))

(declare-fun m!2342431 () Bool)

(assert (=> bs!414098 m!2342431))

(assert (=> d!583618 d!584252))

(declare-fun d!584254 () Bool)

(assert (=> d!584254 true))

(declare-fun lt!729832 () Bool)

(declare-fun lambda!74567 () Int)

(declare-fun forall!4516 (List!21567 Int) Bool)

(assert (=> d!584254 (= lt!729832 (forall!4516 rules!3198 lambda!74567))))

(declare-fun e!1219365 () Bool)

(assert (=> d!584254 (= lt!729832 e!1219365)))

(declare-fun res!852431 () Bool)

(assert (=> d!584254 (=> res!852431 e!1219365)))

(assert (=> d!584254 (= res!852431 (not ((_ is Cons!21485) rules!3198)))))

(assert (=> d!584254 (= (rulesValidInductive!1302 thiss!23328 rules!3198) lt!729832)))

(declare-fun b!1909190 () Bool)

(declare-fun e!1219366 () Bool)

(assert (=> b!1909190 (= e!1219365 e!1219366)))

(declare-fun res!852432 () Bool)

(assert (=> b!1909190 (=> (not res!852432) (not e!1219366))))

(assert (=> b!1909190 (= res!852432 (ruleValid!1159 thiss!23328 (h!26886 rules!3198)))))

(declare-fun b!1909191 () Bool)

(assert (=> b!1909191 (= e!1219366 (rulesValidInductive!1302 thiss!23328 (t!177702 rules!3198)))))

(assert (= (and d!584254 (not res!852431)) b!1909190))

(assert (= (and b!1909190 res!852432) b!1909191))

(declare-fun m!2342433 () Bool)

(assert (=> d!584254 m!2342433))

(assert (=> b!1909190 m!2342225))

(assert (=> b!1909191 m!2341813))

(assert (=> d!583618 d!584254))

(declare-fun e!1219367 () Bool)

(declare-fun lt!729833 () List!21565)

(declare-fun b!1909197 () Bool)

(assert (=> b!1909197 (= e!1219367 (or (not (= lt!729325 Nil!21483)) (= lt!729833 (t!177700 (++!5773 lt!729332 lt!729326)))))))

(declare-fun e!1219368 () List!21565)

(declare-fun b!1909195 () Bool)

(assert (=> b!1909195 (= e!1219368 (Cons!21483 (h!26884 (t!177700 (++!5773 lt!729332 lt!729326))) (++!5773 (t!177700 (t!177700 (++!5773 lt!729332 lt!729326))) lt!729325)))))

(declare-fun d!584256 () Bool)

(assert (=> d!584256 e!1219367))

(declare-fun res!852434 () Bool)

(assert (=> d!584256 (=> (not res!852434) (not e!1219367))))

(assert (=> d!584256 (= res!852434 (= (content!3147 lt!729833) ((_ map or) (content!3147 (t!177700 (++!5773 lt!729332 lt!729326))) (content!3147 lt!729325))))))

(assert (=> d!584256 (= lt!729833 e!1219368)))

(declare-fun c!311137 () Bool)

(assert (=> d!584256 (= c!311137 ((_ is Nil!21483) (t!177700 (++!5773 lt!729332 lt!729326))))))

(assert (=> d!584256 (= (++!5773 (t!177700 (++!5773 lt!729332 lt!729326)) lt!729325) lt!729833)))

(declare-fun b!1909194 () Bool)

(assert (=> b!1909194 (= e!1219368 lt!729325)))

(declare-fun b!1909196 () Bool)

(declare-fun res!852433 () Bool)

(assert (=> b!1909196 (=> (not res!852433) (not e!1219367))))

(assert (=> b!1909196 (= res!852433 (= (size!16947 lt!729833) (+ (size!16947 (t!177700 (++!5773 lt!729332 lt!729326))) (size!16947 lt!729325))))))

(assert (= (and d!584256 c!311137) b!1909194))

(assert (= (and d!584256 (not c!311137)) b!1909195))

(assert (= (and d!584256 res!852434) b!1909196))

(assert (= (and b!1909196 res!852433) b!1909197))

(declare-fun m!2342435 () Bool)

(assert (=> b!1909195 m!2342435))

(declare-fun m!2342437 () Bool)

(assert (=> d!584256 m!2342437))

(assert (=> d!584256 m!2342377))

(assert (=> d!584256 m!2340529))

(declare-fun m!2342439 () Bool)

(assert (=> b!1909196 m!2342439))

(declare-fun m!2342441 () Bool)

(assert (=> b!1909196 m!2342441))

(assert (=> b!1909196 m!2340533))

(assert (=> b!1908059 d!584256))

(declare-fun d!584258 () Bool)

(assert (=> d!584258 (= (list!8738 lt!729458) (list!8741 (c!310756 lt!729458)))))

(declare-fun bs!414099 () Bool)

(assert (= bs!414099 d!584258))

(declare-fun m!2342443 () Bool)

(assert (=> bs!414099 m!2342443))

(assert (=> d!583590 d!584258))

(declare-fun d!584260 () Bool)

(assert (=> d!584260 (= (isDefined!3656 lt!729492) (not (isEmpty!13199 lt!729492)))))

(declare-fun bs!414100 () Bool)

(assert (= bs!414100 d!584260))

(assert (=> bs!414100 m!2340711))

(assert (=> b!1907859 d!584260))

(declare-fun d!584262 () Bool)

(assert (=> d!584262 (= (nullable!1595 (regex!3826 (rule!6023 separatorToken!354))) (nullableFct!358 (regex!3826 (rule!6023 separatorToken!354))))))

(declare-fun bs!414101 () Bool)

(assert (= bs!414101 d!584262))

(declare-fun m!2342445 () Bool)

(assert (=> bs!414101 m!2342445))

(assert (=> b!1907969 d!584262))

(declare-fun d!584264 () Bool)

(declare-fun lt!729834 () Bool)

(assert (=> d!584264 (= lt!729834 (isEmpty!13197 (list!8738 (_2!11581 (lex!1524 thiss!23328 rules!3198 (print!1453 thiss!23328 (singletonSeq!1851 separatorToken!354)))))))))

(assert (=> d!584264 (= lt!729834 (isEmpty!13204 (c!310756 (_2!11581 (lex!1524 thiss!23328 rules!3198 (print!1453 thiss!23328 (singletonSeq!1851 separatorToken!354)))))))))

(assert (=> d!584264 (= (isEmpty!13200 (_2!11581 (lex!1524 thiss!23328 rules!3198 (print!1453 thiss!23328 (singletonSeq!1851 separatorToken!354))))) lt!729834)))

(declare-fun bs!414102 () Bool)

(assert (= bs!414102 d!584264))

(declare-fun m!2342447 () Bool)

(assert (=> bs!414102 m!2342447))

(assert (=> bs!414102 m!2342447))

(declare-fun m!2342449 () Bool)

(assert (=> bs!414102 m!2342449))

(declare-fun m!2342451 () Bool)

(assert (=> bs!414102 m!2342451))

(assert (=> b!1908010 d!584264))

(assert (=> b!1908010 d!583970))

(assert (=> b!1908010 d!583964))

(assert (=> b!1908010 d!583962))

(declare-fun lt!729835 () List!21565)

(declare-fun e!1219369 () Bool)

(declare-fun b!1909201 () Bool)

(assert (=> b!1909201 (= e!1219369 (or (not (= (ite c!310888 call!117575 call!117573) Nil!21483)) (= lt!729835 (ite c!310888 call!117573 call!117575))))))

(declare-fun e!1219370 () List!21565)

(declare-fun b!1909199 () Bool)

(assert (=> b!1909199 (= e!1219370 (Cons!21483 (h!26884 (ite c!310888 call!117573 call!117575)) (++!5773 (t!177700 (ite c!310888 call!117573 call!117575)) (ite c!310888 call!117575 call!117573))))))

(declare-fun d!584266 () Bool)

(assert (=> d!584266 e!1219369))

(declare-fun res!852436 () Bool)

(assert (=> d!584266 (=> (not res!852436) (not e!1219369))))

(assert (=> d!584266 (= res!852436 (= (content!3147 lt!729835) ((_ map or) (content!3147 (ite c!310888 call!117573 call!117575)) (content!3147 (ite c!310888 call!117575 call!117573)))))))

(assert (=> d!584266 (= lt!729835 e!1219370)))

(declare-fun c!311138 () Bool)

(assert (=> d!584266 (= c!311138 ((_ is Nil!21483) (ite c!310888 call!117573 call!117575)))))

(assert (=> d!584266 (= (++!5773 (ite c!310888 call!117573 call!117575) (ite c!310888 call!117575 call!117573)) lt!729835)))

(declare-fun b!1909198 () Bool)

(assert (=> b!1909198 (= e!1219370 (ite c!310888 call!117575 call!117573))))

(declare-fun b!1909200 () Bool)

(declare-fun res!852435 () Bool)

(assert (=> b!1909200 (=> (not res!852435) (not e!1219369))))

(assert (=> b!1909200 (= res!852435 (= (size!16947 lt!729835) (+ (size!16947 (ite c!310888 call!117573 call!117575)) (size!16947 (ite c!310888 call!117575 call!117573)))))))

(assert (= (and d!584266 c!311138) b!1909198))

(assert (= (and d!584266 (not c!311138)) b!1909199))

(assert (= (and d!584266 res!852436) b!1909200))

(assert (= (and b!1909200 res!852435) b!1909201))

(declare-fun m!2342453 () Bool)

(assert (=> b!1909199 m!2342453))

(declare-fun m!2342455 () Bool)

(assert (=> d!584266 m!2342455))

(declare-fun m!2342457 () Bool)

(assert (=> d!584266 m!2342457))

(declare-fun m!2342459 () Bool)

(assert (=> d!584266 m!2342459))

(declare-fun m!2342461 () Bool)

(assert (=> b!1909200 m!2342461))

(declare-fun m!2342463 () Bool)

(assert (=> b!1909200 m!2342463))

(declare-fun m!2342465 () Bool)

(assert (=> b!1909200 m!2342465))

(assert (=> bm!117568 d!584266))

(declare-fun d!584268 () Bool)

(declare-fun res!852441 () Bool)

(declare-fun e!1219375 () Bool)

(assert (=> d!584268 (=> res!852441 e!1219375)))

(assert (=> d!584268 (= res!852441 ((_ is Nil!21485) rules!3198))))

(assert (=> d!584268 (= (noDuplicateTag!1430 thiss!23328 rules!3198 Nil!21487) e!1219375)))

(declare-fun b!1909206 () Bool)

(declare-fun e!1219376 () Bool)

(assert (=> b!1909206 (= e!1219375 e!1219376)))

(declare-fun res!852442 () Bool)

(assert (=> b!1909206 (=> (not res!852442) (not e!1219376))))

(declare-fun contains!3868 (List!21569 String!24928) Bool)

(assert (=> b!1909206 (= res!852442 (not (contains!3868 Nil!21487 (tag!4258 (h!26886 rules!3198)))))))

(declare-fun b!1909207 () Bool)

(assert (=> b!1909207 (= e!1219376 (noDuplicateTag!1430 thiss!23328 (t!177702 rules!3198) (Cons!21487 (tag!4258 (h!26886 rules!3198)) Nil!21487)))))

(assert (= (and d!584268 (not res!852441)) b!1909206))

(assert (= (and b!1909206 res!852442) b!1909207))

(declare-fun m!2342467 () Bool)

(assert (=> b!1909206 m!2342467))

(declare-fun m!2342469 () Bool)

(assert (=> b!1909207 m!2342469))

(assert (=> b!1908001 d!584268))

(declare-fun d!584270 () Bool)

(declare-fun e!1219379 () Bool)

(assert (=> d!584270 e!1219379))

(declare-fun res!852446 () Bool)

(assert (=> d!584270 (=> res!852446 e!1219379)))

(declare-fun lt!729837 () Option!4358)

(assert (=> d!584270 (= res!852446 (isEmpty!13199 lt!729837))))

(declare-fun e!1219377 () Option!4358)

(assert (=> d!584270 (= lt!729837 e!1219377)))

(declare-fun c!311139 () Bool)

(assert (=> d!584270 (= c!311139 (and ((_ is Cons!21485) (t!177702 rules!3198)) ((_ is Nil!21485) (t!177702 (t!177702 rules!3198)))))))

(declare-fun lt!729838 () Unit!35820)

(declare-fun lt!729839 () Unit!35820)

(assert (=> d!584270 (= lt!729838 lt!729839)))

(assert (=> d!584270 (isPrefix!1923 (++!5773 lt!729332 lt!729325) (++!5773 lt!729332 lt!729325))))

(assert (=> d!584270 (= lt!729839 (lemmaIsPrefixRefl!1241 (++!5773 lt!729332 lt!729325) (++!5773 lt!729332 lt!729325)))))

(assert (=> d!584270 (rulesValidInductive!1302 thiss!23328 (t!177702 rules!3198))))

(assert (=> d!584270 (= (maxPrefix!1885 thiss!23328 (t!177702 rules!3198) (++!5773 lt!729332 lt!729325)) lt!729837)))

(declare-fun b!1909208 () Bool)

(declare-fun res!852444 () Bool)

(declare-fun e!1219378 () Bool)

(assert (=> b!1909208 (=> (not res!852444) (not e!1219378))))

(assert (=> b!1909208 (= res!852444 (matchR!2537 (regex!3826 (rule!6023 (_1!11579 (get!6678 lt!729837)))) (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729837))))))))

(declare-fun b!1909209 () Bool)

(declare-fun res!852445 () Bool)

(assert (=> b!1909209 (=> (not res!852445) (not e!1219378))))

(assert (=> b!1909209 (= res!852445 (= (++!5773 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729837)))) (_2!11579 (get!6678 lt!729837))) (++!5773 lt!729332 lt!729325)))))

(declare-fun bm!117668 () Bool)

(declare-fun call!117673 () Option!4358)

(assert (=> bm!117668 (= call!117673 (maxPrefixOneRule!1205 thiss!23328 (h!26886 (t!177702 rules!3198)) (++!5773 lt!729332 lt!729325)))))

(declare-fun b!1909210 () Bool)

(assert (=> b!1909210 (= e!1219379 e!1219378)))

(declare-fun res!852447 () Bool)

(assert (=> b!1909210 (=> (not res!852447) (not e!1219378))))

(assert (=> b!1909210 (= res!852447 (isDefined!3656 lt!729837))))

(declare-fun b!1909211 () Bool)

(declare-fun lt!729840 () Option!4358)

(declare-fun lt!729836 () Option!4358)

(assert (=> b!1909211 (= e!1219377 (ite (and ((_ is None!4357) lt!729840) ((_ is None!4357) lt!729836)) None!4357 (ite ((_ is None!4357) lt!729836) lt!729840 (ite ((_ is None!4357) lt!729840) lt!729836 (ite (>= (size!16944 (_1!11579 (v!26400 lt!729840))) (size!16944 (_1!11579 (v!26400 lt!729836)))) lt!729840 lt!729836)))))))

(assert (=> b!1909211 (= lt!729840 call!117673)))

(assert (=> b!1909211 (= lt!729836 (maxPrefix!1885 thiss!23328 (t!177702 (t!177702 rules!3198)) (++!5773 lt!729332 lt!729325)))))

(declare-fun b!1909212 () Bool)

(declare-fun res!852443 () Bool)

(assert (=> b!1909212 (=> (not res!852443) (not e!1219378))))

(assert (=> b!1909212 (= res!852443 (< (size!16947 (_2!11579 (get!6678 lt!729837))) (size!16947 (++!5773 lt!729332 lt!729325))))))

(declare-fun b!1909213 () Bool)

(assert (=> b!1909213 (= e!1219377 call!117673)))

(declare-fun b!1909214 () Bool)

(declare-fun res!852448 () Bool)

(assert (=> b!1909214 (=> (not res!852448) (not e!1219378))))

(assert (=> b!1909214 (= res!852448 (= (value!120632 (_1!11579 (get!6678 lt!729837))) (apply!5639 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729837)))) (seqFromList!2698 (originalCharacters!4633 (_1!11579 (get!6678 lt!729837)))))))))

(declare-fun b!1909215 () Bool)

(declare-fun res!852449 () Bool)

(assert (=> b!1909215 (=> (not res!852449) (not e!1219378))))

(assert (=> b!1909215 (= res!852449 (= (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729837)))) (originalCharacters!4633 (_1!11579 (get!6678 lt!729837)))))))

(declare-fun b!1909216 () Bool)

(assert (=> b!1909216 (= e!1219378 (contains!3865 (t!177702 rules!3198) (rule!6023 (_1!11579 (get!6678 lt!729837)))))))

(assert (= (and d!584270 c!311139) b!1909213))

(assert (= (and d!584270 (not c!311139)) b!1909211))

(assert (= (or b!1909213 b!1909211) bm!117668))

(assert (= (and d!584270 (not res!852446)) b!1909210))

(assert (= (and b!1909210 res!852447) b!1909215))

(assert (= (and b!1909215 res!852449) b!1909212))

(assert (= (and b!1909212 res!852443) b!1909209))

(assert (= (and b!1909209 res!852445) b!1909214))

(assert (= (and b!1909214 res!852448) b!1909208))

(assert (= (and b!1909208 res!852444) b!1909216))

(assert (=> b!1909211 m!2340129))

(declare-fun m!2342471 () Bool)

(assert (=> b!1909211 m!2342471))

(declare-fun m!2342473 () Bool)

(assert (=> b!1909216 m!2342473))

(declare-fun m!2342475 () Bool)

(assert (=> b!1909216 m!2342475))

(assert (=> bm!117668 m!2340129))

(declare-fun m!2342477 () Bool)

(assert (=> bm!117668 m!2342477))

(assert (=> b!1909212 m!2342473))

(declare-fun m!2342479 () Bool)

(assert (=> b!1909212 m!2342479))

(assert (=> b!1909212 m!2340129))

(assert (=> b!1909212 m!2340709))

(declare-fun m!2342481 () Bool)

(assert (=> d!584270 m!2342481))

(assert (=> d!584270 m!2340129))

(assert (=> d!584270 m!2340129))

(assert (=> d!584270 m!2340713))

(assert (=> d!584270 m!2340129))

(assert (=> d!584270 m!2340129))

(assert (=> d!584270 m!2340715))

(assert (=> d!584270 m!2341813))

(assert (=> b!1909214 m!2342473))

(declare-fun m!2342483 () Bool)

(assert (=> b!1909214 m!2342483))

(assert (=> b!1909214 m!2342483))

(declare-fun m!2342485 () Bool)

(assert (=> b!1909214 m!2342485))

(assert (=> b!1909209 m!2342473))

(declare-fun m!2342487 () Bool)

(assert (=> b!1909209 m!2342487))

(assert (=> b!1909209 m!2342487))

(declare-fun m!2342489 () Bool)

(assert (=> b!1909209 m!2342489))

(assert (=> b!1909209 m!2342489))

(declare-fun m!2342491 () Bool)

(assert (=> b!1909209 m!2342491))

(assert (=> b!1909208 m!2342473))

(assert (=> b!1909208 m!2342487))

(assert (=> b!1909208 m!2342487))

(assert (=> b!1909208 m!2342489))

(assert (=> b!1909208 m!2342489))

(declare-fun m!2342493 () Bool)

(assert (=> b!1909208 m!2342493))

(assert (=> b!1909215 m!2342473))

(assert (=> b!1909215 m!2342487))

(assert (=> b!1909215 m!2342487))

(assert (=> b!1909215 m!2342489))

(declare-fun m!2342495 () Bool)

(assert (=> b!1909210 m!2342495))

(assert (=> b!1907860 d!584270))

(assert (=> b!1907992 d!583932))

(assert (=> b!1908046 d!584206))

(assert (=> b!1908046 d!583990))

(declare-fun d!584272 () Bool)

(assert (=> d!584272 (= (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729492)))) (list!8741 (c!310756 (charsOf!2382 (_1!11579 (get!6678 lt!729492))))))))

(declare-fun bs!414103 () Bool)

(assert (= bs!414103 d!584272))

(declare-fun m!2342497 () Bool)

(assert (=> bs!414103 m!2342497))

(assert (=> b!1907864 d!584272))

(declare-fun d!584274 () Bool)

(declare-fun lt!729841 () BalanceConc!14106)

(assert (=> d!584274 (= (list!8738 lt!729841) (originalCharacters!4633 (_1!11579 (get!6678 lt!729492))))))

(assert (=> d!584274 (= lt!729841 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729492))))) (value!120632 (_1!11579 (get!6678 lt!729492)))))))

(assert (=> d!584274 (= (charsOf!2382 (_1!11579 (get!6678 lt!729492))) lt!729841)))

(declare-fun b_lambda!63175 () Bool)

(assert (=> (not b_lambda!63175) (not d!584274)))

(declare-fun tb!116909 () Bool)

(declare-fun t!177963 () Bool)

(assert (=> (and b!1907389 (= (toChars!5310 (transformation!3826 (h!26886 rules!3198))) (toChars!5310 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729492)))))) t!177963) tb!116909))

(declare-fun b!1909217 () Bool)

(declare-fun e!1219380 () Bool)

(declare-fun tp!544802 () Bool)

(assert (=> b!1909217 (= e!1219380 (and (inv!28591 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729492))))) (value!120632 (_1!11579 (get!6678 lt!729492)))))) tp!544802))))

(declare-fun result!141266 () Bool)

(assert (=> tb!116909 (= result!141266 (and (inv!28592 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729492))))) (value!120632 (_1!11579 (get!6678 lt!729492))))) e!1219380))))

(assert (= tb!116909 b!1909217))

(declare-fun m!2342499 () Bool)

(assert (=> b!1909217 m!2342499))

(declare-fun m!2342501 () Bool)

(assert (=> tb!116909 m!2342501))

(assert (=> d!584274 t!177963))

(declare-fun b_and!148607 () Bool)

(assert (= b_and!148599 (and (=> t!177963 result!141266) b_and!148607)))

(declare-fun tb!116911 () Bool)

(declare-fun t!177965 () Bool)

(assert (=> (and b!1907400 (= (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (toChars!5310 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729492)))))) t!177965) tb!116911))

(declare-fun result!141268 () Bool)

(assert (= result!141268 result!141266))

(assert (=> d!584274 t!177965))

(declare-fun b_and!148609 () Bool)

(assert (= b_and!148601 (and (=> t!177965 result!141268) b_and!148609)))

(declare-fun tb!116913 () Bool)

(declare-fun t!177967 () Bool)

(assert (=> (and b!1908135 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) (toChars!5310 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729492)))))) t!177967) tb!116913))

(declare-fun result!141270 () Bool)

(assert (= result!141270 result!141266))

(assert (=> d!584274 t!177967))

(declare-fun b_and!148611 () Bool)

(assert (= b_and!148603 (and (=> t!177967 result!141270) b_and!148611)))

(declare-fun tb!116915 () Bool)

(declare-fun t!177969 () Bool)

(assert (=> (and b!1907387 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (toChars!5310 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729492)))))) t!177969) tb!116915))

(declare-fun result!141272 () Bool)

(assert (= result!141272 result!141266))

(assert (=> d!584274 t!177969))

(declare-fun b_and!148613 () Bool)

(assert (= b_and!148605 (and (=> t!177969 result!141272) b_and!148613)))

(declare-fun tb!116917 () Bool)

(declare-fun t!177971 () Bool)

(assert (=> (and b!1908146 (= (toChars!5310 (transformation!3826 (h!26886 (t!177702 rules!3198)))) (toChars!5310 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729492)))))) t!177971) tb!116917))

(declare-fun result!141274 () Bool)

(assert (= result!141274 result!141266))

(assert (=> d!584274 t!177971))

(declare-fun b_and!148615 () Bool)

(assert (= b_and!148597 (and (=> t!177971 result!141274) b_and!148615)))

(declare-fun m!2342503 () Bool)

(assert (=> d!584274 m!2342503))

(declare-fun m!2342505 () Bool)

(assert (=> d!584274 m!2342505))

(assert (=> b!1907864 d!584274))

(assert (=> b!1907864 d!584198))

(declare-fun d!584276 () Bool)

(declare-fun lt!729842 () Int)

(assert (=> d!584276 (>= lt!729842 0)))

(declare-fun e!1219381 () Int)

(assert (=> d!584276 (= lt!729842 e!1219381)))

(declare-fun c!311140 () Bool)

(assert (=> d!584276 (= c!311140 ((_ is Nil!21483) (originalCharacters!4633 separatorToken!354)))))

(assert (=> d!584276 (= (size!16947 (originalCharacters!4633 separatorToken!354)) lt!729842)))

(declare-fun b!1909218 () Bool)

(assert (=> b!1909218 (= e!1219381 0)))

(declare-fun b!1909219 () Bool)

(assert (=> b!1909219 (= e!1219381 (+ 1 (size!16947 (t!177700 (originalCharacters!4633 separatorToken!354)))))))

(assert (= (and d!584276 c!311140) b!1909218))

(assert (= (and d!584276 (not c!311140)) b!1909219))

(declare-fun m!2342507 () Bool)

(assert (=> b!1909219 m!2342507))

(assert (=> b!1907434 d!584276))

(declare-fun b!1909220 () Bool)

(declare-fun res!852451 () Bool)

(declare-fun e!1219382 () Bool)

(assert (=> b!1909220 (=> (not res!852451) (not e!1219382))))

(declare-fun lt!729847 () Option!4358)

(assert (=> b!1909220 (= res!852451 (< (size!16947 (_2!11579 (get!6678 lt!729847))) (size!16947 lt!729332)))))

(declare-fun b!1909221 () Bool)

(declare-fun e!1219385 () Bool)

(assert (=> b!1909221 (= e!1219385 e!1219382)))

(declare-fun res!852456 () Bool)

(assert (=> b!1909221 (=> (not res!852456) (not e!1219382))))

(assert (=> b!1909221 (= res!852456 (matchR!2537 (regex!3826 (h!26886 rules!3198)) (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729847))))))))

(declare-fun b!1909222 () Bool)

(assert (=> b!1909222 (= e!1219382 (= (size!16944 (_1!11579 (get!6678 lt!729847))) (size!16947 (originalCharacters!4633 (_1!11579 (get!6678 lt!729847))))))))

(declare-fun b!1909223 () Bool)

(declare-fun e!1219383 () Option!4358)

(declare-fun lt!729843 () tuple2!20232)

(assert (=> b!1909223 (= e!1219383 (Some!4357 (tuple2!20221 (Token!7205 (apply!5639 (transformation!3826 (h!26886 rules!3198)) (seqFromList!2698 (_1!11585 lt!729843))) (h!26886 rules!3198) (size!16952 (seqFromList!2698 (_1!11585 lt!729843))) (_1!11585 lt!729843)) (_2!11585 lt!729843))))))

(declare-fun lt!729844 () Unit!35820)

(assert (=> b!1909223 (= lt!729844 (longestMatchIsAcceptedByMatchOrIsEmpty!515 (regex!3826 (h!26886 rules!3198)) lt!729332))))

(declare-fun res!852452 () Bool)

(assert (=> b!1909223 (= res!852452 (isEmpty!13197 (_1!11585 (findLongestMatchInner!531 (regex!3826 (h!26886 rules!3198)) Nil!21483 (size!16947 Nil!21483) lt!729332 lt!729332 (size!16947 lt!729332)))))))

(declare-fun e!1219384 () Bool)

(assert (=> b!1909223 (=> res!852452 e!1219384)))

(assert (=> b!1909223 e!1219384))

(declare-fun lt!729845 () Unit!35820)

(assert (=> b!1909223 (= lt!729845 lt!729844)))

(declare-fun lt!729846 () Unit!35820)

(assert (=> b!1909223 (= lt!729846 (lemmaSemiInverse!805 (transformation!3826 (h!26886 rules!3198)) (seqFromList!2698 (_1!11585 lt!729843))))))

(declare-fun d!584278 () Bool)

(assert (=> d!584278 e!1219385))

(declare-fun res!852455 () Bool)

(assert (=> d!584278 (=> res!852455 e!1219385)))

(assert (=> d!584278 (= res!852455 (isEmpty!13199 lt!729847))))

(assert (=> d!584278 (= lt!729847 e!1219383)))

(declare-fun c!311141 () Bool)

(assert (=> d!584278 (= c!311141 (isEmpty!13197 (_1!11585 lt!729843)))))

(assert (=> d!584278 (= lt!729843 (findLongestMatch!458 (regex!3826 (h!26886 rules!3198)) lt!729332))))

(assert (=> d!584278 (ruleValid!1159 thiss!23328 (h!26886 rules!3198))))

(assert (=> d!584278 (= (maxPrefixOneRule!1205 thiss!23328 (h!26886 rules!3198) lt!729332) lt!729847)))

(declare-fun b!1909224 () Bool)

(assert (=> b!1909224 (= e!1219383 None!4357)))

(declare-fun b!1909225 () Bool)

(declare-fun res!852450 () Bool)

(assert (=> b!1909225 (=> (not res!852450) (not e!1219382))))

(assert (=> b!1909225 (= res!852450 (= (rule!6023 (_1!11579 (get!6678 lt!729847))) (h!26886 rules!3198)))))

(declare-fun b!1909226 () Bool)

(declare-fun res!852453 () Bool)

(assert (=> b!1909226 (=> (not res!852453) (not e!1219382))))

(assert (=> b!1909226 (= res!852453 (= (value!120632 (_1!11579 (get!6678 lt!729847))) (apply!5639 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729847)))) (seqFromList!2698 (originalCharacters!4633 (_1!11579 (get!6678 lt!729847)))))))))

(declare-fun b!1909227 () Bool)

(assert (=> b!1909227 (= e!1219384 (matchR!2537 (regex!3826 (h!26886 rules!3198)) (_1!11585 (findLongestMatchInner!531 (regex!3826 (h!26886 rules!3198)) Nil!21483 (size!16947 Nil!21483) lt!729332 lt!729332 (size!16947 lt!729332)))))))

(declare-fun b!1909228 () Bool)

(declare-fun res!852454 () Bool)

(assert (=> b!1909228 (=> (not res!852454) (not e!1219382))))

(assert (=> b!1909228 (= res!852454 (= (++!5773 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729847)))) (_2!11579 (get!6678 lt!729847))) lt!729332))))

(assert (= (and d!584278 c!311141) b!1909224))

(assert (= (and d!584278 (not c!311141)) b!1909223))

(assert (= (and b!1909223 (not res!852452)) b!1909227))

(assert (= (and d!584278 (not res!852455)) b!1909221))

(assert (= (and b!1909221 res!852456) b!1909228))

(assert (= (and b!1909228 res!852454) b!1909220))

(assert (= (and b!1909220 res!852451) b!1909225))

(assert (= (and b!1909225 res!852450) b!1909226))

(assert (= (and b!1909226 res!852453) b!1909222))

(declare-fun m!2342509 () Bool)

(assert (=> b!1909220 m!2342509))

(declare-fun m!2342511 () Bool)

(assert (=> b!1909220 m!2342511))

(assert (=> b!1909220 m!2340443))

(declare-fun m!2342513 () Bool)

(assert (=> b!1909223 m!2342513))

(declare-fun m!2342515 () Bool)

(assert (=> b!1909223 m!2342515))

(assert (=> b!1909223 m!2342513))

(declare-fun m!2342517 () Bool)

(assert (=> b!1909223 m!2342517))

(declare-fun m!2342519 () Bool)

(assert (=> b!1909223 m!2342519))

(declare-fun m!2342521 () Bool)

(assert (=> b!1909223 m!2342521))

(assert (=> b!1909223 m!2340443))

(assert (=> b!1909223 m!2342207))

(assert (=> b!1909223 m!2342513))

(assert (=> b!1909223 m!2342513))

(declare-fun m!2342523 () Bool)

(assert (=> b!1909223 m!2342523))

(assert (=> b!1909223 m!2342207))

(assert (=> b!1909223 m!2340443))

(declare-fun m!2342525 () Bool)

(assert (=> b!1909223 m!2342525))

(assert (=> b!1909228 m!2342509))

(declare-fun m!2342527 () Bool)

(assert (=> b!1909228 m!2342527))

(assert (=> b!1909228 m!2342527))

(declare-fun m!2342529 () Bool)

(assert (=> b!1909228 m!2342529))

(assert (=> b!1909228 m!2342529))

(declare-fun m!2342531 () Bool)

(assert (=> b!1909228 m!2342531))

(declare-fun m!2342533 () Bool)

(assert (=> d!584278 m!2342533))

(declare-fun m!2342535 () Bool)

(assert (=> d!584278 m!2342535))

(declare-fun m!2342537 () Bool)

(assert (=> d!584278 m!2342537))

(assert (=> d!584278 m!2342225))

(assert (=> b!1909222 m!2342509))

(declare-fun m!2342539 () Bool)

(assert (=> b!1909222 m!2342539))

(assert (=> b!1909227 m!2342207))

(assert (=> b!1909227 m!2340443))

(assert (=> b!1909227 m!2342207))

(assert (=> b!1909227 m!2340443))

(assert (=> b!1909227 m!2342525))

(declare-fun m!2342541 () Bool)

(assert (=> b!1909227 m!2342541))

(assert (=> b!1909226 m!2342509))

(declare-fun m!2342543 () Bool)

(assert (=> b!1909226 m!2342543))

(assert (=> b!1909226 m!2342543))

(declare-fun m!2342545 () Bool)

(assert (=> b!1909226 m!2342545))

(assert (=> b!1909225 m!2342509))

(assert (=> b!1909221 m!2342509))

(assert (=> b!1909221 m!2342527))

(assert (=> b!1909221 m!2342527))

(assert (=> b!1909221 m!2342529))

(assert (=> b!1909221 m!2342529))

(declare-fun m!2342547 () Bool)

(assert (=> b!1909221 m!2342547))

(assert (=> bm!117520 d!584278))

(assert (=> b!1907978 d!583686))

(declare-fun d!584280 () Bool)

(assert (=> d!584280 (= (isEmpty!13199 lt!729395) (not ((_ is Some!4357) lt!729395)))))

(assert (=> d!583562 d!584280))

(declare-fun b!1909231 () Bool)

(declare-fun e!1219387 () Bool)

(assert (=> b!1909231 (= e!1219387 (isPrefix!1923 (tail!2952 lt!729332) (tail!2952 lt!729332)))))

(declare-fun b!1909230 () Bool)

(declare-fun res!852459 () Bool)

(assert (=> b!1909230 (=> (not res!852459) (not e!1219387))))

(assert (=> b!1909230 (= res!852459 (= (head!4428 lt!729332) (head!4428 lt!729332)))))

(declare-fun d!584282 () Bool)

(declare-fun e!1219388 () Bool)

(assert (=> d!584282 e!1219388))

(declare-fun res!852460 () Bool)

(assert (=> d!584282 (=> res!852460 e!1219388)))

(declare-fun lt!729848 () Bool)

(assert (=> d!584282 (= res!852460 (not lt!729848))))

(declare-fun e!1219386 () Bool)

(assert (=> d!584282 (= lt!729848 e!1219386)))

(declare-fun res!852457 () Bool)

(assert (=> d!584282 (=> res!852457 e!1219386)))

(assert (=> d!584282 (= res!852457 ((_ is Nil!21483) lt!729332))))

(assert (=> d!584282 (= (isPrefix!1923 lt!729332 lt!729332) lt!729848)))

(declare-fun b!1909232 () Bool)

(assert (=> b!1909232 (= e!1219388 (>= (size!16947 lt!729332) (size!16947 lt!729332)))))

(declare-fun b!1909229 () Bool)

(assert (=> b!1909229 (= e!1219386 e!1219387)))

(declare-fun res!852458 () Bool)

(assert (=> b!1909229 (=> (not res!852458) (not e!1219387))))

(assert (=> b!1909229 (= res!852458 (not ((_ is Nil!21483) lt!729332)))))

(assert (= (and d!584282 (not res!852457)) b!1909229))

(assert (= (and b!1909229 res!852458) b!1909230))

(assert (= (and b!1909230 res!852459) b!1909231))

(assert (= (and d!584282 (not res!852460)) b!1909232))

(assert (=> b!1909231 m!2340807))

(assert (=> b!1909231 m!2340807))

(assert (=> b!1909231 m!2340807))

(assert (=> b!1909231 m!2340807))

(declare-fun m!2342549 () Bool)

(assert (=> b!1909231 m!2342549))

(assert (=> b!1909230 m!2340805))

(assert (=> b!1909230 m!2340805))

(assert (=> b!1909232 m!2340443))

(assert (=> b!1909232 m!2340443))

(assert (=> d!583562 d!584282))

(declare-fun d!584284 () Bool)

(assert (=> d!584284 (isPrefix!1923 lt!729332 lt!729332)))

(declare-fun lt!729849 () Unit!35820)

(assert (=> d!584284 (= lt!729849 (choose!11888 lt!729332 lt!729332))))

(assert (=> d!584284 (= (lemmaIsPrefixRefl!1241 lt!729332 lt!729332) lt!729849)))

(declare-fun bs!414104 () Bool)

(assert (= bs!414104 d!584284))

(assert (=> bs!414104 m!2340447))

(declare-fun m!2342551 () Bool)

(assert (=> bs!414104 m!2342551))

(assert (=> d!583562 d!584284))

(assert (=> d!583562 d!584254))

(declare-fun d!584286 () Bool)

(assert (=> d!584286 (= (get!6677 lt!729487) (v!26399 lt!729487))))

(assert (=> b!1907842 d!584286))

(declare-fun b!1909233 () Bool)

(declare-fun e!1219391 () List!21565)

(assert (=> b!1909233 (= e!1219391 Nil!21483)))

(declare-fun b!1909234 () Bool)

(declare-fun e!1219389 () List!21565)

(declare-fun call!117675 () List!21565)

(assert (=> b!1909234 (= e!1219389 call!117675)))

(declare-fun b!1909235 () Bool)

(assert (=> b!1909235 (= e!1219389 call!117675)))

(declare-fun b!1909236 () Bool)

(declare-fun c!311142 () Bool)

(assert (=> b!1909236 (= c!311142 ((_ is Star!5251) (ite c!310887 (reg!5580 (regex!3826 (rule!6023 separatorToken!354))) (ite c!310888 (regOne!11015 (regex!3826 (rule!6023 separatorToken!354))) (regTwo!11014 (regex!3826 (rule!6023 separatorToken!354)))))))))

(declare-fun e!1219392 () List!21565)

(declare-fun e!1219390 () List!21565)

(assert (=> b!1909236 (= e!1219392 e!1219390)))

(declare-fun b!1909237 () Bool)

(assert (=> b!1909237 (= e!1219390 e!1219389)))

(declare-fun c!311143 () Bool)

(assert (=> b!1909237 (= c!311143 ((_ is Union!5251) (ite c!310887 (reg!5580 (regex!3826 (rule!6023 separatorToken!354))) (ite c!310888 (regOne!11015 (regex!3826 (rule!6023 separatorToken!354))) (regTwo!11014 (regex!3826 (rule!6023 separatorToken!354)))))))))

(declare-fun b!1909238 () Bool)

(assert (=> b!1909238 (= e!1219391 e!1219392)))

(declare-fun c!311144 () Bool)

(assert (=> b!1909238 (= c!311144 ((_ is ElementMatch!5251) (ite c!310887 (reg!5580 (regex!3826 (rule!6023 separatorToken!354))) (ite c!310888 (regOne!11015 (regex!3826 (rule!6023 separatorToken!354))) (regTwo!11014 (regex!3826 (rule!6023 separatorToken!354)))))))))

(declare-fun bm!117670 () Bool)

(declare-fun call!117676 () List!21565)

(assert (=> bm!117670 (= call!117676 (usedCharacters!334 (ite c!311143 (regTwo!11015 (ite c!310887 (reg!5580 (regex!3826 (rule!6023 separatorToken!354))) (ite c!310888 (regOne!11015 (regex!3826 (rule!6023 separatorToken!354))) (regTwo!11014 (regex!3826 (rule!6023 separatorToken!354)))))) (regOne!11014 (ite c!310887 (reg!5580 (regex!3826 (rule!6023 separatorToken!354))) (ite c!310888 (regOne!11015 (regex!3826 (rule!6023 separatorToken!354))) (regTwo!11014 (regex!3826 (rule!6023 separatorToken!354)))))))))))

(declare-fun bm!117671 () Bool)

(declare-fun call!117674 () List!21565)

(declare-fun call!117677 () List!21565)

(assert (=> bm!117671 (= call!117674 call!117677)))

(declare-fun bm!117672 () Bool)

(assert (=> bm!117672 (= call!117677 (usedCharacters!334 (ite c!311142 (reg!5580 (ite c!310887 (reg!5580 (regex!3826 (rule!6023 separatorToken!354))) (ite c!310888 (regOne!11015 (regex!3826 (rule!6023 separatorToken!354))) (regTwo!11014 (regex!3826 (rule!6023 separatorToken!354)))))) (ite c!311143 (regOne!11015 (ite c!310887 (reg!5580 (regex!3826 (rule!6023 separatorToken!354))) (ite c!310888 (regOne!11015 (regex!3826 (rule!6023 separatorToken!354))) (regTwo!11014 (regex!3826 (rule!6023 separatorToken!354)))))) (regTwo!11014 (ite c!310887 (reg!5580 (regex!3826 (rule!6023 separatorToken!354))) (ite c!310888 (regOne!11015 (regex!3826 (rule!6023 separatorToken!354))) (regTwo!11014 (regex!3826 (rule!6023 separatorToken!354))))))))))))

(declare-fun b!1909239 () Bool)

(assert (=> b!1909239 (= e!1219392 (Cons!21483 (c!310755 (ite c!310887 (reg!5580 (regex!3826 (rule!6023 separatorToken!354))) (ite c!310888 (regOne!11015 (regex!3826 (rule!6023 separatorToken!354))) (regTwo!11014 (regex!3826 (rule!6023 separatorToken!354)))))) Nil!21483))))

(declare-fun b!1909240 () Bool)

(assert (=> b!1909240 (= e!1219390 call!117677)))

(declare-fun bm!117669 () Bool)

(assert (=> bm!117669 (= call!117675 (++!5773 (ite c!311143 call!117674 call!117676) (ite c!311143 call!117676 call!117674)))))

(declare-fun d!584288 () Bool)

(declare-fun c!311145 () Bool)

(assert (=> d!584288 (= c!311145 (or ((_ is EmptyExpr!5251) (ite c!310887 (reg!5580 (regex!3826 (rule!6023 separatorToken!354))) (ite c!310888 (regOne!11015 (regex!3826 (rule!6023 separatorToken!354))) (regTwo!11014 (regex!3826 (rule!6023 separatorToken!354)))))) ((_ is EmptyLang!5251) (ite c!310887 (reg!5580 (regex!3826 (rule!6023 separatorToken!354))) (ite c!310888 (regOne!11015 (regex!3826 (rule!6023 separatorToken!354))) (regTwo!11014 (regex!3826 (rule!6023 separatorToken!354))))))))))

(assert (=> d!584288 (= (usedCharacters!334 (ite c!310887 (reg!5580 (regex!3826 (rule!6023 separatorToken!354))) (ite c!310888 (regOne!11015 (regex!3826 (rule!6023 separatorToken!354))) (regTwo!11014 (regex!3826 (rule!6023 separatorToken!354)))))) e!1219391)))

(assert (= (and d!584288 c!311145) b!1909233))

(assert (= (and d!584288 (not c!311145)) b!1909238))

(assert (= (and b!1909238 c!311144) b!1909239))

(assert (= (and b!1909238 (not c!311144)) b!1909236))

(assert (= (and b!1909236 c!311142) b!1909240))

(assert (= (and b!1909236 (not c!311142)) b!1909237))

(assert (= (and b!1909237 c!311143) b!1909234))

(assert (= (and b!1909237 (not c!311143)) b!1909235))

(assert (= (or b!1909234 b!1909235) bm!117671))

(assert (= (or b!1909234 b!1909235) bm!117670))

(assert (= (or b!1909234 b!1909235) bm!117669))

(assert (= (or b!1909240 bm!117671) bm!117672))

(declare-fun m!2342553 () Bool)

(assert (=> bm!117670 m!2342553))

(declare-fun m!2342555 () Bool)

(assert (=> bm!117672 m!2342555))

(declare-fun m!2342557 () Bool)

(assert (=> bm!117669 m!2342557))

(assert (=> bm!117571 d!584288))

(declare-fun bs!414105 () Bool)

(declare-fun d!584290 () Bool)

(assert (= bs!414105 (and d!584290 d!583594)))

(declare-fun lambda!74568 () Int)

(assert (=> bs!414105 (= lambda!74568 lambda!74536)))

(declare-fun bs!414106 () Bool)

(assert (= bs!414106 (and d!584290 d!583922)))

(assert (=> bs!414106 (= (and (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (toChars!5310 (transformation!3826 (h!26886 rules!3198)))) (= (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (toValue!5451 (transformation!3826 (h!26886 rules!3198))))) (= lambda!74568 lambda!74554))))

(assert (=> d!584290 true))

(assert (=> d!584290 (< (dynLambda!10480 order!13591 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) (dynLambda!10484 order!13597 lambda!74568))))

(assert (=> d!584290 true))

(assert (=> d!584290 (< (dynLambda!10478 order!13587 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) (dynLambda!10484 order!13597 lambda!74568))))

(assert (=> d!584290 (= (semiInverseModEq!1545 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) (Forall!996 lambda!74568))))

(declare-fun bs!414107 () Bool)

(assert (= bs!414107 d!584290))

(declare-fun m!2342559 () Bool)

(assert (=> bs!414107 m!2342559))

(assert (=> d!583652 d!584290))

(declare-fun d!584292 () Bool)

(assert (=> d!584292 (= (get!6677 lt!729482) (v!26399 lt!729482))))

(assert (=> b!1907836 d!584292))

(declare-fun d!584294 () Bool)

(declare-fun lt!729850 () Int)

(assert (=> d!584294 (>= lt!729850 0)))

(declare-fun e!1219393 () Int)

(assert (=> d!584294 (= lt!729850 e!1219393)))

(declare-fun c!311146 () Bool)

(assert (=> d!584294 (= c!311146 ((_ is Nil!21483) lt!729515))))

(assert (=> d!584294 (= (size!16947 lt!729515) lt!729850)))

(declare-fun b!1909241 () Bool)

(assert (=> b!1909241 (= e!1219393 0)))

(declare-fun b!1909242 () Bool)

(assert (=> b!1909242 (= e!1219393 (+ 1 (size!16947 (t!177700 lt!729515))))))

(assert (= (and d!584294 c!311146) b!1909241))

(assert (= (and d!584294 (not c!311146)) b!1909242))

(declare-fun m!2342561 () Bool)

(assert (=> b!1909242 m!2342561))

(assert (=> b!1908092 d!584294))

(assert (=> b!1908092 d!584016))

(declare-fun d!584296 () Bool)

(declare-fun lt!729851 () Int)

(assert (=> d!584296 (>= lt!729851 0)))

(declare-fun e!1219394 () Int)

(assert (=> d!584296 (= lt!729851 e!1219394)))

(declare-fun c!311147 () Bool)

(assert (=> d!584296 (= c!311147 ((_ is Nil!21483) (++!5773 lt!729326 lt!729325)))))

(assert (=> d!584296 (= (size!16947 (++!5773 lt!729326 lt!729325)) lt!729851)))

(declare-fun b!1909243 () Bool)

(assert (=> b!1909243 (= e!1219394 0)))

(declare-fun b!1909244 () Bool)

(assert (=> b!1909244 (= e!1219394 (+ 1 (size!16947 (t!177700 (++!5773 lt!729326 lt!729325)))))))

(assert (= (and d!584296 c!311147) b!1909243))

(assert (= (and d!584296 (not c!311147)) b!1909244))

(declare-fun m!2342563 () Bool)

(assert (=> b!1909244 m!2342563))

(assert (=> b!1908092 d!584296))

(declare-fun d!584298 () Bool)

(assert (=> d!584298 (= (isEmpty!13198 lt!729487) (not ((_ is Some!4356) lt!729487)))))

(assert (=> d!583612 d!584298))

(assert (=> d!583612 d!583660))

(declare-fun d!584300 () Bool)

(declare-fun c!311148 () Bool)

(assert (=> d!584300 (= c!311148 ((_ is Nil!21483) lt!729443))))

(declare-fun e!1219395 () (InoxSet C!10648))

(assert (=> d!584300 (= (content!3147 lt!729443) e!1219395)))

(declare-fun b!1909245 () Bool)

(assert (=> b!1909245 (= e!1219395 ((as const (Array C!10648 Bool)) false))))

(declare-fun b!1909246 () Bool)

(assert (=> b!1909246 (= e!1219395 ((_ map or) (store ((as const (Array C!10648 Bool)) false) (h!26884 lt!729443) true) (content!3147 (t!177700 lt!729443))))))

(assert (= (and d!584300 c!311148) b!1909245))

(assert (= (and d!584300 (not c!311148)) b!1909246))

(declare-fun m!2342565 () Bool)

(assert (=> b!1909246 m!2342565))

(declare-fun m!2342567 () Bool)

(assert (=> b!1909246 m!2342567))

(assert (=> d!583582 d!584300))

(assert (=> d!583582 d!584184))

(assert (=> d!583582 d!583916))

(declare-fun bs!414108 () Bool)

(declare-fun d!584302 () Bool)

(assert (= bs!414108 (and d!584302 d!584254)))

(declare-fun lambda!74571 () Int)

(assert (=> bs!414108 (= lambda!74571 lambda!74567)))

(assert (=> d!584302 true))

(declare-fun lt!729854 () Bool)

(assert (=> d!584302 (= lt!729854 (rulesValidInductive!1302 thiss!23328 rules!3198))))

(assert (=> d!584302 (= lt!729854 (forall!4516 rules!3198 lambda!74571))))

(assert (=> d!584302 (= (rulesValid!1432 thiss!23328 rules!3198) lt!729854)))

(declare-fun bs!414109 () Bool)

(assert (= bs!414109 d!584302))

(assert (=> bs!414109 m!2340451))

(declare-fun m!2342569 () Bool)

(assert (=> bs!414109 m!2342569))

(assert (=> d!583660 d!584302))

(assert (=> b!1907685 d!583980))

(declare-fun d!584304 () Bool)

(assert (=> d!584304 (= (apply!5639 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729395)))) (seqFromList!2698 (originalCharacters!4633 (_1!11579 (get!6678 lt!729395))))) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729395))))) (seqFromList!2698 (originalCharacters!4633 (_1!11579 (get!6678 lt!729395))))))))

(declare-fun b_lambda!63177 () Bool)

(assert (=> (not b_lambda!63177) (not d!584304)))

(declare-fun tb!116919 () Bool)

(declare-fun t!177973 () Bool)

(assert (=> (and b!1907389 (= (toValue!5451 (transformation!3826 (h!26886 rules!3198))) (toValue!5451 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729395)))))) t!177973) tb!116919))

(declare-fun result!141276 () Bool)

(assert (=> tb!116919 (= result!141276 (inv!21 (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729395))))) (seqFromList!2698 (originalCharacters!4633 (_1!11579 (get!6678 lt!729395)))))))))

(declare-fun m!2342571 () Bool)

(assert (=> tb!116919 m!2342571))

(assert (=> d!584304 t!177973))

(declare-fun b_and!148617 () Bool)

(assert (= b_and!148587 (and (=> t!177973 result!141276) b_and!148617)))

(declare-fun tb!116921 () Bool)

(declare-fun t!177975 () Bool)

(assert (=> (and b!1908146 (= (toValue!5451 (transformation!3826 (h!26886 (t!177702 rules!3198)))) (toValue!5451 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729395)))))) t!177975) tb!116921))

(declare-fun result!141278 () Bool)

(assert (= result!141278 result!141276))

(assert (=> d!584304 t!177975))

(declare-fun b_and!148619 () Bool)

(assert (= b_and!148595 (and (=> t!177975 result!141278) b_and!148619)))

(declare-fun t!177977 () Bool)

(declare-fun tb!116923 () Bool)

(assert (=> (and b!1907387 (= (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (toValue!5451 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729395)))))) t!177977) tb!116923))

(declare-fun result!141280 () Bool)

(assert (= result!141280 result!141276))

(assert (=> d!584304 t!177977))

(declare-fun b_and!148621 () Bool)

(assert (= b_and!148589 (and (=> t!177977 result!141280) b_and!148621)))

(declare-fun tb!116925 () Bool)

(declare-fun t!177979 () Bool)

(assert (=> (and b!1908135 (= (toValue!5451 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) (toValue!5451 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729395)))))) t!177979) tb!116925))

(declare-fun result!141282 () Bool)

(assert (= result!141282 result!141276))

(assert (=> d!584304 t!177979))

(declare-fun b_and!148623 () Bool)

(assert (= b_and!148591 (and (=> t!177979 result!141282) b_and!148623)))

(declare-fun tb!116927 () Bool)

(declare-fun t!177981 () Bool)

(assert (=> (and b!1907400 (= (toValue!5451 (transformation!3826 (rule!6023 separatorToken!354))) (toValue!5451 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729395)))))) t!177981) tb!116927))

(declare-fun result!141284 () Bool)

(assert (= result!141284 result!141276))

(assert (=> d!584304 t!177981))

(declare-fun b_and!148625 () Bool)

(assert (= b_and!148593 (and (=> t!177981 result!141284) b_and!148625)))

(assert (=> d!584304 m!2340453))

(declare-fun m!2342573 () Bool)

(assert (=> d!584304 m!2342573))

(assert (=> b!1907685 d!584304))

(declare-fun d!584306 () Bool)

(assert (=> d!584306 (= (seqFromList!2698 (originalCharacters!4633 (_1!11579 (get!6678 lt!729395)))) (fromListB!1224 (originalCharacters!4633 (_1!11579 (get!6678 lt!729395)))))))

(declare-fun bs!414110 () Bool)

(assert (= bs!414110 d!584306))

(declare-fun m!2342575 () Bool)

(assert (=> bs!414110 m!2342575))

(assert (=> b!1907685 d!584306))

(declare-fun bs!414111 () Bool)

(declare-fun d!584308 () Bool)

(assert (= bs!414111 (and d!584308 b!1907392)))

(declare-fun lambda!74572 () Int)

(assert (=> bs!414111 (not (= lambda!74572 lambda!74515))))

(declare-fun bs!414112 () Bool)

(assert (= bs!414112 (and d!584308 d!583510)))

(assert (=> bs!414112 (= lambda!74572 lambda!74521)))

(declare-fun bs!414113 () Bool)

(assert (= bs!414113 (and d!584308 b!1907731)))

(assert (=> bs!414113 (= lambda!74572 lambda!74527)))

(declare-fun b!1909251 () Bool)

(declare-fun e!1219401 () Bool)

(assert (=> b!1909251 (= e!1219401 true)))

(declare-fun b!1909250 () Bool)

(declare-fun e!1219400 () Bool)

(assert (=> b!1909250 (= e!1219400 e!1219401)))

(declare-fun b!1909249 () Bool)

(declare-fun e!1219399 () Bool)

(assert (=> b!1909249 (= e!1219399 e!1219400)))

(assert (=> d!584308 e!1219399))

(assert (= b!1909250 b!1909251))

(assert (= b!1909249 b!1909250))

(assert (= (and d!584308 ((_ is Cons!21485) rules!3198)) b!1909249))

(assert (=> b!1909251 (< (dynLambda!10478 order!13587 (toValue!5451 (transformation!3826 (h!26886 rules!3198)))) (dynLambda!10479 order!13589 lambda!74572))))

(assert (=> b!1909251 (< (dynLambda!10480 order!13591 (toChars!5310 (transformation!3826 (h!26886 rules!3198)))) (dynLambda!10479 order!13589 lambda!74572))))

(assert (=> d!584308 true))

(declare-fun lt!729855 () Bool)

(assert (=> d!584308 (= lt!729855 (forall!4514 (t!177701 tokens!598) lambda!74572))))

(declare-fun e!1219397 () Bool)

(assert (=> d!584308 (= lt!729855 e!1219397)))

(declare-fun res!852461 () Bool)

(assert (=> d!584308 (=> res!852461 e!1219397)))

(assert (=> d!584308 (= res!852461 (not ((_ is Cons!21484) (t!177701 tokens!598))))))

(assert (=> d!584308 (not (isEmpty!13192 rules!3198))))

(assert (=> d!584308 (= (rulesProduceEachTokenIndividuallyList!1170 thiss!23328 rules!3198 (t!177701 tokens!598)) lt!729855)))

(declare-fun b!1909247 () Bool)

(declare-fun e!1219398 () Bool)

(assert (=> b!1909247 (= e!1219397 e!1219398)))

(declare-fun res!852462 () Bool)

(assert (=> b!1909247 (=> (not res!852462) (not e!1219398))))

(assert (=> b!1909247 (= res!852462 (rulesProduceIndividualToken!1611 thiss!23328 rules!3198 (h!26885 (t!177701 tokens!598))))))

(declare-fun b!1909248 () Bool)

(assert (=> b!1909248 (= e!1219398 (rulesProduceEachTokenIndividuallyList!1170 thiss!23328 rules!3198 (t!177701 (t!177701 tokens!598))))))

(assert (= (and d!584308 (not res!852461)) b!1909247))

(assert (= (and b!1909247 res!852462) b!1909248))

(declare-fun m!2342577 () Bool)

(assert (=> d!584308 m!2342577))

(assert (=> d!584308 m!2340187))

(declare-fun m!2342579 () Bool)

(assert (=> b!1909247 m!2342579))

(declare-fun m!2342581 () Bool)

(assert (=> b!1909248 m!2342581))

(assert (=> b!1907604 d!584308))

(declare-fun d!584310 () Bool)

(declare-fun res!852463 () Bool)

(declare-fun e!1219402 () Bool)

(assert (=> d!584310 (=> res!852463 e!1219402)))

(assert (=> d!584310 (= res!852463 ((_ is Nil!21484) tokens!598))))

(assert (=> d!584310 (= (forall!4514 tokens!598 lambda!74521) e!1219402)))

(declare-fun b!1909252 () Bool)

(declare-fun e!1219403 () Bool)

(assert (=> b!1909252 (= e!1219402 e!1219403)))

(declare-fun res!852464 () Bool)

(assert (=> b!1909252 (=> (not res!852464) (not e!1219403))))

(assert (=> b!1909252 (= res!852464 (dynLambda!10485 lambda!74521 (h!26885 tokens!598)))))

(declare-fun b!1909253 () Bool)

(assert (=> b!1909253 (= e!1219403 (forall!4514 (t!177701 tokens!598) lambda!74521))))

(assert (= (and d!584310 (not res!852463)) b!1909252))

(assert (= (and b!1909252 res!852464) b!1909253))

(declare-fun b_lambda!63179 () Bool)

(assert (=> (not b_lambda!63179) (not b!1909252)))

(declare-fun m!2342583 () Bool)

(assert (=> b!1909252 m!2342583))

(declare-fun m!2342585 () Bool)

(assert (=> b!1909253 m!2342585))

(assert (=> d!583510 d!584310))

(assert (=> d!583510 d!583680))

(declare-fun d!584312 () Bool)

(assert (=> d!584312 (= (isEmpty!13197 (originalCharacters!4633 (h!26885 tokens!598))) ((_ is Nil!21483) (originalCharacters!4633 (h!26885 tokens!598))))))

(assert (=> d!583654 d!584312))

(assert (=> d!583656 d!584026))

(declare-fun b!1909254 () Bool)

(declare-fun e!1219408 () Bool)

(declare-fun call!117678 () Bool)

(assert (=> b!1909254 (= e!1219408 call!117678)))

(declare-fun bm!117673 () Bool)

(declare-fun call!117680 () Bool)

(declare-fun c!311149 () Bool)

(declare-fun c!311150 () Bool)

(assert (=> bm!117673 (= call!117680 (validRegex!2121 (ite c!311149 (reg!5580 (regex!3826 lt!729321)) (ite c!311150 (regTwo!11015 (regex!3826 lt!729321)) (regTwo!11014 (regex!3826 lt!729321))))))))

(declare-fun d!584314 () Bool)

(declare-fun res!852465 () Bool)

(declare-fun e!1219407 () Bool)

(assert (=> d!584314 (=> res!852465 e!1219407)))

(assert (=> d!584314 (= res!852465 ((_ is ElementMatch!5251) (regex!3826 lt!729321)))))

(assert (=> d!584314 (= (validRegex!2121 (regex!3826 lt!729321)) e!1219407)))

(declare-fun b!1909255 () Bool)

(declare-fun res!852468 () Bool)

(declare-fun e!1219405 () Bool)

(assert (=> b!1909255 (=> res!852468 e!1219405)))

(assert (=> b!1909255 (= res!852468 (not ((_ is Concat!9214) (regex!3826 lt!729321))))))

(declare-fun e!1219410 () Bool)

(assert (=> b!1909255 (= e!1219410 e!1219405)))

(declare-fun b!1909256 () Bool)

(declare-fun e!1219406 () Bool)

(assert (=> b!1909256 (= e!1219406 call!117680)))

(declare-fun b!1909257 () Bool)

(declare-fun e!1219404 () Bool)

(assert (=> b!1909257 (= e!1219404 e!1219410)))

(assert (=> b!1909257 (= c!311150 ((_ is Union!5251) (regex!3826 lt!729321)))))

(declare-fun bm!117674 () Bool)

(declare-fun call!117679 () Bool)

(assert (=> bm!117674 (= call!117679 (validRegex!2121 (ite c!311150 (regOne!11015 (regex!3826 lt!729321)) (regOne!11014 (regex!3826 lt!729321)))))))

(declare-fun b!1909258 () Bool)

(declare-fun e!1219409 () Bool)

(assert (=> b!1909258 (= e!1219405 e!1219409)))

(declare-fun res!852467 () Bool)

(assert (=> b!1909258 (=> (not res!852467) (not e!1219409))))

(assert (=> b!1909258 (= res!852467 call!117679)))

(declare-fun b!1909259 () Bool)

(assert (=> b!1909259 (= e!1219404 e!1219406)))

(declare-fun res!852466 () Bool)

(assert (=> b!1909259 (= res!852466 (not (nullable!1595 (reg!5580 (regex!3826 lt!729321)))))))

(assert (=> b!1909259 (=> (not res!852466) (not e!1219406))))

(declare-fun b!1909260 () Bool)

(assert (=> b!1909260 (= e!1219407 e!1219404)))

(assert (=> b!1909260 (= c!311149 ((_ is Star!5251) (regex!3826 lt!729321)))))

(declare-fun bm!117675 () Bool)

(assert (=> bm!117675 (= call!117678 call!117680)))

(declare-fun b!1909261 () Bool)

(assert (=> b!1909261 (= e!1219409 call!117678)))

(declare-fun b!1909262 () Bool)

(declare-fun res!852469 () Bool)

(assert (=> b!1909262 (=> (not res!852469) (not e!1219408))))

(assert (=> b!1909262 (= res!852469 call!117679)))

(assert (=> b!1909262 (= e!1219410 e!1219408)))

(assert (= (and d!584314 (not res!852465)) b!1909260))

(assert (= (and b!1909260 c!311149) b!1909259))

(assert (= (and b!1909260 (not c!311149)) b!1909257))

(assert (= (and b!1909259 res!852466) b!1909256))

(assert (= (and b!1909257 c!311150) b!1909262))

(assert (= (and b!1909257 (not c!311150)) b!1909255))

(assert (= (and b!1909262 res!852469) b!1909254))

(assert (= (and b!1909255 (not res!852468)) b!1909258))

(assert (= (and b!1909258 res!852467) b!1909261))

(assert (= (or b!1909262 b!1909258) bm!117674))

(assert (= (or b!1909254 b!1909261) bm!117675))

(assert (= (or b!1909256 bm!117675) bm!117673))

(declare-fun m!2342587 () Bool)

(assert (=> bm!117673 m!2342587))

(declare-fun m!2342589 () Bool)

(assert (=> bm!117674 m!2342589))

(declare-fun m!2342591 () Bool)

(assert (=> b!1909259 m!2342591))

(assert (=> d!583656 d!584314))

(declare-fun d!584316 () Bool)

(assert (=> d!584316 (= (inv!17 (value!120632 separatorToken!354)) (= (charsToBigInt!1 (text!28182 (value!120632 separatorToken!354))) (value!120624 (value!120632 separatorToken!354))))))

(declare-fun bs!414114 () Bool)

(assert (= bs!414114 d!584316))

(declare-fun m!2342593 () Bool)

(assert (=> bs!414114 m!2342593))

(assert (=> b!1908042 d!584316))

(declare-fun b!1909263 () Bool)

(declare-fun res!852477 () Bool)

(declare-fun e!1219412 () Bool)

(assert (=> b!1909263 (=> res!852477 e!1219412)))

(declare-fun e!1219417 () Bool)

(assert (=> b!1909263 (= res!852477 e!1219417)))

(declare-fun res!852476 () Bool)

(assert (=> b!1909263 (=> (not res!852476) (not e!1219417))))

(declare-fun lt!729856 () Bool)

(assert (=> b!1909263 (= res!852476 lt!729856)))

(declare-fun b!1909264 () Bool)

(declare-fun e!1219416 () Bool)

(assert (=> b!1909264 (= e!1219416 (not lt!729856))))

(declare-fun bm!117676 () Bool)

(declare-fun call!117681 () Bool)

(assert (=> bm!117676 (= call!117681 (isEmpty!13197 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729492))))))))

(declare-fun b!1909265 () Bool)

(declare-fun res!852470 () Bool)

(declare-fun e!1219411 () Bool)

(assert (=> b!1909265 (=> res!852470 e!1219411)))

(assert (=> b!1909265 (= res!852470 (not (isEmpty!13197 (tail!2952 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729492))))))))))

(declare-fun b!1909266 () Bool)

(declare-fun res!852473 () Bool)

(assert (=> b!1909266 (=> res!852473 e!1219412)))

(assert (=> b!1909266 (= res!852473 (not ((_ is ElementMatch!5251) (regex!3826 (rule!6023 (_1!11579 (get!6678 lt!729492)))))))))

(assert (=> b!1909266 (= e!1219416 e!1219412)))

(declare-fun b!1909267 () Bool)

(declare-fun e!1219415 () Bool)

(assert (=> b!1909267 (= e!1219415 (nullable!1595 (regex!3826 (rule!6023 (_1!11579 (get!6678 lt!729492))))))))

(declare-fun d!584318 () Bool)

(declare-fun e!1219414 () Bool)

(assert (=> d!584318 e!1219414))

(declare-fun c!311153 () Bool)

(assert (=> d!584318 (= c!311153 ((_ is EmptyExpr!5251) (regex!3826 (rule!6023 (_1!11579 (get!6678 lt!729492))))))))

(assert (=> d!584318 (= lt!729856 e!1219415)))

(declare-fun c!311152 () Bool)

(assert (=> d!584318 (= c!311152 (isEmpty!13197 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729492))))))))

(assert (=> d!584318 (validRegex!2121 (regex!3826 (rule!6023 (_1!11579 (get!6678 lt!729492)))))))

(assert (=> d!584318 (= (matchR!2537 (regex!3826 (rule!6023 (_1!11579 (get!6678 lt!729492)))) (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729492))))) lt!729856)))

(declare-fun b!1909268 () Bool)

(assert (=> b!1909268 (= e!1219414 (= lt!729856 call!117681))))

(declare-fun b!1909269 () Bool)

(declare-fun res!852472 () Bool)

(assert (=> b!1909269 (=> (not res!852472) (not e!1219417))))

(assert (=> b!1909269 (= res!852472 (not call!117681))))

(declare-fun b!1909270 () Bool)

(assert (=> b!1909270 (= e!1219411 (not (= (head!4428 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729492))))) (c!310755 (regex!3826 (rule!6023 (_1!11579 (get!6678 lt!729492))))))))))

(declare-fun b!1909271 () Bool)

(assert (=> b!1909271 (= e!1219415 (matchR!2537 (derivativeStep!1354 (regex!3826 (rule!6023 (_1!11579 (get!6678 lt!729492)))) (head!4428 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729492)))))) (tail!2952 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729492)))))))))

(declare-fun b!1909272 () Bool)

(declare-fun e!1219413 () Bool)

(assert (=> b!1909272 (= e!1219412 e!1219413)))

(declare-fun res!852474 () Bool)

(assert (=> b!1909272 (=> (not res!852474) (not e!1219413))))

(assert (=> b!1909272 (= res!852474 (not lt!729856))))

(declare-fun b!1909273 () Bool)

(assert (=> b!1909273 (= e!1219414 e!1219416)))

(declare-fun c!311151 () Bool)

(assert (=> b!1909273 (= c!311151 ((_ is EmptyLang!5251) (regex!3826 (rule!6023 (_1!11579 (get!6678 lt!729492))))))))

(declare-fun b!1909274 () Bool)

(assert (=> b!1909274 (= e!1219413 e!1219411)))

(declare-fun res!852475 () Bool)

(assert (=> b!1909274 (=> res!852475 e!1219411)))

(assert (=> b!1909274 (= res!852475 call!117681)))

(declare-fun b!1909275 () Bool)

(declare-fun res!852471 () Bool)

(assert (=> b!1909275 (=> (not res!852471) (not e!1219417))))

(assert (=> b!1909275 (= res!852471 (isEmpty!13197 (tail!2952 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729492)))))))))

(declare-fun b!1909276 () Bool)

(assert (=> b!1909276 (= e!1219417 (= (head!4428 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729492))))) (c!310755 (regex!3826 (rule!6023 (_1!11579 (get!6678 lt!729492)))))))))

(assert (= (and d!584318 c!311152) b!1909267))

(assert (= (and d!584318 (not c!311152)) b!1909271))

(assert (= (and d!584318 c!311153) b!1909268))

(assert (= (and d!584318 (not c!311153)) b!1909273))

(assert (= (and b!1909273 c!311151) b!1909264))

(assert (= (and b!1909273 (not c!311151)) b!1909266))

(assert (= (and b!1909266 (not res!852473)) b!1909263))

(assert (= (and b!1909263 res!852476) b!1909269))

(assert (= (and b!1909269 res!852472) b!1909275))

(assert (= (and b!1909275 res!852471) b!1909276))

(assert (= (and b!1909263 (not res!852477)) b!1909272))

(assert (= (and b!1909272 res!852474) b!1909274))

(assert (= (and b!1909274 (not res!852475)) b!1909265))

(assert (= (and b!1909265 (not res!852470)) b!1909270))

(assert (= (or b!1909268 b!1909269 b!1909274) bm!117676))

(assert (=> d!584318 m!2340727))

(declare-fun m!2342595 () Bool)

(assert (=> d!584318 m!2342595))

(declare-fun m!2342597 () Bool)

(assert (=> d!584318 m!2342597))

(declare-fun m!2342599 () Bool)

(assert (=> b!1909267 m!2342599))

(assert (=> b!1909270 m!2340727))

(declare-fun m!2342601 () Bool)

(assert (=> b!1909270 m!2342601))

(assert (=> b!1909275 m!2340727))

(declare-fun m!2342603 () Bool)

(assert (=> b!1909275 m!2342603))

(assert (=> b!1909275 m!2342603))

(declare-fun m!2342605 () Bool)

(assert (=> b!1909275 m!2342605))

(assert (=> bm!117676 m!2340727))

(assert (=> bm!117676 m!2342595))

(assert (=> b!1909271 m!2340727))

(assert (=> b!1909271 m!2342601))

(assert (=> b!1909271 m!2342601))

(declare-fun m!2342607 () Bool)

(assert (=> b!1909271 m!2342607))

(assert (=> b!1909271 m!2340727))

(assert (=> b!1909271 m!2342603))

(assert (=> b!1909271 m!2342607))

(assert (=> b!1909271 m!2342603))

(declare-fun m!2342609 () Bool)

(assert (=> b!1909271 m!2342609))

(assert (=> b!1909276 m!2340727))

(assert (=> b!1909276 m!2342601))

(assert (=> b!1909265 m!2340727))

(assert (=> b!1909265 m!2342603))

(assert (=> b!1909265 m!2342603))

(assert (=> b!1909265 m!2342605))

(assert (=> b!1907857 d!584318))

(assert (=> b!1907857 d!584198))

(assert (=> b!1907857 d!584272))

(assert (=> b!1907857 d!584274))

(assert (=> bm!117557 d!584002))

(declare-fun b!1909277 () Bool)

(declare-fun e!1219420 () Bool)

(assert (=> b!1909277 (= e!1219420 (inv!16 (value!120632 (h!26885 (t!177701 tokens!598)))))))

(declare-fun b!1909278 () Bool)

(declare-fun res!852478 () Bool)

(declare-fun e!1219419 () Bool)

(assert (=> b!1909278 (=> res!852478 e!1219419)))

(assert (=> b!1909278 (= res!852478 (not ((_ is IntegerValue!11888) (value!120632 (h!26885 (t!177701 tokens!598))))))))

(declare-fun e!1219418 () Bool)

(assert (=> b!1909278 (= e!1219418 e!1219419)))

(declare-fun d!584320 () Bool)

(declare-fun c!311154 () Bool)

(assert (=> d!584320 (= c!311154 ((_ is IntegerValue!11886) (value!120632 (h!26885 (t!177701 tokens!598)))))))

(assert (=> d!584320 (= (inv!21 (value!120632 (h!26885 (t!177701 tokens!598)))) e!1219420)))

(declare-fun b!1909279 () Bool)

(assert (=> b!1909279 (= e!1219419 (inv!15 (value!120632 (h!26885 (t!177701 tokens!598)))))))

(declare-fun b!1909280 () Bool)

(assert (=> b!1909280 (= e!1219418 (inv!17 (value!120632 (h!26885 (t!177701 tokens!598)))))))

(declare-fun b!1909281 () Bool)

(assert (=> b!1909281 (= e!1219420 e!1219418)))

(declare-fun c!311155 () Bool)

(assert (=> b!1909281 (= c!311155 ((_ is IntegerValue!11887) (value!120632 (h!26885 (t!177701 tokens!598)))))))

(assert (= (and d!584320 c!311154) b!1909277))

(assert (= (and d!584320 (not c!311154)) b!1909281))

(assert (= (and b!1909281 c!311155) b!1909280))

(assert (= (and b!1909281 (not c!311155)) b!1909278))

(assert (= (and b!1909278 (not res!852478)) b!1909279))

(declare-fun m!2342611 () Bool)

(assert (=> b!1909277 m!2342611))

(declare-fun m!2342613 () Bool)

(assert (=> b!1909279 m!2342613))

(declare-fun m!2342615 () Bool)

(assert (=> b!1909280 m!2342615))

(assert (=> b!1908133 d!584320))

(declare-fun bs!414115 () Bool)

(declare-fun d!584322 () Bool)

(assert (= bs!414115 (and d!584322 d!583594)))

(declare-fun lambda!74573 () Int)

(assert (=> bs!414115 (= (and (= (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) (= (toValue!5451 (transformation!3826 (rule!6023 separatorToken!354))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) (= lambda!74573 lambda!74536))))

(declare-fun bs!414116 () Bool)

(assert (= bs!414116 (and d!584322 d!583922)))

(assert (=> bs!414116 (= (and (= (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (toChars!5310 (transformation!3826 (h!26886 rules!3198)))) (= (toValue!5451 (transformation!3826 (rule!6023 separatorToken!354))) (toValue!5451 (transformation!3826 (h!26886 rules!3198))))) (= lambda!74573 lambda!74554))))

(declare-fun bs!414117 () Bool)

(assert (= bs!414117 (and d!584322 d!584290)))

(assert (=> bs!414117 (= (and (= (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) (= (toValue!5451 (transformation!3826 (rule!6023 separatorToken!354))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))))) (= lambda!74573 lambda!74568))))

(assert (=> d!584322 true))

(assert (=> d!584322 (< (dynLambda!10480 order!13591 (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354)))) (dynLambda!10484 order!13597 lambda!74573))))

(assert (=> d!584322 true))

(assert (=> d!584322 (< (dynLambda!10478 order!13587 (toValue!5451 (transformation!3826 (rule!6023 separatorToken!354)))) (dynLambda!10484 order!13597 lambda!74573))))

(assert (=> d!584322 (= (semiInverseModEq!1545 (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (toValue!5451 (transformation!3826 (rule!6023 separatorToken!354)))) (Forall!996 lambda!74573))))

(declare-fun bs!414118 () Bool)

(assert (= bs!414118 d!584322))

(declare-fun m!2342617 () Bool)

(assert (=> bs!414118 m!2342617))

(assert (=> d!583666 d!584322))

(declare-fun d!584324 () Bool)

(assert (=> d!584324 (= (isEmpty!13199 lt!729322) (not ((_ is Some!4357) lt!729322)))))

(assert (=> d!583560 d!584324))

(declare-fun d!584326 () Bool)

(declare-fun lt!729857 () Int)

(assert (=> d!584326 (>= lt!729857 0)))

(declare-fun e!1219421 () Int)

(assert (=> d!584326 (= lt!729857 e!1219421)))

(declare-fun c!311156 () Bool)

(assert (=> d!584326 (= c!311156 ((_ is Nil!21483) lt!729513))))

(assert (=> d!584326 (= (size!16947 lt!729513) lt!729857)))

(declare-fun b!1909282 () Bool)

(assert (=> b!1909282 (= e!1219421 0)))

(declare-fun b!1909283 () Bool)

(assert (=> b!1909283 (= e!1219421 (+ 1 (size!16947 (t!177700 lt!729513))))))

(assert (= (and d!584326 c!311156) b!1909282))

(assert (= (and d!584326 (not c!311156)) b!1909283))

(declare-fun m!2342619 () Bool)

(assert (=> b!1909283 m!2342619))

(assert (=> b!1908060 d!584326))

(declare-fun d!584328 () Bool)

(declare-fun lt!729858 () Int)

(assert (=> d!584328 (>= lt!729858 0)))

(declare-fun e!1219422 () Int)

(assert (=> d!584328 (= lt!729858 e!1219422)))

(declare-fun c!311157 () Bool)

(assert (=> d!584328 (= c!311157 ((_ is Nil!21483) (++!5773 lt!729332 lt!729326)))))

(assert (=> d!584328 (= (size!16947 (++!5773 lt!729332 lt!729326)) lt!729858)))

(declare-fun b!1909284 () Bool)

(assert (=> b!1909284 (= e!1219422 0)))

(declare-fun b!1909285 () Bool)

(assert (=> b!1909285 (= e!1219422 (+ 1 (size!16947 (t!177700 (++!5773 lt!729332 lt!729326)))))))

(assert (= (and d!584328 c!311157) b!1909284))

(assert (= (and d!584328 (not c!311157)) b!1909285))

(assert (=> b!1909285 m!2342441))

(assert (=> b!1908060 d!584328))

(assert (=> b!1908060 d!584018))

(declare-fun d!584330 () Bool)

(assert (=> d!584330 (= (list!8738 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (value!120632 (h!26885 tokens!598)))) (list!8741 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (value!120632 (h!26885 tokens!598))))))))

(declare-fun bs!414119 () Bool)

(assert (= bs!414119 d!584330))

(declare-fun m!2342621 () Bool)

(assert (=> bs!414119 m!2342621))

(assert (=> b!1907983 d!584330))

(declare-fun d!584332 () Bool)

(declare-fun lt!729859 () BalanceConc!14106)

(assert (=> d!584332 (= (list!8738 lt!729859) (printList!1028 thiss!23328 (list!8742 (singletonSeq!1851 (h!26885 (t!177701 tokens!598))))))))

(assert (=> d!584332 (= lt!729859 (printTailRec!960 thiss!23328 (singletonSeq!1851 (h!26885 (t!177701 tokens!598))) 0 (BalanceConc!14107 Empty!7145)))))

(assert (=> d!584332 (= (print!1453 thiss!23328 (singletonSeq!1851 (h!26885 (t!177701 tokens!598)))) lt!729859)))

(declare-fun bs!414120 () Bool)

(assert (= bs!414120 d!584332))

(declare-fun m!2342623 () Bool)

(assert (=> bs!414120 m!2342623))

(assert (=> bs!414120 m!2340511))

(declare-fun m!2342625 () Bool)

(assert (=> bs!414120 m!2342625))

(assert (=> bs!414120 m!2342625))

(declare-fun m!2342627 () Bool)

(assert (=> bs!414120 m!2342627))

(assert (=> bs!414120 m!2340511))

(assert (=> bs!414120 m!2340515))

(assert (=> b!1907733 d!584332))

(declare-fun d!584334 () Bool)

(declare-fun e!1219423 () Bool)

(assert (=> d!584334 e!1219423))

(declare-fun res!852479 () Bool)

(assert (=> d!584334 (=> (not res!852479) (not e!1219423))))

(declare-fun lt!729860 () BalanceConc!14110)

(assert (=> d!584334 (= res!852479 (= (list!8742 lt!729860) (Cons!21484 (h!26885 (t!177701 tokens!598)) Nil!21484)))))

(assert (=> d!584334 (= lt!729860 (singleton!834 (h!26885 (t!177701 tokens!598))))))

(assert (=> d!584334 (= (singletonSeq!1851 (h!26885 (t!177701 tokens!598))) lt!729860)))

(declare-fun b!1909286 () Bool)

(assert (=> b!1909286 (= e!1219423 (isBalanced!2243 (c!310894 lt!729860)))))

(assert (= (and d!584334 res!852479) b!1909286))

(declare-fun m!2342629 () Bool)

(assert (=> d!584334 m!2342629))

(declare-fun m!2342631 () Bool)

(assert (=> d!584334 m!2342631))

(declare-fun m!2342633 () Bool)

(assert (=> b!1909286 m!2342633))

(assert (=> b!1907733 d!584334))

(declare-fun d!584336 () Bool)

(declare-fun lt!729876 () BalanceConc!14106)

(declare-fun printListTailRec!439 (LexerInterface!3439 List!21566 List!21565) List!21565)

(declare-fun dropList!770 (BalanceConc!14110 Int) List!21566)

(assert (=> d!584336 (= (list!8738 lt!729876) (printListTailRec!439 thiss!23328 (dropList!770 (singletonSeq!1851 (h!26885 (t!177701 tokens!598))) 0) (list!8738 (BalanceConc!14107 Empty!7145))))))

(declare-fun e!1219428 () BalanceConc!14106)

(assert (=> d!584336 (= lt!729876 e!1219428)))

(declare-fun c!311160 () Bool)

(assert (=> d!584336 (= c!311160 (>= 0 (size!16948 (singletonSeq!1851 (h!26885 (t!177701 tokens!598))))))))

(declare-fun e!1219429 () Bool)

(assert (=> d!584336 e!1219429))

(declare-fun res!852482 () Bool)

(assert (=> d!584336 (=> (not res!852482) (not e!1219429))))

(assert (=> d!584336 (= res!852482 (>= 0 0))))

(assert (=> d!584336 (= (printTailRec!960 thiss!23328 (singletonSeq!1851 (h!26885 (t!177701 tokens!598))) 0 (BalanceConc!14107 Empty!7145)) lt!729876)))

(declare-fun b!1909293 () Bool)

(assert (=> b!1909293 (= e!1219429 (<= 0 (size!16948 (singletonSeq!1851 (h!26885 (t!177701 tokens!598))))))))

(declare-fun b!1909294 () Bool)

(assert (=> b!1909294 (= e!1219428 (BalanceConc!14107 Empty!7145))))

(declare-fun b!1909295 () Bool)

(declare-fun ++!5775 (BalanceConc!14106 BalanceConc!14106) BalanceConc!14106)

(assert (=> b!1909295 (= e!1219428 (printTailRec!960 thiss!23328 (singletonSeq!1851 (h!26885 (t!177701 tokens!598))) (+ 0 1) (++!5775 (BalanceConc!14107 Empty!7145) (charsOf!2382 (apply!5640 (singletonSeq!1851 (h!26885 (t!177701 tokens!598))) 0)))))))

(declare-fun lt!729875 () List!21566)

(assert (=> b!1909295 (= lt!729875 (list!8742 (singletonSeq!1851 (h!26885 (t!177701 tokens!598)))))))

(declare-fun lt!729880 () Unit!35820)

(declare-fun lemmaDropApply!694 (List!21566 Int) Unit!35820)

(assert (=> b!1909295 (= lt!729880 (lemmaDropApply!694 lt!729875 0))))

(declare-fun head!4430 (List!21566) Token!7204)

(declare-fun drop!1061 (List!21566 Int) List!21566)

(declare-fun apply!5643 (List!21566 Int) Token!7204)

(assert (=> b!1909295 (= (head!4430 (drop!1061 lt!729875 0)) (apply!5643 lt!729875 0))))

(declare-fun lt!729877 () Unit!35820)

(assert (=> b!1909295 (= lt!729877 lt!729880)))

(declare-fun lt!729878 () List!21566)

(assert (=> b!1909295 (= lt!729878 (list!8742 (singletonSeq!1851 (h!26885 (t!177701 tokens!598)))))))

(declare-fun lt!729881 () Unit!35820)

(declare-fun lemmaDropTail!670 (List!21566 Int) Unit!35820)

(assert (=> b!1909295 (= lt!729881 (lemmaDropTail!670 lt!729878 0))))

(declare-fun tail!2954 (List!21566) List!21566)

(assert (=> b!1909295 (= (tail!2954 (drop!1061 lt!729878 0)) (drop!1061 lt!729878 (+ 0 1)))))

(declare-fun lt!729879 () Unit!35820)

(assert (=> b!1909295 (= lt!729879 lt!729881)))

(assert (= (and d!584336 res!852482) b!1909293))

(assert (= (and d!584336 c!311160) b!1909294))

(assert (= (and d!584336 (not c!311160)) b!1909295))

(assert (=> d!584336 m!2340511))

(declare-fun m!2342635 () Bool)

(assert (=> d!584336 m!2342635))

(assert (=> d!584336 m!2340511))

(declare-fun m!2342637 () Bool)

(assert (=> d!584336 m!2342637))

(declare-fun m!2342639 () Bool)

(assert (=> d!584336 m!2342639))

(assert (=> d!584336 m!2342635))

(assert (=> d!584336 m!2342639))

(declare-fun m!2342641 () Bool)

(assert (=> d!584336 m!2342641))

(declare-fun m!2342643 () Bool)

(assert (=> d!584336 m!2342643))

(assert (=> b!1909293 m!2340511))

(assert (=> b!1909293 m!2342637))

(declare-fun m!2342645 () Bool)

(assert (=> b!1909295 m!2342645))

(declare-fun m!2342647 () Bool)

(assert (=> b!1909295 m!2342647))

(declare-fun m!2342649 () Bool)

(assert (=> b!1909295 m!2342649))

(declare-fun m!2342651 () Bool)

(assert (=> b!1909295 m!2342651))

(declare-fun m!2342653 () Bool)

(assert (=> b!1909295 m!2342653))

(declare-fun m!2342655 () Bool)

(assert (=> b!1909295 m!2342655))

(assert (=> b!1909295 m!2342653))

(declare-fun m!2342657 () Bool)

(assert (=> b!1909295 m!2342657))

(declare-fun m!2342659 () Bool)

(assert (=> b!1909295 m!2342659))

(assert (=> b!1909295 m!2342645))

(declare-fun m!2342661 () Bool)

(assert (=> b!1909295 m!2342661))

(declare-fun m!2342663 () Bool)

(assert (=> b!1909295 m!2342663))

(declare-fun m!2342665 () Bool)

(assert (=> b!1909295 m!2342665))

(assert (=> b!1909295 m!2340511))

(assert (=> b!1909295 m!2342651))

(assert (=> b!1909295 m!2340511))

(assert (=> b!1909295 m!2342625))

(assert (=> b!1909295 m!2342661))

(assert (=> b!1909295 m!2340511))

(assert (=> b!1909295 m!2342657))

(declare-fun m!2342667 () Bool)

(assert (=> b!1909295 m!2342667))

(assert (=> b!1907733 d!584336))

(declare-fun b!1909304 () Bool)

(declare-fun res!852487 () Bool)

(declare-fun e!1219434 () Bool)

(assert (=> b!1909304 (=> (not res!852487) (not e!1219434))))

(declare-fun lt!729916 () Token!7204)

(assert (=> b!1909304 (= res!852487 (matchR!2537 (regex!3826 (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 lt!729916))))) (list!8738 (charsOf!2382 lt!729916))))))

(declare-fun b!1909305 () Bool)

(assert (=> b!1909305 (= e!1219434 (= (rule!6023 lt!729916) (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 lt!729916))))))))

(declare-fun b!1909307 () Bool)

(declare-fun e!1219435 () Unit!35820)

(declare-fun Unit!35832 () Unit!35820)

(assert (=> b!1909307 (= e!1219435 Unit!35832)))

(declare-fun b!1909306 () Bool)

(declare-fun Unit!35833 () Unit!35820)

(assert (=> b!1909306 (= e!1219435 Unit!35833)))

(declare-fun lt!729929 () List!21565)

(assert (=> b!1909306 (= lt!729929 (++!5773 call!117536 lt!729424))))

(declare-fun lt!729930 () Unit!35820)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!371 (LexerInterface!3439 Rule!7452 List!21567 List!21565) Unit!35820)

(assert (=> b!1909306 (= lt!729930 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!371 thiss!23328 (rule!6023 lt!729916) rules!3198 lt!729929))))

(assert (=> b!1909306 (isEmpty!13199 (maxPrefixOneRule!1205 thiss!23328 (rule!6023 lt!729916) lt!729929))))

(declare-fun lt!729927 () Unit!35820)

(assert (=> b!1909306 (= lt!729927 lt!729930)))

(declare-fun lt!729923 () List!21565)

(assert (=> b!1909306 (= lt!729923 (list!8738 (charsOf!2382 lt!729916)))))

(declare-fun lt!729925 () Unit!35820)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!367 (LexerInterface!3439 Rule!7452 List!21565 List!21565) Unit!35820)

(assert (=> b!1909306 (= lt!729925 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!367 thiss!23328 (rule!6023 lt!729916) lt!729923 (++!5773 call!117536 lt!729424)))))

(assert (=> b!1909306 (not (matchR!2537 (regex!3826 (rule!6023 lt!729916)) lt!729923))))

(declare-fun lt!729919 () Unit!35820)

(assert (=> b!1909306 (= lt!729919 lt!729925)))

(assert (=> b!1909306 false))

(declare-fun d!584338 () Bool)

(assert (=> d!584338 (isDefined!3656 (maxPrefix!1885 thiss!23328 rules!3198 (++!5773 call!117536 lt!729424)))))

(declare-fun lt!729932 () Unit!35820)

(assert (=> d!584338 (= lt!729932 e!1219435)))

(declare-fun c!311163 () Bool)

(assert (=> d!584338 (= c!311163 (isEmpty!13199 (maxPrefix!1885 thiss!23328 rules!3198 (++!5773 call!117536 lt!729424))))))

(declare-fun lt!729926 () Unit!35820)

(declare-fun lt!729920 () Unit!35820)

(assert (=> d!584338 (= lt!729926 lt!729920)))

(assert (=> d!584338 e!1219434))

(declare-fun res!852488 () Bool)

(assert (=> d!584338 (=> (not res!852488) (not e!1219434))))

(assert (=> d!584338 (= res!852488 (isDefined!3655 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 lt!729916)))))))

(assert (=> d!584338 (= lt!729920 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!669 thiss!23328 rules!3198 call!117536 lt!729916))))

(declare-fun lt!729921 () Unit!35820)

(declare-fun lt!729918 () Unit!35820)

(assert (=> d!584338 (= lt!729921 lt!729918)))

(declare-fun lt!729931 () List!21565)

(assert (=> d!584338 (isPrefix!1923 lt!729931 (++!5773 call!117536 lt!729424))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!363 (List!21565 List!21565 List!21565) Unit!35820)

(assert (=> d!584338 (= lt!729918 (lemmaPrefixStaysPrefixWhenAddingToSuffix!363 lt!729931 call!117536 lt!729424))))

(assert (=> d!584338 (= lt!729931 (list!8738 (charsOf!2382 lt!729916)))))

(declare-fun lt!729928 () Unit!35820)

(declare-fun lt!729924 () Unit!35820)

(assert (=> d!584338 (= lt!729928 lt!729924)))

(declare-fun lt!729922 () List!21565)

(declare-fun lt!729917 () List!21565)

(assert (=> d!584338 (isPrefix!1923 lt!729922 (++!5773 lt!729922 lt!729917))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1322 (List!21565 List!21565) Unit!35820)

(assert (=> d!584338 (= lt!729924 (lemmaConcatTwoListThenFirstIsPrefix!1322 lt!729922 lt!729917))))

(assert (=> d!584338 (= lt!729917 (_2!11579 (get!6678 (maxPrefix!1885 thiss!23328 rules!3198 call!117536))))))

(assert (=> d!584338 (= lt!729922 (list!8738 (charsOf!2382 lt!729916)))))

(assert (=> d!584338 (= lt!729916 (head!4430 (list!8742 (_1!11581 (lex!1524 thiss!23328 rules!3198 (seqFromList!2698 call!117536))))))))

(assert (=> d!584338 (not (isEmpty!13192 rules!3198))))

(assert (=> d!584338 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!722 thiss!23328 rules!3198 call!117536 lt!729424) lt!729932)))

(assert (= (and d!584338 res!852488) b!1909304))

(assert (= (and b!1909304 res!852487) b!1909305))

(assert (= (and d!584338 c!311163) b!1909306))

(assert (= (and d!584338 (not c!311163)) b!1909307))

(declare-fun m!2342669 () Bool)

(assert (=> b!1909304 m!2342669))

(declare-fun m!2342671 () Bool)

(assert (=> b!1909304 m!2342671))

(assert (=> b!1909304 m!2342671))

(declare-fun m!2342673 () Bool)

(assert (=> b!1909304 m!2342673))

(assert (=> b!1909304 m!2342669))

(declare-fun m!2342675 () Bool)

(assert (=> b!1909304 m!2342675))

(assert (=> b!1909304 m!2342675))

(declare-fun m!2342677 () Bool)

(assert (=> b!1909304 m!2342677))

(assert (=> b!1909305 m!2342675))

(assert (=> b!1909305 m!2342675))

(assert (=> b!1909305 m!2342677))

(assert (=> b!1909306 m!2342669))

(assert (=> b!1909306 m!2342671))

(declare-fun m!2342679 () Bool)

(assert (=> b!1909306 m!2342679))

(declare-fun m!2342681 () Bool)

(assert (=> b!1909306 m!2342681))

(declare-fun m!2342683 () Bool)

(assert (=> b!1909306 m!2342683))

(declare-fun m!2342685 () Bool)

(assert (=> b!1909306 m!2342685))

(declare-fun m!2342687 () Bool)

(assert (=> b!1909306 m!2342687))

(assert (=> b!1909306 m!2342669))

(assert (=> b!1909306 m!2342679))

(assert (=> b!1909306 m!2342687))

(declare-fun m!2342689 () Bool)

(assert (=> b!1909306 m!2342689))

(assert (=> d!584338 m!2342669))

(assert (=> d!584338 m!2342671))

(declare-fun m!2342691 () Bool)

(assert (=> d!584338 m!2342691))

(declare-fun m!2342693 () Bool)

(assert (=> d!584338 m!2342693))

(assert (=> d!584338 m!2342687))

(declare-fun m!2342695 () Bool)

(assert (=> d!584338 m!2342695))

(declare-fun m!2342697 () Bool)

(assert (=> d!584338 m!2342697))

(declare-fun m!2342699 () Bool)

(assert (=> d!584338 m!2342699))

(declare-fun m!2342701 () Bool)

(assert (=> d!584338 m!2342701))

(declare-fun m!2342703 () Bool)

(assert (=> d!584338 m!2342703))

(declare-fun m!2342705 () Bool)

(assert (=> d!584338 m!2342705))

(assert (=> d!584338 m!2340187))

(assert (=> d!584338 m!2342675))

(declare-fun m!2342707 () Bool)

(assert (=> d!584338 m!2342707))

(declare-fun m!2342709 () Bool)

(assert (=> d!584338 m!2342709))

(declare-fun m!2342711 () Bool)

(assert (=> d!584338 m!2342711))

(assert (=> d!584338 m!2342669))

(assert (=> d!584338 m!2342675))

(assert (=> d!584338 m!2342691))

(declare-fun m!2342713 () Bool)

(assert (=> d!584338 m!2342713))

(assert (=> d!584338 m!2342701))

(assert (=> d!584338 m!2342687))

(assert (=> d!584338 m!2342691))

(assert (=> d!584338 m!2342687))

(assert (=> d!584338 m!2342705))

(declare-fun m!2342715 () Bool)

(assert (=> d!584338 m!2342715))

(assert (=> d!584338 m!2342697))

(declare-fun m!2342717 () Bool)

(assert (=> d!584338 m!2342717))

(declare-fun m!2342719 () Bool)

(assert (=> d!584338 m!2342719))

(assert (=> d!584338 m!2342717))

(declare-fun m!2342721 () Bool)

(assert (=> d!584338 m!2342721))

(assert (=> b!1907733 d!584338))

(declare-fun bs!414121 () Bool)

(declare-fun d!584340 () Bool)

(assert (= bs!414121 (and d!584340 d!583584)))

(declare-fun lambda!74574 () Int)

(assert (=> bs!414121 (= (= (toValue!5451 (transformation!3826 (h!26886 rules!3198))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) (= lambda!74574 lambda!74533))))

(declare-fun bs!414122 () Bool)

(assert (= bs!414122 (and d!584340 d!584164)))

(assert (=> bs!414122 (= (= (toValue!5451 (transformation!3826 (h!26886 rules!3198))) (toValue!5451 (transformation!3826 (rule!6023 separatorToken!354)))) (= lambda!74574 lambda!74563))))

(declare-fun bs!414123 () Bool)

(assert (= bs!414123 (and d!584340 d!584212)))

(assert (=> bs!414123 (= (= (toValue!5451 (transformation!3826 (h!26886 rules!3198))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) (= lambda!74574 lambda!74564))))

(assert (=> d!584340 true))

(assert (=> d!584340 (< (dynLambda!10478 order!13587 (toValue!5451 (transformation!3826 (h!26886 rules!3198)))) (dynLambda!10482 order!13595 lambda!74574))))

(assert (=> d!584340 (= (equivClasses!1472 (toChars!5310 (transformation!3826 (h!26886 rules!3198))) (toValue!5451 (transformation!3826 (h!26886 rules!3198)))) (Forall2!621 lambda!74574))))

(declare-fun bs!414124 () Bool)

(assert (= bs!414124 d!584340))

(declare-fun m!2342723 () Bool)

(assert (=> bs!414124 m!2342723))

(assert (=> b!1907981 d!584340))

(assert (=> d!583676 d!584002))

(declare-fun b!1909308 () Bool)

(declare-fun e!1219440 () Bool)

(declare-fun call!117682 () Bool)

(assert (=> b!1909308 (= e!1219440 call!117682)))

(declare-fun call!117684 () Bool)

(declare-fun c!311165 () Bool)

(declare-fun c!311164 () Bool)

(declare-fun bm!117677 () Bool)

(assert (=> bm!117677 (= call!117684 (validRegex!2121 (ite c!311164 (reg!5580 (regex!3826 lt!729320)) (ite c!311165 (regTwo!11015 (regex!3826 lt!729320)) (regTwo!11014 (regex!3826 lt!729320))))))))

(declare-fun d!584342 () Bool)

(declare-fun res!852489 () Bool)

(declare-fun e!1219439 () Bool)

(assert (=> d!584342 (=> res!852489 e!1219439)))

(assert (=> d!584342 (= res!852489 ((_ is ElementMatch!5251) (regex!3826 lt!729320)))))

(assert (=> d!584342 (= (validRegex!2121 (regex!3826 lt!729320)) e!1219439)))

(declare-fun b!1909309 () Bool)

(declare-fun res!852492 () Bool)

(declare-fun e!1219437 () Bool)

(assert (=> b!1909309 (=> res!852492 e!1219437)))

(assert (=> b!1909309 (= res!852492 (not ((_ is Concat!9214) (regex!3826 lt!729320))))))

(declare-fun e!1219442 () Bool)

(assert (=> b!1909309 (= e!1219442 e!1219437)))

(declare-fun b!1909310 () Bool)

(declare-fun e!1219438 () Bool)

(assert (=> b!1909310 (= e!1219438 call!117684)))

(declare-fun b!1909311 () Bool)

(declare-fun e!1219436 () Bool)

(assert (=> b!1909311 (= e!1219436 e!1219442)))

(assert (=> b!1909311 (= c!311165 ((_ is Union!5251) (regex!3826 lt!729320)))))

(declare-fun bm!117678 () Bool)

(declare-fun call!117683 () Bool)

(assert (=> bm!117678 (= call!117683 (validRegex!2121 (ite c!311165 (regOne!11015 (regex!3826 lt!729320)) (regOne!11014 (regex!3826 lt!729320)))))))

(declare-fun b!1909312 () Bool)

(declare-fun e!1219441 () Bool)

(assert (=> b!1909312 (= e!1219437 e!1219441)))

(declare-fun res!852491 () Bool)

(assert (=> b!1909312 (=> (not res!852491) (not e!1219441))))

(assert (=> b!1909312 (= res!852491 call!117683)))

(declare-fun b!1909313 () Bool)

(assert (=> b!1909313 (= e!1219436 e!1219438)))

(declare-fun res!852490 () Bool)

(assert (=> b!1909313 (= res!852490 (not (nullable!1595 (reg!5580 (regex!3826 lt!729320)))))))

(assert (=> b!1909313 (=> (not res!852490) (not e!1219438))))

(declare-fun b!1909314 () Bool)

(assert (=> b!1909314 (= e!1219439 e!1219436)))

(assert (=> b!1909314 (= c!311164 ((_ is Star!5251) (regex!3826 lt!729320)))))

(declare-fun bm!117679 () Bool)

(assert (=> bm!117679 (= call!117682 call!117684)))

(declare-fun b!1909315 () Bool)

(assert (=> b!1909315 (= e!1219441 call!117682)))

(declare-fun b!1909316 () Bool)

(declare-fun res!852493 () Bool)

(assert (=> b!1909316 (=> (not res!852493) (not e!1219440))))

(assert (=> b!1909316 (= res!852493 call!117683)))

(assert (=> b!1909316 (= e!1219442 e!1219440)))

(assert (= (and d!584342 (not res!852489)) b!1909314))

(assert (= (and b!1909314 c!311164) b!1909313))

(assert (= (and b!1909314 (not c!311164)) b!1909311))

(assert (= (and b!1909313 res!852490) b!1909310))

(assert (= (and b!1909311 c!311165) b!1909316))

(assert (= (and b!1909311 (not c!311165)) b!1909309))

(assert (= (and b!1909316 res!852493) b!1909308))

(assert (= (and b!1909309 (not res!852492)) b!1909312))

(assert (= (and b!1909312 res!852491) b!1909315))

(assert (= (or b!1909316 b!1909312) bm!117678))

(assert (= (or b!1909308 b!1909315) bm!117679))

(assert (= (or b!1909310 bm!117679) bm!117677))

(declare-fun m!2342725 () Bool)

(assert (=> bm!117677 m!2342725))

(declare-fun m!2342727 () Bool)

(assert (=> bm!117678 m!2342727))

(declare-fun m!2342729 () Bool)

(assert (=> b!1909313 m!2342729))

(assert (=> d!583676 d!584342))

(declare-fun d!584344 () Bool)

(declare-fun lt!729933 () Bool)

(assert (=> d!584344 (= lt!729933 (select (content!3148 rules!3198) (get!6677 lt!729487)))))

(declare-fun e!1219444 () Bool)

(assert (=> d!584344 (= lt!729933 e!1219444)))

(declare-fun res!852494 () Bool)

(assert (=> d!584344 (=> (not res!852494) (not e!1219444))))

(assert (=> d!584344 (= res!852494 ((_ is Cons!21485) rules!3198))))

(assert (=> d!584344 (= (contains!3865 rules!3198 (get!6677 lt!729487)) lt!729933)))

(declare-fun b!1909317 () Bool)

(declare-fun e!1219443 () Bool)

(assert (=> b!1909317 (= e!1219444 e!1219443)))

(declare-fun res!852495 () Bool)

(assert (=> b!1909317 (=> res!852495 e!1219443)))

(assert (=> b!1909317 (= res!852495 (= (h!26886 rules!3198) (get!6677 lt!729487)))))

(declare-fun b!1909318 () Bool)

(assert (=> b!1909318 (= e!1219443 (contains!3865 (t!177702 rules!3198) (get!6677 lt!729487)))))

(assert (= (and d!584344 res!852494) b!1909317))

(assert (= (and b!1909317 (not res!852495)) b!1909318))

(assert (=> d!584344 m!2342395))

(assert (=> d!584344 m!2340671))

(declare-fun m!2342731 () Bool)

(assert (=> d!584344 m!2342731))

(assert (=> b!1909318 m!2340671))

(declare-fun m!2342733 () Bool)

(assert (=> b!1909318 m!2342733))

(assert (=> b!1907839 d!584344))

(assert (=> b!1907839 d!584286))

(declare-fun b!1909327 () Bool)

(declare-fun e!1219449 () List!21565)

(assert (=> b!1909327 (= e!1219449 Nil!21483)))

(declare-fun b!1909330 () Bool)

(declare-fun e!1219450 () List!21565)

(assert (=> b!1909330 (= e!1219450 (++!5773 (list!8741 (left!17176 (c!310756 lt!729323))) (list!8741 (right!17506 (c!310756 lt!729323)))))))

(declare-fun b!1909329 () Bool)

(declare-fun list!8746 (IArray!14295) List!21565)

(assert (=> b!1909329 (= e!1219450 (list!8746 (xs!10039 (c!310756 lt!729323))))))

(declare-fun b!1909328 () Bool)

(assert (=> b!1909328 (= e!1219449 e!1219450)))

(declare-fun c!311171 () Bool)

(assert (=> b!1909328 (= c!311171 ((_ is Leaf!10521) (c!310756 lt!729323)))))

(declare-fun d!584346 () Bool)

(declare-fun c!311170 () Bool)

(assert (=> d!584346 (= c!311170 ((_ is Empty!7145) (c!310756 lt!729323)))))

(assert (=> d!584346 (= (list!8741 (c!310756 lt!729323)) e!1219449)))

(assert (= (and d!584346 c!311170) b!1909327))

(assert (= (and d!584346 (not c!311170)) b!1909328))

(assert (= (and b!1909328 c!311171) b!1909329))

(assert (= (and b!1909328 (not c!311171)) b!1909330))

(declare-fun m!2342735 () Bool)

(assert (=> b!1909330 m!2342735))

(declare-fun m!2342737 () Bool)

(assert (=> b!1909330 m!2342737))

(assert (=> b!1909330 m!2342735))

(assert (=> b!1909330 m!2342737))

(declare-fun m!2342739 () Bool)

(assert (=> b!1909330 m!2342739))

(declare-fun m!2342741 () Bool)

(assert (=> b!1909329 m!2342741))

(assert (=> d!583634 d!584346))

(declare-fun d!584348 () Bool)

(declare-fun c!311172 () Bool)

(assert (=> d!584348 (= c!311172 ((_ is Nil!21483) lt!729516))))

(declare-fun e!1219451 () (InoxSet C!10648))

(assert (=> d!584348 (= (content!3147 lt!729516) e!1219451)))

(declare-fun b!1909331 () Bool)

(assert (=> b!1909331 (= e!1219451 ((as const (Array C!10648 Bool)) false))))

(declare-fun b!1909332 () Bool)

(assert (=> b!1909332 (= e!1219451 ((_ map or) (store ((as const (Array C!10648 Bool)) false) (h!26884 lt!729516) true) (content!3147 (t!177700 lt!729516))))))

(assert (= (and d!584348 c!311172) b!1909331))

(assert (= (and d!584348 (not c!311172)) b!1909332))

(declare-fun m!2342743 () Bool)

(assert (=> b!1909332 m!2342743))

(declare-fun m!2342745 () Bool)

(assert (=> b!1909332 m!2342745))

(assert (=> d!583692 d!584348))

(assert (=> d!583692 d!584184))

(assert (=> d!583692 d!583914))

(declare-fun b!1909333 () Bool)

(declare-fun res!852503 () Bool)

(declare-fun e!1219453 () Bool)

(assert (=> b!1909333 (=> res!852503 e!1219453)))

(declare-fun e!1219458 () Bool)

(assert (=> b!1909333 (= res!852503 e!1219458)))

(declare-fun res!852502 () Bool)

(assert (=> b!1909333 (=> (not res!852502) (not e!1219458))))

(declare-fun lt!729934 () Bool)

(assert (=> b!1909333 (= res!852502 lt!729934)))

(declare-fun b!1909334 () Bool)

(declare-fun e!1219457 () Bool)

(assert (=> b!1909334 (= e!1219457 (not lt!729934))))

(declare-fun bm!117680 () Bool)

(declare-fun call!117685 () Bool)

(assert (=> bm!117680 (= call!117685 (isEmpty!13197 (tail!2952 lt!729332)))))

(declare-fun b!1909335 () Bool)

(declare-fun res!852496 () Bool)

(declare-fun e!1219452 () Bool)

(assert (=> b!1909335 (=> res!852496 e!1219452)))

(assert (=> b!1909335 (= res!852496 (not (isEmpty!13197 (tail!2952 (tail!2952 lt!729332)))))))

(declare-fun b!1909336 () Bool)

(declare-fun res!852499 () Bool)

(assert (=> b!1909336 (=> res!852499 e!1219453)))

(assert (=> b!1909336 (= res!852499 (not ((_ is ElementMatch!5251) (derivativeStep!1354 (regex!3826 lt!729321) (head!4428 lt!729332)))))))

(assert (=> b!1909336 (= e!1219457 e!1219453)))

(declare-fun b!1909337 () Bool)

(declare-fun e!1219456 () Bool)

(assert (=> b!1909337 (= e!1219456 (nullable!1595 (derivativeStep!1354 (regex!3826 lt!729321) (head!4428 lt!729332))))))

(declare-fun d!584350 () Bool)

(declare-fun e!1219455 () Bool)

(assert (=> d!584350 e!1219455))

(declare-fun c!311175 () Bool)

(assert (=> d!584350 (= c!311175 ((_ is EmptyExpr!5251) (derivativeStep!1354 (regex!3826 lt!729321) (head!4428 lt!729332))))))

(assert (=> d!584350 (= lt!729934 e!1219456)))

(declare-fun c!311174 () Bool)

(assert (=> d!584350 (= c!311174 (isEmpty!13197 (tail!2952 lt!729332)))))

(assert (=> d!584350 (validRegex!2121 (derivativeStep!1354 (regex!3826 lt!729321) (head!4428 lt!729332)))))

(assert (=> d!584350 (= (matchR!2537 (derivativeStep!1354 (regex!3826 lt!729321) (head!4428 lt!729332)) (tail!2952 lt!729332)) lt!729934)))

(declare-fun b!1909338 () Bool)

(assert (=> b!1909338 (= e!1219455 (= lt!729934 call!117685))))

(declare-fun b!1909339 () Bool)

(declare-fun res!852498 () Bool)

(assert (=> b!1909339 (=> (not res!852498) (not e!1219458))))

(assert (=> b!1909339 (= res!852498 (not call!117685))))

(declare-fun b!1909340 () Bool)

(assert (=> b!1909340 (= e!1219452 (not (= (head!4428 (tail!2952 lt!729332)) (c!310755 (derivativeStep!1354 (regex!3826 lt!729321) (head!4428 lt!729332))))))))

(declare-fun b!1909341 () Bool)

(assert (=> b!1909341 (= e!1219456 (matchR!2537 (derivativeStep!1354 (derivativeStep!1354 (regex!3826 lt!729321) (head!4428 lt!729332)) (head!4428 (tail!2952 lt!729332))) (tail!2952 (tail!2952 lt!729332))))))

(declare-fun b!1909342 () Bool)

(declare-fun e!1219454 () Bool)

(assert (=> b!1909342 (= e!1219453 e!1219454)))

(declare-fun res!852500 () Bool)

(assert (=> b!1909342 (=> (not res!852500) (not e!1219454))))

(assert (=> b!1909342 (= res!852500 (not lt!729934))))

(declare-fun b!1909343 () Bool)

(assert (=> b!1909343 (= e!1219455 e!1219457)))

(declare-fun c!311173 () Bool)

(assert (=> b!1909343 (= c!311173 ((_ is EmptyLang!5251) (derivativeStep!1354 (regex!3826 lt!729321) (head!4428 lt!729332))))))

(declare-fun b!1909344 () Bool)

(assert (=> b!1909344 (= e!1219454 e!1219452)))

(declare-fun res!852501 () Bool)

(assert (=> b!1909344 (=> res!852501 e!1219452)))

(assert (=> b!1909344 (= res!852501 call!117685)))

(declare-fun b!1909345 () Bool)

(declare-fun res!852497 () Bool)

(assert (=> b!1909345 (=> (not res!852497) (not e!1219458))))

(assert (=> b!1909345 (= res!852497 (isEmpty!13197 (tail!2952 (tail!2952 lt!729332))))))

(declare-fun b!1909346 () Bool)

(assert (=> b!1909346 (= e!1219458 (= (head!4428 (tail!2952 lt!729332)) (c!310755 (derivativeStep!1354 (regex!3826 lt!729321) (head!4428 lt!729332)))))))

(assert (= (and d!584350 c!311174) b!1909337))

(assert (= (and d!584350 (not c!311174)) b!1909341))

(assert (= (and d!584350 c!311175) b!1909338))

(assert (= (and d!584350 (not c!311175)) b!1909343))

(assert (= (and b!1909343 c!311173) b!1909334))

(assert (= (and b!1909343 (not c!311173)) b!1909336))

(assert (= (and b!1909336 (not res!852499)) b!1909333))

(assert (= (and b!1909333 res!852502) b!1909339))

(assert (= (and b!1909339 res!852498) b!1909345))

(assert (= (and b!1909345 res!852497) b!1909346))

(assert (= (and b!1909333 (not res!852503)) b!1909342))

(assert (= (and b!1909342 res!852500) b!1909344))

(assert (= (and b!1909344 (not res!852501)) b!1909335))

(assert (= (and b!1909335 (not res!852496)) b!1909340))

(assert (= (or b!1909338 b!1909339 b!1909344) bm!117680))

(assert (=> d!584350 m!2340807))

(assert (=> d!584350 m!2340809))

(assert (=> d!584350 m!2340811))

(declare-fun m!2342747 () Bool)

(assert (=> d!584350 m!2342747))

(assert (=> b!1909337 m!2340811))

(declare-fun m!2342749 () Bool)

(assert (=> b!1909337 m!2342749))

(assert (=> b!1909340 m!2340807))

(declare-fun m!2342751 () Bool)

(assert (=> b!1909340 m!2342751))

(assert (=> b!1909345 m!2340807))

(declare-fun m!2342753 () Bool)

(assert (=> b!1909345 m!2342753))

(assert (=> b!1909345 m!2342753))

(declare-fun m!2342755 () Bool)

(assert (=> b!1909345 m!2342755))

(assert (=> bm!117680 m!2340807))

(assert (=> bm!117680 m!2340809))

(assert (=> b!1909341 m!2340807))

(assert (=> b!1909341 m!2342751))

(assert (=> b!1909341 m!2340811))

(assert (=> b!1909341 m!2342751))

(declare-fun m!2342757 () Bool)

(assert (=> b!1909341 m!2342757))

(assert (=> b!1909341 m!2340807))

(assert (=> b!1909341 m!2342753))

(assert (=> b!1909341 m!2342757))

(assert (=> b!1909341 m!2342753))

(declare-fun m!2342759 () Bool)

(assert (=> b!1909341 m!2342759))

(assert (=> b!1909346 m!2340807))

(assert (=> b!1909346 m!2342751))

(assert (=> b!1909335 m!2340807))

(assert (=> b!1909335 m!2342753))

(assert (=> b!1909335 m!2342753))

(assert (=> b!1909335 m!2342755))

(assert (=> b!1907993 d!584350))

(declare-fun bm!117681 () Bool)

(declare-fun call!117688 () Regex!5251)

(declare-fun call!117686 () Regex!5251)

(assert (=> bm!117681 (= call!117688 call!117686)))

(declare-fun bm!117682 () Bool)

(declare-fun call!117687 () Regex!5251)

(declare-fun call!117689 () Regex!5251)

(assert (=> bm!117682 (= call!117687 call!117689)))

(declare-fun b!1909347 () Bool)

(declare-fun e!1219461 () Regex!5251)

(assert (=> b!1909347 (= e!1219461 (Concat!9214 call!117687 (regex!3826 lt!729321)))))

(declare-fun b!1909348 () Bool)

(declare-fun e!1219462 () Regex!5251)

(assert (=> b!1909348 (= e!1219462 EmptyLang!5251)))

(declare-fun e!1219459 () Regex!5251)

(declare-fun b!1909349 () Bool)

(assert (=> b!1909349 (= e!1219459 (Union!5251 (Concat!9214 call!117687 (regTwo!11014 (regex!3826 lt!729321))) call!117688))))

(declare-fun c!311180 () Bool)

(declare-fun bm!117683 () Bool)

(declare-fun c!311177 () Bool)

(assert (=> bm!117683 (= call!117686 (derivativeStep!1354 (ite c!311180 (regTwo!11015 (regex!3826 lt!729321)) (ite c!311177 (regTwo!11014 (regex!3826 lt!729321)) (regOne!11014 (regex!3826 lt!729321)))) (head!4428 lt!729332)))))

(declare-fun b!1909350 () Bool)

(declare-fun e!1219463 () Regex!5251)

(assert (=> b!1909350 (= e!1219463 (Union!5251 call!117689 call!117686))))

(declare-fun b!1909351 () Bool)

(declare-fun e!1219460 () Regex!5251)

(assert (=> b!1909351 (= e!1219460 (ite (= (head!4428 lt!729332) (c!310755 (regex!3826 lt!729321))) EmptyExpr!5251 EmptyLang!5251))))

(declare-fun b!1909352 () Bool)

(assert (=> b!1909352 (= e!1219462 e!1219460)))

(declare-fun c!311179 () Bool)

(assert (=> b!1909352 (= c!311179 ((_ is ElementMatch!5251) (regex!3826 lt!729321)))))

(declare-fun d!584352 () Bool)

(declare-fun lt!729935 () Regex!5251)

(assert (=> d!584352 (validRegex!2121 lt!729935)))

(assert (=> d!584352 (= lt!729935 e!1219462)))

(declare-fun c!311176 () Bool)

(assert (=> d!584352 (= c!311176 (or ((_ is EmptyExpr!5251) (regex!3826 lt!729321)) ((_ is EmptyLang!5251) (regex!3826 lt!729321))))))

(assert (=> d!584352 (validRegex!2121 (regex!3826 lt!729321))))

(assert (=> d!584352 (= (derivativeStep!1354 (regex!3826 lt!729321) (head!4428 lt!729332)) lt!729935)))

(declare-fun b!1909353 () Bool)

(assert (=> b!1909353 (= e!1219463 e!1219461)))

(declare-fun c!311178 () Bool)

(assert (=> b!1909353 (= c!311178 ((_ is Star!5251) (regex!3826 lt!729321)))))

(declare-fun b!1909354 () Bool)

(assert (=> b!1909354 (= c!311177 (nullable!1595 (regOne!11014 (regex!3826 lt!729321))))))

(assert (=> b!1909354 (= e!1219461 e!1219459)))

(declare-fun b!1909355 () Bool)

(assert (=> b!1909355 (= e!1219459 (Union!5251 (Concat!9214 call!117688 (regTwo!11014 (regex!3826 lt!729321))) EmptyLang!5251))))

(declare-fun bm!117684 () Bool)

(assert (=> bm!117684 (= call!117689 (derivativeStep!1354 (ite c!311180 (regOne!11015 (regex!3826 lt!729321)) (ite c!311178 (reg!5580 (regex!3826 lt!729321)) (regOne!11014 (regex!3826 lt!729321)))) (head!4428 lt!729332)))))

(declare-fun b!1909356 () Bool)

(assert (=> b!1909356 (= c!311180 ((_ is Union!5251) (regex!3826 lt!729321)))))

(assert (=> b!1909356 (= e!1219460 e!1219463)))

(assert (= (and d!584352 c!311176) b!1909348))

(assert (= (and d!584352 (not c!311176)) b!1909352))

(assert (= (and b!1909352 c!311179) b!1909351))

(assert (= (and b!1909352 (not c!311179)) b!1909356))

(assert (= (and b!1909356 c!311180) b!1909350))

(assert (= (and b!1909356 (not c!311180)) b!1909353))

(assert (= (and b!1909353 c!311178) b!1909347))

(assert (= (and b!1909353 (not c!311178)) b!1909354))

(assert (= (and b!1909354 c!311177) b!1909349))

(assert (= (and b!1909354 (not c!311177)) b!1909355))

(assert (= (or b!1909349 b!1909355) bm!117681))

(assert (= (or b!1909347 b!1909349) bm!117682))

(assert (= (or b!1909350 bm!117682) bm!117684))

(assert (= (or b!1909350 bm!117681) bm!117683))

(assert (=> bm!117683 m!2340805))

(declare-fun m!2342761 () Bool)

(assert (=> bm!117683 m!2342761))

(declare-fun m!2342763 () Bool)

(assert (=> d!584352 m!2342763))

(assert (=> d!584352 m!2340801))

(declare-fun m!2342765 () Bool)

(assert (=> b!1909354 m!2342765))

(assert (=> bm!117684 m!2340805))

(declare-fun m!2342767 () Bool)

(assert (=> bm!117684 m!2342767))

(assert (=> b!1907993 d!584352))

(assert (=> b!1907993 d!583932))

(assert (=> b!1907993 d!584244))

(declare-fun d!584354 () Bool)

(declare-fun lt!729936 () Int)

(assert (=> d!584354 (>= lt!729936 0)))

(declare-fun e!1219464 () Int)

(assert (=> d!584354 (= lt!729936 e!1219464)))

(declare-fun c!311181 () Bool)

(assert (=> d!584354 (= c!311181 ((_ is Nil!21483) (_2!11579 (get!6678 lt!729492))))))

(assert (=> d!584354 (= (size!16947 (_2!11579 (get!6678 lt!729492))) lt!729936)))

(declare-fun b!1909357 () Bool)

(assert (=> b!1909357 (= e!1219464 0)))

(declare-fun b!1909358 () Bool)

(assert (=> b!1909358 (= e!1219464 (+ 1 (size!16947 (t!177700 (_2!11579 (get!6678 lt!729492))))))))

(assert (= (and d!584354 c!311181) b!1909357))

(assert (= (and d!584354 (not c!311181)) b!1909358))

(declare-fun m!2342769 () Bool)

(assert (=> b!1909358 m!2342769))

(assert (=> b!1907861 d!584354))

(assert (=> b!1907861 d!584198))

(declare-fun d!584356 () Bool)

(declare-fun lt!729937 () Int)

(assert (=> d!584356 (>= lt!729937 0)))

(declare-fun e!1219465 () Int)

(assert (=> d!584356 (= lt!729937 e!1219465)))

(declare-fun c!311182 () Bool)

(assert (=> d!584356 (= c!311182 ((_ is Nil!21483) (++!5773 lt!729332 lt!729325)))))

(assert (=> d!584356 (= (size!16947 (++!5773 lt!729332 lt!729325)) lt!729937)))

(declare-fun b!1909359 () Bool)

(assert (=> b!1909359 (= e!1219465 0)))

(declare-fun b!1909360 () Bool)

(assert (=> b!1909360 (= e!1219465 (+ 1 (size!16947 (t!177700 (++!5773 lt!729332 lt!729325)))))))

(assert (= (and d!584356 c!311182) b!1909359))

(assert (= (and d!584356 (not c!311182)) b!1909360))

(declare-fun m!2342771 () Bool)

(assert (=> b!1909360 m!2342771))

(assert (=> b!1907861 d!584356))

(declare-fun d!584358 () Bool)

(declare-fun lt!729938 () Bool)

(assert (=> d!584358 (= lt!729938 (select (content!3148 rules!3198) (rule!6023 (_1!11579 (get!6678 lt!729492)))))))

(declare-fun e!1219467 () Bool)

(assert (=> d!584358 (= lt!729938 e!1219467)))

(declare-fun res!852504 () Bool)

(assert (=> d!584358 (=> (not res!852504) (not e!1219467))))

(assert (=> d!584358 (= res!852504 ((_ is Cons!21485) rules!3198))))

(assert (=> d!584358 (= (contains!3865 rules!3198 (rule!6023 (_1!11579 (get!6678 lt!729492)))) lt!729938)))

(declare-fun b!1909361 () Bool)

(declare-fun e!1219466 () Bool)

(assert (=> b!1909361 (= e!1219467 e!1219466)))

(declare-fun res!852505 () Bool)

(assert (=> b!1909361 (=> res!852505 e!1219466)))

(assert (=> b!1909361 (= res!852505 (= (h!26886 rules!3198) (rule!6023 (_1!11579 (get!6678 lt!729492)))))))

(declare-fun b!1909362 () Bool)

(assert (=> b!1909362 (= e!1219466 (contains!3865 (t!177702 rules!3198) (rule!6023 (_1!11579 (get!6678 lt!729492)))))))

(assert (= (and d!584358 res!852504) b!1909361))

(assert (= (and b!1909361 (not res!852505)) b!1909362))

(assert (=> d!584358 m!2342395))

(declare-fun m!2342773 () Bool)

(assert (=> d!584358 m!2342773))

(declare-fun m!2342775 () Bool)

(assert (=> b!1909362 m!2342775))

(assert (=> b!1907865 d!584358))

(assert (=> b!1907865 d!584198))

(declare-fun d!584360 () Bool)

(assert (=> d!584360 (= (list!8738 lt!729497) (list!8741 (c!310756 lt!729497)))))

(declare-fun bs!414125 () Bool)

(assert (= bs!414125 d!584360))

(declare-fun m!2342777 () Bool)

(assert (=> bs!414125 m!2342777))

(assert (=> d!583630 d!584360))

(declare-fun d!584362 () Bool)

(declare-fun lt!729939 () Bool)

(assert (=> d!584362 (= lt!729939 (select (content!3148 rules!3198) (get!6677 lt!729482)))))

(declare-fun e!1219469 () Bool)

(assert (=> d!584362 (= lt!729939 e!1219469)))

(declare-fun res!852506 () Bool)

(assert (=> d!584362 (=> (not res!852506) (not e!1219469))))

(assert (=> d!584362 (= res!852506 ((_ is Cons!21485) rules!3198))))

(assert (=> d!584362 (= (contains!3865 rules!3198 (get!6677 lt!729482)) lt!729939)))

(declare-fun b!1909363 () Bool)

(declare-fun e!1219468 () Bool)

(assert (=> b!1909363 (= e!1219469 e!1219468)))

(declare-fun res!852507 () Bool)

(assert (=> b!1909363 (=> res!852507 e!1219468)))

(assert (=> b!1909363 (= res!852507 (= (h!26886 rules!3198) (get!6677 lt!729482)))))

(declare-fun b!1909364 () Bool)

(assert (=> b!1909364 (= e!1219468 (contains!3865 (t!177702 rules!3198) (get!6677 lt!729482)))))

(assert (= (and d!584362 res!852506) b!1909363))

(assert (= (and b!1909363 (not res!852507)) b!1909364))

(assert (=> d!584362 m!2342395))

(assert (=> d!584362 m!2340659))

(declare-fun m!2342779 () Bool)

(assert (=> d!584362 m!2342779))

(assert (=> b!1909364 m!2340659))

(declare-fun m!2342781 () Bool)

(assert (=> b!1909364 m!2342781))

(assert (=> b!1907833 d!584362))

(assert (=> b!1907833 d!584292))

(declare-fun d!584364 () Bool)

(assert (=> d!584364 (= (inv!28592 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (value!120632 (h!26885 tokens!598)))) (isBalanced!2242 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (value!120632 (h!26885 tokens!598))))))))

(declare-fun bs!414126 () Bool)

(assert (= bs!414126 d!584364))

(declare-fun m!2342783 () Bool)

(assert (=> bs!414126 m!2342783))

(assert (=> tb!116719 d!584364))

(declare-fun bm!117687 () Bool)

(declare-fun call!117692 () Bool)

(assert (=> bm!117687 (= call!117692 (ruleDisjointCharsFromAllFromOtherType!430 (h!26886 rules!3198) (t!177702 rules!3198)))))

(declare-fun d!584366 () Bool)

(declare-fun c!311185 () Bool)

(assert (=> d!584366 (= c!311185 (and ((_ is Cons!21485) rules!3198) (not (= (isSeparator!3826 (h!26886 rules!3198)) (isSeparator!3826 (h!26886 rules!3198))))))))

(declare-fun e!1219477 () Bool)

(assert (=> d!584366 (= (ruleDisjointCharsFromAllFromOtherType!430 (h!26886 rules!3198) rules!3198) e!1219477)))

(declare-fun b!1909373 () Bool)

(declare-fun e!1219478 () Bool)

(assert (=> b!1909373 (= e!1219477 e!1219478)))

(declare-fun res!852512 () Bool)

(assert (=> b!1909373 (= res!852512 (not ((_ is Cons!21485) rules!3198)))))

(assert (=> b!1909373 (=> res!852512 e!1219478)))

(declare-fun b!1909374 () Bool)

(declare-fun e!1219476 () Bool)

(assert (=> b!1909374 (= e!1219476 call!117692)))

(declare-fun b!1909375 () Bool)

(assert (=> b!1909375 (= e!1219477 e!1219476)))

(declare-fun res!852513 () Bool)

(declare-fun rulesUseDisjointChars!202 (Rule!7452 Rule!7452) Bool)

(assert (=> b!1909375 (= res!852513 (rulesUseDisjointChars!202 (h!26886 rules!3198) (h!26886 rules!3198)))))

(assert (=> b!1909375 (=> (not res!852513) (not e!1219476))))

(declare-fun b!1909376 () Bool)

(assert (=> b!1909376 (= e!1219478 call!117692)))

(assert (= (and d!584366 c!311185) b!1909375))

(assert (= (and d!584366 (not c!311185)) b!1909373))

(assert (= (and b!1909375 res!852513) b!1909374))

(assert (= (and b!1909373 (not res!852512)) b!1909376))

(assert (= (or b!1909374 b!1909376) bm!117687))

(declare-fun m!2342785 () Bool)

(assert (=> bm!117687 m!2342785))

(declare-fun m!2342787 () Bool)

(assert (=> b!1909375 m!2342787))

(assert (=> b!1908016 d!584366))

(assert (=> b!1907997 d!584242))

(assert (=> b!1907997 d!584244))

(declare-fun b!1909377 () Bool)

(declare-fun e!1219479 () List!21565)

(assert (=> b!1909377 (= e!1219479 Nil!21483)))

(declare-fun b!1909380 () Bool)

(declare-fun e!1219480 () List!21565)

(assert (=> b!1909380 (= e!1219480 (++!5773 (list!8741 (left!17176 (c!310756 (charsOf!2382 separatorToken!354)))) (list!8741 (right!17506 (c!310756 (charsOf!2382 separatorToken!354))))))))

(declare-fun b!1909379 () Bool)

(assert (=> b!1909379 (= e!1219480 (list!8746 (xs!10039 (c!310756 (charsOf!2382 separatorToken!354)))))))

(declare-fun b!1909378 () Bool)

(assert (=> b!1909378 (= e!1219479 e!1219480)))

(declare-fun c!311187 () Bool)

(assert (=> b!1909378 (= c!311187 ((_ is Leaf!10521) (c!310756 (charsOf!2382 separatorToken!354))))))

(declare-fun d!584368 () Bool)

(declare-fun c!311186 () Bool)

(assert (=> d!584368 (= c!311186 ((_ is Empty!7145) (c!310756 (charsOf!2382 separatorToken!354))))))

(assert (=> d!584368 (= (list!8741 (c!310756 (charsOf!2382 separatorToken!354))) e!1219479)))

(assert (= (and d!584368 c!311186) b!1909377))

(assert (= (and d!584368 (not c!311186)) b!1909378))

(assert (= (and b!1909378 c!311187) b!1909379))

(assert (= (and b!1909378 (not c!311187)) b!1909380))

(declare-fun m!2342789 () Bool)

(assert (=> b!1909380 m!2342789))

(declare-fun m!2342791 () Bool)

(assert (=> b!1909380 m!2342791))

(assert (=> b!1909380 m!2342789))

(assert (=> b!1909380 m!2342791))

(declare-fun m!2342793 () Bool)

(assert (=> b!1909380 m!2342793))

(declare-fun m!2342795 () Bool)

(assert (=> b!1909379 m!2342795))

(assert (=> d!583580 d!584368))

(declare-fun d!584370 () Bool)

(declare-fun e!1219483 () Bool)

(assert (=> d!584370 e!1219483))

(declare-fun res!852516 () Bool)

(assert (=> d!584370 (=> (not res!852516) (not e!1219483))))

(declare-fun lt!729942 () BalanceConc!14106)

(assert (=> d!584370 (= res!852516 (= (list!8738 lt!729942) (originalCharacters!4633 (h!26885 tokens!598))))))

(declare-fun fromList!476 (List!21565) Conc!7145)

(assert (=> d!584370 (= lt!729942 (BalanceConc!14107 (fromList!476 (originalCharacters!4633 (h!26885 tokens!598)))))))

(assert (=> d!584370 (= (fromListB!1224 (originalCharacters!4633 (h!26885 tokens!598))) lt!729942)))

(declare-fun b!1909383 () Bool)

(assert (=> b!1909383 (= e!1219483 (isBalanced!2242 (fromList!476 (originalCharacters!4633 (h!26885 tokens!598)))))))

(assert (= (and d!584370 res!852516) b!1909383))

(declare-fun m!2342797 () Bool)

(assert (=> d!584370 m!2342797))

(declare-fun m!2342799 () Bool)

(assert (=> d!584370 m!2342799))

(assert (=> b!1909383 m!2342799))

(assert (=> b!1909383 m!2342799))

(declare-fun m!2342801 () Bool)

(assert (=> b!1909383 m!2342801))

(assert (=> d!583632 d!584370))

(assert (=> b!1908051 d!583686))

(declare-fun b!1909387 () Bool)

(declare-fun lt!729943 () List!21565)

(declare-fun e!1219484 () Bool)

(assert (=> b!1909387 (= e!1219484 (or (not (= lt!729326 Nil!21483)) (= lt!729943 (t!177700 lt!729332))))))

(declare-fun b!1909385 () Bool)

(declare-fun e!1219485 () List!21565)

(assert (=> b!1909385 (= e!1219485 (Cons!21483 (h!26884 (t!177700 lt!729332)) (++!5773 (t!177700 (t!177700 lt!729332)) lt!729326)))))

(declare-fun d!584372 () Bool)

(assert (=> d!584372 e!1219484))

(declare-fun res!852518 () Bool)

(assert (=> d!584372 (=> (not res!852518) (not e!1219484))))

(assert (=> d!584372 (= res!852518 (= (content!3147 lt!729943) ((_ map or) (content!3147 (t!177700 lt!729332)) (content!3147 lt!729326))))))

(assert (=> d!584372 (= lt!729943 e!1219485)))

(declare-fun c!311189 () Bool)

(assert (=> d!584372 (= c!311189 ((_ is Nil!21483) (t!177700 lt!729332)))))

(assert (=> d!584372 (= (++!5773 (t!177700 lt!729332) lt!729326) lt!729943)))

(declare-fun b!1909384 () Bool)

(assert (=> b!1909384 (= e!1219485 lt!729326)))

(declare-fun b!1909386 () Bool)

(declare-fun res!852517 () Bool)

(assert (=> b!1909386 (=> (not res!852517) (not e!1219484))))

(assert (=> b!1909386 (= res!852517 (= (size!16947 lt!729943) (+ (size!16947 (t!177700 lt!729332)) (size!16947 lt!729326))))))

(assert (= (and d!584372 c!311189) b!1909384))

(assert (= (and d!584372 (not c!311189)) b!1909385))

(assert (= (and d!584372 res!852518) b!1909386))

(assert (= (and b!1909386 res!852517) b!1909387))

(declare-fun m!2342803 () Bool)

(assert (=> b!1909385 m!2342803))

(declare-fun m!2342805 () Bool)

(assert (=> d!584372 m!2342805))

(assert (=> d!584372 m!2342293))

(assert (=> d!584372 m!2340889))

(declare-fun m!2342807 () Bool)

(assert (=> b!1909386 m!2342807))

(assert (=> b!1909386 m!2341865))

(assert (=> b!1909386 m!2340893))

(assert (=> b!1908095 d!584372))

(declare-fun d!584374 () Bool)

(assert (=> d!584374 (= (isDefined!3656 lt!729395) (not (isEmpty!13199 lt!729395)))))

(declare-fun bs!414127 () Bool)

(assert (= bs!414127 d!584374))

(assert (=> bs!414127 m!2340445))

(assert (=> b!1907681 d!584374))

(declare-fun d!584376 () Bool)

(declare-fun dynLambda!10489 (Int BalanceConc!14106 BalanceConc!14106) Bool)

(assert (=> d!584376 (dynLambda!10489 lambda!74533 lt!729323 (seqFromList!2698 (originalCharacters!4633 (h!26885 tokens!598))))))

(declare-fun lt!729946 () Unit!35820)

(declare-fun choose!11891 (Int BalanceConc!14106 BalanceConc!14106) Unit!35820)

(assert (=> d!584376 (= lt!729946 (choose!11891 lambda!74533 lt!729323 (seqFromList!2698 (originalCharacters!4633 (h!26885 tokens!598)))))))

(assert (=> d!584376 (Forall2!621 lambda!74533)))

(assert (=> d!584376 (= (Forall2of!187 lambda!74533 lt!729323 (seqFromList!2698 (originalCharacters!4633 (h!26885 tokens!598)))) lt!729946)))

(declare-fun b_lambda!63181 () Bool)

(assert (=> (not b_lambda!63181) (not d!584376)))

(declare-fun bs!414128 () Bool)

(assert (= bs!414128 d!584376))

(assert (=> bs!414128 m!2340133))

(declare-fun m!2342809 () Bool)

(assert (=> bs!414128 m!2342809))

(assert (=> bs!414128 m!2340133))

(declare-fun m!2342811 () Bool)

(assert (=> bs!414128 m!2342811))

(declare-fun m!2342813 () Bool)

(assert (=> bs!414128 m!2342813))

(assert (=> d!583584 d!584376))

(assert (=> d!583584 d!583634))

(declare-fun d!584378 () Bool)

(assert (=> d!584378 (= (list!8738 (seqFromList!2698 (originalCharacters!4633 (h!26885 tokens!598)))) (list!8741 (c!310756 (seqFromList!2698 (originalCharacters!4633 (h!26885 tokens!598))))))))

(declare-fun bs!414129 () Bool)

(assert (= bs!414129 d!584378))

(declare-fun m!2342815 () Bool)

(assert (=> bs!414129 m!2342815))

(assert (=> d!583584 d!584378))

(declare-fun d!584380 () Bool)

(declare-fun c!311190 () Bool)

(assert (=> d!584380 (= c!311190 ((_ is Node!7145) (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (value!120632 (h!26885 tokens!598))))))))

(declare-fun e!1219486 () Bool)

(assert (=> d!584380 (= (inv!28591 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (value!120632 (h!26885 tokens!598))))) e!1219486)))

(declare-fun b!1909389 () Bool)

(assert (=> b!1909389 (= e!1219486 (inv!28595 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (value!120632 (h!26885 tokens!598))))))))

(declare-fun b!1909390 () Bool)

(declare-fun e!1219487 () Bool)

(assert (=> b!1909390 (= e!1219486 e!1219487)))

(declare-fun res!852519 () Bool)

(assert (=> b!1909390 (= res!852519 (not ((_ is Leaf!10521) (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (value!120632 (h!26885 tokens!598)))))))))

(assert (=> b!1909390 (=> res!852519 e!1219487)))

(declare-fun b!1909391 () Bool)

(assert (=> b!1909391 (= e!1219487 (inv!28596 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (value!120632 (h!26885 tokens!598))))))))

(assert (= (and d!584380 c!311190) b!1909389))

(assert (= (and d!584380 (not c!311190)) b!1909390))

(assert (= (and b!1909390 (not res!852519)) b!1909391))

(declare-fun m!2342817 () Bool)

(assert (=> b!1909389 m!2342817))

(declare-fun m!2342819 () Bool)

(assert (=> b!1909391 m!2342819))

(assert (=> b!1907885 d!584380))

(declare-fun d!584382 () Bool)

(assert (=> d!584382 (= (inv!16 (value!120632 separatorToken!354)) (= (charsToInt!0 (text!28181 (value!120632 separatorToken!354))) (value!120623 (value!120632 separatorToken!354))))))

(declare-fun bs!414130 () Bool)

(assert (= bs!414130 d!584382))

(declare-fun m!2342821 () Bool)

(assert (=> bs!414130 m!2342821))

(assert (=> b!1908039 d!584382))

(declare-fun d!584384 () Bool)

(declare-fun lt!729947 () Int)

(assert (=> d!584384 (>= lt!729947 0)))

(declare-fun e!1219488 () Int)

(assert (=> d!584384 (= lt!729947 e!1219488)))

(declare-fun c!311191 () Bool)

(assert (=> d!584384 (= c!311191 ((_ is Nil!21483) lt!729516))))

(assert (=> d!584384 (= (size!16947 lt!729516) lt!729947)))

(declare-fun b!1909392 () Bool)

(assert (=> b!1909392 (= e!1219488 0)))

(declare-fun b!1909393 () Bool)

(assert (=> b!1909393 (= e!1219488 (+ 1 (size!16947 (t!177700 lt!729516))))))

(assert (= (and d!584384 c!311191) b!1909392))

(assert (= (and d!584384 (not c!311191)) b!1909393))

(declare-fun m!2342823 () Bool)

(assert (=> b!1909393 m!2342823))

(assert (=> b!1908096 d!584384))

(assert (=> b!1908096 d!584016))

(assert (=> b!1908096 d!584216))

(declare-fun d!584386 () Bool)

(assert (=> d!584386 (= (isEmpty!13198 lt!729482) (not ((_ is Some!4356) lt!729482)))))

(assert (=> d!583600 d!584386))

(assert (=> d!583600 d!583660))

(declare-fun d!584388 () Bool)

(assert (=> d!584388 (= (inv!15 (value!120632 (h!26885 tokens!598))) (= (charsToBigInt!0 (text!28183 (value!120632 (h!26885 tokens!598))) 0) (value!120627 (value!120632 (h!26885 tokens!598)))))))

(declare-fun bs!414131 () Bool)

(assert (= bs!414131 d!584388))

(declare-fun m!2342825 () Bool)

(assert (=> bs!414131 m!2342825))

(assert (=> b!1908036 d!584388))

(declare-fun d!584390 () Bool)

(assert (=> d!584390 (= (isDefined!3655 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 separatorToken!354)))) (not (isEmpty!13198 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 separatorToken!354))))))))

(declare-fun bs!414132 () Bool)

(assert (= bs!414132 d!584390))

(assert (=> bs!414132 m!2340153))

(declare-fun m!2342827 () Bool)

(assert (=> bs!414132 m!2342827))

(assert (=> d!583556 d!584390))

(assert (=> d!583556 d!583600))

(declare-fun d!584392 () Bool)

(declare-fun e!1219489 () Bool)

(assert (=> d!584392 e!1219489))

(declare-fun res!852520 () Bool)

(assert (=> d!584392 (=> (not res!852520) (not e!1219489))))

(assert (=> d!584392 (= res!852520 (isDefined!3655 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 separatorToken!354)))))))

(assert (=> d!584392 true))

(declare-fun _$52!1208 () Unit!35820)

(assert (=> d!584392 (= (choose!11879 thiss!23328 rules!3198 lt!729326 separatorToken!354) _$52!1208)))

(declare-fun b!1909394 () Bool)

(declare-fun res!852521 () Bool)

(assert (=> b!1909394 (=> (not res!852521) (not e!1219489))))

(assert (=> b!1909394 (= res!852521 (matchR!2537 (regex!3826 (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 separatorToken!354))))) (list!8738 (charsOf!2382 separatorToken!354))))))

(declare-fun b!1909395 () Bool)

(assert (=> b!1909395 (= e!1219489 (= (rule!6023 separatorToken!354) (get!6677 (getRuleFromTag!669 thiss!23328 rules!3198 (tag!4258 (rule!6023 separatorToken!354))))))))

(assert (= (and d!584392 res!852520) b!1909394))

(assert (= (and b!1909394 res!852521) b!1909395))

(assert (=> d!584392 m!2340153))

(assert (=> d!584392 m!2340153))

(assert (=> d!584392 m!2340379))

(assert (=> b!1909394 m!2340153))

(assert (=> b!1909394 m!2340143))

(assert (=> b!1909394 m!2340143))

(assert (=> b!1909394 m!2340145))

(assert (=> b!1909394 m!2340145))

(assert (=> b!1909394 m!2340385))

(assert (=> b!1909394 m!2340153))

(assert (=> b!1909394 m!2340383))

(assert (=> b!1909395 m!2340153))

(assert (=> b!1909395 m!2340153))

(assert (=> b!1909395 m!2340383))

(assert (=> d!583556 d!584392))

(assert (=> d!583556 d!583660))

(declare-fun lt!729948 () List!21565)

(declare-fun b!1909399 () Bool)

(declare-fun e!1219490 () Bool)

(assert (=> b!1909399 (= e!1219490 (or (not (= lt!729325 Nil!21483)) (= lt!729948 (t!177700 lt!729332))))))

(declare-fun b!1909397 () Bool)

(declare-fun e!1219491 () List!21565)

(assert (=> b!1909397 (= e!1219491 (Cons!21483 (h!26884 (t!177700 lt!729332)) (++!5773 (t!177700 (t!177700 lt!729332)) lt!729325)))))

(declare-fun d!584394 () Bool)

(assert (=> d!584394 e!1219490))

(declare-fun res!852523 () Bool)

(assert (=> d!584394 (=> (not res!852523) (not e!1219490))))

(assert (=> d!584394 (= res!852523 (= (content!3147 lt!729948) ((_ map or) (content!3147 (t!177700 lt!729332)) (content!3147 lt!729325))))))

(assert (=> d!584394 (= lt!729948 e!1219491)))

(declare-fun c!311192 () Bool)

(assert (=> d!584394 (= c!311192 ((_ is Nil!21483) (t!177700 lt!729332)))))

(assert (=> d!584394 (= (++!5773 (t!177700 lt!729332) lt!729325) lt!729948)))

(declare-fun b!1909396 () Bool)

(assert (=> b!1909396 (= e!1219491 lt!729325)))

(declare-fun b!1909398 () Bool)

(declare-fun res!852522 () Bool)

(assert (=> b!1909398 (=> (not res!852522) (not e!1219490))))

(assert (=> b!1909398 (= res!852522 (= (size!16947 lt!729948) (+ (size!16947 (t!177700 lt!729332)) (size!16947 lt!729325))))))

(assert (= (and d!584394 c!311192) b!1909396))

(assert (= (and d!584394 (not c!311192)) b!1909397))

(assert (= (and d!584394 res!852523) b!1909398))

(assert (= (and b!1909398 res!852522) b!1909399))

(declare-fun m!2342829 () Bool)

(assert (=> b!1909397 m!2342829))

(declare-fun m!2342831 () Bool)

(assert (=> d!584394 m!2342831))

(assert (=> d!584394 m!2342293))

(assert (=> d!584394 m!2340529))

(declare-fun m!2342833 () Bool)

(assert (=> b!1909398 m!2342833))

(assert (=> b!1909398 m!2341865))

(assert (=> b!1909398 m!2340533))

(assert (=> b!1907766 d!584394))

(assert (=> b!1908056 d!584206))

(assert (=> b!1908056 d!583990))

(declare-fun b!1909403 () Bool)

(declare-fun e!1219492 () Bool)

(declare-fun lt!729949 () List!21565)

(assert (=> b!1909403 (= e!1219492 (or (not (= (_2!11579 (get!6678 lt!729492)) Nil!21483)) (= lt!729949 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729492)))))))))

(declare-fun b!1909401 () Bool)

(declare-fun e!1219493 () List!21565)

(assert (=> b!1909401 (= e!1219493 (Cons!21483 (h!26884 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729492))))) (++!5773 (t!177700 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729492))))) (_2!11579 (get!6678 lt!729492)))))))

(declare-fun d!584396 () Bool)

(assert (=> d!584396 e!1219492))

(declare-fun res!852525 () Bool)

(assert (=> d!584396 (=> (not res!852525) (not e!1219492))))

(assert (=> d!584396 (= res!852525 (= (content!3147 lt!729949) ((_ map or) (content!3147 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729492))))) (content!3147 (_2!11579 (get!6678 lt!729492))))))))

(assert (=> d!584396 (= lt!729949 e!1219493)))

(declare-fun c!311193 () Bool)

(assert (=> d!584396 (= c!311193 ((_ is Nil!21483) (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729492))))))))

(assert (=> d!584396 (= (++!5773 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729492)))) (_2!11579 (get!6678 lt!729492))) lt!729949)))

(declare-fun b!1909400 () Bool)

(assert (=> b!1909400 (= e!1219493 (_2!11579 (get!6678 lt!729492)))))

(declare-fun b!1909402 () Bool)

(declare-fun res!852524 () Bool)

(assert (=> b!1909402 (=> (not res!852524) (not e!1219492))))

(assert (=> b!1909402 (= res!852524 (= (size!16947 lt!729949) (+ (size!16947 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729492))))) (size!16947 (_2!11579 (get!6678 lt!729492))))))))

(assert (= (and d!584396 c!311193) b!1909400))

(assert (= (and d!584396 (not c!311193)) b!1909401))

(assert (= (and d!584396 res!852525) b!1909402))

(assert (= (and b!1909402 res!852524) b!1909403))

(declare-fun m!2342835 () Bool)

(assert (=> b!1909401 m!2342835))

(declare-fun m!2342837 () Bool)

(assert (=> d!584396 m!2342837))

(assert (=> d!584396 m!2340727))

(declare-fun m!2342839 () Bool)

(assert (=> d!584396 m!2342839))

(declare-fun m!2342841 () Bool)

(assert (=> d!584396 m!2342841))

(declare-fun m!2342843 () Bool)

(assert (=> b!1909402 m!2342843))

(assert (=> b!1909402 m!2340727))

(declare-fun m!2342845 () Bool)

(assert (=> b!1909402 m!2342845))

(assert (=> b!1909402 m!2340707))

(assert (=> b!1907858 d!584396))

(assert (=> b!1907858 d!584272))

(assert (=> b!1907858 d!584274))

(assert (=> b!1907858 d!584198))

(declare-fun d!584398 () Bool)

(declare-fun lt!729952 () Token!7204)

(assert (=> d!584398 (= lt!729952 (apply!5643 (list!8742 (_1!11581 lt!729511)) 0))))

(declare-fun apply!5644 (Conc!7147 Int) Token!7204)

(assert (=> d!584398 (= lt!729952 (apply!5644 (c!310894 (_1!11581 lt!729511)) 0))))

(declare-fun e!1219496 () Bool)

(assert (=> d!584398 e!1219496))

(declare-fun res!852528 () Bool)

(assert (=> d!584398 (=> (not res!852528) (not e!1219496))))

(assert (=> d!584398 (= res!852528 (<= 0 0))))

(assert (=> d!584398 (= (apply!5640 (_1!11581 lt!729511) 0) lt!729952)))

(declare-fun b!1909406 () Bool)

(assert (=> b!1909406 (= e!1219496 (< 0 (size!16948 (_1!11581 lt!729511))))))

(assert (= (and d!584398 res!852528) b!1909406))

(assert (=> d!584398 m!2341729))

(assert (=> d!584398 m!2341729))

(declare-fun m!2342847 () Bool)

(assert (=> d!584398 m!2342847))

(declare-fun m!2342849 () Bool)

(assert (=> d!584398 m!2342849))

(assert (=> b!1909406 m!2340819))

(assert (=> b!1908008 d!584398))

(declare-fun d!584400 () Bool)

(declare-fun res!852529 () Bool)

(declare-fun e!1219497 () Bool)

(assert (=> d!584400 (=> res!852529 e!1219497)))

(assert (=> d!584400 (= res!852529 ((_ is Nil!21484) (t!177701 tokens!598)))))

(assert (=> d!584400 (= (forall!4514 (t!177701 tokens!598) lambda!74515) e!1219497)))

(declare-fun b!1909407 () Bool)

(declare-fun e!1219498 () Bool)

(assert (=> b!1909407 (= e!1219497 e!1219498)))

(declare-fun res!852530 () Bool)

(assert (=> b!1909407 (=> (not res!852530) (not e!1219498))))

(assert (=> b!1909407 (= res!852530 (dynLambda!10485 lambda!74515 (h!26885 (t!177701 tokens!598))))))

(declare-fun b!1909408 () Bool)

(assert (=> b!1909408 (= e!1219498 (forall!4514 (t!177701 (t!177701 tokens!598)) lambda!74515))))

(assert (= (and d!584400 (not res!852529)) b!1909407))

(assert (= (and b!1909407 res!852530) b!1909408))

(declare-fun b_lambda!63183 () Bool)

(assert (=> (not b_lambda!63183) (not b!1909407)))

(declare-fun m!2342851 () Bool)

(assert (=> b!1909407 m!2342851))

(declare-fun m!2342853 () Bool)

(assert (=> b!1909408 m!2342853))

(assert (=> b!1908023 d!584400))

(assert (=> b!1907731 d!583920))

(declare-fun bs!414133 () Bool)

(declare-fun b!1909410 () Bool)

(assert (= bs!414133 (and b!1909410 b!1907392)))

(declare-fun lambda!74575 () Int)

(assert (=> bs!414133 (not (= lambda!74575 lambda!74515))))

(declare-fun bs!414134 () Bool)

(assert (= bs!414134 (and b!1909410 d!583510)))

(assert (=> bs!414134 (= lambda!74575 lambda!74521)))

(declare-fun bs!414135 () Bool)

(assert (= bs!414135 (and b!1909410 b!1907731)))

(assert (=> bs!414135 (= lambda!74575 lambda!74527)))

(declare-fun bs!414136 () Bool)

(assert (= bs!414136 (and b!1909410 d!584308)))

(assert (=> bs!414136 (= lambda!74575 lambda!74572)))

(declare-fun b!1909419 () Bool)

(declare-fun e!1219505 () Bool)

(assert (=> b!1909419 (= e!1219505 true)))

(declare-fun b!1909418 () Bool)

(declare-fun e!1219504 () Bool)

(assert (=> b!1909418 (= e!1219504 e!1219505)))

(declare-fun b!1909417 () Bool)

(declare-fun e!1219503 () Bool)

(assert (=> b!1909417 (= e!1219503 e!1219504)))

(assert (=> b!1909410 e!1219503))

(assert (= b!1909418 b!1909419))

(assert (= b!1909417 b!1909418))

(assert (= (and b!1909410 ((_ is Cons!21485) rules!3198)) b!1909417))

(assert (=> b!1909419 (< (dynLambda!10478 order!13587 (toValue!5451 (transformation!3826 (h!26886 rules!3198)))) (dynLambda!10479 order!13589 lambda!74575))))

(assert (=> b!1909419 (< (dynLambda!10480 order!13591 (toChars!5310 (transformation!3826 (h!26886 rules!3198)))) (dynLambda!10479 order!13589 lambda!74575))))

(assert (=> b!1909410 true))

(declare-fun b!1909409 () Bool)

(declare-fun e!1219500 () List!21565)

(assert (=> b!1909409 (= e!1219500 Nil!21483)))

(declare-fun c!311194 () Bool)

(declare-fun bm!117688 () Bool)

(declare-fun call!117694 () BalanceConc!14106)

(declare-fun c!311196 () Bool)

(assert (=> bm!117688 (= call!117694 (charsOf!2382 (ite c!311196 (h!26885 (t!177701 (t!177701 tokens!598))) (ite c!311194 separatorToken!354 (h!26885 (t!177701 (t!177701 tokens!598)))))))))

(declare-fun b!1909411 () Bool)

(declare-fun e!1219502 () List!21565)

(declare-fun call!117696 () List!21565)

(declare-fun lt!729954 () List!21565)

(assert (=> b!1909411 (= e!1219502 (++!5773 call!117696 lt!729954))))

(declare-fun b!1909412 () Bool)

(assert (=> b!1909412 (= e!1219502 Nil!21483)))

(assert (=> b!1909412 (= (print!1453 thiss!23328 (singletonSeq!1851 (h!26885 (t!177701 (t!177701 tokens!598))))) (printTailRec!960 thiss!23328 (singletonSeq!1851 (h!26885 (t!177701 (t!177701 tokens!598)))) 0 (BalanceConc!14107 Empty!7145)))))

(declare-fun lt!729958 () Unit!35820)

(declare-fun Unit!35834 () Unit!35820)

(assert (=> b!1909412 (= lt!729958 Unit!35834)))

(declare-fun call!117693 () List!21565)

(declare-fun lt!729956 () Unit!35820)

(assert (=> b!1909412 (= lt!729956 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!722 thiss!23328 rules!3198 call!117693 lt!729954))))

(assert (=> b!1909412 false))

(declare-fun lt!729957 () Unit!35820)

(declare-fun Unit!35835 () Unit!35820)

(assert (=> b!1909412 (= lt!729957 Unit!35835)))

(declare-fun bm!117689 () Bool)

(declare-fun call!117697 () List!21565)

(assert (=> bm!117689 (= call!117693 call!117697)))

(declare-fun b!1909413 () Bool)

(declare-fun e!1219499 () List!21565)

(assert (=> b!1909413 (= e!1219499 (list!8738 (charsOf!2382 (h!26885 (t!177701 (t!177701 tokens!598))))))))

(declare-fun b!1909414 () Bool)

(assert (=> b!1909414 (= e!1219499 call!117697)))

(declare-fun b!1909415 () Bool)

(declare-fun lt!729955 () Option!4358)

(assert (=> b!1909415 (= c!311194 (and ((_ is Some!4357) lt!729955) (not (= (_1!11579 (v!26400 lt!729955)) (h!26885 (t!177701 (t!177701 tokens!598)))))))))

(declare-fun e!1219501 () List!21565)

(assert (=> b!1909415 (= e!1219501 e!1219502)))

(declare-fun d!584402 () Bool)

(declare-fun c!311195 () Bool)

(assert (=> d!584402 (= c!311195 ((_ is Cons!21484) (t!177701 (t!177701 tokens!598))))))

(assert (=> d!584402 (= (printWithSeparatorTokenWhenNeededList!482 thiss!23328 rules!3198 (t!177701 (t!177701 tokens!598)) separatorToken!354) e!1219500)))

(assert (=> b!1909410 (= e!1219500 e!1219501)))

(declare-fun lt!729953 () Unit!35820)

(assert (=> b!1909410 (= lt!729953 (forallContained!692 (t!177701 (t!177701 tokens!598)) lambda!74575 (h!26885 (t!177701 (t!177701 tokens!598)))))))

(assert (=> b!1909410 (= lt!729954 (printWithSeparatorTokenWhenNeededList!482 thiss!23328 rules!3198 (t!177701 (t!177701 (t!177701 tokens!598))) separatorToken!354))))

(assert (=> b!1909410 (= lt!729955 (maxPrefix!1885 thiss!23328 rules!3198 (++!5773 (list!8738 (charsOf!2382 (h!26885 (t!177701 (t!177701 tokens!598))))) lt!729954)))))

(assert (=> b!1909410 (= c!311196 (and ((_ is Some!4357) lt!729955) (= (_1!11579 (v!26400 lt!729955)) (h!26885 (t!177701 (t!177701 tokens!598))))))))

(declare-fun b!1909416 () Bool)

(assert (=> b!1909416 (= e!1219501 call!117696)))

(declare-fun bm!117690 () Bool)

(declare-fun c!311197 () Bool)

(assert (=> bm!117690 (= c!311197 c!311196)))

(assert (=> bm!117690 (= call!117696 (++!5773 e!1219499 (ite c!311196 lt!729954 call!117693)))))

(declare-fun bm!117691 () Bool)

(declare-fun call!117695 () BalanceConc!14106)

(assert (=> bm!117691 (= call!117697 (list!8738 (ite c!311196 call!117694 call!117695)))))

(declare-fun bm!117692 () Bool)

(assert (=> bm!117692 (= call!117695 call!117694)))

(assert (= (and d!584402 c!311195) b!1909410))

(assert (= (and d!584402 (not c!311195)) b!1909409))

(assert (= (and b!1909410 c!311196) b!1909416))

(assert (= (and b!1909410 (not c!311196)) b!1909415))

(assert (= (and b!1909415 c!311194) b!1909411))

(assert (= (and b!1909415 (not c!311194)) b!1909412))

(assert (= (or b!1909411 b!1909412) bm!117692))

(assert (= (or b!1909411 b!1909412) bm!117689))

(assert (= (or b!1909416 bm!117692) bm!117688))

(assert (= (or b!1909416 bm!117689) bm!117691))

(assert (= (or b!1909416 b!1909411) bm!117690))

(assert (= (and bm!117690 c!311197) b!1909414))

(assert (= (and bm!117690 (not c!311197)) b!1909413))

(declare-fun m!2342855 () Bool)

(assert (=> bm!117691 m!2342855))

(declare-fun m!2342857 () Bool)

(assert (=> b!1909411 m!2342857))

(declare-fun m!2342859 () Bool)

(assert (=> b!1909410 m!2342859))

(declare-fun m!2342861 () Bool)

(assert (=> b!1909410 m!2342861))

(declare-fun m!2342863 () Bool)

(assert (=> b!1909410 m!2342863))

(declare-fun m!2342865 () Bool)

(assert (=> b!1909410 m!2342865))

(declare-fun m!2342867 () Bool)

(assert (=> b!1909410 m!2342867))

(assert (=> b!1909410 m!2342861))

(assert (=> b!1909410 m!2342867))

(assert (=> b!1909410 m!2342863))

(declare-fun m!2342869 () Bool)

(assert (=> b!1909410 m!2342869))

(declare-fun m!2342871 () Bool)

(assert (=> bm!117688 m!2342871))

(assert (=> b!1909413 m!2342867))

(assert (=> b!1909413 m!2342867))

(assert (=> b!1909413 m!2342861))

(declare-fun m!2342873 () Bool)

(assert (=> b!1909412 m!2342873))

(assert (=> b!1909412 m!2342873))

(declare-fun m!2342875 () Bool)

(assert (=> b!1909412 m!2342875))

(assert (=> b!1909412 m!2342873))

(declare-fun m!2342877 () Bool)

(assert (=> b!1909412 m!2342877))

(declare-fun m!2342879 () Bool)

(assert (=> b!1909412 m!2342879))

(declare-fun m!2342881 () Bool)

(assert (=> bm!117690 m!2342881))

(assert (=> b!1907731 d!584402))

(declare-fun b!1909423 () Bool)

(declare-fun e!1219506 () Bool)

(declare-fun lt!729959 () List!21565)

(assert (=> b!1909423 (= e!1219506 (or (not (= lt!729424 Nil!21483)) (= lt!729959 (list!8738 (charsOf!2382 (h!26885 (t!177701 tokens!598)))))))))

(declare-fun b!1909421 () Bool)

(declare-fun e!1219507 () List!21565)

(assert (=> b!1909421 (= e!1219507 (Cons!21483 (h!26884 (list!8738 (charsOf!2382 (h!26885 (t!177701 tokens!598))))) (++!5773 (t!177700 (list!8738 (charsOf!2382 (h!26885 (t!177701 tokens!598))))) lt!729424)))))

(declare-fun d!584404 () Bool)

(assert (=> d!584404 e!1219506))

(declare-fun res!852532 () Bool)

(assert (=> d!584404 (=> (not res!852532) (not e!1219506))))

(assert (=> d!584404 (= res!852532 (= (content!3147 lt!729959) ((_ map or) (content!3147 (list!8738 (charsOf!2382 (h!26885 (t!177701 tokens!598))))) (content!3147 lt!729424))))))

(assert (=> d!584404 (= lt!729959 e!1219507)))

(declare-fun c!311198 () Bool)

(assert (=> d!584404 (= c!311198 ((_ is Nil!21483) (list!8738 (charsOf!2382 (h!26885 (t!177701 tokens!598))))))))

(assert (=> d!584404 (= (++!5773 (list!8738 (charsOf!2382 (h!26885 (t!177701 tokens!598)))) lt!729424) lt!729959)))

(declare-fun b!1909420 () Bool)

(assert (=> b!1909420 (= e!1219507 lt!729424)))

(declare-fun b!1909422 () Bool)

(declare-fun res!852531 () Bool)

(assert (=> b!1909422 (=> (not res!852531) (not e!1219506))))

(assert (=> b!1909422 (= res!852531 (= (size!16947 lt!729959) (+ (size!16947 (list!8738 (charsOf!2382 (h!26885 (t!177701 tokens!598))))) (size!16947 lt!729424))))))

(assert (= (and d!584404 c!311198) b!1909420))

(assert (= (and d!584404 (not c!311198)) b!1909421))

(assert (= (and d!584404 res!852532) b!1909422))

(assert (= (and b!1909422 res!852531) b!1909423))

(declare-fun m!2342883 () Bool)

(assert (=> b!1909421 m!2342883))

(declare-fun m!2342885 () Bool)

(assert (=> d!584404 m!2342885))

(assert (=> d!584404 m!2340499))

(declare-fun m!2342887 () Bool)

(assert (=> d!584404 m!2342887))

(assert (=> d!584404 m!2342409))

(declare-fun m!2342889 () Bool)

(assert (=> b!1909422 m!2342889))

(assert (=> b!1909422 m!2340499))

(declare-fun m!2342891 () Bool)

(assert (=> b!1909422 m!2342891))

(assert (=> b!1909422 m!2342415))

(assert (=> b!1907731 d!584404))

(assert (=> b!1907731 d!583918))

(declare-fun d!584406 () Bool)

(declare-fun e!1219510 () Bool)

(assert (=> d!584406 e!1219510))

(declare-fun res!852536 () Bool)

(assert (=> d!584406 (=> res!852536 e!1219510)))

(declare-fun lt!729961 () Option!4358)

(assert (=> d!584406 (= res!852536 (isEmpty!13199 lt!729961))))

(declare-fun e!1219508 () Option!4358)

(assert (=> d!584406 (= lt!729961 e!1219508)))

(declare-fun c!311199 () Bool)

(assert (=> d!584406 (= c!311199 (and ((_ is Cons!21485) rules!3198) ((_ is Nil!21485) (t!177702 rules!3198))))))

(declare-fun lt!729962 () Unit!35820)

(declare-fun lt!729963 () Unit!35820)

(assert (=> d!584406 (= lt!729962 lt!729963)))

(assert (=> d!584406 (isPrefix!1923 (++!5773 (list!8738 (charsOf!2382 (h!26885 (t!177701 tokens!598)))) lt!729424) (++!5773 (list!8738 (charsOf!2382 (h!26885 (t!177701 tokens!598)))) lt!729424))))

(assert (=> d!584406 (= lt!729963 (lemmaIsPrefixRefl!1241 (++!5773 (list!8738 (charsOf!2382 (h!26885 (t!177701 tokens!598)))) lt!729424) (++!5773 (list!8738 (charsOf!2382 (h!26885 (t!177701 tokens!598)))) lt!729424)))))

(assert (=> d!584406 (rulesValidInductive!1302 thiss!23328 rules!3198)))

(assert (=> d!584406 (= (maxPrefix!1885 thiss!23328 rules!3198 (++!5773 (list!8738 (charsOf!2382 (h!26885 (t!177701 tokens!598)))) lt!729424)) lt!729961)))

(declare-fun b!1909424 () Bool)

(declare-fun res!852534 () Bool)

(declare-fun e!1219509 () Bool)

(assert (=> b!1909424 (=> (not res!852534) (not e!1219509))))

(assert (=> b!1909424 (= res!852534 (matchR!2537 (regex!3826 (rule!6023 (_1!11579 (get!6678 lt!729961)))) (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729961))))))))

(declare-fun b!1909425 () Bool)

(declare-fun res!852535 () Bool)

(assert (=> b!1909425 (=> (not res!852535) (not e!1219509))))

(assert (=> b!1909425 (= res!852535 (= (++!5773 (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729961)))) (_2!11579 (get!6678 lt!729961))) (++!5773 (list!8738 (charsOf!2382 (h!26885 (t!177701 tokens!598)))) lt!729424)))))

(declare-fun call!117698 () Option!4358)

(declare-fun bm!117693 () Bool)

(assert (=> bm!117693 (= call!117698 (maxPrefixOneRule!1205 thiss!23328 (h!26886 rules!3198) (++!5773 (list!8738 (charsOf!2382 (h!26885 (t!177701 tokens!598)))) lt!729424)))))

(declare-fun b!1909426 () Bool)

(assert (=> b!1909426 (= e!1219510 e!1219509)))

(declare-fun res!852537 () Bool)

(assert (=> b!1909426 (=> (not res!852537) (not e!1219509))))

(assert (=> b!1909426 (= res!852537 (isDefined!3656 lt!729961))))

(declare-fun b!1909427 () Bool)

(declare-fun lt!729964 () Option!4358)

(declare-fun lt!729960 () Option!4358)

(assert (=> b!1909427 (= e!1219508 (ite (and ((_ is None!4357) lt!729964) ((_ is None!4357) lt!729960)) None!4357 (ite ((_ is None!4357) lt!729960) lt!729964 (ite ((_ is None!4357) lt!729964) lt!729960 (ite (>= (size!16944 (_1!11579 (v!26400 lt!729964))) (size!16944 (_1!11579 (v!26400 lt!729960)))) lt!729964 lt!729960)))))))

(assert (=> b!1909427 (= lt!729964 call!117698)))

(assert (=> b!1909427 (= lt!729960 (maxPrefix!1885 thiss!23328 (t!177702 rules!3198) (++!5773 (list!8738 (charsOf!2382 (h!26885 (t!177701 tokens!598)))) lt!729424)))))

(declare-fun b!1909428 () Bool)

(declare-fun res!852533 () Bool)

(assert (=> b!1909428 (=> (not res!852533) (not e!1219509))))

(assert (=> b!1909428 (= res!852533 (< (size!16947 (_2!11579 (get!6678 lt!729961))) (size!16947 (++!5773 (list!8738 (charsOf!2382 (h!26885 (t!177701 tokens!598)))) lt!729424))))))

(declare-fun b!1909429 () Bool)

(assert (=> b!1909429 (= e!1219508 call!117698)))

(declare-fun b!1909430 () Bool)

(declare-fun res!852538 () Bool)

(assert (=> b!1909430 (=> (not res!852538) (not e!1219509))))

(assert (=> b!1909430 (= res!852538 (= (value!120632 (_1!11579 (get!6678 lt!729961))) (apply!5639 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729961)))) (seqFromList!2698 (originalCharacters!4633 (_1!11579 (get!6678 lt!729961)))))))))

(declare-fun b!1909431 () Bool)

(declare-fun res!852539 () Bool)

(assert (=> b!1909431 (=> (not res!852539) (not e!1219509))))

(assert (=> b!1909431 (= res!852539 (= (list!8738 (charsOf!2382 (_1!11579 (get!6678 lt!729961)))) (originalCharacters!4633 (_1!11579 (get!6678 lt!729961)))))))

(declare-fun b!1909432 () Bool)

(assert (=> b!1909432 (= e!1219509 (contains!3865 rules!3198 (rule!6023 (_1!11579 (get!6678 lt!729961)))))))

(assert (= (and d!584406 c!311199) b!1909429))

(assert (= (and d!584406 (not c!311199)) b!1909427))

(assert (= (or b!1909429 b!1909427) bm!117693))

(assert (= (and d!584406 (not res!852536)) b!1909426))

(assert (= (and b!1909426 res!852537) b!1909431))

(assert (= (and b!1909431 res!852539) b!1909428))

(assert (= (and b!1909428 res!852533) b!1909425))

(assert (= (and b!1909425 res!852535) b!1909430))

(assert (= (and b!1909430 res!852538) b!1909424))

(assert (= (and b!1909424 res!852534) b!1909432))

(assert (=> b!1909427 m!2340501))

(declare-fun m!2342893 () Bool)

(assert (=> b!1909427 m!2342893))

(declare-fun m!2342895 () Bool)

(assert (=> b!1909432 m!2342895))

(declare-fun m!2342897 () Bool)

(assert (=> b!1909432 m!2342897))

(assert (=> bm!117693 m!2340501))

(declare-fun m!2342899 () Bool)

(assert (=> bm!117693 m!2342899))

(assert (=> b!1909428 m!2342895))

(declare-fun m!2342901 () Bool)

(assert (=> b!1909428 m!2342901))

(assert (=> b!1909428 m!2340501))

(declare-fun m!2342903 () Bool)

(assert (=> b!1909428 m!2342903))

(declare-fun m!2342905 () Bool)

(assert (=> d!584406 m!2342905))

(assert (=> d!584406 m!2340501))

(assert (=> d!584406 m!2340501))

(declare-fun m!2342907 () Bool)

(assert (=> d!584406 m!2342907))

(assert (=> d!584406 m!2340501))

(assert (=> d!584406 m!2340501))

(declare-fun m!2342909 () Bool)

(assert (=> d!584406 m!2342909))

(assert (=> d!584406 m!2340451))

(assert (=> b!1909430 m!2342895))

(declare-fun m!2342911 () Bool)

(assert (=> b!1909430 m!2342911))

(assert (=> b!1909430 m!2342911))

(declare-fun m!2342913 () Bool)

(assert (=> b!1909430 m!2342913))

(assert (=> b!1909425 m!2342895))

(declare-fun m!2342915 () Bool)

(assert (=> b!1909425 m!2342915))

(assert (=> b!1909425 m!2342915))

(declare-fun m!2342917 () Bool)

(assert (=> b!1909425 m!2342917))

(assert (=> b!1909425 m!2342917))

(declare-fun m!2342919 () Bool)

(assert (=> b!1909425 m!2342919))

(assert (=> b!1909424 m!2342895))

(assert (=> b!1909424 m!2342915))

(assert (=> b!1909424 m!2342915))

(assert (=> b!1909424 m!2342917))

(assert (=> b!1909424 m!2342917))

(declare-fun m!2342921 () Bool)

(assert (=> b!1909424 m!2342921))

(assert (=> b!1909431 m!2342895))

(assert (=> b!1909431 m!2342915))

(assert (=> b!1909431 m!2342915))

(assert (=> b!1909431 m!2342917))

(declare-fun m!2342923 () Bool)

(assert (=> b!1909426 m!2342923))

(assert (=> b!1907731 d!584406))

(declare-fun d!584408 () Bool)

(assert (=> d!584408 (dynLambda!10485 lambda!74527 (h!26885 (t!177701 tokens!598)))))

(declare-fun lt!729967 () Unit!35820)

(declare-fun choose!11892 (List!21566 Int Token!7204) Unit!35820)

(assert (=> d!584408 (= lt!729967 (choose!11892 (t!177701 tokens!598) lambda!74527 (h!26885 (t!177701 tokens!598))))))

(declare-fun e!1219513 () Bool)

(assert (=> d!584408 e!1219513))

(declare-fun res!852542 () Bool)

(assert (=> d!584408 (=> (not res!852542) (not e!1219513))))

(assert (=> d!584408 (= res!852542 (forall!4514 (t!177701 tokens!598) lambda!74527))))

(assert (=> d!584408 (= (forallContained!692 (t!177701 tokens!598) lambda!74527 (h!26885 (t!177701 tokens!598))) lt!729967)))

(declare-fun b!1909435 () Bool)

(declare-fun contains!3869 (List!21566 Token!7204) Bool)

(assert (=> b!1909435 (= e!1219513 (contains!3869 (t!177701 tokens!598) (h!26885 (t!177701 tokens!598))))))

(assert (= (and d!584408 res!852542) b!1909435))

(declare-fun b_lambda!63185 () Bool)

(assert (=> (not b_lambda!63185) (not d!584408)))

(declare-fun m!2342925 () Bool)

(assert (=> d!584408 m!2342925))

(declare-fun m!2342927 () Bool)

(assert (=> d!584408 m!2342927))

(declare-fun m!2342929 () Bool)

(assert (=> d!584408 m!2342929))

(declare-fun m!2342931 () Bool)

(assert (=> b!1909435 m!2342931))

(assert (=> b!1907731 d!584408))

(assert (=> b!1907967 d!584206))

(assert (=> b!1907967 d!583990))

(declare-fun d!584410 () Bool)

(assert (=> d!584410 (= (inv!28584 (tag!4258 (rule!6023 (h!26885 (t!177701 tokens!598))))) (= (mod (str.len (value!120631 (tag!4258 (rule!6023 (h!26885 (t!177701 tokens!598)))))) 2) 0))))

(assert (=> b!1908134 d!584410))

(declare-fun d!584412 () Bool)

(declare-fun res!852543 () Bool)

(declare-fun e!1219514 () Bool)

(assert (=> d!584412 (=> (not res!852543) (not e!1219514))))

(assert (=> d!584412 (= res!852543 (semiInverseModEq!1545 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598)))))))))

(assert (=> d!584412 (= (inv!28587 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) e!1219514)))

(declare-fun b!1909436 () Bool)

(assert (=> b!1909436 (= e!1219514 (equivClasses!1472 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598)))))))))

(assert (= (and d!584412 res!852543) b!1909436))

(declare-fun m!2342933 () Bool)

(assert (=> d!584412 m!2342933))

(declare-fun m!2342935 () Bool)

(assert (=> b!1909436 m!2342935))

(assert (=> b!1908134 d!584412))

(declare-fun d!584414 () Bool)

(declare-fun lt!729968 () Int)

(assert (=> d!584414 (>= lt!729968 0)))

(declare-fun e!1219515 () Int)

(assert (=> d!584414 (= lt!729968 e!1219515)))

(declare-fun c!311200 () Bool)

(assert (=> d!584414 (= c!311200 ((_ is Nil!21483) (originalCharacters!4633 (h!26885 tokens!598))))))

(assert (=> d!584414 (= (size!16947 (originalCharacters!4633 (h!26885 tokens!598))) lt!729968)))

(declare-fun b!1909437 () Bool)

(assert (=> b!1909437 (= e!1219515 0)))

(declare-fun b!1909438 () Bool)

(assert (=> b!1909438 (= e!1219515 (+ 1 (size!16947 (t!177700 (originalCharacters!4633 (h!26885 tokens!598))))))))

(assert (= (and d!584414 c!311200) b!1909437))

(assert (= (and d!584414 (not c!311200)) b!1909438))

(declare-fun m!2342937 () Bool)

(assert (=> b!1909438 m!2342937))

(assert (=> b!1907984 d!584414))

(declare-fun d!584416 () Bool)

(assert (=> d!584416 (= (nullable!1595 (regex!3826 lt!729321)) (nullableFct!358 (regex!3826 lt!729321)))))

(declare-fun bs!414137 () Bool)

(assert (= bs!414137 d!584416))

(declare-fun m!2342939 () Bool)

(assert (=> bs!414137 m!2342939))

(assert (=> b!1907989 d!584416))

(declare-fun tp!544811 () Bool)

(declare-fun e!1219520 () Bool)

(declare-fun b!1909447 () Bool)

(declare-fun tp!544809 () Bool)

(assert (=> b!1909447 (= e!1219520 (and (inv!28591 (left!17176 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (value!120632 separatorToken!354))))) tp!544811 (inv!28591 (right!17506 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (value!120632 separatorToken!354))))) tp!544809))))

(declare-fun b!1909449 () Bool)

(declare-fun e!1219521 () Bool)

(declare-fun tp!544810 () Bool)

(assert (=> b!1909449 (= e!1219521 tp!544810)))

(declare-fun b!1909448 () Bool)

(declare-fun inv!28598 (IArray!14295) Bool)

(assert (=> b!1909448 (= e!1219520 (and (inv!28598 (xs!10039 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (value!120632 separatorToken!354))))) e!1219521))))

(assert (=> b!1907439 (= tp!544563 (and (inv!28591 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (value!120632 separatorToken!354)))) e!1219520))))

(assert (= (and b!1907439 ((_ is Node!7145) (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (value!120632 separatorToken!354))))) b!1909447))

(assert (= b!1909448 b!1909449))

(assert (= (and b!1907439 ((_ is Leaf!10521) (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (value!120632 separatorToken!354))))) b!1909448))

(declare-fun m!2342941 () Bool)

(assert (=> b!1909447 m!2342941))

(declare-fun m!2342943 () Bool)

(assert (=> b!1909447 m!2342943))

(declare-fun m!2342945 () Bool)

(assert (=> b!1909448 m!2342945))

(assert (=> b!1907439 m!2340205))

(declare-fun b!1909452 () Bool)

(declare-fun e!1219522 () Bool)

(declare-fun tp!544813 () Bool)

(assert (=> b!1909452 (= e!1219522 tp!544813)))

(assert (=> b!1908120 (= tp!544643 e!1219522)))

(declare-fun b!1909453 () Bool)

(declare-fun tp!544814 () Bool)

(declare-fun tp!544812 () Bool)

(assert (=> b!1909453 (= e!1219522 (and tp!544814 tp!544812))))

(declare-fun b!1909451 () Bool)

(declare-fun tp!544815 () Bool)

(declare-fun tp!544816 () Bool)

(assert (=> b!1909451 (= e!1219522 (and tp!544815 tp!544816))))

(declare-fun b!1909450 () Bool)

(assert (=> b!1909450 (= e!1219522 tp_is_empty!9097)))

(assert (= (and b!1908120 ((_ is ElementMatch!5251) (reg!5580 (regex!3826 (rule!6023 (h!26885 tokens!598)))))) b!1909450))

(assert (= (and b!1908120 ((_ is Concat!9214) (reg!5580 (regex!3826 (rule!6023 (h!26885 tokens!598)))))) b!1909451))

(assert (= (and b!1908120 ((_ is Star!5251) (reg!5580 (regex!3826 (rule!6023 (h!26885 tokens!598)))))) b!1909452))

(assert (= (and b!1908120 ((_ is Union!5251) (reg!5580 (regex!3826 (rule!6023 (h!26885 tokens!598)))))) b!1909453))

(declare-fun b!1909456 () Bool)

(declare-fun e!1219523 () Bool)

(declare-fun tp!544818 () Bool)

(assert (=> b!1909456 (= e!1219523 tp!544818)))

(assert (=> b!1908121 (= tp!544644 e!1219523)))

(declare-fun b!1909457 () Bool)

(declare-fun tp!544819 () Bool)

(declare-fun tp!544817 () Bool)

(assert (=> b!1909457 (= e!1219523 (and tp!544819 tp!544817))))

(declare-fun b!1909455 () Bool)

(declare-fun tp!544820 () Bool)

(declare-fun tp!544821 () Bool)

(assert (=> b!1909455 (= e!1219523 (and tp!544820 tp!544821))))

(declare-fun b!1909454 () Bool)

(assert (=> b!1909454 (= e!1219523 tp_is_empty!9097)))

(assert (= (and b!1908121 ((_ is ElementMatch!5251) (regOne!11015 (regex!3826 (rule!6023 (h!26885 tokens!598)))))) b!1909454))

(assert (= (and b!1908121 ((_ is Concat!9214) (regOne!11015 (regex!3826 (rule!6023 (h!26885 tokens!598)))))) b!1909455))

(assert (= (and b!1908121 ((_ is Star!5251) (regOne!11015 (regex!3826 (rule!6023 (h!26885 tokens!598)))))) b!1909456))

(assert (= (and b!1908121 ((_ is Union!5251) (regOne!11015 (regex!3826 (rule!6023 (h!26885 tokens!598)))))) b!1909457))

(declare-fun b!1909460 () Bool)

(declare-fun e!1219524 () Bool)

(declare-fun tp!544823 () Bool)

(assert (=> b!1909460 (= e!1219524 tp!544823)))

(assert (=> b!1908121 (= tp!544642 e!1219524)))

(declare-fun b!1909461 () Bool)

(declare-fun tp!544824 () Bool)

(declare-fun tp!544822 () Bool)

(assert (=> b!1909461 (= e!1219524 (and tp!544824 tp!544822))))

(declare-fun b!1909459 () Bool)

(declare-fun tp!544825 () Bool)

(declare-fun tp!544826 () Bool)

(assert (=> b!1909459 (= e!1219524 (and tp!544825 tp!544826))))

(declare-fun b!1909458 () Bool)

(assert (=> b!1909458 (= e!1219524 tp_is_empty!9097)))

(assert (= (and b!1908121 ((_ is ElementMatch!5251) (regTwo!11015 (regex!3826 (rule!6023 (h!26885 tokens!598)))))) b!1909458))

(assert (= (and b!1908121 ((_ is Concat!9214) (regTwo!11015 (regex!3826 (rule!6023 (h!26885 tokens!598)))))) b!1909459))

(assert (= (and b!1908121 ((_ is Star!5251) (regTwo!11015 (regex!3826 (rule!6023 (h!26885 tokens!598)))))) b!1909460))

(assert (= (and b!1908121 ((_ is Union!5251) (regTwo!11015 (regex!3826 (rule!6023 (h!26885 tokens!598)))))) b!1909461))

(declare-fun b!1909462 () Bool)

(declare-fun e!1219525 () Bool)

(declare-fun tp!544827 () Bool)

(assert (=> b!1909462 (= e!1219525 (and tp_is_empty!9097 tp!544827))))

(assert (=> b!1908155 (= tp!544681 e!1219525)))

(assert (= (and b!1908155 ((_ is Cons!21483) (t!177700 (originalCharacters!4633 (h!26885 tokens!598))))) b!1909462))

(declare-fun b!1909465 () Bool)

(declare-fun e!1219526 () Bool)

(declare-fun tp!544829 () Bool)

(assert (=> b!1909465 (= e!1219526 tp!544829)))

(assert (=> b!1908119 (= tp!544645 e!1219526)))

(declare-fun b!1909466 () Bool)

(declare-fun tp!544830 () Bool)

(declare-fun tp!544828 () Bool)

(assert (=> b!1909466 (= e!1219526 (and tp!544830 tp!544828))))

(declare-fun b!1909464 () Bool)

(declare-fun tp!544831 () Bool)

(declare-fun tp!544832 () Bool)

(assert (=> b!1909464 (= e!1219526 (and tp!544831 tp!544832))))

(declare-fun b!1909463 () Bool)

(assert (=> b!1909463 (= e!1219526 tp_is_empty!9097)))

(assert (= (and b!1908119 ((_ is ElementMatch!5251) (regOne!11014 (regex!3826 (rule!6023 (h!26885 tokens!598)))))) b!1909463))

(assert (= (and b!1908119 ((_ is Concat!9214) (regOne!11014 (regex!3826 (rule!6023 (h!26885 tokens!598)))))) b!1909464))

(assert (= (and b!1908119 ((_ is Star!5251) (regOne!11014 (regex!3826 (rule!6023 (h!26885 tokens!598)))))) b!1909465))

(assert (= (and b!1908119 ((_ is Union!5251) (regOne!11014 (regex!3826 (rule!6023 (h!26885 tokens!598)))))) b!1909466))

(declare-fun b!1909469 () Bool)

(declare-fun e!1219527 () Bool)

(declare-fun tp!544834 () Bool)

(assert (=> b!1909469 (= e!1219527 tp!544834)))

(assert (=> b!1908119 (= tp!544646 e!1219527)))

(declare-fun b!1909470 () Bool)

(declare-fun tp!544835 () Bool)

(declare-fun tp!544833 () Bool)

(assert (=> b!1909470 (= e!1219527 (and tp!544835 tp!544833))))

(declare-fun b!1909468 () Bool)

(declare-fun tp!544836 () Bool)

(declare-fun tp!544837 () Bool)

(assert (=> b!1909468 (= e!1219527 (and tp!544836 tp!544837))))

(declare-fun b!1909467 () Bool)

(assert (=> b!1909467 (= e!1219527 tp_is_empty!9097)))

(assert (= (and b!1908119 ((_ is ElementMatch!5251) (regTwo!11014 (regex!3826 (rule!6023 (h!26885 tokens!598)))))) b!1909467))

(assert (= (and b!1908119 ((_ is Concat!9214) (regTwo!11014 (regex!3826 (rule!6023 (h!26885 tokens!598)))))) b!1909468))

(assert (= (and b!1908119 ((_ is Star!5251) (regTwo!11014 (regex!3826 (rule!6023 (h!26885 tokens!598)))))) b!1909469))

(assert (= (and b!1908119 ((_ is Union!5251) (regTwo!11014 (regex!3826 (rule!6023 (h!26885 tokens!598)))))) b!1909470))

(declare-fun b!1909471 () Bool)

(declare-fun e!1219528 () Bool)

(declare-fun tp!544838 () Bool)

(assert (=> b!1909471 (= e!1219528 (and tp_is_empty!9097 tp!544838))))

(assert (=> b!1908156 (= tp!544682 e!1219528)))

(assert (= (and b!1908156 ((_ is Cons!21483) (t!177700 (originalCharacters!4633 separatorToken!354)))) b!1909471))

(declare-fun b!1909472 () Bool)

(declare-fun tp!544841 () Bool)

(declare-fun tp!544839 () Bool)

(declare-fun e!1219529 () Bool)

(assert (=> b!1909472 (= e!1219529 (and (inv!28591 (left!17176 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (value!120632 (h!26885 tokens!598)))))) tp!544841 (inv!28591 (right!17506 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (value!120632 (h!26885 tokens!598)))))) tp!544839))))

(declare-fun b!1909474 () Bool)

(declare-fun e!1219530 () Bool)

(declare-fun tp!544840 () Bool)

(assert (=> b!1909474 (= e!1219530 tp!544840)))

(declare-fun b!1909473 () Bool)

(assert (=> b!1909473 (= e!1219529 (and (inv!28598 (xs!10039 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (value!120632 (h!26885 tokens!598)))))) e!1219530))))

(assert (=> b!1907885 (= tp!544572 (and (inv!28591 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (value!120632 (h!26885 tokens!598))))) e!1219529))))

(assert (= (and b!1907885 ((_ is Node!7145) (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (value!120632 (h!26885 tokens!598)))))) b!1909472))

(assert (= b!1909473 b!1909474))

(assert (= (and b!1907885 ((_ is Leaf!10521) (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (value!120632 (h!26885 tokens!598)))))) b!1909473))

(declare-fun m!2342947 () Bool)

(assert (=> b!1909472 m!2342947))

(declare-fun m!2342949 () Bool)

(assert (=> b!1909472 m!2342949))

(declare-fun m!2342951 () Bool)

(assert (=> b!1909473 m!2342951))

(assert (=> b!1907885 m!2340735))

(declare-fun b!1909477 () Bool)

(declare-fun e!1219531 () Bool)

(declare-fun tp!544843 () Bool)

(assert (=> b!1909477 (= e!1219531 tp!544843)))

(assert (=> b!1908149 (= tp!544675 e!1219531)))

(declare-fun b!1909478 () Bool)

(declare-fun tp!544844 () Bool)

(declare-fun tp!544842 () Bool)

(assert (=> b!1909478 (= e!1219531 (and tp!544844 tp!544842))))

(declare-fun b!1909476 () Bool)

(declare-fun tp!544845 () Bool)

(declare-fun tp!544846 () Bool)

(assert (=> b!1909476 (= e!1219531 (and tp!544845 tp!544846))))

(declare-fun b!1909475 () Bool)

(assert (=> b!1909475 (= e!1219531 tp_is_empty!9097)))

(assert (= (and b!1908149 ((_ is ElementMatch!5251) (reg!5580 (regex!3826 (rule!6023 separatorToken!354))))) b!1909475))

(assert (= (and b!1908149 ((_ is Concat!9214) (reg!5580 (regex!3826 (rule!6023 separatorToken!354))))) b!1909476))

(assert (= (and b!1908149 ((_ is Star!5251) (reg!5580 (regex!3826 (rule!6023 separatorToken!354))))) b!1909477))

(assert (= (and b!1908149 ((_ is Union!5251) (reg!5580 (regex!3826 (rule!6023 separatorToken!354))))) b!1909478))

(declare-fun b!1909481 () Bool)

(declare-fun e!1219534 () Bool)

(assert (=> b!1909481 (= e!1219534 true)))

(declare-fun b!1909480 () Bool)

(declare-fun e!1219533 () Bool)

(assert (=> b!1909480 (= e!1219533 e!1219534)))

(declare-fun b!1909479 () Bool)

(declare-fun e!1219532 () Bool)

(assert (=> b!1909479 (= e!1219532 e!1219533)))

(assert (=> b!1907738 e!1219532))

(assert (= b!1909480 b!1909481))

(assert (= b!1909479 b!1909480))

(assert (= (and b!1907738 ((_ is Cons!21485) (t!177702 rules!3198))) b!1909479))

(assert (=> b!1909481 (< (dynLambda!10478 order!13587 (toValue!5451 (transformation!3826 (h!26886 (t!177702 rules!3198))))) (dynLambda!10479 order!13589 lambda!74527))))

(assert (=> b!1909481 (< (dynLambda!10480 order!13591 (toChars!5310 (transformation!3826 (h!26886 (t!177702 rules!3198))))) (dynLambda!10479 order!13589 lambda!74527))))

(declare-fun b!1909484 () Bool)

(declare-fun e!1219535 () Bool)

(declare-fun tp!544848 () Bool)

(assert (=> b!1909484 (= e!1219535 tp!544848)))

(assert (=> b!1908148 (= tp!544677 e!1219535)))

(declare-fun b!1909485 () Bool)

(declare-fun tp!544849 () Bool)

(declare-fun tp!544847 () Bool)

(assert (=> b!1909485 (= e!1219535 (and tp!544849 tp!544847))))

(declare-fun b!1909483 () Bool)

(declare-fun tp!544850 () Bool)

(declare-fun tp!544851 () Bool)

(assert (=> b!1909483 (= e!1219535 (and tp!544850 tp!544851))))

(declare-fun b!1909482 () Bool)

(assert (=> b!1909482 (= e!1219535 tp_is_empty!9097)))

(assert (= (and b!1908148 ((_ is ElementMatch!5251) (regOne!11014 (regex!3826 (rule!6023 separatorToken!354))))) b!1909482))

(assert (= (and b!1908148 ((_ is Concat!9214) (regOne!11014 (regex!3826 (rule!6023 separatorToken!354))))) b!1909483))

(assert (= (and b!1908148 ((_ is Star!5251) (regOne!11014 (regex!3826 (rule!6023 separatorToken!354))))) b!1909484))

(assert (= (and b!1908148 ((_ is Union!5251) (regOne!11014 (regex!3826 (rule!6023 separatorToken!354))))) b!1909485))

(declare-fun b!1909488 () Bool)

(declare-fun e!1219536 () Bool)

(declare-fun tp!544853 () Bool)

(assert (=> b!1909488 (= e!1219536 tp!544853)))

(assert (=> b!1908148 (= tp!544678 e!1219536)))

(declare-fun b!1909489 () Bool)

(declare-fun tp!544854 () Bool)

(declare-fun tp!544852 () Bool)

(assert (=> b!1909489 (= e!1219536 (and tp!544854 tp!544852))))

(declare-fun b!1909487 () Bool)

(declare-fun tp!544855 () Bool)

(declare-fun tp!544856 () Bool)

(assert (=> b!1909487 (= e!1219536 (and tp!544855 tp!544856))))

(declare-fun b!1909486 () Bool)

(assert (=> b!1909486 (= e!1219536 tp_is_empty!9097)))

(assert (= (and b!1908148 ((_ is ElementMatch!5251) (regTwo!11014 (regex!3826 (rule!6023 separatorToken!354))))) b!1909486))

(assert (= (and b!1908148 ((_ is Concat!9214) (regTwo!11014 (regex!3826 (rule!6023 separatorToken!354))))) b!1909487))

(assert (= (and b!1908148 ((_ is Star!5251) (regTwo!11014 (regex!3826 (rule!6023 separatorToken!354))))) b!1909488))

(assert (= (and b!1908148 ((_ is Union!5251) (regTwo!11014 (regex!3826 (rule!6023 separatorToken!354))))) b!1909489))

(declare-fun b!1909492 () Bool)

(declare-fun e!1219539 () Bool)

(assert (=> b!1909492 (= e!1219539 true)))

(declare-fun b!1909491 () Bool)

(declare-fun e!1219538 () Bool)

(assert (=> b!1909491 (= e!1219538 e!1219539)))

(declare-fun b!1909490 () Bool)

(declare-fun e!1219537 () Bool)

(assert (=> b!1909490 (= e!1219537 e!1219538)))

(assert (=> b!1907613 e!1219537))

(assert (= b!1909491 b!1909492))

(assert (= b!1909490 b!1909491))

(assert (= (and b!1907613 ((_ is Cons!21485) (t!177702 rules!3198))) b!1909490))

(assert (=> b!1909492 (< (dynLambda!10478 order!13587 (toValue!5451 (transformation!3826 (h!26886 (t!177702 rules!3198))))) (dynLambda!10479 order!13589 lambda!74521))))

(assert (=> b!1909492 (< (dynLambda!10480 order!13591 (toChars!5310 (transformation!3826 (h!26886 (t!177702 rules!3198))))) (dynLambda!10479 order!13589 lambda!74521))))

(declare-fun b!1909496 () Bool)

(declare-fun b_free!53765 () Bool)

(declare-fun b_next!54469 () Bool)

(assert (=> b!1909496 (= b_free!53765 (not b_next!54469))))

(declare-fun t!177984 () Bool)

(declare-fun tb!116929 () Bool)

(assert (=> (and b!1909496 (= (toValue!5451 (transformation!3826 (rule!6023 (h!26885 (t!177701 (t!177701 tokens!598)))))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!177984) tb!116929))

(declare-fun result!141288 () Bool)

(assert (= result!141288 result!141032))

(assert (=> d!583584 t!177984))

(declare-fun t!177986 () Bool)

(declare-fun tb!116931 () Bool)

(assert (=> (and b!1909496 (= (toValue!5451 (transformation!3826 (rule!6023 (h!26885 (t!177701 (t!177701 tokens!598)))))) (toValue!5451 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729492)))))) t!177986) tb!116931))

(declare-fun result!141290 () Bool)

(assert (= result!141290 result!141256))

(assert (=> d!584200 t!177986))

(declare-fun t!177988 () Bool)

(declare-fun tb!116933 () Bool)

(assert (=> (and b!1909496 (= (toValue!5451 (transformation!3826 (rule!6023 (h!26885 (t!177701 (t!177701 tokens!598)))))) (toValue!5451 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729395)))))) t!177988) tb!116933))

(declare-fun result!141292 () Bool)

(assert (= result!141292 result!141276))

(assert (=> d!584304 t!177988))

(declare-fun t!177990 () Bool)

(declare-fun tb!116935 () Bool)

(assert (=> (and b!1909496 (= (toValue!5451 (transformation!3826 (rule!6023 (h!26885 (t!177701 (t!177701 tokens!598)))))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!177990) tb!116935))

(declare-fun result!141294 () Bool)

(assert (= result!141294 result!141040))

(assert (=> d!583584 t!177990))

(assert (=> d!583594 t!177984))

(declare-fun b_and!148627 () Bool)

(declare-fun tp!544860 () Bool)

(assert (=> b!1909496 (= tp!544860 (and (=> t!177988 result!141292) (=> t!177984 result!141288) (=> t!177986 result!141290) (=> t!177990 result!141294) b_and!148627))))

(declare-fun b_free!53767 () Bool)

(declare-fun b_next!54471 () Bool)

(assert (=> b!1909496 (= b_free!53767 (not b_next!54471))))

(declare-fun tb!116937 () Bool)

(declare-fun t!177992 () Bool)

(assert (=> (and b!1909496 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 (t!177701 tokens!598)))))) (toChars!5310 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729395)))))) t!177992) tb!116937))

(declare-fun result!141296 () Bool)

(assert (= result!141296 result!141190))

(assert (=> d!583984 t!177992))

(declare-fun t!177994 () Bool)

(declare-fun tb!116939 () Bool)

(assert (=> (and b!1909496 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 (t!177701 tokens!598)))))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!177994) tb!116939))

(declare-fun result!141298 () Bool)

(assert (= result!141298 result!141060))

(assert (=> b!1907983 t!177994))

(assert (=> d!583630 t!177994))

(declare-fun t!177996 () Bool)

(declare-fun tb!116941 () Bool)

(assert (=> (and b!1909496 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 (t!177701 tokens!598)))))) (toChars!5310 (transformation!3826 (rule!6023 (ite c!310816 (h!26885 (t!177701 tokens!598)) (ite c!310814 separatorToken!354 (h!26885 (t!177701 tokens!598)))))))) t!177996) tb!116941))

(declare-fun result!141300 () Bool)

(assert (= result!141300 result!141200))

(assert (=> d!584024 t!177996))

(declare-fun t!177998 () Bool)

(declare-fun tb!116943 () Bool)

(assert (=> (and b!1909496 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 (t!177701 tokens!598)))))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598)))))) t!177998) tb!116943))

(declare-fun result!141302 () Bool)

(assert (= result!141302 result!141170))

(assert (=> b!1909157 t!177998))

(assert (=> d!583920 t!177998))

(declare-fun tb!116945 () Bool)

(declare-fun t!178000 () Bool)

(assert (=> (and b!1909496 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 (t!177701 tokens!598)))))) (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354)))) t!178000) tb!116945))

(declare-fun result!141304 () Bool)

(assert (= result!141304 result!140996))

(assert (=> d!583590 t!178000))

(assert (=> b!1907433 t!178000))

(declare-fun tb!116947 () Bool)

(declare-fun t!178002 () Bool)

(assert (=> (and b!1909496 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 (t!177701 tokens!598)))))) (toChars!5310 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729492)))))) t!178002) tb!116947))

(declare-fun result!141306 () Bool)

(assert (= result!141306 result!141266))

(assert (=> d!584274 t!178002))

(declare-fun t!178004 () Bool)

(declare-fun tb!116949 () Bool)

(assert (=> (and b!1909496 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 (t!177701 tokens!598)))))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!178004) tb!116949))

(declare-fun result!141308 () Bool)

(assert (= result!141308 result!141046))

(assert (=> d!583594 t!178004))

(declare-fun tp!544859 () Bool)

(declare-fun b_and!148629 () Bool)

(assert (=> b!1909496 (= tp!544859 (and (=> t!177994 result!141298) (=> t!177996 result!141300) (=> t!178002 result!141306) (=> t!178004 result!141308) (=> t!177992 result!141296) (=> t!178000 result!141304) (=> t!177998 result!141302) b_and!148629))))

(declare-fun tp!544858 () Bool)

(declare-fun e!1219545 () Bool)

(declare-fun b!1909493 () Bool)

(declare-fun e!1219541 () Bool)

(assert (=> b!1909493 (= e!1219545 (and (inv!28588 (h!26885 (t!177701 (t!177701 tokens!598)))) e!1219541 tp!544858))))

(assert (=> b!1908132 (= tp!544658 e!1219545)))

(declare-fun e!1219542 () Bool)

(assert (=> b!1909496 (= e!1219542 (and tp!544860 tp!544859))))

(declare-fun e!1219540 () Bool)

(declare-fun tp!544857 () Bool)

(declare-fun b!1909495 () Bool)

(assert (=> b!1909495 (= e!1219540 (and tp!544857 (inv!28584 (tag!4258 (rule!6023 (h!26885 (t!177701 (t!177701 tokens!598)))))) (inv!28587 (transformation!3826 (rule!6023 (h!26885 (t!177701 (t!177701 tokens!598)))))) e!1219542))))

(declare-fun b!1909494 () Bool)

(declare-fun tp!544861 () Bool)

(assert (=> b!1909494 (= e!1219541 (and (inv!21 (value!120632 (h!26885 (t!177701 (t!177701 tokens!598))))) e!1219540 tp!544861))))

(assert (= b!1909495 b!1909496))

(assert (= b!1909494 b!1909495))

(assert (= b!1909493 b!1909494))

(assert (= (and b!1908132 ((_ is Cons!21484) (t!177701 (t!177701 tokens!598)))) b!1909493))

(declare-fun m!2342953 () Bool)

(assert (=> b!1909493 m!2342953))

(declare-fun m!2342955 () Bool)

(assert (=> b!1909495 m!2342955))

(declare-fun m!2342957 () Bool)

(assert (=> b!1909495 m!2342957))

(declare-fun m!2342959 () Bool)

(assert (=> b!1909494 m!2342959))

(declare-fun b!1909499 () Bool)

(declare-fun e!1219546 () Bool)

(declare-fun tp!544863 () Bool)

(assert (=> b!1909499 (= e!1219546 tp!544863)))

(assert (=> b!1908150 (= tp!544676 e!1219546)))

(declare-fun b!1909500 () Bool)

(declare-fun tp!544864 () Bool)

(declare-fun tp!544862 () Bool)

(assert (=> b!1909500 (= e!1219546 (and tp!544864 tp!544862))))

(declare-fun b!1909498 () Bool)

(declare-fun tp!544865 () Bool)

(declare-fun tp!544866 () Bool)

(assert (=> b!1909498 (= e!1219546 (and tp!544865 tp!544866))))

(declare-fun b!1909497 () Bool)

(assert (=> b!1909497 (= e!1219546 tp_is_empty!9097)))

(assert (= (and b!1908150 ((_ is ElementMatch!5251) (regOne!11015 (regex!3826 (rule!6023 separatorToken!354))))) b!1909497))

(assert (= (and b!1908150 ((_ is Concat!9214) (regOne!11015 (regex!3826 (rule!6023 separatorToken!354))))) b!1909498))

(assert (= (and b!1908150 ((_ is Star!5251) (regOne!11015 (regex!3826 (rule!6023 separatorToken!354))))) b!1909499))

(assert (= (and b!1908150 ((_ is Union!5251) (regOne!11015 (regex!3826 (rule!6023 separatorToken!354))))) b!1909500))

(declare-fun b!1909503 () Bool)

(declare-fun e!1219547 () Bool)

(declare-fun tp!544868 () Bool)

(assert (=> b!1909503 (= e!1219547 tp!544868)))

(assert (=> b!1908150 (= tp!544674 e!1219547)))

(declare-fun b!1909504 () Bool)

(declare-fun tp!544869 () Bool)

(declare-fun tp!544867 () Bool)

(assert (=> b!1909504 (= e!1219547 (and tp!544869 tp!544867))))

(declare-fun b!1909502 () Bool)

(declare-fun tp!544870 () Bool)

(declare-fun tp!544871 () Bool)

(assert (=> b!1909502 (= e!1219547 (and tp!544870 tp!544871))))

(declare-fun b!1909501 () Bool)

(assert (=> b!1909501 (= e!1219547 tp_is_empty!9097)))

(assert (= (and b!1908150 ((_ is ElementMatch!5251) (regTwo!11015 (regex!3826 (rule!6023 separatorToken!354))))) b!1909501))

(assert (= (and b!1908150 ((_ is Concat!9214) (regTwo!11015 (regex!3826 (rule!6023 separatorToken!354))))) b!1909502))

(assert (= (and b!1908150 ((_ is Star!5251) (regTwo!11015 (regex!3826 (rule!6023 separatorToken!354))))) b!1909503))

(assert (= (and b!1908150 ((_ is Union!5251) (regTwo!11015 (regex!3826 (rule!6023 separatorToken!354))))) b!1909504))

(declare-fun b!1909505 () Bool)

(declare-fun e!1219548 () Bool)

(declare-fun tp!544874 () Bool)

(declare-fun tp!544872 () Bool)

(assert (=> b!1909505 (= e!1219548 (and (inv!28591 (left!17176 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323))))) tp!544874 (inv!28591 (right!17506 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323))))) tp!544872))))

(declare-fun b!1909507 () Bool)

(declare-fun e!1219549 () Bool)

(declare-fun tp!544873 () Bool)

(assert (=> b!1909507 (= e!1219549 tp!544873)))

(declare-fun b!1909506 () Bool)

(assert (=> b!1909506 (= e!1219548 (and (inv!28598 (xs!10039 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323))))) e!1219549))))

(assert (=> b!1907796 (= tp!544569 (and (inv!28591 (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323)))) e!1219548))))

(assert (= (and b!1907796 ((_ is Node!7145) (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323))))) b!1909505))

(assert (= b!1909506 b!1909507))

(assert (= (and b!1907796 ((_ is Leaf!10521) (c!310756 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323))))) b!1909506))

(declare-fun m!2342961 () Bool)

(assert (=> b!1909505 m!2342961))

(declare-fun m!2342963 () Bool)

(assert (=> b!1909505 m!2342963))

(declare-fun m!2342965 () Bool)

(assert (=> b!1909506 m!2342965))

(assert (=> b!1907796 m!2340585))

(declare-fun b!1909510 () Bool)

(declare-fun e!1219550 () Bool)

(declare-fun tp!544876 () Bool)

(assert (=> b!1909510 (= e!1219550 tp!544876)))

(assert (=> b!1908116 (= tp!544638 e!1219550)))

(declare-fun b!1909511 () Bool)

(declare-fun tp!544877 () Bool)

(declare-fun tp!544875 () Bool)

(assert (=> b!1909511 (= e!1219550 (and tp!544877 tp!544875))))

(declare-fun b!1909509 () Bool)

(declare-fun tp!544878 () Bool)

(declare-fun tp!544879 () Bool)

(assert (=> b!1909509 (= e!1219550 (and tp!544878 tp!544879))))

(declare-fun b!1909508 () Bool)

(assert (=> b!1909508 (= e!1219550 tp_is_empty!9097)))

(assert (= (and b!1908116 ((_ is ElementMatch!5251) (reg!5580 (regex!3826 (h!26886 rules!3198))))) b!1909508))

(assert (= (and b!1908116 ((_ is Concat!9214) (reg!5580 (regex!3826 (h!26886 rules!3198))))) b!1909509))

(assert (= (and b!1908116 ((_ is Star!5251) (reg!5580 (regex!3826 (h!26886 rules!3198))))) b!1909510))

(assert (= (and b!1908116 ((_ is Union!5251) (reg!5580 (regex!3826 (h!26886 rules!3198))))) b!1909511))

(declare-fun b!1909512 () Bool)

(declare-fun e!1219551 () Bool)

(declare-fun tp!544880 () Bool)

(assert (=> b!1909512 (= e!1219551 (and tp_is_empty!9097 tp!544880))))

(assert (=> b!1908133 (= tp!544661 e!1219551)))

(assert (= (and b!1908133 ((_ is Cons!21483) (originalCharacters!4633 (h!26885 (t!177701 tokens!598))))) b!1909512))

(declare-fun b!1909515 () Bool)

(declare-fun e!1219552 () Bool)

(declare-fun tp!544882 () Bool)

(assert (=> b!1909515 (= e!1219552 tp!544882)))

(assert (=> b!1908134 (= tp!544657 e!1219552)))

(declare-fun b!1909516 () Bool)

(declare-fun tp!544883 () Bool)

(declare-fun tp!544881 () Bool)

(assert (=> b!1909516 (= e!1219552 (and tp!544883 tp!544881))))

(declare-fun b!1909514 () Bool)

(declare-fun tp!544884 () Bool)

(declare-fun tp!544885 () Bool)

(assert (=> b!1909514 (= e!1219552 (and tp!544884 tp!544885))))

(declare-fun b!1909513 () Bool)

(assert (=> b!1909513 (= e!1219552 tp_is_empty!9097)))

(assert (= (and b!1908134 ((_ is ElementMatch!5251) (regex!3826 (rule!6023 (h!26885 (t!177701 tokens!598)))))) b!1909513))

(assert (= (and b!1908134 ((_ is Concat!9214) (regex!3826 (rule!6023 (h!26885 (t!177701 tokens!598)))))) b!1909514))

(assert (= (and b!1908134 ((_ is Star!5251) (regex!3826 (rule!6023 (h!26885 (t!177701 tokens!598)))))) b!1909515))

(assert (= (and b!1908134 ((_ is Union!5251) (regex!3826 (rule!6023 (h!26885 (t!177701 tokens!598)))))) b!1909516))

(declare-fun b!1909519 () Bool)

(declare-fun e!1219553 () Bool)

(declare-fun tp!544887 () Bool)

(assert (=> b!1909519 (= e!1219553 tp!544887)))

(assert (=> b!1908115 (= tp!544640 e!1219553)))

(declare-fun b!1909520 () Bool)

(declare-fun tp!544888 () Bool)

(declare-fun tp!544886 () Bool)

(assert (=> b!1909520 (= e!1219553 (and tp!544888 tp!544886))))

(declare-fun b!1909518 () Bool)

(declare-fun tp!544889 () Bool)

(declare-fun tp!544890 () Bool)

(assert (=> b!1909518 (= e!1219553 (and tp!544889 tp!544890))))

(declare-fun b!1909517 () Bool)

(assert (=> b!1909517 (= e!1219553 tp_is_empty!9097)))

(assert (= (and b!1908115 ((_ is ElementMatch!5251) (regOne!11014 (regex!3826 (h!26886 rules!3198))))) b!1909517))

(assert (= (and b!1908115 ((_ is Concat!9214) (regOne!11014 (regex!3826 (h!26886 rules!3198))))) b!1909518))

(assert (= (and b!1908115 ((_ is Star!5251) (regOne!11014 (regex!3826 (h!26886 rules!3198))))) b!1909519))

(assert (= (and b!1908115 ((_ is Union!5251) (regOne!11014 (regex!3826 (h!26886 rules!3198))))) b!1909520))

(declare-fun b!1909523 () Bool)

(declare-fun e!1219554 () Bool)

(declare-fun tp!544892 () Bool)

(assert (=> b!1909523 (= e!1219554 tp!544892)))

(assert (=> b!1908115 (= tp!544641 e!1219554)))

(declare-fun b!1909524 () Bool)

(declare-fun tp!544893 () Bool)

(declare-fun tp!544891 () Bool)

(assert (=> b!1909524 (= e!1219554 (and tp!544893 tp!544891))))

(declare-fun b!1909522 () Bool)

(declare-fun tp!544894 () Bool)

(declare-fun tp!544895 () Bool)

(assert (=> b!1909522 (= e!1219554 (and tp!544894 tp!544895))))

(declare-fun b!1909521 () Bool)

(assert (=> b!1909521 (= e!1219554 tp_is_empty!9097)))

(assert (= (and b!1908115 ((_ is ElementMatch!5251) (regTwo!11014 (regex!3826 (h!26886 rules!3198))))) b!1909521))

(assert (= (and b!1908115 ((_ is Concat!9214) (regTwo!11014 (regex!3826 (h!26886 rules!3198))))) b!1909522))

(assert (= (and b!1908115 ((_ is Star!5251) (regTwo!11014 (regex!3826 (h!26886 rules!3198))))) b!1909523))

(assert (= (and b!1908115 ((_ is Union!5251) (regTwo!11014 (regex!3826 (h!26886 rules!3198))))) b!1909524))

(declare-fun b!1909527 () Bool)

(declare-fun e!1219555 () Bool)

(declare-fun tp!544897 () Bool)

(assert (=> b!1909527 (= e!1219555 tp!544897)))

(assert (=> b!1908145 (= tp!544672 e!1219555)))

(declare-fun b!1909528 () Bool)

(declare-fun tp!544898 () Bool)

(declare-fun tp!544896 () Bool)

(assert (=> b!1909528 (= e!1219555 (and tp!544898 tp!544896))))

(declare-fun b!1909526 () Bool)

(declare-fun tp!544899 () Bool)

(declare-fun tp!544900 () Bool)

(assert (=> b!1909526 (= e!1219555 (and tp!544899 tp!544900))))

(declare-fun b!1909525 () Bool)

(assert (=> b!1909525 (= e!1219555 tp_is_empty!9097)))

(assert (= (and b!1908145 ((_ is ElementMatch!5251) (regex!3826 (h!26886 (t!177702 rules!3198))))) b!1909525))

(assert (= (and b!1908145 ((_ is Concat!9214) (regex!3826 (h!26886 (t!177702 rules!3198))))) b!1909526))

(assert (= (and b!1908145 ((_ is Star!5251) (regex!3826 (h!26886 (t!177702 rules!3198))))) b!1909527))

(assert (= (and b!1908145 ((_ is Union!5251) (regex!3826 (h!26886 (t!177702 rules!3198))))) b!1909528))

(declare-fun b!1909531 () Bool)

(declare-fun e!1219556 () Bool)

(declare-fun tp!544902 () Bool)

(assert (=> b!1909531 (= e!1219556 tp!544902)))

(assert (=> b!1908117 (= tp!544639 e!1219556)))

(declare-fun b!1909532 () Bool)

(declare-fun tp!544903 () Bool)

(declare-fun tp!544901 () Bool)

(assert (=> b!1909532 (= e!1219556 (and tp!544903 tp!544901))))

(declare-fun b!1909530 () Bool)

(declare-fun tp!544904 () Bool)

(declare-fun tp!544905 () Bool)

(assert (=> b!1909530 (= e!1219556 (and tp!544904 tp!544905))))

(declare-fun b!1909529 () Bool)

(assert (=> b!1909529 (= e!1219556 tp_is_empty!9097)))

(assert (= (and b!1908117 ((_ is ElementMatch!5251) (regOne!11015 (regex!3826 (h!26886 rules!3198))))) b!1909529))

(assert (= (and b!1908117 ((_ is Concat!9214) (regOne!11015 (regex!3826 (h!26886 rules!3198))))) b!1909530))

(assert (= (and b!1908117 ((_ is Star!5251) (regOne!11015 (regex!3826 (h!26886 rules!3198))))) b!1909531))

(assert (= (and b!1908117 ((_ is Union!5251) (regOne!11015 (regex!3826 (h!26886 rules!3198))))) b!1909532))

(declare-fun b!1909535 () Bool)

(declare-fun e!1219557 () Bool)

(declare-fun tp!544907 () Bool)

(assert (=> b!1909535 (= e!1219557 tp!544907)))

(assert (=> b!1908117 (= tp!544637 e!1219557)))

(declare-fun b!1909536 () Bool)

(declare-fun tp!544908 () Bool)

(declare-fun tp!544906 () Bool)

(assert (=> b!1909536 (= e!1219557 (and tp!544908 tp!544906))))

(declare-fun b!1909534 () Bool)

(declare-fun tp!544909 () Bool)

(declare-fun tp!544910 () Bool)

(assert (=> b!1909534 (= e!1219557 (and tp!544909 tp!544910))))

(declare-fun b!1909533 () Bool)

(assert (=> b!1909533 (= e!1219557 tp_is_empty!9097)))

(assert (= (and b!1908117 ((_ is ElementMatch!5251) (regTwo!11015 (regex!3826 (h!26886 rules!3198))))) b!1909533))

(assert (= (and b!1908117 ((_ is Concat!9214) (regTwo!11015 (regex!3826 (h!26886 rules!3198))))) b!1909534))

(assert (= (and b!1908117 ((_ is Star!5251) (regTwo!11015 (regex!3826 (h!26886 rules!3198))))) b!1909535))

(assert (= (and b!1908117 ((_ is Union!5251) (regTwo!11015 (regex!3826 (h!26886 rules!3198))))) b!1909536))

(declare-fun b!1909539 () Bool)

(declare-fun b_free!53769 () Bool)

(declare-fun b_next!54473 () Bool)

(assert (=> b!1909539 (= b_free!53769 (not b_next!54473))))

(declare-fun t!178006 () Bool)

(declare-fun tb!116951 () Bool)

(assert (=> (and b!1909539 (= (toValue!5451 (transformation!3826 (h!26886 (t!177702 (t!177702 rules!3198))))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!178006) tb!116951))

(declare-fun result!141310 () Bool)

(assert (= result!141310 result!141032))

(assert (=> d!583584 t!178006))

(declare-fun tb!116953 () Bool)

(declare-fun t!178008 () Bool)

(assert (=> (and b!1909539 (= (toValue!5451 (transformation!3826 (h!26886 (t!177702 (t!177702 rules!3198))))) (toValue!5451 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729492)))))) t!178008) tb!116953))

(declare-fun result!141312 () Bool)

(assert (= result!141312 result!141256))

(assert (=> d!584200 t!178008))

(declare-fun t!178010 () Bool)

(declare-fun tb!116955 () Bool)

(assert (=> (and b!1909539 (= (toValue!5451 (transformation!3826 (h!26886 (t!177702 (t!177702 rules!3198))))) (toValue!5451 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729395)))))) t!178010) tb!116955))

(declare-fun result!141314 () Bool)

(assert (= result!141314 result!141276))

(assert (=> d!584304 t!178010))

(declare-fun t!178012 () Bool)

(declare-fun tb!116957 () Bool)

(assert (=> (and b!1909539 (= (toValue!5451 (transformation!3826 (h!26886 (t!177702 (t!177702 rules!3198))))) (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!178012) tb!116957))

(declare-fun result!141316 () Bool)

(assert (= result!141316 result!141040))

(assert (=> d!583584 t!178012))

(assert (=> d!583594 t!178006))

(declare-fun b_and!148631 () Bool)

(declare-fun tp!544914 () Bool)

(assert (=> b!1909539 (= tp!544914 (and (=> t!178010 result!141314) (=> t!178008 result!141312) (=> t!178006 result!141310) (=> t!178012 result!141316) b_and!148631))))

(declare-fun b_free!53771 () Bool)

(declare-fun b_next!54475 () Bool)

(assert (=> b!1909539 (= b_free!53771 (not b_next!54475))))

(declare-fun t!178014 () Bool)

(declare-fun tb!116959 () Bool)

(assert (=> (and b!1909539 (= (toChars!5310 (transformation!3826 (h!26886 (t!177702 (t!177702 rules!3198))))) (toChars!5310 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729395)))))) t!178014) tb!116959))

(declare-fun result!141318 () Bool)

(assert (= result!141318 result!141190))

(assert (=> d!583984 t!178014))

(declare-fun t!178016 () Bool)

(declare-fun tb!116961 () Bool)

(assert (=> (and b!1909539 (= (toChars!5310 (transformation!3826 (h!26886 (t!177702 (t!177702 rules!3198))))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!178016) tb!116961))

(declare-fun result!141320 () Bool)

(assert (= result!141320 result!141060))

(assert (=> b!1907983 t!178016))

(assert (=> d!583630 t!178016))

(declare-fun t!178018 () Bool)

(declare-fun tb!116963 () Bool)

(assert (=> (and b!1909539 (= (toChars!5310 (transformation!3826 (h!26886 (t!177702 (t!177702 rules!3198))))) (toChars!5310 (transformation!3826 (rule!6023 (ite c!310816 (h!26885 (t!177701 tokens!598)) (ite c!310814 separatorToken!354 (h!26885 (t!177701 tokens!598)))))))) t!178018) tb!116963))

(declare-fun result!141322 () Bool)

(assert (= result!141322 result!141200))

(assert (=> d!584024 t!178018))

(declare-fun tb!116965 () Bool)

(declare-fun t!178020 () Bool)

(assert (=> (and b!1909539 (= (toChars!5310 (transformation!3826 (h!26886 (t!177702 (t!177702 rules!3198))))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598)))))) t!178020) tb!116965))

(declare-fun result!141324 () Bool)

(assert (= result!141324 result!141170))

(assert (=> b!1909157 t!178020))

(assert (=> d!583920 t!178020))

(declare-fun t!178022 () Bool)

(declare-fun tb!116967 () Bool)

(assert (=> (and b!1909539 (= (toChars!5310 (transformation!3826 (h!26886 (t!177702 (t!177702 rules!3198))))) (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354)))) t!178022) tb!116967))

(declare-fun result!141326 () Bool)

(assert (= result!141326 result!140996))

(assert (=> d!583590 t!178022))

(assert (=> b!1907433 t!178022))

(declare-fun tb!116969 () Bool)

(declare-fun t!178024 () Bool)

(assert (=> (and b!1909539 (= (toChars!5310 (transformation!3826 (h!26886 (t!177702 (t!177702 rules!3198))))) (toChars!5310 (transformation!3826 (rule!6023 (_1!11579 (get!6678 lt!729492)))))) t!178024) tb!116969))

(declare-fun result!141328 () Bool)

(assert (= result!141328 result!141266))

(assert (=> d!584274 t!178024))

(declare-fun tb!116971 () Bool)

(declare-fun t!178026 () Bool)

(assert (=> (and b!1909539 (= (toChars!5310 (transformation!3826 (h!26886 (t!177702 (t!177702 rules!3198))))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598))))) t!178026) tb!116971))

(declare-fun result!141330 () Bool)

(assert (= result!141330 result!141046))

(assert (=> d!583594 t!178026))

(declare-fun tp!544911 () Bool)

(declare-fun b_and!148633 () Bool)

(assert (=> b!1909539 (= tp!544911 (and (=> t!178018 result!141322) (=> t!178022 result!141326) (=> t!178024 result!141328) (=> t!178020 result!141324) (=> t!178014 result!141318) (=> t!178016 result!141320) (=> t!178026 result!141330) b_and!148633))))

(declare-fun e!1219560 () Bool)

(assert (=> b!1909539 (= e!1219560 (and tp!544914 tp!544911))))

(declare-fun b!1909538 () Bool)

(declare-fun e!1219559 () Bool)

(declare-fun tp!544913 () Bool)

(assert (=> b!1909538 (= e!1219559 (and tp!544913 (inv!28584 (tag!4258 (h!26886 (t!177702 (t!177702 rules!3198))))) (inv!28587 (transformation!3826 (h!26886 (t!177702 (t!177702 rules!3198))))) e!1219560))))

(declare-fun b!1909537 () Bool)

(declare-fun e!1219561 () Bool)

(declare-fun tp!544912 () Bool)

(assert (=> b!1909537 (= e!1219561 (and e!1219559 tp!544912))))

(assert (=> b!1908144 (= tp!544671 e!1219561)))

(assert (= b!1909538 b!1909539))

(assert (= b!1909537 b!1909538))

(assert (= (and b!1908144 ((_ is Cons!21485) (t!177702 (t!177702 rules!3198)))) b!1909537))

(declare-fun m!2342967 () Bool)

(assert (=> b!1909538 m!2342967))

(declare-fun m!2342969 () Bool)

(assert (=> b!1909538 m!2342969))

(declare-fun b_lambda!63187 () Bool)

(assert (= b_lambda!63183 (or b!1907392 b_lambda!63187)))

(declare-fun bs!414138 () Bool)

(declare-fun d!584418 () Bool)

(assert (= bs!414138 (and d!584418 b!1907392)))

(assert (=> bs!414138 (= (dynLambda!10485 lambda!74515 (h!26885 (t!177701 tokens!598))) (not (isSeparator!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))))))

(assert (=> b!1909407 d!584418))

(declare-fun b_lambda!63189 () Bool)

(assert (= b_lambda!63171 (or d!583594 b_lambda!63189)))

(declare-fun bs!414139 () Bool)

(declare-fun d!584420 () Bool)

(assert (= bs!414139 (and d!584420 d!583594)))

(assert (=> bs!414139 (= (dynLambda!10486 lambda!74536 lt!729323) (= (list!8738 (dynLambda!10477 (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323))) (list!8738 lt!729323)))))

(declare-fun b_lambda!63201 () Bool)

(assert (=> (not b_lambda!63201) (not bs!414139)))

(assert (=> bs!414139 t!177759))

(declare-fun b_and!148635 () Bool)

(assert (= b_and!148609 (and (=> t!177759 result!141050) b_and!148635)))

(assert (=> bs!414139 t!177757))

(declare-fun b_and!148637 () Bool)

(assert (= b_and!148613 (and (=> t!177757 result!141048) b_and!148637)))

(assert (=> bs!414139 t!178026))

(declare-fun b_and!148639 () Bool)

(assert (= b_and!148633 (and (=> t!178026 result!141330) b_and!148639)))

(assert (=> bs!414139 t!177801))

(declare-fun b_and!148641 () Bool)

(assert (= b_and!148611 (and (=> t!177801 result!141102) b_and!148641)))

(assert (=> bs!414139 t!177811))

(declare-fun b_and!148643 () Bool)

(assert (= b_and!148615 (and (=> t!177811 result!141114) b_and!148643)))

(assert (=> bs!414139 t!178004))

(declare-fun b_and!148645 () Bool)

(assert (= b_and!148629 (and (=> t!178004 result!141308) b_and!148645)))

(assert (=> bs!414139 t!177755))

(declare-fun b_and!148647 () Bool)

(assert (= b_and!148607 (and (=> t!177755 result!141046) b_and!148647)))

(declare-fun b_lambda!63203 () Bool)

(assert (=> (not b_lambda!63203) (not bs!414139)))

(assert (=> bs!414139 t!177745))

(declare-fun b_and!148649 () Bool)

(assert (= b_and!148621 (and (=> t!177745 result!141036) b_and!148649)))

(assert (=> bs!414139 t!177795))

(declare-fun b_and!148651 () Bool)

(assert (= b_and!148623 (and (=> t!177795 result!141096) b_and!148651)))

(assert (=> bs!414139 t!177805))

(declare-fun b_and!148653 () Bool)

(assert (= b_and!148619 (and (=> t!177805 result!141108) b_and!148653)))

(assert (=> bs!414139 t!177743))

(declare-fun b_and!148655 () Bool)

(assert (= b_and!148617 (and (=> t!177743 result!141032) b_and!148655)))

(assert (=> bs!414139 t!177747))

(declare-fun b_and!148657 () Bool)

(assert (= b_and!148625 (and (=> t!177747 result!141038) b_and!148657)))

(assert (=> bs!414139 t!177984))

(declare-fun b_and!148659 () Bool)

(assert (= b_and!148627 (and (=> t!177984 result!141288) b_and!148659)))

(assert (=> bs!414139 t!178006))

(declare-fun b_and!148661 () Bool)

(assert (= b_and!148631 (and (=> t!178006 result!141310) b_and!148661)))

(assert (=> bs!414139 m!2340131))

(assert (=> bs!414139 m!2340573))

(assert (=> bs!414139 m!2340589))

(assert (=> bs!414139 m!2340589))

(assert (=> bs!414139 m!2340591))

(assert (=> bs!414139 m!2340573))

(assert (=> d!584230 d!584420))

(declare-fun b_lambda!63191 () Bool)

(assert (= b_lambda!63133 (or (and b!1907389 b_free!53731 (= (toChars!5310 (transformation!3826 (h!26886 rules!3198))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))))) (and b!1907387 b_free!53735 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))))) (and b!1908135 b_free!53751) (and b!1909539 b_free!53771 (= (toChars!5310 (transformation!3826 (h!26886 (t!177702 (t!177702 rules!3198))))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))))) (and b!1908146 b_free!53755 (= (toChars!5310 (transformation!3826 (h!26886 (t!177702 rules!3198)))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))))) (and b!1907400 b_free!53739 (= (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))))) (and b!1909496 b_free!53767 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 (t!177701 tokens!598)))))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))))) b_lambda!63191)))

(declare-fun b_lambda!63193 () Bool)

(assert (= b_lambda!63179 (or d!583510 b_lambda!63193)))

(declare-fun bs!414140 () Bool)

(declare-fun d!584422 () Bool)

(assert (= bs!414140 (and d!584422 d!583510)))

(assert (=> bs!414140 (= (dynLambda!10485 lambda!74521 (h!26885 tokens!598)) (rulesProduceIndividualToken!1611 thiss!23328 rules!3198 (h!26885 tokens!598)))))

(assert (=> bs!414140 m!2340363))

(assert (=> b!1909252 d!584422))

(declare-fun b_lambda!63195 () Bool)

(assert (= b_lambda!63185 (or b!1907731 b_lambda!63195)))

(declare-fun bs!414141 () Bool)

(declare-fun d!584424 () Bool)

(assert (= bs!414141 (and d!584424 b!1907731)))

(assert (=> bs!414141 (= (dynLambda!10485 lambda!74527 (h!26885 (t!177701 tokens!598))) (rulesProduceIndividualToken!1611 thiss!23328 rules!3198 (h!26885 (t!177701 tokens!598))))))

(assert (=> bs!414141 m!2342579))

(assert (=> d!584408 d!584424))

(declare-fun b_lambda!63197 () Bool)

(assert (= b_lambda!63181 (or d!583584 b_lambda!63197)))

(declare-fun bs!414142 () Bool)

(declare-fun d!584426 () Bool)

(assert (= bs!414142 (and d!584426 d!583584)))

(declare-fun res!852544 () Bool)

(declare-fun e!1219562 () Bool)

(assert (=> bs!414142 (=> res!852544 e!1219562)))

(assert (=> bs!414142 (= res!852544 (not (= (list!8738 lt!729323) (list!8738 (seqFromList!2698 (originalCharacters!4633 (h!26885 tokens!598)))))))))

(assert (=> bs!414142 (= (dynLambda!10489 lambda!74533 lt!729323 (seqFromList!2698 (originalCharacters!4633 (h!26885 tokens!598)))) e!1219562)))

(declare-fun b!1909540 () Bool)

(assert (=> b!1909540 (= e!1219562 (= (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) lt!729323) (dynLambda!10483 (toValue!5451 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (seqFromList!2698 (originalCharacters!4633 (h!26885 tokens!598))))))))

(assert (= (and bs!414142 (not res!852544)) b!1909540))

(declare-fun b_lambda!63205 () Bool)

(assert (=> (not b_lambda!63205) (not b!1909540)))

(assert (=> b!1909540 t!177805))

(declare-fun b_and!148663 () Bool)

(assert (= b_and!148653 (and (=> t!177805 result!141108) b_and!148663)))

(assert (=> b!1909540 t!177747))

(declare-fun b_and!148665 () Bool)

(assert (= b_and!148657 (and (=> t!177747 result!141038) b_and!148665)))

(assert (=> b!1909540 t!177795))

(declare-fun b_and!148667 () Bool)

(assert (= b_and!148651 (and (=> t!177795 result!141096) b_and!148667)))

(assert (=> b!1909540 t!177743))

(declare-fun b_and!148669 () Bool)

(assert (= b_and!148655 (and (=> t!177743 result!141032) b_and!148669)))

(assert (=> b!1909540 t!177984))

(declare-fun b_and!148671 () Bool)

(assert (= b_and!148659 (and (=> t!177984 result!141288) b_and!148671)))

(assert (=> b!1909540 t!177745))

(declare-fun b_and!148673 () Bool)

(assert (= b_and!148649 (and (=> t!177745 result!141036) b_and!148673)))

(assert (=> b!1909540 t!178006))

(declare-fun b_and!148675 () Bool)

(assert (= b_and!148661 (and (=> t!178006 result!141310) b_and!148675)))

(declare-fun b_lambda!63207 () Bool)

(assert (=> (not b_lambda!63207) (not b!1909540)))

(assert (=> b!1909540 t!177990))

(declare-fun b_and!148677 () Bool)

(assert (= b_and!148671 (and (=> t!177990 result!141294) b_and!148677)))

(assert (=> b!1909540 t!177751))

(declare-fun b_and!148679 () Bool)

(assert (= b_and!148673 (and (=> t!177751 result!141042) b_and!148679)))

(assert (=> b!1909540 t!177753))

(declare-fun b_and!148681 () Bool)

(assert (= b_and!148665 (and (=> t!177753 result!141044) b_and!148681)))

(assert (=> b!1909540 t!177807))

(declare-fun b_and!148683 () Bool)

(assert (= b_and!148663 (and (=> t!177807 result!141110) b_and!148683)))

(assert (=> b!1909540 t!178012))

(declare-fun b_and!148685 () Bool)

(assert (= b_and!148675 (and (=> t!178012 result!141316) b_and!148685)))

(assert (=> b!1909540 t!177797))

(declare-fun b_and!148687 () Bool)

(assert (= b_and!148667 (and (=> t!177797 result!141098) b_and!148687)))

(assert (=> b!1909540 t!177749))

(declare-fun b_and!148689 () Bool)

(assert (= b_and!148669 (and (=> t!177749 result!141040) b_and!148689)))

(assert (=> bs!414142 m!2340131))

(assert (=> bs!414142 m!2340133))

(assert (=> bs!414142 m!2340569))

(assert (=> b!1909540 m!2340573))

(assert (=> b!1909540 m!2340133))

(assert (=> b!1909540 m!2340571))

(assert (=> d!584376 d!584426))

(declare-fun b_lambda!63199 () Bool)

(assert (= b_lambda!63173 (or (and b!1907389 b_free!53731 (= (toChars!5310 (transformation!3826 (h!26886 rules!3198))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))))) (and b!1907387 b_free!53735 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 tokens!598)))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))))) (and b!1908135 b_free!53751) (and b!1909539 b_free!53771 (= (toChars!5310 (transformation!3826 (h!26886 (t!177702 (t!177702 rules!3198))))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))))) (and b!1908146 b_free!53755 (= (toChars!5310 (transformation!3826 (h!26886 (t!177702 rules!3198)))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))))) (and b!1907400 b_free!53739 (= (toChars!5310 (transformation!3826 (rule!6023 separatorToken!354))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))))) (and b!1909496 b_free!53767 (= (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 (t!177701 tokens!598)))))) (toChars!5310 (transformation!3826 (rule!6023 (h!26885 (t!177701 tokens!598))))))) b_lambda!63199)))

(check-sat (not b_next!54453) (not b!1909421) (not b!1909208) (not d!584394) (not b!1909457) (not b!1908741) (not b!1909464) (not d!584284) (not b!1909337) (not bm!117625) (not b!1909519) b_and!148687 (not b!1909126) (not bm!117693) (not b!1908747) (not b!1909150) (not b!1909184) (not b!1909395) (not b!1908736) (not b!1909265) (not d!584358) (not b!1907885) (not b!1909360) (not d!583982) (not b!1909507) (not b!1909506) (not b!1909332) (not b_next!54473) (not d!584308) (not b!1909057) (not b!1908734) (not bm!117640) (not b!1909158) (not b!1909520) (not d!584416) (not b!1909232) (not b!1909428) (not b!1909436) (not b!1909455) (not b!1909512) (not b!1908508) (not b!1909286) (not b!1909156) (not b!1909276) (not b!1909171) (not d!584162) (not d!584218) (not b!1909488) (not b!1908657) (not b!1909215) (not bm!117672) (not b!1909473) (not b!1909453) (not bm!117642) (not b!1908584) (not d!584194) (not b!1909401) (not d!584392) (not b!1909283) (not b!1909221) (not bm!117641) (not b_lambda!63207) (not b!1908662) (not b!1908721) (not b!1909449) (not b!1908722) (not b!1909393) (not b!1909413) (not bm!117676) (not b!1908585) (not b!1909244) (not b!1909147) (not b!1909226) (not b!1909128) (not d!584160) (not b!1909119) (not bm!117622) (not b!1908740) (not d!584020) (not b!1909346) (not b!1909523) (not b!1909466) (not d!584390) (not b!1909190) (not b!1909304) (not b!1908563) tp_is_empty!9097 b_and!148681 (not b!1909110) (not bm!117624) (not b!1909196) (not d!584230) b_and!148689 (not b!1909448) (not b!1909515) (not b!1909479) (not b!1908726) (not bm!117674) (not b!1909536) (not b!1909129) (not bm!117687) (not b!1908728) (not b!1909469) (not d!584350) b_and!148645 (not b_lambda!63193) (not d!584404) (not b!1909249) (not b!1909117) (not b!1909185) (not d!584352) (not b!1909222) (not b!1909503) (not b!1909504) (not b!1909476) (not b!1909191) (not b!1909477) (not d!584028) (not d!584236) (not b!1909514) (not d!584256) (not b!1909422) (not b!1909535) (not b!1908981) (not d!584382) b_and!148685 (not b!1909495) (not b_next!54441) (not d!584374) (not b!1908654) (not bm!117691) b_and!148643 (not b!1909341) (not d!584000) (not b!1909362) (not tb!116909) b_and!148639 (not b!1909412) (not b!1909216) (not b_next!54459) (not b!1909498) (not d!584170) (not b!1908764) (not d!584024) (not b_lambda!63113) (not bm!117669) (not b!1909537) (not b_lambda!63103) (not b_lambda!63099) (not d!584212) (not b!1909270) (not d!584022) (not b!1909329) (not b!1909280) (not b!1909394) (not b!1909425) (not b_lambda!63191) (not b!1908986) (not b!1909106) (not d!584180) (not b!1909214) (not b!1909285) (not d!583978) (not d!584332) (not d!584262) (not bm!117670) (not b!1909485) (not d!584254) b_and!148679 (not b!1909167) (not bm!117680) (not b!1909487) (not b!1909499) (not d!584220) (not b!1908730) (not b!1909527) (not tb!116899) (not d!584290) (not b_lambda!63109) (not b!1909277) (not d!584408) (not b!1908630) (not d!583920) (not bm!117629) (not b!1908677) (not b_lambda!63101) (not b!1909138) (not bm!117677) (not b!1909248) (not b!1909134) (not b!1909141) (not b!1909131) (not b!1909410) (not b!1908758) (not b!1909462) (not b!1908757) (not b_lambda!63189) (not d!583992) (not b!1909483) (not d!583988) (not b!1909447) (not b!1909538) (not b!1909066) (not b!1909330) (not b!1909470) (not b!1909471) (not b!1909493) b_and!148637 (not b!1909113) (not d!584010) (not tb!116815) (not b!1909306) (not d!584306) (not d!584270) (not b_lambda!63205) (not b!1909509) (not b!1909227) (not b!1909406) (not d!583934) (not d!584376) (not b!1908627) (not d!584202) (not d!584036) (not b!1908650) (not b_next!54457) (not b!1909340) (not b!1909379) (not d!584322) (not b!1909354) (not b!1908659) (not d!584330) (not b!1909531) (not b!1909220) (not d!584164) (not d!583976) (not d!583946) (not b!1908729) (not b_lambda!63203) (not b!1908716) (not b!1909452) (not b!1909120) (not b_next!54471) (not d!584030) (not b!1909494) (not b!1909053) (not b_next!54439) (not b!1909143) (not b!1909166) (not b!1909417) (not d!584338) (not d!584246) (not b_lambda!63107) (not d!584178) (not b!1908980) (not b!1909133) (not b!1909267) (not b!1908678) (not b!1908626) (not b!1908979) (not d!583986) (not d!584364) (not b!1909295) (not b!1909228) (not b!1908766) (not b!1908752) (not b!1909148) (not b!1909173) (not b!1908718) (not b!1909047) (not d!584334) (not b_next!54437) (not d!584360) (not b!1909154) (not b!1908711) (not tb!116919) (not b!1909438) (not b!1909522) (not b_lambda!63195) (not b!1909313) (not b!1909451) (not d!584188) (not b!1908768) (not d!584258) (not b!1909478) (not b!1909472) (not bs!414139) (not b!1908663) (not b!1908738) (not b!1908984) (not d!584412) (not b!1909524) (not b!1909210) (not bm!117667) (not d!583966) (not b!1909122) (not b!1909456) (not b!1909275) (not b!1909358) (not b!1909534) (not b!1908608) (not bm!117678) (not d!584388) (not d!583970) (not b!1909460) (not d!584204) (not b!1909385) (not d!584264) (not d!583930) (not b!1909468) (not b!1909157) (not b!1909500) (not b!1909505) (not b!1909206) (not b!1908669) (not b!1908778) (not b!1909242) (not d!584344) (not bm!117627) (not b!1909532) (not bm!117673) (not b!1909115) (not bm!117690) (not b!1909223) (not b!1909108) (not b_lambda!63187) (not b!1908682) (not b!1909510) (not b!1909465) (not b!1909435) (not b!1909386) (not d!584362) (not b!1909518) (not b!1909211) (not d!584370) (not b!1909318) (not b!1908753) (not bm!117643) (not b!1909528) (not b!1909459) (not d!584398) (not b!1908651) (not b!1908735) (not b_next!54443) (not b!1908985) (not d!584228) (not b!1909484) (not b!1909200) (not d!583962) (not tb!116835) (not b_next!54433) (not d!584406) (not b!1909398) (not bm!117621) b_and!148683 (not b!1909125) (not b!1909391) (not b!1908674) (not b!1909152) (not b!1909431) (not b!1909246) (not b!1909151) (not b!1909217) (not b!1909432) (not d!583974) (not d!583948) (not b!1907796) (not d!584302) (not d!584340) (not bm!117668) (not b!1908672) (not d!584234) (not b!1908668) (not b_lambda!63175) (not b!1908732) (not b_lambda!63105) (not b!1909207) (not b!1909052) (not d!584232) (not d!584274) (not bm!117688) (not b!1909375) (not b!1909305) (not b_lambda!63137) (not b!1909411) (not b_next!54475) (not b!1909247) (not b!1909530) (not b!1909511) (not d!583964) (not b!1909526) (not b_lambda!63111) (not b!1909516) (not b_lambda!63197) (not d!584006) (not b!1909389) b_and!148635 (not bm!117666) (not b!1909490) (not b!1909195) (not d!584260) (not d!584272) (not bm!117628) (not b!1908744) (not b!1909424) (not bm!117663) (not d!584190) (not b_next!54435) (not b!1908731) (not b!1909253) (not b!1908987) (not b_lambda!63115) (not b!1909364) b_and!148677 (not b!1909169) (not b!1909164) (not b!1909489) (not b!1908737) (not b_lambda!63169) (not d!584372) (not b!1909383) (not b!1908506) (not b!1908982) (not b_lambda!63177) (not d!583968) (not b!1908683) (not d!583984) (not d!584252) (not b!1907439) (not d!584396) (not b!1909212) (not b!1909219) (not d!583996) (not bm!117684) (not d!583918) (not d!584278) (not b!1908580) (not b!1909293) (not b!1908777) (not b_next!54455) (not b!1909426) (not b!1909408) (not d!584378) (not b!1908572) (not b_lambda!63201) (not d!584266) (not b!1909183) (not b_next!54469) (not b!1909049) (not b_lambda!63139) (not b!1908727) (not b!1909345) (not b!1909474) (not d!583922) (not bs!414140) (not b!1909271) (not b!1908667) (not d!584316) (not b!1909279) (not d!583880) (not d!584034) b_and!148647 (not b!1909427) (not d!584238) (not bs!414142) (not bs!414141) (not b!1909502) (not b!1909259) (not bm!117644) (not b!1909461) b_and!148641 (not d!584318) (not b!1909137) (not b!1909230) (not b!1909402) (not tb!116845) (not d!584336) (not b!1909397) (not b!1908749) (not b!1909231) (not b!1908607) (not b!1909430) (not b!1909380) (not b_lambda!63199) (not b!1909199) (not d!584226) (not bm!117683) (not b!1909225) (not b!1908652) (not b!1909335) (not b!1909058) (not b!1909145) (not b!1909209))
(check-sat (not b_next!54473) b_and!148681 b_and!148679 b_and!148637 (not b_next!54457) (not b_next!54437) (not b_next!54443) (not b_next!54453) b_and!148687 b_and!148689 b_and!148645 b_and!148685 b_and!148639 (not b_next!54441) (not b_next!54459) b_and!148643 (not b_next!54471) (not b_next!54439) b_and!148683 (not b_next!54433) b_and!148635 (not b_next!54475) (not b_next!54435) b_and!148677 (not b_next!54469) (not b_next!54455) b_and!148647 b_and!148641)
