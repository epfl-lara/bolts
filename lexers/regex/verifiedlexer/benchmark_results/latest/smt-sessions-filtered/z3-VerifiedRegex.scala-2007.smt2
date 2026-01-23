; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102050 () Bool)

(assert start!102050)

(declare-fun b!1163830 () Bool)

(declare-fun e!745545 () Bool)

(assert (=> b!1163830 (= e!745545 true)))

(declare-fun b!1163829 () Bool)

(declare-fun e!745544 () Bool)

(assert (=> b!1163829 (= e!745544 e!745545)))

(declare-fun b!1163807 () Bool)

(assert (=> b!1163807 e!745544))

(assert (= b!1163829 b!1163830))

(assert (= b!1163807 b!1163829))

(declare-fun b!1163799 () Bool)

(declare-fun e!745531 () Bool)

(declare-fun lt!397464 () Bool)

(assert (=> b!1163799 (= e!745531 lt!397464)))

(declare-fun b!1163800 () Bool)

(declare-fun e!745521 () Bool)

(declare-datatypes ((List!11487 0))(
  ( (Nil!11463) (Cons!11463 (h!16864 (_ BitVec 16)) (t!110087 List!11487)) )
))
(declare-datatypes ((TokenValue!2061 0))(
  ( (FloatLiteralValue!4122 (text!14872 List!11487)) (TokenValueExt!2060 (__x!7833 Int)) (Broken!10305 (value!64828 List!11487)) (Object!2084) (End!2061) (Def!2061) (Underscore!2061) (Match!2061) (Else!2061) (Error!2061) (Case!2061) (If!2061) (Extends!2061) (Abstract!2061) (Class!2061) (Val!2061) (DelimiterValue!4122 (del!2121 List!11487)) (KeywordValue!2067 (value!64829 List!11487)) (CommentValue!4122 (value!64830 List!11487)) (WhitespaceValue!4122 (value!64831 List!11487)) (IndentationValue!2061 (value!64832 List!11487)) (String!13892) (Int32!2061) (Broken!10306 (value!64833 List!11487)) (Boolean!2062) (Unit!17532) (OperatorValue!2064 (op!2121 List!11487)) (IdentifierValue!4122 (value!64834 List!11487)) (IdentifierValue!4123 (value!64835 List!11487)) (WhitespaceValue!4123 (value!64836 List!11487)) (True!4122) (False!4122) (Broken!10307 (value!64837 List!11487)) (Broken!10308 (value!64838 List!11487)) (True!4123) (RightBrace!2061) (RightBracket!2061) (Colon!2061) (Null!2061) (Comma!2061) (LeftBracket!2061) (False!4123) (LeftBrace!2061) (ImaginaryLiteralValue!2061 (text!14873 List!11487)) (StringLiteralValue!6183 (value!64839 List!11487)) (EOFValue!2061 (value!64840 List!11487)) (IdentValue!2061 (value!64841 List!11487)) (DelimiterValue!4123 (value!64842 List!11487)) (DedentValue!2061 (value!64843 List!11487)) (NewLineValue!2061 (value!64844 List!11487)) (IntegerValue!6183 (value!64845 (_ BitVec 32)) (text!14874 List!11487)) (IntegerValue!6184 (value!64846 Int) (text!14875 List!11487)) (Times!2061) (Or!2061) (Equal!2061) (Minus!2061) (Broken!10309 (value!64847 List!11487)) (And!2061) (Div!2061) (LessEqual!2061) (Mod!2061) (Concat!5326) (Not!2061) (Plus!2061) (SpaceValue!2061 (value!64848 List!11487)) (IntegerValue!6185 (value!64849 Int) (text!14876 List!11487)) (StringLiteralValue!6184 (text!14877 List!11487)) (FloatLiteralValue!4123 (text!14878 List!11487)) (BytesLiteralValue!2061 (value!64850 List!11487)) (CommentValue!4123 (value!64851 List!11487)) (StringLiteralValue!6185 (value!64852 List!11487)) (ErrorTokenValue!2061 (msg!2122 List!11487)) )
))
(declare-datatypes ((C!6848 0))(
  ( (C!6849 (val!3680 Int)) )
))
(declare-datatypes ((Regex!3265 0))(
  ( (ElementMatch!3265 (c!194492 C!6848)) (Concat!5327 (regOne!7042 Regex!3265) (regTwo!7042 Regex!3265)) (EmptyExpr!3265) (Star!3265 (reg!3594 Regex!3265)) (EmptyLang!3265) (Union!3265 (regOne!7043 Regex!3265) (regTwo!7043 Regex!3265)) )
))
(declare-datatypes ((String!13893 0))(
  ( (String!13894 (value!64853 String)) )
))
(declare-datatypes ((List!11488 0))(
  ( (Nil!11464) (Cons!11464 (h!16865 C!6848) (t!110088 List!11488)) )
))
(declare-datatypes ((IArray!7509 0))(
  ( (IArray!7510 (innerList!3812 List!11488)) )
))
(declare-datatypes ((Conc!3752 0))(
  ( (Node!3752 (left!10023 Conc!3752) (right!10353 Conc!3752) (csize!7734 Int) (cheight!3963 Int)) (Leaf!5760 (xs!6457 IArray!7509) (csize!7735 Int)) (Empty!3752) )
))
(declare-datatypes ((BalanceConc!7526 0))(
  ( (BalanceConc!7527 (c!194493 Conc!3752)) )
))
(declare-datatypes ((TokenValueInjection!3822 0))(
  ( (TokenValueInjection!3823 (toValue!3096 Int) (toChars!2955 Int)) )
))
(declare-datatypes ((Rule!3790 0))(
  ( (Rule!3791 (regex!1995 Regex!3265) (tag!2257 String!13893) (isSeparator!1995 Bool) (transformation!1995 TokenValueInjection!3822)) )
))
(declare-datatypes ((Token!3652 0))(
  ( (Token!3653 (value!64854 TokenValue!2061) (rule!3416 Rule!3790) (size!9023 Int) (originalCharacters!2549 List!11488)) )
))
(declare-datatypes ((List!11489 0))(
  ( (Nil!11465) (Cons!11465 (h!16866 Token!3652) (t!110089 List!11489)) )
))
(declare-fun lt!397481 () List!11489)

