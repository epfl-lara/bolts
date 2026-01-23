; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101742 () Bool)

(assert start!101742)

(declare-fun b!1161528 () Bool)

(declare-fun e!743701 () Bool)

(assert (=> b!1161528 (= e!743701 true)))

(declare-fun b!1161527 () Bool)

(declare-fun e!743700 () Bool)

(assert (=> b!1161527 (= e!743700 e!743701)))

(declare-fun b!1161520 () Bool)

(assert (=> b!1161520 e!743700))

(assert (= b!1161527 b!1161528))

(assert (= b!1161520 b!1161527))

(declare-fun b!1161500 () Bool)

(declare-fun e!743677 () Bool)

(declare-datatypes ((List!11443 0))(
  ( (Nil!11419) (Cons!11419 (h!16820 (_ BitVec 16)) (t!109801 List!11443)) )
))
(declare-datatypes ((TokenValue!2051 0))(
  ( (FloatLiteralValue!4102 (text!14802 List!11443)) (TokenValueExt!2050 (__x!7813 Int)) (Broken!10255 (value!64543 List!11443)) (Object!2074) (End!2051) (Def!2051) (Underscore!2051) (Match!2051) (Else!2051) (Error!2051) (Case!2051) (If!2051) (Extends!2051) (Abstract!2051) (Class!2051) (Val!2051) (DelimiterValue!4102 (del!2111 List!11443)) (KeywordValue!2057 (value!64544 List!11443)) (CommentValue!4102 (value!64545 List!11443)) (WhitespaceValue!4102 (value!64546 List!11443)) (IndentationValue!2051 (value!64547 List!11443)) (String!13842) (Int32!2051) (Broken!10256 (value!64548 List!11443)) (Boolean!2052) (Unit!17438) (OperatorValue!2054 (op!2111 List!11443)) (IdentifierValue!4102 (value!64549 List!11443)) (IdentifierValue!4103 (value!64550 List!11443)) (WhitespaceValue!4103 (value!64551 List!11443)) (True!4102) (False!4102) (Broken!10257 (value!64552 List!11443)) (Broken!10258 (value!64553 List!11443)) (True!4103) (RightBrace!2051) (RightBracket!2051) (Colon!2051) (Null!2051) (Comma!2051) (LeftBracket!2051) (False!4103) (LeftBrace!2051) (ImaginaryLiteralValue!2051 (text!14803 List!11443)) (StringLiteralValue!6153 (value!64554 List!11443)) (EOFValue!2051 (value!64555 List!11443)) (IdentValue!2051 (value!64556 List!11443)) (DelimiterValue!4103 (value!64557 List!11443)) (DedentValue!2051 (value!64558 List!11443)) (NewLineValue!2051 (value!64559 List!11443)) (IntegerValue!6153 (value!64560 (_ BitVec 32)) (text!14804 List!11443)) (IntegerValue!6154 (value!64561 Int) (text!14805 List!11443)) (Times!2051) (Or!2051) (Equal!2051) (Minus!2051) (Broken!10259 (value!64562 List!11443)) (And!2051) (Div!2051) (LessEqual!2051) (Mod!2051) (Concat!5306) (Not!2051) (Plus!2051) (SpaceValue!2051 (value!64563 List!11443)) (IntegerValue!6155 (value!64564 Int) (text!14806 List!11443)) (StringLiteralValue!6154 (text!14807 List!11443)) (FloatLiteralValue!4103 (text!14808 List!11443)) (BytesLiteralValue!2051 (value!64565 List!11443)) (CommentValue!4103 (value!64566 List!11443)) (StringLiteralValue!6155 (value!64567 List!11443)) (ErrorTokenValue!2051 (msg!2112 List!11443)) )
))
(declare-datatypes ((C!6828 0))(
  ( (C!6829 (val!3670 Int)) )
))
(declare-datatypes ((Regex!3255 0))(
  ( (ElementMatch!3255 (c!194298 C!6828)) (Concat!5307 (regOne!7022 Regex!3255) (regTwo!7022 Regex!3255)) (EmptyExpr!3255) (Star!3255 (reg!3584 Regex!3255)) (EmptyLang!3255) (Union!3255 (regOne!7023 Regex!3255) (regTwo!7023 Regex!3255)) )
))
(declare-datatypes ((String!13843 0))(
  ( (String!13844 (value!64568 String)) )
))
(declare-datatypes ((List!11444 0))(
  ( (Nil!11420) (Cons!11420 (h!16821 C!6828) (t!109802 List!11444)) )
))
(declare-datatypes ((IArray!7469 0))(
  ( (IArray!7470 (innerList!3792 List!11444)) )
))
(declare-datatypes ((Conc!3732 0))(
  ( (Node!3732 (left!9978 Conc!3732) (right!10308 Conc!3732) (csize!7694 Int) (cheight!3943 Int)) (Leaf!5735 (xs!6437 IArray!7469) (csize!7695 Int)) (Empty!3732) )
))
(declare-datatypes ((BalanceConc!7486 0))(
  ( (BalanceConc!7487 (c!194299 Conc!3732)) )
))
(declare-datatypes ((TokenValueInjection!3802 0))(
  ( (TokenValueInjection!3803 (toValue!3086 Int) (toChars!2945 Int)) )
))
(declare-datatypes ((Rule!3770 0))(
  ( (Rule!3771 (regex!1985 Regex!3255) (tag!2247 String!13843) (isSeparator!1985 Bool) (transformation!1985 TokenValueInjection!3802)) )
))
(declare-datatypes ((Token!3632 0))(
  ( (Token!3633 (value!64569 TokenValue!2051) (rule!3406 Rule!3770) (size!8977 Int) (originalCharacters!2539 List!11444)) )
))
(declare-datatypes ((List!11445 0))(
  ( (Nil!11421) (Cons!11421 (h!16822 Token!3632) (t!109803 List!11445)) )
))
(declare-datatypes ((List!11446 0))(
  ( (Nil!11422) (Cons!11422 (h!16823 Rule!3770) (t!109804 List!11446)) )
))
(declare-datatypes ((IArray!7471 0))(
  ( (IArray!7472 (innerList!3793 List!11445)) )
))
(declare-datatypes ((Conc!3733 0))(
  ( (Node!3733 (left!9979 Conc!3733) (right!10309 Conc!3733) (csize!7696 Int) (cheight!3944 Int)) (Leaf!5736 (xs!6438 IArray!7471) (csize!7697 Int)) (Empty!3733) )
))
(declare-datatypes ((BalanceConc!7488 0))(
  ( (BalanceConc!7489 (c!194300 Conc!3733)) )
))
(declare-datatypes ((PrintableTokens!656 0))(
  ( (PrintableTokens!657 (rules!9496 List!11446) (tokens!1590 BalanceConc!7488)) )
))
(declare-fun thiss!10527 () PrintableTokens!656)

