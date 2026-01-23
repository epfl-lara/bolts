; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!117932 () Bool)

(assert start!117932)

(declare-fun b!1327482 () Bool)

(declare-fun b_free!32103 () Bool)

(declare-fun b_next!32807 () Bool)

(assert (=> b!1327482 (= b_free!32103 (not b_next!32807))))

(declare-fun tp!384723 () Bool)

(declare-fun b_and!88675 () Bool)

(assert (=> b!1327482 (= tp!384723 b_and!88675)))

(declare-fun b_free!32105 () Bool)

(declare-fun b_next!32809 () Bool)

(assert (=> b!1327482 (= b_free!32105 (not b_next!32809))))

(declare-fun tp!384727 () Bool)

(declare-fun b_and!88677 () Bool)

(assert (=> b!1327482 (= tp!384727 b_and!88677)))

(declare-fun b!1327477 () Bool)

(declare-fun b_free!32107 () Bool)

(declare-fun b_next!32811 () Bool)

(assert (=> b!1327477 (= b_free!32107 (not b_next!32811))))

(declare-fun tp!384721 () Bool)

(declare-fun b_and!88679 () Bool)

(assert (=> b!1327477 (= tp!384721 b_and!88679)))

(declare-fun b_free!32109 () Bool)

(declare-fun b_next!32813 () Bool)

(assert (=> b!1327477 (= b_free!32109 (not b_next!32813))))

(declare-fun tp!384720 () Bool)

(declare-fun b_and!88681 () Bool)

(assert (=> b!1327477 (= tp!384720 b_and!88681)))

(declare-fun b!1327502 () Bool)

(declare-fun b_free!32111 () Bool)

(declare-fun b_next!32815 () Bool)

(assert (=> b!1327502 (= b_free!32111 (not b_next!32815))))

(declare-fun tp!384725 () Bool)

(declare-fun b_and!88683 () Bool)

(assert (=> b!1327502 (= tp!384725 b_and!88683)))

(declare-fun b_free!32113 () Bool)

(declare-fun b_next!32817 () Bool)

(assert (=> b!1327502 (= b_free!32113 (not b_next!32817))))

(declare-fun tp!384719 () Bool)

(declare-fun b_and!88685 () Bool)

(assert (=> b!1327502 (= tp!384719 b_and!88685)))

(declare-fun b!1327488 () Bool)

(assert (=> b!1327488 true))

(assert (=> b!1327488 true))

(declare-fun b!1327492 () Bool)

(assert (=> b!1327492 true))

(declare-fun b!1327468 () Bool)

(assert (=> b!1327468 true))

(declare-fun bs!331407 () Bool)

(declare-fun b!1327485 () Bool)

(assert (= bs!331407 (and b!1327485 b!1327468)))

(declare-fun lambda!54990 () Int)

(declare-fun lambda!54989 () Int)

(assert (=> bs!331407 (not (= lambda!54990 lambda!54989))))

(assert (=> b!1327485 true))

(declare-fun e!850535 () Bool)

(declare-datatypes ((List!13557 0))(
  ( (Nil!13491) (Cons!13491 (h!18892 (_ BitVec 16)) (t!118858 List!13557)) )
))
(declare-datatypes ((TokenValue!2426 0))(
  ( (FloatLiteralValue!4852 (text!17427 List!13557)) (TokenValueExt!2425 (__x!8681 Int)) (Broken!12130 (value!76184 List!13557)) (Object!2491) (End!2426) (Def!2426) (Underscore!2426) (Match!2426) (Else!2426) (Error!2426) (Case!2426) (If!2426) (Extends!2426) (Abstract!2426) (Class!2426) (Val!2426) (DelimiterValue!4852 (del!2486 List!13557)) (KeywordValue!2432 (value!76185 List!13557)) (CommentValue!4852 (value!76186 List!13557)) (WhitespaceValue!4852 (value!76187 List!13557)) (IndentationValue!2426 (value!76188 List!13557)) (String!16367) (Int32!2426) (Broken!12131 (value!76189 List!13557)) (Boolean!2427) (Unit!19588) (OperatorValue!2429 (op!2486 List!13557)) (IdentifierValue!4852 (value!76190 List!13557)) (IdentifierValue!4853 (value!76191 List!13557)) (WhitespaceValue!4853 (value!76192 List!13557)) (True!4852) (False!4852) (Broken!12132 (value!76193 List!13557)) (Broken!12133 (value!76194 List!13557)) (True!4853) (RightBrace!2426) (RightBracket!2426) (Colon!2426) (Null!2426) (Comma!2426) (LeftBracket!2426) (False!4853) (LeftBrace!2426) (ImaginaryLiteralValue!2426 (text!17428 List!13557)) (StringLiteralValue!7278 (value!76195 List!13557)) (EOFValue!2426 (value!76196 List!13557)) (IdentValue!2426 (value!76197 List!13557)) (DelimiterValue!4853 (value!76198 List!13557)) (DedentValue!2426 (value!76199 List!13557)) (NewLineValue!2426 (value!76200 List!13557)) (IntegerValue!7278 (value!76201 (_ BitVec 32)) (text!17429 List!13557)) (IntegerValue!7279 (value!76202 Int) (text!17430 List!13557)) (Times!2426) (Or!2426) (Equal!2426) (Minus!2426) (Broken!12134 (value!76203 List!13557)) (And!2426) (Div!2426) (LessEqual!2426) (Mod!2426) (Concat!6076) (Not!2426) (Plus!2426) (SpaceValue!2426 (value!76204 List!13557)) (IntegerValue!7280 (value!76205 Int) (text!17431 List!13557)) (StringLiteralValue!7279 (text!17432 List!13557)) (FloatLiteralValue!4853 (text!17433 List!13557)) (BytesLiteralValue!2426 (value!76206 List!13557)) (CommentValue!4853 (value!76207 List!13557)) (StringLiteralValue!7280 (value!76208 List!13557)) (ErrorTokenValue!2426 (msg!2487 List!13557)) )
))
(declare-datatypes ((C!7590 0))(
  ( (C!7591 (val!4355 Int)) )
))
(declare-datatypes ((List!13558 0))(
  ( (Nil!13492) (Cons!13492 (h!18893 C!7590) (t!118859 List!13558)) )
))
(declare-datatypes ((IArray!8889 0))(
  ( (IArray!8890 (innerList!4502 List!13558)) )
))
(declare-datatypes ((Conc!4442 0))(
  ( (Node!4442 (left!11590 Conc!4442) (right!11920 Conc!4442) (csize!9114 Int) (cheight!4653 Int)) (Leaf!6807 (xs!7157 IArray!8889) (csize!9115 Int)) (Empty!4442) )
))
(declare-datatypes ((BalanceConc!8824 0))(
  ( (BalanceConc!8825 (c!217616 Conc!4442)) )
))
(declare-datatypes ((Regex!3650 0))(
  ( (ElementMatch!3650 (c!217617 C!7590)) (Concat!6077 (regOne!7812 Regex!3650) (regTwo!7812 Regex!3650)) (EmptyExpr!3650) (Star!3650 (reg!3979 Regex!3650)) (EmptyLang!3650) (Union!3650 (regOne!7813 Regex!3650) (regTwo!7813 Regex!3650)) )
))
(declare-datatypes ((String!16368 0))(
  ( (String!16369 (value!76209 String)) )
))
(declare-datatypes ((TokenValueInjection!4512 0))(
  ( (TokenValueInjection!4513 (toValue!3567 Int) (toChars!3426 Int)) )
))
(declare-datatypes ((Rule!4472 0))(
  ( (Rule!4473 (regex!2336 Regex!3650) (tag!2598 String!16368) (isSeparator!2336 Bool) (transformation!2336 TokenValueInjection!4512)) )
))
(declare-datatypes ((Token!4334 0))(
  ( (Token!4335 (value!76210 TokenValue!2426) (rule!4081 Rule!4472) (size!10978 Int) (originalCharacters!3198 List!13558)) )
))
(declare-fun t1!34 () Token!4334)

(declare-fun b!1327458 () Bool)

(declare-fun tp!384726 () Bool)

(declare-fun e!850525 () Bool)

(declare-fun inv!17843 (String!16368) Bool)

(declare-fun inv!17846 (TokenValueInjection!4512) Bool)

(assert (=> b!1327458 (= e!850525 (and tp!384726 (inv!17843 (tag!2598 (rule!4081 t1!34))) (inv!17846 (transformation!2336 (rule!4081 t1!34))) e!850535))))

(declare-fun tp!384722 () Bool)

(declare-fun b!1327459 () Bool)

(declare-fun e!850530 () Bool)

(declare-fun e!850532 () Bool)

(declare-fun t2!34 () Token!4334)

(declare-fun inv!21 (TokenValue!2426) Bool)

(assert (=> b!1327459 (= e!850532 (and (inv!21 (value!76210 t2!34)) e!850530 tp!384722))))

(declare-fun b!1327460 () Bool)

(declare-fun res!597725 () Bool)

(declare-fun e!850524 () Bool)

(assert (=> b!1327460 (=> res!597725 e!850524)))

(declare-fun lt!438933 () BalanceConc!8824)

(declare-datatypes ((List!13559 0))(
  ( (Nil!13493) (Cons!13493 (h!18894 Token!4334) (t!118860 List!13559)) )
))
(declare-fun lt!438940 () List!13559)

(declare-datatypes ((LexerInterface!2031 0))(
  ( (LexerInterfaceExt!2028 (__x!8682 Int)) (Lexer!2029) )
))
(declare-fun thiss!19762 () LexerInterface!2031)

(declare-datatypes ((List!13560 0))(
  ( (Nil!13494) (Cons!13494 (h!18895 Rule!4472) (t!118861 List!13560)) )
))
(declare-fun rules!2550 () List!13560)

(declare-datatypes ((tuple2!13136 0))(
  ( (tuple2!13137 (_1!7454 List!13559) (_2!7454 List!13558)) )
))
(declare-fun lexList!569 (LexerInterface!2031 List!13560 List!13558) tuple2!13136)

(declare-fun list!5108 (BalanceConc!8824) List!13558)

(assert (=> b!1327460 (= res!597725 (not (= (lexList!569 thiss!19762 rules!2550 (list!5108 lt!438933)) (tuple2!13137 lt!438940 Nil!13492))))))

(declare-fun tp!384724 () Bool)

(declare-fun e!850523 () Bool)

(declare-fun b!1327461 () Bool)

(assert (=> b!1327461 (= e!850530 (and tp!384724 (inv!17843 (tag!2598 (rule!4081 t2!34))) (inv!17846 (transformation!2336 (rule!4081 t2!34))) e!850523))))

(declare-fun b!1327462 () Bool)

(declare-fun e!850541 () Bool)

(declare-fun e!850527 () Bool)

(assert (=> b!1327462 (= e!850541 e!850527)))

(declare-fun res!597741 () Bool)

(assert (=> b!1327462 (=> res!597741 e!850527)))

(declare-fun lt!438947 () Bool)

(assert (=> b!1327462 (= res!597741 lt!438947)))

(declare-datatypes ((Unit!19589 0))(
  ( (Unit!19590) )
))
(declare-fun lt!438943 () Unit!19589)

(declare-fun e!850533 () Unit!19589)

(assert (=> b!1327462 (= lt!438943 e!850533)))

(declare-fun c!217614 () Bool)

(assert (=> b!1327462 (= c!217614 lt!438947)))

(declare-fun lt!438934 () C!7590)

(declare-fun contains!2424 (List!13558 C!7590) Bool)

(declare-fun usedCharacters!201 (Regex!3650) List!13558)

(assert (=> b!1327462 (= lt!438947 (not (contains!2424 (usedCharacters!201 (regex!2336 (rule!4081 t1!34))) lt!438934)))))

(declare-fun b!1327463 () Bool)

(declare-fun Unit!19591 () Unit!19589)

(assert (=> b!1327463 (= e!850533 Unit!19591)))

(declare-fun b!1327464 () Bool)

(declare-fun e!850511 () Bool)

(declare-fun e!850522 () Bool)

(assert (=> b!1327464 (= e!850511 e!850522)))

(declare-fun res!597726 () Bool)

(assert (=> b!1327464 (=> (not res!597726) (not e!850522))))

(declare-fun lt!438932 () BalanceConc!8824)

(declare-fun size!10979 (BalanceConc!8824) Int)

(assert (=> b!1327464 (= res!597726 (> (size!10979 lt!438932) 0))))

(declare-fun charsOf!1308 (Token!4334) BalanceConc!8824)

(assert (=> b!1327464 (= lt!438932 (charsOf!1308 t2!34))))

(declare-fun b!1327465 () Bool)

(declare-fun res!597734 () Bool)

(declare-fun e!850536 () Bool)

(assert (=> b!1327465 (=> res!597734 e!850536)))

(declare-fun contains!2425 (List!13560 Rule!4472) Bool)

(assert (=> b!1327465 (= res!597734 (not (contains!2425 rules!2550 (rule!4081 t2!34))))))

(declare-fun b!1327466 () Bool)

(declare-fun res!597722 () Bool)

(declare-fun e!850519 () Bool)

(assert (=> b!1327466 (=> res!597722 e!850519)))

(declare-fun lt!438939 () List!13559)

(declare-fun lt!438951 () BalanceConc!8824)

(assert (=> b!1327466 (= res!597722 (not (= (lexList!569 thiss!19762 rules!2550 (list!5108 lt!438951)) (tuple2!13137 lt!438939 Nil!13492))))))

(declare-fun b!1327467 () Bool)

(declare-fun e!850514 () Bool)

(assert (=> b!1327467 (= e!850522 e!850514)))

(declare-fun res!597750 () Bool)

(assert (=> b!1327467 (=> (not res!597750) (not e!850514))))

(declare-fun lt!438935 () Regex!3650)

(declare-fun lt!438930 () List!13558)

(declare-fun prefixMatch!163 (Regex!3650 List!13558) Bool)

(assert (=> b!1327467 (= res!597750 (prefixMatch!163 lt!438935 lt!438930))))

(declare-fun rulesRegex!221 (LexerInterface!2031 List!13560) Regex!3650)

(assert (=> b!1327467 (= lt!438935 (rulesRegex!221 thiss!19762 rules!2550))))

(declare-fun lt!438953 () List!13558)

(declare-fun lt!438941 () C!7590)

(declare-fun ++!3445 (List!13558 List!13558) List!13558)

(assert (=> b!1327467 (= lt!438930 (++!3445 lt!438953 (Cons!13492 lt!438941 Nil!13492)))))

(declare-fun apply!3114 (BalanceConc!8824 Int) C!7590)

(assert (=> b!1327467 (= lt!438941 (apply!3114 lt!438932 0))))

(declare-fun lt!438952 () BalanceConc!8824)

(assert (=> b!1327467 (= lt!438953 (list!5108 lt!438952))))

(assert (=> b!1327467 (= lt!438952 (charsOf!1308 t1!34))))

(declare-fun e!850520 () Bool)

(declare-fun e!850516 () Bool)

(assert (=> b!1327468 (= e!850520 e!850516)))

(declare-fun res!597730 () Bool)

(assert (=> b!1327468 (=> res!597730 e!850516)))

(declare-fun exists!374 (List!13560 Int) Bool)

(assert (=> b!1327468 (= res!597730 (not (exists!374 rules!2550 lambda!54989)))))

(assert (=> b!1327468 (exists!374 rules!2550 lambda!54989)))

(declare-fun lambda!54987 () Int)

(declare-fun lt!438927 () Unit!19589)

(declare-fun lt!438956 () Regex!3650)

(declare-fun lemmaMapContains!79 (List!13560 Int Regex!3650) Unit!19589)

(assert (=> b!1327468 (= lt!438927 (lemmaMapContains!79 rules!2550 lambda!54987 lt!438956))))

(declare-fun b!1327469 () Bool)

(declare-fun res!597721 () Bool)

(assert (=> b!1327469 (=> (not res!597721) (not e!850511))))

(declare-fun rulesProduceIndividualToken!1000 (LexerInterface!2031 List!13560 Token!4334) Bool)

(assert (=> b!1327469 (= res!597721 (rulesProduceIndividualToken!1000 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1327470 () Bool)

(declare-fun res!597724 () Bool)

(assert (=> b!1327470 (=> res!597724 e!850519)))

(declare-datatypes ((IArray!8891 0))(
  ( (IArray!8892 (innerList!4503 List!13559)) )
))
(declare-datatypes ((Conc!4443 0))(
  ( (Node!4443 (left!11591 Conc!4443) (right!11921 Conc!4443) (csize!9116 Int) (cheight!4654 Int)) (Leaf!6808 (xs!7158 IArray!8891) (csize!9117 Int)) (Empty!4443) )
))
(declare-datatypes ((BalanceConc!8826 0))(
  ( (BalanceConc!8827 (c!217618 Conc!4443)) )
))
(declare-datatypes ((tuple2!13138 0))(
  ( (tuple2!13139 (_1!7455 BalanceConc!8826) (_2!7455 BalanceConc!8824)) )
))
(declare-fun lt!438942 () tuple2!13138)

(declare-fun isEmpty!8028 (BalanceConc!8824) Bool)

(assert (=> b!1327470 (= res!597724 (not (isEmpty!8028 (_2!7455 lt!438942))))))

(declare-fun b!1327471 () Bool)

(declare-fun res!597743 () Bool)

(assert (=> b!1327471 (=> (not res!597743) (not e!850522))))

(declare-fun sepAndNonSepRulesDisjointChars!709 (List!13560 List!13560) Bool)

(assert (=> b!1327471 (= res!597743 (sepAndNonSepRulesDisjointChars!709 rules!2550 rules!2550))))

(declare-fun b!1327472 () Bool)

(declare-fun res!597718 () Bool)

(declare-fun e!850539 () Bool)

(assert (=> b!1327472 (=> res!597718 e!850539)))

(declare-fun lt!438945 () List!13558)

(declare-fun matchR!1652 (Regex!3650 List!13558) Bool)

(assert (=> b!1327472 (= res!597718 (not (matchR!1652 lt!438935 lt!438945)))))

(declare-fun b!1327473 () Bool)

(assert (=> b!1327473 (= e!850516 e!850519)))

(declare-fun res!597728 () Bool)

(assert (=> b!1327473 (=> res!597728 e!850519)))

(declare-fun list!5109 (BalanceConc!8826) List!13559)

(assert (=> b!1327473 (= res!597728 (not (= (list!5109 (_1!7455 lt!438942)) lt!438939)))))

(assert (=> b!1327473 (= lt!438939 (Cons!13493 t1!34 Nil!13493))))

(declare-fun lex!866 (LexerInterface!2031 List!13560 BalanceConc!8824) tuple2!13138)

(assert (=> b!1327473 (= lt!438942 (lex!866 thiss!19762 rules!2550 lt!438951))))

(declare-fun print!805 (LexerInterface!2031 BalanceConc!8826) BalanceConc!8824)

(declare-fun singletonSeq!927 (Token!4334) BalanceConc!8826)

(assert (=> b!1327473 (= lt!438951 (print!805 thiss!19762 (singletonSeq!927 t1!34)))))

(declare-fun lt!438936 () Rule!4472)

(declare-fun getWitness!266 (List!13560 Int) Rule!4472)

(assert (=> b!1327473 (= lt!438936 (getWitness!266 rules!2550 lambda!54989))))

(declare-fun b!1327474 () Bool)

(declare-fun res!597747 () Bool)

(assert (=> b!1327474 (=> (not res!597747) (not e!850511))))

(declare-fun isEmpty!8029 (List!13560) Bool)

(assert (=> b!1327474 (= res!597747 (not (isEmpty!8029 rules!2550)))))

(declare-fun b!1327475 () Bool)

(declare-fun e!850537 () Bool)

(assert (=> b!1327475 (= e!850537 (< 0 (size!10979 lt!438952)))))

(declare-fun b!1327476 () Bool)

(declare-fun res!597739 () Bool)

(assert (=> b!1327476 (=> (not res!597739) (not e!850511))))

(assert (=> b!1327476 (= res!597739 (rulesProduceIndividualToken!1000 thiss!19762 rules!2550 t2!34))))

(assert (=> b!1327477 (= e!850523 (and tp!384721 tp!384720))))

(declare-fun b!1327478 () Bool)

(declare-fun e!850518 () Bool)

(declare-fun tp!384718 () Bool)

(assert (=> b!1327478 (= e!850518 (and (inv!21 (value!76210 t1!34)) e!850525 tp!384718))))

(declare-fun b!1327479 () Bool)

(declare-fun res!597751 () Bool)

(assert (=> b!1327479 (=> res!597751 e!850519)))

(assert (=> b!1327479 (= res!597751 (not (contains!2425 rules!2550 (rule!4081 t1!34))))))

(declare-fun b!1327480 () Bool)

(declare-fun res!597727 () Bool)

(assert (=> b!1327480 (=> res!597727 e!850539)))

(assert (=> b!1327480 (= res!597727 (not (contains!2424 lt!438945 lt!438934)))))

(declare-fun b!1327481 () Bool)

(assert (=> b!1327481 (= e!850519 e!850524)))

(declare-fun res!597746 () Bool)

(assert (=> b!1327481 (=> res!597746 e!850524)))

(declare-fun lt!438948 () tuple2!13138)

(assert (=> b!1327481 (= res!597746 (not (= (list!5109 (_1!7455 lt!438948)) lt!438940)))))

(assert (=> b!1327481 (= lt!438940 (Cons!13493 t2!34 Nil!13493))))

(assert (=> b!1327481 (= lt!438948 (lex!866 thiss!19762 rules!2550 lt!438933))))

(assert (=> b!1327481 (= lt!438933 (print!805 thiss!19762 (singletonSeq!927 t2!34)))))

(assert (=> b!1327482 (= e!850535 (and tp!384723 tp!384727))))

(declare-fun b!1327483 () Bool)

(declare-fun res!597733 () Bool)

(assert (=> b!1327483 (=> res!597733 e!850541)))

(declare-fun lt!438931 () List!13558)

(assert (=> b!1327483 (= res!597733 (not (matchR!1652 (regex!2336 (rule!4081 t2!34)) lt!438931)))))

(declare-fun b!1327484 () Bool)

(declare-fun res!597736 () Bool)

(assert (=> b!1327484 (=> (not res!597736) (not e!850522))))

(declare-fun separableTokensPredicate!314 (LexerInterface!2031 Token!4334 Token!4334 List!13560) Bool)

(assert (=> b!1327484 (= res!597736 (not (separableTokensPredicate!314 thiss!19762 t1!34 t2!34 rules!2550)))))

(assert (=> b!1327485 (= e!850536 e!850541)))

(declare-fun res!597749 () Bool)

(assert (=> b!1327485 (=> res!597749 e!850541)))

(assert (=> b!1327485 (= res!597749 (not (matchR!1652 (regex!2336 (rule!4081 t1!34)) lt!438953)))))

(declare-fun lt!438928 () Unit!19589)

(declare-fun forallContained!587 (List!13560 Int Rule!4472) Unit!19589)

(assert (=> b!1327485 (= lt!438928 (forallContained!587 rules!2550 lambda!54990 (rule!4081 t2!34)))))

(declare-fun lt!438955 () Unit!19589)

(assert (=> b!1327485 (= lt!438955 (forallContained!587 rules!2550 lambda!54990 (rule!4081 t1!34)))))

(declare-fun lt!438938 () Unit!19589)

(assert (=> b!1327485 (= lt!438938 (forallContained!587 rules!2550 lambda!54990 lt!438936))))

(declare-fun b!1327486 () Bool)

(declare-fun e!850534 () Bool)

(assert (=> b!1327486 (= e!850534 e!850520)))

(declare-fun res!597719 () Bool)

(assert (=> b!1327486 (=> res!597719 e!850520)))

(declare-datatypes ((List!13561 0))(
  ( (Nil!13495) (Cons!13495 (h!18896 Regex!3650) (t!118862 List!13561)) )
))
(declare-fun contains!2426 (List!13561 Regex!3650) Bool)

(declare-fun map!2971 (List!13560 Int) List!13561)

(assert (=> b!1327486 (= res!597719 (not (contains!2426 (map!2971 rules!2550 lambda!54987) lt!438956)))))

(declare-fun lambda!54988 () Int)

(declare-fun getWitness!267 (List!13561 Int) Regex!3650)

(assert (=> b!1327486 (= lt!438956 (getWitness!267 (map!2971 rules!2550 lambda!54987) lambda!54988))))

(declare-fun b!1327487 () Bool)

(declare-fun e!850526 () Unit!19589)

(declare-fun Unit!19592 () Unit!19589)

(assert (=> b!1327487 (= e!850526 Unit!19592)))

(declare-fun e!850512 () Bool)

(assert (=> b!1327488 (= e!850514 (not e!850512))))

(declare-fun res!597723 () Bool)

(assert (=> b!1327488 (=> res!597723 e!850512)))

(declare-fun lambda!54986 () Int)

(declare-fun Exists!808 (Int) Bool)

(assert (=> b!1327488 (= res!597723 (not (Exists!808 lambda!54986)))))

(assert (=> b!1327488 (Exists!808 lambda!54986)))

(declare-fun lt!438937 () Unit!19589)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!126 (Regex!3650 List!13558) Unit!19589)

(assert (=> b!1327488 (= lt!438937 (lemmaPrefixMatchThenExistsStringThatMatches!126 lt!438935 lt!438930))))

(declare-fun b!1327489 () Bool)

(declare-fun Unit!19593 () Unit!19589)

(assert (=> b!1327489 (= e!850526 Unit!19593)))

(declare-fun lt!438954 () Unit!19589)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!147 (Regex!3650 List!13558 C!7590) Unit!19589)

(declare-fun head!2327 (List!13558) C!7590)

(assert (=> b!1327489 (= lt!438954 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!147 (regex!2336 (rule!4081 t2!34)) lt!438931 (head!2327 lt!438931)))))

(assert (=> b!1327489 false))

(declare-fun b!1327490 () Bool)

(declare-fun e!850515 () Bool)

(assert (=> b!1327490 (= e!850515 e!850539)))

(declare-fun res!597745 () Bool)

(assert (=> b!1327490 (=> res!597745 e!850539)))

(assert (=> b!1327490 (= res!597745 (not (contains!2424 lt!438930 lt!438934)))))

(assert (=> b!1327490 (= lt!438934 (apply!3114 lt!438952 0))))

(declare-fun res!597744 () Bool)

(assert (=> start!117932 (=> (not res!597744) (not e!850511))))

(assert (=> start!117932 (= res!597744 (is-Lexer!2029 thiss!19762))))

(assert (=> start!117932 e!850511))

(assert (=> start!117932 true))

(declare-fun e!850513 () Bool)

(assert (=> start!117932 e!850513))

(declare-fun inv!17847 (Token!4334) Bool)

(assert (=> start!117932 (and (inv!17847 t1!34) e!850518)))

(assert (=> start!117932 (and (inv!17847 t2!34) e!850532)))

(declare-fun b!1327491 () Bool)

(declare-fun res!597742 () Bool)

(assert (=> b!1327491 (=> (not res!597742) (not e!850511))))

(declare-fun rulesInvariant!1901 (LexerInterface!2031 List!13560) Bool)

(assert (=> b!1327491 (= res!597742 (rulesInvariant!1901 thiss!19762 rules!2550))))

(assert (=> b!1327492 (= e!850539 e!850534)))

(declare-fun res!597738 () Bool)

(assert (=> b!1327492 (=> res!597738 e!850534)))

(declare-fun exists!375 (List!13561 Int) Bool)

(assert (=> b!1327492 (= res!597738 (not (exists!375 (map!2971 rules!2550 lambda!54987) lambda!54988)))))

(declare-fun lt!438950 () List!13561)

(assert (=> b!1327492 (exists!375 lt!438950 lambda!54988)))

(declare-fun lt!438929 () Unit!19589)

(declare-fun matchRGenUnionSpec!87 (Regex!3650 List!13561 List!13558) Unit!19589)

(assert (=> b!1327492 (= lt!438929 (matchRGenUnionSpec!87 lt!438935 lt!438950 lt!438945))))

(assert (=> b!1327492 (= lt!438950 (map!2971 rules!2550 lambda!54987))))

(declare-fun b!1327493 () Bool)

(declare-fun res!597717 () Bool)

(assert (=> b!1327493 (=> res!597717 e!850539)))

