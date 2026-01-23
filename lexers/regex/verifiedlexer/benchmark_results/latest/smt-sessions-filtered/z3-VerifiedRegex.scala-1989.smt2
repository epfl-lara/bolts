; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101258 () Bool)

(assert start!101258)

(declare-fun b!1158148 () Bool)

(declare-fun e!741023 () Bool)

(assert (=> b!1158148 (= e!741023 true)))

(declare-fun b!1158147 () Bool)

(declare-fun e!741022 () Bool)

(assert (=> b!1158147 (= e!741022 e!741023)))

(declare-fun b!1158135 () Bool)

(assert (=> b!1158135 e!741022))

(assert (= b!1158147 b!1158148))

(assert (= b!1158135 b!1158147))

(declare-fun b!1158129 () Bool)

(declare-fun e!741011 () Bool)

(declare-fun e!741013 () Bool)

(assert (=> b!1158129 (= e!741011 e!741013)))

(declare-fun res!521451 () Bool)

(assert (=> b!1158129 (=> (not res!521451) (not e!741013))))

(declare-datatypes ((List!11329 0))(
  ( (Nil!11305) (Cons!11305 (h!16706 (_ BitVec 16)) (t!109261 List!11329)) )
))
(declare-datatypes ((TokenValue!2025 0))(
  ( (FloatLiteralValue!4050 (text!14620 List!11329)) (TokenValueExt!2024 (__x!7761 Int)) (Broken!10125 (value!63802 List!11329)) (Object!2048) (End!2025) (Def!2025) (Underscore!2025) (Match!2025) (Else!2025) (Error!2025) (Case!2025) (If!2025) (Extends!2025) (Abstract!2025) (Class!2025) (Val!2025) (DelimiterValue!4050 (del!2085 List!11329)) (KeywordValue!2031 (value!63803 List!11329)) (CommentValue!4050 (value!63804 List!11329)) (WhitespaceValue!4050 (value!63805 List!11329)) (IndentationValue!2025 (value!63806 List!11329)) (String!13712) (Int32!2025) (Broken!10126 (value!63807 List!11329)) (Boolean!2026) (Unit!17320) (OperatorValue!2028 (op!2085 List!11329)) (IdentifierValue!4050 (value!63808 List!11329)) (IdentifierValue!4051 (value!63809 List!11329)) (WhitespaceValue!4051 (value!63810 List!11329)) (True!4050) (False!4050) (Broken!10127 (value!63811 List!11329)) (Broken!10128 (value!63812 List!11329)) (True!4051) (RightBrace!2025) (RightBracket!2025) (Colon!2025) (Null!2025) (Comma!2025) (LeftBracket!2025) (False!4051) (LeftBrace!2025) (ImaginaryLiteralValue!2025 (text!14621 List!11329)) (StringLiteralValue!6075 (value!63813 List!11329)) (EOFValue!2025 (value!63814 List!11329)) (IdentValue!2025 (value!63815 List!11329)) (DelimiterValue!4051 (value!63816 List!11329)) (DedentValue!2025 (value!63817 List!11329)) (NewLineValue!2025 (value!63818 List!11329)) (IntegerValue!6075 (value!63819 (_ BitVec 32)) (text!14622 List!11329)) (IntegerValue!6076 (value!63820 Int) (text!14623 List!11329)) (Times!2025) (Or!2025) (Equal!2025) (Minus!2025) (Broken!10129 (value!63821 List!11329)) (And!2025) (Div!2025) (LessEqual!2025) (Mod!2025) (Concat!5254) (Not!2025) (Plus!2025) (SpaceValue!2025 (value!63822 List!11329)) (IntegerValue!6077 (value!63823 Int) (text!14624 List!11329)) (StringLiteralValue!6076 (text!14625 List!11329)) (FloatLiteralValue!4051 (text!14626 List!11329)) (BytesLiteralValue!2025 (value!63824 List!11329)) (CommentValue!4051 (value!63825 List!11329)) (StringLiteralValue!6077 (value!63826 List!11329)) (ErrorTokenValue!2025 (msg!2086 List!11329)) )
))
(declare-datatypes ((C!6776 0))(
  ( (C!6777 (val!3644 Int)) )
))
(declare-datatypes ((Regex!3229 0))(
  ( (ElementMatch!3229 (c!194124 C!6776)) (Concat!5255 (regOne!6970 Regex!3229) (regTwo!6970 Regex!3229)) (EmptyExpr!3229) (Star!3229 (reg!3558 Regex!3229)) (EmptyLang!3229) (Union!3229 (regOne!6971 Regex!3229) (regTwo!6971 Regex!3229)) )
))
(declare-datatypes ((String!13713 0))(
  ( (String!13714 (value!63827 String)) )
))
(declare-datatypes ((List!11330 0))(
  ( (Nil!11306) (Cons!11306 (h!16707 C!6776) (t!109262 List!11330)) )
))
(declare-datatypes ((IArray!7365 0))(
  ( (IArray!7366 (innerList!3740 List!11330)) )
))
(declare-datatypes ((Conc!3680 0))(
  ( (Node!3680 (left!9861 Conc!3680) (right!10191 Conc!3680) (csize!7590 Int) (cheight!3891 Int)) (Leaf!5670 (xs!6385 IArray!7365) (csize!7591 Int)) (Empty!3680) )
))
(declare-datatypes ((BalanceConc!7382 0))(
  ( (BalanceConc!7383 (c!194125 Conc!3680)) )
))
(declare-datatypes ((TokenValueInjection!3750 0))(
  ( (TokenValueInjection!3751 (toValue!3060 Int) (toChars!2919 Int)) )
))
(declare-datatypes ((Rule!3718 0))(
  ( (Rule!3719 (regex!1959 Regex!3229) (tag!2221 String!13713) (isSeparator!1959 Bool) (transformation!1959 TokenValueInjection!3750)) )
))
(declare-datatypes ((Token!3580 0))(
  ( (Token!3581 (value!63828 TokenValue!2025) (rule!3380 Rule!3718) (size!8892 Int) (originalCharacters!2513 List!11330)) )
))
(declare-datatypes ((List!11331 0))(
  ( (Nil!11307) (Cons!11307 (h!16708 Rule!3718) (t!109263 List!11331)) )
))
(declare-datatypes ((List!11332 0))(
  ( (Nil!11308) (Cons!11308 (h!16709 Token!3580) (t!109264 List!11332)) )
))
(declare-datatypes ((IArray!7367 0))(
  ( (IArray!7368 (innerList!3741 List!11332)) )
))
(declare-datatypes ((Conc!3681 0))(
  ( (Node!3681 (left!9862 Conc!3681) (right!10192 Conc!3681) (csize!7592 Int) (cheight!3892 Int)) (Leaf!5671 (xs!6386 IArray!7367) (csize!7593 Int)) (Empty!3681) )
))
(declare-datatypes ((BalanceConc!7384 0))(
  ( (BalanceConc!7385 (c!194126 Conc!3681)) )
))
(declare-datatypes ((PrintableTokens!604 0))(
  ( (PrintableTokens!605 (rules!9444 List!11331) (tokens!1558 BalanceConc!7384)) )
))
(declare-fun thiss!10527 () PrintableTokens!604)

