; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58020 () Bool)

(assert start!58020)

(declare-fun b!607650 () Bool)

(declare-fun b_free!17301 () Bool)

(declare-fun b_next!17317 () Bool)

(assert (=> b!607650 (= b_free!17301 (not b_next!17317))))

(declare-fun tp!188586 () Bool)

(declare-fun b_and!60167 () Bool)

(assert (=> b!607650 (= tp!188586 b_and!60167)))

(declare-fun b_free!17303 () Bool)

(declare-fun b_next!17319 () Bool)

(assert (=> b!607650 (= b_free!17303 (not b_next!17319))))

(declare-fun tp!188585 () Bool)

(declare-fun b_and!60169 () Bool)

(assert (=> b!607650 (= tp!188585 b_and!60169)))

(declare-fun b!607670 () Bool)

(declare-fun b_free!17305 () Bool)

(declare-fun b_next!17321 () Bool)

(assert (=> b!607670 (= b_free!17305 (not b_next!17321))))

(declare-fun tp!188581 () Bool)

(declare-fun b_and!60171 () Bool)

(assert (=> b!607670 (= tp!188581 b_and!60171)))

(declare-fun b_free!17307 () Bool)

(declare-fun b_next!17323 () Bool)

(assert (=> b!607670 (= b_free!17307 (not b_next!17323))))

(declare-fun tp!188583 () Bool)

(declare-fun b_and!60173 () Bool)

(assert (=> b!607670 (= tp!188583 b_and!60173)))

(declare-fun b!607644 () Bool)

(declare-fun res!263419 () Bool)

(declare-fun e!368272 () Bool)

(assert (=> b!607644 (=> res!263419 e!368272)))

(declare-datatypes ((String!7928 0))(
  ( (String!7929 (value!39411 String)) )
))
(declare-datatypes ((C!4016 0))(
  ( (C!4017 (val!2234 Int)) )
))
(declare-datatypes ((Regex!1547 0))(
  ( (ElementMatch!1547 (c!112569 C!4016)) (Concat!2784 (regOne!3606 Regex!1547) (regTwo!3606 Regex!1547)) (EmptyExpr!1547) (Star!1547 (reg!1876 Regex!1547)) (EmptyLang!1547) (Union!1547 (regOne!3607 Regex!1547) (regTwo!3607 Regex!1547)) )
))
(declare-datatypes ((List!6082 0))(
  ( (Nil!6072) (Cons!6072 (h!11473 (_ BitVec 16)) (t!80659 List!6082)) )
))
(declare-datatypes ((TokenValue!1237 0))(
  ( (FloatLiteralValue!2474 (text!9104 List!6082)) (TokenValueExt!1236 (__x!4372 Int)) (Broken!6185 (value!39412 List!6082)) (Object!1246) (End!1237) (Def!1237) (Underscore!1237) (Match!1237) (Else!1237) (Error!1237) (Case!1237) (If!1237) (Extends!1237) (Abstract!1237) (Class!1237) (Val!1237) (DelimiterValue!2474 (del!1297 List!6082)) (KeywordValue!1243 (value!39413 List!6082)) (CommentValue!2474 (value!39414 List!6082)) (WhitespaceValue!2474 (value!39415 List!6082)) (IndentationValue!1237 (value!39416 List!6082)) (String!7930) (Int32!1237) (Broken!6186 (value!39417 List!6082)) (Boolean!1238) (Unit!11087) (OperatorValue!1240 (op!1297 List!6082)) (IdentifierValue!2474 (value!39418 List!6082)) (IdentifierValue!2475 (value!39419 List!6082)) (WhitespaceValue!2475 (value!39420 List!6082)) (True!2474) (False!2474) (Broken!6187 (value!39421 List!6082)) (Broken!6188 (value!39422 List!6082)) (True!2475) (RightBrace!1237) (RightBracket!1237) (Colon!1237) (Null!1237) (Comma!1237) (LeftBracket!1237) (False!2475) (LeftBrace!1237) (ImaginaryLiteralValue!1237 (text!9105 List!6082)) (StringLiteralValue!3711 (value!39423 List!6082)) (EOFValue!1237 (value!39424 List!6082)) (IdentValue!1237 (value!39425 List!6082)) (DelimiterValue!2475 (value!39426 List!6082)) (DedentValue!1237 (value!39427 List!6082)) (NewLineValue!1237 (value!39428 List!6082)) (IntegerValue!3711 (value!39429 (_ BitVec 32)) (text!9106 List!6082)) (IntegerValue!3712 (value!39430 Int) (text!9107 List!6082)) (Times!1237) (Or!1237) (Equal!1237) (Minus!1237) (Broken!6189 (value!39431 List!6082)) (And!1237) (Div!1237) (LessEqual!1237) (Mod!1237) (Concat!2785) (Not!1237) (Plus!1237) (SpaceValue!1237 (value!39432 List!6082)) (IntegerValue!3713 (value!39433 Int) (text!9108 List!6082)) (StringLiteralValue!3712 (text!9109 List!6082)) (FloatLiteralValue!2475 (text!9110 List!6082)) (BytesLiteralValue!1237 (value!39434 List!6082)) (CommentValue!2475 (value!39435 List!6082)) (StringLiteralValue!3713 (value!39436 List!6082)) (ErrorTokenValue!1237 (msg!1298 List!6082)) )
))
(declare-datatypes ((List!6083 0))(
  ( (Nil!6073) (Cons!6073 (h!11474 C!4016) (t!80660 List!6083)) )
))
(declare-datatypes ((IArray!3861 0))(
  ( (IArray!3862 (innerList!1988 List!6083)) )
))
(declare-datatypes ((Conc!1930 0))(
  ( (Node!1930 (left!4869 Conc!1930) (right!5199 Conc!1930) (csize!4090 Int) (cheight!2141 Int)) (Leaf!3044 (xs!4567 IArray!3861) (csize!4091 Int)) (Empty!1930) )
))
(declare-datatypes ((BalanceConc!3868 0))(
  ( (BalanceConc!3869 (c!112570 Conc!1930)) )
))
(declare-datatypes ((TokenValueInjection!2242 0))(
  ( (TokenValueInjection!2243 (toValue!2120 Int) (toChars!1979 Int)) )
))
(declare-datatypes ((Rule!2226 0))(
  ( (Rule!2227 (regex!1213 Regex!1547) (tag!1475 String!7928) (isSeparator!1213 Bool) (transformation!1213 TokenValueInjection!2242)) )
))
(declare-datatypes ((List!6084 0))(
  ( (Nil!6074) (Cons!6074 (h!11475 Rule!2226) (t!80661 List!6084)) )
))
(declare-fun rules!3103 () List!6084)

(declare-datatypes ((Token!2162 0))(
  ( (Token!2163 (value!39437 TokenValue!1237) (rule!1997 Rule!2226) (size!4778 Int) (originalCharacters!1252 List!6083)) )
))
(declare-fun token!491 () Token!2162)

(declare-fun contains!1429 (List!6084 Rule!2226) Bool)

(assert (=> b!607644 (= res!263419 (not (contains!1429 rules!3103 (rule!1997 token!491))))))

(declare-fun b!607645 () Bool)

(declare-fun e!368273 () Bool)

(declare-fun e!368265 () Bool)

(assert (=> b!607645 (= e!368273 e!368265)))

(declare-fun res!263403 () Bool)

(assert (=> b!607645 (=> res!263403 e!368265)))

(declare-fun lt!259578 () Int)

(declare-fun lt!259593 () Int)

(assert (=> b!607645 (= res!263403 (>= lt!259578 lt!259593))))

(declare-fun b!607646 () Bool)

(declare-fun e!368279 () Bool)

(assert (=> b!607646 (= e!368279 e!368272)))

(declare-fun res!263395 () Bool)

(assert (=> b!607646 (=> res!263395 e!368272)))

(assert (=> b!607646 (= res!263395 (>= lt!259578 lt!259593))))

(assert (=> b!607646 e!368273))

(declare-fun res!263397 () Bool)

(assert (=> b!607646 (=> (not res!263397) (not e!368273))))

(declare-fun suffix!1342 () List!6083)

(declare-fun lt!259590 () List!6083)

(declare-fun lt!259583 () TokenValue!1237)

(declare-datatypes ((LexerInterface!1099 0))(
  ( (LexerInterfaceExt!1096 (__x!4373 Int)) (Lexer!1097) )
))
(declare-fun thiss!22590 () LexerInterface!1099)

(declare-fun lt!259575 () List!6083)

(declare-datatypes ((tuple2!6948 0))(
  ( (tuple2!6949 (_1!3738 Token!2162) (_2!3738 List!6083)) )
))
(declare-datatypes ((Option!1564 0))(
  ( (None!1563) (Some!1563 (v!16466 tuple2!6948)) )
))
(declare-fun maxPrefixOneRule!460 (LexerInterface!1099 Rule!2226 List!6083) Option!1564)

(assert (=> b!607646 (= res!263397 (= (maxPrefixOneRule!460 thiss!22590 (rule!1997 token!491) lt!259590) (Some!1563 (tuple2!6949 (Token!2163 lt!259583 (rule!1997 token!491) lt!259593 lt!259575) suffix!1342))))))

(declare-datatypes ((Unit!11088 0))(
  ( (Unit!11089) )
))
(declare-fun lt!259589 () Unit!11088)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!166 (LexerInterface!1099 List!6084 List!6083 List!6083 List!6083 Rule!2226) Unit!11088)

(assert (=> b!607646 (= lt!259589 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!166 thiss!22590 rules!3103 lt!259575 lt!259590 suffix!1342 (rule!1997 token!491)))))

(declare-fun lt!259579 () Token!2162)

(declare-fun lt!259602 () Option!1564)

(declare-fun input!2705 () List!6083)

(assert (=> b!607646 (= (maxPrefixOneRule!460 thiss!22590 (rule!1997 (_1!3738 (v!16466 lt!259602))) input!2705) (Some!1563 (tuple2!6949 lt!259579 (_2!3738 (v!16466 lt!259602)))))))

(declare-fun lt!259587 () Unit!11088)

(declare-fun lt!259584 () List!6083)

(assert (=> b!607646 (= lt!259587 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!166 thiss!22590 rules!3103 lt!259584 input!2705 (_2!3738 (v!16466 lt!259602)) (rule!1997 (_1!3738 (v!16466 lt!259602)))))))

(declare-fun e!368269 () Bool)

(assert (=> b!607646 e!368269))

(declare-fun res!263411 () Bool)

(assert (=> b!607646 (=> (not res!263411) (not e!368269))))

(assert (=> b!607646 (= res!263411 (= (value!39437 token!491) lt!259583))))

(declare-fun apply!1466 (TokenValueInjection!2242 BalanceConc!3868) TokenValue!1237)

(declare-fun seqFromList!1389 (List!6083) BalanceConc!3868)

(assert (=> b!607646 (= lt!259583 (apply!1466 (transformation!1213 (rule!1997 token!491)) (seqFromList!1389 lt!259575)))))

(declare-fun lt!259599 () List!6083)

(assert (=> b!607646 (= suffix!1342 lt!259599)))

(declare-fun lt!259594 () Unit!11088)

(declare-fun lemmaSamePrefixThenSameSuffix!554 (List!6083 List!6083 List!6083 List!6083 List!6083) Unit!11088)

(assert (=> b!607646 (= lt!259594 (lemmaSamePrefixThenSameSuffix!554 lt!259575 suffix!1342 lt!259575 lt!259599 lt!259590))))

(declare-fun getSuffix!358 (List!6083 List!6083) List!6083)

(assert (=> b!607646 (= lt!259599 (getSuffix!358 lt!259590 lt!259575))))

(declare-fun b!607647 () Bool)

(declare-fun e!368266 () Unit!11088)

(declare-fun Unit!11090 () Unit!11088)

(assert (=> b!607647 (= e!368266 Unit!11090)))

(assert (=> b!607647 false))

(declare-fun lt!259582 () TokenValue!1237)

(declare-fun lt!259574 () tuple2!6948)

(declare-fun lt!259600 () List!6083)

(declare-fun b!607648 () Bool)

(declare-fun e!368263 () Bool)

(assert (=> b!607648 (= e!368263 (and (= (size!4778 (_1!3738 (v!16466 lt!259602))) lt!259578) (= (originalCharacters!1252 (_1!3738 (v!16466 lt!259602))) lt!259584) (= lt!259574 (tuple2!6949 (Token!2163 lt!259582 (rule!1997 (_1!3738 (v!16466 lt!259602))) lt!259578 lt!259584) lt!259600))))))

(declare-fun b!607649 () Bool)

(declare-fun e!368264 () Bool)

(declare-fun tp_is_empty!3449 () Bool)

(declare-fun tp!188580 () Bool)

(assert (=> b!607649 (= e!368264 (and tp_is_empty!3449 tp!188580))))

(declare-fun e!368262 () Bool)

(assert (=> b!607650 (= e!368262 (and tp!188586 tp!188585))))

(declare-fun b!607651 () Bool)

(declare-fun e!368259 () Bool)

(declare-fun e!368282 () Bool)

(declare-fun tp!188587 () Bool)

(declare-fun inv!21 (TokenValue!1237) Bool)

(assert (=> b!607651 (= e!368282 (and (inv!21 (value!39437 token!491)) e!368259 tp!188587))))

(declare-fun b!607652 () Bool)

(declare-fun res!263406 () Bool)

(assert (=> b!607652 (=> res!263406 e!368272)))

(assert (=> b!607652 (= res!263406 (not (= (getSuffix!358 input!2705 input!2705) Nil!6073)))))

(declare-fun b!607653 () Bool)

(declare-fun res!263405 () Bool)

(declare-fun e!368275 () Bool)

(assert (=> b!607653 (=> (not res!263405) (not e!368275))))

(declare-fun rulesInvariant!1062 (LexerInterface!1099 List!6084) Bool)

(assert (=> b!607653 (= res!263405 (rulesInvariant!1062 thiss!22590 rules!3103))))

(declare-fun b!607654 () Bool)

(declare-fun tp!188588 () Bool)

(declare-fun e!368270 () Bool)

(declare-fun inv!7721 (String!7928) Bool)

(declare-fun inv!7724 (TokenValueInjection!2242) Bool)

(assert (=> b!607654 (= e!368259 (and tp!188588 (inv!7721 (tag!1475 (rule!1997 token!491))) (inv!7724 (transformation!1213 (rule!1997 token!491))) e!368270))))

(declare-fun b!607655 () Bool)

(declare-fun res!263398 () Bool)

(assert (=> b!607655 (=> res!263398 e!368272)))

(declare-fun isPrefix!841 (List!6083 List!6083) Bool)

(assert (=> b!607655 (= res!263398 (not (isPrefix!841 lt!259575 input!2705)))))

(declare-fun b!607656 () Bool)

(declare-fun res!263414 () Bool)

(assert (=> b!607656 (=> (not res!263414) (not e!368275))))

(declare-fun isEmpty!4383 (List!6083) Bool)

(assert (=> b!607656 (= res!263414 (not (isEmpty!4383 input!2705)))))

(declare-fun b!607657 () Bool)

(declare-fun res!263407 () Bool)

(assert (=> b!607657 (=> (not res!263407) (not e!368263))))

(declare-fun size!4779 (List!6083) Int)

(assert (=> b!607657 (= res!263407 (= (size!4778 (_1!3738 (v!16466 lt!259602))) (size!4779 (originalCharacters!1252 (_1!3738 (v!16466 lt!259602))))))))

(declare-fun b!607658 () Bool)

(declare-fun e!368277 () Bool)

(declare-fun get!2334 (Option!1564) tuple2!6948)

(assert (=> b!607658 (= e!368277 (= (_1!3738 (get!2334 lt!259602)) (_1!3738 (v!16466 lt!259602))))))

(declare-fun b!607659 () Bool)

(declare-fun Unit!11091 () Unit!11088)

(assert (=> b!607659 (= e!368266 Unit!11091)))

(declare-fun b!607660 () Bool)

(declare-fun e!368268 () Bool)

(declare-fun e!368278 () Bool)

(assert (=> b!607660 (= e!368268 e!368278)))

(declare-fun res!263417 () Bool)

(assert (=> b!607660 (=> (not res!263417) (not e!368278))))

(declare-fun lt!259586 () tuple2!6948)

(assert (=> b!607660 (= res!263417 (and (= (_1!3738 lt!259586) token!491) (= (_2!3738 lt!259586) suffix!1342)))))

(declare-fun lt!259576 () Option!1564)

(assert (=> b!607660 (= lt!259586 (get!2334 lt!259576))))

(declare-fun b!607661 () Bool)

(declare-fun e!368283 () Bool)

(declare-fun tp!188582 () Bool)

(assert (=> b!607661 (= e!368283 (and tp_is_empty!3449 tp!188582))))

(declare-fun res!263416 () Bool)

(assert (=> start!58020 (=> (not res!263416) (not e!368275))))

(get-info :version)

(assert (=> start!58020 (= res!263416 ((_ is Lexer!1097) thiss!22590))))

(assert (=> start!58020 e!368275))

(assert (=> start!58020 e!368283))

(declare-fun e!368276 () Bool)

(assert (=> start!58020 e!368276))

(declare-fun inv!7725 (Token!2162) Bool)

(assert (=> start!58020 (and (inv!7725 token!491) e!368282)))

(assert (=> start!58020 true))

(assert (=> start!58020 e!368264))

(declare-fun b!607662 () Bool)

(declare-fun e!368267 () Bool)

(declare-fun tp!188579 () Bool)

(assert (=> b!607662 (= e!368276 (and e!368267 tp!188579))))

(declare-fun b!607663 () Bool)

(declare-fun res!263420 () Bool)

(assert (=> b!607663 (=> res!263420 e!368272)))

(declare-fun ++!1701 (List!6083 List!6083) List!6083)

(assert (=> b!607663 (= res!263420 (not (= (++!1701 lt!259584 lt!259600) input!2705)))))

(declare-fun b!607664 () Bool)

(assert (=> b!607664 (= e!368265 e!368277)))

(declare-fun res!263413 () Bool)

(assert (=> b!607664 (=> (not res!263413) (not e!368277))))

(declare-fun isDefined!1375 (Option!1564) Bool)

(assert (=> b!607664 (= res!263413 (isDefined!1375 lt!259602))))

(declare-fun b!607665 () Bool)

(declare-fun e!368258 () Bool)

(assert (=> b!607665 (= e!368258 (not e!368279))))

(declare-fun res!263399 () Bool)

(assert (=> b!607665 (=> res!263399 e!368279)))

(declare-fun lt!259595 () List!6083)

(assert (=> b!607665 (= res!263399 (not (isPrefix!841 input!2705 lt!259595)))))

(assert (=> b!607665 (isPrefix!841 lt!259575 lt!259595)))

(declare-fun lt!259580 () Unit!11088)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!686 (List!6083 List!6083) Unit!11088)

(assert (=> b!607665 (= lt!259580 (lemmaConcatTwoListThenFirstIsPrefix!686 lt!259575 suffix!1342))))

(assert (=> b!607665 (isPrefix!841 input!2705 lt!259590)))

(declare-fun lt!259598 () Unit!11088)

(assert (=> b!607665 (= lt!259598 (lemmaConcatTwoListThenFirstIsPrefix!686 input!2705 suffix!1342))))

(assert (=> b!607665 (= lt!259579 (Token!2163 lt!259582 (rule!1997 (_1!3738 (v!16466 lt!259602))) lt!259578 lt!259584))))

(assert (=> b!607665 e!368263))

(declare-fun res!263404 () Bool)

(assert (=> b!607665 (=> (not res!263404) (not e!368263))))

(assert (=> b!607665 (= res!263404 (= (value!39437 (_1!3738 (v!16466 lt!259602))) lt!259582))))

(assert (=> b!607665 (= lt!259582 (apply!1466 (transformation!1213 (rule!1997 (_1!3738 (v!16466 lt!259602)))) (seqFromList!1389 lt!259584)))))

(declare-fun lt!259604 () Unit!11088)

(declare-fun lemmaInv!321 (TokenValueInjection!2242) Unit!11088)

(assert (=> b!607665 (= lt!259604 (lemmaInv!321 (transformation!1213 (rule!1997 token!491))))))

(declare-fun lt!259601 () Unit!11088)

(assert (=> b!607665 (= lt!259601 (lemmaInv!321 (transformation!1213 (rule!1997 (_1!3738 (v!16466 lt!259602))))))))

(declare-fun ruleValid!411 (LexerInterface!1099 Rule!2226) Bool)

(assert (=> b!607665 (ruleValid!411 thiss!22590 (rule!1997 token!491))))

(declare-fun lt!259588 () Unit!11088)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!258 (LexerInterface!1099 Rule!2226 List!6084) Unit!11088)

(assert (=> b!607665 (= lt!259588 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!258 thiss!22590 (rule!1997 token!491) rules!3103))))

(assert (=> b!607665 (ruleValid!411 thiss!22590 (rule!1997 (_1!3738 (v!16466 lt!259602))))))

(declare-fun lt!259585 () Unit!11088)

(assert (=> b!607665 (= lt!259585 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!258 thiss!22590 (rule!1997 (_1!3738 (v!16466 lt!259602))) rules!3103))))

(assert (=> b!607665 (isPrefix!841 input!2705 input!2705)))

(declare-fun lt!259592 () Unit!11088)