(declare-datatypes ((List!11490 0))(
  ( (Nil!11466) (Cons!11466 (h!16867 Rule!3790) (t!110090 List!11490)) )
))
(declare-datatypes ((IArray!7511 0))(
  ( (IArray!7512 (innerList!3813 List!11489)) )
))
(declare-datatypes ((Conc!3753 0))(
  ( (Node!3753 (left!10024 Conc!3753) (right!10354 Conc!3753) (csize!7736 Int) (cheight!3964 Int)) (Leaf!5761 (xs!6458 IArray!7511) (csize!7737 Int)) (Empty!3753) )
))
(declare-datatypes ((BalanceConc!7528 0))(
  ( (BalanceConc!7529 (c!194494 Conc!3753)) )
))
(declare-datatypes ((PrintableTokens!676 0))(
  ( (PrintableTokens!677 (rules!9538 List!11490) (tokens!1608 BalanceConc!7528)) )
))
(declare-fun thiss!10527 () PrintableTokens!676)

(declare-datatypes ((LexerInterface!1690 0))(
  ( (LexerInterfaceExt!1687 (__x!7834 Int)) (Lexer!1688) )
))
(declare-fun tokensListTwoByTwoPredicateSeparableList!102 (LexerInterface!1690 List!11489 List!11490) Bool)

(assert (=> b!1163800 (= e!745521 (tokensListTwoByTwoPredicateSeparableList!102 Lexer!1688 lt!397481 (rules!9538 thiss!10527)))))

(declare-fun b!1163801 () Bool)

(declare-fun e!745532 () Bool)

(declare-fun e!745529 () Bool)

(assert (=> b!1163801 (= e!745532 e!745529)))

(declare-fun res!525128 () Bool)

(assert (=> b!1163801 (=> (not res!525128) (not e!745529))))

(declare-fun lt!397484 () Token!3652)

(declare-fun lt!397483 () Token!3652)

(declare-fun separableTokensPredicate!126 (LexerInterface!1690 Token!3652 Token!3652 List!11490) Bool)

(assert (=> b!1163801 (= res!525128 (separableTokensPredicate!126 Lexer!1688 lt!397484 lt!397483 (rules!9538 thiss!10527)))))

(declare-fun e!745530 () Bool)

(assert (=> b!1163801 e!745530))

(declare-fun res!525126 () Bool)

(assert (=> b!1163801 (=> (not res!525126) (not e!745530))))

(declare-fun rulesProduceIndividualToken!727 (LexerInterface!1690 List!11490 Token!3652) Bool)

(assert (=> b!1163801 (= res!525126 (rulesProduceIndividualToken!727 Lexer!1688 (rules!9538 thiss!10527) lt!397483))))

(declare-datatypes ((Unit!17533 0))(
  ( (Unit!17534) )
))
(declare-fun lt!397463 () Unit!17533)

