; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!336438 () Bool)

(assert start!336438)

(declare-fun b!3613486 () Bool)

(declare-fun b_free!93945 () Bool)

(declare-fun b_next!94649 () Bool)

(assert (=> b!3613486 (= b_free!93945 (not b_next!94649))))

(declare-fun tp!1104403 () Bool)

(declare-fun b_and!263707 () Bool)

(assert (=> b!3613486 (= tp!1104403 b_and!263707)))

(declare-fun b_free!93947 () Bool)

(declare-fun b_next!94651 () Bool)

(assert (=> b!3613486 (= b_free!93947 (not b_next!94651))))

(declare-fun tp!1104410 () Bool)

(declare-fun b_and!263709 () Bool)

(assert (=> b!3613486 (= tp!1104410 b_and!263709)))

(declare-fun b!3613513 () Bool)

(declare-fun b_free!93949 () Bool)

(declare-fun b_next!94653 () Bool)

(assert (=> b!3613513 (= b_free!93949 (not b_next!94653))))

(declare-fun tp!1104401 () Bool)

(declare-fun b_and!263711 () Bool)

(assert (=> b!3613513 (= tp!1104401 b_and!263711)))

(declare-fun b_free!93951 () Bool)

(declare-fun b_next!94655 () Bool)

(assert (=> b!3613513 (= b_free!93951 (not b_next!94655))))

(declare-fun tp!1104402 () Bool)

(declare-fun b_and!263713 () Bool)

(assert (=> b!3613513 (= tp!1104402 b_and!263713)))

(declare-fun b!3613520 () Bool)

(declare-fun b_free!93953 () Bool)

(declare-fun b_next!94657 () Bool)

(assert (=> b!3613520 (= b_free!93953 (not b_next!94657))))

(declare-fun tp!1104405 () Bool)

(declare-fun b_and!263715 () Bool)

(assert (=> b!3613520 (= tp!1104405 b_and!263715)))

(declare-fun b_free!93955 () Bool)

(declare-fun b_next!94659 () Bool)

(assert (=> b!3613520 (= b_free!93955 (not b_next!94659))))

(declare-fun tp!1104399 () Bool)

(declare-fun b_and!263717 () Bool)

(assert (=> b!3613520 (= tp!1104399 b_and!263717)))

(declare-fun b!3613517 () Bool)

(declare-fun b_free!93957 () Bool)

(declare-fun b_next!94661 () Bool)

(assert (=> b!3613517 (= b_free!93957 (not b_next!94661))))

(declare-fun tp!1104408 () Bool)

(declare-fun b_and!263719 () Bool)

(assert (=> b!3613517 (= tp!1104408 b_and!263719)))

(declare-fun b_free!93959 () Bool)

(declare-fun b_next!94663 () Bool)

(assert (=> b!3613517 (= b_free!93959 (not b_next!94663))))

(declare-fun tp!1104398 () Bool)

(declare-fun b_and!263721 () Bool)

(assert (=> b!3613517 (= tp!1104398 b_and!263721)))

(declare-fun b!3613477 () Bool)

(assert (=> b!3613477 false))

(declare-datatypes ((Unit!54354 0))(
  ( (Unit!54355) )
))
(declare-fun lt!1245297 () Unit!54354)

(declare-fun call!261300 () Unit!54354)

(assert (=> b!3613477 (= lt!1245297 call!261300)))

(declare-fun call!261296 () Bool)

(assert (=> b!3613477 (not call!261296)))

(declare-datatypes ((List!38167 0))(
  ( (Nil!38043) (Cons!38043 (h!43463 (_ BitVec 16)) (t!293578 List!38167)) )
))
(declare-datatypes ((TokenValue!5880 0))(
  ( (FloatLiteralValue!11760 (text!41605 List!38167)) (TokenValueExt!5879 (__x!23977 Int)) (Broken!29400 (value!181459 List!38167)) (Object!6003) (End!5880) (Def!5880) (Underscore!5880) (Match!5880) (Else!5880) (Error!5880) (Case!5880) (If!5880) (Extends!5880) (Abstract!5880) (Class!5880) (Val!5880) (DelimiterValue!11760 (del!5940 List!38167)) (KeywordValue!5886 (value!181460 List!38167)) (CommentValue!11760 (value!181461 List!38167)) (WhitespaceValue!11760 (value!181462 List!38167)) (IndentationValue!5880 (value!181463 List!38167)) (String!42733) (Int32!5880) (Broken!29401 (value!181464 List!38167)) (Boolean!5881) (Unit!54356) (OperatorValue!5883 (op!5940 List!38167)) (IdentifierValue!11760 (value!181465 List!38167)) (IdentifierValue!11761 (value!181466 List!38167)) (WhitespaceValue!11761 (value!181467 List!38167)) (True!11760) (False!11760) (Broken!29402 (value!181468 List!38167)) (Broken!29403 (value!181469 List!38167)) (True!11761) (RightBrace!5880) (RightBracket!5880) (Colon!5880) (Null!5880) (Comma!5880) (LeftBracket!5880) (False!11761) (LeftBrace!5880) (ImaginaryLiteralValue!5880 (text!41606 List!38167)) (StringLiteralValue!17640 (value!181470 List!38167)) (EOFValue!5880 (value!181471 List!38167)) (IdentValue!5880 (value!181472 List!38167)) (DelimiterValue!11761 (value!181473 List!38167)) (DedentValue!5880 (value!181474 List!38167)) (NewLineValue!5880 (value!181475 List!38167)) (IntegerValue!17640 (value!181476 (_ BitVec 32)) (text!41607 List!38167)) (IntegerValue!17641 (value!181477 Int) (text!41608 List!38167)) (Times!5880) (Or!5880) (Equal!5880) (Minus!5880) (Broken!29404 (value!181478 List!38167)) (And!5880) (Div!5880) (LessEqual!5880) (Mod!5880) (Concat!16289) (Not!5880) (Plus!5880) (SpaceValue!5880 (value!181479 List!38167)) (IntegerValue!17642 (value!181480 Int) (text!41609 List!38167)) (StringLiteralValue!17641 (text!41610 List!38167)) (FloatLiteralValue!11761 (text!41611 List!38167)) (BytesLiteralValue!5880 (value!181481 List!38167)) (CommentValue!11761 (value!181482 List!38167)) (StringLiteralValue!17642 (value!181483 List!38167)) (ErrorTokenValue!5880 (msg!5941 List!38167)) )
))
(declare-datatypes ((C!21004 0))(
  ( (C!21005 (val!12550 Int)) )
))
(declare-datatypes ((Regex!10409 0))(
  ( (ElementMatch!10409 (c!625156 C!21004)) (Concat!16290 (regOne!21330 Regex!10409) (regTwo!21330 Regex!10409)) (EmptyExpr!10409) (Star!10409 (reg!10738 Regex!10409)) (EmptyLang!10409) (Union!10409 (regOne!21331 Regex!10409) (regTwo!21331 Regex!10409)) )
))
(declare-datatypes ((String!42734 0))(
  ( (String!42735 (value!181484 String)) )
))
(declare-datatypes ((List!38168 0))(
  ( (Nil!38044) (Cons!38044 (h!43464 C!21004) (t!293579 List!38168)) )
))
(declare-datatypes ((IArray!23195 0))(
  ( (IArray!23196 (innerList!11655 List!38168)) )
))
(declare-datatypes ((Conc!11595 0))(
  ( (Node!11595 (left!29718 Conc!11595) (right!30048 Conc!11595) (csize!23420 Int) (cheight!11806 Int)) (Leaf!18031 (xs!14797 IArray!23195) (csize!23421 Int)) (Empty!11595) )
))
(declare-datatypes ((BalanceConc!22804 0))(
  ( (BalanceConc!22805 (c!625157 Conc!11595)) )
))
(declare-datatypes ((TokenValueInjection!11188 0))(
  ( (TokenValueInjection!11189 (toValue!7934 Int) (toChars!7793 Int)) )
))
(declare-datatypes ((Rule!11100 0))(
  ( (Rule!11101 (regex!5650 Regex!10409) (tag!6360 String!42734) (isSeparator!5650 Bool) (transformation!5650 TokenValueInjection!11188)) )
))
(declare-datatypes ((List!38169 0))(
  ( (Nil!38045) (Cons!38045 (h!43465 Rule!11100) (t!293580 List!38169)) )
))
(declare-fun rules!3307 () List!38169)

(declare-fun lt!1245328 () Unit!54354)

(declare-fun anOtherTypeRule!33 () Rule!11100)

(declare-fun lt!1245283 () C!21004)

(declare-datatypes ((Token!10666 0))(
  ( (Token!10667 (value!181485 TokenValue!5880) (rule!8404 Rule!11100) (size!29011 Int) (originalCharacters!6364 List!38168)) )
))
(declare-datatypes ((tuple2!37932 0))(
  ( (tuple2!37933 (_1!22100 Token!10666) (_2!22100 List!38168)) )
))
(declare-fun lt!1245300 () tuple2!37932)

(declare-datatypes ((LexerInterface!5239 0))(
  ( (LexerInterfaceExt!5236 (__x!23978 Int)) (Lexer!5237) )
))
(declare-fun thiss!23823 () LexerInterface!5239)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!356 (LexerInterface!5239 List!38169 List!38169 Rule!11100 Rule!11100 C!21004) Unit!54354)

(assert (=> b!3613477 (= lt!1245328 (lemmaNonSepRuleNotContainsCharContainedInASepRule!356 thiss!23823 rules!3307 rules!3307 (rule!8404 (_1!22100 lt!1245300)) anOtherTypeRule!33 lt!1245283))))

(declare-fun e!2236448 () Unit!54354)

(declare-fun Unit!54357 () Unit!54354)

(assert (=> b!3613477 (= e!2236448 Unit!54357)))

(declare-fun b!3613478 () Bool)

(declare-fun e!2236474 () Bool)

(declare-fun e!2236468 () Bool)

(assert (=> b!3613478 (= e!2236474 e!2236468)))

(declare-fun res!1461882 () Bool)

(assert (=> b!3613478 (=> (not res!1461882) (not e!2236468))))

(declare-fun lt!1245314 () tuple2!37932)

(declare-fun token!511 () Token!10666)

(assert (=> b!3613478 (= res!1461882 (= (_1!22100 lt!1245314) token!511))))

(declare-datatypes ((Option!7930 0))(
  ( (None!7929) (Some!7929 (v!37679 tuple2!37932)) )
))
(declare-fun lt!1245305 () Option!7930)

(declare-fun get!12365 (Option!7930) tuple2!37932)

(assert (=> b!3613478 (= lt!1245314 (get!12365 lt!1245305))))

(declare-fun b!3613479 () Bool)

(declare-fun res!1461886 () Bool)

(assert (=> b!3613479 (=> (not res!1461886) (not e!2236468))))

(declare-fun isEmpty!22470 (List!38168) Bool)

(assert (=> b!3613479 (= res!1461886 (isEmpty!22470 (_2!22100 lt!1245314)))))

(declare-fun e!2236472 () Bool)

(declare-fun b!3613480 () Bool)

(declare-fun tp!1104400 () Bool)

(declare-fun e!2236450 () Bool)

(declare-fun inv!51421 (String!42734) Bool)

(declare-fun inv!51424 (TokenValueInjection!11188) Bool)

(assert (=> b!3613480 (= e!2236472 (and tp!1104400 (inv!51421 (tag!6360 (rule!8404 token!511))) (inv!51424 (transformation!5650 (rule!8404 token!511))) e!2236450))))

(declare-fun b!3613481 () Bool)

(declare-fun res!1461872 () Bool)

(declare-fun e!2236463 () Bool)

(assert (=> b!3613481 (=> (not res!1461872) (not e!2236463))))

(declare-fun rulesInvariant!4636 (LexerInterface!5239 List!38169) Bool)

(assert (=> b!3613481 (= res!1461872 (rulesInvariant!4636 thiss!23823 rules!3307))))

(declare-fun b!3613482 () Bool)

(declare-fun e!2236477 () Bool)

(declare-fun e!2236475 () Bool)

(assert (=> b!3613482 (= e!2236477 e!2236475)))

(declare-fun res!1461871 () Bool)

(assert (=> b!3613482 (=> res!1461871 e!2236475)))

(declare-fun lt!1245308 () List!38168)

(declare-fun lt!1245292 () List!38168)

(declare-fun isPrefix!3013 (List!38168 List!38168) Bool)

(assert (=> b!3613482 (= res!1461871 (not (isPrefix!3013 lt!1245308 lt!1245292)))))

(declare-fun ++!9466 (List!38168 List!38168) List!38168)

(assert (=> b!3613482 (isPrefix!3013 lt!1245308 (++!9466 lt!1245308 (_2!22100 lt!1245300)))))

(declare-fun lt!1245291 () Unit!54354)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1934 (List!38168 List!38168) Unit!54354)

(assert (=> b!3613482 (= lt!1245291 (lemmaConcatTwoListThenFirstIsPrefix!1934 lt!1245308 (_2!22100 lt!1245300)))))

(declare-fun lt!1245329 () BalanceConc!22804)

(declare-fun list!14034 (BalanceConc!22804) List!38168)

(assert (=> b!3613482 (= lt!1245308 (list!14034 lt!1245329))))

(declare-fun charsOf!3664 (Token!10666) BalanceConc!22804)

(assert (=> b!3613482 (= lt!1245329 (charsOf!3664 (_1!22100 lt!1245300)))))

(declare-fun e!2236452 () Bool)

(assert (=> b!3613482 e!2236452))

(declare-fun res!1461887 () Bool)

(assert (=> b!3613482 (=> (not res!1461887) (not e!2236452))))

(declare-datatypes ((Option!7931 0))(
  ( (None!7930) (Some!7930 (v!37680 Rule!11100)) )
))
(declare-fun lt!1245286 () Option!7931)

(declare-fun isDefined!6162 (Option!7931) Bool)

(assert (=> b!3613482 (= res!1461887 (isDefined!6162 lt!1245286))))

(declare-fun getRuleFromTag!1256 (LexerInterface!5239 List!38169 String!42734) Option!7931)

(assert (=> b!3613482 (= lt!1245286 (getRuleFromTag!1256 thiss!23823 rules!3307 (tag!6360 (rule!8404 (_1!22100 lt!1245300)))))))

(declare-fun lt!1245320 () Unit!54354)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1256 (LexerInterface!5239 List!38169 List!38168 Token!10666) Unit!54354)

(assert (=> b!3613482 (= lt!1245320 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1256 thiss!23823 rules!3307 lt!1245292 (_1!22100 lt!1245300)))))

(declare-fun lt!1245311 () Option!7930)

(assert (=> b!3613482 (= lt!1245300 (get!12365 lt!1245311))))

(declare-fun lt!1245306 () List!38168)

(declare-fun suffix!1395 () List!38168)

(declare-fun lt!1245324 () Unit!54354)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!919 (LexerInterface!5239 List!38169 List!38168 List!38168) Unit!54354)

(assert (=> b!3613482 (= lt!1245324 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!919 thiss!23823 rules!3307 lt!1245306 suffix!1395))))

(declare-fun maxPrefix!2773 (LexerInterface!5239 List!38169 List!38168) Option!7930)

(assert (=> b!3613482 (= lt!1245311 (maxPrefix!2773 thiss!23823 rules!3307 lt!1245292))))

(assert (=> b!3613482 (isPrefix!3013 lt!1245306 lt!1245292)))

(declare-fun lt!1245289 () Unit!54354)

(assert (=> b!3613482 (= lt!1245289 (lemmaConcatTwoListThenFirstIsPrefix!1934 lt!1245306 suffix!1395))))

(assert (=> b!3613482 (= lt!1245292 (++!9466 lt!1245306 suffix!1395))))

(declare-fun b!3613483 () Bool)

(declare-fun res!1461869 () Bool)

(assert (=> b!3613483 (=> (not res!1461869) (not e!2236463))))

(declare-fun contains!7363 (List!38169 Rule!11100) Bool)

(assert (=> b!3613483 (= res!1461869 (contains!7363 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3613484 () Bool)

(assert (=> b!3613484 (= e!2236463 e!2236474)))

(declare-fun res!1461879 () Bool)

(assert (=> b!3613484 (=> (not res!1461879) (not e!2236474))))

(declare-fun isDefined!6163 (Option!7930) Bool)

(assert (=> b!3613484 (= res!1461879 (isDefined!6163 lt!1245305))))

(assert (=> b!3613484 (= lt!1245305 (maxPrefix!2773 thiss!23823 rules!3307 lt!1245306))))

(declare-fun lt!1245298 () BalanceConc!22804)

(assert (=> b!3613484 (= lt!1245306 (list!14034 lt!1245298))))

(assert (=> b!3613484 (= lt!1245298 (charsOf!3664 token!511))))

(declare-fun b!3613485 () Bool)

(declare-fun e!2236470 () Unit!54354)

(declare-fun Unit!54358 () Unit!54354)

(assert (=> b!3613485 (= e!2236470 Unit!54358)))

(declare-fun e!2236473 () Bool)

(assert (=> b!3613486 (= e!2236473 (and tp!1104403 tp!1104410))))

(declare-fun b!3613487 () Bool)

(declare-fun res!1461866 () Bool)

(declare-fun e!2236476 () Bool)

(assert (=> b!3613487 (=> res!1461866 e!2236476)))

(assert (=> b!3613487 (= res!1461866 (isEmpty!22470 suffix!1395))))

(declare-fun b!3613488 () Bool)

(declare-fun e!2236460 () Unit!54354)

(declare-fun Unit!54359 () Unit!54354)

(assert (=> b!3613488 (= e!2236460 Unit!54359)))

(declare-fun rule!403 () Rule!11100)

(declare-fun lt!1245288 () Unit!54354)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!298 (LexerInterface!5239 List!38169 Rule!11100 List!38168 List!38168 List!38168 Rule!11100) Unit!54354)

(assert (=> b!3613488 (= lt!1245288 (lemmaMaxPrefixOutputsMaxPrefix!298 thiss!23823 rules!3307 (rule!8404 (_1!22100 lt!1245300)) lt!1245308 lt!1245292 lt!1245306 rule!403))))

(assert (=> b!3613488 false))

(declare-fun b!3613489 () Bool)

(declare-fun res!1461873 () Bool)

(assert (=> b!3613489 (=> res!1461873 e!2236477)))

(declare-fun sepAndNonSepRulesDisjointChars!1820 (List!38169 List!38169) Bool)

(assert (=> b!3613489 (= res!1461873 (not (sepAndNonSepRulesDisjointChars!1820 rules!3307 rules!3307)))))

(declare-fun b!3613490 () Bool)

(declare-fun e!2236479 () Bool)

(assert (=> b!3613490 (= e!2236452 e!2236479)))

(declare-fun res!1461878 () Bool)

(assert (=> b!3613490 (=> (not res!1461878) (not e!2236479))))

(declare-fun lt!1245296 () Rule!11100)

(declare-fun matchR!4978 (Regex!10409 List!38168) Bool)

(assert (=> b!3613490 (= res!1461878 (matchR!4978 (regex!5650 lt!1245296) (list!14034 (charsOf!3664 (_1!22100 lt!1245300)))))))

(declare-fun get!12366 (Option!7931) Rule!11100)

(assert (=> b!3613490 (= lt!1245296 (get!12366 lt!1245286))))

(declare-fun b!3613491 () Bool)

(declare-fun res!1461875 () Bool)

(declare-fun e!2236457 () Bool)

(assert (=> b!3613491 (=> res!1461875 e!2236457)))

(declare-fun getIndex!432 (List!38169 Rule!11100) Int)

(assert (=> b!3613491 (= res!1461875 (>= (getIndex!432 rules!3307 (rule!8404 (_1!22100 lt!1245300))) (getIndex!432 rules!3307 rule!403)))))

(declare-fun b!3613492 () Bool)

(declare-fun res!1461874 () Bool)

(assert (=> b!3613492 (=> (not res!1461874) (not e!2236468))))

(assert (=> b!3613492 (= res!1461874 (= (rule!8404 token!511) rule!403))))

(declare-fun lt!1245282 () C!21004)

(declare-fun bm!261290 () Bool)

(declare-fun call!261299 () Unit!54354)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!634 (Regex!10409 List!38168 C!21004) Unit!54354)

(assert (=> bm!261290 (= call!261299 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!634 (regex!5650 (rule!8404 (_1!22100 lt!1245300))) lt!1245308 lt!1245282))))

(declare-fun b!3613493 () Bool)

(declare-fun e!2236466 () Bool)

(declare-fun e!2236480 () Bool)

(declare-fun tp!1104407 () Bool)

(assert (=> b!3613493 (= e!2236466 (and e!2236480 tp!1104407))))

(declare-fun bm!261291 () Bool)

(assert (=> bm!261291 (= call!261300 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!634 (regex!5650 (rule!8404 (_1!22100 lt!1245300))) lt!1245308 lt!1245283))))

(declare-fun tp!1104412 () Bool)

(declare-fun e!2236459 () Bool)

(declare-fun b!3613494 () Bool)

(declare-fun inv!21 (TokenValue!5880) Bool)

(assert (=> b!3613494 (= e!2236459 (and (inv!21 (value!181485 token!511)) e!2236472 tp!1104412))))

(declare-fun b!3613495 () Bool)

(assert (=> b!3613495 (= e!2236468 (not e!2236476))))

(declare-fun res!1461870 () Bool)

(assert (=> b!3613495 (=> res!1461870 e!2236476)))

(assert (=> b!3613495 (= res!1461870 (not (matchR!4978 (regex!5650 rule!403) lt!1245306)))))

(declare-fun ruleValid!1915 (LexerInterface!5239 Rule!11100) Bool)

(assert (=> b!3613495 (ruleValid!1915 thiss!23823 rule!403)))

(declare-fun lt!1245323 () Unit!54354)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1070 (LexerInterface!5239 Rule!11100 List!38169) Unit!54354)

(assert (=> b!3613495 (= lt!1245323 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1070 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3613496 () Bool)

(declare-fun e!2236464 () Bool)

(assert (=> b!3613496 (= e!2236475 e!2236464)))

(declare-fun res!1461877 () Bool)

(assert (=> b!3613496 (=> res!1461877 e!2236464)))

(declare-fun lt!1245287 () Int)

(declare-fun lt!1245290 () TokenValue!5880)

(assert (=> b!3613496 (= res!1461877 (not (= lt!1245311 (Some!7929 (tuple2!37933 (Token!10667 lt!1245290 (rule!8404 (_1!22100 lt!1245300)) lt!1245287 lt!1245308) (_2!22100 lt!1245300))))))))

(declare-fun size!29012 (BalanceConc!22804) Int)

(assert (=> b!3613496 (= lt!1245287 (size!29012 lt!1245329))))

(declare-fun apply!9156 (TokenValueInjection!11188 BalanceConc!22804) TokenValue!5880)

(assert (=> b!3613496 (= lt!1245290 (apply!9156 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))) lt!1245329))))

(declare-fun lt!1245309 () Unit!54354)

(declare-fun lemmaCharactersSize!703 (Token!10666) Unit!54354)

(assert (=> b!3613496 (= lt!1245309 (lemmaCharactersSize!703 (_1!22100 lt!1245300)))))

(declare-fun lt!1245326 () Unit!54354)

(declare-fun lemmaEqSameImage!841 (TokenValueInjection!11188 BalanceConc!22804 BalanceConc!22804) Unit!54354)

(declare-fun seqFromList!4203 (List!38168) BalanceConc!22804)

(assert (=> b!3613496 (= lt!1245326 (lemmaEqSameImage!841 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))) lt!1245329 (seqFromList!4203 (originalCharacters!6364 (_1!22100 lt!1245300)))))))

(declare-fun lt!1245302 () Unit!54354)

(declare-fun lemmaSemiInverse!1407 (TokenValueInjection!11188 BalanceConc!22804) Unit!54354)

(assert (=> b!3613496 (= lt!1245302 (lemmaSemiInverse!1407 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))) lt!1245329))))

(declare-fun b!3613497 () Bool)

(assert (=> b!3613497 (= e!2236457 (isPrefix!3013 lt!1245306 lt!1245306))))

(declare-fun lt!1245327 () Int)

(declare-fun size!29013 (List!38168) Int)

(assert (=> b!3613497 (= lt!1245327 (size!29013 lt!1245306))))

(declare-fun getSuffix!1588 (List!38168 List!38168) List!38168)

(assert (=> b!3613497 (isEmpty!22470 (getSuffix!1588 lt!1245306 lt!1245306))))

(declare-fun lt!1245317 () Unit!54354)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!144 (List!38168) Unit!54354)

(assert (=> b!3613497 (= lt!1245317 (lemmaGetSuffixOnListWithItSelfIsEmpty!144 lt!1245306))))

(declare-fun b!3613498 () Bool)

(declare-fun res!1461867 () Bool)

(assert (=> b!3613498 (=> (not res!1461867) (not e!2236463))))

(assert (=> b!3613498 (= res!1461867 (not (= (isSeparator!5650 anOtherTypeRule!33) (isSeparator!5650 rule!403))))))

(declare-fun b!3613499 () Bool)

(assert (=> b!3613499 false))

(declare-fun lt!1245295 () Unit!54354)

(assert (=> b!3613499 (= lt!1245295 call!261299)))

(declare-fun call!261298 () Bool)

(assert (=> b!3613499 (not call!261298)))

(declare-fun lt!1245321 () Unit!54354)

(assert (=> b!3613499 (= lt!1245321 (lemmaNonSepRuleNotContainsCharContainedInASepRule!356 thiss!23823 rules!3307 rules!3307 (rule!8404 (_1!22100 lt!1245300)) rule!403 lt!1245282))))

(declare-fun e!2236456 () Unit!54354)

(declare-fun Unit!54360 () Unit!54354)

(assert (=> b!3613499 (= e!2236456 Unit!54360)))

(declare-fun e!2236451 () Bool)

(declare-fun b!3613500 () Bool)

(declare-fun tp!1104404 () Bool)

(assert (=> b!3613500 (= e!2236451 (and tp!1104404 (inv!51421 (tag!6360 anOtherTypeRule!33)) (inv!51424 (transformation!5650 anOtherTypeRule!33)) e!2236473))))

(declare-fun b!3613501 () Bool)

(assert (=> b!3613501 false))

(declare-fun lt!1245299 () Unit!54354)

(assert (=> b!3613501 (= lt!1245299 call!261299)))

(assert (=> b!3613501 (not call!261298)))

(declare-fun lt!1245285 () Unit!54354)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!238 (LexerInterface!5239 List!38169 List!38169 Rule!11100 Rule!11100 C!21004) Unit!54354)

(assert (=> b!3613501 (= lt!1245285 (lemmaSepRuleNotContainsCharContainedInANonSepRule!238 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8404 (_1!22100 lt!1245300)) lt!1245282))))

(declare-fun e!2236467 () Unit!54354)

(declare-fun Unit!54361 () Unit!54354)

(assert (=> b!3613501 (= e!2236467 Unit!54361)))

(declare-fun b!3613502 () Bool)

(declare-fun res!1461880 () Bool)

(assert (=> b!3613502 (=> (not res!1461880) (not e!2236463))))

(declare-fun isEmpty!22471 (List!38169) Bool)

(assert (=> b!3613502 (= res!1461880 (not (isEmpty!22471 rules!3307)))))

(declare-fun b!3613503 () Bool)

(declare-fun e!2236449 () Bool)

(declare-fun tp_is_empty!17901 () Bool)

(declare-fun tp!1104406 () Bool)

(assert (=> b!3613503 (= e!2236449 (and tp_is_empty!17901 tp!1104406))))

(declare-fun e!2236465 () Bool)

(declare-fun tp!1104411 () Bool)

(declare-fun b!3613504 () Bool)

(assert (=> b!3613504 (= e!2236480 (and tp!1104411 (inv!51421 (tag!6360 (h!43465 rules!3307))) (inv!51424 (transformation!5650 (h!43465 rules!3307))) e!2236465))))

(declare-fun e!2236462 () Bool)

(declare-fun tp!1104409 () Bool)

(declare-fun b!3613505 () Bool)

(declare-fun e!2236454 () Bool)

(assert (=> b!3613505 (= e!2236454 (and tp!1104409 (inv!51421 (tag!6360 rule!403)) (inv!51424 (transformation!5650 rule!403)) e!2236462))))

(declare-fun b!3613506 () Bool)

(assert (=> b!3613506 (= e!2236476 e!2236477)))

(declare-fun res!1461868 () Bool)

(assert (=> b!3613506 (=> res!1461868 e!2236477)))

(declare-fun lt!1245304 () List!38168)

(declare-fun contains!7364 (List!38168 C!21004) Bool)

(assert (=> b!3613506 (= res!1461868 (contains!7364 lt!1245304 lt!1245283))))

(declare-fun head!7612 (List!38168) C!21004)

(assert (=> b!3613506 (= lt!1245283 (head!7612 suffix!1395))))

(declare-fun usedCharacters!864 (Regex!10409) List!38168)

(assert (=> b!3613506 (= lt!1245304 (usedCharacters!864 (regex!5650 rule!403)))))

(declare-fun b!3613507 () Bool)

(assert (=> b!3613507 (= e!2236479 (= (rule!8404 (_1!22100 lt!1245300)) lt!1245296))))

(declare-fun bm!261292 () Bool)

(declare-fun call!261297 () List!38168)

(assert (=> bm!261292 (= call!261298 (contains!7364 call!261297 lt!1245282))))

(declare-fun b!3613508 () Bool)

(declare-fun e!2236453 () Unit!54354)

(assert (=> b!3613508 (= e!2236453 e!2236448)))

(declare-fun lt!1245294 () Unit!54354)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!28 (List!38168 List!38168 List!38168 List!38168) Unit!54354)

(assert (=> b!3613508 (= lt!1245294 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!28 lt!1245306 suffix!1395 lt!1245308 lt!1245292))))

(assert (=> b!3613508 (contains!7364 lt!1245308 lt!1245283)))

(declare-fun c!625153 () Bool)

(assert (=> b!3613508 (= c!625153 (isSeparator!5650 rule!403))))

(declare-fun b!3613509 () Bool)

(declare-fun Unit!54362 () Unit!54354)

(assert (=> b!3613509 (= e!2236453 Unit!54362)))

(declare-fun b!3613510 () Bool)

(declare-fun res!1461885 () Bool)

(assert (=> b!3613510 (=> res!1461885 e!2236475)))

(assert (=> b!3613510 (= res!1461885 (not (matchR!4978 (regex!5650 (rule!8404 (_1!22100 lt!1245300))) lt!1245308)))))

(declare-fun b!3613511 () Bool)

(declare-fun Unit!54363 () Unit!54354)

(assert (=> b!3613511 (= e!2236460 Unit!54363)))

(declare-fun b!3613512 () Bool)

(declare-fun e!2236455 () Unit!54354)

(assert (=> b!3613512 (= e!2236455 e!2236467)))

(declare-fun c!625154 () Bool)

(assert (=> b!3613512 (= c!625154 (isSeparator!5650 (rule!8404 (_1!22100 lt!1245300))))))

(assert (=> b!3613513 (= e!2236450 (and tp!1104401 tp!1104402))))

(declare-fun bm!261293 () Bool)

(assert (=> bm!261293 (= call!261297 (usedCharacters!864 (regex!5650 (rule!8404 (_1!22100 lt!1245300)))))))

(declare-fun b!3613514 () Bool)

