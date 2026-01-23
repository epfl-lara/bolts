; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!340270 () Bool)

(assert start!340270)

(declare-fun b!3642405 () Bool)

(declare-fun b_free!95513 () Bool)

(declare-fun b_next!96217 () Bool)

(assert (=> b!3642405 (= b_free!95513 (not b_next!96217))))

(declare-fun tp!1111032 () Bool)

(declare-fun b_and!268627 () Bool)

(assert (=> b!3642405 (= tp!1111032 b_and!268627)))

(declare-fun b_free!95515 () Bool)

(declare-fun b_next!96219 () Bool)

(assert (=> b!3642405 (= b_free!95515 (not b_next!96219))))

(declare-fun tp!1111033 () Bool)

(declare-fun b_and!268629 () Bool)

(assert (=> b!3642405 (= tp!1111033 b_and!268629)))

(declare-fun b!3642394 () Bool)

(declare-fun b_free!95517 () Bool)

(declare-fun b_next!96221 () Bool)

(assert (=> b!3642394 (= b_free!95517 (not b_next!96221))))

(declare-fun tp!1111031 () Bool)

(declare-fun b_and!268631 () Bool)

(assert (=> b!3642394 (= tp!1111031 b_and!268631)))

(declare-fun b_free!95519 () Bool)

(declare-fun b_next!96223 () Bool)

(assert (=> b!3642394 (= b_free!95519 (not b_next!96223))))

(declare-fun tp!1111024 () Bool)

(declare-fun b_and!268633 () Bool)

(assert (=> b!3642394 (= tp!1111024 b_and!268633)))

(declare-fun b!3642424 () Bool)

(declare-fun b_free!95521 () Bool)

(declare-fun b_next!96225 () Bool)

(assert (=> b!3642424 (= b_free!95521 (not b_next!96225))))

(declare-fun tp!1111034 () Bool)

(declare-fun b_and!268635 () Bool)

(assert (=> b!3642424 (= tp!1111034 b_and!268635)))

(declare-fun b_free!95523 () Bool)

(declare-fun b_next!96227 () Bool)

(assert (=> b!3642424 (= b_free!95523 (not b_next!96227))))

(declare-fun tp!1111025 () Bool)

(declare-fun b_and!268637 () Bool)

(assert (=> b!3642424 (= tp!1111025 b_and!268637)))

(declare-fun b!3642415 () Bool)

(declare-fun b_free!95525 () Bool)

(declare-fun b_next!96229 () Bool)

(assert (=> b!3642415 (= b_free!95525 (not b_next!96229))))

(declare-fun tp!1111026 () Bool)

(declare-fun b_and!268639 () Bool)

(assert (=> b!3642415 (= tp!1111026 b_and!268639)))

(declare-fun b_free!95527 () Bool)

(declare-fun b_next!96231 () Bool)

(assert (=> b!3642415 (= b_free!95527 (not b_next!96231))))

(declare-fun tp!1111027 () Bool)

(declare-fun b_and!268641 () Bool)

(assert (=> b!3642415 (= tp!1111027 b_and!268641)))

(declare-fun e!2254808 () Bool)

(assert (=> b!3642394 (= e!2254808 (and tp!1111031 tp!1111024))))

(declare-fun b!3642395 () Bool)

(declare-fun e!2254799 () Bool)

(assert (=> b!3642395 (= e!2254799 true)))

(assert (=> b!3642395 false))

(declare-datatypes ((C!21176 0))(
  ( (C!21177 (val!12636 Int)) )
))
(declare-fun lt!1261391 () C!21176)

