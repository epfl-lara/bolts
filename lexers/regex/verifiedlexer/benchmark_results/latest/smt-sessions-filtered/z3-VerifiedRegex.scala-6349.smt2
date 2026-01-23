; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!327522 () Bool)

(assert start!327522)

(declare-fun b!3524462 () Bool)

(declare-fun b_free!90785 () Bool)

(declare-fun b_next!91489 () Bool)

(assert (=> b!3524462 (= b_free!90785 (not b_next!91489))))

(declare-fun tp!1087391 () Bool)

(declare-fun b_and!251247 () Bool)

(assert (=> b!3524462 (= tp!1087391 b_and!251247)))

(declare-fun b_free!90787 () Bool)

(declare-fun b_next!91491 () Bool)

(assert (=> b!3524462 (= b_free!90787 (not b_next!91491))))

(declare-fun tp!1087394 () Bool)

(declare-fun b_and!251249 () Bool)

(assert (=> b!3524462 (= tp!1087394 b_and!251249)))

(declare-fun b!3524474 () Bool)

(declare-fun b_free!90789 () Bool)

(declare-fun b_next!91493 () Bool)

(assert (=> b!3524474 (= b_free!90789 (not b_next!91493))))

(declare-fun tp!1087398 () Bool)

(declare-fun b_and!251251 () Bool)

(assert (=> b!3524474 (= tp!1087398 b_and!251251)))

(declare-fun b_free!90791 () Bool)

(declare-fun b_next!91495 () Bool)

(assert (=> b!3524474 (= b_free!90791 (not b_next!91495))))

(declare-fun tp!1087402 () Bool)

(declare-fun b_and!251253 () Bool)

(assert (=> b!3524474 (= tp!1087402 b_and!251253)))

(declare-fun b!3524448 () Bool)

(declare-fun b_free!90793 () Bool)

(declare-fun b_next!91497 () Bool)

(assert (=> b!3524448 (= b_free!90793 (not b_next!91497))))

(declare-fun tp!1087397 () Bool)

(declare-fun b_and!251255 () Bool)

(assert (=> b!3524448 (= tp!1087397 b_and!251255)))

(declare-fun b_free!90795 () Bool)

(declare-fun b_next!91499 () Bool)

(assert (=> b!3524448 (= b_free!90795 (not b_next!91499))))

(declare-fun tp!1087392 () Bool)

(declare-fun b_and!251257 () Bool)

(assert (=> b!3524448 (= tp!1087392 b_and!251257)))

(declare-fun bs!565629 () Bool)

(declare-fun b!3524457 () Bool)

(declare-fun b!3524437 () Bool)

(assert (= bs!565629 (and b!3524457 b!3524437)))

(declare-fun lambda!122819 () Int)

(declare-fun lambda!122818 () Int)

(assert (=> bs!565629 (not (= lambda!122819 lambda!122818))))

(declare-fun b!3524486 () Bool)

(declare-fun e!2181544 () Bool)

(assert (=> b!3524486 (= e!2181544 true)))

(declare-fun b!3524485 () Bool)

(declare-fun e!2181543 () Bool)

(assert (=> b!3524485 (= e!2181543 e!2181544)))

(declare-fun b!3524484 () Bool)

(declare-fun e!2181542 () Bool)

(assert (=> b!3524484 (= e!2181542 e!2181543)))

(assert (=> b!3524457 e!2181542))

(assert (= b!3524485 b!3524486))

(assert (= b!3524484 b!3524485))

(declare-datatypes ((C!20660 0))(
  ( (C!20661 (val!12378 Int)) )
))
(declare-datatypes ((Regex!10237 0))(
  ( (ElementMatch!10237 (c!607648 C!20660)) (Concat!15945 (regOne!20986 Regex!10237) (regTwo!20986 Regex!10237)) (EmptyExpr!10237) (Star!10237 (reg!10566 Regex!10237)) (EmptyLang!10237) (Union!10237 (regOne!20987 Regex!10237) (regTwo!20987 Regex!10237)) )
))
(declare-datatypes ((List!37476 0))(
  ( (Nil!37352) (Cons!37352 (h!42772 (_ BitVec 16)) (t!282341 List!37476)) )
))
(declare-datatypes ((TokenValue!5708 0))(
  ( (FloatLiteralValue!11416 (text!40401 List!37476)) (TokenValueExt!5707 (__x!23633 Int)) (Broken!28540 (value!176557 List!37476)) (Object!5831) (End!5708) (Def!5708) (Underscore!5708) (Match!5708) (Else!5708) (Error!5708) (Case!5708) (If!5708) (Extends!5708) (Abstract!5708) (Class!5708) (Val!5708) (DelimiterValue!11416 (del!5768 List!37476)) (KeywordValue!5714 (value!176558 List!37476)) (CommentValue!11416 (value!176559 List!37476)) (WhitespaceValue!11416 (value!176560 List!37476)) (IndentationValue!5708 (value!176561 List!37476)) (String!41873) (Int32!5708) (Broken!28541 (value!176562 List!37476)) (Boolean!5709) (Unit!53027) (OperatorValue!5711 (op!5768 List!37476)) (IdentifierValue!11416 (value!176563 List!37476)) (IdentifierValue!11417 (value!176564 List!37476)) (WhitespaceValue!11417 (value!176565 List!37476)) (True!11416) (False!11416) (Broken!28542 (value!176566 List!37476)) (Broken!28543 (value!176567 List!37476)) (True!11417) (RightBrace!5708) (RightBracket!5708) (Colon!5708) (Null!5708) (Comma!5708) (LeftBracket!5708) (False!11417) (LeftBrace!5708) (ImaginaryLiteralValue!5708 (text!40402 List!37476)) (StringLiteralValue!17124 (value!176568 List!37476)) (EOFValue!5708 (value!176569 List!37476)) (IdentValue!5708 (value!176570 List!37476)) (DelimiterValue!11417 (value!176571 List!37476)) (DedentValue!5708 (value!176572 List!37476)) (NewLineValue!5708 (value!176573 List!37476)) (IntegerValue!17124 (value!176574 (_ BitVec 32)) (text!40403 List!37476)) (IntegerValue!17125 (value!176575 Int) (text!40404 List!37476)) (Times!5708) (Or!5708) (Equal!5708) (Minus!5708) (Broken!28544 (value!176576 List!37476)) (And!5708) (Div!5708) (LessEqual!5708) (Mod!5708) (Concat!15946) (Not!5708) (Plus!5708) (SpaceValue!5708 (value!176577 List!37476)) (IntegerValue!17126 (value!176578 Int) (text!40405 List!37476)) (StringLiteralValue!17125 (text!40406 List!37476)) (FloatLiteralValue!11417 (text!40407 List!37476)) (BytesLiteralValue!5708 (value!176579 List!37476)) (CommentValue!11417 (value!176580 List!37476)) (StringLiteralValue!17126 (value!176581 List!37476)) (ErrorTokenValue!5708 (msg!5769 List!37476)) )
))
(declare-datatypes ((List!37477 0))(
  ( (Nil!37353) (Cons!37353 (h!42773 C!20660) (t!282342 List!37477)) )
))
(declare-datatypes ((IArray!22667 0))(
  ( (IArray!22668 (innerList!11391 List!37477)) )
))
(declare-datatypes ((Conc!11331 0))(
  ( (Node!11331 (left!29176 Conc!11331) (right!29506 Conc!11331) (csize!22892 Int) (cheight!11542 Int)) (Leaf!17681 (xs!14521 IArray!22667) (csize!22893 Int)) (Empty!11331) )
))
(declare-datatypes ((BalanceConc!22276 0))(
  ( (BalanceConc!22277 (c!607649 Conc!11331)) )
))
(declare-datatypes ((String!41874 0))(
  ( (String!41875 (value!176582 String)) )
))
(declare-datatypes ((TokenValueInjection!10844 0))(
  ( (TokenValueInjection!10845 (toValue!7734 Int) (toChars!7593 Int)) )
))
(declare-datatypes ((Rule!10756 0))(
  ( (Rule!10757 (regex!5478 Regex!10237) (tag!6118 String!41874) (isSeparator!5478 Bool) (transformation!5478 TokenValueInjection!10844)) )
))
(declare-datatypes ((List!37478 0))(
  ( (Nil!37354) (Cons!37354 (h!42774 Rule!10756) (t!282343 List!37478)) )
))
(declare-fun rules!2135 () List!37478)