(declare-fun e!2236461 () Bool)

(assert (=> b!3613514 (= e!2236464 e!2236461)))

(declare-fun res!1461865 () Bool)

(assert (=> b!3613514 (=> res!1461865 e!2236461)))

(declare-fun lt!1245315 () Option!7930)

(declare-fun lt!1245307 () List!38168)

(assert (=> b!3613514 (= res!1461865 (or (not (= lt!1245307 (_2!22100 lt!1245300))) (not (= lt!1245315 (Some!7929 (tuple2!37933 (_1!22100 lt!1245300) lt!1245307))))))))

(assert (=> b!3613514 (= (_2!22100 lt!1245300) lt!1245307)))

(declare-fun lt!1245313 () Unit!54354)

(declare-fun lemmaSamePrefixThenSameSuffix!1368 (List!38168 List!38168 List!38168 List!38168 List!38168) Unit!54354)

(assert (=> b!3613514 (= lt!1245313 (lemmaSamePrefixThenSameSuffix!1368 lt!1245308 (_2!22100 lt!1245300) lt!1245308 lt!1245307 lt!1245292))))

(assert (=> b!3613514 (= lt!1245307 (getSuffix!1588 lt!1245292 lt!1245308))))

(declare-fun lt!1245312 () TokenValue!5880)

(declare-fun lt!1245330 () Int)

(assert (=> b!3613514 (= lt!1245315 (Some!7929 (tuple2!37933 (Token!10667 lt!1245312 (rule!8404 (_1!22100 lt!1245300)) lt!1245330 lt!1245308) (_2!22100 lt!1245300))))))

(declare-fun maxPrefixOneRule!1917 (LexerInterface!5239 Rule!11100 List!38168) Option!7930)

(assert (=> b!3613514 (= lt!1245315 (maxPrefixOneRule!1917 thiss!23823 (rule!8404 (_1!22100 lt!1245300)) lt!1245292))))

(assert (=> b!3613514 (= lt!1245330 (size!29013 lt!1245308))))

(assert (=> b!3613514 (= lt!1245312 (apply!9156 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))) (seqFromList!4203 lt!1245308)))))

(declare-fun lt!1245319 () Unit!54354)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!989 (LexerInterface!5239 List!38169 List!38168 List!38168 List!38168 Rule!11100) Unit!54354)

(assert (=> b!3613514 (= lt!1245319 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!989 thiss!23823 rules!3307 lt!1245308 lt!1245292 (_2!22100 lt!1245300) (rule!8404 (_1!22100 lt!1245300))))))

(declare-fun b!3613515 () Bool)

(declare-fun res!1461876 () Bool)

(assert (=> b!3613515 (=> res!1461876 e!2236477)))

(assert (=> b!3613515 (= res!1461876 (not (contains!7364 (usedCharacters!864 (regex!5650 anOtherTypeRule!33)) lt!1245283)))))

(declare-fun b!3613516 () Bool)

(assert (=> b!3613516 (= e!2236455 e!2236456)))

(declare-fun c!625151 () Bool)

(assert (=> b!3613516 (= c!625151 (not (isSeparator!5650 (rule!8404 (_1!22100 lt!1245300)))))))

(declare-fun res!1461883 () Bool)

(assert (=> start!336438 (=> (not res!1461883) (not e!2236463))))

(get-info :version)

(assert (=> start!336438 (= res!1461883 ((_ is Lexer!5237) thiss!23823))))

(assert (=> start!336438 e!2236463))

(assert (=> start!336438 e!2236466))

(assert (=> start!336438 e!2236449))

(assert (=> start!336438 true))

(declare-fun inv!51425 (Token!10666) Bool)

(assert (=> start!336438 (and (inv!51425 token!511) e!2236459)))

(assert (=> start!336438 e!2236454))

(assert (=> start!336438 e!2236451))

(assert (=> b!3613517 (= e!2236465 (and tp!1104408 tp!1104398))))

(declare-fun b!3613518 () Bool)

(declare-fun Unit!54364 () Unit!54354)

(assert (=> b!3613518 (= e!2236456 Unit!54364)))

(declare-fun b!3613519 () Bool)

(assert (=> b!3613519 false))

(declare-fun lt!1245318 () Unit!54354)

(assert (=> b!3613519 (= lt!1245318 call!261300)))

(assert (=> b!3613519 (not call!261296)))

(declare-fun lt!1245325 () Unit!54354)

(assert (=> b!3613519 (= lt!1245325 (lemmaSepRuleNotContainsCharContainedInANonSepRule!238 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8404 (_1!22100 lt!1245300)) lt!1245283))))

(declare-fun Unit!54365 () Unit!54354)

(assert (=> b!3613519 (= e!2236448 Unit!54365)))

(declare-fun bm!261294 () Bool)

(declare-fun call!261295 () List!38168)

(assert (=> bm!261294 (= call!261296 (contains!7364 call!261295 lt!1245283))))

(assert (=> b!3613520 (= e!2236462 (and tp!1104405 tp!1104399))))

(declare-fun b!3613521 () Bool)

(declare-fun Unit!54366 () Unit!54354)

(assert (=> b!3613521 (= e!2236467 Unit!54366)))

(declare-fun b!3613522 () Bool)

(declare-fun Unit!54367 () Unit!54354)

(assert (=> b!3613522 (= e!2236470 Unit!54367)))

(declare-fun lt!1245284 () Unit!54354)

(assert (=> b!3613522 (= lt!1245284 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!634 (regex!5650 rule!403) lt!1245306 lt!1245282))))

(assert (=> b!3613522 false))

(declare-fun bm!261295 () Bool)

(assert (=> bm!261295 (= call!261295 (usedCharacters!864 (regex!5650 (rule!8404 (_1!22100 lt!1245300)))))))

(declare-fun b!3613523 () Bool)

(declare-fun res!1461884 () Bool)

(assert (=> b!3613523 (=> (not res!1461884) (not e!2236463))))

(assert (=> b!3613523 (= res!1461884 (contains!7363 rules!3307 rule!403))))

(declare-fun b!3613524 () Bool)

(assert (=> b!3613524 (= e!2236461 e!2236457)))

(declare-fun res!1461881 () Bool)

(assert (=> b!3613524 (=> res!1461881 e!2236457)))

(assert (=> b!3613524 (= res!1461881 (= (rule!8404 (_1!22100 lt!1245300)) (rule!8404 token!511)))))

(assert (=> b!3613524 (= lt!1245308 lt!1245306)))

(declare-fun lt!1245310 () Unit!54354)

(declare-fun lemmaIsPrefixSameLengthThenSameList!587 (List!38168 List!38168 List!38168) Unit!54354)

(assert (=> b!3613524 (= lt!1245310 (lemmaIsPrefixSameLengthThenSameList!587 lt!1245308 lt!1245306 lt!1245292))))

(declare-fun lt!1245316 () Unit!54354)

(assert (=> b!3613524 (= lt!1245316 e!2236460)))

(declare-fun c!625149 () Bool)

(declare-fun lt!1245303 () Int)

(assert (=> b!3613524 (= c!625149 (< lt!1245287 lt!1245303))))

(declare-fun lt!1245301 () Unit!54354)

(assert (=> b!3613524 (= lt!1245301 e!2236453)))

(declare-fun c!625152 () Bool)

(assert (=> b!3613524 (= c!625152 (> lt!1245287 lt!1245303))))

(assert (=> b!3613524 (= lt!1245303 (size!29012 lt!1245298))))

(declare-fun lt!1245322 () Unit!54354)

(assert (=> b!3613524 (= lt!1245322 e!2236455)))

(declare-fun c!625150 () Bool)

(assert (=> b!3613524 (= c!625150 (isSeparator!5650 rule!403))))

(declare-fun lt!1245293 () Unit!54354)

(assert (=> b!3613524 (= lt!1245293 e!2236470)))

(declare-fun c!625155 () Bool)

(assert (=> b!3613524 (= c!625155 (not (contains!7364 lt!1245304 lt!1245282)))))

(assert (=> b!3613524 (= lt!1245282 (head!7612 lt!1245308))))

(assert (= (and start!336438 res!1461883) b!3613502))

(assert (= (and b!3613502 res!1461880) b!3613481))

(assert (= (and b!3613481 res!1461872) b!3613523))

(assert (= (and b!3613523 res!1461884) b!3613483))

(assert (= (and b!3613483 res!1461869) b!3613498))

(assert (= (and b!3613498 res!1461867) b!3613484))

(assert (= (and b!3613484 res!1461879) b!3613478))

(assert (= (and b!3613478 res!1461882) b!3613479))

(assert (= (and b!3613479 res!1461886) b!3613492))

(assert (= (and b!3613492 res!1461874) b!3613495))

(assert (= (and b!3613495 (not res!1461870)) b!3613487))

(assert (= (and b!3613487 (not res!1461866)) b!3613506))

(assert (= (and b!3613506 (not res!1461868)) b!3613515))

(assert (= (and b!3613515 (not res!1461876)) b!3613489))

(assert (= (and b!3613489 (not res!1461873)) b!3613482))

(assert (= (and b!3613482 res!1461887) b!3613490))

(assert (= (and b!3613490 res!1461878) b!3613507))

(assert (= (and b!3613482 (not res!1461871)) b!3613510))

(assert (= (and b!3613510 (not res!1461885)) b!3613496))

(assert (= (and b!3613496 (not res!1461877)) b!3613514))

(assert (= (and b!3613514 (not res!1461865)) b!3613524))

(assert (= (and b!3613524 c!625155) b!3613522))

(assert (= (and b!3613524 (not c!625155)) b!3613485))

(assert (= (and b!3613524 c!625150) b!3613516))

(assert (= (and b!3613524 (not c!625150)) b!3613512))

(assert (= (and b!3613516 c!625151) b!3613499))

(assert (= (and b!3613516 (not c!625151)) b!3613518))

(assert (= (and b!3613512 c!625154) b!3613501))

(assert (= (and b!3613512 (not c!625154)) b!3613521))

(assert (= (or b!3613499 b!3613501) bm!261290))

(assert (= (or b!3613499 b!3613501) bm!261293))

(assert (= (or b!3613499 b!3613501) bm!261292))

(assert (= (and b!3613524 c!625152) b!3613508))

(assert (= (and b!3613524 (not c!625152)) b!3613509))

(assert (= (and b!3613508 c!625153) b!3613519))

(assert (= (and b!3613508 (not c!625153)) b!3613477))

(assert (= (or b!3613519 b!3613477) bm!261291))

(assert (= (or b!3613519 b!3613477) bm!261295))

(assert (= (or b!3613519 b!3613477) bm!261294))

(assert (= (and b!3613524 c!625149) b!3613488))

(assert (= (and b!3613524 (not c!625149)) b!3613511))

(assert (= (and b!3613524 (not res!1461881)) b!3613491))

(assert (= (and b!3613491 (not res!1461875)) b!3613497))

(assert (= b!3613504 b!3613517))

(assert (= b!3613493 b!3613504))

(assert (= (and start!336438 ((_ is Cons!38045) rules!3307)) b!3613493))

(assert (= (and start!336438 ((_ is Cons!38044) suffix!1395)) b!3613503))

(assert (= b!3613480 b!3613513))

(assert (= b!3613494 b!3613480))

(assert (= start!336438 b!3613494))

(assert (= b!3613505 b!3613520))

(assert (= start!336438 b!3613505))

(assert (= b!3613500 b!3613486))

(assert (= start!336438 b!3613500))

(declare-fun m!4111645 () Bool)

(assert (=> start!336438 m!4111645))

(declare-fun m!4111647 () Bool)

(assert (=> b!3613506 m!4111647))

(declare-fun m!4111649 () Bool)

(assert (=> b!3613506 m!4111649))

(declare-fun m!4111651 () Bool)

(assert (=> b!3613506 m!4111651))

(declare-fun m!4111653 () Bool)

(assert (=> b!3613524 m!4111653))

(declare-fun m!4111655 () Bool)

(assert (=> b!3613524 m!4111655))

(declare-fun m!4111657 () Bool)

(assert (=> b!3613524 m!4111657))

(declare-fun m!4111659 () Bool)

(assert (=> b!3613524 m!4111659))

(declare-fun m!4111661 () Bool)

(assert (=> b!3613515 m!4111661))

(assert (=> b!3613515 m!4111661))

(declare-fun m!4111663 () Bool)

(assert (=> b!3613515 m!4111663))

(declare-fun m!4111665 () Bool)

(assert (=> b!3613494 m!4111665))

(declare-fun m!4111667 () Bool)

(assert (=> bm!261295 m!4111667))

(declare-fun m!4111669 () Bool)

(assert (=> bm!261292 m!4111669))

(declare-fun m!4111671 () Bool)

(assert (=> b!3613478 m!4111671))

(declare-fun m!4111673 () Bool)

(assert (=> b!3613496 m!4111673))

(declare-fun m!4111675 () Bool)

(assert (=> b!3613496 m!4111675))

(declare-fun m!4111677 () Bool)

(assert (=> b!3613496 m!4111677))

(declare-fun m!4111679 () Bool)

(assert (=> b!3613496 m!4111679))

(declare-fun m!4111681 () Bool)

(assert (=> b!3613496 m!4111681))

(declare-fun m!4111683 () Bool)

(assert (=> b!3613496 m!4111683))

(assert (=> b!3613496 m!4111675))

(declare-fun m!4111685 () Bool)

(assert (=> b!3613510 m!4111685))

(declare-fun m!4111687 () Bool)

(assert (=> b!3613479 m!4111687))

(declare-fun m!4111689 () Bool)

(assert (=> b!3613489 m!4111689))

(declare-fun m!4111691 () Bool)

(assert (=> b!3613502 m!4111691))

(declare-fun m!4111693 () Bool)

(assert (=> b!3613523 m!4111693))

(declare-fun m!4111695 () Bool)

(assert (=> b!3613480 m!4111695))

(declare-fun m!4111697 () Bool)

(assert (=> b!3613480 m!4111697))

(declare-fun m!4111699 () Bool)

(assert (=> b!3613500 m!4111699))

(declare-fun m!4111701 () Bool)

(assert (=> b!3613500 m!4111701))

(declare-fun m!4111703 () Bool)

(assert (=> b!3613488 m!4111703))

(declare-fun m!4111705 () Bool)

(assert (=> b!3613481 m!4111705))

(declare-fun m!4111707 () Bool)

(assert (=> b!3613490 m!4111707))

(assert (=> b!3613490 m!4111707))

(declare-fun m!4111709 () Bool)

(assert (=> b!3613490 m!4111709))

(assert (=> b!3613490 m!4111709))

(declare-fun m!4111711 () Bool)

(assert (=> b!3613490 m!4111711))

(declare-fun m!4111713 () Bool)

(assert (=> b!3613490 m!4111713))

(declare-fun m!4111715 () Bool)

(assert (=> b!3613519 m!4111715))

(declare-fun m!4111717 () Bool)

(assert (=> b!3613499 m!4111717))

(declare-fun m!4111719 () Bool)

(assert (=> b!3613497 m!4111719))

(declare-fun m!4111721 () Bool)

(assert (=> b!3613497 m!4111721))

(declare-fun m!4111723 () Bool)

(assert (=> b!3613497 m!4111723))

(assert (=> b!3613497 m!4111719))

(declare-fun m!4111725 () Bool)

(assert (=> b!3613497 m!4111725))

(declare-fun m!4111727 () Bool)

(assert (=> b!3613497 m!4111727))

(declare-fun m!4111729 () Bool)

(assert (=> b!3613505 m!4111729))

(declare-fun m!4111731 () Bool)

(assert (=> b!3613505 m!4111731))

(declare-fun m!4111733 () Bool)

(assert (=> b!3613495 m!4111733))

(declare-fun m!4111735 () Bool)

(assert (=> b!3613495 m!4111735))

(declare-fun m!4111737 () Bool)

(assert (=> b!3613495 m!4111737))

(declare-fun m!4111739 () Bool)

(assert (=> b!3613491 m!4111739))

(declare-fun m!4111741 () Bool)

(assert (=> b!3613491 m!4111741))

(declare-fun m!4111743 () Bool)

(assert (=> bm!261294 m!4111743))

(declare-fun m!4111745 () Bool)

(assert (=> b!3613508 m!4111745))

(declare-fun m!4111747 () Bool)

(assert (=> b!3613508 m!4111747))

(declare-fun m!4111749 () Bool)

(assert (=> b!3613484 m!4111749))

(declare-fun m!4111751 () Bool)

(assert (=> b!3613484 m!4111751))

(declare-fun m!4111753 () Bool)

(assert (=> b!3613484 m!4111753))

(declare-fun m!4111755 () Bool)

(assert (=> b!3613484 m!4111755))

(declare-fun m!4111757 () Bool)

(assert (=> b!3613477 m!4111757))

(declare-fun m!4111759 () Bool)

(assert (=> b!3613501 m!4111759))

(declare-fun m!4111761 () Bool)

(assert (=> b!3613514 m!4111761))

(declare-fun m!4111763 () Bool)

(assert (=> b!3613514 m!4111763))

(declare-fun m!4111765 () Bool)

(assert (=> b!3613514 m!4111765))

(declare-fun m!4111767 () Bool)

(assert (=> b!3613514 m!4111767))

(declare-fun m!4111769 () Bool)

(assert (=> b!3613514 m!4111769))

(declare-fun m!4111771 () Bool)

(assert (=> b!3613514 m!4111771))

(assert (=> b!3613514 m!4111767))

(declare-fun m!4111773 () Bool)

(assert (=> b!3613514 m!4111773))

(declare-fun m!4111775 () Bool)

(assert (=> b!3613482 m!4111775))

(declare-fun m!4111777 () Bool)

(assert (=> b!3613482 m!4111777))

(declare-fun m!4111779 () Bool)

(assert (=> b!3613482 m!4111779))

(declare-fun m!4111781 () Bool)

(assert (=> b!3613482 m!4111781))

(declare-fun m!4111783 () Bool)

(assert (=> b!3613482 m!4111783))

(declare-fun m!4111785 () Bool)

(assert (=> b!3613482 m!4111785))

(declare-fun m!4111787 () Bool)

(assert (=> b!3613482 m!4111787))

(declare-fun m!4111789 () Bool)

(assert (=> b!3613482 m!4111789))

(declare-fun m!4111791 () Bool)

(assert (=> b!3613482 m!4111791))

(declare-fun m!4111793 () Bool)

(assert (=> b!3613482 m!4111793))

(declare-fun m!4111795 () Bool)

(assert (=> b!3613482 m!4111795))

(declare-fun m!4111797 () Bool)

(assert (=> b!3613482 m!4111797))

(declare-fun m!4111799 () Bool)

(assert (=> b!3613482 m!4111799))

(assert (=> b!3613482 m!4111707))

(assert (=> b!3613482 m!4111785))

(declare-fun m!4111801 () Bool)

(assert (=> b!3613482 m!4111801))

(declare-fun m!4111803 () Bool)

(assert (=> bm!261291 m!4111803))

(declare-fun m!4111805 () Bool)

(assert (=> b!3613483 m!4111805))

(declare-fun m!4111807 () Bool)

(assert (=> b!3613504 m!4111807))

(declare-fun m!4111809 () Bool)

(assert (=> b!3613504 m!4111809))

(assert (=> bm!261293 m!4111667))

(declare-fun m!4111811 () Bool)

(assert (=> b!3613522 m!4111811))

(declare-fun m!4111813 () Bool)

(assert (=> b!3613487 m!4111813))

(declare-fun m!4111815 () Bool)

(assert (=> bm!261290 m!4111815))

(check-sat b_and!263717 (not b!3613519) (not b!3613490) (not bm!261290) b_and!263707 (not bm!261295) (not bm!261292) (not b!3613503) (not b!3613496) (not bm!261294) (not b!3613480) (not b!3613491) (not b!3613505) (not b!3613487) (not b!3613488) (not b_next!94651) (not start!336438) (not b!3613478) (not b!3613514) (not b!3613493) (not b_next!94653) b_and!263721 (not b!3613483) (not b!3613504) (not b!3613501) (not b_next!94657) (not b!3613484) (not b!3613499) b_and!263709 b_and!263715 (not b!3613523) (not b!3613494) (not b!3613489) tp_is_empty!17901 (not b!3613481) (not b!3613482) (not b!3613522) (not b!3613510) (not b!3613506) (not b_next!94649) (not b_next!94663) (not b!3613479) (not b!3613500) (not bm!261293) (not b!3613495) (not b!3613524) (not b_next!94659) (not b_next!94661) (not b!3613497) (not b!3613502) (not b_next!94655) (not b!3613477) b_and!263711 (not b!3613508) b_and!263719 b_and!263713 (not b!3613515) (not bm!261291))
(check-sat b_and!263717 (not b_next!94651) b_and!263707 (not b_next!94657) (not b_next!94655) (not b_next!94653) b_and!263721 b_and!263709 b_and!263715 (not b_next!94649) (not b_next!94663) (not b_next!94659) (not b_next!94661) b_and!263711 b_and!263719 b_and!263713)
(get-model)

(declare-fun d!1063696 () Bool)

(declare-fun res!1461903 () Bool)

(declare-fun e!2236491 () Bool)

(assert (=> d!1063696 (=> res!1461903 e!2236491)))

(assert (=> d!1063696 (= res!1461903 (not ((_ is Cons!38045) rules!3307)))))

(assert (=> d!1063696 (= (sepAndNonSepRulesDisjointChars!1820 rules!3307 rules!3307) e!2236491)))

(declare-fun b!3613537 () Bool)

(declare-fun e!2236492 () Bool)

(assert (=> b!3613537 (= e!2236491 e!2236492)))

(declare-fun res!1461904 () Bool)

