; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103814 () Bool)

(assert start!103814)

(declare-fun b!1175933 () Bool)

(declare-fun e!754561 () Bool)

(assert (=> b!1175933 (= e!754561 true)))

(declare-fun b!1175932 () Bool)

(declare-fun e!754560 () Bool)

(assert (=> b!1175932 (= e!754560 e!754561)))

(declare-fun b!1175910 () Bool)

(assert (=> b!1175910 e!754560))

(assert (= b!1175932 b!1175933))

(assert (= b!1175910 b!1175932))

(declare-fun b!1175901 () Bool)

(declare-fun e!754533 () Bool)

(declare-fun e!754543 () Bool)

(assert (=> b!1175901 (= e!754533 e!754543)))

(declare-fun res!531609 () Bool)

(assert (=> b!1175901 (=> (not res!531609) (not e!754543))))

(declare-datatypes ((List!11656 0))(
  ( (Nil!11632) (Cons!11632 (h!17033 (_ BitVec 16)) (t!111120 List!11656)) )
))
(declare-datatypes ((TokenValue!2095 0))(
  ( (FloatLiteralValue!4190 (text!15110 List!11656)) (TokenValueExt!2094 (__x!7901 Int)) (Broken!10475 (value!65797 List!11656)) (Object!2118) (End!2095) (Def!2095) (Underscore!2095) (Match!2095) (Else!2095) (Error!2095) (Case!2095) (If!2095) (Extends!2095) (Abstract!2095) (Class!2095) (Val!2095) (DelimiterValue!4190 (del!2155 List!11656)) (KeywordValue!2101 (value!65798 List!11656)) (CommentValue!4190 (value!65799 List!11656)) (WhitespaceValue!4190 (value!65800 List!11656)) (IndentationValue!2095 (value!65801 List!11656)) (String!14062) (Int32!2095) (Broken!10476 (value!65802 List!11656)) (Boolean!2096) (Unit!17957) (OperatorValue!2098 (op!2155 List!11656)) (IdentifierValue!4190 (value!65803 List!11656)) (IdentifierValue!4191 (value!65804 List!11656)) (WhitespaceValue!4191 (value!65805 List!11656)) (True!4190) (False!4190) (Broken!10477 (value!65806 List!11656)) (Broken!10478 (value!65807 List!11656)) (True!4191) (RightBrace!2095) (RightBracket!2095) (Colon!2095) (Null!2095) (Comma!2095) (LeftBracket!2095) (False!4191) (LeftBrace!2095) (ImaginaryLiteralValue!2095 (text!15111 List!11656)) (StringLiteralValue!6285 (value!65808 List!11656)) (EOFValue!2095 (value!65809 List!11656)) (IdentValue!2095 (value!65810 List!11656)) (DelimiterValue!4191 (value!65811 List!11656)) (DedentValue!2095 (value!65812 List!11656)) (NewLineValue!2095 (value!65813 List!11656)) (IntegerValue!6285 (value!65814 (_ BitVec 32)) (text!15112 List!11656)) (IntegerValue!6286 (value!65815 Int) (text!15113 List!11656)) (Times!2095) (Or!2095) (Equal!2095) (Minus!2095) (Broken!10479 (value!65816 List!11656)) (And!2095) (Div!2095) (LessEqual!2095) (Mod!2095) (Concat!5394) (Not!2095) (Plus!2095) (SpaceValue!2095 (value!65817 List!11656)) (IntegerValue!6287 (value!65818 Int) (text!15114 List!11656)) (StringLiteralValue!6286 (text!15115 List!11656)) (FloatLiteralValue!4191 (text!15116 List!11656)) (BytesLiteralValue!2095 (value!65819 List!11656)) (CommentValue!4191 (value!65820 List!11656)) (StringLiteralValue!6287 (value!65821 List!11656)) (ErrorTokenValue!2095 (msg!2156 List!11656)) )
))
(declare-datatypes ((C!6916 0))(
  ( (C!6917 (val!3714 Int)) )
))
(declare-datatypes ((Regex!3299 0))(
  ( (ElementMatch!3299 (c!196021 C!6916)) (Concat!5395 (regOne!7110 Regex!3299) (regTwo!7110 Regex!3299)) (EmptyExpr!3299) (Star!3299 (reg!3628 Regex!3299)) (EmptyLang!3299) (Union!3299 (regOne!7111 Regex!3299) (regTwo!7111 Regex!3299)) )
))
(declare-datatypes ((String!14063 0))(
  ( (String!14064 (value!65822 String)) )
))
(declare-datatypes ((List!11657 0))(
  ( (Nil!11633) (Cons!11633 (h!17034 C!6916) (t!111121 List!11657)) )
))
(declare-datatypes ((IArray!7645 0))(
  ( (IArray!7646 (innerList!3880 List!11657)) )
))
(declare-datatypes ((Conc!3820 0))(
  ( (Node!3820 (left!10172 Conc!3820) (right!10502 Conc!3820) (csize!7870 Int) (cheight!4031 Int)) (Leaf!5845 (xs!6525 IArray!7645) (csize!7871 Int)) (Empty!3820) )
))
(declare-datatypes ((BalanceConc!7662 0))(
  ( (BalanceConc!7663 (c!196022 Conc!3820)) )
))
(declare-datatypes ((TokenValueInjection!3890 0))(
  ( (TokenValueInjection!3891 (toValue!3130 Int) (toChars!2989 Int)) )
))
(declare-datatypes ((Rule!3858 0))(
  ( (Rule!3859 (regex!2029 Regex!3299) (tag!2291 String!14063) (isSeparator!2029 Bool) (transformation!2029 TokenValueInjection!3890)) )
))
(declare-datatypes ((Token!3720 0))(
  ( (Token!3721 (value!65823 TokenValue!2095) (rule!3450 Rule!3858) (size!9191 Int) (originalCharacters!2583 List!11657)) )
))
(declare-datatypes ((List!11658 0))(
  ( (Nil!11634) (Cons!11634 (h!17035 Token!3720) (t!111122 List!11658)) )
))
(declare-datatypes ((List!11659 0))(
  ( (Nil!11635) (Cons!11635 (h!17036 Rule!3858) (t!111123 List!11659)) )
))
(declare-datatypes ((IArray!7647 0))(
  ( (IArray!7648 (innerList!3881 List!11658)) )
))
(declare-datatypes ((Conc!3821 0))(
  ( (Node!3821 (left!10173 Conc!3821) (right!10503 Conc!3821) (csize!7872 Int) (cheight!4032 Int)) (Leaf!5846 (xs!6526 IArray!7647) (csize!7873 Int)) (Empty!3821) )
))
(declare-datatypes ((BalanceConc!7664 0))(
  ( (BalanceConc!7665 (c!196023 Conc!3821)) )
))
(declare-datatypes ((PrintableTokens!744 0))(
  ( (PrintableTokens!745 (rules!9714 List!11659) (tokens!1682 BalanceConc!7664)) )
))
(declare-fun thiss!10527 () PrintableTokens!744)

(declare-fun lt!405296 () List!11658)

(declare-datatypes ((LexerInterface!1724 0))(
  ( (LexerInterfaceExt!1721 (__x!7902 Int)) (Lexer!1722) )
))
(declare-fun rulesProduceIndividualToken!759 (LexerInterface!1724 List!11659 Token!3720) Bool)

(assert (=> b!1175901 (= res!531609 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 lt!405296)))))

(declare-fun b!1175902 () Bool)

(declare-fun e!754552 () Bool)

(declare-fun lt!405307 () List!11658)

(declare-fun tokensListTwoByTwoPredicateSeparableList!120 (LexerInterface!1724 List!11658 List!11659) Bool)

(assert (=> b!1175902 (= e!754552 (tokensListTwoByTwoPredicateSeparableList!120 Lexer!1722 lt!405307 (rules!9714 thiss!10527)))))

(declare-fun b!1175903 () Bool)

(declare-fun e!754534 () Bool)

(declare-fun lt!405295 () BalanceConc!7664)

(declare-fun inv!15378 (PrintableTokens!744) Bool)

(assert (=> b!1175903 (= e!754534 (inv!15378 (PrintableTokens!745 (rules!9714 thiss!10527) lt!405295)))))

(declare-fun b!1175904 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!590 (LexerInterface!1724 List!11659 List!11658) Bool)

(assert (=> b!1175904 (= e!754543 (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) (t!111122 lt!405296)))))

(declare-fun b!1175905 () Bool)

(declare-fun e!754545 () Bool)

(declare-fun e!754541 () Bool)

(assert (=> b!1175905 (= e!754545 e!754541)))

(declare-fun res!531615 () Bool)

(assert (=> b!1175905 (=> (not res!531615) (not e!754541))))

(declare-fun rulesInvariant!1598 (LexerInterface!1724 List!11659) Bool)

(assert (=> b!1175905 (= res!531615 (rulesInvariant!1598 Lexer!1722 (rules!9714 thiss!10527)))))

(declare-datatypes ((Unit!17958 0))(
  ( (Unit!17959) )
))
(declare-fun lt!405312 () Unit!17958)

(declare-fun lemmaInvariant!216 (PrintableTokens!744) Unit!17958)

(assert (=> b!1175905 (= lt!405312 (lemmaInvariant!216 thiss!10527))))

(declare-fun b!1175906 () Bool)

(declare-fun e!754547 () Bool)

(assert (=> b!1175906 (= e!754547 (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) (t!111122 lt!405307)))))

(declare-fun b!1175907 () Bool)

(declare-fun e!754535 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!85 (LexerInterface!1724 BalanceConc!7664 Int List!11659) Bool)

(assert (=> b!1175907 (= e!754535 (tokensListTwoByTwoPredicateSeparable!85 Lexer!1722 (tokens!1682 thiss!10527) 1 (rules!9714 thiss!10527)))))

(declare-fun res!531612 () Bool)

(declare-fun e!754553 () Bool)

(assert (=> start!103814 (=> (not res!531612) (not e!754553))))

(declare-fun from!787 () Int)

(declare-fun to!267 () Int)

(assert (=> start!103814 (= res!531612 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!103814 e!754553))

(assert (=> start!103814 true))

(declare-fun e!754551 () Bool)

(assert (=> start!103814 (and (inv!15378 thiss!10527) e!754551)))

(declare-fun b!1175908 () Bool)

(declare-fun e!754546 () Bool)

(declare-fun tp!335035 () Bool)

(declare-fun inv!15379 (BalanceConc!7664) Bool)

(assert (=> b!1175908 (= e!754551 (and tp!335035 (inv!15379 (tokens!1682 thiss!10527)) e!754546))))

(declare-fun b!1175909 () Bool)

(declare-fun e!754542 () Bool)

(declare-fun e!754549 () Bool)

(assert (=> b!1175909 (= e!754542 e!754549)))

(declare-fun res!531616 () Bool)

(assert (=> b!1175909 (=> (not res!531616) (not e!754549))))

(declare-fun lt!405316 () List!11658)

(assert (=> b!1175909 (= res!531616 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 lt!405316)))))

(declare-fun e!754550 () Bool)

(assert (=> b!1175910 (= e!754541 (not e!754550))))

(declare-fun res!531625 () Bool)

(assert (=> b!1175910 (=> res!531625 e!754550)))

(declare-fun lambda!48501 () Int)

(declare-fun forall!3093 (BalanceConc!7664 Int) Bool)

(assert (=> b!1175910 (= res!531625 (not (forall!3093 (tokens!1682 thiss!10527) lambda!48501)))))

(declare-fun lt!405302 () List!11658)

(declare-fun e!754536 () Bool)

(assert (=> b!1175910 (= (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) lt!405302) e!754536)))

(declare-fun res!531629 () Bool)

(assert (=> b!1175910 (=> res!531629 e!754536)))

(get-info :version)

(assert (=> b!1175910 (= res!531629 (not ((_ is Cons!11634) lt!405302)))))

(declare-fun list!4302 (BalanceConc!7664) List!11658)

(assert (=> b!1175910 (= lt!405302 (list!4302 (tokens!1682 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!762 (LexerInterface!1724 List!11659 BalanceConc!7664) Bool)

(assert (=> b!1175910 (= (rulesProduceEachTokenIndividually!762 Lexer!1722 (rules!9714 thiss!10527) (tokens!1682 thiss!10527)) (forall!3093 (tokens!1682 thiss!10527) lambda!48501))))

(declare-fun b!1175911 () Bool)

(declare-fun e!754544 () Bool)

(assert (=> b!1175911 (= e!754544 (tokensListTwoByTwoPredicateSeparableList!120 Lexer!1722 lt!405296 (rules!9714 thiss!10527)))))

(declare-fun b!1175912 () Bool)

(declare-fun res!531622 () Bool)

(declare-fun e!754540 () Bool)

(assert (=> b!1175912 (=> (not res!531622) (not e!754540))))

(assert (=> b!1175912 (= res!531622 (= (rulesProduceEachTokenIndividually!762 Lexer!1722 (rules!9714 thiss!10527) lt!405295) (forall!3093 lt!405295 lambda!48501)))))

(declare-fun b!1175913 () Bool)

(assert (=> b!1175913 (= e!754549 (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) (t!111122 lt!405316)))))

(declare-fun b!1175914 () Bool)

(declare-fun e!754554 () Bool)

(assert (=> b!1175914 (= e!754550 e!754554)))

(declare-fun res!531626 () Bool)

(assert (=> b!1175914 (=> res!531626 e!754554)))

(declare-fun forall!3094 (List!11658 Int) Bool)

(assert (=> b!1175914 (= res!531626 (not (forall!3094 lt!405316 lambda!48501)))))

(assert (=> b!1175914 e!754540))

(declare-fun res!531631 () Bool)

(assert (=> b!1175914 (=> (not res!531631) (not e!754540))))

(assert (=> b!1175914 (= res!531631 (forall!3094 lt!405316 lambda!48501))))

(declare-fun lt!405309 () Unit!17958)

(declare-fun lemmaForallSubseq!167 (List!11658 List!11658 Int) Unit!17958)

(assert (=> b!1175914 (= lt!405309 (lemmaForallSubseq!167 lt!405316 lt!405302 lambda!48501))))

(assert (=> b!1175914 (= lt!405316 (list!4302 lt!405295))))

(declare-fun slice!374 (BalanceConc!7664 Int Int) BalanceConc!7664)

(assert (=> b!1175914 (= lt!405295 (slice!374 (tokens!1682 thiss!10527) from!787 to!267))))

(declare-fun subseq!279 (List!11658 List!11658) Bool)

(declare-fun slice!375 (List!11658 Int Int) List!11658)

(assert (=> b!1175914 (subseq!279 (slice!375 lt!405302 from!787 to!267) lt!405302)))

(declare-fun lt!405308 () Unit!17958)

(declare-fun lemmaSliceSubseq!120 (List!11658 Int Int) Unit!17958)

(assert (=> b!1175914 (= lt!405308 (lemmaSliceSubseq!120 lt!405302 from!787 to!267))))

(declare-fun b!1175915 () Bool)

(declare-fun e!754555 () Bool)

(assert (=> b!1175915 (= e!754555 e!754547)))

(declare-fun res!531623 () Bool)

(assert (=> b!1175915 (=> (not res!531623) (not e!754547))))

(assert (=> b!1175915 (= res!531623 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 lt!405307)))))

(declare-fun b!1175916 () Bool)

(declare-fun tp!335036 () Bool)

(declare-fun inv!15380 (Conc!3821) Bool)

(assert (=> b!1175916 (= e!754546 (and (inv!15380 (c!196023 (tokens!1682 thiss!10527))) tp!335036))))

(declare-fun b!1175917 () Bool)

(declare-fun e!754539 () Bool)

(assert (=> b!1175917 (= e!754536 e!754539)))

(declare-fun res!531630 () Bool)

(assert (=> b!1175917 (=> (not res!531630) (not e!754539))))

(assert (=> b!1175917 (= res!531630 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 lt!405302)))))

(declare-fun b!1175918 () Bool)

(declare-fun e!754537 () Bool)

(assert (=> b!1175918 (= e!754537 e!754535)))

(declare-fun res!531611 () Bool)

(assert (=> b!1175918 (=> (not res!531611) (not e!754535))))

(declare-fun lt!405297 () Token!3720)

(declare-fun lt!405318 () Token!3720)

(declare-fun separableTokensPredicate!146 (LexerInterface!1724 Token!3720 Token!3720 List!11659) Bool)

(assert (=> b!1175918 (= res!531611 (separableTokensPredicate!146 Lexer!1722 lt!405297 lt!405318 (rules!9714 thiss!10527)))))

(declare-fun e!754548 () Bool)

(assert (=> b!1175918 e!754548))

(declare-fun res!531613 () Bool)

(assert (=> b!1175918 (=> (not res!531613) (not e!754548))))

(assert (=> b!1175918 (= res!531613 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) lt!405318))))

(declare-fun lt!405301 () Unit!17958)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!305 (LexerInterface!1724 List!11659 List!11658 Token!3720) Unit!17958)

(assert (=> b!1175918 (= lt!405301 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!305 Lexer!1722 (rules!9714 thiss!10527) lt!405302 lt!405318))))

(declare-fun apply!2555 (BalanceConc!7664 Int) Token!3720)

(assert (=> b!1175918 (= lt!405318 (apply!2555 (tokens!1682 thiss!10527) 1))))

(assert (=> b!1175918 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) lt!405297)))

(declare-fun lt!405303 () Unit!17958)

(assert (=> b!1175918 (= lt!405303 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!305 Lexer!1722 (rules!9714 thiss!10527) lt!405302 lt!405297))))

(assert (=> b!1175918 (= lt!405297 (apply!2555 (tokens!1682 thiss!10527) 0))))

(declare-fun lt!405317 () List!11658)

(declare-fun tail!1702 (List!11658) List!11658)

(declare-fun drop!501 (List!11658 Int) List!11658)

(assert (=> b!1175918 (= (tail!1702 lt!405317) (drop!501 lt!405302 2))))

(declare-fun lt!405320 () Unit!17958)

(declare-fun lemmaDropTail!375 (List!11658 Int) Unit!17958)

(assert (=> b!1175918 (= lt!405320 (lemmaDropTail!375 lt!405302 1))))

(declare-fun lt!405311 () List!11658)

(assert (=> b!1175918 (= (tail!1702 lt!405311) lt!405317)))

(declare-fun lt!405313 () Unit!17958)

(assert (=> b!1175918 (= lt!405313 (lemmaDropTail!375 lt!405302 0))))

(declare-fun head!2118 (List!11658) Token!3720)

(declare-fun apply!2556 (List!11658 Int) Token!3720)

(assert (=> b!1175918 (= (head!2118 lt!405317) (apply!2556 lt!405302 1))))

(assert (=> b!1175918 (= lt!405317 (drop!501 lt!405302 1))))

(declare-fun lt!405298 () Unit!17958)

(declare-fun lemmaDropApply!387 (List!11658 Int) Unit!17958)

(assert (=> b!1175918 (= lt!405298 (lemmaDropApply!387 lt!405302 1))))

(assert (=> b!1175918 (= (head!2118 lt!405311) (apply!2556 lt!405302 0))))

(assert (=> b!1175918 (= lt!405311 (drop!501 lt!405302 0))))

(declare-fun lt!405300 () Unit!17958)

(assert (=> b!1175918 (= lt!405300 (lemmaDropApply!387 lt!405302 0))))

(declare-fun b!1175919 () Bool)

(assert (=> b!1175919 (= e!754539 (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) (t!111122 lt!405302)))))

(declare-fun b!1175920 () Bool)

(assert (=> b!1175920 (= e!754554 e!754534)))

(declare-fun res!531617 () Bool)

(assert (=> b!1175920 (=> res!531617 e!754534)))

(declare-fun lt!405310 () Bool)

(assert (=> b!1175920 (= res!531617 (not lt!405310))))

(assert (=> b!1175920 e!754552))

(declare-fun res!531620 () Bool)

(assert (=> b!1175920 (=> (not res!531620) (not e!754552))))

(assert (=> b!1175920 (= res!531620 (forall!3094 lt!405307 lambda!48501))))

(declare-fun lt!405314 () Unit!17958)

(assert (=> b!1175920 (= lt!405314 (lemmaForallSubseq!167 lt!405307 lt!405296 lambda!48501))))

(assert (=> b!1175920 (= (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) lt!405307) e!754555)))

(declare-fun res!531618 () Bool)

(assert (=> b!1175920 (=> res!531618 e!754555)))

(assert (=> b!1175920 (= res!531618 (not ((_ is Cons!11634) lt!405307)))))

(declare-fun take!89 (List!11658 Int) List!11658)

(assert (=> b!1175920 (= lt!405307 (take!89 lt!405296 (- to!267 from!787)))))

(declare-fun lt!405319 () Unit!17958)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!40 (LexerInterface!1724 List!11658 Int List!11659) Unit!17958)

(assert (=> b!1175920 (= lt!405319 (tokensListTwoByTwoPredicateSeparableTokensTakeList!40 Lexer!1722 lt!405296 (- to!267 from!787) (rules!9714 thiss!10527)))))

(assert (=> b!1175920 (forall!3094 lt!405296 lambda!48501)))

(declare-fun lt!405305 () Unit!17958)

(assert (=> b!1175920 (= lt!405305 (lemmaForallSubseq!167 lt!405296 lt!405302 lambda!48501))))

(assert (=> b!1175920 e!754544))

(declare-fun res!531628 () Bool)

(assert (=> b!1175920 (=> (not res!531628) (not e!754544))))

(assert (=> b!1175920 (= res!531628 (forall!3094 lt!405296 lambda!48501))))

(declare-fun lt!405299 () Unit!17958)

(assert (=> b!1175920 (= lt!405299 (lemmaForallSubseq!167 lt!405296 lt!405302 lambda!48501))))

(assert (=> b!1175920 (subseq!279 lt!405296 lt!405302)))

(declare-fun lt!405315 () Unit!17958)

(declare-fun lemmaDropSubseq!54 (List!11658 Int) Unit!17958)

(assert (=> b!1175920 (= lt!405315 (lemmaDropSubseq!54 lt!405302 from!787))))

(assert (=> b!1175920 (= (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) lt!405296) e!754533)))

(declare-fun res!531619 () Bool)

(assert (=> b!1175920 (=> res!531619 e!754533)))

(assert (=> b!1175920 (= res!531619 (not ((_ is Cons!11634) lt!405296)))))

(assert (=> b!1175920 (= lt!405296 (drop!501 lt!405302 from!787))))

(declare-fun lt!405306 () Unit!17958)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!54 (LexerInterface!1724 List!11658 Int List!11659) Unit!17958)

(assert (=> b!1175920 (= lt!405306 (tokensListTwoByTwoPredicateSeparableTokensDropList!54 Lexer!1722 lt!405302 from!787 (rules!9714 thiss!10527)))))

(declare-fun e!754538 () Bool)

(assert (=> b!1175920 e!754538))

(declare-fun res!531624 () Bool)

(assert (=> b!1175920 (=> (not res!531624) (not e!754538))))

(assert (=> b!1175920 (= res!531624 (= lt!405310 (tokensListTwoByTwoPredicateSeparable!85 Lexer!1722 lt!405295 0 (rules!9714 thiss!10527))))))

(declare-fun separableTokens!160 (LexerInterface!1724 BalanceConc!7664 List!11659) Bool)

(assert (=> b!1175920 (= lt!405310 (separableTokens!160 Lexer!1722 lt!405295 (rules!9714 thiss!10527)))))

(declare-fun b!1175921 () Bool)

(assert (=> b!1175921 (= e!754553 e!754545)))

(declare-fun res!531610 () Bool)

(assert (=> b!1175921 (=> (not res!531610) (not e!754545))))

(declare-fun lt!405304 () Int)

(assert (=> b!1175921 (= res!531610 (<= to!267 lt!405304))))

(declare-fun size!9192 (BalanceConc!7664) Int)

(assert (=> b!1175921 (= lt!405304 (size!9192 (tokens!1682 thiss!10527)))))

(declare-fun b!1175922 () Bool)

(declare-fun size!9193 (BalanceConc!7662) Int)

(declare-fun charsOf!1084 (Token!3720) BalanceConc!7662)

(assert (=> b!1175922 (= e!754548 (> (size!9193 (charsOf!1084 lt!405318)) 0))))

(declare-fun b!1175923 () Bool)

(assert (=> b!1175923 (= e!754538 (= (tokensListTwoByTwoPredicateSeparable!85 Lexer!1722 (tokens!1682 thiss!10527) 0 (rules!9714 thiss!10527)) e!754537))))

(declare-fun res!531627 () Bool)

(assert (=> b!1175923 (=> res!531627 e!754537)))

(assert (=> b!1175923 (= res!531627 (>= 0 (- lt!405304 1)))))

(declare-fun b!1175924 () Bool)

(declare-fun res!531614 () Bool)

(assert (=> b!1175924 (=> res!531614 e!754554)))

(assert (=> b!1175924 (= res!531614 (not (forall!3093 lt!405295 lambda!48501)))))

(declare-fun b!1175925 () Bool)

(assert (=> b!1175925 (= e!754540 (= (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) lt!405316) e!754542))))

(declare-fun res!531621 () Bool)

(assert (=> b!1175925 (=> res!531621 e!754542)))

(assert (=> b!1175925 (= res!531621 (not ((_ is Cons!11634) lt!405316)))))

(assert (= (and start!103814 res!531612) b!1175921))

(assert (= (and b!1175921 res!531610) b!1175905))

(assert (= (and b!1175905 res!531615) b!1175910))

(assert (= (and b!1175910 (not res!531629)) b!1175917))

(assert (= (and b!1175917 res!531630) b!1175919))

(assert (= (and b!1175910 (not res!531625)) b!1175914))

(assert (= (and b!1175914 res!531631) b!1175912))

(assert (= (and b!1175912 res!531622) b!1175925))

(assert (= (and b!1175925 (not res!531621)) b!1175909))

(assert (= (and b!1175909 res!531616) b!1175913))

(assert (= (and b!1175914 (not res!531626)) b!1175924))

(assert (= (and b!1175924 (not res!531614)) b!1175920))

(assert (= (and b!1175920 res!531624) b!1175923))

(assert (= (and b!1175923 (not res!531627)) b!1175918))

(assert (= (and b!1175918 res!531613) b!1175922))

(assert (= (and b!1175918 res!531611) b!1175907))

(assert (= (and b!1175920 (not res!531619)) b!1175901))

(assert (= (and b!1175901 res!531609) b!1175904))

(assert (= (and b!1175920 res!531628) b!1175911))

(assert (= (and b!1175920 (not res!531618)) b!1175915))

(assert (= (and b!1175915 res!531623) b!1175906))

(assert (= (and b!1175920 res!531620) b!1175902))

(assert (= (and b!1175920 (not res!531617)) b!1175903))

(assert (= b!1175908 b!1175916))

(assert (= start!103814 b!1175908))

(declare-fun m!1352797 () Bool)

(assert (=> b!1175911 m!1352797))

(declare-fun m!1352799 () Bool)

(assert (=> b!1175918 m!1352799))

(declare-fun m!1352801 () Bool)

(assert (=> b!1175918 m!1352801))

(declare-fun m!1352803 () Bool)

(assert (=> b!1175918 m!1352803))

(declare-fun m!1352805 () Bool)

(assert (=> b!1175918 m!1352805))

(declare-fun m!1352807 () Bool)

(assert (=> b!1175918 m!1352807))

(declare-fun m!1352809 () Bool)

(assert (=> b!1175918 m!1352809))

(declare-fun m!1352811 () Bool)

(assert (=> b!1175918 m!1352811))

(declare-fun m!1352813 () Bool)

(assert (=> b!1175918 m!1352813))

(declare-fun m!1352815 () Bool)

(assert (=> b!1175918 m!1352815))

(declare-fun m!1352817 () Bool)

(assert (=> b!1175918 m!1352817))

(declare-fun m!1352819 () Bool)

(assert (=> b!1175918 m!1352819))

(declare-fun m!1352821 () Bool)

(assert (=> b!1175918 m!1352821))

(declare-fun m!1352823 () Bool)

(assert (=> b!1175918 m!1352823))

(declare-fun m!1352825 () Bool)

(assert (=> b!1175918 m!1352825))

(declare-fun m!1352827 () Bool)

(assert (=> b!1175918 m!1352827))

(declare-fun m!1352829 () Bool)

(assert (=> b!1175918 m!1352829))

(declare-fun m!1352831 () Bool)

(assert (=> b!1175918 m!1352831))

(declare-fun m!1352833 () Bool)

(assert (=> b!1175918 m!1352833))

(declare-fun m!1352835 () Bool)

(assert (=> b!1175918 m!1352835))

(declare-fun m!1352837 () Bool)

(assert (=> b!1175918 m!1352837))

(declare-fun m!1352839 () Bool)

(assert (=> b!1175910 m!1352839))

(declare-fun m!1352841 () Bool)

(assert (=> b!1175910 m!1352841))

(declare-fun m!1352843 () Bool)

(assert (=> b!1175910 m!1352843))

(assert (=> b!1175910 m!1352839))

(declare-fun m!1352845 () Bool)

(assert (=> b!1175910 m!1352845))

(declare-fun m!1352847 () Bool)

(assert (=> b!1175916 m!1352847))

(declare-fun m!1352849 () Bool)

(assert (=> b!1175907 m!1352849))

(declare-fun m!1352851 () Bool)

(assert (=> b!1175922 m!1352851))