(get-info :version)

(assert (= (and b!3524457 ((_ is Cons!37354) rules!2135)) b!3524484))

(declare-fun order!20105 () Int)

(declare-fun order!20107 () Int)

(declare-fun dynLambda!15920 (Int Int) Int)

(declare-fun dynLambda!15921 (Int Int) Int)

(assert (=> b!3524486 (< (dynLambda!15920 order!20105 (toValue!7734 (transformation!5478 (h!42774 rules!2135)))) (dynLambda!15921 order!20107 lambda!122819))))

(declare-fun order!20109 () Int)

(declare-fun dynLambda!15922 (Int Int) Int)

(assert (=> b!3524486 (< (dynLambda!15922 order!20109 (toChars!7593 (transformation!5478 (h!42774 rules!2135)))) (dynLambda!15921 order!20107 lambda!122819))))

(assert (=> b!3524457 true))

(declare-fun e!2181534 () Bool)

(declare-fun e!2181504 () Bool)

(declare-fun tp!1087399 () Bool)

(declare-fun b!3524435 () Bool)

(declare-fun inv!50591 (String!41874) Bool)

(declare-fun inv!50594 (TokenValueInjection!10844) Bool)

(assert (=> b!3524435 (= e!2181534 (and tp!1087399 (inv!50591 (tag!6118 (h!42774 rules!2135))) (inv!50594 (transformation!5478 (h!42774 rules!2135))) e!2181504))))

(declare-fun b!3524436 () Bool)

(declare-datatypes ((Unit!53028 0))(
  ( (Unit!53029) )
))
(declare-fun e!2181533 () Unit!53028)

(declare-fun Unit!53030 () Unit!53028)

(assert (=> b!3524436 (= e!2181533 Unit!53030)))

(declare-datatypes ((Token!10322 0))(
  ( (Token!10323 (value!176583 TokenValue!5708) (rule!8130 Rule!10756) (size!28425 Int) (originalCharacters!6192 List!37477)) )
))
(declare-fun separatorToken!241 () Token!10322)

(declare-fun lt!1203827 () C!20660)

(declare-fun lt!1203819 () Unit!53028)

(declare-fun lt!1203812 () List!37477)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!536 (Regex!10237 List!37477 C!20660) Unit!53028)

(assert (=> b!3524436 (= lt!1203819 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!536 (regex!5478 (rule!8130 separatorToken!241)) lt!1203812 lt!1203827))))

(declare-fun res!1421453 () Bool)

(declare-fun matchR!4821 (Regex!10237 List!37477) Bool)

(assert (=> b!3524436 (= res!1421453 (not (matchR!4821 (regex!5478 (rule!8130 separatorToken!241)) lt!1203812)))))

(declare-fun e!2181526 () Bool)

(assert (=> b!3524436 (=> (not res!1421453) (not e!2181526))))

(assert (=> b!3524436 e!2181526))

(declare-fun res!1421443 () Bool)

(declare-fun e!2181508 () Bool)

(assert (=> b!3524437 (=> (not res!1421443) (not e!2181508))))

(declare-datatypes ((List!37479 0))(
  ( (Nil!37355) (Cons!37355 (h!42775 Token!10322) (t!282344 List!37479)) )
))
(declare-fun tokens!494 () List!37479)

(declare-fun forall!8037 (List!37479 Int) Bool)

(assert (=> b!3524437 (= res!1421443 (forall!8037 tokens!494 lambda!122818))))

(declare-fun b!3524438 () Bool)

(declare-fun tp!1087401 () Bool)

(declare-fun e!2181514 () Bool)

(declare-fun e!2181516 () Bool)

(assert (=> b!3524438 (= e!2181514 (and tp!1087401 (inv!50591 (tag!6118 (rule!8130 separatorToken!241))) (inv!50594 (transformation!5478 (rule!8130 separatorToken!241))) e!2181516))))

(declare-fun b!3524439 () Bool)

(declare-fun e!2181530 () Bool)

(declare-fun lt!1203796 () Rule!10756)

(assert (=> b!3524439 (= e!2181530 (= (rule!8130 (h!42775 (t!282344 tokens!494))) lt!1203796))))

(declare-fun b!3524440 () Bool)

(declare-fun res!1421457 () Bool)

(declare-fun e!2181503 () Bool)

(assert (=> b!3524440 (=> (not res!1421457) (not e!2181503))))

(declare-datatypes ((IArray!22669 0))(
  ( (IArray!22670 (innerList!11392 List!37479)) )
))
(declare-datatypes ((Conc!11332 0))(
  ( (Node!11332 (left!29177 Conc!11332) (right!29507 Conc!11332) (csize!22894 Int) (cheight!11543 Int)) (Leaf!17682 (xs!14522 IArray!22669) (csize!22895 Int)) (Empty!11332) )
))
(declare-datatypes ((BalanceConc!22278 0))(
  ( (BalanceConc!22279 (c!607650 Conc!11332)) )
))
(declare-datatypes ((tuple2!37196 0))(
  ( (tuple2!37197 (_1!21732 BalanceConc!22278) (_2!21732 BalanceConc!22276)) )
))
(declare-fun lt!1203822 () tuple2!37196)

(declare-fun apply!8906 (BalanceConc!22278 Int) Token!10322)