(assert (=> b!3613537 (=> (not res!1461904) (not e!2236492))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!826 (Rule!11100 List!38169) Bool)

(assert (=> b!3613537 (= res!1461904 (ruleDisjointCharsFromAllFromOtherType!826 (h!43465 rules!3307) rules!3307))))

(declare-fun b!3613538 () Bool)

(assert (=> b!3613538 (= e!2236492 (sepAndNonSepRulesDisjointChars!1820 rules!3307 (t!293580 rules!3307)))))

(assert (= (and d!1063696 (not res!1461903)) b!3613537))

(assert (= (and b!3613537 res!1461904) b!3613538))

(declare-fun m!4111823 () Bool)

(assert (=> b!3613537 m!4111823))

(declare-fun m!4111825 () Bool)

(assert (=> b!3613538 m!4111825))

(assert (=> b!3613489 d!1063696))

(declare-fun d!1063698 () Bool)

(declare-fun lt!1245336 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5442 (List!38168) (InoxSet C!21004))

(assert (=> d!1063698 (= lt!1245336 (select (content!5442 call!261297) lt!1245282))))

(declare-fun e!2236497 () Bool)

(assert (=> d!1063698 (= lt!1245336 e!2236497)))

(declare-fun res!1461909 () Bool)

(assert (=> d!1063698 (=> (not res!1461909) (not e!2236497))))

(assert (=> d!1063698 (= res!1461909 ((_ is Cons!38044) call!261297))))

(assert (=> d!1063698 (= (contains!7364 call!261297 lt!1245282) lt!1245336)))

(declare-fun b!3613543 () Bool)

(declare-fun e!2236498 () Bool)

(assert (=> b!3613543 (= e!2236497 e!2236498)))

(declare-fun res!1461910 () Bool)

(assert (=> b!3613543 (=> res!1461910 e!2236498)))

(assert (=> b!3613543 (= res!1461910 (= (h!43464 call!261297) lt!1245282))))

(declare-fun b!3613544 () Bool)

(assert (=> b!3613544 (= e!2236498 (contains!7364 (t!293579 call!261297) lt!1245282))))

(assert (= (and d!1063698 res!1461909) b!3613543))

(assert (= (and b!3613543 (not res!1461910)) b!3613544))

(declare-fun m!4111827 () Bool)

(assert (=> d!1063698 m!4111827))

(declare-fun m!4111829 () Bool)

(assert (=> d!1063698 m!4111829))

(declare-fun m!4111831 () Bool)

(assert (=> b!3613544 m!4111831))

(assert (=> bm!261292 d!1063698))

(declare-fun b!3613591 () Bool)

(declare-fun e!2236523 () Bool)

(declare-fun derivativeStep!3152 (Regex!10409 C!21004) Regex!10409)

(declare-fun tail!5601 (List!38168) List!38168)

(assert (=> b!3613591 (= e!2236523 (matchR!4978 (derivativeStep!3152 (regex!5650 lt!1245296) (head!7612 (list!14034 (charsOf!3664 (_1!22100 lt!1245300))))) (tail!5601 (list!14034 (charsOf!3664 (_1!22100 lt!1245300))))))))

(declare-fun b!3613592 () Bool)

(declare-fun res!1461946 () Bool)

(declare-fun e!2236524 () Bool)

(assert (=> b!3613592 (=> res!1461946 e!2236524)))

(assert (=> b!3613592 (= res!1461946 (not ((_ is ElementMatch!10409) (regex!5650 lt!1245296))))))

(declare-fun e!2236525 () Bool)

(assert (=> b!3613592 (= e!2236525 e!2236524)))

(declare-fun b!3613593 () Bool)

(declare-fun res!1461944 () Bool)

(declare-fun e!2236526 () Bool)

(assert (=> b!3613593 (=> (not res!1461944) (not e!2236526))))

(assert (=> b!3613593 (= res!1461944 (isEmpty!22470 (tail!5601 (list!14034 (charsOf!3664 (_1!22100 lt!1245300))))))))

(declare-fun b!3613594 () Bool)

(declare-fun nullable!3603 (Regex!10409) Bool)

(assert (=> b!3613594 (= e!2236523 (nullable!3603 (regex!5650 lt!1245296)))))

(declare-fun b!3613595 () Bool)

(declare-fun e!2236527 () Bool)

(assert (=> b!3613595 (= e!2236527 (not (= (head!7612 (list!14034 (charsOf!3664 (_1!22100 lt!1245300)))) (c!625156 (regex!5650 lt!1245296)))))))

(declare-fun b!3613596 () Bool)

(declare-fun e!2236521 () Bool)

(declare-fun lt!1245349 () Bool)

(declare-fun call!261303 () Bool)

(assert (=> b!3613596 (= e!2236521 (= lt!1245349 call!261303))))

(declare-fun d!1063700 () Bool)

(assert (=> d!1063700 e!2236521))

(declare-fun c!625170 () Bool)

(assert (=> d!1063700 (= c!625170 ((_ is EmptyExpr!10409) (regex!5650 lt!1245296)))))

(assert (=> d!1063700 (= lt!1245349 e!2236523)))

(declare-fun c!625171 () Bool)

(assert (=> d!1063700 (= c!625171 (isEmpty!22470 (list!14034 (charsOf!3664 (_1!22100 lt!1245300)))))))

(declare-fun validRegex!4765 (Regex!10409) Bool)

(assert (=> d!1063700 (validRegex!4765 (regex!5650 lt!1245296))))

(assert (=> d!1063700 (= (matchR!4978 (regex!5650 lt!1245296) (list!14034 (charsOf!3664 (_1!22100 lt!1245300)))) lt!1245349)))

(declare-fun b!3613597 () Bool)

(assert (=> b!3613597 (= e!2236521 e!2236525)))

(declare-fun c!625169 () Bool)

(assert (=> b!3613597 (= c!625169 ((_ is EmptyLang!10409) (regex!5650 lt!1245296)))))

(declare-fun b!3613598 () Bool)

(declare-fun res!1461948 () Bool)

(assert (=> b!3613598 (=> (not res!1461948) (not e!2236526))))

(assert (=> b!3613598 (= res!1461948 (not call!261303))))

(declare-fun b!3613599 () Bool)

(declare-fun e!2236522 () Bool)

(assert (=> b!3613599 (= e!2236522 e!2236527)))

(declare-fun res!1461942 () Bool)

(assert (=> b!3613599 (=> res!1461942 e!2236527)))

(assert (=> b!3613599 (= res!1461942 call!261303)))

(declare-fun b!3613600 () Bool)

(assert (=> b!3613600 (= e!2236525 (not lt!1245349))))

(declare-fun b!3613601 () Bool)

(assert (=> b!3613601 (= e!2236524 e!2236522)))

(declare-fun res!1461945 () Bool)

(assert (=> b!3613601 (=> (not res!1461945) (not e!2236522))))

(assert (=> b!3613601 (= res!1461945 (not lt!1245349))))

(declare-fun b!3613602 () Bool)

(assert (=> b!3613602 (= e!2236526 (= (head!7612 (list!14034 (charsOf!3664 (_1!22100 lt!1245300)))) (c!625156 (regex!5650 lt!1245296))))))

(declare-fun bm!261298 () Bool)

(assert (=> bm!261298 (= call!261303 (isEmpty!22470 (list!14034 (charsOf!3664 (_1!22100 lt!1245300)))))))

(declare-fun b!3613603 () Bool)

(declare-fun res!1461941 () Bool)

(assert (=> b!3613603 (=> res!1461941 e!2236527)))

(assert (=> b!3613603 (= res!1461941 (not (isEmpty!22470 (tail!5601 (list!14034 (charsOf!3664 (_1!22100 lt!1245300)))))))))

(declare-fun b!3613604 () Bool)

(declare-fun res!1461943 () Bool)

(assert (=> b!3613604 (=> res!1461943 e!2236524)))

(assert (=> b!3613604 (= res!1461943 e!2236526)))

(declare-fun res!1461947 () Bool)

(assert (=> b!3613604 (=> (not res!1461947) (not e!2236526))))

(assert (=> b!3613604 (= res!1461947 lt!1245349)))

(assert (= (and d!1063700 c!625171) b!3613594))

(assert (= (and d!1063700 (not c!625171)) b!3613591))

(assert (= (and d!1063700 c!625170) b!3613596))

(assert (= (and d!1063700 (not c!625170)) b!3613597))

(assert (= (and b!3613597 c!625169) b!3613600))

(assert (= (and b!3613597 (not c!625169)) b!3613592))

(assert (= (and b!3613592 (not res!1461946)) b!3613604))

(assert (= (and b!3613604 res!1461947) b!3613598))

(assert (= (and b!3613598 res!1461948) b!3613593))

(assert (= (and b!3613593 res!1461944) b!3613602))

(assert (= (and b!3613604 (not res!1461943)) b!3613601))

(assert (= (and b!3613601 res!1461945) b!3613599))

(assert (= (and b!3613599 (not res!1461942)) b!3613603))

(assert (= (and b!3613603 (not res!1461941)) b!3613595))

(assert (= (or b!3613596 b!3613598 b!3613599) bm!261298))

(assert (=> bm!261298 m!4111709))

(declare-fun m!4111833 () Bool)

(assert (=> bm!261298 m!4111833))

(assert (=> b!3613593 m!4111709))

(declare-fun m!4111835 () Bool)

(assert (=> b!3613593 m!4111835))

(assert (=> b!3613593 m!4111835))

(declare-fun m!4111837 () Bool)

(assert (=> b!3613593 m!4111837))

(assert (=> b!3613602 m!4111709))

(declare-fun m!4111839 () Bool)

(assert (=> b!3613602 m!4111839))

(assert (=> b!3613591 m!4111709))

(assert (=> b!3613591 m!4111839))

(assert (=> b!3613591 m!4111839))

(declare-fun m!4111841 () Bool)

(assert (=> b!3613591 m!4111841))

(assert (=> b!3613591 m!4111709))

(assert (=> b!3613591 m!4111835))

(assert (=> b!3613591 m!4111841))

(assert (=> b!3613591 m!4111835))

(declare-fun m!4111843 () Bool)

(assert (=> b!3613591 m!4111843))

(assert (=> b!3613595 m!4111709))

(assert (=> b!3613595 m!4111839))

(assert (=> b!3613603 m!4111709))

(assert (=> b!3613603 m!4111835))

(assert (=> b!3613603 m!4111835))

(assert (=> b!3613603 m!4111837))

(assert (=> d!1063700 m!4111709))

(assert (=> d!1063700 m!4111833))

(declare-fun m!4111849 () Bool)

(assert (=> d!1063700 m!4111849))

(declare-fun m!4111853 () Bool)

(assert (=> b!3613594 m!4111853))

(assert (=> b!3613490 d!1063700))

(declare-fun d!1063702 () Bool)

(declare-fun list!14036 (Conc!11595) List!38168)

(assert (=> d!1063702 (= (list!14034 (charsOf!3664 (_1!22100 lt!1245300))) (list!14036 (c!625157 (charsOf!3664 (_1!22100 lt!1245300)))))))

(declare-fun bs!570936 () Bool)

(assert (= bs!570936 d!1063702))

(declare-fun m!4111895 () Bool)

(assert (=> bs!570936 m!4111895))

(assert (=> b!3613490 d!1063702))

(declare-fun d!1063706 () Bool)

(declare-fun lt!1245360 () BalanceConc!22804)

(assert (=> d!1063706 (= (list!14034 lt!1245360) (originalCharacters!6364 (_1!22100 lt!1245300)))))

(declare-fun dynLambda!16459 (Int TokenValue!5880) BalanceConc!22804)

(assert (=> d!1063706 (= lt!1245360 (dynLambda!16459 (toChars!7793 (transformation!5650 (rule!8404 (_1!22100 lt!1245300)))) (value!181485 (_1!22100 lt!1245300))))))

(assert (=> d!1063706 (= (charsOf!3664 (_1!22100 lt!1245300)) lt!1245360)))

(declare-fun b_lambda!106909 () Bool)

(assert (=> (not b_lambda!106909) (not d!1063706)))

(declare-fun tb!207185 () Bool)

(declare-fun t!293590 () Bool)

(assert (=> (and b!3613486 (= (toChars!7793 (transformation!5650 anOtherTypeRule!33)) (toChars!7793 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) t!293590) tb!207185))

(declare-fun b!3613618 () Bool)

(declare-fun e!2236534 () Bool)

(declare-fun tp!1104415 () Bool)

(declare-fun inv!51426 (Conc!11595) Bool)

(assert (=> b!3613618 (= e!2236534 (and (inv!51426 (c!625157 (dynLambda!16459 (toChars!7793 (transformation!5650 (rule!8404 (_1!22100 lt!1245300)))) (value!181485 (_1!22100 lt!1245300))))) tp!1104415))))

(declare-fun result!252488 () Bool)

(declare-fun inv!51427 (BalanceConc!22804) Bool)

(assert (=> tb!207185 (= result!252488 (and (inv!51427 (dynLambda!16459 (toChars!7793 (transformation!5650 (rule!8404 (_1!22100 lt!1245300)))) (value!181485 (_1!22100 lt!1245300)))) e!2236534))))

(assert (= tb!207185 b!3613618))

(declare-fun m!4111899 () Bool)

(assert (=> b!3613618 m!4111899))

(declare-fun m!4111901 () Bool)

(assert (=> tb!207185 m!4111901))

(assert (=> d!1063706 t!293590))

(declare-fun b_and!263731 () Bool)

(assert (= b_and!263709 (and (=> t!293590 result!252488) b_and!263731)))

(declare-fun tb!207187 () Bool)

(declare-fun t!293592 () Bool)

(assert (=> (and b!3613513 (= (toChars!7793 (transformation!5650 (rule!8404 token!511))) (toChars!7793 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) t!293592) tb!207187))

(declare-fun result!252492 () Bool)

(assert (= result!252492 result!252488))

(assert (=> d!1063706 t!293592))

(declare-fun b_and!263733 () Bool)

(assert (= b_and!263713 (and (=> t!293592 result!252492) b_and!263733)))

(declare-fun t!293594 () Bool)

(declare-fun tb!207189 () Bool)

(assert (=> (and b!3613520 (= (toChars!7793 (transformation!5650 rule!403)) (toChars!7793 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) t!293594) tb!207189))

(declare-fun result!252494 () Bool)

(assert (= result!252494 result!252488))

(assert (=> d!1063706 t!293594))

(declare-fun b_and!263735 () Bool)

(assert (= b_and!263717 (and (=> t!293594 result!252494) b_and!263735)))

(declare-fun tb!207191 () Bool)

(declare-fun t!293596 () Bool)

(assert (=> (and b!3613517 (= (toChars!7793 (transformation!5650 (h!43465 rules!3307))) (toChars!7793 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) t!293596) tb!207191))

(declare-fun result!252496 () Bool)

(assert (= result!252496 result!252488))

(assert (=> d!1063706 t!293596))

(declare-fun b_and!263737 () Bool)

(assert (= b_and!263721 (and (=> t!293596 result!252496) b_and!263737)))

(declare-fun m!4111903 () Bool)

(assert (=> d!1063706 m!4111903))

(declare-fun m!4111905 () Bool)

(assert (=> d!1063706 m!4111905))

(assert (=> b!3613490 d!1063706))

(declare-fun d!1063710 () Bool)

(assert (=> d!1063710 (= (get!12366 lt!1245286) (v!37680 lt!1245286))))

(assert (=> b!3613490 d!1063710))

(declare-fun d!1063712 () Bool)

(assert (=> d!1063712 (contains!7364 lt!1245308 (head!7612 suffix!1395))))

(declare-fun lt!1245366 () Unit!54354)

(declare-fun choose!21146 (List!38168 List!38168 List!38168 List!38168) Unit!54354)

(assert (=> d!1063712 (= lt!1245366 (choose!21146 lt!1245306 suffix!1395 lt!1245308 lt!1245292))))

(assert (=> d!1063712 (isPrefix!3013 lt!1245308 lt!1245292)))

(assert (=> d!1063712 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!28 lt!1245306 suffix!1395 lt!1245308 lt!1245292) lt!1245366)))

(declare-fun bs!570939 () Bool)

(assert (= bs!570939 d!1063712))

(assert (=> bs!570939 m!4111649))

(assert (=> bs!570939 m!4111649))

(declare-fun m!4111909 () Bool)

(assert (=> bs!570939 m!4111909))

(declare-fun m!4111911 () Bool)

(assert (=> bs!570939 m!4111911))

(assert (=> bs!570939 m!4111793))

(assert (=> b!3613508 d!1063712))

(declare-fun d!1063716 () Bool)

(declare-fun lt!1245367 () Bool)

(assert (=> d!1063716 (= lt!1245367 (select (content!5442 lt!1245308) lt!1245283))))

(declare-fun e!2236535 () Bool)

(assert (=> d!1063716 (= lt!1245367 e!2236535)))

(declare-fun res!1461956 () Bool)

(assert (=> d!1063716 (=> (not res!1461956) (not e!2236535))))

(assert (=> d!1063716 (= res!1461956 ((_ is Cons!38044) lt!1245308))))

(assert (=> d!1063716 (= (contains!7364 lt!1245308 lt!1245283) lt!1245367)))

(declare-fun b!3613619 () Bool)

(declare-fun e!2236536 () Bool)

(assert (=> b!3613619 (= e!2236535 e!2236536)))

(declare-fun res!1461957 () Bool)

(assert (=> b!3613619 (=> res!1461957 e!2236536)))

(assert (=> b!3613619 (= res!1461957 (= (h!43464 lt!1245308) lt!1245283))))

(declare-fun b!3613620 () Bool)

(assert (=> b!3613620 (= e!2236536 (contains!7364 (t!293579 lt!1245308) lt!1245283))))

(assert (= (and d!1063716 res!1461956) b!3613619))

(assert (= (and b!3613619 (not res!1461957)) b!3613620))

(declare-fun m!4111913 () Bool)

(assert (=> d!1063716 m!4111913))

(declare-fun m!4111915 () Bool)

(assert (=> d!1063716 m!4111915))

(declare-fun m!4111917 () Bool)

(assert (=> b!3613620 m!4111917))

(assert (=> b!3613508 d!1063716))

(declare-fun b!3613621 () Bool)

(declare-fun e!2236539 () Bool)

(assert (=> b!3613621 (= e!2236539 (matchR!4978 (derivativeStep!3152 (regex!5650 (rule!8404 (_1!22100 lt!1245300))) (head!7612 lt!1245308)) (tail!5601 lt!1245308)))))

(declare-fun b!3613622 () Bool)

(declare-fun res!1461963 () Bool)

(declare-fun e!2236540 () Bool)

(assert (=> b!3613622 (=> res!1461963 e!2236540)))

(assert (=> b!3613622 (= res!1461963 (not ((_ is ElementMatch!10409) (regex!5650 (rule!8404 (_1!22100 lt!1245300))))))))

(declare-fun e!2236541 () Bool)

(assert (=> b!3613622 (= e!2236541 e!2236540)))

(declare-fun b!3613623 () Bool)

(declare-fun res!1461961 () Bool)

(declare-fun e!2236542 () Bool)

(assert (=> b!3613623 (=> (not res!1461961) (not e!2236542))))

(assert (=> b!3613623 (= res!1461961 (isEmpty!22470 (tail!5601 lt!1245308)))))

(declare-fun b!3613624 () Bool)

(assert (=> b!3613624 (= e!2236539 (nullable!3603 (regex!5650 (rule!8404 (_1!22100 lt!1245300)))))))

(declare-fun b!3613625 () Bool)

(declare-fun e!2236543 () Bool)

(assert (=> b!3613625 (= e!2236543 (not (= (head!7612 lt!1245308) (c!625156 (regex!5650 (rule!8404 (_1!22100 lt!1245300)))))))))

(declare-fun b!3613626 () Bool)

(declare-fun e!2236537 () Bool)

(declare-fun lt!1245368 () Bool)

(declare-fun call!261304 () Bool)

(assert (=> b!3613626 (= e!2236537 (= lt!1245368 call!261304))))

(declare-fun d!1063718 () Bool)

(assert (=> d!1063718 e!2236537))

(declare-fun c!625174 () Bool)

(assert (=> d!1063718 (= c!625174 ((_ is EmptyExpr!10409) (regex!5650 (rule!8404 (_1!22100 lt!1245300)))))))

(assert (=> d!1063718 (= lt!1245368 e!2236539)))

(declare-fun c!625175 () Bool)

(assert (=> d!1063718 (= c!625175 (isEmpty!22470 lt!1245308))))

(assert (=> d!1063718 (validRegex!4765 (regex!5650 (rule!8404 (_1!22100 lt!1245300))))))

(assert (=> d!1063718 (= (matchR!4978 (regex!5650 (rule!8404 (_1!22100 lt!1245300))) lt!1245308) lt!1245368)))

(declare-fun b!3613627 () Bool)

(assert (=> b!3613627 (= e!2236537 e!2236541)))

(declare-fun c!625173 () Bool)

(assert (=> b!3613627 (= c!625173 ((_ is EmptyLang!10409) (regex!5650 (rule!8404 (_1!22100 lt!1245300)))))))

(declare-fun b!3613628 () Bool)

(declare-fun res!1461965 () Bool)

(assert (=> b!3613628 (=> (not res!1461965) (not e!2236542))))

(assert (=> b!3613628 (= res!1461965 (not call!261304))))

(declare-fun b!3613629 () Bool)

(declare-fun e!2236538 () Bool)

(assert (=> b!3613629 (= e!2236538 e!2236543)))

(declare-fun res!1461959 () Bool)

(assert (=> b!3613629 (=> res!1461959 e!2236543)))

(assert (=> b!3613629 (= res!1461959 call!261304)))

(declare-fun b!3613630 () Bool)

(assert (=> b!3613630 (= e!2236541 (not lt!1245368))))

(declare-fun b!3613631 () Bool)

(assert (=> b!3613631 (= e!2236540 e!2236538)))

(declare-fun res!1461962 () Bool)

(assert (=> b!3613631 (=> (not res!1461962) (not e!2236538))))

(assert (=> b!3613631 (= res!1461962 (not lt!1245368))))

(declare-fun b!3613632 () Bool)

(assert (=> b!3613632 (= e!2236542 (= (head!7612 lt!1245308) (c!625156 (regex!5650 (rule!8404 (_1!22100 lt!1245300))))))))

(declare-fun bm!261299 () Bool)

(assert (=> bm!261299 (= call!261304 (isEmpty!22470 lt!1245308))))

(declare-fun b!3613633 () Bool)

(declare-fun res!1461958 () Bool)

(assert (=> b!3613633 (=> res!1461958 e!2236543)))

(assert (=> b!3613633 (= res!1461958 (not (isEmpty!22470 (tail!5601 lt!1245308))))))

(declare-fun b!3613634 () Bool)

(declare-fun res!1461960 () Bool)

(assert (=> b!3613634 (=> res!1461960 e!2236540)))

(assert (=> b!3613634 (= res!1461960 e!2236542)))

(declare-fun res!1461964 () Bool)

(assert (=> b!3613634 (=> (not res!1461964) (not e!2236542))))

(assert (=> b!3613634 (= res!1461964 lt!1245368)))

(assert (= (and d!1063718 c!625175) b!3613624))

(assert (= (and d!1063718 (not c!625175)) b!3613621))

(assert (= (and d!1063718 c!625174) b!3613626))

(assert (= (and d!1063718 (not c!625174)) b!3613627))

(assert (= (and b!3613627 c!625173) b!3613630))

(assert (= (and b!3613627 (not c!625173)) b!3613622))

(assert (= (and b!3613622 (not res!1461963)) b!3613634))

(assert (= (and b!3613634 res!1461964) b!3613628))

(assert (= (and b!3613628 res!1461965) b!3613623))

(assert (= (and b!3613623 res!1461961) b!3613632))

(assert (= (and b!3613634 (not res!1461960)) b!3613631))

(assert (= (and b!3613631 res!1461962) b!3613629))

(assert (= (and b!3613629 (not res!1461959)) b!3613633))

(assert (= (and b!3613633 (not res!1461958)) b!3613625))

(assert (= (or b!3613626 b!3613628 b!3613629) bm!261299))

(declare-fun m!4111921 () Bool)

(assert (=> bm!261299 m!4111921))

(declare-fun m!4111923 () Bool)

(assert (=> b!3613623 m!4111923))

(assert (=> b!3613623 m!4111923))

(declare-fun m!4111925 () Bool)

(assert (=> b!3613623 m!4111925))

(assert (=> b!3613632 m!4111659))

(assert (=> b!3613621 m!4111659))

(assert (=> b!3613621 m!4111659))

(declare-fun m!4111927 () Bool)

(assert (=> b!3613621 m!4111927))

(assert (=> b!3613621 m!4111923))

(assert (=> b!3613621 m!4111927))

(assert (=> b!3613621 m!4111923))

(declare-fun m!4111929 () Bool)

(assert (=> b!3613621 m!4111929))

(assert (=> b!3613625 m!4111659))

(assert (=> b!3613633 m!4111923))

(assert (=> b!3613633 m!4111923))

(assert (=> b!3613633 m!4111925))

(assert (=> d!1063718 m!4111921))

(declare-fun m!4111931 () Bool)

(assert (=> d!1063718 m!4111931))

(declare-fun m!4111933 () Bool)

(assert (=> b!3613624 m!4111933))

(assert (=> b!3613510 d!1063718))

(declare-fun d!1063722 () Bool)

(declare-fun lt!1245376 () Int)

(assert (=> d!1063722 (>= lt!1245376 0)))

(declare-fun e!2236567 () Int)

(assert (=> d!1063722 (= lt!1245376 e!2236567)))

(declare-fun c!625190 () Bool)

(assert (=> d!1063722 (= c!625190 (and ((_ is Cons!38045) rules!3307) (= (h!43465 rules!3307) (rule!8404 (_1!22100 lt!1245300)))))))

(assert (=> d!1063722 (contains!7363 rules!3307 (rule!8404 (_1!22100 lt!1245300)))))

(assert (=> d!1063722 (= (getIndex!432 rules!3307 (rule!8404 (_1!22100 lt!1245300))) lt!1245376)))

(declare-fun b!3613678 () Bool)

(declare-fun e!2236566 () Int)

(assert (=> b!3613678 (= e!2236567 e!2236566)))

(declare-fun c!625189 () Bool)

(assert (=> b!3613678 (= c!625189 (and ((_ is Cons!38045) rules!3307) (not (= (h!43465 rules!3307) (rule!8404 (_1!22100 lt!1245300))))))))

(declare-fun b!3613679 () Bool)

(assert (=> b!3613679 (= e!2236566 (+ 1 (getIndex!432 (t!293580 rules!3307) (rule!8404 (_1!22100 lt!1245300)))))))

(declare-fun b!3613677 () Bool)

(assert (=> b!3613677 (= e!2236567 0)))

(declare-fun b!3613680 () Bool)

(assert (=> b!3613680 (= e!2236566 (- 1))))

(assert (= (and d!1063722 c!625190) b!3613677))

(assert (= (and d!1063722 (not c!625190)) b!3613678))

(assert (= (and b!3613678 c!625189) b!3613679))

(assert (= (and b!3613678 (not c!625189)) b!3613680))

(declare-fun m!4111941 () Bool)

(assert (=> d!1063722 m!4111941))

(declare-fun m!4111943 () Bool)

(assert (=> b!3613679 m!4111943))

(assert (=> b!3613491 d!1063722))

(declare-fun d!1063726 () Bool)

(declare-fun lt!1245377 () Int)

(assert (=> d!1063726 (>= lt!1245377 0)))

(declare-fun e!2236569 () Int)

(assert (=> d!1063726 (= lt!1245377 e!2236569)))

(declare-fun c!625192 () Bool)

(assert (=> d!1063726 (= c!625192 (and ((_ is Cons!38045) rules!3307) (= (h!43465 rules!3307) rule!403)))))

(assert (=> d!1063726 (contains!7363 rules!3307 rule!403)))

(assert (=> d!1063726 (= (getIndex!432 rules!3307 rule!403) lt!1245377)))

(declare-fun b!3613682 () Bool)

(declare-fun e!2236568 () Int)

(assert (=> b!3613682 (= e!2236569 e!2236568)))

(declare-fun c!625191 () Bool)

(assert (=> b!3613682 (= c!625191 (and ((_ is Cons!38045) rules!3307) (not (= (h!43465 rules!3307) rule!403))))))

(declare-fun b!3613683 () Bool)

(assert (=> b!3613683 (= e!2236568 (+ 1 (getIndex!432 (t!293580 rules!3307) rule!403)))))

(declare-fun b!3613681 () Bool)

(assert (=> b!3613681 (= e!2236569 0)))

(declare-fun b!3613684 () Bool)

(assert (=> b!3613684 (= e!2236568 (- 1))))

(assert (= (and d!1063726 c!625192) b!3613681))

(assert (= (and d!1063726 (not c!625192)) b!3613682))

(assert (= (and b!3613682 c!625191) b!3613683))

(assert (= (and b!3613682 (not c!625191)) b!3613684))

(assert (=> d!1063726 m!4111693))

(declare-fun m!4111945 () Bool)

(assert (=> b!3613683 m!4111945))

(assert (=> b!3613491 d!1063726))

(declare-fun d!1063728 () Bool)

(assert (=> d!1063728 (not (matchR!4978 (regex!5650 (rule!8404 (_1!22100 lt!1245300))) lt!1245308))))

(declare-fun lt!1245381 () Unit!54354)

(declare-fun choose!21147 (Regex!10409 List!38168 C!21004) Unit!54354)

(assert (=> d!1063728 (= lt!1245381 (choose!21147 (regex!5650 (rule!8404 (_1!22100 lt!1245300))) lt!1245308 lt!1245282))))

(assert (=> d!1063728 (validRegex!4765 (regex!5650 (rule!8404 (_1!22100 lt!1245300))))))

(assert (=> d!1063728 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!634 (regex!5650 (rule!8404 (_1!22100 lt!1245300))) lt!1245308 lt!1245282) lt!1245381)))

(declare-fun bs!570941 () Bool)

(assert (= bs!570941 d!1063728))

(assert (=> bs!570941 m!4111685))

(declare-fun m!4111963 () Bool)

(assert (=> bs!570941 m!4111963))

(assert (=> bs!570941 m!4111931))

(assert (=> bm!261290 d!1063728))

(declare-fun d!1063732 () Bool)

(declare-fun isEmpty!22474 (Option!7930) Bool)

(assert (=> d!1063732 (= (isDefined!6163 lt!1245305) (not (isEmpty!22474 lt!1245305)))))

(declare-fun bs!570942 () Bool)

(assert (= bs!570942 d!1063732))

(declare-fun m!4111965 () Bool)

(assert (=> bs!570942 m!4111965))

(assert (=> b!3613484 d!1063732))

(declare-fun b!3613766 () Bool)

(declare-fun e!2236609 () Bool)

(declare-fun e!2236608 () Bool)

(assert (=> b!3613766 (= e!2236609 e!2236608)))

(declare-fun res!1462048 () Bool)

(assert (=> b!3613766 (=> (not res!1462048) (not e!2236608))))

(declare-fun lt!1245425 () Option!7930)

(assert (=> b!3613766 (= res!1462048 (isDefined!6163 lt!1245425))))

(declare-fun b!3613767 () Bool)

(declare-fun e!2236607 () Option!7930)

(declare-fun call!261313 () Option!7930)

(assert (=> b!3613767 (= e!2236607 call!261313)))

(declare-fun b!3613768 () Bool)

(declare-fun res!1462047 () Bool)

(assert (=> b!3613768 (=> (not res!1462047) (not e!2236608))))

(assert (=> b!3613768 (= res!1462047 (= (++!9466 (list!14034 (charsOf!3664 (_1!22100 (get!12365 lt!1245425)))) (_2!22100 (get!12365 lt!1245425))) lt!1245306))))

(declare-fun b!3613769 () Bool)

(declare-fun res!1462049 () Bool)

(assert (=> b!3613769 (=> (not res!1462049) (not e!2236608))))

(assert (=> b!3613769 (= res!1462049 (matchR!4978 (regex!5650 (rule!8404 (_1!22100 (get!12365 lt!1245425)))) (list!14034 (charsOf!3664 (_1!22100 (get!12365 lt!1245425))))))))

(declare-fun b!3613770 () Bool)

(declare-fun res!1462052 () Bool)

(assert (=> b!3613770 (=> (not res!1462052) (not e!2236608))))

(assert (=> b!3613770 (= res!1462052 (< (size!29013 (_2!22100 (get!12365 lt!1245425))) (size!29013 lt!1245306)))))

(declare-fun bm!261308 () Bool)

(assert (=> bm!261308 (= call!261313 (maxPrefixOneRule!1917 thiss!23823 (h!43465 rules!3307) lt!1245306))))

(declare-fun b!3613771 () Bool)

(declare-fun res!1462053 () Bool)

(assert (=> b!3613771 (=> (not res!1462053) (not e!2236608))))

(assert (=> b!3613771 (= res!1462053 (= (list!14034 (charsOf!3664 (_1!22100 (get!12365 lt!1245425)))) (originalCharacters!6364 (_1!22100 (get!12365 lt!1245425)))))))

(declare-fun b!3613772 () Bool)

(declare-fun lt!1245427 () Option!7930)

(declare-fun lt!1245423 () Option!7930)

(assert (=> b!3613772 (= e!2236607 (ite (and ((_ is None!7929) lt!1245427) ((_ is None!7929) lt!1245423)) None!7929 (ite ((_ is None!7929) lt!1245423) lt!1245427 (ite ((_ is None!7929) lt!1245427) lt!1245423 (ite (>= (size!29011 (_1!22100 (v!37679 lt!1245427))) (size!29011 (_1!22100 (v!37679 lt!1245423)))) lt!1245427 lt!1245423)))))))

(assert (=> b!3613772 (= lt!1245427 call!261313)))

(assert (=> b!3613772 (= lt!1245423 (maxPrefix!2773 thiss!23823 (t!293580 rules!3307) lt!1245306))))

(declare-fun d!1063734 () Bool)

(assert (=> d!1063734 e!2236609))

(declare-fun res!1462050 () Bool)

(assert (=> d!1063734 (=> res!1462050 e!2236609)))

(assert (=> d!1063734 (= res!1462050 (isEmpty!22474 lt!1245425))))

(assert (=> d!1063734 (= lt!1245425 e!2236607)))

(declare-fun c!625203 () Bool)

(assert (=> d!1063734 (= c!625203 (and ((_ is Cons!38045) rules!3307) ((_ is Nil!38045) (t!293580 rules!3307))))))

(declare-fun lt!1245426 () Unit!54354)

(declare-fun lt!1245424 () Unit!54354)

(assert (=> d!1063734 (= lt!1245426 lt!1245424)))

(assert (=> d!1063734 (isPrefix!3013 lt!1245306 lt!1245306)))

(declare-fun lemmaIsPrefixRefl!1922 (List!38168 List!38168) Unit!54354)

(assert (=> d!1063734 (= lt!1245424 (lemmaIsPrefixRefl!1922 lt!1245306 lt!1245306))))

(declare-fun rulesValidInductive!1985 (LexerInterface!5239 List!38169) Bool)

(assert (=> d!1063734 (rulesValidInductive!1985 thiss!23823 rules!3307)))

(assert (=> d!1063734 (= (maxPrefix!2773 thiss!23823 rules!3307 lt!1245306) lt!1245425)))

(declare-fun b!3613773 () Bool)

(declare-fun res!1462051 () Bool)

(assert (=> b!3613773 (=> (not res!1462051) (not e!2236608))))

(assert (=> b!3613773 (= res!1462051 (= (value!181485 (_1!22100 (get!12365 lt!1245425))) (apply!9156 (transformation!5650 (rule!8404 (_1!22100 (get!12365 lt!1245425)))) (seqFromList!4203 (originalCharacters!6364 (_1!22100 (get!12365 lt!1245425)))))))))

(declare-fun b!3613774 () Bool)

(assert (=> b!3613774 (= e!2236608 (contains!7363 rules!3307 (rule!8404 (_1!22100 (get!12365 lt!1245425)))))))

(assert (= (and d!1063734 c!625203) b!3613767))

(assert (= (and d!1063734 (not c!625203)) b!3613772))

(assert (= (or b!3613767 b!3613772) bm!261308))

(assert (= (and d!1063734 (not res!1462050)) b!3613766))

(assert (= (and b!3613766 res!1462048) b!3613771))

(assert (= (and b!3613771 res!1462053) b!3613770))

(assert (= (and b!3613770 res!1462052) b!3613768))

(assert (= (and b!3613768 res!1462047) b!3613773))

(assert (= (and b!3613773 res!1462051) b!3613769))

(assert (= (and b!3613769 res!1462049) b!3613774))

(declare-fun m!4112029 () Bool)

(assert (=> d!1063734 m!4112029))

(assert (=> d!1063734 m!4111723))

(declare-fun m!4112031 () Bool)

(assert (=> d!1063734 m!4112031))

(declare-fun m!4112033 () Bool)

(assert (=> d!1063734 m!4112033))

(declare-fun m!4112035 () Bool)

(assert (=> b!3613771 m!4112035))

(declare-fun m!4112037 () Bool)

(assert (=> b!3613771 m!4112037))

(assert (=> b!3613771 m!4112037))

(declare-fun m!4112039 () Bool)

(assert (=> b!3613771 m!4112039))

(declare-fun m!4112041 () Bool)

(assert (=> b!3613766 m!4112041))

(assert (=> b!3613774 m!4112035))

(declare-fun m!4112043 () Bool)

(assert (=> b!3613774 m!4112043))

(assert (=> b!3613770 m!4112035))

(declare-fun m!4112045 () Bool)

(assert (=> b!3613770 m!4112045))

(assert (=> b!3613770 m!4111727))

(assert (=> b!3613768 m!4112035))

(assert (=> b!3613768 m!4112037))

(assert (=> b!3613768 m!4112037))

(assert (=> b!3613768 m!4112039))

(assert (=> b!3613768 m!4112039))

(declare-fun m!4112047 () Bool)

(assert (=> b!3613768 m!4112047))

(declare-fun m!4112049 () Bool)

(assert (=> bm!261308 m!4112049))

(assert (=> b!3613769 m!4112035))

(assert (=> b!3613769 m!4112037))

(assert (=> b!3613769 m!4112037))

(assert (=> b!3613769 m!4112039))

(assert (=> b!3613769 m!4112039))

(declare-fun m!4112051 () Bool)

(assert (=> b!3613769 m!4112051))

(declare-fun m!4112053 () Bool)

(assert (=> b!3613772 m!4112053))

(assert (=> b!3613773 m!4112035))

(declare-fun m!4112055 () Bool)

(assert (=> b!3613773 m!4112055))

(assert (=> b!3613773 m!4112055))

(declare-fun m!4112057 () Bool)

(assert (=> b!3613773 m!4112057))

(assert (=> b!3613484 d!1063734))

(declare-fun d!1063756 () Bool)

(assert (=> d!1063756 (= (list!14034 lt!1245298) (list!14036 (c!625157 lt!1245298)))))

(declare-fun bs!570949 () Bool)

(assert (= bs!570949 d!1063756))

(declare-fun m!4112059 () Bool)

(assert (=> bs!570949 m!4112059))

(assert (=> b!3613484 d!1063756))

(declare-fun d!1063758 () Bool)

(declare-fun lt!1245428 () BalanceConc!22804)

(assert (=> d!1063758 (= (list!14034 lt!1245428) (originalCharacters!6364 token!511))))

(assert (=> d!1063758 (= lt!1245428 (dynLambda!16459 (toChars!7793 (transformation!5650 (rule!8404 token!511))) (value!181485 token!511)))))

(assert (=> d!1063758 (= (charsOf!3664 token!511) lt!1245428)))

(declare-fun b_lambda!106911 () Bool)

(assert (=> (not b_lambda!106911) (not d!1063758)))

(declare-fun tb!207193 () Bool)

(declare-fun t!293598 () Bool)

(assert (=> (and b!3613486 (= (toChars!7793 (transformation!5650 anOtherTypeRule!33)) (toChars!7793 (transformation!5650 (rule!8404 token!511)))) t!293598) tb!207193))

(declare-fun b!3613779 () Bool)

(declare-fun e!2236612 () Bool)

(declare-fun tp!1104416 () Bool)

(assert (=> b!3613779 (= e!2236612 (and (inv!51426 (c!625157 (dynLambda!16459 (toChars!7793 (transformation!5650 (rule!8404 token!511))) (value!181485 token!511)))) tp!1104416))))

(declare-fun result!252498 () Bool)

(assert (=> tb!207193 (= result!252498 (and (inv!51427 (dynLambda!16459 (toChars!7793 (transformation!5650 (rule!8404 token!511))) (value!181485 token!511))) e!2236612))))

(assert (= tb!207193 b!3613779))

(declare-fun m!4112061 () Bool)

(assert (=> b!3613779 m!4112061))

(declare-fun m!4112063 () Bool)

(assert (=> tb!207193 m!4112063))

(assert (=> d!1063758 t!293598))

(declare-fun b_and!263739 () Bool)

(assert (= b_and!263731 (and (=> t!293598 result!252498) b_and!263739)))

(declare-fun t!293600 () Bool)

(declare-fun tb!207195 () Bool)

(assert (=> (and b!3613513 (= (toChars!7793 (transformation!5650 (rule!8404 token!511))) (toChars!7793 (transformation!5650 (rule!8404 token!511)))) t!293600) tb!207195))

(declare-fun result!252500 () Bool)

(assert (= result!252500 result!252498))

(assert (=> d!1063758 t!293600))

(declare-fun b_and!263741 () Bool)

(assert (= b_and!263733 (and (=> t!293600 result!252500) b_and!263741)))

(declare-fun t!293602 () Bool)

(declare-fun tb!207197 () Bool)

(assert (=> (and b!3613520 (= (toChars!7793 (transformation!5650 rule!403)) (toChars!7793 (transformation!5650 (rule!8404 token!511)))) t!293602) tb!207197))

(declare-fun result!252502 () Bool)

(assert (= result!252502 result!252498))

(assert (=> d!1063758 t!293602))

(declare-fun b_and!263743 () Bool)

(assert (= b_and!263735 (and (=> t!293602 result!252502) b_and!263743)))

(declare-fun tb!207199 () Bool)

(declare-fun t!293604 () Bool)

(assert (=> (and b!3613517 (= (toChars!7793 (transformation!5650 (h!43465 rules!3307))) (toChars!7793 (transformation!5650 (rule!8404 token!511)))) t!293604) tb!207199))

(declare-fun result!252504 () Bool)

(assert (= result!252504 result!252498))

(assert (=> d!1063758 t!293604))

(declare-fun b_and!263745 () Bool)

(assert (= b_and!263737 (and (=> t!293604 result!252504) b_and!263745)))

(declare-fun m!4112065 () Bool)

(assert (=> d!1063758 m!4112065))

(declare-fun m!4112067 () Bool)

(assert (=> d!1063758 m!4112067))

(assert (=> b!3613484 d!1063758))

(declare-fun d!1063760 () Bool)

(declare-fun lt!1245436 () Bool)

(declare-fun content!5444 (List!38169) (InoxSet Rule!11100))

(assert (=> d!1063760 (= lt!1245436 (select (content!5444 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2236623 () Bool)

(assert (=> d!1063760 (= lt!1245436 e!2236623)))

(declare-fun res!1462067 () Bool)

(assert (=> d!1063760 (=> (not res!1462067) (not e!2236623))))

(assert (=> d!1063760 (= res!1462067 ((_ is Cons!38045) rules!3307))))

(assert (=> d!1063760 (= (contains!7363 rules!3307 anOtherTypeRule!33) lt!1245436)))

(declare-fun b!3613796 () Bool)

(declare-fun e!2236624 () Bool)

(assert (=> b!3613796 (= e!2236623 e!2236624)))

(declare-fun res!1462066 () Bool)

(assert (=> b!3613796 (=> res!1462066 e!2236624)))

(assert (=> b!3613796 (= res!1462066 (= (h!43465 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3613797 () Bool)

(assert (=> b!3613797 (= e!2236624 (contains!7363 (t!293580 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1063760 res!1462067) b!3613796))

(assert (= (and b!3613796 (not res!1462066)) b!3613797))

(declare-fun m!4112095 () Bool)

(assert (=> d!1063760 m!4112095))

(declare-fun m!4112097 () Bool)

(assert (=> d!1063760 m!4112097))

(declare-fun m!4112099 () Bool)

(assert (=> b!3613797 m!4112099))

(assert (=> b!3613483 d!1063760))

(declare-fun b!3613818 () Bool)

(declare-fun e!2236637 () List!38168)

(declare-fun call!261323 () List!38168)

(assert (=> b!3613818 (= e!2236637 call!261323)))

(declare-fun call!261325 () List!38168)

(declare-fun call!261324 () List!38168)

(declare-fun c!625216 () Bool)

(declare-fun bm!261317 () Bool)

(assert (=> bm!261317 (= call!261323 (++!9466 (ite c!625216 call!261324 call!261325) (ite c!625216 call!261325 call!261324)))))

(declare-fun b!3613819 () Bool)

(declare-fun e!2236636 () List!38168)

(assert (=> b!3613819 (= e!2236636 e!2236637)))

(assert (=> b!3613819 (= c!625216 ((_ is Union!10409) (regex!5650 (rule!8404 (_1!22100 lt!1245300)))))))

(declare-fun b!3613820 () Bool)

(assert (=> b!3613820 (= e!2236637 call!261323)))

(declare-fun call!261322 () List!38168)

(declare-fun bm!261318 () Bool)

(declare-fun c!625217 () Bool)

(assert (=> bm!261318 (= call!261322 (usedCharacters!864 (ite c!625217 (reg!10738 (regex!5650 (rule!8404 (_1!22100 lt!1245300)))) (ite c!625216 (regOne!21331 (regex!5650 (rule!8404 (_1!22100 lt!1245300)))) (regTwo!21330 (regex!5650 (rule!8404 (_1!22100 lt!1245300))))))))))

(declare-fun b!3613821 () Bool)

(assert (=> b!3613821 (= e!2236636 call!261322)))

(declare-fun d!1063770 () Bool)

(declare-fun c!625218 () Bool)

(assert (=> d!1063770 (= c!625218 (or ((_ is EmptyExpr!10409) (regex!5650 (rule!8404 (_1!22100 lt!1245300)))) ((_ is EmptyLang!10409) (regex!5650 (rule!8404 (_1!22100 lt!1245300))))))))

(declare-fun e!2236635 () List!38168)

(assert (=> d!1063770 (= (usedCharacters!864 (regex!5650 (rule!8404 (_1!22100 lt!1245300)))) e!2236635)))

(declare-fun b!3613822 () Bool)

(assert (=> b!3613822 (= e!2236635 Nil!38044)))

(declare-fun b!3613823 () Bool)

(declare-fun e!2236638 () List!38168)

(assert (=> b!3613823 (= e!2236635 e!2236638)))

(declare-fun c!625219 () Bool)

(assert (=> b!3613823 (= c!625219 ((_ is ElementMatch!10409) (regex!5650 (rule!8404 (_1!22100 lt!1245300)))))))

(declare-fun b!3613824 () Bool)

(assert (=> b!3613824 (= c!625217 ((_ is Star!10409) (regex!5650 (rule!8404 (_1!22100 lt!1245300)))))))

(assert (=> b!3613824 (= e!2236638 e!2236636)))

(declare-fun bm!261319 () Bool)

(assert (=> bm!261319 (= call!261325 (usedCharacters!864 (ite c!625216 (regTwo!21331 (regex!5650 (rule!8404 (_1!22100 lt!1245300)))) (regOne!21330 (regex!5650 (rule!8404 (_1!22100 lt!1245300)))))))))

(declare-fun b!3613825 () Bool)

(assert (=> b!3613825 (= e!2236638 (Cons!38044 (c!625156 (regex!5650 (rule!8404 (_1!22100 lt!1245300)))) Nil!38044))))

(declare-fun bm!261320 () Bool)

(assert (=> bm!261320 (= call!261324 call!261322)))

(assert (= (and d!1063770 c!625218) b!3613822))

(assert (= (and d!1063770 (not c!625218)) b!3613823))

(assert (= (and b!3613823 c!625219) b!3613825))

(assert (= (and b!3613823 (not c!625219)) b!3613824))

(assert (= (and b!3613824 c!625217) b!3613821))

(assert (= (and b!3613824 (not c!625217)) b!3613819))

(assert (= (and b!3613819 c!625216) b!3613818))

(assert (= (and b!3613819 (not c!625216)) b!3613820))

(assert (= (or b!3613818 b!3613820) bm!261320))

(assert (= (or b!3613818 b!3613820) bm!261319))

(assert (= (or b!3613818 b!3613820) bm!261317))

(assert (= (or b!3613821 bm!261320) bm!261318))

(declare-fun m!4112101 () Bool)

(assert (=> bm!261317 m!4112101))

(declare-fun m!4112103 () Bool)

(assert (=> bm!261318 m!4112103))

(declare-fun m!4112105 () Bool)

(assert (=> bm!261319 m!4112105))

(assert (=> bm!261295 d!1063770))

(declare-fun d!1063772 () Bool)

(assert (=> d!1063772 (= (inv!51421 (tag!6360 (h!43465 rules!3307))) (= (mod (str.len (value!181484 (tag!6360 (h!43465 rules!3307)))) 2) 0))))

(assert (=> b!3613504 d!1063772))

(declare-fun d!1063774 () Bool)

(declare-fun res!1462076 () Bool)

(declare-fun e!2236642 () Bool)

(assert (=> d!1063774 (=> (not res!1462076) (not e!2236642))))

(declare-fun semiInverseModEq!2401 (Int Int) Bool)

(assert (=> d!1063774 (= res!1462076 (semiInverseModEq!2401 (toChars!7793 (transformation!5650 (h!43465 rules!3307))) (toValue!7934 (transformation!5650 (h!43465 rules!3307)))))))

(assert (=> d!1063774 (= (inv!51424 (transformation!5650 (h!43465 rules!3307))) e!2236642)))

(declare-fun b!3613830 () Bool)

(declare-fun equivClasses!2300 (Int Int) Bool)

(assert (=> b!3613830 (= e!2236642 (equivClasses!2300 (toChars!7793 (transformation!5650 (h!43465 rules!3307))) (toValue!7934 (transformation!5650 (h!43465 rules!3307)))))))

(assert (= (and d!1063774 res!1462076) b!3613830))

(declare-fun m!4112115 () Bool)

(assert (=> d!1063774 m!4112115))

(declare-fun m!4112117 () Bool)

(assert (=> b!3613830 m!4112117))

(assert (=> b!3613504 d!1063774))

(declare-fun d!1063778 () Bool)

(assert (=> d!1063778 (not (matchR!4978 (regex!5650 rule!403) lt!1245306))))

(declare-fun lt!1245443 () Unit!54354)

(assert (=> d!1063778 (= lt!1245443 (choose!21147 (regex!5650 rule!403) lt!1245306 lt!1245282))))

(assert (=> d!1063778 (validRegex!4765 (regex!5650 rule!403))))

(assert (=> d!1063778 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!634 (regex!5650 rule!403) lt!1245306 lt!1245282) lt!1245443)))

(declare-fun bs!570951 () Bool)

(assert (= bs!570951 d!1063778))

(assert (=> bs!570951 m!4111733))

(declare-fun m!4112119 () Bool)

(assert (=> bs!570951 m!4112119))

(declare-fun m!4112121 () Bool)

(assert (=> bs!570951 m!4112121))

(assert (=> b!3613522 d!1063778))

(declare-fun d!1063780 () Bool)

(declare-fun lt!1245444 () Bool)

(assert (=> d!1063780 (= lt!1245444 (select (content!5442 lt!1245304) lt!1245283))))

(declare-fun e!2236643 () Bool)

(assert (=> d!1063780 (= lt!1245444 e!2236643)))

(declare-fun res!1462077 () Bool)

(assert (=> d!1063780 (=> (not res!1462077) (not e!2236643))))

(assert (=> d!1063780 (= res!1462077 ((_ is Cons!38044) lt!1245304))))

(assert (=> d!1063780 (= (contains!7364 lt!1245304 lt!1245283) lt!1245444)))

(declare-fun b!3613831 () Bool)

(declare-fun e!2236644 () Bool)

(assert (=> b!3613831 (= e!2236643 e!2236644)))

(declare-fun res!1462078 () Bool)

(assert (=> b!3613831 (=> res!1462078 e!2236644)))

(assert (=> b!3613831 (= res!1462078 (= (h!43464 lt!1245304) lt!1245283))))

(declare-fun b!3613832 () Bool)

(assert (=> b!3613832 (= e!2236644 (contains!7364 (t!293579 lt!1245304) lt!1245283))))

(assert (= (and d!1063780 res!1462077) b!3613831))

(assert (= (and b!3613831 (not res!1462078)) b!3613832))

(declare-fun m!4112123 () Bool)

(assert (=> d!1063780 m!4112123))

(declare-fun m!4112125 () Bool)

(assert (=> d!1063780 m!4112125))

(declare-fun m!4112127 () Bool)

(assert (=> b!3613832 m!4112127))

(assert (=> b!3613506 d!1063780))

(declare-fun d!1063782 () Bool)

(assert (=> d!1063782 (= (head!7612 suffix!1395) (h!43464 suffix!1395))))

(assert (=> b!3613506 d!1063782))

(declare-fun b!3613838 () Bool)

(declare-fun e!2236650 () List!38168)

(declare-fun call!261327 () List!38168)

(assert (=> b!3613838 (= e!2236650 call!261327)))

(declare-fun call!261329 () List!38168)

(declare-fun c!625220 () Bool)

(declare-fun bm!261321 () Bool)

(declare-fun call!261328 () List!38168)

(assert (=> bm!261321 (= call!261327 (++!9466 (ite c!625220 call!261328 call!261329) (ite c!625220 call!261329 call!261328)))))

(declare-fun b!3613839 () Bool)

(declare-fun e!2236649 () List!38168)

(assert (=> b!3613839 (= e!2236649 e!2236650)))

(assert (=> b!3613839 (= c!625220 ((_ is Union!10409) (regex!5650 rule!403)))))

(declare-fun b!3613840 () Bool)

(assert (=> b!3613840 (= e!2236650 call!261327)))

(declare-fun bm!261322 () Bool)

(declare-fun c!625221 () Bool)

(declare-fun call!261326 () List!38168)

(assert (=> bm!261322 (= call!261326 (usedCharacters!864 (ite c!625221 (reg!10738 (regex!5650 rule!403)) (ite c!625220 (regOne!21331 (regex!5650 rule!403)) (regTwo!21330 (regex!5650 rule!403))))))))

(declare-fun b!3613841 () Bool)

(assert (=> b!3613841 (= e!2236649 call!261326)))

(declare-fun d!1063784 () Bool)

(declare-fun c!625222 () Bool)

(assert (=> d!1063784 (= c!625222 (or ((_ is EmptyExpr!10409) (regex!5650 rule!403)) ((_ is EmptyLang!10409) (regex!5650 rule!403))))))

(declare-fun e!2236648 () List!38168)

(assert (=> d!1063784 (= (usedCharacters!864 (regex!5650 rule!403)) e!2236648)))

(declare-fun b!3613842 () Bool)

(assert (=> b!3613842 (= e!2236648 Nil!38044)))

(declare-fun b!3613843 () Bool)

(declare-fun e!2236651 () List!38168)

(assert (=> b!3613843 (= e!2236648 e!2236651)))

(declare-fun c!625223 () Bool)

(assert (=> b!3613843 (= c!625223 ((_ is ElementMatch!10409) (regex!5650 rule!403)))))

(declare-fun b!3613844 () Bool)

(assert (=> b!3613844 (= c!625221 ((_ is Star!10409) (regex!5650 rule!403)))))

(assert (=> b!3613844 (= e!2236651 e!2236649)))

(declare-fun bm!261323 () Bool)

(assert (=> bm!261323 (= call!261329 (usedCharacters!864 (ite c!625220 (regTwo!21331 (regex!5650 rule!403)) (regOne!21330 (regex!5650 rule!403)))))))

(declare-fun b!3613845 () Bool)

(assert (=> b!3613845 (= e!2236651 (Cons!38044 (c!625156 (regex!5650 rule!403)) Nil!38044))))

(declare-fun bm!261324 () Bool)

(assert (=> bm!261324 (= call!261328 call!261326)))

(assert (= (and d!1063784 c!625222) b!3613842))

(assert (= (and d!1063784 (not c!625222)) b!3613843))

(assert (= (and b!3613843 c!625223) b!3613845))

(assert (= (and b!3613843 (not c!625223)) b!3613844))

(assert (= (and b!3613844 c!625221) b!3613841))

(assert (= (and b!3613844 (not c!625221)) b!3613839))

(assert (= (and b!3613839 c!625220) b!3613838))

(assert (= (and b!3613839 (not c!625220)) b!3613840))

(assert (= (or b!3613838 b!3613840) bm!261324))

(assert (= (or b!3613838 b!3613840) bm!261323))

(assert (= (or b!3613838 b!3613840) bm!261321))

(assert (= (or b!3613841 bm!261324) bm!261322))

(declare-fun m!4112137 () Bool)

(assert (=> bm!261321 m!4112137))

(declare-fun m!4112139 () Bool)

(assert (=> bm!261322 m!4112139))

(declare-fun m!4112141 () Bool)

(assert (=> bm!261323 m!4112141))

(assert (=> b!3613506 d!1063784))

(declare-fun d!1063788 () Bool)

(declare-fun lt!1245446 () Bool)

(assert (=> d!1063788 (= lt!1245446 (select (content!5444 rules!3307) rule!403))))

(declare-fun e!2236655 () Bool)

(assert (=> d!1063788 (= lt!1245446 e!2236655)))

(declare-fun res!1462084 () Bool)

(assert (=> d!1063788 (=> (not res!1462084) (not e!2236655))))

(assert (=> d!1063788 (= res!1462084 ((_ is Cons!38045) rules!3307))))

(assert (=> d!1063788 (= (contains!7363 rules!3307 rule!403) lt!1245446)))

(declare-fun b!3613850 () Bool)

(declare-fun e!2236656 () Bool)

(assert (=> b!3613850 (= e!2236655 e!2236656)))

(declare-fun res!1462083 () Bool)

(assert (=> b!3613850 (=> res!1462083 e!2236656)))

(assert (=> b!3613850 (= res!1462083 (= (h!43465 rules!3307) rule!403))))

(declare-fun b!3613851 () Bool)

(assert (=> b!3613851 (= e!2236656 (contains!7363 (t!293580 rules!3307) rule!403))))

(assert (= (and d!1063788 res!1462084) b!3613850))

(assert (= (and b!3613850 (not res!1462083)) b!3613851))

(assert (=> d!1063788 m!4112095))

(declare-fun m!4112143 () Bool)

(assert (=> d!1063788 m!4112143))

(declare-fun m!4112145 () Bool)

(assert (=> b!3613851 m!4112145))

(assert (=> b!3613523 d!1063788))

(declare-fun d!1063790 () Bool)

(assert (=> d!1063790 (= (inv!51421 (tag!6360 rule!403)) (= (mod (str.len (value!181484 (tag!6360 rule!403))) 2) 0))))

(assert (=> b!3613505 d!1063790))

(declare-fun d!1063794 () Bool)

(declare-fun res!1462085 () Bool)

(declare-fun e!2236657 () Bool)

(assert (=> d!1063794 (=> (not res!1462085) (not e!2236657))))

(assert (=> d!1063794 (= res!1462085 (semiInverseModEq!2401 (toChars!7793 (transformation!5650 rule!403)) (toValue!7934 (transformation!5650 rule!403))))))

(assert (=> d!1063794 (= (inv!51424 (transformation!5650 rule!403)) e!2236657)))

(declare-fun b!3613852 () Bool)

(assert (=> b!3613852 (= e!2236657 (equivClasses!2300 (toChars!7793 (transformation!5650 rule!403)) (toValue!7934 (transformation!5650 rule!403))))))

(assert (= (and d!1063794 res!1462085) b!3613852))

(declare-fun m!4112149 () Bool)

(assert (=> d!1063794 m!4112149))

(declare-fun m!4112151 () Bool)

(assert (=> b!3613852 m!4112151))

(assert (=> b!3613505 d!1063794))

(declare-fun d!1063796 () Bool)

(assert (=> d!1063796 (not (matchR!4978 (regex!5650 rule!403) lt!1245306))))

(declare-fun lt!1245449 () Unit!54354)

(declare-fun choose!21151 (LexerInterface!5239 List!38169 Rule!11100 List!38168 List!38168 List!38168 Rule!11100) Unit!54354)

(assert (=> d!1063796 (= lt!1245449 (choose!21151 thiss!23823 rules!3307 (rule!8404 (_1!22100 lt!1245300)) lt!1245308 lt!1245292 lt!1245306 rule!403))))

(assert (=> d!1063796 (isPrefix!3013 lt!1245308 lt!1245292)))

(assert (=> d!1063796 (= (lemmaMaxPrefixOutputsMaxPrefix!298 thiss!23823 rules!3307 (rule!8404 (_1!22100 lt!1245300)) lt!1245308 lt!1245292 lt!1245306 rule!403) lt!1245449)))

(declare-fun bs!570952 () Bool)

(assert (= bs!570952 d!1063796))

(assert (=> bs!570952 m!4111733))

(declare-fun m!4112153 () Bool)

(assert (=> bs!570952 m!4112153))

(assert (=> bs!570952 m!4111793))

(assert (=> b!3613488 d!1063796))

(declare-fun d!1063798 () Bool)

(assert (=> d!1063798 (= lt!1245308 lt!1245306)))

(declare-fun lt!1245452 () Unit!54354)

(declare-fun choose!21152 (List!38168 List!38168 List!38168) Unit!54354)

(assert (=> d!1063798 (= lt!1245452 (choose!21152 lt!1245308 lt!1245306 lt!1245292))))

(assert (=> d!1063798 (isPrefix!3013 lt!1245308 lt!1245292)))

(assert (=> d!1063798 (= (lemmaIsPrefixSameLengthThenSameList!587 lt!1245308 lt!1245306 lt!1245292) lt!1245452)))

(declare-fun bs!570953 () Bool)

(assert (= bs!570953 d!1063798))

(declare-fun m!4112155 () Bool)

(assert (=> bs!570953 m!4112155))

(assert (=> bs!570953 m!4111793))

(assert (=> b!3613524 d!1063798))

(declare-fun d!1063800 () Bool)

(declare-fun lt!1245461 () Int)

(assert (=> d!1063800 (= lt!1245461 (size!29013 (list!14034 lt!1245298)))))

(declare-fun size!29015 (Conc!11595) Int)

(assert (=> d!1063800 (= lt!1245461 (size!29015 (c!625157 lt!1245298)))))

(assert (=> d!1063800 (= (size!29012 lt!1245298) lt!1245461)))

(declare-fun bs!570954 () Bool)

(assert (= bs!570954 d!1063800))

(assert (=> bs!570954 m!4111753))

(assert (=> bs!570954 m!4111753))

(declare-fun m!4112157 () Bool)

(assert (=> bs!570954 m!4112157))

(declare-fun m!4112159 () Bool)

(assert (=> bs!570954 m!4112159))

(assert (=> b!3613524 d!1063800))

(declare-fun d!1063802 () Bool)

(declare-fun lt!1245462 () Bool)

(assert (=> d!1063802 (= lt!1245462 (select (content!5442 lt!1245304) lt!1245282))))

(declare-fun e!2236666 () Bool)

(assert (=> d!1063802 (= lt!1245462 e!2236666)))

(declare-fun res!1462090 () Bool)

(assert (=> d!1063802 (=> (not res!1462090) (not e!2236666))))

(assert (=> d!1063802 (= res!1462090 ((_ is Cons!38044) lt!1245304))))

(assert (=> d!1063802 (= (contains!7364 lt!1245304 lt!1245282) lt!1245462)))

(declare-fun b!3613865 () Bool)

(declare-fun e!2236667 () Bool)

(assert (=> b!3613865 (= e!2236666 e!2236667)))

(declare-fun res!1462091 () Bool)

(assert (=> b!3613865 (=> res!1462091 e!2236667)))

(assert (=> b!3613865 (= res!1462091 (= (h!43464 lt!1245304) lt!1245282))))

(declare-fun b!3613866 () Bool)

(assert (=> b!3613866 (= e!2236667 (contains!7364 (t!293579 lt!1245304) lt!1245282))))

(assert (= (and d!1063802 res!1462090) b!3613865))

(assert (= (and b!3613865 (not res!1462091)) b!3613866))

(assert (=> d!1063802 m!4112123))

(declare-fun m!4112161 () Bool)

(assert (=> d!1063802 m!4112161))

(declare-fun m!4112163 () Bool)

(assert (=> b!3613866 m!4112163))

(assert (=> b!3613524 d!1063802))

(declare-fun d!1063804 () Bool)

(assert (=> d!1063804 (= (head!7612 lt!1245308) (h!43464 lt!1245308))))

(assert (=> b!3613524 d!1063804))

(declare-fun d!1063806 () Bool)

(assert (=> d!1063806 (= (isEmpty!22470 suffix!1395) ((_ is Nil!38044) suffix!1395))))

(assert (=> b!3613487 d!1063806))

(declare-fun d!1063808 () Bool)

(assert (=> d!1063808 (= (get!12365 lt!1245305) (v!37679 lt!1245305))))

(assert (=> b!3613478 d!1063808))

(declare-fun d!1063810 () Bool)

(declare-fun lt!1245468 () List!38168)

(assert (=> d!1063810 (= (++!9466 lt!1245306 lt!1245468) lt!1245306)))

(declare-fun e!2236674 () List!38168)

(assert (=> d!1063810 (= lt!1245468 e!2236674)))

(declare-fun c!625232 () Bool)

(assert (=> d!1063810 (= c!625232 ((_ is Cons!38044) lt!1245306))))

(assert (=> d!1063810 (>= (size!29013 lt!1245306) (size!29013 lt!1245306))))

(assert (=> d!1063810 (= (getSuffix!1588 lt!1245306 lt!1245306) lt!1245468)))

(declare-fun b!3613877 () Bool)

(assert (=> b!3613877 (= e!2236674 (getSuffix!1588 (tail!5601 lt!1245306) (t!293579 lt!1245306)))))

(declare-fun b!3613878 () Bool)

(assert (=> b!3613878 (= e!2236674 lt!1245306)))

(assert (= (and d!1063810 c!625232) b!3613877))

(assert (= (and d!1063810 (not c!625232)) b!3613878))

(declare-fun m!4112177 () Bool)

(assert (=> d!1063810 m!4112177))

(assert (=> d!1063810 m!4111727))

(assert (=> d!1063810 m!4111727))

(declare-fun m!4112179 () Bool)

(assert (=> b!3613877 m!4112179))

(assert (=> b!3613877 m!4112179))

(declare-fun m!4112181 () Bool)

(assert (=> b!3613877 m!4112181))

(assert (=> b!3613497 d!1063810))

(declare-fun d!1063814 () Bool)

(assert (=> d!1063814 (isEmpty!22470 (getSuffix!1588 lt!1245306 lt!1245306))))

(declare-fun lt!1245471 () Unit!54354)

(declare-fun choose!21153 (List!38168) Unit!54354)

(assert (=> d!1063814 (= lt!1245471 (choose!21153 lt!1245306))))

(assert (=> d!1063814 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!144 lt!1245306) lt!1245471)))

(declare-fun bs!570955 () Bool)

(assert (= bs!570955 d!1063814))

(assert (=> bs!570955 m!4111719))

(assert (=> bs!570955 m!4111719))

(assert (=> bs!570955 m!4111721))

(declare-fun m!4112183 () Bool)

(assert (=> bs!570955 m!4112183))

(assert (=> b!3613497 d!1063814))

(declare-fun d!1063816 () Bool)

(declare-fun lt!1245474 () Int)

(assert (=> d!1063816 (>= lt!1245474 0)))

(declare-fun e!2236677 () Int)

(assert (=> d!1063816 (= lt!1245474 e!2236677)))

(declare-fun c!625235 () Bool)

(assert (=> d!1063816 (= c!625235 ((_ is Nil!38044) lt!1245306))))

(assert (=> d!1063816 (= (size!29013 lt!1245306) lt!1245474)))

(declare-fun b!3613883 () Bool)

(assert (=> b!3613883 (= e!2236677 0)))

(declare-fun b!3613884 () Bool)

(assert (=> b!3613884 (= e!2236677 (+ 1 (size!29013 (t!293579 lt!1245306))))))

(assert (= (and d!1063816 c!625235) b!3613883))

(assert (= (and d!1063816 (not c!625235)) b!3613884))

(declare-fun m!4112185 () Bool)

(assert (=> b!3613884 m!4112185))

(assert (=> b!3613497 d!1063816))

(declare-fun d!1063818 () Bool)

(assert (=> d!1063818 (= (isEmpty!22470 (getSuffix!1588 lt!1245306 lt!1245306)) ((_ is Nil!38044) (getSuffix!1588 lt!1245306 lt!1245306)))))

(assert (=> b!3613497 d!1063818))

(declare-fun b!3613895 () Bool)

(declare-fun e!2236684 () Bool)

(assert (=> b!3613895 (= e!2236684 (isPrefix!3013 (tail!5601 lt!1245306) (tail!5601 lt!1245306)))))

(declare-fun b!3613893 () Bool)

(declare-fun e!2236686 () Bool)

(assert (=> b!3613893 (= e!2236686 e!2236684)))

(declare-fun res!1462104 () Bool)

(assert (=> b!3613893 (=> (not res!1462104) (not e!2236684))))

(assert (=> b!3613893 (= res!1462104 (not ((_ is Nil!38044) lt!1245306)))))

(declare-fun d!1063820 () Bool)

(declare-fun e!2236685 () Bool)

(assert (=> d!1063820 e!2236685))

(declare-fun res!1462103 () Bool)

(assert (=> d!1063820 (=> res!1462103 e!2236685)))

(declare-fun lt!1245477 () Bool)

(assert (=> d!1063820 (= res!1462103 (not lt!1245477))))

(assert (=> d!1063820 (= lt!1245477 e!2236686)))

(declare-fun res!1462102 () Bool)

(assert (=> d!1063820 (=> res!1462102 e!2236686)))

(assert (=> d!1063820 (= res!1462102 ((_ is Nil!38044) lt!1245306))))

(assert (=> d!1063820 (= (isPrefix!3013 lt!1245306 lt!1245306) lt!1245477)))

(declare-fun b!3613896 () Bool)

(assert (=> b!3613896 (= e!2236685 (>= (size!29013 lt!1245306) (size!29013 lt!1245306)))))

(declare-fun b!3613894 () Bool)

(declare-fun res!1462105 () Bool)

(assert (=> b!3613894 (=> (not res!1462105) (not e!2236684))))

(assert (=> b!3613894 (= res!1462105 (= (head!7612 lt!1245306) (head!7612 lt!1245306)))))

(assert (= (and d!1063820 (not res!1462102)) b!3613893))

(assert (= (and b!3613893 res!1462104) b!3613894))

(assert (= (and b!3613894 res!1462105) b!3613895))

(assert (= (and d!1063820 (not res!1462103)) b!3613896))

(assert (=> b!3613895 m!4112179))

(assert (=> b!3613895 m!4112179))

(assert (=> b!3613895 m!4112179))

(assert (=> b!3613895 m!4112179))

(declare-fun m!4112187 () Bool)

(assert (=> b!3613895 m!4112187))

(assert (=> b!3613896 m!4111727))

(assert (=> b!3613896 m!4111727))

(declare-fun m!4112189 () Bool)

(assert (=> b!3613894 m!4112189))

(assert (=> b!3613894 m!4112189))

(assert (=> b!3613497 d!1063820))

(declare-fun d!1063822 () Bool)

(assert (=> d!1063822 (= (inv!51421 (tag!6360 (rule!8404 token!511))) (= (mod (str.len (value!181484 (tag!6360 (rule!8404 token!511)))) 2) 0))))

(assert (=> b!3613480 d!1063822))

(declare-fun d!1063824 () Bool)

(declare-fun res!1462106 () Bool)

(declare-fun e!2236687 () Bool)

(assert (=> d!1063824 (=> (not res!1462106) (not e!2236687))))

(assert (=> d!1063824 (= res!1462106 (semiInverseModEq!2401 (toChars!7793 (transformation!5650 (rule!8404 token!511))) (toValue!7934 (transformation!5650 (rule!8404 token!511)))))))

(assert (=> d!1063824 (= (inv!51424 (transformation!5650 (rule!8404 token!511))) e!2236687)))

(declare-fun b!3613897 () Bool)

(assert (=> b!3613897 (= e!2236687 (equivClasses!2300 (toChars!7793 (transformation!5650 (rule!8404 token!511))) (toValue!7934 (transformation!5650 (rule!8404 token!511)))))))

(assert (= (and d!1063824 res!1462106) b!3613897))

(declare-fun m!4112191 () Bool)

(assert (=> d!1063824 m!4112191))

(declare-fun m!4112193 () Bool)

(assert (=> b!3613897 m!4112193))

(assert (=> b!3613480 d!1063824))

(declare-fun d!1063826 () Bool)

(assert (=> d!1063826 (not (contains!7364 (usedCharacters!864 (regex!5650 (rule!8404 (_1!22100 lt!1245300)))) lt!1245282))))

(declare-fun lt!1245480 () Unit!54354)

(declare-fun choose!21154 (LexerInterface!5239 List!38169 List!38169 Rule!11100 Rule!11100 C!21004) Unit!54354)

(assert (=> d!1063826 (= lt!1245480 (choose!21154 thiss!23823 rules!3307 rules!3307 (rule!8404 (_1!22100 lt!1245300)) rule!403 lt!1245282))))

(assert (=> d!1063826 (rulesInvariant!4636 thiss!23823 rules!3307)))

(assert (=> d!1063826 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!356 thiss!23823 rules!3307 rules!3307 (rule!8404 (_1!22100 lt!1245300)) rule!403 lt!1245282) lt!1245480)))

(declare-fun bs!570956 () Bool)

(assert (= bs!570956 d!1063826))

(assert (=> bs!570956 m!4111667))

(assert (=> bs!570956 m!4111667))

(declare-fun m!4112195 () Bool)

(assert (=> bs!570956 m!4112195))

(declare-fun m!4112197 () Bool)

(assert (=> bs!570956 m!4112197))

(assert (=> bs!570956 m!4111705))

(assert (=> b!3613499 d!1063826))

(declare-fun d!1063828 () Bool)

(assert (=> d!1063828 (= (isEmpty!22470 (_2!22100 lt!1245314)) ((_ is Nil!38044) (_2!22100 lt!1245314)))))

(assert (=> b!3613479 d!1063828))

(declare-fun d!1063830 () Bool)

(declare-fun lt!1245481 () Bool)

(assert (=> d!1063830 (= lt!1245481 (select (content!5442 call!261295) lt!1245283))))

(declare-fun e!2236688 () Bool)

(assert (=> d!1063830 (= lt!1245481 e!2236688)))

(declare-fun res!1462107 () Bool)

(assert (=> d!1063830 (=> (not res!1462107) (not e!2236688))))

(assert (=> d!1063830 (= res!1462107 ((_ is Cons!38044) call!261295))))

(assert (=> d!1063830 (= (contains!7364 call!261295 lt!1245283) lt!1245481)))

(declare-fun b!3613898 () Bool)

(declare-fun e!2236689 () Bool)

(assert (=> b!3613898 (= e!2236688 e!2236689)))

(declare-fun res!1462108 () Bool)

(assert (=> b!3613898 (=> res!1462108 e!2236689)))

(assert (=> b!3613898 (= res!1462108 (= (h!43464 call!261295) lt!1245283))))

(declare-fun b!3613899 () Bool)

(assert (=> b!3613899 (= e!2236689 (contains!7364 (t!293579 call!261295) lt!1245283))))

(assert (= (and d!1063830 res!1462107) b!3613898))

(assert (= (and b!3613898 (not res!1462108)) b!3613899))

(declare-fun m!4112199 () Bool)

(assert (=> d!1063830 m!4112199))

(declare-fun m!4112201 () Bool)

(assert (=> d!1063830 m!4112201))

(declare-fun m!4112203 () Bool)

(assert (=> b!3613899 m!4112203))

(assert (=> bm!261294 d!1063830))

(declare-fun d!1063832 () Bool)

(declare-fun res!1462111 () Bool)

(declare-fun e!2236692 () Bool)

(assert (=> d!1063832 (=> (not res!1462111) (not e!2236692))))

(declare-fun rulesValid!2157 (LexerInterface!5239 List!38169) Bool)

(assert (=> d!1063832 (= res!1462111 (rulesValid!2157 thiss!23823 rules!3307))))

(assert (=> d!1063832 (= (rulesInvariant!4636 thiss!23823 rules!3307) e!2236692)))

(declare-fun b!3613902 () Bool)

(declare-datatypes ((List!38171 0))(
  ( (Nil!38047) (Cons!38047 (h!43467 String!42734) (t!293702 List!38171)) )
))
(declare-fun noDuplicateTag!2153 (LexerInterface!5239 List!38169 List!38171) Bool)

(assert (=> b!3613902 (= e!2236692 (noDuplicateTag!2153 thiss!23823 rules!3307 Nil!38047))))

(assert (= (and d!1063832 res!1462111) b!3613902))

(declare-fun m!4112205 () Bool)

(assert (=> d!1063832 m!4112205))

(declare-fun m!4112207 () Bool)

(assert (=> b!3613902 m!4112207))

(assert (=> b!3613481 d!1063832))

(declare-fun d!1063834 () Bool)

(assert (=> d!1063834 (= (inv!51421 (tag!6360 anOtherTypeRule!33)) (= (mod (str.len (value!181484 (tag!6360 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3613500 d!1063834))

(declare-fun d!1063836 () Bool)

(declare-fun res!1462112 () Bool)

(declare-fun e!2236693 () Bool)

(assert (=> d!1063836 (=> (not res!1462112) (not e!2236693))))

(assert (=> d!1063836 (= res!1462112 (semiInverseModEq!2401 (toChars!7793 (transformation!5650 anOtherTypeRule!33)) (toValue!7934 (transformation!5650 anOtherTypeRule!33))))))

(assert (=> d!1063836 (= (inv!51424 (transformation!5650 anOtherTypeRule!33)) e!2236693)))

(declare-fun b!3613903 () Bool)

(assert (=> b!3613903 (= e!2236693 (equivClasses!2300 (toChars!7793 (transformation!5650 anOtherTypeRule!33)) (toValue!7934 (transformation!5650 anOtherTypeRule!33))))))

(assert (= (and d!1063836 res!1462112) b!3613903))

(declare-fun m!4112209 () Bool)

(assert (=> d!1063836 m!4112209))

(declare-fun m!4112211 () Bool)

(assert (=> b!3613903 m!4112211))

(assert (=> b!3613500 d!1063836))

(declare-fun d!1063838 () Bool)

(assert (=> d!1063838 (not (contains!7364 (usedCharacters!864 (regex!5650 (rule!8404 (_1!22100 lt!1245300)))) lt!1245283))))

(declare-fun lt!1245484 () Unit!54354)

(declare-fun choose!21155 (LexerInterface!5239 List!38169 List!38169 Rule!11100 Rule!11100 C!21004) Unit!54354)

(assert (=> d!1063838 (= lt!1245484 (choose!21155 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8404 (_1!22100 lt!1245300)) lt!1245283))))

(assert (=> d!1063838 (rulesInvariant!4636 thiss!23823 rules!3307)))

(assert (=> d!1063838 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!238 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8404 (_1!22100 lt!1245300)) lt!1245283) lt!1245484)))

(declare-fun bs!570957 () Bool)

(assert (= bs!570957 d!1063838))

(assert (=> bs!570957 m!4111667))

(assert (=> bs!570957 m!4111667))

(declare-fun m!4112213 () Bool)

(assert (=> bs!570957 m!4112213))

(declare-fun m!4112215 () Bool)

(assert (=> bs!570957 m!4112215))

(assert (=> bs!570957 m!4111705))

(assert (=> b!3613519 d!1063838))

(declare-fun d!1063840 () Bool)

(assert (=> d!1063840 (= (isEmpty!22471 rules!3307) ((_ is Nil!38045) rules!3307))))

(assert (=> b!3613502 d!1063840))

(declare-fun b!3613906 () Bool)

(declare-fun e!2236694 () Bool)

(assert (=> b!3613906 (= e!2236694 (isPrefix!3013 (tail!5601 lt!1245308) (tail!5601 lt!1245292)))))

(declare-fun b!3613904 () Bool)

(declare-fun e!2236696 () Bool)

(assert (=> b!3613904 (= e!2236696 e!2236694)))

(declare-fun res!1462115 () Bool)

(assert (=> b!3613904 (=> (not res!1462115) (not e!2236694))))

(assert (=> b!3613904 (= res!1462115 (not ((_ is Nil!38044) lt!1245292)))))

(declare-fun d!1063842 () Bool)

(declare-fun e!2236695 () Bool)

(assert (=> d!1063842 e!2236695))

(declare-fun res!1462114 () Bool)

(assert (=> d!1063842 (=> res!1462114 e!2236695)))

(declare-fun lt!1245485 () Bool)

(assert (=> d!1063842 (= res!1462114 (not lt!1245485))))

(assert (=> d!1063842 (= lt!1245485 e!2236696)))

(declare-fun res!1462113 () Bool)

(assert (=> d!1063842 (=> res!1462113 e!2236696)))

(assert (=> d!1063842 (= res!1462113 ((_ is Nil!38044) lt!1245308))))

(assert (=> d!1063842 (= (isPrefix!3013 lt!1245308 lt!1245292) lt!1245485)))

(declare-fun b!3613907 () Bool)

(assert (=> b!3613907 (= e!2236695 (>= (size!29013 lt!1245292) (size!29013 lt!1245308)))))

(declare-fun b!3613905 () Bool)

(declare-fun res!1462116 () Bool)

(assert (=> b!3613905 (=> (not res!1462116) (not e!2236694))))

(assert (=> b!3613905 (= res!1462116 (= (head!7612 lt!1245308) (head!7612 lt!1245292)))))

(assert (= (and d!1063842 (not res!1462113)) b!3613904))

(assert (= (and b!3613904 res!1462115) b!3613905))

(assert (= (and b!3613905 res!1462116) b!3613906))

(assert (= (and d!1063842 (not res!1462114)) b!3613907))

(assert (=> b!3613906 m!4111923))

(declare-fun m!4112217 () Bool)

(assert (=> b!3613906 m!4112217))

(assert (=> b!3613906 m!4111923))

(assert (=> b!3613906 m!4112217))

(declare-fun m!4112219 () Bool)

(assert (=> b!3613906 m!4112219))

(declare-fun m!4112221 () Bool)

(assert (=> b!3613907 m!4112221))

(assert (=> b!3613907 m!4111771))

(assert (=> b!3613905 m!4111659))

(declare-fun m!4112223 () Bool)

(assert (=> b!3613905 m!4112223))

(assert (=> b!3613482 d!1063842))

(declare-fun b!3613908 () Bool)

(declare-fun e!2236699 () Bool)

(declare-fun e!2236698 () Bool)

(assert (=> b!3613908 (= e!2236699 e!2236698)))

(declare-fun res!1462118 () Bool)

(assert (=> b!3613908 (=> (not res!1462118) (not e!2236698))))

(declare-fun lt!1245488 () Option!7930)

(assert (=> b!3613908 (= res!1462118 (isDefined!6163 lt!1245488))))

(declare-fun b!3613909 () Bool)

(declare-fun e!2236697 () Option!7930)

(declare-fun call!261330 () Option!7930)

(assert (=> b!3613909 (= e!2236697 call!261330)))

(declare-fun b!3613910 () Bool)

(declare-fun res!1462117 () Bool)

(assert (=> b!3613910 (=> (not res!1462117) (not e!2236698))))

(assert (=> b!3613910 (= res!1462117 (= (++!9466 (list!14034 (charsOf!3664 (_1!22100 (get!12365 lt!1245488)))) (_2!22100 (get!12365 lt!1245488))) lt!1245292))))

(declare-fun b!3613911 () Bool)

(declare-fun res!1462119 () Bool)

(assert (=> b!3613911 (=> (not res!1462119) (not e!2236698))))

(assert (=> b!3613911 (= res!1462119 (matchR!4978 (regex!5650 (rule!8404 (_1!22100 (get!12365 lt!1245488)))) (list!14034 (charsOf!3664 (_1!22100 (get!12365 lt!1245488))))))))

(declare-fun b!3613912 () Bool)

(declare-fun res!1462122 () Bool)

(assert (=> b!3613912 (=> (not res!1462122) (not e!2236698))))

(assert (=> b!3613912 (= res!1462122 (< (size!29013 (_2!22100 (get!12365 lt!1245488))) (size!29013 lt!1245292)))))

(declare-fun bm!261325 () Bool)

(assert (=> bm!261325 (= call!261330 (maxPrefixOneRule!1917 thiss!23823 (h!43465 rules!3307) lt!1245292))))

(declare-fun b!3613913 () Bool)

(declare-fun res!1462123 () Bool)

(assert (=> b!3613913 (=> (not res!1462123) (not e!2236698))))

(assert (=> b!3613913 (= res!1462123 (= (list!14034 (charsOf!3664 (_1!22100 (get!12365 lt!1245488)))) (originalCharacters!6364 (_1!22100 (get!12365 lt!1245488)))))))

(declare-fun b!3613914 () Bool)

(declare-fun lt!1245490 () Option!7930)

(declare-fun lt!1245486 () Option!7930)

(assert (=> b!3613914 (= e!2236697 (ite (and ((_ is None!7929) lt!1245490) ((_ is None!7929) lt!1245486)) None!7929 (ite ((_ is None!7929) lt!1245486) lt!1245490 (ite ((_ is None!7929) lt!1245490) lt!1245486 (ite (>= (size!29011 (_1!22100 (v!37679 lt!1245490))) (size!29011 (_1!22100 (v!37679 lt!1245486)))) lt!1245490 lt!1245486)))))))

(assert (=> b!3613914 (= lt!1245490 call!261330)))

(assert (=> b!3613914 (= lt!1245486 (maxPrefix!2773 thiss!23823 (t!293580 rules!3307) lt!1245292))))

(declare-fun d!1063844 () Bool)

(assert (=> d!1063844 e!2236699))

(declare-fun res!1462120 () Bool)

(assert (=> d!1063844 (=> res!1462120 e!2236699)))

(assert (=> d!1063844 (= res!1462120 (isEmpty!22474 lt!1245488))))

(assert (=> d!1063844 (= lt!1245488 e!2236697)))

(declare-fun c!625238 () Bool)

(assert (=> d!1063844 (= c!625238 (and ((_ is Cons!38045) rules!3307) ((_ is Nil!38045) (t!293580 rules!3307))))))

(declare-fun lt!1245489 () Unit!54354)

(declare-fun lt!1245487 () Unit!54354)

(assert (=> d!1063844 (= lt!1245489 lt!1245487)))

(assert (=> d!1063844 (isPrefix!3013 lt!1245292 lt!1245292)))

(assert (=> d!1063844 (= lt!1245487 (lemmaIsPrefixRefl!1922 lt!1245292 lt!1245292))))

(assert (=> d!1063844 (rulesValidInductive!1985 thiss!23823 rules!3307)))

(assert (=> d!1063844 (= (maxPrefix!2773 thiss!23823 rules!3307 lt!1245292) lt!1245488)))

(declare-fun b!3613915 () Bool)

(declare-fun res!1462121 () Bool)

(assert (=> b!3613915 (=> (not res!1462121) (not e!2236698))))

(assert (=> b!3613915 (= res!1462121 (= (value!181485 (_1!22100 (get!12365 lt!1245488))) (apply!9156 (transformation!5650 (rule!8404 (_1!22100 (get!12365 lt!1245488)))) (seqFromList!4203 (originalCharacters!6364 (_1!22100 (get!12365 lt!1245488)))))))))

(declare-fun b!3613916 () Bool)

(assert (=> b!3613916 (= e!2236698 (contains!7363 rules!3307 (rule!8404 (_1!22100 (get!12365 lt!1245488)))))))

(assert (= (and d!1063844 c!625238) b!3613909))

(assert (= (and d!1063844 (not c!625238)) b!3613914))

(assert (= (or b!3613909 b!3613914) bm!261325))

(assert (= (and d!1063844 (not res!1462120)) b!3613908))

(assert (= (and b!3613908 res!1462118) b!3613913))

(assert (= (and b!3613913 res!1462123) b!3613912))

(assert (= (and b!3613912 res!1462122) b!3613910))

(assert (= (and b!3613910 res!1462117) b!3613915))

(assert (= (and b!3613915 res!1462121) b!3613911))

(assert (= (and b!3613911 res!1462119) b!3613916))

(declare-fun m!4112225 () Bool)

(assert (=> d!1063844 m!4112225))

(declare-fun m!4112227 () Bool)

(assert (=> d!1063844 m!4112227))

(declare-fun m!4112229 () Bool)

(assert (=> d!1063844 m!4112229))

(assert (=> d!1063844 m!4112033))

(declare-fun m!4112231 () Bool)

(assert (=> b!3613913 m!4112231))

(declare-fun m!4112233 () Bool)

(assert (=> b!3613913 m!4112233))

(assert (=> b!3613913 m!4112233))

(declare-fun m!4112235 () Bool)

(assert (=> b!3613913 m!4112235))

(declare-fun m!4112237 () Bool)

(assert (=> b!3613908 m!4112237))

(assert (=> b!3613916 m!4112231))

(declare-fun m!4112239 () Bool)

(assert (=> b!3613916 m!4112239))

(assert (=> b!3613912 m!4112231))

(declare-fun m!4112241 () Bool)

(assert (=> b!3613912 m!4112241))

(assert (=> b!3613912 m!4112221))

(assert (=> b!3613910 m!4112231))

(assert (=> b!3613910 m!4112233))

(assert (=> b!3613910 m!4112233))

(assert (=> b!3613910 m!4112235))

(assert (=> b!3613910 m!4112235))

(declare-fun m!4112243 () Bool)

(assert (=> b!3613910 m!4112243))

(declare-fun m!4112245 () Bool)

(assert (=> bm!261325 m!4112245))

(assert (=> b!3613911 m!4112231))

(assert (=> b!3613911 m!4112233))

(assert (=> b!3613911 m!4112233))

(assert (=> b!3613911 m!4112235))

(assert (=> b!3613911 m!4112235))

(declare-fun m!4112247 () Bool)

(assert (=> b!3613911 m!4112247))

(declare-fun m!4112249 () Bool)

(assert (=> b!3613914 m!4112249))

(assert (=> b!3613915 m!4112231))

(declare-fun m!4112251 () Bool)

(assert (=> b!3613915 m!4112251))

(assert (=> b!3613915 m!4112251))

(declare-fun m!4112253 () Bool)

(assert (=> b!3613915 m!4112253))

(assert (=> b!3613482 d!1063844))

(declare-fun b!3613919 () Bool)

(declare-fun e!2236700 () Bool)

(assert (=> b!3613919 (= e!2236700 (isPrefix!3013 (tail!5601 lt!1245308) (tail!5601 (++!9466 lt!1245308 (_2!22100 lt!1245300)))))))

(declare-fun b!3613917 () Bool)

(declare-fun e!2236702 () Bool)

(assert (=> b!3613917 (= e!2236702 e!2236700)))

(declare-fun res!1462126 () Bool)

(assert (=> b!3613917 (=> (not res!1462126) (not e!2236700))))

(assert (=> b!3613917 (= res!1462126 (not ((_ is Nil!38044) (++!9466 lt!1245308 (_2!22100 lt!1245300)))))))

(declare-fun d!1063846 () Bool)

(declare-fun e!2236701 () Bool)

(assert (=> d!1063846 e!2236701))

(declare-fun res!1462125 () Bool)

(assert (=> d!1063846 (=> res!1462125 e!2236701)))

(declare-fun lt!1245491 () Bool)

(assert (=> d!1063846 (= res!1462125 (not lt!1245491))))

(assert (=> d!1063846 (= lt!1245491 e!2236702)))

(declare-fun res!1462124 () Bool)

(assert (=> d!1063846 (=> res!1462124 e!2236702)))

(assert (=> d!1063846 (= res!1462124 ((_ is Nil!38044) lt!1245308))))

(assert (=> d!1063846 (= (isPrefix!3013 lt!1245308 (++!9466 lt!1245308 (_2!22100 lt!1245300))) lt!1245491)))

(declare-fun b!3613920 () Bool)

(assert (=> b!3613920 (= e!2236701 (>= (size!29013 (++!9466 lt!1245308 (_2!22100 lt!1245300))) (size!29013 lt!1245308)))))

(declare-fun b!3613918 () Bool)

(declare-fun res!1462127 () Bool)

(assert (=> b!3613918 (=> (not res!1462127) (not e!2236700))))

(assert (=> b!3613918 (= res!1462127 (= (head!7612 lt!1245308) (head!7612 (++!9466 lt!1245308 (_2!22100 lt!1245300)))))))

(assert (= (and d!1063846 (not res!1462124)) b!3613917))

(assert (= (and b!3613917 res!1462126) b!3613918))

(assert (= (and b!3613918 res!1462127) b!3613919))

(assert (= (and d!1063846 (not res!1462125)) b!3613920))

(assert (=> b!3613919 m!4111923))

(assert (=> b!3613919 m!4111785))

(declare-fun m!4112255 () Bool)

(assert (=> b!3613919 m!4112255))

(assert (=> b!3613919 m!4111923))

(assert (=> b!3613919 m!4112255))

(declare-fun m!4112257 () Bool)

(assert (=> b!3613919 m!4112257))

(assert (=> b!3613920 m!4111785))

(declare-fun m!4112259 () Bool)

(assert (=> b!3613920 m!4112259))

(assert (=> b!3613920 m!4111771))

(assert (=> b!3613918 m!4111659))

(assert (=> b!3613918 m!4111785))

(declare-fun m!4112261 () Bool)

(assert (=> b!3613918 m!4112261))

(assert (=> b!3613482 d!1063846))

(declare-fun b!3613992 () Bool)

(declare-fun e!2236745 () Bool)

(declare-fun lt!1245602 () Token!10666)

(assert (=> b!3613992 (= e!2236745 (= (rule!8404 lt!1245602) (get!12366 (getRuleFromTag!1256 thiss!23823 rules!3307 (tag!6360 (rule!8404 lt!1245602))))))))

(declare-fun b!3613991 () Bool)

(declare-fun res!1462162 () Bool)

(assert (=> b!3613991 (=> (not res!1462162) (not e!2236745))))

(assert (=> b!3613991 (= res!1462162 (matchR!4978 (regex!5650 (get!12366 (getRuleFromTag!1256 thiss!23823 rules!3307 (tag!6360 (rule!8404 lt!1245602))))) (list!14034 (charsOf!3664 lt!1245602))))))

(declare-fun b!3613993 () Bool)

(declare-fun e!2236746 () Unit!54354)

(declare-fun Unit!54370 () Unit!54354)

(assert (=> b!3613993 (= e!2236746 Unit!54370)))

(declare-fun lt!1245601 () List!38168)

(assert (=> b!3613993 (= lt!1245601 (++!9466 lt!1245306 suffix!1395))))

(declare-fun lt!1245599 () Unit!54354)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!490 (LexerInterface!5239 Rule!11100 List!38169 List!38168) Unit!54354)

(assert (=> b!3613993 (= lt!1245599 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!490 thiss!23823 (rule!8404 lt!1245602) rules!3307 lt!1245601))))

(assert (=> b!3613993 (isEmpty!22474 (maxPrefixOneRule!1917 thiss!23823 (rule!8404 lt!1245602) lt!1245601))))

(declare-fun lt!1245604 () Unit!54354)

(assert (=> b!3613993 (= lt!1245604 lt!1245599)))

(declare-fun lt!1245607 () List!38168)

(assert (=> b!3613993 (= lt!1245607 (list!14034 (charsOf!3664 lt!1245602)))))

(declare-fun lt!1245605 () Unit!54354)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!478 (LexerInterface!5239 Rule!11100 List!38168 List!38168) Unit!54354)

(assert (=> b!3613993 (= lt!1245605 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!478 thiss!23823 (rule!8404 lt!1245602) lt!1245607 (++!9466 lt!1245306 suffix!1395)))))

(assert (=> b!3613993 (not (matchR!4978 (regex!5650 (rule!8404 lt!1245602)) lt!1245607))))

(declare-fun lt!1245615 () Unit!54354)

(assert (=> b!3613993 (= lt!1245615 lt!1245605)))

(assert (=> b!3613993 false))

(declare-fun b!3613994 () Bool)

(declare-fun Unit!54371 () Unit!54354)

(assert (=> b!3613994 (= e!2236746 Unit!54371)))

(declare-fun d!1063848 () Bool)

(assert (=> d!1063848 (isDefined!6163 (maxPrefix!2773 thiss!23823 rules!3307 (++!9466 lt!1245306 suffix!1395)))))

(declare-fun lt!1245611 () Unit!54354)

(assert (=> d!1063848 (= lt!1245611 e!2236746)))

(declare-fun c!625258 () Bool)

(assert (=> d!1063848 (= c!625258 (isEmpty!22474 (maxPrefix!2773 thiss!23823 rules!3307 (++!9466 lt!1245306 suffix!1395))))))

(declare-fun lt!1245613 () Unit!54354)

(declare-fun lt!1245600 () Unit!54354)

(assert (=> d!1063848 (= lt!1245613 lt!1245600)))

(assert (=> d!1063848 e!2236745))

(declare-fun res!1462163 () Bool)

(assert (=> d!1063848 (=> (not res!1462163) (not e!2236745))))

(assert (=> d!1063848 (= res!1462163 (isDefined!6162 (getRuleFromTag!1256 thiss!23823 rules!3307 (tag!6360 (rule!8404 lt!1245602)))))))

(assert (=> d!1063848 (= lt!1245600 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1256 thiss!23823 rules!3307 lt!1245306 lt!1245602))))

(declare-fun lt!1245609 () Unit!54354)

(declare-fun lt!1245608 () Unit!54354)

(assert (=> d!1063848 (= lt!1245609 lt!1245608)))

(declare-fun lt!1245603 () List!38168)

(assert (=> d!1063848 (isPrefix!3013 lt!1245603 (++!9466 lt!1245306 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!454 (List!38168 List!38168 List!38168) Unit!54354)

(assert (=> d!1063848 (= lt!1245608 (lemmaPrefixStaysPrefixWhenAddingToSuffix!454 lt!1245603 lt!1245306 suffix!1395))))

(assert (=> d!1063848 (= lt!1245603 (list!14034 (charsOf!3664 lt!1245602)))))

(declare-fun lt!1245612 () Unit!54354)

(declare-fun lt!1245606 () Unit!54354)

(assert (=> d!1063848 (= lt!1245612 lt!1245606)))

(declare-fun lt!1245614 () List!38168)

(declare-fun lt!1245610 () List!38168)

(assert (=> d!1063848 (isPrefix!3013 lt!1245614 (++!9466 lt!1245614 lt!1245610))))

(assert (=> d!1063848 (= lt!1245606 (lemmaConcatTwoListThenFirstIsPrefix!1934 lt!1245614 lt!1245610))))

(assert (=> d!1063848 (= lt!1245610 (_2!22100 (get!12365 (maxPrefix!2773 thiss!23823 rules!3307 lt!1245306))))))

(assert (=> d!1063848 (= lt!1245614 (list!14034 (charsOf!3664 lt!1245602)))))

(declare-datatypes ((List!38172 0))(
  ( (Nil!38048) (Cons!38048 (h!43468 Token!10666) (t!293703 List!38172)) )
))
(declare-fun head!7614 (List!38172) Token!10666)

(declare-datatypes ((IArray!23199 0))(
  ( (IArray!23200 (innerList!11657 List!38172)) )
))
(declare-datatypes ((Conc!11597 0))(
  ( (Node!11597 (left!29724 Conc!11597) (right!30054 Conc!11597) (csize!23424 Int) (cheight!11808 Int)) (Leaf!18033 (xs!14799 IArray!23199) (csize!23425 Int)) (Empty!11597) )
))
(declare-datatypes ((BalanceConc!22808 0))(
  ( (BalanceConc!22809 (c!625321 Conc!11597)) )
))
(declare-fun list!14038 (BalanceConc!22808) List!38172)

(declare-datatypes ((tuple2!37938 0))(
  ( (tuple2!37939 (_1!22103 BalanceConc!22808) (_2!22103 BalanceConc!22804)) )
))
(declare-fun lex!2486 (LexerInterface!5239 List!38169 BalanceConc!22804) tuple2!37938)

(assert (=> d!1063848 (= lt!1245602 (head!7614 (list!14038 (_1!22103 (lex!2486 thiss!23823 rules!3307 (seqFromList!4203 lt!1245306))))))))

(assert (=> d!1063848 (not (isEmpty!22471 rules!3307))))

(assert (=> d!1063848 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!919 thiss!23823 rules!3307 lt!1245306 suffix!1395) lt!1245611)))

(assert (= (and d!1063848 res!1462163) b!3613991))

(assert (= (and b!3613991 res!1462162) b!3613992))

(assert (= (and d!1063848 c!625258) b!3613993))

(assert (= (and d!1063848 (not c!625258)) b!3613994))

(declare-fun m!4112369 () Bool)

(assert (=> b!3613992 m!4112369))

(assert (=> b!3613992 m!4112369))

(declare-fun m!4112371 () Bool)

(assert (=> b!3613992 m!4112371))

(declare-fun m!4112373 () Bool)

(assert (=> b!3613991 m!4112373))

(declare-fun m!4112375 () Bool)

(assert (=> b!3613991 m!4112375))

(assert (=> b!3613991 m!4112375))

(declare-fun m!4112377 () Bool)

(assert (=> b!3613991 m!4112377))

(assert (=> b!3613991 m!4112369))

(assert (=> b!3613991 m!4112371))

(assert (=> b!3613991 m!4112373))

(assert (=> b!3613991 m!4112369))

(declare-fun m!4112379 () Bool)

(assert (=> b!3613993 m!4112379))

(declare-fun m!4112381 () Bool)

(assert (=> b!3613993 m!4112381))

(declare-fun m!4112383 () Bool)

(assert (=> b!3613993 m!4112383))

(declare-fun m!4112385 () Bool)

(assert (=> b!3613993 m!4112385))

(assert (=> b!3613993 m!4112381))

(assert (=> b!3613993 m!4111781))

(declare-fun m!4112387 () Bool)

(assert (=> b!3613993 m!4112387))

(assert (=> b!3613993 m!4112373))

(assert (=> b!3613993 m!4112373))

(assert (=> b!3613993 m!4112375))

(assert (=> b!3613993 m!4111781))

(declare-fun m!4112389 () Bool)

(assert (=> d!1063848 m!4112389))

(declare-fun m!4112391 () Bool)

(assert (=> d!1063848 m!4112391))

(declare-fun m!4112393 () Bool)

(assert (=> d!1063848 m!4112393))

(assert (=> d!1063848 m!4111751))

(declare-fun m!4112395 () Bool)

(assert (=> d!1063848 m!4112395))

(declare-fun m!4112397 () Bool)

(assert (=> d!1063848 m!4112397))

(assert (=> d!1063848 m!4111781))

(declare-fun m!4112399 () Bool)

(assert (=> d!1063848 m!4112399))

(declare-fun m!4112401 () Bool)

(assert (=> d!1063848 m!4112401))

(declare-fun m!4112403 () Bool)

(assert (=> d!1063848 m!4112403))

(assert (=> d!1063848 m!4112369))

(declare-fun m!4112405 () Bool)

(assert (=> d!1063848 m!4112405))

(assert (=> d!1063848 m!4111751))

(declare-fun m!4112407 () Bool)

(assert (=> d!1063848 m!4112407))

(assert (=> d!1063848 m!4112369))

(assert (=> d!1063848 m!4112401))

(declare-fun m!4112409 () Bool)

(assert (=> d!1063848 m!4112409))

(assert (=> d!1063848 m!4112373))

(assert (=> d!1063848 m!4112375))

(assert (=> d!1063848 m!4111781))

(declare-fun m!4112411 () Bool)

(assert (=> d!1063848 m!4112411))

(assert (=> d!1063848 m!4112391))

(assert (=> d!1063848 m!4111781))

(assert (=> d!1063848 m!4112401))

(assert (=> d!1063848 m!4112395))

(declare-fun m!4112413 () Bool)

(assert (=> d!1063848 m!4112413))

(declare-fun m!4112415 () Bool)

(assert (=> d!1063848 m!4112415))

(assert (=> d!1063848 m!4112413))

(assert (=> d!1063848 m!4112373))

(assert (=> d!1063848 m!4111691))

(declare-fun m!4112417 () Bool)

(assert (=> d!1063848 m!4112417))

(assert (=> b!3613482 d!1063848))

(assert (=> b!3613482 d!1063706))

(declare-fun d!1063890 () Bool)

(assert (=> d!1063890 (isPrefix!3013 lt!1245306 (++!9466 lt!1245306 suffix!1395))))

(declare-fun lt!1245620 () Unit!54354)

(declare-fun choose!21157 (List!38168 List!38168) Unit!54354)

(assert (=> d!1063890 (= lt!1245620 (choose!21157 lt!1245306 suffix!1395))))

(assert (=> d!1063890 (= (lemmaConcatTwoListThenFirstIsPrefix!1934 lt!1245306 suffix!1395) lt!1245620)))

(declare-fun bs!570964 () Bool)

(assert (= bs!570964 d!1063890))

(assert (=> bs!570964 m!4111781))

(assert (=> bs!570964 m!4111781))

(declare-fun m!4112441 () Bool)

(assert (=> bs!570964 m!4112441))

(declare-fun m!4112443 () Bool)

(assert (=> bs!570964 m!4112443))

(assert (=> b!3613482 d!1063890))

(declare-fun d!1063902 () Bool)

(assert (=> d!1063902 (= (get!12365 lt!1245311) (v!37679 lt!1245311))))

(assert (=> b!3613482 d!1063902))

(declare-fun d!1063904 () Bool)

(assert (=> d!1063904 (isPrefix!3013 lt!1245308 (++!9466 lt!1245308 (_2!22100 lt!1245300)))))

(declare-fun lt!1245621 () Unit!54354)

(assert (=> d!1063904 (= lt!1245621 (choose!21157 lt!1245308 (_2!22100 lt!1245300)))))

(assert (=> d!1063904 (= (lemmaConcatTwoListThenFirstIsPrefix!1934 lt!1245308 (_2!22100 lt!1245300)) lt!1245621)))

(declare-fun bs!570965 () Bool)

(assert (= bs!570965 d!1063904))

(assert (=> bs!570965 m!4111785))

(assert (=> bs!570965 m!4111785))

(assert (=> bs!570965 m!4111787))

(declare-fun m!4112445 () Bool)

(assert (=> bs!570965 m!4112445))

(assert (=> b!3613482 d!1063904))

(declare-fun b!3614025 () Bool)

(declare-fun e!2236763 () Bool)

(assert (=> b!3614025 (= e!2236763 (isPrefix!3013 (tail!5601 lt!1245306) (tail!5601 lt!1245292)))))

(declare-fun b!3614023 () Bool)

(declare-fun e!2236765 () Bool)

(assert (=> b!3614023 (= e!2236765 e!2236763)))

(declare-fun res!1462170 () Bool)

(assert (=> b!3614023 (=> (not res!1462170) (not e!2236763))))

(assert (=> b!3614023 (= res!1462170 (not ((_ is Nil!38044) lt!1245292)))))

(declare-fun d!1063906 () Bool)

(declare-fun e!2236764 () Bool)

(assert (=> d!1063906 e!2236764))

(declare-fun res!1462169 () Bool)

(assert (=> d!1063906 (=> res!1462169 e!2236764)))

(declare-fun lt!1245622 () Bool)

(assert (=> d!1063906 (= res!1462169 (not lt!1245622))))

(assert (=> d!1063906 (= lt!1245622 e!2236765)))

(declare-fun res!1462168 () Bool)

(assert (=> d!1063906 (=> res!1462168 e!2236765)))

(assert (=> d!1063906 (= res!1462168 ((_ is Nil!38044) lt!1245306))))

(assert (=> d!1063906 (= (isPrefix!3013 lt!1245306 lt!1245292) lt!1245622)))

(declare-fun b!3614026 () Bool)

(assert (=> b!3614026 (= e!2236764 (>= (size!29013 lt!1245292) (size!29013 lt!1245306)))))

(declare-fun b!3614024 () Bool)

(declare-fun res!1462171 () Bool)

(assert (=> b!3614024 (=> (not res!1462171) (not e!2236763))))

(assert (=> b!3614024 (= res!1462171 (= (head!7612 lt!1245306) (head!7612 lt!1245292)))))

(assert (= (and d!1063906 (not res!1462168)) b!3614023))

(assert (= (and b!3614023 res!1462170) b!3614024))

(assert (= (and b!3614024 res!1462171) b!3614025))

(assert (= (and d!1063906 (not res!1462169)) b!3614026))

(assert (=> b!3614025 m!4112179))

(assert (=> b!3614025 m!4112217))

(assert (=> b!3614025 m!4112179))

(assert (=> b!3614025 m!4112217))

(declare-fun m!4112453 () Bool)

(assert (=> b!3614025 m!4112453))

(assert (=> b!3614026 m!4112221))

(assert (=> b!3614026 m!4111727))

(assert (=> b!3614024 m!4112189))

(assert (=> b!3614024 m!4112223))

(assert (=> b!3613482 d!1063906))

(declare-fun b!3614052 () Bool)

(declare-fun res!1462180 () Bool)

(declare-fun e!2236780 () Bool)

(assert (=> b!3614052 (=> (not res!1462180) (not e!2236780))))

(declare-fun lt!1245625 () List!38168)

(assert (=> b!3614052 (= res!1462180 (= (size!29013 lt!1245625) (+ (size!29013 lt!1245308) (size!29013 (_2!22100 lt!1245300)))))))

(declare-fun d!1063910 () Bool)

(assert (=> d!1063910 e!2236780))

(declare-fun res!1462179 () Bool)

(assert (=> d!1063910 (=> (not res!1462179) (not e!2236780))))

(assert (=> d!1063910 (= res!1462179 (= (content!5442 lt!1245625) ((_ map or) (content!5442 lt!1245308) (content!5442 (_2!22100 lt!1245300)))))))

(declare-fun e!2236779 () List!38168)

(assert (=> d!1063910 (= lt!1245625 e!2236779)))

(declare-fun c!625279 () Bool)

(assert (=> d!1063910 (= c!625279 ((_ is Nil!38044) lt!1245308))))

(assert (=> d!1063910 (= (++!9466 lt!1245308 (_2!22100 lt!1245300)) lt!1245625)))

(declare-fun b!3614051 () Bool)

(assert (=> b!3614051 (= e!2236779 (Cons!38044 (h!43464 lt!1245308) (++!9466 (t!293579 lt!1245308) (_2!22100 lt!1245300))))))

(declare-fun b!3614053 () Bool)

(assert (=> b!3614053 (= e!2236780 (or (not (= (_2!22100 lt!1245300) Nil!38044)) (= lt!1245625 lt!1245308)))))

(declare-fun b!3614050 () Bool)

(assert (=> b!3614050 (= e!2236779 (_2!22100 lt!1245300))))

(assert (= (and d!1063910 c!625279) b!3614050))

(assert (= (and d!1063910 (not c!625279)) b!3614051))

(assert (= (and d!1063910 res!1462179) b!3614052))

(assert (= (and b!3614052 res!1462180) b!3614053))

(declare-fun m!4112461 () Bool)

(assert (=> b!3614052 m!4112461))

(assert (=> b!3614052 m!4111771))

(declare-fun m!4112463 () Bool)

(assert (=> b!3614052 m!4112463))

(declare-fun m!4112465 () Bool)

(assert (=> d!1063910 m!4112465))

(assert (=> d!1063910 m!4111913))

(declare-fun m!4112467 () Bool)

(assert (=> d!1063910 m!4112467))

(declare-fun m!4112469 () Bool)

(assert (=> b!3614051 m!4112469))

(assert (=> b!3613482 d!1063910))

(declare-fun b!3614096 () Bool)

(declare-fun e!2236813 () Option!7931)

(declare-fun e!2236815 () Option!7931)

(assert (=> b!3614096 (= e!2236813 e!2236815)))

(declare-fun c!625288 () Bool)

(assert (=> b!3614096 (= c!625288 (and ((_ is Cons!38045) rules!3307) (not (= (tag!6360 (h!43465 rules!3307)) (tag!6360 (rule!8404 (_1!22100 lt!1245300)))))))))

(declare-fun b!3614097 () Bool)

(declare-fun lt!1245639 () Unit!54354)

(declare-fun lt!1245638 () Unit!54354)

(assert (=> b!3614097 (= lt!1245639 lt!1245638)))

(assert (=> b!3614097 (rulesInvariant!4636 thiss!23823 (t!293580 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!533 (LexerInterface!5239 Rule!11100 List!38169) Unit!54354)

(assert (=> b!3614097 (= lt!1245638 (lemmaInvariantOnRulesThenOnTail!533 thiss!23823 (h!43465 rules!3307) (t!293580 rules!3307)))))

(assert (=> b!3614097 (= e!2236815 (getRuleFromTag!1256 thiss!23823 (t!293580 rules!3307) (tag!6360 (rule!8404 (_1!22100 lt!1245300)))))))

(declare-fun b!3614098 () Bool)

(declare-fun e!2236814 () Bool)

(declare-fun e!2236812 () Bool)

(assert (=> b!3614098 (= e!2236814 e!2236812)))

(declare-fun res!1462209 () Bool)

(assert (=> b!3614098 (=> (not res!1462209) (not e!2236812))))

(declare-fun lt!1245640 () Option!7931)

(assert (=> b!3614098 (= res!1462209 (contains!7363 rules!3307 (get!12366 lt!1245640)))))

(declare-fun b!3614099 () Bool)

(assert (=> b!3614099 (= e!2236812 (= (tag!6360 (get!12366 lt!1245640)) (tag!6360 (rule!8404 (_1!22100 lt!1245300)))))))

(declare-fun b!3614100 () Bool)

(assert (=> b!3614100 (= e!2236815 None!7930)))

(declare-fun d!1063914 () Bool)

(assert (=> d!1063914 e!2236814))

(declare-fun res!1462210 () Bool)

(assert (=> d!1063914 (=> res!1462210 e!2236814)))

(declare-fun isEmpty!22475 (Option!7931) Bool)

(assert (=> d!1063914 (= res!1462210 (isEmpty!22475 lt!1245640))))

(assert (=> d!1063914 (= lt!1245640 e!2236813)))

(declare-fun c!625287 () Bool)

(assert (=> d!1063914 (= c!625287 (and ((_ is Cons!38045) rules!3307) (= (tag!6360 (h!43465 rules!3307)) (tag!6360 (rule!8404 (_1!22100 lt!1245300))))))))

(assert (=> d!1063914 (rulesInvariant!4636 thiss!23823 rules!3307)))

(assert (=> d!1063914 (= (getRuleFromTag!1256 thiss!23823 rules!3307 (tag!6360 (rule!8404 (_1!22100 lt!1245300)))) lt!1245640)))

(declare-fun b!3614101 () Bool)

(assert (=> b!3614101 (= e!2236813 (Some!7930 (h!43465 rules!3307)))))

(assert (= (and d!1063914 c!625287) b!3614101))

(assert (= (and d!1063914 (not c!625287)) b!3614096))

(assert (= (and b!3614096 c!625288) b!3614097))

(assert (= (and b!3614096 (not c!625288)) b!3614100))

(assert (= (and d!1063914 (not res!1462210)) b!3614098))

(assert (= (and b!3614098 res!1462209) b!3614099))

(declare-fun m!4112509 () Bool)

(assert (=> b!3614097 m!4112509))

(declare-fun m!4112511 () Bool)

(assert (=> b!3614097 m!4112511))

(declare-fun m!4112513 () Bool)

(assert (=> b!3614097 m!4112513))

(declare-fun m!4112515 () Bool)

(assert (=> b!3614098 m!4112515))

(assert (=> b!3614098 m!4112515))

(declare-fun m!4112517 () Bool)

(assert (=> b!3614098 m!4112517))

(assert (=> b!3614099 m!4112515))

(declare-fun m!4112519 () Bool)

(assert (=> d!1063914 m!4112519))

(assert (=> d!1063914 m!4111705))

(assert (=> b!3613482 d!1063914))

(declare-fun d!1063932 () Bool)

(assert (=> d!1063932 (= (list!14034 lt!1245329) (list!14036 (c!625157 lt!1245329)))))

(declare-fun bs!570967 () Bool)

(assert (= bs!570967 d!1063932))

(declare-fun m!4112521 () Bool)

(assert (=> bs!570967 m!4112521))

(assert (=> b!3613482 d!1063932))

(declare-fun d!1063934 () Bool)

(assert (=> d!1063934 (= (isDefined!6162 lt!1245286) (not (isEmpty!22475 lt!1245286)))))

(declare-fun bs!570969 () Bool)

(assert (= bs!570969 d!1063934))

(declare-fun m!4112523 () Bool)

(assert (=> bs!570969 m!4112523))

(assert (=> b!3613482 d!1063934))

(declare-fun b!3614104 () Bool)

(declare-fun res!1462212 () Bool)

(declare-fun e!2236817 () Bool)

(assert (=> b!3614104 (=> (not res!1462212) (not e!2236817))))

(declare-fun lt!1245644 () List!38168)

(assert (=> b!3614104 (= res!1462212 (= (size!29013 lt!1245644) (+ (size!29013 lt!1245306) (size!29013 suffix!1395))))))

(declare-fun d!1063936 () Bool)

(assert (=> d!1063936 e!2236817))

(declare-fun res!1462211 () Bool)

(assert (=> d!1063936 (=> (not res!1462211) (not e!2236817))))

(assert (=> d!1063936 (= res!1462211 (= (content!5442 lt!1245644) ((_ map or) (content!5442 lt!1245306) (content!5442 suffix!1395))))))

(declare-fun e!2236816 () List!38168)

(assert (=> d!1063936 (= lt!1245644 e!2236816)))

(declare-fun c!625290 () Bool)

(assert (=> d!1063936 (= c!625290 ((_ is Nil!38044) lt!1245306))))

(assert (=> d!1063936 (= (++!9466 lt!1245306 suffix!1395) lt!1245644)))

(declare-fun b!3614103 () Bool)

(assert (=> b!3614103 (= e!2236816 (Cons!38044 (h!43464 lt!1245306) (++!9466 (t!293579 lt!1245306) suffix!1395)))))

(declare-fun b!3614105 () Bool)

(assert (=> b!3614105 (= e!2236817 (or (not (= suffix!1395 Nil!38044)) (= lt!1245644 lt!1245306)))))

(declare-fun b!3614102 () Bool)

(assert (=> b!3614102 (= e!2236816 suffix!1395)))

(assert (= (and d!1063936 c!625290) b!3614102))

(assert (= (and d!1063936 (not c!625290)) b!3614103))

(assert (= (and d!1063936 res!1462211) b!3614104))

(assert (= (and b!3614104 res!1462212) b!3614105))

(declare-fun m!4112531 () Bool)

(assert (=> b!3614104 m!4112531))

(assert (=> b!3614104 m!4111727))

(declare-fun m!4112533 () Bool)

(assert (=> b!3614104 m!4112533))

(declare-fun m!4112535 () Bool)

(assert (=> d!1063936 m!4112535))

(declare-fun m!4112537 () Bool)

(assert (=> d!1063936 m!4112537))

(declare-fun m!4112539 () Bool)

(assert (=> d!1063936 m!4112539))

(declare-fun m!4112541 () Bool)

(assert (=> b!3614103 m!4112541))

(assert (=> b!3613482 d!1063936))

(declare-fun d!1063944 () Bool)

(declare-fun e!2236821 () Bool)

(assert (=> d!1063944 e!2236821))

(declare-fun res!1462218 () Bool)

(assert (=> d!1063944 (=> (not res!1462218) (not e!2236821))))

(assert (=> d!1063944 (= res!1462218 (isDefined!6162 (getRuleFromTag!1256 thiss!23823 rules!3307 (tag!6360 (rule!8404 (_1!22100 lt!1245300))))))))

(declare-fun lt!1245649 () Unit!54354)

(declare-fun choose!21159 (LexerInterface!5239 List!38169 List!38168 Token!10666) Unit!54354)

(assert (=> d!1063944 (= lt!1245649 (choose!21159 thiss!23823 rules!3307 lt!1245292 (_1!22100 lt!1245300)))))

(assert (=> d!1063944 (rulesInvariant!4636 thiss!23823 rules!3307)))

(assert (=> d!1063944 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1256 thiss!23823 rules!3307 lt!1245292 (_1!22100 lt!1245300)) lt!1245649)))

(declare-fun b!3614111 () Bool)

(declare-fun res!1462219 () Bool)

(assert (=> b!3614111 (=> (not res!1462219) (not e!2236821))))

(assert (=> b!3614111 (= res!1462219 (matchR!4978 (regex!5650 (get!12366 (getRuleFromTag!1256 thiss!23823 rules!3307 (tag!6360 (rule!8404 (_1!22100 lt!1245300)))))) (list!14034 (charsOf!3664 (_1!22100 lt!1245300)))))))

(declare-fun b!3614112 () Bool)

(assert (=> b!3614112 (= e!2236821 (= (rule!8404 (_1!22100 lt!1245300)) (get!12366 (getRuleFromTag!1256 thiss!23823 rules!3307 (tag!6360 (rule!8404 (_1!22100 lt!1245300)))))))))

(assert (= (and d!1063944 res!1462218) b!3614111))

(assert (= (and b!3614111 res!1462219) b!3614112))

(assert (=> d!1063944 m!4111791))

(assert (=> d!1063944 m!4111791))

(declare-fun m!4112543 () Bool)

(assert (=> d!1063944 m!4112543))

(declare-fun m!4112545 () Bool)

(assert (=> d!1063944 m!4112545))

(assert (=> d!1063944 m!4111705))

(assert (=> b!3614111 m!4111791))

(declare-fun m!4112547 () Bool)

(assert (=> b!3614111 m!4112547))

(assert (=> b!3614111 m!4111709))

(declare-fun m!4112549 () Bool)

(assert (=> b!3614111 m!4112549))

(assert (=> b!3614111 m!4111707))

(assert (=> b!3614111 m!4111709))

(assert (=> b!3614111 m!4111791))

(assert (=> b!3614111 m!4111707))

(assert (=> b!3614112 m!4111791))

(assert (=> b!3614112 m!4111791))

(assert (=> b!3614112 m!4112547))

(assert (=> b!3613482 d!1063944))

(declare-fun d!1063946 () Bool)

(assert (=> d!1063946 (not (contains!7364 (usedCharacters!864 (regex!5650 (rule!8404 (_1!22100 lt!1245300)))) lt!1245282))))

(declare-fun lt!1245650 () Unit!54354)

(assert (=> d!1063946 (= lt!1245650 (choose!21155 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8404 (_1!22100 lt!1245300)) lt!1245282))))

(assert (=> d!1063946 (rulesInvariant!4636 thiss!23823 rules!3307)))

(assert (=> d!1063946 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!238 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8404 (_1!22100 lt!1245300)) lt!1245282) lt!1245650)))

