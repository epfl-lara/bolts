; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102854 () Bool)

(assert start!102854)

(declare-fun b!1169777 () Bool)

(declare-fun e!750023 () Bool)

(assert (=> b!1169777 (= e!750023 true)))

(declare-fun b!1169776 () Bool)

(declare-fun e!750022 () Bool)

(assert (=> b!1169776 (= e!750022 e!750023)))

(declare-fun b!1169756 () Bool)

(assert (=> b!1169756 e!750022))

(assert (= b!1169776 b!1169777))

(assert (= b!1169756 b!1169776))

(declare-fun b!1169752 () Bool)

(declare-fun e!750005 () Bool)

(declare-fun e!750009 () Bool)

(assert (=> b!1169752 (= e!750005 e!750009)))

(declare-fun res!528266 () Bool)

(assert (=> b!1169752 (=> (not res!528266) (not e!750009))))

(declare-datatypes ((List!11592 0))(
  ( (Nil!11568) (Cons!11568 (h!16969 (_ BitVec 16)) (t!110644 List!11592)) )
))
(declare-datatypes ((TokenValue!2083 0))(
  ( (FloatLiteralValue!4166 (text!15026 List!11592)) (TokenValueExt!2082 (__x!7877 Int)) (Broken!10415 (value!65455 List!11592)) (Object!2106) (End!2083) (Def!2083) (Underscore!2083) (Match!2083) (Else!2083) (Error!2083) (Case!2083) (If!2083) (Extends!2083) (Abstract!2083) (Class!2083) (Val!2083) (DelimiterValue!4166 (del!2143 List!11592)) (KeywordValue!2089 (value!65456 List!11592)) (CommentValue!4166 (value!65457 List!11592)) (WhitespaceValue!4166 (value!65458 List!11592)) (IndentationValue!2083 (value!65459 List!11592)) (String!14002) (Int32!2083) (Broken!10416 (value!65460 List!11592)) (Boolean!2084) (Unit!17735) (OperatorValue!2086 (op!2143 List!11592)) (IdentifierValue!4166 (value!65461 List!11592)) (IdentifierValue!4167 (value!65462 List!11592)) (WhitespaceValue!4167 (value!65463 List!11592)) (True!4166) (False!4166) (Broken!10417 (value!65464 List!11592)) (Broken!10418 (value!65465 List!11592)) (True!4167) (RightBrace!2083) (RightBracket!2083) (Colon!2083) (Null!2083) (Comma!2083) (LeftBracket!2083) (False!4167) (LeftBrace!2083) (ImaginaryLiteralValue!2083 (text!15027 List!11592)) (StringLiteralValue!6249 (value!65466 List!11592)) (EOFValue!2083 (value!65467 List!11592)) (IdentValue!2083 (value!65468 List!11592)) (DelimiterValue!4167 (value!65469 List!11592)) (DedentValue!2083 (value!65470 List!11592)) (NewLineValue!2083 (value!65471 List!11592)) (IntegerValue!6249 (value!65472 (_ BitVec 32)) (text!15028 List!11592)) (IntegerValue!6250 (value!65473 Int) (text!15029 List!11592)) (Times!2083) (Or!2083) (Equal!2083) (Minus!2083) (Broken!10419 (value!65474 List!11592)) (And!2083) (Div!2083) (LessEqual!2083) (Mod!2083) (Concat!5370) (Not!2083) (Plus!2083) (SpaceValue!2083 (value!65475 List!11592)) (IntegerValue!6251 (value!65476 Int) (text!15030 List!11592)) (StringLiteralValue!6250 (text!15031 List!11592)) (FloatLiteralValue!4167 (text!15032 List!11592)) (BytesLiteralValue!2083 (value!65477 List!11592)) (CommentValue!4167 (value!65478 List!11592)) (StringLiteralValue!6251 (value!65479 List!11592)) (ErrorTokenValue!2083 (msg!2144 List!11592)) )
))
(declare-datatypes ((C!6892 0))(
  ( (C!6893 (val!3702 Int)) )
))
(declare-datatypes ((Regex!3287 0))(
  ( (ElementMatch!3287 (c!195201 C!6892)) (Concat!5371 (regOne!7086 Regex!3287) (regTwo!7086 Regex!3287)) (EmptyExpr!3287) (Star!3287 (reg!3616 Regex!3287)) (EmptyLang!3287) (Union!3287 (regOne!7087 Regex!3287) (regTwo!7087 Regex!3287)) )
))
(declare-datatypes ((String!14003 0))(
  ( (String!14004 (value!65480 String)) )
))
(declare-datatypes ((List!11593 0))(
  ( (Nil!11569) (Cons!11569 (h!16970 C!6892) (t!110645 List!11593)) )
))
(declare-datatypes ((IArray!7597 0))(
  ( (IArray!7598 (innerList!3856 List!11593)) )
))
(declare-datatypes ((Conc!3796 0))(
  ( (Node!3796 (left!10118 Conc!3796) (right!10448 Conc!3796) (csize!7822 Int) (cheight!4007 Int)) (Leaf!5815 (xs!6501 IArray!7597) (csize!7823 Int)) (Empty!3796) )
))
(declare-datatypes ((BalanceConc!7614 0))(
  ( (BalanceConc!7615 (c!195202 Conc!3796)) )
))
(declare-datatypes ((TokenValueInjection!3866 0))(
  ( (TokenValueInjection!3867 (toValue!3118 Int) (toChars!2977 Int)) )
))
(declare-datatypes ((Rule!3834 0))(
  ( (Rule!3835 (regex!2017 Regex!3287) (tag!2279 String!14003) (isSeparator!2017 Bool) (transformation!2017 TokenValueInjection!3866)) )
))
(declare-datatypes ((Token!3696 0))(
  ( (Token!3697 (value!65481 TokenValue!2083) (rule!3438 Rule!3834) (size!9107 Int) (originalCharacters!2571 List!11593)) )
))
(declare-datatypes ((List!11594 0))(
  ( (Nil!11570) (Cons!11570 (h!16971 Token!3696) (t!110646 List!11594)) )
))
(declare-datatypes ((IArray!7599 0))(
  ( (IArray!7600 (innerList!3857 List!11594)) )
))
(declare-datatypes ((Conc!3797 0))(
  ( (Node!3797 (left!10119 Conc!3797) (right!10449 Conc!3797) (csize!7824 Int) (cheight!4008 Int)) (Leaf!5816 (xs!6502 IArray!7599) (csize!7825 Int)) (Empty!3797) )
))
(declare-datatypes ((BalanceConc!7616 0))(
  ( (BalanceConc!7617 (c!195203 Conc!3797)) )
))
(declare-datatypes ((List!11595 0))(
  ( (Nil!11571) (Cons!11571 (h!16972 Rule!3834) (t!110647 List!11595)) )
))
(declare-datatypes ((PrintableTokens!720 0))(
  ( (PrintableTokens!721 (rules!9618 List!11595) (tokens!1642 BalanceConc!7616)) )
))
(declare-fun thiss!10527 () PrintableTokens!720)

(declare-fun lt!400617 () List!11594)

(declare-datatypes ((LexerInterface!1712 0))(
  ( (LexerInterfaceExt!1709 (__x!7878 Int)) (Lexer!1710) )
))
(declare-fun rulesProduceIndividualToken!747 (LexerInterface!1712 List!11595 Token!3696) Bool)

(assert (=> b!1169752 (= res!528266 (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) (h!16971 lt!400617)))))

(declare-fun b!1169753 () Bool)

(declare-fun e!750007 () Bool)

(declare-fun e!750006 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!73 (LexerInterface!1712 BalanceConc!7616 Int List!11595) Bool)

(assert (=> b!1169753 (= e!750007 (= (tokensListTwoByTwoPredicateSeparable!73 Lexer!1710 (tokens!1642 thiss!10527) 0 (rules!9618 thiss!10527)) e!750006))))

(declare-fun res!528273 () Bool)

(assert (=> b!1169753 (=> res!528273 e!750006)))

(declare-fun lt!400610 () Int)

(assert (=> b!1169753 (= res!528273 (>= 0 (- lt!400610 1)))))

(declare-fun b!1169754 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!578 (LexerInterface!1712 List!11595 List!11594) Bool)

(assert (=> b!1169754 (= e!750009 (rulesProduceEachTokenIndividuallyList!578 Lexer!1710 (rules!9618 thiss!10527) (t!110646 lt!400617)))))

(declare-fun b!1169755 () Bool)

(declare-fun res!528263 () Bool)

(declare-fun e!750013 () Bool)

(assert (=> b!1169755 (=> (not res!528263) (not e!750013))))

(declare-fun lt!400624 () BalanceConc!7616)

(declare-fun lambda!48103 () Int)

(declare-fun rulesProduceEachTokenIndividually!750 (LexerInterface!1712 List!11595 BalanceConc!7616) Bool)

(declare-fun forall!3053 (BalanceConc!7616 Int) Bool)

(assert (=> b!1169755 (= res!528263 (= (rulesProduceEachTokenIndividually!750 Lexer!1710 (rules!9618 thiss!10527) lt!400624) (forall!3053 lt!400624 lambda!48103)))))

(declare-fun e!750010 () Bool)

(declare-fun e!750004 () Bool)

(assert (=> b!1169756 (= e!750010 (not e!750004))))

(declare-fun res!528259 () Bool)

(assert (=> b!1169756 (=> res!528259 e!750004)))

(assert (=> b!1169756 (= res!528259 (not (forall!3053 (tokens!1642 thiss!10527) lambda!48103)))))

(assert (=> b!1169756 (= (rulesProduceEachTokenIndividuallyList!578 Lexer!1710 (rules!9618 thiss!10527) lt!400617) e!750005)))

(declare-fun res!528261 () Bool)

(assert (=> b!1169756 (=> res!528261 e!750005)))

(get-info :version)

(assert (=> b!1169756 (= res!528261 (not ((_ is Cons!11570) lt!400617)))))

(declare-fun list!4262 (BalanceConc!7616) List!11594)

(assert (=> b!1169756 (= lt!400617 (list!4262 (tokens!1642 thiss!10527)))))

(assert (=> b!1169756 (= (rulesProduceEachTokenIndividually!750 Lexer!1710 (rules!9618 thiss!10527) (tokens!1642 thiss!10527)) (forall!3053 (tokens!1642 thiss!10527) lambda!48103))))

(declare-fun b!1169757 () Bool)

(declare-fun e!750017 () Bool)

(declare-fun isEmpty!7024 (List!11595) Bool)

(assert (=> b!1169757 (= e!750017 (not (isEmpty!7024 (rules!9618 thiss!10527))))))

(assert (=> b!1169757 e!750007))

(declare-fun res!528271 () Bool)

(assert (=> b!1169757 (=> (not res!528271) (not e!750007))))

(declare-fun separableTokens!148 (LexerInterface!1712 BalanceConc!7616 List!11595) Bool)

(assert (=> b!1169757 (= res!528271 (= (separableTokens!148 Lexer!1710 lt!400624 (rules!9618 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!73 Lexer!1710 lt!400624 0 (rules!9618 thiss!10527))))))

(declare-fun b!1169758 () Bool)

(declare-fun e!750002 () Bool)

(assert (=> b!1169758 (= e!750002 e!750010)))

(declare-fun res!528268 () Bool)

(assert (=> b!1169758 (=> (not res!528268) (not e!750010))))

(declare-fun rulesInvariant!1586 (LexerInterface!1712 List!11595) Bool)

(assert (=> b!1169758 (= res!528268 (rulesInvariant!1586 Lexer!1710 (rules!9618 thiss!10527)))))

(declare-datatypes ((Unit!17736 0))(
  ( (Unit!17737) )
))
(declare-fun lt!400611 () Unit!17736)

(declare-fun lemmaInvariant!204 (PrintableTokens!720) Unit!17736)

(assert (=> b!1169758 (= lt!400611 (lemmaInvariant!204 thiss!10527))))

(declare-fun b!1169759 () Bool)

(declare-fun e!750014 () Bool)

(declare-fun e!750015 () Bool)

(assert (=> b!1169759 (= e!750014 e!750015)))

(declare-fun res!528262 () Bool)

(assert (=> b!1169759 (=> (not res!528262) (not e!750015))))

(declare-fun lt!400616 () List!11594)

(assert (=> b!1169759 (= res!528262 (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) (h!16971 lt!400616)))))

(declare-fun b!1169760 () Bool)

(declare-fun e!750016 () Bool)

(declare-fun lt!400622 () Token!3696)

(declare-fun size!9108 (BalanceConc!7614) Int)

(declare-fun charsOf!1072 (Token!3696) BalanceConc!7614)

(assert (=> b!1169760 (= e!750016 (> (size!9108 (charsOf!1072 lt!400622)) 0))))

(declare-fun b!1169761 () Bool)

(declare-fun e!750003 () Bool)

(assert (=> b!1169761 (= e!750003 e!750002)))

(declare-fun res!528265 () Bool)

(assert (=> b!1169761 (=> (not res!528265) (not e!750002))))

(declare-fun to!267 () Int)

(assert (=> b!1169761 (= res!528265 (<= to!267 lt!400610))))

(declare-fun size!9109 (BalanceConc!7616) Int)

(assert (=> b!1169761 (= lt!400610 (size!9109 (tokens!1642 thiss!10527)))))

(declare-fun b!1169762 () Bool)

(declare-fun e!750011 () Bool)

(declare-fun tp!334567 () Bool)

(declare-fun e!750012 () Bool)

(declare-fun inv!15244 (BalanceConc!7616) Bool)

(assert (=> b!1169762 (= e!750011 (and tp!334567 (inv!15244 (tokens!1642 thiss!10527)) e!750012))))

(declare-fun b!1169763 () Bool)

(assert (=> b!1169763 (= e!750015 (rulesProduceEachTokenIndividuallyList!578 Lexer!1710 (rules!9618 thiss!10527) (t!110646 lt!400616)))))

(declare-fun res!528264 () Bool)

(assert (=> start!102854 (=> (not res!528264) (not e!750003))))

(declare-fun from!787 () Int)

(assert (=> start!102854 (= res!528264 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!102854 e!750003))

(assert (=> start!102854 true))

(declare-fun inv!15245 (PrintableTokens!720) Bool)

(assert (=> start!102854 (and (inv!15245 thiss!10527) e!750011)))

(declare-fun b!1169764 () Bool)

(declare-fun e!750008 () Bool)

(assert (=> b!1169764 (= e!750008 (tokensListTwoByTwoPredicateSeparable!73 Lexer!1710 (tokens!1642 thiss!10527) 1 (rules!9618 thiss!10527)))))

(declare-fun b!1169765 () Bool)

(assert (=> b!1169765 (= e!750004 e!750017)))

(declare-fun res!528269 () Bool)

(assert (=> b!1169765 (=> res!528269 e!750017)))

(declare-fun forall!3054 (List!11594 Int) Bool)

(assert (=> b!1169765 (= res!528269 (not (forall!3054 lt!400616 lambda!48103)))))

(assert (=> b!1169765 e!750013))

(declare-fun res!528260 () Bool)

(assert (=> b!1169765 (=> (not res!528260) (not e!750013))))

(assert (=> b!1169765 (= res!528260 (forall!3054 lt!400616 lambda!48103))))

(declare-fun lt!400614 () Unit!17736)

(declare-fun lemmaForallSubseq!155 (List!11594 List!11594 Int) Unit!17736)

(assert (=> b!1169765 (= lt!400614 (lemmaForallSubseq!155 lt!400616 lt!400617 lambda!48103))))

(assert (=> b!1169765 (= lt!400616 (list!4262 lt!400624))))

(declare-fun slice!336 (BalanceConc!7616 Int Int) BalanceConc!7616)

(assert (=> b!1169765 (= lt!400624 (slice!336 (tokens!1642 thiss!10527) from!787 to!267))))

(declare-fun subseq!267 (List!11594 List!11594) Bool)

(declare-fun slice!337 (List!11594 Int Int) List!11594)

(assert (=> b!1169765 (subseq!267 (slice!337 lt!400617 from!787 to!267) lt!400617)))

(declare-fun lt!400621 () Unit!17736)

(declare-fun lemmaSliceSubseq!108 (List!11594 Int Int) Unit!17736)

(assert (=> b!1169765 (= lt!400621 (lemmaSliceSubseq!108 lt!400617 from!787 to!267))))

(declare-fun b!1169766 () Bool)

(declare-fun tp!334568 () Bool)

(declare-fun inv!15246 (Conc!3797) Bool)

(assert (=> b!1169766 (= e!750012 (and (inv!15246 (c!195203 (tokens!1642 thiss!10527))) tp!334568))))

(declare-fun b!1169767 () Bool)

(assert (=> b!1169767 (= e!750006 e!750008)))

(declare-fun res!528267 () Bool)

(assert (=> b!1169767 (=> (not res!528267) (not e!750008))))

(declare-fun lt!400609 () Token!3696)

(declare-fun separableTokensPredicate!134 (LexerInterface!1712 Token!3696 Token!3696 List!11595) Bool)

(assert (=> b!1169767 (= res!528267 (separableTokensPredicate!134 Lexer!1710 lt!400609 lt!400622 (rules!9618 thiss!10527)))))

(assert (=> b!1169767 e!750016))

(declare-fun res!528270 () Bool)

(assert (=> b!1169767 (=> (not res!528270) (not e!750016))))

(assert (=> b!1169767 (= res!528270 (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) lt!400622))))

(declare-fun lt!400619 () Unit!17736)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!293 (LexerInterface!1712 List!11595 List!11594 Token!3696) Unit!17736)

(assert (=> b!1169767 (= lt!400619 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!293 Lexer!1710 (rules!9618 thiss!10527) lt!400617 lt!400622))))

(declare-fun apply!2501 (BalanceConc!7616 Int) Token!3696)

(assert (=> b!1169767 (= lt!400622 (apply!2501 (tokens!1642 thiss!10527) 1))))

(assert (=> b!1169767 (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) lt!400609)))

(declare-fun lt!400620 () Unit!17736)

(assert (=> b!1169767 (= lt!400620 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!293 Lexer!1710 (rules!9618 thiss!10527) lt!400617 lt!400609))))

(assert (=> b!1169767 (= lt!400609 (apply!2501 (tokens!1642 thiss!10527) 0))))

(declare-fun lt!400618 () List!11594)

(declare-fun tail!1690 (List!11594) List!11594)

(declare-fun drop!489 (List!11594 Int) List!11594)

(assert (=> b!1169767 (= (tail!1690 lt!400618) (drop!489 lt!400617 2))))

(declare-fun lt!400613 () Unit!17736)

(declare-fun lemmaDropTail!363 (List!11594 Int) Unit!17736)

(assert (=> b!1169767 (= lt!400613 (lemmaDropTail!363 lt!400617 1))))

(declare-fun lt!400615 () List!11594)

(assert (=> b!1169767 (= (tail!1690 lt!400615) lt!400618)))

(declare-fun lt!400612 () Unit!17736)

(assert (=> b!1169767 (= lt!400612 (lemmaDropTail!363 lt!400617 0))))

(declare-fun head!2106 (List!11594) Token!3696)

(declare-fun apply!2502 (List!11594 Int) Token!3696)

(assert (=> b!1169767 (= (head!2106 lt!400618) (apply!2502 lt!400617 1))))

(assert (=> b!1169767 (= lt!400618 (drop!489 lt!400617 1))))

(declare-fun lt!400608 () Unit!17736)

(declare-fun lemmaDropApply!375 (List!11594 Int) Unit!17736)

(assert (=> b!1169767 (= lt!400608 (lemmaDropApply!375 lt!400617 1))))

(assert (=> b!1169767 (= (head!2106 lt!400615) (apply!2502 lt!400617 0))))

(assert (=> b!1169767 (= lt!400615 (drop!489 lt!400617 0))))

(declare-fun lt!400623 () Unit!17736)

(assert (=> b!1169767 (= lt!400623 (lemmaDropApply!375 lt!400617 0))))

(declare-fun b!1169768 () Bool)

(assert (=> b!1169768 (= e!750013 (= (rulesProduceEachTokenIndividuallyList!578 Lexer!1710 (rules!9618 thiss!10527) lt!400616) e!750014))))

(declare-fun res!528258 () Bool)

(assert (=> b!1169768 (=> res!528258 e!750014)))

(assert (=> b!1169768 (= res!528258 (not ((_ is Cons!11570) lt!400616)))))

(declare-fun b!1169769 () Bool)

(declare-fun res!528272 () Bool)

(assert (=> b!1169769 (=> res!528272 e!750017)))

(assert (=> b!1169769 (= res!528272 (not (forall!3053 lt!400624 lambda!48103)))))

(assert (= (and start!102854 res!528264) b!1169761))

(assert (= (and b!1169761 res!528265) b!1169758))

(assert (= (and b!1169758 res!528268) b!1169756))

(assert (= (and b!1169756 (not res!528261)) b!1169752))

(assert (= (and b!1169752 res!528266) b!1169754))