(assert (=> b!1175922 m!1352851))

(declare-fun m!1352853 () Bool)

(assert (=> b!1175922 m!1352853))

(declare-fun m!1352855 () Bool)

(assert (=> b!1175919 m!1352855))

(declare-fun m!1352857 () Bool)

(assert (=> b!1175904 m!1352857))

(declare-fun m!1352859 () Bool)

(assert (=> b!1175901 m!1352859))

(declare-fun m!1352861 () Bool)

(assert (=> b!1175906 m!1352861))

(declare-fun m!1352863 () Bool)

(assert (=> b!1175920 m!1352863))

(declare-fun m!1352865 () Bool)

(assert (=> b!1175920 m!1352865))

(declare-fun m!1352867 () Bool)

(assert (=> b!1175920 m!1352867))

(declare-fun m!1352869 () Bool)

(assert (=> b!1175920 m!1352869))

(assert (=> b!1175920 m!1352867))

(declare-fun m!1352871 () Bool)

(assert (=> b!1175920 m!1352871))

(declare-fun m!1352873 () Bool)

(assert (=> b!1175920 m!1352873))

(declare-fun m!1352875 () Bool)

(assert (=> b!1175920 m!1352875))

(declare-fun m!1352877 () Bool)

(assert (=> b!1175920 m!1352877))

(declare-fun m!1352879 () Bool)

(assert (=> b!1175920 m!1352879))

(declare-fun m!1352881 () Bool)

(assert (=> b!1175920 m!1352881))

(assert (=> b!1175920 m!1352865))

(declare-fun m!1352883 () Bool)

(assert (=> b!1175920 m!1352883))

(declare-fun m!1352885 () Bool)

(assert (=> b!1175920 m!1352885))

(declare-fun m!1352887 () Bool)

(assert (=> b!1175920 m!1352887))

(declare-fun m!1352889 () Bool)

(assert (=> b!1175920 m!1352889))

(declare-fun m!1352891 () Bool)

(assert (=> b!1175903 m!1352891))

(declare-fun m!1352893 () Bool)

(assert (=> b!1175923 m!1352893))

(declare-fun m!1352895 () Bool)

(assert (=> b!1175924 m!1352895))

(declare-fun m!1352897 () Bool)

(assert (=> b!1175915 m!1352897))

(declare-fun m!1352899 () Bool)

(assert (=> b!1175912 m!1352899))

(assert (=> b!1175912 m!1352895))

(declare-fun m!1352901 () Bool)

(assert (=> b!1175914 m!1352901))

(declare-fun m!1352903 () Bool)

(assert (=> b!1175914 m!1352903))

(declare-fun m!1352905 () Bool)

(assert (=> b!1175914 m!1352905))

(declare-fun m!1352907 () Bool)

(assert (=> b!1175914 m!1352907))

(assert (=> b!1175914 m!1352905))

(declare-fun m!1352909 () Bool)

(assert (=> b!1175914 m!1352909))

(declare-fun m!1352911 () Bool)

(assert (=> b!1175914 m!1352911))

(declare-fun m!1352913 () Bool)

(assert (=> b!1175914 m!1352913))

(assert (=> b!1175914 m!1352907))

(declare-fun m!1352915 () Bool)

(assert (=> b!1175921 m!1352915))

(declare-fun m!1352917 () Bool)

(assert (=> b!1175917 m!1352917))

(declare-fun m!1352919 () Bool)

(assert (=> b!1175913 m!1352919))

(declare-fun m!1352921 () Bool)

(assert (=> b!1175902 m!1352921))

(declare-fun m!1352923 () Bool)

(assert (=> b!1175905 m!1352923))

(declare-fun m!1352925 () Bool)

(assert (=> b!1175905 m!1352925))

(declare-fun m!1352927 () Bool)

(assert (=> b!1175908 m!1352927))

(declare-fun m!1352929 () Bool)

(assert (=> b!1175925 m!1352929))

(declare-fun m!1352931 () Bool)

(assert (=> start!103814 m!1352931))

(declare-fun m!1352933 () Bool)

(assert (=> b!1175909 m!1352933))

(check-sat (not b!1175923) (not b!1175904) (not b!1175920) (not b!1175906) (not b!1175917) (not b!1175916) (not b!1175919) (not b!1175902) (not b!1175913) (not b!1175912) (not b!1175914) (not b!1175918) (not start!103814) (not b!1175933) (not b!1175915) (not b!1175924) (not b!1175905) (not b!1175908) (not b!1175932) (not b!1175921) (not b!1175925) (not b!1175922) (not b!1175911) (not b!1175901) (not b!1175903) (not b!1175907) (not b!1175909) (not b!1175910))
(check-sat)
(get-model)

(declare-fun d!336883 () Bool)

(assert (=> d!336883 (= (slice!375 lt!405302 from!787 to!267) (take!89 (drop!501 lt!405302 from!787) (- to!267 from!787)))))

(declare-fun bs!286508 () Bool)

(assert (= bs!286508 d!336883))

(assert (=> bs!286508 m!1352875))

(assert (=> bs!286508 m!1352875))

(declare-fun m!1352935 () Bool)

(assert (=> bs!286508 m!1352935))

(assert (=> b!1175914 d!336883))

(declare-fun d!336885 () Bool)

(assert (=> d!336885 (subseq!279 (slice!375 lt!405302 from!787 to!267) lt!405302)))

(declare-fun lt!405323 () Unit!17958)

(declare-fun choose!7616 (List!11658 Int Int) Unit!17958)

(assert (=> d!336885 (= lt!405323 (choose!7616 lt!405302 from!787 to!267))))

(declare-fun e!754564 () Bool)

(assert (=> d!336885 e!754564))

(declare-fun res!531636 () Bool)

(assert (=> d!336885 (=> (not res!531636) (not e!754564))))

(assert (=> d!336885 (= res!531636 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!336885 (= (lemmaSliceSubseq!120 lt!405302 from!787 to!267) lt!405323)))

(declare-fun b!1175936 () Bool)

(declare-fun size!9196 (List!11658) Int)

(assert (=> b!1175936 (= e!754564 (<= to!267 (size!9196 lt!405302)))))

(assert (= (and d!336885 res!531636) b!1175936))

(assert (=> d!336885 m!1352905))

(assert (=> d!336885 m!1352905))

(assert (=> d!336885 m!1352909))

(declare-fun m!1352937 () Bool)

(assert (=> d!336885 m!1352937))

(declare-fun m!1352939 () Bool)

(assert (=> b!1175936 m!1352939))

(assert (=> b!1175914 d!336885))

(declare-fun d!336887 () Bool)

(declare-fun res!531643 () Bool)

(declare-fun e!754569 () Bool)

(assert (=> d!336887 (=> res!531643 e!754569)))

(assert (=> d!336887 (= res!531643 ((_ is Nil!11634) lt!405316))))

(assert (=> d!336887 (= (forall!3094 lt!405316 lambda!48501) e!754569)))

(declare-fun b!1175941 () Bool)

(declare-fun e!754570 () Bool)

(assert (=> b!1175941 (= e!754569 e!754570)))

(declare-fun res!531644 () Bool)

(assert (=> b!1175941 (=> (not res!531644) (not e!754570))))

(declare-fun dynLambda!5160 (Int Token!3720) Bool)

(assert (=> b!1175941 (= res!531644 (dynLambda!5160 lambda!48501 (h!17035 lt!405316)))))

(declare-fun b!1175942 () Bool)

(assert (=> b!1175942 (= e!754570 (forall!3094 (t!111122 lt!405316) lambda!48501))))

(assert (= (and d!336887 (not res!531643)) b!1175941))

(assert (= (and b!1175941 res!531644) b!1175942))

(declare-fun b_lambda!35167 () Bool)

(assert (=> (not b_lambda!35167) (not b!1175941)))

(declare-fun m!1352941 () Bool)

(assert (=> b!1175941 m!1352941))

(declare-fun m!1352943 () Bool)

(assert (=> b!1175942 m!1352943))

(assert (=> b!1175914 d!336887))

(declare-fun d!336889 () Bool)

(declare-fun e!754576 () Bool)

(assert (=> d!336889 e!754576))

(declare-fun res!531653 () Bool)

(assert (=> d!336889 (=> (not res!531653) (not e!754576))))

(declare-fun isBalanced!1082 (Conc!3821) Bool)

(declare-fun slice!376 (Conc!3821 Int Int) Conc!3821)

(assert (=> d!336889 (= res!531653 (isBalanced!1082 (slice!376 (c!196023 (tokens!1682 thiss!10527)) from!787 to!267)))))

(declare-fun lt!405326 () BalanceConc!7664)

(assert (=> d!336889 (= lt!405326 (BalanceConc!7665 (slice!376 (c!196023 (tokens!1682 thiss!10527)) from!787 to!267)))))

(declare-fun e!754575 () Bool)

(assert (=> d!336889 e!754575))

(declare-fun res!531651 () Bool)

(assert (=> d!336889 (=> (not res!531651) (not e!754575))))

(assert (=> d!336889 (= res!531651 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!336889 (= (slice!374 (tokens!1682 thiss!10527) from!787 to!267) lt!405326)))

(declare-fun b!1175949 () Bool)

(declare-fun res!531652 () Bool)

(assert (=> b!1175949 (=> (not res!531652) (not e!754575))))

(assert (=> b!1175949 (= res!531652 (<= to!267 (size!9192 (tokens!1682 thiss!10527))))))

(declare-fun b!1175950 () Bool)

(assert (=> b!1175950 (= e!754575 (isBalanced!1082 (c!196023 (tokens!1682 thiss!10527))))))

(declare-fun b!1175951 () Bool)

(assert (=> b!1175951 (= e!754576 (= (list!4302 lt!405326) (slice!375 (list!4302 (tokens!1682 thiss!10527)) from!787 to!267)))))

(assert (= (and d!336889 res!531651) b!1175949))

(assert (= (and b!1175949 res!531652) b!1175950))

(assert (= (and d!336889 res!531653) b!1175951))

(declare-fun m!1352945 () Bool)

(assert (=> d!336889 m!1352945))

(assert (=> d!336889 m!1352945))

(declare-fun m!1352947 () Bool)

(assert (=> d!336889 m!1352947))

(assert (=> b!1175949 m!1352915))

(declare-fun m!1352949 () Bool)

(assert (=> b!1175950 m!1352949))

(declare-fun m!1352951 () Bool)

(assert (=> b!1175951 m!1352951))

(assert (=> b!1175951 m!1352845))

(assert (=> b!1175951 m!1352845))

(declare-fun m!1352953 () Bool)

(assert (=> b!1175951 m!1352953))

(assert (=> b!1175914 d!336889))

(declare-fun d!336893 () Bool)

(declare-fun list!4304 (Conc!3821) List!11658)

(assert (=> d!336893 (= (list!4302 lt!405295) (list!4304 (c!196023 lt!405295)))))

(declare-fun bs!286509 () Bool)

(assert (= bs!286509 d!336893))

(declare-fun m!1352955 () Bool)

(assert (=> bs!286509 m!1352955))

(assert (=> b!1175914 d!336893))

(declare-fun d!336895 () Bool)

(assert (=> d!336895 (forall!3094 lt!405316 lambda!48501)))

(declare-fun lt!405329 () Unit!17958)

(declare-fun choose!7617 (List!11658 List!11658 Int) Unit!17958)

(assert (=> d!336895 (= lt!405329 (choose!7617 lt!405316 lt!405302 lambda!48501))))

(assert (=> d!336895 (forall!3094 lt!405302 lambda!48501)))

(assert (=> d!336895 (= (lemmaForallSubseq!167 lt!405316 lt!405302 lambda!48501) lt!405329)))

(declare-fun bs!286510 () Bool)

(assert (= bs!286510 d!336895))

(assert (=> bs!286510 m!1352907))

(declare-fun m!1352957 () Bool)

(assert (=> bs!286510 m!1352957))

(declare-fun m!1352959 () Bool)

(assert (=> bs!286510 m!1352959))

(assert (=> b!1175914 d!336895))

(declare-fun d!336897 () Bool)

(declare-fun res!531662 () Bool)

(declare-fun e!754586 () Bool)

(assert (=> d!336897 (=> res!531662 e!754586)))

(assert (=> d!336897 (= res!531662 ((_ is Nil!11634) (slice!375 lt!405302 from!787 to!267)))))

(assert (=> d!336897 (= (subseq!279 (slice!375 lt!405302 from!787 to!267) lt!405302) e!754586)))

(declare-fun e!754588 () Bool)

(declare-fun b!1175963 () Bool)

(assert (=> b!1175963 (= e!754588 (subseq!279 (slice!375 lt!405302 from!787 to!267) (t!111122 lt!405302)))))

(declare-fun b!1175962 () Bool)

(declare-fun e!754587 () Bool)

(assert (=> b!1175962 (= e!754587 (subseq!279 (t!111122 (slice!375 lt!405302 from!787 to!267)) (t!111122 lt!405302)))))

(declare-fun b!1175961 () Bool)

(declare-fun e!754585 () Bool)

(assert (=> b!1175961 (= e!754585 e!754588)))

(declare-fun res!531663 () Bool)

(assert (=> b!1175961 (=> res!531663 e!754588)))

(assert (=> b!1175961 (= res!531663 e!754587)))

(declare-fun res!531665 () Bool)

(assert (=> b!1175961 (=> (not res!531665) (not e!754587))))

(assert (=> b!1175961 (= res!531665 (= (h!17035 (slice!375 lt!405302 from!787 to!267)) (h!17035 lt!405302)))))

(declare-fun b!1175960 () Bool)

(assert (=> b!1175960 (= e!754586 e!754585)))

(declare-fun res!531664 () Bool)

(assert (=> b!1175960 (=> (not res!531664) (not e!754585))))

(assert (=> b!1175960 (= res!531664 ((_ is Cons!11634) lt!405302))))

(assert (= (and d!336897 (not res!531662)) b!1175960))

(assert (= (and b!1175960 res!531664) b!1175961))

(assert (= (and b!1175961 res!531665) b!1175962))

(assert (= (and b!1175961 (not res!531663)) b!1175963))

(assert (=> b!1175963 m!1352905))

(declare-fun m!1352961 () Bool)

(assert (=> b!1175963 m!1352961))

(declare-fun m!1352963 () Bool)

(assert (=> b!1175962 m!1352963))

(assert (=> b!1175914 d!336897))

(declare-fun bs!286514 () Bool)

(declare-fun d!336899 () Bool)

(assert (= bs!286514 (and d!336899 b!1175910)))

(declare-fun lambda!48508 () Int)

(assert (=> bs!286514 (= lambda!48508 lambda!48501)))

(declare-fun b!1176012 () Bool)

(declare-fun e!754631 () Bool)

(assert (=> b!1176012 (= e!754631 true)))

(declare-fun b!1176011 () Bool)

(declare-fun e!754630 () Bool)

(assert (=> b!1176011 (= e!754630 e!754631)))

(declare-fun b!1176010 () Bool)

(declare-fun e!754629 () Bool)

(assert (=> b!1176010 (= e!754629 e!754630)))

(assert (=> d!336899 e!754629))

(assert (= b!1176011 b!1176012))

(assert (= b!1176010 b!1176011))

(assert (= (and d!336899 ((_ is Cons!11635) (rules!9714 thiss!10527))) b!1176010))

(declare-fun order!7175 () Int)

(declare-fun order!7173 () Int)

(declare-fun dynLambda!5162 (Int Int) Int)

(declare-fun dynLambda!5163 (Int Int) Int)

(assert (=> b!1176012 (< (dynLambda!5162 order!7173 (toValue!3130 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48508))))

(declare-fun order!7177 () Int)

(declare-fun dynLambda!5164 (Int Int) Int)

(assert (=> b!1176012 (< (dynLambda!5164 order!7177 (toChars!2989 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48508))))

(assert (=> d!336899 true))

(declare-fun lt!405364 () Bool)

(assert (=> d!336899 (= lt!405364 (forall!3094 (t!111122 lt!405316) lambda!48508))))

(declare-fun e!754621 () Bool)

(assert (=> d!336899 (= lt!405364 e!754621)))

(declare-fun res!531686 () Bool)

(assert (=> d!336899 (=> res!531686 e!754621)))

(assert (=> d!336899 (= res!531686 (not ((_ is Cons!11634) (t!111122 lt!405316))))))

(declare-fun isEmpty!7057 (List!11659) Bool)

(assert (=> d!336899 (not (isEmpty!7057 (rules!9714 thiss!10527)))))

(assert (=> d!336899 (= (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) (t!111122 lt!405316)) lt!405364)))

(declare-fun b!1176000 () Bool)

(declare-fun e!754622 () Bool)

(assert (=> b!1176000 (= e!754621 e!754622)))

(declare-fun res!531687 () Bool)

(assert (=> b!1176000 (=> (not res!531687) (not e!754622))))

(assert (=> b!1176000 (= res!531687 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 (t!111122 lt!405316))))))

(declare-fun b!1176001 () Bool)

(assert (=> b!1176001 (= e!754622 (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) (t!111122 (t!111122 lt!405316))))))

(assert (= (and d!336899 (not res!531686)) b!1176000))

(assert (= (and b!1176000 res!531687) b!1176001))

(declare-fun m!1353005 () Bool)

(assert (=> d!336899 m!1353005))

(declare-fun m!1353007 () Bool)

(assert (=> d!336899 m!1353007))

(declare-fun m!1353009 () Bool)

(assert (=> b!1176000 m!1353009))

(declare-fun m!1353011 () Bool)

(assert (=> b!1176001 m!1353011))

(assert (=> b!1175913 d!336899))

(declare-fun d!336909 () Bool)

(declare-fun lt!405377 () Bool)

(declare-fun e!754651 () Bool)

(assert (=> d!336909 (= lt!405377 e!754651)))

(declare-fun res!531710 () Bool)

(assert (=> d!336909 (=> (not res!531710) (not e!754651))))

(declare-datatypes ((tuple2!12068 0))(
  ( (tuple2!12069 (_1!6881 BalanceConc!7664) (_2!6881 BalanceConc!7662)) )
))
(declare-fun lex!722 (LexerInterface!1724 List!11659 BalanceConc!7662) tuple2!12068)

(declare-fun print!659 (LexerInterface!1724 BalanceConc!7664) BalanceConc!7662)

(declare-fun singletonSeq!699 (Token!3720) BalanceConc!7664)

(assert (=> d!336909 (= res!531710 (= (list!4302 (_1!6881 (lex!722 Lexer!1722 (rules!9714 thiss!10527) (print!659 Lexer!1722 (singletonSeq!699 (h!17035 lt!405302)))))) (list!4302 (singletonSeq!699 (h!17035 lt!405302)))))))

(declare-fun e!754650 () Bool)

(assert (=> d!336909 (= lt!405377 e!754650)))

(declare-fun res!531708 () Bool)

(assert (=> d!336909 (=> (not res!531708) (not e!754650))))

(declare-fun lt!405376 () tuple2!12068)

(assert (=> d!336909 (= res!531708 (= (size!9192 (_1!6881 lt!405376)) 1))))

(assert (=> d!336909 (= lt!405376 (lex!722 Lexer!1722 (rules!9714 thiss!10527) (print!659 Lexer!1722 (singletonSeq!699 (h!17035 lt!405302)))))))

(assert (=> d!336909 (not (isEmpty!7057 (rules!9714 thiss!10527)))))

(assert (=> d!336909 (= (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 lt!405302)) lt!405377)))

(declare-fun b!1176038 () Bool)

(declare-fun res!531709 () Bool)

(assert (=> b!1176038 (=> (not res!531709) (not e!754650))))

(assert (=> b!1176038 (= res!531709 (= (apply!2555 (_1!6881 lt!405376) 0) (h!17035 lt!405302)))))

(declare-fun b!1176039 () Bool)

(declare-fun isEmpty!7058 (BalanceConc!7662) Bool)

(assert (=> b!1176039 (= e!754650 (isEmpty!7058 (_2!6881 lt!405376)))))

(declare-fun b!1176040 () Bool)

(assert (=> b!1176040 (= e!754651 (isEmpty!7058 (_2!6881 (lex!722 Lexer!1722 (rules!9714 thiss!10527) (print!659 Lexer!1722 (singletonSeq!699 (h!17035 lt!405302)))))))))

(assert (= (and d!336909 res!531708) b!1176038))

(assert (= (and b!1176038 res!531709) b!1176039))

(assert (= (and d!336909 res!531710) b!1176040))

(declare-fun m!1353041 () Bool)

(assert (=> d!336909 m!1353041))

(declare-fun m!1353043 () Bool)

(assert (=> d!336909 m!1353043))

(declare-fun m!1353045 () Bool)

(assert (=> d!336909 m!1353045))

(assert (=> d!336909 m!1353007))

(declare-fun m!1353047 () Bool)

(assert (=> d!336909 m!1353047))

(assert (=> d!336909 m!1353041))

(declare-fun m!1353049 () Bool)

(assert (=> d!336909 m!1353049))

(assert (=> d!336909 m!1353041))

(assert (=> d!336909 m!1353049))

(declare-fun m!1353051 () Bool)

(assert (=> d!336909 m!1353051))

(declare-fun m!1353053 () Bool)

(assert (=> b!1176038 m!1353053))

(declare-fun m!1353055 () Bool)

(assert (=> b!1176039 m!1353055))

(assert (=> b!1176040 m!1353041))

(assert (=> b!1176040 m!1353041))

(assert (=> b!1176040 m!1353049))

(assert (=> b!1176040 m!1353049))

(assert (=> b!1176040 m!1353051))

(declare-fun m!1353057 () Bool)

(assert (=> b!1176040 m!1353057))

(assert (=> b!1175917 d!336909))

(declare-fun d!336917 () Bool)

(declare-fun c!196027 () Bool)

(assert (=> d!336917 (= c!196027 ((_ is Node!3821) (c!196023 (tokens!1682 thiss!10527))))))

(declare-fun e!754656 () Bool)

(assert (=> d!336917 (= (inv!15380 (c!196023 (tokens!1682 thiss!10527))) e!754656)))

(declare-fun b!1176047 () Bool)

(declare-fun inv!15383 (Conc!3821) Bool)

(assert (=> b!1176047 (= e!754656 (inv!15383 (c!196023 (tokens!1682 thiss!10527))))))

(declare-fun b!1176048 () Bool)

(declare-fun e!754657 () Bool)

(assert (=> b!1176048 (= e!754656 e!754657)))

(declare-fun res!531713 () Bool)

(assert (=> b!1176048 (= res!531713 (not ((_ is Leaf!5846) (c!196023 (tokens!1682 thiss!10527)))))))

(assert (=> b!1176048 (=> res!531713 e!754657)))

(declare-fun b!1176049 () Bool)

(declare-fun inv!15384 (Conc!3821) Bool)

(assert (=> b!1176049 (= e!754657 (inv!15384 (c!196023 (tokens!1682 thiss!10527))))))

(assert (= (and d!336917 c!196027) b!1176047))

(assert (= (and d!336917 (not c!196027)) b!1176048))

(assert (= (and b!1176048 (not res!531713)) b!1176049))

(declare-fun m!1353059 () Bool)

(assert (=> b!1176047 m!1353059))

(declare-fun m!1353061 () Bool)

(assert (=> b!1176049 m!1353061))

(assert (=> b!1175916 d!336917))

(declare-fun d!336919 () Bool)

(declare-fun lt!405379 () Bool)

(declare-fun e!754659 () Bool)

(assert (=> d!336919 (= lt!405379 e!754659)))

(declare-fun res!531716 () Bool)

(assert (=> d!336919 (=> (not res!531716) (not e!754659))))

(assert (=> d!336919 (= res!531716 (= (list!4302 (_1!6881 (lex!722 Lexer!1722 (rules!9714 thiss!10527) (print!659 Lexer!1722 (singletonSeq!699 (h!17035 lt!405307)))))) (list!4302 (singletonSeq!699 (h!17035 lt!405307)))))))

(declare-fun e!754658 () Bool)

(assert (=> d!336919 (= lt!405379 e!754658)))

(declare-fun res!531714 () Bool)

(assert (=> d!336919 (=> (not res!531714) (not e!754658))))

(declare-fun lt!405378 () tuple2!12068)

(assert (=> d!336919 (= res!531714 (= (size!9192 (_1!6881 lt!405378)) 1))))

(assert (=> d!336919 (= lt!405378 (lex!722 Lexer!1722 (rules!9714 thiss!10527) (print!659 Lexer!1722 (singletonSeq!699 (h!17035 lt!405307)))))))

(assert (=> d!336919 (not (isEmpty!7057 (rules!9714 thiss!10527)))))

(assert (=> d!336919 (= (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 lt!405307)) lt!405379)))

(declare-fun b!1176050 () Bool)

(declare-fun res!531715 () Bool)

(assert (=> b!1176050 (=> (not res!531715) (not e!754658))))

(assert (=> b!1176050 (= res!531715 (= (apply!2555 (_1!6881 lt!405378) 0) (h!17035 lt!405307)))))

(declare-fun b!1176051 () Bool)

(assert (=> b!1176051 (= e!754658 (isEmpty!7058 (_2!6881 lt!405378)))))

(declare-fun b!1176052 () Bool)

(assert (=> b!1176052 (= e!754659 (isEmpty!7058 (_2!6881 (lex!722 Lexer!1722 (rules!9714 thiss!10527) (print!659 Lexer!1722 (singletonSeq!699 (h!17035 lt!405307)))))))))

(assert (= (and d!336919 res!531714) b!1176050))

(assert (= (and b!1176050 res!531715) b!1176051))

(assert (= (and d!336919 res!531716) b!1176052))

(declare-fun m!1353063 () Bool)

(assert (=> d!336919 m!1353063))

(declare-fun m!1353065 () Bool)

(assert (=> d!336919 m!1353065))

(declare-fun m!1353067 () Bool)

(assert (=> d!336919 m!1353067))

(assert (=> d!336919 m!1353007))

(declare-fun m!1353069 () Bool)

(assert (=> d!336919 m!1353069))

(assert (=> d!336919 m!1353063))

(declare-fun m!1353071 () Bool)

(assert (=> d!336919 m!1353071))

(assert (=> d!336919 m!1353063))

(assert (=> d!336919 m!1353071))

(declare-fun m!1353073 () Bool)

(assert (=> d!336919 m!1353073))

(declare-fun m!1353075 () Bool)

(assert (=> b!1176050 m!1353075))

(declare-fun m!1353077 () Bool)

(assert (=> b!1176051 m!1353077))

(assert (=> b!1176052 m!1353063))

(assert (=> b!1176052 m!1353063))

(assert (=> b!1176052 m!1353071))

(assert (=> b!1176052 m!1353071))

(assert (=> b!1176052 m!1353073))

(declare-fun m!1353079 () Bool)

(assert (=> b!1176052 m!1353079))

(assert (=> b!1175915 d!336919))

(declare-fun d!336921 () Bool)

(declare-fun res!531729 () Bool)

(declare-fun e!754665 () Bool)

(assert (=> d!336921 (=> (not res!531729) (not e!754665))))

(assert (=> d!336921 (= res!531729 (not (isEmpty!7057 (rules!9714 thiss!10527))))))

(assert (=> d!336921 (= (inv!15378 thiss!10527) e!754665)))

(declare-fun b!1176065 () Bool)

(declare-fun res!531730 () Bool)

(assert (=> b!1176065 (=> (not res!531730) (not e!754665))))

(assert (=> b!1176065 (= res!531730 (rulesInvariant!1598 Lexer!1722 (rules!9714 thiss!10527)))))

(declare-fun b!1176066 () Bool)

(declare-fun res!531731 () Bool)

(assert (=> b!1176066 (=> (not res!531731) (not e!754665))))

(assert (=> b!1176066 (= res!531731 (rulesProduceEachTokenIndividually!762 Lexer!1722 (rules!9714 thiss!10527) (tokens!1682 thiss!10527)))))

(declare-fun b!1176067 () Bool)

(assert (=> b!1176067 (= e!754665 (separableTokens!160 Lexer!1722 (tokens!1682 thiss!10527) (rules!9714 thiss!10527)))))

(assert (= (and d!336921 res!531729) b!1176065))

(assert (= (and b!1176065 res!531730) b!1176066))

(assert (= (and b!1176066 res!531731) b!1176067))

(assert (=> d!336921 m!1353007))

(assert (=> b!1176065 m!1352923))

(assert (=> b!1176066 m!1352843))

(declare-fun m!1353087 () Bool)

(assert (=> b!1176067 m!1353087))

(assert (=> start!103814 d!336921))

(declare-fun d!336927 () Bool)

(assert (=> d!336927 (forall!3094 lt!405296 lambda!48501)))

(declare-fun lt!405383 () Unit!17958)

(assert (=> d!336927 (= lt!405383 (choose!7617 lt!405296 lt!405302 lambda!48501))))

(assert (=> d!336927 (forall!3094 lt!405302 lambda!48501)))

(assert (=> d!336927 (= (lemmaForallSubseq!167 lt!405296 lt!405302 lambda!48501) lt!405383)))

(declare-fun bs!286519 () Bool)

(assert (= bs!286519 d!336927))

(assert (=> bs!286519 m!1352867))

(declare-fun m!1353089 () Bool)

(assert (=> bs!286519 m!1353089))

(assert (=> bs!286519 m!1352959))

(assert (=> b!1175920 d!336927))

(declare-fun b!1176086 () Bool)

(declare-fun e!754680 () Int)