(declare-fun bs!570970 () Bool)

(assert (= bs!570970 d!1063946))

(assert (=> bs!570970 m!4111667))

(assert (=> bs!570970 m!4111667))

(assert (=> bs!570970 m!4112195))

(declare-fun m!4112551 () Bool)

(assert (=> bs!570970 m!4112551))

(assert (=> bs!570970 m!4111705))

(assert (=> b!3613501 d!1063946))

(declare-fun b!3614123 () Bool)

(declare-fun res!1462222 () Bool)

(declare-fun e!2236830 () Bool)

(assert (=> b!3614123 (=> res!1462222 e!2236830)))

(assert (=> b!3614123 (= res!1462222 (not ((_ is IntegerValue!17642) (value!181485 token!511))))))

(declare-fun e!2236829 () Bool)

(assert (=> b!3614123 (= e!2236829 e!2236830)))

(declare-fun b!3614124 () Bool)

(declare-fun inv!17 (TokenValue!5880) Bool)

(assert (=> b!3614124 (= e!2236829 (inv!17 (value!181485 token!511)))))

(declare-fun d!1063948 () Bool)

(declare-fun c!625297 () Bool)

(assert (=> d!1063948 (= c!625297 ((_ is IntegerValue!17640) (value!181485 token!511)))))