(declare-fun tp!333821 () Bool)

(declare-fun inv!15016 (Conc!3733) Bool)

(assert (=> b!1161500 (= e!743677 (and (inv!15016 (c!194300 (tokens!1590 thiss!10527))) tp!333821))))

(declare-fun b!1161501 () Bool)

(declare-fun e!743680 () Bool)

(declare-fun e!743688 () Bool)

(assert (=> b!1161501 (= e!743680 e!743688)))

(declare-fun res!523632 () Bool)

(assert (=> b!1161501 (=> (not res!523632) (not e!743688))))

(declare-fun lt!395483 () List!11445)

(declare-datatypes ((LexerInterface!1680 0))(
  ( (LexerInterfaceExt!1677 (__x!7814 Int)) (Lexer!1678) )
))
(declare-fun rulesProduceIndividualToken!717 (LexerInterface!1680 List!11446 Token!3632) Bool)

(assert (=> b!1161501 (= res!523632 (rulesProduceIndividualToken!717 Lexer!1678 (rules!9496 thiss!10527) (h!16822 lt!395483)))))

(declare-fun e!743690 () Bool)

(declare-fun lt!395474 () List!11445)

(declare-fun e!743684 () Bool)

(declare-fun b!1161502 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!548 (LexerInterface!1680 List!11446 List!11445) Bool)