(declare-fun lemmaIsPrefixRefl!577 (List!6083 List!6083) Unit!11088)

(assert (=> b!607665 (= lt!259592 (lemmaIsPrefixRefl!577 input!2705 input!2705))))

(assert (=> b!607665 (= (_2!3738 (v!16466 lt!259602)) lt!259600)))

(declare-fun lt!259581 () Unit!11088)

(assert (=> b!607665 (= lt!259581 (lemmaSamePrefixThenSameSuffix!554 lt!259584 (_2!3738 (v!16466 lt!259602)) lt!259584 lt!259600 input!2705))))

(assert (=> b!607665 (= lt!259600 (getSuffix!358 input!2705 lt!259584))))

(declare-fun lt!259596 () List!6083)

(assert (=> b!607665 (isPrefix!841 lt!259584 lt!259596)))

(assert (=> b!607665 (= lt!259596 (++!1701 lt!259584 (_2!3738 (v!16466 lt!259602))))))

(declare-fun lt!259591 () Unit!11088)

(assert (=> b!607665 (= lt!259591 (lemmaConcatTwoListThenFirstIsPrefix!686 lt!259584 (_2!3738 (v!16466 lt!259602))))))

(declare-fun lt!259603 () Unit!11088)

(declare-fun lemmaCharactersSize!272 (Token!2162) Unit!11088)

(assert (=> b!607665 (= lt!259603 (lemmaCharactersSize!272 token!491))))

(declare-fun lt!259597 () Unit!11088)

(assert (=> b!607665 (= lt!259597 (lemmaCharactersSize!272 (_1!3738 (v!16466 lt!259602))))))

(declare-fun lt!259577 () Unit!11088)

(assert (=> b!607665 (= lt!259577 e!368266)))

(declare-fun c!112568 () Bool)

(assert (=> b!607665 (= c!112568 (> lt!259578 lt!259593))))

(assert (=> b!607665 (= lt!259593 (size!4779 lt!259575))))

(assert (=> b!607665 (= lt!259578 (size!4779 lt!259584))))

(declare-fun list!2554 (BalanceConc!3868) List!6083)

(declare-fun charsOf!842 (Token!2162) BalanceConc!3868)

(assert (=> b!607665 (= lt!259584 (list!2554 (charsOf!842 (_1!3738 (v!16466 lt!259602)))))))

(assert (=> b!607665 (= lt!259602 (Some!1563 lt!259574))))

(assert (=> b!607665 (= lt!259574 (tuple2!6949 (_1!3738 (v!16466 lt!259602)) (_2!3738 (v!16466 lt!259602))))))

(declare-fun lt!259573 () Unit!11088)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!286 (List!6083 List!6083 List!6083 List!6083) Unit!11088)

(assert (=> b!607665 (= lt!259573 (lemmaConcatSameAndSameSizesThenSameLists!286 lt!259575 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!607666 () Bool)

(declare-fun tp!188584 () Bool)

(assert (=> b!607666 (= e!368267 (and tp!188584 (inv!7721 (tag!1475 (h!11475 rules!3103))) (inv!7724 (transformation!1213 (h!11475 rules!3103))) e!368262))))

(declare-fun b!607667 () Bool)

(declare-fun e!368260 () Bool)

(assert (=> b!607667 (= e!368260 e!368268)))

(declare-fun res!263400 () Bool)

(assert (=> b!607667 (=> (not res!263400) (not e!368268))))

(assert (=> b!607667 (= res!263400 (isDefined!1375 lt!259576))))

(declare-fun maxPrefix!797 (LexerInterface!1099 List!6084 List!6083) Option!1564)

(assert (=> b!607667 (= lt!259576 (maxPrefix!797 thiss!22590 rules!3103 lt!259590))))

(assert (=> b!607667 (= lt!259590 (++!1701 input!2705 suffix!1342))))

(declare-fun b!607668 () Bool)

(declare-fun e!368274 () Bool)

(assert (=> b!607668 (= e!368278 e!368274)))

(declare-fun res!263410 () Bool)

(assert (=> b!607668 (=> (not res!263410) (not e!368274))))

(assert (=> b!607668 (= res!263410 ((_ is Some!1563) lt!259602))))

(assert (=> b!607668 (= lt!259602 (maxPrefix!797 thiss!22590 rules!3103 input!2705))))

(declare-fun b!607669 () Bool)

(declare-fun res!263401 () Bool)

(assert (=> b!607669 (=> res!263401 e!368272)))

(assert (=> b!607669 (= res!263401 (not (= lt!259596 input!2705)))))

(assert (=> b!607670 (= e!368270 (and tp!188581 tp!188583))))

(declare-fun b!607671 () Bool)

(declare-fun res!263409 () Bool)

(assert (=> b!607671 (=> res!263409 e!368272)))

(declare-fun matchR!650 (Regex!1547 List!6083) Bool)

(assert (=> b!607671 (= res!263409 (not (matchR!650 (regex!1213 (rule!1997 token!491)) input!2705)))))

(declare-fun b!607672 () Bool)

(declare-fun res!263402 () Bool)

(assert (=> b!607672 (=> (not res!263402) (not e!368275))))

(declare-fun isEmpty!4384 (List!6084) Bool)

(assert (=> b!607672 (= res!263402 (not (isEmpty!4384 rules!3103)))))

(declare-fun b!607673 () Bool)

(declare-fun res!263415 () Bool)

(assert (=> b!607673 (=> res!263415 e!368272)))

(assert (=> b!607673 (= res!263415 (not (isPrefix!841 lt!259584 input!2705)))))

(declare-fun b!607674 () Bool)

(declare-fun res!263396 () Bool)

(assert (=> b!607674 (=> (not res!263396) (not e!368269))))

(assert (=> b!607674 (= res!263396 (= (size!4778 token!491) (size!4779 (originalCharacters!1252 token!491))))))

(declare-fun b!607675 () Bool)

(declare-fun e!368261 () Bool)

(assert (=> b!607675 (= e!368261 (inv!7725 lt!259579))))

(declare-fun b!607676 () Bool)

(assert (=> b!607676 (= e!368274 e!368258)))

(declare-fun res!263418 () Bool)

(assert (=> b!607676 (=> (not res!263418) (not e!368258))))

(assert (=> b!607676 (= res!263418 (= lt!259595 lt!259590))))

(assert (=> b!607676 (= lt!259595 (++!1701 lt!259575 suffix!1342))))

(declare-fun b!607677 () Bool)

(assert (=> b!607677 (= e!368272 e!368261)))

(declare-fun res!263408 () Bool)

(assert (=> b!607677 (=> res!263408 e!368261)))

(assert (=> b!607677 (= res!263408 (not (contains!1429 rules!3103 (rule!1997 (_1!3738 (v!16466 lt!259602))))))))

(assert (=> b!607677 (= lt!259600 (_2!3738 (v!16466 lt!259602)))))

(declare-fun b!607678 () Bool)

(assert (=> b!607678 (= e!368275 e!368260)))

(declare-fun res!263412 () Bool)

(assert (=> b!607678 (=> (not res!263412) (not e!368260))))

(assert (=> b!607678 (= res!263412 (= lt!259575 input!2705))))

(assert (=> b!607678 (= lt!259575 (list!2554 (charsOf!842 token!491)))))

(declare-fun b!607679 () Bool)

(assert (=> b!607679 (= e!368269 (and (= (size!4778 token!491) lt!259593) (= (originalCharacters!1252 token!491) lt!259575) (= (tuple2!6949 token!491 suffix!1342) (tuple2!6949 (Token!2163 lt!259583 (rule!1997 token!491) lt!259593 lt!259575) lt!259599))))))

(assert (= (and start!58020 res!263416) b!607672))

(assert (= (and b!607672 res!263402) b!607653))

(assert (= (and b!607653 res!263405) b!607656))

(assert (= (and b!607656 res!263414) b!607678))

(assert (= (and b!607678 res!263412) b!607667))

(assert (= (and b!607667 res!263400) b!607660))

(assert (= (and b!607660 res!263417) b!607668))

(assert (= (and b!607668 res!263410) b!607676))

(assert (= (and b!607676 res!263418) b!607665))

(assert (= (and b!607665 c!112568) b!607647))

(assert (= (and b!607665 (not c!112568)) b!607659))

(assert (= (and b!607665 res!263404) b!607657))

(assert (= (and b!607657 res!263407) b!607648))

(assert (= (and b!607665 (not res!263399)) b!607646))

(assert (= (and b!607646 res!263411) b!607674))

(assert (= (and b!607674 res!263396) b!607679))

(assert (= (and b!607646 res!263397) b!607645))

(assert (= (and b!607645 (not res!263403)) b!607664))

(assert (= (and b!607664 res!263413) b!607658))

(assert (= (and b!607646 (not res!263395)) b!607644))

(assert (= (and b!607644 (not res!263419)) b!607671))

(assert (= (and b!607671 (not res!263409)) b!607655))

(assert (= (and b!607655 (not res!263398)) b!607652))

(assert (= (and b!607652 (not res!263406)) b!607669))

(assert (= (and b!607669 (not res!263401)) b!607673))

(assert (= (and b!607673 (not res!263415)) b!607663))

(assert (= (and b!607663 (not res!263420)) b!607677))

(assert (= (and b!607677 (not res!263408)) b!607675))

(assert (= (and start!58020 ((_ is Cons!6073) suffix!1342)) b!607661))

(assert (= b!607666 b!607650))

(assert (= b!607662 b!607666))

(assert (= (and start!58020 ((_ is Cons!6074) rules!3103)) b!607662))

(assert (= b!607654 b!607670))

(assert (= b!607651 b!607654))

(assert (= start!58020 b!607651))

(assert (= (and start!58020 ((_ is Cons!6073) input!2705)) b!607649))

(declare-fun m!874569 () Bool)

(assert (=> b!607666 m!874569))

(declare-fun m!874571 () Bool)

(assert (=> b!607666 m!874571))

(declare-fun m!874573 () Bool)

(assert (=> b!607664 m!874573))

(declare-fun m!874575 () Bool)

(assert (=> b!607671 m!874575))

(declare-fun m!874577 () Bool)

(assert (=> b!607646 m!874577))

(declare-fun m!874579 () Bool)

(assert (=> b!607646 m!874579))

(declare-fun m!874581 () Bool)

(assert (=> b!607646 m!874581))

(declare-fun m!874583 () Bool)

(assert (=> b!607646 m!874583))

(declare-fun m!874585 () Bool)

(assert (=> b!607646 m!874585))

(declare-fun m!874587 () Bool)

(assert (=> b!607646 m!874587))

(assert (=> b!607646 m!874579))

(declare-fun m!874589 () Bool)

(assert (=> b!607646 m!874589))

(declare-fun m!874591 () Bool)

(assert (=> b!607646 m!874591))

(declare-fun m!874593 () Bool)

(assert (=> b!607651 m!874593))

(declare-fun m!874595 () Bool)

(assert (=> b!607658 m!874595))

(declare-fun m!874597 () Bool)

(assert (=> b!607654 m!874597))

(declare-fun m!874599 () Bool)

(assert (=> b!607654 m!874599))

(declare-fun m!874601 () Bool)

(assert (=> b!607665 m!874601))

(declare-fun m!874603 () Bool)

(assert (=> b!607665 m!874603))

(declare-fun m!874605 () Bool)

(assert (=> b!607665 m!874605))

(declare-fun m!874607 () Bool)

(assert (=> b!607665 m!874607))

(declare-fun m!874609 () Bool)

(assert (=> b!607665 m!874609))

(declare-fun m!874611 () Bool)

(assert (=> b!607665 m!874611))

(declare-fun m!874613 () Bool)

(assert (=> b!607665 m!874613))

(declare-fun m!874615 () Bool)

(assert (=> b!607665 m!874615))

(declare-fun m!874617 () Bool)

(assert (=> b!607665 m!874617))

(declare-fun m!874619 () Bool)

(assert (=> b!607665 m!874619))

(declare-fun m!874621 () Bool)

(assert (=> b!607665 m!874621))

(declare-fun m!874623 () Bool)

(assert (=> b!607665 m!874623))

(declare-fun m!874625 () Bool)

(assert (=> b!607665 m!874625))

(declare-fun m!874627 () Bool)

(assert (=> b!607665 m!874627))

(declare-fun m!874629 () Bool)

(assert (=> b!607665 m!874629))

(declare-fun m!874631 () Bool)

(assert (=> b!607665 m!874631))

(declare-fun m!874633 () Bool)

(assert (=> b!607665 m!874633))

(declare-fun m!874635 () Bool)

(assert (=> b!607665 m!874635))

(declare-fun m!874637 () Bool)

(assert (=> b!607665 m!874637))

(declare-fun m!874639 () Bool)

(assert (=> b!607665 m!874639))

(assert (=> b!607665 m!874619))

(declare-fun m!874641 () Bool)

(assert (=> b!607665 m!874641))

(declare-fun m!874643 () Bool)

(assert (=> b!607665 m!874643))

(declare-fun m!874645 () Bool)

(assert (=> b!607665 m!874645))

(declare-fun m!874647 () Bool)

(assert (=> b!607665 m!874647))

(declare-fun m!874649 () Bool)

(assert (=> b!607665 m!874649))

(assert (=> b!607665 m!874629))

(declare-fun m!874651 () Bool)

(assert (=> b!607665 m!874651))

(declare-fun m!874653 () Bool)

(assert (=> b!607665 m!874653))

(declare-fun m!874655 () Bool)

(assert (=> b!607660 m!874655))

(declare-fun m!874657 () Bool)

(assert (=> b!607656 m!874657))

(declare-fun m!874659 () Bool)

(assert (=> b!607672 m!874659))

(declare-fun m!874661 () Bool)

(assert (=> b!607673 m!874661))

(declare-fun m!874663 () Bool)

(assert (=> b!607663 m!874663))

(declare-fun m!874665 () Bool)

(assert (=> b!607652 m!874665))

(declare-fun m!874667 () Bool)

(assert (=> b!607667 m!874667))

(declare-fun m!874669 () Bool)

(assert (=> b!607667 m!874669))

(declare-fun m!874671 () Bool)

(assert (=> b!607667 m!874671))

(declare-fun m!874673 () Bool)

(assert (=> b!607668 m!874673))

(declare-fun m!874675 () Bool)

(assert (=> b!607644 m!874675))

(declare-fun m!874677 () Bool)

(assert (=> b!607657 m!874677))

(declare-fun m!874679 () Bool)

(assert (=> b!607675 m!874679))

(declare-fun m!874681 () Bool)

(assert (=> start!58020 m!874681))

(declare-fun m!874683 () Bool)

(assert (=> b!607677 m!874683))

(declare-fun m!874685 () Bool)

(assert (=> b!607653 m!874685))

(declare-fun m!874687 () Bool)

(assert (=> b!607674 m!874687))

(declare-fun m!874689 () Bool)

(assert (=> b!607678 m!874689))

(assert (=> b!607678 m!874689))

(declare-fun m!874691 () Bool)

(assert (=> b!607678 m!874691))

(declare-fun m!874693 () Bool)

(assert (=> b!607655 m!874693))

(declare-fun m!874695 () Bool)

(assert (=> b!607676 m!874695))

(check-sat (not b!607652) (not b!607677) (not b!607658) (not b!607654) (not b!607649) (not b!607653) (not b!607675) (not b!607674) (not b!607668) (not b!607655) b_and!60171 b_and!60173 (not b!607666) (not b!607656) (not b!607672) (not b!607673) (not b!607646) (not b!607665) (not start!58020) (not b!607662) (not b!607651) (not b!607644) (not b!607664) b_and!60169 (not b_next!17323) (not b!607660) (not b!607678) (not b!607667) (not b!607676) (not b!607671) (not b!607661) (not b_next!17319) (not b!607657) tp_is_empty!3449 (not b_next!17321) (not b!607663) b_and!60167 (not b_next!17317))
(check-sat (not b_next!17319) (not b_next!17321) b_and!60171 b_and!60173 b_and!60169 (not b_next!17323) b_and!60167 (not b_next!17317))
(get-model)

(declare-fun b!607698 () Bool)

(declare-fun res!263445 () Bool)

(declare-fun e!368290 () Bool)

(assert (=> b!607698 (=> (not res!263445) (not e!368290))))

(declare-fun lt!259615 () Option!1564)

(assert (=> b!607698 (= res!263445 (matchR!650 (regex!1213 (rule!1997 (_1!3738 (get!2334 lt!259615)))) (list!2554 (charsOf!842 (_1!3738 (get!2334 lt!259615))))))))

(declare-fun b!607699 () Bool)

(declare-fun res!263442 () Bool)

(assert (=> b!607699 (=> (not res!263442) (not e!368290))))

(assert (=> b!607699 (= res!263442 (= (list!2554 (charsOf!842 (_1!3738 (get!2334 lt!259615)))) (originalCharacters!1252 (_1!3738 (get!2334 lt!259615)))))))

(declare-fun b!607700 () Bool)

(declare-fun e!368291 () Option!1564)

(declare-fun lt!259616 () Option!1564)

(declare-fun lt!259617 () Option!1564)

(assert (=> b!607700 (= e!368291 (ite (and ((_ is None!1563) lt!259616) ((_ is None!1563) lt!259617)) None!1563 (ite ((_ is None!1563) lt!259617) lt!259616 (ite ((_ is None!1563) lt!259616) lt!259617 (ite (>= (size!4778 (_1!3738 (v!16466 lt!259616))) (size!4778 (_1!3738 (v!16466 lt!259617)))) lt!259616 lt!259617)))))))

(declare-fun call!40798 () Option!1564)

(assert (=> b!607700 (= lt!259616 call!40798)))

(assert (=> b!607700 (= lt!259617 (maxPrefix!797 thiss!22590 (t!80661 rules!3103) input!2705))))

(declare-fun d!214174 () Bool)

(declare-fun e!368292 () Bool)

(assert (=> d!214174 e!368292))

(declare-fun res!263444 () Bool)

(assert (=> d!214174 (=> res!263444 e!368292)))

(declare-fun isEmpty!4385 (Option!1564) Bool)

(assert (=> d!214174 (= res!263444 (isEmpty!4385 lt!259615))))

(assert (=> d!214174 (= lt!259615 e!368291)))

(declare-fun c!112573 () Bool)

(assert (=> d!214174 (= c!112573 (and ((_ is Cons!6074) rules!3103) ((_ is Nil!6074) (t!80661 rules!3103))))))

(declare-fun lt!259618 () Unit!11088)

(declare-fun lt!259619 () Unit!11088)

(assert (=> d!214174 (= lt!259618 lt!259619)))

(assert (=> d!214174 (isPrefix!841 input!2705 input!2705)))

(assert (=> d!214174 (= lt!259619 (lemmaIsPrefixRefl!577 input!2705 input!2705))))

(declare-fun rulesValidInductive!455 (LexerInterface!1099 List!6084) Bool)

(assert (=> d!214174 (rulesValidInductive!455 thiss!22590 rules!3103)))

(assert (=> d!214174 (= (maxPrefix!797 thiss!22590 rules!3103 input!2705) lt!259615)))

(declare-fun b!607701 () Bool)

(declare-fun res!263440 () Bool)

(assert (=> b!607701 (=> (not res!263440) (not e!368290))))

(assert (=> b!607701 (= res!263440 (= (++!1701 (list!2554 (charsOf!842 (_1!3738 (get!2334 lt!259615)))) (_2!3738 (get!2334 lt!259615))) input!2705))))

(declare-fun b!607702 () Bool)

(assert (=> b!607702 (= e!368290 (contains!1429 rules!3103 (rule!1997 (_1!3738 (get!2334 lt!259615)))))))

(declare-fun b!607703 () Bool)

(declare-fun res!263441 () Bool)

(assert (=> b!607703 (=> (not res!263441) (not e!368290))))

(assert (=> b!607703 (= res!263441 (< (size!4779 (_2!3738 (get!2334 lt!259615))) (size!4779 input!2705)))))

(declare-fun b!607704 () Bool)

(assert (=> b!607704 (= e!368291 call!40798)))

(declare-fun b!607705 () Bool)

(assert (=> b!607705 (= e!368292 e!368290)))

(declare-fun res!263439 () Bool)

(assert (=> b!607705 (=> (not res!263439) (not e!368290))))

(assert (=> b!607705 (= res!263439 (isDefined!1375 lt!259615))))

(declare-fun bm!40793 () Bool)

(assert (=> bm!40793 (= call!40798 (maxPrefixOneRule!460 thiss!22590 (h!11475 rules!3103) input!2705))))

(declare-fun b!607706 () Bool)

(declare-fun res!263443 () Bool)

(assert (=> b!607706 (=> (not res!263443) (not e!368290))))

(assert (=> b!607706 (= res!263443 (= (value!39437 (_1!3738 (get!2334 lt!259615))) (apply!1466 (transformation!1213 (rule!1997 (_1!3738 (get!2334 lt!259615)))) (seqFromList!1389 (originalCharacters!1252 (_1!3738 (get!2334 lt!259615)))))))))

(assert (= (and d!214174 c!112573) b!607704))

(assert (= (and d!214174 (not c!112573)) b!607700))

(assert (= (or b!607704 b!607700) bm!40793))

(assert (= (and d!214174 (not res!263444)) b!607705))

(assert (= (and b!607705 res!263439) b!607699))

(assert (= (and b!607699 res!263442) b!607703))

(assert (= (and b!607703 res!263441) b!607701))

(assert (= (and b!607701 res!263440) b!607706))

(assert (= (and b!607706 res!263443) b!607698))

(assert (= (and b!607698 res!263445) b!607702))

(declare-fun m!874697 () Bool)

(assert (=> b!607705 m!874697))

(declare-fun m!874699 () Bool)

(assert (=> b!607701 m!874699))

(declare-fun m!874701 () Bool)

(assert (=> b!607701 m!874701))

(assert (=> b!607701 m!874701))

(declare-fun m!874703 () Bool)

(assert (=> b!607701 m!874703))

(assert (=> b!607701 m!874703))

(declare-fun m!874705 () Bool)

(assert (=> b!607701 m!874705))

(declare-fun m!874707 () Bool)

(assert (=> b!607700 m!874707))

(assert (=> b!607699 m!874699))

(assert (=> b!607699 m!874701))

(assert (=> b!607699 m!874701))

(assert (=> b!607699 m!874703))

(assert (=> b!607706 m!874699))

(declare-fun m!874709 () Bool)

(assert (=> b!607706 m!874709))

(assert (=> b!607706 m!874709))

(declare-fun m!874711 () Bool)

(assert (=> b!607706 m!874711))

(assert (=> b!607702 m!874699))

(declare-fun m!874713 () Bool)

(assert (=> b!607702 m!874713))

(assert (=> b!607698 m!874699))

(assert (=> b!607698 m!874701))

(assert (=> b!607698 m!874701))

(assert (=> b!607698 m!874703))

(assert (=> b!607698 m!874703))

(declare-fun m!874715 () Bool)

(assert (=> b!607698 m!874715))

(declare-fun m!874717 () Bool)

(assert (=> d!214174 m!874717))

(assert (=> d!214174 m!874625))

(assert (=> d!214174 m!874623))

(declare-fun m!874719 () Bool)

(assert (=> d!214174 m!874719))

(declare-fun m!874721 () Bool)

(assert (=> bm!40793 m!874721))

(assert (=> b!607703 m!874699))

(declare-fun m!874723 () Bool)

(assert (=> b!607703 m!874723))

(declare-fun m!874725 () Bool)

(assert (=> b!607703 m!874725))

(assert (=> b!607668 d!214174))

(declare-fun b!607743 () Bool)

(declare-fun e!368313 () Option!1564)

(assert (=> b!607743 (= e!368313 None!1563)))

(declare-fun d!214176 () Bool)

(declare-fun e!368310 () Bool)

(assert (=> d!214176 e!368310))

(declare-fun res!263476 () Bool)

(assert (=> d!214176 (=> res!263476 e!368310)))

(declare-fun lt!259638 () Option!1564)

(assert (=> d!214176 (= res!263476 (isEmpty!4385 lt!259638))))

(assert (=> d!214176 (= lt!259638 e!368313)))

(declare-fun c!112582 () Bool)

(declare-datatypes ((tuple2!6950 0))(
  ( (tuple2!6951 (_1!3739 List!6083) (_2!3739 List!6083)) )
))
(declare-fun lt!259639 () tuple2!6950)

(assert (=> d!214176 (= c!112582 (isEmpty!4383 (_1!3739 lt!259639)))))

(declare-fun findLongestMatch!183 (Regex!1547 List!6083) tuple2!6950)

(assert (=> d!214176 (= lt!259639 (findLongestMatch!183 (regex!1213 (rule!1997 token!491)) lt!259590))))

(assert (=> d!214176 (ruleValid!411 thiss!22590 (rule!1997 token!491))))

(assert (=> d!214176 (= (maxPrefixOneRule!460 thiss!22590 (rule!1997 token!491) lt!259590) lt!259638)))

(declare-fun b!607744 () Bool)

(declare-fun res!263475 () Bool)

(declare-fun e!368311 () Bool)

(assert (=> b!607744 (=> (not res!263475) (not e!368311))))

(assert (=> b!607744 (= res!263475 (< (size!4779 (_2!3738 (get!2334 lt!259638))) (size!4779 lt!259590)))))

(declare-fun b!607745 () Bool)

(declare-fun size!4780 (BalanceConc!3868) Int)

(assert (=> b!607745 (= e!368313 (Some!1563 (tuple2!6949 (Token!2163 (apply!1466 (transformation!1213 (rule!1997 token!491)) (seqFromList!1389 (_1!3739 lt!259639))) (rule!1997 token!491) (size!4780 (seqFromList!1389 (_1!3739 lt!259639))) (_1!3739 lt!259639)) (_2!3739 lt!259639))))))

(declare-fun lt!259636 () Unit!11088)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!188 (Regex!1547 List!6083) Unit!11088)

(assert (=> b!607745 (= lt!259636 (longestMatchIsAcceptedByMatchOrIsEmpty!188 (regex!1213 (rule!1997 token!491)) lt!259590))))

(declare-fun res!263473 () Bool)

(declare-fun findLongestMatchInner!204 (Regex!1547 List!6083 Int List!6083 List!6083 Int) tuple2!6950)

(assert (=> b!607745 (= res!263473 (isEmpty!4383 (_1!3739 (findLongestMatchInner!204 (regex!1213 (rule!1997 token!491)) Nil!6073 (size!4779 Nil!6073) lt!259590 lt!259590 (size!4779 lt!259590)))))))

(declare-fun e!368312 () Bool)

(assert (=> b!607745 (=> res!263473 e!368312)))

(assert (=> b!607745 e!368312))

(declare-fun lt!259640 () Unit!11088)

(assert (=> b!607745 (= lt!259640 lt!259636)))

(declare-fun lt!259637 () Unit!11088)

(declare-fun lemmaSemiInverse!243 (TokenValueInjection!2242 BalanceConc!3868) Unit!11088)

(assert (=> b!607745 (= lt!259637 (lemmaSemiInverse!243 (transformation!1213 (rule!1997 token!491)) (seqFromList!1389 (_1!3739 lt!259639))))))

(declare-fun b!607746 () Bool)

(assert (=> b!607746 (= e!368311 (= (size!4778 (_1!3738 (get!2334 lt!259638))) (size!4779 (originalCharacters!1252 (_1!3738 (get!2334 lt!259638))))))))

(declare-fun b!607747 () Bool)

(assert (=> b!607747 (= e!368310 e!368311)))

(declare-fun res!263472 () Bool)

(assert (=> b!607747 (=> (not res!263472) (not e!368311))))

(assert (=> b!607747 (= res!263472 (matchR!650 (regex!1213 (rule!1997 token!491)) (list!2554 (charsOf!842 (_1!3738 (get!2334 lt!259638))))))))

(declare-fun b!607748 () Bool)

(assert (=> b!607748 (= e!368312 (matchR!650 (regex!1213 (rule!1997 token!491)) (_1!3739 (findLongestMatchInner!204 (regex!1213 (rule!1997 token!491)) Nil!6073 (size!4779 Nil!6073) lt!259590 lt!259590 (size!4779 lt!259590)))))))

(declare-fun b!607749 () Bool)

(declare-fun res!263474 () Bool)

(assert (=> b!607749 (=> (not res!263474) (not e!368311))))

(assert (=> b!607749 (= res!263474 (= (value!39437 (_1!3738 (get!2334 lt!259638))) (apply!1466 (transformation!1213 (rule!1997 (_1!3738 (get!2334 lt!259638)))) (seqFromList!1389 (originalCharacters!1252 (_1!3738 (get!2334 lt!259638)))))))))

(declare-fun b!607750 () Bool)

(declare-fun res!263471 () Bool)

(assert (=> b!607750 (=> (not res!263471) (not e!368311))))

(assert (=> b!607750 (= res!263471 (= (rule!1997 (_1!3738 (get!2334 lt!259638))) (rule!1997 token!491)))))

(declare-fun b!607751 () Bool)

(declare-fun res!263470 () Bool)

(assert (=> b!607751 (=> (not res!263470) (not e!368311))))

(assert (=> b!607751 (= res!263470 (= (++!1701 (list!2554 (charsOf!842 (_1!3738 (get!2334 lt!259638)))) (_2!3738 (get!2334 lt!259638))) lt!259590))))

(assert (= (and d!214176 c!112582) b!607743))

(assert (= (and d!214176 (not c!112582)) b!607745))

(assert (= (and b!607745 (not res!263473)) b!607748))

(assert (= (and d!214176 (not res!263476)) b!607747))

(assert (= (and b!607747 res!263472) b!607751))

(assert (= (and b!607751 res!263470) b!607744))

(assert (= (and b!607744 res!263475) b!607750))

(assert (= (and b!607750 res!263471) b!607749))

(assert (= (and b!607749 res!263474) b!607746))

(declare-fun m!874743 () Bool)

(assert (=> b!607749 m!874743))

(declare-fun m!874745 () Bool)

(assert (=> b!607749 m!874745))

(assert (=> b!607749 m!874745))

(declare-fun m!874747 () Bool)

(assert (=> b!607749 m!874747))

(declare-fun m!874749 () Bool)

(assert (=> d!214176 m!874749))

(declare-fun m!874751 () Bool)

(assert (=> d!214176 m!874751))

(declare-fun m!874753 () Bool)

(assert (=> d!214176 m!874753))

(assert (=> d!214176 m!874603))

(declare-fun m!874755 () Bool)

(assert (=> b!607748 m!874755))

(declare-fun m!874757 () Bool)

(assert (=> b!607748 m!874757))

(assert (=> b!607748 m!874755))

(assert (=> b!607748 m!874757))

(declare-fun m!874759 () Bool)

(assert (=> b!607748 m!874759))

(declare-fun m!874761 () Bool)

(assert (=> b!607748 m!874761))

(assert (=> b!607747 m!874743))

(declare-fun m!874763 () Bool)

(assert (=> b!607747 m!874763))

(assert (=> b!607747 m!874763))

(declare-fun m!874765 () Bool)

(assert (=> b!607747 m!874765))

(assert (=> b!607747 m!874765))

(declare-fun m!874767 () Bool)

(assert (=> b!607747 m!874767))

(assert (=> b!607746 m!874743))

(declare-fun m!874769 () Bool)

(assert (=> b!607746 m!874769))

(assert (=> b!607744 m!874743))

(declare-fun m!874771 () Bool)

(assert (=> b!607744 m!874771))

(assert (=> b!607744 m!874757))

(assert (=> b!607751 m!874743))

(assert (=> b!607751 m!874763))

(assert (=> b!607751 m!874763))

(assert (=> b!607751 m!874765))

(assert (=> b!607751 m!874765))

(declare-fun m!874773 () Bool)

(assert (=> b!607751 m!874773))

(declare-fun m!874775 () Bool)

(assert (=> b!607745 m!874775))

(assert (=> b!607745 m!874775))

(declare-fun m!874777 () Bool)

(assert (=> b!607745 m!874777))

(assert (=> b!607745 m!874757))

(declare-fun m!874779 () Bool)

(assert (=> b!607745 m!874779))

(declare-fun m!874781 () Bool)

(assert (=> b!607745 m!874781))

(assert (=> b!607745 m!874755))

(assert (=> b!607745 m!874755))

(assert (=> b!607745 m!874757))

(assert (=> b!607745 m!874759))

(assert (=> b!607745 m!874775))

(declare-fun m!874783 () Bool)

(assert (=> b!607745 m!874783))

(assert (=> b!607745 m!874775))

(declare-fun m!874785 () Bool)

(assert (=> b!607745 m!874785))

(assert (=> b!607750 m!874743))

(assert (=> b!607646 d!214176))

(declare-fun d!214186 () Bool)

(declare-fun lt!259643 () List!6083)

(assert (=> d!214186 (= (++!1701 lt!259575 lt!259643) lt!259590)))

(declare-fun e!368316 () List!6083)

(assert (=> d!214186 (= lt!259643 e!368316)))

(declare-fun c!112585 () Bool)

(assert (=> d!214186 (= c!112585 ((_ is Cons!6073) lt!259575))))

(assert (=> d!214186 (>= (size!4779 lt!259590) (size!4779 lt!259575))))

(assert (=> d!214186 (= (getSuffix!358 lt!259590 lt!259575) lt!259643)))

(declare-fun b!607756 () Bool)

(declare-fun tail!814 (List!6083) List!6083)

(assert (=> b!607756 (= e!368316 (getSuffix!358 (tail!814 lt!259590) (t!80660 lt!259575)))))

(declare-fun b!607757 () Bool)

(assert (=> b!607757 (= e!368316 lt!259590)))

(assert (= (and d!214186 c!112585) b!607756))

(assert (= (and d!214186 (not c!112585)) b!607757))

(declare-fun m!874787 () Bool)

(assert (=> d!214186 m!874787))

(assert (=> d!214186 m!874757))

(assert (=> d!214186 m!874609))

(declare-fun m!874789 () Bool)

(assert (=> b!607756 m!874789))

(assert (=> b!607756 m!874789))

(declare-fun m!874791 () Bool)

(assert (=> b!607756 m!874791))

(assert (=> b!607646 d!214186))

(declare-fun d!214188 () Bool)

(declare-fun fromListB!613 (List!6083) BalanceConc!3868)

(assert (=> d!214188 (= (seqFromList!1389 lt!259575) (fromListB!613 lt!259575))))

(declare-fun bs!71413 () Bool)

(assert (= bs!71413 d!214188))

(declare-fun m!874793 () Bool)

(assert (=> bs!71413 m!874793))

(assert (=> b!607646 d!214188))

(declare-fun d!214190 () Bool)

(declare-fun dynLambda!3523 (Int BalanceConc!3868) TokenValue!1237)

(assert (=> d!214190 (= (apply!1466 (transformation!1213 (rule!1997 token!491)) (seqFromList!1389 lt!259575)) (dynLambda!3523 (toValue!2120 (transformation!1213 (rule!1997 token!491))) (seqFromList!1389 lt!259575)))))

(declare-fun b_lambda!24081 () Bool)

(assert (=> (not b_lambda!24081) (not d!214190)))

(declare-fun t!80663 () Bool)

(declare-fun tb!53107 () Bool)

(assert (=> (and b!607650 (= (toValue!2120 (transformation!1213 (h!11475 rules!3103))) (toValue!2120 (transformation!1213 (rule!1997 token!491)))) t!80663) tb!53107))

(declare-fun result!59766 () Bool)

(assert (=> tb!53107 (= result!59766 (inv!21 (dynLambda!3523 (toValue!2120 (transformation!1213 (rule!1997 token!491))) (seqFromList!1389 lt!259575))))))

(declare-fun m!874795 () Bool)

(assert (=> tb!53107 m!874795))

(assert (=> d!214190 t!80663))

(declare-fun b_and!60175 () Bool)

(assert (= b_and!60167 (and (=> t!80663 result!59766) b_and!60175)))

(declare-fun t!80665 () Bool)

(declare-fun tb!53109 () Bool)

(assert (=> (and b!607670 (= (toValue!2120 (transformation!1213 (rule!1997 token!491))) (toValue!2120 (transformation!1213 (rule!1997 token!491)))) t!80665) tb!53109))

(declare-fun result!59770 () Bool)

(assert (= result!59770 result!59766))

(assert (=> d!214190 t!80665))

(declare-fun b_and!60177 () Bool)

(assert (= b_and!60171 (and (=> t!80665 result!59770) b_and!60177)))

(assert (=> d!214190 m!874579))

(declare-fun m!874797 () Bool)

(assert (=> d!214190 m!874797))

(assert (=> b!607646 d!214190))

(declare-fun d!214192 () Bool)

(assert (=> d!214192 (= (maxPrefixOneRule!460 thiss!22590 (rule!1997 (_1!3738 (v!16466 lt!259602))) input!2705) (Some!1563 (tuple2!6949 (Token!2163 (apply!1466 (transformation!1213 (rule!1997 (_1!3738 (v!16466 lt!259602)))) (seqFromList!1389 lt!259584)) (rule!1997 (_1!3738 (v!16466 lt!259602))) (size!4779 lt!259584) lt!259584) (_2!3738 (v!16466 lt!259602)))))))

(declare-fun lt!259656 () Unit!11088)

(declare-fun choose!4454 (LexerInterface!1099 List!6084 List!6083 List!6083 List!6083 Rule!2226) Unit!11088)

(assert (=> d!214192 (= lt!259656 (choose!4454 thiss!22590 rules!3103 lt!259584 input!2705 (_2!3738 (v!16466 lt!259602)) (rule!1997 (_1!3738 (v!16466 lt!259602)))))))

(assert (=> d!214192 (not (isEmpty!4384 rules!3103))))

(assert (=> d!214192 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!166 thiss!22590 rules!3103 lt!259584 input!2705 (_2!3738 (v!16466 lt!259602)) (rule!1997 (_1!3738 (v!16466 lt!259602)))) lt!259656)))

