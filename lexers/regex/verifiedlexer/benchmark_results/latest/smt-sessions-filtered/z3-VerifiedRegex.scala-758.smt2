; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41946 () Bool)

(assert start!41946)

(declare-fun b!444494 () Bool)

(declare-fun b_free!12353 () Bool)

(declare-fun b_next!12353 () Bool)

(assert (=> b!444494 (= b_free!12353 (not b_next!12353))))

(declare-fun tp!124805 () Bool)

(declare-fun b_and!47877 () Bool)

(assert (=> b!444494 (= tp!124805 b_and!47877)))

(declare-fun b_free!12355 () Bool)

(declare-fun b_next!12355 () Bool)

(assert (=> b!444494 (= b_free!12355 (not b_next!12355))))

(declare-fun tp!124796 () Bool)

(declare-fun b_and!47879 () Bool)

(assert (=> b!444494 (= tp!124796 b_and!47879)))

(declare-fun b!444482 () Bool)

(declare-fun b_free!12357 () Bool)

(declare-fun b_next!12357 () Bool)

(assert (=> b!444482 (= b_free!12357 (not b_next!12357))))

(declare-fun tp!124801 () Bool)

(declare-fun b_and!47881 () Bool)

(assert (=> b!444482 (= tp!124801 b_and!47881)))

(declare-fun b_free!12359 () Bool)

(declare-fun b_next!12359 () Bool)

(assert (=> b!444482 (= b_free!12359 (not b_next!12359))))

(declare-fun tp!124806 () Bool)

(declare-fun b_and!47883 () Bool)

(assert (=> b!444482 (= tp!124806 b_and!47883)))

(declare-fun b!444507 () Bool)

(declare-fun b_free!12361 () Bool)

(declare-fun b_next!12361 () Bool)

(assert (=> b!444507 (= b_free!12361 (not b_next!12361))))

(declare-fun tp!124800 () Bool)

(declare-fun b_and!47885 () Bool)

(assert (=> b!444507 (= tp!124800 b_and!47885)))

(declare-fun b_free!12363 () Bool)

(declare-fun b_next!12363 () Bool)

(assert (=> b!444507 (= b_free!12363 (not b_next!12363))))

(declare-fun tp!124804 () Bool)

(declare-fun b_and!47887 () Bool)

(assert (=> b!444507 (= tp!124804 b_and!47887)))

(declare-fun bs!54924 () Bool)

(declare-fun b!444499 () Bool)

(declare-fun b!444492 () Bool)

(assert (= bs!54924 (and b!444499 b!444492)))

(declare-fun lambda!12890 () Int)

(declare-fun lambda!12889 () Int)

(assert (=> bs!54924 (not (= lambda!12890 lambda!12889))))

(declare-fun b!444518 () Bool)

(declare-fun e!271588 () Bool)

(assert (=> b!444518 (= e!271588 true)))

(declare-fun b!444517 () Bool)

(declare-fun e!271587 () Bool)

(assert (=> b!444517 (= e!271587 e!271588)))

(declare-fun b!444516 () Bool)

(declare-fun e!271586 () Bool)

(assert (=> b!444516 (= e!271586 e!271587)))

(assert (=> b!444499 e!271586))

(assert (= b!444517 b!444518))

(assert (= b!444516 b!444517))

(declare-datatypes ((List!4342 0))(
  ( (Nil!4332) (Cons!4332 (h!9729 (_ BitVec 16)) (t!70136 List!4342)) )
))
(declare-datatypes ((TokenValue!861 0))(
  ( (FloatLiteralValue!1722 (text!6472 List!4342)) (TokenValueExt!860 (__x!3209 Int)) (Broken!4305 (value!28201 List!4342)) (Object!870) (End!861) (Def!861) (Underscore!861) (Match!861) (Else!861) (Error!861) (Case!861) (If!861) (Extends!861) (Abstract!861) (Class!861) (Val!861) (DelimiterValue!1722 (del!921 List!4342)) (KeywordValue!867 (value!28202 List!4342)) (CommentValue!1722 (value!28203 List!4342)) (WhitespaceValue!1722 (value!28204 List!4342)) (IndentationValue!861 (value!28205 List!4342)) (String!5384) (Int32!861) (Broken!4306 (value!28206 List!4342)) (Boolean!862) (Unit!7722) (OperatorValue!864 (op!921 List!4342)) (IdentifierValue!1722 (value!28207 List!4342)) (IdentifierValue!1723 (value!28208 List!4342)) (WhitespaceValue!1723 (value!28209 List!4342)) (True!1722) (False!1722) (Broken!4307 (value!28210 List!4342)) (Broken!4308 (value!28211 List!4342)) (True!1723) (RightBrace!861) (RightBracket!861) (Colon!861) (Null!861) (Comma!861) (LeftBracket!861) (False!1723) (LeftBrace!861) (ImaginaryLiteralValue!861 (text!6473 List!4342)) (StringLiteralValue!2583 (value!28212 List!4342)) (EOFValue!861 (value!28213 List!4342)) (IdentValue!861 (value!28214 List!4342)) (DelimiterValue!1723 (value!28215 List!4342)) (DedentValue!861 (value!28216 List!4342)) (NewLineValue!861 (value!28217 List!4342)) (IntegerValue!2583 (value!28218 (_ BitVec 32)) (text!6474 List!4342)) (IntegerValue!2584 (value!28219 Int) (text!6475 List!4342)) (Times!861) (Or!861) (Equal!861) (Minus!861) (Broken!4309 (value!28220 List!4342)) (And!861) (Div!861) (LessEqual!861) (Mod!861) (Concat!1924) (Not!861) (Plus!861) (SpaceValue!861 (value!28221 List!4342)) (IntegerValue!2585 (value!28222 Int) (text!6476 List!4342)) (StringLiteralValue!2584 (text!6477 List!4342)) (FloatLiteralValue!1723 (text!6478 List!4342)) (BytesLiteralValue!861 (value!28223 List!4342)) (CommentValue!1723 (value!28224 List!4342)) (StringLiteralValue!2585 (value!28225 List!4342)) (ErrorTokenValue!861 (msg!922 List!4342)) )
))
(declare-datatypes ((C!3048 0))(
  ( (C!3049 (val!1410 Int)) )
))
(declare-datatypes ((List!4343 0))(
  ( (Nil!4333) (Cons!4333 (h!9730 C!3048) (t!70137 List!4343)) )
))
(declare-datatypes ((IArray!3001 0))(
  ( (IArray!3002 (innerList!1558 List!4343)) )
))
(declare-datatypes ((Conc!1500 0))(
  ( (Node!1500 (left!3638 Conc!1500) (right!3968 Conc!1500) (csize!3230 Int) (cheight!1711 Int)) (Leaf!2259 (xs!4131 IArray!3001) (csize!3231 Int)) (Empty!1500) )
))
(declare-datatypes ((BalanceConc!3008 0))(
  ( (BalanceConc!3009 (c!90024 Conc!1500)) )
))
(declare-datatypes ((TokenValueInjection!1494 0))(
  ( (TokenValueInjection!1495 (toValue!1650 Int) (toChars!1509 Int)) )
))
(declare-datatypes ((String!5385 0))(
  ( (String!5386 (value!28226 String)) )
))
(declare-datatypes ((Regex!1063 0))(
  ( (ElementMatch!1063 (c!90025 C!3048)) (Concat!1925 (regOne!2638 Regex!1063) (regTwo!2638 Regex!1063)) (EmptyExpr!1063) (Star!1063 (reg!1392 Regex!1063)) (EmptyLang!1063) (Union!1063 (regOne!2639 Regex!1063) (regTwo!2639 Regex!1063)) )
))
(declare-datatypes ((Rule!1478 0))(
  ( (Rule!1479 (regex!839 Regex!1063) (tag!1093 String!5385) (isSeparator!839 Bool) (transformation!839 TokenValueInjection!1494)) )
))
(declare-datatypes ((List!4344 0))(
  ( (Nil!4334) (Cons!4334 (h!9731 Rule!1478) (t!70138 List!4344)) )
))
(declare-fun rules!1920 () List!4344)