(declare-fun e!2236828 () Bool)

(assert (=> d!1063948 (= (inv!21 (value!181485 token!511)) e!2236828)))

(declare-fun b!3614125 () Bool)

(assert (=> b!3614125 (= e!2236828 e!2236829)))

(declare-fun c!625296 () Bool)

(assert (=> b!3614125 (= c!625296 ((_ is IntegerValue!17641) (value!181485 token!511)))))

(declare-fun b!3614126 () Bool)

(declare-fun inv!15 (TokenValue!5880) Bool)

(assert (=> b!3614126 (= e!2236830 (inv!15 (value!181485 token!511)))))

(declare-fun b!3614127 () Bool)

(declare-fun inv!16 (TokenValue!5880) Bool)

(assert (=> b!3614127 (= e!2236828 (inv!16 (value!181485 token!511)))))

(assert (= (and d!1063948 c!625297) b!3614127))

(assert (= (and d!1063948 (not c!625297)) b!3614125))

(assert (= (and b!3614125 c!625296) b!3614124))

(assert (= (and b!3614125 (not c!625296)) b!3614123))

(assert (= (and b!3614123 (not res!1462222)) b!3614126))

(declare-fun m!4112553 () Bool)

(assert (=> b!3614124 m!4112553))

(declare-fun m!4112555 () Bool)