(assert (=> b!3524440 (= res!1421457 (= (apply!8906 (_1!21732 lt!1203822) 0) separatorToken!241))))

(declare-fun b!3524441 () Bool)

(declare-fun e!2181529 () Bool)

(declare-fun e!2181532 () Bool)

(assert (=> b!3524441 (= e!2181529 e!2181532)))

(declare-fun res!1421440 () Bool)

(assert (=> b!3524441 (=> res!1421440 e!2181532)))

(declare-fun lt!1203821 () List!37477)

(declare-fun lt!1203804 () List!37477)

(assert (=> b!3524441 (= res!1421440 (not (= lt!1203821 lt!1203804)))))

(declare-fun lt!1203803 () List!37477)

(declare-fun lt!1203824 () List!37477)

(declare-fun ++!9261 (List!37477 List!37477) List!37477)

(assert (=> b!3524441 (= lt!1203804 (++!9261 (++!9261 lt!1203824 lt!1203812) lt!1203803))))

(declare-fun b!3524442 () Bool)

(declare-fun res!1421451 () Bool)

(assert (=> b!3524442 (=> (not res!1421451) (not e!2181508))))

(declare-datatypes ((LexerInterface!5067 0))(
  ( (LexerInterfaceExt!5064 (__x!23634 Int)) (Lexer!5065) )
))
(declare-fun thiss!18206 () LexerInterface!5067)

(declare-fun rulesProduceEachTokenIndividually!1518 (LexerInterface!5067 List!37478 BalanceConc!22278) Bool)

(declare-fun seqFromList!4009 (List!37479) BalanceConc!22278)

(assert (=> b!3524442 (= res!1421451 (rulesProduceEachTokenIndividually!1518 thiss!18206 rules!2135 (seqFromList!4009 tokens!494)))))

(declare-fun tp!1087393 () Bool)

(declare-fun e!2181512 () Bool)

(declare-fun e!2181522 () Bool)

(declare-fun b!3524443 () Bool)

(assert (=> b!3524443 (= e!2181512 (and tp!1087393 (inv!50591 (tag!6118 (rule!8130 (h!42775 tokens!494)))) (inv!50594 (transformation!5478 (rule!8130 (h!42775 tokens!494)))) e!2181522))))

(declare-fun res!1421446 () Bool)

(assert (=> start!327522 (=> (not res!1421446) (not e!2181508))))

(assert (=> start!327522 (= res!1421446 ((_ is Lexer!5065) thiss!18206))))

(assert (=> start!327522 e!2181508))

(assert (=> start!327522 true))

(declare-fun e!2181520 () Bool)

(assert (=> start!327522 e!2181520))

(declare-fun e!2181510 () Bool)

(assert (=> start!327522 e!2181510))

(declare-fun e!2181517 () Bool)

(declare-fun inv!50595 (Token!10322) Bool)

(assert (=> start!327522 (and (inv!50595 separatorToken!241) e!2181517)))

(declare-fun b!3524444 () Bool)

(declare-fun e!2181518 () Bool)

(assert (=> b!3524444 (= e!2181532 e!2181518)))

(declare-fun res!1421456 () Bool)

(assert (=> b!3524444 (=> res!1421456 e!2181518)))

(declare-fun lt!1203825 () List!37477)

(assert (=> b!3524444 (= res!1421456 (not (= lt!1203821 lt!1203825)))))

(assert (=> b!3524444 (= lt!1203804 lt!1203825)))

(declare-fun lt!1203810 () List!37477)

(assert (=> b!3524444 (= lt!1203825 (++!9261 lt!1203824 lt!1203810))))

(declare-fun lt!1203817 () Unit!53028)

(declare-fun lemmaConcatAssociativity!2012 (List!37477 List!37477 List!37477) Unit!53028)

(assert (=> b!3524444 (= lt!1203817 (lemmaConcatAssociativity!2012 lt!1203824 lt!1203812 lt!1203803))))

(declare-fun b!3524445 () Bool)

(declare-fun e!2181509 () Bool)

(declare-fun lt!1203813 () Rule!10756)

(assert (=> b!3524445 (= e!2181509 (= (rule!8130 (h!42775 tokens!494)) lt!1203813))))

(declare-fun b!3524446 () Bool)

(declare-fun res!1421459 () Bool)

(assert (=> b!3524446 (=> (not res!1421459) (not e!2181508))))

(declare-fun rulesProduceIndividualToken!2559 (LexerInterface!5067 List!37478 Token!10322) Bool)