(get-info :version)

(assert (= (and b!444499 ((_ is Cons!4334) rules!1920)) b!444516))

(declare-fun order!3779 () Int)

(declare-fun order!3777 () Int)

(declare-fun dynLambda!2592 (Int Int) Int)

(declare-fun dynLambda!2593 (Int Int) Int)

(assert (=> b!444518 (< (dynLambda!2592 order!3777 (toValue!1650 (transformation!839 (h!9731 rules!1920)))) (dynLambda!2593 order!3779 lambda!12890))))

(declare-fun order!3781 () Int)

(declare-fun dynLambda!2594 (Int Int) Int)

(assert (=> b!444518 (< (dynLambda!2594 order!3781 (toChars!1509 (transformation!839 (h!9731 rules!1920)))) (dynLambda!2593 order!3779 lambda!12890))))

(assert (=> b!444499 true))

(declare-fun b!444460 () Bool)

(declare-fun res!197226 () Bool)

(declare-fun e!271565 () Bool)

(assert (=> b!444460 (=> (not res!197226) (not e!271565))))

(declare-fun isEmpty!3259 (List!4344) Bool)

(assert (=> b!444460 (= res!197226 (not (isEmpty!3259 rules!1920)))))

(declare-fun b!444461 () Bool)

(declare-fun e!271547 () Bool)

(declare-fun e!271571 () Bool)

(assert (=> b!444461 (= e!271547 e!271571)))

(declare-fun res!197214 () Bool)

(assert (=> b!444461 (=> (not res!197214) (not e!271571))))

(declare-datatypes ((Token!1422 0))(
  ( (Token!1423 (value!28227 TokenValue!861) (rule!1518 Rule!1478) (size!3556 Int) (originalCharacters!882 List!4343)) )
))
(declare-datatypes ((tuple2!5222 0))(
  ( (tuple2!5223 (_1!2827 Token!1422) (_2!2827 List!4343)) )
))
(declare-datatypes ((Option!1099 0))(
  ( (None!1098) (Some!1098 (v!15385 tuple2!5222)) )
))
(declare-fun lt!196316 () Option!1099)

(declare-fun isDefined!938 (Option!1099) Bool)

(assert (=> b!444461 (= res!197214 (isDefined!938 lt!196316))))

(declare-fun lt!196304 () List!4343)

(declare-datatypes ((LexerInterface!725 0))(
  ( (LexerInterfaceExt!722 (__x!3210 Int)) (Lexer!723) )
))
(declare-fun thiss!17480 () LexerInterface!725)

(declare-fun maxPrefix!441 (LexerInterface!725 List!4344 List!4343) Option!1099)

(assert (=> b!444461 (= lt!196316 (maxPrefix!441 thiss!17480 rules!1920 lt!196304))))

(declare-fun b!444462 () Bool)

(declare-fun res!197228 () Bool)

(declare-fun e!271552 () Bool)

(assert (=> b!444462 (=> (not res!197228) (not e!271552))))

(declare-datatypes ((List!4345 0))(
  ( (Nil!4335) (Cons!4335 (h!9732 Token!1422) (t!70139 List!4345)) )
))
(declare-fun tokens!465 () List!4345)

(assert (=> b!444462 (= res!197228 ((_ is Cons!4335) tokens!465))))

(declare-fun b!444463 () Bool)

(assert (=> b!444463 (= e!271565 e!271552)))

(declare-fun res!197220 () Bool)

(assert (=> b!444463 (=> (not res!197220) (not e!271552))))

(declare-datatypes ((IArray!3003 0))(
  ( (IArray!3004 (innerList!1559 List!4345)) )
))
(declare-datatypes ((Conc!1501 0))(
  ( (Node!1501 (left!3639 Conc!1501) (right!3969 Conc!1501) (csize!3232 Int) (cheight!1712 Int)) (Leaf!2260 (xs!4132 IArray!3003) (csize!3233 Int)) (Empty!1501) )
))
(declare-datatypes ((BalanceConc!3010 0))(
  ( (BalanceConc!3011 (c!90026 Conc!1501)) )
))
(declare-fun lt!196309 () BalanceConc!3010)

(declare-fun rulesProduceEachTokenIndividually!517 (LexerInterface!725 List!4344 BalanceConc!3010) Bool)

(assert (=> b!444463 (= res!197220 (rulesProduceEachTokenIndividually!517 thiss!17480 rules!1920 lt!196309))))

(declare-fun seqFromList!1043 (List!4345) BalanceConc!3010)

(assert (=> b!444463 (= lt!196309 (seqFromList!1043 tokens!465))))

(declare-fun b!444464 () Bool)

(declare-fun e!271553 () Bool)

(declare-fun lt!196321 () List!4343)

(declare-fun matchR!381 (Regex!1063 List!4343) Bool)

(assert (=> b!444464 (= e!271553 (matchR!381 (regex!839 (rule!1518 (h!9732 tokens!465))) lt!196321))))

(declare-fun b!444465 () Bool)

(declare-datatypes ((Unit!7723 0))(
  ( (Unit!7724) )
))
(declare-fun e!271550 () Unit!7723)

(declare-fun Unit!7725 () Unit!7723)

(assert (=> b!444465 (= e!271550 Unit!7725)))

(declare-fun lt!196314 () Unit!7723)

(declare-fun separatorToken!170 () Token!1422)

(declare-fun lt!196324 () C!3048)

(declare-fun lt!196328 () Token!1422)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!98 (LexerInterface!725 List!4344 List!4344 Rule!1478 Rule!1478 C!3048) Unit!7723)