(declare-fun e!754676 () Int)

(assert (=> b!1176086 (= e!754680 e!754676)))

(declare-fun c!196038 () Bool)

(declare-fun call!82431 () Int)

(assert (=> b!1176086 (= c!196038 (>= from!787 call!82431))))

(declare-fun b!1176087 () Bool)

(declare-fun e!754677 () List!11658)

(declare-fun e!754678 () List!11658)

(assert (=> b!1176087 (= e!754677 e!754678)))

(declare-fun c!196039 () Bool)

(assert (=> b!1176087 (= c!196039 (<= from!787 0))))

(declare-fun b!1176088 () Bool)

(declare-fun e!754679 () Bool)

(declare-fun lt!405386 () List!11658)

(assert (=> b!1176088 (= e!754679 (= (size!9196 lt!405386) e!754680))))

(declare-fun c!196037 () Bool)

(assert (=> b!1176088 (= c!196037 (<= from!787 0))))

(declare-fun bm!82426 () Bool)

(assert (=> bm!82426 (= call!82431 (size!9196 lt!405302))))

(declare-fun b!1176089 () Bool)

(assert (=> b!1176089 (= e!754676 (- call!82431 from!787))))

(declare-fun b!1176090 () Bool)

(assert (=> b!1176090 (= e!754680 call!82431)))

(declare-fun b!1176091 () Bool)

(assert (=> b!1176091 (= e!754677 Nil!11634)))

(declare-fun b!1176092 () Bool)

(assert (=> b!1176092 (= e!754678 (drop!501 (t!111122 lt!405302) (- from!787 1)))))

(declare-fun b!1176093 () Bool)

(assert (=> b!1176093 (= e!754678 lt!405302)))

(declare-fun d!336929 () Bool)

(assert (=> d!336929 e!754679))

(declare-fun res!531734 () Bool)

(assert (=> d!336929 (=> (not res!531734) (not e!754679))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1622 (List!11658) (InoxSet Token!3720))

(assert (=> d!336929 (= res!531734 (= ((_ map implies) (content!1622 lt!405386) (content!1622 lt!405302)) ((as const (InoxSet Token!3720)) true)))))

(assert (=> d!336929 (= lt!405386 e!754677)))

(declare-fun c!196036 () Bool)

(assert (=> d!336929 (= c!196036 ((_ is Nil!11634) lt!405302))))

(assert (=> d!336929 (= (drop!501 lt!405302 from!787) lt!405386)))

(declare-fun b!1176094 () Bool)

(assert (=> b!1176094 (= e!754676 0)))

(assert (= (and d!336929 c!196036) b!1176091))

(assert (= (and d!336929 (not c!196036)) b!1176087))

(assert (= (and b!1176087 c!196039) b!1176093))

(assert (= (and b!1176087 (not c!196039)) b!1176092))

(assert (= (and d!336929 res!531734) b!1176088))

(assert (= (and b!1176088 c!196037) b!1176090))

(assert (= (and b!1176088 (not c!196037)) b!1176086))

(assert (= (and b!1176086 c!196038) b!1176094))

(assert (= (and b!1176086 (not c!196038)) b!1176089))

(assert (= (or b!1176090 b!1176086 b!1176089) bm!82426))

(declare-fun m!1353091 () Bool)

(assert (=> b!1176088 m!1353091))

(assert (=> bm!82426 m!1352939))

(declare-fun m!1353093 () Bool)

(assert (=> b!1176092 m!1353093))

(declare-fun m!1353095 () Bool)

(assert (=> d!336929 m!1353095))

(declare-fun m!1353097 () Bool)

(assert (=> d!336929 m!1353097))

(assert (=> b!1175920 d!336929))

(declare-fun d!336931 () Bool)

(declare-fun res!531735 () Bool)

(declare-fun e!754681 () Bool)

(assert (=> d!336931 (=> res!531735 e!754681)))

(assert (=> d!336931 (= res!531735 ((_ is Nil!11634) lt!405307))))

(assert (=> d!336931 (= (forall!3094 lt!405307 lambda!48501) e!754681)))

(declare-fun b!1176095 () Bool)

(declare-fun e!754682 () Bool)

(assert (=> b!1176095 (= e!754681 e!754682)))

(declare-fun res!531736 () Bool)

(assert (=> b!1176095 (=> (not res!531736) (not e!754682))))

(assert (=> b!1176095 (= res!531736 (dynLambda!5160 lambda!48501 (h!17035 lt!405307)))))

(declare-fun b!1176096 () Bool)

(assert (=> b!1176096 (= e!754682 (forall!3094 (t!111122 lt!405307) lambda!48501))))

(assert (= (and d!336931 (not res!531735)) b!1176095))

(assert (= (and b!1176095 res!531736) b!1176096))

(declare-fun b_lambda!35169 () Bool)

(assert (=> (not b_lambda!35169) (not b!1176095)))

(declare-fun m!1353099 () Bool)

(assert (=> b!1176095 m!1353099))

(declare-fun m!1353101 () Bool)

(assert (=> b!1176096 m!1353101))

(assert (=> b!1175920 d!336931))

(declare-fun d!336933 () Bool)

(declare-fun res!531737 () Bool)

(declare-fun e!754683 () Bool)

(assert (=> d!336933 (=> res!531737 e!754683)))

(assert (=> d!336933 (= res!531737 ((_ is Nil!11634) lt!405296))))

(assert (=> d!336933 (= (forall!3094 lt!405296 lambda!48501) e!754683)))

(declare-fun b!1176097 () Bool)

(declare-fun e!754684 () Bool)

(assert (=> b!1176097 (= e!754683 e!754684)))

(declare-fun res!531738 () Bool)

(assert (=> b!1176097 (=> (not res!531738) (not e!754684))))

(assert (=> b!1176097 (= res!531738 (dynLambda!5160 lambda!48501 (h!17035 lt!405296)))))

(declare-fun b!1176098 () Bool)

(assert (=> b!1176098 (= e!754684 (forall!3094 (t!111122 lt!405296) lambda!48501))))

(assert (= (and d!336933 (not res!531737)) b!1176097))

(assert (= (and b!1176097 res!531738) b!1176098))

(declare-fun b_lambda!35171 () Bool)

(assert (=> (not b_lambda!35171) (not b!1176097)))

(declare-fun m!1353103 () Bool)

(assert (=> b!1176097 m!1353103))

(declare-fun m!1353105 () Bool)

(assert (=> b!1176098 m!1353105))

(assert (=> b!1175920 d!336933))

(declare-fun bs!286540 () Bool)

(declare-fun b!1176178 () Bool)

(assert (= bs!286540 (and b!1176178 b!1175910)))

(declare-fun lambda!48519 () Int)

(assert (=> bs!286540 (= lambda!48519 lambda!48501)))

(declare-fun bs!286541 () Bool)

(assert (= bs!286541 (and b!1176178 d!336899)))

(assert (=> bs!286541 (= lambda!48519 lambda!48508)))

(declare-fun b!1176182 () Bool)

(declare-fun e!754747 () Bool)

(assert (=> b!1176182 (= e!754747 true)))

(declare-fun b!1176181 () Bool)

(declare-fun e!754746 () Bool)

(assert (=> b!1176181 (= e!754746 e!754747)))

(declare-fun b!1176180 () Bool)

(declare-fun e!754745 () Bool)

(assert (=> b!1176180 (= e!754745 e!754746)))

(assert (=> b!1176178 e!754745))

(assert (= b!1176181 b!1176182))

(assert (= b!1176180 b!1176181))

(assert (= (and b!1176178 ((_ is Cons!11635) (rules!9714 thiss!10527))) b!1176180))

(assert (=> b!1176182 (< (dynLambda!5162 order!7173 (toValue!3130 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48519))))

(assert (=> b!1176182 (< (dynLambda!5164 order!7177 (toChars!2989 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48519))))

(declare-fun b!1176177 () Bool)

(declare-fun e!754741 () Bool)

(declare-fun lt!405431 () List!11658)

(assert (=> b!1176177 (= e!754741 (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) (t!111122 lt!405431)))))

(declare-fun d!336935 () Bool)

(declare-fun e!754742 () Bool)

(assert (=> d!336935 e!754742))

(declare-fun res!531773 () Bool)

(assert (=> d!336935 (=> (not res!531773) (not e!754742))))

(declare-fun e!754743 () Bool)

(assert (=> d!336935 (= res!531773 (= (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) (drop!501 lt!405302 from!787)) e!754743))))

(declare-fun res!531771 () Bool)

(assert (=> d!336935 (=> res!531771 e!754743)))

(assert (=> d!336935 (= res!531771 (not ((_ is Cons!11634) lt!405431)))))

(assert (=> d!336935 (= lt!405431 (drop!501 lt!405302 from!787))))

(declare-fun lt!405428 () Unit!17958)

(declare-fun choose!7620 (LexerInterface!1724 List!11658 Int List!11659) Unit!17958)

(assert (=> d!336935 (= lt!405428 (choose!7620 Lexer!1722 lt!405302 from!787 (rules!9714 thiss!10527)))))

(assert (=> d!336935 (not (isEmpty!7057 (rules!9714 thiss!10527)))))

(assert (=> d!336935 (= (tokensListTwoByTwoPredicateSeparableTokensDropList!54 Lexer!1722 lt!405302 from!787 (rules!9714 thiss!10527)) lt!405428)))

(declare-fun b!1176176 () Bool)

(assert (=> b!1176176 (= e!754743 e!754741)))

(declare-fun res!531774 () Bool)

(assert (=> b!1176176 (=> (not res!531774) (not e!754741))))

(assert (=> b!1176176 (= res!531774 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 lt!405431)))))

(declare-fun b!1176179 () Bool)

(declare-fun e!754744 () Bool)

(declare-fun lt!405429 () List!11658)

(assert (=> b!1176179 (= e!754744 (subseq!279 lt!405429 lt!405302))))

(assert (=> b!1176178 (= e!754742 (tokensListTwoByTwoPredicateSeparableList!120 Lexer!1722 (drop!501 lt!405302 from!787) (rules!9714 thiss!10527)))))

(declare-fun lt!405433 () Unit!17958)

(declare-fun lt!405434 () Unit!17958)

(assert (=> b!1176178 (= lt!405433 lt!405434)))

(assert (=> b!1176178 (forall!3094 lt!405429 lambda!48519)))

(assert (=> b!1176178 (= lt!405434 (lemmaForallSubseq!167 lt!405429 lt!405302 lambda!48519))))

(assert (=> b!1176178 e!754744))

(declare-fun res!531772 () Bool)

(assert (=> b!1176178 (=> (not res!531772) (not e!754744))))

(assert (=> b!1176178 (= res!531772 (forall!3094 lt!405302 lambda!48519))))

(assert (=> b!1176178 (= lt!405429 (drop!501 lt!405302 from!787))))

(declare-fun lt!405430 () Unit!17958)

(declare-fun lt!405432 () Unit!17958)

(assert (=> b!1176178 (= lt!405430 lt!405432)))

(assert (=> b!1176178 (subseq!279 (drop!501 lt!405302 from!787) lt!405302)))

(assert (=> b!1176178 (= lt!405432 (lemmaDropSubseq!54 lt!405302 from!787))))

(assert (= (and d!336935 (not res!531771)) b!1176176))

(assert (= (and b!1176176 res!531774) b!1176177))

(assert (= (and d!336935 res!531773) b!1176178))

(assert (= (and b!1176178 res!531772) b!1176179))

(declare-fun m!1353217 () Bool)

(assert (=> b!1176177 m!1353217))

(declare-fun m!1353219 () Bool)

(assert (=> b!1176179 m!1353219))

(assert (=> d!336935 m!1352875))

(assert (=> d!336935 m!1352875))

(declare-fun m!1353221 () Bool)

(assert (=> d!336935 m!1353221))

(declare-fun m!1353223 () Bool)

(assert (=> d!336935 m!1353223))

(assert (=> d!336935 m!1353007))

(declare-fun m!1353225 () Bool)

(assert (=> b!1176176 m!1353225))

(assert (=> b!1176178 m!1352875))

(declare-fun m!1353227 () Bool)

(assert (=> b!1176178 m!1353227))

(assert (=> b!1176178 m!1352869))

(declare-fun m!1353229 () Bool)

(assert (=> b!1176178 m!1353229))

(declare-fun m!1353231 () Bool)

(assert (=> b!1176178 m!1353231))

(assert (=> b!1176178 m!1352875))

(declare-fun m!1353233 () Bool)

(assert (=> b!1176178 m!1353233))

(assert (=> b!1176178 m!1352875))

(declare-fun m!1353235 () Bool)

(assert (=> b!1176178 m!1353235))

(assert (=> b!1175920 d!336935))

(declare-fun d!336969 () Bool)

(declare-fun res!531775 () Bool)

(declare-fun e!754749 () Bool)

(assert (=> d!336969 (=> res!531775 e!754749)))

(assert (=> d!336969 (= res!531775 ((_ is Nil!11634) lt!405296))))

(assert (=> d!336969 (= (subseq!279 lt!405296 lt!405302) e!754749)))

(declare-fun b!1176186 () Bool)

(declare-fun e!754751 () Bool)

(assert (=> b!1176186 (= e!754751 (subseq!279 lt!405296 (t!111122 lt!405302)))))

(declare-fun b!1176185 () Bool)

(declare-fun e!754750 () Bool)

(assert (=> b!1176185 (= e!754750 (subseq!279 (t!111122 lt!405296) (t!111122 lt!405302)))))

(declare-fun b!1176184 () Bool)

(declare-fun e!754748 () Bool)

(assert (=> b!1176184 (= e!754748 e!754751)))

(declare-fun res!531776 () Bool)

(assert (=> b!1176184 (=> res!531776 e!754751)))

(assert (=> b!1176184 (= res!531776 e!754750)))

(declare-fun res!531778 () Bool)

(assert (=> b!1176184 (=> (not res!531778) (not e!754750))))

(assert (=> b!1176184 (= res!531778 (= (h!17035 lt!405296) (h!17035 lt!405302)))))

(declare-fun b!1176183 () Bool)

(assert (=> b!1176183 (= e!754749 e!754748)))

(declare-fun res!531777 () Bool)

(assert (=> b!1176183 (=> (not res!531777) (not e!754748))))

(assert (=> b!1176183 (= res!531777 ((_ is Cons!11634) lt!405302))))

(assert (= (and d!336969 (not res!531775)) b!1176183))

(assert (= (and b!1176183 res!531777) b!1176184))

(assert (= (and b!1176184 res!531778) b!1176185))

(assert (= (and b!1176184 (not res!531776)) b!1176186))

(declare-fun m!1353237 () Bool)

(assert (=> b!1176186 m!1353237))

(declare-fun m!1353239 () Bool)

(assert (=> b!1176185 m!1353239))

(assert (=> b!1175920 d!336969))

(declare-fun d!336971 () Bool)

(assert (=> d!336971 (forall!3094 lt!405307 lambda!48501)))

(declare-fun lt!405435 () Unit!17958)

(assert (=> d!336971 (= lt!405435 (choose!7617 lt!405307 lt!405296 lambda!48501))))

(assert (=> d!336971 (forall!3094 lt!405296 lambda!48501)))

(assert (=> d!336971 (= (lemmaForallSubseq!167 lt!405307 lt!405296 lambda!48501) lt!405435)))

(declare-fun bs!286542 () Bool)

(assert (= bs!286542 d!336971))

(assert (=> bs!286542 m!1352871))

(declare-fun m!1353241 () Bool)

(assert (=> bs!286542 m!1353241))

(assert (=> bs!286542 m!1352867))

(assert (=> b!1175920 d!336971))

(declare-fun bs!286543 () Bool)

(declare-fun d!336973 () Bool)

(assert (= bs!286543 (and d!336973 b!1175910)))

(declare-fun lambda!48520 () Int)

(assert (=> bs!286543 (= lambda!48520 lambda!48501)))

(declare-fun bs!286544 () Bool)

(assert (= bs!286544 (and d!336973 d!336899)))

(assert (=> bs!286544 (= lambda!48520 lambda!48508)))

(declare-fun bs!286545 () Bool)

(assert (= bs!286545 (and d!336973 b!1176178)))

(assert (=> bs!286545 (= lambda!48520 lambda!48519)))

(declare-fun b!1176191 () Bool)

(declare-fun e!754756 () Bool)

(assert (=> b!1176191 (= e!754756 true)))

(declare-fun b!1176190 () Bool)

(declare-fun e!754755 () Bool)

(assert (=> b!1176190 (= e!754755 e!754756)))

(declare-fun b!1176189 () Bool)

(declare-fun e!754754 () Bool)

(assert (=> b!1176189 (= e!754754 e!754755)))

(assert (=> d!336973 e!754754))

(assert (= b!1176190 b!1176191))

(assert (= b!1176189 b!1176190))

(assert (= (and d!336973 ((_ is Cons!11635) (rules!9714 thiss!10527))) b!1176189))

(assert (=> b!1176191 (< (dynLambda!5162 order!7173 (toValue!3130 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48520))))

(assert (=> b!1176191 (< (dynLambda!5164 order!7177 (toChars!2989 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48520))))

(assert (=> d!336973 true))

(declare-fun lt!405436 () Bool)

(assert (=> d!336973 (= lt!405436 (forall!3094 lt!405296 lambda!48520))))

(declare-fun e!754752 () Bool)

(assert (=> d!336973 (= lt!405436 e!754752)))

(declare-fun res!531779 () Bool)

(assert (=> d!336973 (=> res!531779 e!754752)))

(assert (=> d!336973 (= res!531779 (not ((_ is Cons!11634) lt!405296)))))

(assert (=> d!336973 (not (isEmpty!7057 (rules!9714 thiss!10527)))))

(assert (=> d!336973 (= (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) lt!405296) lt!405436)))

(declare-fun b!1176187 () Bool)

(declare-fun e!754753 () Bool)

(assert (=> b!1176187 (= e!754752 e!754753)))

(declare-fun res!531780 () Bool)

(assert (=> b!1176187 (=> (not res!531780) (not e!754753))))

(assert (=> b!1176187 (= res!531780 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 lt!405296)))))

(declare-fun b!1176188 () Bool)

(assert (=> b!1176188 (= e!754753 (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) (t!111122 lt!405296)))))

(assert (= (and d!336973 (not res!531779)) b!1176187))

(assert (= (and b!1176187 res!531780) b!1176188))

(declare-fun m!1353243 () Bool)

(assert (=> d!336973 m!1353243))

(assert (=> d!336973 m!1353007))

(assert (=> b!1176187 m!1352859))

(assert (=> b!1176188 m!1352857))

(assert (=> b!1175920 d!336973))

(declare-fun d!336975 () Bool)

(assert (=> d!336975 (subseq!279 (drop!501 lt!405302 from!787) lt!405302)))

(declare-fun lt!405439 () Unit!17958)

(declare-fun choose!7622 (List!11658 Int) Unit!17958)

(assert (=> d!336975 (= lt!405439 (choose!7622 lt!405302 from!787))))

(assert (=> d!336975 (= (lemmaDropSubseq!54 lt!405302 from!787) lt!405439)))

(declare-fun bs!286546 () Bool)

(assert (= bs!286546 d!336975))

(assert (=> bs!286546 m!1352875))

(assert (=> bs!286546 m!1352875))

(assert (=> bs!286546 m!1353227))

(declare-fun m!1353245 () Bool)

(assert (=> bs!286546 m!1353245))

(assert (=> b!1175920 d!336975))

(declare-fun bs!286549 () Bool)

(declare-fun b!1176217 () Bool)

(assert (= bs!286549 (and b!1176217 b!1175910)))

(declare-fun lambda!48523 () Int)

(assert (=> bs!286549 (= lambda!48523 lambda!48501)))

(declare-fun bs!286550 () Bool)

(assert (= bs!286550 (and b!1176217 d!336899)))

(assert (=> bs!286550 (= lambda!48523 lambda!48508)))

(declare-fun bs!286551 () Bool)

(assert (= bs!286551 (and b!1176217 b!1176178)))

(assert (=> bs!286551 (= lambda!48523 lambda!48519)))

(declare-fun bs!286552 () Bool)

(assert (= bs!286552 (and b!1176217 d!336973)))

(assert (=> bs!286552 (= lambda!48523 lambda!48520)))

(declare-fun b!1176221 () Bool)

(declare-fun e!754782 () Bool)

(assert (=> b!1176221 (= e!754782 true)))

(declare-fun b!1176220 () Bool)

(declare-fun e!754781 () Bool)

(assert (=> b!1176220 (= e!754781 e!754782)))

(declare-fun b!1176219 () Bool)

(declare-fun e!754780 () Bool)

(assert (=> b!1176219 (= e!754780 e!754781)))

(assert (=> b!1176217 e!754780))

(assert (= b!1176220 b!1176221))

(assert (= b!1176219 b!1176220))

(assert (= (and b!1176217 ((_ is Cons!11635) (rules!9714 thiss!10527))) b!1176219))

(assert (=> b!1176221 (< (dynLambda!5162 order!7173 (toValue!3130 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48523))))

(assert (=> b!1176221 (< (dynLambda!5164 order!7177 (toChars!2989 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48523))))

(declare-fun b!1176215 () Bool)

(declare-fun e!754777 () Bool)

(declare-fun e!754776 () Bool)

(assert (=> b!1176215 (= e!754777 e!754776)))

(declare-fun res!531797 () Bool)

(assert (=> b!1176215 (=> (not res!531797) (not e!754776))))

(declare-fun lt!405464 () List!11658)

(assert (=> b!1176215 (= res!531797 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 lt!405464)))))

(declare-fun e!754778 () Bool)

(assert (=> b!1176217 (= e!754778 (tokensListTwoByTwoPredicateSeparableList!120 Lexer!1722 (take!89 lt!405296 (- to!267 from!787)) (rules!9714 thiss!10527)))))

(declare-fun lt!405461 () Unit!17958)

(declare-fun lt!405463 () Unit!17958)

(assert (=> b!1176217 (= lt!405461 lt!405463)))

(declare-fun lt!405462 () List!11658)

(assert (=> b!1176217 (forall!3094 lt!405462 lambda!48523)))

(assert (=> b!1176217 (= lt!405463 (lemmaForallSubseq!167 lt!405462 lt!405296 lambda!48523))))

(declare-fun e!754779 () Bool)

(assert (=> b!1176217 e!754779))

(declare-fun res!531799 () Bool)

(assert (=> b!1176217 (=> (not res!531799) (not e!754779))))

(assert (=> b!1176217 (= res!531799 (forall!3094 lt!405296 lambda!48523))))

(assert (=> b!1176217 (= lt!405462 (take!89 lt!405296 (- to!267 from!787)))))

(declare-fun d!336977 () Bool)

(assert (=> d!336977 e!754778))

(declare-fun res!531796 () Bool)

(assert (=> d!336977 (=> (not res!531796) (not e!754778))))

(assert (=> d!336977 (= res!531796 (= (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) (take!89 lt!405296 (- to!267 from!787))) e!754777))))

(declare-fun res!531798 () Bool)

(assert (=> d!336977 (=> res!531798 e!754777)))

(assert (=> d!336977 (= res!531798 (not ((_ is Cons!11634) lt!405464)))))

(assert (=> d!336977 (= lt!405464 (take!89 lt!405296 (- to!267 from!787)))))

(declare-fun lt!405460 () Unit!17958)

(declare-fun choose!7623 (LexerInterface!1724 List!11658 Int List!11659) Unit!17958)

(assert (=> d!336977 (= lt!405460 (choose!7623 Lexer!1722 lt!405296 (- to!267 from!787) (rules!9714 thiss!10527)))))

(assert (=> d!336977 (not (isEmpty!7057 (rules!9714 thiss!10527)))))

(assert (=> d!336977 (= (tokensListTwoByTwoPredicateSeparableTokensTakeList!40 Lexer!1722 lt!405296 (- to!267 from!787) (rules!9714 thiss!10527)) lt!405460)))

(declare-fun b!1176216 () Bool)

(assert (=> b!1176216 (= e!754776 (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) (t!111122 lt!405464)))))

(declare-fun b!1176218 () Bool)

(assert (=> b!1176218 (= e!754779 (subseq!279 lt!405462 lt!405296))))

(assert (= (and d!336977 (not res!531798)) b!1176215))

(assert (= (and b!1176215 res!531797) b!1176216))

(assert (= (and d!336977 res!531796) b!1176217))

(assert (= (and b!1176217 res!531799) b!1176218))

(assert (=> d!336977 m!1352889))

(assert (=> d!336977 m!1352889))

(declare-fun m!1353275 () Bool)

(assert (=> d!336977 m!1353275))

(declare-fun m!1353277 () Bool)

(assert (=> d!336977 m!1353277))

(assert (=> d!336977 m!1353007))

(assert (=> b!1176217 m!1352889))

(declare-fun m!1353279 () Bool)

(assert (=> b!1176217 m!1353279))

(assert (=> b!1176217 m!1352889))

(declare-fun m!1353281 () Bool)

(assert (=> b!1176217 m!1353281))

(declare-fun m!1353283 () Bool)

(assert (=> b!1176217 m!1353283))

(declare-fun m!1353285 () Bool)

(assert (=> b!1176217 m!1353285))

(declare-fun m!1353287 () Bool)

(assert (=> b!1176215 m!1353287))

(declare-fun m!1353289 () Bool)

(assert (=> b!1176216 m!1353289))

(declare-fun m!1353291 () Bool)

(assert (=> b!1176218 m!1353291))

(assert (=> b!1175920 d!336977))

(declare-fun d!336989 () Bool)

(declare-fun lt!405628 () Bool)

(declare-fun dropList!335 (BalanceConc!7664 Int) List!11658)

(assert (=> d!336989 (= lt!405628 (tokensListTwoByTwoPredicateSeparableList!120 Lexer!1722 (dropList!335 lt!405295 0) (rules!9714 thiss!10527)))))

(declare-fun lt!405623 () Unit!17958)

(declare-fun lt!405614 () Unit!17958)

(assert (=> d!336989 (= lt!405623 lt!405614)))

(declare-fun lt!405633 () List!11658)

(assert (=> d!336989 (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) lt!405633)))

(declare-fun lt!405634 () List!11658)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!41 (LexerInterface!1724 List!11659 List!11658 List!11658) Unit!17958)

(assert (=> d!336989 (= lt!405614 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!41 Lexer!1722 (rules!9714 thiss!10527) lt!405634 lt!405633))))

(declare-fun e!754819 () Bool)

(assert (=> d!336989 e!754819))

(declare-fun res!531847 () Bool)

(assert (=> d!336989 (=> (not res!531847) (not e!754819))))

(assert (=> d!336989 (= res!531847 ((_ is Lexer!1722) Lexer!1722))))

(assert (=> d!336989 (= lt!405633 (dropList!335 lt!405295 0))))

(assert (=> d!336989 (= lt!405634 (list!4302 lt!405295))))

(declare-fun lt!405621 () Unit!17958)

(declare-fun lt!405618 () Unit!17958)

(assert (=> d!336989 (= lt!405621 lt!405618)))

(declare-fun lt!405637 () List!11658)

(assert (=> d!336989 (subseq!279 (drop!501 lt!405637 0) lt!405637)))

(declare-fun lemmaDropSubSeq!41 (List!11658 Int) Unit!17958)

(assert (=> d!336989 (= lt!405618 (lemmaDropSubSeq!41 lt!405637 0))))

(declare-fun e!754818 () Bool)

(assert (=> d!336989 e!754818))

(declare-fun res!531843 () Bool)

(assert (=> d!336989 (=> (not res!531843) (not e!754818))))

(assert (=> d!336989 (= res!531843 (>= 0 0))))

(assert (=> d!336989 (= lt!405637 (list!4302 lt!405295))))

(declare-fun e!754816 () Bool)

(assert (=> d!336989 (= lt!405628 e!754816)))

(declare-fun res!531846 () Bool)

(assert (=> d!336989 (=> res!531846 e!754816)))

(assert (=> d!336989 (= res!531846 (not (< 0 (- (size!9192 lt!405295) 1))))))

(declare-fun e!754820 () Bool)

(assert (=> d!336989 e!754820))

(declare-fun res!531841 () Bool)

(assert (=> d!336989 (=> (not res!531841) (not e!754820))))

(assert (=> d!336989 (= res!531841 (>= 0 0))))

(assert (=> d!336989 (= (tokensListTwoByTwoPredicateSeparable!85 Lexer!1722 lt!405295 0 (rules!9714 thiss!10527)) lt!405628)))

(declare-fun b!1176272 () Bool)

(declare-fun res!531844 () Bool)

(assert (=> b!1176272 (=> (not res!531844) (not e!754819))))

(assert (=> b!1176272 (= res!531844 (subseq!279 lt!405633 lt!405634))))

(declare-fun b!1176273 () Bool)

(assert (=> b!1176273 (= e!754820 (<= 0 (size!9192 lt!405295)))))

(declare-fun b!1176274 () Bool)

(declare-fun res!531845 () Bool)

(assert (=> b!1176274 (=> (not res!531845) (not e!754819))))

(assert (=> b!1176274 (= res!531845 (not (isEmpty!7057 (rules!9714 thiss!10527))))))

(declare-fun b!1176275 () Bool)

(declare-fun e!754817 () Bool)

(assert (=> b!1176275 (= e!754817 (tokensListTwoByTwoPredicateSeparable!85 Lexer!1722 lt!405295 (+ 0 1) (rules!9714 thiss!10527)))))