(declare-fun bs!71414 () Bool)

(assert (= bs!71414 d!214192))

(assert (=> bs!71414 m!874587))

(assert (=> bs!71414 m!874619))

(assert (=> bs!71414 m!874641))

(assert (=> bs!71414 m!874659))

(assert (=> bs!71414 m!874619))

(assert (=> bs!71414 m!874645))

(declare-fun m!874799 () Bool)

(assert (=> bs!71414 m!874799))

(assert (=> b!607646 d!214192))

(declare-fun d!214194 () Bool)

(assert (=> d!214194 (= (maxPrefixOneRule!460 thiss!22590 (rule!1997 token!491) lt!259590) (Some!1563 (tuple2!6949 (Token!2163 (apply!1466 (transformation!1213 (rule!1997 token!491)) (seqFromList!1389 lt!259575)) (rule!1997 token!491) (size!4779 lt!259575) lt!259575) suffix!1342)))))

(declare-fun lt!259657 () Unit!11088)

(assert (=> d!214194 (= lt!259657 (choose!4454 thiss!22590 rules!3103 lt!259575 lt!259590 suffix!1342 (rule!1997 token!491)))))

(assert (=> d!214194 (not (isEmpty!4384 rules!3103))))

(assert (=> d!214194 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!166 thiss!22590 rules!3103 lt!259575 lt!259590 suffix!1342 (rule!1997 token!491)) lt!259657)))

(declare-fun bs!71415 () Bool)

(assert (= bs!71415 d!214194))

(assert (=> bs!71415 m!874589))

(assert (=> bs!71415 m!874579))

(assert (=> bs!71415 m!874581))

(assert (=> bs!71415 m!874659))

(assert (=> bs!71415 m!874579))

(assert (=> bs!71415 m!874609))

(declare-fun m!874801 () Bool)

(assert (=> bs!71415 m!874801))

(assert (=> b!607646 d!214194))

(declare-fun d!214196 () Bool)

(assert (=> d!214196 (= suffix!1342 lt!259599)))

(declare-fun lt!259660 () Unit!11088)

(declare-fun choose!4455 (List!6083 List!6083 List!6083 List!6083 List!6083) Unit!11088)

(assert (=> d!214196 (= lt!259660 (choose!4455 lt!259575 suffix!1342 lt!259575 lt!259599 lt!259590))))

(assert (=> d!214196 (isPrefix!841 lt!259575 lt!259590)))

(assert (=> d!214196 (= (lemmaSamePrefixThenSameSuffix!554 lt!259575 suffix!1342 lt!259575 lt!259599 lt!259590) lt!259660)))

(declare-fun bs!71416 () Bool)

(assert (= bs!71416 d!214196))

(declare-fun m!874803 () Bool)

(assert (=> bs!71416 m!874803))

(declare-fun m!874805 () Bool)

(assert (=> bs!71416 m!874805))

(assert (=> b!607646 d!214196))

(declare-fun b!607778 () Bool)

(declare-fun e!368329 () Option!1564)

(assert (=> b!607778 (= e!368329 None!1563)))

(declare-fun d!214198 () Bool)

(declare-fun e!368326 () Bool)

(assert (=> d!214198 e!368326))

(declare-fun res!263497 () Bool)

(assert (=> d!214198 (=> res!263497 e!368326)))

(declare-fun lt!259663 () Option!1564)

(assert (=> d!214198 (= res!263497 (isEmpty!4385 lt!259663))))

(assert (=> d!214198 (= lt!259663 e!368329)))

(declare-fun c!112588 () Bool)

(declare-fun lt!259664 () tuple2!6950)

(assert (=> d!214198 (= c!112588 (isEmpty!4383 (_1!3739 lt!259664)))))

(assert (=> d!214198 (= lt!259664 (findLongestMatch!183 (regex!1213 (rule!1997 (_1!3738 (v!16466 lt!259602)))) input!2705))))

(assert (=> d!214198 (ruleValid!411 thiss!22590 (rule!1997 (_1!3738 (v!16466 lt!259602))))))

(assert (=> d!214198 (= (maxPrefixOneRule!460 thiss!22590 (rule!1997 (_1!3738 (v!16466 lt!259602))) input!2705) lt!259663)))

(declare-fun b!607779 () Bool)

(declare-fun res!263496 () Bool)

(declare-fun e!368327 () Bool)

(assert (=> b!607779 (=> (not res!263496) (not e!368327))))

(assert (=> b!607779 (= res!263496 (< (size!4779 (_2!3738 (get!2334 lt!259663))) (size!4779 input!2705)))))

(declare-fun b!607780 () Bool)