(assert (=> b!1327493 (= res!597717 (not (contains!2424 lt!438930 lt!438941)))))

(declare-fun b!1327494 () Bool)

(declare-fun Unit!19594 () Unit!19589)

(assert (=> b!1327494 (= e!850533 Unit!19594)))

(declare-fun lt!438944 () Unit!19589)

(assert (=> b!1327494 (= lt!438944 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!147 (regex!2336 (rule!4081 t1!34)) lt!438953 (head!2327 lt!438953)))))

(assert (=> b!1327494 false))

(declare-fun b!1327495 () Bool)

(declare-fun e!850517 () Bool)

(assert (=> b!1327495 (= e!850517 e!850537)))

(declare-fun res!597732 () Bool)

(assert (=> b!1327495 (=> res!597732 e!850537)))

(assert (=> b!1327495 (= res!597732 (or (not (isSeparator!2336 lt!438936)) (isSeparator!2336 (rule!4081 t1!34))))))

(assert (=> b!1327495 (= (regex!2336 lt!438936) lt!438956)))

(declare-fun b!1327496 () Bool)

(declare-fun res!597748 () Bool)

(assert (=> b!1327496 (=> res!597748 e!850539)))

(assert (=> b!1327496 (= res!597748 (not (contains!2424 lt!438945 lt!438941)))))

(declare-fun b!1327497 () Bool)

(declare-fun res!597731 () Bool)

(assert (=> b!1327497 (=> res!597731 e!850524)))

(assert (=> b!1327497 (= res!597731 (not (isEmpty!8028 (_2!7455 lt!438948))))))

(declare-fun b!1327498 () Bool)

(declare-fun e!850529 () Bool)

(declare-fun tp!384728 () Bool)

(assert (=> b!1327498 (= e!850513 (and e!850529 tp!384728))))

(declare-fun b!1327499 () Bool)

(assert (=> b!1327499 (= e!850512 e!850515)))

(declare-fun res!597729 () Bool)

(assert (=> b!1327499 (=> res!597729 e!850515)))

(declare-fun getSuffix!506 (List!13558 List!13558) List!13558)

(assert (=> b!1327499 (= res!597729 (not (= lt!438945 (++!3445 lt!438930 (getSuffix!506 lt!438945 lt!438930)))))))

(declare-fun pickWitness!113 (Int) List!13558)

(assert (=> b!1327499 (= lt!438945 (pickWitness!113 lambda!54986))))

(declare-fun b!1327500 () Bool)

(assert (=> b!1327500 (= e!850524 e!850536)))

(declare-fun res!597735 () Bool)

(assert (=> b!1327500 (=> res!597735 e!850536)))

(declare-datatypes ((tuple2!13140 0))(
  ( (tuple2!13141 (_1!7456 Token!4334) (_2!7456 List!13558)) )
))
(declare-datatypes ((Option!2607 0))(
  ( (None!2606) (Some!2606 (v!21211 tuple2!13140)) )
))
(declare-fun maxPrefix!1041 (LexerInterface!2031 List!13560 List!13558) Option!2607)

(assert (=> b!1327500 (= res!597735 (not (= (maxPrefix!1041 thiss!19762 rules!2550 lt!438931) (Some!2606 (tuple2!13141 t2!34 Nil!13492)))))))

(assert (=> b!1327500 (= lt!438931 (list!5108 lt!438932))))

(declare-fun b!1327501 () Bool)

(declare-fun e!850538 () Bool)

(declare-fun tp!384717 () Bool)

(assert (=> b!1327501 (= e!850529 (and tp!384717 (inv!17843 (tag!2598 (h!18895 rules!2550))) (inv!17846 (transformation!2336 (h!18895 rules!2550))) e!850538))))

(assert (=> b!1327502 (= e!850538 (and tp!384725 tp!384719))))

(declare-fun b!1327503 () Bool)

(declare-fun res!597720 () Bool)

(assert (=> b!1327503 (=> res!597720 e!850519)))

(assert (=> b!1327503 (= res!597720 (not (= (maxPrefix!1041 thiss!19762 rules!2550 lt!438953) (Some!2606 (tuple2!13141 t1!34 Nil!13492)))))))

(declare-fun b!1327504 () Bool)

(assert (=> b!1327504 (= e!850527 e!850517)))

(declare-fun res!597740 () Bool)

(assert (=> b!1327504 (=> res!597740 e!850517)))

(declare-fun lt!438946 () Bool)

(assert (=> b!1327504 (= res!597740 lt!438946)))

(declare-fun lt!438949 () Unit!19589)

(assert (=> b!1327504 (= lt!438949 e!850526)))

(declare-fun c!217615 () Bool)

(assert (=> b!1327504 (= c!217615 lt!438946)))

(assert (=> b!1327504 (= lt!438946 (not (contains!2424 (usedCharacters!201 (regex!2336 (rule!4081 t2!34))) lt!438941)))))

(declare-fun b!1327505 () Bool)

(declare-fun res!597737 () Bool)

(assert (=> b!1327505 (=> (not res!597737) (not e!850511))))

(assert (=> b!1327505 (= res!597737 (not (= (isSeparator!2336 (rule!4081 t1!34)) (isSeparator!2336 (rule!4081 t2!34)))))))

(declare-fun b!1327506 () Bool)

(declare-fun res!597716 () Bool)

(assert (=> b!1327506 (=> res!597716 e!850536)))

(assert (=> b!1327506 (= res!597716 (not (contains!2425 rules!2550 lt!438936)))))

(assert (= (and start!117932 res!597744) b!1327474))

(assert (= (and b!1327474 res!597747) b!1327491))

(assert (= (and b!1327491 res!597742) b!1327469))

(assert (= (and b!1327469 res!597721) b!1327476))

(assert (= (and b!1327476 res!597739) b!1327505))

(assert (= (and b!1327505 res!597737) b!1327464))

(assert (= (and b!1327464 res!597726) b!1327471))

(assert (= (and b!1327471 res!597743) b!1327484))

(assert (= (and b!1327484 res!597736) b!1327467))

(assert (= (and b!1327467 res!597750) b!1327488))

(assert (= (and b!1327488 (not res!597723)) b!1327499))

(assert (= (and b!1327499 (not res!597729)) b!1327490))

(assert (= (and b!1327490 (not res!597745)) b!1327480))

(assert (= (and b!1327480 (not res!597727)) b!1327493))

(assert (= (and b!1327493 (not res!597717)) b!1327496))

(assert (= (and b!1327496 (not res!597748)) b!1327472))

(assert (= (and b!1327472 (not res!597718)) b!1327492))

(assert (= (and b!1327492 (not res!597738)) b!1327486))

(assert (= (and b!1327486 (not res!597719)) b!1327468))

(assert (= (and b!1327468 (not res!597730)) b!1327473))

(assert (= (and b!1327473 (not res!597728)) b!1327470))

(assert (= (and b!1327470 (not res!597724)) b!1327466))

(assert (= (and b!1327466 (not res!597722)) b!1327503))

(assert (= (and b!1327503 (not res!597720)) b!1327479))

(assert (= (and b!1327479 (not res!597751)) b!1327481))

(assert (= (and b!1327481 (not res!597746)) b!1327497))

(assert (= (and b!1327497 (not res!597731)) b!1327460))

(assert (= (and b!1327460 (not res!597725)) b!1327500))

(assert (= (and b!1327500 (not res!597735)) b!1327465))

(assert (= (and b!1327465 (not res!597734)) b!1327506))

(assert (= (and b!1327506 (not res!597716)) b!1327485))

(assert (= (and b!1327485 (not res!597749)) b!1327483))

(assert (= (and b!1327483 (not res!597733)) b!1327462))

(assert (= (and b!1327462 c!217614) b!1327494))

(assert (= (and b!1327462 (not c!217614)) b!1327463))

(assert (= (and b!1327462 (not res!597741)) b!1327504))

(assert (= (and b!1327504 c!217615) b!1327489))

(assert (= (and b!1327504 (not c!217615)) b!1327487))

(assert (= (and b!1327504 (not res!597740)) b!1327495))

(assert (= (and b!1327495 (not res!597732)) b!1327475))

(assert (= b!1327501 b!1327502))

(assert (= b!1327498 b!1327501))

(assert (= (and start!117932 (is-Cons!13494 rules!2550)) b!1327498))

(assert (= b!1327458 b!1327482))

(assert (= b!1327478 b!1327458))

(assert (= start!117932 b!1327478))

(assert (= b!1327461 b!1327477))

(assert (= b!1327459 b!1327461))

(assert (= start!117932 b!1327459))

(declare-fun m!1483979 () Bool)

(assert (=> b!1327458 m!1483979))

(declare-fun m!1483981 () Bool)

(assert (=> b!1327458 m!1483981))

(declare-fun m!1483983 () Bool)

(assert (=> b!1327475 m!1483983))

(declare-fun m!1483985 () Bool)

(assert (=> b!1327494 m!1483985))

(assert (=> b!1327494 m!1483985))

(declare-fun m!1483987 () Bool)

(assert (=> b!1327494 m!1483987))

(declare-fun m!1483989 () Bool)

(assert (=> b!1327480 m!1483989))

(declare-fun m!1483991 () Bool)

(assert (=> b!1327504 m!1483991))

(assert (=> b!1327504 m!1483991))

(declare-fun m!1483993 () Bool)

(assert (=> b!1327504 m!1483993))

(declare-fun m!1483995 () Bool)

(assert (=> b!1327484 m!1483995))

(declare-fun m!1483997 () Bool)

(assert (=> b!1327478 m!1483997))

(declare-fun m!1483999 () Bool)

(assert (=> b!1327479 m!1483999))

(declare-fun m!1484001 () Bool)

(assert (=> b!1327461 m!1484001))

(declare-fun m!1484003 () Bool)

(assert (=> b!1327461 m!1484003))

(declare-fun m!1484005 () Bool)

(assert (=> b!1327483 m!1484005))

(declare-fun m!1484007 () Bool)

(assert (=> b!1327464 m!1484007))

(declare-fun m!1484009 () Bool)

(assert (=> b!1327464 m!1484009))

(declare-fun m!1484011 () Bool)

(assert (=> b!1327466 m!1484011))

(assert (=> b!1327466 m!1484011))

(declare-fun m!1484013 () Bool)

(assert (=> b!1327466 m!1484013))

(declare-fun m!1484015 () Bool)

(assert (=> b!1327469 m!1484015))

(declare-fun m!1484017 () Bool)

(assert (=> b!1327460 m!1484017))

(assert (=> b!1327460 m!1484017))

(declare-fun m!1484019 () Bool)

(assert (=> b!1327460 m!1484019))

(declare-fun m!1484021 () Bool)

(assert (=> b!1327503 m!1484021))

(declare-fun m!1484023 () Bool)

(assert (=> b!1327485 m!1484023))

(declare-fun m!1484025 () Bool)

(assert (=> b!1327485 m!1484025))

(declare-fun m!1484027 () Bool)

(assert (=> b!1327485 m!1484027))

(declare-fun m!1484029 () Bool)

(assert (=> b!1327485 m!1484029))

(declare-fun m!1484031 () Bool)

(assert (=> b!1327486 m!1484031))

(assert (=> b!1327486 m!1484031))

(declare-fun m!1484033 () Bool)

(assert (=> b!1327486 m!1484033))

(assert (=> b!1327486 m!1484031))

(assert (=> b!1327486 m!1484031))

(declare-fun m!1484035 () Bool)

(assert (=> b!1327486 m!1484035))

(declare-fun m!1484037 () Bool)

(assert (=> b!1327470 m!1484037))

(declare-fun m!1484039 () Bool)

(assert (=> b!1327476 m!1484039))

(declare-fun m!1484041 () Bool)

(assert (=> b!1327465 m!1484041))

(declare-fun m!1484043 () Bool)

(assert (=> b!1327500 m!1484043))

(declare-fun m!1484045 () Bool)

(assert (=> b!1327500 m!1484045))

(declare-fun m!1484047 () Bool)

(assert (=> b!1327462 m!1484047))

(assert (=> b!1327462 m!1484047))

(declare-fun m!1484049 () Bool)

(assert (=> b!1327462 m!1484049))

(declare-fun m!1484051 () Bool)

(assert (=> b!1327490 m!1484051))

(declare-fun m!1484053 () Bool)

(assert (=> b!1327490 m!1484053))

(declare-fun m!1484055 () Bool)

(assert (=> b!1327506 m!1484055))

(declare-fun m!1484057 () Bool)

(assert (=> b!1327471 m!1484057))

(declare-fun m!1484059 () Bool)

(assert (=> b!1327492 m!1484059))

(declare-fun m!1484061 () Bool)

(assert (=> b!1327492 m!1484061))

(assert (=> b!1327492 m!1484031))

(declare-fun m!1484063 () Bool)

(assert (=> b!1327492 m!1484063))

(assert (=> b!1327492 m!1484031))

(assert (=> b!1327492 m!1484031))

(declare-fun m!1484065 () Bool)

(assert (=> b!1327499 m!1484065))

(assert (=> b!1327499 m!1484065))

(declare-fun m!1484067 () Bool)

(assert (=> b!1327499 m!1484067))

(declare-fun m!1484069 () Bool)

(assert (=> b!1327499 m!1484069))

(declare-fun m!1484071 () Bool)

(assert (=> b!1327491 m!1484071))

(declare-fun m!1484073 () Bool)

(assert (=> b!1327489 m!1484073))

(assert (=> b!1327489 m!1484073))

(declare-fun m!1484075 () Bool)

(assert (=> b!1327489 m!1484075))

(declare-fun m!1484077 () Bool)

(assert (=> b!1327488 m!1484077))

(assert (=> b!1327488 m!1484077))

(declare-fun m!1484079 () Bool)

(assert (=> b!1327488 m!1484079))

(declare-fun m!1484081 () Bool)

(assert (=> b!1327481 m!1484081))

(declare-fun m!1484083 () Bool)

(assert (=> b!1327481 m!1484083))

(declare-fun m!1484085 () Bool)

(assert (=> b!1327481 m!1484085))

(assert (=> b!1327481 m!1484085))

(declare-fun m!1484087 () Bool)

(assert (=> b!1327481 m!1484087))

(declare-fun m!1484089 () Bool)

(assert (=> b!1327468 m!1484089))

(assert (=> b!1327468 m!1484089))

(declare-fun m!1484091 () Bool)

(assert (=> b!1327468 m!1484091))

(declare-fun m!1484093 () Bool)

(assert (=> b!1327459 m!1484093))

(declare-fun m!1484095 () Bool)

(assert (=> b!1327493 m!1484095))

(declare-fun m!1484097 () Bool)

(assert (=> start!117932 m!1484097))

(declare-fun m!1484099 () Bool)

(assert (=> start!117932 m!1484099))

(declare-fun m!1484101 () Bool)

(assert (=> b!1327467 m!1484101))

(declare-fun m!1484103 () Bool)

(assert (=> b!1327467 m!1484103))

(declare-fun m!1484105 () Bool)

(assert (=> b!1327467 m!1484105))

(declare-fun m!1484107 () Bool)

(assert (=> b!1327467 m!1484107))

(declare-fun m!1484109 () Bool)

(assert (=> b!1327467 m!1484109))

(declare-fun m!1484111 () Bool)

(assert (=> b!1327467 m!1484111))

(declare-fun m!1484113 () Bool)

(assert (=> b!1327496 m!1484113))

(declare-fun m!1484115 () Bool)

(assert (=> b!1327497 m!1484115))

(declare-fun m!1484117 () Bool)

(assert (=> b!1327501 m!1484117))

(declare-fun m!1484119 () Bool)

(assert (=> b!1327501 m!1484119))

(declare-fun m!1484121 () Bool)

(assert (=> b!1327473 m!1484121))

(declare-fun m!1484123 () Bool)

(assert (=> b!1327473 m!1484123))

(declare-fun m!1484125 () Bool)

(assert (=> b!1327473 m!1484125))

(declare-fun m!1484127 () Bool)

(assert (=> b!1327473 m!1484127))

(assert (=> b!1327473 m!1484121))

(declare-fun m!1484129 () Bool)

(assert (=> b!1327473 m!1484129))

(declare-fun m!1484131 () Bool)

(assert (=> b!1327474 m!1484131))

(declare-fun m!1484133 () Bool)

(assert (=> b!1327472 m!1484133))

(push 1)

(assert (not b!1327465))

(assert (not b!1327500))

(assert b_and!88681)

(assert (not b!1327481))

(assert (not b_next!32815))

(assert (not b!1327490))

(assert b_and!88677)

(assert (not b!1327471))

(assert (not b!1327496))

(assert (not b!1327478))

(assert (not b_next!32813))

(assert (not b!1327460))

(assert (not b!1327489))

(assert (not b!1327475))

(assert (not b!1327504))

(assert (not b!1327503))

(assert (not b!1327470))

(assert (not b!1327473))

(assert (not b!1327474))

(assert (not b!1327467))

(assert (not b!1327462))

(assert (not b!1327506))

(assert (not b_next!32807))

(assert (not b!1327480))

(assert (not b!1327486))

(assert (not b!1327459))

(assert (not b_next!32811))

(assert (not b!1327498))

(assert (not b!1327458))

(assert (not b!1327483))

(assert (not b!1327468))

(assert b_and!88683)

(assert (not b!1327472))

(assert (not b!1327484))

(assert (not b!1327464))

(assert (not b_next!32809))

(assert b_and!88675)

(assert (not b!1327461))

(assert (not b!1327499))

(assert (not b!1327466))

(assert b_and!88685)

(assert (not b!1327493))

(assert (not b!1327479))

(assert (not b!1327488))

(assert (not b!1327476))

(assert (not b!1327492))

(assert (not b!1327497))

(assert (not start!117932))

(assert (not b_next!32817))

(assert (not b!1327491))

(assert (not b!1327485))

(assert b_and!88679)

(assert (not b!1327501))

(assert (not b!1327469))

(assert (not b!1327494))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!32813))

(assert b_and!88681)

(assert (not b_next!32807))

(assert (not b_next!32811))

(assert b_and!88683)

(assert (not b_next!32815))

(assert (not b_next!32809))

(assert b_and!88675)

(assert b_and!88685)

(assert b_and!88677)

(assert (not b_next!32817))

(assert b_and!88679)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1327716 () Bool)

(declare-fun res!597900 () Bool)

(declare-fun e!850668 () Bool)

(assert (=> b!1327716 (=> (not res!597900) (not e!850668))))

(declare-fun call!89836 () Bool)

(assert (=> b!1327716 (= res!597900 (not call!89836))))

(declare-fun b!1327717 () Bool)

(assert (=> b!1327717 (= e!850668 (= (head!2327 lt!438953) (c!217617 (regex!2336 (rule!4081 t1!34)))))))

(declare-fun b!1327718 () Bool)

(declare-fun e!850665 () Bool)

(declare-fun lt!439049 () Bool)

(assert (=> b!1327718 (= e!850665 (= lt!439049 call!89836))))

(declare-fun b!1327719 () Bool)

(declare-fun res!597901 () Bool)

(declare-fun e!850670 () Bool)

(assert (=> b!1327719 (=> res!597901 e!850670)))

(assert (=> b!1327719 (= res!597901 (not (is-ElementMatch!3650 (regex!2336 (rule!4081 t1!34)))))))

(declare-fun e!850667 () Bool)

(assert (=> b!1327719 (= e!850667 e!850670)))

(declare-fun b!1327720 () Bool)

(assert (=> b!1327720 (= e!850667 (not lt!439049))))

(declare-fun b!1327721 () Bool)

(declare-fun e!850671 () Bool)

(declare-fun e!850669 () Bool)

(assert (=> b!1327721 (= e!850671 e!850669)))

(declare-fun res!597903 () Bool)

(assert (=> b!1327721 (=> res!597903 e!850669)))

(assert (=> b!1327721 (= res!597903 call!89836)))

(declare-fun b!1327722 () Bool)

(declare-fun res!597904 () Bool)

(assert (=> b!1327722 (=> res!597904 e!850669)))

(declare-fun isEmpty!8032 (List!13558) Bool)

(declare-fun tail!1903 (List!13558) List!13558)

(assert (=> b!1327722 (= res!597904 (not (isEmpty!8032 (tail!1903 lt!438953))))))

(declare-fun b!1327724 () Bool)

(assert (=> b!1327724 (= e!850669 (not (= (head!2327 lt!438953) (c!217617 (regex!2336 (rule!4081 t1!34))))))))

(declare-fun b!1327725 () Bool)

(assert (=> b!1327725 (= e!850665 e!850667)))

(declare-fun c!217636 () Bool)

(assert (=> b!1327725 (= c!217636 (is-EmptyLang!3650 (regex!2336 (rule!4081 t1!34))))))

(declare-fun b!1327726 () Bool)

(declare-fun e!850666 () Bool)

(declare-fun derivativeStep!910 (Regex!3650 C!7590) Regex!3650)

(assert (=> b!1327726 (= e!850666 (matchR!1652 (derivativeStep!910 (regex!2336 (rule!4081 t1!34)) (head!2327 lt!438953)) (tail!1903 lt!438953)))))

(declare-fun b!1327727 () Bool)

(assert (=> b!1327727 (= e!850670 e!850671)))

(declare-fun res!597899 () Bool)

(assert (=> b!1327727 (=> (not res!597899) (not e!850671))))

(assert (=> b!1327727 (= res!597899 (not lt!439049))))

(declare-fun b!1327728 () Bool)

(declare-fun nullable!1158 (Regex!3650) Bool)

(assert (=> b!1327728 (= e!850666 (nullable!1158 (regex!2336 (rule!4081 t1!34))))))

(declare-fun bm!89831 () Bool)

(assert (=> bm!89831 (= call!89836 (isEmpty!8032 lt!438953))))

(declare-fun b!1327729 () Bool)

(declare-fun res!597905 () Bool)

(assert (=> b!1327729 (=> (not res!597905) (not e!850668))))

(assert (=> b!1327729 (= res!597905 (isEmpty!8032 (tail!1903 lt!438953)))))

(declare-fun b!1327723 () Bool)

(declare-fun res!597906 () Bool)

(assert (=> b!1327723 (=> res!597906 e!850670)))

(assert (=> b!1327723 (= res!597906 e!850668)))

(declare-fun res!597902 () Bool)

(assert (=> b!1327723 (=> (not res!597902) (not e!850668))))

(assert (=> b!1327723 (= res!597902 lt!439049)))

(declare-fun d!374341 () Bool)

(assert (=> d!374341 e!850665))

(declare-fun c!217637 () Bool)

(assert (=> d!374341 (= c!217637 (is-EmptyExpr!3650 (regex!2336 (rule!4081 t1!34))))))

(assert (=> d!374341 (= lt!439049 e!850666)))

(declare-fun c!217635 () Bool)

(assert (=> d!374341 (= c!217635 (isEmpty!8032 lt!438953))))

(declare-fun validRegex!1566 (Regex!3650) Bool)

(assert (=> d!374341 (validRegex!1566 (regex!2336 (rule!4081 t1!34)))))

(assert (=> d!374341 (= (matchR!1652 (regex!2336 (rule!4081 t1!34)) lt!438953) lt!439049)))

(assert (= (and d!374341 c!217635) b!1327728))

(assert (= (and d!374341 (not c!217635)) b!1327726))

(assert (= (and d!374341 c!217637) b!1327718))

(assert (= (and d!374341 (not c!217637)) b!1327725))

(assert (= (and b!1327725 c!217636) b!1327720))

(assert (= (and b!1327725 (not c!217636)) b!1327719))

(assert (= (and b!1327719 (not res!597901)) b!1327723))

(assert (= (and b!1327723 res!597902) b!1327716))

(assert (= (and b!1327716 res!597900) b!1327729))

(assert (= (and b!1327729 res!597905) b!1327717))

(assert (= (and b!1327723 (not res!597906)) b!1327727))

(assert (= (and b!1327727 res!597899) b!1327721))

(assert (= (and b!1327721 (not res!597903)) b!1327722))

(assert (= (and b!1327722 (not res!597904)) b!1327724))

(assert (= (or b!1327718 b!1327716 b!1327721) bm!89831))

(declare-fun m!1484291 () Bool)

(assert (=> bm!89831 m!1484291))

(assert (=> d!374341 m!1484291))

(declare-fun m!1484293 () Bool)

(assert (=> d!374341 m!1484293))

(assert (=> b!1327724 m!1483985))

(assert (=> b!1327726 m!1483985))

(assert (=> b!1327726 m!1483985))

(declare-fun m!1484295 () Bool)

(assert (=> b!1327726 m!1484295))

(declare-fun m!1484297 () Bool)

(assert (=> b!1327726 m!1484297))

(assert (=> b!1327726 m!1484295))

(assert (=> b!1327726 m!1484297))

(declare-fun m!1484299 () Bool)

(assert (=> b!1327726 m!1484299))

(assert (=> b!1327729 m!1484297))

(assert (=> b!1327729 m!1484297))

(declare-fun m!1484301 () Bool)

(assert (=> b!1327729 m!1484301))

(assert (=> b!1327717 m!1483985))

(assert (=> b!1327722 m!1484297))

(assert (=> b!1327722 m!1484297))

(assert (=> b!1327722 m!1484301))

(declare-fun m!1484303 () Bool)

(assert (=> b!1327728 m!1484303))

(assert (=> b!1327485 d!374341))

(declare-fun d!374343 () Bool)

(declare-fun dynLambda!5927 (Int Rule!4472) Bool)

(assert (=> d!374343 (dynLambda!5927 lambda!54990 (rule!4081 t2!34))))

(declare-fun lt!439052 () Unit!19589)

(declare-fun choose!8125 (List!13560 Int Rule!4472) Unit!19589)

(assert (=> d!374343 (= lt!439052 (choose!8125 rules!2550 lambda!54990 (rule!4081 t2!34)))))

(declare-fun e!850674 () Bool)

(assert (=> d!374343 e!850674))

(declare-fun res!597909 () Bool)

(assert (=> d!374343 (=> (not res!597909) (not e!850674))))

(declare-fun forall!3315 (List!13560 Int) Bool)

(assert (=> d!374343 (= res!597909 (forall!3315 rules!2550 lambda!54990))))

(assert (=> d!374343 (= (forallContained!587 rules!2550 lambda!54990 (rule!4081 t2!34)) lt!439052)))

(declare-fun b!1327732 () Bool)

(assert (=> b!1327732 (= e!850674 (contains!2425 rules!2550 (rule!4081 t2!34)))))

(assert (= (and d!374343 res!597909) b!1327732))

(declare-fun b_lambda!38911 () Bool)

(assert (=> (not b_lambda!38911) (not d!374343)))

(declare-fun m!1484305 () Bool)

(assert (=> d!374343 m!1484305))

(declare-fun m!1484307 () Bool)

(assert (=> d!374343 m!1484307))

(declare-fun m!1484309 () Bool)

(assert (=> d!374343 m!1484309))

(assert (=> b!1327732 m!1484041))

(assert (=> b!1327485 d!374343))

(declare-fun d!374345 () Bool)

(assert (=> d!374345 (dynLambda!5927 lambda!54990 (rule!4081 t1!34))))

(declare-fun lt!439053 () Unit!19589)

(assert (=> d!374345 (= lt!439053 (choose!8125 rules!2550 lambda!54990 (rule!4081 t1!34)))))

(declare-fun e!850675 () Bool)

(assert (=> d!374345 e!850675))

(declare-fun res!597910 () Bool)

(assert (=> d!374345 (=> (not res!597910) (not e!850675))))

(assert (=> d!374345 (= res!597910 (forall!3315 rules!2550 lambda!54990))))

(assert (=> d!374345 (= (forallContained!587 rules!2550 lambda!54990 (rule!4081 t1!34)) lt!439053)))

(declare-fun b!1327733 () Bool)

(assert (=> b!1327733 (= e!850675 (contains!2425 rules!2550 (rule!4081 t1!34)))))

(assert (= (and d!374345 res!597910) b!1327733))

(declare-fun b_lambda!38913 () Bool)

(assert (=> (not b_lambda!38913) (not d!374345)))

(declare-fun m!1484311 () Bool)

(assert (=> d!374345 m!1484311))

(declare-fun m!1484313 () Bool)

(assert (=> d!374345 m!1484313))

(assert (=> d!374345 m!1484309))