(declare-fun b!1176276 () Bool)

(declare-fun res!531840 () Bool)

(assert (=> b!1176276 (=> (not res!531840) (not e!754819))))

(assert (=> b!1176276 (= res!531840 (rulesInvariant!1598 Lexer!1722 (rules!9714 thiss!10527)))))

(declare-fun b!1176277 () Bool)

(assert (=> b!1176277 (= e!754819 (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) lt!405634))))

(declare-fun b!1176278 () Bool)

(assert (=> b!1176278 (= e!754816 e!754817)))

(declare-fun res!531842 () Bool)

(assert (=> b!1176278 (=> (not res!531842) (not e!754817))))

(assert (=> b!1176278 (= res!531842 (separableTokensPredicate!146 Lexer!1722 (apply!2555 lt!405295 0) (apply!2555 lt!405295 (+ 0 1)) (rules!9714 thiss!10527)))))

(declare-fun lt!405622 () Unit!17958)

(declare-fun Unit!17967 () Unit!17958)

(assert (=> b!1176278 (= lt!405622 Unit!17967)))

(assert (=> b!1176278 (> (size!9193 (charsOf!1084 (apply!2555 lt!405295 (+ 0 1)))) 0)))

(declare-fun lt!405632 () Unit!17958)

(declare-fun Unit!17968 () Unit!17958)

(assert (=> b!1176278 (= lt!405632 Unit!17968)))

(assert (=> b!1176278 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (apply!2555 lt!405295 (+ 0 1)))))

(declare-fun lt!405626 () Unit!17958)

(declare-fun Unit!17969 () Unit!17958)

(assert (=> b!1176278 (= lt!405626 Unit!17969)))

(assert (=> b!1176278 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (apply!2555 lt!405295 0))))

(declare-fun lt!405608 () Unit!17958)

(declare-fun lt!405638 () Unit!17958)

(assert (=> b!1176278 (= lt!405608 lt!405638)))

(declare-fun lt!405619 () Token!3720)

(assert (=> b!1176278 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) lt!405619)))

(declare-fun lt!405635 () List!11658)

(assert (=> b!1176278 (= lt!405638 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!305 Lexer!1722 (rules!9714 thiss!10527) lt!405635 lt!405619))))

(assert (=> b!1176278 (= lt!405619 (apply!2555 lt!405295 (+ 0 1)))))

(assert (=> b!1176278 (= lt!405635 (list!4302 lt!405295))))

(declare-fun lt!405625 () Unit!17958)

(declare-fun lt!405617 () Unit!17958)

(assert (=> b!1176278 (= lt!405625 lt!405617)))

(declare-fun lt!405607 () Token!3720)

(assert (=> b!1176278 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) lt!405607)))

(declare-fun lt!405616 () List!11658)

(assert (=> b!1176278 (= lt!405617 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!305 Lexer!1722 (rules!9714 thiss!10527) lt!405616 lt!405607))))

(assert (=> b!1176278 (= lt!405607 (apply!2555 lt!405295 0))))

(assert (=> b!1176278 (= lt!405616 (list!4302 lt!405295))))

(declare-fun lt!405624 () Unit!17958)

(declare-fun lt!405606 () Unit!17958)

(assert (=> b!1176278 (= lt!405624 lt!405606)))

(declare-fun lt!405610 () List!11658)

(declare-fun lt!405609 () Int)

(assert (=> b!1176278 (= (tail!1702 (drop!501 lt!405610 lt!405609)) (drop!501 lt!405610 (+ lt!405609 1)))))

(assert (=> b!1176278 (= lt!405606 (lemmaDropTail!375 lt!405610 lt!405609))))

(assert (=> b!1176278 (= lt!405609 (+ 0 1))))

(assert (=> b!1176278 (= lt!405610 (list!4302 lt!405295))))

(declare-fun lt!405631 () Unit!17958)

(declare-fun lt!405620 () Unit!17958)

(assert (=> b!1176278 (= lt!405631 lt!405620)))

(declare-fun lt!405629 () List!11658)

(assert (=> b!1176278 (= (tail!1702 (drop!501 lt!405629 0)) (drop!501 lt!405629 (+ 0 1)))))

(assert (=> b!1176278 (= lt!405620 (lemmaDropTail!375 lt!405629 0))))

(assert (=> b!1176278 (= lt!405629 (list!4302 lt!405295))))

(declare-fun lt!405615 () Unit!17958)

(declare-fun lt!405630 () Unit!17958)

(assert (=> b!1176278 (= lt!405615 lt!405630)))

(declare-fun lt!405636 () List!11658)

(declare-fun lt!405613 () Int)

(assert (=> b!1176278 (= (head!2118 (drop!501 lt!405636 lt!405613)) (apply!2556 lt!405636 lt!405613))))

(assert (=> b!1176278 (= lt!405630 (lemmaDropApply!387 lt!405636 lt!405613))))

(assert (=> b!1176278 (= lt!405613 (+ 0 1))))

(assert (=> b!1176278 (= lt!405636 (list!4302 lt!405295))))

(declare-fun lt!405611 () Unit!17958)

(declare-fun lt!405612 () Unit!17958)

(assert (=> b!1176278 (= lt!405611 lt!405612)))

(declare-fun lt!405627 () List!11658)

(assert (=> b!1176278 (= (head!2118 (drop!501 lt!405627 0)) (apply!2556 lt!405627 0))))

(assert (=> b!1176278 (= lt!405612 (lemmaDropApply!387 lt!405627 0))))

(assert (=> b!1176278 (= lt!405627 (list!4302 lt!405295))))

(declare-fun b!1176279 () Bool)

(assert (=> b!1176279 (= e!754818 (<= 0 (size!9196 lt!405637)))))

(assert (= (and d!336989 res!531841) b!1176273))

(assert (= (and d!336989 (not res!531846)) b!1176278))

(assert (= (and b!1176278 res!531842) b!1176275))

(assert (= (and d!336989 res!531843) b!1176279))

(assert (= (and d!336989 res!531847) b!1176274))

(assert (= (and b!1176274 res!531845) b!1176276))

(assert (= (and b!1176276 res!531840) b!1176272))

(assert (= (and b!1176272 res!531844) b!1176277))

(declare-fun m!1353325 () Bool)

(assert (=> b!1176277 m!1353325))

(declare-fun m!1353327 () Bool)

(assert (=> b!1176278 m!1353327))

(declare-fun m!1353329 () Bool)

(assert (=> b!1176278 m!1353329))

(declare-fun m!1353331 () Bool)

(assert (=> b!1176278 m!1353331))

(declare-fun m!1353333 () Bool)

(assert (=> b!1176278 m!1353333))

(declare-fun m!1353335 () Bool)

(assert (=> b!1176278 m!1353335))

(declare-fun m!1353337 () Bool)

(assert (=> b!1176278 m!1353337))

(declare-fun m!1353339 () Bool)

(assert (=> b!1176278 m!1353339))

(declare-fun m!1353341 () Bool)

(assert (=> b!1176278 m!1353341))

(declare-fun m!1353343 () Bool)

(assert (=> b!1176278 m!1353343))

(assert (=> b!1176278 m!1353339))

(assert (=> b!1176278 m!1353331))

(declare-fun m!1353345 () Bool)

(assert (=> b!1176278 m!1353345))

(declare-fun m!1353347 () Bool)

(assert (=> b!1176278 m!1353347))

(declare-fun m!1353349 () Bool)

(assert (=> b!1176278 m!1353349))

(assert (=> b!1176278 m!1353339))

(declare-fun m!1353351 () Bool)

(assert (=> b!1176278 m!1353351))

(declare-fun m!1353353 () Bool)

(assert (=> b!1176278 m!1353353))

(declare-fun m!1353355 () Bool)

(assert (=> b!1176278 m!1353355))

(declare-fun m!1353357 () Bool)

(assert (=> b!1176278 m!1353357))

(declare-fun m!1353359 () Bool)

(assert (=> b!1176278 m!1353359))

(declare-fun m!1353361 () Bool)

(assert (=> b!1176278 m!1353361))

(declare-fun m!1353363 () Bool)

(assert (=> b!1176278 m!1353363))

(assert (=> b!1176278 m!1353331))

(assert (=> b!1176278 m!1353353))

(assert (=> b!1176278 m!1353361))

(declare-fun m!1353365 () Bool)

(assert (=> b!1176278 m!1353365))

(declare-fun m!1353367 () Bool)

(assert (=> b!1176278 m!1353367))

(declare-fun m!1353369 () Bool)

(assert (=> b!1176278 m!1353369))

(declare-fun m!1353371 () Bool)

(assert (=> b!1176278 m!1353371))

(declare-fun m!1353373 () Bool)

(assert (=> b!1176278 m!1353373))

(assert (=> b!1176278 m!1352901))

(assert (=> b!1176278 m!1353331))

(assert (=> b!1176278 m!1353329))

(declare-fun m!1353375 () Bool)

(assert (=> b!1176278 m!1353375))

(assert (=> b!1176278 m!1353357))

(declare-fun m!1353377 () Bool)

(assert (=> b!1176278 m!1353377))

(assert (=> b!1176278 m!1353347))

(declare-fun m!1353379 () Bool)

(assert (=> b!1176278 m!1353379))

(assert (=> b!1176276 m!1352923))

(declare-fun m!1353381 () Bool)

(assert (=> b!1176273 m!1353381))

(declare-fun m!1353383 () Bool)

(assert (=> b!1176279 m!1353383))

(declare-fun m!1353385 () Bool)

(assert (=> b!1176272 m!1353385))

(assert (=> b!1176274 m!1353007))

(declare-fun m!1353387 () Bool)

(assert (=> d!336989 m!1353387))

(declare-fun m!1353389 () Bool)

(assert (=> d!336989 m!1353389))

(declare-fun m!1353391 () Bool)

(assert (=> d!336989 m!1353391))

(declare-fun m!1353393 () Bool)

(assert (=> d!336989 m!1353393))

(declare-fun m!1353395 () Bool)

(assert (=> d!336989 m!1353395))

(assert (=> d!336989 m!1352901))

(assert (=> d!336989 m!1353381))

(assert (=> d!336989 m!1353389))

(assert (=> d!336989 m!1353387))

(declare-fun m!1353397 () Bool)

(assert (=> d!336989 m!1353397))

(declare-fun m!1353399 () Bool)

(assert (=> d!336989 m!1353399))

(declare-fun m!1353401 () Bool)

(assert (=> b!1176275 m!1353401))

(assert (=> b!1175920 d!336989))

(declare-fun d!337009 () Bool)

(assert (=> d!337009 (= (separableTokens!160 Lexer!1722 lt!405295 (rules!9714 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!85 Lexer!1722 lt!405295 0 (rules!9714 thiss!10527)))))

(declare-fun bs!286575 () Bool)

(assert (= bs!286575 d!337009))

(assert (=> bs!286575 m!1352887))

(assert (=> b!1175920 d!337009))

(declare-fun bs!286576 () Bool)

(declare-fun d!337045 () Bool)

(assert (= bs!286576 (and d!337045 d!336973)))

(declare-fun lambda!48526 () Int)

(assert (=> bs!286576 (= lambda!48526 lambda!48520)))

(declare-fun bs!286577 () Bool)

(assert (= bs!286577 (and d!337045 b!1176178)))

(assert (=> bs!286577 (= lambda!48526 lambda!48519)))

(declare-fun bs!286578 () Bool)

(assert (= bs!286578 (and d!337045 b!1176217)))

(assert (=> bs!286578 (= lambda!48526 lambda!48523)))

(declare-fun bs!286579 () Bool)

(assert (= bs!286579 (and d!337045 d!336899)))

(assert (=> bs!286579 (= lambda!48526 lambda!48508)))

(declare-fun bs!286580 () Bool)

(assert (= bs!286580 (and d!337045 b!1175910)))

(assert (=> bs!286580 (= lambda!48526 lambda!48501)))

(declare-fun b!1176349 () Bool)

(declare-fun e!754880 () Bool)

(assert (=> b!1176349 (= e!754880 true)))

(declare-fun b!1176348 () Bool)

(declare-fun e!754879 () Bool)

(assert (=> b!1176348 (= e!754879 e!754880)))

(declare-fun b!1176347 () Bool)

(declare-fun e!754878 () Bool)

(assert (=> b!1176347 (= e!754878 e!754879)))

(assert (=> d!337045 e!754878))

(assert (= b!1176348 b!1176349))

(assert (= b!1176347 b!1176348))

(assert (= (and d!337045 ((_ is Cons!11635) (rules!9714 thiss!10527))) b!1176347))

(assert (=> b!1176349 (< (dynLambda!5162 order!7173 (toValue!3130 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48526))))

(assert (=> b!1176349 (< (dynLambda!5164 order!7177 (toChars!2989 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48526))))

(assert (=> d!337045 true))

(declare-fun lt!405722 () Bool)

(assert (=> d!337045 (= lt!405722 (forall!3094 lt!405307 lambda!48526))))

(declare-fun e!754876 () Bool)

(assert (=> d!337045 (= lt!405722 e!754876)))

(declare-fun res!531907 () Bool)

(assert (=> d!337045 (=> res!531907 e!754876)))

(assert (=> d!337045 (= res!531907 (not ((_ is Cons!11634) lt!405307)))))

(assert (=> d!337045 (not (isEmpty!7057 (rules!9714 thiss!10527)))))

(assert (=> d!337045 (= (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) lt!405307) lt!405722)))

(declare-fun b!1176345 () Bool)

(declare-fun e!754877 () Bool)

(assert (=> b!1176345 (= e!754876 e!754877)))

(declare-fun res!531908 () Bool)

(assert (=> b!1176345 (=> (not res!531908) (not e!754877))))

(assert (=> b!1176345 (= res!531908 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 lt!405307)))))

(declare-fun b!1176346 () Bool)

(assert (=> b!1176346 (= e!754877 (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) (t!111122 lt!405307)))))

(assert (= (and d!337045 (not res!531907)) b!1176345))

(assert (= (and b!1176345 res!531908) b!1176346))

(declare-fun m!1353617 () Bool)

(assert (=> d!337045 m!1353617))

(assert (=> d!337045 m!1353007))

(assert (=> b!1176345 m!1352897))

(assert (=> b!1176346 m!1352861))

(assert (=> b!1175920 d!337045))

(declare-fun b!1176364 () Bool)

(declare-fun e!754892 () Bool)

(declare-fun lt!405725 () List!11658)

(declare-fun e!754891 () Int)

(assert (=> b!1176364 (= e!754892 (= (size!9196 lt!405725) e!754891))))

(declare-fun c!196075 () Bool)

(assert (=> b!1176364 (= c!196075 (<= (- to!267 from!787) 0))))

(declare-fun e!754889 () List!11658)

(declare-fun b!1176365 () Bool)

(assert (=> b!1176365 (= e!754889 (Cons!11634 (h!17035 lt!405296) (take!89 (t!111122 lt!405296) (- (- to!267 from!787) 1))))))

(declare-fun b!1176366 () Bool)

(declare-fun e!754890 () Int)

(assert (=> b!1176366 (= e!754891 e!754890)))

(declare-fun c!196076 () Bool)

(assert (=> b!1176366 (= c!196076 (>= (- to!267 from!787) (size!9196 lt!405296)))))

(declare-fun b!1176367 () Bool)

(assert (=> b!1176367 (= e!754890 (size!9196 lt!405296))))

(declare-fun d!337047 () Bool)

(assert (=> d!337047 e!754892))

(declare-fun res!531911 () Bool)

(assert (=> d!337047 (=> (not res!531911) (not e!754892))))

(assert (=> d!337047 (= res!531911 (= ((_ map implies) (content!1622 lt!405725) (content!1622 lt!405296)) ((as const (InoxSet Token!3720)) true)))))

(assert (=> d!337047 (= lt!405725 e!754889)))

(declare-fun c!196074 () Bool)

(assert (=> d!337047 (= c!196074 (or ((_ is Nil!11634) lt!405296) (<= (- to!267 from!787) 0)))))

(assert (=> d!337047 (= (take!89 lt!405296 (- to!267 from!787)) lt!405725)))

(declare-fun b!1176368 () Bool)

(assert (=> b!1176368 (= e!754889 Nil!11634)))

(declare-fun b!1176369 () Bool)

(assert (=> b!1176369 (= e!754890 (- to!267 from!787))))

(declare-fun b!1176370 () Bool)

(assert (=> b!1176370 (= e!754891 0)))

(assert (= (and d!337047 c!196074) b!1176368))

(assert (= (and d!337047 (not c!196074)) b!1176365))

(assert (= (and d!337047 res!531911) b!1176364))

(assert (= (and b!1176364 c!196075) b!1176370))

(assert (= (and b!1176364 (not c!196075)) b!1176366))

(assert (= (and b!1176366 c!196076) b!1176367))

(assert (= (and b!1176366 (not c!196076)) b!1176369))

(declare-fun m!1353619 () Bool)

(assert (=> b!1176365 m!1353619))

(declare-fun m!1353621 () Bool)

(assert (=> d!337047 m!1353621))

(declare-fun m!1353623 () Bool)

(assert (=> d!337047 m!1353623))

(declare-fun m!1353625 () Bool)

(assert (=> b!1176366 m!1353625))

(assert (=> b!1176367 m!1353625))

(declare-fun m!1353627 () Bool)

(assert (=> b!1176364 m!1353627))

(assert (=> b!1175920 d!337047))

(declare-fun bs!286581 () Bool)

(declare-fun d!337049 () Bool)

(assert (= bs!286581 (and d!337049 d!336973)))

(declare-fun lambda!48527 () Int)

(assert (=> bs!286581 (= lambda!48527 lambda!48520)))

(declare-fun bs!286582 () Bool)

(assert (= bs!286582 (and d!337049 b!1176178)))

(assert (=> bs!286582 (= lambda!48527 lambda!48519)))

(declare-fun bs!286583 () Bool)

(assert (= bs!286583 (and d!337049 b!1176217)))

(assert (=> bs!286583 (= lambda!48527 lambda!48523)))

(declare-fun bs!286584 () Bool)

(assert (= bs!286584 (and d!337049 d!337045)))

(assert (=> bs!286584 (= lambda!48527 lambda!48526)))

(declare-fun bs!286585 () Bool)

(assert (= bs!286585 (and d!337049 d!336899)))

(assert (=> bs!286585 (= lambda!48527 lambda!48508)))

(declare-fun bs!286586 () Bool)

(assert (= bs!286586 (and d!337049 b!1175910)))

(assert (=> bs!286586 (= lambda!48527 lambda!48501)))

(declare-fun b!1176375 () Bool)

(declare-fun e!754897 () Bool)

(assert (=> b!1176375 (= e!754897 true)))

(declare-fun b!1176374 () Bool)

(declare-fun e!754896 () Bool)

(assert (=> b!1176374 (= e!754896 e!754897)))

(declare-fun b!1176373 () Bool)

(declare-fun e!754895 () Bool)

(assert (=> b!1176373 (= e!754895 e!754896)))

(assert (=> d!337049 e!754895))

(assert (= b!1176374 b!1176375))

(assert (= b!1176373 b!1176374))

(assert (= (and d!337049 ((_ is Cons!11635) (rules!9714 thiss!10527))) b!1176373))

(assert (=> b!1176375 (< (dynLambda!5162 order!7173 (toValue!3130 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48527))))

(assert (=> b!1176375 (< (dynLambda!5164 order!7177 (toChars!2989 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48527))))

(assert (=> d!337049 true))

(declare-fun lt!405726 () Bool)

(assert (=> d!337049 (= lt!405726 (forall!3094 (t!111122 lt!405302) lambda!48527))))

(declare-fun e!754893 () Bool)

(assert (=> d!337049 (= lt!405726 e!754893)))

(declare-fun res!531912 () Bool)

(assert (=> d!337049 (=> res!531912 e!754893)))

(assert (=> d!337049 (= res!531912 (not ((_ is Cons!11634) (t!111122 lt!405302))))))

(assert (=> d!337049 (not (isEmpty!7057 (rules!9714 thiss!10527)))))

(assert (=> d!337049 (= (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) (t!111122 lt!405302)) lt!405726)))

(declare-fun b!1176371 () Bool)

(declare-fun e!754894 () Bool)

(assert (=> b!1176371 (= e!754893 e!754894)))

(declare-fun res!531913 () Bool)

(assert (=> b!1176371 (=> (not res!531913) (not e!754894))))

(assert (=> b!1176371 (= res!531913 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 (t!111122 lt!405302))))))

(declare-fun b!1176372 () Bool)

(assert (=> b!1176372 (= e!754894 (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) (t!111122 (t!111122 lt!405302))))))

(assert (= (and d!337049 (not res!531912)) b!1176371))

(assert (= (and b!1176371 res!531913) b!1176372))

(declare-fun m!1353629 () Bool)

(assert (=> d!337049 m!1353629))

(assert (=> d!337049 m!1353007))

(declare-fun m!1353631 () Bool)

(assert (=> b!1176371 m!1353631))

(declare-fun m!1353633 () Bool)

(assert (=> b!1176372 m!1353633))

(assert (=> b!1175919 d!337049))

(declare-fun d!337051 () Bool)

(assert (=> d!337051 (= (head!2118 (drop!501 lt!405302 1)) (apply!2556 lt!405302 1))))

(declare-fun lt!405729 () Unit!17958)

(declare-fun choose!7624 (List!11658 Int) Unit!17958)

(assert (=> d!337051 (= lt!405729 (choose!7624 lt!405302 1))))

(declare-fun e!754900 () Bool)

(assert (=> d!337051 e!754900))

(declare-fun res!531916 () Bool)

(assert (=> d!337051 (=> (not res!531916) (not e!754900))))

(assert (=> d!337051 (= res!531916 (>= 1 0))))

(assert (=> d!337051 (= (lemmaDropApply!387 lt!405302 1) lt!405729)))

(declare-fun b!1176378 () Bool)

(assert (=> b!1176378 (= e!754900 (< 1 (size!9196 lt!405302)))))

(assert (= (and d!337051 res!531916) b!1176378))

(assert (=> d!337051 m!1352811))

(assert (=> d!337051 m!1352811))

(declare-fun m!1353635 () Bool)

(assert (=> d!337051 m!1353635))

(assert (=> d!337051 m!1352823))

(declare-fun m!1353637 () Bool)

(assert (=> d!337051 m!1353637))

(assert (=> b!1176378 m!1352939))

(assert (=> b!1175918 d!337051))

(declare-fun d!337053 () Bool)

(assert (=> d!337053 (= (head!2118 lt!405311) (h!17035 lt!405311))))

(assert (=> b!1175918 d!337053))

(declare-fun d!337055 () Bool)

(declare-fun lt!405732 () Token!3720)

(declare-fun contains!2012 (List!11658 Token!3720) Bool)

(assert (=> d!337055 (contains!2012 lt!405302 lt!405732)))

(declare-fun e!754905 () Token!3720)

(assert (=> d!337055 (= lt!405732 e!754905)))

(declare-fun c!196079 () Bool)

(assert (=> d!337055 (= c!196079 (= 1 0))))

(declare-fun e!754906 () Bool)

(assert (=> d!337055 e!754906))

(declare-fun res!531919 () Bool)

(assert (=> d!337055 (=> (not res!531919) (not e!754906))))

(assert (=> d!337055 (= res!531919 (<= 0 1))))

(assert (=> d!337055 (= (apply!2556 lt!405302 1) lt!405732)))

(declare-fun b!1176385 () Bool)

(assert (=> b!1176385 (= e!754906 (< 1 (size!9196 lt!405302)))))

(declare-fun b!1176386 () Bool)

(assert (=> b!1176386 (= e!754905 (head!2118 lt!405302))))

(declare-fun b!1176387 () Bool)

(assert (=> b!1176387 (= e!754905 (apply!2556 (tail!1702 lt!405302) (- 1 1)))))

(assert (= (and d!337055 res!531919) b!1176385))

(assert (= (and d!337055 c!196079) b!1176386))

(assert (= (and d!337055 (not c!196079)) b!1176387))

(declare-fun m!1353639 () Bool)

(assert (=> d!337055 m!1353639))

(assert (=> b!1176385 m!1352939))

(declare-fun m!1353641 () Bool)

(assert (=> b!1176386 m!1353641))

(declare-fun m!1353643 () Bool)

(assert (=> b!1176387 m!1353643))

(assert (=> b!1176387 m!1353643))

(declare-fun m!1353645 () Bool)

(assert (=> b!1176387 m!1353645))

(assert (=> b!1175918 d!337055))

(declare-fun d!337057 () Bool)

(assert (=> d!337057 (= (tail!1702 lt!405311) (t!111122 lt!405311))))

(assert (=> b!1175918 d!337057))

(declare-fun d!337059 () Bool)

(assert (=> d!337059 (= (head!2118 lt!405317) (h!17035 lt!405317))))

(assert (=> b!1175918 d!337059))

(declare-fun d!337061 () Bool)

(declare-fun lt!405734 () Bool)

(declare-fun e!754908 () Bool)

(assert (=> d!337061 (= lt!405734 e!754908)))

(declare-fun res!531922 () Bool)

(assert (=> d!337061 (=> (not res!531922) (not e!754908))))

(assert (=> d!337061 (= res!531922 (= (list!4302 (_1!6881 (lex!722 Lexer!1722 (rules!9714 thiss!10527) (print!659 Lexer!1722 (singletonSeq!699 lt!405297))))) (list!4302 (singletonSeq!699 lt!405297))))))

(declare-fun e!754907 () Bool)

(assert (=> d!337061 (= lt!405734 e!754907)))

(declare-fun res!531920 () Bool)

(assert (=> d!337061 (=> (not res!531920) (not e!754907))))

(declare-fun lt!405733 () tuple2!12068)

(assert (=> d!337061 (= res!531920 (= (size!9192 (_1!6881 lt!405733)) 1))))

(assert (=> d!337061 (= lt!405733 (lex!722 Lexer!1722 (rules!9714 thiss!10527) (print!659 Lexer!1722 (singletonSeq!699 lt!405297))))))

(assert (=> d!337061 (not (isEmpty!7057 (rules!9714 thiss!10527)))))

(assert (=> d!337061 (= (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) lt!405297) lt!405734)))

(declare-fun b!1176388 () Bool)

(declare-fun res!531921 () Bool)

(assert (=> b!1176388 (=> (not res!531921) (not e!754907))))

(assert (=> b!1176388 (= res!531921 (= (apply!2555 (_1!6881 lt!405733) 0) lt!405297))))

(declare-fun b!1176389 () Bool)

(assert (=> b!1176389 (= e!754907 (isEmpty!7058 (_2!6881 lt!405733)))))

(declare-fun b!1176390 () Bool)

(assert (=> b!1176390 (= e!754908 (isEmpty!7058 (_2!6881 (lex!722 Lexer!1722 (rules!9714 thiss!10527) (print!659 Lexer!1722 (singletonSeq!699 lt!405297))))))))

(assert (= (and d!337061 res!531920) b!1176388))

(assert (= (and b!1176388 res!531921) b!1176389))

(assert (= (and d!337061 res!531922) b!1176390))

(declare-fun m!1353647 () Bool)

(assert (=> d!337061 m!1353647))

(declare-fun m!1353649 () Bool)

(assert (=> d!337061 m!1353649))

(declare-fun m!1353651 () Bool)

(assert (=> d!337061 m!1353651))

(assert (=> d!337061 m!1353007))

(declare-fun m!1353653 () Bool)

(assert (=> d!337061 m!1353653))

(assert (=> d!337061 m!1353647))

(declare-fun m!1353655 () Bool)

(assert (=> d!337061 m!1353655))

(assert (=> d!337061 m!1353647))

(assert (=> d!337061 m!1353655))

(declare-fun m!1353657 () Bool)

(assert (=> d!337061 m!1353657))

(declare-fun m!1353659 () Bool)

(assert (=> b!1176388 m!1353659))

(declare-fun m!1353661 () Bool)

(assert (=> b!1176389 m!1353661))

(assert (=> b!1176390 m!1353647))

(assert (=> b!1176390 m!1353647))

(assert (=> b!1176390 m!1353655))

(assert (=> b!1176390 m!1353655))

(assert (=> b!1176390 m!1353657))

(declare-fun m!1353663 () Bool)

(assert (=> b!1176390 m!1353663))

(assert (=> b!1175918 d!337061))

(declare-fun d!337063 () Bool)

(declare-fun lt!405737 () Token!3720)

(assert (=> d!337063 (= lt!405737 (apply!2556 (list!4302 (tokens!1682 thiss!10527)) 1))))

(declare-fun apply!2559 (Conc!3821 Int) Token!3720)

(assert (=> d!337063 (= lt!405737 (apply!2559 (c!196023 (tokens!1682 thiss!10527)) 1))))

(declare-fun e!754911 () Bool)

(assert (=> d!337063 e!754911))

(declare-fun res!531925 () Bool)

(assert (=> d!337063 (=> (not res!531925) (not e!754911))))

(assert (=> d!337063 (= res!531925 (<= 0 1))))

(assert (=> d!337063 (= (apply!2555 (tokens!1682 thiss!10527) 1) lt!405737)))

(declare-fun b!1176393 () Bool)

(assert (=> b!1176393 (= e!754911 (< 1 (size!9192 (tokens!1682 thiss!10527))))))

(assert (= (and d!337063 res!531925) b!1176393))

(assert (=> d!337063 m!1352845))

(assert (=> d!337063 m!1352845))