(declare-fun lt!397470 () List!11489)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!285 (LexerInterface!1690 List!11490 List!11489 Token!3652) Unit!17533)

(assert (=> b!1163801 (= lt!397463 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!285 Lexer!1688 (rules!9538 thiss!10527) lt!397470 lt!397483))))

(declare-fun apply!2465 (BalanceConc!7528 Int) Token!3652)

(assert (=> b!1163801 (= lt!397483 (apply!2465 (tokens!1608 thiss!10527) 1))))

(assert (=> b!1163801 (rulesProduceIndividualToken!727 Lexer!1688 (rules!9538 thiss!10527) lt!397484)))

(declare-fun lt!397472 () Unit!17533)

(assert (=> b!1163801 (= lt!397472 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!285 Lexer!1688 (rules!9538 thiss!10527) lt!397470 lt!397484))))

(assert (=> b!1163801 (= lt!397484 (apply!2465 (tokens!1608 thiss!10527) 0))))

(declare-fun lt!397471 () List!11489)

(declare-fun tail!1682 (List!11489) List!11489)

(declare-fun drop!477 (List!11489 Int) List!11489)

(assert (=> b!1163801 (= (tail!1682 lt!397471) (drop!477 lt!397470 2))))

(declare-fun lt!397460 () Unit!17533)

(declare-fun lemmaDropTail!355 (List!11489 Int) Unit!17533)

(assert (=> b!1163801 (= lt!397460 (lemmaDropTail!355 lt!397470 1))))

(declare-fun lt!397462 () List!11489)

(assert (=> b!1163801 (= (tail!1682 lt!397462) lt!397471)))

(declare-fun lt!397474 () Unit!17533)

(assert (=> b!1163801 (= lt!397474 (lemmaDropTail!355 lt!397470 0))))

(declare-fun head!2098 (List!11489) Token!3652)

(declare-fun apply!2466 (List!11489 Int) Token!3652)

(assert (=> b!1163801 (= (head!2098 lt!397471) (apply!2466 lt!397470 1))))

(assert (=> b!1163801 (= lt!397471 (drop!477 lt!397470 1))))

(declare-fun lt!397477 () Unit!17533)

(declare-fun lemmaDropApply!367 (List!11489 Int) Unit!17533)

(assert (=> b!1163801 (= lt!397477 (lemmaDropApply!367 lt!397470 1))))

(assert (=> b!1163801 (= (head!2098 lt!397462) (apply!2466 lt!397470 0))))

(assert (=> b!1163801 (= lt!397462 (drop!477 lt!397470 0))))

(declare-fun lt!397461 () Unit!17533)

(assert (=> b!1163801 (= lt!397461 (lemmaDropApply!367 lt!397470 0))))

(declare-fun res!525125 () Bool)

(declare-fun e!745525 () Bool)

(assert (=> start!102050 (=> (not res!525125) (not e!745525))))

(declare-fun from!787 () Int)

(declare-fun to!267 () Int)