(assert (=> b!1327733 m!1483999))

(assert (=> b!1327485 d!374345))

(declare-fun d!374347 () Bool)

(assert (=> d!374347 (dynLambda!5927 lambda!54990 lt!438936)))

(declare-fun lt!439054 () Unit!19589)

(assert (=> d!374347 (= lt!439054 (choose!8125 rules!2550 lambda!54990 lt!438936))))

(declare-fun e!850676 () Bool)

(assert (=> d!374347 e!850676))

(declare-fun res!597911 () Bool)

(assert (=> d!374347 (=> (not res!597911) (not e!850676))))

(assert (=> d!374347 (= res!597911 (forall!3315 rules!2550 lambda!54990))))

(assert (=> d!374347 (= (forallContained!587 rules!2550 lambda!54990 lt!438936) lt!439054)))

(declare-fun b!1327734 () Bool)

(assert (=> b!1327734 (= e!850676 (contains!2425 rules!2550 lt!438936))))

(assert (= (and d!374347 res!597911) b!1327734))

(declare-fun b_lambda!38915 () Bool)

(assert (=> (not b_lambda!38915) (not d!374347)))

(declare-fun m!1484315 () Bool)

(assert (=> d!374347 m!1484315))

(declare-fun m!1484317 () Bool)

(assert (=> d!374347 m!1484317))

(assert (=> d!374347 m!1484309))

(assert (=> b!1327734 m!1484055))

(assert (=> b!1327485 d!374347))

(declare-fun d!374349 () Bool)

(declare-fun lt!439057 () Int)

(declare-fun size!10982 (List!13558) Int)

(assert (=> d!374349 (= lt!439057 (size!10982 (list!5108 lt!438932)))))

(declare-fun size!10983 (Conc!4442) Int)

(assert (=> d!374349 (= lt!439057 (size!10983 (c!217616 lt!438932)))))

(assert (=> d!374349 (= (size!10979 lt!438932) lt!439057)))

(declare-fun bs!331409 () Bool)

(assert (= bs!331409 d!374349))

(assert (=> bs!331409 m!1484045))

(assert (=> bs!331409 m!1484045))

(declare-fun m!1484319 () Bool)

(assert (=> bs!331409 m!1484319))

(declare-fun m!1484321 () Bool)

(assert (=> bs!331409 m!1484321))

(assert (=> b!1327464 d!374349))

(declare-fun d!374351 () Bool)

(declare-fun lt!439060 () BalanceConc!8824)

(assert (=> d!374351 (= (list!5108 lt!439060) (originalCharacters!3198 t2!34))))

(declare-fun dynLambda!5928 (Int TokenValue!2426) BalanceConc!8824)

(assert (=> d!374351 (= lt!439060 (dynLambda!5928 (toChars!3426 (transformation!2336 (rule!4081 t2!34))) (value!76210 t2!34)))))

(assert (=> d!374351 (= (charsOf!1308 t2!34) lt!439060)))

(declare-fun b_lambda!38917 () Bool)

(assert (=> (not b_lambda!38917) (not d!374351)))

(declare-fun tb!70241 () Bool)

(declare-fun t!118869 () Bool)

(assert (=> (and b!1327482 (= (toChars!3426 (transformation!2336 (rule!4081 t1!34))) (toChars!3426 (transformation!2336 (rule!4081 t2!34)))) t!118869) tb!70241))

(declare-fun b!1327739 () Bool)

(declare-fun e!850679 () Bool)

(declare-fun tp!384767 () Bool)

(declare-fun inv!17850 (Conc!4442) Bool)

(assert (=> b!1327739 (= e!850679 (and (inv!17850 (c!217616 (dynLambda!5928 (toChars!3426 (transformation!2336 (rule!4081 t2!34))) (value!76210 t2!34)))) tp!384767))))

(declare-fun result!85270 () Bool)

(declare-fun inv!17851 (BalanceConc!8824) Bool)

(assert (=> tb!70241 (= result!85270 (and (inv!17851 (dynLambda!5928 (toChars!3426 (transformation!2336 (rule!4081 t2!34))) (value!76210 t2!34))) e!850679))))

(assert (= tb!70241 b!1327739))

(declare-fun m!1484323 () Bool)

(assert (=> b!1327739 m!1484323))

(declare-fun m!1484325 () Bool)

(assert (=> tb!70241 m!1484325))

(assert (=> d!374351 t!118869))

(declare-fun b_and!88699 () Bool)

(assert (= b_and!88677 (and (=> t!118869 result!85270) b_and!88699)))

(declare-fun t!118871 () Bool)

(declare-fun tb!70243 () Bool)

(assert (=> (and b!1327477 (= (toChars!3426 (transformation!2336 (rule!4081 t2!34))) (toChars!3426 (transformation!2336 (rule!4081 t2!34)))) t!118871) tb!70243))

(declare-fun result!85274 () Bool)

(assert (= result!85274 result!85270))

(assert (=> d!374351 t!118871))

(declare-fun b_and!88701 () Bool)

(assert (= b_and!88681 (and (=> t!118871 result!85274) b_and!88701)))

(declare-fun t!118873 () Bool)

(declare-fun tb!70245 () Bool)

(assert (=> (and b!1327502 (= (toChars!3426 (transformation!2336 (h!18895 rules!2550))) (toChars!3426 (transformation!2336 (rule!4081 t2!34)))) t!118873) tb!70245))

(declare-fun result!85276 () Bool)

(assert (= result!85276 result!85270))

(assert (=> d!374351 t!118873))

(declare-fun b_and!88703 () Bool)

(assert (= b_and!88685 (and (=> t!118873 result!85276) b_and!88703)))

(declare-fun m!1484327 () Bool)

(assert (=> d!374351 m!1484327))

(declare-fun m!1484329 () Bool)

(assert (=> d!374351 m!1484329))

(assert (=> b!1327464 d!374351))

(declare-fun d!374353 () Bool)

(declare-fun res!597916 () Bool)

(declare-fun e!850682 () Bool)

(assert (=> d!374353 (=> (not res!597916) (not e!850682))))

(assert (=> d!374353 (= res!597916 (not (isEmpty!8032 (originalCharacters!3198 t1!34))))))

(assert (=> d!374353 (= (inv!17847 t1!34) e!850682)))

(declare-fun b!1327744 () Bool)

(declare-fun res!597917 () Bool)

(assert (=> b!1327744 (=> (not res!597917) (not e!850682))))

(assert (=> b!1327744 (= res!597917 (= (originalCharacters!3198 t1!34) (list!5108 (dynLambda!5928 (toChars!3426 (transformation!2336 (rule!4081 t1!34))) (value!76210 t1!34)))))))

(declare-fun b!1327745 () Bool)

(assert (=> b!1327745 (= e!850682 (= (size!10978 t1!34) (size!10982 (originalCharacters!3198 t1!34))))))

(assert (= (and d!374353 res!597916) b!1327744))

(assert (= (and b!1327744 res!597917) b!1327745))

(declare-fun b_lambda!38919 () Bool)

(assert (=> (not b_lambda!38919) (not b!1327744)))

(declare-fun t!118875 () Bool)

(declare-fun tb!70247 () Bool)

(assert (=> (and b!1327482 (= (toChars!3426 (transformation!2336 (rule!4081 t1!34))) (toChars!3426 (transformation!2336 (rule!4081 t1!34)))) t!118875) tb!70247))

(declare-fun b!1327746 () Bool)

(declare-fun e!850683 () Bool)

(declare-fun tp!384768 () Bool)

(assert (=> b!1327746 (= e!850683 (and (inv!17850 (c!217616 (dynLambda!5928 (toChars!3426 (transformation!2336 (rule!4081 t1!34))) (value!76210 t1!34)))) tp!384768))))

(declare-fun result!85278 () Bool)

(assert (=> tb!70247 (= result!85278 (and (inv!17851 (dynLambda!5928 (toChars!3426 (transformation!2336 (rule!4081 t1!34))) (value!76210 t1!34))) e!850683))))

(assert (= tb!70247 b!1327746))

(declare-fun m!1484331 () Bool)

(assert (=> b!1327746 m!1484331))

(declare-fun m!1484333 () Bool)

(assert (=> tb!70247 m!1484333))

(assert (=> b!1327744 t!118875))

(declare-fun b_and!88705 () Bool)

(assert (= b_and!88699 (and (=> t!118875 result!85278) b_and!88705)))

(declare-fun tb!70249 () Bool)

(declare-fun t!118877 () Bool)

(assert (=> (and b!1327477 (= (toChars!3426 (transformation!2336 (rule!4081 t2!34))) (toChars!3426 (transformation!2336 (rule!4081 t1!34)))) t!118877) tb!70249))

(declare-fun result!85280 () Bool)

(assert (= result!85280 result!85278))

(assert (=> b!1327744 t!118877))

(declare-fun b_and!88707 () Bool)

(assert (= b_and!88701 (and (=> t!118877 result!85280) b_and!88707)))

(declare-fun t!118879 () Bool)

(declare-fun tb!70251 () Bool)

(assert (=> (and b!1327502 (= (toChars!3426 (transformation!2336 (h!18895 rules!2550))) (toChars!3426 (transformation!2336 (rule!4081 t1!34)))) t!118879) tb!70251))

(declare-fun result!85282 () Bool)

(assert (= result!85282 result!85278))

(assert (=> b!1327744 t!118879))

(declare-fun b_and!88709 () Bool)

(assert (= b_and!88703 (and (=> t!118879 result!85282) b_and!88709)))

(declare-fun m!1484335 () Bool)

(assert (=> d!374353 m!1484335))

(declare-fun m!1484337 () Bool)

(assert (=> b!1327744 m!1484337))

(assert (=> b!1327744 m!1484337))

(declare-fun m!1484339 () Bool)

(assert (=> b!1327744 m!1484339))

(declare-fun m!1484341 () Bool)

(assert (=> b!1327745 m!1484341))

(assert (=> start!117932 d!374353))

(declare-fun d!374355 () Bool)

(declare-fun res!597918 () Bool)

(declare-fun e!850684 () Bool)

(assert (=> d!374355 (=> (not res!597918) (not e!850684))))

(assert (=> d!374355 (= res!597918 (not (isEmpty!8032 (originalCharacters!3198 t2!34))))))

(assert (=> d!374355 (= (inv!17847 t2!34) e!850684)))

(declare-fun b!1327747 () Bool)

(declare-fun res!597919 () Bool)

(assert (=> b!1327747 (=> (not res!597919) (not e!850684))))

(assert (=> b!1327747 (= res!597919 (= (originalCharacters!3198 t2!34) (list!5108 (dynLambda!5928 (toChars!3426 (transformation!2336 (rule!4081 t2!34))) (value!76210 t2!34)))))))

(declare-fun b!1327748 () Bool)

(assert (=> b!1327748 (= e!850684 (= (size!10978 t2!34) (size!10982 (originalCharacters!3198 t2!34))))))

(assert (= (and d!374355 res!597918) b!1327747))

(assert (= (and b!1327747 res!597919) b!1327748))

(declare-fun b_lambda!38921 () Bool)

(assert (=> (not b_lambda!38921) (not b!1327747)))

(assert (=> b!1327747 t!118869))

(declare-fun b_and!88711 () Bool)

(assert (= b_and!88705 (and (=> t!118869 result!85270) b_and!88711)))

(assert (=> b!1327747 t!118871))

(declare-fun b_and!88713 () Bool)

(assert (= b_and!88707 (and (=> t!118871 result!85274) b_and!88713)))

(assert (=> b!1327747 t!118873))

(declare-fun b_and!88715 () Bool)

(assert (= b_and!88709 (and (=> t!118873 result!85276) b_and!88715)))

(declare-fun m!1484343 () Bool)

(assert (=> d!374355 m!1484343))

(assert (=> b!1327747 m!1484329))

(assert (=> b!1327747 m!1484329))

(declare-fun m!1484345 () Bool)

(assert (=> b!1327747 m!1484345))

(declare-fun m!1484347 () Bool)

(assert (=> b!1327748 m!1484347))

(assert (=> start!117932 d!374355))

(declare-fun d!374357 () Bool)

(declare-fun lt!439063 () Bool)

(declare-fun content!1908 (List!13560) (Set Rule!4472))

(assert (=> d!374357 (= lt!439063 (set.member lt!438936 (content!1908 rules!2550)))))

(declare-fun e!850690 () Bool)

(assert (=> d!374357 (= lt!439063 e!850690)))

(declare-fun res!597925 () Bool)

(assert (=> d!374357 (=> (not res!597925) (not e!850690))))

(assert (=> d!374357 (= res!597925 (is-Cons!13494 rules!2550))))

(assert (=> d!374357 (= (contains!2425 rules!2550 lt!438936) lt!439063)))

(declare-fun b!1327753 () Bool)

(declare-fun e!850689 () Bool)

(assert (=> b!1327753 (= e!850690 e!850689)))

(declare-fun res!597924 () Bool)

(assert (=> b!1327753 (=> res!597924 e!850689)))

(assert (=> b!1327753 (= res!597924 (= (h!18895 rules!2550) lt!438936))))

(declare-fun b!1327754 () Bool)

(assert (=> b!1327754 (= e!850689 (contains!2425 (t!118861 rules!2550) lt!438936))))

(assert (= (and d!374357 res!597925) b!1327753))

(assert (= (and b!1327753 (not res!597924)) b!1327754))

(declare-fun m!1484349 () Bool)

(assert (=> d!374357 m!1484349))

(declare-fun m!1484351 () Bool)

(assert (=> d!374357 m!1484351))

(declare-fun m!1484353 () Bool)

(assert (=> b!1327754 m!1484353))

(assert (=> b!1327506 d!374357))

(declare-fun d!374359 () Bool)

(declare-fun prefixMatchZipperSequence!191 (Regex!3650 BalanceConc!8824) Bool)

(declare-fun ++!3447 (BalanceConc!8824 BalanceConc!8824) BalanceConc!8824)

(declare-fun singletonSeq!929 (C!7590) BalanceConc!8824)

(assert (=> d!374359 (= (separableTokensPredicate!314 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!191 (rulesRegex!221 thiss!19762 rules!2550) (++!3447 (charsOf!1308 t1!34) (singletonSeq!929 (apply!3114 (charsOf!1308 t2!34) 0))))))))

(declare-fun bs!331410 () Bool)

(assert (= bs!331410 d!374359))

(assert (=> bs!331410 m!1484101))

(declare-fun m!1484355 () Bool)

(assert (=> bs!331410 m!1484355))

(declare-fun m!1484357 () Bool)

(assert (=> bs!331410 m!1484357))

(assert (=> bs!331410 m!1484009))

(assert (=> bs!331410 m!1484107))

(assert (=> bs!331410 m!1484357))

(declare-fun m!1484359 () Bool)

(assert (=> bs!331410 m!1484359))

(assert (=> bs!331410 m!1484009))

(declare-fun m!1484361 () Bool)

(assert (=> bs!331410 m!1484361))

(assert (=> bs!331410 m!1484101))

(assert (=> bs!331410 m!1484361))

(assert (=> bs!331410 m!1484355))

(assert (=> bs!331410 m!1484107))

(assert (=> b!1327484 d!374359))

(declare-fun b!1327755 () Bool)

(declare-fun res!597927 () Bool)

(declare-fun e!850694 () Bool)

(assert (=> b!1327755 (=> (not res!597927) (not e!850694))))

(declare-fun call!89837 () Bool)

(assert (=> b!1327755 (= res!597927 (not call!89837))))

(declare-fun b!1327756 () Bool)

(assert (=> b!1327756 (= e!850694 (= (head!2327 lt!438931) (c!217617 (regex!2336 (rule!4081 t2!34)))))))

(declare-fun b!1327757 () Bool)

(declare-fun e!850691 () Bool)

(declare-fun lt!439064 () Bool)

(assert (=> b!1327757 (= e!850691 (= lt!439064 call!89837))))

(declare-fun b!1327758 () Bool)

(declare-fun res!597928 () Bool)

(declare-fun e!850696 () Bool)

(assert (=> b!1327758 (=> res!597928 e!850696)))

(assert (=> b!1327758 (= res!597928 (not (is-ElementMatch!3650 (regex!2336 (rule!4081 t2!34)))))))

(declare-fun e!850693 () Bool)

(assert (=> b!1327758 (= e!850693 e!850696)))

(declare-fun b!1327759 () Bool)

(assert (=> b!1327759 (= e!850693 (not lt!439064))))

(declare-fun b!1327760 () Bool)

(declare-fun e!850697 () Bool)

(declare-fun e!850695 () Bool)

(assert (=> b!1327760 (= e!850697 e!850695)))

(declare-fun res!597930 () Bool)

(assert (=> b!1327760 (=> res!597930 e!850695)))

(assert (=> b!1327760 (= res!597930 call!89837)))

(declare-fun b!1327761 () Bool)

(declare-fun res!597931 () Bool)

(assert (=> b!1327761 (=> res!597931 e!850695)))

(assert (=> b!1327761 (= res!597931 (not (isEmpty!8032 (tail!1903 lt!438931))))))

(declare-fun b!1327763 () Bool)

(assert (=> b!1327763 (= e!850695 (not (= (head!2327 lt!438931) (c!217617 (regex!2336 (rule!4081 t2!34))))))))

(declare-fun b!1327764 () Bool)

(assert (=> b!1327764 (= e!850691 e!850693)))

(declare-fun c!217639 () Bool)

(assert (=> b!1327764 (= c!217639 (is-EmptyLang!3650 (regex!2336 (rule!4081 t2!34))))))

(declare-fun b!1327765 () Bool)

(declare-fun e!850692 () Bool)

(assert (=> b!1327765 (= e!850692 (matchR!1652 (derivativeStep!910 (regex!2336 (rule!4081 t2!34)) (head!2327 lt!438931)) (tail!1903 lt!438931)))))

(declare-fun b!1327766 () Bool)

(assert (=> b!1327766 (= e!850696 e!850697)))

(declare-fun res!597926 () Bool)

(assert (=> b!1327766 (=> (not res!597926) (not e!850697))))

(assert (=> b!1327766 (= res!597926 (not lt!439064))))

(declare-fun b!1327767 () Bool)

(assert (=> b!1327767 (= e!850692 (nullable!1158 (regex!2336 (rule!4081 t2!34))))))

(declare-fun bm!89832 () Bool)

(assert (=> bm!89832 (= call!89837 (isEmpty!8032 lt!438931))))

(declare-fun b!1327768 () Bool)

(declare-fun res!597932 () Bool)

(assert (=> b!1327768 (=> (not res!597932) (not e!850694))))

(assert (=> b!1327768 (= res!597932 (isEmpty!8032 (tail!1903 lt!438931)))))

(declare-fun b!1327762 () Bool)

(declare-fun res!597933 () Bool)

(assert (=> b!1327762 (=> res!597933 e!850696)))

(assert (=> b!1327762 (= res!597933 e!850694)))

(declare-fun res!597929 () Bool)

(assert (=> b!1327762 (=> (not res!597929) (not e!850694))))

(assert (=> b!1327762 (= res!597929 lt!439064)))

(declare-fun d!374361 () Bool)

(assert (=> d!374361 e!850691))

(declare-fun c!217640 () Bool)

(assert (=> d!374361 (= c!217640 (is-EmptyExpr!3650 (regex!2336 (rule!4081 t2!34))))))

(assert (=> d!374361 (= lt!439064 e!850692)))

(declare-fun c!217638 () Bool)

(assert (=> d!374361 (= c!217638 (isEmpty!8032 lt!438931))))

(assert (=> d!374361 (validRegex!1566 (regex!2336 (rule!4081 t2!34)))))

(assert (=> d!374361 (= (matchR!1652 (regex!2336 (rule!4081 t2!34)) lt!438931) lt!439064)))

(assert (= (and d!374361 c!217638) b!1327767))

(assert (= (and d!374361 (not c!217638)) b!1327765))

(assert (= (and d!374361 c!217640) b!1327757))

(assert (= (and d!374361 (not c!217640)) b!1327764))

(assert (= (and b!1327764 c!217639) b!1327759))

(assert (= (and b!1327764 (not c!217639)) b!1327758))

(assert (= (and b!1327758 (not res!597928)) b!1327762))

(assert (= (and b!1327762 res!597929) b!1327755))

(assert (= (and b!1327755 res!597927) b!1327768))

(assert (= (and b!1327768 res!597932) b!1327756))

(assert (= (and b!1327762 (not res!597933)) b!1327766))

(assert (= (and b!1327766 res!597926) b!1327760))

(assert (= (and b!1327760 (not res!597930)) b!1327761))

(assert (= (and b!1327761 (not res!597931)) b!1327763))

(assert (= (or b!1327757 b!1327755 b!1327760) bm!89832))

(declare-fun m!1484363 () Bool)

(assert (=> bm!89832 m!1484363))

(assert (=> d!374361 m!1484363))

(declare-fun m!1484365 () Bool)

(assert (=> d!374361 m!1484365))

(assert (=> b!1327763 m!1484073))

(assert (=> b!1327765 m!1484073))

(assert (=> b!1327765 m!1484073))

(declare-fun m!1484367 () Bool)

(assert (=> b!1327765 m!1484367))

(declare-fun m!1484369 () Bool)

(assert (=> b!1327765 m!1484369))

(assert (=> b!1327765 m!1484367))

(assert (=> b!1327765 m!1484369))

(declare-fun m!1484371 () Bool)

(assert (=> b!1327765 m!1484371))

(assert (=> b!1327768 m!1484369))

(assert (=> b!1327768 m!1484369))

(declare-fun m!1484373 () Bool)

(assert (=> b!1327768 m!1484373))

(assert (=> b!1327756 m!1484073))

(assert (=> b!1327761 m!1484369))

(assert (=> b!1327761 m!1484369))

(assert (=> b!1327761 m!1484373))

(declare-fun m!1484375 () Bool)

(assert (=> b!1327767 m!1484375))

(assert (=> b!1327483 d!374361))

(declare-fun d!374363 () Bool)

(declare-fun lt!439067 () Bool)

(declare-fun content!1909 (List!13558) (Set C!7590))

(assert (=> d!374363 (= lt!439067 (set.member lt!438934 (content!1909 (usedCharacters!201 (regex!2336 (rule!4081 t1!34))))))))

(declare-fun e!850703 () Bool)

(assert (=> d!374363 (= lt!439067 e!850703)))

(declare-fun res!597938 () Bool)

(assert (=> d!374363 (=> (not res!597938) (not e!850703))))

(assert (=> d!374363 (= res!597938 (is-Cons!13492 (usedCharacters!201 (regex!2336 (rule!4081 t1!34)))))))

(assert (=> d!374363 (= (contains!2424 (usedCharacters!201 (regex!2336 (rule!4081 t1!34))) lt!438934) lt!439067)))

(declare-fun b!1327773 () Bool)

(declare-fun e!850702 () Bool)

(assert (=> b!1327773 (= e!850703 e!850702)))

(declare-fun res!597939 () Bool)

(assert (=> b!1327773 (=> res!597939 e!850702)))

(assert (=> b!1327773 (= res!597939 (= (h!18893 (usedCharacters!201 (regex!2336 (rule!4081 t1!34)))) lt!438934))))

(declare-fun b!1327774 () Bool)

(assert (=> b!1327774 (= e!850702 (contains!2424 (t!118859 (usedCharacters!201 (regex!2336 (rule!4081 t1!34)))) lt!438934))))

(assert (= (and d!374363 res!597938) b!1327773))

(assert (= (and b!1327773 (not res!597939)) b!1327774))

(assert (=> d!374363 m!1484047))

(declare-fun m!1484377 () Bool)

(assert (=> d!374363 m!1484377))

(declare-fun m!1484379 () Bool)

(assert (=> d!374363 m!1484379))

(declare-fun m!1484381 () Bool)

(assert (=> b!1327774 m!1484381))

(assert (=> b!1327462 d!374363))

(declare-fun bm!89841 () Bool)

(declare-fun call!89849 () List!13558)

(declare-fun call!89846 () List!13558)

(assert (=> bm!89841 (= call!89849 call!89846)))

(declare-fun c!217649 () Bool)

(declare-fun bm!89842 () Bool)

(declare-fun call!89847 () List!13558)

(declare-fun call!89848 () List!13558)

(assert (=> bm!89842 (= call!89847 (++!3445 (ite c!217649 call!89849 call!89848) (ite c!217649 call!89848 call!89849)))))

(declare-fun b!1327791 () Bool)

(declare-fun c!217650 () Bool)

(assert (=> b!1327791 (= c!217650 (is-Star!3650 (regex!2336 (rule!4081 t1!34))))))

(declare-fun e!850713 () List!13558)

(declare-fun e!850712 () List!13558)

(assert (=> b!1327791 (= e!850713 e!850712)))

(declare-fun b!1327792 () Bool)

(declare-fun e!850715 () List!13558)

(assert (=> b!1327792 (= e!850715 Nil!13492)))

(declare-fun b!1327793 () Bool)

(assert (=> b!1327793 (= e!850713 (Cons!13492 (c!217617 (regex!2336 (rule!4081 t1!34))) Nil!13492))))

(declare-fun bm!89843 () Bool)

(assert (=> bm!89843 (= call!89848 (usedCharacters!201 (ite c!217649 (regTwo!7813 (regex!2336 (rule!4081 t1!34))) (regOne!7812 (regex!2336 (rule!4081 t1!34))))))))

(declare-fun bm!89844 () Bool)

(assert (=> bm!89844 (= call!89846 (usedCharacters!201 (ite c!217650 (reg!3979 (regex!2336 (rule!4081 t1!34))) (ite c!217649 (regOne!7813 (regex!2336 (rule!4081 t1!34))) (regTwo!7812 (regex!2336 (rule!4081 t1!34)))))))))

(declare-fun b!1327794 () Bool)

(declare-fun e!850714 () List!13558)

(assert (=> b!1327794 (= e!850714 call!89847)))

(declare-fun b!1327795 () Bool)

(assert (=> b!1327795 (= e!850714 call!89847)))

(declare-fun d!374365 () Bool)

(declare-fun c!217652 () Bool)

(assert (=> d!374365 (= c!217652 (or (is-EmptyExpr!3650 (regex!2336 (rule!4081 t1!34))) (is-EmptyLang!3650 (regex!2336 (rule!4081 t1!34)))))))

(assert (=> d!374365 (= (usedCharacters!201 (regex!2336 (rule!4081 t1!34))) e!850715)))

(declare-fun b!1327796 () Bool)

(assert (=> b!1327796 (= e!850712 call!89846)))

(declare-fun b!1327797 () Bool)

(assert (=> b!1327797 (= e!850715 e!850713)))

(declare-fun c!217651 () Bool)

(assert (=> b!1327797 (= c!217651 (is-ElementMatch!3650 (regex!2336 (rule!4081 t1!34))))))

(declare-fun b!1327798 () Bool)

(assert (=> b!1327798 (= e!850712 e!850714)))

(assert (=> b!1327798 (= c!217649 (is-Union!3650 (regex!2336 (rule!4081 t1!34))))))

(assert (= (and d!374365 c!217652) b!1327792))

(assert (= (and d!374365 (not c!217652)) b!1327797))

(assert (= (and b!1327797 c!217651) b!1327793))

(assert (= (and b!1327797 (not c!217651)) b!1327791))

(assert (= (and b!1327791 c!217650) b!1327796))

(assert (= (and b!1327791 (not c!217650)) b!1327798))

(assert (= (and b!1327798 c!217649) b!1327794))

(assert (= (and b!1327798 (not c!217649)) b!1327795))

(assert (= (or b!1327794 b!1327795) bm!89841))

(assert (= (or b!1327794 b!1327795) bm!89843))

(assert (= (or b!1327794 b!1327795) bm!89842))

(assert (= (or b!1327796 bm!89841) bm!89844))

(declare-fun m!1484383 () Bool)

(assert (=> bm!89842 m!1484383))

(declare-fun m!1484385 () Bool)

(assert (=> bm!89843 m!1484385))

(declare-fun m!1484387 () Bool)

(assert (=> bm!89844 m!1484387))

(assert (=> b!1327462 d!374365))

(declare-fun d!374367 () Bool)

(declare-fun choose!8126 (Int) Bool)

(assert (=> d!374367 (= (Exists!808 lambda!54986) (choose!8126 lambda!54986))))