(assert (=> b!3524446 (= res!1421459 (rulesProduceIndividualToken!2559 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3524447 () Bool)

(declare-fun res!1421445 () Bool)

(assert (=> b!3524447 (=> (not res!1421445) (not e!2181508))))

(assert (=> b!3524447 (= res!1421445 (and (not ((_ is Nil!37355) tokens!494)) (not ((_ is Nil!37355) (t!282344 tokens!494)))))))

(assert (=> b!3524448 (= e!2181516 (and tp!1087397 tp!1087392))))

(declare-fun b!3524449 () Bool)

(declare-fun e!2181506 () Bool)

(declare-fun e!2181507 () Bool)

(assert (=> b!3524449 (= e!2181506 e!2181507)))

(declare-fun res!1421452 () Bool)

(assert (=> b!3524449 (=> res!1421452 e!2181507)))

(declare-fun lt!1203832 () List!37477)

(declare-fun lt!1203795 () List!37477)

(assert (=> b!3524449 (= res!1421452 (or (not (= lt!1203795 lt!1203824)) (not (= lt!1203832 lt!1203824))))))

(declare-fun list!13669 (BalanceConc!22276) List!37477)

(declare-fun charsOf!3492 (Token!10322) BalanceConc!22276)

(assert (=> b!3524449 (= lt!1203824 (list!13669 (charsOf!3492 (h!42775 tokens!494))))))

(declare-fun b!3524450 () Bool)

(declare-fun e!2181524 () Bool)

(assert (=> b!3524450 (= e!2181524 e!2181529)))

(declare-fun res!1421464 () Bool)

(assert (=> b!3524450 (=> res!1421464 e!2181529)))

(declare-fun lt!1203805 () List!37477)

(declare-fun printWithSeparatorTokenList!354 (LexerInterface!5067 List!37479 Token!10322) List!37477)

(assert (=> b!3524450 (= res!1421464 (not (= lt!1203803 (++!9261 (++!9261 lt!1203805 lt!1203812) (printWithSeparatorTokenList!354 thiss!18206 (t!282344 (t!282344 tokens!494)) separatorToken!241)))))))

(assert (=> b!3524450 (= lt!1203805 (list!13669 (charsOf!3492 (h!42775 (t!282344 tokens!494)))))))

(assert (=> b!3524450 (= lt!1203810 (++!9261 lt!1203812 lt!1203803))))

(assert (=> b!3524450 (= lt!1203812 (list!13669 (charsOf!3492 separatorToken!241)))))

(assert (=> b!3524450 (= lt!1203803 (printWithSeparatorTokenList!354 thiss!18206 (t!282344 tokens!494) separatorToken!241))))

(assert (=> b!3524450 (= lt!1203821 (printWithSeparatorTokenList!354 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3524451 () Bool)

(declare-fun e!2181527 () Bool)

(assert (=> b!3524451 (= e!2181527 false)))

(assert (=> b!3524451 (not (matchR!4821 (regex!5478 (rule!8130 (h!42775 (t!282344 tokens!494)))) lt!1203805))))

(declare-fun lt!1203806 () C!20660)

(declare-fun lt!1203797 () Unit!53028)

(assert (=> b!3524451 (= lt!1203797 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!536 (regex!5478 (rule!8130 (h!42775 (t!282344 tokens!494)))) lt!1203805 lt!1203806))))

(declare-fun b!3524452 () Bool)

(declare-fun e!2181535 () Bool)

(assert (=> b!3524452 (= e!2181507 e!2181535)))

(declare-fun res!1421450 () Bool)

(assert (=> b!3524452 (=> res!1421450 e!2181535)))

(declare-fun lt!1203820 () BalanceConc!22276)

(declare-fun isEmpty!21823 (BalanceConc!22278) Bool)

(declare-fun lex!2393 (LexerInterface!5067 List!37478 BalanceConc!22276) tuple2!37196)

(assert (=> b!3524452 (= res!1421450 (isEmpty!21823 (_1!21732 (lex!2393 thiss!18206 rules!2135 lt!1203820))))))

(declare-fun seqFromList!4010 (List!37477) BalanceConc!22276)

(assert (=> b!3524452 (= lt!1203820 (seqFromList!4010 lt!1203824))))

(declare-fun e!2181528 () Bool)

(declare-fun tp!1087400 () Bool)

(declare-fun b!3524453 () Bool)

(declare-fun inv!21 (TokenValue!5708) Bool)

(assert (=> b!3524453 (= e!2181528 (and (inv!21 (value!176583 (h!42775 tokens!494))) e!2181512 tp!1087400))))

(declare-fun b!3524454 () Bool)

(declare-fun res!1421441 () Bool)

(declare-fun e!2181525 () Bool)

(assert (=> b!3524454 (=> res!1421441 e!2181525)))

(declare-fun lt!1203788 () tuple2!37196)

(assert (=> b!3524454 (= res!1421441 (not (= (apply!8906 (_1!21732 lt!1203788) 0) (h!42775 (t!282344 tokens!494)))))))

(declare-fun b!3524455 () Bool)

(declare-fun isEmpty!21824 (BalanceConc!22276) Bool)

(assert (=> b!3524455 (= e!2181525 (not (isEmpty!21824 (_2!21732 lt!1203788))))))

(declare-fun b!3524456 () Bool)

(declare-fun tp!1087390 () Bool)

(assert (=> b!3524456 (= e!2181517 (and (inv!21 (value!176583 separatorToken!241)) e!2181514 tp!1087390))))

(assert (=> b!3524457 (= e!2181518 e!2181527)))

(declare-fun res!1421463 () Bool)

(assert (=> b!3524457 (=> res!1421463 e!2181527)))

(declare-fun contains!7012 (List!37477 C!20660) Bool)

(declare-fun usedCharacters!712 (Regex!10237) List!37477)

(assert (=> b!3524457 (= res!1421463 (contains!7012 (usedCharacters!712 (regex!5478 (rule!8130 (h!42775 (t!282344 tokens!494))))) lt!1203806))))

(declare-fun head!7389 (List!37477) C!20660)

(assert (=> b!3524457 (= lt!1203806 (head!7389 lt!1203805))))

(declare-datatypes ((tuple2!37198 0))(
  ( (tuple2!37199 (_1!21733 Token!10322) (_2!21733 List!37477)) )
))
(declare-datatypes ((Option!7619 0))(
  ( (None!7618) (Some!7618 (v!37116 tuple2!37198)) )
))
(declare-fun maxPrefixOneRule!1774 (LexerInterface!5067 Rule!10756 List!37477) Option!7619)

(declare-fun apply!8907 (TokenValueInjection!10844 BalanceConc!22276) TokenValue!5708)

(declare-fun size!28426 (List!37477) Int)

(assert (=> b!3524457 (= (maxPrefixOneRule!1774 thiss!18206 (rule!8130 (h!42775 (t!282344 tokens!494))) lt!1203805) (Some!7618 (tuple2!37199 (Token!10323 (apply!8907 (transformation!5478 (rule!8130 (h!42775 (t!282344 tokens!494)))) (seqFromList!4010 lt!1203805)) (rule!8130 (h!42775 (t!282344 tokens!494))) (size!28426 lt!1203805) lt!1203805) Nil!37353)))))

(declare-fun lt!1203802 () Unit!53028)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!867 (LexerInterface!5067 List!37478 List!37477 List!37477 List!37477 Rule!10756) Unit!53028)

(assert (=> b!3524457 (= lt!1203802 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!867 thiss!18206 rules!2135 lt!1203805 lt!1203805 Nil!37353 (rule!8130 (h!42775 (t!282344 tokens!494)))))))

(declare-fun e!2181511 () Bool)

(assert (=> b!3524457 e!2181511))

(declare-fun res!1421442 () Bool)

(assert (=> b!3524457 (=> (not res!1421442) (not e!2181511))))

(declare-datatypes ((Option!7620 0))(
  ( (None!7619) (Some!7619 (v!37117 Rule!10756)) )
))
(declare-fun lt!1203829 () Option!7620)

(declare-fun isDefined!5874 (Option!7620) Bool)

(assert (=> b!3524457 (= res!1421442 (isDefined!5874 lt!1203829))))

(declare-fun getRuleFromTag!1121 (LexerInterface!5067 List!37478 String!41874) Option!7620)

(assert (=> b!3524457 (= lt!1203829 (getRuleFromTag!1121 thiss!18206 rules!2135 (tag!6118 (rule!8130 (h!42775 (t!282344 tokens!494))))))))

(declare-fun lt!1203794 () Unit!53028)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1121 (LexerInterface!5067 List!37478 List!37477 Token!10322) Unit!53028)

(assert (=> b!3524457 (= lt!1203794 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1121 thiss!18206 rules!2135 lt!1203805 (h!42775 (t!282344 tokens!494))))))

(declare-fun lt!1203793 () Bool)

(assert (=> b!3524457 lt!1203793))

(declare-fun lt!1203823 () Unit!53028)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1056 (LexerInterface!5067 List!37478 List!37479 Token!10322) Unit!53028)

(assert (=> b!3524457 (= lt!1203823 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1056 thiss!18206 rules!2135 tokens!494 (h!42775 (t!282344 tokens!494))))))