(assert (= (and b!1169756 (not res!528259)) b!1169765))

(assert (= (and b!1169765 res!528260) b!1169755))

(assert (= (and b!1169755 res!528263) b!1169768))

(assert (= (and b!1169768 (not res!528258)) b!1169759))

(assert (= (and b!1169759 res!528262) b!1169763))

(assert (= (and b!1169765 (not res!528269)) b!1169769))

(assert (= (and b!1169769 (not res!528272)) b!1169757))

(assert (= (and b!1169757 res!528271) b!1169753))

(assert (= (and b!1169753 (not res!528273)) b!1169767))

(assert (= (and b!1169767 res!528270) b!1169760))

(assert (= (and b!1169767 res!528267) b!1169764))

(assert (= b!1169762 b!1169766))

(assert (= start!102854 b!1169762))

(declare-fun m!1341829 () Bool)

(assert (=> b!1169757 m!1341829))

(declare-fun m!1341831 () Bool)

(assert (=> b!1169757 m!1341831))

(declare-fun m!1341833 () Bool)

(assert (=> b!1169757 m!1341833))

(declare-fun m!1341835 () Bool)

(assert (=> b!1169764 m!1341835))

(declare-fun m!1341837 () Bool)

(assert (=> b!1169763 m!1341837))

(declare-fun m!1341839 () Bool)

(assert (=> b!1169759 m!1341839))

(declare-fun m!1341841 () Bool)

(assert (=> start!102854 m!1341841))

(declare-fun m!1341843 () Bool)

(assert (=> b!1169760 m!1341843))

(assert (=> b!1169760 m!1341843))

(declare-fun m!1341845 () Bool)

(assert (=> b!1169760 m!1341845))

(declare-fun m!1341847 () Bool)

(assert (=> b!1169756 m!1341847))

(declare-fun m!1341849 () Bool)

(assert (=> b!1169756 m!1341849))

(declare-fun m!1341851 () Bool)

(assert (=> b!1169756 m!1341851))

(declare-fun m!1341853 () Bool)

(assert (=> b!1169756 m!1341853))

(assert (=> b!1169756 m!1341847))

(declare-fun m!1341855 () Bool)

(assert (=> b!1169758 m!1341855))

(declare-fun m!1341857 () Bool)

(assert (=> b!1169758 m!1341857))

(declare-fun m!1341859 () Bool)

(assert (=> b!1169768 m!1341859))

(declare-fun m!1341861 () Bool)

(assert (=> b!1169767 m!1341861))

(declare-fun m!1341863 () Bool)

(assert (=> b!1169767 m!1341863))

(declare-fun m!1341865 () Bool)

(assert (=> b!1169767 m!1341865))

(declare-fun m!1341867 () Bool)

(assert (=> b!1169767 m!1341867))

(declare-fun m!1341869 () Bool)

(assert (=> b!1169767 m!1341869))

(declare-fun m!1341871 () Bool)

(assert (=> b!1169767 m!1341871))

(declare-fun m!1341873 () Bool)

(assert (=> b!1169767 m!1341873))

(declare-fun m!1341875 () Bool)

(assert (=> b!1169767 m!1341875))

(declare-fun m!1341877 () Bool)

(assert (=> b!1169767 m!1341877))

(declare-fun m!1341879 () Bool)

(assert (=> b!1169767 m!1341879))

(declare-fun m!1341881 () Bool)

(assert (=> b!1169767 m!1341881))

(declare-fun m!1341883 () Bool)

(assert (=> b!1169767 m!1341883))

(declare-fun m!1341885 () Bool)

(assert (=> b!1169767 m!1341885))

(declare-fun m!1341887 () Bool)

(assert (=> b!1169767 m!1341887))

(declare-fun m!1341889 () Bool)

(assert (=> b!1169767 m!1341889))

(declare-fun m!1341891 () Bool)

(assert (=> b!1169767 m!1341891))

(declare-fun m!1341893 () Bool)

(assert (=> b!1169767 m!1341893))

(declare-fun m!1341895 () Bool)

(assert (=> b!1169767 m!1341895))

(declare-fun m!1341897 () Bool)

(assert (=> b!1169767 m!1341897))

(declare-fun m!1341899 () Bool)

(assert (=> b!1169767 m!1341899))

(declare-fun m!1341901 () Bool)

(assert (=> b!1169769 m!1341901))

(declare-fun m!1341903 () Bool)

(assert (=> b!1169761 m!1341903))

(declare-fun m!1341905 () Bool)

(assert (=> b!1169752 m!1341905))

(declare-fun m!1341907 () Bool)

(assert (=> b!1169762 m!1341907))

(declare-fun m!1341909 () Bool)

(assert (=> b!1169766 m!1341909))

(declare-fun m!1341911 () Bool)

(assert (=> b!1169765 m!1341911))

(declare-fun m!1341913 () Bool)

(assert (=> b!1169765 m!1341913))

(declare-fun m!1341915 () Bool)

(assert (=> b!1169765 m!1341915))

(declare-fun m!1341917 () Bool)

(assert (=> b!1169765 m!1341917))

(assert (=> b!1169765 m!1341913))

(declare-fun m!1341919 () Bool)

(assert (=> b!1169765 m!1341919))

(declare-fun m!1341921 () Bool)

(assert (=> b!1169765 m!1341921))

(assert (=> b!1169765 m!1341915))

(declare-fun m!1341923 () Bool)

(assert (=> b!1169765 m!1341923))

(declare-fun m!1341925 () Bool)

(assert (=> b!1169755 m!1341925))

(assert (=> b!1169755 m!1341901))

(declare-fun m!1341927 () Bool)

(assert (=> b!1169754 m!1341927))

(declare-fun m!1341929 () Bool)

(assert (=> b!1169753 m!1341929))

(check-sat (not b!1169776) (not b!1169764) (not b!1169763) (not b!1169769) (not b!1169762) (not start!102854) (not b!1169768) (not b!1169757) (not b!1169756) (not b!1169765) (not b!1169759) (not b!1169753) (not b!1169755) (not b!1169766) (not b!1169777) (not b!1169754) (not b!1169761) (not b!1169758) (not b!1169760) (not b!1169752) (not b!1169767))
(check-sat)
(get-model)

(declare-fun d!334469 () Bool)

(declare-fun lt!400627 () Int)

(declare-fun size!9113 (List!11594) Int)

(assert (=> d!334469 (= lt!400627 (size!9113 (list!4262 (tokens!1642 thiss!10527))))))

(declare-fun size!9114 (Conc!3797) Int)

(assert (=> d!334469 (= lt!400627 (size!9114 (c!195203 (tokens!1642 thiss!10527))))))

(assert (=> d!334469 (= (size!9109 (tokens!1642 thiss!10527)) lt!400627)))

(declare-fun bs!285512 () Bool)

(assert (= bs!285512 d!334469))

(assert (=> bs!285512 m!1341853))

(assert (=> bs!285512 m!1341853))

(declare-fun m!1341931 () Bool)

(assert (=> bs!285512 m!1341931))

(declare-fun m!1341933 () Bool)

(assert (=> bs!285512 m!1341933))

(assert (=> b!1169761 d!334469))

(declare-fun d!334471 () Bool)

(declare-fun isBalanced!1069 (Conc!3797) Bool)

(assert (=> d!334471 (= (inv!15244 (tokens!1642 thiss!10527)) (isBalanced!1069 (c!195203 (tokens!1642 thiss!10527))))))

(declare-fun bs!285513 () Bool)

(assert (= bs!285513 d!334471))

(declare-fun m!1341935 () Bool)

(assert (=> bs!285513 m!1341935))

(assert (=> b!1169762 d!334471))

(declare-fun d!334475 () Bool)

(declare-fun lt!400644 () Bool)

(declare-fun e!750040 () Bool)

(assert (=> d!334475 (= lt!400644 e!750040)))

(declare-fun res!528289 () Bool)

(assert (=> d!334475 (=> (not res!528289) (not e!750040))))

(declare-datatypes ((tuple2!12040 0))(
  ( (tuple2!12041 (_1!6867 BalanceConc!7616) (_2!6867 BalanceConc!7614)) )
))
(declare-fun lex!710 (LexerInterface!1712 List!11595 BalanceConc!7614) tuple2!12040)

(declare-fun print!647 (LexerInterface!1712 BalanceConc!7616) BalanceConc!7614)

(declare-fun singletonSeq!676 (Token!3696) BalanceConc!7616)

(assert (=> d!334475 (= res!528289 (= (list!4262 (_1!6867 (lex!710 Lexer!1710 (rules!9618 thiss!10527) (print!647 Lexer!1710 (singletonSeq!676 (h!16971 lt!400617)))))) (list!4262 (singletonSeq!676 (h!16971 lt!400617)))))))

(declare-fun e!750041 () Bool)

(assert (=> d!334475 (= lt!400644 e!750041)))

(declare-fun res!528287 () Bool)

(assert (=> d!334475 (=> (not res!528287) (not e!750041))))

(declare-fun lt!400645 () tuple2!12040)

(assert (=> d!334475 (= res!528287 (= (size!9109 (_1!6867 lt!400645)) 1))))

(assert (=> d!334475 (= lt!400645 (lex!710 Lexer!1710 (rules!9618 thiss!10527) (print!647 Lexer!1710 (singletonSeq!676 (h!16971 lt!400617)))))))

(assert (=> d!334475 (not (isEmpty!7024 (rules!9618 thiss!10527)))))

(assert (=> d!334475 (= (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) (h!16971 lt!400617)) lt!400644)))

(declare-fun b!1169800 () Bool)

(declare-fun res!528288 () Bool)

(assert (=> b!1169800 (=> (not res!528288) (not e!750041))))

(assert (=> b!1169800 (= res!528288 (= (apply!2501 (_1!6867 lt!400645) 0) (h!16971 lt!400617)))))

(declare-fun b!1169801 () Bool)

(declare-fun isEmpty!7026 (BalanceConc!7614) Bool)

(assert (=> b!1169801 (= e!750041 (isEmpty!7026 (_2!6867 lt!400645)))))

(declare-fun b!1169802 () Bool)

(assert (=> b!1169802 (= e!750040 (isEmpty!7026 (_2!6867 (lex!710 Lexer!1710 (rules!9618 thiss!10527) (print!647 Lexer!1710 (singletonSeq!676 (h!16971 lt!400617)))))))))

(assert (= (and d!334475 res!528287) b!1169800))

(assert (= (and b!1169800 res!528288) b!1169801))

(assert (= (and d!334475 res!528289) b!1169802))

(assert (=> d!334475 m!1341829))

(declare-fun m!1341959 () Bool)

(assert (=> d!334475 m!1341959))

(declare-fun m!1341961 () Bool)

(assert (=> d!334475 m!1341961))

(declare-fun m!1341963 () Bool)

(assert (=> d!334475 m!1341963))

(assert (=> d!334475 m!1341959))

(declare-fun m!1341965 () Bool)

(assert (=> d!334475 m!1341965))

(assert (=> d!334475 m!1341959))

(declare-fun m!1341967 () Bool)

(assert (=> d!334475 m!1341967))

(assert (=> d!334475 m!1341967))

(declare-fun m!1341969 () Bool)

(assert (=> d!334475 m!1341969))

(declare-fun m!1341971 () Bool)

(assert (=> b!1169800 m!1341971))

(declare-fun m!1341973 () Bool)

(assert (=> b!1169801 m!1341973))

(assert (=> b!1169802 m!1341959))

(assert (=> b!1169802 m!1341959))

(assert (=> b!1169802 m!1341967))

(assert (=> b!1169802 m!1341967))

(assert (=> b!1169802 m!1341969))

(declare-fun m!1341975 () Bool)

(assert (=> b!1169802 m!1341975))

(assert (=> b!1169752 d!334475))

(declare-fun bs!285521 () Bool)

(declare-fun d!334487 () Bool)

(assert (= bs!285521 (and d!334487 b!1169756)))

(declare-fun lambda!48114 () Int)

(assert (=> bs!285521 (= lambda!48114 lambda!48103)))

(declare-fun b!1169837 () Bool)

(declare-fun e!750071 () Bool)

(assert (=> b!1169837 (= e!750071 true)))

(declare-fun b!1169836 () Bool)

(declare-fun e!750070 () Bool)

(assert (=> b!1169836 (= e!750070 e!750071)))

(declare-fun b!1169835 () Bool)

(declare-fun e!750069 () Bool)

(assert (=> b!1169835 (= e!750069 e!750070)))

(assert (=> d!334487 e!750069))

(assert (= b!1169836 b!1169837))

(assert (= b!1169835 b!1169836))

(assert (= (and d!334487 ((_ is Cons!11571) (rules!9618 thiss!10527))) b!1169835))

(declare-fun order!7103 () Int)

(declare-fun order!7101 () Int)

(declare-fun dynLambda!5101 (Int Int) Int)

(declare-fun dynLambda!5102 (Int Int) Int)

(assert (=> b!1169837 (< (dynLambda!5101 order!7101 (toValue!3118 (transformation!2017 (h!16972 (rules!9618 thiss!10527))))) (dynLambda!5102 order!7103 lambda!48114))))

(declare-fun order!7105 () Int)

(declare-fun dynLambda!5103 (Int Int) Int)

(assert (=> b!1169837 (< (dynLambda!5103 order!7105 (toChars!2977 (transformation!2017 (h!16972 (rules!9618 thiss!10527))))) (dynLambda!5102 order!7103 lambda!48114))))

(assert (=> d!334487 true))

(declare-fun lt!400657 () Bool)

(assert (=> d!334487 (= lt!400657 (forall!3054 (t!110646 lt!400616) lambda!48114))))

(declare-fun e!750061 () Bool)

(assert (=> d!334487 (= lt!400657 e!750061)))

(declare-fun res!528310 () Bool)

(assert (=> d!334487 (=> res!528310 e!750061)))

(assert (=> d!334487 (= res!528310 (not ((_ is Cons!11570) (t!110646 lt!400616))))))

(assert (=> d!334487 (not (isEmpty!7024 (rules!9618 thiss!10527)))))

(assert (=> d!334487 (= (rulesProduceEachTokenIndividuallyList!578 Lexer!1710 (rules!9618 thiss!10527) (t!110646 lt!400616)) lt!400657)))

(declare-fun b!1169825 () Bool)

(declare-fun e!750062 () Bool)

(assert (=> b!1169825 (= e!750061 e!750062)))

(declare-fun res!528309 () Bool)

(assert (=> b!1169825 (=> (not res!528309) (not e!750062))))

(assert (=> b!1169825 (= res!528309 (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) (h!16971 (t!110646 lt!400616))))))

(declare-fun b!1169826 () Bool)

(assert (=> b!1169826 (= e!750062 (rulesProduceEachTokenIndividuallyList!578 Lexer!1710 (rules!9618 thiss!10527) (t!110646 (t!110646 lt!400616))))))

(assert (= (and d!334487 (not res!528310)) b!1169825))

(assert (= (and b!1169825 res!528309) b!1169826))

(declare-fun m!1342001 () Bool)

(assert (=> d!334487 m!1342001))

(assert (=> d!334487 m!1341829))

(declare-fun m!1342003 () Bool)

(assert (=> b!1169825 m!1342003))

(declare-fun m!1342005 () Bool)

(assert (=> b!1169826 m!1342005))

(assert (=> b!1169763 d!334487))

(declare-fun b!1169961 () Bool)

(declare-fun res!528389 () Bool)

(declare-fun e!750159 () Bool)

(assert (=> b!1169961 (=> (not res!528389) (not e!750159))))

(declare-fun lt!400779 () List!11594)

(declare-fun lt!400781 () List!11594)

(assert (=> b!1169961 (= res!528389 (subseq!267 lt!400779 lt!400781))))

(declare-fun b!1169962 () Bool)

(declare-fun res!528386 () Bool)

(assert (=> b!1169962 (=> (not res!528386) (not e!750159))))

(assert (=> b!1169962 (= res!528386 (not (isEmpty!7024 (rules!9618 thiss!10527))))))

(declare-fun b!1169963 () Bool)

(declare-fun e!750162 () Bool)

(declare-fun lt!400782 () List!11594)

(assert (=> b!1169963 (= e!750162 (<= 0 (size!9113 lt!400782)))))

(declare-fun d!334493 () Bool)

(declare-fun lt!400765 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!107 (LexerInterface!1712 List!11594 List!11595) Bool)

(declare-fun dropList!321 (BalanceConc!7616 Int) List!11594)

(assert (=> d!334493 (= lt!400765 (tokensListTwoByTwoPredicateSeparableList!107 Lexer!1710 (dropList!321 (tokens!1642 thiss!10527) 0) (rules!9618 thiss!10527)))))

(declare-fun lt!400791 () Unit!17736)

(declare-fun lt!400790 () Unit!17736)

(assert (=> d!334493 (= lt!400791 lt!400790)))

(assert (=> d!334493 (rulesProduceEachTokenIndividuallyList!578 Lexer!1710 (rules!9618 thiss!10527) lt!400779)))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!29 (LexerInterface!1712 List!11595 List!11594 List!11594) Unit!17736)

(assert (=> d!334493 (= lt!400790 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!29 Lexer!1710 (rules!9618 thiss!10527) lt!400781 lt!400779))))

(assert (=> d!334493 e!750159))

(declare-fun res!528387 () Bool)

(assert (=> d!334493 (=> (not res!528387) (not e!750159))))

(assert (=> d!334493 (= res!528387 ((_ is Lexer!1710) Lexer!1710))))

(assert (=> d!334493 (= lt!400779 (dropList!321 (tokens!1642 thiss!10527) 0))))

(assert (=> d!334493 (= lt!400781 (list!4262 (tokens!1642 thiss!10527)))))

(declare-fun lt!400770 () Unit!17736)

(declare-fun lt!400787 () Unit!17736)

(assert (=> d!334493 (= lt!400770 lt!400787)))

(assert (=> d!334493 (subseq!267 (drop!489 lt!400782 0) lt!400782)))

(declare-fun lemmaDropSubSeq!29 (List!11594 Int) Unit!17736)

(assert (=> d!334493 (= lt!400787 (lemmaDropSubSeq!29 lt!400782 0))))

(assert (=> d!334493 e!750162))

(declare-fun res!528385 () Bool)

(assert (=> d!334493 (=> (not res!528385) (not e!750162))))

(assert (=> d!334493 (= res!528385 (>= 0 0))))

(assert (=> d!334493 (= lt!400782 (list!4262 (tokens!1642 thiss!10527)))))

(declare-fun e!750161 () Bool)

(assert (=> d!334493 (= lt!400765 e!750161)))

(declare-fun res!528388 () Bool)

(assert (=> d!334493 (=> res!528388 e!750161)))

(assert (=> d!334493 (= res!528388 (not (< 0 (- (size!9109 (tokens!1642 thiss!10527)) 1))))))

(declare-fun e!750160 () Bool)

(assert (=> d!334493 e!750160))

(declare-fun res!528384 () Bool)

(assert (=> d!334493 (=> (not res!528384) (not e!750160))))

(assert (=> d!334493 (= res!528384 (>= 0 0))))

(assert (=> d!334493 (= (tokensListTwoByTwoPredicateSeparable!73 Lexer!1710 (tokens!1642 thiss!10527) 0 (rules!9618 thiss!10527)) lt!400765)))

(declare-fun b!1169964 () Bool)

(declare-fun res!528391 () Bool)

(assert (=> b!1169964 (=> (not res!528391) (not e!750159))))

(assert (=> b!1169964 (= res!528391 (rulesInvariant!1586 Lexer!1710 (rules!9618 thiss!10527)))))

(declare-fun b!1169965 () Bool)

(assert (=> b!1169965 (= e!750160 (<= 0 (size!9109 (tokens!1642 thiss!10527))))))

(declare-fun b!1169966 () Bool)

(declare-fun e!750158 () Bool)

(assert (=> b!1169966 (= e!750161 e!750158)))

(declare-fun res!528390 () Bool)

(assert (=> b!1169966 (=> (not res!528390) (not e!750158))))

(assert (=> b!1169966 (= res!528390 (separableTokensPredicate!134 Lexer!1710 (apply!2501 (tokens!1642 thiss!10527) 0) (apply!2501 (tokens!1642 thiss!10527) (+ 0 1)) (rules!9618 thiss!10527)))))

(declare-fun lt!400778 () Unit!17736)

(declare-fun Unit!17738 () Unit!17736)

(assert (=> b!1169966 (= lt!400778 Unit!17738)))

(assert (=> b!1169966 (> (size!9108 (charsOf!1072 (apply!2501 (tokens!1642 thiss!10527) (+ 0 1)))) 0)))

(declare-fun lt!400786 () Unit!17736)

(declare-fun Unit!17739 () Unit!17736)

(assert (=> b!1169966 (= lt!400786 Unit!17739)))

(assert (=> b!1169966 (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) (apply!2501 (tokens!1642 thiss!10527) (+ 0 1)))))