(assert (=> b!3614126 m!4112555))

(declare-fun m!4112557 () Bool)

(assert (=> b!3614127 m!4112557))

(assert (=> b!3613494 d!1063948))

(assert (=> bm!261293 d!1063770))

(declare-fun d!1063950 () Bool)

(assert (=> d!1063950 (not (matchR!4978 (regex!5650 (rule!8404 (_1!22100 lt!1245300))) lt!1245308))))

(declare-fun lt!1245651 () Unit!54354)

(assert (=> d!1063950 (= lt!1245651 (choose!21147 (regex!5650 (rule!8404 (_1!22100 lt!1245300))) lt!1245308 lt!1245283))))

(assert (=> d!1063950 (validRegex!4765 (regex!5650 (rule!8404 (_1!22100 lt!1245300))))))

(assert (=> d!1063950 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!634 (regex!5650 (rule!8404 (_1!22100 lt!1245300))) lt!1245308 lt!1245283) lt!1245651)))

(declare-fun bs!570971 () Bool)

(assert (= bs!570971 d!1063950))

(assert (=> bs!570971 m!4111685))

(declare-fun m!4112559 () Bool)

(assert (=> bs!570971 m!4112559))

(assert (=> bs!570971 m!4111931))

(assert (=> bm!261291 d!1063950))

(declare-fun b!3614128 () Bool)

(declare-fun e!2236833 () Bool)

(assert (=> b!3614128 (= e!2236833 (matchR!4978 (derivativeStep!3152 (regex!5650 rule!403) (head!7612 lt!1245306)) (tail!5601 lt!1245306)))))

(declare-fun b!3614129 () Bool)

(declare-fun res!1462228 () Bool)

(declare-fun e!2236834 () Bool)

(assert (=> b!3614129 (=> res!1462228 e!2236834)))

(assert (=> b!3614129 (= res!1462228 (not ((_ is ElementMatch!10409) (regex!5650 rule!403))))))

(declare-fun e!2236835 () Bool)

(assert (=> b!3614129 (= e!2236835 e!2236834)))

(declare-fun b!3614130 () Bool)

(declare-fun res!1462226 () Bool)

(declare-fun e!2236836 () Bool)

(assert (=> b!3614130 (=> (not res!1462226) (not e!2236836))))

(assert (=> b!3614130 (= res!1462226 (isEmpty!22470 (tail!5601 lt!1245306)))))

(declare-fun b!3614131 () Bool)

(assert (=> b!3614131 (= e!2236833 (nullable!3603 (regex!5650 rule!403)))))

(declare-fun b!3614132 () Bool)

(declare-fun e!2236837 () Bool)

(assert (=> b!3614132 (= e!2236837 (not (= (head!7612 lt!1245306) (c!625156 (regex!5650 rule!403)))))))

(declare-fun b!3614133 () Bool)

(declare-fun e!2236831 () Bool)

(declare-fun lt!1245652 () Bool)

(declare-fun call!261353 () Bool)

(assert (=> b!3614133 (= e!2236831 (= lt!1245652 call!261353))))

(declare-fun d!1063952 () Bool)

(assert (=> d!1063952 e!2236831))

(declare-fun c!625299 () Bool)

(assert (=> d!1063952 (= c!625299 ((_ is EmptyExpr!10409) (regex!5650 rule!403)))))

(assert (=> d!1063952 (= lt!1245652 e!2236833)))

(declare-fun c!625300 () Bool)

(assert (=> d!1063952 (= c!625300 (isEmpty!22470 lt!1245306))))

(assert (=> d!1063952 (validRegex!4765 (regex!5650 rule!403))))

(assert (=> d!1063952 (= (matchR!4978 (regex!5650 rule!403) lt!1245306) lt!1245652)))

(declare-fun b!3614134 () Bool)

(assert (=> b!3614134 (= e!2236831 e!2236835)))

(declare-fun c!625298 () Bool)

(assert (=> b!3614134 (= c!625298 ((_ is EmptyLang!10409) (regex!5650 rule!403)))))

(declare-fun b!3614135 () Bool)

(declare-fun res!1462230 () Bool)

(assert (=> b!3614135 (=> (not res!1462230) (not e!2236836))))

(assert (=> b!3614135 (= res!1462230 (not call!261353))))

(declare-fun b!3614136 () Bool)

(declare-fun e!2236832 () Bool)

(assert (=> b!3614136 (= e!2236832 e!2236837)))

(declare-fun res!1462224 () Bool)

(assert (=> b!3614136 (=> res!1462224 e!2236837)))

(assert (=> b!3614136 (= res!1462224 call!261353)))

(declare-fun b!3614137 () Bool)

(assert (=> b!3614137 (= e!2236835 (not lt!1245652))))

(declare-fun b!3614138 () Bool)

(assert (=> b!3614138 (= e!2236834 e!2236832)))

(declare-fun res!1462227 () Bool)

(assert (=> b!3614138 (=> (not res!1462227) (not e!2236832))))

(assert (=> b!3614138 (= res!1462227 (not lt!1245652))))

(declare-fun b!3614139 () Bool)

(assert (=> b!3614139 (= e!2236836 (= (head!7612 lt!1245306) (c!625156 (regex!5650 rule!403))))))

(declare-fun bm!261348 () Bool)

(assert (=> bm!261348 (= call!261353 (isEmpty!22470 lt!1245306))))

(declare-fun b!3614140 () Bool)

(declare-fun res!1462223 () Bool)

(assert (=> b!3614140 (=> res!1462223 e!2236837)))

(assert (=> b!3614140 (= res!1462223 (not (isEmpty!22470 (tail!5601 lt!1245306))))))

(declare-fun b!3614141 () Bool)

(declare-fun res!1462225 () Bool)

(assert (=> b!3614141 (=> res!1462225 e!2236834)))

(assert (=> b!3614141 (= res!1462225 e!2236836)))

(declare-fun res!1462229 () Bool)

(assert (=> b!3614141 (=> (not res!1462229) (not e!2236836))))

(assert (=> b!3614141 (= res!1462229 lt!1245652)))

(assert (= (and d!1063952 c!625300) b!3614131))

(assert (= (and d!1063952 (not c!625300)) b!3614128))

(assert (= (and d!1063952 c!625299) b!3614133))

(assert (= (and d!1063952 (not c!625299)) b!3614134))

(assert (= (and b!3614134 c!625298) b!3614137))

(assert (= (and b!3614134 (not c!625298)) b!3614129))

(assert (= (and b!3614129 (not res!1462228)) b!3614141))

(assert (= (and b!3614141 res!1462229) b!3614135))

(assert (= (and b!3614135 res!1462230) b!3614130))

(assert (= (and b!3614130 res!1462226) b!3614139))

(assert (= (and b!3614141 (not res!1462225)) b!3614138))

(assert (= (and b!3614138 res!1462227) b!3614136))

(assert (= (and b!3614136 (not res!1462224)) b!3614140))

(assert (= (and b!3614140 (not res!1462223)) b!3614132))

(assert (= (or b!3614133 b!3614135 b!3614136) bm!261348))

(declare-fun m!4112561 () Bool)

(assert (=> bm!261348 m!4112561))

(assert (=> b!3614130 m!4112179))

(assert (=> b!3614130 m!4112179))

(declare-fun m!4112563 () Bool)

(assert (=> b!3614130 m!4112563))

(assert (=> b!3614139 m!4112189))

(assert (=> b!3614128 m!4112189))

(assert (=> b!3614128 m!4112189))

(declare-fun m!4112565 () Bool)

(assert (=> b!3614128 m!4112565))

(assert (=> b!3614128 m!4112179))

(assert (=> b!3614128 m!4112565))

(assert (=> b!3614128 m!4112179))

(declare-fun m!4112567 () Bool)

(assert (=> b!3614128 m!4112567))

(assert (=> b!3614132 m!4112189))

(assert (=> b!3614140 m!4112179))

(assert (=> b!3614140 m!4112179))

(assert (=> b!3614140 m!4112563))

(assert (=> d!1063952 m!4112561))

(assert (=> d!1063952 m!4112121))

(declare-fun m!4112569 () Bool)

(assert (=> b!3614131 m!4112569))

(assert (=> b!3613495 d!1063952))

(declare-fun d!1063954 () Bool)

(declare-fun res!1462235 () Bool)

(declare-fun e!2236840 () Bool)

(assert (=> d!1063954 (=> (not res!1462235) (not e!2236840))))

(assert (=> d!1063954 (= res!1462235 (validRegex!4765 (regex!5650 rule!403)))))

(assert (=> d!1063954 (= (ruleValid!1915 thiss!23823 rule!403) e!2236840)))

(declare-fun b!3614146 () Bool)

(declare-fun res!1462236 () Bool)