(declare-fun bs!331411 () Bool)

(assert (= bs!331411 d!374367))

(declare-fun m!1484389 () Bool)

(assert (=> bs!331411 m!1484389))

(assert (=> b!1327488 d!374367))

(declare-fun bs!331412 () Bool)

(declare-fun d!374369 () Bool)

(assert (= bs!331412 (and d!374369 b!1327488)))

(declare-fun lambda!55032 () Int)

(assert (=> bs!331412 (= lambda!55032 lambda!54986)))

(assert (=> d!374369 true))

(assert (=> d!374369 true))

(assert (=> d!374369 (Exists!808 lambda!55032)))

(declare-fun lt!439070 () Unit!19589)

(declare-fun choose!8127 (Regex!3650 List!13558) Unit!19589)

(assert (=> d!374369 (= lt!439070 (choose!8127 lt!438935 lt!438930))))

(assert (=> d!374369 (validRegex!1566 lt!438935)))

(assert (=> d!374369 (= (lemmaPrefixMatchThenExistsStringThatMatches!126 lt!438935 lt!438930) lt!439070)))

(declare-fun bs!331413 () Bool)

(assert (= bs!331413 d!374369))

(declare-fun m!1484391 () Bool)

(assert (=> bs!331413 m!1484391))

(declare-fun m!1484393 () Bool)

(assert (=> bs!331413 m!1484393))

(declare-fun m!1484395 () Bool)

(assert (=> bs!331413 m!1484395))

(assert (=> b!1327488 d!374369))

(declare-fun d!374371 () Bool)

(declare-fun e!850729 () Bool)

(assert (=> d!374371 e!850729))

(declare-fun c!217657 () Bool)

(declare-fun lt!439078 () tuple2!13136)

(declare-fun size!10984 (List!13559) Int)

(assert (=> d!374371 (= c!217657 (> (size!10984 (_1!7454 lt!439078)) 0))))

(declare-fun e!850728 () tuple2!13136)

(assert (=> d!374371 (= lt!439078 e!850728)))

(declare-fun c!217658 () Bool)

(declare-fun lt!439077 () Option!2607)

(assert (=> d!374371 (= c!217658 (is-Some!2606 lt!439077))))

(assert (=> d!374371 (= lt!439077 (maxPrefix!1041 thiss!19762 rules!2550 (list!5108 lt!438951)))))

(assert (=> d!374371 (= (lexList!569 thiss!19762 rules!2550 (list!5108 lt!438951)) lt!439078)))

(declare-fun b!1327814 () Bool)

(declare-fun lt!439079 () tuple2!13136)

(assert (=> b!1327814 (= e!850728 (tuple2!13137 (Cons!13493 (_1!7456 (v!21211 lt!439077)) (_1!7454 lt!439079)) (_2!7454 lt!439079)))))

(assert (=> b!1327814 (= lt!439079 (lexList!569 thiss!19762 rules!2550 (_2!7456 (v!21211 lt!439077))))))

(declare-fun b!1327815 () Bool)

(declare-fun e!850727 () Bool)

(assert (=> b!1327815 (= e!850729 e!850727)))

(declare-fun res!597947 () Bool)

(assert (=> b!1327815 (= res!597947 (< (size!10982 (_2!7454 lt!439078)) (size!10982 (list!5108 lt!438951))))))

(assert (=> b!1327815 (=> (not res!597947) (not e!850727))))

(declare-fun b!1327816 () Bool)

(assert (=> b!1327816 (= e!850728 (tuple2!13137 Nil!13493 (list!5108 lt!438951)))))

(declare-fun b!1327817 () Bool)

(assert (=> b!1327817 (= e!850729 (= (_2!7454 lt!439078) (list!5108 lt!438951)))))

(declare-fun b!1327818 () Bool)

(declare-fun isEmpty!8033 (List!13559) Bool)

(assert (=> b!1327818 (= e!850727 (not (isEmpty!8033 (_1!7454 lt!439078))))))

(assert (= (and d!374371 c!217658) b!1327814))

(assert (= (and d!374371 (not c!217658)) b!1327816))

(assert (= (and d!374371 c!217657) b!1327815))

(assert (= (and d!374371 (not c!217657)) b!1327817))

(assert (= (and b!1327815 res!597947) b!1327818))

(declare-fun m!1484403 () Bool)

(assert (=> d!374371 m!1484403))

(assert (=> d!374371 m!1484011))

(declare-fun m!1484405 () Bool)

(assert (=> d!374371 m!1484405))

(declare-fun m!1484407 () Bool)

(assert (=> b!1327814 m!1484407))

(declare-fun m!1484409 () Bool)

(assert (=> b!1327815 m!1484409))

(assert (=> b!1327815 m!1484011))

(declare-fun m!1484411 () Bool)

(assert (=> b!1327815 m!1484411))

(declare-fun m!1484413 () Bool)

(assert (=> b!1327818 m!1484413))

(assert (=> b!1327466 d!374371))

(declare-fun d!374379 () Bool)

(declare-fun list!5112 (Conc!4442) List!13558)

(assert (=> d!374379 (= (list!5108 lt!438951) (list!5112 (c!217616 lt!438951)))))

(declare-fun bs!331415 () Bool)

(assert (= bs!331415 d!374379))

(declare-fun m!1484415 () Bool)

(assert (=> bs!331415 m!1484415))

(assert (=> b!1327466 d!374379))

(declare-fun d!374381 () Bool)

(declare-fun lt!439082 () Bool)

(assert (=> d!374381 (= lt!439082 (set.member (rule!4081 t2!34) (content!1908 rules!2550)))))

(declare-fun e!850731 () Bool)

(assert (=> d!374381 (= lt!439082 e!850731)))

(declare-fun res!597949 () Bool)

(assert (=> d!374381 (=> (not res!597949) (not e!850731))))

(assert (=> d!374381 (= res!597949 (is-Cons!13494 rules!2550))))

(assert (=> d!374381 (= (contains!2425 rules!2550 (rule!4081 t2!34)) lt!439082)))

(declare-fun b!1327819 () Bool)

(declare-fun e!850730 () Bool)

(assert (=> b!1327819 (= e!850731 e!850730)))

(declare-fun res!597948 () Bool)

(assert (=> b!1327819 (=> res!597948 e!850730)))

(assert (=> b!1327819 (= res!597948 (= (h!18895 rules!2550) (rule!4081 t2!34)))))

(declare-fun b!1327820 () Bool)

(assert (=> b!1327820 (= e!850730 (contains!2425 (t!118861 rules!2550) (rule!4081 t2!34)))))

(assert (= (and d!374381 res!597949) b!1327819))

(assert (= (and b!1327819 (not res!597948)) b!1327820))

(assert (=> d!374381 m!1484349))

(declare-fun m!1484417 () Bool)

(assert (=> d!374381 m!1484417))

(declare-fun m!1484419 () Bool)

(assert (=> b!1327820 m!1484419))

(assert (=> b!1327465 d!374381))

(declare-fun lt!439085 () Bool)

(declare-fun d!374383 () Bool)

(declare-fun content!1910 (List!13561) (Set Regex!3650))

(assert (=> d!374383 (= lt!439085 (set.member lt!438956 (content!1910 (map!2971 rules!2550 lambda!54987))))))

(declare-fun e!850738 () Bool)

(assert (=> d!374383 (= lt!439085 e!850738)))

(declare-fun res!597956 () Bool)

(assert (=> d!374383 (=> (not res!597956) (not e!850738))))

(assert (=> d!374383 (= res!597956 (is-Cons!13495 (map!2971 rules!2550 lambda!54987)))))

(assert (=> d!374383 (= (contains!2426 (map!2971 rules!2550 lambda!54987) lt!438956) lt!439085)))

(declare-fun b!1327827 () Bool)

(declare-fun e!850739 () Bool)

(assert (=> b!1327827 (= e!850738 e!850739)))

(declare-fun res!597957 () Bool)

(assert (=> b!1327827 (=> res!597957 e!850739)))

(assert (=> b!1327827 (= res!597957 (= (h!18896 (map!2971 rules!2550 lambda!54987)) lt!438956))))

(declare-fun b!1327828 () Bool)

(assert (=> b!1327828 (= e!850739 (contains!2426 (t!118862 (map!2971 rules!2550 lambda!54987)) lt!438956))))

(assert (= (and d!374383 res!597956) b!1327827))

(assert (= (and b!1327827 (not res!597957)) b!1327828))

(assert (=> d!374383 m!1484031))

(declare-fun m!1484421 () Bool)

(assert (=> d!374383 m!1484421))

(declare-fun m!1484423 () Bool)

(assert (=> d!374383 m!1484423))

(declare-fun m!1484425 () Bool)

(assert (=> b!1327828 m!1484425))

(assert (=> b!1327486 d!374383))

(declare-fun d!374385 () Bool)

(declare-fun lt!439089 () List!13561)

(declare-fun size!10985 (List!13561) Int)

(declare-fun size!10986 (List!13560) Int)

(assert (=> d!374385 (= (size!10985 lt!439089) (size!10986 rules!2550))))

(declare-fun e!850742 () List!13561)

(assert (=> d!374385 (= lt!439089 e!850742)))

(declare-fun c!217661 () Bool)

(assert (=> d!374385 (= c!217661 (is-Nil!13494 rules!2550))))

(assert (=> d!374385 (= (map!2971 rules!2550 lambda!54987) lt!439089)))

(declare-fun b!1327833 () Bool)

(assert (=> b!1327833 (= e!850742 Nil!13495)))

(declare-fun b!1327834 () Bool)

(declare-fun $colon$colon!162 (List!13561 Regex!3650) List!13561)

(declare-fun dynLambda!5929 (Int Rule!4472) Regex!3650)

(assert (=> b!1327834 (= e!850742 ($colon$colon!162 (map!2971 (t!118861 rules!2550) lambda!54987) (dynLambda!5929 lambda!54987 (h!18895 rules!2550))))))

(assert (= (and d!374385 c!217661) b!1327833))

(assert (= (and d!374385 (not c!217661)) b!1327834))

(declare-fun b_lambda!38923 () Bool)

(assert (=> (not b_lambda!38923) (not b!1327834)))

(declare-fun m!1484433 () Bool)

(assert (=> d!374385 m!1484433))

(declare-fun m!1484435 () Bool)

(assert (=> d!374385 m!1484435))

(declare-fun m!1484437 () Bool)

(assert (=> b!1327834 m!1484437))

(declare-fun m!1484439 () Bool)

(assert (=> b!1327834 m!1484439))

(assert (=> b!1327834 m!1484437))

(assert (=> b!1327834 m!1484439))

(declare-fun m!1484441 () Bool)

(assert (=> b!1327834 m!1484441))

(assert (=> b!1327486 d!374385))

(declare-fun b!1327849 () Bool)

(declare-fun lt!439095 () Unit!19589)

(declare-fun Unit!19602 () Unit!19589)

(assert (=> b!1327849 (= lt!439095 Unit!19602)))

(assert (=> b!1327849 false))

(declare-fun e!850753 () Regex!3650)

(declare-fun head!2329 (List!13561) Regex!3650)

(assert (=> b!1327849 (= e!850753 (head!2329 (map!2971 rules!2550 lambda!54987)))))

(declare-fun b!1327851 () Bool)

(declare-fun e!850756 () Regex!3650)

(assert (=> b!1327851 (= e!850756 e!850753)))

(declare-fun c!217666 () Bool)

(assert (=> b!1327851 (= c!217666 (is-Cons!13495 (map!2971 rules!2550 lambda!54987)))))

(declare-fun b!1327852 () Bool)

(declare-fun e!850754 () Bool)

(declare-fun dynLambda!5930 (Int Regex!3650) Bool)

(assert (=> b!1327852 (= e!850754 (dynLambda!5930 lambda!54988 (h!18896 (map!2971 rules!2550 lambda!54987))))))

(declare-fun b!1327853 () Bool)

(assert (=> b!1327853 (= e!850756 (h!18896 (map!2971 rules!2550 lambda!54987)))))

(declare-fun e!850755 () Bool)

(declare-fun lt!439094 () Regex!3650)

(declare-fun b!1327854 () Bool)

(assert (=> b!1327854 (= e!850755 (contains!2426 (map!2971 rules!2550 lambda!54987) lt!439094))))

(declare-fun d!374389 () Bool)

(assert (=> d!374389 e!850755))

(declare-fun res!597964 () Bool)

(assert (=> d!374389 (=> (not res!597964) (not e!850755))))

(assert (=> d!374389 (= res!597964 (dynLambda!5930 lambda!54988 lt!439094))))

(assert (=> d!374389 (= lt!439094 e!850756)))

(declare-fun c!217667 () Bool)

(assert (=> d!374389 (= c!217667 e!850754)))

(declare-fun res!597965 () Bool)

(assert (=> d!374389 (=> (not res!597965) (not e!850754))))

(assert (=> d!374389 (= res!597965 (is-Cons!13495 (map!2971 rules!2550 lambda!54987)))))

(assert (=> d!374389 (exists!375 (map!2971 rules!2550 lambda!54987) lambda!54988)))

(assert (=> d!374389 (= (getWitness!267 (map!2971 rules!2550 lambda!54987) lambda!54988) lt!439094)))

(declare-fun b!1327850 () Bool)

(assert (=> b!1327850 (= e!850753 (getWitness!267 (t!118862 (map!2971 rules!2550 lambda!54987)) lambda!54988))))

(assert (= (and d!374389 res!597965) b!1327852))

(assert (= (and d!374389 c!217667) b!1327853))

(assert (= (and d!374389 (not c!217667)) b!1327851))

(assert (= (and b!1327851 c!217666) b!1327850))

(assert (= (and b!1327851 (not c!217666)) b!1327849))

(assert (= (and d!374389 res!597964) b!1327854))

(declare-fun b_lambda!38925 () Bool)

(assert (=> (not b_lambda!38925) (not b!1327852)))

(declare-fun b_lambda!38927 () Bool)

(assert (=> (not b_lambda!38927) (not d!374389)))

(declare-fun m!1484443 () Bool)

(assert (=> b!1327850 m!1484443))

(declare-fun m!1484445 () Bool)

(assert (=> b!1327852 m!1484445))

(assert (=> b!1327849 m!1484031))

(declare-fun m!1484447 () Bool)

(assert (=> b!1327849 m!1484447))

(assert (=> b!1327854 m!1484031))

(declare-fun m!1484449 () Bool)

(assert (=> b!1327854 m!1484449))

(declare-fun m!1484451 () Bool)

(assert (=> d!374389 m!1484451))

(assert (=> d!374389 m!1484031))

(assert (=> d!374389 m!1484063))

(assert (=> b!1327486 d!374389))

(declare-fun d!374393 () Bool)

(assert (=> d!374393 (= (inv!17843 (tag!2598 (h!18895 rules!2550))) (= (mod (str.len (value!76209 (tag!2598 (h!18895 rules!2550)))) 2) 0))))

(assert (=> b!1327501 d!374393))

(declare-fun d!374395 () Bool)

(declare-fun res!597969 () Bool)

(declare-fun e!850760 () Bool)

(assert (=> d!374395 (=> (not res!597969) (not e!850760))))

(declare-fun semiInverseModEq!879 (Int Int) Bool)

(assert (=> d!374395 (= res!597969 (semiInverseModEq!879 (toChars!3426 (transformation!2336 (h!18895 rules!2550))) (toValue!3567 (transformation!2336 (h!18895 rules!2550)))))))

(assert (=> d!374395 (= (inv!17846 (transformation!2336 (h!18895 rules!2550))) e!850760)))

(declare-fun b!1327858 () Bool)

(declare-fun equivClasses!838 (Int Int) Bool)

(assert (=> b!1327858 (= e!850760 (equivClasses!838 (toChars!3426 (transformation!2336 (h!18895 rules!2550))) (toValue!3567 (transformation!2336 (h!18895 rules!2550)))))))

(assert (= (and d!374395 res!597969) b!1327858))

(declare-fun m!1484457 () Bool)

(assert (=> d!374395 m!1484457))

(declare-fun m!1484459 () Bool)

(assert (=> b!1327858 m!1484459))

(assert (=> b!1327501 d!374395))

(declare-fun d!374399 () Bool)

(declare-fun lt!439096 () Bool)

(assert (=> d!374399 (= lt!439096 (set.member lt!438934 (content!1909 lt!438945)))))

(declare-fun e!850762 () Bool)

(assert (=> d!374399 (= lt!439096 e!850762)))

(declare-fun res!597970 () Bool)

(assert (=> d!374399 (=> (not res!597970) (not e!850762))))

(assert (=> d!374399 (= res!597970 (is-Cons!13492 lt!438945))))

(assert (=> d!374399 (= (contains!2424 lt!438945 lt!438934) lt!439096)))

(declare-fun b!1327859 () Bool)

(declare-fun e!850761 () Bool)

(assert (=> b!1327859 (= e!850762 e!850761)))

(declare-fun res!597971 () Bool)

(assert (=> b!1327859 (=> res!597971 e!850761)))

(assert (=> b!1327859 (= res!597971 (= (h!18893 lt!438945) lt!438934))))

(declare-fun b!1327860 () Bool)

(assert (=> b!1327860 (= e!850761 (contains!2424 (t!118859 lt!438945) lt!438934))))

(assert (= (and d!374399 res!597970) b!1327859))

(assert (= (and b!1327859 (not res!597971)) b!1327860))

(declare-fun m!1484461 () Bool)

(assert (=> d!374399 m!1484461))

(declare-fun m!1484463 () Bool)

(assert (=> d!374399 m!1484463))

(declare-fun m!1484465 () Bool)

(assert (=> b!1327860 m!1484465))

(assert (=> b!1327480 d!374399))

(declare-fun d!374401 () Bool)

(declare-fun lt!439097 () Bool)

(assert (=> d!374401 (= lt!439097 (set.member (rule!4081 t1!34) (content!1908 rules!2550)))))

(declare-fun e!850764 () Bool)

(assert (=> d!374401 (= lt!439097 e!850764)))

(declare-fun res!597973 () Bool)

(assert (=> d!374401 (=> (not res!597973) (not e!850764))))

(assert (=> d!374401 (= res!597973 (is-Cons!13494 rules!2550))))

(assert (=> d!374401 (= (contains!2425 rules!2550 (rule!4081 t1!34)) lt!439097)))

(declare-fun b!1327861 () Bool)

(declare-fun e!850763 () Bool)

(assert (=> b!1327861 (= e!850764 e!850763)))

(declare-fun res!597972 () Bool)

(assert (=> b!1327861 (=> res!597972 e!850763)))

(assert (=> b!1327861 (= res!597972 (= (h!18895 rules!2550) (rule!4081 t1!34)))))

(declare-fun b!1327862 () Bool)

(assert (=> b!1327862 (= e!850763 (contains!2425 (t!118861 rules!2550) (rule!4081 t1!34)))))

(assert (= (and d!374401 res!597973) b!1327861))

(assert (= (and b!1327861 (not res!597972)) b!1327862))

(assert (=> d!374401 m!1484349))

(declare-fun m!1484467 () Bool)

(assert (=> d!374401 m!1484467))

(declare-fun m!1484469 () Bool)

(assert (=> b!1327862 m!1484469))

(assert (=> b!1327479 d!374401))

(declare-fun d!374403 () Bool)

(assert (=> d!374403 (= (inv!17843 (tag!2598 (rule!4081 t1!34))) (= (mod (str.len (value!76209 (tag!2598 (rule!4081 t1!34)))) 2) 0))))

(assert (=> b!1327458 d!374403))

(declare-fun d!374405 () Bool)

(declare-fun res!597974 () Bool)

(declare-fun e!850765 () Bool)

(assert (=> d!374405 (=> (not res!597974) (not e!850765))))

(assert (=> d!374405 (= res!597974 (semiInverseModEq!879 (toChars!3426 (transformation!2336 (rule!4081 t1!34))) (toValue!3567 (transformation!2336 (rule!4081 t1!34)))))))

(assert (=> d!374405 (= (inv!17846 (transformation!2336 (rule!4081 t1!34))) e!850765)))

(declare-fun b!1327863 () Bool)

(assert (=> b!1327863 (= e!850765 (equivClasses!838 (toChars!3426 (transformation!2336 (rule!4081 t1!34))) (toValue!3567 (transformation!2336 (rule!4081 t1!34)))))))

(assert (= (and d!374405 res!597974) b!1327863))

(declare-fun m!1484471 () Bool)

(assert (=> d!374405 m!1484471))

(declare-fun m!1484473 () Bool)

(assert (=> b!1327863 m!1484473))

(assert (=> b!1327458 d!374405))

(declare-fun b!1327888 () Bool)

(declare-fun res!597999 () Bool)

(declare-fun e!850778 () Bool)

(assert (=> b!1327888 (=> (not res!597999) (not e!850778))))

(declare-fun lt!439111 () Option!2607)

(declare-fun get!4282 (Option!2607) tuple2!13140)

(declare-fun apply!3116 (TokenValueInjection!4512 BalanceConc!8824) TokenValue!2426)

(declare-fun seqFromList!1608 (List!13558) BalanceConc!8824)

(assert (=> b!1327888 (= res!597999 (= (value!76210 (_1!7456 (get!4282 lt!439111))) (apply!3116 (transformation!2336 (rule!4081 (_1!7456 (get!4282 lt!439111)))) (seqFromList!1608 (originalCharacters!3198 (_1!7456 (get!4282 lt!439111)))))))))

(declare-fun b!1327889 () Bool)

(assert (=> b!1327889 (= e!850778 (contains!2425 rules!2550 (rule!4081 (_1!7456 (get!4282 lt!439111)))))))

(declare-fun b!1327890 () Bool)

(declare-fun e!850779 () Option!2607)

(declare-fun lt!439112 () Option!2607)

(declare-fun lt!439113 () Option!2607)

(assert (=> b!1327890 (= e!850779 (ite (and (is-None!2606 lt!439112) (is-None!2606 lt!439113)) None!2606 (ite (is-None!2606 lt!439113) lt!439112 (ite (is-None!2606 lt!439112) lt!439113 (ite (>= (size!10978 (_1!7456 (v!21211 lt!439112))) (size!10978 (_1!7456 (v!21211 lt!439113)))) lt!439112 lt!439113)))))))

(declare-fun call!89852 () Option!2607)

(assert (=> b!1327890 (= lt!439112 call!89852)))

(assert (=> b!1327890 (= lt!439113 (maxPrefix!1041 thiss!19762 (t!118861 rules!2550) lt!438931))))

(declare-fun d!374407 () Bool)

(declare-fun e!850780 () Bool)

(assert (=> d!374407 e!850780))

(declare-fun res!597997 () Bool)

(assert (=> d!374407 (=> res!597997 e!850780)))

(declare-fun isEmpty!8034 (Option!2607) Bool)

(assert (=> d!374407 (= res!597997 (isEmpty!8034 lt!439111))))

(assert (=> d!374407 (= lt!439111 e!850779)))

(declare-fun c!217670 () Bool)

(assert (=> d!374407 (= c!217670 (and (is-Cons!13494 rules!2550) (is-Nil!13494 (t!118861 rules!2550))))))

(declare-fun lt!439115 () Unit!19589)

(declare-fun lt!439114 () Unit!19589)

(assert (=> d!374407 (= lt!439115 lt!439114)))

(declare-fun isPrefix!1085 (List!13558 List!13558) Bool)

(assert (=> d!374407 (isPrefix!1085 lt!438931 lt!438931)))

(declare-fun lemmaIsPrefixRefl!764 (List!13558 List!13558) Unit!19589)

(assert (=> d!374407 (= lt!439114 (lemmaIsPrefixRefl!764 lt!438931 lt!438931))))

(declare-fun rulesValidInductive!737 (LexerInterface!2031 List!13560) Bool)

(assert (=> d!374407 (rulesValidInductive!737 thiss!19762 rules!2550)))

(assert (=> d!374407 (= (maxPrefix!1041 thiss!19762 rules!2550 lt!438931) lt!439111)))

(declare-fun b!1327891 () Bool)

(declare-fun res!598000 () Bool)

(assert (=> b!1327891 (=> (not res!598000) (not e!850778))))

(assert (=> b!1327891 (= res!598000 (matchR!1652 (regex!2336 (rule!4081 (_1!7456 (get!4282 lt!439111)))) (list!5108 (charsOf!1308 (_1!7456 (get!4282 lt!439111))))))))

(declare-fun b!1327892 () Bool)

(assert (=> b!1327892 (= e!850779 call!89852)))

(declare-fun b!1327893 () Bool)

(declare-fun res!598001 () Bool)

(assert (=> b!1327893 (=> (not res!598001) (not e!850778))))

(assert (=> b!1327893 (= res!598001 (= (list!5108 (charsOf!1308 (_1!7456 (get!4282 lt!439111)))) (originalCharacters!3198 (_1!7456 (get!4282 lt!439111)))))))

(declare-fun b!1327894 () Bool)

(declare-fun res!597995 () Bool)

(assert (=> b!1327894 (=> (not res!597995) (not e!850778))))

(assert (=> b!1327894 (= res!597995 (= (++!3445 (list!5108 (charsOf!1308 (_1!7456 (get!4282 lt!439111)))) (_2!7456 (get!4282 lt!439111))) lt!438931))))

(declare-fun bm!89847 () Bool)

(declare-fun maxPrefixOneRule!590 (LexerInterface!2031 Rule!4472 List!13558) Option!2607)

(assert (=> bm!89847 (= call!89852 (maxPrefixOneRule!590 thiss!19762 (h!18895 rules!2550) lt!438931))))

(declare-fun b!1327895 () Bool)

(declare-fun res!597998 () Bool)

(assert (=> b!1327895 (=> (not res!597998) (not e!850778))))

(assert (=> b!1327895 (= res!597998 (< (size!10982 (_2!7456 (get!4282 lt!439111))) (size!10982 lt!438931)))))

(declare-fun b!1327896 () Bool)

(assert (=> b!1327896 (= e!850780 e!850778)))

(declare-fun res!597996 () Bool)

(assert (=> b!1327896 (=> (not res!597996) (not e!850778))))

(declare-fun isDefined!2188 (Option!2607) Bool)

(assert (=> b!1327896 (= res!597996 (isDefined!2188 lt!439111))))

(assert (= (and d!374407 c!217670) b!1327892))

(assert (= (and d!374407 (not c!217670)) b!1327890))

(assert (= (or b!1327892 b!1327890) bm!89847))

(assert (= (and d!374407 (not res!597997)) b!1327896))

(assert (= (and b!1327896 res!597996) b!1327893))

(assert (= (and b!1327893 res!598001) b!1327895))

(assert (= (and b!1327895 res!597998) b!1327894))

(assert (= (and b!1327894 res!597995) b!1327888))

(assert (= (and b!1327888 res!597999) b!1327891))

(assert (= (and b!1327891 res!598000) b!1327889))

(declare-fun m!1484481 () Bool)

(assert (=> b!1327894 m!1484481))

(declare-fun m!1484483 () Bool)

(assert (=> b!1327894 m!1484483))

(assert (=> b!1327894 m!1484483))

(declare-fun m!1484485 () Bool)

(assert (=> b!1327894 m!1484485))

(assert (=> b!1327894 m!1484485))

(declare-fun m!1484487 () Bool)

(assert (=> b!1327894 m!1484487))

(assert (=> b!1327895 m!1484481))

(declare-fun m!1484489 () Bool)

(assert (=> b!1327895 m!1484489))

(declare-fun m!1484491 () Bool)

(assert (=> b!1327895 m!1484491))

(assert (=> b!1327888 m!1484481))

(declare-fun m!1484493 () Bool)

(assert (=> b!1327888 m!1484493))

(assert (=> b!1327888 m!1484493))

(declare-fun m!1484495 () Bool)

(assert (=> b!1327888 m!1484495))

(declare-fun m!1484497 () Bool)

(assert (=> bm!89847 m!1484497))

(assert (=> b!1327893 m!1484481))

(assert (=> b!1327893 m!1484483))

(assert (=> b!1327893 m!1484483))

(assert (=> b!1327893 m!1484485))

(declare-fun m!1484499 () Bool)

(assert (=> b!1327896 m!1484499))

(assert (=> b!1327891 m!1484481))

(assert (=> b!1327891 m!1484483))

(assert (=> b!1327891 m!1484483))

(assert (=> b!1327891 m!1484485))