(declare-datatypes ((List!38511 0))(
  ( (Nil!38387) (Cons!38387 (h!43807 (_ BitVec 16)) (t!296654 List!38511)) )
))
(declare-datatypes ((TokenValue!5966 0))(
  ( (FloatLiteralValue!11932 (text!42207 List!38511)) (TokenValueExt!5965 (__x!24149 Int)) (Broken!29830 (value!183910 List!38511)) (Object!6089) (End!5966) (Def!5966) (Underscore!5966) (Match!5966) (Else!5966) (Error!5966) (Case!5966) (If!5966) (Extends!5966) (Abstract!5966) (Class!5966) (Val!5966) (DelimiterValue!11932 (del!6026 List!38511)) (KeywordValue!5972 (value!183911 List!38511)) (CommentValue!11932 (value!183912 List!38511)) (WhitespaceValue!11932 (value!183913 List!38511)) (IndentationValue!5966 (value!183914 List!38511)) (String!43163) (Int32!5966) (Broken!29831 (value!183915 List!38511)) (Boolean!5967) (Unit!55243) (OperatorValue!5969 (op!6026 List!38511)) (IdentifierValue!11932 (value!183916 List!38511)) (IdentifierValue!11933 (value!183917 List!38511)) (WhitespaceValue!11933 (value!183918 List!38511)) (True!11932) (False!11932) (Broken!29832 (value!183919 List!38511)) (Broken!29833 (value!183920 List!38511)) (True!11933) (RightBrace!5966) (RightBracket!5966) (Colon!5966) (Null!5966) (Comma!5966) (LeftBracket!5966) (False!11933) (LeftBrace!5966) (ImaginaryLiteralValue!5966 (text!42208 List!38511)) (StringLiteralValue!17898 (value!183921 List!38511)) (EOFValue!5966 (value!183922 List!38511)) (IdentValue!5966 (value!183923 List!38511)) (DelimiterValue!11933 (value!183924 List!38511)) (DedentValue!5966 (value!183925 List!38511)) (NewLineValue!5966 (value!183926 List!38511)) (IntegerValue!17898 (value!183927 (_ BitVec 32)) (text!42209 List!38511)) (IntegerValue!17899 (value!183928 Int) (text!42210 List!38511)) (Times!5966) (Or!5966) (Equal!5966) (Minus!5966) (Broken!29834 (value!183929 List!38511)) (And!5966) (Div!5966) (LessEqual!5966) (Mod!5966) (Concat!16461) (Not!5966) (Plus!5966) (SpaceValue!5966 (value!183930 List!38511)) (IntegerValue!17900 (value!183931 Int) (text!42211 List!38511)) (StringLiteralValue!17899 (text!42212 List!38511)) (FloatLiteralValue!11933 (text!42213 List!38511)) (BytesLiteralValue!5966 (value!183932 List!38511)) (CommentValue!11933 (value!183933 List!38511)) (StringLiteralValue!17900 (value!183934 List!38511)) (ErrorTokenValue!5966 (msg!6027 List!38511)) )
))
(declare-datatypes ((Regex!10495 0))(
  ( (ElementMatch!10495 (c!629758 C!21176)) (Concat!16462 (regOne!21502 Regex!10495) (regTwo!21502 Regex!10495)) (EmptyExpr!10495) (Star!10495 (reg!10824 Regex!10495)) (EmptyLang!10495) (Union!10495 (regOne!21503 Regex!10495) (regTwo!21503 Regex!10495)) )
))
(declare-datatypes ((String!43164 0))(
  ( (String!43165 (value!183935 String)) )
))
(declare-datatypes ((List!38512 0))(
  ( (Nil!38388) (Cons!38388 (h!43808 C!21176) (t!296655 List!38512)) )
))
(declare-datatypes ((IArray!23451 0))(
  ( (IArray!23452 (innerList!11783 List!38512)) )
))
(declare-datatypes ((Conc!11723 0))(
  ( (Node!11723 (left!29973 Conc!11723) (right!30303 Conc!11723) (csize!23676 Int) (cheight!11934 Int)) (Leaf!18202 (xs!14925 IArray!23451) (csize!23677 Int)) (Empty!11723) )
))
(declare-datatypes ((BalanceConc!23060 0))(
  ( (BalanceConc!23061 (c!629759 Conc!11723)) )
))
(declare-datatypes ((TokenValueInjection!11360 0))(
  ( (TokenValueInjection!11361 (toValue!8028 Int) (toChars!7887 Int)) )
))
(declare-datatypes ((Rule!11272 0))(
  ( (Rule!11273 (regex!5736 Regex!10495) (tag!6488 String!43164) (isSeparator!5736 Bool) (transformation!5736 TokenValueInjection!11360)) )
))
(declare-datatypes ((Token!10838 0))(
  ( (Token!10839 (value!183936 TokenValue!5966) (rule!8522 Rule!11272) (size!29299 Int) (originalCharacters!6450 List!38512)) )
))
(declare-datatypes ((tuple2!38260 0))(
  ( (tuple2!38261 (_1!22264 Token!10838) (_2!22264 List!38512)) )
))
(declare-fun lt!1261394 () tuple2!38260)

(declare-datatypes ((Unit!55244 0))(
  ( (Unit!55245) )
))
(declare-fun lt!1261386 () Unit!55244)

(declare-fun lt!1261393 () List!38512)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!684 (Regex!10495 List!38512 C!21176) Unit!55244)

(assert (=> b!3642395 (= lt!1261386 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!684 (regex!5736 (rule!8522 (_1!22264 lt!1261394))) lt!1261393 lt!1261391))))

(declare-fun contains!7537 (List!38512 C!21176) Bool)

(declare-fun usedCharacters!948 (Regex!10495) List!38512)

(assert (=> b!3642395 (not (contains!7537 (usedCharacters!948 (regex!5736 (rule!8522 (_1!22264 lt!1261394)))) lt!1261391))))

(declare-datatypes ((List!38513 0))(
  ( (Nil!38389) (Cons!38389 (h!43809 Rule!11272) (t!296656 List!38513)) )
))
(declare-fun rules!3307 () List!38513)

(declare-datatypes ((LexerInterface!5325 0))(
  ( (LexerInterfaceExt!5322 (__x!24150 Int)) (Lexer!5323) )
))
(declare-fun thiss!23823 () LexerInterface!5325)

(declare-fun rule!403 () Rule!11272)

(declare-fun lt!1261406 () Unit!55244)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!392 (LexerInterface!5325 List!38513 List!38513 Rule!11272 Rule!11272 C!21176) Unit!55244)

(assert (=> b!3642395 (= lt!1261406 (lemmaNonSepRuleNotContainsCharContainedInASepRule!392 thiss!23823 rules!3307 rules!3307 (rule!8522 (_1!22264 lt!1261394)) rule!403 lt!1261391))))

(declare-fun b!3642396 () Bool)

(declare-fun res!1476580 () Bool)

(declare-fun e!2254792 () Bool)

(assert (=> b!3642396 (=> res!1476580 e!2254792)))

(declare-fun sepAndNonSepRulesDisjointChars!1904 (List!38513 List!38513) Bool)