(assert (=> b!1161502 (= e!743684 (= (rulesProduceEachTokenIndividuallyList!548 Lexer!1678 (rules!9496 thiss!10527) lt!395474) e!743690))))

(declare-fun res!523630 () Bool)

(assert (=> b!1161502 (=> res!523630 e!743690)))

(get-info :version)

(assert (=> b!1161502 (= res!523630 (not ((_ is Cons!11421) lt!395474)))))

(declare-fun b!1161503 () Bool)

(declare-fun e!743695 () Bool)

(declare-fun lt!395478 () List!11445)

(assert (=> b!1161503 (= e!743695 (rulesProduceEachTokenIndividuallyList!548 Lexer!1678 (rules!9496 thiss!10527) (t!109803 lt!395478)))))

(declare-fun b!1161504 () Bool)

(declare-fun e!743692 () Bool)

(declare-fun lt!395481 () Token!3632)

(declare-fun size!8978 (BalanceConc!7486) Int)

(declare-fun charsOf!1054 (Token!3632) BalanceConc!7486)

(assert (=> b!1161504 (= e!743692 (> (size!8978 (charsOf!1054 lt!395481)) 0))))

(declare-fun b!1161505 () Bool)

(declare-fun e!743682 () Bool)

(assert (=> b!1161505 (= e!743682 true)))

(declare-fun e!743679 () Bool)

(assert (=> b!1161505 e!743679))

(declare-fun res!523628 () Bool)

(assert (=> b!1161505 (=> (not res!523628) (not e!743679))))

(declare-fun lambda!47365 () Int)

(declare-fun forall!2976 (List!11445 Int) Bool)

(assert (=> b!1161505 (= res!523628 (forall!2976 lt!395483 lambda!47365))))

(declare-datatypes ((Unit!17439 0))(
  ( (Unit!17440) )
))
(declare-fun lt!395479 () Unit!17439)

(declare-fun lemmaForallSubseq!133 (List!11445 List!11445 Int) Unit!17439)

(assert (=> b!1161505 (= lt!395479 (lemmaForallSubseq!133 lt!395483 lt!395478 lambda!47365))))

(declare-fun subseq!241 (List!11445 List!11445) Bool)

(assert (=> b!1161505 (subseq!241 lt!395483 lt!395478)))

(declare-fun lt!395477 () Unit!17439)

(declare-fun from!787 () Int)

(declare-fun lemmaDropSubseq!32 (List!11445 Int) Unit!17439)

(assert (=> b!1161505 (= lt!395477 (lemmaDropSubseq!32 lt!395478 from!787))))

(assert (=> b!1161505 (= (rulesProduceEachTokenIndividuallyList!548 Lexer!1678 (rules!9496 thiss!10527) lt!395483) e!743680)))

(declare-fun res!523637 () Bool)

(assert (=> b!1161505 (=> res!523637 e!743680)))

(assert (=> b!1161505 (= res!523637 (not ((_ is Cons!11421) lt!395483)))))

(declare-fun drop!467 (List!11445 Int) List!11445)

(assert (=> b!1161505 (= lt!395483 (drop!467 lt!395478 from!787))))

(declare-fun lt!395467 () Unit!17439)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!32 (LexerInterface!1680 List!11445 Int List!11446) Unit!17439)

(assert (=> b!1161505 (= lt!395467 (tokensListTwoByTwoPredicateSeparableTokensDropList!32 Lexer!1678 lt!395478 from!787 (rules!9496 thiss!10527)))))

(declare-fun e!743681 () Bool)

(assert (=> b!1161505 e!743681))

(declare-fun res!523634 () Bool)

(assert (=> b!1161505 (=> (not res!523634) (not e!743681))))

(declare-fun lt!395469 () BalanceConc!7488)