(assert (=> b!1327891 m!1484485))

(declare-fun m!1484501 () Bool)

(assert (=> b!1327891 m!1484501))

(declare-fun m!1484503 () Bool)

(assert (=> b!1327890 m!1484503))

(declare-fun m!1484505 () Bool)

(assert (=> d!374407 m!1484505))

(declare-fun m!1484507 () Bool)

(assert (=> d!374407 m!1484507))

(declare-fun m!1484509 () Bool)

(assert (=> d!374407 m!1484509))

(declare-fun m!1484511 () Bool)

(assert (=> d!374407 m!1484511))

(assert (=> b!1327889 m!1484481))

(declare-fun m!1484513 () Bool)

(assert (=> b!1327889 m!1484513))

(assert (=> b!1327500 d!374407))

(declare-fun d!374411 () Bool)

(assert (=> d!374411 (= (list!5108 lt!438932) (list!5112 (c!217616 lt!438932)))))

(declare-fun bs!331418 () Bool)

(assert (= bs!331418 d!374411))

(declare-fun m!1484515 () Bool)

(assert (=> bs!331418 m!1484515))

(assert (=> b!1327500 d!374411))

(declare-fun b!1327917 () Bool)

(declare-fun res!598009 () Bool)

(declare-fun e!850791 () Bool)

(assert (=> b!1327917 (=> (not res!598009) (not e!850791))))

(declare-fun lt!439124 () List!13558)

(assert (=> b!1327917 (= res!598009 (= (size!10982 lt!439124) (+ (size!10982 lt!438930) (size!10982 (getSuffix!506 lt!438945 lt!438930)))))))

(declare-fun d!374413 () Bool)

(assert (=> d!374413 e!850791))

(declare-fun res!598008 () Bool)

(assert (=> d!374413 (=> (not res!598008) (not e!850791))))

(assert (=> d!374413 (= res!598008 (= (content!1909 lt!439124) (set.union (content!1909 lt!438930) (content!1909 (getSuffix!506 lt!438945 lt!438930)))))))

(declare-fun e!850792 () List!13558)

(assert (=> d!374413 (= lt!439124 e!850792)))

(declare-fun c!217677 () Bool)

(assert (=> d!374413 (= c!217677 (is-Nil!13492 lt!438930))))

(assert (=> d!374413 (= (++!3445 lt!438930 (getSuffix!506 lt!438945 lt!438930)) lt!439124)))

(declare-fun b!1327918 () Bool)

(assert (=> b!1327918 (= e!850791 (or (not (= (getSuffix!506 lt!438945 lt!438930) Nil!13492)) (= lt!439124 lt!438930)))))

(declare-fun b!1327916 () Bool)

(assert (=> b!1327916 (= e!850792 (Cons!13492 (h!18893 lt!438930) (++!3445 (t!118859 lt!438930) (getSuffix!506 lt!438945 lt!438930))))))

(declare-fun b!1327915 () Bool)

(assert (=> b!1327915 (= e!850792 (getSuffix!506 lt!438945 lt!438930))))

(assert (= (and d!374413 c!217677) b!1327915))

(assert (= (and d!374413 (not c!217677)) b!1327916))

(assert (= (and d!374413 res!598008) b!1327917))

(assert (= (and b!1327917 res!598009) b!1327918))

(declare-fun m!1484517 () Bool)

(assert (=> b!1327917 m!1484517))

(declare-fun m!1484519 () Bool)

(assert (=> b!1327917 m!1484519))

(assert (=> b!1327917 m!1484065))

(declare-fun m!1484521 () Bool)

(assert (=> b!1327917 m!1484521))

(declare-fun m!1484523 () Bool)

(assert (=> d!374413 m!1484523))

(declare-fun m!1484525 () Bool)

(assert (=> d!374413 m!1484525))

(assert (=> d!374413 m!1484065))

(declare-fun m!1484527 () Bool)

(assert (=> d!374413 m!1484527))

(assert (=> b!1327916 m!1484065))

(declare-fun m!1484529 () Bool)

(assert (=> b!1327916 m!1484529))

(assert (=> b!1327499 d!374413))

(declare-fun d!374415 () Bool)

(declare-fun lt!439127 () List!13558)

(assert (=> d!374415 (= (++!3445 lt!438930 lt!439127) lt!438945)))

(declare-fun e!850795 () List!13558)

(assert (=> d!374415 (= lt!439127 e!850795)))

(declare-fun c!217680 () Bool)

(assert (=> d!374415 (= c!217680 (is-Cons!13492 lt!438930))))

(assert (=> d!374415 (>= (size!10982 lt!438945) (size!10982 lt!438930))))

(assert (=> d!374415 (= (getSuffix!506 lt!438945 lt!438930) lt!439127)))

(declare-fun b!1327923 () Bool)

(assert (=> b!1327923 (= e!850795 (getSuffix!506 (tail!1903 lt!438945) (t!118859 lt!438930)))))

(declare-fun b!1327924 () Bool)

(assert (=> b!1327924 (= e!850795 lt!438945)))

(assert (= (and d!374415 c!217680) b!1327923))

(assert (= (and d!374415 (not c!217680)) b!1327924))

(declare-fun m!1484531 () Bool)

(assert (=> d!374415 m!1484531))

(declare-fun m!1484533 () Bool)

(assert (=> d!374415 m!1484533))

(assert (=> d!374415 m!1484519))

(declare-fun m!1484535 () Bool)

(assert (=> b!1327923 m!1484535))

(assert (=> b!1327923 m!1484535))

(declare-fun m!1484537 () Bool)

(assert (=> b!1327923 m!1484537))

(assert (=> b!1327499 d!374415))

(declare-fun d!374417 () Bool)

(declare-fun lt!439133 () List!13558)

(declare-fun dynLambda!5931 (Int List!13558) Bool)

(assert (=> d!374417 (dynLambda!5931 lambda!54986 lt!439133)))

(declare-fun choose!8130 (Int) List!13558)

(assert (=> d!374417 (= lt!439133 (choose!8130 lambda!54986))))

(assert (=> d!374417 (Exists!808 lambda!54986)))

(assert (=> d!374417 (= (pickWitness!113 lambda!54986) lt!439133)))

(declare-fun b_lambda!38929 () Bool)

(assert (=> (not b_lambda!38929) (not d!374417)))

(declare-fun bs!331419 () Bool)

(assert (= bs!331419 d!374417))

(declare-fun m!1484551 () Bool)

(assert (=> bs!331419 m!1484551))

(declare-fun m!1484553 () Bool)

(assert (=> bs!331419 m!1484553))

(assert (=> bs!331419 m!1484077))

(assert (=> b!1327499 d!374417))

(declare-fun d!374421 () Bool)

(declare-fun c!217688 () Bool)

(assert (=> d!374421 (= c!217688 (is-IntegerValue!7278 (value!76210 t1!34)))))

(declare-fun e!850805 () Bool)

(assert (=> d!374421 (= (inv!21 (value!76210 t1!34)) e!850805)))

(declare-fun b!1327940 () Bool)

(declare-fun e!850806 () Bool)

(declare-fun inv!17 (TokenValue!2426) Bool)

(assert (=> b!1327940 (= e!850806 (inv!17 (value!76210 t1!34)))))

(declare-fun b!1327941 () Bool)

(declare-fun e!850807 () Bool)

(declare-fun inv!15 (TokenValue!2426) Bool)

(assert (=> b!1327941 (= e!850807 (inv!15 (value!76210 t1!34)))))

(declare-fun b!1327942 () Bool)

(declare-fun res!598013 () Bool)

(assert (=> b!1327942 (=> res!598013 e!850807)))

(assert (=> b!1327942 (= res!598013 (not (is-IntegerValue!7280 (value!76210 t1!34))))))

(assert (=> b!1327942 (= e!850806 e!850807)))

(declare-fun b!1327943 () Bool)

(declare-fun inv!16 (TokenValue!2426) Bool)

(assert (=> b!1327943 (= e!850805 (inv!16 (value!76210 t1!34)))))

(declare-fun b!1327944 () Bool)

(assert (=> b!1327944 (= e!850805 e!850806)))

(declare-fun c!217687 () Bool)

(assert (=> b!1327944 (= c!217687 (is-IntegerValue!7279 (value!76210 t1!34)))))

(assert (= (and d!374421 c!217688) b!1327943))

(assert (= (and d!374421 (not c!217688)) b!1327944))

(assert (= (and b!1327944 c!217687) b!1327940))

(assert (= (and b!1327944 (not c!217687)) b!1327942))

(assert (= (and b!1327942 (not res!598013)) b!1327941))

(declare-fun m!1484557 () Bool)

(assert (=> b!1327940 m!1484557))

(declare-fun m!1484559 () Bool)

(assert (=> b!1327941 m!1484559))

(declare-fun m!1484561 () Bool)

(assert (=> b!1327943 m!1484561))

(assert (=> b!1327478 d!374421))

(declare-fun d!374425 () Bool)

(assert (=> d!374425 (= (inv!17843 (tag!2598 (rule!4081 t2!34))) (= (mod (str.len (value!76209 (tag!2598 (rule!4081 t2!34)))) 2) 0))))

(assert (=> b!1327461 d!374425))

(declare-fun d!374427 () Bool)

(declare-fun res!598014 () Bool)

(declare-fun e!850808 () Bool)

(assert (=> d!374427 (=> (not res!598014) (not e!850808))))

(assert (=> d!374427 (= res!598014 (semiInverseModEq!879 (toChars!3426 (transformation!2336 (rule!4081 t2!34))) (toValue!3567 (transformation!2336 (rule!4081 t2!34)))))))

(assert (=> d!374427 (= (inv!17846 (transformation!2336 (rule!4081 t2!34))) e!850808)))

(declare-fun b!1327945 () Bool)

(assert (=> b!1327945 (= e!850808 (equivClasses!838 (toChars!3426 (transformation!2336 (rule!4081 t2!34))) (toValue!3567 (transformation!2336 (rule!4081 t2!34)))))))

(assert (= (and d!374427 res!598014) b!1327945))

(declare-fun m!1484563 () Bool)

(assert (=> d!374427 m!1484563))

(declare-fun m!1484565 () Bool)

(assert (=> b!1327945 m!1484565))

(assert (=> b!1327461 d!374427))

(declare-fun d!374429 () Bool)

(declare-fun lt!439134 () Bool)

(assert (=> d!374429 (= lt!439134 (set.member lt!438941 (content!1909 (usedCharacters!201 (regex!2336 (rule!4081 t2!34))))))))

(declare-fun e!850810 () Bool)

(assert (=> d!374429 (= lt!439134 e!850810)))

(declare-fun res!598015 () Bool)

(assert (=> d!374429 (=> (not res!598015) (not e!850810))))

(assert (=> d!374429 (= res!598015 (is-Cons!13492 (usedCharacters!201 (regex!2336 (rule!4081 t2!34)))))))

(assert (=> d!374429 (= (contains!2424 (usedCharacters!201 (regex!2336 (rule!4081 t2!34))) lt!438941) lt!439134)))

(declare-fun b!1327946 () Bool)

(declare-fun e!850809 () Bool)

(assert (=> b!1327946 (= e!850810 e!850809)))

(declare-fun res!598016 () Bool)

(assert (=> b!1327946 (=> res!598016 e!850809)))

(assert (=> b!1327946 (= res!598016 (= (h!18893 (usedCharacters!201 (regex!2336 (rule!4081 t2!34)))) lt!438941))))

(declare-fun b!1327947 () Bool)

(assert (=> b!1327947 (= e!850809 (contains!2424 (t!118859 (usedCharacters!201 (regex!2336 (rule!4081 t2!34)))) lt!438941))))

(assert (= (and d!374429 res!598015) b!1327946))

(assert (= (and b!1327946 (not res!598016)) b!1327947))

(assert (=> d!374429 m!1483991))

(declare-fun m!1484567 () Bool)

(assert (=> d!374429 m!1484567))

(declare-fun m!1484569 () Bool)

(assert (=> d!374429 m!1484569))

(declare-fun m!1484571 () Bool)

(assert (=> b!1327947 m!1484571))

(assert (=> b!1327504 d!374429))

(declare-fun bm!89848 () Bool)

(declare-fun call!89856 () List!13558)

(declare-fun call!89853 () List!13558)

(assert (=> bm!89848 (= call!89856 call!89853)))

(declare-fun call!89854 () List!13558)

(declare-fun c!217689 () Bool)

(declare-fun bm!89849 () Bool)

(declare-fun call!89855 () List!13558)

(assert (=> bm!89849 (= call!89854 (++!3445 (ite c!217689 call!89856 call!89855) (ite c!217689 call!89855 call!89856)))))

(declare-fun b!1327948 () Bool)

(declare-fun c!217690 () Bool)

(assert (=> b!1327948 (= c!217690 (is-Star!3650 (regex!2336 (rule!4081 t2!34))))))

(declare-fun e!850812 () List!13558)

(declare-fun e!850811 () List!13558)

(assert (=> b!1327948 (= e!850812 e!850811)))

(declare-fun b!1327949 () Bool)

(declare-fun e!850814 () List!13558)

(assert (=> b!1327949 (= e!850814 Nil!13492)))

(declare-fun b!1327950 () Bool)

(assert (=> b!1327950 (= e!850812 (Cons!13492 (c!217617 (regex!2336 (rule!4081 t2!34))) Nil!13492))))

(declare-fun bm!89850 () Bool)

(assert (=> bm!89850 (= call!89855 (usedCharacters!201 (ite c!217689 (regTwo!7813 (regex!2336 (rule!4081 t2!34))) (regOne!7812 (regex!2336 (rule!4081 t2!34))))))))

(declare-fun bm!89851 () Bool)

(assert (=> bm!89851 (= call!89853 (usedCharacters!201 (ite c!217690 (reg!3979 (regex!2336 (rule!4081 t2!34))) (ite c!217689 (regOne!7813 (regex!2336 (rule!4081 t2!34))) (regTwo!7812 (regex!2336 (rule!4081 t2!34)))))))))

(declare-fun b!1327951 () Bool)

(declare-fun e!850813 () List!13558)

(assert (=> b!1327951 (= e!850813 call!89854)))

(declare-fun b!1327952 () Bool)

(assert (=> b!1327952 (= e!850813 call!89854)))

(declare-fun d!374431 () Bool)

(declare-fun c!217692 () Bool)

(assert (=> d!374431 (= c!217692 (or (is-EmptyExpr!3650 (regex!2336 (rule!4081 t2!34))) (is-EmptyLang!3650 (regex!2336 (rule!4081 t2!34)))))))

(assert (=> d!374431 (= (usedCharacters!201 (regex!2336 (rule!4081 t2!34))) e!850814)))

(declare-fun b!1327953 () Bool)

(assert (=> b!1327953 (= e!850811 call!89853)))

(declare-fun b!1327954 () Bool)

(assert (=> b!1327954 (= e!850814 e!850812)))

(declare-fun c!217691 () Bool)

(assert (=> b!1327954 (= c!217691 (is-ElementMatch!3650 (regex!2336 (rule!4081 t2!34))))))

(declare-fun b!1327955 () Bool)

(assert (=> b!1327955 (= e!850811 e!850813)))

(assert (=> b!1327955 (= c!217689 (is-Union!3650 (regex!2336 (rule!4081 t2!34))))))

(assert (= (and d!374431 c!217692) b!1327949))

(assert (= (and d!374431 (not c!217692)) b!1327954))

(assert (= (and b!1327954 c!217691) b!1327950))

(assert (= (and b!1327954 (not c!217691)) b!1327948))

(assert (= (and b!1327948 c!217690) b!1327953))

(assert (= (and b!1327948 (not c!217690)) b!1327955))

(assert (= (and b!1327955 c!217689) b!1327951))

(assert (= (and b!1327955 (not c!217689)) b!1327952))

(assert (= (or b!1327951 b!1327952) bm!89848))

(assert (= (or b!1327951 b!1327952) bm!89850))

(assert (= (or b!1327951 b!1327952) bm!89849))

(assert (= (or b!1327953 bm!89848) bm!89851))

(declare-fun m!1484573 () Bool)

(assert (=> bm!89849 m!1484573))

(declare-fun m!1484575 () Bool)

(assert (=> bm!89850 m!1484575))

(declare-fun m!1484577 () Bool)

(assert (=> bm!89851 m!1484577))

(assert (=> b!1327504 d!374431))

(declare-fun b!1327960 () Bool)

(declare-fun res!598021 () Bool)

(declare-fun e!850817 () Bool)

(assert (=> b!1327960 (=> (not res!598021) (not e!850817))))

(declare-fun lt!439137 () Option!2607)

(assert (=> b!1327960 (= res!598021 (= (value!76210 (_1!7456 (get!4282 lt!439137))) (apply!3116 (transformation!2336 (rule!4081 (_1!7456 (get!4282 lt!439137)))) (seqFromList!1608 (originalCharacters!3198 (_1!7456 (get!4282 lt!439137)))))))))

(declare-fun b!1327961 () Bool)

(assert (=> b!1327961 (= e!850817 (contains!2425 rules!2550 (rule!4081 (_1!7456 (get!4282 lt!439137)))))))

(declare-fun b!1327962 () Bool)

(declare-fun e!850818 () Option!2607)

(declare-fun lt!439138 () Option!2607)

(declare-fun lt!439139 () Option!2607)

(assert (=> b!1327962 (= e!850818 (ite (and (is-None!2606 lt!439138) (is-None!2606 lt!439139)) None!2606 (ite (is-None!2606 lt!439139) lt!439138 (ite (is-None!2606 lt!439138) lt!439139 (ite (>= (size!10978 (_1!7456 (v!21211 lt!439138))) (size!10978 (_1!7456 (v!21211 lt!439139)))) lt!439138 lt!439139)))))))

(declare-fun call!89857 () Option!2607)

(assert (=> b!1327962 (= lt!439138 call!89857)))

(assert (=> b!1327962 (= lt!439139 (maxPrefix!1041 thiss!19762 (t!118861 rules!2550) lt!438953))))

(declare-fun d!374433 () Bool)

(declare-fun e!850819 () Bool)

(assert (=> d!374433 e!850819))

(declare-fun res!598019 () Bool)

(assert (=> d!374433 (=> res!598019 e!850819)))

(assert (=> d!374433 (= res!598019 (isEmpty!8034 lt!439137))))

(assert (=> d!374433 (= lt!439137 e!850818)))

(declare-fun c!217695 () Bool)

(assert (=> d!374433 (= c!217695 (and (is-Cons!13494 rules!2550) (is-Nil!13494 (t!118861 rules!2550))))))

(declare-fun lt!439141 () Unit!19589)

(declare-fun lt!439140 () Unit!19589)

(assert (=> d!374433 (= lt!439141 lt!439140)))

(assert (=> d!374433 (isPrefix!1085 lt!438953 lt!438953)))

(assert (=> d!374433 (= lt!439140 (lemmaIsPrefixRefl!764 lt!438953 lt!438953))))

(assert (=> d!374433 (rulesValidInductive!737 thiss!19762 rules!2550)))

(assert (=> d!374433 (= (maxPrefix!1041 thiss!19762 rules!2550 lt!438953) lt!439137)))

(declare-fun b!1327963 () Bool)

(declare-fun res!598022 () Bool)

(assert (=> b!1327963 (=> (not res!598022) (not e!850817))))

(assert (=> b!1327963 (= res!598022 (matchR!1652 (regex!2336 (rule!4081 (_1!7456 (get!4282 lt!439137)))) (list!5108 (charsOf!1308 (_1!7456 (get!4282 lt!439137))))))))

(declare-fun b!1327964 () Bool)

(assert (=> b!1327964 (= e!850818 call!89857)))

(declare-fun b!1327965 () Bool)

(declare-fun res!598023 () Bool)

(assert (=> b!1327965 (=> (not res!598023) (not e!850817))))

(assert (=> b!1327965 (= res!598023 (= (list!5108 (charsOf!1308 (_1!7456 (get!4282 lt!439137)))) (originalCharacters!3198 (_1!7456 (get!4282 lt!439137)))))))

(declare-fun b!1327966 () Bool)

(declare-fun res!598017 () Bool)

(assert (=> b!1327966 (=> (not res!598017) (not e!850817))))

(assert (=> b!1327966 (= res!598017 (= (++!3445 (list!5108 (charsOf!1308 (_1!7456 (get!4282 lt!439137)))) (_2!7456 (get!4282 lt!439137))) lt!438953))))

(declare-fun bm!89852 () Bool)

(assert (=> bm!89852 (= call!89857 (maxPrefixOneRule!590 thiss!19762 (h!18895 rules!2550) lt!438953))))

(declare-fun b!1327967 () Bool)

(declare-fun res!598020 () Bool)

(assert (=> b!1327967 (=> (not res!598020) (not e!850817))))

(assert (=> b!1327967 (= res!598020 (< (size!10982 (_2!7456 (get!4282 lt!439137))) (size!10982 lt!438953)))))

(declare-fun b!1327968 () Bool)

(assert (=> b!1327968 (= e!850819 e!850817)))

(declare-fun res!598018 () Bool)

(assert (=> b!1327968 (=> (not res!598018) (not e!850817))))

(assert (=> b!1327968 (= res!598018 (isDefined!2188 lt!439137))))

(assert (= (and d!374433 c!217695) b!1327964))

(assert (= (and d!374433 (not c!217695)) b!1327962))

(assert (= (or b!1327964 b!1327962) bm!89852))

(assert (= (and d!374433 (not res!598019)) b!1327968))

(assert (= (and b!1327968 res!598018) b!1327965))

(assert (= (and b!1327965 res!598023) b!1327967))

(assert (= (and b!1327967 res!598020) b!1327966))

(assert (= (and b!1327966 res!598017) b!1327960))

(assert (= (and b!1327960 res!598021) b!1327963))

(assert (= (and b!1327963 res!598022) b!1327961))

(declare-fun m!1484579 () Bool)

(assert (=> b!1327966 m!1484579))

(declare-fun m!1484581 () Bool)

(assert (=> b!1327966 m!1484581))

(assert (=> b!1327966 m!1484581))

(declare-fun m!1484583 () Bool)

(assert (=> b!1327966 m!1484583))

(assert (=> b!1327966 m!1484583))

(declare-fun m!1484585 () Bool)

(assert (=> b!1327966 m!1484585))

(assert (=> b!1327967 m!1484579))

(declare-fun m!1484587 () Bool)

(assert (=> b!1327967 m!1484587))

(declare-fun m!1484589 () Bool)

(assert (=> b!1327967 m!1484589))

(assert (=> b!1327960 m!1484579))

(declare-fun m!1484591 () Bool)

(assert (=> b!1327960 m!1484591))

(assert (=> b!1327960 m!1484591))

(declare-fun m!1484593 () Bool)

(assert (=> b!1327960 m!1484593))

(declare-fun m!1484595 () Bool)

(assert (=> bm!89852 m!1484595))

(assert (=> b!1327965 m!1484579))

(assert (=> b!1327965 m!1484581))

(assert (=> b!1327965 m!1484581))

(assert (=> b!1327965 m!1484583))

(declare-fun m!1484597 () Bool)

(assert (=> b!1327968 m!1484597))

(assert (=> b!1327963 m!1484579))

(assert (=> b!1327963 m!1484581))

(assert (=> b!1327963 m!1484581))

(assert (=> b!1327963 m!1484583))

(assert (=> b!1327963 m!1484583))

(declare-fun m!1484599 () Bool)

(assert (=> b!1327963 m!1484599))

(declare-fun m!1484601 () Bool)

(assert (=> b!1327962 m!1484601))

(declare-fun m!1484603 () Bool)

(assert (=> d!374433 m!1484603))

(declare-fun m!1484605 () Bool)

(assert (=> d!374433 m!1484605))

(declare-fun m!1484607 () Bool)

(assert (=> d!374433 m!1484607))

(assert (=> d!374433 m!1484511))

(assert (=> b!1327961 m!1484579))

(declare-fun m!1484609 () Bool)

(assert (=> b!1327961 m!1484609))

(assert (=> b!1327503 d!374433))

(declare-fun d!374435 () Bool)

(declare-fun list!5114 (Conc!4443) List!13559)

(assert (=> d!374435 (= (list!5109 (_1!7455 lt!438948)) (list!5114 (c!217618 (_1!7455 lt!438948))))))

(declare-fun bs!331421 () Bool)

(assert (= bs!331421 d!374435))

(declare-fun m!1484623 () Bool)

(assert (=> bs!331421 m!1484623))

(assert (=> b!1327481 d!374435))

(declare-fun b!1327993 () Bool)

(declare-fun e!850834 () Bool)

(declare-fun lt!439154 () tuple2!13138)

(assert (=> b!1327993 (= e!850834 (= (_2!7455 lt!439154) lt!438933))))

(declare-fun b!1327994 () Bool)

(declare-fun e!850835 () Bool)

(assert (=> b!1327994 (= e!850835 (= (list!5108 (_2!7455 lt!439154)) (_2!7454 (lexList!569 thiss!19762 rules!2550 (list!5108 lt!438933)))))))

(declare-fun b!1327995 () Bool)

(declare-fun e!850833 () Bool)

(declare-fun isEmpty!8039 (BalanceConc!8826) Bool)

(assert (=> b!1327995 (= e!850833 (not (isEmpty!8039 (_1!7455 lt!439154))))))

(declare-fun b!1327997 () Bool)

(declare-fun res!598036 () Bool)

(assert (=> b!1327997 (=> (not res!598036) (not e!850835))))

(assert (=> b!1327997 (= res!598036 (= (list!5109 (_1!7455 lt!439154)) (_1!7454 (lexList!569 thiss!19762 rules!2550 (list!5108 lt!438933)))))))

(declare-fun d!374437 () Bool)

(assert (=> d!374437 e!850835))

(declare-fun res!598038 () Bool)

(assert (=> d!374437 (=> (not res!598038) (not e!850835))))

(assert (=> d!374437 (= res!598038 e!850834)))

(declare-fun c!217702 () Bool)

(declare-fun size!10990 (BalanceConc!8826) Int)

(assert (=> d!374437 (= c!217702 (> (size!10990 (_1!7455 lt!439154)) 0))))

(declare-fun lexTailRecV2!377 (LexerInterface!2031 List!13560 BalanceConc!8824 BalanceConc!8824 BalanceConc!8824 BalanceConc!8826) tuple2!13138)

(assert (=> d!374437 (= lt!439154 (lexTailRecV2!377 thiss!19762 rules!2550 lt!438933 (BalanceConc!8825 Empty!4442) lt!438933 (BalanceConc!8827 Empty!4443)))))

(assert (=> d!374437 (= (lex!866 thiss!19762 rules!2550 lt!438933) lt!439154)))

(declare-fun b!1327996 () Bool)

(assert (=> b!1327996 (= e!850834 e!850833)))

(declare-fun res!598037 () Bool)

(assert (=> b!1327996 (= res!598037 (< (size!10979 (_2!7455 lt!439154)) (size!10979 lt!438933)))))

(assert (=> b!1327996 (=> (not res!598037) (not e!850833))))

(assert (= (and d!374437 c!217702) b!1327996))

(assert (= (and d!374437 (not c!217702)) b!1327993))

(assert (= (and b!1327996 res!598037) b!1327995))

(assert (= (and d!374437 res!598038) b!1327997))

(assert (= (and b!1327997 res!598036) b!1327994))

(declare-fun m!1484647 () Bool)

(assert (=> b!1327996 m!1484647))

(declare-fun m!1484649 () Bool)

(assert (=> b!1327996 m!1484649))

(declare-fun m!1484651 () Bool)

(assert (=> b!1327995 m!1484651))

(declare-fun m!1484653 () Bool)

(assert (=> b!1327997 m!1484653))

(assert (=> b!1327997 m!1484017))

(assert (=> b!1327997 m!1484017))

(assert (=> b!1327997 m!1484019))

(declare-fun m!1484655 () Bool)

(assert (=> d!374437 m!1484655))

(declare-fun m!1484657 () Bool)

(assert (=> d!374437 m!1484657))

(declare-fun m!1484659 () Bool)

(assert (=> b!1327994 m!1484659))

(assert (=> b!1327994 m!1484017))

(assert (=> b!1327994 m!1484017))

(assert (=> b!1327994 m!1484019))

(assert (=> b!1327481 d!374437))