(assert (=> b!3614146 (=> (not res!1462236) (not e!2236840))))

(assert (=> b!3614146 (= res!1462236 (not (nullable!3603 (regex!5650 rule!403))))))

(declare-fun b!3614147 () Bool)

(assert (=> b!3614147 (= e!2236840 (not (= (tag!6360 rule!403) (String!42735 ""))))))

(assert (= (and d!1063954 res!1462235) b!3614146))

(assert (= (and b!3614146 res!1462236) b!3614147))

(assert (=> d!1063954 m!4112121))

(assert (=> b!3614146 m!4112569))

(assert (=> b!3613495 d!1063954))

(declare-fun d!1063956 () Bool)

(assert (=> d!1063956 (ruleValid!1915 thiss!23823 rule!403)))

(declare-fun lt!1245655 () Unit!54354)

(declare-fun choose!21160 (LexerInterface!5239 Rule!11100 List!38169) Unit!54354)

(assert (=> d!1063956 (= lt!1245655 (choose!21160 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1063956 (contains!7363 rules!3307 rule!403)))

(assert (=> d!1063956 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1070 thiss!23823 rule!403 rules!3307) lt!1245655)))

(declare-fun bs!570972 () Bool)

(assert (= bs!570972 d!1063956))

(assert (=> bs!570972 m!4111735))

(declare-fun m!4112571 () Bool)

(assert (=> bs!570972 m!4112571))

(assert (=> bs!570972 m!4111693))

(assert (=> b!3613495 d!1063956))

(declare-fun d!1063958 () Bool)

(declare-fun dynLambda!16465 (Int BalanceConc!22804) TokenValue!5880)

(assert (=> d!1063958 (= (apply!9156 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))) (seqFromList!4203 lt!1245308)) (dynLambda!16465 (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300)))) (seqFromList!4203 lt!1245308)))))

(declare-fun b_lambda!106915 () Bool)

(assert (=> (not b_lambda!106915) (not d!1063958)))

(declare-fun t!293614 () Bool)

(declare-fun tb!207209 () Bool)

(assert (=> (and b!3613486 (= (toValue!7934 (transformation!5650 anOtherTypeRule!33)) (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) t!293614) tb!207209))

(declare-fun result!252516 () Bool)

(assert (=> tb!207209 (= result!252516 (inv!21 (dynLambda!16465 (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300)))) (seqFromList!4203 lt!1245308))))))

(declare-fun m!4112573 () Bool)

(assert (=> tb!207209 m!4112573))

(assert (=> d!1063958 t!293614))

(declare-fun b_and!263755 () Bool)

(assert (= b_and!263707 (and (=> t!293614 result!252516) b_and!263755)))

(declare-fun t!293616 () Bool)

(declare-fun tb!207211 () Bool)

(assert (=> (and b!3613513 (= (toValue!7934 (transformation!5650 (rule!8404 token!511))) (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) t!293616) tb!207211))

(declare-fun result!252520 () Bool)

(assert (= result!252520 result!252516))

(assert (=> d!1063958 t!293616))

(declare-fun b_and!263757 () Bool)

(assert (= b_and!263711 (and (=> t!293616 result!252520) b_and!263757)))

(declare-fun tb!207213 () Bool)

(declare-fun t!293618 () Bool)

(assert (=> (and b!3613520 (= (toValue!7934 (transformation!5650 rule!403)) (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) t!293618) tb!207213))

(declare-fun result!252522 () Bool)

(assert (= result!252522 result!252516))

(assert (=> d!1063958 t!293618))

(declare-fun b_and!263759 () Bool)

(assert (= b_and!263715 (and (=> t!293618 result!252522) b_and!263759)))

(declare-fun tb!207215 () Bool)

(declare-fun t!293620 () Bool)

(assert (=> (and b!3613517 (= (toValue!7934 (transformation!5650 (h!43465 rules!3307))) (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) t!293620) tb!207215))

(declare-fun result!252524 () Bool)

(assert (= result!252524 result!252516))

(assert (=> d!1063958 t!293620))

(declare-fun b_and!263761 () Bool)

(assert (= b_and!263719 (and (=> t!293620 result!252524) b_and!263761)))

(assert (=> d!1063958 m!4111767))

(declare-fun m!4112575 () Bool)

(assert (=> d!1063958 m!4112575))

(assert (=> b!3613514 d!1063958))

(declare-fun d!1063960 () Bool)

(declare-fun lt!1245656 () Int)

(assert (=> d!1063960 (>= lt!1245656 0)))

(declare-fun e!2236844 () Int)

(assert (=> d!1063960 (= lt!1245656 e!2236844)))

(declare-fun c!625301 () Bool)

(assert (=> d!1063960 (= c!625301 ((_ is Nil!38044) lt!1245308))))

(assert (=> d!1063960 (= (size!29013 lt!1245308) lt!1245656)))

(declare-fun b!3614150 () Bool)

(assert (=> b!3614150 (= e!2236844 0)))

(declare-fun b!3614151 () Bool)

(assert (=> b!3614151 (= e!2236844 (+ 1 (size!29013 (t!293579 lt!1245308))))))

(assert (= (and d!1063960 c!625301) b!3614150))

(assert (= (and d!1063960 (not c!625301)) b!3614151))

(declare-fun m!4112577 () Bool)

(assert (=> b!3614151 m!4112577))

(assert (=> b!3613514 d!1063960))

(declare-fun d!1063962 () Bool)

(assert (=> d!1063962 (= (maxPrefixOneRule!1917 thiss!23823 (rule!8404 (_1!22100 lt!1245300)) lt!1245292) (Some!7929 (tuple2!37933 (Token!10667 (apply!9156 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))) (seqFromList!4203 lt!1245308)) (rule!8404 (_1!22100 lt!1245300)) (size!29013 lt!1245308) lt!1245308) (_2!22100 lt!1245300))))))

(declare-fun lt!1245659 () Unit!54354)

(declare-fun choose!21161 (LexerInterface!5239 List!38169 List!38168 List!38168 List!38168 Rule!11100) Unit!54354)

(assert (=> d!1063962 (= lt!1245659 (choose!21161 thiss!23823 rules!3307 lt!1245308 lt!1245292 (_2!22100 lt!1245300) (rule!8404 (_1!22100 lt!1245300))))))

(assert (=> d!1063962 (not (isEmpty!22471 rules!3307))))

(assert (=> d!1063962 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!989 thiss!23823 rules!3307 lt!1245308 lt!1245292 (_2!22100 lt!1245300) (rule!8404 (_1!22100 lt!1245300))) lt!1245659)))

(declare-fun bs!570973 () Bool)

(assert (= bs!570973 d!1063962))

(declare-fun m!4112579 () Bool)

(assert (=> bs!570973 m!4112579))

(assert (=> bs!570973 m!4111771))

(assert (=> bs!570973 m!4111773))

(assert (=> bs!570973 m!4111767))

(assert (=> bs!570973 m!4111769))

(assert (=> bs!570973 m!4111767))

(assert (=> bs!570973 m!4111691))

(assert (=> b!3613514 d!1063962))

(declare-fun b!3614170 () Bool)

(declare-fun e!2236853 () Bool)

(declare-fun lt!1245672 () Option!7930)

(assert (=> b!3614170 (= e!2236853 (= (size!29011 (_1!22100 (get!12365 lt!1245672))) (size!29013 (originalCharacters!6364 (_1!22100 (get!12365 lt!1245672))))))))

(declare-fun b!3614171 () Bool)

(declare-fun res!1462252 () Bool)

(assert (=> b!3614171 (=> (not res!1462252) (not e!2236853))))

(assert (=> b!3614171 (= res!1462252 (= (rule!8404 (_1!22100 (get!12365 lt!1245672))) (rule!8404 (_1!22100 lt!1245300))))))

(declare-fun b!3614172 () Bool)

(declare-fun e!2236855 () Option!7930)

(assert (=> b!3614172 (= e!2236855 None!7929)))

(declare-fun b!3614173 () Bool)

(declare-datatypes ((tuple2!37940 0))(
  ( (tuple2!37941 (_1!22104 List!38168) (_2!22104 List!38168)) )
))
(declare-fun lt!1245674 () tuple2!37940)

(assert (=> b!3614173 (= e!2236855 (Some!7929 (tuple2!37933 (Token!10667 (apply!9156 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))) (seqFromList!4203 (_1!22104 lt!1245674))) (rule!8404 (_1!22100 lt!1245300)) (size!29012 (seqFromList!4203 (_1!22104 lt!1245674))) (_1!22104 lt!1245674)) (_2!22104 lt!1245674))))))

(declare-fun lt!1245673 () Unit!54354)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!982 (Regex!10409 List!38168) Unit!54354)

(assert (=> b!3614173 (= lt!1245673 (longestMatchIsAcceptedByMatchOrIsEmpty!982 (regex!5650 (rule!8404 (_1!22100 lt!1245300))) lt!1245292))))

(declare-fun res!1462254 () Bool)

(declare-fun findLongestMatchInner!1009 (Regex!10409 List!38168 Int List!38168 List!38168 Int) tuple2!37940)

(assert (=> b!3614173 (= res!1462254 (isEmpty!22470 (_1!22104 (findLongestMatchInner!1009 (regex!5650 (rule!8404 (_1!22100 lt!1245300))) Nil!38044 (size!29013 Nil!38044) lt!1245292 lt!1245292 (size!29013 lt!1245292)))))))

(declare-fun e!2236856 () Bool)

(assert (=> b!3614173 (=> res!1462254 e!2236856)))

(assert (=> b!3614173 e!2236856))

(declare-fun lt!1245670 () Unit!54354)

(assert (=> b!3614173 (= lt!1245670 lt!1245673)))

(declare-fun lt!1245671 () Unit!54354)

(assert (=> b!3614173 (= lt!1245671 (lemmaSemiInverse!1407 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))) (seqFromList!4203 (_1!22104 lt!1245674))))))

(declare-fun b!3614174 () Bool)

(declare-fun res!1462255 () Bool)

(assert (=> b!3614174 (=> (not res!1462255) (not e!2236853))))

(assert (=> b!3614174 (= res!1462255 (= (++!9466 (list!14034 (charsOf!3664 (_1!22100 (get!12365 lt!1245672)))) (_2!22100 (get!12365 lt!1245672))) lt!1245292))))

(declare-fun b!3614175 () Bool)

(declare-fun res!1462257 () Bool)

(assert (=> b!3614175 (=> (not res!1462257) (not e!2236853))))

(assert (=> b!3614175 (= res!1462257 (= (value!181485 (_1!22100 (get!12365 lt!1245672))) (apply!9156 (transformation!5650 (rule!8404 (_1!22100 (get!12365 lt!1245672)))) (seqFromList!4203 (originalCharacters!6364 (_1!22100 (get!12365 lt!1245672)))))))))

(declare-fun b!3614176 () Bool)

(declare-fun e!2236854 () Bool)

(assert (=> b!3614176 (= e!2236854 e!2236853)))

(declare-fun res!1462256 () Bool)

(assert (=> b!3614176 (=> (not res!1462256) (not e!2236853))))

(assert (=> b!3614176 (= res!1462256 (matchR!4978 (regex!5650 (rule!8404 (_1!22100 lt!1245300))) (list!14034 (charsOf!3664 (_1!22100 (get!12365 lt!1245672))))))))

(declare-fun d!1063964 () Bool)

(assert (=> d!1063964 e!2236854))

(declare-fun res!1462253 () Bool)

(assert (=> d!1063964 (=> res!1462253 e!2236854)))

(assert (=> d!1063964 (= res!1462253 (isEmpty!22474 lt!1245672))))

(assert (=> d!1063964 (= lt!1245672 e!2236855)))

(declare-fun c!625304 () Bool)

(assert (=> d!1063964 (= c!625304 (isEmpty!22470 (_1!22104 lt!1245674)))))

(declare-fun findLongestMatch!924 (Regex!10409 List!38168) tuple2!37940)

(assert (=> d!1063964 (= lt!1245674 (findLongestMatch!924 (regex!5650 (rule!8404 (_1!22100 lt!1245300))) lt!1245292))))

(assert (=> d!1063964 (ruleValid!1915 thiss!23823 (rule!8404 (_1!22100 lt!1245300)))))

(assert (=> d!1063964 (= (maxPrefixOneRule!1917 thiss!23823 (rule!8404 (_1!22100 lt!1245300)) lt!1245292) lt!1245672)))

(declare-fun b!3614177 () Bool)

(assert (=> b!3614177 (= e!2236856 (matchR!4978 (regex!5650 (rule!8404 (_1!22100 lt!1245300))) (_1!22104 (findLongestMatchInner!1009 (regex!5650 (rule!8404 (_1!22100 lt!1245300))) Nil!38044 (size!29013 Nil!38044) lt!1245292 lt!1245292 (size!29013 lt!1245292)))))))

(declare-fun b!3614178 () Bool)

(declare-fun res!1462251 () Bool)

(assert (=> b!3614178 (=> (not res!1462251) (not e!2236853))))

(assert (=> b!3614178 (= res!1462251 (< (size!29013 (_2!22100 (get!12365 lt!1245672))) (size!29013 lt!1245292)))))

(assert (= (and d!1063964 c!625304) b!3614172))

(assert (= (and d!1063964 (not c!625304)) b!3614173))

(assert (= (and b!3614173 (not res!1462254)) b!3614177))

(assert (= (and d!1063964 (not res!1462253)) b!3614176))

(assert (= (and b!3614176 res!1462256) b!3614174))

(assert (= (and b!3614174 res!1462255) b!3614178))

(assert (= (and b!3614178 res!1462251) b!3614171))

(assert (= (and b!3614171 res!1462252) b!3614175))

(assert (= (and b!3614175 res!1462257) b!3614170))

(declare-fun m!4112581 () Bool)

(assert (=> b!3614171 m!4112581))

(declare-fun m!4112583 () Bool)

(assert (=> b!3614177 m!4112583))

(assert (=> b!3614177 m!4112221))

(assert (=> b!3614177 m!4112583))

(assert (=> b!3614177 m!4112221))

(declare-fun m!4112585 () Bool)

(assert (=> b!3614177 m!4112585))

(declare-fun m!4112587 () Bool)

(assert (=> b!3614177 m!4112587))

(assert (=> b!3614174 m!4112581))

(declare-fun m!4112589 () Bool)

(assert (=> b!3614174 m!4112589))

(assert (=> b!3614174 m!4112589))

(declare-fun m!4112591 () Bool)

(assert (=> b!3614174 m!4112591))

(assert (=> b!3614174 m!4112591))

(declare-fun m!4112593 () Bool)

(assert (=> b!3614174 m!4112593))

(declare-fun m!4112595 () Bool)

(assert (=> d!1063964 m!4112595))

(declare-fun m!4112597 () Bool)

(assert (=> d!1063964 m!4112597))

(declare-fun m!4112599 () Bool)

(assert (=> d!1063964 m!4112599))

(declare-fun m!4112601 () Bool)

(assert (=> d!1063964 m!4112601))

(assert (=> b!3614175 m!4112581))

(declare-fun m!4112603 () Bool)

(assert (=> b!3614175 m!4112603))

(assert (=> b!3614175 m!4112603))

(declare-fun m!4112605 () Bool)

(assert (=> b!3614175 m!4112605))

(declare-fun m!4112607 () Bool)

(assert (=> b!3614173 m!4112607))

(assert (=> b!3614173 m!4112221))

(declare-fun m!4112609 () Bool)

(assert (=> b!3614173 m!4112609))

(assert (=> b!3614173 m!4112583))

(assert (=> b!3614173 m!4112221))

(assert (=> b!3614173 m!4112585))

(assert (=> b!3614173 m!4112583))

(assert (=> b!3614173 m!4112609))

(declare-fun m!4112611 () Bool)

(assert (=> b!3614173 m!4112611))

(assert (=> b!3614173 m!4112609))

(declare-fun m!4112613 () Bool)

(assert (=> b!3614173 m!4112613))

(declare-fun m!4112615 () Bool)

(assert (=> b!3614173 m!4112615))

(assert (=> b!3614173 m!4112609))

(declare-fun m!4112617 () Bool)

(assert (=> b!3614173 m!4112617))

(assert (=> b!3614170 m!4112581))

(declare-fun m!4112619 () Bool)

(assert (=> b!3614170 m!4112619))

(assert (=> b!3614178 m!4112581))

(declare-fun m!4112621 () Bool)

(assert (=> b!3614178 m!4112621))

(assert (=> b!3614178 m!4112221))

(assert (=> b!3614176 m!4112581))

(assert (=> b!3614176 m!4112589))

(assert (=> b!3614176 m!4112589))

(assert (=> b!3614176 m!4112591))

(assert (=> b!3614176 m!4112591))

(declare-fun m!4112623 () Bool)

(assert (=> b!3614176 m!4112623))

(assert (=> b!3613514 d!1063964))

(declare-fun d!1063966 () Bool)

(declare-fun fromListB!1941 (List!38168) BalanceConc!22804)

(assert (=> d!1063966 (= (seqFromList!4203 lt!1245308) (fromListB!1941 lt!1245308))))

(declare-fun bs!570974 () Bool)

(assert (= bs!570974 d!1063966))

(declare-fun m!4112625 () Bool)

(assert (=> bs!570974 m!4112625))

(assert (=> b!3613514 d!1063966))

(declare-fun d!1063968 () Bool)

(declare-fun lt!1245675 () List!38168)

(assert (=> d!1063968 (= (++!9466 lt!1245308 lt!1245675) lt!1245292)))

(declare-fun e!2236857 () List!38168)

(assert (=> d!1063968 (= lt!1245675 e!2236857)))

(declare-fun c!625305 () Bool)

(assert (=> d!1063968 (= c!625305 ((_ is Cons!38044) lt!1245308))))

(assert (=> d!1063968 (>= (size!29013 lt!1245292) (size!29013 lt!1245308))))

(assert (=> d!1063968 (= (getSuffix!1588 lt!1245292 lt!1245308) lt!1245675)))

(declare-fun b!3614179 () Bool)

(assert (=> b!3614179 (= e!2236857 (getSuffix!1588 (tail!5601 lt!1245292) (t!293579 lt!1245308)))))

(declare-fun b!3614180 () Bool)

(assert (=> b!3614180 (= e!2236857 lt!1245292)))

(assert (= (and d!1063968 c!625305) b!3614179))

(assert (= (and d!1063968 (not c!625305)) b!3614180))

(declare-fun m!4112627 () Bool)

(assert (=> d!1063968 m!4112627))

(assert (=> d!1063968 m!4112221))

(assert (=> d!1063968 m!4111771))

(assert (=> b!3614179 m!4112217))

(assert (=> b!3614179 m!4112217))

(declare-fun m!4112629 () Bool)

(assert (=> b!3614179 m!4112629))

(assert (=> b!3613514 d!1063968))

(declare-fun d!1063970 () Bool)

(assert (=> d!1063970 (= (_2!22100 lt!1245300) lt!1245307)))

(declare-fun lt!1245678 () Unit!54354)

(declare-fun choose!21162 (List!38168 List!38168 List!38168 List!38168 List!38168) Unit!54354)

(assert (=> d!1063970 (= lt!1245678 (choose!21162 lt!1245308 (_2!22100 lt!1245300) lt!1245308 lt!1245307 lt!1245292))))

(assert (=> d!1063970 (isPrefix!3013 lt!1245308 lt!1245292)))

(assert (=> d!1063970 (= (lemmaSamePrefixThenSameSuffix!1368 lt!1245308 (_2!22100 lt!1245300) lt!1245308 lt!1245307 lt!1245292) lt!1245678)))

(declare-fun bs!570975 () Bool)

(assert (= bs!570975 d!1063970))

(declare-fun m!4112631 () Bool)

(assert (=> bs!570975 m!4112631))

(assert (=> bs!570975 m!4111793))

(assert (=> b!3613514 d!1063970))

(declare-fun d!1063972 () Bool)

(declare-fun res!1462262 () Bool)

(declare-fun e!2236860 () Bool)

(assert (=> d!1063972 (=> (not res!1462262) (not e!2236860))))

(assert (=> d!1063972 (= res!1462262 (not (isEmpty!22470 (originalCharacters!6364 token!511))))))

(assert (=> d!1063972 (= (inv!51425 token!511) e!2236860)))

(declare-fun b!3614185 () Bool)

(declare-fun res!1462263 () Bool)

(assert (=> b!3614185 (=> (not res!1462263) (not e!2236860))))

(assert (=> b!3614185 (= res!1462263 (= (originalCharacters!6364 token!511) (list!14034 (dynLambda!16459 (toChars!7793 (transformation!5650 (rule!8404 token!511))) (value!181485 token!511)))))))

(declare-fun b!3614186 () Bool)

(assert (=> b!3614186 (= e!2236860 (= (size!29011 token!511) (size!29013 (originalCharacters!6364 token!511))))))

(assert (= (and d!1063972 res!1462262) b!3614185))

(assert (= (and b!3614185 res!1462263) b!3614186))

(declare-fun b_lambda!106917 () Bool)

(assert (=> (not b_lambda!106917) (not b!3614185)))

(assert (=> b!3614185 t!293598))

(declare-fun b_and!263763 () Bool)

(assert (= b_and!263739 (and (=> t!293598 result!252498) b_and!263763)))

(assert (=> b!3614185 t!293600))

(declare-fun b_and!263765 () Bool)

(assert (= b_and!263741 (and (=> t!293600 result!252500) b_and!263765)))

(assert (=> b!3614185 t!293602))

(declare-fun b_and!263767 () Bool)

(assert (= b_and!263743 (and (=> t!293602 result!252502) b_and!263767)))

(assert (=> b!3614185 t!293604))

(declare-fun b_and!263769 () Bool)

(assert (= b_and!263745 (and (=> t!293604 result!252504) b_and!263769)))

(declare-fun m!4112633 () Bool)

(assert (=> d!1063972 m!4112633))

(assert (=> b!3614185 m!4112067))

(assert (=> b!3614185 m!4112067))

(declare-fun m!4112635 () Bool)

(assert (=> b!3614185 m!4112635))

(declare-fun m!4112637 () Bool)

(assert (=> b!3614186 m!4112637))

(assert (=> start!336438 d!1063972))

(declare-fun d!1063974 () Bool)

(assert (=> d!1063974 (not (contains!7364 (usedCharacters!864 (regex!5650 (rule!8404 (_1!22100 lt!1245300)))) lt!1245283))))

(declare-fun lt!1245679 () Unit!54354)

(assert (=> d!1063974 (= lt!1245679 (choose!21154 thiss!23823 rules!3307 rules!3307 (rule!8404 (_1!22100 lt!1245300)) anOtherTypeRule!33 lt!1245283))))

(assert (=> d!1063974 (rulesInvariant!4636 thiss!23823 rules!3307)))

(assert (=> d!1063974 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!356 thiss!23823 rules!3307 rules!3307 (rule!8404 (_1!22100 lt!1245300)) anOtherTypeRule!33 lt!1245283) lt!1245679)))

(declare-fun bs!570976 () Bool)

(assert (= bs!570976 d!1063974))

(assert (=> bs!570976 m!4111667))

(assert (=> bs!570976 m!4111667))

(assert (=> bs!570976 m!4112213))

(declare-fun m!4112639 () Bool)

(assert (=> bs!570976 m!4112639))

(assert (=> bs!570976 m!4111705))

(assert (=> b!3613477 d!1063974))

(declare-fun d!1063976 () Bool)

(assert (=> d!1063976 (= (size!29011 (_1!22100 lt!1245300)) (size!29013 (originalCharacters!6364 (_1!22100 lt!1245300))))))

(declare-fun Unit!54373 () Unit!54354)

(assert (=> d!1063976 (= (lemmaCharactersSize!703 (_1!22100 lt!1245300)) Unit!54373)))

(declare-fun bs!570977 () Bool)

(assert (= bs!570977 d!1063976))

(declare-fun m!4112641 () Bool)

(assert (=> bs!570977 m!4112641))

(assert (=> b!3613496 d!1063976))

(declare-fun d!1063978 () Bool)

(assert (=> d!1063978 (= (apply!9156 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))) lt!1245329) (dynLambda!16465 (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300)))) lt!1245329))))

(declare-fun b_lambda!106919 () Bool)

(assert (=> (not b_lambda!106919) (not d!1063978)))

(declare-fun t!293622 () Bool)

(declare-fun tb!207217 () Bool)

(assert (=> (and b!3613486 (= (toValue!7934 (transformation!5650 anOtherTypeRule!33)) (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) t!293622) tb!207217))

(declare-fun result!252526 () Bool)

(assert (=> tb!207217 (= result!252526 (inv!21 (dynLambda!16465 (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300)))) lt!1245329)))))

(declare-fun m!4112643 () Bool)

(assert (=> tb!207217 m!4112643))

(assert (=> d!1063978 t!293622))

(declare-fun b_and!263771 () Bool)

(assert (= b_and!263755 (and (=> t!293622 result!252526) b_and!263771)))

(declare-fun tb!207219 () Bool)

(declare-fun t!293624 () Bool)

(assert (=> (and b!3613513 (= (toValue!7934 (transformation!5650 (rule!8404 token!511))) (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) t!293624) tb!207219))

(declare-fun result!252528 () Bool)

(assert (= result!252528 result!252526))

(assert (=> d!1063978 t!293624))

(declare-fun b_and!263773 () Bool)

(assert (= b_and!263757 (and (=> t!293624 result!252528) b_and!263773)))

(declare-fun t!293626 () Bool)

(declare-fun tb!207221 () Bool)

(assert (=> (and b!3613520 (= (toValue!7934 (transformation!5650 rule!403)) (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) t!293626) tb!207221))

(declare-fun result!252530 () Bool)

(assert (= result!252530 result!252526))

(assert (=> d!1063978 t!293626))

(declare-fun b_and!263775 () Bool)

(assert (= b_and!263759 (and (=> t!293626 result!252530) b_and!263775)))

(declare-fun t!293628 () Bool)

(declare-fun tb!207223 () Bool)

(assert (=> (and b!3613517 (= (toValue!7934 (transformation!5650 (h!43465 rules!3307))) (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) t!293628) tb!207223))

(declare-fun result!252532 () Bool)

(assert (= result!252532 result!252526))

(assert (=> d!1063978 t!293628))

(declare-fun b_and!263777 () Bool)

(assert (= b_and!263761 (and (=> t!293628 result!252532) b_and!263777)))

(declare-fun m!4112645 () Bool)

(assert (=> d!1063978 m!4112645))

(assert (=> b!3613496 d!1063978))

(declare-fun b!3614287 () Bool)

(declare-fun e!2236921 () Bool)

(assert (=> b!3614287 (= e!2236921 true)))

(declare-fun d!1063980 () Bool)

(assert (=> d!1063980 e!2236921))

(assert (= d!1063980 b!3614287))

(declare-fun order!20795 () Int)

(declare-fun lambda!124086 () Int)

(declare-fun order!20797 () Int)

(declare-fun dynLambda!16466 (Int Int) Int)

(declare-fun dynLambda!16467 (Int Int) Int)

(assert (=> b!3614287 (< (dynLambda!16466 order!20795 (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) (dynLambda!16467 order!20797 lambda!124086))))

(declare-fun order!20799 () Int)

(declare-fun dynLambda!16468 (Int Int) Int)

(assert (=> b!3614287 (< (dynLambda!16468 order!20799 (toChars!7793 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) (dynLambda!16467 order!20797 lambda!124086))))

(assert (=> d!1063980 (= (dynLambda!16465 (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300)))) lt!1245329) (dynLambda!16465 (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300)))) (seqFromList!4203 (originalCharacters!6364 (_1!22100 lt!1245300)))))))

(declare-fun lt!1245703 () Unit!54354)

(declare-fun Forall2of!320 (Int BalanceConc!22804 BalanceConc!22804) Unit!54354)

(assert (=> d!1063980 (= lt!1245703 (Forall2of!320 lambda!124086 lt!1245329 (seqFromList!4203 (originalCharacters!6364 (_1!22100 lt!1245300)))))))

(assert (=> d!1063980 (= (list!14034 lt!1245329) (list!14034 (seqFromList!4203 (originalCharacters!6364 (_1!22100 lt!1245300)))))))

(assert (=> d!1063980 (= (lemmaEqSameImage!841 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))) lt!1245329 (seqFromList!4203 (originalCharacters!6364 (_1!22100 lt!1245300)))) lt!1245703)))

(declare-fun b_lambda!106939 () Bool)

(assert (=> (not b_lambda!106939) (not d!1063980)))

(assert (=> d!1063980 t!293622))

(declare-fun b_and!263839 () Bool)

(assert (= b_and!263771 (and (=> t!293622 result!252526) b_and!263839)))

(assert (=> d!1063980 t!293624))

(declare-fun b_and!263841 () Bool)

(assert (= b_and!263773 (and (=> t!293624 result!252528) b_and!263841)))

(assert (=> d!1063980 t!293626))

(declare-fun b_and!263843 () Bool)

(assert (= b_and!263775 (and (=> t!293626 result!252530) b_and!263843)))

(assert (=> d!1063980 t!293628))

(declare-fun b_and!263845 () Bool)

(assert (= b_and!263777 (and (=> t!293628 result!252532) b_and!263845)))

(declare-fun b_lambda!106941 () Bool)

(assert (=> (not b_lambda!106941) (not d!1063980)))

(declare-fun t!293674 () Bool)

(declare-fun tb!207269 () Bool)

(assert (=> (and b!3613486 (= (toValue!7934 (transformation!5650 anOtherTypeRule!33)) (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) t!293674) tb!207269))

(declare-fun result!252584 () Bool)

(assert (=> tb!207269 (= result!252584 (inv!21 (dynLambda!16465 (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300)))) (seqFromList!4203 (originalCharacters!6364 (_1!22100 lt!1245300))))))))

(declare-fun m!4112753 () Bool)

(assert (=> tb!207269 m!4112753))

(assert (=> d!1063980 t!293674))

(declare-fun b_and!263847 () Bool)

(assert (= b_and!263839 (and (=> t!293674 result!252584) b_and!263847)))

(declare-fun t!293676 () Bool)

(declare-fun tb!207271 () Bool)