(declare-fun maxPrefix!2607 (LexerInterface!5067 List!37478 List!37477) Option!7619)

(assert (=> b!3524457 (= (maxPrefix!2607 thiss!18206 rules!2135 lt!1203825) (Some!7618 (tuple2!37199 (h!42775 tokens!494) lt!1203810)))))

(declare-fun lt!1203818 () Unit!53028)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!234 (LexerInterface!5067 List!37478 Token!10322 Rule!10756 List!37477 Rule!10756) Unit!53028)

(assert (=> b!3524457 (= lt!1203818 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!234 thiss!18206 rules!2135 (h!42775 tokens!494) (rule!8130 (h!42775 tokens!494)) lt!1203810 (rule!8130 separatorToken!241)))))

(assert (=> b!3524457 (not (contains!7012 (usedCharacters!712 (regex!5478 (rule!8130 (h!42775 tokens!494)))) lt!1203827))))

(declare-fun lt!1203800 () Unit!53028)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!278 (LexerInterface!5067 List!37478 List!37478 Rule!10756 Rule!10756 C!20660) Unit!53028)

(assert (=> b!3524457 (= lt!1203800 (lemmaNonSepRuleNotContainsCharContainedInASepRule!278 thiss!18206 rules!2135 rules!2135 (rule!8130 (h!42775 tokens!494)) (rule!8130 separatorToken!241) lt!1203827))))

(declare-fun lt!1203831 () Unit!53028)

(declare-fun forallContained!1425 (List!37479 Int Token!10322) Unit!53028)

(assert (=> b!3524457 (= lt!1203831 (forallContained!1425 tokens!494 lambda!122819 (h!42775 (t!282344 tokens!494))))))

(declare-fun lt!1203798 () Bool)

(assert (=> b!3524457 (= lt!1203793 (not lt!1203798))))

(assert (=> b!3524457 (= lt!1203793 (rulesProduceIndividualToken!2559 thiss!18206 rules!2135 (h!42775 (t!282344 tokens!494))))))

(assert (=> b!3524457 (= lt!1203798 e!2181525)))

(declare-fun res!1421458 () Bool)

(assert (=> b!3524457 (=> res!1421458 e!2181525)))

(declare-fun size!28427 (BalanceConc!22278) Int)

(assert (=> b!3524457 (= res!1421458 (not (= (size!28427 (_1!21732 lt!1203788)) 1)))))

(declare-fun lt!1203815 () BalanceConc!22276)

(assert (=> b!3524457 (= lt!1203788 (lex!2393 thiss!18206 rules!2135 lt!1203815))))

(declare-fun lt!1203826 () BalanceConc!22278)

(declare-fun printTailRec!1562 (LexerInterface!5067 BalanceConc!22278 Int BalanceConc!22276) BalanceConc!22276)

(assert (=> b!3524457 (= lt!1203815 (printTailRec!1562 thiss!18206 lt!1203826 0 (BalanceConc!22277 Empty!11331)))))

(declare-fun print!2132 (LexerInterface!5067 BalanceConc!22278) BalanceConc!22276)

(assert (=> b!3524457 (= lt!1203815 (print!2132 thiss!18206 lt!1203826))))

(declare-fun singletonSeq!2574 (Token!10322) BalanceConc!22278)

(assert (=> b!3524457 (= lt!1203826 (singletonSeq!2574 (h!42775 (t!282344 tokens!494))))))

(assert (=> b!3524457 e!2181503))

(declare-fun res!1421466 () Bool)

(assert (=> b!3524457 (=> (not res!1421466) (not e!2181503))))

(assert (=> b!3524457 (= res!1421466 (= (size!28427 (_1!21732 lt!1203822)) 1))))

(declare-fun lt!1203792 () BalanceConc!22276)

(assert (=> b!3524457 (= lt!1203822 (lex!2393 thiss!18206 rules!2135 lt!1203792))))

(declare-fun lt!1203789 () BalanceConc!22278)

(assert (=> b!3524457 (= lt!1203792 (printTailRec!1562 thiss!18206 lt!1203789 0 (BalanceConc!22277 Empty!11331)))))

(assert (=> b!3524457 (= lt!1203792 (print!2132 thiss!18206 lt!1203789))))

(assert (=> b!3524457 (= lt!1203789 (singletonSeq!2574 separatorToken!241))))

(declare-fun lt!1203801 () Unit!53028)

(assert (=> b!3524457 (= lt!1203801 e!2181533)))

(declare-fun c!607647 () Bool)

(assert (=> b!3524457 (= c!607647 (not (contains!7012 (usedCharacters!712 (regex!5478 (rule!8130 separatorToken!241))) lt!1203827)))))

(assert (=> b!3524457 (= lt!1203827 (head!7389 lt!1203812))))

(declare-fun e!2181521 () Bool)

(assert (=> b!3524457 e!2181521))

(declare-fun res!1421449 () Bool)

(assert (=> b!3524457 (=> (not res!1421449) (not e!2181521))))

(declare-fun lt!1203790 () Option!7620)

(assert (=> b!3524457 (= res!1421449 (isDefined!5874 lt!1203790))))

(assert (=> b!3524457 (= lt!1203790 (getRuleFromTag!1121 thiss!18206 rules!2135 (tag!6118 (rule!8130 separatorToken!241))))))

(declare-fun lt!1203828 () Unit!53028)

(assert (=> b!3524457 (= lt!1203828 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1121 thiss!18206 rules!2135 lt!1203812 separatorToken!241))))

(assert (=> b!3524457 (= (maxPrefixOneRule!1774 thiss!18206 (rule!8130 (h!42775 tokens!494)) lt!1203824) (Some!7618 (tuple2!37199 (Token!10323 (apply!8907 (transformation!5478 (rule!8130 (h!42775 tokens!494))) lt!1203820) (rule!8130 (h!42775 tokens!494)) (size!28426 lt!1203824) lt!1203824) Nil!37353)))))

(declare-fun lt!1203811 () Unit!53028)

(assert (=> b!3524457 (= lt!1203811 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!867 thiss!18206 rules!2135 lt!1203824 lt!1203824 Nil!37353 (rule!8130 (h!42775 tokens!494))))))

(declare-fun e!2181531 () Bool)

(assert (=> b!3524457 e!2181531))

(declare-fun res!1421465 () Bool)

(assert (=> b!3524457 (=> (not res!1421465) (not e!2181531))))

(declare-fun lt!1203830 () Option!7620)

(assert (=> b!3524457 (= res!1421465 (isDefined!5874 lt!1203830))))

(assert (=> b!3524457 (= lt!1203830 (getRuleFromTag!1121 thiss!18206 rules!2135 (tag!6118 (rule!8130 (h!42775 tokens!494)))))))

(declare-fun lt!1203791 () Unit!53028)