(assert (=> b!3642396 (= res!1476580 (not (sepAndNonSepRulesDisjointChars!1904 rules!3307 rules!3307)))))

(declare-fun b!3642397 () Bool)

(declare-fun e!2254804 () Bool)

(declare-fun tp_is_empty!18073 () Bool)

(declare-fun tp!1111035 () Bool)

(assert (=> b!3642397 (= e!2254804 (and tp_is_empty!18073 tp!1111035))))

(declare-fun b!3642398 () Bool)

(declare-fun e!2254798 () Bool)

(declare-fun lt!1261399 () Rule!11272)

(assert (=> b!3642398 (= e!2254798 (= (rule!8522 (_1!22264 lt!1261394)) lt!1261399))))

(declare-fun b!3642399 () Bool)

(declare-fun res!1476570 () Bool)

(assert (=> b!3642399 (=> res!1476570 e!2254799)))

(declare-fun lt!1261398 () Bool)

(assert (=> b!3642399 (= res!1476570 lt!1261398)))

(declare-fun b!3642400 () Bool)

(declare-fun res!1476560 () Bool)

(declare-fun e!2254803 () Bool)

(assert (=> b!3642400 (=> (not res!1476560) (not e!2254803))))

(declare-fun anOtherTypeRule!33 () Rule!11272)

(declare-fun contains!7538 (List!38513 Rule!11272) Bool)

(assert (=> b!3642400 (= res!1476560 (contains!7538 rules!3307 anOtherTypeRule!33))))

(declare-fun e!2254812 () Bool)

(declare-fun tp!1111029 () Bool)

(declare-fun b!3642401 () Bool)

(declare-fun inv!51821 (String!43164) Bool)

(declare-fun inv!51824 (TokenValueInjection!11360) Bool)

(assert (=> b!3642401 (= e!2254812 (and tp!1111029 (inv!51821 (tag!6488 rule!403)) (inv!51824 (transformation!5736 rule!403)) e!2254808))))

(declare-fun b!3642402 () Bool)

(declare-fun e!2254796 () Bool)

(assert (=> b!3642402 (= e!2254792 e!2254796)))

(declare-fun res!1476574 () Bool)

(assert (=> b!3642402 (=> res!1476574 e!2254796)))

(declare-fun lt!1261385 () List!38512)

(declare-fun isPrefix!3099 (List!38512 List!38512) Bool)

(assert (=> b!3642402 (= res!1476574 (not (isPrefix!3099 lt!1261393 lt!1261385)))))

(declare-fun ++!9552 (List!38512 List!38512) List!38512)

(assert (=> b!3642402 (isPrefix!3099 lt!1261393 (++!9552 lt!1261393 (_2!22264 lt!1261394)))))

(declare-fun lt!1261392 () Unit!55244)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2018 (List!38512 List!38512) Unit!55244)

(assert (=> b!3642402 (= lt!1261392 (lemmaConcatTwoListThenFirstIsPrefix!2018 lt!1261393 (_2!22264 lt!1261394)))))

(declare-fun lt!1261397 () BalanceConc!23060)

(declare-fun list!14214 (BalanceConc!23060) List!38512)

(assert (=> b!3642402 (= lt!1261393 (list!14214 lt!1261397))))

(declare-fun charsOf!3750 (Token!10838) BalanceConc!23060)

(assert (=> b!3642402 (= lt!1261397 (charsOf!3750 (_1!22264 lt!1261394)))))

(declare-fun e!2254806 () Bool)

(assert (=> b!3642402 e!2254806))

(declare-fun res!1476563 () Bool)

(assert (=> b!3642402 (=> (not res!1476563) (not e!2254806))))

(declare-datatypes ((Option!8100 0))(
  ( (None!8099) (Some!8099 (v!37935 Rule!11272)) )
))
(declare-fun lt!1261408 () Option!8100)

(declare-fun isDefined!6332 (Option!8100) Bool)

(assert (=> b!3642402 (= res!1476563 (isDefined!6332 lt!1261408))))

(declare-fun getRuleFromTag!1340 (LexerInterface!5325 List!38513 String!43164) Option!8100)

(assert (=> b!3642402 (= lt!1261408 (getRuleFromTag!1340 thiss!23823 rules!3307 (tag!6488 (rule!8522 (_1!22264 lt!1261394)))))))

(declare-fun lt!1261405 () Unit!55244)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1340 (LexerInterface!5325 List!38513 List!38512 Token!10838) Unit!55244)

(assert (=> b!3642402 (= lt!1261405 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1340 thiss!23823 rules!3307 lt!1261385 (_1!22264 lt!1261394)))))

(declare-datatypes ((Option!8101 0))(
  ( (None!8100) (Some!8100 (v!37936 tuple2!38260)) )
))
(declare-fun lt!1261383 () Option!8101)

(declare-fun get!12578 (Option!8101) tuple2!38260)

(assert (=> b!3642402 (= lt!1261394 (get!12578 lt!1261383))))

(declare-fun suffix!1395 () List!38512)

(declare-fun lt!1261404 () Unit!55244)

(declare-fun lt!1261384 () List!38512)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1003 (LexerInterface!5325 List!38513 List!38512 List!38512) Unit!55244)

(assert (=> b!3642402 (= lt!1261404 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1003 thiss!23823 rules!3307 lt!1261384 suffix!1395))))

(declare-fun maxPrefix!2859 (LexerInterface!5325 List!38513 List!38512) Option!8101)

