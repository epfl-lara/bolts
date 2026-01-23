; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30090 () Bool)

(assert start!30090)

(declare-fun b!278571 () Bool)

(declare-fun b_free!10313 () Bool)

(declare-fun b_next!10313 () Bool)

(assert (=> b!278571 (= b_free!10313 (not b_next!10313))))

(declare-fun tp!104097 () Bool)

(declare-fun b_and!22357 () Bool)

(assert (=> b!278571 (= tp!104097 b_and!22357)))

(declare-fun b_free!10315 () Bool)

(declare-fun b_next!10315 () Bool)

(assert (=> b!278571 (= b_free!10315 (not b_next!10315))))

(declare-fun tp!104100 () Bool)

(declare-fun b_and!22359 () Bool)

(assert (=> b!278571 (= tp!104100 b_and!22359)))

(declare-fun b!278569 () Bool)

(declare-fun b_free!10317 () Bool)

(declare-fun b_next!10317 () Bool)

(assert (=> b!278569 (= b_free!10317 (not b_next!10317))))

(declare-fun tp!104098 () Bool)

(declare-fun b_and!22361 () Bool)

(assert (=> b!278569 (= tp!104098 b_and!22361)))

(declare-fun b_free!10319 () Bool)

(declare-fun b_next!10319 () Bool)

(assert (=> b!278569 (= b_free!10319 (not b_next!10319))))

(declare-fun tp!104091 () Bool)

(declare-fun b_and!22363 () Bool)

(assert (=> b!278569 (= tp!104091 b_and!22363)))

(declare-fun b!278555 () Bool)

(declare-fun b_free!10321 () Bool)

(declare-fun b_next!10321 () Bool)

(assert (=> b!278555 (= b_free!10321 (not b_next!10321))))

(declare-fun tp!104102 () Bool)

(declare-fun b_and!22365 () Bool)

(assert (=> b!278555 (= tp!104102 b_and!22365)))

(declare-fun b_free!10323 () Bool)

(declare-fun b_next!10323 () Bool)

(assert (=> b!278555 (= b_free!10323 (not b_next!10323))))

(declare-fun tp!104096 () Bool)

(declare-fun b_and!22367 () Bool)

(assert (=> b!278555 (= tp!104096 b_and!22367)))

(declare-fun bs!31180 () Bool)

(declare-fun b!278584 () Bool)

(declare-fun b!278563 () Bool)

(assert (= bs!31180 (and b!278584 b!278563)))

(declare-fun lambda!9520 () Int)

(declare-fun lambda!9519 () Int)

(assert (=> bs!31180 (not (= lambda!9520 lambda!9519))))

(declare-fun b!278614 () Bool)

(declare-fun e!173382 () Bool)

(assert (=> b!278614 (= e!173382 true)))

(declare-fun b!278613 () Bool)

(declare-fun e!173381 () Bool)

(assert (=> b!278613 (= e!173381 e!173382)))

(declare-fun b!278612 () Bool)

(declare-fun e!173380 () Bool)

(assert (=> b!278612 (= e!173380 e!173381)))

(assert (=> b!278584 e!173380))

(assert (= b!278613 b!278614))

(assert (= b!278612 b!278613))

(declare-datatypes ((List!3902 0))(
  ( (Nil!3892) (Cons!3892 (h!9289 (_ BitVec 16)) (t!39216 List!3902)) )
))
(declare-datatypes ((TokenValue!767 0))(
  ( (FloatLiteralValue!1534 (text!5814 List!3902)) (TokenValueExt!766 (__x!3021 Int)) (Broken!3835 (value!25522 List!3902)) (Object!776) (End!767) (Def!767) (Underscore!767) (Match!767) (Else!767) (Error!767) (Case!767) (If!767) (Extends!767) (Abstract!767) (Class!767) (Val!767) (DelimiterValue!1534 (del!827 List!3902)) (KeywordValue!773 (value!25523 List!3902)) (CommentValue!1534 (value!25524 List!3902)) (WhitespaceValue!1534 (value!25525 List!3902)) (IndentationValue!767 (value!25526 List!3902)) (String!4914) (Int32!767) (Broken!3836 (value!25527 List!3902)) (Boolean!768) (Unit!5127) (OperatorValue!770 (op!827 List!3902)) (IdentifierValue!1534 (value!25528 List!3902)) (IdentifierValue!1535 (value!25529 List!3902)) (WhitespaceValue!1535 (value!25530 List!3902)) (True!1534) (False!1534) (Broken!3837 (value!25531 List!3902)) (Broken!3838 (value!25532 List!3902)) (True!1535) (RightBrace!767) (RightBracket!767) (Colon!767) (Null!767) (Comma!767) (LeftBracket!767) (False!1535) (LeftBrace!767) (ImaginaryLiteralValue!767 (text!5815 List!3902)) (StringLiteralValue!2301 (value!25533 List!3902)) (EOFValue!767 (value!25534 List!3902)) (IdentValue!767 (value!25535 List!3902)) (DelimiterValue!1535 (value!25536 List!3902)) (DedentValue!767 (value!25537 List!3902)) (NewLineValue!767 (value!25538 List!3902)) (IntegerValue!2301 (value!25539 (_ BitVec 32)) (text!5816 List!3902)) (IntegerValue!2302 (value!25540 Int) (text!5817 List!3902)) (Times!767) (Or!767) (Equal!767) (Minus!767) (Broken!3839 (value!25541 List!3902)) (And!767) (Div!767) (LessEqual!767) (Mod!767) (Concat!1736) (Not!767) (Plus!767) (SpaceValue!767 (value!25542 List!3902)) (IntegerValue!2303 (value!25543 Int) (text!5818 List!3902)) (StringLiteralValue!2302 (text!5819 List!3902)) (FloatLiteralValue!1535 (text!5820 List!3902)) (BytesLiteralValue!767 (value!25544 List!3902)) (CommentValue!1535 (value!25545 List!3902)) (StringLiteralValue!2303 (value!25546 List!3902)) (ErrorTokenValue!767 (msg!828 List!3902)) )
))
(declare-datatypes ((C!2860 0))(
  ( (C!2861 (val!1316 Int)) )
))
(declare-datatypes ((List!3903 0))(
  ( (Nil!3893) (Cons!3893 (h!9290 C!2860) (t!39217 List!3903)) )
))
(declare-datatypes ((IArray!2625 0))(
  ( (IArray!2626 (innerList!1370 List!3903)) )
))
(declare-datatypes ((Conc!1312 0))(
  ( (Node!1312 (left!3215 Conc!1312) (right!3545 Conc!1312) (csize!2854 Int) (cheight!1523 Int)) (Leaf!2024 (xs!3911 IArray!2625) (csize!2855 Int)) (Empty!1312) )
))
(declare-datatypes ((BalanceConc!2632 0))(
  ( (BalanceConc!2633 (c!52574 Conc!1312)) )
))
(declare-datatypes ((TokenValueInjection!1306 0))(
  ( (TokenValueInjection!1307 (toValue!1488 Int) (toChars!1347 Int)) )
))
(declare-datatypes ((String!4915 0))(
  ( (String!4916 (value!25547 String)) )
))
(declare-datatypes ((Regex!969 0))(
  ( (ElementMatch!969 (c!52575 C!2860)) (Concat!1737 (regOne!2450 Regex!969) (regTwo!2450 Regex!969)) (EmptyExpr!969) (Star!969 (reg!1298 Regex!969)) (EmptyLang!969) (Union!969 (regOne!2451 Regex!969) (regTwo!2451 Regex!969)) )
))
(declare-datatypes ((Rule!1290 0))(
  ( (Rule!1291 (regex!745 Regex!969) (tag!955 String!4915) (isSeparator!745 Bool) (transformation!745 TokenValueInjection!1306)) )
))
(declare-datatypes ((List!3904 0))(
  ( (Nil!3894) (Cons!3894 (h!9291 Rule!1290) (t!39218 List!3904)) )
))
(declare-fun rules!1920 () List!3904)

(get-info :version)

(assert (= (and b!278584 ((_ is Cons!3894) rules!1920)) b!278612))

(declare-fun order!3045 () Int)

(declare-fun order!3047 () Int)

(declare-fun dynLambda!2033 (Int Int) Int)

(declare-fun dynLambda!2034 (Int Int) Int)

(assert (=> b!278614 (< (dynLambda!2033 order!3045 (toValue!1488 (transformation!745 (h!9291 rules!1920)))) (dynLambda!2034 order!3047 lambda!9520))))

(declare-fun order!3049 () Int)

(declare-fun dynLambda!2035 (Int Int) Int)

(assert (=> b!278614 (< (dynLambda!2035 order!3049 (toChars!1347 (transformation!745 (h!9291 rules!1920)))) (dynLambda!2034 order!3047 lambda!9520))))

(assert (=> b!278584 true))

(declare-fun res!127390 () Bool)

(declare-fun e!173345 () Bool)

(assert (=> start!30090 (=> (not res!127390) (not e!173345))))

(declare-datatypes ((LexerInterface!631 0))(
  ( (LexerInterfaceExt!628 (__x!3022 Int)) (Lexer!629) )
))
(declare-fun thiss!17480 () LexerInterface!631)

(assert (=> start!30090 (= res!127390 ((_ is Lexer!629) thiss!17480))))

(assert (=> start!30090 e!173345))

(assert (=> start!30090 true))

(declare-fun e!173364 () Bool)

(assert (=> start!30090 e!173364))

(declare-datatypes ((Token!1234 0))(
  ( (Token!1235 (value!25548 TokenValue!767) (rule!1332 Rule!1290) (size!3106 Int) (originalCharacters!788 List!3903)) )
))
(declare-fun separatorToken!170 () Token!1234)

(declare-fun e!173373 () Bool)

(declare-fun inv!4813 (Token!1234) Bool)

(assert (=> start!30090 (and (inv!4813 separatorToken!170) e!173373)))

(declare-fun e!173342 () Bool)

(assert (=> start!30090 e!173342))

(declare-fun e!173353 () Bool)

(assert (=> b!278555 (= e!173353 (and tp!104102 tp!104096))))

(declare-fun b!278556 () Bool)

(declare-fun res!127391 () Bool)

(declare-fun e!173347 () Bool)

(assert (=> b!278556 (=> (not res!127391) (not e!173347))))

(declare-datatypes ((List!3905 0))(
  ( (Nil!3895) (Cons!3895 (h!9292 Token!1234) (t!39219 List!3905)) )
))
(declare-fun tokens!465 () List!3905)

(assert (=> b!278556 (= res!127391 ((_ is Cons!3895) tokens!465))))

(declare-fun b!278557 () Bool)

(declare-fun e!173371 () Bool)

(declare-fun e!173363 () Bool)

(assert (=> b!278557 (= e!173371 (not e!173363))))

(declare-fun res!127395 () Bool)

(assert (=> b!278557 (=> res!127395 e!173363)))

(declare-fun lt!116272 () List!3903)

(declare-fun lt!116303 () BalanceConc!2632)

(declare-fun list!1608 (BalanceConc!2632) List!3903)

(assert (=> b!278557 (= res!127395 (not (= lt!116272 (list!1608 lt!116303))))))

(declare-datatypes ((IArray!2627 0))(
  ( (IArray!2628 (innerList!1371 List!3905)) )
))
(declare-datatypes ((Conc!1313 0))(
  ( (Node!1313 (left!3216 Conc!1313) (right!3546 Conc!1313) (csize!2856 Int) (cheight!1524 Int)) (Leaf!2025 (xs!3912 IArray!2627) (csize!2857 Int)) (Empty!1313) )
))
(declare-datatypes ((BalanceConc!2634 0))(
  ( (BalanceConc!2635 (c!52576 Conc!1313)) )
))
(declare-fun printWithSeparatorTokenWhenNeededRec!306 (LexerInterface!631 List!3904 BalanceConc!2634 Token!1234 Int) BalanceConc!2632)

(declare-fun seqFromList!857 (List!3905) BalanceConc!2634)

(assert (=> b!278557 (= lt!116303 (printWithSeparatorTokenWhenNeededRec!306 thiss!17480 rules!1920 (seqFromList!857 (t!39219 tokens!465)) separatorToken!170 0))))

(declare-fun lt!116282 () List!3903)

(declare-fun lt!116307 () List!3903)

(assert (=> b!278557 (= lt!116282 lt!116307)))

(declare-fun lt!116274 () List!3903)

(declare-fun lt!116261 () List!3903)

(declare-fun ++!1030 (List!3903 List!3903) List!3903)

(assert (=> b!278557 (= lt!116307 (++!1030 lt!116274 lt!116261))))

(declare-fun lt!116264 () List!3903)

(assert (=> b!278557 (= lt!116282 (++!1030 (++!1030 lt!116274 lt!116264) lt!116272))))

(declare-datatypes ((Unit!5128 0))(
  ( (Unit!5129) )
))
(declare-fun lt!116304 () Unit!5128)

(declare-fun lemmaConcatAssociativity!446 (List!3903 List!3903 List!3903) Unit!5128)

(assert (=> b!278557 (= lt!116304 (lemmaConcatAssociativity!446 lt!116274 lt!116264 lt!116272))))

(declare-fun charsOf!390 (Token!1234) BalanceConc!2632)

(assert (=> b!278557 (= lt!116274 (list!1608 (charsOf!390 (h!9292 tokens!465))))))

(assert (=> b!278557 (= lt!116261 (++!1030 lt!116264 lt!116272))))

(declare-fun printWithSeparatorTokenWhenNeededList!314 (LexerInterface!631 List!3904 List!3905 Token!1234) List!3903)

(assert (=> b!278557 (= lt!116272 (printWithSeparatorTokenWhenNeededList!314 thiss!17480 rules!1920 (t!39219 tokens!465) separatorToken!170))))

(assert (=> b!278557 (= lt!116264 (list!1608 (charsOf!390 separatorToken!170)))))

(declare-fun b!278558 () Bool)

(declare-fun e!173337 () Bool)

(declare-fun e!173357 () Bool)

(assert (=> b!278558 (= e!173337 e!173357)))

(declare-fun res!127387 () Bool)

(assert (=> b!278558 (=> (not res!127387) (not e!173357))))

(declare-fun lt!116289 () Rule!1290)

(declare-fun lt!116268 () List!3903)

(declare-fun matchR!291 (Regex!969 List!3903) Bool)

(assert (=> b!278558 (= res!127387 (matchR!291 (regex!745 lt!116289) lt!116268))))

(declare-datatypes ((Option!849 0))(
  ( (None!848) (Some!848 (v!14749 Rule!1290)) )
))
(declare-fun lt!116276 () Option!849)

(declare-fun get!1307 (Option!849) Rule!1290)

(assert (=> b!278558 (= lt!116289 (get!1307 lt!116276))))

(declare-fun b!278559 () Bool)

(declare-fun e!173356 () Bool)

(declare-datatypes ((tuple2!4408 0))(
  ( (tuple2!4409 (_1!2420 BalanceConc!2634) (_2!2420 BalanceConc!2632)) )
))
(declare-fun lt!116309 () tuple2!4408)

(declare-fun isEmpty!2534 (BalanceConc!2632) Bool)

(assert (=> b!278559 (= e!173356 (isEmpty!2534 (_2!2420 lt!116309)))))

(declare-fun b!278560 () Bool)

(declare-fun e!173339 () Bool)

(assert (=> b!278560 (= e!173339 false)))

(declare-fun b!278561 () Bool)

(declare-fun e!173360 () Bool)

(declare-datatypes ((tuple2!4410 0))(
  ( (tuple2!4411 (_1!2421 Token!1234) (_2!2421 List!3903)) )
))
(declare-datatypes ((Option!850 0))(
  ( (None!849) (Some!849 (v!14750 tuple2!4410)) )
))
(declare-fun lt!116260 () Option!850)

(declare-fun get!1308 (Option!850) tuple2!4410)

(declare-fun head!917 (List!3905) Token!1234)

(assert (=> b!278561 (= e!173360 (= (_1!2421 (get!1308 lt!116260)) (head!917 tokens!465)))))

(declare-fun b!278562 () Bool)

(declare-fun e!173346 () Bool)

(declare-fun tp!104093 () Bool)

(assert (=> b!278562 (= e!173342 (and (inv!4813 (h!9292 tokens!465)) e!173346 tp!104093))))

(declare-fun res!127406 () Bool)

(assert (=> b!278563 (=> (not res!127406) (not e!173347))))

(declare-fun forall!992 (List!3905 Int) Bool)

(assert (=> b!278563 (= res!127406 (forall!992 tokens!465 lambda!9519))))

(declare-fun b!278564 () Bool)

(declare-fun res!127381 () Bool)

(assert (=> b!278564 (=> (not res!127381) (not e!173347))))

(declare-fun rulesProduceIndividualToken!380 (LexerInterface!631 List!3904 Token!1234) Bool)

(assert (=> b!278564 (= res!127381 (rulesProduceIndividualToken!380 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun tp!104101 () Bool)

(declare-fun e!173338 () Bool)

(declare-fun b!278565 () Bool)

(declare-fun inv!21 (TokenValue!767) Bool)

(assert (=> b!278565 (= e!173346 (and (inv!21 (value!25548 (h!9292 tokens!465))) e!173338 tp!104101))))

(declare-fun b!278566 () Bool)

(declare-fun e!173349 () Unit!5128)

(declare-fun Unit!5130 () Unit!5128)

(assert (=> b!278566 (= e!173349 Unit!5130)))

(declare-fun lt!116269 () Unit!5128)

(declare-fun lt!116277 () C!2860)

(declare-fun lt!116283 () Token!1234)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!68 (LexerInterface!631 List!3904 List!3904 Rule!1290 Rule!1290 C!2860) Unit!5128)

(assert (=> b!278566 (= lt!116269 (lemmaSepRuleNotContainsCharContainedInANonSepRule!68 thiss!17480 rules!1920 rules!1920 (rule!1332 lt!116283) (rule!1332 separatorToken!170) lt!116277))))

(assert (=> b!278566 false))

(declare-fun b!278567 () Bool)

(declare-fun tp!104095 () Bool)

(declare-fun e!173370 () Bool)

(declare-fun inv!4810 (String!4915) Bool)

(declare-fun inv!4814 (TokenValueInjection!1306) Bool)

(assert (=> b!278567 (= e!173370 (and tp!104095 (inv!4810 (tag!955 (h!9291 rules!1920))) (inv!4814 (transformation!745 (h!9291 rules!1920))) e!173353))))

(declare-fun e!173366 () Bool)

(declare-fun b!278568 () Bool)

(declare-fun tp!104092 () Bool)

(assert (=> b!278568 (= e!173338 (and tp!104092 (inv!4810 (tag!955 (rule!1332 (h!9292 tokens!465)))) (inv!4814 (transformation!745 (rule!1332 (h!9292 tokens!465)))) e!173366))))

(assert (=> b!278569 (= e!173366 (and tp!104098 tp!104091))))

(declare-fun b!278570 () Bool)

(assert (=> b!278570 (= e!173345 e!173347)))

(declare-fun res!127382 () Bool)

(assert (=> b!278570 (=> (not res!127382) (not e!173347))))

(declare-fun lt!116306 () BalanceConc!2634)

(declare-fun rulesProduceEachTokenIndividually!423 (LexerInterface!631 List!3904 BalanceConc!2634) Bool)

(assert (=> b!278570 (= res!127382 (rulesProduceEachTokenIndividually!423 thiss!17480 rules!1920 lt!116306))))

(assert (=> b!278570 (= lt!116306 (seqFromList!857 tokens!465))))

(declare-fun e!173348 () Bool)

(assert (=> b!278571 (= e!173348 (and tp!104097 tp!104100))))

(declare-fun b!278572 () Bool)

(declare-fun res!127375 () Bool)

(declare-fun e!173341 () Bool)

(assert (=> b!278572 (=> res!127375 e!173341)))

(declare-fun isEmpty!2535 (BalanceConc!2634) Bool)

(declare-fun lex!423 (LexerInterface!631 List!3904 BalanceConc!2632) tuple2!4408)

(declare-fun seqFromList!858 (List!3903) BalanceConc!2632)

(assert (=> b!278572 (= res!127375 (isEmpty!2535 (_1!2420 (lex!423 thiss!17480 rules!1920 (seqFromList!858 lt!116274)))))))

(declare-fun tp!104099 () Bool)

(declare-fun b!278573 () Bool)

(declare-fun e!173368 () Bool)

(assert (=> b!278573 (= e!173368 (and tp!104099 (inv!4810 (tag!955 (rule!1332 separatorToken!170))) (inv!4814 (transformation!745 (rule!1332 separatorToken!170))) e!173348))))

(declare-fun b!278574 () Bool)

(declare-fun e!173359 () Bool)

(assert (=> b!278574 (= e!173359 e!173341)))

(declare-fun res!127404 () Bool)

(assert (=> b!278574 (=> res!127404 e!173341)))

(declare-fun lt!116270 () List!3903)

(declare-fun lt!116296 () List!3903)

(assert (=> b!278574 (= res!127404 (or (not (= lt!116270 lt!116296)) (not (= lt!116296 lt!116274)) (not (= lt!116270 lt!116274))))))

(declare-fun printList!307 (LexerInterface!631 List!3905) List!3903)

(assert (=> b!278574 (= lt!116296 (printList!307 thiss!17480 (Cons!3895 (h!9292 tokens!465) Nil!3895)))))

(declare-fun lt!116284 () BalanceConc!2632)

(assert (=> b!278574 (= lt!116270 (list!1608 lt!116284))))

(declare-fun lt!116299 () BalanceConc!2634)

(declare-fun printTailRec!319 (LexerInterface!631 BalanceConc!2634 Int BalanceConc!2632) BalanceConc!2632)

(assert (=> b!278574 (= lt!116284 (printTailRec!319 thiss!17480 lt!116299 0 (BalanceConc!2633 Empty!1312)))))

(declare-fun print!356 (LexerInterface!631 BalanceConc!2634) BalanceConc!2632)

(assert (=> b!278574 (= lt!116284 (print!356 thiss!17480 lt!116299))))

(declare-fun singletonSeq!291 (Token!1234) BalanceConc!2634)

(assert (=> b!278574 (= lt!116299 (singletonSeq!291 (h!9292 tokens!465)))))

(declare-fun b!278575 () Bool)

(declare-fun res!127393 () Bool)

(declare-fun e!173344 () Bool)

(assert (=> b!278575 (=> (not res!127393) (not e!173344))))

(declare-fun lt!116297 () tuple2!4408)

(declare-fun apply!808 (BalanceConc!2634 Int) Token!1234)

(assert (=> b!278575 (= res!127393 (= (apply!808 (_1!2420 lt!116297) 0) lt!116283))))

(declare-fun b!278576 () Bool)

(declare-fun e!173355 () Bool)

(declare-fun e!173350 () Bool)

(assert (=> b!278576 (= e!173355 e!173350)))

(declare-fun res!127385 () Bool)

(assert (=> b!278576 (=> (not res!127385) (not e!173350))))

(declare-fun lt!116263 () Rule!1290)

(assert (=> b!278576 (= res!127385 (matchR!291 (regex!745 lt!116263) lt!116264))))

(declare-fun lt!116308 () Option!849)

(assert (=> b!278576 (= lt!116263 (get!1307 lt!116308))))

(declare-fun b!278577 () Bool)

(declare-fun res!127403 () Bool)

(assert (=> b!278577 (=> (not res!127403) (not e!173356))))

(assert (=> b!278577 (= res!127403 (= (apply!808 (_1!2420 lt!116309) 0) separatorToken!170))))

(declare-fun b!278578 () Bool)

(declare-fun res!127397 () Bool)

(assert (=> b!278578 (=> (not res!127397) (not e!173345))))

(declare-fun rulesInvariant!597 (LexerInterface!631 List!3904) Bool)

(assert (=> b!278578 (= res!127397 (rulesInvariant!597 thiss!17480 rules!1920))))

(declare-fun b!278579 () Bool)

(assert (=> b!278579 (= e!173347 e!173371)))

(declare-fun res!127384 () Bool)

(assert (=> b!278579 (=> (not res!127384) (not e!173371))))

(declare-fun lt!116287 () List!3903)

(declare-fun lt!116293 () List!3903)

(assert (=> b!278579 (= res!127384 (= lt!116287 lt!116293))))

(assert (=> b!278579 (= lt!116293 (list!1608 (printWithSeparatorTokenWhenNeededRec!306 thiss!17480 rules!1920 lt!116306 separatorToken!170 0)))))

(assert (=> b!278579 (= lt!116287 (printWithSeparatorTokenWhenNeededList!314 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!278580 () Bool)

(declare-fun e!173369 () Unit!5128)

(declare-fun Unit!5131 () Unit!5128)

(assert (=> b!278580 (= e!173369 Unit!5131)))

(declare-fun b!278581 () Bool)

(assert (=> b!278581 (= e!173357 (= (rule!1332 lt!116283) lt!116289))))

(declare-fun b!278582 () Bool)

(declare-fun e!173358 () Bool)

(assert (=> b!278582 (= e!173358 (not (= lt!116287 (++!1030 lt!116274 lt!116272))))))

(declare-fun b!278583 () Bool)

(declare-fun e!173336 () Bool)

(assert (=> b!278583 (= e!173336 (matchR!291 (regex!745 (rule!1332 (h!9292 tokens!465))) lt!116274))))

(declare-fun e!173343 () Bool)

(assert (=> b!278584 (= e!173341 e!173343)))

(declare-fun res!127398 () Bool)

(assert (=> b!278584 (=> res!127398 e!173343)))

(declare-datatypes ((tuple2!4412 0))(
  ( (tuple2!4413 (_1!2422 Token!1234) (_2!2422 BalanceConc!2632)) )
))
(declare-datatypes ((Option!851 0))(
  ( (None!850) (Some!850 (v!14751 tuple2!4412)) )
))
(declare-fun isDefined!692 (Option!851) Bool)

(declare-fun maxPrefixZipperSequence!312 (LexerInterface!631 List!3904 BalanceConc!2632) Option!851)

(assert (=> b!278584 (= res!127398 (not (isDefined!692 (maxPrefixZipperSequence!312 thiss!17480 rules!1920 (seqFromList!858 (originalCharacters!788 (h!9292 tokens!465)))))))))

(declare-fun lt!116271 () Unit!5128)

(declare-fun forallContained!300 (List!3905 Int Token!1234) Unit!5128)

(assert (=> b!278584 (= lt!116271 (forallContained!300 tokens!465 lambda!9520 (h!9292 tokens!465)))))

(assert (=> b!278584 (= lt!116274 (originalCharacters!788 (h!9292 tokens!465)))))

(declare-fun b!278585 () Bool)

(assert (=> b!278585 (= e!173350 (= (rule!1332 separatorToken!170) lt!116263))))

(declare-fun b!278586 () Bool)

(declare-fun res!127378 () Bool)

(assert (=> b!278586 (=> res!127378 e!173341)))

(assert (=> b!278586 (= res!127378 (not (rulesProduceIndividualToken!380 thiss!17480 rules!1920 (h!9292 tokens!465))))))

(declare-fun b!278587 () Bool)

(declare-fun res!127402 () Bool)

(assert (=> b!278587 (=> (not res!127402) (not e!173336))))

(declare-fun lt!116279 () tuple2!4410)

(declare-fun isEmpty!2536 (List!3903) Bool)

(assert (=> b!278587 (= res!127402 (isEmpty!2536 (_2!2421 lt!116279)))))

(declare-fun b!278588 () Bool)

(declare-fun Unit!5132 () Unit!5128)

(assert (=> b!278588 (= e!173349 Unit!5132)))

(declare-fun b!278589 () Bool)

(declare-fun res!127380 () Bool)

(assert (=> b!278589 (=> (not res!127380) (not e!173345))))

(declare-fun isEmpty!2537 (List!3904) Bool)

(assert (=> b!278589 (= res!127380 (not (isEmpty!2537 rules!1920)))))

(declare-fun b!278590 () Bool)

(declare-fun e!173372 () Bool)

(declare-fun e!173367 () Bool)

(assert (=> b!278590 (= e!173372 e!173367)))

(declare-fun res!127377 () Bool)

(assert (=> b!278590 (=> res!127377 e!173367)))

(declare-fun lt!116273 () List!3905)

(declare-fun filter!87 (List!3905 Int) List!3905)

(assert (=> b!278590 (= res!127377 (not (= (filter!87 lt!116273 lambda!9519) (t!39219 tokens!465))))))

(assert (=> b!278590 (= (filter!87 lt!116273 lambda!9519) (t!39219 tokens!465))))

(declare-fun list!1609 (BalanceConc!2634) List!3905)

(assert (=> b!278590 (= lt!116273 (list!1609 (_1!2420 (lex!423 thiss!17480 rules!1920 lt!116303))))))

(declare-fun lt!116301 () Unit!5128)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!78 (LexerInterface!631 List!3904 List!3905 Token!1234) Unit!5128)

(assert (=> b!278590 (= lt!116301 (theoremInvertabilityFromTokensSepTokenWhenNeeded!78 thiss!17480 rules!1920 (t!39219 tokens!465) separatorToken!170))))

(declare-fun lt!116305 () Option!850)

(assert (=> b!278590 (= lt!116305 (Some!849 (tuple2!4411 separatorToken!170 lt!116272)))))

(declare-fun lt!116295 () Unit!5128)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!64 (LexerInterface!631 List!3904 Token!1234 Rule!1290 List!3903 Rule!1290) Unit!5128)

(assert (=> b!278590 (= lt!116295 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!64 thiss!17480 rules!1920 separatorToken!170 (rule!1332 separatorToken!170) lt!116272 (rule!1332 lt!116283)))))

(declare-fun lt!116291 () Unit!5128)

(assert (=> b!278590 (= lt!116291 e!173349)))

(declare-fun c!52573 () Bool)

(declare-fun contains!749 (List!3903 C!2860) Bool)

(declare-fun usedCharacters!82 (Regex!969) List!3903)

(assert (=> b!278590 (= c!52573 (contains!749 (usedCharacters!82 (regex!745 (rule!1332 separatorToken!170))) lt!116277))))

(declare-fun head!918 (List!3903) C!2860)

(assert (=> b!278590 (= lt!116277 (head!918 lt!116272))))

(declare-fun lt!116294 () Unit!5128)

(assert (=> b!278590 (= lt!116294 e!173369)))

(declare-fun c!52572 () Bool)

(declare-fun lt!116290 () C!2860)

(assert (=> b!278590 (= c!52572 (not (contains!749 (usedCharacters!82 (regex!745 (rule!1332 lt!116283))) lt!116290)))))

(assert (=> b!278590 (= lt!116290 (head!918 lt!116268))))

(assert (=> b!278590 e!173337))

(declare-fun res!127399 () Bool)

(assert (=> b!278590 (=> (not res!127399) (not e!173337))))

(declare-fun isDefined!693 (Option!849) Bool)

(assert (=> b!278590 (= res!127399 (isDefined!693 lt!116276))))

(declare-fun getRuleFromTag!132 (LexerInterface!631 List!3904 String!4915) Option!849)

(assert (=> b!278590 (= lt!116276 (getRuleFromTag!132 thiss!17480 rules!1920 (tag!955 (rule!1332 lt!116283))))))

(declare-fun lt!116281 () Unit!5128)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!132 (LexerInterface!631 List!3904 List!3903 Token!1234) Unit!5128)

(assert (=> b!278590 (= lt!116281 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!132 thiss!17480 rules!1920 lt!116268 lt!116283))))

(assert (=> b!278590 (= lt!116268 (list!1608 (charsOf!390 lt!116283)))))

(declare-fun lt!116262 () Unit!5128)

(assert (=> b!278590 (= lt!116262 (forallContained!300 tokens!465 lambda!9520 lt!116283))))

(assert (=> b!278590 e!173344))

(declare-fun res!127379 () Bool)

(assert (=> b!278590 (=> (not res!127379) (not e!173344))))

(declare-fun size!3107 (BalanceConc!2634) Int)

(assert (=> b!278590 (= res!127379 (= (size!3107 (_1!2420 lt!116297)) 1))))

(declare-fun lt!116292 () BalanceConc!2632)

(assert (=> b!278590 (= lt!116297 (lex!423 thiss!17480 rules!1920 lt!116292))))

(declare-fun lt!116302 () BalanceConc!2634)

(assert (=> b!278590 (= lt!116292 (printTailRec!319 thiss!17480 lt!116302 0 (BalanceConc!2633 Empty!1312)))))

(assert (=> b!278590 (= lt!116292 (print!356 thiss!17480 lt!116302))))

(assert (=> b!278590 (= lt!116302 (singletonSeq!291 lt!116283))))

(assert (=> b!278590 e!173355))

(declare-fun res!127401 () Bool)

(assert (=> b!278590 (=> (not res!127401) (not e!173355))))

(assert (=> b!278590 (= res!127401 (isDefined!693 lt!116308))))

(assert (=> b!278590 (= lt!116308 (getRuleFromTag!132 thiss!17480 rules!1920 (tag!955 (rule!1332 separatorToken!170))))))

(declare-fun lt!116267 () Unit!5128)

(assert (=> b!278590 (= lt!116267 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!132 thiss!17480 rules!1920 lt!116264 separatorToken!170))))

(assert (=> b!278590 e!173356))

(declare-fun res!127405 () Bool)

(assert (=> b!278590 (=> (not res!127405) (not e!173356))))

(assert (=> b!278590 (= res!127405 (= (size!3107 (_1!2420 lt!116309)) 1))))

(declare-fun lt!116286 () BalanceConc!2632)

(assert (=> b!278590 (= lt!116309 (lex!423 thiss!17480 rules!1920 lt!116286))))

(declare-fun lt!116265 () BalanceConc!2634)

(assert (=> b!278590 (= lt!116286 (printTailRec!319 thiss!17480 lt!116265 0 (BalanceConc!2633 Empty!1312)))))

(assert (=> b!278590 (= lt!116286 (print!356 thiss!17480 lt!116265))))

(assert (=> b!278590 (= lt!116265 (singletonSeq!291 separatorToken!170))))

(assert (=> b!278590 (rulesProduceIndividualToken!380 thiss!17480 rules!1920 lt!116283)))

(declare-fun lt!116275 () Unit!5128)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!128 (LexerInterface!631 List!3904 List!3905 Token!1234) Unit!5128)

(assert (=> b!278590 (= lt!116275 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!128 thiss!17480 rules!1920 tokens!465 lt!116283))))

(assert (=> b!278590 (= lt!116283 (head!917 (t!39219 tokens!465)))))

(declare-fun lt!116266 () Unit!5128)

(declare-fun e!173354 () Unit!5128)

(assert (=> b!278590 (= lt!116266 e!173354)))

(declare-fun c!52571 () Bool)

(declare-fun isEmpty!2538 (List!3905) Bool)

(assert (=> b!278590 (= c!52571 (isEmpty!2538 (t!39219 tokens!465)))))

(declare-fun maxPrefix!349 (LexerInterface!631 List!3904 List!3903) Option!850)

(assert (=> b!278590 (= lt!116305 (maxPrefix!349 thiss!17480 rules!1920 lt!116261))))

(declare-fun lt!116285 () tuple2!4410)

(assert (=> b!278590 (= lt!116261 (_2!2421 lt!116285))))

(declare-fun lt!116310 () Unit!5128)

(declare-fun lemmaSamePrefixThenSameSuffix!214 (List!3903 List!3903 List!3903 List!3903 List!3903) Unit!5128)

(assert (=> b!278590 (= lt!116310 (lemmaSamePrefixThenSameSuffix!214 lt!116274 lt!116261 lt!116274 (_2!2421 lt!116285) lt!116287))))

(assert (=> b!278590 (= lt!116285 (get!1308 (maxPrefix!349 thiss!17480 rules!1920 lt!116287)))))

(declare-fun isPrefix!413 (List!3903 List!3903) Bool)

(assert (=> b!278590 (isPrefix!413 lt!116274 lt!116307)))

(declare-fun lt!116280 () Unit!5128)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!308 (List!3903 List!3903) Unit!5128)

(assert (=> b!278590 (= lt!116280 (lemmaConcatTwoListThenFirstIsPrefix!308 lt!116274 lt!116261))))

(declare-fun e!173361 () Bool)

(assert (=> b!278590 e!173361))

(declare-fun res!127383 () Bool)

(assert (=> b!278590 (=> res!127383 e!173361)))

(assert (=> b!278590 (= res!127383 (isEmpty!2538 tokens!465))))

(declare-fun lt!116298 () Unit!5128)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!170 (LexerInterface!631 List!3904 List!3905 Token!1234) Unit!5128)

(assert (=> b!278590 (= lt!116298 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!170 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!278591 () Bool)

(assert (=> b!278591 (= e!173343 e!173372)))

(declare-fun res!127389 () Bool)

(assert (=> b!278591 (=> res!127389 e!173372)))

(declare-fun lt!116288 () Bool)

(assert (=> b!278591 (= res!127389 (not lt!116288))))

(assert (=> b!278591 e!173336))

(declare-fun res!127392 () Bool)

(assert (=> b!278591 (=> (not res!127392) (not e!173336))))

(assert (=> b!278591 (= res!127392 (= (_1!2421 lt!116279) (h!9292 tokens!465)))))

(declare-fun lt!116300 () Option!850)

(assert (=> b!278591 (= lt!116279 (get!1308 lt!116300))))

(declare-fun isDefined!694 (Option!850) Bool)

(assert (=> b!278591 (isDefined!694 lt!116300)))

(assert (=> b!278591 (= lt!116300 (maxPrefix!349 thiss!17480 rules!1920 lt!116274))))

(declare-fun b!278592 () Bool)

(declare-datatypes ((tuple2!4414 0))(
  ( (tuple2!4415 (_1!2423 List!3905) (_2!2423 List!3903)) )
))
(declare-fun lexList!219 (LexerInterface!631 List!3904 List!3903) tuple2!4414)

(assert (=> b!278592 (= e!173367 (= (filter!87 (_1!2423 (lexList!219 thiss!17480 rules!1920 lt!116272)) lambda!9519) (t!39219 tokens!465)))))

(declare-fun b!278593 () Bool)

(declare-fun res!127376 () Bool)

(assert (=> b!278593 (=> (not res!127376) (not e!173347))))

(assert (=> b!278593 (= res!127376 (isSeparator!745 (rule!1332 separatorToken!170)))))

(declare-fun b!278594 () Bool)

(declare-fun res!127388 () Bool)

(assert (=> b!278594 (=> (not res!127388) (not e!173347))))

(declare-fun sepAndNonSepRulesDisjointChars!334 (List!3904 List!3904) Bool)

(assert (=> b!278594 (= res!127388 (sepAndNonSepRulesDisjointChars!334 rules!1920 rules!1920))))

(declare-fun b!278595 () Bool)

(assert (=> b!278595 (= e!173363 e!173359)))

(declare-fun res!127400 () Bool)

(assert (=> b!278595 (=> res!127400 e!173359)))

(assert (=> b!278595 (= res!127400 e!173358)))

(declare-fun res!127386 () Bool)

(assert (=> b!278595 (=> (not res!127386) (not e!173358))))

(assert (=> b!278595 (= res!127386 (not lt!116288))))

(assert (=> b!278595 (= lt!116288 (= lt!116287 lt!116307))))

(declare-fun b!278596 () Bool)

(declare-fun tp!104103 () Bool)

(assert (=> b!278596 (= e!173364 (and e!173370 tp!104103))))

(declare-fun b!278597 () Bool)

(declare-fun Unit!5133 () Unit!5128)

(assert (=> b!278597 (= e!173354 Unit!5133)))

(declare-fun b!278598 () Bool)

(declare-fun tp!104094 () Bool)

(assert (=> b!278598 (= e!173373 (and (inv!21 (value!25548 separatorToken!170)) e!173368 tp!104094))))

(declare-fun b!278599 () Bool)

(assert (=> b!278599 (= e!173344 (isEmpty!2534 (_2!2420 lt!116297)))))

(declare-fun b!278600 () Bool)

(declare-fun res!127374 () Bool)

(assert (=> b!278600 (=> (not res!127374) (not e!173371))))

(assert (=> b!278600 (= res!127374 (= (list!1608 (seqFromList!858 lt!116287)) lt!116293))))

(declare-fun b!278601 () Bool)

(declare-fun Unit!5134 () Unit!5128)

(assert (=> b!278601 (= e!173354 Unit!5134)))

(assert (=> b!278601 false))

(declare-fun b!278602 () Bool)

(assert (=> b!278602 (= e!173361 e!173360)))

(declare-fun res!127396 () Bool)

(assert (=> b!278602 (=> (not res!127396) (not e!173360))))

(assert (=> b!278602 (= res!127396 (isDefined!694 lt!116260))))

(assert (=> b!278602 (= lt!116260 (maxPrefix!349 thiss!17480 rules!1920 lt!116287))))

(declare-fun b!278603 () Bool)

(declare-fun Unit!5135 () Unit!5128)

(assert (=> b!278603 (= e!173369 Unit!5135)))

(declare-fun lt!116278 () Unit!5128)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!74 (Regex!969 List!3903 C!2860) Unit!5128)

(assert (=> b!278603 (= lt!116278 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!74 (regex!745 (rule!1332 lt!116283)) lt!116268 lt!116290))))

(declare-fun res!127394 () Bool)

(assert (=> b!278603 (= res!127394 (not (matchR!291 (regex!745 (rule!1332 lt!116283)) lt!116268)))))

(assert (=> b!278603 (=> (not res!127394) (not e!173339))))

(assert (=> b!278603 e!173339))

(assert (= (and start!30090 res!127390) b!278589))

(assert (= (and b!278589 res!127380) b!278578))

(assert (= (and b!278578 res!127397) b!278570))

(assert (= (and b!278570 res!127382) b!278564))

(assert (= (and b!278564 res!127381) b!278593))

(assert (= (and b!278593 res!127376) b!278563))

(assert (= (and b!278563 res!127406) b!278594))

(assert (= (and b!278594 res!127388) b!278556))

(assert (= (and b!278556 res!127391) b!278579))

(assert (= (and b!278579 res!127384) b!278600))

(assert (= (and b!278600 res!127374) b!278557))

(assert (= (and b!278557 (not res!127395)) b!278595))

(assert (= (and b!278595 res!127386) b!278582))

(assert (= (and b!278595 (not res!127400)) b!278574))

(assert (= (and b!278574 (not res!127404)) b!278586))

(assert (= (and b!278586 (not res!127378)) b!278572))

(assert (= (and b!278572 (not res!127375)) b!278584))

(assert (= (and b!278584 (not res!127398)) b!278591))

(assert (= (and b!278591 res!127392) b!278587))

(assert (= (and b!278587 res!127402) b!278583))

(assert (= (and b!278591 (not res!127389)) b!278590))

(assert (= (and b!278590 (not res!127383)) b!278602))

(assert (= (and b!278602 res!127396) b!278561))

(assert (= (and b!278590 c!52571) b!278601))

(assert (= (and b!278590 (not c!52571)) b!278597))

(assert (= (and b!278590 res!127405) b!278577))

(assert (= (and b!278577 res!127403) b!278559))

(assert (= (and b!278590 res!127401) b!278576))

(assert (= (and b!278576 res!127385) b!278585))

(assert (= (and b!278590 res!127379) b!278575))

(assert (= (and b!278575 res!127393) b!278599))

(assert (= (and b!278590 res!127399) b!278558))

(assert (= (and b!278558 res!127387) b!278581))

(assert (= (and b!278590 c!52572) b!278603))

(assert (= (and b!278590 (not c!52572)) b!278580))

(assert (= (and b!278603 res!127394) b!278560))

(assert (= (and b!278590 c!52573) b!278566))

(assert (= (and b!278590 (not c!52573)) b!278588))

(assert (= (and b!278590 (not res!127377)) b!278592))

(assert (= b!278567 b!278555))

(assert (= b!278596 b!278567))

(assert (= (and start!30090 ((_ is Cons!3894) rules!1920)) b!278596))

(assert (= b!278573 b!278571))

(assert (= b!278598 b!278573))

(assert (= start!30090 b!278598))

(assert (= b!278568 b!278569))

(assert (= b!278565 b!278568))

(assert (= b!278562 b!278565))

(assert (= (and start!30090 ((_ is Cons!3895) tokens!465)) b!278562))

(declare-fun m!355715 () Bool)

(assert (=> b!278578 m!355715))

(declare-fun m!355717 () Bool)

(assert (=> b!278602 m!355717))

(declare-fun m!355719 () Bool)

(assert (=> b!278602 m!355719))

(declare-fun m!355721 () Bool)

(assert (=> b!278565 m!355721))

(declare-fun m!355723 () Bool)

(assert (=> b!278594 m!355723))

(declare-fun m!355725 () Bool)

(assert (=> b!278589 m!355725))

(declare-fun m!355727 () Bool)

(assert (=> b!278577 m!355727))

(declare-fun m!355729 () Bool)

(assert (=> b!278557 m!355729))

(declare-fun m!355731 () Bool)

(assert (=> b!278557 m!355731))

(declare-fun m!355733 () Bool)

(assert (=> b!278557 m!355733))

(declare-fun m!355735 () Bool)

(assert (=> b!278557 m!355735))

(declare-fun m!355737 () Bool)

(assert (=> b!278557 m!355737))

(assert (=> b!278557 m!355733))

(declare-fun m!355739 () Bool)

(assert (=> b!278557 m!355739))

(declare-fun m!355741 () Bool)

(assert (=> b!278557 m!355741))

(assert (=> b!278557 m!355729))

(declare-fun m!355743 () Bool)

(assert (=> b!278557 m!355743))

(declare-fun m!355745 () Bool)

(assert (=> b!278557 m!355745))

(assert (=> b!278557 m!355739))

(declare-fun m!355747 () Bool)

(assert (=> b!278557 m!355747))

(declare-fun m!355749 () Bool)

(assert (=> b!278557 m!355749))

(declare-fun m!355751 () Bool)

(assert (=> b!278557 m!355751))

(declare-fun m!355753 () Bool)

(assert (=> b!278557 m!355753))

(assert (=> b!278557 m!355751))

(declare-fun m!355755 () Bool)

(assert (=> b!278563 m!355755))

(declare-fun m!355757 () Bool)

(assert (=> b!278586 m!355757))

(declare-fun m!355759 () Bool)

(assert (=> b!278579 m!355759))

(assert (=> b!278579 m!355759))

(declare-fun m!355761 () Bool)

(assert (=> b!278579 m!355761))

(declare-fun m!355763 () Bool)

(assert (=> b!278579 m!355763))

(declare-fun m!355765 () Bool)

(assert (=> b!278575 m!355765))

(declare-fun m!355767 () Bool)

(assert (=> b!278582 m!355767))

(declare-fun m!355769 () Bool)

(assert (=> b!278584 m!355769))

(assert (=> b!278584 m!355769))

(declare-fun m!355771 () Bool)

(assert (=> b!278584 m!355771))

(assert (=> b!278584 m!355771))

(declare-fun m!355773 () Bool)

(assert (=> b!278584 m!355773))

(declare-fun m!355775 () Bool)

(assert (=> b!278584 m!355775))

(declare-fun m!355777 () Bool)

(assert (=> b!278570 m!355777))

(declare-fun m!355779 () Bool)

(assert (=> b!278570 m!355779))

(declare-fun m!355781 () Bool)

(assert (=> b!278561 m!355781))

(declare-fun m!355783 () Bool)

(assert (=> b!278561 m!355783))

(declare-fun m!355785 () Bool)

(assert (=> b!278598 m!355785))

(declare-fun m!355787 () Bool)

(assert (=> b!278559 m!355787))

(declare-fun m!355789 () Bool)

(assert (=> b!278574 m!355789))

(declare-fun m!355791 () Bool)

(assert (=> b!278574 m!355791))

(declare-fun m!355793 () Bool)

(assert (=> b!278574 m!355793))

(declare-fun m!355795 () Bool)

(assert (=> b!278574 m!355795))

(declare-fun m!355797 () Bool)

(assert (=> b!278574 m!355797))

(declare-fun m!355799 () Bool)

(assert (=> b!278590 m!355799))

(declare-fun m!355801 () Bool)

(assert (=> b!278590 m!355801))

(declare-fun m!355803 () Bool)

(assert (=> b!278590 m!355803))

(declare-fun m!355805 () Bool)

(assert (=> b!278590 m!355805))

(declare-fun m!355807 () Bool)

(assert (=> b!278590 m!355807))

(declare-fun m!355809 () Bool)

(assert (=> b!278590 m!355809))

(declare-fun m!355811 () Bool)

(assert (=> b!278590 m!355811))

(declare-fun m!355813 () Bool)

(assert (=> b!278590 m!355813))

(declare-fun m!355815 () Bool)

(assert (=> b!278590 m!355815))

(declare-fun m!355817 () Bool)

(assert (=> b!278590 m!355817))

(assert (=> b!278590 m!355719))

(declare-fun m!355819 () Bool)

(assert (=> b!278590 m!355819))

(declare-fun m!355821 () Bool)

(assert (=> b!278590 m!355821))

(declare-fun m!355823 () Bool)

(assert (=> b!278590 m!355823))

(declare-fun m!355825 () Bool)

(assert (=> b!278590 m!355825))

(assert (=> b!278590 m!355813))

(declare-fun m!355827 () Bool)

(assert (=> b!278590 m!355827))

(declare-fun m!355829 () Bool)

(assert (=> b!278590 m!355829))

(declare-fun m!355831 () Bool)

(assert (=> b!278590 m!355831))

(declare-fun m!355833 () Bool)

(assert (=> b!278590 m!355833))

(declare-fun m!355835 () Bool)

(assert (=> b!278590 m!355835))

(declare-fun m!355837 () Bool)

(assert (=> b!278590 m!355837))

(declare-fun m!355839 () Bool)

(assert (=> b!278590 m!355839))

(declare-fun m!355841 () Bool)

(assert (=> b!278590 m!355841))

(assert (=> b!278590 m!355831))

(declare-fun m!355843 () Bool)

(assert (=> b!278590 m!355843))

(declare-fun m!355845 () Bool)

(assert (=> b!278590 m!355845))

(declare-fun m!355847 () Bool)

(assert (=> b!278590 m!355847))

(declare-fun m!355849 () Bool)

(assert (=> b!278590 m!355849))

(declare-fun m!355851 () Bool)

(assert (=> b!278590 m!355851))

(declare-fun m!355853 () Bool)

(assert (=> b!278590 m!355853))

(declare-fun m!355855 () Bool)

(assert (=> b!278590 m!355855))

(declare-fun m!355857 () Bool)

(assert (=> b!278590 m!355857))

(declare-fun m!355859 () Bool)

(assert (=> b!278590 m!355859))

(declare-fun m!355861 () Bool)

(assert (=> b!278590 m!355861))

(declare-fun m!355863 () Bool)

(assert (=> b!278590 m!355863))

(assert (=> b!278590 m!355719))

(declare-fun m!355865 () Bool)

(assert (=> b!278590 m!355865))

(declare-fun m!355867 () Bool)

(assert (=> b!278590 m!355867))

(declare-fun m!355869 () Bool)

(assert (=> b!278590 m!355869))

(declare-fun m!355871 () Bool)

(assert (=> b!278590 m!355871))

(assert (=> b!278590 m!355845))

(declare-fun m!355873 () Bool)

(assert (=> b!278590 m!355873))

(assert (=> b!278590 m!355851))

(declare-fun m!355875 () Bool)

(assert (=> b!278590 m!355875))

(declare-fun m!355877 () Bool)

(assert (=> b!278590 m!355877))

(declare-fun m!355879 () Bool)

(assert (=> b!278590 m!355879))

(declare-fun m!355881 () Bool)

(assert (=> b!278587 m!355881))

(declare-fun m!355883 () Bool)

(assert (=> b!278566 m!355883))

(declare-fun m!355885 () Bool)

(assert (=> b!278564 m!355885))

(declare-fun m!355887 () Bool)

(assert (=> b!278573 m!355887))

(declare-fun m!355889 () Bool)

(assert (=> b!278573 m!355889))

(declare-fun m!355891 () Bool)

(assert (=> b!278600 m!355891))

(assert (=> b!278600 m!355891))

(declare-fun m!355893 () Bool)

(assert (=> b!278600 m!355893))

(declare-fun m!355895 () Bool)

(assert (=> b!278592 m!355895))

(declare-fun m!355897 () Bool)

(assert (=> b!278592 m!355897))

(declare-fun m!355899 () Bool)

(assert (=> b!278567 m!355899))

(declare-fun m!355901 () Bool)

(assert (=> b!278567 m!355901))

(declare-fun m!355903 () Bool)

(assert (=> b!278591 m!355903))

(declare-fun m!355905 () Bool)

(assert (=> b!278591 m!355905))

(declare-fun m!355907 () Bool)

(assert (=> b!278591 m!355907))

(declare-fun m!355909 () Bool)

(assert (=> b!278562 m!355909))

(declare-fun m!355911 () Bool)

(assert (=> b!278576 m!355911))

(declare-fun m!355913 () Bool)

(assert (=> b!278576 m!355913))

(declare-fun m!355915 () Bool)

(assert (=> b!278583 m!355915))

(declare-fun m!355917 () Bool)

(assert (=> b!278599 m!355917))

(declare-fun m!355919 () Bool)

(assert (=> b!278568 m!355919))

(declare-fun m!355921 () Bool)

(assert (=> b!278568 m!355921))

(declare-fun m!355923 () Bool)

(assert (=> start!30090 m!355923))

(declare-fun m!355925 () Bool)

(assert (=> b!278603 m!355925))

(declare-fun m!355927 () Bool)

(assert (=> b!278603 m!355927))

(declare-fun m!355929 () Bool)

(assert (=> b!278572 m!355929))

(assert (=> b!278572 m!355929))

(declare-fun m!355931 () Bool)

(assert (=> b!278572 m!355931))

(declare-fun m!355933 () Bool)

(assert (=> b!278572 m!355933))

(declare-fun m!355935 () Bool)

(assert (=> b!278558 m!355935))

(declare-fun m!355937 () Bool)

(assert (=> b!278558 m!355937))

(check-sat (not b!278598) (not b!278594) (not b!278575) (not b!278602) (not b!278561) (not b!278600) (not b!278587) (not b!278558) (not b!278563) (not b!278591) (not b!278557) (not b!278577) (not b!278612) (not b!278568) (not b!278559) (not b!278596) (not b!278578) (not b!278565) b_and!22359 b_and!22361 (not b!278599) (not b!278579) (not b!278603) (not b_next!10317) (not b!278564) (not b!278592) (not b!278586) (not b!278584) (not b!278573) (not b_next!10321) (not b!278572) (not b!278576) (not b_next!10313) b_and!22357 (not b_next!10323) (not b!278567) b_and!22367 (not b!278583) b_and!22363 (not b!278562) (not b!278590) (not b!278566) (not b!278574) (not b_next!10319) (not start!30090) b_and!22365 (not b!278589) (not b!278570) (not b_next!10315) (not b!278582))
(check-sat b_and!22359 b_and!22361 (not b_next!10317) (not b_next!10321) (not b_next!10319) b_and!22365 (not b_next!10315) (not b_next!10313) b_and!22357 (not b_next!10323) b_and!22367 b_and!22363)
(get-model)

(declare-fun bs!31183 () Bool)

(declare-fun d!81316 () Bool)

(assert (= bs!31183 (and d!81316 b!278563)))

(declare-fun lambda!9525 () Int)

(assert (=> bs!31183 (not (= lambda!9525 lambda!9519))))

(declare-fun bs!31184 () Bool)

(assert (= bs!31184 (and d!81316 b!278584)))

(assert (=> bs!31184 (= lambda!9525 lambda!9520)))

(declare-fun b!278752 () Bool)

(declare-fun e!173464 () Bool)

(assert (=> b!278752 (= e!173464 true)))

(declare-fun b!278751 () Bool)

(declare-fun e!173463 () Bool)

(assert (=> b!278751 (= e!173463 e!173464)))

(declare-fun b!278750 () Bool)

(declare-fun e!173462 () Bool)

(assert (=> b!278750 (= e!173462 e!173463)))

(assert (=> d!81316 e!173462))

(assert (= b!278751 b!278752))

(assert (= b!278750 b!278751))

(assert (= (and d!81316 ((_ is Cons!3894) rules!1920)) b!278750))

(assert (=> b!278752 (< (dynLambda!2033 order!3045 (toValue!1488 (transformation!745 (h!9291 rules!1920)))) (dynLambda!2034 order!3047 lambda!9525))))

(assert (=> b!278752 (< (dynLambda!2035 order!3049 (toChars!1347 (transformation!745 (h!9291 rules!1920)))) (dynLambda!2034 order!3047 lambda!9525))))

(assert (=> d!81316 true))

(declare-fun e!173461 () Bool)

(assert (=> d!81316 e!173461))

(declare-fun res!127498 () Bool)

(assert (=> d!81316 (=> (not res!127498) (not e!173461))))

(declare-fun lt!116352 () Bool)

(assert (=> d!81316 (= res!127498 (= lt!116352 (forall!992 (list!1609 lt!116306) lambda!9525)))))

(declare-fun forall!993 (BalanceConc!2634 Int) Bool)

(assert (=> d!81316 (= lt!116352 (forall!993 lt!116306 lambda!9525))))

(assert (=> d!81316 (not (isEmpty!2537 rules!1920))))

(assert (=> d!81316 (= (rulesProduceEachTokenIndividually!423 thiss!17480 rules!1920 lt!116306) lt!116352)))

(declare-fun b!278749 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!238 (LexerInterface!631 List!3904 List!3905) Bool)

(assert (=> b!278749 (= e!173461 (= lt!116352 (rulesProduceEachTokenIndividuallyList!238 thiss!17480 rules!1920 (list!1609 lt!116306))))))

(assert (= (and d!81316 res!127498) b!278749))

(declare-fun m!356087 () Bool)

(assert (=> d!81316 m!356087))

(assert (=> d!81316 m!356087))

(declare-fun m!356089 () Bool)

(assert (=> d!81316 m!356089))

(declare-fun m!356091 () Bool)

(assert (=> d!81316 m!356091))

(assert (=> d!81316 m!355725))

(assert (=> b!278749 m!356087))

(assert (=> b!278749 m!356087))

(declare-fun m!356093 () Bool)

(assert (=> b!278749 m!356093))

(assert (=> b!278570 d!81316))

(declare-fun d!81334 () Bool)

(declare-fun fromListB!338 (List!3905) BalanceConc!2634)

(assert (=> d!81334 (= (seqFromList!857 tokens!465) (fromListB!338 tokens!465))))

(declare-fun bs!31185 () Bool)

(assert (= bs!31185 d!81334))

(declare-fun m!356095 () Bool)

(assert (=> bs!31185 m!356095))

(assert (=> b!278570 d!81334))

(declare-fun d!81336 () Bool)

(assert (=> d!81336 (= (get!1308 lt!116300) (v!14750 lt!116300))))

(assert (=> b!278591 d!81336))

(declare-fun d!81338 () Bool)

(declare-fun isEmpty!2540 (Option!850) Bool)

(assert (=> d!81338 (= (isDefined!694 lt!116300) (not (isEmpty!2540 lt!116300)))))

(declare-fun bs!31186 () Bool)

(assert (= bs!31186 d!81338))

(declare-fun m!356097 () Bool)

(assert (=> bs!31186 m!356097))

(assert (=> b!278591 d!81338))

(declare-fun call!15409 () Option!850)

(declare-fun bm!15404 () Bool)

(declare-fun maxPrefixOneRule!153 (LexerInterface!631 Rule!1290 List!3903) Option!850)

(assert (=> bm!15404 (= call!15409 (maxPrefixOneRule!153 thiss!17480 (h!9291 rules!1920) lt!116274))))

(declare-fun b!278771 () Bool)

(declare-fun res!127519 () Bool)

(declare-fun e!173471 () Bool)

(assert (=> b!278771 (=> (not res!127519) (not e!173471))))

(declare-fun lt!116363 () Option!850)

(declare-fun size!3110 (List!3903) Int)

(assert (=> b!278771 (= res!127519 (< (size!3110 (_2!2421 (get!1308 lt!116363))) (size!3110 lt!116274)))))

(declare-fun b!278772 () Bool)

(declare-fun e!173472 () Bool)

(assert (=> b!278772 (= e!173472 e!173471)))

(declare-fun res!127515 () Bool)

(assert (=> b!278772 (=> (not res!127515) (not e!173471))))

(assert (=> b!278772 (= res!127515 (isDefined!694 lt!116363))))

(declare-fun b!278773 () Bool)

(declare-fun res!127518 () Bool)

(assert (=> b!278773 (=> (not res!127518) (not e!173471))))

(declare-fun apply!812 (TokenValueInjection!1306 BalanceConc!2632) TokenValue!767)

(assert (=> b!278773 (= res!127518 (= (value!25548 (_1!2421 (get!1308 lt!116363))) (apply!812 (transformation!745 (rule!1332 (_1!2421 (get!1308 lt!116363)))) (seqFromList!858 (originalCharacters!788 (_1!2421 (get!1308 lt!116363)))))))))

(declare-fun b!278775 () Bool)

(declare-fun e!173473 () Option!850)

(declare-fun lt!116367 () Option!850)

(declare-fun lt!116366 () Option!850)

(assert (=> b!278775 (= e!173473 (ite (and ((_ is None!849) lt!116367) ((_ is None!849) lt!116366)) None!849 (ite ((_ is None!849) lt!116366) lt!116367 (ite ((_ is None!849) lt!116367) lt!116366 (ite (>= (size!3106 (_1!2421 (v!14750 lt!116367))) (size!3106 (_1!2421 (v!14750 lt!116366)))) lt!116367 lt!116366)))))))

(assert (=> b!278775 (= lt!116367 call!15409)))

(assert (=> b!278775 (= lt!116366 (maxPrefix!349 thiss!17480 (t!39218 rules!1920) lt!116274))))

(declare-fun b!278776 () Bool)

(declare-fun res!127517 () Bool)

(assert (=> b!278776 (=> (not res!127517) (not e!173471))))

(assert (=> b!278776 (= res!127517 (= (++!1030 (list!1608 (charsOf!390 (_1!2421 (get!1308 lt!116363)))) (_2!2421 (get!1308 lt!116363))) lt!116274))))

(declare-fun b!278777 () Bool)

(declare-fun res!127513 () Bool)

(assert (=> b!278777 (=> (not res!127513) (not e!173471))))

(assert (=> b!278777 (= res!127513 (= (list!1608 (charsOf!390 (_1!2421 (get!1308 lt!116363)))) (originalCharacters!788 (_1!2421 (get!1308 lt!116363)))))))

(declare-fun b!278778 () Bool)

(declare-fun res!127516 () Bool)

(assert (=> b!278778 (=> (not res!127516) (not e!173471))))

(assert (=> b!278778 (= res!127516 (matchR!291 (regex!745 (rule!1332 (_1!2421 (get!1308 lt!116363)))) (list!1608 (charsOf!390 (_1!2421 (get!1308 lt!116363))))))))

(declare-fun b!278779 () Bool)

(assert (=> b!278779 (= e!173473 call!15409)))

(declare-fun d!81340 () Bool)

(assert (=> d!81340 e!173472))

(declare-fun res!127514 () Bool)

(assert (=> d!81340 (=> res!127514 e!173472)))

(assert (=> d!81340 (= res!127514 (isEmpty!2540 lt!116363))))

(assert (=> d!81340 (= lt!116363 e!173473)))

(declare-fun c!52603 () Bool)

(assert (=> d!81340 (= c!52603 (and ((_ is Cons!3894) rules!1920) ((_ is Nil!3894) (t!39218 rules!1920))))))

(declare-fun lt!116365 () Unit!5128)

(declare-fun lt!116364 () Unit!5128)

(assert (=> d!81340 (= lt!116365 lt!116364)))

(assert (=> d!81340 (isPrefix!413 lt!116274 lt!116274)))

(declare-fun lemmaIsPrefixRefl!219 (List!3903 List!3903) Unit!5128)

(assert (=> d!81340 (= lt!116364 (lemmaIsPrefixRefl!219 lt!116274 lt!116274))))

(declare-fun rulesValidInductive!214 (LexerInterface!631 List!3904) Bool)

(assert (=> d!81340 (rulesValidInductive!214 thiss!17480 rules!1920)))

(assert (=> d!81340 (= (maxPrefix!349 thiss!17480 rules!1920 lt!116274) lt!116363)))

(declare-fun b!278774 () Bool)

(declare-fun contains!751 (List!3904 Rule!1290) Bool)

(assert (=> b!278774 (= e!173471 (contains!751 rules!1920 (rule!1332 (_1!2421 (get!1308 lt!116363)))))))

(assert (= (and d!81340 c!52603) b!278779))

(assert (= (and d!81340 (not c!52603)) b!278775))

(assert (= (or b!278779 b!278775) bm!15404))

(assert (= (and d!81340 (not res!127514)) b!278772))

(assert (= (and b!278772 res!127515) b!278777))

(assert (= (and b!278777 res!127513) b!278771))

(assert (= (and b!278771 res!127519) b!278776))

(assert (= (and b!278776 res!127517) b!278773))

(assert (= (and b!278773 res!127518) b!278778))

(assert (= (and b!278778 res!127516) b!278774))

(declare-fun m!356099 () Bool)

(assert (=> b!278778 m!356099))

(declare-fun m!356101 () Bool)

(assert (=> b!278778 m!356101))

(assert (=> b!278778 m!356101))

(declare-fun m!356103 () Bool)

(assert (=> b!278778 m!356103))

(assert (=> b!278778 m!356103))

(declare-fun m!356105 () Bool)

(assert (=> b!278778 m!356105))

(declare-fun m!356107 () Bool)

(assert (=> bm!15404 m!356107))

(declare-fun m!356109 () Bool)

(assert (=> b!278772 m!356109))

(assert (=> b!278774 m!356099))

(declare-fun m!356111 () Bool)

(assert (=> b!278774 m!356111))

(declare-fun m!356113 () Bool)

(assert (=> b!278775 m!356113))

(assert (=> b!278773 m!356099))

(declare-fun m!356115 () Bool)

(assert (=> b!278773 m!356115))

(assert (=> b!278773 m!356115))

(declare-fun m!356117 () Bool)

(assert (=> b!278773 m!356117))

(assert (=> b!278776 m!356099))

(assert (=> b!278776 m!356101))

(assert (=> b!278776 m!356101))

(assert (=> b!278776 m!356103))

(assert (=> b!278776 m!356103))

(declare-fun m!356119 () Bool)

(assert (=> b!278776 m!356119))

(assert (=> b!278771 m!356099))

(declare-fun m!356121 () Bool)

(assert (=> b!278771 m!356121))

(declare-fun m!356123 () Bool)

(assert (=> b!278771 m!356123))

(declare-fun m!356125 () Bool)

(assert (=> d!81340 m!356125))

(declare-fun m!356127 () Bool)

(assert (=> d!81340 m!356127))

(declare-fun m!356129 () Bool)

(assert (=> d!81340 m!356129))

(declare-fun m!356131 () Bool)

(assert (=> d!81340 m!356131))

(assert (=> b!278777 m!356099))

(assert (=> b!278777 m!356101))

(assert (=> b!278777 m!356101))

(assert (=> b!278777 m!356103))

(assert (=> b!278591 d!81340))

(declare-fun call!15412 () List!3905)

(declare-fun bm!15407 () Bool)

(assert (=> bm!15407 (= call!15412 (filter!87 (t!39219 (_1!2423 (lexList!219 thiss!17480 rules!1920 lt!116272))) lambda!9519))))

(declare-fun b!278792 () Bool)

(declare-fun e!173482 () List!3905)

(declare-fun e!173481 () List!3905)

(assert (=> b!278792 (= e!173482 e!173481)))

(declare-fun c!52609 () Bool)

(declare-fun dynLambda!2038 (Int Token!1234) Bool)

(assert (=> b!278792 (= c!52609 (dynLambda!2038 lambda!9519 (h!9292 (_1!2423 (lexList!219 thiss!17480 rules!1920 lt!116272)))))))

(declare-fun b!278793 () Bool)

(assert (=> b!278793 (= e!173482 Nil!3895)))

(declare-fun b!278794 () Bool)

(assert (=> b!278794 (= e!173481 call!15412)))

(declare-fun d!81342 () Bool)

(declare-fun e!173480 () Bool)

(assert (=> d!81342 e!173480))

(declare-fun res!127525 () Bool)

(assert (=> d!81342 (=> (not res!127525) (not e!173480))))

(declare-fun lt!116370 () List!3905)

(declare-fun size!3111 (List!3905) Int)

(assert (=> d!81342 (= res!127525 (<= (size!3111 lt!116370) (size!3111 (_1!2423 (lexList!219 thiss!17480 rules!1920 lt!116272)))))))

(assert (=> d!81342 (= lt!116370 e!173482)))

(declare-fun c!52608 () Bool)

(assert (=> d!81342 (= c!52608 ((_ is Nil!3895) (_1!2423 (lexList!219 thiss!17480 rules!1920 lt!116272))))))

(assert (=> d!81342 (= (filter!87 (_1!2423 (lexList!219 thiss!17480 rules!1920 lt!116272)) lambda!9519) lt!116370)))

(declare-fun b!278795 () Bool)

(assert (=> b!278795 (= e!173480 (forall!992 lt!116370 lambda!9519))))

(declare-fun b!278796 () Bool)

(assert (=> b!278796 (= e!173481 (Cons!3895 (h!9292 (_1!2423 (lexList!219 thiss!17480 rules!1920 lt!116272))) call!15412))))

(declare-fun b!278797 () Bool)

(declare-fun res!127524 () Bool)

(assert (=> b!278797 (=> (not res!127524) (not e!173480))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!564 (List!3905) (InoxSet Token!1234))

(assert (=> b!278797 (= res!127524 (= ((_ map implies) (content!564 lt!116370) (content!564 (_1!2423 (lexList!219 thiss!17480 rules!1920 lt!116272)))) ((as const (InoxSet Token!1234)) true)))))

(assert (= (and d!81342 c!52608) b!278793))

(assert (= (and d!81342 (not c!52608)) b!278792))

(assert (= (and b!278792 c!52609) b!278796))

(assert (= (and b!278792 (not c!52609)) b!278794))

(assert (= (or b!278796 b!278794) bm!15407))

(assert (= (and d!81342 res!127525) b!278797))

(assert (= (and b!278797 res!127524) b!278795))

(declare-fun b_lambda!8991 () Bool)

(assert (=> (not b_lambda!8991) (not b!278792)))

(declare-fun m!356133 () Bool)

(assert (=> bm!15407 m!356133))

(declare-fun m!356135 () Bool)

(assert (=> b!278795 m!356135))

(declare-fun m!356137 () Bool)

(assert (=> b!278792 m!356137))

(declare-fun m!356139 () Bool)

(assert (=> d!81342 m!356139))

(declare-fun m!356141 () Bool)

(assert (=> d!81342 m!356141))

(declare-fun m!356143 () Bool)

(assert (=> b!278797 m!356143))

(declare-fun m!356145 () Bool)

(assert (=> b!278797 m!356145))

(assert (=> b!278592 d!81342))

(declare-fun b!278808 () Bool)

(declare-fun e!173491 () tuple2!4414)

(declare-fun lt!116377 () Option!850)

(declare-fun lt!116379 () tuple2!4414)

(assert (=> b!278808 (= e!173491 (tuple2!4415 (Cons!3895 (_1!2421 (v!14750 lt!116377)) (_1!2423 lt!116379)) (_2!2423 lt!116379)))))

(assert (=> b!278808 (= lt!116379 (lexList!219 thiss!17480 rules!1920 (_2!2421 (v!14750 lt!116377))))))

(declare-fun b!278810 () Bool)

(assert (=> b!278810 (= e!173491 (tuple2!4415 Nil!3895 lt!116272))))

(declare-fun b!278811 () Bool)

(declare-fun e!173489 () Bool)

(declare-fun lt!116378 () tuple2!4414)

(assert (=> b!278811 (= e!173489 (not (isEmpty!2538 (_1!2423 lt!116378))))))

(declare-fun b!278812 () Bool)

(declare-fun e!173490 () Bool)

(assert (=> b!278812 (= e!173490 (= (_2!2423 lt!116378) lt!116272))))

(declare-fun b!278809 () Bool)

(assert (=> b!278809 (= e!173490 e!173489)))

(declare-fun res!127528 () Bool)

(assert (=> b!278809 (= res!127528 (< (size!3110 (_2!2423 lt!116378)) (size!3110 lt!116272)))))

(assert (=> b!278809 (=> (not res!127528) (not e!173489))))

(declare-fun d!81344 () Bool)

(assert (=> d!81344 e!173490))

(declare-fun c!52615 () Bool)

(assert (=> d!81344 (= c!52615 (> (size!3111 (_1!2423 lt!116378)) 0))))

(assert (=> d!81344 (= lt!116378 e!173491)))

(declare-fun c!52614 () Bool)

(assert (=> d!81344 (= c!52614 ((_ is Some!849) lt!116377))))

(assert (=> d!81344 (= lt!116377 (maxPrefix!349 thiss!17480 rules!1920 lt!116272))))

(assert (=> d!81344 (= (lexList!219 thiss!17480 rules!1920 lt!116272) lt!116378)))

(assert (= (and d!81344 c!52614) b!278808))

(assert (= (and d!81344 (not c!52614)) b!278810))

(assert (= (and d!81344 c!52615) b!278809))

(assert (= (and d!81344 (not c!52615)) b!278812))

(assert (= (and b!278809 res!127528) b!278811))

(declare-fun m!356147 () Bool)

(assert (=> b!278808 m!356147))

(declare-fun m!356149 () Bool)

(assert (=> b!278811 m!356149))

(declare-fun m!356151 () Bool)

(assert (=> b!278809 m!356151))

(declare-fun m!356153 () Bool)

(assert (=> b!278809 m!356153))

(declare-fun m!356155 () Bool)

(assert (=> d!81344 m!356155))

(declare-fun m!356157 () Bool)

(assert (=> d!81344 m!356157))

(assert (=> b!278592 d!81344))

(declare-fun d!81346 () Bool)

(declare-fun lt!116382 () Int)

(assert (=> d!81346 (= lt!116382 (size!3111 (list!1609 (_1!2420 lt!116297))))))

(declare-fun size!3113 (Conc!1313) Int)

(assert (=> d!81346 (= lt!116382 (size!3113 (c!52576 (_1!2420 lt!116297))))))

(assert (=> d!81346 (= (size!3107 (_1!2420 lt!116297)) lt!116382)))

(declare-fun bs!31187 () Bool)

(assert (= bs!31187 d!81346))

(declare-fun m!356159 () Bool)

(assert (=> bs!31187 m!356159))

(assert (=> bs!31187 m!356159))

(declare-fun m!356161 () Bool)

(assert (=> bs!31187 m!356161))

(declare-fun m!356163 () Bool)

(assert (=> bs!31187 m!356163))

(assert (=> b!278590 d!81346))

(declare-fun d!81348 () Bool)

(declare-fun lt!116389 () BalanceConc!2632)

(assert (=> d!81348 (= (list!1608 lt!116389) (originalCharacters!788 lt!116283))))

(declare-fun dynLambda!2039 (Int TokenValue!767) BalanceConc!2632)

(assert (=> d!81348 (= lt!116389 (dynLambda!2039 (toChars!1347 (transformation!745 (rule!1332 lt!116283))) (value!25548 lt!116283)))))

(assert (=> d!81348 (= (charsOf!390 lt!116283) lt!116389)))

(declare-fun b_lambda!8993 () Bool)

(assert (=> (not b_lambda!8993) (not d!81348)))

(declare-fun t!39240 () Bool)

(declare-fun tb!15873 () Bool)

(assert (=> (and b!278571 (= (toChars!1347 (transformation!745 (rule!1332 separatorToken!170))) (toChars!1347 (transformation!745 (rule!1332 lt!116283)))) t!39240) tb!15873))

(declare-fun b!278823 () Bool)

(declare-fun e!173498 () Bool)

(declare-fun tp!104110 () Bool)

(declare-fun inv!4817 (Conc!1312) Bool)

(assert (=> b!278823 (= e!173498 (and (inv!4817 (c!52574 (dynLambda!2039 (toChars!1347 (transformation!745 (rule!1332 lt!116283))) (value!25548 lt!116283)))) tp!104110))))

(declare-fun result!19586 () Bool)

(declare-fun inv!4818 (BalanceConc!2632) Bool)

(assert (=> tb!15873 (= result!19586 (and (inv!4818 (dynLambda!2039 (toChars!1347 (transformation!745 (rule!1332 lt!116283))) (value!25548 lt!116283))) e!173498))))

(assert (= tb!15873 b!278823))

(declare-fun m!356165 () Bool)

(assert (=> b!278823 m!356165))

(declare-fun m!356167 () Bool)

(assert (=> tb!15873 m!356167))

(assert (=> d!81348 t!39240))

(declare-fun b_and!22381 () Bool)

(assert (= b_and!22359 (and (=> t!39240 result!19586) b_and!22381)))

(declare-fun tb!15875 () Bool)

(declare-fun t!39244 () Bool)

(assert (=> (and b!278569 (= (toChars!1347 (transformation!745 (rule!1332 (h!9292 tokens!465)))) (toChars!1347 (transformation!745 (rule!1332 lt!116283)))) t!39244) tb!15875))

(declare-fun result!19590 () Bool)

(assert (= result!19590 result!19586))

(assert (=> d!81348 t!39244))

(declare-fun b_and!22383 () Bool)

(assert (= b_and!22363 (and (=> t!39244 result!19590) b_and!22383)))

(declare-fun tb!15877 () Bool)

(declare-fun t!39246 () Bool)

(assert (=> (and b!278555 (= (toChars!1347 (transformation!745 (h!9291 rules!1920))) (toChars!1347 (transformation!745 (rule!1332 lt!116283)))) t!39246) tb!15877))

(declare-fun result!19592 () Bool)

(assert (= result!19592 result!19586))

(assert (=> d!81348 t!39246))

(declare-fun b_and!22385 () Bool)

(assert (= b_and!22367 (and (=> t!39246 result!19592) b_and!22385)))

(declare-fun m!356169 () Bool)

(assert (=> d!81348 m!356169))

(declare-fun m!356171 () Bool)

(assert (=> d!81348 m!356171))

(assert (=> b!278590 d!81348))

(declare-fun d!81350 () Bool)

(declare-fun e!173524 () Bool)

(assert (=> d!81350 e!173524))

(declare-fun res!127545 () Bool)

(assert (=> d!81350 (=> (not res!127545) (not e!173524))))

(declare-fun e!173522 () Bool)

(assert (=> d!81350 (= res!127545 e!173522)))

(declare-fun c!52627 () Bool)

(declare-fun lt!116430 () tuple2!4408)

(assert (=> d!81350 (= c!52627 (> (size!3107 (_1!2420 lt!116430)) 0))))

(declare-fun lexTailRecV2!185 (LexerInterface!631 List!3904 BalanceConc!2632 BalanceConc!2632 BalanceConc!2632 BalanceConc!2634) tuple2!4408)

(assert (=> d!81350 (= lt!116430 (lexTailRecV2!185 thiss!17480 rules!1920 lt!116286 (BalanceConc!2633 Empty!1312) lt!116286 (BalanceConc!2635 Empty!1313)))))

(assert (=> d!81350 (= (lex!423 thiss!17480 rules!1920 lt!116286) lt!116430)))

(declare-fun b!278858 () Bool)

(declare-fun e!173523 () Bool)

(assert (=> b!278858 (= e!173523 (not (isEmpty!2535 (_1!2420 lt!116430))))))

(declare-fun b!278859 () Bool)

(declare-fun res!127544 () Bool)

(assert (=> b!278859 (=> (not res!127544) (not e!173524))))

(assert (=> b!278859 (= res!127544 (= (list!1609 (_1!2420 lt!116430)) (_1!2423 (lexList!219 thiss!17480 rules!1920 (list!1608 lt!116286)))))))

(declare-fun b!278860 () Bool)

(assert (=> b!278860 (= e!173522 (= (_2!2420 lt!116430) lt!116286))))

(declare-fun b!278861 () Bool)

(assert (=> b!278861 (= e!173524 (= (list!1608 (_2!2420 lt!116430)) (_2!2423 (lexList!219 thiss!17480 rules!1920 (list!1608 lt!116286)))))))

(declare-fun b!278862 () Bool)

(assert (=> b!278862 (= e!173522 e!173523)))

(declare-fun res!127546 () Bool)

(declare-fun size!3114 (BalanceConc!2632) Int)

(assert (=> b!278862 (= res!127546 (< (size!3114 (_2!2420 lt!116430)) (size!3114 lt!116286)))))

(assert (=> b!278862 (=> (not res!127546) (not e!173523))))

(assert (= (and d!81350 c!52627) b!278862))

(assert (= (and d!81350 (not c!52627)) b!278860))

(assert (= (and b!278862 res!127546) b!278858))

(assert (= (and d!81350 res!127545) b!278859))

(assert (= (and b!278859 res!127544) b!278861))

(declare-fun m!356233 () Bool)

(assert (=> b!278859 m!356233))

(declare-fun m!356235 () Bool)

(assert (=> b!278859 m!356235))

(assert (=> b!278859 m!356235))

(declare-fun m!356237 () Bool)

(assert (=> b!278859 m!356237))

(declare-fun m!356239 () Bool)

(assert (=> b!278862 m!356239))

(declare-fun m!356241 () Bool)

(assert (=> b!278862 m!356241))

(declare-fun m!356243 () Bool)

(assert (=> d!81350 m!356243))

(declare-fun m!356245 () Bool)

(assert (=> d!81350 m!356245))

(declare-fun m!356247 () Bool)

(assert (=> b!278858 m!356247))

(declare-fun m!356249 () Bool)

(assert (=> b!278861 m!356249))

(assert (=> b!278861 m!356235))

(assert (=> b!278861 m!356235))

(assert (=> b!278861 m!356237))

(assert (=> b!278590 d!81350))

(declare-fun d!81354 () Bool)

(assert (=> d!81354 (= lt!116261 (_2!2421 lt!116285))))

(declare-fun lt!116433 () Unit!5128)

(declare-fun choose!2515 (List!3903 List!3903 List!3903 List!3903 List!3903) Unit!5128)

(assert (=> d!81354 (= lt!116433 (choose!2515 lt!116274 lt!116261 lt!116274 (_2!2421 lt!116285) lt!116287))))

(assert (=> d!81354 (isPrefix!413 lt!116274 lt!116287)))

(assert (=> d!81354 (= (lemmaSamePrefixThenSameSuffix!214 lt!116274 lt!116261 lt!116274 (_2!2421 lt!116285) lt!116287) lt!116433)))

(declare-fun bs!31193 () Bool)

(assert (= bs!31193 d!81354))

(declare-fun m!356251 () Bool)

(assert (=> bs!31193 m!356251))

(declare-fun m!356253 () Bool)

(assert (=> bs!31193 m!356253))

(assert (=> b!278590 d!81354))

(declare-fun bm!15423 () Bool)

(declare-fun call!15428 () Option!850)

(assert (=> bm!15423 (= call!15428 (maxPrefixOneRule!153 thiss!17480 (h!9291 rules!1920) lt!116261))))

(declare-fun b!278863 () Bool)

(declare-fun res!127553 () Bool)

(declare-fun e!173525 () Bool)

(assert (=> b!278863 (=> (not res!127553) (not e!173525))))

(declare-fun lt!116434 () Option!850)

(assert (=> b!278863 (= res!127553 (< (size!3110 (_2!2421 (get!1308 lt!116434))) (size!3110 lt!116261)))))

(declare-fun b!278864 () Bool)

(declare-fun e!173526 () Bool)

(assert (=> b!278864 (= e!173526 e!173525)))

(declare-fun res!127549 () Bool)

(assert (=> b!278864 (=> (not res!127549) (not e!173525))))

(assert (=> b!278864 (= res!127549 (isDefined!694 lt!116434))))

(declare-fun b!278865 () Bool)

(declare-fun res!127552 () Bool)

(assert (=> b!278865 (=> (not res!127552) (not e!173525))))

(assert (=> b!278865 (= res!127552 (= (value!25548 (_1!2421 (get!1308 lt!116434))) (apply!812 (transformation!745 (rule!1332 (_1!2421 (get!1308 lt!116434)))) (seqFromList!858 (originalCharacters!788 (_1!2421 (get!1308 lt!116434)))))))))

(declare-fun b!278867 () Bool)

(declare-fun e!173527 () Option!850)

(declare-fun lt!116438 () Option!850)

(declare-fun lt!116437 () Option!850)

(assert (=> b!278867 (= e!173527 (ite (and ((_ is None!849) lt!116438) ((_ is None!849) lt!116437)) None!849 (ite ((_ is None!849) lt!116437) lt!116438 (ite ((_ is None!849) lt!116438) lt!116437 (ite (>= (size!3106 (_1!2421 (v!14750 lt!116438))) (size!3106 (_1!2421 (v!14750 lt!116437)))) lt!116438 lt!116437)))))))

(assert (=> b!278867 (= lt!116438 call!15428)))

(assert (=> b!278867 (= lt!116437 (maxPrefix!349 thiss!17480 (t!39218 rules!1920) lt!116261))))

(declare-fun b!278868 () Bool)

(declare-fun res!127551 () Bool)

(assert (=> b!278868 (=> (not res!127551) (not e!173525))))

(assert (=> b!278868 (= res!127551 (= (++!1030 (list!1608 (charsOf!390 (_1!2421 (get!1308 lt!116434)))) (_2!2421 (get!1308 lt!116434))) lt!116261))))

(declare-fun b!278869 () Bool)

(declare-fun res!127547 () Bool)

(assert (=> b!278869 (=> (not res!127547) (not e!173525))))

(assert (=> b!278869 (= res!127547 (= (list!1608 (charsOf!390 (_1!2421 (get!1308 lt!116434)))) (originalCharacters!788 (_1!2421 (get!1308 lt!116434)))))))

(declare-fun b!278870 () Bool)

(declare-fun res!127550 () Bool)

(assert (=> b!278870 (=> (not res!127550) (not e!173525))))

(assert (=> b!278870 (= res!127550 (matchR!291 (regex!745 (rule!1332 (_1!2421 (get!1308 lt!116434)))) (list!1608 (charsOf!390 (_1!2421 (get!1308 lt!116434))))))))

(declare-fun b!278871 () Bool)

(assert (=> b!278871 (= e!173527 call!15428)))

(declare-fun d!81356 () Bool)

(assert (=> d!81356 e!173526))

(declare-fun res!127548 () Bool)

(assert (=> d!81356 (=> res!127548 e!173526)))

(assert (=> d!81356 (= res!127548 (isEmpty!2540 lt!116434))))

(assert (=> d!81356 (= lt!116434 e!173527)))

(declare-fun c!52628 () Bool)

(assert (=> d!81356 (= c!52628 (and ((_ is Cons!3894) rules!1920) ((_ is Nil!3894) (t!39218 rules!1920))))))

(declare-fun lt!116436 () Unit!5128)

(declare-fun lt!116435 () Unit!5128)

(assert (=> d!81356 (= lt!116436 lt!116435)))

(assert (=> d!81356 (isPrefix!413 lt!116261 lt!116261)))

(assert (=> d!81356 (= lt!116435 (lemmaIsPrefixRefl!219 lt!116261 lt!116261))))

(assert (=> d!81356 (rulesValidInductive!214 thiss!17480 rules!1920)))

(assert (=> d!81356 (= (maxPrefix!349 thiss!17480 rules!1920 lt!116261) lt!116434)))

(declare-fun b!278866 () Bool)

(assert (=> b!278866 (= e!173525 (contains!751 rules!1920 (rule!1332 (_1!2421 (get!1308 lt!116434)))))))

(assert (= (and d!81356 c!52628) b!278871))

(assert (= (and d!81356 (not c!52628)) b!278867))

(assert (= (or b!278871 b!278867) bm!15423))

(assert (= (and d!81356 (not res!127548)) b!278864))

(assert (= (and b!278864 res!127549) b!278869))

(assert (= (and b!278869 res!127547) b!278863))

(assert (= (and b!278863 res!127553) b!278868))

(assert (= (and b!278868 res!127551) b!278865))

(assert (= (and b!278865 res!127552) b!278870))

(assert (= (and b!278870 res!127550) b!278866))

(declare-fun m!356255 () Bool)

(assert (=> b!278870 m!356255))

(declare-fun m!356257 () Bool)

(assert (=> b!278870 m!356257))

(assert (=> b!278870 m!356257))

(declare-fun m!356259 () Bool)

(assert (=> b!278870 m!356259))

(assert (=> b!278870 m!356259))

(declare-fun m!356261 () Bool)

(assert (=> b!278870 m!356261))

(declare-fun m!356263 () Bool)

(assert (=> bm!15423 m!356263))

(declare-fun m!356265 () Bool)

(assert (=> b!278864 m!356265))

(assert (=> b!278866 m!356255))

(declare-fun m!356267 () Bool)

(assert (=> b!278866 m!356267))

(declare-fun m!356269 () Bool)

(assert (=> b!278867 m!356269))

(assert (=> b!278865 m!356255))

(declare-fun m!356271 () Bool)

(assert (=> b!278865 m!356271))

(assert (=> b!278865 m!356271))

(declare-fun m!356273 () Bool)

(assert (=> b!278865 m!356273))

(assert (=> b!278868 m!356255))

(assert (=> b!278868 m!356257))

(assert (=> b!278868 m!356257))

(assert (=> b!278868 m!356259))

(assert (=> b!278868 m!356259))

(declare-fun m!356275 () Bool)

(assert (=> b!278868 m!356275))

(assert (=> b!278863 m!356255))

(declare-fun m!356277 () Bool)

(assert (=> b!278863 m!356277))

(declare-fun m!356279 () Bool)

(assert (=> b!278863 m!356279))

(declare-fun m!356281 () Bool)

(assert (=> d!81356 m!356281))

(declare-fun m!356283 () Bool)

(assert (=> d!81356 m!356283))

(declare-fun m!356285 () Bool)

(assert (=> d!81356 m!356285))

(assert (=> d!81356 m!356131))

(assert (=> b!278869 m!356255))

(assert (=> b!278869 m!356257))

(assert (=> b!278869 m!356257))

(assert (=> b!278869 m!356259))

(assert (=> b!278590 d!81356))

(declare-fun d!81358 () Bool)

(assert (=> d!81358 (rulesProduceIndividualToken!380 thiss!17480 rules!1920 lt!116283)))

(declare-fun lt!116467 () Unit!5128)

(declare-fun choose!2517 (LexerInterface!631 List!3904 List!3905 Token!1234) Unit!5128)

(assert (=> d!81358 (= lt!116467 (choose!2517 thiss!17480 rules!1920 tokens!465 lt!116283))))

(assert (=> d!81358 (not (isEmpty!2537 rules!1920))))

(assert (=> d!81358 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!128 thiss!17480 rules!1920 tokens!465 lt!116283) lt!116467)))

(declare-fun bs!31200 () Bool)

(assert (= bs!31200 d!81358))

(assert (=> bs!31200 m!355859))

(declare-fun m!356345 () Bool)

(assert (=> bs!31200 m!356345))

(assert (=> bs!31200 m!355725))

(assert (=> b!278590 d!81358))

(declare-fun b!278956 () Bool)

(declare-fun e!173574 () Bool)

(declare-fun lt!116476 () Option!849)

(assert (=> b!278956 (= e!173574 (= (tag!955 (get!1307 lt!116476)) (tag!955 (rule!1332 separatorToken!170))))))

(declare-fun d!81378 () Bool)

(declare-fun e!173577 () Bool)

(assert (=> d!81378 e!173577))

(declare-fun res!127585 () Bool)

(assert (=> d!81378 (=> res!127585 e!173577)))

(declare-fun isEmpty!2542 (Option!849) Bool)

(assert (=> d!81378 (= res!127585 (isEmpty!2542 lt!116476))))

(declare-fun e!173575 () Option!849)

(assert (=> d!81378 (= lt!116476 e!173575)))

(declare-fun c!52655 () Bool)

(assert (=> d!81378 (= c!52655 (and ((_ is Cons!3894) rules!1920) (= (tag!955 (h!9291 rules!1920)) (tag!955 (rule!1332 separatorToken!170)))))))

(assert (=> d!81378 (rulesInvariant!597 thiss!17480 rules!1920)))

(assert (=> d!81378 (= (getRuleFromTag!132 thiss!17480 rules!1920 (tag!955 (rule!1332 separatorToken!170))) lt!116476)))

(declare-fun b!278957 () Bool)

(assert (=> b!278957 (= e!173577 e!173574)))

(declare-fun res!127586 () Bool)

(assert (=> b!278957 (=> (not res!127586) (not e!173574))))

(assert (=> b!278957 (= res!127586 (contains!751 rules!1920 (get!1307 lt!116476)))))

(declare-fun b!278958 () Bool)

(assert (=> b!278958 (= e!173575 (Some!848 (h!9291 rules!1920)))))

(declare-fun b!278959 () Bool)

(declare-fun lt!116474 () Unit!5128)

(declare-fun lt!116475 () Unit!5128)

(assert (=> b!278959 (= lt!116474 lt!116475)))

(assert (=> b!278959 (rulesInvariant!597 thiss!17480 (t!39218 rules!1920))))

(declare-fun lemmaInvariantOnRulesThenOnTail!33 (LexerInterface!631 Rule!1290 List!3904) Unit!5128)

(assert (=> b!278959 (= lt!116475 (lemmaInvariantOnRulesThenOnTail!33 thiss!17480 (h!9291 rules!1920) (t!39218 rules!1920)))))

(declare-fun e!173576 () Option!849)

(assert (=> b!278959 (= e!173576 (getRuleFromTag!132 thiss!17480 (t!39218 rules!1920) (tag!955 (rule!1332 separatorToken!170))))))

(declare-fun b!278960 () Bool)

(assert (=> b!278960 (= e!173576 None!848)))

(declare-fun b!278961 () Bool)

(assert (=> b!278961 (= e!173575 e!173576)))

(declare-fun c!52654 () Bool)

(assert (=> b!278961 (= c!52654 (and ((_ is Cons!3894) rules!1920) (not (= (tag!955 (h!9291 rules!1920)) (tag!955 (rule!1332 separatorToken!170))))))))

(assert (= (and d!81378 c!52655) b!278958))

(assert (= (and d!81378 (not c!52655)) b!278961))

(assert (= (and b!278961 c!52654) b!278959))

(assert (= (and b!278961 (not c!52654)) b!278960))

(assert (= (and d!81378 (not res!127585)) b!278957))

(assert (= (and b!278957 res!127586) b!278956))

(declare-fun m!356347 () Bool)

(assert (=> b!278956 m!356347))

(declare-fun m!356349 () Bool)

(assert (=> d!81378 m!356349))

(assert (=> d!81378 m!355715))

(assert (=> b!278957 m!356347))

(assert (=> b!278957 m!356347))

(declare-fun m!356351 () Bool)

(assert (=> b!278957 m!356351))

(declare-fun m!356353 () Bool)

(assert (=> b!278959 m!356353))

(declare-fun m!356355 () Bool)

(assert (=> b!278959 m!356355))

(declare-fun m!356357 () Bool)

(assert (=> b!278959 m!356357))

(assert (=> b!278590 d!81378))

(declare-fun d!81380 () Bool)

(declare-fun e!173580 () Bool)

(assert (=> d!81380 e!173580))

(declare-fun res!127588 () Bool)

(assert (=> d!81380 (=> (not res!127588) (not e!173580))))

(declare-fun e!173578 () Bool)

(assert (=> d!81380 (= res!127588 e!173578)))

(declare-fun c!52656 () Bool)

(declare-fun lt!116479 () tuple2!4408)

(assert (=> d!81380 (= c!52656 (> (size!3107 (_1!2420 lt!116479)) 0))))

(assert (=> d!81380 (= lt!116479 (lexTailRecV2!185 thiss!17480 rules!1920 lt!116303 (BalanceConc!2633 Empty!1312) lt!116303 (BalanceConc!2635 Empty!1313)))))

(assert (=> d!81380 (= (lex!423 thiss!17480 rules!1920 lt!116303) lt!116479)))

(declare-fun b!278962 () Bool)

(declare-fun e!173579 () Bool)

(assert (=> b!278962 (= e!173579 (not (isEmpty!2535 (_1!2420 lt!116479))))))

(declare-fun b!278963 () Bool)

(declare-fun res!127587 () Bool)

(assert (=> b!278963 (=> (not res!127587) (not e!173580))))

(assert (=> b!278963 (= res!127587 (= (list!1609 (_1!2420 lt!116479)) (_1!2423 (lexList!219 thiss!17480 rules!1920 (list!1608 lt!116303)))))))

(declare-fun b!278964 () Bool)

(assert (=> b!278964 (= e!173578 (= (_2!2420 lt!116479) lt!116303))))

(declare-fun b!278965 () Bool)

(assert (=> b!278965 (= e!173580 (= (list!1608 (_2!2420 lt!116479)) (_2!2423 (lexList!219 thiss!17480 rules!1920 (list!1608 lt!116303)))))))

(declare-fun b!278966 () Bool)

(assert (=> b!278966 (= e!173578 e!173579)))

(declare-fun res!127589 () Bool)

(assert (=> b!278966 (= res!127589 (< (size!3114 (_2!2420 lt!116479)) (size!3114 lt!116303)))))

(assert (=> b!278966 (=> (not res!127589) (not e!173579))))

(assert (= (and d!81380 c!52656) b!278966))

(assert (= (and d!81380 (not c!52656)) b!278964))

(assert (= (and b!278966 res!127589) b!278962))

(assert (= (and d!81380 res!127588) b!278963))

(assert (= (and b!278963 res!127587) b!278965))

(declare-fun m!356359 () Bool)

(assert (=> b!278963 m!356359))

(assert (=> b!278963 m!355731))

(assert (=> b!278963 m!355731))

(declare-fun m!356361 () Bool)

(assert (=> b!278963 m!356361))

(declare-fun m!356363 () Bool)

(assert (=> b!278966 m!356363))

(declare-fun m!356365 () Bool)

(assert (=> b!278966 m!356365))

(declare-fun m!356369 () Bool)

(assert (=> d!81380 m!356369))

(declare-fun m!356373 () Bool)

(assert (=> d!81380 m!356373))

(declare-fun m!356375 () Bool)

(assert (=> b!278962 m!356375))

(declare-fun m!356377 () Bool)

(assert (=> b!278965 m!356377))

(assert (=> b!278965 m!355731))

(assert (=> b!278965 m!355731))

(assert (=> b!278965 m!356361))

(assert (=> b!278590 d!81380))

(declare-fun d!81384 () Bool)

(assert (=> d!81384 (= (maxPrefix!349 thiss!17480 rules!1920 (++!1030 (list!1608 (charsOf!390 separatorToken!170)) lt!116272)) (Some!849 (tuple2!4411 separatorToken!170 lt!116272)))))

(declare-fun lt!116489 () Unit!5128)

(declare-fun choose!2518 (LexerInterface!631 List!3904 Token!1234 Rule!1290 List!3903 Rule!1290) Unit!5128)

(assert (=> d!81384 (= lt!116489 (choose!2518 thiss!17480 rules!1920 separatorToken!170 (rule!1332 separatorToken!170) lt!116272 (rule!1332 lt!116283)))))

(assert (=> d!81384 (not (isEmpty!2537 rules!1920))))

(assert (=> d!81384 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!64 thiss!17480 rules!1920 separatorToken!170 (rule!1332 separatorToken!170) lt!116272 (rule!1332 lt!116283)) lt!116489)))

(declare-fun bs!31202 () Bool)

(assert (= bs!31202 d!81384))

(declare-fun m!356397 () Bool)

(assert (=> bs!31202 m!356397))

(assert (=> bs!31202 m!355733))

(assert (=> bs!31202 m!355733))

(assert (=> bs!31202 m!355735))

(declare-fun m!356399 () Bool)

(assert (=> bs!31202 m!356399))

(declare-fun m!356401 () Bool)

(assert (=> bs!31202 m!356401))

(assert (=> bs!31202 m!355725))

(assert (=> bs!31202 m!355735))

(assert (=> bs!31202 m!356399))

(assert (=> b!278590 d!81384))

(declare-fun b!278985 () Bool)

(declare-fun res!127610 () Bool)

(declare-fun e!173594 () Bool)

(assert (=> b!278985 (=> (not res!127610) (not e!173594))))

(assert (=> b!278985 (= res!127610 (= (head!918 lt!116274) (head!918 lt!116307)))))

(declare-fun d!81390 () Bool)

(declare-fun e!173593 () Bool)

(assert (=> d!81390 e!173593))

(declare-fun res!127607 () Bool)

(assert (=> d!81390 (=> res!127607 e!173593)))

(declare-fun lt!116492 () Bool)

(assert (=> d!81390 (= res!127607 (not lt!116492))))

(declare-fun e!173595 () Bool)

(assert (=> d!81390 (= lt!116492 e!173595)))

(declare-fun res!127608 () Bool)

(assert (=> d!81390 (=> res!127608 e!173595)))

(assert (=> d!81390 (= res!127608 ((_ is Nil!3893) lt!116274))))

(assert (=> d!81390 (= (isPrefix!413 lt!116274 lt!116307) lt!116492)))

(declare-fun b!278984 () Bool)

(assert (=> b!278984 (= e!173595 e!173594)))

(declare-fun res!127609 () Bool)

(assert (=> b!278984 (=> (not res!127609) (not e!173594))))

(assert (=> b!278984 (= res!127609 (not ((_ is Nil!3893) lt!116307)))))

(declare-fun b!278987 () Bool)

(assert (=> b!278987 (= e!173593 (>= (size!3110 lt!116307) (size!3110 lt!116274)))))

(declare-fun b!278986 () Bool)

(declare-fun tail!499 (List!3903) List!3903)

(assert (=> b!278986 (= e!173594 (isPrefix!413 (tail!499 lt!116274) (tail!499 lt!116307)))))

(assert (= (and d!81390 (not res!127608)) b!278984))

(assert (= (and b!278984 res!127609) b!278985))

(assert (= (and b!278985 res!127610) b!278986))

(assert (= (and d!81390 (not res!127607)) b!278987))

(declare-fun m!356403 () Bool)

(assert (=> b!278985 m!356403))

(declare-fun m!356405 () Bool)

(assert (=> b!278985 m!356405))

(declare-fun m!356407 () Bool)

(assert (=> b!278987 m!356407))

(assert (=> b!278987 m!356123))

(declare-fun m!356409 () Bool)

(assert (=> b!278986 m!356409))

(declare-fun m!356411 () Bool)

(assert (=> b!278986 m!356411))

(assert (=> b!278986 m!356409))

(assert (=> b!278986 m!356411))

(declare-fun m!356413 () Bool)

(assert (=> b!278986 m!356413))

(assert (=> b!278590 d!81390))

(declare-fun d!81392 () Bool)

(declare-fun lt!116493 () Int)

(assert (=> d!81392 (= lt!116493 (size!3111 (list!1609 (_1!2420 lt!116309))))))

(assert (=> d!81392 (= lt!116493 (size!3113 (c!52576 (_1!2420 lt!116309))))))

(assert (=> d!81392 (= (size!3107 (_1!2420 lt!116309)) lt!116493)))

(declare-fun bs!31203 () Bool)

(assert (= bs!31203 d!81392))

(declare-fun m!356415 () Bool)

(assert (=> bs!31203 m!356415))

(assert (=> bs!31203 m!356415))

(declare-fun m!356417 () Bool)

(assert (=> bs!31203 m!356417))

(declare-fun m!356419 () Bool)

(assert (=> bs!31203 m!356419))

(assert (=> b!278590 d!81392))

(declare-fun d!81394 () Bool)

(declare-fun e!173598 () Bool)

(assert (=> d!81394 e!173598))

(declare-fun res!127615 () Bool)

(assert (=> d!81394 (=> (not res!127615) (not e!173598))))

(assert (=> d!81394 (= res!127615 (isDefined!693 (getRuleFromTag!132 thiss!17480 rules!1920 (tag!955 (rule!1332 separatorToken!170)))))))

(declare-fun lt!116496 () Unit!5128)

(declare-fun choose!2519 (LexerInterface!631 List!3904 List!3903 Token!1234) Unit!5128)

(assert (=> d!81394 (= lt!116496 (choose!2519 thiss!17480 rules!1920 lt!116264 separatorToken!170))))

(assert (=> d!81394 (rulesInvariant!597 thiss!17480 rules!1920)))

(assert (=> d!81394 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!132 thiss!17480 rules!1920 lt!116264 separatorToken!170) lt!116496)))

(declare-fun b!278992 () Bool)

(declare-fun res!127616 () Bool)

(assert (=> b!278992 (=> (not res!127616) (not e!173598))))

(assert (=> b!278992 (= res!127616 (matchR!291 (regex!745 (get!1307 (getRuleFromTag!132 thiss!17480 rules!1920 (tag!955 (rule!1332 separatorToken!170))))) (list!1608 (charsOf!390 separatorToken!170))))))

(declare-fun b!278993 () Bool)

(assert (=> b!278993 (= e!173598 (= (rule!1332 separatorToken!170) (get!1307 (getRuleFromTag!132 thiss!17480 rules!1920 (tag!955 (rule!1332 separatorToken!170))))))))

(assert (= (and d!81394 res!127615) b!278992))

(assert (= (and b!278992 res!127616) b!278993))

(assert (=> d!81394 m!355879))

(assert (=> d!81394 m!355879))

(declare-fun m!356421 () Bool)

(assert (=> d!81394 m!356421))

(declare-fun m!356423 () Bool)

(assert (=> d!81394 m!356423))

(assert (=> d!81394 m!355715))

(assert (=> b!278992 m!355735))

(declare-fun m!356425 () Bool)

(assert (=> b!278992 m!356425))

(assert (=> b!278992 m!355733))

(assert (=> b!278992 m!355733))

(assert (=> b!278992 m!355735))

(assert (=> b!278992 m!355879))

(declare-fun m!356427 () Bool)

(assert (=> b!278992 m!356427))

(assert (=> b!278992 m!355879))

(assert (=> b!278993 m!355879))

(assert (=> b!278993 m!355879))

(assert (=> b!278993 m!356427))

(assert (=> b!278590 d!81394))

(declare-fun bm!15442 () Bool)

(declare-fun call!15447 () List!3905)

(assert (=> bm!15442 (= call!15447 (filter!87 (t!39219 lt!116273) lambda!9519))))

(declare-fun b!278994 () Bool)

(declare-fun e!173601 () List!3905)

(declare-fun e!173600 () List!3905)

(assert (=> b!278994 (= e!173601 e!173600)))

(declare-fun c!52658 () Bool)

(assert (=> b!278994 (= c!52658 (dynLambda!2038 lambda!9519 (h!9292 lt!116273)))))

(declare-fun b!278995 () Bool)

(assert (=> b!278995 (= e!173601 Nil!3895)))

(declare-fun b!278996 () Bool)

(assert (=> b!278996 (= e!173600 call!15447)))

(declare-fun d!81396 () Bool)

(declare-fun e!173599 () Bool)

(assert (=> d!81396 e!173599))

(declare-fun res!127618 () Bool)

(assert (=> d!81396 (=> (not res!127618) (not e!173599))))

(declare-fun lt!116497 () List!3905)

(assert (=> d!81396 (= res!127618 (<= (size!3111 lt!116497) (size!3111 lt!116273)))))

(assert (=> d!81396 (= lt!116497 e!173601)))

(declare-fun c!52657 () Bool)

(assert (=> d!81396 (= c!52657 ((_ is Nil!3895) lt!116273))))

(assert (=> d!81396 (= (filter!87 lt!116273 lambda!9519) lt!116497)))

(declare-fun b!278997 () Bool)

(assert (=> b!278997 (= e!173599 (forall!992 lt!116497 lambda!9519))))

(declare-fun b!278998 () Bool)

(assert (=> b!278998 (= e!173600 (Cons!3895 (h!9292 lt!116273) call!15447))))

(declare-fun b!278999 () Bool)

(declare-fun res!127617 () Bool)

(assert (=> b!278999 (=> (not res!127617) (not e!173599))))

(assert (=> b!278999 (= res!127617 (= ((_ map implies) (content!564 lt!116497) (content!564 lt!116273)) ((as const (InoxSet Token!1234)) true)))))

(assert (= (and d!81396 c!52657) b!278995))

(assert (= (and d!81396 (not c!52657)) b!278994))

(assert (= (and b!278994 c!52658) b!278998))

(assert (= (and b!278994 (not c!52658)) b!278996))

(assert (= (or b!278998 b!278996) bm!15442))

(assert (= (and d!81396 res!127618) b!278999))

(assert (= (and b!278999 res!127617) b!278997))

(declare-fun b_lambda!8997 () Bool)

(assert (=> (not b_lambda!8997) (not b!278994)))

(declare-fun m!356429 () Bool)

(assert (=> bm!15442 m!356429))

(declare-fun m!356431 () Bool)

(assert (=> b!278997 m!356431))

(declare-fun m!356433 () Bool)

(assert (=> b!278994 m!356433))

(declare-fun m!356435 () Bool)

(assert (=> d!81396 m!356435))

(declare-fun m!356437 () Bool)

(assert (=> d!81396 m!356437))

(declare-fun m!356439 () Bool)

(assert (=> b!278999 m!356439))

(declare-fun m!356441 () Bool)

(assert (=> b!278999 m!356441))

(assert (=> b!278590 d!81396))

(declare-fun bs!31204 () Bool)

(declare-fun d!81398 () Bool)

(assert (= bs!31204 (and d!81398 b!278563)))

(declare-fun lambda!9537 () Int)

(assert (=> bs!31204 (= lambda!9537 lambda!9519)))

(declare-fun bs!31205 () Bool)

(assert (= bs!31205 (and d!81398 b!278584)))

(assert (=> bs!31205 (not (= lambda!9537 lambda!9520))))

(declare-fun bs!31206 () Bool)

(assert (= bs!31206 (and d!81398 d!81316)))

(assert (=> bs!31206 (not (= lambda!9537 lambda!9525))))

(assert (=> d!81398 (= (filter!87 (list!1609 (_1!2420 (lex!423 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!306 thiss!17480 rules!1920 (seqFromList!857 (t!39219 tokens!465)) separatorToken!170 0)))) lambda!9537) (t!39219 tokens!465))))

(declare-fun lt!116503 () Unit!5128)

(declare-fun choose!2521 (LexerInterface!631 List!3904 List!3905 Token!1234) Unit!5128)

(assert (=> d!81398 (= lt!116503 (choose!2521 thiss!17480 rules!1920 (t!39219 tokens!465) separatorToken!170))))

(assert (=> d!81398 (not (isEmpty!2537 rules!1920))))

(assert (=> d!81398 (= (theoremInvertabilityFromTokensSepTokenWhenNeeded!78 thiss!17480 rules!1920 (t!39219 tokens!465) separatorToken!170) lt!116503)))

(declare-fun bs!31207 () Bool)

(assert (= bs!31207 d!81398))

(assert (=> bs!31207 m!355729))

(declare-fun m!356461 () Bool)

(assert (=> bs!31207 m!356461))

(declare-fun m!356463 () Bool)

(assert (=> bs!31207 m!356463))

(assert (=> bs!31207 m!355725))

(assert (=> bs!31207 m!355743))

(declare-fun m!356465 () Bool)

(assert (=> bs!31207 m!356465))

(declare-fun m!356467 () Bool)

(assert (=> bs!31207 m!356467))

(assert (=> bs!31207 m!355729))

(assert (=> bs!31207 m!355743))

(assert (=> bs!31207 m!356461))

(assert (=> b!278590 d!81398))

(declare-fun d!81402 () Bool)

(declare-fun e!173613 () Bool)

(assert (=> d!81402 e!173613))

(declare-fun res!127630 () Bool)

(assert (=> d!81402 (=> (not res!127630) (not e!173613))))

(declare-fun lt!116506 () BalanceConc!2634)

(assert (=> d!81402 (= res!127630 (= (list!1609 lt!116506) (Cons!3895 separatorToken!170 Nil!3895)))))

(declare-fun singleton!124 (Token!1234) BalanceConc!2634)

(assert (=> d!81402 (= lt!116506 (singleton!124 separatorToken!170))))

(assert (=> d!81402 (= (singletonSeq!291 separatorToken!170) lt!116506)))

(declare-fun b!279017 () Bool)

(declare-fun isBalanced!365 (Conc!1313) Bool)

(assert (=> b!279017 (= e!173613 (isBalanced!365 (c!52576 lt!116506)))))

(assert (= (and d!81402 res!127630) b!279017))

(declare-fun m!356469 () Bool)

(assert (=> d!81402 m!356469))

(declare-fun m!356471 () Bool)

(assert (=> d!81402 m!356471))

(declare-fun m!356473 () Bool)

(assert (=> b!279017 m!356473))

(assert (=> b!278590 d!81402))

(declare-fun d!81404 () Bool)

(declare-fun lt!116530 () Bool)

(declare-fun e!173647 () Bool)

(assert (=> d!81404 (= lt!116530 e!173647)))

(declare-fun res!127654 () Bool)

(assert (=> d!81404 (=> (not res!127654) (not e!173647))))

(assert (=> d!81404 (= res!127654 (= (list!1609 (_1!2420 (lex!423 thiss!17480 rules!1920 (print!356 thiss!17480 (singletonSeq!291 lt!116283))))) (list!1609 (singletonSeq!291 lt!116283))))))

(declare-fun e!173648 () Bool)

(assert (=> d!81404 (= lt!116530 e!173648)))

(declare-fun res!127656 () Bool)

(assert (=> d!81404 (=> (not res!127656) (not e!173648))))

(declare-fun lt!116529 () tuple2!4408)

(assert (=> d!81404 (= res!127656 (= (size!3107 (_1!2420 lt!116529)) 1))))

(assert (=> d!81404 (= lt!116529 (lex!423 thiss!17480 rules!1920 (print!356 thiss!17480 (singletonSeq!291 lt!116283))))))

(assert (=> d!81404 (not (isEmpty!2537 rules!1920))))

(assert (=> d!81404 (= (rulesProduceIndividualToken!380 thiss!17480 rules!1920 lt!116283) lt!116530)))

(declare-fun b!279070 () Bool)

(declare-fun res!127655 () Bool)

(assert (=> b!279070 (=> (not res!127655) (not e!173648))))

(assert (=> b!279070 (= res!127655 (= (apply!808 (_1!2420 lt!116529) 0) lt!116283))))

(declare-fun b!279071 () Bool)

(assert (=> b!279071 (= e!173648 (isEmpty!2534 (_2!2420 lt!116529)))))

(declare-fun b!279072 () Bool)

(assert (=> b!279072 (= e!173647 (isEmpty!2534 (_2!2420 (lex!423 thiss!17480 rules!1920 (print!356 thiss!17480 (singletonSeq!291 lt!116283))))))))

(assert (= (and d!81404 res!127656) b!279070))

(assert (= (and b!279070 res!127655) b!279071))

(assert (= (and d!81404 res!127654) b!279072))

(declare-fun m!356559 () Bool)

(assert (=> d!81404 m!356559))

(declare-fun m!356561 () Bool)

(assert (=> d!81404 m!356561))

(declare-fun m!356563 () Bool)

(assert (=> d!81404 m!356563))

(assert (=> d!81404 m!355839))

(assert (=> d!81404 m!356561))

(declare-fun m!356565 () Bool)

(assert (=> d!81404 m!356565))

(assert (=> d!81404 m!355725))

(assert (=> d!81404 m!355839))

(declare-fun m!356567 () Bool)

(assert (=> d!81404 m!356567))

(assert (=> d!81404 m!355839))

(declare-fun m!356569 () Bool)

(assert (=> b!279070 m!356569))

(declare-fun m!356571 () Bool)

(assert (=> b!279071 m!356571))

(assert (=> b!279072 m!355839))

(assert (=> b!279072 m!355839))

(assert (=> b!279072 m!356561))

(assert (=> b!279072 m!356561))

(assert (=> b!279072 m!356563))

(declare-fun m!356573 () Bool)

(assert (=> b!279072 m!356573))

(assert (=> b!278590 d!81404))

(declare-fun d!81430 () Bool)

(assert (=> d!81430 (= (isEmpty!2538 (t!39219 tokens!465)) ((_ is Nil!3895) (t!39219 tokens!465)))))

(assert (=> b!278590 d!81430))

(declare-fun d!81432 () Bool)

(assert (=> d!81432 (= (isDefined!693 lt!116308) (not (isEmpty!2542 lt!116308)))))

(declare-fun bs!31217 () Bool)

(assert (= bs!31217 d!81432))

(declare-fun m!356575 () Bool)

(assert (=> bs!31217 m!356575))

(assert (=> b!278590 d!81432))

(declare-fun d!81434 () Bool)

(assert (=> d!81434 (isPrefix!413 lt!116274 (++!1030 lt!116274 lt!116261))))

(declare-fun lt!116542 () Unit!5128)

(declare-fun choose!2523 (List!3903 List!3903) Unit!5128)

(assert (=> d!81434 (= lt!116542 (choose!2523 lt!116274 lt!116261))))

(assert (=> d!81434 (= (lemmaConcatTwoListThenFirstIsPrefix!308 lt!116274 lt!116261) lt!116542)))

(declare-fun bs!31218 () Bool)

(assert (= bs!31218 d!81434))

(assert (=> bs!31218 m!355747))

(assert (=> bs!31218 m!355747))

(declare-fun m!356577 () Bool)

(assert (=> bs!31218 m!356577))

(declare-fun m!356579 () Bool)

(assert (=> bs!31218 m!356579))

(assert (=> b!278590 d!81434))

(declare-fun b!279091 () Bool)

(declare-fun e!173661 () Bool)

(declare-fun lt!116545 () Option!849)

(assert (=> b!279091 (= e!173661 (= (tag!955 (get!1307 lt!116545)) (tag!955 (rule!1332 lt!116283))))))

(declare-fun d!81436 () Bool)

(declare-fun e!173664 () Bool)

(assert (=> d!81436 e!173664))

(declare-fun res!127663 () Bool)

(assert (=> d!81436 (=> res!127663 e!173664)))

(assert (=> d!81436 (= res!127663 (isEmpty!2542 lt!116545))))

(declare-fun e!173662 () Option!849)

(assert (=> d!81436 (= lt!116545 e!173662)))

(declare-fun c!52683 () Bool)

(assert (=> d!81436 (= c!52683 (and ((_ is Cons!3894) rules!1920) (= (tag!955 (h!9291 rules!1920)) (tag!955 (rule!1332 lt!116283)))))))

(assert (=> d!81436 (rulesInvariant!597 thiss!17480 rules!1920)))

(assert (=> d!81436 (= (getRuleFromTag!132 thiss!17480 rules!1920 (tag!955 (rule!1332 lt!116283))) lt!116545)))

(declare-fun b!279092 () Bool)

(assert (=> b!279092 (= e!173664 e!173661)))

(declare-fun res!127664 () Bool)

(assert (=> b!279092 (=> (not res!127664) (not e!173661))))

(assert (=> b!279092 (= res!127664 (contains!751 rules!1920 (get!1307 lt!116545)))))

(declare-fun b!279093 () Bool)

(assert (=> b!279093 (= e!173662 (Some!848 (h!9291 rules!1920)))))

(declare-fun b!279094 () Bool)

(declare-fun lt!116543 () Unit!5128)

(declare-fun lt!116544 () Unit!5128)

(assert (=> b!279094 (= lt!116543 lt!116544)))

(assert (=> b!279094 (rulesInvariant!597 thiss!17480 (t!39218 rules!1920))))

(assert (=> b!279094 (= lt!116544 (lemmaInvariantOnRulesThenOnTail!33 thiss!17480 (h!9291 rules!1920) (t!39218 rules!1920)))))

(declare-fun e!173663 () Option!849)

(assert (=> b!279094 (= e!173663 (getRuleFromTag!132 thiss!17480 (t!39218 rules!1920) (tag!955 (rule!1332 lt!116283))))))

(declare-fun b!279095 () Bool)

(assert (=> b!279095 (= e!173663 None!848)))

(declare-fun b!279096 () Bool)

(assert (=> b!279096 (= e!173662 e!173663)))

(declare-fun c!52682 () Bool)

(assert (=> b!279096 (= c!52682 (and ((_ is Cons!3894) rules!1920) (not (= (tag!955 (h!9291 rules!1920)) (tag!955 (rule!1332 lt!116283))))))))

(assert (= (and d!81436 c!52683) b!279093))

(assert (= (and d!81436 (not c!52683)) b!279096))

(assert (= (and b!279096 c!52682) b!279094))

(assert (= (and b!279096 (not c!52682)) b!279095))

(assert (= (and d!81436 (not res!127663)) b!279092))

(assert (= (and b!279092 res!127664) b!279091))

(declare-fun m!356593 () Bool)

(assert (=> b!279091 m!356593))

(declare-fun m!356595 () Bool)

(assert (=> d!81436 m!356595))

(assert (=> d!81436 m!355715))

(assert (=> b!279092 m!356593))

(assert (=> b!279092 m!356593))

(declare-fun m!356597 () Bool)

(assert (=> b!279092 m!356597))

(assert (=> b!279094 m!356353))

(assert (=> b!279094 m!356355))

(declare-fun m!356599 () Bool)

(assert (=> b!279094 m!356599))

(assert (=> b!278590 d!81436))

(declare-fun d!81440 () Bool)

(assert (=> d!81440 (= (isEmpty!2538 tokens!465) ((_ is Nil!3895) tokens!465))))

(assert (=> b!278590 d!81440))

(declare-fun d!81442 () Bool)

(assert (=> d!81442 (= (isDefined!693 lt!116276) (not (isEmpty!2542 lt!116276)))))

(declare-fun bs!31219 () Bool)

(assert (= bs!31219 d!81442))

(declare-fun m!356601 () Bool)

(assert (=> bs!31219 m!356601))

(assert (=> b!278590 d!81442))

(declare-fun d!81444 () Bool)

(declare-fun lt!116560 () BalanceConc!2632)

(declare-fun printListTailRec!139 (LexerInterface!631 List!3905 List!3903) List!3903)

(declare-fun dropList!174 (BalanceConc!2634 Int) List!3905)

(assert (=> d!81444 (= (list!1608 lt!116560) (printListTailRec!139 thiss!17480 (dropList!174 lt!116302 0) (list!1608 (BalanceConc!2633 Empty!1312))))))

(declare-fun e!173670 () BalanceConc!2632)

(assert (=> d!81444 (= lt!116560 e!173670)))

(declare-fun c!52686 () Bool)

(assert (=> d!81444 (= c!52686 (>= 0 (size!3107 lt!116302)))))

(declare-fun e!173669 () Bool)

(assert (=> d!81444 e!173669))

(declare-fun res!127667 () Bool)

(assert (=> d!81444 (=> (not res!127667) (not e!173669))))

(assert (=> d!81444 (= res!127667 (>= 0 0))))

(assert (=> d!81444 (= (printTailRec!319 thiss!17480 lt!116302 0 (BalanceConc!2633 Empty!1312)) lt!116560)))

(declare-fun b!279103 () Bool)

(assert (=> b!279103 (= e!173669 (<= 0 (size!3107 lt!116302)))))

(declare-fun b!279104 () Bool)

(assert (=> b!279104 (= e!173670 (BalanceConc!2633 Empty!1312))))

(declare-fun b!279105 () Bool)

(declare-fun ++!1032 (BalanceConc!2632 BalanceConc!2632) BalanceConc!2632)

(assert (=> b!279105 (= e!173670 (printTailRec!319 thiss!17480 lt!116302 (+ 0 1) (++!1032 (BalanceConc!2633 Empty!1312) (charsOf!390 (apply!808 lt!116302 0)))))))

(declare-fun lt!116565 () List!3905)

(assert (=> b!279105 (= lt!116565 (list!1609 lt!116302))))

(declare-fun lt!116564 () Unit!5128)

(declare-fun lemmaDropApply!214 (List!3905 Int) Unit!5128)

(assert (=> b!279105 (= lt!116564 (lemmaDropApply!214 lt!116565 0))))

(declare-fun drop!227 (List!3905 Int) List!3905)

(declare-fun apply!813 (List!3905 Int) Token!1234)

(assert (=> b!279105 (= (head!917 (drop!227 lt!116565 0)) (apply!813 lt!116565 0))))

(declare-fun lt!116566 () Unit!5128)

(assert (=> b!279105 (= lt!116566 lt!116564)))

(declare-fun lt!116562 () List!3905)

(assert (=> b!279105 (= lt!116562 (list!1609 lt!116302))))

(declare-fun lt!116563 () Unit!5128)

(declare-fun lemmaDropTail!206 (List!3905 Int) Unit!5128)

(assert (=> b!279105 (= lt!116563 (lemmaDropTail!206 lt!116562 0))))

(declare-fun tail!500 (List!3905) List!3905)

(assert (=> b!279105 (= (tail!500 (drop!227 lt!116562 0)) (drop!227 lt!116562 (+ 0 1)))))

(declare-fun lt!116561 () Unit!5128)

(assert (=> b!279105 (= lt!116561 lt!116563)))

(assert (= (and d!81444 res!127667) b!279103))

(assert (= (and d!81444 c!52686) b!279104))

(assert (= (and d!81444 (not c!52686)) b!279105))

(declare-fun m!356603 () Bool)

(assert (=> d!81444 m!356603))

(declare-fun m!356605 () Bool)

(assert (=> d!81444 m!356605))

(declare-fun m!356607 () Bool)

(assert (=> d!81444 m!356607))

(assert (=> d!81444 m!356605))

(assert (=> d!81444 m!356603))

(declare-fun m!356609 () Bool)

(assert (=> d!81444 m!356609))

(declare-fun m!356611 () Bool)

(assert (=> d!81444 m!356611))

(assert (=> b!279103 m!356607))

(declare-fun m!356613 () Bool)

(assert (=> b!279105 m!356613))

(declare-fun m!356615 () Bool)

(assert (=> b!279105 m!356615))

(declare-fun m!356617 () Bool)

(assert (=> b!279105 m!356617))

(assert (=> b!279105 m!356617))

(declare-fun m!356619 () Bool)

(assert (=> b!279105 m!356619))

(declare-fun m!356621 () Bool)

(assert (=> b!279105 m!356621))

(declare-fun m!356623 () Bool)

(assert (=> b!279105 m!356623))

(declare-fun m!356625 () Bool)

(assert (=> b!279105 m!356625))

(declare-fun m!356627 () Bool)

(assert (=> b!279105 m!356627))

(declare-fun m!356629 () Bool)

(assert (=> b!279105 m!356629))

(declare-fun m!356631 () Bool)

(assert (=> b!279105 m!356631))

(declare-fun m!356633 () Bool)

(assert (=> b!279105 m!356633))

(declare-fun m!356635 () Bool)

(assert (=> b!279105 m!356635))

(assert (=> b!279105 m!356619))

(assert (=> b!279105 m!356627))

(assert (=> b!279105 m!356621))

(declare-fun m!356637 () Bool)

(assert (=> b!279105 m!356637))

(assert (=> b!279105 m!356623))

(assert (=> b!278590 d!81444))

(declare-fun d!81446 () Bool)

(declare-fun lt!116569 () BalanceConc!2632)

(assert (=> d!81446 (= (list!1608 lt!116569) (printList!307 thiss!17480 (list!1609 lt!116265)))))

(assert (=> d!81446 (= lt!116569 (printTailRec!319 thiss!17480 lt!116265 0 (BalanceConc!2633 Empty!1312)))))

(assert (=> d!81446 (= (print!356 thiss!17480 lt!116265) lt!116569)))

(declare-fun bs!31220 () Bool)

(assert (= bs!31220 d!81446))

(declare-fun m!356639 () Bool)

(assert (=> bs!31220 m!356639))

(declare-fun m!356641 () Bool)

(assert (=> bs!31220 m!356641))

(assert (=> bs!31220 m!356641))

(declare-fun m!356643 () Bool)

(assert (=> bs!31220 m!356643))

(assert (=> bs!31220 m!355819))

(assert (=> b!278590 d!81446))

(declare-fun d!81448 () Bool)

(declare-fun lt!116572 () Bool)

(declare-fun content!565 (List!3903) (InoxSet C!2860))

(assert (=> d!81448 (= lt!116572 (select (content!565 (usedCharacters!82 (regex!745 (rule!1332 separatorToken!170)))) lt!116277))))

(declare-fun e!173675 () Bool)

(assert (=> d!81448 (= lt!116572 e!173675)))

(declare-fun res!127673 () Bool)

(assert (=> d!81448 (=> (not res!127673) (not e!173675))))

(assert (=> d!81448 (= res!127673 ((_ is Cons!3893) (usedCharacters!82 (regex!745 (rule!1332 separatorToken!170)))))))

(assert (=> d!81448 (= (contains!749 (usedCharacters!82 (regex!745 (rule!1332 separatorToken!170))) lt!116277) lt!116572)))

(declare-fun b!279110 () Bool)

(declare-fun e!173676 () Bool)

(assert (=> b!279110 (= e!173675 e!173676)))

(declare-fun res!127672 () Bool)

(assert (=> b!279110 (=> res!127672 e!173676)))

(assert (=> b!279110 (= res!127672 (= (h!9290 (usedCharacters!82 (regex!745 (rule!1332 separatorToken!170)))) lt!116277))))

(declare-fun b!279111 () Bool)

(assert (=> b!279111 (= e!173676 (contains!749 (t!39217 (usedCharacters!82 (regex!745 (rule!1332 separatorToken!170)))) lt!116277))))

(assert (= (and d!81448 res!127673) b!279110))

(assert (= (and b!279110 (not res!127672)) b!279111))

(assert (=> d!81448 m!355845))

(declare-fun m!356645 () Bool)

(assert (=> d!81448 m!356645))

(declare-fun m!356647 () Bool)

(assert (=> d!81448 m!356647))

(declare-fun m!356649 () Bool)

(assert (=> b!279111 m!356649))

(assert (=> b!278590 d!81448))

(declare-fun d!81450 () Bool)

(declare-fun lt!116573 () BalanceConc!2632)

(assert (=> d!81450 (= (list!1608 lt!116573) (printList!307 thiss!17480 (list!1609 lt!116302)))))

(assert (=> d!81450 (= lt!116573 (printTailRec!319 thiss!17480 lt!116302 0 (BalanceConc!2633 Empty!1312)))))

(assert (=> d!81450 (= (print!356 thiss!17480 lt!116302) lt!116573)))

(declare-fun bs!31221 () Bool)

(assert (= bs!31221 d!81450))

(declare-fun m!356651 () Bool)

(assert (=> bs!31221 m!356651))

(assert (=> bs!31221 m!356635))

(assert (=> bs!31221 m!356635))

(declare-fun m!356653 () Bool)

(assert (=> bs!31221 m!356653))

(assert (=> bs!31221 m!355867))

(assert (=> b!278590 d!81450))

(declare-fun d!81452 () Bool)

(assert (=> d!81452 (= (head!918 lt!116268) (h!9290 lt!116268))))

(assert (=> b!278590 d!81452))

(declare-fun bm!15464 () Bool)

(declare-fun call!15470 () List!3903)

(declare-fun c!52695 () Bool)

(assert (=> bm!15464 (= call!15470 (usedCharacters!82 (ite c!52695 (regTwo!2451 (regex!745 (rule!1332 lt!116283))) (regTwo!2450 (regex!745 (rule!1332 lt!116283))))))))

(declare-fun b!279128 () Bool)

(declare-fun e!173686 () List!3903)

(assert (=> b!279128 (= e!173686 (Cons!3893 (c!52575 (regex!745 (rule!1332 lt!116283))) Nil!3893))))

(declare-fun bm!15465 () Bool)

(declare-fun c!52698 () Bool)

(declare-fun call!15471 () List!3903)

(assert (=> bm!15465 (= call!15471 (usedCharacters!82 (ite c!52698 (reg!1298 (regex!745 (rule!1332 lt!116283))) (ite c!52695 (regOne!2451 (regex!745 (rule!1332 lt!116283))) (regOne!2450 (regex!745 (rule!1332 lt!116283)))))))))

(declare-fun b!279129 () Bool)

(declare-fun e!173685 () List!3903)

(declare-fun e!173687 () List!3903)

(assert (=> b!279129 (= e!173685 e!173687)))

(assert (=> b!279129 (= c!52695 ((_ is Union!969) (regex!745 (rule!1332 lt!116283))))))

(declare-fun b!279130 () Bool)

(assert (=> b!279130 (= e!173685 call!15471)))

(declare-fun b!279131 () Bool)

(assert (=> b!279131 (= c!52698 ((_ is Star!969) (regex!745 (rule!1332 lt!116283))))))

(assert (=> b!279131 (= e!173686 e!173685)))

(declare-fun b!279132 () Bool)

(declare-fun e!173688 () List!3903)

(assert (=> b!279132 (= e!173688 e!173686)))

(declare-fun c!52697 () Bool)

(assert (=> b!279132 (= c!52697 ((_ is ElementMatch!969) (regex!745 (rule!1332 lt!116283))))))

(declare-fun b!279133 () Bool)

(assert (=> b!279133 (= e!173688 Nil!3893)))

(declare-fun b!279134 () Bool)

(declare-fun call!15469 () List!3903)

(assert (=> b!279134 (= e!173687 call!15469)))

(declare-fun bm!15463 () Bool)

(declare-fun call!15468 () List!3903)

(assert (=> bm!15463 (= call!15468 call!15471)))

(declare-fun d!81454 () Bool)

(declare-fun c!52696 () Bool)

(assert (=> d!81454 (= c!52696 (or ((_ is EmptyExpr!969) (regex!745 (rule!1332 lt!116283))) ((_ is EmptyLang!969) (regex!745 (rule!1332 lt!116283)))))))

(assert (=> d!81454 (= (usedCharacters!82 (regex!745 (rule!1332 lt!116283))) e!173688)))

(declare-fun bm!15466 () Bool)

(assert (=> bm!15466 (= call!15469 (++!1030 call!15468 call!15470))))

(declare-fun b!279135 () Bool)

(assert (=> b!279135 (= e!173687 call!15469)))

(assert (= (and d!81454 c!52696) b!279133))

(assert (= (and d!81454 (not c!52696)) b!279132))

(assert (= (and b!279132 c!52697) b!279128))

(assert (= (and b!279132 (not c!52697)) b!279131))

(assert (= (and b!279131 c!52698) b!279130))

(assert (= (and b!279131 (not c!52698)) b!279129))

(assert (= (and b!279129 c!52695) b!279134))

(assert (= (and b!279129 (not c!52695)) b!279135))

(assert (= (or b!279134 b!279135) bm!15463))

(assert (= (or b!279134 b!279135) bm!15464))

(assert (= (or b!279134 b!279135) bm!15466))

(assert (= (or b!279130 bm!15463) bm!15465))

(declare-fun m!356655 () Bool)

(assert (=> bm!15464 m!356655))

(declare-fun m!356657 () Bool)

(assert (=> bm!15465 m!356657))

(declare-fun m!356659 () Bool)

(assert (=> bm!15466 m!356659))

(assert (=> b!278590 d!81454))

(declare-fun d!81456 () Bool)

(declare-fun list!1612 (Conc!1312) List!3903)

(assert (=> d!81456 (= (list!1608 (charsOf!390 lt!116283)) (list!1612 (c!52574 (charsOf!390 lt!116283))))))

(declare-fun bs!31222 () Bool)

(assert (= bs!31222 d!81456))

(declare-fun m!356661 () Bool)

(assert (=> bs!31222 m!356661))

(assert (=> b!278590 d!81456))

(declare-fun d!81458 () Bool)

(assert (=> d!81458 (dynLambda!2038 lambda!9520 lt!116283)))

(declare-fun lt!116576 () Unit!5128)

(declare-fun choose!2525 (List!3905 Int Token!1234) Unit!5128)

(assert (=> d!81458 (= lt!116576 (choose!2525 tokens!465 lambda!9520 lt!116283))))

(declare-fun e!173691 () Bool)

(assert (=> d!81458 e!173691))

(declare-fun res!127676 () Bool)

(assert (=> d!81458 (=> (not res!127676) (not e!173691))))

(assert (=> d!81458 (= res!127676 (forall!992 tokens!465 lambda!9520))))

(assert (=> d!81458 (= (forallContained!300 tokens!465 lambda!9520 lt!116283) lt!116576)))

(declare-fun b!279138 () Bool)

(declare-fun contains!753 (List!3905 Token!1234) Bool)

(assert (=> b!279138 (= e!173691 (contains!753 tokens!465 lt!116283))))

(assert (= (and d!81458 res!127676) b!279138))

(declare-fun b_lambda!9001 () Bool)

(assert (=> (not b_lambda!9001) (not d!81458)))

(declare-fun m!356663 () Bool)

(assert (=> d!81458 m!356663))

(declare-fun m!356665 () Bool)

(assert (=> d!81458 m!356665))

(declare-fun m!356667 () Bool)

(assert (=> d!81458 m!356667))

(declare-fun m!356669 () Bool)

(assert (=> b!279138 m!356669))

(assert (=> b!278590 d!81458))

(declare-fun d!81460 () Bool)

(declare-fun e!173694 () Bool)

(assert (=> d!81460 e!173694))

(declare-fun res!127678 () Bool)

(assert (=> d!81460 (=> (not res!127678) (not e!173694))))

(declare-fun e!173692 () Bool)

(assert (=> d!81460 (= res!127678 e!173692)))

(declare-fun c!52699 () Bool)

(declare-fun lt!116577 () tuple2!4408)

(assert (=> d!81460 (= c!52699 (> (size!3107 (_1!2420 lt!116577)) 0))))

(assert (=> d!81460 (= lt!116577 (lexTailRecV2!185 thiss!17480 rules!1920 lt!116292 (BalanceConc!2633 Empty!1312) lt!116292 (BalanceConc!2635 Empty!1313)))))

(assert (=> d!81460 (= (lex!423 thiss!17480 rules!1920 lt!116292) lt!116577)))

(declare-fun b!279139 () Bool)

(declare-fun e!173693 () Bool)

(assert (=> b!279139 (= e!173693 (not (isEmpty!2535 (_1!2420 lt!116577))))))

(declare-fun b!279140 () Bool)

(declare-fun res!127677 () Bool)

(assert (=> b!279140 (=> (not res!127677) (not e!173694))))

(assert (=> b!279140 (= res!127677 (= (list!1609 (_1!2420 lt!116577)) (_1!2423 (lexList!219 thiss!17480 rules!1920 (list!1608 lt!116292)))))))

(declare-fun b!279141 () Bool)

(assert (=> b!279141 (= e!173692 (= (_2!2420 lt!116577) lt!116292))))

(declare-fun b!279142 () Bool)

(assert (=> b!279142 (= e!173694 (= (list!1608 (_2!2420 lt!116577)) (_2!2423 (lexList!219 thiss!17480 rules!1920 (list!1608 lt!116292)))))))

(declare-fun b!279143 () Bool)

(assert (=> b!279143 (= e!173692 e!173693)))

(declare-fun res!127679 () Bool)

(assert (=> b!279143 (= res!127679 (< (size!3114 (_2!2420 lt!116577)) (size!3114 lt!116292)))))

(assert (=> b!279143 (=> (not res!127679) (not e!173693))))

(assert (= (and d!81460 c!52699) b!279143))

(assert (= (and d!81460 (not c!52699)) b!279141))

(assert (= (and b!279143 res!127679) b!279139))

(assert (= (and d!81460 res!127678) b!279140))

(assert (= (and b!279140 res!127677) b!279142))

(declare-fun m!356671 () Bool)

(assert (=> b!279140 m!356671))

(declare-fun m!356673 () Bool)

(assert (=> b!279140 m!356673))

(assert (=> b!279140 m!356673))

(declare-fun m!356675 () Bool)

(assert (=> b!279140 m!356675))

(declare-fun m!356677 () Bool)

(assert (=> b!279143 m!356677))

(declare-fun m!356679 () Bool)

(assert (=> b!279143 m!356679))

(declare-fun m!356681 () Bool)

(assert (=> d!81460 m!356681))

(declare-fun m!356683 () Bool)

(assert (=> d!81460 m!356683))

(declare-fun m!356685 () Bool)

(assert (=> b!279139 m!356685))

(declare-fun m!356687 () Bool)

(assert (=> b!279142 m!356687))

(assert (=> b!279142 m!356673))

(assert (=> b!279142 m!356673))

(assert (=> b!279142 m!356675))

(assert (=> b!278590 d!81460))

(declare-fun d!81462 () Bool)

(declare-fun e!173695 () Bool)

(assert (=> d!81462 e!173695))

(declare-fun res!127680 () Bool)

(assert (=> d!81462 (=> (not res!127680) (not e!173695))))

(declare-fun lt!116578 () BalanceConc!2634)

(assert (=> d!81462 (= res!127680 (= (list!1609 lt!116578) (Cons!3895 lt!116283 Nil!3895)))))

(assert (=> d!81462 (= lt!116578 (singleton!124 lt!116283))))

(assert (=> d!81462 (= (singletonSeq!291 lt!116283) lt!116578)))

(declare-fun b!279144 () Bool)

(assert (=> b!279144 (= e!173695 (isBalanced!365 (c!52576 lt!116578)))))

(assert (= (and d!81462 res!127680) b!279144))

(declare-fun m!356689 () Bool)

(assert (=> d!81462 m!356689))

(declare-fun m!356691 () Bool)

(assert (=> d!81462 m!356691))

(declare-fun m!356693 () Bool)

(assert (=> b!279144 m!356693))

(assert (=> b!278590 d!81462))

(declare-fun d!81464 () Bool)

(assert (=> d!81464 (= (head!917 (t!39219 tokens!465)) (h!9292 (t!39219 tokens!465)))))

(assert (=> b!278590 d!81464))

(declare-fun d!81466 () Bool)

(declare-fun e!173727 () Bool)

(assert (=> d!81466 e!173727))

(declare-fun res!127712 () Bool)

(assert (=> d!81466 (=> res!127712 e!173727)))

(assert (=> d!81466 (= res!127712 (isEmpty!2538 tokens!465))))

(declare-fun lt!116631 () Unit!5128)

(declare-fun choose!2526 (LexerInterface!631 List!3904 List!3905 Token!1234) Unit!5128)

(assert (=> d!81466 (= lt!116631 (choose!2526 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!81466 (not (isEmpty!2537 rules!1920))))

(assert (=> d!81466 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!170 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!116631)))

(declare-fun b!279194 () Bool)

(declare-fun e!173728 () Bool)

(assert (=> b!279194 (= e!173727 e!173728)))

(declare-fun res!127713 () Bool)

(assert (=> b!279194 (=> (not res!127713) (not e!173728))))

(assert (=> b!279194 (= res!127713 (isDefined!694 (maxPrefix!349 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!314 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!279195 () Bool)

(assert (=> b!279195 (= e!173728 (= (_1!2421 (get!1308 (maxPrefix!349 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!314 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!917 tokens!465)))))

(assert (= (and d!81466 (not res!127712)) b!279194))

(assert (= (and b!279194 res!127713) b!279195))

(assert (=> d!81466 m!355799))

(declare-fun m!356845 () Bool)

(assert (=> d!81466 m!356845))

(assert (=> d!81466 m!355725))

(assert (=> b!279194 m!355763))

(assert (=> b!279194 m!355763))

(declare-fun m!356847 () Bool)

(assert (=> b!279194 m!356847))

(assert (=> b!279194 m!356847))

(declare-fun m!356849 () Bool)

(assert (=> b!279194 m!356849))

(assert (=> b!279195 m!355763))

(assert (=> b!279195 m!355763))

(assert (=> b!279195 m!356847))

(assert (=> b!279195 m!356847))

(declare-fun m!356851 () Bool)

(assert (=> b!279195 m!356851))

(assert (=> b!279195 m!355783))

(assert (=> b!278590 d!81466))

(declare-fun d!81494 () Bool)

(declare-fun lt!116632 () Bool)

(assert (=> d!81494 (= lt!116632 (select (content!565 (usedCharacters!82 (regex!745 (rule!1332 lt!116283)))) lt!116290))))

(declare-fun e!173729 () Bool)

(assert (=> d!81494 (= lt!116632 e!173729)))

(declare-fun res!127715 () Bool)

(assert (=> d!81494 (=> (not res!127715) (not e!173729))))

(assert (=> d!81494 (= res!127715 ((_ is Cons!3893) (usedCharacters!82 (regex!745 (rule!1332 lt!116283)))))))

(assert (=> d!81494 (= (contains!749 (usedCharacters!82 (regex!745 (rule!1332 lt!116283))) lt!116290) lt!116632)))

(declare-fun b!279196 () Bool)

(declare-fun e!173730 () Bool)

(assert (=> b!279196 (= e!173729 e!173730)))

(declare-fun res!127714 () Bool)

(assert (=> b!279196 (=> res!127714 e!173730)))

(assert (=> b!279196 (= res!127714 (= (h!9290 (usedCharacters!82 (regex!745 (rule!1332 lt!116283)))) lt!116290))))

(declare-fun b!279197 () Bool)

(assert (=> b!279197 (= e!173730 (contains!749 (t!39217 (usedCharacters!82 (regex!745 (rule!1332 lt!116283)))) lt!116290))))

(assert (= (and d!81494 res!127715) b!279196))

(assert (= (and b!279196 (not res!127714)) b!279197))

(assert (=> d!81494 m!355813))

(declare-fun m!356853 () Bool)

(assert (=> d!81494 m!356853))

(declare-fun m!356855 () Bool)

(assert (=> d!81494 m!356855))

(declare-fun m!356857 () Bool)

(assert (=> b!279197 m!356857))

(assert (=> b!278590 d!81494))

(declare-fun d!81496 () Bool)

(declare-fun list!1613 (Conc!1313) List!3905)

(assert (=> d!81496 (= (list!1609 (_1!2420 (lex!423 thiss!17480 rules!1920 lt!116303))) (list!1613 (c!52576 (_1!2420 (lex!423 thiss!17480 rules!1920 lt!116303)))))))

(declare-fun bs!31227 () Bool)

(assert (= bs!31227 d!81496))

(declare-fun m!356859 () Bool)

(assert (=> bs!31227 m!356859))

(assert (=> b!278590 d!81496))

(declare-fun bm!15470 () Bool)

(declare-fun call!15476 () List!3903)

(declare-fun c!52709 () Bool)

(assert (=> bm!15470 (= call!15476 (usedCharacters!82 (ite c!52709 (regTwo!2451 (regex!745 (rule!1332 separatorToken!170))) (regTwo!2450 (regex!745 (rule!1332 separatorToken!170))))))))

(declare-fun b!279198 () Bool)

(declare-fun e!173732 () List!3903)

(assert (=> b!279198 (= e!173732 (Cons!3893 (c!52575 (regex!745 (rule!1332 separatorToken!170))) Nil!3893))))

(declare-fun bm!15471 () Bool)

(declare-fun call!15477 () List!3903)

(declare-fun c!52712 () Bool)

(assert (=> bm!15471 (= call!15477 (usedCharacters!82 (ite c!52712 (reg!1298 (regex!745 (rule!1332 separatorToken!170))) (ite c!52709 (regOne!2451 (regex!745 (rule!1332 separatorToken!170))) (regOne!2450 (regex!745 (rule!1332 separatorToken!170)))))))))

(declare-fun b!279199 () Bool)

(declare-fun e!173731 () List!3903)

(declare-fun e!173733 () List!3903)

(assert (=> b!279199 (= e!173731 e!173733)))

(assert (=> b!279199 (= c!52709 ((_ is Union!969) (regex!745 (rule!1332 separatorToken!170))))))

(declare-fun b!279200 () Bool)

(assert (=> b!279200 (= e!173731 call!15477)))

(declare-fun b!279201 () Bool)

(assert (=> b!279201 (= c!52712 ((_ is Star!969) (regex!745 (rule!1332 separatorToken!170))))))

(assert (=> b!279201 (= e!173732 e!173731)))

(declare-fun b!279202 () Bool)

(declare-fun e!173734 () List!3903)

(assert (=> b!279202 (= e!173734 e!173732)))

(declare-fun c!52711 () Bool)

(assert (=> b!279202 (= c!52711 ((_ is ElementMatch!969) (regex!745 (rule!1332 separatorToken!170))))))

(declare-fun b!279203 () Bool)

(assert (=> b!279203 (= e!173734 Nil!3893)))

(declare-fun b!279204 () Bool)

(declare-fun call!15475 () List!3903)

(assert (=> b!279204 (= e!173733 call!15475)))

(declare-fun bm!15469 () Bool)

(declare-fun call!15474 () List!3903)

(assert (=> bm!15469 (= call!15474 call!15477)))

(declare-fun d!81498 () Bool)

(declare-fun c!52710 () Bool)

(assert (=> d!81498 (= c!52710 (or ((_ is EmptyExpr!969) (regex!745 (rule!1332 separatorToken!170))) ((_ is EmptyLang!969) (regex!745 (rule!1332 separatorToken!170)))))))

(assert (=> d!81498 (= (usedCharacters!82 (regex!745 (rule!1332 separatorToken!170))) e!173734)))

(declare-fun bm!15472 () Bool)

(assert (=> bm!15472 (= call!15475 (++!1030 call!15474 call!15476))))

(declare-fun b!279205 () Bool)

(assert (=> b!279205 (= e!173733 call!15475)))

(assert (= (and d!81498 c!52710) b!279203))

(assert (= (and d!81498 (not c!52710)) b!279202))

(assert (= (and b!279202 c!52711) b!279198))

(assert (= (and b!279202 (not c!52711)) b!279201))

(assert (= (and b!279201 c!52712) b!279200))

(assert (= (and b!279201 (not c!52712)) b!279199))

(assert (= (and b!279199 c!52709) b!279204))

(assert (= (and b!279199 (not c!52709)) b!279205))

(assert (= (or b!279204 b!279205) bm!15469))

(assert (= (or b!279204 b!279205) bm!15470))

(assert (= (or b!279204 b!279205) bm!15472))

(assert (= (or b!279200 bm!15469) bm!15471))

(declare-fun m!356861 () Bool)

(assert (=> bm!15470 m!356861))

(declare-fun m!356863 () Bool)

(assert (=> bm!15471 m!356863))

(declare-fun m!356865 () Bool)

(assert (=> bm!15472 m!356865))

(assert (=> b!278590 d!81498))

(declare-fun d!81500 () Bool)

(assert (=> d!81500 (= (head!918 lt!116272) (h!9290 lt!116272))))

(assert (=> b!278590 d!81500))

(declare-fun call!15478 () Option!850)

(declare-fun bm!15473 () Bool)

(assert (=> bm!15473 (= call!15478 (maxPrefixOneRule!153 thiss!17480 (h!9291 rules!1920) lt!116287))))

(declare-fun b!279206 () Bool)

(declare-fun res!127722 () Bool)

(declare-fun e!173735 () Bool)

(assert (=> b!279206 (=> (not res!127722) (not e!173735))))

(declare-fun lt!116633 () Option!850)

(assert (=> b!279206 (= res!127722 (< (size!3110 (_2!2421 (get!1308 lt!116633))) (size!3110 lt!116287)))))

(declare-fun b!279207 () Bool)

(declare-fun e!173736 () Bool)

(assert (=> b!279207 (= e!173736 e!173735)))

(declare-fun res!127718 () Bool)

(assert (=> b!279207 (=> (not res!127718) (not e!173735))))

(assert (=> b!279207 (= res!127718 (isDefined!694 lt!116633))))

(declare-fun b!279208 () Bool)

(declare-fun res!127721 () Bool)

(assert (=> b!279208 (=> (not res!127721) (not e!173735))))

(assert (=> b!279208 (= res!127721 (= (value!25548 (_1!2421 (get!1308 lt!116633))) (apply!812 (transformation!745 (rule!1332 (_1!2421 (get!1308 lt!116633)))) (seqFromList!858 (originalCharacters!788 (_1!2421 (get!1308 lt!116633)))))))))

(declare-fun b!279210 () Bool)

(declare-fun e!173737 () Option!850)

(declare-fun lt!116637 () Option!850)

(declare-fun lt!116636 () Option!850)

(assert (=> b!279210 (= e!173737 (ite (and ((_ is None!849) lt!116637) ((_ is None!849) lt!116636)) None!849 (ite ((_ is None!849) lt!116636) lt!116637 (ite ((_ is None!849) lt!116637) lt!116636 (ite (>= (size!3106 (_1!2421 (v!14750 lt!116637))) (size!3106 (_1!2421 (v!14750 lt!116636)))) lt!116637 lt!116636)))))))

(assert (=> b!279210 (= lt!116637 call!15478)))

(assert (=> b!279210 (= lt!116636 (maxPrefix!349 thiss!17480 (t!39218 rules!1920) lt!116287))))

(declare-fun b!279211 () Bool)

(declare-fun res!127720 () Bool)

(assert (=> b!279211 (=> (not res!127720) (not e!173735))))

(assert (=> b!279211 (= res!127720 (= (++!1030 (list!1608 (charsOf!390 (_1!2421 (get!1308 lt!116633)))) (_2!2421 (get!1308 lt!116633))) lt!116287))))

(declare-fun b!279212 () Bool)

(declare-fun res!127716 () Bool)

(assert (=> b!279212 (=> (not res!127716) (not e!173735))))

(assert (=> b!279212 (= res!127716 (= (list!1608 (charsOf!390 (_1!2421 (get!1308 lt!116633)))) (originalCharacters!788 (_1!2421 (get!1308 lt!116633)))))))

(declare-fun b!279213 () Bool)

(declare-fun res!127719 () Bool)

(assert (=> b!279213 (=> (not res!127719) (not e!173735))))

(assert (=> b!279213 (= res!127719 (matchR!291 (regex!745 (rule!1332 (_1!2421 (get!1308 lt!116633)))) (list!1608 (charsOf!390 (_1!2421 (get!1308 lt!116633))))))))

(declare-fun b!279214 () Bool)

(assert (=> b!279214 (= e!173737 call!15478)))

(declare-fun d!81502 () Bool)

(assert (=> d!81502 e!173736))

(declare-fun res!127717 () Bool)

(assert (=> d!81502 (=> res!127717 e!173736)))

(assert (=> d!81502 (= res!127717 (isEmpty!2540 lt!116633))))

(assert (=> d!81502 (= lt!116633 e!173737)))

(declare-fun c!52713 () Bool)

(assert (=> d!81502 (= c!52713 (and ((_ is Cons!3894) rules!1920) ((_ is Nil!3894) (t!39218 rules!1920))))))

(declare-fun lt!116635 () Unit!5128)

(declare-fun lt!116634 () Unit!5128)

(assert (=> d!81502 (= lt!116635 lt!116634)))

(assert (=> d!81502 (isPrefix!413 lt!116287 lt!116287)))

(assert (=> d!81502 (= lt!116634 (lemmaIsPrefixRefl!219 lt!116287 lt!116287))))

(assert (=> d!81502 (rulesValidInductive!214 thiss!17480 rules!1920)))

(assert (=> d!81502 (= (maxPrefix!349 thiss!17480 rules!1920 lt!116287) lt!116633)))

(declare-fun b!279209 () Bool)

(assert (=> b!279209 (= e!173735 (contains!751 rules!1920 (rule!1332 (_1!2421 (get!1308 lt!116633)))))))

(assert (= (and d!81502 c!52713) b!279214))

(assert (= (and d!81502 (not c!52713)) b!279210))

(assert (= (or b!279214 b!279210) bm!15473))

(assert (= (and d!81502 (not res!127717)) b!279207))

(assert (= (and b!279207 res!127718) b!279212))

(assert (= (and b!279212 res!127716) b!279206))

(assert (= (and b!279206 res!127722) b!279211))

(assert (= (and b!279211 res!127720) b!279208))

(assert (= (and b!279208 res!127721) b!279213))

(assert (= (and b!279213 res!127719) b!279209))

(declare-fun m!356867 () Bool)

(assert (=> b!279213 m!356867))

(declare-fun m!356869 () Bool)

(assert (=> b!279213 m!356869))

(assert (=> b!279213 m!356869))

(declare-fun m!356871 () Bool)

(assert (=> b!279213 m!356871))

(assert (=> b!279213 m!356871))

(declare-fun m!356873 () Bool)

(assert (=> b!279213 m!356873))

(declare-fun m!356875 () Bool)

(assert (=> bm!15473 m!356875))

(declare-fun m!356877 () Bool)

(assert (=> b!279207 m!356877))

(assert (=> b!279209 m!356867))

(declare-fun m!356879 () Bool)

(assert (=> b!279209 m!356879))

(declare-fun m!356881 () Bool)

(assert (=> b!279210 m!356881))

(assert (=> b!279208 m!356867))

(declare-fun m!356883 () Bool)

(assert (=> b!279208 m!356883))

(assert (=> b!279208 m!356883))

(declare-fun m!356885 () Bool)

(assert (=> b!279208 m!356885))

(assert (=> b!279211 m!356867))

(assert (=> b!279211 m!356869))

(assert (=> b!279211 m!356869))

(assert (=> b!279211 m!356871))

(assert (=> b!279211 m!356871))

(declare-fun m!356887 () Bool)

(assert (=> b!279211 m!356887))

(assert (=> b!279206 m!356867))

(declare-fun m!356889 () Bool)

(assert (=> b!279206 m!356889))

(declare-fun m!356891 () Bool)

(assert (=> b!279206 m!356891))

(declare-fun m!356893 () Bool)

(assert (=> d!81502 m!356893))

(declare-fun m!356895 () Bool)

(assert (=> d!81502 m!356895))

(declare-fun m!356897 () Bool)

(assert (=> d!81502 m!356897))

(assert (=> d!81502 m!356131))

(assert (=> b!279212 m!356867))

(assert (=> b!279212 m!356869))

(assert (=> b!279212 m!356869))

(assert (=> b!279212 m!356871))

(assert (=> b!278590 d!81502))

(declare-fun d!81504 () Bool)

(declare-fun e!173738 () Bool)

(assert (=> d!81504 e!173738))

(declare-fun res!127723 () Bool)

(assert (=> d!81504 (=> (not res!127723) (not e!173738))))

(assert (=> d!81504 (= res!127723 (isDefined!693 (getRuleFromTag!132 thiss!17480 rules!1920 (tag!955 (rule!1332 lt!116283)))))))

(declare-fun lt!116638 () Unit!5128)

(assert (=> d!81504 (= lt!116638 (choose!2519 thiss!17480 rules!1920 lt!116268 lt!116283))))

(assert (=> d!81504 (rulesInvariant!597 thiss!17480 rules!1920)))

(assert (=> d!81504 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!132 thiss!17480 rules!1920 lt!116268 lt!116283) lt!116638)))

(declare-fun b!279215 () Bool)

(declare-fun res!127724 () Bool)

(assert (=> b!279215 (=> (not res!127724) (not e!173738))))

(assert (=> b!279215 (= res!127724 (matchR!291 (regex!745 (get!1307 (getRuleFromTag!132 thiss!17480 rules!1920 (tag!955 (rule!1332 lt!116283))))) (list!1608 (charsOf!390 lt!116283))))))

(declare-fun b!279216 () Bool)

(assert (=> b!279216 (= e!173738 (= (rule!1332 lt!116283) (get!1307 (getRuleFromTag!132 thiss!17480 rules!1920 (tag!955 (rule!1332 lt!116283))))))))

(assert (= (and d!81504 res!127723) b!279215))

(assert (= (and b!279215 res!127724) b!279216))

(assert (=> d!81504 m!355857))

(assert (=> d!81504 m!355857))

(declare-fun m!356899 () Bool)

(assert (=> d!81504 m!356899))

(declare-fun m!356901 () Bool)

(assert (=> d!81504 m!356901))

(assert (=> d!81504 m!355715))

(assert (=> b!279215 m!355843))

(declare-fun m!356903 () Bool)

(assert (=> b!279215 m!356903))

(assert (=> b!279215 m!355831))

(assert (=> b!279215 m!355831))

(assert (=> b!279215 m!355843))

(assert (=> b!279215 m!355857))

(declare-fun m!356905 () Bool)

(assert (=> b!279215 m!356905))

(assert (=> b!279215 m!355857))

(assert (=> b!279216 m!355857))

(assert (=> b!279216 m!355857))

(assert (=> b!279216 m!356905))

(assert (=> b!278590 d!81504))

(declare-fun d!81506 () Bool)

(declare-fun lt!116639 () BalanceConc!2632)

(assert (=> d!81506 (= (list!1608 lt!116639) (printListTailRec!139 thiss!17480 (dropList!174 lt!116265 0) (list!1608 (BalanceConc!2633 Empty!1312))))))

(declare-fun e!173740 () BalanceConc!2632)

(assert (=> d!81506 (= lt!116639 e!173740)))

(declare-fun c!52714 () Bool)

(assert (=> d!81506 (= c!52714 (>= 0 (size!3107 lt!116265)))))

(declare-fun e!173739 () Bool)

(assert (=> d!81506 e!173739))

(declare-fun res!127725 () Bool)

(assert (=> d!81506 (=> (not res!127725) (not e!173739))))

(assert (=> d!81506 (= res!127725 (>= 0 0))))

(assert (=> d!81506 (= (printTailRec!319 thiss!17480 lt!116265 0 (BalanceConc!2633 Empty!1312)) lt!116639)))

(declare-fun b!279217 () Bool)

(assert (=> b!279217 (= e!173739 (<= 0 (size!3107 lt!116265)))))

(declare-fun b!279218 () Bool)

(assert (=> b!279218 (= e!173740 (BalanceConc!2633 Empty!1312))))

(declare-fun b!279219 () Bool)

(assert (=> b!279219 (= e!173740 (printTailRec!319 thiss!17480 lt!116265 (+ 0 1) (++!1032 (BalanceConc!2633 Empty!1312) (charsOf!390 (apply!808 lt!116265 0)))))))

(declare-fun lt!116644 () List!3905)

(assert (=> b!279219 (= lt!116644 (list!1609 lt!116265))))

(declare-fun lt!116643 () Unit!5128)

(assert (=> b!279219 (= lt!116643 (lemmaDropApply!214 lt!116644 0))))

(assert (=> b!279219 (= (head!917 (drop!227 lt!116644 0)) (apply!813 lt!116644 0))))

(declare-fun lt!116645 () Unit!5128)

(assert (=> b!279219 (= lt!116645 lt!116643)))

(declare-fun lt!116641 () List!3905)

(assert (=> b!279219 (= lt!116641 (list!1609 lt!116265))))

(declare-fun lt!116642 () Unit!5128)

(assert (=> b!279219 (= lt!116642 (lemmaDropTail!206 lt!116641 0))))

(assert (=> b!279219 (= (tail!500 (drop!227 lt!116641 0)) (drop!227 lt!116641 (+ 0 1)))))

(declare-fun lt!116640 () Unit!5128)

(assert (=> b!279219 (= lt!116640 lt!116642)))

(assert (= (and d!81506 res!127725) b!279217))

(assert (= (and d!81506 c!52714) b!279218))

(assert (= (and d!81506 (not c!52714)) b!279219))

(assert (=> d!81506 m!356603))

(declare-fun m!356907 () Bool)

(assert (=> d!81506 m!356907))

(declare-fun m!356909 () Bool)

(assert (=> d!81506 m!356909))

(assert (=> d!81506 m!356907))

(assert (=> d!81506 m!356603))

(declare-fun m!356911 () Bool)

(assert (=> d!81506 m!356911))

(declare-fun m!356913 () Bool)

(assert (=> d!81506 m!356913))

(assert (=> b!279217 m!356909))

(declare-fun m!356915 () Bool)

(assert (=> b!279219 m!356915))

(declare-fun m!356917 () Bool)

(assert (=> b!279219 m!356917))

(declare-fun m!356919 () Bool)

(assert (=> b!279219 m!356919))

(assert (=> b!279219 m!356919))

(declare-fun m!356921 () Bool)

(assert (=> b!279219 m!356921))

(declare-fun m!356923 () Bool)

(assert (=> b!279219 m!356923))

(declare-fun m!356925 () Bool)

(assert (=> b!279219 m!356925))

(declare-fun m!356927 () Bool)

(assert (=> b!279219 m!356927))

(declare-fun m!356929 () Bool)

(assert (=> b!279219 m!356929))

(declare-fun m!356931 () Bool)

(assert (=> b!279219 m!356931))

(declare-fun m!356933 () Bool)

(assert (=> b!279219 m!356933))

(declare-fun m!356935 () Bool)

(assert (=> b!279219 m!356935))

(assert (=> b!279219 m!356641))

(assert (=> b!279219 m!356921))

(assert (=> b!279219 m!356929))

(assert (=> b!279219 m!356923))

(declare-fun m!356937 () Bool)

(assert (=> b!279219 m!356937))

(assert (=> b!279219 m!356925))

(assert (=> b!278590 d!81506))

(declare-fun d!81508 () Bool)

(assert (=> d!81508 (= (get!1308 (maxPrefix!349 thiss!17480 rules!1920 lt!116287)) (v!14750 (maxPrefix!349 thiss!17480 rules!1920 lt!116287)))))

(assert (=> b!278590 d!81508))

(declare-fun d!81510 () Bool)

(declare-fun res!127730 () Bool)

(declare-fun e!173745 () Bool)

(assert (=> d!81510 (=> res!127730 e!173745)))

(assert (=> d!81510 (= res!127730 (not ((_ is Cons!3894) rules!1920)))))

(assert (=> d!81510 (= (sepAndNonSepRulesDisjointChars!334 rules!1920 rules!1920) e!173745)))

(declare-fun b!279224 () Bool)

(declare-fun e!173746 () Bool)

(assert (=> b!279224 (= e!173745 e!173746)))

(declare-fun res!127731 () Bool)

(assert (=> b!279224 (=> (not res!127731) (not e!173746))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!127 (Rule!1290 List!3904) Bool)

(assert (=> b!279224 (= res!127731 (ruleDisjointCharsFromAllFromOtherType!127 (h!9291 rules!1920) rules!1920))))

(declare-fun b!279225 () Bool)

(assert (=> b!279225 (= e!173746 (sepAndNonSepRulesDisjointChars!334 rules!1920 (t!39218 rules!1920)))))

(assert (= (and d!81510 (not res!127730)) b!279224))

(assert (= (and b!279224 res!127731) b!279225))

(declare-fun m!356939 () Bool)

(assert (=> b!279224 m!356939))

(declare-fun m!356941 () Bool)

(assert (=> b!279225 m!356941))

(assert (=> b!278594 d!81510))

(declare-fun d!81512 () Bool)

(assert (=> d!81512 (= (inv!4810 (tag!955 (rule!1332 separatorToken!170))) (= (mod (str.len (value!25547 (tag!955 (rule!1332 separatorToken!170)))) 2) 0))))

(assert (=> b!278573 d!81512))

(declare-fun d!81514 () Bool)

(declare-fun res!127734 () Bool)

(declare-fun e!173749 () Bool)

(assert (=> d!81514 (=> (not res!127734) (not e!173749))))

(declare-fun semiInverseModEq!269 (Int Int) Bool)

(assert (=> d!81514 (= res!127734 (semiInverseModEq!269 (toChars!1347 (transformation!745 (rule!1332 separatorToken!170))) (toValue!1488 (transformation!745 (rule!1332 separatorToken!170)))))))

(assert (=> d!81514 (= (inv!4814 (transformation!745 (rule!1332 separatorToken!170))) e!173749)))

(declare-fun b!279228 () Bool)

(declare-fun equivClasses!252 (Int Int) Bool)

(assert (=> b!279228 (= e!173749 (equivClasses!252 (toChars!1347 (transformation!745 (rule!1332 separatorToken!170))) (toValue!1488 (transformation!745 (rule!1332 separatorToken!170)))))))

(assert (= (and d!81514 res!127734) b!279228))

(declare-fun m!356943 () Bool)

(assert (=> d!81514 m!356943))

(declare-fun m!356945 () Bool)

(assert (=> b!279228 m!356945))

(assert (=> b!278573 d!81514))

(declare-fun d!81516 () Bool)

(declare-fun lt!116648 () Bool)

(assert (=> d!81516 (= lt!116648 (isEmpty!2538 (list!1609 (_1!2420 (lex!423 thiss!17480 rules!1920 (seqFromList!858 lt!116274))))))))

(declare-fun isEmpty!2544 (Conc!1313) Bool)

(assert (=> d!81516 (= lt!116648 (isEmpty!2544 (c!52576 (_1!2420 (lex!423 thiss!17480 rules!1920 (seqFromList!858 lt!116274))))))))

(assert (=> d!81516 (= (isEmpty!2535 (_1!2420 (lex!423 thiss!17480 rules!1920 (seqFromList!858 lt!116274)))) lt!116648)))

(declare-fun bs!31228 () Bool)

(assert (= bs!31228 d!81516))

(declare-fun m!356947 () Bool)

(assert (=> bs!31228 m!356947))

(assert (=> bs!31228 m!356947))

(declare-fun m!356949 () Bool)

(assert (=> bs!31228 m!356949))

(declare-fun m!356951 () Bool)

(assert (=> bs!31228 m!356951))

(assert (=> b!278572 d!81516))

(declare-fun d!81518 () Bool)

(declare-fun e!173752 () Bool)

(assert (=> d!81518 e!173752))

(declare-fun res!127736 () Bool)

(assert (=> d!81518 (=> (not res!127736) (not e!173752))))

(declare-fun e!173750 () Bool)

(assert (=> d!81518 (= res!127736 e!173750)))

(declare-fun c!52715 () Bool)

(declare-fun lt!116649 () tuple2!4408)

(assert (=> d!81518 (= c!52715 (> (size!3107 (_1!2420 lt!116649)) 0))))

(assert (=> d!81518 (= lt!116649 (lexTailRecV2!185 thiss!17480 rules!1920 (seqFromList!858 lt!116274) (BalanceConc!2633 Empty!1312) (seqFromList!858 lt!116274) (BalanceConc!2635 Empty!1313)))))

(assert (=> d!81518 (= (lex!423 thiss!17480 rules!1920 (seqFromList!858 lt!116274)) lt!116649)))

(declare-fun b!279229 () Bool)

(declare-fun e!173751 () Bool)

(assert (=> b!279229 (= e!173751 (not (isEmpty!2535 (_1!2420 lt!116649))))))

(declare-fun b!279230 () Bool)

(declare-fun res!127735 () Bool)

(assert (=> b!279230 (=> (not res!127735) (not e!173752))))

(assert (=> b!279230 (= res!127735 (= (list!1609 (_1!2420 lt!116649)) (_1!2423 (lexList!219 thiss!17480 rules!1920 (list!1608 (seqFromList!858 lt!116274))))))))

(declare-fun b!279231 () Bool)

(assert (=> b!279231 (= e!173750 (= (_2!2420 lt!116649) (seqFromList!858 lt!116274)))))

(declare-fun b!279232 () Bool)

(assert (=> b!279232 (= e!173752 (= (list!1608 (_2!2420 lt!116649)) (_2!2423 (lexList!219 thiss!17480 rules!1920 (list!1608 (seqFromList!858 lt!116274))))))))

(declare-fun b!279233 () Bool)

(assert (=> b!279233 (= e!173750 e!173751)))

(declare-fun res!127737 () Bool)

(assert (=> b!279233 (= res!127737 (< (size!3114 (_2!2420 lt!116649)) (size!3114 (seqFromList!858 lt!116274))))))

(assert (=> b!279233 (=> (not res!127737) (not e!173751))))

(assert (= (and d!81518 c!52715) b!279233))

(assert (= (and d!81518 (not c!52715)) b!279231))

(assert (= (and b!279233 res!127737) b!279229))

(assert (= (and d!81518 res!127736) b!279230))

(assert (= (and b!279230 res!127735) b!279232))

(declare-fun m!356953 () Bool)

(assert (=> b!279230 m!356953))

(assert (=> b!279230 m!355929))

(declare-fun m!356955 () Bool)

(assert (=> b!279230 m!356955))

(assert (=> b!279230 m!356955))

(declare-fun m!356957 () Bool)

(assert (=> b!279230 m!356957))

(declare-fun m!356959 () Bool)

(assert (=> b!279233 m!356959))

(assert (=> b!279233 m!355929))

(declare-fun m!356961 () Bool)

(assert (=> b!279233 m!356961))

(declare-fun m!356963 () Bool)

(assert (=> d!81518 m!356963))

(assert (=> d!81518 m!355929))

(assert (=> d!81518 m!355929))

(declare-fun m!356965 () Bool)

(assert (=> d!81518 m!356965))

(declare-fun m!356967 () Bool)

(assert (=> b!279229 m!356967))

(declare-fun m!356969 () Bool)

(assert (=> b!279232 m!356969))

(assert (=> b!279232 m!355929))

(assert (=> b!279232 m!356955))

(assert (=> b!279232 m!356955))

(assert (=> b!279232 m!356957))

(assert (=> b!278572 d!81518))

(declare-fun d!81520 () Bool)

(declare-fun fromListB!339 (List!3903) BalanceConc!2632)

(assert (=> d!81520 (= (seqFromList!858 lt!116274) (fromListB!339 lt!116274))))

(declare-fun bs!31229 () Bool)

(assert (= bs!31229 d!81520))

(declare-fun m!356971 () Bool)

(assert (=> bs!31229 m!356971))

(assert (=> b!278572 d!81520))

(declare-fun d!81522 () Bool)

(declare-fun lt!116652 () Token!1234)

(assert (=> d!81522 (= lt!116652 (apply!813 (list!1609 (_1!2420 lt!116297)) 0))))

(declare-fun apply!814 (Conc!1313 Int) Token!1234)

(assert (=> d!81522 (= lt!116652 (apply!814 (c!52576 (_1!2420 lt!116297)) 0))))

(declare-fun e!173755 () Bool)

(assert (=> d!81522 e!173755))

(declare-fun res!127740 () Bool)

(assert (=> d!81522 (=> (not res!127740) (not e!173755))))

(assert (=> d!81522 (= res!127740 (<= 0 0))))

(assert (=> d!81522 (= (apply!808 (_1!2420 lt!116297) 0) lt!116652)))

(declare-fun b!279236 () Bool)

(assert (=> b!279236 (= e!173755 (< 0 (size!3107 (_1!2420 lt!116297))))))

(assert (= (and d!81522 res!127740) b!279236))

(assert (=> d!81522 m!356159))

(assert (=> d!81522 m!356159))

(declare-fun m!356973 () Bool)

(assert (=> d!81522 m!356973))

(declare-fun m!356975 () Bool)

(assert (=> d!81522 m!356975))

(assert (=> b!279236 m!355827))

(assert (=> b!278575 d!81522))

(declare-fun b!279265 () Bool)

(declare-fun res!127760 () Bool)

(declare-fun e!173771 () Bool)

(assert (=> b!279265 (=> res!127760 e!173771)))

(assert (=> b!279265 (= res!127760 (not (isEmpty!2536 (tail!499 lt!116264))))))

(declare-fun bm!15476 () Bool)

(declare-fun call!15481 () Bool)

(assert (=> bm!15476 (= call!15481 (isEmpty!2536 lt!116264))))

(declare-fun b!279267 () Bool)

(declare-fun e!173774 () Bool)

(declare-fun nullable!176 (Regex!969) Bool)

(assert (=> b!279267 (= e!173774 (nullable!176 (regex!745 lt!116263)))))

(declare-fun b!279268 () Bool)

(declare-fun e!173776 () Bool)

(declare-fun lt!116655 () Bool)

(assert (=> b!279268 (= e!173776 (not lt!116655))))

(declare-fun b!279269 () Bool)

(declare-fun e!173770 () Bool)

(assert (=> b!279269 (= e!173770 (= (head!918 lt!116264) (c!52575 (regex!745 lt!116263))))))

(declare-fun b!279270 () Bool)

(declare-fun e!173775 () Bool)

(assert (=> b!279270 (= e!173775 (= lt!116655 call!15481))))

(declare-fun b!279271 () Bool)

(declare-fun res!127758 () Bool)

(declare-fun e!173772 () Bool)

(assert (=> b!279271 (=> res!127758 e!173772)))

(assert (=> b!279271 (= res!127758 e!173770)))

(declare-fun res!127757 () Bool)

(assert (=> b!279271 (=> (not res!127757) (not e!173770))))

(assert (=> b!279271 (= res!127757 lt!116655)))

(declare-fun b!279272 () Bool)

(declare-fun res!127763 () Bool)

(assert (=> b!279272 (=> (not res!127763) (not e!173770))))

(assert (=> b!279272 (= res!127763 (not call!15481))))

(declare-fun b!279273 () Bool)

(declare-fun e!173773 () Bool)

(assert (=> b!279273 (= e!173773 e!173771)))

(declare-fun res!127762 () Bool)

(assert (=> b!279273 (=> res!127762 e!173771)))

(assert (=> b!279273 (= res!127762 call!15481)))

(declare-fun b!279274 () Bool)

(declare-fun res!127759 () Bool)

(assert (=> b!279274 (=> (not res!127759) (not e!173770))))

(assert (=> b!279274 (= res!127759 (isEmpty!2536 (tail!499 lt!116264)))))

(declare-fun d!81524 () Bool)

(assert (=> d!81524 e!173775))

(declare-fun c!52722 () Bool)

(assert (=> d!81524 (= c!52722 ((_ is EmptyExpr!969) (regex!745 lt!116263)))))

(assert (=> d!81524 (= lt!116655 e!173774)))

(declare-fun c!52723 () Bool)

(assert (=> d!81524 (= c!52723 (isEmpty!2536 lt!116264))))

(declare-fun validRegex!251 (Regex!969) Bool)

(assert (=> d!81524 (validRegex!251 (regex!745 lt!116263))))

(assert (=> d!81524 (= (matchR!291 (regex!745 lt!116263) lt!116264) lt!116655)))

(declare-fun b!279266 () Bool)

(declare-fun res!127761 () Bool)

(assert (=> b!279266 (=> res!127761 e!173772)))

(assert (=> b!279266 (= res!127761 (not ((_ is ElementMatch!969) (regex!745 lt!116263))))))

(assert (=> b!279266 (= e!173776 e!173772)))

(declare-fun b!279275 () Bool)

(declare-fun derivativeStep!142 (Regex!969 C!2860) Regex!969)

(assert (=> b!279275 (= e!173774 (matchR!291 (derivativeStep!142 (regex!745 lt!116263) (head!918 lt!116264)) (tail!499 lt!116264)))))

(declare-fun b!279276 () Bool)

(assert (=> b!279276 (= e!173771 (not (= (head!918 lt!116264) (c!52575 (regex!745 lt!116263)))))))

(declare-fun b!279277 () Bool)

(assert (=> b!279277 (= e!173775 e!173776)))

(declare-fun c!52724 () Bool)

(assert (=> b!279277 (= c!52724 ((_ is EmptyLang!969) (regex!745 lt!116263)))))

(declare-fun b!279278 () Bool)

(assert (=> b!279278 (= e!173772 e!173773)))

(declare-fun res!127764 () Bool)

(assert (=> b!279278 (=> (not res!127764) (not e!173773))))

(assert (=> b!279278 (= res!127764 (not lt!116655))))

(assert (= (and d!81524 c!52723) b!279267))

(assert (= (and d!81524 (not c!52723)) b!279275))

(assert (= (and d!81524 c!52722) b!279270))

(assert (= (and d!81524 (not c!52722)) b!279277))

(assert (= (and b!279277 c!52724) b!279268))

(assert (= (and b!279277 (not c!52724)) b!279266))

(assert (= (and b!279266 (not res!127761)) b!279271))

(assert (= (and b!279271 res!127757) b!279272))

(assert (= (and b!279272 res!127763) b!279274))

(assert (= (and b!279274 res!127759) b!279269))

(assert (= (and b!279271 (not res!127758)) b!279278))

(assert (= (and b!279278 res!127764) b!279273))

(assert (= (and b!279273 (not res!127762)) b!279265))

(assert (= (and b!279265 (not res!127760)) b!279276))

(assert (= (or b!279270 b!279272 b!279273) bm!15476))

(declare-fun m!356977 () Bool)

(assert (=> b!279267 m!356977))

(declare-fun m!356979 () Bool)

(assert (=> d!81524 m!356979))

(declare-fun m!356981 () Bool)

(assert (=> d!81524 m!356981))

(declare-fun m!356983 () Bool)

(assert (=> b!279275 m!356983))

(assert (=> b!279275 m!356983))

(declare-fun m!356985 () Bool)

(assert (=> b!279275 m!356985))

(declare-fun m!356987 () Bool)

(assert (=> b!279275 m!356987))

(assert (=> b!279275 m!356985))

(assert (=> b!279275 m!356987))

(declare-fun m!356989 () Bool)

(assert (=> b!279275 m!356989))

(assert (=> b!279274 m!356987))

(assert (=> b!279274 m!356987))

(declare-fun m!356991 () Bool)

(assert (=> b!279274 m!356991))

(assert (=> bm!15476 m!356979))

(assert (=> b!279269 m!356983))

(assert (=> b!279276 m!356983))

(assert (=> b!279265 m!356987))

(assert (=> b!279265 m!356987))

(assert (=> b!279265 m!356991))

(assert (=> b!278576 d!81524))

(declare-fun d!81526 () Bool)

(assert (=> d!81526 (= (get!1307 lt!116308) (v!14749 lt!116308))))

(assert (=> b!278576 d!81526))

(declare-fun d!81528 () Bool)

(declare-fun lt!116656 () BalanceConc!2632)

(assert (=> d!81528 (= (list!1608 lt!116656) (printListTailRec!139 thiss!17480 (dropList!174 lt!116299 0) (list!1608 (BalanceConc!2633 Empty!1312))))))

(declare-fun e!173778 () BalanceConc!2632)

(assert (=> d!81528 (= lt!116656 e!173778)))

(declare-fun c!52725 () Bool)

(assert (=> d!81528 (= c!52725 (>= 0 (size!3107 lt!116299)))))

(declare-fun e!173777 () Bool)

(assert (=> d!81528 e!173777))

(declare-fun res!127765 () Bool)

(assert (=> d!81528 (=> (not res!127765) (not e!173777))))

(assert (=> d!81528 (= res!127765 (>= 0 0))))

(assert (=> d!81528 (= (printTailRec!319 thiss!17480 lt!116299 0 (BalanceConc!2633 Empty!1312)) lt!116656)))

(declare-fun b!279279 () Bool)

(assert (=> b!279279 (= e!173777 (<= 0 (size!3107 lt!116299)))))

(declare-fun b!279280 () Bool)

(assert (=> b!279280 (= e!173778 (BalanceConc!2633 Empty!1312))))

(declare-fun b!279281 () Bool)

(assert (=> b!279281 (= e!173778 (printTailRec!319 thiss!17480 lt!116299 (+ 0 1) (++!1032 (BalanceConc!2633 Empty!1312) (charsOf!390 (apply!808 lt!116299 0)))))))

(declare-fun lt!116661 () List!3905)

(assert (=> b!279281 (= lt!116661 (list!1609 lt!116299))))

(declare-fun lt!116660 () Unit!5128)

(assert (=> b!279281 (= lt!116660 (lemmaDropApply!214 lt!116661 0))))

(assert (=> b!279281 (= (head!917 (drop!227 lt!116661 0)) (apply!813 lt!116661 0))))

(declare-fun lt!116662 () Unit!5128)

(assert (=> b!279281 (= lt!116662 lt!116660)))

(declare-fun lt!116658 () List!3905)

(assert (=> b!279281 (= lt!116658 (list!1609 lt!116299))))

(declare-fun lt!116659 () Unit!5128)

(assert (=> b!279281 (= lt!116659 (lemmaDropTail!206 lt!116658 0))))

(assert (=> b!279281 (= (tail!500 (drop!227 lt!116658 0)) (drop!227 lt!116658 (+ 0 1)))))

(declare-fun lt!116657 () Unit!5128)

(assert (=> b!279281 (= lt!116657 lt!116659)))

(assert (= (and d!81528 res!127765) b!279279))

(assert (= (and d!81528 c!52725) b!279280))

(assert (= (and d!81528 (not c!52725)) b!279281))

(assert (=> d!81528 m!356603))

(declare-fun m!356993 () Bool)

(assert (=> d!81528 m!356993))

(declare-fun m!356995 () Bool)

(assert (=> d!81528 m!356995))

(assert (=> d!81528 m!356993))

(assert (=> d!81528 m!356603))

(declare-fun m!356997 () Bool)

(assert (=> d!81528 m!356997))

(declare-fun m!356999 () Bool)

(assert (=> d!81528 m!356999))

(assert (=> b!279279 m!356995))

(declare-fun m!357001 () Bool)

(assert (=> b!279281 m!357001))

(declare-fun m!357003 () Bool)

(assert (=> b!279281 m!357003))

(declare-fun m!357005 () Bool)

(assert (=> b!279281 m!357005))

(assert (=> b!279281 m!357005))

(declare-fun m!357007 () Bool)

(assert (=> b!279281 m!357007))

(declare-fun m!357009 () Bool)

(assert (=> b!279281 m!357009))

(declare-fun m!357011 () Bool)

(assert (=> b!279281 m!357011))

(declare-fun m!357013 () Bool)

(assert (=> b!279281 m!357013))

(declare-fun m!357015 () Bool)

(assert (=> b!279281 m!357015))

(declare-fun m!357017 () Bool)

(assert (=> b!279281 m!357017))

(declare-fun m!357019 () Bool)

(assert (=> b!279281 m!357019))

(declare-fun m!357021 () Bool)

(assert (=> b!279281 m!357021))

(declare-fun m!357023 () Bool)

(assert (=> b!279281 m!357023))

(assert (=> b!279281 m!357007))

(assert (=> b!279281 m!357015))

(assert (=> b!279281 m!357009))

(declare-fun m!357025 () Bool)

(assert (=> b!279281 m!357025))

(assert (=> b!279281 m!357011))

(assert (=> b!278574 d!81528))

(declare-fun d!81530 () Bool)

(assert (=> d!81530 (= (list!1608 lt!116284) (list!1612 (c!52574 lt!116284)))))

(declare-fun bs!31230 () Bool)

(assert (= bs!31230 d!81530))

(declare-fun m!357027 () Bool)

(assert (=> bs!31230 m!357027))

(assert (=> b!278574 d!81530))

(declare-fun d!81532 () Bool)

(declare-fun lt!116663 () BalanceConc!2632)

(assert (=> d!81532 (= (list!1608 lt!116663) (printList!307 thiss!17480 (list!1609 lt!116299)))))

(assert (=> d!81532 (= lt!116663 (printTailRec!319 thiss!17480 lt!116299 0 (BalanceConc!2633 Empty!1312)))))

(assert (=> d!81532 (= (print!356 thiss!17480 lt!116299) lt!116663)))

(declare-fun bs!31231 () Bool)

(assert (= bs!31231 d!81532))

(declare-fun m!357029 () Bool)

(assert (=> bs!31231 m!357029))

(assert (=> bs!31231 m!357023))

(assert (=> bs!31231 m!357023))

(declare-fun m!357031 () Bool)

(assert (=> bs!31231 m!357031))

(assert (=> bs!31231 m!355795))

(assert (=> b!278574 d!81532))

(declare-fun d!81534 () Bool)

(declare-fun e!173779 () Bool)

(assert (=> d!81534 e!173779))

(declare-fun res!127766 () Bool)

(assert (=> d!81534 (=> (not res!127766) (not e!173779))))

(declare-fun lt!116664 () BalanceConc!2634)

(assert (=> d!81534 (= res!127766 (= (list!1609 lt!116664) (Cons!3895 (h!9292 tokens!465) Nil!3895)))))

(assert (=> d!81534 (= lt!116664 (singleton!124 (h!9292 tokens!465)))))

(assert (=> d!81534 (= (singletonSeq!291 (h!9292 tokens!465)) lt!116664)))

(declare-fun b!279282 () Bool)

(assert (=> b!279282 (= e!173779 (isBalanced!365 (c!52576 lt!116664)))))

(assert (= (and d!81534 res!127766) b!279282))

(declare-fun m!357033 () Bool)

(assert (=> d!81534 m!357033))

(declare-fun m!357035 () Bool)

(assert (=> d!81534 m!357035))

(declare-fun m!357037 () Bool)

(assert (=> b!279282 m!357037))

(assert (=> b!278574 d!81534))

(declare-fun d!81536 () Bool)

(declare-fun c!52728 () Bool)

(assert (=> d!81536 (= c!52728 ((_ is Cons!3895) (Cons!3895 (h!9292 tokens!465) Nil!3895)))))

(declare-fun e!173782 () List!3903)

(assert (=> d!81536 (= (printList!307 thiss!17480 (Cons!3895 (h!9292 tokens!465) Nil!3895)) e!173782)))

(declare-fun b!279287 () Bool)

(assert (=> b!279287 (= e!173782 (++!1030 (list!1608 (charsOf!390 (h!9292 (Cons!3895 (h!9292 tokens!465) Nil!3895)))) (printList!307 thiss!17480 (t!39219 (Cons!3895 (h!9292 tokens!465) Nil!3895)))))))

(declare-fun b!279288 () Bool)

(assert (=> b!279288 (= e!173782 Nil!3893)))

(assert (= (and d!81536 c!52728) b!279287))

(assert (= (and d!81536 (not c!52728)) b!279288))

(declare-fun m!357039 () Bool)

(assert (=> b!279287 m!357039))

(assert (=> b!279287 m!357039))

(declare-fun m!357041 () Bool)

(assert (=> b!279287 m!357041))

(declare-fun m!357043 () Bool)

(assert (=> b!279287 m!357043))

(assert (=> b!279287 m!357041))

(assert (=> b!279287 m!357043))

(declare-fun m!357045 () Bool)

(assert (=> b!279287 m!357045))

(assert (=> b!278574 d!81536))

(declare-fun d!81538 () Bool)

(declare-fun res!127769 () Bool)

(declare-fun e!173785 () Bool)

(assert (=> d!81538 (=> (not res!127769) (not e!173785))))

(declare-fun rulesValid!233 (LexerInterface!631 List!3904) Bool)

(assert (=> d!81538 (= res!127769 (rulesValid!233 thiss!17480 rules!1920))))

(assert (=> d!81538 (= (rulesInvariant!597 thiss!17480 rules!1920) e!173785)))

(declare-fun b!279291 () Bool)

(declare-datatypes ((List!3906 0))(
  ( (Nil!3896) (Cons!3896 (h!9293 String!4915) (t!39306 List!3906)) )
))
(declare-fun noDuplicateTag!233 (LexerInterface!631 List!3904 List!3906) Bool)

(assert (=> b!279291 (= e!173785 (noDuplicateTag!233 thiss!17480 rules!1920 Nil!3896))))

(assert (= (and d!81538 res!127769) b!279291))

(declare-fun m!357047 () Bool)

(assert (=> d!81538 m!357047))

(declare-fun m!357049 () Bool)

(assert (=> b!279291 m!357049))

(assert (=> b!278578 d!81538))

(declare-fun d!81540 () Bool)

(declare-fun lt!116667 () Bool)

(assert (=> d!81540 (= lt!116667 (isEmpty!2536 (list!1608 (_2!2420 lt!116297))))))

(declare-fun isEmpty!2545 (Conc!1312) Bool)

(assert (=> d!81540 (= lt!116667 (isEmpty!2545 (c!52574 (_2!2420 lt!116297))))))

(assert (=> d!81540 (= (isEmpty!2534 (_2!2420 lt!116297)) lt!116667)))

(declare-fun bs!31232 () Bool)

(assert (= bs!31232 d!81540))

(declare-fun m!357051 () Bool)

(assert (=> bs!31232 m!357051))

(assert (=> bs!31232 m!357051))

(declare-fun m!357053 () Bool)

(assert (=> bs!31232 m!357053))

(declare-fun m!357055 () Bool)

(assert (=> bs!31232 m!357055))

(assert (=> b!278599 d!81540))

(declare-fun d!81542 () Bool)

(assert (=> d!81542 (= (list!1608 (seqFromList!858 lt!116287)) (list!1612 (c!52574 (seqFromList!858 lt!116287))))))

(declare-fun bs!31233 () Bool)

(assert (= bs!31233 d!81542))

(declare-fun m!357057 () Bool)

(assert (=> bs!31233 m!357057))

(assert (=> b!278600 d!81542))

(declare-fun d!81544 () Bool)

(assert (=> d!81544 (= (seqFromList!858 lt!116287) (fromListB!339 lt!116287))))

(declare-fun bs!31234 () Bool)

(assert (= bs!31234 d!81544))

(declare-fun m!357059 () Bool)

(assert (=> bs!31234 m!357059))

(assert (=> b!278600 d!81544))

(declare-fun d!81546 () Bool)

(assert (=> d!81546 (= (seqFromList!857 (t!39219 tokens!465)) (fromListB!338 (t!39219 tokens!465)))))

(declare-fun bs!31235 () Bool)

(assert (= bs!31235 d!81546))

(declare-fun m!357061 () Bool)

(assert (=> bs!31235 m!357061))

(assert (=> b!278557 d!81546))

(declare-fun d!81548 () Bool)

(declare-fun e!173791 () Bool)

(assert (=> d!81548 e!173791))

(declare-fun res!127775 () Bool)

(assert (=> d!81548 (=> (not res!127775) (not e!173791))))

(declare-fun lt!116670 () List!3903)

(assert (=> d!81548 (= res!127775 (= (content!565 lt!116670) ((_ map or) (content!565 (++!1030 lt!116274 lt!116264)) (content!565 lt!116272))))))

(declare-fun e!173790 () List!3903)

(assert (=> d!81548 (= lt!116670 e!173790)))

(declare-fun c!52731 () Bool)

(assert (=> d!81548 (= c!52731 ((_ is Nil!3893) (++!1030 lt!116274 lt!116264)))))

(assert (=> d!81548 (= (++!1030 (++!1030 lt!116274 lt!116264) lt!116272) lt!116670)))

(declare-fun b!279300 () Bool)

(assert (=> b!279300 (= e!173790 lt!116272)))

(declare-fun b!279303 () Bool)

(assert (=> b!279303 (= e!173791 (or (not (= lt!116272 Nil!3893)) (= lt!116670 (++!1030 lt!116274 lt!116264))))))

(declare-fun b!279302 () Bool)

(declare-fun res!127774 () Bool)

(assert (=> b!279302 (=> (not res!127774) (not e!173791))))

(assert (=> b!279302 (= res!127774 (= (size!3110 lt!116670) (+ (size!3110 (++!1030 lt!116274 lt!116264)) (size!3110 lt!116272))))))

(declare-fun b!279301 () Bool)

(assert (=> b!279301 (= e!173790 (Cons!3893 (h!9290 (++!1030 lt!116274 lt!116264)) (++!1030 (t!39217 (++!1030 lt!116274 lt!116264)) lt!116272)))))

(assert (= (and d!81548 c!52731) b!279300))

(assert (= (and d!81548 (not c!52731)) b!279301))

(assert (= (and d!81548 res!127775) b!279302))

(assert (= (and b!279302 res!127774) b!279303))

(declare-fun m!357063 () Bool)

(assert (=> d!81548 m!357063))

(assert (=> d!81548 m!355751))

(declare-fun m!357065 () Bool)

(assert (=> d!81548 m!357065))

(declare-fun m!357067 () Bool)

(assert (=> d!81548 m!357067))

(declare-fun m!357069 () Bool)

(assert (=> b!279302 m!357069))

(assert (=> b!279302 m!355751))

(declare-fun m!357071 () Bool)

(assert (=> b!279302 m!357071))

(assert (=> b!279302 m!356153))

(declare-fun m!357073 () Bool)

(assert (=> b!279301 m!357073))

(assert (=> b!278557 d!81548))

(declare-fun bs!31270 () Bool)

(declare-fun b!279449 () Bool)

(assert (= bs!31270 (and b!279449 b!278563)))

(declare-fun lambda!9546 () Int)

(assert (=> bs!31270 (not (= lambda!9546 lambda!9519))))

(declare-fun bs!31271 () Bool)

(assert (= bs!31271 (and b!279449 b!278584)))

(assert (=> bs!31271 (= lambda!9546 lambda!9520)))

(declare-fun bs!31272 () Bool)

(assert (= bs!31272 (and b!279449 d!81316)))

(assert (=> bs!31272 (= lambda!9546 lambda!9525)))

(declare-fun bs!31273 () Bool)

(assert (= bs!31273 (and b!279449 d!81398)))

(assert (=> bs!31273 (not (= lambda!9546 lambda!9537))))

(declare-fun b!279456 () Bool)

(declare-fun e!173887 () Bool)

(assert (=> b!279456 (= e!173887 true)))

(declare-fun b!279455 () Bool)

(declare-fun e!173886 () Bool)

(assert (=> b!279455 (= e!173886 e!173887)))

(declare-fun b!279454 () Bool)

(declare-fun e!173885 () Bool)

(assert (=> b!279454 (= e!173885 e!173886)))

(assert (=> b!279449 e!173885))

(assert (= b!279455 b!279456))

(assert (= b!279454 b!279455))

(assert (= (and b!279449 ((_ is Cons!3894) rules!1920)) b!279454))

(assert (=> b!279456 (< (dynLambda!2033 order!3045 (toValue!1488 (transformation!745 (h!9291 rules!1920)))) (dynLambda!2034 order!3047 lambda!9546))))

(assert (=> b!279456 (< (dynLambda!2035 order!3049 (toChars!1347 (transformation!745 (h!9291 rules!1920)))) (dynLambda!2034 order!3047 lambda!9546))))

(assert (=> b!279449 true))

(declare-fun b!279446 () Bool)

(declare-fun e!173881 () List!3903)

(assert (=> b!279446 (= e!173881 Nil!3893)))

(assert (=> b!279446 (= (print!356 thiss!17480 (singletonSeq!291 (h!9292 (t!39219 tokens!465)))) (printTailRec!319 thiss!17480 (singletonSeq!291 (h!9292 (t!39219 tokens!465))) 0 (BalanceConc!2633 Empty!1312)))))

(declare-fun lt!116766 () Unit!5128)

(declare-fun Unit!5140 () Unit!5128)

(assert (=> b!279446 (= lt!116766 Unit!5140)))

(declare-fun call!15511 () List!3903)

(declare-fun lt!116765 () List!3903)

(declare-fun lt!116763 () Unit!5128)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!122 (LexerInterface!631 List!3904 List!3903 List!3903) Unit!5128)

(assert (=> b!279446 (= lt!116763 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!122 thiss!17480 rules!1920 call!15511 lt!116765))))

(assert (=> b!279446 false))

(declare-fun lt!116764 () Unit!5128)

(declare-fun Unit!5141 () Unit!5128)

(assert (=> b!279446 (= lt!116764 Unit!5141)))

(declare-fun call!15512 () List!3903)

(declare-fun call!15513 () BalanceConc!2632)

(declare-fun bm!15506 () Bool)

(declare-fun call!15514 () BalanceConc!2632)

(declare-fun c!52770 () Bool)

(assert (=> bm!15506 (= call!15512 (list!1608 (ite c!52770 call!15513 call!15514)))))

(declare-fun b!279447 () Bool)

(declare-fun c!52769 () Bool)

(declare-fun lt!116761 () Option!850)

(assert (=> b!279447 (= c!52769 (and ((_ is Some!849) lt!116761) (not (= (_1!2421 (v!14750 lt!116761)) (h!9292 (t!39219 tokens!465))))))))

(declare-fun e!173882 () List!3903)

(assert (=> b!279447 (= e!173882 e!173881)))

(declare-fun b!279448 () Bool)

(declare-fun e!173883 () List!3903)

(assert (=> b!279448 (= e!173883 Nil!3893)))

(assert (=> b!279449 (= e!173883 e!173882)))

(declare-fun lt!116762 () Unit!5128)

(assert (=> b!279449 (= lt!116762 (forallContained!300 (t!39219 tokens!465) lambda!9546 (h!9292 (t!39219 tokens!465))))))

(assert (=> b!279449 (= lt!116765 (printWithSeparatorTokenWhenNeededList!314 thiss!17480 rules!1920 (t!39219 (t!39219 tokens!465)) separatorToken!170))))

(assert (=> b!279449 (= lt!116761 (maxPrefix!349 thiss!17480 rules!1920 (++!1030 (list!1608 (charsOf!390 (h!9292 (t!39219 tokens!465)))) lt!116765)))))

(assert (=> b!279449 (= c!52770 (and ((_ is Some!849) lt!116761) (= (_1!2421 (v!14750 lt!116761)) (h!9292 (t!39219 tokens!465)))))))

(declare-fun b!279450 () Bool)

(declare-fun e!173884 () BalanceConc!2632)

(assert (=> b!279450 (= e!173884 call!15514)))

(declare-fun b!279451 () Bool)

(assert (=> b!279451 (= e!173884 (charsOf!390 separatorToken!170))))

(declare-fun bm!15507 () Bool)

(assert (=> bm!15507 (= call!15511 (list!1608 e!173884))))

(declare-fun c!52768 () Bool)

(assert (=> bm!15507 (= c!52768 c!52769)))

(declare-fun b!279452 () Bool)

(declare-fun call!15515 () List!3903)

(assert (=> b!279452 (= e!173882 call!15515)))

(declare-fun bm!15509 () Bool)

(assert (=> bm!15509 (= call!15513 (charsOf!390 (h!9292 (t!39219 tokens!465))))))

(declare-fun bm!15510 () Bool)

(assert (=> bm!15510 (= call!15514 call!15513)))

(declare-fun b!279453 () Bool)

(assert (=> b!279453 (= e!173881 (++!1030 call!15515 lt!116765))))

(declare-fun bm!15508 () Bool)

(assert (=> bm!15508 (= call!15515 (++!1030 call!15512 (ite c!52770 lt!116765 call!15511)))))

(declare-fun d!81550 () Bool)

(declare-fun c!52771 () Bool)

(assert (=> d!81550 (= c!52771 ((_ is Cons!3895) (t!39219 tokens!465)))))

(assert (=> d!81550 (= (printWithSeparatorTokenWhenNeededList!314 thiss!17480 rules!1920 (t!39219 tokens!465) separatorToken!170) e!173883)))

(assert (= (and d!81550 c!52771) b!279449))

(assert (= (and d!81550 (not c!52771)) b!279448))

(assert (= (and b!279449 c!52770) b!279452))

(assert (= (and b!279449 (not c!52770)) b!279447))

(assert (= (and b!279447 c!52769) b!279453))

(assert (= (and b!279447 (not c!52769)) b!279446))

(assert (= (or b!279453 b!279446) bm!15510))

(assert (= (or b!279453 b!279446) bm!15507))

(assert (= (and bm!15507 c!52768) b!279451))

(assert (= (and bm!15507 (not c!52768)) b!279450))

(assert (= (or b!279452 bm!15510) bm!15509))

(assert (= (or b!279452 b!279453) bm!15506))

(assert (= (or b!279452 b!279453) bm!15508))

(assert (=> b!279451 m!355733))

(declare-fun m!357413 () Bool)

(assert (=> bm!15507 m!357413))

(declare-fun m!357415 () Bool)

(assert (=> bm!15506 m!357415))

(declare-fun m!357417 () Bool)

(assert (=> bm!15508 m!357417))

(declare-fun m!357419 () Bool)

(assert (=> bm!15509 m!357419))

(declare-fun m!357421 () Bool)

(assert (=> b!279453 m!357421))

(declare-fun m!357423 () Bool)

(assert (=> b!279446 m!357423))

(assert (=> b!279446 m!357423))

(declare-fun m!357425 () Bool)

(assert (=> b!279446 m!357425))

(assert (=> b!279446 m!357423))

(declare-fun m!357427 () Bool)

(assert (=> b!279446 m!357427))

(declare-fun m!357429 () Bool)

(assert (=> b!279446 m!357429))

(declare-fun m!357431 () Bool)

(assert (=> b!279449 m!357431))

(declare-fun m!357433 () Bool)

(assert (=> b!279449 m!357433))

(declare-fun m!357435 () Bool)

(assert (=> b!279449 m!357435))

(assert (=> b!279449 m!357419))

(declare-fun m!357437 () Bool)

(assert (=> b!279449 m!357437))

(assert (=> b!279449 m!357419))

(declare-fun m!357439 () Bool)

(assert (=> b!279449 m!357439))

(assert (=> b!279449 m!357439))

(assert (=> b!279449 m!357433))

(assert (=> b!278557 d!81550))

(declare-fun bs!31296 () Bool)

(declare-fun d!81632 () Bool)

(assert (= bs!31296 (and d!81632 b!278584)))

(declare-fun lambda!9556 () Int)

(assert (=> bs!31296 (not (= lambda!9556 lambda!9520))))

(declare-fun bs!31297 () Bool)

(assert (= bs!31297 (and d!81632 d!81398)))

(assert (=> bs!31297 (= lambda!9556 lambda!9537)))

(declare-fun bs!31298 () Bool)

(assert (= bs!31298 (and d!81632 d!81316)))

(assert (=> bs!31298 (not (= lambda!9556 lambda!9525))))

(declare-fun bs!31299 () Bool)

(assert (= bs!31299 (and d!81632 b!279449)))

(assert (=> bs!31299 (not (= lambda!9556 lambda!9546))))

(declare-fun bs!31300 () Bool)

(assert (= bs!31300 (and d!81632 b!278563)))

(assert (=> bs!31300 (= lambda!9556 lambda!9519)))

(declare-fun bs!31301 () Bool)

(declare-fun b!279584 () Bool)

(assert (= bs!31301 (and b!279584 b!278584)))

(declare-fun lambda!9557 () Int)

(assert (=> bs!31301 (= lambda!9557 lambda!9520)))

(declare-fun bs!31302 () Bool)

(assert (= bs!31302 (and b!279584 d!81632)))

(assert (=> bs!31302 (not (= lambda!9557 lambda!9556))))

(declare-fun bs!31303 () Bool)

(assert (= bs!31303 (and b!279584 d!81398)))

(assert (=> bs!31303 (not (= lambda!9557 lambda!9537))))

(declare-fun bs!31304 () Bool)

(assert (= bs!31304 (and b!279584 d!81316)))

(assert (=> bs!31304 (= lambda!9557 lambda!9525)))

(declare-fun bs!31305 () Bool)

(assert (= bs!31305 (and b!279584 b!279449)))

(assert (=> bs!31305 (= lambda!9557 lambda!9546)))

(declare-fun bs!31306 () Bool)

(assert (= bs!31306 (and b!279584 b!278563)))

(assert (=> bs!31306 (not (= lambda!9557 lambda!9519))))

(declare-fun b!279587 () Bool)

(declare-fun e!173976 () Bool)

(assert (=> b!279587 (= e!173976 true)))

(declare-fun b!279586 () Bool)

(declare-fun e!173975 () Bool)

(assert (=> b!279586 (= e!173975 e!173976)))

(declare-fun b!279585 () Bool)

(declare-fun e!173974 () Bool)

(assert (=> b!279585 (= e!173974 e!173975)))

(assert (=> b!279584 e!173974))

(assert (= b!279586 b!279587))

(assert (= b!279585 b!279586))

(assert (= (and b!279584 ((_ is Cons!3894) rules!1920)) b!279585))

(assert (=> b!279587 (< (dynLambda!2033 order!3045 (toValue!1488 (transformation!745 (h!9291 rules!1920)))) (dynLambda!2034 order!3047 lambda!9557))))

(assert (=> b!279587 (< (dynLambda!2035 order!3049 (toChars!1347 (transformation!745 (h!9291 rules!1920)))) (dynLambda!2034 order!3047 lambda!9557))))

(assert (=> b!279584 true))

(declare-fun bm!15523 () Bool)

(declare-fun c!52790 () Bool)

(declare-fun c!52792 () Bool)

(assert (=> bm!15523 (= c!52790 c!52792)))

(declare-fun call!15531 () BalanceConc!2632)

(declare-fun lt!116817 () BalanceConc!2632)

(declare-fun e!173968 () BalanceConc!2632)

(declare-fun call!15528 () BalanceConc!2632)

(assert (=> bm!15523 (= call!15531 (++!1032 e!173968 (ite c!52792 lt!116817 call!15528)))))

(declare-fun bm!15524 () Bool)

(declare-fun call!15530 () Token!1234)

(assert (=> bm!15524 (= call!15530 (apply!808 (seqFromList!857 (t!39219 tokens!465)) 0))))

(declare-fun b!279574 () Bool)

(declare-fun c!52791 () Bool)

(declare-fun e!173973 () Bool)

(assert (=> b!279574 (= c!52791 e!173973)))

(declare-fun res!127870 () Bool)

(assert (=> b!279574 (=> (not res!127870) (not e!173973))))

(declare-fun lt!116816 () Option!851)

(assert (=> b!279574 (= res!127870 ((_ is Some!850) lt!116816))))

(declare-fun e!173969 () BalanceConc!2632)

(declare-fun e!173971 () BalanceConc!2632)

(assert (=> b!279574 (= e!173969 e!173971)))

(declare-fun b!279575 () Bool)

(assert (=> b!279575 (= e!173971 (++!1032 call!15531 lt!116817))))

(declare-fun b!279576 () Bool)

(declare-fun e!173967 () BalanceConc!2632)

(assert (=> b!279576 (= e!173967 (BalanceConc!2633 Empty!1312))))

(declare-fun b!279577 () Bool)

(declare-fun e!173972 () Bool)

(assert (=> b!279577 (= e!173972 (= (_1!2422 (v!14751 lt!116816)) (apply!808 (seqFromList!857 (t!39219 tokens!465)) 0)))))

(declare-fun b!279578 () Bool)

(assert (=> b!279578 (= e!173969 call!15531)))

(declare-fun bm!15525 () Bool)

(declare-fun call!15529 () BalanceConc!2632)

(assert (=> bm!15525 (= call!15528 call!15529)))

(declare-fun bm!15526 () Bool)

(declare-fun call!15532 () Token!1234)

(assert (=> bm!15526 (= call!15532 call!15530)))

(declare-fun b!279579 () Bool)

(assert (=> b!279579 (= e!173968 (charsOf!390 call!15532))))

(declare-fun b!279580 () Bool)

(assert (=> b!279580 (= e!173973 (not (= (_1!2422 (v!14751 lt!116816)) call!15530)))))

(declare-fun lt!116823 () BalanceConc!2632)

(assert (=> d!81632 (= (list!1608 lt!116823) (printWithSeparatorTokenWhenNeededList!314 thiss!17480 rules!1920 (dropList!174 (seqFromList!857 (t!39219 tokens!465)) 0) separatorToken!170))))

(assert (=> d!81632 (= lt!116823 e!173967)))

(declare-fun c!52789 () Bool)

(assert (=> d!81632 (= c!52789 (>= 0 (size!3107 (seqFromList!857 (t!39219 tokens!465)))))))

(declare-fun lt!116818 () Unit!5128)

(declare-fun lemmaContentSubsetPreservesForall!118 (List!3905 List!3905 Int) Unit!5128)

(assert (=> d!81632 (= lt!116818 (lemmaContentSubsetPreservesForall!118 (list!1609 (seqFromList!857 (t!39219 tokens!465))) (dropList!174 (seqFromList!857 (t!39219 tokens!465)) 0) lambda!9556))))

(declare-fun e!173970 () Bool)

(assert (=> d!81632 e!173970))

(declare-fun res!127868 () Bool)

(assert (=> d!81632 (=> (not res!127868) (not e!173970))))

(assert (=> d!81632 (= res!127868 (>= 0 0))))

(assert (=> d!81632 (= (printWithSeparatorTokenWhenNeededRec!306 thiss!17480 rules!1920 (seqFromList!857 (t!39219 tokens!465)) separatorToken!170 0) lt!116823)))

(declare-fun b!279581 () Bool)

(assert (=> b!279581 (= e!173971 (BalanceConc!2633 Empty!1312))))

(assert (=> b!279581 (= (print!356 thiss!17480 (singletonSeq!291 call!15532)) (printTailRec!319 thiss!17480 (singletonSeq!291 call!15532) 0 (BalanceConc!2633 Empty!1312)))))

(declare-fun lt!116822 () Unit!5128)

(declare-fun Unit!5142 () Unit!5128)

(assert (=> b!279581 (= lt!116822 Unit!5142)))

(declare-fun lt!116815 () Unit!5128)

(assert (=> b!279581 (= lt!116815 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!122 thiss!17480 rules!1920 (list!1608 call!15528) (list!1608 lt!116817)))))

(assert (=> b!279581 false))

(declare-fun lt!116814 () Unit!5128)

(declare-fun Unit!5143 () Unit!5128)

(assert (=> b!279581 (= lt!116814 Unit!5143)))

(declare-fun b!279582 () Bool)

(assert (=> b!279582 (= e!173970 (<= 0 (size!3107 (seqFromList!857 (t!39219 tokens!465)))))))

(declare-fun bm!15527 () Bool)

(assert (=> bm!15527 (= call!15529 (charsOf!390 (ite c!52792 call!15530 (ite c!52791 separatorToken!170 call!15532))))))

(declare-fun b!279583 () Bool)

(assert (=> b!279583 (= e!173968 call!15529)))

(assert (=> b!279584 (= e!173967 e!173969)))

(declare-fun lt!116821 () List!3905)

(assert (=> b!279584 (= lt!116821 (list!1609 (seqFromList!857 (t!39219 tokens!465))))))

(declare-fun lt!116819 () Unit!5128)

(assert (=> b!279584 (= lt!116819 (lemmaDropApply!214 lt!116821 0))))

(assert (=> b!279584 (= (head!917 (drop!227 lt!116821 0)) (apply!813 lt!116821 0))))

(declare-fun lt!116820 () Unit!5128)

(assert (=> b!279584 (= lt!116820 lt!116819)))

(declare-fun lt!116812 () List!3905)

(assert (=> b!279584 (= lt!116812 (list!1609 (seqFromList!857 (t!39219 tokens!465))))))

(declare-fun lt!116811 () Unit!5128)

(assert (=> b!279584 (= lt!116811 (lemmaDropTail!206 lt!116812 0))))

(assert (=> b!279584 (= (tail!500 (drop!227 lt!116812 0)) (drop!227 lt!116812 (+ 0 1)))))

(declare-fun lt!116824 () Unit!5128)

(assert (=> b!279584 (= lt!116824 lt!116811)))

(declare-fun lt!116813 () Unit!5128)

(assert (=> b!279584 (= lt!116813 (forallContained!300 (list!1609 (seqFromList!857 (t!39219 tokens!465))) lambda!9557 (apply!808 (seqFromList!857 (t!39219 tokens!465)) 0)))))

(assert (=> b!279584 (= lt!116817 (printWithSeparatorTokenWhenNeededRec!306 thiss!17480 rules!1920 (seqFromList!857 (t!39219 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!279584 (= lt!116816 (maxPrefixZipperSequence!312 thiss!17480 rules!1920 (++!1032 (charsOf!390 (apply!808 (seqFromList!857 (t!39219 tokens!465)) 0)) lt!116817)))))

(declare-fun res!127869 () Bool)

(assert (=> b!279584 (= res!127869 ((_ is Some!850) lt!116816))))

(assert (=> b!279584 (=> (not res!127869) (not e!173972))))

(assert (=> b!279584 (= c!52792 e!173972)))

(assert (= (and d!81632 res!127868) b!279582))

(assert (= (and d!81632 c!52789) b!279576))

(assert (= (and d!81632 (not c!52789)) b!279584))

(assert (= (and b!279584 res!127869) b!279577))

(assert (= (and b!279584 c!52792) b!279578))

(assert (= (and b!279584 (not c!52792)) b!279574))

(assert (= (and b!279574 res!127870) b!279580))

(assert (= (and b!279574 c!52791) b!279575))

(assert (= (and b!279574 (not c!52791)) b!279581))

(assert (= (or b!279575 b!279581) bm!15526))

(assert (= (or b!279575 b!279581) bm!15525))

(assert (= (or b!279578 bm!15526 b!279580) bm!15524))

(assert (= (or b!279578 bm!15525) bm!15527))

(assert (= (or b!279578 b!279575) bm!15523))

(assert (= (and bm!15523 c!52790) b!279583))

(assert (= (and bm!15523 (not c!52790)) b!279579))

(assert (=> b!279577 m!355729))

(declare-fun m!357525 () Bool)

(assert (=> b!279577 m!357525))

(declare-fun m!357527 () Bool)

(assert (=> bm!15527 m!357527))

(assert (=> bm!15524 m!355729))

(assert (=> bm!15524 m!357525))

(declare-fun m!357529 () Bool)

(assert (=> d!81632 m!357529))

(declare-fun m!357531 () Bool)

(assert (=> d!81632 m!357531))

(declare-fun m!357533 () Bool)

(assert (=> d!81632 m!357533))

(assert (=> d!81632 m!357529))

(declare-fun m!357535 () Bool)

(assert (=> d!81632 m!357535))

(assert (=> d!81632 m!355729))

(assert (=> d!81632 m!357533))

(declare-fun m!357537 () Bool)

(assert (=> d!81632 m!357537))

(assert (=> d!81632 m!355729))

(assert (=> d!81632 m!357529))

(assert (=> d!81632 m!355729))

(declare-fun m!357539 () Bool)

(assert (=> d!81632 m!357539))

(declare-fun m!357541 () Bool)

(assert (=> b!279575 m!357541))

(declare-fun m!357543 () Bool)

(assert (=> b!279581 m!357543))

(declare-fun m!357545 () Bool)

(assert (=> b!279581 m!357545))

(declare-fun m!357547 () Bool)

(assert (=> b!279581 m!357547))

(assert (=> b!279581 m!357545))

(declare-fun m!357549 () Bool)

(assert (=> b!279581 m!357549))

(assert (=> b!279581 m!357543))

(declare-fun m!357551 () Bool)

(assert (=> b!279581 m!357551))

(declare-fun m!357553 () Bool)

(assert (=> b!279581 m!357553))

(assert (=> b!279581 m!357545))

(assert (=> b!279581 m!357551))

(declare-fun m!357555 () Bool)

(assert (=> bm!15523 m!357555))

(assert (=> b!279582 m!355729))

(assert (=> b!279582 m!357539))

(declare-fun m!357557 () Bool)

(assert (=> b!279584 m!357557))

(declare-fun m!357559 () Bool)

(assert (=> b!279584 m!357559))

(declare-fun m!357561 () Bool)

(assert (=> b!279584 m!357561))

(declare-fun m!357563 () Bool)

(assert (=> b!279584 m!357563))

(declare-fun m!357565 () Bool)

(assert (=> b!279584 m!357565))

(declare-fun m!357567 () Bool)

(assert (=> b!279584 m!357567))

(declare-fun m!357569 () Bool)

(assert (=> b!279584 m!357569))

(assert (=> b!279584 m!355729))

(assert (=> b!279584 m!357533))

(declare-fun m!357571 () Bool)

(assert (=> b!279584 m!357571))

(assert (=> b!279584 m!357565))

(assert (=> b!279584 m!357557))

(assert (=> b!279584 m!357525))

(declare-fun m!357573 () Bool)

(assert (=> b!279584 m!357573))

(declare-fun m!357575 () Bool)

(assert (=> b!279584 m!357575))

(declare-fun m!357577 () Bool)

(assert (=> b!279584 m!357577))

(assert (=> b!279584 m!357533))

(assert (=> b!279584 m!357525))

(declare-fun m!357579 () Bool)

(assert (=> b!279584 m!357579))

(assert (=> b!279584 m!355729))

(declare-fun m!357581 () Bool)

(assert (=> b!279584 m!357581))

(assert (=> b!279584 m!357573))

(assert (=> b!279584 m!357575))

(assert (=> b!279584 m!355729))

(assert (=> b!279584 m!357525))

(declare-fun m!357583 () Bool)

(assert (=> b!279579 m!357583))

(assert (=> b!278557 d!81632))

(declare-fun d!81668 () Bool)

(declare-fun lt!116825 () BalanceConc!2632)

(assert (=> d!81668 (= (list!1608 lt!116825) (originalCharacters!788 separatorToken!170))))

(assert (=> d!81668 (= lt!116825 (dynLambda!2039 (toChars!1347 (transformation!745 (rule!1332 separatorToken!170))) (value!25548 separatorToken!170)))))

(assert (=> d!81668 (= (charsOf!390 separatorToken!170) lt!116825)))

(declare-fun b_lambda!9029 () Bool)

(assert (=> (not b_lambda!9029) (not d!81668)))

(declare-fun t!39283 () Bool)

(declare-fun tb!15897 () Bool)

(assert (=> (and b!278571 (= (toChars!1347 (transformation!745 (rule!1332 separatorToken!170))) (toChars!1347 (transformation!745 (rule!1332 separatorToken!170)))) t!39283) tb!15897))

(declare-fun b!279588 () Bool)

(declare-fun e!173977 () Bool)

(declare-fun tp!104168 () Bool)

(assert (=> b!279588 (= e!173977 (and (inv!4817 (c!52574 (dynLambda!2039 (toChars!1347 (transformation!745 (rule!1332 separatorToken!170))) (value!25548 separatorToken!170)))) tp!104168))))

(declare-fun result!19620 () Bool)

(assert (=> tb!15897 (= result!19620 (and (inv!4818 (dynLambda!2039 (toChars!1347 (transformation!745 (rule!1332 separatorToken!170))) (value!25548 separatorToken!170))) e!173977))))

(assert (= tb!15897 b!279588))

(declare-fun m!357585 () Bool)

(assert (=> b!279588 m!357585))

(declare-fun m!357587 () Bool)

(assert (=> tb!15897 m!357587))

(assert (=> d!81668 t!39283))

(declare-fun b_and!22413 () Bool)

(assert (= b_and!22381 (and (=> t!39283 result!19620) b_and!22413)))

(declare-fun tb!15899 () Bool)

(declare-fun t!39285 () Bool)

(assert (=> (and b!278569 (= (toChars!1347 (transformation!745 (rule!1332 (h!9292 tokens!465)))) (toChars!1347 (transformation!745 (rule!1332 separatorToken!170)))) t!39285) tb!15899))

(declare-fun result!19622 () Bool)

(assert (= result!19622 result!19620))

(assert (=> d!81668 t!39285))

(declare-fun b_and!22415 () Bool)

(assert (= b_and!22383 (and (=> t!39285 result!19622) b_and!22415)))

(declare-fun tb!15901 () Bool)

(declare-fun t!39287 () Bool)

(assert (=> (and b!278555 (= (toChars!1347 (transformation!745 (h!9291 rules!1920))) (toChars!1347 (transformation!745 (rule!1332 separatorToken!170)))) t!39287) tb!15901))

(declare-fun result!19624 () Bool)

(assert (= result!19624 result!19620))

(assert (=> d!81668 t!39287))

(declare-fun b_and!22417 () Bool)

(assert (= b_and!22385 (and (=> t!39287 result!19624) b_and!22417)))

(declare-fun m!357589 () Bool)

(assert (=> d!81668 m!357589))

(declare-fun m!357591 () Bool)

(assert (=> d!81668 m!357591))

(assert (=> b!278557 d!81668))

(declare-fun d!81670 () Bool)

(declare-fun e!173979 () Bool)

(assert (=> d!81670 e!173979))

(declare-fun res!127872 () Bool)

(assert (=> d!81670 (=> (not res!127872) (not e!173979))))

(declare-fun lt!116826 () List!3903)

(assert (=> d!81670 (= res!127872 (= (content!565 lt!116826) ((_ map or) (content!565 lt!116274) (content!565 lt!116264))))))

(declare-fun e!173978 () List!3903)

(assert (=> d!81670 (= lt!116826 e!173978)))

(declare-fun c!52793 () Bool)

(assert (=> d!81670 (= c!52793 ((_ is Nil!3893) lt!116274))))

(assert (=> d!81670 (= (++!1030 lt!116274 lt!116264) lt!116826)))

(declare-fun b!279589 () Bool)

(assert (=> b!279589 (= e!173978 lt!116264)))

(declare-fun b!279592 () Bool)

(assert (=> b!279592 (= e!173979 (or (not (= lt!116264 Nil!3893)) (= lt!116826 lt!116274)))))

(declare-fun b!279591 () Bool)

(declare-fun res!127871 () Bool)

(assert (=> b!279591 (=> (not res!127871) (not e!173979))))

(assert (=> b!279591 (= res!127871 (= (size!3110 lt!116826) (+ (size!3110 lt!116274) (size!3110 lt!116264))))))

(declare-fun b!279590 () Bool)

(assert (=> b!279590 (= e!173978 (Cons!3893 (h!9290 lt!116274) (++!1030 (t!39217 lt!116274) lt!116264)))))

(assert (= (and d!81670 c!52793) b!279589))

(assert (= (and d!81670 (not c!52793)) b!279590))

(assert (= (and d!81670 res!127872) b!279591))

(assert (= (and b!279591 res!127871) b!279592))

(declare-fun m!357593 () Bool)

(assert (=> d!81670 m!357593))

(declare-fun m!357595 () Bool)

(assert (=> d!81670 m!357595))

(declare-fun m!357597 () Bool)

(assert (=> d!81670 m!357597))

(declare-fun m!357599 () Bool)

(assert (=> b!279591 m!357599))

(assert (=> b!279591 m!356123))

(declare-fun m!357601 () Bool)

(assert (=> b!279591 m!357601))

(declare-fun m!357603 () Bool)

(assert (=> b!279590 m!357603))

(assert (=> b!278557 d!81670))

(declare-fun d!81672 () Bool)

(assert (=> d!81672 (= (list!1608 (charsOf!390 (h!9292 tokens!465))) (list!1612 (c!52574 (charsOf!390 (h!9292 tokens!465)))))))

(declare-fun bs!31307 () Bool)

(assert (= bs!31307 d!81672))

(declare-fun m!357605 () Bool)

(assert (=> bs!31307 m!357605))

(assert (=> b!278557 d!81672))

(declare-fun d!81674 () Bool)

(assert (=> d!81674 (= (list!1608 (charsOf!390 separatorToken!170)) (list!1612 (c!52574 (charsOf!390 separatorToken!170))))))

(declare-fun bs!31308 () Bool)

(assert (= bs!31308 d!81674))

(declare-fun m!357607 () Bool)

(assert (=> bs!31308 m!357607))

(assert (=> b!278557 d!81674))

(declare-fun d!81676 () Bool)

(assert (=> d!81676 (= (list!1608 lt!116303) (list!1612 (c!52574 lt!116303)))))

(declare-fun bs!31309 () Bool)

(assert (= bs!31309 d!81676))

(declare-fun m!357609 () Bool)

(assert (=> bs!31309 m!357609))

(assert (=> b!278557 d!81676))

(declare-fun d!81678 () Bool)

(declare-fun e!173981 () Bool)

(assert (=> d!81678 e!173981))

(declare-fun res!127874 () Bool)

(assert (=> d!81678 (=> (not res!127874) (not e!173981))))

(declare-fun lt!116827 () List!3903)

(assert (=> d!81678 (= res!127874 (= (content!565 lt!116827) ((_ map or) (content!565 lt!116274) (content!565 lt!116261))))))

(declare-fun e!173980 () List!3903)

(assert (=> d!81678 (= lt!116827 e!173980)))

(declare-fun c!52794 () Bool)

(assert (=> d!81678 (= c!52794 ((_ is Nil!3893) lt!116274))))

(assert (=> d!81678 (= (++!1030 lt!116274 lt!116261) lt!116827)))

(declare-fun b!279593 () Bool)

(assert (=> b!279593 (= e!173980 lt!116261)))

(declare-fun b!279596 () Bool)

(assert (=> b!279596 (= e!173981 (or (not (= lt!116261 Nil!3893)) (= lt!116827 lt!116274)))))

(declare-fun b!279595 () Bool)

(declare-fun res!127873 () Bool)

(assert (=> b!279595 (=> (not res!127873) (not e!173981))))

(assert (=> b!279595 (= res!127873 (= (size!3110 lt!116827) (+ (size!3110 lt!116274) (size!3110 lt!116261))))))

(declare-fun b!279594 () Bool)

(assert (=> b!279594 (= e!173980 (Cons!3893 (h!9290 lt!116274) (++!1030 (t!39217 lt!116274) lt!116261)))))

(assert (= (and d!81678 c!52794) b!279593))

(assert (= (and d!81678 (not c!52794)) b!279594))

(assert (= (and d!81678 res!127874) b!279595))

(assert (= (and b!279595 res!127873) b!279596))

(declare-fun m!357611 () Bool)

(assert (=> d!81678 m!357611))

(assert (=> d!81678 m!357595))

(declare-fun m!357613 () Bool)

(assert (=> d!81678 m!357613))

(declare-fun m!357615 () Bool)

(assert (=> b!279595 m!357615))

(assert (=> b!279595 m!356123))

(assert (=> b!279595 m!356279))

(declare-fun m!357617 () Bool)

(assert (=> b!279594 m!357617))

(assert (=> b!278557 d!81678))

(declare-fun d!81680 () Bool)

(declare-fun e!173983 () Bool)

(assert (=> d!81680 e!173983))

(declare-fun res!127876 () Bool)

(assert (=> d!81680 (=> (not res!127876) (not e!173983))))

(declare-fun lt!116828 () List!3903)

(assert (=> d!81680 (= res!127876 (= (content!565 lt!116828) ((_ map or) (content!565 lt!116264) (content!565 lt!116272))))))

(declare-fun e!173982 () List!3903)

(assert (=> d!81680 (= lt!116828 e!173982)))

(declare-fun c!52795 () Bool)

(assert (=> d!81680 (= c!52795 ((_ is Nil!3893) lt!116264))))

(assert (=> d!81680 (= (++!1030 lt!116264 lt!116272) lt!116828)))

(declare-fun b!279597 () Bool)

(assert (=> b!279597 (= e!173982 lt!116272)))

(declare-fun b!279600 () Bool)

(assert (=> b!279600 (= e!173983 (or (not (= lt!116272 Nil!3893)) (= lt!116828 lt!116264)))))

(declare-fun b!279599 () Bool)

(declare-fun res!127875 () Bool)

(assert (=> b!279599 (=> (not res!127875) (not e!173983))))

(assert (=> b!279599 (= res!127875 (= (size!3110 lt!116828) (+ (size!3110 lt!116264) (size!3110 lt!116272))))))

(declare-fun b!279598 () Bool)

(assert (=> b!279598 (= e!173982 (Cons!3893 (h!9290 lt!116264) (++!1030 (t!39217 lt!116264) lt!116272)))))

(assert (= (and d!81680 c!52795) b!279597))

(assert (= (and d!81680 (not c!52795)) b!279598))

(assert (= (and d!81680 res!127876) b!279599))

(assert (= (and b!279599 res!127875) b!279600))

(declare-fun m!357619 () Bool)

(assert (=> d!81680 m!357619))

(assert (=> d!81680 m!357597))

(assert (=> d!81680 m!357067))

(declare-fun m!357621 () Bool)

(assert (=> b!279599 m!357621))

(assert (=> b!279599 m!357601))

(assert (=> b!279599 m!356153))

(declare-fun m!357623 () Bool)

(assert (=> b!279598 m!357623))

(assert (=> b!278557 d!81680))

(declare-fun d!81682 () Bool)

(assert (=> d!81682 (= (++!1030 (++!1030 lt!116274 lt!116264) lt!116272) (++!1030 lt!116274 (++!1030 lt!116264 lt!116272)))))

(declare-fun lt!116831 () Unit!5128)

(declare-fun choose!2529 (List!3903 List!3903 List!3903) Unit!5128)

(assert (=> d!81682 (= lt!116831 (choose!2529 lt!116274 lt!116264 lt!116272))))

(assert (=> d!81682 (= (lemmaConcatAssociativity!446 lt!116274 lt!116264 lt!116272) lt!116831)))

(declare-fun bs!31310 () Bool)

(assert (= bs!31310 d!81682))

(assert (=> bs!31310 m!355745))

(assert (=> bs!31310 m!355751))

(assert (=> bs!31310 m!355753))

(assert (=> bs!31310 m!355751))

(declare-fun m!357625 () Bool)

(assert (=> bs!31310 m!357625))

(assert (=> bs!31310 m!355745))

(declare-fun m!357627 () Bool)

(assert (=> bs!31310 m!357627))

(assert (=> b!278557 d!81682))

(declare-fun d!81684 () Bool)

(declare-fun lt!116832 () BalanceConc!2632)

(assert (=> d!81684 (= (list!1608 lt!116832) (originalCharacters!788 (h!9292 tokens!465)))))

(assert (=> d!81684 (= lt!116832 (dynLambda!2039 (toChars!1347 (transformation!745 (rule!1332 (h!9292 tokens!465)))) (value!25548 (h!9292 tokens!465))))))

(assert (=> d!81684 (= (charsOf!390 (h!9292 tokens!465)) lt!116832)))

(declare-fun b_lambda!9031 () Bool)

(assert (=> (not b_lambda!9031) (not d!81684)))

(declare-fun t!39289 () Bool)

(declare-fun tb!15903 () Bool)

(assert (=> (and b!278571 (= (toChars!1347 (transformation!745 (rule!1332 separatorToken!170))) (toChars!1347 (transformation!745 (rule!1332 (h!9292 tokens!465))))) t!39289) tb!15903))

(declare-fun b!279601 () Bool)

(declare-fun e!173984 () Bool)

(declare-fun tp!104169 () Bool)

(assert (=> b!279601 (= e!173984 (and (inv!4817 (c!52574 (dynLambda!2039 (toChars!1347 (transformation!745 (rule!1332 (h!9292 tokens!465)))) (value!25548 (h!9292 tokens!465))))) tp!104169))))

(declare-fun result!19626 () Bool)

(assert (=> tb!15903 (= result!19626 (and (inv!4818 (dynLambda!2039 (toChars!1347 (transformation!745 (rule!1332 (h!9292 tokens!465)))) (value!25548 (h!9292 tokens!465)))) e!173984))))

(assert (= tb!15903 b!279601))

(declare-fun m!357629 () Bool)

(assert (=> b!279601 m!357629))

(declare-fun m!357631 () Bool)

(assert (=> tb!15903 m!357631))

(assert (=> d!81684 t!39289))

(declare-fun b_and!22419 () Bool)

(assert (= b_and!22413 (and (=> t!39289 result!19626) b_and!22419)))

(declare-fun t!39291 () Bool)

(declare-fun tb!15905 () Bool)

(assert (=> (and b!278569 (= (toChars!1347 (transformation!745 (rule!1332 (h!9292 tokens!465)))) (toChars!1347 (transformation!745 (rule!1332 (h!9292 tokens!465))))) t!39291) tb!15905))

(declare-fun result!19628 () Bool)

(assert (= result!19628 result!19626))

(assert (=> d!81684 t!39291))

(declare-fun b_and!22421 () Bool)

(assert (= b_and!22415 (and (=> t!39291 result!19628) b_and!22421)))

(declare-fun t!39293 () Bool)

(declare-fun tb!15907 () Bool)

(assert (=> (and b!278555 (= (toChars!1347 (transformation!745 (h!9291 rules!1920))) (toChars!1347 (transformation!745 (rule!1332 (h!9292 tokens!465))))) t!39293) tb!15907))

(declare-fun result!19630 () Bool)

(assert (= result!19630 result!19626))

(assert (=> d!81684 t!39293))

(declare-fun b_and!22423 () Bool)

(assert (= b_and!22417 (and (=> t!39293 result!19630) b_and!22423)))

(declare-fun m!357633 () Bool)

(assert (=> d!81684 m!357633))

(declare-fun m!357635 () Bool)

(assert (=> d!81684 m!357635))

(assert (=> b!278557 d!81684))

(declare-fun b!279612 () Bool)

(declare-fun e!173991 () Bool)

(declare-fun inv!16 (TokenValue!767) Bool)

(assert (=> b!279612 (= e!173991 (inv!16 (value!25548 separatorToken!170)))))

(declare-fun b!279613 () Bool)

(declare-fun e!173992 () Bool)

(declare-fun inv!15 (TokenValue!767) Bool)

(assert (=> b!279613 (= e!173992 (inv!15 (value!25548 separatorToken!170)))))

(declare-fun b!279614 () Bool)

(declare-fun e!173993 () Bool)

(assert (=> b!279614 (= e!173991 e!173993)))

(declare-fun c!52801 () Bool)

(assert (=> b!279614 (= c!52801 ((_ is IntegerValue!2302) (value!25548 separatorToken!170)))))

(declare-fun d!81686 () Bool)

(declare-fun c!52800 () Bool)

(assert (=> d!81686 (= c!52800 ((_ is IntegerValue!2301) (value!25548 separatorToken!170)))))

(assert (=> d!81686 (= (inv!21 (value!25548 separatorToken!170)) e!173991)))

(declare-fun b!279615 () Bool)

(declare-fun inv!17 (TokenValue!767) Bool)

(assert (=> b!279615 (= e!173993 (inv!17 (value!25548 separatorToken!170)))))

(declare-fun b!279616 () Bool)

(declare-fun res!127879 () Bool)

(assert (=> b!279616 (=> res!127879 e!173992)))

(assert (=> b!279616 (= res!127879 (not ((_ is IntegerValue!2303) (value!25548 separatorToken!170))))))

(assert (=> b!279616 (= e!173993 e!173992)))

(assert (= (and d!81686 c!52800) b!279612))

(assert (= (and d!81686 (not c!52800)) b!279614))

(assert (= (and b!279614 c!52801) b!279615))

(assert (= (and b!279614 (not c!52801)) b!279616))

(assert (= (and b!279616 (not res!127879)) b!279613))

(declare-fun m!357637 () Bool)

(assert (=> b!279612 m!357637))

(declare-fun m!357639 () Bool)

(assert (=> b!279613 m!357639))

(declare-fun m!357641 () Bool)

(assert (=> b!279615 m!357641))

(assert (=> b!278598 d!81686))

(declare-fun d!81688 () Bool)

(declare-fun lt!116833 () Token!1234)

(assert (=> d!81688 (= lt!116833 (apply!813 (list!1609 (_1!2420 lt!116309)) 0))))

(assert (=> d!81688 (= lt!116833 (apply!814 (c!52576 (_1!2420 lt!116309)) 0))))

(declare-fun e!173994 () Bool)

(assert (=> d!81688 e!173994))

(declare-fun res!127880 () Bool)

(assert (=> d!81688 (=> (not res!127880) (not e!173994))))

(assert (=> d!81688 (= res!127880 (<= 0 0))))

(assert (=> d!81688 (= (apply!808 (_1!2420 lt!116309) 0) lt!116833)))

(declare-fun b!279617 () Bool)

(assert (=> b!279617 (= e!173994 (< 0 (size!3107 (_1!2420 lt!116309))))))

(assert (= (and d!81688 res!127880) b!279617))

(assert (=> d!81688 m!356415))

(assert (=> d!81688 m!356415))

(declare-fun m!357643 () Bool)

(assert (=> d!81688 m!357643))

(declare-fun m!357645 () Bool)

(assert (=> d!81688 m!357645))

(assert (=> b!279617 m!355837))

(assert (=> b!278577 d!81688))

(declare-fun d!81690 () Bool)

(assert (=> d!81690 (= (isDefined!694 lt!116260) (not (isEmpty!2540 lt!116260)))))

(declare-fun bs!31311 () Bool)

(assert (= bs!31311 d!81690))

(declare-fun m!357647 () Bool)

(assert (=> bs!31311 m!357647))

(assert (=> b!278602 d!81690))

(assert (=> b!278602 d!81502))

(declare-fun d!81692 () Bool)

(declare-fun lt!116834 () Bool)

(assert (=> d!81692 (= lt!116834 (isEmpty!2536 (list!1608 (_2!2420 lt!116309))))))

(assert (=> d!81692 (= lt!116834 (isEmpty!2545 (c!52574 (_2!2420 lt!116309))))))

(assert (=> d!81692 (= (isEmpty!2534 (_2!2420 lt!116309)) lt!116834)))

(declare-fun bs!31312 () Bool)

(assert (= bs!31312 d!81692))

(declare-fun m!357649 () Bool)

(assert (=> bs!31312 m!357649))

(assert (=> bs!31312 m!357649))

(declare-fun m!357651 () Bool)

(assert (=> bs!31312 m!357651))

(declare-fun m!357653 () Bool)

(assert (=> bs!31312 m!357653))

(assert (=> b!278559 d!81692))

(declare-fun b!279618 () Bool)

(declare-fun res!127884 () Bool)

(declare-fun e!173996 () Bool)

(assert (=> b!279618 (=> res!127884 e!173996)))

(assert (=> b!279618 (= res!127884 (not (isEmpty!2536 (tail!499 lt!116268))))))

(declare-fun bm!15528 () Bool)

(declare-fun call!15533 () Bool)

(assert (=> bm!15528 (= call!15533 (isEmpty!2536 lt!116268))))

(declare-fun b!279620 () Bool)

(declare-fun e!173999 () Bool)

(assert (=> b!279620 (= e!173999 (nullable!176 (regex!745 lt!116289)))))

(declare-fun b!279621 () Bool)

(declare-fun e!174001 () Bool)

(declare-fun lt!116835 () Bool)

(assert (=> b!279621 (= e!174001 (not lt!116835))))

(declare-fun b!279622 () Bool)

(declare-fun e!173995 () Bool)

(assert (=> b!279622 (= e!173995 (= (head!918 lt!116268) (c!52575 (regex!745 lt!116289))))))

(declare-fun b!279623 () Bool)

(declare-fun e!174000 () Bool)

(assert (=> b!279623 (= e!174000 (= lt!116835 call!15533))))

(declare-fun b!279624 () Bool)

(declare-fun res!127882 () Bool)

(declare-fun e!173997 () Bool)

(assert (=> b!279624 (=> res!127882 e!173997)))

(assert (=> b!279624 (= res!127882 e!173995)))

(declare-fun res!127881 () Bool)

(assert (=> b!279624 (=> (not res!127881) (not e!173995))))

(assert (=> b!279624 (= res!127881 lt!116835)))

(declare-fun b!279625 () Bool)

(declare-fun res!127887 () Bool)

(assert (=> b!279625 (=> (not res!127887) (not e!173995))))

(assert (=> b!279625 (= res!127887 (not call!15533))))

(declare-fun b!279626 () Bool)

(declare-fun e!173998 () Bool)

(assert (=> b!279626 (= e!173998 e!173996)))

(declare-fun res!127886 () Bool)

(assert (=> b!279626 (=> res!127886 e!173996)))

(assert (=> b!279626 (= res!127886 call!15533)))

(declare-fun b!279627 () Bool)

(declare-fun res!127883 () Bool)

(assert (=> b!279627 (=> (not res!127883) (not e!173995))))

(assert (=> b!279627 (= res!127883 (isEmpty!2536 (tail!499 lt!116268)))))

(declare-fun d!81694 () Bool)

(assert (=> d!81694 e!174000))

(declare-fun c!52802 () Bool)

(assert (=> d!81694 (= c!52802 ((_ is EmptyExpr!969) (regex!745 lt!116289)))))

(assert (=> d!81694 (= lt!116835 e!173999)))

(declare-fun c!52803 () Bool)

(assert (=> d!81694 (= c!52803 (isEmpty!2536 lt!116268))))

(assert (=> d!81694 (validRegex!251 (regex!745 lt!116289))))

(assert (=> d!81694 (= (matchR!291 (regex!745 lt!116289) lt!116268) lt!116835)))

(declare-fun b!279619 () Bool)

(declare-fun res!127885 () Bool)

(assert (=> b!279619 (=> res!127885 e!173997)))

(assert (=> b!279619 (= res!127885 (not ((_ is ElementMatch!969) (regex!745 lt!116289))))))

(assert (=> b!279619 (= e!174001 e!173997)))

(declare-fun b!279628 () Bool)

(assert (=> b!279628 (= e!173999 (matchR!291 (derivativeStep!142 (regex!745 lt!116289) (head!918 lt!116268)) (tail!499 lt!116268)))))

(declare-fun b!279629 () Bool)

(assert (=> b!279629 (= e!173996 (not (= (head!918 lt!116268) (c!52575 (regex!745 lt!116289)))))))

(declare-fun b!279630 () Bool)

(assert (=> b!279630 (= e!174000 e!174001)))

(declare-fun c!52804 () Bool)

(assert (=> b!279630 (= c!52804 ((_ is EmptyLang!969) (regex!745 lt!116289)))))

(declare-fun b!279631 () Bool)

(assert (=> b!279631 (= e!173997 e!173998)))

(declare-fun res!127888 () Bool)

(assert (=> b!279631 (=> (not res!127888) (not e!173998))))

(assert (=> b!279631 (= res!127888 (not lt!116835))))

(assert (= (and d!81694 c!52803) b!279620))

(assert (= (and d!81694 (not c!52803)) b!279628))

(assert (= (and d!81694 c!52802) b!279623))

(assert (= (and d!81694 (not c!52802)) b!279630))

(assert (= (and b!279630 c!52804) b!279621))

(assert (= (and b!279630 (not c!52804)) b!279619))

(assert (= (and b!279619 (not res!127885)) b!279624))

(assert (= (and b!279624 res!127881) b!279625))

(assert (= (and b!279625 res!127887) b!279627))

(assert (= (and b!279627 res!127883) b!279622))

(assert (= (and b!279624 (not res!127882)) b!279631))

(assert (= (and b!279631 res!127888) b!279626))

(assert (= (and b!279626 (not res!127886)) b!279618))

(assert (= (and b!279618 (not res!127884)) b!279629))

(assert (= (or b!279623 b!279625 b!279626) bm!15528))

(declare-fun m!357655 () Bool)

(assert (=> b!279620 m!357655))

(declare-fun m!357657 () Bool)

(assert (=> d!81694 m!357657))

(declare-fun m!357659 () Bool)

(assert (=> d!81694 m!357659))

(assert (=> b!279628 m!355835))

(assert (=> b!279628 m!355835))

(declare-fun m!357661 () Bool)

(assert (=> b!279628 m!357661))

(declare-fun m!357663 () Bool)

(assert (=> b!279628 m!357663))

(assert (=> b!279628 m!357661))

(assert (=> b!279628 m!357663))

(declare-fun m!357665 () Bool)

(assert (=> b!279628 m!357665))

(assert (=> b!279627 m!357663))

(assert (=> b!279627 m!357663))

(declare-fun m!357667 () Bool)

(assert (=> b!279627 m!357667))

(assert (=> bm!15528 m!357657))

(assert (=> b!279622 m!355835))

(assert (=> b!279629 m!355835))

(assert (=> b!279618 m!357663))

(assert (=> b!279618 m!357663))

(assert (=> b!279618 m!357667))

(assert (=> b!278558 d!81694))

(declare-fun d!81696 () Bool)

(assert (=> d!81696 (= (get!1307 lt!116276) (v!14749 lt!116276))))

(assert (=> b!278558 d!81696))

(declare-fun d!81698 () Bool)

(assert (=> d!81698 (= (list!1608 (printWithSeparatorTokenWhenNeededRec!306 thiss!17480 rules!1920 lt!116306 separatorToken!170 0)) (list!1612 (c!52574 (printWithSeparatorTokenWhenNeededRec!306 thiss!17480 rules!1920 lt!116306 separatorToken!170 0))))))

(declare-fun bs!31313 () Bool)

(assert (= bs!31313 d!81698))

(declare-fun m!357669 () Bool)

(assert (=> bs!31313 m!357669))

(assert (=> b!278579 d!81698))

(declare-fun bs!31314 () Bool)

(declare-fun d!81700 () Bool)

(assert (= bs!31314 (and d!81700 b!278584)))

(declare-fun lambda!9558 () Int)

(assert (=> bs!31314 (not (= lambda!9558 lambda!9520))))

(declare-fun bs!31315 () Bool)

(assert (= bs!31315 (and d!81700 b!279584)))

(assert (=> bs!31315 (not (= lambda!9558 lambda!9557))))

(declare-fun bs!31316 () Bool)

(assert (= bs!31316 (and d!81700 d!81632)))

(assert (=> bs!31316 (= lambda!9558 lambda!9556)))

(declare-fun bs!31317 () Bool)

(assert (= bs!31317 (and d!81700 d!81398)))

(assert (=> bs!31317 (= lambda!9558 lambda!9537)))

(declare-fun bs!31318 () Bool)

(assert (= bs!31318 (and d!81700 d!81316)))

(assert (=> bs!31318 (not (= lambda!9558 lambda!9525))))

(declare-fun bs!31319 () Bool)

(assert (= bs!31319 (and d!81700 b!279449)))

(assert (=> bs!31319 (not (= lambda!9558 lambda!9546))))

(declare-fun bs!31320 () Bool)

(assert (= bs!31320 (and d!81700 b!278563)))

(assert (=> bs!31320 (= lambda!9558 lambda!9519)))

(declare-fun bs!31321 () Bool)

(declare-fun b!279642 () Bool)

(assert (= bs!31321 (and b!279642 b!278584)))

(declare-fun lambda!9559 () Int)

(assert (=> bs!31321 (= lambda!9559 lambda!9520)))

(declare-fun bs!31322 () Bool)

(assert (= bs!31322 (and b!279642 b!279584)))

(assert (=> bs!31322 (= lambda!9559 lambda!9557)))

(declare-fun bs!31323 () Bool)

(assert (= bs!31323 (and b!279642 d!81632)))

(assert (=> bs!31323 (not (= lambda!9559 lambda!9556))))

(declare-fun bs!31324 () Bool)

(assert (= bs!31324 (and b!279642 d!81398)))

(assert (=> bs!31324 (not (= lambda!9559 lambda!9537))))

(declare-fun bs!31325 () Bool)

(assert (= bs!31325 (and b!279642 d!81316)))

(assert (=> bs!31325 (= lambda!9559 lambda!9525)))

(declare-fun bs!31326 () Bool)

(assert (= bs!31326 (and b!279642 d!81700)))

(assert (=> bs!31326 (not (= lambda!9559 lambda!9558))))

(declare-fun bs!31327 () Bool)

(assert (= bs!31327 (and b!279642 b!279449)))

(assert (=> bs!31327 (= lambda!9559 lambda!9546)))

(declare-fun bs!31328 () Bool)

(assert (= bs!31328 (and b!279642 b!278563)))

(assert (=> bs!31328 (not (= lambda!9559 lambda!9519))))

(declare-fun b!279645 () Bool)

(declare-fun e!174011 () Bool)

(assert (=> b!279645 (= e!174011 true)))

(declare-fun b!279644 () Bool)

(declare-fun e!174010 () Bool)

(assert (=> b!279644 (= e!174010 e!174011)))

(declare-fun b!279643 () Bool)

(declare-fun e!174009 () Bool)

(assert (=> b!279643 (= e!174009 e!174010)))

(assert (=> b!279642 e!174009))

(assert (= b!279644 b!279645))

(assert (= b!279643 b!279644))

(assert (= (and b!279642 ((_ is Cons!3894) rules!1920)) b!279643))

(assert (=> b!279645 (< (dynLambda!2033 order!3045 (toValue!1488 (transformation!745 (h!9291 rules!1920)))) (dynLambda!2034 order!3047 lambda!9559))))

(assert (=> b!279645 (< (dynLambda!2035 order!3049 (toChars!1347 (transformation!745 (h!9291 rules!1920)))) (dynLambda!2034 order!3047 lambda!9559))))

(assert (=> b!279642 true))

(declare-fun bm!15529 () Bool)

(declare-fun c!52806 () Bool)

(declare-fun c!52808 () Bool)

(assert (=> bm!15529 (= c!52806 c!52808)))

(declare-fun e!174003 () BalanceConc!2632)

(declare-fun lt!116842 () BalanceConc!2632)

(declare-fun call!15537 () BalanceConc!2632)

(declare-fun call!15534 () BalanceConc!2632)

(assert (=> bm!15529 (= call!15537 (++!1032 e!174003 (ite c!52808 lt!116842 call!15534)))))

(declare-fun bm!15530 () Bool)

(declare-fun call!15536 () Token!1234)

(assert (=> bm!15530 (= call!15536 (apply!808 lt!116306 0))))

(declare-fun b!279632 () Bool)

(declare-fun c!52807 () Bool)

(declare-fun e!174008 () Bool)

(assert (=> b!279632 (= c!52807 e!174008)))

(declare-fun res!127891 () Bool)

(assert (=> b!279632 (=> (not res!127891) (not e!174008))))

(declare-fun lt!116841 () Option!851)

(assert (=> b!279632 (= res!127891 ((_ is Some!850) lt!116841))))

(declare-fun e!174004 () BalanceConc!2632)

(declare-fun e!174006 () BalanceConc!2632)

(assert (=> b!279632 (= e!174004 e!174006)))

(declare-fun b!279633 () Bool)

(assert (=> b!279633 (= e!174006 (++!1032 call!15537 lt!116842))))

(declare-fun b!279634 () Bool)

(declare-fun e!174002 () BalanceConc!2632)

(assert (=> b!279634 (= e!174002 (BalanceConc!2633 Empty!1312))))

(declare-fun b!279635 () Bool)

(declare-fun e!174007 () Bool)

(assert (=> b!279635 (= e!174007 (= (_1!2422 (v!14751 lt!116841)) (apply!808 lt!116306 0)))))

(declare-fun b!279636 () Bool)

(assert (=> b!279636 (= e!174004 call!15537)))

(declare-fun bm!15531 () Bool)

(declare-fun call!15535 () BalanceConc!2632)

(assert (=> bm!15531 (= call!15534 call!15535)))

(declare-fun bm!15532 () Bool)

(declare-fun call!15538 () Token!1234)

(assert (=> bm!15532 (= call!15538 call!15536)))

(declare-fun b!279637 () Bool)

(assert (=> b!279637 (= e!174003 (charsOf!390 call!15538))))

(declare-fun b!279638 () Bool)

(assert (=> b!279638 (= e!174008 (not (= (_1!2422 (v!14751 lt!116841)) call!15536)))))

(declare-fun lt!116848 () BalanceConc!2632)

(assert (=> d!81700 (= (list!1608 lt!116848) (printWithSeparatorTokenWhenNeededList!314 thiss!17480 rules!1920 (dropList!174 lt!116306 0) separatorToken!170))))

(assert (=> d!81700 (= lt!116848 e!174002)))

(declare-fun c!52805 () Bool)

(assert (=> d!81700 (= c!52805 (>= 0 (size!3107 lt!116306)))))

(declare-fun lt!116843 () Unit!5128)

(assert (=> d!81700 (= lt!116843 (lemmaContentSubsetPreservesForall!118 (list!1609 lt!116306) (dropList!174 lt!116306 0) lambda!9558))))

(declare-fun e!174005 () Bool)

(assert (=> d!81700 e!174005))

(declare-fun res!127889 () Bool)

(assert (=> d!81700 (=> (not res!127889) (not e!174005))))

(assert (=> d!81700 (= res!127889 (>= 0 0))))

(assert (=> d!81700 (= (printWithSeparatorTokenWhenNeededRec!306 thiss!17480 rules!1920 lt!116306 separatorToken!170 0) lt!116848)))

(declare-fun b!279639 () Bool)

(assert (=> b!279639 (= e!174006 (BalanceConc!2633 Empty!1312))))

(assert (=> b!279639 (= (print!356 thiss!17480 (singletonSeq!291 call!15538)) (printTailRec!319 thiss!17480 (singletonSeq!291 call!15538) 0 (BalanceConc!2633 Empty!1312)))))

(declare-fun lt!116847 () Unit!5128)

(declare-fun Unit!5148 () Unit!5128)

(assert (=> b!279639 (= lt!116847 Unit!5148)))

(declare-fun lt!116840 () Unit!5128)

(assert (=> b!279639 (= lt!116840 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!122 thiss!17480 rules!1920 (list!1608 call!15534) (list!1608 lt!116842)))))

(assert (=> b!279639 false))

(declare-fun lt!116839 () Unit!5128)

(declare-fun Unit!5149 () Unit!5128)

(assert (=> b!279639 (= lt!116839 Unit!5149)))

(declare-fun b!279640 () Bool)

(assert (=> b!279640 (= e!174005 (<= 0 (size!3107 lt!116306)))))

(declare-fun bm!15533 () Bool)

(assert (=> bm!15533 (= call!15535 (charsOf!390 (ite c!52808 call!15536 (ite c!52807 separatorToken!170 call!15538))))))

(declare-fun b!279641 () Bool)

(assert (=> b!279641 (= e!174003 call!15535)))

(assert (=> b!279642 (= e!174002 e!174004)))

(declare-fun lt!116846 () List!3905)

(assert (=> b!279642 (= lt!116846 (list!1609 lt!116306))))

(declare-fun lt!116844 () Unit!5128)

(assert (=> b!279642 (= lt!116844 (lemmaDropApply!214 lt!116846 0))))

(assert (=> b!279642 (= (head!917 (drop!227 lt!116846 0)) (apply!813 lt!116846 0))))

(declare-fun lt!116845 () Unit!5128)

(assert (=> b!279642 (= lt!116845 lt!116844)))

(declare-fun lt!116837 () List!3905)

(assert (=> b!279642 (= lt!116837 (list!1609 lt!116306))))

(declare-fun lt!116836 () Unit!5128)

(assert (=> b!279642 (= lt!116836 (lemmaDropTail!206 lt!116837 0))))

(assert (=> b!279642 (= (tail!500 (drop!227 lt!116837 0)) (drop!227 lt!116837 (+ 0 1)))))

(declare-fun lt!116849 () Unit!5128)

(assert (=> b!279642 (= lt!116849 lt!116836)))

(declare-fun lt!116838 () Unit!5128)

(assert (=> b!279642 (= lt!116838 (forallContained!300 (list!1609 lt!116306) lambda!9559 (apply!808 lt!116306 0)))))

(assert (=> b!279642 (= lt!116842 (printWithSeparatorTokenWhenNeededRec!306 thiss!17480 rules!1920 lt!116306 separatorToken!170 (+ 0 1)))))

(assert (=> b!279642 (= lt!116841 (maxPrefixZipperSequence!312 thiss!17480 rules!1920 (++!1032 (charsOf!390 (apply!808 lt!116306 0)) lt!116842)))))

(declare-fun res!127890 () Bool)

(assert (=> b!279642 (= res!127890 ((_ is Some!850) lt!116841))))

(assert (=> b!279642 (=> (not res!127890) (not e!174007))))

(assert (=> b!279642 (= c!52808 e!174007)))

(assert (= (and d!81700 res!127889) b!279640))

(assert (= (and d!81700 c!52805) b!279634))

(assert (= (and d!81700 (not c!52805)) b!279642))

(assert (= (and b!279642 res!127890) b!279635))

(assert (= (and b!279642 c!52808) b!279636))

(assert (= (and b!279642 (not c!52808)) b!279632))

(assert (= (and b!279632 res!127891) b!279638))

(assert (= (and b!279632 c!52807) b!279633))

(assert (= (and b!279632 (not c!52807)) b!279639))

(assert (= (or b!279633 b!279639) bm!15532))

(assert (= (or b!279633 b!279639) bm!15531))

(assert (= (or b!279636 bm!15532 b!279638) bm!15530))

(assert (= (or b!279636 bm!15531) bm!15533))

(assert (= (or b!279636 b!279633) bm!15529))

(assert (= (and bm!15529 c!52806) b!279641))

(assert (= (and bm!15529 (not c!52806)) b!279637))

(declare-fun m!357671 () Bool)

(assert (=> b!279635 m!357671))

(declare-fun m!357673 () Bool)

(assert (=> bm!15533 m!357673))

(assert (=> bm!15530 m!357671))

(declare-fun m!357675 () Bool)

(assert (=> d!81700 m!357675))

(declare-fun m!357677 () Bool)

(assert (=> d!81700 m!357677))

(assert (=> d!81700 m!356087))

(assert (=> d!81700 m!357675))

(declare-fun m!357679 () Bool)

(assert (=> d!81700 m!357679))

(assert (=> d!81700 m!356087))

(declare-fun m!357681 () Bool)

(assert (=> d!81700 m!357681))

(assert (=> d!81700 m!357675))

(declare-fun m!357683 () Bool)

(assert (=> d!81700 m!357683))

(declare-fun m!357685 () Bool)

(assert (=> b!279633 m!357685))

(declare-fun m!357687 () Bool)

(assert (=> b!279639 m!357687))

(declare-fun m!357689 () Bool)

(assert (=> b!279639 m!357689))

(declare-fun m!357691 () Bool)

(assert (=> b!279639 m!357691))

(assert (=> b!279639 m!357689))

(declare-fun m!357693 () Bool)

(assert (=> b!279639 m!357693))

(assert (=> b!279639 m!357687))

(declare-fun m!357695 () Bool)

(assert (=> b!279639 m!357695))

(declare-fun m!357697 () Bool)

(assert (=> b!279639 m!357697))

(assert (=> b!279639 m!357689))

(assert (=> b!279639 m!357695))

(declare-fun m!357699 () Bool)

(assert (=> bm!15529 m!357699))

(assert (=> b!279640 m!357683))

(declare-fun m!357701 () Bool)

(assert (=> b!279642 m!357701))

(declare-fun m!357703 () Bool)

(assert (=> b!279642 m!357703))

(declare-fun m!357705 () Bool)

(assert (=> b!279642 m!357705))

(declare-fun m!357707 () Bool)

(assert (=> b!279642 m!357707))

(declare-fun m!357709 () Bool)

(assert (=> b!279642 m!357709))

(declare-fun m!357711 () Bool)

(assert (=> b!279642 m!357711))

(declare-fun m!357713 () Bool)

(assert (=> b!279642 m!357713))

(assert (=> b!279642 m!356087))

(declare-fun m!357715 () Bool)

(assert (=> b!279642 m!357715))

(assert (=> b!279642 m!357709))

(assert (=> b!279642 m!357701))

(assert (=> b!279642 m!357671))

(declare-fun m!357717 () Bool)

(assert (=> b!279642 m!357717))

(declare-fun m!357719 () Bool)

(assert (=> b!279642 m!357719))

(declare-fun m!357721 () Bool)

(assert (=> b!279642 m!357721))

(assert (=> b!279642 m!356087))

(assert (=> b!279642 m!357671))

(declare-fun m!357723 () Bool)

(assert (=> b!279642 m!357723))

(declare-fun m!357725 () Bool)

(assert (=> b!279642 m!357725))

(assert (=> b!279642 m!357717))

(assert (=> b!279642 m!357719))

(assert (=> b!279642 m!357671))

(declare-fun m!357727 () Bool)

(assert (=> b!279637 m!357727))

(assert (=> b!278579 d!81700))

(declare-fun bs!31329 () Bool)

(declare-fun b!279649 () Bool)

(assert (= bs!31329 (and b!279649 b!278584)))

(declare-fun lambda!9560 () Int)

(assert (=> bs!31329 (= lambda!9560 lambda!9520)))

(declare-fun bs!31330 () Bool)

(assert (= bs!31330 (and b!279649 b!279584)))

(assert (=> bs!31330 (= lambda!9560 lambda!9557)))

(declare-fun bs!31331 () Bool)

(assert (= bs!31331 (and b!279649 d!81632)))

(assert (=> bs!31331 (not (= lambda!9560 lambda!9556))))

(declare-fun bs!31332 () Bool)

(assert (= bs!31332 (and b!279649 d!81398)))

(assert (=> bs!31332 (not (= lambda!9560 lambda!9537))))

(declare-fun bs!31333 () Bool)

(assert (= bs!31333 (and b!279649 b!279642)))

(assert (=> bs!31333 (= lambda!9560 lambda!9559)))

(declare-fun bs!31334 () Bool)

(assert (= bs!31334 (and b!279649 d!81316)))

(assert (=> bs!31334 (= lambda!9560 lambda!9525)))

(declare-fun bs!31335 () Bool)

(assert (= bs!31335 (and b!279649 d!81700)))

(assert (=> bs!31335 (not (= lambda!9560 lambda!9558))))

(declare-fun bs!31336 () Bool)

(assert (= bs!31336 (and b!279649 b!279449)))

(assert (=> bs!31336 (= lambda!9560 lambda!9546)))

(declare-fun bs!31337 () Bool)

(assert (= bs!31337 (and b!279649 b!278563)))

(assert (=> bs!31337 (not (= lambda!9560 lambda!9519))))

(declare-fun b!279656 () Bool)

(declare-fun e!174018 () Bool)

(assert (=> b!279656 (= e!174018 true)))

(declare-fun b!279655 () Bool)

(declare-fun e!174017 () Bool)

(assert (=> b!279655 (= e!174017 e!174018)))

(declare-fun b!279654 () Bool)

(declare-fun e!174016 () Bool)

(assert (=> b!279654 (= e!174016 e!174017)))

(assert (=> b!279649 e!174016))

(assert (= b!279655 b!279656))

(assert (= b!279654 b!279655))

(assert (= (and b!279649 ((_ is Cons!3894) rules!1920)) b!279654))

(assert (=> b!279656 (< (dynLambda!2033 order!3045 (toValue!1488 (transformation!745 (h!9291 rules!1920)))) (dynLambda!2034 order!3047 lambda!9560))))

(assert (=> b!279656 (< (dynLambda!2035 order!3049 (toChars!1347 (transformation!745 (h!9291 rules!1920)))) (dynLambda!2034 order!3047 lambda!9560))))

(assert (=> b!279649 true))

(declare-fun b!279646 () Bool)

(declare-fun e!174012 () List!3903)

(assert (=> b!279646 (= e!174012 Nil!3893)))

(assert (=> b!279646 (= (print!356 thiss!17480 (singletonSeq!291 (h!9292 tokens!465))) (printTailRec!319 thiss!17480 (singletonSeq!291 (h!9292 tokens!465)) 0 (BalanceConc!2633 Empty!1312)))))

(declare-fun lt!116855 () Unit!5128)

(declare-fun Unit!5150 () Unit!5128)

(assert (=> b!279646 (= lt!116855 Unit!5150)))

(declare-fun lt!116852 () Unit!5128)

(declare-fun lt!116854 () List!3903)

(declare-fun call!15539 () List!3903)

(assert (=> b!279646 (= lt!116852 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!122 thiss!17480 rules!1920 call!15539 lt!116854))))

(assert (=> b!279646 false))

(declare-fun lt!116853 () Unit!5128)

(declare-fun Unit!5151 () Unit!5128)

(assert (=> b!279646 (= lt!116853 Unit!5151)))

(declare-fun call!15540 () List!3903)

(declare-fun call!15541 () BalanceConc!2632)

(declare-fun c!52811 () Bool)

(declare-fun call!15542 () BalanceConc!2632)

(declare-fun bm!15534 () Bool)

(assert (=> bm!15534 (= call!15540 (list!1608 (ite c!52811 call!15541 call!15542)))))

(declare-fun b!279647 () Bool)

(declare-fun c!52810 () Bool)

(declare-fun lt!116850 () Option!850)

(assert (=> b!279647 (= c!52810 (and ((_ is Some!849) lt!116850) (not (= (_1!2421 (v!14750 lt!116850)) (h!9292 tokens!465)))))))

(declare-fun e!174013 () List!3903)

(assert (=> b!279647 (= e!174013 e!174012)))

(declare-fun b!279648 () Bool)

(declare-fun e!174014 () List!3903)

(assert (=> b!279648 (= e!174014 Nil!3893)))

(assert (=> b!279649 (= e!174014 e!174013)))

(declare-fun lt!116851 () Unit!5128)

(assert (=> b!279649 (= lt!116851 (forallContained!300 tokens!465 lambda!9560 (h!9292 tokens!465)))))

(assert (=> b!279649 (= lt!116854 (printWithSeparatorTokenWhenNeededList!314 thiss!17480 rules!1920 (t!39219 tokens!465) separatorToken!170))))

(assert (=> b!279649 (= lt!116850 (maxPrefix!349 thiss!17480 rules!1920 (++!1030 (list!1608 (charsOf!390 (h!9292 tokens!465))) lt!116854)))))

(assert (=> b!279649 (= c!52811 (and ((_ is Some!849) lt!116850) (= (_1!2421 (v!14750 lt!116850)) (h!9292 tokens!465))))))

(declare-fun b!279650 () Bool)

(declare-fun e!174015 () BalanceConc!2632)

(assert (=> b!279650 (= e!174015 call!15542)))

(declare-fun b!279651 () Bool)

(assert (=> b!279651 (= e!174015 (charsOf!390 separatorToken!170))))

(declare-fun bm!15535 () Bool)

(assert (=> bm!15535 (= call!15539 (list!1608 e!174015))))

(declare-fun c!52809 () Bool)

(assert (=> bm!15535 (= c!52809 c!52810)))

(declare-fun b!279652 () Bool)

(declare-fun call!15543 () List!3903)

(assert (=> b!279652 (= e!174013 call!15543)))

(declare-fun bm!15537 () Bool)

(assert (=> bm!15537 (= call!15541 (charsOf!390 (h!9292 tokens!465)))))

(declare-fun bm!15538 () Bool)

(assert (=> bm!15538 (= call!15542 call!15541)))

(declare-fun b!279653 () Bool)

(assert (=> b!279653 (= e!174012 (++!1030 call!15543 lt!116854))))

(declare-fun bm!15536 () Bool)

(assert (=> bm!15536 (= call!15543 (++!1030 call!15540 (ite c!52811 lt!116854 call!15539)))))

(declare-fun d!81702 () Bool)

(declare-fun c!52812 () Bool)

(assert (=> d!81702 (= c!52812 ((_ is Cons!3895) tokens!465))))

(assert (=> d!81702 (= (printWithSeparatorTokenWhenNeededList!314 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!174014)))

(assert (= (and d!81702 c!52812) b!279649))

(assert (= (and d!81702 (not c!52812)) b!279648))

(assert (= (and b!279649 c!52811) b!279652))

(assert (= (and b!279649 (not c!52811)) b!279647))

(assert (= (and b!279647 c!52810) b!279653))

(assert (= (and b!279647 (not c!52810)) b!279646))

(assert (= (or b!279653 b!279646) bm!15538))

(assert (= (or b!279653 b!279646) bm!15535))

(assert (= (and bm!15535 c!52809) b!279651))

(assert (= (and bm!15535 (not c!52809)) b!279650))

(assert (= (or b!279652 bm!15538) bm!15537))

(assert (= (or b!279652 b!279653) bm!15534))

(assert (= (or b!279652 b!279653) bm!15536))

(assert (=> b!279651 m!355733))

(declare-fun m!357729 () Bool)

(assert (=> bm!15535 m!357729))

(declare-fun m!357731 () Bool)

(assert (=> bm!15534 m!357731))

(declare-fun m!357733 () Bool)

(assert (=> bm!15536 m!357733))

(assert (=> bm!15537 m!355739))

(declare-fun m!357735 () Bool)

(assert (=> b!279653 m!357735))

(assert (=> b!279646 m!355797))

(assert (=> b!279646 m!355797))

(declare-fun m!357737 () Bool)

(assert (=> b!279646 m!357737))

(assert (=> b!279646 m!355797))

(declare-fun m!357739 () Bool)

(assert (=> b!279646 m!357739))

(declare-fun m!357741 () Bool)

(assert (=> b!279646 m!357741))

(declare-fun m!357743 () Bool)

(assert (=> b!279649 m!357743))

(declare-fun m!357745 () Bool)

(assert (=> b!279649 m!357745))

(declare-fun m!357747 () Bool)

(assert (=> b!279649 m!357747))

(assert (=> b!279649 m!355739))

(assert (=> b!279649 m!355749))

(assert (=> b!279649 m!355739))

(assert (=> b!279649 m!355741))

(assert (=> b!279649 m!355741))

(assert (=> b!279649 m!357745))

(assert (=> b!278579 d!81702))

(declare-fun d!81704 () Bool)

(declare-fun res!127896 () Bool)

(declare-fun e!174021 () Bool)

(assert (=> d!81704 (=> (not res!127896) (not e!174021))))

(assert (=> d!81704 (= res!127896 (not (isEmpty!2536 (originalCharacters!788 separatorToken!170))))))

(assert (=> d!81704 (= (inv!4813 separatorToken!170) e!174021)))

(declare-fun b!279661 () Bool)

(declare-fun res!127897 () Bool)

(assert (=> b!279661 (=> (not res!127897) (not e!174021))))

(assert (=> b!279661 (= res!127897 (= (originalCharacters!788 separatorToken!170) (list!1608 (dynLambda!2039 (toChars!1347 (transformation!745 (rule!1332 separatorToken!170))) (value!25548 separatorToken!170)))))))

(declare-fun b!279662 () Bool)

(assert (=> b!279662 (= e!174021 (= (size!3106 separatorToken!170) (size!3110 (originalCharacters!788 separatorToken!170))))))

(assert (= (and d!81704 res!127896) b!279661))

(assert (= (and b!279661 res!127897) b!279662))

(declare-fun b_lambda!9033 () Bool)

(assert (=> (not b_lambda!9033) (not b!279661)))

(assert (=> b!279661 t!39283))

(declare-fun b_and!22425 () Bool)

(assert (= b_and!22419 (and (=> t!39283 result!19620) b_and!22425)))

(assert (=> b!279661 t!39285))

(declare-fun b_and!22427 () Bool)

(assert (= b_and!22421 (and (=> t!39285 result!19622) b_and!22427)))

(assert (=> b!279661 t!39287))

(declare-fun b_and!22429 () Bool)

(assert (= b_and!22423 (and (=> t!39287 result!19624) b_and!22429)))

(declare-fun m!357749 () Bool)

(assert (=> d!81704 m!357749))

(assert (=> b!279661 m!357591))

(assert (=> b!279661 m!357591))

(declare-fun m!357751 () Bool)

(assert (=> b!279661 m!357751))

(declare-fun m!357753 () Bool)

(assert (=> b!279662 m!357753))

(assert (=> start!30090 d!81704))

(declare-fun d!81706 () Bool)

(declare-fun res!127898 () Bool)

(declare-fun e!174022 () Bool)

(assert (=> d!81706 (=> (not res!127898) (not e!174022))))

(assert (=> d!81706 (= res!127898 (not (isEmpty!2536 (originalCharacters!788 (h!9292 tokens!465)))))))

(assert (=> d!81706 (= (inv!4813 (h!9292 tokens!465)) e!174022)))

(declare-fun b!279663 () Bool)

(declare-fun res!127899 () Bool)

(assert (=> b!279663 (=> (not res!127899) (not e!174022))))

(assert (=> b!279663 (= res!127899 (= (originalCharacters!788 (h!9292 tokens!465)) (list!1608 (dynLambda!2039 (toChars!1347 (transformation!745 (rule!1332 (h!9292 tokens!465)))) (value!25548 (h!9292 tokens!465))))))))

(declare-fun b!279664 () Bool)

(assert (=> b!279664 (= e!174022 (= (size!3106 (h!9292 tokens!465)) (size!3110 (originalCharacters!788 (h!9292 tokens!465)))))))

(assert (= (and d!81706 res!127898) b!279663))

(assert (= (and b!279663 res!127899) b!279664))

(declare-fun b_lambda!9035 () Bool)

(assert (=> (not b_lambda!9035) (not b!279663)))

(assert (=> b!279663 t!39289))

(declare-fun b_and!22431 () Bool)

(assert (= b_and!22425 (and (=> t!39289 result!19626) b_and!22431)))

(assert (=> b!279663 t!39291))

(declare-fun b_and!22433 () Bool)

(assert (= b_and!22427 (and (=> t!39291 result!19628) b_and!22433)))

(assert (=> b!279663 t!39293))

(declare-fun b_and!22435 () Bool)

(assert (= b_and!22429 (and (=> t!39293 result!19630) b_and!22435)))

(declare-fun m!357755 () Bool)

(assert (=> d!81706 m!357755))

(assert (=> b!279663 m!357635))

(assert (=> b!279663 m!357635))

(declare-fun m!357757 () Bool)

(assert (=> b!279663 m!357757))

(declare-fun m!357759 () Bool)

(assert (=> b!279664 m!357759))

(assert (=> b!278562 d!81706))

(declare-fun b!279665 () Bool)

(declare-fun res!127903 () Bool)

(declare-fun e!174024 () Bool)

(assert (=> b!279665 (=> res!127903 e!174024)))

(assert (=> b!279665 (= res!127903 (not (isEmpty!2536 (tail!499 lt!116274))))))

(declare-fun bm!15539 () Bool)

(declare-fun call!15544 () Bool)

(assert (=> bm!15539 (= call!15544 (isEmpty!2536 lt!116274))))

(declare-fun b!279667 () Bool)

(declare-fun e!174027 () Bool)

(assert (=> b!279667 (= e!174027 (nullable!176 (regex!745 (rule!1332 (h!9292 tokens!465)))))))

(declare-fun b!279668 () Bool)

(declare-fun e!174029 () Bool)

(declare-fun lt!116856 () Bool)

(assert (=> b!279668 (= e!174029 (not lt!116856))))

(declare-fun b!279669 () Bool)

(declare-fun e!174023 () Bool)

(assert (=> b!279669 (= e!174023 (= (head!918 lt!116274) (c!52575 (regex!745 (rule!1332 (h!9292 tokens!465))))))))

(declare-fun b!279670 () Bool)

(declare-fun e!174028 () Bool)

(assert (=> b!279670 (= e!174028 (= lt!116856 call!15544))))

(declare-fun b!279671 () Bool)

(declare-fun res!127901 () Bool)

(declare-fun e!174025 () Bool)

(assert (=> b!279671 (=> res!127901 e!174025)))

(assert (=> b!279671 (= res!127901 e!174023)))

(declare-fun res!127900 () Bool)

(assert (=> b!279671 (=> (not res!127900) (not e!174023))))

(assert (=> b!279671 (= res!127900 lt!116856)))

(declare-fun b!279672 () Bool)

(declare-fun res!127906 () Bool)

(assert (=> b!279672 (=> (not res!127906) (not e!174023))))

(assert (=> b!279672 (= res!127906 (not call!15544))))

(declare-fun b!279673 () Bool)

(declare-fun e!174026 () Bool)

(assert (=> b!279673 (= e!174026 e!174024)))

(declare-fun res!127905 () Bool)

(assert (=> b!279673 (=> res!127905 e!174024)))

(assert (=> b!279673 (= res!127905 call!15544)))

(declare-fun b!279674 () Bool)

(declare-fun res!127902 () Bool)

(assert (=> b!279674 (=> (not res!127902) (not e!174023))))

(assert (=> b!279674 (= res!127902 (isEmpty!2536 (tail!499 lt!116274)))))

(declare-fun d!81708 () Bool)

(assert (=> d!81708 e!174028))

(declare-fun c!52813 () Bool)

(assert (=> d!81708 (= c!52813 ((_ is EmptyExpr!969) (regex!745 (rule!1332 (h!9292 tokens!465)))))))

(assert (=> d!81708 (= lt!116856 e!174027)))

(declare-fun c!52814 () Bool)

(assert (=> d!81708 (= c!52814 (isEmpty!2536 lt!116274))))

(assert (=> d!81708 (validRegex!251 (regex!745 (rule!1332 (h!9292 tokens!465))))))

(assert (=> d!81708 (= (matchR!291 (regex!745 (rule!1332 (h!9292 tokens!465))) lt!116274) lt!116856)))

(declare-fun b!279666 () Bool)

(declare-fun res!127904 () Bool)

(assert (=> b!279666 (=> res!127904 e!174025)))

(assert (=> b!279666 (= res!127904 (not ((_ is ElementMatch!969) (regex!745 (rule!1332 (h!9292 tokens!465))))))))

(assert (=> b!279666 (= e!174029 e!174025)))

(declare-fun b!279675 () Bool)

(assert (=> b!279675 (= e!174027 (matchR!291 (derivativeStep!142 (regex!745 (rule!1332 (h!9292 tokens!465))) (head!918 lt!116274)) (tail!499 lt!116274)))))

(declare-fun b!279676 () Bool)

(assert (=> b!279676 (= e!174024 (not (= (head!918 lt!116274) (c!52575 (regex!745 (rule!1332 (h!9292 tokens!465)))))))))

(declare-fun b!279677 () Bool)

(assert (=> b!279677 (= e!174028 e!174029)))

(declare-fun c!52815 () Bool)

(assert (=> b!279677 (= c!52815 ((_ is EmptyLang!969) (regex!745 (rule!1332 (h!9292 tokens!465)))))))

(declare-fun b!279678 () Bool)

(assert (=> b!279678 (= e!174025 e!174026)))

(declare-fun res!127907 () Bool)

(assert (=> b!279678 (=> (not res!127907) (not e!174026))))

(assert (=> b!279678 (= res!127907 (not lt!116856))))

(assert (= (and d!81708 c!52814) b!279667))

(assert (= (and d!81708 (not c!52814)) b!279675))

(assert (= (and d!81708 c!52813) b!279670))

(assert (= (and d!81708 (not c!52813)) b!279677))

(assert (= (and b!279677 c!52815) b!279668))

(assert (= (and b!279677 (not c!52815)) b!279666))

(assert (= (and b!279666 (not res!127904)) b!279671))

(assert (= (and b!279671 res!127900) b!279672))

(assert (= (and b!279672 res!127906) b!279674))

(assert (= (and b!279674 res!127902) b!279669))

(assert (= (and b!279671 (not res!127901)) b!279678))

(assert (= (and b!279678 res!127907) b!279673))

(assert (= (and b!279673 (not res!127905)) b!279665))

(assert (= (and b!279665 (not res!127903)) b!279676))

(assert (= (or b!279670 b!279672 b!279673) bm!15539))

(declare-fun m!357761 () Bool)

(assert (=> b!279667 m!357761))

(declare-fun m!357763 () Bool)

(assert (=> d!81708 m!357763))

(declare-fun m!357765 () Bool)

(assert (=> d!81708 m!357765))

(assert (=> b!279675 m!356403))

(assert (=> b!279675 m!356403))

(declare-fun m!357767 () Bool)

(assert (=> b!279675 m!357767))

(assert (=> b!279675 m!356409))

(assert (=> b!279675 m!357767))

(assert (=> b!279675 m!356409))

(declare-fun m!357769 () Bool)

(assert (=> b!279675 m!357769))

(assert (=> b!279674 m!356409))

(assert (=> b!279674 m!356409))

(declare-fun m!357771 () Bool)

(assert (=> b!279674 m!357771))

(assert (=> bm!15539 m!357763))

(assert (=> b!279669 m!356403))

(assert (=> b!279676 m!356403))

(assert (=> b!279665 m!356409))

(assert (=> b!279665 m!356409))

(assert (=> b!279665 m!357771))

(assert (=> b!278583 d!81708))

(declare-fun d!81710 () Bool)

(declare-fun isEmpty!2548 (Option!851) Bool)

(assert (=> d!81710 (= (isDefined!692 (maxPrefixZipperSequence!312 thiss!17480 rules!1920 (seqFromList!858 (originalCharacters!788 (h!9292 tokens!465))))) (not (isEmpty!2548 (maxPrefixZipperSequence!312 thiss!17480 rules!1920 (seqFromList!858 (originalCharacters!788 (h!9292 tokens!465)))))))))

(declare-fun bs!31338 () Bool)

(assert (= bs!31338 d!81710))

(assert (=> bs!31338 m!355771))

(declare-fun m!357773 () Bool)

(assert (=> bs!31338 m!357773))

(assert (=> b!278584 d!81710))

(declare-fun b!279695 () Bool)

(declare-fun e!174043 () Option!851)

(declare-fun lt!116874 () Option!851)

(declare-fun lt!116876 () Option!851)

(assert (=> b!279695 (= e!174043 (ite (and ((_ is None!850) lt!116874) ((_ is None!850) lt!116876)) None!850 (ite ((_ is None!850) lt!116876) lt!116874 (ite ((_ is None!850) lt!116874) lt!116876 (ite (>= (size!3106 (_1!2422 (v!14751 lt!116874))) (size!3106 (_1!2422 (v!14751 lt!116876)))) lt!116874 lt!116876)))))))

(declare-fun call!15547 () Option!851)

(assert (=> b!279695 (= lt!116874 call!15547)))

(assert (=> b!279695 (= lt!116876 (maxPrefixZipperSequence!312 thiss!17480 (t!39218 rules!1920) (seqFromList!858 (originalCharacters!788 (h!9292 tokens!465)))))))

(declare-fun b!279696 () Bool)

(declare-fun res!127921 () Bool)

(declare-fun e!174045 () Bool)

(assert (=> b!279696 (=> (not res!127921) (not e!174045))))

(declare-fun e!174046 () Bool)

(assert (=> b!279696 (= res!127921 e!174046)))

(declare-fun res!127923 () Bool)

(assert (=> b!279696 (=> res!127923 e!174046)))

(declare-fun lt!116877 () Option!851)

(assert (=> b!279696 (= res!127923 (not (isDefined!692 lt!116877)))))

(declare-fun b!279697 () Bool)

(declare-fun e!174044 () Bool)

(assert (=> b!279697 (= e!174045 e!174044)))

(declare-fun res!127920 () Bool)

(assert (=> b!279697 (=> res!127920 e!174044)))

(assert (=> b!279697 (= res!127920 (not (isDefined!692 lt!116877)))))

(declare-fun d!81712 () Bool)

(assert (=> d!81712 e!174045))

(declare-fun res!127925 () Bool)

(assert (=> d!81712 (=> (not res!127925) (not e!174045))))

(declare-fun maxPrefixZipper!123 (LexerInterface!631 List!3904 List!3903) Option!850)

(assert (=> d!81712 (= res!127925 (= (isDefined!692 lt!116877) (isDefined!694 (maxPrefixZipper!123 thiss!17480 rules!1920 (list!1608 (seqFromList!858 (originalCharacters!788 (h!9292 tokens!465))))))))))

(assert (=> d!81712 (= lt!116877 e!174043)))

(declare-fun c!52818 () Bool)

(assert (=> d!81712 (= c!52818 (and ((_ is Cons!3894) rules!1920) ((_ is Nil!3894) (t!39218 rules!1920))))))

(declare-fun lt!116873 () Unit!5128)

(declare-fun lt!116875 () Unit!5128)

(assert (=> d!81712 (= lt!116873 lt!116875)))

(declare-fun lt!116872 () List!3903)

(declare-fun lt!116871 () List!3903)

(assert (=> d!81712 (isPrefix!413 lt!116872 lt!116871)))

(assert (=> d!81712 (= lt!116875 (lemmaIsPrefixRefl!219 lt!116872 lt!116871))))

(assert (=> d!81712 (= lt!116871 (list!1608 (seqFromList!858 (originalCharacters!788 (h!9292 tokens!465)))))))

(assert (=> d!81712 (= lt!116872 (list!1608 (seqFromList!858 (originalCharacters!788 (h!9292 tokens!465)))))))

(assert (=> d!81712 (rulesValidInductive!214 thiss!17480 rules!1920)))

(assert (=> d!81712 (= (maxPrefixZipperSequence!312 thiss!17480 rules!1920 (seqFromList!858 (originalCharacters!788 (h!9292 tokens!465)))) lt!116877)))

(declare-fun b!279698 () Bool)

(declare-fun e!174042 () Bool)

(declare-fun get!1310 (Option!851) tuple2!4412)

(assert (=> b!279698 (= e!174042 (= (list!1608 (_2!2422 (get!1310 lt!116877))) (_2!2421 (get!1308 (maxPrefixZipper!123 thiss!17480 rules!1920 (list!1608 (seqFromList!858 (originalCharacters!788 (h!9292 tokens!465)))))))))))

(declare-fun b!279699 () Bool)

(declare-fun e!174047 () Bool)

(assert (=> b!279699 (= e!174047 (= (list!1608 (_2!2422 (get!1310 lt!116877))) (_2!2421 (get!1308 (maxPrefix!349 thiss!17480 rules!1920 (list!1608 (seqFromList!858 (originalCharacters!788 (h!9292 tokens!465)))))))))))

(declare-fun bm!15542 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!124 (LexerInterface!631 Rule!1290 BalanceConc!2632) Option!851)

(assert (=> bm!15542 (= call!15547 (maxPrefixOneRuleZipperSequence!124 thiss!17480 (h!9291 rules!1920) (seqFromList!858 (originalCharacters!788 (h!9292 tokens!465)))))))

(declare-fun b!279700 () Bool)

(assert (=> b!279700 (= e!174044 e!174047)))

(declare-fun res!127924 () Bool)

(assert (=> b!279700 (=> (not res!127924) (not e!174047))))

(assert (=> b!279700 (= res!127924 (= (_1!2422 (get!1310 lt!116877)) (_1!2421 (get!1308 (maxPrefix!349 thiss!17480 rules!1920 (list!1608 (seqFromList!858 (originalCharacters!788 (h!9292 tokens!465)))))))))))

(declare-fun b!279701 () Bool)

(assert (=> b!279701 (= e!174043 call!15547)))

(declare-fun b!279702 () Bool)

(assert (=> b!279702 (= e!174046 e!174042)))

(declare-fun res!127922 () Bool)

(assert (=> b!279702 (=> (not res!127922) (not e!174042))))

(assert (=> b!279702 (= res!127922 (= (_1!2422 (get!1310 lt!116877)) (_1!2421 (get!1308 (maxPrefixZipper!123 thiss!17480 rules!1920 (list!1608 (seqFromList!858 (originalCharacters!788 (h!9292 tokens!465)))))))))))

(assert (= (and d!81712 c!52818) b!279701))

(assert (= (and d!81712 (not c!52818)) b!279695))

(assert (= (or b!279701 b!279695) bm!15542))

(assert (= (and d!81712 res!127925) b!279696))

(assert (= (and b!279696 (not res!127923)) b!279702))

(assert (= (and b!279702 res!127922) b!279698))

(assert (= (and b!279696 res!127921) b!279697))

(assert (= (and b!279697 (not res!127920)) b!279700))

(assert (= (and b!279700 res!127924) b!279699))

(assert (=> b!279695 m!355769))

(declare-fun m!357775 () Bool)

(assert (=> b!279695 m!357775))

(declare-fun m!357777 () Bool)

(assert (=> b!279700 m!357777))

(assert (=> b!279700 m!355769))

(declare-fun m!357779 () Bool)

(assert (=> b!279700 m!357779))

(assert (=> b!279700 m!357779))

(declare-fun m!357781 () Bool)

(assert (=> b!279700 m!357781))

(assert (=> b!279700 m!357781))

(declare-fun m!357783 () Bool)

(assert (=> b!279700 m!357783))

(assert (=> b!279699 m!355769))

(assert (=> b!279699 m!357779))

(assert (=> b!279699 m!357777))

(declare-fun m!357785 () Bool)

(assert (=> b!279699 m!357785))

(assert (=> b!279699 m!357781))

(assert (=> b!279699 m!357783))

(assert (=> b!279699 m!357779))

(assert (=> b!279699 m!357781))

(assert (=> bm!15542 m!355769))

(declare-fun m!357787 () Bool)

(assert (=> bm!15542 m!357787))

(declare-fun m!357789 () Bool)

(assert (=> b!279697 m!357789))

(assert (=> b!279698 m!355769))

(assert (=> b!279698 m!357779))

(declare-fun m!357791 () Bool)

(assert (=> b!279698 m!357791))

(declare-fun m!357793 () Bool)

(assert (=> b!279698 m!357793))

(assert (=> b!279698 m!357779))

(assert (=> b!279698 m!357791))

(assert (=> b!279698 m!357777))

(assert (=> b!279698 m!357785))

(assert (=> b!279696 m!357789))

(assert (=> d!81712 m!355769))

(assert (=> d!81712 m!357779))

(assert (=> d!81712 m!356131))

(assert (=> d!81712 m!357779))

(assert (=> d!81712 m!357791))

(assert (=> d!81712 m!357791))

(declare-fun m!357795 () Bool)

(assert (=> d!81712 m!357795))

(assert (=> d!81712 m!357789))

(declare-fun m!357797 () Bool)

(assert (=> d!81712 m!357797))

(declare-fun m!357799 () Bool)

(assert (=> d!81712 m!357799))

(assert (=> b!279702 m!357777))

(assert (=> b!279702 m!355769))

(assert (=> b!279702 m!357779))

(assert (=> b!279702 m!357779))

(assert (=> b!279702 m!357791))

(assert (=> b!279702 m!357791))

(assert (=> b!279702 m!357793))

(assert (=> b!278584 d!81712))

(declare-fun d!81714 () Bool)

(assert (=> d!81714 (= (seqFromList!858 (originalCharacters!788 (h!9292 tokens!465))) (fromListB!339 (originalCharacters!788 (h!9292 tokens!465))))))

(declare-fun bs!31339 () Bool)

(assert (= bs!31339 d!81714))

(declare-fun m!357801 () Bool)

(assert (=> bs!31339 m!357801))

(assert (=> b!278584 d!81714))

(declare-fun d!81716 () Bool)

(assert (=> d!81716 (dynLambda!2038 lambda!9520 (h!9292 tokens!465))))

(declare-fun lt!116878 () Unit!5128)

(assert (=> d!81716 (= lt!116878 (choose!2525 tokens!465 lambda!9520 (h!9292 tokens!465)))))

(declare-fun e!174048 () Bool)

(assert (=> d!81716 e!174048))

(declare-fun res!127926 () Bool)

(assert (=> d!81716 (=> (not res!127926) (not e!174048))))

(assert (=> d!81716 (= res!127926 (forall!992 tokens!465 lambda!9520))))

(assert (=> d!81716 (= (forallContained!300 tokens!465 lambda!9520 (h!9292 tokens!465)) lt!116878)))

(declare-fun b!279703 () Bool)

(assert (=> b!279703 (= e!174048 (contains!753 tokens!465 (h!9292 tokens!465)))))

(assert (= (and d!81716 res!127926) b!279703))

(declare-fun b_lambda!9037 () Bool)

(assert (=> (not b_lambda!9037) (not d!81716)))

(declare-fun m!357803 () Bool)

(assert (=> d!81716 m!357803))

(declare-fun m!357805 () Bool)

(assert (=> d!81716 m!357805))

(assert (=> d!81716 m!356667))

(declare-fun m!357807 () Bool)

(assert (=> b!279703 m!357807))

(assert (=> b!278584 d!81716))

(declare-fun d!81718 () Bool)

(declare-fun e!174050 () Bool)

(assert (=> d!81718 e!174050))

(declare-fun res!127928 () Bool)

(assert (=> d!81718 (=> (not res!127928) (not e!174050))))

(declare-fun lt!116879 () List!3903)

(assert (=> d!81718 (= res!127928 (= (content!565 lt!116879) ((_ map or) (content!565 lt!116274) (content!565 lt!116272))))))

(declare-fun e!174049 () List!3903)

(assert (=> d!81718 (= lt!116879 e!174049)))

(declare-fun c!52819 () Bool)

(assert (=> d!81718 (= c!52819 ((_ is Nil!3893) lt!116274))))

(assert (=> d!81718 (= (++!1030 lt!116274 lt!116272) lt!116879)))

(declare-fun b!279704 () Bool)

(assert (=> b!279704 (= e!174049 lt!116272)))

(declare-fun b!279707 () Bool)

(assert (=> b!279707 (= e!174050 (or (not (= lt!116272 Nil!3893)) (= lt!116879 lt!116274)))))

(declare-fun b!279706 () Bool)

(declare-fun res!127927 () Bool)

(assert (=> b!279706 (=> (not res!127927) (not e!174050))))

(assert (=> b!279706 (= res!127927 (= (size!3110 lt!116879) (+ (size!3110 lt!116274) (size!3110 lt!116272))))))

(declare-fun b!279705 () Bool)

(assert (=> b!279705 (= e!174049 (Cons!3893 (h!9290 lt!116274) (++!1030 (t!39217 lt!116274) lt!116272)))))

(assert (= (and d!81718 c!52819) b!279704))

(assert (= (and d!81718 (not c!52819)) b!279705))

(assert (= (and d!81718 res!127928) b!279706))

(assert (= (and b!279706 res!127927) b!279707))

(declare-fun m!357809 () Bool)

(assert (=> d!81718 m!357809))

(assert (=> d!81718 m!357595))

(assert (=> d!81718 m!357067))

(declare-fun m!357811 () Bool)

(assert (=> b!279706 m!357811))

(assert (=> b!279706 m!356123))

(assert (=> b!279706 m!356153))

(declare-fun m!357813 () Bool)

(assert (=> b!279705 m!357813))

(assert (=> b!278582 d!81718))

(declare-fun d!81720 () Bool)

(assert (=> d!81720 (not (matchR!291 (regex!745 (rule!1332 lt!116283)) lt!116268))))

(declare-fun lt!116882 () Unit!5128)

(declare-fun choose!2532 (Regex!969 List!3903 C!2860) Unit!5128)

(assert (=> d!81720 (= lt!116882 (choose!2532 (regex!745 (rule!1332 lt!116283)) lt!116268 lt!116290))))

(assert (=> d!81720 (validRegex!251 (regex!745 (rule!1332 lt!116283)))))

(assert (=> d!81720 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!74 (regex!745 (rule!1332 lt!116283)) lt!116268 lt!116290) lt!116882)))

(declare-fun bs!31340 () Bool)

(assert (= bs!31340 d!81720))

(assert (=> bs!31340 m!355927))

(declare-fun m!357815 () Bool)

(assert (=> bs!31340 m!357815))

(declare-fun m!357817 () Bool)

(assert (=> bs!31340 m!357817))

(assert (=> b!278603 d!81720))

(declare-fun b!279708 () Bool)

(declare-fun res!127932 () Bool)

(declare-fun e!174052 () Bool)

(assert (=> b!279708 (=> res!127932 e!174052)))

(assert (=> b!279708 (= res!127932 (not (isEmpty!2536 (tail!499 lt!116268))))))

(declare-fun bm!15543 () Bool)

(declare-fun call!15548 () Bool)

(assert (=> bm!15543 (= call!15548 (isEmpty!2536 lt!116268))))

(declare-fun b!279710 () Bool)

(declare-fun e!174055 () Bool)

(assert (=> b!279710 (= e!174055 (nullable!176 (regex!745 (rule!1332 lt!116283))))))

(declare-fun b!279711 () Bool)

(declare-fun e!174057 () Bool)

(declare-fun lt!116883 () Bool)

(assert (=> b!279711 (= e!174057 (not lt!116883))))

(declare-fun b!279712 () Bool)

(declare-fun e!174051 () Bool)

(assert (=> b!279712 (= e!174051 (= (head!918 lt!116268) (c!52575 (regex!745 (rule!1332 lt!116283)))))))

(declare-fun b!279713 () Bool)

(declare-fun e!174056 () Bool)

(assert (=> b!279713 (= e!174056 (= lt!116883 call!15548))))

(declare-fun b!279714 () Bool)

(declare-fun res!127930 () Bool)

(declare-fun e!174053 () Bool)

(assert (=> b!279714 (=> res!127930 e!174053)))

(assert (=> b!279714 (= res!127930 e!174051)))

(declare-fun res!127929 () Bool)

(assert (=> b!279714 (=> (not res!127929) (not e!174051))))

(assert (=> b!279714 (= res!127929 lt!116883)))

(declare-fun b!279715 () Bool)

(declare-fun res!127935 () Bool)

(assert (=> b!279715 (=> (not res!127935) (not e!174051))))

(assert (=> b!279715 (= res!127935 (not call!15548))))

(declare-fun b!279716 () Bool)

(declare-fun e!174054 () Bool)

(assert (=> b!279716 (= e!174054 e!174052)))

(declare-fun res!127934 () Bool)

(assert (=> b!279716 (=> res!127934 e!174052)))

(assert (=> b!279716 (= res!127934 call!15548)))

(declare-fun b!279717 () Bool)

(declare-fun res!127931 () Bool)

(assert (=> b!279717 (=> (not res!127931) (not e!174051))))

(assert (=> b!279717 (= res!127931 (isEmpty!2536 (tail!499 lt!116268)))))

(declare-fun d!81722 () Bool)

(assert (=> d!81722 e!174056))

(declare-fun c!52821 () Bool)

(assert (=> d!81722 (= c!52821 ((_ is EmptyExpr!969) (regex!745 (rule!1332 lt!116283))))))

(assert (=> d!81722 (= lt!116883 e!174055)))

(declare-fun c!52822 () Bool)

(assert (=> d!81722 (= c!52822 (isEmpty!2536 lt!116268))))

(assert (=> d!81722 (validRegex!251 (regex!745 (rule!1332 lt!116283)))))

(assert (=> d!81722 (= (matchR!291 (regex!745 (rule!1332 lt!116283)) lt!116268) lt!116883)))

(declare-fun b!279709 () Bool)

(declare-fun res!127933 () Bool)

(assert (=> b!279709 (=> res!127933 e!174053)))

(assert (=> b!279709 (= res!127933 (not ((_ is ElementMatch!969) (regex!745 (rule!1332 lt!116283)))))))

(assert (=> b!279709 (= e!174057 e!174053)))

(declare-fun b!279718 () Bool)

(assert (=> b!279718 (= e!174055 (matchR!291 (derivativeStep!142 (regex!745 (rule!1332 lt!116283)) (head!918 lt!116268)) (tail!499 lt!116268)))))

(declare-fun b!279719 () Bool)

(assert (=> b!279719 (= e!174052 (not (= (head!918 lt!116268) (c!52575 (regex!745 (rule!1332 lt!116283))))))))

(declare-fun b!279720 () Bool)

(assert (=> b!279720 (= e!174056 e!174057)))

(declare-fun c!52823 () Bool)

(assert (=> b!279720 (= c!52823 ((_ is EmptyLang!969) (regex!745 (rule!1332 lt!116283))))))

(declare-fun b!279721 () Bool)

(assert (=> b!279721 (= e!174053 e!174054)))

(declare-fun res!127936 () Bool)

(assert (=> b!279721 (=> (not res!127936) (not e!174054))))

(assert (=> b!279721 (= res!127936 (not lt!116883))))

(assert (= (and d!81722 c!52822) b!279710))

(assert (= (and d!81722 (not c!52822)) b!279718))

(assert (= (and d!81722 c!52821) b!279713))

(assert (= (and d!81722 (not c!52821)) b!279720))

(assert (= (and b!279720 c!52823) b!279711))

(assert (= (and b!279720 (not c!52823)) b!279709))

(assert (= (and b!279709 (not res!127933)) b!279714))

(assert (= (and b!279714 res!127929) b!279715))

(assert (= (and b!279715 res!127935) b!279717))

(assert (= (and b!279717 res!127931) b!279712))

(assert (= (and b!279714 (not res!127930)) b!279721))

(assert (= (and b!279721 res!127936) b!279716))

(assert (= (and b!279716 (not res!127934)) b!279708))

(assert (= (and b!279708 (not res!127932)) b!279719))

(assert (= (or b!279713 b!279715 b!279716) bm!15543))

(declare-fun m!357819 () Bool)

(assert (=> b!279710 m!357819))

(assert (=> d!81722 m!357657))

(assert (=> d!81722 m!357817))

(assert (=> b!279718 m!355835))

(assert (=> b!279718 m!355835))

(declare-fun m!357821 () Bool)

(assert (=> b!279718 m!357821))

(assert (=> b!279718 m!357663))

(assert (=> b!279718 m!357821))

(assert (=> b!279718 m!357663))

(declare-fun m!357823 () Bool)

(assert (=> b!279718 m!357823))

(assert (=> b!279717 m!357663))

(assert (=> b!279717 m!357663))

(assert (=> b!279717 m!357667))

(assert (=> bm!15543 m!357657))

(assert (=> b!279712 m!355835))

(assert (=> b!279719 m!355835))

(assert (=> b!279708 m!357663))

(assert (=> b!279708 m!357663))

(assert (=> b!279708 m!357667))

(assert (=> b!278603 d!81722))

(declare-fun d!81724 () Bool)

(assert (=> d!81724 (= (get!1308 lt!116260) (v!14750 lt!116260))))

(assert (=> b!278561 d!81724))

(declare-fun d!81726 () Bool)

(assert (=> d!81726 (= (head!917 tokens!465) (h!9292 tokens!465))))

(assert (=> b!278561 d!81726))

(declare-fun d!81728 () Bool)

(declare-fun lt!116885 () Bool)

(declare-fun e!174058 () Bool)

(assert (=> d!81728 (= lt!116885 e!174058)))

(declare-fun res!127937 () Bool)

(assert (=> d!81728 (=> (not res!127937) (not e!174058))))

(assert (=> d!81728 (= res!127937 (= (list!1609 (_1!2420 (lex!423 thiss!17480 rules!1920 (print!356 thiss!17480 (singletonSeq!291 (h!9292 tokens!465)))))) (list!1609 (singletonSeq!291 (h!9292 tokens!465)))))))

(declare-fun e!174059 () Bool)

(assert (=> d!81728 (= lt!116885 e!174059)))

(declare-fun res!127939 () Bool)

(assert (=> d!81728 (=> (not res!127939) (not e!174059))))

(declare-fun lt!116884 () tuple2!4408)

(assert (=> d!81728 (= res!127939 (= (size!3107 (_1!2420 lt!116884)) 1))))

(assert (=> d!81728 (= lt!116884 (lex!423 thiss!17480 rules!1920 (print!356 thiss!17480 (singletonSeq!291 (h!9292 tokens!465)))))))

(assert (=> d!81728 (not (isEmpty!2537 rules!1920))))

(assert (=> d!81728 (= (rulesProduceIndividualToken!380 thiss!17480 rules!1920 (h!9292 tokens!465)) lt!116885)))

(declare-fun b!279722 () Bool)

(declare-fun res!127938 () Bool)

(assert (=> b!279722 (=> (not res!127938) (not e!174059))))

(assert (=> b!279722 (= res!127938 (= (apply!808 (_1!2420 lt!116884) 0) (h!9292 tokens!465)))))

(declare-fun b!279723 () Bool)

(assert (=> b!279723 (= e!174059 (isEmpty!2534 (_2!2420 lt!116884)))))

(declare-fun b!279724 () Bool)

(assert (=> b!279724 (= e!174058 (isEmpty!2534 (_2!2420 (lex!423 thiss!17480 rules!1920 (print!356 thiss!17480 (singletonSeq!291 (h!9292 tokens!465)))))))))

(assert (= (and d!81728 res!127939) b!279722))

(assert (= (and b!279722 res!127938) b!279723))

(assert (= (and d!81728 res!127937) b!279724))

(declare-fun m!357825 () Bool)

(assert (=> d!81728 m!357825))

(assert (=> d!81728 m!357737))

(declare-fun m!357827 () Bool)

(assert (=> d!81728 m!357827))

(assert (=> d!81728 m!355797))

(assert (=> d!81728 m!357737))

(declare-fun m!357829 () Bool)

(assert (=> d!81728 m!357829))

(assert (=> d!81728 m!355725))

(assert (=> d!81728 m!355797))

(declare-fun m!357831 () Bool)

(assert (=> d!81728 m!357831))

(assert (=> d!81728 m!355797))

(declare-fun m!357833 () Bool)

(assert (=> b!279722 m!357833))

(declare-fun m!357835 () Bool)

(assert (=> b!279723 m!357835))

(assert (=> b!279724 m!355797))

(assert (=> b!279724 m!355797))

(assert (=> b!279724 m!357737))

(assert (=> b!279724 m!357737))

(assert (=> b!279724 m!357827))

(declare-fun m!357837 () Bool)

(assert (=> b!279724 m!357837))

(assert (=> b!278586 d!81728))

(declare-fun b!279725 () Bool)

(declare-fun e!174060 () Bool)

(assert (=> b!279725 (= e!174060 (inv!16 (value!25548 (h!9292 tokens!465))))))

(declare-fun b!279726 () Bool)

(declare-fun e!174061 () Bool)

(assert (=> b!279726 (= e!174061 (inv!15 (value!25548 (h!9292 tokens!465))))))

(declare-fun b!279727 () Bool)

(declare-fun e!174062 () Bool)

(assert (=> b!279727 (= e!174060 e!174062)))

(declare-fun c!52825 () Bool)

(assert (=> b!279727 (= c!52825 ((_ is IntegerValue!2302) (value!25548 (h!9292 tokens!465))))))

(declare-fun d!81730 () Bool)

(declare-fun c!52824 () Bool)

(assert (=> d!81730 (= c!52824 ((_ is IntegerValue!2301) (value!25548 (h!9292 tokens!465))))))

(assert (=> d!81730 (= (inv!21 (value!25548 (h!9292 tokens!465))) e!174060)))

(declare-fun b!279728 () Bool)

(assert (=> b!279728 (= e!174062 (inv!17 (value!25548 (h!9292 tokens!465))))))

(declare-fun b!279729 () Bool)

(declare-fun res!127940 () Bool)

(assert (=> b!279729 (=> res!127940 e!174061)))

(assert (=> b!279729 (= res!127940 (not ((_ is IntegerValue!2303) (value!25548 (h!9292 tokens!465)))))))

(assert (=> b!279729 (= e!174062 e!174061)))

(assert (= (and d!81730 c!52824) b!279725))

(assert (= (and d!81730 (not c!52824)) b!279727))

(assert (= (and b!279727 c!52825) b!279728))

(assert (= (and b!279727 (not c!52825)) b!279729))

(assert (= (and b!279729 (not res!127940)) b!279726))

(declare-fun m!357839 () Bool)

(assert (=> b!279725 m!357839))

(declare-fun m!357841 () Bool)

(assert (=> b!279726 m!357841))

(declare-fun m!357843 () Bool)

(assert (=> b!279728 m!357843))

(assert (=> b!278565 d!81730))

(declare-fun d!81732 () Bool)

(declare-fun res!127945 () Bool)

(declare-fun e!174067 () Bool)

(assert (=> d!81732 (=> res!127945 e!174067)))

(assert (=> d!81732 (= res!127945 ((_ is Nil!3895) tokens!465))))

(assert (=> d!81732 (= (forall!992 tokens!465 lambda!9519) e!174067)))

(declare-fun b!279734 () Bool)

(declare-fun e!174068 () Bool)

(assert (=> b!279734 (= e!174067 e!174068)))

(declare-fun res!127946 () Bool)

(assert (=> b!279734 (=> (not res!127946) (not e!174068))))

(assert (=> b!279734 (= res!127946 (dynLambda!2038 lambda!9519 (h!9292 tokens!465)))))

(declare-fun b!279735 () Bool)

(assert (=> b!279735 (= e!174068 (forall!992 (t!39219 tokens!465) lambda!9519))))

(assert (= (and d!81732 (not res!127945)) b!279734))

(assert (= (and b!279734 res!127946) b!279735))

(declare-fun b_lambda!9039 () Bool)

(assert (=> (not b_lambda!9039) (not b!279734)))

(declare-fun m!357845 () Bool)

(assert (=> b!279734 m!357845))

(declare-fun m!357847 () Bool)

(assert (=> b!279735 m!357847))

(assert (=> b!278563 d!81732))

(declare-fun d!81734 () Bool)

(declare-fun lt!116887 () Bool)

(declare-fun e!174069 () Bool)

(assert (=> d!81734 (= lt!116887 e!174069)))

(declare-fun res!127947 () Bool)

(assert (=> d!81734 (=> (not res!127947) (not e!174069))))

(assert (=> d!81734 (= res!127947 (= (list!1609 (_1!2420 (lex!423 thiss!17480 rules!1920 (print!356 thiss!17480 (singletonSeq!291 separatorToken!170))))) (list!1609 (singletonSeq!291 separatorToken!170))))))

(declare-fun e!174070 () Bool)

(assert (=> d!81734 (= lt!116887 e!174070)))

(declare-fun res!127949 () Bool)

(assert (=> d!81734 (=> (not res!127949) (not e!174070))))

(declare-fun lt!116886 () tuple2!4408)

(assert (=> d!81734 (= res!127949 (= (size!3107 (_1!2420 lt!116886)) 1))))

(assert (=> d!81734 (= lt!116886 (lex!423 thiss!17480 rules!1920 (print!356 thiss!17480 (singletonSeq!291 separatorToken!170))))))

(assert (=> d!81734 (not (isEmpty!2537 rules!1920))))

(assert (=> d!81734 (= (rulesProduceIndividualToken!380 thiss!17480 rules!1920 separatorToken!170) lt!116887)))

(declare-fun b!279736 () Bool)

(declare-fun res!127948 () Bool)

(assert (=> b!279736 (=> (not res!127948) (not e!174070))))

(assert (=> b!279736 (= res!127948 (= (apply!808 (_1!2420 lt!116886) 0) separatorToken!170))))

(declare-fun b!279737 () Bool)

(assert (=> b!279737 (= e!174070 (isEmpty!2534 (_2!2420 lt!116886)))))

(declare-fun b!279738 () Bool)

(assert (=> b!279738 (= e!174069 (isEmpty!2534 (_2!2420 (lex!423 thiss!17480 rules!1920 (print!356 thiss!17480 (singletonSeq!291 separatorToken!170))))))))

(assert (= (and d!81734 res!127949) b!279736))

(assert (= (and b!279736 res!127948) b!279737))

(assert (= (and d!81734 res!127947) b!279738))

(declare-fun m!357849 () Bool)

(assert (=> d!81734 m!357849))

(declare-fun m!357851 () Bool)

(assert (=> d!81734 m!357851))

(declare-fun m!357853 () Bool)

(assert (=> d!81734 m!357853))

(assert (=> d!81734 m!355805))

(assert (=> d!81734 m!357851))

(declare-fun m!357855 () Bool)

(assert (=> d!81734 m!357855))

(assert (=> d!81734 m!355725))

(assert (=> d!81734 m!355805))

(declare-fun m!357857 () Bool)

(assert (=> d!81734 m!357857))

(assert (=> d!81734 m!355805))

(declare-fun m!357859 () Bool)

(assert (=> b!279736 m!357859))

(declare-fun m!357861 () Bool)

(assert (=> b!279737 m!357861))

(assert (=> b!279738 m!355805))

(assert (=> b!279738 m!355805))

(assert (=> b!279738 m!357851))

(assert (=> b!279738 m!357851))

(assert (=> b!279738 m!357853))

(declare-fun m!357863 () Bool)

(assert (=> b!279738 m!357863))

(assert (=> b!278564 d!81734))

(declare-fun d!81736 () Bool)

(assert (=> d!81736 (= (inv!4810 (tag!955 (h!9291 rules!1920))) (= (mod (str.len (value!25547 (tag!955 (h!9291 rules!1920)))) 2) 0))))

(assert (=> b!278567 d!81736))

(declare-fun d!81738 () Bool)

(declare-fun res!127950 () Bool)

(declare-fun e!174071 () Bool)

(assert (=> d!81738 (=> (not res!127950) (not e!174071))))

(assert (=> d!81738 (= res!127950 (semiInverseModEq!269 (toChars!1347 (transformation!745 (h!9291 rules!1920))) (toValue!1488 (transformation!745 (h!9291 rules!1920)))))))

(assert (=> d!81738 (= (inv!4814 (transformation!745 (h!9291 rules!1920))) e!174071)))

(declare-fun b!279739 () Bool)

(assert (=> b!279739 (= e!174071 (equivClasses!252 (toChars!1347 (transformation!745 (h!9291 rules!1920))) (toValue!1488 (transformation!745 (h!9291 rules!1920)))))))

(assert (= (and d!81738 res!127950) b!279739))

(declare-fun m!357865 () Bool)

(assert (=> d!81738 m!357865))

(declare-fun m!357867 () Bool)

(assert (=> b!279739 m!357867))

(assert (=> b!278567 d!81738))

(declare-fun d!81740 () Bool)

(assert (=> d!81740 (= (inv!4810 (tag!955 (rule!1332 (h!9292 tokens!465)))) (= (mod (str.len (value!25547 (tag!955 (rule!1332 (h!9292 tokens!465))))) 2) 0))))

(assert (=> b!278568 d!81740))

(declare-fun d!81742 () Bool)

(declare-fun res!127951 () Bool)

(declare-fun e!174072 () Bool)

(assert (=> d!81742 (=> (not res!127951) (not e!174072))))

(assert (=> d!81742 (= res!127951 (semiInverseModEq!269 (toChars!1347 (transformation!745 (rule!1332 (h!9292 tokens!465)))) (toValue!1488 (transformation!745 (rule!1332 (h!9292 tokens!465))))))))

(assert (=> d!81742 (= (inv!4814 (transformation!745 (rule!1332 (h!9292 tokens!465)))) e!174072)))

(declare-fun b!279740 () Bool)

(assert (=> b!279740 (= e!174072 (equivClasses!252 (toChars!1347 (transformation!745 (rule!1332 (h!9292 tokens!465)))) (toValue!1488 (transformation!745 (rule!1332 (h!9292 tokens!465))))))))

(assert (= (and d!81742 res!127951) b!279740))

(declare-fun m!357869 () Bool)

(assert (=> d!81742 m!357869))

(declare-fun m!357871 () Bool)

(assert (=> b!279740 m!357871))

(assert (=> b!278568 d!81742))

(declare-fun d!81744 () Bool)

(assert (=> d!81744 (= (isEmpty!2537 rules!1920) ((_ is Nil!3894) rules!1920))))

(assert (=> b!278589 d!81744))

(declare-fun d!81746 () Bool)

(assert (=> d!81746 (not (contains!749 (usedCharacters!82 (regex!745 (rule!1332 separatorToken!170))) lt!116277))))

(declare-fun lt!116890 () Unit!5128)

(declare-fun choose!2533 (LexerInterface!631 List!3904 List!3904 Rule!1290 Rule!1290 C!2860) Unit!5128)

(assert (=> d!81746 (= lt!116890 (choose!2533 thiss!17480 rules!1920 rules!1920 (rule!1332 lt!116283) (rule!1332 separatorToken!170) lt!116277))))

(assert (=> d!81746 (rulesInvariant!597 thiss!17480 rules!1920)))

(assert (=> d!81746 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!68 thiss!17480 rules!1920 rules!1920 (rule!1332 lt!116283) (rule!1332 separatorToken!170) lt!116277) lt!116890)))

(declare-fun bs!31341 () Bool)

(assert (= bs!31341 d!81746))

(assert (=> bs!31341 m!355845))

(assert (=> bs!31341 m!355845))

(assert (=> bs!31341 m!355847))

(declare-fun m!357873 () Bool)

(assert (=> bs!31341 m!357873))

(assert (=> bs!31341 m!355715))

(assert (=> b!278566 d!81746))

(declare-fun d!81748 () Bool)

(assert (=> d!81748 (= (isEmpty!2536 (_2!2421 lt!116279)) ((_ is Nil!3893) (_2!2421 lt!116279)))))

(assert (=> b!278587 d!81748))

(declare-fun b!279754 () Bool)

(declare-fun b_free!10333 () Bool)

(declare-fun b_next!10333 () Bool)

(assert (=> b!279754 (= b_free!10333 (not b_next!10333))))

(declare-fun tp!104181 () Bool)

(declare-fun b_and!22437 () Bool)

(assert (=> b!279754 (= tp!104181 b_and!22437)))

(declare-fun b_free!10335 () Bool)

(declare-fun b_next!10335 () Bool)

(assert (=> b!279754 (= b_free!10335 (not b_next!10335))))

(declare-fun t!39295 () Bool)

(declare-fun tb!15909 () Bool)

(assert (=> (and b!279754 (= (toChars!1347 (transformation!745 (rule!1332 (h!9292 (t!39219 tokens!465))))) (toChars!1347 (transformation!745 (rule!1332 separatorToken!170)))) t!39295) tb!15909))

(declare-fun result!19634 () Bool)

(assert (= result!19634 result!19620))

(assert (=> b!279661 t!39295))

(declare-fun t!39297 () Bool)

(declare-fun tb!15911 () Bool)

(assert (=> (and b!279754 (= (toChars!1347 (transformation!745 (rule!1332 (h!9292 (t!39219 tokens!465))))) (toChars!1347 (transformation!745 (rule!1332 (h!9292 tokens!465))))) t!39297) tb!15911))

(declare-fun result!19636 () Bool)

(assert (= result!19636 result!19626))

(assert (=> d!81684 t!39297))

(assert (=> d!81668 t!39295))

(assert (=> b!279663 t!39297))

(declare-fun tb!15913 () Bool)

(declare-fun t!39299 () Bool)

(assert (=> (and b!279754 (= (toChars!1347 (transformation!745 (rule!1332 (h!9292 (t!39219 tokens!465))))) (toChars!1347 (transformation!745 (rule!1332 lt!116283)))) t!39299) tb!15913))

(declare-fun result!19638 () Bool)

(assert (= result!19638 result!19586))

(assert (=> d!81348 t!39299))

(declare-fun b_and!22439 () Bool)

(declare-fun tp!104182 () Bool)

(assert (=> b!279754 (= tp!104182 (and (=> t!39297 result!19636) (=> t!39299 result!19638) (=> t!39295 result!19634) b_and!22439))))

(declare-fun tp!104180 () Bool)

(declare-fun e!174087 () Bool)

(declare-fun b!279752 () Bool)

(declare-fun e!174085 () Bool)

(assert (=> b!279752 (= e!174087 (and (inv!21 (value!25548 (h!9292 (t!39219 tokens!465)))) e!174085 tp!104180))))

(declare-fun e!174089 () Bool)

(assert (=> b!279754 (= e!174089 (and tp!104181 tp!104182))))

(declare-fun b!279751 () Bool)

(declare-fun tp!104184 () Bool)

(declare-fun e!174090 () Bool)

(assert (=> b!279751 (= e!174090 (and (inv!4813 (h!9292 (t!39219 tokens!465))) e!174087 tp!104184))))

(assert (=> b!278562 (= tp!104093 e!174090)))

(declare-fun b!279753 () Bool)

(declare-fun tp!104183 () Bool)

(assert (=> b!279753 (= e!174085 (and tp!104183 (inv!4810 (tag!955 (rule!1332 (h!9292 (t!39219 tokens!465))))) (inv!4814 (transformation!745 (rule!1332 (h!9292 (t!39219 tokens!465))))) e!174089))))

(assert (= b!279753 b!279754))

(assert (= b!279752 b!279753))

(assert (= b!279751 b!279752))

(assert (= (and b!278562 ((_ is Cons!3895) (t!39219 tokens!465))) b!279751))

(declare-fun m!357875 () Bool)

(assert (=> b!279752 m!357875))

(declare-fun m!357877 () Bool)

(assert (=> b!279751 m!357877))

(declare-fun m!357879 () Bool)

(assert (=> b!279753 m!357879))

(declare-fun m!357881 () Bool)

(assert (=> b!279753 m!357881))

(declare-fun b!279757 () Bool)

(declare-fun e!174093 () Bool)

(assert (=> b!279757 (= e!174093 true)))

(declare-fun b!279756 () Bool)

(declare-fun e!174092 () Bool)

(assert (=> b!279756 (= e!174092 e!174093)))

(declare-fun b!279755 () Bool)

(declare-fun e!174091 () Bool)

(assert (=> b!279755 (= e!174091 e!174092)))

(assert (=> b!278612 e!174091))

(assert (= b!279756 b!279757))

(assert (= b!279755 b!279756))

(assert (= (and b!278612 ((_ is Cons!3894) (t!39218 rules!1920))) b!279755))

(assert (=> b!279757 (< (dynLambda!2033 order!3045 (toValue!1488 (transformation!745 (h!9291 (t!39218 rules!1920))))) (dynLambda!2034 order!3047 lambda!9520))))

(assert (=> b!279757 (< (dynLambda!2035 order!3049 (toChars!1347 (transformation!745 (h!9291 (t!39218 rules!1920))))) (dynLambda!2034 order!3047 lambda!9520))))

(declare-fun e!174096 () Bool)

(assert (=> b!278573 (= tp!104099 e!174096)))

(declare-fun b!279769 () Bool)

(declare-fun tp!104195 () Bool)

(declare-fun tp!104196 () Bool)

(assert (=> b!279769 (= e!174096 (and tp!104195 tp!104196))))

(declare-fun b!279770 () Bool)

(declare-fun tp!104197 () Bool)

(assert (=> b!279770 (= e!174096 tp!104197)))

(declare-fun b!279771 () Bool)

(declare-fun tp!104199 () Bool)

(declare-fun tp!104198 () Bool)

(assert (=> b!279771 (= e!174096 (and tp!104199 tp!104198))))

(declare-fun b!279768 () Bool)

(declare-fun tp_is_empty!1835 () Bool)

(assert (=> b!279768 (= e!174096 tp_is_empty!1835)))

(assert (= (and b!278573 ((_ is ElementMatch!969) (regex!745 (rule!1332 separatorToken!170)))) b!279768))

(assert (= (and b!278573 ((_ is Concat!1737) (regex!745 (rule!1332 separatorToken!170)))) b!279769))

(assert (= (and b!278573 ((_ is Star!969) (regex!745 (rule!1332 separatorToken!170)))) b!279770))

(assert (= (and b!278573 ((_ is Union!969) (regex!745 (rule!1332 separatorToken!170)))) b!279771))

(declare-fun b!279776 () Bool)

(declare-fun e!174099 () Bool)

(declare-fun tp!104202 () Bool)

(assert (=> b!279776 (= e!174099 (and tp_is_empty!1835 tp!104202))))

(assert (=> b!278565 (= tp!104101 e!174099)))

(assert (= (and b!278565 ((_ is Cons!3893) (originalCharacters!788 (h!9292 tokens!465)))) b!279776))

(declare-fun b!279787 () Bool)

(declare-fun b_free!10337 () Bool)

(declare-fun b_next!10337 () Bool)

(assert (=> b!279787 (= b_free!10337 (not b_next!10337))))

(declare-fun tp!104212 () Bool)

(declare-fun b_and!22441 () Bool)

(assert (=> b!279787 (= tp!104212 b_and!22441)))

(declare-fun b_free!10339 () Bool)

(declare-fun b_next!10339 () Bool)

(assert (=> b!279787 (= b_free!10339 (not b_next!10339))))

(declare-fun t!39301 () Bool)

(declare-fun tb!15915 () Bool)

(assert (=> (and b!279787 (= (toChars!1347 (transformation!745 (h!9291 (t!39218 rules!1920)))) (toChars!1347 (transformation!745 (rule!1332 separatorToken!170)))) t!39301) tb!15915))

(declare-fun result!19646 () Bool)

(assert (= result!19646 result!19620))

(assert (=> b!279661 t!39301))

(declare-fun tb!15917 () Bool)

(declare-fun t!39303 () Bool)

(assert (=> (and b!279787 (= (toChars!1347 (transformation!745 (h!9291 (t!39218 rules!1920)))) (toChars!1347 (transformation!745 (rule!1332 (h!9292 tokens!465))))) t!39303) tb!15917))

(declare-fun result!19648 () Bool)

(assert (= result!19648 result!19626))

(assert (=> d!81684 t!39303))

(assert (=> d!81668 t!39301))

(assert (=> b!279663 t!39303))

(declare-fun tb!15919 () Bool)

(declare-fun t!39305 () Bool)

(assert (=> (and b!279787 (= (toChars!1347 (transformation!745 (h!9291 (t!39218 rules!1920)))) (toChars!1347 (transformation!745 (rule!1332 lt!116283)))) t!39305) tb!15919))

(declare-fun result!19650 () Bool)

(assert (= result!19650 result!19586))

(assert (=> d!81348 t!39305))

(declare-fun b_and!22443 () Bool)

(declare-fun tp!104213 () Bool)

(assert (=> b!279787 (= tp!104213 (and (=> t!39301 result!19646) (=> t!39305 result!19650) (=> t!39303 result!19648) b_and!22443))))

(declare-fun e!174110 () Bool)

(assert (=> b!279787 (= e!174110 (and tp!104212 tp!104213))))

(declare-fun tp!104211 () Bool)

(declare-fun b!279786 () Bool)

(declare-fun e!174108 () Bool)

(assert (=> b!279786 (= e!174108 (and tp!104211 (inv!4810 (tag!955 (h!9291 (t!39218 rules!1920)))) (inv!4814 (transformation!745 (h!9291 (t!39218 rules!1920)))) e!174110))))

(declare-fun b!279785 () Bool)

(declare-fun e!174111 () Bool)

(declare-fun tp!104214 () Bool)

(assert (=> b!279785 (= e!174111 (and e!174108 tp!104214))))

(assert (=> b!278596 (= tp!104103 e!174111)))

(assert (= b!279786 b!279787))

(assert (= b!279785 b!279786))

(assert (= (and b!278596 ((_ is Cons!3894) (t!39218 rules!1920))) b!279785))

(declare-fun m!357883 () Bool)

(assert (=> b!279786 m!357883))

(declare-fun m!357885 () Bool)

(assert (=> b!279786 m!357885))

(declare-fun e!174112 () Bool)

(assert (=> b!278567 (= tp!104095 e!174112)))

(declare-fun b!279789 () Bool)

(declare-fun tp!104215 () Bool)

(declare-fun tp!104216 () Bool)

(assert (=> b!279789 (= e!174112 (and tp!104215 tp!104216))))

(declare-fun b!279790 () Bool)

(declare-fun tp!104217 () Bool)

(assert (=> b!279790 (= e!174112 tp!104217)))

(declare-fun b!279791 () Bool)

(declare-fun tp!104219 () Bool)

(declare-fun tp!104218 () Bool)

(assert (=> b!279791 (= e!174112 (and tp!104219 tp!104218))))

(declare-fun b!279788 () Bool)

(assert (=> b!279788 (= e!174112 tp_is_empty!1835)))

(assert (= (and b!278567 ((_ is ElementMatch!969) (regex!745 (h!9291 rules!1920)))) b!279788))

(assert (= (and b!278567 ((_ is Concat!1737) (regex!745 (h!9291 rules!1920)))) b!279789))

(assert (= (and b!278567 ((_ is Star!969) (regex!745 (h!9291 rules!1920)))) b!279790))

(assert (= (and b!278567 ((_ is Union!969) (regex!745 (h!9291 rules!1920)))) b!279791))

(declare-fun e!174113 () Bool)

(assert (=> b!278568 (= tp!104092 e!174113)))

(declare-fun b!279793 () Bool)

(declare-fun tp!104220 () Bool)

(declare-fun tp!104221 () Bool)

(assert (=> b!279793 (= e!174113 (and tp!104220 tp!104221))))

(declare-fun b!279794 () Bool)

(declare-fun tp!104222 () Bool)

(assert (=> b!279794 (= e!174113 tp!104222)))

(declare-fun b!279795 () Bool)

(declare-fun tp!104224 () Bool)

(declare-fun tp!104223 () Bool)

(assert (=> b!279795 (= e!174113 (and tp!104224 tp!104223))))

(declare-fun b!279792 () Bool)

(assert (=> b!279792 (= e!174113 tp_is_empty!1835)))

(assert (= (and b!278568 ((_ is ElementMatch!969) (regex!745 (rule!1332 (h!9292 tokens!465))))) b!279792))

(assert (= (and b!278568 ((_ is Concat!1737) (regex!745 (rule!1332 (h!9292 tokens!465))))) b!279793))

(assert (= (and b!278568 ((_ is Star!969) (regex!745 (rule!1332 (h!9292 tokens!465))))) b!279794))

(assert (= (and b!278568 ((_ is Union!969) (regex!745 (rule!1332 (h!9292 tokens!465))))) b!279795))

(declare-fun b!279796 () Bool)

(declare-fun e!174114 () Bool)

(declare-fun tp!104225 () Bool)

(assert (=> b!279796 (= e!174114 (and tp_is_empty!1835 tp!104225))))

(assert (=> b!278598 (= tp!104094 e!174114)))

(assert (= (and b!278598 ((_ is Cons!3893) (originalCharacters!788 separatorToken!170))) b!279796))

(declare-fun b_lambda!9041 () Bool)

(assert (= b_lambda!9029 (or (and b!278571 b_free!10315) (and b!278569 b_free!10319 (= (toChars!1347 (transformation!745 (rule!1332 (h!9292 tokens!465)))) (toChars!1347 (transformation!745 (rule!1332 separatorToken!170))))) (and b!279754 b_free!10335 (= (toChars!1347 (transformation!745 (rule!1332 (h!9292 (t!39219 tokens!465))))) (toChars!1347 (transformation!745 (rule!1332 separatorToken!170))))) (and b!279787 b_free!10339 (= (toChars!1347 (transformation!745 (h!9291 (t!39218 rules!1920)))) (toChars!1347 (transformation!745 (rule!1332 separatorToken!170))))) (and b!278555 b_free!10323 (= (toChars!1347 (transformation!745 (h!9291 rules!1920))) (toChars!1347 (transformation!745 (rule!1332 separatorToken!170))))) b_lambda!9041)))

(declare-fun b_lambda!9043 () Bool)

(assert (= b_lambda!9037 (or b!278584 b_lambda!9043)))

(declare-fun bs!31342 () Bool)

(declare-fun d!81750 () Bool)

(assert (= bs!31342 (and d!81750 b!278584)))

(assert (=> bs!31342 (= (dynLambda!2038 lambda!9520 (h!9292 tokens!465)) (rulesProduceIndividualToken!380 thiss!17480 rules!1920 (h!9292 tokens!465)))))

(assert (=> bs!31342 m!355757))

(assert (=> d!81716 d!81750))

(declare-fun b_lambda!9045 () Bool)

(assert (= b_lambda!9033 (or (and b!278571 b_free!10315) (and b!278569 b_free!10319 (= (toChars!1347 (transformation!745 (rule!1332 (h!9292 tokens!465)))) (toChars!1347 (transformation!745 (rule!1332 separatorToken!170))))) (and b!279754 b_free!10335 (= (toChars!1347 (transformation!745 (rule!1332 (h!9292 (t!39219 tokens!465))))) (toChars!1347 (transformation!745 (rule!1332 separatorToken!170))))) (and b!279787 b_free!10339 (= (toChars!1347 (transformation!745 (h!9291 (t!39218 rules!1920)))) (toChars!1347 (transformation!745 (rule!1332 separatorToken!170))))) (and b!278555 b_free!10323 (= (toChars!1347 (transformation!745 (h!9291 rules!1920))) (toChars!1347 (transformation!745 (rule!1332 separatorToken!170))))) b_lambda!9045)))

(declare-fun b_lambda!9047 () Bool)

(assert (= b_lambda!9031 (or (and b!279754 b_free!10335 (= (toChars!1347 (transformation!745 (rule!1332 (h!9292 (t!39219 tokens!465))))) (toChars!1347 (transformation!745 (rule!1332 (h!9292 tokens!465)))))) (and b!278569 b_free!10319) (and b!278555 b_free!10323 (= (toChars!1347 (transformation!745 (h!9291 rules!1920))) (toChars!1347 (transformation!745 (rule!1332 (h!9292 tokens!465)))))) (and b!279787 b_free!10339 (= (toChars!1347 (transformation!745 (h!9291 (t!39218 rules!1920)))) (toChars!1347 (transformation!745 (rule!1332 (h!9292 tokens!465)))))) (and b!278571 b_free!10315 (= (toChars!1347 (transformation!745 (rule!1332 separatorToken!170))) (toChars!1347 (transformation!745 (rule!1332 (h!9292 tokens!465)))))) b_lambda!9047)))

(declare-fun b_lambda!9049 () Bool)

(assert (= b_lambda!8991 (or b!278563 b_lambda!9049)))

(declare-fun bs!31343 () Bool)

(declare-fun d!81752 () Bool)

(assert (= bs!31343 (and d!81752 b!278563)))

(assert (=> bs!31343 (= (dynLambda!2038 lambda!9519 (h!9292 (_1!2423 (lexList!219 thiss!17480 rules!1920 lt!116272)))) (not (isSeparator!745 (rule!1332 (h!9292 (_1!2423 (lexList!219 thiss!17480 rules!1920 lt!116272)))))))))

(assert (=> b!278792 d!81752))

(declare-fun b_lambda!9051 () Bool)

(assert (= b_lambda!9035 (or (and b!279754 b_free!10335 (= (toChars!1347 (transformation!745 (rule!1332 (h!9292 (t!39219 tokens!465))))) (toChars!1347 (transformation!745 (rule!1332 (h!9292 tokens!465)))))) (and b!278569 b_free!10319) (and b!278555 b_free!10323 (= (toChars!1347 (transformation!745 (h!9291 rules!1920))) (toChars!1347 (transformation!745 (rule!1332 (h!9292 tokens!465)))))) (and b!279787 b_free!10339 (= (toChars!1347 (transformation!745 (h!9291 (t!39218 rules!1920)))) (toChars!1347 (transformation!745 (rule!1332 (h!9292 tokens!465)))))) (and b!278571 b_free!10315 (= (toChars!1347 (transformation!745 (rule!1332 separatorToken!170))) (toChars!1347 (transformation!745 (rule!1332 (h!9292 tokens!465)))))) b_lambda!9051)))

(declare-fun b_lambda!9053 () Bool)

(assert (= b_lambda!9039 (or b!278563 b_lambda!9053)))

(declare-fun bs!31344 () Bool)

(declare-fun d!81754 () Bool)

(assert (= bs!31344 (and d!81754 b!278563)))

(assert (=> bs!31344 (= (dynLambda!2038 lambda!9519 (h!9292 tokens!465)) (not (isSeparator!745 (rule!1332 (h!9292 tokens!465)))))))

(assert (=> b!279734 d!81754))

(declare-fun b_lambda!9055 () Bool)

(assert (= b_lambda!8997 (or b!278563 b_lambda!9055)))

(declare-fun bs!31345 () Bool)

(declare-fun d!81756 () Bool)

(assert (= bs!31345 (and d!81756 b!278563)))

(assert (=> bs!31345 (= (dynLambda!2038 lambda!9519 (h!9292 lt!116273)) (not (isSeparator!745 (rule!1332 (h!9292 lt!116273)))))))

(assert (=> b!278994 d!81756))

(declare-fun b_lambda!9057 () Bool)

(assert (= b_lambda!9001 (or b!278584 b_lambda!9057)))

(declare-fun bs!31346 () Bool)

(declare-fun d!81758 () Bool)

(assert (= bs!31346 (and d!81758 b!278584)))

(assert (=> bs!31346 (= (dynLambda!2038 lambda!9520 lt!116283) (rulesProduceIndividualToken!380 thiss!17480 rules!1920 lt!116283))))

(assert (=> bs!31346 m!355859))

(assert (=> d!81458 d!81758))

(check-sat (not d!81356) (not b!279617) (not b!279577) (not b!279138) (not b!279755) (not d!81402) (not b!278811) (not d!81734) (not d!81396) (not d!81540) (not b_next!10339) (not bm!15543) (not b!279585) (not b!279703) (not b!279738) (not d!81668) (not b!278862) (not d!81706) (not b!278772) (not b!279590) (not b!279092) (not d!81350) (not b!279793) (not b_lambda!9043) (not b!279267) (not bm!15465) (not b!279628) (not b_next!10333) (not b!279794) (not d!81436) (not b!279646) (not d!81344) (not b!279212) (not bm!15476) b_and!22433 (not b!279094) (not d!81496) (not b!279111) (not b!279282) (not b!279712) (not b!279696) (not b!278858) (not b_lambda!9055) (not b!279216) (not b!278992) (not b!279695) (not d!81530) (not b!278985) (not b!279796) (not b!279236) (not b!278993) (not b!279274) (not b!279139) (not bm!15527) (not b!279215) (not bm!15530) (not d!81712) (not b!279581) (not d!81516) (not b_lambda!9053) (not b!279642) (not d!81316) (not d!81678) (not b!279281) (not b!279706) (not b!279579) b_and!22435 (not d!81708) (not bm!15471) (not b!279627) (not b!279232) (not d!81742) (not b!279228) (not b!279143) (not b!279751) (not b!279653) (not bm!15423) (not b!278963) (not b!279724) (not d!81466) (not bm!15466) b_and!22361 (not bm!15529) (not b!279639) (not b!279612) (not b!279072) (not d!81456) (not bm!15523) (not b!278777) (not b!279213) (not b!279208) (not d!81688) (not b!279649) (not b_lambda!9041) (not bs!31342) (not d!81346) (not b!279663) (not b!279723) (not d!81460) b_and!22439 (not b!279790) (not b_next!10317) (not b!279071) (not d!81398) (not b!279710) (not b!279640) (not bm!15507) (not b!278965) (not d!81700) (not b!279217) (not b!279601) (not b!279697) (not b!278776) (not d!81462) (not b!279276) (not b!279142) (not b!279269) (not d!81716) (not b!279791) (not b_lambda!9049) (not b!278774) (not d!81378) (not b_next!10321) (not d!81384) (not b!279211) (not d!81334) (not b!279676) (not d!81340) (not b_lambda!9057) (not b!279789) (not d!81714) tp_is_empty!1835 b_and!22443 (not bm!15442) (not b!279635) (not b!279615) (not b!279718) (not b!278999) (not b!279698) (not b!278959) (not bm!15470) (not b!279662) (not b_next!10337) (not b!279618) (not b!279279) (not b!279591) (not b!279728) (not b!279210) (not b!278749) (not d!81632) (not b!279275) (not b!279233) (not b!279613) (not b!279595) (not b!279224) (not d!81404) (not bm!15508) (not d!81680) (not d!81524) (not bm!15472) (not d!81518) (not b!278808) (not b!279669) (not b!279700) (not b!278957) (not d!81506) (not d!81532) (not b!279795) (not b!279219) (not d!81504) (not d!81448) (not b!279265) (not b!279739) (not b!279449) (not d!81690) (not d!81676) (not d!81746) (not b!279582) (not b!279771) (not bm!15533) (not b!279453) (not b!279588) (not bm!15536) (not d!81674) (not b!278859) (not b!279629) (not b!279722) (not b!279598) (not b!279675) (not b!279785) (not bm!15535) (not b_next!10313) (not b_lambda!9051) (not b!278997) (not bm!15534) (not b!278864) (not b!279103) (not d!81682) b_and!22357 (not b_next!10323) (not b!279017) (not b!279291) (not bm!15537) (not b!279229) (not d!81738) (not bm!15528) (not b!279225) (not bm!15473) (not b!279140) (not b!279194) (not d!81672) (not d!81670) (not b!279594) (not d!81432) (not d!81394) (not b!279207) (not b!278962) (not b!278771) (not b!279736) (not b!279769) b_and!22437 (not d!81538) (not b!279287) (not b!279622) (not d!81338) (not b!279070) (not bm!15524) (not d!81728) (not d!81442) (not d!81392) (not tb!15897) (not d!81348) (not d!81694) (not b!278986) (not b!278809) (not b!279301) (not d!81502) (not b!279620) (not bm!15542) (not d!81458) (not b!278773) (not d!81434) (not b!279575) (not b!279752) (not b!279702) (not d!81528) (not b!279776) (not b!279726) (not d!81718) (not b!278868) (not d!81520) (not d!81450) (not b!279651) (not d!81684) (not b!278956) (not d!81704) (not b!279667) (not b!278866) (not b!278795) (not b!279637) b_and!22431 (not b!279708) (not b_next!10319) (not b!279725) b_and!22441 (not b!279735) (not b!279661) (not b!278861) (not bm!15509) (not b!278966) (not bm!15404) (not b!279753) (not tb!15873) b_and!22365 (not bm!15464) (not b!279454) (not d!81380) (not d!81494) (not b_lambda!8993) (not b!279206) (not d!81722) (not d!81698) (not d!81342) (not b!278863) (not b!278750) (not b!278865) (not b!279705) (not d!81542) (not d!81446) (not d!81692) (not d!81444) (not b!279719) (not b!279302) (not b!279446) (not d!81710) (not b!278867) (not b!278870) (not b!279144) (not b!279195) (not d!81534) (not b!279770) (not bs!31346) (not d!81358) (not b!279643) (not bm!15539) (not b!279786) (not b!279230) (not d!81544) (not b!279584) (not b!279105) (not b!279674) (not b!279599) (not b!279737) (not d!81522) (not b!278987) (not b!279717) (not b!279740) (not b!279633) (not d!81514) (not b!278823) (not b_lambda!9047) (not b_next!10315) (not b!278797) (not b!278775) (not bm!15407) (not d!81720) (not b!278869) (not bm!15506) (not tb!15903) (not b_next!10335) (not d!81548) (not b!278778) (not b!279091) (not b!279451) (not d!81354) (not b!279699) (not b!279664) (not d!81546) (not b!279197) (not b_lambda!9045) (not b!279665) (not b!279654) (not b!279209))
(check-sat (not b_next!10339) (not b_next!10333) b_and!22433 b_and!22435 b_and!22361 (not b_next!10321) b_and!22443 (not b_next!10337) b_and!22437 b_and!22365 (not b_next!10315) (not b_next!10335) b_and!22439 (not b_next!10317) (not b_next!10313) b_and!22357 (not b_next!10323) b_and!22441 b_and!22431 (not b_next!10319))