(declare-fun m!1353665 () Bool)

(assert (=> d!337063 m!1353665))

(declare-fun m!1353667 () Bool)

(assert (=> d!337063 m!1353667))

(assert (=> b!1176393 m!1352915))

(assert (=> b!1175918 d!337063))

(declare-fun b!1176394 () Bool)

(declare-fun e!754916 () Int)

(declare-fun e!754912 () Int)

(assert (=> b!1176394 (= e!754916 e!754912)))

(declare-fun c!196082 () Bool)

(declare-fun call!82437 () Int)

(assert (=> b!1176394 (= c!196082 (>= 2 call!82437))))

(declare-fun b!1176395 () Bool)

(declare-fun e!754913 () List!11658)

(declare-fun e!754914 () List!11658)

(assert (=> b!1176395 (= e!754913 e!754914)))

(declare-fun c!196083 () Bool)

(assert (=> b!1176395 (= c!196083 (<= 2 0))))

(declare-fun b!1176396 () Bool)

(declare-fun e!754915 () Bool)

(declare-fun lt!405738 () List!11658)

(assert (=> b!1176396 (= e!754915 (= (size!9196 lt!405738) e!754916))))

(declare-fun c!196081 () Bool)

(assert (=> b!1176396 (= c!196081 (<= 2 0))))

(declare-fun bm!82432 () Bool)

(assert (=> bm!82432 (= call!82437 (size!9196 lt!405302))))

(declare-fun b!1176397 () Bool)

(assert (=> b!1176397 (= e!754912 (- call!82437 2))))

(declare-fun b!1176398 () Bool)

(assert (=> b!1176398 (= e!754916 call!82437)))

(declare-fun b!1176399 () Bool)

(assert (=> b!1176399 (= e!754913 Nil!11634)))

(declare-fun b!1176400 () Bool)

(assert (=> b!1176400 (= e!754914 (drop!501 (t!111122 lt!405302) (- 2 1)))))

(declare-fun b!1176401 () Bool)

(assert (=> b!1176401 (= e!754914 lt!405302)))

(declare-fun d!337065 () Bool)

(assert (=> d!337065 e!754915))

(declare-fun res!531926 () Bool)

(assert (=> d!337065 (=> (not res!531926) (not e!754915))))

(assert (=> d!337065 (= res!531926 (= ((_ map implies) (content!1622 lt!405738) (content!1622 lt!405302)) ((as const (InoxSet Token!3720)) true)))))

(assert (=> d!337065 (= lt!405738 e!754913)))

(declare-fun c!196080 () Bool)

(assert (=> d!337065 (= c!196080 ((_ is Nil!11634) lt!405302))))

(assert (=> d!337065 (= (drop!501 lt!405302 2) lt!405738)))

(declare-fun b!1176402 () Bool)

(assert (=> b!1176402 (= e!754912 0)))

(assert (= (and d!337065 c!196080) b!1176399))

(assert (= (and d!337065 (not c!196080)) b!1176395))

(assert (= (and b!1176395 c!196083) b!1176401))

(assert (= (and b!1176395 (not c!196083)) b!1176400))

(assert (= (and d!337065 res!531926) b!1176396))

(assert (= (and b!1176396 c!196081) b!1176398))

(assert (= (and b!1176396 (not c!196081)) b!1176394))

(assert (= (and b!1176394 c!196082) b!1176402))

(assert (= (and b!1176394 (not c!196082)) b!1176397))

(assert (= (or b!1176398 b!1176394 b!1176397) bm!82432))

(declare-fun m!1353669 () Bool)

(assert (=> b!1176396 m!1353669))

(assert (=> bm!82432 m!1352939))

(declare-fun m!1353671 () Bool)

(assert (=> b!1176400 m!1353671))

(declare-fun m!1353673 () Bool)

(assert (=> d!337065 m!1353673))

(assert (=> d!337065 m!1353097))

(assert (=> b!1175918 d!337065))

(declare-fun d!337067 () Bool)

(assert (=> d!337067 (= (tail!1702 lt!405317) (t!111122 lt!405317))))

(assert (=> b!1175918 d!337067))

(declare-fun d!337069 () Bool)

(declare-fun lt!405739 () Token!3720)

(assert (=> d!337069 (= lt!405739 (apply!2556 (list!4302 (tokens!1682 thiss!10527)) 0))))

(assert (=> d!337069 (= lt!405739 (apply!2559 (c!196023 (tokens!1682 thiss!10527)) 0))))

(declare-fun e!754917 () Bool)

(assert (=> d!337069 e!754917))

(declare-fun res!531927 () Bool)

(assert (=> d!337069 (=> (not res!531927) (not e!754917))))

(assert (=> d!337069 (= res!531927 (<= 0 0))))

(assert (=> d!337069 (= (apply!2555 (tokens!1682 thiss!10527) 0) lt!405739)))

(declare-fun b!1176403 () Bool)

(assert (=> b!1176403 (= e!754917 (< 0 (size!9192 (tokens!1682 thiss!10527))))))

(assert (= (and d!337069 res!531927) b!1176403))

(assert (=> d!337069 m!1352845))

(assert (=> d!337069 m!1352845))

(declare-fun m!1353675 () Bool)

(assert (=> d!337069 m!1353675))

(declare-fun m!1353677 () Bool)

(assert (=> d!337069 m!1353677))

(assert (=> b!1176403 m!1352915))

(assert (=> b!1175918 d!337069))

(declare-fun b!1176404 () Bool)

(declare-fun e!754922 () Int)

(declare-fun e!754918 () Int)

(assert (=> b!1176404 (= e!754922 e!754918)))

(declare-fun c!196086 () Bool)

(declare-fun call!82438 () Int)

(assert (=> b!1176404 (= c!196086 (>= 1 call!82438))))

(declare-fun b!1176405 () Bool)

(declare-fun e!754919 () List!11658)

(declare-fun e!754920 () List!11658)

(assert (=> b!1176405 (= e!754919 e!754920)))

(declare-fun c!196087 () Bool)

(assert (=> b!1176405 (= c!196087 (<= 1 0))))

(declare-fun b!1176406 () Bool)

(declare-fun e!754921 () Bool)

(declare-fun lt!405740 () List!11658)

(assert (=> b!1176406 (= e!754921 (= (size!9196 lt!405740) e!754922))))

(declare-fun c!196085 () Bool)

(assert (=> b!1176406 (= c!196085 (<= 1 0))))

(declare-fun bm!82433 () Bool)

(assert (=> bm!82433 (= call!82438 (size!9196 lt!405302))))

(declare-fun b!1176407 () Bool)

(assert (=> b!1176407 (= e!754918 (- call!82438 1))))

(declare-fun b!1176408 () Bool)

(assert (=> b!1176408 (= e!754922 call!82438)))

(declare-fun b!1176409 () Bool)

(assert (=> b!1176409 (= e!754919 Nil!11634)))

(declare-fun b!1176410 () Bool)

(assert (=> b!1176410 (= e!754920 (drop!501 (t!111122 lt!405302) (- 1 1)))))

(declare-fun b!1176411 () Bool)

(assert (=> b!1176411 (= e!754920 lt!405302)))

(declare-fun d!337071 () Bool)

(assert (=> d!337071 e!754921))

(declare-fun res!531928 () Bool)

(assert (=> d!337071 (=> (not res!531928) (not e!754921))))

(assert (=> d!337071 (= res!531928 (= ((_ map implies) (content!1622 lt!405740) (content!1622 lt!405302)) ((as const (InoxSet Token!3720)) true)))))

(assert (=> d!337071 (= lt!405740 e!754919)))

(declare-fun c!196084 () Bool)

(assert (=> d!337071 (= c!196084 ((_ is Nil!11634) lt!405302))))

(assert (=> d!337071 (= (drop!501 lt!405302 1) lt!405740)))

(declare-fun b!1176412 () Bool)

(assert (=> b!1176412 (= e!754918 0)))

(assert (= (and d!337071 c!196084) b!1176409))

(assert (= (and d!337071 (not c!196084)) b!1176405))

(assert (= (and b!1176405 c!196087) b!1176411))

(assert (= (and b!1176405 (not c!196087)) b!1176410))

(assert (= (and d!337071 res!531928) b!1176406))

(assert (= (and b!1176406 c!196085) b!1176408))

(assert (= (and b!1176406 (not c!196085)) b!1176404))

(assert (= (and b!1176404 c!196086) b!1176412))

(assert (= (and b!1176404 (not c!196086)) b!1176407))

(assert (= (or b!1176408 b!1176404 b!1176407) bm!82433))

(declare-fun m!1353679 () Bool)

(assert (=> b!1176406 m!1353679))

(assert (=> bm!82433 m!1352939))

(declare-fun m!1353681 () Bool)

(assert (=> b!1176410 m!1353681))

(declare-fun m!1353683 () Bool)

(assert (=> d!337071 m!1353683))

(assert (=> d!337071 m!1353097))

(assert (=> b!1175918 d!337071))

(declare-fun d!337073 () Bool)

(declare-fun lt!405741 () Token!3720)

(assert (=> d!337073 (contains!2012 lt!405302 lt!405741)))

(declare-fun e!754923 () Token!3720)

(assert (=> d!337073 (= lt!405741 e!754923)))

(declare-fun c!196088 () Bool)

(assert (=> d!337073 (= c!196088 (= 0 0))))

(declare-fun e!754924 () Bool)

(assert (=> d!337073 e!754924))

(declare-fun res!531929 () Bool)

(assert (=> d!337073 (=> (not res!531929) (not e!754924))))

(assert (=> d!337073 (= res!531929 (<= 0 0))))

(assert (=> d!337073 (= (apply!2556 lt!405302 0) lt!405741)))

(declare-fun b!1176413 () Bool)

(assert (=> b!1176413 (= e!754924 (< 0 (size!9196 lt!405302)))))

(declare-fun b!1176414 () Bool)

(assert (=> b!1176414 (= e!754923 (head!2118 lt!405302))))

(declare-fun b!1176415 () Bool)

(assert (=> b!1176415 (= e!754923 (apply!2556 (tail!1702 lt!405302) (- 0 1)))))

(assert (= (and d!337073 res!531929) b!1176413))

(assert (= (and d!337073 c!196088) b!1176414))

(assert (= (and d!337073 (not c!196088)) b!1176415))

(declare-fun m!1353685 () Bool)

(assert (=> d!337073 m!1353685))

(assert (=> b!1176413 m!1352939))

(assert (=> b!1176414 m!1353641))

(assert (=> b!1176415 m!1353643))

(assert (=> b!1176415 m!1353643))

(declare-fun m!1353687 () Bool)

(assert (=> b!1176415 m!1353687))

(assert (=> b!1175918 d!337073))

(declare-fun d!337075 () Bool)

(assert (=> d!337075 (= (tail!1702 (drop!501 lt!405302 0)) (drop!501 lt!405302 (+ 0 1)))))

(declare-fun lt!405744 () Unit!17958)

(declare-fun choose!7627 (List!11658 Int) Unit!17958)

(assert (=> d!337075 (= lt!405744 (choose!7627 lt!405302 0))))

(declare-fun e!754927 () Bool)

(assert (=> d!337075 e!754927))

(declare-fun res!531932 () Bool)

(assert (=> d!337075 (=> (not res!531932) (not e!754927))))

(assert (=> d!337075 (= res!531932 (>= 0 0))))

(assert (=> d!337075 (= (lemmaDropTail!375 lt!405302 0) lt!405744)))

(declare-fun b!1176418 () Bool)

(assert (=> b!1176418 (= e!754927 (< 0 (size!9196 lt!405302)))))

(assert (= (and d!337075 res!531932) b!1176418))

(assert (=> d!337075 m!1352801))

(assert (=> d!337075 m!1352801))

(declare-fun m!1353689 () Bool)

(assert (=> d!337075 m!1353689))

(declare-fun m!1353691 () Bool)

(assert (=> d!337075 m!1353691))

(declare-fun m!1353693 () Bool)

(assert (=> d!337075 m!1353693))

(assert (=> b!1176418 m!1352939))

(assert (=> b!1175918 d!337075))

(declare-fun d!337077 () Bool)

(assert (=> d!337077 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) lt!405318)))

(declare-fun lt!405763 () Unit!17958)

(declare-fun choose!7628 (LexerInterface!1724 List!11659 List!11658 Token!3720) Unit!17958)

(assert (=> d!337077 (= lt!405763 (choose!7628 Lexer!1722 (rules!9714 thiss!10527) lt!405302 lt!405318))))

(assert (=> d!337077 (not (isEmpty!7057 (rules!9714 thiss!10527)))))

(assert (=> d!337077 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!305 Lexer!1722 (rules!9714 thiss!10527) lt!405302 lt!405318) lt!405763)))

(declare-fun bs!286606 () Bool)

(assert (= bs!286606 d!337077))

(assert (=> bs!286606 m!1352809))

(declare-fun m!1353719 () Bool)

(assert (=> bs!286606 m!1353719))

(assert (=> bs!286606 m!1353007))

(assert (=> b!1175918 d!337077))

(declare-fun d!337085 () Bool)

(assert (=> d!337085 (= (tail!1702 (drop!501 lt!405302 1)) (drop!501 lt!405302 (+ 1 1)))))

(declare-fun lt!405764 () Unit!17958)

(assert (=> d!337085 (= lt!405764 (choose!7627 lt!405302 1))))

(declare-fun e!754950 () Bool)

(assert (=> d!337085 e!754950))

(declare-fun res!531949 () Bool)

(assert (=> d!337085 (=> (not res!531949) (not e!754950))))

(assert (=> d!337085 (= res!531949 (>= 1 0))))

(assert (=> d!337085 (= (lemmaDropTail!375 lt!405302 1) lt!405764)))

(declare-fun b!1176441 () Bool)

(assert (=> b!1176441 (= e!754950 (< 1 (size!9196 lt!405302)))))

(assert (= (and d!337085 res!531949) b!1176441))

(assert (=> d!337085 m!1352811))

(assert (=> d!337085 m!1352811))

(declare-fun m!1353721 () Bool)

(assert (=> d!337085 m!1353721))

(declare-fun m!1353723 () Bool)

(assert (=> d!337085 m!1353723))

(declare-fun m!1353725 () Bool)

(assert (=> d!337085 m!1353725))

(assert (=> b!1176441 m!1352939))

(assert (=> b!1175918 d!337085))

(declare-fun d!337087 () Bool)

(assert (=> d!337087 (= (head!2118 (drop!501 lt!405302 0)) (apply!2556 lt!405302 0))))

(declare-fun lt!405765 () Unit!17958)

(assert (=> d!337087 (= lt!405765 (choose!7624 lt!405302 0))))

(declare-fun e!754951 () Bool)

(assert (=> d!337087 e!754951))

(declare-fun res!531950 () Bool)

(assert (=> d!337087 (=> (not res!531950) (not e!754951))))

(assert (=> d!337087 (= res!531950 (>= 0 0))))

(assert (=> d!337087 (= (lemmaDropApply!387 lt!405302 0) lt!405765)))

(declare-fun b!1176442 () Bool)

(assert (=> b!1176442 (= e!754951 (< 0 (size!9196 lt!405302)))))

(assert (= (and d!337087 res!531950) b!1176442))

(assert (=> d!337087 m!1352801))

(assert (=> d!337087 m!1352801))

(declare-fun m!1353727 () Bool)

(assert (=> d!337087 m!1353727))

(assert (=> d!337087 m!1352827))

(declare-fun m!1353729 () Bool)

(assert (=> d!337087 m!1353729))

(assert (=> b!1176442 m!1352939))

(assert (=> b!1175918 d!337087))

(declare-fun d!337089 () Bool)

(assert (=> d!337089 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) lt!405297)))

(declare-fun lt!405766 () Unit!17958)

(assert (=> d!337089 (= lt!405766 (choose!7628 Lexer!1722 (rules!9714 thiss!10527) lt!405302 lt!405297))))

(assert (=> d!337089 (not (isEmpty!7057 (rules!9714 thiss!10527)))))

(assert (=> d!337089 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!305 Lexer!1722 (rules!9714 thiss!10527) lt!405302 lt!405297) lt!405766)))

(declare-fun bs!286607 () Bool)

(assert (= bs!286607 d!337089))

(assert (=> bs!286607 m!1352835))

(declare-fun m!1353731 () Bool)

(assert (=> bs!286607 m!1353731))

(assert (=> bs!286607 m!1353007))

(assert (=> b!1175918 d!337089))

(declare-fun b!1176443 () Bool)

(declare-fun e!754956 () Int)

(declare-fun e!754952 () Int)

(assert (=> b!1176443 (= e!754956 e!754952)))

(declare-fun c!196091 () Bool)

(declare-fun call!82439 () Int)

(assert (=> b!1176443 (= c!196091 (>= 0 call!82439))))

(declare-fun b!1176444 () Bool)

(declare-fun e!754953 () List!11658)

(declare-fun e!754954 () List!11658)

(assert (=> b!1176444 (= e!754953 e!754954)))

(declare-fun c!196092 () Bool)

(assert (=> b!1176444 (= c!196092 (<= 0 0))))

(declare-fun b!1176445 () Bool)

(declare-fun e!754955 () Bool)

(declare-fun lt!405767 () List!11658)

(assert (=> b!1176445 (= e!754955 (= (size!9196 lt!405767) e!754956))))

(declare-fun c!196090 () Bool)

(assert (=> b!1176445 (= c!196090 (<= 0 0))))

(declare-fun bm!82434 () Bool)

(assert (=> bm!82434 (= call!82439 (size!9196 lt!405302))))

(declare-fun b!1176446 () Bool)

(assert (=> b!1176446 (= e!754952 (- call!82439 0))))

(declare-fun b!1176447 () Bool)

(assert (=> b!1176447 (= e!754956 call!82439)))

(declare-fun b!1176448 () Bool)

(assert (=> b!1176448 (= e!754953 Nil!11634)))

(declare-fun b!1176449 () Bool)

(assert (=> b!1176449 (= e!754954 (drop!501 (t!111122 lt!405302) (- 0 1)))))

(declare-fun b!1176450 () Bool)

(assert (=> b!1176450 (= e!754954 lt!405302)))

(declare-fun d!337091 () Bool)

(assert (=> d!337091 e!754955))

(declare-fun res!531951 () Bool)

(assert (=> d!337091 (=> (not res!531951) (not e!754955))))

(assert (=> d!337091 (= res!531951 (= ((_ map implies) (content!1622 lt!405767) (content!1622 lt!405302)) ((as const (InoxSet Token!3720)) true)))))

(assert (=> d!337091 (= lt!405767 e!754953)))

(declare-fun c!196089 () Bool)

(assert (=> d!337091 (= c!196089 ((_ is Nil!11634) lt!405302))))

(assert (=> d!337091 (= (drop!501 lt!405302 0) lt!405767)))

(declare-fun b!1176451 () Bool)

(assert (=> b!1176451 (= e!754952 0)))

(assert (= (and d!337091 c!196089) b!1176448))

(assert (= (and d!337091 (not c!196089)) b!1176444))

(assert (= (and b!1176444 c!196092) b!1176450))

(assert (= (and b!1176444 (not c!196092)) b!1176449))

(assert (= (and d!337091 res!531951) b!1176445))

(assert (= (and b!1176445 c!196090) b!1176447))

(assert (= (and b!1176445 (not c!196090)) b!1176443))

(assert (= (and b!1176443 c!196091) b!1176451))

(assert (= (and b!1176443 (not c!196091)) b!1176446))

(assert (= (or b!1176447 b!1176443 b!1176446) bm!82434))

(declare-fun m!1353733 () Bool)

(assert (=> b!1176445 m!1353733))

(assert (=> bm!82434 m!1352939))

(declare-fun m!1353735 () Bool)

(assert (=> b!1176449 m!1353735))

(declare-fun m!1353737 () Bool)

(assert (=> d!337091 m!1353737))

(assert (=> d!337091 m!1353097))

(assert (=> b!1175918 d!337091))

(declare-fun d!337093 () Bool)

(declare-fun prefixMatchZipperSequence!109 (Regex!3299 BalanceConc!7662) Bool)

(declare-fun rulesRegex!80 (LexerInterface!1724 List!11659) Regex!3299)

(declare-fun ++!3010 (BalanceConc!7662 BalanceConc!7662) BalanceConc!7662)

(declare-fun singletonSeq!701 (C!6916) BalanceConc!7662)

(declare-fun apply!2560 (BalanceConc!7662 Int) C!6916)

(assert (=> d!337093 (= (separableTokensPredicate!146 Lexer!1722 lt!405297 lt!405318 (rules!9714 thiss!10527)) (not (prefixMatchZipperSequence!109 (rulesRegex!80 Lexer!1722 (rules!9714 thiss!10527)) (++!3010 (charsOf!1084 lt!405297) (singletonSeq!701 (apply!2560 (charsOf!1084 lt!405318) 0))))))))

(declare-fun bs!286608 () Bool)

(assert (= bs!286608 d!337093))

(declare-fun m!1353739 () Bool)

(assert (=> bs!286608 m!1353739))

(assert (=> bs!286608 m!1353739))

(declare-fun m!1353741 () Bool)

(assert (=> bs!286608 m!1353741))

(declare-fun m!1353743 () Bool)

(assert (=> bs!286608 m!1353743))

(declare-fun m!1353745 () Bool)

(assert (=> bs!286608 m!1353745))

(assert (=> bs!286608 m!1353743))

(declare-fun m!1353747 () Bool)

(assert (=> bs!286608 m!1353747))

(assert (=> bs!286608 m!1353745))

(declare-fun m!1353749 () Bool)

(assert (=> bs!286608 m!1353749))

(assert (=> bs!286608 m!1353741))

(assert (=> bs!286608 m!1352851))

(assert (=> bs!286608 m!1352851))

(assert (=> bs!286608 m!1353749))

(assert (=> b!1175918 d!337093))

(declare-fun d!337095 () Bool)

(declare-fun lt!405769 () Bool)

(declare-fun e!754958 () Bool)

(assert (=> d!337095 (= lt!405769 e!754958)))

(declare-fun res!531954 () Bool)

(assert (=> d!337095 (=> (not res!531954) (not e!754958))))

(assert (=> d!337095 (= res!531954 (= (list!4302 (_1!6881 (lex!722 Lexer!1722 (rules!9714 thiss!10527) (print!659 Lexer!1722 (singletonSeq!699 lt!405318))))) (list!4302 (singletonSeq!699 lt!405318))))))

(declare-fun e!754957 () Bool)

(assert (=> d!337095 (= lt!405769 e!754957)))

(declare-fun res!531952 () Bool)

(assert (=> d!337095 (=> (not res!531952) (not e!754957))))

(declare-fun lt!405768 () tuple2!12068)

(assert (=> d!337095 (= res!531952 (= (size!9192 (_1!6881 lt!405768)) 1))))

(assert (=> d!337095 (= lt!405768 (lex!722 Lexer!1722 (rules!9714 thiss!10527) (print!659 Lexer!1722 (singletonSeq!699 lt!405318))))))

(assert (=> d!337095 (not (isEmpty!7057 (rules!9714 thiss!10527)))))

(assert (=> d!337095 (= (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) lt!405318) lt!405769)))

(declare-fun b!1176452 () Bool)

(declare-fun res!531953 () Bool)

(assert (=> b!1176452 (=> (not res!531953) (not e!754957))))

(assert (=> b!1176452 (= res!531953 (= (apply!2555 (_1!6881 lt!405768) 0) lt!405318))))

(declare-fun b!1176453 () Bool)

(assert (=> b!1176453 (= e!754957 (isEmpty!7058 (_2!6881 lt!405768)))))

(declare-fun b!1176454 () Bool)

(assert (=> b!1176454 (= e!754958 (isEmpty!7058 (_2!6881 (lex!722 Lexer!1722 (rules!9714 thiss!10527) (print!659 Lexer!1722 (singletonSeq!699 lt!405318))))))))

(assert (= (and d!337095 res!531952) b!1176452))

(assert (= (and b!1176452 res!531953) b!1176453))

(assert (= (and d!337095 res!531954) b!1176454))

(declare-fun m!1353751 () Bool)

(assert (=> d!337095 m!1353751))

(declare-fun m!1353753 () Bool)

(assert (=> d!337095 m!1353753))

(declare-fun m!1353755 () Bool)

(assert (=> d!337095 m!1353755))

(assert (=> d!337095 m!1353007))

(declare-fun m!1353757 () Bool)

(assert (=> d!337095 m!1353757))

(assert (=> d!337095 m!1353751))

(declare-fun m!1353759 () Bool)

(assert (=> d!337095 m!1353759))

(assert (=> d!337095 m!1353751))

(assert (=> d!337095 m!1353759))

(declare-fun m!1353761 () Bool)

(assert (=> d!337095 m!1353761))

(declare-fun m!1353763 () Bool)

(assert (=> b!1176452 m!1353763))

(declare-fun m!1353765 () Bool)

(assert (=> b!1176453 m!1353765))

(assert (=> b!1176454 m!1353751))

(assert (=> b!1176454 m!1353751))

(assert (=> b!1176454 m!1353759))

(assert (=> b!1176454 m!1353759))

(assert (=> b!1176454 m!1353761))

(declare-fun m!1353767 () Bool)

(assert (=> b!1176454 m!1353767))

(assert (=> b!1175918 d!337095))

(declare-fun d!337097 () Bool)

(declare-fun lt!405771 () Bool)

(declare-fun e!754960 () Bool)

(assert (=> d!337097 (= lt!405771 e!754960)))

(declare-fun res!531957 () Bool)

(assert (=> d!337097 (=> (not res!531957) (not e!754960))))

(assert (=> d!337097 (= res!531957 (= (list!4302 (_1!6881 (lex!722 Lexer!1722 (rules!9714 thiss!10527) (print!659 Lexer!1722 (singletonSeq!699 (h!17035 lt!405296)))))) (list!4302 (singletonSeq!699 (h!17035 lt!405296)))))))

(declare-fun e!754959 () Bool)

(assert (=> d!337097 (= lt!405771 e!754959)))

(declare-fun res!531955 () Bool)

(assert (=> d!337097 (=> (not res!531955) (not e!754959))))

(declare-fun lt!405770 () tuple2!12068)

(assert (=> d!337097 (= res!531955 (= (size!9192 (_1!6881 lt!405770)) 1))))

(assert (=> d!337097 (= lt!405770 (lex!722 Lexer!1722 (rules!9714 thiss!10527) (print!659 Lexer!1722 (singletonSeq!699 (h!17035 lt!405296)))))))

(assert (=> d!337097 (not (isEmpty!7057 (rules!9714 thiss!10527)))))

(assert (=> d!337097 (= (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 lt!405296)) lt!405771)))

(declare-fun b!1176455 () Bool)

(declare-fun res!531956 () Bool)

(assert (=> b!1176455 (=> (not res!531956) (not e!754959))))

(assert (=> b!1176455 (= res!531956 (= (apply!2555 (_1!6881 lt!405770) 0) (h!17035 lt!405296)))))

(declare-fun b!1176456 () Bool)

(assert (=> b!1176456 (= e!754959 (isEmpty!7058 (_2!6881 lt!405770)))))

(declare-fun b!1176457 () Bool)

(assert (=> b!1176457 (= e!754960 (isEmpty!7058 (_2!6881 (lex!722 Lexer!1722 (rules!9714 thiss!10527) (print!659 Lexer!1722 (singletonSeq!699 (h!17035 lt!405296)))))))))

(assert (= (and d!337097 res!531955) b!1176455))

(assert (= (and b!1176455 res!531956) b!1176456))

(assert (= (and d!337097 res!531957) b!1176457))

(declare-fun m!1353769 () Bool)

(assert (=> d!337097 m!1353769))

(declare-fun m!1353771 () Bool)

(assert (=> d!337097 m!1353771))

(declare-fun m!1353773 () Bool)

(assert (=> d!337097 m!1353773))

(assert (=> d!337097 m!1353007))

(declare-fun m!1353775 () Bool)

(assert (=> d!337097 m!1353775))

(assert (=> d!337097 m!1353769))

(declare-fun m!1353777 () Bool)

(assert (=> d!337097 m!1353777))

(assert (=> d!337097 m!1353769))

(assert (=> d!337097 m!1353777))

(declare-fun m!1353779 () Bool)

(assert (=> d!337097 m!1353779))

(declare-fun m!1353781 () Bool)

(assert (=> b!1176455 m!1353781))

(declare-fun m!1353783 () Bool)

(assert (=> b!1176456 m!1353783))

(assert (=> b!1176457 m!1353769))

(assert (=> b!1176457 m!1353769))

(assert (=> b!1176457 m!1353777))

(assert (=> b!1176457 m!1353777))

(assert (=> b!1176457 m!1353779))

(declare-fun m!1353785 () Bool)

(assert (=> b!1176457 m!1353785))

(assert (=> b!1175901 d!337097))

(declare-fun d!337099 () Bool)

(declare-fun lt!405774 () Int)

(declare-fun size!9199 (List!11657) Int)

(declare-fun list!4306 (BalanceConc!7662) List!11657)

(assert (=> d!337099 (= lt!405774 (size!9199 (list!4306 (charsOf!1084 lt!405318))))))

(declare-fun size!9200 (Conc!3820) Int)

(assert (=> d!337099 (= lt!405774 (size!9200 (c!196022 (charsOf!1084 lt!405318))))))

(assert (=> d!337099 (= (size!9193 (charsOf!1084 lt!405318)) lt!405774)))