(assert (=> b!3642402 (= lt!1261383 (maxPrefix!2859 thiss!23823 rules!3307 lt!1261385))))

(assert (=> b!3642402 (isPrefix!3099 lt!1261384 lt!1261385)))

(declare-fun lt!1261403 () Unit!55244)

(assert (=> b!3642402 (= lt!1261403 (lemmaConcatTwoListThenFirstIsPrefix!2018 lt!1261384 suffix!1395))))

(assert (=> b!3642402 (= lt!1261385 (++!9552 lt!1261384 suffix!1395))))

(declare-fun b!3642403 () Bool)

(declare-fun e!2254811 () Bool)

(declare-fun e!2254800 () Bool)

(assert (=> b!3642403 (= e!2254811 (not e!2254800))))

(declare-fun res!1476577 () Bool)

(assert (=> b!3642403 (=> res!1476577 e!2254800)))

(declare-fun matchR!5064 (Regex!10495 List!38512) Bool)

(assert (=> b!3642403 (= res!1476577 (not (matchR!5064 (regex!5736 rule!403) lt!1261384)))))

(declare-fun ruleValid!2000 (LexerInterface!5325 Rule!11272) Bool)

(assert (=> b!3642403 (ruleValid!2000 thiss!23823 rule!403)))

(declare-fun lt!1261400 () Unit!55244)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1154 (LexerInterface!5325 Rule!11272 List!38513) Unit!55244)