(declare-fun lt!400775 () Unit!17736)

(declare-fun Unit!17740 () Unit!17736)

(assert (=> b!1169966 (= lt!400775 Unit!17740)))

(assert (=> b!1169966 (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) (apply!2501 (tokens!1642 thiss!10527) 0))))

(declare-fun lt!400776 () Unit!17736)

(declare-fun lt!400777 () Unit!17736)

(assert (=> b!1169966 (= lt!400776 lt!400777)))

(declare-fun lt!400792 () Token!3696)

(assert (=> b!1169966 (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) lt!400792)))

(declare-fun lt!400772 () List!11594)

(assert (=> b!1169966 (= lt!400777 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!293 Lexer!1710 (rules!9618 thiss!10527) lt!400772 lt!400792))))

(assert (=> b!1169966 (= lt!400792 (apply!2501 (tokens!1642 thiss!10527) (+ 0 1)))))

(assert (=> b!1169966 (= lt!400772 (list!4262 (tokens!1642 thiss!10527)))))

(declare-fun lt!400793 () Unit!17736)

(declare-fun lt!400783 () Unit!17736)

(assert (=> b!1169966 (= lt!400793 lt!400783)))

(declare-fun lt!400797 () Token!3696)

(assert (=> b!1169966 (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) lt!400797)))

(declare-fun lt!400780 () List!11594)

(assert (=> b!1169966 (= lt!400783 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!293 Lexer!1710 (rules!9618 thiss!10527) lt!400780 lt!400797))))

(assert (=> b!1169966 (= lt!400797 (apply!2501 (tokens!1642 thiss!10527) 0))))

(assert (=> b!1169966 (= lt!400780 (list!4262 (tokens!1642 thiss!10527)))))

(declare-fun lt!400785 () Unit!17736)

(declare-fun lt!400769 () Unit!17736)

(assert (=> b!1169966 (= lt!400785 lt!400769)))

(declare-fun lt!400794 () List!11594)

(declare-fun lt!400789 () Int)

(assert (=> b!1169966 (= (tail!1690 (drop!489 lt!400794 lt!400789)) (drop!489 lt!400794 (+ lt!400789 1)))))

(assert (=> b!1169966 (= lt!400769 (lemmaDropTail!363 lt!400794 lt!400789))))

(assert (=> b!1169966 (= lt!400789 (+ 0 1))))

(assert (=> b!1169966 (= lt!400794 (list!4262 (tokens!1642 thiss!10527)))))

(declare-fun lt!400796 () Unit!17736)

(declare-fun lt!400773 () Unit!17736)

(assert (=> b!1169966 (= lt!400796 lt!400773)))

(declare-fun lt!400774 () List!11594)

(assert (=> b!1169966 (= (tail!1690 (drop!489 lt!400774 0)) (drop!489 lt!400774 (+ 0 1)))))

(assert (=> b!1169966 (= lt!400773 (lemmaDropTail!363 lt!400774 0))))

(assert (=> b!1169966 (= lt!400774 (list!4262 (tokens!1642 thiss!10527)))))

(declare-fun lt!400768 () Unit!17736)

(declare-fun lt!400767 () Unit!17736)

(assert (=> b!1169966 (= lt!400768 lt!400767)))

(declare-fun lt!400784 () List!11594)

(declare-fun lt!400766 () Int)

(assert (=> b!1169966 (= (head!2106 (drop!489 lt!400784 lt!400766)) (apply!2502 lt!400784 lt!400766))))

(assert (=> b!1169966 (= lt!400767 (lemmaDropApply!375 lt!400784 lt!400766))))

(assert (=> b!1169966 (= lt!400766 (+ 0 1))))

(assert (=> b!1169966 (= lt!400784 (list!4262 (tokens!1642 thiss!10527)))))

(declare-fun lt!400771 () Unit!17736)

(declare-fun lt!400795 () Unit!17736)

(assert (=> b!1169966 (= lt!400771 lt!400795)))

(declare-fun lt!400788 () List!11594)

(assert (=> b!1169966 (= (head!2106 (drop!489 lt!400788 0)) (apply!2502 lt!400788 0))))

(assert (=> b!1169966 (= lt!400795 (lemmaDropApply!375 lt!400788 0))))

(assert (=> b!1169966 (= lt!400788 (list!4262 (tokens!1642 thiss!10527)))))

(declare-fun b!1169967 () Bool)

(assert (=> b!1169967 (= e!750159 (rulesProduceEachTokenIndividuallyList!578 Lexer!1710 (rules!9618 thiss!10527) lt!400781))))

(declare-fun b!1169968 () Bool)

(assert (=> b!1169968 (= e!750158 (tokensListTwoByTwoPredicateSeparable!73 Lexer!1710 (tokens!1642 thiss!10527) (+ 0 1) (rules!9618 thiss!10527)))))

(assert (= (and d!334493 res!528384) b!1169965))

(assert (= (and d!334493 (not res!528388)) b!1169966))

(assert (= (and b!1169966 res!528390) b!1169968))

(assert (= (and d!334493 res!528385) b!1169963))

(assert (= (and d!334493 res!528387) b!1169962))

(assert (= (and b!1169962 res!528386) b!1169964))

(assert (= (and b!1169964 res!528391) b!1169961))

(assert (= (and b!1169961 res!528389) b!1169967))

(declare-fun m!1342153 () Bool)

(assert (=> b!1169968 m!1342153))

(assert (=> b!1169962 m!1341829))

(declare-fun m!1342155 () Bool)

(assert (=> d!334493 m!1342155))

(declare-fun m!1342157 () Bool)

(assert (=> d!334493 m!1342157))

(declare-fun m!1342159 () Bool)

(assert (=> d!334493 m!1342159))

(assert (=> d!334493 m!1341903))

(declare-fun m!1342161 () Bool)

(assert (=> d!334493 m!1342161))

(declare-fun m!1342163 () Bool)

(assert (=> d!334493 m!1342163))

(declare-fun m!1342165 () Bool)

(assert (=> d!334493 m!1342165))

(assert (=> d!334493 m!1342155))

(declare-fun m!1342167 () Bool)

(assert (=> d!334493 m!1342167))

(assert (=> d!334493 m!1341853))

(assert (=> d!334493 m!1342163))

(declare-fun m!1342169 () Bool)

(assert (=> b!1169963 m!1342169))

(declare-fun m!1342171 () Bool)

(assert (=> b!1169966 m!1342171))

(declare-fun m!1342173 () Bool)

(assert (=> b!1169966 m!1342173))

(declare-fun m!1342175 () Bool)

(assert (=> b!1169966 m!1342175))

(declare-fun m!1342177 () Bool)

(assert (=> b!1169966 m!1342177))

(declare-fun m!1342179 () Bool)

(assert (=> b!1169966 m!1342179))

(assert (=> b!1169966 m!1342175))

(declare-fun m!1342181 () Bool)

(assert (=> b!1169966 m!1342181))

(assert (=> b!1169966 m!1342171))

(declare-fun m!1342183 () Bool)

(assert (=> b!1169966 m!1342183))

(declare-fun m!1342185 () Bool)

(assert (=> b!1169966 m!1342185))

(declare-fun m!1342187 () Bool)

(assert (=> b!1169966 m!1342187))

(declare-fun m!1342189 () Bool)

(assert (=> b!1169966 m!1342189))

(declare-fun m!1342191 () Bool)

(assert (=> b!1169966 m!1342191))

(assert (=> b!1169966 m!1341897))

(declare-fun m!1342193 () Bool)

(assert (=> b!1169966 m!1342193))

(assert (=> b!1169966 m!1342187))

(declare-fun m!1342195 () Bool)

(assert (=> b!1169966 m!1342195))

(declare-fun m!1342197 () Bool)

(assert (=> b!1169966 m!1342197))

(assert (=> b!1169966 m!1342183))

(declare-fun m!1342199 () Bool)

(assert (=> b!1169966 m!1342199))

(assert (=> b!1169966 m!1341897))

(assert (=> b!1169966 m!1342171))

(declare-fun m!1342201 () Bool)

(assert (=> b!1169966 m!1342201))

(declare-fun m!1342203 () Bool)

(assert (=> b!1169966 m!1342203))

(assert (=> b!1169966 m!1341897))

(declare-fun m!1342205 () Bool)

(assert (=> b!1169966 m!1342205))

(declare-fun m!1342207 () Bool)

(assert (=> b!1169966 m!1342207))

(declare-fun m!1342209 () Bool)

(assert (=> b!1169966 m!1342209))

(declare-fun m!1342211 () Bool)

(assert (=> b!1169966 m!1342211))

(assert (=> b!1169966 m!1342205))

(declare-fun m!1342213 () Bool)

(assert (=> b!1169966 m!1342213))

(assert (=> b!1169966 m!1342207))

(declare-fun m!1342215 () Bool)

(assert (=> b!1169966 m!1342215))

(declare-fun m!1342217 () Bool)

(assert (=> b!1169966 m!1342217))

(assert (=> b!1169966 m!1341853))

(declare-fun m!1342219 () Bool)

(assert (=> b!1169966 m!1342219))

(assert (=> b!1169966 m!1342171))

(declare-fun m!1342221 () Bool)

(assert (=> b!1169966 m!1342221))

(assert (=> b!1169965 m!1341903))

(declare-fun m!1342223 () Bool)

(assert (=> b!1169961 m!1342223))

(assert (=> b!1169964 m!1341855))

(declare-fun m!1342225 () Bool)

(assert (=> b!1169967 m!1342225))

(assert (=> b!1169753 d!334493))

(declare-fun b!1169969 () Bool)

(declare-fun res!528397 () Bool)

(declare-fun e!750164 () Bool)

(assert (=> b!1169969 (=> (not res!528397) (not e!750164))))

(declare-fun lt!400812 () List!11594)

(declare-fun lt!400814 () List!11594)

(assert (=> b!1169969 (= res!528397 (subseq!267 lt!400812 lt!400814))))

(declare-fun b!1169970 () Bool)

(declare-fun res!528394 () Bool)

(assert (=> b!1169970 (=> (not res!528394) (not e!750164))))

(assert (=> b!1169970 (= res!528394 (not (isEmpty!7024 (rules!9618 thiss!10527))))))

(declare-fun b!1169971 () Bool)

(declare-fun e!750167 () Bool)

(declare-fun lt!400815 () List!11594)

(assert (=> b!1169971 (= e!750167 (<= 1 (size!9113 lt!400815)))))

(declare-fun d!334551 () Bool)

(declare-fun lt!400798 () Bool)

(assert (=> d!334551 (= lt!400798 (tokensListTwoByTwoPredicateSeparableList!107 Lexer!1710 (dropList!321 (tokens!1642 thiss!10527) 1) (rules!9618 thiss!10527)))))

(declare-fun lt!400824 () Unit!17736)

(declare-fun lt!400823 () Unit!17736)

(assert (=> d!334551 (= lt!400824 lt!400823)))

(assert (=> d!334551 (rulesProduceEachTokenIndividuallyList!578 Lexer!1710 (rules!9618 thiss!10527) lt!400812)))

(assert (=> d!334551 (= lt!400823 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!29 Lexer!1710 (rules!9618 thiss!10527) lt!400814 lt!400812))))

(assert (=> d!334551 e!750164))

(declare-fun res!528395 () Bool)

(assert (=> d!334551 (=> (not res!528395) (not e!750164))))

(assert (=> d!334551 (= res!528395 ((_ is Lexer!1710) Lexer!1710))))

(assert (=> d!334551 (= lt!400812 (dropList!321 (tokens!1642 thiss!10527) 1))))

(assert (=> d!334551 (= lt!400814 (list!4262 (tokens!1642 thiss!10527)))))

(declare-fun lt!400803 () Unit!17736)

(declare-fun lt!400820 () Unit!17736)

(assert (=> d!334551 (= lt!400803 lt!400820)))

(assert (=> d!334551 (subseq!267 (drop!489 lt!400815 1) lt!400815)))

(assert (=> d!334551 (= lt!400820 (lemmaDropSubSeq!29 lt!400815 1))))

(assert (=> d!334551 e!750167))

(declare-fun res!528393 () Bool)

(assert (=> d!334551 (=> (not res!528393) (not e!750167))))

(assert (=> d!334551 (= res!528393 (>= 1 0))))

(assert (=> d!334551 (= lt!400815 (list!4262 (tokens!1642 thiss!10527)))))

(declare-fun e!750166 () Bool)

(assert (=> d!334551 (= lt!400798 e!750166)))

(declare-fun res!528396 () Bool)

(assert (=> d!334551 (=> res!528396 e!750166)))

(assert (=> d!334551 (= res!528396 (not (< 1 (- (size!9109 (tokens!1642 thiss!10527)) 1))))))

(declare-fun e!750165 () Bool)

(assert (=> d!334551 e!750165))

(declare-fun res!528392 () Bool)

(assert (=> d!334551 (=> (not res!528392) (not e!750165))))

(assert (=> d!334551 (= res!528392 (>= 1 0))))

(assert (=> d!334551 (= (tokensListTwoByTwoPredicateSeparable!73 Lexer!1710 (tokens!1642 thiss!10527) 1 (rules!9618 thiss!10527)) lt!400798)))

(declare-fun b!1169972 () Bool)

(declare-fun res!528399 () Bool)

(assert (=> b!1169972 (=> (not res!528399) (not e!750164))))

(assert (=> b!1169972 (= res!528399 (rulesInvariant!1586 Lexer!1710 (rules!9618 thiss!10527)))))

(declare-fun b!1169973 () Bool)

(assert (=> b!1169973 (= e!750165 (<= 1 (size!9109 (tokens!1642 thiss!10527))))))

(declare-fun b!1169974 () Bool)

(declare-fun e!750163 () Bool)

(assert (=> b!1169974 (= e!750166 e!750163)))

(declare-fun res!528398 () Bool)

(assert (=> b!1169974 (=> (not res!528398) (not e!750163))))

(assert (=> b!1169974 (= res!528398 (separableTokensPredicate!134 Lexer!1710 (apply!2501 (tokens!1642 thiss!10527) 1) (apply!2501 (tokens!1642 thiss!10527) (+ 1 1)) (rules!9618 thiss!10527)))))

(declare-fun lt!400811 () Unit!17736)

(declare-fun Unit!17741 () Unit!17736)

(assert (=> b!1169974 (= lt!400811 Unit!17741)))

(assert (=> b!1169974 (> (size!9108 (charsOf!1072 (apply!2501 (tokens!1642 thiss!10527) (+ 1 1)))) 0)))

(declare-fun lt!400819 () Unit!17736)

(declare-fun Unit!17742 () Unit!17736)

(assert (=> b!1169974 (= lt!400819 Unit!17742)))

(assert (=> b!1169974 (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) (apply!2501 (tokens!1642 thiss!10527) (+ 1 1)))))

(declare-fun lt!400808 () Unit!17736)

(declare-fun Unit!17743 () Unit!17736)

(assert (=> b!1169974 (= lt!400808 Unit!17743)))

(assert (=> b!1169974 (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) (apply!2501 (tokens!1642 thiss!10527) 1))))

(declare-fun lt!400809 () Unit!17736)

(declare-fun lt!400810 () Unit!17736)

(assert (=> b!1169974 (= lt!400809 lt!400810)))

(declare-fun lt!400825 () Token!3696)

(assert (=> b!1169974 (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) lt!400825)))

(declare-fun lt!400805 () List!11594)

(assert (=> b!1169974 (= lt!400810 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!293 Lexer!1710 (rules!9618 thiss!10527) lt!400805 lt!400825))))

(assert (=> b!1169974 (= lt!400825 (apply!2501 (tokens!1642 thiss!10527) (+ 1 1)))))

(assert (=> b!1169974 (= lt!400805 (list!4262 (tokens!1642 thiss!10527)))))

(declare-fun lt!400826 () Unit!17736)

(declare-fun lt!400816 () Unit!17736)

(assert (=> b!1169974 (= lt!400826 lt!400816)))

(declare-fun lt!400830 () Token!3696)

(assert (=> b!1169974 (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) lt!400830)))

(declare-fun lt!400813 () List!11594)

(assert (=> b!1169974 (= lt!400816 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!293 Lexer!1710 (rules!9618 thiss!10527) lt!400813 lt!400830))))

(assert (=> b!1169974 (= lt!400830 (apply!2501 (tokens!1642 thiss!10527) 1))))

(assert (=> b!1169974 (= lt!400813 (list!4262 (tokens!1642 thiss!10527)))))

(declare-fun lt!400818 () Unit!17736)

(declare-fun lt!400802 () Unit!17736)

(assert (=> b!1169974 (= lt!400818 lt!400802)))

(declare-fun lt!400827 () List!11594)

(declare-fun lt!400822 () Int)

(assert (=> b!1169974 (= (tail!1690 (drop!489 lt!400827 lt!400822)) (drop!489 lt!400827 (+ lt!400822 1)))))

(assert (=> b!1169974 (= lt!400802 (lemmaDropTail!363 lt!400827 lt!400822))))

(assert (=> b!1169974 (= lt!400822 (+ 1 1))))

(assert (=> b!1169974 (= lt!400827 (list!4262 (tokens!1642 thiss!10527)))))

(declare-fun lt!400829 () Unit!17736)

(declare-fun lt!400806 () Unit!17736)

(assert (=> b!1169974 (= lt!400829 lt!400806)))

(declare-fun lt!400807 () List!11594)

(assert (=> b!1169974 (= (tail!1690 (drop!489 lt!400807 1)) (drop!489 lt!400807 (+ 1 1)))))

(assert (=> b!1169974 (= lt!400806 (lemmaDropTail!363 lt!400807 1))))

(assert (=> b!1169974 (= lt!400807 (list!4262 (tokens!1642 thiss!10527)))))

(declare-fun lt!400801 () Unit!17736)

(declare-fun lt!400800 () Unit!17736)

(assert (=> b!1169974 (= lt!400801 lt!400800)))

(declare-fun lt!400817 () List!11594)

(declare-fun lt!400799 () Int)

(assert (=> b!1169974 (= (head!2106 (drop!489 lt!400817 lt!400799)) (apply!2502 lt!400817 lt!400799))))

(assert (=> b!1169974 (= lt!400800 (lemmaDropApply!375 lt!400817 lt!400799))))

(assert (=> b!1169974 (= lt!400799 (+ 1 1))))

(assert (=> b!1169974 (= lt!400817 (list!4262 (tokens!1642 thiss!10527)))))

(declare-fun lt!400804 () Unit!17736)

(declare-fun lt!400828 () Unit!17736)

(assert (=> b!1169974 (= lt!400804 lt!400828)))

(declare-fun lt!400821 () List!11594)

(assert (=> b!1169974 (= (head!2106 (drop!489 lt!400821 1)) (apply!2502 lt!400821 1))))

(assert (=> b!1169974 (= lt!400828 (lemmaDropApply!375 lt!400821 1))))

(assert (=> b!1169974 (= lt!400821 (list!4262 (tokens!1642 thiss!10527)))))

(declare-fun b!1169975 () Bool)

(assert (=> b!1169975 (= e!750164 (rulesProduceEachTokenIndividuallyList!578 Lexer!1710 (rules!9618 thiss!10527) lt!400814))))

(declare-fun b!1169976 () Bool)

(assert (=> b!1169976 (= e!750163 (tokensListTwoByTwoPredicateSeparable!73 Lexer!1710 (tokens!1642 thiss!10527) (+ 1 1) (rules!9618 thiss!10527)))))

(assert (= (and d!334551 res!528392) b!1169973))

(assert (= (and d!334551 (not res!528396)) b!1169974))

(assert (= (and b!1169974 res!528398) b!1169976))

(assert (= (and d!334551 res!528393) b!1169971))

(assert (= (and d!334551 res!528395) b!1169970))

(assert (= (and b!1169970 res!528394) b!1169972))

(assert (= (and b!1169972 res!528399) b!1169969))

(assert (= (and b!1169969 res!528397) b!1169975))

(declare-fun m!1342227 () Bool)

(assert (=> b!1169976 m!1342227))

(assert (=> b!1169970 m!1341829))

(declare-fun m!1342229 () Bool)

(assert (=> d!334551 m!1342229))

(declare-fun m!1342231 () Bool)

(assert (=> d!334551 m!1342231))

(declare-fun m!1342233 () Bool)

(assert (=> d!334551 m!1342233))

(assert (=> d!334551 m!1341903))

(declare-fun m!1342235 () Bool)

(assert (=> d!334551 m!1342235))

(declare-fun m!1342237 () Bool)

(assert (=> d!334551 m!1342237))

(declare-fun m!1342239 () Bool)

(assert (=> d!334551 m!1342239))

(assert (=> d!334551 m!1342229))

(declare-fun m!1342241 () Bool)

(assert (=> d!334551 m!1342241))

(assert (=> d!334551 m!1341853))

(assert (=> d!334551 m!1342237))

(declare-fun m!1342243 () Bool)