(assert (=> b!607780 (= e!368329 (Some!1563 (tuple2!6949 (Token!2163 (apply!1466 (transformation!1213 (rule!1997 (_1!3738 (v!16466 lt!259602)))) (seqFromList!1389 (_1!3739 lt!259664))) (rule!1997 (_1!3738 (v!16466 lt!259602))) (size!4780 (seqFromList!1389 (_1!3739 lt!259664))) (_1!3739 lt!259664)) (_2!3739 lt!259664))))))

(declare-fun lt!259661 () Unit!11088)

(assert (=> b!607780 (= lt!259661 (longestMatchIsAcceptedByMatchOrIsEmpty!188 (regex!1213 (rule!1997 (_1!3738 (v!16466 lt!259602)))) input!2705))))

(declare-fun res!263494 () Bool)

(assert (=> b!607780 (= res!263494 (isEmpty!4383 (_1!3739 (findLongestMatchInner!204 (regex!1213 (rule!1997 (_1!3738 (v!16466 lt!259602)))) Nil!6073 (size!4779 Nil!6073) input!2705 input!2705 (size!4779 input!2705)))))))

(declare-fun e!368328 () Bool)

(assert (=> b!607780 (=> res!263494 e!368328)))

(assert (=> b!607780 e!368328))

(declare-fun lt!259665 () Unit!11088)

(assert (=> b!607780 (= lt!259665 lt!259661)))

(declare-fun lt!259662 () Unit!11088)

(assert (=> b!607780 (= lt!259662 (lemmaSemiInverse!243 (transformation!1213 (rule!1997 (_1!3738 (v!16466 lt!259602)))) (seqFromList!1389 (_1!3739 lt!259664))))))

(declare-fun b!607781 () Bool)

(assert (=> b!607781 (= e!368327 (= (size!4778 (_1!3738 (get!2334 lt!259663))) (size!4779 (originalCharacters!1252 (_1!3738 (get!2334 lt!259663))))))))

(declare-fun b!607782 () Bool)

(assert (=> b!607782 (= e!368326 e!368327)))

(declare-fun res!263493 () Bool)

(assert (=> b!607782 (=> (not res!263493) (not e!368327))))

(assert (=> b!607782 (= res!263493 (matchR!650 (regex!1213 (rule!1997 (_1!3738 (v!16466 lt!259602)))) (list!2554 (charsOf!842 (_1!3738 (get!2334 lt!259663))))))))

(declare-fun b!607783 () Bool)

(assert (=> b!607783 (= e!368328 (matchR!650 (regex!1213 (rule!1997 (_1!3738 (v!16466 lt!259602)))) (_1!3739 (findLongestMatchInner!204 (regex!1213 (rule!1997 (_1!3738 (v!16466 lt!259602)))) Nil!6073 (size!4779 Nil!6073) input!2705 input!2705 (size!4779 input!2705)))))))

(declare-fun b!607784 () Bool)

(declare-fun res!263495 () Bool)

(assert (=> b!607784 (=> (not res!263495) (not e!368327))))

(assert (=> b!607784 (= res!263495 (= (value!39437 (_1!3738 (get!2334 lt!259663))) (apply!1466 (transformation!1213 (rule!1997 (_1!3738 (get!2334 lt!259663)))) (seqFromList!1389 (originalCharacters!1252 (_1!3738 (get!2334 lt!259663)))))))))

(declare-fun b!607785 () Bool)

(declare-fun res!263492 () Bool)

(assert (=> b!607785 (=> (not res!263492) (not e!368327))))

(assert (=> b!607785 (= res!263492 (= (rule!1997 (_1!3738 (get!2334 lt!259663))) (rule!1997 (_1!3738 (v!16466 lt!259602)))))))

(declare-fun b!607786 () Bool)

(declare-fun res!263491 () Bool)

(assert (=> b!607786 (=> (not res!263491) (not e!368327))))

(assert (=> b!607786 (= res!263491 (= (++!1701 (list!2554 (charsOf!842 (_1!3738 (get!2334 lt!259663)))) (_2!3738 (get!2334 lt!259663))) input!2705))))

(assert (= (and d!214198 c!112588) b!607778))

(assert (= (and d!214198 (not c!112588)) b!607780))

(assert (= (and b!607780 (not res!263494)) b!607783))

(assert (= (and d!214198 (not res!263497)) b!607782))

(assert (= (and b!607782 res!263493) b!607786))

(assert (= (and b!607786 res!263491) b!607779))

(assert (= (and b!607779 res!263496) b!607785))

(assert (= (and b!607785 res!263492) b!607784))

(assert (= (and b!607784 res!263495) b!607781))

(declare-fun m!874807 () Bool)

(assert (=> b!607784 m!874807))

(declare-fun m!874809 () Bool)

(assert (=> b!607784 m!874809))

(assert (=> b!607784 m!874809))

(declare-fun m!874811 () Bool)

(assert (=> b!607784 m!874811))

(declare-fun m!874813 () Bool)

(assert (=> d!214198 m!874813))

(declare-fun m!874815 () Bool)

(assert (=> d!214198 m!874815))

(declare-fun m!874817 () Bool)

(assert (=> d!214198 m!874817))

(assert (=> d!214198 m!874605))

(assert (=> b!607783 m!874755))

(assert (=> b!607783 m!874725))

(assert (=> b!607783 m!874755))

(assert (=> b!607783 m!874725))

(declare-fun m!874819 () Bool)

(assert (=> b!607783 m!874819))

(declare-fun m!874821 () Bool)

(assert (=> b!607783 m!874821))

(assert (=> b!607782 m!874807))

(declare-fun m!874823 () Bool)

(assert (=> b!607782 m!874823))

(assert (=> b!607782 m!874823))

(declare-fun m!874825 () Bool)

(assert (=> b!607782 m!874825))

(assert (=> b!607782 m!874825))

(declare-fun m!874827 () Bool)

(assert (=> b!607782 m!874827))

(assert (=> b!607781 m!874807))

(declare-fun m!874829 () Bool)

(assert (=> b!607781 m!874829))

(assert (=> b!607779 m!874807))

(declare-fun m!874831 () Bool)

(assert (=> b!607779 m!874831))

(assert (=> b!607779 m!874725))

(assert (=> b!607786 m!874807))

(assert (=> b!607786 m!874823))

(assert (=> b!607786 m!874823))

(assert (=> b!607786 m!874825))

(assert (=> b!607786 m!874825))

(declare-fun m!874833 () Bool)

(assert (=> b!607786 m!874833))

(declare-fun m!874835 () Bool)

(assert (=> b!607780 m!874835))

(assert (=> b!607780 m!874835))

(declare-fun m!874837 () Bool)

(assert (=> b!607780 m!874837))

(assert (=> b!607780 m!874725))

(declare-fun m!874839 () Bool)

(assert (=> b!607780 m!874839))

(declare-fun m!874841 () Bool)

(assert (=> b!607780 m!874841))

(assert (=> b!607780 m!874755))

(assert (=> b!607780 m!874755))

(assert (=> b!607780 m!874725))

(assert (=> b!607780 m!874819))

(assert (=> b!607780 m!874835))

(declare-fun m!874843 () Bool)

(assert (=> b!607780 m!874843))

(assert (=> b!607780 m!874835))

(declare-fun m!874845 () Bool)

(assert (=> b!607780 m!874845))

(assert (=> b!607785 m!874807))

(assert (=> b!607646 d!214198))

(declare-fun d!214200 () Bool)

(assert (=> d!214200 (= (isDefined!1375 lt!259576) (not (isEmpty!4385 lt!259576)))))

(declare-fun bs!71417 () Bool)

(assert (= bs!71417 d!214200))

(declare-fun m!874847 () Bool)

(assert (=> bs!71417 m!874847))

(assert (=> b!607667 d!214200))

(declare-fun b!607796 () Bool)

(declare-fun res!263511 () Bool)

(declare-fun e!368333 () Bool)

(assert (=> b!607796 (=> (not res!263511) (not e!368333))))

(declare-fun lt!259671 () Option!1564)

(assert (=> b!607796 (= res!263511 (matchR!650 (regex!1213 (rule!1997 (_1!3738 (get!2334 lt!259671)))) (list!2554 (charsOf!842 (_1!3738 (get!2334 lt!259671))))))))

(declare-fun b!607797 () Bool)

(declare-fun res!263508 () Bool)

(assert (=> b!607797 (=> (not res!263508) (not e!368333))))

(assert (=> b!607797 (= res!263508 (= (list!2554 (charsOf!842 (_1!3738 (get!2334 lt!259671)))) (originalCharacters!1252 (_1!3738 (get!2334 lt!259671)))))))

(declare-fun b!607798 () Bool)

(declare-fun e!368334 () Option!1564)

(declare-fun lt!259672 () Option!1564)

(declare-fun lt!259673 () Option!1564)

(assert (=> b!607798 (= e!368334 (ite (and ((_ is None!1563) lt!259672) ((_ is None!1563) lt!259673)) None!1563 (ite ((_ is None!1563) lt!259673) lt!259672 (ite ((_ is None!1563) lt!259672) lt!259673 (ite (>= (size!4778 (_1!3738 (v!16466 lt!259672))) (size!4778 (_1!3738 (v!16466 lt!259673)))) lt!259672 lt!259673)))))))

(declare-fun call!40802 () Option!1564)

(assert (=> b!607798 (= lt!259672 call!40802)))

(assert (=> b!607798 (= lt!259673 (maxPrefix!797 thiss!22590 (t!80661 rules!3103) lt!259590))))

(declare-fun d!214202 () Bool)

(declare-fun e!368335 () Bool)

(assert (=> d!214202 e!368335))

(declare-fun res!263510 () Bool)

(assert (=> d!214202 (=> res!263510 e!368335)))

(assert (=> d!214202 (= res!263510 (isEmpty!4385 lt!259671))))

(assert (=> d!214202 (= lt!259671 e!368334)))

(declare-fun c!112590 () Bool)

(assert (=> d!214202 (= c!112590 (and ((_ is Cons!6074) rules!3103) ((_ is Nil!6074) (t!80661 rules!3103))))))

(declare-fun lt!259674 () Unit!11088)

(declare-fun lt!259675 () Unit!11088)

(assert (=> d!214202 (= lt!259674 lt!259675)))

(assert (=> d!214202 (isPrefix!841 lt!259590 lt!259590)))

(assert (=> d!214202 (= lt!259675 (lemmaIsPrefixRefl!577 lt!259590 lt!259590))))

(assert (=> d!214202 (rulesValidInductive!455 thiss!22590 rules!3103)))

(assert (=> d!214202 (= (maxPrefix!797 thiss!22590 rules!3103 lt!259590) lt!259671)))

(declare-fun b!607799 () Bool)

(declare-fun res!263506 () Bool)

(assert (=> b!607799 (=> (not res!263506) (not e!368333))))

(assert (=> b!607799 (= res!263506 (= (++!1701 (list!2554 (charsOf!842 (_1!3738 (get!2334 lt!259671)))) (_2!3738 (get!2334 lt!259671))) lt!259590))))

(declare-fun b!607800 () Bool)

(assert (=> b!607800 (= e!368333 (contains!1429 rules!3103 (rule!1997 (_1!3738 (get!2334 lt!259671)))))))

(declare-fun b!607801 () Bool)

(declare-fun res!263507 () Bool)

(assert (=> b!607801 (=> (not res!263507) (not e!368333))))

(assert (=> b!607801 (= res!263507 (< (size!4779 (_2!3738 (get!2334 lt!259671))) (size!4779 lt!259590)))))

(declare-fun b!607802 () Bool)

(assert (=> b!607802 (= e!368334 call!40802)))

(declare-fun b!607803 () Bool)

(assert (=> b!607803 (= e!368335 e!368333)))

(declare-fun res!263505 () Bool)

(assert (=> b!607803 (=> (not res!263505) (not e!368333))))

(assert (=> b!607803 (= res!263505 (isDefined!1375 lt!259671))))

(declare-fun bm!40797 () Bool)

(assert (=> bm!40797 (= call!40802 (maxPrefixOneRule!460 thiss!22590 (h!11475 rules!3103) lt!259590))))

(declare-fun b!607804 () Bool)

(declare-fun res!263509 () Bool)

(assert (=> b!607804 (=> (not res!263509) (not e!368333))))

(assert (=> b!607804 (= res!263509 (= (value!39437 (_1!3738 (get!2334 lt!259671))) (apply!1466 (transformation!1213 (rule!1997 (_1!3738 (get!2334 lt!259671)))) (seqFromList!1389 (originalCharacters!1252 (_1!3738 (get!2334 lt!259671)))))))))

(assert (= (and d!214202 c!112590) b!607802))

(assert (= (and d!214202 (not c!112590)) b!607798))

(assert (= (or b!607802 b!607798) bm!40797))

(assert (= (and d!214202 (not res!263510)) b!607803))

(assert (= (and b!607803 res!263505) b!607797))

(assert (= (and b!607797 res!263508) b!607801))

(assert (= (and b!607801 res!263507) b!607799))

(assert (= (and b!607799 res!263506) b!607804))

(assert (= (and b!607804 res!263509) b!607796))

(assert (= (and b!607796 res!263511) b!607800))

(declare-fun m!874883 () Bool)

(assert (=> b!607803 m!874883))

(declare-fun m!874885 () Bool)

(assert (=> b!607799 m!874885))

(declare-fun m!874887 () Bool)

(assert (=> b!607799 m!874887))

(assert (=> b!607799 m!874887))

(declare-fun m!874895 () Bool)

(assert (=> b!607799 m!874895))

(assert (=> b!607799 m!874895))

(declare-fun m!874905 () Bool)

(assert (=> b!607799 m!874905))

(declare-fun m!874907 () Bool)

(assert (=> b!607798 m!874907))

(assert (=> b!607797 m!874885))

(assert (=> b!607797 m!874887))

(assert (=> b!607797 m!874887))

(assert (=> b!607797 m!874895))

(assert (=> b!607804 m!874885))

(declare-fun m!874909 () Bool)

(assert (=> b!607804 m!874909))

(assert (=> b!607804 m!874909))

(declare-fun m!874911 () Bool)

(assert (=> b!607804 m!874911))

(assert (=> b!607800 m!874885))

(declare-fun m!874913 () Bool)

(assert (=> b!607800 m!874913))

(assert (=> b!607796 m!874885))

(assert (=> b!607796 m!874887))

(assert (=> b!607796 m!874887))

(assert (=> b!607796 m!874895))

(assert (=> b!607796 m!874895))

(declare-fun m!874915 () Bool)

(assert (=> b!607796 m!874915))

(declare-fun m!874917 () Bool)

(assert (=> d!214202 m!874917))

(declare-fun m!874919 () Bool)

(assert (=> d!214202 m!874919))

(declare-fun m!874921 () Bool)

(assert (=> d!214202 m!874921))

(assert (=> d!214202 m!874719))

(declare-fun m!874923 () Bool)

(assert (=> bm!40797 m!874923))

(assert (=> b!607801 m!874885))

(declare-fun m!874925 () Bool)

(assert (=> b!607801 m!874925))

(assert (=> b!607801 m!874757))

(assert (=> b!607667 d!214202))

(declare-fun d!214208 () Bool)

(declare-fun e!368350 () Bool)

(assert (=> d!214208 e!368350))

(declare-fun res!263527 () Bool)

(assert (=> d!214208 (=> (not res!263527) (not e!368350))))

(declare-fun lt!259679 () List!6083)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1103 (List!6083) (InoxSet C!4016))

(assert (=> d!214208 (= res!263527 (= (content!1103 lt!259679) ((_ map or) (content!1103 input!2705) (content!1103 suffix!1342))))))

(declare-fun e!368351 () List!6083)

(assert (=> d!214208 (= lt!259679 e!368351)))

(declare-fun c!112594 () Bool)

(assert (=> d!214208 (= c!112594 ((_ is Nil!6073) input!2705))))

(assert (=> d!214208 (= (++!1701 input!2705 suffix!1342) lt!259679)))

(declare-fun b!607831 () Bool)

(assert (=> b!607831 (= e!368351 suffix!1342)))

(declare-fun b!607834 () Bool)

(assert (=> b!607834 (= e!368350 (or (not (= suffix!1342 Nil!6073)) (= lt!259679 input!2705)))))

(declare-fun b!607832 () Bool)

(assert (=> b!607832 (= e!368351 (Cons!6073 (h!11474 input!2705) (++!1701 (t!80660 input!2705) suffix!1342)))))

(declare-fun b!607833 () Bool)

(declare-fun res!263526 () Bool)

(assert (=> b!607833 (=> (not res!263526) (not e!368350))))

(assert (=> b!607833 (= res!263526 (= (size!4779 lt!259679) (+ (size!4779 input!2705) (size!4779 suffix!1342))))))

(assert (= (and d!214208 c!112594) b!607831))

(assert (= (and d!214208 (not c!112594)) b!607832))

(assert (= (and d!214208 res!263527) b!607833))

(assert (= (and b!607833 res!263526) b!607834))

(declare-fun m!874949 () Bool)

(assert (=> d!214208 m!874949))

(declare-fun m!874951 () Bool)

(assert (=> d!214208 m!874951))

(declare-fun m!874953 () Bool)

(assert (=> d!214208 m!874953))

(declare-fun m!874955 () Bool)

(assert (=> b!607832 m!874955))

(declare-fun m!874957 () Bool)

(assert (=> b!607833 m!874957))

(assert (=> b!607833 m!874725))

(declare-fun m!874959 () Bool)

(assert (=> b!607833 m!874959))

(assert (=> b!607667 d!214208))

(declare-fun b!607882 () Bool)

(declare-fun res!263564 () Bool)

(declare-fun e!368383 () Bool)

(assert (=> b!607882 (=> (not res!263564) (not e!368383))))

(assert (=> b!607882 (= res!263564 (isEmpty!4383 (tail!814 input!2705)))))

(declare-fun b!607883 () Bool)

(declare-fun e!368384 () Bool)

(declare-fun e!368382 () Bool)

(assert (=> b!607883 (= e!368384 e!368382)))

(declare-fun res!263562 () Bool)

(assert (=> b!607883 (=> (not res!263562) (not e!368382))))

(declare-fun lt!259691 () Bool)

(assert (=> b!607883 (= res!263562 (not lt!259691))))

(declare-fun b!607884 () Bool)

(declare-fun e!368380 () Bool)

(declare-fun derivativeStep!329 (Regex!1547 C!4016) Regex!1547)

(declare-fun head!1285 (List!6083) C!4016)

(assert (=> b!607884 (= e!368380 (matchR!650 (derivativeStep!329 (regex!1213 (rule!1997 token!491)) (head!1285 input!2705)) (tail!814 input!2705)))))

(declare-fun b!607885 () Bool)

(assert (=> b!607885 (= e!368383 (= (head!1285 input!2705) (c!112569 (regex!1213 (rule!1997 token!491)))))))

(declare-fun d!214214 () Bool)

(declare-fun e!368385 () Bool)

(assert (=> d!214214 e!368385))

(declare-fun c!112601 () Bool)

(assert (=> d!214214 (= c!112601 ((_ is EmptyExpr!1547) (regex!1213 (rule!1997 token!491))))))

(assert (=> d!214214 (= lt!259691 e!368380)))

(declare-fun c!112603 () Bool)

(assert (=> d!214214 (= c!112603 (isEmpty!4383 input!2705))))

(declare-fun validRegex!539 (Regex!1547) Bool)

(assert (=> d!214214 (validRegex!539 (regex!1213 (rule!1997 token!491)))))

(assert (=> d!214214 (= (matchR!650 (regex!1213 (rule!1997 token!491)) input!2705) lt!259691)))

(declare-fun b!607886 () Bool)

(declare-fun call!40805 () Bool)

(assert (=> b!607886 (= e!368385 (= lt!259691 call!40805))))

(declare-fun bm!40800 () Bool)

(assert (=> bm!40800 (= call!40805 (isEmpty!4383 input!2705))))

(declare-fun b!607887 () Bool)

(declare-fun res!263566 () Bool)

(assert (=> b!607887 (=> res!263566 e!368384)))

(assert (=> b!607887 (= res!263566 (not ((_ is ElementMatch!1547) (regex!1213 (rule!1997 token!491)))))))

(declare-fun e!368381 () Bool)

(assert (=> b!607887 (= e!368381 e!368384)))

(declare-fun b!607888 () Bool)

(declare-fun e!368379 () Bool)

(assert (=> b!607888 (= e!368382 e!368379)))

(declare-fun res!263568 () Bool)

(assert (=> b!607888 (=> res!263568 e!368379)))

(assert (=> b!607888 (= res!263568 call!40805)))

(declare-fun b!607889 () Bool)

(declare-fun res!263563 () Bool)

(assert (=> b!607889 (=> res!263563 e!368384)))

(assert (=> b!607889 (= res!263563 e!368383)))

(declare-fun res!263569 () Bool)

(assert (=> b!607889 (=> (not res!263569) (not e!368383))))

(assert (=> b!607889 (= res!263569 lt!259691)))

(declare-fun b!607890 () Bool)

(assert (=> b!607890 (= e!368379 (not (= (head!1285 input!2705) (c!112569 (regex!1213 (rule!1997 token!491))))))))

(declare-fun b!607891 () Bool)

(declare-fun nullable!444 (Regex!1547) Bool)

(assert (=> b!607891 (= e!368380 (nullable!444 (regex!1213 (rule!1997 token!491))))))

(declare-fun b!607892 () Bool)