(assert (=> b!3642403 (= lt!1261400 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1154 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3642404 () Bool)

(declare-fun e!2254805 () Bool)

(assert (=> b!3642404 (= e!2254803 e!2254805)))

(declare-fun res!1476572 () Bool)

(assert (=> b!3642404 (=> (not res!1476572) (not e!2254805))))

(declare-fun lt!1261410 () Option!8101)

(declare-fun isDefined!6333 (Option!8101) Bool)

(assert (=> b!3642404 (= res!1476572 (isDefined!6333 lt!1261410))))

(assert (=> b!3642404 (= lt!1261410 (maxPrefix!2859 thiss!23823 rules!3307 lt!1261384))))

(declare-fun token!511 () Token!10838)

(assert (=> b!3642404 (= lt!1261384 (list!14214 (charsOf!3750 token!511)))))

(declare-fun e!2254794 () Bool)

(assert (=> b!3642405 (= e!2254794 (and tp!1111032 tp!1111033))))

(declare-fun b!3642406 () Bool)

(declare-fun res!1476579 () Bool)

(assert (=> b!3642406 (=> (not res!1476579) (not e!2254803))))

(assert (=> b!3642406 (= res!1476579 (contains!7538 rules!3307 rule!403))))

(declare-fun b!3642407 () Bool)

(declare-fun e!2254809 () Bool)

(assert (=> b!3642407 (= e!2254809 e!2254799)))

(declare-fun res!1476573 () Bool)

(assert (=> b!3642407 (=> res!1476573 e!2254799)))

(assert (=> b!3642407 (= res!1476573 (or (not (isSeparator!5736 rule!403)) (isSeparator!5736 (rule!8522 (_1!22264 lt!1261394)))))))

(declare-fun lt!1261401 () Unit!55244)

(declare-fun e!2254801 () Unit!55244)

(assert (=> b!3642407 (= lt!1261401 e!2254801)))

(declare-fun c!629757 () Bool)

(assert (=> b!3642407 (= c!629757 lt!1261398)))

(declare-fun lt!1261395 () List!38512)

(assert (=> b!3642407 (= lt!1261398 (not (contains!7537 lt!1261395 lt!1261391)))))

(declare-fun head!7738 (List!38512) C!21176)

(assert (=> b!3642407 (= lt!1261391 (head!7738 lt!1261393))))

(declare-fun b!3642408 () Bool)

(declare-fun res!1476564 () Bool)

(assert (=> b!3642408 (=> res!1476564 e!2254799)))

(assert (=> b!3642408 (= res!1476564 (not (contains!7537 lt!1261384 lt!1261391)))))

(declare-fun tp!1111036 () Bool)

(declare-fun b!3642409 () Bool)

(declare-fun e!2254795 () Bool)

(assert (=> b!3642409 (= e!2254795 (and tp!1111036 (inv!51821 (tag!6488 (h!43809 rules!3307))) (inv!51824 (transformation!5736 (h!43809 rules!3307))) e!2254794))))

(declare-fun b!3642410 () Bool)

(assert (=> b!3642410 (= e!2254806 e!2254798)))

(declare-fun res!1476576 () Bool)

(assert (=> b!3642410 (=> (not res!1476576) (not e!2254798))))

(assert (=> b!3642410 (= res!1476576 (matchR!5064 (regex!5736 lt!1261399) (list!14214 (charsOf!3750 (_1!22264 lt!1261394)))))))

(declare-fun get!12579 (Option!8100) Rule!11272)

(assert (=> b!3642410 (= lt!1261399 (get!12579 lt!1261408))))

(declare-fun b!3642411 () Bool)

(assert (=> b!3642411 (= e!2254800 e!2254792)))

(declare-fun res!1476578 () Bool)

(assert (=> b!3642411 (=> res!1476578 e!2254792)))

(declare-fun lt!1261387 () C!21176)

(assert (=> b!3642411 (= res!1476578 (contains!7537 lt!1261395 lt!1261387))))

(assert (=> b!3642411 (= lt!1261387 (head!7738 suffix!1395))))

(assert (=> b!3642411 (= lt!1261395 (usedCharacters!948 (regex!5736 rule!403)))))

(declare-fun b!3642412 () Bool)

(declare-fun e!2254793 () Bool)

(assert (=> b!3642412 (= e!2254796 e!2254793)))

(declare-fun res!1476561 () Bool)

(assert (=> b!3642412 (=> res!1476561 e!2254793)))

(declare-fun apply!9238 (TokenValueInjection!11360 BalanceConc!23060) TokenValue!5966)

(declare-fun size!29300 (BalanceConc!23060) Int)

(assert (=> b!3642412 (= res!1476561 (not (= lt!1261383 (Some!8100 (tuple2!38261 (Token!10839 (apply!9238 (transformation!5736 (rule!8522 (_1!22264 lt!1261394))) lt!1261397) (rule!8522 (_1!22264 lt!1261394)) (size!29300 lt!1261397) lt!1261393) (_2!22264 lt!1261394))))))))

(declare-fun lt!1261390 () Unit!55244)

(declare-fun lemmaCharactersSize!781 (Token!10838) Unit!55244)

(assert (=> b!3642412 (= lt!1261390 (lemmaCharactersSize!781 (_1!22264 lt!1261394)))))

(declare-fun lt!1261411 () Unit!55244)

(declare-fun lemmaEqSameImage!919 (TokenValueInjection!11360 BalanceConc!23060 BalanceConc!23060) Unit!55244)

(declare-fun seqFromList!4285 (List!38512) BalanceConc!23060)

(assert (=> b!3642412 (= lt!1261411 (lemmaEqSameImage!919 (transformation!5736 (rule!8522 (_1!22264 lt!1261394))) lt!1261397 (seqFromList!4285 (originalCharacters!6450 (_1!22264 lt!1261394)))))))

(declare-fun lt!1261388 () Unit!55244)

(declare-fun lemmaSemiInverse!1485 (TokenValueInjection!11360 BalanceConc!23060) Unit!55244)

(assert (=> b!3642412 (= lt!1261388 (lemmaSemiInverse!1485 (transformation!5736 (rule!8522 (_1!22264 lt!1261394))) lt!1261397))))

(declare-fun b!3642413 () Bool)

(declare-fun e!2254787 () Bool)

(declare-fun tp!1111030 () Bool)

(assert (=> b!3642413 (= e!2254787 (and e!2254795 tp!1111030))))

(declare-fun e!2254788 () Bool)

(declare-fun e!2254790 () Bool)

(declare-fun tp!1111037 () Bool)

(declare-fun b!3642414 () Bool)

(assert (=> b!3642414 (= e!2254790 (and tp!1111037 (inv!51821 (tag!6488 (rule!8522 token!511))) (inv!51824 (transformation!5736 (rule!8522 token!511))) e!2254788))))

(declare-fun e!2254785 () Bool)

(assert (=> b!3642415 (= e!2254785 (and tp!1111026 tp!1111027))))

(declare-fun b!3642416 () Bool)

(declare-fun res!1476559 () Bool)

(assert (=> b!3642416 (=> (not res!1476559) (not e!2254803))))

(declare-fun isEmpty!22732 (List!38513) Bool)

(assert (=> b!3642416 (= res!1476559 (not (isEmpty!22732 rules!3307)))))

(declare-fun e!2254810 () Bool)

(declare-fun b!3642417 () Bool)

(declare-fun tp!1111028 () Bool)

(declare-fun inv!21 (TokenValue!5966) Bool)

(assert (=> b!3642417 (= e!2254810 (and (inv!21 (value!183936 token!511)) e!2254790 tp!1111028))))

(declare-fun b!3642418 () Bool)

(assert (=> b!3642418 (= e!2254805 e!2254811)))

(declare-fun res!1476581 () Bool)

(assert (=> b!3642418 (=> (not res!1476581) (not e!2254811))))

(declare-fun lt!1261381 () tuple2!38260)

(assert (=> b!3642418 (= res!1476581 (= (_1!22264 lt!1261381) token!511))))

(assert (=> b!3642418 (= lt!1261381 (get!12578 lt!1261410))))

(declare-fun b!3642419 () Bool)

(declare-fun res!1476575 () Bool)

(assert (=> b!3642419 (=> res!1476575 e!2254792)))

(assert (=> b!3642419 (= res!1476575 (not (contains!7537 (usedCharacters!948 (regex!5736 anOtherTypeRule!33)) lt!1261387)))))

(declare-fun b!3642420 () Bool)

(declare-fun res!1476566 () Bool)

(assert (=> b!3642420 (=> (not res!1476566) (not e!2254803))))

(assert (=> b!3642420 (= res!1476566 (not (= (isSeparator!5736 anOtherTypeRule!33) (isSeparator!5736 rule!403))))))

(declare-fun b!3642421 () Bool)

(assert (=> b!3642421 (= e!2254793 e!2254809)))

(declare-fun res!1476567 () Bool)

(assert (=> b!3642421 (=> res!1476567 e!2254809)))

(declare-fun lt!1261412 () Option!8101)

(declare-fun lt!1261409 () List!38512)

(assert (=> b!3642421 (= res!1476567 (or (not (= lt!1261409 (_2!22264 lt!1261394))) (not (= lt!1261412 (Some!8100 (tuple2!38261 (_1!22264 lt!1261394) lt!1261409))))))))

(assert (=> b!3642421 (= (_2!22264 lt!1261394) lt!1261409)))

(declare-fun lt!1261407 () Unit!55244)

(declare-fun lemmaSamePrefixThenSameSuffix!1426 (List!38512 List!38512 List!38512 List!38512 List!38512) Unit!55244)

(assert (=> b!3642421 (= lt!1261407 (lemmaSamePrefixThenSameSuffix!1426 lt!1261393 (_2!22264 lt!1261394) lt!1261393 lt!1261409 lt!1261385))))

(declare-fun getSuffix!1652 (List!38512 List!38512) List!38512)

(assert (=> b!3642421 (= lt!1261409 (getSuffix!1652 lt!1261385 lt!1261393))))

(declare-fun lt!1261396 () Int)

(declare-fun lt!1261402 () TokenValue!5966)

(assert (=> b!3642421 (= lt!1261412 (Some!8100 (tuple2!38261 (Token!10839 lt!1261402 (rule!8522 (_1!22264 lt!1261394)) lt!1261396 lt!1261393) (_2!22264 lt!1261394))))))

(declare-fun maxPrefixOneRule!1997 (LexerInterface!5325 Rule!11272 List!38512) Option!8101)

(assert (=> b!3642421 (= lt!1261412 (maxPrefixOneRule!1997 thiss!23823 (rule!8522 (_1!22264 lt!1261394)) lt!1261385))))

(declare-fun size!29301 (List!38512) Int)

(assert (=> b!3642421 (= lt!1261396 (size!29301 lt!1261393))))

(assert (=> b!3642421 (= lt!1261402 (apply!9238 (transformation!5736 (rule!8522 (_1!22264 lt!1261394))) (seqFromList!4285 lt!1261393)))))

(declare-fun lt!1261382 () Unit!55244)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1053 (LexerInterface!5325 List!38513 List!38512 List!38512 List!38512 Rule!11272) Unit!55244)

(assert (=> b!3642421 (= lt!1261382 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1053 thiss!23823 rules!3307 lt!1261393 lt!1261385 (_2!22264 lt!1261394) (rule!8522 (_1!22264 lt!1261394))))))