(assert (=> b!1169971 m!1342243))

(declare-fun m!1342245 () Bool)

(assert (=> b!1169974 m!1342245))

(declare-fun m!1342247 () Bool)

(assert (=> b!1169974 m!1342247))

(declare-fun m!1342249 () Bool)

(assert (=> b!1169974 m!1342249))

(declare-fun m!1342251 () Bool)

(assert (=> b!1169974 m!1342251))

(declare-fun m!1342253 () Bool)

(assert (=> b!1169974 m!1342253))

(assert (=> b!1169974 m!1342249))

(declare-fun m!1342255 () Bool)

(assert (=> b!1169974 m!1342255))

(assert (=> b!1169974 m!1342245))

(declare-fun m!1342257 () Bool)

(assert (=> b!1169974 m!1342257))

(declare-fun m!1342259 () Bool)

(assert (=> b!1169974 m!1342259))

(declare-fun m!1342261 () Bool)

(assert (=> b!1169974 m!1342261))

(declare-fun m!1342263 () Bool)

(assert (=> b!1169974 m!1342263))

(declare-fun m!1342265 () Bool)

(assert (=> b!1169974 m!1342265))

(assert (=> b!1169974 m!1341887))

(declare-fun m!1342267 () Bool)

(assert (=> b!1169974 m!1342267))

(assert (=> b!1169974 m!1342261))

(declare-fun m!1342269 () Bool)

(assert (=> b!1169974 m!1342269))

(declare-fun m!1342271 () Bool)

(assert (=> b!1169974 m!1342271))

(assert (=> b!1169974 m!1342257))

(declare-fun m!1342273 () Bool)

(assert (=> b!1169974 m!1342273))

(assert (=> b!1169974 m!1341887))

(assert (=> b!1169974 m!1342245))

(declare-fun m!1342275 () Bool)

(assert (=> b!1169974 m!1342275))

(declare-fun m!1342277 () Bool)

(assert (=> b!1169974 m!1342277))

(assert (=> b!1169974 m!1341887))

(declare-fun m!1342279 () Bool)

(assert (=> b!1169974 m!1342279))

(declare-fun m!1342281 () Bool)

(assert (=> b!1169974 m!1342281))

(declare-fun m!1342283 () Bool)

(assert (=> b!1169974 m!1342283))

(declare-fun m!1342285 () Bool)

(assert (=> b!1169974 m!1342285))

(assert (=> b!1169974 m!1342279))

(declare-fun m!1342287 () Bool)

(assert (=> b!1169974 m!1342287))

(assert (=> b!1169974 m!1342281))

(declare-fun m!1342289 () Bool)

(assert (=> b!1169974 m!1342289))

(declare-fun m!1342291 () Bool)

(assert (=> b!1169974 m!1342291))

(assert (=> b!1169974 m!1341853))

(declare-fun m!1342293 () Bool)

(assert (=> b!1169974 m!1342293))

(assert (=> b!1169974 m!1342245))

(declare-fun m!1342295 () Bool)

(assert (=> b!1169974 m!1342295))

(assert (=> b!1169973 m!1341903))

(declare-fun m!1342297 () Bool)

(assert (=> b!1169969 m!1342297))

(assert (=> b!1169972 m!1341855))

(declare-fun m!1342299 () Bool)

(assert (=> b!1169975 m!1342299))

(assert (=> b!1169764 d!334551))

(declare-fun bs!285529 () Bool)

(declare-fun d!334553 () Bool)

(assert (= bs!285529 (and d!334553 b!1169756)))

(declare-fun lambda!48115 () Int)

(assert (=> bs!285529 (= lambda!48115 lambda!48103)))

(declare-fun bs!285530 () Bool)

(assert (= bs!285530 (and d!334553 d!334487)))

(assert (=> bs!285530 (= lambda!48115 lambda!48114)))

(declare-fun b!1169981 () Bool)

(declare-fun e!750172 () Bool)

(assert (=> b!1169981 (= e!750172 true)))

(declare-fun b!1169980 () Bool)

(declare-fun e!750171 () Bool)

(assert (=> b!1169980 (= e!750171 e!750172)))

(declare-fun b!1169979 () Bool)

(declare-fun e!750170 () Bool)

(assert (=> b!1169979 (= e!750170 e!750171)))

(assert (=> d!334553 e!750170))

(assert (= b!1169980 b!1169981))

(assert (= b!1169979 b!1169980))

(assert (= (and d!334553 ((_ is Cons!11571) (rules!9618 thiss!10527))) b!1169979))

(assert (=> b!1169981 (< (dynLambda!5101 order!7101 (toValue!3118 (transformation!2017 (h!16972 (rules!9618 thiss!10527))))) (dynLambda!5102 order!7103 lambda!48115))))

(assert (=> b!1169981 (< (dynLambda!5103 order!7105 (toChars!2977 (transformation!2017 (h!16972 (rules!9618 thiss!10527))))) (dynLambda!5102 order!7103 lambda!48115))))

(assert (=> d!334553 true))

(declare-fun lt!400831 () Bool)

(assert (=> d!334553 (= lt!400831 (forall!3054 (t!110646 lt!400617) lambda!48115))))

(declare-fun e!750168 () Bool)

(assert (=> d!334553 (= lt!400831 e!750168)))

(declare-fun res!528401 () Bool)

(assert (=> d!334553 (=> res!528401 e!750168)))

(assert (=> d!334553 (= res!528401 (not ((_ is Cons!11570) (t!110646 lt!400617))))))

(assert (=> d!334553 (not (isEmpty!7024 (rules!9618 thiss!10527)))))

(assert (=> d!334553 (= (rulesProduceEachTokenIndividuallyList!578 Lexer!1710 (rules!9618 thiss!10527) (t!110646 lt!400617)) lt!400831)))

(declare-fun b!1169977 () Bool)

(declare-fun e!750169 () Bool)

(assert (=> b!1169977 (= e!750168 e!750169)))

(declare-fun res!528400 () Bool)

(assert (=> b!1169977 (=> (not res!528400) (not e!750169))))

(assert (=> b!1169977 (= res!528400 (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) (h!16971 (t!110646 lt!400617))))))

(declare-fun b!1169978 () Bool)

(assert (=> b!1169978 (= e!750169 (rulesProduceEachTokenIndividuallyList!578 Lexer!1710 (rules!9618 thiss!10527) (t!110646 (t!110646 lt!400617))))))

(assert (= (and d!334553 (not res!528401)) b!1169977))

(assert (= (and b!1169977 res!528400) b!1169978))

(declare-fun m!1342301 () Bool)

(assert (=> d!334553 m!1342301))

(assert (=> d!334553 m!1341829))

(declare-fun m!1342303 () Bool)

(assert (=> b!1169977 m!1342303))

(declare-fun m!1342305 () Bool)

(assert (=> b!1169978 m!1342305))

(assert (=> b!1169754 d!334553))

(declare-fun d!334555 () Bool)

(declare-fun res!528408 () Bool)

(declare-fun e!750175 () Bool)

(assert (=> d!334555 (=> (not res!528408) (not e!750175))))

(assert (=> d!334555 (= res!528408 (not (isEmpty!7024 (rules!9618 thiss!10527))))))

(assert (=> d!334555 (= (inv!15245 thiss!10527) e!750175)))

(declare-fun b!1169988 () Bool)

(declare-fun res!528409 () Bool)

(assert (=> b!1169988 (=> (not res!528409) (not e!750175))))

(assert (=> b!1169988 (= res!528409 (rulesInvariant!1586 Lexer!1710 (rules!9618 thiss!10527)))))

(declare-fun b!1169989 () Bool)

(declare-fun res!528410 () Bool)

(assert (=> b!1169989 (=> (not res!528410) (not e!750175))))

(assert (=> b!1169989 (= res!528410 (rulesProduceEachTokenIndividually!750 Lexer!1710 (rules!9618 thiss!10527) (tokens!1642 thiss!10527)))))

(declare-fun b!1169990 () Bool)

(assert (=> b!1169990 (= e!750175 (separableTokens!148 Lexer!1710 (tokens!1642 thiss!10527) (rules!9618 thiss!10527)))))

(assert (= (and d!334555 res!528408) b!1169988))

(assert (= (and b!1169988 res!528409) b!1169989))

(assert (= (and b!1169989 res!528410) b!1169990))

(assert (=> d!334555 m!1341829))

(assert (=> b!1169988 m!1341855))

(assert (=> b!1169989 m!1341849))

(declare-fun m!1342307 () Bool)

(assert (=> b!1169990 m!1342307))

(assert (=> start!102854 d!334555))

(declare-fun d!334557 () Bool)

(declare-fun take!77 (List!11594 Int) List!11594)

(assert (=> d!334557 (= (slice!337 lt!400617 from!787 to!267) (take!77 (drop!489 lt!400617 from!787) (- to!267 from!787)))))

(declare-fun bs!285531 () Bool)

(assert (= bs!285531 d!334557))

(declare-fun m!1342309 () Bool)

(assert (=> bs!285531 m!1342309))

(assert (=> bs!285531 m!1342309))

(declare-fun m!1342311 () Bool)

(assert (=> bs!285531 m!1342311))

(assert (=> b!1169765 d!334557))

(declare-fun d!334559 () Bool)

(assert (=> d!334559 (forall!3054 lt!400616 lambda!48103)))

(declare-fun lt!400834 () Unit!17736)

(declare-fun choose!7545 (List!11594 List!11594 Int) Unit!17736)

(assert (=> d!334559 (= lt!400834 (choose!7545 lt!400616 lt!400617 lambda!48103))))

(assert (=> d!334559 (forall!3054 lt!400617 lambda!48103)))

(assert (=> d!334559 (= (lemmaForallSubseq!155 lt!400616 lt!400617 lambda!48103) lt!400834)))

(declare-fun bs!285532 () Bool)

(assert (= bs!285532 d!334559))

(assert (=> bs!285532 m!1341913))

(declare-fun m!1342313 () Bool)

(assert (=> bs!285532 m!1342313))

(declare-fun m!1342315 () Bool)

(assert (=> bs!285532 m!1342315))

(assert (=> b!1169765 d!334559))

(declare-fun d!334561 () Bool)

(declare-fun e!750181 () Bool)

(assert (=> d!334561 e!750181))

(declare-fun res!528418 () Bool)

(assert (=> d!334561 (=> (not res!528418) (not e!750181))))

(declare-fun slice!339 (Conc!3797 Int Int) Conc!3797)

(assert (=> d!334561 (= res!528418 (isBalanced!1069 (slice!339 (c!195203 (tokens!1642 thiss!10527)) from!787 to!267)))))

(declare-fun lt!400837 () BalanceConc!7616)

(assert (=> d!334561 (= lt!400837 (BalanceConc!7617 (slice!339 (c!195203 (tokens!1642 thiss!10527)) from!787 to!267)))))

(declare-fun e!750180 () Bool)

(assert (=> d!334561 e!750180))

(declare-fun res!528417 () Bool)

(assert (=> d!334561 (=> (not res!528417) (not e!750180))))