(assert (=> b!3524457 (= lt!1203791 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1121 thiss!18206 rules!2135 lt!1203824 (h!42775 tokens!494)))))

(declare-fun lt!1203816 () Unit!53028)

(assert (=> b!3524457 (= lt!1203816 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1056 thiss!18206 rules!2135 tokens!494 (h!42775 tokens!494)))))

(declare-fun b!3524458 () Bool)

(declare-fun res!1421462 () Bool)

(assert (=> b!3524458 (=> (not res!1421462) (not e!2181508))))

(assert (=> b!3524458 (= res!1421462 (isSeparator!5478 (rule!8130 separatorToken!241)))))

(declare-fun b!3524459 () Bool)

(assert (=> b!3524459 (= e!2181511 e!2181530)))

(declare-fun res!1421448 () Bool)

(assert (=> b!3524459 (=> (not res!1421448) (not e!2181530))))

(assert (=> b!3524459 (= res!1421448 (matchR!4821 (regex!5478 lt!1203796) lt!1203805))))

(declare-fun get!11994 (Option!7620) Rule!10756)

(assert (=> b!3524459 (= lt!1203796 (get!11994 lt!1203829))))

(declare-fun b!3524460 () Bool)

(assert (=> b!3524460 (= e!2181503 (isEmpty!21824 (_2!21732 lt!1203822)))))

(declare-fun b!3524461 () Bool)

(declare-fun res!1421460 () Bool)

(assert (=> b!3524461 (=> res!1421460 e!2181507)))

(assert (=> b!3524461 (= res!1421460 (not (rulesProduceIndividualToken!2559 thiss!18206 rules!2135 (h!42775 tokens!494))))))

(assert (=> b!3524462 (= e!2181522 (and tp!1087391 tp!1087394))))

(declare-fun b!3524463 () Bool)

(declare-fun Unit!53031 () Unit!53028)

(assert (=> b!3524463 (= e!2181533 Unit!53031)))

(declare-fun b!3524464 () Bool)

(declare-fun e!2181513 () Bool)

(declare-fun lt!1203808 () Rule!10756)

(assert (=> b!3524464 (= e!2181513 (= (rule!8130 separatorToken!241) lt!1203808))))

(declare-fun b!3524465 () Bool)

(assert (=> b!3524465 (= e!2181526 false)))

(declare-fun b!3524466 () Bool)

(assert (=> b!3524466 (= e!2181535 e!2181524)))

(declare-fun res!1421444 () Bool)

(assert (=> b!3524466 (=> res!1421444 e!2181524)))

(assert (=> b!3524466 (= res!1421444 (or (isSeparator!5478 (rule!8130 (h!42775 tokens!494))) (isSeparator!5478 (rule!8130 (h!42775 (t!282344 tokens!494))))))))

(declare-fun lt!1203814 () Unit!53028)

(assert (=> b!3524466 (= lt!1203814 (forallContained!1425 tokens!494 lambda!122818 (h!42775 (t!282344 tokens!494))))))

(declare-fun lt!1203807 () Unit!53028)

(assert (=> b!3524466 (= lt!1203807 (forallContained!1425 tokens!494 lambda!122818 (h!42775 tokens!494)))))

(declare-fun b!3524467 () Bool)

(assert (=> b!3524467 (= e!2181521 e!2181513)))

(declare-fun res!1421468 () Bool)

(assert (=> b!3524467 (=> (not res!1421468) (not e!2181513))))

(assert (=> b!3524467 (= res!1421468 (matchR!4821 (regex!5478 lt!1203808) lt!1203812))))

(assert (=> b!3524467 (= lt!1203808 (get!11994 lt!1203790))))

(declare-fun b!3524468 () Bool)

(assert (=> b!3524468 (= e!2181531 e!2181509)))

(declare-fun res!1421461 () Bool)

(assert (=> b!3524468 (=> (not res!1421461) (not e!2181509))))

(assert (=> b!3524468 (= res!1421461 (matchR!4821 (regex!5478 lt!1203813) lt!1203824))))

(assert (=> b!3524468 (= lt!1203813 (get!11994 lt!1203830))))

(declare-fun b!3524469 () Bool)

(declare-fun res!1421454 () Bool)

(assert (=> b!3524469 (=> (not res!1421454) (not e!2181508))))

(declare-fun isEmpty!21825 (List!37478) Bool)

(assert (=> b!3524469 (= res!1421454 (not (isEmpty!21825 rules!2135)))))

(declare-fun b!3524470 () Bool)

(declare-fun res!1421467 () Bool)

(assert (=> b!3524470 (=> (not res!1421467) (not e!2181508))))

(declare-fun rulesInvariant!4464 (LexerInterface!5067 List!37478) Bool)

(assert (=> b!3524470 (= res!1421467 (rulesInvariant!4464 thiss!18206 rules!2135))))

(declare-fun tp!1087395 () Bool)

(declare-fun b!3524471 () Bool)

(assert (=> b!3524471 (= e!2181510 (and (inv!50595 (h!42775 tokens!494)) e!2181528 tp!1087395))))

(declare-fun b!3524472 () Bool)

(assert (=> b!3524472 (= e!2181508 (not e!2181506))))

(declare-fun res!1421447 () Bool)

(assert (=> b!3524472 (=> res!1421447 e!2181506)))

(assert (=> b!3524472 (= res!1421447 (not (= lt!1203832 lt!1203795)))))

(declare-fun printList!1615 (LexerInterface!5067 List!37479) List!37477)

(assert (=> b!3524472 (= lt!1203795 (printList!1615 thiss!18206 (Cons!37355 (h!42775 tokens!494) Nil!37355)))))

(declare-fun lt!1203799 () BalanceConc!22276)

(assert (=> b!3524472 (= lt!1203832 (list!13669 lt!1203799))))

(declare-fun lt!1203809 () BalanceConc!22278)

(assert (=> b!3524472 (= lt!1203799 (printTailRec!1562 thiss!18206 lt!1203809 0 (BalanceConc!22277 Empty!11331)))))

(assert (=> b!3524472 (= lt!1203799 (print!2132 thiss!18206 lt!1203809))))

(assert (=> b!3524472 (= lt!1203809 (singletonSeq!2574 (h!42775 tokens!494)))))

(declare-fun b!3524473 () Bool)

(declare-fun res!1421455 () Bool)

(assert (=> b!3524473 (=> (not res!1421455) (not e!2181508))))

(declare-fun sepAndNonSepRulesDisjointChars!1672 (List!37478 List!37478) Bool)

(assert (=> b!3524473 (= res!1421455 (sepAndNonSepRulesDisjointChars!1672 rules!2135 rules!2135))))

(assert (=> b!3524474 (= e!2181504 (and tp!1087398 tp!1087402))))

(declare-fun b!3524475 () Bool)

(declare-fun tp!1087396 () Bool)