(declare-fun separableTokens!122 (LexerInterface!1680 BalanceConc!7488 List!11446) Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!55 (LexerInterface!1680 BalanceConc!7488 Int List!11446) Bool)

(assert (=> b!1161505 (= res!523634 (= (separableTokens!122 Lexer!1678 lt!395469 (rules!9496 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!55 Lexer!1678 lt!395469 0 (rules!9496 thiss!10527))))))

(declare-fun b!1161506 () Bool)

(declare-fun e!743685 () Bool)

(declare-fun e!743678 () Bool)

(assert (=> b!1161506 (= e!743685 e!743678)))

(declare-fun res!523638 () Bool)

(assert (=> b!1161506 (=> (not res!523638) (not e!743678))))

(declare-fun to!267 () Int)

(declare-fun lt!395485 () Int)

(assert (=> b!1161506 (= res!523638 (<= to!267 lt!395485))))

(declare-fun size!8979 (BalanceConc!7488) Int)

(assert (=> b!1161506 (= lt!395485 (size!8979 (tokens!1590 thiss!10527)))))

(declare-fun b!1161507 () Bool)

(declare-fun e!743687 () Bool)

(assert (=> b!1161507 (= e!743678 e!743687)))

(declare-fun res!523635 () Bool)

(assert (=> b!1161507 (=> (not res!523635) (not e!743687))))

(declare-fun rulesInvariant!1554 (LexerInterface!1680 List!11446) Bool)

(assert (=> b!1161507 (= res!523635 (rulesInvariant!1554 Lexer!1678 (rules!9496 thiss!10527)))))

(declare-fun lt!395471 () Unit!17439)

(declare-fun lemmaInvariant!172 (PrintableTokens!656) Unit!17439)

(assert (=> b!1161507 (= lt!395471 (lemmaInvariant!172 thiss!10527))))

(declare-fun b!1161508 () Bool)

(declare-fun e!743683 () Bool)

(assert (=> b!1161508 (= e!743683 e!743695)))

(declare-fun res!523639 () Bool)

(assert (=> b!1161508 (=> (not res!523639) (not e!743695))))

(assert (=> b!1161508 (= res!523639 (rulesProduceIndividualToken!717 Lexer!1678 (rules!9496 thiss!10527) (h!16822 lt!395478)))))

(declare-fun b!1161509 () Bool)

(declare-fun res!523633 () Bool)

(assert (=> b!1161509 (=> res!523633 e!743682)))

(declare-fun forall!2977 (BalanceConc!7488 Int) Bool)

(assert (=> b!1161509 (= res!523633 (not (forall!2977 lt!395469 lambda!47365)))))

(declare-fun tp!333822 () Bool)

(declare-fun b!1161510 () Bool)

(declare-fun e!743686 () Bool)

(declare-fun inv!15017 (BalanceConc!7488) Bool)

(assert (=> b!1161510 (= e!743686 (and tp!333822 (inv!15017 (tokens!1590 thiss!10527)) e!743677))))

(declare-fun b!1161511 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!92 (LexerInterface!1680 List!11445 List!11446) Bool)

(assert (=> b!1161511 (= e!743679 (tokensListTwoByTwoPredicateSeparableList!92 Lexer!1678 lt!395483 (rules!9496 thiss!10527)))))

(declare-fun b!1161512 () Bool)

(declare-fun e!743693 () Bool)

(assert (=> b!1161512 (= e!743681 (= (tokensListTwoByTwoPredicateSeparable!55 Lexer!1678 (tokens!1590 thiss!10527) 0 (rules!9496 thiss!10527)) e!743693))))

(declare-fun res!523636 () Bool)

(assert (=> b!1161512 (=> res!523636 e!743693)))

(assert (=> b!1161512 (= res!523636 (>= 0 (- lt!395485 1)))))

(declare-fun b!1161514 () Bool)

(declare-fun e!743691 () Bool)

(assert (=> b!1161514 (= e!743693 e!743691)))

(declare-fun res!523621 () Bool)

(assert (=> b!1161514 (=> (not res!523621) (not e!743691))))

(declare-fun lt!395480 () Token!3632)

(declare-fun separableTokensPredicate!116 (LexerInterface!1680 Token!3632 Token!3632 List!11446) Bool)

(assert (=> b!1161514 (= res!523621 (separableTokensPredicate!116 Lexer!1678 lt!395480 lt!395481 (rules!9496 thiss!10527)))))

(assert (=> b!1161514 e!743692))

(declare-fun res!523622 () Bool)

(assert (=> b!1161514 (=> (not res!523622) (not e!743692))))

(assert (=> b!1161514 (= res!523622 (rulesProduceIndividualToken!717 Lexer!1678 (rules!9496 thiss!10527) lt!395481))))

(declare-fun lt!395468 () Unit!17439)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!275 (LexerInterface!1680 List!11446 List!11445 Token!3632) Unit!17439)