(assert (=> b!607892 (= e!368381 (not lt!259691))))

(declare-fun b!607893 () Bool)

(assert (=> b!607893 (= e!368385 e!368381)))

(declare-fun c!112602 () Bool)

(assert (=> b!607893 (= c!112602 ((_ is EmptyLang!1547) (regex!1213 (rule!1997 token!491))))))

(declare-fun b!607894 () Bool)

(declare-fun res!263567 () Bool)

(assert (=> b!607894 (=> res!263567 e!368379)))

(assert (=> b!607894 (= res!263567 (not (isEmpty!4383 (tail!814 input!2705))))))

(declare-fun b!607895 () Bool)

(declare-fun res!263565 () Bool)

(assert (=> b!607895 (=> (not res!263565) (not e!368383))))

(assert (=> b!607895 (= res!263565 (not call!40805))))

(assert (= (and d!214214 c!112603) b!607891))

(assert (= (and d!214214 (not c!112603)) b!607884))

(assert (= (and d!214214 c!112601) b!607886))

(assert (= (and d!214214 (not c!112601)) b!607893))

(assert (= (and b!607893 c!112602) b!607892))

(assert (= (and b!607893 (not c!112602)) b!607887))

(assert (= (and b!607887 (not res!263566)) b!607889))

(assert (= (and b!607889 res!263569) b!607895))

(assert (= (and b!607895 res!263565) b!607882))

(assert (= (and b!607882 res!263564) b!607885))

(assert (= (and b!607889 (not res!263563)) b!607883))

(assert (= (and b!607883 res!263562) b!607888))

(assert (= (and b!607888 (not res!263568)) b!607894))

(assert (= (and b!607894 (not res!263567)) b!607890))

(assert (= (or b!607886 b!607888 b!607895) bm!40800))

(assert (=> d!214214 m!874657))

(declare-fun m!874991 () Bool)

(assert (=> d!214214 m!874991))

(declare-fun m!874993 () Bool)

(assert (=> b!607891 m!874993))

(declare-fun m!874995 () Bool)

(assert (=> b!607884 m!874995))

(assert (=> b!607884 m!874995))

(declare-fun m!874997 () Bool)

(assert (=> b!607884 m!874997))

(declare-fun m!874999 () Bool)

(assert (=> b!607884 m!874999))

(assert (=> b!607884 m!874997))

(assert (=> b!607884 m!874999))

(declare-fun m!875001 () Bool)

(assert (=> b!607884 m!875001))

(assert (=> b!607894 m!874999))

(assert (=> b!607894 m!874999))

(declare-fun m!875003 () Bool)

(assert (=> b!607894 m!875003))

(assert (=> b!607890 m!874995))

(assert (=> b!607882 m!874999))

(assert (=> b!607882 m!874999))

(assert (=> b!607882 m!875003))

(assert (=> b!607885 m!874995))

(assert (=> bm!40800 m!874657))

(assert (=> b!607671 d!214214))

(declare-fun d!214226 () Bool)

(declare-fun e!368387 () Bool)

(assert (=> d!214226 e!368387))

(declare-fun res!263571 () Bool)

(assert (=> d!214226 (=> (not res!263571) (not e!368387))))

(declare-fun lt!259693 () List!6083)

(assert (=> d!214226 (= res!263571 (= (content!1103 lt!259693) ((_ map or) (content!1103 lt!259584) (content!1103 lt!259600))))))

(declare-fun e!368388 () List!6083)

(assert (=> d!214226 (= lt!259693 e!368388)))

(declare-fun c!112605 () Bool)

(assert (=> d!214226 (= c!112605 ((_ is Nil!6073) lt!259584))))

(assert (=> d!214226 (= (++!1701 lt!259584 lt!259600) lt!259693)))

(declare-fun b!607898 () Bool)

(assert (=> b!607898 (= e!368388 lt!259600)))

(declare-fun b!607901 () Bool)

(assert (=> b!607901 (= e!368387 (or (not (= lt!259600 Nil!6073)) (= lt!259693 lt!259584)))))

(declare-fun b!607899 () Bool)

(assert (=> b!607899 (= e!368388 (Cons!6073 (h!11474 lt!259584) (++!1701 (t!80660 lt!259584) lt!259600)))))

(declare-fun b!607900 () Bool)

(declare-fun res!263570 () Bool)

(assert (=> b!607900 (=> (not res!263570) (not e!368387))))

(assert (=> b!607900 (= res!263570 (= (size!4779 lt!259693) (+ (size!4779 lt!259584) (size!4779 lt!259600))))))

(assert (= (and d!214226 c!112605) b!607898))

(assert (= (and d!214226 (not c!112605)) b!607899))

(assert (= (and d!214226 res!263571) b!607900))

(assert (= (and b!607900 res!263570) b!607901))

(declare-fun m!875005 () Bool)

(assert (=> d!214226 m!875005))

(declare-fun m!875007 () Bool)

(assert (=> d!214226 m!875007))

(declare-fun m!875009 () Bool)

(assert (=> d!214226 m!875009))

(declare-fun m!875011 () Bool)

(assert (=> b!607899 m!875011))

(declare-fun m!875013 () Bool)

(assert (=> b!607900 m!875013))

(assert (=> b!607900 m!874645))

(declare-fun m!875015 () Bool)

(assert (=> b!607900 m!875015))

(assert (=> b!607663 d!214226))

(declare-fun d!214228 () Bool)

(assert (=> d!214228 (= (inv!7721 (tag!1475 (h!11475 rules!3103))) (= (mod (str.len (value!39411 (tag!1475 (h!11475 rules!3103)))) 2) 0))))

(assert (=> b!607666 d!214228))

(declare-fun d!214234 () Bool)

(declare-fun res!263584 () Bool)

(declare-fun e!368403 () Bool)

(assert (=> d!214234 (=> (not res!263584) (not e!368403))))

(declare-fun semiInverseModEq!486 (Int Int) Bool)

(assert (=> d!214234 (= res!263584 (semiInverseModEq!486 (toChars!1979 (transformation!1213 (h!11475 rules!3103))) (toValue!2120 (transformation!1213 (h!11475 rules!3103)))))))

(assert (=> d!214234 (= (inv!7724 (transformation!1213 (h!11475 rules!3103))) e!368403)))

(declare-fun b!607920 () Bool)

(declare-fun equivClasses!469 (Int Int) Bool)

(assert (=> b!607920 (= e!368403 (equivClasses!469 (toChars!1979 (transformation!1213 (h!11475 rules!3103))) (toValue!2120 (transformation!1213 (h!11475 rules!3103)))))))

(assert (= (and d!214234 res!263584) b!607920))

(declare-fun m!875047 () Bool)

(assert (=> d!214234 m!875047))

(declare-fun m!875049 () Bool)

(assert (=> b!607920 m!875049))

(assert (=> b!607666 d!214234))

(declare-fun d!214244 () Bool)

(declare-fun lt!259700 () Bool)

(declare-fun content!1105 (List!6084) (InoxSet Rule!2226))

(assert (=> d!214244 (= lt!259700 (select (content!1105 rules!3103) (rule!1997 token!491)))))

(declare-fun e!368411 () Bool)

(assert (=> d!214244 (= lt!259700 e!368411)))

(declare-fun res!263591 () Bool)

(assert (=> d!214244 (=> (not res!263591) (not e!368411))))

(assert (=> d!214244 (= res!263591 ((_ is Cons!6074) rules!3103))))

(assert (=> d!214244 (= (contains!1429 rules!3103 (rule!1997 token!491)) lt!259700)))

(declare-fun b!607927 () Bool)

(declare-fun e!368410 () Bool)

(assert (=> b!607927 (= e!368411 e!368410)))

(declare-fun res!263592 () Bool)

(assert (=> b!607927 (=> res!263592 e!368410)))

(assert (=> b!607927 (= res!263592 (= (h!11475 rules!3103) (rule!1997 token!491)))))

(declare-fun b!607928 () Bool)

(assert (=> b!607928 (= e!368410 (contains!1429 (t!80661 rules!3103) (rule!1997 token!491)))))

(assert (= (and d!214244 res!263591) b!607927))

(assert (= (and b!607927 (not res!263592)) b!607928))

(declare-fun m!875051 () Bool)

(assert (=> d!214244 m!875051))

(declare-fun m!875055 () Bool)

(assert (=> d!214244 m!875055))

(declare-fun m!875059 () Bool)

(assert (=> b!607928 m!875059))

(assert (=> b!607644 d!214244))

(declare-fun d!214248 () Bool)

(assert (=> d!214248 (= (seqFromList!1389 lt!259584) (fromListB!613 lt!259584))))

(declare-fun bs!71420 () Bool)

(assert (= bs!71420 d!214248))

(declare-fun m!875061 () Bool)

(assert (=> bs!71420 m!875061))

(assert (=> b!607665 d!214248))

(declare-fun d!214250 () Bool)

(declare-fun lt!259701 () List!6083)

(assert (=> d!214250 (= (++!1701 lt!259584 lt!259701) input!2705)))

(declare-fun e!368413 () List!6083)

(assert (=> d!214250 (= lt!259701 e!368413)))

(declare-fun c!112608 () Bool)

(assert (=> d!214250 (= c!112608 ((_ is Cons!6073) lt!259584))))

(assert (=> d!214250 (>= (size!4779 input!2705) (size!4779 lt!259584))))

(assert (=> d!214250 (= (getSuffix!358 input!2705 lt!259584) lt!259701)))

(declare-fun b!607930 () Bool)

(assert (=> b!607930 (= e!368413 (getSuffix!358 (tail!814 input!2705) (t!80660 lt!259584)))))

(declare-fun b!607931 () Bool)

(assert (=> b!607931 (= e!368413 input!2705)))

(assert (= (and d!214250 c!112608) b!607930))

(assert (= (and d!214250 (not c!112608)) b!607931))

(declare-fun m!875063 () Bool)

(assert (=> d!214250 m!875063))

(assert (=> d!214250 m!874725))

(assert (=> d!214250 m!874645))

(assert (=> b!607930 m!874999))

(assert (=> b!607930 m!874999))

(declare-fun m!875065 () Bool)

(assert (=> b!607930 m!875065))

(assert (=> b!607665 d!214250))

(declare-fun d!214252 () Bool)

(assert (=> d!214252 (= (_2!3738 (v!16466 lt!259602)) lt!259600)))

(declare-fun lt!259702 () Unit!11088)

(assert (=> d!214252 (= lt!259702 (choose!4455 lt!259584 (_2!3738 (v!16466 lt!259602)) lt!259584 lt!259600 input!2705))))

(assert (=> d!214252 (isPrefix!841 lt!259584 input!2705)))

(assert (=> d!214252 (= (lemmaSamePrefixThenSameSuffix!554 lt!259584 (_2!3738 (v!16466 lt!259602)) lt!259584 lt!259600 input!2705) lt!259702)))

(declare-fun bs!71421 () Bool)

(assert (= bs!71421 d!214252))

(declare-fun m!875067 () Bool)

(assert (=> bs!71421 m!875067))

(assert (=> bs!71421 m!874661))

(assert (=> b!607665 d!214252))

(declare-fun d!214254 () Bool)

(declare-fun lt!259709 () Int)

(assert (=> d!214254 (>= lt!259709 0)))

(declare-fun e!368419 () Int)

(assert (=> d!214254 (= lt!259709 e!368419)))

(declare-fun c!112611 () Bool)

(assert (=> d!214254 (= c!112611 ((_ is Nil!6073) lt!259575))))

(assert (=> d!214254 (= (size!4779 lt!259575) lt!259709)))

(declare-fun b!607940 () Bool)

(assert (=> b!607940 (= e!368419 0)))

(declare-fun b!607941 () Bool)

(assert (=> b!607941 (= e!368419 (+ 1 (size!4779 (t!80660 lt!259575))))))

(assert (= (and d!214254 c!112611) b!607940))

(assert (= (and d!214254 (not c!112611)) b!607941))

(declare-fun m!875075 () Bool)

(assert (=> b!607941 m!875075))

(assert (=> b!607665 d!214254))

(declare-fun d!214258 () Bool)

(declare-fun res!263608 () Bool)

(declare-fun e!368426 () Bool)

(assert (=> d!214258 (=> (not res!263608) (not e!368426))))

(assert (=> d!214258 (= res!263608 (validRegex!539 (regex!1213 (rule!1997 (_1!3738 (v!16466 lt!259602))))))))

(assert (=> d!214258 (= (ruleValid!411 thiss!22590 (rule!1997 (_1!3738 (v!16466 lt!259602)))) e!368426)))

(declare-fun b!607952 () Bool)

(declare-fun res!263609 () Bool)

(assert (=> b!607952 (=> (not res!263609) (not e!368426))))

(assert (=> b!607952 (= res!263609 (not (nullable!444 (regex!1213 (rule!1997 (_1!3738 (v!16466 lt!259602)))))))))

(declare-fun b!607953 () Bool)

(assert (=> b!607953 (= e!368426 (not (= (tag!1475 (rule!1997 (_1!3738 (v!16466 lt!259602)))) (String!7929 ""))))))

(assert (= (and d!214258 res!263608) b!607952))

(assert (= (and b!607952 res!263609) b!607953))

(declare-fun m!875095 () Bool)

(assert (=> d!214258 m!875095))

(declare-fun m!875097 () Bool)

(assert (=> b!607952 m!875097))

(assert (=> b!607665 d!214258))

(declare-fun d!214270 () Bool)

(assert (=> d!214270 (isPrefix!841 lt!259575 (++!1701 lt!259575 suffix!1342))))

(declare-fun lt!259718 () Unit!11088)

(declare-fun choose!4456 (List!6083 List!6083) Unit!11088)

(assert (=> d!214270 (= lt!259718 (choose!4456 lt!259575 suffix!1342))))

(assert (=> d!214270 (= (lemmaConcatTwoListThenFirstIsPrefix!686 lt!259575 suffix!1342) lt!259718)))

(declare-fun bs!71426 () Bool)

(assert (= bs!71426 d!214270))

(assert (=> bs!71426 m!874695))

(assert (=> bs!71426 m!874695))

(declare-fun m!875101 () Bool)

(assert (=> bs!71426 m!875101))

(declare-fun m!875103 () Bool)

(assert (=> bs!71426 m!875103))

(assert (=> b!607665 d!214270))

(declare-fun d!214274 () Bool)

(declare-fun lt!259719 () Int)

(assert (=> d!214274 (>= lt!259719 0)))

(declare-fun e!368427 () Int)

(assert (=> d!214274 (= lt!259719 e!368427)))

(declare-fun c!112612 () Bool)

(assert (=> d!214274 (= c!112612 ((_ is Nil!6073) lt!259584))))

(assert (=> d!214274 (= (size!4779 lt!259584) lt!259719)))

(declare-fun b!607954 () Bool)

(assert (=> b!607954 (= e!368427 0)))

(declare-fun b!607955 () Bool)

(assert (=> b!607955 (= e!368427 (+ 1 (size!4779 (t!80660 lt!259584))))))

(assert (= (and d!214274 c!112612) b!607954))

(assert (= (and d!214274 (not c!112612)) b!607955))

(declare-fun m!875105 () Bool)

(assert (=> b!607955 m!875105))

(assert (=> b!607665 d!214274))

(declare-fun b!607964 () Bool)

(declare-fun e!368434 () Bool)

(declare-fun e!368436 () Bool)

(assert (=> b!607964 (= e!368434 e!368436)))

(declare-fun res!263620 () Bool)

(assert (=> b!607964 (=> (not res!263620) (not e!368436))))

(assert (=> b!607964 (= res!263620 (not ((_ is Nil!6073) input!2705)))))

(declare-fun b!607966 () Bool)

(assert (=> b!607966 (= e!368436 (isPrefix!841 (tail!814 input!2705) (tail!814 input!2705)))))

(declare-fun d!214278 () Bool)

(declare-fun e!368435 () Bool)

(assert (=> d!214278 e!368435))

(declare-fun res!263618 () Bool)

(assert (=> d!214278 (=> res!263618 e!368435)))

(declare-fun lt!259725 () Bool)

(assert (=> d!214278 (= res!263618 (not lt!259725))))

(assert (=> d!214278 (= lt!259725 e!368434)))

(declare-fun res!263621 () Bool)

(assert (=> d!214278 (=> res!263621 e!368434)))

(assert (=> d!214278 (= res!263621 ((_ is Nil!6073) input!2705))))

(assert (=> d!214278 (= (isPrefix!841 input!2705 input!2705) lt!259725)))

(declare-fun b!607967 () Bool)

(assert (=> b!607967 (= e!368435 (>= (size!4779 input!2705) (size!4779 input!2705)))))

(declare-fun b!607965 () Bool)

(declare-fun res!263619 () Bool)

(assert (=> b!607965 (=> (not res!263619) (not e!368436))))

(assert (=> b!607965 (= res!263619 (= (head!1285 input!2705) (head!1285 input!2705)))))

(assert (= (and d!214278 (not res!263621)) b!607964))

(assert (= (and b!607964 res!263620) b!607965))

(assert (= (and b!607965 res!263619) b!607966))

(assert (= (and d!214278 (not res!263618)) b!607967))

(assert (=> b!607966 m!874999))

(assert (=> b!607966 m!874999))

(assert (=> b!607966 m!874999))

(assert (=> b!607966 m!874999))

(declare-fun m!875111 () Bool)

(assert (=> b!607966 m!875111))

(assert (=> b!607967 m!874725))

(assert (=> b!607967 m!874725))

(assert (=> b!607965 m!874995))

(assert (=> b!607965 m!874995))

(assert (=> b!607665 d!214278))

(declare-fun d!214284 () Bool)

(declare-fun res!263622 () Bool)

(declare-fun e!368437 () Bool)

(assert (=> d!214284 (=> (not res!263622) (not e!368437))))

(assert (=> d!214284 (= res!263622 (validRegex!539 (regex!1213 (rule!1997 token!491))))))

(assert (=> d!214284 (= (ruleValid!411 thiss!22590 (rule!1997 token!491)) e!368437)))

(declare-fun b!607968 () Bool)

(declare-fun res!263623 () Bool)

(assert (=> b!607968 (=> (not res!263623) (not e!368437))))

(assert (=> b!607968 (= res!263623 (not (nullable!444 (regex!1213 (rule!1997 token!491)))))))

(declare-fun b!607969 () Bool)

(assert (=> b!607969 (= e!368437 (not (= (tag!1475 (rule!1997 token!491)) (String!7929 ""))))))

(assert (= (and d!214284 res!263622) b!607968))

(assert (= (and b!607968 res!263623) b!607969))

(assert (=> d!214284 m!874991))

(assert (=> b!607968 m!874993))

(assert (=> b!607665 d!214284))

(declare-fun b!607972 () Bool)

(declare-fun e!368438 () Bool)

(declare-fun e!368440 () Bool)

(assert (=> b!607972 (= e!368438 e!368440)))

(declare-fun res!263626 () Bool)

(assert (=> b!607972 (=> (not res!263626) (not e!368440))))

(assert (=> b!607972 (= res!263626 (not ((_ is Nil!6073) lt!259596)))))

(declare-fun b!607974 () Bool)

(assert (=> b!607974 (= e!368440 (isPrefix!841 (tail!814 lt!259584) (tail!814 lt!259596)))))

(declare-fun d!214286 () Bool)

(declare-fun e!368439 () Bool)

(assert (=> d!214286 e!368439))

(declare-fun res!263624 () Bool)

(assert (=> d!214286 (=> res!263624 e!368439)))

(declare-fun lt!259728 () Bool)

(assert (=> d!214286 (= res!263624 (not lt!259728))))

(assert (=> d!214286 (= lt!259728 e!368438)))

(declare-fun res!263627 () Bool)

(assert (=> d!214286 (=> res!263627 e!368438)))

(assert (=> d!214286 (= res!263627 ((_ is Nil!6073) lt!259584))))

(assert (=> d!214286 (= (isPrefix!841 lt!259584 lt!259596) lt!259728)))

(declare-fun b!607975 () Bool)

(assert (=> b!607975 (= e!368439 (>= (size!4779 lt!259596) (size!4779 lt!259584)))))

(declare-fun b!607973 () Bool)

(declare-fun res!263625 () Bool)

(assert (=> b!607973 (=> (not res!263625) (not e!368440))))

(assert (=> b!607973 (= res!263625 (= (head!1285 lt!259584) (head!1285 lt!259596)))))

(assert (= (and d!214286 (not res!263627)) b!607972))

(assert (= (and b!607972 res!263626) b!607973))

(assert (= (and b!607973 res!263625) b!607974))

(assert (= (and d!214286 (not res!263624)) b!607975))

(declare-fun m!875113 () Bool)

(assert (=> b!607974 m!875113))

(declare-fun m!875115 () Bool)

(assert (=> b!607974 m!875115))

(assert (=> b!607974 m!875113))

(assert (=> b!607974 m!875115))

(declare-fun m!875117 () Bool)

(assert (=> b!607974 m!875117))

(declare-fun m!875119 () Bool)

(assert (=> b!607975 m!875119))

(assert (=> b!607975 m!874645))

(declare-fun m!875121 () Bool)

(assert (=> b!607973 m!875121))

(declare-fun m!875123 () Bool)

(assert (=> b!607973 m!875123))

(assert (=> b!607665 d!214286))

(declare-fun d!214288 () Bool)

(assert (=> d!214288 (isPrefix!841 input!2705 input!2705)))