(assert (=> start!102050 (= res!525125 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!102050 e!745525))

(assert (=> start!102050 true))

(declare-fun e!745527 () Bool)

(declare-fun inv!15085 (PrintableTokens!676) Bool)

(assert (=> start!102050 (and (inv!15085 thiss!10527) e!745527)))

(declare-fun b!1163802 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!65 (LexerInterface!1690 BalanceConc!7528 Int List!11490) Bool)

(assert (=> b!1163802 (= e!745529 (tokensListTwoByTwoPredicateSeparable!65 Lexer!1688 (tokens!1608 thiss!10527) 1 (rules!9538 thiss!10527)))))

(declare-fun b!1163803 () Bool)

(declare-fun e!745522 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!558 (LexerInterface!1690 List!11490 List!11489) Bool)

(assert (=> b!1163803 (= e!745522 (rulesProduceEachTokenIndividuallyList!558 Lexer!1688 (rules!9538 thiss!10527) (t!110089 lt!397481)))))

(declare-fun b!1163804 () Bool)

(declare-fun e!745539 () Bool)

(declare-fun e!745518 () Bool)

(assert (=> b!1163804 (= e!745539 e!745518)))

(declare-fun res!525130 () Bool)

(assert (=> b!1163804 (=> (not res!525130) (not e!745518))))

(declare-fun lt!397480 () List!11489)

(assert (=> b!1163804 (= res!525130 (rulesProduceIndividualToken!727 Lexer!1688 (rules!9538 thiss!10527) (h!16866 lt!397480)))))

(declare-fun b!1163805 () Bool)

(declare-fun e!745538 () Bool)

(assert (=> b!1163805 (= e!745538 (rulesProduceEachTokenIndividuallyList!558 Lexer!1688 (rules!9538 thiss!10527) (t!110089 lt!397470)))))

(declare-fun b!1163806 () Bool)

(declare-fun e!745520 () Bool)

(assert (=> b!1163806 (= e!745520 e!745531)))

(declare-fun res!525139 () Bool)

(assert (=> b!1163806 (=> res!525139 e!745531)))

(declare-fun isEmpty!6989 (List!11490) Bool)

(assert (=> b!1163806 (= res!525139 (isEmpty!6989 (rules!9538 thiss!10527)))))

(declare-fun e!745536 () Bool)

(assert (=> b!1163806 e!745536))

(declare-fun res!525122 () Bool)

(assert (=> b!1163806 (=> (not res!525122) (not e!745536))))

(declare-fun lt!397469 () List!11489)

(declare-fun lambda!47639 () Int)

(declare-fun forall!3000 (List!11489 Int) Bool)

(assert (=> b!1163806 (= res!525122 (forall!3000 lt!397469 lambda!47639))))

(declare-fun lt!397467 () Unit!17533)

(declare-fun lemmaForallSubseq!143 (List!11489 List!11489 Int) Unit!17533)

(assert (=> b!1163806 (= lt!397467 (lemmaForallSubseq!143 lt!397469 lt!397481 lambda!47639))))

(declare-fun e!745526 () Bool)

(assert (=> b!1163806 (= (rulesProduceEachTokenIndividuallyList!558 Lexer!1688 (rules!9538 thiss!10527) lt!397469) e!745526)))

(declare-fun res!525124 () Bool)

(assert (=> b!1163806 (=> res!525124 e!745526)))

(get-info :version)

(assert (=> b!1163806 (= res!525124 (not ((_ is Cons!11465) lt!397469)))))

(declare-fun take!67 (List!11489 Int) List!11489)

(assert (=> b!1163806 (= lt!397469 (take!67 lt!397481 (- to!267 from!787)))))

(declare-fun lt!397465 () Unit!17533)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!34 (LexerInterface!1690 List!11489 Int List!11490) Unit!17533)

(assert (=> b!1163806 (= lt!397465 (tokensListTwoByTwoPredicateSeparableTokensTakeList!34 Lexer!1688 lt!397481 (- to!267 from!787) (rules!9538 thiss!10527)))))

(assert (=> b!1163806 (forall!3000 lt!397481 lambda!47639)))

(declare-fun lt!397468 () Unit!17533)

(assert (=> b!1163806 (= lt!397468 (lemmaForallSubseq!143 lt!397481 lt!397470 lambda!47639))))

(assert (=> b!1163806 e!745521))

(declare-fun res!525138 () Bool)

(assert (=> b!1163806 (=> (not res!525138) (not e!745521))))

(assert (=> b!1163806 (= res!525138 (forall!3000 lt!397481 lambda!47639))))

(declare-fun lt!397475 () Unit!17533)

(assert (=> b!1163806 (= lt!397475 (lemmaForallSubseq!143 lt!397481 lt!397470 lambda!47639))))

(declare-fun subseq!251 (List!11489 List!11489) Bool)

(assert (=> b!1163806 (subseq!251 lt!397481 lt!397470)))

(declare-fun lt!397466 () Unit!17533)

(declare-fun lemmaDropSubseq!42 (List!11489 Int) Unit!17533)

(assert (=> b!1163806 (= lt!397466 (lemmaDropSubseq!42 lt!397470 from!787))))

(declare-fun e!745528 () Bool)

(assert (=> b!1163806 (= (rulesProduceEachTokenIndividuallyList!558 Lexer!1688 (rules!9538 thiss!10527) lt!397481) e!745528)))

(declare-fun res!525141 () Bool)

(assert (=> b!1163806 (=> res!525141 e!745528)))

(assert (=> b!1163806 (= res!525141 (not ((_ is Cons!11465) lt!397481)))))

(assert (=> b!1163806 (= lt!397481 (drop!477 lt!397470 from!787))))

(declare-fun lt!397478 () Unit!17533)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!42 (LexerInterface!1690 List!11489 Int List!11490) Unit!17533)

(assert (=> b!1163806 (= lt!397478 (tokensListTwoByTwoPredicateSeparableTokensDropList!42 Lexer!1688 lt!397470 from!787 (rules!9538 thiss!10527)))))

(declare-fun e!745535 () Bool)