(declare-fun lt!393592 () List!11332)

(declare-datatypes ((LexerInterface!1654 0))(
  ( (LexerInterfaceExt!1651 (__x!7762 Int)) (Lexer!1652) )
))
(declare-fun rulesProduceIndividualToken!691 (LexerInterface!1654 List!11331 Token!3580) Bool)

(assert (=> b!1158129 (= res!521451 (rulesProduceIndividualToken!691 Lexer!1652 (rules!9444 thiss!10527) (h!16709 lt!393592)))))

(declare-fun b!1158130 () Bool)

(declare-fun e!741009 () Bool)

(declare-fun e!741014 () Bool)

(assert (=> b!1158130 (= e!741009 e!741014)))

(declare-fun res!521456 () Bool)

(assert (=> b!1158130 (=> (not res!521456) (not e!741014))))

(declare-fun lt!393589 () List!11332)

(assert (=> b!1158130 (= res!521456 (rulesProduceIndividualToken!691 Lexer!1652 (rules!9444 thiss!10527) (h!16709 lt!393589)))))

(declare-fun tp!333449 () Bool)

(declare-fun e!741012 () Bool)

(declare-fun b!1158131 () Bool)

(declare-fun e!741015 () Bool)

(declare-fun inv!14855 (BalanceConc!7384) Bool)

(assert (=> b!1158131 (= e!741012 (and tp!333449 (inv!14855 (tokens!1558 thiss!10527)) e!741015))))

(declare-fun b!1158132 () Bool)

(declare-fun res!521457 () Bool)

(declare-fun e!741008 () Bool)

(assert (=> b!1158132 (=> (not res!521457) (not e!741008))))

(declare-fun to!267 () Int)

(declare-fun size!8893 (BalanceConc!7384) Int)

(assert (=> b!1158132 (= res!521457 (<= to!267 (size!8893 (tokens!1558 thiss!10527))))))

(declare-fun res!521450 () Bool)

(assert (=> start!101258 (=> (not res!521450) (not e!741008))))