(declare-fun lt!259732 () Unit!11088)

(declare-fun choose!4457 (List!6083 List!6083) Unit!11088)

(assert (=> d!214288 (= lt!259732 (choose!4457 input!2705 input!2705))))

(assert (=> d!214288 (= (lemmaIsPrefixRefl!577 input!2705 input!2705) lt!259732)))

(declare-fun bs!71430 () Bool)

(assert (= bs!71430 d!214288))

(assert (=> bs!71430 m!874625))

(declare-fun m!875129 () Bool)

(assert (=> bs!71430 m!875129))

(assert (=> b!607665 d!214288))

(declare-fun d!214292 () Bool)

(declare-fun e!368444 () Bool)

(assert (=> d!214292 e!368444))

(declare-fun res!263629 () Bool)

(assert (=> d!214292 (=> (not res!263629) (not e!368444))))

(declare-fun lt!259733 () List!6083)

(assert (=> d!214292 (= res!263629 (= (content!1103 lt!259733) ((_ map or) (content!1103 lt!259584) (content!1103 (_2!3738 (v!16466 lt!259602))))))))

(declare-fun e!368445 () List!6083)

(assert (=> d!214292 (= lt!259733 e!368445)))

(declare-fun c!112616 () Bool)

(assert (=> d!214292 (= c!112616 ((_ is Nil!6073) lt!259584))))

(assert (=> d!214292 (= (++!1701 lt!259584 (_2!3738 (v!16466 lt!259602))) lt!259733)))

(declare-fun b!607980 () Bool)

(assert (=> b!607980 (= e!368445 (_2!3738 (v!16466 lt!259602)))))

(declare-fun b!607983 () Bool)

(assert (=> b!607983 (= e!368444 (or (not (= (_2!3738 (v!16466 lt!259602)) Nil!6073)) (= lt!259733 lt!259584)))))

(declare-fun b!607981 () Bool)

(assert (=> b!607981 (= e!368445 (Cons!6073 (h!11474 lt!259584) (++!1701 (t!80660 lt!259584) (_2!3738 (v!16466 lt!259602)))))))

(declare-fun b!607982 () Bool)

(declare-fun res!263628 () Bool)

(assert (=> b!607982 (=> (not res!263628) (not e!368444))))

(assert (=> b!607982 (= res!263628 (= (size!4779 lt!259733) (+ (size!4779 lt!259584) (size!4779 (_2!3738 (v!16466 lt!259602))))))))

(assert (= (and d!214292 c!112616) b!607980))

(assert (= (and d!214292 (not c!112616)) b!607981))

(assert (= (and d!214292 res!263629) b!607982))

(assert (= (and b!607982 res!263628) b!607983))

(declare-fun m!875131 () Bool)

(assert (=> d!214292 m!875131))

(assert (=> d!214292 m!875007))

(declare-fun m!875133 () Bool)

(assert (=> d!214292 m!875133))

(declare-fun m!875135 () Bool)

(assert (=> b!607981 m!875135))

(declare-fun m!875137 () Bool)

(assert (=> b!607982 m!875137))

(assert (=> b!607982 m!874645))

(declare-fun m!875139 () Bool)

(assert (=> b!607982 m!875139))

(assert (=> b!607665 d!214292))

(declare-fun d!214294 () Bool)

(declare-fun e!368449 () Bool)

(assert (=> d!214294 e!368449))

(declare-fun res!263633 () Bool)

(assert (=> d!214294 (=> (not res!263633) (not e!368449))))

(assert (=> d!214294 (= res!263633 (semiInverseModEq!486 (toChars!1979 (transformation!1213 (rule!1997 token!491))) (toValue!2120 (transformation!1213 (rule!1997 token!491)))))))

(declare-fun Unit!11092 () Unit!11088)

(assert (=> d!214294 (= (lemmaInv!321 (transformation!1213 (rule!1997 token!491))) Unit!11092)))

(declare-fun b!607987 () Bool)

(assert (=> b!607987 (= e!368449 (equivClasses!469 (toChars!1979 (transformation!1213 (rule!1997 token!491))) (toValue!2120 (transformation!1213 (rule!1997 token!491)))))))

(assert (= (and d!214294 res!263633) b!607987))

(declare-fun m!875153 () Bool)

(assert (=> d!214294 m!875153))

(declare-fun m!875155 () Bool)

(assert (=> b!607987 m!875155))

(assert (=> b!607665 d!214294))

(declare-fun d!214304 () Bool)

(assert (=> d!214304 (isPrefix!841 lt!259584 (++!1701 lt!259584 (_2!3738 (v!16466 lt!259602))))))

(declare-fun lt!259738 () Unit!11088)

(assert (=> d!214304 (= lt!259738 (choose!4456 lt!259584 (_2!3738 (v!16466 lt!259602))))))

(assert (=> d!214304 (= (lemmaConcatTwoListThenFirstIsPrefix!686 lt!259584 (_2!3738 (v!16466 lt!259602))) lt!259738)))

(declare-fun bs!71434 () Bool)

(assert (= bs!71434 d!214304))

(assert (=> bs!71434 m!874613))

(assert (=> bs!71434 m!874613))

(declare-fun m!875157 () Bool)

(assert (=> bs!71434 m!875157))

(declare-fun m!875159 () Bool)

(assert (=> bs!71434 m!875159))

(assert (=> b!607665 d!214304))

(declare-fun b!607988 () Bool)

(declare-fun e!368450 () Bool)

(declare-fun e!368452 () Bool)

(assert (=> b!607988 (= e!368450 e!368452)))

(declare-fun res!263636 () Bool)

(assert (=> b!607988 (=> (not res!263636) (not e!368452))))

(assert (=> b!607988 (= res!263636 (not ((_ is Nil!6073) lt!259595)))))

(declare-fun b!607990 () Bool)

(assert (=> b!607990 (= e!368452 (isPrefix!841 (tail!814 input!2705) (tail!814 lt!259595)))))

(declare-fun d!214306 () Bool)

(declare-fun e!368451 () Bool)

(assert (=> d!214306 e!368451))

(declare-fun res!263634 () Bool)

(assert (=> d!214306 (=> res!263634 e!368451)))

(declare-fun lt!259739 () Bool)

(assert (=> d!214306 (= res!263634 (not lt!259739))))

(assert (=> d!214306 (= lt!259739 e!368450)))

(declare-fun res!263637 () Bool)

(assert (=> d!214306 (=> res!263637 e!368450)))

(assert (=> d!214306 (= res!263637 ((_ is Nil!6073) input!2705))))

(assert (=> d!214306 (= (isPrefix!841 input!2705 lt!259595) lt!259739)))

(declare-fun b!607991 () Bool)

(assert (=> b!607991 (= e!368451 (>= (size!4779 lt!259595) (size!4779 input!2705)))))

(declare-fun b!607989 () Bool)

(declare-fun res!263635 () Bool)

(assert (=> b!607989 (=> (not res!263635) (not e!368452))))

(assert (=> b!607989 (= res!263635 (= (head!1285 input!2705) (head!1285 lt!259595)))))

(assert (= (and d!214306 (not res!263637)) b!607988))

(assert (= (and b!607988 res!263636) b!607989))

(assert (= (and b!607989 res!263635) b!607990))

(assert (= (and d!214306 (not res!263634)) b!607991))

(assert (=> b!607990 m!874999))

(declare-fun m!875161 () Bool)

(assert (=> b!607990 m!875161))

(assert (=> b!607990 m!874999))

(assert (=> b!607990 m!875161))

(declare-fun m!875163 () Bool)

(assert (=> b!607990 m!875163))

(declare-fun m!875165 () Bool)

(assert (=> b!607991 m!875165))

(assert (=> b!607991 m!874725))

(assert (=> b!607989 m!874995))

(declare-fun m!875167 () Bool)

(assert (=> b!607989 m!875167))

(assert (=> b!607665 d!214306))

(declare-fun d!214308 () Bool)

(declare-fun list!2555 (Conc!1930) List!6083)

(assert (=> d!214308 (= (list!2554 (charsOf!842 (_1!3738 (v!16466 lt!259602)))) (list!2555 (c!112570 (charsOf!842 (_1!3738 (v!16466 lt!259602))))))))

(declare-fun bs!71435 () Bool)

(assert (= bs!71435 d!214308))

(declare-fun m!875169 () Bool)

(assert (=> bs!71435 m!875169))

(assert (=> b!607665 d!214308))

(declare-fun d!214310 () Bool)

(assert (=> d!214310 (ruleValid!411 thiss!22590 (rule!1997 token!491))))

(declare-fun lt!259746 () Unit!11088)

(declare-fun choose!4459 (LexerInterface!1099 Rule!2226 List!6084) Unit!11088)

(assert (=> d!214310 (= lt!259746 (choose!4459 thiss!22590 (rule!1997 token!491) rules!3103))))

(assert (=> d!214310 (contains!1429 rules!3103 (rule!1997 token!491))))

(assert (=> d!214310 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!258 thiss!22590 (rule!1997 token!491) rules!3103) lt!259746)))

(declare-fun bs!71437 () Bool)

(assert (= bs!71437 d!214310))

(assert (=> bs!71437 m!874603))

(declare-fun m!875181 () Bool)

(assert (=> bs!71437 m!875181))

(assert (=> bs!71437 m!874675))

(assert (=> b!607665 d!214310))

(declare-fun d!214320 () Bool)

(assert (=> d!214320 (isPrefix!841 input!2705 (++!1701 input!2705 suffix!1342))))

(declare-fun lt!259747 () Unit!11088)

(assert (=> d!214320 (= lt!259747 (choose!4456 input!2705 suffix!1342))))

(assert (=> d!214320 (= (lemmaConcatTwoListThenFirstIsPrefix!686 input!2705 suffix!1342) lt!259747)))

(declare-fun bs!71438 () Bool)

(assert (= bs!71438 d!214320))

(assert (=> bs!71438 m!874671))

(assert (=> bs!71438 m!874671))

(declare-fun m!875183 () Bool)

(assert (=> bs!71438 m!875183))

(declare-fun m!875185 () Bool)

(assert (=> bs!71438 m!875185))

(assert (=> b!607665 d!214320))

(declare-fun d!214322 () Bool)