(assert (=> d!334561 (= res!528417 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!334561 (= (slice!336 (tokens!1642 thiss!10527) from!787 to!267) lt!400837)))

(declare-fun b!1169997 () Bool)

(declare-fun res!528419 () Bool)

(assert (=> b!1169997 (=> (not res!528419) (not e!750180))))

(assert (=> b!1169997 (= res!528419 (<= to!267 (size!9109 (tokens!1642 thiss!10527))))))

(declare-fun b!1169998 () Bool)

(assert (=> b!1169998 (= e!750180 (isBalanced!1069 (c!195203 (tokens!1642 thiss!10527))))))

(declare-fun b!1169999 () Bool)

(assert (=> b!1169999 (= e!750181 (= (list!4262 lt!400837) (slice!337 (list!4262 (tokens!1642 thiss!10527)) from!787 to!267)))))

(assert (= (and d!334561 res!528417) b!1169997))

(assert (= (and b!1169997 res!528419) b!1169998))

(assert (= (and d!334561 res!528418) b!1169999))

(declare-fun m!1342317 () Bool)

(assert (=> d!334561 m!1342317))

(assert (=> d!334561 m!1342317))

(declare-fun m!1342319 () Bool)

(assert (=> d!334561 m!1342319))

(assert (=> b!1169997 m!1341903))

(assert (=> b!1169998 m!1341935))

(declare-fun m!1342321 () Bool)

(assert (=> b!1169999 m!1342321))

(assert (=> b!1169999 m!1341853))

(assert (=> b!1169999 m!1341853))

(declare-fun m!1342323 () Bool)

(assert (=> b!1169999 m!1342323))

(assert (=> b!1169765 d!334561))

(declare-fun d!334563 () Bool)

(declare-fun res!528424 () Bool)

(declare-fun e!750186 () Bool)

(assert (=> d!334563 (=> res!528424 e!750186)))

(assert (=> d!334563 (= res!528424 ((_ is Nil!11570) lt!400616))))

(assert (=> d!334563 (= (forall!3054 lt!400616 lambda!48103) e!750186)))

(declare-fun b!1170004 () Bool)

(declare-fun e!750187 () Bool)

(assert (=> b!1170004 (= e!750186 e!750187)))

(declare-fun res!528425 () Bool)

(assert (=> b!1170004 (=> (not res!528425) (not e!750187))))

(declare-fun dynLambda!5105 (Int Token!3696) Bool)

(assert (=> b!1170004 (= res!528425 (dynLambda!5105 lambda!48103 (h!16971 lt!400616)))))

(declare-fun b!1170005 () Bool)

(assert (=> b!1170005 (= e!750187 (forall!3054 (t!110646 lt!400616) lambda!48103))))

(assert (= (and d!334563 (not res!528424)) b!1170004))

(assert (= (and b!1170004 res!528425) b!1170005))

(declare-fun b_lambda!34963 () Bool)

(assert (=> (not b_lambda!34963) (not b!1170004)))

(declare-fun m!1342325 () Bool)

(assert (=> b!1170004 m!1342325))

(declare-fun m!1342327 () Bool)

(assert (=> b!1170005 m!1342327))

(assert (=> b!1169765 d!334563))

(declare-fun d!334565 () Bool)

(declare-fun list!4265 (Conc!3797) List!11594)

(assert (=> d!334565 (= (list!4262 lt!400624) (list!4265 (c!195203 lt!400624)))))

(declare-fun bs!285533 () Bool)

(assert (= bs!285533 d!334565))

(declare-fun m!1342329 () Bool)

(assert (=> bs!285533 m!1342329))

(assert (=> b!1169765 d!334565))

(declare-fun b!1170017 () Bool)

(declare-fun e!750199 () Bool)

(assert (=> b!1170017 (= e!750199 (subseq!267 (slice!337 lt!400617 from!787 to!267) (t!110646 lt!400617)))))

(declare-fun b!1170015 () Bool)

(declare-fun e!750197 () Bool)

(assert (=> b!1170015 (= e!750197 e!750199)))

(declare-fun res!528436 () Bool)

(assert (=> b!1170015 (=> res!528436 e!750199)))

(declare-fun e!750196 () Bool)

(assert (=> b!1170015 (= res!528436 e!750196)))

(declare-fun res!528435 () Bool)

(assert (=> b!1170015 (=> (not res!528435) (not e!750196))))

(assert (=> b!1170015 (= res!528435 (= (h!16971 (slice!337 lt!400617 from!787 to!267)) (h!16971 lt!400617)))))

(declare-fun b!1170016 () Bool)

(assert (=> b!1170016 (= e!750196 (subseq!267 (t!110646 (slice!337 lt!400617 from!787 to!267)) (t!110646 lt!400617)))))

(declare-fun d!334567 () Bool)

(declare-fun res!528437 () Bool)

(declare-fun e!750198 () Bool)

(assert (=> d!334567 (=> res!528437 e!750198)))

(assert (=> d!334567 (= res!528437 ((_ is Nil!11570) (slice!337 lt!400617 from!787 to!267)))))

(assert (=> d!334567 (= (subseq!267 (slice!337 lt!400617 from!787 to!267) lt!400617) e!750198)))

(declare-fun b!1170014 () Bool)

(assert (=> b!1170014 (= e!750198 e!750197)))

(declare-fun res!528434 () Bool)

(assert (=> b!1170014 (=> (not res!528434) (not e!750197))))

(assert (=> b!1170014 (= res!528434 ((_ is Cons!11570) lt!400617))))

(assert (= (and d!334567 (not res!528437)) b!1170014))

(assert (= (and b!1170014 res!528434) b!1170015))

(assert (= (and b!1170015 res!528435) b!1170016))

(assert (= (and b!1170015 (not res!528436)) b!1170017))

(assert (=> b!1170017 m!1341915))

(declare-fun m!1342331 () Bool)

(assert (=> b!1170017 m!1342331))

(declare-fun m!1342333 () Bool)

(assert (=> b!1170016 m!1342333))

(assert (=> b!1169765 d!334567))

(declare-fun d!334569 () Bool)

(assert (=> d!334569 (subseq!267 (slice!337 lt!400617 from!787 to!267) lt!400617)))

(declare-fun lt!400840 () Unit!17736)

(declare-fun choose!7546 (List!11594 Int Int) Unit!17736)

(assert (=> d!334569 (= lt!400840 (choose!7546 lt!400617 from!787 to!267))))

(declare-fun e!750202 () Bool)

(assert (=> d!334569 e!750202))

(declare-fun res!528440 () Bool)

(assert (=> d!334569 (=> (not res!528440) (not e!750202))))

(assert (=> d!334569 (= res!528440 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!334569 (= (lemmaSliceSubseq!108 lt!400617 from!787 to!267) lt!400840)))

(declare-fun b!1170020 () Bool)

(assert (=> b!1170020 (= e!750202 (<= to!267 (size!9113 lt!400617)))))

(assert (= (and d!334569 res!528440) b!1170020))

(assert (=> d!334569 m!1341915))

(assert (=> d!334569 m!1341915))

(assert (=> d!334569 m!1341923))

(declare-fun m!1342335 () Bool)

(assert (=> d!334569 m!1342335))

(declare-fun m!1342337 () Bool)

(assert (=> b!1170020 m!1342337))

(assert (=> b!1169765 d!334569))

(declare-fun bs!285534 () Bool)

(declare-fun d!334571 () Bool)

(assert (= bs!285534 (and d!334571 b!1169756)))

(declare-fun lambda!48120 () Int)

(assert (=> bs!285534 (= lambda!48120 lambda!48103)))

(declare-fun bs!285535 () Bool)

(assert (= bs!285535 (and d!334571 d!334487)))

(assert (=> bs!285535 (= lambda!48120 lambda!48114)))

(declare-fun bs!285536 () Bool)

(assert (= bs!285536 (and d!334571 d!334553)))

(assert (=> bs!285536 (= lambda!48120 lambda!48115)))

(declare-fun b!1170058 () Bool)

(declare-fun e!750228 () Bool)

(assert (=> b!1170058 (= e!750228 true)))

(declare-fun b!1170057 () Bool)

(declare-fun e!750227 () Bool)

(assert (=> b!1170057 (= e!750227 e!750228)))

(declare-fun b!1170056 () Bool)

(declare-fun e!750226 () Bool)

(assert (=> b!1170056 (= e!750226 e!750227)))

(assert (=> d!334571 e!750226))

(assert (= b!1170057 b!1170058))

(assert (= b!1170056 b!1170057))

(assert (= (and d!334571 ((_ is Cons!11571) (rules!9618 thiss!10527))) b!1170056))

(assert (=> b!1170058 (< (dynLambda!5101 order!7101 (toValue!3118 (transformation!2017 (h!16972 (rules!9618 thiss!10527))))) (dynLambda!5102 order!7103 lambda!48120))))

(assert (=> b!1170058 (< (dynLambda!5103 order!7105 (toChars!2977 (transformation!2017 (h!16972 (rules!9618 thiss!10527))))) (dynLambda!5102 order!7103 lambda!48120))))

(assert (=> d!334571 true))

(declare-fun e!750225 () Bool)

(assert (=> d!334571 e!750225))

(declare-fun res!528475 () Bool)

(assert (=> d!334571 (=> (not res!528475) (not e!750225))))

(declare-fun lt!400975 () Bool)

(assert (=> d!334571 (= res!528475 (= lt!400975 (forall!3054 (list!4262 lt!400624) lambda!48120)))))

(assert (=> d!334571 (= lt!400975 (forall!3053 lt!400624 lambda!48120))))

(assert (=> d!334571 (not (isEmpty!7024 (rules!9618 thiss!10527)))))

(assert (=> d!334571 (= (rulesProduceEachTokenIndividually!750 Lexer!1710 (rules!9618 thiss!10527) lt!400624) lt!400975)))

(declare-fun b!1170055 () Bool)

(assert (=> b!1170055 (= e!750225 (= lt!400975 (rulesProduceEachTokenIndividuallyList!578 Lexer!1710 (rules!9618 thiss!10527) (list!4262 lt!400624))))))

(assert (= (and d!334571 res!528475) b!1170055))

(assert (=> d!334571 m!1341919))

(assert (=> d!334571 m!1341919))

(declare-fun m!1342487 () Bool)

(assert (=> d!334571 m!1342487))

(declare-fun m!1342489 () Bool)

(assert (=> d!334571 m!1342489))

(assert (=> d!334571 m!1341829))

(assert (=> b!1170055 m!1341919))

(assert (=> b!1170055 m!1341919))

(declare-fun m!1342491 () Bool)

(assert (=> b!1170055 m!1342491))

(assert (=> b!1169755 d!334571))

(declare-fun d!334577 () Bool)

(declare-fun lt!400978 () Bool)

(assert (=> d!334577 (= lt!400978 (forall!3054 (list!4262 lt!400624) lambda!48103))))

(declare-fun forall!3056 (Conc!3797 Int) Bool)

(assert (=> d!334577 (= lt!400978 (forall!3056 (c!195203 lt!400624) lambda!48103))))

(assert (=> d!334577 (= (forall!3053 lt!400624 lambda!48103) lt!400978)))

(declare-fun bs!285537 () Bool)

(assert (= bs!285537 d!334577))

(assert (=> bs!285537 m!1341919))

(assert (=> bs!285537 m!1341919))

(declare-fun m!1342493 () Bool)

(assert (=> bs!285537 m!1342493))

(declare-fun m!1342495 () Bool)

(assert (=> bs!285537 m!1342495))

(assert (=> b!1169755 d!334577))

(declare-fun d!334579 () Bool)

(declare-fun c!195232 () Bool)

(assert (=> d!334579 (= c!195232 ((_ is Node!3797) (c!195203 (tokens!1642 thiss!10527))))))

(declare-fun e!750233 () Bool)

(assert (=> d!334579 (= (inv!15246 (c!195203 (tokens!1642 thiss!10527))) e!750233)))

(declare-fun b!1170065 () Bool)

(declare-fun inv!15247 (Conc!3797) Bool)

(assert (=> b!1170065 (= e!750233 (inv!15247 (c!195203 (tokens!1642 thiss!10527))))))

(declare-fun b!1170066 () Bool)

(declare-fun e!750234 () Bool)

(assert (=> b!1170066 (= e!750233 e!750234)))

(declare-fun res!528478 () Bool)

(assert (=> b!1170066 (= res!528478 (not ((_ is Leaf!5816) (c!195203 (tokens!1642 thiss!10527)))))))

(assert (=> b!1170066 (=> res!528478 e!750234)))

(declare-fun b!1170067 () Bool)

(declare-fun inv!15248 (Conc!3797) Bool)

(assert (=> b!1170067 (= e!750234 (inv!15248 (c!195203 (tokens!1642 thiss!10527))))))

(assert (= (and d!334579 c!195232) b!1170065))

(assert (= (and d!334579 (not c!195232)) b!1170066))

(assert (= (and b!1170066 (not res!528478)) b!1170067))

(declare-fun m!1342497 () Bool)

(assert (=> b!1170065 m!1342497))

(declare-fun m!1342499 () Bool)

(assert (=> b!1170067 m!1342499))

(assert (=> b!1169766 d!334579))

(declare-fun bs!285538 () Bool)

(declare-fun d!334581 () Bool)

(assert (= bs!285538 (and d!334581 b!1169756)))

(declare-fun lambda!48121 () Int)

(assert (=> bs!285538 (= lambda!48121 lambda!48103)))

(declare-fun bs!285539 () Bool)

(assert (= bs!285539 (and d!334581 d!334487)))

(assert (=> bs!285539 (= lambda!48121 lambda!48114)))

(declare-fun bs!285540 () Bool)

(assert (= bs!285540 (and d!334581 d!334553)))

(assert (=> bs!285540 (= lambda!48121 lambda!48115)))

(declare-fun bs!285541 () Bool)

(assert (= bs!285541 (and d!334581 d!334571)))

(assert (=> bs!285541 (= lambda!48121 lambda!48120)))

(declare-fun b!1170071 () Bool)

(declare-fun e!750238 () Bool)

(assert (=> b!1170071 (= e!750238 true)))

(declare-fun b!1170070 () Bool)

(declare-fun e!750237 () Bool)

(assert (=> b!1170070 (= e!750237 e!750238)))

(declare-fun b!1170069 () Bool)

(declare-fun e!750236 () Bool)

(assert (=> b!1170069 (= e!750236 e!750237)))

(assert (=> d!334581 e!750236))

(assert (= b!1170070 b!1170071))

(assert (= b!1170069 b!1170070))

(assert (= (and d!334581 ((_ is Cons!11571) (rules!9618 thiss!10527))) b!1170069))

(assert (=> b!1170071 (< (dynLambda!5101 order!7101 (toValue!3118 (transformation!2017 (h!16972 (rules!9618 thiss!10527))))) (dynLambda!5102 order!7103 lambda!48121))))

(assert (=> b!1170071 (< (dynLambda!5103 order!7105 (toChars!2977 (transformation!2017 (h!16972 (rules!9618 thiss!10527))))) (dynLambda!5102 order!7103 lambda!48121))))

(assert (=> d!334581 true))

(declare-fun e!750235 () Bool)

(assert (=> d!334581 e!750235))

(declare-fun res!528479 () Bool)

(assert (=> d!334581 (=> (not res!528479) (not e!750235))))

(declare-fun lt!400979 () Bool)

(assert (=> d!334581 (= res!528479 (= lt!400979 (forall!3054 (list!4262 (tokens!1642 thiss!10527)) lambda!48121)))))

(assert (=> d!334581 (= lt!400979 (forall!3053 (tokens!1642 thiss!10527) lambda!48121))))

(assert (=> d!334581 (not (isEmpty!7024 (rules!9618 thiss!10527)))))

(assert (=> d!334581 (= (rulesProduceEachTokenIndividually!750 Lexer!1710 (rules!9618 thiss!10527) (tokens!1642 thiss!10527)) lt!400979)))

(declare-fun b!1170068 () Bool)

(assert (=> b!1170068 (= e!750235 (= lt!400979 (rulesProduceEachTokenIndividuallyList!578 Lexer!1710 (rules!9618 thiss!10527) (list!4262 (tokens!1642 thiss!10527)))))))

(assert (= (and d!334581 res!528479) b!1170068))

(assert (=> d!334581 m!1341853))

(assert (=> d!334581 m!1341853))

(declare-fun m!1342501 () Bool)

(assert (=> d!334581 m!1342501))

(declare-fun m!1342503 () Bool)

(assert (=> d!334581 m!1342503))

(assert (=> d!334581 m!1341829))

(assert (=> b!1170068 m!1341853))

(assert (=> b!1170068 m!1341853))

(declare-fun m!1342505 () Bool)

(assert (=> b!1170068 m!1342505))

(assert (=> b!1169756 d!334581))

(declare-fun d!334583 () Bool)

(declare-fun lt!400980 () Bool)

(assert (=> d!334583 (= lt!400980 (forall!3054 (list!4262 (tokens!1642 thiss!10527)) lambda!48103))))

(assert (=> d!334583 (= lt!400980 (forall!3056 (c!195203 (tokens!1642 thiss!10527)) lambda!48103))))

(assert (=> d!334583 (= (forall!3053 (tokens!1642 thiss!10527) lambda!48103) lt!400980)))

(declare-fun bs!285542 () Bool)

(assert (= bs!285542 d!334583))

(assert (=> bs!285542 m!1341853))

(assert (=> bs!285542 m!1341853))

(declare-fun m!1342507 () Bool)

(assert (=> bs!285542 m!1342507))

(declare-fun m!1342509 () Bool)

(assert (=> bs!285542 m!1342509))

(assert (=> b!1169756 d!334583))

(declare-fun d!334585 () Bool)

(assert (=> d!334585 (= (list!4262 (tokens!1642 thiss!10527)) (list!4265 (c!195203 (tokens!1642 thiss!10527))))))

(declare-fun bs!285543 () Bool)

(assert (= bs!285543 d!334585))

(declare-fun m!1342511 () Bool)

(assert (=> bs!285543 m!1342511))

(assert (=> b!1169756 d!334585))

(declare-fun bs!285544 () Bool)

(declare-fun d!334587 () Bool)

(assert (= bs!285544 (and d!334587 d!334581)))

(declare-fun lambda!48122 () Int)

(assert (=> bs!285544 (= lambda!48122 lambda!48121)))

(declare-fun bs!285545 () Bool)

(assert (= bs!285545 (and d!334587 d!334487)))

(assert (=> bs!285545 (= lambda!48122 lambda!48114)))

(declare-fun bs!285546 () Bool)

(assert (= bs!285546 (and d!334587 d!334571)))

(assert (=> bs!285546 (= lambda!48122 lambda!48120)))

(declare-fun bs!285547 () Bool)

(assert (= bs!285547 (and d!334587 b!1169756)))

(assert (=> bs!285547 (= lambda!48122 lambda!48103)))

(declare-fun bs!285548 () Bool)

(assert (= bs!285548 (and d!334587 d!334553)))

(assert (=> bs!285548 (= lambda!48122 lambda!48115)))

(declare-fun b!1170076 () Bool)

(declare-fun e!750243 () Bool)

(assert (=> b!1170076 (= e!750243 true)))

(declare-fun b!1170075 () Bool)

(declare-fun e!750242 () Bool)

(assert (=> b!1170075 (= e!750242 e!750243)))

(declare-fun b!1170074 () Bool)

(declare-fun e!750241 () Bool)

(assert (=> b!1170074 (= e!750241 e!750242)))

(assert (=> d!334587 e!750241))

(assert (= b!1170075 b!1170076))

(assert (= b!1170074 b!1170075))

(assert (= (and d!334587 ((_ is Cons!11571) (rules!9618 thiss!10527))) b!1170074))

(assert (=> b!1170076 (< (dynLambda!5101 order!7101 (toValue!3118 (transformation!2017 (h!16972 (rules!9618 thiss!10527))))) (dynLambda!5102 order!7103 lambda!48122))))

(assert (=> b!1170076 (< (dynLambda!5103 order!7105 (toChars!2977 (transformation!2017 (h!16972 (rules!9618 thiss!10527))))) (dynLambda!5102 order!7103 lambda!48122))))

(assert (=> d!334587 true))

(declare-fun lt!400981 () Bool)

(assert (=> d!334587 (= lt!400981 (forall!3054 lt!400617 lambda!48122))))

(declare-fun e!750239 () Bool)

(assert (=> d!334587 (= lt!400981 e!750239)))

(declare-fun res!528481 () Bool)

(assert (=> d!334587 (=> res!528481 e!750239)))

(assert (=> d!334587 (= res!528481 (not ((_ is Cons!11570) lt!400617)))))

(assert (=> d!334587 (not (isEmpty!7024 (rules!9618 thiss!10527)))))

(assert (=> d!334587 (= (rulesProduceEachTokenIndividuallyList!578 Lexer!1710 (rules!9618 thiss!10527) lt!400617) lt!400981)))

(declare-fun b!1170072 () Bool)

(declare-fun e!750240 () Bool)

(assert (=> b!1170072 (= e!750239 e!750240)))

(declare-fun res!528480 () Bool)

(assert (=> b!1170072 (=> (not res!528480) (not e!750240))))

(assert (=> b!1170072 (= res!528480 (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) (h!16971 lt!400617)))))

(declare-fun b!1170073 () Bool)

(assert (=> b!1170073 (= e!750240 (rulesProduceEachTokenIndividuallyList!578 Lexer!1710 (rules!9618 thiss!10527) (t!110646 lt!400617)))))

(assert (= (and d!334587 (not res!528481)) b!1170072))

(assert (= (and b!1170072 res!528480) b!1170073))

(declare-fun m!1342513 () Bool)

(assert (=> d!334587 m!1342513))

(assert (=> d!334587 m!1341829))

(assert (=> b!1170072 m!1341905))

(assert (=> b!1170073 m!1341927))

(assert (=> b!1169756 d!334587))

(declare-fun d!334589 () Bool)

(assert (=> d!334589 (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) lt!400622)))

(declare-fun lt!400987 () Unit!17736)

(declare-fun choose!7547 (LexerInterface!1712 List!11595 List!11594 Token!3696) Unit!17736)

(assert (=> d!334589 (= lt!400987 (choose!7547 Lexer!1710 (rules!9618 thiss!10527) lt!400617 lt!400622))))

(assert (=> d!334589 (not (isEmpty!7024 (rules!9618 thiss!10527)))))

(assert (=> d!334589 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!293 Lexer!1710 (rules!9618 thiss!10527) lt!400617 lt!400622) lt!400987)))

(declare-fun bs!285558 () Bool)

(assert (= bs!285558 d!334589))

(assert (=> bs!285558 m!1341861))

(declare-fun m!1342535 () Bool)

(assert (=> bs!285558 m!1342535))

(assert (=> bs!285558 m!1341829))

(assert (=> b!1169767 d!334589))

(declare-fun d!334605 () Bool)

(declare-fun lt!400990 () Token!3696)

(declare-fun contains!1998 (List!11594 Token!3696) Bool)

(assert (=> d!334605 (contains!1998 lt!400617 lt!400990)))

(declare-fun e!750266 () Token!3696)

(assert (=> d!334605 (= lt!400990 e!750266)))

(declare-fun c!195238 () Bool)

(assert (=> d!334605 (= c!195238 (= 0 0))))

(declare-fun e!750267 () Bool)

(assert (=> d!334605 e!750267))

(declare-fun res!528499 () Bool)

(assert (=> d!334605 (=> (not res!528499) (not e!750267))))

(assert (=> d!334605 (= res!528499 (<= 0 0))))

(assert (=> d!334605 (= (apply!2502 lt!400617 0) lt!400990)))

(declare-fun b!1170110 () Bool)

(assert (=> b!1170110 (= e!750267 (< 0 (size!9113 lt!400617)))))

(declare-fun b!1170111 () Bool)

(assert (=> b!1170111 (= e!750266 (head!2106 lt!400617))))

(declare-fun b!1170112 () Bool)

(assert (=> b!1170112 (= e!750266 (apply!2502 (tail!1690 lt!400617) (- 0 1)))))

(assert (= (and d!334605 res!528499) b!1170110))

(assert (= (and d!334605 c!195238) b!1170111))

(assert (= (and d!334605 (not c!195238)) b!1170112))

(declare-fun m!1342537 () Bool)

(assert (=> d!334605 m!1342537))

(assert (=> b!1170110 m!1342337))

(declare-fun m!1342539 () Bool)

(assert (=> b!1170111 m!1342539))

(declare-fun m!1342541 () Bool)

(assert (=> b!1170112 m!1342541))

(assert (=> b!1170112 m!1342541))

(declare-fun m!1342543 () Bool)

(assert (=> b!1170112 m!1342543))

(assert (=> b!1169767 d!334605))

(declare-fun d!334607 () Bool)

(assert (=> d!334607 (= (head!2106 (drop!489 lt!400617 0)) (apply!2502 lt!400617 0))))

(declare-fun lt!400993 () Unit!17736)

(declare-fun choose!7548 (List!11594 Int) Unit!17736)

(assert (=> d!334607 (= lt!400993 (choose!7548 lt!400617 0))))

(declare-fun e!750270 () Bool)

(assert (=> d!334607 e!750270))

(declare-fun res!528502 () Bool)

(assert (=> d!334607 (=> (not res!528502) (not e!750270))))

(assert (=> d!334607 (= res!528502 (>= 0 0))))

(assert (=> d!334607 (= (lemmaDropApply!375 lt!400617 0) lt!400993)))

(declare-fun b!1170115 () Bool)

(assert (=> b!1170115 (= e!750270 (< 0 (size!9113 lt!400617)))))

(assert (= (and d!334607 res!528502) b!1170115))

(assert (=> d!334607 m!1341869))

(assert (=> d!334607 m!1341869))

(declare-fun m!1342545 () Bool)

(assert (=> d!334607 m!1342545))

(assert (=> d!334607 m!1341877))

(declare-fun m!1342547 () Bool)

(assert (=> d!334607 m!1342547))

(assert (=> b!1170115 m!1342337))

(assert (=> b!1169767 d!334607))

(declare-fun d!334609 () Bool)

(assert (=> d!334609 (= (head!2106 lt!400618) (h!16971 lt!400618))))

(assert (=> b!1169767 d!334609))

(declare-fun b!1170134 () Bool)

(declare-fun e!750285 () Int)

(declare-fun call!82272 () Int)

(assert (=> b!1170134 (= e!750285 (- call!82272 2))))

(declare-fun b!1170135 () Bool)

(assert (=> b!1170135 (= e!750285 0)))

(declare-fun b!1170136 () Bool)

(declare-fun e!750284 () List!11594)

(declare-fun e!750281 () List!11594)

(assert (=> b!1170136 (= e!750284 e!750281)))

(declare-fun c!195247 () Bool)

(assert (=> b!1170136 (= c!195247 (<= 2 0))))

(declare-fun b!1170137 () Bool)

(declare-fun e!750283 () Bool)

(declare-fun lt!400996 () List!11594)

(declare-fun e!750282 () Int)

(assert (=> b!1170137 (= e!750283 (= (size!9113 lt!400996) e!750282))))

(declare-fun c!195250 () Bool)

(assert (=> b!1170137 (= c!195250 (<= 2 0))))

(declare-fun d!334611 () Bool)

(assert (=> d!334611 e!750283))

(declare-fun res!528505 () Bool)