(assert (=> b!444465 (= lt!196314 (lemmaSepRuleNotContainsCharContainedInANonSepRule!98 thiss!17480 rules!1920 rules!1920 (rule!1518 lt!196328) (rule!1518 separatorToken!170) lt!196324))))

(assert (=> b!444465 false))

(declare-fun b!444466 () Bool)

(declare-fun e!271579 () Bool)

(declare-fun e!271566 () Bool)

(assert (=> b!444466 (= e!271579 (not e!271566))))

(declare-fun res!197223 () Bool)

(assert (=> b!444466 (=> res!197223 e!271566)))

(declare-fun lt!196301 () List!4343)

(declare-fun list!1917 (BalanceConc!3008) List!4343)

(declare-fun printWithSeparatorTokenWhenNeededRec!398 (LexerInterface!725 List!4344 BalanceConc!3010 Token!1422 Int) BalanceConc!3008)

(assert (=> b!444466 (= res!197223 (not (= lt!196301 (list!1917 (printWithSeparatorTokenWhenNeededRec!398 thiss!17480 rules!1920 (seqFromList!1043 (t!70139 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!196331 () List!4343)

(declare-fun lt!196303 () List!4343)

(assert (=> b!444466 (= lt!196331 lt!196303)))

(declare-fun lt!196302 () List!4343)

(declare-fun ++!1252 (List!4343 List!4343) List!4343)

(assert (=> b!444466 (= lt!196303 (++!1252 lt!196321 lt!196302))))

(declare-fun lt!196333 () List!4343)

(assert (=> b!444466 (= lt!196331 (++!1252 (++!1252 lt!196321 lt!196333) lt!196301))))

(declare-fun lt!196340 () Unit!7723)

(declare-fun lemmaConcatAssociativity!572 (List!4343 List!4343 List!4343) Unit!7723)

(assert (=> b!444466 (= lt!196340 (lemmaConcatAssociativity!572 lt!196321 lt!196333 lt!196301))))

(declare-fun charsOf!482 (Token!1422) BalanceConc!3008)

(assert (=> b!444466 (= lt!196321 (list!1917 (charsOf!482 (h!9732 tokens!465))))))

(assert (=> b!444466 (= lt!196302 (++!1252 lt!196333 lt!196301))))

(declare-fun printWithSeparatorTokenWhenNeededList!406 (LexerInterface!725 List!4344 List!4345 Token!1422) List!4343)

(assert (=> b!444466 (= lt!196301 (printWithSeparatorTokenWhenNeededList!406 thiss!17480 rules!1920 (t!70139 tokens!465) separatorToken!170))))

(assert (=> b!444466 (= lt!196333 (list!1917 (charsOf!482 separatorToken!170)))))

(declare-fun b!444467 () Bool)

(declare-fun e!271578 () Bool)

(declare-fun lt!196330 () Rule!1478)

(assert (=> b!444467 (= e!271578 (= (rule!1518 separatorToken!170) lt!196330))))

(declare-fun b!444468 () Bool)

(declare-fun e!271569 () Bool)

(declare-datatypes ((tuple2!5224 0))(
  ( (tuple2!5225 (_1!2828 BalanceConc!3010) (_2!2828 BalanceConc!3008)) )
))
(declare-fun lt!196332 () tuple2!5224)

(declare-fun isEmpty!3260 (BalanceConc!3008) Bool)

(assert (=> b!444468 (= e!271569 (isEmpty!3260 (_2!2828 lt!196332)))))

(declare-fun b!444469 () Bool)

(declare-fun res!197237 () Bool)

(assert (=> b!444469 (=> (not res!197237) (not e!271552))))

(declare-fun rulesProduceIndividualToken!474 (LexerInterface!725 List!4344 Token!1422) Bool)

(assert (=> b!444469 (= res!197237 (rulesProduceIndividualToken!474 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!444470 () Bool)

(declare-fun e!271562 () Unit!7723)

(declare-fun Unit!7726 () Unit!7723)

(assert (=> b!444470 (= e!271562 Unit!7726)))

(declare-fun b!444471 () Bool)

(declare-fun e!271574 () Bool)

(assert (=> b!444471 (= e!271574 false)))

(declare-fun b!444472 () Bool)

(declare-fun res!197240 () Bool)

(assert (=> b!444472 (=> (not res!197240) (not e!271569))))

(declare-fun apply!1090 (BalanceConc!3010 Int) Token!1422)

(assert (=> b!444472 (= res!197240 (= (apply!1090 (_1!2828 lt!196332) 0) separatorToken!170))))

(declare-fun b!444473 () Bool)

(declare-fun e!271554 () Bool)

(declare-fun e!271558 () Bool)

(assert (=> b!444473 (= e!271554 e!271558)))

(declare-fun res!197221 () Bool)

(assert (=> b!444473 (=> res!197221 e!271558)))

(declare-fun lt!196319 () List!4343)

(declare-fun lt!196308 () List!4343)

(assert (=> b!444473 (= res!197221 (or (not (= lt!196319 lt!196308)) (not (= lt!196308 lt!196321)) (not (= lt!196319 lt!196321))))))

(declare-fun printList!399 (LexerInterface!725 List!4345) List!4343)

(assert (=> b!444473 (= lt!196308 (printList!399 thiss!17480 (Cons!4335 (h!9732 tokens!465) Nil!4335)))))

(declare-fun lt!196339 () BalanceConc!3008)

(assert (=> b!444473 (= lt!196319 (list!1917 lt!196339))))

(declare-fun lt!196329 () BalanceConc!3010)

(declare-fun printTailRec!411 (LexerInterface!725 BalanceConc!3010 Int BalanceConc!3008) BalanceConc!3008)

(assert (=> b!444473 (= lt!196339 (printTailRec!411 thiss!17480 lt!196329 0 (BalanceConc!3009 Empty!1500)))))

(declare-fun print!450 (LexerInterface!725 BalanceConc!3010) BalanceConc!3008)

(assert (=> b!444473 (= lt!196339 (print!450 thiss!17480 lt!196329))))

(declare-fun singletonSeq!385 (Token!1422) BalanceConc!3010)

(assert (=> b!444473 (= lt!196329 (singletonSeq!385 (h!9732 tokens!465)))))

(declare-fun b!444474 () Bool)

(declare-fun res!197219 () Bool)

(assert (=> b!444474 (=> (not res!197219) (not e!271553))))

(declare-fun lt!196297 () tuple2!5222)

(declare-fun isEmpty!3261 (List!4343) Bool)

(assert (=> b!444474 (= res!197219 (isEmpty!3261 (_2!2827 lt!196297)))))

(declare-fun e!271548 () Bool)

(declare-fun e!271575 () Bool)

(declare-fun tp!124798 () Bool)

(declare-fun b!444475 () Bool)

(declare-fun inv!5403 (Token!1422) Bool)

(assert (=> b!444475 (= e!271575 (and (inv!5403 (h!9732 tokens!465)) e!271548 tp!124798))))

(declare-fun b!444476 () Bool)

(declare-fun get!1569 (Option!1099) tuple2!5222)

(declare-fun head!1079 (List!4345) Token!1422)

(assert (=> b!444476 (= e!271571 (= (_1!2827 (get!1569 lt!196316)) (head!1079 tokens!465)))))

(declare-fun b!444477 () Bool)

(declare-fun e!271557 () Unit!7723)

(declare-fun Unit!7727 () Unit!7723)

(assert (=> b!444477 (= e!271557 Unit!7727)))

(assert (=> b!444477 false))

(declare-fun b!444478 () Bool)

(declare-fun Unit!7728 () Unit!7723)

(assert (=> b!444478 (= e!271562 Unit!7728)))

(declare-fun lt!196306 () List!4343)

(declare-fun lt!196300 () C!3048)

(declare-fun lt!196299 () Unit!7723)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!118 (Regex!1063 List!4343 C!3048) Unit!7723)

(assert (=> b!444478 (= lt!196299 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!118 (regex!839 (rule!1518 lt!196328)) lt!196306 lt!196300))))

(declare-fun res!197239 () Bool)

(assert (=> b!444478 (= res!197239 (not (matchR!381 (regex!839 (rule!1518 lt!196328)) lt!196306)))))

(assert (=> b!444478 (=> (not res!197239) (not e!271574))))

(assert (=> b!444478 e!271574))

(declare-fun b!444479 () Bool)

(declare-fun e!271555 () Bool)

(declare-fun e!271560 () Bool)

(assert (=> b!444479 (= e!271555 e!271560)))

(declare-fun res!197232 () Bool)

(assert (=> b!444479 (=> res!197232 e!271560)))

(declare-fun lt!196341 () Bool)

(assert (=> b!444479 (= res!197232 (not lt!196341))))

(assert (=> b!444479 e!271553))

(declare-fun res!197217 () Bool)

(assert (=> b!444479 (=> (not res!197217) (not e!271553))))

(assert (=> b!444479 (= res!197217 (= (_1!2827 lt!196297) (h!9732 tokens!465)))))

(declare-fun lt!196318 () Option!1099)

(assert (=> b!444479 (= lt!196297 (get!1569 lt!196318))))

(assert (=> b!444479 (isDefined!938 lt!196318)))

(assert (=> b!444479 (= lt!196318 (maxPrefix!441 thiss!17480 rules!1920 lt!196321))))

(declare-fun b!444480 () Bool)

(declare-fun e!271570 () Bool)

(declare-fun e!271551 () Bool)

(declare-fun tp!124807 () Bool)

(assert (=> b!444480 (= e!271570 (and e!271551 tp!124807))))

(declare-fun b!444481 () Bool)

(assert (=> b!444481 (= e!271566 e!271554)))

(declare-fun res!197238 () Bool)

(assert (=> b!444481 (=> res!197238 e!271554)))

(declare-fun e!271567 () Bool)

(assert (=> b!444481 (= res!197238 e!271567)))

(declare-fun res!197225 () Bool)

(assert (=> b!444481 (=> (not res!197225) (not e!271567))))

(assert (=> b!444481 (= res!197225 (not lt!196341))))

(assert (=> b!444481 (= lt!196341 (= lt!196304 lt!196303))))

(declare-fun e!271544 () Bool)

(assert (=> b!444482 (= e!271544 (and tp!124801 tp!124806))))

(declare-fun e!271556 () Bool)

(declare-fun tp!124799 () Bool)

(declare-fun b!444483 () Bool)

(declare-fun inv!5400 (String!5385) Bool)

(declare-fun inv!5404 (TokenValueInjection!1494) Bool)

(assert (=> b!444483 (= e!271551 (and tp!124799 (inv!5400 (tag!1093 (h!9731 rules!1920))) (inv!5404 (transformation!839 (h!9731 rules!1920))) e!271556))))

(declare-fun e!271576 () Bool)

(declare-fun b!444484 () Bool)

(declare-fun tp!124797 () Bool)

(declare-fun inv!21 (TokenValue!861) Bool)

(assert (=> b!444484 (= e!271548 (and (inv!21 (value!28227 (h!9732 tokens!465))) e!271576 tp!124797))))

(declare-fun b!444485 () Bool)

(declare-fun Unit!7729 () Unit!7723)

(assert (=> b!444485 (= e!271550 Unit!7729)))

(declare-fun b!444486 () Bool)

(declare-fun res!197216 () Bool)

(assert (=> b!444486 (=> (not res!197216) (not e!271552))))

(assert (=> b!444486 (= res!197216 (isSeparator!839 (rule!1518 separatorToken!170)))))

(declare-fun e!271561 () Bool)

(declare-fun tp!124802 () Bool)

(declare-fun b!444487 () Bool)

(declare-fun e!271564 () Bool)

(assert (=> b!444487 (= e!271561 (and (inv!21 (value!28227 separatorToken!170)) e!271564 tp!124802))))

(declare-fun b!444488 () Bool)

(declare-fun e!271549 () Bool)

(assert (=> b!444488 (= e!271549 e!271578)))

(declare-fun res!197227 () Bool)

(assert (=> b!444488 (=> (not res!197227) (not e!271578))))

(assert (=> b!444488 (= res!197227 (matchR!381 (regex!839 lt!196330) lt!196333))))

(declare-datatypes ((Option!1100 0))(
  ( (None!1099) (Some!1099 (v!15386 Rule!1478)) )
))
(declare-fun lt!196313 () Option!1100)

(declare-fun get!1570 (Option!1100) Rule!1478)

(assert (=> b!444488 (= lt!196330 (get!1570 lt!196313))))

(declare-fun b!444489 () Bool)

(declare-fun res!197236 () Bool)

(assert (=> b!444489 (=> (not res!197236) (not e!271579))))

(declare-fun lt!196323 () List!4343)

(declare-fun seqFromList!1044 (List!4343) BalanceConc!3008)

(assert (=> b!444489 (= res!197236 (= (list!1917 (seqFromList!1044 lt!196304)) lt!196323))))

(declare-fun b!444490 () Bool)

(declare-fun tp!124803 () Bool)

(assert (=> b!444490 (= e!271576 (and tp!124803 (inv!5400 (tag!1093 (rule!1518 (h!9732 tokens!465)))) (inv!5404 (transformation!839 (rule!1518 (h!9732 tokens!465)))) e!271544))))

(declare-fun b!444491 () Bool)

(declare-fun tp!124795 () Bool)

(declare-fun e!271573 () Bool)

(assert (=> b!444491 (= e!271564 (and tp!124795 (inv!5400 (tag!1093 (rule!1518 separatorToken!170))) (inv!5404 (transformation!839 (rule!1518 separatorToken!170))) e!271573))))

(declare-fun res!197233 () Bool)

(assert (=> b!444492 (=> (not res!197233) (not e!271552))))

(declare-fun forall!1248 (List!4345 Int) Bool)

(assert (=> b!444492 (= res!197233 (forall!1248 tokens!465 lambda!12889))))

(declare-fun b!444493 () Bool)

(assert (=> b!444493 (= e!271567 (not (= lt!196304 (++!1252 lt!196321 lt!196301))))))

(assert (=> b!444494 (= e!271556 (and tp!124805 tp!124796))))

(declare-fun b!444495 () Bool)

(declare-fun Unit!7730 () Unit!7723)

(assert (=> b!444495 (= e!271557 Unit!7730)))

(declare-fun b!444496 () Bool)

(assert (=> b!444496 (= e!271560 true)))

(declare-fun lt!196307 () Option!1099)

(assert (=> b!444496 (= lt!196307 (Some!1098 (tuple2!5223 separatorToken!170 lt!196301)))))

(declare-fun lt!196338 () Unit!7723)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!70 (LexerInterface!725 List!4344 Token!1422 Rule!1478 List!4343 Rule!1478) Unit!7723)

(assert (=> b!444496 (= lt!196338 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!70 thiss!17480 rules!1920 separatorToken!170 (rule!1518 separatorToken!170) lt!196301 (rule!1518 lt!196328)))))

(declare-fun lt!196336 () Unit!7723)

(assert (=> b!444496 (= lt!196336 e!271550)))

(declare-fun c!90022 () Bool)

(declare-fun contains!959 (List!4343 C!3048) Bool)

(declare-fun usedCharacters!140 (Regex!1063) List!4343)

(assert (=> b!444496 (= c!90022 (contains!959 (usedCharacters!140 (regex!839 (rule!1518 separatorToken!170))) lt!196324))))

(declare-fun head!1080 (List!4343) C!3048)

(assert (=> b!444496 (= lt!196324 (head!1080 lt!196301))))

(declare-fun lt!196327 () Unit!7723)

(assert (=> b!444496 (= lt!196327 e!271562)))

(declare-fun c!90023 () Bool)

(assert (=> b!444496 (= c!90023 (not (contains!959 (usedCharacters!140 (regex!839 (rule!1518 lt!196328))) lt!196300)))))

(assert (=> b!444496 (= lt!196300 (head!1080 lt!196306))))

(declare-fun e!271559 () Bool)

(assert (=> b!444496 e!271559))

(declare-fun res!197230 () Bool)

(assert (=> b!444496 (=> (not res!197230) (not e!271559))))

(declare-fun lt!196312 () Option!1100)

(declare-fun isDefined!939 (Option!1100) Bool)

(assert (=> b!444496 (= res!197230 (isDefined!939 lt!196312))))

(declare-fun getRuleFromTag!198 (LexerInterface!725 List!4344 String!5385) Option!1100)

(assert (=> b!444496 (= lt!196312 (getRuleFromTag!198 thiss!17480 rules!1920 (tag!1093 (rule!1518 lt!196328))))))

(declare-fun lt!196342 () Unit!7723)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!198 (LexerInterface!725 List!4344 List!4343 Token!1422) Unit!7723)

(assert (=> b!444496 (= lt!196342 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!198 thiss!17480 rules!1920 lt!196306 lt!196328))))

(assert (=> b!444496 (= lt!196306 (list!1917 (charsOf!482 lt!196328)))))

(declare-fun lt!196322 () Unit!7723)

(declare-fun forallContained!392 (List!4345 Int Token!1422) Unit!7723)

(assert (=> b!444496 (= lt!196322 (forallContained!392 tokens!465 lambda!12890 lt!196328))))

(declare-fun e!271546 () Bool)

(assert (=> b!444496 e!271546))

(declare-fun res!197209 () Bool)

(assert (=> b!444496 (=> (not res!197209) (not e!271546))))

(declare-fun lt!196296 () tuple2!5224)

(declare-fun size!3557 (BalanceConc!3010) Int)

(assert (=> b!444496 (= res!197209 (= (size!3557 (_1!2828 lt!196296)) 1))))

(declare-fun lt!196311 () BalanceConc!3008)

(declare-fun lex!517 (LexerInterface!725 List!4344 BalanceConc!3008) tuple2!5224)

(assert (=> b!444496 (= lt!196296 (lex!517 thiss!17480 rules!1920 lt!196311))))

(declare-fun lt!196335 () BalanceConc!3010)

(assert (=> b!444496 (= lt!196311 (printTailRec!411 thiss!17480 lt!196335 0 (BalanceConc!3009 Empty!1500)))))

(assert (=> b!444496 (= lt!196311 (print!450 thiss!17480 lt!196335))))

(assert (=> b!444496 (= lt!196335 (singletonSeq!385 lt!196328))))

(assert (=> b!444496 e!271549))

(declare-fun res!197210 () Bool)

(assert (=> b!444496 (=> (not res!197210) (not e!271549))))

(assert (=> b!444496 (= res!197210 (isDefined!939 lt!196313))))

(assert (=> b!444496 (= lt!196313 (getRuleFromTag!198 thiss!17480 rules!1920 (tag!1093 (rule!1518 separatorToken!170))))))

(declare-fun lt!196317 () Unit!7723)

(assert (=> b!444496 (= lt!196317 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!198 thiss!17480 rules!1920 lt!196333 separatorToken!170))))

(assert (=> b!444496 e!271569))

(declare-fun res!197231 () Bool)

(assert (=> b!444496 (=> (not res!197231) (not e!271569))))

(assert (=> b!444496 (= res!197231 (= (size!3557 (_1!2828 lt!196332)) 1))))

(declare-fun lt!196320 () BalanceConc!3008)

(assert (=> b!444496 (= lt!196332 (lex!517 thiss!17480 rules!1920 lt!196320))))

(declare-fun lt!196295 () BalanceConc!3010)

(assert (=> b!444496 (= lt!196320 (printTailRec!411 thiss!17480 lt!196295 0 (BalanceConc!3009 Empty!1500)))))

(assert (=> b!444496 (= lt!196320 (print!450 thiss!17480 lt!196295))))

(assert (=> b!444496 (= lt!196295 (singletonSeq!385 separatorToken!170))))

(assert (=> b!444496 (rulesProduceIndividualToken!474 thiss!17480 rules!1920 lt!196328)))

(declare-fun lt!196298 () Unit!7723)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!188 (LexerInterface!725 List!4344 List!4345 Token!1422) Unit!7723)

(assert (=> b!444496 (= lt!196298 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!188 thiss!17480 rules!1920 tokens!465 lt!196328))))

(assert (=> b!444496 (= lt!196328 (head!1079 (t!70139 tokens!465)))))

(declare-fun lt!196334 () Unit!7723)

(assert (=> b!444496 (= lt!196334 e!271557)))

(declare-fun c!90021 () Bool)

(declare-fun isEmpty!3262 (List!4345) Bool)

(assert (=> b!444496 (= c!90021 (isEmpty!3262 (t!70139 tokens!465)))))

(assert (=> b!444496 (= lt!196307 (maxPrefix!441 thiss!17480 rules!1920 lt!196302))))

(declare-fun lt!196326 () tuple2!5222)

(assert (=> b!444496 (= lt!196302 (_2!2827 lt!196326))))

(declare-fun lt!196310 () Unit!7723)

(declare-fun lemmaSamePrefixThenSameSuffix!284 (List!4343 List!4343 List!4343 List!4343 List!4343) Unit!7723)

(assert (=> b!444496 (= lt!196310 (lemmaSamePrefixThenSameSuffix!284 lt!196321 lt!196302 lt!196321 (_2!2827 lt!196326) lt!196304))))

(assert (=> b!444496 (= lt!196326 (get!1569 (maxPrefix!441 thiss!17480 rules!1920 lt!196304)))))

(declare-fun isPrefix!499 (List!4343 List!4343) Bool)

(assert (=> b!444496 (isPrefix!499 lt!196321 lt!196303)))

(declare-fun lt!196337 () Unit!7723)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!390 (List!4343 List!4343) Unit!7723)

(assert (=> b!444496 (= lt!196337 (lemmaConcatTwoListThenFirstIsPrefix!390 lt!196321 lt!196302))))

(assert (=> b!444496 e!271547))

(declare-fun res!197235 () Bool)

(assert (=> b!444496 (=> res!197235 e!271547)))

(assert (=> b!444496 (= res!197235 (isEmpty!3262 tokens!465))))

(declare-fun lt!196315 () Unit!7723)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!246 (LexerInterface!725 List!4344 List!4345 Token!1422) Unit!7723)