(assert (=> b!1161514 (= lt!395468 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!275 Lexer!1678 (rules!9496 thiss!10527) lt!395478 lt!395481))))

(declare-fun apply!2437 (BalanceConc!7488 Int) Token!3632)

(assert (=> b!1161514 (= lt!395481 (apply!2437 (tokens!1590 thiss!10527) 1))))

(assert (=> b!1161514 (rulesProduceIndividualToken!717 Lexer!1678 (rules!9496 thiss!10527) lt!395480)))

(declare-fun lt!395470 () Unit!17439)

(assert (=> b!1161514 (= lt!395470 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!275 Lexer!1678 (rules!9496 thiss!10527) lt!395478 lt!395480))))

(assert (=> b!1161514 (= lt!395480 (apply!2437 (tokens!1590 thiss!10527) 0))))

(declare-fun lt!395486 () List!11445)

(declare-fun tail!1672 (List!11445) List!11445)

(assert (=> b!1161514 (= (tail!1672 lt!395486) (drop!467 lt!395478 2))))

(declare-fun lt!395476 () Unit!17439)

(declare-fun lemmaDropTail!345 (List!11445 Int) Unit!17439)

(assert (=> b!1161514 (= lt!395476 (lemmaDropTail!345 lt!395478 1))))

(declare-fun lt!395482 () List!11445)

(assert (=> b!1161514 (= (tail!1672 lt!395482) lt!395486)))

(declare-fun lt!395473 () Unit!17439)

(assert (=> b!1161514 (= lt!395473 (lemmaDropTail!345 lt!395478 0))))

(declare-fun head!2088 (List!11445) Token!3632)

(declare-fun apply!2438 (List!11445 Int) Token!3632)

(assert (=> b!1161514 (= (head!2088 lt!395486) (apply!2438 lt!395478 1))))

(assert (=> b!1161514 (= lt!395486 (drop!467 lt!395478 1))))

(declare-fun lt!395466 () Unit!17439)

(declare-fun lemmaDropApply!357 (List!11445 Int) Unit!17439)

(assert (=> b!1161514 (= lt!395466 (lemmaDropApply!357 lt!395478 1))))

(assert (=> b!1161514 (= (head!2088 lt!395482) (apply!2438 lt!395478 0))))

(assert (=> b!1161514 (= lt!395482 (drop!467 lt!395478 0))))

(declare-fun lt!395472 () Unit!17439)

(assert (=> b!1161514 (= lt!395472 (lemmaDropApply!357 lt!395478 0))))

(declare-fun res!523626 () Bool)

(assert (=> start!101742 (=> (not res!523626) (not e!743685))))