(assert (=> b!3524475 (= e!2181520 (and e!2181534 tp!1087396))))

(assert (= (and start!327522 res!1421446) b!3524469))

(assert (= (and b!3524469 res!1421454) b!3524470))

(assert (= (and b!3524470 res!1421467) b!3524442))

(assert (= (and b!3524442 res!1421451) b!3524446))

(assert (= (and b!3524446 res!1421459) b!3524458))

(assert (= (and b!3524458 res!1421462) b!3524437))

(assert (= (and b!3524437 res!1421443) b!3524473))

(assert (= (and b!3524473 res!1421455) b!3524447))

(assert (= (and b!3524447 res!1421445) b!3524472))

(assert (= (and b!3524472 (not res!1421447)) b!3524449))

(assert (= (and b!3524449 (not res!1421452)) b!3524461))

(assert (= (and b!3524461 (not res!1421460)) b!3524452))

(assert (= (and b!3524452 (not res!1421450)) b!3524466))

(assert (= (and b!3524466 (not res!1421444)) b!3524450))

(assert (= (and b!3524450 (not res!1421464)) b!3524441))

(assert (= (and b!3524441 (not res!1421440)) b!3524444))

(assert (= (and b!3524444 (not res!1421456)) b!3524457))

(assert (= (and b!3524457 res!1421465) b!3524468))

(assert (= (and b!3524468 res!1421461) b!3524445))

(assert (= (and b!3524457 res!1421449) b!3524467))

(assert (= (and b!3524467 res!1421468) b!3524464))

(assert (= (and b!3524457 c!607647) b!3524436))

(assert (= (and b!3524457 (not c!607647)) b!3524463))

(assert (= (and b!3524436 res!1421453) b!3524465))

(assert (= (and b!3524457 res!1421466) b!3524440))

(assert (= (and b!3524440 res!1421457) b!3524460))

(assert (= (and b!3524457 (not res!1421458)) b!3524454))

(assert (= (and b!3524454 (not res!1421441)) b!3524455))

(assert (= (and b!3524457 res!1421442) b!3524459))

(assert (= (and b!3524459 res!1421448) b!3524439))

(assert (= (and b!3524457 (not res!1421463)) b!3524451))

(assert (= b!3524435 b!3524474))

(assert (= b!3524475 b!3524435))

(assert (= (and start!327522 ((_ is Cons!37354) rules!2135)) b!3524475))

(assert (= b!3524443 b!3524462))

(assert (= b!3524453 b!3524443))

(assert (= b!3524471 b!3524453))

(assert (= (and start!327522 ((_ is Cons!37355) tokens!494)) b!3524471))

(assert (= b!3524438 b!3524448))

(assert (= b!3524456 b!3524438))

(assert (= start!327522 b!3524456))

(declare-fun m!3977215 () Bool)

(assert (=> b!3524467 m!3977215))

(declare-fun m!3977217 () Bool)

(assert (=> b!3524467 m!3977217))

(declare-fun m!3977219 () Bool)

(assert (=> start!327522 m!3977219))

(declare-fun m!3977221 () Bool)

(assert (=> b!3524468 m!3977221))

(declare-fun m!3977223 () Bool)

(assert (=> b!3524468 m!3977223))

(declare-fun m!3977225 () Bool)

(assert (=> b!3524449 m!3977225))

(assert (=> b!3524449 m!3977225))

(declare-fun m!3977227 () Bool)

(assert (=> b!3524449 m!3977227))

(declare-fun m!3977229 () Bool)

(assert (=> b!3524436 m!3977229))

(declare-fun m!3977231 () Bool)

(assert (=> b!3524436 m!3977231))

(declare-fun m!3977233 () Bool)

(assert (=> b!3524472 m!3977233))

(declare-fun m!3977235 () Bool)

(assert (=> b!3524472 m!3977235))

(declare-fun m!3977237 () Bool)

(assert (=> b!3524472 m!3977237))

(declare-fun m!3977239 () Bool)

(assert (=> b!3524472 m!3977239))

(declare-fun m!3977241 () Bool)

(assert (=> b!3524472 m!3977241))

(declare-fun m!3977243 () Bool)

(assert (=> b!3524451 m!3977243))

(declare-fun m!3977245 () Bool)

(assert (=> b!3524451 m!3977245))

(declare-fun m!3977247 () Bool)

(assert (=> b!3524469 m!3977247))

(declare-fun m!3977249 () Bool)

(assert (=> b!3524453 m!3977249))

(declare-fun m!3977251 () Bool)

(assert (=> b!3524470 m!3977251))

(declare-fun m!3977253 () Bool)

(assert (=> b!3524440 m!3977253))

(declare-fun m!3977255 () Bool)

(assert (=> b!3524437 m!3977255))

(declare-fun m!3977257 () Bool)

(assert (=> b!3524460 m!3977257))

(declare-fun m!3977259 () Bool)

(assert (=> b!3524444 m!3977259))

(declare-fun m!3977261 () Bool)

(assert (=> b!3524444 m!3977261))

(declare-fun m!3977263 () Bool)

(assert (=> b!3524473 m!3977263))

(declare-fun m!3977265 () Bool)

(assert (=> b!3524456 m!3977265))

(declare-fun m!3977267 () Bool)

(assert (=> b!3524452 m!3977267))

(declare-fun m!3977269 () Bool)

(assert (=> b!3524452 m!3977269))

(declare-fun m!3977271 () Bool)

(assert (=> b!3524452 m!3977271))

(declare-fun m!3977273 () Bool)

(assert (=> b!3524443 m!3977273))

(declare-fun m!3977275 () Bool)

(assert (=> b!3524443 m!3977275))

(declare-fun m!3977277 () Bool)

(assert (=> b!3524455 m!3977277))

(declare-fun m!3977279 () Bool)

(assert (=> b!3524446 m!3977279))

(declare-fun m!3977281 () Bool)

(assert (=> b!3524442 m!3977281))

(assert (=> b!3524442 m!3977281))

(declare-fun m!3977283 () Bool)

(assert (=> b!3524442 m!3977283))

(declare-fun m!3977285 () Bool)

(assert (=> b!3524471 m!3977285))

(declare-fun m!3977287 () Bool)

(assert (=> b!3524438 m!3977287))

(declare-fun m!3977289 () Bool)

(assert (=> b!3524438 m!3977289))

(declare-fun m!3977291 () Bool)

(assert (=> b!3524450 m!3977291))

(declare-fun m!3977293 () Bool)

(assert (=> b!3524450 m!3977293))

(declare-fun m!3977295 () Bool)

(assert (=> b!3524450 m!3977295))

(declare-fun m!3977297 () Bool)

(assert (=> b!3524450 m!3977297))

(assert (=> b!3524450 m!3977293))

(declare-fun m!3977299 () Bool)

(assert (=> b!3524450 m!3977299))

(declare-fun m!3977301 () Bool)

