; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!260054 () Bool)

(assert start!260054)

(declare-fun b!2673522 () Bool)

(declare-fun b_free!75337 () Bool)

(declare-fun b_next!76041 () Bool)

(assert (=> b!2673522 (= b_free!75337 (not b_next!76041))))

(declare-fun tp!845527 () Bool)

(declare-fun b_and!197525 () Bool)

(assert (=> b!2673522 (= tp!845527 b_and!197525)))

(declare-fun b_free!75339 () Bool)

(declare-fun b_next!76043 () Bool)

(assert (=> b!2673522 (= b_free!75339 (not b_next!76043))))

(declare-fun tp!845526 () Bool)

(declare-fun b_and!197527 () Bool)

(assert (=> b!2673522 (= tp!845526 b_and!197527)))

(declare-fun b!2673519 () Bool)

(declare-fun b_free!75341 () Bool)

(declare-fun b_next!76045 () Bool)

(assert (=> b!2673519 (= b_free!75341 (not b_next!76045))))

(declare-fun tp!845518 () Bool)

(declare-fun b_and!197529 () Bool)

(assert (=> b!2673519 (= tp!845518 b_and!197529)))

(declare-fun b_free!75343 () Bool)

(declare-fun b_next!76047 () Bool)

(assert (=> b!2673519 (= b_free!75343 (not b_next!76047))))

(declare-fun tp!845519 () Bool)

(declare-fun b_and!197531 () Bool)

(assert (=> b!2673519 (= tp!845519 b_and!197531)))

(declare-fun b!2673517 () Bool)

(declare-fun b_free!75345 () Bool)

(declare-fun b_next!76049 () Bool)

(assert (=> b!2673517 (= b_free!75345 (not b_next!76049))))

(declare-fun tp!845528 () Bool)

(declare-fun b_and!197533 () Bool)

(assert (=> b!2673517 (= tp!845528 b_and!197533)))

(declare-fun b_free!75347 () Bool)

(declare-fun b_next!76051 () Bool)

(assert (=> b!2673517 (= b_free!75347 (not b_next!76051))))

(declare-fun tp!845523 () Bool)

(declare-fun b_and!197535 () Bool)

(assert (=> b!2673517 (= tp!845523 b_and!197535)))

(declare-fun bs!479600 () Bool)

(declare-fun b!2673516 () Bool)

(declare-fun b!2673506 () Bool)

(assert (= bs!479600 (and b!2673516 b!2673506)))

(declare-fun lambda!99878 () Int)

(declare-fun lambda!99877 () Int)

(assert (=> bs!479600 (not (= lambda!99878 lambda!99877))))

(declare-fun b!2673537 () Bool)

(declare-fun e!1685241 () Bool)

(assert (=> b!2673537 (= e!1685241 true)))

(declare-fun b!2673536 () Bool)

(declare-fun e!1685240 () Bool)

(assert (=> b!2673536 (= e!1685240 e!1685241)))

(declare-fun b!2673535 () Bool)

(declare-fun e!1685239 () Bool)

(assert (=> b!2673535 (= e!1685239 e!1685240)))

(assert (=> b!2673516 e!1685239))

(assert (= b!2673536 b!2673537))

(assert (= b!2673535 b!2673536))

(declare-datatypes ((List!30877 0))(
  ( (Nil!30777) (Cons!30777 (h!36197 (_ BitVec 16)) (t!223502 List!30877)) )
))
(declare-datatypes ((TokenValue!4923 0))(
  ( (FloatLiteralValue!9846 (text!34906 List!30877)) (TokenValueExt!4922 (__x!19679 Int)) (Broken!24615 (value!151557 List!30877)) (Object!5022) (End!4923) (Def!4923) (Underscore!4923) (Match!4923) (Else!4923) (Error!4923) (Case!4923) (If!4923) (Extends!4923) (Abstract!4923) (Class!4923) (Val!4923) (DelimiterValue!9846 (del!4983 List!30877)) (KeywordValue!4929 (value!151558 List!30877)) (CommentValue!9846 (value!151559 List!30877)) (WhitespaceValue!9846 (value!151560 List!30877)) (IndentationValue!4923 (value!151561 List!30877)) (String!34498) (Int32!4923) (Broken!24616 (value!151562 List!30877)) (Boolean!4924) (Unit!44982) (OperatorValue!4926 (op!4983 List!30877)) (IdentifierValue!9846 (value!151563 List!30877)) (IdentifierValue!9847 (value!151564 List!30877)) (WhitespaceValue!9847 (value!151565 List!30877)) (True!9846) (False!9846) (Broken!24617 (value!151566 List!30877)) (Broken!24618 (value!151567 List!30877)) (True!9847) (RightBrace!4923) (RightBracket!4923) (Colon!4923) (Null!4923) (Comma!4923) (LeftBracket!4923) (False!9847) (LeftBrace!4923) (ImaginaryLiteralValue!4923 (text!34907 List!30877)) (StringLiteralValue!14769 (value!151568 List!30877)) (EOFValue!4923 (value!151569 List!30877)) (IdentValue!4923 (value!151570 List!30877)) (DelimiterValue!9847 (value!151571 List!30877)) (DedentValue!4923 (value!151572 List!30877)) (NewLineValue!4923 (value!151573 List!30877)) (IntegerValue!14769 (value!151574 (_ BitVec 32)) (text!34908 List!30877)) (IntegerValue!14770 (value!151575 Int) (text!34909 List!30877)) (Times!4923) (Or!4923) (Equal!4923) (Minus!4923) (Broken!24619 (value!151576 List!30877)) (And!4923) (Div!4923) (LessEqual!4923) (Mod!4923) (Concat!12768) (Not!4923) (Plus!4923) (SpaceValue!4923 (value!151577 List!30877)) (IntegerValue!14771 (value!151578 Int) (text!34910 List!30877)) (StringLiteralValue!14770 (text!34911 List!30877)) (FloatLiteralValue!9847 (text!34912 List!30877)) (BytesLiteralValue!4923 (value!151579 List!30877)) (CommentValue!9847 (value!151580 List!30877)) (StringLiteralValue!14771 (value!151581 List!30877)) (ErrorTokenValue!4923 (msg!4984 List!30877)) )
))
(declare-datatypes ((C!15848 0))(
  ( (C!15849 (val!9858 Int)) )
))
(declare-datatypes ((List!30878 0))(
  ( (Nil!30778) (Cons!30778 (h!36198 C!15848) (t!223503 List!30878)) )
))
(declare-datatypes ((IArray!19269 0))(
  ( (IArray!19270 (innerList!9692 List!30878)) )
))
(declare-datatypes ((Conc!9632 0))(
  ( (Node!9632 (left!23822 Conc!9632) (right!24152 Conc!9632) (csize!19494 Int) (cheight!9843 Int)) (Leaf!14723 (xs!12662 IArray!19269) (csize!19495 Int)) (Empty!9632) )
))
(declare-datatypes ((BalanceConc!18878 0))(
  ( (BalanceConc!18879 (c!430759 Conc!9632)) )
))
(declare-datatypes ((String!34499 0))(
  ( (String!34500 (value!151582 String)) )
))
(declare-datatypes ((Regex!7845 0))(
  ( (ElementMatch!7845 (c!430760 C!15848)) (Concat!12769 (regOne!16202 Regex!7845) (regTwo!16202 Regex!7845)) (EmptyExpr!7845) (Star!7845 (reg!8174 Regex!7845)) (EmptyLang!7845) (Union!7845 (regOne!16203 Regex!7845) (regTwo!16203 Regex!7845)) )
))
(declare-datatypes ((TokenValueInjection!9286 0))(
  ( (TokenValueInjection!9287 (toValue!6643 Int) (toChars!6502 Int)) )
))
(declare-datatypes ((Rule!9202 0))(
  ( (Rule!9203 (regex!4701 Regex!7845) (tag!5203 String!34499) (isSeparator!4701 Bool) (transformation!4701 TokenValueInjection!9286)) )
))
(declare-datatypes ((List!30879 0))(
  ( (Nil!30779) (Cons!30779 (h!36199 Rule!9202) (t!223504 List!30879)) )
))
(declare-fun rules!1712 () List!30879)

(get-info :version)

(assert (= (and b!2673516 ((_ is Cons!30779) rules!1712)) b!2673535))

(declare-fun order!16957 () Int)

(declare-fun order!16955 () Int)

(declare-fun dynLambda!13356 (Int Int) Int)

(declare-fun dynLambda!13357 (Int Int) Int)

(assert (=> b!2673537 (< (dynLambda!13356 order!16955 (toValue!6643 (transformation!4701 (h!36199 rules!1712)))) (dynLambda!13357 order!16957 lambda!99878))))

(declare-fun order!16959 () Int)

(declare-fun dynLambda!13358 (Int Int) Int)

(assert (=> b!2673537 (< (dynLambda!13358 order!16959 (toChars!6502 (transformation!4701 (h!36199 rules!1712)))) (dynLambda!13357 order!16957 lambda!99878))))

(assert (=> b!2673516 true))

(declare-fun res!1124015 () Bool)

(declare-fun e!1685218 () Bool)

(assert (=> start!260054 (=> (not res!1124015) (not e!1685218))))

(declare-datatypes ((LexerInterface!4298 0))(
  ( (LexerInterfaceExt!4295 (__x!19680 Int)) (Lexer!4296) )
))
(declare-fun thiss!14116 () LexerInterface!4298)

(assert (=> start!260054 (= res!1124015 ((_ is Lexer!4296) thiss!14116))))

(assert (=> start!260054 e!1685218))

(assert (=> start!260054 true))

(declare-fun e!1685219 () Bool)

(assert (=> start!260054 e!1685219))

(declare-fun e!1685230 () Bool)

(assert (=> start!260054 e!1685230))

(declare-datatypes ((Token!8872 0))(
  ( (Token!8873 (value!151583 TokenValue!4923) (rule!7107 Rule!9202) (size!23781 Int) (originalCharacters!5467 List!30878)) )
))
(declare-fun separatorToken!152 () Token!8872)

(declare-fun e!1685223 () Bool)

(declare-fun inv!41785 (Token!8872) Bool)

(assert (=> start!260054 (and (inv!41785 separatorToken!152) e!1685223)))

(declare-fun res!1124014 () Bool)

(assert (=> b!2673506 (=> (not res!1124014) (not e!1685218))))

(declare-datatypes ((List!30880 0))(
  ( (Nil!30780) (Cons!30780 (h!36200 Token!8872) (t!223505 List!30880)) )
))
(declare-fun l!4335 () List!30880)

(declare-fun forall!6516 (List!30880 Int) Bool)

(assert (=> b!2673506 (= res!1124014 (forall!6516 l!4335 lambda!99877))))

(declare-fun tp!845529 () Bool)

(declare-fun e!1685226 () Bool)

(declare-fun e!1685216 () Bool)

(declare-fun b!2673507 () Bool)

(declare-fun inv!41782 (String!34499) Bool)

(declare-fun inv!41786 (TokenValueInjection!9286) Bool)

(assert (=> b!2673507 (= e!1685226 (and tp!845529 (inv!41782 (tag!5203 (h!36199 rules!1712))) (inv!41786 (transformation!4701 (h!36199 rules!1712))) e!1685216))))

(declare-fun b!2673508 () Bool)

(declare-fun res!1124018 () Bool)

(assert (=> b!2673508 (=> (not res!1124018) (not e!1685218))))

(assert (=> b!2673508 (= res!1124018 (isSeparator!4701 (rule!7107 separatorToken!152)))))

(declare-fun b!2673509 () Bool)

(declare-fun tp!845520 () Bool)

(assert (=> b!2673509 (= e!1685219 (and e!1685226 tp!845520))))

(declare-fun b!2673510 () Bool)

(declare-fun res!1124016 () Bool)

(assert (=> b!2673510 (=> (not res!1124016) (not e!1685218))))

(declare-fun rulesProduceIndividualToken!2010 (LexerInterface!4298 List!30879 Token!8872) Bool)

(assert (=> b!2673510 (= res!1124016 (rulesProduceIndividualToken!2010 thiss!14116 rules!1712 separatorToken!152))))

(declare-fun b!2673511 () Bool)

(declare-fun res!1124013 () Bool)

(assert (=> b!2673511 (=> (not res!1124013) (not e!1685218))))

(declare-fun isEmpty!17599 (List!30879) Bool)

(assert (=> b!2673511 (= res!1124013 (not (isEmpty!17599 rules!1712)))))

(declare-fun tp!845524 () Bool)

(declare-fun b!2673512 () Bool)

(declare-fun e!1685222 () Bool)

(assert (=> b!2673512 (= e!1685230 (and (inv!41785 (h!36200 l!4335)) e!1685222 tp!845524))))

(declare-fun e!1685217 () Bool)

(declare-fun b!2673513 () Bool)

(declare-fun tp!845525 () Bool)

(declare-fun inv!21 (TokenValue!4923) Bool)

(assert (=> b!2673513 (= e!1685222 (and (inv!21 (value!151583 (h!36200 l!4335))) e!1685217 tp!845525))))

(declare-fun e!1685220 () Bool)

(declare-fun b!2673514 () Bool)

(declare-fun e!1685228 () Bool)

(declare-fun tp!845530 () Bool)

(assert (=> b!2673514 (= e!1685220 (and tp!845530 (inv!41782 (tag!5203 (rule!7107 separatorToken!152))) (inv!41786 (transformation!4701 (rule!7107 separatorToken!152))) e!1685228))))

(declare-fun lt!941342 () List!30878)

(declare-fun b!2673515 () Bool)

(declare-fun lt!941338 () List!30878)

(declare-fun lt!941339 () List!30878)

(declare-fun e!1685231 () Bool)

(assert (=> b!2673515 (= e!1685231 (not (or (not (= lt!941342 lt!941338)) (= lt!941338 lt!941339))))))

(declare-fun printList!1190 (LexerInterface!4298 List!30880) List!30878)

(assert (=> b!2673515 (= lt!941338 (printList!1190 thiss!14116 (Cons!30780 (h!36200 l!4335) Nil!30780)))))

(declare-fun lt!941344 () BalanceConc!18878)

(declare-fun list!11619 (BalanceConc!18878) List!30878)

(assert (=> b!2673515 (= lt!941342 (list!11619 lt!941344))))

(declare-datatypes ((IArray!19271 0))(
  ( (IArray!19272 (innerList!9693 List!30880)) )
))
(declare-datatypes ((Conc!9633 0))(
  ( (Node!9633 (left!23823 Conc!9633) (right!24153 Conc!9633) (csize!19496 Int) (cheight!9844 Int)) (Leaf!14724 (xs!12663 IArray!19271) (csize!19497 Int)) (Empty!9633) )
))
(declare-datatypes ((BalanceConc!18880 0))(
  ( (BalanceConc!18881 (c!430761 Conc!9633)) )
))
(declare-fun lt!941343 () BalanceConc!18880)

(declare-fun printTailRec!1151 (LexerInterface!4298 BalanceConc!18880 Int BalanceConc!18878) BalanceConc!18878)

(assert (=> b!2673515 (= lt!941344 (printTailRec!1151 thiss!14116 lt!941343 0 (BalanceConc!18879 Empty!9632)))))

(declare-fun print!1677 (LexerInterface!4298 BalanceConc!18880) BalanceConc!18878)

(assert (=> b!2673515 (= lt!941344 (print!1677 thiss!14116 lt!941343))))

(declare-fun singletonSeq!2098 (Token!8872) BalanceConc!18880)

(assert (=> b!2673515 (= lt!941343 (singletonSeq!2098 (h!36200 l!4335)))))

(assert (=> b!2673516 (= e!1685218 e!1685231)))

(declare-fun res!1124010 () Bool)

(assert (=> b!2673516 (=> (not res!1124010) (not e!1685231))))

(declare-fun lt!941337 () Bool)

(declare-datatypes ((tuple2!30226 0))(
  ( (tuple2!30227 (_1!17655 Token!8872) (_2!17655 List!30878)) )
))
(declare-datatypes ((Option!6090 0))(
  ( (None!6089) (Some!6089 (v!32632 tuple2!30226)) )
))
(declare-fun lt!941341 () Option!6090)

(assert (=> b!2673516 (= res!1124010 (and (or lt!941337 (not (= (_1!17655 (v!32632 lt!941341)) (h!36200 l!4335)))) (or lt!941337 (= (_1!17655 (v!32632 lt!941341)) (h!36200 l!4335))) ((_ is None!6089) lt!941341)))))

(assert (=> b!2673516 (= lt!941337 (not ((_ is Some!6089) lt!941341)))))

(declare-fun lt!941340 () List!30878)

(declare-fun maxPrefix!2336 (LexerInterface!4298 List!30879 List!30878) Option!6090)

(declare-fun ++!7507 (List!30878 List!30878) List!30878)

(assert (=> b!2673516 (= lt!941341 (maxPrefix!2336 thiss!14116 rules!1712 (++!7507 lt!941339 lt!941340)))))

(declare-fun charsOf!2964 (Token!8872) BalanceConc!18878)

(assert (=> b!2673516 (= lt!941339 (list!11619 (charsOf!2964 (h!36200 l!4335))))))

(declare-fun printWithSeparatorTokenWhenNeededList!692 (LexerInterface!4298 List!30879 List!30880 Token!8872) List!30878)

(assert (=> b!2673516 (= lt!941340 (printWithSeparatorTokenWhenNeededList!692 thiss!14116 rules!1712 (t!223505 l!4335) separatorToken!152))))

(declare-datatypes ((Unit!44983 0))(
  ( (Unit!44984) )
))
(declare-fun lt!941336 () Unit!44983)

(declare-fun forallContained!1041 (List!30880 Int Token!8872) Unit!44983)

(assert (=> b!2673516 (= lt!941336 (forallContained!1041 l!4335 lambda!99878 (h!36200 l!4335)))))

(assert (=> b!2673517 (= e!1685228 (and tp!845528 tp!845523))))

(declare-fun b!2673518 () Bool)

(declare-fun res!1124011 () Bool)

(assert (=> b!2673518 (=> (not res!1124011) (not e!1685218))))

(declare-fun rulesProduceEachTokenIndividuallyList!1520 (LexerInterface!4298 List!30879 List!30880) Bool)

(assert (=> b!2673518 (= res!1124011 (rulesProduceEachTokenIndividuallyList!1520 thiss!14116 rules!1712 l!4335))))

(declare-fun e!1685227 () Bool)

(assert (=> b!2673519 (= e!1685227 (and tp!845518 tp!845519))))

(declare-fun b!2673520 () Bool)

(declare-fun res!1124017 () Bool)

(assert (=> b!2673520 (=> (not res!1124017) (not e!1685218))))

(declare-fun sepAndNonSepRulesDisjointChars!1274 (List!30879 List!30879) Bool)

(assert (=> b!2673520 (= res!1124017 (sepAndNonSepRulesDisjointChars!1274 rules!1712 rules!1712))))

(declare-fun b!2673521 () Bool)

(declare-fun res!1124012 () Bool)

(assert (=> b!2673521 (=> (not res!1124012) (not e!1685218))))

(declare-fun rulesInvariant!3798 (LexerInterface!4298 List!30879) Bool)

(assert (=> b!2673521 (= res!1124012 (rulesInvariant!3798 thiss!14116 rules!1712))))

(assert (=> b!2673522 (= e!1685216 (and tp!845527 tp!845526))))

(declare-fun tp!845522 () Bool)

(declare-fun b!2673523 () Bool)

(assert (=> b!2673523 (= e!1685217 (and tp!845522 (inv!41782 (tag!5203 (rule!7107 (h!36200 l!4335)))) (inv!41786 (transformation!4701 (rule!7107 (h!36200 l!4335)))) e!1685227))))

(declare-fun b!2673524 () Bool)

(declare-fun res!1124009 () Bool)

(assert (=> b!2673524 (=> (not res!1124009) (not e!1685218))))

(declare-fun contains!5915 (List!30880 Token!8872) Bool)

(assert (=> b!2673524 (= res!1124009 (contains!5915 l!4335 (h!36200 l!4335)))))

(declare-fun b!2673525 () Bool)

(declare-fun res!1124019 () Bool)

(assert (=> b!2673525 (=> (not res!1124019) (not e!1685218))))

(assert (=> b!2673525 (= res!1124019 ((_ is Cons!30780) l!4335))))

(declare-fun b!2673526 () Bool)

(declare-fun tp!845521 () Bool)

(assert (=> b!2673526 (= e!1685223 (and (inv!21 (value!151583 separatorToken!152)) e!1685220 tp!845521))))

(assert (= (and start!260054 res!1124015) b!2673511))

(assert (= (and b!2673511 res!1124013) b!2673521))

(assert (= (and b!2673521 res!1124012) b!2673518))

(assert (= (and b!2673518 res!1124011) b!2673510))

(assert (= (and b!2673510 res!1124016) b!2673508))

(assert (= (and b!2673508 res!1124018) b!2673506))

(assert (= (and b!2673506 res!1124014) b!2673520))

(assert (= (and b!2673520 res!1124017) b!2673525))

(assert (= (and b!2673525 res!1124019) b!2673524))

(assert (= (and b!2673524 res!1124009) b!2673516))

(assert (= (and b!2673516 res!1124010) b!2673515))

(assert (= b!2673507 b!2673522))

(assert (= b!2673509 b!2673507))

(assert (= (and start!260054 ((_ is Cons!30779) rules!1712)) b!2673509))

(assert (= b!2673523 b!2673519))

(assert (= b!2673513 b!2673523))

(assert (= b!2673512 b!2673513))

(assert (= (and start!260054 ((_ is Cons!30780) l!4335)) b!2673512))

(assert (= b!2673514 b!2673517))

(assert (= b!2673526 b!2673514))

(assert (= start!260054 b!2673526))

(declare-fun m!3039415 () Bool)

(assert (=> b!2673526 m!3039415))

(declare-fun m!3039417 () Bool)

(assert (=> b!2673507 m!3039417))

(declare-fun m!3039419 () Bool)

(assert (=> b!2673507 m!3039419))

(declare-fun m!3039421 () Bool)

(assert (=> b!2673515 m!3039421))

(declare-fun m!3039423 () Bool)

(assert (=> b!2673515 m!3039423))

(declare-fun m!3039425 () Bool)

(assert (=> b!2673515 m!3039425))

(declare-fun m!3039427 () Bool)

(assert (=> b!2673515 m!3039427))

(declare-fun m!3039429 () Bool)

(assert (=> b!2673515 m!3039429))

(declare-fun m!3039431 () Bool)

(assert (=> b!2673521 m!3039431))

(declare-fun m!3039433 () Bool)

(assert (=> b!2673524 m!3039433))

(declare-fun m!3039435 () Bool)

(assert (=> b!2673514 m!3039435))

(declare-fun m!3039437 () Bool)

(assert (=> b!2673514 m!3039437))

(declare-fun m!3039439 () Bool)

(assert (=> b!2673506 m!3039439))

(declare-fun m!3039441 () Bool)

(assert (=> b!2673510 m!3039441))

(declare-fun m!3039443 () Bool)

(assert (=> start!260054 m!3039443))

(declare-fun m!3039445 () Bool)

(assert (=> b!2673512 m!3039445))

(declare-fun m!3039447 () Bool)

(assert (=> b!2673523 m!3039447))

(declare-fun m!3039449 () Bool)

(assert (=> b!2673523 m!3039449))

(declare-fun m!3039451 () Bool)

(assert (=> b!2673516 m!3039451))

(declare-fun m!3039453 () Bool)

(assert (=> b!2673516 m!3039453))

(declare-fun m!3039455 () Bool)

(assert (=> b!2673516 m!3039455))

(declare-fun m!3039457 () Bool)

(assert (=> b!2673516 m!3039457))

(declare-fun m!3039459 () Bool)

(assert (=> b!2673516 m!3039459))

(declare-fun m!3039461 () Bool)

(assert (=> b!2673516 m!3039461))

(assert (=> b!2673516 m!3039453))

(assert (=> b!2673516 m!3039457))

(declare-fun m!3039463 () Bool)

(assert (=> b!2673511 m!3039463))

(declare-fun m!3039465 () Bool)

(assert (=> b!2673518 m!3039465))

(declare-fun m!3039467 () Bool)

(assert (=> b!2673520 m!3039467))

(declare-fun m!3039469 () Bool)

(assert (=> b!2673513 m!3039469))

(check-sat (not b!2673514) (not b!2673512) (not b!2673520) (not b!2673518) (not b!2673523) (not b!2673524) (not b_next!76047) b_and!197529 (not b!2673509) b_and!197531 (not b!2673515) (not b!2673510) (not b!2673535) (not b!2673526) b_and!197525 b_and!197533 (not b!2673513) (not b!2673521) (not b!2673516) (not b_next!76049) b_and!197527 (not b_next!76041) (not start!260054) (not b!2673507) (not b_next!76043) (not b!2673506) (not b_next!76051) (not b!2673511) (not b_next!76045) b_and!197535)
(check-sat (not b_next!76047) b_and!197529 b_and!197531 (not b_next!76041) (not b_next!76043) (not b_next!76051) b_and!197533 b_and!197525 (not b_next!76049) b_and!197527 (not b_next!76045) b_and!197535)
(get-model)

(declare-fun d!764261 () Bool)

(declare-fun lt!941389 () Bool)

(declare-fun e!1685318 () Bool)

(assert (=> d!764261 (= lt!941389 e!1685318)))

(declare-fun res!1124088 () Bool)

(assert (=> d!764261 (=> (not res!1124088) (not e!1685318))))

(declare-fun list!11622 (BalanceConc!18880) List!30880)

(declare-datatypes ((tuple2!30228 0))(
  ( (tuple2!30229 (_1!17656 BalanceConc!18880) (_2!17656 BalanceConc!18878)) )
))
(declare-fun lex!1932 (LexerInterface!4298 List!30879 BalanceConc!18878) tuple2!30228)

(assert (=> d!764261 (= res!1124088 (= (list!11622 (_1!17656 (lex!1932 thiss!14116 rules!1712 (print!1677 thiss!14116 (singletonSeq!2098 separatorToken!152))))) (list!11622 (singletonSeq!2098 separatorToken!152))))))

(declare-fun e!1685317 () Bool)

(assert (=> d!764261 (= lt!941389 e!1685317)))

(declare-fun res!1124087 () Bool)

(assert (=> d!764261 (=> (not res!1124087) (not e!1685317))))

(declare-fun lt!941388 () tuple2!30228)

(declare-fun size!23784 (BalanceConc!18880) Int)

(assert (=> d!764261 (= res!1124087 (= (size!23784 (_1!17656 lt!941388)) 1))))

(assert (=> d!764261 (= lt!941388 (lex!1932 thiss!14116 rules!1712 (print!1677 thiss!14116 (singletonSeq!2098 separatorToken!152))))))

(assert (=> d!764261 (not (isEmpty!17599 rules!1712))))

(assert (=> d!764261 (= (rulesProduceIndividualToken!2010 thiss!14116 rules!1712 separatorToken!152) lt!941389)))

(declare-fun b!2673642 () Bool)

(declare-fun res!1124089 () Bool)

(assert (=> b!2673642 (=> (not res!1124089) (not e!1685317))))

(declare-fun apply!7376 (BalanceConc!18880 Int) Token!8872)

(assert (=> b!2673642 (= res!1124089 (= (apply!7376 (_1!17656 lt!941388) 0) separatorToken!152))))

(declare-fun b!2673643 () Bool)

(declare-fun isEmpty!17602 (BalanceConc!18878) Bool)

(assert (=> b!2673643 (= e!1685317 (isEmpty!17602 (_2!17656 lt!941388)))))

(declare-fun b!2673644 () Bool)

(assert (=> b!2673644 (= e!1685318 (isEmpty!17602 (_2!17656 (lex!1932 thiss!14116 rules!1712 (print!1677 thiss!14116 (singletonSeq!2098 separatorToken!152))))))))

(assert (= (and d!764261 res!1124087) b!2673642))

(assert (= (and b!2673642 res!1124089) b!2673643))

(assert (= (and d!764261 res!1124088) b!2673644))

(declare-fun m!3039607 () Bool)

(assert (=> d!764261 m!3039607))

(declare-fun m!3039609 () Bool)

(assert (=> d!764261 m!3039609))

(assert (=> d!764261 m!3039607))

(declare-fun m!3039611 () Bool)

(assert (=> d!764261 m!3039611))

(declare-fun m!3039613 () Bool)

(assert (=> d!764261 m!3039613))

(assert (=> d!764261 m!3039463))

(declare-fun m!3039615 () Bool)

(assert (=> d!764261 m!3039615))

(assert (=> d!764261 m!3039607))

(assert (=> d!764261 m!3039609))

(declare-fun m!3039617 () Bool)

(assert (=> d!764261 m!3039617))

(declare-fun m!3039619 () Bool)

(assert (=> b!2673642 m!3039619))

(declare-fun m!3039621 () Bool)

(assert (=> b!2673643 m!3039621))

(assert (=> b!2673644 m!3039607))

(assert (=> b!2673644 m!3039607))

(assert (=> b!2673644 m!3039609))

(assert (=> b!2673644 m!3039609))

(assert (=> b!2673644 m!3039617))

(declare-fun m!3039623 () Bool)

(assert (=> b!2673644 m!3039623))

(assert (=> b!2673510 d!764261))

(declare-fun d!764301 () Bool)

(declare-fun res!1124092 () Bool)

(declare-fun e!1685321 () Bool)

(assert (=> d!764301 (=> (not res!1124092) (not e!1685321))))

(declare-fun rulesValid!1752 (LexerInterface!4298 List!30879) Bool)

(assert (=> d!764301 (= res!1124092 (rulesValid!1752 thiss!14116 rules!1712))))

(assert (=> d!764301 (= (rulesInvariant!3798 thiss!14116 rules!1712) e!1685321)))

(declare-fun b!2673647 () Bool)

(declare-datatypes ((List!30882 0))(
  ( (Nil!30782) (Cons!30782 (h!36202 String!34499) (t!223559 List!30882)) )
))
(declare-fun noDuplicateTag!1748 (LexerInterface!4298 List!30879 List!30882) Bool)

(assert (=> b!2673647 (= e!1685321 (noDuplicateTag!1748 thiss!14116 rules!1712 Nil!30782))))

(assert (= (and d!764301 res!1124092) b!2673647))

(declare-fun m!3039625 () Bool)

(assert (=> d!764301 m!3039625))

(declare-fun m!3039627 () Bool)

(assert (=> b!2673647 m!3039627))

(assert (=> b!2673521 d!764301))

(declare-fun d!764303 () Bool)

(assert (=> d!764303 (= (isEmpty!17599 rules!1712) ((_ is Nil!30779) rules!1712))))

(assert (=> b!2673511 d!764303))

(declare-fun d!764305 () Bool)

(declare-fun res!1124111 () Bool)

(declare-fun e!1685330 () Bool)

(assert (=> d!764305 (=> (not res!1124111) (not e!1685330))))

(declare-fun isEmpty!17603 (List!30878) Bool)

(assert (=> d!764305 (= res!1124111 (not (isEmpty!17603 (originalCharacters!5467 (h!36200 l!4335)))))))

(assert (=> d!764305 (= (inv!41785 (h!36200 l!4335)) e!1685330)))

(declare-fun b!2673670 () Bool)

(declare-fun res!1124112 () Bool)

(assert (=> b!2673670 (=> (not res!1124112) (not e!1685330))))

(declare-fun dynLambda!13361 (Int TokenValue!4923) BalanceConc!18878)

(assert (=> b!2673670 (= res!1124112 (= (originalCharacters!5467 (h!36200 l!4335)) (list!11619 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (value!151583 (h!36200 l!4335))))))))

(declare-fun b!2673671 () Bool)

(declare-fun size!23785 (List!30878) Int)

(assert (=> b!2673671 (= e!1685330 (= (size!23781 (h!36200 l!4335)) (size!23785 (originalCharacters!5467 (h!36200 l!4335)))))))

(assert (= (and d!764305 res!1124111) b!2673670))

(assert (= (and b!2673670 res!1124112) b!2673671))

(declare-fun b_lambda!81473 () Bool)

(assert (=> (not b_lambda!81473) (not b!2673670)))

(declare-fun t!223523 () Bool)

(declare-fun tb!149821 () Bool)

(assert (=> (and b!2673522 (= (toChars!6502 (transformation!4701 (h!36199 rules!1712))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335))))) t!223523) tb!149821))

(declare-fun b!2673676 () Bool)

(declare-fun e!1685333 () Bool)

(declare-fun tp!845537 () Bool)

(declare-fun inv!41789 (Conc!9632) Bool)

(assert (=> b!2673676 (= e!1685333 (and (inv!41789 (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (value!151583 (h!36200 l!4335))))) tp!845537))))

(declare-fun result!185066 () Bool)

(declare-fun inv!41790 (BalanceConc!18878) Bool)

(assert (=> tb!149821 (= result!185066 (and (inv!41790 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (value!151583 (h!36200 l!4335)))) e!1685333))))

(assert (= tb!149821 b!2673676))

(declare-fun m!3039629 () Bool)

(assert (=> b!2673676 m!3039629))

(declare-fun m!3039631 () Bool)

(assert (=> tb!149821 m!3039631))

(assert (=> b!2673670 t!223523))

(declare-fun b_and!197549 () Bool)

(assert (= b_and!197527 (and (=> t!223523 result!185066) b_and!197549)))

(declare-fun t!223525 () Bool)

(declare-fun tb!149823 () Bool)

(assert (=> (and b!2673519 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335))))) t!223525) tb!149823))

(declare-fun result!185070 () Bool)

(assert (= result!185070 result!185066))

(assert (=> b!2673670 t!223525))

(declare-fun b_and!197551 () Bool)

(assert (= b_and!197531 (and (=> t!223525 result!185070) b_and!197551)))

(declare-fun t!223527 () Bool)

(declare-fun tb!149825 () Bool)

(assert (=> (and b!2673517 (= (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335))))) t!223527) tb!149825))

(declare-fun result!185072 () Bool)

(assert (= result!185072 result!185066))

(assert (=> b!2673670 t!223527))

(declare-fun b_and!197553 () Bool)

(assert (= b_and!197535 (and (=> t!223527 result!185072) b_and!197553)))

(declare-fun m!3039633 () Bool)

(assert (=> d!764305 m!3039633))

(declare-fun m!3039635 () Bool)

(assert (=> b!2673670 m!3039635))

(assert (=> b!2673670 m!3039635))

(declare-fun m!3039637 () Bool)

(assert (=> b!2673670 m!3039637))

(declare-fun m!3039639 () Bool)

(assert (=> b!2673671 m!3039639))

(assert (=> b!2673512 d!764305))

(declare-fun d!764307 () Bool)

(assert (=> d!764307 (= (inv!41782 (tag!5203 (rule!7107 (h!36200 l!4335)))) (= (mod (str.len (value!151582 (tag!5203 (rule!7107 (h!36200 l!4335))))) 2) 0))))

(assert (=> b!2673523 d!764307))

(declare-fun d!764309 () Bool)

(declare-fun res!1124124 () Bool)

(declare-fun e!1685341 () Bool)

(assert (=> d!764309 (=> (not res!1124124) (not e!1685341))))

(declare-fun semiInverseModEq!1946 (Int Int) Bool)

(assert (=> d!764309 (= res!1124124 (semiInverseModEq!1946 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (toValue!6643 (transformation!4701 (rule!7107 (h!36200 l!4335))))))))

(assert (=> d!764309 (= (inv!41786 (transformation!4701 (rule!7107 (h!36200 l!4335)))) e!1685341)))

(declare-fun b!2673690 () Bool)

(declare-fun equivClasses!1847 (Int Int) Bool)

(assert (=> b!2673690 (= e!1685341 (equivClasses!1847 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (toValue!6643 (transformation!4701 (rule!7107 (h!36200 l!4335))))))))

(assert (= (and d!764309 res!1124124) b!2673690))

(declare-fun m!3039675 () Bool)

(assert (=> d!764309 m!3039675))

(declare-fun m!3039677 () Bool)

(assert (=> b!2673690 m!3039677))

(assert (=> b!2673523 d!764309))

(declare-fun d!764313 () Bool)

(declare-fun c!430786 () Bool)

(assert (=> d!764313 (= c!430786 ((_ is IntegerValue!14769) (value!151583 (h!36200 l!4335))))))

(declare-fun e!1685349 () Bool)

(assert (=> d!764313 (= (inv!21 (value!151583 (h!36200 l!4335))) e!1685349)))

(declare-fun b!2673702 () Bool)

(declare-fun e!1685351 () Bool)

(declare-fun inv!15 (TokenValue!4923) Bool)

(assert (=> b!2673702 (= e!1685351 (inv!15 (value!151583 (h!36200 l!4335))))))

(declare-fun b!2673703 () Bool)

(declare-fun res!1124128 () Bool)

(assert (=> b!2673703 (=> res!1124128 e!1685351)))

(assert (=> b!2673703 (= res!1124128 (not ((_ is IntegerValue!14771) (value!151583 (h!36200 l!4335)))))))

(declare-fun e!1685350 () Bool)

(assert (=> b!2673703 (= e!1685350 e!1685351)))

(declare-fun b!2673704 () Bool)

(declare-fun inv!16 (TokenValue!4923) Bool)

(assert (=> b!2673704 (= e!1685349 (inv!16 (value!151583 (h!36200 l!4335))))))

(declare-fun b!2673705 () Bool)

(declare-fun inv!17 (TokenValue!4923) Bool)

(assert (=> b!2673705 (= e!1685350 (inv!17 (value!151583 (h!36200 l!4335))))))

(declare-fun b!2673706 () Bool)

(assert (=> b!2673706 (= e!1685349 e!1685350)))

(declare-fun c!430787 () Bool)

(assert (=> b!2673706 (= c!430787 ((_ is IntegerValue!14770) (value!151583 (h!36200 l!4335))))))

(assert (= (and d!764313 c!430786) b!2673704))

(assert (= (and d!764313 (not c!430786)) b!2673706))

(assert (= (and b!2673706 c!430787) b!2673705))

(assert (= (and b!2673706 (not c!430787)) b!2673703))

(assert (= (and b!2673703 (not res!1124128)) b!2673702))

(declare-fun m!3039685 () Bool)

(assert (=> b!2673702 m!3039685))

(declare-fun m!3039687 () Bool)

(assert (=> b!2673704 m!3039687))

(declare-fun m!3039689 () Bool)

(assert (=> b!2673705 m!3039689))

(assert (=> b!2673513 d!764313))

(declare-fun d!764317 () Bool)

(declare-fun lt!941410 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4368 (List!30880) (InoxSet Token!8872))

(assert (=> d!764317 (= lt!941410 (select (content!4368 l!4335) (h!36200 l!4335)))))

(declare-fun e!1685357 () Bool)

(assert (=> d!764317 (= lt!941410 e!1685357)))

(declare-fun res!1124133 () Bool)

(assert (=> d!764317 (=> (not res!1124133) (not e!1685357))))

(assert (=> d!764317 (= res!1124133 ((_ is Cons!30780) l!4335))))

(assert (=> d!764317 (= (contains!5915 l!4335 (h!36200 l!4335)) lt!941410)))

(declare-fun b!2673711 () Bool)

(declare-fun e!1685356 () Bool)

(assert (=> b!2673711 (= e!1685357 e!1685356)))

(declare-fun res!1124134 () Bool)

(assert (=> b!2673711 (=> res!1124134 e!1685356)))

(assert (=> b!2673711 (= res!1124134 (= (h!36200 l!4335) (h!36200 l!4335)))))

(declare-fun b!2673712 () Bool)

(assert (=> b!2673712 (= e!1685356 (contains!5915 (t!223505 l!4335) (h!36200 l!4335)))))

(assert (= (and d!764317 res!1124133) b!2673711))

(assert (= (and b!2673711 (not res!1124134)) b!2673712))

(declare-fun m!3039691 () Bool)

(assert (=> d!764317 m!3039691))

(declare-fun m!3039693 () Bool)

(assert (=> d!764317 m!3039693))

(declare-fun m!3039695 () Bool)

(assert (=> b!2673712 m!3039695))

(assert (=> b!2673524 d!764317))

(declare-fun d!764319 () Bool)

(assert (=> d!764319 (= (inv!41782 (tag!5203 (rule!7107 separatorToken!152))) (= (mod (str.len (value!151582 (tag!5203 (rule!7107 separatorToken!152)))) 2) 0))))

(assert (=> b!2673514 d!764319))

(declare-fun d!764321 () Bool)

(declare-fun res!1124135 () Bool)

(declare-fun e!1685358 () Bool)

(assert (=> d!764321 (=> (not res!1124135) (not e!1685358))))

(assert (=> d!764321 (= res!1124135 (semiInverseModEq!1946 (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (toValue!6643 (transformation!4701 (rule!7107 separatorToken!152)))))))

(assert (=> d!764321 (= (inv!41786 (transformation!4701 (rule!7107 separatorToken!152))) e!1685358)))

(declare-fun b!2673713 () Bool)

(assert (=> b!2673713 (= e!1685358 (equivClasses!1847 (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (toValue!6643 (transformation!4701 (rule!7107 separatorToken!152)))))))

(assert (= (and d!764321 res!1124135) b!2673713))

(declare-fun m!3039697 () Bool)

(assert (=> d!764321 m!3039697))

(declare-fun m!3039699 () Bool)

(assert (=> b!2673713 m!3039699))

(assert (=> b!2673514 d!764321))

(declare-fun d!764323 () Bool)

(declare-fun lt!941413 () BalanceConc!18878)

(assert (=> d!764323 (= (list!11619 lt!941413) (printList!1190 thiss!14116 (list!11622 lt!941343)))))

(assert (=> d!764323 (= lt!941413 (printTailRec!1151 thiss!14116 lt!941343 0 (BalanceConc!18879 Empty!9632)))))

(assert (=> d!764323 (= (print!1677 thiss!14116 lt!941343) lt!941413)))

(declare-fun bs!479606 () Bool)

(assert (= bs!479606 d!764323))

(declare-fun m!3039701 () Bool)

(assert (=> bs!479606 m!3039701))

(declare-fun m!3039703 () Bool)

(assert (=> bs!479606 m!3039703))

(assert (=> bs!479606 m!3039703))

(declare-fun m!3039705 () Bool)

(assert (=> bs!479606 m!3039705))

(assert (=> bs!479606 m!3039427))

(assert (=> b!2673515 d!764323))

(declare-fun d!764325 () Bool)

(declare-fun e!1685361 () Bool)

(assert (=> d!764325 e!1685361))

(declare-fun res!1124138 () Bool)

(assert (=> d!764325 (=> (not res!1124138) (not e!1685361))))

(declare-fun lt!941416 () BalanceConc!18880)

(assert (=> d!764325 (= res!1124138 (= (list!11622 lt!941416) (Cons!30780 (h!36200 l!4335) Nil!30780)))))

(declare-fun singleton!928 (Token!8872) BalanceConc!18880)

(assert (=> d!764325 (= lt!941416 (singleton!928 (h!36200 l!4335)))))

(assert (=> d!764325 (= (singletonSeq!2098 (h!36200 l!4335)) lt!941416)))

(declare-fun b!2673716 () Bool)

(declare-fun isBalanced!2915 (Conc!9633) Bool)

(assert (=> b!2673716 (= e!1685361 (isBalanced!2915 (c!430761 lt!941416)))))

(assert (= (and d!764325 res!1124138) b!2673716))

(declare-fun m!3039707 () Bool)

(assert (=> d!764325 m!3039707))

(declare-fun m!3039709 () Bool)

(assert (=> d!764325 m!3039709))

(declare-fun m!3039711 () Bool)

(assert (=> b!2673716 m!3039711))

(assert (=> b!2673515 d!764325))

(declare-fun d!764327 () Bool)

(declare-fun lt!941435 () BalanceConc!18878)

(declare-fun printListTailRec!523 (LexerInterface!4298 List!30880 List!30878) List!30878)

(declare-fun dropList!972 (BalanceConc!18880 Int) List!30880)

(assert (=> d!764327 (= (list!11619 lt!941435) (printListTailRec!523 thiss!14116 (dropList!972 lt!941343 0) (list!11619 (BalanceConc!18879 Empty!9632))))))

(declare-fun e!1685366 () BalanceConc!18878)

(assert (=> d!764327 (= lt!941435 e!1685366)))

(declare-fun c!430790 () Bool)

(assert (=> d!764327 (= c!430790 (>= 0 (size!23784 lt!941343)))))

(declare-fun e!1685367 () Bool)

(assert (=> d!764327 e!1685367))

(declare-fun res!1124141 () Bool)

(assert (=> d!764327 (=> (not res!1124141) (not e!1685367))))

(assert (=> d!764327 (= res!1124141 (>= 0 0))))

(assert (=> d!764327 (= (printTailRec!1151 thiss!14116 lt!941343 0 (BalanceConc!18879 Empty!9632)) lt!941435)))

(declare-fun b!2673723 () Bool)

(assert (=> b!2673723 (= e!1685367 (<= 0 (size!23784 lt!941343)))))

(declare-fun b!2673724 () Bool)

(assert (=> b!2673724 (= e!1685366 (BalanceConc!18879 Empty!9632))))

(declare-fun b!2673725 () Bool)

(declare-fun ++!7509 (BalanceConc!18878 BalanceConc!18878) BalanceConc!18878)

(assert (=> b!2673725 (= e!1685366 (printTailRec!1151 thiss!14116 lt!941343 (+ 0 1) (++!7509 (BalanceConc!18879 Empty!9632) (charsOf!2964 (apply!7376 lt!941343 0)))))))

(declare-fun lt!941432 () List!30880)

(assert (=> b!2673725 (= lt!941432 (list!11622 lt!941343))))

(declare-fun lt!941433 () Unit!44983)

(declare-fun lemmaDropApply!878 (List!30880 Int) Unit!44983)

(assert (=> b!2673725 (= lt!941433 (lemmaDropApply!878 lt!941432 0))))

(declare-fun head!6077 (List!30880) Token!8872)

(declare-fun drop!1669 (List!30880 Int) List!30880)

(declare-fun apply!7377 (List!30880 Int) Token!8872)

(assert (=> b!2673725 (= (head!6077 (drop!1669 lt!941432 0)) (apply!7377 lt!941432 0))))

(declare-fun lt!941436 () Unit!44983)

(assert (=> b!2673725 (= lt!941436 lt!941433)))

(declare-fun lt!941437 () List!30880)

(assert (=> b!2673725 (= lt!941437 (list!11622 lt!941343))))

(declare-fun lt!941434 () Unit!44983)

(declare-fun lemmaDropTail!850 (List!30880 Int) Unit!44983)

(assert (=> b!2673725 (= lt!941434 (lemmaDropTail!850 lt!941437 0))))

(declare-fun tail!4315 (List!30880) List!30880)

(assert (=> b!2673725 (= (tail!4315 (drop!1669 lt!941437 0)) (drop!1669 lt!941437 (+ 0 1)))))

(declare-fun lt!941431 () Unit!44983)

(assert (=> b!2673725 (= lt!941431 lt!941434)))

(assert (= (and d!764327 res!1124141) b!2673723))

(assert (= (and d!764327 c!430790) b!2673724))

(assert (= (and d!764327 (not c!430790)) b!2673725))

(declare-fun m!3039713 () Bool)

(assert (=> d!764327 m!3039713))

(declare-fun m!3039715 () Bool)

(assert (=> d!764327 m!3039715))

(declare-fun m!3039717 () Bool)

(assert (=> d!764327 m!3039717))

(assert (=> d!764327 m!3039717))

(declare-fun m!3039719 () Bool)

(assert (=> d!764327 m!3039719))

(declare-fun m!3039721 () Bool)

(assert (=> d!764327 m!3039721))

(assert (=> d!764327 m!3039719))

(assert (=> b!2673723 m!3039715))

(declare-fun m!3039723 () Bool)

(assert (=> b!2673725 m!3039723))

(declare-fun m!3039725 () Bool)

(assert (=> b!2673725 m!3039725))

(declare-fun m!3039727 () Bool)

(assert (=> b!2673725 m!3039727))

(declare-fun m!3039729 () Bool)

(assert (=> b!2673725 m!3039729))

(assert (=> b!2673725 m!3039723))

(declare-fun m!3039731 () Bool)

(assert (=> b!2673725 m!3039731))

(declare-fun m!3039733 () Bool)

(assert (=> b!2673725 m!3039733))

(assert (=> b!2673725 m!3039725))

(declare-fun m!3039735 () Bool)

(assert (=> b!2673725 m!3039735))

(declare-fun m!3039737 () Bool)

(assert (=> b!2673725 m!3039737))

(declare-fun m!3039739 () Bool)

(assert (=> b!2673725 m!3039739))

(declare-fun m!3039741 () Bool)

(assert (=> b!2673725 m!3039741))

(assert (=> b!2673725 m!3039703))

(declare-fun m!3039743 () Bool)

(assert (=> b!2673725 m!3039743))

(assert (=> b!2673725 m!3039731))

(assert (=> b!2673725 m!3039727))

(assert (=> b!2673725 m!3039733))

(declare-fun m!3039745 () Bool)

(assert (=> b!2673725 m!3039745))

(assert (=> b!2673515 d!764327))

(declare-fun d!764329 () Bool)

(declare-fun list!11623 (Conc!9632) List!30878)

(assert (=> d!764329 (= (list!11619 lt!941344) (list!11623 (c!430759 lt!941344)))))

(declare-fun bs!479607 () Bool)

(assert (= bs!479607 d!764329))

(declare-fun m!3039747 () Bool)

(assert (=> bs!479607 m!3039747))

(assert (=> b!2673515 d!764329))

(declare-fun d!764331 () Bool)

(declare-fun c!430793 () Bool)

(assert (=> d!764331 (= c!430793 ((_ is Cons!30780) (Cons!30780 (h!36200 l!4335) Nil!30780)))))

(declare-fun e!1685370 () List!30878)

(assert (=> d!764331 (= (printList!1190 thiss!14116 (Cons!30780 (h!36200 l!4335) Nil!30780)) e!1685370)))

(declare-fun b!2673730 () Bool)

(assert (=> b!2673730 (= e!1685370 (++!7507 (list!11619 (charsOf!2964 (h!36200 (Cons!30780 (h!36200 l!4335) Nil!30780)))) (printList!1190 thiss!14116 (t!223505 (Cons!30780 (h!36200 l!4335) Nil!30780)))))))

(declare-fun b!2673731 () Bool)

(assert (=> b!2673731 (= e!1685370 Nil!30778)))

(assert (= (and d!764331 c!430793) b!2673730))

(assert (= (and d!764331 (not c!430793)) b!2673731))

(declare-fun m!3039749 () Bool)

(assert (=> b!2673730 m!3039749))

(assert (=> b!2673730 m!3039749))

(declare-fun m!3039751 () Bool)

(assert (=> b!2673730 m!3039751))

(declare-fun m!3039753 () Bool)

(assert (=> b!2673730 m!3039753))

(assert (=> b!2673730 m!3039751))

(assert (=> b!2673730 m!3039753))

(declare-fun m!3039755 () Bool)

(assert (=> b!2673730 m!3039755))

(assert (=> b!2673515 d!764331))

(declare-fun d!764333 () Bool)

(declare-fun c!430794 () Bool)

(assert (=> d!764333 (= c!430794 ((_ is IntegerValue!14769) (value!151583 separatorToken!152)))))

(declare-fun e!1685371 () Bool)

(assert (=> d!764333 (= (inv!21 (value!151583 separatorToken!152)) e!1685371)))

(declare-fun b!2673732 () Bool)

(declare-fun e!1685373 () Bool)

(assert (=> b!2673732 (= e!1685373 (inv!15 (value!151583 separatorToken!152)))))

(declare-fun b!2673733 () Bool)

(declare-fun res!1124142 () Bool)

(assert (=> b!2673733 (=> res!1124142 e!1685373)))

(assert (=> b!2673733 (= res!1124142 (not ((_ is IntegerValue!14771) (value!151583 separatorToken!152))))))

(declare-fun e!1685372 () Bool)

(assert (=> b!2673733 (= e!1685372 e!1685373)))

(declare-fun b!2673734 () Bool)

(assert (=> b!2673734 (= e!1685371 (inv!16 (value!151583 separatorToken!152)))))

(declare-fun b!2673735 () Bool)

(assert (=> b!2673735 (= e!1685372 (inv!17 (value!151583 separatorToken!152)))))

(declare-fun b!2673736 () Bool)

(assert (=> b!2673736 (= e!1685371 e!1685372)))

(declare-fun c!430795 () Bool)

(assert (=> b!2673736 (= c!430795 ((_ is IntegerValue!14770) (value!151583 separatorToken!152)))))

(assert (= (and d!764333 c!430794) b!2673734))

(assert (= (and d!764333 (not c!430794)) b!2673736))

(assert (= (and b!2673736 c!430795) b!2673735))

(assert (= (and b!2673736 (not c!430795)) b!2673733))

(assert (= (and b!2673733 (not res!1124142)) b!2673732))

(declare-fun m!3039757 () Bool)

(assert (=> b!2673732 m!3039757))

(declare-fun m!3039759 () Bool)

(assert (=> b!2673734 m!3039759))

(declare-fun m!3039761 () Bool)

(assert (=> b!2673735 m!3039761))

(assert (=> b!2673526 d!764333))

(declare-fun d!764335 () Bool)

(declare-fun lt!941440 () BalanceConc!18878)

(assert (=> d!764335 (= (list!11619 lt!941440) (originalCharacters!5467 (h!36200 l!4335)))))

(assert (=> d!764335 (= lt!941440 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (value!151583 (h!36200 l!4335))))))

(assert (=> d!764335 (= (charsOf!2964 (h!36200 l!4335)) lt!941440)))

(declare-fun b_lambda!81477 () Bool)

(assert (=> (not b_lambda!81477) (not d!764335)))

(assert (=> d!764335 t!223523))

(declare-fun b_and!197555 () Bool)

(assert (= b_and!197549 (and (=> t!223523 result!185066) b_and!197555)))

(assert (=> d!764335 t!223525))

(declare-fun b_and!197557 () Bool)

(assert (= b_and!197551 (and (=> t!223525 result!185070) b_and!197557)))

(assert (=> d!764335 t!223527))

(declare-fun b_and!197559 () Bool)

(assert (= b_and!197553 (and (=> t!223527 result!185072) b_and!197559)))

(declare-fun m!3039763 () Bool)

(assert (=> d!764335 m!3039763))

(assert (=> d!764335 m!3039635))

(assert (=> b!2673516 d!764335))

(declare-fun b!2673755 () Bool)

(declare-fun e!1685380 () Bool)

(declare-fun e!1685381 () Bool)

(assert (=> b!2673755 (= e!1685380 e!1685381)))

(declare-fun res!1124159 () Bool)

(assert (=> b!2673755 (=> (not res!1124159) (not e!1685381))))

(declare-fun lt!941455 () Option!6090)

(declare-fun isDefined!4838 (Option!6090) Bool)

(assert (=> b!2673755 (= res!1124159 (isDefined!4838 lt!941455))))

(declare-fun b!2673756 () Bool)

(declare-fun res!1124158 () Bool)

(assert (=> b!2673756 (=> (not res!1124158) (not e!1685381))))

(declare-fun matchR!3626 (Regex!7845 List!30878) Bool)

(declare-fun get!9672 (Option!6090) tuple2!30226)

(assert (=> b!2673756 (= res!1124158 (matchR!3626 (regex!4701 (rule!7107 (_1!17655 (get!9672 lt!941455)))) (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941455))))))))

(declare-fun b!2673757 () Bool)

(declare-fun res!1124163 () Bool)

(assert (=> b!2673757 (=> (not res!1124163) (not e!1685381))))

(assert (=> b!2673757 (= res!1124163 (= (++!7507 (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941455)))) (_2!17655 (get!9672 lt!941455))) (++!7507 lt!941339 lt!941340)))))

(declare-fun b!2673758 () Bool)

(declare-fun res!1124162 () Bool)

(assert (=> b!2673758 (=> (not res!1124162) (not e!1685381))))

(assert (=> b!2673758 (= res!1124162 (< (size!23785 (_2!17655 (get!9672 lt!941455))) (size!23785 (++!7507 lt!941339 lt!941340))))))

(declare-fun b!2673759 () Bool)

(declare-fun e!1685382 () Option!6090)

(declare-fun call!172516 () Option!6090)

(assert (=> b!2673759 (= e!1685382 call!172516)))

(declare-fun b!2673760 () Bool)

(declare-fun lt!941454 () Option!6090)

(declare-fun lt!941453 () Option!6090)

(assert (=> b!2673760 (= e!1685382 (ite (and ((_ is None!6089) lt!941454) ((_ is None!6089) lt!941453)) None!6089 (ite ((_ is None!6089) lt!941453) lt!941454 (ite ((_ is None!6089) lt!941454) lt!941453 (ite (>= (size!23781 (_1!17655 (v!32632 lt!941454))) (size!23781 (_1!17655 (v!32632 lt!941453)))) lt!941454 lt!941453)))))))

(assert (=> b!2673760 (= lt!941454 call!172516)))

(assert (=> b!2673760 (= lt!941453 (maxPrefix!2336 thiss!14116 (t!223504 rules!1712) (++!7507 lt!941339 lt!941340)))))

(declare-fun b!2673761 () Bool)

(declare-fun res!1124160 () Bool)

(assert (=> b!2673761 (=> (not res!1124160) (not e!1685381))))

(assert (=> b!2673761 (= res!1124160 (= (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941455)))) (originalCharacters!5467 (_1!17655 (get!9672 lt!941455)))))))

(declare-fun b!2673762 () Bool)

(declare-fun res!1124161 () Bool)

(assert (=> b!2673762 (=> (not res!1124161) (not e!1685381))))

(declare-fun apply!7378 (TokenValueInjection!9286 BalanceConc!18878) TokenValue!4923)

(declare-fun seqFromList!3203 (List!30878) BalanceConc!18878)

(assert (=> b!2673762 (= res!1124161 (= (value!151583 (_1!17655 (get!9672 lt!941455))) (apply!7378 (transformation!4701 (rule!7107 (_1!17655 (get!9672 lt!941455)))) (seqFromList!3203 (originalCharacters!5467 (_1!17655 (get!9672 lt!941455)))))))))

(declare-fun b!2673763 () Bool)

(declare-fun contains!5917 (List!30879 Rule!9202) Bool)

(assert (=> b!2673763 (= e!1685381 (contains!5917 rules!1712 (rule!7107 (_1!17655 (get!9672 lt!941455)))))))

(declare-fun d!764337 () Bool)

(assert (=> d!764337 e!1685380))

(declare-fun res!1124157 () Bool)

(assert (=> d!764337 (=> res!1124157 e!1685380)))

(declare-fun isEmpty!17605 (Option!6090) Bool)

(assert (=> d!764337 (= res!1124157 (isEmpty!17605 lt!941455))))

(assert (=> d!764337 (= lt!941455 e!1685382)))

(declare-fun c!430798 () Bool)

(assert (=> d!764337 (= c!430798 (and ((_ is Cons!30779) rules!1712) ((_ is Nil!30779) (t!223504 rules!1712))))))

(declare-fun lt!941451 () Unit!44983)

(declare-fun lt!941452 () Unit!44983)

(assert (=> d!764337 (= lt!941451 lt!941452)))

(declare-fun isPrefix!2455 (List!30878 List!30878) Bool)

(assert (=> d!764337 (isPrefix!2455 (++!7507 lt!941339 lt!941340) (++!7507 lt!941339 lt!941340))))

(declare-fun lemmaIsPrefixRefl!1581 (List!30878 List!30878) Unit!44983)

(assert (=> d!764337 (= lt!941452 (lemmaIsPrefixRefl!1581 (++!7507 lt!941339 lt!941340) (++!7507 lt!941339 lt!941340)))))

(declare-fun rulesValidInductive!1635 (LexerInterface!4298 List!30879) Bool)

(assert (=> d!764337 (rulesValidInductive!1635 thiss!14116 rules!1712)))

(assert (=> d!764337 (= (maxPrefix!2336 thiss!14116 rules!1712 (++!7507 lt!941339 lt!941340)) lt!941455)))

(declare-fun bm!172511 () Bool)

(declare-fun maxPrefixOneRule!1484 (LexerInterface!4298 Rule!9202 List!30878) Option!6090)

(assert (=> bm!172511 (= call!172516 (maxPrefixOneRule!1484 thiss!14116 (h!36199 rules!1712) (++!7507 lt!941339 lt!941340)))))

(assert (= (and d!764337 c!430798) b!2673759))

(assert (= (and d!764337 (not c!430798)) b!2673760))

(assert (= (or b!2673759 b!2673760) bm!172511))

(assert (= (and d!764337 (not res!1124157)) b!2673755))

(assert (= (and b!2673755 res!1124159) b!2673761))

(assert (= (and b!2673761 res!1124160) b!2673758))

(assert (= (and b!2673758 res!1124162) b!2673757))

(assert (= (and b!2673757 res!1124163) b!2673762))

(assert (= (and b!2673762 res!1124161) b!2673756))

(assert (= (and b!2673756 res!1124158) b!2673763))

(declare-fun m!3039765 () Bool)

(assert (=> d!764337 m!3039765))

(assert (=> d!764337 m!3039457))

(assert (=> d!764337 m!3039457))

(declare-fun m!3039767 () Bool)

(assert (=> d!764337 m!3039767))

(assert (=> d!764337 m!3039457))

(assert (=> d!764337 m!3039457))

(declare-fun m!3039769 () Bool)

(assert (=> d!764337 m!3039769))

(declare-fun m!3039771 () Bool)

(assert (=> d!764337 m!3039771))

(declare-fun m!3039773 () Bool)

(assert (=> b!2673762 m!3039773))

(declare-fun m!3039775 () Bool)

(assert (=> b!2673762 m!3039775))

(assert (=> b!2673762 m!3039775))

(declare-fun m!3039777 () Bool)

(assert (=> b!2673762 m!3039777))

(assert (=> bm!172511 m!3039457))

(declare-fun m!3039779 () Bool)

(assert (=> bm!172511 m!3039779))

(assert (=> b!2673758 m!3039773))

(declare-fun m!3039781 () Bool)

(assert (=> b!2673758 m!3039781))

(assert (=> b!2673758 m!3039457))

(declare-fun m!3039783 () Bool)

(assert (=> b!2673758 m!3039783))

(assert (=> b!2673763 m!3039773))

(declare-fun m!3039785 () Bool)

(assert (=> b!2673763 m!3039785))

(assert (=> b!2673757 m!3039773))

(declare-fun m!3039787 () Bool)

(assert (=> b!2673757 m!3039787))

(assert (=> b!2673757 m!3039787))

(declare-fun m!3039789 () Bool)

(assert (=> b!2673757 m!3039789))

(assert (=> b!2673757 m!3039789))

(declare-fun m!3039791 () Bool)

(assert (=> b!2673757 m!3039791))

(assert (=> b!2673761 m!3039773))

(assert (=> b!2673761 m!3039787))

(assert (=> b!2673761 m!3039787))

(assert (=> b!2673761 m!3039789))

(declare-fun m!3039793 () Bool)

(assert (=> b!2673755 m!3039793))

(assert (=> b!2673756 m!3039773))

(assert (=> b!2673756 m!3039787))

(assert (=> b!2673756 m!3039787))

(assert (=> b!2673756 m!3039789))

(assert (=> b!2673756 m!3039789))

(declare-fun m!3039795 () Bool)

(assert (=> b!2673756 m!3039795))

(assert (=> b!2673760 m!3039457))

(declare-fun m!3039797 () Bool)

(assert (=> b!2673760 m!3039797))

(assert (=> b!2673516 d!764337))

(declare-fun d!764339 () Bool)

(assert (=> d!764339 (= (list!11619 (charsOf!2964 (h!36200 l!4335))) (list!11623 (c!430759 (charsOf!2964 (h!36200 l!4335)))))))

(declare-fun bs!479608 () Bool)

(assert (= bs!479608 d!764339))

(declare-fun m!3039799 () Bool)

(assert (=> bs!479608 m!3039799))

(assert (=> b!2673516 d!764339))

(declare-fun d!764341 () Bool)

(declare-fun dynLambda!13362 (Int Token!8872) Bool)

(assert (=> d!764341 (dynLambda!13362 lambda!99878 (h!36200 l!4335))))

(declare-fun lt!941458 () Unit!44983)

(declare-fun choose!15839 (List!30880 Int Token!8872) Unit!44983)

(assert (=> d!764341 (= lt!941458 (choose!15839 l!4335 lambda!99878 (h!36200 l!4335)))))

(declare-fun e!1685385 () Bool)

(assert (=> d!764341 e!1685385))

(declare-fun res!1124166 () Bool)

(assert (=> d!764341 (=> (not res!1124166) (not e!1685385))))

(assert (=> d!764341 (= res!1124166 (forall!6516 l!4335 lambda!99878))))

(assert (=> d!764341 (= (forallContained!1041 l!4335 lambda!99878 (h!36200 l!4335)) lt!941458)))

(declare-fun b!2673766 () Bool)

(assert (=> b!2673766 (= e!1685385 (contains!5915 l!4335 (h!36200 l!4335)))))

(assert (= (and d!764341 res!1124166) b!2673766))

(declare-fun b_lambda!81479 () Bool)

(assert (=> (not b_lambda!81479) (not d!764341)))

(declare-fun m!3039801 () Bool)

(assert (=> d!764341 m!3039801))

(declare-fun m!3039803 () Bool)

(assert (=> d!764341 m!3039803))

(declare-fun m!3039805 () Bool)

(assert (=> d!764341 m!3039805))

(assert (=> b!2673766 m!3039433))

(assert (=> b!2673516 d!764341))

(declare-fun bs!479614 () Bool)

(declare-fun b!2673897 () Bool)

(assert (= bs!479614 (and b!2673897 b!2673506)))

(declare-fun lambda!99887 () Int)

(assert (=> bs!479614 (not (= lambda!99887 lambda!99877))))

(declare-fun bs!479615 () Bool)

(assert (= bs!479615 (and b!2673897 b!2673516)))

(assert (=> bs!479615 (= lambda!99887 lambda!99878)))

(declare-fun b!2673900 () Bool)

(declare-fun e!1685471 () Bool)

(assert (=> b!2673900 (= e!1685471 true)))

(declare-fun b!2673899 () Bool)

(declare-fun e!1685470 () Bool)

(assert (=> b!2673899 (= e!1685470 e!1685471)))

(declare-fun b!2673898 () Bool)

(declare-fun e!1685469 () Bool)

(assert (=> b!2673898 (= e!1685469 e!1685470)))

(assert (=> b!2673897 e!1685469))

(assert (= b!2673899 b!2673900))

(assert (= b!2673898 b!2673899))

(assert (= (and b!2673897 ((_ is Cons!30779) rules!1712)) b!2673898))

(assert (=> b!2673900 (< (dynLambda!13356 order!16955 (toValue!6643 (transformation!4701 (h!36199 rules!1712)))) (dynLambda!13357 order!16957 lambda!99887))))

(assert (=> b!2673900 (< (dynLambda!13358 order!16959 (toChars!6502 (transformation!4701 (h!36199 rules!1712)))) (dynLambda!13357 order!16957 lambda!99887))))

(assert (=> b!2673897 true))

(declare-fun d!764343 () Bool)

(declare-fun c!430824 () Bool)

(assert (=> d!764343 (= c!430824 ((_ is Cons!30780) (t!223505 l!4335)))))

(declare-fun e!1685465 () List!30878)

(assert (=> d!764343 (= (printWithSeparatorTokenWhenNeededList!692 thiss!14116 rules!1712 (t!223505 l!4335) separatorToken!152) e!1685465)))

(declare-fun b!2673888 () Bool)

(declare-fun e!1685464 () List!30878)

(declare-fun call!172546 () List!30878)

(assert (=> b!2673888 (= e!1685464 call!172546)))

(declare-fun b!2673889 () Bool)

(declare-fun e!1685467 () List!30878)

(declare-fun call!172543 () BalanceConc!18878)

(assert (=> b!2673889 (= e!1685467 (list!11619 call!172543))))

(declare-fun b!2673890 () Bool)

(declare-fun e!1685466 () BalanceConc!18878)

(declare-fun call!172542 () BalanceConc!18878)

(assert (=> b!2673890 (= e!1685466 call!172542)))

(declare-fun b!2673891 () Bool)

(declare-fun e!1685468 () List!30878)

(assert (=> b!2673891 (= e!1685468 Nil!30778)))

(assert (=> b!2673891 (= (print!1677 thiss!14116 (singletonSeq!2098 (h!36200 (t!223505 l!4335)))) (printTailRec!1151 thiss!14116 (singletonSeq!2098 (h!36200 (t!223505 l!4335))) 0 (BalanceConc!18879 Empty!9632)))))

(declare-fun lt!941497 () Unit!44983)

(declare-fun Unit!44987 () Unit!44983)

(assert (=> b!2673891 (= lt!941497 Unit!44987)))

(declare-fun lt!941496 () List!30878)

(declare-fun lt!941498 () Unit!44983)

(declare-fun call!172544 () List!30878)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!819 (LexerInterface!4298 List!30879 List!30878 List!30878) Unit!44983)

(assert (=> b!2673891 (= lt!941498 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!819 thiss!14116 rules!1712 call!172544 lt!941496))))

(assert (=> b!2673891 false))

(declare-fun lt!941495 () Unit!44983)

(declare-fun Unit!44988 () Unit!44983)

(assert (=> b!2673891 (= lt!941495 Unit!44988)))

(declare-fun b!2673892 () Bool)

(assert (=> b!2673892 (= e!1685466 call!172543)))

(declare-fun bm!172537 () Bool)

(assert (=> bm!172537 (= call!172542 (charsOf!2964 (h!36200 (t!223505 l!4335))))))

(declare-fun call!172545 () List!30878)

(declare-fun c!430828 () Bool)

(declare-fun bm!172538 () Bool)

(assert (=> bm!172538 (= call!172545 (list!11619 (ite c!430828 call!172542 e!1685466)))))

(declare-fun b!2673893 () Bool)

(assert (=> b!2673893 (= e!1685465 Nil!30778)))

(declare-fun c!430826 () Bool)

(declare-fun bm!172539 () Bool)

(assert (=> bm!172539 (= call!172543 (charsOf!2964 (ite c!430826 separatorToken!152 (h!36200 (t!223505 l!4335)))))))

(declare-fun b!2673894 () Bool)

(assert (=> b!2673894 (= e!1685467 lt!941496)))

(declare-fun b!2673895 () Bool)

(assert (=> b!2673895 (= e!1685468 (++!7507 call!172546 lt!941496))))

(declare-fun b!2673896 () Bool)

(declare-fun lt!941500 () Option!6090)

(assert (=> b!2673896 (= c!430826 (and ((_ is Some!6089) lt!941500) (not (= (_1!17655 (v!32632 lt!941500)) (h!36200 (t!223505 l!4335))))))))

(assert (=> b!2673896 (= e!1685464 e!1685468)))

(declare-fun bm!172540 () Bool)

(declare-fun c!430825 () Bool)

(assert (=> bm!172540 (= c!430825 c!430828)))

(assert (=> bm!172540 (= call!172546 (++!7507 (ite c!430828 call!172545 call!172544) e!1685467))))

(declare-fun bm!172541 () Bool)

(assert (=> bm!172541 (= call!172544 call!172545)))

(declare-fun c!430827 () Bool)

(assert (=> bm!172541 (= c!430827 c!430826)))

(assert (=> b!2673897 (= e!1685465 e!1685464)))

(declare-fun lt!941499 () Unit!44983)

(assert (=> b!2673897 (= lt!941499 (forallContained!1041 (t!223505 l!4335) lambda!99887 (h!36200 (t!223505 l!4335))))))

(assert (=> b!2673897 (= lt!941496 (printWithSeparatorTokenWhenNeededList!692 thiss!14116 rules!1712 (t!223505 (t!223505 l!4335)) separatorToken!152))))

(assert (=> b!2673897 (= lt!941500 (maxPrefix!2336 thiss!14116 rules!1712 (++!7507 (list!11619 (charsOf!2964 (h!36200 (t!223505 l!4335)))) lt!941496)))))

(assert (=> b!2673897 (= c!430828 (and ((_ is Some!6089) lt!941500) (= (_1!17655 (v!32632 lt!941500)) (h!36200 (t!223505 l!4335)))))))

(assert (= (and d!764343 c!430824) b!2673897))

(assert (= (and d!764343 (not c!430824)) b!2673893))

(assert (= (and b!2673897 c!430828) b!2673888))

(assert (= (and b!2673897 (not c!430828)) b!2673896))

(assert (= (and b!2673896 c!430826) b!2673895))

(assert (= (and b!2673896 (not c!430826)) b!2673891))

(assert (= (or b!2673895 b!2673891) bm!172539))

(assert (= (or b!2673895 b!2673891) bm!172541))

(assert (= (and bm!172541 c!430827) b!2673890))

(assert (= (and bm!172541 (not c!430827)) b!2673892))

(assert (= (or b!2673888 b!2673890) bm!172537))

(assert (= (or b!2673888 bm!172541) bm!172538))

(assert (= (or b!2673888 b!2673895) bm!172540))

(assert (= (and bm!172540 c!430825) b!2673894))

(assert (= (and bm!172540 (not c!430825)) b!2673889))

(declare-fun m!3039877 () Bool)

(assert (=> bm!172538 m!3039877))

(declare-fun m!3039879 () Bool)

(assert (=> bm!172537 m!3039879))

(declare-fun m!3039881 () Bool)

(assert (=> b!2673897 m!3039881))

(declare-fun m!3039883 () Bool)

(assert (=> b!2673897 m!3039883))

(assert (=> b!2673897 m!3039879))

(declare-fun m!3039885 () Bool)

(assert (=> b!2673897 m!3039885))

(assert (=> b!2673897 m!3039879))

(assert (=> b!2673897 m!3039881))

(assert (=> b!2673897 m!3039883))

(declare-fun m!3039887 () Bool)

(assert (=> b!2673897 m!3039887))

(declare-fun m!3039889 () Bool)

(assert (=> b!2673897 m!3039889))

(declare-fun m!3039891 () Bool)

(assert (=> bm!172539 m!3039891))

(declare-fun m!3039893 () Bool)

(assert (=> b!2673895 m!3039893))

(declare-fun m!3039895 () Bool)

(assert (=> bm!172540 m!3039895))

(declare-fun m!3039897 () Bool)

(assert (=> b!2673889 m!3039897))

(declare-fun m!3039899 () Bool)

(assert (=> b!2673891 m!3039899))

(assert (=> b!2673891 m!3039899))

(declare-fun m!3039901 () Bool)

(assert (=> b!2673891 m!3039901))

(assert (=> b!2673891 m!3039899))

(declare-fun m!3039903 () Bool)

(assert (=> b!2673891 m!3039903))

(declare-fun m!3039905 () Bool)

(assert (=> b!2673891 m!3039905))

(assert (=> b!2673516 d!764343))

(declare-fun e!1685476 () Bool)

(declare-fun lt!941503 () List!30878)

(declare-fun b!2673912 () Bool)

(assert (=> b!2673912 (= e!1685476 (or (not (= lt!941340 Nil!30778)) (= lt!941503 lt!941339)))))

(declare-fun b!2673910 () Bool)

(declare-fun e!1685477 () List!30878)

(assert (=> b!2673910 (= e!1685477 (Cons!30778 (h!36198 lt!941339) (++!7507 (t!223503 lt!941339) lt!941340)))))

(declare-fun b!2673911 () Bool)

(declare-fun res!1124184 () Bool)

(assert (=> b!2673911 (=> (not res!1124184) (not e!1685476))))

(assert (=> b!2673911 (= res!1124184 (= (size!23785 lt!941503) (+ (size!23785 lt!941339) (size!23785 lt!941340))))))

(declare-fun b!2673909 () Bool)

(assert (=> b!2673909 (= e!1685477 lt!941340)))

(declare-fun d!764357 () Bool)

(assert (=> d!764357 e!1685476))

(declare-fun res!1124183 () Bool)

(assert (=> d!764357 (=> (not res!1124183) (not e!1685476))))

(declare-fun content!4369 (List!30878) (InoxSet C!15848))

(assert (=> d!764357 (= res!1124183 (= (content!4369 lt!941503) ((_ map or) (content!4369 lt!941339) (content!4369 lt!941340))))))

(assert (=> d!764357 (= lt!941503 e!1685477)))

(declare-fun c!430831 () Bool)

(assert (=> d!764357 (= c!430831 ((_ is Nil!30778) lt!941339))))

(assert (=> d!764357 (= (++!7507 lt!941339 lt!941340) lt!941503)))

(assert (= (and d!764357 c!430831) b!2673909))

(assert (= (and d!764357 (not c!430831)) b!2673910))

(assert (= (and d!764357 res!1124183) b!2673911))

(assert (= (and b!2673911 res!1124184) b!2673912))

(declare-fun m!3039907 () Bool)

(assert (=> b!2673910 m!3039907))

(declare-fun m!3039909 () Bool)

(assert (=> b!2673911 m!3039909))

(declare-fun m!3039911 () Bool)

(assert (=> b!2673911 m!3039911))

(declare-fun m!3039913 () Bool)

(assert (=> b!2673911 m!3039913))

(declare-fun m!3039915 () Bool)

(assert (=> d!764357 m!3039915))

(declare-fun m!3039917 () Bool)

(assert (=> d!764357 m!3039917))

(declare-fun m!3039919 () Bool)

(assert (=> d!764357 m!3039919))

(assert (=> b!2673516 d!764357))

(declare-fun d!764359 () Bool)

(declare-fun res!1124189 () Bool)

(declare-fun e!1685482 () Bool)

(assert (=> d!764359 (=> res!1124189 e!1685482)))

(assert (=> d!764359 (= res!1124189 ((_ is Nil!30780) l!4335))))

(assert (=> d!764359 (= (forall!6516 l!4335 lambda!99877) e!1685482)))

(declare-fun b!2673917 () Bool)

(declare-fun e!1685483 () Bool)

(assert (=> b!2673917 (= e!1685482 e!1685483)))

(declare-fun res!1124190 () Bool)

(assert (=> b!2673917 (=> (not res!1124190) (not e!1685483))))

(assert (=> b!2673917 (= res!1124190 (dynLambda!13362 lambda!99877 (h!36200 l!4335)))))

(declare-fun b!2673918 () Bool)

(assert (=> b!2673918 (= e!1685483 (forall!6516 (t!223505 l!4335) lambda!99877))))

(assert (= (and d!764359 (not res!1124189)) b!2673917))

(assert (= (and b!2673917 res!1124190) b!2673918))

(declare-fun b_lambda!81493 () Bool)

(assert (=> (not b_lambda!81493) (not b!2673917)))

(declare-fun m!3039921 () Bool)

(assert (=> b!2673917 m!3039921))

(declare-fun m!3039923 () Bool)

(assert (=> b!2673918 m!3039923))

(assert (=> b!2673506 d!764359))

(declare-fun d!764361 () Bool)

(assert (=> d!764361 (= (inv!41782 (tag!5203 (h!36199 rules!1712))) (= (mod (str.len (value!151582 (tag!5203 (h!36199 rules!1712)))) 2) 0))))

(assert (=> b!2673507 d!764361))

(declare-fun d!764363 () Bool)

(declare-fun res!1124191 () Bool)

(declare-fun e!1685484 () Bool)

(assert (=> d!764363 (=> (not res!1124191) (not e!1685484))))

(assert (=> d!764363 (= res!1124191 (semiInverseModEq!1946 (toChars!6502 (transformation!4701 (h!36199 rules!1712))) (toValue!6643 (transformation!4701 (h!36199 rules!1712)))))))

(assert (=> d!764363 (= (inv!41786 (transformation!4701 (h!36199 rules!1712))) e!1685484)))

(declare-fun b!2673919 () Bool)

(assert (=> b!2673919 (= e!1685484 (equivClasses!1847 (toChars!6502 (transformation!4701 (h!36199 rules!1712))) (toValue!6643 (transformation!4701 (h!36199 rules!1712)))))))

(assert (= (and d!764363 res!1124191) b!2673919))

(declare-fun m!3039925 () Bool)

(assert (=> d!764363 m!3039925))

(declare-fun m!3039927 () Bool)

(assert (=> b!2673919 m!3039927))

(assert (=> b!2673507 d!764363))

(declare-fun bs!479616 () Bool)

(declare-fun d!764365 () Bool)

(assert (= bs!479616 (and d!764365 b!2673506)))

(declare-fun lambda!99890 () Int)

(assert (=> bs!479616 (not (= lambda!99890 lambda!99877))))

(declare-fun bs!479617 () Bool)

(assert (= bs!479617 (and d!764365 b!2673516)))

(assert (=> bs!479617 (= lambda!99890 lambda!99878)))

(declare-fun bs!479618 () Bool)

(assert (= bs!479618 (and d!764365 b!2673897)))

(assert (=> bs!479618 (= lambda!99890 lambda!99887)))

(declare-fun b!2673928 () Bool)

(declare-fun e!1685493 () Bool)

(assert (=> b!2673928 (= e!1685493 true)))

(declare-fun b!2673927 () Bool)

(declare-fun e!1685492 () Bool)

(assert (=> b!2673927 (= e!1685492 e!1685493)))

(declare-fun b!2673926 () Bool)

(declare-fun e!1685491 () Bool)

(assert (=> b!2673926 (= e!1685491 e!1685492)))

(assert (=> d!764365 e!1685491))

(assert (= b!2673927 b!2673928))

(assert (= b!2673926 b!2673927))

(assert (= (and d!764365 ((_ is Cons!30779) rules!1712)) b!2673926))

(assert (=> b!2673928 (< (dynLambda!13356 order!16955 (toValue!6643 (transformation!4701 (h!36199 rules!1712)))) (dynLambda!13357 order!16957 lambda!99890))))

(assert (=> b!2673928 (< (dynLambda!13358 order!16959 (toChars!6502 (transformation!4701 (h!36199 rules!1712)))) (dynLambda!13357 order!16957 lambda!99890))))

(assert (=> d!764365 true))

(declare-fun lt!941506 () Bool)

(assert (=> d!764365 (= lt!941506 (forall!6516 l!4335 lambda!99890))))

(declare-fun e!1685489 () Bool)

(assert (=> d!764365 (= lt!941506 e!1685489)))

(declare-fun res!1124196 () Bool)

(assert (=> d!764365 (=> res!1124196 e!1685489)))

(assert (=> d!764365 (= res!1124196 (not ((_ is Cons!30780) l!4335)))))

(assert (=> d!764365 (not (isEmpty!17599 rules!1712))))

(assert (=> d!764365 (= (rulesProduceEachTokenIndividuallyList!1520 thiss!14116 rules!1712 l!4335) lt!941506)))

(declare-fun b!2673924 () Bool)

(declare-fun e!1685490 () Bool)

(assert (=> b!2673924 (= e!1685489 e!1685490)))

(declare-fun res!1124197 () Bool)

(assert (=> b!2673924 (=> (not res!1124197) (not e!1685490))))

(assert (=> b!2673924 (= res!1124197 (rulesProduceIndividualToken!2010 thiss!14116 rules!1712 (h!36200 l!4335)))))

(declare-fun b!2673925 () Bool)

(assert (=> b!2673925 (= e!1685490 (rulesProduceEachTokenIndividuallyList!1520 thiss!14116 rules!1712 (t!223505 l!4335)))))

(assert (= (and d!764365 (not res!1124196)) b!2673924))

(assert (= (and b!2673924 res!1124197) b!2673925))

(declare-fun m!3039929 () Bool)

(assert (=> d!764365 m!3039929))

(assert (=> d!764365 m!3039463))

(declare-fun m!3039931 () Bool)

(assert (=> b!2673924 m!3039931))

(declare-fun m!3039933 () Bool)

(assert (=> b!2673925 m!3039933))

(assert (=> b!2673518 d!764365))

(declare-fun d!764367 () Bool)

(declare-fun res!1124198 () Bool)

(declare-fun e!1685494 () Bool)

(assert (=> d!764367 (=> (not res!1124198) (not e!1685494))))

(assert (=> d!764367 (= res!1124198 (not (isEmpty!17603 (originalCharacters!5467 separatorToken!152))))))

(assert (=> d!764367 (= (inv!41785 separatorToken!152) e!1685494)))

(declare-fun b!2673929 () Bool)

(declare-fun res!1124199 () Bool)

(assert (=> b!2673929 (=> (not res!1124199) (not e!1685494))))

(assert (=> b!2673929 (= res!1124199 (= (originalCharacters!5467 separatorToken!152) (list!11619 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (value!151583 separatorToken!152)))))))

(declare-fun b!2673930 () Bool)

(assert (=> b!2673930 (= e!1685494 (= (size!23781 separatorToken!152) (size!23785 (originalCharacters!5467 separatorToken!152))))))

(assert (= (and d!764367 res!1124198) b!2673929))

(assert (= (and b!2673929 res!1124199) b!2673930))

(declare-fun b_lambda!81495 () Bool)

(assert (=> (not b_lambda!81495) (not b!2673929)))

(declare-fun tb!149835 () Bool)

(declare-fun t!223546 () Bool)

(assert (=> (and b!2673522 (= (toChars!6502 (transformation!4701 (h!36199 rules!1712))) (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152)))) t!223546) tb!149835))

(declare-fun b!2673931 () Bool)

(declare-fun e!1685495 () Bool)

(declare-fun tp!845594 () Bool)

(assert (=> b!2673931 (= e!1685495 (and (inv!41789 (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (value!151583 separatorToken!152)))) tp!845594))))

(declare-fun result!185090 () Bool)

(assert (=> tb!149835 (= result!185090 (and (inv!41790 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (value!151583 separatorToken!152))) e!1685495))))

(assert (= tb!149835 b!2673931))

(declare-fun m!3039935 () Bool)

(assert (=> b!2673931 m!3039935))

(declare-fun m!3039937 () Bool)

(assert (=> tb!149835 m!3039937))

(assert (=> b!2673929 t!223546))

(declare-fun b_and!197575 () Bool)

(assert (= b_and!197555 (and (=> t!223546 result!185090) b_and!197575)))

(declare-fun tb!149837 () Bool)

(declare-fun t!223548 () Bool)

(assert (=> (and b!2673519 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152)))) t!223548) tb!149837))

(declare-fun result!185092 () Bool)

(assert (= result!185092 result!185090))

(assert (=> b!2673929 t!223548))

(declare-fun b_and!197577 () Bool)

(assert (= b_and!197557 (and (=> t!223548 result!185092) b_and!197577)))

(declare-fun t!223550 () Bool)

(declare-fun tb!149839 () Bool)

(assert (=> (and b!2673517 (= (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152)))) t!223550) tb!149839))

(declare-fun result!185094 () Bool)

(assert (= result!185094 result!185090))

(assert (=> b!2673929 t!223550))

(declare-fun b_and!197579 () Bool)

(assert (= b_and!197559 (and (=> t!223550 result!185094) b_and!197579)))

(declare-fun m!3039939 () Bool)

(assert (=> d!764367 m!3039939))

(declare-fun m!3039941 () Bool)

(assert (=> b!2673929 m!3039941))

(assert (=> b!2673929 m!3039941))

(declare-fun m!3039943 () Bool)

(assert (=> b!2673929 m!3039943))

(declare-fun m!3039945 () Bool)

(assert (=> b!2673930 m!3039945))

(assert (=> start!260054 d!764367))

(declare-fun d!764369 () Bool)

(declare-fun res!1124204 () Bool)

(declare-fun e!1685500 () Bool)

(assert (=> d!764369 (=> res!1124204 e!1685500)))

(assert (=> d!764369 (= res!1124204 (not ((_ is Cons!30779) rules!1712)))))

(assert (=> d!764369 (= (sepAndNonSepRulesDisjointChars!1274 rules!1712 rules!1712) e!1685500)))

(declare-fun b!2673936 () Bool)

(declare-fun e!1685501 () Bool)

(assert (=> b!2673936 (= e!1685500 e!1685501)))

(declare-fun res!1124205 () Bool)

(assert (=> b!2673936 (=> (not res!1124205) (not e!1685501))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!553 (Rule!9202 List!30879) Bool)

(assert (=> b!2673936 (= res!1124205 (ruleDisjointCharsFromAllFromOtherType!553 (h!36199 rules!1712) rules!1712))))

(declare-fun b!2673937 () Bool)

(assert (=> b!2673937 (= e!1685501 (sepAndNonSepRulesDisjointChars!1274 rules!1712 (t!223504 rules!1712)))))

(assert (= (and d!764369 (not res!1124204)) b!2673936))

(assert (= (and b!2673936 res!1124205) b!2673937))

(declare-fun m!3039947 () Bool)

(assert (=> b!2673936 m!3039947))

(declare-fun m!3039949 () Bool)

(assert (=> b!2673937 m!3039949))

(assert (=> b!2673520 d!764369))

(declare-fun b!2673951 () Bool)

(declare-fun b_free!75357 () Bool)

(declare-fun b_next!76061 () Bool)

(assert (=> b!2673951 (= b_free!75357 (not b_next!76061))))

(declare-fun tp!845605 () Bool)

(declare-fun b_and!197581 () Bool)

(assert (=> b!2673951 (= tp!845605 b_and!197581)))

(declare-fun b_free!75359 () Bool)

(declare-fun b_next!76063 () Bool)

(assert (=> b!2673951 (= b_free!75359 (not b_next!76063))))

(declare-fun t!223552 () Bool)

(declare-fun tb!149841 () Bool)

(assert (=> (and b!2673951 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335))))) t!223552) tb!149841))

(declare-fun result!185098 () Bool)

(assert (= result!185098 result!185066))

(assert (=> b!2673670 t!223552))

(assert (=> d!764335 t!223552))

(declare-fun tb!149843 () Bool)

(declare-fun t!223554 () Bool)

(assert (=> (and b!2673951 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))) (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152)))) t!223554) tb!149843))

(declare-fun result!185100 () Bool)

(assert (= result!185100 result!185090))

(assert (=> b!2673929 t!223554))

(declare-fun b_and!197583 () Bool)

(declare-fun tp!845607 () Bool)

(assert (=> b!2673951 (= tp!845607 (and (=> t!223552 result!185098) (=> t!223554 result!185100) b_and!197583))))

(declare-fun e!1685514 () Bool)

(declare-fun b!2673950 () Bool)

(declare-fun tp!845606 () Bool)

(declare-fun e!1685515 () Bool)

(assert (=> b!2673950 (= e!1685514 (and tp!845606 (inv!41782 (tag!5203 (rule!7107 (h!36200 (t!223505 l!4335))))) (inv!41786 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))) e!1685515))))

(declare-fun tp!845608 () Bool)

(declare-fun e!1685516 () Bool)

(declare-fun e!1685517 () Bool)

(declare-fun b!2673948 () Bool)

(assert (=> b!2673948 (= e!1685516 (and (inv!41785 (h!36200 (t!223505 l!4335))) e!1685517 tp!845608))))

(assert (=> b!2673951 (= e!1685515 (and tp!845605 tp!845607))))

(declare-fun tp!845609 () Bool)

(declare-fun b!2673949 () Bool)

(assert (=> b!2673949 (= e!1685517 (and (inv!21 (value!151583 (h!36200 (t!223505 l!4335)))) e!1685514 tp!845609))))

(assert (=> b!2673512 (= tp!845524 e!1685516)))

(assert (= b!2673950 b!2673951))

(assert (= b!2673949 b!2673950))

(assert (= b!2673948 b!2673949))

(assert (= (and b!2673512 ((_ is Cons!30780) (t!223505 l!4335))) b!2673948))

(declare-fun m!3039951 () Bool)

(assert (=> b!2673950 m!3039951))

(declare-fun m!3039953 () Bool)

(assert (=> b!2673950 m!3039953))

(declare-fun m!3039955 () Bool)

(assert (=> b!2673948 m!3039955))

(declare-fun m!3039957 () Bool)

(assert (=> b!2673949 m!3039957))

(declare-fun b!2673962 () Bool)

(declare-fun e!1685522 () Bool)

(declare-fun tp_is_empty!13821 () Bool)

(assert (=> b!2673962 (= e!1685522 tp_is_empty!13821)))

(declare-fun b!2673965 () Bool)

(declare-fun tp!845623 () Bool)

(declare-fun tp!845624 () Bool)

(assert (=> b!2673965 (= e!1685522 (and tp!845623 tp!845624))))

(declare-fun b!2673964 () Bool)

(declare-fun tp!845622 () Bool)

(assert (=> b!2673964 (= e!1685522 tp!845622)))

(assert (=> b!2673523 (= tp!845522 e!1685522)))

(declare-fun b!2673963 () Bool)

(declare-fun tp!845621 () Bool)

(declare-fun tp!845620 () Bool)

(assert (=> b!2673963 (= e!1685522 (and tp!845621 tp!845620))))

(assert (= (and b!2673523 ((_ is ElementMatch!7845) (regex!4701 (rule!7107 (h!36200 l!4335))))) b!2673962))

(assert (= (and b!2673523 ((_ is Concat!12769) (regex!4701 (rule!7107 (h!36200 l!4335))))) b!2673963))

(assert (= (and b!2673523 ((_ is Star!7845) (regex!4701 (rule!7107 (h!36200 l!4335))))) b!2673964))

(assert (= (and b!2673523 ((_ is Union!7845) (regex!4701 (rule!7107 (h!36200 l!4335))))) b!2673965))

(declare-fun b!2673970 () Bool)

(declare-fun e!1685525 () Bool)

(declare-fun tp!845627 () Bool)

(assert (=> b!2673970 (= e!1685525 (and tp_is_empty!13821 tp!845627))))

(assert (=> b!2673513 (= tp!845525 e!1685525)))

(assert (= (and b!2673513 ((_ is Cons!30778) (originalCharacters!5467 (h!36200 l!4335)))) b!2673970))

(declare-fun b!2673971 () Bool)

(declare-fun e!1685526 () Bool)

(assert (=> b!2673971 (= e!1685526 tp_is_empty!13821)))

(declare-fun b!2673974 () Bool)

(declare-fun tp!845631 () Bool)

(declare-fun tp!845632 () Bool)

(assert (=> b!2673974 (= e!1685526 (and tp!845631 tp!845632))))

(declare-fun b!2673973 () Bool)

(declare-fun tp!845630 () Bool)

(assert (=> b!2673973 (= e!1685526 tp!845630)))

(assert (=> b!2673514 (= tp!845530 e!1685526)))

(declare-fun b!2673972 () Bool)

(declare-fun tp!845629 () Bool)

(declare-fun tp!845628 () Bool)

(assert (=> b!2673972 (= e!1685526 (and tp!845629 tp!845628))))

(assert (= (and b!2673514 ((_ is ElementMatch!7845) (regex!4701 (rule!7107 separatorToken!152)))) b!2673971))

(assert (= (and b!2673514 ((_ is Concat!12769) (regex!4701 (rule!7107 separatorToken!152)))) b!2673972))

(assert (= (and b!2673514 ((_ is Star!7845) (regex!4701 (rule!7107 separatorToken!152)))) b!2673973))

(assert (= (and b!2673514 ((_ is Union!7845) (regex!4701 (rule!7107 separatorToken!152)))) b!2673974))

(declare-fun b!2673975 () Bool)

(declare-fun e!1685527 () Bool)

(declare-fun tp!845633 () Bool)

(assert (=> b!2673975 (= e!1685527 (and tp_is_empty!13821 tp!845633))))

(assert (=> b!2673526 (= tp!845521 e!1685527)))

(assert (= (and b!2673526 ((_ is Cons!30778) (originalCharacters!5467 separatorToken!152))) b!2673975))

(declare-fun b!2673978 () Bool)

(declare-fun e!1685530 () Bool)

(assert (=> b!2673978 (= e!1685530 true)))

(declare-fun b!2673977 () Bool)

(declare-fun e!1685529 () Bool)

(assert (=> b!2673977 (= e!1685529 e!1685530)))

(declare-fun b!2673976 () Bool)

(declare-fun e!1685528 () Bool)

(assert (=> b!2673976 (= e!1685528 e!1685529)))

(assert (=> b!2673535 e!1685528))

(assert (= b!2673977 b!2673978))

(assert (= b!2673976 b!2673977))

(assert (= (and b!2673535 ((_ is Cons!30779) (t!223504 rules!1712))) b!2673976))

(assert (=> b!2673978 (< (dynLambda!13356 order!16955 (toValue!6643 (transformation!4701 (h!36199 (t!223504 rules!1712))))) (dynLambda!13357 order!16957 lambda!99878))))

(assert (=> b!2673978 (< (dynLambda!13358 order!16959 (toChars!6502 (transformation!4701 (h!36199 (t!223504 rules!1712))))) (dynLambda!13357 order!16957 lambda!99878))))

(declare-fun b!2673979 () Bool)

(declare-fun e!1685531 () Bool)

(assert (=> b!2673979 (= e!1685531 tp_is_empty!13821)))

(declare-fun b!2673982 () Bool)

(declare-fun tp!845637 () Bool)

(declare-fun tp!845638 () Bool)

(assert (=> b!2673982 (= e!1685531 (and tp!845637 tp!845638))))

(declare-fun b!2673981 () Bool)

(declare-fun tp!845636 () Bool)

(assert (=> b!2673981 (= e!1685531 tp!845636)))

(assert (=> b!2673507 (= tp!845529 e!1685531)))

(declare-fun b!2673980 () Bool)

(declare-fun tp!845635 () Bool)

(declare-fun tp!845634 () Bool)

(assert (=> b!2673980 (= e!1685531 (and tp!845635 tp!845634))))

(assert (= (and b!2673507 ((_ is ElementMatch!7845) (regex!4701 (h!36199 rules!1712)))) b!2673979))

(assert (= (and b!2673507 ((_ is Concat!12769) (regex!4701 (h!36199 rules!1712)))) b!2673980))

(assert (= (and b!2673507 ((_ is Star!7845) (regex!4701 (h!36199 rules!1712)))) b!2673981))

(assert (= (and b!2673507 ((_ is Union!7845) (regex!4701 (h!36199 rules!1712)))) b!2673982))

(declare-fun b!2673993 () Bool)

(declare-fun b_free!75361 () Bool)

(declare-fun b_next!76065 () Bool)

(assert (=> b!2673993 (= b_free!75361 (not b_next!76065))))

(declare-fun tp!845647 () Bool)

(declare-fun b_and!197585 () Bool)

(assert (=> b!2673993 (= tp!845647 b_and!197585)))

(declare-fun b_free!75363 () Bool)

(declare-fun b_next!76067 () Bool)

(assert (=> b!2673993 (= b_free!75363 (not b_next!76067))))

(declare-fun t!223556 () Bool)

(declare-fun tb!149845 () Bool)

(assert (=> (and b!2673993 (= (toChars!6502 (transformation!4701 (h!36199 (t!223504 rules!1712)))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335))))) t!223556) tb!149845))

(declare-fun result!185108 () Bool)

(assert (= result!185108 result!185066))

(assert (=> b!2673670 t!223556))

(assert (=> d!764335 t!223556))

(declare-fun t!223558 () Bool)

(declare-fun tb!149847 () Bool)

(assert (=> (and b!2673993 (= (toChars!6502 (transformation!4701 (h!36199 (t!223504 rules!1712)))) (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152)))) t!223558) tb!149847))

(declare-fun result!185110 () Bool)

(assert (= result!185110 result!185090))

(assert (=> b!2673929 t!223558))

(declare-fun b_and!197587 () Bool)

(declare-fun tp!845648 () Bool)

(assert (=> b!2673993 (= tp!845648 (and (=> t!223556 result!185108) (=> t!223558 result!185110) b_and!197587))))

(declare-fun e!1685543 () Bool)

(assert (=> b!2673993 (= e!1685543 (and tp!845647 tp!845648))))

(declare-fun b!2673992 () Bool)

(declare-fun tp!845649 () Bool)

(declare-fun e!1685541 () Bool)

(assert (=> b!2673992 (= e!1685541 (and tp!845649 (inv!41782 (tag!5203 (h!36199 (t!223504 rules!1712)))) (inv!41786 (transformation!4701 (h!36199 (t!223504 rules!1712)))) e!1685543))))

(declare-fun b!2673991 () Bool)

(declare-fun e!1685540 () Bool)

(declare-fun tp!845650 () Bool)

(assert (=> b!2673991 (= e!1685540 (and e!1685541 tp!845650))))

(assert (=> b!2673509 (= tp!845520 e!1685540)))

(assert (= b!2673992 b!2673993))

(assert (= b!2673991 b!2673992))

(assert (= (and b!2673509 ((_ is Cons!30779) (t!223504 rules!1712))) b!2673991))

(declare-fun m!3039959 () Bool)

(assert (=> b!2673992 m!3039959))

(declare-fun m!3039961 () Bool)

(assert (=> b!2673992 m!3039961))

(declare-fun b_lambda!81497 () Bool)

(assert (= b_lambda!81495 (or (and b!2673517 b_free!75347) (and b!2673993 b_free!75363 (= (toChars!6502 (transformation!4701 (h!36199 (t!223504 rules!1712)))) (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))))) (and b!2673522 b_free!75339 (= (toChars!6502 (transformation!4701 (h!36199 rules!1712))) (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))))) (and b!2673519 b_free!75343 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))))) (and b!2673951 b_free!75359 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))) (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))))) b_lambda!81497)))

(declare-fun b_lambda!81499 () Bool)

(assert (= b_lambda!81493 (or b!2673506 b_lambda!81499)))

(declare-fun bs!479619 () Bool)

(declare-fun d!764371 () Bool)

(assert (= bs!479619 (and d!764371 b!2673506)))

(assert (=> bs!479619 (= (dynLambda!13362 lambda!99877 (h!36200 l!4335)) (not (isSeparator!4701 (rule!7107 (h!36200 l!4335)))))))

(assert (=> b!2673917 d!764371))

(declare-fun b_lambda!81501 () Bool)

(assert (= b_lambda!81473 (or (and b!2673993 b_free!75363 (= (toChars!6502 (transformation!4701 (h!36199 (t!223504 rules!1712)))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))))) (and b!2673951 b_free!75359 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))))) (and b!2673519 b_free!75343) (and b!2673517 b_free!75347 (= (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))))) (and b!2673522 b_free!75339 (= (toChars!6502 (transformation!4701 (h!36199 rules!1712))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))))) b_lambda!81501)))

(declare-fun b_lambda!81503 () Bool)

(assert (= b_lambda!81479 (or b!2673516 b_lambda!81503)))

(declare-fun bs!479620 () Bool)

(declare-fun d!764373 () Bool)

(assert (= bs!479620 (and d!764373 b!2673516)))

(assert (=> bs!479620 (= (dynLambda!13362 lambda!99878 (h!36200 l!4335)) (rulesProduceIndividualToken!2010 thiss!14116 rules!1712 (h!36200 l!4335)))))

(assert (=> bs!479620 m!3039931))

(assert (=> d!764341 d!764373))

(declare-fun b_lambda!81505 () Bool)

(assert (= b_lambda!81477 (or (and b!2673993 b_free!75363 (= (toChars!6502 (transformation!4701 (h!36199 (t!223504 rules!1712)))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))))) (and b!2673951 b_free!75359 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))))) (and b!2673519 b_free!75343) (and b!2673517 b_free!75347 (= (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))))) (and b!2673522 b_free!75339 (= (toChars!6502 (transformation!4701 (h!36199 rules!1712))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))))) b_lambda!81505)))

(check-sat (not b!2673936) (not b_next!76051) (not b!2673929) (not b!2673730) (not b!2673910) (not b!2673963) (not bm!172538) (not b_lambda!81501) (not b!2673895) b_and!197583 (not b!2673974) (not b!2673712) (not d!764363) (not b!2673760) (not b!2673970) (not b!2673950) (not b!2673973) (not b_lambda!81499) (not b!2673758) (not b!2673705) (not b!2673713) (not d!764327) tp_is_empty!13821 (not d!764329) (not b!2673766) (not b!2673992) (not b!2673690) (not b!2673948) (not b!2673723) (not b!2673919) (not tb!149821) (not d!764261) (not b!2673964) (not b!2673671) b_and!197577 (not d!764317) (not b!2673702) (not b!2673975) (not b!2673931) (not d!764335) (not b_next!76067) (not d!764367) (not b!2673949) (not b!2673643) (not b!2673735) (not b_next!76047) (not d!764365) (not b!2673982) b_and!197587 (not b_next!76065) (not bm!172539) (not d!764341) (not b!2673716) (not b_lambda!81505) (not b!2673725) (not b_lambda!81503) (not bm!172511) (not d!764357) b_and!197529 b_and!197579 (not b!2673762) (not b!2673926) (not b!2673734) (not b!2673642) (not b!2673647) (not b!2673972) b_and!197533 (not b!2673897) b_and!197525 (not b!2673670) (not b!2673761) (not tb!149835) (not b!2673918) (not d!764337) (not b_lambda!81497) (not d!764323) (not d!764339) (not b!2673930) (not b!2673756) (not b!2673732) (not b_next!76049) (not d!764305) (not b!2673991) (not d!764325) (not b!2673925) (not bm!172540) (not b_next!76063) (not b!2673889) (not b!2673924) (not b!2673981) b_and!197581 (not b!2673937) b_and!197575 (not b!2673755) (not b!2673965) (not b!2673763) (not b!2673676) (not b!2673911) (not b!2673980) (not b!2673704) (not b!2673976) (not d!764321) (not b_next!76041) (not b_next!76043) (not bs!479620) (not bm!172537) b_and!197585 (not b_next!76061) (not b!2673757) (not b!2673898) (not b_next!76045) (not d!764301) (not b!2673644) (not d!764309) (not b!2673891))
(check-sat b_and!197583 b_and!197577 (not b_next!76067) (not b_next!76049) (not b_next!76063) (not b_next!76041) (not b_next!76043) (not b_next!76051) (not b_next!76045) (not b_next!76047) b_and!197587 (not b_next!76065) b_and!197529 b_and!197579 b_and!197533 b_and!197525 b_and!197581 b_and!197575 b_and!197585 (not b_next!76061))
(get-model)

(declare-fun b!2674038 () Bool)

(declare-fun e!1685572 () List!30880)

(declare-fun e!1685570 () List!30880)

(assert (=> b!2674038 (= e!1685572 e!1685570)))

(declare-fun c!430846 () Bool)

(assert (=> b!2674038 (= c!430846 (<= 0 0))))

(declare-fun bm!172550 () Bool)

(declare-fun call!172555 () Int)

(declare-fun size!23786 (List!30880) Int)

(assert (=> bm!172550 (= call!172555 (size!23786 lt!941437))))

(declare-fun b!2674039 () Bool)

(declare-fun e!1685573 () Int)

(assert (=> b!2674039 (= e!1685573 call!172555)))

(declare-fun d!764383 () Bool)

(declare-fun e!1685569 () Bool)

(assert (=> d!764383 e!1685569))

(declare-fun res!1124227 () Bool)

(assert (=> d!764383 (=> (not res!1124227) (not e!1685569))))

(declare-fun lt!941527 () List!30880)

(assert (=> d!764383 (= res!1124227 (= ((_ map implies) (content!4368 lt!941527) (content!4368 lt!941437)) ((as const (InoxSet Token!8872)) true)))))

(assert (=> d!764383 (= lt!941527 e!1685572)))

(declare-fun c!430848 () Bool)

(assert (=> d!764383 (= c!430848 ((_ is Nil!30780) lt!941437))))

(assert (=> d!764383 (= (drop!1669 lt!941437 0) lt!941527)))

(declare-fun b!2674040 () Bool)

(declare-fun e!1685571 () Int)

(assert (=> b!2674040 (= e!1685571 (- call!172555 0))))

(declare-fun b!2674041 () Bool)

(assert (=> b!2674041 (= e!1685572 Nil!30780)))

(declare-fun b!2674042 () Bool)

(assert (=> b!2674042 (= e!1685569 (= (size!23786 lt!941527) e!1685573))))

(declare-fun c!430847 () Bool)

(assert (=> b!2674042 (= c!430847 (<= 0 0))))

(declare-fun b!2674043 () Bool)

(assert (=> b!2674043 (= e!1685571 0)))

(declare-fun b!2674044 () Bool)

(assert (=> b!2674044 (= e!1685573 e!1685571)))

(declare-fun c!430849 () Bool)

(assert (=> b!2674044 (= c!430849 (>= 0 call!172555))))

(declare-fun b!2674045 () Bool)

(assert (=> b!2674045 (= e!1685570 lt!941437)))

(declare-fun b!2674046 () Bool)

(assert (=> b!2674046 (= e!1685570 (drop!1669 (t!223505 lt!941437) (- 0 1)))))

(assert (= (and d!764383 c!430848) b!2674041))

(assert (= (and d!764383 (not c!430848)) b!2674038))

(assert (= (and b!2674038 c!430846) b!2674045))

(assert (= (and b!2674038 (not c!430846)) b!2674046))

(assert (= (and d!764383 res!1124227) b!2674042))

(assert (= (and b!2674042 c!430847) b!2674039))

(assert (= (and b!2674042 (not c!430847)) b!2674044))

(assert (= (and b!2674044 c!430849) b!2674043))

(assert (= (and b!2674044 (not c!430849)) b!2674040))

(assert (= (or b!2674039 b!2674044 b!2674040) bm!172550))

(declare-fun m!3040031 () Bool)

(assert (=> bm!172550 m!3040031))

(declare-fun m!3040035 () Bool)

(assert (=> d!764383 m!3040035))

(declare-fun m!3040039 () Bool)

(assert (=> d!764383 m!3040039))

(declare-fun m!3040041 () Bool)

(assert (=> b!2674042 m!3040041))

(declare-fun m!3040043 () Bool)

(assert (=> b!2674046 m!3040043))

(assert (=> b!2673725 d!764383))

(declare-fun d!764389 () Bool)

(declare-fun list!11624 (Conc!9633) List!30880)

(assert (=> d!764389 (= (list!11622 lt!941343) (list!11624 (c!430761 lt!941343)))))

(declare-fun bs!479627 () Bool)

(assert (= bs!479627 d!764389))

(declare-fun m!3040055 () Bool)

(assert (=> bs!479627 m!3040055))

(assert (=> b!2673725 d!764389))

(declare-fun d!764393 () Bool)

(assert (=> d!764393 (= (tail!4315 (drop!1669 lt!941437 0)) (t!223505 (drop!1669 lt!941437 0)))))

(assert (=> b!2673725 d!764393))

(declare-fun d!764395 () Bool)

(assert (=> d!764395 (= (head!6077 (drop!1669 lt!941432 0)) (h!36200 (drop!1669 lt!941432 0)))))

(assert (=> b!2673725 d!764395))

(declare-fun d!764397 () Bool)

(declare-fun lt!941532 () Token!8872)

(assert (=> d!764397 (contains!5915 lt!941432 lt!941532)))

(declare-fun e!1685583 () Token!8872)

(assert (=> d!764397 (= lt!941532 e!1685583)))

(declare-fun c!430855 () Bool)

(assert (=> d!764397 (= c!430855 (= 0 0))))

(declare-fun e!1685584 () Bool)

(assert (=> d!764397 e!1685584))

(declare-fun res!1124232 () Bool)

(assert (=> d!764397 (=> (not res!1124232) (not e!1685584))))

(assert (=> d!764397 (= res!1124232 (<= 0 0))))

(assert (=> d!764397 (= (apply!7377 lt!941432 0) lt!941532)))

(declare-fun b!2674062 () Bool)

(assert (=> b!2674062 (= e!1685584 (< 0 (size!23786 lt!941432)))))

(declare-fun b!2674063 () Bool)

(assert (=> b!2674063 (= e!1685583 (head!6077 lt!941432))))

(declare-fun b!2674064 () Bool)

(assert (=> b!2674064 (= e!1685583 (apply!7377 (tail!4315 lt!941432) (- 0 1)))))

(assert (= (and d!764397 res!1124232) b!2674062))

(assert (= (and d!764397 c!430855) b!2674063))

(assert (= (and d!764397 (not c!430855)) b!2674064))

(declare-fun m!3040079 () Bool)

(assert (=> d!764397 m!3040079))

(declare-fun m!3040081 () Bool)

(assert (=> b!2674062 m!3040081))

(declare-fun m!3040083 () Bool)

(assert (=> b!2674063 m!3040083))

(declare-fun m!3040085 () Bool)

(assert (=> b!2674064 m!3040085))

(assert (=> b!2674064 m!3040085))

(declare-fun m!3040087 () Bool)

(assert (=> b!2674064 m!3040087))

(assert (=> b!2673725 d!764397))

(declare-fun d!764403 () Bool)

(declare-fun e!1685600 () Bool)

(assert (=> d!764403 e!1685600))

(declare-fun res!1124246 () Bool)

(assert (=> d!764403 (=> (not res!1124246) (not e!1685600))))

(declare-fun appendAssocInst!645 (Conc!9632 Conc!9632) Bool)

(assert (=> d!764403 (= res!1124246 (appendAssocInst!645 (c!430759 (BalanceConc!18879 Empty!9632)) (c!430759 (charsOf!2964 (apply!7376 lt!941343 0)))))))

(declare-fun lt!941537 () BalanceConc!18878)

(declare-fun ++!7510 (Conc!9632 Conc!9632) Conc!9632)

(assert (=> d!764403 (= lt!941537 (BalanceConc!18879 (++!7510 (c!430759 (BalanceConc!18879 Empty!9632)) (c!430759 (charsOf!2964 (apply!7376 lt!941343 0))))))))

(assert (=> d!764403 (= (++!7509 (BalanceConc!18879 Empty!9632) (charsOf!2964 (apply!7376 lt!941343 0))) lt!941537)))

(declare-fun b!2674098 () Bool)

(declare-fun res!1124247 () Bool)

(assert (=> b!2674098 (=> (not res!1124247) (not e!1685600))))

(declare-fun height!1399 (Conc!9632) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2674098 (= res!1124247 (>= (height!1399 (++!7510 (c!430759 (BalanceConc!18879 Empty!9632)) (c!430759 (charsOf!2964 (apply!7376 lt!941343 0))))) (max!0 (height!1399 (c!430759 (BalanceConc!18879 Empty!9632))) (height!1399 (c!430759 (charsOf!2964 (apply!7376 lt!941343 0)))))))))

(declare-fun b!2674097 () Bool)

(declare-fun res!1124249 () Bool)

(assert (=> b!2674097 (=> (not res!1124249) (not e!1685600))))

(assert (=> b!2674097 (= res!1124249 (<= (height!1399 (++!7510 (c!430759 (BalanceConc!18879 Empty!9632)) (c!430759 (charsOf!2964 (apply!7376 lt!941343 0))))) (+ (max!0 (height!1399 (c!430759 (BalanceConc!18879 Empty!9632))) (height!1399 (c!430759 (charsOf!2964 (apply!7376 lt!941343 0))))) 1)))))

(declare-fun b!2674099 () Bool)

(assert (=> b!2674099 (= e!1685600 (= (list!11619 lt!941537) (++!7507 (list!11619 (BalanceConc!18879 Empty!9632)) (list!11619 (charsOf!2964 (apply!7376 lt!941343 0))))))))

(declare-fun b!2674096 () Bool)

(declare-fun res!1124248 () Bool)

(assert (=> b!2674096 (=> (not res!1124248) (not e!1685600))))

(declare-fun isBalanced!2916 (Conc!9632) Bool)

(assert (=> b!2674096 (= res!1124248 (isBalanced!2916 (++!7510 (c!430759 (BalanceConc!18879 Empty!9632)) (c!430759 (charsOf!2964 (apply!7376 lt!941343 0))))))))

(assert (= (and d!764403 res!1124246) b!2674096))

(assert (= (and b!2674096 res!1124248) b!2674097))

(assert (= (and b!2674097 res!1124249) b!2674098))

(assert (= (and b!2674098 res!1124247) b!2674099))

(declare-fun m!3040131 () Bool)

(assert (=> b!2674099 m!3040131))

(assert (=> b!2674099 m!3039719))

(assert (=> b!2674099 m!3039731))

(declare-fun m!3040133 () Bool)

(assert (=> b!2674099 m!3040133))

(assert (=> b!2674099 m!3039719))

(assert (=> b!2674099 m!3040133))

(declare-fun m!3040135 () Bool)

(assert (=> b!2674099 m!3040135))

(declare-fun m!3040137 () Bool)

(assert (=> b!2674098 m!3040137))

(declare-fun m!3040139 () Bool)

(assert (=> b!2674098 m!3040139))

(declare-fun m!3040141 () Bool)

(assert (=> b!2674098 m!3040141))

(declare-fun m!3040145 () Bool)

(assert (=> b!2674098 m!3040145))

(assert (=> b!2674098 m!3040141))

(declare-fun m!3040147 () Bool)

(assert (=> b!2674098 m!3040147))

(assert (=> b!2674098 m!3040145))

(assert (=> b!2674098 m!3040137))

(assert (=> b!2674096 m!3040137))

(assert (=> b!2674096 m!3040137))

(declare-fun m!3040149 () Bool)

(assert (=> b!2674096 m!3040149))

(declare-fun m!3040151 () Bool)

(assert (=> d!764403 m!3040151))

(assert (=> d!764403 m!3040137))

(assert (=> b!2674097 m!3040137))

(assert (=> b!2674097 m!3040139))

(assert (=> b!2674097 m!3040141))

(assert (=> b!2674097 m!3040145))

(assert (=> b!2674097 m!3040141))

(assert (=> b!2674097 m!3040147))

(assert (=> b!2674097 m!3040145))

(assert (=> b!2674097 m!3040137))

(assert (=> b!2673725 d!764403))

(declare-fun d!764421 () Bool)

(assert (=> d!764421 (= (tail!4315 (drop!1669 lt!941437 0)) (drop!1669 lt!941437 (+ 0 1)))))

(declare-fun lt!941540 () Unit!44983)

(declare-fun choose!15840 (List!30880 Int) Unit!44983)

(assert (=> d!764421 (= lt!941540 (choose!15840 lt!941437 0))))

(declare-fun e!1685606 () Bool)

(assert (=> d!764421 e!1685606))

(declare-fun res!1124252 () Bool)

(assert (=> d!764421 (=> (not res!1124252) (not e!1685606))))

(assert (=> d!764421 (= res!1124252 (>= 0 0))))

(assert (=> d!764421 (= (lemmaDropTail!850 lt!941437 0) lt!941540)))

(declare-fun b!2674108 () Bool)

(assert (=> b!2674108 (= e!1685606 (< 0 (size!23786 lt!941437)))))

(assert (= (and d!764421 res!1124252) b!2674108))

(assert (=> d!764421 m!3039725))

(assert (=> d!764421 m!3039725))

(assert (=> d!764421 m!3039735))

(assert (=> d!764421 m!3039737))

(declare-fun m!3040173 () Bool)

(assert (=> d!764421 m!3040173))

(assert (=> b!2674108 m!3040031))

(assert (=> b!2673725 d!764421))

(declare-fun d!764431 () Bool)

(declare-fun lt!941541 () BalanceConc!18878)

(assert (=> d!764431 (= (list!11619 lt!941541) (originalCharacters!5467 (apply!7376 lt!941343 0)))))

(assert (=> d!764431 (= lt!941541 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (apply!7376 lt!941343 0)))) (value!151583 (apply!7376 lt!941343 0))))))

(assert (=> d!764431 (= (charsOf!2964 (apply!7376 lt!941343 0)) lt!941541)))

(declare-fun b_lambda!81513 () Bool)

(assert (=> (not b_lambda!81513) (not d!764431)))

(declare-fun tb!149859 () Bool)

(declare-fun t!223572 () Bool)

(assert (=> (and b!2673519 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (toChars!6502 (transformation!4701 (rule!7107 (apply!7376 lt!941343 0))))) t!223572) tb!149859))

(declare-fun b!2674109 () Bool)

(declare-fun e!1685607 () Bool)

(declare-fun tp!845652 () Bool)

(assert (=> b!2674109 (= e!1685607 (and (inv!41789 (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (apply!7376 lt!941343 0)))) (value!151583 (apply!7376 lt!941343 0))))) tp!845652))))

(declare-fun result!185122 () Bool)

(assert (=> tb!149859 (= result!185122 (and (inv!41790 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (apply!7376 lt!941343 0)))) (value!151583 (apply!7376 lt!941343 0)))) e!1685607))))

(assert (= tb!149859 b!2674109))

(declare-fun m!3040175 () Bool)

(assert (=> b!2674109 m!3040175))

(declare-fun m!3040177 () Bool)

(assert (=> tb!149859 m!3040177))

(assert (=> d!764431 t!223572))

(declare-fun b_and!197599 () Bool)

(assert (= b_and!197577 (and (=> t!223572 result!185122) b_and!197599)))

(declare-fun tb!149861 () Bool)

(declare-fun t!223574 () Bool)

(assert (=> (and b!2673951 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))) (toChars!6502 (transformation!4701 (rule!7107 (apply!7376 lt!941343 0))))) t!223574) tb!149861))

(declare-fun result!185124 () Bool)

(assert (= result!185124 result!185122))

(assert (=> d!764431 t!223574))

(declare-fun b_and!197601 () Bool)

(assert (= b_and!197583 (and (=> t!223574 result!185124) b_and!197601)))

(declare-fun tb!149863 () Bool)

(declare-fun t!223576 () Bool)

(assert (=> (and b!2673517 (= (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (toChars!6502 (transformation!4701 (rule!7107 (apply!7376 lt!941343 0))))) t!223576) tb!149863))

(declare-fun result!185126 () Bool)

(assert (= result!185126 result!185122))

(assert (=> d!764431 t!223576))

(declare-fun b_and!197603 () Bool)

(assert (= b_and!197579 (and (=> t!223576 result!185126) b_and!197603)))

(declare-fun t!223578 () Bool)

(declare-fun tb!149865 () Bool)

(assert (=> (and b!2673993 (= (toChars!6502 (transformation!4701 (h!36199 (t!223504 rules!1712)))) (toChars!6502 (transformation!4701 (rule!7107 (apply!7376 lt!941343 0))))) t!223578) tb!149865))

(declare-fun result!185128 () Bool)

(assert (= result!185128 result!185122))

(assert (=> d!764431 t!223578))

(declare-fun b_and!197605 () Bool)

(assert (= b_and!197587 (and (=> t!223578 result!185128) b_and!197605)))

(declare-fun t!223580 () Bool)

(declare-fun tb!149867 () Bool)

(assert (=> (and b!2673522 (= (toChars!6502 (transformation!4701 (h!36199 rules!1712))) (toChars!6502 (transformation!4701 (rule!7107 (apply!7376 lt!941343 0))))) t!223580) tb!149867))

(declare-fun result!185130 () Bool)

(assert (= result!185130 result!185122))

(assert (=> d!764431 t!223580))

(declare-fun b_and!197607 () Bool)

(assert (= b_and!197575 (and (=> t!223580 result!185130) b_and!197607)))

(declare-fun m!3040179 () Bool)

(assert (=> d!764431 m!3040179))

(declare-fun m!3040181 () Bool)

(assert (=> d!764431 m!3040181))

(assert (=> b!2673725 d!764431))

(declare-fun d!764433 () Bool)

(declare-fun lt!941546 () Token!8872)

(assert (=> d!764433 (= lt!941546 (apply!7377 (list!11622 lt!941343) 0))))

(declare-fun apply!7380 (Conc!9633 Int) Token!8872)

(assert (=> d!764433 (= lt!941546 (apply!7380 (c!430761 lt!941343) 0))))

(declare-fun e!1685614 () Bool)

(assert (=> d!764433 e!1685614))

(declare-fun res!1124257 () Bool)

(assert (=> d!764433 (=> (not res!1124257) (not e!1685614))))

(assert (=> d!764433 (= res!1124257 (<= 0 0))))

(assert (=> d!764433 (= (apply!7376 lt!941343 0) lt!941546)))

(declare-fun b!2674118 () Bool)

(assert (=> b!2674118 (= e!1685614 (< 0 (size!23784 lt!941343)))))

(assert (= (and d!764433 res!1124257) b!2674118))

(assert (=> d!764433 m!3039703))

(assert (=> d!764433 m!3039703))

(declare-fun m!3040183 () Bool)

(assert (=> d!764433 m!3040183))

(declare-fun m!3040185 () Bool)

(assert (=> d!764433 m!3040185))

(assert (=> b!2674118 m!3039715))

(assert (=> b!2673725 d!764433))

(declare-fun b!2674119 () Bool)

(declare-fun e!1685618 () List!30880)

(declare-fun e!1685616 () List!30880)

(assert (=> b!2674119 (= e!1685618 e!1685616)))

(declare-fun c!430873 () Bool)

(assert (=> b!2674119 (= c!430873 (<= 0 0))))

(declare-fun bm!172551 () Bool)

(declare-fun call!172556 () Int)

(assert (=> bm!172551 (= call!172556 (size!23786 lt!941432))))

(declare-fun b!2674120 () Bool)

(declare-fun e!1685619 () Int)

(assert (=> b!2674120 (= e!1685619 call!172556)))

(declare-fun d!764435 () Bool)

(declare-fun e!1685615 () Bool)

(assert (=> d!764435 e!1685615))

(declare-fun res!1124258 () Bool)

(assert (=> d!764435 (=> (not res!1124258) (not e!1685615))))

(declare-fun lt!941547 () List!30880)

(assert (=> d!764435 (= res!1124258 (= ((_ map implies) (content!4368 lt!941547) (content!4368 lt!941432)) ((as const (InoxSet Token!8872)) true)))))

(assert (=> d!764435 (= lt!941547 e!1685618)))

(declare-fun c!430875 () Bool)

(assert (=> d!764435 (= c!430875 ((_ is Nil!30780) lt!941432))))

(assert (=> d!764435 (= (drop!1669 lt!941432 0) lt!941547)))

(declare-fun b!2674121 () Bool)

(declare-fun e!1685617 () Int)

(assert (=> b!2674121 (= e!1685617 (- call!172556 0))))

(declare-fun b!2674122 () Bool)

(assert (=> b!2674122 (= e!1685618 Nil!30780)))

(declare-fun b!2674123 () Bool)

(assert (=> b!2674123 (= e!1685615 (= (size!23786 lt!941547) e!1685619))))

(declare-fun c!430874 () Bool)

(assert (=> b!2674123 (= c!430874 (<= 0 0))))

(declare-fun b!2674124 () Bool)

(assert (=> b!2674124 (= e!1685617 0)))

(declare-fun b!2674125 () Bool)

(assert (=> b!2674125 (= e!1685619 e!1685617)))

(declare-fun c!430876 () Bool)

(assert (=> b!2674125 (= c!430876 (>= 0 call!172556))))

(declare-fun b!2674126 () Bool)

(assert (=> b!2674126 (= e!1685616 lt!941432)))

(declare-fun b!2674127 () Bool)

(assert (=> b!2674127 (= e!1685616 (drop!1669 (t!223505 lt!941432) (- 0 1)))))

(assert (= (and d!764435 c!430875) b!2674122))

(assert (= (and d!764435 (not c!430875)) b!2674119))

(assert (= (and b!2674119 c!430873) b!2674126))

(assert (= (and b!2674119 (not c!430873)) b!2674127))

(assert (= (and d!764435 res!1124258) b!2674123))

(assert (= (and b!2674123 c!430874) b!2674120))

(assert (= (and b!2674123 (not c!430874)) b!2674125))

(assert (= (and b!2674125 c!430876) b!2674124))

(assert (= (and b!2674125 (not c!430876)) b!2674121))

(assert (= (or b!2674120 b!2674125 b!2674121) bm!172551))

(assert (=> bm!172551 m!3040081))

(declare-fun m!3040187 () Bool)

(assert (=> d!764435 m!3040187))

(declare-fun m!3040189 () Bool)

(assert (=> d!764435 m!3040189))

(declare-fun m!3040191 () Bool)

(assert (=> b!2674123 m!3040191))

(declare-fun m!3040193 () Bool)

(assert (=> b!2674127 m!3040193))

(assert (=> b!2673725 d!764435))

(declare-fun d!764437 () Bool)

(assert (=> d!764437 (= (head!6077 (drop!1669 lt!941432 0)) (apply!7377 lt!941432 0))))

(declare-fun lt!941551 () Unit!44983)

(declare-fun choose!15841 (List!30880 Int) Unit!44983)

(assert (=> d!764437 (= lt!941551 (choose!15841 lt!941432 0))))

(declare-fun e!1685624 () Bool)

(assert (=> d!764437 e!1685624))

(declare-fun res!1124262 () Bool)

(assert (=> d!764437 (=> (not res!1124262) (not e!1685624))))

(assert (=> d!764437 (= res!1124262 (>= 0 0))))

(assert (=> d!764437 (= (lemmaDropApply!878 lt!941432 0) lt!941551)))

(declare-fun b!2674133 () Bool)

(assert (=> b!2674133 (= e!1685624 (< 0 (size!23786 lt!941432)))))

(assert (= (and d!764437 res!1124262) b!2674133))

(assert (=> d!764437 m!3039733))

(assert (=> d!764437 m!3039733))

(assert (=> d!764437 m!3039745))

(assert (=> d!764437 m!3039739))

(declare-fun m!3040205 () Bool)

(assert (=> d!764437 m!3040205))

(assert (=> b!2674133 m!3040081))

(assert (=> b!2673725 d!764437))

(declare-fun d!764443 () Bool)

(declare-fun lt!941556 () BalanceConc!18878)

(assert (=> d!764443 (= (list!11619 lt!941556) (printListTailRec!523 thiss!14116 (dropList!972 lt!941343 (+ 0 1)) (list!11619 (++!7509 (BalanceConc!18879 Empty!9632) (charsOf!2964 (apply!7376 lt!941343 0))))))))

(declare-fun e!1685625 () BalanceConc!18878)

(assert (=> d!764443 (= lt!941556 e!1685625)))

(declare-fun c!430878 () Bool)

(assert (=> d!764443 (= c!430878 (>= (+ 0 1) (size!23784 lt!941343)))))

(declare-fun e!1685626 () Bool)

(assert (=> d!764443 e!1685626))

(declare-fun res!1124263 () Bool)

(assert (=> d!764443 (=> (not res!1124263) (not e!1685626))))

(assert (=> d!764443 (= res!1124263 (>= (+ 0 1) 0))))

(assert (=> d!764443 (= (printTailRec!1151 thiss!14116 lt!941343 (+ 0 1) (++!7509 (BalanceConc!18879 Empty!9632) (charsOf!2964 (apply!7376 lt!941343 0)))) lt!941556)))

(declare-fun b!2674134 () Bool)

(assert (=> b!2674134 (= e!1685626 (<= (+ 0 1) (size!23784 lt!941343)))))

(declare-fun b!2674135 () Bool)

(assert (=> b!2674135 (= e!1685625 (++!7509 (BalanceConc!18879 Empty!9632) (charsOf!2964 (apply!7376 lt!941343 0))))))

(declare-fun b!2674136 () Bool)

(assert (=> b!2674136 (= e!1685625 (printTailRec!1151 thiss!14116 lt!941343 (+ 0 1 1) (++!7509 (++!7509 (BalanceConc!18879 Empty!9632) (charsOf!2964 (apply!7376 lt!941343 0))) (charsOf!2964 (apply!7376 lt!941343 (+ 0 1))))))))

(declare-fun lt!941553 () List!30880)

(assert (=> b!2674136 (= lt!941553 (list!11622 lt!941343))))

(declare-fun lt!941554 () Unit!44983)

(assert (=> b!2674136 (= lt!941554 (lemmaDropApply!878 lt!941553 (+ 0 1)))))

(assert (=> b!2674136 (= (head!6077 (drop!1669 lt!941553 (+ 0 1))) (apply!7377 lt!941553 (+ 0 1)))))

(declare-fun lt!941557 () Unit!44983)

(assert (=> b!2674136 (= lt!941557 lt!941554)))

(declare-fun lt!941558 () List!30880)

(assert (=> b!2674136 (= lt!941558 (list!11622 lt!941343))))

(declare-fun lt!941555 () Unit!44983)

(assert (=> b!2674136 (= lt!941555 (lemmaDropTail!850 lt!941558 (+ 0 1)))))

(assert (=> b!2674136 (= (tail!4315 (drop!1669 lt!941558 (+ 0 1))) (drop!1669 lt!941558 (+ 0 1 1)))))

(declare-fun lt!941552 () Unit!44983)

(assert (=> b!2674136 (= lt!941552 lt!941555)))

(assert (= (and d!764443 res!1124263) b!2674134))

(assert (= (and d!764443 c!430878) b!2674135))

(assert (= (and d!764443 (not c!430878)) b!2674136))

(declare-fun m!3040207 () Bool)

(assert (=> d!764443 m!3040207))

(assert (=> d!764443 m!3039715))

(declare-fun m!3040209 () Bool)

(assert (=> d!764443 m!3040209))

(assert (=> d!764443 m!3040209))

(declare-fun m!3040211 () Bool)

(assert (=> d!764443 m!3040211))

(declare-fun m!3040213 () Bool)

(assert (=> d!764443 m!3040213))

(assert (=> d!764443 m!3039727))

(assert (=> d!764443 m!3040211))

(assert (=> b!2674134 m!3039715))

(declare-fun m!3040215 () Bool)

(assert (=> b!2674136 m!3040215))

(declare-fun m!3040217 () Bool)

(assert (=> b!2674136 m!3040217))

(declare-fun m!3040219 () Bool)

(assert (=> b!2674136 m!3040219))

(declare-fun m!3040221 () Bool)

(assert (=> b!2674136 m!3040221))

(assert (=> b!2674136 m!3040215))

(declare-fun m!3040223 () Bool)

(assert (=> b!2674136 m!3040223))

(declare-fun m!3040225 () Bool)

(assert (=> b!2674136 m!3040225))

(assert (=> b!2674136 m!3040217))

(declare-fun m!3040227 () Bool)

(assert (=> b!2674136 m!3040227))

(declare-fun m!3040229 () Bool)

(assert (=> b!2674136 m!3040229))

(declare-fun m!3040231 () Bool)

(assert (=> b!2674136 m!3040231))

(declare-fun m!3040233 () Bool)

(assert (=> b!2674136 m!3040233))

(assert (=> b!2674136 m!3039703))

(declare-fun m!3040235 () Bool)

(assert (=> b!2674136 m!3040235))

(assert (=> b!2674136 m!3039727))

(assert (=> b!2674136 m!3040223))

(assert (=> b!2674136 m!3040219))

(assert (=> b!2674136 m!3040225))

(declare-fun m!3040237 () Bool)

(assert (=> b!2674136 m!3040237))

(assert (=> b!2673725 d!764443))

(declare-fun b!2674137 () Bool)

(declare-fun e!1685630 () List!30880)

(declare-fun e!1685628 () List!30880)

(assert (=> b!2674137 (= e!1685630 e!1685628)))

(declare-fun c!430879 () Bool)

(assert (=> b!2674137 (= c!430879 (<= (+ 0 1) 0))))

(declare-fun bm!172552 () Bool)

(declare-fun call!172557 () Int)

(assert (=> bm!172552 (= call!172557 (size!23786 lt!941437))))

(declare-fun b!2674138 () Bool)

(declare-fun e!1685631 () Int)

(assert (=> b!2674138 (= e!1685631 call!172557)))

(declare-fun d!764445 () Bool)

(declare-fun e!1685627 () Bool)

(assert (=> d!764445 e!1685627))

(declare-fun res!1124264 () Bool)

(assert (=> d!764445 (=> (not res!1124264) (not e!1685627))))

(declare-fun lt!941559 () List!30880)

(assert (=> d!764445 (= res!1124264 (= ((_ map implies) (content!4368 lt!941559) (content!4368 lt!941437)) ((as const (InoxSet Token!8872)) true)))))

(assert (=> d!764445 (= lt!941559 e!1685630)))

(declare-fun c!430881 () Bool)

(assert (=> d!764445 (= c!430881 ((_ is Nil!30780) lt!941437))))

(assert (=> d!764445 (= (drop!1669 lt!941437 (+ 0 1)) lt!941559)))

(declare-fun b!2674139 () Bool)

(declare-fun e!1685629 () Int)

(assert (=> b!2674139 (= e!1685629 (- call!172557 (+ 0 1)))))

(declare-fun b!2674140 () Bool)

(assert (=> b!2674140 (= e!1685630 Nil!30780)))

(declare-fun b!2674141 () Bool)

(assert (=> b!2674141 (= e!1685627 (= (size!23786 lt!941559) e!1685631))))

(declare-fun c!430880 () Bool)

(assert (=> b!2674141 (= c!430880 (<= (+ 0 1) 0))))

(declare-fun b!2674142 () Bool)

(assert (=> b!2674142 (= e!1685629 0)))

(declare-fun b!2674143 () Bool)

(assert (=> b!2674143 (= e!1685631 e!1685629)))

(declare-fun c!430882 () Bool)

(assert (=> b!2674143 (= c!430882 (>= (+ 0 1) call!172557))))

(declare-fun b!2674144 () Bool)

(assert (=> b!2674144 (= e!1685628 lt!941437)))

(declare-fun b!2674145 () Bool)

(assert (=> b!2674145 (= e!1685628 (drop!1669 (t!223505 lt!941437) (- (+ 0 1) 1)))))

(assert (= (and d!764445 c!430881) b!2674140))

(assert (= (and d!764445 (not c!430881)) b!2674137))

(assert (= (and b!2674137 c!430879) b!2674144))

(assert (= (and b!2674137 (not c!430879)) b!2674145))

(assert (= (and d!764445 res!1124264) b!2674141))

(assert (= (and b!2674141 c!430880) b!2674138))

(assert (= (and b!2674141 (not c!430880)) b!2674143))

(assert (= (and b!2674143 c!430882) b!2674142))

(assert (= (and b!2674143 (not c!430882)) b!2674139))

(assert (= (or b!2674138 b!2674143 b!2674139) bm!172552))

(assert (=> bm!172552 m!3040031))

(declare-fun m!3040239 () Bool)

(assert (=> d!764445 m!3040239))

(assert (=> d!764445 m!3040039))

(declare-fun m!3040241 () Bool)

(assert (=> b!2674141 m!3040241))

(declare-fun m!3040243 () Bool)

(assert (=> b!2674145 m!3040243))

(assert (=> b!2673725 d!764445))

(declare-fun d!764447 () Bool)

(declare-fun lt!941560 () Token!8872)

(assert (=> d!764447 (= lt!941560 (apply!7377 (list!11622 (_1!17656 lt!941388)) 0))))

(assert (=> d!764447 (= lt!941560 (apply!7380 (c!430761 (_1!17656 lt!941388)) 0))))

(declare-fun e!1685632 () Bool)

(assert (=> d!764447 e!1685632))

(declare-fun res!1124265 () Bool)

(assert (=> d!764447 (=> (not res!1124265) (not e!1685632))))

(assert (=> d!764447 (= res!1124265 (<= 0 0))))

(assert (=> d!764447 (= (apply!7376 (_1!17656 lt!941388) 0) lt!941560)))

(declare-fun b!2674146 () Bool)

(assert (=> b!2674146 (= e!1685632 (< 0 (size!23784 (_1!17656 lt!941388))))))

(assert (= (and d!764447 res!1124265) b!2674146))

(declare-fun m!3040245 () Bool)

(assert (=> d!764447 m!3040245))

(assert (=> d!764447 m!3040245))

(declare-fun m!3040247 () Bool)

(assert (=> d!764447 m!3040247))

(declare-fun m!3040249 () Bool)

(assert (=> d!764447 m!3040249))

(assert (=> b!2674146 m!3039615))

(assert (=> b!2673642 d!764447))

(declare-fun d!764449 () Bool)

(assert (=> d!764449 (= (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941455)))) (list!11623 (c!430759 (charsOf!2964 (_1!17655 (get!9672 lt!941455))))))))

(declare-fun bs!479632 () Bool)

(assert (= bs!479632 d!764449))

(declare-fun m!3040251 () Bool)

(assert (=> bs!479632 m!3040251))

(assert (=> b!2673761 d!764449))

(declare-fun d!764451 () Bool)

(declare-fun lt!941561 () BalanceConc!18878)

(assert (=> d!764451 (= (list!11619 lt!941561) (originalCharacters!5467 (_1!17655 (get!9672 lt!941455))))))

(assert (=> d!764451 (= lt!941561 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (_1!17655 (get!9672 lt!941455))))) (value!151583 (_1!17655 (get!9672 lt!941455)))))))

(assert (=> d!764451 (= (charsOf!2964 (_1!17655 (get!9672 lt!941455))) lt!941561)))

(declare-fun b_lambda!81515 () Bool)

(assert (=> (not b_lambda!81515) (not d!764451)))

(declare-fun tb!149869 () Bool)

(declare-fun t!223582 () Bool)

(assert (=> (and b!2673517 (= (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (toChars!6502 (transformation!4701 (rule!7107 (_1!17655 (get!9672 lt!941455)))))) t!223582) tb!149869))

(declare-fun b!2674147 () Bool)

(declare-fun e!1685633 () Bool)

(declare-fun tp!845653 () Bool)

(assert (=> b!2674147 (= e!1685633 (and (inv!41789 (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (_1!17655 (get!9672 lt!941455))))) (value!151583 (_1!17655 (get!9672 lt!941455)))))) tp!845653))))

(declare-fun result!185132 () Bool)

(assert (=> tb!149869 (= result!185132 (and (inv!41790 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (_1!17655 (get!9672 lt!941455))))) (value!151583 (_1!17655 (get!9672 lt!941455))))) e!1685633))))

(assert (= tb!149869 b!2674147))

(declare-fun m!3040253 () Bool)

(assert (=> b!2674147 m!3040253))

(declare-fun m!3040255 () Bool)

(assert (=> tb!149869 m!3040255))

(assert (=> d!764451 t!223582))

(declare-fun b_and!197609 () Bool)

(assert (= b_and!197603 (and (=> t!223582 result!185132) b_and!197609)))

(declare-fun tb!149871 () Bool)

(declare-fun t!223584 () Bool)

(assert (=> (and b!2673522 (= (toChars!6502 (transformation!4701 (h!36199 rules!1712))) (toChars!6502 (transformation!4701 (rule!7107 (_1!17655 (get!9672 lt!941455)))))) t!223584) tb!149871))

(declare-fun result!185134 () Bool)

(assert (= result!185134 result!185132))

(assert (=> d!764451 t!223584))

(declare-fun b_and!197611 () Bool)

(assert (= b_and!197607 (and (=> t!223584 result!185134) b_and!197611)))

(declare-fun tb!149873 () Bool)

(declare-fun t!223586 () Bool)

(assert (=> (and b!2673519 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (toChars!6502 (transformation!4701 (rule!7107 (_1!17655 (get!9672 lt!941455)))))) t!223586) tb!149873))

(declare-fun result!185136 () Bool)

(assert (= result!185136 result!185132))

(assert (=> d!764451 t!223586))

(declare-fun b_and!197613 () Bool)

(assert (= b_and!197599 (and (=> t!223586 result!185136) b_and!197613)))

(declare-fun t!223588 () Bool)

(declare-fun tb!149875 () Bool)

(assert (=> (and b!2673993 (= (toChars!6502 (transformation!4701 (h!36199 (t!223504 rules!1712)))) (toChars!6502 (transformation!4701 (rule!7107 (_1!17655 (get!9672 lt!941455)))))) t!223588) tb!149875))

(declare-fun result!185138 () Bool)

(assert (= result!185138 result!185132))

(assert (=> d!764451 t!223588))

(declare-fun b_and!197615 () Bool)

(assert (= b_and!197605 (and (=> t!223588 result!185138) b_and!197615)))

(declare-fun tb!149877 () Bool)

(declare-fun t!223590 () Bool)

(assert (=> (and b!2673951 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))) (toChars!6502 (transformation!4701 (rule!7107 (_1!17655 (get!9672 lt!941455)))))) t!223590) tb!149877))

(declare-fun result!185140 () Bool)

(assert (= result!185140 result!185132))

(assert (=> d!764451 t!223590))

(declare-fun b_and!197617 () Bool)

(assert (= b_and!197601 (and (=> t!223590 result!185140) b_and!197617)))

(declare-fun m!3040257 () Bool)

(assert (=> d!764451 m!3040257))

(declare-fun m!3040259 () Bool)

(assert (=> d!764451 m!3040259))

(assert (=> b!2673761 d!764451))

(declare-fun d!764453 () Bool)

(assert (=> d!764453 (= (get!9672 lt!941455) (v!32632 lt!941455))))

(assert (=> b!2673761 d!764453))

(declare-fun d!764455 () Bool)

(declare-fun lt!941566 () Int)

(assert (=> d!764455 (= lt!941566 (size!23786 (list!11622 lt!941343)))))

(declare-fun size!23789 (Conc!9633) Int)

(assert (=> d!764455 (= lt!941566 (size!23789 (c!430761 lt!941343)))))

(assert (=> d!764455 (= (size!23784 lt!941343) lt!941566)))

(declare-fun bs!479633 () Bool)

(assert (= bs!479633 d!764455))

(assert (=> bs!479633 m!3039703))

(assert (=> bs!479633 m!3039703))

(declare-fun m!3040261 () Bool)

(assert (=> bs!479633 m!3040261))

(declare-fun m!3040263 () Bool)

(assert (=> bs!479633 m!3040263))

(assert (=> b!2673723 d!764455))

(declare-fun b!2674236 () Bool)

(declare-fun res!1124312 () Bool)

(declare-fun e!1685683 () Bool)

(assert (=> b!2674236 (=> (not res!1124312) (not e!1685683))))

(declare-fun lt!941602 () Option!6090)

(assert (=> b!2674236 (= res!1124312 (< (size!23785 (_2!17655 (get!9672 lt!941602))) (size!23785 (++!7507 lt!941339 lt!941340))))))

(declare-fun b!2674237 () Bool)

(declare-fun e!1685684 () Bool)

(declare-datatypes ((tuple2!30232 0))(
  ( (tuple2!30233 (_1!17658 List!30878) (_2!17658 List!30878)) )
))
(declare-fun findLongestMatchInner!774 (Regex!7845 List!30878 Int List!30878 List!30878 Int) tuple2!30232)

(assert (=> b!2674237 (= e!1685684 (matchR!3626 (regex!4701 (h!36199 rules!1712)) (_1!17658 (findLongestMatchInner!774 (regex!4701 (h!36199 rules!1712)) Nil!30778 (size!23785 Nil!30778) (++!7507 lt!941339 lt!941340) (++!7507 lt!941339 lt!941340) (size!23785 (++!7507 lt!941339 lt!941340))))))))

(declare-fun d!764457 () Bool)

(declare-fun e!1685685 () Bool)

(assert (=> d!764457 e!1685685))

(declare-fun res!1124307 () Bool)

(assert (=> d!764457 (=> res!1124307 e!1685685)))

(assert (=> d!764457 (= res!1124307 (isEmpty!17605 lt!941602))))

(declare-fun e!1685682 () Option!6090)

(assert (=> d!764457 (= lt!941602 e!1685682)))

(declare-fun c!430909 () Bool)

(declare-fun lt!941603 () tuple2!30232)

(assert (=> d!764457 (= c!430909 (isEmpty!17603 (_1!17658 lt!941603)))))

(declare-fun findLongestMatch!699 (Regex!7845 List!30878) tuple2!30232)

(assert (=> d!764457 (= lt!941603 (findLongestMatch!699 (regex!4701 (h!36199 rules!1712)) (++!7507 lt!941339 lt!941340)))))

(declare-fun ruleValid!1552 (LexerInterface!4298 Rule!9202) Bool)

(assert (=> d!764457 (ruleValid!1552 thiss!14116 (h!36199 rules!1712))))

(assert (=> d!764457 (= (maxPrefixOneRule!1484 thiss!14116 (h!36199 rules!1712) (++!7507 lt!941339 lt!941340)) lt!941602)))

(declare-fun b!2674238 () Bool)

(assert (=> b!2674238 (= e!1685683 (= (size!23781 (_1!17655 (get!9672 lt!941602))) (size!23785 (originalCharacters!5467 (_1!17655 (get!9672 lt!941602))))))))

(declare-fun b!2674239 () Bool)

(declare-fun res!1124313 () Bool)

(assert (=> b!2674239 (=> (not res!1124313) (not e!1685683))))

(assert (=> b!2674239 (= res!1124313 (= (rule!7107 (_1!17655 (get!9672 lt!941602))) (h!36199 rules!1712)))))

(declare-fun b!2674240 () Bool)

(declare-fun res!1124311 () Bool)

(assert (=> b!2674240 (=> (not res!1124311) (not e!1685683))))

(assert (=> b!2674240 (= res!1124311 (= (++!7507 (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941602)))) (_2!17655 (get!9672 lt!941602))) (++!7507 lt!941339 lt!941340)))))

(declare-fun b!2674241 () Bool)

(assert (=> b!2674241 (= e!1685685 e!1685683)))

(declare-fun res!1124309 () Bool)

(assert (=> b!2674241 (=> (not res!1124309) (not e!1685683))))

(assert (=> b!2674241 (= res!1124309 (matchR!3626 (regex!4701 (h!36199 rules!1712)) (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941602))))))))

(declare-fun b!2674242 () Bool)

(assert (=> b!2674242 (= e!1685682 None!6089)))

(declare-fun b!2674243 () Bool)

(declare-fun size!23790 (BalanceConc!18878) Int)

(assert (=> b!2674243 (= e!1685682 (Some!6089 (tuple2!30227 (Token!8873 (apply!7378 (transformation!4701 (h!36199 rules!1712)) (seqFromList!3203 (_1!17658 lt!941603))) (h!36199 rules!1712) (size!23790 (seqFromList!3203 (_1!17658 lt!941603))) (_1!17658 lt!941603)) (_2!17658 lt!941603))))))

(declare-fun lt!941605 () Unit!44983)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!747 (Regex!7845 List!30878) Unit!44983)

(assert (=> b!2674243 (= lt!941605 (longestMatchIsAcceptedByMatchOrIsEmpty!747 (regex!4701 (h!36199 rules!1712)) (++!7507 lt!941339 lt!941340)))))

(declare-fun res!1124308 () Bool)

(assert (=> b!2674243 (= res!1124308 (isEmpty!17603 (_1!17658 (findLongestMatchInner!774 (regex!4701 (h!36199 rules!1712)) Nil!30778 (size!23785 Nil!30778) (++!7507 lt!941339 lt!941340) (++!7507 lt!941339 lt!941340) (size!23785 (++!7507 lt!941339 lt!941340))))))))

(assert (=> b!2674243 (=> res!1124308 e!1685684)))

(assert (=> b!2674243 e!1685684))

(declare-fun lt!941604 () Unit!44983)

(assert (=> b!2674243 (= lt!941604 lt!941605)))

(declare-fun lt!941601 () Unit!44983)

(declare-fun lemmaSemiInverse!1121 (TokenValueInjection!9286 BalanceConc!18878) Unit!44983)

(assert (=> b!2674243 (= lt!941601 (lemmaSemiInverse!1121 (transformation!4701 (h!36199 rules!1712)) (seqFromList!3203 (_1!17658 lt!941603))))))

(declare-fun b!2674244 () Bool)

(declare-fun res!1124310 () Bool)

(assert (=> b!2674244 (=> (not res!1124310) (not e!1685683))))

(assert (=> b!2674244 (= res!1124310 (= (value!151583 (_1!17655 (get!9672 lt!941602))) (apply!7378 (transformation!4701 (rule!7107 (_1!17655 (get!9672 lt!941602)))) (seqFromList!3203 (originalCharacters!5467 (_1!17655 (get!9672 lt!941602)))))))))

(assert (= (and d!764457 c!430909) b!2674242))

(assert (= (and d!764457 (not c!430909)) b!2674243))

(assert (= (and b!2674243 (not res!1124308)) b!2674237))

(assert (= (and d!764457 (not res!1124307)) b!2674241))

(assert (= (and b!2674241 res!1124309) b!2674240))

(assert (= (and b!2674240 res!1124311) b!2674236))

(assert (= (and b!2674236 res!1124312) b!2674239))

(assert (= (and b!2674239 res!1124313) b!2674244))

(assert (= (and b!2674244 res!1124310) b!2674238))

(declare-fun m!3040367 () Bool)

(assert (=> b!2674238 m!3040367))

(declare-fun m!3040369 () Bool)

(assert (=> b!2674238 m!3040369))

(assert (=> b!2674244 m!3040367))

(declare-fun m!3040371 () Bool)

(assert (=> b!2674244 m!3040371))

(assert (=> b!2674244 m!3040371))

(declare-fun m!3040373 () Bool)

(assert (=> b!2674244 m!3040373))

(assert (=> b!2674239 m!3040367))

(declare-fun m!3040375 () Bool)

(assert (=> d!764457 m!3040375))

(declare-fun m!3040377 () Bool)

(assert (=> d!764457 m!3040377))

(assert (=> d!764457 m!3039457))

(declare-fun m!3040379 () Bool)

(assert (=> d!764457 m!3040379))

(declare-fun m!3040381 () Bool)

(assert (=> d!764457 m!3040381))

(declare-fun m!3040383 () Bool)

(assert (=> b!2674237 m!3040383))

(assert (=> b!2674237 m!3039457))

(assert (=> b!2674237 m!3039783))

(assert (=> b!2674237 m!3040383))

(assert (=> b!2674237 m!3039457))

(assert (=> b!2674237 m!3039457))

(assert (=> b!2674237 m!3039783))

(declare-fun m!3040385 () Bool)

(assert (=> b!2674237 m!3040385))

(declare-fun m!3040387 () Bool)

(assert (=> b!2674237 m!3040387))

(assert (=> b!2674241 m!3040367))

(declare-fun m!3040389 () Bool)

(assert (=> b!2674241 m!3040389))

(assert (=> b!2674241 m!3040389))

(declare-fun m!3040391 () Bool)

(assert (=> b!2674241 m!3040391))

(assert (=> b!2674241 m!3040391))

(declare-fun m!3040393 () Bool)

(assert (=> b!2674241 m!3040393))

(assert (=> b!2674236 m!3040367))

(declare-fun m!3040395 () Bool)

(assert (=> b!2674236 m!3040395))

(assert (=> b!2674236 m!3039457))

(assert (=> b!2674236 m!3039783))

(assert (=> b!2674243 m!3040383))

(declare-fun m!3040397 () Bool)

(assert (=> b!2674243 m!3040397))

(assert (=> b!2674243 m!3039457))

(assert (=> b!2674243 m!3039783))

(declare-fun m!3040399 () Bool)

(assert (=> b!2674243 m!3040399))

(assert (=> b!2674243 m!3040397))

(declare-fun m!3040401 () Bool)

(assert (=> b!2674243 m!3040401))

(assert (=> b!2674243 m!3040397))

(declare-fun m!3040403 () Bool)

(assert (=> b!2674243 m!3040403))

(assert (=> b!2674243 m!3040397))

(declare-fun m!3040405 () Bool)

(assert (=> b!2674243 m!3040405))

(assert (=> b!2674243 m!3039457))

(declare-fun m!3040407 () Bool)

(assert (=> b!2674243 m!3040407))

(assert (=> b!2674243 m!3040383))

(assert (=> b!2674243 m!3039457))

(assert (=> b!2674243 m!3039457))

(assert (=> b!2674243 m!3039783))

(assert (=> b!2674243 m!3040385))

(assert (=> b!2674240 m!3040367))

(assert (=> b!2674240 m!3040389))

(assert (=> b!2674240 m!3040389))

(assert (=> b!2674240 m!3040391))

(assert (=> b!2674240 m!3040391))

(declare-fun m!3040409 () Bool)

(assert (=> b!2674240 m!3040409))

(assert (=> bm!172511 d!764457))

(declare-fun d!764485 () Bool)

(assert (=> d!764485 true))

(declare-fun order!16961 () Int)

(declare-fun lambda!99894 () Int)

(declare-fun dynLambda!13363 (Int Int) Int)

(assert (=> d!764485 (< (dynLambda!13358 order!16959 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335))))) (dynLambda!13363 order!16961 lambda!99894))))

(assert (=> d!764485 true))

(assert (=> d!764485 (< (dynLambda!13356 order!16955 (toValue!6643 (transformation!4701 (rule!7107 (h!36200 l!4335))))) (dynLambda!13363 order!16961 lambda!99894))))

(declare-fun Forall!1193 (Int) Bool)

(assert (=> d!764485 (= (semiInverseModEq!1946 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (toValue!6643 (transformation!4701 (rule!7107 (h!36200 l!4335))))) (Forall!1193 lambda!99894))))

(declare-fun bs!479635 () Bool)

(assert (= bs!479635 d!764485))

(declare-fun m!3040411 () Bool)

(assert (=> bs!479635 m!3040411))

(assert (=> d!764309 d!764485))

(declare-fun lt!941606 () List!30878)

(declare-fun e!1685686 () Bool)

(declare-fun b!2674252 () Bool)

(assert (=> b!2674252 (= e!1685686 (or (not (= (printList!1190 thiss!14116 (t!223505 (Cons!30780 (h!36200 l!4335) Nil!30780))) Nil!30778)) (= lt!941606 (list!11619 (charsOf!2964 (h!36200 (Cons!30780 (h!36200 l!4335) Nil!30780)))))))))

(declare-fun b!2674250 () Bool)

(declare-fun e!1685687 () List!30878)

(assert (=> b!2674250 (= e!1685687 (Cons!30778 (h!36198 (list!11619 (charsOf!2964 (h!36200 (Cons!30780 (h!36200 l!4335) Nil!30780))))) (++!7507 (t!223503 (list!11619 (charsOf!2964 (h!36200 (Cons!30780 (h!36200 l!4335) Nil!30780))))) (printList!1190 thiss!14116 (t!223505 (Cons!30780 (h!36200 l!4335) Nil!30780))))))))

(declare-fun b!2674251 () Bool)

(declare-fun res!1124315 () Bool)

(assert (=> b!2674251 (=> (not res!1124315) (not e!1685686))))

(assert (=> b!2674251 (= res!1124315 (= (size!23785 lt!941606) (+ (size!23785 (list!11619 (charsOf!2964 (h!36200 (Cons!30780 (h!36200 l!4335) Nil!30780))))) (size!23785 (printList!1190 thiss!14116 (t!223505 (Cons!30780 (h!36200 l!4335) Nil!30780)))))))))

(declare-fun b!2674249 () Bool)

(assert (=> b!2674249 (= e!1685687 (printList!1190 thiss!14116 (t!223505 (Cons!30780 (h!36200 l!4335) Nil!30780))))))

(declare-fun d!764487 () Bool)

(assert (=> d!764487 e!1685686))

(declare-fun res!1124314 () Bool)

(assert (=> d!764487 (=> (not res!1124314) (not e!1685686))))

(assert (=> d!764487 (= res!1124314 (= (content!4369 lt!941606) ((_ map or) (content!4369 (list!11619 (charsOf!2964 (h!36200 (Cons!30780 (h!36200 l!4335) Nil!30780))))) (content!4369 (printList!1190 thiss!14116 (t!223505 (Cons!30780 (h!36200 l!4335) Nil!30780)))))))))

(assert (=> d!764487 (= lt!941606 e!1685687)))

(declare-fun c!430910 () Bool)

(assert (=> d!764487 (= c!430910 ((_ is Nil!30778) (list!11619 (charsOf!2964 (h!36200 (Cons!30780 (h!36200 l!4335) Nil!30780))))))))

(assert (=> d!764487 (= (++!7507 (list!11619 (charsOf!2964 (h!36200 (Cons!30780 (h!36200 l!4335) Nil!30780)))) (printList!1190 thiss!14116 (t!223505 (Cons!30780 (h!36200 l!4335) Nil!30780)))) lt!941606)))

(assert (= (and d!764487 c!430910) b!2674249))

(assert (= (and d!764487 (not c!430910)) b!2674250))

(assert (= (and d!764487 res!1124314) b!2674251))

(assert (= (and b!2674251 res!1124315) b!2674252))

(assert (=> b!2674250 m!3039753))

(declare-fun m!3040413 () Bool)

(assert (=> b!2674250 m!3040413))

(declare-fun m!3040415 () Bool)

(assert (=> b!2674251 m!3040415))

(assert (=> b!2674251 m!3039751))

(declare-fun m!3040417 () Bool)

(assert (=> b!2674251 m!3040417))

(assert (=> b!2674251 m!3039753))

(declare-fun m!3040419 () Bool)

(assert (=> b!2674251 m!3040419))

(declare-fun m!3040421 () Bool)

(assert (=> d!764487 m!3040421))

(assert (=> d!764487 m!3039751))

(declare-fun m!3040423 () Bool)

(assert (=> d!764487 m!3040423))

(assert (=> d!764487 m!3039753))

(declare-fun m!3040425 () Bool)

(assert (=> d!764487 m!3040425))

(assert (=> b!2673730 d!764487))

(declare-fun d!764489 () Bool)

(assert (=> d!764489 (= (list!11619 (charsOf!2964 (h!36200 (Cons!30780 (h!36200 l!4335) Nil!30780)))) (list!11623 (c!430759 (charsOf!2964 (h!36200 (Cons!30780 (h!36200 l!4335) Nil!30780))))))))

(declare-fun bs!479636 () Bool)

(assert (= bs!479636 d!764489))

(declare-fun m!3040427 () Bool)

(assert (=> bs!479636 m!3040427))

(assert (=> b!2673730 d!764489))

(declare-fun d!764491 () Bool)

(declare-fun lt!941607 () BalanceConc!18878)

(assert (=> d!764491 (= (list!11619 lt!941607) (originalCharacters!5467 (h!36200 (Cons!30780 (h!36200 l!4335) Nil!30780))))))

(assert (=> d!764491 (= lt!941607 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (Cons!30780 (h!36200 l!4335) Nil!30780))))) (value!151583 (h!36200 (Cons!30780 (h!36200 l!4335) Nil!30780)))))))

(assert (=> d!764491 (= (charsOf!2964 (h!36200 (Cons!30780 (h!36200 l!4335) Nil!30780))) lt!941607)))

(declare-fun b_lambda!81519 () Bool)

(assert (=> (not b_lambda!81519) (not d!764491)))

(declare-fun tb!149889 () Bool)

(declare-fun t!223602 () Bool)

(assert (=> (and b!2673517 (= (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (Cons!30780 (h!36200 l!4335) Nil!30780)))))) t!223602) tb!149889))

(declare-fun b!2674253 () Bool)

(declare-fun e!1685688 () Bool)

(declare-fun tp!845655 () Bool)

(assert (=> b!2674253 (= e!1685688 (and (inv!41789 (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (Cons!30780 (h!36200 l!4335) Nil!30780))))) (value!151583 (h!36200 (Cons!30780 (h!36200 l!4335) Nil!30780)))))) tp!845655))))

(declare-fun result!185152 () Bool)

(assert (=> tb!149889 (= result!185152 (and (inv!41790 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (Cons!30780 (h!36200 l!4335) Nil!30780))))) (value!151583 (h!36200 (Cons!30780 (h!36200 l!4335) Nil!30780))))) e!1685688))))

(assert (= tb!149889 b!2674253))

(declare-fun m!3040429 () Bool)

(assert (=> b!2674253 m!3040429))

(declare-fun m!3040431 () Bool)

(assert (=> tb!149889 m!3040431))

(assert (=> d!764491 t!223602))

(declare-fun b_and!197629 () Bool)

(assert (= b_and!197609 (and (=> t!223602 result!185152) b_and!197629)))

(declare-fun t!223604 () Bool)

(declare-fun tb!149891 () Bool)

(assert (=> (and b!2673519 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (Cons!30780 (h!36200 l!4335) Nil!30780)))))) t!223604) tb!149891))

(declare-fun result!185154 () Bool)

(assert (= result!185154 result!185152))

(assert (=> d!764491 t!223604))

(declare-fun b_and!197631 () Bool)

(assert (= b_and!197613 (and (=> t!223604 result!185154) b_and!197631)))

(declare-fun t!223606 () Bool)

(declare-fun tb!149893 () Bool)

(assert (=> (and b!2673522 (= (toChars!6502 (transformation!4701 (h!36199 rules!1712))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (Cons!30780 (h!36200 l!4335) Nil!30780)))))) t!223606) tb!149893))

(declare-fun result!185156 () Bool)

(assert (= result!185156 result!185152))

(assert (=> d!764491 t!223606))

(declare-fun b_and!197633 () Bool)

(assert (= b_and!197611 (and (=> t!223606 result!185156) b_and!197633)))

(declare-fun t!223608 () Bool)

(declare-fun tb!149895 () Bool)

(assert (=> (and b!2673993 (= (toChars!6502 (transformation!4701 (h!36199 (t!223504 rules!1712)))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (Cons!30780 (h!36200 l!4335) Nil!30780)))))) t!223608) tb!149895))

(declare-fun result!185158 () Bool)

(assert (= result!185158 result!185152))

(assert (=> d!764491 t!223608))

(declare-fun b_and!197635 () Bool)

(assert (= b_and!197615 (and (=> t!223608 result!185158) b_and!197635)))

(declare-fun t!223610 () Bool)

(declare-fun tb!149897 () Bool)

(assert (=> (and b!2673951 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (Cons!30780 (h!36200 l!4335) Nil!30780)))))) t!223610) tb!149897))

(declare-fun result!185160 () Bool)

(assert (= result!185160 result!185152))

(assert (=> d!764491 t!223610))

(declare-fun b_and!197637 () Bool)

(assert (= b_and!197617 (and (=> t!223610 result!185160) b_and!197637)))

(declare-fun m!3040433 () Bool)

(assert (=> d!764491 m!3040433))

(declare-fun m!3040435 () Bool)

(assert (=> d!764491 m!3040435))

(assert (=> b!2673730 d!764491))

(declare-fun d!764493 () Bool)

(declare-fun c!430911 () Bool)

(assert (=> d!764493 (= c!430911 ((_ is Cons!30780) (t!223505 (Cons!30780 (h!36200 l!4335) Nil!30780))))))

(declare-fun e!1685689 () List!30878)

(assert (=> d!764493 (= (printList!1190 thiss!14116 (t!223505 (Cons!30780 (h!36200 l!4335) Nil!30780))) e!1685689)))

(declare-fun b!2674254 () Bool)

(assert (=> b!2674254 (= e!1685689 (++!7507 (list!11619 (charsOf!2964 (h!36200 (t!223505 (Cons!30780 (h!36200 l!4335) Nil!30780))))) (printList!1190 thiss!14116 (t!223505 (t!223505 (Cons!30780 (h!36200 l!4335) Nil!30780))))))))

(declare-fun b!2674255 () Bool)

(assert (=> b!2674255 (= e!1685689 Nil!30778)))

(assert (= (and d!764493 c!430911) b!2674254))

(assert (= (and d!764493 (not c!430911)) b!2674255))

(declare-fun m!3040437 () Bool)

(assert (=> b!2674254 m!3040437))

(assert (=> b!2674254 m!3040437))

(declare-fun m!3040439 () Bool)

(assert (=> b!2674254 m!3040439))

(declare-fun m!3040441 () Bool)

(assert (=> b!2674254 m!3040441))

(assert (=> b!2674254 m!3040439))

(assert (=> b!2674254 m!3040441))

(declare-fun m!3040443 () Bool)

(assert (=> b!2674254 m!3040443))

(assert (=> b!2673730 d!764493))

(declare-fun d!764495 () Bool)

(declare-fun lt!941610 () Int)

(assert (=> d!764495 (>= lt!941610 0)))

(declare-fun e!1685692 () Int)

(assert (=> d!764495 (= lt!941610 e!1685692)))

(declare-fun c!430914 () Bool)

(assert (=> d!764495 (= c!430914 ((_ is Nil!30778) (_2!17655 (get!9672 lt!941455))))))

(assert (=> d!764495 (= (size!23785 (_2!17655 (get!9672 lt!941455))) lt!941610)))

(declare-fun b!2674260 () Bool)

(assert (=> b!2674260 (= e!1685692 0)))

(declare-fun b!2674261 () Bool)

(assert (=> b!2674261 (= e!1685692 (+ 1 (size!23785 (t!223503 (_2!17655 (get!9672 lt!941455))))))))

(assert (= (and d!764495 c!430914) b!2674260))

(assert (= (and d!764495 (not c!430914)) b!2674261))

(declare-fun m!3040445 () Bool)

(assert (=> b!2674261 m!3040445))

(assert (=> b!2673758 d!764495))

(assert (=> b!2673758 d!764453))

(declare-fun d!764497 () Bool)

(declare-fun lt!941611 () Int)

(assert (=> d!764497 (>= lt!941611 0)))

(declare-fun e!1685693 () Int)

(assert (=> d!764497 (= lt!941611 e!1685693)))

(declare-fun c!430915 () Bool)

(assert (=> d!764497 (= c!430915 ((_ is Nil!30778) (++!7507 lt!941339 lt!941340)))))

(assert (=> d!764497 (= (size!23785 (++!7507 lt!941339 lt!941340)) lt!941611)))

(declare-fun b!2674262 () Bool)

(assert (=> b!2674262 (= e!1685693 0)))

(declare-fun b!2674263 () Bool)

(assert (=> b!2674263 (= e!1685693 (+ 1 (size!23785 (t!223503 (++!7507 lt!941339 lt!941340)))))))

(assert (= (and d!764497 c!430915) b!2674262))

(assert (= (and d!764497 (not c!430915)) b!2674263))

(declare-fun m!3040447 () Bool)

(assert (=> b!2674263 m!3040447))

(assert (=> b!2673758 d!764497))

(declare-fun d!764499 () Bool)

(declare-fun lt!941612 () Int)

(assert (=> d!764499 (>= lt!941612 0)))

(declare-fun e!1685694 () Int)

(assert (=> d!764499 (= lt!941612 e!1685694)))

(declare-fun c!430916 () Bool)

(assert (=> d!764499 (= c!430916 ((_ is Nil!30778) lt!941503))))

(assert (=> d!764499 (= (size!23785 lt!941503) lt!941612)))

(declare-fun b!2674264 () Bool)

(assert (=> b!2674264 (= e!1685694 0)))

(declare-fun b!2674265 () Bool)

(assert (=> b!2674265 (= e!1685694 (+ 1 (size!23785 (t!223503 lt!941503))))))

(assert (= (and d!764499 c!430916) b!2674264))

(assert (= (and d!764499 (not c!430916)) b!2674265))

(declare-fun m!3040449 () Bool)

(assert (=> b!2674265 m!3040449))

(assert (=> b!2673911 d!764499))

(declare-fun d!764501 () Bool)

(declare-fun lt!941613 () Int)

(assert (=> d!764501 (>= lt!941613 0)))

(declare-fun e!1685695 () Int)

(assert (=> d!764501 (= lt!941613 e!1685695)))

(declare-fun c!430917 () Bool)

(assert (=> d!764501 (= c!430917 ((_ is Nil!30778) lt!941339))))

(assert (=> d!764501 (= (size!23785 lt!941339) lt!941613)))

(declare-fun b!2674266 () Bool)

(assert (=> b!2674266 (= e!1685695 0)))

(declare-fun b!2674267 () Bool)

(assert (=> b!2674267 (= e!1685695 (+ 1 (size!23785 (t!223503 lt!941339))))))

(assert (= (and d!764501 c!430917) b!2674266))

(assert (= (and d!764501 (not c!430917)) b!2674267))

(declare-fun m!3040451 () Bool)

(assert (=> b!2674267 m!3040451))

(assert (=> b!2673911 d!764501))

(declare-fun d!764503 () Bool)

(declare-fun lt!941614 () Int)

(assert (=> d!764503 (>= lt!941614 0)))

(declare-fun e!1685696 () Int)

(assert (=> d!764503 (= lt!941614 e!1685696)))

(declare-fun c!430918 () Bool)

(assert (=> d!764503 (= c!430918 ((_ is Nil!30778) lt!941340))))

(assert (=> d!764503 (= (size!23785 lt!941340) lt!941614)))

(declare-fun b!2674268 () Bool)

(assert (=> b!2674268 (= e!1685696 0)))

(declare-fun b!2674269 () Bool)

(assert (=> b!2674269 (= e!1685696 (+ 1 (size!23785 (t!223503 lt!941340))))))

(assert (= (and d!764503 c!430918) b!2674268))

(assert (= (and d!764503 (not c!430918)) b!2674269))

(declare-fun m!3040453 () Bool)

(assert (=> b!2674269 m!3040453))

(assert (=> b!2673911 d!764503))

(declare-fun d!764505 () Bool)

(declare-fun charsToInt!0 (List!30877) (_ BitVec 32))

(assert (=> d!764505 (= (inv!16 (value!151583 (h!36200 l!4335))) (= (charsToInt!0 (text!34908 (value!151583 (h!36200 l!4335)))) (value!151574 (value!151583 (h!36200 l!4335)))))))

(declare-fun bs!479637 () Bool)

(assert (= bs!479637 d!764505))

(declare-fun m!3040455 () Bool)

(assert (=> bs!479637 m!3040455))

(assert (=> b!2673704 d!764505))

(declare-fun d!764507 () Bool)

(declare-fun lt!941615 () BalanceConc!18878)

(assert (=> d!764507 (= (list!11619 lt!941615) (originalCharacters!5467 (ite c!430826 separatorToken!152 (h!36200 (t!223505 l!4335)))))))

(assert (=> d!764507 (= lt!941615 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (ite c!430826 separatorToken!152 (h!36200 (t!223505 l!4335)))))) (value!151583 (ite c!430826 separatorToken!152 (h!36200 (t!223505 l!4335))))))))

(assert (=> d!764507 (= (charsOf!2964 (ite c!430826 separatorToken!152 (h!36200 (t!223505 l!4335)))) lt!941615)))

(declare-fun b_lambda!81521 () Bool)

(assert (=> (not b_lambda!81521) (not d!764507)))

(declare-fun tb!149899 () Bool)

(declare-fun t!223612 () Bool)

(assert (=> (and b!2673519 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (toChars!6502 (transformation!4701 (rule!7107 (ite c!430826 separatorToken!152 (h!36200 (t!223505 l!4335))))))) t!223612) tb!149899))

(declare-fun e!1685697 () Bool)

(declare-fun b!2674270 () Bool)

(declare-fun tp!845656 () Bool)

(assert (=> b!2674270 (= e!1685697 (and (inv!41789 (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (ite c!430826 separatorToken!152 (h!36200 (t!223505 l!4335)))))) (value!151583 (ite c!430826 separatorToken!152 (h!36200 (t!223505 l!4335))))))) tp!845656))))

(declare-fun result!185162 () Bool)

(assert (=> tb!149899 (= result!185162 (and (inv!41790 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (ite c!430826 separatorToken!152 (h!36200 (t!223505 l!4335)))))) (value!151583 (ite c!430826 separatorToken!152 (h!36200 (t!223505 l!4335)))))) e!1685697))))

(assert (= tb!149899 b!2674270))

(declare-fun m!3040457 () Bool)

(assert (=> b!2674270 m!3040457))

(declare-fun m!3040459 () Bool)

(assert (=> tb!149899 m!3040459))

(assert (=> d!764507 t!223612))

(declare-fun b_and!197639 () Bool)

(assert (= b_and!197631 (and (=> t!223612 result!185162) b_and!197639)))

(declare-fun tb!149901 () Bool)

(declare-fun t!223614 () Bool)

(assert (=> (and b!2673522 (= (toChars!6502 (transformation!4701 (h!36199 rules!1712))) (toChars!6502 (transformation!4701 (rule!7107 (ite c!430826 separatorToken!152 (h!36200 (t!223505 l!4335))))))) t!223614) tb!149901))

(declare-fun result!185164 () Bool)

(assert (= result!185164 result!185162))

(assert (=> d!764507 t!223614))

(declare-fun b_and!197641 () Bool)

(assert (= b_and!197633 (and (=> t!223614 result!185164) b_and!197641)))

(declare-fun tb!149903 () Bool)

(declare-fun t!223616 () Bool)

(assert (=> (and b!2673993 (= (toChars!6502 (transformation!4701 (h!36199 (t!223504 rules!1712)))) (toChars!6502 (transformation!4701 (rule!7107 (ite c!430826 separatorToken!152 (h!36200 (t!223505 l!4335))))))) t!223616) tb!149903))

(declare-fun result!185166 () Bool)

(assert (= result!185166 result!185162))

(assert (=> d!764507 t!223616))

(declare-fun b_and!197643 () Bool)

(assert (= b_and!197635 (and (=> t!223616 result!185166) b_and!197643)))

(declare-fun t!223618 () Bool)

(declare-fun tb!149905 () Bool)

(assert (=> (and b!2673517 (= (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (toChars!6502 (transformation!4701 (rule!7107 (ite c!430826 separatorToken!152 (h!36200 (t!223505 l!4335))))))) t!223618) tb!149905))

(declare-fun result!185168 () Bool)

(assert (= result!185168 result!185162))

(assert (=> d!764507 t!223618))

(declare-fun b_and!197645 () Bool)

(assert (= b_and!197629 (and (=> t!223618 result!185168) b_and!197645)))

(declare-fun t!223620 () Bool)

(declare-fun tb!149907 () Bool)

(assert (=> (and b!2673951 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))) (toChars!6502 (transformation!4701 (rule!7107 (ite c!430826 separatorToken!152 (h!36200 (t!223505 l!4335))))))) t!223620) tb!149907))

(declare-fun result!185170 () Bool)

(assert (= result!185170 result!185162))

(assert (=> d!764507 t!223620))

(declare-fun b_and!197647 () Bool)

(assert (= b_and!197637 (and (=> t!223620 result!185170) b_and!197647)))

(declare-fun m!3040461 () Bool)

(assert (=> d!764507 m!3040461))

(declare-fun m!3040463 () Bool)

(assert (=> d!764507 m!3040463))

(assert (=> bm!172539 d!764507))

(declare-fun d!764509 () Bool)

(declare-fun c!430921 () Bool)

(assert (=> d!764509 (= c!430921 ((_ is Nil!30778) lt!941503))))

(declare-fun e!1685700 () (InoxSet C!15848))

(assert (=> d!764509 (= (content!4369 lt!941503) e!1685700)))

(declare-fun b!2674275 () Bool)

(assert (=> b!2674275 (= e!1685700 ((as const (Array C!15848 Bool)) false))))

(declare-fun b!2674276 () Bool)

(assert (=> b!2674276 (= e!1685700 ((_ map or) (store ((as const (Array C!15848 Bool)) false) (h!36198 lt!941503) true) (content!4369 (t!223503 lt!941503))))))

(assert (= (and d!764509 c!430921) b!2674275))

(assert (= (and d!764509 (not c!430921)) b!2674276))

(declare-fun m!3040465 () Bool)

(assert (=> b!2674276 m!3040465))

(declare-fun m!3040467 () Bool)

(assert (=> b!2674276 m!3040467))

(assert (=> d!764357 d!764509))

(declare-fun d!764511 () Bool)

(declare-fun c!430922 () Bool)

(assert (=> d!764511 (= c!430922 ((_ is Nil!30778) lt!941339))))

(declare-fun e!1685701 () (InoxSet C!15848))

(assert (=> d!764511 (= (content!4369 lt!941339) e!1685701)))

(declare-fun b!2674277 () Bool)

(assert (=> b!2674277 (= e!1685701 ((as const (Array C!15848 Bool)) false))))

(declare-fun b!2674278 () Bool)

(assert (=> b!2674278 (= e!1685701 ((_ map or) (store ((as const (Array C!15848 Bool)) false) (h!36198 lt!941339) true) (content!4369 (t!223503 lt!941339))))))

(assert (= (and d!764511 c!430922) b!2674277))

(assert (= (and d!764511 (not c!430922)) b!2674278))

(declare-fun m!3040469 () Bool)

(assert (=> b!2674278 m!3040469))

(declare-fun m!3040471 () Bool)

(assert (=> b!2674278 m!3040471))

(assert (=> d!764357 d!764511))

(declare-fun d!764513 () Bool)

(declare-fun c!430923 () Bool)

(assert (=> d!764513 (= c!430923 ((_ is Nil!30778) lt!941340))))

(declare-fun e!1685702 () (InoxSet C!15848))

(assert (=> d!764513 (= (content!4369 lt!941340) e!1685702)))

(declare-fun b!2674279 () Bool)

(assert (=> b!2674279 (= e!1685702 ((as const (Array C!15848 Bool)) false))))

(declare-fun b!2674280 () Bool)

(assert (=> b!2674280 (= e!1685702 ((_ map or) (store ((as const (Array C!15848 Bool)) false) (h!36198 lt!941340) true) (content!4369 (t!223503 lt!941340))))))

(assert (= (and d!764513 c!430923) b!2674279))

(assert (= (and d!764513 (not c!430923)) b!2674280))

(declare-fun m!3040473 () Bool)

(assert (=> b!2674280 m!3040473))

(declare-fun m!3040475 () Bool)

(assert (=> b!2674280 m!3040475))

(assert (=> d!764357 d!764513))

(declare-fun d!764515 () Bool)

(assert (=> d!764515 (= (inv!41782 (tag!5203 (rule!7107 (h!36200 (t!223505 l!4335))))) (= (mod (str.len (value!151582 (tag!5203 (rule!7107 (h!36200 (t!223505 l!4335)))))) 2) 0))))

(assert (=> b!2673950 d!764515))

(declare-fun d!764517 () Bool)

(declare-fun res!1124316 () Bool)

(declare-fun e!1685703 () Bool)

(assert (=> d!764517 (=> (not res!1124316) (not e!1685703))))

(assert (=> d!764517 (= res!1124316 (semiInverseModEq!1946 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))) (toValue!6643 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335)))))))))

(assert (=> d!764517 (= (inv!41786 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))) e!1685703)))

(declare-fun b!2674281 () Bool)

(assert (=> b!2674281 (= e!1685703 (equivClasses!1847 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))) (toValue!6643 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335)))))))))

(assert (= (and d!764517 res!1124316) b!2674281))

(declare-fun m!3040477 () Bool)

(assert (=> d!764517 m!3040477))

(declare-fun m!3040479 () Bool)

(assert (=> b!2674281 m!3040479))

(assert (=> b!2673950 d!764517))

(declare-fun d!764519 () Bool)

(assert (=> d!764519 (= (isEmpty!17603 (originalCharacters!5467 (h!36200 l!4335))) ((_ is Nil!30778) (originalCharacters!5467 (h!36200 l!4335))))))

(assert (=> d!764305 d!764519))

(declare-fun d!764521 () Bool)

(declare-fun charsToBigInt!0 (List!30877 Int) Int)

(assert (=> d!764521 (= (inv!15 (value!151583 (h!36200 l!4335))) (= (charsToBigInt!0 (text!34910 (value!151583 (h!36200 l!4335))) 0) (value!151578 (value!151583 (h!36200 l!4335)))))))

(declare-fun bs!479638 () Bool)

(assert (= bs!479638 d!764521))

(declare-fun m!3040481 () Bool)

(assert (=> bs!479638 m!3040481))

(assert (=> b!2673702 d!764521))

(declare-fun d!764523 () Bool)

(assert (=> d!764523 (= (list!11619 (ite c!430828 call!172542 e!1685466)) (list!11623 (c!430759 (ite c!430828 call!172542 e!1685466))))))

(declare-fun bs!479639 () Bool)

(assert (= bs!479639 d!764523))

(declare-fun m!3040483 () Bool)

(assert (=> bs!479639 m!3040483))

(assert (=> bm!172538 d!764523))

(declare-fun d!764525 () Bool)

(declare-fun lt!941618 () Bool)

(assert (=> d!764525 (= lt!941618 (isEmpty!17603 (list!11619 (_2!17656 (lex!1932 thiss!14116 rules!1712 (print!1677 thiss!14116 (singletonSeq!2098 separatorToken!152)))))))))

(declare-fun isEmpty!17606 (Conc!9632) Bool)

(assert (=> d!764525 (= lt!941618 (isEmpty!17606 (c!430759 (_2!17656 (lex!1932 thiss!14116 rules!1712 (print!1677 thiss!14116 (singletonSeq!2098 separatorToken!152)))))))))

(assert (=> d!764525 (= (isEmpty!17602 (_2!17656 (lex!1932 thiss!14116 rules!1712 (print!1677 thiss!14116 (singletonSeq!2098 separatorToken!152))))) lt!941618)))

(declare-fun bs!479640 () Bool)

(assert (= bs!479640 d!764525))

(declare-fun m!3040485 () Bool)

(assert (=> bs!479640 m!3040485))

(assert (=> bs!479640 m!3040485))

(declare-fun m!3040487 () Bool)

(assert (=> bs!479640 m!3040487))

(declare-fun m!3040489 () Bool)

(assert (=> bs!479640 m!3040489))

(assert (=> b!2673644 d!764525))

(declare-fun lt!941645 () tuple2!30228)

(declare-fun e!1685757 () Bool)

(declare-fun b!2674384 () Bool)

(assert (=> b!2674384 (= e!1685757 (= (_2!17656 lt!941645) (print!1677 thiss!14116 (singletonSeq!2098 separatorToken!152))))))

(declare-fun b!2674385 () Bool)

(declare-fun res!1124371 () Bool)

(declare-fun e!1685756 () Bool)

(assert (=> b!2674385 (=> (not res!1124371) (not e!1685756))))

(declare-datatypes ((tuple2!30234 0))(
  ( (tuple2!30235 (_1!17659 List!30880) (_2!17659 List!30878)) )
))
(declare-fun lexList!1173 (LexerInterface!4298 List!30879 List!30878) tuple2!30234)

(assert (=> b!2674385 (= res!1124371 (= (list!11622 (_1!17656 lt!941645)) (_1!17659 (lexList!1173 thiss!14116 rules!1712 (list!11619 (print!1677 thiss!14116 (singletonSeq!2098 separatorToken!152)))))))))

(declare-fun d!764527 () Bool)

(assert (=> d!764527 e!1685756))

(declare-fun res!1124370 () Bool)

(assert (=> d!764527 (=> (not res!1124370) (not e!1685756))))

(assert (=> d!764527 (= res!1124370 e!1685757)))

(declare-fun c!430947 () Bool)

(assert (=> d!764527 (= c!430947 (> (size!23784 (_1!17656 lt!941645)) 0))))

(declare-fun lexTailRecV2!848 (LexerInterface!4298 List!30879 BalanceConc!18878 BalanceConc!18878 BalanceConc!18878 BalanceConc!18880) tuple2!30228)

(assert (=> d!764527 (= lt!941645 (lexTailRecV2!848 thiss!14116 rules!1712 (print!1677 thiss!14116 (singletonSeq!2098 separatorToken!152)) (BalanceConc!18879 Empty!9632) (print!1677 thiss!14116 (singletonSeq!2098 separatorToken!152)) (BalanceConc!18881 Empty!9633)))))

(assert (=> d!764527 (= (lex!1932 thiss!14116 rules!1712 (print!1677 thiss!14116 (singletonSeq!2098 separatorToken!152))) lt!941645)))

(declare-fun b!2674386 () Bool)

(declare-fun e!1685758 () Bool)

(declare-fun isEmpty!17607 (BalanceConc!18880) Bool)

(assert (=> b!2674386 (= e!1685758 (not (isEmpty!17607 (_1!17656 lt!941645))))))

(declare-fun b!2674387 () Bool)

(assert (=> b!2674387 (= e!1685757 e!1685758)))

(declare-fun res!1124369 () Bool)

(assert (=> b!2674387 (= res!1124369 (< (size!23790 (_2!17656 lt!941645)) (size!23790 (print!1677 thiss!14116 (singletonSeq!2098 separatorToken!152)))))))

(assert (=> b!2674387 (=> (not res!1124369) (not e!1685758))))

(declare-fun b!2674388 () Bool)

(assert (=> b!2674388 (= e!1685756 (= (list!11619 (_2!17656 lt!941645)) (_2!17659 (lexList!1173 thiss!14116 rules!1712 (list!11619 (print!1677 thiss!14116 (singletonSeq!2098 separatorToken!152)))))))))

(assert (= (and d!764527 c!430947) b!2674387))

(assert (= (and d!764527 (not c!430947)) b!2674384))

(assert (= (and b!2674387 res!1124369) b!2674386))

(assert (= (and d!764527 res!1124370) b!2674385))

(assert (= (and b!2674385 res!1124371) b!2674388))

(declare-fun m!3040663 () Bool)

(assert (=> d!764527 m!3040663))

(assert (=> d!764527 m!3039609))

(assert (=> d!764527 m!3039609))

(declare-fun m!3040665 () Bool)

(assert (=> d!764527 m!3040665))

(declare-fun m!3040667 () Bool)

(assert (=> b!2674386 m!3040667))

(declare-fun m!3040669 () Bool)

(assert (=> b!2674387 m!3040669))

(assert (=> b!2674387 m!3039609))

(declare-fun m!3040671 () Bool)

(assert (=> b!2674387 m!3040671))

(declare-fun m!3040673 () Bool)

(assert (=> b!2674388 m!3040673))

(assert (=> b!2674388 m!3039609))

(declare-fun m!3040675 () Bool)

(assert (=> b!2674388 m!3040675))

(assert (=> b!2674388 m!3040675))

(declare-fun m!3040677 () Bool)

(assert (=> b!2674388 m!3040677))

(declare-fun m!3040679 () Bool)

(assert (=> b!2674385 m!3040679))

(assert (=> b!2674385 m!3039609))

(assert (=> b!2674385 m!3040675))

(assert (=> b!2674385 m!3040675))

(assert (=> b!2674385 m!3040677))

(assert (=> b!2673644 d!764527))

(declare-fun d!764587 () Bool)

(declare-fun lt!941646 () BalanceConc!18878)

(assert (=> d!764587 (= (list!11619 lt!941646) (printList!1190 thiss!14116 (list!11622 (singletonSeq!2098 separatorToken!152))))))

(assert (=> d!764587 (= lt!941646 (printTailRec!1151 thiss!14116 (singletonSeq!2098 separatorToken!152) 0 (BalanceConc!18879 Empty!9632)))))

(assert (=> d!764587 (= (print!1677 thiss!14116 (singletonSeq!2098 separatorToken!152)) lt!941646)))

(declare-fun bs!479651 () Bool)

(assert (= bs!479651 d!764587))

(declare-fun m!3040681 () Bool)

(assert (=> bs!479651 m!3040681))

(assert (=> bs!479651 m!3039607))

(assert (=> bs!479651 m!3039611))

(assert (=> bs!479651 m!3039611))

(declare-fun m!3040683 () Bool)

(assert (=> bs!479651 m!3040683))

(assert (=> bs!479651 m!3039607))

(declare-fun m!3040685 () Bool)

(assert (=> bs!479651 m!3040685))

(assert (=> b!2673644 d!764587))

(declare-fun d!764589 () Bool)

(declare-fun e!1685759 () Bool)

(assert (=> d!764589 e!1685759))

(declare-fun res!1124372 () Bool)

(assert (=> d!764589 (=> (not res!1124372) (not e!1685759))))

(declare-fun lt!941647 () BalanceConc!18880)

(assert (=> d!764589 (= res!1124372 (= (list!11622 lt!941647) (Cons!30780 separatorToken!152 Nil!30780)))))

(assert (=> d!764589 (= lt!941647 (singleton!928 separatorToken!152))))

(assert (=> d!764589 (= (singletonSeq!2098 separatorToken!152) lt!941647)))

(declare-fun b!2674389 () Bool)

(assert (=> b!2674389 (= e!1685759 (isBalanced!2915 (c!430761 lt!941647)))))

(assert (= (and d!764589 res!1124372) b!2674389))

(declare-fun m!3040687 () Bool)

(assert (=> d!764589 m!3040687))

(declare-fun m!3040689 () Bool)

(assert (=> d!764589 m!3040689))

(declare-fun m!3040691 () Bool)

(assert (=> b!2674389 m!3040691))

(assert (=> b!2673644 d!764589))

(declare-fun d!764591 () Bool)

(declare-fun lt!941652 () Bool)

(declare-fun content!4370 (List!30879) (InoxSet Rule!9202))

(assert (=> d!764591 (= lt!941652 (select (content!4370 rules!1712) (rule!7107 (_1!17655 (get!9672 lt!941455)))))))

(declare-fun e!1685779 () Bool)

(assert (=> d!764591 (= lt!941652 e!1685779)))

(declare-fun res!1124394 () Bool)

(assert (=> d!764591 (=> (not res!1124394) (not e!1685779))))

(assert (=> d!764591 (= res!1124394 ((_ is Cons!30779) rules!1712))))

(assert (=> d!764591 (= (contains!5917 rules!1712 (rule!7107 (_1!17655 (get!9672 lt!941455)))) lt!941652)))

(declare-fun b!2674422 () Bool)

(declare-fun e!1685778 () Bool)

(assert (=> b!2674422 (= e!1685779 e!1685778)))

(declare-fun res!1124393 () Bool)

(assert (=> b!2674422 (=> res!1124393 e!1685778)))

(assert (=> b!2674422 (= res!1124393 (= (h!36199 rules!1712) (rule!7107 (_1!17655 (get!9672 lt!941455)))))))

(declare-fun b!2674423 () Bool)

(assert (=> b!2674423 (= e!1685778 (contains!5917 (t!223504 rules!1712) (rule!7107 (_1!17655 (get!9672 lt!941455)))))))

(assert (= (and d!764591 res!1124394) b!2674422))

(assert (= (and b!2674422 (not res!1124393)) b!2674423))

(declare-fun m!3040693 () Bool)

(assert (=> d!764591 m!3040693))

(declare-fun m!3040695 () Bool)

(assert (=> d!764591 m!3040695))

(declare-fun m!3040697 () Bool)

(assert (=> b!2674423 m!3040697))

(assert (=> b!2673763 d!764591))

(assert (=> b!2673763 d!764453))

(declare-fun d!764593 () Bool)

(declare-fun c!430959 () Bool)

(assert (=> d!764593 (= c!430959 ((_ is Node!9632) (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (value!151583 separatorToken!152)))))))

(declare-fun e!1685791 () Bool)

(assert (=> d!764593 (= (inv!41789 (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (value!151583 separatorToken!152)))) e!1685791)))

(declare-fun b!2674444 () Bool)

(declare-fun inv!41791 (Conc!9632) Bool)

(assert (=> b!2674444 (= e!1685791 (inv!41791 (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (value!151583 separatorToken!152)))))))

(declare-fun b!2674445 () Bool)

(declare-fun e!1685792 () Bool)

(assert (=> b!2674445 (= e!1685791 e!1685792)))

(declare-fun res!1124405 () Bool)

(assert (=> b!2674445 (= res!1124405 (not ((_ is Leaf!14723) (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (value!151583 separatorToken!152))))))))

(assert (=> b!2674445 (=> res!1124405 e!1685792)))

(declare-fun b!2674446 () Bool)

(declare-fun inv!41792 (Conc!9632) Bool)

(assert (=> b!2674446 (= e!1685792 (inv!41792 (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (value!151583 separatorToken!152)))))))

(assert (= (and d!764593 c!430959) b!2674444))

(assert (= (and d!764593 (not c!430959)) b!2674445))

(assert (= (and b!2674445 (not res!1124405)) b!2674446))

(declare-fun m!3040699 () Bool)

(assert (=> b!2674444 m!3040699))

(declare-fun m!3040701 () Bool)

(assert (=> b!2674446 m!3040701))

(assert (=> b!2673931 d!764593))

(declare-fun d!764595 () Bool)

(assert (=> d!764595 (= (isEmpty!17605 lt!941455) (not ((_ is Some!6089) lt!941455)))))

(assert (=> d!764337 d!764595))

(declare-fun b!2674462 () Bool)

(declare-fun res!1124418 () Bool)

(declare-fun e!1685803 () Bool)

(assert (=> b!2674462 (=> (not res!1124418) (not e!1685803))))

(declare-fun head!6078 (List!30878) C!15848)

(assert (=> b!2674462 (= res!1124418 (= (head!6078 (++!7507 lt!941339 lt!941340)) (head!6078 (++!7507 lt!941339 lt!941340))))))

(declare-fun d!764597 () Bool)

(declare-fun e!1685804 () Bool)

(assert (=> d!764597 e!1685804))

(declare-fun res!1124419 () Bool)

(assert (=> d!764597 (=> res!1124419 e!1685804)))

(declare-fun lt!941656 () Bool)

(assert (=> d!764597 (= res!1124419 (not lt!941656))))

(declare-fun e!1685805 () Bool)

(assert (=> d!764597 (= lt!941656 e!1685805)))

(declare-fun res!1124417 () Bool)

(assert (=> d!764597 (=> res!1124417 e!1685805)))

(assert (=> d!764597 (= res!1124417 ((_ is Nil!30778) (++!7507 lt!941339 lt!941340)))))

(assert (=> d!764597 (= (isPrefix!2455 (++!7507 lt!941339 lt!941340) (++!7507 lt!941339 lt!941340)) lt!941656)))

(declare-fun b!2674461 () Bool)

(assert (=> b!2674461 (= e!1685805 e!1685803)))

(declare-fun res!1124416 () Bool)

(assert (=> b!2674461 (=> (not res!1124416) (not e!1685803))))

(assert (=> b!2674461 (= res!1124416 (not ((_ is Nil!30778) (++!7507 lt!941339 lt!941340))))))

(declare-fun b!2674463 () Bool)

(declare-fun tail!4316 (List!30878) List!30878)

(assert (=> b!2674463 (= e!1685803 (isPrefix!2455 (tail!4316 (++!7507 lt!941339 lt!941340)) (tail!4316 (++!7507 lt!941339 lt!941340))))))

(declare-fun b!2674464 () Bool)

(assert (=> b!2674464 (= e!1685804 (>= (size!23785 (++!7507 lt!941339 lt!941340)) (size!23785 (++!7507 lt!941339 lt!941340))))))

(assert (= (and d!764597 (not res!1124417)) b!2674461))

(assert (= (and b!2674461 res!1124416) b!2674462))

(assert (= (and b!2674462 res!1124418) b!2674463))

(assert (= (and d!764597 (not res!1124419)) b!2674464))

(assert (=> b!2674462 m!3039457))

(declare-fun m!3040719 () Bool)

(assert (=> b!2674462 m!3040719))

(assert (=> b!2674462 m!3039457))

(assert (=> b!2674462 m!3040719))

(assert (=> b!2674463 m!3039457))

(declare-fun m!3040723 () Bool)

(assert (=> b!2674463 m!3040723))

(assert (=> b!2674463 m!3039457))

(assert (=> b!2674463 m!3040723))

(assert (=> b!2674463 m!3040723))

(assert (=> b!2674463 m!3040723))

(declare-fun m!3040727 () Bool)

(assert (=> b!2674463 m!3040727))

(assert (=> b!2674464 m!3039457))

(assert (=> b!2674464 m!3039783))

(assert (=> b!2674464 m!3039457))

(assert (=> b!2674464 m!3039783))

(assert (=> d!764337 d!764597))

(declare-fun d!764603 () Bool)

(assert (=> d!764603 (isPrefix!2455 (++!7507 lt!941339 lt!941340) (++!7507 lt!941339 lt!941340))))

(declare-fun lt!941660 () Unit!44983)

(declare-fun choose!15844 (List!30878 List!30878) Unit!44983)

(assert (=> d!764603 (= lt!941660 (choose!15844 (++!7507 lt!941339 lt!941340) (++!7507 lt!941339 lt!941340)))))

(assert (=> d!764603 (= (lemmaIsPrefixRefl!1581 (++!7507 lt!941339 lt!941340) (++!7507 lt!941339 lt!941340)) lt!941660)))

(declare-fun bs!479654 () Bool)

(assert (= bs!479654 d!764603))

(assert (=> bs!479654 m!3039457))

(assert (=> bs!479654 m!3039457))

(assert (=> bs!479654 m!3039767))

(assert (=> bs!479654 m!3039457))

(assert (=> bs!479654 m!3039457))

(declare-fun m!3040737 () Bool)

(assert (=> bs!479654 m!3040737))

(assert (=> d!764337 d!764603))

(declare-fun d!764609 () Bool)

(assert (=> d!764609 true))

(declare-fun lt!941663 () Bool)

(declare-fun lambda!99901 () Int)

(declare-fun forall!6517 (List!30879 Int) Bool)

(assert (=> d!764609 (= lt!941663 (forall!6517 rules!1712 lambda!99901))))

(declare-fun e!1685821 () Bool)

(assert (=> d!764609 (= lt!941663 e!1685821)))

(declare-fun res!1124431 () Bool)

(assert (=> d!764609 (=> res!1124431 e!1685821)))

(assert (=> d!764609 (= res!1124431 (not ((_ is Cons!30779) rules!1712)))))

(assert (=> d!764609 (= (rulesValidInductive!1635 thiss!14116 rules!1712) lt!941663)))

(declare-fun b!2674484 () Bool)

(declare-fun e!1685822 () Bool)

(assert (=> b!2674484 (= e!1685821 e!1685822)))

(declare-fun res!1124432 () Bool)

(assert (=> b!2674484 (=> (not res!1124432) (not e!1685822))))

(assert (=> b!2674484 (= res!1124432 (ruleValid!1552 thiss!14116 (h!36199 rules!1712)))))

(declare-fun b!2674485 () Bool)

(assert (=> b!2674485 (= e!1685822 (rulesValidInductive!1635 thiss!14116 (t!223504 rules!1712)))))

(assert (= (and d!764609 (not res!1124431)) b!2674484))

(assert (= (and b!2674484 res!1124432) b!2674485))

(declare-fun m!3040747 () Bool)

(assert (=> d!764609 m!3040747))

(assert (=> b!2674484 m!3040381))

(declare-fun m!3040749 () Bool)

(assert (=> b!2674485 m!3040749))

(assert (=> d!764337 d!764609))

(declare-fun d!764615 () Bool)

(declare-fun res!1124434 () Bool)

(declare-fun e!1685825 () Bool)

(assert (=> d!764615 (=> (not res!1124434) (not e!1685825))))

(assert (=> d!764615 (= res!1124434 (not (isEmpty!17603 (originalCharacters!5467 (h!36200 (t!223505 l!4335))))))))

(assert (=> d!764615 (= (inv!41785 (h!36200 (t!223505 l!4335))) e!1685825)))

(declare-fun b!2674491 () Bool)

(declare-fun res!1124435 () Bool)

(assert (=> b!2674491 (=> (not res!1124435) (not e!1685825))))

(assert (=> b!2674491 (= res!1124435 (= (originalCharacters!5467 (h!36200 (t!223505 l!4335))) (list!11619 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))) (value!151583 (h!36200 (t!223505 l!4335)))))))))

(declare-fun b!2674492 () Bool)

(assert (=> b!2674492 (= e!1685825 (= (size!23781 (h!36200 (t!223505 l!4335))) (size!23785 (originalCharacters!5467 (h!36200 (t!223505 l!4335))))))))

(assert (= (and d!764615 res!1124434) b!2674491))

(assert (= (and b!2674491 res!1124435) b!2674492))

(declare-fun b_lambda!81527 () Bool)

(assert (=> (not b_lambda!81527) (not b!2674491)))

(declare-fun tb!149929 () Bool)

(declare-fun t!223643 () Bool)

(assert (=> (and b!2673522 (= (toChars!6502 (transformation!4701 (h!36199 rules!1712))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335)))))) t!223643) tb!149929))

(declare-fun b!2674493 () Bool)

(declare-fun e!1685826 () Bool)

(declare-fun tp!845659 () Bool)

(assert (=> b!2674493 (= e!1685826 (and (inv!41789 (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))) (value!151583 (h!36200 (t!223505 l!4335)))))) tp!845659))))

(declare-fun result!185192 () Bool)

(assert (=> tb!149929 (= result!185192 (and (inv!41790 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))) (value!151583 (h!36200 (t!223505 l!4335))))) e!1685826))))

(assert (= tb!149929 b!2674493))

(declare-fun m!3040761 () Bool)

(assert (=> b!2674493 m!3040761))

(declare-fun m!3040763 () Bool)

(assert (=> tb!149929 m!3040763))

(assert (=> b!2674491 t!223643))

(declare-fun b_and!197669 () Bool)

(assert (= b_and!197641 (and (=> t!223643 result!185192) b_and!197669)))

(declare-fun t!223645 () Bool)

(declare-fun tb!149931 () Bool)

(assert (=> (and b!2673951 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335)))))) t!223645) tb!149931))

(declare-fun result!185194 () Bool)

(assert (= result!185194 result!185192))

(assert (=> b!2674491 t!223645))

(declare-fun b_and!197671 () Bool)

(assert (= b_and!197647 (and (=> t!223645 result!185194) b_and!197671)))

(declare-fun tb!149933 () Bool)

(declare-fun t!223647 () Bool)

(assert (=> (and b!2673993 (= (toChars!6502 (transformation!4701 (h!36199 (t!223504 rules!1712)))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335)))))) t!223647) tb!149933))

(declare-fun result!185196 () Bool)

(assert (= result!185196 result!185192))

(assert (=> b!2674491 t!223647))

(declare-fun b_and!197673 () Bool)

(assert (= b_and!197643 (and (=> t!223647 result!185196) b_and!197673)))

(declare-fun t!223649 () Bool)

(declare-fun tb!149935 () Bool)

(assert (=> (and b!2673519 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335)))))) t!223649) tb!149935))

(declare-fun result!185198 () Bool)

(assert (= result!185198 result!185192))

(assert (=> b!2674491 t!223649))

(declare-fun b_and!197675 () Bool)

(assert (= b_and!197639 (and (=> t!223649 result!185198) b_and!197675)))

(declare-fun tb!149937 () Bool)

(declare-fun t!223651 () Bool)

(assert (=> (and b!2673517 (= (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335)))))) t!223651) tb!149937))

(declare-fun result!185200 () Bool)

(assert (= result!185200 result!185192))

(assert (=> b!2674491 t!223651))

(declare-fun b_and!197677 () Bool)

(assert (= b_and!197645 (and (=> t!223651 result!185200) b_and!197677)))

(declare-fun m!3040765 () Bool)

(assert (=> d!764615 m!3040765))

(declare-fun m!3040767 () Bool)

(assert (=> b!2674491 m!3040767))

(assert (=> b!2674491 m!3040767))

(declare-fun m!3040769 () Bool)

(assert (=> b!2674491 m!3040769))

(declare-fun m!3040771 () Bool)

(assert (=> b!2674492 m!3040771))

(assert (=> b!2673948 d!764615))

(declare-fun d!764625 () Bool)

(assert (=> d!764625 (dynLambda!13362 lambda!99887 (h!36200 (t!223505 l!4335)))))

(declare-fun lt!941665 () Unit!44983)

(assert (=> d!764625 (= lt!941665 (choose!15839 (t!223505 l!4335) lambda!99887 (h!36200 (t!223505 l!4335))))))

(declare-fun e!1685827 () Bool)

(assert (=> d!764625 e!1685827))

(declare-fun res!1124436 () Bool)

(assert (=> d!764625 (=> (not res!1124436) (not e!1685827))))

(assert (=> d!764625 (= res!1124436 (forall!6516 (t!223505 l!4335) lambda!99887))))

(assert (=> d!764625 (= (forallContained!1041 (t!223505 l!4335) lambda!99887 (h!36200 (t!223505 l!4335))) lt!941665)))

(declare-fun b!2674494 () Bool)

(assert (=> b!2674494 (= e!1685827 (contains!5915 (t!223505 l!4335) (h!36200 (t!223505 l!4335))))))

(assert (= (and d!764625 res!1124436) b!2674494))

(declare-fun b_lambda!81529 () Bool)

(assert (=> (not b_lambda!81529) (not d!764625)))

(declare-fun m!3040773 () Bool)

(assert (=> d!764625 m!3040773))

(declare-fun m!3040775 () Bool)

(assert (=> d!764625 m!3040775))

(declare-fun m!3040777 () Bool)

(assert (=> d!764625 m!3040777))

(declare-fun m!3040779 () Bool)

(assert (=> b!2674494 m!3040779))

(assert (=> b!2673897 d!764625))

(declare-fun d!764627 () Bool)

(assert (=> d!764627 (= (list!11619 (charsOf!2964 (h!36200 (t!223505 l!4335)))) (list!11623 (c!430759 (charsOf!2964 (h!36200 (t!223505 l!4335))))))))

(declare-fun bs!479659 () Bool)

(assert (= bs!479659 d!764627))

(declare-fun m!3040781 () Bool)

(assert (=> bs!479659 m!3040781))

(assert (=> b!2673897 d!764627))

(declare-fun bs!479660 () Bool)

(declare-fun b!2674504 () Bool)

(assert (= bs!479660 (and b!2674504 b!2673506)))

(declare-fun lambda!99902 () Int)

(assert (=> bs!479660 (not (= lambda!99902 lambda!99877))))

(declare-fun bs!479661 () Bool)

(assert (= bs!479661 (and b!2674504 b!2673516)))

(assert (=> bs!479661 (= lambda!99902 lambda!99878)))

(declare-fun bs!479662 () Bool)

(assert (= bs!479662 (and b!2674504 b!2673897)))

(assert (=> bs!479662 (= lambda!99902 lambda!99887)))

(declare-fun bs!479663 () Bool)

(assert (= bs!479663 (and b!2674504 d!764365)))

(assert (=> bs!479663 (= lambda!99902 lambda!99890)))

(declare-fun b!2674507 () Bool)

(declare-fun e!1685837 () Bool)

(assert (=> b!2674507 (= e!1685837 true)))

(declare-fun b!2674506 () Bool)

(declare-fun e!1685836 () Bool)

(assert (=> b!2674506 (= e!1685836 e!1685837)))

(declare-fun b!2674505 () Bool)

(declare-fun e!1685835 () Bool)

(assert (=> b!2674505 (= e!1685835 e!1685836)))

(assert (=> b!2674504 e!1685835))

(assert (= b!2674506 b!2674507))

(assert (= b!2674505 b!2674506))

(assert (= (and b!2674504 ((_ is Cons!30779) rules!1712)) b!2674505))

(assert (=> b!2674507 (< (dynLambda!13356 order!16955 (toValue!6643 (transformation!4701 (h!36199 rules!1712)))) (dynLambda!13357 order!16957 lambda!99902))))

(assert (=> b!2674507 (< (dynLambda!13358 order!16959 (toChars!6502 (transformation!4701 (h!36199 rules!1712)))) (dynLambda!13357 order!16957 lambda!99902))))

(assert (=> b!2674504 true))

(declare-fun d!764629 () Bool)

(declare-fun c!430967 () Bool)

(assert (=> d!764629 (= c!430967 ((_ is Cons!30780) (t!223505 (t!223505 l!4335))))))

(declare-fun e!1685829 () List!30878)

(assert (=> d!764629 (= (printWithSeparatorTokenWhenNeededList!692 thiss!14116 rules!1712 (t!223505 (t!223505 l!4335)) separatorToken!152) e!1685829)))

(declare-fun b!2674495 () Bool)

(declare-fun e!1685828 () List!30878)

(declare-fun call!172574 () List!30878)

(assert (=> b!2674495 (= e!1685828 call!172574)))

(declare-fun b!2674496 () Bool)

(declare-fun e!1685831 () List!30878)

(declare-fun call!172571 () BalanceConc!18878)

(assert (=> b!2674496 (= e!1685831 (list!11619 call!172571))))

(declare-fun b!2674497 () Bool)

(declare-fun e!1685830 () BalanceConc!18878)

(declare-fun call!172570 () BalanceConc!18878)

(assert (=> b!2674497 (= e!1685830 call!172570)))

(declare-fun b!2674498 () Bool)

(declare-fun e!1685832 () List!30878)

(assert (=> b!2674498 (= e!1685832 Nil!30778)))

(assert (=> b!2674498 (= (print!1677 thiss!14116 (singletonSeq!2098 (h!36200 (t!223505 (t!223505 l!4335))))) (printTailRec!1151 thiss!14116 (singletonSeq!2098 (h!36200 (t!223505 (t!223505 l!4335)))) 0 (BalanceConc!18879 Empty!9632)))))

(declare-fun lt!941668 () Unit!44983)

(declare-fun Unit!44991 () Unit!44983)

(assert (=> b!2674498 (= lt!941668 Unit!44991)))

(declare-fun lt!941669 () Unit!44983)

(declare-fun call!172572 () List!30878)

(declare-fun lt!941667 () List!30878)

(assert (=> b!2674498 (= lt!941669 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!819 thiss!14116 rules!1712 call!172572 lt!941667))))

(assert (=> b!2674498 false))

(declare-fun lt!941666 () Unit!44983)

(declare-fun Unit!44992 () Unit!44983)

(assert (=> b!2674498 (= lt!941666 Unit!44992)))

(declare-fun b!2674499 () Bool)

(assert (=> b!2674499 (= e!1685830 call!172571)))

(declare-fun bm!172565 () Bool)

(assert (=> bm!172565 (= call!172570 (charsOf!2964 (h!36200 (t!223505 (t!223505 l!4335)))))))

(declare-fun c!430971 () Bool)

(declare-fun call!172573 () List!30878)

(declare-fun bm!172566 () Bool)

(assert (=> bm!172566 (= call!172573 (list!11619 (ite c!430971 call!172570 e!1685830)))))

(declare-fun b!2674500 () Bool)

(assert (=> b!2674500 (= e!1685829 Nil!30778)))

(declare-fun c!430969 () Bool)

(declare-fun bm!172567 () Bool)

(assert (=> bm!172567 (= call!172571 (charsOf!2964 (ite c!430969 separatorToken!152 (h!36200 (t!223505 (t!223505 l!4335))))))))

(declare-fun b!2674501 () Bool)

(assert (=> b!2674501 (= e!1685831 lt!941667)))

(declare-fun b!2674502 () Bool)

(assert (=> b!2674502 (= e!1685832 (++!7507 call!172574 lt!941667))))

(declare-fun b!2674503 () Bool)

(declare-fun lt!941671 () Option!6090)

(assert (=> b!2674503 (= c!430969 (and ((_ is Some!6089) lt!941671) (not (= (_1!17655 (v!32632 lt!941671)) (h!36200 (t!223505 (t!223505 l!4335)))))))))

(assert (=> b!2674503 (= e!1685828 e!1685832)))

(declare-fun bm!172568 () Bool)

(declare-fun c!430968 () Bool)

(assert (=> bm!172568 (= c!430968 c!430971)))

(assert (=> bm!172568 (= call!172574 (++!7507 (ite c!430971 call!172573 call!172572) e!1685831))))

(declare-fun bm!172569 () Bool)

(assert (=> bm!172569 (= call!172572 call!172573)))

(declare-fun c!430970 () Bool)

(assert (=> bm!172569 (= c!430970 c!430969)))

(assert (=> b!2674504 (= e!1685829 e!1685828)))

(declare-fun lt!941670 () Unit!44983)

(assert (=> b!2674504 (= lt!941670 (forallContained!1041 (t!223505 (t!223505 l!4335)) lambda!99902 (h!36200 (t!223505 (t!223505 l!4335)))))))

(assert (=> b!2674504 (= lt!941667 (printWithSeparatorTokenWhenNeededList!692 thiss!14116 rules!1712 (t!223505 (t!223505 (t!223505 l!4335))) separatorToken!152))))

(assert (=> b!2674504 (= lt!941671 (maxPrefix!2336 thiss!14116 rules!1712 (++!7507 (list!11619 (charsOf!2964 (h!36200 (t!223505 (t!223505 l!4335))))) lt!941667)))))

(assert (=> b!2674504 (= c!430971 (and ((_ is Some!6089) lt!941671) (= (_1!17655 (v!32632 lt!941671)) (h!36200 (t!223505 (t!223505 l!4335))))))))

(assert (= (and d!764629 c!430967) b!2674504))

(assert (= (and d!764629 (not c!430967)) b!2674500))

(assert (= (and b!2674504 c!430971) b!2674495))

(assert (= (and b!2674504 (not c!430971)) b!2674503))

(assert (= (and b!2674503 c!430969) b!2674502))

(assert (= (and b!2674503 (not c!430969)) b!2674498))

(assert (= (or b!2674502 b!2674498) bm!172567))

(assert (= (or b!2674502 b!2674498) bm!172569))

(assert (= (and bm!172569 c!430970) b!2674497))

(assert (= (and bm!172569 (not c!430970)) b!2674499))

(assert (= (or b!2674495 b!2674497) bm!172565))

(assert (= (or b!2674495 bm!172569) bm!172566))

(assert (= (or b!2674495 b!2674502) bm!172568))

(assert (= (and bm!172568 c!430968) b!2674501))

(assert (= (and bm!172568 (not c!430968)) b!2674496))

(declare-fun m!3040805 () Bool)

(assert (=> bm!172566 m!3040805))

(declare-fun m!3040807 () Bool)

(assert (=> bm!172565 m!3040807))

(declare-fun m!3040809 () Bool)

(assert (=> b!2674504 m!3040809))

(declare-fun m!3040811 () Bool)

(assert (=> b!2674504 m!3040811))

(assert (=> b!2674504 m!3040807))

(declare-fun m!3040813 () Bool)

(assert (=> b!2674504 m!3040813))

(assert (=> b!2674504 m!3040807))

(assert (=> b!2674504 m!3040809))

(assert (=> b!2674504 m!3040811))

(declare-fun m!3040819 () Bool)

(assert (=> b!2674504 m!3040819))

(declare-fun m!3040823 () Bool)

(assert (=> b!2674504 m!3040823))

(declare-fun m!3040825 () Bool)

(assert (=> bm!172567 m!3040825))

(declare-fun m!3040827 () Bool)

(assert (=> b!2674502 m!3040827))

(declare-fun m!3040829 () Bool)

(assert (=> bm!172568 m!3040829))

(declare-fun m!3040831 () Bool)

(assert (=> b!2674496 m!3040831))

(declare-fun m!3040833 () Bool)

(assert (=> b!2674498 m!3040833))

(assert (=> b!2674498 m!3040833))

(declare-fun m!3040835 () Bool)

(assert (=> b!2674498 m!3040835))

(assert (=> b!2674498 m!3040833))

(declare-fun m!3040837 () Bool)

(assert (=> b!2674498 m!3040837))

(declare-fun m!3040839 () Bool)

(assert (=> b!2674498 m!3040839))

(assert (=> b!2673897 d!764629))

(declare-fun d!764639 () Bool)

(declare-fun lt!941679 () BalanceConc!18878)

(assert (=> d!764639 (= (list!11619 lt!941679) (originalCharacters!5467 (h!36200 (t!223505 l!4335))))))

(assert (=> d!764639 (= lt!941679 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))) (value!151583 (h!36200 (t!223505 l!4335)))))))

(assert (=> d!764639 (= (charsOf!2964 (h!36200 (t!223505 l!4335))) lt!941679)))

(declare-fun b_lambda!81531 () Bool)

(assert (=> (not b_lambda!81531) (not d!764639)))

(assert (=> d!764639 t!223643))

(declare-fun b_and!197679 () Bool)

(assert (= b_and!197669 (and (=> t!223643 result!185192) b_and!197679)))

(assert (=> d!764639 t!223649))

(declare-fun b_and!197681 () Bool)

(assert (= b_and!197675 (and (=> t!223649 result!185198) b_and!197681)))

(assert (=> d!764639 t!223651))

(declare-fun b_and!197683 () Bool)

(assert (= b_and!197677 (and (=> t!223651 result!185200) b_and!197683)))

(assert (=> d!764639 t!223645))

(declare-fun b_and!197685 () Bool)

(assert (= b_and!197671 (and (=> t!223645 result!185194) b_and!197685)))

(assert (=> d!764639 t!223647))

(declare-fun b_and!197687 () Bool)

(assert (= b_and!197673 (and (=> t!223647 result!185196) b_and!197687)))

(declare-fun m!3040847 () Bool)

(assert (=> d!764639 m!3040847))

(assert (=> d!764639 m!3040767))

(assert (=> b!2673897 d!764639))

(declare-fun b!2674521 () Bool)

(declare-fun e!1685845 () Bool)

(declare-fun e!1685846 () Bool)

(assert (=> b!2674521 (= e!1685845 e!1685846)))

(declare-fun res!1124446 () Bool)

(assert (=> b!2674521 (=> (not res!1124446) (not e!1685846))))

(declare-fun lt!941691 () Option!6090)

(assert (=> b!2674521 (= res!1124446 (isDefined!4838 lt!941691))))

(declare-fun b!2674522 () Bool)

(declare-fun res!1124445 () Bool)

(assert (=> b!2674522 (=> (not res!1124445) (not e!1685846))))

(assert (=> b!2674522 (= res!1124445 (matchR!3626 (regex!4701 (rule!7107 (_1!17655 (get!9672 lt!941691)))) (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941691))))))))

(declare-fun b!2674523 () Bool)

(declare-fun res!1124450 () Bool)

(assert (=> b!2674523 (=> (not res!1124450) (not e!1685846))))

(assert (=> b!2674523 (= res!1124450 (= (++!7507 (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941691)))) (_2!17655 (get!9672 lt!941691))) (++!7507 (list!11619 (charsOf!2964 (h!36200 (t!223505 l!4335)))) lt!941496)))))

(declare-fun b!2674524 () Bool)

(declare-fun res!1124449 () Bool)

(assert (=> b!2674524 (=> (not res!1124449) (not e!1685846))))

(assert (=> b!2674524 (= res!1124449 (< (size!23785 (_2!17655 (get!9672 lt!941691))) (size!23785 (++!7507 (list!11619 (charsOf!2964 (h!36200 (t!223505 l!4335)))) lt!941496))))))

(declare-fun b!2674525 () Bool)

(declare-fun e!1685847 () Option!6090)

(declare-fun call!172575 () Option!6090)

(assert (=> b!2674525 (= e!1685847 call!172575)))

(declare-fun b!2674526 () Bool)

(declare-fun lt!941690 () Option!6090)

(declare-fun lt!941689 () Option!6090)

(assert (=> b!2674526 (= e!1685847 (ite (and ((_ is None!6089) lt!941690) ((_ is None!6089) lt!941689)) None!6089 (ite ((_ is None!6089) lt!941689) lt!941690 (ite ((_ is None!6089) lt!941690) lt!941689 (ite (>= (size!23781 (_1!17655 (v!32632 lt!941690))) (size!23781 (_1!17655 (v!32632 lt!941689)))) lt!941690 lt!941689)))))))

(assert (=> b!2674526 (= lt!941690 call!172575)))

(assert (=> b!2674526 (= lt!941689 (maxPrefix!2336 thiss!14116 (t!223504 rules!1712) (++!7507 (list!11619 (charsOf!2964 (h!36200 (t!223505 l!4335)))) lt!941496)))))

(declare-fun b!2674527 () Bool)

(declare-fun res!1124447 () Bool)

(assert (=> b!2674527 (=> (not res!1124447) (not e!1685846))))

(assert (=> b!2674527 (= res!1124447 (= (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941691)))) (originalCharacters!5467 (_1!17655 (get!9672 lt!941691)))))))

(declare-fun b!2674528 () Bool)

(declare-fun res!1124448 () Bool)

(assert (=> b!2674528 (=> (not res!1124448) (not e!1685846))))

(assert (=> b!2674528 (= res!1124448 (= (value!151583 (_1!17655 (get!9672 lt!941691))) (apply!7378 (transformation!4701 (rule!7107 (_1!17655 (get!9672 lt!941691)))) (seqFromList!3203 (originalCharacters!5467 (_1!17655 (get!9672 lt!941691)))))))))

(declare-fun b!2674529 () Bool)

(assert (=> b!2674529 (= e!1685846 (contains!5917 rules!1712 (rule!7107 (_1!17655 (get!9672 lt!941691)))))))

(declare-fun d!764643 () Bool)

(assert (=> d!764643 e!1685845))

(declare-fun res!1124444 () Bool)

(assert (=> d!764643 (=> res!1124444 e!1685845)))

(assert (=> d!764643 (= res!1124444 (isEmpty!17605 lt!941691))))

(assert (=> d!764643 (= lt!941691 e!1685847)))

(declare-fun c!430975 () Bool)

(assert (=> d!764643 (= c!430975 (and ((_ is Cons!30779) rules!1712) ((_ is Nil!30779) (t!223504 rules!1712))))))

(declare-fun lt!941687 () Unit!44983)

(declare-fun lt!941688 () Unit!44983)

(assert (=> d!764643 (= lt!941687 lt!941688)))

(assert (=> d!764643 (isPrefix!2455 (++!7507 (list!11619 (charsOf!2964 (h!36200 (t!223505 l!4335)))) lt!941496) (++!7507 (list!11619 (charsOf!2964 (h!36200 (t!223505 l!4335)))) lt!941496))))

(assert (=> d!764643 (= lt!941688 (lemmaIsPrefixRefl!1581 (++!7507 (list!11619 (charsOf!2964 (h!36200 (t!223505 l!4335)))) lt!941496) (++!7507 (list!11619 (charsOf!2964 (h!36200 (t!223505 l!4335)))) lt!941496)))))

(assert (=> d!764643 (rulesValidInductive!1635 thiss!14116 rules!1712)))

(assert (=> d!764643 (= (maxPrefix!2336 thiss!14116 rules!1712 (++!7507 (list!11619 (charsOf!2964 (h!36200 (t!223505 l!4335)))) lt!941496)) lt!941691)))

(declare-fun bm!172570 () Bool)

(assert (=> bm!172570 (= call!172575 (maxPrefixOneRule!1484 thiss!14116 (h!36199 rules!1712) (++!7507 (list!11619 (charsOf!2964 (h!36200 (t!223505 l!4335)))) lt!941496)))))

(assert (= (and d!764643 c!430975) b!2674525))

(assert (= (and d!764643 (not c!430975)) b!2674526))

(assert (= (or b!2674525 b!2674526) bm!172570))

(assert (= (and d!764643 (not res!1124444)) b!2674521))

(assert (= (and b!2674521 res!1124446) b!2674527))

(assert (= (and b!2674527 res!1124447) b!2674524))

(assert (= (and b!2674524 res!1124449) b!2674523))

(assert (= (and b!2674523 res!1124450) b!2674528))

(assert (= (and b!2674528 res!1124448) b!2674522))

(assert (= (and b!2674522 res!1124445) b!2674529))

(declare-fun m!3040881 () Bool)

(assert (=> d!764643 m!3040881))

(assert (=> d!764643 m!3039883))

(assert (=> d!764643 m!3039883))

(declare-fun m!3040883 () Bool)

(assert (=> d!764643 m!3040883))

(assert (=> d!764643 m!3039883))

(assert (=> d!764643 m!3039883))

(declare-fun m!3040885 () Bool)

(assert (=> d!764643 m!3040885))

(assert (=> d!764643 m!3039771))

(declare-fun m!3040887 () Bool)

(assert (=> b!2674528 m!3040887))

(declare-fun m!3040889 () Bool)

(assert (=> b!2674528 m!3040889))

(assert (=> b!2674528 m!3040889))

(declare-fun m!3040891 () Bool)

(assert (=> b!2674528 m!3040891))

(assert (=> bm!172570 m!3039883))

(declare-fun m!3040893 () Bool)

(assert (=> bm!172570 m!3040893))

(assert (=> b!2674524 m!3040887))

(declare-fun m!3040895 () Bool)

(assert (=> b!2674524 m!3040895))

(assert (=> b!2674524 m!3039883))

(declare-fun m!3040897 () Bool)

(assert (=> b!2674524 m!3040897))

(assert (=> b!2674529 m!3040887))

(declare-fun m!3040899 () Bool)

(assert (=> b!2674529 m!3040899))

(assert (=> b!2674523 m!3040887))

(declare-fun m!3040901 () Bool)

(assert (=> b!2674523 m!3040901))

(assert (=> b!2674523 m!3040901))

(declare-fun m!3040903 () Bool)

(assert (=> b!2674523 m!3040903))

(assert (=> b!2674523 m!3040903))

(declare-fun m!3040905 () Bool)

(assert (=> b!2674523 m!3040905))

(assert (=> b!2674527 m!3040887))

(assert (=> b!2674527 m!3040901))

(assert (=> b!2674527 m!3040901))

(assert (=> b!2674527 m!3040903))

(declare-fun m!3040907 () Bool)

(assert (=> b!2674521 m!3040907))

(assert (=> b!2674522 m!3040887))

(assert (=> b!2674522 m!3040901))

(assert (=> b!2674522 m!3040901))

(assert (=> b!2674522 m!3040903))

(assert (=> b!2674522 m!3040903))

(declare-fun m!3040909 () Bool)

(assert (=> b!2674522 m!3040909))

(assert (=> b!2674526 m!3039883))

(declare-fun m!3040911 () Bool)

(assert (=> b!2674526 m!3040911))

(assert (=> b!2673897 d!764643))

(declare-fun b!2674533 () Bool)

(declare-fun e!1685848 () Bool)

(declare-fun lt!941692 () List!30878)

(assert (=> b!2674533 (= e!1685848 (or (not (= lt!941496 Nil!30778)) (= lt!941692 (list!11619 (charsOf!2964 (h!36200 (t!223505 l!4335)))))))))

(declare-fun b!2674531 () Bool)

(declare-fun e!1685849 () List!30878)

(assert (=> b!2674531 (= e!1685849 (Cons!30778 (h!36198 (list!11619 (charsOf!2964 (h!36200 (t!223505 l!4335))))) (++!7507 (t!223503 (list!11619 (charsOf!2964 (h!36200 (t!223505 l!4335))))) lt!941496)))))

(declare-fun b!2674532 () Bool)

(declare-fun res!1124452 () Bool)

(assert (=> b!2674532 (=> (not res!1124452) (not e!1685848))))

(assert (=> b!2674532 (= res!1124452 (= (size!23785 lt!941692) (+ (size!23785 (list!11619 (charsOf!2964 (h!36200 (t!223505 l!4335))))) (size!23785 lt!941496))))))

(declare-fun b!2674530 () Bool)

(assert (=> b!2674530 (= e!1685849 lt!941496)))

(declare-fun d!764647 () Bool)

(assert (=> d!764647 e!1685848))

(declare-fun res!1124451 () Bool)

(assert (=> d!764647 (=> (not res!1124451) (not e!1685848))))

(assert (=> d!764647 (= res!1124451 (= (content!4369 lt!941692) ((_ map or) (content!4369 (list!11619 (charsOf!2964 (h!36200 (t!223505 l!4335))))) (content!4369 lt!941496))))))

(assert (=> d!764647 (= lt!941692 e!1685849)))

(declare-fun c!430976 () Bool)

(assert (=> d!764647 (= c!430976 ((_ is Nil!30778) (list!11619 (charsOf!2964 (h!36200 (t!223505 l!4335))))))))

(assert (=> d!764647 (= (++!7507 (list!11619 (charsOf!2964 (h!36200 (t!223505 l!4335)))) lt!941496) lt!941692)))

(assert (= (and d!764647 c!430976) b!2674530))

(assert (= (and d!764647 (not c!430976)) b!2674531))

(assert (= (and d!764647 res!1124451) b!2674532))

(assert (= (and b!2674532 res!1124452) b!2674533))

(declare-fun m!3040913 () Bool)

(assert (=> b!2674531 m!3040913))

(declare-fun m!3040915 () Bool)

(assert (=> b!2674532 m!3040915))

(assert (=> b!2674532 m!3039881))

(declare-fun m!3040917 () Bool)

(assert (=> b!2674532 m!3040917))

(declare-fun m!3040919 () Bool)

(assert (=> b!2674532 m!3040919))

(declare-fun m!3040921 () Bool)

(assert (=> d!764647 m!3040921))

(assert (=> d!764647 m!3039881))

(declare-fun m!3040923 () Bool)

(assert (=> d!764647 m!3040923))

(declare-fun m!3040925 () Bool)

(assert (=> d!764647 m!3040925))

(assert (=> b!2673897 d!764647))

(declare-fun d!764649 () Bool)

(assert (=> d!764649 true))

(declare-fun lambda!99905 () Int)

(declare-fun order!16965 () Int)

(declare-fun dynLambda!13364 (Int Int) Int)

(assert (=> d!764649 (< (dynLambda!13356 order!16955 (toValue!6643 (transformation!4701 (rule!7107 separatorToken!152)))) (dynLambda!13364 order!16965 lambda!99905))))

(declare-fun Forall2!792 (Int) Bool)

(assert (=> d!764649 (= (equivClasses!1847 (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (toValue!6643 (transformation!4701 (rule!7107 separatorToken!152)))) (Forall2!792 lambda!99905))))

(declare-fun bs!479665 () Bool)

(assert (= bs!479665 d!764649))

(declare-fun m!3040927 () Bool)

(assert (=> bs!479665 m!3040927))

(assert (=> b!2673713 d!764649))

(declare-fun bs!479666 () Bool)

(declare-fun d!764651 () Bool)

(assert (= bs!479666 (and d!764651 b!2673516)))

(declare-fun lambda!99906 () Int)

(assert (=> bs!479666 (= lambda!99906 lambda!99878)))

(declare-fun bs!479667 () Bool)

(assert (= bs!479667 (and d!764651 d!764365)))

(assert (=> bs!479667 (= lambda!99906 lambda!99890)))

(declare-fun bs!479668 () Bool)

(assert (= bs!479668 (and d!764651 b!2673506)))

(assert (=> bs!479668 (not (= lambda!99906 lambda!99877))))

(declare-fun bs!479669 () Bool)

(assert (= bs!479669 (and d!764651 b!2673897)))

(assert (=> bs!479669 (= lambda!99906 lambda!99887)))

(declare-fun bs!479670 () Bool)

(assert (= bs!479670 (and d!764651 b!2674504)))

(assert (=> bs!479670 (= lambda!99906 lambda!99902)))

(declare-fun b!2674542 () Bool)

(declare-fun e!1685856 () Bool)

(assert (=> b!2674542 (= e!1685856 true)))

(declare-fun b!2674541 () Bool)

(declare-fun e!1685855 () Bool)

(assert (=> b!2674541 (= e!1685855 e!1685856)))

(declare-fun b!2674540 () Bool)

(declare-fun e!1685854 () Bool)

(assert (=> b!2674540 (= e!1685854 e!1685855)))

(assert (=> d!764651 e!1685854))

(assert (= b!2674541 b!2674542))

(assert (= b!2674540 b!2674541))

(assert (= (and d!764651 ((_ is Cons!30779) rules!1712)) b!2674540))

(assert (=> b!2674542 (< (dynLambda!13356 order!16955 (toValue!6643 (transformation!4701 (h!36199 rules!1712)))) (dynLambda!13357 order!16957 lambda!99906))))

(assert (=> b!2674542 (< (dynLambda!13358 order!16959 (toChars!6502 (transformation!4701 (h!36199 rules!1712)))) (dynLambda!13357 order!16957 lambda!99906))))

(assert (=> d!764651 true))

(declare-fun lt!941693 () Bool)

(assert (=> d!764651 (= lt!941693 (forall!6516 (t!223505 l!4335) lambda!99906))))

(declare-fun e!1685852 () Bool)

(assert (=> d!764651 (= lt!941693 e!1685852)))

(declare-fun res!1124455 () Bool)

(assert (=> d!764651 (=> res!1124455 e!1685852)))

(assert (=> d!764651 (= res!1124455 (not ((_ is Cons!30780) (t!223505 l!4335))))))

(assert (=> d!764651 (not (isEmpty!17599 rules!1712))))

(assert (=> d!764651 (= (rulesProduceEachTokenIndividuallyList!1520 thiss!14116 rules!1712 (t!223505 l!4335)) lt!941693)))

(declare-fun b!2674538 () Bool)

(declare-fun e!1685853 () Bool)

(assert (=> b!2674538 (= e!1685852 e!1685853)))

(declare-fun res!1124456 () Bool)

(assert (=> b!2674538 (=> (not res!1124456) (not e!1685853))))

(assert (=> b!2674538 (= res!1124456 (rulesProduceIndividualToken!2010 thiss!14116 rules!1712 (h!36200 (t!223505 l!4335))))))

(declare-fun b!2674539 () Bool)

(assert (=> b!2674539 (= e!1685853 (rulesProduceEachTokenIndividuallyList!1520 thiss!14116 rules!1712 (t!223505 (t!223505 l!4335))))))

(assert (= (and d!764651 (not res!1124455)) b!2674538))

(assert (= (and b!2674538 res!1124456) b!2674539))

(declare-fun m!3040929 () Bool)

(assert (=> d!764651 m!3040929))

(assert (=> d!764651 m!3039463))

(declare-fun m!3040931 () Bool)

(assert (=> b!2674538 m!3040931))

(declare-fun m!3040933 () Bool)

(assert (=> b!2674539 m!3040933))

(assert (=> b!2673925 d!764651))

(declare-fun lt!941694 () List!30878)

(declare-fun e!1685857 () Bool)

(declare-fun b!2674546 () Bool)

(assert (=> b!2674546 (= e!1685857 (or (not (= e!1685467 Nil!30778)) (= lt!941694 (ite c!430828 call!172545 call!172544))))))

(declare-fun e!1685858 () List!30878)

(declare-fun b!2674544 () Bool)

(assert (=> b!2674544 (= e!1685858 (Cons!30778 (h!36198 (ite c!430828 call!172545 call!172544)) (++!7507 (t!223503 (ite c!430828 call!172545 call!172544)) e!1685467)))))

(declare-fun b!2674545 () Bool)

(declare-fun res!1124458 () Bool)

(assert (=> b!2674545 (=> (not res!1124458) (not e!1685857))))

(assert (=> b!2674545 (= res!1124458 (= (size!23785 lt!941694) (+ (size!23785 (ite c!430828 call!172545 call!172544)) (size!23785 e!1685467))))))

(declare-fun b!2674543 () Bool)

(assert (=> b!2674543 (= e!1685858 e!1685467)))

(declare-fun d!764653 () Bool)

(assert (=> d!764653 e!1685857))

(declare-fun res!1124457 () Bool)

(assert (=> d!764653 (=> (not res!1124457) (not e!1685857))))

(assert (=> d!764653 (= res!1124457 (= (content!4369 lt!941694) ((_ map or) (content!4369 (ite c!430828 call!172545 call!172544)) (content!4369 e!1685467))))))

(assert (=> d!764653 (= lt!941694 e!1685858)))

(declare-fun c!430977 () Bool)

(assert (=> d!764653 (= c!430977 ((_ is Nil!30778) (ite c!430828 call!172545 call!172544)))))

(assert (=> d!764653 (= (++!7507 (ite c!430828 call!172545 call!172544) e!1685467) lt!941694)))

(assert (= (and d!764653 c!430977) b!2674543))

(assert (= (and d!764653 (not c!430977)) b!2674544))

(assert (= (and d!764653 res!1124457) b!2674545))

(assert (= (and b!2674545 res!1124458) b!2674546))

(declare-fun m!3040935 () Bool)

(assert (=> b!2674544 m!3040935))

(declare-fun m!3040937 () Bool)

(assert (=> b!2674545 m!3040937))

(declare-fun m!3040939 () Bool)

(assert (=> b!2674545 m!3040939))

(declare-fun m!3040941 () Bool)

(assert (=> b!2674545 m!3040941))

(declare-fun m!3040943 () Bool)

(assert (=> d!764653 m!3040943))

(declare-fun m!3040945 () Bool)

(assert (=> d!764653 m!3040945))

(declare-fun m!3040947 () Bool)

(assert (=> d!764653 m!3040947))

(assert (=> bm!172540 d!764653))

(declare-fun b!2674550 () Bool)

(declare-fun lt!941695 () List!30878)

(declare-fun e!1685859 () Bool)

(assert (=> b!2674550 (= e!1685859 (or (not (= lt!941496 Nil!30778)) (= lt!941695 call!172546)))))

(declare-fun b!2674548 () Bool)

(declare-fun e!1685860 () List!30878)

(assert (=> b!2674548 (= e!1685860 (Cons!30778 (h!36198 call!172546) (++!7507 (t!223503 call!172546) lt!941496)))))

(declare-fun b!2674549 () Bool)

(declare-fun res!1124460 () Bool)

(assert (=> b!2674549 (=> (not res!1124460) (not e!1685859))))

(assert (=> b!2674549 (= res!1124460 (= (size!23785 lt!941695) (+ (size!23785 call!172546) (size!23785 lt!941496))))))

(declare-fun b!2674547 () Bool)

(assert (=> b!2674547 (= e!1685860 lt!941496)))

(declare-fun d!764655 () Bool)

(assert (=> d!764655 e!1685859))

(declare-fun res!1124459 () Bool)

(assert (=> d!764655 (=> (not res!1124459) (not e!1685859))))

(assert (=> d!764655 (= res!1124459 (= (content!4369 lt!941695) ((_ map or) (content!4369 call!172546) (content!4369 lt!941496))))))

(assert (=> d!764655 (= lt!941695 e!1685860)))

(declare-fun c!430978 () Bool)

(assert (=> d!764655 (= c!430978 ((_ is Nil!30778) call!172546))))

(assert (=> d!764655 (= (++!7507 call!172546 lt!941496) lt!941695)))

(assert (= (and d!764655 c!430978) b!2674547))

(assert (= (and d!764655 (not c!430978)) b!2674548))

(assert (= (and d!764655 res!1124459) b!2674549))

(assert (= (and b!2674549 res!1124460) b!2674550))

(declare-fun m!3040949 () Bool)

(assert (=> b!2674548 m!3040949))

(declare-fun m!3040951 () Bool)

(assert (=> b!2674549 m!3040951))

(declare-fun m!3040953 () Bool)

(assert (=> b!2674549 m!3040953))

(assert (=> b!2674549 m!3040919))

(declare-fun m!3040955 () Bool)

(assert (=> d!764655 m!3040955))

(declare-fun m!3040957 () Bool)

(assert (=> d!764655 m!3040957))

(assert (=> d!764655 m!3040925))

(assert (=> b!2673895 d!764655))

(declare-fun bs!479671 () Bool)

(declare-fun d!764657 () Bool)

(assert (= bs!479671 (and d!764657 d!764649)))

(declare-fun lambda!99907 () Int)

(assert (=> bs!479671 (= (= (toValue!6643 (transformation!4701 (h!36199 rules!1712))) (toValue!6643 (transformation!4701 (rule!7107 separatorToken!152)))) (= lambda!99907 lambda!99905))))

(assert (=> d!764657 true))

(assert (=> d!764657 (< (dynLambda!13356 order!16955 (toValue!6643 (transformation!4701 (h!36199 rules!1712)))) (dynLambda!13364 order!16965 lambda!99907))))

(assert (=> d!764657 (= (equivClasses!1847 (toChars!6502 (transformation!4701 (h!36199 rules!1712))) (toValue!6643 (transformation!4701 (h!36199 rules!1712)))) (Forall2!792 lambda!99907))))

(declare-fun bs!479672 () Bool)

(assert (= bs!479672 d!764657))

(declare-fun m!3040959 () Bool)

(assert (=> bs!479672 m!3040959))

(assert (=> b!2673919 d!764657))

(declare-fun d!764659 () Bool)

(assert (=> d!764659 (= (list!11619 lt!941413) (list!11623 (c!430759 lt!941413)))))

(declare-fun bs!479673 () Bool)

(assert (= bs!479673 d!764659))

(declare-fun m!3040961 () Bool)

(assert (=> bs!479673 m!3040961))

(assert (=> d!764323 d!764659))

(declare-fun d!764661 () Bool)

(declare-fun c!430979 () Bool)

(assert (=> d!764661 (= c!430979 ((_ is Cons!30780) (list!11622 lt!941343)))))

(declare-fun e!1685861 () List!30878)

(assert (=> d!764661 (= (printList!1190 thiss!14116 (list!11622 lt!941343)) e!1685861)))

(declare-fun b!2674551 () Bool)

(assert (=> b!2674551 (= e!1685861 (++!7507 (list!11619 (charsOf!2964 (h!36200 (list!11622 lt!941343)))) (printList!1190 thiss!14116 (t!223505 (list!11622 lt!941343)))))))

(declare-fun b!2674552 () Bool)

(assert (=> b!2674552 (= e!1685861 Nil!30778)))

(assert (= (and d!764661 c!430979) b!2674551))

(assert (= (and d!764661 (not c!430979)) b!2674552))

(declare-fun m!3040963 () Bool)

(assert (=> b!2674551 m!3040963))

(assert (=> b!2674551 m!3040963))

(declare-fun m!3040965 () Bool)

(assert (=> b!2674551 m!3040965))

(declare-fun m!3040967 () Bool)

(assert (=> b!2674551 m!3040967))

(assert (=> b!2674551 m!3040965))

(assert (=> b!2674551 m!3040967))

(declare-fun m!3040969 () Bool)

(assert (=> b!2674551 m!3040969))

(assert (=> d!764323 d!764661))

(assert (=> d!764323 d!764389))

(assert (=> d!764323 d!764327))

(declare-fun d!764663 () Bool)

(declare-fun lt!941696 () Int)

(assert (=> d!764663 (>= lt!941696 0)))

(declare-fun e!1685862 () Int)

(assert (=> d!764663 (= lt!941696 e!1685862)))

(declare-fun c!430980 () Bool)

(assert (=> d!764663 (= c!430980 ((_ is Nil!30778) (originalCharacters!5467 (h!36200 l!4335))))))

(assert (=> d!764663 (= (size!23785 (originalCharacters!5467 (h!36200 l!4335))) lt!941696)))

(declare-fun b!2674553 () Bool)

(assert (=> b!2674553 (= e!1685862 0)))

(declare-fun b!2674554 () Bool)

(assert (=> b!2674554 (= e!1685862 (+ 1 (size!23785 (t!223503 (originalCharacters!5467 (h!36200 l!4335))))))))

(assert (= (and d!764663 c!430980) b!2674553))

(assert (= (and d!764663 (not c!430980)) b!2674554))

(declare-fun m!3040971 () Bool)

(assert (=> b!2674554 m!3040971))

(assert (=> b!2673671 d!764663))

(declare-fun d!764665 () Bool)

(assert (=> d!764665 (= (inv!16 (value!151583 separatorToken!152)) (= (charsToInt!0 (text!34908 (value!151583 separatorToken!152))) (value!151574 (value!151583 separatorToken!152))))))

(declare-fun bs!479674 () Bool)

(assert (= bs!479674 d!764665))

(declare-fun m!3040973 () Bool)

(assert (=> bs!479674 m!3040973))

(assert (=> b!2673734 d!764665))

(declare-fun b!2674558 () Bool)

(declare-fun e!1685863 () Bool)

(declare-fun lt!941697 () List!30878)

(assert (=> b!2674558 (= e!1685863 (or (not (= (_2!17655 (get!9672 lt!941455)) Nil!30778)) (= lt!941697 (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941455)))))))))

(declare-fun b!2674556 () Bool)

(declare-fun e!1685864 () List!30878)

(assert (=> b!2674556 (= e!1685864 (Cons!30778 (h!36198 (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941455))))) (++!7507 (t!223503 (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941455))))) (_2!17655 (get!9672 lt!941455)))))))

(declare-fun b!2674557 () Bool)

(declare-fun res!1124462 () Bool)

(assert (=> b!2674557 (=> (not res!1124462) (not e!1685863))))

(assert (=> b!2674557 (= res!1124462 (= (size!23785 lt!941697) (+ (size!23785 (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941455))))) (size!23785 (_2!17655 (get!9672 lt!941455))))))))

(declare-fun b!2674555 () Bool)

(assert (=> b!2674555 (= e!1685864 (_2!17655 (get!9672 lt!941455)))))

(declare-fun d!764667 () Bool)

(assert (=> d!764667 e!1685863))

(declare-fun res!1124461 () Bool)

(assert (=> d!764667 (=> (not res!1124461) (not e!1685863))))

(assert (=> d!764667 (= res!1124461 (= (content!4369 lt!941697) ((_ map or) (content!4369 (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941455))))) (content!4369 (_2!17655 (get!9672 lt!941455))))))))

(assert (=> d!764667 (= lt!941697 e!1685864)))

(declare-fun c!430981 () Bool)

(assert (=> d!764667 (= c!430981 ((_ is Nil!30778) (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941455))))))))

(assert (=> d!764667 (= (++!7507 (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941455)))) (_2!17655 (get!9672 lt!941455))) lt!941697)))

(assert (= (and d!764667 c!430981) b!2674555))

(assert (= (and d!764667 (not c!430981)) b!2674556))

(assert (= (and d!764667 res!1124461) b!2674557))

(assert (= (and b!2674557 res!1124462) b!2674558))

(declare-fun m!3040975 () Bool)

(assert (=> b!2674556 m!3040975))

(declare-fun m!3040977 () Bool)

(assert (=> b!2674557 m!3040977))

(assert (=> b!2674557 m!3039789))

(declare-fun m!3040979 () Bool)

(assert (=> b!2674557 m!3040979))

(assert (=> b!2674557 m!3039781))

(declare-fun m!3040981 () Bool)

(assert (=> d!764667 m!3040981))

(assert (=> d!764667 m!3039789))

(declare-fun m!3040983 () Bool)

(assert (=> d!764667 m!3040983))

(declare-fun m!3040985 () Bool)

(assert (=> d!764667 m!3040985))

(assert (=> b!2673757 d!764667))

(assert (=> b!2673757 d!764449))

(assert (=> b!2673757 d!764451))

(assert (=> b!2673757 d!764453))

(declare-fun e!1685865 () Bool)

(declare-fun b!2674562 () Bool)

(declare-fun lt!941698 () List!30878)

(assert (=> b!2674562 (= e!1685865 (or (not (= lt!941340 Nil!30778)) (= lt!941698 (t!223503 lt!941339))))))

(declare-fun b!2674560 () Bool)

(declare-fun e!1685866 () List!30878)

(assert (=> b!2674560 (= e!1685866 (Cons!30778 (h!36198 (t!223503 lt!941339)) (++!7507 (t!223503 (t!223503 lt!941339)) lt!941340)))))

(declare-fun b!2674561 () Bool)

(declare-fun res!1124464 () Bool)

(assert (=> b!2674561 (=> (not res!1124464) (not e!1685865))))

(assert (=> b!2674561 (= res!1124464 (= (size!23785 lt!941698) (+ (size!23785 (t!223503 lt!941339)) (size!23785 lt!941340))))))

(declare-fun b!2674559 () Bool)

(assert (=> b!2674559 (= e!1685866 lt!941340)))

(declare-fun d!764669 () Bool)

(assert (=> d!764669 e!1685865))

(declare-fun res!1124463 () Bool)

(assert (=> d!764669 (=> (not res!1124463) (not e!1685865))))

(assert (=> d!764669 (= res!1124463 (= (content!4369 lt!941698) ((_ map or) (content!4369 (t!223503 lt!941339)) (content!4369 lt!941340))))))

(assert (=> d!764669 (= lt!941698 e!1685866)))

(declare-fun c!430982 () Bool)

(assert (=> d!764669 (= c!430982 ((_ is Nil!30778) (t!223503 lt!941339)))))

(assert (=> d!764669 (= (++!7507 (t!223503 lt!941339) lt!941340) lt!941698)))

(assert (= (and d!764669 c!430982) b!2674559))

(assert (= (and d!764669 (not c!430982)) b!2674560))

(assert (= (and d!764669 res!1124463) b!2674561))

(assert (= (and b!2674561 res!1124464) b!2674562))

(declare-fun m!3040987 () Bool)

(assert (=> b!2674560 m!3040987))

(declare-fun m!3040989 () Bool)

(assert (=> b!2674561 m!3040989))

(assert (=> b!2674561 m!3040451))

(assert (=> b!2674561 m!3039913))

(declare-fun m!3040991 () Bool)

(assert (=> d!764669 m!3040991))

(assert (=> d!764669 m!3040471))

(assert (=> d!764669 m!3039919))

(assert (=> b!2673910 d!764669))

(declare-fun d!764671 () Bool)

(declare-fun lt!941700 () Bool)

(declare-fun e!1685868 () Bool)

(assert (=> d!764671 (= lt!941700 e!1685868)))

(declare-fun res!1124466 () Bool)

(assert (=> d!764671 (=> (not res!1124466) (not e!1685868))))

(assert (=> d!764671 (= res!1124466 (= (list!11622 (_1!17656 (lex!1932 thiss!14116 rules!1712 (print!1677 thiss!14116 (singletonSeq!2098 (h!36200 l!4335)))))) (list!11622 (singletonSeq!2098 (h!36200 l!4335)))))))

(declare-fun e!1685867 () Bool)

(assert (=> d!764671 (= lt!941700 e!1685867)))

(declare-fun res!1124465 () Bool)

(assert (=> d!764671 (=> (not res!1124465) (not e!1685867))))

(declare-fun lt!941699 () tuple2!30228)

(assert (=> d!764671 (= res!1124465 (= (size!23784 (_1!17656 lt!941699)) 1))))

(assert (=> d!764671 (= lt!941699 (lex!1932 thiss!14116 rules!1712 (print!1677 thiss!14116 (singletonSeq!2098 (h!36200 l!4335)))))))

(assert (=> d!764671 (not (isEmpty!17599 rules!1712))))

(assert (=> d!764671 (= (rulesProduceIndividualToken!2010 thiss!14116 rules!1712 (h!36200 l!4335)) lt!941700)))

(declare-fun b!2674563 () Bool)

(declare-fun res!1124467 () Bool)

(assert (=> b!2674563 (=> (not res!1124467) (not e!1685867))))

(assert (=> b!2674563 (= res!1124467 (= (apply!7376 (_1!17656 lt!941699) 0) (h!36200 l!4335)))))

(declare-fun b!2674564 () Bool)

(assert (=> b!2674564 (= e!1685867 (isEmpty!17602 (_2!17656 lt!941699)))))

(declare-fun b!2674565 () Bool)

(assert (=> b!2674565 (= e!1685868 (isEmpty!17602 (_2!17656 (lex!1932 thiss!14116 rules!1712 (print!1677 thiss!14116 (singletonSeq!2098 (h!36200 l!4335)))))))))

(assert (= (and d!764671 res!1124465) b!2674563))

(assert (= (and b!2674563 res!1124467) b!2674564))

(assert (= (and d!764671 res!1124466) b!2674565))

(assert (=> d!764671 m!3039423))

(declare-fun m!3040993 () Bool)

(assert (=> d!764671 m!3040993))

(assert (=> d!764671 m!3039423))

(declare-fun m!3040995 () Bool)

(assert (=> d!764671 m!3040995))

(declare-fun m!3040997 () Bool)

(assert (=> d!764671 m!3040997))

(assert (=> d!764671 m!3039463))

(declare-fun m!3040999 () Bool)

(assert (=> d!764671 m!3040999))

(assert (=> d!764671 m!3039423))

(assert (=> d!764671 m!3040993))

(declare-fun m!3041001 () Bool)

(assert (=> d!764671 m!3041001))

(declare-fun m!3041003 () Bool)

(assert (=> b!2674563 m!3041003))

(declare-fun m!3041005 () Bool)

(assert (=> b!2674564 m!3041005))

(assert (=> b!2674565 m!3039423))

(assert (=> b!2674565 m!3039423))

(assert (=> b!2674565 m!3040993))

(assert (=> b!2674565 m!3040993))

(assert (=> b!2674565 m!3041001))

(declare-fun m!3041007 () Bool)

(assert (=> b!2674565 m!3041007))

(assert (=> bs!479620 d!764671))

(declare-fun d!764673 () Bool)

(declare-fun c!430985 () Bool)

(assert (=> d!764673 (= c!430985 ((_ is Nil!30780) l!4335))))

(declare-fun e!1685871 () (InoxSet Token!8872))

(assert (=> d!764673 (= (content!4368 l!4335) e!1685871)))

(declare-fun b!2674570 () Bool)

(assert (=> b!2674570 (= e!1685871 ((as const (Array Token!8872 Bool)) false))))

(declare-fun b!2674571 () Bool)

(assert (=> b!2674571 (= e!1685871 ((_ map or) (store ((as const (Array Token!8872 Bool)) false) (h!36200 l!4335) true) (content!4368 (t!223505 l!4335))))))

(assert (= (and d!764673 c!430985) b!2674570))

(assert (= (and d!764673 (not c!430985)) b!2674571))

(declare-fun m!3041009 () Bool)

(assert (=> b!2674571 m!3041009))

(declare-fun m!3041011 () Bool)

(assert (=> b!2674571 m!3041011))

(assert (=> d!764317 d!764673))

(declare-fun d!764675 () Bool)

(declare-fun res!1124468 () Bool)

(declare-fun e!1685872 () Bool)

(assert (=> d!764675 (=> res!1124468 e!1685872)))

(assert (=> d!764675 (= res!1124468 ((_ is Nil!30780) (t!223505 l!4335)))))

(assert (=> d!764675 (= (forall!6516 (t!223505 l!4335) lambda!99877) e!1685872)))

(declare-fun b!2674572 () Bool)

(declare-fun e!1685873 () Bool)

(assert (=> b!2674572 (= e!1685872 e!1685873)))

(declare-fun res!1124469 () Bool)

(assert (=> b!2674572 (=> (not res!1124469) (not e!1685873))))

(assert (=> b!2674572 (= res!1124469 (dynLambda!13362 lambda!99877 (h!36200 (t!223505 l!4335))))))

(declare-fun b!2674573 () Bool)

(assert (=> b!2674573 (= e!1685873 (forall!6516 (t!223505 (t!223505 l!4335)) lambda!99877))))

(assert (= (and d!764675 (not res!1124468)) b!2674572))

(assert (= (and b!2674572 res!1124469) b!2674573))

(declare-fun b_lambda!81533 () Bool)

(assert (=> (not b_lambda!81533) (not b!2674572)))

(declare-fun m!3041013 () Bool)

(assert (=> b!2674572 m!3041013))

(declare-fun m!3041015 () Bool)

(assert (=> b!2674573 m!3041015))

(assert (=> b!2673918 d!764675))

(declare-fun d!764677 () Bool)

(assert (=> d!764677 (= (inv!15 (value!151583 separatorToken!152)) (= (charsToBigInt!0 (text!34910 (value!151583 separatorToken!152)) 0) (value!151578 (value!151583 separatorToken!152))))))

(declare-fun bs!479675 () Bool)

(assert (= bs!479675 d!764677))

(declare-fun m!3041017 () Bool)

(assert (=> bs!479675 m!3041017))

(assert (=> b!2673732 d!764677))

(declare-fun d!764679 () Bool)

(declare-fun res!1124474 () Bool)

(declare-fun e!1685878 () Bool)

(assert (=> d!764679 (=> res!1124474 e!1685878)))

(assert (=> d!764679 (= res!1124474 ((_ is Nil!30779) rules!1712))))

(assert (=> d!764679 (= (noDuplicateTag!1748 thiss!14116 rules!1712 Nil!30782) e!1685878)))

(declare-fun b!2674578 () Bool)

(declare-fun e!1685879 () Bool)

(assert (=> b!2674578 (= e!1685878 e!1685879)))

(declare-fun res!1124475 () Bool)

(assert (=> b!2674578 (=> (not res!1124475) (not e!1685879))))

(declare-fun contains!5918 (List!30882 String!34499) Bool)

(assert (=> b!2674578 (= res!1124475 (not (contains!5918 Nil!30782 (tag!5203 (h!36199 rules!1712)))))))

(declare-fun b!2674579 () Bool)

(assert (=> b!2674579 (= e!1685879 (noDuplicateTag!1748 thiss!14116 (t!223504 rules!1712) (Cons!30782 (tag!5203 (h!36199 rules!1712)) Nil!30782)))))

(assert (= (and d!764679 (not res!1124474)) b!2674578))

(assert (= (and b!2674578 res!1124475) b!2674579))

(declare-fun m!3041019 () Bool)

(assert (=> b!2674578 m!3041019))

(declare-fun m!3041021 () Bool)

(assert (=> b!2674579 m!3041021))

(assert (=> b!2673647 d!764679))

(declare-fun d!764681 () Bool)

(assert (=> d!764681 (= (isDefined!4838 lt!941455) (not (isEmpty!17605 lt!941455)))))

(declare-fun bs!479676 () Bool)

(assert (= bs!479676 d!764681))

(assert (=> bs!479676 m!3039765))

(assert (=> b!2673755 d!764681))

(declare-fun d!764683 () Bool)

(declare-fun res!1124476 () Bool)

(declare-fun e!1685880 () Bool)

(assert (=> d!764683 (=> res!1124476 e!1685880)))

(assert (=> d!764683 (= res!1124476 ((_ is Nil!30780) l!4335))))

(assert (=> d!764683 (= (forall!6516 l!4335 lambda!99890) e!1685880)))

(declare-fun b!2674580 () Bool)

(declare-fun e!1685881 () Bool)

(assert (=> b!2674580 (= e!1685880 e!1685881)))

(declare-fun res!1124477 () Bool)

(assert (=> b!2674580 (=> (not res!1124477) (not e!1685881))))

(assert (=> b!2674580 (= res!1124477 (dynLambda!13362 lambda!99890 (h!36200 l!4335)))))

(declare-fun b!2674581 () Bool)

(assert (=> b!2674581 (= e!1685881 (forall!6516 (t!223505 l!4335) lambda!99890))))

(assert (= (and d!764683 (not res!1124476)) b!2674580))

(assert (= (and b!2674580 res!1124477) b!2674581))

(declare-fun b_lambda!81535 () Bool)

(assert (=> (not b_lambda!81535) (not b!2674580)))

(declare-fun m!3041023 () Bool)

(assert (=> b!2674580 m!3041023))

(declare-fun m!3041025 () Bool)

(assert (=> b!2674581 m!3041025))

(assert (=> d!764365 d!764683))

(assert (=> d!764365 d!764303))

(declare-fun d!764685 () Bool)

(declare-fun lt!941701 () Int)

(assert (=> d!764685 (>= lt!941701 0)))

(declare-fun e!1685882 () Int)

(assert (=> d!764685 (= lt!941701 e!1685882)))

(declare-fun c!430986 () Bool)

(assert (=> d!764685 (= c!430986 ((_ is Nil!30778) (originalCharacters!5467 separatorToken!152)))))

(assert (=> d!764685 (= (size!23785 (originalCharacters!5467 separatorToken!152)) lt!941701)))

(declare-fun b!2674582 () Bool)

(assert (=> b!2674582 (= e!1685882 0)))

(declare-fun b!2674583 () Bool)

(assert (=> b!2674583 (= e!1685882 (+ 1 (size!23785 (t!223503 (originalCharacters!5467 separatorToken!152)))))))

(assert (= (and d!764685 c!430986) b!2674582))

(assert (= (and d!764685 (not c!430986)) b!2674583))

(declare-fun m!3041027 () Bool)

(assert (=> b!2674583 m!3041027))

(assert (=> b!2673930 d!764685))

(declare-fun b!2674592 () Bool)

(declare-fun e!1685889 () Bool)

(declare-fun call!172578 () Bool)

(assert (=> b!2674592 (= e!1685889 call!172578)))

(declare-fun b!2674593 () Bool)

(declare-fun e!1685891 () Bool)

(declare-fun e!1685890 () Bool)

(assert (=> b!2674593 (= e!1685891 e!1685890)))

(declare-fun res!1124482 () Bool)

(declare-fun rulesUseDisjointChars!253 (Rule!9202 Rule!9202) Bool)

(assert (=> b!2674593 (= res!1124482 (rulesUseDisjointChars!253 (h!36199 rules!1712) (h!36199 rules!1712)))))

(assert (=> b!2674593 (=> (not res!1124482) (not e!1685890))))

(declare-fun b!2674594 () Bool)

(assert (=> b!2674594 (= e!1685891 e!1685889)))

(declare-fun res!1124483 () Bool)

(assert (=> b!2674594 (= res!1124483 (not ((_ is Cons!30779) rules!1712)))))

(assert (=> b!2674594 (=> res!1124483 e!1685889)))

(declare-fun bm!172573 () Bool)

(assert (=> bm!172573 (= call!172578 (ruleDisjointCharsFromAllFromOtherType!553 (h!36199 rules!1712) (t!223504 rules!1712)))))

(declare-fun d!764687 () Bool)

(declare-fun c!430989 () Bool)

(assert (=> d!764687 (= c!430989 (and ((_ is Cons!30779) rules!1712) (not (= (isSeparator!4701 (h!36199 rules!1712)) (isSeparator!4701 (h!36199 rules!1712))))))))

(assert (=> d!764687 (= (ruleDisjointCharsFromAllFromOtherType!553 (h!36199 rules!1712) rules!1712) e!1685891)))

(declare-fun b!2674595 () Bool)

(assert (=> b!2674595 (= e!1685890 call!172578)))

(assert (= (and d!764687 c!430989) b!2674593))

(assert (= (and d!764687 (not c!430989)) b!2674594))

(assert (= (and b!2674593 res!1124482) b!2674595))

(assert (= (and b!2674594 (not res!1124483)) b!2674592))

(assert (= (or b!2674595 b!2674592) bm!172573))

(declare-fun m!3041029 () Bool)

(assert (=> b!2674593 m!3041029))

(declare-fun m!3041031 () Bool)

(assert (=> bm!172573 m!3041031))

(assert (=> b!2673936 d!764687))

(declare-fun bs!479677 () Bool)

(declare-fun d!764689 () Bool)

(assert (= bs!479677 (and d!764689 d!764609)))

(declare-fun lambda!99910 () Int)

(assert (=> bs!479677 (= lambda!99910 lambda!99901)))

(assert (=> d!764689 true))

(declare-fun lt!941704 () Bool)

(assert (=> d!764689 (= lt!941704 (rulesValidInductive!1635 thiss!14116 rules!1712))))

(assert (=> d!764689 (= lt!941704 (forall!6517 rules!1712 lambda!99910))))

(assert (=> d!764689 (= (rulesValid!1752 thiss!14116 rules!1712) lt!941704)))

(declare-fun bs!479678 () Bool)

(assert (= bs!479678 d!764689))

(assert (=> bs!479678 m!3039771))

(declare-fun m!3041033 () Bool)

(assert (=> bs!479678 m!3041033))

(assert (=> d!764301 d!764689))

(declare-fun d!764691 () Bool)

(declare-fun lt!941705 () BalanceConc!18878)

(assert (=> d!764691 (= (list!11619 lt!941705) (printList!1190 thiss!14116 (list!11622 (singletonSeq!2098 (h!36200 (t!223505 l!4335))))))))

(assert (=> d!764691 (= lt!941705 (printTailRec!1151 thiss!14116 (singletonSeq!2098 (h!36200 (t!223505 l!4335))) 0 (BalanceConc!18879 Empty!9632)))))

(assert (=> d!764691 (= (print!1677 thiss!14116 (singletonSeq!2098 (h!36200 (t!223505 l!4335)))) lt!941705)))

(declare-fun bs!479679 () Bool)

(assert (= bs!479679 d!764691))

(declare-fun m!3041035 () Bool)

(assert (=> bs!479679 m!3041035))

(assert (=> bs!479679 m!3039899))

(declare-fun m!3041037 () Bool)

(assert (=> bs!479679 m!3041037))

(assert (=> bs!479679 m!3041037))

(declare-fun m!3041039 () Bool)

(assert (=> bs!479679 m!3041039))

(assert (=> bs!479679 m!3039899))

(assert (=> bs!479679 m!3039903))

(assert (=> b!2673891 d!764691))

(declare-fun d!764693 () Bool)

(declare-fun e!1685892 () Bool)

(assert (=> d!764693 e!1685892))

(declare-fun res!1124484 () Bool)

(assert (=> d!764693 (=> (not res!1124484) (not e!1685892))))

(declare-fun lt!941706 () BalanceConc!18880)

(assert (=> d!764693 (= res!1124484 (= (list!11622 lt!941706) (Cons!30780 (h!36200 (t!223505 l!4335)) Nil!30780)))))

(assert (=> d!764693 (= lt!941706 (singleton!928 (h!36200 (t!223505 l!4335))))))

(assert (=> d!764693 (= (singletonSeq!2098 (h!36200 (t!223505 l!4335))) lt!941706)))

(declare-fun b!2674596 () Bool)

(assert (=> b!2674596 (= e!1685892 (isBalanced!2915 (c!430761 lt!941706)))))

(assert (= (and d!764693 res!1124484) b!2674596))

(declare-fun m!3041041 () Bool)

(assert (=> d!764693 m!3041041))

(declare-fun m!3041043 () Bool)

(assert (=> d!764693 m!3041043))

(declare-fun m!3041045 () Bool)

(assert (=> b!2674596 m!3041045))

(assert (=> b!2673891 d!764693))

(declare-fun d!764695 () Bool)

(declare-fun lt!941711 () BalanceConc!18878)

(assert (=> d!764695 (= (list!11619 lt!941711) (printListTailRec!523 thiss!14116 (dropList!972 (singletonSeq!2098 (h!36200 (t!223505 l!4335))) 0) (list!11619 (BalanceConc!18879 Empty!9632))))))

(declare-fun e!1685893 () BalanceConc!18878)

(assert (=> d!764695 (= lt!941711 e!1685893)))

(declare-fun c!430990 () Bool)

(assert (=> d!764695 (= c!430990 (>= 0 (size!23784 (singletonSeq!2098 (h!36200 (t!223505 l!4335))))))))

(declare-fun e!1685894 () Bool)

(assert (=> d!764695 e!1685894))

(declare-fun res!1124485 () Bool)

(assert (=> d!764695 (=> (not res!1124485) (not e!1685894))))

(assert (=> d!764695 (= res!1124485 (>= 0 0))))

(assert (=> d!764695 (= (printTailRec!1151 thiss!14116 (singletonSeq!2098 (h!36200 (t!223505 l!4335))) 0 (BalanceConc!18879 Empty!9632)) lt!941711)))

(declare-fun b!2674597 () Bool)

(assert (=> b!2674597 (= e!1685894 (<= 0 (size!23784 (singletonSeq!2098 (h!36200 (t!223505 l!4335))))))))

(declare-fun b!2674598 () Bool)

(assert (=> b!2674598 (= e!1685893 (BalanceConc!18879 Empty!9632))))

(declare-fun b!2674599 () Bool)

(assert (=> b!2674599 (= e!1685893 (printTailRec!1151 thiss!14116 (singletonSeq!2098 (h!36200 (t!223505 l!4335))) (+ 0 1) (++!7509 (BalanceConc!18879 Empty!9632) (charsOf!2964 (apply!7376 (singletonSeq!2098 (h!36200 (t!223505 l!4335))) 0)))))))

(declare-fun lt!941708 () List!30880)

(assert (=> b!2674599 (= lt!941708 (list!11622 (singletonSeq!2098 (h!36200 (t!223505 l!4335)))))))

(declare-fun lt!941709 () Unit!44983)

(assert (=> b!2674599 (= lt!941709 (lemmaDropApply!878 lt!941708 0))))

(assert (=> b!2674599 (= (head!6077 (drop!1669 lt!941708 0)) (apply!7377 lt!941708 0))))

(declare-fun lt!941712 () Unit!44983)

(assert (=> b!2674599 (= lt!941712 lt!941709)))

(declare-fun lt!941713 () List!30880)

(assert (=> b!2674599 (= lt!941713 (list!11622 (singletonSeq!2098 (h!36200 (t!223505 l!4335)))))))

(declare-fun lt!941710 () Unit!44983)

(assert (=> b!2674599 (= lt!941710 (lemmaDropTail!850 lt!941713 0))))

(assert (=> b!2674599 (= (tail!4315 (drop!1669 lt!941713 0)) (drop!1669 lt!941713 (+ 0 1)))))

(declare-fun lt!941707 () Unit!44983)

(assert (=> b!2674599 (= lt!941707 lt!941710)))

(assert (= (and d!764695 res!1124485) b!2674597))

(assert (= (and d!764695 c!430990) b!2674598))

(assert (= (and d!764695 (not c!430990)) b!2674599))

(declare-fun m!3041047 () Bool)

(assert (=> d!764695 m!3041047))

(assert (=> d!764695 m!3039899))

(declare-fun m!3041049 () Bool)

(assert (=> d!764695 m!3041049))

(assert (=> d!764695 m!3039899))

(declare-fun m!3041051 () Bool)

(assert (=> d!764695 m!3041051))

(assert (=> d!764695 m!3041051))

(assert (=> d!764695 m!3039719))

(declare-fun m!3041053 () Bool)

(assert (=> d!764695 m!3041053))

(assert (=> d!764695 m!3039719))

(assert (=> b!2674597 m!3039899))

(assert (=> b!2674597 m!3041049))

(assert (=> b!2674599 m!3039899))

(declare-fun m!3041055 () Bool)

(assert (=> b!2674599 m!3041055))

(declare-fun m!3041057 () Bool)

(assert (=> b!2674599 m!3041057))

(assert (=> b!2674599 m!3039899))

(declare-fun m!3041059 () Bool)

(assert (=> b!2674599 m!3041059))

(declare-fun m!3041061 () Bool)

(assert (=> b!2674599 m!3041061))

(assert (=> b!2674599 m!3041055))

(declare-fun m!3041063 () Bool)

(assert (=> b!2674599 m!3041063))

(declare-fun m!3041065 () Bool)

(assert (=> b!2674599 m!3041065))

(assert (=> b!2674599 m!3041057))

(declare-fun m!3041067 () Bool)

(assert (=> b!2674599 m!3041067))

(declare-fun m!3041069 () Bool)

(assert (=> b!2674599 m!3041069))

(declare-fun m!3041071 () Bool)

(assert (=> b!2674599 m!3041071))

(declare-fun m!3041073 () Bool)

(assert (=> b!2674599 m!3041073))

(assert (=> b!2674599 m!3039899))

(assert (=> b!2674599 m!3041037))

(declare-fun m!3041075 () Bool)

(assert (=> b!2674599 m!3041075))

(assert (=> b!2674599 m!3041063))

(assert (=> b!2674599 m!3041059))

(assert (=> b!2674599 m!3041065))

(declare-fun m!3041077 () Bool)

(assert (=> b!2674599 m!3041077))

(assert (=> b!2673891 d!764695))

(declare-fun d!764697 () Bool)

(assert (=> d!764697 (isDefined!4838 (maxPrefix!2336 thiss!14116 rules!1712 (++!7507 call!172544 lt!941496)))))

(declare-fun lt!941811 () Unit!44983)

(declare-fun e!1685933 () Unit!44983)

(assert (=> d!764697 (= lt!941811 e!1685933)))

(declare-fun c!430996 () Bool)

(assert (=> d!764697 (= c!430996 (isEmpty!17605 (maxPrefix!2336 thiss!14116 rules!1712 (++!7507 call!172544 lt!941496))))))

(declare-fun lt!941818 () Unit!44983)

(declare-fun lt!941816 () Unit!44983)

(assert (=> d!764697 (= lt!941818 lt!941816)))

(declare-fun e!1685932 () Bool)

(assert (=> d!764697 e!1685932))

(declare-fun res!1124527 () Bool)

(assert (=> d!764697 (=> (not res!1124527) (not e!1685932))))

(declare-fun lt!941809 () Token!8872)

(declare-datatypes ((Option!6092 0))(
  ( (None!6091) (Some!6091 (v!32642 Rule!9202)) )
))
(declare-fun isDefined!4840 (Option!6092) Bool)

(declare-fun getRuleFromTag!835 (LexerInterface!4298 List!30879 String!34499) Option!6092)

(assert (=> d!764697 (= res!1124527 (isDefined!4840 (getRuleFromTag!835 thiss!14116 rules!1712 (tag!5203 (rule!7107 lt!941809)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!835 (LexerInterface!4298 List!30879 List!30878 Token!8872) Unit!44983)

(assert (=> d!764697 (= lt!941816 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!835 thiss!14116 rules!1712 call!172544 lt!941809))))

(declare-fun lt!941815 () Unit!44983)

(declare-fun lt!941817 () Unit!44983)

(assert (=> d!764697 (= lt!941815 lt!941817)))

(declare-fun lt!941823 () List!30878)

(assert (=> d!764697 (isPrefix!2455 lt!941823 (++!7507 call!172544 lt!941496))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!403 (List!30878 List!30878 List!30878) Unit!44983)

(assert (=> d!764697 (= lt!941817 (lemmaPrefixStaysPrefixWhenAddingToSuffix!403 lt!941823 call!172544 lt!941496))))

(assert (=> d!764697 (= lt!941823 (list!11619 (charsOf!2964 lt!941809)))))

(declare-fun lt!941808 () Unit!44983)

(declare-fun lt!941821 () Unit!44983)

(assert (=> d!764697 (= lt!941808 lt!941821)))

(declare-fun lt!941824 () List!30878)

(declare-fun lt!941812 () List!30878)

(assert (=> d!764697 (isPrefix!2455 lt!941824 (++!7507 lt!941824 lt!941812))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1622 (List!30878 List!30878) Unit!44983)

(assert (=> d!764697 (= lt!941821 (lemmaConcatTwoListThenFirstIsPrefix!1622 lt!941824 lt!941812))))

(assert (=> d!764697 (= lt!941812 (_2!17655 (get!9672 (maxPrefix!2336 thiss!14116 rules!1712 call!172544))))))

(assert (=> d!764697 (= lt!941824 (list!11619 (charsOf!2964 lt!941809)))))

(assert (=> d!764697 (= lt!941809 (head!6077 (list!11622 (_1!17656 (lex!1932 thiss!14116 rules!1712 (seqFromList!3203 call!172544))))))))

(assert (=> d!764697 (not (isEmpty!17599 rules!1712))))

(assert (=> d!764697 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!819 thiss!14116 rules!1712 call!172544 lt!941496) lt!941811)))

(declare-fun b!2674660 () Bool)

(declare-fun Unit!44995 () Unit!44983)

(assert (=> b!2674660 (= e!1685933 Unit!44995)))

(declare-fun b!2674659 () Bool)

(declare-fun Unit!44996 () Unit!44983)

(assert (=> b!2674659 (= e!1685933 Unit!44996)))

(declare-fun lt!941822 () List!30878)

(assert (=> b!2674659 (= lt!941822 (++!7507 call!172544 lt!941496))))

(declare-fun lt!941810 () Unit!44983)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!439 (LexerInterface!4298 Rule!9202 List!30879 List!30878) Unit!44983)

(assert (=> b!2674659 (= lt!941810 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!439 thiss!14116 (rule!7107 lt!941809) rules!1712 lt!941822))))

(assert (=> b!2674659 (isEmpty!17605 (maxPrefixOneRule!1484 thiss!14116 (rule!7107 lt!941809) lt!941822))))

(declare-fun lt!941813 () Unit!44983)

(assert (=> b!2674659 (= lt!941813 lt!941810)))

(declare-fun lt!941819 () List!30878)

(assert (=> b!2674659 (= lt!941819 (list!11619 (charsOf!2964 lt!941809)))))

(declare-fun lt!941820 () Unit!44983)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!427 (LexerInterface!4298 Rule!9202 List!30878 List!30878) Unit!44983)

(assert (=> b!2674659 (= lt!941820 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!427 thiss!14116 (rule!7107 lt!941809) lt!941819 (++!7507 call!172544 lt!941496)))))

(assert (=> b!2674659 (not (matchR!3626 (regex!4701 (rule!7107 lt!941809)) lt!941819))))

(declare-fun lt!941814 () Unit!44983)

(assert (=> b!2674659 (= lt!941814 lt!941820)))

(assert (=> b!2674659 false))

(declare-fun b!2674658 () Bool)

(declare-fun get!9674 (Option!6092) Rule!9202)

(assert (=> b!2674658 (= e!1685932 (= (rule!7107 lt!941809) (get!9674 (getRuleFromTag!835 thiss!14116 rules!1712 (tag!5203 (rule!7107 lt!941809))))))))

(declare-fun b!2674657 () Bool)

(declare-fun res!1124528 () Bool)

(assert (=> b!2674657 (=> (not res!1124528) (not e!1685932))))

(assert (=> b!2674657 (= res!1124528 (matchR!3626 (regex!4701 (get!9674 (getRuleFromTag!835 thiss!14116 rules!1712 (tag!5203 (rule!7107 lt!941809))))) (list!11619 (charsOf!2964 lt!941809))))))

(assert (= (and d!764697 res!1124527) b!2674657))

(assert (= (and b!2674657 res!1124528) b!2674658))

(assert (= (and d!764697 c!430996) b!2674659))

(assert (= (and d!764697 (not c!430996)) b!2674660))

(declare-fun m!3041181 () Bool)

(assert (=> d!764697 m!3041181))

(declare-fun m!3041183 () Bool)

(assert (=> d!764697 m!3041183))

(assert (=> d!764697 m!3041181))

(declare-fun m!3041185 () Bool)

(assert (=> d!764697 m!3041185))

(declare-fun m!3041187 () Bool)

(assert (=> d!764697 m!3041187))

(assert (=> d!764697 m!3039463))

(declare-fun m!3041189 () Bool)

(assert (=> d!764697 m!3041189))

(declare-fun m!3041191 () Bool)

(assert (=> d!764697 m!3041191))

(declare-fun m!3041193 () Bool)

(assert (=> d!764697 m!3041193))

(declare-fun m!3041195 () Bool)

(assert (=> d!764697 m!3041195))

(declare-fun m!3041197 () Bool)

(assert (=> d!764697 m!3041197))

(declare-fun m!3041199 () Bool)

(assert (=> d!764697 m!3041199))

(declare-fun m!3041201 () Bool)

(assert (=> d!764697 m!3041201))

(declare-fun m!3041203 () Bool)

(assert (=> d!764697 m!3041203))

(declare-fun m!3041205 () Bool)

(assert (=> d!764697 m!3041205))

(declare-fun m!3041207 () Bool)

(assert (=> d!764697 m!3041207))

(assert (=> d!764697 m!3041185))

(assert (=> d!764697 m!3041205))

(assert (=> d!764697 m!3041205))

(assert (=> d!764697 m!3041189))

(assert (=> d!764697 m!3041197))

(assert (=> d!764697 m!3041195))

(declare-fun m!3041209 () Bool)

(assert (=> d!764697 m!3041209))

(assert (=> d!764697 m!3041203))

(declare-fun m!3041211 () Bool)

(assert (=> d!764697 m!3041211))

(declare-fun m!3041213 () Bool)

(assert (=> d!764697 m!3041213))

(assert (=> d!764697 m!3041213))

(declare-fun m!3041215 () Bool)

(assert (=> d!764697 m!3041215))

(assert (=> d!764697 m!3041189))

(declare-fun m!3041217 () Bool)

(assert (=> d!764697 m!3041217))

(declare-fun m!3041219 () Bool)

(assert (=> d!764697 m!3041219))

(assert (=> b!2674659 m!3041205))

(declare-fun m!3041221 () Bool)

(assert (=> b!2674659 m!3041221))

(assert (=> b!2674659 m!3041181))

(assert (=> b!2674659 m!3041183))

(assert (=> b!2674659 m!3041181))

(declare-fun m!3041223 () Bool)

(assert (=> b!2674659 m!3041223))

(declare-fun m!3041225 () Bool)

(assert (=> b!2674659 m!3041225))

(assert (=> b!2674659 m!3041223))

(assert (=> b!2674659 m!3041205))

(declare-fun m!3041227 () Bool)

(assert (=> b!2674659 m!3041227))

(declare-fun m!3041229 () Bool)

(assert (=> b!2674659 m!3041229))

(assert (=> b!2674658 m!3041213))

(assert (=> b!2674658 m!3041213))

(declare-fun m!3041231 () Bool)

(assert (=> b!2674658 m!3041231))

(assert (=> b!2674657 m!3041181))

(assert (=> b!2674657 m!3041183))

(assert (=> b!2674657 m!3041181))

(assert (=> b!2674657 m!3041183))

(declare-fun m!3041233 () Bool)

(assert (=> b!2674657 m!3041233))

(assert (=> b!2674657 m!3041213))

(assert (=> b!2674657 m!3041213))

(assert (=> b!2674657 m!3041231))

(assert (=> b!2673891 d!764697))

(assert (=> b!2673762 d!764453))

(declare-fun d!764737 () Bool)

(declare-fun dynLambda!13367 (Int BalanceConc!18878) TokenValue!4923)

(assert (=> d!764737 (= (apply!7378 (transformation!4701 (rule!7107 (_1!17655 (get!9672 lt!941455)))) (seqFromList!3203 (originalCharacters!5467 (_1!17655 (get!9672 lt!941455))))) (dynLambda!13367 (toValue!6643 (transformation!4701 (rule!7107 (_1!17655 (get!9672 lt!941455))))) (seqFromList!3203 (originalCharacters!5467 (_1!17655 (get!9672 lt!941455))))))))

(declare-fun b_lambda!81545 () Bool)

(assert (=> (not b_lambda!81545) (not d!764737)))

(declare-fun tb!149939 () Bool)

(declare-fun t!223654 () Bool)

(assert (=> (and b!2673519 (= (toValue!6643 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (toValue!6643 (transformation!4701 (rule!7107 (_1!17655 (get!9672 lt!941455)))))) t!223654) tb!149939))

(declare-fun result!185202 () Bool)

(assert (=> tb!149939 (= result!185202 (inv!21 (dynLambda!13367 (toValue!6643 (transformation!4701 (rule!7107 (_1!17655 (get!9672 lt!941455))))) (seqFromList!3203 (originalCharacters!5467 (_1!17655 (get!9672 lt!941455)))))))))

(declare-fun m!3041245 () Bool)

(assert (=> tb!149939 m!3041245))

(assert (=> d!764737 t!223654))

(declare-fun b_and!197699 () Bool)

(assert (= b_and!197529 (and (=> t!223654 result!185202) b_and!197699)))

(declare-fun tb!149941 () Bool)

(declare-fun t!223656 () Bool)

(assert (=> (and b!2673993 (= (toValue!6643 (transformation!4701 (h!36199 (t!223504 rules!1712)))) (toValue!6643 (transformation!4701 (rule!7107 (_1!17655 (get!9672 lt!941455)))))) t!223656) tb!149941))

(declare-fun result!185206 () Bool)

(assert (= result!185206 result!185202))

(assert (=> d!764737 t!223656))

(declare-fun b_and!197701 () Bool)

(assert (= b_and!197585 (and (=> t!223656 result!185206) b_and!197701)))

(declare-fun tb!149943 () Bool)

(declare-fun t!223658 () Bool)

(assert (=> (and b!2673522 (= (toValue!6643 (transformation!4701 (h!36199 rules!1712))) (toValue!6643 (transformation!4701 (rule!7107 (_1!17655 (get!9672 lt!941455)))))) t!223658) tb!149943))

(declare-fun result!185208 () Bool)

(assert (= result!185208 result!185202))

(assert (=> d!764737 t!223658))

(declare-fun b_and!197703 () Bool)

(assert (= b_and!197525 (and (=> t!223658 result!185208) b_and!197703)))

(declare-fun tb!149945 () Bool)

(declare-fun t!223660 () Bool)

(assert (=> (and b!2673951 (= (toValue!6643 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))) (toValue!6643 (transformation!4701 (rule!7107 (_1!17655 (get!9672 lt!941455)))))) t!223660) tb!149945))

(declare-fun result!185210 () Bool)

(assert (= result!185210 result!185202))

(assert (=> d!764737 t!223660))

(declare-fun b_and!197705 () Bool)

(assert (= b_and!197581 (and (=> t!223660 result!185210) b_and!197705)))

(declare-fun tb!149947 () Bool)

(declare-fun t!223662 () Bool)

(assert (=> (and b!2673517 (= (toValue!6643 (transformation!4701 (rule!7107 separatorToken!152))) (toValue!6643 (transformation!4701 (rule!7107 (_1!17655 (get!9672 lt!941455)))))) t!223662) tb!149947))

(declare-fun result!185212 () Bool)

(assert (= result!185212 result!185202))

(assert (=> d!764737 t!223662))

(declare-fun b_and!197707 () Bool)

(assert (= b_and!197533 (and (=> t!223662 result!185212) b_and!197707)))

(assert (=> d!764737 m!3039775))

(declare-fun m!3041247 () Bool)

(assert (=> d!764737 m!3041247))

(assert (=> b!2673762 d!764737))

(declare-fun d!764745 () Bool)

(declare-fun fromListB!1446 (List!30878) BalanceConc!18878)

(assert (=> d!764745 (= (seqFromList!3203 (originalCharacters!5467 (_1!17655 (get!9672 lt!941455)))) (fromListB!1446 (originalCharacters!5467 (_1!17655 (get!9672 lt!941455)))))))

(declare-fun bs!479698 () Bool)

(assert (= bs!479698 d!764745))

(declare-fun m!3041255 () Bool)

(assert (=> bs!479698 m!3041255))

(assert (=> b!2673762 d!764745))

(declare-fun d!764751 () Bool)

(assert (=> d!764751 (dynLambda!13362 lambda!99878 (h!36200 l!4335))))

(assert (=> d!764751 true))

(declare-fun _$7!985 () Unit!44983)

(assert (=> d!764751 (= (choose!15839 l!4335 lambda!99878 (h!36200 l!4335)) _$7!985)))

(declare-fun b_lambda!81549 () Bool)

(assert (=> (not b_lambda!81549) (not d!764751)))

(declare-fun bs!479699 () Bool)

(assert (= bs!479699 d!764751))

(assert (=> bs!479699 m!3039801))

(assert (=> d!764341 d!764751))

(declare-fun d!764755 () Bool)

(declare-fun res!1124539 () Bool)

(declare-fun e!1685951 () Bool)

(assert (=> d!764755 (=> res!1124539 e!1685951)))

(assert (=> d!764755 (= res!1124539 ((_ is Nil!30780) l!4335))))

(assert (=> d!764755 (= (forall!6516 l!4335 lambda!99878) e!1685951)))

(declare-fun b!2674679 () Bool)

(declare-fun e!1685952 () Bool)

(assert (=> b!2674679 (= e!1685951 e!1685952)))

(declare-fun res!1124540 () Bool)

(assert (=> b!2674679 (=> (not res!1124540) (not e!1685952))))

(assert (=> b!2674679 (= res!1124540 (dynLambda!13362 lambda!99878 (h!36200 l!4335)))))

(declare-fun b!2674680 () Bool)

(assert (=> b!2674680 (= e!1685952 (forall!6516 (t!223505 l!4335) lambda!99878))))

(assert (= (and d!764755 (not res!1124539)) b!2674679))

(assert (= (and b!2674679 res!1124540) b!2674680))

(declare-fun b_lambda!81551 () Bool)

(assert (=> (not b_lambda!81551) (not b!2674679)))

(assert (=> b!2674679 m!3039801))

(declare-fun m!3041269 () Bool)

(assert (=> b!2674680 m!3041269))

(assert (=> d!764341 d!764755))

(declare-fun d!764761 () Bool)

(assert (=> d!764761 (= (list!11619 call!172543) (list!11623 (c!430759 call!172543)))))

(declare-fun bs!479702 () Bool)

(assert (= bs!479702 d!764761))

(declare-fun m!3041271 () Bool)

(assert (=> bs!479702 m!3041271))

(assert (=> b!2673889 d!764761))

(declare-fun b!2674681 () Bool)

(declare-fun e!1685953 () Bool)

(declare-fun e!1685954 () Bool)

(assert (=> b!2674681 (= e!1685953 e!1685954)))

(declare-fun res!1124543 () Bool)

(assert (=> b!2674681 (=> (not res!1124543) (not e!1685954))))

(declare-fun lt!941835 () Option!6090)

(assert (=> b!2674681 (= res!1124543 (isDefined!4838 lt!941835))))

(declare-fun b!2674682 () Bool)

(declare-fun res!1124542 () Bool)

(assert (=> b!2674682 (=> (not res!1124542) (not e!1685954))))

(assert (=> b!2674682 (= res!1124542 (matchR!3626 (regex!4701 (rule!7107 (_1!17655 (get!9672 lt!941835)))) (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941835))))))))

(declare-fun b!2674683 () Bool)

(declare-fun res!1124547 () Bool)

(assert (=> b!2674683 (=> (not res!1124547) (not e!1685954))))

(assert (=> b!2674683 (= res!1124547 (= (++!7507 (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941835)))) (_2!17655 (get!9672 lt!941835))) (++!7507 lt!941339 lt!941340)))))

(declare-fun b!2674684 () Bool)

(declare-fun res!1124546 () Bool)

(assert (=> b!2674684 (=> (not res!1124546) (not e!1685954))))

(assert (=> b!2674684 (= res!1124546 (< (size!23785 (_2!17655 (get!9672 lt!941835))) (size!23785 (++!7507 lt!941339 lt!941340))))))

(declare-fun b!2674685 () Bool)

(declare-fun e!1685955 () Option!6090)

(declare-fun call!172579 () Option!6090)

(assert (=> b!2674685 (= e!1685955 call!172579)))

(declare-fun b!2674686 () Bool)

(declare-fun lt!941834 () Option!6090)

(declare-fun lt!941833 () Option!6090)

(assert (=> b!2674686 (= e!1685955 (ite (and ((_ is None!6089) lt!941834) ((_ is None!6089) lt!941833)) None!6089 (ite ((_ is None!6089) lt!941833) lt!941834 (ite ((_ is None!6089) lt!941834) lt!941833 (ite (>= (size!23781 (_1!17655 (v!32632 lt!941834))) (size!23781 (_1!17655 (v!32632 lt!941833)))) lt!941834 lt!941833)))))))

(assert (=> b!2674686 (= lt!941834 call!172579)))

(assert (=> b!2674686 (= lt!941833 (maxPrefix!2336 thiss!14116 (t!223504 (t!223504 rules!1712)) (++!7507 lt!941339 lt!941340)))))

(declare-fun b!2674687 () Bool)

(declare-fun res!1124544 () Bool)

(assert (=> b!2674687 (=> (not res!1124544) (not e!1685954))))

(assert (=> b!2674687 (= res!1124544 (= (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941835)))) (originalCharacters!5467 (_1!17655 (get!9672 lt!941835)))))))

(declare-fun b!2674688 () Bool)

(declare-fun res!1124545 () Bool)

(assert (=> b!2674688 (=> (not res!1124545) (not e!1685954))))

(assert (=> b!2674688 (= res!1124545 (= (value!151583 (_1!17655 (get!9672 lt!941835))) (apply!7378 (transformation!4701 (rule!7107 (_1!17655 (get!9672 lt!941835)))) (seqFromList!3203 (originalCharacters!5467 (_1!17655 (get!9672 lt!941835)))))))))

(declare-fun b!2674689 () Bool)

(assert (=> b!2674689 (= e!1685954 (contains!5917 (t!223504 rules!1712) (rule!7107 (_1!17655 (get!9672 lt!941835)))))))

(declare-fun d!764763 () Bool)

(assert (=> d!764763 e!1685953))

(declare-fun res!1124541 () Bool)

(assert (=> d!764763 (=> res!1124541 e!1685953)))

(assert (=> d!764763 (= res!1124541 (isEmpty!17605 lt!941835))))

(assert (=> d!764763 (= lt!941835 e!1685955)))

(declare-fun c!430998 () Bool)

(assert (=> d!764763 (= c!430998 (and ((_ is Cons!30779) (t!223504 rules!1712)) ((_ is Nil!30779) (t!223504 (t!223504 rules!1712)))))))

(declare-fun lt!941831 () Unit!44983)

(declare-fun lt!941832 () Unit!44983)

(assert (=> d!764763 (= lt!941831 lt!941832)))

(assert (=> d!764763 (isPrefix!2455 (++!7507 lt!941339 lt!941340) (++!7507 lt!941339 lt!941340))))

(assert (=> d!764763 (= lt!941832 (lemmaIsPrefixRefl!1581 (++!7507 lt!941339 lt!941340) (++!7507 lt!941339 lt!941340)))))

(assert (=> d!764763 (rulesValidInductive!1635 thiss!14116 (t!223504 rules!1712))))

(assert (=> d!764763 (= (maxPrefix!2336 thiss!14116 (t!223504 rules!1712) (++!7507 lt!941339 lt!941340)) lt!941835)))

(declare-fun bm!172574 () Bool)

(assert (=> bm!172574 (= call!172579 (maxPrefixOneRule!1484 thiss!14116 (h!36199 (t!223504 rules!1712)) (++!7507 lt!941339 lt!941340)))))

(assert (= (and d!764763 c!430998) b!2674685))

(assert (= (and d!764763 (not c!430998)) b!2674686))

(assert (= (or b!2674685 b!2674686) bm!172574))

(assert (= (and d!764763 (not res!1124541)) b!2674681))

(assert (= (and b!2674681 res!1124543) b!2674687))

(assert (= (and b!2674687 res!1124544) b!2674684))

(assert (= (and b!2674684 res!1124546) b!2674683))

(assert (= (and b!2674683 res!1124547) b!2674688))

(assert (= (and b!2674688 res!1124545) b!2674682))

(assert (= (and b!2674682 res!1124542) b!2674689))

(declare-fun m!3041273 () Bool)

(assert (=> d!764763 m!3041273))

(assert (=> d!764763 m!3039457))

(assert (=> d!764763 m!3039457))

(assert (=> d!764763 m!3039767))

(assert (=> d!764763 m!3039457))

(assert (=> d!764763 m!3039457))

(assert (=> d!764763 m!3039769))

(assert (=> d!764763 m!3040749))

(declare-fun m!3041275 () Bool)

(assert (=> b!2674688 m!3041275))

(declare-fun m!3041277 () Bool)

(assert (=> b!2674688 m!3041277))

(assert (=> b!2674688 m!3041277))

(declare-fun m!3041279 () Bool)

(assert (=> b!2674688 m!3041279))

(assert (=> bm!172574 m!3039457))

(declare-fun m!3041281 () Bool)

(assert (=> bm!172574 m!3041281))

(assert (=> b!2674684 m!3041275))

(declare-fun m!3041283 () Bool)

(assert (=> b!2674684 m!3041283))

(assert (=> b!2674684 m!3039457))

(assert (=> b!2674684 m!3039783))

(assert (=> b!2674689 m!3041275))

(declare-fun m!3041285 () Bool)

(assert (=> b!2674689 m!3041285))

(assert (=> b!2674683 m!3041275))

(declare-fun m!3041287 () Bool)

(assert (=> b!2674683 m!3041287))

(assert (=> b!2674683 m!3041287))

(declare-fun m!3041289 () Bool)

(assert (=> b!2674683 m!3041289))

(assert (=> b!2674683 m!3041289))

(declare-fun m!3041291 () Bool)

(assert (=> b!2674683 m!3041291))

(assert (=> b!2674687 m!3041275))

(assert (=> b!2674687 m!3041287))

(assert (=> b!2674687 m!3041287))

(assert (=> b!2674687 m!3041289))

(declare-fun m!3041293 () Bool)

(assert (=> b!2674681 m!3041293))

(assert (=> b!2674682 m!3041275))

(assert (=> b!2674682 m!3041287))

(assert (=> b!2674682 m!3041287))

(assert (=> b!2674682 m!3041289))

(assert (=> b!2674682 m!3041289))

(declare-fun m!3041295 () Bool)

(assert (=> b!2674682 m!3041295))

(assert (=> b!2674686 m!3039457))

(declare-fun m!3041297 () Bool)

(assert (=> b!2674686 m!3041297))

(assert (=> b!2673760 d!764763))

(declare-fun d!764765 () Bool)

(declare-fun lt!941836 () Bool)

(assert (=> d!764765 (= lt!941836 (select (content!4368 (t!223505 l!4335)) (h!36200 l!4335)))))

(declare-fun e!1685957 () Bool)

(assert (=> d!764765 (= lt!941836 e!1685957)))

(declare-fun res!1124548 () Bool)

(assert (=> d!764765 (=> (not res!1124548) (not e!1685957))))

(assert (=> d!764765 (= res!1124548 ((_ is Cons!30780) (t!223505 l!4335)))))

(assert (=> d!764765 (= (contains!5915 (t!223505 l!4335) (h!36200 l!4335)) lt!941836)))

(declare-fun b!2674690 () Bool)

(declare-fun e!1685956 () Bool)

(assert (=> b!2674690 (= e!1685957 e!1685956)))

(declare-fun res!1124549 () Bool)

(assert (=> b!2674690 (=> res!1124549 e!1685956)))

(assert (=> b!2674690 (= res!1124549 (= (h!36200 (t!223505 l!4335)) (h!36200 l!4335)))))

(declare-fun b!2674691 () Bool)

(assert (=> b!2674691 (= e!1685956 (contains!5915 (t!223505 (t!223505 l!4335)) (h!36200 l!4335)))))

(assert (= (and d!764765 res!1124548) b!2674690))

(assert (= (and b!2674690 (not res!1124549)) b!2674691))

(assert (=> d!764765 m!3041011))

(declare-fun m!3041299 () Bool)

(assert (=> d!764765 m!3041299))

(declare-fun m!3041301 () Bool)

(assert (=> b!2674691 m!3041301))

(assert (=> b!2673712 d!764765))

(declare-fun d!764767 () Bool)

(declare-fun c!430999 () Bool)

(assert (=> d!764767 (= c!430999 ((_ is Node!9632) (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (value!151583 (h!36200 l!4335))))))))

(declare-fun e!1685958 () Bool)

(assert (=> d!764767 (= (inv!41789 (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (value!151583 (h!36200 l!4335))))) e!1685958)))

(declare-fun b!2674692 () Bool)

(assert (=> b!2674692 (= e!1685958 (inv!41791 (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (value!151583 (h!36200 l!4335))))))))

(declare-fun b!2674693 () Bool)

(declare-fun e!1685959 () Bool)

(assert (=> b!2674693 (= e!1685958 e!1685959)))

(declare-fun res!1124550 () Bool)

(assert (=> b!2674693 (= res!1124550 (not ((_ is Leaf!14723) (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (value!151583 (h!36200 l!4335)))))))))

(assert (=> b!2674693 (=> res!1124550 e!1685959)))

(declare-fun b!2674694 () Bool)

(assert (=> b!2674694 (= e!1685959 (inv!41792 (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (value!151583 (h!36200 l!4335))))))))

(assert (= (and d!764767 c!430999) b!2674692))

(assert (= (and d!764767 (not c!430999)) b!2674693))

(assert (= (and b!2674693 (not res!1124550)) b!2674694))

(declare-fun m!3041303 () Bool)

(assert (=> b!2674692 m!3041303))

(declare-fun m!3041305 () Bool)

(assert (=> b!2674694 m!3041305))

(assert (=> b!2673676 d!764767))

(assert (=> b!2673766 d!764317))

(declare-fun d!764769 () Bool)

(assert (=> d!764769 (= (inv!41790 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (value!151583 separatorToken!152))) (isBalanced!2916 (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (value!151583 separatorToken!152)))))))

(declare-fun bs!479703 () Bool)

(assert (= bs!479703 d!764769))

(declare-fun m!3041307 () Bool)

(assert (=> bs!479703 m!3041307))

(assert (=> tb!149835 d!764769))

(declare-fun d!764771 () Bool)

(declare-fun charsToBigInt!1 (List!30877) Int)

(assert (=> d!764771 (= (inv!17 (value!151583 (h!36200 l!4335))) (= (charsToBigInt!1 (text!34909 (value!151583 (h!36200 l!4335)))) (value!151575 (value!151583 (h!36200 l!4335)))))))

(declare-fun bs!479704 () Bool)

(assert (= bs!479704 d!764771))

(declare-fun m!3041309 () Bool)

(assert (=> bs!479704 m!3041309))

(assert (=> b!2673705 d!764771))

(declare-fun d!764773 () Bool)

(assert (=> d!764773 (= (list!11619 lt!941440) (list!11623 (c!430759 lt!941440)))))

(declare-fun bs!479705 () Bool)

(assert (= bs!479705 d!764773))

(declare-fun m!3041311 () Bool)

(assert (=> bs!479705 m!3041311))

(assert (=> d!764335 d!764773))

(declare-fun bs!479706 () Bool)

(declare-fun d!764775 () Bool)

(assert (= bs!479706 (and d!764775 d!764485)))

(declare-fun lambda!99920 () Int)

(assert (=> bs!479706 (= (and (= (toChars!6502 (transformation!4701 (h!36199 rules!1712))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335))))) (= (toValue!6643 (transformation!4701 (h!36199 rules!1712))) (toValue!6643 (transformation!4701 (rule!7107 (h!36200 l!4335)))))) (= lambda!99920 lambda!99894))))

(assert (=> d!764775 true))

(assert (=> d!764775 (< (dynLambda!13358 order!16959 (toChars!6502 (transformation!4701 (h!36199 rules!1712)))) (dynLambda!13363 order!16961 lambda!99920))))

(assert (=> d!764775 true))

(assert (=> d!764775 (< (dynLambda!13356 order!16955 (toValue!6643 (transformation!4701 (h!36199 rules!1712)))) (dynLambda!13363 order!16961 lambda!99920))))

(assert (=> d!764775 (= (semiInverseModEq!1946 (toChars!6502 (transformation!4701 (h!36199 rules!1712))) (toValue!6643 (transformation!4701 (h!36199 rules!1712)))) (Forall!1193 lambda!99920))))

(declare-fun bs!479707 () Bool)

(assert (= bs!479707 d!764775))

(declare-fun m!3041337 () Bool)

(assert (=> bs!479707 m!3041337))

(assert (=> d!764363 d!764775))

(assert (=> d!764261 d!764587))

(assert (=> d!764261 d!764527))

(assert (=> d!764261 d!764589))

(declare-fun d!764779 () Bool)

(declare-fun lt!941852 () Int)

(assert (=> d!764779 (= lt!941852 (size!23786 (list!11622 (_1!17656 lt!941388))))))

(assert (=> d!764779 (= lt!941852 (size!23789 (c!430761 (_1!17656 lt!941388))))))

(assert (=> d!764779 (= (size!23784 (_1!17656 lt!941388)) lt!941852)))

(declare-fun bs!479708 () Bool)

(assert (= bs!479708 d!764779))

(assert (=> bs!479708 m!3040245))

(assert (=> bs!479708 m!3040245))

(declare-fun m!3041339 () Bool)

(assert (=> bs!479708 m!3041339))

(declare-fun m!3041341 () Bool)

(assert (=> bs!479708 m!3041341))

(assert (=> d!764261 d!764779))

(declare-fun d!764781 () Bool)

(assert (=> d!764781 (= (list!11622 (_1!17656 (lex!1932 thiss!14116 rules!1712 (print!1677 thiss!14116 (singletonSeq!2098 separatorToken!152))))) (list!11624 (c!430761 (_1!17656 (lex!1932 thiss!14116 rules!1712 (print!1677 thiss!14116 (singletonSeq!2098 separatorToken!152)))))))))

(declare-fun bs!479709 () Bool)

(assert (= bs!479709 d!764781))

(declare-fun m!3041343 () Bool)

(assert (=> bs!479709 m!3041343))

(assert (=> d!764261 d!764781))

(assert (=> d!764261 d!764303))

(declare-fun d!764783 () Bool)

(assert (=> d!764783 (= (list!11622 (singletonSeq!2098 separatorToken!152)) (list!11624 (c!430761 (singletonSeq!2098 separatorToken!152))))))

(declare-fun bs!479710 () Bool)

(assert (= bs!479710 d!764783))

(declare-fun m!3041345 () Bool)

(assert (=> bs!479710 m!3041345))

(assert (=> d!764261 d!764783))

(declare-fun d!764785 () Bool)

(declare-fun c!431003 () Bool)

(assert (=> d!764785 (= c!431003 ((_ is IntegerValue!14769) (value!151583 (h!36200 (t!223505 l!4335)))))))

(declare-fun e!1685963 () Bool)

(assert (=> d!764785 (= (inv!21 (value!151583 (h!36200 (t!223505 l!4335)))) e!1685963)))

(declare-fun b!2674701 () Bool)

(declare-fun e!1685965 () Bool)

(assert (=> b!2674701 (= e!1685965 (inv!15 (value!151583 (h!36200 (t!223505 l!4335)))))))

(declare-fun b!2674702 () Bool)

(declare-fun res!1124551 () Bool)

(assert (=> b!2674702 (=> res!1124551 e!1685965)))

(assert (=> b!2674702 (= res!1124551 (not ((_ is IntegerValue!14771) (value!151583 (h!36200 (t!223505 l!4335))))))))

(declare-fun e!1685964 () Bool)

(assert (=> b!2674702 (= e!1685964 e!1685965)))

(declare-fun b!2674703 () Bool)

(assert (=> b!2674703 (= e!1685963 (inv!16 (value!151583 (h!36200 (t!223505 l!4335)))))))

(declare-fun b!2674704 () Bool)

(assert (=> b!2674704 (= e!1685964 (inv!17 (value!151583 (h!36200 (t!223505 l!4335)))))))

(declare-fun b!2674705 () Bool)

(assert (=> b!2674705 (= e!1685963 e!1685964)))

(declare-fun c!431004 () Bool)

(assert (=> b!2674705 (= c!431004 ((_ is IntegerValue!14770) (value!151583 (h!36200 (t!223505 l!4335)))))))

(assert (= (and d!764785 c!431003) b!2674703))

(assert (= (and d!764785 (not c!431003)) b!2674705))

(assert (= (and b!2674705 c!431004) b!2674704))

(assert (= (and b!2674705 (not c!431004)) b!2674702))

(assert (= (and b!2674702 (not res!1124551)) b!2674701))

(declare-fun m!3041347 () Bool)

(assert (=> b!2674701 m!3041347))

(declare-fun m!3041349 () Bool)

(assert (=> b!2674703 m!3041349))

(declare-fun m!3041351 () Bool)

(assert (=> b!2674704 m!3041351))

(assert (=> b!2673949 d!764785))

(assert (=> bm!172537 d!764639))

(declare-fun d!764787 () Bool)

(declare-fun lt!941853 () Bool)

(assert (=> d!764787 (= lt!941853 (isEmpty!17603 (list!11619 (_2!17656 lt!941388))))))

(assert (=> d!764787 (= lt!941853 (isEmpty!17606 (c!430759 (_2!17656 lt!941388))))))

(assert (=> d!764787 (= (isEmpty!17602 (_2!17656 lt!941388)) lt!941853)))

(declare-fun bs!479711 () Bool)

(assert (= bs!479711 d!764787))

(declare-fun m!3041353 () Bool)

(assert (=> bs!479711 m!3041353))

(assert (=> bs!479711 m!3041353))

(declare-fun m!3041355 () Bool)

(assert (=> bs!479711 m!3041355))

(declare-fun m!3041357 () Bool)

(assert (=> bs!479711 m!3041357))

(assert (=> b!2673643 d!764787))

(declare-fun d!764789 () Bool)

(assert (=> d!764789 (= (inv!41790 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (value!151583 (h!36200 l!4335)))) (isBalanced!2916 (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (value!151583 (h!36200 l!4335))))))))

(declare-fun bs!479713 () Bool)

(assert (= bs!479713 d!764789))

(declare-fun m!3041359 () Bool)

(assert (=> bs!479713 m!3041359))

(assert (=> tb!149821 d!764789))

(declare-fun d!764791 () Bool)

(assert (=> d!764791 (= (list!11619 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (value!151583 separatorToken!152))) (list!11623 (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (value!151583 separatorToken!152)))))))

(declare-fun bs!479714 () Bool)

(assert (= bs!479714 d!764791))

(declare-fun m!3041363 () Bool)

(assert (=> bs!479714 m!3041363))

(assert (=> b!2673929 d!764791))

(declare-fun d!764795 () Bool)

(assert (=> d!764795 (= (inv!41782 (tag!5203 (h!36199 (t!223504 rules!1712)))) (= (mod (str.len (value!151582 (tag!5203 (h!36199 (t!223504 rules!1712))))) 2) 0))))

(assert (=> b!2673992 d!764795))

(declare-fun d!764797 () Bool)

(declare-fun res!1124552 () Bool)

(declare-fun e!1685966 () Bool)

(assert (=> d!764797 (=> (not res!1124552) (not e!1685966))))

(assert (=> d!764797 (= res!1124552 (semiInverseModEq!1946 (toChars!6502 (transformation!4701 (h!36199 (t!223504 rules!1712)))) (toValue!6643 (transformation!4701 (h!36199 (t!223504 rules!1712))))))))

(assert (=> d!764797 (= (inv!41786 (transformation!4701 (h!36199 (t!223504 rules!1712)))) e!1685966)))

(declare-fun b!2674706 () Bool)

(assert (=> b!2674706 (= e!1685966 (equivClasses!1847 (toChars!6502 (transformation!4701 (h!36199 (t!223504 rules!1712)))) (toValue!6643 (transformation!4701 (h!36199 (t!223504 rules!1712))))))))

(assert (= (and d!764797 res!1124552) b!2674706))

(declare-fun m!3041365 () Bool)

(assert (=> d!764797 m!3041365))

(declare-fun m!3041367 () Bool)

(assert (=> b!2674706 m!3041367))

(assert (=> b!2673992 d!764797))

(assert (=> b!2673924 d!764671))

(declare-fun bs!479715 () Bool)

(declare-fun d!764799 () Bool)

(assert (= bs!479715 (and d!764799 d!764485)))

(declare-fun lambda!99921 () Int)

(assert (=> bs!479715 (= (and (= (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335))))) (= (toValue!6643 (transformation!4701 (rule!7107 separatorToken!152))) (toValue!6643 (transformation!4701 (rule!7107 (h!36200 l!4335)))))) (= lambda!99921 lambda!99894))))

(declare-fun bs!479716 () Bool)

(assert (= bs!479716 (and d!764799 d!764775)))

(assert (=> bs!479716 (= (and (= (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (toChars!6502 (transformation!4701 (h!36199 rules!1712)))) (= (toValue!6643 (transformation!4701 (rule!7107 separatorToken!152))) (toValue!6643 (transformation!4701 (h!36199 rules!1712))))) (= lambda!99921 lambda!99920))))

(assert (=> d!764799 true))

(assert (=> d!764799 (< (dynLambda!13358 order!16959 (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152)))) (dynLambda!13363 order!16961 lambda!99921))))

(assert (=> d!764799 true))

(assert (=> d!764799 (< (dynLambda!13356 order!16955 (toValue!6643 (transformation!4701 (rule!7107 separatorToken!152)))) (dynLambda!13363 order!16961 lambda!99921))))

(assert (=> d!764799 (= (semiInverseModEq!1946 (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (toValue!6643 (transformation!4701 (rule!7107 separatorToken!152)))) (Forall!1193 lambda!99921))))

(declare-fun bs!479717 () Bool)

(assert (= bs!479717 d!764799))

(declare-fun m!3041369 () Bool)

(assert (=> bs!479717 m!3041369))

(assert (=> d!764321 d!764799))

(declare-fun d!764801 () Bool)

(assert (=> d!764801 (= (isEmpty!17603 (originalCharacters!5467 separatorToken!152)) ((_ is Nil!30778) (originalCharacters!5467 separatorToken!152)))))

(assert (=> d!764367 d!764801))

(declare-fun b!2674719 () Bool)

(declare-fun res!1124566 () Bool)

(declare-fun e!1685972 () Bool)

(assert (=> b!2674719 (=> (not res!1124566) (not e!1685972))))

(assert (=> b!2674719 (= res!1124566 (isBalanced!2915 (left!23823 (c!430761 lt!941416))))))

(declare-fun b!2674720 () Bool)

(declare-fun res!1124570 () Bool)

(assert (=> b!2674720 (=> (not res!1124570) (not e!1685972))))

(declare-fun height!1402 (Conc!9633) Int)

(assert (=> b!2674720 (= res!1124570 (<= (- (height!1402 (left!23823 (c!430761 lt!941416))) (height!1402 (right!24153 (c!430761 lt!941416)))) 1))))

(declare-fun b!2674721 () Bool)

(declare-fun res!1124567 () Bool)

(assert (=> b!2674721 (=> (not res!1124567) (not e!1685972))))

(declare-fun isEmpty!17611 (Conc!9633) Bool)

(assert (=> b!2674721 (= res!1124567 (not (isEmpty!17611 (left!23823 (c!430761 lt!941416)))))))

(declare-fun b!2674722 () Bool)

(declare-fun res!1124565 () Bool)

(assert (=> b!2674722 (=> (not res!1124565) (not e!1685972))))

(assert (=> b!2674722 (= res!1124565 (isBalanced!2915 (right!24153 (c!430761 lt!941416))))))

(declare-fun d!764803 () Bool)

(declare-fun res!1124569 () Bool)

(declare-fun e!1685971 () Bool)

(assert (=> d!764803 (=> res!1124569 e!1685971)))

(assert (=> d!764803 (= res!1124569 (not ((_ is Node!9633) (c!430761 lt!941416))))))

(assert (=> d!764803 (= (isBalanced!2915 (c!430761 lt!941416)) e!1685971)))

(declare-fun b!2674723 () Bool)

(assert (=> b!2674723 (= e!1685972 (not (isEmpty!17611 (right!24153 (c!430761 lt!941416)))))))

(declare-fun b!2674724 () Bool)

(assert (=> b!2674724 (= e!1685971 e!1685972)))

(declare-fun res!1124568 () Bool)

(assert (=> b!2674724 (=> (not res!1124568) (not e!1685972))))

(assert (=> b!2674724 (= res!1124568 (<= (- 1) (- (height!1402 (left!23823 (c!430761 lt!941416))) (height!1402 (right!24153 (c!430761 lt!941416))))))))

(assert (= (and d!764803 (not res!1124569)) b!2674724))

(assert (= (and b!2674724 res!1124568) b!2674720))

(assert (= (and b!2674720 res!1124570) b!2674719))

(assert (= (and b!2674719 res!1124566) b!2674722))

(assert (= (and b!2674722 res!1124565) b!2674721))

(assert (= (and b!2674721 res!1124567) b!2674723))

(declare-fun m!3041371 () Bool)

(assert (=> b!2674724 m!3041371))

(declare-fun m!3041373 () Bool)

(assert (=> b!2674724 m!3041373))

(declare-fun m!3041375 () Bool)

(assert (=> b!2674723 m!3041375))

(declare-fun m!3041377 () Bool)

(assert (=> b!2674719 m!3041377))

(declare-fun m!3041379 () Bool)

(assert (=> b!2674721 m!3041379))

(assert (=> b!2674720 m!3041371))

(assert (=> b!2674720 m!3041373))

(declare-fun m!3041381 () Bool)

(assert (=> b!2674722 m!3041381))

(assert (=> b!2673716 d!764803))

(declare-fun b!2674734 () Bool)

(declare-fun e!1685977 () List!30878)

(declare-fun e!1685978 () List!30878)

(assert (=> b!2674734 (= e!1685977 e!1685978)))

(declare-fun c!431010 () Bool)

(assert (=> b!2674734 (= c!431010 ((_ is Leaf!14723) (c!430759 (charsOf!2964 (h!36200 l!4335)))))))

(declare-fun b!2674736 () Bool)

(assert (=> b!2674736 (= e!1685978 (++!7507 (list!11623 (left!23822 (c!430759 (charsOf!2964 (h!36200 l!4335))))) (list!11623 (right!24152 (c!430759 (charsOf!2964 (h!36200 l!4335)))))))))

(declare-fun b!2674733 () Bool)

(assert (=> b!2674733 (= e!1685977 Nil!30778)))

(declare-fun b!2674735 () Bool)

(declare-fun list!11627 (IArray!19269) List!30878)

(assert (=> b!2674735 (= e!1685978 (list!11627 (xs!12662 (c!430759 (charsOf!2964 (h!36200 l!4335))))))))

(declare-fun d!764805 () Bool)

(declare-fun c!431009 () Bool)

(assert (=> d!764805 (= c!431009 ((_ is Empty!9632) (c!430759 (charsOf!2964 (h!36200 l!4335)))))))

(assert (=> d!764805 (= (list!11623 (c!430759 (charsOf!2964 (h!36200 l!4335)))) e!1685977)))

(assert (= (and d!764805 c!431009) b!2674733))

(assert (= (and d!764805 (not c!431009)) b!2674734))

(assert (= (and b!2674734 c!431010) b!2674735))

(assert (= (and b!2674734 (not c!431010)) b!2674736))

(declare-fun m!3041383 () Bool)

(assert (=> b!2674736 m!3041383))

(declare-fun m!3041385 () Bool)

(assert (=> b!2674736 m!3041385))

(assert (=> b!2674736 m!3041383))

(assert (=> b!2674736 m!3041385))

(declare-fun m!3041387 () Bool)

(assert (=> b!2674736 m!3041387))

(declare-fun m!3041389 () Bool)

(assert (=> b!2674735 m!3041389))

(assert (=> d!764339 d!764805))

(declare-fun d!764807 () Bool)

(assert (=> d!764807 (= (inv!17 (value!151583 separatorToken!152)) (= (charsToBigInt!1 (text!34909 (value!151583 separatorToken!152))) (value!151575 (value!151583 separatorToken!152))))))

(declare-fun bs!479718 () Bool)

(assert (= bs!479718 d!764807))

(declare-fun m!3041391 () Bool)

(assert (=> bs!479718 m!3041391))

(assert (=> b!2673735 d!764807))

(declare-fun d!764809 () Bool)

(assert (=> d!764809 (= (list!11619 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (value!151583 (h!36200 l!4335)))) (list!11623 (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (value!151583 (h!36200 l!4335))))))))

(declare-fun bs!479719 () Bool)

(assert (= bs!479719 d!764809))

(declare-fun m!3041393 () Bool)

(assert (=> bs!479719 m!3041393))

(assert (=> b!2673670 d!764809))

(declare-fun b!2674765 () Bool)

(declare-fun e!1685999 () Bool)

(declare-fun nullable!2590 (Regex!7845) Bool)

(assert (=> b!2674765 (= e!1685999 (nullable!2590 (regex!4701 (rule!7107 (_1!17655 (get!9672 lt!941455))))))))

(declare-fun d!764811 () Bool)

(declare-fun e!1685994 () Bool)

(assert (=> d!764811 e!1685994))

(declare-fun c!431017 () Bool)

(assert (=> d!764811 (= c!431017 ((_ is EmptyExpr!7845) (regex!4701 (rule!7107 (_1!17655 (get!9672 lt!941455))))))))

(declare-fun lt!941856 () Bool)

(assert (=> d!764811 (= lt!941856 e!1685999)))

(declare-fun c!431018 () Bool)

(assert (=> d!764811 (= c!431018 (isEmpty!17603 (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941455))))))))

(declare-fun validRegex!3299 (Regex!7845) Bool)

(assert (=> d!764811 (validRegex!3299 (regex!4701 (rule!7107 (_1!17655 (get!9672 lt!941455)))))))

(assert (=> d!764811 (= (matchR!3626 (regex!4701 (rule!7107 (_1!17655 (get!9672 lt!941455)))) (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941455))))) lt!941856)))

(declare-fun b!2674766 () Bool)

(declare-fun res!1124589 () Bool)

(declare-fun e!1685996 () Bool)

(assert (=> b!2674766 (=> (not res!1124589) (not e!1685996))))

(declare-fun call!172582 () Bool)

(assert (=> b!2674766 (= res!1124589 (not call!172582))))

(declare-fun b!2674767 () Bool)

(declare-fun res!1124592 () Bool)

(declare-fun e!1685993 () Bool)

(assert (=> b!2674767 (=> res!1124592 e!1685993)))

(assert (=> b!2674767 (= res!1124592 e!1685996)))

(declare-fun res!1124587 () Bool)

(assert (=> b!2674767 (=> (not res!1124587) (not e!1685996))))

(assert (=> b!2674767 (= res!1124587 lt!941856)))

(declare-fun b!2674768 () Bool)

(declare-fun e!1685995 () Bool)

(assert (=> b!2674768 (= e!1685995 (not lt!941856))))

(declare-fun b!2674769 () Bool)

(assert (=> b!2674769 (= e!1685996 (= (head!6078 (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941455))))) (c!430760 (regex!4701 (rule!7107 (_1!17655 (get!9672 lt!941455)))))))))

(declare-fun b!2674770 () Bool)

(declare-fun derivativeStep!2236 (Regex!7845 C!15848) Regex!7845)

(assert (=> b!2674770 (= e!1685999 (matchR!3626 (derivativeStep!2236 (regex!4701 (rule!7107 (_1!17655 (get!9672 lt!941455)))) (head!6078 (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941455)))))) (tail!4316 (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941455)))))))))

(declare-fun bm!172577 () Bool)

(assert (=> bm!172577 (= call!172582 (isEmpty!17603 (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941455))))))))

(declare-fun b!2674771 () Bool)

(declare-fun res!1124593 () Bool)

(declare-fun e!1685998 () Bool)

(assert (=> b!2674771 (=> res!1124593 e!1685998)))

(assert (=> b!2674771 (= res!1124593 (not (isEmpty!17603 (tail!4316 (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941455))))))))))

(declare-fun b!2674772 () Bool)

(assert (=> b!2674772 (= e!1685994 (= lt!941856 call!172582))))

(declare-fun b!2674773 () Bool)

(declare-fun res!1124590 () Bool)

(assert (=> b!2674773 (=> (not res!1124590) (not e!1685996))))

(assert (=> b!2674773 (= res!1124590 (isEmpty!17603 (tail!4316 (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941455)))))))))

(declare-fun b!2674774 () Bool)

(assert (=> b!2674774 (= e!1685994 e!1685995)))

(declare-fun c!431019 () Bool)

(assert (=> b!2674774 (= c!431019 ((_ is EmptyLang!7845) (regex!4701 (rule!7107 (_1!17655 (get!9672 lt!941455))))))))

(declare-fun b!2674775 () Bool)

(declare-fun e!1685997 () Bool)

(assert (=> b!2674775 (= e!1685997 e!1685998)))

(declare-fun res!1124594 () Bool)

(assert (=> b!2674775 (=> res!1124594 e!1685998)))

(assert (=> b!2674775 (= res!1124594 call!172582)))

(declare-fun b!2674776 () Bool)

(declare-fun res!1124588 () Bool)

(assert (=> b!2674776 (=> res!1124588 e!1685993)))

(assert (=> b!2674776 (= res!1124588 (not ((_ is ElementMatch!7845) (regex!4701 (rule!7107 (_1!17655 (get!9672 lt!941455)))))))))

(assert (=> b!2674776 (= e!1685995 e!1685993)))

(declare-fun b!2674777 () Bool)

(assert (=> b!2674777 (= e!1685998 (not (= (head!6078 (list!11619 (charsOf!2964 (_1!17655 (get!9672 lt!941455))))) (c!430760 (regex!4701 (rule!7107 (_1!17655 (get!9672 lt!941455))))))))))

(declare-fun b!2674778 () Bool)

(assert (=> b!2674778 (= e!1685993 e!1685997)))

(declare-fun res!1124591 () Bool)

(assert (=> b!2674778 (=> (not res!1124591) (not e!1685997))))

(assert (=> b!2674778 (= res!1124591 (not lt!941856))))

(assert (= (and d!764811 c!431018) b!2674765))

(assert (= (and d!764811 (not c!431018)) b!2674770))

(assert (= (and d!764811 c!431017) b!2674772))

(assert (= (and d!764811 (not c!431017)) b!2674774))

(assert (= (and b!2674774 c!431019) b!2674768))

(assert (= (and b!2674774 (not c!431019)) b!2674776))

(assert (= (and b!2674776 (not res!1124588)) b!2674767))

(assert (= (and b!2674767 res!1124587) b!2674766))

(assert (= (and b!2674766 res!1124589) b!2674773))

(assert (= (and b!2674773 res!1124590) b!2674769))

(assert (= (and b!2674767 (not res!1124592)) b!2674778))

(assert (= (and b!2674778 res!1124591) b!2674775))

(assert (= (and b!2674775 (not res!1124594)) b!2674771))

(assert (= (and b!2674771 (not res!1124593)) b!2674777))

(assert (= (or b!2674772 b!2674766 b!2674775) bm!172577))

(assert (=> d!764811 m!3039789))

(declare-fun m!3041395 () Bool)

(assert (=> d!764811 m!3041395))

(declare-fun m!3041397 () Bool)

(assert (=> d!764811 m!3041397))

(assert (=> b!2674770 m!3039789))

(declare-fun m!3041399 () Bool)

(assert (=> b!2674770 m!3041399))

(assert (=> b!2674770 m!3041399))

(declare-fun m!3041401 () Bool)

(assert (=> b!2674770 m!3041401))

(assert (=> b!2674770 m!3039789))

(declare-fun m!3041403 () Bool)

(assert (=> b!2674770 m!3041403))

(assert (=> b!2674770 m!3041401))

(assert (=> b!2674770 m!3041403))

(declare-fun m!3041405 () Bool)

(assert (=> b!2674770 m!3041405))

(assert (=> b!2674777 m!3039789))

(assert (=> b!2674777 m!3041399))

(assert (=> b!2674769 m!3039789))

(assert (=> b!2674769 m!3041399))

(assert (=> b!2674773 m!3039789))

(assert (=> b!2674773 m!3041403))

(assert (=> b!2674773 m!3041403))

(declare-fun m!3041407 () Bool)

(assert (=> b!2674773 m!3041407))

(declare-fun m!3041409 () Bool)

(assert (=> b!2674765 m!3041409))

(assert (=> b!2674771 m!3039789))

(assert (=> b!2674771 m!3041403))

(assert (=> b!2674771 m!3041403))

(assert (=> b!2674771 m!3041407))

(assert (=> bm!172577 m!3039789))

(assert (=> bm!172577 m!3041395))

(assert (=> b!2673756 d!764811))

(assert (=> b!2673756 d!764453))

(assert (=> b!2673756 d!764449))

(assert (=> b!2673756 d!764451))

(declare-fun bs!479720 () Bool)

(declare-fun d!764813 () Bool)

(assert (= bs!479720 (and d!764813 d!764649)))

(declare-fun lambda!99922 () Int)

(assert (=> bs!479720 (= (= (toValue!6643 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (toValue!6643 (transformation!4701 (rule!7107 separatorToken!152)))) (= lambda!99922 lambda!99905))))

(declare-fun bs!479721 () Bool)

(assert (= bs!479721 (and d!764813 d!764657)))

(assert (=> bs!479721 (= (= (toValue!6643 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (toValue!6643 (transformation!4701 (h!36199 rules!1712)))) (= lambda!99922 lambda!99907))))

(assert (=> d!764813 true))

(assert (=> d!764813 (< (dynLambda!13356 order!16955 (toValue!6643 (transformation!4701 (rule!7107 (h!36200 l!4335))))) (dynLambda!13364 order!16965 lambda!99922))))

(assert (=> d!764813 (= (equivClasses!1847 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (toValue!6643 (transformation!4701 (rule!7107 (h!36200 l!4335))))) (Forall2!792 lambda!99922))))

(declare-fun bs!479722 () Bool)

(assert (= bs!479722 d!764813))

(declare-fun m!3041411 () Bool)

(assert (=> bs!479722 m!3041411))

(assert (=> b!2673690 d!764813))

(declare-fun b!2674780 () Bool)

(declare-fun e!1686000 () List!30878)

(declare-fun e!1686001 () List!30878)

(assert (=> b!2674780 (= e!1686000 e!1686001)))

(declare-fun c!431021 () Bool)

(assert (=> b!2674780 (= c!431021 ((_ is Leaf!14723) (c!430759 lt!941344)))))

(declare-fun b!2674782 () Bool)

(assert (=> b!2674782 (= e!1686001 (++!7507 (list!11623 (left!23822 (c!430759 lt!941344))) (list!11623 (right!24152 (c!430759 lt!941344)))))))

(declare-fun b!2674779 () Bool)

(assert (=> b!2674779 (= e!1686000 Nil!30778)))

(declare-fun b!2674781 () Bool)

(assert (=> b!2674781 (= e!1686001 (list!11627 (xs!12662 (c!430759 lt!941344))))))

(declare-fun d!764815 () Bool)

(declare-fun c!431020 () Bool)

(assert (=> d!764815 (= c!431020 ((_ is Empty!9632) (c!430759 lt!941344)))))

(assert (=> d!764815 (= (list!11623 (c!430759 lt!941344)) e!1686000)))

(assert (= (and d!764815 c!431020) b!2674779))

(assert (= (and d!764815 (not c!431020)) b!2674780))

(assert (= (and b!2674780 c!431021) b!2674781))

(assert (= (and b!2674780 (not c!431021)) b!2674782))

(declare-fun m!3041413 () Bool)

(assert (=> b!2674782 m!3041413))

(declare-fun m!3041415 () Bool)

(assert (=> b!2674782 m!3041415))

(assert (=> b!2674782 m!3041413))

(assert (=> b!2674782 m!3041415))

(declare-fun m!3041417 () Bool)

(assert (=> b!2674782 m!3041417))

(declare-fun m!3041419 () Bool)

(assert (=> b!2674781 m!3041419))

(assert (=> d!764329 d!764815))

(declare-fun d!764817 () Bool)

(assert (=> d!764817 (= (list!11619 (BalanceConc!18879 Empty!9632)) (list!11623 (c!430759 (BalanceConc!18879 Empty!9632))))))

(declare-fun bs!479723 () Bool)

(assert (= bs!479723 d!764817))

(declare-fun m!3041421 () Bool)

(assert (=> bs!479723 m!3041421))

(assert (=> d!764327 d!764817))

(declare-fun d!764819 () Bool)

(declare-fun lt!941871 () List!30878)

(assert (=> d!764819 (= lt!941871 (++!7507 (list!11619 (BalanceConc!18879 Empty!9632)) (printList!1190 thiss!14116 (dropList!972 lt!941343 0))))))

(declare-fun e!1686004 () List!30878)

(assert (=> d!764819 (= lt!941871 e!1686004)))

(declare-fun c!431024 () Bool)

(assert (=> d!764819 (= c!431024 ((_ is Cons!30780) (dropList!972 lt!941343 0)))))

(assert (=> d!764819 (= (printListTailRec!523 thiss!14116 (dropList!972 lt!941343 0) (list!11619 (BalanceConc!18879 Empty!9632))) lt!941871)))

(declare-fun b!2674787 () Bool)

(assert (=> b!2674787 (= e!1686004 (printListTailRec!523 thiss!14116 (t!223505 (dropList!972 lt!941343 0)) (++!7507 (list!11619 (BalanceConc!18879 Empty!9632)) (list!11619 (charsOf!2964 (h!36200 (dropList!972 lt!941343 0)))))))))

(declare-fun lt!941869 () List!30878)

(assert (=> b!2674787 (= lt!941869 (list!11619 (charsOf!2964 (h!36200 (dropList!972 lt!941343 0)))))))

(declare-fun lt!941867 () List!30878)

(assert (=> b!2674787 (= lt!941867 (printList!1190 thiss!14116 (t!223505 (dropList!972 lt!941343 0))))))

(declare-fun lt!941870 () Unit!44983)

(declare-fun lemmaConcatAssociativity!1513 (List!30878 List!30878 List!30878) Unit!44983)

(assert (=> b!2674787 (= lt!941870 (lemmaConcatAssociativity!1513 (list!11619 (BalanceConc!18879 Empty!9632)) lt!941869 lt!941867))))

(assert (=> b!2674787 (= (++!7507 (++!7507 (list!11619 (BalanceConc!18879 Empty!9632)) lt!941869) lt!941867) (++!7507 (list!11619 (BalanceConc!18879 Empty!9632)) (++!7507 lt!941869 lt!941867)))))

(declare-fun lt!941868 () Unit!44983)

(assert (=> b!2674787 (= lt!941868 lt!941870)))

(declare-fun b!2674788 () Bool)

(assert (=> b!2674788 (= e!1686004 (list!11619 (BalanceConc!18879 Empty!9632)))))

(assert (= (and d!764819 c!431024) b!2674787))

(assert (= (and d!764819 (not c!431024)) b!2674788))

(assert (=> d!764819 m!3039717))

(declare-fun m!3041423 () Bool)

(assert (=> d!764819 m!3041423))

(assert (=> d!764819 m!3039719))

(assert (=> d!764819 m!3041423))

(declare-fun m!3041425 () Bool)

(assert (=> d!764819 m!3041425))

(assert (=> b!2674787 m!3039719))

(declare-fun m!3041427 () Bool)

(assert (=> b!2674787 m!3041427))

(declare-fun m!3041429 () Bool)

(assert (=> b!2674787 m!3041429))

(declare-fun m!3041431 () Bool)

(assert (=> b!2674787 m!3041431))

(declare-fun m!3041433 () Bool)

(assert (=> b!2674787 m!3041433))

(declare-fun m!3041435 () Bool)

(assert (=> b!2674787 m!3041435))

(declare-fun m!3041437 () Bool)

(assert (=> b!2674787 m!3041437))

(declare-fun m!3041439 () Bool)

(assert (=> b!2674787 m!3041439))

(assert (=> b!2674787 m!3039719))

(assert (=> b!2674787 m!3041439))

(declare-fun m!3041441 () Bool)

(assert (=> b!2674787 m!3041441))

(assert (=> b!2674787 m!3039719))

(declare-fun m!3041443 () Bool)

(assert (=> b!2674787 m!3041443))

(assert (=> b!2674787 m!3041433))

(declare-fun m!3041445 () Bool)

(assert (=> b!2674787 m!3041445))

(assert (=> b!2674787 m!3041445))

(assert (=> b!2674787 m!3041443))

(assert (=> b!2674787 m!3039719))

(assert (=> b!2674787 m!3041429))

(assert (=> d!764327 d!764819))

(declare-fun d!764821 () Bool)

(assert (=> d!764821 (= (list!11619 lt!941435) (list!11623 (c!430759 lt!941435)))))

(declare-fun bs!479724 () Bool)

(assert (= bs!479724 d!764821))

(declare-fun m!3041447 () Bool)

(assert (=> bs!479724 m!3041447))

(assert (=> d!764327 d!764821))

(assert (=> d!764327 d!764455))

(declare-fun d!764823 () Bool)

(assert (=> d!764823 (= (dropList!972 lt!941343 0) (drop!1669 (list!11624 (c!430761 lt!941343)) 0))))

(declare-fun bs!479725 () Bool)

(assert (= bs!479725 d!764823))

(assert (=> bs!479725 m!3040055))

(assert (=> bs!479725 m!3040055))

(declare-fun m!3041449 () Bool)

(assert (=> bs!479725 m!3041449))

(assert (=> d!764327 d!764823))

(declare-fun d!764825 () Bool)

(assert (=> d!764825 (= (list!11622 lt!941416) (list!11624 (c!430761 lt!941416)))))

(declare-fun bs!479726 () Bool)

(assert (= bs!479726 d!764825))

(declare-fun m!3041451 () Bool)

(assert (=> bs!479726 m!3041451))

(assert (=> d!764325 d!764825))

(declare-fun d!764827 () Bool)

(declare-fun e!1686007 () Bool)

(assert (=> d!764827 e!1686007))

(declare-fun res!1124597 () Bool)

(assert (=> d!764827 (=> (not res!1124597) (not e!1686007))))

(declare-fun lt!941874 () BalanceConc!18880)

(assert (=> d!764827 (= res!1124597 (= (list!11622 lt!941874) (Cons!30780 (h!36200 l!4335) Nil!30780)))))

(declare-fun choose!15847 (Token!8872) BalanceConc!18880)

(assert (=> d!764827 (= lt!941874 (choose!15847 (h!36200 l!4335)))))

(assert (=> d!764827 (= (singleton!928 (h!36200 l!4335)) lt!941874)))

(declare-fun b!2674791 () Bool)

(assert (=> b!2674791 (= e!1686007 (isBalanced!2915 (c!430761 lt!941874)))))

(assert (= (and d!764827 res!1124597) b!2674791))

(declare-fun m!3041453 () Bool)

(assert (=> d!764827 m!3041453))

(declare-fun m!3041455 () Bool)

(assert (=> d!764827 m!3041455))

(declare-fun m!3041457 () Bool)

(assert (=> b!2674791 m!3041457))

(assert (=> d!764325 d!764827))

(declare-fun d!764829 () Bool)

(declare-fun res!1124598 () Bool)

(declare-fun e!1686008 () Bool)

(assert (=> d!764829 (=> res!1124598 e!1686008)))

(assert (=> d!764829 (= res!1124598 (not ((_ is Cons!30779) (t!223504 rules!1712))))))

(assert (=> d!764829 (= (sepAndNonSepRulesDisjointChars!1274 rules!1712 (t!223504 rules!1712)) e!1686008)))

(declare-fun b!2674792 () Bool)

(declare-fun e!1686009 () Bool)

(assert (=> b!2674792 (= e!1686008 e!1686009)))

(declare-fun res!1124599 () Bool)

(assert (=> b!2674792 (=> (not res!1124599) (not e!1686009))))

(assert (=> b!2674792 (= res!1124599 (ruleDisjointCharsFromAllFromOtherType!553 (h!36199 (t!223504 rules!1712)) rules!1712))))

(declare-fun b!2674793 () Bool)

(assert (=> b!2674793 (= e!1686009 (sepAndNonSepRulesDisjointChars!1274 rules!1712 (t!223504 (t!223504 rules!1712))))))

(assert (= (and d!764829 (not res!1124598)) b!2674792))

(assert (= (and b!2674792 res!1124599) b!2674793))

(declare-fun m!3041459 () Bool)

(assert (=> b!2674792 m!3041459))

(declare-fun m!3041461 () Bool)

(assert (=> b!2674793 m!3041461))

(assert (=> b!2673937 d!764829))

(declare-fun b!2674794 () Bool)

(declare-fun e!1686010 () Bool)

(declare-fun tp!845661 () Bool)

(assert (=> b!2674794 (= e!1686010 (and tp_is_empty!13821 tp!845661))))

(assert (=> b!2673975 (= tp!845633 e!1686010)))

(assert (= (and b!2673975 ((_ is Cons!30778) (t!223503 (originalCharacters!5467 separatorToken!152)))) b!2674794))

(declare-fun b!2674803 () Bool)

(declare-fun tp!845668 () Bool)

(declare-fun tp!845669 () Bool)

(declare-fun e!1686016 () Bool)

(assert (=> b!2674803 (= e!1686016 (and (inv!41789 (left!23822 (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (value!151583 (h!36200 l!4335)))))) tp!845669 (inv!41789 (right!24152 (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (value!151583 (h!36200 l!4335)))))) tp!845668))))

(declare-fun b!2674805 () Bool)

(declare-fun e!1686015 () Bool)

(declare-fun tp!845670 () Bool)

(assert (=> b!2674805 (= e!1686015 tp!845670)))

(declare-fun b!2674804 () Bool)

(declare-fun inv!41796 (IArray!19269) Bool)

(assert (=> b!2674804 (= e!1686016 (and (inv!41796 (xs!12662 (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (value!151583 (h!36200 l!4335)))))) e!1686015))))

(assert (=> b!2673676 (= tp!845537 (and (inv!41789 (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (value!151583 (h!36200 l!4335))))) e!1686016))))

(assert (= (and b!2673676 ((_ is Node!9632) (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (value!151583 (h!36200 l!4335)))))) b!2674803))

(assert (= b!2674804 b!2674805))

(assert (= (and b!2673676 ((_ is Leaf!14723) (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (value!151583 (h!36200 l!4335)))))) b!2674804))

(declare-fun m!3041463 () Bool)

(assert (=> b!2674803 m!3041463))

(declare-fun m!3041465 () Bool)

(assert (=> b!2674803 m!3041465))

(declare-fun m!3041467 () Bool)

(assert (=> b!2674804 m!3041467))

(assert (=> b!2673676 m!3039629))

(declare-fun b!2674806 () Bool)

(declare-fun e!1686017 () Bool)

(assert (=> b!2674806 (= e!1686017 tp_is_empty!13821)))

(declare-fun b!2674809 () Bool)

(declare-fun tp!845674 () Bool)

(declare-fun tp!845675 () Bool)

(assert (=> b!2674809 (= e!1686017 (and tp!845674 tp!845675))))

(declare-fun b!2674808 () Bool)

(declare-fun tp!845673 () Bool)

(assert (=> b!2674808 (= e!1686017 tp!845673)))

(assert (=> b!2673950 (= tp!845606 e!1686017)))

(declare-fun b!2674807 () Bool)

(declare-fun tp!845672 () Bool)

(declare-fun tp!845671 () Bool)

(assert (=> b!2674807 (= e!1686017 (and tp!845672 tp!845671))))

(assert (= (and b!2673950 ((_ is ElementMatch!7845) (regex!4701 (rule!7107 (h!36200 (t!223505 l!4335)))))) b!2674806))

(assert (= (and b!2673950 ((_ is Concat!12769) (regex!4701 (rule!7107 (h!36200 (t!223505 l!4335)))))) b!2674807))

(assert (= (and b!2673950 ((_ is Star!7845) (regex!4701 (rule!7107 (h!36200 (t!223505 l!4335)))))) b!2674808))

(assert (= (and b!2673950 ((_ is Union!7845) (regex!4701 (rule!7107 (h!36200 (t!223505 l!4335)))))) b!2674809))

(declare-fun b!2674810 () Bool)

(declare-fun e!1686018 () Bool)

(declare-fun tp!845676 () Bool)

(assert (=> b!2674810 (= e!1686018 (and tp_is_empty!13821 tp!845676))))

(assert (=> b!2673949 (= tp!845609 e!1686018)))

(assert (= (and b!2673949 ((_ is Cons!30778) (originalCharacters!5467 (h!36200 (t!223505 l!4335))))) b!2674810))

(declare-fun b!2674811 () Bool)

(declare-fun tp!845678 () Bool)

(declare-fun tp!845677 () Bool)

(declare-fun e!1686020 () Bool)

(assert (=> b!2674811 (= e!1686020 (and (inv!41789 (left!23822 (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (value!151583 separatorToken!152))))) tp!845678 (inv!41789 (right!24152 (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (value!151583 separatorToken!152))))) tp!845677))))

(declare-fun b!2674813 () Bool)

(declare-fun e!1686019 () Bool)

(declare-fun tp!845679 () Bool)

(assert (=> b!2674813 (= e!1686019 tp!845679)))

(declare-fun b!2674812 () Bool)

(assert (=> b!2674812 (= e!1686020 (and (inv!41796 (xs!12662 (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (value!151583 separatorToken!152))))) e!1686019))))

(assert (=> b!2673931 (= tp!845594 (and (inv!41789 (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (value!151583 separatorToken!152)))) e!1686020))))

(assert (= (and b!2673931 ((_ is Node!9632) (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (value!151583 separatorToken!152))))) b!2674811))

(assert (= b!2674812 b!2674813))

(assert (= (and b!2673931 ((_ is Leaf!14723) (c!430759 (dynLambda!13361 (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (value!151583 separatorToken!152))))) b!2674812))

(declare-fun m!3041469 () Bool)

(assert (=> b!2674811 m!3041469))

(declare-fun m!3041471 () Bool)

(assert (=> b!2674811 m!3041471))

(declare-fun m!3041473 () Bool)

(assert (=> b!2674812 m!3041473))

(assert (=> b!2673931 m!3039935))

(declare-fun b!2674820 () Bool)

(declare-fun e!1686025 () Bool)

(assert (=> b!2674820 (= e!1686025 true)))

(declare-fun b!2674819 () Bool)

(declare-fun e!1686024 () Bool)

(assert (=> b!2674819 (= e!1686024 e!1686025)))

(declare-fun b!2674818 () Bool)

(declare-fun e!1686023 () Bool)

(assert (=> b!2674818 (= e!1686023 e!1686024)))

(assert (=> b!2673976 e!1686023))

(assert (= b!2674819 b!2674820))

(assert (= b!2674818 b!2674819))

(assert (= (and b!2673976 ((_ is Cons!30779) (t!223504 (t!223504 rules!1712)))) b!2674818))

(assert (=> b!2674820 (< (dynLambda!13356 order!16955 (toValue!6643 (transformation!4701 (h!36199 (t!223504 (t!223504 rules!1712)))))) (dynLambda!13357 order!16957 lambda!99878))))

(assert (=> b!2674820 (< (dynLambda!13358 order!16959 (toChars!6502 (transformation!4701 (h!36199 (t!223504 (t!223504 rules!1712)))))) (dynLambda!13357 order!16957 lambda!99878))))

(declare-fun b!2674826 () Bool)

(declare-fun b_free!75365 () Bool)

(declare-fun b_next!76069 () Bool)

(assert (=> b!2674826 (= b_free!75365 (not b_next!76069))))

(declare-fun t!223677 () Bool)

(declare-fun tb!149959 () Bool)

(assert (=> (and b!2674826 (= (toValue!6643 (transformation!4701 (rule!7107 (h!36200 (t!223505 (t!223505 l!4335)))))) (toValue!6643 (transformation!4701 (rule!7107 (_1!17655 (get!9672 lt!941455)))))) t!223677) tb!149959))

(declare-fun result!185226 () Bool)

(assert (= result!185226 result!185202))

(assert (=> d!764737 t!223677))

(declare-fun b_and!197719 () Bool)

(declare-fun tp!845680 () Bool)

(assert (=> b!2674826 (= tp!845680 (and (=> t!223677 result!185226) b_and!197719))))

(declare-fun b_free!75367 () Bool)

(declare-fun b_next!76071 () Bool)

(assert (=> b!2674826 (= b_free!75367 (not b_next!76071))))

(declare-fun t!223679 () Bool)

(declare-fun tb!149961 () Bool)

(assert (=> (and b!2674826 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 (t!223505 l!4335)))))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335)))))) t!223679) tb!149961))

(declare-fun result!185228 () Bool)

(assert (= result!185228 result!185192))

(assert (=> d!764639 t!223679))

(declare-fun t!223681 () Bool)

(declare-fun tb!149963 () Bool)

(assert (=> (and b!2674826 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 (t!223505 l!4335)))))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335))))) t!223681) tb!149963))

(declare-fun result!185230 () Bool)

(assert (= result!185230 result!185066))

(assert (=> d!764335 t!223681))

(declare-fun tb!149965 () Bool)

(declare-fun t!223683 () Bool)

(assert (=> (and b!2674826 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 (t!223505 l!4335)))))) (toChars!6502 (transformation!4701 (rule!7107 (ite c!430826 separatorToken!152 (h!36200 (t!223505 l!4335))))))) t!223683) tb!149965))

(declare-fun result!185232 () Bool)

(assert (= result!185232 result!185162))

(assert (=> d!764507 t!223683))

(declare-fun t!223685 () Bool)

(declare-fun tb!149967 () Bool)

(assert (=> (and b!2674826 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 (t!223505 l!4335)))))) (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152)))) t!223685) tb!149967))

(declare-fun result!185234 () Bool)

(assert (= result!185234 result!185090))

(assert (=> b!2673929 t!223685))

(declare-fun t!223687 () Bool)

(declare-fun tb!149969 () Bool)

(assert (=> (and b!2674826 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 (t!223505 l!4335)))))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (Cons!30780 (h!36200 l!4335) Nil!30780)))))) t!223687) tb!149969))

(declare-fun result!185236 () Bool)

(assert (= result!185236 result!185152))

(assert (=> d!764491 t!223687))

(declare-fun tb!149971 () Bool)

(declare-fun t!223689 () Bool)

(assert (=> (and b!2674826 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 (t!223505 l!4335)))))) (toChars!6502 (transformation!4701 (rule!7107 (_1!17655 (get!9672 lt!941455)))))) t!223689) tb!149971))

(declare-fun result!185238 () Bool)

(assert (= result!185238 result!185132))

(assert (=> d!764451 t!223689))

(assert (=> b!2674491 t!223679))

(assert (=> b!2673670 t!223681))

(declare-fun t!223691 () Bool)

(declare-fun tb!149973 () Bool)

(assert (=> (and b!2674826 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 (t!223505 l!4335)))))) (toChars!6502 (transformation!4701 (rule!7107 (apply!7376 lt!941343 0))))) t!223691) tb!149973))

(declare-fun result!185240 () Bool)

(assert (= result!185240 result!185122))

(assert (=> d!764431 t!223691))

(declare-fun tp!845682 () Bool)

(declare-fun b_and!197721 () Bool)

(assert (=> b!2674826 (= tp!845682 (and (=> t!223689 result!185238) (=> t!223687 result!185236) (=> t!223681 result!185230) (=> t!223683 result!185232) (=> t!223685 result!185234) (=> t!223679 result!185228) (=> t!223691 result!185240) b_and!197721))))

(declare-fun b!2674825 () Bool)

(declare-fun tp!845681 () Bool)

(declare-fun e!1686028 () Bool)

(declare-fun e!1686029 () Bool)

(assert (=> b!2674825 (= e!1686028 (and tp!845681 (inv!41782 (tag!5203 (rule!7107 (h!36200 (t!223505 (t!223505 l!4335)))))) (inv!41786 (transformation!4701 (rule!7107 (h!36200 (t!223505 (t!223505 l!4335)))))) e!1686029))))

(declare-fun e!1686030 () Bool)

(declare-fun b!2674823 () Bool)

(declare-fun tp!845683 () Bool)

(declare-fun e!1686031 () Bool)

(assert (=> b!2674823 (= e!1686030 (and (inv!41785 (h!36200 (t!223505 (t!223505 l!4335)))) e!1686031 tp!845683))))

(assert (=> b!2674826 (= e!1686029 (and tp!845680 tp!845682))))

(declare-fun b!2674824 () Bool)

(declare-fun tp!845684 () Bool)

(assert (=> b!2674824 (= e!1686031 (and (inv!21 (value!151583 (h!36200 (t!223505 (t!223505 l!4335))))) e!1686028 tp!845684))))

(assert (=> b!2673948 (= tp!845608 e!1686030)))

(assert (= b!2674825 b!2674826))

(assert (= b!2674824 b!2674825))

(assert (= b!2674823 b!2674824))

(assert (= (and b!2673948 ((_ is Cons!30780) (t!223505 (t!223505 l!4335)))) b!2674823))

(declare-fun m!3041475 () Bool)

(assert (=> b!2674825 m!3041475))

(declare-fun m!3041477 () Bool)

(assert (=> b!2674825 m!3041477))

(declare-fun m!3041479 () Bool)

(assert (=> b!2674823 m!3041479))

(declare-fun m!3041481 () Bool)

(assert (=> b!2674824 m!3041481))

(declare-fun b!2674839 () Bool)

(declare-fun e!1686038 () Bool)

(assert (=> b!2674839 (= e!1686038 tp_is_empty!13821)))

(declare-fun b!2674842 () Bool)

(declare-fun tp!845688 () Bool)

(declare-fun tp!845689 () Bool)

(assert (=> b!2674842 (= e!1686038 (and tp!845688 tp!845689))))

(declare-fun b!2674841 () Bool)

(declare-fun tp!845687 () Bool)

(assert (=> b!2674841 (= e!1686038 tp!845687)))

(assert (=> b!2673963 (= tp!845621 e!1686038)))

(declare-fun b!2674840 () Bool)

(declare-fun tp!845686 () Bool)

(declare-fun tp!845685 () Bool)

(assert (=> b!2674840 (= e!1686038 (and tp!845686 tp!845685))))

(assert (= (and b!2673963 ((_ is ElementMatch!7845) (regOne!16202 (regex!4701 (rule!7107 (h!36200 l!4335)))))) b!2674839))

(assert (= (and b!2673963 ((_ is Concat!12769) (regOne!16202 (regex!4701 (rule!7107 (h!36200 l!4335)))))) b!2674840))

(assert (= (and b!2673963 ((_ is Star!7845) (regOne!16202 (regex!4701 (rule!7107 (h!36200 l!4335)))))) b!2674841))

(assert (= (and b!2673963 ((_ is Union!7845) (regOne!16202 (regex!4701 (rule!7107 (h!36200 l!4335)))))) b!2674842))

(declare-fun b!2674843 () Bool)

(declare-fun e!1686039 () Bool)

(assert (=> b!2674843 (= e!1686039 tp_is_empty!13821)))

(declare-fun b!2674846 () Bool)

(declare-fun tp!845693 () Bool)

(declare-fun tp!845694 () Bool)

(assert (=> b!2674846 (= e!1686039 (and tp!845693 tp!845694))))

(declare-fun b!2674845 () Bool)

(declare-fun tp!845692 () Bool)

(assert (=> b!2674845 (= e!1686039 tp!845692)))

(assert (=> b!2673963 (= tp!845620 e!1686039)))

(declare-fun b!2674844 () Bool)

(declare-fun tp!845691 () Bool)

(declare-fun tp!845690 () Bool)

(assert (=> b!2674844 (= e!1686039 (and tp!845691 tp!845690))))

(assert (= (and b!2673963 ((_ is ElementMatch!7845) (regTwo!16202 (regex!4701 (rule!7107 (h!36200 l!4335)))))) b!2674843))

(assert (= (and b!2673963 ((_ is Concat!12769) (regTwo!16202 (regex!4701 (rule!7107 (h!36200 l!4335)))))) b!2674844))

(assert (= (and b!2673963 ((_ is Star!7845) (regTwo!16202 (regex!4701 (rule!7107 (h!36200 l!4335)))))) b!2674845))

(assert (= (and b!2673963 ((_ is Union!7845) (regTwo!16202 (regex!4701 (rule!7107 (h!36200 l!4335)))))) b!2674846))

(declare-fun b!2674847 () Bool)

(declare-fun e!1686040 () Bool)

(assert (=> b!2674847 (= e!1686040 tp_is_empty!13821)))

(declare-fun b!2674850 () Bool)

(declare-fun tp!845698 () Bool)

(declare-fun tp!845699 () Bool)

(assert (=> b!2674850 (= e!1686040 (and tp!845698 tp!845699))))

(declare-fun b!2674849 () Bool)

(declare-fun tp!845697 () Bool)

(assert (=> b!2674849 (= e!1686040 tp!845697)))

(assert (=> b!2673992 (= tp!845649 e!1686040)))

(declare-fun b!2674848 () Bool)

(declare-fun tp!845696 () Bool)

(declare-fun tp!845695 () Bool)

(assert (=> b!2674848 (= e!1686040 (and tp!845696 tp!845695))))

(assert (= (and b!2673992 ((_ is ElementMatch!7845) (regex!4701 (h!36199 (t!223504 rules!1712))))) b!2674847))

(assert (= (and b!2673992 ((_ is Concat!12769) (regex!4701 (h!36199 (t!223504 rules!1712))))) b!2674848))

(assert (= (and b!2673992 ((_ is Star!7845) (regex!4701 (h!36199 (t!223504 rules!1712))))) b!2674849))

(assert (= (and b!2673992 ((_ is Union!7845) (regex!4701 (h!36199 (t!223504 rules!1712))))) b!2674850))

(declare-fun b!2674853 () Bool)

(declare-fun b_free!75369 () Bool)

(declare-fun b_next!76073 () Bool)

(assert (=> b!2674853 (= b_free!75369 (not b_next!76073))))

(declare-fun t!223693 () Bool)

(declare-fun tb!149975 () Bool)

(assert (=> (and b!2674853 (= (toValue!6643 (transformation!4701 (h!36199 (t!223504 (t!223504 rules!1712))))) (toValue!6643 (transformation!4701 (rule!7107 (_1!17655 (get!9672 lt!941455)))))) t!223693) tb!149975))

(declare-fun result!185242 () Bool)

(assert (= result!185242 result!185202))

(assert (=> d!764737 t!223693))

(declare-fun tp!845700 () Bool)

(declare-fun b_and!197723 () Bool)

(assert (=> b!2674853 (= tp!845700 (and (=> t!223693 result!185242) b_and!197723))))

(declare-fun b_free!75371 () Bool)

(declare-fun b_next!76075 () Bool)

(assert (=> b!2674853 (= b_free!75371 (not b_next!76075))))

(declare-fun tb!149977 () Bool)

(declare-fun t!223695 () Bool)

(assert (=> (and b!2674853 (= (toChars!6502 (transformation!4701 (h!36199 (t!223504 (t!223504 rules!1712))))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335)))))) t!223695) tb!149977))

(declare-fun result!185244 () Bool)

(assert (= result!185244 result!185192))

(assert (=> d!764639 t!223695))

(declare-fun tb!149979 () Bool)

(declare-fun t!223697 () Bool)

(assert (=> (and b!2674853 (= (toChars!6502 (transformation!4701 (h!36199 (t!223504 (t!223504 rules!1712))))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335))))) t!223697) tb!149979))

(declare-fun result!185246 () Bool)

(assert (= result!185246 result!185066))

(assert (=> d!764335 t!223697))

(declare-fun t!223699 () Bool)

(declare-fun tb!149981 () Bool)

(assert (=> (and b!2674853 (= (toChars!6502 (transformation!4701 (h!36199 (t!223504 (t!223504 rules!1712))))) (toChars!6502 (transformation!4701 (rule!7107 (ite c!430826 separatorToken!152 (h!36200 (t!223505 l!4335))))))) t!223699) tb!149981))

(declare-fun result!185248 () Bool)

(assert (= result!185248 result!185162))

(assert (=> d!764507 t!223699))

(declare-fun tb!149983 () Bool)

(declare-fun t!223701 () Bool)

(assert (=> (and b!2674853 (= (toChars!6502 (transformation!4701 (h!36199 (t!223504 (t!223504 rules!1712))))) (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152)))) t!223701) tb!149983))

(declare-fun result!185250 () Bool)

(assert (= result!185250 result!185090))

(assert (=> b!2673929 t!223701))

(declare-fun tb!149985 () Bool)

(declare-fun t!223703 () Bool)

(assert (=> (and b!2674853 (= (toChars!6502 (transformation!4701 (h!36199 (t!223504 (t!223504 rules!1712))))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (Cons!30780 (h!36200 l!4335) Nil!30780)))))) t!223703) tb!149985))

(declare-fun result!185252 () Bool)

(assert (= result!185252 result!185152))

(assert (=> d!764491 t!223703))

(declare-fun t!223705 () Bool)

(declare-fun tb!149987 () Bool)

(assert (=> (and b!2674853 (= (toChars!6502 (transformation!4701 (h!36199 (t!223504 (t!223504 rules!1712))))) (toChars!6502 (transformation!4701 (rule!7107 (_1!17655 (get!9672 lt!941455)))))) t!223705) tb!149987))

(declare-fun result!185254 () Bool)

(assert (= result!185254 result!185132))

(assert (=> d!764451 t!223705))

(assert (=> b!2674491 t!223695))

(assert (=> b!2673670 t!223697))

(declare-fun tb!149989 () Bool)

(declare-fun t!223707 () Bool)

(assert (=> (and b!2674853 (= (toChars!6502 (transformation!4701 (h!36199 (t!223504 (t!223504 rules!1712))))) (toChars!6502 (transformation!4701 (rule!7107 (apply!7376 lt!941343 0))))) t!223707) tb!149989))

(declare-fun result!185256 () Bool)

(assert (= result!185256 result!185122))

(assert (=> d!764431 t!223707))

(declare-fun tp!845701 () Bool)

(declare-fun b_and!197725 () Bool)

(assert (=> b!2674853 (= tp!845701 (and (=> t!223707 result!185256) (=> t!223705 result!185254) (=> t!223699 result!185248) (=> t!223695 result!185244) (=> t!223703 result!185252) (=> t!223701 result!185250) (=> t!223697 result!185246) b_and!197725))))

(declare-fun e!1686044 () Bool)

(assert (=> b!2674853 (= e!1686044 (and tp!845700 tp!845701))))

(declare-fun tp!845702 () Bool)

(declare-fun b!2674852 () Bool)

(declare-fun e!1686042 () Bool)

(assert (=> b!2674852 (= e!1686042 (and tp!845702 (inv!41782 (tag!5203 (h!36199 (t!223504 (t!223504 rules!1712))))) (inv!41786 (transformation!4701 (h!36199 (t!223504 (t!223504 rules!1712))))) e!1686044))))

(declare-fun b!2674851 () Bool)

(declare-fun e!1686041 () Bool)

(declare-fun tp!845703 () Bool)

(assert (=> b!2674851 (= e!1686041 (and e!1686042 tp!845703))))

(assert (=> b!2673991 (= tp!845650 e!1686041)))

(assert (= b!2674852 b!2674853))

(assert (= b!2674851 b!2674852))

(assert (= (and b!2673991 ((_ is Cons!30779) (t!223504 (t!223504 rules!1712)))) b!2674851))

(declare-fun m!3041483 () Bool)

(assert (=> b!2674852 m!3041483))

(declare-fun m!3041485 () Bool)

(assert (=> b!2674852 m!3041485))

(declare-fun b!2674856 () Bool)

(declare-fun e!1686047 () Bool)

(assert (=> b!2674856 (= e!1686047 true)))

(declare-fun b!2674855 () Bool)

(declare-fun e!1686046 () Bool)

(assert (=> b!2674855 (= e!1686046 e!1686047)))

(declare-fun b!2674854 () Bool)

(declare-fun e!1686045 () Bool)

(assert (=> b!2674854 (= e!1686045 e!1686046)))

(assert (=> b!2673898 e!1686045))

(assert (= b!2674855 b!2674856))

(assert (= b!2674854 b!2674855))

(assert (= (and b!2673898 ((_ is Cons!30779) (t!223504 rules!1712))) b!2674854))

(assert (=> b!2674856 (< (dynLambda!13356 order!16955 (toValue!6643 (transformation!4701 (h!36199 (t!223504 rules!1712))))) (dynLambda!13357 order!16957 lambda!99887))))

(assert (=> b!2674856 (< (dynLambda!13358 order!16959 (toChars!6502 (transformation!4701 (h!36199 (t!223504 rules!1712))))) (dynLambda!13357 order!16957 lambda!99887))))

(declare-fun b!2674857 () Bool)

(declare-fun e!1686048 () Bool)

(declare-fun tp!845704 () Bool)

(assert (=> b!2674857 (= e!1686048 (and tp_is_empty!13821 tp!845704))))

(assert (=> b!2673970 (= tp!845627 e!1686048)))

(assert (= (and b!2673970 ((_ is Cons!30778) (t!223503 (originalCharacters!5467 (h!36200 l!4335))))) b!2674857))

(declare-fun b!2674858 () Bool)

(declare-fun e!1686049 () Bool)

(assert (=> b!2674858 (= e!1686049 tp_is_empty!13821)))

(declare-fun b!2674861 () Bool)

(declare-fun tp!845708 () Bool)

(declare-fun tp!845709 () Bool)

(assert (=> b!2674861 (= e!1686049 (and tp!845708 tp!845709))))

(declare-fun b!2674860 () Bool)

(declare-fun tp!845707 () Bool)

(assert (=> b!2674860 (= e!1686049 tp!845707)))

(assert (=> b!2673974 (= tp!845631 e!1686049)))

(declare-fun b!2674859 () Bool)

(declare-fun tp!845706 () Bool)

(declare-fun tp!845705 () Bool)

(assert (=> b!2674859 (= e!1686049 (and tp!845706 tp!845705))))

(assert (= (and b!2673974 ((_ is ElementMatch!7845) (regOne!16203 (regex!4701 (rule!7107 separatorToken!152))))) b!2674858))

(assert (= (and b!2673974 ((_ is Concat!12769) (regOne!16203 (regex!4701 (rule!7107 separatorToken!152))))) b!2674859))

(assert (= (and b!2673974 ((_ is Star!7845) (regOne!16203 (regex!4701 (rule!7107 separatorToken!152))))) b!2674860))

(assert (= (and b!2673974 ((_ is Union!7845) (regOne!16203 (regex!4701 (rule!7107 separatorToken!152))))) b!2674861))

(declare-fun b!2674862 () Bool)

(declare-fun e!1686050 () Bool)

(assert (=> b!2674862 (= e!1686050 tp_is_empty!13821)))

(declare-fun b!2674865 () Bool)

(declare-fun tp!845713 () Bool)

(declare-fun tp!845714 () Bool)

(assert (=> b!2674865 (= e!1686050 (and tp!845713 tp!845714))))

(declare-fun b!2674864 () Bool)

(declare-fun tp!845712 () Bool)

(assert (=> b!2674864 (= e!1686050 tp!845712)))

(assert (=> b!2673974 (= tp!845632 e!1686050)))

(declare-fun b!2674863 () Bool)

(declare-fun tp!845711 () Bool)

(declare-fun tp!845710 () Bool)

(assert (=> b!2674863 (= e!1686050 (and tp!845711 tp!845710))))

(assert (= (and b!2673974 ((_ is ElementMatch!7845) (regTwo!16203 (regex!4701 (rule!7107 separatorToken!152))))) b!2674862))

(assert (= (and b!2673974 ((_ is Concat!12769) (regTwo!16203 (regex!4701 (rule!7107 separatorToken!152))))) b!2674863))

(assert (= (and b!2673974 ((_ is Star!7845) (regTwo!16203 (regex!4701 (rule!7107 separatorToken!152))))) b!2674864))

(assert (= (and b!2673974 ((_ is Union!7845) (regTwo!16203 (regex!4701 (rule!7107 separatorToken!152))))) b!2674865))

(declare-fun b!2674866 () Bool)

(declare-fun e!1686051 () Bool)

(assert (=> b!2674866 (= e!1686051 tp_is_empty!13821)))

(declare-fun b!2674869 () Bool)

(declare-fun tp!845718 () Bool)

(declare-fun tp!845719 () Bool)

(assert (=> b!2674869 (= e!1686051 (and tp!845718 tp!845719))))

(declare-fun b!2674868 () Bool)

(declare-fun tp!845717 () Bool)

(assert (=> b!2674868 (= e!1686051 tp!845717)))

(assert (=> b!2673972 (= tp!845629 e!1686051)))

(declare-fun b!2674867 () Bool)

(declare-fun tp!845716 () Bool)

(declare-fun tp!845715 () Bool)

(assert (=> b!2674867 (= e!1686051 (and tp!845716 tp!845715))))

(assert (= (and b!2673972 ((_ is ElementMatch!7845) (regOne!16202 (regex!4701 (rule!7107 separatorToken!152))))) b!2674866))

(assert (= (and b!2673972 ((_ is Concat!12769) (regOne!16202 (regex!4701 (rule!7107 separatorToken!152))))) b!2674867))

(assert (= (and b!2673972 ((_ is Star!7845) (regOne!16202 (regex!4701 (rule!7107 separatorToken!152))))) b!2674868))

(assert (= (and b!2673972 ((_ is Union!7845) (regOne!16202 (regex!4701 (rule!7107 separatorToken!152))))) b!2674869))

(declare-fun b!2674870 () Bool)

(declare-fun e!1686052 () Bool)

(assert (=> b!2674870 (= e!1686052 tp_is_empty!13821)))

(declare-fun b!2674873 () Bool)

(declare-fun tp!845723 () Bool)

(declare-fun tp!845724 () Bool)

(assert (=> b!2674873 (= e!1686052 (and tp!845723 tp!845724))))

(declare-fun b!2674872 () Bool)

(declare-fun tp!845722 () Bool)

(assert (=> b!2674872 (= e!1686052 tp!845722)))

(assert (=> b!2673972 (= tp!845628 e!1686052)))

(declare-fun b!2674871 () Bool)

(declare-fun tp!845721 () Bool)

(declare-fun tp!845720 () Bool)

(assert (=> b!2674871 (= e!1686052 (and tp!845721 tp!845720))))

(assert (= (and b!2673972 ((_ is ElementMatch!7845) (regTwo!16202 (regex!4701 (rule!7107 separatorToken!152))))) b!2674870))

(assert (= (and b!2673972 ((_ is Concat!12769) (regTwo!16202 (regex!4701 (rule!7107 separatorToken!152))))) b!2674871))

(assert (= (and b!2673972 ((_ is Star!7845) (regTwo!16202 (regex!4701 (rule!7107 separatorToken!152))))) b!2674872))

(assert (= (and b!2673972 ((_ is Union!7845) (regTwo!16202 (regex!4701 (rule!7107 separatorToken!152))))) b!2674873))

(declare-fun b!2674874 () Bool)

(declare-fun e!1686053 () Bool)

(assert (=> b!2674874 (= e!1686053 tp_is_empty!13821)))

(declare-fun b!2674877 () Bool)

(declare-fun tp!845728 () Bool)

(declare-fun tp!845729 () Bool)

(assert (=> b!2674877 (= e!1686053 (and tp!845728 tp!845729))))

(declare-fun b!2674876 () Bool)

(declare-fun tp!845727 () Bool)

(assert (=> b!2674876 (= e!1686053 tp!845727)))

(assert (=> b!2673973 (= tp!845630 e!1686053)))

(declare-fun b!2674875 () Bool)

(declare-fun tp!845726 () Bool)

(declare-fun tp!845725 () Bool)

(assert (=> b!2674875 (= e!1686053 (and tp!845726 tp!845725))))

(assert (= (and b!2673973 ((_ is ElementMatch!7845) (reg!8174 (regex!4701 (rule!7107 separatorToken!152))))) b!2674874))

(assert (= (and b!2673973 ((_ is Concat!12769) (reg!8174 (regex!4701 (rule!7107 separatorToken!152))))) b!2674875))

(assert (= (and b!2673973 ((_ is Star!7845) (reg!8174 (regex!4701 (rule!7107 separatorToken!152))))) b!2674876))

(assert (= (and b!2673973 ((_ is Union!7845) (reg!8174 (regex!4701 (rule!7107 separatorToken!152))))) b!2674877))

(declare-fun b!2674880 () Bool)

(declare-fun e!1686056 () Bool)

(assert (=> b!2674880 (= e!1686056 true)))

(declare-fun b!2674879 () Bool)

(declare-fun e!1686055 () Bool)

(assert (=> b!2674879 (= e!1686055 e!1686056)))

(declare-fun b!2674878 () Bool)

(declare-fun e!1686054 () Bool)

(assert (=> b!2674878 (= e!1686054 e!1686055)))

(assert (=> b!2673926 e!1686054))

(assert (= b!2674879 b!2674880))

(assert (= b!2674878 b!2674879))

(assert (= (and b!2673926 ((_ is Cons!30779) (t!223504 rules!1712))) b!2674878))

(assert (=> b!2674880 (< (dynLambda!13356 order!16955 (toValue!6643 (transformation!4701 (h!36199 (t!223504 rules!1712))))) (dynLambda!13357 order!16957 lambda!99890))))

(assert (=> b!2674880 (< (dynLambda!13358 order!16959 (toChars!6502 (transformation!4701 (h!36199 (t!223504 rules!1712))))) (dynLambda!13357 order!16957 lambda!99890))))

(declare-fun b!2674881 () Bool)

(declare-fun e!1686057 () Bool)

(assert (=> b!2674881 (= e!1686057 tp_is_empty!13821)))

(declare-fun b!2674884 () Bool)

(declare-fun tp!845733 () Bool)

(declare-fun tp!845734 () Bool)

(assert (=> b!2674884 (= e!1686057 (and tp!845733 tp!845734))))

(declare-fun b!2674883 () Bool)

(declare-fun tp!845732 () Bool)

(assert (=> b!2674883 (= e!1686057 tp!845732)))

(assert (=> b!2673981 (= tp!845636 e!1686057)))

(declare-fun b!2674882 () Bool)

(declare-fun tp!845731 () Bool)

(declare-fun tp!845730 () Bool)

(assert (=> b!2674882 (= e!1686057 (and tp!845731 tp!845730))))

(assert (= (and b!2673981 ((_ is ElementMatch!7845) (reg!8174 (regex!4701 (h!36199 rules!1712))))) b!2674881))

(assert (= (and b!2673981 ((_ is Concat!12769) (reg!8174 (regex!4701 (h!36199 rules!1712))))) b!2674882))

(assert (= (and b!2673981 ((_ is Star!7845) (reg!8174 (regex!4701 (h!36199 rules!1712))))) b!2674883))

(assert (= (and b!2673981 ((_ is Union!7845) (reg!8174 (regex!4701 (h!36199 rules!1712))))) b!2674884))

(declare-fun b!2674885 () Bool)

(declare-fun e!1686058 () Bool)

(assert (=> b!2674885 (= e!1686058 tp_is_empty!13821)))

(declare-fun b!2674888 () Bool)

(declare-fun tp!845738 () Bool)

(declare-fun tp!845739 () Bool)

(assert (=> b!2674888 (= e!1686058 (and tp!845738 tp!845739))))

(declare-fun b!2674887 () Bool)

(declare-fun tp!845737 () Bool)

(assert (=> b!2674887 (= e!1686058 tp!845737)))

(assert (=> b!2673982 (= tp!845637 e!1686058)))

(declare-fun b!2674886 () Bool)

(declare-fun tp!845736 () Bool)

(declare-fun tp!845735 () Bool)

(assert (=> b!2674886 (= e!1686058 (and tp!845736 tp!845735))))

(assert (= (and b!2673982 ((_ is ElementMatch!7845) (regOne!16203 (regex!4701 (h!36199 rules!1712))))) b!2674885))

(assert (= (and b!2673982 ((_ is Concat!12769) (regOne!16203 (regex!4701 (h!36199 rules!1712))))) b!2674886))

(assert (= (and b!2673982 ((_ is Star!7845) (regOne!16203 (regex!4701 (h!36199 rules!1712))))) b!2674887))

(assert (= (and b!2673982 ((_ is Union!7845) (regOne!16203 (regex!4701 (h!36199 rules!1712))))) b!2674888))

(declare-fun b!2674889 () Bool)

(declare-fun e!1686059 () Bool)

(assert (=> b!2674889 (= e!1686059 tp_is_empty!13821)))

(declare-fun b!2674892 () Bool)

(declare-fun tp!845743 () Bool)

(declare-fun tp!845744 () Bool)

(assert (=> b!2674892 (= e!1686059 (and tp!845743 tp!845744))))

(declare-fun b!2674891 () Bool)

(declare-fun tp!845742 () Bool)

(assert (=> b!2674891 (= e!1686059 tp!845742)))

(assert (=> b!2673982 (= tp!845638 e!1686059)))

(declare-fun b!2674890 () Bool)

(declare-fun tp!845741 () Bool)

(declare-fun tp!845740 () Bool)

(assert (=> b!2674890 (= e!1686059 (and tp!845741 tp!845740))))

(assert (= (and b!2673982 ((_ is ElementMatch!7845) (regTwo!16203 (regex!4701 (h!36199 rules!1712))))) b!2674889))

(assert (= (and b!2673982 ((_ is Concat!12769) (regTwo!16203 (regex!4701 (h!36199 rules!1712))))) b!2674890))

(assert (= (and b!2673982 ((_ is Star!7845) (regTwo!16203 (regex!4701 (h!36199 rules!1712))))) b!2674891))

(assert (= (and b!2673982 ((_ is Union!7845) (regTwo!16203 (regex!4701 (h!36199 rules!1712))))) b!2674892))

(declare-fun b!2674893 () Bool)

(declare-fun e!1686060 () Bool)

(assert (=> b!2674893 (= e!1686060 tp_is_empty!13821)))

(declare-fun b!2674896 () Bool)

(declare-fun tp!845748 () Bool)

(declare-fun tp!845749 () Bool)

(assert (=> b!2674896 (= e!1686060 (and tp!845748 tp!845749))))

(declare-fun b!2674895 () Bool)

(declare-fun tp!845747 () Bool)

(assert (=> b!2674895 (= e!1686060 tp!845747)))

(assert (=> b!2673980 (= tp!845635 e!1686060)))

(declare-fun b!2674894 () Bool)

(declare-fun tp!845746 () Bool)

(declare-fun tp!845745 () Bool)

(assert (=> b!2674894 (= e!1686060 (and tp!845746 tp!845745))))

(assert (= (and b!2673980 ((_ is ElementMatch!7845) (regOne!16202 (regex!4701 (h!36199 rules!1712))))) b!2674893))

(assert (= (and b!2673980 ((_ is Concat!12769) (regOne!16202 (regex!4701 (h!36199 rules!1712))))) b!2674894))

(assert (= (and b!2673980 ((_ is Star!7845) (regOne!16202 (regex!4701 (h!36199 rules!1712))))) b!2674895))

(assert (= (and b!2673980 ((_ is Union!7845) (regOne!16202 (regex!4701 (h!36199 rules!1712))))) b!2674896))

(declare-fun b!2674897 () Bool)

(declare-fun e!1686061 () Bool)

(assert (=> b!2674897 (= e!1686061 tp_is_empty!13821)))

(declare-fun b!2674900 () Bool)

(declare-fun tp!845753 () Bool)

(declare-fun tp!845754 () Bool)

(assert (=> b!2674900 (= e!1686061 (and tp!845753 tp!845754))))

(declare-fun b!2674899 () Bool)

(declare-fun tp!845752 () Bool)

(assert (=> b!2674899 (= e!1686061 tp!845752)))

(assert (=> b!2673980 (= tp!845634 e!1686061)))

(declare-fun b!2674898 () Bool)

(declare-fun tp!845751 () Bool)

(declare-fun tp!845750 () Bool)

(assert (=> b!2674898 (= e!1686061 (and tp!845751 tp!845750))))

(assert (= (and b!2673980 ((_ is ElementMatch!7845) (regTwo!16202 (regex!4701 (h!36199 rules!1712))))) b!2674897))

(assert (= (and b!2673980 ((_ is Concat!12769) (regTwo!16202 (regex!4701 (h!36199 rules!1712))))) b!2674898))

(assert (= (and b!2673980 ((_ is Star!7845) (regTwo!16202 (regex!4701 (h!36199 rules!1712))))) b!2674899))

(assert (= (and b!2673980 ((_ is Union!7845) (regTwo!16202 (regex!4701 (h!36199 rules!1712))))) b!2674900))

(declare-fun b!2674901 () Bool)

(declare-fun e!1686062 () Bool)

(assert (=> b!2674901 (= e!1686062 tp_is_empty!13821)))

(declare-fun b!2674904 () Bool)

(declare-fun tp!845758 () Bool)

(declare-fun tp!845759 () Bool)

(assert (=> b!2674904 (= e!1686062 (and tp!845758 tp!845759))))

(declare-fun b!2674903 () Bool)

(declare-fun tp!845757 () Bool)

(assert (=> b!2674903 (= e!1686062 tp!845757)))

(assert (=> b!2673964 (= tp!845622 e!1686062)))

(declare-fun b!2674902 () Bool)

(declare-fun tp!845756 () Bool)

(declare-fun tp!845755 () Bool)

(assert (=> b!2674902 (= e!1686062 (and tp!845756 tp!845755))))

(assert (= (and b!2673964 ((_ is ElementMatch!7845) (reg!8174 (regex!4701 (rule!7107 (h!36200 l!4335)))))) b!2674901))

(assert (= (and b!2673964 ((_ is Concat!12769) (reg!8174 (regex!4701 (rule!7107 (h!36200 l!4335)))))) b!2674902))

(assert (= (and b!2673964 ((_ is Star!7845) (reg!8174 (regex!4701 (rule!7107 (h!36200 l!4335)))))) b!2674903))

(assert (= (and b!2673964 ((_ is Union!7845) (reg!8174 (regex!4701 (rule!7107 (h!36200 l!4335)))))) b!2674904))

(declare-fun b!2674905 () Bool)

(declare-fun e!1686063 () Bool)

(assert (=> b!2674905 (= e!1686063 tp_is_empty!13821)))

(declare-fun b!2674908 () Bool)

(declare-fun tp!845763 () Bool)

(declare-fun tp!845764 () Bool)

(assert (=> b!2674908 (= e!1686063 (and tp!845763 tp!845764))))

(declare-fun b!2674907 () Bool)

(declare-fun tp!845762 () Bool)

(assert (=> b!2674907 (= e!1686063 tp!845762)))

(assert (=> b!2673965 (= tp!845623 e!1686063)))

(declare-fun b!2674906 () Bool)

(declare-fun tp!845761 () Bool)

(declare-fun tp!845760 () Bool)

(assert (=> b!2674906 (= e!1686063 (and tp!845761 tp!845760))))

(assert (= (and b!2673965 ((_ is ElementMatch!7845) (regOne!16203 (regex!4701 (rule!7107 (h!36200 l!4335)))))) b!2674905))

(assert (= (and b!2673965 ((_ is Concat!12769) (regOne!16203 (regex!4701 (rule!7107 (h!36200 l!4335)))))) b!2674906))

(assert (= (and b!2673965 ((_ is Star!7845) (regOne!16203 (regex!4701 (rule!7107 (h!36200 l!4335)))))) b!2674907))

(assert (= (and b!2673965 ((_ is Union!7845) (regOne!16203 (regex!4701 (rule!7107 (h!36200 l!4335)))))) b!2674908))

(declare-fun b!2674909 () Bool)

(declare-fun e!1686064 () Bool)

(assert (=> b!2674909 (= e!1686064 tp_is_empty!13821)))

(declare-fun b!2674912 () Bool)

(declare-fun tp!845768 () Bool)

(declare-fun tp!845769 () Bool)

(assert (=> b!2674912 (= e!1686064 (and tp!845768 tp!845769))))

(declare-fun b!2674911 () Bool)

(declare-fun tp!845767 () Bool)

(assert (=> b!2674911 (= e!1686064 tp!845767)))

(assert (=> b!2673965 (= tp!845624 e!1686064)))

(declare-fun b!2674910 () Bool)

(declare-fun tp!845766 () Bool)

(declare-fun tp!845765 () Bool)

(assert (=> b!2674910 (= e!1686064 (and tp!845766 tp!845765))))

(assert (= (and b!2673965 ((_ is ElementMatch!7845) (regTwo!16203 (regex!4701 (rule!7107 (h!36200 l!4335)))))) b!2674909))

(assert (= (and b!2673965 ((_ is Concat!12769) (regTwo!16203 (regex!4701 (rule!7107 (h!36200 l!4335)))))) b!2674910))

(assert (= (and b!2673965 ((_ is Star!7845) (regTwo!16203 (regex!4701 (rule!7107 (h!36200 l!4335)))))) b!2674911))

(assert (= (and b!2673965 ((_ is Union!7845) (regTwo!16203 (regex!4701 (rule!7107 (h!36200 l!4335)))))) b!2674912))

(declare-fun b_lambda!81553 () Bool)

(assert (= b_lambda!81527 (or (and b!2673993 b_free!75363 (= (toChars!6502 (transformation!4701 (h!36199 (t!223504 rules!1712)))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))))) (and b!2673522 b_free!75339 (= (toChars!6502 (transformation!4701 (h!36199 rules!1712))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))))) (and b!2673519 b_free!75343 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))))) (and b!2673517 b_free!75347 (= (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))))) (and b!2673951 b_free!75359) (and b!2674826 b_free!75367 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 (t!223505 l!4335)))))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))))) (and b!2674853 b_free!75371 (= (toChars!6502 (transformation!4701 (h!36199 (t!223504 (t!223504 rules!1712))))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))))) b_lambda!81553)))

(declare-fun b_lambda!81555 () Bool)

(assert (= b_lambda!81529 (or b!2673897 b_lambda!81555)))

(declare-fun bs!479727 () Bool)

(declare-fun d!764831 () Bool)

(assert (= bs!479727 (and d!764831 b!2673897)))

(assert (=> bs!479727 (= (dynLambda!13362 lambda!99887 (h!36200 (t!223505 l!4335))) (rulesProduceIndividualToken!2010 thiss!14116 rules!1712 (h!36200 (t!223505 l!4335))))))

(assert (=> bs!479727 m!3040931))

(assert (=> d!764625 d!764831))

(declare-fun b_lambda!81557 () Bool)

(assert (= b_lambda!81533 (or b!2673506 b_lambda!81557)))

(declare-fun bs!479728 () Bool)

(declare-fun d!764833 () Bool)

(assert (= bs!479728 (and d!764833 b!2673506)))

(assert (=> bs!479728 (= (dynLambda!13362 lambda!99877 (h!36200 (t!223505 l!4335))) (not (isSeparator!4701 (rule!7107 (h!36200 (t!223505 l!4335))))))))

(assert (=> b!2674572 d!764833))

(declare-fun b_lambda!81559 () Bool)

(assert (= b_lambda!81535 (or d!764365 b_lambda!81559)))

(declare-fun bs!479729 () Bool)

(declare-fun d!764835 () Bool)

(assert (= bs!479729 (and d!764835 d!764365)))

(assert (=> bs!479729 (= (dynLambda!13362 lambda!99890 (h!36200 l!4335)) (rulesProduceIndividualToken!2010 thiss!14116 rules!1712 (h!36200 l!4335)))))

(assert (=> bs!479729 m!3039931))

(assert (=> b!2674580 d!764835))

(declare-fun b_lambda!81561 () Bool)

(assert (= b_lambda!81551 (or b!2673516 b_lambda!81561)))

(assert (=> b!2674679 d!764373))

(declare-fun b_lambda!81563 () Bool)

(assert (= b_lambda!81549 (or b!2673516 b_lambda!81563)))

(assert (=> d!764751 d!764373))

(declare-fun b_lambda!81565 () Bool)

(assert (= b_lambda!81531 (or (and b!2673993 b_free!75363 (= (toChars!6502 (transformation!4701 (h!36199 (t!223504 rules!1712)))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))))) (and b!2673522 b_free!75339 (= (toChars!6502 (transformation!4701 (h!36199 rules!1712))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))))) (and b!2673519 b_free!75343 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 l!4335)))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))))) (and b!2673517 b_free!75347 (= (toChars!6502 (transformation!4701 (rule!7107 separatorToken!152))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))))) (and b!2673951 b_free!75359) (and b!2674826 b_free!75367 (= (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 (t!223505 l!4335)))))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))))) (and b!2674853 b_free!75371 (= (toChars!6502 (transformation!4701 (h!36199 (t!223504 (t!223504 rules!1712))))) (toChars!6502 (transformation!4701 (rule!7107 (h!36200 (t!223505 l!4335))))))) b_lambda!81565)))

(check-sat (not b!2674844) (not d!764397) (not b!2674782) (not b!2674904) (not b_lambda!81557) (not d!764447) b_and!197681 (not b!2674706) (not d!764591) (not b!2674278) (not b!2674840) (not b!2674765) (not b!2674505) b_and!197685 (not tb!149899) (not b_lambda!81501) (not b!2674527) (not d!764383) (not d!764527) (not b!2674064) (not b!2674792) (not tb!149939) (not d!764763) (not b!2674659) (not b_lambda!81515) (not b!2674498) (not b!2674868) (not d!764773) (not b_lambda!81555) (not b!2674502) (not b!2674492) (not d!764695) (not b!2674564) (not b!2674578) (not d!764807) (not bm!172577) (not d!764761) (not b!2674141) (not d!764697) (not d!764649) (not d!764625) (not b!2674528) (not b!2674687) (not d!764691) (not d!764819) (not b!2674544) (not b!2674722) (not d!764821) (not d!764655) (not d!764659) (not d!764765) (not b!2674042) (not b!2674812) (not b_lambda!81499) (not d!764445) (not b_next!76075) tp_is_empty!13821 (not b!2674560) (not d!764615) (not b!2674898) (not b!2674902) (not b!2674809) (not tb!149929) (not d!764457) (not b!2674876) (not b!2674691) (not b!2674682) (not b!2674825) (not b!2674062) (not b_lambda!81545) (not b!2674903) (not b!2674579) (not b!2674887) (not b!2674724) (not b!2674523) (not b!2674824) (not b!2674387) (not b!2674099) (not b_lambda!81561) (not b!2674496) (not d!764403) (not d!764825) (not d!764643) (not d!764647) (not b!2674807) (not d!764779) (not b!2674875) (not d!764813) (not b!2674389) (not b!2674243) (not bs!479729) (not d!764507) (not b!2674251) (not b!2674571) (not d!764489) (not b!2673931) b_and!197707 (not d!764525) (not b_next!76067) (not b!2674895) b_and!197719 (not b!2674241) (not d!764791) b_and!197679 (not b!2674688) (not b_next!76047) (not b!2674888) (not d!764789) (not b!2674573) (not b!2674899) (not b!2674851) (not b!2674504) (not d!764787) (not b!2674911) (not b_next!76065) (not b!2674063) (not d!764505) b_and!197725 (not b!2674484) (not b!2674599) (not b!2674680) (not b!2674238) (not b_lambda!81503) (not d!764451) (not d!764521) (not b!2674565) (not b!2674147) (not b_lambda!81505) (not d!764783) (not b!2674123) (not b!2674810) (not b!2674781) (not b!2674805) (not b!2674561) (not b!2674524) (not b!2674134) (not b!2674890) (not d!764449) (not b!2674912) (not bm!172573) (not b!2674270) (not b!2674522) (not d!764437) (not b!2674867) b_and!197723 (not b!2674771) (not b!2674872) (not b!2674811) (not b!2674597) (not b_lambda!81553) (not b!2674871) (not b!2674864) (not bm!172568) (not b!2674133) (not d!764639) (not b!2674803) (not bm!172552) (not bm!172570) (not b_lambda!81563) (not b!2674791) (not tb!149869) (not b!2674108) (not b!2674845) (not b!2674531) b_and!197721 (not b!2674850) (not b!2674852) (not b!2674869) (not b!2674551) (not b!2674689) (not b!2674787) (not bs!479727) (not b!2674545) (not b!2674723) (not b!2674462) (not d!764811) (not b!2674681) (not d!764433) (not d!764603) (not b!2674554) (not b!2674808) (not d!764781) (not b!2674250) (not d!764651) (not b!2674854) (not d!764455) (not b!2674719) (not b!2674777) (not d!764769) (not b!2674526) (not b!2674863) (not b!2674263) (not d!764671) (not b!2674385) (not b!2674891) (not b!2674254) (not b!2674388) (not b!2674701) (not b!2674540) (not b!2674146) (not b_lambda!81513) (not b_lambda!81497) (not b!2674692) (not b!2674794) (not b!2674873) (not d!764823) (not b!2674593) (not d!764745) (not b_lambda!81565) (not b!2674464) (not b!2674240) (not b!2674538) (not b!2674910) (not bm!172574) (not d!764523) b_and!197683 (not d!764491) (not b!2674849) (not b!2674878) (not b!2674883) (not b!2674097) (not b!2674239) (not b!2674253) (not b!2674720) (not b!2674658) b_and!197701 (not b!2674444) (not b!2674894) (not b!2674694) (not b!2674494) (not d!764657) (not d!764421) (not b!2674556) (not b!2674244) (not b_next!76049) (not b!2674265) (not b!2674145) (not b!2674563) (not b!2674769) (not d!764669) (not d!764517) (not b!2674236) (not b!2674096) (not d!764485) (not b!2674736) (not bm!172567) (not b!2674529) b_and!197705 (not b!2674793) (not tb!149859) (not b!2674596) (not bm!172565) (not b!2674493) (not d!764817) (not d!764681) (not b!2674136) (not b!2674267) (not b!2674261) (not b_next!76063) (not d!764799) (not d!764809) (not b!2674818) (not d!764609) (not b!2674908) (not b!2674548) (not b!2674276) (not b!2674857) (not b!2674892) (not b_lambda!81559) (not bm!172551) (not b!2674557) (not b!2674886) (not b!2674683) (not b!2674463) (not d!764435) (not d!764693) (not b_next!76069) (not b!2674386) (not bm!172550) (not b!2674549) (not d!764487) (not b!2673676) (not b!2674721) (not b!2674823) (not b!2674896) (not b!2674877) (not b!2674861) (not b!2674684) (not b!2674848) (not b!2674581) (not b!2674532) (not b!2674118) b_and!197699 (not b!2674859) (not b!2674521) (not b!2674657) (not b_next!76041) (not b_next!76073) (not b!2674046) (not b!2674539) (not b!2674583) (not b!2674704) (not d!764827) (not b_lambda!81521) (not d!764665) (not b!2674860) (not d!764771) (not b_next!76043) (not b!2674109) (not d!764589) (not b!2674882) (not d!764797) (not b!2674269) (not b!2674127) (not d!764627) (not b!2674773) (not b!2674907) (not b!2674485) (not b!2674900) (not b!2674423) (not tb!149889) (not d!764389) (not b!2674770) b_and!197687 (not b!2674906) (not d!764667) (not b_next!76071) (not d!764653) (not d!764587) (not d!764677) (not d!764431) (not b_next!76051) (not d!764775) (not b!2674804) (not b!2674237) (not b!2674813) (not d!764689) (not b!2674686) (not bm!172566) (not b_next!76061) (not b!2674446) (not b!2674703) (not b!2674735) (not b!2674865) (not b!2674846) (not b!2674281) (not b!2674280) (not b!2674098) (not b_next!76045) (not b_lambda!81519) (not b!2674841) (not b!2674491) (not d!764443) b_and!197703 (not b!2674884) (not b!2674842))
(check-sat b_and!197681 b_and!197685 (not b_next!76075) b_and!197725 b_and!197723 b_and!197721 (not b_next!76049) b_and!197705 (not b_next!76063) (not b_next!76069) (not b_next!76043) (not b_next!76061) b_and!197707 (not b_next!76067) b_and!197679 b_and!197719 (not b_next!76047) (not b_next!76065) b_and!197683 b_and!197701 b_and!197699 (not b_next!76041) (not b_next!76073) (not b_next!76051) b_and!197687 (not b_next!76071) (not b_next!76045) b_and!197703)