(declare-fun d!374449 () Bool)

(declare-fun lt!439157 () BalanceConc!8824)

(declare-fun printList!571 (LexerInterface!2031 List!13559) List!13558)

(assert (=> d!374449 (= (list!5108 lt!439157) (printList!571 thiss!19762 (list!5109 (singletonSeq!927 t2!34))))))

(declare-fun printTailRec!553 (LexerInterface!2031 BalanceConc!8826 Int BalanceConc!8824) BalanceConc!8824)

(assert (=> d!374449 (= lt!439157 (printTailRec!553 thiss!19762 (singletonSeq!927 t2!34) 0 (BalanceConc!8825 Empty!4442)))))

(assert (=> d!374449 (= (print!805 thiss!19762 (singletonSeq!927 t2!34)) lt!439157)))

(declare-fun bs!331425 () Bool)

(assert (= bs!331425 d!374449))

(declare-fun m!1484661 () Bool)

(assert (=> bs!331425 m!1484661))

(assert (=> bs!331425 m!1484085))

(declare-fun m!1484663 () Bool)

(assert (=> bs!331425 m!1484663))

(assert (=> bs!331425 m!1484663))

(declare-fun m!1484665 () Bool)

(assert (=> bs!331425 m!1484665))

(assert (=> bs!331425 m!1484085))

(declare-fun m!1484667 () Bool)

(assert (=> bs!331425 m!1484667))

(assert (=> b!1327481 d!374449))

(declare-fun d!374451 () Bool)

(declare-fun e!850838 () Bool)

(assert (=> d!374451 e!850838))

(declare-fun res!598041 () Bool)

(assert (=> d!374451 (=> (not res!598041) (not e!850838))))

(declare-fun lt!439160 () BalanceConc!8826)

(assert (=> d!374451 (= res!598041 (= (list!5109 lt!439160) (Cons!13493 t2!34 Nil!13493)))))

(declare-fun singleton!397 (Token!4334) BalanceConc!8826)

(assert (=> d!374451 (= lt!439160 (singleton!397 t2!34))))

(assert (=> d!374451 (= (singletonSeq!927 t2!34) lt!439160)))

(declare-fun b!1328000 () Bool)

(declare-fun isBalanced!1291 (Conc!4443) Bool)

(assert (=> b!1328000 (= e!850838 (isBalanced!1291 (c!217618 lt!439160)))))

(assert (= (and d!374451 res!598041) b!1328000))

(declare-fun m!1484669 () Bool)

(assert (=> d!374451 m!1484669))

(declare-fun m!1484671 () Bool)

(assert (=> d!374451 m!1484671))

(declare-fun m!1484673 () Bool)

(assert (=> b!1328000 m!1484673))

(assert (=> b!1327481 d!374451))

(declare-fun d!374453 () Bool)

(declare-fun e!850841 () Bool)

(assert (=> d!374453 e!850841))

(declare-fun c!217703 () Bool)

(declare-fun lt!439162 () tuple2!13136)

(assert (=> d!374453 (= c!217703 (> (size!10984 (_1!7454 lt!439162)) 0))))

(declare-fun e!850840 () tuple2!13136)

(assert (=> d!374453 (= lt!439162 e!850840)))

(declare-fun c!217704 () Bool)

(declare-fun lt!439161 () Option!2607)

(assert (=> d!374453 (= c!217704 (is-Some!2606 lt!439161))))

(assert (=> d!374453 (= lt!439161 (maxPrefix!1041 thiss!19762 rules!2550 (list!5108 lt!438933)))))

(assert (=> d!374453 (= (lexList!569 thiss!19762 rules!2550 (list!5108 lt!438933)) lt!439162)))

(declare-fun b!1328001 () Bool)

(declare-fun lt!439163 () tuple2!13136)

(assert (=> b!1328001 (= e!850840 (tuple2!13137 (Cons!13493 (_1!7456 (v!21211 lt!439161)) (_1!7454 lt!439163)) (_2!7454 lt!439163)))))

(assert (=> b!1328001 (= lt!439163 (lexList!569 thiss!19762 rules!2550 (_2!7456 (v!21211 lt!439161))))))

(declare-fun b!1328002 () Bool)

(declare-fun e!850839 () Bool)

(assert (=> b!1328002 (= e!850841 e!850839)))

(declare-fun res!598042 () Bool)

(assert (=> b!1328002 (= res!598042 (< (size!10982 (_2!7454 lt!439162)) (size!10982 (list!5108 lt!438933))))))

(assert (=> b!1328002 (=> (not res!598042) (not e!850839))))

(declare-fun b!1328003 () Bool)

(assert (=> b!1328003 (= e!850840 (tuple2!13137 Nil!13493 (list!5108 lt!438933)))))

(declare-fun b!1328004 () Bool)

(assert (=> b!1328004 (= e!850841 (= (_2!7454 lt!439162) (list!5108 lt!438933)))))

(declare-fun b!1328005 () Bool)

(assert (=> b!1328005 (= e!850839 (not (isEmpty!8033 (_1!7454 lt!439162))))))

(assert (= (and d!374453 c!217704) b!1328001))

(assert (= (and d!374453 (not c!217704)) b!1328003))

(assert (= (and d!374453 c!217703) b!1328002))

(assert (= (and d!374453 (not c!217703)) b!1328004))

(assert (= (and b!1328002 res!598042) b!1328005))

(declare-fun m!1484675 () Bool)

(assert (=> d!374453 m!1484675))

(assert (=> d!374453 m!1484017))

(declare-fun m!1484677 () Bool)

(assert (=> d!374453 m!1484677))

(declare-fun m!1484679 () Bool)

(assert (=> b!1328001 m!1484679))

(declare-fun m!1484681 () Bool)

(assert (=> b!1328002 m!1484681))

(assert (=> b!1328002 m!1484017))

(declare-fun m!1484683 () Bool)

(assert (=> b!1328002 m!1484683))

(declare-fun m!1484685 () Bool)

(assert (=> b!1328005 m!1484685))

(assert (=> b!1327460 d!374453))

(declare-fun d!374455 () Bool)

(assert (=> d!374455 (= (list!5108 lt!438933) (list!5112 (c!217616 lt!438933)))))

(declare-fun bs!331426 () Bool)

(assert (= bs!331426 d!374455))

(declare-fun m!1484687 () Bool)

(assert (=> bs!331426 m!1484687))

(assert (=> b!1327460 d!374455))

(declare-fun d!374457 () Bool)

(declare-fun c!217706 () Bool)

(assert (=> d!374457 (= c!217706 (is-IntegerValue!7278 (value!76210 t2!34)))))

(declare-fun e!850842 () Bool)

(assert (=> d!374457 (= (inv!21 (value!76210 t2!34)) e!850842)))

(declare-fun b!1328006 () Bool)

(declare-fun e!850843 () Bool)

(assert (=> b!1328006 (= e!850843 (inv!17 (value!76210 t2!34)))))

(declare-fun b!1328007 () Bool)

(declare-fun e!850844 () Bool)

(assert (=> b!1328007 (= e!850844 (inv!15 (value!76210 t2!34)))))

(declare-fun b!1328008 () Bool)

(declare-fun res!598043 () Bool)

(assert (=> b!1328008 (=> res!598043 e!850844)))

(assert (=> b!1328008 (= res!598043 (not (is-IntegerValue!7280 (value!76210 t2!34))))))

(assert (=> b!1328008 (= e!850843 e!850844)))

(declare-fun b!1328009 () Bool)

(assert (=> b!1328009 (= e!850842 (inv!16 (value!76210 t2!34)))))

(declare-fun b!1328010 () Bool)

(assert (=> b!1328010 (= e!850842 e!850843)))

(declare-fun c!217705 () Bool)

(assert (=> b!1328010 (= c!217705 (is-IntegerValue!7279 (value!76210 t2!34)))))

(assert (= (and d!374457 c!217706) b!1328009))

(assert (= (and d!374457 (not c!217706)) b!1328010))

(assert (= (and b!1328010 c!217705) b!1328006))

(assert (= (and b!1328010 (not c!217705)) b!1328008))

(assert (= (and b!1328008 (not res!598043)) b!1328007))

(declare-fun m!1484689 () Bool)

(assert (=> b!1328006 m!1484689))

(declare-fun m!1484691 () Bool)

(assert (=> b!1328007 m!1484691))

(declare-fun m!1484693 () Bool)

(assert (=> b!1328009 m!1484693))

(assert (=> b!1327459 d!374457))

(declare-fun d!374459 () Bool)

(declare-fun lt!439164 () Bool)

(assert (=> d!374459 (= lt!439164 (set.member lt!438941 (content!1909 lt!438945)))))

(declare-fun e!850846 () Bool)

(assert (=> d!374459 (= lt!439164 e!850846)))

(declare-fun res!598044 () Bool)

(assert (=> d!374459 (=> (not res!598044) (not e!850846))))

(assert (=> d!374459 (= res!598044 (is-Cons!13492 lt!438945))))

(assert (=> d!374459 (= (contains!2424 lt!438945 lt!438941) lt!439164)))

(declare-fun b!1328011 () Bool)

(declare-fun e!850845 () Bool)

(assert (=> b!1328011 (= e!850846 e!850845)))

(declare-fun res!598045 () Bool)

(assert (=> b!1328011 (=> res!598045 e!850845)))

(assert (=> b!1328011 (= res!598045 (= (h!18893 lt!438945) lt!438941))))

(declare-fun b!1328012 () Bool)

(assert (=> b!1328012 (= e!850845 (contains!2424 (t!118859 lt!438945) lt!438941))))

(assert (= (and d!374459 res!598044) b!1328011))

(assert (= (and b!1328011 (not res!598045)) b!1328012))

(assert (=> d!374459 m!1484461))

(declare-fun m!1484695 () Bool)

(assert (=> d!374459 m!1484695))

(declare-fun m!1484697 () Bool)

(assert (=> b!1328012 m!1484697))

(assert (=> b!1327496 d!374459))

(declare-fun d!374461 () Bool)

(assert (=> d!374461 (= (isEmpty!8029 rules!2550) (is-Nil!13494 rules!2550))))

(assert (=> b!1327474 d!374461))

(declare-fun d!374463 () Bool)

(assert (=> d!374463 (= (list!5109 (_1!7455 lt!438942)) (list!5114 (c!217618 (_1!7455 lt!438942))))))

(declare-fun bs!331427 () Bool)

(assert (= bs!331427 d!374463))

(declare-fun m!1484699 () Bool)

(assert (=> bs!331427 m!1484699))

(assert (=> b!1327473 d!374463))

(declare-fun d!374465 () Bool)

(declare-fun lt!439165 () BalanceConc!8824)

(assert (=> d!374465 (= (list!5108 lt!439165) (printList!571 thiss!19762 (list!5109 (singletonSeq!927 t1!34))))))

(assert (=> d!374465 (= lt!439165 (printTailRec!553 thiss!19762 (singletonSeq!927 t1!34) 0 (BalanceConc!8825 Empty!4442)))))

(assert (=> d!374465 (= (print!805 thiss!19762 (singletonSeq!927 t1!34)) lt!439165)))

(declare-fun bs!331428 () Bool)

(assert (= bs!331428 d!374465))

(declare-fun m!1484701 () Bool)

(assert (=> bs!331428 m!1484701))

(assert (=> bs!331428 m!1484121))

(declare-fun m!1484703 () Bool)

(assert (=> bs!331428 m!1484703))

(assert (=> bs!331428 m!1484703))

(declare-fun m!1484705 () Bool)

(assert (=> bs!331428 m!1484705))

(assert (=> bs!331428 m!1484121))

(declare-fun m!1484707 () Bool)

(assert (=> bs!331428 m!1484707))

(assert (=> b!1327473 d!374465))

(declare-fun b!1328040 () Bool)

(declare-fun e!850866 () Rule!4472)

(declare-fun e!850867 () Rule!4472)

(assert (=> b!1328040 (= e!850866 e!850867)))

(declare-fun c!217714 () Bool)

(assert (=> b!1328040 (= c!217714 (is-Cons!13494 rules!2550))))

(declare-fun b!1328041 () Bool)

(declare-fun e!850865 () Bool)

(declare-fun lt!439174 () Rule!4472)

(assert (=> b!1328041 (= e!850865 (contains!2425 rules!2550 lt!439174))))

(declare-fun b!1328042 () Bool)

(declare-fun lt!439173 () Unit!19589)

(declare-fun Unit!19603 () Unit!19589)

(assert (=> b!1328042 (= lt!439173 Unit!19603)))

(assert (=> b!1328042 false))

(declare-fun head!2330 (List!13560) Rule!4472)

(assert (=> b!1328042 (= e!850867 (head!2330 rules!2550))))

(declare-fun b!1328043 () Bool)

(declare-fun e!850864 () Bool)

(assert (=> b!1328043 (= e!850864 (dynLambda!5927 lambda!54989 (h!18895 rules!2550)))))

(declare-fun b!1328044 () Bool)

(assert (=> b!1328044 (= e!850866 (h!18895 rules!2550))))

(declare-fun b!1328045 () Bool)

(assert (=> b!1328045 (= e!850867 (getWitness!266 (t!118861 rules!2550) lambda!54989))))

(declare-fun d!374467 () Bool)

(assert (=> d!374467 e!850865))

(declare-fun res!598059 () Bool)

(assert (=> d!374467 (=> (not res!598059) (not e!850865))))

(assert (=> d!374467 (= res!598059 (dynLambda!5927 lambda!54989 lt!439174))))

(assert (=> d!374467 (= lt!439174 e!850866)))

(declare-fun c!217715 () Bool)

(assert (=> d!374467 (= c!217715 e!850864)))

(declare-fun res!598060 () Bool)

(assert (=> d!374467 (=> (not res!598060) (not e!850864))))

(assert (=> d!374467 (= res!598060 (is-Cons!13494 rules!2550))))

(assert (=> d!374467 (exists!374 rules!2550 lambda!54989)))

(assert (=> d!374467 (= (getWitness!266 rules!2550 lambda!54989) lt!439174)))

(assert (= (and d!374467 res!598060) b!1328043))

(assert (= (and d!374467 c!217715) b!1328044))

(assert (= (and d!374467 (not c!217715)) b!1328040))

(assert (= (and b!1328040 c!217714) b!1328045))

(assert (= (and b!1328040 (not c!217714)) b!1328042))

(assert (= (and d!374467 res!598059) b!1328041))

(declare-fun b_lambda!38933 () Bool)

(assert (=> (not b_lambda!38933) (not b!1328043)))

(declare-fun b_lambda!38935 () Bool)

(assert (=> (not b_lambda!38935) (not d!374467)))

(declare-fun m!1484723 () Bool)

(assert (=> d!374467 m!1484723))

(assert (=> d!374467 m!1484089))

(declare-fun m!1484725 () Bool)

(assert (=> b!1328045 m!1484725))

(declare-fun m!1484727 () Bool)

(assert (=> b!1328041 m!1484727))

(declare-fun m!1484729 () Bool)

(assert (=> b!1328042 m!1484729))

(declare-fun m!1484731 () Bool)

(assert (=> b!1328043 m!1484731))

(assert (=> b!1327473 d!374467))

(declare-fun d!374471 () Bool)

(declare-fun e!850868 () Bool)

(assert (=> d!374471 e!850868))

(declare-fun res!598061 () Bool)

(assert (=> d!374471 (=> (not res!598061) (not e!850868))))

(declare-fun lt!439175 () BalanceConc!8826)

(assert (=> d!374471 (= res!598061 (= (list!5109 lt!439175) (Cons!13493 t1!34 Nil!13493)))))

(assert (=> d!374471 (= lt!439175 (singleton!397 t1!34))))

(assert (=> d!374471 (= (singletonSeq!927 t1!34) lt!439175)))

(declare-fun b!1328046 () Bool)

(assert (=> b!1328046 (= e!850868 (isBalanced!1291 (c!217618 lt!439175)))))

(assert (= (and d!374471 res!598061) b!1328046))

(declare-fun m!1484733 () Bool)

(assert (=> d!374471 m!1484733))

(declare-fun m!1484735 () Bool)

(assert (=> d!374471 m!1484735))

(declare-fun m!1484737 () Bool)

(assert (=> b!1328046 m!1484737))

(assert (=> b!1327473 d!374471))

(declare-fun b!1328047 () Bool)

(declare-fun e!850870 () Bool)

(declare-fun lt!439176 () tuple2!13138)

(assert (=> b!1328047 (= e!850870 (= (_2!7455 lt!439176) lt!438951))))

(declare-fun e!850871 () Bool)

(declare-fun b!1328048 () Bool)

(assert (=> b!1328048 (= e!850871 (= (list!5108 (_2!7455 lt!439176)) (_2!7454 (lexList!569 thiss!19762 rules!2550 (list!5108 lt!438951)))))))

(declare-fun b!1328049 () Bool)

(declare-fun e!850869 () Bool)

(assert (=> b!1328049 (= e!850869 (not (isEmpty!8039 (_1!7455 lt!439176))))))

(declare-fun b!1328051 () Bool)

(declare-fun res!598062 () Bool)

(assert (=> b!1328051 (=> (not res!598062) (not e!850871))))

(assert (=> b!1328051 (= res!598062 (= (list!5109 (_1!7455 lt!439176)) (_1!7454 (lexList!569 thiss!19762 rules!2550 (list!5108 lt!438951)))))))

(declare-fun d!374473 () Bool)

(assert (=> d!374473 e!850871))

(declare-fun res!598064 () Bool)

(assert (=> d!374473 (=> (not res!598064) (not e!850871))))

(assert (=> d!374473 (= res!598064 e!850870)))

(declare-fun c!217716 () Bool)

(assert (=> d!374473 (= c!217716 (> (size!10990 (_1!7455 lt!439176)) 0))))

(assert (=> d!374473 (= lt!439176 (lexTailRecV2!377 thiss!19762 rules!2550 lt!438951 (BalanceConc!8825 Empty!4442) lt!438951 (BalanceConc!8827 Empty!4443)))))

(assert (=> d!374473 (= (lex!866 thiss!19762 rules!2550 lt!438951) lt!439176)))

(declare-fun b!1328050 () Bool)

(assert (=> b!1328050 (= e!850870 e!850869)))

(declare-fun res!598063 () Bool)

(assert (=> b!1328050 (= res!598063 (< (size!10979 (_2!7455 lt!439176)) (size!10979 lt!438951)))))

(assert (=> b!1328050 (=> (not res!598063) (not e!850869))))

(assert (= (and d!374473 c!217716) b!1328050))

(assert (= (and d!374473 (not c!217716)) b!1328047))

(assert (= (and b!1328050 res!598063) b!1328049))

(assert (= (and d!374473 res!598064) b!1328051))

(assert (= (and b!1328051 res!598062) b!1328048))

(declare-fun m!1484739 () Bool)

(assert (=> b!1328050 m!1484739))

(declare-fun m!1484741 () Bool)

(assert (=> b!1328050 m!1484741))

(declare-fun m!1484743 () Bool)

(assert (=> b!1328049 m!1484743))

(declare-fun m!1484745 () Bool)

(assert (=> b!1328051 m!1484745))

(assert (=> b!1328051 m!1484011))

(assert (=> b!1328051 m!1484011))

(assert (=> b!1328051 m!1484013))

(declare-fun m!1484747 () Bool)

(assert (=> d!374473 m!1484747))

(declare-fun m!1484749 () Bool)

(assert (=> d!374473 m!1484749))

(declare-fun m!1484751 () Bool)

(assert (=> b!1328048 m!1484751))

(assert (=> b!1328048 m!1484011))

(assert (=> b!1328048 m!1484011))

(assert (=> b!1328048 m!1484013))

(assert (=> b!1327473 d!374473))

(declare-fun d!374475 () Bool)

(assert (=> d!374475 (not (matchR!1652 (regex!2336 (rule!4081 t1!34)) lt!438953))))

(declare-fun lt!439179 () Unit!19589)

(declare-fun choose!8132 (Regex!3650 List!13558 C!7590) Unit!19589)

(assert (=> d!374475 (= lt!439179 (choose!8132 (regex!2336 (rule!4081 t1!34)) lt!438953 (head!2327 lt!438953)))))

(assert (=> d!374475 (validRegex!1566 (regex!2336 (rule!4081 t1!34)))))

(assert (=> d!374475 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!147 (regex!2336 (rule!4081 t1!34)) lt!438953 (head!2327 lt!438953)) lt!439179)))

(declare-fun bs!331429 () Bool)

(assert (= bs!331429 d!374475))

(assert (=> bs!331429 m!1484023))

(assert (=> bs!331429 m!1483985))

(declare-fun m!1484753 () Bool)

(assert (=> bs!331429 m!1484753))

(assert (=> bs!331429 m!1484293))

(assert (=> b!1327494 d!374475))

(declare-fun d!374477 () Bool)

(assert (=> d!374477 (= (head!2327 lt!438953) (h!18893 lt!438953))))

(assert (=> b!1327494 d!374477))

(declare-fun d!374479 () Bool)

(declare-fun lt!439182 () Bool)

(assert (=> d!374479 (= lt!439182 (isEmpty!8032 (list!5108 (_2!7455 lt!438948))))))

(declare-fun isEmpty!8040 (Conc!4442) Bool)

(assert (=> d!374479 (= lt!439182 (isEmpty!8040 (c!217616 (_2!7455 lt!438948))))))

(assert (=> d!374479 (= (isEmpty!8028 (_2!7455 lt!438948)) lt!439182)))

(declare-fun bs!331430 () Bool)

(assert (= bs!331430 d!374479))

(declare-fun m!1484755 () Bool)

(assert (=> bs!331430 m!1484755))

(assert (=> bs!331430 m!1484755))

(declare-fun m!1484757 () Bool)

(assert (=> bs!331430 m!1484757))

(declare-fun m!1484759 () Bool)

(assert (=> bs!331430 m!1484759))

(assert (=> b!1327497 d!374479))

(declare-fun d!374481 () Bool)

(declare-fun lt!439198 () Bool)

(declare-fun e!850884 () Bool)

(assert (=> d!374481 (= lt!439198 e!850884)))

(declare-fun res!598082 () Bool)

(assert (=> d!374481 (=> (not res!598082) (not e!850884))))

(assert (=> d!374481 (= res!598082 (= (list!5109 (_1!7455 (lex!866 thiss!19762 rules!2550 (print!805 thiss!19762 (singletonSeq!927 t2!34))))) (list!5109 (singletonSeq!927 t2!34))))))

(declare-fun e!850883 () Bool)

(assert (=> d!374481 (= lt!439198 e!850883)))

(declare-fun res!598081 () Bool)

(assert (=> d!374481 (=> (not res!598081) (not e!850883))))

(declare-fun lt!439197 () tuple2!13138)

(assert (=> d!374481 (= res!598081 (= (size!10990 (_1!7455 lt!439197)) 1))))

(assert (=> d!374481 (= lt!439197 (lex!866 thiss!19762 rules!2550 (print!805 thiss!19762 (singletonSeq!927 t2!34))))))

(assert (=> d!374481 (not (isEmpty!8029 rules!2550))))

(assert (=> d!374481 (= (rulesProduceIndividualToken!1000 thiss!19762 rules!2550 t2!34) lt!439198)))

(declare-fun b!1328067 () Bool)

(declare-fun res!598080 () Bool)

(assert (=> b!1328067 (=> (not res!598080) (not e!850883))))

(declare-fun apply!3118 (BalanceConc!8826 Int) Token!4334)

(assert (=> b!1328067 (= res!598080 (= (apply!3118 (_1!7455 lt!439197) 0) t2!34))))

(declare-fun b!1328068 () Bool)

(assert (=> b!1328068 (= e!850883 (isEmpty!8028 (_2!7455 lt!439197)))))

(declare-fun b!1328069 () Bool)

(assert (=> b!1328069 (= e!850884 (isEmpty!8028 (_2!7455 (lex!866 thiss!19762 rules!2550 (print!805 thiss!19762 (singletonSeq!927 t2!34))))))))

(assert (= (and d!374481 res!598081) b!1328067))

(assert (= (and b!1328067 res!598080) b!1328068))

(assert (= (and d!374481 res!598082) b!1328069))

(assert (=> d!374481 m!1484087))

(declare-fun m!1484775 () Bool)

(assert (=> d!374481 m!1484775))

(assert (=> d!374481 m!1484085))

(assert (=> d!374481 m!1484085))

(assert (=> d!374481 m!1484087))

(assert (=> d!374481 m!1484085))

(assert (=> d!374481 m!1484663))

(declare-fun m!1484777 () Bool)

(assert (=> d!374481 m!1484777))

(declare-fun m!1484779 () Bool)

(assert (=> d!374481 m!1484779))

(assert (=> d!374481 m!1484131))

(declare-fun m!1484781 () Bool)

(assert (=> b!1328067 m!1484781))

(declare-fun m!1484783 () Bool)

(assert (=> b!1328068 m!1484783))

(assert (=> b!1328069 m!1484085))

(assert (=> b!1328069 m!1484085))

(assert (=> b!1328069 m!1484087))

(assert (=> b!1328069 m!1484087))

(assert (=> b!1328069 m!1484775))

(declare-fun m!1484787 () Bool)

(assert (=> b!1328069 m!1484787))

(assert (=> b!1327476 d!374481))

(declare-fun d!374487 () Bool)

(declare-fun lt!439201 () Int)

(assert (=> d!374487 (= lt!439201 (size!10982 (list!5108 lt!438952)))))

(assert (=> d!374487 (= lt!439201 (size!10983 (c!217616 lt!438952)))))

(assert (=> d!374487 (= (size!10979 lt!438952) lt!439201)))

(declare-fun bs!331432 () Bool)

(assert (= bs!331432 d!374487))

(assert (=> bs!331432 m!1484105))

(assert (=> bs!331432 m!1484105))

(declare-fun m!1484799 () Bool)

(assert (=> bs!331432 m!1484799))

(declare-fun m!1484801 () Bool)

(assert (=> bs!331432 m!1484801))

(assert (=> b!1327475 d!374487))

(declare-fun d!374489 () Bool)

(declare-fun lt!439203 () Bool)

(declare-fun e!850888 () Bool)

(assert (=> d!374489 (= lt!439203 e!850888)))

(declare-fun res!598088 () Bool)

(assert (=> d!374489 (=> (not res!598088) (not e!850888))))

(assert (=> d!374489 (= res!598088 (= (list!5109 (_1!7455 (lex!866 thiss!19762 rules!2550 (print!805 thiss!19762 (singletonSeq!927 t1!34))))) (list!5109 (singletonSeq!927 t1!34))))))

(declare-fun e!850887 () Bool)

(assert (=> d!374489 (= lt!439203 e!850887)))

(declare-fun res!598087 () Bool)

(assert (=> d!374489 (=> (not res!598087) (not e!850887))))

(declare-fun lt!439202 () tuple2!13138)

(assert (=> d!374489 (= res!598087 (= (size!10990 (_1!7455 lt!439202)) 1))))

(assert (=> d!374489 (= lt!439202 (lex!866 thiss!19762 rules!2550 (print!805 thiss!19762 (singletonSeq!927 t1!34))))))

(assert (=> d!374489 (not (isEmpty!8029 rules!2550))))

(assert (=> d!374489 (= (rulesProduceIndividualToken!1000 thiss!19762 rules!2550 t1!34) lt!439203)))

(declare-fun b!1328073 () Bool)

(declare-fun res!598086 () Bool)

(assert (=> b!1328073 (=> (not res!598086) (not e!850887))))

(assert (=> b!1328073 (= res!598086 (= (apply!3118 (_1!7455 lt!439202) 0) t1!34))))

(declare-fun b!1328074 () Bool)

(assert (=> b!1328074 (= e!850887 (isEmpty!8028 (_2!7455 lt!439202)))))

(declare-fun b!1328075 () Bool)

(assert (=> b!1328075 (= e!850888 (isEmpty!8028 (_2!7455 (lex!866 thiss!19762 rules!2550 (print!805 thiss!19762 (singletonSeq!927 t1!34))))))))

(assert (= (and d!374489 res!598087) b!1328073))

(assert (= (and b!1328073 res!598086) b!1328074))

(assert (= (and d!374489 res!598088) b!1328075))

(assert (=> d!374489 m!1484129))

(declare-fun m!1484811 () Bool)

(assert (=> d!374489 m!1484811))