(assert (=> d!334611 (=> (not res!528505) (not e!750283))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1610 (List!11594) (InoxSet Token!3696))

(assert (=> d!334611 (= res!528505 (= ((_ map implies) (content!1610 lt!400996) (content!1610 lt!400617)) ((as const (InoxSet Token!3696)) true)))))

(assert (=> d!334611 (= lt!400996 e!750284)))

(declare-fun c!195249 () Bool)

(assert (=> d!334611 (= c!195249 ((_ is Nil!11570) lt!400617))))

(assert (=> d!334611 (= (drop!489 lt!400617 2) lt!400996)))

(declare-fun b!1170138 () Bool)

(assert (=> b!1170138 (= e!750281 (drop!489 (t!110646 lt!400617) (- 2 1)))))

(declare-fun b!1170139 () Bool)

(assert (=> b!1170139 (= e!750281 lt!400617)))

(declare-fun b!1170140 () Bool)

(assert (=> b!1170140 (= e!750284 Nil!11570)))

(declare-fun b!1170141 () Bool)

(assert (=> b!1170141 (= e!750282 e!750285)))

(declare-fun c!195248 () Bool)

(assert (=> b!1170141 (= c!195248 (>= 2 call!82272))))

(declare-fun bm!82267 () Bool)

(assert (=> bm!82267 (= call!82272 (size!9113 lt!400617))))

(declare-fun b!1170142 () Bool)

(assert (=> b!1170142 (= e!750282 call!82272)))

(assert (= (and d!334611 c!195249) b!1170140))

(assert (= (and d!334611 (not c!195249)) b!1170136))

(assert (= (and b!1170136 c!195247) b!1170139))

(assert (= (and b!1170136 (not c!195247)) b!1170138))

(assert (= (and d!334611 res!528505) b!1170137))

(assert (= (and b!1170137 c!195250) b!1170142))

(assert (= (and b!1170137 (not c!195250)) b!1170141))

(assert (= (and b!1170141 c!195248) b!1170135))

(assert (= (and b!1170141 (not c!195248)) b!1170134))

(assert (= (or b!1170142 b!1170141 b!1170134) bm!82267))

(declare-fun m!1342549 () Bool)

(assert (=> b!1170137 m!1342549))

(declare-fun m!1342551 () Bool)

(assert (=> d!334611 m!1342551))

(declare-fun m!1342553 () Bool)

(assert (=> d!334611 m!1342553))

(declare-fun m!1342555 () Bool)

(assert (=> b!1170138 m!1342555))

(assert (=> bm!82267 m!1342337))

(assert (=> b!1169767 d!334611))

(declare-fun b!1170143 () Bool)

(declare-fun e!750290 () Int)

(declare-fun call!82273 () Int)

(assert (=> b!1170143 (= e!750290 (- call!82273 0))))

(declare-fun b!1170144 () Bool)

(assert (=> b!1170144 (= e!750290 0)))

(declare-fun b!1170145 () Bool)

(declare-fun e!750289 () List!11594)

(declare-fun e!750286 () List!11594)

(assert (=> b!1170145 (= e!750289 e!750286)))

(declare-fun c!195251 () Bool)

(assert (=> b!1170145 (= c!195251 (<= 0 0))))

(declare-fun b!1170146 () Bool)

(declare-fun e!750288 () Bool)

(declare-fun lt!400997 () List!11594)

(declare-fun e!750287 () Int)

(assert (=> b!1170146 (= e!750288 (= (size!9113 lt!400997) e!750287))))

(declare-fun c!195254 () Bool)

(assert (=> b!1170146 (= c!195254 (<= 0 0))))

(declare-fun d!334613 () Bool)

(assert (=> d!334613 e!750288))

(declare-fun res!528506 () Bool)

(assert (=> d!334613 (=> (not res!528506) (not e!750288))))

(assert (=> d!334613 (= res!528506 (= ((_ map implies) (content!1610 lt!400997) (content!1610 lt!400617)) ((as const (InoxSet Token!3696)) true)))))

(assert (=> d!334613 (= lt!400997 e!750289)))

(declare-fun c!195253 () Bool)

(assert (=> d!334613 (= c!195253 ((_ is Nil!11570) lt!400617))))

(assert (=> d!334613 (= (drop!489 lt!400617 0) lt!400997)))

(declare-fun b!1170147 () Bool)

(assert (=> b!1170147 (= e!750286 (drop!489 (t!110646 lt!400617) (- 0 1)))))

(declare-fun b!1170148 () Bool)

(assert (=> b!1170148 (= e!750286 lt!400617)))

(declare-fun b!1170149 () Bool)

(assert (=> b!1170149 (= e!750289 Nil!11570)))

(declare-fun b!1170150 () Bool)

(assert (=> b!1170150 (= e!750287 e!750290)))

(declare-fun c!195252 () Bool)

(assert (=> b!1170150 (= c!195252 (>= 0 call!82273))))

(declare-fun bm!82268 () Bool)

(assert (=> bm!82268 (= call!82273 (size!9113 lt!400617))))

(declare-fun b!1170151 () Bool)

(assert (=> b!1170151 (= e!750287 call!82273)))

(assert (= (and d!334613 c!195253) b!1170149))

(assert (= (and d!334613 (not c!195253)) b!1170145))

(assert (= (and b!1170145 c!195251) b!1170148))

(assert (= (and b!1170145 (not c!195251)) b!1170147))

(assert (= (and d!334613 res!528506) b!1170146))

(assert (= (and b!1170146 c!195254) b!1170151))

(assert (= (and b!1170146 (not c!195254)) b!1170150))

(assert (= (and b!1170150 c!195252) b!1170144))

(assert (= (and b!1170150 (not c!195252)) b!1170143))

(assert (= (or b!1170151 b!1170150 b!1170143) bm!82268))

(declare-fun m!1342557 () Bool)

(assert (=> b!1170146 m!1342557))

(declare-fun m!1342559 () Bool)

(assert (=> d!334613 m!1342559))

(assert (=> d!334613 m!1342553))

(declare-fun m!1342561 () Bool)

(assert (=> b!1170147 m!1342561))

(assert (=> bm!82268 m!1342337))

(assert (=> b!1169767 d!334613))

(declare-fun d!334615 () Bool)

(declare-fun lt!400998 () Bool)

(declare-fun e!750291 () Bool)

(assert (=> d!334615 (= lt!400998 e!750291)))

(declare-fun res!528509 () Bool)

(assert (=> d!334615 (=> (not res!528509) (not e!750291))))

(assert (=> d!334615 (= res!528509 (= (list!4262 (_1!6867 (lex!710 Lexer!1710 (rules!9618 thiss!10527) (print!647 Lexer!1710 (singletonSeq!676 lt!400622))))) (list!4262 (singletonSeq!676 lt!400622))))))

(declare-fun e!750292 () Bool)

(assert (=> d!334615 (= lt!400998 e!750292)))

(declare-fun res!528507 () Bool)

(assert (=> d!334615 (=> (not res!528507) (not e!750292))))

(declare-fun lt!400999 () tuple2!12040)

(assert (=> d!334615 (= res!528507 (= (size!9109 (_1!6867 lt!400999)) 1))))

(assert (=> d!334615 (= lt!400999 (lex!710 Lexer!1710 (rules!9618 thiss!10527) (print!647 Lexer!1710 (singletonSeq!676 lt!400622))))))

(assert (=> d!334615 (not (isEmpty!7024 (rules!9618 thiss!10527)))))

(assert (=> d!334615 (= (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) lt!400622) lt!400998)))

(declare-fun b!1170152 () Bool)

(declare-fun res!528508 () Bool)

(assert (=> b!1170152 (=> (not res!528508) (not e!750292))))

(assert (=> b!1170152 (= res!528508 (= (apply!2501 (_1!6867 lt!400999) 0) lt!400622))))

(declare-fun b!1170153 () Bool)

(assert (=> b!1170153 (= e!750292 (isEmpty!7026 (_2!6867 lt!400999)))))

(declare-fun b!1170154 () Bool)

(assert (=> b!1170154 (= e!750291 (isEmpty!7026 (_2!6867 (lex!710 Lexer!1710 (rules!9618 thiss!10527) (print!647 Lexer!1710 (singletonSeq!676 lt!400622))))))))

(assert (= (and d!334615 res!528507) b!1170152))

(assert (= (and b!1170152 res!528508) b!1170153))

(assert (= (and d!334615 res!528509) b!1170154))

(assert (=> d!334615 m!1341829))

(declare-fun m!1342563 () Bool)

(assert (=> d!334615 m!1342563))

(declare-fun m!1342565 () Bool)

(assert (=> d!334615 m!1342565))

(declare-fun m!1342567 () Bool)

(assert (=> d!334615 m!1342567))

(assert (=> d!334615 m!1342563))

(declare-fun m!1342569 () Bool)

(assert (=> d!334615 m!1342569))

(assert (=> d!334615 m!1342563))

(declare-fun m!1342571 () Bool)

(assert (=> d!334615 m!1342571))

(assert (=> d!334615 m!1342571))

(declare-fun m!1342573 () Bool)

(assert (=> d!334615 m!1342573))

(declare-fun m!1342575 () Bool)

(assert (=> b!1170152 m!1342575))

(declare-fun m!1342577 () Bool)

(assert (=> b!1170153 m!1342577))

(assert (=> b!1170154 m!1342563))

(assert (=> b!1170154 m!1342563))

(assert (=> b!1170154 m!1342571))

(assert (=> b!1170154 m!1342571))

(assert (=> b!1170154 m!1342573))

(declare-fun m!1342579 () Bool)

(assert (=> b!1170154 m!1342579))

(assert (=> b!1169767 d!334615))

(declare-fun d!334617 () Bool)

(assert (=> d!334617 (= (tail!1690 lt!400618) (t!110646 lt!400618))))

(assert (=> b!1169767 d!334617))

(declare-fun d!334619 () Bool)

(declare-fun lt!401002 () Token!3696)

(assert (=> d!334619 (= lt!401002 (apply!2502 (list!4262 (tokens!1642 thiss!10527)) 0))))

(declare-fun apply!2505 (Conc!3797 Int) Token!3696)

(assert (=> d!334619 (= lt!401002 (apply!2505 (c!195203 (tokens!1642 thiss!10527)) 0))))

(declare-fun e!750295 () Bool)

(assert (=> d!334619 e!750295))

(declare-fun res!528512 () Bool)

(assert (=> d!334619 (=> (not res!528512) (not e!750295))))

(assert (=> d!334619 (= res!528512 (<= 0 0))))

(assert (=> d!334619 (= (apply!2501 (tokens!1642 thiss!10527) 0) lt!401002)))

(declare-fun b!1170157 () Bool)

(assert (=> b!1170157 (= e!750295 (< 0 (size!9109 (tokens!1642 thiss!10527))))))

(assert (= (and d!334619 res!528512) b!1170157))

(assert (=> d!334619 m!1341853))

(assert (=> d!334619 m!1341853))

(declare-fun m!1342581 () Bool)

(assert (=> d!334619 m!1342581))

(declare-fun m!1342583 () Bool)

(assert (=> d!334619 m!1342583))

(assert (=> b!1170157 m!1341903))

(assert (=> b!1169767 d!334619))

(declare-fun d!334621 () Bool)

(assert (=> d!334621 (= (tail!1690 (drop!489 lt!400617 0)) (drop!489 lt!400617 (+ 0 1)))))

(declare-fun lt!401005 () Unit!17736)

(declare-fun choose!7549 (List!11594 Int) Unit!17736)

(assert (=> d!334621 (= lt!401005 (choose!7549 lt!400617 0))))

(declare-fun e!750298 () Bool)

(assert (=> d!334621 e!750298))

(declare-fun res!528515 () Bool)

(assert (=> d!334621 (=> (not res!528515) (not e!750298))))

(assert (=> d!334621 (= res!528515 (>= 0 0))))

(assert (=> d!334621 (= (lemmaDropTail!363 lt!400617 0) lt!401005)))

(declare-fun b!1170160 () Bool)

(assert (=> b!1170160 (= e!750298 (< 0 (size!9113 lt!400617)))))

(assert (= (and d!334621 res!528515) b!1170160))

(assert (=> d!334621 m!1341869))

(assert (=> d!334621 m!1341869))

(declare-fun m!1342585 () Bool)

(assert (=> d!334621 m!1342585))

(declare-fun m!1342587 () Bool)

(assert (=> d!334621 m!1342587))

(declare-fun m!1342589 () Bool)

(assert (=> d!334621 m!1342589))

(assert (=> b!1170160 m!1342337))

(assert (=> b!1169767 d!334621))

(declare-fun d!334623 () Bool)

(declare-fun lt!401006 () Bool)

(declare-fun e!750299 () Bool)

(assert (=> d!334623 (= lt!401006 e!750299)))

(declare-fun res!528518 () Bool)

(assert (=> d!334623 (=> (not res!528518) (not e!750299))))

(assert (=> d!334623 (= res!528518 (= (list!4262 (_1!6867 (lex!710 Lexer!1710 (rules!9618 thiss!10527) (print!647 Lexer!1710 (singletonSeq!676 lt!400609))))) (list!4262 (singletonSeq!676 lt!400609))))))

(declare-fun e!750300 () Bool)

(assert (=> d!334623 (= lt!401006 e!750300)))

(declare-fun res!528516 () Bool)

(assert (=> d!334623 (=> (not res!528516) (not e!750300))))

(declare-fun lt!401007 () tuple2!12040)

(assert (=> d!334623 (= res!528516 (= (size!9109 (_1!6867 lt!401007)) 1))))

(assert (=> d!334623 (= lt!401007 (lex!710 Lexer!1710 (rules!9618 thiss!10527) (print!647 Lexer!1710 (singletonSeq!676 lt!400609))))))

(assert (=> d!334623 (not (isEmpty!7024 (rules!9618 thiss!10527)))))

(assert (=> d!334623 (= (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) lt!400609) lt!401006)))

(declare-fun b!1170161 () Bool)

(declare-fun res!528517 () Bool)

(assert (=> b!1170161 (=> (not res!528517) (not e!750300))))

(assert (=> b!1170161 (= res!528517 (= (apply!2501 (_1!6867 lt!401007) 0) lt!400609))))

(declare-fun b!1170162 () Bool)

(assert (=> b!1170162 (= e!750300 (isEmpty!7026 (_2!6867 lt!401007)))))

(declare-fun b!1170163 () Bool)

(assert (=> b!1170163 (= e!750299 (isEmpty!7026 (_2!6867 (lex!710 Lexer!1710 (rules!9618 thiss!10527) (print!647 Lexer!1710 (singletonSeq!676 lt!400609))))))))

(assert (= (and d!334623 res!528516) b!1170161))

(assert (= (and b!1170161 res!528517) b!1170162))

(assert (= (and d!334623 res!528518) b!1170163))

(assert (=> d!334623 m!1341829))

(declare-fun m!1342591 () Bool)

(assert (=> d!334623 m!1342591))

(declare-fun m!1342593 () Bool)

(assert (=> d!334623 m!1342593))

(declare-fun m!1342595 () Bool)

(assert (=> d!334623 m!1342595))

(assert (=> d!334623 m!1342591))

(declare-fun m!1342597 () Bool)

(assert (=> d!334623 m!1342597))

(assert (=> d!334623 m!1342591))

(declare-fun m!1342599 () Bool)

(assert (=> d!334623 m!1342599))

(assert (=> d!334623 m!1342599))

(declare-fun m!1342601 () Bool)

(assert (=> d!334623 m!1342601))

(declare-fun m!1342603 () Bool)

(assert (=> b!1170161 m!1342603))

(declare-fun m!1342605 () Bool)

(assert (=> b!1170162 m!1342605))

(assert (=> b!1170163 m!1342591))

(assert (=> b!1170163 m!1342591))

(assert (=> b!1170163 m!1342599))

(assert (=> b!1170163 m!1342599))

(assert (=> b!1170163 m!1342601))

(declare-fun m!1342607 () Bool)

(assert (=> b!1170163 m!1342607))

(assert (=> b!1169767 d!334623))

(declare-fun d!334625 () Bool)

(declare-fun prefixMatchZipperSequence!95 (Regex!3287 BalanceConc!7614) Bool)

(declare-fun rulesRegex!68 (LexerInterface!1712 List!11595) Regex!3287)

(declare-fun ++!2990 (BalanceConc!7614 BalanceConc!7614) BalanceConc!7614)

(declare-fun singletonSeq!677 (C!6892) BalanceConc!7614)

(declare-fun apply!2506 (BalanceConc!7614 Int) C!6892)

(assert (=> d!334625 (= (separableTokensPredicate!134 Lexer!1710 lt!400609 lt!400622 (rules!9618 thiss!10527)) (not (prefixMatchZipperSequence!95 (rulesRegex!68 Lexer!1710 (rules!9618 thiss!10527)) (++!2990 (charsOf!1072 lt!400609) (singletonSeq!677 (apply!2506 (charsOf!1072 lt!400622) 0))))))))

(declare-fun bs!285559 () Bool)

(assert (= bs!285559 d!334625))

(assert (=> bs!285559 m!1341843))

(declare-fun m!1342609 () Bool)

(assert (=> bs!285559 m!1342609))

(assert (=> bs!285559 m!1342609))

(declare-fun m!1342611 () Bool)

(assert (=> bs!285559 m!1342611))

(assert (=> bs!285559 m!1341843))

(declare-fun m!1342613 () Bool)

(assert (=> bs!285559 m!1342613))

(declare-fun m!1342615 () Bool)

(assert (=> bs!285559 m!1342615))

(declare-fun m!1342617 () Bool)

(assert (=> bs!285559 m!1342617))

(declare-fun m!1342619 () Bool)

(assert (=> bs!285559 m!1342619))

(assert (=> bs!285559 m!1342613))

(assert (=> bs!285559 m!1342619))

(assert (=> bs!285559 m!1342611))

(assert (=> bs!285559 m!1342615))

(assert (=> b!1169767 d!334625))

(declare-fun d!334627 () Bool)

(assert (=> d!334627 (= (tail!1690 (drop!489 lt!400617 1)) (drop!489 lt!400617 (+ 1 1)))))

(declare-fun lt!401008 () Unit!17736)

(assert (=> d!334627 (= lt!401008 (choose!7549 lt!400617 1))))

(declare-fun e!750301 () Bool)

(assert (=> d!334627 e!750301))

(declare-fun res!528519 () Bool)

(assert (=> d!334627 (=> (not res!528519) (not e!750301))))

(assert (=> d!334627 (= res!528519 (>= 1 0))))

(assert (=> d!334627 (= (lemmaDropTail!363 lt!400617 1) lt!401008)))

(declare-fun b!1170164 () Bool)

(assert (=> b!1170164 (= e!750301 (< 1 (size!9113 lt!400617)))))

(assert (= (and d!334627 res!528519) b!1170164))

(assert (=> d!334627 m!1341889))

(assert (=> d!334627 m!1341889))

(declare-fun m!1342621 () Bool)

(assert (=> d!334627 m!1342621))

(declare-fun m!1342623 () Bool)

(assert (=> d!334627 m!1342623))

(declare-fun m!1342625 () Bool)

(assert (=> d!334627 m!1342625))

(assert (=> b!1170164 m!1342337))

(assert (=> b!1169767 d!334627))

(declare-fun b!1170165 () Bool)

(declare-fun e!750306 () Int)

(declare-fun call!82274 () Int)

(assert (=> b!1170165 (= e!750306 (- call!82274 1))))

(declare-fun b!1170166 () Bool)

(assert (=> b!1170166 (= e!750306 0)))

(declare-fun b!1170167 () Bool)

(declare-fun e!750305 () List!11594)

(declare-fun e!750302 () List!11594)

(assert (=> b!1170167 (= e!750305 e!750302)))

(declare-fun c!195255 () Bool)

(assert (=> b!1170167 (= c!195255 (<= 1 0))))

(declare-fun b!1170168 () Bool)

(declare-fun e!750304 () Bool)

(declare-fun lt!401009 () List!11594)

(declare-fun e!750303 () Int)

(assert (=> b!1170168 (= e!750304 (= (size!9113 lt!401009) e!750303))))

(declare-fun c!195258 () Bool)

(assert (=> b!1170168 (= c!195258 (<= 1 0))))

(declare-fun d!334629 () Bool)

(assert (=> d!334629 e!750304))

(declare-fun res!528520 () Bool)

(assert (=> d!334629 (=> (not res!528520) (not e!750304))))

(assert (=> d!334629 (= res!528520 (= ((_ map implies) (content!1610 lt!401009) (content!1610 lt!400617)) ((as const (InoxSet Token!3696)) true)))))

(assert (=> d!334629 (= lt!401009 e!750305)))

(declare-fun c!195257 () Bool)

(assert (=> d!334629 (= c!195257 ((_ is Nil!11570) lt!400617))))

(assert (=> d!334629 (= (drop!489 lt!400617 1) lt!401009)))

(declare-fun b!1170169 () Bool)

(assert (=> b!1170169 (= e!750302 (drop!489 (t!110646 lt!400617) (- 1 1)))))

(declare-fun b!1170170 () Bool)

(assert (=> b!1170170 (= e!750302 lt!400617)))

(declare-fun b!1170171 () Bool)

(assert (=> b!1170171 (= e!750305 Nil!11570)))

(declare-fun b!1170172 () Bool)

(assert (=> b!1170172 (= e!750303 e!750306)))

(declare-fun c!195256 () Bool)

(assert (=> b!1170172 (= c!195256 (>= 1 call!82274))))

(declare-fun bm!82269 () Bool)

(assert (=> bm!82269 (= call!82274 (size!9113 lt!400617))))

(declare-fun b!1170173 () Bool)

(assert (=> b!1170173 (= e!750303 call!82274)))

(assert (= (and d!334629 c!195257) b!1170171))

(assert (= (and d!334629 (not c!195257)) b!1170167))

(assert (= (and b!1170167 c!195255) b!1170170))

(assert (= (and b!1170167 (not c!195255)) b!1170169))

(assert (= (and d!334629 res!528520) b!1170168))

(assert (= (and b!1170168 c!195258) b!1170173))

(assert (= (and b!1170168 (not c!195258)) b!1170172))

(assert (= (and b!1170172 c!195256) b!1170166))

(assert (= (and b!1170172 (not c!195256)) b!1170165))

(assert (= (or b!1170173 b!1170172 b!1170165) bm!82269))

(declare-fun m!1342627 () Bool)

(assert (=> b!1170168 m!1342627))

(declare-fun m!1342629 () Bool)

(assert (=> d!334629 m!1342629))

(assert (=> d!334629 m!1342553))

(declare-fun m!1342631 () Bool)

(assert (=> b!1170169 m!1342631))

(assert (=> bm!82269 m!1342337))

(assert (=> b!1169767 d!334629))

(declare-fun d!334631 () Bool)

(assert (=> d!334631 (= (head!2106 lt!400615) (h!16971 lt!400615))))

(assert (=> b!1169767 d!334631))

(declare-fun d!334633 () Bool)

(declare-fun lt!401010 () Token!3696)

(assert (=> d!334633 (= lt!401010 (apply!2502 (list!4262 (tokens!1642 thiss!10527)) 1))))

(assert (=> d!334633 (= lt!401010 (apply!2505 (c!195203 (tokens!1642 thiss!10527)) 1))))

(declare-fun e!750307 () Bool)

(assert (=> d!334633 e!750307))

(declare-fun res!528521 () Bool)

(assert (=> d!334633 (=> (not res!528521) (not e!750307))))

(assert (=> d!334633 (= res!528521 (<= 0 1))))

(assert (=> d!334633 (= (apply!2501 (tokens!1642 thiss!10527) 1) lt!401010)))

(declare-fun b!1170174 () Bool)

(assert (=> b!1170174 (= e!750307 (< 1 (size!9109 (tokens!1642 thiss!10527))))))

(assert (= (and d!334633 res!528521) b!1170174))

(assert (=> d!334633 m!1341853))

(assert (=> d!334633 m!1341853))

(declare-fun m!1342633 () Bool)

(assert (=> d!334633 m!1342633))

(declare-fun m!1342635 () Bool)

(assert (=> d!334633 m!1342635))

(assert (=> b!1170174 m!1341903))

(assert (=> b!1169767 d!334633))

(declare-fun d!334635 () Bool)

(assert (=> d!334635 (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) lt!400609)))

(declare-fun lt!401011 () Unit!17736)