(assert (=> b!3524450 m!3977301))

(declare-fun m!3977303 () Bool)

(assert (=> b!3524450 m!3977303))

(assert (=> b!3524450 m!3977295))

(declare-fun m!3977305 () Bool)

(assert (=> b!3524450 m!3977305))

(assert (=> b!3524450 m!3977303))

(assert (=> b!3524450 m!3977301))

(declare-fun m!3977307 () Bool)

(assert (=> b!3524450 m!3977307))

(declare-fun m!3977309 () Bool)

(assert (=> b!3524450 m!3977309))

(declare-fun m!3977311 () Bool)

(assert (=> b!3524454 m!3977311))

(declare-fun m!3977313 () Bool)

(assert (=> b!3524466 m!3977313))

(declare-fun m!3977315 () Bool)

(assert (=> b!3524466 m!3977315))

(declare-fun m!3977317 () Bool)

(assert (=> b!3524459 m!3977317))

(declare-fun m!3977319 () Bool)

(assert (=> b!3524459 m!3977319))

(declare-fun m!3977321 () Bool)

(assert (=> b!3524441 m!3977321))

(assert (=> b!3524441 m!3977321))

(declare-fun m!3977323 () Bool)

(assert (=> b!3524441 m!3977323))

(declare-fun m!3977325 () Bool)

(assert (=> b!3524435 m!3977325))

(declare-fun m!3977327 () Bool)

(assert (=> b!3524435 m!3977327))

(declare-fun m!3977329 () Bool)

(assert (=> b!3524461 m!3977329))

(declare-fun m!3977331 () Bool)

(assert (=> b!3524457 m!3977331))

(declare-fun m!3977333 () Bool)

(assert (=> b!3524457 m!3977333))

(declare-fun m!3977335 () Bool)

(assert (=> b!3524457 m!3977335))

(declare-fun m!3977337 () Bool)

(assert (=> b!3524457 m!3977337))

(declare-fun m!3977339 () Bool)

(assert (=> b!3524457 m!3977339))

(declare-fun m!3977341 () Bool)

(assert (=> b!3524457 m!3977341))

(declare-fun m!3977343 () Bool)

(assert (=> b!3524457 m!3977343))

(declare-fun m!3977345 () Bool)

(assert (=> b!3524457 m!3977345))

(declare-fun m!3977347 () Bool)

(assert (=> b!3524457 m!3977347))

(declare-fun m!3977349 () Bool)

(assert (=> b!3524457 m!3977349))

(declare-fun m!3977351 () Bool)

(assert (=> b!3524457 m!3977351))

(declare-fun m!3977353 () Bool)

(assert (=> b!3524457 m!3977353))

(assert (=> b!3524457 m!3977341))

(declare-fun m!3977355 () Bool)

(assert (=> b!3524457 m!3977355))

(declare-fun m!3977357 () Bool)

(assert (=> b!3524457 m!3977357))

(declare-fun m!3977359 () Bool)

(assert (=> b!3524457 m!3977359))

(declare-fun m!3977361 () Bool)

(assert (=> b!3524457 m!3977361))

(declare-fun m!3977363 () Bool)

(assert (=> b!3524457 m!3977363))

(declare-fun m!3977365 () Bool)

(assert (=> b!3524457 m!3977365))

(declare-fun m!3977367 () Bool)

(assert (=> b!3524457 m!3977367))

(declare-fun m!3977369 () Bool)

(assert (=> b!3524457 m!3977369))

(assert (=> b!3524457 m!3977359))

(declare-fun m!3977371 () Bool)

(assert (=> b!3524457 m!3977371))

(declare-fun m!3977373 () Bool)

(assert (=> b!3524457 m!3977373))

(declare-fun m!3977375 () Bool)

(assert (=> b!3524457 m!3977375))

(declare-fun m!3977377 () Bool)

(assert (=> b!3524457 m!3977377))

(assert (=> b!3524457 m!3977367))

(declare-fun m!3977379 () Bool)

(assert (=> b!3524457 m!3977379))

(declare-fun m!3977381 () Bool)

(assert (=> b!3524457 m!3977381))

(declare-fun m!3977383 () Bool)

(assert (=> b!3524457 m!3977383))

(declare-fun m!3977385 () Bool)

(assert (=> b!3524457 m!3977385))

(declare-fun m!3977387 () Bool)

(assert (=> b!3524457 m!3977387))

(declare-fun m!3977389 () Bool)

(assert (=> b!3524457 m!3977389))

(declare-fun m!3977391 () Bool)

(assert (=> b!3524457 m!3977391))

(declare-fun m!3977393 () Bool)

(assert (=> b!3524457 m!3977393))

(declare-fun m!3977395 () Bool)

(assert (=> b!3524457 m!3977395))

(declare-fun m!3977397 () Bool)

(assert (=> b!3524457 m!3977397))

(declare-fun m!3977399 () Bool)

(assert (=> b!3524457 m!3977399))

(assert (=> b!3524457 m!3977379))

(declare-fun m!3977401 () Bool)

(assert (=> b!3524457 m!3977401))

(declare-fun m!3977403 () Bool)

(assert (=> b!3524457 m!3977403))

(declare-fun m!3977405 () Bool)

(assert (=> b!3524457 m!3977405))

(declare-fun m!3977407 () Bool)

(assert (=> b!3524457 m!3977407))

(declare-fun m!3977409 () Bool)

(assert (=> b!3524457 m!3977409))

(declare-fun m!3977411 () Bool)

(assert (=> b!3524457 m!3977411))

(declare-fun m!3977413 () Bool)

(assert (=> b!3524457 m!3977413))

(declare-fun m!3977415 () Bool)

(assert (=> b!3524457 m!3977415))

(check-sat (not b!3524472) (not b!3524461) (not b!3524466) b_and!251249 (not b!3524436) (not b!3524453) (not b!3524455) (not b_next!91495) (not b!3524451) (not b!3524475) b_and!251251 (not b!3524473) (not b!3524457) (not b_next!91499) (not b!3524440) (not b_next!91489) (not b!3524460) (not b_next!91491) (not start!327522) (not b!3524454) (not b!3524443) (not b!3524449) b_and!251255 (not b!3524444) (not b!3524437) (not b!3524435) (not b!3524450) b_and!251253 (not b!3524442) (not b!3524467) (not b_next!91493) (not b!3524468) (not b!3524446) (not b!3524459) (not b!3524456) (not b!3524470) b_and!251247 (not b!3524452) (not b_next!91497) (not b!3524438) (not b!3524484) (not b!3524469) (not b!3524441) b_and!251257 (not b!3524471))
(check-sat b_and!251251 (not b_next!91491) b_and!251255 b_and!251253 (not b_next!91493) b_and!251247 b_and!251249 (not b_next!91497) (not b_next!91495) b_and!251257 (not b_next!91499) (not b_next!91489))