(assert (=> d!374489 m!1484121))

(assert (=> d!374489 m!1484121))

(assert (=> d!374489 m!1484129))

(assert (=> d!374489 m!1484121))

(assert (=> d!374489 m!1484703))

(declare-fun m!1484813 () Bool)

(assert (=> d!374489 m!1484813))

(declare-fun m!1484815 () Bool)

(assert (=> d!374489 m!1484815))

(assert (=> d!374489 m!1484131))

(declare-fun m!1484817 () Bool)

(assert (=> b!1328073 m!1484817))

(declare-fun m!1484819 () Bool)

(assert (=> b!1328074 m!1484819))

(assert (=> b!1328075 m!1484121))

(assert (=> b!1328075 m!1484121))

(assert (=> b!1328075 m!1484129))

(assert (=> b!1328075 m!1484129))

(assert (=> b!1328075 m!1484811))

(declare-fun m!1484821 () Bool)

(assert (=> b!1328075 m!1484821))

(assert (=> b!1327469 d!374489))

(declare-fun d!374495 () Bool)

(declare-fun lt!439205 () Bool)

(assert (=> d!374495 (= lt!439205 (set.member lt!438934 (content!1909 lt!438930)))))

(declare-fun e!850892 () Bool)

(assert (=> d!374495 (= lt!439205 e!850892)))

(declare-fun res!598091 () Bool)

(assert (=> d!374495 (=> (not res!598091) (not e!850892))))

(assert (=> d!374495 (= res!598091 (is-Cons!13492 lt!438930))))

(assert (=> d!374495 (= (contains!2424 lt!438930 lt!438934) lt!439205)))

(declare-fun b!1328078 () Bool)

(declare-fun e!850891 () Bool)

(assert (=> b!1328078 (= e!850892 e!850891)))

(declare-fun res!598092 () Bool)

(assert (=> b!1328078 (=> res!598092 e!850891)))

(assert (=> b!1328078 (= res!598092 (= (h!18893 lt!438930) lt!438934))))

(declare-fun b!1328079 () Bool)

(assert (=> b!1328079 (= e!850891 (contains!2424 (t!118859 lt!438930) lt!438934))))

(assert (= (and d!374495 res!598091) b!1328078))

(assert (= (and b!1328078 (not res!598092)) b!1328079))

(assert (=> d!374495 m!1484525))

(declare-fun m!1484823 () Bool)

(assert (=> d!374495 m!1484823))

(declare-fun m!1484825 () Bool)

(assert (=> b!1328079 m!1484825))

(assert (=> b!1327490 d!374495))

(declare-fun d!374497 () Bool)

(declare-fun lt!439208 () C!7590)

(declare-fun apply!3119 (List!13558 Int) C!7590)

(assert (=> d!374497 (= lt!439208 (apply!3119 (list!5108 lt!438952) 0))))

(declare-fun apply!3120 (Conc!4442 Int) C!7590)

(assert (=> d!374497 (= lt!439208 (apply!3120 (c!217616 lt!438952) 0))))

(declare-fun e!850903 () Bool)

(assert (=> d!374497 e!850903))

(declare-fun res!598095 () Bool)

(assert (=> d!374497 (=> (not res!598095) (not e!850903))))

(assert (=> d!374497 (= res!598095 (<= 0 0))))

(assert (=> d!374497 (= (apply!3114 lt!438952 0) lt!439208)))

(declare-fun b!1328098 () Bool)

(assert (=> b!1328098 (= e!850903 (< 0 (size!10979 lt!438952)))))

(assert (= (and d!374497 res!598095) b!1328098))

(assert (=> d!374497 m!1484105))

(assert (=> d!374497 m!1484105))

(declare-fun m!1484827 () Bool)

(assert (=> d!374497 m!1484827))

(declare-fun m!1484829 () Bool)

(assert (=> d!374497 m!1484829))

(assert (=> b!1328098 m!1483983))

(assert (=> b!1327490 d!374497))

(declare-fun d!374499 () Bool)

(assert (=> d!374499 (not (matchR!1652 (regex!2336 (rule!4081 t2!34)) lt!438931))))

(declare-fun lt!439209 () Unit!19589)

(assert (=> d!374499 (= lt!439209 (choose!8132 (regex!2336 (rule!4081 t2!34)) lt!438931 (head!2327 lt!438931)))))

(assert (=> d!374499 (validRegex!1566 (regex!2336 (rule!4081 t2!34)))))

(assert (=> d!374499 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!147 (regex!2336 (rule!4081 t2!34)) lt!438931 (head!2327 lt!438931)) lt!439209)))

(declare-fun bs!331433 () Bool)

(assert (= bs!331433 d!374499))

(assert (=> bs!331433 m!1484005))

(assert (=> bs!331433 m!1484073))

(declare-fun m!1484831 () Bool)

(assert (=> bs!331433 m!1484831))

(assert (=> bs!331433 m!1484365))

(assert (=> b!1327489 d!374499))

(declare-fun d!374501 () Bool)

(assert (=> d!374501 (= (head!2327 lt!438931) (h!18893 lt!438931))))

(assert (=> b!1327489 d!374501))

(declare-fun bs!331434 () Bool)

(declare-fun d!374503 () Bool)

(assert (= bs!331434 (and d!374503 b!1327468)))

(declare-fun lambda!55038 () Int)

(assert (=> bs!331434 (not (= lambda!55038 lambda!54989))))

(declare-fun bs!331435 () Bool)

(assert (= bs!331435 (and d!374503 b!1327485)))

(assert (=> bs!331435 (not (= lambda!55038 lambda!54990))))

(assert (=> d!374503 true))

(declare-fun order!8123 () Int)

(declare-fun dynLambda!5935 (Int Int) Int)

(assert (=> d!374503 (< (dynLambda!5935 order!8123 lambda!54989) (dynLambda!5935 order!8123 lambda!55038))))

(assert (=> d!374503 (= (exists!374 rules!2550 lambda!54989) (not (forall!3315 rules!2550 lambda!55038)))))

(declare-fun bs!331436 () Bool)

(assert (= bs!331436 d!374503))

(declare-fun m!1484839 () Bool)

(assert (=> bs!331436 m!1484839))

(assert (=> b!1327468 d!374503))

(declare-fun bs!331437 () Bool)

(declare-fun d!374507 () Bool)

(assert (= bs!331437 (and d!374507 b!1327468)))

(declare-fun lambda!55041 () Int)

(assert (=> bs!331437 (not (= lambda!55041 lambda!54989))))

(declare-fun bs!331438 () Bool)

(assert (= bs!331438 (and d!374507 b!1327485)))

(assert (=> bs!331438 (not (= lambda!55041 lambda!54990))))

(declare-fun bs!331439 () Bool)

(assert (= bs!331439 (and d!374507 d!374503)))

(assert (=> bs!331439 (not (= lambda!55041 lambda!55038))))

(assert (=> d!374507 true))

(assert (=> d!374507 true))

(declare-fun order!8125 () Int)

(declare-fun dynLambda!5936 (Int Int) Int)

(assert (=> d!374507 (< (dynLambda!5936 order!8125 lambda!54987) (dynLambda!5935 order!8123 lambda!55041))))

(assert (=> d!374507 (exists!374 rules!2550 lambda!55041)))

(declare-fun lt!439217 () Unit!19589)

(declare-fun choose!8133 (List!13560 Int Regex!3650) Unit!19589)

(assert (=> d!374507 (= lt!439217 (choose!8133 rules!2550 lambda!54987 lt!438956))))

(assert (=> d!374507 (contains!2426 (map!2971 rules!2550 lambda!54987) lt!438956)))

(assert (=> d!374507 (= (lemmaMapContains!79 rules!2550 lambda!54987 lt!438956) lt!439217)))

(declare-fun bs!331440 () Bool)

(assert (= bs!331440 d!374507))

(declare-fun m!1484853 () Bool)

(assert (=> bs!331440 m!1484853))

(declare-fun m!1484855 () Bool)

(assert (=> bs!331440 m!1484855))

(assert (=> bs!331440 m!1484031))

(assert (=> bs!331440 m!1484031))

(assert (=> bs!331440 m!1484033))

(assert (=> b!1327468 d!374507))

(declare-fun d!374513 () Bool)

(declare-fun lt!439219 () C!7590)

(assert (=> d!374513 (= lt!439219 (apply!3119 (list!5108 lt!438932) 0))))

(assert (=> d!374513 (= lt!439219 (apply!3120 (c!217616 lt!438932) 0))))

(declare-fun e!850920 () Bool)

(assert (=> d!374513 e!850920))

(declare-fun res!598108 () Bool)

(assert (=> d!374513 (=> (not res!598108) (not e!850920))))

(assert (=> d!374513 (= res!598108 (<= 0 0))))

(assert (=> d!374513 (= (apply!3114 lt!438932 0) lt!439219)))

(declare-fun b!1328125 () Bool)

(assert (=> b!1328125 (= e!850920 (< 0 (size!10979 lt!438932)))))

(assert (= (and d!374513 res!598108) b!1328125))

(assert (=> d!374513 m!1484045))

(assert (=> d!374513 m!1484045))

(declare-fun m!1484857 () Bool)

(assert (=> d!374513 m!1484857))

(declare-fun m!1484859 () Bool)

(assert (=> d!374513 m!1484859))

(assert (=> b!1328125 m!1484007))

(assert (=> b!1327467 d!374513))

(declare-fun d!374515 () Bool)

(assert (=> d!374515 (= (list!5108 lt!438952) (list!5112 (c!217616 lt!438952)))))

(declare-fun bs!331441 () Bool)

(assert (= bs!331441 d!374515))

(declare-fun m!1484861 () Bool)

(assert (=> bs!331441 m!1484861))

(assert (=> b!1327467 d!374515))

(declare-fun d!374517 () Bool)

(declare-fun c!217735 () Bool)

(assert (=> d!374517 (= c!217735 (isEmpty!8032 lt!438930))))

(declare-fun e!850926 () Bool)

(assert (=> d!374517 (= (prefixMatch!163 lt!438935 lt!438930) e!850926)))

(declare-fun b!1328136 () Bool)

(declare-fun lostCause!286 (Regex!3650) Bool)

(assert (=> b!1328136 (= e!850926 (not (lostCause!286 lt!438935)))))

(declare-fun b!1328137 () Bool)

(assert (=> b!1328137 (= e!850926 (prefixMatch!163 (derivativeStep!910 lt!438935 (head!2327 lt!438930)) (tail!1903 lt!438930)))))

(assert (= (and d!374517 c!217735) b!1328136))

(assert (= (and d!374517 (not c!217735)) b!1328137))

(declare-fun m!1484873 () Bool)

(assert (=> d!374517 m!1484873))

(declare-fun m!1484875 () Bool)

(assert (=> b!1328136 m!1484875))

(declare-fun m!1484877 () Bool)

(assert (=> b!1328137 m!1484877))

(assert (=> b!1328137 m!1484877))

(declare-fun m!1484879 () Bool)

(assert (=> b!1328137 m!1484879))

(declare-fun m!1484881 () Bool)

(assert (=> b!1328137 m!1484881))

(assert (=> b!1328137 m!1484879))

(assert (=> b!1328137 m!1484881))

(declare-fun m!1484883 () Bool)

(assert (=> b!1328137 m!1484883))

(assert (=> b!1327467 d!374517))

(declare-fun d!374521 () Bool)

(declare-fun lt!439223 () BalanceConc!8824)

(assert (=> d!374521 (= (list!5108 lt!439223) (originalCharacters!3198 t1!34))))

(assert (=> d!374521 (= lt!439223 (dynLambda!5928 (toChars!3426 (transformation!2336 (rule!4081 t1!34))) (value!76210 t1!34)))))

(assert (=> d!374521 (= (charsOf!1308 t1!34) lt!439223)))

(declare-fun b_lambda!38939 () Bool)

(assert (=> (not b_lambda!38939) (not d!374521)))

(assert (=> d!374521 t!118875))

(declare-fun b_and!88717 () Bool)

(assert (= b_and!88711 (and (=> t!118875 result!85278) b_and!88717)))

(assert (=> d!374521 t!118877))

(declare-fun b_and!88719 () Bool)

(assert (= b_and!88713 (and (=> t!118877 result!85280) b_and!88719)))

(assert (=> d!374521 t!118879))

(declare-fun b_and!88721 () Bool)

(assert (= b_and!88715 (and (=> t!118879 result!85282) b_and!88721)))

(declare-fun m!1484885 () Bool)

(assert (=> d!374521 m!1484885))

(assert (=> d!374521 m!1484337))

(assert (=> b!1327467 d!374521))

(declare-fun bs!331442 () Bool)

(declare-fun d!374523 () Bool)

(assert (= bs!331442 (and d!374523 b!1327492)))

(declare-fun lambda!55044 () Int)

(assert (=> bs!331442 (= lambda!55044 lambda!54987)))

(declare-fun lt!439230 () Unit!19589)

(declare-fun lemma!80 (List!13560 LexerInterface!2031 List!13560) Unit!19589)