(assert (=> start!101742 (= res!523626 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!101742 e!743685))

(assert (=> start!101742 true))

(declare-fun inv!15018 (PrintableTokens!656) Bool)

(assert (=> start!101742 (and (inv!15018 thiss!10527) e!743686)))

(declare-fun b!1161513 () Bool)

(declare-fun e!743694 () Bool)

(assert (=> b!1161513 (= e!743694 (rulesProduceEachTokenIndividuallyList!548 Lexer!1678 (rules!9496 thiss!10527) (t!109803 lt!395474)))))

(declare-fun b!1161515 () Bool)

(assert (=> b!1161515 (= e!743691 (tokensListTwoByTwoPredicateSeparable!55 Lexer!1678 (tokens!1590 thiss!10527) 1 (rules!9496 thiss!10527)))))

(declare-fun b!1161516 () Bool)

(declare-fun e!743689 () Bool)

(assert (=> b!1161516 (= e!743689 e!743682)))

(declare-fun res!523625 () Bool)

(assert (=> b!1161516 (=> res!523625 e!743682)))

(assert (=> b!1161516 (= res!523625 (not (forall!2976 lt!395474 lambda!47365)))))

(assert (=> b!1161516 e!743684))

(declare-fun res!523631 () Bool)

(assert (=> b!1161516 (=> (not res!523631) (not e!743684))))

(assert (=> b!1161516 (= res!523631 (forall!2976 lt!395474 lambda!47365))))

(declare-fun lt!395475 () Unit!17439)

(assert (=> b!1161516 (= lt!395475 (lemmaForallSubseq!133 lt!395474 lt!395478 lambda!47365))))

(declare-fun list!4204 (BalanceConc!7488) List!11445)

(assert (=> b!1161516 (= lt!395474 (list!4204 lt!395469))))

(declare-fun slice!269 (BalanceConc!7488 Int Int) BalanceConc!7488)

(assert (=> b!1161516 (= lt!395469 (slice!269 (tokens!1590 thiss!10527) from!787 to!267))))

(declare-fun slice!270 (List!11445 Int Int) List!11445)

(assert (=> b!1161516 (subseq!241 (slice!270 lt!395478 from!787 to!267) lt!395478)))

(declare-fun lt!395484 () Unit!17439)

(declare-fun lemmaSliceSubseq!82 (List!11445 Int Int) Unit!17439)

(assert (=> b!1161516 (= lt!395484 (lemmaSliceSubseq!82 lt!395478 from!787 to!267))))

(declare-fun b!1161517 () Bool)

(assert (=> b!1161517 (= e!743688 (rulesProduceEachTokenIndividuallyList!548 Lexer!1678 (rules!9496 thiss!10527) (t!109803 lt!395483)))))

(declare-fun b!1161518 () Bool)

(assert (=> b!1161518 (= e!743690 e!743694)))

(declare-fun res!523627 () Bool)

(assert (=> b!1161518 (=> (not res!523627) (not e!743694))))

(assert (=> b!1161518 (= res!523627 (rulesProduceIndividualToken!717 Lexer!1678 (rules!9496 thiss!10527) (h!16822 lt!395474)))))

(declare-fun b!1161519 () Bool)

(declare-fun res!523629 () Bool)

(assert (=> b!1161519 (=> (not res!523629) (not e!743684))))

(declare-fun rulesProduceEachTokenIndividually!719 (LexerInterface!1680 List!11446 BalanceConc!7488) Bool)

(assert (=> b!1161519 (= res!523629 (= (rulesProduceEachTokenIndividually!719 Lexer!1678 (rules!9496 thiss!10527) lt!395469) (forall!2977 lt!395469 lambda!47365)))))

(assert (=> b!1161520 (= e!743687 (not e!743689))))

(declare-fun res!523623 () Bool)

(assert (=> b!1161520 (=> res!523623 e!743689)))

(assert (=> b!1161520 (= res!523623 (not (forall!2977 (tokens!1590 thiss!10527) lambda!47365)))))

(assert (=> b!1161520 (= (rulesProduceEachTokenIndividuallyList!548 Lexer!1678 (rules!9496 thiss!10527) lt!395478) e!743683)))

(declare-fun res!523624 () Bool)

(assert (=> b!1161520 (=> res!523624 e!743683)))

(assert (=> b!1161520 (= res!523624 (not ((_ is Cons!11421) lt!395478)))))

(assert (=> b!1161520 (= lt!395478 (list!4204 (tokens!1590 thiss!10527)))))

(assert (=> b!1161520 (= (rulesProduceEachTokenIndividually!719 Lexer!1678 (rules!9496 thiss!10527) (tokens!1590 thiss!10527)) (forall!2977 (tokens!1590 thiss!10527) lambda!47365))))

(assert (= (and start!101742 res!523626) b!1161506))

(assert (= (and b!1161506 res!523638) b!1161507))

(assert (= (and b!1161507 res!523635) b!1161520))

(assert (= (and b!1161520 (not res!523624)) b!1161508))

(assert (= (and b!1161508 res!523639) b!1161503))

(assert (= (and b!1161520 (not res!523623)) b!1161516))

(assert (= (and b!1161516 res!523631) b!1161519))

(assert (= (and b!1161519 res!523629) b!1161502))

(assert (= (and b!1161502 (not res!523630)) b!1161518))

(assert (= (and b!1161518 res!523627) b!1161513))

(assert (= (and b!1161516 (not res!523625)) b!1161509))

(assert (= (and b!1161509 (not res!523633)) b!1161505))

(assert (= (and b!1161505 res!523634) b!1161512))

(assert (= (and b!1161512 (not res!523636)) b!1161514))

(assert (= (and b!1161514 res!523622) b!1161504))

(assert (= (and b!1161514 res!523621) b!1161515))

(assert (= (and b!1161505 (not res!523637)) b!1161501))

(assert (= (and b!1161501 res!523632) b!1161517))

(assert (= (and b!1161505 res!523628) b!1161511))

(assert (= b!1161510 b!1161500))

(assert (= start!101742 b!1161510))

(declare-fun m!1328903 () Bool)

(assert (=> b!1161502 m!1328903))

(declare-fun m!1328905 () Bool)

(assert (=> b!1161518 m!1328905))

(declare-fun m!1328907 () Bool)

(assert (=> b!1161503 m!1328907))

(declare-fun m!1328909 () Bool)

(assert (=> b!1161520 m!1328909))

(declare-fun m!1328911 () Bool)

(assert (=> b!1161520 m!1328911))

(declare-fun m!1328913 () Bool)

(assert (=> b!1161520 m!1328913))

(declare-fun m!1328915 () Bool)

(assert (=> b!1161520 m!1328915))

(assert (=> b!1161520 m!1328913))

(declare-fun m!1328917 () Bool)

(assert (=> b!1161500 m!1328917))

(declare-fun m!1328919 () Bool)

(assert (=> b!1161513 m!1328919))

(declare-fun m!1328921 () Bool)

(assert (=> b!1161519 m!1328921))

(declare-fun m!1328923 () Bool)

(assert (=> b!1161519 m!1328923))

(declare-fun m!1328925 () Bool)

(assert (=> b!1161505 m!1328925))

(declare-fun m!1328927 () Bool)

(assert (=> b!1161505 m!1328927))

(declare-fun m!1328929 () Bool)

(assert (=> b!1161505 m!1328929))

(declare-fun m!1328931 () Bool)

(assert (=> b!1161505 m!1328931))

(declare-fun m!1328933 () Bool)

(assert (=> b!1161505 m!1328933))

(declare-fun m!1328935 () Bool)

(assert (=> b!1161505 m!1328935))

(declare-fun m!1328937 () Bool)

(assert (=> b!1161505 m!1328937))

(declare-fun m!1328939 () Bool)

(assert (=> b!1161505 m!1328939))

(declare-fun m!1328941 () Bool)

(assert (=> b!1161505 m!1328941))

(declare-fun m!1328943 () Bool)

(assert (=> b!1161507 m!1328943))

(declare-fun m!1328945 () Bool)

(assert (=> b!1161507 m!1328945))

(assert (=> b!1161509 m!1328923))

(declare-fun m!1328947 () Bool)

(assert (=> b!1161511 m!1328947))

(declare-fun m!1328949 () Bool)

(assert (=> b!1161512 m!1328949))

(declare-fun m!1328951 () Bool)

(assert (=> b!1161515 m!1328951))

(declare-fun m!1328953 () Bool)

(assert (=> b!1161506 m!1328953))

(declare-fun m!1328955 () Bool)

(assert (=> b!1161501 m!1328955))

(declare-fun m!1328957 () Bool)

(assert (=> b!1161504 m!1328957))

(assert (=> b!1161504 m!1328957))

(declare-fun m!1328959 () Bool)

(assert (=> b!1161504 m!1328959))

(declare-fun m!1328961 () Bool)

(assert (=> b!1161517 m!1328961))

(declare-fun m!1328963 () Bool)

(assert (=> b!1161508 m!1328963))

(declare-fun m!1328965 () Bool)

(assert (=> start!101742 m!1328965))

(declare-fun m!1328967 () Bool)

(assert (=> b!1161510 m!1328967))

(declare-fun m!1328969 () Bool)

(assert (=> b!1161516 m!1328969))

(declare-fun m!1328971 () Bool)

(assert (=> b!1161516 m!1328971))

(declare-fun m!1328973 () Bool)

(assert (=> b!1161516 m!1328973))

(declare-fun m!1328975 () Bool)

(assert (=> b!1161516 m!1328975))

(declare-fun m!1328977 () Bool)

(assert (=> b!1161516 m!1328977))

(declare-fun m!1328979 () Bool)

(assert (=> b!1161516 m!1328979))

(assert (=> b!1161516 m!1328969))

(assert (=> b!1161516 m!1328979))

(declare-fun m!1328981 () Bool)

(assert (=> b!1161516 m!1328981))

(declare-fun m!1328983 () Bool)

(assert (=> b!1161514 m!1328983))

(declare-fun m!1328985 () Bool)

(assert (=> b!1161514 m!1328985))

(declare-fun m!1328987 () Bool)

(assert (=> b!1161514 m!1328987))

(declare-fun m!1328989 () Bool)

(assert (=> b!1161514 m!1328989))

(declare-fun m!1328991 () Bool)

(assert (=> b!1161514 m!1328991))

(declare-fun m!1328993 () Bool)

(assert (=> b!1161514 m!1328993))

(declare-fun m!1328995 () Bool)

(assert (=> b!1161514 m!1328995))

(declare-fun m!1328997 () Bool)

(assert (=> b!1161514 m!1328997))

(declare-fun m!1328999 () Bool)

(assert (=> b!1161514 m!1328999))

(declare-fun m!1329001 () Bool)

(assert (=> b!1161514 m!1329001))

(declare-fun m!1329003 () Bool)

(assert (=> b!1161514 m!1329003))

(declare-fun m!1329005 () Bool)

(assert (=> b!1161514 m!1329005))

(declare-fun m!1329007 () Bool)

(assert (=> b!1161514 m!1329007))

(declare-fun m!1329009 () Bool)

(assert (=> b!1161514 m!1329009))

(declare-fun m!1329011 () Bool)

(assert (=> b!1161514 m!1329011))

(declare-fun m!1329013 () Bool)

(assert (=> b!1161514 m!1329013))

(declare-fun m!1329015 () Bool)

(assert (=> b!1161514 m!1329015))

(declare-fun m!1329017 () Bool)

(assert (=> b!1161514 m!1329017))

(declare-fun m!1329019 () Bool)

(assert (=> b!1161514 m!1329019))

(declare-fun m!1329021 () Bool)

(assert (=> b!1161514 m!1329021))

(check-sat (not b!1161509) (not b!1161506) (not b!1161518) (not b!1161514) (not b!1161520) (not b!1161515) (not b!1161501) (not b!1161500) (not b!1161527) (not b!1161505) (not b!1161507) (not start!101742) (not b!1161519) (not b!1161502) (not b!1161510) (not b!1161511) (not b!1161517) (not b!1161508) (not b!1161513) (not b!1161512) (not b!1161516) (not b!1161528) (not b!1161504) (not b!1161503))
(check-sat)