(assert (=> d!214322 (and (= lt!259575 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!259750 () Unit!11088)

(declare-fun choose!4460 (List!6083 List!6083 List!6083 List!6083) Unit!11088)

(assert (=> d!214322 (= lt!259750 (choose!4460 lt!259575 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!214322 (= (++!1701 lt!259575 suffix!1342) (++!1701 input!2705 suffix!1342))))

(assert (=> d!214322 (= (lemmaConcatSameAndSameSizesThenSameLists!286 lt!259575 suffix!1342 input!2705 suffix!1342) lt!259750)))

(declare-fun bs!71439 () Bool)

(assert (= bs!71439 d!214322))

(declare-fun m!875187 () Bool)

(assert (=> bs!71439 m!875187))

(assert (=> bs!71439 m!874695))

(assert (=> bs!71439 m!874671))

(assert (=> b!607665 d!214322))

(declare-fun d!214324 () Bool)

(declare-fun lt!259755 () BalanceConc!3868)

(assert (=> d!214324 (= (list!2554 lt!259755) (originalCharacters!1252 (_1!3738 (v!16466 lt!259602))))))

(declare-fun dynLambda!3525 (Int TokenValue!1237) BalanceConc!3868)

(assert (=> d!214324 (= lt!259755 (dynLambda!3525 (toChars!1979 (transformation!1213 (rule!1997 (_1!3738 (v!16466 lt!259602))))) (value!39437 (_1!3738 (v!16466 lt!259602)))))))

(assert (=> d!214324 (= (charsOf!842 (_1!3738 (v!16466 lt!259602))) lt!259755)))

(declare-fun b_lambda!24093 () Bool)

(assert (=> (not b_lambda!24093) (not d!214324)))

(declare-fun t!80683 () Bool)

(declare-fun tb!53127 () Bool)

(assert (=> (and b!607650 (= (toChars!1979 (transformation!1213 (h!11475 rules!3103))) (toChars!1979 (transformation!1213 (rule!1997 (_1!3738 (v!16466 lt!259602)))))) t!80683) tb!53127))

(declare-fun b!608030 () Bool)

(declare-fun e!368475 () Bool)

(declare-fun tp!188596 () Bool)

(declare-fun inv!7728 (Conc!1930) Bool)

(assert (=> b!608030 (= e!368475 (and (inv!7728 (c!112570 (dynLambda!3525 (toChars!1979 (transformation!1213 (rule!1997 (_1!3738 (v!16466 lt!259602))))) (value!39437 (_1!3738 (v!16466 lt!259602)))))) tp!188596))))

(declare-fun result!59792 () Bool)

(declare-fun inv!7729 (BalanceConc!3868) Bool)

(assert (=> tb!53127 (= result!59792 (and (inv!7729 (dynLambda!3525 (toChars!1979 (transformation!1213 (rule!1997 (_1!3738 (v!16466 lt!259602))))) (value!39437 (_1!3738 (v!16466 lt!259602))))) e!368475))))

(assert (= tb!53127 b!608030))

(declare-fun m!875189 () Bool)

(assert (=> b!608030 m!875189))

(declare-fun m!875191 () Bool)

(assert (=> tb!53127 m!875191))

(assert (=> d!214324 t!80683))

(declare-fun b_and!60199 () Bool)

(assert (= b_and!60169 (and (=> t!80683 result!59792) b_and!60199)))

(declare-fun tb!53129 () Bool)

(declare-fun t!80685 () Bool)

(assert (=> (and b!607670 (= (toChars!1979 (transformation!1213 (rule!1997 token!491))) (toChars!1979 (transformation!1213 (rule!1997 (_1!3738 (v!16466 lt!259602)))))) t!80685) tb!53129))

(declare-fun result!59796 () Bool)

(assert (= result!59796 result!59792))

(assert (=> d!214324 t!80685))

(declare-fun b_and!60201 () Bool)

(assert (= b_and!60173 (and (=> t!80685 result!59796) b_and!60201)))

(declare-fun m!875193 () Bool)

(assert (=> d!214324 m!875193))

(declare-fun m!875195 () Bool)

(assert (=> d!214324 m!875195))

(assert (=> b!607665 d!214324))

(declare-fun d!214326 () Bool)

(assert (=> d!214326 (= (apply!1466 (transformation!1213 (rule!1997 (_1!3738 (v!16466 lt!259602)))) (seqFromList!1389 lt!259584)) (dynLambda!3523 (toValue!2120 (transformation!1213 (rule!1997 (_1!3738 (v!16466 lt!259602))))) (seqFromList!1389 lt!259584)))))

(declare-fun b_lambda!24095 () Bool)

(assert (=> (not b_lambda!24095) (not d!214326)))

(declare-fun tb!53131 () Bool)

(declare-fun t!80687 () Bool)

(assert (=> (and b!607650 (= (toValue!2120 (transformation!1213 (h!11475 rules!3103))) (toValue!2120 (transformation!1213 (rule!1997 (_1!3738 (v!16466 lt!259602)))))) t!80687) tb!53131))

(declare-fun result!59798 () Bool)

(assert (=> tb!53131 (= result!59798 (inv!21 (dynLambda!3523 (toValue!2120 (transformation!1213 (rule!1997 (_1!3738 (v!16466 lt!259602))))) (seqFromList!1389 lt!259584))))))

(declare-fun m!875197 () Bool)

(assert (=> tb!53131 m!875197))

(assert (=> d!214326 t!80687))

(declare-fun b_and!60203 () Bool)

(assert (= b_and!60175 (and (=> t!80687 result!59798) b_and!60203)))

(declare-fun tb!53133 () Bool)

(declare-fun t!80689 () Bool)

(assert (=> (and b!607670 (= (toValue!2120 (transformation!1213 (rule!1997 token!491))) (toValue!2120 (transformation!1213 (rule!1997 (_1!3738 (v!16466 lt!259602)))))) t!80689) tb!53133))

(declare-fun result!59800 () Bool)

(assert (= result!59800 result!59798))

(assert (=> d!214326 t!80689))

(declare-fun b_and!60205 () Bool)

(assert (= b_and!60177 (and (=> t!80689 result!59800) b_and!60205)))

(assert (=> d!214326 m!874619))

(declare-fun m!875199 () Bool)

(assert (=> d!214326 m!875199))

(assert (=> b!607665 d!214326))

(declare-fun d!214328 () Bool)

(assert (=> d!214328 (= (size!4778 (_1!3738 (v!16466 lt!259602))) (size!4779 (originalCharacters!1252 (_1!3738 (v!16466 lt!259602)))))))

(declare-fun Unit!11093 () Unit!11088)

(assert (=> d!214328 (= (lemmaCharactersSize!272 (_1!3738 (v!16466 lt!259602))) Unit!11093)))

(declare-fun bs!71440 () Bool)

(assert (= bs!71440 d!214328))

(assert (=> bs!71440 m!874677))

(assert (=> b!607665 d!214328))

(declare-fun d!214330 () Bool)

(assert (=> d!214330 (= (size!4778 token!491) (size!4779 (originalCharacters!1252 token!491)))))

(declare-fun Unit!11094 () Unit!11088)

(assert (=> d!214330 (= (lemmaCharactersSize!272 token!491) Unit!11094)))

(declare-fun bs!71441 () Bool)

(assert (= bs!71441 d!214330))

(assert (=> bs!71441 m!874687))

(assert (=> b!607665 d!214330))

(declare-fun d!214332 () Bool)

(declare-fun e!368477 () Bool)

(assert (=> d!214332 e!368477))

(declare-fun res!263660 () Bool)

(assert (=> d!214332 (=> (not res!263660) (not e!368477))))

(assert (=> d!214332 (= res!263660 (semiInverseModEq!486 (toChars!1979 (transformation!1213 (rule!1997 (_1!3738 (v!16466 lt!259602))))) (toValue!2120 (transformation!1213 (rule!1997 (_1!3738 (v!16466 lt!259602)))))))))

(declare-fun Unit!11095 () Unit!11088)

(assert (=> d!214332 (= (lemmaInv!321 (transformation!1213 (rule!1997 (_1!3738 (v!16466 lt!259602))))) Unit!11095)))

(declare-fun b!608031 () Bool)

(assert (=> b!608031 (= e!368477 (equivClasses!469 (toChars!1979 (transformation!1213 (rule!1997 (_1!3738 (v!16466 lt!259602))))) (toValue!2120 (transformation!1213 (rule!1997 (_1!3738 (v!16466 lt!259602)))))))))

(assert (= (and d!214332 res!263660) b!608031))

(declare-fun m!875201 () Bool)

(assert (=> d!214332 m!875201))

(declare-fun m!875203 () Bool)

(assert (=> b!608031 m!875203))

(assert (=> b!607665 d!214332))

(declare-fun d!214334 () Bool)

(assert (=> d!214334 (ruleValid!411 thiss!22590 (rule!1997 (_1!3738 (v!16466 lt!259602))))))

(declare-fun lt!259756 () Unit!11088)

(assert (=> d!214334 (= lt!259756 (choose!4459 thiss!22590 (rule!1997 (_1!3738 (v!16466 lt!259602))) rules!3103))))

(assert (=> d!214334 (contains!1429 rules!3103 (rule!1997 (_1!3738 (v!16466 lt!259602))))))

(assert (=> d!214334 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!258 thiss!22590 (rule!1997 (_1!3738 (v!16466 lt!259602))) rules!3103) lt!259756)))

(declare-fun bs!71442 () Bool)

(assert (= bs!71442 d!214334))

(assert (=> bs!71442 m!874605))

(declare-fun m!875205 () Bool)

(assert (=> bs!71442 m!875205))

(assert (=> bs!71442 m!874683))

(assert (=> b!607665 d!214334))

(declare-fun b!608032 () Bool)

(declare-fun e!368478 () Bool)

(declare-fun e!368480 () Bool)

(assert (=> b!608032 (= e!368478 e!368480)))

(declare-fun res!263663 () Bool)

(assert (=> b!608032 (=> (not res!263663) (not e!368480))))

(assert (=> b!608032 (= res!263663 (not ((_ is Nil!6073) lt!259590)))))

(declare-fun b!608034 () Bool)

(assert (=> b!608034 (= e!368480 (isPrefix!841 (tail!814 input!2705) (tail!814 lt!259590)))))

(declare-fun d!214336 () Bool)

(declare-fun e!368479 () Bool)

(assert (=> d!214336 e!368479))

(declare-fun res!263661 () Bool)

(assert (=> d!214336 (=> res!263661 e!368479)))

(declare-fun lt!259757 () Bool)

(assert (=> d!214336 (= res!263661 (not lt!259757))))

(assert (=> d!214336 (= lt!259757 e!368478)))

(declare-fun res!263664 () Bool)

(assert (=> d!214336 (=> res!263664 e!368478)))

(assert (=> d!214336 (= res!263664 ((_ is Nil!6073) input!2705))))

(assert (=> d!214336 (= (isPrefix!841 input!2705 lt!259590) lt!259757)))

(declare-fun b!608035 () Bool)

(assert (=> b!608035 (= e!368479 (>= (size!4779 lt!259590) (size!4779 input!2705)))))

(declare-fun b!608033 () Bool)

(declare-fun res!263662 () Bool)

(assert (=> b!608033 (=> (not res!263662) (not e!368480))))

(assert (=> b!608033 (= res!263662 (= (head!1285 input!2705) (head!1285 lt!259590)))))

(assert (= (and d!214336 (not res!263664)) b!608032))

(assert (= (and b!608032 res!263663) b!608033))

(assert (= (and b!608033 res!263662) b!608034))

(assert (= (and d!214336 (not res!263661)) b!608035))

(assert (=> b!608034 m!874999))

(assert (=> b!608034 m!874789))

(assert (=> b!608034 m!874999))

(assert (=> b!608034 m!874789))

(declare-fun m!875207 () Bool)

(assert (=> b!608034 m!875207))

(assert (=> b!608035 m!874757))

(assert (=> b!608035 m!874725))

(assert (=> b!608033 m!874995))

(declare-fun m!875209 () Bool)

(assert (=> b!608033 m!875209))

(assert (=> b!607665 d!214336))

(declare-fun b!608036 () Bool)

(declare-fun e!368481 () Bool)

(declare-fun e!368483 () Bool)

(assert (=> b!608036 (= e!368481 e!368483)))

(declare-fun res!263667 () Bool)

(assert (=> b!608036 (=> (not res!263667) (not e!368483))))

(assert (=> b!608036 (= res!263667 (not ((_ is Nil!6073) lt!259595)))))

(declare-fun b!608038 () Bool)

(assert (=> b!608038 (= e!368483 (isPrefix!841 (tail!814 lt!259575) (tail!814 lt!259595)))))

(declare-fun d!214338 () Bool)

(declare-fun e!368482 () Bool)

(assert (=> d!214338 e!368482))

(declare-fun res!263665 () Bool)

(assert (=> d!214338 (=> res!263665 e!368482)))

(declare-fun lt!259758 () Bool)

(assert (=> d!214338 (= res!263665 (not lt!259758))))

(assert (=> d!214338 (= lt!259758 e!368481)))

(declare-fun res!263668 () Bool)

(assert (=> d!214338 (=> res!263668 e!368481)))

(assert (=> d!214338 (= res!263668 ((_ is Nil!6073) lt!259575))))

(assert (=> d!214338 (= (isPrefix!841 lt!259575 lt!259595) lt!259758)))

(declare-fun b!608039 () Bool)

(assert (=> b!608039 (= e!368482 (>= (size!4779 lt!259595) (size!4779 lt!259575)))))

(declare-fun b!608037 () Bool)

(declare-fun res!263666 () Bool)

(assert (=> b!608037 (=> (not res!263666) (not e!368483))))

(assert (=> b!608037 (= res!263666 (= (head!1285 lt!259575) (head!1285 lt!259595)))))

(assert (= (and d!214338 (not res!263668)) b!608036))

(assert (= (and b!608036 res!263667) b!608037))

(assert (= (and b!608037 res!263666) b!608038))

(assert (= (and d!214338 (not res!263665)) b!608039))

(declare-fun m!875211 () Bool)

(assert (=> b!608038 m!875211))

(assert (=> b!608038 m!875161))

(assert (=> b!608038 m!875211))

(assert (=> b!608038 m!875161))

(declare-fun m!875213 () Bool)

(assert (=> b!608038 m!875213))

(assert (=> b!608039 m!875165))

(assert (=> b!608039 m!874609))

(declare-fun m!875215 () Bool)

(assert (=> b!608037 m!875215))

(assert (=> b!608037 m!875167))

(assert (=> b!607665 d!214338))

(declare-fun d!214340 () Bool)

(assert (=> d!214340 (= (isDefined!1375 lt!259602) (not (isEmpty!4385 lt!259602)))))

(declare-fun bs!71443 () Bool)

(assert (= bs!71443 d!214340))

(declare-fun m!875217 () Bool)

(assert (=> bs!71443 m!875217))

(assert (=> b!607664 d!214340))

(declare-fun d!214342 () Bool)

(assert (=> d!214342 (= (get!2334 lt!259602) (v!16466 lt!259602))))

(assert (=> b!607658 d!214342))

(declare-fun d!214344 () Bool)

(assert (=> d!214344 (= (list!2554 (charsOf!842 token!491)) (list!2555 (c!112570 (charsOf!842 token!491))))))

(declare-fun bs!71444 () Bool)

(assert (= bs!71444 d!214344))

(declare-fun m!875219 () Bool)

(assert (=> bs!71444 m!875219))

(assert (=> b!607678 d!214344))

(declare-fun d!214346 () Bool)

(declare-fun lt!259760 () BalanceConc!3868)

(assert (=> d!214346 (= (list!2554 lt!259760) (originalCharacters!1252 token!491))))

(assert (=> d!214346 (= lt!259760 (dynLambda!3525 (toChars!1979 (transformation!1213 (rule!1997 token!491))) (value!39437 token!491)))))

(assert (=> d!214346 (= (charsOf!842 token!491) lt!259760)))

(declare-fun b_lambda!24097 () Bool)

(assert (=> (not b_lambda!24097) (not d!214346)))

(declare-fun t!80691 () Bool)

(declare-fun tb!53135 () Bool)

(assert (=> (and b!607650 (= (toChars!1979 (transformation!1213 (h!11475 rules!3103))) (toChars!1979 (transformation!1213 (rule!1997 token!491)))) t!80691) tb!53135))

(declare-fun b!608054 () Bool)

(declare-fun e!368491 () Bool)

(declare-fun tp!188597 () Bool)

(assert (=> b!608054 (= e!368491 (and (inv!7728 (c!112570 (dynLambda!3525 (toChars!1979 (transformation!1213 (rule!1997 token!491))) (value!39437 token!491)))) tp!188597))))

(declare-fun result!59802 () Bool)

(assert (=> tb!53135 (= result!59802 (and (inv!7729 (dynLambda!3525 (toChars!1979 (transformation!1213 (rule!1997 token!491))) (value!39437 token!491))) e!368491))))

(assert (= tb!53135 b!608054))

(declare-fun m!875221 () Bool)

(assert (=> b!608054 m!875221))

(declare-fun m!875223 () Bool)

(assert (=> tb!53135 m!875223))

(assert (=> d!214346 t!80691))

(declare-fun b_and!60207 () Bool)

(assert (= b_and!60199 (and (=> t!80691 result!59802) b_and!60207)))

(declare-fun t!80693 () Bool)

(declare-fun tb!53137 () Bool)

(assert (=> (and b!607670 (= (toChars!1979 (transformation!1213 (rule!1997 token!491))) (toChars!1979 (transformation!1213 (rule!1997 token!491)))) t!80693) tb!53137))

(declare-fun result!59804 () Bool)

(assert (= result!59804 result!59802))

(assert (=> d!214346 t!80693))

(declare-fun b_and!60209 () Bool)

(assert (= b_and!60201 (and (=> t!80693 result!59804) b_and!60209)))

(declare-fun m!875225 () Bool)

(assert (=> d!214346 m!875225))

(declare-fun m!875227 () Bool)

(assert (=> d!214346 m!875227))

(assert (=> b!607678 d!214346))

(declare-fun d!214348 () Bool)

(declare-fun lt!259761 () Int)

(assert (=> d!214348 (>= lt!259761 0)))

(declare-fun e!368492 () Int)

(assert (=> d!214348 (= lt!259761 e!368492)))

(declare-fun c!112626 () Bool)

(assert (=> d!214348 (= c!112626 ((_ is Nil!6073) (originalCharacters!1252 (_1!3738 (v!16466 lt!259602)))))))

(assert (=> d!214348 (= (size!4779 (originalCharacters!1252 (_1!3738 (v!16466 lt!259602)))) lt!259761)))

(declare-fun b!608055 () Bool)

(assert (=> b!608055 (= e!368492 0)))

(declare-fun b!608056 () Bool)

(assert (=> b!608056 (= e!368492 (+ 1 (size!4779 (t!80660 (originalCharacters!1252 (_1!3738 (v!16466 lt!259602)))))))))

(assert (= (and d!214348 c!112626) b!608055))

(assert (= (and d!214348 (not c!112626)) b!608056))

(declare-fun m!875233 () Bool)

(assert (=> b!608056 m!875233))

(assert (=> b!607657 d!214348))

(declare-fun d!214350 () Bool)

(assert (=> d!214350 (= (isEmpty!4383 input!2705) ((_ is Nil!6073) input!2705))))

(assert (=> b!607656 d!214350))

(declare-fun d!214354 () Bool)

(assert (=> d!214354 (= (get!2334 lt!259576) (v!16466 lt!259576))))

(assert (=> b!607660 d!214354))

(declare-fun d!214356 () Bool)

(declare-fun res!263689 () Bool)

(declare-fun e!368503 () Bool)

(assert (=> d!214356 (=> (not res!263689) (not e!368503))))

(assert (=> d!214356 (= res!263689 (not (isEmpty!4383 (originalCharacters!1252 token!491))))))

(assert (=> d!214356 (= (inv!7725 token!491) e!368503)))

(declare-fun b!608073 () Bool)

(declare-fun res!263690 () Bool)

(assert (=> b!608073 (=> (not res!263690) (not e!368503))))

(assert (=> b!608073 (= res!263690 (= (originalCharacters!1252 token!491) (list!2554 (dynLambda!3525 (toChars!1979 (transformation!1213 (rule!1997 token!491))) (value!39437 token!491)))))))

(declare-fun b!608074 () Bool)

(assert (=> b!608074 (= e!368503 (= (size!4778 token!491) (size!4779 (originalCharacters!1252 token!491))))))

(assert (= (and d!214356 res!263689) b!608073))

(assert (= (and b!608073 res!263690) b!608074))

(declare-fun b_lambda!24099 () Bool)

(assert (=> (not b_lambda!24099) (not b!608073)))

(assert (=> b!608073 t!80691))

(declare-fun b_and!60211 () Bool)

(assert (= b_and!60207 (and (=> t!80691 result!59802) b_and!60211)))

(assert (=> b!608073 t!80693))

(declare-fun b_and!60213 () Bool)

(assert (= b_and!60209 (and (=> t!80693 result!59804) b_and!60213)))

(declare-fun m!875253 () Bool)

(assert (=> d!214356 m!875253))

(assert (=> b!608073 m!875227))

(assert (=> b!608073 m!875227))

(declare-fun m!875255 () Bool)

(assert (=> b!608073 m!875255))

(assert (=> b!608074 m!874687))

(assert (=> start!58020 d!214356))

(declare-fun d!214366 () Bool)

(declare-fun lt!259766 () Int)

(assert (=> d!214366 (>= lt!259766 0)))

(declare-fun e!368506 () Int)

(assert (=> d!214366 (= lt!259766 e!368506)))

(declare-fun c!112629 () Bool)

(assert (=> d!214366 (= c!112629 ((_ is Nil!6073) (originalCharacters!1252 token!491)))))

(assert (=> d!214366 (= (size!4779 (originalCharacters!1252 token!491)) lt!259766)))

(declare-fun b!608077 () Bool)

(assert (=> b!608077 (= e!368506 0)))

(declare-fun b!608078 () Bool)

(assert (=> b!608078 (= e!368506 (+ 1 (size!4779 (t!80660 (originalCharacters!1252 token!491)))))))

(assert (= (and d!214366 c!112629) b!608077))

(assert (= (and d!214366 (not c!112629)) b!608078))

(declare-fun m!875257 () Bool)

(assert (=> b!608078 m!875257))

(assert (=> b!607674 d!214366))

(declare-fun d!214368 () Bool)

(declare-fun res!263696 () Bool)

(declare-fun e!368510 () Bool)

(assert (=> d!214368 (=> (not res!263696) (not e!368510))))

(declare-fun rulesValid!450 (LexerInterface!1099 List!6084) Bool)

(assert (=> d!214368 (= res!263696 (rulesValid!450 thiss!22590 rules!3103))))

(assert (=> d!214368 (= (rulesInvariant!1062 thiss!22590 rules!3103) e!368510)))

(declare-fun b!608082 () Bool)

(declare-datatypes ((List!6085 0))(
  ( (Nil!6075) (Cons!6075 (h!11476 String!7928) (t!80722 List!6085)) )
))
(declare-fun noDuplicateTag!450 (LexerInterface!1099 List!6084 List!6085) Bool)

(assert (=> b!608082 (= e!368510 (noDuplicateTag!450 thiss!22590 rules!3103 Nil!6075))))

(assert (= (and d!214368 res!263696) b!608082))

(declare-fun m!875265 () Bool)

(assert (=> d!214368 m!875265))

(declare-fun m!875267 () Bool)

(assert (=> b!608082 m!875267))

(assert (=> b!607653 d!214368))

(declare-fun d!214374 () Bool)

(declare-fun lt!259767 () List!6083)

(assert (=> d!214374 (= (++!1701 input!2705 lt!259767) input!2705)))

(declare-fun e!368511 () List!6083)

(assert (=> d!214374 (= lt!259767 e!368511)))

(declare-fun c!112630 () Bool)

(assert (=> d!214374 (= c!112630 ((_ is Cons!6073) input!2705))))

(assert (=> d!214374 (>= (size!4779 input!2705) (size!4779 input!2705))))

(assert (=> d!214374 (= (getSuffix!358 input!2705 input!2705) lt!259767)))

(declare-fun b!608083 () Bool)

(assert (=> b!608083 (= e!368511 (getSuffix!358 (tail!814 input!2705) (t!80660 input!2705)))))

(declare-fun b!608084 () Bool)

(assert (=> b!608084 (= e!368511 input!2705)))

(assert (= (and d!214374 c!112630) b!608083))

(assert (= (and d!214374 (not c!112630)) b!608084))

(declare-fun m!875269 () Bool)

(assert (=> d!214374 m!875269))

(assert (=> d!214374 m!874725))

(assert (=> d!214374 m!874725))

(assert (=> b!608083 m!874999))

(assert (=> b!608083 m!874999))

(declare-fun m!875271 () Bool)

(assert (=> b!608083 m!875271))

(assert (=> b!607652 d!214374))

(declare-fun b!608085 () Bool)

(declare-fun e!368512 () Bool)

(declare-fun e!368514 () Bool)

(assert (=> b!608085 (= e!368512 e!368514)))

(declare-fun res!263699 () Bool)

(assert (=> b!608085 (=> (not res!263699) (not e!368514))))

(assert (=> b!608085 (= res!263699 (not ((_ is Nil!6073) input!2705)))))

(declare-fun b!608087 () Bool)

(assert (=> b!608087 (= e!368514 (isPrefix!841 (tail!814 lt!259584) (tail!814 input!2705)))))

(declare-fun d!214376 () Bool)

(declare-fun e!368513 () Bool)

(assert (=> d!214376 e!368513))

(declare-fun res!263697 () Bool)

(assert (=> d!214376 (=> res!263697 e!368513)))

(declare-fun lt!259768 () Bool)

(assert (=> d!214376 (= res!263697 (not lt!259768))))

(assert (=> d!214376 (= lt!259768 e!368512)))

(declare-fun res!263700 () Bool)

(assert (=> d!214376 (=> res!263700 e!368512)))

(assert (=> d!214376 (= res!263700 ((_ is Nil!6073) lt!259584))))

(assert (=> d!214376 (= (isPrefix!841 lt!259584 input!2705) lt!259768)))

(declare-fun b!608088 () Bool)

(assert (=> b!608088 (= e!368513 (>= (size!4779 input!2705) (size!4779 lt!259584)))))

(declare-fun b!608086 () Bool)

(declare-fun res!263698 () Bool)

(assert (=> b!608086 (=> (not res!263698) (not e!368514))))

(assert (=> b!608086 (= res!263698 (= (head!1285 lt!259584) (head!1285 input!2705)))))

(assert (= (and d!214376 (not res!263700)) b!608085))

(assert (= (and b!608085 res!263699) b!608086))

(assert (= (and b!608086 res!263698) b!608087))

(assert (= (and d!214376 (not res!263697)) b!608088))

(assert (=> b!608087 m!875113))

(assert (=> b!608087 m!874999))

(assert (=> b!608087 m!875113))

(assert (=> b!608087 m!874999))

(declare-fun m!875273 () Bool)

(assert (=> b!608087 m!875273))

(assert (=> b!608088 m!874725))

(assert (=> b!608088 m!874645))

(assert (=> b!608086 m!875121))

(assert (=> b!608086 m!874995))

(assert (=> b!607673 d!214376))

(declare-fun d!214378 () Bool)

(assert (=> d!214378 (= (isEmpty!4384 rules!3103) ((_ is Nil!6074) rules!3103))))

(assert (=> b!607672 d!214378))

(declare-fun d!214380 () Bool)

(declare-fun c!112635 () Bool)

(assert (=> d!214380 (= c!112635 ((_ is IntegerValue!3711) (value!39437 token!491)))))

(declare-fun e!368521 () Bool)

(assert (=> d!214380 (= (inv!21 (value!39437 token!491)) e!368521)))

(declare-fun b!608099 () Bool)

(declare-fun res!263703 () Bool)

(declare-fun e!368522 () Bool)

(assert (=> b!608099 (=> res!263703 e!368522)))

(assert (=> b!608099 (= res!263703 (not ((_ is IntegerValue!3713) (value!39437 token!491))))))

(declare-fun e!368523 () Bool)

(assert (=> b!608099 (= e!368523 e!368522)))

(declare-fun b!608100 () Bool)

(declare-fun inv!15 (TokenValue!1237) Bool)

(assert (=> b!608100 (= e!368522 (inv!15 (value!39437 token!491)))))

(declare-fun b!608101 () Bool)

(declare-fun inv!16 (TokenValue!1237) Bool)

(assert (=> b!608101 (= e!368521 (inv!16 (value!39437 token!491)))))

(declare-fun b!608102 () Bool)

(assert (=> b!608102 (= e!368521 e!368523)))

(declare-fun c!112636 () Bool)

(assert (=> b!608102 (= c!112636 ((_ is IntegerValue!3712) (value!39437 token!491)))))

(declare-fun b!608103 () Bool)

(declare-fun inv!17 (TokenValue!1237) Bool)

(assert (=> b!608103 (= e!368523 (inv!17 (value!39437 token!491)))))

(assert (= (and d!214380 c!112635) b!608101))

(assert (= (and d!214380 (not c!112635)) b!608102))

(assert (= (and b!608102 c!112636) b!608103))

(assert (= (and b!608102 (not c!112636)) b!608099))

(assert (= (and b!608099 (not res!263703)) b!608100))

(declare-fun m!875275 () Bool)

(assert (=> b!608100 m!875275))

(declare-fun m!875277 () Bool)

(assert (=> b!608101 m!875277))

(declare-fun m!875279 () Bool)

(assert (=> b!608103 m!875279))

(assert (=> b!607651 d!214380))

(declare-fun d!214382 () Bool)

(declare-fun lt!259769 () Bool)

(assert (=> d!214382 (= lt!259769 (select (content!1105 rules!3103) (rule!1997 (_1!3738 (v!16466 lt!259602)))))))

(declare-fun e!368525 () Bool)

(assert (=> d!214382 (= lt!259769 e!368525)))

(declare-fun res!263704 () Bool)

(assert (=> d!214382 (=> (not res!263704) (not e!368525))))

(assert (=> d!214382 (= res!263704 ((_ is Cons!6074) rules!3103))))

(assert (=> d!214382 (= (contains!1429 rules!3103 (rule!1997 (_1!3738 (v!16466 lt!259602)))) lt!259769)))

(declare-fun b!608104 () Bool)

(declare-fun e!368524 () Bool)

(assert (=> b!608104 (= e!368525 e!368524)))

(declare-fun res!263705 () Bool)

(assert (=> b!608104 (=> res!263705 e!368524)))

(assert (=> b!608104 (= res!263705 (= (h!11475 rules!3103) (rule!1997 (_1!3738 (v!16466 lt!259602)))))))

(declare-fun b!608105 () Bool)

(assert (=> b!608105 (= e!368524 (contains!1429 (t!80661 rules!3103) (rule!1997 (_1!3738 (v!16466 lt!259602)))))))

(assert (= (and d!214382 res!263704) b!608104))

(assert (= (and b!608104 (not res!263705)) b!608105))

(assert (=> d!214382 m!875051))

(declare-fun m!875281 () Bool)

(assert (=> d!214382 m!875281))

(declare-fun m!875283 () Bool)

(assert (=> b!608105 m!875283))

(assert (=> b!607677 d!214382))

(declare-fun d!214384 () Bool)

(declare-fun e!368526 () Bool)

(assert (=> d!214384 e!368526))

(declare-fun res!263707 () Bool)

(assert (=> d!214384 (=> (not res!263707) (not e!368526))))

(declare-fun lt!259770 () List!6083)

(assert (=> d!214384 (= res!263707 (= (content!1103 lt!259770) ((_ map or) (content!1103 lt!259575) (content!1103 suffix!1342))))))

(declare-fun e!368527 () List!6083)

(assert (=> d!214384 (= lt!259770 e!368527)))

(declare-fun c!112637 () Bool)

(assert (=> d!214384 (= c!112637 ((_ is Nil!6073) lt!259575))))

(assert (=> d!214384 (= (++!1701 lt!259575 suffix!1342) lt!259770)))

(declare-fun b!608106 () Bool)

(assert (=> b!608106 (= e!368527 suffix!1342)))

(declare-fun b!608109 () Bool)

(assert (=> b!608109 (= e!368526 (or (not (= suffix!1342 Nil!6073)) (= lt!259770 lt!259575)))))

(declare-fun b!608107 () Bool)

(assert (=> b!608107 (= e!368527 (Cons!6073 (h!11474 lt!259575) (++!1701 (t!80660 lt!259575) suffix!1342)))))

(declare-fun b!608108 () Bool)

(declare-fun res!263706 () Bool)

(assert (=> b!608108 (=> (not res!263706) (not e!368526))))

(assert (=> b!608108 (= res!263706 (= (size!4779 lt!259770) (+ (size!4779 lt!259575) (size!4779 suffix!1342))))))

(assert (= (and d!214384 c!112637) b!608106))

(assert (= (and d!214384 (not c!112637)) b!608107))

(assert (= (and d!214384 res!263707) b!608108))

(assert (= (and b!608108 res!263706) b!608109))

(declare-fun m!875285 () Bool)

(assert (=> d!214384 m!875285))

(declare-fun m!875287 () Bool)

(assert (=> d!214384 m!875287))

(assert (=> d!214384 m!874953))

(declare-fun m!875289 () Bool)

(assert (=> b!608107 m!875289))

(declare-fun m!875291 () Bool)

(assert (=> b!608108 m!875291))

(assert (=> b!608108 m!874609))

(assert (=> b!608108 m!874959))

(assert (=> b!607676 d!214384))

(declare-fun b!608110 () Bool)

(declare-fun e!368528 () Bool)

(declare-fun e!368530 () Bool)

(assert (=> b!608110 (= e!368528 e!368530)))

(declare-fun res!263710 () Bool)

(assert (=> b!608110 (=> (not res!263710) (not e!368530))))

(assert (=> b!608110 (= res!263710 (not ((_ is Nil!6073) input!2705)))))

(declare-fun b!608112 () Bool)

(assert (=> b!608112 (= e!368530 (isPrefix!841 (tail!814 lt!259575) (tail!814 input!2705)))))

(declare-fun d!214386 () Bool)

(declare-fun e!368529 () Bool)

(assert (=> d!214386 e!368529))

(declare-fun res!263708 () Bool)

(assert (=> d!214386 (=> res!263708 e!368529)))

(declare-fun lt!259771 () Bool)

(assert (=> d!214386 (= res!263708 (not lt!259771))))

(assert (=> d!214386 (= lt!259771 e!368528)))

(declare-fun res!263711 () Bool)

(assert (=> d!214386 (=> res!263711 e!368528)))

(assert (=> d!214386 (= res!263711 ((_ is Nil!6073) lt!259575))))

(assert (=> d!214386 (= (isPrefix!841 lt!259575 input!2705) lt!259771)))

(declare-fun b!608113 () Bool)

(assert (=> b!608113 (= e!368529 (>= (size!4779 input!2705) (size!4779 lt!259575)))))

(declare-fun b!608111 () Bool)

(declare-fun res!263709 () Bool)

(assert (=> b!608111 (=> (not res!263709) (not e!368530))))

(assert (=> b!608111 (= res!263709 (= (head!1285 lt!259575) (head!1285 input!2705)))))

(assert (= (and d!214386 (not res!263711)) b!608110))

(assert (= (and b!608110 res!263710) b!608111))

(assert (= (and b!608111 res!263709) b!608112))

(assert (= (and d!214386 (not res!263708)) b!608113))

(assert (=> b!608112 m!875211))

(assert (=> b!608112 m!874999))

(assert (=> b!608112 m!875211))

(assert (=> b!608112 m!874999))

(declare-fun m!875293 () Bool)

(assert (=> b!608112 m!875293))

(assert (=> b!608113 m!874725))

(assert (=> b!608113 m!874609))

(assert (=> b!608111 m!875215))

(assert (=> b!608111 m!874995))

(assert (=> b!607655 d!214386))

(declare-fun d!214388 () Bool)

(assert (=> d!214388 (= (inv!7721 (tag!1475 (rule!1997 token!491))) (= (mod (str.len (value!39411 (tag!1475 (rule!1997 token!491)))) 2) 0))))

(assert (=> b!607654 d!214388))

(declare-fun d!214390 () Bool)

(declare-fun res!263712 () Bool)

(declare-fun e!368531 () Bool)

(assert (=> d!214390 (=> (not res!263712) (not e!368531))))

(assert (=> d!214390 (= res!263712 (semiInverseModEq!486 (toChars!1979 (transformation!1213 (rule!1997 token!491))) (toValue!2120 (transformation!1213 (rule!1997 token!491)))))))

(assert (=> d!214390 (= (inv!7724 (transformation!1213 (rule!1997 token!491))) e!368531)))

(declare-fun b!608114 () Bool)

(assert (=> b!608114 (= e!368531 (equivClasses!469 (toChars!1979 (transformation!1213 (rule!1997 token!491))) (toValue!2120 (transformation!1213 (rule!1997 token!491)))))))

(assert (= (and d!214390 res!263712) b!608114))

(assert (=> d!214390 m!875153))

(assert (=> b!608114 m!875155))

(assert (=> b!607654 d!214390))

(declare-fun d!214392 () Bool)

(declare-fun res!263713 () Bool)

(declare-fun e!368532 () Bool)

(assert (=> d!214392 (=> (not res!263713) (not e!368532))))

(assert (=> d!214392 (= res!263713 (not (isEmpty!4383 (originalCharacters!1252 lt!259579))))))

(assert (=> d!214392 (= (inv!7725 lt!259579) e!368532)))

(declare-fun b!608115 () Bool)

(declare-fun res!263714 () Bool)

(assert (=> b!608115 (=> (not res!263714) (not e!368532))))

(assert (=> b!608115 (= res!263714 (= (originalCharacters!1252 lt!259579) (list!2554 (dynLambda!3525 (toChars!1979 (transformation!1213 (rule!1997 lt!259579))) (value!39437 lt!259579)))))))

(declare-fun b!608116 () Bool)

(assert (=> b!608116 (= e!368532 (= (size!4778 lt!259579) (size!4779 (originalCharacters!1252 lt!259579))))))

(assert (= (and d!214392 res!263713) b!608115))

(assert (= (and b!608115 res!263714) b!608116))

(declare-fun b_lambda!24101 () Bool)

(assert (=> (not b_lambda!24101) (not b!608115)))

(declare-fun tb!53139 () Bool)

(declare-fun t!80695 () Bool)

(assert (=> (and b!607650 (= (toChars!1979 (transformation!1213 (h!11475 rules!3103))) (toChars!1979 (transformation!1213 (rule!1997 lt!259579)))) t!80695) tb!53139))

(declare-fun b!608117 () Bool)

(declare-fun e!368533 () Bool)

(declare-fun tp!188598 () Bool)

(assert (=> b!608117 (= e!368533 (and (inv!7728 (c!112570 (dynLambda!3525 (toChars!1979 (transformation!1213 (rule!1997 lt!259579))) (value!39437 lt!259579)))) tp!188598))))

(declare-fun result!59806 () Bool)

(assert (=> tb!53139 (= result!59806 (and (inv!7729 (dynLambda!3525 (toChars!1979 (transformation!1213 (rule!1997 lt!259579))) (value!39437 lt!259579))) e!368533))))

(assert (= tb!53139 b!608117))

(declare-fun m!875295 () Bool)

(assert (=> b!608117 m!875295))

(declare-fun m!875297 () Bool)

(assert (=> tb!53139 m!875297))

(assert (=> b!608115 t!80695))

(declare-fun b_and!60215 () Bool)

(assert (= b_and!60211 (and (=> t!80695 result!59806) b_and!60215)))

(declare-fun t!80697 () Bool)

(declare-fun tb!53141 () Bool)

(assert (=> (and b!607670 (= (toChars!1979 (transformation!1213 (rule!1997 token!491))) (toChars!1979 (transformation!1213 (rule!1997 lt!259579)))) t!80697) tb!53141))

(declare-fun result!59808 () Bool)

(assert (= result!59808 result!59806))

(assert (=> b!608115 t!80697))

(declare-fun b_and!60217 () Bool)

(assert (= b_and!60213 (and (=> t!80697 result!59808) b_and!60217)))

(declare-fun m!875299 () Bool)

(assert (=> d!214392 m!875299))

(declare-fun m!875301 () Bool)

(assert (=> b!608115 m!875301))

(assert (=> b!608115 m!875301))

(declare-fun m!875303 () Bool)

(assert (=> b!608115 m!875303))

(declare-fun m!875305 () Bool)

(assert (=> b!608116 m!875305))

(assert (=> b!607675 d!214392))

(declare-fun b!608128 () Bool)

(declare-fun b_free!17309 () Bool)

(declare-fun b_next!17325 () Bool)

(assert (=> b!608128 (= b_free!17309 (not b_next!17325))))

(declare-fun tb!53143 () Bool)

(declare-fun t!80699 () Bool)

(assert (=> (and b!608128 (= (toValue!2120 (transformation!1213 (h!11475 (t!80661 rules!3103)))) (toValue!2120 (transformation!1213 (rule!1997 token!491)))) t!80699) tb!53143))

(declare-fun result!59812 () Bool)

(assert (= result!59812 result!59766))

(assert (=> d!214190 t!80699))

(declare-fun t!80701 () Bool)

(declare-fun tb!53145 () Bool)

(assert (=> (and b!608128 (= (toValue!2120 (transformation!1213 (h!11475 (t!80661 rules!3103)))) (toValue!2120 (transformation!1213 (rule!1997 (_1!3738 (v!16466 lt!259602)))))) t!80701) tb!53145))

(declare-fun result!59814 () Bool)

(assert (= result!59814 result!59798))

(assert (=> d!214326 t!80701))

(declare-fun b_and!60219 () Bool)

(declare-fun tp!188608 () Bool)

(assert (=> b!608128 (= tp!188608 (and (=> t!80699 result!59812) (=> t!80701 result!59814) b_and!60219))))

(declare-fun b_free!17311 () Bool)

(declare-fun b_next!17327 () Bool)

(assert (=> b!608128 (= b_free!17311 (not b_next!17327))))

(declare-fun tb!53147 () Bool)

(declare-fun t!80703 () Bool)

(assert (=> (and b!608128 (= (toChars!1979 (transformation!1213 (h!11475 (t!80661 rules!3103)))) (toChars!1979 (transformation!1213 (rule!1997 (_1!3738 (v!16466 lt!259602)))))) t!80703) tb!53147))

(declare-fun result!59816 () Bool)

(assert (= result!59816 result!59792))

(assert (=> d!214324 t!80703))

(declare-fun t!80705 () Bool)

(declare-fun tb!53149 () Bool)

(assert (=> (and b!608128 (= (toChars!1979 (transformation!1213 (h!11475 (t!80661 rules!3103)))) (toChars!1979 (transformation!1213 (rule!1997 token!491)))) t!80705) tb!53149))

(declare-fun result!59818 () Bool)

(assert (= result!59818 result!59802))

(assert (=> d!214346 t!80705))

(assert (=> b!608073 t!80705))

(declare-fun tb!53151 () Bool)

(declare-fun t!80707 () Bool)

(assert (=> (and b!608128 (= (toChars!1979 (transformation!1213 (h!11475 (t!80661 rules!3103)))) (toChars!1979 (transformation!1213 (rule!1997 lt!259579)))) t!80707) tb!53151))

(declare-fun result!59820 () Bool)

(assert (= result!59820 result!59806))

(assert (=> b!608115 t!80707))

(declare-fun tp!188610 () Bool)

(declare-fun b_and!60221 () Bool)

(assert (=> b!608128 (= tp!188610 (and (=> t!80703 result!59816) (=> t!80705 result!59818) (=> t!80707 result!59820) b_and!60221))))

(declare-fun e!368544 () Bool)

(assert (=> b!608128 (= e!368544 (and tp!188608 tp!188610))))

(declare-fun b!608127 () Bool)

(declare-fun tp!188607 () Bool)

(declare-fun e!368545 () Bool)

(assert (=> b!608127 (= e!368545 (and tp!188607 (inv!7721 (tag!1475 (h!11475 (t!80661 rules!3103)))) (inv!7724 (transformation!1213 (h!11475 (t!80661 rules!3103)))) e!368544))))

(declare-fun b!608126 () Bool)

(declare-fun e!368543 () Bool)

(declare-fun tp!188609 () Bool)

(assert (=> b!608126 (= e!368543 (and e!368545 tp!188609))))

(assert (=> b!607662 (= tp!188579 e!368543)))

(assert (= b!608127 b!608128))

(assert (= b!608126 b!608127))

(assert (= (and b!607662 ((_ is Cons!6074) (t!80661 rules!3103))) b!608126))

(declare-fun m!875307 () Bool)

(assert (=> b!608127 m!875307))

(declare-fun m!875309 () Bool)

(assert (=> b!608127 m!875309))

(declare-fun b!608133 () Bool)

(declare-fun e!368548 () Bool)

(declare-fun tp!188613 () Bool)

(assert (=> b!608133 (= e!368548 (and tp_is_empty!3449 tp!188613))))

(assert (=> b!607651 (= tp!188587 e!368548)))

(assert (= (and b!607651 ((_ is Cons!6073) (originalCharacters!1252 token!491))) b!608133))

(declare-fun b!608145 () Bool)

(declare-fun e!368551 () Bool)

(declare-fun tp!188627 () Bool)

(declare-fun tp!188626 () Bool)

(assert (=> b!608145 (= e!368551 (and tp!188627 tp!188626))))

(assert (=> b!607666 (= tp!188584 e!368551)))

(declare-fun b!608147 () Bool)

(declare-fun tp!188625 () Bool)

(declare-fun tp!188628 () Bool)

(assert (=> b!608147 (= e!368551 (and tp!188625 tp!188628))))

(declare-fun b!608144 () Bool)

(assert (=> b!608144 (= e!368551 tp_is_empty!3449)))

(declare-fun b!608146 () Bool)

(declare-fun tp!188624 () Bool)

(assert (=> b!608146 (= e!368551 tp!188624)))

(assert (= (and b!607666 ((_ is ElementMatch!1547) (regex!1213 (h!11475 rules!3103)))) b!608144))

(assert (= (and b!607666 ((_ is Concat!2784) (regex!1213 (h!11475 rules!3103)))) b!608145))

(assert (= (and b!607666 ((_ is Star!1547) (regex!1213 (h!11475 rules!3103)))) b!608146))

(assert (= (and b!607666 ((_ is Union!1547) (regex!1213 (h!11475 rules!3103)))) b!608147))

(declare-fun b!608148 () Bool)

(declare-fun e!368552 () Bool)

(declare-fun tp!188629 () Bool)

(assert (=> b!608148 (= e!368552 (and tp_is_empty!3449 tp!188629))))

(assert (=> b!607661 (= tp!188582 e!368552)))

(assert (= (and b!607661 ((_ is Cons!6073) (t!80660 suffix!1342))) b!608148))

(declare-fun b!608150 () Bool)

(declare-fun e!368553 () Bool)

(declare-fun tp!188633 () Bool)

(declare-fun tp!188632 () Bool)

(assert (=> b!608150 (= e!368553 (and tp!188633 tp!188632))))

(assert (=> b!607654 (= tp!188588 e!368553)))

(declare-fun b!608152 () Bool)

(declare-fun tp!188631 () Bool)

(declare-fun tp!188634 () Bool)

(assert (=> b!608152 (= e!368553 (and tp!188631 tp!188634))))

(declare-fun b!608149 () Bool)

(assert (=> b!608149 (= e!368553 tp_is_empty!3449)))

(declare-fun b!608151 () Bool)

(declare-fun tp!188630 () Bool)

(assert (=> b!608151 (= e!368553 tp!188630)))

(assert (= (and b!607654 ((_ is ElementMatch!1547) (regex!1213 (rule!1997 token!491)))) b!608149))

(assert (= (and b!607654 ((_ is Concat!2784) (regex!1213 (rule!1997 token!491)))) b!608150))

(assert (= (and b!607654 ((_ is Star!1547) (regex!1213 (rule!1997 token!491)))) b!608151))

(assert (= (and b!607654 ((_ is Union!1547) (regex!1213 (rule!1997 token!491)))) b!608152))

(declare-fun b!608153 () Bool)

(declare-fun e!368554 () Bool)

(declare-fun tp!188635 () Bool)

(assert (=> b!608153 (= e!368554 (and tp_is_empty!3449 tp!188635))))

(assert (=> b!607649 (= tp!188580 e!368554)))

(assert (= (and b!607649 ((_ is Cons!6073) (t!80660 input!2705))) b!608153))

(declare-fun b_lambda!24103 () Bool)

(assert (= b_lambda!24099 (or (and b!607650 b_free!17303 (= (toChars!1979 (transformation!1213 (h!11475 rules!3103))) (toChars!1979 (transformation!1213 (rule!1997 token!491))))) (and b!607670 b_free!17307) (and b!608128 b_free!17311 (= (toChars!1979 (transformation!1213 (h!11475 (t!80661 rules!3103)))) (toChars!1979 (transformation!1213 (rule!1997 token!491))))) b_lambda!24103)))

(declare-fun b_lambda!24105 () Bool)

(assert (= b_lambda!24081 (or (and b!607650 b_free!17301 (= (toValue!2120 (transformation!1213 (h!11475 rules!3103))) (toValue!2120 (transformation!1213 (rule!1997 token!491))))) (and b!607670 b_free!17305) (and b!608128 b_free!17309 (= (toValue!2120 (transformation!1213 (h!11475 (t!80661 rules!3103)))) (toValue!2120 (transformation!1213 (rule!1997 token!491))))) b_lambda!24105)))

(declare-fun b_lambda!24107 () Bool)

(assert (= b_lambda!24097 (or (and b!607650 b_free!17303 (= (toChars!1979 (transformation!1213 (h!11475 rules!3103))) (toChars!1979 (transformation!1213 (rule!1997 token!491))))) (and b!607670 b_free!17307) (and b!608128 b_free!17311 (= (toChars!1979 (transformation!1213 (h!11475 (t!80661 rules!3103)))) (toChars!1979 (transformation!1213 (rule!1997 token!491))))) b_lambda!24107)))

(check-sat (not b!607952) (not b!607833) (not b!608150) (not d!214392) (not b!607781) (not b!608088) (not b!607706) b_and!60219 (not b!607987) (not b!607750) (not b!607955) (not b!608111) (not b!607797) (not b_lambda!24093) (not b!608039) (not b!607800) (not d!214248) (not b!607780) (not b!608087) (not b!607782) (not b!607745) (not d!214234) (not b!607803) (not d!214174) (not b!608073) (not d!214202) (not d!214250) (not b!608113) (not b!607702) b_and!60215 (not b!607920) (not b!608152) (not b!608086) (not b!607991) (not b!608101) b_and!60217 (not d!214334) (not d!214188) (not b!607890) (not b!608035) (not b!607749) (not b_lambda!24103) (not b_lambda!24105) (not b!607747) (not tb!53135) (not b_lambda!24107) (not b!607900) (not d!214346) (not b!607701) (not b!608038) (not b!608148) (not b!607884) (not b_next!17327) b_and!60205 (not b!607700) (not b!608107) (not d!214328) (not d!214258) (not d!214308) (not bm!40793) (not b!607703) (not b!608037) (not d!214270) (not d!214252) (not b!608117) (not b!608116) (not b_next!17323) (not b!608082) (not b!607894) (not d!214208) (not b!607786) (not b!607965) (not d!214176) (not b!607746) (not b!608146) (not b!607785) (not b!607928) (not b!608151) (not b!608034) (not b!608054) (not d!214186) (not b!607784) (not d!214368) (not b!608133) (not tb!53139) (not d!214310) (not b!607930) (not b!608112) (not d!214324) (not b!608147) (not d!214244) (not d!214382) (not b!607748) (not b!607699) (not bm!40797) (not b!608126) (not d!214288) (not b!608127) (not d!214344) (not b!607801) (not b!607799) (not b!607832) (not b!607975) (not b!607967) (not b!607989) (not d!214196) (not d!214284) (not b!608105) (not b!608056) (not b!607756) (not tb!53107) (not tb!53127) (not d!214292) (not d!214332) b_and!60221 (not b!608114) (not d!214194) (not b_next!17319) (not b!607698) (not b!607982) (not d!214304) (not d!214226) (not d!214374) (not b!607974) (not b!607968) (not d!214294) (not b!608153) tp_is_empty!3449 (not d!214192) (not b_next!17321) (not b!607885) (not tb!53131) (not b!607705) (not b!607783) (not b_next!17325) (not b!607796) (not b!607751) (not bm!40800) (not d!214330) (not d!214384) (not b!607744) (not b!608103) (not b!607966) (not b!608145) (not b!607941) (not b!607990) (not b_lambda!24101) (not b!608108) (not b!608031) (not d!214356) (not b_lambda!24095) (not b!608078) (not b!607899) (not b!607804) (not b!608030) (not b!608115) b_and!60203 (not b!608083) (not d!214214) (not b!607882) (not b!608033) (not b!607891) (not b!607798) (not d!214322) (not b!607779) (not d!214390) (not b!608100) (not b!608074) (not d!214320) (not b!607981) (not d!214340) (not d!214200) (not b_next!17317) (not d!214198) (not b!607973))
(check-sat b_and!60219 b_and!60215 b_and!60217 (not b_next!17323) b_and!60203 (not b_next!17317) (not b_next!17327) b_and!60205 b_and!60221 (not b_next!17319) (not b_next!17325) (not b_next!17321))