(assert (=> d!374523 (= lt!439230 (lemma!80 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!88 (List!13561) Regex!3650)

(assert (=> d!374523 (= (rulesRegex!221 thiss!19762 rules!2550) (generalisedUnion!88 (map!2971 rules!2550 lambda!55044)))))

(declare-fun bs!331443 () Bool)

(assert (= bs!331443 d!374523))

(declare-fun m!1484887 () Bool)

(assert (=> bs!331443 m!1484887))

(declare-fun m!1484889 () Bool)

(assert (=> bs!331443 m!1484889))

(assert (=> bs!331443 m!1484889))

(declare-fun m!1484891 () Bool)

(assert (=> bs!331443 m!1484891))

(assert (=> b!1327467 d!374523))

(declare-fun b!1328152 () Bool)

(declare-fun res!598114 () Bool)

(declare-fun e!850935 () Bool)

(assert (=> b!1328152 (=> (not res!598114) (not e!850935))))

(declare-fun lt!439231 () List!13558)

(assert (=> b!1328152 (= res!598114 (= (size!10982 lt!439231) (+ (size!10982 lt!438953) (size!10982 (Cons!13492 lt!438941 Nil!13492)))))))

(declare-fun d!374525 () Bool)

(assert (=> d!374525 e!850935))

(declare-fun res!598113 () Bool)

(assert (=> d!374525 (=> (not res!598113) (not e!850935))))

(assert (=> d!374525 (= res!598113 (= (content!1909 lt!439231) (set.union (content!1909 lt!438953) (content!1909 (Cons!13492 lt!438941 Nil!13492)))))))

(declare-fun e!850936 () List!13558)

(assert (=> d!374525 (= lt!439231 e!850936)))

(declare-fun c!217740 () Bool)

(assert (=> d!374525 (= c!217740 (is-Nil!13492 lt!438953))))

(assert (=> d!374525 (= (++!3445 lt!438953 (Cons!13492 lt!438941 Nil!13492)) lt!439231)))

(declare-fun b!1328153 () Bool)

(assert (=> b!1328153 (= e!850935 (or (not (= (Cons!13492 lt!438941 Nil!13492) Nil!13492)) (= lt!439231 lt!438953)))))

(declare-fun b!1328151 () Bool)

(assert (=> b!1328151 (= e!850936 (Cons!13492 (h!18893 lt!438953) (++!3445 (t!118859 lt!438953) (Cons!13492 lt!438941 Nil!13492))))))

(declare-fun b!1328150 () Bool)

(assert (=> b!1328150 (= e!850936 (Cons!13492 lt!438941 Nil!13492))))

(assert (= (and d!374525 c!217740) b!1328150))

(assert (= (and d!374525 (not c!217740)) b!1328151))

(assert (= (and d!374525 res!598113) b!1328152))

(assert (= (and b!1328152 res!598114) b!1328153))

(declare-fun m!1484893 () Bool)

(assert (=> b!1328152 m!1484893))

(assert (=> b!1328152 m!1484589))

(declare-fun m!1484895 () Bool)

(assert (=> b!1328152 m!1484895))

(declare-fun m!1484897 () Bool)

(assert (=> d!374525 m!1484897))

(declare-fun m!1484899 () Bool)

(assert (=> d!374525 m!1484899))

(declare-fun m!1484901 () Bool)

(assert (=> d!374525 m!1484901))

(declare-fun m!1484903 () Bool)

(assert (=> b!1328151 m!1484903))

(assert (=> b!1327467 d!374525))

(declare-fun d!374527 () Bool)

(declare-fun lt!439234 () Bool)

(assert (=> d!374527 (= lt!439234 (set.member lt!438941 (content!1909 lt!438930)))))

(declare-fun e!850942 () Bool)

(assert (=> d!374527 (= lt!439234 e!850942)))

(declare-fun res!598117 () Bool)

(assert (=> d!374527 (=> (not res!598117) (not e!850942))))

(assert (=> d!374527 (= res!598117 (is-Cons!13492 lt!438930))))

(assert (=> d!374527 (= (contains!2424 lt!438930 lt!438941) lt!439234)))

(declare-fun b!1328160 () Bool)

(declare-fun e!850941 () Bool)

(assert (=> b!1328160 (= e!850942 e!850941)))

(declare-fun res!598118 () Bool)

(assert (=> b!1328160 (=> res!598118 e!850941)))

(assert (=> b!1328160 (= res!598118 (= (h!18893 lt!438930) lt!438941))))

(declare-fun b!1328161 () Bool)

(assert (=> b!1328161 (= e!850941 (contains!2424 (t!118859 lt!438930) lt!438941))))

(assert (= (and d!374527 res!598117) b!1328160))

(assert (= (and b!1328160 (not res!598118)) b!1328161))

(assert (=> d!374527 m!1484525))

(declare-fun m!1484905 () Bool)

(assert (=> d!374527 m!1484905))

(declare-fun m!1484907 () Bool)

(assert (=> b!1328161 m!1484907))

(assert (=> b!1327493 d!374527))

(declare-fun b!1328162 () Bool)

(declare-fun res!598120 () Bool)

(declare-fun e!850946 () Bool)

(assert (=> b!1328162 (=> (not res!598120) (not e!850946))))

(declare-fun call!89870 () Bool)

(assert (=> b!1328162 (= res!598120 (not call!89870))))

(declare-fun b!1328163 () Bool)

(assert (=> b!1328163 (= e!850946 (= (head!2327 lt!438945) (c!217617 lt!438935)))))

(declare-fun b!1328164 () Bool)

(declare-fun e!850943 () Bool)

(declare-fun lt!439235 () Bool)

(assert (=> b!1328164 (= e!850943 (= lt!439235 call!89870))))

(declare-fun b!1328165 () Bool)

(declare-fun res!598121 () Bool)

(declare-fun e!850948 () Bool)

(assert (=> b!1328165 (=> res!598121 e!850948)))

(assert (=> b!1328165 (= res!598121 (not (is-ElementMatch!3650 lt!438935)))))

(declare-fun e!850945 () Bool)

(assert (=> b!1328165 (= e!850945 e!850948)))

(declare-fun b!1328166 () Bool)

(assert (=> b!1328166 (= e!850945 (not lt!439235))))

(declare-fun b!1328167 () Bool)

(declare-fun e!850949 () Bool)

(declare-fun e!850947 () Bool)

(assert (=> b!1328167 (= e!850949 e!850947)))

(declare-fun res!598123 () Bool)

(assert (=> b!1328167 (=> res!598123 e!850947)))

(assert (=> b!1328167 (= res!598123 call!89870)))

(declare-fun b!1328168 () Bool)

(declare-fun res!598124 () Bool)

(assert (=> b!1328168 (=> res!598124 e!850947)))

(assert (=> b!1328168 (= res!598124 (not (isEmpty!8032 (tail!1903 lt!438945))))))

(declare-fun b!1328170 () Bool)

(assert (=> b!1328170 (= e!850947 (not (= (head!2327 lt!438945) (c!217617 lt!438935))))))

(declare-fun b!1328171 () Bool)

(assert (=> b!1328171 (= e!850943 e!850945)))

(declare-fun c!217744 () Bool)

(assert (=> b!1328171 (= c!217744 (is-EmptyLang!3650 lt!438935))))

(declare-fun b!1328172 () Bool)

(declare-fun e!850944 () Bool)

(assert (=> b!1328172 (= e!850944 (matchR!1652 (derivativeStep!910 lt!438935 (head!2327 lt!438945)) (tail!1903 lt!438945)))))

(declare-fun b!1328173 () Bool)

(assert (=> b!1328173 (= e!850948 e!850949)))

(declare-fun res!598119 () Bool)

(assert (=> b!1328173 (=> (not res!598119) (not e!850949))))

(assert (=> b!1328173 (= res!598119 (not lt!439235))))

(declare-fun b!1328174 () Bool)

(assert (=> b!1328174 (= e!850944 (nullable!1158 lt!438935))))

(declare-fun bm!89865 () Bool)

(assert (=> bm!89865 (= call!89870 (isEmpty!8032 lt!438945))))

(declare-fun b!1328175 () Bool)

(declare-fun res!598125 () Bool)

(assert (=> b!1328175 (=> (not res!598125) (not e!850946))))

(assert (=> b!1328175 (= res!598125 (isEmpty!8032 (tail!1903 lt!438945)))))

(declare-fun b!1328169 () Bool)

(declare-fun res!598126 () Bool)

(assert (=> b!1328169 (=> res!598126 e!850948)))

(assert (=> b!1328169 (= res!598126 e!850946)))

(declare-fun res!598122 () Bool)

(assert (=> b!1328169 (=> (not res!598122) (not e!850946))))

(assert (=> b!1328169 (= res!598122 lt!439235)))

(declare-fun d!374529 () Bool)

(assert (=> d!374529 e!850943))

(declare-fun c!217745 () Bool)

(assert (=> d!374529 (= c!217745 (is-EmptyExpr!3650 lt!438935))))

(assert (=> d!374529 (= lt!439235 e!850944)))

(declare-fun c!217743 () Bool)

(assert (=> d!374529 (= c!217743 (isEmpty!8032 lt!438945))))

(assert (=> d!374529 (validRegex!1566 lt!438935)))

(assert (=> d!374529 (= (matchR!1652 lt!438935 lt!438945) lt!439235)))

(assert (= (and d!374529 c!217743) b!1328174))

(assert (= (and d!374529 (not c!217743)) b!1328172))

(assert (= (and d!374529 c!217745) b!1328164))

(assert (= (and d!374529 (not c!217745)) b!1328171))

(assert (= (and b!1328171 c!217744) b!1328166))

(assert (= (and b!1328171 (not c!217744)) b!1328165))

(assert (= (and b!1328165 (not res!598121)) b!1328169))

(assert (= (and b!1328169 res!598122) b!1328162))

(assert (= (and b!1328162 res!598120) b!1328175))

(assert (= (and b!1328175 res!598125) b!1328163))

(assert (= (and b!1328169 (not res!598126)) b!1328173))

(assert (= (and b!1328173 res!598119) b!1328167))

(assert (= (and b!1328167 (not res!598123)) b!1328168))

(assert (= (and b!1328168 (not res!598124)) b!1328170))

(assert (= (or b!1328164 b!1328162 b!1328167) bm!89865))

(declare-fun m!1484919 () Bool)

(assert (=> bm!89865 m!1484919))

(assert (=> d!374529 m!1484919))

(assert (=> d!374529 m!1484395))

(declare-fun m!1484921 () Bool)

(assert (=> b!1328170 m!1484921))

(assert (=> b!1328172 m!1484921))

(assert (=> b!1328172 m!1484921))

(declare-fun m!1484923 () Bool)

(assert (=> b!1328172 m!1484923))

(assert (=> b!1328172 m!1484535))

(assert (=> b!1328172 m!1484923))

(assert (=> b!1328172 m!1484535))

(declare-fun m!1484927 () Bool)

(assert (=> b!1328172 m!1484927))

(assert (=> b!1328175 m!1484535))

(assert (=> b!1328175 m!1484535))

(declare-fun m!1484931 () Bool)

(assert (=> b!1328175 m!1484931))

(assert (=> b!1328163 m!1484921))

(assert (=> b!1328168 m!1484535))

(assert (=> b!1328168 m!1484535))

(assert (=> b!1328168 m!1484931))

(declare-fun m!1484933 () Bool)

(assert (=> b!1328174 m!1484933))

(assert (=> b!1327472 d!374529))

(declare-fun d!374539 () Bool)

(declare-fun res!598133 () Bool)

(declare-fun e!850956 () Bool)

(assert (=> d!374539 (=> res!598133 e!850956)))

(assert (=> d!374539 (= res!598133 (not (is-Cons!13494 rules!2550)))))

(assert (=> d!374539 (= (sepAndNonSepRulesDisjointChars!709 rules!2550 rules!2550) e!850956)))

(declare-fun b!1328182 () Bool)

(declare-fun e!850957 () Bool)

(assert (=> b!1328182 (= e!850956 e!850957)))

(declare-fun res!598134 () Bool)

(assert (=> b!1328182 (=> (not res!598134) (not e!850957))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!323 (Rule!4472 List!13560) Bool)

(assert (=> b!1328182 (= res!598134 (ruleDisjointCharsFromAllFromOtherType!323 (h!18895 rules!2550) rules!2550))))

(declare-fun b!1328183 () Bool)

(assert (=> b!1328183 (= e!850957 (sepAndNonSepRulesDisjointChars!709 rules!2550 (t!118861 rules!2550)))))

(assert (= (and d!374539 (not res!598133)) b!1328182))

(assert (= (and b!1328182 res!598134) b!1328183))

(declare-fun m!1484939 () Bool)

(assert (=> b!1328182 m!1484939))

(declare-fun m!1484941 () Bool)

(assert (=> b!1328183 m!1484941))

(assert (=> b!1327471 d!374539))

(assert (=> b!1327492 d!374385))

(declare-fun bs!331444 () Bool)

(declare-fun d!374543 () Bool)

(assert (= bs!331444 (and d!374543 b!1327492)))

(declare-fun lambda!55047 () Int)

(assert (=> bs!331444 (not (= lambda!55047 lambda!54988))))

(assert (=> d!374543 true))

(declare-fun order!8127 () Int)

(declare-fun dynLambda!5940 (Int Int) Int)

(assert (=> d!374543 (< (dynLambda!5940 order!8127 lambda!54988) (dynLambda!5940 order!8127 lambda!55047))))

(declare-fun forall!3317 (List!13561 Int) Bool)

(assert (=> d!374543 (= (exists!375 lt!438950 lambda!54988) (not (forall!3317 lt!438950 lambda!55047)))))

(declare-fun bs!331445 () Bool)

(assert (= bs!331445 d!374543))

(declare-fun m!1484943 () Bool)

(assert (=> bs!331445 m!1484943))

(assert (=> b!1327492 d!374543))

(declare-fun bs!331446 () Bool)

(declare-fun d!374545 () Bool)

(assert (= bs!331446 (and d!374545 b!1327492)))

(declare-fun lambda!55052 () Int)

(assert (=> bs!331446 (not (= lambda!55052 lambda!54988))))

(declare-fun bs!331447 () Bool)

(assert (= bs!331447 (and d!374545 d!374543)))

(assert (=> bs!331447 (not (= lambda!55052 lambda!55047))))

(declare-fun lambda!55053 () Int)

(assert (=> bs!331446 (= lambda!55053 lambda!54988)))

(assert (=> bs!331447 (not (= lambda!55053 lambda!55047))))

(declare-fun bs!331448 () Bool)

(assert (= bs!331448 d!374545))

(assert (=> bs!331448 (not (= lambda!55053 lambda!55052))))

(assert (=> d!374545 true))

(assert (=> d!374545 (= (matchR!1652 lt!438935 lt!438945) (exists!375 lt!438950 lambda!55053))))

(declare-fun lt!439240 () Unit!19589)

(declare-fun choose!8135 (Regex!3650 List!13561 List!13558) Unit!19589)

(assert (=> d!374545 (= lt!439240 (choose!8135 lt!438935 lt!438950 lt!438945))))

(assert (=> d!374545 (forall!3317 lt!438950 lambda!55052)))

(assert (=> d!374545 (= (matchRGenUnionSpec!87 lt!438935 lt!438950 lt!438945) lt!439240)))

(assert (=> bs!331448 m!1484133))

(declare-fun m!1484945 () Bool)

(assert (=> bs!331448 m!1484945))

(declare-fun m!1484947 () Bool)

(assert (=> bs!331448 m!1484947))

(declare-fun m!1484949 () Bool)

(assert (=> bs!331448 m!1484949))

(assert (=> b!1327492 d!374545))

(declare-fun bs!331449 () Bool)

(declare-fun d!374547 () Bool)

(assert (= bs!331449 (and d!374547 b!1327492)))

(declare-fun lambda!55054 () Int)

(assert (=> bs!331449 (not (= lambda!55054 lambda!54988))))

(declare-fun bs!331450 () Bool)

(assert (= bs!331450 (and d!374547 d!374543)))

(assert (=> bs!331450 (= lambda!55054 lambda!55047)))

(declare-fun bs!331451 () Bool)

(assert (= bs!331451 (and d!374547 d!374545)))

(assert (=> bs!331451 (not (= lambda!55054 lambda!55052))))

(assert (=> bs!331451 (not (= lambda!55054 lambda!55053))))

(assert (=> d!374547 true))

(assert (=> d!374547 (< (dynLambda!5940 order!8127 lambda!54988) (dynLambda!5940 order!8127 lambda!55054))))

(assert (=> d!374547 (= (exists!375 (map!2971 rules!2550 lambda!54987) lambda!54988) (not (forall!3317 (map!2971 rules!2550 lambda!54987) lambda!55054)))))

(declare-fun bs!331452 () Bool)

(assert (= bs!331452 d!374547))

(assert (=> bs!331452 m!1484031))

(declare-fun m!1484963 () Bool)

(assert (=> bs!331452 m!1484963))

(assert (=> b!1327492 d!374547))

(declare-fun d!374551 () Bool)

(declare-fun res!598165 () Bool)

(declare-fun e!850985 () Bool)

(assert (=> d!374551 (=> (not res!598165) (not e!850985))))

(declare-fun rulesValid!849 (LexerInterface!2031 List!13560) Bool)

(assert (=> d!374551 (= res!598165 (rulesValid!849 thiss!19762 rules!2550))))

(assert (=> d!374551 (= (rulesInvariant!1901 thiss!19762 rules!2550) e!850985)))

(declare-fun b!1328234 () Bool)

(declare-datatypes ((List!13568 0))(
  ( (Nil!13502) (Cons!13502 (h!18903 String!16368) (t!118905 List!13568)) )
))
(declare-fun noDuplicateTag!849 (LexerInterface!2031 List!13560 List!13568) Bool)

(assert (=> b!1328234 (= e!850985 (noDuplicateTag!849 thiss!19762 rules!2550 Nil!13502))))

(assert (= (and d!374551 res!598165) b!1328234))

(declare-fun m!1484969 () Bool)

(assert (=> d!374551 m!1484969))

(declare-fun m!1484971 () Bool)

(assert (=> b!1328234 m!1484971))

(assert (=> b!1327491 d!374551))

(declare-fun d!374557 () Bool)

(declare-fun lt!439243 () Bool)

(assert (=> d!374557 (= lt!439243 (isEmpty!8032 (list!5108 (_2!7455 lt!438942))))))

(assert (=> d!374557 (= lt!439243 (isEmpty!8040 (c!217616 (_2!7455 lt!438942))))))

(assert (=> d!374557 (= (isEmpty!8028 (_2!7455 lt!438942)) lt!439243)))

(declare-fun bs!331453 () Bool)

(assert (= bs!331453 d!374557))

(declare-fun m!1484973 () Bool)

(assert (=> bs!331453 m!1484973))

(assert (=> bs!331453 m!1484973))

(declare-fun m!1484975 () Bool)

(assert (=> bs!331453 m!1484975))

(declare-fun m!1484977 () Bool)

(assert (=> bs!331453 m!1484977))

(assert (=> b!1327470 d!374557))

(declare-fun b!1328249 () Bool)

(declare-fun e!850988 () Bool)

(declare-fun tp!384782 () Bool)

(assert (=> b!1328249 (= e!850988 tp!384782)))

(declare-fun b!1328248 () Bool)

(declare-fun tp!384779 () Bool)

(declare-fun tp!384783 () Bool)

(assert (=> b!1328248 (= e!850988 (and tp!384779 tp!384783))))

(assert (=> b!1327501 (= tp!384717 e!850988)))

(declare-fun b!1328250 () Bool)

(declare-fun tp!384781 () Bool)

(declare-fun tp!384780 () Bool)

(assert (=> b!1328250 (= e!850988 (and tp!384781 tp!384780))))

(declare-fun b!1328247 () Bool)

(declare-fun tp_is_empty!6649 () Bool)

(assert (=> b!1328247 (= e!850988 tp_is_empty!6649)))

(assert (= (and b!1327501 (is-ElementMatch!3650 (regex!2336 (h!18895 rules!2550)))) b!1328247))

(assert (= (and b!1327501 (is-Concat!6077 (regex!2336 (h!18895 rules!2550)))) b!1328248))

(assert (= (and b!1327501 (is-Star!3650 (regex!2336 (h!18895 rules!2550)))) b!1328249))

(assert (= (and b!1327501 (is-Union!3650 (regex!2336 (h!18895 rules!2550)))) b!1328250))

(declare-fun b!1328253 () Bool)

(declare-fun e!850989 () Bool)

(declare-fun tp!384787 () Bool)

(assert (=> b!1328253 (= e!850989 tp!384787)))

(declare-fun b!1328252 () Bool)

(declare-fun tp!384784 () Bool)

(declare-fun tp!384788 () Bool)

(assert (=> b!1328252 (= e!850989 (and tp!384784 tp!384788))))

(assert (=> b!1327458 (= tp!384726 e!850989)))

(declare-fun b!1328254 () Bool)

(declare-fun tp!384786 () Bool)

(declare-fun tp!384785 () Bool)

(assert (=> b!1328254 (= e!850989 (and tp!384786 tp!384785))))

(declare-fun b!1328251 () Bool)

(assert (=> b!1328251 (= e!850989 tp_is_empty!6649)))

(assert (= (and b!1327458 (is-ElementMatch!3650 (regex!2336 (rule!4081 t1!34)))) b!1328251))

(assert (= (and b!1327458 (is-Concat!6077 (regex!2336 (rule!4081 t1!34)))) b!1328252))

(assert (= (and b!1327458 (is-Star!3650 (regex!2336 (rule!4081 t1!34)))) b!1328253))

(assert (= (and b!1327458 (is-Union!3650 (regex!2336 (rule!4081 t1!34)))) b!1328254))

(declare-fun b!1328259 () Bool)

(declare-fun e!850992 () Bool)

(declare-fun tp!384791 () Bool)

(assert (=> b!1328259 (= e!850992 (and tp_is_empty!6649 tp!384791))))

(assert (=> b!1327478 (= tp!384718 e!850992)))

(assert (= (and b!1327478 (is-Cons!13492 (originalCharacters!3198 t1!34))) b!1328259))

(declare-fun b!1328262 () Bool)

(declare-fun e!850993 () Bool)

(declare-fun tp!384795 () Bool)

(assert (=> b!1328262 (= e!850993 tp!384795)))

(declare-fun b!1328261 () Bool)

(declare-fun tp!384792 () Bool)

(declare-fun tp!384796 () Bool)

(assert (=> b!1328261 (= e!850993 (and tp!384792 tp!384796))))

(assert (=> b!1327461 (= tp!384724 e!850993)))

(declare-fun b!1328263 () Bool)

(declare-fun tp!384794 () Bool)

(declare-fun tp!384793 () Bool)

(assert (=> b!1328263 (= e!850993 (and tp!384794 tp!384793))))

(declare-fun b!1328260 () Bool)

(assert (=> b!1328260 (= e!850993 tp_is_empty!6649)))

(assert (= (and b!1327461 (is-ElementMatch!3650 (regex!2336 (rule!4081 t2!34)))) b!1328260))

(assert (= (and b!1327461 (is-Concat!6077 (regex!2336 (rule!4081 t2!34)))) b!1328261))

(assert (= (and b!1327461 (is-Star!3650 (regex!2336 (rule!4081 t2!34)))) b!1328262))

(assert (= (and b!1327461 (is-Union!3650 (regex!2336 (rule!4081 t2!34)))) b!1328263))

(declare-fun b!1328278 () Bool)

(declare-fun b_free!32127 () Bool)

(declare-fun b_next!32831 () Bool)

(assert (=> b!1328278 (= b_free!32127 (not b_next!32831))))

(declare-fun tp!384808 () Bool)

(declare-fun b_and!88723 () Bool)

(assert (=> b!1328278 (= tp!384808 b_and!88723)))

(declare-fun b_free!32129 () Bool)

(declare-fun b_next!32833 () Bool)

(assert (=> b!1328278 (= b_free!32129 (not b_next!32833))))

(declare-fun tb!70253 () Bool)

(declare-fun t!118885 () Bool)

(assert (=> (and b!1328278 (= (toChars!3426 (transformation!2336 (h!18895 (t!118861 rules!2550)))) (toChars!3426 (transformation!2336 (rule!4081 t2!34)))) t!118885) tb!70253))

(declare-fun result!85290 () Bool)

(assert (= result!85290 result!85270))

(assert (=> d!374351 t!118885))

(declare-fun tb!70255 () Bool)

(declare-fun t!118887 () Bool)

(assert (=> (and b!1328278 (= (toChars!3426 (transformation!2336 (h!18895 (t!118861 rules!2550)))) (toChars!3426 (transformation!2336 (rule!4081 t1!34)))) t!118887) tb!70255))

(declare-fun result!85292 () Bool)

(assert (= result!85292 result!85278))

(assert (=> b!1327744 t!118887))

(assert (=> b!1327747 t!118885))

(assert (=> d!374521 t!118887))

(declare-fun tp!384807 () Bool)

(declare-fun b_and!88725 () Bool)

(assert (=> b!1328278 (= tp!384807 (and (=> t!118885 result!85290) (=> t!118887 result!85292) b_and!88725))))

(declare-fun e!851002 () Bool)

(assert (=> b!1328278 (= e!851002 (and tp!384808 tp!384807))))

(declare-fun b!1328277 () Bool)

(declare-fun tp!384806 () Bool)

(declare-fun e!851004 () Bool)

(assert (=> b!1328277 (= e!851004 (and tp!384806 (inv!17843 (tag!2598 (h!18895 (t!118861 rules!2550)))) (inv!17846 (transformation!2336 (h!18895 (t!118861 rules!2550)))) e!851002))))

(declare-fun b!1328276 () Bool)

(declare-fun e!851003 () Bool)

(declare-fun tp!384805 () Bool)

(assert (=> b!1328276 (= e!851003 (and e!851004 tp!384805))))

(assert (=> b!1327498 (= tp!384728 e!851003)))

(assert (= b!1328277 b!1328278))

(assert (= b!1328276 b!1328277))

(assert (= (and b!1327498 (is-Cons!13494 (t!118861 rules!2550))) b!1328276))

(declare-fun m!1484983 () Bool)

(assert (=> b!1328277 m!1484983))

(declare-fun m!1484985 () Bool)

(assert (=> b!1328277 m!1484985))

(declare-fun b!1328279 () Bool)

(declare-fun e!851006 () Bool)

(declare-fun tp!384809 () Bool)

(assert (=> b!1328279 (= e!851006 (and tp_is_empty!6649 tp!384809))))

(assert (=> b!1327459 (= tp!384722 e!851006)))

(assert (= (and b!1327459 (is-Cons!13492 (originalCharacters!3198 t2!34))) b!1328279))

(declare-fun b_lambda!38945 () Bool)

(assert (= b_lambda!38927 (or b!1327492 b_lambda!38945)))

(declare-fun bs!331461 () Bool)

(declare-fun d!374563 () Bool)

(assert (= bs!331461 (and d!374563 b!1327492)))

(declare-fun res!598166 () Bool)

(declare-fun e!851007 () Bool)

(assert (=> bs!331461 (=> (not res!598166) (not e!851007))))

(assert (=> bs!331461 (= res!598166 (validRegex!1566 lt!439094))))

(assert (=> bs!331461 (= (dynLambda!5930 lambda!54988 lt!439094) e!851007)))

(declare-fun b!1328280 () Bool)

(assert (=> b!1328280 (= e!851007 (matchR!1652 lt!439094 lt!438945))))

(assert (= (and bs!331461 res!598166) b!1328280))

(declare-fun m!1484989 () Bool)

(assert (=> bs!331461 m!1484989))

(declare-fun m!1484991 () Bool)

(assert (=> b!1328280 m!1484991))

(assert (=> d!374389 d!374563))

(declare-fun b_lambda!38947 () Bool)

(assert (= b_lambda!38923 (or b!1327492 b_lambda!38947)))

(declare-fun bs!331462 () Bool)

(declare-fun d!374565 () Bool)

(assert (= bs!331462 (and d!374565 b!1327492)))

(assert (=> bs!331462 (= (dynLambda!5929 lambda!54987 (h!18895 rules!2550)) (regex!2336 (h!18895 rules!2550)))))

(assert (=> b!1327834 d!374565))

(declare-fun b_lambda!38949 () Bool)

(assert (= b_lambda!38911 (or b!1327485 b_lambda!38949)))

(declare-fun bs!331463 () Bool)

(declare-fun d!374567 () Bool)

(assert (= bs!331463 (and d!374567 b!1327485)))

(declare-fun ruleValid!573 (LexerInterface!2031 Rule!4472) Bool)

(assert (=> bs!331463 (= (dynLambda!5927 lambda!54990 (rule!4081 t2!34)) (ruleValid!573 thiss!19762 (rule!4081 t2!34)))))

(declare-fun m!1484993 () Bool)

(assert (=> bs!331463 m!1484993))

(assert (=> d!374343 d!374567))

(declare-fun b_lambda!38951 () Bool)

(assert (= b_lambda!38913 (or b!1327485 b_lambda!38951)))

(declare-fun bs!331464 () Bool)

(declare-fun d!374569 () Bool)

(assert (= bs!331464 (and d!374569 b!1327485)))

(assert (=> bs!331464 (= (dynLambda!5927 lambda!54990 (rule!4081 t1!34)) (ruleValid!573 thiss!19762 (rule!4081 t1!34)))))

(declare-fun m!1484995 () Bool)

(assert (=> bs!331464 m!1484995))

(assert (=> d!374345 d!374569))

(declare-fun b_lambda!38953 () Bool)

(assert (= b_lambda!38915 (or b!1327485 b_lambda!38953)))

(declare-fun bs!331465 () Bool)

(declare-fun d!374571 () Bool)

(assert (= bs!331465 (and d!374571 b!1327485)))

(assert (=> bs!331465 (= (dynLambda!5927 lambda!54990 lt!438936) (ruleValid!573 thiss!19762 lt!438936))))

(declare-fun m!1484997 () Bool)

(assert (=> bs!331465 m!1484997))

(assert (=> d!374347 d!374571))

(declare-fun b_lambda!38955 () Bool)

(assert (= b_lambda!38925 (or b!1327492 b_lambda!38955)))

(declare-fun bs!331466 () Bool)

(declare-fun d!374573 () Bool)

(assert (= bs!331466 (and d!374573 b!1327492)))

(declare-fun res!598167 () Bool)

(declare-fun e!851008 () Bool)

(assert (=> bs!331466 (=> (not res!598167) (not e!851008))))

(assert (=> bs!331466 (= res!598167 (validRegex!1566 (h!18896 (map!2971 rules!2550 lambda!54987))))))

(assert (=> bs!331466 (= (dynLambda!5930 lambda!54988 (h!18896 (map!2971 rules!2550 lambda!54987))) e!851008)))

(declare-fun b!1328281 () Bool)

(assert (=> b!1328281 (= e!851008 (matchR!1652 (h!18896 (map!2971 rules!2550 lambda!54987)) lt!438945))))

(assert (= (and bs!331466 res!598167) b!1328281))

(declare-fun m!1484999 () Bool)

(assert (=> bs!331466 m!1484999))

(declare-fun m!1485001 () Bool)

(assert (=> b!1328281 m!1485001))

(assert (=> b!1327852 d!374573))

(declare-fun b_lambda!38957 () Bool)

(assert (= b_lambda!38921 (or (and b!1327482 b_free!32105 (= (toChars!3426 (transformation!2336 (rule!4081 t1!34))) (toChars!3426 (transformation!2336 (rule!4081 t2!34))))) (and b!1327477 b_free!32109) (and b!1327502 b_free!32113 (= (toChars!3426 (transformation!2336 (h!18895 rules!2550))) (toChars!3426 (transformation!2336 (rule!4081 t2!34))))) (and b!1328278 b_free!32129 (= (toChars!3426 (transformation!2336 (h!18895 (t!118861 rules!2550)))) (toChars!3426 (transformation!2336 (rule!4081 t2!34))))) b_lambda!38957)))

(declare-fun b_lambda!38959 () Bool)

(assert (= b_lambda!38917 (or (and b!1327482 b_free!32105 (= (toChars!3426 (transformation!2336 (rule!4081 t1!34))) (toChars!3426 (transformation!2336 (rule!4081 t2!34))))) (and b!1327477 b_free!32109) (and b!1327502 b_free!32113 (= (toChars!3426 (transformation!2336 (h!18895 rules!2550))) (toChars!3426 (transformation!2336 (rule!4081 t2!34))))) (and b!1328278 b_free!32129 (= (toChars!3426 (transformation!2336 (h!18895 (t!118861 rules!2550)))) (toChars!3426 (transformation!2336 (rule!4081 t2!34))))) b_lambda!38959)))

(declare-fun b_lambda!38961 () Bool)

(assert (= b_lambda!38933 (or b!1327468 b_lambda!38961)))

(declare-fun bs!331467 () Bool)

(declare-fun d!374575 () Bool)

(assert (= bs!331467 (and d!374575 b!1327468)))

(assert (=> bs!331467 (= (dynLambda!5927 lambda!54989 (h!18895 rules!2550)) (= (regex!2336 (h!18895 rules!2550)) lt!438956))))

(assert (=> b!1328043 d!374575))

(declare-fun b_lambda!38963 () Bool)

(assert (= b_lambda!38935 (or b!1327468 b_lambda!38963)))

(declare-fun bs!331468 () Bool)

(declare-fun d!374577 () Bool)

(assert (= bs!331468 (and d!374577 b!1327468)))

(assert (=> bs!331468 (= (dynLambda!5927 lambda!54989 lt!439174) (= (regex!2336 lt!439174) lt!438956))))

(assert (=> d!374467 d!374577))

(declare-fun b_lambda!38965 () Bool)

(assert (= b_lambda!38929 (or b!1327488 b_lambda!38965)))

(declare-fun bs!331469 () Bool)

(declare-fun d!374579 () Bool)

(assert (= bs!331469 (and d!374579 b!1327488)))

(declare-fun res!598172 () Bool)

(declare-fun e!851011 () Bool)

(assert (=> bs!331469 (=> (not res!598172) (not e!851011))))

(assert (=> bs!331469 (= res!598172 (matchR!1652 lt!438935 lt!439133))))

(assert (=> bs!331469 (= (dynLambda!5931 lambda!54986 lt!439133) e!851011)))

(declare-fun b!1328286 () Bool)

(assert (=> b!1328286 (= e!851011 (isPrefix!1085 lt!438930 lt!439133))))

(assert (= (and bs!331469 res!598172) b!1328286))

(declare-fun m!1485003 () Bool)

(assert (=> bs!331469 m!1485003))

(declare-fun m!1485005 () Bool)

(assert (=> b!1328286 m!1485005))

(assert (=> d!374417 d!374579))

(declare-fun b_lambda!38967 () Bool)

(assert (= b_lambda!38919 (or (and b!1327482 b_free!32105) (and b!1327477 b_free!32109 (= (toChars!3426 (transformation!2336 (rule!4081 t2!34))) (toChars!3426 (transformation!2336 (rule!4081 t1!34))))) (and b!1327502 b_free!32113 (= (toChars!3426 (transformation!2336 (h!18895 rules!2550))) (toChars!3426 (transformation!2336 (rule!4081 t1!34))))) (and b!1328278 b_free!32129 (= (toChars!3426 (transformation!2336 (h!18895 (t!118861 rules!2550)))) (toChars!3426 (transformation!2336 (rule!4081 t1!34))))) b_lambda!38967)))

(declare-fun b_lambda!38969 () Bool)

(assert (= b_lambda!38939 (or (and b!1327482 b_free!32105) (and b!1327477 b_free!32109 (= (toChars!3426 (transformation!2336 (rule!4081 t2!34))) (toChars!3426 (transformation!2336 (rule!4081 t1!34))))) (and b!1327502 b_free!32113 (= (toChars!3426 (transformation!2336 (h!18895 rules!2550))) (toChars!3426 (transformation!2336 (rule!4081 t1!34))))) (and b!1328278 b_free!32129 (= (toChars!3426 (transformation!2336 (h!18895 (t!118861 rules!2550)))) (toChars!3426 (transformation!2336 (rule!4081 t1!34))))) b_lambda!38969)))

(push 1)

(assert (not bs!331464))

(assert (not d!374351))

(assert (not b_next!32833))

(assert (not b!1328079))

(assert (not b!1328067))

(assert (not d!374427))

(assert (not b!1327814))

(assert (not b_lambda!38957))

(assert (not b!1327894))

(assert (not b!1328125))

(assert (not b_next!32813))

(assert (not d!374545))

(assert (not d!374513))

(assert (not d!374499))

(assert (not b!1328279))

(assert (not b!1327850))

(assert (not bs!331461))

(assert (not b!1328137))

(assert b_and!88719)

(assert (not bm!89831))

(assert (not b!1327963))

(assert (not b!1327997))

(assert (not b!1327947))

(assert (not bm!89851))

(assert (not d!374433))

(assert (not b!1327891))

(assert (not d!374459))

(assert (not b!1327968))

(assert (not d!374547))

(assert (not d!374437))

(assert (not b!1328005))

(assert (not b!1328046))

(assert (not b!1328051))

(assert (not d!374463))

(assert (not d!374389))

(assert (not d!374363))

(assert (not b!1327763))

(assert (not b!1327728))

(assert (not b!1327726))

(assert (not b_lambda!38955))

(assert (not d!374517))

(assert (not b!1328248))

(assert (not d!374497))

(assert (not b!1328075))

(assert (not b!1328281))

(assert (not b!1328252))

(assert (not b!1327722))

(assert (not bs!331463))

(assert (not d!374417))

(assert (not b!1328000))

(assert (not d!374451))

(assert (not b!1327940))

(assert (not b!1328073))

(assert (not b!1327747))

(assert (not d!374413))

(assert (not b!1328286))

(assert (not b!1328262))

(assert (not d!374495))

(assert (not b_lambda!38965))

(assert (not b!1327754))

(assert (not b!1327996))

(assert (not b!1327995))

(assert (not b!1328163))

(assert (not d!374551))

(assert (not b!1327724))

(assert (not b!1327994))

(assert (not bs!331465))

(assert (not d!374521))

(assert (not bm!89843))

(assert (not b!1327943))

(assert (not b!1328007))

(assert (not d!374359))

(assert (not b!1327941))

(assert b_and!88721)

(assert (not b!1328280))

(assert (not d!374473))

(assert (not b!1327733))

(assert (not bm!89865))

(assert (not b!1327756))

(assert (not d!374475))

(assert (not d!374467))

(assert (not d!374355))

(assert (not bm!89847))

(assert (not bm!89849))

(assert (not b_next!32807))

(assert (not b!1327916))

(assert (not b!1328002))

(assert (not d!374401))

(assert (not b!1327923))

(assert (not d!374381))

(assert (not b!1328263))

(assert (not b_next!32811))

(assert (not b!1328170))

(assert (not b!1327854))

(assert (not b_lambda!38947))

(assert (not b!1328001))

(assert (not d!374489))

(assert (not d!374465))

(assert (not d!374385))

(assert (not b!1328048))

(assert (not b!1328175))

(assert (not d!374557))

(assert (not d!374525))

(assert (not b!1327858))

(assert (not b!1328277))

(assert (not b!1328174))

(assert (not b!1328183))

(assert (not b!1327815))

(assert b_and!88683)

(assert (not d!374507))

(assert (not d!374399))

(assert (not b!1328098))

(assert (not b!1328012))

(assert (not b_next!32815))

(assert (not d!374529))

(assert (not b!1327966))

(assert (not b_lambda!38969))

(assert (not b!1327967))

(assert (not b!1328253))

(assert (not b_next!32831))

(assert (not bm!89842))

(assert (not b_lambda!38953))

(assert (not d!374479))

(assert (not d!374453))

(assert (not d!374449))

(assert (not d!374353))

(assert (not b!1327745))

(assert (not b!1327860))

(assert (not b!1328254))

(assert (not b!1328250))

(assert (not d!374395))

(assert (not b!1327888))

(assert (not d!374349))

(assert (not b_next!32809))

(assert (not d!374369))

(assert (not b_lambda!38949))

(assert (not b!1327889))

(assert (not b!1328009))

(assert (not b!1328161))

(assert (not b!1327767))

(assert (not b!1328261))

(assert (not b!1327734))

(assert (not d!374407))

(assert (not b!1327945))

(assert (not d!374361))

(assert (not b!1328050))

(assert (not b!1327895))

(assert (not b_lambda!38963))

(assert (not b!1328068))

(assert (not b!1327739))

(assert (not b!1328249))

(assert (not d!374411))

(assert b_and!88717)

(assert (not d!374371))

(assert (not b!1327732))

(assert b_and!88675)

(assert (not d!374523))

(assert (not b!1327960))

(assert (not b!1327828))

(assert (not bs!331469))

(assert (not b!1327748))

(assert (not b!1328042))

(assert (not b!1328152))

(assert (not b!1328041))

(assert (not d!374527))

(assert (not d!374481))

(assert (not b_lambda!38959))

(assert (not bs!331466))

(assert (not b_lambda!38967))

(assert (not b!1327896))

(assert (not b!1328276))

(assert (not b!1328172))

(assert (not b!1327761))

(assert (not d!374343))

(assert (not b!1327863))

(assert (not b!1327849))

(assert (not d!374383))

(assert (not bm!89844))

(assert (not bm!89850))

(assert (not d!374515))

(assert (not b!1328049))

(assert (not b!1327774))

(assert (not b!1328234))

(assert (not d!374357))

(assert (not b!1327818))

(assert (not b!1328069))

(assert (not d!374341))

(assert (not b!1327765))

(assert (not b!1328045))

(assert (not d!374405))

(assert (not d!374487))

(assert (not d!374367))

(assert (not b_lambda!38945))

(assert (not tb!70247))

(assert (not b!1327820))

(assert (not d!374347))

(assert (not b!1328006))

(assert (not b!1327962))

(assert (not b!1328168))

(assert (not b!1327746))

(assert (not b!1327965))

(assert (not b!1327717))

(assert tp_is_empty!6649)

(assert (not bm!89832))

(assert (not d!374429))

(assert (not b_next!32817))

(assert b_and!88723)

(assert (not b!1327834))

(assert (not b!1327744))

(assert (not b!1327917))

(assert (not d!374543))

(assert (not d!374435))

(assert (not d!374345))

(assert (not b!1327862))

(assert (not d!374415))

(assert (not b!1328074))

(assert (not b!1327893))

(assert (not bm!89852))

(assert (not b_lambda!38951))

(assert (not b_lambda!38961))

(assert (not b!1327890))

(assert (not b!1328259))

(assert b_and!88679)

(assert (not b!1328136))

(assert (not b!1328151))

(assert (not d!374503))

(assert (not d!374455))

(assert (not b!1327729))

(assert (not d!374471))

(assert (not tb!70241))

(assert (not b!1327961))

(assert b_and!88725)

(assert (not b!1327768))

(assert (not b!1328182))

(assert (not d!374379))

(check-sat)

(pop 1)

(push 1)

(assert b_and!88719)

(assert b_and!88721)

(assert (not b_next!32807))

(assert (not b_next!32811))

(assert b_and!88683)

(assert (not b_next!32815))

(assert (not b_next!32831))

(assert (not b_next!32809))

(assert b_and!88679)

(assert b_and!88725)

(assert (not b_next!32813))

(assert (not b_next!32833))

(assert b_and!88717)

(assert b_and!88675)

(assert b_and!88723)

(assert (not b_next!32817))

(check-sat)

(pop 1)