(declare-fun bs!286609 () Bool)

(assert (= bs!286609 d!337099))

(assert (=> bs!286609 m!1352851))

(declare-fun m!1353787 () Bool)

(assert (=> bs!286609 m!1353787))

(assert (=> bs!286609 m!1353787))

(declare-fun m!1353789 () Bool)

(assert (=> bs!286609 m!1353789))

(declare-fun m!1353791 () Bool)

(assert (=> bs!286609 m!1353791))

(assert (=> b!1175922 d!337099))

(declare-fun d!337101 () Bool)

(declare-fun lt!405777 () BalanceConc!7662)

(assert (=> d!337101 (= (list!4306 lt!405777) (originalCharacters!2583 lt!405318))))

(declare-fun dynLambda!5166 (Int TokenValue!2095) BalanceConc!7662)

(assert (=> d!337101 (= lt!405777 (dynLambda!5166 (toChars!2989 (transformation!2029 (rule!3450 lt!405318))) (value!65823 lt!405318)))))

(assert (=> d!337101 (= (charsOf!1084 lt!405318) lt!405777)))

(declare-fun b_lambda!35181 () Bool)

(assert (=> (not b_lambda!35181) (not d!337101)))

(declare-fun bs!286610 () Bool)

(assert (= bs!286610 d!337101))

(declare-fun m!1353793 () Bool)

(assert (=> bs!286610 m!1353793))

(declare-fun m!1353795 () Bool)

(assert (=> bs!286610 m!1353795))

(assert (=> b!1175922 d!337101))

(declare-fun d!337103 () Bool)

(declare-fun lt!405780 () Int)

(assert (=> d!337103 (= lt!405780 (size!9196 (list!4302 (tokens!1682 thiss!10527))))))

(declare-fun size!9201 (Conc!3821) Int)

(assert (=> d!337103 (= lt!405780 (size!9201 (c!196023 (tokens!1682 thiss!10527))))))

(assert (=> d!337103 (= (size!9192 (tokens!1682 thiss!10527)) lt!405780)))

(declare-fun bs!286611 () Bool)

(assert (= bs!286611 d!337103))

(assert (=> bs!286611 m!1352845))

(assert (=> bs!286611 m!1352845))

(declare-fun m!1353797 () Bool)

(assert (=> bs!286611 m!1353797))

(declare-fun m!1353799 () Bool)

(assert (=> bs!286611 m!1353799))

(assert (=> b!1175921 d!337103))

(declare-fun bs!286612 () Bool)

(declare-fun d!337105 () Bool)

(assert (= bs!286612 (and d!337105 d!336973)))

(declare-fun lambda!48532 () Int)

(assert (=> bs!286612 (= lambda!48532 lambda!48520)))

(declare-fun bs!286613 () Bool)

(assert (= bs!286613 (and d!337105 b!1176178)))

(assert (=> bs!286613 (= lambda!48532 lambda!48519)))

(declare-fun bs!286614 () Bool)

(assert (= bs!286614 (and d!337105 b!1176217)))

(assert (=> bs!286614 (= lambda!48532 lambda!48523)))

(declare-fun bs!286615 () Bool)

(assert (= bs!286615 (and d!337105 d!337045)))

(assert (=> bs!286615 (= lambda!48532 lambda!48526)))

(declare-fun bs!286616 () Bool)

(assert (= bs!286616 (and d!337105 d!336899)))

(assert (=> bs!286616 (= lambda!48532 lambda!48508)))

(declare-fun bs!286617 () Bool)

(assert (= bs!286617 (and d!337105 d!337049)))

(assert (=> bs!286617 (= lambda!48532 lambda!48527)))

(declare-fun bs!286618 () Bool)

(assert (= bs!286618 (and d!337105 b!1175910)))

(assert (=> bs!286618 (= lambda!48532 lambda!48501)))

(declare-fun b!1176462 () Bool)

(declare-fun e!754965 () Bool)

(assert (=> b!1176462 (= e!754965 true)))

(declare-fun b!1176461 () Bool)

(declare-fun e!754964 () Bool)

(assert (=> b!1176461 (= e!754964 e!754965)))

(declare-fun b!1176460 () Bool)

(declare-fun e!754963 () Bool)

(assert (=> b!1176460 (= e!754963 e!754964)))

(assert (=> d!337105 e!754963))

(assert (= b!1176461 b!1176462))

(assert (= b!1176460 b!1176461))

(assert (= (and d!337105 ((_ is Cons!11635) (rules!9714 thiss!10527))) b!1176460))

(assert (=> b!1176462 (< (dynLambda!5162 order!7173 (toValue!3130 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48532))))

(assert (=> b!1176462 (< (dynLambda!5164 order!7177 (toChars!2989 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48532))))

(assert (=> d!337105 true))

(declare-fun lt!405781 () Bool)

(assert (=> d!337105 (= lt!405781 (forall!3094 lt!405316 lambda!48532))))

(declare-fun e!754961 () Bool)

(assert (=> d!337105 (= lt!405781 e!754961)))

(declare-fun res!531958 () Bool)

(assert (=> d!337105 (=> res!531958 e!754961)))

(assert (=> d!337105 (= res!531958 (not ((_ is Cons!11634) lt!405316)))))

(assert (=> d!337105 (not (isEmpty!7057 (rules!9714 thiss!10527)))))

(assert (=> d!337105 (= (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) lt!405316) lt!405781)))

(declare-fun b!1176458 () Bool)

(declare-fun e!754962 () Bool)

(assert (=> b!1176458 (= e!754961 e!754962)))

(declare-fun res!531959 () Bool)

(assert (=> b!1176458 (=> (not res!531959) (not e!754962))))

(assert (=> b!1176458 (= res!531959 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 lt!405316)))))

(declare-fun b!1176459 () Bool)

(assert (=> b!1176459 (= e!754962 (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) (t!111122 lt!405316)))))

(assert (= (and d!337105 (not res!531958)) b!1176458))

(assert (= (and b!1176458 res!531959) b!1176459))

(declare-fun m!1353801 () Bool)

(assert (=> d!337105 m!1353801))

(assert (=> d!337105 m!1353007))

(assert (=> b!1176458 m!1352933))

(assert (=> b!1176459 m!1352919))

(assert (=> b!1175925 d!337105))

(declare-fun bs!286619 () Bool)

(declare-fun d!337107 () Bool)

(assert (= bs!286619 (and d!337107 d!336973)))

(declare-fun lambda!48533 () Int)

(assert (=> bs!286619 (= lambda!48533 lambda!48520)))

(declare-fun bs!286620 () Bool)

(assert (= bs!286620 (and d!337107 b!1176178)))

(assert (=> bs!286620 (= lambda!48533 lambda!48519)))

(declare-fun bs!286621 () Bool)

(assert (= bs!286621 (and d!337107 d!337105)))

(assert (=> bs!286621 (= lambda!48533 lambda!48532)))

(declare-fun bs!286622 () Bool)

(assert (= bs!286622 (and d!337107 b!1176217)))

(assert (=> bs!286622 (= lambda!48533 lambda!48523)))

(declare-fun bs!286623 () Bool)

(assert (= bs!286623 (and d!337107 d!337045)))

(assert (=> bs!286623 (= lambda!48533 lambda!48526)))

(declare-fun bs!286624 () Bool)

(assert (= bs!286624 (and d!337107 d!336899)))

(assert (=> bs!286624 (= lambda!48533 lambda!48508)))

(declare-fun bs!286625 () Bool)

(assert (= bs!286625 (and d!337107 d!337049)))

(assert (=> bs!286625 (= lambda!48533 lambda!48527)))

(declare-fun bs!286626 () Bool)

(assert (= bs!286626 (and d!337107 b!1175910)))

(assert (=> bs!286626 (= lambda!48533 lambda!48501)))

(declare-fun b!1176467 () Bool)

(declare-fun e!754970 () Bool)

(assert (=> b!1176467 (= e!754970 true)))

(declare-fun b!1176466 () Bool)

(declare-fun e!754969 () Bool)

(assert (=> b!1176466 (= e!754969 e!754970)))

(declare-fun b!1176465 () Bool)

(declare-fun e!754968 () Bool)

(assert (=> b!1176465 (= e!754968 e!754969)))

(assert (=> d!337107 e!754968))

(assert (= b!1176466 b!1176467))

(assert (= b!1176465 b!1176466))

(assert (= (and d!337107 ((_ is Cons!11635) (rules!9714 thiss!10527))) b!1176465))

(assert (=> b!1176467 (< (dynLambda!5162 order!7173 (toValue!3130 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48533))))

(assert (=> b!1176467 (< (dynLambda!5164 order!7177 (toChars!2989 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48533))))

(assert (=> d!337107 true))

(declare-fun lt!405782 () Bool)

(assert (=> d!337107 (= lt!405782 (forall!3094 (t!111122 lt!405296) lambda!48533))))

(declare-fun e!754966 () Bool)

(assert (=> d!337107 (= lt!405782 e!754966)))

(declare-fun res!531960 () Bool)

(assert (=> d!337107 (=> res!531960 e!754966)))

(assert (=> d!337107 (= res!531960 (not ((_ is Cons!11634) (t!111122 lt!405296))))))

(assert (=> d!337107 (not (isEmpty!7057 (rules!9714 thiss!10527)))))

(assert (=> d!337107 (= (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) (t!111122 lt!405296)) lt!405782)))

(declare-fun b!1176463 () Bool)

(declare-fun e!754967 () Bool)

(assert (=> b!1176463 (= e!754966 e!754967)))

(declare-fun res!531961 () Bool)

(assert (=> b!1176463 (=> (not res!531961) (not e!754967))))

(assert (=> b!1176463 (= res!531961 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 (t!111122 lt!405296))))))

(declare-fun b!1176464 () Bool)

(assert (=> b!1176464 (= e!754967 (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) (t!111122 (t!111122 lt!405296))))))

(assert (= (and d!337107 (not res!531960)) b!1176463))

(assert (= (and b!1176463 res!531961) b!1176464))

(declare-fun m!1353803 () Bool)

(assert (=> d!337107 m!1353803))

(assert (=> d!337107 m!1353007))

(declare-fun m!1353805 () Bool)

(assert (=> b!1176463 m!1353805))

(declare-fun m!1353807 () Bool)

(assert (=> b!1176464 m!1353807))

(assert (=> b!1175904 d!337107))

(declare-fun d!337109 () Bool)

(declare-fun res!531962 () Bool)

(declare-fun e!754971 () Bool)

(assert (=> d!337109 (=> (not res!531962) (not e!754971))))

(assert (=> d!337109 (= res!531962 (not (isEmpty!7057 (rules!9714 (PrintableTokens!745 (rules!9714 thiss!10527) lt!405295)))))))

(assert (=> d!337109 (= (inv!15378 (PrintableTokens!745 (rules!9714 thiss!10527) lt!405295)) e!754971)))

(declare-fun b!1176468 () Bool)

(declare-fun res!531963 () Bool)

(assert (=> b!1176468 (=> (not res!531963) (not e!754971))))

(assert (=> b!1176468 (= res!531963 (rulesInvariant!1598 Lexer!1722 (rules!9714 (PrintableTokens!745 (rules!9714 thiss!10527) lt!405295))))))

(declare-fun b!1176469 () Bool)

(declare-fun res!531964 () Bool)

(assert (=> b!1176469 (=> (not res!531964) (not e!754971))))

(assert (=> b!1176469 (= res!531964 (rulesProduceEachTokenIndividually!762 Lexer!1722 (rules!9714 (PrintableTokens!745 (rules!9714 thiss!10527) lt!405295)) (tokens!1682 (PrintableTokens!745 (rules!9714 thiss!10527) lt!405295))))))

(declare-fun b!1176470 () Bool)

(assert (=> b!1176470 (= e!754971 (separableTokens!160 Lexer!1722 (tokens!1682 (PrintableTokens!745 (rules!9714 thiss!10527) lt!405295)) (rules!9714 (PrintableTokens!745 (rules!9714 thiss!10527) lt!405295))))))

(assert (= (and d!337109 res!531962) b!1176468))

(assert (= (and b!1176468 res!531963) b!1176469))

(assert (= (and b!1176469 res!531964) b!1176470))

(declare-fun m!1353809 () Bool)

(assert (=> d!337109 m!1353809))

(declare-fun m!1353811 () Bool)

(assert (=> b!1176468 m!1353811))

(declare-fun m!1353813 () Bool)

(assert (=> b!1176469 m!1353813))

(declare-fun m!1353815 () Bool)

(assert (=> b!1176470 m!1353815))

(assert (=> b!1175903 d!337109))

(declare-fun d!337111 () Bool)

(declare-fun lt!405820 () Bool)

(assert (=> d!337111 (= lt!405820 (forall!3094 (list!4302 lt!405295) lambda!48501))))

(declare-fun forall!3096 (Conc!3821 Int) Bool)

(assert (=> d!337111 (= lt!405820 (forall!3096 (c!196023 lt!405295) lambda!48501))))

(assert (=> d!337111 (= (forall!3093 lt!405295 lambda!48501) lt!405820)))

(declare-fun bs!286629 () Bool)

(assert (= bs!286629 d!337111))

(assert (=> bs!286629 m!1352901))

(assert (=> bs!286629 m!1352901))

(declare-fun m!1353825 () Bool)

(assert (=> bs!286629 m!1353825))

(declare-fun m!1353827 () Bool)

(assert (=> bs!286629 m!1353827))

(assert (=> b!1175924 d!337111))

(declare-fun d!337119 () Bool)

(declare-fun lt!405843 () Bool)

(assert (=> d!337119 (= lt!405843 (tokensListTwoByTwoPredicateSeparableList!120 Lexer!1722 (dropList!335 (tokens!1682 thiss!10527) 0) (rules!9714 thiss!10527)))))

(declare-fun lt!405838 () Unit!17958)

(declare-fun lt!405829 () Unit!17958)

(assert (=> d!337119 (= lt!405838 lt!405829)))

(declare-fun lt!405848 () List!11658)

(assert (=> d!337119 (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) lt!405848)))

(declare-fun lt!405849 () List!11658)

(assert (=> d!337119 (= lt!405829 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!41 Lexer!1722 (rules!9714 thiss!10527) lt!405849 lt!405848))))

(declare-fun e!754985 () Bool)

(assert (=> d!337119 e!754985))

(declare-fun res!531981 () Bool)

(assert (=> d!337119 (=> (not res!531981) (not e!754985))))

(assert (=> d!337119 (= res!531981 ((_ is Lexer!1722) Lexer!1722))))

(assert (=> d!337119 (= lt!405848 (dropList!335 (tokens!1682 thiss!10527) 0))))

(assert (=> d!337119 (= lt!405849 (list!4302 (tokens!1682 thiss!10527)))))

(declare-fun lt!405836 () Unit!17958)

(declare-fun lt!405833 () Unit!17958)

(assert (=> d!337119 (= lt!405836 lt!405833)))

(declare-fun lt!405852 () List!11658)

(assert (=> d!337119 (subseq!279 (drop!501 lt!405852 0) lt!405852)))

(assert (=> d!337119 (= lt!405833 (lemmaDropSubSeq!41 lt!405852 0))))

(declare-fun e!754984 () Bool)

(assert (=> d!337119 e!754984))

(declare-fun res!531977 () Bool)

(assert (=> d!337119 (=> (not res!531977) (not e!754984))))

(assert (=> d!337119 (= res!531977 (>= 0 0))))

(assert (=> d!337119 (= lt!405852 (list!4302 (tokens!1682 thiss!10527)))))

(declare-fun e!754982 () Bool)

(assert (=> d!337119 (= lt!405843 e!754982)))

(declare-fun res!531980 () Bool)

(assert (=> d!337119 (=> res!531980 e!754982)))

(assert (=> d!337119 (= res!531980 (not (< 0 (- (size!9192 (tokens!1682 thiss!10527)) 1))))))

(declare-fun e!754986 () Bool)

(assert (=> d!337119 e!754986))

(declare-fun res!531975 () Bool)

(assert (=> d!337119 (=> (not res!531975) (not e!754986))))

(assert (=> d!337119 (= res!531975 (>= 0 0))))

(assert (=> d!337119 (= (tokensListTwoByTwoPredicateSeparable!85 Lexer!1722 (tokens!1682 thiss!10527) 0 (rules!9714 thiss!10527)) lt!405843)))

(declare-fun b!1176488 () Bool)

(declare-fun res!531978 () Bool)

(assert (=> b!1176488 (=> (not res!531978) (not e!754985))))

(assert (=> b!1176488 (= res!531978 (subseq!279 lt!405848 lt!405849))))

(declare-fun b!1176489 () Bool)

(assert (=> b!1176489 (= e!754986 (<= 0 (size!9192 (tokens!1682 thiss!10527))))))

(declare-fun b!1176490 () Bool)

(declare-fun res!531979 () Bool)

(assert (=> b!1176490 (=> (not res!531979) (not e!754985))))

(assert (=> b!1176490 (= res!531979 (not (isEmpty!7057 (rules!9714 thiss!10527))))))

(declare-fun b!1176491 () Bool)

(declare-fun e!754983 () Bool)

(assert (=> b!1176491 (= e!754983 (tokensListTwoByTwoPredicateSeparable!85 Lexer!1722 (tokens!1682 thiss!10527) (+ 0 1) (rules!9714 thiss!10527)))))

(declare-fun b!1176492 () Bool)

(declare-fun res!531974 () Bool)

(assert (=> b!1176492 (=> (not res!531974) (not e!754985))))

(assert (=> b!1176492 (= res!531974 (rulesInvariant!1598 Lexer!1722 (rules!9714 thiss!10527)))))

(declare-fun b!1176493 () Bool)

(assert (=> b!1176493 (= e!754985 (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) lt!405849))))

(declare-fun b!1176494 () Bool)

(assert (=> b!1176494 (= e!754982 e!754983)))

(declare-fun res!531976 () Bool)

(assert (=> b!1176494 (=> (not res!531976) (not e!754983))))

(assert (=> b!1176494 (= res!531976 (separableTokensPredicate!146 Lexer!1722 (apply!2555 (tokens!1682 thiss!10527) 0) (apply!2555 (tokens!1682 thiss!10527) (+ 0 1)) (rules!9714 thiss!10527)))))

(declare-fun lt!405837 () Unit!17958)

(declare-fun Unit!17976 () Unit!17958)

(assert (=> b!1176494 (= lt!405837 Unit!17976)))

(assert (=> b!1176494 (> (size!9193 (charsOf!1084 (apply!2555 (tokens!1682 thiss!10527) (+ 0 1)))) 0)))

(declare-fun lt!405847 () Unit!17958)

(declare-fun Unit!17977 () Unit!17958)

(assert (=> b!1176494 (= lt!405847 Unit!17977)))

(assert (=> b!1176494 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (apply!2555 (tokens!1682 thiss!10527) (+ 0 1)))))

(declare-fun lt!405841 () Unit!17958)

(declare-fun Unit!17978 () Unit!17958)

(assert (=> b!1176494 (= lt!405841 Unit!17978)))

(assert (=> b!1176494 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (apply!2555 (tokens!1682 thiss!10527) 0))))

(declare-fun lt!405823 () Unit!17958)

(declare-fun lt!405853 () Unit!17958)

(assert (=> b!1176494 (= lt!405823 lt!405853)))

(declare-fun lt!405834 () Token!3720)

(assert (=> b!1176494 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) lt!405834)))

(declare-fun lt!405850 () List!11658)

(assert (=> b!1176494 (= lt!405853 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!305 Lexer!1722 (rules!9714 thiss!10527) lt!405850 lt!405834))))

(assert (=> b!1176494 (= lt!405834 (apply!2555 (tokens!1682 thiss!10527) (+ 0 1)))))

(assert (=> b!1176494 (= lt!405850 (list!4302 (tokens!1682 thiss!10527)))))

(declare-fun lt!405840 () Unit!17958)

(declare-fun lt!405832 () Unit!17958)

(assert (=> b!1176494 (= lt!405840 lt!405832)))

(declare-fun lt!405822 () Token!3720)

(assert (=> b!1176494 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) lt!405822)))

(declare-fun lt!405831 () List!11658)

(assert (=> b!1176494 (= lt!405832 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!305 Lexer!1722 (rules!9714 thiss!10527) lt!405831 lt!405822))))

(assert (=> b!1176494 (= lt!405822 (apply!2555 (tokens!1682 thiss!10527) 0))))

(assert (=> b!1176494 (= lt!405831 (list!4302 (tokens!1682 thiss!10527)))))

(declare-fun lt!405839 () Unit!17958)

(declare-fun lt!405821 () Unit!17958)

(assert (=> b!1176494 (= lt!405839 lt!405821)))

(declare-fun lt!405825 () List!11658)

(declare-fun lt!405824 () Int)

(assert (=> b!1176494 (= (tail!1702 (drop!501 lt!405825 lt!405824)) (drop!501 lt!405825 (+ lt!405824 1)))))

(assert (=> b!1176494 (= lt!405821 (lemmaDropTail!375 lt!405825 lt!405824))))

(assert (=> b!1176494 (= lt!405824 (+ 0 1))))

(assert (=> b!1176494 (= lt!405825 (list!4302 (tokens!1682 thiss!10527)))))

(declare-fun lt!405846 () Unit!17958)

(declare-fun lt!405835 () Unit!17958)

(assert (=> b!1176494 (= lt!405846 lt!405835)))

(declare-fun lt!405844 () List!11658)

(assert (=> b!1176494 (= (tail!1702 (drop!501 lt!405844 0)) (drop!501 lt!405844 (+ 0 1)))))

(assert (=> b!1176494 (= lt!405835 (lemmaDropTail!375 lt!405844 0))))

(assert (=> b!1176494 (= lt!405844 (list!4302 (tokens!1682 thiss!10527)))))

(declare-fun lt!405830 () Unit!17958)

(declare-fun lt!405845 () Unit!17958)

(assert (=> b!1176494 (= lt!405830 lt!405845)))

(declare-fun lt!405851 () List!11658)

(declare-fun lt!405828 () Int)

(assert (=> b!1176494 (= (head!2118 (drop!501 lt!405851 lt!405828)) (apply!2556 lt!405851 lt!405828))))

(assert (=> b!1176494 (= lt!405845 (lemmaDropApply!387 lt!405851 lt!405828))))

(assert (=> b!1176494 (= lt!405828 (+ 0 1))))

(assert (=> b!1176494 (= lt!405851 (list!4302 (tokens!1682 thiss!10527)))))

(declare-fun lt!405826 () Unit!17958)

(declare-fun lt!405827 () Unit!17958)

(assert (=> b!1176494 (= lt!405826 lt!405827)))

(declare-fun lt!405842 () List!11658)

(assert (=> b!1176494 (= (head!2118 (drop!501 lt!405842 0)) (apply!2556 lt!405842 0))))

(assert (=> b!1176494 (= lt!405827 (lemmaDropApply!387 lt!405842 0))))

(assert (=> b!1176494 (= lt!405842 (list!4302 (tokens!1682 thiss!10527)))))

(declare-fun b!1176495 () Bool)

(assert (=> b!1176495 (= e!754984 (<= 0 (size!9196 lt!405852)))))

(assert (= (and d!337119 res!531975) b!1176489))

(assert (= (and d!337119 (not res!531980)) b!1176494))

(assert (= (and b!1176494 res!531976) b!1176491))

(assert (= (and d!337119 res!531977) b!1176495))

(assert (= (and d!337119 res!531981) b!1176490))

(assert (= (and b!1176490 res!531979) b!1176492))

(assert (= (and b!1176492 res!531974) b!1176488))

(assert (= (and b!1176488 res!531978) b!1176493))

(declare-fun m!1353877 () Bool)

(assert (=> b!1176493 m!1353877))

(declare-fun m!1353881 () Bool)

(assert (=> b!1176494 m!1353881))

(declare-fun m!1353883 () Bool)

(assert (=> b!1176494 m!1353883))

(declare-fun m!1353887 () Bool)

(assert (=> b!1176494 m!1353887))

(declare-fun m!1353891 () Bool)

(assert (=> b!1176494 m!1353891))

(declare-fun m!1353895 () Bool)

(assert (=> b!1176494 m!1353895))

(declare-fun m!1353897 () Bool)

(assert (=> b!1176494 m!1353897))

(assert (=> b!1176494 m!1352815))

(declare-fun m!1353903 () Bool)

(assert (=> b!1176494 m!1353903))

(declare-fun m!1353905 () Bool)

(assert (=> b!1176494 m!1353905))

(assert (=> b!1176494 m!1352815))

(assert (=> b!1176494 m!1353887))

(declare-fun m!1353911 () Bool)

(assert (=> b!1176494 m!1353911))

(declare-fun m!1353913 () Bool)

(assert (=> b!1176494 m!1353913))

(declare-fun m!1353917 () Bool)

(assert (=> b!1176494 m!1353917))

(assert (=> b!1176494 m!1352815))

(declare-fun m!1353921 () Bool)

(assert (=> b!1176494 m!1353921))

(declare-fun m!1353927 () Bool)

(assert (=> b!1176494 m!1353927))

(declare-fun m!1353929 () Bool)

(assert (=> b!1176494 m!1353929))

(declare-fun m!1353933 () Bool)

(assert (=> b!1176494 m!1353933))

(declare-fun m!1353935 () Bool)

(assert (=> b!1176494 m!1353935))

(declare-fun m!1353939 () Bool)

(assert (=> b!1176494 m!1353939))

(declare-fun m!1353941 () Bool)

(assert (=> b!1176494 m!1353941))

(assert (=> b!1176494 m!1353887))

(assert (=> b!1176494 m!1353927))

(assert (=> b!1176494 m!1353939))

(declare-fun m!1353945 () Bool)

(assert (=> b!1176494 m!1353945))

(declare-fun m!1353947 () Bool)

(assert (=> b!1176494 m!1353947))

(declare-fun m!1353949 () Bool)

(assert (=> b!1176494 m!1353949))

(declare-fun m!1353951 () Bool)

(assert (=> b!1176494 m!1353951))

(declare-fun m!1353953 () Bool)

(assert (=> b!1176494 m!1353953))

(assert (=> b!1176494 m!1352845))

(assert (=> b!1176494 m!1353887))

(assert (=> b!1176494 m!1353883))

(declare-fun m!1353955 () Bool)

(assert (=> b!1176494 m!1353955))

(assert (=> b!1176494 m!1353933))

(declare-fun m!1353957 () Bool)

(assert (=> b!1176494 m!1353957))

(assert (=> b!1176494 m!1353913))

(declare-fun m!1353959 () Bool)

(assert (=> b!1176494 m!1353959))

(assert (=> b!1176492 m!1352923))

(assert (=> b!1176489 m!1352915))

(declare-fun m!1353961 () Bool)

(assert (=> b!1176495 m!1353961))

(declare-fun m!1353963 () Bool)

(assert (=> b!1176488 m!1353963))

(assert (=> b!1176490 m!1353007))

(declare-fun m!1353965 () Bool)

(assert (=> d!337119 m!1353965))

(declare-fun m!1353967 () Bool)

(assert (=> d!337119 m!1353967))

(declare-fun m!1353969 () Bool)

(assert (=> d!337119 m!1353969))

(declare-fun m!1353971 () Bool)

(assert (=> d!337119 m!1353971))

(declare-fun m!1353973 () Bool)

(assert (=> d!337119 m!1353973))

(assert (=> d!337119 m!1352845))

(assert (=> d!337119 m!1352915))

(assert (=> d!337119 m!1353967))

(assert (=> d!337119 m!1353965))

(declare-fun m!1353975 () Bool)

(assert (=> d!337119 m!1353975))

(declare-fun m!1353977 () Bool)

(assert (=> d!337119 m!1353977))

(declare-fun m!1353979 () Bool)

(assert (=> b!1176491 m!1353979))

(assert (=> b!1175923 d!337119))

(declare-fun d!337123 () Bool)

(declare-fun res!531989 () Bool)

(declare-fun e!755003 () Bool)

(assert (=> d!337123 (=> res!531989 e!755003)))

(assert (=> d!337123 (= res!531989 (or (not ((_ is Cons!11634) lt!405307)) (not ((_ is Cons!11634) (t!111122 lt!405307)))))))

(assert (=> d!337123 (= (tokensListTwoByTwoPredicateSeparableList!120 Lexer!1722 lt!405307 (rules!9714 thiss!10527)) e!755003)))

(declare-fun b!1176521 () Bool)

(declare-fun e!755004 () Bool)

(assert (=> b!1176521 (= e!755003 e!755004)))

(declare-fun res!531990 () Bool)

(assert (=> b!1176521 (=> (not res!531990) (not e!755004))))

(assert (=> b!1176521 (= res!531990 (separableTokensPredicate!146 Lexer!1722 (h!17035 lt!405307) (h!17035 (t!111122 lt!405307)) (rules!9714 thiss!10527)))))

(declare-fun lt!405876 () Unit!17958)

(declare-fun Unit!17982 () Unit!17958)

(assert (=> b!1176521 (= lt!405876 Unit!17982)))

(assert (=> b!1176521 (> (size!9193 (charsOf!1084 (h!17035 (t!111122 lt!405307)))) 0)))

(declare-fun lt!405871 () Unit!17958)

(declare-fun Unit!17983 () Unit!17958)

(assert (=> b!1176521 (= lt!405871 Unit!17983)))

(assert (=> b!1176521 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 (t!111122 lt!405307)))))