(declare-fun from!787 () Int)

(assert (=> start!101258 (= res!521450 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!101258 e!741008))

(assert (=> start!101258 true))

(declare-fun inv!14856 (PrintableTokens!604) Bool)

(assert (=> start!101258 (and (inv!14856 thiss!10527) e!741012)))

(declare-fun b!1158133 () Bool)

(declare-fun e!741010 () Bool)

(assert (=> b!1158133 (= e!741008 e!741010)))

(declare-fun res!521459 () Bool)

(assert (=> b!1158133 (=> (not res!521459) (not e!741010))))

(declare-fun rulesInvariant!1528 (LexerInterface!1654 List!11331) Bool)

(assert (=> b!1158133 (= res!521459 (rulesInvariant!1528 Lexer!1652 (rules!9444 thiss!10527)))))

(declare-datatypes ((Unit!17321 0))(
  ( (Unit!17322) )
))
(declare-fun lt!393591 () Unit!17321)

(declare-fun lemmaInvariant!146 (PrintableTokens!604) Unit!17321)

(assert (=> b!1158133 (= lt!393591 (lemmaInvariant!146 thiss!10527))))

(declare-fun b!1158134 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!522 (LexerInterface!1654 List!11331 List!11332) Bool)

(assert (=> b!1158134 (= e!741014 (rulesProduceEachTokenIndividuallyList!522 Lexer!1652 (rules!9444 thiss!10527) (t!109264 lt!393589)))))

(declare-fun e!741016 () Bool)

(assert (=> b!1158135 (= e!741010 (not e!741016))))

(declare-fun res!521453 () Bool)

(assert (=> b!1158135 (=> res!521453 e!741016)))

(declare-fun lambda!46889 () Int)

(declare-fun forall!2914 (BalanceConc!7384 Int) Bool)

(assert (=> b!1158135 (= res!521453 (not (forall!2914 (tokens!1558 thiss!10527) lambda!46889)))))

(assert (=> b!1158135 (= (rulesProduceEachTokenIndividuallyList!522 Lexer!1652 (rules!9444 thiss!10527) lt!393592) e!741011)))

(declare-fun res!521455 () Bool)

(assert (=> b!1158135 (=> res!521455 e!741011)))

(get-info :version)

(assert (=> b!1158135 (= res!521455 (not ((_ is Cons!11308) lt!393592)))))

(declare-fun list!4166 (BalanceConc!7384) List!11332)

(assert (=> b!1158135 (= lt!393592 (list!4166 (tokens!1558 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!693 (LexerInterface!1654 List!11331 BalanceConc!7384) Bool)

(assert (=> b!1158135 (= (rulesProduceEachTokenIndividually!693 Lexer!1652 (rules!9444 thiss!10527) (tokens!1558 thiss!10527)) (forall!2914 (tokens!1558 thiss!10527) lambda!46889))))

(declare-fun e!741017 () Bool)

(declare-fun b!1158136 () Bool)

(assert (=> b!1158136 (= e!741017 (= (rulesProduceEachTokenIndividuallyList!522 Lexer!1652 (rules!9444 thiss!10527) lt!393589) e!741009))))

(declare-fun res!521458 () Bool)

(assert (=> b!1158136 (=> res!521458 e!741009)))

(assert (=> b!1158136 (= res!521458 (not ((_ is Cons!11308) lt!393589)))))

(declare-fun b!1158137 () Bool)

(declare-fun tp!333450 () Bool)

(declare-fun inv!14857 (Conc!3681) Bool)

(assert (=> b!1158137 (= e!741015 (and (inv!14857 (c!194126 (tokens!1558 thiss!10527))) tp!333450))))

(declare-fun b!1158138 () Bool)

(declare-fun res!521454 () Bool)

(assert (=> b!1158138 (=> (not res!521454) (not e!741017))))

(declare-fun lt!393594 () BalanceConc!7384)

(assert (=> b!1158138 (= res!521454 (= (rulesProduceEachTokenIndividually!693 Lexer!1652 (rules!9444 thiss!10527) lt!393594) (forall!2914 lt!393594 lambda!46889)))))

(declare-fun b!1158139 () Bool)

(assert (=> b!1158139 (= e!741013 (rulesProduceEachTokenIndividuallyList!522 Lexer!1652 (rules!9444 thiss!10527) (t!109264 lt!393592)))))

(declare-fun b!1158140 () Bool)

(assert (=> b!1158140 (= e!741016 true)))

(assert (=> b!1158140 e!741017))

(declare-fun res!521452 () Bool)

(assert (=> b!1158140 (=> (not res!521452) (not e!741017))))

(declare-fun forall!2915 (List!11332 Int) Bool)

(assert (=> b!1158140 (= res!521452 (forall!2915 lt!393589 lambda!46889))))

(declare-fun lt!393593 () Unit!17321)

(declare-fun lemmaForallSubseq!107 (List!11332 List!11332 Int) Unit!17321)

(assert (=> b!1158140 (= lt!393593 (lemmaForallSubseq!107 lt!393589 lt!393592 lambda!46889))))

(assert (=> b!1158140 (= lt!393589 (list!4166 lt!393594))))

(declare-fun slice!207 (BalanceConc!7384 Int Int) BalanceConc!7384)

(assert (=> b!1158140 (= lt!393594 (slice!207 (tokens!1558 thiss!10527) from!787 to!267))))

(declare-fun subseq!215 (List!11332 List!11332) Bool)

(declare-fun slice!208 (List!11332 Int Int) List!11332)

(assert (=> b!1158140 (subseq!215 (slice!208 lt!393592 from!787 to!267) lt!393592)))

(declare-fun lt!393590 () Unit!17321)

(declare-fun lemmaSliceSubseq!56 (List!11332 Int Int) Unit!17321)

(assert (=> b!1158140 (= lt!393590 (lemmaSliceSubseq!56 lt!393592 from!787 to!267))))

(assert (= (and start!101258 res!521450) b!1158132))

(assert (= (and b!1158132 res!521457) b!1158133))

(assert (= (and b!1158133 res!521459) b!1158135))

(assert (= (and b!1158135 (not res!521455)) b!1158129))

(assert (= (and b!1158129 res!521451) b!1158139))

(assert (= (and b!1158135 (not res!521453)) b!1158140))

(assert (= (and b!1158140 res!521452) b!1158138))

(assert (= (and b!1158138 res!521454) b!1158136))

(assert (= (and b!1158136 (not res!521458)) b!1158130))

(assert (= (and b!1158130 res!521456) b!1158134))

(assert (= b!1158131 b!1158137))

(assert (= start!101258 b!1158131))

(declare-fun m!1324791 () Bool)

(assert (=> b!1158137 m!1324791))

(declare-fun m!1324793 () Bool)

(assert (=> b!1158132 m!1324793))

(declare-fun m!1324795 () Bool)

(assert (=> b!1158138 m!1324795))

(declare-fun m!1324797 () Bool)

(assert (=> b!1158138 m!1324797))

(declare-fun m!1324799 () Bool)

(assert (=> b!1158136 m!1324799))

(declare-fun m!1324801 () Bool)

(assert (=> b!1158139 m!1324801))

(declare-fun m!1324803 () Bool)

(assert (=> start!101258 m!1324803))

(declare-fun m!1324805 () Bool)

(assert (=> b!1158129 m!1324805))

(declare-fun m!1324807 () Bool)

(assert (=> b!1158135 m!1324807))

(declare-fun m!1324809 () Bool)

(assert (=> b!1158135 m!1324809))

(assert (=> b!1158135 m!1324807))

(declare-fun m!1324811 () Bool)

(assert (=> b!1158135 m!1324811))

(declare-fun m!1324813 () Bool)

(assert (=> b!1158135 m!1324813))

(declare-fun m!1324815 () Bool)

(assert (=> b!1158131 m!1324815))

(declare-fun m!1324817 () Bool)

(assert (=> b!1158133 m!1324817))

(declare-fun m!1324819 () Bool)

(assert (=> b!1158133 m!1324819))

(declare-fun m!1324821 () Bool)

(assert (=> b!1158134 m!1324821))

(declare-fun m!1324823 () Bool)

(assert (=> b!1158130 m!1324823))

(declare-fun m!1324825 () Bool)

(assert (=> b!1158140 m!1324825))

(declare-fun m!1324827 () Bool)

(assert (=> b!1158140 m!1324827))

(declare-fun m!1324829 () Bool)

(assert (=> b!1158140 m!1324829))

(declare-fun m!1324831 () Bool)

(assert (=> b!1158140 m!1324831))

(declare-fun m!1324833 () Bool)

(assert (=> b!1158140 m!1324833))

(declare-fun m!1324835 () Bool)

(assert (=> b!1158140 m!1324835))

(declare-fun m!1324837 () Bool)

(assert (=> b!1158140 m!1324837))

(assert (=> b!1158140 m!1324827))

(check-sat (not b!1158147) (not b!1158130) (not b!1158134) (not b!1158139) (not b!1158131) (not b!1158138) (not b!1158129) (not start!101258) (not b!1158133) (not b!1158136) (not b!1158132) (not b!1158140) (not b!1158135) (not b!1158137) (not b!1158148))
(check-sat)