(declare-fun b!3642422 () Bool)

(declare-fun res!1476569 () Bool)

(assert (=> b!3642422 (=> res!1476569 e!2254796)))

(assert (=> b!3642422 (= res!1476569 (not (matchR!5064 (regex!5736 (rule!8522 (_1!22264 lt!1261394))) lt!1261393)))))

(declare-fun res!1476558 () Bool)

(assert (=> start!340270 (=> (not res!1476558) (not e!2254803))))

(get-info :version)

(assert (=> start!340270 (= res!1476558 ((_ is Lexer!5323) thiss!23823))))

(assert (=> start!340270 e!2254803))

(assert (=> start!340270 e!2254787))

(assert (=> start!340270 e!2254804))

(assert (=> start!340270 true))

(declare-fun inv!51825 (Token!10838) Bool)

(assert (=> start!340270 (and (inv!51825 token!511) e!2254810)))

(assert (=> start!340270 e!2254812))

(declare-fun e!2254786 () Bool)

(assert (=> start!340270 e!2254786))

(declare-fun b!3642423 () Bool)

(declare-fun Unit!55246 () Unit!55244)

(assert (=> b!3642423 (= e!2254801 Unit!55246)))

(assert (=> b!3642424 (= e!2254788 (and tp!1111034 tp!1111025))))

(declare-fun b!3642425 () Bool)

(declare-fun res!1476568 () Bool)

(assert (=> b!3642425 (=> (not res!1476568) (not e!2254803))))

(declare-fun rulesInvariant!4722 (LexerInterface!5325 List!38513) Bool)

(assert (=> b!3642425 (= res!1476568 (rulesInvariant!4722 thiss!23823 rules!3307))))

(declare-fun tp!1111038 () Bool)

(declare-fun b!3642426 () Bool)

(assert (=> b!3642426 (= e!2254786 (and tp!1111038 (inv!51821 (tag!6488 anOtherTypeRule!33)) (inv!51824 (transformation!5736 anOtherTypeRule!33)) e!2254785))))

(declare-fun b!3642427 () Bool)

(declare-fun Unit!55247 () Unit!55244)

(assert (=> b!3642427 (= e!2254801 Unit!55247)))

(declare-fun lt!1261389 () Unit!55244)

(assert (=> b!3642427 (= lt!1261389 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!684 (regex!5736 rule!403) lt!1261384 lt!1261391))))

(assert (=> b!3642427 false))

(declare-fun b!3642428 () Bool)

(declare-fun res!1476571 () Bool)

(assert (=> b!3642428 (=> (not res!1476571) (not e!2254811))))

(declare-fun isEmpty!22733 (List!38512) Bool)

(assert (=> b!3642428 (= res!1476571 (isEmpty!22733 (_2!22264 lt!1261381)))))

(declare-fun b!3642429 () Bool)

(declare-fun res!1476562 () Bool)

(assert (=> b!3642429 (=> res!1476562 e!2254800)))

(assert (=> b!3642429 (= res!1476562 (isEmpty!22733 suffix!1395))))

(declare-fun b!3642430 () Bool)

(declare-fun res!1476565 () Bool)