(assert (=> d!334635 (= lt!401011 (choose!7547 Lexer!1710 (rules!9618 thiss!10527) lt!400617 lt!400609))))

(assert (=> d!334635 (not (isEmpty!7024 (rules!9618 thiss!10527)))))

(assert (=> d!334635 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!293 Lexer!1710 (rules!9618 thiss!10527) lt!400617 lt!400609) lt!401011)))

(declare-fun bs!285560 () Bool)

(assert (= bs!285560 d!334635))

(assert (=> bs!285560 m!1341885))

(declare-fun m!1342637 () Bool)

(assert (=> bs!285560 m!1342637))

(assert (=> bs!285560 m!1341829))

(assert (=> b!1169767 d!334635))

(declare-fun d!334637 () Bool)

(assert (=> d!334637 (= (tail!1690 lt!400615) (t!110646 lt!400615))))

(assert (=> b!1169767 d!334637))

(declare-fun d!334639 () Bool)

(assert (=> d!334639 (= (head!2106 (drop!489 lt!400617 1)) (apply!2502 lt!400617 1))))

(declare-fun lt!401012 () Unit!17736)

(assert (=> d!334639 (= lt!401012 (choose!7548 lt!400617 1))))

(declare-fun e!750308 () Bool)

(assert (=> d!334639 e!750308))

(declare-fun res!528522 () Bool)

(assert (=> d!334639 (=> (not res!528522) (not e!750308))))

(assert (=> d!334639 (= res!528522 (>= 1 0))))

(assert (=> d!334639 (= (lemmaDropApply!375 lt!400617 1) lt!401012)))

(declare-fun b!1170175 () Bool)

(assert (=> b!1170175 (= e!750308 (< 1 (size!9113 lt!400617)))))

(assert (= (and d!334639 res!528522) b!1170175))

(assert (=> d!334639 m!1341889))

(assert (=> d!334639 m!1341889))

(declare-fun m!1342639 () Bool)

(assert (=> d!334639 m!1342639))

(assert (=> d!334639 m!1341893))

(declare-fun m!1342641 () Bool)

(assert (=> d!334639 m!1342641))

(assert (=> b!1170175 m!1342337))

(assert (=> b!1169767 d!334639))

(declare-fun d!334641 () Bool)

(declare-fun lt!401013 () Token!3696)

(assert (=> d!334641 (contains!1998 lt!400617 lt!401013)))

(declare-fun e!750309 () Token!3696)

(assert (=> d!334641 (= lt!401013 e!750309)))

(declare-fun c!195259 () Bool)

(assert (=> d!334641 (= c!195259 (= 1 0))))

(declare-fun e!750310 () Bool)

(assert (=> d!334641 e!750310))

(declare-fun res!528523 () Bool)

(assert (=> d!334641 (=> (not res!528523) (not e!750310))))

(assert (=> d!334641 (= res!528523 (<= 0 1))))

(assert (=> d!334641 (= (apply!2502 lt!400617 1) lt!401013)))

(declare-fun b!1170176 () Bool)

(assert (=> b!1170176 (= e!750310 (< 1 (size!9113 lt!400617)))))

(declare-fun b!1170177 () Bool)

(assert (=> b!1170177 (= e!750309 (head!2106 lt!400617))))

(declare-fun b!1170178 () Bool)

(assert (=> b!1170178 (= e!750309 (apply!2502 (tail!1690 lt!400617) (- 1 1)))))

(assert (= (and d!334641 res!528523) b!1170176))

(assert (= (and d!334641 c!195259) b!1170177))

(assert (= (and d!334641 (not c!195259)) b!1170178))

(declare-fun m!1342643 () Bool)

(assert (=> d!334641 m!1342643))

(assert (=> b!1170176 m!1342337))

(assert (=> b!1170177 m!1342539))

(assert (=> b!1170178 m!1342541))

(assert (=> b!1170178 m!1342541))

(declare-fun m!1342645 () Bool)

(assert (=> b!1170178 m!1342645))

(assert (=> b!1169767 d!334641))

(declare-fun d!334645 () Bool)

(assert (=> d!334645 (= (isEmpty!7024 (rules!9618 thiss!10527)) ((_ is Nil!11571) (rules!9618 thiss!10527)))))

(assert (=> b!1169757 d!334645))

(declare-fun d!334647 () Bool)

(assert (=> d!334647 (= (separableTokens!148 Lexer!1710 lt!400624 (rules!9618 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!73 Lexer!1710 lt!400624 0 (rules!9618 thiss!10527)))))

(declare-fun bs!285562 () Bool)

(assert (= bs!285562 d!334647))

(assert (=> bs!285562 m!1341833))

(assert (=> b!1169757 d!334647))

(declare-fun b!1170190 () Bool)

(declare-fun res!528540 () Bool)

(declare-fun e!750320 () Bool)

(assert (=> b!1170190 (=> (not res!528540) (not e!750320))))

(declare-fun lt!401061 () List!11594)

(declare-fun lt!401063 () List!11594)

(assert (=> b!1170190 (= res!528540 (subseq!267 lt!401061 lt!401063))))

(declare-fun b!1170191 () Bool)

(declare-fun res!528537 () Bool)

(assert (=> b!1170191 (=> (not res!528537) (not e!750320))))

(assert (=> b!1170191 (= res!528537 (not (isEmpty!7024 (rules!9618 thiss!10527))))))

(declare-fun b!1170192 () Bool)

(declare-fun e!750323 () Bool)

(declare-fun lt!401064 () List!11594)

(assert (=> b!1170192 (= e!750323 (<= 0 (size!9113 lt!401064)))))

(declare-fun d!334653 () Bool)

(declare-fun lt!401047 () Bool)

(assert (=> d!334653 (= lt!401047 (tokensListTwoByTwoPredicateSeparableList!107 Lexer!1710 (dropList!321 lt!400624 0) (rules!9618 thiss!10527)))))

(declare-fun lt!401073 () Unit!17736)

(declare-fun lt!401072 () Unit!17736)

(assert (=> d!334653 (= lt!401073 lt!401072)))

(assert (=> d!334653 (rulesProduceEachTokenIndividuallyList!578 Lexer!1710 (rules!9618 thiss!10527) lt!401061)))

(assert (=> d!334653 (= lt!401072 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!29 Lexer!1710 (rules!9618 thiss!10527) lt!401063 lt!401061))))

(assert (=> d!334653 e!750320))

(declare-fun res!528538 () Bool)

(assert (=> d!334653 (=> (not res!528538) (not e!750320))))

(assert (=> d!334653 (= res!528538 ((_ is Lexer!1710) Lexer!1710))))

(assert (=> d!334653 (= lt!401061 (dropList!321 lt!400624 0))))

(assert (=> d!334653 (= lt!401063 (list!4262 lt!400624))))

(declare-fun lt!401052 () Unit!17736)

(declare-fun lt!401069 () Unit!17736)

(assert (=> d!334653 (= lt!401052 lt!401069)))

(assert (=> d!334653 (subseq!267 (drop!489 lt!401064 0) lt!401064)))

(assert (=> d!334653 (= lt!401069 (lemmaDropSubSeq!29 lt!401064 0))))

(assert (=> d!334653 e!750323))

(declare-fun res!528536 () Bool)

(assert (=> d!334653 (=> (not res!528536) (not e!750323))))

(assert (=> d!334653 (= res!528536 (>= 0 0))))

(assert (=> d!334653 (= lt!401064 (list!4262 lt!400624))))

(declare-fun e!750322 () Bool)

(assert (=> d!334653 (= lt!401047 e!750322)))

(declare-fun res!528539 () Bool)

(assert (=> d!334653 (=> res!528539 e!750322)))

(assert (=> d!334653 (= res!528539 (not (< 0 (- (size!9109 lt!400624) 1))))))

(declare-fun e!750321 () Bool)

(assert (=> d!334653 e!750321))

(declare-fun res!528535 () Bool)

(assert (=> d!334653 (=> (not res!528535) (not e!750321))))

(assert (=> d!334653 (= res!528535 (>= 0 0))))

(assert (=> d!334653 (= (tokensListTwoByTwoPredicateSeparable!73 Lexer!1710 lt!400624 0 (rules!9618 thiss!10527)) lt!401047)))

(declare-fun b!1170193 () Bool)

(declare-fun res!528542 () Bool)

(assert (=> b!1170193 (=> (not res!528542) (not e!750320))))

(assert (=> b!1170193 (= res!528542 (rulesInvariant!1586 Lexer!1710 (rules!9618 thiss!10527)))))

(declare-fun b!1170194 () Bool)

(assert (=> b!1170194 (= e!750321 (<= 0 (size!9109 lt!400624)))))

(declare-fun b!1170195 () Bool)

(declare-fun e!750319 () Bool)

(assert (=> b!1170195 (= e!750322 e!750319)))

(declare-fun res!528541 () Bool)

(assert (=> b!1170195 (=> (not res!528541) (not e!750319))))

(assert (=> b!1170195 (= res!528541 (separableTokensPredicate!134 Lexer!1710 (apply!2501 lt!400624 0) (apply!2501 lt!400624 (+ 0 1)) (rules!9618 thiss!10527)))))

(declare-fun lt!401060 () Unit!17736)

(declare-fun Unit!17754 () Unit!17736)

(assert (=> b!1170195 (= lt!401060 Unit!17754)))

(assert (=> b!1170195 (> (size!9108 (charsOf!1072 (apply!2501 lt!400624 (+ 0 1)))) 0)))

(declare-fun lt!401068 () Unit!17736)

(declare-fun Unit!17755 () Unit!17736)

(assert (=> b!1170195 (= lt!401068 Unit!17755)))

(assert (=> b!1170195 (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) (apply!2501 lt!400624 (+ 0 1)))))

(declare-fun lt!401057 () Unit!17736)

(declare-fun Unit!17756 () Unit!17736)

(assert (=> b!1170195 (= lt!401057 Unit!17756)))

(assert (=> b!1170195 (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) (apply!2501 lt!400624 0))))

(declare-fun lt!401058 () Unit!17736)

(declare-fun lt!401059 () Unit!17736)

(assert (=> b!1170195 (= lt!401058 lt!401059)))

(declare-fun lt!401074 () Token!3696)

(assert (=> b!1170195 (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) lt!401074)))

(declare-fun lt!401054 () List!11594)

(assert (=> b!1170195 (= lt!401059 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!293 Lexer!1710 (rules!9618 thiss!10527) lt!401054 lt!401074))))

(assert (=> b!1170195 (= lt!401074 (apply!2501 lt!400624 (+ 0 1)))))

(assert (=> b!1170195 (= lt!401054 (list!4262 lt!400624))))

(declare-fun lt!401075 () Unit!17736)

(declare-fun lt!401065 () Unit!17736)

(assert (=> b!1170195 (= lt!401075 lt!401065)))

(declare-fun lt!401079 () Token!3696)

(assert (=> b!1170195 (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) lt!401079)))

(declare-fun lt!401062 () List!11594)

(assert (=> b!1170195 (= lt!401065 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!293 Lexer!1710 (rules!9618 thiss!10527) lt!401062 lt!401079))))

(assert (=> b!1170195 (= lt!401079 (apply!2501 lt!400624 0))))

(assert (=> b!1170195 (= lt!401062 (list!4262 lt!400624))))

(declare-fun lt!401067 () Unit!17736)

(declare-fun lt!401051 () Unit!17736)

(assert (=> b!1170195 (= lt!401067 lt!401051)))

(declare-fun lt!401076 () List!11594)

(declare-fun lt!401071 () Int)

(assert (=> b!1170195 (= (tail!1690 (drop!489 lt!401076 lt!401071)) (drop!489 lt!401076 (+ lt!401071 1)))))

(assert (=> b!1170195 (= lt!401051 (lemmaDropTail!363 lt!401076 lt!401071))))

(assert (=> b!1170195 (= lt!401071 (+ 0 1))))

(assert (=> b!1170195 (= lt!401076 (list!4262 lt!400624))))

(declare-fun lt!401078 () Unit!17736)

(declare-fun lt!401055 () Unit!17736)

(assert (=> b!1170195 (= lt!401078 lt!401055)))

(declare-fun lt!401056 () List!11594)

(assert (=> b!1170195 (= (tail!1690 (drop!489 lt!401056 0)) (drop!489 lt!401056 (+ 0 1)))))

(assert (=> b!1170195 (= lt!401055 (lemmaDropTail!363 lt!401056 0))))

(assert (=> b!1170195 (= lt!401056 (list!4262 lt!400624))))

(declare-fun lt!401050 () Unit!17736)

(declare-fun lt!401049 () Unit!17736)

(assert (=> b!1170195 (= lt!401050 lt!401049)))

(declare-fun lt!401066 () List!11594)

(declare-fun lt!401048 () Int)

(assert (=> b!1170195 (= (head!2106 (drop!489 lt!401066 lt!401048)) (apply!2502 lt!401066 lt!401048))))

(assert (=> b!1170195 (= lt!401049 (lemmaDropApply!375 lt!401066 lt!401048))))

(assert (=> b!1170195 (= lt!401048 (+ 0 1))))

(assert (=> b!1170195 (= lt!401066 (list!4262 lt!400624))))

(declare-fun lt!401053 () Unit!17736)

(declare-fun lt!401077 () Unit!17736)

(assert (=> b!1170195 (= lt!401053 lt!401077)))

(declare-fun lt!401070 () List!11594)

(assert (=> b!1170195 (= (head!2106 (drop!489 lt!401070 0)) (apply!2502 lt!401070 0))))

(assert (=> b!1170195 (= lt!401077 (lemmaDropApply!375 lt!401070 0))))

(assert (=> b!1170195 (= lt!401070 (list!4262 lt!400624))))

(declare-fun b!1170196 () Bool)

(assert (=> b!1170196 (= e!750320 (rulesProduceEachTokenIndividuallyList!578 Lexer!1710 (rules!9618 thiss!10527) lt!401063))))

(declare-fun b!1170197 () Bool)

(assert (=> b!1170197 (= e!750319 (tokensListTwoByTwoPredicateSeparable!73 Lexer!1710 lt!400624 (+ 0 1) (rules!9618 thiss!10527)))))

(assert (= (and d!334653 res!528535) b!1170194))

(assert (= (and d!334653 (not res!528539)) b!1170195))

(assert (= (and b!1170195 res!528541) b!1170197))

(assert (= (and d!334653 res!528536) b!1170192))

(assert (= (and d!334653 res!528538) b!1170191))

(assert (= (and b!1170191 res!528537) b!1170193))

(assert (= (and b!1170193 res!528542) b!1170190))

(assert (= (and b!1170190 res!528540) b!1170196))

(declare-fun m!1342729 () Bool)

(assert (=> b!1170197 m!1342729))

(assert (=> b!1170191 m!1341829))

(declare-fun m!1342731 () Bool)

(assert (=> d!334653 m!1342731))

(declare-fun m!1342733 () Bool)

(assert (=> d!334653 m!1342733))

(declare-fun m!1342735 () Bool)

(assert (=> d!334653 m!1342735))

(declare-fun m!1342737 () Bool)

(assert (=> d!334653 m!1342737))

(declare-fun m!1342739 () Bool)

(assert (=> d!334653 m!1342739))

(declare-fun m!1342741 () Bool)

(assert (=> d!334653 m!1342741))

(declare-fun m!1342743 () Bool)

(assert (=> d!334653 m!1342743))

(assert (=> d!334653 m!1342731))

(declare-fun m!1342745 () Bool)

(assert (=> d!334653 m!1342745))

(assert (=> d!334653 m!1341919))

(assert (=> d!334653 m!1342741))

(declare-fun m!1342747 () Bool)

(assert (=> b!1170192 m!1342747))

(declare-fun m!1342749 () Bool)

(assert (=> b!1170195 m!1342749))

(declare-fun m!1342751 () Bool)

(assert (=> b!1170195 m!1342751))

(declare-fun m!1342753 () Bool)

(assert (=> b!1170195 m!1342753))

(declare-fun m!1342755 () Bool)

(assert (=> b!1170195 m!1342755))

(declare-fun m!1342757 () Bool)

(assert (=> b!1170195 m!1342757))

(assert (=> b!1170195 m!1342753))

(declare-fun m!1342759 () Bool)

(assert (=> b!1170195 m!1342759))

(assert (=> b!1170195 m!1342749))

(declare-fun m!1342761 () Bool)

(assert (=> b!1170195 m!1342761))

(declare-fun m!1342763 () Bool)

(assert (=> b!1170195 m!1342763))

(declare-fun m!1342765 () Bool)

(assert (=> b!1170195 m!1342765))

(declare-fun m!1342767 () Bool)

(assert (=> b!1170195 m!1342767))

(declare-fun m!1342769 () Bool)

(assert (=> b!1170195 m!1342769))

(declare-fun m!1342771 () Bool)

(assert (=> b!1170195 m!1342771))

(declare-fun m!1342773 () Bool)

(assert (=> b!1170195 m!1342773))

(assert (=> b!1170195 m!1342765))

(declare-fun m!1342775 () Bool)

(assert (=> b!1170195 m!1342775))

(declare-fun m!1342777 () Bool)

(assert (=> b!1170195 m!1342777))

(assert (=> b!1170195 m!1342761))

(declare-fun m!1342779 () Bool)

(assert (=> b!1170195 m!1342779))

(assert (=> b!1170195 m!1342771))

(assert (=> b!1170195 m!1342749))

(declare-fun m!1342781 () Bool)

(assert (=> b!1170195 m!1342781))

(declare-fun m!1342783 () Bool)

(assert (=> b!1170195 m!1342783))

(assert (=> b!1170195 m!1342771))

(declare-fun m!1342785 () Bool)

(assert (=> b!1170195 m!1342785))

(declare-fun m!1342787 () Bool)

(assert (=> b!1170195 m!1342787))

(declare-fun m!1342789 () Bool)

(assert (=> b!1170195 m!1342789))

(declare-fun m!1342791 () Bool)

(assert (=> b!1170195 m!1342791))

(assert (=> b!1170195 m!1342785))

(declare-fun m!1342793 () Bool)

(assert (=> b!1170195 m!1342793))

(assert (=> b!1170195 m!1342787))

(declare-fun m!1342795 () Bool)

(assert (=> b!1170195 m!1342795))

(declare-fun m!1342797 () Bool)

(assert (=> b!1170195 m!1342797))

(assert (=> b!1170195 m!1341919))

(declare-fun m!1342799 () Bool)

(assert (=> b!1170195 m!1342799))

(assert (=> b!1170195 m!1342749))

(declare-fun m!1342801 () Bool)

(assert (=> b!1170195 m!1342801))

(assert (=> b!1170194 m!1342737))

(declare-fun m!1342803 () Bool)

(assert (=> b!1170190 m!1342803))

(assert (=> b!1170193 m!1341855))

(declare-fun m!1342805 () Bool)

(assert (=> b!1170196 m!1342805))

(assert (=> b!1169757 d!334653))

(declare-fun bs!285563 () Bool)

(declare-fun d!334655 () Bool)

(assert (= bs!285563 (and d!334655 d!334581)))

(declare-fun lambda!48125 () Int)

(assert (=> bs!285563 (= lambda!48125 lambda!48121)))

(declare-fun bs!285564 () Bool)

(assert (= bs!285564 (and d!334655 d!334487)))

(assert (=> bs!285564 (= lambda!48125 lambda!48114)))

(declare-fun bs!285565 () Bool)

(assert (= bs!285565 (and d!334655 d!334571)))

(assert (=> bs!285565 (= lambda!48125 lambda!48120)))

(declare-fun bs!285566 () Bool)

(assert (= bs!285566 (and d!334655 d!334553)))

(assert (=> bs!285566 (= lambda!48125 lambda!48115)))

(declare-fun bs!285567 () Bool)

(assert (= bs!285567 (and d!334655 d!334587)))

(assert (=> bs!285567 (= lambda!48125 lambda!48122)))

(declare-fun bs!285568 () Bool)

(assert (= bs!285568 (and d!334655 b!1169756)))

(assert (=> bs!285568 (= lambda!48125 lambda!48103)))

(declare-fun b!1170202 () Bool)

(declare-fun e!750328 () Bool)

(assert (=> b!1170202 (= e!750328 true)))

(declare-fun b!1170201 () Bool)

(declare-fun e!750327 () Bool)

(assert (=> b!1170201 (= e!750327 e!750328)))

(declare-fun b!1170200 () Bool)

(declare-fun e!750326 () Bool)

(assert (=> b!1170200 (= e!750326 e!750327)))

(assert (=> d!334655 e!750326))

(assert (= b!1170201 b!1170202))

(assert (= b!1170200 b!1170201))

(assert (= (and d!334655 ((_ is Cons!11571) (rules!9618 thiss!10527))) b!1170200))

(assert (=> b!1170202 (< (dynLambda!5101 order!7101 (toValue!3118 (transformation!2017 (h!16972 (rules!9618 thiss!10527))))) (dynLambda!5102 order!7103 lambda!48125))))