(assert (=> b!444496 (= lt!196315 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!246 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!444497 () Bool)

(assert (=> b!444497 (= e!271552 e!271579)))

(declare-fun res!197211 () Bool)

(assert (=> b!444497 (=> (not res!197211) (not e!271579))))

(assert (=> b!444497 (= res!197211 (= lt!196304 lt!196323))))

(assert (=> b!444497 (= lt!196323 (list!1917 (printWithSeparatorTokenWhenNeededRec!398 thiss!17480 rules!1920 lt!196309 separatorToken!170 0)))))

(assert (=> b!444497 (= lt!196304 (printWithSeparatorTokenWhenNeededList!406 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun res!197224 () Bool)

(assert (=> start!41946 (=> (not res!197224) (not e!271565))))

(assert (=> start!41946 (= res!197224 ((_ is Lexer!723) thiss!17480))))

(assert (=> start!41946 e!271565))

(assert (=> start!41946 true))

(assert (=> start!41946 e!271570))

(assert (=> start!41946 (and (inv!5403 separatorToken!170) e!271561)))

(assert (=> start!41946 e!271575))

(declare-fun b!444498 () Bool)

(assert (=> b!444498 (= e!271546 (isEmpty!3260 (_2!2828 lt!196296)))))

(assert (=> b!444499 (= e!271558 e!271555)))

(declare-fun res!197229 () Bool)

(assert (=> b!444499 (=> res!197229 e!271555)))

(declare-datatypes ((tuple2!5226 0))(
  ( (tuple2!5227 (_1!2829 Token!1422) (_2!2829 BalanceConc!3008)) )
))
(declare-datatypes ((Option!1101 0))(
  ( (None!1100) (Some!1100 (v!15387 tuple2!5226)) )
))
(declare-fun isDefined!940 (Option!1101) Bool)

(declare-fun maxPrefixZipperSequence!404 (LexerInterface!725 List!4344 BalanceConc!3008) Option!1101)

(assert (=> b!444499 (= res!197229 (not (isDefined!940 (maxPrefixZipperSequence!404 thiss!17480 rules!1920 (seqFromList!1044 (originalCharacters!882 (h!9732 tokens!465)))))))))

(declare-fun lt!196305 () Unit!7723)

(assert (=> b!444499 (= lt!196305 (forallContained!392 tokens!465 lambda!12890 (h!9732 tokens!465)))))

(assert (=> b!444499 (= lt!196321 (originalCharacters!882 (h!9732 tokens!465)))))

(declare-fun b!444500 () Bool)

(declare-fun e!271545 () Bool)

(assert (=> b!444500 (= e!271559 e!271545)))

(declare-fun res!197213 () Bool)

(assert (=> b!444500 (=> (not res!197213) (not e!271545))))

(declare-fun lt!196325 () Rule!1478)

(assert (=> b!444500 (= res!197213 (matchR!381 (regex!839 lt!196325) lt!196306))))

(assert (=> b!444500 (= lt!196325 (get!1570 lt!196312))))

(declare-fun b!444501 () Bool)

(declare-fun res!197234 () Bool)

(assert (=> b!444501 (=> res!197234 e!271558)))

(declare-fun isEmpty!3263 (BalanceConc!3010) Bool)

(assert (=> b!444501 (= res!197234 (isEmpty!3263 (_1!2828 (lex!517 thiss!17480 rules!1920 (seqFromList!1044 lt!196321)))))))

(declare-fun b!444502 () Bool)

(declare-fun res!197222 () Bool)

(assert (=> b!444502 (=> (not res!197222) (not e!271565))))

(declare-fun rulesInvariant!691 (LexerInterface!725 List!4344) Bool)

(assert (=> b!444502 (= res!197222 (rulesInvariant!691 thiss!17480 rules!1920))))

(declare-fun b!444503 () Bool)

(declare-fun res!197215 () Bool)

(assert (=> b!444503 (=> (not res!197215) (not e!271552))))

(declare-fun sepAndNonSepRulesDisjointChars!428 (List!4344 List!4344) Bool)

(assert (=> b!444503 (= res!197215 (sepAndNonSepRulesDisjointChars!428 rules!1920 rules!1920))))

(declare-fun b!444504 () Bool)

(declare-fun res!197218 () Bool)

(assert (=> b!444504 (=> res!197218 e!271558)))

(assert (=> b!444504 (= res!197218 (not (rulesProduceIndividualToken!474 thiss!17480 rules!1920 (h!9732 tokens!465))))))

(declare-fun b!444505 () Bool)

(declare-fun res!197212 () Bool)

(assert (=> b!444505 (=> (not res!197212) (not e!271546))))

(assert (=> b!444505 (= res!197212 (= (apply!1090 (_1!2828 lt!196296) 0) lt!196328))))

(declare-fun b!444506 () Bool)

(assert (=> b!444506 (= e!271545 (= (rule!1518 lt!196328) lt!196325))))

(assert (=> b!444507 (= e!271573 (and tp!124800 tp!124804))))

(assert (= (and start!41946 res!197224) b!444460))

(assert (= (and b!444460 res!197226) b!444502))

(assert (= (and b!444502 res!197222) b!444463))

(assert (= (and b!444463 res!197220) b!444469))

(assert (= (and b!444469 res!197237) b!444486))

(assert (= (and b!444486 res!197216) b!444492))

(assert (= (and b!444492 res!197233) b!444503))

(assert (= (and b!444503 res!197215) b!444462))

(assert (= (and b!444462 res!197228) b!444497))

(assert (= (and b!444497 res!197211) b!444489))

(assert (= (and b!444489 res!197236) b!444466))

(assert (= (and b!444466 (not res!197223)) b!444481))

(assert (= (and b!444481 res!197225) b!444493))

(assert (= (and b!444481 (not res!197238)) b!444473))

(assert (= (and b!444473 (not res!197221)) b!444504))

(assert (= (and b!444504 (not res!197218)) b!444501))

(assert (= (and b!444501 (not res!197234)) b!444499))

(assert (= (and b!444499 (not res!197229)) b!444479))

(assert (= (and b!444479 res!197217) b!444474))

(assert (= (and b!444474 res!197219) b!444464))

(assert (= (and b!444479 (not res!197232)) b!444496))

(assert (= (and b!444496 (not res!197235)) b!444461))

(assert (= (and b!444461 res!197214) b!444476))

(assert (= (and b!444496 c!90021) b!444477))

(assert (= (and b!444496 (not c!90021)) b!444495))

(assert (= (and b!444496 res!197231) b!444472))

(assert (= (and b!444472 res!197240) b!444468))

(assert (= (and b!444496 res!197210) b!444488))

(assert (= (and b!444488 res!197227) b!444467))

(assert (= (and b!444496 res!197209) b!444505))

(assert (= (and b!444505 res!197212) b!444498))

(assert (= (and b!444496 res!197230) b!444500))

(assert (= (and b!444500 res!197213) b!444506))

(assert (= (and b!444496 c!90023) b!444478))

(assert (= (and b!444496 (not c!90023)) b!444470))

(assert (= (and b!444478 res!197239) b!444471))

(assert (= (and b!444496 c!90022) b!444465))

(assert (= (and b!444496 (not c!90022)) b!444485))

(assert (= b!444483 b!444494))

(assert (= b!444480 b!444483))

(assert (= (and start!41946 ((_ is Cons!4334) rules!1920)) b!444480))

(assert (= b!444491 b!444507))

(assert (= b!444487 b!444491))

(assert (= start!41946 b!444487))

(assert (= b!444490 b!444482))

(assert (= b!444484 b!444490))

(assert (= b!444475 b!444484))

(assert (= (and start!41946 ((_ is Cons!4335) tokens!465)) b!444475))

(declare-fun m!701587 () Bool)

(assert (=> start!41946 m!701587))

(declare-fun m!701589 () Bool)

(assert (=> b!444487 m!701589))

(declare-fun m!701591 () Bool)

(assert (=> b!444478 m!701591))

(declare-fun m!701593 () Bool)

(assert (=> b!444478 m!701593))

(declare-fun m!701595 () Bool)

(assert (=> b!444493 m!701595))

(declare-fun m!701597 () Bool)

(assert (=> b!444483 m!701597))

(declare-fun m!701599 () Bool)

(assert (=> b!444483 m!701599))

(declare-fun m!701601 () Bool)

(assert (=> b!444465 m!701601))

(declare-fun m!701603 () Bool)

(assert (=> b!444489 m!701603))

(assert (=> b!444489 m!701603))

(declare-fun m!701605 () Bool)

(assert (=> b!444489 m!701605))

(declare-fun m!701607 () Bool)

(assert (=> b!444484 m!701607))

(declare-fun m!701609 () Bool)

(assert (=> b!444498 m!701609))

(declare-fun m!701611 () Bool)

(assert (=> b!444479 m!701611))

(declare-fun m!701613 () Bool)

(assert (=> b!444479 m!701613))

(declare-fun m!701615 () Bool)

(assert (=> b!444479 m!701615))

(declare-fun m!701617 () Bool)

(assert (=> b!444466 m!701617))

(declare-fun m!701619 () Bool)

(assert (=> b!444466 m!701619))

(declare-fun m!701621 () Bool)

(assert (=> b!444466 m!701621))

(declare-fun m!701623 () Bool)

(assert (=> b!444466 m!701623))

(assert (=> b!444466 m!701621))

(declare-fun m!701625 () Bool)

(assert (=> b!444466 m!701625))

(declare-fun m!701627 () Bool)

(assert (=> b!444466 m!701627))

(declare-fun m!701629 () Bool)

(assert (=> b!444466 m!701629))

(assert (=> b!444466 m!701625))

(declare-fun m!701631 () Bool)

(assert (=> b!444466 m!701631))

(declare-fun m!701633 () Bool)

(assert (=> b!444466 m!701633))

(assert (=> b!444466 m!701629))

(declare-fun m!701635 () Bool)

(assert (=> b!444466 m!701635))

(declare-fun m!701637 () Bool)

(assert (=> b!444466 m!701637))

(declare-fun m!701639 () Bool)

(assert (=> b!444466 m!701639))

(declare-fun m!701641 () Bool)

(assert (=> b!444466 m!701641))

(assert (=> b!444466 m!701617))

(assert (=> b!444466 m!701637))

(declare-fun m!701643 () Bool)

(assert (=> b!444490 m!701643))

(declare-fun m!701645 () Bool)

(assert (=> b!444490 m!701645))

(declare-fun m!701647 () Bool)

(assert (=> b!444504 m!701647))

(declare-fun m!701649 () Bool)

(assert (=> b!444501 m!701649))

(assert (=> b!444501 m!701649))

(declare-fun m!701651 () Bool)

(assert (=> b!444501 m!701651))

(declare-fun m!701653 () Bool)

(assert (=> b!444501 m!701653))

(declare-fun m!701655 () Bool)

(assert (=> b!444500 m!701655))

(declare-fun m!701657 () Bool)

(assert (=> b!444500 m!701657))

(declare-fun m!701659 () Bool)

(assert (=> b!444503 m!701659))

(declare-fun m!701661 () Bool)

(assert (=> b!444474 m!701661))

(declare-fun m!701663 () Bool)

(assert (=> b!444464 m!701663))

(declare-fun m!701665 () Bool)

(assert (=> b!444491 m!701665))

(declare-fun m!701667 () Bool)

(assert (=> b!444491 m!701667))

(declare-fun m!701669 () Bool)

(assert (=> b!444460 m!701669))

(declare-fun m!701671 () Bool)

(assert (=> b!444475 m!701671))

(declare-fun m!701673 () Bool)

(assert (=> b!444488 m!701673))

(declare-fun m!701675 () Bool)

(assert (=> b!444488 m!701675))

(declare-fun m!701677 () Bool)

(assert (=> b!444472 m!701677))

(declare-fun m!701679 () Bool)

(assert (=> b!444468 m!701679))

(declare-fun m!701681 () Bool)

(assert (=> b!444492 m!701681))

(declare-fun m!701683 () Bool)

(assert (=> b!444469 m!701683))

(declare-fun m!701685 () Bool)

(assert (=> b!444496 m!701685))

(declare-fun m!701687 () Bool)

(assert (=> b!444496 m!701687))

(declare-fun m!701689 () Bool)

(assert (=> b!444496 m!701689))

(declare-fun m!701691 () Bool)

(assert (=> b!444496 m!701691))

(declare-fun m!701693 () Bool)

(assert (=> b!444496 m!701693))

(declare-fun m!701695 () Bool)

(assert (=> b!444496 m!701695))

(declare-fun m!701697 () Bool)

(assert (=> b!444496 m!701697))

(declare-fun m!701699 () Bool)

(assert (=> b!444496 m!701699))

(declare-fun m!701701 () Bool)

(assert (=> b!444496 m!701701))

(declare-fun m!701703 () Bool)

(assert (=> b!444496 m!701703))

(declare-fun m!701705 () Bool)

(assert (=> b!444496 m!701705))

(declare-fun m!701707 () Bool)

(assert (=> b!444496 m!701707))

(declare-fun m!701709 () Bool)

(assert (=> b!444496 m!701709))

(assert (=> b!444496 m!701705))

(declare-fun m!701711 () Bool)

(assert (=> b!444496 m!701711))

(declare-fun m!701713 () Bool)

(assert (=> b!444496 m!701713))

(declare-fun m!701715 () Bool)

(assert (=> b!444496 m!701715))

(declare-fun m!701717 () Bool)

(assert (=> b!444496 m!701717))

(declare-fun m!701719 () Bool)

(assert (=> b!444496 m!701719))

(declare-fun m!701721 () Bool)

(assert (=> b!444496 m!701721))

(declare-fun m!701723 () Bool)

(assert (=> b!444496 m!701723))

(declare-fun m!701725 () Bool)

(assert (=> b!444496 m!701725))

(declare-fun m!701727 () Bool)

(assert (=> b!444496 m!701727))

(declare-fun m!701729 () Bool)

(assert (=> b!444496 m!701729))

(declare-fun m!701731 () Bool)

(assert (=> b!444496 m!701731))

(declare-fun m!701733 () Bool)

(assert (=> b!444496 m!701733))

(declare-fun m!701735 () Bool)

(assert (=> b!444496 m!701735))

(declare-fun m!701737 () Bool)

(assert (=> b!444496 m!701737))

(declare-fun m!701739 () Bool)

(assert (=> b!444496 m!701739))

(declare-fun m!701741 () Bool)

(assert (=> b!444496 m!701741))

(assert (=> b!444496 m!701729))

(declare-fun m!701743 () Bool)

(assert (=> b!444496 m!701743))

(declare-fun m!701745 () Bool)

(assert (=> b!444496 m!701745))

(declare-fun m!701747 () Bool)

(assert (=> b!444496 m!701747))

(declare-fun m!701749 () Bool)

(assert (=> b!444496 m!701749))

(declare-fun m!701751 () Bool)

(assert (=> b!444496 m!701751))

(assert (=> b!444496 m!701715))

(declare-fun m!701753 () Bool)

(assert (=> b!444496 m!701753))

(declare-fun m!701755 () Bool)

(assert (=> b!444496 m!701755))

(assert (=> b!444496 m!701691))

(declare-fun m!701757 () Bool)

(assert (=> b!444496 m!701757))

(declare-fun m!701759 () Bool)

(assert (=> b!444496 m!701759))

(declare-fun m!701761 () Bool)

(assert (=> b!444473 m!701761))

(declare-fun m!701763 () Bool)

(assert (=> b!444473 m!701763))

(declare-fun m!701765 () Bool)

(assert (=> b!444473 m!701765))

(declare-fun m!701767 () Bool)

(assert (=> b!444473 m!701767))

(declare-fun m!701769 () Bool)

(assert (=> b!444473 m!701769))

(declare-fun m!701771 () Bool)

(assert (=> b!444505 m!701771))

(declare-fun m!701773 () Bool)

(assert (=> b!444497 m!701773))

(assert (=> b!444497 m!701773))

(declare-fun m!701775 () Bool)

(assert (=> b!444497 m!701775))

(declare-fun m!701777 () Bool)

(assert (=> b!444497 m!701777))

(declare-fun m!701779 () Bool)

(assert (=> b!444499 m!701779))

(assert (=> b!444499 m!701779))

(declare-fun m!701781 () Bool)

(assert (=> b!444499 m!701781))

(assert (=> b!444499 m!701781))

(declare-fun m!701783 () Bool)

(assert (=> b!444499 m!701783))

(declare-fun m!701785 () Bool)

(assert (=> b!444499 m!701785))

(declare-fun m!701787 () Bool)

(assert (=> b!444502 m!701787))

(declare-fun m!701789 () Bool)

(assert (=> b!444476 m!701789))

(declare-fun m!701791 () Bool)

(assert (=> b!444476 m!701791))

(declare-fun m!701793 () Bool)

(assert (=> b!444463 m!701793))

(declare-fun m!701795 () Bool)

(assert (=> b!444463 m!701795))

(declare-fun m!701797 () Bool)

(assert (=> b!444461 m!701797))

(assert (=> b!444461 m!701691))

(check-sat (not b!444493) (not b!444468) (not b!444461) (not b!444501) (not b!444463) (not b!444516) (not b!444491) (not b_next!12361) (not b!444479) (not b_next!12353) (not b!444460) (not b!444484) (not b!444505) (not b!444497) b_and!47887 (not b!444466) (not b!444488) (not b!444464) (not start!41946) (not b!444480) (not b!444476) b_and!47877 (not b!444469) (not b_next!12359) (not b_next!12363) (not b!444489) (not b_next!12357) b_and!47883 (not b!444474) (not b!444472) (not b!444483) b_and!47885 (not b!444465) (not b!444503) (not b!444490) b_and!47879 (not b!444504) (not b!444475) (not b!444500) b_and!47881 (not b!444496) (not b_next!12355) (not b!444502) (not b!444492) (not b!444478) (not b!444487) (not b!444499) (not b!444473) (not b!444498))
(check-sat (not b_next!12353) b_and!47887 b_and!47877 b_and!47885 b_and!47879 (not b_next!12361) (not b_next!12359) (not b_next!12363) (not b_next!12357) b_and!47883 b_and!47881 (not b_next!12355))