(assert (=> b!3642430 (=> (not res!1476565) (not e!2254811))))

(assert (=> b!3642430 (= res!1476565 (= (rule!8522 token!511) rule!403))))

(assert (= (and start!340270 res!1476558) b!3642416))

(assert (= (and b!3642416 res!1476559) b!3642425))

(assert (= (and b!3642425 res!1476568) b!3642406))

(assert (= (and b!3642406 res!1476579) b!3642400))

(assert (= (and b!3642400 res!1476560) b!3642420))

(assert (= (and b!3642420 res!1476566) b!3642404))

(assert (= (and b!3642404 res!1476572) b!3642418))

(assert (= (and b!3642418 res!1476581) b!3642428))

(assert (= (and b!3642428 res!1476571) b!3642430))

(assert (= (and b!3642430 res!1476565) b!3642403))

(assert (= (and b!3642403 (not res!1476577)) b!3642429))

(assert (= (and b!3642429 (not res!1476562)) b!3642411))

(assert (= (and b!3642411 (not res!1476578)) b!3642419))

(assert (= (and b!3642419 (not res!1476575)) b!3642396))

(assert (= (and b!3642396 (not res!1476580)) b!3642402))

(assert (= (and b!3642402 res!1476563) b!3642410))

(assert (= (and b!3642410 res!1476576) b!3642398))

(assert (= (and b!3642402 (not res!1476574)) b!3642422))

(assert (= (and b!3642422 (not res!1476569)) b!3642412))

(assert (= (and b!3642412 (not res!1476561)) b!3642421))

(assert (= (and b!3642421 (not res!1476567)) b!3642407))

(assert (= (and b!3642407 c!629757) b!3642427))

(assert (= (and b!3642407 (not c!629757)) b!3642423))

(assert (= (and b!3642407 (not res!1476573)) b!3642408))

(assert (= (and b!3642408 (not res!1476564)) b!3642399))

(assert (= (and b!3642399 (not res!1476570)) b!3642395))

(assert (= b!3642409 b!3642405))

(assert (= b!3642413 b!3642409))

(assert (= (and start!340270 ((_ is Cons!38389) rules!3307)) b!3642413))

(assert (= (and start!340270 ((_ is Cons!38388) suffix!1395)) b!3642397))

(assert (= b!3642414 b!3642424))

(assert (= b!3642417 b!3642414))

(assert (= start!340270 b!3642417))

(assert (= b!3642401 b!3642394))

(assert (= start!340270 b!3642401))

(assert (= b!3642426 b!3642415))

(assert (= start!340270 b!3642426))

(declare-fun m!4145589 () Bool)

(assert (=> start!340270 m!4145589))

(declare-fun m!4145591 () Bool)

(assert (=> b!3642407 m!4145591))

(declare-fun m!4145593 () Bool)

(assert (=> b!3642407 m!4145593))

(declare-fun m!4145595 () Bool)

(assert (=> b!3642428 m!4145595))

(declare-fun m!4145597 () Bool)

(assert (=> b!3642416 m!4145597))

(declare-fun m!4145599 () Bool)

(assert (=> b!3642418 m!4145599))

(declare-fun m!4145601 () Bool)

(assert (=> b!3642414 m!4145601))

(declare-fun m!4145603 () Bool)

(assert (=> b!3642414 m!4145603))

(declare-fun m!4145605 () Bool)

(assert (=> b!3642410 m!4145605))

(assert (=> b!3642410 m!4145605))

(declare-fun m!4145607 () Bool)

(assert (=> b!3642410 m!4145607))

(assert (=> b!3642410 m!4145607))

(declare-fun m!4145609 () Bool)

(assert (=> b!3642410 m!4145609))

(declare-fun m!4145611 () Bool)

(assert (=> b!3642410 m!4145611))

(declare-fun m!4145613 () Bool)

(assert (=> b!3642427 m!4145613))

(declare-fun m!4145615 () Bool)

(assert (=> b!3642396 m!4145615))

(declare-fun m!4145617 () Bool)

(assert (=> b!3642400 m!4145617))

(declare-fun m!4145619 () Bool)

(assert (=> b!3642421 m!4145619))

(declare-fun m!4145621 () Bool)

(assert (=> b!3642421 m!4145621))

(declare-fun m!4145623 () Bool)

(assert (=> b!3642421 m!4145623))

(assert (=> b!3642421 m!4145623))

(declare-fun m!4145625 () Bool)

(assert (=> b!3642421 m!4145625))

(declare-fun m!4145627 () Bool)

(assert (=> b!3642421 m!4145627))

(declare-fun m!4145629 () Bool)

(assert (=> b!3642421 m!4145629))

(declare-fun m!4145631 () Bool)

(assert (=> b!3642421 m!4145631))

(declare-fun m!4145633 () Bool)

(assert (=> b!3642404 m!4145633))

(declare-fun m!4145635 () Bool)

(assert (=> b!3642404 m!4145635))

(declare-fun m!4145637 () Bool)

(assert (=> b!3642404 m!4145637))

(assert (=> b!3642404 m!4145637))

(declare-fun m!4145639 () Bool)

(assert (=> b!3642404 m!4145639))

(declare-fun m!4145641 () Bool)

(assert (=> b!3642422 m!4145641))

(declare-fun m!4145643 () Bool)

(assert (=> b!3642406 m!4145643))

(declare-fun m!4145645 () Bool)