(declare-fun lt!405873 () Unit!17958)

(declare-fun Unit!17984 () Unit!17958)

(assert (=> b!1176521 (= lt!405873 Unit!17984)))

(assert (=> b!1176521 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 lt!405307))))

(declare-fun lt!405874 () Unit!17958)

(declare-fun lt!405875 () Unit!17958)

(assert (=> b!1176521 (= lt!405874 lt!405875)))

(assert (=> b!1176521 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 (t!111122 lt!405307)))))

(assert (=> b!1176521 (= lt!405875 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!305 Lexer!1722 (rules!9714 thiss!10527) lt!405307 (h!17035 (t!111122 lt!405307))))))

(declare-fun lt!405877 () Unit!17958)

(declare-fun lt!405872 () Unit!17958)

(assert (=> b!1176521 (= lt!405877 lt!405872)))

(assert (=> b!1176521 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 lt!405307))))

(assert (=> b!1176521 (= lt!405872 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!305 Lexer!1722 (rules!9714 thiss!10527) lt!405307 (h!17035 lt!405307)))))

(declare-fun b!1176522 () Bool)

(assert (=> b!1176522 (= e!755004 (tokensListTwoByTwoPredicateSeparableList!120 Lexer!1722 (Cons!11634 (h!17035 (t!111122 lt!405307)) (t!111122 (t!111122 lt!405307))) (rules!9714 thiss!10527)))))

(assert (= (and d!337123 (not res!531989)) b!1176521))

(assert (= (and b!1176521 res!531990) b!1176522))

(declare-fun m!1353991 () Bool)

(assert (=> b!1176521 m!1353991))

(declare-fun m!1353993 () Bool)

(assert (=> b!1176521 m!1353993))

(declare-fun m!1353995 () Bool)

(assert (=> b!1176521 m!1353995))

(assert (=> b!1176521 m!1352897))

(declare-fun m!1353997 () Bool)

(assert (=> b!1176521 m!1353997))

(assert (=> b!1176521 m!1353997))

(declare-fun m!1353999 () Bool)

(assert (=> b!1176521 m!1353999))

(declare-fun m!1354001 () Bool)

(assert (=> b!1176521 m!1354001))

(declare-fun m!1354003 () Bool)

(assert (=> b!1176522 m!1354003))

(assert (=> b!1175902 d!337123))

(declare-fun bs!286630 () Bool)

(declare-fun d!337127 () Bool)

(assert (= bs!286630 (and d!337127 d!336973)))

(declare-fun lambda!48534 () Int)

(assert (=> bs!286630 (= lambda!48534 lambda!48520)))

(declare-fun bs!286631 () Bool)

(assert (= bs!286631 (and d!337127 b!1176178)))

(assert (=> bs!286631 (= lambda!48534 lambda!48519)))

(declare-fun bs!286632 () Bool)

(assert (= bs!286632 (and d!337127 d!337105)))

(assert (=> bs!286632 (= lambda!48534 lambda!48532)))

(declare-fun bs!286633 () Bool)

(assert (= bs!286633 (and d!337127 d!337107)))

(assert (=> bs!286633 (= lambda!48534 lambda!48533)))

(declare-fun bs!286634 () Bool)

(assert (= bs!286634 (and d!337127 b!1176217)))

(assert (=> bs!286634 (= lambda!48534 lambda!48523)))

(declare-fun bs!286635 () Bool)

(assert (= bs!286635 (and d!337127 d!337045)))

(assert (=> bs!286635 (= lambda!48534 lambda!48526)))

(declare-fun bs!286636 () Bool)

(assert (= bs!286636 (and d!337127 d!336899)))

(assert (=> bs!286636 (= lambda!48534 lambda!48508)))

(declare-fun bs!286637 () Bool)

(assert (= bs!286637 (and d!337127 d!337049)))

(assert (=> bs!286637 (= lambda!48534 lambda!48527)))

(declare-fun bs!286638 () Bool)

(assert (= bs!286638 (and d!337127 b!1175910)))

(assert (=> bs!286638 (= lambda!48534 lambda!48501)))

(declare-fun b!1176527 () Bool)

(declare-fun e!755009 () Bool)

(assert (=> b!1176527 (= e!755009 true)))

(declare-fun b!1176526 () Bool)

(declare-fun e!755008 () Bool)

(assert (=> b!1176526 (= e!755008 e!755009)))

(declare-fun b!1176525 () Bool)

(declare-fun e!755007 () Bool)

(assert (=> b!1176525 (= e!755007 e!755008)))

(assert (=> d!337127 e!755007))

(assert (= b!1176526 b!1176527))

(assert (= b!1176525 b!1176526))

(assert (= (and d!337127 ((_ is Cons!11635) (rules!9714 thiss!10527))) b!1176525))

(assert (=> b!1176527 (< (dynLambda!5162 order!7173 (toValue!3130 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48534))))

(assert (=> b!1176527 (< (dynLambda!5164 order!7177 (toChars!2989 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48534))))

(assert (=> d!337127 true))

(declare-fun lt!405878 () Bool)

(assert (=> d!337127 (= lt!405878 (forall!3094 (t!111122 lt!405307) lambda!48534))))

(declare-fun e!755005 () Bool)

(assert (=> d!337127 (= lt!405878 e!755005)))

(declare-fun res!531991 () Bool)

(assert (=> d!337127 (=> res!531991 e!755005)))

(assert (=> d!337127 (= res!531991 (not ((_ is Cons!11634) (t!111122 lt!405307))))))

(assert (=> d!337127 (not (isEmpty!7057 (rules!9714 thiss!10527)))))

(assert (=> d!337127 (= (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) (t!111122 lt!405307)) lt!405878)))

(declare-fun b!1176523 () Bool)

(declare-fun e!755006 () Bool)

(assert (=> b!1176523 (= e!755005 e!755006)))

(declare-fun res!531992 () Bool)

(assert (=> b!1176523 (=> (not res!531992) (not e!755006))))

(assert (=> b!1176523 (= res!531992 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 (t!111122 lt!405307))))))

(declare-fun b!1176524 () Bool)

(assert (=> b!1176524 (= e!755006 (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) (t!111122 (t!111122 lt!405307))))))

(assert (= (and d!337127 (not res!531991)) b!1176523))

(assert (= (and b!1176523 res!531992) b!1176524))

(declare-fun m!1354005 () Bool)

(assert (=> d!337127 m!1354005))

(assert (=> d!337127 m!1353007))

(assert (=> b!1176523 m!1353991))

(declare-fun m!1354007 () Bool)

(assert (=> b!1176524 m!1354007))

(assert (=> b!1175906 d!337127))

(declare-fun d!337129 () Bool)

(declare-fun res!531995 () Bool)

(declare-fun e!755012 () Bool)

(assert (=> d!337129 (=> (not res!531995) (not e!755012))))

(declare-fun rulesValid!721 (LexerInterface!1724 List!11659) Bool)

(assert (=> d!337129 (= res!531995 (rulesValid!721 Lexer!1722 (rules!9714 thiss!10527)))))

(assert (=> d!337129 (= (rulesInvariant!1598 Lexer!1722 (rules!9714 thiss!10527)) e!755012)))

(declare-fun b!1176530 () Bool)

(declare-datatypes ((List!11661 0))(
  ( (Nil!11637) (Cons!11637 (h!17038 String!14063) (t!111153 List!11661)) )
))
(declare-fun noDuplicateTag!721 (LexerInterface!1724 List!11659 List!11661) Bool)

(assert (=> b!1176530 (= e!755012 (noDuplicateTag!721 Lexer!1722 (rules!9714 thiss!10527) Nil!11637))))

(assert (= (and d!337129 res!531995) b!1176530))

(declare-fun m!1354009 () Bool)

(assert (=> d!337129 m!1354009))

(declare-fun m!1354011 () Bool)

(assert (=> b!1176530 m!1354011))

(assert (=> b!1175905 d!337129))

(declare-fun d!337131 () Bool)

(declare-fun e!755030 () Bool)

(assert (=> d!337131 e!755030))

(declare-fun res!532012 () Bool)

(assert (=> d!337131 (=> (not res!532012) (not e!755030))))

(assert (=> d!337131 (= res!532012 (rulesInvariant!1598 Lexer!1722 (rules!9714 thiss!10527)))))

(declare-fun Unit!17985 () Unit!17958)

(assert (=> d!337131 (= (lemmaInvariant!216 thiss!10527) Unit!17985)))

(declare-fun b!1176550 () Bool)

(declare-fun res!532013 () Bool)

(assert (=> b!1176550 (=> (not res!532013) (not e!755030))))

(assert (=> b!1176550 (= res!532013 (rulesProduceEachTokenIndividually!762 Lexer!1722 (rules!9714 thiss!10527) (tokens!1682 thiss!10527)))))

(declare-fun b!1176551 () Bool)

(assert (=> b!1176551 (= e!755030 (separableTokens!160 Lexer!1722 (tokens!1682 thiss!10527) (rules!9714 thiss!10527)))))

(assert (= (and d!337131 res!532012) b!1176550))

(assert (= (and b!1176550 res!532013) b!1176551))

(assert (=> d!337131 m!1352923))

(assert (=> b!1176550 m!1352843))

(assert (=> b!1176551 m!1353087))

(assert (=> b!1175905 d!337131))

(declare-fun d!337135 () Bool)

(declare-fun lt!405901 () Bool)

(declare-fun e!755032 () Bool)

(assert (=> d!337135 (= lt!405901 e!755032)))

(declare-fun res!532016 () Bool)

(assert (=> d!337135 (=> (not res!532016) (not e!755032))))

(assert (=> d!337135 (= res!532016 (= (list!4302 (_1!6881 (lex!722 Lexer!1722 (rules!9714 thiss!10527) (print!659 Lexer!1722 (singletonSeq!699 (h!17035 lt!405316)))))) (list!4302 (singletonSeq!699 (h!17035 lt!405316)))))))

(declare-fun e!755031 () Bool)

(assert (=> d!337135 (= lt!405901 e!755031)))

(declare-fun res!532014 () Bool)

(assert (=> d!337135 (=> (not res!532014) (not e!755031))))

(declare-fun lt!405900 () tuple2!12068)

(assert (=> d!337135 (= res!532014 (= (size!9192 (_1!6881 lt!405900)) 1))))

(assert (=> d!337135 (= lt!405900 (lex!722 Lexer!1722 (rules!9714 thiss!10527) (print!659 Lexer!1722 (singletonSeq!699 (h!17035 lt!405316)))))))

(assert (=> d!337135 (not (isEmpty!7057 (rules!9714 thiss!10527)))))

(assert (=> d!337135 (= (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 lt!405316)) lt!405901)))

(declare-fun b!1176552 () Bool)

(declare-fun res!532015 () Bool)

(assert (=> b!1176552 (=> (not res!532015) (not e!755031))))

(assert (=> b!1176552 (= res!532015 (= (apply!2555 (_1!6881 lt!405900) 0) (h!17035 lt!405316)))))

(declare-fun b!1176553 () Bool)

(assert (=> b!1176553 (= e!755031 (isEmpty!7058 (_2!6881 lt!405900)))))

(declare-fun b!1176554 () Bool)

(assert (=> b!1176554 (= e!755032 (isEmpty!7058 (_2!6881 (lex!722 Lexer!1722 (rules!9714 thiss!10527) (print!659 Lexer!1722 (singletonSeq!699 (h!17035 lt!405316)))))))))

(assert (= (and d!337135 res!532014) b!1176552))

(assert (= (and b!1176552 res!532015) b!1176553))

(assert (= (and d!337135 res!532016) b!1176554))

(declare-fun m!1354031 () Bool)

(assert (=> d!337135 m!1354031))

(declare-fun m!1354033 () Bool)

(assert (=> d!337135 m!1354033))

(declare-fun m!1354035 () Bool)

(assert (=> d!337135 m!1354035))

(assert (=> d!337135 m!1353007))

(declare-fun m!1354037 () Bool)

(assert (=> d!337135 m!1354037))

(assert (=> d!337135 m!1354031))

(declare-fun m!1354039 () Bool)

(assert (=> d!337135 m!1354039))

(assert (=> d!337135 m!1354031))

(assert (=> d!337135 m!1354039))

(declare-fun m!1354041 () Bool)

(assert (=> d!337135 m!1354041))

(declare-fun m!1354043 () Bool)

(assert (=> b!1176552 m!1354043))

(declare-fun m!1354045 () Bool)

(assert (=> b!1176553 m!1354045))

(assert (=> b!1176554 m!1354031))

(assert (=> b!1176554 m!1354031))

(assert (=> b!1176554 m!1354039))

(assert (=> b!1176554 m!1354039))

(assert (=> b!1176554 m!1354041))

(declare-fun m!1354047 () Bool)

(assert (=> b!1176554 m!1354047))

(assert (=> b!1175909 d!337135))

(declare-fun d!337137 () Bool)

(assert (=> d!337137 (= (inv!15379 (tokens!1682 thiss!10527)) (isBalanced!1082 (c!196023 (tokens!1682 thiss!10527))))))

(declare-fun bs!286650 () Bool)

(assert (= bs!286650 d!337137))

(assert (=> bs!286650 m!1352949))

(assert (=> b!1175908 d!337137))

(declare-fun d!337139 () Bool)

(declare-fun lt!405924 () Bool)

(assert (=> d!337139 (= lt!405924 (tokensListTwoByTwoPredicateSeparableList!120 Lexer!1722 (dropList!335 (tokens!1682 thiss!10527) 1) (rules!9714 thiss!10527)))))

(declare-fun lt!405919 () Unit!17958)

(declare-fun lt!405910 () Unit!17958)

(assert (=> d!337139 (= lt!405919 lt!405910)))

(declare-fun lt!405929 () List!11658)

(assert (=> d!337139 (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) lt!405929)))

(declare-fun lt!405930 () List!11658)

(assert (=> d!337139 (= lt!405910 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!41 Lexer!1722 (rules!9714 thiss!10527) lt!405930 lt!405929))))

(declare-fun e!755036 () Bool)

(assert (=> d!337139 e!755036))

(declare-fun res!532024 () Bool)

(assert (=> d!337139 (=> (not res!532024) (not e!755036))))

(assert (=> d!337139 (= res!532024 ((_ is Lexer!1722) Lexer!1722))))

(assert (=> d!337139 (= lt!405929 (dropList!335 (tokens!1682 thiss!10527) 1))))

(assert (=> d!337139 (= lt!405930 (list!4302 (tokens!1682 thiss!10527)))))

(declare-fun lt!405917 () Unit!17958)

(declare-fun lt!405914 () Unit!17958)

(assert (=> d!337139 (= lt!405917 lt!405914)))

(declare-fun lt!405933 () List!11658)

(assert (=> d!337139 (subseq!279 (drop!501 lt!405933 1) lt!405933)))

(assert (=> d!337139 (= lt!405914 (lemmaDropSubSeq!41 lt!405933 1))))

(declare-fun e!755035 () Bool)

(assert (=> d!337139 e!755035))

(declare-fun res!532020 () Bool)

(assert (=> d!337139 (=> (not res!532020) (not e!755035))))

(assert (=> d!337139 (= res!532020 (>= 1 0))))

(assert (=> d!337139 (= lt!405933 (list!4302 (tokens!1682 thiss!10527)))))

(declare-fun e!755033 () Bool)

(assert (=> d!337139 (= lt!405924 e!755033)))

(declare-fun res!532023 () Bool)

(assert (=> d!337139 (=> res!532023 e!755033)))

(assert (=> d!337139 (= res!532023 (not (< 1 (- (size!9192 (tokens!1682 thiss!10527)) 1))))))

(declare-fun e!755037 () Bool)

(assert (=> d!337139 e!755037))

(declare-fun res!532018 () Bool)

(assert (=> d!337139 (=> (not res!532018) (not e!755037))))

(assert (=> d!337139 (= res!532018 (>= 1 0))))

(assert (=> d!337139 (= (tokensListTwoByTwoPredicateSeparable!85 Lexer!1722 (tokens!1682 thiss!10527) 1 (rules!9714 thiss!10527)) lt!405924)))

(declare-fun b!1176555 () Bool)

(declare-fun res!532021 () Bool)

(assert (=> b!1176555 (=> (not res!532021) (not e!755036))))

(assert (=> b!1176555 (= res!532021 (subseq!279 lt!405929 lt!405930))))

(declare-fun b!1176556 () Bool)

(assert (=> b!1176556 (= e!755037 (<= 1 (size!9192 (tokens!1682 thiss!10527))))))

(declare-fun b!1176557 () Bool)

(declare-fun res!532022 () Bool)

(assert (=> b!1176557 (=> (not res!532022) (not e!755036))))

(assert (=> b!1176557 (= res!532022 (not (isEmpty!7057 (rules!9714 thiss!10527))))))

(declare-fun b!1176558 () Bool)

(declare-fun e!755034 () Bool)

(assert (=> b!1176558 (= e!755034 (tokensListTwoByTwoPredicateSeparable!85 Lexer!1722 (tokens!1682 thiss!10527) (+ 1 1) (rules!9714 thiss!10527)))))

(declare-fun b!1176559 () Bool)

(declare-fun res!532017 () Bool)

(assert (=> b!1176559 (=> (not res!532017) (not e!755036))))

(assert (=> b!1176559 (= res!532017 (rulesInvariant!1598 Lexer!1722 (rules!9714 thiss!10527)))))

(declare-fun b!1176560 () Bool)

(assert (=> b!1176560 (= e!755036 (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) lt!405930))))

(declare-fun b!1176561 () Bool)

(assert (=> b!1176561 (= e!755033 e!755034)))

(declare-fun res!532019 () Bool)

(assert (=> b!1176561 (=> (not res!532019) (not e!755034))))

(assert (=> b!1176561 (= res!532019 (separableTokensPredicate!146 Lexer!1722 (apply!2555 (tokens!1682 thiss!10527) 1) (apply!2555 (tokens!1682 thiss!10527) (+ 1 1)) (rules!9714 thiss!10527)))))

(declare-fun lt!405918 () Unit!17958)

(declare-fun Unit!17986 () Unit!17958)

(assert (=> b!1176561 (= lt!405918 Unit!17986)))

(assert (=> b!1176561 (> (size!9193 (charsOf!1084 (apply!2555 (tokens!1682 thiss!10527) (+ 1 1)))) 0)))

(declare-fun lt!405928 () Unit!17958)

(declare-fun Unit!17987 () Unit!17958)

(assert (=> b!1176561 (= lt!405928 Unit!17987)))

(assert (=> b!1176561 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (apply!2555 (tokens!1682 thiss!10527) (+ 1 1)))))

(declare-fun lt!405922 () Unit!17958)

(declare-fun Unit!17988 () Unit!17958)

(assert (=> b!1176561 (= lt!405922 Unit!17988)))

(assert (=> b!1176561 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (apply!2555 (tokens!1682 thiss!10527) 1))))

(declare-fun lt!405904 () Unit!17958)

(declare-fun lt!405934 () Unit!17958)

(assert (=> b!1176561 (= lt!405904 lt!405934)))

(declare-fun lt!405915 () Token!3720)

(assert (=> b!1176561 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) lt!405915)))

(declare-fun lt!405931 () List!11658)

(assert (=> b!1176561 (= lt!405934 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!305 Lexer!1722 (rules!9714 thiss!10527) lt!405931 lt!405915))))

(assert (=> b!1176561 (= lt!405915 (apply!2555 (tokens!1682 thiss!10527) (+ 1 1)))))

(assert (=> b!1176561 (= lt!405931 (list!4302 (tokens!1682 thiss!10527)))))

(declare-fun lt!405921 () Unit!17958)

(declare-fun lt!405913 () Unit!17958)

(assert (=> b!1176561 (= lt!405921 lt!405913)))

(declare-fun lt!405903 () Token!3720)

(assert (=> b!1176561 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) lt!405903)))

(declare-fun lt!405912 () List!11658)

(assert (=> b!1176561 (= lt!405913 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!305 Lexer!1722 (rules!9714 thiss!10527) lt!405912 lt!405903))))

(assert (=> b!1176561 (= lt!405903 (apply!2555 (tokens!1682 thiss!10527) 1))))

(assert (=> b!1176561 (= lt!405912 (list!4302 (tokens!1682 thiss!10527)))))

(declare-fun lt!405920 () Unit!17958)

(declare-fun lt!405902 () Unit!17958)

(assert (=> b!1176561 (= lt!405920 lt!405902)))

(declare-fun lt!405906 () List!11658)

(declare-fun lt!405905 () Int)

(assert (=> b!1176561 (= (tail!1702 (drop!501 lt!405906 lt!405905)) (drop!501 lt!405906 (+ lt!405905 1)))))

(assert (=> b!1176561 (= lt!405902 (lemmaDropTail!375 lt!405906 lt!405905))))

(assert (=> b!1176561 (= lt!405905 (+ 1 1))))

(assert (=> b!1176561 (= lt!405906 (list!4302 (tokens!1682 thiss!10527)))))

(declare-fun lt!405927 () Unit!17958)

(declare-fun lt!405916 () Unit!17958)

(assert (=> b!1176561 (= lt!405927 lt!405916)))

(declare-fun lt!405925 () List!11658)

(assert (=> b!1176561 (= (tail!1702 (drop!501 lt!405925 1)) (drop!501 lt!405925 (+ 1 1)))))

(assert (=> b!1176561 (= lt!405916 (lemmaDropTail!375 lt!405925 1))))

(assert (=> b!1176561 (= lt!405925 (list!4302 (tokens!1682 thiss!10527)))))

(declare-fun lt!405911 () Unit!17958)

(declare-fun lt!405926 () Unit!17958)

(assert (=> b!1176561 (= lt!405911 lt!405926)))

(declare-fun lt!405932 () List!11658)

(declare-fun lt!405909 () Int)

(assert (=> b!1176561 (= (head!2118 (drop!501 lt!405932 lt!405909)) (apply!2556 lt!405932 lt!405909))))

(assert (=> b!1176561 (= lt!405926 (lemmaDropApply!387 lt!405932 lt!405909))))

(assert (=> b!1176561 (= lt!405909 (+ 1 1))))

(assert (=> b!1176561 (= lt!405932 (list!4302 (tokens!1682 thiss!10527)))))

(declare-fun lt!405907 () Unit!17958)

(declare-fun lt!405908 () Unit!17958)

(assert (=> b!1176561 (= lt!405907 lt!405908)))

(declare-fun lt!405923 () List!11658)

(assert (=> b!1176561 (= (head!2118 (drop!501 lt!405923 1)) (apply!2556 lt!405923 1))))

(assert (=> b!1176561 (= lt!405908 (lemmaDropApply!387 lt!405923 1))))

(assert (=> b!1176561 (= lt!405923 (list!4302 (tokens!1682 thiss!10527)))))

(declare-fun b!1176562 () Bool)

(assert (=> b!1176562 (= e!755035 (<= 1 (size!9196 lt!405933)))))

(assert (= (and d!337139 res!532018) b!1176556))

(assert (= (and d!337139 (not res!532023)) b!1176561))

(assert (= (and b!1176561 res!532019) b!1176558))

(assert (= (and d!337139 res!532020) b!1176562))

(assert (= (and d!337139 res!532024) b!1176557))

(assert (= (and b!1176557 res!532022) b!1176559))

(assert (= (and b!1176559 res!532017) b!1176555))

(assert (= (and b!1176555 res!532021) b!1176560))

(declare-fun m!1354049 () Bool)

(assert (=> b!1176560 m!1354049))

(declare-fun m!1354051 () Bool)

(assert (=> b!1176561 m!1354051))

(declare-fun m!1354053 () Bool)

(assert (=> b!1176561 m!1354053))

(declare-fun m!1354055 () Bool)

(assert (=> b!1176561 m!1354055))

(declare-fun m!1354057 () Bool)

(assert (=> b!1176561 m!1354057))

(declare-fun m!1354059 () Bool)

(assert (=> b!1176561 m!1354059))

(declare-fun m!1354061 () Bool)

(assert (=> b!1176561 m!1354061))

(assert (=> b!1176561 m!1352829))

(declare-fun m!1354063 () Bool)

(assert (=> b!1176561 m!1354063))

(declare-fun m!1354065 () Bool)

(assert (=> b!1176561 m!1354065))

(assert (=> b!1176561 m!1352829))

(assert (=> b!1176561 m!1354055))

(declare-fun m!1354067 () Bool)

(assert (=> b!1176561 m!1354067))

(declare-fun m!1354069 () Bool)

(assert (=> b!1176561 m!1354069))

(declare-fun m!1354071 () Bool)

(assert (=> b!1176561 m!1354071))

(assert (=> b!1176561 m!1352829))

(declare-fun m!1354073 () Bool)

(assert (=> b!1176561 m!1354073))

(declare-fun m!1354075 () Bool)

(assert (=> b!1176561 m!1354075))

(declare-fun m!1354077 () Bool)

(assert (=> b!1176561 m!1354077))

(declare-fun m!1354079 () Bool)

(assert (=> b!1176561 m!1354079))

(declare-fun m!1354081 () Bool)

(assert (=> b!1176561 m!1354081))

(declare-fun m!1354083 () Bool)

(assert (=> b!1176561 m!1354083))

(declare-fun m!1354085 () Bool)

(assert (=> b!1176561 m!1354085))

(assert (=> b!1176561 m!1354055))

(assert (=> b!1176561 m!1354075))

(assert (=> b!1176561 m!1354083))

(declare-fun m!1354087 () Bool)

(assert (=> b!1176561 m!1354087))

(declare-fun m!1354089 () Bool)

(assert (=> b!1176561 m!1354089))

(declare-fun m!1354091 () Bool)

(assert (=> b!1176561 m!1354091))

(declare-fun m!1354093 () Bool)

(assert (=> b!1176561 m!1354093))

(declare-fun m!1354095 () Bool)

(assert (=> b!1176561 m!1354095))

(assert (=> b!1176561 m!1352845))

(assert (=> b!1176561 m!1354055))

(assert (=> b!1176561 m!1354053))

(declare-fun m!1354097 () Bool)

(assert (=> b!1176561 m!1354097))

(assert (=> b!1176561 m!1354079))

(declare-fun m!1354099 () Bool)

(assert (=> b!1176561 m!1354099))

(assert (=> b!1176561 m!1354069))

(declare-fun m!1354101 () Bool)

(assert (=> b!1176561 m!1354101))

(assert (=> b!1176559 m!1352923))

(assert (=> b!1176556 m!1352915))

(declare-fun m!1354103 () Bool)

(assert (=> b!1176562 m!1354103))

(declare-fun m!1354105 () Bool)

(assert (=> b!1176555 m!1354105))

(assert (=> b!1176557 m!1353007))

(declare-fun m!1354107 () Bool)

(assert (=> d!337139 m!1354107))

(declare-fun m!1354109 () Bool)

(assert (=> d!337139 m!1354109))

(declare-fun m!1354111 () Bool)

(assert (=> d!337139 m!1354111))

(declare-fun m!1354113 () Bool)

(assert (=> d!337139 m!1354113))

(declare-fun m!1354115 () Bool)

(assert (=> d!337139 m!1354115))

(assert (=> d!337139 m!1352845))

(assert (=> d!337139 m!1352915))

(assert (=> d!337139 m!1354109))

(assert (=> d!337139 m!1354107))

(declare-fun m!1354117 () Bool)

(assert (=> d!337139 m!1354117))

(declare-fun m!1354119 () Bool)

(assert (=> d!337139 m!1354119))

(declare-fun m!1354121 () Bool)

(assert (=> b!1176558 m!1354121))

(assert (=> b!1175907 d!337139))

(declare-fun bs!286666 () Bool)

(declare-fun d!337141 () Bool)

(assert (= bs!286666 (and d!337141 d!336973)))

(declare-fun lambda!48543 () Int)

(assert (=> bs!286666 (= lambda!48543 lambda!48520)))

(declare-fun bs!286667 () Bool)

(assert (= bs!286667 (and d!337141 d!337127)))

(assert (=> bs!286667 (= lambda!48543 lambda!48534)))

(declare-fun bs!286668 () Bool)

(assert (= bs!286668 (and d!337141 b!1176178)))

(assert (=> bs!286668 (= lambda!48543 lambda!48519)))

(declare-fun bs!286669 () Bool)

(assert (= bs!286669 (and d!337141 d!337105)))

(assert (=> bs!286669 (= lambda!48543 lambda!48532)))

(declare-fun bs!286670 () Bool)

(assert (= bs!286670 (and d!337141 d!337107)))

(assert (=> bs!286670 (= lambda!48543 lambda!48533)))

(declare-fun bs!286671 () Bool)

(assert (= bs!286671 (and d!337141 b!1176217)))

(assert (=> bs!286671 (= lambda!48543 lambda!48523)))

(declare-fun bs!286672 () Bool)

(assert (= bs!286672 (and d!337141 d!337045)))

(assert (=> bs!286672 (= lambda!48543 lambda!48526)))

(declare-fun bs!286673 () Bool)

(assert (= bs!286673 (and d!337141 d!336899)))

(assert (=> bs!286673 (= lambda!48543 lambda!48508)))

(declare-fun bs!286674 () Bool)

(assert (= bs!286674 (and d!337141 d!337049)))

(assert (=> bs!286674 (= lambda!48543 lambda!48527)))

(declare-fun bs!286675 () Bool)

(assert (= bs!286675 (and d!337141 b!1175910)))

(assert (=> bs!286675 (= lambda!48543 lambda!48501)))