(assert (=> (and b!3613513 (= (toValue!7934 (transformation!5650 (rule!8404 token!511))) (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) t!293676) tb!207271))

(declare-fun result!252586 () Bool)

(assert (= result!252586 result!252584))

(assert (=> d!1063980 t!293676))

(declare-fun b_and!263849 () Bool)

(assert (= b_and!263841 (and (=> t!293676 result!252586) b_and!263849)))

(declare-fun t!293678 () Bool)

(declare-fun tb!207273 () Bool)

(assert (=> (and b!3613520 (= (toValue!7934 (transformation!5650 rule!403)) (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) t!293678) tb!207273))

(declare-fun result!252588 () Bool)

(assert (= result!252588 result!252584))

(assert (=> d!1063980 t!293678))

(declare-fun b_and!263851 () Bool)

(assert (= b_and!263843 (and (=> t!293678 result!252588) b_and!263851)))

(declare-fun tb!207275 () Bool)

(declare-fun t!293680 () Bool)

(assert (=> (and b!3613517 (= (toValue!7934 (transformation!5650 (h!43465 rules!3307))) (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) t!293680) tb!207275))

(declare-fun result!252590 () Bool)

(assert (= result!252590 result!252584))

(assert (=> d!1063980 t!293680))

(declare-fun b_and!263853 () Bool)

(assert (= b_and!263845 (and (=> t!293680 result!252590) b_and!263853)))

(assert (=> d!1063980 m!4111675))

(declare-fun m!4112755 () Bool)

(assert (=> d!1063980 m!4112755))

(assert (=> d!1063980 m!4111675))

(declare-fun m!4112757 () Bool)

(assert (=> d!1063980 m!4112757))

(assert (=> d!1063980 m!4112645))

(assert (=> d!1063980 m!4111777))

(assert (=> d!1063980 m!4111675))

(declare-fun m!4112759 () Bool)

(assert (=> d!1063980 m!4112759))

(assert (=> b!3613496 d!1063980))

(declare-fun d!1064024 () Bool)

(declare-fun lt!1245704 () Int)

(assert (=> d!1064024 (= lt!1245704 (size!29013 (list!14034 lt!1245329)))))

(assert (=> d!1064024 (= lt!1245704 (size!29015 (c!625157 lt!1245329)))))

(assert (=> d!1064024 (= (size!29012 lt!1245329) lt!1245704)))

(declare-fun bs!570986 () Bool)

(assert (= bs!570986 d!1064024))

(assert (=> bs!570986 m!4111777))

(assert (=> bs!570986 m!4111777))

(declare-fun m!4112761 () Bool)

(assert (=> bs!570986 m!4112761))

(declare-fun m!4112763 () Bool)

(assert (=> bs!570986 m!4112763))

(assert (=> b!3613496 d!1064024))

(declare-fun b!3614292 () Bool)

(declare-fun e!2236925 () Bool)

(assert (=> b!3614292 (= e!2236925 true)))

(declare-fun d!1064026 () Bool)

(assert (=> d!1064026 e!2236925))

(assert (= d!1064026 b!3614292))

(declare-fun order!20801 () Int)

(declare-fun lambda!124089 () Int)

(declare-fun dynLambda!16469 (Int Int) Int)

(assert (=> b!3614292 (< (dynLambda!16466 order!20795 (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) (dynLambda!16469 order!20801 lambda!124089))))

(assert (=> b!3614292 (< (dynLambda!16468 order!20799 (toChars!7793 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) (dynLambda!16469 order!20801 lambda!124089))))

(assert (=> d!1064026 (= (list!14034 (dynLambda!16459 (toChars!7793 (transformation!5650 (rule!8404 (_1!22100 lt!1245300)))) (dynLambda!16465 (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300)))) lt!1245329))) (list!14034 lt!1245329))))

(declare-fun lt!1245707 () Unit!54354)

(declare-fun ForallOf!662 (Int BalanceConc!22804) Unit!54354)

(assert (=> d!1064026 (= lt!1245707 (ForallOf!662 lambda!124089 lt!1245329))))

(assert (=> d!1064026 (= (lemmaSemiInverse!1407 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))) lt!1245329) lt!1245707)))

(declare-fun b_lambda!106943 () Bool)

(assert (=> (not b_lambda!106943) (not d!1064026)))

(declare-fun tb!207277 () Bool)

(declare-fun t!293682 () Bool)

(assert (=> (and b!3613486 (= (toChars!7793 (transformation!5650 anOtherTypeRule!33)) (toChars!7793 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) t!293682) tb!207277))

(declare-fun b!3614293 () Bool)

(declare-fun tp!1104468 () Bool)

(declare-fun e!2236926 () Bool)

(assert (=> b!3614293 (= e!2236926 (and (inv!51426 (c!625157 (dynLambda!16459 (toChars!7793 (transformation!5650 (rule!8404 (_1!22100 lt!1245300)))) (dynLambda!16465 (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300)))) lt!1245329)))) tp!1104468))))

(declare-fun result!252592 () Bool)

(assert (=> tb!207277 (= result!252592 (and (inv!51427 (dynLambda!16459 (toChars!7793 (transformation!5650 (rule!8404 (_1!22100 lt!1245300)))) (dynLambda!16465 (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300)))) lt!1245329))) e!2236926))))

(assert (= tb!207277 b!3614293))

(declare-fun m!4112765 () Bool)

(assert (=> b!3614293 m!4112765))

(declare-fun m!4112767 () Bool)

(assert (=> tb!207277 m!4112767))

(assert (=> d!1064026 t!293682))

(declare-fun b_and!263855 () Bool)

(assert (= b_and!263763 (and (=> t!293682 result!252592) b_and!263855)))

(declare-fun tb!207279 () Bool)

(declare-fun t!293684 () Bool)

(assert (=> (and b!3613513 (= (toChars!7793 (transformation!5650 (rule!8404 token!511))) (toChars!7793 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) t!293684) tb!207279))

(declare-fun result!252594 () Bool)

(assert (= result!252594 result!252592))

(assert (=> d!1064026 t!293684))

(declare-fun b_and!263857 () Bool)

(assert (= b_and!263765 (and (=> t!293684 result!252594) b_and!263857)))

(declare-fun tb!207281 () Bool)

(declare-fun t!293686 () Bool)

(assert (=> (and b!3613520 (= (toChars!7793 (transformation!5650 rule!403)) (toChars!7793 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) t!293686) tb!207281))

(declare-fun result!252596 () Bool)

(assert (= result!252596 result!252592))

(assert (=> d!1064026 t!293686))

(declare-fun b_and!263859 () Bool)

(assert (= b_and!263767 (and (=> t!293686 result!252596) b_and!263859)))

(declare-fun tb!207283 () Bool)

(declare-fun t!293688 () Bool)

(assert (=> (and b!3613517 (= (toChars!7793 (transformation!5650 (h!43465 rules!3307))) (toChars!7793 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) t!293688) tb!207283))

(declare-fun result!252598 () Bool)

(assert (= result!252598 result!252592))

(assert (=> d!1064026 t!293688))

(declare-fun b_and!263861 () Bool)

(assert (= b_and!263769 (and (=> t!293688 result!252598) b_and!263861)))

(declare-fun b_lambda!106945 () Bool)

(assert (=> (not b_lambda!106945) (not d!1064026)))

(assert (=> d!1064026 t!293622))

(declare-fun b_and!263863 () Bool)

(assert (= b_and!263847 (and (=> t!293622 result!252526) b_and!263863)))

(assert (=> d!1064026 t!293624))

(declare-fun b_and!263865 () Bool)

(assert (= b_and!263849 (and (=> t!293624 result!252528) b_and!263865)))

(assert (=> d!1064026 t!293626))

(declare-fun b_and!263867 () Bool)

(assert (= b_and!263851 (and (=> t!293626 result!252530) b_and!263867)))

(assert (=> d!1064026 t!293628))

(declare-fun b_and!263869 () Bool)

(assert (= b_and!263853 (and (=> t!293628 result!252532) b_and!263869)))

(assert (=> d!1064026 m!4112645))

(declare-fun m!4112769 () Bool)

(assert (=> d!1064026 m!4112769))

(declare-fun m!4112771 () Bool)

(assert (=> d!1064026 m!4112771))

(assert (=> d!1064026 m!4111777))

(assert (=> d!1064026 m!4112645))

(assert (=> d!1064026 m!4112769))

(declare-fun m!4112773 () Bool)

(assert (=> d!1064026 m!4112773))

(assert (=> b!3613496 d!1064026))

(declare-fun d!1064028 () Bool)

(assert (=> d!1064028 (= (seqFromList!4203 (originalCharacters!6364 (_1!22100 lt!1245300))) (fromListB!1941 (originalCharacters!6364 (_1!22100 lt!1245300))))))

(declare-fun bs!570987 () Bool)

(assert (= bs!570987 d!1064028))

(declare-fun m!4112775 () Bool)

(assert (=> bs!570987 m!4112775))

(assert (=> b!3613496 d!1064028))

(declare-fun d!1064030 () Bool)

(declare-fun lt!1245708 () Bool)

(assert (=> d!1064030 (= lt!1245708 (select (content!5442 (usedCharacters!864 (regex!5650 anOtherTypeRule!33))) lt!1245283))))

(declare-fun e!2236927 () Bool)

(assert (=> d!1064030 (= lt!1245708 e!2236927)))

(declare-fun res!1462287 () Bool)

(assert (=> d!1064030 (=> (not res!1462287) (not e!2236927))))

(assert (=> d!1064030 (= res!1462287 ((_ is Cons!38044) (usedCharacters!864 (regex!5650 anOtherTypeRule!33))))))

(assert (=> d!1064030 (= (contains!7364 (usedCharacters!864 (regex!5650 anOtherTypeRule!33)) lt!1245283) lt!1245708)))

(declare-fun b!3614294 () Bool)

(declare-fun e!2236928 () Bool)

(assert (=> b!3614294 (= e!2236927 e!2236928)))

(declare-fun res!1462288 () Bool)

(assert (=> b!3614294 (=> res!1462288 e!2236928)))

(assert (=> b!3614294 (= res!1462288 (= (h!43464 (usedCharacters!864 (regex!5650 anOtherTypeRule!33))) lt!1245283))))

(declare-fun b!3614295 () Bool)

(assert (=> b!3614295 (= e!2236928 (contains!7364 (t!293579 (usedCharacters!864 (regex!5650 anOtherTypeRule!33))) lt!1245283))))

(assert (= (and d!1064030 res!1462287) b!3614294))

(assert (= (and b!3614294 (not res!1462288)) b!3614295))

(assert (=> d!1064030 m!4111661))

(declare-fun m!4112777 () Bool)

(assert (=> d!1064030 m!4112777))

(declare-fun m!4112779 () Bool)

(assert (=> d!1064030 m!4112779))

(declare-fun m!4112781 () Bool)

(assert (=> b!3614295 m!4112781))

(assert (=> b!3613515 d!1064030))

(declare-fun b!3614296 () Bool)

(declare-fun e!2236931 () List!38168)

(declare-fun call!261356 () List!38168)

(assert (=> b!3614296 (= e!2236931 call!261356)))

(declare-fun bm!261350 () Bool)

(declare-fun call!261357 () List!38168)

(declare-fun call!261358 () List!38168)

(declare-fun c!625316 () Bool)

(assert (=> bm!261350 (= call!261356 (++!9466 (ite c!625316 call!261357 call!261358) (ite c!625316 call!261358 call!261357)))))

(declare-fun b!3614297 () Bool)

(declare-fun e!2236930 () List!38168)

(assert (=> b!3614297 (= e!2236930 e!2236931)))

(assert (=> b!3614297 (= c!625316 ((_ is Union!10409) (regex!5650 anOtherTypeRule!33)))))

(declare-fun b!3614298 () Bool)

(assert (=> b!3614298 (= e!2236931 call!261356)))

(declare-fun c!625317 () Bool)

(declare-fun call!261355 () List!38168)

(declare-fun bm!261351 () Bool)

(assert (=> bm!261351 (= call!261355 (usedCharacters!864 (ite c!625317 (reg!10738 (regex!5650 anOtherTypeRule!33)) (ite c!625316 (regOne!21331 (regex!5650 anOtherTypeRule!33)) (regTwo!21330 (regex!5650 anOtherTypeRule!33))))))))

(declare-fun b!3614299 () Bool)

(assert (=> b!3614299 (= e!2236930 call!261355)))

(declare-fun d!1064032 () Bool)

(declare-fun c!625318 () Bool)

(assert (=> d!1064032 (= c!625318 (or ((_ is EmptyExpr!10409) (regex!5650 anOtherTypeRule!33)) ((_ is EmptyLang!10409) (regex!5650 anOtherTypeRule!33))))))

(declare-fun e!2236929 () List!38168)

(assert (=> d!1064032 (= (usedCharacters!864 (regex!5650 anOtherTypeRule!33)) e!2236929)))

(declare-fun b!3614300 () Bool)

(assert (=> b!3614300 (= e!2236929 Nil!38044)))

(declare-fun b!3614301 () Bool)

(declare-fun e!2236932 () List!38168)

(assert (=> b!3614301 (= e!2236929 e!2236932)))

(declare-fun c!625319 () Bool)

(assert (=> b!3614301 (= c!625319 ((_ is ElementMatch!10409) (regex!5650 anOtherTypeRule!33)))))

(declare-fun b!3614302 () Bool)

(assert (=> b!3614302 (= c!625317 ((_ is Star!10409) (regex!5650 anOtherTypeRule!33)))))

(assert (=> b!3614302 (= e!2236932 e!2236930)))

(declare-fun bm!261352 () Bool)

(assert (=> bm!261352 (= call!261358 (usedCharacters!864 (ite c!625316 (regTwo!21331 (regex!5650 anOtherTypeRule!33)) (regOne!21330 (regex!5650 anOtherTypeRule!33)))))))

(declare-fun b!3614303 () Bool)

(assert (=> b!3614303 (= e!2236932 (Cons!38044 (c!625156 (regex!5650 anOtherTypeRule!33)) Nil!38044))))

(declare-fun bm!261353 () Bool)

(assert (=> bm!261353 (= call!261357 call!261355)))

(assert (= (and d!1064032 c!625318) b!3614300))

(assert (= (and d!1064032 (not c!625318)) b!3614301))

(assert (= (and b!3614301 c!625319) b!3614303))

(assert (= (and b!3614301 (not c!625319)) b!3614302))

(assert (= (and b!3614302 c!625317) b!3614299))

(assert (= (and b!3614302 (not c!625317)) b!3614297))

(assert (= (and b!3614297 c!625316) b!3614296))

(assert (= (and b!3614297 (not c!625316)) b!3614298))

(assert (= (or b!3614296 b!3614298) bm!261353))

(assert (= (or b!3614296 b!3614298) bm!261352))

(assert (= (or b!3614296 b!3614298) bm!261350))

(assert (= (or b!3614299 bm!261353) bm!261351))

(declare-fun m!4112783 () Bool)

(assert (=> bm!261350 m!4112783))

(declare-fun m!4112785 () Bool)

(assert (=> bm!261351 m!4112785))

(declare-fun m!4112787 () Bool)

(assert (=> bm!261352 m!4112787))

(assert (=> b!3613515 d!1064032))

(declare-fun b!3614308 () Bool)

(declare-fun e!2236935 () Bool)

(declare-fun tp!1104471 () Bool)

(assert (=> b!3614308 (= e!2236935 (and tp_is_empty!17901 tp!1104471))))

(assert (=> b!3613503 (= tp!1104406 e!2236935)))

(assert (= (and b!3613503 ((_ is Cons!38044) (t!293579 suffix!1395))) b!3614308))

(declare-fun b!3614319 () Bool)

(declare-fun b_free!93965 () Bool)

(declare-fun b_next!94669 () Bool)

(assert (=> b!3614319 (= b_free!93965 (not b_next!94669))))

(declare-fun t!293690 () Bool)

(declare-fun tb!207285 () Bool)

(assert (=> (and b!3614319 (= (toValue!7934 (transformation!5650 (h!43465 (t!293580 rules!3307)))) (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) t!293690) tb!207285))

(declare-fun result!252604 () Bool)

(assert (= result!252604 result!252526))

(assert (=> d!1064026 t!293690))

(assert (=> d!1063980 t!293690))

(assert (=> d!1063978 t!293690))

(declare-fun t!293692 () Bool)

(declare-fun tb!207287 () Bool)

(assert (=> (and b!3614319 (= (toValue!7934 (transformation!5650 (h!43465 (t!293580 rules!3307)))) (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) t!293692) tb!207287))

(declare-fun result!252606 () Bool)

(assert (= result!252606 result!252584))

(assert (=> d!1063980 t!293692))

(declare-fun tb!207289 () Bool)

(declare-fun t!293694 () Bool)

(assert (=> (and b!3614319 (= (toValue!7934 (transformation!5650 (h!43465 (t!293580 rules!3307)))) (toValue!7934 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) t!293694) tb!207289))

(declare-fun result!252608 () Bool)

(assert (= result!252608 result!252516))

(assert (=> d!1063958 t!293694))

(declare-fun tp!1104480 () Bool)

(declare-fun b_and!263871 () Bool)

(assert (=> b!3614319 (= tp!1104480 (and (=> t!293694 result!252608) (=> t!293690 result!252604) (=> t!293692 result!252606) b_and!263871))))

(declare-fun b_free!93967 () Bool)

(declare-fun b_next!94671 () Bool)

(assert (=> b!3614319 (= b_free!93967 (not b_next!94671))))

(declare-fun tb!207291 () Bool)

(declare-fun t!293696 () Bool)

(assert (=> (and b!3614319 (= (toChars!7793 (transformation!5650 (h!43465 (t!293580 rules!3307)))) (toChars!7793 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) t!293696) tb!207291))

(declare-fun result!252610 () Bool)

(assert (= result!252610 result!252488))

(assert (=> d!1063706 t!293696))

(declare-fun tb!207293 () Bool)

(declare-fun t!293698 () Bool)

(assert (=> (and b!3614319 (= (toChars!7793 (transformation!5650 (h!43465 (t!293580 rules!3307)))) (toChars!7793 (transformation!5650 (rule!8404 token!511)))) t!293698) tb!207293))

(declare-fun result!252612 () Bool)

(assert (= result!252612 result!252498))

(assert (=> d!1063758 t!293698))

(assert (=> b!3614185 t!293698))

(declare-fun t!293700 () Bool)

(declare-fun tb!207295 () Bool)

(assert (=> (and b!3614319 (= (toChars!7793 (transformation!5650 (h!43465 (t!293580 rules!3307)))) (toChars!7793 (transformation!5650 (rule!8404 (_1!22100 lt!1245300))))) t!293700) tb!207295))

(declare-fun result!252614 () Bool)

(assert (= result!252614 result!252592))

(assert (=> d!1064026 t!293700))

(declare-fun b_and!263873 () Bool)

(declare-fun tp!1104483 () Bool)

(assert (=> b!3614319 (= tp!1104483 (and (=> t!293696 result!252610) (=> t!293698 result!252612) (=> t!293700 result!252614) b_and!263873))))

(declare-fun e!2236946 () Bool)

(assert (=> b!3614319 (= e!2236946 (and tp!1104480 tp!1104483))))

(declare-fun tp!1104481 () Bool)

(declare-fun e!2236947 () Bool)

(declare-fun b!3614318 () Bool)

(assert (=> b!3614318 (= e!2236947 (and tp!1104481 (inv!51421 (tag!6360 (h!43465 (t!293580 rules!3307)))) (inv!51424 (transformation!5650 (h!43465 (t!293580 rules!3307)))) e!2236946))))

(declare-fun b!3614317 () Bool)

(declare-fun e!2236945 () Bool)

(declare-fun tp!1104482 () Bool)

(assert (=> b!3614317 (= e!2236945 (and e!2236947 tp!1104482))))

(assert (=> b!3613493 (= tp!1104407 e!2236945)))

(assert (= b!3614318 b!3614319))

(assert (= b!3614317 b!3614318))

(assert (= (and b!3613493 ((_ is Cons!38045) (t!293580 rules!3307))) b!3614317))

(declare-fun m!4112789 () Bool)

(assert (=> b!3614318 m!4112789))

(declare-fun m!4112791 () Bool)

(assert (=> b!3614318 m!4112791))

(declare-fun b!3614320 () Bool)

(declare-fun e!2236948 () Bool)

(declare-fun tp!1104484 () Bool)

(assert (=> b!3614320 (= e!2236948 (and tp_is_empty!17901 tp!1104484))))

(assert (=> b!3613494 (= tp!1104412 e!2236948)))

(assert (= (and b!3613494 ((_ is Cons!38044) (originalCharacters!6364 token!511))) b!3614320))

(declare-fun e!2236951 () Bool)

(assert (=> b!3613480 (= tp!1104400 e!2236951)))

(declare-fun b!3614334 () Bool)

(declare-fun tp!1104497 () Bool)

(declare-fun tp!1104498 () Bool)

(assert (=> b!3614334 (= e!2236951 (and tp!1104497 tp!1104498))))

(declare-fun b!3614332 () Bool)

(declare-fun tp!1104495 () Bool)

(declare-fun tp!1104499 () Bool)

(assert (=> b!3614332 (= e!2236951 (and tp!1104495 tp!1104499))))

(declare-fun b!3614331 () Bool)

(assert (=> b!3614331 (= e!2236951 tp_is_empty!17901)))

(declare-fun b!3614333 () Bool)

(declare-fun tp!1104496 () Bool)

(assert (=> b!3614333 (= e!2236951 tp!1104496)))

(assert (= (and b!3613480 ((_ is ElementMatch!10409) (regex!5650 (rule!8404 token!511)))) b!3614331))

(assert (= (and b!3613480 ((_ is Concat!16290) (regex!5650 (rule!8404 token!511)))) b!3614332))

(assert (= (and b!3613480 ((_ is Star!10409) (regex!5650 (rule!8404 token!511)))) b!3614333))

(assert (= (and b!3613480 ((_ is Union!10409) (regex!5650 (rule!8404 token!511)))) b!3614334))

(declare-fun e!2236952 () Bool)

(assert (=> b!3613504 (= tp!1104411 e!2236952)))

(declare-fun b!3614338 () Bool)

(declare-fun tp!1104502 () Bool)

(declare-fun tp!1104503 () Bool)

(assert (=> b!3614338 (= e!2236952 (and tp!1104502 tp!1104503))))

(declare-fun b!3614336 () Bool)

(declare-fun tp!1104500 () Bool)

(declare-fun tp!1104504 () Bool)

(assert (=> b!3614336 (= e!2236952 (and tp!1104500 tp!1104504))))

(declare-fun b!3614335 () Bool)

(assert (=> b!3614335 (= e!2236952 tp_is_empty!17901)))

(declare-fun b!3614337 () Bool)

(declare-fun tp!1104501 () Bool)

(assert (=> b!3614337 (= e!2236952 tp!1104501)))

(assert (= (and b!3613504 ((_ is ElementMatch!10409) (regex!5650 (h!43465 rules!3307)))) b!3614335))

(assert (= (and b!3613504 ((_ is Concat!16290) (regex!5650 (h!43465 rules!3307)))) b!3614336))

(assert (= (and b!3613504 ((_ is Star!10409) (regex!5650 (h!43465 rules!3307)))) b!3614337))

(assert (= (and b!3613504 ((_ is Union!10409) (regex!5650 (h!43465 rules!3307)))) b!3614338))

(declare-fun e!2236953 () Bool)

(assert (=> b!3613500 (= tp!1104404 e!2236953)))

(declare-fun b!3614342 () Bool)

(declare-fun tp!1104507 () Bool)

(declare-fun tp!1104508 () Bool)

(assert (=> b!3614342 (= e!2236953 (and tp!1104507 tp!1104508))))

(declare-fun b!3614340 () Bool)

(declare-fun tp!1104505 () Bool)

(declare-fun tp!1104509 () Bool)

(assert (=> b!3614340 (= e!2236953 (and tp!1104505 tp!1104509))))

(declare-fun b!3614339 () Bool)

(assert (=> b!3614339 (= e!2236953 tp_is_empty!17901)))

(declare-fun b!3614341 () Bool)

(declare-fun tp!1104506 () Bool)

(assert (=> b!3614341 (= e!2236953 tp!1104506)))

(assert (= (and b!3613500 ((_ is ElementMatch!10409) (regex!5650 anOtherTypeRule!33))) b!3614339))

(assert (= (and b!3613500 ((_ is Concat!16290) (regex!5650 anOtherTypeRule!33))) b!3614340))

(assert (= (and b!3613500 ((_ is Star!10409) (regex!5650 anOtherTypeRule!33))) b!3614341))

(assert (= (and b!3613500 ((_ is Union!10409) (regex!5650 anOtherTypeRule!33))) b!3614342))

(declare-fun e!2236954 () Bool)

(assert (=> b!3613505 (= tp!1104409 e!2236954)))

(declare-fun b!3614346 () Bool)

(declare-fun tp!1104512 () Bool)

(declare-fun tp!1104513 () Bool)

(assert (=> b!3614346 (= e!2236954 (and tp!1104512 tp!1104513))))

(declare-fun b!3614344 () Bool)

(declare-fun tp!1104510 () Bool)

(declare-fun tp!1104514 () Bool)

(assert (=> b!3614344 (= e!2236954 (and tp!1104510 tp!1104514))))

(declare-fun b!3614343 () Bool)

(assert (=> b!3614343 (= e!2236954 tp_is_empty!17901)))

(declare-fun b!3614345 () Bool)

(declare-fun tp!1104511 () Bool)

(assert (=> b!3614345 (= e!2236954 tp!1104511)))

(assert (= (and b!3613505 ((_ is ElementMatch!10409) (regex!5650 rule!403))) b!3614343))

(assert (= (and b!3613505 ((_ is Concat!16290) (regex!5650 rule!403))) b!3614344))

(assert (= (and b!3613505 ((_ is Star!10409) (regex!5650 rule!403))) b!3614345))

(assert (= (and b!3613505 ((_ is Union!10409) (regex!5650 rule!403))) b!3614346))

(declare-fun b_lambda!106947 () Bool)

(assert (= b_lambda!106917 (or (and b!3613517 b_free!93959 (= (toChars!7793 (transformation!5650 (h!43465 rules!3307))) (toChars!7793 (transformation!5650 (rule!8404 token!511))))) (and b!3613513 b_free!93951) (and b!3614319 b_free!93967 (= (toChars!7793 (transformation!5650 (h!43465 (t!293580 rules!3307)))) (toChars!7793 (transformation!5650 (rule!8404 token!511))))) (and b!3613520 b_free!93955 (= (toChars!7793 (transformation!5650 rule!403)) (toChars!7793 (transformation!5650 (rule!8404 token!511))))) (and b!3613486 b_free!93947 (= (toChars!7793 (transformation!5650 anOtherTypeRule!33)) (toChars!7793 (transformation!5650 (rule!8404 token!511))))) b_lambda!106947)))

(declare-fun b_lambda!106949 () Bool)

(assert (= b_lambda!106911 (or (and b!3613517 b_free!93959 (= (toChars!7793 (transformation!5650 (h!43465 rules!3307))) (toChars!7793 (transformation!5650 (rule!8404 token!511))))) (and b!3613513 b_free!93951) (and b!3614319 b_free!93967 (= (toChars!7793 (transformation!5650 (h!43465 (t!293580 rules!3307)))) (toChars!7793 (transformation!5650 (rule!8404 token!511))))) (and b!3613520 b_free!93955 (= (toChars!7793 (transformation!5650 rule!403)) (toChars!7793 (transformation!5650 (rule!8404 token!511))))) (and b!3613486 b_free!93947 (= (toChars!7793 (transformation!5650 anOtherTypeRule!33)) (toChars!7793 (transformation!5650 (rule!8404 token!511))))) b_lambda!106949)))

(check-sat (not b!3613905) (not d!1063796) (not d!1063962) (not b!3613779) (not d!1063726) (not b!3614112) (not b!3613911) (not b!3613877) (not b_lambda!106945) (not b!3614146) (not d!1063778) (not b!3613920) (not b!3613595) (not tb!207217) b_and!263871 (not bm!261325) (not b!3613593) (not b!3613919) (not b_lambda!106909) (not d!1063702) (not b!3614176) (not tb!207193) (not b!3614317) (not bm!261308) (not b!3614332) (not b_next!94669) (not d!1063780) (not b!3614341) b_and!263859 (not b!3614131) (not b!3613895) (not b!3614126) (not d!1063944) (not b!3614186) (not b!3613992) (not d!1063794) (not b!3613594) (not d!1063824) (not b!3613770) (not b!3614308) (not b!3614293) (not b!3613913) (not b!3614333) (not b!3614338) (not bm!261322) (not d!1064024) (not d!1063774) (not b!3614130) (not b!3614170) (not b!3614051) (not b!3614178) (not b!3613620) (not b!3614342) (not tb!207277) (not b_lambda!106939) (not b!3614173) (not b!3613774) (not b!3614344) (not b!3613538) (not bm!261318) (not b_next!94651) (not b!3614175) (not b!3613884) (not b!3613632) (not b!3614320) (not d!1063950) (not d!1063904) (not d!1063890) (not b!3614099) (not b!3613903) (not d!1063914) (not b!3613625) (not b!3613915) (not d!1063798) (not d!1063788) (not bm!261323) (not d!1063722) (not d!1063964) (not b!3613908) (not b!3613679) (not b!3613912) b_and!263869 (not b!3613769) (not b!3613910) (not b!3614185) (not bm!261350) (not b!3613894) (not b_next!94653) (not b!3613621) (not d!1063936) (not d!1063844) (not b!3614179) b_and!263873 (not b!3613768) (not b!3613902) (not b_next!94657) (not b!3614174) (not d!1063956) (not d!1063800) (not d!1063712) (not b!3613797) (not b!3613591) (not bm!261321) (not bm!261299) (not b!3613624) (not bm!261348) b_and!263855 (not b!3613544) (not d!1063932) (not d!1063968) (not b!3614104) (not b!3613993) (not d!1063700) (not bm!261317) (not d!1063716) (not b!3614345) (not b!3613899) (not b_lambda!106949) (not b!3613991) (not b!3613852) (not bm!261351) (not b!3613918) (not d!1063946) (not b!3613896) (not b!3613851) b_and!263865 (not d!1063832) (not b!3614140) tp_is_empty!17901 (not b!3613771) (not b!3614127) (not d!1063718) (not d!1063976) (not b!3614337) (not d!1063758) (not d!1063848) (not b!3614334) (not d!1064030) (not b!3614340) (not d!1063732) (not b!3614025) (not b!3613602) (not b_lambda!106915) (not b!3613633) (not bm!261319) (not d!1063810) (not d!1063838) (not b_lambda!106947) (not d!1064026) (not d!1063728) (not d!1063830) (not b_next!94663) (not b!3613907) (not b!3614103) (not b_next!94649) (not bm!261352) (not b!3613832) (not b!3614124) (not d!1063952) (not b!3613830) (not b!3614097) (not b!3613866) (not d!1063954) (not tb!207185) (not b!3613914) (not b!3614024) (not b!3613683) (not d!1063966) (not b!3614098) (not b!3614132) (not d!1063760) (not b_lambda!106919) (not d!1063706) (not b!3613766) (not b_next!94661) (not b!3614318) (not b!3614336) (not b_next!94659) (not d!1063836) (not d!1063734) (not b!3614171) (not d!1063756) (not d!1063814) (not b!3613906) (not b!3613618) (not b!3613623) (not d!1063972) (not d!1063910) (not b!3614128) (not b!3613603) (not b!3613916) b_and!263867 (not d!1063970) (not b_next!94671) (not b_next!94655) (not b!3613772) (not bm!261298) (not d!1063826) (not b!3613773) (not d!1063698) (not b!3614151) b_and!263863 (not d!1063980) (not b!3614139) (not b_lambda!106941) (not d!1063934) (not b!3614177) (not b!3614346) (not tb!207209) (not b!3614026) (not b!3614052) b_and!263861 (not b!3614295) (not b!3614111) (not d!1063974) b_and!263857 (not d!1064028) (not b!3613897) (not tb!207269) (not b!3613537) (not d!1063802) (not b_lambda!106943))
(check-sat b_and!263871 (not b_next!94669) b_and!263859 (not b_next!94651) b_and!263869 (not b_next!94653) b_and!263855 b_and!263865 b_and!263867 b_and!263863 b_and!263861 b_and!263857 b_and!263873 (not b_next!94657) (not b_next!94649) (not b_next!94663) (not b_next!94659) (not b_next!94661) (not b_next!94671) (not b_next!94655))