(assert (=> b!3642419 m!4145645))

(assert (=> b!3642419 m!4145645))

(declare-fun m!4145647 () Bool)

(assert (=> b!3642419 m!4145647))

(declare-fun m!4145649 () Bool)

(assert (=> b!3642403 m!4145649))

(declare-fun m!4145651 () Bool)

(assert (=> b!3642403 m!4145651))

(declare-fun m!4145653 () Bool)

(assert (=> b!3642403 m!4145653))

(declare-fun m!4145655 () Bool)

(assert (=> b!3642426 m!4145655))

(declare-fun m!4145657 () Bool)

(assert (=> b!3642426 m!4145657))

(declare-fun m!4145659 () Bool)

(assert (=> b!3642429 m!4145659))

(declare-fun m!4145661 () Bool)

(assert (=> b!3642409 m!4145661))

(declare-fun m!4145663 () Bool)

(assert (=> b!3642409 m!4145663))

(declare-fun m!4145665 () Bool)

(assert (=> b!3642401 m!4145665))

(declare-fun m!4145667 () Bool)

(assert (=> b!3642401 m!4145667))

(declare-fun m!4145669 () Bool)

(assert (=> b!3642411 m!4145669))

(declare-fun m!4145671 () Bool)

(assert (=> b!3642411 m!4145671))

(declare-fun m!4145673 () Bool)

(assert (=> b!3642411 m!4145673))

(declare-fun m!4145675 () Bool)

(assert (=> b!3642417 m!4145675))

(declare-fun m!4145677 () Bool)

(assert (=> b!3642408 m!4145677))

(declare-fun m!4145679 () Bool)

(assert (=> b!3642395 m!4145679))

(declare-fun m!4145681 () Bool)

(assert (=> b!3642395 m!4145681))

(assert (=> b!3642395 m!4145681))

(declare-fun m!4145683 () Bool)

(assert (=> b!3642395 m!4145683))

(declare-fun m!4145685 () Bool)

(assert (=> b!3642395 m!4145685))

(declare-fun m!4145687 () Bool)

(assert (=> b!3642425 m!4145687))

(declare-fun m!4145689 () Bool)

(assert (=> b!3642412 m!4145689))

(declare-fun m!4145691 () Bool)

(assert (=> b!3642412 m!4145691))

(assert (=> b!3642412 m!4145691))

(declare-fun m!4145693 () Bool)

(assert (=> b!3642412 m!4145693))

(declare-fun m!4145695 () Bool)

(assert (=> b!3642412 m!4145695))

(declare-fun m!4145697 () Bool)

(assert (=> b!3642412 m!4145697))

(declare-fun m!4145699 () Bool)

(assert (=> b!3642412 m!4145699))

(declare-fun m!4145701 () Bool)

(assert (=> b!3642402 m!4145701))

(declare-fun m!4145703 () Bool)

(assert (=> b!3642402 m!4145703))

(declare-fun m!4145705 () Bool)

(assert (=> b!3642402 m!4145705))

(declare-fun m!4145707 () Bool)

(assert (=> b!3642402 m!4145707))

(declare-fun m!4145709 () Bool)

(assert (=> b!3642402 m!4145709))

(declare-fun m!4145711 () Bool)

(assert (=> b!3642402 m!4145711))

(declare-fun m!4145713 () Bool)

(assert (=> b!3642402 m!4145713))

(declare-fun m!4145715 () Bool)

(assert (=> b!3642402 m!4145715))

(assert (=> b!3642402 m!4145715))

(declare-fun m!4145717 () Bool)

(assert (=> b!3642402 m!4145717))

(declare-fun m!4145719 () Bool)

(assert (=> b!3642402 m!4145719))

(declare-fun m!4145721 () Bool)

(assert (=> b!3642402 m!4145721))

(declare-fun m!4145723 () Bool)

(assert (=> b!3642402 m!4145723))

(declare-fun m!4145725 () Bool)

(assert (=> b!3642402 m!4145725))

(assert (=> b!3642402 m!4145605))

(declare-fun m!4145727 () Bool)

(assert (=> b!3642402 m!4145727))

(check-sat b_and!268641 (not b!3642414) (not b_next!96223) (not b!3642426) (not b!3642410) (not b!3642401) (not b!3642429) b_and!268629 tp_is_empty!18073 (not b_next!96225) (not b!3642418) (not b!3642396) (not b!3642406) (not b!3642412) b_and!268633 (not b_next!96231) (not b!3642402) (not b_next!96219) (not b!3642413) (not b!3642407) (not b!3642397) (not b_next!96229) (not b!3642400) b_and!268627 (not b!3642428) (not b_next!96217) (not b!3642416) (not b!3642419) (not start!340270) b_and!268631 (not b!3642395) (not b!3642417) (not b!3642403) (not b_next!96221) b_and!268637 (not b!3642427) b_and!268639 b_and!268635 (not b!3642421) (not b!3642411) (not b!3642409) (not b!3642422) (not b!3642425) (not b!3642408) (not b!3642404) (not b_next!96227))
(check-sat b_and!268629 (not b_next!96225) b_and!268633 (not b_next!96231) (not b_next!96219) b_and!268641 (not b_next!96217) b_and!268631 (not b_next!96221) (not b_next!96223) (not b_next!96227) (not b_next!96229) b_and!268627 b_and!268637 b_and!268639 b_and!268635)