(declare-fun b!1176629 () Bool)

(declare-fun e!755084 () Bool)

(assert (=> b!1176629 (= e!755084 true)))

(declare-fun b!1176628 () Bool)

(declare-fun e!755083 () Bool)

(assert (=> b!1176628 (= e!755083 e!755084)))

(declare-fun b!1176627 () Bool)

(declare-fun e!755082 () Bool)

(assert (=> b!1176627 (= e!755082 e!755083)))

(assert (=> d!337141 e!755082))

(assert (= b!1176628 b!1176629))

(assert (= b!1176627 b!1176628))

(assert (= (and d!337141 ((_ is Cons!11635) (rules!9714 thiss!10527))) b!1176627))

(assert (=> b!1176629 (< (dynLambda!5162 order!7173 (toValue!3130 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48543))))

(assert (=> b!1176629 (< (dynLambda!5164 order!7177 (toChars!2989 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48543))))

(assert (=> d!337141 true))

(declare-fun e!755081 () Bool)

(assert (=> d!337141 e!755081))

(declare-fun res!532044 () Bool)

(assert (=> d!337141 (=> (not res!532044) (not e!755081))))

(declare-fun lt!405940 () Bool)

(assert (=> d!337141 (= res!532044 (= lt!405940 (forall!3094 (list!4302 lt!405295) lambda!48543)))))

(assert (=> d!337141 (= lt!405940 (forall!3093 lt!405295 lambda!48543))))

(assert (=> d!337141 (not (isEmpty!7057 (rules!9714 thiss!10527)))))

(assert (=> d!337141 (= (rulesProduceEachTokenIndividually!762 Lexer!1722 (rules!9714 thiss!10527) lt!405295) lt!405940)))

(declare-fun b!1176626 () Bool)

(assert (=> b!1176626 (= e!755081 (= lt!405940 (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) (list!4302 lt!405295))))))

(assert (= (and d!337141 res!532044) b!1176626))

(assert (=> d!337141 m!1352901))

(assert (=> d!337141 m!1352901))

(declare-fun m!1354165 () Bool)

(assert (=> d!337141 m!1354165))

(declare-fun m!1354167 () Bool)

(assert (=> d!337141 m!1354167))

(assert (=> d!337141 m!1353007))

(assert (=> b!1176626 m!1352901))

(assert (=> b!1176626 m!1352901))

(declare-fun m!1354169 () Bool)

(assert (=> b!1176626 m!1354169))

(assert (=> b!1175912 d!337141))

(assert (=> b!1175912 d!337111))

(declare-fun d!337155 () Bool)

(declare-fun res!532045 () Bool)

(declare-fun e!755085 () Bool)

(assert (=> d!337155 (=> res!532045 e!755085)))

(assert (=> d!337155 (= res!532045 (or (not ((_ is Cons!11634) lt!405296)) (not ((_ is Cons!11634) (t!111122 lt!405296)))))))

(assert (=> d!337155 (= (tokensListTwoByTwoPredicateSeparableList!120 Lexer!1722 lt!405296 (rules!9714 thiss!10527)) e!755085)))

(declare-fun b!1176630 () Bool)

(declare-fun e!755086 () Bool)

(assert (=> b!1176630 (= e!755085 e!755086)))

(declare-fun res!532046 () Bool)

(assert (=> b!1176630 (=> (not res!532046) (not e!755086))))

(assert (=> b!1176630 (= res!532046 (separableTokensPredicate!146 Lexer!1722 (h!17035 lt!405296) (h!17035 (t!111122 lt!405296)) (rules!9714 thiss!10527)))))

(declare-fun lt!405946 () Unit!17958)

(declare-fun Unit!17989 () Unit!17958)

(assert (=> b!1176630 (= lt!405946 Unit!17989)))

(assert (=> b!1176630 (> (size!9193 (charsOf!1084 (h!17035 (t!111122 lt!405296)))) 0)))

(declare-fun lt!405941 () Unit!17958)

(declare-fun Unit!17990 () Unit!17958)

(assert (=> b!1176630 (= lt!405941 Unit!17990)))

(assert (=> b!1176630 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 (t!111122 lt!405296)))))

(declare-fun lt!405943 () Unit!17958)

(declare-fun Unit!17991 () Unit!17958)

(assert (=> b!1176630 (= lt!405943 Unit!17991)))

(assert (=> b!1176630 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 lt!405296))))

(declare-fun lt!405944 () Unit!17958)

(declare-fun lt!405945 () Unit!17958)

(assert (=> b!1176630 (= lt!405944 lt!405945)))

(assert (=> b!1176630 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 (t!111122 lt!405296)))))

(assert (=> b!1176630 (= lt!405945 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!305 Lexer!1722 (rules!9714 thiss!10527) lt!405296 (h!17035 (t!111122 lt!405296))))))

(declare-fun lt!405947 () Unit!17958)

(declare-fun lt!405942 () Unit!17958)

(assert (=> b!1176630 (= lt!405947 lt!405942)))

(assert (=> b!1176630 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 lt!405296))))

(assert (=> b!1176630 (= lt!405942 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!305 Lexer!1722 (rules!9714 thiss!10527) lt!405296 (h!17035 lt!405296)))))

(declare-fun b!1176631 () Bool)

(assert (=> b!1176631 (= e!755086 (tokensListTwoByTwoPredicateSeparableList!120 Lexer!1722 (Cons!11634 (h!17035 (t!111122 lt!405296)) (t!111122 (t!111122 lt!405296))) (rules!9714 thiss!10527)))))

(assert (= (and d!337155 (not res!532045)) b!1176630))

(assert (= (and b!1176630 res!532046) b!1176631))

(assert (=> b!1176630 m!1353805))

(declare-fun m!1354171 () Bool)

(assert (=> b!1176630 m!1354171))

(declare-fun m!1354173 () Bool)

(assert (=> b!1176630 m!1354173))

(assert (=> b!1176630 m!1352859))

(declare-fun m!1354175 () Bool)

(assert (=> b!1176630 m!1354175))

(assert (=> b!1176630 m!1354175))

(declare-fun m!1354177 () Bool)

(assert (=> b!1176630 m!1354177))

(declare-fun m!1354179 () Bool)

(assert (=> b!1176630 m!1354179))

(declare-fun m!1354181 () Bool)

(assert (=> b!1176631 m!1354181))

(assert (=> b!1175911 d!337155))

(declare-fun d!337157 () Bool)

(declare-fun lt!405948 () Bool)

(assert (=> d!337157 (= lt!405948 (forall!3094 (list!4302 (tokens!1682 thiss!10527)) lambda!48501))))

(assert (=> d!337157 (= lt!405948 (forall!3096 (c!196023 (tokens!1682 thiss!10527)) lambda!48501))))

(assert (=> d!337157 (= (forall!3093 (tokens!1682 thiss!10527) lambda!48501) lt!405948)))

(declare-fun bs!286676 () Bool)

(assert (= bs!286676 d!337157))

(assert (=> bs!286676 m!1352845))

(assert (=> bs!286676 m!1352845))

(declare-fun m!1354183 () Bool)

(assert (=> bs!286676 m!1354183))

(declare-fun m!1354185 () Bool)

(assert (=> bs!286676 m!1354185))

(assert (=> b!1175910 d!337157))

(declare-fun bs!286677 () Bool)

(declare-fun d!337159 () Bool)

(assert (= bs!286677 (and d!337159 d!337141)))

(declare-fun lambda!48544 () Int)

(assert (=> bs!286677 (= lambda!48544 lambda!48543)))

(declare-fun bs!286678 () Bool)

(assert (= bs!286678 (and d!337159 d!336973)))

(assert (=> bs!286678 (= lambda!48544 lambda!48520)))

(declare-fun bs!286679 () Bool)

(assert (= bs!286679 (and d!337159 d!337127)))

(assert (=> bs!286679 (= lambda!48544 lambda!48534)))

(declare-fun bs!286680 () Bool)

(assert (= bs!286680 (and d!337159 b!1176178)))

(assert (=> bs!286680 (= lambda!48544 lambda!48519)))

(declare-fun bs!286681 () Bool)

(assert (= bs!286681 (and d!337159 d!337105)))

(assert (=> bs!286681 (= lambda!48544 lambda!48532)))

(declare-fun bs!286682 () Bool)

(assert (= bs!286682 (and d!337159 d!337107)))

(assert (=> bs!286682 (= lambda!48544 lambda!48533)))

(declare-fun bs!286683 () Bool)

(assert (= bs!286683 (and d!337159 b!1176217)))

(assert (=> bs!286683 (= lambda!48544 lambda!48523)))

(declare-fun bs!286684 () Bool)

(assert (= bs!286684 (and d!337159 d!337045)))

(assert (=> bs!286684 (= lambda!48544 lambda!48526)))

(declare-fun bs!286685 () Bool)

(assert (= bs!286685 (and d!337159 d!336899)))

(assert (=> bs!286685 (= lambda!48544 lambda!48508)))

(declare-fun bs!286686 () Bool)

(assert (= bs!286686 (and d!337159 d!337049)))

(assert (=> bs!286686 (= lambda!48544 lambda!48527)))

(declare-fun bs!286687 () Bool)

(assert (= bs!286687 (and d!337159 b!1175910)))

(assert (=> bs!286687 (= lambda!48544 lambda!48501)))

(declare-fun b!1176635 () Bool)

(declare-fun e!755090 () Bool)

(assert (=> b!1176635 (= e!755090 true)))

(declare-fun b!1176634 () Bool)

(declare-fun e!755089 () Bool)

(assert (=> b!1176634 (= e!755089 e!755090)))

(declare-fun b!1176633 () Bool)

(declare-fun e!755088 () Bool)

(assert (=> b!1176633 (= e!755088 e!755089)))

(assert (=> d!337159 e!755088))

(assert (= b!1176634 b!1176635))

(assert (= b!1176633 b!1176634))

(assert (= (and d!337159 ((_ is Cons!11635) (rules!9714 thiss!10527))) b!1176633))

(assert (=> b!1176635 (< (dynLambda!5162 order!7173 (toValue!3130 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48544))))

(assert (=> b!1176635 (< (dynLambda!5164 order!7177 (toChars!2989 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48544))))

(assert (=> d!337159 true))

(declare-fun e!755087 () Bool)

(assert (=> d!337159 e!755087))

(declare-fun res!532047 () Bool)

(assert (=> d!337159 (=> (not res!532047) (not e!755087))))

(declare-fun lt!405949 () Bool)

(assert (=> d!337159 (= res!532047 (= lt!405949 (forall!3094 (list!4302 (tokens!1682 thiss!10527)) lambda!48544)))))

(assert (=> d!337159 (= lt!405949 (forall!3093 (tokens!1682 thiss!10527) lambda!48544))))

(assert (=> d!337159 (not (isEmpty!7057 (rules!9714 thiss!10527)))))

(assert (=> d!337159 (= (rulesProduceEachTokenIndividually!762 Lexer!1722 (rules!9714 thiss!10527) (tokens!1682 thiss!10527)) lt!405949)))

(declare-fun b!1176632 () Bool)

(assert (=> b!1176632 (= e!755087 (= lt!405949 (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) (list!4302 (tokens!1682 thiss!10527)))))))

(assert (= (and d!337159 res!532047) b!1176632))

(assert (=> d!337159 m!1352845))

(assert (=> d!337159 m!1352845))

(declare-fun m!1354187 () Bool)

(assert (=> d!337159 m!1354187))

(declare-fun m!1354189 () Bool)

(assert (=> d!337159 m!1354189))

(assert (=> d!337159 m!1353007))

(assert (=> b!1176632 m!1352845))

(assert (=> b!1176632 m!1352845))

(declare-fun m!1354191 () Bool)

(assert (=> b!1176632 m!1354191))

(assert (=> b!1175910 d!337159))

(declare-fun d!337161 () Bool)

(assert (=> d!337161 (= (list!4302 (tokens!1682 thiss!10527)) (list!4304 (c!196023 (tokens!1682 thiss!10527))))))

(declare-fun bs!286688 () Bool)

(assert (= bs!286688 d!337161))

(declare-fun m!1354193 () Bool)

(assert (=> bs!286688 m!1354193))

(assert (=> b!1175910 d!337161))

(declare-fun bs!286689 () Bool)

(declare-fun d!337163 () Bool)

(assert (= bs!286689 (and d!337163 d!337141)))

(declare-fun lambda!48545 () Int)

(assert (=> bs!286689 (= lambda!48545 lambda!48543)))

(declare-fun bs!286690 () Bool)

(assert (= bs!286690 (and d!337163 d!336973)))

(assert (=> bs!286690 (= lambda!48545 lambda!48520)))

(declare-fun bs!286691 () Bool)

(assert (= bs!286691 (and d!337163 d!337127)))

(assert (=> bs!286691 (= lambda!48545 lambda!48534)))

(declare-fun bs!286692 () Bool)

(assert (= bs!286692 (and d!337163 b!1176178)))

(assert (=> bs!286692 (= lambda!48545 lambda!48519)))

(declare-fun bs!286693 () Bool)

(assert (= bs!286693 (and d!337163 d!337105)))

(assert (=> bs!286693 (= lambda!48545 lambda!48532)))

(declare-fun bs!286694 () Bool)

(assert (= bs!286694 (and d!337163 d!337107)))

(assert (=> bs!286694 (= lambda!48545 lambda!48533)))

(declare-fun bs!286695 () Bool)

(assert (= bs!286695 (and d!337163 b!1176217)))

(assert (=> bs!286695 (= lambda!48545 lambda!48523)))

(declare-fun bs!286696 () Bool)

(assert (= bs!286696 (and d!337163 d!337045)))

(assert (=> bs!286696 (= lambda!48545 lambda!48526)))

(declare-fun bs!286697 () Bool)

(assert (= bs!286697 (and d!337163 d!336899)))

(assert (=> bs!286697 (= lambda!48545 lambda!48508)))

(declare-fun bs!286698 () Bool)

(assert (= bs!286698 (and d!337163 d!337159)))

(assert (=> bs!286698 (= lambda!48545 lambda!48544)))

(declare-fun bs!286699 () Bool)

(assert (= bs!286699 (and d!337163 d!337049)))

(assert (=> bs!286699 (= lambda!48545 lambda!48527)))

(declare-fun bs!286700 () Bool)

(assert (= bs!286700 (and d!337163 b!1175910)))

(assert (=> bs!286700 (= lambda!48545 lambda!48501)))

(declare-fun b!1176640 () Bool)

(declare-fun e!755095 () Bool)

(assert (=> b!1176640 (= e!755095 true)))

(declare-fun b!1176639 () Bool)

(declare-fun e!755094 () Bool)

(assert (=> b!1176639 (= e!755094 e!755095)))

(declare-fun b!1176638 () Bool)

(declare-fun e!755093 () Bool)

(assert (=> b!1176638 (= e!755093 e!755094)))

(assert (=> d!337163 e!755093))

(assert (= b!1176639 b!1176640))

(assert (= b!1176638 b!1176639))

(assert (= (and d!337163 ((_ is Cons!11635) (rules!9714 thiss!10527))) b!1176638))

(assert (=> b!1176640 (< (dynLambda!5162 order!7173 (toValue!3130 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48545))))

(assert (=> b!1176640 (< (dynLambda!5164 order!7177 (toChars!2989 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48545))))

(assert (=> d!337163 true))

(declare-fun lt!405950 () Bool)

(assert (=> d!337163 (= lt!405950 (forall!3094 lt!405302 lambda!48545))))

(declare-fun e!755091 () Bool)

(assert (=> d!337163 (= lt!405950 e!755091)))

(declare-fun res!532048 () Bool)

(assert (=> d!337163 (=> res!532048 e!755091)))

(assert (=> d!337163 (= res!532048 (not ((_ is Cons!11634) lt!405302)))))

(assert (=> d!337163 (not (isEmpty!7057 (rules!9714 thiss!10527)))))

(assert (=> d!337163 (= (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) lt!405302) lt!405950)))

(declare-fun b!1176636 () Bool)

(declare-fun e!755092 () Bool)

(assert (=> b!1176636 (= e!755091 e!755092)))

(declare-fun res!532049 () Bool)

(assert (=> b!1176636 (=> (not res!532049) (not e!755092))))

(assert (=> b!1176636 (= res!532049 (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 lt!405302)))))

(declare-fun b!1176637 () Bool)

(assert (=> b!1176637 (= e!755092 (rulesProduceEachTokenIndividuallyList!590 Lexer!1722 (rules!9714 thiss!10527) (t!111122 lt!405302)))))

(assert (= (and d!337163 (not res!532048)) b!1176636))

(assert (= (and b!1176636 res!532049) b!1176637))

(declare-fun m!1354195 () Bool)

(assert (=> d!337163 m!1354195))

(assert (=> d!337163 m!1353007))

(assert (=> b!1176636 m!1352917))

(assert (=> b!1176637 m!1352855))

(assert (=> b!1175910 d!337163))

(declare-fun e!755101 () Bool)

(declare-fun b!1176649 () Bool)

(declare-fun tp!335067 () Bool)

(declare-fun tp!335068 () Bool)

(assert (=> b!1176649 (= e!755101 (and (inv!15380 (left!10173 (c!196023 (tokens!1682 thiss!10527)))) tp!335068 (inv!15380 (right!10503 (c!196023 (tokens!1682 thiss!10527)))) tp!335067))))

(declare-fun b!1176651 () Bool)

(declare-fun e!755100 () Bool)

(declare-fun tp!335069 () Bool)

(assert (=> b!1176651 (= e!755100 tp!335069)))

(declare-fun b!1176650 () Bool)

(declare-fun inv!15389 (IArray!7647) Bool)

(assert (=> b!1176650 (= e!755101 (and (inv!15389 (xs!6526 (c!196023 (tokens!1682 thiss!10527)))) e!755100))))

(assert (=> b!1175916 (= tp!335036 (and (inv!15380 (c!196023 (tokens!1682 thiss!10527))) e!755101))))

(assert (= (and b!1175916 ((_ is Node!3821) (c!196023 (tokens!1682 thiss!10527)))) b!1176649))

(assert (= b!1176650 b!1176651))

(assert (= (and b!1175916 ((_ is Leaf!5846) (c!196023 (tokens!1682 thiss!10527)))) b!1176650))

(declare-fun m!1354197 () Bool)

(assert (=> b!1176649 m!1354197))

(declare-fun m!1354199 () Bool)

(assert (=> b!1176649 m!1354199))

(declare-fun m!1354201 () Bool)

(assert (=> b!1176650 m!1354201))

(assert (=> b!1175916 m!1352847))

(declare-fun b!1176660 () Bool)

(declare-fun e!755106 () Bool)

(assert (=> b!1176660 (= e!755106 true)))

(declare-fun b!1176662 () Bool)

(declare-fun e!755107 () Bool)

(assert (=> b!1176662 (= e!755107 true)))

(declare-fun b!1176661 () Bool)

(assert (=> b!1176661 (= e!755106 e!755107)))

(assert (=> b!1175933 e!755106))

(assert (= (and b!1175933 ((_ is Node!3821) (c!196023 (tokens!1682 thiss!10527)))) b!1176660))

(assert (= b!1176661 b!1176662))

(assert (= (and b!1175933 ((_ is Leaf!5846) (c!196023 (tokens!1682 thiss!10527)))) b!1176661))

(declare-fun b!1176665 () Bool)

(declare-fun e!755110 () Bool)

(assert (=> b!1176665 (= e!755110 true)))

(declare-fun b!1176664 () Bool)

(declare-fun e!755109 () Bool)

(assert (=> b!1176664 (= e!755109 e!755110)))

(declare-fun b!1176663 () Bool)

(declare-fun e!755108 () Bool)

(assert (=> b!1176663 (= e!755108 e!755109)))

(assert (=> b!1175932 e!755108))

(assert (= b!1176664 b!1176665))

(assert (= b!1176663 b!1176664))

(assert (= (and b!1175932 ((_ is Cons!11635) (rules!9714 thiss!10527))) b!1176663))

(assert (=> b!1176665 (< (dynLambda!5162 order!7173 (toValue!3130 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48501))))

(assert (=> b!1176665 (< (dynLambda!5164 order!7177 (toChars!2989 (transformation!2029 (h!17036 (rules!9714 thiss!10527))))) (dynLambda!5163 order!7175 lambda!48501))))

(declare-fun b!1176676 () Bool)

(declare-fun b_free!27905 () Bool)

(declare-fun b_next!28609 () Bool)

(assert (=> b!1176676 (= b_free!27905 (not b_next!28609))))

(declare-fun tp!335080 () Bool)

(declare-fun b_and!80825 () Bool)

(assert (=> b!1176676 (= tp!335080 b_and!80825)))

(declare-fun b_free!27907 () Bool)

(declare-fun b_next!28611 () Bool)

(assert (=> b!1176676 (= b_free!27907 (not b_next!28611))))

(declare-fun t!111152 () Bool)

(declare-fun tb!66027 () Bool)

(assert (=> (and b!1176676 (= (toChars!2989 (transformation!2029 (h!17036 (rules!9714 thiss!10527)))) (toChars!2989 (transformation!2029 (rule!3450 lt!405318)))) t!111152) tb!66027))

(declare-fun b!1176681 () Bool)

(declare-fun e!755125 () Bool)

(declare-fun tp!335084 () Bool)

(declare-fun inv!15390 (Conc!3820) Bool)

(assert (=> b!1176681 (= e!755125 (and (inv!15390 (c!196022 (dynLambda!5166 (toChars!2989 (transformation!2029 (rule!3450 lt!405318))) (value!65823 lt!405318)))) tp!335084))))

(declare-fun result!79122 () Bool)

(declare-fun inv!15391 (BalanceConc!7662) Bool)

(assert (=> tb!66027 (= result!79122 (and (inv!15391 (dynLambda!5166 (toChars!2989 (transformation!2029 (rule!3450 lt!405318))) (value!65823 lt!405318))) e!755125))))

(assert (= tb!66027 b!1176681))

(declare-fun m!1354203 () Bool)

(assert (=> b!1176681 m!1354203))

(declare-fun m!1354205 () Bool)

(assert (=> tb!66027 m!1354205))

(assert (=> d!337101 t!111152))

(declare-fun b_and!80827 () Bool)

(declare-fun tp!335078 () Bool)

(assert (=> b!1176676 (= tp!335078 (and (=> t!111152 result!79122) b_and!80827))))

(declare-fun e!755119 () Bool)

(assert (=> b!1176676 (= e!755119 (and tp!335080 tp!335078))))

(declare-fun b!1176675 () Bool)

(declare-fun tp!335081 () Bool)

(declare-fun e!755121 () Bool)

(declare-fun inv!15374 (String!14063) Bool)

(declare-fun inv!15392 (TokenValueInjection!3890) Bool)

(assert (=> b!1176675 (= e!755121 (and tp!335081 (inv!15374 (tag!2291 (h!17036 (rules!9714 thiss!10527)))) (inv!15392 (transformation!2029 (h!17036 (rules!9714 thiss!10527)))) e!755119))))

(declare-fun b!1176674 () Bool)

(declare-fun e!755122 () Bool)

(declare-fun tp!335079 () Bool)

(assert (=> b!1176674 (= e!755122 (and e!755121 tp!335079))))

(assert (=> b!1175908 (= tp!335035 e!755122)))

(assert (= b!1176675 b!1176676))

(assert (= b!1176674 b!1176675))

(assert (= (and b!1175908 ((_ is Cons!11635) (rules!9714 thiss!10527))) b!1176674))

(declare-fun m!1354207 () Bool)

(assert (=> b!1176675 m!1354207))

(declare-fun m!1354209 () Bool)

(assert (=> b!1176675 m!1354209))

(declare-fun b_lambda!35189 () Bool)

(assert (= b_lambda!35171 (or b!1175910 b_lambda!35189)))

(declare-fun bs!286701 () Bool)

(declare-fun d!337165 () Bool)

(assert (= bs!286701 (and d!337165 b!1175910)))

(assert (=> bs!286701 (= (dynLambda!5160 lambda!48501 (h!17035 lt!405296)) (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 lt!405296)))))

(assert (=> bs!286701 m!1352859))

(assert (=> b!1176097 d!337165))

(declare-fun b_lambda!35191 () Bool)

(assert (= b_lambda!35169 (or b!1175910 b_lambda!35191)))

(declare-fun bs!286702 () Bool)

(declare-fun d!337167 () Bool)

(assert (= bs!286702 (and d!337167 b!1175910)))

(assert (=> bs!286702 (= (dynLambda!5160 lambda!48501 (h!17035 lt!405307)) (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 lt!405307)))))

(assert (=> bs!286702 m!1352897))

(assert (=> b!1176095 d!337167))

(declare-fun b_lambda!35193 () Bool)

(assert (= b_lambda!35167 (or b!1175910 b_lambda!35193)))

(declare-fun bs!286703 () Bool)

(declare-fun d!337169 () Bool)

(assert (= bs!286703 (and d!337169 b!1175910)))

(assert (=> bs!286703 (= (dynLambda!5160 lambda!48501 (h!17035 lt!405316)) (rulesProduceIndividualToken!759 Lexer!1722 (rules!9714 thiss!10527) (h!17035 lt!405316)))))

(assert (=> bs!286703 m!1352933))

(assert (=> b!1175941 d!337169))

(check-sat (not d!337061) (not d!337127) (not d!337051) (not d!337045) (not b!1176489) (not b!1176454) (not b!1176632) (not bm!82432) (not b!1176626) (not b!1176049) (not d!337159) (not b!1176459) (not b!1176495) (not b!1175942) (not b!1176494) (not b!1176406) (not b!1176491) (not b!1176066) (not d!337049) (not d!337087) (not b!1176493) (not b!1176000) (not b!1176346) (not b!1176275) (not d!336883) (not b!1176390) (not b!1176387) (not b!1176554) (not d!337131) (not b!1176449) (not b!1176465) (not b!1176558) (not d!337099) (not b!1176649) (not b!1176385) (not d!337089) (not b!1176177) (not b!1176556) (not b!1176364) (not b!1176347) (not bs!286703) (not b!1176455) (not b!1176637) (not d!336975) (not b_lambda!35191) (not b!1176522) (not b!1176001) (not b!1176457) (not d!336889) (not b!1176179) (not d!337047) (not b!1175962) (not b!1176523) (not d!336885) (not b!1176414) (not b!1176038) (not b!1176530) (not d!337097) (not b!1176663) (not b!1176525) (not d!337075) (not b!1176633) (not d!337073) (not b!1176403) (not d!337109) (not b!1176065) (not b!1176553) (not d!337161) (not b!1176276) (not d!336971) (not b!1176052) (not b!1176662) (not b!1176279) (not b!1176469) (not b!1176345) (not b!1176445) (not b!1176188) (not b!1176365) (not b!1176274) (not b!1176550) (not b!1176096) b_and!80827 (not b!1176674) (not b!1175936) (not b!1176277) (not b!1176552) (not b!1176651) (not b!1176088) (not b!1176040) (not d!337135) (not b!1176630) (not d!337119) (not b!1176458) (not b!1176551) (not d!336929) (not b!1176098) (not d!337065) (not b!1175963) (not d!336973) (not b!1176452) (not d!337095) (not b!1176373) (not b!1176180) (not d!336895) (not b_lambda!35181) (not bm!82426) (not b!1176560) (not b!1176463) (not b_next!28609) (not b!1176415) (not d!337101) (not b!1176675) (not b!1176524) (not b!1176492) (not b!1176555) (not b!1176396) (not d!337063) (not b_lambda!35193) (not d!337111) (not b!1176636) (not b!1176638) (not b!1176410) (not d!337085) (not b!1176561) (not d!337077) (not b!1176453) (not b!1175949) (not b!1176216) (not b!1176562) (not b!1176521) (not b!1176092) (not b!1176185) (not b!1176627) (not d!336927) b_and!80825 (not d!337055) (not b!1176559) (not b!1176468) (not d!336909) (not b!1176400) (not b!1176010) (not d!336921) (not b!1176470) (not b!1176441) (not d!337103) (not b!1175950) (not b!1176272) (not b!1176178) (not b_next!28611) (not d!336977) (not d!336919) (not d!337069) (not d!337157) (not d!337071) (not d!337093) (not d!337107) (not bm!82434) (not b!1176460) (not b!1176388) (not b!1176219) (not d!337091) (not b!1176047) (not d!336989) (not b!1176371) (not d!337129) (not b!1176389) (not b!1175916) (not b!1176039) (not b!1176189) (not tb!66027) (not d!337141) (not b!1176217) (not d!336935) (not b!1176050) (not d!337163) (not b!1176218) (not b!1176393) (not b!1176186) (not bm!82433) (not b!1176176) (not b_lambda!35189) (not b!1176442) (not b!1176464) (not b!1176366) (not b!1176051) (not b!1175951) (not d!337137) (not bs!286702) (not b!1176660) (not b!1176418) (not b!1176067) (not b!1176488) (not bs!286701) (not b!1176378) (not b!1176372) (not b!1176273) (not b!1176386) (not b!1176490) (not d!336893) (not b!1176557) (not b!1176367) (not d!336899) (not d!337105) (not b!1176187) (not b!1176631) (not b!1176456) (not b!1176215) (not b!1176413) (not b!1176681) (not d!337009) (not b!1176650) (not b!1176278) (not d!337139))
(check-sat b_and!80825 b_and!80827 (not b_next!28609) (not b_next!28611))