(assert (=> b!1163806 e!745535))

(declare-fun res!525129 () Bool)

(assert (=> b!1163806 (=> (not res!525129) (not e!745535))))

(declare-fun lt!397482 () BalanceConc!7528)

(declare-fun separableTokens!132 (LexerInterface!1690 BalanceConc!7528 List!11490) Bool)

(assert (=> b!1163806 (= res!525129 (= (separableTokens!132 Lexer!1688 lt!397482 (rules!9538 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!65 Lexer!1688 lt!397482 0 (rules!9538 thiss!10527))))))

(declare-fun e!745519 () Bool)

(declare-fun e!745537 () Bool)

(assert (=> b!1163807 (= e!745519 (not e!745537))))

(declare-fun res!525132 () Bool)

(assert (=> b!1163807 (=> res!525132 e!745537)))

(declare-fun forall!3001 (BalanceConc!7528 Int) Bool)

(assert (=> b!1163807 (= res!525132 (not (forall!3001 (tokens!1608 thiss!10527) lambda!47639)))))

(declare-fun e!745517 () Bool)

(assert (=> b!1163807 (= (rulesProduceEachTokenIndividuallyList!558 Lexer!1688 (rules!9538 thiss!10527) lt!397470) e!745517)))

(declare-fun res!525131 () Bool)

(assert (=> b!1163807 (=> res!525131 e!745517)))

(assert (=> b!1163807 (= res!525131 (not ((_ is Cons!11465) lt!397470)))))

(declare-fun list!4222 (BalanceConc!7528) List!11489)

(assert (=> b!1163807 (= lt!397470 (list!4222 (tokens!1608 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!729 (LexerInterface!1690 List!11490 BalanceConc!7528) Bool)

(assert (=> b!1163807 (= (rulesProduceEachTokenIndividually!729 Lexer!1688 (rules!9538 thiss!10527) (tokens!1608 thiss!10527)) (forall!3001 (tokens!1608 thiss!10527) lambda!47639))))

(declare-fun b!1163808 () Bool)

(declare-fun e!745533 () Bool)

(assert (=> b!1163808 (= e!745526 e!745533)))

(declare-fun res!525120 () Bool)

(assert (=> b!1163808 (=> (not res!525120) (not e!745533))))

(assert (=> b!1163808 (= res!525120 (rulesProduceIndividualToken!727 Lexer!1688 (rules!9538 thiss!10527) (h!16866 lt!397469)))))

(declare-fun b!1163809 () Bool)

(assert (=> b!1163809 (= e!745518 (rulesProduceEachTokenIndividuallyList!558 Lexer!1688 (rules!9538 thiss!10527) (t!110089 lt!397480)))))

(declare-fun b!1163810 () Bool)

(declare-fun size!9024 (BalanceConc!7526) Int)

(declare-fun charsOf!1064 (Token!3652) BalanceConc!7526)

(assert (=> b!1163810 (= e!745530 (> (size!9024 (charsOf!1064 lt!397483)) 0))))

(declare-fun b!1163811 () Bool)

(assert (=> b!1163811 (= e!745535 (= (tokensListTwoByTwoPredicateSeparable!65 Lexer!1688 (tokens!1608 thiss!10527) 0 (rules!9538 thiss!10527)) e!745532))))

(declare-fun res!525136 () Bool)

(assert (=> b!1163811 (=> res!525136 e!745532)))

(declare-fun lt!397473 () Int)

(assert (=> b!1163811 (= res!525136 (>= 0 (- lt!397473 1)))))

(declare-fun b!1163812 () Bool)

(assert (=> b!1163812 (= e!745517 e!745538)))

(declare-fun res!525134 () Bool)

(assert (=> b!1163812 (=> (not res!525134) (not e!745538))))

(assert (=> b!1163812 (= res!525134 (rulesProduceIndividualToken!727 Lexer!1688 (rules!9538 thiss!10527) (h!16866 lt!397470)))))

(declare-fun b!1163813 () Bool)

(declare-fun e!745524 () Bool)

(assert (=> b!1163813 (= e!745524 e!745519)))

(declare-fun res!525121 () Bool)

(assert (=> b!1163813 (=> (not res!525121) (not e!745519))))

(declare-fun rulesInvariant!1564 (LexerInterface!1690 List!11490) Bool)

(assert (=> b!1163813 (= res!525121 (rulesInvariant!1564 Lexer!1688 (rules!9538 thiss!10527)))))

(declare-fun lt!397479 () Unit!17533)

(declare-fun lemmaInvariant!182 (PrintableTokens!676) Unit!17533)

(assert (=> b!1163813 (= lt!397479 (lemmaInvariant!182 thiss!10527))))

(declare-fun b!1163814 () Bool)

(declare-fun e!745534 () Bool)

(declare-fun tp!333978 () Bool)

(declare-fun inv!15086 (Conc!3753) Bool)

(assert (=> b!1163814 (= e!745534 (and (inv!15086 (c!194494 (tokens!1608 thiss!10527))) tp!333978))))

(declare-fun b!1163815 () Bool)

(assert (=> b!1163815 (= e!745528 e!745522)))

(declare-fun res!525133 () Bool)

(assert (=> b!1163815 (=> (not res!525133) (not e!745522))))

(assert (=> b!1163815 (= res!525133 (rulesProduceIndividualToken!727 Lexer!1688 (rules!9538 thiss!10527) (h!16866 lt!397481)))))

(declare-fun b!1163816 () Bool)

(declare-fun e!745523 () Bool)

(assert (=> b!1163816 (= e!745523 (= (rulesProduceEachTokenIndividuallyList!558 Lexer!1688 (rules!9538 thiss!10527) lt!397480) e!745539))))

(declare-fun res!525135 () Bool)

(assert (=> b!1163816 (=> res!525135 e!745539)))

(assert (=> b!1163816 (= res!525135 (not ((_ is Cons!11465) lt!397480)))))

(declare-fun b!1163817 () Bool)

(assert (=> b!1163817 (= e!745537 e!745520)))

(declare-fun res!525123 () Bool)

(assert (=> b!1163817 (=> res!525123 e!745520)))

(assert (=> b!1163817 (= res!525123 (not (forall!3000 lt!397480 lambda!47639)))))

(assert (=> b!1163817 e!745523))

(declare-fun res!525127 () Bool)

(assert (=> b!1163817 (=> (not res!525127) (not e!745523))))

(assert (=> b!1163817 (= res!525127 (= lt!397464 (forall!3001 lt!397482 lambda!47639)))))

(assert (=> b!1163817 (= lt!397464 (rulesProduceEachTokenIndividually!729 Lexer!1688 (rules!9538 thiss!10527) lt!397482))))

(assert (=> b!1163817 (forall!3000 lt!397480 lambda!47639)))

(declare-fun lt!397459 () Unit!17533)

(assert (=> b!1163817 (= lt!397459 (lemmaForallSubseq!143 lt!397480 lt!397470 lambda!47639))))

(assert (=> b!1163817 (= lt!397480 (list!4222 lt!397482))))

(declare-fun slice!293 (BalanceConc!7528 Int Int) BalanceConc!7528)

(assert (=> b!1163817 (= lt!397482 (slice!293 (tokens!1608 thiss!10527) from!787 to!267))))

(declare-fun slice!294 (List!11489 Int Int) List!11489)

(assert (=> b!1163817 (subseq!251 (slice!294 lt!397470 from!787 to!267) lt!397470)))

(declare-fun lt!397476 () Unit!17533)

(declare-fun lemmaSliceSubseq!92 (List!11489 Int Int) Unit!17533)

(assert (=> b!1163817 (= lt!397476 (lemmaSliceSubseq!92 lt!397470 from!787 to!267))))

(declare-fun b!1163818 () Bool)

(declare-fun res!525137 () Bool)

(assert (=> b!1163818 (=> res!525137 e!745520)))

(assert (=> b!1163818 (= res!525137 (not (forall!3001 lt!397482 lambda!47639)))))

(declare-fun b!1163819 () Bool)

(assert (=> b!1163819 (= e!745536 (tokensListTwoByTwoPredicateSeparableList!102 Lexer!1688 lt!397469 (rules!9538 thiss!10527)))))

(declare-fun b!1163820 () Bool)

(assert (=> b!1163820 (= e!745533 (rulesProduceEachTokenIndividuallyList!558 Lexer!1688 (rules!9538 thiss!10527) (t!110089 lt!397469)))))

(declare-fun tp!333977 () Bool)

(declare-fun b!1163821 () Bool)

(declare-fun inv!15087 (BalanceConc!7528) Bool)

(assert (=> b!1163821 (= e!745527 (and tp!333977 (inv!15087 (tokens!1608 thiss!10527)) e!745534))))

(declare-fun b!1163822 () Bool)

(assert (=> b!1163822 (= e!745525 e!745524)))

(declare-fun res!525140 () Bool)

(assert (=> b!1163822 (=> (not res!525140) (not e!745524))))

(assert (=> b!1163822 (= res!525140 (<= to!267 lt!397473))))

(declare-fun size!9025 (BalanceConc!7528) Int)

(assert (=> b!1163822 (= lt!397473 (size!9025 (tokens!1608 thiss!10527)))))

(assert (= (and start!102050 res!525125) b!1163822))

(assert (= (and b!1163822 res!525140) b!1163813))

(assert (= (and b!1163813 res!525121) b!1163807))

(assert (= (and b!1163807 (not res!525131)) b!1163812))

(assert (= (and b!1163812 res!525134) b!1163805))

(assert (= (and b!1163807 (not res!525132)) b!1163817))

(assert (= (and b!1163817 res!525127) b!1163816))

(assert (= (and b!1163816 (not res!525135)) b!1163804))

(assert (= (and b!1163804 res!525130) b!1163809))

(assert (= (and b!1163817 (not res!525123)) b!1163818))

(assert (= (and b!1163818 (not res!525137)) b!1163806))

(assert (= (and b!1163806 res!525129) b!1163811))

(assert (= (and b!1163811 (not res!525136)) b!1163801))

(assert (= (and b!1163801 res!525126) b!1163810))

(assert (= (and b!1163801 res!525128) b!1163802))

(assert (= (and b!1163806 (not res!525141)) b!1163815))

(assert (= (and b!1163815 res!525133) b!1163803))

(assert (= (and b!1163806 res!525138) b!1163800))

(assert (= (and b!1163806 (not res!525124)) b!1163808))

(assert (= (and b!1163808 res!525120) b!1163820))

(assert (= (and b!1163806 res!525122) b!1163819))

(assert (= (and b!1163806 (not res!525139)) b!1163799))

(assert (= b!1163821 b!1163814))

(assert (= start!102050 b!1163821))

(declare-fun m!1332761 () Bool)

(assert (=> b!1163816 m!1332761))

(declare-fun m!1332763 () Bool)

(assert (=> b!1163811 m!1332763))

(declare-fun m!1332765 () Bool)

(assert (=> b!1163814 m!1332765))

(declare-fun m!1332767 () Bool)

(assert (=> b!1163805 m!1332767))

(declare-fun m!1332769 () Bool)

(assert (=> b!1163810 m!1332769))

(assert (=> b!1163810 m!1332769))

(declare-fun m!1332771 () Bool)

(assert (=> b!1163810 m!1332771))

(declare-fun m!1332773 () Bool)

(assert (=> b!1163817 m!1332773))

(declare-fun m!1332775 () Bool)

(assert (=> b!1163817 m!1332775))

(declare-fun m!1332777 () Bool)

(assert (=> b!1163817 m!1332777))

(declare-fun m!1332779 () Bool)

(assert (=> b!1163817 m!1332779))

(declare-fun m!1332781 () Bool)

(assert (=> b!1163817 m!1332781))

(assert (=> b!1163817 m!1332777))

(declare-fun m!1332783 () Bool)

(assert (=> b!1163817 m!1332783))

(declare-fun m!1332785 () Bool)

(assert (=> b!1163817 m!1332785))

(assert (=> b!1163817 m!1332773))

(declare-fun m!1332787 () Bool)

(assert (=> b!1163817 m!1332787))

(declare-fun m!1332789 () Bool)

(assert (=> b!1163817 m!1332789))

(declare-fun m!1332791 () Bool)

(assert (=> b!1163821 m!1332791))

(declare-fun m!1332793 () Bool)

(assert (=> b!1163813 m!1332793))

(declare-fun m!1332795 () Bool)

(assert (=> b!1163813 m!1332795))

(declare-fun m!1332797 () Bool)

(assert (=> b!1163804 m!1332797))

(declare-fun m!1332799 () Bool)

(assert (=> b!1163806 m!1332799))

(declare-fun m!1332801 () Bool)

(assert (=> b!1163806 m!1332801))

(declare-fun m!1332803 () Bool)

(assert (=> b!1163806 m!1332803))

(declare-fun m!1332805 () Bool)

(assert (=> b!1163806 m!1332805))

(declare-fun m!1332807 () Bool)

(assert (=> b!1163806 m!1332807))

(declare-fun m!1332809 () Bool)

(assert (=> b!1163806 m!1332809))

(declare-fun m!1332811 () Bool)

(assert (=> b!1163806 m!1332811))

(declare-fun m!1332813 () Bool)

(assert (=> b!1163806 m!1332813))

(declare-fun m!1332815 () Bool)

(assert (=> b!1163806 m!1332815))

(assert (=> b!1163806 m!1332807))

(assert (=> b!1163806 m!1332815))

(declare-fun m!1332817 () Bool)

(assert (=> b!1163806 m!1332817))

(declare-fun m!1332819 () Bool)

(assert (=> b!1163806 m!1332819))

(declare-fun m!1332821 () Bool)

(assert (=> b!1163806 m!1332821))

(declare-fun m!1332823 () Bool)

(assert (=> b!1163806 m!1332823))

(declare-fun m!1332825 () Bool)

(assert (=> b!1163806 m!1332825))

(declare-fun m!1332827 () Bool)

(assert (=> b!1163806 m!1332827))

(declare-fun m!1332829 () Bool)

(assert (=> b!1163819 m!1332829))

(declare-fun m!1332831 () Bool)

(assert (=> b!1163803 m!1332831))

(declare-fun m!1332833 () Bool)

(assert (=> b!1163812 m!1332833))

(declare-fun m!1332835 () Bool)

(assert (=> start!102050 m!1332835))

(declare-fun m!1332837 () Bool)

(assert (=> b!1163800 m!1332837))

(declare-fun m!1332839 () Bool)

(assert (=> b!1163801 m!1332839))

(declare-fun m!1332841 () Bool)

(assert (=> b!1163801 m!1332841))

(declare-fun m!1332843 () Bool)

(assert (=> b!1163801 m!1332843))

(declare-fun m!1332845 () Bool)

(assert (=> b!1163801 m!1332845))

(declare-fun m!1332847 () Bool)

(assert (=> b!1163801 m!1332847))

(declare-fun m!1332849 () Bool)

(assert (=> b!1163801 m!1332849))

(declare-fun m!1332851 () Bool)

(assert (=> b!1163801 m!1332851))

(declare-fun m!1332853 () Bool)

(assert (=> b!1163801 m!1332853))

(declare-fun m!1332855 () Bool)

(assert (=> b!1163801 m!1332855))

(declare-fun m!1332857 () Bool)

(assert (=> b!1163801 m!1332857))

(declare-fun m!1332859 () Bool)

(assert (=> b!1163801 m!1332859))

(declare-fun m!1332861 () Bool)

(assert (=> b!1163801 m!1332861))

(declare-fun m!1332863 () Bool)

(assert (=> b!1163801 m!1332863))

(declare-fun m!1332865 () Bool)

(assert (=> b!1163801 m!1332865))

(declare-fun m!1332867 () Bool)

(assert (=> b!1163801 m!1332867))

(declare-fun m!1332869 () Bool)

(assert (=> b!1163801 m!1332869))

(declare-fun m!1332871 () Bool)

(assert (=> b!1163801 m!1332871))

(declare-fun m!1332873 () Bool)

(assert (=> b!1163801 m!1332873))

(declare-fun m!1332875 () Bool)

(assert (=> b!1163801 m!1332875))

(declare-fun m!1332877 () Bool)

(assert (=> b!1163801 m!1332877))

(declare-fun m!1332879 () Bool)

(assert (=> b!1163802 m!1332879))

(declare-fun m!1332881 () Bool)

(assert (=> b!1163809 m!1332881))

(declare-fun m!1332883 () Bool)

(assert (=> b!1163820 m!1332883))

(declare-fun m!1332885 () Bool)

(assert (=> b!1163808 m!1332885))

(declare-fun m!1332887 () Bool)

(assert (=> b!1163815 m!1332887))

(declare-fun m!1332889 () Bool)

(assert (=> b!1163822 m!1332889))

(declare-fun m!1332891 () Bool)

(assert (=> b!1163807 m!1332891))

(declare-fun m!1332893 () Bool)

(assert (=> b!1163807 m!1332893))

(declare-fun m!1332895 () Bool)

(assert (=> b!1163807 m!1332895))

(declare-fun m!1332897 () Bool)

(assert (=> b!1163807 m!1332897))

(assert (=> b!1163807 m!1332895))

(assert (=> b!1163818 m!1332775))

(check-sat (not b!1163805) (not b!1163808) (not b!1163811) (not b!1163801) (not b!1163800) (not b!1163814) (not b!1163822) (not b!1163817) (not b!1163809) (not b!1163806) (not start!102050) (not b!1163813) (not b!1163818) (not b!1163803) (not b!1163830) (not b!1163812) (not b!1163821) (not b!1163802) (not b!1163810) (not b!1163807) (not b!1163804) (not b!1163829) (not b!1163815) (not b!1163819) (not b!1163820) (not b!1163816))
(check-sat)