(assert (=> b!1170202 (< (dynLambda!5103 order!7105 (toChars!2977 (transformation!2017 (h!16972 (rules!9618 thiss!10527))))) (dynLambda!5102 order!7103 lambda!48125))))

(assert (=> d!334655 true))

(declare-fun lt!401080 () Bool)

(assert (=> d!334655 (= lt!401080 (forall!3054 lt!400616 lambda!48125))))

(declare-fun e!750324 () Bool)

(assert (=> d!334655 (= lt!401080 e!750324)))

(declare-fun res!528544 () Bool)

(assert (=> d!334655 (=> res!528544 e!750324)))

(assert (=> d!334655 (= res!528544 (not ((_ is Cons!11570) lt!400616)))))

(assert (=> d!334655 (not (isEmpty!7024 (rules!9618 thiss!10527)))))

(assert (=> d!334655 (= (rulesProduceEachTokenIndividuallyList!578 Lexer!1710 (rules!9618 thiss!10527) lt!400616) lt!401080)))

(declare-fun b!1170198 () Bool)

(declare-fun e!750325 () Bool)

(assert (=> b!1170198 (= e!750324 e!750325)))

(declare-fun res!528543 () Bool)

(assert (=> b!1170198 (=> (not res!528543) (not e!750325))))

(assert (=> b!1170198 (= res!528543 (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) (h!16971 lt!400616)))))

(declare-fun b!1170199 () Bool)

(assert (=> b!1170199 (= e!750325 (rulesProduceEachTokenIndividuallyList!578 Lexer!1710 (rules!9618 thiss!10527) (t!110646 lt!400616)))))

(assert (= (and d!334655 (not res!528544)) b!1170198))

(assert (= (and b!1170198 res!528543) b!1170199))

(declare-fun m!1342807 () Bool)

(assert (=> d!334655 m!1342807))

(assert (=> d!334655 m!1341829))

(assert (=> b!1170198 m!1341839))

(assert (=> b!1170199 m!1341837))

(assert (=> b!1169768 d!334655))

(declare-fun d!334657 () Bool)

(declare-fun res!528547 () Bool)

(declare-fun e!750331 () Bool)

(assert (=> d!334657 (=> (not res!528547) (not e!750331))))

(declare-fun rulesValid!709 (LexerInterface!1712 List!11595) Bool)

(assert (=> d!334657 (= res!528547 (rulesValid!709 Lexer!1710 (rules!9618 thiss!10527)))))

(assert (=> d!334657 (= (rulesInvariant!1586 Lexer!1710 (rules!9618 thiss!10527)) e!750331)))

(declare-fun b!1170205 () Bool)

(declare-datatypes ((List!11597 0))(
  ( (Nil!11573) (Cons!11573 (h!16974 String!14003) (t!110669 List!11597)) )
))
(declare-fun noDuplicateTag!709 (LexerInterface!1712 List!11595 List!11597) Bool)

(assert (=> b!1170205 (= e!750331 (noDuplicateTag!709 Lexer!1710 (rules!9618 thiss!10527) Nil!11573))))

(assert (= (and d!334657 res!528547) b!1170205))

(declare-fun m!1342809 () Bool)

(assert (=> d!334657 m!1342809))

(declare-fun m!1342811 () Bool)

(assert (=> b!1170205 m!1342811))

(assert (=> b!1169758 d!334657))

(declare-fun d!334659 () Bool)

(declare-fun e!750379 () Bool)

(assert (=> d!334659 e!750379))

(declare-fun res!528565 () Bool)

(assert (=> d!334659 (=> (not res!528565) (not e!750379))))

(assert (=> d!334659 (= res!528565 (rulesInvariant!1586 Lexer!1710 (rules!9618 thiss!10527)))))

(declare-fun Unit!17757 () Unit!17736)

(assert (=> d!334659 (= (lemmaInvariant!204 thiss!10527) Unit!17757)))

(declare-fun b!1170270 () Bool)

(declare-fun res!528566 () Bool)

(assert (=> b!1170270 (=> (not res!528566) (not e!750379))))

(assert (=> b!1170270 (= res!528566 (rulesProduceEachTokenIndividually!750 Lexer!1710 (rules!9618 thiss!10527) (tokens!1642 thiss!10527)))))

(declare-fun b!1170271 () Bool)

(assert (=> b!1170271 (= e!750379 (separableTokens!148 Lexer!1710 (tokens!1642 thiss!10527) (rules!9618 thiss!10527)))))

(assert (= (and d!334659 res!528565) b!1170270))

(assert (= (and b!1170270 res!528566) b!1170271))

(assert (=> d!334659 m!1341855))

(assert (=> b!1170270 m!1341849))

(assert (=> b!1170271 m!1342307))

(assert (=> b!1169758 d!334659))

(assert (=> b!1169769 d!334577))

(declare-fun d!334669 () Bool)

(declare-fun lt!401085 () Bool)

(declare-fun e!750380 () Bool)

(assert (=> d!334669 (= lt!401085 e!750380)))

(declare-fun res!528569 () Bool)

(assert (=> d!334669 (=> (not res!528569) (not e!750380))))

(assert (=> d!334669 (= res!528569 (= (list!4262 (_1!6867 (lex!710 Lexer!1710 (rules!9618 thiss!10527) (print!647 Lexer!1710 (singletonSeq!676 (h!16971 lt!400616)))))) (list!4262 (singletonSeq!676 (h!16971 lt!400616)))))))

(declare-fun e!750381 () Bool)

(assert (=> d!334669 (= lt!401085 e!750381)))

(declare-fun res!528567 () Bool)

(assert (=> d!334669 (=> (not res!528567) (not e!750381))))

(declare-fun lt!401086 () tuple2!12040)

(assert (=> d!334669 (= res!528567 (= (size!9109 (_1!6867 lt!401086)) 1))))

(assert (=> d!334669 (= lt!401086 (lex!710 Lexer!1710 (rules!9618 thiss!10527) (print!647 Lexer!1710 (singletonSeq!676 (h!16971 lt!400616)))))))

(assert (=> d!334669 (not (isEmpty!7024 (rules!9618 thiss!10527)))))

(assert (=> d!334669 (= (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) (h!16971 lt!400616)) lt!401085)))

(declare-fun b!1170272 () Bool)

(declare-fun res!528568 () Bool)

(assert (=> b!1170272 (=> (not res!528568) (not e!750381))))

(assert (=> b!1170272 (= res!528568 (= (apply!2501 (_1!6867 lt!401086) 0) (h!16971 lt!400616)))))

(declare-fun b!1170273 () Bool)

(assert (=> b!1170273 (= e!750381 (isEmpty!7026 (_2!6867 lt!401086)))))

(declare-fun b!1170274 () Bool)

(assert (=> b!1170274 (= e!750380 (isEmpty!7026 (_2!6867 (lex!710 Lexer!1710 (rules!9618 thiss!10527) (print!647 Lexer!1710 (singletonSeq!676 (h!16971 lt!400616)))))))))

(assert (= (and d!334669 res!528567) b!1170272))

(assert (= (and b!1170272 res!528568) b!1170273))

(assert (= (and d!334669 res!528569) b!1170274))

(assert (=> d!334669 m!1341829))

(declare-fun m!1342853 () Bool)

(assert (=> d!334669 m!1342853))

(declare-fun m!1342855 () Bool)

(assert (=> d!334669 m!1342855))

(declare-fun m!1342857 () Bool)

(assert (=> d!334669 m!1342857))

(assert (=> d!334669 m!1342853))

(declare-fun m!1342859 () Bool)

(assert (=> d!334669 m!1342859))

(assert (=> d!334669 m!1342853))

(declare-fun m!1342861 () Bool)

(assert (=> d!334669 m!1342861))

(assert (=> d!334669 m!1342861))

(declare-fun m!1342863 () Bool)

(assert (=> d!334669 m!1342863))

(declare-fun m!1342865 () Bool)

(assert (=> b!1170272 m!1342865))

(declare-fun m!1342867 () Bool)

(assert (=> b!1170273 m!1342867))

(assert (=> b!1170274 m!1342853))

(assert (=> b!1170274 m!1342853))

(assert (=> b!1170274 m!1342861))

(assert (=> b!1170274 m!1342861))

(assert (=> b!1170274 m!1342863))

(declare-fun m!1342869 () Bool)

(assert (=> b!1170274 m!1342869))

(assert (=> b!1169759 d!334669))

(declare-fun d!334671 () Bool)

(declare-fun lt!401089 () Int)

(declare-fun size!9116 (List!11593) Int)

(declare-fun list!4266 (BalanceConc!7614) List!11593)

(assert (=> d!334671 (= lt!401089 (size!9116 (list!4266 (charsOf!1072 lt!400622))))))

(declare-fun size!9117 (Conc!3796) Int)

(assert (=> d!334671 (= lt!401089 (size!9117 (c!195202 (charsOf!1072 lt!400622))))))

(assert (=> d!334671 (= (size!9108 (charsOf!1072 lt!400622)) lt!401089)))

(declare-fun bs!285581 () Bool)

(assert (= bs!285581 d!334671))

(assert (=> bs!285581 m!1341843))

(declare-fun m!1342871 () Bool)

(assert (=> bs!285581 m!1342871))

(assert (=> bs!285581 m!1342871))

(declare-fun m!1342873 () Bool)

(assert (=> bs!285581 m!1342873))

(declare-fun m!1342875 () Bool)

(assert (=> bs!285581 m!1342875))

(assert (=> b!1169760 d!334671))

(declare-fun d!334673 () Bool)

(declare-fun lt!401092 () BalanceConc!7614)

(assert (=> d!334673 (= (list!4266 lt!401092) (originalCharacters!2571 lt!400622))))

(declare-fun dynLambda!5106 (Int TokenValue!2083) BalanceConc!7614)

(assert (=> d!334673 (= lt!401092 (dynLambda!5106 (toChars!2977 (transformation!2017 (rule!3438 lt!400622))) (value!65481 lt!400622)))))

(assert (=> d!334673 (= (charsOf!1072 lt!400622) lt!401092)))

(declare-fun b_lambda!34967 () Bool)

(assert (=> (not b_lambda!34967) (not d!334673)))

(declare-fun bs!285582 () Bool)

(assert (= bs!285582 d!334673))

(declare-fun m!1342877 () Bool)

(assert (=> bs!285582 m!1342877))

(declare-fun m!1342879 () Bool)

(assert (=> bs!285582 m!1342879))

(assert (=> b!1169760 d!334673))

(declare-fun tp!334599 () Bool)

(declare-fun e!750387 () Bool)

(declare-fun tp!334600 () Bool)

(declare-fun b!1170283 () Bool)

(assert (=> b!1170283 (= e!750387 (and (inv!15246 (left!10119 (c!195203 (tokens!1642 thiss!10527)))) tp!334600 (inv!15246 (right!10449 (c!195203 (tokens!1642 thiss!10527)))) tp!334599))))

(declare-fun b!1170285 () Bool)

(declare-fun e!750386 () Bool)

(declare-fun tp!334601 () Bool)

(assert (=> b!1170285 (= e!750386 tp!334601)))

(declare-fun b!1170284 () Bool)

(declare-fun inv!15255 (IArray!7599) Bool)

(assert (=> b!1170284 (= e!750387 (and (inv!15255 (xs!6502 (c!195203 (tokens!1642 thiss!10527)))) e!750386))))

(assert (=> b!1169766 (= tp!334568 (and (inv!15246 (c!195203 (tokens!1642 thiss!10527))) e!750387))))

(assert (= (and b!1169766 ((_ is Node!3797) (c!195203 (tokens!1642 thiss!10527)))) b!1170283))

(assert (= b!1170284 b!1170285))

(assert (= (and b!1169766 ((_ is Leaf!5816) (c!195203 (tokens!1642 thiss!10527)))) b!1170284))

(declare-fun m!1342881 () Bool)

(assert (=> b!1170283 m!1342881))

(declare-fun m!1342883 () Bool)

(assert (=> b!1170283 m!1342883))

(declare-fun m!1342885 () Bool)

(assert (=> b!1170284 m!1342885))

(assert (=> b!1169766 m!1341909))

(declare-fun b!1170296 () Bool)

(declare-fun b_free!27841 () Bool)

(declare-fun b_next!28545 () Bool)

(assert (=> b!1170296 (= b_free!27841 (not b_next!28545))))

(declare-fun tp!334611 () Bool)

(declare-fun b_and!80741 () Bool)

(assert (=> b!1170296 (= tp!334611 b_and!80741)))

(declare-fun b_free!27843 () Bool)

(declare-fun b_next!28547 () Bool)

(assert (=> b!1170296 (= b_free!27843 (not b_next!28547))))

(declare-fun tb!65935 () Bool)

(declare-fun t!110667 () Bool)

(assert (=> (and b!1170296 (= (toChars!2977 (transformation!2017 (h!16972 (rules!9618 thiss!10527)))) (toChars!2977 (transformation!2017 (rule!3438 lt!400622)))) t!110667) tb!65935))

(declare-fun b!1170301 () Bool)

(declare-fun e!750402 () Bool)

(declare-fun tp!334616 () Bool)

(declare-fun inv!15256 (Conc!3796) Bool)

(assert (=> b!1170301 (= e!750402 (and (inv!15256 (c!195202 (dynLambda!5106 (toChars!2977 (transformation!2017 (rule!3438 lt!400622))) (value!65481 lt!400622)))) tp!334616))))

(declare-fun result!78946 () Bool)

(declare-fun inv!15257 (BalanceConc!7614) Bool)

(assert (=> tb!65935 (= result!78946 (and (inv!15257 (dynLambda!5106 (toChars!2977 (transformation!2017 (rule!3438 lt!400622))) (value!65481 lt!400622))) e!750402))))

(assert (= tb!65935 b!1170301))

(declare-fun m!1342887 () Bool)

(assert (=> b!1170301 m!1342887))

(declare-fun m!1342889 () Bool)

(assert (=> tb!65935 m!1342889))

(assert (=> d!334673 t!110667))

(declare-fun tp!334610 () Bool)

(declare-fun b_and!80743 () Bool)

(assert (=> b!1170296 (= tp!334610 (and (=> t!110667 result!78946) b_and!80743))))

(declare-fun e!750396 () Bool)

(assert (=> b!1170296 (= e!750396 (and tp!334611 tp!334610))))

(declare-fun b!1170295 () Bool)

(declare-fun e!750399 () Bool)

(declare-fun tp!334613 () Bool)

(declare-fun inv!15240 (String!14003) Bool)

(declare-fun inv!15258 (TokenValueInjection!3866) Bool)

(assert (=> b!1170295 (= e!750399 (and tp!334613 (inv!15240 (tag!2279 (h!16972 (rules!9618 thiss!10527)))) (inv!15258 (transformation!2017 (h!16972 (rules!9618 thiss!10527)))) e!750396))))

(declare-fun b!1170294 () Bool)

(declare-fun e!750397 () Bool)

(declare-fun tp!334612 () Bool)

(assert (=> b!1170294 (= e!750397 (and e!750399 tp!334612))))

(assert (=> b!1169762 (= tp!334567 e!750397)))

(assert (= b!1170295 b!1170296))

(assert (= b!1170294 b!1170295))

(assert (= (and b!1169762 ((_ is Cons!11571) (rules!9618 thiss!10527))) b!1170294))

(declare-fun m!1342891 () Bool)

(assert (=> b!1170295 m!1342891))

(declare-fun m!1342893 () Bool)

(assert (=> b!1170295 m!1342893))

(declare-fun b!1170304 () Bool)

(declare-fun e!750405 () Bool)

(assert (=> b!1170304 (= e!750405 true)))

(declare-fun b!1170303 () Bool)

(declare-fun e!750404 () Bool)

(assert (=> b!1170303 (= e!750404 e!750405)))

(declare-fun b!1170302 () Bool)

(declare-fun e!750403 () Bool)

(assert (=> b!1170302 (= e!750403 e!750404)))

(assert (=> b!1169776 e!750403))

(assert (= b!1170303 b!1170304))

(assert (= b!1170302 b!1170303))

(assert (= (and b!1169776 ((_ is Cons!11571) (rules!9618 thiss!10527))) b!1170302))

(assert (=> b!1170304 (< (dynLambda!5101 order!7101 (toValue!3118 (transformation!2017 (h!16972 (rules!9618 thiss!10527))))) (dynLambda!5102 order!7103 lambda!48103))))

(assert (=> b!1170304 (< (dynLambda!5103 order!7105 (toChars!2977 (transformation!2017 (h!16972 (rules!9618 thiss!10527))))) (dynLambda!5102 order!7103 lambda!48103))))

(declare-fun b!1170313 () Bool)

(declare-fun e!750410 () Bool)

(assert (=> b!1170313 (= e!750410 true)))

(declare-fun b!1170315 () Bool)

(declare-fun e!750411 () Bool)

(assert (=> b!1170315 (= e!750411 true)))

(declare-fun b!1170314 () Bool)

(assert (=> b!1170314 (= e!750410 e!750411)))

(assert (=> b!1169777 e!750410))

(assert (= (and b!1169777 ((_ is Node!3797) (c!195203 (tokens!1642 thiss!10527)))) b!1170313))

(assert (= b!1170314 b!1170315))

(assert (= (and b!1169777 ((_ is Leaf!5816) (c!195203 (tokens!1642 thiss!10527)))) b!1170314))

(declare-fun b_lambda!34969 () Bool)

(assert (= b_lambda!34963 (or b!1169756 b_lambda!34969)))

(declare-fun bs!285583 () Bool)

(declare-fun d!334675 () Bool)

(assert (= bs!285583 (and d!334675 b!1169756)))

(assert (=> bs!285583 (= (dynLambda!5105 lambda!48103 (h!16971 lt!400616)) (rulesProduceIndividualToken!747 Lexer!1710 (rules!9618 thiss!10527) (h!16971 lt!400616)))))

(assert (=> bs!285583 m!1341839))

(assert (=> b!1170004 d!334675))

(check-sat (not b!1170205) (not b_lambda!34969) (not b!1169800) (not b!1170199) (not bm!82269) (not b!1169988) (not b!1170164) (not b!1170177) (not b!1170152) (not b!1170272) (not b!1169989) (not b!1170169) (not b!1169835) (not b!1169962) (not b_next!28545) (not b!1169979) (not d!334621) (not b!1170137) (not d!334585) (not b!1169973) (not d!334583) (not b!1170285) (not d!334559) (not d!334647) (not d!334493) (not d!334657) (not b!1169966) (not b!1170301) (not d!334625) (not d!334639) (not b!1170154) (not b!1170195) (not b!1169969) (not b!1170294) (not d!334635) (not b!1169968) (not d!334659) (not b!1170112) (not b!1170162) (not d!334653) (not b!1170174) (not d!334577) (not bs!285583) (not d!334673) (not d!334471) (not b!1169972) (not b!1170193) (not b!1170146) (not b!1169975) (not b!1170274) (not b!1170302) (not d!334611) (not d!334615) (not b!1170161) (not b!1170068) (not b!1170067) (not b!1169970) (not d!334475) (not b!1170270) (not b!1169967) (not b!1170198) (not d!334589) (not b!1170168) (not d!334553) (not b!1169971) (not b!1169998) (not b!1169826) (not b!1169961) (not b!1169825) (not b!1170147) (not b!1169963) (not d!334555) (not d!334669) (not b!1170074) (not b!1170315) (not b!1169997) (not b!1170160) (not b!1170191) (not d!334641) (not b!1170069) (not b!1169766) b_and!80743 (not d!334557) (not d!334587) (not b!1170284) (not b!1170072) (not b!1170295) (not d!334487) (not b!1169999) (not b!1170196) (not bm!82267) (not b!1169974) (not b!1170273) (not d!334613) (not b!1170073) (not b!1170163) (not d!334623) (not b_lambda!34967) (not b!1170016) (not d!334633) (not d!334655) (not d!334629) (not tb!65935) (not b!1170190) (not b!1170056) (not b!1170017) (not b!1170138) (not d!334469) (not b!1170283) (not b!1169964) (not b!1170175) (not d!334671) (not b!1170055) (not b!1170197) (not d!334619) (not b!1170194) (not d!334565) (not d!334607) (not b!1170005) (not d!334569) (not d!334551) (not b!1170153) (not b!1170176) (not b!1170111) (not b!1169802) (not b!1169977) (not b!1170020) (not b!1169965) (not b!1170115) (not b!1169990) (not b!1170200) (not d!334605) (not d!334571) (not b!1170065) (not b!1169978) (not b!1169976) (not bm!82268) (not d!334627) (not b!1170271) (not d!334581) (not b!1170192) (not b_next!28547) (not b!1170110) (not b!1170313) (not b!1170178) (not d!334561) (not b!1170157) b_and!80741 (not b!1169801))
(check-sat b_and!80741 b_and!80743 (not b_next!28545) (not b_next!28547))
