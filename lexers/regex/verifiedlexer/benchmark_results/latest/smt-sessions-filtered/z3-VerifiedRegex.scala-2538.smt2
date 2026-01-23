; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136654 () Bool)

(assert start!136654)

(declare-fun b!1463095 () Bool)

(declare-fun e!933360 () Bool)

(declare-datatypes ((C!8156 0))(
  ( (C!8157 (val!4648 Int)) )
))
(declare-datatypes ((List!15252 0))(
  ( (Nil!15186) (Cons!15186 (h!20587 C!8156) (t!134645 List!15252)) )
))
(declare-datatypes ((IArray!10357 0))(
  ( (IArray!10358 (innerList!5236 List!15252)) )
))
(declare-datatypes ((Conc!5176 0))(
  ( (Node!5176 (left!12904 Conc!5176) (right!13234 Conc!5176) (csize!10582 Int) (cheight!5387 Int)) (Leaf!7715 (xs!7927 IArray!10357) (csize!10583 Int)) (Empty!5176) )
))
(declare-datatypes ((BalanceConc!10292 0))(
  ( (BalanceConc!10293 (c!241180 Conc!5176)) )
))
(declare-datatypes ((List!15253 0))(
  ( (Nil!15187) (Cons!15187 (h!20588 (_ BitVec 16)) (t!134646 List!15253)) )
))
(declare-datatypes ((TokenValue!2765 0))(
  ( (FloatLiteralValue!5530 (text!19800 List!15253)) (TokenValueExt!2764 (__x!9320 Int)) (Broken!13825 (value!85859 List!15253)) (Object!2830) (End!2765) (Def!2765) (Underscore!2765) (Match!2765) (Else!2765) (Error!2765) (Case!2765) (If!2765) (Extends!2765) (Abstract!2765) (Class!2765) (Val!2765) (DelimiterValue!5530 (del!2825 List!15253)) (KeywordValue!2771 (value!85860 List!15253)) (CommentValue!5530 (value!85861 List!15253)) (WhitespaceValue!5530 (value!85862 List!15253)) (IndentationValue!2765 (value!85863 List!15253)) (String!18080) (Int32!2765) (Broken!13826 (value!85864 List!15253)) (Boolean!2766) (Unit!24508) (OperatorValue!2768 (op!2825 List!15253)) (IdentifierValue!5530 (value!85865 List!15253)) (IdentifierValue!5531 (value!85866 List!15253)) (WhitespaceValue!5531 (value!85867 List!15253)) (True!5530) (False!5530) (Broken!13827 (value!85868 List!15253)) (Broken!13828 (value!85869 List!15253)) (True!5531) (RightBrace!2765) (RightBracket!2765) (Colon!2765) (Null!2765) (Comma!2765) (LeftBracket!2765) (False!5531) (LeftBrace!2765) (ImaginaryLiteralValue!2765 (text!19801 List!15253)) (StringLiteralValue!8295 (value!85870 List!15253)) (EOFValue!2765 (value!85871 List!15253)) (IdentValue!2765 (value!85872 List!15253)) (DelimiterValue!5531 (value!85873 List!15253)) (DedentValue!2765 (value!85874 List!15253)) (NewLineValue!2765 (value!85875 List!15253)) (IntegerValue!8295 (value!85876 (_ BitVec 32)) (text!19802 List!15253)) (IntegerValue!8296 (value!85877 Int) (text!19803 List!15253)) (Times!2765) (Or!2765) (Equal!2765) (Minus!2765) (Broken!13829 (value!85878 List!15253)) (And!2765) (Div!2765) (LessEqual!2765) (Mod!2765) (Concat!6754) (Not!2765) (Plus!2765) (SpaceValue!2765 (value!85879 List!15253)) (IntegerValue!8297 (value!85880 Int) (text!19804 List!15253)) (StringLiteralValue!8296 (text!19805 List!15253)) (FloatLiteralValue!5531 (text!19806 List!15253)) (BytesLiteralValue!2765 (value!85881 List!15253)) (CommentValue!5531 (value!85882 List!15253)) (StringLiteralValue!8297 (value!85883 List!15253)) (ErrorTokenValue!2765 (msg!2826 List!15253)) )
))
(declare-datatypes ((Regex!3989 0))(
  ( (ElementMatch!3989 (c!241181 C!8156)) (Concat!6755 (regOne!8490 Regex!3989) (regTwo!8490 Regex!3989)) (EmptyExpr!3989) (Star!3989 (reg!4318 Regex!3989)) (EmptyLang!3989) (Union!3989 (regOne!8491 Regex!3989) (regTwo!8491 Regex!3989)) )
))
(declare-datatypes ((String!18081 0))(
  ( (String!18082 (value!85884 String)) )
))
(declare-datatypes ((TokenValueInjection!5190 0))(
  ( (TokenValueInjection!5191 (toValue!3986 Int) (toChars!3845 Int)) )
))
(declare-datatypes ((Rule!5150 0))(
  ( (Rule!5151 (regex!2675 Regex!3989) (tag!2939 String!18081) (isSeparator!2675 Bool) (transformation!2675 TokenValueInjection!5190)) )
))
(declare-datatypes ((Token!5012 0))(
  ( (Token!5013 (value!85885 TokenValue!2765) (rule!4450 Rule!5150) (size!12421 Int) (originalCharacters!3537 List!15252)) )
))
(declare-datatypes ((List!15254 0))(
  ( (Nil!15188) (Cons!15188 (h!20589 Token!5012) (t!134647 List!15254)) )
))
(declare-fun lt!506991 () List!15254)

(declare-datatypes ((IArray!10359 0))(
  ( (IArray!10360 (innerList!5237 List!15254)) )
))
(declare-datatypes ((Conc!5177 0))(
  ( (Node!5177 (left!12905 Conc!5177) (right!13235 Conc!5177) (csize!10584 Int) (cheight!5388 Int)) (Leaf!7716 (xs!7928 IArray!10359) (csize!10585 Int)) (Empty!5177) )
))
(declare-datatypes ((BalanceConc!10294 0))(
  ( (BalanceConc!10295 (c!241182 Conc!5177)) )
))
(declare-datatypes ((List!15255 0))(
  ( (Nil!15189) (Cons!15189 (h!20590 Rule!5150) (t!134648 List!15255)) )
))
(declare-datatypes ((PrintableTokens!1132 0))(
  ( (PrintableTokens!1133 (rules!11706 List!15255) (tokens!2112 BalanceConc!10294)) )
))
(declare-fun thiss!10022 () PrintableTokens!1132)

(declare-datatypes ((LexerInterface!2331 0))(
  ( (LexerInterfaceExt!2328 (__x!9321 Int)) (Lexer!2329) )
))
(declare-fun tokensListTwoByTwoPredicateSeparableList!249 (LexerInterface!2331 List!15254 List!15255) Bool)

(assert (=> b!1463095 (= e!933360 (tokensListTwoByTwoPredicateSeparableList!249 Lexer!2329 lt!506991 (rules!11706 thiss!10022)))))

(declare-fun b!1463096 () Bool)

(declare-fun e!933359 () Bool)

(declare-fun e!933366 () Bool)

(declare-fun tp!411787 () Bool)

(declare-fun other!32 () PrintableTokens!1132)

(declare-fun inv!20298 (BalanceConc!10294) Bool)

(assert (=> b!1463096 (= e!933359 (and tp!411787 (inv!20298 (tokens!2112 other!32)) e!933366))))

(declare-fun b!1463097 () Bool)

(declare-fun e!933364 () Bool)

(declare-fun e!933358 () Bool)

(assert (=> b!1463097 (= e!933364 e!933358)))

(declare-fun res!662186 () Bool)

(assert (=> b!1463097 (=> (not res!662186) (not e!933358))))

(declare-fun isEmpty!9535 (BalanceConc!10294) Bool)

(assert (=> b!1463097 (= res!662186 (not (isEmpty!9535 (tokens!2112 other!32))))))

(declare-datatypes ((Unit!24509 0))(
  ( (Unit!24510) )
))
(declare-fun lt!507003 () Unit!24509)

(declare-fun lemmaInvariant!371 (PrintableTokens!1132) Unit!24509)

(assert (=> b!1463097 (= lt!507003 (lemmaInvariant!371 thiss!10022))))

(declare-fun lt!507002 () Unit!24509)

(assert (=> b!1463097 (= lt!507002 (lemmaInvariant!371 other!32))))

(declare-fun b!1463098 () Bool)

(declare-fun e!933365 () Bool)

(assert (=> b!1463098 (= e!933358 (not e!933365))))

(declare-fun res!662183 () Bool)

(assert (=> b!1463098 (=> res!662183 e!933365)))

(declare-fun lt!506998 () Token!5012)

(declare-fun lt!507004 () Token!5012)

(declare-fun separableTokensPredicate!540 (LexerInterface!2331 Token!5012 Token!5012 List!15255) Bool)

(assert (=> b!1463098 (= res!662183 (not (separableTokensPredicate!540 Lexer!2329 lt!506998 lt!507004 (rules!11706 thiss!10022))))))

(declare-fun rulesProduceIndividualToken!1250 (LexerInterface!2331 List!15255 Token!5012) Bool)

(assert (=> b!1463098 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) lt!507004)))

(declare-fun lt!506995 () Unit!24509)

(declare-fun lt!506994 () List!15254)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!433 (LexerInterface!2331 List!15255 List!15254 Token!5012) Unit!24509)

(assert (=> b!1463098 (= lt!506995 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!433 Lexer!2329 (rules!11706 thiss!10022) lt!506994 lt!507004))))

(declare-fun head!3017 (BalanceConc!10294) Token!5012)

(assert (=> b!1463098 (= lt!507004 (head!3017 (tokens!2112 other!32)))))

(declare-fun list!6083 (BalanceConc!10294) List!15254)

(assert (=> b!1463098 (= lt!506994 (list!6083 (tokens!2112 other!32)))))

(assert (=> b!1463098 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) lt!506998)))

(declare-fun lt!507007 () List!15254)

(declare-fun lt!506996 () Unit!24509)

(assert (=> b!1463098 (= lt!506996 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!433 Lexer!2329 (rules!11706 thiss!10022) lt!507007 lt!506998))))

(declare-fun last!285 (BalanceConc!10294) Token!5012)

(assert (=> b!1463098 (= lt!506998 (last!285 (tokens!2112 thiss!10022)))))

(assert (=> b!1463098 (= lt!507007 (list!6083 (tokens!2112 thiss!10022)))))

(declare-fun res!662187 () Bool)

(assert (=> start!136654 (=> (not res!662187) (not e!933364))))

(assert (=> start!136654 (= res!662187 (= (rules!11706 thiss!10022) (rules!11706 other!32)))))

(assert (=> start!136654 e!933364))

(declare-fun e!933363 () Bool)

(declare-fun inv!20299 (PrintableTokens!1132) Bool)

(assert (=> start!136654 (and (inv!20299 thiss!10022) e!933363)))

(assert (=> start!136654 (and (inv!20299 other!32) e!933359)))

(declare-fun b!1463099 () Bool)

(declare-fun e!933361 () Bool)

(assert (=> b!1463099 (= e!933365 e!933361)))

(declare-fun res!662185 () Bool)

(assert (=> b!1463099 (=> res!662185 e!933361)))

(declare-fun lt!507005 () BalanceConc!10294)

(declare-fun tokensListTwoByTwoPredicateSeparable!138 (LexerInterface!2331 BalanceConc!10294 Int List!15255) Bool)

(assert (=> b!1463099 (= res!662185 (not (tokensListTwoByTwoPredicateSeparable!138 Lexer!2329 lt!507005 0 (rules!11706 thiss!10022))))))

(declare-fun ++!4091 (BalanceConc!10294 BalanceConc!10294) BalanceConc!10294)

(assert (=> b!1463099 (= lt!507005 (++!4091 (tokens!2112 thiss!10022) (tokens!2112 other!32)))))

(assert (=> b!1463099 e!933360))

(declare-fun res!662184 () Bool)

(assert (=> b!1463099 (=> (not res!662184) (not e!933360))))

(declare-fun rulesProduceEachTokenIndividuallyList!750 (LexerInterface!2331 List!15255 List!15254) Bool)

(assert (=> b!1463099 (= res!662184 (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) lt!506991))))

(declare-fun ++!4092 (List!15254 List!15254) List!15254)

(assert (=> b!1463099 (= lt!506991 (++!4092 lt!507007 lt!506994))))

(declare-fun lt!506993 () Unit!24509)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!56 (LexerInterface!2331 List!15255 List!15254 List!15254) Unit!24509)

(assert (=> b!1463099 (= lt!506993 (lemmaRulesProduceEachTokenIndividuallyConcat!56 Lexer!2329 (rules!11706 thiss!10022) lt!507007 lt!506994))))

(declare-fun lt!507006 () Unit!24509)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!56 (LexerInterface!2331 List!15254 List!15254 List!15255) Unit!24509)

(assert (=> b!1463099 (= lt!507006 (tokensListTwoByTwoPredicateConcatSeparableTokensList!56 Lexer!2329 lt!507007 lt!506994 (rules!11706 thiss!10022)))))

(declare-fun e!933362 () Bool)

(declare-fun tp!411788 () Bool)

(declare-fun b!1463100 () Bool)

(assert (=> b!1463100 (= e!933363 (and tp!411788 (inv!20298 (tokens!2112 thiss!10022)) e!933362))))

(declare-fun b!1463101 () Bool)

(declare-fun lt!506997 () PrintableTokens!1132)

(assert (=> b!1463101 (= e!933361 (inv!20299 lt!506997))))

(declare-fun print!1106 (PrintableTokens!1132) BalanceConc!10292)

(declare-fun print!1107 (LexerInterface!2331 BalanceConc!10294) BalanceConc!10292)

(assert (=> b!1463101 (= (print!1106 lt!506997) (print!1107 Lexer!2329 lt!507005))))

(declare-fun lt!507001 () Unit!24509)

(declare-fun theoremInvertabilityWhenTokenListSeparable!79 (LexerInterface!2331 List!15255 List!15254) Unit!24509)

(assert (=> b!1463101 (= lt!507001 (theoremInvertabilityWhenTokenListSeparable!79 Lexer!2329 (rules!11706 thiss!10022) (list!6083 lt!507005)))))

(assert (=> b!1463101 (= lt!506997 (PrintableTokens!1133 (rules!11706 thiss!10022) lt!507005))))

(assert (=> b!1463101 (= (print!1106 other!32) (print!1107 Lexer!2329 (tokens!2112 other!32)))))

(declare-fun lt!506992 () Unit!24509)

(assert (=> b!1463101 (= lt!506992 (theoremInvertabilityWhenTokenListSeparable!79 Lexer!2329 (rules!11706 other!32) lt!506994))))

(assert (=> b!1463101 (= (print!1106 thiss!10022) (print!1107 Lexer!2329 (tokens!2112 thiss!10022)))))

(declare-fun lt!507000 () Unit!24509)

(assert (=> b!1463101 (= lt!507000 (theoremInvertabilityWhenTokenListSeparable!79 Lexer!2329 (rules!11706 thiss!10022) lt!507007))))

(declare-fun printList!727 (LexerInterface!2331 List!15254) List!15252)

(declare-fun ++!4093 (List!15252 List!15252) List!15252)

(assert (=> b!1463101 (= (printList!727 Lexer!2329 lt!506991) (++!4093 (printList!727 Lexer!2329 lt!507007) (printList!727 Lexer!2329 lt!506994)))))

(declare-fun lt!506999 () Unit!24509)

(declare-fun lemmaPrintConcatSameAsConcatPrint!78 (LexerInterface!2331 List!15254 List!15254) Unit!24509)

(assert (=> b!1463101 (= lt!506999 (lemmaPrintConcatSameAsConcatPrint!78 Lexer!2329 lt!507007 lt!506994))))

(declare-fun b!1463102 () Bool)

(declare-fun tp!411790 () Bool)

(declare-fun inv!20300 (Conc!5177) Bool)

(assert (=> b!1463102 (= e!933366 (and (inv!20300 (c!241182 (tokens!2112 other!32))) tp!411790))))

(declare-fun b!1463103 () Bool)

(declare-fun res!662182 () Bool)

(assert (=> b!1463103 (=> (not res!662182) (not e!933358))))

(assert (=> b!1463103 (= res!662182 (not (isEmpty!9535 (tokens!2112 thiss!10022))))))

(declare-fun b!1463104 () Bool)

(declare-fun tp!411789 () Bool)

(assert (=> b!1463104 (= e!933362 (and (inv!20300 (c!241182 (tokens!2112 thiss!10022))) tp!411789))))

(assert (= (and start!136654 res!662187) b!1463097))

(assert (= (and b!1463097 res!662186) b!1463103))

(assert (= (and b!1463103 res!662182) b!1463098))

(assert (= (and b!1463098 (not res!662183)) b!1463099))

(assert (= (and b!1463099 res!662184) b!1463095))

(assert (= (and b!1463099 (not res!662185)) b!1463101))

(assert (= b!1463100 b!1463104))

(assert (= start!136654 b!1463100))

(assert (= b!1463096 b!1463102))

(assert (= start!136654 b!1463096))

(declare-fun m!1701629 () Bool)

(assert (=> b!1463099 m!1701629))

(declare-fun m!1701631 () Bool)

(assert (=> b!1463099 m!1701631))

(declare-fun m!1701633 () Bool)

(assert (=> b!1463099 m!1701633))

(declare-fun m!1701635 () Bool)

(assert (=> b!1463099 m!1701635))

(declare-fun m!1701637 () Bool)

(assert (=> b!1463099 m!1701637))

(declare-fun m!1701639 () Bool)

(assert (=> b!1463099 m!1701639))

(declare-fun m!1701641 () Bool)

(assert (=> b!1463101 m!1701641))

(declare-fun m!1701643 () Bool)

(assert (=> b!1463101 m!1701643))

(declare-fun m!1701645 () Bool)

(assert (=> b!1463101 m!1701645))

(declare-fun m!1701647 () Bool)

(assert (=> b!1463101 m!1701647))

(assert (=> b!1463101 m!1701641))

(declare-fun m!1701649 () Bool)

(assert (=> b!1463101 m!1701649))

(declare-fun m!1701651 () Bool)

(assert (=> b!1463101 m!1701651))

(declare-fun m!1701653 () Bool)

(assert (=> b!1463101 m!1701653))

(declare-fun m!1701655 () Bool)

(assert (=> b!1463101 m!1701655))

(declare-fun m!1701657 () Bool)

(assert (=> b!1463101 m!1701657))

(declare-fun m!1701659 () Bool)

(assert (=> b!1463101 m!1701659))

(declare-fun m!1701661 () Bool)

(assert (=> b!1463101 m!1701661))

(declare-fun m!1701663 () Bool)

(assert (=> b!1463101 m!1701663))

(assert (=> b!1463101 m!1701659))

(declare-fun m!1701665 () Bool)

(assert (=> b!1463101 m!1701665))

(declare-fun m!1701667 () Bool)

(assert (=> b!1463101 m!1701667))

(assert (=> b!1463101 m!1701665))

(declare-fun m!1701669 () Bool)

(assert (=> b!1463101 m!1701669))

(declare-fun m!1701671 () Bool)

(assert (=> b!1463101 m!1701671))

(declare-fun m!1701673 () Bool)

(assert (=> b!1463098 m!1701673))

(declare-fun m!1701675 () Bool)

(assert (=> b!1463098 m!1701675))

(declare-fun m!1701677 () Bool)

(assert (=> b!1463098 m!1701677))

(declare-fun m!1701679 () Bool)

(assert (=> b!1463098 m!1701679))

(declare-fun m!1701681 () Bool)

(assert (=> b!1463098 m!1701681))

(declare-fun m!1701683 () Bool)

(assert (=> b!1463098 m!1701683))

(declare-fun m!1701685 () Bool)

(assert (=> b!1463098 m!1701685))

(declare-fun m!1701687 () Bool)

(assert (=> b!1463098 m!1701687))

(declare-fun m!1701689 () Bool)

(assert (=> b!1463098 m!1701689))

(declare-fun m!1701691 () Bool)

(assert (=> start!136654 m!1701691))

(declare-fun m!1701693 () Bool)

(assert (=> start!136654 m!1701693))

(declare-fun m!1701695 () Bool)

(assert (=> b!1463103 m!1701695))

(declare-fun m!1701697 () Bool)

(assert (=> b!1463096 m!1701697))

(declare-fun m!1701699 () Bool)

(assert (=> b!1463097 m!1701699))

(declare-fun m!1701701 () Bool)

(assert (=> b!1463097 m!1701701))

(declare-fun m!1701703 () Bool)

(assert (=> b!1463097 m!1701703))

(declare-fun m!1701705 () Bool)

(assert (=> b!1463102 m!1701705))

(declare-fun m!1701707 () Bool)

(assert (=> b!1463104 m!1701707))

(declare-fun m!1701709 () Bool)

(assert (=> b!1463100 m!1701709))

(declare-fun m!1701711 () Bool)

(assert (=> b!1463095 m!1701711))

(check-sat (not b!1463099) (not b!1463100) (not b!1463097) (not b!1463095) (not b!1463103) (not b!1463104) (not b!1463096) (not start!136654) (not b!1463101) (not b!1463098) (not b!1463102))
(check-sat)
(get-model)

(declare-fun d!428805 () Bool)

(declare-fun res!662213 () Bool)

(declare-fun e!933382 () Bool)

(assert (=> d!428805 (=> (not res!662213) (not e!933382))))

(declare-fun isEmpty!9541 (List!15255) Bool)

(assert (=> d!428805 (= res!662213 (not (isEmpty!9541 (rules!11706 thiss!10022))))))

(assert (=> d!428805 (= (inv!20299 thiss!10022) e!933382)))

(declare-fun b!1463140 () Bool)

(declare-fun res!662214 () Bool)

(assert (=> b!1463140 (=> (not res!662214) (not e!933382))))

(declare-fun rulesInvariant!2164 (LexerInterface!2331 List!15255) Bool)

(assert (=> b!1463140 (= res!662214 (rulesInvariant!2164 Lexer!2329 (rules!11706 thiss!10022)))))

(declare-fun b!1463141 () Bool)

(declare-fun res!662215 () Bool)

(assert (=> b!1463141 (=> (not res!662215) (not e!933382))))

(declare-fun rulesProduceEachTokenIndividually!881 (LexerInterface!2331 List!15255 BalanceConc!10294) Bool)

(assert (=> b!1463141 (= res!662215 (rulesProduceEachTokenIndividually!881 Lexer!2329 (rules!11706 thiss!10022) (tokens!2112 thiss!10022)))))

(declare-fun b!1463142 () Bool)

(declare-fun separableTokens!265 (LexerInterface!2331 BalanceConc!10294 List!15255) Bool)

(assert (=> b!1463142 (= e!933382 (separableTokens!265 Lexer!2329 (tokens!2112 thiss!10022) (rules!11706 thiss!10022)))))

(assert (= (and d!428805 res!662213) b!1463140))

(assert (= (and b!1463140 res!662214) b!1463141))

(assert (= (and b!1463141 res!662215) b!1463142))

(declare-fun m!1701757 () Bool)

(assert (=> d!428805 m!1701757))

(declare-fun m!1701759 () Bool)

(assert (=> b!1463140 m!1701759))

(declare-fun m!1701761 () Bool)

(assert (=> b!1463141 m!1701761))

(declare-fun m!1701763 () Bool)

(assert (=> b!1463142 m!1701763))

(assert (=> start!136654 d!428805))

(declare-fun d!428815 () Bool)

(declare-fun res!662216 () Bool)

(declare-fun e!933383 () Bool)

(assert (=> d!428815 (=> (not res!662216) (not e!933383))))

(assert (=> d!428815 (= res!662216 (not (isEmpty!9541 (rules!11706 other!32))))))

(assert (=> d!428815 (= (inv!20299 other!32) e!933383)))

(declare-fun b!1463143 () Bool)

(declare-fun res!662217 () Bool)

(assert (=> b!1463143 (=> (not res!662217) (not e!933383))))

(assert (=> b!1463143 (= res!662217 (rulesInvariant!2164 Lexer!2329 (rules!11706 other!32)))))

(declare-fun b!1463144 () Bool)

(declare-fun res!662218 () Bool)

(assert (=> b!1463144 (=> (not res!662218) (not e!933383))))

(assert (=> b!1463144 (= res!662218 (rulesProduceEachTokenIndividually!881 Lexer!2329 (rules!11706 other!32) (tokens!2112 other!32)))))

(declare-fun b!1463145 () Bool)

(assert (=> b!1463145 (= e!933383 (separableTokens!265 Lexer!2329 (tokens!2112 other!32) (rules!11706 other!32)))))

(assert (= (and d!428815 res!662216) b!1463143))

(assert (= (and b!1463143 res!662217) b!1463144))

(assert (= (and b!1463144 res!662218) b!1463145))

(declare-fun m!1701765 () Bool)

(assert (=> d!428815 m!1701765))

(declare-fun m!1701767 () Bool)

(assert (=> b!1463143 m!1701767))

(declare-fun m!1701769 () Bool)

(assert (=> b!1463144 m!1701769))

(declare-fun m!1701771 () Bool)

(assert (=> b!1463145 m!1701771))

(assert (=> start!136654 d!428815))

(declare-fun d!428817 () Bool)

(declare-fun c!241192 () Bool)

(get-info :version)

(assert (=> d!428817 (= c!241192 ((_ is Node!5177) (c!241182 (tokens!2112 thiss!10022))))))

(declare-fun e!933388 () Bool)

(assert (=> d!428817 (= (inv!20300 (c!241182 (tokens!2112 thiss!10022))) e!933388)))

(declare-fun b!1463152 () Bool)

(declare-fun inv!20301 (Conc!5177) Bool)

(assert (=> b!1463152 (= e!933388 (inv!20301 (c!241182 (tokens!2112 thiss!10022))))))

(declare-fun b!1463153 () Bool)

(declare-fun e!933389 () Bool)

(assert (=> b!1463153 (= e!933388 e!933389)))

(declare-fun res!662221 () Bool)

(assert (=> b!1463153 (= res!662221 (not ((_ is Leaf!7716) (c!241182 (tokens!2112 thiss!10022)))))))

(assert (=> b!1463153 (=> res!662221 e!933389)))

(declare-fun b!1463154 () Bool)

(declare-fun inv!20302 (Conc!5177) Bool)

(assert (=> b!1463154 (= e!933389 (inv!20302 (c!241182 (tokens!2112 thiss!10022))))))

(assert (= (and d!428817 c!241192) b!1463152))

(assert (= (and d!428817 (not c!241192)) b!1463153))

(assert (= (and b!1463153 (not res!662221)) b!1463154))

(declare-fun m!1701773 () Bool)

(assert (=> b!1463152 m!1701773))

(declare-fun m!1701775 () Bool)

(assert (=> b!1463154 m!1701775))

(assert (=> b!1463104 d!428817))

(declare-fun b!1463180 () Bool)

(declare-fun res!662248 () Bool)

(declare-fun e!933406 () Bool)

(assert (=> b!1463180 (=> (not res!662248) (not e!933406))))

(assert (=> b!1463180 (= res!662248 (not (isEmpty!9541 (rules!11706 thiss!10022))))))

(declare-fun d!428819 () Bool)

(declare-fun lt!507171 () Bool)

(declare-fun dropList!483 (BalanceConc!10294 Int) List!15254)

(assert (=> d!428819 (= lt!507171 (tokensListTwoByTwoPredicateSeparableList!249 Lexer!2329 (dropList!483 lt!507005 0) (rules!11706 thiss!10022)))))

(declare-fun lt!507162 () Unit!24509)

(declare-fun lt!507183 () Unit!24509)

(assert (=> d!428819 (= lt!507162 lt!507183)))

(declare-fun lt!507186 () List!15254)

(assert (=> d!428819 (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) lt!507186)))

(declare-fun lt!507165 () List!15254)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!63 (LexerInterface!2331 List!15255 List!15254 List!15254) Unit!24509)

(assert (=> d!428819 (= lt!507183 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!63 Lexer!2329 (rules!11706 thiss!10022) lt!507165 lt!507186))))

(assert (=> d!428819 e!933406))

(declare-fun res!662241 () Bool)

(assert (=> d!428819 (=> (not res!662241) (not e!933406))))

(assert (=> d!428819 (= res!662241 ((_ is Lexer!2329) Lexer!2329))))

(assert (=> d!428819 (= lt!507186 (dropList!483 lt!507005 0))))

(assert (=> d!428819 (= lt!507165 (list!6083 lt!507005))))

(declare-fun lt!507163 () Unit!24509)

(declare-fun lt!507167 () Unit!24509)

(assert (=> d!428819 (= lt!507163 lt!507167)))

(declare-fun lt!507158 () List!15254)

(declare-fun subseq!368 (List!15254 List!15254) Bool)

(declare-fun drop!745 (List!15254 Int) List!15254)

(assert (=> d!428819 (subseq!368 (drop!745 lt!507158 0) lt!507158)))

(declare-fun lemmaDropSubSeq!63 (List!15254 Int) Unit!24509)

(assert (=> d!428819 (= lt!507167 (lemmaDropSubSeq!63 lt!507158 0))))

(declare-fun e!933408 () Bool)

(assert (=> d!428819 e!933408))

(declare-fun res!662246 () Bool)

(assert (=> d!428819 (=> (not res!662246) (not e!933408))))

(assert (=> d!428819 (= res!662246 (>= 0 0))))

(assert (=> d!428819 (= lt!507158 (list!6083 lt!507005))))

(declare-fun e!933407 () Bool)

(assert (=> d!428819 (= lt!507171 e!933407)))

(declare-fun res!662242 () Bool)

(assert (=> d!428819 (=> res!662242 e!933407)))

(declare-fun size!12423 (BalanceConc!10294) Int)

(assert (=> d!428819 (= res!662242 (not (< 0 (- (size!12423 lt!507005) 1))))))

(declare-fun e!933409 () Bool)

(assert (=> d!428819 e!933409))

(declare-fun res!662247 () Bool)

(assert (=> d!428819 (=> (not res!662247) (not e!933409))))

(assert (=> d!428819 (= res!662247 (>= 0 0))))

(assert (=> d!428819 (= (tokensListTwoByTwoPredicateSeparable!138 Lexer!2329 lt!507005 0 (rules!11706 thiss!10022)) lt!507171)))

(declare-fun b!1463181 () Bool)

(declare-fun res!662243 () Bool)

(assert (=> b!1463181 (=> (not res!662243) (not e!933406))))

(assert (=> b!1463181 (= res!662243 (rulesInvariant!2164 Lexer!2329 (rules!11706 thiss!10022)))))

(declare-fun b!1463182 () Bool)

(assert (=> b!1463182 (= e!933409 (<= 0 (size!12423 lt!507005)))))

(declare-fun b!1463183 () Bool)

(declare-fun size!12424 (List!15254) Int)

(assert (=> b!1463183 (= e!933408 (<= 0 (size!12424 lt!507158)))))

(declare-fun b!1463184 () Bool)

(declare-fun e!933410 () Bool)

(assert (=> b!1463184 (= e!933407 e!933410)))

(declare-fun res!662244 () Bool)

(assert (=> b!1463184 (=> (not res!662244) (not e!933410))))

(declare-fun apply!3965 (BalanceConc!10294 Int) Token!5012)

(assert (=> b!1463184 (= res!662244 (separableTokensPredicate!540 Lexer!2329 (apply!3965 lt!507005 0) (apply!3965 lt!507005 (+ 0 1)) (rules!11706 thiss!10022)))))

(declare-fun lt!507189 () Unit!24509)

(declare-fun Unit!24555 () Unit!24509)

(assert (=> b!1463184 (= lt!507189 Unit!24555)))

(declare-fun size!12425 (BalanceConc!10292) Int)

(declare-fun charsOf!1538 (Token!5012) BalanceConc!10292)

(assert (=> b!1463184 (> (size!12425 (charsOf!1538 (apply!3965 lt!507005 (+ 0 1)))) 0)))

(declare-fun lt!507175 () Unit!24509)

(declare-fun Unit!24556 () Unit!24509)

(assert (=> b!1463184 (= lt!507175 Unit!24556)))

(assert (=> b!1463184 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (apply!3965 lt!507005 (+ 0 1)))))

(declare-fun lt!507172 () Unit!24509)

(declare-fun Unit!24557 () Unit!24509)

(assert (=> b!1463184 (= lt!507172 Unit!24557)))

(assert (=> b!1463184 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (apply!3965 lt!507005 0))))

(declare-fun lt!507179 () Unit!24509)

(declare-fun lt!507174 () Unit!24509)

(assert (=> b!1463184 (= lt!507179 lt!507174)))

(declare-fun lt!507182 () Token!5012)

(assert (=> b!1463184 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) lt!507182)))

(declare-fun lt!507160 () List!15254)

(assert (=> b!1463184 (= lt!507174 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!433 Lexer!2329 (rules!11706 thiss!10022) lt!507160 lt!507182))))

(assert (=> b!1463184 (= lt!507182 (apply!3965 lt!507005 (+ 0 1)))))

(assert (=> b!1463184 (= lt!507160 (list!6083 lt!507005))))

(declare-fun lt!507178 () Unit!24509)

(declare-fun lt!507169 () Unit!24509)

(assert (=> b!1463184 (= lt!507178 lt!507169)))

(declare-fun lt!507173 () Token!5012)

(assert (=> b!1463184 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) lt!507173)))

(declare-fun lt!507190 () List!15254)

(assert (=> b!1463184 (= lt!507169 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!433 Lexer!2329 (rules!11706 thiss!10022) lt!507190 lt!507173))))

(assert (=> b!1463184 (= lt!507173 (apply!3965 lt!507005 0))))

(assert (=> b!1463184 (= lt!507190 (list!6083 lt!507005))))

(declare-fun lt!507176 () Unit!24509)

(declare-fun lt!507166 () Unit!24509)

(assert (=> b!1463184 (= lt!507176 lt!507166)))

(declare-fun lt!507168 () List!15254)

(declare-fun lt!507187 () Int)

(declare-fun tail!2177 (List!15254) List!15254)

(assert (=> b!1463184 (= (tail!2177 (drop!745 lt!507168 lt!507187)) (drop!745 lt!507168 (+ lt!507187 1)))))

(declare-fun lemmaDropTail!475 (List!15254 Int) Unit!24509)

(assert (=> b!1463184 (= lt!507166 (lemmaDropTail!475 lt!507168 lt!507187))))

(assert (=> b!1463184 (= lt!507187 (+ 0 1))))

(assert (=> b!1463184 (= lt!507168 (list!6083 lt!507005))))

(declare-fun lt!507161 () Unit!24509)

(declare-fun lt!507185 () Unit!24509)

(assert (=> b!1463184 (= lt!507161 lt!507185)))

(declare-fun lt!507181 () List!15254)

(assert (=> b!1463184 (= (tail!2177 (drop!745 lt!507181 0)) (drop!745 lt!507181 (+ 0 1)))))

(assert (=> b!1463184 (= lt!507185 (lemmaDropTail!475 lt!507181 0))))

(assert (=> b!1463184 (= lt!507181 (list!6083 lt!507005))))

(declare-fun lt!507180 () Unit!24509)

(declare-fun lt!507159 () Unit!24509)

(assert (=> b!1463184 (= lt!507180 lt!507159)))

(declare-fun lt!507188 () List!15254)

(declare-fun lt!507177 () Int)

(declare-fun head!3020 (List!15254) Token!5012)

(declare-fun apply!3966 (List!15254 Int) Token!5012)

(assert (=> b!1463184 (= (head!3020 (drop!745 lt!507188 lt!507177)) (apply!3966 lt!507188 lt!507177))))

(declare-fun lemmaDropApply!495 (List!15254 Int) Unit!24509)

(assert (=> b!1463184 (= lt!507159 (lemmaDropApply!495 lt!507188 lt!507177))))

(assert (=> b!1463184 (= lt!507177 (+ 0 1))))

(assert (=> b!1463184 (= lt!507188 (list!6083 lt!507005))))

(declare-fun lt!507164 () Unit!24509)

(declare-fun lt!507170 () Unit!24509)

(assert (=> b!1463184 (= lt!507164 lt!507170)))

(declare-fun lt!507184 () List!15254)

(assert (=> b!1463184 (= (head!3020 (drop!745 lt!507184 0)) (apply!3966 lt!507184 0))))

(assert (=> b!1463184 (= lt!507170 (lemmaDropApply!495 lt!507184 0))))

(assert (=> b!1463184 (= lt!507184 (list!6083 lt!507005))))

(declare-fun b!1463185 () Bool)

(declare-fun res!662245 () Bool)

(assert (=> b!1463185 (=> (not res!662245) (not e!933406))))

(assert (=> b!1463185 (= res!662245 (subseq!368 lt!507186 lt!507165))))

(declare-fun b!1463186 () Bool)

(assert (=> b!1463186 (= e!933410 (tokensListTwoByTwoPredicateSeparable!138 Lexer!2329 lt!507005 (+ 0 1) (rules!11706 thiss!10022)))))

(declare-fun b!1463187 () Bool)

(assert (=> b!1463187 (= e!933406 (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) lt!507165))))

(assert (= (and d!428819 res!662247) b!1463182))

(assert (= (and d!428819 (not res!662242)) b!1463184))

(assert (= (and b!1463184 res!662244) b!1463186))

(assert (= (and d!428819 res!662246) b!1463183))

(assert (= (and d!428819 res!662241) b!1463180))

(assert (= (and b!1463180 res!662248) b!1463181))

(assert (= (and b!1463181 res!662243) b!1463185))

(assert (= (and b!1463185 res!662245) b!1463187))

(declare-fun m!1701861 () Bool)

(assert (=> b!1463182 m!1701861))

(declare-fun m!1701863 () Bool)

(assert (=> b!1463184 m!1701863))

(declare-fun m!1701865 () Bool)

(assert (=> b!1463184 m!1701865))

(declare-fun m!1701867 () Bool)

(assert (=> b!1463184 m!1701867))

(declare-fun m!1701869 () Bool)

(assert (=> b!1463184 m!1701869))

(declare-fun m!1701871 () Bool)

(assert (=> b!1463184 m!1701871))

(declare-fun m!1701873 () Bool)

(assert (=> b!1463184 m!1701873))

(declare-fun m!1701875 () Bool)

(assert (=> b!1463184 m!1701875))

(assert (=> b!1463184 m!1701871))

(declare-fun m!1701877 () Bool)

(assert (=> b!1463184 m!1701877))

(declare-fun m!1701879 () Bool)

(assert (=> b!1463184 m!1701879))

(assert (=> b!1463184 m!1701641))

(declare-fun m!1701881 () Bool)

(assert (=> b!1463184 m!1701881))

(declare-fun m!1701883 () Bool)

(assert (=> b!1463184 m!1701883))

(declare-fun m!1701885 () Bool)

(assert (=> b!1463184 m!1701885))

(declare-fun m!1701887 () Bool)

(assert (=> b!1463184 m!1701887))

(declare-fun m!1701889 () Bool)

(assert (=> b!1463184 m!1701889))

(assert (=> b!1463184 m!1701865))

(declare-fun m!1701891 () Bool)

(assert (=> b!1463184 m!1701891))

(declare-fun m!1701893 () Bool)

(assert (=> b!1463184 m!1701893))

(declare-fun m!1701895 () Bool)

(assert (=> b!1463184 m!1701895))

(assert (=> b!1463184 m!1701883))

(declare-fun m!1701897 () Bool)

(assert (=> b!1463184 m!1701897))

(declare-fun m!1701899 () Bool)

(assert (=> b!1463184 m!1701899))

(declare-fun m!1701901 () Bool)

(assert (=> b!1463184 m!1701901))

(declare-fun m!1701903 () Bool)

(assert (=> b!1463184 m!1701903))

(assert (=> b!1463184 m!1701897))

(assert (=> b!1463184 m!1701871))

(declare-fun m!1701905 () Bool)

(assert (=> b!1463184 m!1701905))

(declare-fun m!1701907 () Bool)

(assert (=> b!1463184 m!1701907))

(declare-fun m!1701909 () Bool)

(assert (=> b!1463184 m!1701909))

(assert (=> b!1463184 m!1701877))

(assert (=> b!1463184 m!1701897))

(assert (=> b!1463184 m!1701893))

(assert (=> b!1463184 m!1701871))

(declare-fun m!1701911 () Bool)

(assert (=> b!1463184 m!1701911))

(declare-fun m!1701913 () Bool)

(assert (=> b!1463184 m!1701913))

(assert (=> b!1463184 m!1701911))

(declare-fun m!1701915 () Bool)

(assert (=> b!1463184 m!1701915))

(assert (=> d!428819 m!1701861))

(declare-fun m!1701917 () Bool)

(assert (=> d!428819 m!1701917))

(assert (=> d!428819 m!1701641))

(declare-fun m!1701919 () Bool)

(assert (=> d!428819 m!1701919))

(declare-fun m!1701921 () Bool)

(assert (=> d!428819 m!1701921))

(declare-fun m!1701923 () Bool)

(assert (=> d!428819 m!1701923))

(declare-fun m!1701925 () Bool)

(assert (=> d!428819 m!1701925))

(assert (=> d!428819 m!1701923))

(declare-fun m!1701927 () Bool)

(assert (=> d!428819 m!1701927))

(assert (=> d!428819 m!1701919))

(declare-fun m!1701929 () Bool)

(assert (=> d!428819 m!1701929))

(assert (=> b!1463181 m!1701759))

(declare-fun m!1701931 () Bool)

(assert (=> b!1463187 m!1701931))

(declare-fun m!1701933 () Bool)

(assert (=> b!1463186 m!1701933))

(assert (=> b!1463180 m!1701757))

(declare-fun m!1701935 () Bool)

(assert (=> b!1463185 m!1701935))

(declare-fun m!1701937 () Bool)

(assert (=> b!1463183 m!1701937))

(assert (=> b!1463099 d!428819))

(declare-fun d!428823 () Bool)

(assert (=> d!428823 (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) (++!4092 lt!507007 lt!506994))))

(declare-fun lt!507263 () Unit!24509)

(declare-fun choose!8998 (LexerInterface!2331 List!15255 List!15254 List!15254) Unit!24509)

(assert (=> d!428823 (= lt!507263 (choose!8998 Lexer!2329 (rules!11706 thiss!10022) lt!507007 lt!506994))))

(assert (=> d!428823 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!428823 (= (lemmaRulesProduceEachTokenIndividuallyConcat!56 Lexer!2329 (rules!11706 thiss!10022) lt!507007 lt!506994) lt!507263)))

(declare-fun bs!344452 () Bool)

(assert (= bs!344452 d!428823))

(assert (=> bs!344452 m!1701629))

(assert (=> bs!344452 m!1701629))

(declare-fun m!1702161 () Bool)

(assert (=> bs!344452 m!1702161))

(declare-fun m!1702163 () Bool)

(assert (=> bs!344452 m!1702163))

(assert (=> bs!344452 m!1701757))

(assert (=> b!1463099 d!428823))

(declare-fun d!428845 () Bool)

(declare-fun e!933423 () Bool)

(assert (=> d!428845 e!933423))

(declare-fun res!662265 () Bool)

(assert (=> d!428845 (=> (not res!662265) (not e!933423))))

(declare-fun appendAssocInst!337 (Conc!5177 Conc!5177) Bool)

(assert (=> d!428845 (= res!662265 (appendAssocInst!337 (c!241182 (tokens!2112 thiss!10022)) (c!241182 (tokens!2112 other!32))))))

(declare-fun lt!507266 () BalanceConc!10294)

(declare-fun ++!4095 (Conc!5177 Conc!5177) Conc!5177)

(assert (=> d!428845 (= lt!507266 (BalanceConc!10295 (++!4095 (c!241182 (tokens!2112 thiss!10022)) (c!241182 (tokens!2112 other!32)))))))

(assert (=> d!428845 (= (++!4091 (tokens!2112 thiss!10022) (tokens!2112 other!32)) lt!507266)))

(declare-fun b!1463212 () Bool)

(assert (=> b!1463212 (= e!933423 (= (list!6083 lt!507266) (++!4092 (list!6083 (tokens!2112 thiss!10022)) (list!6083 (tokens!2112 other!32)))))))

(declare-fun b!1463210 () Bool)

(declare-fun res!662266 () Bool)

(assert (=> b!1463210 (=> (not res!662266) (not e!933423))))

(declare-fun height!778 (Conc!5177) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1463210 (= res!662266 (<= (height!778 (++!4095 (c!241182 (tokens!2112 thiss!10022)) (c!241182 (tokens!2112 other!32)))) (+ (max!0 (height!778 (c!241182 (tokens!2112 thiss!10022))) (height!778 (c!241182 (tokens!2112 other!32)))) 1)))))

(declare-fun b!1463209 () Bool)

(declare-fun res!662264 () Bool)

(assert (=> b!1463209 (=> (not res!662264) (not e!933423))))

(declare-fun isBalanced!1555 (Conc!5177) Bool)

(assert (=> b!1463209 (= res!662264 (isBalanced!1555 (++!4095 (c!241182 (tokens!2112 thiss!10022)) (c!241182 (tokens!2112 other!32)))))))

(declare-fun b!1463211 () Bool)

(declare-fun res!662267 () Bool)

(assert (=> b!1463211 (=> (not res!662267) (not e!933423))))

(assert (=> b!1463211 (= res!662267 (>= (height!778 (++!4095 (c!241182 (tokens!2112 thiss!10022)) (c!241182 (tokens!2112 other!32)))) (max!0 (height!778 (c!241182 (tokens!2112 thiss!10022))) (height!778 (c!241182 (tokens!2112 other!32))))))))

(assert (= (and d!428845 res!662265) b!1463209))

(assert (= (and b!1463209 res!662264) b!1463210))

(assert (= (and b!1463210 res!662266) b!1463211))

(assert (= (and b!1463211 res!662267) b!1463212))

(declare-fun m!1702165 () Bool)

(assert (=> b!1463212 m!1702165))

(assert (=> b!1463212 m!1701677))

(assert (=> b!1463212 m!1701681))

(assert (=> b!1463212 m!1701677))

(assert (=> b!1463212 m!1701681))

(declare-fun m!1702167 () Bool)

(assert (=> b!1463212 m!1702167))

(declare-fun m!1702169 () Bool)

(assert (=> b!1463210 m!1702169))

(declare-fun m!1702171 () Bool)

(assert (=> b!1463210 m!1702171))

(declare-fun m!1702173 () Bool)

(assert (=> b!1463210 m!1702173))

(assert (=> b!1463210 m!1702171))

(declare-fun m!1702175 () Bool)

(assert (=> b!1463210 m!1702175))

(declare-fun m!1702177 () Bool)

(assert (=> b!1463210 m!1702177))

(assert (=> b!1463210 m!1702169))

(assert (=> b!1463210 m!1702175))

(assert (=> b!1463209 m!1702175))

(assert (=> b!1463209 m!1702175))

(declare-fun m!1702179 () Bool)

(assert (=> b!1463209 m!1702179))

(assert (=> b!1463211 m!1702169))

(assert (=> b!1463211 m!1702171))

(assert (=> b!1463211 m!1702173))

(assert (=> b!1463211 m!1702171))

(assert (=> b!1463211 m!1702175))

(assert (=> b!1463211 m!1702177))

(assert (=> b!1463211 m!1702169))

(assert (=> b!1463211 m!1702175))

(declare-fun m!1702181 () Bool)

(assert (=> d!428845 m!1702181))

(assert (=> d!428845 m!1702175))

(assert (=> b!1463099 d!428845))

(declare-fun d!428847 () Bool)

(declare-fun e!933428 () Bool)

(assert (=> d!428847 e!933428))

(declare-fun res!662272 () Bool)

(assert (=> d!428847 (=> (not res!662272) (not e!933428))))

(declare-fun lt!507269 () List!15254)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2245 (List!15254) (InoxSet Token!5012))

(assert (=> d!428847 (= res!662272 (= (content!2245 lt!507269) ((_ map or) (content!2245 lt!507007) (content!2245 lt!506994))))))

(declare-fun e!933429 () List!15254)

(assert (=> d!428847 (= lt!507269 e!933429)))

(declare-fun c!241204 () Bool)

(assert (=> d!428847 (= c!241204 ((_ is Nil!15188) lt!507007))))

(assert (=> d!428847 (= (++!4092 lt!507007 lt!506994) lt!507269)))

(declare-fun b!1463223 () Bool)

(declare-fun res!662273 () Bool)

(assert (=> b!1463223 (=> (not res!662273) (not e!933428))))

(assert (=> b!1463223 (= res!662273 (= (size!12424 lt!507269) (+ (size!12424 lt!507007) (size!12424 lt!506994))))))

(declare-fun b!1463224 () Bool)

(assert (=> b!1463224 (= e!933428 (or (not (= lt!506994 Nil!15188)) (= lt!507269 lt!507007)))))

(declare-fun b!1463221 () Bool)

(assert (=> b!1463221 (= e!933429 lt!506994)))

(declare-fun b!1463222 () Bool)

(assert (=> b!1463222 (= e!933429 (Cons!15188 (h!20589 lt!507007) (++!4092 (t!134647 lt!507007) lt!506994)))))

(assert (= (and d!428847 c!241204) b!1463221))

(assert (= (and d!428847 (not c!241204)) b!1463222))

(assert (= (and d!428847 res!662272) b!1463223))

(assert (= (and b!1463223 res!662273) b!1463224))

(declare-fun m!1702183 () Bool)

(assert (=> d!428847 m!1702183))

(declare-fun m!1702185 () Bool)

(assert (=> d!428847 m!1702185))

(declare-fun m!1702187 () Bool)

(assert (=> d!428847 m!1702187))

(declare-fun m!1702189 () Bool)

(assert (=> b!1463223 m!1702189))

(declare-fun m!1702191 () Bool)

(assert (=> b!1463223 m!1702191))

(declare-fun m!1702193 () Bool)

(assert (=> b!1463223 m!1702193))

(declare-fun m!1702195 () Bool)

(assert (=> b!1463222 m!1702195))

(assert (=> b!1463099 d!428847))

(declare-fun b!1463271 () Bool)

(declare-fun e!933457 () Bool)

(assert (=> b!1463271 (= e!933457 true)))

(declare-fun b!1463270 () Bool)

(declare-fun e!933456 () Bool)

(assert (=> b!1463270 (= e!933456 e!933457)))

(declare-fun b!1463269 () Bool)

(declare-fun e!933455 () Bool)

(assert (=> b!1463269 (= e!933455 e!933456)))

(declare-fun d!428849 () Bool)

(assert (=> d!428849 e!933455))

(assert (= b!1463270 b!1463271))

(assert (= b!1463269 b!1463270))

(assert (= (and d!428849 ((_ is Cons!15189) (rules!11706 thiss!10022))) b!1463269))

(declare-fun order!9151 () Int)

(declare-fun order!9153 () Int)

(declare-fun lambda!63326 () Int)

(declare-fun dynLambda!6933 (Int Int) Int)

(declare-fun dynLambda!6934 (Int Int) Int)

(assert (=> b!1463271 (< (dynLambda!6933 order!9151 (toValue!3986 (transformation!2675 (h!20590 (rules!11706 thiss!10022))))) (dynLambda!6934 order!9153 lambda!63326))))

(declare-fun order!9155 () Int)

(declare-fun dynLambda!6935 (Int Int) Int)

(assert (=> b!1463271 (< (dynLambda!6935 order!9155 (toChars!3845 (transformation!2675 (h!20590 (rules!11706 thiss!10022))))) (dynLambda!6934 order!9153 lambda!63326))))

(assert (=> d!428849 true))

(declare-fun lt!507278 () Bool)

(declare-fun forall!3744 (List!15254 Int) Bool)

(assert (=> d!428849 (= lt!507278 (forall!3744 lt!506991 lambda!63326))))

(declare-fun e!933447 () Bool)

(assert (=> d!428849 (= lt!507278 e!933447)))

(declare-fun res!662308 () Bool)

(assert (=> d!428849 (=> res!662308 e!933447)))

(assert (=> d!428849 (= res!662308 (not ((_ is Cons!15188) lt!506991)))))

(assert (=> d!428849 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!428849 (= (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) lt!506991) lt!507278)))

(declare-fun b!1463259 () Bool)

(declare-fun e!933448 () Bool)

(assert (=> b!1463259 (= e!933447 e!933448)))

(declare-fun res!662309 () Bool)

(assert (=> b!1463259 (=> (not res!662309) (not e!933448))))

(assert (=> b!1463259 (= res!662309 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 lt!506991)))))

(declare-fun b!1463260 () Bool)

(assert (=> b!1463260 (= e!933448 (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) (t!134647 lt!506991)))))

(assert (= (and d!428849 (not res!662308)) b!1463259))

(assert (= (and b!1463259 res!662309) b!1463260))

(declare-fun m!1702233 () Bool)

(assert (=> d!428849 m!1702233))

(assert (=> d!428849 m!1701757))

(declare-fun m!1702235 () Bool)

(assert (=> b!1463259 m!1702235))

(declare-fun m!1702237 () Bool)

(assert (=> b!1463260 m!1702237))

(assert (=> b!1463099 d!428849))

(declare-fun d!428865 () Bool)

(declare-fun e!933471 () Bool)

(assert (=> d!428865 e!933471))

(declare-fun res!662321 () Bool)

(assert (=> d!428865 (=> (not res!662321) (not e!933471))))

(assert (=> d!428865 (= res!662321 ((_ is Lexer!2329) Lexer!2329))))

(declare-fun lt!507288 () Unit!24509)

(declare-fun choose!9001 (LexerInterface!2331 List!15254 List!15254 List!15255) Unit!24509)

(assert (=> d!428865 (= lt!507288 (choose!9001 Lexer!2329 lt!507007 lt!506994 (rules!11706 thiss!10022)))))

(assert (=> d!428865 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!428865 (= (tokensListTwoByTwoPredicateConcatSeparableTokensList!56 Lexer!2329 lt!507007 lt!506994 (rules!11706 thiss!10022)) lt!507288)))

(declare-fun b!1463299 () Bool)

(declare-fun res!662323 () Bool)

(assert (=> b!1463299 (=> (not res!662323) (not e!933471))))

(assert (=> b!1463299 (= res!662323 (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) lt!506994))))

(declare-fun b!1463300 () Bool)

(assert (=> b!1463300 (= e!933471 (tokensListTwoByTwoPredicateSeparableList!249 Lexer!2329 (++!4092 lt!507007 lt!506994) (rules!11706 thiss!10022)))))

(declare-fun lt!507287 () Unit!24509)

(declare-fun lt!507286 () Unit!24509)

(assert (=> b!1463300 (= lt!507287 lt!507286)))

(assert (=> b!1463300 (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) (++!4092 lt!507007 lt!506994))))

(assert (=> b!1463300 (= lt!507286 (lemmaRulesProduceEachTokenIndividuallyConcat!56 Lexer!2329 (rules!11706 thiss!10022) lt!507007 lt!506994))))

(declare-fun b!1463297 () Bool)

(declare-fun res!662322 () Bool)

(assert (=> b!1463297 (=> (not res!662322) (not e!933471))))

(assert (=> b!1463297 (= res!662322 (rulesInvariant!2164 Lexer!2329 (rules!11706 thiss!10022)))))

(declare-fun b!1463298 () Bool)

(declare-fun res!662320 () Bool)

(assert (=> b!1463298 (=> (not res!662320) (not e!933471))))

(assert (=> b!1463298 (= res!662320 (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) lt!507007))))

(assert (= (and d!428865 res!662321) b!1463297))

(assert (= (and b!1463297 res!662322) b!1463298))

(assert (= (and b!1463298 res!662320) b!1463299))

(assert (= (and b!1463299 res!662323) b!1463300))

(declare-fun m!1702245 () Bool)

(assert (=> b!1463298 m!1702245))

(assert (=> b!1463297 m!1701759))

(declare-fun m!1702247 () Bool)

(assert (=> b!1463299 m!1702247))

(assert (=> b!1463300 m!1701629))

(assert (=> b!1463300 m!1701629))

(declare-fun m!1702249 () Bool)

(assert (=> b!1463300 m!1702249))

(assert (=> b!1463300 m!1701629))

(assert (=> b!1463300 m!1702161))

(assert (=> b!1463300 m!1701633))

(declare-fun m!1702251 () Bool)

(assert (=> d!428865 m!1702251))

(assert (=> d!428865 m!1701757))

(assert (=> b!1463099 d!428865))

(declare-fun d!428869 () Bool)

(declare-fun lt!507291 () Bool)

(declare-fun isEmpty!9542 (List!15254) Bool)

(assert (=> d!428869 (= lt!507291 (isEmpty!9542 (list!6083 (tokens!2112 other!32))))))

(declare-fun isEmpty!9543 (Conc!5177) Bool)

(assert (=> d!428869 (= lt!507291 (isEmpty!9543 (c!241182 (tokens!2112 other!32))))))

(assert (=> d!428869 (= (isEmpty!9535 (tokens!2112 other!32)) lt!507291)))

(declare-fun bs!344455 () Bool)

(assert (= bs!344455 d!428869))

(assert (=> bs!344455 m!1701681))

(assert (=> bs!344455 m!1701681))

(declare-fun m!1702253 () Bool)

(assert (=> bs!344455 m!1702253))

(declare-fun m!1702255 () Bool)

(assert (=> bs!344455 m!1702255))

(assert (=> b!1463097 d!428869))

(declare-fun d!428871 () Bool)

(declare-fun e!933484 () Bool)

(assert (=> d!428871 e!933484))

(declare-fun res!662344 () Bool)

(assert (=> d!428871 (=> (not res!662344) (not e!933484))))

(assert (=> d!428871 (= res!662344 (rulesInvariant!2164 Lexer!2329 (rules!11706 thiss!10022)))))

(declare-fun Unit!24564 () Unit!24509)

(assert (=> d!428871 (= (lemmaInvariant!371 thiss!10022) Unit!24564)))

(declare-fun b!1463321 () Bool)

(declare-fun res!662345 () Bool)

(assert (=> b!1463321 (=> (not res!662345) (not e!933484))))

(assert (=> b!1463321 (= res!662345 (rulesProduceEachTokenIndividually!881 Lexer!2329 (rules!11706 thiss!10022) (tokens!2112 thiss!10022)))))

(declare-fun b!1463322 () Bool)

(assert (=> b!1463322 (= e!933484 (separableTokens!265 Lexer!2329 (tokens!2112 thiss!10022) (rules!11706 thiss!10022)))))

(assert (= (and d!428871 res!662344) b!1463321))

(assert (= (and b!1463321 res!662345) b!1463322))

(assert (=> d!428871 m!1701759))

(assert (=> b!1463321 m!1701761))

(assert (=> b!1463322 m!1701763))

(assert (=> b!1463097 d!428871))

(declare-fun d!428873 () Bool)

(declare-fun e!933485 () Bool)

(assert (=> d!428873 e!933485))

(declare-fun res!662346 () Bool)

(assert (=> d!428873 (=> (not res!662346) (not e!933485))))

(assert (=> d!428873 (= res!662346 (rulesInvariant!2164 Lexer!2329 (rules!11706 other!32)))))

(declare-fun Unit!24565 () Unit!24509)

(assert (=> d!428873 (= (lemmaInvariant!371 other!32) Unit!24565)))

(declare-fun b!1463323 () Bool)

(declare-fun res!662347 () Bool)

(assert (=> b!1463323 (=> (not res!662347) (not e!933485))))

(assert (=> b!1463323 (= res!662347 (rulesProduceEachTokenIndividually!881 Lexer!2329 (rules!11706 other!32) (tokens!2112 other!32)))))

(declare-fun b!1463324 () Bool)

(assert (=> b!1463324 (= e!933485 (separableTokens!265 Lexer!2329 (tokens!2112 other!32) (rules!11706 other!32)))))

(assert (= (and d!428873 res!662346) b!1463323))

(assert (= (and b!1463323 res!662347) b!1463324))

(assert (=> d!428873 m!1701767))

(assert (=> b!1463323 m!1701769))

(assert (=> b!1463324 m!1701771))

(assert (=> b!1463097 d!428873))

(declare-fun d!428875 () Bool)

(declare-fun lt!507358 () Bool)

(assert (=> d!428875 (= lt!507358 (isEmpty!9542 (list!6083 (tokens!2112 thiss!10022))))))

(assert (=> d!428875 (= lt!507358 (isEmpty!9543 (c!241182 (tokens!2112 thiss!10022))))))

(assert (=> d!428875 (= (isEmpty!9535 (tokens!2112 thiss!10022)) lt!507358)))

(declare-fun bs!344456 () Bool)

(assert (= bs!344456 d!428875))

(assert (=> bs!344456 m!1701677))

(assert (=> bs!344456 m!1701677))

(declare-fun m!1702257 () Bool)

(assert (=> bs!344456 m!1702257))

(declare-fun m!1702259 () Bool)

(assert (=> bs!344456 m!1702259))

(assert (=> b!1463103 d!428875))

(declare-fun d!428877 () Bool)

(assert (=> d!428877 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) lt!507004)))

(declare-fun lt!507394 () Unit!24509)

(declare-fun choose!9003 (LexerInterface!2331 List!15255 List!15254 Token!5012) Unit!24509)

(assert (=> d!428877 (= lt!507394 (choose!9003 Lexer!2329 (rules!11706 thiss!10022) lt!506994 lt!507004))))

(assert (=> d!428877 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!428877 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!433 Lexer!2329 (rules!11706 thiss!10022) lt!506994 lt!507004) lt!507394)))

(declare-fun bs!344457 () Bool)

(assert (= bs!344457 d!428877))

(assert (=> bs!344457 m!1701683))

(declare-fun m!1702339 () Bool)

(assert (=> bs!344457 m!1702339))

(assert (=> bs!344457 m!1701757))

(assert (=> b!1463098 d!428877))

(declare-fun d!428881 () Bool)

(declare-fun lt!507408 () Bool)

(declare-fun e!933499 () Bool)

(assert (=> d!428881 (= lt!507408 e!933499)))

(declare-fun res!662374 () Bool)

(assert (=> d!428881 (=> (not res!662374) (not e!933499))))

(declare-datatypes ((tuple2!14256 0))(
  ( (tuple2!14257 (_1!8014 BalanceConc!10294) (_2!8014 BalanceConc!10292)) )
))
(declare-fun lex!1076 (LexerInterface!2331 List!15255 BalanceConc!10292) tuple2!14256)

(declare-fun singletonSeq!1281 (Token!5012) BalanceConc!10294)

(assert (=> d!428881 (= res!662374 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!506998))))) (list!6083 (singletonSeq!1281 lt!506998))))))

(declare-fun e!933498 () Bool)

(assert (=> d!428881 (= lt!507408 e!933498)))

(declare-fun res!662376 () Bool)

(assert (=> d!428881 (=> (not res!662376) (not e!933498))))

(declare-fun lt!507409 () tuple2!14256)

(assert (=> d!428881 (= res!662376 (= (size!12423 (_1!8014 lt!507409)) 1))))

(assert (=> d!428881 (= lt!507409 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!506998))))))

(assert (=> d!428881 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!428881 (= (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) lt!506998) lt!507408)))

(declare-fun b!1463351 () Bool)

(declare-fun res!662375 () Bool)

(assert (=> b!1463351 (=> (not res!662375) (not e!933498))))

(assert (=> b!1463351 (= res!662375 (= (apply!3965 (_1!8014 lt!507409) 0) lt!506998))))

(declare-fun b!1463352 () Bool)

(declare-fun isEmpty!9544 (BalanceConc!10292) Bool)

(assert (=> b!1463352 (= e!933498 (isEmpty!9544 (_2!8014 lt!507409)))))

(declare-fun b!1463353 () Bool)

(assert (=> b!1463353 (= e!933499 (isEmpty!9544 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!506998))))))))

(assert (= (and d!428881 res!662376) b!1463351))

(assert (= (and b!1463351 res!662375) b!1463352))

(assert (= (and d!428881 res!662374) b!1463353))

(assert (=> d!428881 m!1701757))

(declare-fun m!1702351 () Bool)

(assert (=> d!428881 m!1702351))

(declare-fun m!1702353 () Bool)

(assert (=> d!428881 m!1702353))

(assert (=> d!428881 m!1702353))

(declare-fun m!1702355 () Bool)

(assert (=> d!428881 m!1702355))

(declare-fun m!1702357 () Bool)

(assert (=> d!428881 m!1702357))

(assert (=> d!428881 m!1702351))

(declare-fun m!1702359 () Bool)

(assert (=> d!428881 m!1702359))

(declare-fun m!1702361 () Bool)

(assert (=> d!428881 m!1702361))

(assert (=> d!428881 m!1702351))

(declare-fun m!1702363 () Bool)

(assert (=> b!1463351 m!1702363))

(declare-fun m!1702365 () Bool)

(assert (=> b!1463352 m!1702365))

(assert (=> b!1463353 m!1702351))

(assert (=> b!1463353 m!1702351))

(assert (=> b!1463353 m!1702353))

(assert (=> b!1463353 m!1702353))

(assert (=> b!1463353 m!1702355))

(declare-fun m!1702367 () Bool)

(assert (=> b!1463353 m!1702367))

(assert (=> b!1463098 d!428881))

(declare-fun d!428885 () Bool)

(declare-fun list!6086 (Conc!5177) List!15254)

(assert (=> d!428885 (= (list!6083 (tokens!2112 other!32)) (list!6086 (c!241182 (tokens!2112 other!32))))))

(declare-fun bs!344458 () Bool)

(assert (= bs!344458 d!428885))

(declare-fun m!1702369 () Bool)

(assert (=> bs!344458 m!1702369))

(assert (=> b!1463098 d!428885))

(declare-fun d!428887 () Bool)

(assert (=> d!428887 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) lt!506998)))

(declare-fun lt!507410 () Unit!24509)

(assert (=> d!428887 (= lt!507410 (choose!9003 Lexer!2329 (rules!11706 thiss!10022) lt!507007 lt!506998))))

(assert (=> d!428887 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!428887 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!433 Lexer!2329 (rules!11706 thiss!10022) lt!507007 lt!506998) lt!507410)))

(declare-fun bs!344459 () Bool)

(assert (= bs!344459 d!428887))

(assert (=> bs!344459 m!1701685))

(declare-fun m!1702371 () Bool)

(assert (=> bs!344459 m!1702371))

(assert (=> bs!344459 m!1701757))

(assert (=> b!1463098 d!428887))

(declare-fun d!428889 () Bool)

(declare-fun lt!507413 () Token!5012)

(declare-fun last!286 (List!15254) Token!5012)

(assert (=> d!428889 (= lt!507413 (last!286 (list!6083 (tokens!2112 thiss!10022))))))

(declare-fun last!287 (Conc!5177) Token!5012)

(assert (=> d!428889 (= lt!507413 (last!287 (c!241182 (tokens!2112 thiss!10022))))))

(assert (=> d!428889 (not (isEmpty!9535 (tokens!2112 thiss!10022)))))

(assert (=> d!428889 (= (last!285 (tokens!2112 thiss!10022)) lt!507413)))

(declare-fun bs!344460 () Bool)

(assert (= bs!344460 d!428889))

(assert (=> bs!344460 m!1701677))

(assert (=> bs!344460 m!1701677))

(declare-fun m!1702373 () Bool)

(assert (=> bs!344460 m!1702373))

(declare-fun m!1702375 () Bool)

(assert (=> bs!344460 m!1702375))

(assert (=> bs!344460 m!1701695))

(assert (=> b!1463098 d!428889))

(declare-fun d!428891 () Bool)

(assert (=> d!428891 (= (list!6083 (tokens!2112 thiss!10022)) (list!6086 (c!241182 (tokens!2112 thiss!10022))))))

(declare-fun bs!344461 () Bool)

(assert (= bs!344461 d!428891))

(declare-fun m!1702377 () Bool)

(assert (=> bs!344461 m!1702377))

(assert (=> b!1463098 d!428891))

(declare-fun d!428893 () Bool)

(declare-fun lt!507414 () Bool)

(declare-fun e!933501 () Bool)

(assert (=> d!428893 (= lt!507414 e!933501)))

(declare-fun res!662377 () Bool)

(assert (=> d!428893 (=> (not res!662377) (not e!933501))))

(assert (=> d!428893 (= res!662377 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!507004))))) (list!6083 (singletonSeq!1281 lt!507004))))))

(declare-fun e!933500 () Bool)

(assert (=> d!428893 (= lt!507414 e!933500)))

(declare-fun res!662379 () Bool)

(assert (=> d!428893 (=> (not res!662379) (not e!933500))))

(declare-fun lt!507415 () tuple2!14256)

(assert (=> d!428893 (= res!662379 (= (size!12423 (_1!8014 lt!507415)) 1))))

(assert (=> d!428893 (= lt!507415 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!507004))))))

(assert (=> d!428893 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!428893 (= (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) lt!507004) lt!507414)))

(declare-fun b!1463354 () Bool)

(declare-fun res!662378 () Bool)

(assert (=> b!1463354 (=> (not res!662378) (not e!933500))))

(assert (=> b!1463354 (= res!662378 (= (apply!3965 (_1!8014 lt!507415) 0) lt!507004))))

(declare-fun b!1463355 () Bool)

(assert (=> b!1463355 (= e!933500 (isEmpty!9544 (_2!8014 lt!507415)))))

(declare-fun b!1463356 () Bool)

(assert (=> b!1463356 (= e!933501 (isEmpty!9544 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!507004))))))))

(assert (= (and d!428893 res!662379) b!1463354))

(assert (= (and b!1463354 res!662378) b!1463355))

(assert (= (and d!428893 res!662377) b!1463356))

(assert (=> d!428893 m!1701757))

(declare-fun m!1702379 () Bool)

(assert (=> d!428893 m!1702379))

(declare-fun m!1702381 () Bool)

(assert (=> d!428893 m!1702381))

(assert (=> d!428893 m!1702381))

(declare-fun m!1702383 () Bool)

(assert (=> d!428893 m!1702383))

(declare-fun m!1702385 () Bool)

(assert (=> d!428893 m!1702385))

(assert (=> d!428893 m!1702379))

(declare-fun m!1702387 () Bool)

(assert (=> d!428893 m!1702387))

(declare-fun m!1702389 () Bool)

(assert (=> d!428893 m!1702389))

(assert (=> d!428893 m!1702379))

(declare-fun m!1702391 () Bool)

(assert (=> b!1463354 m!1702391))

(declare-fun m!1702393 () Bool)

(assert (=> b!1463355 m!1702393))

(assert (=> b!1463356 m!1702379))

(assert (=> b!1463356 m!1702379))

(assert (=> b!1463356 m!1702381))

(assert (=> b!1463356 m!1702381))

(assert (=> b!1463356 m!1702383))

(declare-fun m!1702395 () Bool)

(assert (=> b!1463356 m!1702395))

(assert (=> b!1463098 d!428893))

(declare-fun d!428895 () Bool)

(declare-fun prefixMatchZipperSequence!356 (Regex!3989 BalanceConc!10292) Bool)

(declare-fun rulesRegex!412 (LexerInterface!2331 List!15255) Regex!3989)

(declare-fun ++!4097 (BalanceConc!10292 BalanceConc!10292) BalanceConc!10292)

(declare-fun singletonSeq!1282 (C!8156) BalanceConc!10292)

(declare-fun apply!3969 (BalanceConc!10292 Int) C!8156)

(assert (=> d!428895 (= (separableTokensPredicate!540 Lexer!2329 lt!506998 lt!507004 (rules!11706 thiss!10022)) (not (prefixMatchZipperSequence!356 (rulesRegex!412 Lexer!2329 (rules!11706 thiss!10022)) (++!4097 (charsOf!1538 lt!506998) (singletonSeq!1282 (apply!3969 (charsOf!1538 lt!507004) 0))))))))

(declare-fun bs!344463 () Bool)

(assert (= bs!344463 d!428895))

(declare-fun m!1702399 () Bool)

(assert (=> bs!344463 m!1702399))

(declare-fun m!1702401 () Bool)

(assert (=> bs!344463 m!1702401))

(declare-fun m!1702403 () Bool)

(assert (=> bs!344463 m!1702403))

(declare-fun m!1702405 () Bool)

(assert (=> bs!344463 m!1702405))

(assert (=> bs!344463 m!1702401))

(declare-fun m!1702407 () Bool)

(assert (=> bs!344463 m!1702407))

(assert (=> bs!344463 m!1702403))

(declare-fun m!1702409 () Bool)

(assert (=> bs!344463 m!1702409))

(assert (=> bs!344463 m!1702399))

(declare-fun m!1702411 () Bool)

(assert (=> bs!344463 m!1702411))

(assert (=> bs!344463 m!1702411))

(assert (=> bs!344463 m!1702405))

(assert (=> bs!344463 m!1702407))

(assert (=> b!1463098 d!428895))

(declare-fun d!428899 () Bool)

(declare-fun lt!507423 () Token!5012)

(assert (=> d!428899 (= lt!507423 (head!3020 (list!6083 (tokens!2112 other!32))))))

(declare-fun head!3023 (Conc!5177) Token!5012)

(assert (=> d!428899 (= lt!507423 (head!3023 (c!241182 (tokens!2112 other!32))))))

(assert (=> d!428899 (not (isEmpty!9535 (tokens!2112 other!32)))))

(assert (=> d!428899 (= (head!3017 (tokens!2112 other!32)) lt!507423)))

(declare-fun bs!344464 () Bool)

(assert (= bs!344464 d!428899))

(assert (=> bs!344464 m!1701681))

(assert (=> bs!344464 m!1701681))

(declare-fun m!1702413 () Bool)

(assert (=> bs!344464 m!1702413))

(declare-fun m!1702415 () Bool)

(assert (=> bs!344464 m!1702415))

(assert (=> bs!344464 m!1701699))

(assert (=> b!1463098 d!428899))

(declare-fun d!428901 () Bool)

(declare-fun e!933522 () Bool)

(assert (=> d!428901 e!933522))

(declare-fun res!662397 () Bool)

(assert (=> d!428901 (=> (not res!662397) (not e!933522))))

(declare-fun lt!507450 () BalanceConc!10292)

(assert (=> d!428901 (= res!662397 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 lt!506997) lt!507450))) (list!6083 (tokens!2112 lt!506997))))))

(assert (=> d!428901 (= lt!507450 (print!1107 Lexer!2329 (tokens!2112 lt!506997)))))

(declare-fun lt!507451 () Unit!24509)

(assert (=> d!428901 (= lt!507451 (theoremInvertabilityWhenTokenListSeparable!79 Lexer!2329 (rules!11706 lt!506997) (list!6083 (tokens!2112 lt!506997))))))

(assert (=> d!428901 (= (print!1106 lt!506997) lt!507450)))

(declare-fun b!1463386 () Bool)

(declare-fun isEmpty!9545 (List!15252) Bool)

(declare-fun list!6087 (BalanceConc!10292) List!15252)

(assert (=> b!1463386 (= e!933522 (isEmpty!9545 (list!6087 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 lt!506997) lt!507450)))))))

(assert (= (and d!428901 res!662397) b!1463386))

(declare-fun m!1702449 () Bool)

(assert (=> d!428901 m!1702449))

(declare-fun m!1702451 () Bool)

(assert (=> d!428901 m!1702451))

(declare-fun m!1702453 () Bool)

(assert (=> d!428901 m!1702453))

(declare-fun m!1702455 () Bool)

(assert (=> d!428901 m!1702455))

(declare-fun m!1702457 () Bool)

(assert (=> d!428901 m!1702457))

(assert (=> d!428901 m!1702451))

(assert (=> b!1463386 m!1702457))

(declare-fun m!1702459 () Bool)

(assert (=> b!1463386 m!1702459))

(assert (=> b!1463386 m!1702459))

(declare-fun m!1702461 () Bool)

(assert (=> b!1463386 m!1702461))

(assert (=> b!1463101 d!428901))

(declare-fun d!428909 () Bool)

(declare-fun e!933562 () Bool)

(assert (=> d!428909 e!933562))

(declare-fun res!662413 () Bool)

(assert (=> d!428909 (=> (not res!662413) (not e!933562))))

(declare-fun seqFromList!1716 (List!15254) BalanceConc!10294)

(assert (=> d!428909 (= res!662413 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (seqFromList!1716 (list!6083 lt!507005)))))) (list!6083 lt!507005)))))

(declare-fun lt!507539 () Unit!24509)

(declare-fun e!933561 () Unit!24509)

(assert (=> d!428909 (= lt!507539 e!933561)))

(declare-fun c!241217 () Bool)

(assert (=> d!428909 (= c!241217 (or ((_ is Nil!15188) (list!6083 lt!507005)) ((_ is Nil!15188) (t!134647 (list!6083 lt!507005)))))))

(assert (=> d!428909 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!428909 (= (theoremInvertabilityWhenTokenListSeparable!79 Lexer!2329 (rules!11706 thiss!10022) (list!6083 lt!507005)) lt!507539)))

(declare-fun b!1463436 () Bool)

(declare-fun Unit!24566 () Unit!24509)

(assert (=> b!1463436 (= e!933561 Unit!24566)))

(declare-fun b!1463437 () Bool)

(declare-fun Unit!24567 () Unit!24509)

(assert (=> b!1463437 (= e!933561 Unit!24567)))

(declare-fun lt!507538 () BalanceConc!10292)

(assert (=> b!1463437 (= lt!507538 (print!1107 Lexer!2329 (seqFromList!1716 (list!6083 lt!507005))))))

(declare-fun lt!507525 () BalanceConc!10292)

(assert (=> b!1463437 (= lt!507525 (print!1107 Lexer!2329 (seqFromList!1716 (t!134647 (list!6083 lt!507005)))))))

(declare-fun lt!507545 () tuple2!14256)

(assert (=> b!1463437 (= lt!507545 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) lt!507525))))

(declare-fun lt!507526 () List!15252)

(assert (=> b!1463437 (= lt!507526 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))))))

(declare-fun lt!507527 () List!15252)

(assert (=> b!1463437 (= lt!507527 (list!6087 lt!507525))))

(declare-fun lt!507532 () Unit!24509)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!768 (List!15252 List!15252) Unit!24509)

(assert (=> b!1463437 (= lt!507532 (lemmaConcatTwoListThenFirstIsPrefix!768 lt!507526 lt!507527))))

(declare-fun isPrefix!1205 (List!15252 List!15252) Bool)

(assert (=> b!1463437 (isPrefix!1205 lt!507526 (++!4093 lt!507526 lt!507527))))

(declare-fun lt!507540 () Unit!24509)

(assert (=> b!1463437 (= lt!507540 lt!507532)))

(declare-fun lt!507544 () Unit!24509)

(assert (=> b!1463437 (= lt!507544 (theoremInvertabilityWhenTokenListSeparable!79 Lexer!2329 (rules!11706 thiss!10022) (t!134647 (list!6083 lt!507005))))))

(declare-fun lt!507529 () Unit!24509)

(declare-fun seqFromListBHdTlConstructive!97 (Token!5012 List!15254 BalanceConc!10294) Unit!24509)

(assert (=> b!1463437 (= lt!507529 (seqFromListBHdTlConstructive!97 (h!20589 (t!134647 (list!6083 lt!507005))) (t!134647 (t!134647 (list!6083 lt!507005))) (_1!8014 lt!507545)))))

(declare-fun prepend!429 (BalanceConc!10294 Token!5012) BalanceConc!10294)

(assert (=> b!1463437 (= (list!6083 (_1!8014 lt!507545)) (list!6083 (prepend!429 (seqFromList!1716 (t!134647 (t!134647 (list!6083 lt!507005)))) (h!20589 (t!134647 (list!6083 lt!507005))))))))

(declare-fun lt!507530 () Unit!24509)

(assert (=> b!1463437 (= lt!507530 lt!507529)))

(declare-datatypes ((tuple2!14258 0))(
  ( (tuple2!14259 (_1!8015 Token!5012) (_2!8015 List!15252)) )
))
(declare-datatypes ((Option!2879 0))(
  ( (None!2878) (Some!2878 (v!22514 tuple2!14258)) )
))
(declare-fun lt!507542 () Option!2879)

(declare-fun maxPrefix!1195 (LexerInterface!2331 List!15255 List!15252) Option!2879)

(assert (=> b!1463437 (= lt!507542 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 lt!507538)))))

(declare-fun printTailRec!699 (LexerInterface!2331 BalanceConc!10294 Int BalanceConc!10292) BalanceConc!10292)

(assert (=> b!1463437 (= (print!1107 Lexer!2329 (singletonSeq!1281 (h!20589 (list!6083 lt!507005)))) (printTailRec!699 Lexer!2329 (singletonSeq!1281 (h!20589 (list!6083 lt!507005))) 0 (BalanceConc!10293 Empty!5176)))))

(declare-fun lt!507541 () Unit!24509)

(declare-fun Unit!24568 () Unit!24509)

(assert (=> b!1463437 (= lt!507541 Unit!24568)))

(declare-fun lt!507528 () Unit!24509)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!241 (LexerInterface!2331 List!15255 List!15252 List!15252) Unit!24509)

(assert (=> b!1463437 (= lt!507528 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!241 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))) (list!6087 lt!507525)))))

(assert (=> b!1463437 (= (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))) (originalCharacters!3537 (h!20589 (list!6083 lt!507005))))))

(declare-fun lt!507536 () Unit!24509)

(declare-fun Unit!24569 () Unit!24509)

(assert (=> b!1463437 (= lt!507536 Unit!24569)))

(declare-fun head!3024 (List!15252) C!8156)

(assert (=> b!1463437 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (list!6083 lt!507005)))) 0))) (Cons!15186 (head!3024 (originalCharacters!3537 (h!20589 (t!134647 (list!6083 lt!507005))))) Nil!15186))))

(declare-fun lt!507523 () Unit!24509)

(declare-fun Unit!24570 () Unit!24509)

(assert (=> b!1463437 (= lt!507523 Unit!24570)))

(assert (=> b!1463437 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (list!6083 lt!507005)))) 0))) (Cons!15186 (head!3024 (list!6087 lt!507525)) Nil!15186))))

(declare-fun lt!507534 () Unit!24509)

(declare-fun Unit!24571 () Unit!24509)

(assert (=> b!1463437 (= lt!507534 Unit!24571)))

(declare-fun head!3025 (BalanceConc!10292) C!8156)

(assert (=> b!1463437 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (list!6083 lt!507005)))) 0))) (Cons!15186 (head!3025 lt!507525) Nil!15186))))

(declare-fun lt!507522 () Unit!24509)

(declare-fun Unit!24572 () Unit!24509)

(assert (=> b!1463437 (= lt!507522 Unit!24572)))

(declare-fun isDefined!2328 (Option!2879) Bool)

(assert (=> b!1463437 (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (originalCharacters!3537 (h!20589 (list!6083 lt!507005)))))))

(declare-fun lt!507524 () Unit!24509)

(declare-fun Unit!24573 () Unit!24509)

(assert (=> b!1463437 (= lt!507524 Unit!24573)))

(assert (=> b!1463437 (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005))))))))

(declare-fun lt!507535 () Unit!24509)

(declare-fun Unit!24574 () Unit!24509)

(assert (=> b!1463437 (= lt!507535 Unit!24574)))

(declare-fun lt!507537 () Unit!24509)

(declare-fun Unit!24575 () Unit!24509)

(assert (=> b!1463437 (= lt!507537 Unit!24575)))

(declare-fun get!4621 (Option!2879) tuple2!14258)

(assert (=> b!1463437 (= (_1!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005))))))) (h!20589 (list!6083 lt!507005)))))

(declare-fun lt!507543 () Unit!24509)

(declare-fun Unit!24576 () Unit!24509)

(assert (=> b!1463437 (= lt!507543 Unit!24576)))

(assert (=> b!1463437 (isEmpty!9545 (_2!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005))))))))))

(declare-fun lt!507531 () Unit!24509)

(declare-fun Unit!24577 () Unit!24509)

(assert (=> b!1463437 (= lt!507531 Unit!24577)))

(declare-fun matchR!1831 (Regex!3989 List!15252) Bool)

(assert (=> b!1463437 (matchR!1831 (regex!2675 (rule!4450 (h!20589 (list!6083 lt!507005)))) (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))))))

(declare-fun lt!507546 () Unit!24509)

(declare-fun Unit!24578 () Unit!24509)

(assert (=> b!1463437 (= lt!507546 Unit!24578)))

(assert (=> b!1463437 (= (rule!4450 (h!20589 (list!6083 lt!507005))) (rule!4450 (h!20589 (list!6083 lt!507005))))))

(declare-fun lt!507533 () Unit!24509)

(declare-fun Unit!24579 () Unit!24509)

(assert (=> b!1463437 (= lt!507533 Unit!24579)))

(declare-fun lt!507547 () Unit!24509)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!39 (LexerInterface!2331 List!15255 Token!5012 Rule!5150 List!15252) Unit!24509)

(assert (=> b!1463437 (= lt!507547 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!39 Lexer!2329 (rules!11706 thiss!10022) (h!20589 (list!6083 lt!507005)) (rule!4450 (h!20589 (list!6083 lt!507005))) (list!6087 lt!507525)))))

(declare-fun b!1463438 () Bool)

(assert (=> b!1463438 (= e!933562 (isEmpty!9544 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (seqFromList!1716 (list!6083 lt!507005)))))))))

(assert (= (and d!428909 c!241217) b!1463436))

(assert (= (and d!428909 (not c!241217)) b!1463437))

(assert (= (and d!428909 res!662413) b!1463438))

(assert (=> d!428909 m!1701641))

(declare-fun m!1702555 () Bool)

(assert (=> d!428909 m!1702555))

(assert (=> d!428909 m!1701757))

(declare-fun m!1702557 () Bool)

(assert (=> d!428909 m!1702557))

(declare-fun m!1702559 () Bool)

(assert (=> d!428909 m!1702559))

(declare-fun m!1702561 () Bool)

(assert (=> d!428909 m!1702561))

(assert (=> d!428909 m!1702555))

(assert (=> d!428909 m!1702559))

(declare-fun m!1702563 () Bool)

(assert (=> b!1463437 m!1702563))

(declare-fun m!1702565 () Bool)

(assert (=> b!1463437 m!1702565))

(declare-fun m!1702567 () Bool)

(assert (=> b!1463437 m!1702567))

(declare-fun m!1702569 () Bool)

(assert (=> b!1463437 m!1702569))

(declare-fun m!1702571 () Bool)

(assert (=> b!1463437 m!1702571))

(declare-fun m!1702573 () Bool)

(assert (=> b!1463437 m!1702573))

(declare-fun m!1702575 () Bool)

(assert (=> b!1463437 m!1702575))

(declare-fun m!1702577 () Bool)

(assert (=> b!1463437 m!1702577))

(declare-fun m!1702579 () Bool)

(assert (=> b!1463437 m!1702579))

(declare-fun m!1702581 () Bool)

(assert (=> b!1463437 m!1702581))

(assert (=> b!1463437 m!1702567))

(declare-fun m!1702583 () Bool)

(assert (=> b!1463437 m!1702583))

(declare-fun m!1702585 () Bool)

(assert (=> b!1463437 m!1702585))

(declare-fun m!1702587 () Bool)

(assert (=> b!1463437 m!1702587))

(assert (=> b!1463437 m!1702573))

(declare-fun m!1702589 () Bool)

(assert (=> b!1463437 m!1702589))

(declare-fun m!1702591 () Bool)

(assert (=> b!1463437 m!1702591))

(assert (=> b!1463437 m!1702571))

(assert (=> b!1463437 m!1702591))

(declare-fun m!1702593 () Bool)

(assert (=> b!1463437 m!1702593))

(assert (=> b!1463437 m!1701641))

(assert (=> b!1463437 m!1702555))

(assert (=> b!1463437 m!1702587))

(declare-fun m!1702595 () Bool)

(assert (=> b!1463437 m!1702595))

(declare-fun m!1702597 () Bool)

(assert (=> b!1463437 m!1702597))

(declare-fun m!1702599 () Bool)

(assert (=> b!1463437 m!1702599))

(declare-fun m!1702601 () Bool)

(assert (=> b!1463437 m!1702601))

(declare-fun m!1702603 () Bool)

(assert (=> b!1463437 m!1702603))

(declare-fun m!1702605 () Bool)

(assert (=> b!1463437 m!1702605))

(declare-fun m!1702607 () Bool)

(assert (=> b!1463437 m!1702607))

(declare-fun m!1702609 () Bool)

(assert (=> b!1463437 m!1702609))

(declare-fun m!1702611 () Bool)

(assert (=> b!1463437 m!1702611))

(declare-fun m!1702613 () Bool)

(assert (=> b!1463437 m!1702613))

(declare-fun m!1702615 () Bool)

(assert (=> b!1463437 m!1702615))

(declare-fun m!1702617 () Bool)

(assert (=> b!1463437 m!1702617))

(assert (=> b!1463437 m!1702597))

(declare-fun m!1702619 () Bool)

(assert (=> b!1463437 m!1702619))

(assert (=> b!1463437 m!1702591))

(declare-fun m!1702621 () Bool)

(assert (=> b!1463437 m!1702621))

(declare-fun m!1702623 () Bool)

(assert (=> b!1463437 m!1702623))

(assert (=> b!1463437 m!1702555))

(assert (=> b!1463437 m!1702559))

(assert (=> b!1463437 m!1702577))

(assert (=> b!1463437 m!1702579))

(assert (=> b!1463437 m!1702573))

(declare-fun m!1702625 () Bool)

(assert (=> b!1463437 m!1702625))

(assert (=> b!1463437 m!1702591))

(declare-fun m!1702627 () Bool)

(assert (=> b!1463437 m!1702627))

(assert (=> b!1463437 m!1702599))

(assert (=> b!1463437 m!1702571))

(declare-fun m!1702629 () Bool)

(assert (=> b!1463437 m!1702629))

(assert (=> b!1463437 m!1702563))

(assert (=> b!1463437 m!1702607))

(declare-fun m!1702631 () Bool)

(assert (=> b!1463437 m!1702631))

(assert (=> b!1463437 m!1702567))

(assert (=> b!1463437 m!1702585))

(assert (=> b!1463437 m!1702605))

(assert (=> b!1463437 m!1702571))

(assert (=> b!1463437 m!1702581))

(declare-fun m!1702633 () Bool)

(assert (=> b!1463437 m!1702633))

(assert (=> b!1463438 m!1701641))

(assert (=> b!1463438 m!1702555))

(assert (=> b!1463438 m!1702555))

(assert (=> b!1463438 m!1702559))

(assert (=> b!1463438 m!1702559))

(assert (=> b!1463438 m!1702561))

(declare-fun m!1702635 () Bool)

(assert (=> b!1463438 m!1702635))

(assert (=> b!1463101 d!428909))

(declare-fun d!428931 () Bool)

(declare-fun e!933564 () Bool)

(assert (=> d!428931 e!933564))

(declare-fun res!662414 () Bool)

(assert (=> d!428931 (=> (not res!662414) (not e!933564))))

(assert (=> d!428931 (= res!662414 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 other!32) (print!1107 Lexer!2329 (seqFromList!1716 lt!506994))))) lt!506994))))

(declare-fun lt!507565 () Unit!24509)

(declare-fun e!933563 () Unit!24509)

(assert (=> d!428931 (= lt!507565 e!933563)))

(declare-fun c!241218 () Bool)

(assert (=> d!428931 (= c!241218 (or ((_ is Nil!15188) lt!506994) ((_ is Nil!15188) (t!134647 lt!506994))))))

(assert (=> d!428931 (not (isEmpty!9541 (rules!11706 other!32)))))

(assert (=> d!428931 (= (theoremInvertabilityWhenTokenListSeparable!79 Lexer!2329 (rules!11706 other!32) lt!506994) lt!507565)))

(declare-fun b!1463439 () Bool)

(declare-fun Unit!24580 () Unit!24509)

(assert (=> b!1463439 (= e!933563 Unit!24580)))

(declare-fun b!1463440 () Bool)

(declare-fun Unit!24581 () Unit!24509)

(assert (=> b!1463440 (= e!933563 Unit!24581)))

(declare-fun lt!507564 () BalanceConc!10292)

(assert (=> b!1463440 (= lt!507564 (print!1107 Lexer!2329 (seqFromList!1716 lt!506994)))))

(declare-fun lt!507551 () BalanceConc!10292)

(assert (=> b!1463440 (= lt!507551 (print!1107 Lexer!2329 (seqFromList!1716 (t!134647 lt!506994))))))

(declare-fun lt!507571 () tuple2!14256)

(assert (=> b!1463440 (= lt!507571 (lex!1076 Lexer!2329 (rules!11706 other!32) lt!507551))))

(declare-fun lt!507552 () List!15252)

(assert (=> b!1463440 (= lt!507552 (list!6087 (charsOf!1538 (h!20589 lt!506994))))))

(declare-fun lt!507553 () List!15252)

(assert (=> b!1463440 (= lt!507553 (list!6087 lt!507551))))

(declare-fun lt!507558 () Unit!24509)

(assert (=> b!1463440 (= lt!507558 (lemmaConcatTwoListThenFirstIsPrefix!768 lt!507552 lt!507553))))

(assert (=> b!1463440 (isPrefix!1205 lt!507552 (++!4093 lt!507552 lt!507553))))

(declare-fun lt!507566 () Unit!24509)

(assert (=> b!1463440 (= lt!507566 lt!507558)))

(declare-fun lt!507570 () Unit!24509)

(assert (=> b!1463440 (= lt!507570 (theoremInvertabilityWhenTokenListSeparable!79 Lexer!2329 (rules!11706 other!32) (t!134647 lt!506994)))))

(declare-fun lt!507555 () Unit!24509)

(assert (=> b!1463440 (= lt!507555 (seqFromListBHdTlConstructive!97 (h!20589 (t!134647 lt!506994)) (t!134647 (t!134647 lt!506994)) (_1!8014 lt!507571)))))

(assert (=> b!1463440 (= (list!6083 (_1!8014 lt!507571)) (list!6083 (prepend!429 (seqFromList!1716 (t!134647 (t!134647 lt!506994))) (h!20589 (t!134647 lt!506994)))))))

(declare-fun lt!507556 () Unit!24509)

(assert (=> b!1463440 (= lt!507556 lt!507555)))

(declare-fun lt!507568 () Option!2879)

(assert (=> b!1463440 (= lt!507568 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (list!6087 lt!507564)))))

(assert (=> b!1463440 (= (print!1107 Lexer!2329 (singletonSeq!1281 (h!20589 lt!506994))) (printTailRec!699 Lexer!2329 (singletonSeq!1281 (h!20589 lt!506994)) 0 (BalanceConc!10293 Empty!5176)))))

(declare-fun lt!507567 () Unit!24509)

(declare-fun Unit!24582 () Unit!24509)

(assert (=> b!1463440 (= lt!507567 Unit!24582)))

(declare-fun lt!507554 () Unit!24509)

(assert (=> b!1463440 (= lt!507554 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!241 Lexer!2329 (rules!11706 other!32) (list!6087 (charsOf!1538 (h!20589 lt!506994))) (list!6087 lt!507551)))))

(assert (=> b!1463440 (= (list!6087 (charsOf!1538 (h!20589 lt!506994))) (originalCharacters!3537 (h!20589 lt!506994)))))

(declare-fun lt!507562 () Unit!24509)

(declare-fun Unit!24583 () Unit!24509)

(assert (=> b!1463440 (= lt!507562 Unit!24583)))

(assert (=> b!1463440 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 lt!506994))) 0))) (Cons!15186 (head!3024 (originalCharacters!3537 (h!20589 (t!134647 lt!506994)))) Nil!15186))))

(declare-fun lt!507549 () Unit!24509)

(declare-fun Unit!24584 () Unit!24509)

(assert (=> b!1463440 (= lt!507549 Unit!24584)))

(assert (=> b!1463440 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 lt!506994))) 0))) (Cons!15186 (head!3024 (list!6087 lt!507551)) Nil!15186))))

(declare-fun lt!507560 () Unit!24509)

(declare-fun Unit!24585 () Unit!24509)

(assert (=> b!1463440 (= lt!507560 Unit!24585)))

(assert (=> b!1463440 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 lt!506994))) 0))) (Cons!15186 (head!3025 lt!507551) Nil!15186))))

(declare-fun lt!507548 () Unit!24509)

(declare-fun Unit!24586 () Unit!24509)

(assert (=> b!1463440 (= lt!507548 Unit!24586)))

(assert (=> b!1463440 (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (originalCharacters!3537 (h!20589 lt!506994))))))

(declare-fun lt!507550 () Unit!24509)

(declare-fun Unit!24587 () Unit!24509)

(assert (=> b!1463440 (= lt!507550 Unit!24587)))

(assert (=> b!1463440 (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (list!6087 (charsOf!1538 (h!20589 lt!506994)))))))

(declare-fun lt!507561 () Unit!24509)

(declare-fun Unit!24588 () Unit!24509)

(assert (=> b!1463440 (= lt!507561 Unit!24588)))

(declare-fun lt!507563 () Unit!24509)

(declare-fun Unit!24589 () Unit!24509)

(assert (=> b!1463440 (= lt!507563 Unit!24589)))

(assert (=> b!1463440 (= (_1!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (list!6087 (charsOf!1538 (h!20589 lt!506994)))))) (h!20589 lt!506994))))

(declare-fun lt!507569 () Unit!24509)

(declare-fun Unit!24590 () Unit!24509)

(assert (=> b!1463440 (= lt!507569 Unit!24590)))

(assert (=> b!1463440 (isEmpty!9545 (_2!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (list!6087 (charsOf!1538 (h!20589 lt!506994)))))))))

(declare-fun lt!507557 () Unit!24509)

(declare-fun Unit!24591 () Unit!24509)

(assert (=> b!1463440 (= lt!507557 Unit!24591)))

(assert (=> b!1463440 (matchR!1831 (regex!2675 (rule!4450 (h!20589 lt!506994))) (list!6087 (charsOf!1538 (h!20589 lt!506994))))))

(declare-fun lt!507572 () Unit!24509)

(declare-fun Unit!24592 () Unit!24509)

(assert (=> b!1463440 (= lt!507572 Unit!24592)))

(assert (=> b!1463440 (= (rule!4450 (h!20589 lt!506994)) (rule!4450 (h!20589 lt!506994)))))

(declare-fun lt!507559 () Unit!24509)

(declare-fun Unit!24593 () Unit!24509)

(assert (=> b!1463440 (= lt!507559 Unit!24593)))

(declare-fun lt!507573 () Unit!24509)

(assert (=> b!1463440 (= lt!507573 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!39 Lexer!2329 (rules!11706 other!32) (h!20589 lt!506994) (rule!4450 (h!20589 lt!506994)) (list!6087 lt!507551)))))

(declare-fun b!1463441 () Bool)

(assert (=> b!1463441 (= e!933564 (isEmpty!9544 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 other!32) (print!1107 Lexer!2329 (seqFromList!1716 lt!506994))))))))

(assert (= (and d!428931 c!241218) b!1463439))

(assert (= (and d!428931 (not c!241218)) b!1463440))

(assert (= (and d!428931 res!662414) b!1463441))

(declare-fun m!1702637 () Bool)

(assert (=> d!428931 m!1702637))

(assert (=> d!428931 m!1701765))

(declare-fun m!1702639 () Bool)

(assert (=> d!428931 m!1702639))

(declare-fun m!1702641 () Bool)

(assert (=> d!428931 m!1702641))

(declare-fun m!1702643 () Bool)

(assert (=> d!428931 m!1702643))

(assert (=> d!428931 m!1702637))

(assert (=> d!428931 m!1702641))

(declare-fun m!1702645 () Bool)

(assert (=> b!1463440 m!1702645))

(declare-fun m!1702647 () Bool)

(assert (=> b!1463440 m!1702647))

(declare-fun m!1702649 () Bool)

(assert (=> b!1463440 m!1702649))

(declare-fun m!1702651 () Bool)

(assert (=> b!1463440 m!1702651))

(declare-fun m!1702653 () Bool)

(assert (=> b!1463440 m!1702653))

(declare-fun m!1702655 () Bool)

(assert (=> b!1463440 m!1702655))

(declare-fun m!1702657 () Bool)

(assert (=> b!1463440 m!1702657))

(declare-fun m!1702659 () Bool)

(assert (=> b!1463440 m!1702659))

(declare-fun m!1702661 () Bool)

(assert (=> b!1463440 m!1702661))

(declare-fun m!1702663 () Bool)

(assert (=> b!1463440 m!1702663))

(assert (=> b!1463440 m!1702649))

(declare-fun m!1702665 () Bool)

(assert (=> b!1463440 m!1702665))

(declare-fun m!1702667 () Bool)

(assert (=> b!1463440 m!1702667))

(declare-fun m!1702669 () Bool)

(assert (=> b!1463440 m!1702669))

(assert (=> b!1463440 m!1702655))

(declare-fun m!1702671 () Bool)

(assert (=> b!1463440 m!1702671))

(declare-fun m!1702673 () Bool)

(assert (=> b!1463440 m!1702673))

(assert (=> b!1463440 m!1702653))

(assert (=> b!1463440 m!1702673))

(declare-fun m!1702675 () Bool)

(assert (=> b!1463440 m!1702675))

(assert (=> b!1463440 m!1702637))

(assert (=> b!1463440 m!1702669))

(declare-fun m!1702677 () Bool)

(assert (=> b!1463440 m!1702677))

(declare-fun m!1702679 () Bool)

(assert (=> b!1463440 m!1702679))

(declare-fun m!1702681 () Bool)

(assert (=> b!1463440 m!1702681))

(declare-fun m!1702683 () Bool)

(assert (=> b!1463440 m!1702683))

(declare-fun m!1702685 () Bool)

(assert (=> b!1463440 m!1702685))

(declare-fun m!1702687 () Bool)

(assert (=> b!1463440 m!1702687))

(declare-fun m!1702689 () Bool)

(assert (=> b!1463440 m!1702689))

(declare-fun m!1702691 () Bool)

(assert (=> b!1463440 m!1702691))

(declare-fun m!1702693 () Bool)

(assert (=> b!1463440 m!1702693))

(declare-fun m!1702695 () Bool)

(assert (=> b!1463440 m!1702695))

(declare-fun m!1702697 () Bool)

(assert (=> b!1463440 m!1702697))

(declare-fun m!1702699 () Bool)

(assert (=> b!1463440 m!1702699))

(assert (=> b!1463440 m!1702679))

(declare-fun m!1702701 () Bool)

(assert (=> b!1463440 m!1702701))

(assert (=> b!1463440 m!1702673))

(declare-fun m!1702703 () Bool)

(assert (=> b!1463440 m!1702703))

(declare-fun m!1702705 () Bool)

(assert (=> b!1463440 m!1702705))

(assert (=> b!1463440 m!1702637))

(assert (=> b!1463440 m!1702641))

(assert (=> b!1463440 m!1702659))

(assert (=> b!1463440 m!1702661))

(assert (=> b!1463440 m!1702655))

(declare-fun m!1702707 () Bool)

(assert (=> b!1463440 m!1702707))

(assert (=> b!1463440 m!1702673))

(declare-fun m!1702709 () Bool)

(assert (=> b!1463440 m!1702709))

(assert (=> b!1463440 m!1702681))

(assert (=> b!1463440 m!1702653))

(declare-fun m!1702711 () Bool)

(assert (=> b!1463440 m!1702711))

(assert (=> b!1463440 m!1702645))

(assert (=> b!1463440 m!1702689))

(declare-fun m!1702713 () Bool)

(assert (=> b!1463440 m!1702713))

(assert (=> b!1463440 m!1702649))

(assert (=> b!1463440 m!1702667))

(assert (=> b!1463440 m!1702687))

(assert (=> b!1463440 m!1702653))

(assert (=> b!1463440 m!1702663))

(declare-fun m!1702715 () Bool)

(assert (=> b!1463440 m!1702715))

(assert (=> b!1463441 m!1702637))

(assert (=> b!1463441 m!1702637))

(assert (=> b!1463441 m!1702641))

(assert (=> b!1463441 m!1702641))

(assert (=> b!1463441 m!1702643))

(declare-fun m!1702717 () Bool)

(assert (=> b!1463441 m!1702717))

(assert (=> b!1463101 d!428931))

(declare-fun b!1463451 () Bool)

(declare-fun e!933570 () List!15252)

(assert (=> b!1463451 (= e!933570 (Cons!15186 (h!20587 (printList!727 Lexer!2329 lt!507007)) (++!4093 (t!134645 (printList!727 Lexer!2329 lt!507007)) (printList!727 Lexer!2329 lt!506994))))))

(declare-fun b!1463450 () Bool)

(assert (=> b!1463450 (= e!933570 (printList!727 Lexer!2329 lt!506994))))

(declare-fun d!428933 () Bool)

(declare-fun e!933569 () Bool)

(assert (=> d!428933 e!933569))

(declare-fun res!662419 () Bool)

(assert (=> d!428933 (=> (not res!662419) (not e!933569))))

(declare-fun lt!507576 () List!15252)

(declare-fun content!2247 (List!15252) (InoxSet C!8156))

(assert (=> d!428933 (= res!662419 (= (content!2247 lt!507576) ((_ map or) (content!2247 (printList!727 Lexer!2329 lt!507007)) (content!2247 (printList!727 Lexer!2329 lt!506994)))))))

(assert (=> d!428933 (= lt!507576 e!933570)))

(declare-fun c!241221 () Bool)

(assert (=> d!428933 (= c!241221 ((_ is Nil!15186) (printList!727 Lexer!2329 lt!507007)))))

(assert (=> d!428933 (= (++!4093 (printList!727 Lexer!2329 lt!507007) (printList!727 Lexer!2329 lt!506994)) lt!507576)))

(declare-fun b!1463453 () Bool)

(assert (=> b!1463453 (= e!933569 (or (not (= (printList!727 Lexer!2329 lt!506994) Nil!15186)) (= lt!507576 (printList!727 Lexer!2329 lt!507007))))))

(declare-fun b!1463452 () Bool)

(declare-fun res!662420 () Bool)

(assert (=> b!1463452 (=> (not res!662420) (not e!933569))))

(declare-fun size!12429 (List!15252) Int)

(assert (=> b!1463452 (= res!662420 (= (size!12429 lt!507576) (+ (size!12429 (printList!727 Lexer!2329 lt!507007)) (size!12429 (printList!727 Lexer!2329 lt!506994)))))))

(assert (= (and d!428933 c!241221) b!1463450))

(assert (= (and d!428933 (not c!241221)) b!1463451))

(assert (= (and d!428933 res!662419) b!1463452))

(assert (= (and b!1463452 res!662420) b!1463453))

(assert (=> b!1463451 m!1701665))

(declare-fun m!1702719 () Bool)

(assert (=> b!1463451 m!1702719))

(declare-fun m!1702721 () Bool)

(assert (=> d!428933 m!1702721))

(assert (=> d!428933 m!1701659))

(declare-fun m!1702723 () Bool)

(assert (=> d!428933 m!1702723))

(assert (=> d!428933 m!1701665))

(declare-fun m!1702725 () Bool)

(assert (=> d!428933 m!1702725))

(declare-fun m!1702727 () Bool)

(assert (=> b!1463452 m!1702727))

(assert (=> b!1463452 m!1701659))

(declare-fun m!1702729 () Bool)

(assert (=> b!1463452 m!1702729))

(assert (=> b!1463452 m!1701665))

(declare-fun m!1702731 () Bool)

(assert (=> b!1463452 m!1702731))

(assert (=> b!1463101 d!428933))

(declare-fun d!428935 () Bool)

(declare-fun e!933572 () Bool)

(assert (=> d!428935 e!933572))

(declare-fun res!662421 () Bool)

(assert (=> d!428935 (=> (not res!662421) (not e!933572))))

(assert (=> d!428935 (= res!662421 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (seqFromList!1716 lt!507007))))) lt!507007))))

(declare-fun lt!507594 () Unit!24509)

(declare-fun e!933571 () Unit!24509)

(assert (=> d!428935 (= lt!507594 e!933571)))

(declare-fun c!241222 () Bool)

(assert (=> d!428935 (= c!241222 (or ((_ is Nil!15188) lt!507007) ((_ is Nil!15188) (t!134647 lt!507007))))))

(assert (=> d!428935 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!428935 (= (theoremInvertabilityWhenTokenListSeparable!79 Lexer!2329 (rules!11706 thiss!10022) lt!507007) lt!507594)))

(declare-fun b!1463454 () Bool)

(declare-fun Unit!24594 () Unit!24509)

(assert (=> b!1463454 (= e!933571 Unit!24594)))

(declare-fun b!1463455 () Bool)

(declare-fun Unit!24595 () Unit!24509)

(assert (=> b!1463455 (= e!933571 Unit!24595)))

(declare-fun lt!507593 () BalanceConc!10292)

(assert (=> b!1463455 (= lt!507593 (print!1107 Lexer!2329 (seqFromList!1716 lt!507007)))))

(declare-fun lt!507580 () BalanceConc!10292)

(assert (=> b!1463455 (= lt!507580 (print!1107 Lexer!2329 (seqFromList!1716 (t!134647 lt!507007))))))

(declare-fun lt!507600 () tuple2!14256)

(assert (=> b!1463455 (= lt!507600 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) lt!507580))))

(declare-fun lt!507581 () List!15252)

(assert (=> b!1463455 (= lt!507581 (list!6087 (charsOf!1538 (h!20589 lt!507007))))))

(declare-fun lt!507582 () List!15252)

(assert (=> b!1463455 (= lt!507582 (list!6087 lt!507580))))

(declare-fun lt!507587 () Unit!24509)

(assert (=> b!1463455 (= lt!507587 (lemmaConcatTwoListThenFirstIsPrefix!768 lt!507581 lt!507582))))

(assert (=> b!1463455 (isPrefix!1205 lt!507581 (++!4093 lt!507581 lt!507582))))

(declare-fun lt!507595 () Unit!24509)

(assert (=> b!1463455 (= lt!507595 lt!507587)))

(declare-fun lt!507599 () Unit!24509)

(assert (=> b!1463455 (= lt!507599 (theoremInvertabilityWhenTokenListSeparable!79 Lexer!2329 (rules!11706 thiss!10022) (t!134647 lt!507007)))))

(declare-fun lt!507584 () Unit!24509)

(assert (=> b!1463455 (= lt!507584 (seqFromListBHdTlConstructive!97 (h!20589 (t!134647 lt!507007)) (t!134647 (t!134647 lt!507007)) (_1!8014 lt!507600)))))

(assert (=> b!1463455 (= (list!6083 (_1!8014 lt!507600)) (list!6083 (prepend!429 (seqFromList!1716 (t!134647 (t!134647 lt!507007))) (h!20589 (t!134647 lt!507007)))))))

(declare-fun lt!507585 () Unit!24509)

(assert (=> b!1463455 (= lt!507585 lt!507584)))

(declare-fun lt!507597 () Option!2879)

(assert (=> b!1463455 (= lt!507597 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 lt!507593)))))

(assert (=> b!1463455 (= (print!1107 Lexer!2329 (singletonSeq!1281 (h!20589 lt!507007))) (printTailRec!699 Lexer!2329 (singletonSeq!1281 (h!20589 lt!507007)) 0 (BalanceConc!10293 Empty!5176)))))

(declare-fun lt!507596 () Unit!24509)

(declare-fun Unit!24596 () Unit!24509)

(assert (=> b!1463455 (= lt!507596 Unit!24596)))

(declare-fun lt!507583 () Unit!24509)

(assert (=> b!1463455 (= lt!507583 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!241 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 lt!507007))) (list!6087 lt!507580)))))

(assert (=> b!1463455 (= (list!6087 (charsOf!1538 (h!20589 lt!507007))) (originalCharacters!3537 (h!20589 lt!507007)))))

(declare-fun lt!507591 () Unit!24509)

(declare-fun Unit!24597 () Unit!24509)

(assert (=> b!1463455 (= lt!507591 Unit!24597)))

(assert (=> b!1463455 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 lt!507007))) 0))) (Cons!15186 (head!3024 (originalCharacters!3537 (h!20589 (t!134647 lt!507007)))) Nil!15186))))

(declare-fun lt!507578 () Unit!24509)

(declare-fun Unit!24598 () Unit!24509)

(assert (=> b!1463455 (= lt!507578 Unit!24598)))

(assert (=> b!1463455 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 lt!507007))) 0))) (Cons!15186 (head!3024 (list!6087 lt!507580)) Nil!15186))))

(declare-fun lt!507589 () Unit!24509)

(declare-fun Unit!24599 () Unit!24509)

(assert (=> b!1463455 (= lt!507589 Unit!24599)))

(assert (=> b!1463455 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 lt!507007))) 0))) (Cons!15186 (head!3025 lt!507580) Nil!15186))))

(declare-fun lt!507577 () Unit!24509)

(declare-fun Unit!24600 () Unit!24509)

(assert (=> b!1463455 (= lt!507577 Unit!24600)))

(assert (=> b!1463455 (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (originalCharacters!3537 (h!20589 lt!507007))))))

(declare-fun lt!507579 () Unit!24509)

(declare-fun Unit!24601 () Unit!24509)

(assert (=> b!1463455 (= lt!507579 Unit!24601)))

(assert (=> b!1463455 (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 lt!507007)))))))

(declare-fun lt!507590 () Unit!24509)

(declare-fun Unit!24602 () Unit!24509)

(assert (=> b!1463455 (= lt!507590 Unit!24602)))

(declare-fun lt!507592 () Unit!24509)

(declare-fun Unit!24603 () Unit!24509)

(assert (=> b!1463455 (= lt!507592 Unit!24603)))

(assert (=> b!1463455 (= (_1!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 lt!507007)))))) (h!20589 lt!507007))))

(declare-fun lt!507598 () Unit!24509)

(declare-fun Unit!24604 () Unit!24509)

(assert (=> b!1463455 (= lt!507598 Unit!24604)))

(assert (=> b!1463455 (isEmpty!9545 (_2!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 lt!507007)))))))))

(declare-fun lt!507586 () Unit!24509)

(declare-fun Unit!24605 () Unit!24509)

(assert (=> b!1463455 (= lt!507586 Unit!24605)))

(assert (=> b!1463455 (matchR!1831 (regex!2675 (rule!4450 (h!20589 lt!507007))) (list!6087 (charsOf!1538 (h!20589 lt!507007))))))

(declare-fun lt!507601 () Unit!24509)

(declare-fun Unit!24606 () Unit!24509)

(assert (=> b!1463455 (= lt!507601 Unit!24606)))

(assert (=> b!1463455 (= (rule!4450 (h!20589 lt!507007)) (rule!4450 (h!20589 lt!507007)))))

(declare-fun lt!507588 () Unit!24509)

(declare-fun Unit!24607 () Unit!24509)

(assert (=> b!1463455 (= lt!507588 Unit!24607)))

(declare-fun lt!507602 () Unit!24509)

(assert (=> b!1463455 (= lt!507602 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!39 Lexer!2329 (rules!11706 thiss!10022) (h!20589 lt!507007) (rule!4450 (h!20589 lt!507007)) (list!6087 lt!507580)))))

(declare-fun b!1463456 () Bool)

(assert (=> b!1463456 (= e!933572 (isEmpty!9544 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (seqFromList!1716 lt!507007))))))))

(assert (= (and d!428935 c!241222) b!1463454))

(assert (= (and d!428935 (not c!241222)) b!1463455))

(assert (= (and d!428935 res!662421) b!1463456))

(declare-fun m!1702733 () Bool)

(assert (=> d!428935 m!1702733))

(assert (=> d!428935 m!1701757))

(declare-fun m!1702735 () Bool)

(assert (=> d!428935 m!1702735))

(declare-fun m!1702737 () Bool)

(assert (=> d!428935 m!1702737))

(declare-fun m!1702739 () Bool)

(assert (=> d!428935 m!1702739))

(assert (=> d!428935 m!1702733))

(assert (=> d!428935 m!1702737))

(declare-fun m!1702741 () Bool)

(assert (=> b!1463455 m!1702741))

(declare-fun m!1702743 () Bool)

(assert (=> b!1463455 m!1702743))

(declare-fun m!1702745 () Bool)

(assert (=> b!1463455 m!1702745))

(declare-fun m!1702747 () Bool)

(assert (=> b!1463455 m!1702747))

(declare-fun m!1702749 () Bool)

(assert (=> b!1463455 m!1702749))

(declare-fun m!1702751 () Bool)

(assert (=> b!1463455 m!1702751))

(declare-fun m!1702753 () Bool)

(assert (=> b!1463455 m!1702753))

(declare-fun m!1702755 () Bool)

(assert (=> b!1463455 m!1702755))

(declare-fun m!1702757 () Bool)

(assert (=> b!1463455 m!1702757))

(declare-fun m!1702759 () Bool)

(assert (=> b!1463455 m!1702759))

(assert (=> b!1463455 m!1702745))

(declare-fun m!1702761 () Bool)

(assert (=> b!1463455 m!1702761))

(declare-fun m!1702763 () Bool)

(assert (=> b!1463455 m!1702763))

(declare-fun m!1702765 () Bool)

(assert (=> b!1463455 m!1702765))

(assert (=> b!1463455 m!1702751))

(declare-fun m!1702767 () Bool)

(assert (=> b!1463455 m!1702767))

(declare-fun m!1702769 () Bool)

(assert (=> b!1463455 m!1702769))

(assert (=> b!1463455 m!1702749))

(assert (=> b!1463455 m!1702769))

(declare-fun m!1702771 () Bool)

(assert (=> b!1463455 m!1702771))

(assert (=> b!1463455 m!1702733))

(assert (=> b!1463455 m!1702765))

(declare-fun m!1702773 () Bool)

(assert (=> b!1463455 m!1702773))

(declare-fun m!1702775 () Bool)

(assert (=> b!1463455 m!1702775))

(declare-fun m!1702777 () Bool)

(assert (=> b!1463455 m!1702777))

(declare-fun m!1702779 () Bool)

(assert (=> b!1463455 m!1702779))

(declare-fun m!1702781 () Bool)

(assert (=> b!1463455 m!1702781))

(declare-fun m!1702783 () Bool)

(assert (=> b!1463455 m!1702783))

(declare-fun m!1702785 () Bool)

(assert (=> b!1463455 m!1702785))

(declare-fun m!1702787 () Bool)

(assert (=> b!1463455 m!1702787))

(declare-fun m!1702789 () Bool)

(assert (=> b!1463455 m!1702789))

(declare-fun m!1702791 () Bool)

(assert (=> b!1463455 m!1702791))

(declare-fun m!1702793 () Bool)

(assert (=> b!1463455 m!1702793))

(declare-fun m!1702795 () Bool)

(assert (=> b!1463455 m!1702795))

(assert (=> b!1463455 m!1702775))

(declare-fun m!1702797 () Bool)

(assert (=> b!1463455 m!1702797))

(assert (=> b!1463455 m!1702769))

(declare-fun m!1702799 () Bool)

(assert (=> b!1463455 m!1702799))

(declare-fun m!1702801 () Bool)

(assert (=> b!1463455 m!1702801))

(assert (=> b!1463455 m!1702733))

(assert (=> b!1463455 m!1702737))

(assert (=> b!1463455 m!1702755))

(assert (=> b!1463455 m!1702757))

(assert (=> b!1463455 m!1702751))

(declare-fun m!1702803 () Bool)

(assert (=> b!1463455 m!1702803))

(assert (=> b!1463455 m!1702769))

(declare-fun m!1702805 () Bool)

(assert (=> b!1463455 m!1702805))

(assert (=> b!1463455 m!1702777))

(assert (=> b!1463455 m!1702749))

(declare-fun m!1702807 () Bool)

(assert (=> b!1463455 m!1702807))

(assert (=> b!1463455 m!1702741))

(assert (=> b!1463455 m!1702785))

(declare-fun m!1702809 () Bool)

(assert (=> b!1463455 m!1702809))

(assert (=> b!1463455 m!1702745))

(assert (=> b!1463455 m!1702763))

(assert (=> b!1463455 m!1702783))

(assert (=> b!1463455 m!1702749))

(assert (=> b!1463455 m!1702759))

(declare-fun m!1702811 () Bool)

(assert (=> b!1463455 m!1702811))

(assert (=> b!1463456 m!1702733))

(assert (=> b!1463456 m!1702733))

(assert (=> b!1463456 m!1702737))

(assert (=> b!1463456 m!1702737))

(assert (=> b!1463456 m!1702739))

(declare-fun m!1702813 () Bool)

(assert (=> b!1463456 m!1702813))

(assert (=> b!1463101 d!428935))

(declare-fun d!428937 () Bool)

(declare-fun c!241225 () Bool)

(assert (=> d!428937 (= c!241225 ((_ is Cons!15188) lt!506994))))

(declare-fun e!933575 () List!15252)

(assert (=> d!428937 (= (printList!727 Lexer!2329 lt!506994) e!933575)))

(declare-fun b!1463461 () Bool)

(assert (=> b!1463461 (= e!933575 (++!4093 (list!6087 (charsOf!1538 (h!20589 lt!506994))) (printList!727 Lexer!2329 (t!134647 lt!506994))))))

(declare-fun b!1463462 () Bool)

(assert (=> b!1463462 (= e!933575 Nil!15186)))

(assert (= (and d!428937 c!241225) b!1463461))

(assert (= (and d!428937 (not c!241225)) b!1463462))

(assert (=> b!1463461 m!1702687))

(assert (=> b!1463461 m!1702687))

(assert (=> b!1463461 m!1702653))

(declare-fun m!1702815 () Bool)

(assert (=> b!1463461 m!1702815))

(assert (=> b!1463461 m!1702653))

(assert (=> b!1463461 m!1702815))

(declare-fun m!1702817 () Bool)

(assert (=> b!1463461 m!1702817))

(assert (=> b!1463101 d!428937))

(declare-fun d!428939 () Bool)

(declare-fun lt!507605 () BalanceConc!10292)

(assert (=> d!428939 (= (list!6087 lt!507605) (printList!727 Lexer!2329 (list!6083 (tokens!2112 other!32))))))

(assert (=> d!428939 (= lt!507605 (printTailRec!699 Lexer!2329 (tokens!2112 other!32) 0 (BalanceConc!10293 Empty!5176)))))

(assert (=> d!428939 (= (print!1107 Lexer!2329 (tokens!2112 other!32)) lt!507605)))

(declare-fun bs!344473 () Bool)

(assert (= bs!344473 d!428939))

(declare-fun m!1702819 () Bool)

(assert (=> bs!344473 m!1702819))

(assert (=> bs!344473 m!1701681))

(assert (=> bs!344473 m!1701681))

(declare-fun m!1702821 () Bool)

(assert (=> bs!344473 m!1702821))

(declare-fun m!1702823 () Bool)

(assert (=> bs!344473 m!1702823))

(assert (=> b!1463101 d!428939))

(declare-fun d!428941 () Bool)

(assert (=> d!428941 (= (printList!727 Lexer!2329 (++!4092 lt!507007 lt!506994)) (++!4093 (printList!727 Lexer!2329 lt!507007) (printList!727 Lexer!2329 lt!506994)))))

(declare-fun lt!507608 () Unit!24509)

(declare-fun choose!9004 (LexerInterface!2331 List!15254 List!15254) Unit!24509)

(assert (=> d!428941 (= lt!507608 (choose!9004 Lexer!2329 lt!507007 lt!506994))))

(assert (=> d!428941 (= (lemmaPrintConcatSameAsConcatPrint!78 Lexer!2329 lt!507007 lt!506994) lt!507608)))

(declare-fun bs!344474 () Bool)

(assert (= bs!344474 d!428941))

(assert (=> bs!344474 m!1701659))

(assert (=> bs!344474 m!1701629))

(declare-fun m!1702825 () Bool)

(assert (=> bs!344474 m!1702825))

(declare-fun m!1702827 () Bool)

(assert (=> bs!344474 m!1702827))

(assert (=> bs!344474 m!1701665))

(assert (=> bs!344474 m!1701659))

(assert (=> bs!344474 m!1701665))

(assert (=> bs!344474 m!1701667))

(assert (=> bs!344474 m!1701629))

(assert (=> b!1463101 d!428941))

(declare-fun d!428943 () Bool)

(assert (=> d!428943 (= (list!6083 lt!507005) (list!6086 (c!241182 lt!507005)))))

(declare-fun bs!344475 () Bool)

(assert (= bs!344475 d!428943))

(declare-fun m!1702829 () Bool)

(assert (=> bs!344475 m!1702829))

(assert (=> b!1463101 d!428943))

(declare-fun d!428945 () Bool)

(declare-fun c!241226 () Bool)

(assert (=> d!428945 (= c!241226 ((_ is Cons!15188) lt!507007))))

(declare-fun e!933576 () List!15252)

(assert (=> d!428945 (= (printList!727 Lexer!2329 lt!507007) e!933576)))

(declare-fun b!1463463 () Bool)

(assert (=> b!1463463 (= e!933576 (++!4093 (list!6087 (charsOf!1538 (h!20589 lt!507007))) (printList!727 Lexer!2329 (t!134647 lt!507007))))))

(declare-fun b!1463464 () Bool)

(assert (=> b!1463464 (= e!933576 Nil!15186)))

(assert (= (and d!428945 c!241226) b!1463463))

(assert (= (and d!428945 (not c!241226)) b!1463464))

(assert (=> b!1463463 m!1702783))

(assert (=> b!1463463 m!1702783))

(assert (=> b!1463463 m!1702749))

(declare-fun m!1702831 () Bool)

(assert (=> b!1463463 m!1702831))

(assert (=> b!1463463 m!1702749))

(assert (=> b!1463463 m!1702831))

(declare-fun m!1702833 () Bool)

(assert (=> b!1463463 m!1702833))

(assert (=> b!1463101 d!428945))

(declare-fun d!428947 () Bool)

(declare-fun lt!507609 () BalanceConc!10292)

(assert (=> d!428947 (= (list!6087 lt!507609) (printList!727 Lexer!2329 (list!6083 lt!507005)))))

(assert (=> d!428947 (= lt!507609 (printTailRec!699 Lexer!2329 lt!507005 0 (BalanceConc!10293 Empty!5176)))))

(assert (=> d!428947 (= (print!1107 Lexer!2329 lt!507005) lt!507609)))

(declare-fun bs!344476 () Bool)

(assert (= bs!344476 d!428947))

(declare-fun m!1702835 () Bool)

(assert (=> bs!344476 m!1702835))

(assert (=> bs!344476 m!1701641))

(assert (=> bs!344476 m!1701641))

(declare-fun m!1702837 () Bool)

(assert (=> bs!344476 m!1702837))

(declare-fun m!1702839 () Bool)

(assert (=> bs!344476 m!1702839))

(assert (=> b!1463101 d!428947))

(declare-fun d!428949 () Bool)

(declare-fun res!662422 () Bool)

(declare-fun e!933577 () Bool)

(assert (=> d!428949 (=> (not res!662422) (not e!933577))))

(assert (=> d!428949 (= res!662422 (not (isEmpty!9541 (rules!11706 lt!506997))))))

(assert (=> d!428949 (= (inv!20299 lt!506997) e!933577)))

(declare-fun b!1463465 () Bool)

(declare-fun res!662423 () Bool)

(assert (=> b!1463465 (=> (not res!662423) (not e!933577))))

(assert (=> b!1463465 (= res!662423 (rulesInvariant!2164 Lexer!2329 (rules!11706 lt!506997)))))

(declare-fun b!1463466 () Bool)

(declare-fun res!662424 () Bool)

(assert (=> b!1463466 (=> (not res!662424) (not e!933577))))

(assert (=> b!1463466 (= res!662424 (rulesProduceEachTokenIndividually!881 Lexer!2329 (rules!11706 lt!506997) (tokens!2112 lt!506997)))))

(declare-fun b!1463467 () Bool)

(assert (=> b!1463467 (= e!933577 (separableTokens!265 Lexer!2329 (tokens!2112 lt!506997) (rules!11706 lt!506997)))))

(assert (= (and d!428949 res!662422) b!1463465))

(assert (= (and b!1463465 res!662423) b!1463466))

(assert (= (and b!1463466 res!662424) b!1463467))

(declare-fun m!1702841 () Bool)

(assert (=> d!428949 m!1702841))

(declare-fun m!1702843 () Bool)

(assert (=> b!1463465 m!1702843))

(declare-fun m!1702845 () Bool)

(assert (=> b!1463466 m!1702845))

(declare-fun m!1702847 () Bool)

(assert (=> b!1463467 m!1702847))

(assert (=> b!1463101 d!428949))

(declare-fun d!428951 () Bool)

(declare-fun lt!507610 () BalanceConc!10292)

(assert (=> d!428951 (= (list!6087 lt!507610) (printList!727 Lexer!2329 (list!6083 (tokens!2112 thiss!10022))))))

(assert (=> d!428951 (= lt!507610 (printTailRec!699 Lexer!2329 (tokens!2112 thiss!10022) 0 (BalanceConc!10293 Empty!5176)))))

(assert (=> d!428951 (= (print!1107 Lexer!2329 (tokens!2112 thiss!10022)) lt!507610)))

(declare-fun bs!344477 () Bool)

(assert (= bs!344477 d!428951))

(declare-fun m!1702849 () Bool)

(assert (=> bs!344477 m!1702849))

(assert (=> bs!344477 m!1701677))

(assert (=> bs!344477 m!1701677))

(declare-fun m!1702851 () Bool)

(assert (=> bs!344477 m!1702851))

(declare-fun m!1702853 () Bool)

(assert (=> bs!344477 m!1702853))

(assert (=> b!1463101 d!428951))

(declare-fun d!428953 () Bool)

(declare-fun e!933578 () Bool)

(assert (=> d!428953 e!933578))

(declare-fun res!662425 () Bool)

(assert (=> d!428953 (=> (not res!662425) (not e!933578))))

(declare-fun lt!507611 () BalanceConc!10292)

(assert (=> d!428953 (= res!662425 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) lt!507611))) (list!6083 (tokens!2112 thiss!10022))))))

(assert (=> d!428953 (= lt!507611 (print!1107 Lexer!2329 (tokens!2112 thiss!10022)))))

(declare-fun lt!507612 () Unit!24509)

(assert (=> d!428953 (= lt!507612 (theoremInvertabilityWhenTokenListSeparable!79 Lexer!2329 (rules!11706 thiss!10022) (list!6083 (tokens!2112 thiss!10022))))))

(assert (=> d!428953 (= (print!1106 thiss!10022) lt!507611)))

(declare-fun b!1463468 () Bool)

(assert (=> b!1463468 (= e!933578 (isEmpty!9545 (list!6087 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) lt!507611)))))))

(assert (= (and d!428953 res!662425) b!1463468))

(assert (=> d!428953 m!1701663))

(assert (=> d!428953 m!1701677))

(declare-fun m!1702855 () Bool)

(assert (=> d!428953 m!1702855))

(declare-fun m!1702857 () Bool)

(assert (=> d!428953 m!1702857))

(declare-fun m!1702859 () Bool)

(assert (=> d!428953 m!1702859))

(assert (=> d!428953 m!1701677))

(assert (=> b!1463468 m!1702859))

(declare-fun m!1702861 () Bool)

(assert (=> b!1463468 m!1702861))

(assert (=> b!1463468 m!1702861))

(declare-fun m!1702863 () Bool)

(assert (=> b!1463468 m!1702863))

(assert (=> b!1463101 d!428953))

(declare-fun d!428955 () Bool)

(declare-fun c!241227 () Bool)

(assert (=> d!428955 (= c!241227 ((_ is Cons!15188) lt!506991))))

(declare-fun e!933579 () List!15252)

(assert (=> d!428955 (= (printList!727 Lexer!2329 lt!506991) e!933579)))

(declare-fun b!1463469 () Bool)

(assert (=> b!1463469 (= e!933579 (++!4093 (list!6087 (charsOf!1538 (h!20589 lt!506991))) (printList!727 Lexer!2329 (t!134647 lt!506991))))))

(declare-fun b!1463470 () Bool)

(assert (=> b!1463470 (= e!933579 Nil!15186)))

(assert (= (and d!428955 c!241227) b!1463469))

(assert (= (and d!428955 (not c!241227)) b!1463470))

(declare-fun m!1702865 () Bool)

(assert (=> b!1463469 m!1702865))

(assert (=> b!1463469 m!1702865))

(declare-fun m!1702867 () Bool)

(assert (=> b!1463469 m!1702867))

(declare-fun m!1702869 () Bool)

(assert (=> b!1463469 m!1702869))

(assert (=> b!1463469 m!1702867))

(assert (=> b!1463469 m!1702869))

(declare-fun m!1702871 () Bool)

(assert (=> b!1463469 m!1702871))

(assert (=> b!1463101 d!428955))

(declare-fun d!428957 () Bool)

(declare-fun e!933580 () Bool)

(assert (=> d!428957 e!933580))

(declare-fun res!662426 () Bool)

(assert (=> d!428957 (=> (not res!662426) (not e!933580))))

(declare-fun lt!507613 () BalanceConc!10292)

(assert (=> d!428957 (= res!662426 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 other!32) lt!507613))) (list!6083 (tokens!2112 other!32))))))

(assert (=> d!428957 (= lt!507613 (print!1107 Lexer!2329 (tokens!2112 other!32)))))

(declare-fun lt!507614 () Unit!24509)

(assert (=> d!428957 (= lt!507614 (theoremInvertabilityWhenTokenListSeparable!79 Lexer!2329 (rules!11706 other!32) (list!6083 (tokens!2112 other!32))))))

(assert (=> d!428957 (= (print!1106 other!32) lt!507613)))

(declare-fun b!1463471 () Bool)

(assert (=> b!1463471 (= e!933580 (isEmpty!9545 (list!6087 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 other!32) lt!507613)))))))

(assert (= (and d!428957 res!662426) b!1463471))

(assert (=> d!428957 m!1701655))

(assert (=> d!428957 m!1701681))

(declare-fun m!1702873 () Bool)

(assert (=> d!428957 m!1702873))

(declare-fun m!1702875 () Bool)

(assert (=> d!428957 m!1702875))

(declare-fun m!1702877 () Bool)

(assert (=> d!428957 m!1702877))

(assert (=> d!428957 m!1701681))

(assert (=> b!1463471 m!1702877))

(declare-fun m!1702879 () Bool)

(assert (=> b!1463471 m!1702879))

(assert (=> b!1463471 m!1702879))

(declare-fun m!1702881 () Bool)

(assert (=> b!1463471 m!1702881))

(assert (=> b!1463101 d!428957))

(declare-fun d!428959 () Bool)

(assert (=> d!428959 (= (inv!20298 (tokens!2112 other!32)) (isBalanced!1555 (c!241182 (tokens!2112 other!32))))))

(declare-fun bs!344478 () Bool)

(assert (= bs!344478 d!428959))

(declare-fun m!1702883 () Bool)

(assert (=> bs!344478 m!1702883))

(assert (=> b!1463096 d!428959))

(declare-fun d!428961 () Bool)

(declare-fun c!241228 () Bool)

(assert (=> d!428961 (= c!241228 ((_ is Node!5177) (c!241182 (tokens!2112 other!32))))))

(declare-fun e!933581 () Bool)

(assert (=> d!428961 (= (inv!20300 (c!241182 (tokens!2112 other!32))) e!933581)))

(declare-fun b!1463472 () Bool)

(assert (=> b!1463472 (= e!933581 (inv!20301 (c!241182 (tokens!2112 other!32))))))

(declare-fun b!1463473 () Bool)

(declare-fun e!933582 () Bool)

(assert (=> b!1463473 (= e!933581 e!933582)))

(declare-fun res!662427 () Bool)

(assert (=> b!1463473 (= res!662427 (not ((_ is Leaf!7716) (c!241182 (tokens!2112 other!32)))))))

(assert (=> b!1463473 (=> res!662427 e!933582)))

(declare-fun b!1463474 () Bool)

(assert (=> b!1463474 (= e!933582 (inv!20302 (c!241182 (tokens!2112 other!32))))))

(assert (= (and d!428961 c!241228) b!1463472))

(assert (= (and d!428961 (not c!241228)) b!1463473))

(assert (= (and b!1463473 (not res!662427)) b!1463474))

(declare-fun m!1702885 () Bool)

(assert (=> b!1463472 m!1702885))

(declare-fun m!1702887 () Bool)

(assert (=> b!1463474 m!1702887))

(assert (=> b!1463102 d!428961))

(declare-fun d!428963 () Bool)

(assert (=> d!428963 (= (inv!20298 (tokens!2112 thiss!10022)) (isBalanced!1555 (c!241182 (tokens!2112 thiss!10022))))))

(declare-fun bs!344479 () Bool)

(assert (= bs!344479 d!428963))

(declare-fun m!1702889 () Bool)

(assert (=> bs!344479 m!1702889))

(assert (=> b!1463100 d!428963))

(declare-fun d!428965 () Bool)

(declare-fun res!662433 () Bool)

(declare-fun e!933588 () Bool)

(assert (=> d!428965 (=> res!662433 e!933588)))

(assert (=> d!428965 (= res!662433 (or (not ((_ is Cons!15188) lt!506991)) (not ((_ is Cons!15188) (t!134647 lt!506991)))))))

(assert (=> d!428965 (= (tokensListTwoByTwoPredicateSeparableList!249 Lexer!2329 lt!506991 (rules!11706 thiss!10022)) e!933588)))

(declare-fun b!1463479 () Bool)

(declare-fun e!933587 () Bool)

(assert (=> b!1463479 (= e!933588 e!933587)))

(declare-fun res!662432 () Bool)

(assert (=> b!1463479 (=> (not res!662432) (not e!933587))))

(assert (=> b!1463479 (= res!662432 (separableTokensPredicate!540 Lexer!2329 (h!20589 lt!506991) (h!20589 (t!134647 lt!506991)) (rules!11706 thiss!10022)))))

(declare-fun lt!507631 () Unit!24509)

(declare-fun Unit!24608 () Unit!24509)

(assert (=> b!1463479 (= lt!507631 Unit!24608)))

(assert (=> b!1463479 (> (size!12425 (charsOf!1538 (h!20589 (t!134647 lt!506991)))) 0)))

(declare-fun lt!507635 () Unit!24509)

(declare-fun Unit!24609 () Unit!24509)

(assert (=> b!1463479 (= lt!507635 Unit!24609)))

(assert (=> b!1463479 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 (t!134647 lt!506991)))))

(declare-fun lt!507630 () Unit!24509)

(declare-fun Unit!24610 () Unit!24509)

(assert (=> b!1463479 (= lt!507630 Unit!24610)))

(assert (=> b!1463479 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 lt!506991))))

(declare-fun lt!507633 () Unit!24509)

(declare-fun lt!507629 () Unit!24509)

(assert (=> b!1463479 (= lt!507633 lt!507629)))

(assert (=> b!1463479 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 (t!134647 lt!506991)))))

(assert (=> b!1463479 (= lt!507629 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!433 Lexer!2329 (rules!11706 thiss!10022) lt!506991 (h!20589 (t!134647 lt!506991))))))

(declare-fun lt!507634 () Unit!24509)

(declare-fun lt!507632 () Unit!24509)

(assert (=> b!1463479 (= lt!507634 lt!507632)))

(assert (=> b!1463479 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 lt!506991))))

(assert (=> b!1463479 (= lt!507632 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!433 Lexer!2329 (rules!11706 thiss!10022) lt!506991 (h!20589 lt!506991)))))

(declare-fun b!1463480 () Bool)

(assert (=> b!1463480 (= e!933587 (tokensListTwoByTwoPredicateSeparableList!249 Lexer!2329 (Cons!15188 (h!20589 (t!134647 lt!506991)) (t!134647 (t!134647 lt!506991))) (rules!11706 thiss!10022)))))

(assert (= (and d!428965 (not res!662433)) b!1463479))

(assert (= (and b!1463479 res!662432) b!1463480))

(declare-fun m!1702891 () Bool)

(assert (=> b!1463479 m!1702891))

(declare-fun m!1702893 () Bool)

(assert (=> b!1463479 m!1702893))

(declare-fun m!1702895 () Bool)

(assert (=> b!1463479 m!1702895))

(assert (=> b!1463479 m!1702891))

(declare-fun m!1702897 () Bool)

(assert (=> b!1463479 m!1702897))

(declare-fun m!1702899 () Bool)

(assert (=> b!1463479 m!1702899))

(assert (=> b!1463479 m!1702235))

(declare-fun m!1702901 () Bool)

(assert (=> b!1463479 m!1702901))

(declare-fun m!1702903 () Bool)

(assert (=> b!1463480 m!1702903))

(assert (=> b!1463095 d!428965))

(declare-fun b!1463489 () Bool)

(declare-fun e!933593 () Bool)

(declare-fun tp!411825 () Bool)

(declare-fun tp!411827 () Bool)

(assert (=> b!1463489 (= e!933593 (and (inv!20300 (left!12905 (c!241182 (tokens!2112 thiss!10022)))) tp!411827 (inv!20300 (right!13235 (c!241182 (tokens!2112 thiss!10022)))) tp!411825))))

(declare-fun b!1463491 () Bool)

(declare-fun e!933594 () Bool)

(declare-fun tp!411826 () Bool)

(assert (=> b!1463491 (= e!933594 tp!411826)))

(declare-fun b!1463490 () Bool)

(declare-fun inv!20307 (IArray!10359) Bool)

(assert (=> b!1463490 (= e!933593 (and (inv!20307 (xs!7928 (c!241182 (tokens!2112 thiss!10022)))) e!933594))))

(assert (=> b!1463104 (= tp!411789 (and (inv!20300 (c!241182 (tokens!2112 thiss!10022))) e!933593))))

(assert (= (and b!1463104 ((_ is Node!5177) (c!241182 (tokens!2112 thiss!10022)))) b!1463489))

(assert (= b!1463490 b!1463491))

(assert (= (and b!1463104 ((_ is Leaf!7716) (c!241182 (tokens!2112 thiss!10022)))) b!1463490))

(declare-fun m!1702905 () Bool)

(assert (=> b!1463489 m!1702905))

(declare-fun m!1702907 () Bool)

(assert (=> b!1463489 m!1702907))

(declare-fun m!1702909 () Bool)

(assert (=> b!1463490 m!1702909))

(assert (=> b!1463104 m!1701707))

(declare-fun b!1463502 () Bool)

(declare-fun b_free!36519 () Bool)

(declare-fun b_next!37223 () Bool)

(assert (=> b!1463502 (= b_free!36519 (not b_next!37223))))

(declare-fun tp!411836 () Bool)

(declare-fun b_and!99905 () Bool)

(assert (=> b!1463502 (= tp!411836 b_and!99905)))

(declare-fun b_free!36521 () Bool)

(declare-fun b_next!37225 () Bool)

(assert (=> b!1463502 (= b_free!36521 (not b_next!37225))))

(declare-fun tp!411839 () Bool)

(declare-fun b_and!99907 () Bool)

(assert (=> b!1463502 (= tp!411839 b_and!99907)))

(declare-fun e!933604 () Bool)

(assert (=> b!1463502 (= e!933604 (and tp!411836 tp!411839))))

(declare-fun tp!411837 () Bool)

(declare-fun e!933606 () Bool)

(declare-fun b!1463501 () Bool)

(declare-fun inv!20294 (String!18081) Bool)

(declare-fun inv!20308 (TokenValueInjection!5190) Bool)

(assert (=> b!1463501 (= e!933606 (and tp!411837 (inv!20294 (tag!2939 (h!20590 (rules!11706 other!32)))) (inv!20308 (transformation!2675 (h!20590 (rules!11706 other!32)))) e!933604))))

(declare-fun b!1463500 () Bool)

(declare-fun e!933603 () Bool)

(declare-fun tp!411838 () Bool)

(assert (=> b!1463500 (= e!933603 (and e!933606 tp!411838))))

(assert (=> b!1463096 (= tp!411787 e!933603)))

(assert (= b!1463501 b!1463502))

(assert (= b!1463500 b!1463501))

(assert (= (and b!1463096 ((_ is Cons!15189) (rules!11706 other!32))) b!1463500))

(declare-fun m!1702911 () Bool)

(assert (=> b!1463501 m!1702911))

(declare-fun m!1702913 () Bool)

(assert (=> b!1463501 m!1702913))

(declare-fun tp!411840 () Bool)

(declare-fun tp!411842 () Bool)

(declare-fun e!933607 () Bool)

(declare-fun b!1463503 () Bool)

(assert (=> b!1463503 (= e!933607 (and (inv!20300 (left!12905 (c!241182 (tokens!2112 other!32)))) tp!411842 (inv!20300 (right!13235 (c!241182 (tokens!2112 other!32)))) tp!411840))))

(declare-fun b!1463505 () Bool)

(declare-fun e!933608 () Bool)

(declare-fun tp!411841 () Bool)

(assert (=> b!1463505 (= e!933608 tp!411841)))

(declare-fun b!1463504 () Bool)

(assert (=> b!1463504 (= e!933607 (and (inv!20307 (xs!7928 (c!241182 (tokens!2112 other!32)))) e!933608))))

(assert (=> b!1463102 (= tp!411790 (and (inv!20300 (c!241182 (tokens!2112 other!32))) e!933607))))

(assert (= (and b!1463102 ((_ is Node!5177) (c!241182 (tokens!2112 other!32)))) b!1463503))

(assert (= b!1463504 b!1463505))

(assert (= (and b!1463102 ((_ is Leaf!7716) (c!241182 (tokens!2112 other!32)))) b!1463504))

(declare-fun m!1702915 () Bool)

(assert (=> b!1463503 m!1702915))

(declare-fun m!1702917 () Bool)

(assert (=> b!1463503 m!1702917))

(declare-fun m!1702919 () Bool)

(assert (=> b!1463504 m!1702919))

(assert (=> b!1463102 m!1701705))

(declare-fun b!1463508 () Bool)

(declare-fun b_free!36523 () Bool)

(declare-fun b_next!37227 () Bool)

(assert (=> b!1463508 (= b_free!36523 (not b_next!37227))))

(declare-fun tp!411843 () Bool)

(declare-fun b_and!99909 () Bool)

(assert (=> b!1463508 (= tp!411843 b_and!99909)))

(declare-fun b_free!36525 () Bool)

(declare-fun b_next!37229 () Bool)

(assert (=> b!1463508 (= b_free!36525 (not b_next!37229))))

(declare-fun tp!411846 () Bool)

(declare-fun b_and!99911 () Bool)

(assert (=> b!1463508 (= tp!411846 b_and!99911)))

(declare-fun e!933610 () Bool)

(assert (=> b!1463508 (= e!933610 (and tp!411843 tp!411846))))

(declare-fun tp!411844 () Bool)

(declare-fun e!933612 () Bool)

(declare-fun b!1463507 () Bool)

(assert (=> b!1463507 (= e!933612 (and tp!411844 (inv!20294 (tag!2939 (h!20590 (rules!11706 thiss!10022)))) (inv!20308 (transformation!2675 (h!20590 (rules!11706 thiss!10022)))) e!933610))))

(declare-fun b!1463506 () Bool)

(declare-fun e!933609 () Bool)

(declare-fun tp!411845 () Bool)

(assert (=> b!1463506 (= e!933609 (and e!933612 tp!411845))))

(assert (=> b!1463100 (= tp!411788 e!933609)))

(assert (= b!1463507 b!1463508))

(assert (= b!1463506 b!1463507))

(assert (= (and b!1463100 ((_ is Cons!15189) (rules!11706 thiss!10022))) b!1463506))

(declare-fun m!1702921 () Bool)

(assert (=> b!1463507 m!1702921))

(declare-fun m!1702923 () Bool)

(assert (=> b!1463507 m!1702923))

(check-sat (not b!1463500) (not b!1463467) (not d!428941) (not d!428847) (not b!1463143) (not b!1463140) (not b!1463141) (not b_next!37223) (not d!428951) (not d!428909) (not b!1463297) (not b!1463491) (not b!1463489) (not b!1463323) (not d!428949) (not d!428895) (not b!1463480) (not d!428881) (not d!428953) (not b!1463468) (not b!1463298) (not d!428869) (not b!1463102) (not b!1463505) (not b!1463452) (not b!1463461) (not b!1463223) (not d!428849) (not b!1463211) (not b!1463300) (not b!1463471) (not b!1463353) (not d!428823) (not b!1463465) (not b!1463186) (not d!428845) (not b!1463182) (not b_next!37225) (not b!1463501) (not b!1463490) (not d!428935) (not d!428901) (not b!1463180) (not d!428891) (not b!1463463) (not b!1463355) (not d!428805) (not b!1463456) (not b!1463351) (not b!1463437) (not b!1463183) (not b!1463210) (not b!1463322) (not b!1463145) (not d!428947) (not d!428873) b_and!99905 (not d!428887) (not b_next!37229) (not b!1463474) (not d!428871) (not b!1463507) (not d!428877) (not b!1463503) (not b!1463104) (not b!1463212) b_and!99909 (not b!1463222) (not b!1463321) b_and!99911 (not d!428963) (not b!1463469) (not b!1463386) (not b!1463209) (not b!1463440) (not d!428885) (not b!1463441) (not d!428957) (not d!428959) (not b!1463506) (not b!1463187) (not d!428875) (not d!428931) b_and!99907 (not b!1463152) (not d!428819) (not b!1463181) (not b!1463356) (not b!1463269) (not b!1463438) (not b!1463144) (not b!1463299) (not d!428893) (not b!1463466) (not b!1463324) (not b_next!37227) (not d!428889) (not b!1463354) (not d!428933) (not d!428939) (not b!1463184) (not b!1463185) (not d!428943) (not b!1463260) (not d!428815) (not b!1463479) (not d!428865) (not b!1463472) (not b!1463352) (not b!1463259) (not b!1463504) (not b!1463142) (not b!1463451) (not b!1463455) (not d!428899) (not b!1463154))
(check-sat (not b_next!37223) (not b_next!37225) b_and!99909 b_and!99911 b_and!99907 (not b_next!37227) b_and!99905 (not b_next!37229))
(get-model)

(declare-fun d!428975 () Bool)

(declare-fun c!241230 () Bool)

(assert (=> d!428975 (= c!241230 ((_ is Node!5177) (left!12905 (c!241182 (tokens!2112 other!32)))))))

(declare-fun e!933642 () Bool)

(assert (=> d!428975 (= (inv!20300 (left!12905 (c!241182 (tokens!2112 other!32)))) e!933642)))

(declare-fun b!1463540 () Bool)

(assert (=> b!1463540 (= e!933642 (inv!20301 (left!12905 (c!241182 (tokens!2112 other!32)))))))

(declare-fun b!1463541 () Bool)

(declare-fun e!933643 () Bool)

(assert (=> b!1463541 (= e!933642 e!933643)))

(declare-fun res!662469 () Bool)

(assert (=> b!1463541 (= res!662469 (not ((_ is Leaf!7716) (left!12905 (c!241182 (tokens!2112 other!32))))))))

(assert (=> b!1463541 (=> res!662469 e!933643)))

(declare-fun b!1463542 () Bool)

(assert (=> b!1463542 (= e!933643 (inv!20302 (left!12905 (c!241182 (tokens!2112 other!32)))))))

(assert (= (and d!428975 c!241230) b!1463540))

(assert (= (and d!428975 (not c!241230)) b!1463541))

(assert (= (and b!1463541 (not res!662469)) b!1463542))

(declare-fun m!1702969 () Bool)

(assert (=> b!1463540 m!1702969))

(declare-fun m!1702971 () Bool)

(assert (=> b!1463542 m!1702971))

(assert (=> b!1463503 d!428975))

(declare-fun d!428977 () Bool)

(declare-fun c!241231 () Bool)

(assert (=> d!428977 (= c!241231 ((_ is Node!5177) (right!13235 (c!241182 (tokens!2112 other!32)))))))

(declare-fun e!933646 () Bool)

(assert (=> d!428977 (= (inv!20300 (right!13235 (c!241182 (tokens!2112 other!32)))) e!933646)))

(declare-fun b!1463547 () Bool)

(assert (=> b!1463547 (= e!933646 (inv!20301 (right!13235 (c!241182 (tokens!2112 other!32)))))))

(declare-fun b!1463548 () Bool)

(declare-fun e!933647 () Bool)

(assert (=> b!1463548 (= e!933646 e!933647)))

(declare-fun res!662472 () Bool)

(assert (=> b!1463548 (= res!662472 (not ((_ is Leaf!7716) (right!13235 (c!241182 (tokens!2112 other!32))))))))

(assert (=> b!1463548 (=> res!662472 e!933647)))

(declare-fun b!1463549 () Bool)

(assert (=> b!1463549 (= e!933647 (inv!20302 (right!13235 (c!241182 (tokens!2112 other!32)))))))

(assert (= (and d!428977 c!241231) b!1463547))

(assert (= (and d!428977 (not c!241231)) b!1463548))

(assert (= (and b!1463548 (not res!662472)) b!1463549))

(declare-fun m!1702973 () Bool)

(assert (=> b!1463547 m!1702973))

(declare-fun m!1702975 () Bool)

(assert (=> b!1463549 m!1702975))

(assert (=> b!1463503 d!428977))

(declare-fun d!428979 () Bool)

(declare-fun lt!507647 () Int)

(assert (=> d!428979 (>= lt!507647 0)))

(declare-fun e!933664 () Int)

(assert (=> d!428979 (= lt!507647 e!933664)))

(declare-fun c!241248 () Bool)

(assert (=> d!428979 (= c!241248 ((_ is Nil!15188) lt!507158))))

(assert (=> d!428979 (= (size!12424 lt!507158) lt!507647)))

(declare-fun b!1463580 () Bool)

(assert (=> b!1463580 (= e!933664 0)))

(declare-fun b!1463581 () Bool)

(assert (=> b!1463581 (= e!933664 (+ 1 (size!12424 (t!134647 lt!507158))))))

(assert (= (and d!428979 c!241248) b!1463580))

(assert (= (and d!428979 (not c!241248)) b!1463581))

(declare-fun m!1702977 () Bool)

(assert (=> b!1463581 m!1702977))

(assert (=> b!1463183 d!428979))

(declare-fun d!428981 () Bool)

(assert (=> d!428981 (= (isEmpty!9545 (list!6087 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) lt!507611)))) ((_ is Nil!15186) (list!6087 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) lt!507611)))))))

(assert (=> b!1463468 d!428981))

(declare-fun d!428983 () Bool)

(declare-fun list!6088 (Conc!5176) List!15252)

(assert (=> d!428983 (= (list!6087 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) lt!507611))) (list!6088 (c!241180 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) lt!507611)))))))

(declare-fun bs!344481 () Bool)

(assert (= bs!344481 d!428983))

(declare-fun m!1702979 () Bool)

(assert (=> bs!344481 m!1702979))

(assert (=> b!1463468 d!428983))

(declare-fun b!1463741 () Bool)

(declare-fun lt!507698 () tuple2!14256)

(declare-fun e!933761 () Bool)

(declare-datatypes ((tuple2!14260 0))(
  ( (tuple2!14261 (_1!8016 List!15254) (_2!8016 List!15252)) )
))
(declare-fun lexList!717 (LexerInterface!2331 List!15255 List!15252) tuple2!14260)

(assert (=> b!1463741 (= e!933761 (= (list!6087 (_2!8014 lt!507698)) (_2!8016 (lexList!717 Lexer!2329 (rules!11706 thiss!10022) (list!6087 lt!507611)))))))

(declare-fun b!1463742 () Bool)

(declare-fun e!933759 () Bool)

(assert (=> b!1463742 (= e!933759 (not (isEmpty!9535 (_1!8014 lt!507698))))))

(declare-fun b!1463743 () Bool)

(declare-fun e!933760 () Bool)

(assert (=> b!1463743 (= e!933760 (= (_2!8014 lt!507698) lt!507611))))

(declare-fun b!1463744 () Bool)

(declare-fun res!662531 () Bool)

(assert (=> b!1463744 (=> (not res!662531) (not e!933761))))

(assert (=> b!1463744 (= res!662531 (= (list!6083 (_1!8014 lt!507698)) (_1!8016 (lexList!717 Lexer!2329 (rules!11706 thiss!10022) (list!6087 lt!507611)))))))

(declare-fun d!428985 () Bool)

(assert (=> d!428985 e!933761))

(declare-fun res!662533 () Bool)

(assert (=> d!428985 (=> (not res!662533) (not e!933761))))

(assert (=> d!428985 (= res!662533 e!933760)))

(declare-fun c!241297 () Bool)

(assert (=> d!428985 (= c!241297 (> (size!12423 (_1!8014 lt!507698)) 0))))

(declare-fun lexTailRecV2!472 (LexerInterface!2331 List!15255 BalanceConc!10292 BalanceConc!10292 BalanceConc!10292 BalanceConc!10294) tuple2!14256)

(assert (=> d!428985 (= lt!507698 (lexTailRecV2!472 Lexer!2329 (rules!11706 thiss!10022) lt!507611 (BalanceConc!10293 Empty!5176) lt!507611 (BalanceConc!10295 Empty!5177)))))

(assert (=> d!428985 (= (lex!1076 Lexer!2329 (rules!11706 thiss!10022) lt!507611) lt!507698)))

(declare-fun b!1463745 () Bool)

(assert (=> b!1463745 (= e!933760 e!933759)))

(declare-fun res!662532 () Bool)

(assert (=> b!1463745 (= res!662532 (< (size!12425 (_2!8014 lt!507698)) (size!12425 lt!507611)))))

(assert (=> b!1463745 (=> (not res!662532) (not e!933759))))

(assert (= (and d!428985 c!241297) b!1463745))

(assert (= (and d!428985 (not c!241297)) b!1463743))

(assert (= (and b!1463745 res!662532) b!1463742))

(assert (= (and d!428985 res!662533) b!1463744))

(assert (= (and b!1463744 res!662531) b!1463741))

(declare-fun m!1703203 () Bool)

(assert (=> b!1463745 m!1703203))

(declare-fun m!1703205 () Bool)

(assert (=> b!1463745 m!1703205))

(declare-fun m!1703207 () Bool)

(assert (=> b!1463744 m!1703207))

(declare-fun m!1703209 () Bool)

(assert (=> b!1463744 m!1703209))

(assert (=> b!1463744 m!1703209))

(declare-fun m!1703211 () Bool)

(assert (=> b!1463744 m!1703211))

(declare-fun m!1703213 () Bool)

(assert (=> b!1463742 m!1703213))

(declare-fun m!1703215 () Bool)

(assert (=> b!1463741 m!1703215))

(assert (=> b!1463741 m!1703209))

(assert (=> b!1463741 m!1703209))

(assert (=> b!1463741 m!1703211))

(declare-fun m!1703217 () Bool)

(assert (=> d!428985 m!1703217))

(declare-fun m!1703219 () Bool)

(assert (=> d!428985 m!1703219))

(assert (=> b!1463468 d!428985))

(declare-fun d!429049 () Bool)

(assert (=> d!429049 (= (list!6087 lt!507609) (list!6088 (c!241180 lt!507609)))))

(declare-fun bs!344488 () Bool)

(assert (= bs!344488 d!429049))

(declare-fun m!1703221 () Bool)

(assert (=> bs!344488 m!1703221))

(assert (=> d!428947 d!429049))

(declare-fun d!429051 () Bool)

(declare-fun c!241298 () Bool)

(assert (=> d!429051 (= c!241298 ((_ is Cons!15188) (list!6083 lt!507005)))))

(declare-fun e!933762 () List!15252)

(assert (=> d!429051 (= (printList!727 Lexer!2329 (list!6083 lt!507005)) e!933762)))

(declare-fun b!1463746 () Bool)

(assert (=> b!1463746 (= e!933762 (++!4093 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))) (printList!727 Lexer!2329 (t!134647 (list!6083 lt!507005)))))))

(declare-fun b!1463747 () Bool)

(assert (=> b!1463747 (= e!933762 Nil!15186)))

(assert (= (and d!429051 c!241298) b!1463746))

(assert (= (and d!429051 (not c!241298)) b!1463747))

(assert (=> b!1463746 m!1702605))

(assert (=> b!1463746 m!1702605))

(assert (=> b!1463746 m!1702571))

(declare-fun m!1703223 () Bool)

(assert (=> b!1463746 m!1703223))

(assert (=> b!1463746 m!1702571))

(assert (=> b!1463746 m!1703223))

(declare-fun m!1703225 () Bool)

(assert (=> b!1463746 m!1703225))

(assert (=> d!428947 d!429051))

(assert (=> d!428947 d!428943))

(declare-fun d!429053 () Bool)

(declare-fun lt!507729 () BalanceConc!10292)

(declare-fun printListTailRec!292 (LexerInterface!2331 List!15254 List!15252) List!15252)

(assert (=> d!429053 (= (list!6087 lt!507729) (printListTailRec!292 Lexer!2329 (dropList!483 lt!507005 0) (list!6087 (BalanceConc!10293 Empty!5176))))))

(declare-fun e!933774 () BalanceConc!10292)

(assert (=> d!429053 (= lt!507729 e!933774)))

(declare-fun c!241303 () Bool)

(assert (=> d!429053 (= c!241303 (>= 0 (size!12423 lt!507005)))))

(declare-fun e!933773 () Bool)

(assert (=> d!429053 e!933773))

(declare-fun res!662550 () Bool)

(assert (=> d!429053 (=> (not res!662550) (not e!933773))))

(assert (=> d!429053 (= res!662550 (>= 0 0))))

(assert (=> d!429053 (= (printTailRec!699 Lexer!2329 lt!507005 0 (BalanceConc!10293 Empty!5176)) lt!507729)))

(declare-fun b!1463772 () Bool)

(assert (=> b!1463772 (= e!933773 (<= 0 (size!12423 lt!507005)))))

(declare-fun b!1463773 () Bool)

(assert (=> b!1463773 (= e!933774 (BalanceConc!10293 Empty!5176))))

(declare-fun b!1463774 () Bool)

(assert (=> b!1463774 (= e!933774 (printTailRec!699 Lexer!2329 lt!507005 (+ 0 1) (++!4097 (BalanceConc!10293 Empty!5176) (charsOf!1538 (apply!3965 lt!507005 0)))))))

(declare-fun lt!507727 () List!15254)

(assert (=> b!1463774 (= lt!507727 (list!6083 lt!507005))))

(declare-fun lt!507725 () Unit!24509)

(assert (=> b!1463774 (= lt!507725 (lemmaDropApply!495 lt!507727 0))))

(assert (=> b!1463774 (= (head!3020 (drop!745 lt!507727 0)) (apply!3966 lt!507727 0))))

(declare-fun lt!507726 () Unit!24509)

(assert (=> b!1463774 (= lt!507726 lt!507725)))

(declare-fun lt!507728 () List!15254)

(assert (=> b!1463774 (= lt!507728 (list!6083 lt!507005))))

(declare-fun lt!507723 () Unit!24509)

(assert (=> b!1463774 (= lt!507723 (lemmaDropTail!475 lt!507728 0))))

(assert (=> b!1463774 (= (tail!2177 (drop!745 lt!507728 0)) (drop!745 lt!507728 (+ 0 1)))))

(declare-fun lt!507724 () Unit!24509)

(assert (=> b!1463774 (= lt!507724 lt!507723)))

(assert (= (and d!429053 res!662550) b!1463772))

(assert (= (and d!429053 c!241303) b!1463773))

(assert (= (and d!429053 (not c!241303)) b!1463774))

(assert (=> d!429053 m!1701919))

(declare-fun m!1703227 () Bool)

(assert (=> d!429053 m!1703227))

(declare-fun m!1703229 () Bool)

(assert (=> d!429053 m!1703229))

(assert (=> d!429053 m!1701919))

(declare-fun m!1703231 () Bool)

(assert (=> d!429053 m!1703231))

(assert (=> d!429053 m!1703227))

(assert (=> d!429053 m!1701861))

(assert (=> b!1463772 m!1701861))

(assert (=> b!1463774 m!1701641))

(declare-fun m!1703233 () Bool)

(assert (=> b!1463774 m!1703233))

(assert (=> b!1463774 m!1701897))

(declare-fun m!1703235 () Bool)

(assert (=> b!1463774 m!1703235))

(declare-fun m!1703237 () Bool)

(assert (=> b!1463774 m!1703237))

(declare-fun m!1703239 () Bool)

(assert (=> b!1463774 m!1703239))

(declare-fun m!1703241 () Bool)

(assert (=> b!1463774 m!1703241))

(assert (=> b!1463774 m!1701897))

(declare-fun m!1703243 () Bool)

(assert (=> b!1463774 m!1703243))

(declare-fun m!1703245 () Bool)

(assert (=> b!1463774 m!1703245))

(assert (=> b!1463774 m!1703245))

(declare-fun m!1703247 () Bool)

(assert (=> b!1463774 m!1703247))

(assert (=> b!1463774 m!1703243))

(assert (=> b!1463774 m!1703237))

(declare-fun m!1703249 () Bool)

(assert (=> b!1463774 m!1703249))

(declare-fun m!1703251 () Bool)

(assert (=> b!1463774 m!1703251))

(assert (=> b!1463774 m!1703251))

(declare-fun m!1703253 () Bool)

(assert (=> b!1463774 m!1703253))

(assert (=> d!428947 d!429053))

(declare-fun bs!344489 () Bool)

(declare-fun d!429055 () Bool)

(assert (= bs!344489 (and d!429055 d!428849)))

(declare-fun lambda!63330 () Int)

(assert (=> bs!344489 (= lambda!63330 lambda!63326)))

(declare-fun b!1463779 () Bool)

(declare-fun e!933779 () Bool)

(assert (=> b!1463779 (= e!933779 true)))

(declare-fun b!1463778 () Bool)

(declare-fun e!933778 () Bool)

(assert (=> b!1463778 (= e!933778 e!933779)))

(declare-fun b!1463777 () Bool)

(declare-fun e!933777 () Bool)

(assert (=> b!1463777 (= e!933777 e!933778)))

(assert (=> d!429055 e!933777))

(assert (= b!1463778 b!1463779))

(assert (= b!1463777 b!1463778))

(assert (= (and d!429055 ((_ is Cons!15189) (rules!11706 thiss!10022))) b!1463777))

(assert (=> b!1463779 (< (dynLambda!6933 order!9151 (toValue!3986 (transformation!2675 (h!20590 (rules!11706 thiss!10022))))) (dynLambda!6934 order!9153 lambda!63330))))

(assert (=> b!1463779 (< (dynLambda!6935 order!9155 (toChars!3845 (transformation!2675 (h!20590 (rules!11706 thiss!10022))))) (dynLambda!6934 order!9153 lambda!63330))))

(assert (=> d!429055 true))

(declare-fun lt!507730 () Bool)

(assert (=> d!429055 (= lt!507730 (forall!3744 lt!507165 lambda!63330))))

(declare-fun e!933775 () Bool)

(assert (=> d!429055 (= lt!507730 e!933775)))

(declare-fun res!662551 () Bool)

(assert (=> d!429055 (=> res!662551 e!933775)))

(assert (=> d!429055 (= res!662551 (not ((_ is Cons!15188) lt!507165)))))

(assert (=> d!429055 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!429055 (= (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) lt!507165) lt!507730)))

(declare-fun b!1463775 () Bool)

(declare-fun e!933776 () Bool)

(assert (=> b!1463775 (= e!933775 e!933776)))

(declare-fun res!662552 () Bool)

(assert (=> b!1463775 (=> (not res!662552) (not e!933776))))

(assert (=> b!1463775 (= res!662552 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 lt!507165)))))

(declare-fun b!1463776 () Bool)

(assert (=> b!1463776 (= e!933776 (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) (t!134647 lt!507165)))))

(assert (= (and d!429055 (not res!662551)) b!1463775))

(assert (= (and b!1463775 res!662552) b!1463776))

(declare-fun m!1703255 () Bool)

(assert (=> d!429055 m!1703255))

(assert (=> d!429055 m!1701757))

(declare-fun m!1703257 () Bool)

(assert (=> b!1463775 m!1703257))

(declare-fun m!1703259 () Bool)

(assert (=> b!1463776 m!1703259))

(assert (=> b!1463187 d!429055))

(declare-fun bs!344490 () Bool)

(declare-fun d!429057 () Bool)

(assert (= bs!344490 (and d!429057 d!428849)))

(declare-fun lambda!63331 () Int)

(assert (=> bs!344490 (= lambda!63331 lambda!63326)))

(declare-fun bs!344491 () Bool)

(assert (= bs!344491 (and d!429057 d!429055)))

(assert (=> bs!344491 (= lambda!63331 lambda!63330)))

(declare-fun b!1463784 () Bool)

(declare-fun e!933784 () Bool)

(assert (=> b!1463784 (= e!933784 true)))

(declare-fun b!1463783 () Bool)

(declare-fun e!933783 () Bool)

(assert (=> b!1463783 (= e!933783 e!933784)))

(declare-fun b!1463782 () Bool)

(declare-fun e!933782 () Bool)

(assert (=> b!1463782 (= e!933782 e!933783)))

(assert (=> d!429057 e!933782))

(assert (= b!1463783 b!1463784))

(assert (= b!1463782 b!1463783))

(assert (= (and d!429057 ((_ is Cons!15189) (rules!11706 thiss!10022))) b!1463782))

(assert (=> b!1463784 (< (dynLambda!6933 order!9151 (toValue!3986 (transformation!2675 (h!20590 (rules!11706 thiss!10022))))) (dynLambda!6934 order!9153 lambda!63331))))

(assert (=> b!1463784 (< (dynLambda!6935 order!9155 (toChars!3845 (transformation!2675 (h!20590 (rules!11706 thiss!10022))))) (dynLambda!6934 order!9153 lambda!63331))))

(assert (=> d!429057 true))

(declare-fun lt!507731 () Bool)

(assert (=> d!429057 (= lt!507731 (forall!3744 lt!507186 lambda!63331))))

(declare-fun e!933780 () Bool)

(assert (=> d!429057 (= lt!507731 e!933780)))

(declare-fun res!662553 () Bool)

(assert (=> d!429057 (=> res!662553 e!933780)))

(assert (=> d!429057 (= res!662553 (not ((_ is Cons!15188) lt!507186)))))

(assert (=> d!429057 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!429057 (= (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) lt!507186) lt!507731)))

(declare-fun b!1463780 () Bool)

(declare-fun e!933781 () Bool)

(assert (=> b!1463780 (= e!933780 e!933781)))

(declare-fun res!662554 () Bool)

(assert (=> b!1463780 (=> (not res!662554) (not e!933781))))

(assert (=> b!1463780 (= res!662554 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 lt!507186)))))

(declare-fun b!1463781 () Bool)

(assert (=> b!1463781 (= e!933781 (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) (t!134647 lt!507186)))))

(assert (= (and d!429057 (not res!662553)) b!1463780))

(assert (= (and b!1463780 res!662554) b!1463781))

(declare-fun m!1703261 () Bool)

(assert (=> d!429057 m!1703261))

(assert (=> d!429057 m!1701757))

(declare-fun m!1703263 () Bool)

(assert (=> b!1463780 m!1703263))

(declare-fun m!1703265 () Bool)

(assert (=> b!1463781 m!1703265))

(assert (=> d!428819 d!429057))

(declare-fun d!429059 () Bool)

(assert (=> d!429059 (= (dropList!483 lt!507005 0) (drop!745 (list!6086 (c!241182 lt!507005)) 0))))

(declare-fun bs!344492 () Bool)

(assert (= bs!344492 d!429059))

(assert (=> bs!344492 m!1702829))

(assert (=> bs!344492 m!1702829))

(declare-fun m!1703267 () Bool)

(assert (=> bs!344492 m!1703267))

(assert (=> d!428819 d!429059))

(declare-fun d!429061 () Bool)

(declare-fun lt!507739 () Int)

(assert (=> d!429061 (= lt!507739 (size!12424 (list!6083 lt!507005)))))

(declare-fun size!12431 (Conc!5177) Int)

(assert (=> d!429061 (= lt!507739 (size!12431 (c!241182 lt!507005)))))

(assert (=> d!429061 (= (size!12423 lt!507005) lt!507739)))

(declare-fun bs!344493 () Bool)

(assert (= bs!344493 d!429061))

(assert (=> bs!344493 m!1701641))

(assert (=> bs!344493 m!1701641))

(declare-fun m!1703303 () Bool)

(assert (=> bs!344493 m!1703303))

(declare-fun m!1703305 () Bool)

(assert (=> bs!344493 m!1703305))

(assert (=> d!428819 d!429061))

(declare-fun d!429065 () Bool)

(assert (=> d!429065 (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) lt!507186)))

(declare-fun lt!507748 () Unit!24509)

(declare-fun choose!9006 (LexerInterface!2331 List!15255 List!15254 List!15254) Unit!24509)

(assert (=> d!429065 (= lt!507748 (choose!9006 Lexer!2329 (rules!11706 thiss!10022) lt!507165 lt!507186))))

(assert (=> d!429065 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!429065 (= (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!63 Lexer!2329 (rules!11706 thiss!10022) lt!507165 lt!507186) lt!507748)))

(declare-fun bs!344496 () Bool)

(assert (= bs!344496 d!429065))

(assert (=> bs!344496 m!1701927))

(declare-fun m!1703327 () Bool)

(assert (=> bs!344496 m!1703327))

(assert (=> bs!344496 m!1701757))

(assert (=> d!428819 d!429065))

(declare-fun d!429073 () Bool)

(declare-fun res!662572 () Bool)

(declare-fun e!933798 () Bool)

(assert (=> d!429073 (=> res!662572 e!933798)))

(assert (=> d!429073 (= res!662572 (or (not ((_ is Cons!15188) (dropList!483 lt!507005 0))) (not ((_ is Cons!15188) (t!134647 (dropList!483 lt!507005 0))))))))

(assert (=> d!429073 (= (tokensListTwoByTwoPredicateSeparableList!249 Lexer!2329 (dropList!483 lt!507005 0) (rules!11706 thiss!10022)) e!933798)))

(declare-fun b!1463809 () Bool)

(declare-fun e!933797 () Bool)

(assert (=> b!1463809 (= e!933798 e!933797)))

(declare-fun res!662571 () Bool)

(assert (=> b!1463809 (=> (not res!662571) (not e!933797))))

(assert (=> b!1463809 (= res!662571 (separableTokensPredicate!540 Lexer!2329 (h!20589 (dropList!483 lt!507005 0)) (h!20589 (t!134647 (dropList!483 lt!507005 0))) (rules!11706 thiss!10022)))))

(declare-fun lt!507751 () Unit!24509)

(declare-fun Unit!24611 () Unit!24509)

(assert (=> b!1463809 (= lt!507751 Unit!24611)))

(assert (=> b!1463809 (> (size!12425 (charsOf!1538 (h!20589 (t!134647 (dropList!483 lt!507005 0))))) 0)))

(declare-fun lt!507755 () Unit!24509)

(declare-fun Unit!24612 () Unit!24509)

(assert (=> b!1463809 (= lt!507755 Unit!24612)))

(assert (=> b!1463809 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 (t!134647 (dropList!483 lt!507005 0))))))

(declare-fun lt!507750 () Unit!24509)

(declare-fun Unit!24613 () Unit!24509)

(assert (=> b!1463809 (= lt!507750 Unit!24613)))

(assert (=> b!1463809 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 (dropList!483 lt!507005 0)))))

(declare-fun lt!507753 () Unit!24509)

(declare-fun lt!507749 () Unit!24509)

(assert (=> b!1463809 (= lt!507753 lt!507749)))

(assert (=> b!1463809 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 (t!134647 (dropList!483 lt!507005 0))))))

(assert (=> b!1463809 (= lt!507749 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!433 Lexer!2329 (rules!11706 thiss!10022) (dropList!483 lt!507005 0) (h!20589 (t!134647 (dropList!483 lt!507005 0)))))))

(declare-fun lt!507754 () Unit!24509)

(declare-fun lt!507752 () Unit!24509)

(assert (=> b!1463809 (= lt!507754 lt!507752)))

(assert (=> b!1463809 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 (dropList!483 lt!507005 0)))))

(assert (=> b!1463809 (= lt!507752 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!433 Lexer!2329 (rules!11706 thiss!10022) (dropList!483 lt!507005 0) (h!20589 (dropList!483 lt!507005 0))))))

(declare-fun b!1463810 () Bool)

(assert (=> b!1463810 (= e!933797 (tokensListTwoByTwoPredicateSeparableList!249 Lexer!2329 (Cons!15188 (h!20589 (t!134647 (dropList!483 lt!507005 0))) (t!134647 (t!134647 (dropList!483 lt!507005 0)))) (rules!11706 thiss!10022)))))

(assert (= (and d!429073 (not res!662572)) b!1463809))

(assert (= (and b!1463809 res!662571) b!1463810))

(declare-fun m!1703329 () Bool)

(assert (=> b!1463809 m!1703329))

(declare-fun m!1703331 () Bool)

(assert (=> b!1463809 m!1703331))

(declare-fun m!1703333 () Bool)

(assert (=> b!1463809 m!1703333))

(assert (=> b!1463809 m!1703329))

(declare-fun m!1703335 () Bool)

(assert (=> b!1463809 m!1703335))

(assert (=> b!1463809 m!1701919))

(declare-fun m!1703337 () Bool)

(assert (=> b!1463809 m!1703337))

(declare-fun m!1703339 () Bool)

(assert (=> b!1463809 m!1703339))

(assert (=> b!1463809 m!1701919))

(declare-fun m!1703341 () Bool)

(assert (=> b!1463809 m!1703341))

(declare-fun m!1703343 () Bool)

(assert (=> b!1463810 m!1703343))

(assert (=> d!428819 d!429073))

(declare-fun b!1463832 () Bool)

(declare-fun e!933815 () List!15254)

(assert (=> b!1463832 (= e!933815 lt!507158)))

(declare-fun b!1463833 () Bool)

(declare-fun e!933813 () Int)

(assert (=> b!1463833 (= e!933813 0)))

(declare-fun b!1463834 () Bool)

(declare-fun call!98475 () Int)

(assert (=> b!1463834 (= e!933813 (- call!98475 0))))

(declare-fun b!1463835 () Bool)

(declare-fun e!933814 () List!15254)

(assert (=> b!1463835 (= e!933814 Nil!15188)))

(declare-fun b!1463836 () Bool)

(assert (=> b!1463836 (= e!933814 e!933815)))

(declare-fun c!241317 () Bool)

(assert (=> b!1463836 (= c!241317 (<= 0 0))))

(declare-fun d!429075 () Bool)

(declare-fun e!933816 () Bool)

(assert (=> d!429075 e!933816))

(declare-fun res!662578 () Bool)

(assert (=> d!429075 (=> (not res!662578) (not e!933816))))

(declare-fun lt!507761 () List!15254)

(assert (=> d!429075 (= res!662578 (= ((_ map implies) (content!2245 lt!507761) (content!2245 lt!507158)) ((as const (InoxSet Token!5012)) true)))))

(assert (=> d!429075 (= lt!507761 e!933814)))

(declare-fun c!241318 () Bool)

(assert (=> d!429075 (= c!241318 ((_ is Nil!15188) lt!507158))))

(assert (=> d!429075 (= (drop!745 lt!507158 0) lt!507761)))

(declare-fun b!1463837 () Bool)

(declare-fun e!933812 () Int)

(assert (=> b!1463837 (= e!933816 (= (size!12424 lt!507761) e!933812))))

(declare-fun c!241319 () Bool)

(assert (=> b!1463837 (= c!241319 (<= 0 0))))

(declare-fun b!1463838 () Bool)

(assert (=> b!1463838 (= e!933812 call!98475)))

(declare-fun bm!98470 () Bool)

(assert (=> bm!98470 (= call!98475 (size!12424 lt!507158))))

(declare-fun b!1463839 () Bool)

(assert (=> b!1463839 (= e!933812 e!933813)))

(declare-fun c!241320 () Bool)

(assert (=> b!1463839 (= c!241320 (>= 0 call!98475))))

(declare-fun b!1463840 () Bool)

(assert (=> b!1463840 (= e!933815 (drop!745 (t!134647 lt!507158) (- 0 1)))))

(assert (= (and d!429075 c!241318) b!1463835))

(assert (= (and d!429075 (not c!241318)) b!1463836))

(assert (= (and b!1463836 c!241317) b!1463832))

(assert (= (and b!1463836 (not c!241317)) b!1463840))

(assert (= (and d!429075 res!662578) b!1463837))

(assert (= (and b!1463837 c!241319) b!1463838))

(assert (= (and b!1463837 (not c!241319)) b!1463839))

(assert (= (and b!1463839 c!241320) b!1463833))

(assert (= (and b!1463839 (not c!241320)) b!1463834))

(assert (= (or b!1463838 b!1463839 b!1463834) bm!98470))

(declare-fun m!1703355 () Bool)

(assert (=> d!429075 m!1703355))

(declare-fun m!1703357 () Bool)

(assert (=> d!429075 m!1703357))

(declare-fun m!1703359 () Bool)

(assert (=> b!1463837 m!1703359))

(assert (=> bm!98470 m!1701937))

(declare-fun m!1703361 () Bool)

(assert (=> b!1463840 m!1703361))

(assert (=> d!428819 d!429075))

(assert (=> d!428819 d!428943))

(declare-fun d!429081 () Bool)

(assert (=> d!429081 (subseq!368 (drop!745 lt!507158 0) lt!507158)))

(declare-fun lt!507764 () Unit!24509)

(declare-fun choose!9008 (List!15254 Int) Unit!24509)

(assert (=> d!429081 (= lt!507764 (choose!9008 lt!507158 0))))

(declare-fun e!933819 () Bool)

(assert (=> d!429081 e!933819))

(declare-fun res!662581 () Bool)

(assert (=> d!429081 (=> (not res!662581) (not e!933819))))

(assert (=> d!429081 (= res!662581 (>= 0 0))))

(assert (=> d!429081 (= (lemmaDropSubSeq!63 lt!507158 0) lt!507764)))

(declare-fun b!1463843 () Bool)

(assert (=> b!1463843 (= e!933819 (<= 0 (size!12424 lt!507158)))))

(assert (= (and d!429081 res!662581) b!1463843))

(assert (=> d!429081 m!1701923))

(assert (=> d!429081 m!1701923))

(assert (=> d!429081 m!1701925))

(declare-fun m!1703363 () Bool)

(assert (=> d!429081 m!1703363))

(assert (=> b!1463843 m!1701937))

(assert (=> d!428819 d!429081))

(declare-fun b!1463855 () Bool)

(declare-fun e!933829 () Bool)

(assert (=> b!1463855 (= e!933829 (subseq!368 (drop!745 lt!507158 0) (t!134647 lt!507158)))))

(declare-fun b!1463852 () Bool)

(declare-fun e!933828 () Bool)

(declare-fun e!933830 () Bool)

(assert (=> b!1463852 (= e!933828 e!933830)))

(declare-fun res!662591 () Bool)

(assert (=> b!1463852 (=> (not res!662591) (not e!933830))))

(assert (=> b!1463852 (= res!662591 ((_ is Cons!15188) lt!507158))))

(declare-fun d!429083 () Bool)

(declare-fun res!662592 () Bool)

(assert (=> d!429083 (=> res!662592 e!933828)))

(assert (=> d!429083 (= res!662592 ((_ is Nil!15188) (drop!745 lt!507158 0)))))

(assert (=> d!429083 (= (subseq!368 (drop!745 lt!507158 0) lt!507158) e!933828)))

(declare-fun b!1463854 () Bool)

(declare-fun e!933831 () Bool)

(assert (=> b!1463854 (= e!933831 (subseq!368 (t!134647 (drop!745 lt!507158 0)) (t!134647 lt!507158)))))

(declare-fun b!1463853 () Bool)

(assert (=> b!1463853 (= e!933830 e!933829)))

(declare-fun res!662593 () Bool)

(assert (=> b!1463853 (=> res!662593 e!933829)))

(assert (=> b!1463853 (= res!662593 e!933831)))

(declare-fun res!662590 () Bool)

(assert (=> b!1463853 (=> (not res!662590) (not e!933831))))

(assert (=> b!1463853 (= res!662590 (= (h!20589 (drop!745 lt!507158 0)) (h!20589 lt!507158)))))

(assert (= (and d!429083 (not res!662592)) b!1463852))

(assert (= (and b!1463852 res!662591) b!1463853))

(assert (= (and b!1463853 res!662590) b!1463854))

(assert (= (and b!1463853 (not res!662593)) b!1463855))

(assert (=> b!1463855 m!1701923))

(declare-fun m!1703365 () Bool)

(assert (=> b!1463855 m!1703365))

(declare-fun m!1703367 () Bool)

(assert (=> b!1463854 m!1703367))

(assert (=> d!428819 d!429083))

(declare-fun d!429085 () Bool)

(declare-fun res!662596 () Bool)

(declare-fun e!933834 () Bool)

(assert (=> d!429085 (=> (not res!662596) (not e!933834))))

(declare-fun rulesValid!991 (LexerInterface!2331 List!15255) Bool)

(assert (=> d!429085 (= res!662596 (rulesValid!991 Lexer!2329 (rules!11706 other!32)))))

(assert (=> d!429085 (= (rulesInvariant!2164 Lexer!2329 (rules!11706 other!32)) e!933834)))

(declare-fun b!1463858 () Bool)

(declare-datatypes ((List!15256 0))(
  ( (Nil!15190) (Cons!15190 (h!20591 String!18081) (t!134947 List!15256)) )
))
(declare-fun noDuplicateTag!991 (LexerInterface!2331 List!15255 List!15256) Bool)

(assert (=> b!1463858 (= e!933834 (noDuplicateTag!991 Lexer!2329 (rules!11706 other!32) Nil!15190))))

(assert (= (and d!429085 res!662596) b!1463858))

(declare-fun m!1703369 () Bool)

(assert (=> d!429085 m!1703369))

(declare-fun m!1703371 () Bool)

(assert (=> b!1463858 m!1703371))

(assert (=> b!1463143 d!429085))

(declare-fun d!429087 () Bool)

(declare-fun e!933837 () Bool)

(assert (=> d!429087 e!933837))

(declare-fun res!662599 () Bool)

(assert (=> d!429087 (=> (not res!662599) (not e!933837))))

(declare-fun lt!507767 () BalanceConc!10294)

(assert (=> d!429087 (= res!662599 (= (list!6083 lt!507767) (Cons!15188 lt!507004 Nil!15188)))))

(declare-fun singleton!539 (Token!5012) BalanceConc!10294)

(assert (=> d!429087 (= lt!507767 (singleton!539 lt!507004))))

(assert (=> d!429087 (= (singletonSeq!1281 lt!507004) lt!507767)))

(declare-fun b!1463861 () Bool)

(assert (=> b!1463861 (= e!933837 (isBalanced!1555 (c!241182 lt!507767)))))

(assert (= (and d!429087 res!662599) b!1463861))

(declare-fun m!1703373 () Bool)

(assert (=> d!429087 m!1703373))

(declare-fun m!1703375 () Bool)

(assert (=> d!429087 m!1703375))

(declare-fun m!1703377 () Bool)

(assert (=> b!1463861 m!1703377))

(assert (=> d!428893 d!429087))

(declare-fun d!429089 () Bool)

(assert (=> d!429089 (= (list!6083 (singletonSeq!1281 lt!507004)) (list!6086 (c!241182 (singletonSeq!1281 lt!507004))))))

(declare-fun bs!344498 () Bool)

(assert (= bs!344498 d!429089))

(declare-fun m!1703379 () Bool)

(assert (=> bs!344498 m!1703379))

(assert (=> d!428893 d!429089))

(declare-fun d!429091 () Bool)

(assert (=> d!429091 (= (isEmpty!9541 (rules!11706 thiss!10022)) ((_ is Nil!15189) (rules!11706 thiss!10022)))))

(assert (=> d!428893 d!429091))

(declare-fun d!429093 () Bool)

(declare-fun lt!507768 () Int)

(assert (=> d!429093 (= lt!507768 (size!12424 (list!6083 (_1!8014 lt!507415))))))

(assert (=> d!429093 (= lt!507768 (size!12431 (c!241182 (_1!8014 lt!507415))))))

(assert (=> d!429093 (= (size!12423 (_1!8014 lt!507415)) lt!507768)))

(declare-fun bs!344499 () Bool)

(assert (= bs!344499 d!429093))

(declare-fun m!1703381 () Bool)

(assert (=> bs!344499 m!1703381))

(assert (=> bs!344499 m!1703381))

(declare-fun m!1703383 () Bool)

(assert (=> bs!344499 m!1703383))

(declare-fun m!1703385 () Bool)

(assert (=> bs!344499 m!1703385))

(assert (=> d!428893 d!429093))

(declare-fun d!429095 () Bool)

(declare-fun lt!507769 () BalanceConc!10292)

(assert (=> d!429095 (= (list!6087 lt!507769) (printList!727 Lexer!2329 (list!6083 (singletonSeq!1281 lt!507004))))))

(assert (=> d!429095 (= lt!507769 (printTailRec!699 Lexer!2329 (singletonSeq!1281 lt!507004) 0 (BalanceConc!10293 Empty!5176)))))

(assert (=> d!429095 (= (print!1107 Lexer!2329 (singletonSeq!1281 lt!507004)) lt!507769)))

(declare-fun bs!344500 () Bool)

(assert (= bs!344500 d!429095))

(declare-fun m!1703387 () Bool)

(assert (=> bs!344500 m!1703387))

(assert (=> bs!344500 m!1702379))

(assert (=> bs!344500 m!1702387))

(assert (=> bs!344500 m!1702387))

(declare-fun m!1703389 () Bool)

(assert (=> bs!344500 m!1703389))

(assert (=> bs!344500 m!1702379))

(declare-fun m!1703391 () Bool)

(assert (=> bs!344500 m!1703391))

(assert (=> d!428893 d!429095))

(declare-fun d!429097 () Bool)

(assert (=> d!429097 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!507004))))) (list!6086 (c!241182 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!507004)))))))))

(declare-fun bs!344501 () Bool)

(assert (= bs!344501 d!429097))

(declare-fun m!1703393 () Bool)

(assert (=> bs!344501 m!1703393))

(assert (=> d!428893 d!429097))

(declare-fun e!933840 () Bool)

(declare-fun b!1463862 () Bool)

(declare-fun lt!507770 () tuple2!14256)

(assert (=> b!1463862 (= e!933840 (= (list!6087 (_2!8014 lt!507770)) (_2!8016 (lexList!717 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (print!1107 Lexer!2329 (singletonSeq!1281 lt!507004)))))))))

(declare-fun b!1463863 () Bool)

(declare-fun e!933838 () Bool)

(assert (=> b!1463863 (= e!933838 (not (isEmpty!9535 (_1!8014 lt!507770))))))

(declare-fun b!1463864 () Bool)

(declare-fun e!933839 () Bool)

(assert (=> b!1463864 (= e!933839 (= (_2!8014 lt!507770) (print!1107 Lexer!2329 (singletonSeq!1281 lt!507004))))))

(declare-fun b!1463865 () Bool)

(declare-fun res!662600 () Bool)

(assert (=> b!1463865 (=> (not res!662600) (not e!933840))))

(assert (=> b!1463865 (= res!662600 (= (list!6083 (_1!8014 lt!507770)) (_1!8016 (lexList!717 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (print!1107 Lexer!2329 (singletonSeq!1281 lt!507004)))))))))

(declare-fun d!429099 () Bool)

(assert (=> d!429099 e!933840))

(declare-fun res!662602 () Bool)

(assert (=> d!429099 (=> (not res!662602) (not e!933840))))

(assert (=> d!429099 (= res!662602 e!933839)))

(declare-fun c!241321 () Bool)

(assert (=> d!429099 (= c!241321 (> (size!12423 (_1!8014 lt!507770)) 0))))

(assert (=> d!429099 (= lt!507770 (lexTailRecV2!472 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!507004)) (BalanceConc!10293 Empty!5176) (print!1107 Lexer!2329 (singletonSeq!1281 lt!507004)) (BalanceConc!10295 Empty!5177)))))

(assert (=> d!429099 (= (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!507004))) lt!507770)))

(declare-fun b!1463866 () Bool)

(assert (=> b!1463866 (= e!933839 e!933838)))

(declare-fun res!662601 () Bool)

(assert (=> b!1463866 (= res!662601 (< (size!12425 (_2!8014 lt!507770)) (size!12425 (print!1107 Lexer!2329 (singletonSeq!1281 lt!507004)))))))

(assert (=> b!1463866 (=> (not res!662601) (not e!933838))))

(assert (= (and d!429099 c!241321) b!1463866))

(assert (= (and d!429099 (not c!241321)) b!1463864))

(assert (= (and b!1463866 res!662601) b!1463863))

(assert (= (and d!429099 res!662602) b!1463865))

(assert (= (and b!1463865 res!662600) b!1463862))

(declare-fun m!1703395 () Bool)

(assert (=> b!1463866 m!1703395))

(assert (=> b!1463866 m!1702381))

(declare-fun m!1703397 () Bool)

(assert (=> b!1463866 m!1703397))

(declare-fun m!1703399 () Bool)

(assert (=> b!1463865 m!1703399))

(assert (=> b!1463865 m!1702381))

(declare-fun m!1703401 () Bool)

(assert (=> b!1463865 m!1703401))

(assert (=> b!1463865 m!1703401))

(declare-fun m!1703403 () Bool)

(assert (=> b!1463865 m!1703403))

(declare-fun m!1703405 () Bool)

(assert (=> b!1463863 m!1703405))

(declare-fun m!1703407 () Bool)

(assert (=> b!1463862 m!1703407))

(assert (=> b!1463862 m!1702381))

(assert (=> b!1463862 m!1703401))

(assert (=> b!1463862 m!1703401))

(assert (=> b!1463862 m!1703403))

(declare-fun m!1703409 () Bool)

(assert (=> d!429099 m!1703409))

(assert (=> d!429099 m!1702381))

(assert (=> d!429099 m!1702381))

(declare-fun m!1703411 () Bool)

(assert (=> d!429099 m!1703411))

(assert (=> d!428893 d!429099))

(declare-fun d!429101 () Bool)

(assert (=> d!429101 (= (list!6083 lt!507266) (list!6086 (c!241182 lt!507266)))))

(declare-fun bs!344502 () Bool)

(assert (= bs!344502 d!429101))

(declare-fun m!1703413 () Bool)

(assert (=> bs!344502 m!1703413))

(assert (=> b!1463212 d!429101))

(declare-fun d!429103 () Bool)

(declare-fun e!933841 () Bool)

(assert (=> d!429103 e!933841))

(declare-fun res!662603 () Bool)

(assert (=> d!429103 (=> (not res!662603) (not e!933841))))

(declare-fun lt!507771 () List!15254)

(assert (=> d!429103 (= res!662603 (= (content!2245 lt!507771) ((_ map or) (content!2245 (list!6083 (tokens!2112 thiss!10022))) (content!2245 (list!6083 (tokens!2112 other!32))))))))

(declare-fun e!933842 () List!15254)

(assert (=> d!429103 (= lt!507771 e!933842)))

(declare-fun c!241322 () Bool)

(assert (=> d!429103 (= c!241322 ((_ is Nil!15188) (list!6083 (tokens!2112 thiss!10022))))))

(assert (=> d!429103 (= (++!4092 (list!6083 (tokens!2112 thiss!10022)) (list!6083 (tokens!2112 other!32))) lt!507771)))

(declare-fun b!1463869 () Bool)

(declare-fun res!662604 () Bool)

(assert (=> b!1463869 (=> (not res!662604) (not e!933841))))

(assert (=> b!1463869 (= res!662604 (= (size!12424 lt!507771) (+ (size!12424 (list!6083 (tokens!2112 thiss!10022))) (size!12424 (list!6083 (tokens!2112 other!32))))))))

(declare-fun b!1463870 () Bool)

(assert (=> b!1463870 (= e!933841 (or (not (= (list!6083 (tokens!2112 other!32)) Nil!15188)) (= lt!507771 (list!6083 (tokens!2112 thiss!10022)))))))

(declare-fun b!1463867 () Bool)

(assert (=> b!1463867 (= e!933842 (list!6083 (tokens!2112 other!32)))))

(declare-fun b!1463868 () Bool)

(assert (=> b!1463868 (= e!933842 (Cons!15188 (h!20589 (list!6083 (tokens!2112 thiss!10022))) (++!4092 (t!134647 (list!6083 (tokens!2112 thiss!10022))) (list!6083 (tokens!2112 other!32)))))))

(assert (= (and d!429103 c!241322) b!1463867))

(assert (= (and d!429103 (not c!241322)) b!1463868))

(assert (= (and d!429103 res!662603) b!1463869))

(assert (= (and b!1463869 res!662604) b!1463870))

(declare-fun m!1703415 () Bool)

(assert (=> d!429103 m!1703415))

(assert (=> d!429103 m!1701677))

(declare-fun m!1703417 () Bool)

(assert (=> d!429103 m!1703417))

(assert (=> d!429103 m!1701681))

(declare-fun m!1703419 () Bool)

(assert (=> d!429103 m!1703419))

(declare-fun m!1703421 () Bool)

(assert (=> b!1463869 m!1703421))

(assert (=> b!1463869 m!1701677))

(declare-fun m!1703423 () Bool)

(assert (=> b!1463869 m!1703423))

(assert (=> b!1463869 m!1701681))

(declare-fun m!1703425 () Bool)

(assert (=> b!1463869 m!1703425))

(assert (=> b!1463868 m!1701681))

(declare-fun m!1703427 () Bool)

(assert (=> b!1463868 m!1703427))

(assert (=> b!1463212 d!429103))

(assert (=> b!1463212 d!428891))

(assert (=> b!1463212 d!428885))

(declare-fun d!429105 () Bool)

(declare-fun lt!507772 () Bool)

(declare-fun e!933844 () Bool)

(assert (=> d!429105 (= lt!507772 e!933844)))

(declare-fun res!662605 () Bool)

(assert (=> d!429105 (=> (not res!662605) (not e!933844))))

(assert (=> d!429105 (= res!662605 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 (h!20589 lt!506991)))))) (list!6083 (singletonSeq!1281 (h!20589 lt!506991)))))))

(declare-fun e!933843 () Bool)

(assert (=> d!429105 (= lt!507772 e!933843)))

(declare-fun res!662607 () Bool)

(assert (=> d!429105 (=> (not res!662607) (not e!933843))))

(declare-fun lt!507773 () tuple2!14256)

(assert (=> d!429105 (= res!662607 (= (size!12423 (_1!8014 lt!507773)) 1))))

(assert (=> d!429105 (= lt!507773 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 (h!20589 lt!506991)))))))

(assert (=> d!429105 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!429105 (= (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 lt!506991)) lt!507772)))

(declare-fun b!1463871 () Bool)

(declare-fun res!662606 () Bool)

(assert (=> b!1463871 (=> (not res!662606) (not e!933843))))

(assert (=> b!1463871 (= res!662606 (= (apply!3965 (_1!8014 lt!507773) 0) (h!20589 lt!506991)))))

(declare-fun b!1463872 () Bool)

(assert (=> b!1463872 (= e!933843 (isEmpty!9544 (_2!8014 lt!507773)))))

(declare-fun b!1463873 () Bool)

(assert (=> b!1463873 (= e!933844 (isEmpty!9544 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 (h!20589 lt!506991)))))))))

(assert (= (and d!429105 res!662607) b!1463871))

(assert (= (and b!1463871 res!662606) b!1463872))

(assert (= (and d!429105 res!662605) b!1463873))

(assert (=> d!429105 m!1701757))

(declare-fun m!1703429 () Bool)

(assert (=> d!429105 m!1703429))

(declare-fun m!1703431 () Bool)

(assert (=> d!429105 m!1703431))

(assert (=> d!429105 m!1703431))

(declare-fun m!1703433 () Bool)

(assert (=> d!429105 m!1703433))

(declare-fun m!1703435 () Bool)

(assert (=> d!429105 m!1703435))

(assert (=> d!429105 m!1703429))

(declare-fun m!1703437 () Bool)

(assert (=> d!429105 m!1703437))

(declare-fun m!1703439 () Bool)

(assert (=> d!429105 m!1703439))

(assert (=> d!429105 m!1703429))

(declare-fun m!1703441 () Bool)

(assert (=> b!1463871 m!1703441))

(declare-fun m!1703443 () Bool)

(assert (=> b!1463872 m!1703443))

(assert (=> b!1463873 m!1703429))

(assert (=> b!1463873 m!1703429))

(assert (=> b!1463873 m!1703431))

(assert (=> b!1463873 m!1703431))

(assert (=> b!1463873 m!1703433))

(declare-fun m!1703445 () Bool)

(assert (=> b!1463873 m!1703445))

(assert (=> b!1463259 d!429105))

(declare-fun d!429107 () Bool)

(declare-fun lt!507776 () C!8156)

(declare-fun apply!3972 (List!15252 Int) C!8156)

(assert (=> d!429107 (= lt!507776 (apply!3972 (list!6087 (charsOf!1538 (h!20589 (t!134647 (list!6083 lt!507005))))) 0))))

(declare-fun apply!3973 (Conc!5176 Int) C!8156)

(assert (=> d!429107 (= lt!507776 (apply!3973 (c!241180 (charsOf!1538 (h!20589 (t!134647 (list!6083 lt!507005))))) 0))))

(declare-fun e!933847 () Bool)

(assert (=> d!429107 e!933847))

(declare-fun res!662610 () Bool)

(assert (=> d!429107 (=> (not res!662610) (not e!933847))))

(assert (=> d!429107 (= res!662610 (<= 0 0))))

(assert (=> d!429107 (= (apply!3969 (charsOf!1538 (h!20589 (t!134647 (list!6083 lt!507005)))) 0) lt!507776)))

(declare-fun b!1463876 () Bool)

(assert (=> b!1463876 (= e!933847 (< 0 (size!12425 (charsOf!1538 (h!20589 (t!134647 (list!6083 lt!507005)))))))))

(assert (= (and d!429107 res!662610) b!1463876))

(assert (=> d!429107 m!1702577))

(declare-fun m!1703447 () Bool)

(assert (=> d!429107 m!1703447))

(assert (=> d!429107 m!1703447))

(declare-fun m!1703449 () Bool)

(assert (=> d!429107 m!1703449))

(declare-fun m!1703451 () Bool)

(assert (=> d!429107 m!1703451))

(assert (=> b!1463876 m!1702577))

(declare-fun m!1703453 () Bool)

(assert (=> b!1463876 m!1703453))

(assert (=> b!1463437 d!429107))

(declare-fun d!429109 () Bool)

(declare-fun lt!507777 () BalanceConc!10292)

(assert (=> d!429109 (= (list!6087 lt!507777) (printList!727 Lexer!2329 (list!6083 (singletonSeq!1281 (h!20589 (list!6083 lt!507005))))))))

(assert (=> d!429109 (= lt!507777 (printTailRec!699 Lexer!2329 (singletonSeq!1281 (h!20589 (list!6083 lt!507005))) 0 (BalanceConc!10293 Empty!5176)))))

(assert (=> d!429109 (= (print!1107 Lexer!2329 (singletonSeq!1281 (h!20589 (list!6083 lt!507005)))) lt!507777)))

(declare-fun bs!344503 () Bool)

(assert (= bs!344503 d!429109))

(declare-fun m!1703455 () Bool)

(assert (=> bs!344503 m!1703455))

(assert (=> bs!344503 m!1702567))

(declare-fun m!1703457 () Bool)

(assert (=> bs!344503 m!1703457))

(assert (=> bs!344503 m!1703457))

(declare-fun m!1703459 () Bool)

(assert (=> bs!344503 m!1703459))

(assert (=> bs!344503 m!1702567))

(assert (=> bs!344503 m!1702583))

(assert (=> b!1463437 d!429109))

(declare-fun d!429111 () Bool)

(assert (=> d!429111 (= (list!6087 lt!507525) (list!6088 (c!241180 lt!507525)))))

(declare-fun bs!344504 () Bool)

(assert (= bs!344504 d!429111))

(declare-fun m!1703461 () Bool)

(assert (=> bs!344504 m!1703461))

(assert (=> b!1463437 d!429111))

(declare-fun e!933850 () Bool)

(declare-fun b!1463877 () Bool)

(declare-fun lt!507778 () tuple2!14256)

(assert (=> b!1463877 (= e!933850 (= (list!6087 (_2!8014 lt!507778)) (_2!8016 (lexList!717 Lexer!2329 (rules!11706 thiss!10022) (list!6087 lt!507525)))))))

(declare-fun b!1463878 () Bool)

(declare-fun e!933848 () Bool)

(assert (=> b!1463878 (= e!933848 (not (isEmpty!9535 (_1!8014 lt!507778))))))

(declare-fun b!1463879 () Bool)

(declare-fun e!933849 () Bool)

(assert (=> b!1463879 (= e!933849 (= (_2!8014 lt!507778) lt!507525))))

(declare-fun b!1463880 () Bool)

(declare-fun res!662611 () Bool)

(assert (=> b!1463880 (=> (not res!662611) (not e!933850))))

(assert (=> b!1463880 (= res!662611 (= (list!6083 (_1!8014 lt!507778)) (_1!8016 (lexList!717 Lexer!2329 (rules!11706 thiss!10022) (list!6087 lt!507525)))))))

(declare-fun d!429113 () Bool)

(assert (=> d!429113 e!933850))

(declare-fun res!662613 () Bool)

(assert (=> d!429113 (=> (not res!662613) (not e!933850))))

(assert (=> d!429113 (= res!662613 e!933849)))

(declare-fun c!241323 () Bool)

(assert (=> d!429113 (= c!241323 (> (size!12423 (_1!8014 lt!507778)) 0))))

(assert (=> d!429113 (= lt!507778 (lexTailRecV2!472 Lexer!2329 (rules!11706 thiss!10022) lt!507525 (BalanceConc!10293 Empty!5176) lt!507525 (BalanceConc!10295 Empty!5177)))))

(assert (=> d!429113 (= (lex!1076 Lexer!2329 (rules!11706 thiss!10022) lt!507525) lt!507778)))

(declare-fun b!1463881 () Bool)

(assert (=> b!1463881 (= e!933849 e!933848)))

(declare-fun res!662612 () Bool)

(assert (=> b!1463881 (= res!662612 (< (size!12425 (_2!8014 lt!507778)) (size!12425 lt!507525)))))

(assert (=> b!1463881 (=> (not res!662612) (not e!933848))))

(assert (= (and d!429113 c!241323) b!1463881))

(assert (= (and d!429113 (not c!241323)) b!1463879))

(assert (= (and b!1463881 res!662612) b!1463878))

(assert (= (and d!429113 res!662613) b!1463880))

(assert (= (and b!1463880 res!662611) b!1463877))

(declare-fun m!1703463 () Bool)

(assert (=> b!1463881 m!1703463))

(declare-fun m!1703465 () Bool)

(assert (=> b!1463881 m!1703465))

(declare-fun m!1703467 () Bool)

(assert (=> b!1463880 m!1703467))

(assert (=> b!1463880 m!1702591))

(assert (=> b!1463880 m!1702591))

(declare-fun m!1703469 () Bool)

(assert (=> b!1463880 m!1703469))

(declare-fun m!1703471 () Bool)

(assert (=> b!1463878 m!1703471))

(declare-fun m!1703473 () Bool)

(assert (=> b!1463877 m!1703473))

(assert (=> b!1463877 m!1702591))

(assert (=> b!1463877 m!1702591))

(assert (=> b!1463877 m!1703469))

(declare-fun m!1703475 () Bool)

(assert (=> d!429113 m!1703475))

(declare-fun m!1703477 () Bool)

(assert (=> d!429113 m!1703477))

(assert (=> b!1463437 d!429113))

(declare-fun d!429115 () Bool)

(declare-fun isEmpty!9547 (Option!2879) Bool)

(assert (=> d!429115 (= (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))))) (not (isEmpty!9547 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005))))))))))

(declare-fun bs!344505 () Bool)

(assert (= bs!344505 d!429115))

(assert (=> bs!344505 m!1702573))

(declare-fun m!1703479 () Bool)

(assert (=> bs!344505 m!1703479))

(assert (=> b!1463437 d!429115))

(declare-fun d!429117 () Bool)

(assert (=> d!429117 (= (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))) (list!6088 (c!241180 (charsOf!1538 (h!20589 (list!6083 lt!507005))))))))

(declare-fun bs!344506 () Bool)

(assert (= bs!344506 d!429117))

(declare-fun m!1703481 () Bool)

(assert (=> bs!344506 m!1703481))

(assert (=> b!1463437 d!429117))

(declare-fun d!429119 () Bool)

(assert (=> d!429119 (= (head!3024 (originalCharacters!3537 (h!20589 (t!134647 (list!6083 lt!507005))))) (h!20587 (originalCharacters!3537 (h!20589 (t!134647 (list!6083 lt!507005))))))))

(assert (=> b!1463437 d!429119))

(declare-fun d!429121 () Bool)

(assert (=> d!429121 (= (list!6083 (_1!8014 lt!507545)) (list!6083 (prepend!429 (seqFromList!1716 (t!134647 (t!134647 (list!6083 lt!507005)))) (h!20589 (t!134647 (list!6083 lt!507005))))))))

(declare-fun lt!507781 () Unit!24509)

(declare-fun choose!9010 (Token!5012 List!15254 BalanceConc!10294) Unit!24509)

(assert (=> d!429121 (= lt!507781 (choose!9010 (h!20589 (t!134647 (list!6083 lt!507005))) (t!134647 (t!134647 (list!6083 lt!507005))) (_1!8014 lt!507545)))))

(declare-fun $colon$colon!250 (List!15254 Token!5012) List!15254)

(assert (=> d!429121 (= (list!6083 (_1!8014 lt!507545)) (list!6083 (seqFromList!1716 ($colon$colon!250 (t!134647 (t!134647 (list!6083 lt!507005))) (h!20589 (t!134647 (list!6083 lt!507005)))))))))

(assert (=> d!429121 (= (seqFromListBHdTlConstructive!97 (h!20589 (t!134647 (list!6083 lt!507005))) (t!134647 (t!134647 (list!6083 lt!507005))) (_1!8014 lt!507545)) lt!507781)))

(declare-fun bs!344507 () Bool)

(assert (= bs!344507 d!429121))

(assert (=> bs!344507 m!1702585))

(assert (=> bs!344507 m!1702587))

(assert (=> bs!344507 m!1702585))

(declare-fun m!1703483 () Bool)

(assert (=> bs!344507 m!1703483))

(declare-fun m!1703485 () Bool)

(assert (=> bs!344507 m!1703485))

(declare-fun m!1703487 () Bool)

(assert (=> bs!344507 m!1703487))

(declare-fun m!1703489 () Bool)

(assert (=> bs!344507 m!1703489))

(assert (=> bs!344507 m!1703487))

(assert (=> bs!344507 m!1703483))

(assert (=> bs!344507 m!1702603))

(assert (=> bs!344507 m!1702587))

(assert (=> bs!344507 m!1702595))

(assert (=> b!1463437 d!429121))

(declare-fun b!1463890 () Bool)

(declare-fun e!933858 () Bool)

(declare-fun e!933857 () Bool)

(assert (=> b!1463890 (= e!933858 e!933857)))

(declare-fun res!662623 () Bool)

(assert (=> b!1463890 (=> (not res!662623) (not e!933857))))

(assert (=> b!1463890 (= res!662623 (not ((_ is Nil!15186) (++!4093 lt!507526 lt!507527))))))

(declare-fun b!1463891 () Bool)

(declare-fun res!662624 () Bool)

(assert (=> b!1463891 (=> (not res!662624) (not e!933857))))

(assert (=> b!1463891 (= res!662624 (= (head!3024 lt!507526) (head!3024 (++!4093 lt!507526 lt!507527))))))

(declare-fun b!1463893 () Bool)

(declare-fun e!933859 () Bool)

(assert (=> b!1463893 (= e!933859 (>= (size!12429 (++!4093 lt!507526 lt!507527)) (size!12429 lt!507526)))))

(declare-fun b!1463892 () Bool)

(declare-fun tail!2179 (List!15252) List!15252)

(assert (=> b!1463892 (= e!933857 (isPrefix!1205 (tail!2179 lt!507526) (tail!2179 (++!4093 lt!507526 lt!507527))))))

(declare-fun d!429123 () Bool)

(assert (=> d!429123 e!933859))

(declare-fun res!662625 () Bool)

(assert (=> d!429123 (=> res!662625 e!933859)))

(declare-fun lt!507784 () Bool)

(assert (=> d!429123 (= res!662625 (not lt!507784))))

(assert (=> d!429123 (= lt!507784 e!933858)))

(declare-fun res!662622 () Bool)

(assert (=> d!429123 (=> res!662622 e!933858)))

(assert (=> d!429123 (= res!662622 ((_ is Nil!15186) lt!507526))))

(assert (=> d!429123 (= (isPrefix!1205 lt!507526 (++!4093 lt!507526 lt!507527)) lt!507784)))

(assert (= (and d!429123 (not res!662622)) b!1463890))

(assert (= (and b!1463890 res!662623) b!1463891))

(assert (= (and b!1463891 res!662624) b!1463892))

(assert (= (and d!429123 (not res!662625)) b!1463893))

(declare-fun m!1703491 () Bool)

(assert (=> b!1463891 m!1703491))

(assert (=> b!1463891 m!1702607))

(declare-fun m!1703493 () Bool)

(assert (=> b!1463891 m!1703493))

(assert (=> b!1463893 m!1702607))

(declare-fun m!1703495 () Bool)

(assert (=> b!1463893 m!1703495))

(declare-fun m!1703497 () Bool)

(assert (=> b!1463893 m!1703497))

(declare-fun m!1703499 () Bool)

(assert (=> b!1463892 m!1703499))

(assert (=> b!1463892 m!1702607))

(declare-fun m!1703501 () Bool)

(assert (=> b!1463892 m!1703501))

(assert (=> b!1463892 m!1703499))

(assert (=> b!1463892 m!1703501))

(declare-fun m!1703503 () Bool)

(assert (=> b!1463892 m!1703503))

(assert (=> b!1463437 d!429123))

(declare-fun d!429125 () Bool)

(declare-fun lt!507787 () BalanceConc!10292)

(assert (=> d!429125 (= (list!6087 lt!507787) (originalCharacters!3537 (h!20589 (t!134647 (list!6083 lt!507005)))))))

(declare-fun dynLambda!6937 (Int TokenValue!2765) BalanceConc!10292)

(assert (=> d!429125 (= lt!507787 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 (list!6083 lt!507005)))))) (value!85885 (h!20589 (t!134647 (list!6083 lt!507005))))))))

(assert (=> d!429125 (= (charsOf!1538 (h!20589 (t!134647 (list!6083 lt!507005)))) lt!507787)))

(declare-fun b_lambda!45657 () Bool)

(assert (=> (not b_lambda!45657) (not d!429125)))

(declare-fun t!134664 () Bool)

(declare-fun tb!82653 () Bool)

(assert (=> (and b!1463502 (= (toChars!3845 (transformation!2675 (h!20590 (rules!11706 other!32)))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 (list!6083 lt!507005))))))) t!134664) tb!82653))

(declare-fun b!1463898 () Bool)

(declare-fun e!933862 () Bool)

(declare-fun tp!411852 () Bool)

(declare-fun inv!20311 (Conc!5176) Bool)

(assert (=> b!1463898 (= e!933862 (and (inv!20311 (c!241180 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 (list!6083 lt!507005)))))) (value!85885 (h!20589 (t!134647 (list!6083 lt!507005))))))) tp!411852))))

(declare-fun result!99304 () Bool)

(declare-fun inv!20312 (BalanceConc!10292) Bool)

(assert (=> tb!82653 (= result!99304 (and (inv!20312 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 (list!6083 lt!507005)))))) (value!85885 (h!20589 (t!134647 (list!6083 lt!507005)))))) e!933862))))

(assert (= tb!82653 b!1463898))

(declare-fun m!1703505 () Bool)

(assert (=> b!1463898 m!1703505))

(declare-fun m!1703507 () Bool)

(assert (=> tb!82653 m!1703507))

(assert (=> d!429125 t!134664))

(declare-fun b_and!99917 () Bool)

(assert (= b_and!99907 (and (=> t!134664 result!99304) b_and!99917)))

(declare-fun t!134666 () Bool)

(declare-fun tb!82655 () Bool)

(assert (=> (and b!1463508 (= (toChars!3845 (transformation!2675 (h!20590 (rules!11706 thiss!10022)))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 (list!6083 lt!507005))))))) t!134666) tb!82655))

(declare-fun result!99308 () Bool)

(assert (= result!99308 result!99304))

(assert (=> d!429125 t!134666))

(declare-fun b_and!99919 () Bool)

(assert (= b_and!99911 (and (=> t!134666 result!99308) b_and!99919)))

(declare-fun m!1703509 () Bool)

(assert (=> d!429125 m!1703509))

(declare-fun m!1703511 () Bool)

(assert (=> d!429125 m!1703511))

(assert (=> b!1463437 d!429125))

(declare-fun bm!98473 () Bool)

(declare-fun call!98478 () Option!2879)

(declare-fun maxPrefixOneRule!663 (LexerInterface!2331 Rule!5150 List!15252) Option!2879)

(assert (=> bm!98473 (= call!98478 (maxPrefixOneRule!663 Lexer!2329 (h!20590 (rules!11706 thiss!10022)) (list!6087 lt!507538)))))

(declare-fun b!1463917 () Bool)

(declare-fun res!662641 () Bool)

(declare-fun e!933871 () Bool)

(assert (=> b!1463917 (=> (not res!662641) (not e!933871))))

(declare-fun lt!507802 () Option!2879)

(assert (=> b!1463917 (= res!662641 (= (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!507802)))) (originalCharacters!3537 (_1!8015 (get!4621 lt!507802)))))))

(declare-fun b!1463918 () Bool)

(declare-fun res!662644 () Bool)

(assert (=> b!1463918 (=> (not res!662644) (not e!933871))))

(declare-fun apply!3974 (TokenValueInjection!5190 BalanceConc!10292) TokenValue!2765)

(declare-fun seqFromList!1718 (List!15252) BalanceConc!10292)

(assert (=> b!1463918 (= res!662644 (= (value!85885 (_1!8015 (get!4621 lt!507802))) (apply!3974 (transformation!2675 (rule!4450 (_1!8015 (get!4621 lt!507802)))) (seqFromList!1718 (originalCharacters!3537 (_1!8015 (get!4621 lt!507802)))))))))

(declare-fun b!1463919 () Bool)

(declare-fun res!662640 () Bool)

(assert (=> b!1463919 (=> (not res!662640) (not e!933871))))

(assert (=> b!1463919 (= res!662640 (= (++!4093 (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!507802)))) (_2!8015 (get!4621 lt!507802))) (list!6087 lt!507538)))))

(declare-fun b!1463920 () Bool)

(declare-fun contains!2912 (List!15255 Rule!5150) Bool)

(assert (=> b!1463920 (= e!933871 (contains!2912 (rules!11706 thiss!10022) (rule!4450 (_1!8015 (get!4621 lt!507802)))))))

(declare-fun d!429127 () Bool)

(declare-fun e!933870 () Bool)

(assert (=> d!429127 e!933870))

(declare-fun res!662645 () Bool)

(assert (=> d!429127 (=> res!662645 e!933870)))

(assert (=> d!429127 (= res!662645 (isEmpty!9547 lt!507802))))

(declare-fun e!933869 () Option!2879)

(assert (=> d!429127 (= lt!507802 e!933869)))

(declare-fun c!241326 () Bool)

(assert (=> d!429127 (= c!241326 (and ((_ is Cons!15189) (rules!11706 thiss!10022)) ((_ is Nil!15189) (t!134648 (rules!11706 thiss!10022)))))))

(declare-fun lt!507798 () Unit!24509)

(declare-fun lt!507801 () Unit!24509)

(assert (=> d!429127 (= lt!507798 lt!507801)))

(assert (=> d!429127 (isPrefix!1205 (list!6087 lt!507538) (list!6087 lt!507538))))

(declare-fun lemmaIsPrefixRefl!837 (List!15252 List!15252) Unit!24509)

(assert (=> d!429127 (= lt!507801 (lemmaIsPrefixRefl!837 (list!6087 lt!507538) (list!6087 lt!507538)))))

(declare-fun rulesValidInductive!834 (LexerInterface!2331 List!15255) Bool)

(assert (=> d!429127 (rulesValidInductive!834 Lexer!2329 (rules!11706 thiss!10022))))

(assert (=> d!429127 (= (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 lt!507538)) lt!507802)))

(declare-fun b!1463921 () Bool)

(assert (=> b!1463921 (= e!933869 call!98478)))

(declare-fun b!1463922 () Bool)

(declare-fun res!662642 () Bool)

(assert (=> b!1463922 (=> (not res!662642) (not e!933871))))

(assert (=> b!1463922 (= res!662642 (matchR!1831 (regex!2675 (rule!4450 (_1!8015 (get!4621 lt!507802)))) (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!507802))))))))

(declare-fun b!1463923 () Bool)

(assert (=> b!1463923 (= e!933870 e!933871)))

(declare-fun res!662646 () Bool)

(assert (=> b!1463923 (=> (not res!662646) (not e!933871))))

(assert (=> b!1463923 (= res!662646 (isDefined!2328 lt!507802))))

(declare-fun b!1463924 () Bool)

(declare-fun lt!507800 () Option!2879)

(declare-fun lt!507799 () Option!2879)

(assert (=> b!1463924 (= e!933869 (ite (and ((_ is None!2878) lt!507800) ((_ is None!2878) lt!507799)) None!2878 (ite ((_ is None!2878) lt!507799) lt!507800 (ite ((_ is None!2878) lt!507800) lt!507799 (ite (>= (size!12421 (_1!8015 (v!22514 lt!507800))) (size!12421 (_1!8015 (v!22514 lt!507799)))) lt!507800 lt!507799)))))))

(assert (=> b!1463924 (= lt!507800 call!98478)))

(assert (=> b!1463924 (= lt!507799 (maxPrefix!1195 Lexer!2329 (t!134648 (rules!11706 thiss!10022)) (list!6087 lt!507538)))))

(declare-fun b!1463925 () Bool)

(declare-fun res!662643 () Bool)

(assert (=> b!1463925 (=> (not res!662643) (not e!933871))))

(assert (=> b!1463925 (= res!662643 (< (size!12429 (_2!8015 (get!4621 lt!507802))) (size!12429 (list!6087 lt!507538))))))

(assert (= (and d!429127 c!241326) b!1463921))

(assert (= (and d!429127 (not c!241326)) b!1463924))

(assert (= (or b!1463921 b!1463924) bm!98473))

(assert (= (and d!429127 (not res!662645)) b!1463923))

(assert (= (and b!1463923 res!662646) b!1463917))

(assert (= (and b!1463917 res!662641) b!1463925))

(assert (= (and b!1463925 res!662643) b!1463919))

(assert (= (and b!1463919 res!662640) b!1463918))

(assert (= (and b!1463918 res!662644) b!1463922))

(assert (= (and b!1463922 res!662642) b!1463920))

(declare-fun m!1703513 () Bool)

(assert (=> b!1463917 m!1703513))

(declare-fun m!1703515 () Bool)

(assert (=> b!1463917 m!1703515))

(assert (=> b!1463917 m!1703515))

(declare-fun m!1703517 () Bool)

(assert (=> b!1463917 m!1703517))

(assert (=> b!1463919 m!1703513))

(assert (=> b!1463919 m!1703515))

(assert (=> b!1463919 m!1703515))

(assert (=> b!1463919 m!1703517))

(assert (=> b!1463919 m!1703517))

(declare-fun m!1703519 () Bool)

(assert (=> b!1463919 m!1703519))

(assert (=> b!1463925 m!1703513))

(declare-fun m!1703521 () Bool)

(assert (=> b!1463925 m!1703521))

(assert (=> b!1463925 m!1702597))

(declare-fun m!1703523 () Bool)

(assert (=> b!1463925 m!1703523))

(assert (=> b!1463924 m!1702597))

(declare-fun m!1703525 () Bool)

(assert (=> b!1463924 m!1703525))

(assert (=> b!1463922 m!1703513))

(assert (=> b!1463922 m!1703515))

(assert (=> b!1463922 m!1703515))

(assert (=> b!1463922 m!1703517))

(assert (=> b!1463922 m!1703517))

(declare-fun m!1703527 () Bool)

(assert (=> b!1463922 m!1703527))

(assert (=> b!1463920 m!1703513))

(declare-fun m!1703529 () Bool)

(assert (=> b!1463920 m!1703529))

(assert (=> b!1463918 m!1703513))

(declare-fun m!1703531 () Bool)

(assert (=> b!1463918 m!1703531))

(assert (=> b!1463918 m!1703531))

(declare-fun m!1703533 () Bool)

(assert (=> b!1463918 m!1703533))

(declare-fun m!1703535 () Bool)

(assert (=> d!429127 m!1703535))

(assert (=> d!429127 m!1702597))

(assert (=> d!429127 m!1702597))

(declare-fun m!1703537 () Bool)

(assert (=> d!429127 m!1703537))

(assert (=> d!429127 m!1702597))

(assert (=> d!429127 m!1702597))

(declare-fun m!1703539 () Bool)

(assert (=> d!429127 m!1703539))

(declare-fun m!1703541 () Bool)

(assert (=> d!429127 m!1703541))

(declare-fun m!1703543 () Bool)

(assert (=> b!1463923 m!1703543))

(assert (=> bm!98473 m!1702597))

(declare-fun m!1703545 () Bool)

(assert (=> bm!98473 m!1703545))

(assert (=> b!1463437 d!429127))

(declare-fun d!429129 () Bool)

(assert (=> d!429129 (= (list!6083 (_1!8014 lt!507545)) (list!6086 (c!241182 (_1!8014 lt!507545))))))

(declare-fun bs!344508 () Bool)

(assert (= bs!344508 d!429129))

(declare-fun m!1703547 () Bool)

(assert (=> bs!344508 m!1703547))

(assert (=> b!1463437 d!429129))

(declare-fun d!429131 () Bool)

(assert (=> d!429131 (= (isEmpty!9545 (_2!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))))))) ((_ is Nil!15186) (_2!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))))))))))

(assert (=> b!1463437 d!429131))

(declare-fun d!429133 () Bool)

(assert (=> d!429133 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (list!6083 lt!507005)))) 0))) (list!6088 (c!241180 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (list!6083 lt!507005)))) 0)))))))

(declare-fun bs!344509 () Bool)

(assert (= bs!344509 d!429133))

(declare-fun m!1703549 () Bool)

(assert (=> bs!344509 m!1703549))

(assert (=> b!1463437 d!429133))

(declare-fun bm!98474 () Bool)

(declare-fun call!98479 () Option!2879)

(assert (=> bm!98474 (= call!98479 (maxPrefixOneRule!663 Lexer!2329 (h!20590 (rules!11706 thiss!10022)) (originalCharacters!3537 (h!20589 (list!6083 lt!507005)))))))

(declare-fun b!1463926 () Bool)

(declare-fun res!662648 () Bool)

(declare-fun e!933874 () Bool)

(assert (=> b!1463926 (=> (not res!662648) (not e!933874))))

(declare-fun lt!507807 () Option!2879)

(assert (=> b!1463926 (= res!662648 (= (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!507807)))) (originalCharacters!3537 (_1!8015 (get!4621 lt!507807)))))))

(declare-fun b!1463927 () Bool)

(declare-fun res!662651 () Bool)

(assert (=> b!1463927 (=> (not res!662651) (not e!933874))))

(assert (=> b!1463927 (= res!662651 (= (value!85885 (_1!8015 (get!4621 lt!507807))) (apply!3974 (transformation!2675 (rule!4450 (_1!8015 (get!4621 lt!507807)))) (seqFromList!1718 (originalCharacters!3537 (_1!8015 (get!4621 lt!507807)))))))))

(declare-fun b!1463928 () Bool)

(declare-fun res!662647 () Bool)

(assert (=> b!1463928 (=> (not res!662647) (not e!933874))))

(assert (=> b!1463928 (= res!662647 (= (++!4093 (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!507807)))) (_2!8015 (get!4621 lt!507807))) (originalCharacters!3537 (h!20589 (list!6083 lt!507005)))))))

(declare-fun b!1463929 () Bool)

(assert (=> b!1463929 (= e!933874 (contains!2912 (rules!11706 thiss!10022) (rule!4450 (_1!8015 (get!4621 lt!507807)))))))

(declare-fun d!429135 () Bool)

(declare-fun e!933873 () Bool)

(assert (=> d!429135 e!933873))

(declare-fun res!662652 () Bool)

(assert (=> d!429135 (=> res!662652 e!933873)))

(assert (=> d!429135 (= res!662652 (isEmpty!9547 lt!507807))))

(declare-fun e!933872 () Option!2879)

(assert (=> d!429135 (= lt!507807 e!933872)))

(declare-fun c!241327 () Bool)

(assert (=> d!429135 (= c!241327 (and ((_ is Cons!15189) (rules!11706 thiss!10022)) ((_ is Nil!15189) (t!134648 (rules!11706 thiss!10022)))))))

(declare-fun lt!507803 () Unit!24509)

(declare-fun lt!507806 () Unit!24509)

(assert (=> d!429135 (= lt!507803 lt!507806)))

(assert (=> d!429135 (isPrefix!1205 (originalCharacters!3537 (h!20589 (list!6083 lt!507005))) (originalCharacters!3537 (h!20589 (list!6083 lt!507005))))))

(assert (=> d!429135 (= lt!507806 (lemmaIsPrefixRefl!837 (originalCharacters!3537 (h!20589 (list!6083 lt!507005))) (originalCharacters!3537 (h!20589 (list!6083 lt!507005)))))))

(assert (=> d!429135 (rulesValidInductive!834 Lexer!2329 (rules!11706 thiss!10022))))

(assert (=> d!429135 (= (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (originalCharacters!3537 (h!20589 (list!6083 lt!507005)))) lt!507807)))

(declare-fun b!1463930 () Bool)

(assert (=> b!1463930 (= e!933872 call!98479)))

(declare-fun b!1463931 () Bool)

(declare-fun res!662649 () Bool)

(assert (=> b!1463931 (=> (not res!662649) (not e!933874))))

(assert (=> b!1463931 (= res!662649 (matchR!1831 (regex!2675 (rule!4450 (_1!8015 (get!4621 lt!507807)))) (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!507807))))))))

(declare-fun b!1463932 () Bool)

(assert (=> b!1463932 (= e!933873 e!933874)))

(declare-fun res!662653 () Bool)

(assert (=> b!1463932 (=> (not res!662653) (not e!933874))))

(assert (=> b!1463932 (= res!662653 (isDefined!2328 lt!507807))))

(declare-fun b!1463933 () Bool)

(declare-fun lt!507805 () Option!2879)

(declare-fun lt!507804 () Option!2879)

(assert (=> b!1463933 (= e!933872 (ite (and ((_ is None!2878) lt!507805) ((_ is None!2878) lt!507804)) None!2878 (ite ((_ is None!2878) lt!507804) lt!507805 (ite ((_ is None!2878) lt!507805) lt!507804 (ite (>= (size!12421 (_1!8015 (v!22514 lt!507805))) (size!12421 (_1!8015 (v!22514 lt!507804)))) lt!507805 lt!507804)))))))

(assert (=> b!1463933 (= lt!507805 call!98479)))

(assert (=> b!1463933 (= lt!507804 (maxPrefix!1195 Lexer!2329 (t!134648 (rules!11706 thiss!10022)) (originalCharacters!3537 (h!20589 (list!6083 lt!507005)))))))

(declare-fun b!1463934 () Bool)

(declare-fun res!662650 () Bool)

(assert (=> b!1463934 (=> (not res!662650) (not e!933874))))

(assert (=> b!1463934 (= res!662650 (< (size!12429 (_2!8015 (get!4621 lt!507807))) (size!12429 (originalCharacters!3537 (h!20589 (list!6083 lt!507005))))))))

(assert (= (and d!429135 c!241327) b!1463930))

(assert (= (and d!429135 (not c!241327)) b!1463933))

(assert (= (or b!1463930 b!1463933) bm!98474))

(assert (= (and d!429135 (not res!662652)) b!1463932))

(assert (= (and b!1463932 res!662653) b!1463926))

(assert (= (and b!1463926 res!662648) b!1463934))

(assert (= (and b!1463934 res!662650) b!1463928))

(assert (= (and b!1463928 res!662647) b!1463927))

(assert (= (and b!1463927 res!662651) b!1463931))

(assert (= (and b!1463931 res!662649) b!1463929))

(declare-fun m!1703551 () Bool)

(assert (=> b!1463926 m!1703551))

(declare-fun m!1703553 () Bool)

(assert (=> b!1463926 m!1703553))

(assert (=> b!1463926 m!1703553))

(declare-fun m!1703555 () Bool)

(assert (=> b!1463926 m!1703555))

(assert (=> b!1463928 m!1703551))

(assert (=> b!1463928 m!1703553))

(assert (=> b!1463928 m!1703553))

(assert (=> b!1463928 m!1703555))

(assert (=> b!1463928 m!1703555))

(declare-fun m!1703557 () Bool)

(assert (=> b!1463928 m!1703557))

(assert (=> b!1463934 m!1703551))

(declare-fun m!1703559 () Bool)

(assert (=> b!1463934 m!1703559))

(declare-fun m!1703561 () Bool)

(assert (=> b!1463934 m!1703561))

(declare-fun m!1703563 () Bool)

(assert (=> b!1463933 m!1703563))

(assert (=> b!1463931 m!1703551))

(assert (=> b!1463931 m!1703553))

(assert (=> b!1463931 m!1703553))

(assert (=> b!1463931 m!1703555))

(assert (=> b!1463931 m!1703555))

(declare-fun m!1703565 () Bool)

(assert (=> b!1463931 m!1703565))

(assert (=> b!1463929 m!1703551))

(declare-fun m!1703567 () Bool)

(assert (=> b!1463929 m!1703567))

(assert (=> b!1463927 m!1703551))

(declare-fun m!1703569 () Bool)

(assert (=> b!1463927 m!1703569))

(assert (=> b!1463927 m!1703569))

(declare-fun m!1703571 () Bool)

(assert (=> b!1463927 m!1703571))

(declare-fun m!1703573 () Bool)

(assert (=> d!429135 m!1703573))

(declare-fun m!1703575 () Bool)

(assert (=> d!429135 m!1703575))

(declare-fun m!1703577 () Bool)

(assert (=> d!429135 m!1703577))

(assert (=> d!429135 m!1703541))

(declare-fun m!1703579 () Bool)

(assert (=> b!1463932 m!1703579))

(declare-fun m!1703581 () Bool)

(assert (=> bm!98474 m!1703581))

(assert (=> b!1463437 d!429135))

(declare-fun b!1463943 () Bool)

(declare-fun res!662658 () Bool)

(declare-fun e!933880 () Bool)

(assert (=> b!1463943 (=> (not res!662658) (not e!933880))))

(declare-fun lt!507842 () Token!5012)

(declare-datatypes ((Option!2881 0))(
  ( (None!2880) (Some!2880 (v!22520 Rule!5150)) )
))
(declare-fun get!4623 (Option!2881) Rule!5150)

(declare-fun getRuleFromTag!224 (LexerInterface!2331 List!15255 String!18081) Option!2881)

(assert (=> b!1463943 (= res!662658 (matchR!1831 (regex!2675 (get!4623 (getRuleFromTag!224 Lexer!2329 (rules!11706 thiss!10022) (tag!2939 (rule!4450 lt!507842))))) (list!6087 (charsOf!1538 lt!507842))))))

(declare-fun b!1463945 () Bool)

(declare-fun e!933879 () Unit!24509)

(declare-fun Unit!24627 () Unit!24509)

(assert (=> b!1463945 (= e!933879 Unit!24627)))

(declare-fun lt!507851 () List!15252)

(assert (=> b!1463945 (= lt!507851 (++!4093 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))) (list!6087 lt!507525)))))

(declare-fun lt!507848 () Unit!24509)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!117 (LexerInterface!2331 Rule!5150 List!15255 List!15252) Unit!24509)

(assert (=> b!1463945 (= lt!507848 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!117 Lexer!2329 (rule!4450 lt!507842) (rules!11706 thiss!10022) lt!507851))))

(assert (=> b!1463945 (isEmpty!9547 (maxPrefixOneRule!663 Lexer!2329 (rule!4450 lt!507842) lt!507851))))

(declare-fun lt!507857 () Unit!24509)

(assert (=> b!1463945 (= lt!507857 lt!507848)))

(declare-fun lt!507847 () List!15252)

(assert (=> b!1463945 (= lt!507847 (list!6087 (charsOf!1538 lt!507842)))))

(declare-fun lt!507852 () Unit!24509)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!113 (LexerInterface!2331 Rule!5150 List!15252 List!15252) Unit!24509)

(assert (=> b!1463945 (= lt!507852 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!113 Lexer!2329 (rule!4450 lt!507842) lt!507847 (++!4093 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))) (list!6087 lt!507525))))))

(assert (=> b!1463945 (not (matchR!1831 (regex!2675 (rule!4450 lt!507842)) lt!507847))))

(declare-fun lt!507844 () Unit!24509)

(assert (=> b!1463945 (= lt!507844 lt!507852)))

(assert (=> b!1463945 false))

(declare-fun d!429137 () Bool)

(assert (=> d!429137 (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (++!4093 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))) (list!6087 lt!507525))))))

(declare-fun lt!507854 () Unit!24509)

(assert (=> d!429137 (= lt!507854 e!933879)))

(declare-fun c!241330 () Bool)

(assert (=> d!429137 (= c!241330 (isEmpty!9547 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (++!4093 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))) (list!6087 lt!507525)))))))

(declare-fun lt!507855 () Unit!24509)

(declare-fun lt!507845 () Unit!24509)

(assert (=> d!429137 (= lt!507855 lt!507845)))

(assert (=> d!429137 e!933880))

(declare-fun res!662659 () Bool)

(assert (=> d!429137 (=> (not res!662659) (not e!933880))))

(declare-fun isDefined!2330 (Option!2881) Bool)

(assert (=> d!429137 (= res!662659 (isDefined!2330 (getRuleFromTag!224 Lexer!2329 (rules!11706 thiss!10022) (tag!2939 (rule!4450 lt!507842)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!224 (LexerInterface!2331 List!15255 List!15252 Token!5012) Unit!24509)

(assert (=> d!429137 (= lt!507845 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!224 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))) lt!507842))))

(declare-fun lt!507856 () Unit!24509)

(declare-fun lt!507843 () Unit!24509)

(assert (=> d!429137 (= lt!507856 lt!507843)))

(declare-fun lt!507858 () List!15252)

(assert (=> d!429137 (isPrefix!1205 lt!507858 (++!4093 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))) (list!6087 lt!507525)))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!109 (List!15252 List!15252 List!15252) Unit!24509)

(assert (=> d!429137 (= lt!507843 (lemmaPrefixStaysPrefixWhenAddingToSuffix!109 lt!507858 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))) (list!6087 lt!507525)))))

(assert (=> d!429137 (= lt!507858 (list!6087 (charsOf!1538 lt!507842)))))

(declare-fun lt!507849 () Unit!24509)

(declare-fun lt!507850 () Unit!24509)

(assert (=> d!429137 (= lt!507849 lt!507850)))

(declare-fun lt!507846 () List!15252)

(declare-fun lt!507853 () List!15252)

(assert (=> d!429137 (isPrefix!1205 lt!507846 (++!4093 lt!507846 lt!507853))))

(assert (=> d!429137 (= lt!507850 (lemmaConcatTwoListThenFirstIsPrefix!768 lt!507846 lt!507853))))

(assert (=> d!429137 (= lt!507853 (_2!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005))))))))))

(assert (=> d!429137 (= lt!507846 (list!6087 (charsOf!1538 lt!507842)))))

(assert (=> d!429137 (= lt!507842 (head!3020 (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (seqFromList!1718 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005))))))))))))

(assert (=> d!429137 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!429137 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!241 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))) (list!6087 lt!507525)) lt!507854)))

(declare-fun b!1463946 () Bool)

(declare-fun Unit!24628 () Unit!24509)

(assert (=> b!1463946 (= e!933879 Unit!24628)))

(declare-fun b!1463944 () Bool)

(assert (=> b!1463944 (= e!933880 (= (rule!4450 lt!507842) (get!4623 (getRuleFromTag!224 Lexer!2329 (rules!11706 thiss!10022) (tag!2939 (rule!4450 lt!507842))))))))

(assert (= (and d!429137 res!662659) b!1463943))

(assert (= (and b!1463943 res!662658) b!1463944))

(assert (= (and d!429137 c!241330) b!1463945))

(assert (= (and d!429137 (not c!241330)) b!1463946))

(declare-fun m!1703583 () Bool)

(assert (=> b!1463943 m!1703583))

(declare-fun m!1703585 () Bool)

(assert (=> b!1463943 m!1703585))

(assert (=> b!1463943 m!1703585))

(declare-fun m!1703587 () Bool)

(assert (=> b!1463943 m!1703587))

(declare-fun m!1703589 () Bool)

(assert (=> b!1463943 m!1703589))

(declare-fun m!1703591 () Bool)

(assert (=> b!1463943 m!1703591))

(assert (=> b!1463943 m!1703583))

(assert (=> b!1463943 m!1703589))

(assert (=> b!1463945 m!1703583))

(assert (=> b!1463945 m!1703585))

(declare-fun m!1703593 () Bool)

(assert (=> b!1463945 m!1703593))

(declare-fun m!1703595 () Bool)

(assert (=> b!1463945 m!1703595))

(declare-fun m!1703597 () Bool)

(assert (=> b!1463945 m!1703597))

(assert (=> b!1463945 m!1702571))

(assert (=> b!1463945 m!1702591))

(declare-fun m!1703599 () Bool)

(assert (=> b!1463945 m!1703599))

(assert (=> b!1463945 m!1703599))

(declare-fun m!1703601 () Bool)

(assert (=> b!1463945 m!1703601))

(assert (=> b!1463945 m!1703583))

(assert (=> b!1463945 m!1703593))

(declare-fun m!1703603 () Bool)

(assert (=> b!1463945 m!1703603))

(assert (=> d!429137 m!1701757))

(assert (=> d!429137 m!1703583))

(assert (=> d!429137 m!1703585))

(assert (=> d!429137 m!1702571))

(assert (=> d!429137 m!1702573))

(assert (=> d!429137 m!1702571))

(assert (=> d!429137 m!1702591))

(declare-fun m!1703605 () Bool)

(assert (=> d!429137 m!1703605))

(declare-fun m!1703607 () Bool)

(assert (=> d!429137 m!1703607))

(declare-fun m!1703609 () Bool)

(assert (=> d!429137 m!1703609))

(declare-fun m!1703611 () Bool)

(assert (=> d!429137 m!1703611))

(declare-fun m!1703613 () Bool)

(assert (=> d!429137 m!1703613))

(declare-fun m!1703615 () Bool)

(assert (=> d!429137 m!1703615))

(declare-fun m!1703617 () Bool)

(assert (=> d!429137 m!1703617))

(declare-fun m!1703619 () Bool)

(assert (=> d!429137 m!1703619))

(assert (=> d!429137 m!1703617))

(declare-fun m!1703621 () Bool)

(assert (=> d!429137 m!1703621))

(assert (=> d!429137 m!1702571))

(assert (=> d!429137 m!1702591))

(assert (=> d!429137 m!1703599))

(assert (=> d!429137 m!1702571))

(declare-fun m!1703623 () Bool)

(assert (=> d!429137 m!1703623))

(assert (=> d!429137 m!1703589))

(assert (=> d!429137 m!1703599))

(declare-fun m!1703625 () Bool)

(assert (=> d!429137 m!1703625))

(assert (=> d!429137 m!1703599))

(assert (=> d!429137 m!1703617))

(declare-fun m!1703627 () Bool)

(assert (=> d!429137 m!1703627))

(assert (=> d!429137 m!1703589))

(declare-fun m!1703629 () Bool)

(assert (=> d!429137 m!1703629))

(assert (=> d!429137 m!1703611))

(declare-fun m!1703631 () Bool)

(assert (=> d!429137 m!1703631))

(assert (=> d!429137 m!1702571))

(assert (=> d!429137 m!1703613))

(assert (=> d!429137 m!1703607))

(assert (=> d!429137 m!1702573))

(assert (=> d!429137 m!1702625))

(assert (=> d!429137 m!1703583))

(assert (=> b!1463944 m!1703589))

(assert (=> b!1463944 m!1703589))

(assert (=> b!1463944 m!1703591))

(assert (=> b!1463437 d!429137))

(declare-fun d!429139 () Bool)

(declare-fun fromListB!738 (List!15254) BalanceConc!10294)

(assert (=> d!429139 (= (seqFromList!1716 (t!134647 (list!6083 lt!507005))) (fromListB!738 (t!134647 (list!6083 lt!507005))))))

(declare-fun bs!344510 () Bool)

(assert (= bs!344510 d!429139))

(declare-fun m!1703633 () Bool)

(assert (=> bs!344510 m!1703633))

(assert (=> b!1463437 d!429139))

(declare-fun d!429141 () Bool)

(assert (=> d!429141 (= (seqFromList!1716 (list!6083 lt!507005)) (fromListB!738 (list!6083 lt!507005)))))

(declare-fun bs!344511 () Bool)

(assert (= bs!344511 d!429141))

(assert (=> bs!344511 m!1701641))

(declare-fun m!1703635 () Bool)

(assert (=> bs!344511 m!1703635))

(assert (=> b!1463437 d!429141))

(declare-fun d!429143 () Bool)

(declare-fun lt!507859 () BalanceConc!10292)

(assert (=> d!429143 (= (list!6087 lt!507859) (printList!727 Lexer!2329 (list!6083 (seqFromList!1716 (list!6083 lt!507005)))))))

(assert (=> d!429143 (= lt!507859 (printTailRec!699 Lexer!2329 (seqFromList!1716 (list!6083 lt!507005)) 0 (BalanceConc!10293 Empty!5176)))))

(assert (=> d!429143 (= (print!1107 Lexer!2329 (seqFromList!1716 (list!6083 lt!507005))) lt!507859)))

(declare-fun bs!344512 () Bool)

(assert (= bs!344512 d!429143))

(declare-fun m!1703637 () Bool)

(assert (=> bs!344512 m!1703637))

(assert (=> bs!344512 m!1702555))

(declare-fun m!1703639 () Bool)

(assert (=> bs!344512 m!1703639))

(assert (=> bs!344512 m!1703639))

(declare-fun m!1703641 () Bool)

(assert (=> bs!344512 m!1703641))

(assert (=> bs!344512 m!1702555))

(declare-fun m!1703643 () Bool)

(assert (=> bs!344512 m!1703643))

(assert (=> b!1463437 d!429143))

(declare-fun d!429145 () Bool)

(declare-fun e!933881 () Bool)

(assert (=> d!429145 e!933881))

(declare-fun res!662660 () Bool)

(assert (=> d!429145 (=> (not res!662660) (not e!933881))))

(declare-fun lt!507860 () BalanceConc!10294)

(assert (=> d!429145 (= res!662660 (= (list!6083 lt!507860) (Cons!15188 (h!20589 (list!6083 lt!507005)) Nil!15188)))))

(assert (=> d!429145 (= lt!507860 (singleton!539 (h!20589 (list!6083 lt!507005))))))

(assert (=> d!429145 (= (singletonSeq!1281 (h!20589 (list!6083 lt!507005))) lt!507860)))

(declare-fun b!1463947 () Bool)

(assert (=> b!1463947 (= e!933881 (isBalanced!1555 (c!241182 lt!507860)))))

(assert (= (and d!429145 res!662660) b!1463947))

(declare-fun m!1703645 () Bool)

(assert (=> d!429145 m!1703645))

(declare-fun m!1703647 () Bool)

(assert (=> d!429145 m!1703647))

(declare-fun m!1703649 () Bool)

(assert (=> b!1463947 m!1703649))

(assert (=> b!1463437 d!429145))

(declare-fun d!429147 () Bool)

(assert (=> d!429147 (isPrefix!1205 lt!507526 (++!4093 lt!507526 lt!507527))))

(declare-fun lt!507863 () Unit!24509)

(declare-fun choose!9011 (List!15252 List!15252) Unit!24509)

(assert (=> d!429147 (= lt!507863 (choose!9011 lt!507526 lt!507527))))

(assert (=> d!429147 (= (lemmaConcatTwoListThenFirstIsPrefix!768 lt!507526 lt!507527) lt!507863)))

(declare-fun bs!344513 () Bool)

(assert (= bs!344513 d!429147))

(assert (=> bs!344513 m!1702607))

(assert (=> bs!344513 m!1702607))

(assert (=> bs!344513 m!1702631))

(declare-fun m!1703651 () Bool)

(assert (=> bs!344513 m!1703651))

(assert (=> b!1463437 d!429147))

(declare-fun d!429149 () Bool)

(declare-fun lt!507866 () C!8156)

(assert (=> d!429149 (= lt!507866 (head!3024 (list!6087 lt!507525)))))

(declare-fun head!3026 (Conc!5176) C!8156)

(assert (=> d!429149 (= lt!507866 (head!3026 (c!241180 lt!507525)))))

(assert (=> d!429149 (not (isEmpty!9544 lt!507525))))

(assert (=> d!429149 (= (head!3025 lt!507525) lt!507866)))

(declare-fun bs!344514 () Bool)

(assert (= bs!344514 d!429149))

(assert (=> bs!344514 m!1702591))

(assert (=> bs!344514 m!1702591))

(assert (=> bs!344514 m!1702627))

(declare-fun m!1703653 () Bool)

(assert (=> bs!344514 m!1703653))

(declare-fun m!1703655 () Bool)

(assert (=> bs!344514 m!1703655))

(assert (=> b!1463437 d!429149))

(declare-fun d!429151 () Bool)

(declare-fun e!933884 () Bool)

(assert (=> d!429151 e!933884))

(declare-fun res!662663 () Bool)

(assert (=> d!429151 (=> (not res!662663) (not e!933884))))

(declare-fun prepend!431 (Conc!5177 Token!5012) Conc!5177)

(assert (=> d!429151 (= res!662663 (isBalanced!1555 (prepend!431 (c!241182 (seqFromList!1716 (t!134647 (t!134647 (list!6083 lt!507005))))) (h!20589 (t!134647 (list!6083 lt!507005))))))))

(declare-fun lt!507869 () BalanceConc!10294)

(assert (=> d!429151 (= lt!507869 (BalanceConc!10295 (prepend!431 (c!241182 (seqFromList!1716 (t!134647 (t!134647 (list!6083 lt!507005))))) (h!20589 (t!134647 (list!6083 lt!507005))))))))

(assert (=> d!429151 (= (prepend!429 (seqFromList!1716 (t!134647 (t!134647 (list!6083 lt!507005)))) (h!20589 (t!134647 (list!6083 lt!507005)))) lt!507869)))

(declare-fun b!1463950 () Bool)

(assert (=> b!1463950 (= e!933884 (= (list!6083 lt!507869) (Cons!15188 (h!20589 (t!134647 (list!6083 lt!507005))) (list!6083 (seqFromList!1716 (t!134647 (t!134647 (list!6083 lt!507005))))))))))

(assert (= (and d!429151 res!662663) b!1463950))

(declare-fun m!1703657 () Bool)

(assert (=> d!429151 m!1703657))

(assert (=> d!429151 m!1703657))

(declare-fun m!1703659 () Bool)

(assert (=> d!429151 m!1703659))

(declare-fun m!1703661 () Bool)

(assert (=> b!1463950 m!1703661))

(assert (=> b!1463950 m!1702585))

(declare-fun m!1703663 () Bool)

(assert (=> b!1463950 m!1703663))

(assert (=> b!1463437 d!429151))

(declare-fun b!1463952 () Bool)

(declare-fun e!933886 () List!15252)

(assert (=> b!1463952 (= e!933886 (Cons!15186 (h!20587 lt!507526) (++!4093 (t!134645 lt!507526) lt!507527)))))

(declare-fun b!1463951 () Bool)

(assert (=> b!1463951 (= e!933886 lt!507527)))

(declare-fun d!429153 () Bool)

(declare-fun e!933885 () Bool)

(assert (=> d!429153 e!933885))

(declare-fun res!662664 () Bool)

(assert (=> d!429153 (=> (not res!662664) (not e!933885))))

(declare-fun lt!507870 () List!15252)

(assert (=> d!429153 (= res!662664 (= (content!2247 lt!507870) ((_ map or) (content!2247 lt!507526) (content!2247 lt!507527))))))

(assert (=> d!429153 (= lt!507870 e!933886)))

(declare-fun c!241332 () Bool)

(assert (=> d!429153 (= c!241332 ((_ is Nil!15186) lt!507526))))

(assert (=> d!429153 (= (++!4093 lt!507526 lt!507527) lt!507870)))

(declare-fun b!1463954 () Bool)

(assert (=> b!1463954 (= e!933885 (or (not (= lt!507527 Nil!15186)) (= lt!507870 lt!507526)))))

(declare-fun b!1463953 () Bool)

(declare-fun res!662665 () Bool)

(assert (=> b!1463953 (=> (not res!662665) (not e!933885))))

(assert (=> b!1463953 (= res!662665 (= (size!12429 lt!507870) (+ (size!12429 lt!507526) (size!12429 lt!507527))))))

(assert (= (and d!429153 c!241332) b!1463951))

(assert (= (and d!429153 (not c!241332)) b!1463952))

(assert (= (and d!429153 res!662664) b!1463953))

(assert (= (and b!1463953 res!662665) b!1463954))

(declare-fun m!1703665 () Bool)

(assert (=> b!1463952 m!1703665))

(declare-fun m!1703667 () Bool)

(assert (=> d!429153 m!1703667))

(declare-fun m!1703669 () Bool)

(assert (=> d!429153 m!1703669))

(declare-fun m!1703671 () Bool)

(assert (=> d!429153 m!1703671))

(declare-fun m!1703673 () Bool)

(assert (=> b!1463953 m!1703673))

(assert (=> b!1463953 m!1703497))

(declare-fun m!1703675 () Bool)

(assert (=> b!1463953 m!1703675))

(assert (=> b!1463437 d!429153))

(declare-fun bm!98475 () Bool)

(declare-fun call!98480 () Option!2879)

(assert (=> bm!98475 (= call!98480 (maxPrefixOneRule!663 Lexer!2329 (h!20590 (rules!11706 thiss!10022)) (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005))))))))

(declare-fun b!1463955 () Bool)

(declare-fun res!662667 () Bool)

(declare-fun e!933889 () Bool)

(assert (=> b!1463955 (=> (not res!662667) (not e!933889))))

(declare-fun lt!507875 () Option!2879)

(assert (=> b!1463955 (= res!662667 (= (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!507875)))) (originalCharacters!3537 (_1!8015 (get!4621 lt!507875)))))))

(declare-fun b!1463956 () Bool)

(declare-fun res!662670 () Bool)

(assert (=> b!1463956 (=> (not res!662670) (not e!933889))))

(assert (=> b!1463956 (= res!662670 (= (value!85885 (_1!8015 (get!4621 lt!507875))) (apply!3974 (transformation!2675 (rule!4450 (_1!8015 (get!4621 lt!507875)))) (seqFromList!1718 (originalCharacters!3537 (_1!8015 (get!4621 lt!507875)))))))))

(declare-fun b!1463957 () Bool)

(declare-fun res!662666 () Bool)

(assert (=> b!1463957 (=> (not res!662666) (not e!933889))))

(assert (=> b!1463957 (= res!662666 (= (++!4093 (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!507875)))) (_2!8015 (get!4621 lt!507875))) (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005))))))))

(declare-fun b!1463958 () Bool)

(assert (=> b!1463958 (= e!933889 (contains!2912 (rules!11706 thiss!10022) (rule!4450 (_1!8015 (get!4621 lt!507875)))))))

(declare-fun d!429155 () Bool)

(declare-fun e!933888 () Bool)

(assert (=> d!429155 e!933888))

(declare-fun res!662671 () Bool)

(assert (=> d!429155 (=> res!662671 e!933888)))

(assert (=> d!429155 (= res!662671 (isEmpty!9547 lt!507875))))

(declare-fun e!933887 () Option!2879)

(assert (=> d!429155 (= lt!507875 e!933887)))

(declare-fun c!241333 () Bool)

(assert (=> d!429155 (= c!241333 (and ((_ is Cons!15189) (rules!11706 thiss!10022)) ((_ is Nil!15189) (t!134648 (rules!11706 thiss!10022)))))))

(declare-fun lt!507871 () Unit!24509)

(declare-fun lt!507874 () Unit!24509)

(assert (=> d!429155 (= lt!507871 lt!507874)))

(assert (=> d!429155 (isPrefix!1205 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))) (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))))))

(assert (=> d!429155 (= lt!507874 (lemmaIsPrefixRefl!837 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))) (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005))))))))

(assert (=> d!429155 (rulesValidInductive!834 Lexer!2329 (rules!11706 thiss!10022))))

(assert (=> d!429155 (= (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005))))) lt!507875)))

(declare-fun b!1463959 () Bool)

(assert (=> b!1463959 (= e!933887 call!98480)))

(declare-fun b!1463960 () Bool)

(declare-fun res!662668 () Bool)

(assert (=> b!1463960 (=> (not res!662668) (not e!933889))))

(assert (=> b!1463960 (= res!662668 (matchR!1831 (regex!2675 (rule!4450 (_1!8015 (get!4621 lt!507875)))) (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!507875))))))))

(declare-fun b!1463961 () Bool)

(assert (=> b!1463961 (= e!933888 e!933889)))

(declare-fun res!662672 () Bool)

(assert (=> b!1463961 (=> (not res!662672) (not e!933889))))

(assert (=> b!1463961 (= res!662672 (isDefined!2328 lt!507875))))

(declare-fun b!1463962 () Bool)

(declare-fun lt!507873 () Option!2879)

(declare-fun lt!507872 () Option!2879)

(assert (=> b!1463962 (= e!933887 (ite (and ((_ is None!2878) lt!507873) ((_ is None!2878) lt!507872)) None!2878 (ite ((_ is None!2878) lt!507872) lt!507873 (ite ((_ is None!2878) lt!507873) lt!507872 (ite (>= (size!12421 (_1!8015 (v!22514 lt!507873))) (size!12421 (_1!8015 (v!22514 lt!507872)))) lt!507873 lt!507872)))))))

(assert (=> b!1463962 (= lt!507873 call!98480)))

(assert (=> b!1463962 (= lt!507872 (maxPrefix!1195 Lexer!2329 (t!134648 (rules!11706 thiss!10022)) (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005))))))))

(declare-fun b!1463963 () Bool)

(declare-fun res!662669 () Bool)

(assert (=> b!1463963 (=> (not res!662669) (not e!933889))))

(assert (=> b!1463963 (= res!662669 (< (size!12429 (_2!8015 (get!4621 lt!507875))) (size!12429 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))))))))

(assert (= (and d!429155 c!241333) b!1463959))

(assert (= (and d!429155 (not c!241333)) b!1463962))

(assert (= (or b!1463959 b!1463962) bm!98475))

(assert (= (and d!429155 (not res!662671)) b!1463961))

(assert (= (and b!1463961 res!662672) b!1463955))

(assert (= (and b!1463955 res!662667) b!1463963))

(assert (= (and b!1463963 res!662669) b!1463957))

(assert (= (and b!1463957 res!662666) b!1463956))

(assert (= (and b!1463956 res!662670) b!1463960))

(assert (= (and b!1463960 res!662668) b!1463958))

(declare-fun m!1703677 () Bool)

(assert (=> b!1463955 m!1703677))

(declare-fun m!1703679 () Bool)

(assert (=> b!1463955 m!1703679))

(assert (=> b!1463955 m!1703679))

(declare-fun m!1703681 () Bool)

(assert (=> b!1463955 m!1703681))

(assert (=> b!1463957 m!1703677))

(assert (=> b!1463957 m!1703679))

(assert (=> b!1463957 m!1703679))

(assert (=> b!1463957 m!1703681))

(assert (=> b!1463957 m!1703681))

(declare-fun m!1703683 () Bool)

(assert (=> b!1463957 m!1703683))

(assert (=> b!1463963 m!1703677))

(declare-fun m!1703685 () Bool)

(assert (=> b!1463963 m!1703685))

(assert (=> b!1463963 m!1702571))

(declare-fun m!1703687 () Bool)

(assert (=> b!1463963 m!1703687))

(assert (=> b!1463962 m!1702571))

(declare-fun m!1703689 () Bool)

(assert (=> b!1463962 m!1703689))

(assert (=> b!1463960 m!1703677))

(assert (=> b!1463960 m!1703679))

(assert (=> b!1463960 m!1703679))

(assert (=> b!1463960 m!1703681))

(assert (=> b!1463960 m!1703681))

(declare-fun m!1703691 () Bool)

(assert (=> b!1463960 m!1703691))

(assert (=> b!1463958 m!1703677))

(declare-fun m!1703693 () Bool)

(assert (=> b!1463958 m!1703693))

(assert (=> b!1463956 m!1703677))

(declare-fun m!1703695 () Bool)

(assert (=> b!1463956 m!1703695))

(assert (=> b!1463956 m!1703695))

(declare-fun m!1703697 () Bool)

(assert (=> b!1463956 m!1703697))

(declare-fun m!1703699 () Bool)

(assert (=> d!429155 m!1703699))

(assert (=> d!429155 m!1702571))

(assert (=> d!429155 m!1702571))

(declare-fun m!1703701 () Bool)

(assert (=> d!429155 m!1703701))

(assert (=> d!429155 m!1702571))

(assert (=> d!429155 m!1702571))

(declare-fun m!1703703 () Bool)

(assert (=> d!429155 m!1703703))

(assert (=> d!429155 m!1703541))

(declare-fun m!1703705 () Bool)

(assert (=> b!1463961 m!1703705))

(assert (=> bm!98475 m!1702571))

(declare-fun m!1703707 () Bool)

(assert (=> bm!98475 m!1703707))

(assert (=> b!1463437 d!429155))

(declare-fun d!429157 () Bool)

(assert (=> d!429157 (= (head!3024 (list!6087 lt!507525)) (h!20587 (list!6087 lt!507525)))))

(assert (=> b!1463437 d!429157))

(declare-fun d!429159 () Bool)

(assert (=> d!429159 (= (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (++!4093 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))) (list!6087 lt!507525))) (Some!2878 (tuple2!14259 (h!20589 (list!6083 lt!507005)) (list!6087 lt!507525))))))

(declare-fun lt!508366 () Unit!24509)

(declare-fun Unit!24631 () Unit!24509)

(assert (=> d!429159 (= lt!508366 Unit!24631)))

(declare-fun lt!508411 () Unit!24509)

(declare-fun e!933987 () Unit!24509)

(assert (=> d!429159 (= lt!508411 e!933987)))

(declare-fun c!241387 () Bool)

(declare-fun lt!508416 () Token!5012)

(assert (=> d!429159 (= c!241387 (not (= (rule!4450 lt!508416) (rule!4450 (h!20589 (list!6083 lt!507005))))))))

(declare-fun lt!508413 () Unit!24509)

(declare-fun lt!508379 () Unit!24509)

(assert (=> d!429159 (= lt!508413 lt!508379)))

(declare-fun lt!508369 () List!15252)

(assert (=> d!429159 (= (list!6087 lt!507525) lt!508369)))

(declare-fun lt!508370 () List!15252)

(declare-fun lemmaSamePrefixThenSameSuffix!607 (List!15252 List!15252 List!15252 List!15252 List!15252) Unit!24509)

(assert (=> d!429159 (= lt!508379 (lemmaSamePrefixThenSameSuffix!607 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))) (list!6087 lt!507525) (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))) lt!508369 lt!508370))))

(declare-fun lt!508375 () Unit!24509)

(declare-fun lt!508392 () Unit!24509)

(assert (=> d!429159 (= lt!508375 lt!508392)))

(declare-fun lt!508381 () List!15252)

(declare-fun lt!508373 () List!15252)

(assert (=> d!429159 (= lt!508381 lt!508373)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!109 (List!15252 List!15252 List!15252) Unit!24509)

(assert (=> d!429159 (= lt!508392 (lemmaIsPrefixSameLengthThenSameList!109 lt!508381 lt!508373 lt!508370))))

(assert (=> d!429159 (= lt!508373 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))))))

(assert (=> d!429159 (= lt!508381 (list!6087 (charsOf!1538 lt!508416)))))

(declare-fun lt!508394 () Unit!24509)

(declare-fun e!933991 () Unit!24509)

(assert (=> d!429159 (= lt!508394 e!933991)))

(declare-fun c!241384 () Bool)

(assert (=> d!429159 (= c!241384 (< (size!12425 (charsOf!1538 lt!508416)) (size!12425 (charsOf!1538 (h!20589 (list!6083 lt!507005))))))))

(declare-fun lt!508378 () Unit!24509)

(declare-fun e!933989 () Unit!24509)

(assert (=> d!429159 (= lt!508378 e!933989)))

(declare-fun c!241383 () Bool)

(assert (=> d!429159 (= c!241383 (> (size!12425 (charsOf!1538 lt!508416)) (size!12425 (charsOf!1538 (h!20589 (list!6083 lt!507005))))))))

(declare-fun lt!508429 () Unit!24509)

(declare-fun lt!508389 () Unit!24509)

(assert (=> d!429159 (= lt!508429 lt!508389)))

(assert (=> d!429159 (matchR!1831 (rulesRegex!412 Lexer!2329 (rules!11706 thiss!10022)) (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))))))

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!10 (LexerInterface!2331 List!15255 List!15252 Token!5012 Rule!5150 List!15252) Unit!24509)

(assert (=> d!429159 (= lt!508389 (lemmaMaxPrefixThenMatchesRulesRegex!10 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))) (h!20589 (list!6083 lt!507005)) (rule!4450 (h!20589 (list!6083 lt!507005))) Nil!15186))))

(declare-fun lt!508424 () Unit!24509)

(declare-fun lt!508425 () Unit!24509)

(assert (=> d!429159 (= lt!508424 lt!508425)))

(declare-fun lt!508387 () List!15252)

(assert (=> d!429159 (= lt!508369 lt!508387)))

(declare-fun lt!508427 () List!15252)

(declare-fun lt!508407 () List!15252)

(assert (=> d!429159 (= lt!508425 (lemmaSamePrefixThenSameSuffix!607 lt!508407 lt!508369 lt!508427 lt!508387 lt!508370))))

(declare-fun getSuffix!655 (List!15252 List!15252) List!15252)

(assert (=> d!429159 (= lt!508387 (getSuffix!655 lt!508370 (list!6087 (charsOf!1538 lt!508416))))))

(assert (=> d!429159 (= lt!508427 (list!6087 (charsOf!1538 lt!508416)))))

(assert (=> d!429159 (= lt!508407 (list!6087 (charsOf!1538 lt!508416)))))

(declare-fun lt!508376 () Unit!24509)

(declare-fun lt!508404 () Unit!24509)

(assert (=> d!429159 (= lt!508376 lt!508404)))

(declare-fun lt!508405 () List!15252)

(assert (=> d!429159 (= (maxPrefixOneRule!663 Lexer!2329 (rule!4450 lt!508416) lt!508370) (Some!2878 (tuple2!14259 (Token!5013 (apply!3974 (transformation!2675 (rule!4450 lt!508416)) (seqFromList!1718 lt!508405)) (rule!4450 lt!508416) (size!12429 lt!508405) lt!508405) lt!508369)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!200 (LexerInterface!2331 List!15255 List!15252 List!15252 List!15252 Rule!5150) Unit!24509)

(assert (=> d!429159 (= lt!508404 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!200 Lexer!2329 (rules!11706 thiss!10022) lt!508405 lt!508370 lt!508369 (rule!4450 lt!508416)))))

(assert (=> d!429159 (= lt!508405 (list!6087 (charsOf!1538 lt!508416)))))

(declare-fun lt!508426 () Unit!24509)

(declare-fun lemmaCharactersSize!306 (Token!5012) Unit!24509)

(assert (=> d!429159 (= lt!508426 (lemmaCharactersSize!306 lt!508416))))

(declare-fun lt!508364 () Unit!24509)

(declare-fun lemmaEqSameImage!117 (TokenValueInjection!5190 BalanceConc!10292 BalanceConc!10292) Unit!24509)

(assert (=> d!429159 (= lt!508364 (lemmaEqSameImage!117 (transformation!2675 (rule!4450 lt!508416)) (charsOf!1538 lt!508416) (seqFromList!1718 (originalCharacters!3537 lt!508416))))))

(declare-fun lt!508374 () Unit!24509)

(declare-fun lemmaSemiInverse!352 (TokenValueInjection!5190 BalanceConc!10292) Unit!24509)

(assert (=> d!429159 (= lt!508374 (lemmaSemiInverse!352 (transformation!2675 (rule!4450 lt!508416)) (charsOf!1538 lt!508416)))))

(declare-fun lt!508415 () Unit!24509)

(declare-fun lemmaInv!384 (TokenValueInjection!5190) Unit!24509)

(assert (=> d!429159 (= lt!508415 (lemmaInv!384 (transformation!2675 (rule!4450 lt!508416))))))

(declare-fun lt!508418 () Unit!24509)

(declare-fun lt!508380 () Unit!24509)

(assert (=> d!429159 (= lt!508418 lt!508380)))

(declare-fun lt!508397 () List!15252)

(assert (=> d!429159 (isPrefix!1205 lt!508397 (++!4093 lt!508397 lt!508369))))

(assert (=> d!429159 (= lt!508380 (lemmaConcatTwoListThenFirstIsPrefix!768 lt!508397 lt!508369))))

(assert (=> d!429159 (= lt!508397 (list!6087 (charsOf!1538 lt!508416)))))

(declare-fun lt!508391 () Unit!24509)

(declare-fun lt!508398 () Unit!24509)

(assert (=> d!429159 (= lt!508391 lt!508398)))

(declare-fun e!933985 () Bool)

(assert (=> d!429159 e!933985))

(declare-fun res!662752 () Bool)

(assert (=> d!429159 (=> (not res!662752) (not e!933985))))

(assert (=> d!429159 (= res!662752 (isDefined!2330 (getRuleFromTag!224 Lexer!2329 (rules!11706 thiss!10022) (tag!2939 (rule!4450 lt!508416)))))))

(assert (=> d!429159 (= lt!508398 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!224 Lexer!2329 (rules!11706 thiss!10022) lt!508370 lt!508416))))

(declare-fun lt!508382 () Option!2879)

(assert (=> d!429159 (= lt!508369 (_2!8015 (get!4621 lt!508382)))))

(assert (=> d!429159 (= lt!508416 (_1!8015 (get!4621 lt!508382)))))

(declare-fun lt!508359 () Unit!24509)

(assert (=> d!429159 (= lt!508359 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!241 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))) (list!6087 lt!507525)))))

(assert (=> d!429159 (= lt!508382 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) lt!508370))))

(declare-fun lt!508396 () Unit!24509)

(declare-fun lt!508419 () Unit!24509)

(assert (=> d!429159 (= lt!508396 lt!508419)))

(declare-fun lt!508402 () List!15252)

(assert (=> d!429159 (isPrefix!1205 lt!508402 (++!4093 lt!508402 (list!6087 lt!507525)))))

(assert (=> d!429159 (= lt!508419 (lemmaConcatTwoListThenFirstIsPrefix!768 lt!508402 (list!6087 lt!507525)))))

(assert (=> d!429159 (= lt!508402 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))))))

(assert (=> d!429159 (= lt!508370 (++!4093 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))) (list!6087 lt!507525)))))

(assert (=> d!429159 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!429159 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!39 Lexer!2329 (rules!11706 thiss!10022) (h!20589 (list!6083 lt!507005)) (rule!4450 (h!20589 (list!6083 lt!507005))) (list!6087 lt!507525)) lt!508366)))

(declare-fun b!1464142 () Bool)

(declare-fun e!933990 () Unit!24509)

(declare-fun Unit!24632 () Unit!24509)

(assert (=> b!1464142 (= e!933990 Unit!24632)))

(declare-fun b!1464143 () Bool)

(assert (=> b!1464143 (= e!933985 (= (rule!4450 lt!508416) (get!4623 (getRuleFromTag!224 Lexer!2329 (rules!11706 thiss!10022) (tag!2939 (rule!4450 lt!508416))))))))

(declare-fun b!1464144 () Bool)

(declare-fun Unit!24633 () Unit!24509)

(assert (=> b!1464144 (= e!933987 Unit!24633)))

(declare-fun b!1464145 () Bool)

(assert (=> b!1464145 false))

(declare-fun lt!508377 () Unit!24509)

(declare-fun lt!508367 () Unit!24509)

(assert (=> b!1464145 (= lt!508377 lt!508367)))

(declare-fun lt!508365 () List!15252)

(assert (=> b!1464145 (not (matchR!1831 (regex!2675 (rule!4450 lt!508416)) lt!508365))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!50 (LexerInterface!2331 List!15255 Rule!5150 List!15252 List!15252 Rule!5150) Unit!24509)

(assert (=> b!1464145 (= lt!508367 (lemmaMaxPrefNoSmallerRuleMatches!50 Lexer!2329 (rules!11706 thiss!10022) (rule!4450 (h!20589 (list!6083 lt!507005))) lt!508365 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))) (rule!4450 lt!508416)))))

(assert (=> b!1464145 (= lt!508365 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))))))

(declare-fun Unit!24634 () Unit!24509)

(assert (=> b!1464145 (= e!933990 Unit!24634)))

(declare-fun b!1464146 () Bool)

(declare-fun res!662751 () Bool)

(assert (=> b!1464146 (=> (not res!662751) (not e!933985))))

(assert (=> b!1464146 (= res!662751 (matchR!1831 (regex!2675 (get!4623 (getRuleFromTag!224 Lexer!2329 (rules!11706 thiss!10022) (tag!2939 (rule!4450 lt!508416))))) (list!6087 (charsOf!1538 lt!508416))))))

(declare-fun b!1464147 () Bool)

(declare-fun Unit!24637 () Unit!24509)

(assert (=> b!1464147 (= e!933989 Unit!24637)))

(declare-fun lt!508368 () Unit!24509)

(assert (=> b!1464147 (= lt!508368 (lemmaMaxPrefixThenMatchesRulesRegex!10 Lexer!2329 (rules!11706 thiss!10022) lt!508370 lt!508416 (rule!4450 lt!508416) lt!508369))))

(assert (=> b!1464147 (matchR!1831 (rulesRegex!412 Lexer!2329 (rules!11706 thiss!10022)) (list!6087 (charsOf!1538 lt!508416)))))

(declare-fun lt!508417 () Unit!24509)

(assert (=> b!1464147 (= lt!508417 lt!508368)))

(declare-fun lt!508422 () List!15252)

(assert (=> b!1464147 (= lt!508422 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))))))

(declare-fun lt!508406 () List!15252)

(assert (=> b!1464147 (= lt!508406 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))))))

(declare-fun lt!508386 () List!15252)

(assert (=> b!1464147 (= lt!508386 (getSuffix!655 lt!508370 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005))))))))

(declare-fun lt!508423 () Unit!24509)

(assert (=> b!1464147 (= lt!508423 (lemmaSamePrefixThenSameSuffix!607 lt!508422 (list!6087 lt!507525) lt!508406 lt!508386 lt!508370))))

(assert (=> b!1464147 (= (list!6087 lt!507525) lt!508386)))

(declare-fun lt!508361 () Unit!24509)

(assert (=> b!1464147 (= lt!508361 lt!508423)))

(declare-fun lt!508363 () List!15252)

(assert (=> b!1464147 (= lt!508363 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))))))

(declare-fun lt!508371 () Unit!24509)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!98 (List!15252 List!15252) Unit!24509)

(assert (=> b!1464147 (= lt!508371 (lemmaAddHeadSuffixToPrefixStillPrefix!98 lt!508363 lt!508370))))

(assert (=> b!1464147 (isPrefix!1205 (++!4093 lt!508363 (Cons!15186 (head!3024 (getSuffix!655 lt!508370 lt!508363)) Nil!15186)) lt!508370)))

(declare-fun lt!508428 () Unit!24509)

(assert (=> b!1464147 (= lt!508428 lt!508371)))

(declare-fun lt!508372 () List!15252)

(assert (=> b!1464147 (= lt!508372 (list!6087 (charsOf!1538 lt!508416)))))

(declare-fun lt!508409 () List!15252)

(assert (=> b!1464147 (= lt!508409 (++!4093 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))) (Cons!15186 (head!3024 (list!6087 lt!507525)) Nil!15186)))))

(declare-fun lt!508383 () Unit!24509)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!10 (List!15252 List!15252 List!15252) Unit!24509)

(assert (=> b!1464147 (= lt!508383 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!10 lt!508372 lt!508409 lt!508370))))

(assert (=> b!1464147 (isPrefix!1205 lt!508409 lt!508372)))

(declare-fun lt!508390 () Unit!24509)

(assert (=> b!1464147 (= lt!508390 lt!508383)))

(declare-fun lt!508395 () Regex!3989)

(assert (=> b!1464147 (= lt!508395 (rulesRegex!412 Lexer!2329 (rules!11706 thiss!10022)))))

(declare-fun lt!508410 () List!15252)

(assert (=> b!1464147 (= lt!508410 (++!4093 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))) (Cons!15186 (head!3024 (list!6087 lt!507525)) Nil!15186)))))

(declare-fun lt!508399 () List!15252)

(assert (=> b!1464147 (= lt!508399 (list!6087 (charsOf!1538 lt!508416)))))

(declare-fun lt!508384 () Unit!24509)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!11 (Regex!3989 List!15252 List!15252) Unit!24509)

(assert (=> b!1464147 (= lt!508384 (lemmaNotPrefixMatchThenCannotMatchLonger!11 lt!508395 lt!508410 lt!508399))))

(assert (=> b!1464147 (not (matchR!1831 lt!508395 lt!508399))))

(declare-fun lt!508403 () Unit!24509)

(assert (=> b!1464147 (= lt!508403 lt!508384)))

(assert (=> b!1464147 false))

(declare-fun b!1464148 () Bool)

(declare-fun e!933986 () Unit!24509)

(declare-fun Unit!24641 () Unit!24509)

(assert (=> b!1464148 (= e!933986 Unit!24641)))

(declare-fun b!1464149 () Bool)

(declare-fun e!933988 () Unit!24509)

(declare-fun Unit!24643 () Unit!24509)

(assert (=> b!1464149 (= e!933988 Unit!24643)))

(declare-fun b!1464150 () Bool)

(declare-fun Unit!24644 () Unit!24509)

(assert (=> b!1464150 (= e!933991 Unit!24644)))

(declare-fun b!1464151 () Bool)

(assert (=> b!1464151 false))

(declare-fun lt!508362 () Unit!24509)

(declare-fun lt!508400 () Unit!24509)

(assert (=> b!1464151 (= lt!508362 lt!508400)))

(declare-fun lt!508421 () List!15252)

(assert (=> b!1464151 (not (matchR!1831 (regex!2675 (rule!4450 (h!20589 (list!6083 lt!507005)))) lt!508421))))

(assert (=> b!1464151 (= lt!508400 (lemmaMaxPrefNoSmallerRuleMatches!50 Lexer!2329 (rules!11706 thiss!10022) (rule!4450 lt!508416) lt!508421 lt!508370 (rule!4450 (h!20589 (list!6083 lt!507005)))))))

(assert (=> b!1464151 (= lt!508421 (list!6087 (charsOf!1538 lt!508416)))))

(declare-fun Unit!24647 () Unit!24509)

(assert (=> b!1464151 (= e!933986 Unit!24647)))

(declare-fun b!1464152 () Bool)

(declare-fun Unit!24649 () Unit!24509)

(assert (=> b!1464152 (= e!933989 Unit!24649)))

(declare-fun b!1464153 () Bool)

(declare-fun Unit!24651 () Unit!24509)

(assert (=> b!1464153 (= e!933987 Unit!24651)))

(declare-fun c!241385 () Bool)

(declare-fun getIndex!78 (List!15255 Rule!5150) Int)

(assert (=> b!1464153 (= c!241385 (< (getIndex!78 (rules!11706 thiss!10022) (rule!4450 (h!20589 (list!6083 lt!507005)))) (getIndex!78 (rules!11706 thiss!10022) (rule!4450 lt!508416))))))

(declare-fun lt!508401 () Unit!24509)

(assert (=> b!1464153 (= lt!508401 e!933986)))

(declare-fun c!241388 () Bool)

(assert (=> b!1464153 (= c!241388 (< (getIndex!78 (rules!11706 thiss!10022) (rule!4450 lt!508416)) (getIndex!78 (rules!11706 thiss!10022) (rule!4450 (h!20589 (list!6083 lt!507005))))))))

(declare-fun lt!508388 () Unit!24509)

(assert (=> b!1464153 (= lt!508388 e!933990)))

(declare-fun c!241386 () Bool)

(assert (=> b!1464153 (= c!241386 (= (getIndex!78 (rules!11706 thiss!10022) (rule!4450 lt!508416)) (getIndex!78 (rules!11706 thiss!10022) (rule!4450 (h!20589 (list!6083 lt!507005))))))))

(declare-fun lt!508360 () Unit!24509)

(assert (=> b!1464153 (= lt!508360 e!933988)))

(assert (=> b!1464153 false))

(declare-fun b!1464154 () Bool)

(declare-fun Unit!24655 () Unit!24509)

(assert (=> b!1464154 (= e!933991 Unit!24655)))

(declare-fun lt!508393 () List!15252)

(assert (=> b!1464154 (= lt!508393 (list!6087 (charsOf!1538 lt!508416)))))

(declare-fun lt!508408 () List!15252)

(assert (=> b!1464154 (= lt!508408 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))))))

(declare-fun lt!508385 () Unit!24509)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!100 (LexerInterface!2331 List!15255 Rule!5150 List!15252 List!15252 List!15252 Rule!5150) Unit!24509)

(assert (=> b!1464154 (= lt!508385 (lemmaMaxPrefixOutputsMaxPrefix!100 Lexer!2329 (rules!11706 thiss!10022) (rule!4450 lt!508416) lt!508393 lt!508370 lt!508408 (rule!4450 (h!20589 (list!6083 lt!507005)))))))

(assert (=> b!1464154 (not (matchR!1831 (regex!2675 (rule!4450 (h!20589 (list!6083 lt!507005)))) lt!508408))))

(declare-fun lt!508414 () Unit!24509)

(assert (=> b!1464154 (= lt!508414 lt!508385)))

(assert (=> b!1464154 false))

(declare-fun b!1464155 () Bool)

(assert (=> b!1464155 false))

(declare-fun lt!508420 () Unit!24509)

(declare-fun lt!508412 () Unit!24509)

(assert (=> b!1464155 (= lt!508420 lt!508412)))

(assert (=> b!1464155 (= (rule!4450 lt!508416) (rule!4450 (h!20589 (list!6083 lt!507005))))))

(declare-fun lemmaSameIndexThenSameElement!26 (List!15255 Rule!5150 Rule!5150) Unit!24509)

(assert (=> b!1464155 (= lt!508412 (lemmaSameIndexThenSameElement!26 (rules!11706 thiss!10022) (rule!4450 lt!508416) (rule!4450 (h!20589 (list!6083 lt!507005)))))))

(declare-fun Unit!24657 () Unit!24509)

(assert (=> b!1464155 (= e!933988 Unit!24657)))

(assert (= (and d!429159 res!662752) b!1464146))

(assert (= (and b!1464146 res!662751) b!1464143))

(assert (= (and d!429159 c!241383) b!1464147))

(assert (= (and d!429159 (not c!241383)) b!1464152))

(assert (= (and d!429159 c!241384) b!1464154))

(assert (= (and d!429159 (not c!241384)) b!1464150))

(assert (= (and d!429159 c!241387) b!1464153))

(assert (= (and d!429159 (not c!241387)) b!1464144))

(assert (= (and b!1464153 c!241385) b!1464151))

(assert (= (and b!1464153 (not c!241385)) b!1464148))

(assert (= (and b!1464153 c!241388) b!1464145))

(assert (= (and b!1464153 (not c!241388)) b!1464142))

(assert (= (and b!1464153 c!241386) b!1464155))

(assert (= (and b!1464153 (not c!241386)) b!1464149))

(declare-fun m!1704155 () Bool)

(assert (=> b!1464146 m!1704155))

(declare-fun m!1704157 () Bool)

(assert (=> b!1464146 m!1704157))

(declare-fun m!1704159 () Bool)

(assert (=> b!1464146 m!1704159))

(declare-fun m!1704161 () Bool)

(assert (=> b!1464146 m!1704161))

(declare-fun m!1704163 () Bool)

(assert (=> b!1464146 m!1704163))

(assert (=> b!1464146 m!1704157))

(assert (=> b!1464146 m!1704155))

(assert (=> b!1464146 m!1704161))

(declare-fun m!1704165 () Bool)

(assert (=> b!1464147 m!1704165))

(assert (=> b!1464147 m!1702591))

(declare-fun m!1704167 () Bool)

(assert (=> b!1464147 m!1704167))

(assert (=> b!1464147 m!1702407))

(declare-fun m!1704169 () Bool)

(assert (=> b!1464147 m!1704169))

(assert (=> b!1464147 m!1702571))

(declare-fun m!1704171 () Bool)

(assert (=> b!1464147 m!1704171))

(declare-fun m!1704173 () Bool)

(assert (=> b!1464147 m!1704173))

(assert (=> b!1464147 m!1704165))

(declare-fun m!1704175 () Bool)

(assert (=> b!1464147 m!1704175))

(assert (=> b!1464147 m!1702591))

(assert (=> b!1464147 m!1702627))

(assert (=> b!1464147 m!1702571))

(declare-fun m!1704177 () Bool)

(assert (=> b!1464147 m!1704177))

(assert (=> b!1464147 m!1704155))

(assert (=> b!1464147 m!1704161))

(assert (=> b!1464147 m!1702407))

(assert (=> b!1464147 m!1704161))

(declare-fun m!1704179 () Bool)

(assert (=> b!1464147 m!1704179))

(assert (=> b!1464147 m!1702605))

(declare-fun m!1704181 () Bool)

(assert (=> b!1464147 m!1704181))

(assert (=> b!1464147 m!1704155))

(declare-fun m!1704183 () Bool)

(assert (=> b!1464147 m!1704183))

(assert (=> b!1464147 m!1704183))

(declare-fun m!1704185 () Bool)

(assert (=> b!1464147 m!1704185))

(declare-fun m!1704187 () Bool)

(assert (=> b!1464147 m!1704187))

(declare-fun m!1704189 () Bool)

(assert (=> b!1464147 m!1704189))

(declare-fun m!1704191 () Bool)

(assert (=> b!1464147 m!1704191))

(assert (=> b!1464147 m!1702605))

(assert (=> b!1464147 m!1702571))

(declare-fun m!1704193 () Bool)

(assert (=> b!1464151 m!1704193))

(declare-fun m!1704195 () Bool)

(assert (=> b!1464151 m!1704195))

(assert (=> b!1464151 m!1704155))

(assert (=> b!1464151 m!1704155))

(assert (=> b!1464151 m!1704161))

(assert (=> b!1464143 m!1704157))

(assert (=> b!1464143 m!1704157))

(assert (=> b!1464143 m!1704159))

(declare-fun m!1704197 () Bool)

(assert (=> b!1464155 m!1704197))

(declare-fun m!1704199 () Bool)

(assert (=> d!429159 m!1704199))

(assert (=> d!429159 m!1702591))

(declare-fun m!1704201 () Bool)

(assert (=> d!429159 m!1704201))

(assert (=> d!429159 m!1702407))

(declare-fun m!1704203 () Bool)

(assert (=> d!429159 m!1704203))

(declare-fun m!1704205 () Bool)

(assert (=> d!429159 m!1704205))

(declare-fun m!1704207 () Bool)

(assert (=> d!429159 m!1704207))

(declare-fun m!1704209 () Bool)

(assert (=> d!429159 m!1704209))

(declare-fun m!1704211 () Bool)

(assert (=> d!429159 m!1704211))

(assert (=> d!429159 m!1702591))

(declare-fun m!1704213 () Bool)

(assert (=> d!429159 m!1704213))

(assert (=> d!429159 m!1704157))

(declare-fun m!1704215 () Bool)

(assert (=> d!429159 m!1704215))

(declare-fun m!1704217 () Bool)

(assert (=> d!429159 m!1704217))

(assert (=> d!429159 m!1702407))

(assert (=> d!429159 m!1702571))

(declare-fun m!1704223 () Bool)

(assert (=> d!429159 m!1704223))

(assert (=> d!429159 m!1702605))

(assert (=> d!429159 m!1702605))

(declare-fun m!1704225 () Bool)

(assert (=> d!429159 m!1704225))

(declare-fun m!1704227 () Bool)

(assert (=> d!429159 m!1704227))

(assert (=> d!429159 m!1702571))

(assert (=> d!429159 m!1702591))

(assert (=> d!429159 m!1702571))

(declare-fun m!1704229 () Bool)

(assert (=> d!429159 m!1704229))

(assert (=> d!429159 m!1704199))

(declare-fun m!1704231 () Bool)

(assert (=> d!429159 m!1704231))

(assert (=> d!429159 m!1704155))

(declare-fun m!1704233 () Bool)

(assert (=> d!429159 m!1704233))

(declare-fun m!1704235 () Bool)

(assert (=> d!429159 m!1704235))

(assert (=> d!429159 m!1704155))

(declare-fun m!1704237 () Bool)

(assert (=> d!429159 m!1704237))

(assert (=> d!429159 m!1701757))

(assert (=> d!429159 m!1704233))

(assert (=> d!429159 m!1704155))

(declare-fun m!1704239 () Bool)

(assert (=> d!429159 m!1704239))

(declare-fun m!1704241 () Bool)

(assert (=> d!429159 m!1704241))

(assert (=> d!429159 m!1704239))

(assert (=> d!429159 m!1702571))

(declare-fun m!1704243 () Bool)

(assert (=> d!429159 m!1704243))

(declare-fun m!1704245 () Bool)

(assert (=> d!429159 m!1704245))

(assert (=> d!429159 m!1704213))

(declare-fun m!1704247 () Bool)

(assert (=> d!429159 m!1704247))

(assert (=> d!429159 m!1703599))

(assert (=> d!429159 m!1703617))

(assert (=> d!429159 m!1704155))

(declare-fun m!1704249 () Bool)

(assert (=> d!429159 m!1704249))

(assert (=> d!429159 m!1704161))

(declare-fun m!1704251 () Bool)

(assert (=> d!429159 m!1704251))

(assert (=> d!429159 m!1702571))

(assert (=> d!429159 m!1702591))

(assert (=> d!429159 m!1703599))

(assert (=> d!429159 m!1704155))

(assert (=> d!429159 m!1704161))

(assert (=> d!429159 m!1704157))

(declare-fun m!1704253 () Bool)

(assert (=> d!429159 m!1704253))

(assert (=> d!429159 m!1702571))

(assert (=> d!429159 m!1702591))

(assert (=> d!429159 m!1702593))

(declare-fun m!1704255 () Bool)

(assert (=> d!429159 m!1704255))

(declare-fun m!1704257 () Bool)

(assert (=> d!429159 m!1704257))

(assert (=> d!429159 m!1702605))

(assert (=> d!429159 m!1702571))

(declare-fun m!1704259 () Bool)

(assert (=> b!1464153 m!1704259))

(declare-fun m!1704261 () Bool)

(assert (=> b!1464153 m!1704261))

(declare-fun m!1704263 () Bool)

(assert (=> b!1464145 m!1704263))

(assert (=> b!1464145 m!1702605))

(assert (=> b!1464145 m!1702605))

(assert (=> b!1464145 m!1702571))

(assert (=> b!1464145 m!1702571))

(declare-fun m!1704265 () Bool)

(assert (=> b!1464145 m!1704265))

(assert (=> b!1464154 m!1704155))

(declare-fun m!1704267 () Bool)

(assert (=> b!1464154 m!1704267))

(assert (=> b!1464154 m!1702605))

(assert (=> b!1464154 m!1702571))

(assert (=> b!1464154 m!1702605))

(assert (=> b!1464154 m!1704155))

(assert (=> b!1464154 m!1704161))

(declare-fun m!1704269 () Bool)

(assert (=> b!1464154 m!1704269))

(assert (=> b!1463437 d!429159))

(declare-fun d!429223 () Bool)

(assert (=> d!429223 (= (list!6087 lt!507538) (list!6088 (c!241180 lt!507538)))))

(declare-fun bs!344529 () Bool)

(assert (= bs!344529 d!429223))

(declare-fun m!1704277 () Bool)

(assert (=> bs!344529 m!1704277))

(assert (=> b!1463437 d!429223))

(declare-fun d!429227 () Bool)

(declare-fun lt!508440 () BalanceConc!10292)

(assert (=> d!429227 (= (list!6087 lt!508440) (printList!727 Lexer!2329 (list!6083 (seqFromList!1716 (t!134647 (list!6083 lt!507005))))))))

(assert (=> d!429227 (= lt!508440 (printTailRec!699 Lexer!2329 (seqFromList!1716 (t!134647 (list!6083 lt!507005))) 0 (BalanceConc!10293 Empty!5176)))))

(assert (=> d!429227 (= (print!1107 Lexer!2329 (seqFromList!1716 (t!134647 (list!6083 lt!507005)))) lt!508440)))

(declare-fun bs!344530 () Bool)

(assert (= bs!344530 d!429227))

(declare-fun m!1704279 () Bool)

(assert (=> bs!344530 m!1704279))

(assert (=> bs!344530 m!1702599))

(declare-fun m!1704281 () Bool)

(assert (=> bs!344530 m!1704281))

(assert (=> bs!344530 m!1704281))

(declare-fun m!1704283 () Bool)

(assert (=> bs!344530 m!1704283))

(assert (=> bs!344530 m!1702599))

(declare-fun m!1704285 () Bool)

(assert (=> bs!344530 m!1704285))

(assert (=> b!1463437 d!429227))

(declare-fun d!429229 () Bool)

(assert (=> d!429229 (= (list!6083 (prepend!429 (seqFromList!1716 (t!134647 (t!134647 (list!6083 lt!507005)))) (h!20589 (t!134647 (list!6083 lt!507005))))) (list!6086 (c!241182 (prepend!429 (seqFromList!1716 (t!134647 (t!134647 (list!6083 lt!507005)))) (h!20589 (t!134647 (list!6083 lt!507005)))))))))

(declare-fun bs!344531 () Bool)

(assert (= bs!344531 d!429229))

(declare-fun m!1704289 () Bool)

(assert (=> bs!344531 m!1704289))

(assert (=> b!1463437 d!429229))

(declare-fun d!429231 () Bool)

(declare-fun lt!508441 () BalanceConc!10292)

(assert (=> d!429231 (= (list!6087 lt!508441) (originalCharacters!3537 (h!20589 (list!6083 lt!507005))))))

(assert (=> d!429231 (= lt!508441 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (list!6083 lt!507005))))) (value!85885 (h!20589 (list!6083 lt!507005)))))))

(assert (=> d!429231 (= (charsOf!1538 (h!20589 (list!6083 lt!507005))) lt!508441)))

(declare-fun b_lambda!45663 () Bool)

(assert (=> (not b_lambda!45663) (not d!429231)))

(declare-fun tb!82665 () Bool)

(declare-fun t!134678 () Bool)

(assert (=> (and b!1463502 (= (toChars!3845 (transformation!2675 (h!20590 (rules!11706 other!32)))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (list!6083 lt!507005)))))) t!134678) tb!82665))

(declare-fun b!1464161 () Bool)

(declare-fun e!933995 () Bool)

(declare-fun tp!411855 () Bool)

(assert (=> b!1464161 (= e!933995 (and (inv!20311 (c!241180 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (list!6083 lt!507005))))) (value!85885 (h!20589 (list!6083 lt!507005)))))) tp!411855))))

(declare-fun result!99318 () Bool)

(assert (=> tb!82665 (= result!99318 (and (inv!20312 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (list!6083 lt!507005))))) (value!85885 (h!20589 (list!6083 lt!507005))))) e!933995))))

(assert (= tb!82665 b!1464161))

(declare-fun m!1704313 () Bool)

(assert (=> b!1464161 m!1704313))

(declare-fun m!1704315 () Bool)

(assert (=> tb!82665 m!1704315))

(assert (=> d!429231 t!134678))

(declare-fun b_and!99929 () Bool)

(assert (= b_and!99917 (and (=> t!134678 result!99318) b_and!99929)))

(declare-fun t!134680 () Bool)

(declare-fun tb!82667 () Bool)

(assert (=> (and b!1463508 (= (toChars!3845 (transformation!2675 (h!20590 (rules!11706 thiss!10022)))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (list!6083 lt!507005)))))) t!134680) tb!82667))

(declare-fun result!99320 () Bool)

(assert (= result!99320 result!99318))

(assert (=> d!429231 t!134680))

(declare-fun b_and!99931 () Bool)

(assert (= b_and!99919 (and (=> t!134680 result!99320) b_and!99931)))

(declare-fun m!1704319 () Bool)

(assert (=> d!429231 m!1704319))

(declare-fun m!1704325 () Bool)

(assert (=> d!429231 m!1704325))

(assert (=> b!1463437 d!429231))

(declare-fun d!429239 () Bool)

(declare-fun e!933998 () Bool)

(assert (=> d!429239 e!933998))

(declare-fun res!662757 () Bool)

(assert (=> d!429239 (=> (not res!662757) (not e!933998))))

(assert (=> d!429239 (= res!662757 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (seqFromList!1716 (t!134647 (list!6083 lt!507005))))))) (t!134647 (list!6083 lt!507005))))))

(declare-fun lt!508462 () Unit!24509)

(declare-fun e!933997 () Unit!24509)

(assert (=> d!429239 (= lt!508462 e!933997)))

(declare-fun c!241390 () Bool)

(assert (=> d!429239 (= c!241390 (or ((_ is Nil!15188) (t!134647 (list!6083 lt!507005))) ((_ is Nil!15188) (t!134647 (t!134647 (list!6083 lt!507005))))))))

(assert (=> d!429239 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!429239 (= (theoremInvertabilityWhenTokenListSeparable!79 Lexer!2329 (rules!11706 thiss!10022) (t!134647 (list!6083 lt!507005))) lt!508462)))

(declare-fun b!1464163 () Bool)

(declare-fun Unit!24658 () Unit!24509)

(assert (=> b!1464163 (= e!933997 Unit!24658)))

(declare-fun b!1464164 () Bool)

(declare-fun Unit!24659 () Unit!24509)

(assert (=> b!1464164 (= e!933997 Unit!24659)))

(declare-fun lt!508461 () BalanceConc!10292)

(assert (=> b!1464164 (= lt!508461 (print!1107 Lexer!2329 (seqFromList!1716 (t!134647 (list!6083 lt!507005)))))))

(declare-fun lt!508448 () BalanceConc!10292)

(assert (=> b!1464164 (= lt!508448 (print!1107 Lexer!2329 (seqFromList!1716 (t!134647 (t!134647 (list!6083 lt!507005))))))))

(declare-fun lt!508468 () tuple2!14256)

(assert (=> b!1464164 (= lt!508468 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) lt!508448))))

(declare-fun lt!508449 () List!15252)

(assert (=> b!1464164 (= lt!508449 (list!6087 (charsOf!1538 (h!20589 (t!134647 (list!6083 lt!507005))))))))

(declare-fun lt!508450 () List!15252)

(assert (=> b!1464164 (= lt!508450 (list!6087 lt!508448))))

(declare-fun lt!508455 () Unit!24509)

(assert (=> b!1464164 (= lt!508455 (lemmaConcatTwoListThenFirstIsPrefix!768 lt!508449 lt!508450))))

(assert (=> b!1464164 (isPrefix!1205 lt!508449 (++!4093 lt!508449 lt!508450))))

(declare-fun lt!508463 () Unit!24509)

(assert (=> b!1464164 (= lt!508463 lt!508455)))

(declare-fun lt!508467 () Unit!24509)

(assert (=> b!1464164 (= lt!508467 (theoremInvertabilityWhenTokenListSeparable!79 Lexer!2329 (rules!11706 thiss!10022) (t!134647 (t!134647 (list!6083 lt!507005)))))))

(declare-fun lt!508452 () Unit!24509)

(assert (=> b!1464164 (= lt!508452 (seqFromListBHdTlConstructive!97 (h!20589 (t!134647 (t!134647 (list!6083 lt!507005)))) (t!134647 (t!134647 (t!134647 (list!6083 lt!507005)))) (_1!8014 lt!508468)))))

(assert (=> b!1464164 (= (list!6083 (_1!8014 lt!508468)) (list!6083 (prepend!429 (seqFromList!1716 (t!134647 (t!134647 (t!134647 (list!6083 lt!507005))))) (h!20589 (t!134647 (t!134647 (list!6083 lt!507005)))))))))

(declare-fun lt!508453 () Unit!24509)

(assert (=> b!1464164 (= lt!508453 lt!508452)))

(declare-fun lt!508465 () Option!2879)

(assert (=> b!1464164 (= lt!508465 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 lt!508461)))))

(assert (=> b!1464164 (= (print!1107 Lexer!2329 (singletonSeq!1281 (h!20589 (t!134647 (list!6083 lt!507005))))) (printTailRec!699 Lexer!2329 (singletonSeq!1281 (h!20589 (t!134647 (list!6083 lt!507005)))) 0 (BalanceConc!10293 Empty!5176)))))

(declare-fun lt!508464 () Unit!24509)

(declare-fun Unit!24660 () Unit!24509)

(assert (=> b!1464164 (= lt!508464 Unit!24660)))

(declare-fun lt!508451 () Unit!24509)

(assert (=> b!1464164 (= lt!508451 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!241 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (t!134647 (list!6083 lt!507005))))) (list!6087 lt!508448)))))

(assert (=> b!1464164 (= (list!6087 (charsOf!1538 (h!20589 (t!134647 (list!6083 lt!507005))))) (originalCharacters!3537 (h!20589 (t!134647 (list!6083 lt!507005)))))))

(declare-fun lt!508459 () Unit!24509)

(declare-fun Unit!24661 () Unit!24509)

(assert (=> b!1464164 (= lt!508459 Unit!24661)))

(assert (=> b!1464164 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (t!134647 (list!6083 lt!507005))))) 0))) (Cons!15186 (head!3024 (originalCharacters!3537 (h!20589 (t!134647 (t!134647 (list!6083 lt!507005)))))) Nil!15186))))

(declare-fun lt!508446 () Unit!24509)

(declare-fun Unit!24662 () Unit!24509)

(assert (=> b!1464164 (= lt!508446 Unit!24662)))

(assert (=> b!1464164 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (t!134647 (list!6083 lt!507005))))) 0))) (Cons!15186 (head!3024 (list!6087 lt!508448)) Nil!15186))))

(declare-fun lt!508457 () Unit!24509)

(declare-fun Unit!24663 () Unit!24509)

(assert (=> b!1464164 (= lt!508457 Unit!24663)))

(assert (=> b!1464164 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (t!134647 (list!6083 lt!507005))))) 0))) (Cons!15186 (head!3025 lt!508448) Nil!15186))))

(declare-fun lt!508445 () Unit!24509)

(declare-fun Unit!24664 () Unit!24509)

(assert (=> b!1464164 (= lt!508445 Unit!24664)))

(assert (=> b!1464164 (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (originalCharacters!3537 (h!20589 (t!134647 (list!6083 lt!507005))))))))

(declare-fun lt!508447 () Unit!24509)

(declare-fun Unit!24665 () Unit!24509)

(assert (=> b!1464164 (= lt!508447 Unit!24665)))

(assert (=> b!1464164 (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (t!134647 (list!6083 lt!507005)))))))))

(declare-fun lt!508458 () Unit!24509)

(declare-fun Unit!24666 () Unit!24509)

(assert (=> b!1464164 (= lt!508458 Unit!24666)))

(declare-fun lt!508460 () Unit!24509)

(declare-fun Unit!24667 () Unit!24509)

(assert (=> b!1464164 (= lt!508460 Unit!24667)))

(assert (=> b!1464164 (= (_1!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (t!134647 (list!6083 lt!507005)))))))) (h!20589 (t!134647 (list!6083 lt!507005))))))

(declare-fun lt!508466 () Unit!24509)

(declare-fun Unit!24668 () Unit!24509)

(assert (=> b!1464164 (= lt!508466 Unit!24668)))

(assert (=> b!1464164 (isEmpty!9545 (_2!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (t!134647 (list!6083 lt!507005)))))))))))

(declare-fun lt!508454 () Unit!24509)

(declare-fun Unit!24669 () Unit!24509)

(assert (=> b!1464164 (= lt!508454 Unit!24669)))

(assert (=> b!1464164 (matchR!1831 (regex!2675 (rule!4450 (h!20589 (t!134647 (list!6083 lt!507005))))) (list!6087 (charsOf!1538 (h!20589 (t!134647 (list!6083 lt!507005))))))))

(declare-fun lt!508469 () Unit!24509)

(declare-fun Unit!24670 () Unit!24509)

(assert (=> b!1464164 (= lt!508469 Unit!24670)))

(assert (=> b!1464164 (= (rule!4450 (h!20589 (t!134647 (list!6083 lt!507005)))) (rule!4450 (h!20589 (t!134647 (list!6083 lt!507005)))))))

(declare-fun lt!508456 () Unit!24509)

(declare-fun Unit!24671 () Unit!24509)

(assert (=> b!1464164 (= lt!508456 Unit!24671)))

(declare-fun lt!508470 () Unit!24509)

(assert (=> b!1464164 (= lt!508470 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!39 Lexer!2329 (rules!11706 thiss!10022) (h!20589 (t!134647 (list!6083 lt!507005))) (rule!4450 (h!20589 (t!134647 (list!6083 lt!507005)))) (list!6087 lt!508448)))))

(declare-fun b!1464165 () Bool)

(assert (=> b!1464165 (= e!933998 (isEmpty!9544 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (seqFromList!1716 (t!134647 (list!6083 lt!507005))))))))))

(assert (= (and d!429239 c!241390) b!1464163))

(assert (= (and d!429239 (not c!241390)) b!1464164))

(assert (= (and d!429239 res!662757) b!1464165))

(assert (=> d!429239 m!1702599))

(assert (=> d!429239 m!1701757))

(declare-fun m!1704333 () Bool)

(assert (=> d!429239 m!1704333))

(assert (=> d!429239 m!1702601))

(declare-fun m!1704335 () Bool)

(assert (=> d!429239 m!1704335))

(assert (=> d!429239 m!1702599))

(assert (=> d!429239 m!1702601))

(declare-fun m!1704337 () Bool)

(assert (=> b!1464164 m!1704337))

(declare-fun m!1704339 () Bool)

(assert (=> b!1464164 m!1704339))

(declare-fun m!1704341 () Bool)

(assert (=> b!1464164 m!1704341))

(declare-fun m!1704343 () Bool)

(assert (=> b!1464164 m!1704343))

(assert (=> b!1464164 m!1703447))

(declare-fun m!1704345 () Bool)

(assert (=> b!1464164 m!1704345))

(declare-fun m!1704347 () Bool)

(assert (=> b!1464164 m!1704347))

(declare-fun m!1704349 () Bool)

(assert (=> b!1464164 m!1704349))

(declare-fun m!1704351 () Bool)

(assert (=> b!1464164 m!1704351))

(declare-fun m!1704353 () Bool)

(assert (=> b!1464164 m!1704353))

(assert (=> b!1464164 m!1704341))

(declare-fun m!1704355 () Bool)

(assert (=> b!1464164 m!1704355))

(declare-fun m!1704357 () Bool)

(assert (=> b!1464164 m!1704357))

(declare-fun m!1704359 () Bool)

(assert (=> b!1464164 m!1704359))

(assert (=> b!1464164 m!1704345))

(declare-fun m!1704361 () Bool)

(assert (=> b!1464164 m!1704361))

(declare-fun m!1704363 () Bool)

(assert (=> b!1464164 m!1704363))

(assert (=> b!1464164 m!1703447))

(assert (=> b!1464164 m!1704363))

(declare-fun m!1704365 () Bool)

(assert (=> b!1464164 m!1704365))

(assert (=> b!1464164 m!1702599))

(assert (=> b!1464164 m!1704359))

(declare-fun m!1704367 () Bool)

(assert (=> b!1464164 m!1704367))

(declare-fun m!1704369 () Bool)

(assert (=> b!1464164 m!1704369))

(assert (=> b!1464164 m!1702585))

(declare-fun m!1704371 () Bool)

(assert (=> b!1464164 m!1704371))

(declare-fun m!1704373 () Bool)

(assert (=> b!1464164 m!1704373))

(assert (=> b!1464164 m!1702577))

(declare-fun m!1704375 () Bool)

(assert (=> b!1464164 m!1704375))

(declare-fun m!1704377 () Bool)

(assert (=> b!1464164 m!1704377))

(declare-fun m!1704379 () Bool)

(assert (=> b!1464164 m!1704379))

(declare-fun m!1704381 () Bool)

(assert (=> b!1464164 m!1704381))

(declare-fun m!1704383 () Bool)

(assert (=> b!1464164 m!1704383))

(declare-fun m!1704385 () Bool)

(assert (=> b!1464164 m!1704385))

(assert (=> b!1464164 m!1704369))

(declare-fun m!1704387 () Bool)

(assert (=> b!1464164 m!1704387))

(assert (=> b!1464164 m!1704363))

(declare-fun m!1704389 () Bool)

(assert (=> b!1464164 m!1704389))

(declare-fun m!1704391 () Bool)

(assert (=> b!1464164 m!1704391))

(assert (=> b!1464164 m!1702599))

(assert (=> b!1464164 m!1702601))

(assert (=> b!1464164 m!1704349))

(assert (=> b!1464164 m!1704351))

(assert (=> b!1464164 m!1704345))

(declare-fun m!1704393 () Bool)

(assert (=> b!1464164 m!1704393))

(assert (=> b!1464164 m!1704363))

(declare-fun m!1704395 () Bool)

(assert (=> b!1464164 m!1704395))

(assert (=> b!1464164 m!1702585))

(assert (=> b!1464164 m!1703447))

(declare-fun m!1704397 () Bool)

(assert (=> b!1464164 m!1704397))

(assert (=> b!1464164 m!1704337))

(assert (=> b!1464164 m!1704375))

(declare-fun m!1704399 () Bool)

(assert (=> b!1464164 m!1704399))

(assert (=> b!1464164 m!1704341))

(assert (=> b!1464164 m!1704357))

(assert (=> b!1464164 m!1702577))

(assert (=> b!1464164 m!1703447))

(assert (=> b!1464164 m!1704353))

(declare-fun m!1704401 () Bool)

(assert (=> b!1464164 m!1704401))

(assert (=> b!1464165 m!1702599))

(assert (=> b!1464165 m!1702599))

(assert (=> b!1464165 m!1702601))

(assert (=> b!1464165 m!1702601))

(assert (=> b!1464165 m!1704335))

(declare-fun m!1704403 () Bool)

(assert (=> b!1464165 m!1704403))

(assert (=> b!1463437 d!429239))

(declare-fun d!429247 () Bool)

(declare-fun lt!508477 () BalanceConc!10292)

(assert (=> d!429247 (= (list!6087 lt!508477) (printListTailRec!292 Lexer!2329 (dropList!483 (singletonSeq!1281 (h!20589 (list!6083 lt!507005))) 0) (list!6087 (BalanceConc!10293 Empty!5176))))))

(declare-fun e!934000 () BalanceConc!10292)

(assert (=> d!429247 (= lt!508477 e!934000)))

(declare-fun c!241391 () Bool)

(assert (=> d!429247 (= c!241391 (>= 0 (size!12423 (singletonSeq!1281 (h!20589 (list!6083 lt!507005))))))))

(declare-fun e!933999 () Bool)

(assert (=> d!429247 e!933999))

(declare-fun res!662758 () Bool)

(assert (=> d!429247 (=> (not res!662758) (not e!933999))))

(assert (=> d!429247 (= res!662758 (>= 0 0))))

(assert (=> d!429247 (= (printTailRec!699 Lexer!2329 (singletonSeq!1281 (h!20589 (list!6083 lt!507005))) 0 (BalanceConc!10293 Empty!5176)) lt!508477)))

(declare-fun b!1464166 () Bool)

(assert (=> b!1464166 (= e!933999 (<= 0 (size!12423 (singletonSeq!1281 (h!20589 (list!6083 lt!507005))))))))

(declare-fun b!1464167 () Bool)

(assert (=> b!1464167 (= e!934000 (BalanceConc!10293 Empty!5176))))

(declare-fun b!1464168 () Bool)

(assert (=> b!1464168 (= e!934000 (printTailRec!699 Lexer!2329 (singletonSeq!1281 (h!20589 (list!6083 lt!507005))) (+ 0 1) (++!4097 (BalanceConc!10293 Empty!5176) (charsOf!1538 (apply!3965 (singletonSeq!1281 (h!20589 (list!6083 lt!507005))) 0)))))))

(declare-fun lt!508475 () List!15254)

(assert (=> b!1464168 (= lt!508475 (list!6083 (singletonSeq!1281 (h!20589 (list!6083 lt!507005)))))))

(declare-fun lt!508473 () Unit!24509)

(assert (=> b!1464168 (= lt!508473 (lemmaDropApply!495 lt!508475 0))))

(assert (=> b!1464168 (= (head!3020 (drop!745 lt!508475 0)) (apply!3966 lt!508475 0))))

(declare-fun lt!508474 () Unit!24509)

(assert (=> b!1464168 (= lt!508474 lt!508473)))

(declare-fun lt!508476 () List!15254)

(assert (=> b!1464168 (= lt!508476 (list!6083 (singletonSeq!1281 (h!20589 (list!6083 lt!507005)))))))

(declare-fun lt!508471 () Unit!24509)

(assert (=> b!1464168 (= lt!508471 (lemmaDropTail!475 lt!508476 0))))

(assert (=> b!1464168 (= (tail!2177 (drop!745 lt!508476 0)) (drop!745 lt!508476 (+ 0 1)))))

(declare-fun lt!508472 () Unit!24509)

(assert (=> b!1464168 (= lt!508472 lt!508471)))

(assert (= (and d!429247 res!662758) b!1464166))

(assert (= (and d!429247 c!241391) b!1464167))

(assert (= (and d!429247 (not c!241391)) b!1464168))

(declare-fun m!1704405 () Bool)

(assert (=> d!429247 m!1704405))

(assert (=> d!429247 m!1703227))

(declare-fun m!1704407 () Bool)

(assert (=> d!429247 m!1704407))

(assert (=> d!429247 m!1702567))

(assert (=> d!429247 m!1704405))

(declare-fun m!1704409 () Bool)

(assert (=> d!429247 m!1704409))

(assert (=> d!429247 m!1703227))

(assert (=> d!429247 m!1702567))

(declare-fun m!1704411 () Bool)

(assert (=> d!429247 m!1704411))

(assert (=> b!1464166 m!1702567))

(assert (=> b!1464166 m!1704411))

(assert (=> b!1464168 m!1702567))

(assert (=> b!1464168 m!1703457))

(declare-fun m!1704413 () Bool)

(assert (=> b!1464168 m!1704413))

(assert (=> b!1464168 m!1702567))

(declare-fun m!1704415 () Bool)

(assert (=> b!1464168 m!1704415))

(declare-fun m!1704417 () Bool)

(assert (=> b!1464168 m!1704417))

(assert (=> b!1464168 m!1702567))

(declare-fun m!1704419 () Bool)

(assert (=> b!1464168 m!1704419))

(declare-fun m!1704421 () Bool)

(assert (=> b!1464168 m!1704421))

(declare-fun m!1704423 () Bool)

(assert (=> b!1464168 m!1704423))

(assert (=> b!1464168 m!1704415))

(declare-fun m!1704425 () Bool)

(assert (=> b!1464168 m!1704425))

(declare-fun m!1704427 () Bool)

(assert (=> b!1464168 m!1704427))

(assert (=> b!1464168 m!1704427))

(declare-fun m!1704429 () Bool)

(assert (=> b!1464168 m!1704429))

(assert (=> b!1464168 m!1704425))

(assert (=> b!1464168 m!1704419))

(declare-fun m!1704431 () Bool)

(assert (=> b!1464168 m!1704431))

(declare-fun m!1704433 () Bool)

(assert (=> b!1464168 m!1704433))

(assert (=> b!1464168 m!1704433))

(declare-fun m!1704435 () Bool)

(assert (=> b!1464168 m!1704435))

(assert (=> b!1463437 d!429247))

(declare-fun b!1464197 () Bool)

(declare-fun res!662776 () Bool)

(declare-fun e!934016 () Bool)

(assert (=> b!1464197 (=> res!662776 e!934016)))

(declare-fun e!934019 () Bool)

(assert (=> b!1464197 (= res!662776 e!934019)))

(declare-fun res!662775 () Bool)

(assert (=> b!1464197 (=> (not res!662775) (not e!934019))))

(declare-fun lt!508480 () Bool)

(assert (=> b!1464197 (= res!662775 lt!508480)))

(declare-fun b!1464198 () Bool)

(declare-fun e!934017 () Bool)

(assert (=> b!1464198 (= e!934017 (not (= (head!3024 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005))))) (c!241181 (regex!2675 (rule!4450 (h!20589 (list!6083 lt!507005))))))))))

(declare-fun d!429249 () Bool)

(declare-fun e!934021 () Bool)

(assert (=> d!429249 e!934021))

(declare-fun c!241398 () Bool)

(assert (=> d!429249 (= c!241398 ((_ is EmptyExpr!3989) (regex!2675 (rule!4450 (h!20589 (list!6083 lt!507005))))))))

(declare-fun e!934020 () Bool)

(assert (=> d!429249 (= lt!508480 e!934020)))

(declare-fun c!241400 () Bool)

(assert (=> d!429249 (= c!241400 (isEmpty!9545 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005))))))))

(declare-fun validRegex!1685 (Regex!3989) Bool)

(assert (=> d!429249 (validRegex!1685 (regex!2675 (rule!4450 (h!20589 (list!6083 lt!507005)))))))

(assert (=> d!429249 (= (matchR!1831 (regex!2675 (rule!4450 (h!20589 (list!6083 lt!507005)))) (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005))))) lt!508480)))

(declare-fun b!1464199 () Bool)

(declare-fun call!98488 () Bool)

(assert (=> b!1464199 (= e!934021 (= lt!508480 call!98488))))

(declare-fun b!1464200 () Bool)

(declare-fun res!662782 () Bool)

(assert (=> b!1464200 (=> (not res!662782) (not e!934019))))

(assert (=> b!1464200 (= res!662782 (not call!98488))))

(declare-fun b!1464201 () Bool)

(declare-fun e!934015 () Bool)

(assert (=> b!1464201 (= e!934015 (not lt!508480))))

(declare-fun b!1464202 () Bool)

(assert (=> b!1464202 (= e!934019 (= (head!3024 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005))))) (c!241181 (regex!2675 (rule!4450 (h!20589 (list!6083 lt!507005)))))))))

(declare-fun b!1464203 () Bool)

(assert (=> b!1464203 (= e!934021 e!934015)))

(declare-fun c!241399 () Bool)

(assert (=> b!1464203 (= c!241399 ((_ is EmptyLang!3989) (regex!2675 (rule!4450 (h!20589 (list!6083 lt!507005))))))))

(declare-fun b!1464204 () Bool)

(declare-fun res!662780 () Bool)

(assert (=> b!1464204 (=> res!662780 e!934017)))

(assert (=> b!1464204 (= res!662780 (not (isEmpty!9545 (tail!2179 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005))))))))))

(declare-fun bm!98483 () Bool)

(assert (=> bm!98483 (= call!98488 (isEmpty!9545 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005))))))))

(declare-fun b!1464205 () Bool)

(declare-fun e!934018 () Bool)

(assert (=> b!1464205 (= e!934016 e!934018)))

(declare-fun res!662779 () Bool)

(assert (=> b!1464205 (=> (not res!662779) (not e!934018))))

(assert (=> b!1464205 (= res!662779 (not lt!508480))))

(declare-fun b!1464206 () Bool)

(declare-fun derivativeStep!1007 (Regex!3989 C!8156) Regex!3989)

(assert (=> b!1464206 (= e!934020 (matchR!1831 (derivativeStep!1007 (regex!2675 (rule!4450 (h!20589 (list!6083 lt!507005)))) (head!3024 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))))) (tail!2179 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))))))))

(declare-fun b!1464207 () Bool)

(declare-fun nullable!1251 (Regex!3989) Bool)

(assert (=> b!1464207 (= e!934020 (nullable!1251 (regex!2675 (rule!4450 (h!20589 (list!6083 lt!507005))))))))

(declare-fun b!1464208 () Bool)

(declare-fun res!662777 () Bool)

(assert (=> b!1464208 (=> res!662777 e!934016)))

(assert (=> b!1464208 (= res!662777 (not ((_ is ElementMatch!3989) (regex!2675 (rule!4450 (h!20589 (list!6083 lt!507005)))))))))

(assert (=> b!1464208 (= e!934015 e!934016)))

(declare-fun b!1464209 () Bool)

(assert (=> b!1464209 (= e!934018 e!934017)))

(declare-fun res!662781 () Bool)

(assert (=> b!1464209 (=> res!662781 e!934017)))

(assert (=> b!1464209 (= res!662781 call!98488)))

(declare-fun b!1464210 () Bool)

(declare-fun res!662778 () Bool)

(assert (=> b!1464210 (=> (not res!662778) (not e!934019))))

(assert (=> b!1464210 (= res!662778 (isEmpty!9545 (tail!2179 (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))))))))

(assert (= (and d!429249 c!241400) b!1464207))

(assert (= (and d!429249 (not c!241400)) b!1464206))

(assert (= (and d!429249 c!241398) b!1464199))

(assert (= (and d!429249 (not c!241398)) b!1464203))

(assert (= (and b!1464203 c!241399) b!1464201))

(assert (= (and b!1464203 (not c!241399)) b!1464208))

(assert (= (and b!1464208 (not res!662777)) b!1464197))

(assert (= (and b!1464197 res!662775) b!1464200))

(assert (= (and b!1464200 res!662782) b!1464210))

(assert (= (and b!1464210 res!662778) b!1464202))

(assert (= (and b!1464197 (not res!662776)) b!1464205))

(assert (= (and b!1464205 res!662779) b!1464209))

(assert (= (and b!1464209 (not res!662781)) b!1464204))

(assert (= (and b!1464204 (not res!662780)) b!1464198))

(assert (= (or b!1464199 b!1464200 b!1464209) bm!98483))

(assert (=> d!429249 m!1702571))

(declare-fun m!1704437 () Bool)

(assert (=> d!429249 m!1704437))

(declare-fun m!1704439 () Bool)

(assert (=> d!429249 m!1704439))

(assert (=> b!1464204 m!1702571))

(declare-fun m!1704441 () Bool)

(assert (=> b!1464204 m!1704441))

(assert (=> b!1464204 m!1704441))

(declare-fun m!1704443 () Bool)

(assert (=> b!1464204 m!1704443))

(assert (=> b!1464202 m!1702571))

(declare-fun m!1704445 () Bool)

(assert (=> b!1464202 m!1704445))

(declare-fun m!1704447 () Bool)

(assert (=> b!1464207 m!1704447))

(assert (=> b!1464210 m!1702571))

(assert (=> b!1464210 m!1704441))

(assert (=> b!1464210 m!1704441))

(assert (=> b!1464210 m!1704443))

(assert (=> bm!98483 m!1702571))

(assert (=> bm!98483 m!1704437))

(assert (=> b!1464206 m!1702571))

(assert (=> b!1464206 m!1704445))

(assert (=> b!1464206 m!1704445))

(declare-fun m!1704449 () Bool)

(assert (=> b!1464206 m!1704449))

(assert (=> b!1464206 m!1702571))

(assert (=> b!1464206 m!1704441))

(assert (=> b!1464206 m!1704449))

(assert (=> b!1464206 m!1704441))

(declare-fun m!1704451 () Bool)

(assert (=> b!1464206 m!1704451))

(assert (=> b!1464198 m!1702571))

(assert (=> b!1464198 m!1704445))

(assert (=> b!1463437 d!429249))

(declare-fun d!429251 () Bool)

(assert (=> d!429251 (= (seqFromList!1716 (t!134647 (t!134647 (list!6083 lt!507005)))) (fromListB!738 (t!134647 (t!134647 (list!6083 lt!507005)))))))

(declare-fun bs!344535 () Bool)

(assert (= bs!344535 d!429251))

(declare-fun m!1704453 () Bool)

(assert (=> bs!344535 m!1704453))

(assert (=> b!1463437 d!429251))

(declare-fun d!429253 () Bool)

(declare-fun e!934024 () Bool)

(assert (=> d!429253 e!934024))

(declare-fun res!662785 () Bool)

(assert (=> d!429253 (=> (not res!662785) (not e!934024))))

(declare-fun lt!508483 () BalanceConc!10292)

(assert (=> d!429253 (= res!662785 (= (list!6087 lt!508483) (Cons!15186 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (list!6083 lt!507005)))) 0) Nil!15186)))))

(declare-fun singleton!542 (C!8156) BalanceConc!10292)

(assert (=> d!429253 (= lt!508483 (singleton!542 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (list!6083 lt!507005)))) 0)))))

(assert (=> d!429253 (= (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (list!6083 lt!507005)))) 0)) lt!508483)))

(declare-fun b!1464213 () Bool)

(declare-fun isBalanced!1557 (Conc!5176) Bool)

(assert (=> b!1464213 (= e!934024 (isBalanced!1557 (c!241180 lt!508483)))))

(assert (= (and d!429253 res!662785) b!1464213))

(declare-fun m!1704455 () Bool)

(assert (=> d!429253 m!1704455))

(assert (=> d!429253 m!1702579))

(declare-fun m!1704457 () Bool)

(assert (=> d!429253 m!1704457))

(declare-fun m!1704459 () Bool)

(assert (=> b!1464213 m!1704459))

(assert (=> b!1463437 d!429253))

(declare-fun d!429255 () Bool)

(assert (=> d!429255 (= (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (originalCharacters!3537 (h!20589 (list!6083 lt!507005))))) (not (isEmpty!9547 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (originalCharacters!3537 (h!20589 (list!6083 lt!507005)))))))))

(declare-fun bs!344536 () Bool)

(assert (= bs!344536 d!429255))

(assert (=> bs!344536 m!1702563))

(declare-fun m!1704461 () Bool)

(assert (=> bs!344536 m!1704461))

(assert (=> b!1463437 d!429255))

(declare-fun d!429257 () Bool)

(assert (=> d!429257 (= (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))))) (v!22514 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (list!6083 lt!507005)))))))))

(assert (=> b!1463437 d!429257))

(declare-fun d!429259 () Bool)

(assert (=> d!429259 (= (head!3020 (list!6083 (tokens!2112 other!32))) (h!20589 (list!6083 (tokens!2112 other!32))))))

(assert (=> d!428899 d!429259))

(assert (=> d!428899 d!428885))

(declare-fun d!429261 () Bool)

(declare-fun lt!508486 () Token!5012)

(assert (=> d!429261 (= lt!508486 (head!3020 (list!6086 (c!241182 (tokens!2112 other!32)))))))

(declare-fun e!934027 () Token!5012)

(assert (=> d!429261 (= lt!508486 e!934027)))

(declare-fun c!241403 () Bool)

(assert (=> d!429261 (= c!241403 ((_ is Leaf!7716) (c!241182 (tokens!2112 other!32))))))

(assert (=> d!429261 (isBalanced!1555 (c!241182 (tokens!2112 other!32)))))

(assert (=> d!429261 (= (head!3023 (c!241182 (tokens!2112 other!32))) lt!508486)))

(declare-fun b!1464218 () Bool)

(declare-fun apply!3977 (IArray!10359 Int) Token!5012)

(assert (=> b!1464218 (= e!934027 (apply!3977 (xs!7928 (c!241182 (tokens!2112 other!32))) 0))))

(declare-fun b!1464219 () Bool)

(assert (=> b!1464219 (= e!934027 (head!3023 (left!12905 (c!241182 (tokens!2112 other!32)))))))

(assert (= (and d!429261 c!241403) b!1464218))

(assert (= (and d!429261 (not c!241403)) b!1464219))

(assert (=> d!429261 m!1702369))

(assert (=> d!429261 m!1702369))

(declare-fun m!1704463 () Bool)

(assert (=> d!429261 m!1704463))

(assert (=> d!429261 m!1702883))

(declare-fun m!1704465 () Bool)

(assert (=> b!1464218 m!1704465))

(declare-fun m!1704467 () Bool)

(assert (=> b!1464219 m!1704467))

(assert (=> d!428899 d!429261))

(assert (=> d!428899 d!428869))

(declare-fun b!1464221 () Bool)

(declare-fun e!934029 () List!15252)

(assert (=> b!1464221 (= e!934029 (Cons!15186 (h!20587 (list!6087 (charsOf!1538 (h!20589 lt!506994)))) (++!4093 (t!134645 (list!6087 (charsOf!1538 (h!20589 lt!506994)))) (printList!727 Lexer!2329 (t!134647 lt!506994)))))))

(declare-fun b!1464220 () Bool)

(assert (=> b!1464220 (= e!934029 (printList!727 Lexer!2329 (t!134647 lt!506994)))))

(declare-fun d!429263 () Bool)

(declare-fun e!934028 () Bool)

(assert (=> d!429263 e!934028))

(declare-fun res!662786 () Bool)

(assert (=> d!429263 (=> (not res!662786) (not e!934028))))

(declare-fun lt!508487 () List!15252)

(assert (=> d!429263 (= res!662786 (= (content!2247 lt!508487) ((_ map or) (content!2247 (list!6087 (charsOf!1538 (h!20589 lt!506994)))) (content!2247 (printList!727 Lexer!2329 (t!134647 lt!506994))))))))

(assert (=> d!429263 (= lt!508487 e!934029)))

(declare-fun c!241404 () Bool)

(assert (=> d!429263 (= c!241404 ((_ is Nil!15186) (list!6087 (charsOf!1538 (h!20589 lt!506994)))))))

(assert (=> d!429263 (= (++!4093 (list!6087 (charsOf!1538 (h!20589 lt!506994))) (printList!727 Lexer!2329 (t!134647 lt!506994))) lt!508487)))

(declare-fun b!1464223 () Bool)

(assert (=> b!1464223 (= e!934028 (or (not (= (printList!727 Lexer!2329 (t!134647 lt!506994)) Nil!15186)) (= lt!508487 (list!6087 (charsOf!1538 (h!20589 lt!506994))))))))

(declare-fun b!1464222 () Bool)

(declare-fun res!662787 () Bool)

(assert (=> b!1464222 (=> (not res!662787) (not e!934028))))

(assert (=> b!1464222 (= res!662787 (= (size!12429 lt!508487) (+ (size!12429 (list!6087 (charsOf!1538 (h!20589 lt!506994)))) (size!12429 (printList!727 Lexer!2329 (t!134647 lt!506994))))))))

(assert (= (and d!429263 c!241404) b!1464220))

(assert (= (and d!429263 (not c!241404)) b!1464221))

(assert (= (and d!429263 res!662786) b!1464222))

(assert (= (and b!1464222 res!662787) b!1464223))

(assert (=> b!1464221 m!1702815))

(declare-fun m!1704469 () Bool)

(assert (=> b!1464221 m!1704469))

(declare-fun m!1704471 () Bool)

(assert (=> d!429263 m!1704471))

(assert (=> d!429263 m!1702653))

(declare-fun m!1704473 () Bool)

(assert (=> d!429263 m!1704473))

(assert (=> d!429263 m!1702815))

(declare-fun m!1704475 () Bool)

(assert (=> d!429263 m!1704475))

(declare-fun m!1704477 () Bool)

(assert (=> b!1464222 m!1704477))

(assert (=> b!1464222 m!1702653))

(declare-fun m!1704479 () Bool)

(assert (=> b!1464222 m!1704479))

(assert (=> b!1464222 m!1702815))

(declare-fun m!1704481 () Bool)

(assert (=> b!1464222 m!1704481))

(assert (=> b!1463461 d!429263))

(declare-fun d!429265 () Bool)

(assert (=> d!429265 (= (list!6087 (charsOf!1538 (h!20589 lt!506994))) (list!6088 (c!241180 (charsOf!1538 (h!20589 lt!506994)))))))

(declare-fun bs!344537 () Bool)

(assert (= bs!344537 d!429265))

(declare-fun m!1704483 () Bool)

(assert (=> bs!344537 m!1704483))

(assert (=> b!1463461 d!429265))

(declare-fun d!429267 () Bool)

(declare-fun lt!508488 () BalanceConc!10292)

(assert (=> d!429267 (= (list!6087 lt!508488) (originalCharacters!3537 (h!20589 lt!506994)))))

(assert (=> d!429267 (= lt!508488 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!506994)))) (value!85885 (h!20589 lt!506994))))))

(assert (=> d!429267 (= (charsOf!1538 (h!20589 lt!506994)) lt!508488)))

(declare-fun b_lambda!45665 () Bool)

(assert (=> (not b_lambda!45665) (not d!429267)))

(declare-fun tb!82669 () Bool)

(declare-fun t!134684 () Bool)

(assert (=> (and b!1463502 (= (toChars!3845 (transformation!2675 (h!20590 (rules!11706 other!32)))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!506994))))) t!134684) tb!82669))

(declare-fun b!1464224 () Bool)

(declare-fun e!934030 () Bool)

(declare-fun tp!411856 () Bool)

(assert (=> b!1464224 (= e!934030 (and (inv!20311 (c!241180 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!506994)))) (value!85885 (h!20589 lt!506994))))) tp!411856))))

(declare-fun result!99322 () Bool)

(assert (=> tb!82669 (= result!99322 (and (inv!20312 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!506994)))) (value!85885 (h!20589 lt!506994)))) e!934030))))

(assert (= tb!82669 b!1464224))

(declare-fun m!1704485 () Bool)

(assert (=> b!1464224 m!1704485))

(declare-fun m!1704487 () Bool)

(assert (=> tb!82669 m!1704487))

(assert (=> d!429267 t!134684))

(declare-fun b_and!99933 () Bool)

(assert (= b_and!99929 (and (=> t!134684 result!99322) b_and!99933)))

(declare-fun t!134686 () Bool)

(declare-fun tb!82671 () Bool)

(assert (=> (and b!1463508 (= (toChars!3845 (transformation!2675 (h!20590 (rules!11706 thiss!10022)))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!506994))))) t!134686) tb!82671))

(declare-fun result!99324 () Bool)

(assert (= result!99324 result!99322))

(assert (=> d!429267 t!134686))

(declare-fun b_and!99935 () Bool)

(assert (= b_and!99931 (and (=> t!134686 result!99324) b_and!99935)))

(declare-fun m!1704489 () Bool)

(assert (=> d!429267 m!1704489))

(declare-fun m!1704491 () Bool)

(assert (=> d!429267 m!1704491))

(assert (=> b!1463461 d!429267))

(declare-fun d!429269 () Bool)

(declare-fun c!241405 () Bool)

(assert (=> d!429269 (= c!241405 ((_ is Cons!15188) (t!134647 lt!506994)))))

(declare-fun e!934031 () List!15252)

(assert (=> d!429269 (= (printList!727 Lexer!2329 (t!134647 lt!506994)) e!934031)))

(declare-fun b!1464225 () Bool)

(assert (=> b!1464225 (= e!934031 (++!4093 (list!6087 (charsOf!1538 (h!20589 (t!134647 lt!506994)))) (printList!727 Lexer!2329 (t!134647 (t!134647 lt!506994)))))))

(declare-fun b!1464226 () Bool)

(assert (=> b!1464226 (= e!934031 Nil!15186)))

(assert (= (and d!429269 c!241405) b!1464225))

(assert (= (and d!429269 (not c!241405)) b!1464226))

(assert (=> b!1464225 m!1702659))

(assert (=> b!1464225 m!1702659))

(declare-fun m!1704493 () Bool)

(assert (=> b!1464225 m!1704493))

(declare-fun m!1704495 () Bool)

(assert (=> b!1464225 m!1704495))

(assert (=> b!1464225 m!1704493))

(assert (=> b!1464225 m!1704495))

(declare-fun m!1704497 () Bool)

(assert (=> b!1464225 m!1704497))

(assert (=> b!1463461 d!429269))

(declare-fun d!429271 () Bool)

(declare-fun res!662789 () Bool)

(declare-fun e!934033 () Bool)

(assert (=> d!429271 (=> res!662789 e!934033)))

(assert (=> d!429271 (= res!662789 (or (not ((_ is Cons!15188) (++!4092 lt!507007 lt!506994))) (not ((_ is Cons!15188) (t!134647 (++!4092 lt!507007 lt!506994))))))))

(assert (=> d!429271 (= (tokensListTwoByTwoPredicateSeparableList!249 Lexer!2329 (++!4092 lt!507007 lt!506994) (rules!11706 thiss!10022)) e!934033)))

(declare-fun b!1464227 () Bool)

(declare-fun e!934032 () Bool)

(assert (=> b!1464227 (= e!934033 e!934032)))

(declare-fun res!662788 () Bool)

(assert (=> b!1464227 (=> (not res!662788) (not e!934032))))

(assert (=> b!1464227 (= res!662788 (separableTokensPredicate!540 Lexer!2329 (h!20589 (++!4092 lt!507007 lt!506994)) (h!20589 (t!134647 (++!4092 lt!507007 lt!506994))) (rules!11706 thiss!10022)))))

(declare-fun lt!508491 () Unit!24509)

(declare-fun Unit!24672 () Unit!24509)

(assert (=> b!1464227 (= lt!508491 Unit!24672)))

(assert (=> b!1464227 (> (size!12425 (charsOf!1538 (h!20589 (t!134647 (++!4092 lt!507007 lt!506994))))) 0)))

(declare-fun lt!508495 () Unit!24509)

(declare-fun Unit!24673 () Unit!24509)

(assert (=> b!1464227 (= lt!508495 Unit!24673)))

(assert (=> b!1464227 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 (t!134647 (++!4092 lt!507007 lt!506994))))))

(declare-fun lt!508490 () Unit!24509)

(declare-fun Unit!24674 () Unit!24509)

(assert (=> b!1464227 (= lt!508490 Unit!24674)))

(assert (=> b!1464227 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 (++!4092 lt!507007 lt!506994)))))

(declare-fun lt!508493 () Unit!24509)

(declare-fun lt!508489 () Unit!24509)

(assert (=> b!1464227 (= lt!508493 lt!508489)))

(assert (=> b!1464227 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 (t!134647 (++!4092 lt!507007 lt!506994))))))

(assert (=> b!1464227 (= lt!508489 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!433 Lexer!2329 (rules!11706 thiss!10022) (++!4092 lt!507007 lt!506994) (h!20589 (t!134647 (++!4092 lt!507007 lt!506994)))))))

(declare-fun lt!508494 () Unit!24509)

(declare-fun lt!508492 () Unit!24509)

(assert (=> b!1464227 (= lt!508494 lt!508492)))

(assert (=> b!1464227 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 (++!4092 lt!507007 lt!506994)))))

(assert (=> b!1464227 (= lt!508492 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!433 Lexer!2329 (rules!11706 thiss!10022) (++!4092 lt!507007 lt!506994) (h!20589 (++!4092 lt!507007 lt!506994))))))

(declare-fun b!1464228 () Bool)

(assert (=> b!1464228 (= e!934032 (tokensListTwoByTwoPredicateSeparableList!249 Lexer!2329 (Cons!15188 (h!20589 (t!134647 (++!4092 lt!507007 lt!506994))) (t!134647 (t!134647 (++!4092 lt!507007 lt!506994)))) (rules!11706 thiss!10022)))))

(assert (= (and d!429271 (not res!662789)) b!1464227))

(assert (= (and b!1464227 res!662788) b!1464228))

(declare-fun m!1704499 () Bool)

(assert (=> b!1464227 m!1704499))

(declare-fun m!1704501 () Bool)

(assert (=> b!1464227 m!1704501))

(declare-fun m!1704503 () Bool)

(assert (=> b!1464227 m!1704503))

(assert (=> b!1464227 m!1704499))

(declare-fun m!1704505 () Bool)

(assert (=> b!1464227 m!1704505))

(assert (=> b!1464227 m!1701629))

(declare-fun m!1704507 () Bool)

(assert (=> b!1464227 m!1704507))

(declare-fun m!1704509 () Bool)

(assert (=> b!1464227 m!1704509))

(assert (=> b!1464227 m!1701629))

(declare-fun m!1704511 () Bool)

(assert (=> b!1464227 m!1704511))

(declare-fun m!1704513 () Bool)

(assert (=> b!1464228 m!1704513))

(assert (=> b!1463300 d!429271))

(assert (=> b!1463300 d!428847))

(declare-fun bs!344538 () Bool)

(declare-fun d!429273 () Bool)

(assert (= bs!344538 (and d!429273 d!428849)))

(declare-fun lambda!63332 () Int)

(assert (=> bs!344538 (= lambda!63332 lambda!63326)))

(declare-fun bs!344539 () Bool)

(assert (= bs!344539 (and d!429273 d!429055)))

(assert (=> bs!344539 (= lambda!63332 lambda!63330)))

(declare-fun bs!344540 () Bool)

(assert (= bs!344540 (and d!429273 d!429057)))

(assert (=> bs!344540 (= lambda!63332 lambda!63331)))

(declare-fun b!1464233 () Bool)

(declare-fun e!934038 () Bool)

(assert (=> b!1464233 (= e!934038 true)))

(declare-fun b!1464232 () Bool)

(declare-fun e!934037 () Bool)

(assert (=> b!1464232 (= e!934037 e!934038)))

(declare-fun b!1464231 () Bool)

(declare-fun e!934036 () Bool)

(assert (=> b!1464231 (= e!934036 e!934037)))

(assert (=> d!429273 e!934036))

(assert (= b!1464232 b!1464233))

(assert (= b!1464231 b!1464232))

(assert (= (and d!429273 ((_ is Cons!15189) (rules!11706 thiss!10022))) b!1464231))

(assert (=> b!1464233 (< (dynLambda!6933 order!9151 (toValue!3986 (transformation!2675 (h!20590 (rules!11706 thiss!10022))))) (dynLambda!6934 order!9153 lambda!63332))))

(assert (=> b!1464233 (< (dynLambda!6935 order!9155 (toChars!3845 (transformation!2675 (h!20590 (rules!11706 thiss!10022))))) (dynLambda!6934 order!9153 lambda!63332))))

(assert (=> d!429273 true))

(declare-fun lt!508496 () Bool)

(assert (=> d!429273 (= lt!508496 (forall!3744 (++!4092 lt!507007 lt!506994) lambda!63332))))

(declare-fun e!934034 () Bool)

(assert (=> d!429273 (= lt!508496 e!934034)))

(declare-fun res!662790 () Bool)

(assert (=> d!429273 (=> res!662790 e!934034)))

(assert (=> d!429273 (= res!662790 (not ((_ is Cons!15188) (++!4092 lt!507007 lt!506994))))))

(assert (=> d!429273 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!429273 (= (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) (++!4092 lt!507007 lt!506994)) lt!508496)))

(declare-fun b!1464229 () Bool)

(declare-fun e!934035 () Bool)

(assert (=> b!1464229 (= e!934034 e!934035)))

(declare-fun res!662791 () Bool)

(assert (=> b!1464229 (=> (not res!662791) (not e!934035))))

(assert (=> b!1464229 (= res!662791 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 (++!4092 lt!507007 lt!506994))))))

(declare-fun b!1464230 () Bool)

(assert (=> b!1464230 (= e!934035 (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) (t!134647 (++!4092 lt!507007 lt!506994))))))

(assert (= (and d!429273 (not res!662790)) b!1464229))

(assert (= (and b!1464229 res!662791) b!1464230))

(assert (=> d!429273 m!1701629))

(declare-fun m!1704515 () Bool)

(assert (=> d!429273 m!1704515))

(assert (=> d!429273 m!1701757))

(assert (=> b!1464229 m!1704509))

(declare-fun m!1704517 () Bool)

(assert (=> b!1464230 m!1704517))

(assert (=> b!1463300 d!429273))

(assert (=> b!1463300 d!428823))

(declare-fun d!429275 () Bool)

(assert (=> d!429275 (= (isEmpty!9545 (list!6087 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 lt!506997) lt!507450)))) ((_ is Nil!15186) (list!6087 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 lt!506997) lt!507450)))))))

(assert (=> b!1463386 d!429275))

(declare-fun d!429277 () Bool)

(assert (=> d!429277 (= (list!6087 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 lt!506997) lt!507450))) (list!6088 (c!241180 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 lt!506997) lt!507450)))))))

(declare-fun bs!344541 () Bool)

(assert (= bs!344541 d!429277))

(declare-fun m!1704519 () Bool)

(assert (=> bs!344541 m!1704519))

(assert (=> b!1463386 d!429277))

(declare-fun e!934041 () Bool)

(declare-fun b!1464234 () Bool)

(declare-fun lt!508497 () tuple2!14256)

(assert (=> b!1464234 (= e!934041 (= (list!6087 (_2!8014 lt!508497)) (_2!8016 (lexList!717 Lexer!2329 (rules!11706 lt!506997) (list!6087 lt!507450)))))))

(declare-fun b!1464235 () Bool)

(declare-fun e!934039 () Bool)

(assert (=> b!1464235 (= e!934039 (not (isEmpty!9535 (_1!8014 lt!508497))))))

(declare-fun b!1464236 () Bool)

(declare-fun e!934040 () Bool)

(assert (=> b!1464236 (= e!934040 (= (_2!8014 lt!508497) lt!507450))))

(declare-fun b!1464237 () Bool)

(declare-fun res!662792 () Bool)

(assert (=> b!1464237 (=> (not res!662792) (not e!934041))))

(assert (=> b!1464237 (= res!662792 (= (list!6083 (_1!8014 lt!508497)) (_1!8016 (lexList!717 Lexer!2329 (rules!11706 lt!506997) (list!6087 lt!507450)))))))

(declare-fun d!429279 () Bool)

(assert (=> d!429279 e!934041))

(declare-fun res!662794 () Bool)

(assert (=> d!429279 (=> (not res!662794) (not e!934041))))

(assert (=> d!429279 (= res!662794 e!934040)))

(declare-fun c!241406 () Bool)

(assert (=> d!429279 (= c!241406 (> (size!12423 (_1!8014 lt!508497)) 0))))

(assert (=> d!429279 (= lt!508497 (lexTailRecV2!472 Lexer!2329 (rules!11706 lt!506997) lt!507450 (BalanceConc!10293 Empty!5176) lt!507450 (BalanceConc!10295 Empty!5177)))))

(assert (=> d!429279 (= (lex!1076 Lexer!2329 (rules!11706 lt!506997) lt!507450) lt!508497)))

(declare-fun b!1464238 () Bool)

(assert (=> b!1464238 (= e!934040 e!934039)))

(declare-fun res!662793 () Bool)

(assert (=> b!1464238 (= res!662793 (< (size!12425 (_2!8014 lt!508497)) (size!12425 lt!507450)))))

(assert (=> b!1464238 (=> (not res!662793) (not e!934039))))

(assert (= (and d!429279 c!241406) b!1464238))

(assert (= (and d!429279 (not c!241406)) b!1464236))

(assert (= (and b!1464238 res!662793) b!1464235))

(assert (= (and d!429279 res!662794) b!1464237))

(assert (= (and b!1464237 res!662792) b!1464234))

(declare-fun m!1704521 () Bool)

(assert (=> b!1464238 m!1704521))

(declare-fun m!1704523 () Bool)

(assert (=> b!1464238 m!1704523))

(declare-fun m!1704525 () Bool)

(assert (=> b!1464237 m!1704525))

(declare-fun m!1704527 () Bool)

(assert (=> b!1464237 m!1704527))

(assert (=> b!1464237 m!1704527))

(declare-fun m!1704529 () Bool)

(assert (=> b!1464237 m!1704529))

(declare-fun m!1704531 () Bool)

(assert (=> b!1464235 m!1704531))

(declare-fun m!1704533 () Bool)

(assert (=> b!1464234 m!1704533))

(assert (=> b!1464234 m!1704527))

(assert (=> b!1464234 m!1704527))

(assert (=> b!1464234 m!1704529))

(declare-fun m!1704535 () Bool)

(assert (=> d!429279 m!1704535))

(declare-fun m!1704537 () Bool)

(assert (=> d!429279 m!1704537))

(assert (=> b!1463386 d!429279))

(declare-fun d!429281 () Bool)

(declare-fun res!662795 () Bool)

(declare-fun e!934042 () Bool)

(assert (=> d!429281 (=> (not res!662795) (not e!934042))))

(assert (=> d!429281 (= res!662795 (rulesValid!991 Lexer!2329 (rules!11706 thiss!10022)))))

(assert (=> d!429281 (= (rulesInvariant!2164 Lexer!2329 (rules!11706 thiss!10022)) e!934042)))

(declare-fun b!1464239 () Bool)

(assert (=> b!1464239 (= e!934042 (noDuplicateTag!991 Lexer!2329 (rules!11706 thiss!10022) Nil!15190))))

(assert (= (and d!429281 res!662795) b!1464239))

(declare-fun m!1704539 () Bool)

(assert (=> d!429281 m!1704539))

(declare-fun m!1704541 () Bool)

(assert (=> b!1464239 m!1704541))

(assert (=> b!1463140 d!429281))

(assert (=> d!428941 d!428933))

(declare-fun d!429283 () Bool)

(declare-fun c!241407 () Bool)

(assert (=> d!429283 (= c!241407 ((_ is Cons!15188) (++!4092 lt!507007 lt!506994)))))

(declare-fun e!934043 () List!15252)

(assert (=> d!429283 (= (printList!727 Lexer!2329 (++!4092 lt!507007 lt!506994)) e!934043)))

(declare-fun b!1464240 () Bool)

(assert (=> b!1464240 (= e!934043 (++!4093 (list!6087 (charsOf!1538 (h!20589 (++!4092 lt!507007 lt!506994)))) (printList!727 Lexer!2329 (t!134647 (++!4092 lt!507007 lt!506994)))))))

(declare-fun b!1464241 () Bool)

(assert (=> b!1464241 (= e!934043 Nil!15186)))

(assert (= (and d!429283 c!241407) b!1464240))

(assert (= (and d!429283 (not c!241407)) b!1464241))

(declare-fun m!1704543 () Bool)

(assert (=> b!1464240 m!1704543))

(assert (=> b!1464240 m!1704543))

(declare-fun m!1704545 () Bool)

(assert (=> b!1464240 m!1704545))

(declare-fun m!1704547 () Bool)

(assert (=> b!1464240 m!1704547))

(assert (=> b!1464240 m!1704545))

(assert (=> b!1464240 m!1704547))

(declare-fun m!1704549 () Bool)

(assert (=> b!1464240 m!1704549))

(assert (=> d!428941 d!429283))

(assert (=> d!428941 d!428937))

(assert (=> d!428941 d!428945))

(declare-fun d!429285 () Bool)

(assert (=> d!429285 (= (printList!727 Lexer!2329 (++!4092 lt!507007 lt!506994)) (++!4093 (printList!727 Lexer!2329 lt!507007) (printList!727 Lexer!2329 lt!506994)))))

(assert (=> d!429285 true))

(declare-fun _$40!332 () Unit!24509)

(assert (=> d!429285 (= (choose!9004 Lexer!2329 lt!507007 lt!506994) _$40!332)))

(declare-fun bs!344542 () Bool)

(assert (= bs!344542 d!429285))

(assert (=> bs!344542 m!1701659))

(assert (=> bs!344542 m!1701659))

(assert (=> bs!344542 m!1701665))

(assert (=> bs!344542 m!1701667))

(assert (=> bs!344542 m!1701629))

(assert (=> bs!344542 m!1701629))

(assert (=> bs!344542 m!1702825))

(assert (=> bs!344542 m!1701665))

(assert (=> d!428941 d!429285))

(assert (=> d!428941 d!428847))

(declare-fun d!429287 () Bool)

(declare-fun lt!508500 () Token!5012)

(assert (=> d!429287 (= lt!508500 (apply!3966 (list!6083 (_1!8014 lt!507415)) 0))))

(declare-fun apply!3978 (Conc!5177 Int) Token!5012)

(assert (=> d!429287 (= lt!508500 (apply!3978 (c!241182 (_1!8014 lt!507415)) 0))))

(declare-fun e!934046 () Bool)

(assert (=> d!429287 e!934046))

(declare-fun res!662798 () Bool)

(assert (=> d!429287 (=> (not res!662798) (not e!934046))))

(assert (=> d!429287 (= res!662798 (<= 0 0))))

(assert (=> d!429287 (= (apply!3965 (_1!8014 lt!507415) 0) lt!508500)))

(declare-fun b!1464244 () Bool)

(assert (=> b!1464244 (= e!934046 (< 0 (size!12423 (_1!8014 lt!507415))))))

(assert (= (and d!429287 res!662798) b!1464244))

(assert (=> d!429287 m!1703381))

(assert (=> d!429287 m!1703381))

(declare-fun m!1704551 () Bool)

(assert (=> d!429287 m!1704551))

(declare-fun m!1704553 () Bool)

(assert (=> d!429287 m!1704553))

(assert (=> b!1464244 m!1702389))

(assert (=> b!1463354 d!429287))

(declare-fun d!429289 () Bool)

(declare-fun res!662805 () Bool)

(declare-fun e!934049 () Bool)

(assert (=> d!429289 (=> (not res!662805) (not e!934049))))

(assert (=> d!429289 (= res!662805 (= (csize!10584 (c!241182 (tokens!2112 other!32))) (+ (size!12431 (left!12905 (c!241182 (tokens!2112 other!32)))) (size!12431 (right!13235 (c!241182 (tokens!2112 other!32)))))))))

(assert (=> d!429289 (= (inv!20301 (c!241182 (tokens!2112 other!32))) e!934049)))

(declare-fun b!1464251 () Bool)

(declare-fun res!662806 () Bool)

(assert (=> b!1464251 (=> (not res!662806) (not e!934049))))

(assert (=> b!1464251 (= res!662806 (and (not (= (left!12905 (c!241182 (tokens!2112 other!32))) Empty!5177)) (not (= (right!13235 (c!241182 (tokens!2112 other!32))) Empty!5177))))))

(declare-fun b!1464252 () Bool)

(declare-fun res!662807 () Bool)

(assert (=> b!1464252 (=> (not res!662807) (not e!934049))))

(assert (=> b!1464252 (= res!662807 (= (cheight!5388 (c!241182 (tokens!2112 other!32))) (+ (max!0 (height!778 (left!12905 (c!241182 (tokens!2112 other!32)))) (height!778 (right!13235 (c!241182 (tokens!2112 other!32))))) 1)))))

(declare-fun b!1464253 () Bool)

(assert (=> b!1464253 (= e!934049 (<= 0 (cheight!5388 (c!241182 (tokens!2112 other!32)))))))

(assert (= (and d!429289 res!662805) b!1464251))

(assert (= (and b!1464251 res!662806) b!1464252))

(assert (= (and b!1464252 res!662807) b!1464253))

(declare-fun m!1704555 () Bool)

(assert (=> d!429289 m!1704555))

(declare-fun m!1704557 () Bool)

(assert (=> d!429289 m!1704557))

(declare-fun m!1704559 () Bool)

(assert (=> b!1464252 m!1704559))

(declare-fun m!1704561 () Bool)

(assert (=> b!1464252 m!1704561))

(assert (=> b!1464252 m!1704559))

(assert (=> b!1464252 m!1704561))

(declare-fun m!1704563 () Bool)

(assert (=> b!1464252 m!1704563))

(assert (=> b!1463472 d!429289))

(assert (=> d!428953 d!428951))

(assert (=> d!428953 d!428891))

(declare-fun d!429291 () Bool)

(declare-fun e!934051 () Bool)

(assert (=> d!429291 e!934051))

(declare-fun res!662808 () Bool)

(assert (=> d!429291 (=> (not res!662808) (not e!934051))))

(assert (=> d!429291 (= res!662808 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (seqFromList!1716 (list!6083 (tokens!2112 thiss!10022))))))) (list!6083 (tokens!2112 thiss!10022))))))

(declare-fun lt!508518 () Unit!24509)

(declare-fun e!934050 () Unit!24509)

(assert (=> d!429291 (= lt!508518 e!934050)))

(declare-fun c!241408 () Bool)

(assert (=> d!429291 (= c!241408 (or ((_ is Nil!15188) (list!6083 (tokens!2112 thiss!10022))) ((_ is Nil!15188) (t!134647 (list!6083 (tokens!2112 thiss!10022))))))))

(assert (=> d!429291 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!429291 (= (theoremInvertabilityWhenTokenListSeparable!79 Lexer!2329 (rules!11706 thiss!10022) (list!6083 (tokens!2112 thiss!10022))) lt!508518)))

(declare-fun b!1464254 () Bool)

(declare-fun Unit!24678 () Unit!24509)

(assert (=> b!1464254 (= e!934050 Unit!24678)))

(declare-fun b!1464255 () Bool)

(declare-fun Unit!24679 () Unit!24509)

(assert (=> b!1464255 (= e!934050 Unit!24679)))

(declare-fun lt!508517 () BalanceConc!10292)

(assert (=> b!1464255 (= lt!508517 (print!1107 Lexer!2329 (seqFromList!1716 (list!6083 (tokens!2112 thiss!10022)))))))

(declare-fun lt!508504 () BalanceConc!10292)

(assert (=> b!1464255 (= lt!508504 (print!1107 Lexer!2329 (seqFromList!1716 (t!134647 (list!6083 (tokens!2112 thiss!10022))))))))

(declare-fun lt!508524 () tuple2!14256)

(assert (=> b!1464255 (= lt!508524 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) lt!508504))))

(declare-fun lt!508505 () List!15252)

(assert (=> b!1464255 (= lt!508505 (list!6087 (charsOf!1538 (h!20589 (list!6083 (tokens!2112 thiss!10022))))))))

(declare-fun lt!508506 () List!15252)

(assert (=> b!1464255 (= lt!508506 (list!6087 lt!508504))))

(declare-fun lt!508511 () Unit!24509)

(assert (=> b!1464255 (= lt!508511 (lemmaConcatTwoListThenFirstIsPrefix!768 lt!508505 lt!508506))))

(assert (=> b!1464255 (isPrefix!1205 lt!508505 (++!4093 lt!508505 lt!508506))))

(declare-fun lt!508519 () Unit!24509)

(assert (=> b!1464255 (= lt!508519 lt!508511)))

(declare-fun lt!508523 () Unit!24509)

(assert (=> b!1464255 (= lt!508523 (theoremInvertabilityWhenTokenListSeparable!79 Lexer!2329 (rules!11706 thiss!10022) (t!134647 (list!6083 (tokens!2112 thiss!10022)))))))

(declare-fun lt!508508 () Unit!24509)

(assert (=> b!1464255 (= lt!508508 (seqFromListBHdTlConstructive!97 (h!20589 (t!134647 (list!6083 (tokens!2112 thiss!10022)))) (t!134647 (t!134647 (list!6083 (tokens!2112 thiss!10022)))) (_1!8014 lt!508524)))))

(assert (=> b!1464255 (= (list!6083 (_1!8014 lt!508524)) (list!6083 (prepend!429 (seqFromList!1716 (t!134647 (t!134647 (list!6083 (tokens!2112 thiss!10022))))) (h!20589 (t!134647 (list!6083 (tokens!2112 thiss!10022)))))))))

(declare-fun lt!508509 () Unit!24509)

(assert (=> b!1464255 (= lt!508509 lt!508508)))

(declare-fun lt!508521 () Option!2879)

(assert (=> b!1464255 (= lt!508521 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 lt!508517)))))

(assert (=> b!1464255 (= (print!1107 Lexer!2329 (singletonSeq!1281 (h!20589 (list!6083 (tokens!2112 thiss!10022))))) (printTailRec!699 Lexer!2329 (singletonSeq!1281 (h!20589 (list!6083 (tokens!2112 thiss!10022)))) 0 (BalanceConc!10293 Empty!5176)))))

(declare-fun lt!508520 () Unit!24509)

(declare-fun Unit!24680 () Unit!24509)

(assert (=> b!1464255 (= lt!508520 Unit!24680)))

(declare-fun lt!508507 () Unit!24509)

(assert (=> b!1464255 (= lt!508507 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!241 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (list!6083 (tokens!2112 thiss!10022))))) (list!6087 lt!508504)))))

(assert (=> b!1464255 (= (list!6087 (charsOf!1538 (h!20589 (list!6083 (tokens!2112 thiss!10022))))) (originalCharacters!3537 (h!20589 (list!6083 (tokens!2112 thiss!10022)))))))

(declare-fun lt!508515 () Unit!24509)

(declare-fun Unit!24681 () Unit!24509)

(assert (=> b!1464255 (= lt!508515 Unit!24681)))

(assert (=> b!1464255 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (list!6083 (tokens!2112 thiss!10022))))) 0))) (Cons!15186 (head!3024 (originalCharacters!3537 (h!20589 (t!134647 (list!6083 (tokens!2112 thiss!10022)))))) Nil!15186))))

(declare-fun lt!508502 () Unit!24509)

(declare-fun Unit!24682 () Unit!24509)

(assert (=> b!1464255 (= lt!508502 Unit!24682)))

(assert (=> b!1464255 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (list!6083 (tokens!2112 thiss!10022))))) 0))) (Cons!15186 (head!3024 (list!6087 lt!508504)) Nil!15186))))

(declare-fun lt!508513 () Unit!24509)

(declare-fun Unit!24683 () Unit!24509)

(assert (=> b!1464255 (= lt!508513 Unit!24683)))

(assert (=> b!1464255 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (list!6083 (tokens!2112 thiss!10022))))) 0))) (Cons!15186 (head!3025 lt!508504) Nil!15186))))

(declare-fun lt!508501 () Unit!24509)

(declare-fun Unit!24684 () Unit!24509)

(assert (=> b!1464255 (= lt!508501 Unit!24684)))

(assert (=> b!1464255 (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (originalCharacters!3537 (h!20589 (list!6083 (tokens!2112 thiss!10022))))))))

(declare-fun lt!508503 () Unit!24509)

(declare-fun Unit!24685 () Unit!24509)

(assert (=> b!1464255 (= lt!508503 Unit!24685)))

(assert (=> b!1464255 (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (list!6083 (tokens!2112 thiss!10022)))))))))

(declare-fun lt!508514 () Unit!24509)

(declare-fun Unit!24686 () Unit!24509)

(assert (=> b!1464255 (= lt!508514 Unit!24686)))

(declare-fun lt!508516 () Unit!24509)

(declare-fun Unit!24687 () Unit!24509)

(assert (=> b!1464255 (= lt!508516 Unit!24687)))

(assert (=> b!1464255 (= (_1!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (list!6083 (tokens!2112 thiss!10022)))))))) (h!20589 (list!6083 (tokens!2112 thiss!10022))))))

(declare-fun lt!508522 () Unit!24509)

(declare-fun Unit!24688 () Unit!24509)

(assert (=> b!1464255 (= lt!508522 Unit!24688)))

(assert (=> b!1464255 (isEmpty!9545 (_2!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (list!6083 (tokens!2112 thiss!10022)))))))))))

(declare-fun lt!508510 () Unit!24509)

(declare-fun Unit!24689 () Unit!24509)

(assert (=> b!1464255 (= lt!508510 Unit!24689)))

(assert (=> b!1464255 (matchR!1831 (regex!2675 (rule!4450 (h!20589 (list!6083 (tokens!2112 thiss!10022))))) (list!6087 (charsOf!1538 (h!20589 (list!6083 (tokens!2112 thiss!10022))))))))

(declare-fun lt!508525 () Unit!24509)

(declare-fun Unit!24690 () Unit!24509)

(assert (=> b!1464255 (= lt!508525 Unit!24690)))

(assert (=> b!1464255 (= (rule!4450 (h!20589 (list!6083 (tokens!2112 thiss!10022)))) (rule!4450 (h!20589 (list!6083 (tokens!2112 thiss!10022)))))))

(declare-fun lt!508512 () Unit!24509)

(declare-fun Unit!24691 () Unit!24509)

(assert (=> b!1464255 (= lt!508512 Unit!24691)))

(declare-fun lt!508526 () Unit!24509)

(assert (=> b!1464255 (= lt!508526 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!39 Lexer!2329 (rules!11706 thiss!10022) (h!20589 (list!6083 (tokens!2112 thiss!10022))) (rule!4450 (h!20589 (list!6083 (tokens!2112 thiss!10022)))) (list!6087 lt!508504)))))

(declare-fun b!1464256 () Bool)

(assert (=> b!1464256 (= e!934051 (isEmpty!9544 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (seqFromList!1716 (list!6083 (tokens!2112 thiss!10022))))))))))

(assert (= (and d!429291 c!241408) b!1464254))

(assert (= (and d!429291 (not c!241408)) b!1464255))

(assert (= (and d!429291 res!662808) b!1464256))

(assert (=> d!429291 m!1701677))

(declare-fun m!1704565 () Bool)

(assert (=> d!429291 m!1704565))

(assert (=> d!429291 m!1701757))

(declare-fun m!1704567 () Bool)

(assert (=> d!429291 m!1704567))

(declare-fun m!1704569 () Bool)

(assert (=> d!429291 m!1704569))

(declare-fun m!1704571 () Bool)

(assert (=> d!429291 m!1704571))

(assert (=> d!429291 m!1704565))

(assert (=> d!429291 m!1704569))

(declare-fun m!1704573 () Bool)

(assert (=> b!1464255 m!1704573))

(declare-fun m!1704575 () Bool)

(assert (=> b!1464255 m!1704575))

(declare-fun m!1704577 () Bool)

(assert (=> b!1464255 m!1704577))

(declare-fun m!1704579 () Bool)

(assert (=> b!1464255 m!1704579))

(declare-fun m!1704581 () Bool)

(assert (=> b!1464255 m!1704581))

(declare-fun m!1704583 () Bool)

(assert (=> b!1464255 m!1704583))

(declare-fun m!1704585 () Bool)

(assert (=> b!1464255 m!1704585))

(declare-fun m!1704587 () Bool)

(assert (=> b!1464255 m!1704587))

(declare-fun m!1704589 () Bool)

(assert (=> b!1464255 m!1704589))

(declare-fun m!1704591 () Bool)

(assert (=> b!1464255 m!1704591))

(assert (=> b!1464255 m!1704577))

(declare-fun m!1704593 () Bool)

(assert (=> b!1464255 m!1704593))

(declare-fun m!1704595 () Bool)

(assert (=> b!1464255 m!1704595))

(declare-fun m!1704597 () Bool)

(assert (=> b!1464255 m!1704597))

(assert (=> b!1464255 m!1704583))

(declare-fun m!1704599 () Bool)

(assert (=> b!1464255 m!1704599))

(declare-fun m!1704601 () Bool)

(assert (=> b!1464255 m!1704601))

(assert (=> b!1464255 m!1704581))

(assert (=> b!1464255 m!1704601))

(declare-fun m!1704603 () Bool)

(assert (=> b!1464255 m!1704603))

(assert (=> b!1464255 m!1701677))

(assert (=> b!1464255 m!1704565))

(assert (=> b!1464255 m!1704597))

(declare-fun m!1704605 () Bool)

(assert (=> b!1464255 m!1704605))

(declare-fun m!1704607 () Bool)

(assert (=> b!1464255 m!1704607))

(declare-fun m!1704609 () Bool)

(assert (=> b!1464255 m!1704609))

(declare-fun m!1704611 () Bool)

(assert (=> b!1464255 m!1704611))

(declare-fun m!1704613 () Bool)

(assert (=> b!1464255 m!1704613))

(declare-fun m!1704615 () Bool)

(assert (=> b!1464255 m!1704615))

(declare-fun m!1704617 () Bool)

(assert (=> b!1464255 m!1704617))

(declare-fun m!1704619 () Bool)

(assert (=> b!1464255 m!1704619))

(declare-fun m!1704621 () Bool)

(assert (=> b!1464255 m!1704621))

(declare-fun m!1704623 () Bool)

(assert (=> b!1464255 m!1704623))

(declare-fun m!1704625 () Bool)

(assert (=> b!1464255 m!1704625))

(declare-fun m!1704627 () Bool)

(assert (=> b!1464255 m!1704627))

(assert (=> b!1464255 m!1704607))

(declare-fun m!1704629 () Bool)

(assert (=> b!1464255 m!1704629))

(assert (=> b!1464255 m!1704601))

(declare-fun m!1704631 () Bool)

(assert (=> b!1464255 m!1704631))

(declare-fun m!1704633 () Bool)

(assert (=> b!1464255 m!1704633))

(assert (=> b!1464255 m!1704565))

(assert (=> b!1464255 m!1704569))

(assert (=> b!1464255 m!1704587))

(assert (=> b!1464255 m!1704589))

(assert (=> b!1464255 m!1704583))

(declare-fun m!1704635 () Bool)

(assert (=> b!1464255 m!1704635))

(assert (=> b!1464255 m!1704601))

(declare-fun m!1704637 () Bool)

(assert (=> b!1464255 m!1704637))

(assert (=> b!1464255 m!1704609))

(assert (=> b!1464255 m!1704581))

(declare-fun m!1704639 () Bool)

(assert (=> b!1464255 m!1704639))

(assert (=> b!1464255 m!1704573))

(assert (=> b!1464255 m!1704617))

(declare-fun m!1704641 () Bool)

(assert (=> b!1464255 m!1704641))

(assert (=> b!1464255 m!1704577))

(assert (=> b!1464255 m!1704595))

(assert (=> b!1464255 m!1704615))

(assert (=> b!1464255 m!1704581))

(assert (=> b!1464255 m!1704591))

(declare-fun m!1704643 () Bool)

(assert (=> b!1464255 m!1704643))

(assert (=> b!1464256 m!1701677))

(assert (=> b!1464256 m!1704565))

(assert (=> b!1464256 m!1704565))

(assert (=> b!1464256 m!1704569))

(assert (=> b!1464256 m!1704569))

(assert (=> b!1464256 m!1704571))

(declare-fun m!1704645 () Bool)

(assert (=> b!1464256 m!1704645))

(assert (=> d!428953 d!429291))

(assert (=> d!428953 d!428985))

(declare-fun d!429293 () Bool)

(assert (=> d!429293 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) lt!507611))) (list!6086 (c!241182 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) lt!507611)))))))

(declare-fun bs!344543 () Bool)

(assert (= bs!344543 d!429293))

(declare-fun m!1704647 () Bool)

(assert (=> bs!344543 m!1704647))

(assert (=> d!428953 d!429293))

(declare-fun bs!344548 () Bool)

(declare-fun d!429295 () Bool)

(assert (= bs!344548 (and d!429295 d!428849)))

(declare-fun lambda!63343 () Int)

(assert (=> bs!344548 (= lambda!63343 lambda!63326)))

(declare-fun bs!344549 () Bool)

(assert (= bs!344549 (and d!429295 d!429055)))

(assert (=> bs!344549 (= lambda!63343 lambda!63330)))

(declare-fun bs!344550 () Bool)

(assert (= bs!344550 (and d!429295 d!429057)))

(assert (=> bs!344550 (= lambda!63343 lambda!63331)))

(declare-fun bs!344551 () Bool)

(assert (= bs!344551 (and d!429295 d!429273)))

(assert (=> bs!344551 (= lambda!63343 lambda!63332)))

(declare-fun b!1464278 () Bool)

(declare-fun e!934073 () Bool)

(assert (=> b!1464278 (= e!934073 true)))

(declare-fun b!1464277 () Bool)

(declare-fun e!934072 () Bool)

(assert (=> b!1464277 (= e!934072 e!934073)))

(declare-fun b!1464276 () Bool)

(declare-fun e!934071 () Bool)

(assert (=> b!1464276 (= e!934071 e!934072)))

(assert (=> d!429295 e!934071))

(assert (= b!1464277 b!1464278))

(assert (= b!1464276 b!1464277))

(assert (= (and d!429295 ((_ is Cons!15189) (rules!11706 thiss!10022))) b!1464276))

(assert (=> b!1464278 (< (dynLambda!6933 order!9151 (toValue!3986 (transformation!2675 (h!20590 (rules!11706 thiss!10022))))) (dynLambda!6934 order!9153 lambda!63343))))

(assert (=> b!1464278 (< (dynLambda!6935 order!9155 (toChars!3845 (transformation!2675 (h!20590 (rules!11706 thiss!10022))))) (dynLambda!6934 order!9153 lambda!63343))))

(assert (=> d!429295 true))

(declare-fun e!934070 () Bool)

(assert (=> d!429295 e!934070))

(declare-fun res!662821 () Bool)

(assert (=> d!429295 (=> (not res!662821) (not e!934070))))

(declare-fun lt!508543 () Bool)

(assert (=> d!429295 (= res!662821 (= lt!508543 (forall!3744 (list!6083 (tokens!2112 thiss!10022)) lambda!63343)))))

(declare-fun forall!3746 (BalanceConc!10294 Int) Bool)

(assert (=> d!429295 (= lt!508543 (forall!3746 (tokens!2112 thiss!10022) lambda!63343))))

(assert (=> d!429295 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!429295 (= (rulesProduceEachTokenIndividually!881 Lexer!2329 (rules!11706 thiss!10022) (tokens!2112 thiss!10022)) lt!508543)))

(declare-fun b!1464275 () Bool)

(assert (=> b!1464275 (= e!934070 (= lt!508543 (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) (list!6083 (tokens!2112 thiss!10022)))))))

(assert (= (and d!429295 res!662821) b!1464275))

(assert (=> d!429295 m!1701677))

(assert (=> d!429295 m!1701677))

(declare-fun m!1704685 () Bool)

(assert (=> d!429295 m!1704685))

(declare-fun m!1704687 () Bool)

(assert (=> d!429295 m!1704687))

(assert (=> d!429295 m!1701757))

(assert (=> b!1464275 m!1701677))

(assert (=> b!1464275 m!1701677))

(declare-fun m!1704689 () Bool)

(assert (=> b!1464275 m!1704689))

(assert (=> b!1463321 d!429295))

(declare-fun bs!344552 () Bool)

(declare-fun d!429307 () Bool)

(assert (= bs!344552 (and d!429307 d!428849)))

(declare-fun lambda!63344 () Int)

(assert (=> bs!344552 (= (= (rules!11706 lt!506997) (rules!11706 thiss!10022)) (= lambda!63344 lambda!63326))))

(declare-fun bs!344553 () Bool)

(assert (= bs!344553 (and d!429307 d!429273)))

(assert (=> bs!344553 (= (= (rules!11706 lt!506997) (rules!11706 thiss!10022)) (= lambda!63344 lambda!63332))))

(declare-fun bs!344554 () Bool)

(assert (= bs!344554 (and d!429307 d!429057)))

(assert (=> bs!344554 (= (= (rules!11706 lt!506997) (rules!11706 thiss!10022)) (= lambda!63344 lambda!63331))))

(declare-fun bs!344555 () Bool)

(assert (= bs!344555 (and d!429307 d!429055)))

(assert (=> bs!344555 (= (= (rules!11706 lt!506997) (rules!11706 thiss!10022)) (= lambda!63344 lambda!63330))))

(declare-fun bs!344556 () Bool)

(assert (= bs!344556 (and d!429307 d!429295)))

(assert (=> bs!344556 (= (= (rules!11706 lt!506997) (rules!11706 thiss!10022)) (= lambda!63344 lambda!63343))))

(declare-fun b!1464282 () Bool)

(declare-fun e!934077 () Bool)

(assert (=> b!1464282 (= e!934077 true)))

(declare-fun b!1464281 () Bool)

(declare-fun e!934076 () Bool)

(assert (=> b!1464281 (= e!934076 e!934077)))

(declare-fun b!1464280 () Bool)

(declare-fun e!934075 () Bool)

(assert (=> b!1464280 (= e!934075 e!934076)))

(assert (=> d!429307 e!934075))

(assert (= b!1464281 b!1464282))

(assert (= b!1464280 b!1464281))

(assert (= (and d!429307 ((_ is Cons!15189) (rules!11706 lt!506997))) b!1464280))

(assert (=> b!1464282 (< (dynLambda!6933 order!9151 (toValue!3986 (transformation!2675 (h!20590 (rules!11706 lt!506997))))) (dynLambda!6934 order!9153 lambda!63344))))

(assert (=> b!1464282 (< (dynLambda!6935 order!9155 (toChars!3845 (transformation!2675 (h!20590 (rules!11706 lt!506997))))) (dynLambda!6934 order!9153 lambda!63344))))

(assert (=> d!429307 true))

(declare-fun e!934074 () Bool)

(assert (=> d!429307 e!934074))

(declare-fun res!662822 () Bool)

(assert (=> d!429307 (=> (not res!662822) (not e!934074))))

(declare-fun lt!508544 () Bool)

(assert (=> d!429307 (= res!662822 (= lt!508544 (forall!3744 (list!6083 (tokens!2112 lt!506997)) lambda!63344)))))

(assert (=> d!429307 (= lt!508544 (forall!3746 (tokens!2112 lt!506997) lambda!63344))))

(assert (=> d!429307 (not (isEmpty!9541 (rules!11706 lt!506997)))))

(assert (=> d!429307 (= (rulesProduceEachTokenIndividually!881 Lexer!2329 (rules!11706 lt!506997) (tokens!2112 lt!506997)) lt!508544)))

(declare-fun b!1464279 () Bool)

(assert (=> b!1464279 (= e!934074 (= lt!508544 (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 lt!506997) (list!6083 (tokens!2112 lt!506997)))))))

(assert (= (and d!429307 res!662822) b!1464279))

(assert (=> d!429307 m!1702451))

(assert (=> d!429307 m!1702451))

(declare-fun m!1704691 () Bool)

(assert (=> d!429307 m!1704691))

(declare-fun m!1704693 () Bool)

(assert (=> d!429307 m!1704693))

(assert (=> d!429307 m!1702841))

(assert (=> b!1464279 m!1702451))

(assert (=> b!1464279 m!1702451))

(declare-fun m!1704695 () Bool)

(assert (=> b!1464279 m!1704695))

(assert (=> b!1463466 d!429307))

(declare-fun d!429309 () Bool)

(assert (=> d!429309 (= (inv!20307 (xs!7928 (c!241182 (tokens!2112 thiss!10022)))) (<= (size!12424 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 thiss!10022))))) 2147483647))))

(declare-fun bs!344557 () Bool)

(assert (= bs!344557 d!429309))

(declare-fun m!1704697 () Bool)

(assert (=> bs!344557 m!1704697))

(assert (=> b!1463490 d!429309))

(assert (=> b!1463182 d!429061))

(declare-fun b!1464294 () Bool)

(declare-fun e!934083 () List!15254)

(assert (=> b!1464294 (= e!934083 (++!4092 (list!6086 (left!12905 (c!241182 (tokens!2112 thiss!10022)))) (list!6086 (right!13235 (c!241182 (tokens!2112 thiss!10022))))))))

(declare-fun b!1464292 () Bool)

(declare-fun e!934082 () List!15254)

(assert (=> b!1464292 (= e!934082 e!934083)))

(declare-fun c!241414 () Bool)

(assert (=> b!1464292 (= c!241414 ((_ is Leaf!7716) (c!241182 (tokens!2112 thiss!10022))))))

(declare-fun d!429311 () Bool)

(declare-fun c!241413 () Bool)

(assert (=> d!429311 (= c!241413 ((_ is Empty!5177) (c!241182 (tokens!2112 thiss!10022))))))

(assert (=> d!429311 (= (list!6086 (c!241182 (tokens!2112 thiss!10022))) e!934082)))

(declare-fun b!1464293 () Bool)

(declare-fun list!6090 (IArray!10359) List!15254)

(assert (=> b!1464293 (= e!934083 (list!6090 (xs!7928 (c!241182 (tokens!2112 thiss!10022)))))))

(declare-fun b!1464291 () Bool)

(assert (=> b!1464291 (= e!934082 Nil!15188)))

(assert (= (and d!429311 c!241413) b!1464291))

(assert (= (and d!429311 (not c!241413)) b!1464292))

(assert (= (and b!1464292 c!241414) b!1464293))

(assert (= (and b!1464292 (not c!241414)) b!1464294))

(declare-fun m!1704699 () Bool)

(assert (=> b!1464294 m!1704699))

(declare-fun m!1704701 () Bool)

(assert (=> b!1464294 m!1704701))

(assert (=> b!1464294 m!1704699))

(assert (=> b!1464294 m!1704701))

(declare-fun m!1704703 () Bool)

(assert (=> b!1464294 m!1704703))

(declare-fun m!1704705 () Bool)

(assert (=> b!1464293 m!1704705))

(assert (=> d!428891 d!429311))

(declare-fun d!429313 () Bool)

(assert (=> d!429313 (= (isEmpty!9541 (rules!11706 other!32)) ((_ is Nil!15189) (rules!11706 other!32)))))

(assert (=> d!428815 d!429313))

(declare-fun b!1464307 () Bool)

(declare-fun res!662837 () Bool)

(declare-fun e!934089 () Bool)

(assert (=> b!1464307 (=> (not res!662837) (not e!934089))))

(assert (=> b!1464307 (= res!662837 (isBalanced!1555 (left!12905 (c!241182 (tokens!2112 thiss!10022)))))))

(declare-fun b!1464308 () Bool)

(declare-fun e!934088 () Bool)

(assert (=> b!1464308 (= e!934088 e!934089)))

(declare-fun res!662839 () Bool)

(assert (=> b!1464308 (=> (not res!662839) (not e!934089))))

(assert (=> b!1464308 (= res!662839 (<= (- 1) (- (height!778 (left!12905 (c!241182 (tokens!2112 thiss!10022)))) (height!778 (right!13235 (c!241182 (tokens!2112 thiss!10022)))))))))

(declare-fun b!1464309 () Bool)

(declare-fun res!662835 () Bool)

(assert (=> b!1464309 (=> (not res!662835) (not e!934089))))

(assert (=> b!1464309 (= res!662835 (<= (- (height!778 (left!12905 (c!241182 (tokens!2112 thiss!10022)))) (height!778 (right!13235 (c!241182 (tokens!2112 thiss!10022))))) 1))))

(declare-fun b!1464310 () Bool)

(assert (=> b!1464310 (= e!934089 (not (isEmpty!9543 (right!13235 (c!241182 (tokens!2112 thiss!10022))))))))

(declare-fun b!1464311 () Bool)

(declare-fun res!662840 () Bool)

(assert (=> b!1464311 (=> (not res!662840) (not e!934089))))

(assert (=> b!1464311 (= res!662840 (isBalanced!1555 (right!13235 (c!241182 (tokens!2112 thiss!10022)))))))

(declare-fun b!1464312 () Bool)

(declare-fun res!662836 () Bool)

(assert (=> b!1464312 (=> (not res!662836) (not e!934089))))

(assert (=> b!1464312 (= res!662836 (not (isEmpty!9543 (left!12905 (c!241182 (tokens!2112 thiss!10022))))))))

(declare-fun d!429315 () Bool)

(declare-fun res!662838 () Bool)

(assert (=> d!429315 (=> res!662838 e!934088)))

(assert (=> d!429315 (= res!662838 (not ((_ is Node!5177) (c!241182 (tokens!2112 thiss!10022)))))))

(assert (=> d!429315 (= (isBalanced!1555 (c!241182 (tokens!2112 thiss!10022))) e!934088)))

(assert (= (and d!429315 (not res!662838)) b!1464308))

(assert (= (and b!1464308 res!662839) b!1464309))

(assert (= (and b!1464309 res!662835) b!1464307))

(assert (= (and b!1464307 res!662837) b!1464311))

(assert (= (and b!1464311 res!662840) b!1464312))

(assert (= (and b!1464312 res!662836) b!1464310))

(declare-fun m!1704707 () Bool)

(assert (=> b!1464312 m!1704707))

(declare-fun m!1704709 () Bool)

(assert (=> b!1464310 m!1704709))

(declare-fun m!1704711 () Bool)

(assert (=> b!1464307 m!1704711))

(declare-fun m!1704713 () Bool)

(assert (=> b!1464309 m!1704713))

(declare-fun m!1704715 () Bool)

(assert (=> b!1464309 m!1704715))

(assert (=> b!1464308 m!1704713))

(assert (=> b!1464308 m!1704715))

(declare-fun m!1704717 () Bool)

(assert (=> b!1464311 m!1704717))

(assert (=> d!428963 d!429315))

(declare-fun b!1464313 () Bool)

(declare-fun res!662848 () Bool)

(declare-fun e!934090 () Bool)

(assert (=> b!1464313 (=> (not res!662848) (not e!934090))))

(assert (=> b!1464313 (= res!662848 (not (isEmpty!9541 (rules!11706 thiss!10022))))))

(declare-fun d!429317 () Bool)

(declare-fun lt!508558 () Bool)

(assert (=> d!429317 (= lt!508558 (tokensListTwoByTwoPredicateSeparableList!249 Lexer!2329 (dropList!483 lt!507005 (+ 0 1)) (rules!11706 thiss!10022)))))

(declare-fun lt!508549 () Unit!24509)

(declare-fun lt!508570 () Unit!24509)

(assert (=> d!429317 (= lt!508549 lt!508570)))

(declare-fun lt!508573 () List!15254)

(assert (=> d!429317 (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) lt!508573)))

(declare-fun lt!508552 () List!15254)

(assert (=> d!429317 (= lt!508570 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!63 Lexer!2329 (rules!11706 thiss!10022) lt!508552 lt!508573))))

(assert (=> d!429317 e!934090))

(declare-fun res!662841 () Bool)

(assert (=> d!429317 (=> (not res!662841) (not e!934090))))

(assert (=> d!429317 (= res!662841 ((_ is Lexer!2329) Lexer!2329))))

(assert (=> d!429317 (= lt!508573 (dropList!483 lt!507005 (+ 0 1)))))

(assert (=> d!429317 (= lt!508552 (list!6083 lt!507005))))

(declare-fun lt!508550 () Unit!24509)

(declare-fun lt!508554 () Unit!24509)

(assert (=> d!429317 (= lt!508550 lt!508554)))

(declare-fun lt!508545 () List!15254)

(assert (=> d!429317 (subseq!368 (drop!745 lt!508545 (+ 0 1)) lt!508545)))

(assert (=> d!429317 (= lt!508554 (lemmaDropSubSeq!63 lt!508545 (+ 0 1)))))

(declare-fun e!934092 () Bool)

(assert (=> d!429317 e!934092))

(declare-fun res!662846 () Bool)

(assert (=> d!429317 (=> (not res!662846) (not e!934092))))

(assert (=> d!429317 (= res!662846 (>= (+ 0 1) 0))))

(assert (=> d!429317 (= lt!508545 (list!6083 lt!507005))))

(declare-fun e!934091 () Bool)

(assert (=> d!429317 (= lt!508558 e!934091)))

(declare-fun res!662842 () Bool)

(assert (=> d!429317 (=> res!662842 e!934091)))

(assert (=> d!429317 (= res!662842 (not (< (+ 0 1) (- (size!12423 lt!507005) 1))))))

(declare-fun e!934093 () Bool)

(assert (=> d!429317 e!934093))

(declare-fun res!662847 () Bool)

(assert (=> d!429317 (=> (not res!662847) (not e!934093))))

(assert (=> d!429317 (= res!662847 (>= (+ 0 1) 0))))

(assert (=> d!429317 (= (tokensListTwoByTwoPredicateSeparable!138 Lexer!2329 lt!507005 (+ 0 1) (rules!11706 thiss!10022)) lt!508558)))

(declare-fun b!1464314 () Bool)

(declare-fun res!662843 () Bool)

(assert (=> b!1464314 (=> (not res!662843) (not e!934090))))

(assert (=> b!1464314 (= res!662843 (rulesInvariant!2164 Lexer!2329 (rules!11706 thiss!10022)))))

(declare-fun b!1464315 () Bool)

(assert (=> b!1464315 (= e!934093 (<= (+ 0 1) (size!12423 lt!507005)))))

(declare-fun b!1464316 () Bool)

(assert (=> b!1464316 (= e!934092 (<= (+ 0 1) (size!12424 lt!508545)))))

(declare-fun b!1464317 () Bool)

(declare-fun e!934094 () Bool)

(assert (=> b!1464317 (= e!934091 e!934094)))

(declare-fun res!662844 () Bool)

(assert (=> b!1464317 (=> (not res!662844) (not e!934094))))

(assert (=> b!1464317 (= res!662844 (separableTokensPredicate!540 Lexer!2329 (apply!3965 lt!507005 (+ 0 1)) (apply!3965 lt!507005 (+ 0 1 1)) (rules!11706 thiss!10022)))))

(declare-fun lt!508576 () Unit!24509)

(declare-fun Unit!24692 () Unit!24509)

(assert (=> b!1464317 (= lt!508576 Unit!24692)))

(assert (=> b!1464317 (> (size!12425 (charsOf!1538 (apply!3965 lt!507005 (+ 0 1 1)))) 0)))

(declare-fun lt!508562 () Unit!24509)

(declare-fun Unit!24693 () Unit!24509)

(assert (=> b!1464317 (= lt!508562 Unit!24693)))

(assert (=> b!1464317 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (apply!3965 lt!507005 (+ 0 1 1)))))

(declare-fun lt!508559 () Unit!24509)

(declare-fun Unit!24694 () Unit!24509)

(assert (=> b!1464317 (= lt!508559 Unit!24694)))

(assert (=> b!1464317 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (apply!3965 lt!507005 (+ 0 1)))))

(declare-fun lt!508566 () Unit!24509)

(declare-fun lt!508561 () Unit!24509)

(assert (=> b!1464317 (= lt!508566 lt!508561)))

(declare-fun lt!508569 () Token!5012)

(assert (=> b!1464317 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) lt!508569)))

(declare-fun lt!508547 () List!15254)

(assert (=> b!1464317 (= lt!508561 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!433 Lexer!2329 (rules!11706 thiss!10022) lt!508547 lt!508569))))

(assert (=> b!1464317 (= lt!508569 (apply!3965 lt!507005 (+ 0 1 1)))))

(assert (=> b!1464317 (= lt!508547 (list!6083 lt!507005))))

(declare-fun lt!508565 () Unit!24509)

(declare-fun lt!508556 () Unit!24509)

(assert (=> b!1464317 (= lt!508565 lt!508556)))

(declare-fun lt!508560 () Token!5012)

(assert (=> b!1464317 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) lt!508560)))

(declare-fun lt!508577 () List!15254)

(assert (=> b!1464317 (= lt!508556 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!433 Lexer!2329 (rules!11706 thiss!10022) lt!508577 lt!508560))))

(assert (=> b!1464317 (= lt!508560 (apply!3965 lt!507005 (+ 0 1)))))

(assert (=> b!1464317 (= lt!508577 (list!6083 lt!507005))))

(declare-fun lt!508563 () Unit!24509)

(declare-fun lt!508553 () Unit!24509)

(assert (=> b!1464317 (= lt!508563 lt!508553)))

(declare-fun lt!508555 () List!15254)

(declare-fun lt!508574 () Int)

(assert (=> b!1464317 (= (tail!2177 (drop!745 lt!508555 lt!508574)) (drop!745 lt!508555 (+ lt!508574 1)))))

(assert (=> b!1464317 (= lt!508553 (lemmaDropTail!475 lt!508555 lt!508574))))

(assert (=> b!1464317 (= lt!508574 (+ 0 1 1))))

(assert (=> b!1464317 (= lt!508555 (list!6083 lt!507005))))

(declare-fun lt!508548 () Unit!24509)

(declare-fun lt!508572 () Unit!24509)

(assert (=> b!1464317 (= lt!508548 lt!508572)))

(declare-fun lt!508568 () List!15254)

(assert (=> b!1464317 (= (tail!2177 (drop!745 lt!508568 (+ 0 1))) (drop!745 lt!508568 (+ 0 1 1)))))

(assert (=> b!1464317 (= lt!508572 (lemmaDropTail!475 lt!508568 (+ 0 1)))))

(assert (=> b!1464317 (= lt!508568 (list!6083 lt!507005))))

(declare-fun lt!508567 () Unit!24509)

(declare-fun lt!508546 () Unit!24509)

(assert (=> b!1464317 (= lt!508567 lt!508546)))

(declare-fun lt!508575 () List!15254)

(declare-fun lt!508564 () Int)

(assert (=> b!1464317 (= (head!3020 (drop!745 lt!508575 lt!508564)) (apply!3966 lt!508575 lt!508564))))

(assert (=> b!1464317 (= lt!508546 (lemmaDropApply!495 lt!508575 lt!508564))))

(assert (=> b!1464317 (= lt!508564 (+ 0 1 1))))

(assert (=> b!1464317 (= lt!508575 (list!6083 lt!507005))))

(declare-fun lt!508551 () Unit!24509)

(declare-fun lt!508557 () Unit!24509)

(assert (=> b!1464317 (= lt!508551 lt!508557)))

(declare-fun lt!508571 () List!15254)

(assert (=> b!1464317 (= (head!3020 (drop!745 lt!508571 (+ 0 1))) (apply!3966 lt!508571 (+ 0 1)))))

(assert (=> b!1464317 (= lt!508557 (lemmaDropApply!495 lt!508571 (+ 0 1)))))

(assert (=> b!1464317 (= lt!508571 (list!6083 lt!507005))))

(declare-fun b!1464318 () Bool)

(declare-fun res!662845 () Bool)

(assert (=> b!1464318 (=> (not res!662845) (not e!934090))))

(assert (=> b!1464318 (= res!662845 (subseq!368 lt!508573 lt!508552))))

(declare-fun b!1464319 () Bool)

(assert (=> b!1464319 (= e!934094 (tokensListTwoByTwoPredicateSeparable!138 Lexer!2329 lt!507005 (+ 0 1 1) (rules!11706 thiss!10022)))))

(declare-fun b!1464320 () Bool)

(assert (=> b!1464320 (= e!934090 (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) lt!508552))))

(assert (= (and d!429317 res!662847) b!1464315))

(assert (= (and d!429317 (not res!662842)) b!1464317))

(assert (= (and b!1464317 res!662844) b!1464319))

(assert (= (and d!429317 res!662846) b!1464316))

(assert (= (and d!429317 res!662841) b!1464313))

(assert (= (and b!1464313 res!662848) b!1464314))

(assert (= (and b!1464314 res!662843) b!1464318))

(assert (= (and b!1464318 res!662845) b!1464320))

(assert (=> b!1464315 m!1701861))

(declare-fun m!1704719 () Bool)

(assert (=> b!1464317 m!1704719))

(declare-fun m!1704721 () Bool)

(assert (=> b!1464317 m!1704721))

(declare-fun m!1704723 () Bool)

(assert (=> b!1464317 m!1704723))

(declare-fun m!1704725 () Bool)

(assert (=> b!1464317 m!1704725))

(declare-fun m!1704727 () Bool)

(assert (=> b!1464317 m!1704727))

(declare-fun m!1704729 () Bool)

(assert (=> b!1464317 m!1704729))

(declare-fun m!1704731 () Bool)

(assert (=> b!1464317 m!1704731))

(assert (=> b!1464317 m!1704727))

(declare-fun m!1704733 () Bool)

(assert (=> b!1464317 m!1704733))

(declare-fun m!1704735 () Bool)

(assert (=> b!1464317 m!1704735))

(assert (=> b!1464317 m!1701641))

(declare-fun m!1704737 () Bool)

(assert (=> b!1464317 m!1704737))

(declare-fun m!1704739 () Bool)

(assert (=> b!1464317 m!1704739))

(declare-fun m!1704741 () Bool)

(assert (=> b!1464317 m!1704741))

(declare-fun m!1704743 () Bool)

(assert (=> b!1464317 m!1704743))

(declare-fun m!1704745 () Bool)

(assert (=> b!1464317 m!1704745))

(assert (=> b!1464317 m!1704721))

(declare-fun m!1704747 () Bool)

(assert (=> b!1464317 m!1704747))

(declare-fun m!1704749 () Bool)

(assert (=> b!1464317 m!1704749))

(declare-fun m!1704751 () Bool)

(assert (=> b!1464317 m!1704751))

(assert (=> b!1464317 m!1704739))

(assert (=> b!1464317 m!1701871))

(assert (=> b!1464317 m!1701873))

(declare-fun m!1704755 () Bool)

(assert (=> b!1464317 m!1704755))

(declare-fun m!1704757 () Bool)

(assert (=> b!1464317 m!1704757))

(assert (=> b!1464317 m!1701871))

(assert (=> b!1464317 m!1704727))

(declare-fun m!1704759 () Bool)

(assert (=> b!1464317 m!1704759))

(declare-fun m!1704761 () Bool)

(assert (=> b!1464317 m!1704761))

(declare-fun m!1704763 () Bool)

(assert (=> b!1464317 m!1704763))

(assert (=> b!1464317 m!1704733))

(assert (=> b!1464317 m!1701871))

(assert (=> b!1464317 m!1704749))

(assert (=> b!1464317 m!1704727))

(declare-fun m!1704765 () Bool)

(assert (=> b!1464317 m!1704765))

(declare-fun m!1704767 () Bool)

(assert (=> b!1464317 m!1704767))

(assert (=> b!1464317 m!1704765))

(declare-fun m!1704769 () Bool)

(assert (=> b!1464317 m!1704769))

(assert (=> d!429317 m!1701861))

(declare-fun m!1704771 () Bool)

(assert (=> d!429317 m!1704771))

(assert (=> d!429317 m!1701641))

(declare-fun m!1704773 () Bool)

(assert (=> d!429317 m!1704773))

(declare-fun m!1704775 () Bool)

(assert (=> d!429317 m!1704775))

(declare-fun m!1704777 () Bool)

(assert (=> d!429317 m!1704777))

(declare-fun m!1704779 () Bool)

(assert (=> d!429317 m!1704779))

(assert (=> d!429317 m!1704777))

(declare-fun m!1704781 () Bool)

(assert (=> d!429317 m!1704781))

(assert (=> d!429317 m!1704773))

(declare-fun m!1704783 () Bool)

(assert (=> d!429317 m!1704783))

(assert (=> b!1464314 m!1701759))

(declare-fun m!1704785 () Bool)

(assert (=> b!1464320 m!1704785))

(declare-fun m!1704787 () Bool)

(assert (=> b!1464319 m!1704787))

(assert (=> b!1464313 m!1701757))

(declare-fun m!1704789 () Bool)

(assert (=> b!1464318 m!1704789))

(declare-fun m!1704791 () Bool)

(assert (=> b!1464316 m!1704791))

(assert (=> b!1463186 d!429317))

(declare-fun d!429321 () Bool)

(assert (=> d!429321 (= (separableTokens!265 Lexer!2329 (tokens!2112 other!32) (rules!11706 other!32)) (tokensListTwoByTwoPredicateSeparable!138 Lexer!2329 (tokens!2112 other!32) 0 (rules!11706 other!32)))))

(declare-fun bs!344591 () Bool)

(assert (= bs!344591 d!429321))

(declare-fun m!1705317 () Bool)

(assert (=> bs!344591 m!1705317))

(assert (=> b!1463324 d!429321))

(declare-fun d!429439 () Bool)

(declare-fun lt!508693 () BalanceConc!10292)

(assert (=> d!429439 (= (list!6087 lt!508693) (printList!727 Lexer!2329 (list!6083 (tokens!2112 lt!506997))))))

(assert (=> d!429439 (= lt!508693 (printTailRec!699 Lexer!2329 (tokens!2112 lt!506997) 0 (BalanceConc!10293 Empty!5176)))))

(assert (=> d!429439 (= (print!1107 Lexer!2329 (tokens!2112 lt!506997)) lt!508693)))

(declare-fun bs!344592 () Bool)

(assert (= bs!344592 d!429439))

(declare-fun m!1705319 () Bool)

(assert (=> bs!344592 m!1705319))

(assert (=> bs!344592 m!1702451))

(assert (=> bs!344592 m!1702451))

(declare-fun m!1705321 () Bool)

(assert (=> bs!344592 m!1705321))

(declare-fun m!1705323 () Bool)

(assert (=> bs!344592 m!1705323))

(assert (=> d!428901 d!429439))

(declare-fun d!429441 () Bool)

(assert (=> d!429441 (= (list!6083 (tokens!2112 lt!506997)) (list!6086 (c!241182 (tokens!2112 lt!506997))))))

(declare-fun bs!344593 () Bool)

(assert (= bs!344593 d!429441))

(declare-fun m!1705325 () Bool)

(assert (=> bs!344593 m!1705325))

(assert (=> d!428901 d!429441))

(assert (=> d!428901 d!429279))

(declare-fun d!429443 () Bool)

(declare-fun e!934214 () Bool)

(assert (=> d!429443 e!934214))

(declare-fun res!662950 () Bool)

(assert (=> d!429443 (=> (not res!662950) (not e!934214))))

(assert (=> d!429443 (= res!662950 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 lt!506997) (print!1107 Lexer!2329 (seqFromList!1716 (list!6083 (tokens!2112 lt!506997))))))) (list!6083 (tokens!2112 lt!506997))))))

(declare-fun lt!508711 () Unit!24509)

(declare-fun e!934213 () Unit!24509)

(assert (=> d!429443 (= lt!508711 e!934213)))

(declare-fun c!241449 () Bool)

(assert (=> d!429443 (= c!241449 (or ((_ is Nil!15188) (list!6083 (tokens!2112 lt!506997))) ((_ is Nil!15188) (t!134647 (list!6083 (tokens!2112 lt!506997))))))))

(assert (=> d!429443 (not (isEmpty!9541 (rules!11706 lt!506997)))))

(assert (=> d!429443 (= (theoremInvertabilityWhenTokenListSeparable!79 Lexer!2329 (rules!11706 lt!506997) (list!6083 (tokens!2112 lt!506997))) lt!508711)))

(declare-fun b!1464504 () Bool)

(declare-fun Unit!24695 () Unit!24509)

(assert (=> b!1464504 (= e!934213 Unit!24695)))

(declare-fun b!1464505 () Bool)

(declare-fun Unit!24696 () Unit!24509)

(assert (=> b!1464505 (= e!934213 Unit!24696)))

(declare-fun lt!508710 () BalanceConc!10292)

(assert (=> b!1464505 (= lt!508710 (print!1107 Lexer!2329 (seqFromList!1716 (list!6083 (tokens!2112 lt!506997)))))))

(declare-fun lt!508697 () BalanceConc!10292)

(assert (=> b!1464505 (= lt!508697 (print!1107 Lexer!2329 (seqFromList!1716 (t!134647 (list!6083 (tokens!2112 lt!506997))))))))

(declare-fun lt!508717 () tuple2!14256)

(assert (=> b!1464505 (= lt!508717 (lex!1076 Lexer!2329 (rules!11706 lt!506997) lt!508697))))

(declare-fun lt!508698 () List!15252)

(assert (=> b!1464505 (= lt!508698 (list!6087 (charsOf!1538 (h!20589 (list!6083 (tokens!2112 lt!506997))))))))

(declare-fun lt!508699 () List!15252)

(assert (=> b!1464505 (= lt!508699 (list!6087 lt!508697))))

(declare-fun lt!508704 () Unit!24509)

(assert (=> b!1464505 (= lt!508704 (lemmaConcatTwoListThenFirstIsPrefix!768 lt!508698 lt!508699))))

(assert (=> b!1464505 (isPrefix!1205 lt!508698 (++!4093 lt!508698 lt!508699))))

(declare-fun lt!508712 () Unit!24509)

(assert (=> b!1464505 (= lt!508712 lt!508704)))

(declare-fun lt!508716 () Unit!24509)

(assert (=> b!1464505 (= lt!508716 (theoremInvertabilityWhenTokenListSeparable!79 Lexer!2329 (rules!11706 lt!506997) (t!134647 (list!6083 (tokens!2112 lt!506997)))))))

(declare-fun lt!508701 () Unit!24509)

(assert (=> b!1464505 (= lt!508701 (seqFromListBHdTlConstructive!97 (h!20589 (t!134647 (list!6083 (tokens!2112 lt!506997)))) (t!134647 (t!134647 (list!6083 (tokens!2112 lt!506997)))) (_1!8014 lt!508717)))))

(assert (=> b!1464505 (= (list!6083 (_1!8014 lt!508717)) (list!6083 (prepend!429 (seqFromList!1716 (t!134647 (t!134647 (list!6083 (tokens!2112 lt!506997))))) (h!20589 (t!134647 (list!6083 (tokens!2112 lt!506997)))))))))

(declare-fun lt!508702 () Unit!24509)

(assert (=> b!1464505 (= lt!508702 lt!508701)))

(declare-fun lt!508714 () Option!2879)

(assert (=> b!1464505 (= lt!508714 (maxPrefix!1195 Lexer!2329 (rules!11706 lt!506997) (list!6087 lt!508710)))))

(assert (=> b!1464505 (= (print!1107 Lexer!2329 (singletonSeq!1281 (h!20589 (list!6083 (tokens!2112 lt!506997))))) (printTailRec!699 Lexer!2329 (singletonSeq!1281 (h!20589 (list!6083 (tokens!2112 lt!506997)))) 0 (BalanceConc!10293 Empty!5176)))))

(declare-fun lt!508713 () Unit!24509)

(declare-fun Unit!24697 () Unit!24509)

(assert (=> b!1464505 (= lt!508713 Unit!24697)))

(declare-fun lt!508700 () Unit!24509)

(assert (=> b!1464505 (= lt!508700 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!241 Lexer!2329 (rules!11706 lt!506997) (list!6087 (charsOf!1538 (h!20589 (list!6083 (tokens!2112 lt!506997))))) (list!6087 lt!508697)))))

(assert (=> b!1464505 (= (list!6087 (charsOf!1538 (h!20589 (list!6083 (tokens!2112 lt!506997))))) (originalCharacters!3537 (h!20589 (list!6083 (tokens!2112 lt!506997)))))))

(declare-fun lt!508708 () Unit!24509)

(declare-fun Unit!24698 () Unit!24509)

(assert (=> b!1464505 (= lt!508708 Unit!24698)))

(assert (=> b!1464505 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (list!6083 (tokens!2112 lt!506997))))) 0))) (Cons!15186 (head!3024 (originalCharacters!3537 (h!20589 (t!134647 (list!6083 (tokens!2112 lt!506997)))))) Nil!15186))))

(declare-fun lt!508695 () Unit!24509)

(declare-fun Unit!24699 () Unit!24509)

(assert (=> b!1464505 (= lt!508695 Unit!24699)))

(assert (=> b!1464505 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (list!6083 (tokens!2112 lt!506997))))) 0))) (Cons!15186 (head!3024 (list!6087 lt!508697)) Nil!15186))))

(declare-fun lt!508706 () Unit!24509)

(declare-fun Unit!24700 () Unit!24509)

(assert (=> b!1464505 (= lt!508706 Unit!24700)))

(assert (=> b!1464505 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (list!6083 (tokens!2112 lt!506997))))) 0))) (Cons!15186 (head!3025 lt!508697) Nil!15186))))

(declare-fun lt!508694 () Unit!24509)

(declare-fun Unit!24701 () Unit!24509)

(assert (=> b!1464505 (= lt!508694 Unit!24701)))

(assert (=> b!1464505 (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 lt!506997) (originalCharacters!3537 (h!20589 (list!6083 (tokens!2112 lt!506997))))))))

(declare-fun lt!508696 () Unit!24509)

(declare-fun Unit!24702 () Unit!24509)

(assert (=> b!1464505 (= lt!508696 Unit!24702)))

(assert (=> b!1464505 (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 lt!506997) (list!6087 (charsOf!1538 (h!20589 (list!6083 (tokens!2112 lt!506997)))))))))

(declare-fun lt!508707 () Unit!24509)

(declare-fun Unit!24703 () Unit!24509)

(assert (=> b!1464505 (= lt!508707 Unit!24703)))

(declare-fun lt!508709 () Unit!24509)

(declare-fun Unit!24704 () Unit!24509)

(assert (=> b!1464505 (= lt!508709 Unit!24704)))

(assert (=> b!1464505 (= (_1!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 lt!506997) (list!6087 (charsOf!1538 (h!20589 (list!6083 (tokens!2112 lt!506997)))))))) (h!20589 (list!6083 (tokens!2112 lt!506997))))))

(declare-fun lt!508715 () Unit!24509)

(declare-fun Unit!24705 () Unit!24509)

(assert (=> b!1464505 (= lt!508715 Unit!24705)))

(assert (=> b!1464505 (isEmpty!9545 (_2!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 lt!506997) (list!6087 (charsOf!1538 (h!20589 (list!6083 (tokens!2112 lt!506997)))))))))))

(declare-fun lt!508703 () Unit!24509)

(declare-fun Unit!24706 () Unit!24509)

(assert (=> b!1464505 (= lt!508703 Unit!24706)))

(assert (=> b!1464505 (matchR!1831 (regex!2675 (rule!4450 (h!20589 (list!6083 (tokens!2112 lt!506997))))) (list!6087 (charsOf!1538 (h!20589 (list!6083 (tokens!2112 lt!506997))))))))

(declare-fun lt!508718 () Unit!24509)

(declare-fun Unit!24707 () Unit!24509)

(assert (=> b!1464505 (= lt!508718 Unit!24707)))

(assert (=> b!1464505 (= (rule!4450 (h!20589 (list!6083 (tokens!2112 lt!506997)))) (rule!4450 (h!20589 (list!6083 (tokens!2112 lt!506997)))))))

(declare-fun lt!508705 () Unit!24509)

(declare-fun Unit!24708 () Unit!24509)

(assert (=> b!1464505 (= lt!508705 Unit!24708)))

(declare-fun lt!508719 () Unit!24509)

(assert (=> b!1464505 (= lt!508719 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!39 Lexer!2329 (rules!11706 lt!506997) (h!20589 (list!6083 (tokens!2112 lt!506997))) (rule!4450 (h!20589 (list!6083 (tokens!2112 lt!506997)))) (list!6087 lt!508697)))))

(declare-fun b!1464506 () Bool)

(assert (=> b!1464506 (= e!934214 (isEmpty!9544 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 lt!506997) (print!1107 Lexer!2329 (seqFromList!1716 (list!6083 (tokens!2112 lt!506997))))))))))

(assert (= (and d!429443 c!241449) b!1464504))

(assert (= (and d!429443 (not c!241449)) b!1464505))

(assert (= (and d!429443 res!662950) b!1464506))

(assert (=> d!429443 m!1702451))

(declare-fun m!1705345 () Bool)

(assert (=> d!429443 m!1705345))

(assert (=> d!429443 m!1702841))

(declare-fun m!1705347 () Bool)

(assert (=> d!429443 m!1705347))

(declare-fun m!1705353 () Bool)

(assert (=> d!429443 m!1705353))

(declare-fun m!1705355 () Bool)

(assert (=> d!429443 m!1705355))

(assert (=> d!429443 m!1705345))

(assert (=> d!429443 m!1705353))

(declare-fun m!1705361 () Bool)

(assert (=> b!1464505 m!1705361))

(declare-fun m!1705363 () Bool)

(assert (=> b!1464505 m!1705363))

(declare-fun m!1705365 () Bool)

(assert (=> b!1464505 m!1705365))

(declare-fun m!1705367 () Bool)

(assert (=> b!1464505 m!1705367))

(declare-fun m!1705369 () Bool)

(assert (=> b!1464505 m!1705369))

(declare-fun m!1705371 () Bool)

(assert (=> b!1464505 m!1705371))

(declare-fun m!1705373 () Bool)

(assert (=> b!1464505 m!1705373))

(declare-fun m!1705375 () Bool)

(assert (=> b!1464505 m!1705375))

(declare-fun m!1705377 () Bool)

(assert (=> b!1464505 m!1705377))

(declare-fun m!1705379 () Bool)

(assert (=> b!1464505 m!1705379))

(assert (=> b!1464505 m!1705365))

(declare-fun m!1705383 () Bool)

(assert (=> b!1464505 m!1705383))

(declare-fun m!1705389 () Bool)

(assert (=> b!1464505 m!1705389))

(declare-fun m!1705393 () Bool)

(assert (=> b!1464505 m!1705393))

(assert (=> b!1464505 m!1705371))

(declare-fun m!1705395 () Bool)

(assert (=> b!1464505 m!1705395))

(declare-fun m!1705397 () Bool)

(assert (=> b!1464505 m!1705397))

(assert (=> b!1464505 m!1705369))

(assert (=> b!1464505 m!1705397))

(declare-fun m!1705399 () Bool)

(assert (=> b!1464505 m!1705399))

(assert (=> b!1464505 m!1702451))

(assert (=> b!1464505 m!1705345))

(assert (=> b!1464505 m!1705393))

(declare-fun m!1705407 () Bool)

(assert (=> b!1464505 m!1705407))

(declare-fun m!1705409 () Bool)

(assert (=> b!1464505 m!1705409))

(declare-fun m!1705411 () Bool)

(assert (=> b!1464505 m!1705411))

(declare-fun m!1705413 () Bool)

(assert (=> b!1464505 m!1705413))

(declare-fun m!1705415 () Bool)

(assert (=> b!1464505 m!1705415))

(declare-fun m!1705417 () Bool)

(assert (=> b!1464505 m!1705417))

(declare-fun m!1705419 () Bool)

(assert (=> b!1464505 m!1705419))

(declare-fun m!1705421 () Bool)

(assert (=> b!1464505 m!1705421))

(declare-fun m!1705423 () Bool)

(assert (=> b!1464505 m!1705423))

(declare-fun m!1705425 () Bool)

(assert (=> b!1464505 m!1705425))

(declare-fun m!1705427 () Bool)

(assert (=> b!1464505 m!1705427))

(declare-fun m!1705429 () Bool)

(assert (=> b!1464505 m!1705429))

(assert (=> b!1464505 m!1705409))

(declare-fun m!1705431 () Bool)

(assert (=> b!1464505 m!1705431))

(assert (=> b!1464505 m!1705397))

(declare-fun m!1705433 () Bool)

(assert (=> b!1464505 m!1705433))

(declare-fun m!1705435 () Bool)

(assert (=> b!1464505 m!1705435))

(assert (=> b!1464505 m!1705345))

(assert (=> b!1464505 m!1705353))

(assert (=> b!1464505 m!1705375))

(assert (=> b!1464505 m!1705377))

(assert (=> b!1464505 m!1705371))

(declare-fun m!1705437 () Bool)

(assert (=> b!1464505 m!1705437))

(assert (=> b!1464505 m!1705397))

(declare-fun m!1705439 () Bool)

(assert (=> b!1464505 m!1705439))

(assert (=> b!1464505 m!1705411))

(assert (=> b!1464505 m!1705369))

(declare-fun m!1705441 () Bool)

(assert (=> b!1464505 m!1705441))

(assert (=> b!1464505 m!1705361))

(assert (=> b!1464505 m!1705419))

(declare-fun m!1705443 () Bool)

(assert (=> b!1464505 m!1705443))

(assert (=> b!1464505 m!1705365))

(assert (=> b!1464505 m!1705389))

(assert (=> b!1464505 m!1705417))

(assert (=> b!1464505 m!1705369))

(assert (=> b!1464505 m!1705379))

(declare-fun m!1705445 () Bool)

(assert (=> b!1464505 m!1705445))

(assert (=> b!1464506 m!1702451))

(assert (=> b!1464506 m!1705345))

(assert (=> b!1464506 m!1705345))

(assert (=> b!1464506 m!1705353))

(assert (=> b!1464506 m!1705353))

(assert (=> b!1464506 m!1705355))

(declare-fun m!1705447 () Bool)

(assert (=> b!1464506 m!1705447))

(assert (=> d!428901 d!429443))

(declare-fun d!429457 () Bool)

(assert (=> d!429457 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 lt!506997) lt!507450))) (list!6086 (c!241182 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 lt!506997) lt!507450)))))))

(declare-fun bs!344594 () Bool)

(assert (= bs!344594 d!429457))

(declare-fun m!1705449 () Bool)

(assert (=> bs!344594 m!1705449))

(assert (=> d!428901 d!429457))

(assert (=> d!428909 d!429091))

(declare-fun d!429459 () Bool)

(assert (=> d!429459 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (seqFromList!1716 (list!6083 lt!507005)))))) (list!6086 (c!241182 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (seqFromList!1716 (list!6083 lt!507005))))))))))

(declare-fun bs!344595 () Bool)

(assert (= bs!344595 d!429459))

(declare-fun m!1705451 () Bool)

(assert (=> bs!344595 m!1705451))

(assert (=> d!428909 d!429459))

(declare-fun e!934224 () Bool)

(declare-fun b!1464517 () Bool)

(declare-fun lt!508725 () tuple2!14256)

(assert (=> b!1464517 (= e!934224 (= (list!6087 (_2!8014 lt!508725)) (_2!8016 (lexList!717 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (print!1107 Lexer!2329 (seqFromList!1716 (list!6083 lt!507005))))))))))

(declare-fun b!1464518 () Bool)

(declare-fun e!934222 () Bool)

(assert (=> b!1464518 (= e!934222 (not (isEmpty!9535 (_1!8014 lt!508725))))))

(declare-fun b!1464519 () Bool)

(declare-fun e!934223 () Bool)

(assert (=> b!1464519 (= e!934223 (= (_2!8014 lt!508725) (print!1107 Lexer!2329 (seqFromList!1716 (list!6083 lt!507005)))))))

(declare-fun b!1464520 () Bool)

(declare-fun res!662957 () Bool)

(assert (=> b!1464520 (=> (not res!662957) (not e!934224))))

(assert (=> b!1464520 (= res!662957 (= (list!6083 (_1!8014 lt!508725)) (_1!8016 (lexList!717 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (print!1107 Lexer!2329 (seqFromList!1716 (list!6083 lt!507005))))))))))

(declare-fun d!429461 () Bool)

(assert (=> d!429461 e!934224))

(declare-fun res!662959 () Bool)

(assert (=> d!429461 (=> (not res!662959) (not e!934224))))

(assert (=> d!429461 (= res!662959 e!934223)))

(declare-fun c!241451 () Bool)

(assert (=> d!429461 (= c!241451 (> (size!12423 (_1!8014 lt!508725)) 0))))

(assert (=> d!429461 (= lt!508725 (lexTailRecV2!472 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (seqFromList!1716 (list!6083 lt!507005))) (BalanceConc!10293 Empty!5176) (print!1107 Lexer!2329 (seqFromList!1716 (list!6083 lt!507005))) (BalanceConc!10295 Empty!5177)))))

(assert (=> d!429461 (= (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (seqFromList!1716 (list!6083 lt!507005)))) lt!508725)))

(declare-fun b!1464521 () Bool)

(assert (=> b!1464521 (= e!934223 e!934222)))

(declare-fun res!662958 () Bool)

(assert (=> b!1464521 (= res!662958 (< (size!12425 (_2!8014 lt!508725)) (size!12425 (print!1107 Lexer!2329 (seqFromList!1716 (list!6083 lt!507005))))))))

(assert (=> b!1464521 (=> (not res!662958) (not e!934222))))

(assert (= (and d!429461 c!241451) b!1464521))

(assert (= (and d!429461 (not c!241451)) b!1464519))

(assert (= (and b!1464521 res!662958) b!1464518))

(assert (= (and d!429461 res!662959) b!1464520))

(assert (= (and b!1464520 res!662957) b!1464517))

(declare-fun m!1705453 () Bool)

(assert (=> b!1464521 m!1705453))

(assert (=> b!1464521 m!1702559))

(declare-fun m!1705455 () Bool)

(assert (=> b!1464521 m!1705455))

(declare-fun m!1705457 () Bool)

(assert (=> b!1464520 m!1705457))

(assert (=> b!1464520 m!1702559))

(declare-fun m!1705459 () Bool)

(assert (=> b!1464520 m!1705459))

(assert (=> b!1464520 m!1705459))

(declare-fun m!1705461 () Bool)

(assert (=> b!1464520 m!1705461))

(declare-fun m!1705463 () Bool)

(assert (=> b!1464518 m!1705463))

(declare-fun m!1705465 () Bool)

(assert (=> b!1464517 m!1705465))

(assert (=> b!1464517 m!1702559))

(assert (=> b!1464517 m!1705459))

(assert (=> b!1464517 m!1705459))

(assert (=> b!1464517 m!1705461))

(declare-fun m!1705467 () Bool)

(assert (=> d!429461 m!1705467))

(assert (=> d!429461 m!1702559))

(assert (=> d!429461 m!1702559))

(declare-fun m!1705469 () Bool)

(assert (=> d!429461 m!1705469))

(assert (=> d!428909 d!429461))

(assert (=> d!428909 d!429141))

(assert (=> d!428909 d!429143))

(declare-fun d!429463 () Bool)

(declare-fun c!241454 () Bool)

(assert (=> d!429463 (= c!241454 ((_ is Nil!15188) lt!507269))))

(declare-fun e!934227 () (InoxSet Token!5012))

(assert (=> d!429463 (= (content!2245 lt!507269) e!934227)))

(declare-fun b!1464526 () Bool)

(assert (=> b!1464526 (= e!934227 ((as const (Array Token!5012 Bool)) false))))

(declare-fun b!1464527 () Bool)

(assert (=> b!1464527 (= e!934227 ((_ map or) (store ((as const (Array Token!5012 Bool)) false) (h!20589 lt!507269) true) (content!2245 (t!134647 lt!507269))))))

(assert (= (and d!429463 c!241454) b!1464526))

(assert (= (and d!429463 (not c!241454)) b!1464527))

(declare-fun m!1705477 () Bool)

(assert (=> b!1464527 m!1705477))

(declare-fun m!1705479 () Bool)

(assert (=> b!1464527 m!1705479))

(assert (=> d!428847 d!429463))

(declare-fun d!429467 () Bool)

(declare-fun c!241455 () Bool)

(assert (=> d!429467 (= c!241455 ((_ is Nil!15188) lt!507007))))

(declare-fun e!934228 () (InoxSet Token!5012))

(assert (=> d!429467 (= (content!2245 lt!507007) e!934228)))

(declare-fun b!1464528 () Bool)

(assert (=> b!1464528 (= e!934228 ((as const (Array Token!5012 Bool)) false))))

(declare-fun b!1464529 () Bool)

(assert (=> b!1464529 (= e!934228 ((_ map or) (store ((as const (Array Token!5012 Bool)) false) (h!20589 lt!507007) true) (content!2245 (t!134647 lt!507007))))))

(assert (= (and d!429467 c!241455) b!1464528))

(assert (= (and d!429467 (not c!241455)) b!1464529))

(declare-fun m!1705481 () Bool)

(assert (=> b!1464529 m!1705481))

(declare-fun m!1705483 () Bool)

(assert (=> b!1464529 m!1705483))

(assert (=> d!428847 d!429467))

(declare-fun d!429469 () Bool)

(declare-fun c!241456 () Bool)

(assert (=> d!429469 (= c!241456 ((_ is Nil!15188) lt!506994))))

(declare-fun e!934229 () (InoxSet Token!5012))

(assert (=> d!429469 (= (content!2245 lt!506994) e!934229)))

(declare-fun b!1464530 () Bool)

(assert (=> b!1464530 (= e!934229 ((as const (Array Token!5012 Bool)) false))))

(declare-fun b!1464531 () Bool)

(assert (=> b!1464531 (= e!934229 ((_ map or) (store ((as const (Array Token!5012 Bool)) false) (h!20589 lt!506994) true) (content!2245 (t!134647 lt!506994))))))

(assert (= (and d!429469 c!241456) b!1464530))

(assert (= (and d!429469 (not c!241456)) b!1464531))

(declare-fun m!1705485 () Bool)

(assert (=> b!1464531 m!1705485))

(declare-fun m!1705487 () Bool)

(assert (=> b!1464531 m!1705487))

(assert (=> d!428847 d!429469))

(declare-fun d!429471 () Bool)

(declare-fun e!934256 () Bool)

(assert (=> d!429471 e!934256))

(declare-fun res!662983 () Bool)

(assert (=> d!429471 (=> (not res!662983) (not e!934256))))

(assert (=> d!429471 (= res!662983 (appendAssocInst!337 (c!241182 (tokens!2112 thiss!10022)) (c!241182 (tokens!2112 other!32))))))

(declare-fun lt!508740 () Conc!5177)

(declare-fun e!934253 () Conc!5177)

(assert (=> d!429471 (= lt!508740 e!934253)))

(declare-fun c!241482 () Bool)

(assert (=> d!429471 (= c!241482 (= (c!241182 (tokens!2112 thiss!10022)) Empty!5177))))

(declare-fun e!934260 () Bool)

(assert (=> d!429471 e!934260))

(declare-fun res!662986 () Bool)

(assert (=> d!429471 (=> (not res!662986) (not e!934260))))

(assert (=> d!429471 (= res!662986 (isBalanced!1555 (c!241182 (tokens!2112 thiss!10022))))))

(assert (=> d!429471 (= (++!4095 (c!241182 (tokens!2112 thiss!10022)) (c!241182 (tokens!2112 other!32))) lt!508740)))

(declare-fun b!1464586 () Bool)

(declare-fun res!662982 () Bool)

(assert (=> b!1464586 (=> (not res!662982) (not e!934256))))

(assert (=> b!1464586 (= res!662982 (>= (height!778 lt!508740) (max!0 (height!778 (c!241182 (tokens!2112 thiss!10022))) (height!778 (c!241182 (tokens!2112 other!32))))))))

(declare-fun bm!98517 () Bool)

(declare-fun c!241480 () Bool)

(declare-fun call!98528 () Int)

(assert (=> bm!98517 (= call!98528 (height!778 (ite c!241480 (c!241182 (tokens!2112 thiss!10022)) (c!241182 (tokens!2112 other!32)))))))

(declare-fun b!1464587 () Bool)

(assert (=> b!1464587 (= e!934260 (isBalanced!1555 (c!241182 (tokens!2112 other!32))))))

(declare-fun bm!98518 () Bool)

(declare-fun call!98531 () Conc!5177)

(declare-fun call!98529 () Conc!5177)

(assert (=> bm!98518 (= call!98531 call!98529)))

(declare-fun b!1464588 () Bool)

(assert (=> b!1464588 (= e!934256 (= (list!6086 lt!508740) (++!4092 (list!6086 (c!241182 (tokens!2112 thiss!10022))) (list!6086 (c!241182 (tokens!2112 other!32))))))))

(declare-fun b!1464589 () Bool)

(declare-fun e!934254 () Conc!5177)

(assert (=> b!1464589 (= e!934254 (c!241182 (tokens!2112 thiss!10022)))))

(declare-fun lt!508741 () Conc!5177)

(declare-fun bm!98519 () Bool)

(declare-fun call!98527 () Int)

(assert (=> bm!98519 (= call!98527 (height!778 (ite c!241480 lt!508741 (left!12905 (c!241182 (tokens!2112 other!32))))))))

(declare-fun call!98522 () Int)

(declare-fun bm!98520 () Bool)

(assert (=> bm!98520 (= call!98522 (height!778 (ite c!241480 (left!12905 (c!241182 (tokens!2112 thiss!10022))) (right!13235 (c!241182 (tokens!2112 other!32))))))))

(declare-fun b!1464590 () Bool)

(declare-fun res!662985 () Bool)

(assert (=> b!1464590 (=> (not res!662985) (not e!934256))))

(assert (=> b!1464590 (= res!662985 (isBalanced!1555 lt!508740))))

(declare-fun bm!98521 () Bool)

(declare-fun call!98535 () Conc!5177)

(declare-fun call!98525 () Conc!5177)

(assert (=> bm!98521 (= call!98535 call!98525)))

(declare-fun b!1464591 () Bool)

(declare-fun res!662984 () Bool)

(assert (=> b!1464591 (=> (not res!662984) (not e!934256))))

(assert (=> b!1464591 (= res!662984 (<= (height!778 lt!508740) (+ (max!0 (height!778 (c!241182 (tokens!2112 thiss!10022))) (height!778 (c!241182 (tokens!2112 other!32)))) 1)))))

(declare-fun b!1464592 () Bool)

(declare-fun e!934261 () Conc!5177)

(assert (=> b!1464592 (= e!934261 call!98525)))

(declare-fun lt!508743 () Conc!5177)

(declare-fun bm!98522 () Bool)

(declare-fun call!98523 () Int)

(assert (=> bm!98522 (= call!98523 (height!778 (ite c!241480 (right!13235 (c!241182 (tokens!2112 thiss!10022))) lt!508743)))))

(declare-fun b!1464593 () Bool)

(assert (=> b!1464593 (= e!934253 e!934254)))

(declare-fun c!241478 () Bool)

(assert (=> b!1464593 (= c!241478 (= (c!241182 (tokens!2112 other!32)) Empty!5177))))

(declare-fun bm!98523 () Bool)

(declare-fun call!98536 () Conc!5177)

(assert (=> bm!98523 (= call!98536 call!98535)))

(declare-fun b!1464594 () Bool)

(declare-fun e!934255 () Conc!5177)

(declare-fun call!98534 () Conc!5177)

(assert (=> b!1464594 (= e!934255 call!98534)))

(declare-fun b!1464595 () Bool)

(declare-fun e!934259 () Conc!5177)

(assert (=> b!1464595 (= e!934261 e!934259)))

(declare-fun lt!508742 () Int)

(assert (=> b!1464595 (= c!241480 (< lt!508742 (- 1)))))

(declare-fun bm!98524 () Bool)

(declare-fun call!98532 () Conc!5177)

(declare-fun call!98537 () Conc!5177)

(assert (=> bm!98524 (= call!98532 call!98537)))

(declare-fun bm!98525 () Bool)

(declare-fun call!98524 () Conc!5177)

(assert (=> bm!98525 (= call!98524 call!98535)))

(declare-fun bm!98526 () Bool)

(declare-fun call!98530 () Conc!5177)

(declare-fun call!98533 () Conc!5177)

(assert (=> bm!98526 (= call!98530 call!98533)))

(declare-fun call!98526 () Conc!5177)

(declare-fun bm!98527 () Bool)

(declare-fun c!241483 () Bool)

(declare-fun c!241476 () Bool)

(declare-fun c!241479 () Bool)

(declare-fun <>!106 (Conc!5177 Conc!5177) Conc!5177)

(assert (=> bm!98527 (= call!98529 (<>!106 (ite c!241480 (ite c!241483 (left!12905 (c!241182 (tokens!2112 thiss!10022))) (ite c!241476 (left!12905 (right!13235 (c!241182 (tokens!2112 thiss!10022)))) (left!12905 (c!241182 (tokens!2112 thiss!10022))))) (ite c!241479 lt!508743 (right!13235 (left!12905 (c!241182 (tokens!2112 other!32)))))) (ite c!241480 (ite c!241483 call!98526 (ite c!241476 lt!508741 (left!12905 (right!13235 (c!241182 (tokens!2112 thiss!10022)))))) (ite c!241479 (right!13235 (left!12905 (c!241182 (tokens!2112 other!32)))) (right!13235 (c!241182 (tokens!2112 other!32)))))))))

(declare-fun b!1464596 () Bool)

(declare-fun e!934257 () Conc!5177)

(declare-fun e!934262 () Conc!5177)

(assert (=> b!1464596 (= e!934257 e!934262)))

(assert (=> b!1464596 (= lt!508741 call!98526)))

(assert (=> b!1464596 (= c!241476 (= call!98527 (- call!98528 3)))))

(declare-fun b!1464597 () Bool)

(assert (=> b!1464597 (= e!934255 call!98534)))

(declare-fun b!1464598 () Bool)

(assert (=> b!1464598 (= e!934253 (c!241182 (tokens!2112 other!32)))))

(declare-fun b!1464599 () Bool)

(declare-fun c!241481 () Bool)

(assert (=> b!1464599 (= c!241481 (>= call!98522 call!98527))))

(declare-fun e!934258 () Conc!5177)

(assert (=> b!1464599 (= e!934259 e!934258)))

(declare-fun b!1464600 () Bool)

(assert (=> b!1464600 (= e!934258 call!98536)))

(declare-fun bm!98528 () Bool)

(assert (=> bm!98528 (= call!98526 call!98533)))

(declare-fun b!1464601 () Bool)

(assert (=> b!1464601 (= e!934257 call!98537)))

(declare-fun b!1464602 () Bool)

(declare-fun c!241477 () Bool)

(assert (=> b!1464602 (= c!241477 (and (<= (- 1) lt!508742) (<= lt!508742 1)))))

(assert (=> b!1464602 (= lt!508742 (- (height!778 (c!241182 (tokens!2112 other!32))) (height!778 (c!241182 (tokens!2112 thiss!10022)))))))

(assert (=> b!1464602 (= e!934254 e!934261)))

(declare-fun b!1464603 () Bool)

(assert (=> b!1464603 (= e!934262 call!98524)))

(declare-fun bm!98529 () Bool)

(assert (=> bm!98529 (= call!98537 call!98529)))

(declare-fun b!1464604 () Bool)

(assert (=> b!1464604 (= e!934262 call!98524)))

(declare-fun bm!98530 () Bool)

(assert (=> bm!98530 (= call!98534 call!98536)))

(declare-fun bm!98531 () Bool)

(assert (=> bm!98531 (= call!98533 (++!4095 (ite c!241480 (ite c!241483 (right!13235 (c!241182 (tokens!2112 thiss!10022))) (right!13235 (right!13235 (c!241182 (tokens!2112 thiss!10022))))) (c!241182 (tokens!2112 thiss!10022))) (ite c!241480 (c!241182 (tokens!2112 other!32)) (ite c!241481 (left!12905 (c!241182 (tokens!2112 other!32))) (left!12905 (left!12905 (c!241182 (tokens!2112 other!32))))))))))

(declare-fun b!1464605 () Bool)

(assert (=> b!1464605 (= e!934258 e!934255)))

(assert (=> b!1464605 (= lt!508743 call!98530)))

(assert (=> b!1464605 (= c!241479 (= call!98523 (- call!98528 3)))))

(declare-fun b!1464606 () Bool)

(assert (=> b!1464606 (= c!241483 (>= call!98522 call!98523))))

(assert (=> b!1464606 (= e!934259 e!934257)))

(declare-fun bm!98532 () Bool)

(assert (=> bm!98532 (= call!98525 (<>!106 (ite c!241477 (c!241182 (tokens!2112 thiss!10022)) (ite c!241480 (ite c!241476 (left!12905 (c!241182 (tokens!2112 thiss!10022))) call!98532) (ite c!241481 call!98530 (ite c!241479 call!98531 lt!508743)))) (ite c!241477 (c!241182 (tokens!2112 other!32)) (ite c!241480 (ite c!241476 call!98532 lt!508741) (ite (or c!241481 c!241479) (right!13235 (c!241182 (tokens!2112 other!32))) call!98531)))))))

(assert (= (and d!429471 res!662986) b!1464587))

(assert (= (and d!429471 c!241482) b!1464598))

(assert (= (and d!429471 (not c!241482)) b!1464593))

(assert (= (and b!1464593 c!241478) b!1464589))

(assert (= (and b!1464593 (not c!241478)) b!1464602))

(assert (= (and b!1464602 c!241477) b!1464592))

(assert (= (and b!1464602 (not c!241477)) b!1464595))

(assert (= (and b!1464595 c!241480) b!1464606))

(assert (= (and b!1464595 (not c!241480)) b!1464599))

(assert (= (and b!1464606 c!241483) b!1464601))

(assert (= (and b!1464606 (not c!241483)) b!1464596))

(assert (= (and b!1464596 c!241476) b!1464604))

(assert (= (and b!1464596 (not c!241476)) b!1464603))

(assert (= (or b!1464604 b!1464603) bm!98524))

(assert (= (or b!1464604 b!1464603) bm!98525))

(assert (= (or b!1464601 b!1464596) bm!98528))

(assert (= (or b!1464601 bm!98524) bm!98529))

(assert (= (and b!1464599 c!241481) b!1464600))

(assert (= (and b!1464599 (not c!241481)) b!1464605))

(assert (= (and b!1464605 c!241479) b!1464597))

(assert (= (and b!1464605 (not c!241479)) b!1464594))

(assert (= (or b!1464597 b!1464594) bm!98518))

(assert (= (or b!1464597 b!1464594) bm!98530))

(assert (= (or b!1464600 b!1464605) bm!98526))

(assert (= (or b!1464600 bm!98530) bm!98523))

(assert (= (or bm!98529 bm!98518) bm!98527))

(assert (= (or b!1464606 b!1464599) bm!98520))

(assert (= (or b!1464596 b!1464605) bm!98517))

(assert (= (or bm!98525 bm!98523) bm!98521))

(assert (= (or b!1464606 b!1464605) bm!98522))

(assert (= (or bm!98528 bm!98526) bm!98531))

(assert (= (or b!1464596 b!1464599) bm!98519))

(assert (= (or b!1464592 bm!98521) bm!98532))

(assert (= (and d!429471 res!662983) b!1464590))

(assert (= (and b!1464590 res!662985) b!1464591))

(assert (= (and b!1464591 res!662984) b!1464586))

(assert (= (and b!1464586 res!662982) b!1464588))

(assert (=> b!1464602 m!1702171))

(assert (=> b!1464602 m!1702169))

(declare-fun m!1705511 () Bool)

(assert (=> bm!98519 m!1705511))

(assert (=> d!429471 m!1702181))

(assert (=> d!429471 m!1702889))

(declare-fun m!1705513 () Bool)

(assert (=> bm!98520 m!1705513))

(declare-fun m!1705515 () Bool)

(assert (=> bm!98531 m!1705515))

(declare-fun m!1705517 () Bool)

(assert (=> bm!98517 m!1705517))

(declare-fun m!1705519 () Bool)

(assert (=> b!1464586 m!1705519))

(assert (=> b!1464586 m!1702169))

(assert (=> b!1464586 m!1702171))

(assert (=> b!1464586 m!1702169))

(assert (=> b!1464586 m!1702171))

(assert (=> b!1464586 m!1702173))

(declare-fun m!1705521 () Bool)

(assert (=> b!1464590 m!1705521))

(declare-fun m!1705523 () Bool)

(assert (=> b!1464588 m!1705523))

(assert (=> b!1464588 m!1702377))

(assert (=> b!1464588 m!1702369))

(assert (=> b!1464588 m!1702377))

(assert (=> b!1464588 m!1702369))

(declare-fun m!1705525 () Bool)

(assert (=> b!1464588 m!1705525))

(declare-fun m!1705527 () Bool)

(assert (=> bm!98527 m!1705527))

(declare-fun m!1705529 () Bool)

(assert (=> bm!98522 m!1705529))

(assert (=> b!1464587 m!1702883))

(declare-fun m!1705531 () Bool)

(assert (=> bm!98532 m!1705531))

(assert (=> b!1464591 m!1705519))

(assert (=> b!1464591 m!1702169))

(assert (=> b!1464591 m!1702171))

(assert (=> b!1464591 m!1702169))

(assert (=> b!1464591 m!1702171))

(assert (=> b!1464591 m!1702173))

(assert (=> b!1463211 d!429471))

(declare-fun d!429475 () Bool)

(assert (=> d!429475 (= (max!0 (height!778 (c!241182 (tokens!2112 thiss!10022))) (height!778 (c!241182 (tokens!2112 other!32)))) (ite (< (height!778 (c!241182 (tokens!2112 thiss!10022))) (height!778 (c!241182 (tokens!2112 other!32)))) (height!778 (c!241182 (tokens!2112 other!32))) (height!778 (c!241182 (tokens!2112 thiss!10022)))))))

(assert (=> b!1463211 d!429475))

(declare-fun d!429477 () Bool)

(assert (=> d!429477 (= (height!778 (++!4095 (c!241182 (tokens!2112 thiss!10022)) (c!241182 (tokens!2112 other!32)))) (ite ((_ is Empty!5177) (++!4095 (c!241182 (tokens!2112 thiss!10022)) (c!241182 (tokens!2112 other!32)))) 0 (ite ((_ is Leaf!7716) (++!4095 (c!241182 (tokens!2112 thiss!10022)) (c!241182 (tokens!2112 other!32)))) 1 (cheight!5388 (++!4095 (c!241182 (tokens!2112 thiss!10022)) (c!241182 (tokens!2112 other!32)))))))))

(assert (=> b!1463211 d!429477))

(declare-fun d!429479 () Bool)

(assert (=> d!429479 (= (height!778 (c!241182 (tokens!2112 other!32))) (ite ((_ is Empty!5177) (c!241182 (tokens!2112 other!32))) 0 (ite ((_ is Leaf!7716) (c!241182 (tokens!2112 other!32))) 1 (cheight!5388 (c!241182 (tokens!2112 other!32))))))))

(assert (=> b!1463211 d!429479))

(declare-fun d!429481 () Bool)

(assert (=> d!429481 (= (height!778 (c!241182 (tokens!2112 thiss!10022))) (ite ((_ is Empty!5177) (c!241182 (tokens!2112 thiss!10022))) 0 (ite ((_ is Leaf!7716) (c!241182 (tokens!2112 thiss!10022))) 1 (cheight!5388 (c!241182 (tokens!2112 thiss!10022))))))))

(assert (=> b!1463211 d!429481))

(declare-fun d!429483 () Bool)

(declare-fun lt!508776 () Token!5012)

(declare-fun contains!2913 (List!15254 Token!5012) Bool)

(assert (=> d!429483 (contains!2913 (list!6083 (tokens!2112 thiss!10022)) lt!508776)))

(declare-fun e!934265 () Token!5012)

(assert (=> d!429483 (= lt!508776 e!934265)))

(declare-fun c!241486 () Bool)

(assert (=> d!429483 (= c!241486 (and ((_ is Cons!15188) (list!6083 (tokens!2112 thiss!10022))) ((_ is Nil!15188) (t!134647 (list!6083 (tokens!2112 thiss!10022))))))))

(assert (=> d!429483 (not (isEmpty!9542 (list!6083 (tokens!2112 thiss!10022))))))

(assert (=> d!429483 (= (last!286 (list!6083 (tokens!2112 thiss!10022))) lt!508776)))

(declare-fun b!1464611 () Bool)

(assert (=> b!1464611 (= e!934265 (h!20589 (list!6083 (tokens!2112 thiss!10022))))))

(declare-fun b!1464612 () Bool)

(assert (=> b!1464612 (= e!934265 (last!286 (t!134647 (list!6083 (tokens!2112 thiss!10022)))))))

(assert (= (and d!429483 c!241486) b!1464611))

(assert (= (and d!429483 (not c!241486)) b!1464612))

(assert (=> d!429483 m!1701677))

(declare-fun m!1705559 () Bool)

(assert (=> d!429483 m!1705559))

(assert (=> d!429483 m!1701677))

(assert (=> d!429483 m!1702257))

(declare-fun m!1705561 () Bool)

(assert (=> b!1464612 m!1705561))

(assert (=> d!428889 d!429483))

(assert (=> d!428889 d!428891))

(declare-fun b!1464623 () Bool)

(declare-fun e!934275 () Bool)

(declare-fun lt!508791 () List!15254)

(declare-fun lt!508788 () List!15254)

(assert (=> b!1464623 (= e!934275 (= (last!286 (++!4092 lt!508791 lt!508788)) (last!286 lt!508791)))))

(declare-fun b!1464624 () Bool)

(declare-fun e!934274 () Token!5012)

(assert (=> b!1464624 (= e!934274 (last!287 (right!13235 (c!241182 (tokens!2112 thiss!10022)))))))

(assert (=> b!1464624 (= lt!508791 (list!6086 (left!12905 (c!241182 (tokens!2112 thiss!10022)))))))

(assert (=> b!1464624 (= lt!508788 (list!6086 (right!13235 (c!241182 (tokens!2112 thiss!10022)))))))

(declare-fun lt!508787 () Unit!24509)

(declare-fun lemmaLastOfConcatIsLastOfRhs!21 (List!15254 List!15254) Unit!24509)

(assert (=> b!1464624 (= lt!508787 (lemmaLastOfConcatIsLastOfRhs!21 lt!508791 lt!508788))))

(declare-fun res!662995 () Bool)

(assert (=> b!1464624 (= res!662995 (isEmpty!9542 lt!508788))))

(assert (=> b!1464624 (=> (not res!662995) (not e!934275))))

(declare-fun res!662994 () Bool)

(assert (=> b!1464624 (= res!662994 e!934275)))

(declare-fun e!934277 () Bool)

(assert (=> b!1464624 (=> res!662994 e!934277)))

(assert (=> b!1464624 e!934277))

(declare-fun lt!508789 () Unit!24509)

(assert (=> b!1464624 (= lt!508789 lt!508787)))

(declare-fun b!1464626 () Bool)

(declare-fun res!662993 () Bool)

(assert (=> b!1464626 (= res!662993 (not (isEmpty!9542 lt!508788)))))

(declare-fun e!934276 () Bool)

(assert (=> b!1464626 (=> (not res!662993) (not e!934276))))

(assert (=> b!1464626 (= e!934277 e!934276)))

(declare-fun b!1464627 () Bool)

(assert (=> b!1464627 (= e!934276 (= (last!286 (++!4092 lt!508791 lt!508788)) (last!286 lt!508788)))))

(declare-fun d!429487 () Bool)

(declare-fun lt!508790 () Token!5012)

(assert (=> d!429487 (= lt!508790 (last!286 (list!6086 (c!241182 (tokens!2112 thiss!10022)))))))

(assert (=> d!429487 (= lt!508790 e!934274)))

(declare-fun c!241489 () Bool)

(assert (=> d!429487 (= c!241489 ((_ is Leaf!7716) (c!241182 (tokens!2112 thiss!10022))))))

(assert (=> d!429487 (isBalanced!1555 (c!241182 (tokens!2112 thiss!10022)))))

(assert (=> d!429487 (= (last!287 (c!241182 (tokens!2112 thiss!10022))) lt!508790)))

(declare-fun b!1464625 () Bool)

(declare-fun last!290 (IArray!10359) Token!5012)

(assert (=> b!1464625 (= e!934274 (last!290 (xs!7928 (c!241182 (tokens!2112 thiss!10022)))))))

(assert (= (and d!429487 c!241489) b!1464625))

(assert (= (and d!429487 (not c!241489)) b!1464624))

(assert (= (and b!1464624 res!662995) b!1464623))

(assert (= (and b!1464624 (not res!662994)) b!1464626))

(assert (= (and b!1464626 res!662993) b!1464627))

(assert (=> d!429487 m!1702377))

(assert (=> d!429487 m!1702377))

(declare-fun m!1705563 () Bool)

(assert (=> d!429487 m!1705563))

(assert (=> d!429487 m!1702889))

(declare-fun m!1705565 () Bool)

(assert (=> b!1464627 m!1705565))

(assert (=> b!1464627 m!1705565))

(declare-fun m!1705567 () Bool)

(assert (=> b!1464627 m!1705567))

(declare-fun m!1705569 () Bool)

(assert (=> b!1464627 m!1705569))

(assert (=> b!1464624 m!1704699))

(declare-fun m!1705571 () Bool)

(assert (=> b!1464624 m!1705571))

(declare-fun m!1705573 () Bool)

(assert (=> b!1464624 m!1705573))

(declare-fun m!1705575 () Bool)

(assert (=> b!1464624 m!1705575))

(assert (=> b!1464624 m!1704701))

(declare-fun m!1705577 () Bool)

(assert (=> b!1464625 m!1705577))

(assert (=> b!1464623 m!1705565))

(assert (=> b!1464623 m!1705565))

(assert (=> b!1464623 m!1705567))

(declare-fun m!1705579 () Bool)

(assert (=> b!1464623 m!1705579))

(assert (=> b!1464626 m!1705573))

(assert (=> d!428889 d!429487))

(assert (=> d!428889 d!428875))

(declare-fun bs!344598 () Bool)

(declare-fun d!429489 () Bool)

(assert (= bs!344598 (and d!429489 d!428849)))

(declare-fun lambda!63352 () Int)

(assert (=> bs!344598 (= lambda!63352 lambda!63326)))

(declare-fun bs!344599 () Bool)

(assert (= bs!344599 (and d!429489 d!429307)))

(assert (=> bs!344599 (= (= (rules!11706 thiss!10022) (rules!11706 lt!506997)) (= lambda!63352 lambda!63344))))

(declare-fun bs!344600 () Bool)

(assert (= bs!344600 (and d!429489 d!429273)))

(assert (=> bs!344600 (= lambda!63352 lambda!63332)))

(declare-fun bs!344601 () Bool)

(assert (= bs!344601 (and d!429489 d!429057)))

(assert (=> bs!344601 (= lambda!63352 lambda!63331)))

(declare-fun bs!344602 () Bool)

(assert (= bs!344602 (and d!429489 d!429055)))

(assert (=> bs!344602 (= lambda!63352 lambda!63330)))

(declare-fun bs!344603 () Bool)

(assert (= bs!344603 (and d!429489 d!429295)))

(assert (=> bs!344603 (= lambda!63352 lambda!63343)))

(declare-fun b!1464632 () Bool)

(declare-fun e!934282 () Bool)

(assert (=> b!1464632 (= e!934282 true)))

(declare-fun b!1464631 () Bool)

(declare-fun e!934281 () Bool)

(assert (=> b!1464631 (= e!934281 e!934282)))

(declare-fun b!1464630 () Bool)

(declare-fun e!934280 () Bool)

(assert (=> b!1464630 (= e!934280 e!934281)))

(assert (=> d!429489 e!934280))

(assert (= b!1464631 b!1464632))

(assert (= b!1464630 b!1464631))

(assert (= (and d!429489 ((_ is Cons!15189) (rules!11706 thiss!10022))) b!1464630))

(assert (=> b!1464632 (< (dynLambda!6933 order!9151 (toValue!3986 (transformation!2675 (h!20590 (rules!11706 thiss!10022))))) (dynLambda!6934 order!9153 lambda!63352))))

(assert (=> b!1464632 (< (dynLambda!6935 order!9155 (toChars!3845 (transformation!2675 (h!20590 (rules!11706 thiss!10022))))) (dynLambda!6934 order!9153 lambda!63352))))

(assert (=> d!429489 true))

(declare-fun lt!508792 () Bool)

(assert (=> d!429489 (= lt!508792 (forall!3744 lt!506994 lambda!63352))))

(declare-fun e!934278 () Bool)

(assert (=> d!429489 (= lt!508792 e!934278)))

(declare-fun res!662996 () Bool)

(assert (=> d!429489 (=> res!662996 e!934278)))

(assert (=> d!429489 (= res!662996 (not ((_ is Cons!15188) lt!506994)))))

(assert (=> d!429489 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!429489 (= (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) lt!506994) lt!508792)))

(declare-fun b!1464628 () Bool)

(declare-fun e!934279 () Bool)

(assert (=> b!1464628 (= e!934278 e!934279)))

(declare-fun res!662997 () Bool)

(assert (=> b!1464628 (=> (not res!662997) (not e!934279))))

(assert (=> b!1464628 (= res!662997 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 lt!506994)))))

(declare-fun b!1464629 () Bool)

(assert (=> b!1464629 (= e!934279 (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) (t!134647 lt!506994)))))

(assert (= (and d!429489 (not res!662996)) b!1464628))

(assert (= (and b!1464628 res!662997) b!1464629))

(declare-fun m!1705581 () Bool)

(assert (=> d!429489 m!1705581))

(assert (=> d!429489 m!1701757))

(declare-fun m!1705583 () Bool)

(assert (=> b!1464628 m!1705583))

(declare-fun m!1705585 () Bool)

(assert (=> b!1464629 m!1705585))

(assert (=> b!1463299 d!429489))

(declare-fun b!1464634 () Bool)

(declare-fun e!934284 () List!15252)

(assert (=> b!1464634 (= e!934284 (Cons!15186 (h!20587 (list!6087 (charsOf!1538 (h!20589 lt!506991)))) (++!4093 (t!134645 (list!6087 (charsOf!1538 (h!20589 lt!506991)))) (printList!727 Lexer!2329 (t!134647 lt!506991)))))))

(declare-fun b!1464633 () Bool)

(assert (=> b!1464633 (= e!934284 (printList!727 Lexer!2329 (t!134647 lt!506991)))))

(declare-fun d!429491 () Bool)

(declare-fun e!934283 () Bool)

(assert (=> d!429491 e!934283))

(declare-fun res!662998 () Bool)

(assert (=> d!429491 (=> (not res!662998) (not e!934283))))

(declare-fun lt!508793 () List!15252)

(assert (=> d!429491 (= res!662998 (= (content!2247 lt!508793) ((_ map or) (content!2247 (list!6087 (charsOf!1538 (h!20589 lt!506991)))) (content!2247 (printList!727 Lexer!2329 (t!134647 lt!506991))))))))

(assert (=> d!429491 (= lt!508793 e!934284)))

(declare-fun c!241490 () Bool)

(assert (=> d!429491 (= c!241490 ((_ is Nil!15186) (list!6087 (charsOf!1538 (h!20589 lt!506991)))))))

(assert (=> d!429491 (= (++!4093 (list!6087 (charsOf!1538 (h!20589 lt!506991))) (printList!727 Lexer!2329 (t!134647 lt!506991))) lt!508793)))

(declare-fun b!1464636 () Bool)

(assert (=> b!1464636 (= e!934283 (or (not (= (printList!727 Lexer!2329 (t!134647 lt!506991)) Nil!15186)) (= lt!508793 (list!6087 (charsOf!1538 (h!20589 lt!506991))))))))

(declare-fun b!1464635 () Bool)

(declare-fun res!662999 () Bool)

(assert (=> b!1464635 (=> (not res!662999) (not e!934283))))

(assert (=> b!1464635 (= res!662999 (= (size!12429 lt!508793) (+ (size!12429 (list!6087 (charsOf!1538 (h!20589 lt!506991)))) (size!12429 (printList!727 Lexer!2329 (t!134647 lt!506991))))))))

(assert (= (and d!429491 c!241490) b!1464633))

(assert (= (and d!429491 (not c!241490)) b!1464634))

(assert (= (and d!429491 res!662998) b!1464635))

(assert (= (and b!1464635 res!662999) b!1464636))

(assert (=> b!1464634 m!1702869))

(declare-fun m!1705587 () Bool)

(assert (=> b!1464634 m!1705587))

(declare-fun m!1705589 () Bool)

(assert (=> d!429491 m!1705589))

(assert (=> d!429491 m!1702867))

(declare-fun m!1705591 () Bool)

(assert (=> d!429491 m!1705591))

(assert (=> d!429491 m!1702869))

(declare-fun m!1705593 () Bool)

(assert (=> d!429491 m!1705593))

(declare-fun m!1705595 () Bool)

(assert (=> b!1464635 m!1705595))

(assert (=> b!1464635 m!1702867))

(declare-fun m!1705597 () Bool)

(assert (=> b!1464635 m!1705597))

(assert (=> b!1464635 m!1702869))

(declare-fun m!1705599 () Bool)

(assert (=> b!1464635 m!1705599))

(assert (=> b!1463469 d!429491))

(declare-fun d!429493 () Bool)

(assert (=> d!429493 (= (list!6087 (charsOf!1538 (h!20589 lt!506991))) (list!6088 (c!241180 (charsOf!1538 (h!20589 lt!506991)))))))

(declare-fun bs!344604 () Bool)

(assert (= bs!344604 d!429493))

(declare-fun m!1705601 () Bool)

(assert (=> bs!344604 m!1705601))

(assert (=> b!1463469 d!429493))

(declare-fun d!429495 () Bool)

(declare-fun lt!508794 () BalanceConc!10292)

(assert (=> d!429495 (= (list!6087 lt!508794) (originalCharacters!3537 (h!20589 lt!506991)))))

(assert (=> d!429495 (= lt!508794 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!506991)))) (value!85885 (h!20589 lt!506991))))))

(assert (=> d!429495 (= (charsOf!1538 (h!20589 lt!506991)) lt!508794)))

(declare-fun b_lambda!45675 () Bool)

(assert (=> (not b_lambda!45675) (not d!429495)))

(declare-fun tb!82689 () Bool)

(declare-fun t!134718 () Bool)

(assert (=> (and b!1463502 (= (toChars!3845 (transformation!2675 (h!20590 (rules!11706 other!32)))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!506991))))) t!134718) tb!82689))

(declare-fun b!1464637 () Bool)

(declare-fun e!934285 () Bool)

(declare-fun tp!411861 () Bool)

(assert (=> b!1464637 (= e!934285 (and (inv!20311 (c!241180 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!506991)))) (value!85885 (h!20589 lt!506991))))) tp!411861))))

(declare-fun result!99342 () Bool)

(assert (=> tb!82689 (= result!99342 (and (inv!20312 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!506991)))) (value!85885 (h!20589 lt!506991)))) e!934285))))

(assert (= tb!82689 b!1464637))

(declare-fun m!1705603 () Bool)

(assert (=> b!1464637 m!1705603))

(declare-fun m!1705605 () Bool)

(assert (=> tb!82689 m!1705605))

(assert (=> d!429495 t!134718))

(declare-fun b_and!99953 () Bool)

(assert (= b_and!99933 (and (=> t!134718 result!99342) b_and!99953)))

(declare-fun t!134720 () Bool)

(declare-fun tb!82691 () Bool)

(assert (=> (and b!1463508 (= (toChars!3845 (transformation!2675 (h!20590 (rules!11706 thiss!10022)))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!506991))))) t!134720) tb!82691))

(declare-fun result!99344 () Bool)

(assert (= result!99344 result!99342))

(assert (=> d!429495 t!134720))

(declare-fun b_and!99955 () Bool)

(assert (= b_and!99935 (and (=> t!134720 result!99344) b_and!99955)))

(declare-fun m!1705607 () Bool)

(assert (=> d!429495 m!1705607))

(declare-fun m!1705609 () Bool)

(assert (=> d!429495 m!1705609))

(assert (=> b!1463469 d!429495))

(declare-fun d!429497 () Bool)

(declare-fun c!241491 () Bool)

(assert (=> d!429497 (= c!241491 ((_ is Cons!15188) (t!134647 lt!506991)))))

(declare-fun e!934286 () List!15252)

(assert (=> d!429497 (= (printList!727 Lexer!2329 (t!134647 lt!506991)) e!934286)))

(declare-fun b!1464638 () Bool)

(assert (=> b!1464638 (= e!934286 (++!4093 (list!6087 (charsOf!1538 (h!20589 (t!134647 lt!506991)))) (printList!727 Lexer!2329 (t!134647 (t!134647 lt!506991)))))))

(declare-fun b!1464639 () Bool)

(assert (=> b!1464639 (= e!934286 Nil!15186)))

(assert (= (and d!429497 c!241491) b!1464638))

(assert (= (and d!429497 (not c!241491)) b!1464639))

(assert (=> b!1464638 m!1702891))

(assert (=> b!1464638 m!1702891))

(declare-fun m!1705611 () Bool)

(assert (=> b!1464638 m!1705611))

(declare-fun m!1705613 () Bool)

(assert (=> b!1464638 m!1705613))

(assert (=> b!1464638 m!1705611))

(assert (=> b!1464638 m!1705613))

(declare-fun m!1705615 () Bool)

(assert (=> b!1464638 m!1705615))

(assert (=> b!1463469 d!429497))

(declare-fun d!429499 () Bool)

(declare-fun res!663000 () Bool)

(declare-fun e!934287 () Bool)

(assert (=> d!429499 (=> (not res!663000) (not e!934287))))

(assert (=> d!429499 (= res!663000 (rulesValid!991 Lexer!2329 (rules!11706 lt!506997)))))

(assert (=> d!429499 (= (rulesInvariant!2164 Lexer!2329 (rules!11706 lt!506997)) e!934287)))

(declare-fun b!1464640 () Bool)

(assert (=> b!1464640 (= e!934287 (noDuplicateTag!991 Lexer!2329 (rules!11706 lt!506997) Nil!15190))))

(assert (= (and d!429499 res!663000) b!1464640))

(declare-fun m!1705617 () Bool)

(assert (=> d!429499 m!1705617))

(declare-fun m!1705619 () Bool)

(assert (=> b!1464640 m!1705619))

(assert (=> b!1463465 d!429499))

(declare-fun d!429501 () Bool)

(declare-fun res!663005 () Bool)

(declare-fun e!934292 () Bool)

(assert (=> d!429501 (=> res!663005 e!934292)))

(assert (=> d!429501 (= res!663005 ((_ is Nil!15188) lt!506991))))

(assert (=> d!429501 (= (forall!3744 lt!506991 lambda!63326) e!934292)))

(declare-fun b!1464645 () Bool)

(declare-fun e!934293 () Bool)

(assert (=> b!1464645 (= e!934292 e!934293)))

(declare-fun res!663006 () Bool)

(assert (=> b!1464645 (=> (not res!663006) (not e!934293))))

(declare-fun dynLambda!6938 (Int Token!5012) Bool)

(assert (=> b!1464645 (= res!663006 (dynLambda!6938 lambda!63326 (h!20589 lt!506991)))))

(declare-fun b!1464646 () Bool)

(assert (=> b!1464646 (= e!934293 (forall!3744 (t!134647 lt!506991) lambda!63326))))

(assert (= (and d!429501 (not res!663005)) b!1464645))

(assert (= (and b!1464645 res!663006) b!1464646))

(declare-fun b_lambda!45677 () Bool)

(assert (=> (not b_lambda!45677) (not b!1464645)))

(declare-fun m!1705621 () Bool)

(assert (=> b!1464645 m!1705621))

(declare-fun m!1705623 () Bool)

(assert (=> b!1464646 m!1705623))

(assert (=> d!428849 d!429501))

(assert (=> d!428849 d!429091))

(declare-fun d!429503 () Bool)

(declare-fun c!241492 () Bool)

(assert (=> d!429503 (= c!241492 ((_ is Node!5177) (left!12905 (c!241182 (tokens!2112 thiss!10022)))))))

(declare-fun e!934294 () Bool)

(assert (=> d!429503 (= (inv!20300 (left!12905 (c!241182 (tokens!2112 thiss!10022)))) e!934294)))

(declare-fun b!1464647 () Bool)

(assert (=> b!1464647 (= e!934294 (inv!20301 (left!12905 (c!241182 (tokens!2112 thiss!10022)))))))

(declare-fun b!1464648 () Bool)

(declare-fun e!934295 () Bool)

(assert (=> b!1464648 (= e!934294 e!934295)))

(declare-fun res!663007 () Bool)

(assert (=> b!1464648 (= res!663007 (not ((_ is Leaf!7716) (left!12905 (c!241182 (tokens!2112 thiss!10022))))))))

(assert (=> b!1464648 (=> res!663007 e!934295)))

(declare-fun b!1464649 () Bool)

(assert (=> b!1464649 (= e!934295 (inv!20302 (left!12905 (c!241182 (tokens!2112 thiss!10022)))))))

(assert (= (and d!429503 c!241492) b!1464647))

(assert (= (and d!429503 (not c!241492)) b!1464648))

(assert (= (and b!1464648 (not res!663007)) b!1464649))

(declare-fun m!1705625 () Bool)

(assert (=> b!1464647 m!1705625))

(declare-fun m!1705627 () Bool)

(assert (=> b!1464649 m!1705627))

(assert (=> b!1463489 d!429503))

(declare-fun d!429505 () Bool)

(declare-fun c!241493 () Bool)

(assert (=> d!429505 (= c!241493 ((_ is Node!5177) (right!13235 (c!241182 (tokens!2112 thiss!10022)))))))

(declare-fun e!934296 () Bool)

(assert (=> d!429505 (= (inv!20300 (right!13235 (c!241182 (tokens!2112 thiss!10022)))) e!934296)))

(declare-fun b!1464650 () Bool)

(assert (=> b!1464650 (= e!934296 (inv!20301 (right!13235 (c!241182 (tokens!2112 thiss!10022)))))))

(declare-fun b!1464651 () Bool)

(declare-fun e!934297 () Bool)

(assert (=> b!1464651 (= e!934296 e!934297)))

(declare-fun res!663008 () Bool)

(assert (=> b!1464651 (= res!663008 (not ((_ is Leaf!7716) (right!13235 (c!241182 (tokens!2112 thiss!10022))))))))

(assert (=> b!1464651 (=> res!663008 e!934297)))

(declare-fun b!1464652 () Bool)

(assert (=> b!1464652 (= e!934297 (inv!20302 (right!13235 (c!241182 (tokens!2112 thiss!10022)))))))

(assert (= (and d!429505 c!241493) b!1464650))

(assert (= (and d!429505 (not c!241493)) b!1464651))

(assert (= (and b!1464651 (not res!663008)) b!1464652))

(declare-fun m!1705629 () Bool)

(assert (=> b!1464650 m!1705629))

(declare-fun m!1705631 () Bool)

(assert (=> b!1464652 m!1705631))

(assert (=> b!1463489 d!429505))

(declare-fun d!429507 () Bool)

(assert (=> d!429507 (= (list!6087 lt!507605) (list!6088 (c!241180 lt!507605)))))

(declare-fun bs!344605 () Bool)

(assert (= bs!344605 d!429507))

(declare-fun m!1705633 () Bool)

(assert (=> bs!344605 m!1705633))

(assert (=> d!428939 d!429507))

(declare-fun d!429509 () Bool)

(declare-fun c!241494 () Bool)

(assert (=> d!429509 (= c!241494 ((_ is Cons!15188) (list!6083 (tokens!2112 other!32))))))

(declare-fun e!934298 () List!15252)

(assert (=> d!429509 (= (printList!727 Lexer!2329 (list!6083 (tokens!2112 other!32))) e!934298)))

(declare-fun b!1464653 () Bool)

(assert (=> b!1464653 (= e!934298 (++!4093 (list!6087 (charsOf!1538 (h!20589 (list!6083 (tokens!2112 other!32))))) (printList!727 Lexer!2329 (t!134647 (list!6083 (tokens!2112 other!32))))))))

(declare-fun b!1464654 () Bool)

(assert (=> b!1464654 (= e!934298 Nil!15186)))

(assert (= (and d!429509 c!241494) b!1464653))

(assert (= (and d!429509 (not c!241494)) b!1464654))

(declare-fun m!1705635 () Bool)

(assert (=> b!1464653 m!1705635))

(assert (=> b!1464653 m!1705635))

(declare-fun m!1705637 () Bool)

(assert (=> b!1464653 m!1705637))

(declare-fun m!1705639 () Bool)

(assert (=> b!1464653 m!1705639))

(assert (=> b!1464653 m!1705637))

(assert (=> b!1464653 m!1705639))

(declare-fun m!1705641 () Bool)

(assert (=> b!1464653 m!1705641))

(assert (=> d!428939 d!429509))

(assert (=> d!428939 d!428885))

(declare-fun d!429511 () Bool)

(declare-fun lt!508801 () BalanceConc!10292)

(assert (=> d!429511 (= (list!6087 lt!508801) (printListTailRec!292 Lexer!2329 (dropList!483 (tokens!2112 other!32) 0) (list!6087 (BalanceConc!10293 Empty!5176))))))

(declare-fun e!934300 () BalanceConc!10292)

(assert (=> d!429511 (= lt!508801 e!934300)))

(declare-fun c!241495 () Bool)

(assert (=> d!429511 (= c!241495 (>= 0 (size!12423 (tokens!2112 other!32))))))

(declare-fun e!934299 () Bool)

(assert (=> d!429511 e!934299))

(declare-fun res!663009 () Bool)

(assert (=> d!429511 (=> (not res!663009) (not e!934299))))

(assert (=> d!429511 (= res!663009 (>= 0 0))))

(assert (=> d!429511 (= (printTailRec!699 Lexer!2329 (tokens!2112 other!32) 0 (BalanceConc!10293 Empty!5176)) lt!508801)))

(declare-fun b!1464655 () Bool)

(assert (=> b!1464655 (= e!934299 (<= 0 (size!12423 (tokens!2112 other!32))))))

(declare-fun b!1464656 () Bool)

(assert (=> b!1464656 (= e!934300 (BalanceConc!10293 Empty!5176))))

(declare-fun b!1464657 () Bool)

(assert (=> b!1464657 (= e!934300 (printTailRec!699 Lexer!2329 (tokens!2112 other!32) (+ 0 1) (++!4097 (BalanceConc!10293 Empty!5176) (charsOf!1538 (apply!3965 (tokens!2112 other!32) 0)))))))

(declare-fun lt!508799 () List!15254)

(assert (=> b!1464657 (= lt!508799 (list!6083 (tokens!2112 other!32)))))

(declare-fun lt!508797 () Unit!24509)

(assert (=> b!1464657 (= lt!508797 (lemmaDropApply!495 lt!508799 0))))

(assert (=> b!1464657 (= (head!3020 (drop!745 lt!508799 0)) (apply!3966 lt!508799 0))))

(declare-fun lt!508798 () Unit!24509)

(assert (=> b!1464657 (= lt!508798 lt!508797)))

(declare-fun lt!508800 () List!15254)

(assert (=> b!1464657 (= lt!508800 (list!6083 (tokens!2112 other!32)))))

(declare-fun lt!508795 () Unit!24509)

(assert (=> b!1464657 (= lt!508795 (lemmaDropTail!475 lt!508800 0))))

(assert (=> b!1464657 (= (tail!2177 (drop!745 lt!508800 0)) (drop!745 lt!508800 (+ 0 1)))))

(declare-fun lt!508796 () Unit!24509)

(assert (=> b!1464657 (= lt!508796 lt!508795)))

(assert (= (and d!429511 res!663009) b!1464655))

(assert (= (and d!429511 c!241495) b!1464656))

(assert (= (and d!429511 (not c!241495)) b!1464657))

(declare-fun m!1705643 () Bool)

(assert (=> d!429511 m!1705643))

(assert (=> d!429511 m!1703227))

(declare-fun m!1705645 () Bool)

(assert (=> d!429511 m!1705645))

(assert (=> d!429511 m!1705643))

(declare-fun m!1705647 () Bool)

(assert (=> d!429511 m!1705647))

(assert (=> d!429511 m!1703227))

(declare-fun m!1705649 () Bool)

(assert (=> d!429511 m!1705649))

(assert (=> b!1464655 m!1705649))

(assert (=> b!1464657 m!1701681))

(declare-fun m!1705651 () Bool)

(assert (=> b!1464657 m!1705651))

(declare-fun m!1705653 () Bool)

(assert (=> b!1464657 m!1705653))

(declare-fun m!1705655 () Bool)

(assert (=> b!1464657 m!1705655))

(declare-fun m!1705657 () Bool)

(assert (=> b!1464657 m!1705657))

(declare-fun m!1705659 () Bool)

(assert (=> b!1464657 m!1705659))

(declare-fun m!1705661 () Bool)

(assert (=> b!1464657 m!1705661))

(assert (=> b!1464657 m!1705653))

(declare-fun m!1705663 () Bool)

(assert (=> b!1464657 m!1705663))

(declare-fun m!1705665 () Bool)

(assert (=> b!1464657 m!1705665))

(assert (=> b!1464657 m!1705665))

(declare-fun m!1705667 () Bool)

(assert (=> b!1464657 m!1705667))

(assert (=> b!1464657 m!1705663))

(assert (=> b!1464657 m!1705657))

(declare-fun m!1705669 () Bool)

(assert (=> b!1464657 m!1705669))

(declare-fun m!1705671 () Bool)

(assert (=> b!1464657 m!1705671))

(assert (=> b!1464657 m!1705671))

(declare-fun m!1705673 () Bool)

(assert (=> b!1464657 m!1705673))

(assert (=> d!428939 d!429511))

(declare-fun d!429513 () Bool)

(declare-fun lt!508802 () Int)

(assert (=> d!429513 (>= lt!508802 0)))

(declare-fun e!934301 () Int)

(assert (=> d!429513 (= lt!508802 e!934301)))

(declare-fun c!241496 () Bool)

(assert (=> d!429513 (= c!241496 ((_ is Nil!15188) lt!507269))))

(assert (=> d!429513 (= (size!12424 lt!507269) lt!508802)))

(declare-fun b!1464658 () Bool)

(assert (=> b!1464658 (= e!934301 0)))

(declare-fun b!1464659 () Bool)

(assert (=> b!1464659 (= e!934301 (+ 1 (size!12424 (t!134647 lt!507269))))))

(assert (= (and d!429513 c!241496) b!1464658))

(assert (= (and d!429513 (not c!241496)) b!1464659))

(declare-fun m!1705675 () Bool)

(assert (=> b!1464659 m!1705675))

(assert (=> b!1463223 d!429513))

(declare-fun d!429515 () Bool)

(declare-fun lt!508803 () Int)

(assert (=> d!429515 (>= lt!508803 0)))

(declare-fun e!934302 () Int)

(assert (=> d!429515 (= lt!508803 e!934302)))

(declare-fun c!241497 () Bool)

(assert (=> d!429515 (= c!241497 ((_ is Nil!15188) lt!507007))))

(assert (=> d!429515 (= (size!12424 lt!507007) lt!508803)))

(declare-fun b!1464660 () Bool)

(assert (=> b!1464660 (= e!934302 0)))

(declare-fun b!1464661 () Bool)

(assert (=> b!1464661 (= e!934302 (+ 1 (size!12424 (t!134647 lt!507007))))))

(assert (= (and d!429515 c!241497) b!1464660))

(assert (= (and d!429515 (not c!241497)) b!1464661))

(declare-fun m!1705677 () Bool)

(assert (=> b!1464661 m!1705677))

(assert (=> b!1463223 d!429515))

(declare-fun d!429517 () Bool)

(declare-fun lt!508804 () Int)

(assert (=> d!429517 (>= lt!508804 0)))

(declare-fun e!934303 () Int)

(assert (=> d!429517 (= lt!508804 e!934303)))

(declare-fun c!241498 () Bool)

(assert (=> d!429517 (= c!241498 ((_ is Nil!15188) lt!506994))))

(assert (=> d!429517 (= (size!12424 lt!506994) lt!508804)))

(declare-fun b!1464662 () Bool)

(assert (=> b!1464662 (= e!934303 0)))

(declare-fun b!1464663 () Bool)

(assert (=> b!1464663 (= e!934303 (+ 1 (size!12424 (t!134647 lt!506994))))))

(assert (= (and d!429517 c!241498) b!1464662))

(assert (= (and d!429517 (not c!241498)) b!1464663))

(declare-fun m!1705679 () Bool)

(assert (=> b!1464663 m!1705679))

(assert (=> b!1463223 d!429517))

(declare-fun d!429519 () Bool)

(assert (=> d!429519 (= (inv!20294 (tag!2939 (h!20590 (rules!11706 thiss!10022)))) (= (mod (str.len (value!85884 (tag!2939 (h!20590 (rules!11706 thiss!10022))))) 2) 0))))

(assert (=> b!1463507 d!429519))

(declare-fun d!429521 () Bool)

(declare-fun res!663012 () Bool)

(declare-fun e!934306 () Bool)

(assert (=> d!429521 (=> (not res!663012) (not e!934306))))

(declare-fun semiInverseModEq!1009 (Int Int) Bool)

(assert (=> d!429521 (= res!663012 (semiInverseModEq!1009 (toChars!3845 (transformation!2675 (h!20590 (rules!11706 thiss!10022)))) (toValue!3986 (transformation!2675 (h!20590 (rules!11706 thiss!10022))))))))

(assert (=> d!429521 (= (inv!20308 (transformation!2675 (h!20590 (rules!11706 thiss!10022)))) e!934306)))

(declare-fun b!1464666 () Bool)

(declare-fun equivClasses!968 (Int Int) Bool)

(assert (=> b!1464666 (= e!934306 (equivClasses!968 (toChars!3845 (transformation!2675 (h!20590 (rules!11706 thiss!10022)))) (toValue!3986 (transformation!2675 (h!20590 (rules!11706 thiss!10022))))))))

(assert (= (and d!429521 res!663012) b!1464666))

(declare-fun m!1705681 () Bool)

(assert (=> d!429521 m!1705681))

(declare-fun m!1705683 () Bool)

(assert (=> b!1464666 m!1705683))

(assert (=> b!1463507 d!429521))

(assert (=> d!428873 d!429085))

(declare-fun d!429523 () Bool)

(declare-fun lt!508807 () Bool)

(assert (=> d!429523 (= lt!508807 (isEmpty!9545 (list!6087 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!506998)))))))))

(declare-fun isEmpty!9549 (Conc!5176) Bool)

(assert (=> d!429523 (= lt!508807 (isEmpty!9549 (c!241180 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!506998)))))))))

(assert (=> d!429523 (= (isEmpty!9544 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!506998))))) lt!508807)))

(declare-fun bs!344606 () Bool)

(assert (= bs!344606 d!429523))

(declare-fun m!1705685 () Bool)

(assert (=> bs!344606 m!1705685))

(assert (=> bs!344606 m!1705685))

(declare-fun m!1705687 () Bool)

(assert (=> bs!344606 m!1705687))

(declare-fun m!1705689 () Bool)

(assert (=> bs!344606 m!1705689))

(assert (=> b!1463353 d!429523))

(declare-fun lt!508808 () tuple2!14256)

(declare-fun e!934309 () Bool)

(declare-fun b!1464667 () Bool)

(assert (=> b!1464667 (= e!934309 (= (list!6087 (_2!8014 lt!508808)) (_2!8016 (lexList!717 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (print!1107 Lexer!2329 (singletonSeq!1281 lt!506998)))))))))

(declare-fun b!1464668 () Bool)

(declare-fun e!934307 () Bool)

(assert (=> b!1464668 (= e!934307 (not (isEmpty!9535 (_1!8014 lt!508808))))))

(declare-fun b!1464669 () Bool)

(declare-fun e!934308 () Bool)

(assert (=> b!1464669 (= e!934308 (= (_2!8014 lt!508808) (print!1107 Lexer!2329 (singletonSeq!1281 lt!506998))))))

(declare-fun b!1464670 () Bool)

(declare-fun res!663013 () Bool)

(assert (=> b!1464670 (=> (not res!663013) (not e!934309))))

(assert (=> b!1464670 (= res!663013 (= (list!6083 (_1!8014 lt!508808)) (_1!8016 (lexList!717 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (print!1107 Lexer!2329 (singletonSeq!1281 lt!506998)))))))))

(declare-fun d!429525 () Bool)

(assert (=> d!429525 e!934309))

(declare-fun res!663015 () Bool)

(assert (=> d!429525 (=> (not res!663015) (not e!934309))))

(assert (=> d!429525 (= res!663015 e!934308)))

(declare-fun c!241499 () Bool)

(assert (=> d!429525 (= c!241499 (> (size!12423 (_1!8014 lt!508808)) 0))))

(assert (=> d!429525 (= lt!508808 (lexTailRecV2!472 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!506998)) (BalanceConc!10293 Empty!5176) (print!1107 Lexer!2329 (singletonSeq!1281 lt!506998)) (BalanceConc!10295 Empty!5177)))))

(assert (=> d!429525 (= (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!506998))) lt!508808)))

(declare-fun b!1464671 () Bool)

(assert (=> b!1464671 (= e!934308 e!934307)))

(declare-fun res!663014 () Bool)

(assert (=> b!1464671 (= res!663014 (< (size!12425 (_2!8014 lt!508808)) (size!12425 (print!1107 Lexer!2329 (singletonSeq!1281 lt!506998)))))))

(assert (=> b!1464671 (=> (not res!663014) (not e!934307))))

(assert (= (and d!429525 c!241499) b!1464671))

(assert (= (and d!429525 (not c!241499)) b!1464669))

(assert (= (and b!1464671 res!663014) b!1464668))

(assert (= (and d!429525 res!663015) b!1464670))

(assert (= (and b!1464670 res!663013) b!1464667))

(declare-fun m!1705691 () Bool)

(assert (=> b!1464671 m!1705691))

(assert (=> b!1464671 m!1702353))

(declare-fun m!1705693 () Bool)

(assert (=> b!1464671 m!1705693))

(declare-fun m!1705695 () Bool)

(assert (=> b!1464670 m!1705695))

(assert (=> b!1464670 m!1702353))

(declare-fun m!1705697 () Bool)

(assert (=> b!1464670 m!1705697))

(assert (=> b!1464670 m!1705697))

(declare-fun m!1705699 () Bool)

(assert (=> b!1464670 m!1705699))

(declare-fun m!1705701 () Bool)

(assert (=> b!1464668 m!1705701))

(declare-fun m!1705703 () Bool)

(assert (=> b!1464667 m!1705703))

(assert (=> b!1464667 m!1702353))

(assert (=> b!1464667 m!1705697))

(assert (=> b!1464667 m!1705697))

(assert (=> b!1464667 m!1705699))

(declare-fun m!1705705 () Bool)

(assert (=> d!429525 m!1705705))

(assert (=> d!429525 m!1702353))

(assert (=> d!429525 m!1702353))

(declare-fun m!1705707 () Bool)

(assert (=> d!429525 m!1705707))

(assert (=> b!1463353 d!429525))

(declare-fun d!429527 () Bool)

(declare-fun lt!508809 () BalanceConc!10292)

(assert (=> d!429527 (= (list!6087 lt!508809) (printList!727 Lexer!2329 (list!6083 (singletonSeq!1281 lt!506998))))))

(assert (=> d!429527 (= lt!508809 (printTailRec!699 Lexer!2329 (singletonSeq!1281 lt!506998) 0 (BalanceConc!10293 Empty!5176)))))

(assert (=> d!429527 (= (print!1107 Lexer!2329 (singletonSeq!1281 lt!506998)) lt!508809)))

(declare-fun bs!344607 () Bool)

(assert (= bs!344607 d!429527))

(declare-fun m!1705709 () Bool)

(assert (=> bs!344607 m!1705709))

(assert (=> bs!344607 m!1702351))

(assert (=> bs!344607 m!1702359))

(assert (=> bs!344607 m!1702359))

(declare-fun m!1705711 () Bool)

(assert (=> bs!344607 m!1705711))

(assert (=> bs!344607 m!1702351))

(declare-fun m!1705713 () Bool)

(assert (=> bs!344607 m!1705713))

(assert (=> b!1463353 d!429527))

(declare-fun d!429529 () Bool)

(declare-fun e!934310 () Bool)

(assert (=> d!429529 e!934310))

(declare-fun res!663016 () Bool)

(assert (=> d!429529 (=> (not res!663016) (not e!934310))))

(declare-fun lt!508810 () BalanceConc!10294)

(assert (=> d!429529 (= res!663016 (= (list!6083 lt!508810) (Cons!15188 lt!506998 Nil!15188)))))

(assert (=> d!429529 (= lt!508810 (singleton!539 lt!506998))))

(assert (=> d!429529 (= (singletonSeq!1281 lt!506998) lt!508810)))

(declare-fun b!1464672 () Bool)

(assert (=> b!1464672 (= e!934310 (isBalanced!1555 (c!241182 lt!508810)))))

(assert (= (and d!429529 res!663016) b!1464672))

(declare-fun m!1705715 () Bool)

(assert (=> d!429529 m!1705715))

(declare-fun m!1705717 () Bool)

(assert (=> d!429529 m!1705717))

(declare-fun m!1705719 () Bool)

(assert (=> b!1464672 m!1705719))

(assert (=> b!1463353 d!429529))

(declare-fun d!429531 () Bool)

(assert (=> d!429531 (= (inv!20294 (tag!2939 (h!20590 (rules!11706 other!32)))) (= (mod (str.len (value!85884 (tag!2939 (h!20590 (rules!11706 other!32))))) 2) 0))))

(assert (=> b!1463501 d!429531))

(declare-fun d!429533 () Bool)

(declare-fun res!663017 () Bool)

(declare-fun e!934311 () Bool)

(assert (=> d!429533 (=> (not res!663017) (not e!934311))))

(assert (=> d!429533 (= res!663017 (semiInverseModEq!1009 (toChars!3845 (transformation!2675 (h!20590 (rules!11706 other!32)))) (toValue!3986 (transformation!2675 (h!20590 (rules!11706 other!32))))))))

(assert (=> d!429533 (= (inv!20308 (transformation!2675 (h!20590 (rules!11706 other!32)))) e!934311)))

(declare-fun b!1464673 () Bool)

(assert (=> b!1464673 (= e!934311 (equivClasses!968 (toChars!3845 (transformation!2675 (h!20590 (rules!11706 other!32)))) (toValue!3986 (transformation!2675 (h!20590 (rules!11706 other!32))))))))

(assert (= (and d!429533 res!663017) b!1464673))

(declare-fun m!1705721 () Bool)

(assert (=> d!429533 m!1705721))

(declare-fun m!1705723 () Bool)

(assert (=> b!1464673 m!1705723))

(assert (=> b!1463501 d!429533))

(assert (=> b!1463181 d!429281))

(assert (=> b!1463104 d!428817))

(declare-fun d!429535 () Bool)

(declare-fun res!663022 () Bool)

(declare-fun e!934314 () Bool)

(assert (=> d!429535 (=> (not res!663022) (not e!934314))))

(assert (=> d!429535 (= res!663022 (<= (size!12424 (list!6090 (xs!7928 (c!241182 (tokens!2112 thiss!10022))))) 512))))

(assert (=> d!429535 (= (inv!20302 (c!241182 (tokens!2112 thiss!10022))) e!934314)))

(declare-fun b!1464678 () Bool)

(declare-fun res!663023 () Bool)

(assert (=> b!1464678 (=> (not res!663023) (not e!934314))))

(assert (=> b!1464678 (= res!663023 (= (csize!10585 (c!241182 (tokens!2112 thiss!10022))) (size!12424 (list!6090 (xs!7928 (c!241182 (tokens!2112 thiss!10022)))))))))

(declare-fun b!1464679 () Bool)

(assert (=> b!1464679 (= e!934314 (and (> (csize!10585 (c!241182 (tokens!2112 thiss!10022))) 0) (<= (csize!10585 (c!241182 (tokens!2112 thiss!10022))) 512)))))

(assert (= (and d!429535 res!663022) b!1464678))

(assert (= (and b!1464678 res!663023) b!1464679))

(assert (=> d!429535 m!1704705))

(assert (=> d!429535 m!1704705))

(declare-fun m!1705725 () Bool)

(assert (=> d!429535 m!1705725))

(assert (=> b!1464678 m!1704705))

(assert (=> b!1464678 m!1704705))

(assert (=> b!1464678 m!1705725))

(assert (=> b!1463154 d!429535))

(declare-fun b!1464680 () Bool)

(declare-fun res!663026 () Bool)

(declare-fun e!934316 () Bool)

(assert (=> b!1464680 (=> (not res!663026) (not e!934316))))

(assert (=> b!1464680 (= res!663026 (isBalanced!1555 (left!12905 (c!241182 (tokens!2112 other!32)))))))

(declare-fun b!1464681 () Bool)

(declare-fun e!934315 () Bool)

(assert (=> b!1464681 (= e!934315 e!934316)))

(declare-fun res!663028 () Bool)

(assert (=> b!1464681 (=> (not res!663028) (not e!934316))))

(assert (=> b!1464681 (= res!663028 (<= (- 1) (- (height!778 (left!12905 (c!241182 (tokens!2112 other!32)))) (height!778 (right!13235 (c!241182 (tokens!2112 other!32)))))))))

(declare-fun b!1464682 () Bool)

(declare-fun res!663024 () Bool)

(assert (=> b!1464682 (=> (not res!663024) (not e!934316))))

(assert (=> b!1464682 (= res!663024 (<= (- (height!778 (left!12905 (c!241182 (tokens!2112 other!32)))) (height!778 (right!13235 (c!241182 (tokens!2112 other!32))))) 1))))

(declare-fun b!1464683 () Bool)

(assert (=> b!1464683 (= e!934316 (not (isEmpty!9543 (right!13235 (c!241182 (tokens!2112 other!32))))))))

(declare-fun b!1464684 () Bool)

(declare-fun res!663029 () Bool)

(assert (=> b!1464684 (=> (not res!663029) (not e!934316))))

(assert (=> b!1464684 (= res!663029 (isBalanced!1555 (right!13235 (c!241182 (tokens!2112 other!32)))))))

(declare-fun b!1464685 () Bool)

(declare-fun res!663025 () Bool)

(assert (=> b!1464685 (=> (not res!663025) (not e!934316))))

(assert (=> b!1464685 (= res!663025 (not (isEmpty!9543 (left!12905 (c!241182 (tokens!2112 other!32))))))))

(declare-fun d!429537 () Bool)

(declare-fun res!663027 () Bool)

(assert (=> d!429537 (=> res!663027 e!934315)))

(assert (=> d!429537 (= res!663027 (not ((_ is Node!5177) (c!241182 (tokens!2112 other!32)))))))

(assert (=> d!429537 (= (isBalanced!1555 (c!241182 (tokens!2112 other!32))) e!934315)))

(assert (= (and d!429537 (not res!663027)) b!1464681))

(assert (= (and b!1464681 res!663028) b!1464682))

(assert (= (and b!1464682 res!663024) b!1464680))

(assert (= (and b!1464680 res!663026) b!1464684))

(assert (= (and b!1464684 res!663029) b!1464685))

(assert (= (and b!1464685 res!663025) b!1464683))

(declare-fun m!1705727 () Bool)

(assert (=> b!1464685 m!1705727))

(declare-fun m!1705729 () Bool)

(assert (=> b!1464683 m!1705729))

(declare-fun m!1705731 () Bool)

(assert (=> b!1464680 m!1705731))

(assert (=> b!1464682 m!1704559))

(assert (=> b!1464682 m!1704561))

(assert (=> b!1464681 m!1704559))

(assert (=> b!1464681 m!1704561))

(declare-fun m!1705733 () Bool)

(assert (=> b!1464684 m!1705733))

(assert (=> d!428959 d!429537))

(declare-fun bs!344608 () Bool)

(declare-fun d!429539 () Bool)

(assert (= bs!344608 (and d!429539 d!428849)))

(declare-fun lambda!63353 () Int)

(assert (=> bs!344608 (= (= (rules!11706 other!32) (rules!11706 thiss!10022)) (= lambda!63353 lambda!63326))))

(declare-fun bs!344609 () Bool)

(assert (= bs!344609 (and d!429539 d!429307)))

(assert (=> bs!344609 (= (= (rules!11706 other!32) (rules!11706 lt!506997)) (= lambda!63353 lambda!63344))))

(declare-fun bs!344610 () Bool)

(assert (= bs!344610 (and d!429539 d!429273)))

(assert (=> bs!344610 (= (= (rules!11706 other!32) (rules!11706 thiss!10022)) (= lambda!63353 lambda!63332))))

(declare-fun bs!344611 () Bool)

(assert (= bs!344611 (and d!429539 d!429057)))

(assert (=> bs!344611 (= (= (rules!11706 other!32) (rules!11706 thiss!10022)) (= lambda!63353 lambda!63331))))

(declare-fun bs!344612 () Bool)

(assert (= bs!344612 (and d!429539 d!429489)))

(assert (=> bs!344612 (= (= (rules!11706 other!32) (rules!11706 thiss!10022)) (= lambda!63353 lambda!63352))))

(declare-fun bs!344613 () Bool)

(assert (= bs!344613 (and d!429539 d!429055)))

(assert (=> bs!344613 (= (= (rules!11706 other!32) (rules!11706 thiss!10022)) (= lambda!63353 lambda!63330))))

(declare-fun bs!344614 () Bool)

(assert (= bs!344614 (and d!429539 d!429295)))

(assert (=> bs!344614 (= (= (rules!11706 other!32) (rules!11706 thiss!10022)) (= lambda!63353 lambda!63343))))

(declare-fun b!1464689 () Bool)

(declare-fun e!934320 () Bool)

(assert (=> b!1464689 (= e!934320 true)))

(declare-fun b!1464688 () Bool)

(declare-fun e!934319 () Bool)

(assert (=> b!1464688 (= e!934319 e!934320)))

(declare-fun b!1464687 () Bool)

(declare-fun e!934318 () Bool)

(assert (=> b!1464687 (= e!934318 e!934319)))

(assert (=> d!429539 e!934318))

(assert (= b!1464688 b!1464689))

(assert (= b!1464687 b!1464688))

(assert (= (and d!429539 ((_ is Cons!15189) (rules!11706 other!32))) b!1464687))

(assert (=> b!1464689 (< (dynLambda!6933 order!9151 (toValue!3986 (transformation!2675 (h!20590 (rules!11706 other!32))))) (dynLambda!6934 order!9153 lambda!63353))))

(assert (=> b!1464689 (< (dynLambda!6935 order!9155 (toChars!3845 (transformation!2675 (h!20590 (rules!11706 other!32))))) (dynLambda!6934 order!9153 lambda!63353))))

(assert (=> d!429539 true))

(declare-fun e!934317 () Bool)

(assert (=> d!429539 e!934317))

(declare-fun res!663030 () Bool)

(assert (=> d!429539 (=> (not res!663030) (not e!934317))))

(declare-fun lt!508811 () Bool)

(assert (=> d!429539 (= res!663030 (= lt!508811 (forall!3744 (list!6083 (tokens!2112 other!32)) lambda!63353)))))

(assert (=> d!429539 (= lt!508811 (forall!3746 (tokens!2112 other!32) lambda!63353))))

(assert (=> d!429539 (not (isEmpty!9541 (rules!11706 other!32)))))

(assert (=> d!429539 (= (rulesProduceEachTokenIndividually!881 Lexer!2329 (rules!11706 other!32) (tokens!2112 other!32)) lt!508811)))

(declare-fun b!1464686 () Bool)

(assert (=> b!1464686 (= e!934317 (= lt!508811 (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 other!32) (list!6083 (tokens!2112 other!32)))))))

(assert (= (and d!429539 res!663030) b!1464686))

(assert (=> d!429539 m!1701681))

(assert (=> d!429539 m!1701681))

(declare-fun m!1705735 () Bool)

(assert (=> d!429539 m!1705735))

(declare-fun m!1705737 () Bool)

(assert (=> d!429539 m!1705737))

(assert (=> d!429539 m!1701765))

(assert (=> b!1464686 m!1701681))

(assert (=> b!1464686 m!1701681))

(declare-fun m!1705739 () Bool)

(assert (=> b!1464686 m!1705739))

(assert (=> b!1463323 d!429539))

(declare-fun b!1464693 () Bool)

(declare-fun e!934322 () Bool)

(assert (=> b!1464693 (= e!934322 (subseq!368 lt!507186 (t!134647 lt!507165)))))

(declare-fun b!1464690 () Bool)

(declare-fun e!934321 () Bool)

(declare-fun e!934323 () Bool)

(assert (=> b!1464690 (= e!934321 e!934323)))

(declare-fun res!663032 () Bool)

(assert (=> b!1464690 (=> (not res!663032) (not e!934323))))

(assert (=> b!1464690 (= res!663032 ((_ is Cons!15188) lt!507165))))

(declare-fun d!429541 () Bool)

(declare-fun res!663033 () Bool)

(assert (=> d!429541 (=> res!663033 e!934321)))

(assert (=> d!429541 (= res!663033 ((_ is Nil!15188) lt!507186))))

(assert (=> d!429541 (= (subseq!368 lt!507186 lt!507165) e!934321)))

(declare-fun b!1464692 () Bool)

(declare-fun e!934324 () Bool)

(assert (=> b!1464692 (= e!934324 (subseq!368 (t!134647 lt!507186) (t!134647 lt!507165)))))

(declare-fun b!1464691 () Bool)

(assert (=> b!1464691 (= e!934323 e!934322)))

(declare-fun res!663034 () Bool)

(assert (=> b!1464691 (=> res!663034 e!934322)))

(assert (=> b!1464691 (= res!663034 e!934324)))

(declare-fun res!663031 () Bool)

(assert (=> b!1464691 (=> (not res!663031) (not e!934324))))

(assert (=> b!1464691 (= res!663031 (= (h!20589 lt!507186) (h!20589 lt!507165)))))

(assert (= (and d!429541 (not res!663033)) b!1464690))

(assert (= (and b!1464690 res!663032) b!1464691))

(assert (= (and b!1464691 res!663031) b!1464692))

(assert (= (and b!1464691 (not res!663034)) b!1464693))

(declare-fun m!1705741 () Bool)

(assert (=> b!1464693 m!1705741))

(declare-fun m!1705743 () Bool)

(assert (=> b!1464692 m!1705743))

(assert (=> b!1463185 d!429541))

(declare-fun b!1464694 () Bool)

(declare-fun lt!508812 () tuple2!14256)

(declare-fun e!934327 () Bool)

(assert (=> b!1464694 (= e!934327 (= (list!6087 (_2!8014 lt!508812)) (_2!8016 (lexList!717 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (print!1107 Lexer!2329 (seqFromList!1716 lt!507007)))))))))

(declare-fun b!1464695 () Bool)

(declare-fun e!934325 () Bool)

(assert (=> b!1464695 (= e!934325 (not (isEmpty!9535 (_1!8014 lt!508812))))))

(declare-fun b!1464696 () Bool)

(declare-fun e!934326 () Bool)

(assert (=> b!1464696 (= e!934326 (= (_2!8014 lt!508812) (print!1107 Lexer!2329 (seqFromList!1716 lt!507007))))))

(declare-fun b!1464697 () Bool)

(declare-fun res!663035 () Bool)

(assert (=> b!1464697 (=> (not res!663035) (not e!934327))))

(assert (=> b!1464697 (= res!663035 (= (list!6083 (_1!8014 lt!508812)) (_1!8016 (lexList!717 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (print!1107 Lexer!2329 (seqFromList!1716 lt!507007)))))))))

(declare-fun d!429543 () Bool)

(assert (=> d!429543 e!934327))

(declare-fun res!663037 () Bool)

(assert (=> d!429543 (=> (not res!663037) (not e!934327))))

(assert (=> d!429543 (= res!663037 e!934326)))

(declare-fun c!241500 () Bool)

(assert (=> d!429543 (= c!241500 (> (size!12423 (_1!8014 lt!508812)) 0))))

(assert (=> d!429543 (= lt!508812 (lexTailRecV2!472 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (seqFromList!1716 lt!507007)) (BalanceConc!10293 Empty!5176) (print!1107 Lexer!2329 (seqFromList!1716 lt!507007)) (BalanceConc!10295 Empty!5177)))))

(assert (=> d!429543 (= (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (seqFromList!1716 lt!507007))) lt!508812)))

(declare-fun b!1464698 () Bool)

(assert (=> b!1464698 (= e!934326 e!934325)))

(declare-fun res!663036 () Bool)

(assert (=> b!1464698 (= res!663036 (< (size!12425 (_2!8014 lt!508812)) (size!12425 (print!1107 Lexer!2329 (seqFromList!1716 lt!507007)))))))

(assert (=> b!1464698 (=> (not res!663036) (not e!934325))))

(assert (= (and d!429543 c!241500) b!1464698))

(assert (= (and d!429543 (not c!241500)) b!1464696))

(assert (= (and b!1464698 res!663036) b!1464695))

(assert (= (and d!429543 res!663037) b!1464697))

(assert (= (and b!1464697 res!663035) b!1464694))

(declare-fun m!1705745 () Bool)

(assert (=> b!1464698 m!1705745))

(assert (=> b!1464698 m!1702737))

(declare-fun m!1705747 () Bool)

(assert (=> b!1464698 m!1705747))

(declare-fun m!1705749 () Bool)

(assert (=> b!1464697 m!1705749))

(assert (=> b!1464697 m!1702737))

(declare-fun m!1705751 () Bool)

(assert (=> b!1464697 m!1705751))

(assert (=> b!1464697 m!1705751))

(declare-fun m!1705753 () Bool)

(assert (=> b!1464697 m!1705753))

(declare-fun m!1705755 () Bool)

(assert (=> b!1464695 m!1705755))

(declare-fun m!1705757 () Bool)

(assert (=> b!1464694 m!1705757))

(assert (=> b!1464694 m!1702737))

(assert (=> b!1464694 m!1705751))

(assert (=> b!1464694 m!1705751))

(assert (=> b!1464694 m!1705753))

(declare-fun m!1705759 () Bool)

(assert (=> d!429543 m!1705759))

(assert (=> d!429543 m!1702737))

(assert (=> d!429543 m!1702737))

(declare-fun m!1705761 () Bool)

(assert (=> d!429543 m!1705761))

(assert (=> d!428935 d!429543))

(assert (=> d!428935 d!429091))

(declare-fun d!429545 () Bool)

(assert (=> d!429545 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (seqFromList!1716 lt!507007))))) (list!6086 (c!241182 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (seqFromList!1716 lt!507007)))))))))

(declare-fun bs!344615 () Bool)

(assert (= bs!344615 d!429545))

(declare-fun m!1705763 () Bool)

(assert (=> bs!344615 m!1705763))

(assert (=> d!428935 d!429545))

(declare-fun d!429547 () Bool)

(declare-fun lt!508813 () BalanceConc!10292)

(assert (=> d!429547 (= (list!6087 lt!508813) (printList!727 Lexer!2329 (list!6083 (seqFromList!1716 lt!507007))))))

(assert (=> d!429547 (= lt!508813 (printTailRec!699 Lexer!2329 (seqFromList!1716 lt!507007) 0 (BalanceConc!10293 Empty!5176)))))

(assert (=> d!429547 (= (print!1107 Lexer!2329 (seqFromList!1716 lt!507007)) lt!508813)))

(declare-fun bs!344616 () Bool)

(assert (= bs!344616 d!429547))

(declare-fun m!1705765 () Bool)

(assert (=> bs!344616 m!1705765))

(assert (=> bs!344616 m!1702733))

(declare-fun m!1705767 () Bool)

(assert (=> bs!344616 m!1705767))

(assert (=> bs!344616 m!1705767))

(declare-fun m!1705769 () Bool)

(assert (=> bs!344616 m!1705769))

(assert (=> bs!344616 m!1702733))

(declare-fun m!1705771 () Bool)

(assert (=> bs!344616 m!1705771))

(assert (=> d!428935 d!429547))

(declare-fun d!429549 () Bool)

(assert (=> d!429549 (= (seqFromList!1716 lt!507007) (fromListB!738 lt!507007))))

(declare-fun bs!344617 () Bool)

(assert (= bs!344617 d!429549))

(declare-fun m!1705773 () Bool)

(assert (=> bs!344617 m!1705773))

(assert (=> d!428935 d!429549))

(declare-fun d!429551 () Bool)

(assert (=> d!429551 (= (list!6087 lt!507610) (list!6088 (c!241180 lt!507610)))))

(declare-fun bs!344618 () Bool)

(assert (= bs!344618 d!429551))

(declare-fun m!1705775 () Bool)

(assert (=> bs!344618 m!1705775))

(assert (=> d!428951 d!429551))

(declare-fun d!429553 () Bool)

(declare-fun c!241501 () Bool)

(assert (=> d!429553 (= c!241501 ((_ is Cons!15188) (list!6083 (tokens!2112 thiss!10022))))))

(declare-fun e!934328 () List!15252)

(assert (=> d!429553 (= (printList!727 Lexer!2329 (list!6083 (tokens!2112 thiss!10022))) e!934328)))

(declare-fun b!1464699 () Bool)

(assert (=> b!1464699 (= e!934328 (++!4093 (list!6087 (charsOf!1538 (h!20589 (list!6083 (tokens!2112 thiss!10022))))) (printList!727 Lexer!2329 (t!134647 (list!6083 (tokens!2112 thiss!10022))))))))

(declare-fun b!1464700 () Bool)

(assert (=> b!1464700 (= e!934328 Nil!15186)))

(assert (= (and d!429553 c!241501) b!1464699))

(assert (= (and d!429553 (not c!241501)) b!1464700))

(assert (=> b!1464699 m!1704615))

(assert (=> b!1464699 m!1704615))

(assert (=> b!1464699 m!1704581))

(declare-fun m!1705777 () Bool)

(assert (=> b!1464699 m!1705777))

(assert (=> b!1464699 m!1704581))

(assert (=> b!1464699 m!1705777))

(declare-fun m!1705779 () Bool)

(assert (=> b!1464699 m!1705779))

(assert (=> d!428951 d!429553))

(assert (=> d!428951 d!428891))

(declare-fun d!429555 () Bool)

(declare-fun lt!508820 () BalanceConc!10292)

(assert (=> d!429555 (= (list!6087 lt!508820) (printListTailRec!292 Lexer!2329 (dropList!483 (tokens!2112 thiss!10022) 0) (list!6087 (BalanceConc!10293 Empty!5176))))))

(declare-fun e!934330 () BalanceConc!10292)

(assert (=> d!429555 (= lt!508820 e!934330)))

(declare-fun c!241502 () Bool)

(assert (=> d!429555 (= c!241502 (>= 0 (size!12423 (tokens!2112 thiss!10022))))))

(declare-fun e!934329 () Bool)

(assert (=> d!429555 e!934329))

(declare-fun res!663038 () Bool)

(assert (=> d!429555 (=> (not res!663038) (not e!934329))))

(assert (=> d!429555 (= res!663038 (>= 0 0))))

(assert (=> d!429555 (= (printTailRec!699 Lexer!2329 (tokens!2112 thiss!10022) 0 (BalanceConc!10293 Empty!5176)) lt!508820)))

(declare-fun b!1464701 () Bool)

(assert (=> b!1464701 (= e!934329 (<= 0 (size!12423 (tokens!2112 thiss!10022))))))

(declare-fun b!1464702 () Bool)

(assert (=> b!1464702 (= e!934330 (BalanceConc!10293 Empty!5176))))

(declare-fun b!1464703 () Bool)

(assert (=> b!1464703 (= e!934330 (printTailRec!699 Lexer!2329 (tokens!2112 thiss!10022) (+ 0 1) (++!4097 (BalanceConc!10293 Empty!5176) (charsOf!1538 (apply!3965 (tokens!2112 thiss!10022) 0)))))))

(declare-fun lt!508818 () List!15254)

(assert (=> b!1464703 (= lt!508818 (list!6083 (tokens!2112 thiss!10022)))))

(declare-fun lt!508816 () Unit!24509)

(assert (=> b!1464703 (= lt!508816 (lemmaDropApply!495 lt!508818 0))))

(assert (=> b!1464703 (= (head!3020 (drop!745 lt!508818 0)) (apply!3966 lt!508818 0))))

(declare-fun lt!508817 () Unit!24509)

(assert (=> b!1464703 (= lt!508817 lt!508816)))

(declare-fun lt!508819 () List!15254)

(assert (=> b!1464703 (= lt!508819 (list!6083 (tokens!2112 thiss!10022)))))

(declare-fun lt!508814 () Unit!24509)

(assert (=> b!1464703 (= lt!508814 (lemmaDropTail!475 lt!508819 0))))

(assert (=> b!1464703 (= (tail!2177 (drop!745 lt!508819 0)) (drop!745 lt!508819 (+ 0 1)))))

(declare-fun lt!508815 () Unit!24509)

(assert (=> b!1464703 (= lt!508815 lt!508814)))

(assert (= (and d!429555 res!663038) b!1464701))

(assert (= (and d!429555 c!241502) b!1464702))

(assert (= (and d!429555 (not c!241502)) b!1464703))

(declare-fun m!1705781 () Bool)

(assert (=> d!429555 m!1705781))

(assert (=> d!429555 m!1703227))

(declare-fun m!1705783 () Bool)

(assert (=> d!429555 m!1705783))

(assert (=> d!429555 m!1705781))

(declare-fun m!1705785 () Bool)

(assert (=> d!429555 m!1705785))

(assert (=> d!429555 m!1703227))

(declare-fun m!1705787 () Bool)

(assert (=> d!429555 m!1705787))

(assert (=> b!1464701 m!1705787))

(assert (=> b!1464703 m!1701677))

(declare-fun m!1705789 () Bool)

(assert (=> b!1464703 m!1705789))

(declare-fun m!1705791 () Bool)

(assert (=> b!1464703 m!1705791))

(declare-fun m!1705793 () Bool)

(assert (=> b!1464703 m!1705793))

(declare-fun m!1705795 () Bool)

(assert (=> b!1464703 m!1705795))

(declare-fun m!1705797 () Bool)

(assert (=> b!1464703 m!1705797))

(declare-fun m!1705799 () Bool)

(assert (=> b!1464703 m!1705799))

(assert (=> b!1464703 m!1705791))

(declare-fun m!1705801 () Bool)

(assert (=> b!1464703 m!1705801))

(declare-fun m!1705803 () Bool)

(assert (=> b!1464703 m!1705803))

(assert (=> b!1464703 m!1705803))

(declare-fun m!1705805 () Bool)

(assert (=> b!1464703 m!1705805))

(assert (=> b!1464703 m!1705801))

(assert (=> b!1464703 m!1705795))

(declare-fun m!1705807 () Bool)

(assert (=> b!1464703 m!1705807))

(declare-fun m!1705809 () Bool)

(assert (=> b!1464703 m!1705809))

(assert (=> b!1464703 m!1705809))

(declare-fun m!1705811 () Bool)

(assert (=> b!1464703 m!1705811))

(assert (=> d!428951 d!429555))

(declare-fun b!1464707 () Bool)

(declare-fun e!934332 () List!15254)

(assert (=> b!1464707 (= e!934332 (++!4092 (list!6086 (left!12905 (c!241182 lt!507005))) (list!6086 (right!13235 (c!241182 lt!507005)))))))

(declare-fun b!1464705 () Bool)

(declare-fun e!934331 () List!15254)

(assert (=> b!1464705 (= e!934331 e!934332)))

(declare-fun c!241504 () Bool)

(assert (=> b!1464705 (= c!241504 ((_ is Leaf!7716) (c!241182 lt!507005)))))

(declare-fun d!429557 () Bool)

(declare-fun c!241503 () Bool)

(assert (=> d!429557 (= c!241503 ((_ is Empty!5177) (c!241182 lt!507005)))))

(assert (=> d!429557 (= (list!6086 (c!241182 lt!507005)) e!934331)))

(declare-fun b!1464706 () Bool)

(assert (=> b!1464706 (= e!934332 (list!6090 (xs!7928 (c!241182 lt!507005))))))

(declare-fun b!1464704 () Bool)

(assert (=> b!1464704 (= e!934331 Nil!15188)))

(assert (= (and d!429557 c!241503) b!1464704))

(assert (= (and d!429557 (not c!241503)) b!1464705))

(assert (= (and b!1464705 c!241504) b!1464706))

(assert (= (and b!1464705 (not c!241504)) b!1464707))

(declare-fun m!1705813 () Bool)

(assert (=> b!1464707 m!1705813))

(declare-fun m!1705815 () Bool)

(assert (=> b!1464707 m!1705815))

(assert (=> b!1464707 m!1705813))

(assert (=> b!1464707 m!1705815))

(declare-fun m!1705817 () Bool)

(assert (=> b!1464707 m!1705817))

(declare-fun m!1705819 () Bool)

(assert (=> b!1464706 m!1705819))

(assert (=> d!428943 d!429557))

(assert (=> b!1463210 d!429471))

(assert (=> b!1463210 d!429475))

(assert (=> b!1463210 d!429477))

(assert (=> b!1463210 d!429479))

(assert (=> b!1463210 d!429481))

(assert (=> b!1463145 d!429321))

(declare-fun d!429559 () Bool)

(declare-fun lt!508821 () Bool)

(assert (=> d!429559 (= lt!508821 (isEmpty!9545 (list!6087 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 other!32) (print!1107 Lexer!2329 (seqFromList!1716 lt!506994)))))))))

(assert (=> d!429559 (= lt!508821 (isEmpty!9549 (c!241180 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 other!32) (print!1107 Lexer!2329 (seqFromList!1716 lt!506994)))))))))

(assert (=> d!429559 (= (isEmpty!9544 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 other!32) (print!1107 Lexer!2329 (seqFromList!1716 lt!506994))))) lt!508821)))

(declare-fun bs!344619 () Bool)

(assert (= bs!344619 d!429559))

(declare-fun m!1705821 () Bool)

(assert (=> bs!344619 m!1705821))

(assert (=> bs!344619 m!1705821))

(declare-fun m!1705823 () Bool)

(assert (=> bs!344619 m!1705823))

(declare-fun m!1705825 () Bool)

(assert (=> bs!344619 m!1705825))

(assert (=> b!1463441 d!429559))

(declare-fun lt!508822 () tuple2!14256)

(declare-fun e!934335 () Bool)

(declare-fun b!1464708 () Bool)

(assert (=> b!1464708 (= e!934335 (= (list!6087 (_2!8014 lt!508822)) (_2!8016 (lexList!717 Lexer!2329 (rules!11706 other!32) (list!6087 (print!1107 Lexer!2329 (seqFromList!1716 lt!506994)))))))))

(declare-fun b!1464709 () Bool)

(declare-fun e!934333 () Bool)

(assert (=> b!1464709 (= e!934333 (not (isEmpty!9535 (_1!8014 lt!508822))))))

(declare-fun b!1464710 () Bool)

(declare-fun e!934334 () Bool)

(assert (=> b!1464710 (= e!934334 (= (_2!8014 lt!508822) (print!1107 Lexer!2329 (seqFromList!1716 lt!506994))))))

(declare-fun b!1464711 () Bool)

(declare-fun res!663039 () Bool)

(assert (=> b!1464711 (=> (not res!663039) (not e!934335))))

(assert (=> b!1464711 (= res!663039 (= (list!6083 (_1!8014 lt!508822)) (_1!8016 (lexList!717 Lexer!2329 (rules!11706 other!32) (list!6087 (print!1107 Lexer!2329 (seqFromList!1716 lt!506994)))))))))

(declare-fun d!429561 () Bool)

(assert (=> d!429561 e!934335))

(declare-fun res!663041 () Bool)

(assert (=> d!429561 (=> (not res!663041) (not e!934335))))

(assert (=> d!429561 (= res!663041 e!934334)))

(declare-fun c!241505 () Bool)

(assert (=> d!429561 (= c!241505 (> (size!12423 (_1!8014 lt!508822)) 0))))

(assert (=> d!429561 (= lt!508822 (lexTailRecV2!472 Lexer!2329 (rules!11706 other!32) (print!1107 Lexer!2329 (seqFromList!1716 lt!506994)) (BalanceConc!10293 Empty!5176) (print!1107 Lexer!2329 (seqFromList!1716 lt!506994)) (BalanceConc!10295 Empty!5177)))))

(assert (=> d!429561 (= (lex!1076 Lexer!2329 (rules!11706 other!32) (print!1107 Lexer!2329 (seqFromList!1716 lt!506994))) lt!508822)))

(declare-fun b!1464712 () Bool)

(assert (=> b!1464712 (= e!934334 e!934333)))

(declare-fun res!663040 () Bool)

(assert (=> b!1464712 (= res!663040 (< (size!12425 (_2!8014 lt!508822)) (size!12425 (print!1107 Lexer!2329 (seqFromList!1716 lt!506994)))))))

(assert (=> b!1464712 (=> (not res!663040) (not e!934333))))

(assert (= (and d!429561 c!241505) b!1464712))

(assert (= (and d!429561 (not c!241505)) b!1464710))

(assert (= (and b!1464712 res!663040) b!1464709))

(assert (= (and d!429561 res!663041) b!1464711))

(assert (= (and b!1464711 res!663039) b!1464708))

(declare-fun m!1705827 () Bool)

(assert (=> b!1464712 m!1705827))

(assert (=> b!1464712 m!1702641))

(declare-fun m!1705829 () Bool)

(assert (=> b!1464712 m!1705829))

(declare-fun m!1705831 () Bool)

(assert (=> b!1464711 m!1705831))

(assert (=> b!1464711 m!1702641))

(declare-fun m!1705833 () Bool)

(assert (=> b!1464711 m!1705833))

(assert (=> b!1464711 m!1705833))

(declare-fun m!1705835 () Bool)

(assert (=> b!1464711 m!1705835))

(declare-fun m!1705837 () Bool)

(assert (=> b!1464709 m!1705837))

(declare-fun m!1705839 () Bool)

(assert (=> b!1464708 m!1705839))

(assert (=> b!1464708 m!1702641))

(assert (=> b!1464708 m!1705833))

(assert (=> b!1464708 m!1705833))

(assert (=> b!1464708 m!1705835))

(declare-fun m!1705841 () Bool)

(assert (=> d!429561 m!1705841))

(assert (=> d!429561 m!1702641))

(assert (=> d!429561 m!1702641))

(declare-fun m!1705843 () Bool)

(assert (=> d!429561 m!1705843))

(assert (=> b!1463441 d!429561))

(declare-fun d!429563 () Bool)

(declare-fun lt!508823 () BalanceConc!10292)

(assert (=> d!429563 (= (list!6087 lt!508823) (printList!727 Lexer!2329 (list!6083 (seqFromList!1716 lt!506994))))))

(assert (=> d!429563 (= lt!508823 (printTailRec!699 Lexer!2329 (seqFromList!1716 lt!506994) 0 (BalanceConc!10293 Empty!5176)))))

(assert (=> d!429563 (= (print!1107 Lexer!2329 (seqFromList!1716 lt!506994)) lt!508823)))

(declare-fun bs!344620 () Bool)

(assert (= bs!344620 d!429563))

(declare-fun m!1705845 () Bool)

(assert (=> bs!344620 m!1705845))

(assert (=> bs!344620 m!1702637))

(declare-fun m!1705847 () Bool)

(assert (=> bs!344620 m!1705847))

(assert (=> bs!344620 m!1705847))

(declare-fun m!1705849 () Bool)

(assert (=> bs!344620 m!1705849))

(assert (=> bs!344620 m!1702637))

(declare-fun m!1705851 () Bool)

(assert (=> bs!344620 m!1705851))

(assert (=> b!1463441 d!429563))

(declare-fun d!429565 () Bool)

(assert (=> d!429565 (= (seqFromList!1716 lt!506994) (fromListB!738 lt!506994))))

(declare-fun bs!344621 () Bool)

(assert (= bs!344621 d!429565))

(declare-fun m!1705853 () Bool)

(assert (=> bs!344621 m!1705853))

(assert (=> b!1463441 d!429565))

(declare-fun bs!344622 () Bool)

(declare-fun d!429567 () Bool)

(assert (= bs!344622 (and d!429567 d!428849)))

(declare-fun lambda!63354 () Int)

(assert (=> bs!344622 (= lambda!63354 lambda!63326)))

(declare-fun bs!344623 () Bool)

(assert (= bs!344623 (and d!429567 d!429307)))

(assert (=> bs!344623 (= (= (rules!11706 thiss!10022) (rules!11706 lt!506997)) (= lambda!63354 lambda!63344))))

(declare-fun bs!344624 () Bool)

(assert (= bs!344624 (and d!429567 d!429273)))

(assert (=> bs!344624 (= lambda!63354 lambda!63332)))

(declare-fun bs!344625 () Bool)

(assert (= bs!344625 (and d!429567 d!429057)))

(assert (=> bs!344625 (= lambda!63354 lambda!63331)))

(declare-fun bs!344626 () Bool)

(assert (= bs!344626 (and d!429567 d!429489)))

(assert (=> bs!344626 (= lambda!63354 lambda!63352)))

(declare-fun bs!344627 () Bool)

(assert (= bs!344627 (and d!429567 d!429055)))

(assert (=> bs!344627 (= lambda!63354 lambda!63330)))

(declare-fun bs!344628 () Bool)

(assert (= bs!344628 (and d!429567 d!429539)))

(assert (=> bs!344628 (= (= (rules!11706 thiss!10022) (rules!11706 other!32)) (= lambda!63354 lambda!63353))))

(declare-fun bs!344629 () Bool)

(assert (= bs!344629 (and d!429567 d!429295)))

(assert (=> bs!344629 (= lambda!63354 lambda!63343)))

(declare-fun b!1464717 () Bool)

(declare-fun e!934340 () Bool)

(assert (=> b!1464717 (= e!934340 true)))

(declare-fun b!1464716 () Bool)

(declare-fun e!934339 () Bool)

(assert (=> b!1464716 (= e!934339 e!934340)))

(declare-fun b!1464715 () Bool)

(declare-fun e!934338 () Bool)

(assert (=> b!1464715 (= e!934338 e!934339)))

(assert (=> d!429567 e!934338))

(assert (= b!1464716 b!1464717))

(assert (= b!1464715 b!1464716))

(assert (= (and d!429567 ((_ is Cons!15189) (rules!11706 thiss!10022))) b!1464715))

(assert (=> b!1464717 (< (dynLambda!6933 order!9151 (toValue!3986 (transformation!2675 (h!20590 (rules!11706 thiss!10022))))) (dynLambda!6934 order!9153 lambda!63354))))

(assert (=> b!1464717 (< (dynLambda!6935 order!9155 (toChars!3845 (transformation!2675 (h!20590 (rules!11706 thiss!10022))))) (dynLambda!6934 order!9153 lambda!63354))))

(assert (=> d!429567 true))

(declare-fun lt!508824 () Bool)

(assert (=> d!429567 (= lt!508824 (forall!3744 lt!507007 lambda!63354))))

(declare-fun e!934336 () Bool)

(assert (=> d!429567 (= lt!508824 e!934336)))

(declare-fun res!663042 () Bool)

(assert (=> d!429567 (=> res!663042 e!934336)))

(assert (=> d!429567 (= res!663042 (not ((_ is Cons!15188) lt!507007)))))

(assert (=> d!429567 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!429567 (= (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) lt!507007) lt!508824)))

(declare-fun b!1464713 () Bool)

(declare-fun e!934337 () Bool)

(assert (=> b!1464713 (= e!934336 e!934337)))

(declare-fun res!663043 () Bool)

(assert (=> b!1464713 (=> (not res!663043) (not e!934337))))

(assert (=> b!1464713 (= res!663043 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 lt!507007)))))

(declare-fun b!1464714 () Bool)

(assert (=> b!1464714 (= e!934337 (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) (t!134647 lt!507007)))))

(assert (= (and d!429567 (not res!663042)) b!1464713))

(assert (= (and b!1464713 res!663043) b!1464714))

(declare-fun m!1705855 () Bool)

(assert (=> d!429567 m!1705855))

(assert (=> d!429567 m!1701757))

(declare-fun m!1705857 () Bool)

(assert (=> b!1464713 m!1705857))

(declare-fun m!1705859 () Bool)

(assert (=> b!1464714 m!1705859))

(assert (=> b!1463298 d!429567))

(declare-fun d!429569 () Bool)

(assert (=> d!429569 (= (isEmpty!9545 (list!6087 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 other!32) lt!507613)))) ((_ is Nil!15186) (list!6087 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 other!32) lt!507613)))))))

(assert (=> b!1463471 d!429569))

(declare-fun d!429571 () Bool)

(assert (=> d!429571 (= (list!6087 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 other!32) lt!507613))) (list!6088 (c!241180 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 other!32) lt!507613)))))))

(declare-fun bs!344630 () Bool)

(assert (= bs!344630 d!429571))

(declare-fun m!1705861 () Bool)

(assert (=> bs!344630 m!1705861))

(assert (=> b!1463471 d!429571))

(declare-fun b!1464718 () Bool)

(declare-fun lt!508825 () tuple2!14256)

(declare-fun e!934343 () Bool)

(assert (=> b!1464718 (= e!934343 (= (list!6087 (_2!8014 lt!508825)) (_2!8016 (lexList!717 Lexer!2329 (rules!11706 other!32) (list!6087 lt!507613)))))))

(declare-fun b!1464719 () Bool)

(declare-fun e!934341 () Bool)

(assert (=> b!1464719 (= e!934341 (not (isEmpty!9535 (_1!8014 lt!508825))))))

(declare-fun b!1464720 () Bool)

(declare-fun e!934342 () Bool)

(assert (=> b!1464720 (= e!934342 (= (_2!8014 lt!508825) lt!507613))))

(declare-fun b!1464721 () Bool)

(declare-fun res!663044 () Bool)

(assert (=> b!1464721 (=> (not res!663044) (not e!934343))))

(assert (=> b!1464721 (= res!663044 (= (list!6083 (_1!8014 lt!508825)) (_1!8016 (lexList!717 Lexer!2329 (rules!11706 other!32) (list!6087 lt!507613)))))))

(declare-fun d!429573 () Bool)

(assert (=> d!429573 e!934343))

(declare-fun res!663046 () Bool)

(assert (=> d!429573 (=> (not res!663046) (not e!934343))))

(assert (=> d!429573 (= res!663046 e!934342)))

(declare-fun c!241506 () Bool)

(assert (=> d!429573 (= c!241506 (> (size!12423 (_1!8014 lt!508825)) 0))))

(assert (=> d!429573 (= lt!508825 (lexTailRecV2!472 Lexer!2329 (rules!11706 other!32) lt!507613 (BalanceConc!10293 Empty!5176) lt!507613 (BalanceConc!10295 Empty!5177)))))

(assert (=> d!429573 (= (lex!1076 Lexer!2329 (rules!11706 other!32) lt!507613) lt!508825)))

(declare-fun b!1464722 () Bool)

(assert (=> b!1464722 (= e!934342 e!934341)))

(declare-fun res!663045 () Bool)

(assert (=> b!1464722 (= res!663045 (< (size!12425 (_2!8014 lt!508825)) (size!12425 lt!507613)))))

(assert (=> b!1464722 (=> (not res!663045) (not e!934341))))

(assert (= (and d!429573 c!241506) b!1464722))

(assert (= (and d!429573 (not c!241506)) b!1464720))

(assert (= (and b!1464722 res!663045) b!1464719))

(assert (= (and d!429573 res!663046) b!1464721))

(assert (= (and b!1464721 res!663044) b!1464718))

(declare-fun m!1705863 () Bool)

(assert (=> b!1464722 m!1705863))

(declare-fun m!1705865 () Bool)

(assert (=> b!1464722 m!1705865))

(declare-fun m!1705867 () Bool)

(assert (=> b!1464721 m!1705867))

(declare-fun m!1705869 () Bool)

(assert (=> b!1464721 m!1705869))

(assert (=> b!1464721 m!1705869))

(declare-fun m!1705871 () Bool)

(assert (=> b!1464721 m!1705871))

(declare-fun m!1705873 () Bool)

(assert (=> b!1464719 m!1705873))

(declare-fun m!1705875 () Bool)

(assert (=> b!1464718 m!1705875))

(assert (=> b!1464718 m!1705869))

(assert (=> b!1464718 m!1705869))

(assert (=> b!1464718 m!1705871))

(declare-fun m!1705877 () Bool)

(assert (=> d!429573 m!1705877))

(declare-fun m!1705879 () Bool)

(assert (=> d!429573 m!1705879))

(assert (=> b!1463471 d!429573))

(declare-fun d!429575 () Bool)

(declare-fun lt!508828 () Int)

(assert (=> d!429575 (>= lt!508828 0)))

(declare-fun e!934346 () Int)

(assert (=> d!429575 (= lt!508828 e!934346)))

(declare-fun c!241509 () Bool)

(assert (=> d!429575 (= c!241509 ((_ is Nil!15186) lt!507576))))

(assert (=> d!429575 (= (size!12429 lt!507576) lt!508828)))

(declare-fun b!1464727 () Bool)

(assert (=> b!1464727 (= e!934346 0)))

(declare-fun b!1464728 () Bool)

(assert (=> b!1464728 (= e!934346 (+ 1 (size!12429 (t!134645 lt!507576))))))

(assert (= (and d!429575 c!241509) b!1464727))

(assert (= (and d!429575 (not c!241509)) b!1464728))

(declare-fun m!1705881 () Bool)

(assert (=> b!1464728 m!1705881))

(assert (=> b!1463452 d!429575))

(declare-fun d!429577 () Bool)

(declare-fun lt!508829 () Int)

(assert (=> d!429577 (>= lt!508829 0)))

(declare-fun e!934347 () Int)

(assert (=> d!429577 (= lt!508829 e!934347)))

(declare-fun c!241510 () Bool)

(assert (=> d!429577 (= c!241510 ((_ is Nil!15186) (printList!727 Lexer!2329 lt!507007)))))

(assert (=> d!429577 (= (size!12429 (printList!727 Lexer!2329 lt!507007)) lt!508829)))

(declare-fun b!1464729 () Bool)

(assert (=> b!1464729 (= e!934347 0)))

(declare-fun b!1464730 () Bool)

(assert (=> b!1464730 (= e!934347 (+ 1 (size!12429 (t!134645 (printList!727 Lexer!2329 lt!507007)))))))

(assert (= (and d!429577 c!241510) b!1464729))

(assert (= (and d!429577 (not c!241510)) b!1464730))

(declare-fun m!1705883 () Bool)

(assert (=> b!1464730 m!1705883))

(assert (=> b!1463452 d!429577))

(declare-fun d!429579 () Bool)

(declare-fun lt!508830 () Int)

(assert (=> d!429579 (>= lt!508830 0)))

(declare-fun e!934348 () Int)

(assert (=> d!429579 (= lt!508830 e!934348)))

(declare-fun c!241511 () Bool)

(assert (=> d!429579 (= c!241511 ((_ is Nil!15186) (printList!727 Lexer!2329 lt!506994)))))

(assert (=> d!429579 (= (size!12429 (printList!727 Lexer!2329 lt!506994)) lt!508830)))

(declare-fun b!1464731 () Bool)

(assert (=> b!1464731 (= e!934348 0)))

(declare-fun b!1464732 () Bool)

(assert (=> b!1464732 (= e!934348 (+ 1 (size!12429 (t!134645 (printList!727 Lexer!2329 lt!506994)))))))

(assert (= (and d!429579 c!241511) b!1464731))

(assert (= (and d!429579 (not c!241511)) b!1464732))

(declare-fun m!1705885 () Bool)

(assert (=> b!1464732 m!1705885))

(assert (=> b!1463452 d!429579))

(declare-fun d!429581 () Bool)

(assert (=> d!429581 (= (isEmpty!9541 (rules!11706 lt!506997)) ((_ is Nil!15189) (rules!11706 lt!506997)))))

(assert (=> d!428949 d!429581))

(assert (=> d!428805 d!429091))

(assert (=> d!428871 d!429281))

(declare-fun d!429583 () Bool)

(assert (=> d!429583 (= (separableTokens!265 Lexer!2329 (tokens!2112 thiss!10022) (rules!11706 thiss!10022)) (tokensListTwoByTwoPredicateSeparable!138 Lexer!2329 (tokens!2112 thiss!10022) 0 (rules!11706 thiss!10022)))))

(declare-fun bs!344631 () Bool)

(assert (= bs!344631 d!429583))

(declare-fun m!1705887 () Bool)

(assert (=> bs!344631 m!1705887))

(assert (=> b!1463142 d!429583))

(assert (=> d!428881 d!429527))

(declare-fun d!429585 () Bool)

(assert (=> d!429585 (= (list!6083 (singletonSeq!1281 lt!506998)) (list!6086 (c!241182 (singletonSeq!1281 lt!506998))))))

(declare-fun bs!344632 () Bool)

(assert (= bs!344632 d!429585))

(declare-fun m!1705889 () Bool)

(assert (=> bs!344632 m!1705889))

(assert (=> d!428881 d!429585))

(assert (=> d!428881 d!429529))

(declare-fun d!429587 () Bool)

(declare-fun lt!508831 () Int)

(assert (=> d!429587 (= lt!508831 (size!12424 (list!6083 (_1!8014 lt!507409))))))

(assert (=> d!429587 (= lt!508831 (size!12431 (c!241182 (_1!8014 lt!507409))))))

(assert (=> d!429587 (= (size!12423 (_1!8014 lt!507409)) lt!508831)))

(declare-fun bs!344633 () Bool)

(assert (= bs!344633 d!429587))

(declare-fun m!1705891 () Bool)

(assert (=> bs!344633 m!1705891))

(assert (=> bs!344633 m!1705891))

(declare-fun m!1705893 () Bool)

(assert (=> bs!344633 m!1705893))

(declare-fun m!1705895 () Bool)

(assert (=> bs!344633 m!1705895))

(assert (=> d!428881 d!429587))

(assert (=> d!428881 d!429091))

(assert (=> d!428881 d!429525))

(declare-fun d!429589 () Bool)

(assert (=> d!429589 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!506998))))) (list!6086 (c!241182 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!506998)))))))))

(declare-fun bs!344634 () Bool)

(assert (= bs!344634 d!429589))

(declare-fun m!1705897 () Bool)

(assert (=> bs!344634 m!1705897))

(assert (=> d!428881 d!429589))

(declare-fun b!1464734 () Bool)

(declare-fun e!934350 () List!15252)

(assert (=> b!1464734 (= e!934350 (Cons!15186 (h!20587 (list!6087 (charsOf!1538 (h!20589 lt!507007)))) (++!4093 (t!134645 (list!6087 (charsOf!1538 (h!20589 lt!507007)))) (printList!727 Lexer!2329 (t!134647 lt!507007)))))))

(declare-fun b!1464733 () Bool)

(assert (=> b!1464733 (= e!934350 (printList!727 Lexer!2329 (t!134647 lt!507007)))))

(declare-fun d!429591 () Bool)

(declare-fun e!934349 () Bool)

(assert (=> d!429591 e!934349))

(declare-fun res!663047 () Bool)

(assert (=> d!429591 (=> (not res!663047) (not e!934349))))

(declare-fun lt!508832 () List!15252)

(assert (=> d!429591 (= res!663047 (= (content!2247 lt!508832) ((_ map or) (content!2247 (list!6087 (charsOf!1538 (h!20589 lt!507007)))) (content!2247 (printList!727 Lexer!2329 (t!134647 lt!507007))))))))

(assert (=> d!429591 (= lt!508832 e!934350)))

(declare-fun c!241512 () Bool)

(assert (=> d!429591 (= c!241512 ((_ is Nil!15186) (list!6087 (charsOf!1538 (h!20589 lt!507007)))))))

(assert (=> d!429591 (= (++!4093 (list!6087 (charsOf!1538 (h!20589 lt!507007))) (printList!727 Lexer!2329 (t!134647 lt!507007))) lt!508832)))

(declare-fun b!1464736 () Bool)

(assert (=> b!1464736 (= e!934349 (or (not (= (printList!727 Lexer!2329 (t!134647 lt!507007)) Nil!15186)) (= lt!508832 (list!6087 (charsOf!1538 (h!20589 lt!507007))))))))

(declare-fun b!1464735 () Bool)

(declare-fun res!663048 () Bool)

(assert (=> b!1464735 (=> (not res!663048) (not e!934349))))

(assert (=> b!1464735 (= res!663048 (= (size!12429 lt!508832) (+ (size!12429 (list!6087 (charsOf!1538 (h!20589 lt!507007)))) (size!12429 (printList!727 Lexer!2329 (t!134647 lt!507007))))))))

(assert (= (and d!429591 c!241512) b!1464733))

(assert (= (and d!429591 (not c!241512)) b!1464734))

(assert (= (and d!429591 res!663047) b!1464735))

(assert (= (and b!1464735 res!663048) b!1464736))

(assert (=> b!1464734 m!1702831))

(declare-fun m!1705899 () Bool)

(assert (=> b!1464734 m!1705899))

(declare-fun m!1705901 () Bool)

(assert (=> d!429591 m!1705901))

(assert (=> d!429591 m!1702749))

(declare-fun m!1705903 () Bool)

(assert (=> d!429591 m!1705903))

(assert (=> d!429591 m!1702831))

(declare-fun m!1705905 () Bool)

(assert (=> d!429591 m!1705905))

(declare-fun m!1705907 () Bool)

(assert (=> b!1464735 m!1705907))

(assert (=> b!1464735 m!1702749))

(declare-fun m!1705909 () Bool)

(assert (=> b!1464735 m!1705909))

(assert (=> b!1464735 m!1702831))

(declare-fun m!1705911 () Bool)

(assert (=> b!1464735 m!1705911))

(assert (=> b!1463463 d!429591))

(declare-fun d!429593 () Bool)

(assert (=> d!429593 (= (list!6087 (charsOf!1538 (h!20589 lt!507007))) (list!6088 (c!241180 (charsOf!1538 (h!20589 lt!507007)))))))

(declare-fun bs!344635 () Bool)

(assert (= bs!344635 d!429593))

(declare-fun m!1705913 () Bool)

(assert (=> bs!344635 m!1705913))

(assert (=> b!1463463 d!429593))

(declare-fun d!429595 () Bool)

(declare-fun lt!508833 () BalanceConc!10292)

(assert (=> d!429595 (= (list!6087 lt!508833) (originalCharacters!3537 (h!20589 lt!507007)))))

(assert (=> d!429595 (= lt!508833 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!507007)))) (value!85885 (h!20589 lt!507007))))))

(assert (=> d!429595 (= (charsOf!1538 (h!20589 lt!507007)) lt!508833)))

(declare-fun b_lambda!45679 () Bool)

(assert (=> (not b_lambda!45679) (not d!429595)))

(declare-fun t!134722 () Bool)

(declare-fun tb!82693 () Bool)

(assert (=> (and b!1463502 (= (toChars!3845 (transformation!2675 (h!20590 (rules!11706 other!32)))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!507007))))) t!134722) tb!82693))

(declare-fun b!1464737 () Bool)

(declare-fun e!934351 () Bool)

(declare-fun tp!411862 () Bool)

(assert (=> b!1464737 (= e!934351 (and (inv!20311 (c!241180 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!507007)))) (value!85885 (h!20589 lt!507007))))) tp!411862))))

(declare-fun result!99346 () Bool)

(assert (=> tb!82693 (= result!99346 (and (inv!20312 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!507007)))) (value!85885 (h!20589 lt!507007)))) e!934351))))

(assert (= tb!82693 b!1464737))

(declare-fun m!1705915 () Bool)

(assert (=> b!1464737 m!1705915))

(declare-fun m!1705917 () Bool)

(assert (=> tb!82693 m!1705917))

(assert (=> d!429595 t!134722))

(declare-fun b_and!99957 () Bool)

(assert (= b_and!99953 (and (=> t!134722 result!99346) b_and!99957)))

(declare-fun t!134724 () Bool)

(declare-fun tb!82695 () Bool)

(assert (=> (and b!1463508 (= (toChars!3845 (transformation!2675 (h!20590 (rules!11706 thiss!10022)))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!507007))))) t!134724) tb!82695))

(declare-fun result!99348 () Bool)

(assert (= result!99348 result!99346))

(assert (=> d!429595 t!134724))

(declare-fun b_and!99959 () Bool)

(assert (= b_and!99955 (and (=> t!134724 result!99348) b_and!99959)))

(declare-fun m!1705919 () Bool)

(assert (=> d!429595 m!1705919))

(declare-fun m!1705921 () Bool)

(assert (=> d!429595 m!1705921))

(assert (=> b!1463463 d!429595))

(declare-fun d!429597 () Bool)

(declare-fun c!241513 () Bool)

(assert (=> d!429597 (= c!241513 ((_ is Cons!15188) (t!134647 lt!507007)))))

(declare-fun e!934352 () List!15252)

(assert (=> d!429597 (= (printList!727 Lexer!2329 (t!134647 lt!507007)) e!934352)))

(declare-fun b!1464738 () Bool)

(assert (=> b!1464738 (= e!934352 (++!4093 (list!6087 (charsOf!1538 (h!20589 (t!134647 lt!507007)))) (printList!727 Lexer!2329 (t!134647 (t!134647 lt!507007)))))))

(declare-fun b!1464739 () Bool)

(assert (=> b!1464739 (= e!934352 Nil!15186)))

(assert (= (and d!429597 c!241513) b!1464738))

(assert (= (and d!429597 (not c!241513)) b!1464739))

(assert (=> b!1464738 m!1702755))

(assert (=> b!1464738 m!1702755))

(declare-fun m!1705923 () Bool)

(assert (=> b!1464738 m!1705923))

(declare-fun m!1705925 () Bool)

(assert (=> b!1464738 m!1705925))

(assert (=> b!1464738 m!1705923))

(assert (=> b!1464738 m!1705925))

(declare-fun m!1705927 () Bool)

(assert (=> b!1464738 m!1705927))

(assert (=> b!1463463 d!429597))

(declare-fun d!429599 () Bool)

(declare-fun c!241516 () Bool)

(assert (=> d!429599 (= c!241516 ((_ is Nil!15186) lt!507576))))

(declare-fun e!934355 () (InoxSet C!8156))

(assert (=> d!429599 (= (content!2247 lt!507576) e!934355)))

(declare-fun b!1464744 () Bool)

(assert (=> b!1464744 (= e!934355 ((as const (Array C!8156 Bool)) false))))

(declare-fun b!1464745 () Bool)

(assert (=> b!1464745 (= e!934355 ((_ map or) (store ((as const (Array C!8156 Bool)) false) (h!20587 lt!507576) true) (content!2247 (t!134645 lt!507576))))))

(assert (= (and d!429599 c!241516) b!1464744))

(assert (= (and d!429599 (not c!241516)) b!1464745))

(declare-fun m!1705929 () Bool)

(assert (=> b!1464745 m!1705929))

(declare-fun m!1705931 () Bool)

(assert (=> b!1464745 m!1705931))

(assert (=> d!428933 d!429599))

(declare-fun d!429601 () Bool)

(declare-fun c!241517 () Bool)

(assert (=> d!429601 (= c!241517 ((_ is Nil!15186) (printList!727 Lexer!2329 lt!507007)))))

(declare-fun e!934356 () (InoxSet C!8156))

(assert (=> d!429601 (= (content!2247 (printList!727 Lexer!2329 lt!507007)) e!934356)))

(declare-fun b!1464746 () Bool)

(assert (=> b!1464746 (= e!934356 ((as const (Array C!8156 Bool)) false))))

(declare-fun b!1464747 () Bool)

(assert (=> b!1464747 (= e!934356 ((_ map or) (store ((as const (Array C!8156 Bool)) false) (h!20587 (printList!727 Lexer!2329 lt!507007)) true) (content!2247 (t!134645 (printList!727 Lexer!2329 lt!507007)))))))

(assert (= (and d!429601 c!241517) b!1464746))

(assert (= (and d!429601 (not c!241517)) b!1464747))

(declare-fun m!1705933 () Bool)

(assert (=> b!1464747 m!1705933))

(declare-fun m!1705935 () Bool)

(assert (=> b!1464747 m!1705935))

(assert (=> d!428933 d!429601))

(declare-fun d!429603 () Bool)

(declare-fun c!241518 () Bool)

(assert (=> d!429603 (= c!241518 ((_ is Nil!15186) (printList!727 Lexer!2329 lt!506994)))))

(declare-fun e!934357 () (InoxSet C!8156))

(assert (=> d!429603 (= (content!2247 (printList!727 Lexer!2329 lt!506994)) e!934357)))

(declare-fun b!1464748 () Bool)

(assert (=> b!1464748 (= e!934357 ((as const (Array C!8156 Bool)) false))))

(declare-fun b!1464749 () Bool)

(assert (=> b!1464749 (= e!934357 ((_ map or) (store ((as const (Array C!8156 Bool)) false) (h!20587 (printList!727 Lexer!2329 lt!506994)) true) (content!2247 (t!134645 (printList!727 Lexer!2329 lt!506994)))))))

(assert (= (and d!429603 c!241518) b!1464748))

(assert (= (and d!429603 (not c!241518)) b!1464749))

(declare-fun m!1705937 () Bool)

(assert (=> b!1464749 m!1705937))

(declare-fun m!1705939 () Bool)

(assert (=> b!1464749 m!1705939))

(assert (=> d!428933 d!429603))

(declare-fun d!429605 () Bool)

(declare-fun res!663050 () Bool)

(declare-fun e!934359 () Bool)

(assert (=> d!429605 (=> res!663050 e!934359)))

(assert (=> d!429605 (= res!663050 (or (not ((_ is Cons!15188) (Cons!15188 (h!20589 (t!134647 lt!506991)) (t!134647 (t!134647 lt!506991))))) (not ((_ is Cons!15188) (t!134647 (Cons!15188 (h!20589 (t!134647 lt!506991)) (t!134647 (t!134647 lt!506991))))))))))

(assert (=> d!429605 (= (tokensListTwoByTwoPredicateSeparableList!249 Lexer!2329 (Cons!15188 (h!20589 (t!134647 lt!506991)) (t!134647 (t!134647 lt!506991))) (rules!11706 thiss!10022)) e!934359)))

(declare-fun b!1464750 () Bool)

(declare-fun e!934358 () Bool)

(assert (=> b!1464750 (= e!934359 e!934358)))

(declare-fun res!663049 () Bool)

(assert (=> b!1464750 (=> (not res!663049) (not e!934358))))

(assert (=> b!1464750 (= res!663049 (separableTokensPredicate!540 Lexer!2329 (h!20589 (Cons!15188 (h!20589 (t!134647 lt!506991)) (t!134647 (t!134647 lt!506991)))) (h!20589 (t!134647 (Cons!15188 (h!20589 (t!134647 lt!506991)) (t!134647 (t!134647 lt!506991))))) (rules!11706 thiss!10022)))))

(declare-fun lt!508836 () Unit!24509)

(declare-fun Unit!24740 () Unit!24509)

(assert (=> b!1464750 (= lt!508836 Unit!24740)))

(assert (=> b!1464750 (> (size!12425 (charsOf!1538 (h!20589 (t!134647 (Cons!15188 (h!20589 (t!134647 lt!506991)) (t!134647 (t!134647 lt!506991))))))) 0)))

(declare-fun lt!508840 () Unit!24509)

(declare-fun Unit!24741 () Unit!24509)

(assert (=> b!1464750 (= lt!508840 Unit!24741)))

(assert (=> b!1464750 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 (t!134647 (Cons!15188 (h!20589 (t!134647 lt!506991)) (t!134647 (t!134647 lt!506991))))))))

(declare-fun lt!508835 () Unit!24509)

(declare-fun Unit!24742 () Unit!24509)

(assert (=> b!1464750 (= lt!508835 Unit!24742)))

(assert (=> b!1464750 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 (Cons!15188 (h!20589 (t!134647 lt!506991)) (t!134647 (t!134647 lt!506991)))))))

(declare-fun lt!508838 () Unit!24509)

(declare-fun lt!508834 () Unit!24509)

(assert (=> b!1464750 (= lt!508838 lt!508834)))

(assert (=> b!1464750 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 (t!134647 (Cons!15188 (h!20589 (t!134647 lt!506991)) (t!134647 (t!134647 lt!506991))))))))

(assert (=> b!1464750 (= lt!508834 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!433 Lexer!2329 (rules!11706 thiss!10022) (Cons!15188 (h!20589 (t!134647 lt!506991)) (t!134647 (t!134647 lt!506991))) (h!20589 (t!134647 (Cons!15188 (h!20589 (t!134647 lt!506991)) (t!134647 (t!134647 lt!506991)))))))))

(declare-fun lt!508839 () Unit!24509)

(declare-fun lt!508837 () Unit!24509)

(assert (=> b!1464750 (= lt!508839 lt!508837)))

(assert (=> b!1464750 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 (Cons!15188 (h!20589 (t!134647 lt!506991)) (t!134647 (t!134647 lt!506991)))))))

(assert (=> b!1464750 (= lt!508837 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!433 Lexer!2329 (rules!11706 thiss!10022) (Cons!15188 (h!20589 (t!134647 lt!506991)) (t!134647 (t!134647 lt!506991))) (h!20589 (Cons!15188 (h!20589 (t!134647 lt!506991)) (t!134647 (t!134647 lt!506991))))))))

(declare-fun b!1464751 () Bool)

(assert (=> b!1464751 (= e!934358 (tokensListTwoByTwoPredicateSeparableList!249 Lexer!2329 (Cons!15188 (h!20589 (t!134647 (Cons!15188 (h!20589 (t!134647 lt!506991)) (t!134647 (t!134647 lt!506991))))) (t!134647 (t!134647 (Cons!15188 (h!20589 (t!134647 lt!506991)) (t!134647 (t!134647 lt!506991)))))) (rules!11706 thiss!10022)))))

(assert (= (and d!429605 (not res!663050)) b!1464750))

(assert (= (and b!1464750 res!663049) b!1464751))

(declare-fun m!1705941 () Bool)

(assert (=> b!1464750 m!1705941))

(declare-fun m!1705943 () Bool)

(assert (=> b!1464750 m!1705943))

(declare-fun m!1705945 () Bool)

(assert (=> b!1464750 m!1705945))

(assert (=> b!1464750 m!1705941))

(declare-fun m!1705947 () Bool)

(assert (=> b!1464750 m!1705947))

(declare-fun m!1705949 () Bool)

(assert (=> b!1464750 m!1705949))

(declare-fun m!1705951 () Bool)

(assert (=> b!1464750 m!1705951))

(declare-fun m!1705953 () Bool)

(assert (=> b!1464750 m!1705953))

(declare-fun m!1705955 () Bool)

(assert (=> b!1464751 m!1705955))

(assert (=> b!1463480 d!429605))

(declare-fun d!429607 () Bool)

(declare-fun lt!508841 () Bool)

(assert (=> d!429607 (= lt!508841 (isEmpty!9545 (list!6087 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!507004)))))))))

(assert (=> d!429607 (= lt!508841 (isEmpty!9549 (c!241180 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!507004)))))))))

(assert (=> d!429607 (= (isEmpty!9544 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!507004))))) lt!508841)))

(declare-fun bs!344636 () Bool)

(assert (= bs!344636 d!429607))

(declare-fun m!1705957 () Bool)

(assert (=> bs!344636 m!1705957))

(assert (=> bs!344636 m!1705957))

(declare-fun m!1705959 () Bool)

(assert (=> bs!344636 m!1705959))

(declare-fun m!1705961 () Bool)

(assert (=> bs!344636 m!1705961))

(assert (=> b!1463356 d!429607))

(assert (=> b!1463356 d!429099))

(assert (=> b!1463356 d!429095))

(assert (=> b!1463356 d!429087))

(assert (=> d!428931 d!429561))

(declare-fun d!429609 () Bool)

(assert (=> d!429609 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 other!32) (print!1107 Lexer!2329 (seqFromList!1716 lt!506994))))) (list!6086 (c!241182 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 other!32) (print!1107 Lexer!2329 (seqFromList!1716 lt!506994)))))))))

(declare-fun bs!344637 () Bool)

(assert (= bs!344637 d!429609))

(declare-fun m!1705963 () Bool)

(assert (=> bs!344637 m!1705963))

(assert (=> d!428931 d!429609))

(assert (=> d!428931 d!429313))

(assert (=> d!428931 d!429565))

(assert (=> d!428931 d!429563))

(declare-fun d!429611 () Bool)

(declare-fun e!934360 () Bool)

(assert (=> d!429611 e!934360))

(declare-fun res!663051 () Bool)

(assert (=> d!429611 (=> (not res!663051) (not e!934360))))

(declare-fun lt!508842 () List!15254)

(assert (=> d!429611 (= res!663051 (= (content!2245 lt!508842) ((_ map or) (content!2245 (t!134647 lt!507007)) (content!2245 lt!506994))))))

(declare-fun e!934361 () List!15254)

(assert (=> d!429611 (= lt!508842 e!934361)))

(declare-fun c!241519 () Bool)

(assert (=> d!429611 (= c!241519 ((_ is Nil!15188) (t!134647 lt!507007)))))

(assert (=> d!429611 (= (++!4092 (t!134647 lt!507007) lt!506994) lt!508842)))

(declare-fun b!1464754 () Bool)

(declare-fun res!663052 () Bool)

(assert (=> b!1464754 (=> (not res!663052) (not e!934360))))

(assert (=> b!1464754 (= res!663052 (= (size!12424 lt!508842) (+ (size!12424 (t!134647 lt!507007)) (size!12424 lt!506994))))))

(declare-fun b!1464755 () Bool)

(assert (=> b!1464755 (= e!934360 (or (not (= lt!506994 Nil!15188)) (= lt!508842 (t!134647 lt!507007))))))

(declare-fun b!1464752 () Bool)

(assert (=> b!1464752 (= e!934361 lt!506994)))

(declare-fun b!1464753 () Bool)

(assert (=> b!1464753 (= e!934361 (Cons!15188 (h!20589 (t!134647 lt!507007)) (++!4092 (t!134647 (t!134647 lt!507007)) lt!506994)))))

(assert (= (and d!429611 c!241519) b!1464752))

(assert (= (and d!429611 (not c!241519)) b!1464753))

(assert (= (and d!429611 res!663051) b!1464754))

(assert (= (and b!1464754 res!663052) b!1464755))

(declare-fun m!1705965 () Bool)

(assert (=> d!429611 m!1705965))

(assert (=> d!429611 m!1705483))

(assert (=> d!429611 m!1702187))

(declare-fun m!1705967 () Bool)

(assert (=> b!1464754 m!1705967))

(assert (=> b!1464754 m!1705677))

(assert (=> b!1464754 m!1702193))

(declare-fun m!1705969 () Bool)

(assert (=> b!1464753 m!1705969))

(assert (=> b!1463222 d!429611))

(declare-fun d!429613 () Bool)

(declare-fun lt!508843 () Bool)

(assert (=> d!429613 (= lt!508843 (isEmpty!9545 (list!6087 (_2!8014 lt!507409))))))

(assert (=> d!429613 (= lt!508843 (isEmpty!9549 (c!241180 (_2!8014 lt!507409))))))

(assert (=> d!429613 (= (isEmpty!9544 (_2!8014 lt!507409)) lt!508843)))

(declare-fun bs!344638 () Bool)

(assert (= bs!344638 d!429613))

(declare-fun m!1705971 () Bool)

(assert (=> bs!344638 m!1705971))

(assert (=> bs!344638 m!1705971))

(declare-fun m!1705973 () Bool)

(assert (=> bs!344638 m!1705973))

(declare-fun m!1705975 () Bool)

(assert (=> bs!344638 m!1705975))

(assert (=> b!1463352 d!429613))

(declare-fun d!429615 () Bool)

(declare-fun lt!508844 () Bool)

(assert (=> d!429615 (= lt!508844 (isEmpty!9545 (list!6087 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (seqFromList!1716 lt!507007)))))))))

(assert (=> d!429615 (= lt!508844 (isEmpty!9549 (c!241180 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (seqFromList!1716 lt!507007)))))))))

(assert (=> d!429615 (= (isEmpty!9544 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (seqFromList!1716 lt!507007))))) lt!508844)))

(declare-fun bs!344639 () Bool)

(assert (= bs!344639 d!429615))

(declare-fun m!1705977 () Bool)

(assert (=> bs!344639 m!1705977))

(assert (=> bs!344639 m!1705977))

(declare-fun m!1705979 () Bool)

(assert (=> bs!344639 m!1705979))

(declare-fun m!1705981 () Bool)

(assert (=> bs!344639 m!1705981))

(assert (=> b!1463456 d!429615))

(assert (=> b!1463456 d!429543))

(assert (=> b!1463456 d!429547))

(assert (=> b!1463456 d!429549))

(declare-fun d!429617 () Bool)

(declare-fun res!663053 () Bool)

(declare-fun e!934362 () Bool)

(assert (=> d!429617 (=> (not res!663053) (not e!934362))))

(assert (=> d!429617 (= res!663053 (<= (size!12424 (list!6090 (xs!7928 (c!241182 (tokens!2112 other!32))))) 512))))

(assert (=> d!429617 (= (inv!20302 (c!241182 (tokens!2112 other!32))) e!934362)))

(declare-fun b!1464756 () Bool)

(declare-fun res!663054 () Bool)

(assert (=> b!1464756 (=> (not res!663054) (not e!934362))))

(assert (=> b!1464756 (= res!663054 (= (csize!10585 (c!241182 (tokens!2112 other!32))) (size!12424 (list!6090 (xs!7928 (c!241182 (tokens!2112 other!32)))))))))

(declare-fun b!1464757 () Bool)

(assert (=> b!1464757 (= e!934362 (and (> (csize!10585 (c!241182 (tokens!2112 other!32))) 0) (<= (csize!10585 (c!241182 (tokens!2112 other!32))) 512)))))

(assert (= (and d!429617 res!663053) b!1464756))

(assert (= (and b!1464756 res!663054) b!1464757))

(declare-fun m!1705983 () Bool)

(assert (=> d!429617 m!1705983))

(assert (=> d!429617 m!1705983))

(declare-fun m!1705985 () Bool)

(assert (=> d!429617 m!1705985))

(assert (=> b!1464756 m!1705983))

(assert (=> b!1464756 m!1705983))

(assert (=> b!1464756 m!1705985))

(assert (=> b!1463474 d!429617))

(declare-fun b!1464761 () Bool)

(declare-fun e!934364 () List!15254)

(assert (=> b!1464761 (= e!934364 (++!4092 (list!6086 (left!12905 (c!241182 (tokens!2112 other!32)))) (list!6086 (right!13235 (c!241182 (tokens!2112 other!32))))))))

(declare-fun b!1464759 () Bool)

(declare-fun e!934363 () List!15254)

(assert (=> b!1464759 (= e!934363 e!934364)))

(declare-fun c!241521 () Bool)

(assert (=> b!1464759 (= c!241521 ((_ is Leaf!7716) (c!241182 (tokens!2112 other!32))))))

(declare-fun d!429619 () Bool)

(declare-fun c!241520 () Bool)

(assert (=> d!429619 (= c!241520 ((_ is Empty!5177) (c!241182 (tokens!2112 other!32))))))

(assert (=> d!429619 (= (list!6086 (c!241182 (tokens!2112 other!32))) e!934363)))

(declare-fun b!1464760 () Bool)

(assert (=> b!1464760 (= e!934364 (list!6090 (xs!7928 (c!241182 (tokens!2112 other!32)))))))

(declare-fun b!1464758 () Bool)

(assert (=> b!1464758 (= e!934363 Nil!15188)))

(assert (= (and d!429619 c!241520) b!1464758))

(assert (= (and d!429619 (not c!241520)) b!1464759))

(assert (= (and b!1464759 c!241521) b!1464760))

(assert (= (and b!1464759 (not c!241521)) b!1464761))

(declare-fun m!1705987 () Bool)

(assert (=> b!1464761 m!1705987))

(declare-fun m!1705989 () Bool)

(assert (=> b!1464761 m!1705989))

(assert (=> b!1464761 m!1705987))

(assert (=> b!1464761 m!1705989))

(declare-fun m!1705991 () Bool)

(assert (=> b!1464761 m!1705991))

(assert (=> b!1464760 m!1705983))

(assert (=> d!428885 d!429619))

(assert (=> b!1463180 d!429091))

(declare-fun d!429621 () Bool)

(assert (=> d!429621 (= (isEmpty!9542 (list!6083 (tokens!2112 other!32))) ((_ is Nil!15188) (list!6083 (tokens!2112 other!32))))))

(assert (=> d!428869 d!429621))

(assert (=> d!428869 d!428885))

(declare-fun d!429623 () Bool)

(declare-fun lt!508847 () Bool)

(assert (=> d!429623 (= lt!508847 (isEmpty!9542 (list!6086 (c!241182 (tokens!2112 other!32)))))))

(assert (=> d!429623 (= lt!508847 (= (size!12431 (c!241182 (tokens!2112 other!32))) 0))))

(assert (=> d!429623 (= (isEmpty!9543 (c!241182 (tokens!2112 other!32))) lt!508847)))

(declare-fun bs!344640 () Bool)

(assert (= bs!344640 d!429623))

(assert (=> bs!344640 m!1702369))

(assert (=> bs!344640 m!1702369))

(declare-fun m!1705993 () Bool)

(assert (=> bs!344640 m!1705993))

(declare-fun m!1705995 () Bool)

(assert (=> bs!344640 m!1705995))

(assert (=> d!428869 d!429623))

(declare-fun d!429625 () Bool)

(assert (=> d!429625 (tokensListTwoByTwoPredicateSeparableList!249 Lexer!2329 (++!4092 lt!507007 lt!506994) (rules!11706 thiss!10022))))

(declare-fun lt!508929 () Unit!24509)

(declare-fun lt!508930 () Unit!24509)

(assert (=> d!429625 (= lt!508929 lt!508930)))

(assert (=> d!429625 (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) (++!4092 lt!507007 lt!506994))))

(assert (=> d!429625 (= lt!508930 (lemmaRulesProduceEachTokenIndividuallyConcat!56 Lexer!2329 (rules!11706 thiss!10022) lt!507007 lt!506994))))

(assert (=> d!429625 true))

(declare-fun _$81!66 () Unit!24509)

(assert (=> d!429625 (= (choose!9001 Lexer!2329 lt!507007 lt!506994 (rules!11706 thiss!10022)) _$81!66)))

(declare-fun bs!344683 () Bool)

(assert (= bs!344683 d!429625))

(assert (=> bs!344683 m!1701629))

(assert (=> bs!344683 m!1701629))

(assert (=> bs!344683 m!1702249))

(assert (=> bs!344683 m!1701629))

(assert (=> bs!344683 m!1702161))

(assert (=> bs!344683 m!1701633))

(assert (=> d!428865 d!429625))

(assert (=> d!428865 d!429091))

(declare-fun d!429753 () Bool)

(assert (=> d!429753 (= (inv!20307 (xs!7928 (c!241182 (tokens!2112 other!32)))) (<= (size!12424 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 other!32))))) 2147483647))))

(declare-fun bs!344684 () Bool)

(assert (= bs!344684 d!429753))

(declare-fun m!1706383 () Bool)

(assert (=> bs!344684 m!1706383))

(assert (=> b!1463504 d!429753))

(declare-fun d!429755 () Bool)

(declare-fun lt!508933 () Token!5012)

(assert (=> d!429755 (contains!2913 lt!507188 lt!508933)))

(declare-fun e!934438 () Token!5012)

(assert (=> d!429755 (= lt!508933 e!934438)))

(declare-fun c!241553 () Bool)

(assert (=> d!429755 (= c!241553 (= lt!507177 0))))

(declare-fun e!934437 () Bool)

(assert (=> d!429755 e!934437))

(declare-fun res!663097 () Bool)

(assert (=> d!429755 (=> (not res!663097) (not e!934437))))

(assert (=> d!429755 (= res!663097 (<= 0 lt!507177))))

(assert (=> d!429755 (= (apply!3966 lt!507188 lt!507177) lt!508933)))

(declare-fun b!1464873 () Bool)

(assert (=> b!1464873 (= e!934437 (< lt!507177 (size!12424 lt!507188)))))

(declare-fun b!1464874 () Bool)

(assert (=> b!1464874 (= e!934438 (head!3020 lt!507188))))

(declare-fun b!1464875 () Bool)

(assert (=> b!1464875 (= e!934438 (apply!3966 (tail!2177 lt!507188) (- lt!507177 1)))))

(assert (= (and d!429755 res!663097) b!1464873))

(assert (= (and d!429755 c!241553) b!1464874))

(assert (= (and d!429755 (not c!241553)) b!1464875))

(declare-fun m!1706385 () Bool)

(assert (=> d!429755 m!1706385))

(declare-fun m!1706387 () Bool)

(assert (=> b!1464873 m!1706387))

(declare-fun m!1706389 () Bool)

(assert (=> b!1464874 m!1706389))

(declare-fun m!1706391 () Bool)

(assert (=> b!1464875 m!1706391))

(assert (=> b!1464875 m!1706391))

(declare-fun m!1706393 () Bool)

(assert (=> b!1464875 m!1706393))

(assert (=> b!1463184 d!429755))

(declare-fun d!429757 () Bool)

(assert (=> d!429757 (= (tail!2177 (drop!745 lt!507168 lt!507187)) (t!134647 (drop!745 lt!507168 lt!507187)))))

(assert (=> b!1463184 d!429757))

(declare-fun d!429759 () Bool)

(declare-fun lt!508934 () Bool)

(declare-fun e!934440 () Bool)

(assert (=> d!429759 (= lt!508934 e!934440)))

(declare-fun res!663098 () Bool)

(assert (=> d!429759 (=> (not res!663098) (not e!934440))))

(assert (=> d!429759 (= res!663098 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!507182))))) (list!6083 (singletonSeq!1281 lt!507182))))))

(declare-fun e!934439 () Bool)

(assert (=> d!429759 (= lt!508934 e!934439)))

(declare-fun res!663100 () Bool)

(assert (=> d!429759 (=> (not res!663100) (not e!934439))))

(declare-fun lt!508935 () tuple2!14256)

(assert (=> d!429759 (= res!663100 (= (size!12423 (_1!8014 lt!508935)) 1))))

(assert (=> d!429759 (= lt!508935 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!507182))))))

(assert (=> d!429759 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!429759 (= (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) lt!507182) lt!508934)))

(declare-fun b!1464876 () Bool)

(declare-fun res!663099 () Bool)

(assert (=> b!1464876 (=> (not res!663099) (not e!934439))))

(assert (=> b!1464876 (= res!663099 (= (apply!3965 (_1!8014 lt!508935) 0) lt!507182))))

(declare-fun b!1464877 () Bool)

(assert (=> b!1464877 (= e!934439 (isEmpty!9544 (_2!8014 lt!508935)))))

(declare-fun b!1464878 () Bool)

(assert (=> b!1464878 (= e!934440 (isEmpty!9544 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!507182))))))))

(assert (= (and d!429759 res!663100) b!1464876))

(assert (= (and b!1464876 res!663099) b!1464877))

(assert (= (and d!429759 res!663098) b!1464878))

(assert (=> d!429759 m!1701757))

(declare-fun m!1706395 () Bool)

(assert (=> d!429759 m!1706395))

(declare-fun m!1706397 () Bool)

(assert (=> d!429759 m!1706397))

(assert (=> d!429759 m!1706397))

(declare-fun m!1706399 () Bool)

(assert (=> d!429759 m!1706399))

(declare-fun m!1706401 () Bool)

(assert (=> d!429759 m!1706401))

(assert (=> d!429759 m!1706395))

(declare-fun m!1706403 () Bool)

(assert (=> d!429759 m!1706403))

(declare-fun m!1706405 () Bool)

(assert (=> d!429759 m!1706405))

(assert (=> d!429759 m!1706395))

(declare-fun m!1706407 () Bool)

(assert (=> b!1464876 m!1706407))

(declare-fun m!1706409 () Bool)

(assert (=> b!1464877 m!1706409))

(assert (=> b!1464878 m!1706395))

(assert (=> b!1464878 m!1706395))

(assert (=> b!1464878 m!1706397))

(assert (=> b!1464878 m!1706397))

(assert (=> b!1464878 m!1706399))

(declare-fun m!1706411 () Bool)

(assert (=> b!1464878 m!1706411))

(assert (=> b!1463184 d!429759))

(declare-fun d!429761 () Bool)

(assert (=> d!429761 (= (head!3020 (drop!745 lt!507184 0)) (apply!3966 lt!507184 0))))

(declare-fun lt!508938 () Unit!24509)

(declare-fun choose!9015 (List!15254 Int) Unit!24509)

(assert (=> d!429761 (= lt!508938 (choose!9015 lt!507184 0))))

(declare-fun e!934443 () Bool)

(assert (=> d!429761 e!934443))

(declare-fun res!663103 () Bool)

(assert (=> d!429761 (=> (not res!663103) (not e!934443))))

(assert (=> d!429761 (= res!663103 (>= 0 0))))

(assert (=> d!429761 (= (lemmaDropApply!495 lt!507184 0) lt!508938)))

(declare-fun b!1464881 () Bool)

(assert (=> b!1464881 (= e!934443 (< 0 (size!12424 lt!507184)))))

(assert (= (and d!429761 res!663103) b!1464881))

(assert (=> d!429761 m!1701883))

(assert (=> d!429761 m!1701883))

(assert (=> d!429761 m!1701885))

(assert (=> d!429761 m!1701869))

(declare-fun m!1706413 () Bool)

(assert (=> d!429761 m!1706413))

(declare-fun m!1706415 () Bool)

(assert (=> b!1464881 m!1706415))

(assert (=> b!1463184 d!429761))

(declare-fun b!1464882 () Bool)

(declare-fun e!934447 () List!15254)

(assert (=> b!1464882 (= e!934447 lt!507188)))

(declare-fun b!1464883 () Bool)

(declare-fun e!934445 () Int)

(assert (=> b!1464883 (= e!934445 0)))

(declare-fun b!1464884 () Bool)

(declare-fun call!98538 () Int)

(assert (=> b!1464884 (= e!934445 (- call!98538 lt!507177))))

(declare-fun b!1464885 () Bool)

(declare-fun e!934446 () List!15254)

(assert (=> b!1464885 (= e!934446 Nil!15188)))

(declare-fun b!1464886 () Bool)

(assert (=> b!1464886 (= e!934446 e!934447)))

(declare-fun c!241554 () Bool)

(assert (=> b!1464886 (= c!241554 (<= lt!507177 0))))

(declare-fun d!429763 () Bool)

(declare-fun e!934448 () Bool)

(assert (=> d!429763 e!934448))

(declare-fun res!663104 () Bool)

(assert (=> d!429763 (=> (not res!663104) (not e!934448))))

(declare-fun lt!508939 () List!15254)

(assert (=> d!429763 (= res!663104 (= ((_ map implies) (content!2245 lt!508939) (content!2245 lt!507188)) ((as const (InoxSet Token!5012)) true)))))

(assert (=> d!429763 (= lt!508939 e!934446)))

(declare-fun c!241555 () Bool)

(assert (=> d!429763 (= c!241555 ((_ is Nil!15188) lt!507188))))

(assert (=> d!429763 (= (drop!745 lt!507188 lt!507177) lt!508939)))

(declare-fun b!1464887 () Bool)

(declare-fun e!934444 () Int)

(assert (=> b!1464887 (= e!934448 (= (size!12424 lt!508939) e!934444))))

(declare-fun c!241556 () Bool)

(assert (=> b!1464887 (= c!241556 (<= lt!507177 0))))

(declare-fun b!1464888 () Bool)

(assert (=> b!1464888 (= e!934444 call!98538)))

(declare-fun bm!98533 () Bool)

(assert (=> bm!98533 (= call!98538 (size!12424 lt!507188))))

(declare-fun b!1464889 () Bool)

(assert (=> b!1464889 (= e!934444 e!934445)))

(declare-fun c!241557 () Bool)

(assert (=> b!1464889 (= c!241557 (>= lt!507177 call!98538))))

(declare-fun b!1464890 () Bool)

(assert (=> b!1464890 (= e!934447 (drop!745 (t!134647 lt!507188) (- lt!507177 1)))))

(assert (= (and d!429763 c!241555) b!1464885))

(assert (= (and d!429763 (not c!241555)) b!1464886))

(assert (= (and b!1464886 c!241554) b!1464882))

(assert (= (and b!1464886 (not c!241554)) b!1464890))

(assert (= (and d!429763 res!663104) b!1464887))

(assert (= (and b!1464887 c!241556) b!1464888))

(assert (= (and b!1464887 (not c!241556)) b!1464889))

(assert (= (and b!1464889 c!241557) b!1464883))

(assert (= (and b!1464889 (not c!241557)) b!1464884))

(assert (= (or b!1464888 b!1464889 b!1464884) bm!98533))

(declare-fun m!1706417 () Bool)

(assert (=> d!429763 m!1706417))

(declare-fun m!1706419 () Bool)

(assert (=> d!429763 m!1706419))

(declare-fun m!1706421 () Bool)

(assert (=> b!1464887 m!1706421))

(assert (=> bm!98533 m!1706387))

(declare-fun m!1706423 () Bool)

(assert (=> b!1464890 m!1706423))

(assert (=> b!1463184 d!429763))

(declare-fun d!429765 () Bool)

(declare-fun lt!508940 () Token!5012)

(assert (=> d!429765 (contains!2913 lt!507184 lt!508940)))

(declare-fun e!934450 () Token!5012)

(assert (=> d!429765 (= lt!508940 e!934450)))

(declare-fun c!241558 () Bool)

(assert (=> d!429765 (= c!241558 (= 0 0))))

(declare-fun e!934449 () Bool)

(assert (=> d!429765 e!934449))

(declare-fun res!663105 () Bool)

(assert (=> d!429765 (=> (not res!663105) (not e!934449))))

(assert (=> d!429765 (= res!663105 (<= 0 0))))

(assert (=> d!429765 (= (apply!3966 lt!507184 0) lt!508940)))

(declare-fun b!1464891 () Bool)

(assert (=> b!1464891 (= e!934449 (< 0 (size!12424 lt!507184)))))

(declare-fun b!1464892 () Bool)

(assert (=> b!1464892 (= e!934450 (head!3020 lt!507184))))

(declare-fun b!1464893 () Bool)

(assert (=> b!1464893 (= e!934450 (apply!3966 (tail!2177 lt!507184) (- 0 1)))))

(assert (= (and d!429765 res!663105) b!1464891))

(assert (= (and d!429765 c!241558) b!1464892))

(assert (= (and d!429765 (not c!241558)) b!1464893))

(declare-fun m!1706425 () Bool)

(assert (=> d!429765 m!1706425))

(assert (=> b!1464891 m!1706415))

(declare-fun m!1706427 () Bool)

(assert (=> b!1464892 m!1706427))

(declare-fun m!1706429 () Bool)

(assert (=> b!1464893 m!1706429))

(assert (=> b!1464893 m!1706429))

(declare-fun m!1706431 () Bool)

(assert (=> b!1464893 m!1706431))

(assert (=> b!1463184 d!429765))

(declare-fun d!429767 () Bool)

(assert (=> d!429767 (= (head!3020 (drop!745 lt!507184 0)) (h!20589 (drop!745 lt!507184 0)))))

(assert (=> b!1463184 d!429767))

(declare-fun d!429769 () Bool)

(declare-fun lt!508941 () Bool)

(declare-fun e!934452 () Bool)

(assert (=> d!429769 (= lt!508941 e!934452)))

(declare-fun res!663106 () Bool)

(assert (=> d!429769 (=> (not res!663106) (not e!934452))))

(assert (=> d!429769 (= res!663106 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 (apply!3965 lt!507005 0)))))) (list!6083 (singletonSeq!1281 (apply!3965 lt!507005 0)))))))

(declare-fun e!934451 () Bool)

(assert (=> d!429769 (= lt!508941 e!934451)))

(declare-fun res!663108 () Bool)

(assert (=> d!429769 (=> (not res!663108) (not e!934451))))

(declare-fun lt!508942 () tuple2!14256)

(assert (=> d!429769 (= res!663108 (= (size!12423 (_1!8014 lt!508942)) 1))))

(assert (=> d!429769 (= lt!508942 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 (apply!3965 lt!507005 0)))))))

(assert (=> d!429769 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!429769 (= (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (apply!3965 lt!507005 0)) lt!508941)))

(declare-fun b!1464894 () Bool)

(declare-fun res!663107 () Bool)

(assert (=> b!1464894 (=> (not res!663107) (not e!934451))))

(assert (=> b!1464894 (= res!663107 (= (apply!3965 (_1!8014 lt!508942) 0) (apply!3965 lt!507005 0)))))

(declare-fun b!1464895 () Bool)

(assert (=> b!1464895 (= e!934451 (isEmpty!9544 (_2!8014 lt!508942)))))

(declare-fun b!1464896 () Bool)

(assert (=> b!1464896 (= e!934452 (isEmpty!9544 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 (apply!3965 lt!507005 0)))))))))

(assert (= (and d!429769 res!663108) b!1464894))

(assert (= (and b!1464894 res!663107) b!1464895))

(assert (= (and d!429769 res!663106) b!1464896))

(assert (=> d!429769 m!1701757))

(declare-fun m!1706433 () Bool)

(assert (=> d!429769 m!1706433))

(declare-fun m!1706435 () Bool)

(assert (=> d!429769 m!1706435))

(assert (=> d!429769 m!1706435))

(declare-fun m!1706437 () Bool)

(assert (=> d!429769 m!1706437))

(declare-fun m!1706439 () Bool)

(assert (=> d!429769 m!1706439))

(assert (=> d!429769 m!1706433))

(declare-fun m!1706441 () Bool)

(assert (=> d!429769 m!1706441))

(declare-fun m!1706443 () Bool)

(assert (=> d!429769 m!1706443))

(assert (=> d!429769 m!1701897))

(assert (=> d!429769 m!1706433))

(declare-fun m!1706445 () Bool)

(assert (=> b!1464894 m!1706445))

(declare-fun m!1706447 () Bool)

(assert (=> b!1464895 m!1706447))

(assert (=> b!1464896 m!1701897))

(assert (=> b!1464896 m!1706433))

(assert (=> b!1464896 m!1706433))

(assert (=> b!1464896 m!1706435))

(assert (=> b!1464896 m!1706435))

(assert (=> b!1464896 m!1706437))

(declare-fun m!1706449 () Bool)

(assert (=> b!1464896 m!1706449))

(assert (=> b!1463184 d!429769))

(declare-fun d!429771 () Bool)

(assert (=> d!429771 (= (tail!2177 (drop!745 lt!507168 lt!507187)) (drop!745 lt!507168 (+ lt!507187 1)))))

(declare-fun lt!508945 () Unit!24509)

(declare-fun choose!9016 (List!15254 Int) Unit!24509)

(assert (=> d!429771 (= lt!508945 (choose!9016 lt!507168 lt!507187))))

(declare-fun e!934455 () Bool)

(assert (=> d!429771 e!934455))

(declare-fun res!663111 () Bool)

(assert (=> d!429771 (=> (not res!663111) (not e!934455))))

(assert (=> d!429771 (= res!663111 (>= lt!507187 0))))

(assert (=> d!429771 (= (lemmaDropTail!475 lt!507168 lt!507187) lt!508945)))

(declare-fun b!1464899 () Bool)

(assert (=> b!1464899 (= e!934455 (< lt!507187 (size!12424 lt!507168)))))

(assert (= (and d!429771 res!663111) b!1464899))

(assert (=> d!429771 m!1701865))

(assert (=> d!429771 m!1701865))

(assert (=> d!429771 m!1701867))

(assert (=> d!429771 m!1701901))

(declare-fun m!1706451 () Bool)

(assert (=> d!429771 m!1706451))

(declare-fun m!1706453 () Bool)

(assert (=> b!1464899 m!1706453))

(assert (=> b!1463184 d!429771))

(declare-fun d!429773 () Bool)

(declare-fun lt!508946 () Token!5012)

(assert (=> d!429773 (= lt!508946 (apply!3966 (list!6083 lt!507005) (+ 0 1)))))

(assert (=> d!429773 (= lt!508946 (apply!3978 (c!241182 lt!507005) (+ 0 1)))))

(declare-fun e!934456 () Bool)

(assert (=> d!429773 e!934456))

(declare-fun res!663112 () Bool)

(assert (=> d!429773 (=> (not res!663112) (not e!934456))))

(assert (=> d!429773 (= res!663112 (<= 0 (+ 0 1)))))

(assert (=> d!429773 (= (apply!3965 lt!507005 (+ 0 1)) lt!508946)))

(declare-fun b!1464900 () Bool)

(assert (=> b!1464900 (= e!934456 (< (+ 0 1) (size!12423 lt!507005)))))

(assert (= (and d!429773 res!663112) b!1464900))

(assert (=> d!429773 m!1701641))

(assert (=> d!429773 m!1701641))

(declare-fun m!1706455 () Bool)

(assert (=> d!429773 m!1706455))

(declare-fun m!1706457 () Bool)

(assert (=> d!429773 m!1706457))

(assert (=> b!1464900 m!1701861))

(assert (=> b!1463184 d!429773))

(declare-fun b!1464901 () Bool)

(declare-fun e!934460 () List!15254)

(assert (=> b!1464901 (= e!934460 lt!507181)))

(declare-fun b!1464902 () Bool)

(declare-fun e!934458 () Int)

(assert (=> b!1464902 (= e!934458 0)))

(declare-fun b!1464903 () Bool)

(declare-fun call!98539 () Int)

(assert (=> b!1464903 (= e!934458 (- call!98539 (+ 0 1)))))

(declare-fun b!1464904 () Bool)

(declare-fun e!934459 () List!15254)

(assert (=> b!1464904 (= e!934459 Nil!15188)))

(declare-fun b!1464905 () Bool)

(assert (=> b!1464905 (= e!934459 e!934460)))

(declare-fun c!241559 () Bool)

(assert (=> b!1464905 (= c!241559 (<= (+ 0 1) 0))))

(declare-fun d!429775 () Bool)

(declare-fun e!934461 () Bool)

(assert (=> d!429775 e!934461))

(declare-fun res!663113 () Bool)

(assert (=> d!429775 (=> (not res!663113) (not e!934461))))

(declare-fun lt!508947 () List!15254)

(assert (=> d!429775 (= res!663113 (= ((_ map implies) (content!2245 lt!508947) (content!2245 lt!507181)) ((as const (InoxSet Token!5012)) true)))))

(assert (=> d!429775 (= lt!508947 e!934459)))

(declare-fun c!241560 () Bool)

(assert (=> d!429775 (= c!241560 ((_ is Nil!15188) lt!507181))))

(assert (=> d!429775 (= (drop!745 lt!507181 (+ 0 1)) lt!508947)))

(declare-fun b!1464906 () Bool)

(declare-fun e!934457 () Int)

(assert (=> b!1464906 (= e!934461 (= (size!12424 lt!508947) e!934457))))

(declare-fun c!241561 () Bool)

(assert (=> b!1464906 (= c!241561 (<= (+ 0 1) 0))))

(declare-fun b!1464907 () Bool)

(assert (=> b!1464907 (= e!934457 call!98539)))

(declare-fun bm!98534 () Bool)

(assert (=> bm!98534 (= call!98539 (size!12424 lt!507181))))

(declare-fun b!1464908 () Bool)

(assert (=> b!1464908 (= e!934457 e!934458)))

(declare-fun c!241562 () Bool)

(assert (=> b!1464908 (= c!241562 (>= (+ 0 1) call!98539))))

(declare-fun b!1464909 () Bool)

(assert (=> b!1464909 (= e!934460 (drop!745 (t!134647 lt!507181) (- (+ 0 1) 1)))))

(assert (= (and d!429775 c!241560) b!1464904))

(assert (= (and d!429775 (not c!241560)) b!1464905))

(assert (= (and b!1464905 c!241559) b!1464901))

(assert (= (and b!1464905 (not c!241559)) b!1464909))

(assert (= (and d!429775 res!663113) b!1464906))

(assert (= (and b!1464906 c!241561) b!1464907))

(assert (= (and b!1464906 (not c!241561)) b!1464908))

(assert (= (and b!1464908 c!241562) b!1464902))

(assert (= (and b!1464908 (not c!241562)) b!1464903))

(assert (= (or b!1464907 b!1464908 b!1464903) bm!98534))

(declare-fun m!1706459 () Bool)

(assert (=> d!429775 m!1706459))

(declare-fun m!1706461 () Bool)

(assert (=> d!429775 m!1706461))

(declare-fun m!1706463 () Bool)

(assert (=> b!1464906 m!1706463))

(declare-fun m!1706465 () Bool)

(assert (=> bm!98534 m!1706465))

(declare-fun m!1706467 () Bool)

(assert (=> b!1464909 m!1706467))

(assert (=> b!1463184 d!429775))

(declare-fun b!1464910 () Bool)

(declare-fun e!934465 () List!15254)

(assert (=> b!1464910 (= e!934465 lt!507168)))

(declare-fun b!1464911 () Bool)

(declare-fun e!934463 () Int)

(assert (=> b!1464911 (= e!934463 0)))

(declare-fun b!1464912 () Bool)

(declare-fun call!98540 () Int)

(assert (=> b!1464912 (= e!934463 (- call!98540 lt!507187))))

(declare-fun b!1464913 () Bool)

(declare-fun e!934464 () List!15254)

(assert (=> b!1464913 (= e!934464 Nil!15188)))

(declare-fun b!1464914 () Bool)

(assert (=> b!1464914 (= e!934464 e!934465)))

(declare-fun c!241563 () Bool)

(assert (=> b!1464914 (= c!241563 (<= lt!507187 0))))

(declare-fun d!429777 () Bool)

(declare-fun e!934466 () Bool)

(assert (=> d!429777 e!934466))

(declare-fun res!663114 () Bool)

(assert (=> d!429777 (=> (not res!663114) (not e!934466))))

(declare-fun lt!508948 () List!15254)

(assert (=> d!429777 (= res!663114 (= ((_ map implies) (content!2245 lt!508948) (content!2245 lt!507168)) ((as const (InoxSet Token!5012)) true)))))

(assert (=> d!429777 (= lt!508948 e!934464)))

(declare-fun c!241564 () Bool)

(assert (=> d!429777 (= c!241564 ((_ is Nil!15188) lt!507168))))

(assert (=> d!429777 (= (drop!745 lt!507168 lt!507187) lt!508948)))

(declare-fun b!1464915 () Bool)

(declare-fun e!934462 () Int)

(assert (=> b!1464915 (= e!934466 (= (size!12424 lt!508948) e!934462))))

(declare-fun c!241565 () Bool)

(assert (=> b!1464915 (= c!241565 (<= lt!507187 0))))

(declare-fun b!1464916 () Bool)

(assert (=> b!1464916 (= e!934462 call!98540)))

(declare-fun bm!98535 () Bool)

(assert (=> bm!98535 (= call!98540 (size!12424 lt!507168))))

(declare-fun b!1464917 () Bool)

(assert (=> b!1464917 (= e!934462 e!934463)))

(declare-fun c!241566 () Bool)

(assert (=> b!1464917 (= c!241566 (>= lt!507187 call!98540))))

(declare-fun b!1464918 () Bool)

(assert (=> b!1464918 (= e!934465 (drop!745 (t!134647 lt!507168) (- lt!507187 1)))))

(assert (= (and d!429777 c!241564) b!1464913))

(assert (= (and d!429777 (not c!241564)) b!1464914))

(assert (= (and b!1464914 c!241563) b!1464910))

(assert (= (and b!1464914 (not c!241563)) b!1464918))

(assert (= (and d!429777 res!663114) b!1464915))

(assert (= (and b!1464915 c!241565) b!1464916))

(assert (= (and b!1464915 (not c!241565)) b!1464917))

(assert (= (and b!1464917 c!241566) b!1464911))

(assert (= (and b!1464917 (not c!241566)) b!1464912))

(assert (= (or b!1464916 b!1464917 b!1464912) bm!98535))

(declare-fun m!1706469 () Bool)

(assert (=> d!429777 m!1706469))

(declare-fun m!1706471 () Bool)

(assert (=> d!429777 m!1706471))

(declare-fun m!1706473 () Bool)

(assert (=> b!1464915 m!1706473))

(assert (=> bm!98535 m!1706453))

(declare-fun m!1706475 () Bool)

(assert (=> b!1464918 m!1706475))

(assert (=> b!1463184 d!429777))

(declare-fun b!1464919 () Bool)

(declare-fun e!934470 () List!15254)

(assert (=> b!1464919 (= e!934470 lt!507184)))

(declare-fun b!1464920 () Bool)

(declare-fun e!934468 () Int)

(assert (=> b!1464920 (= e!934468 0)))

(declare-fun b!1464921 () Bool)

(declare-fun call!98541 () Int)

(assert (=> b!1464921 (= e!934468 (- call!98541 0))))

(declare-fun b!1464922 () Bool)

(declare-fun e!934469 () List!15254)

(assert (=> b!1464922 (= e!934469 Nil!15188)))

(declare-fun b!1464923 () Bool)

(assert (=> b!1464923 (= e!934469 e!934470)))

(declare-fun c!241567 () Bool)

(assert (=> b!1464923 (= c!241567 (<= 0 0))))

(declare-fun d!429779 () Bool)

(declare-fun e!934471 () Bool)

(assert (=> d!429779 e!934471))

(declare-fun res!663115 () Bool)

(assert (=> d!429779 (=> (not res!663115) (not e!934471))))

(declare-fun lt!508949 () List!15254)

(assert (=> d!429779 (= res!663115 (= ((_ map implies) (content!2245 lt!508949) (content!2245 lt!507184)) ((as const (InoxSet Token!5012)) true)))))

(assert (=> d!429779 (= lt!508949 e!934469)))

(declare-fun c!241568 () Bool)

(assert (=> d!429779 (= c!241568 ((_ is Nil!15188) lt!507184))))

(assert (=> d!429779 (= (drop!745 lt!507184 0) lt!508949)))

(declare-fun b!1464924 () Bool)

(declare-fun e!934467 () Int)

(assert (=> b!1464924 (= e!934471 (= (size!12424 lt!508949) e!934467))))

(declare-fun c!241569 () Bool)

(assert (=> b!1464924 (= c!241569 (<= 0 0))))

(declare-fun b!1464925 () Bool)

(assert (=> b!1464925 (= e!934467 call!98541)))

(declare-fun bm!98536 () Bool)

(assert (=> bm!98536 (= call!98541 (size!12424 lt!507184))))

(declare-fun b!1464926 () Bool)

(assert (=> b!1464926 (= e!934467 e!934468)))

(declare-fun c!241570 () Bool)

(assert (=> b!1464926 (= c!241570 (>= 0 call!98541))))

(declare-fun b!1464927 () Bool)

(assert (=> b!1464927 (= e!934470 (drop!745 (t!134647 lt!507184) (- 0 1)))))

(assert (= (and d!429779 c!241568) b!1464922))

(assert (= (and d!429779 (not c!241568)) b!1464923))

(assert (= (and b!1464923 c!241567) b!1464919))

(assert (= (and b!1464923 (not c!241567)) b!1464927))

(assert (= (and d!429779 res!663115) b!1464924))

(assert (= (and b!1464924 c!241569) b!1464925))

(assert (= (and b!1464924 (not c!241569)) b!1464926))

(assert (= (and b!1464926 c!241570) b!1464920))

(assert (= (and b!1464926 (not c!241570)) b!1464921))

(assert (= (or b!1464925 b!1464926 b!1464921) bm!98536))

(declare-fun m!1706477 () Bool)

(assert (=> d!429779 m!1706477))

(declare-fun m!1706479 () Bool)

(assert (=> d!429779 m!1706479))

(declare-fun m!1706481 () Bool)

(assert (=> b!1464924 m!1706481))

(assert (=> bm!98536 m!1706415))

(declare-fun m!1706483 () Bool)

(assert (=> b!1464927 m!1706483))

(assert (=> b!1463184 d!429779))

(declare-fun d!429781 () Bool)

(assert (=> d!429781 (= (head!3020 (drop!745 lt!507188 lt!507177)) (h!20589 (drop!745 lt!507188 lt!507177)))))

(assert (=> b!1463184 d!429781))

(declare-fun d!429783 () Bool)

(assert (=> d!429783 (= (tail!2177 (drop!745 lt!507181 0)) (t!134647 (drop!745 lt!507181 0)))))

(assert (=> b!1463184 d!429783))

(declare-fun d!429785 () Bool)

(declare-fun lt!508950 () Bool)

(declare-fun e!934473 () Bool)

(assert (=> d!429785 (= lt!508950 e!934473)))

(declare-fun res!663116 () Bool)

(assert (=> d!429785 (=> (not res!663116) (not e!934473))))

(assert (=> d!429785 (= res!663116 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!507173))))) (list!6083 (singletonSeq!1281 lt!507173))))))

(declare-fun e!934472 () Bool)

(assert (=> d!429785 (= lt!508950 e!934472)))

(declare-fun res!663118 () Bool)

(assert (=> d!429785 (=> (not res!663118) (not e!934472))))

(declare-fun lt!508951 () tuple2!14256)

(assert (=> d!429785 (= res!663118 (= (size!12423 (_1!8014 lt!508951)) 1))))

(assert (=> d!429785 (= lt!508951 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!507173))))))

(assert (=> d!429785 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!429785 (= (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) lt!507173) lt!508950)))

(declare-fun b!1464928 () Bool)

(declare-fun res!663117 () Bool)

(assert (=> b!1464928 (=> (not res!663117) (not e!934472))))

(assert (=> b!1464928 (= res!663117 (= (apply!3965 (_1!8014 lt!508951) 0) lt!507173))))

(declare-fun b!1464929 () Bool)

(assert (=> b!1464929 (= e!934472 (isEmpty!9544 (_2!8014 lt!508951)))))

(declare-fun b!1464930 () Bool)

(assert (=> b!1464930 (= e!934473 (isEmpty!9544 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 lt!507173))))))))

(assert (= (and d!429785 res!663118) b!1464928))

(assert (= (and b!1464928 res!663117) b!1464929))

(assert (= (and d!429785 res!663116) b!1464930))

(assert (=> d!429785 m!1701757))

(declare-fun m!1706485 () Bool)

(assert (=> d!429785 m!1706485))

(declare-fun m!1706487 () Bool)

(assert (=> d!429785 m!1706487))

(assert (=> d!429785 m!1706487))

(declare-fun m!1706489 () Bool)

(assert (=> d!429785 m!1706489))

(declare-fun m!1706491 () Bool)

(assert (=> d!429785 m!1706491))

(assert (=> d!429785 m!1706485))

(declare-fun m!1706493 () Bool)

(assert (=> d!429785 m!1706493))

(declare-fun m!1706495 () Bool)

(assert (=> d!429785 m!1706495))

(assert (=> d!429785 m!1706485))

(declare-fun m!1706497 () Bool)

(assert (=> b!1464928 m!1706497))

(declare-fun m!1706499 () Bool)

(assert (=> b!1464929 m!1706499))

(assert (=> b!1464930 m!1706485))

(assert (=> b!1464930 m!1706485))

(assert (=> b!1464930 m!1706487))

(assert (=> b!1464930 m!1706487))

(assert (=> b!1464930 m!1706489))

(declare-fun m!1706501 () Bool)

(assert (=> b!1464930 m!1706501))

(assert (=> b!1463184 d!429785))

(declare-fun b!1464931 () Bool)

(declare-fun e!934477 () List!15254)

(assert (=> b!1464931 (= e!934477 lt!507168)))

(declare-fun b!1464932 () Bool)

(declare-fun e!934475 () Int)

(assert (=> b!1464932 (= e!934475 0)))

(declare-fun b!1464933 () Bool)

(declare-fun call!98542 () Int)

(assert (=> b!1464933 (= e!934475 (- call!98542 (+ lt!507187 1)))))

(declare-fun b!1464934 () Bool)

(declare-fun e!934476 () List!15254)

(assert (=> b!1464934 (= e!934476 Nil!15188)))

(declare-fun b!1464935 () Bool)

(assert (=> b!1464935 (= e!934476 e!934477)))

(declare-fun c!241571 () Bool)

(assert (=> b!1464935 (= c!241571 (<= (+ lt!507187 1) 0))))

(declare-fun d!429787 () Bool)

(declare-fun e!934478 () Bool)

(assert (=> d!429787 e!934478))

(declare-fun res!663119 () Bool)

(assert (=> d!429787 (=> (not res!663119) (not e!934478))))

(declare-fun lt!508952 () List!15254)

(assert (=> d!429787 (= res!663119 (= ((_ map implies) (content!2245 lt!508952) (content!2245 lt!507168)) ((as const (InoxSet Token!5012)) true)))))

(assert (=> d!429787 (= lt!508952 e!934476)))

(declare-fun c!241572 () Bool)

(assert (=> d!429787 (= c!241572 ((_ is Nil!15188) lt!507168))))

(assert (=> d!429787 (= (drop!745 lt!507168 (+ lt!507187 1)) lt!508952)))

(declare-fun b!1464936 () Bool)

(declare-fun e!934474 () Int)

(assert (=> b!1464936 (= e!934478 (= (size!12424 lt!508952) e!934474))))

(declare-fun c!241573 () Bool)

(assert (=> b!1464936 (= c!241573 (<= (+ lt!507187 1) 0))))

(declare-fun b!1464937 () Bool)

(assert (=> b!1464937 (= e!934474 call!98542)))

(declare-fun bm!98537 () Bool)

(assert (=> bm!98537 (= call!98542 (size!12424 lt!507168))))

(declare-fun b!1464938 () Bool)

(assert (=> b!1464938 (= e!934474 e!934475)))

(declare-fun c!241574 () Bool)

(assert (=> b!1464938 (= c!241574 (>= (+ lt!507187 1) call!98542))))

(declare-fun b!1464939 () Bool)

(assert (=> b!1464939 (= e!934477 (drop!745 (t!134647 lt!507168) (- (+ lt!507187 1) 1)))))

(assert (= (and d!429787 c!241572) b!1464934))

(assert (= (and d!429787 (not c!241572)) b!1464935))

(assert (= (and b!1464935 c!241571) b!1464931))

(assert (= (and b!1464935 (not c!241571)) b!1464939))

(assert (= (and d!429787 res!663119) b!1464936))

(assert (= (and b!1464936 c!241573) b!1464937))

(assert (= (and b!1464936 (not c!241573)) b!1464938))

(assert (= (and b!1464938 c!241574) b!1464932))

(assert (= (and b!1464938 (not c!241574)) b!1464933))

(assert (= (or b!1464937 b!1464938 b!1464933) bm!98537))

(declare-fun m!1706503 () Bool)

(assert (=> d!429787 m!1706503))

(assert (=> d!429787 m!1706471))

(declare-fun m!1706505 () Bool)

(assert (=> b!1464936 m!1706505))

(assert (=> bm!98537 m!1706453))

(declare-fun m!1706507 () Bool)

(assert (=> b!1464939 m!1706507))

(assert (=> b!1463184 d!429787))

(declare-fun d!429789 () Bool)

(assert (=> d!429789 (= (head!3020 (drop!745 lt!507188 lt!507177)) (apply!3966 lt!507188 lt!507177))))

(declare-fun lt!508953 () Unit!24509)

(assert (=> d!429789 (= lt!508953 (choose!9015 lt!507188 lt!507177))))

(declare-fun e!934479 () Bool)

(assert (=> d!429789 e!934479))

(declare-fun res!663120 () Bool)

(assert (=> d!429789 (=> (not res!663120) (not e!934479))))

(assert (=> d!429789 (= res!663120 (>= lt!507177 0))))

(assert (=> d!429789 (= (lemmaDropApply!495 lt!507188 lt!507177) lt!508953)))

(declare-fun b!1464940 () Bool)

(assert (=> b!1464940 (= e!934479 (< lt!507177 (size!12424 lt!507188)))))

(assert (= (and d!429789 res!663120) b!1464940))

(assert (=> d!429789 m!1701893))

(assert (=> d!429789 m!1701893))

(assert (=> d!429789 m!1701895))

(assert (=> d!429789 m!1701881))

(declare-fun m!1706509 () Bool)

(assert (=> d!429789 m!1706509))

(assert (=> b!1464940 m!1706387))

(assert (=> b!1463184 d!429789))

(declare-fun d!429791 () Bool)

(declare-fun lt!508954 () Token!5012)

(assert (=> d!429791 (= lt!508954 (apply!3966 (list!6083 lt!507005) 0))))

(assert (=> d!429791 (= lt!508954 (apply!3978 (c!241182 lt!507005) 0))))

(declare-fun e!934480 () Bool)

(assert (=> d!429791 e!934480))

(declare-fun res!663121 () Bool)

(assert (=> d!429791 (=> (not res!663121) (not e!934480))))

(assert (=> d!429791 (= res!663121 (<= 0 0))))

(assert (=> d!429791 (= (apply!3965 lt!507005 0) lt!508954)))

(declare-fun b!1464941 () Bool)

(assert (=> b!1464941 (= e!934480 (< 0 (size!12423 lt!507005)))))

(assert (= (and d!429791 res!663121) b!1464941))

(assert (=> d!429791 m!1701641))

(assert (=> d!429791 m!1701641))

(declare-fun m!1706511 () Bool)

(assert (=> d!429791 m!1706511))

(declare-fun m!1706513 () Bool)

(assert (=> d!429791 m!1706513))

(assert (=> b!1464941 m!1701861))

(assert (=> b!1463184 d!429791))

(declare-fun d!429793 () Bool)

(assert (=> d!429793 (= (tail!2177 (drop!745 lt!507181 0)) (drop!745 lt!507181 (+ 0 1)))))

(declare-fun lt!508955 () Unit!24509)

(assert (=> d!429793 (= lt!508955 (choose!9016 lt!507181 0))))

(declare-fun e!934481 () Bool)

(assert (=> d!429793 e!934481))

(declare-fun res!663122 () Bool)

(assert (=> d!429793 (=> (not res!663122) (not e!934481))))

(assert (=> d!429793 (= res!663122 (>= 0 0))))

(assert (=> d!429793 (= (lemmaDropTail!475 lt!507181 0) lt!508955)))

(declare-fun b!1464942 () Bool)

(assert (=> b!1464942 (= e!934481 (< 0 (size!12424 lt!507181)))))

(assert (= (and d!429793 res!663122) b!1464942))

(assert (=> d!429793 m!1701877))

(assert (=> d!429793 m!1701877))

(assert (=> d!429793 m!1701879))

(assert (=> d!429793 m!1701891))

(declare-fun m!1706515 () Bool)

(assert (=> d!429793 m!1706515))

(assert (=> b!1464942 m!1706465))

(assert (=> b!1463184 d!429793))

(declare-fun d!429795 () Bool)

(assert (=> d!429795 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) lt!507173)))

(declare-fun lt!508956 () Unit!24509)

(assert (=> d!429795 (= lt!508956 (choose!9003 Lexer!2329 (rules!11706 thiss!10022) lt!507190 lt!507173))))

(assert (=> d!429795 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!429795 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!433 Lexer!2329 (rules!11706 thiss!10022) lt!507190 lt!507173) lt!508956)))

(declare-fun bs!344685 () Bool)

(assert (= bs!344685 d!429795))

(assert (=> bs!344685 m!1701913))

(declare-fun m!1706517 () Bool)

(assert (=> bs!344685 m!1706517))

(assert (=> bs!344685 m!1701757))

(assert (=> b!1463184 d!429795))

(declare-fun d!429797 () Bool)

(declare-fun lt!508959 () Int)

(assert (=> d!429797 (= lt!508959 (size!12429 (list!6087 (charsOf!1538 (apply!3965 lt!507005 (+ 0 1))))))))

(declare-fun size!12433 (Conc!5176) Int)

(assert (=> d!429797 (= lt!508959 (size!12433 (c!241180 (charsOf!1538 (apply!3965 lt!507005 (+ 0 1))))))))

(assert (=> d!429797 (= (size!12425 (charsOf!1538 (apply!3965 lt!507005 (+ 0 1)))) lt!508959)))

(declare-fun bs!344686 () Bool)

(assert (= bs!344686 d!429797))

(assert (=> bs!344686 m!1701911))

(declare-fun m!1706519 () Bool)

(assert (=> bs!344686 m!1706519))

(assert (=> bs!344686 m!1706519))

(declare-fun m!1706521 () Bool)

(assert (=> bs!344686 m!1706521))

(declare-fun m!1706523 () Bool)

(assert (=> bs!344686 m!1706523))

(assert (=> b!1463184 d!429797))

(declare-fun b!1464943 () Bool)

(declare-fun e!934485 () List!15254)

(assert (=> b!1464943 (= e!934485 lt!507181)))

(declare-fun b!1464944 () Bool)

(declare-fun e!934483 () Int)

(assert (=> b!1464944 (= e!934483 0)))

(declare-fun b!1464945 () Bool)

(declare-fun call!98543 () Int)

(assert (=> b!1464945 (= e!934483 (- call!98543 0))))

(declare-fun b!1464946 () Bool)

(declare-fun e!934484 () List!15254)

(assert (=> b!1464946 (= e!934484 Nil!15188)))

(declare-fun b!1464947 () Bool)

(assert (=> b!1464947 (= e!934484 e!934485)))

(declare-fun c!241575 () Bool)

(assert (=> b!1464947 (= c!241575 (<= 0 0))))

(declare-fun d!429799 () Bool)

(declare-fun e!934486 () Bool)

(assert (=> d!429799 e!934486))

(declare-fun res!663123 () Bool)

(assert (=> d!429799 (=> (not res!663123) (not e!934486))))

(declare-fun lt!508960 () List!15254)

(assert (=> d!429799 (= res!663123 (= ((_ map implies) (content!2245 lt!508960) (content!2245 lt!507181)) ((as const (InoxSet Token!5012)) true)))))

(assert (=> d!429799 (= lt!508960 e!934484)))

(declare-fun c!241576 () Bool)

(assert (=> d!429799 (= c!241576 ((_ is Nil!15188) lt!507181))))

(assert (=> d!429799 (= (drop!745 lt!507181 0) lt!508960)))

(declare-fun b!1464948 () Bool)

(declare-fun e!934482 () Int)

(assert (=> b!1464948 (= e!934486 (= (size!12424 lt!508960) e!934482))))

(declare-fun c!241577 () Bool)

(assert (=> b!1464948 (= c!241577 (<= 0 0))))

(declare-fun b!1464949 () Bool)

(assert (=> b!1464949 (= e!934482 call!98543)))

(declare-fun bm!98538 () Bool)

(assert (=> bm!98538 (= call!98543 (size!12424 lt!507181))))

(declare-fun b!1464950 () Bool)

(assert (=> b!1464950 (= e!934482 e!934483)))

(declare-fun c!241578 () Bool)

(assert (=> b!1464950 (= c!241578 (>= 0 call!98543))))

(declare-fun b!1464951 () Bool)

(assert (=> b!1464951 (= e!934485 (drop!745 (t!134647 lt!507181) (- 0 1)))))

(assert (= (and d!429799 c!241576) b!1464946))

(assert (= (and d!429799 (not c!241576)) b!1464947))

(assert (= (and b!1464947 c!241575) b!1464943))

(assert (= (and b!1464947 (not c!241575)) b!1464951))

(assert (= (and d!429799 res!663123) b!1464948))

(assert (= (and b!1464948 c!241577) b!1464949))

(assert (= (and b!1464948 (not c!241577)) b!1464950))

(assert (= (and b!1464950 c!241578) b!1464944))

(assert (= (and b!1464950 (not c!241578)) b!1464945))

(assert (= (or b!1464949 b!1464950 b!1464945) bm!98538))

(declare-fun m!1706525 () Bool)

(assert (=> d!429799 m!1706525))

(assert (=> d!429799 m!1706461))

(declare-fun m!1706527 () Bool)

(assert (=> b!1464948 m!1706527))

(assert (=> bm!98538 m!1706465))

(declare-fun m!1706529 () Bool)

(assert (=> b!1464951 m!1706529))

(assert (=> b!1463184 d!429799))

(declare-fun d!429801 () Bool)

(assert (=> d!429801 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) lt!507182)))

(declare-fun lt!508961 () Unit!24509)

(assert (=> d!429801 (= lt!508961 (choose!9003 Lexer!2329 (rules!11706 thiss!10022) lt!507160 lt!507182))))

(assert (=> d!429801 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!429801 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!433 Lexer!2329 (rules!11706 thiss!10022) lt!507160 lt!507182) lt!508961)))

(declare-fun bs!344687 () Bool)

(assert (= bs!344687 d!429801))

(assert (=> bs!344687 m!1701889))

(declare-fun m!1706531 () Bool)

(assert (=> bs!344687 m!1706531))

(assert (=> bs!344687 m!1701757))

(assert (=> b!1463184 d!429801))

(declare-fun d!429803 () Bool)

(declare-fun lt!508962 () BalanceConc!10292)

(assert (=> d!429803 (= (list!6087 lt!508962) (originalCharacters!3537 (apply!3965 lt!507005 (+ 0 1))))))

(assert (=> d!429803 (= lt!508962 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (apply!3965 lt!507005 (+ 0 1))))) (value!85885 (apply!3965 lt!507005 (+ 0 1)))))))

(assert (=> d!429803 (= (charsOf!1538 (apply!3965 lt!507005 (+ 0 1))) lt!508962)))

(declare-fun b_lambda!45685 () Bool)

(assert (=> (not b_lambda!45685) (not d!429803)))

(declare-fun t!134735 () Bool)

(declare-fun tb!82701 () Bool)

(assert (=> (and b!1463502 (= (toChars!3845 (transformation!2675 (h!20590 (rules!11706 other!32)))) (toChars!3845 (transformation!2675 (rule!4450 (apply!3965 lt!507005 (+ 0 1)))))) t!134735) tb!82701))

(declare-fun b!1464952 () Bool)

(declare-fun e!934487 () Bool)

(declare-fun tp!411864 () Bool)

(assert (=> b!1464952 (= e!934487 (and (inv!20311 (c!241180 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (apply!3965 lt!507005 (+ 0 1))))) (value!85885 (apply!3965 lt!507005 (+ 0 1)))))) tp!411864))))

(declare-fun result!99354 () Bool)

(assert (=> tb!82701 (= result!99354 (and (inv!20312 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (apply!3965 lt!507005 (+ 0 1))))) (value!85885 (apply!3965 lt!507005 (+ 0 1))))) e!934487))))

(assert (= tb!82701 b!1464952))

(declare-fun m!1706533 () Bool)

(assert (=> b!1464952 m!1706533))

(declare-fun m!1706535 () Bool)

(assert (=> tb!82701 m!1706535))

(assert (=> d!429803 t!134735))

(declare-fun b_and!99965 () Bool)

(assert (= b_and!99957 (and (=> t!134735 result!99354) b_and!99965)))

(declare-fun tb!82703 () Bool)

(declare-fun t!134737 () Bool)

(assert (=> (and b!1463508 (= (toChars!3845 (transformation!2675 (h!20590 (rules!11706 thiss!10022)))) (toChars!3845 (transformation!2675 (rule!4450 (apply!3965 lt!507005 (+ 0 1)))))) t!134737) tb!82703))

(declare-fun result!99356 () Bool)

(assert (= result!99356 result!99354))

(assert (=> d!429803 t!134737))

(declare-fun b_and!99967 () Bool)

(assert (= b_and!99959 (and (=> t!134737 result!99356) b_and!99967)))

(declare-fun m!1706537 () Bool)

(assert (=> d!429803 m!1706537))

(declare-fun m!1706539 () Bool)

(assert (=> d!429803 m!1706539))

(assert (=> b!1463184 d!429803))

(declare-fun d!429805 () Bool)

(declare-fun lt!508963 () Bool)

(declare-fun e!934489 () Bool)

(assert (=> d!429805 (= lt!508963 e!934489)))

(declare-fun res!663124 () Bool)

(assert (=> d!429805 (=> (not res!663124) (not e!934489))))

(assert (=> d!429805 (= res!663124 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 (apply!3965 lt!507005 (+ 0 1))))))) (list!6083 (singletonSeq!1281 (apply!3965 lt!507005 (+ 0 1))))))))

(declare-fun e!934488 () Bool)

(assert (=> d!429805 (= lt!508963 e!934488)))

(declare-fun res!663126 () Bool)

(assert (=> d!429805 (=> (not res!663126) (not e!934488))))

(declare-fun lt!508964 () tuple2!14256)

(assert (=> d!429805 (= res!663126 (= (size!12423 (_1!8014 lt!508964)) 1))))

(assert (=> d!429805 (= lt!508964 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 (apply!3965 lt!507005 (+ 0 1))))))))

(assert (=> d!429805 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!429805 (= (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (apply!3965 lt!507005 (+ 0 1))) lt!508963)))

(declare-fun b!1464953 () Bool)

(declare-fun res!663125 () Bool)

(assert (=> b!1464953 (=> (not res!663125) (not e!934488))))

(assert (=> b!1464953 (= res!663125 (= (apply!3965 (_1!8014 lt!508964) 0) (apply!3965 lt!507005 (+ 0 1))))))

(declare-fun b!1464954 () Bool)

(assert (=> b!1464954 (= e!934488 (isEmpty!9544 (_2!8014 lt!508964)))))

(declare-fun b!1464955 () Bool)

(assert (=> b!1464955 (= e!934489 (isEmpty!9544 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 (apply!3965 lt!507005 (+ 0 1))))))))))

(assert (= (and d!429805 res!663126) b!1464953))

(assert (= (and b!1464953 res!663125) b!1464954))

(assert (= (and d!429805 res!663124) b!1464955))

(assert (=> d!429805 m!1701757))

(declare-fun m!1706541 () Bool)

(assert (=> d!429805 m!1706541))

(declare-fun m!1706543 () Bool)

(assert (=> d!429805 m!1706543))

(assert (=> d!429805 m!1706543))

(declare-fun m!1706545 () Bool)

(assert (=> d!429805 m!1706545))

(declare-fun m!1706547 () Bool)

(assert (=> d!429805 m!1706547))

(assert (=> d!429805 m!1706541))

(declare-fun m!1706549 () Bool)

(assert (=> d!429805 m!1706549))

(declare-fun m!1706551 () Bool)

(assert (=> d!429805 m!1706551))

(assert (=> d!429805 m!1701871))

(assert (=> d!429805 m!1706541))

(declare-fun m!1706553 () Bool)

(assert (=> b!1464953 m!1706553))

(declare-fun m!1706555 () Bool)

(assert (=> b!1464954 m!1706555))

(assert (=> b!1464955 m!1701871))

(assert (=> b!1464955 m!1706541))

(assert (=> b!1464955 m!1706541))

(assert (=> b!1464955 m!1706543))

(assert (=> b!1464955 m!1706543))

(assert (=> b!1464955 m!1706545))

(declare-fun m!1706557 () Bool)

(assert (=> b!1464955 m!1706557))

(assert (=> b!1463184 d!429805))

(assert (=> b!1463184 d!428943))

(declare-fun d!429807 () Bool)

(assert (=> d!429807 (= (separableTokensPredicate!540 Lexer!2329 (apply!3965 lt!507005 0) (apply!3965 lt!507005 (+ 0 1)) (rules!11706 thiss!10022)) (not (prefixMatchZipperSequence!356 (rulesRegex!412 Lexer!2329 (rules!11706 thiss!10022)) (++!4097 (charsOf!1538 (apply!3965 lt!507005 0)) (singletonSeq!1282 (apply!3969 (charsOf!1538 (apply!3965 lt!507005 (+ 0 1))) 0))))))))

(declare-fun bs!344688 () Bool)

(assert (= bs!344688 d!429807))

(assert (=> bs!344688 m!1703243))

(declare-fun m!1706559 () Bool)

(assert (=> bs!344688 m!1706559))

(declare-fun m!1706561 () Bool)

(assert (=> bs!344688 m!1706561))

(declare-fun m!1706563 () Bool)

(assert (=> bs!344688 m!1706563))

(assert (=> bs!344688 m!1706559))

(assert (=> bs!344688 m!1702407))

(assert (=> bs!344688 m!1706561))

(declare-fun m!1706565 () Bool)

(assert (=> bs!344688 m!1706565))

(assert (=> bs!344688 m!1701897))

(assert (=> bs!344688 m!1703243))

(assert (=> bs!344688 m!1701871))

(assert (=> bs!344688 m!1701911))

(assert (=> bs!344688 m!1701911))

(assert (=> bs!344688 m!1706563))

(assert (=> bs!344688 m!1702407))

(assert (=> b!1463184 d!429807))

(declare-fun d!429809 () Bool)

(assert (=> d!429809 (= (isEmpty!9542 (list!6083 (tokens!2112 thiss!10022))) ((_ is Nil!15188) (list!6083 (tokens!2112 thiss!10022))))))

(assert (=> d!428875 d!429809))

(assert (=> d!428875 d!428891))

(declare-fun d!429811 () Bool)

(declare-fun lt!508965 () Bool)

(assert (=> d!429811 (= lt!508965 (isEmpty!9542 (list!6086 (c!241182 (tokens!2112 thiss!10022)))))))

(assert (=> d!429811 (= lt!508965 (= (size!12431 (c!241182 (tokens!2112 thiss!10022))) 0))))

(assert (=> d!429811 (= (isEmpty!9543 (c!241182 (tokens!2112 thiss!10022))) lt!508965)))

(declare-fun bs!344689 () Bool)

(assert (= bs!344689 d!429811))

(assert (=> bs!344689 m!1702377))

(assert (=> bs!344689 m!1702377))

(declare-fun m!1706567 () Bool)

(assert (=> bs!344689 m!1706567))

(declare-fun m!1706569 () Bool)

(assert (=> bs!344689 m!1706569))

(assert (=> d!428875 d!429811))

(assert (=> d!428887 d!428881))

(declare-fun d!429813 () Bool)

(assert (=> d!429813 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) lt!506998)))

(assert (=> d!429813 true))

(declare-fun _$77!629 () Unit!24509)

(assert (=> d!429813 (= (choose!9003 Lexer!2329 (rules!11706 thiss!10022) lt!507007 lt!506998) _$77!629)))

(declare-fun bs!344719 () Bool)

(assert (= bs!344719 d!429813))

(assert (=> bs!344719 m!1701685))

(assert (=> d!428887 d!429813))

(assert (=> d!428887 d!429091))

(assert (=> d!428957 d!429573))

(assert (=> d!428957 d!428885))

(declare-fun d!429915 () Bool)

(declare-fun e!934552 () Bool)

(assert (=> d!429915 e!934552))

(declare-fun res!663193 () Bool)

(assert (=> d!429915 (=> (not res!663193) (not e!934552))))

(assert (=> d!429915 (= res!663193 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 other!32) (print!1107 Lexer!2329 (seqFromList!1716 (list!6083 (tokens!2112 other!32))))))) (list!6083 (tokens!2112 other!32))))))

(declare-fun lt!509170 () Unit!24509)

(declare-fun e!934551 () Unit!24509)

(assert (=> d!429915 (= lt!509170 e!934551)))

(declare-fun c!241601 () Bool)

(assert (=> d!429915 (= c!241601 (or ((_ is Nil!15188) (list!6083 (tokens!2112 other!32))) ((_ is Nil!15188) (t!134647 (list!6083 (tokens!2112 other!32))))))))

(assert (=> d!429915 (not (isEmpty!9541 (rules!11706 other!32)))))

(assert (=> d!429915 (= (theoremInvertabilityWhenTokenListSeparable!79 Lexer!2329 (rules!11706 other!32) (list!6083 (tokens!2112 other!32))) lt!509170)))

(declare-fun b!1465070 () Bool)

(declare-fun Unit!24749 () Unit!24509)

(assert (=> b!1465070 (= e!934551 Unit!24749)))

(declare-fun b!1465071 () Bool)

(declare-fun Unit!24750 () Unit!24509)

(assert (=> b!1465071 (= e!934551 Unit!24750)))

(declare-fun lt!509169 () BalanceConc!10292)

(assert (=> b!1465071 (= lt!509169 (print!1107 Lexer!2329 (seqFromList!1716 (list!6083 (tokens!2112 other!32)))))))

(declare-fun lt!509156 () BalanceConc!10292)

(assert (=> b!1465071 (= lt!509156 (print!1107 Lexer!2329 (seqFromList!1716 (t!134647 (list!6083 (tokens!2112 other!32))))))))

(declare-fun lt!509176 () tuple2!14256)

(assert (=> b!1465071 (= lt!509176 (lex!1076 Lexer!2329 (rules!11706 other!32) lt!509156))))

(declare-fun lt!509157 () List!15252)

(assert (=> b!1465071 (= lt!509157 (list!6087 (charsOf!1538 (h!20589 (list!6083 (tokens!2112 other!32))))))))

(declare-fun lt!509158 () List!15252)

(assert (=> b!1465071 (= lt!509158 (list!6087 lt!509156))))

(declare-fun lt!509163 () Unit!24509)

(assert (=> b!1465071 (= lt!509163 (lemmaConcatTwoListThenFirstIsPrefix!768 lt!509157 lt!509158))))

(assert (=> b!1465071 (isPrefix!1205 lt!509157 (++!4093 lt!509157 lt!509158))))

(declare-fun lt!509171 () Unit!24509)

(assert (=> b!1465071 (= lt!509171 lt!509163)))

(declare-fun lt!509175 () Unit!24509)

(assert (=> b!1465071 (= lt!509175 (theoremInvertabilityWhenTokenListSeparable!79 Lexer!2329 (rules!11706 other!32) (t!134647 (list!6083 (tokens!2112 other!32)))))))

(declare-fun lt!509160 () Unit!24509)

(assert (=> b!1465071 (= lt!509160 (seqFromListBHdTlConstructive!97 (h!20589 (t!134647 (list!6083 (tokens!2112 other!32)))) (t!134647 (t!134647 (list!6083 (tokens!2112 other!32)))) (_1!8014 lt!509176)))))

(assert (=> b!1465071 (= (list!6083 (_1!8014 lt!509176)) (list!6083 (prepend!429 (seqFromList!1716 (t!134647 (t!134647 (list!6083 (tokens!2112 other!32))))) (h!20589 (t!134647 (list!6083 (tokens!2112 other!32)))))))))

(declare-fun lt!509161 () Unit!24509)

(assert (=> b!1465071 (= lt!509161 lt!509160)))

(declare-fun lt!509173 () Option!2879)

(assert (=> b!1465071 (= lt!509173 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (list!6087 lt!509169)))))

(assert (=> b!1465071 (= (print!1107 Lexer!2329 (singletonSeq!1281 (h!20589 (list!6083 (tokens!2112 other!32))))) (printTailRec!699 Lexer!2329 (singletonSeq!1281 (h!20589 (list!6083 (tokens!2112 other!32)))) 0 (BalanceConc!10293 Empty!5176)))))

(declare-fun lt!509172 () Unit!24509)

(declare-fun Unit!24751 () Unit!24509)

(assert (=> b!1465071 (= lt!509172 Unit!24751)))

(declare-fun lt!509159 () Unit!24509)

(assert (=> b!1465071 (= lt!509159 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!241 Lexer!2329 (rules!11706 other!32) (list!6087 (charsOf!1538 (h!20589 (list!6083 (tokens!2112 other!32))))) (list!6087 lt!509156)))))

(assert (=> b!1465071 (= (list!6087 (charsOf!1538 (h!20589 (list!6083 (tokens!2112 other!32))))) (originalCharacters!3537 (h!20589 (list!6083 (tokens!2112 other!32)))))))

(declare-fun lt!509167 () Unit!24509)

(declare-fun Unit!24752 () Unit!24509)

(assert (=> b!1465071 (= lt!509167 Unit!24752)))

(assert (=> b!1465071 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (list!6083 (tokens!2112 other!32))))) 0))) (Cons!15186 (head!3024 (originalCharacters!3537 (h!20589 (t!134647 (list!6083 (tokens!2112 other!32)))))) Nil!15186))))

(declare-fun lt!509154 () Unit!24509)

(declare-fun Unit!24753 () Unit!24509)

(assert (=> b!1465071 (= lt!509154 Unit!24753)))

(assert (=> b!1465071 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (list!6083 (tokens!2112 other!32))))) 0))) (Cons!15186 (head!3024 (list!6087 lt!509156)) Nil!15186))))

(declare-fun lt!509165 () Unit!24509)

(declare-fun Unit!24754 () Unit!24509)

(assert (=> b!1465071 (= lt!509165 Unit!24754)))

(assert (=> b!1465071 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (list!6083 (tokens!2112 other!32))))) 0))) (Cons!15186 (head!3025 lt!509156) Nil!15186))))

(declare-fun lt!509153 () Unit!24509)

(declare-fun Unit!24755 () Unit!24509)

(assert (=> b!1465071 (= lt!509153 Unit!24755)))

(assert (=> b!1465071 (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (originalCharacters!3537 (h!20589 (list!6083 (tokens!2112 other!32))))))))

(declare-fun lt!509155 () Unit!24509)

(declare-fun Unit!24756 () Unit!24509)

(assert (=> b!1465071 (= lt!509155 Unit!24756)))

(assert (=> b!1465071 (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (list!6087 (charsOf!1538 (h!20589 (list!6083 (tokens!2112 other!32)))))))))

(declare-fun lt!509166 () Unit!24509)

(declare-fun Unit!24757 () Unit!24509)

(assert (=> b!1465071 (= lt!509166 Unit!24757)))

(declare-fun lt!509168 () Unit!24509)

(declare-fun Unit!24758 () Unit!24509)

(assert (=> b!1465071 (= lt!509168 Unit!24758)))

(assert (=> b!1465071 (= (_1!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (list!6087 (charsOf!1538 (h!20589 (list!6083 (tokens!2112 other!32)))))))) (h!20589 (list!6083 (tokens!2112 other!32))))))

(declare-fun lt!509174 () Unit!24509)

(declare-fun Unit!24759 () Unit!24509)

(assert (=> b!1465071 (= lt!509174 Unit!24759)))

(assert (=> b!1465071 (isEmpty!9545 (_2!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (list!6087 (charsOf!1538 (h!20589 (list!6083 (tokens!2112 other!32)))))))))))

(declare-fun lt!509162 () Unit!24509)

(declare-fun Unit!24760 () Unit!24509)

(assert (=> b!1465071 (= lt!509162 Unit!24760)))

(assert (=> b!1465071 (matchR!1831 (regex!2675 (rule!4450 (h!20589 (list!6083 (tokens!2112 other!32))))) (list!6087 (charsOf!1538 (h!20589 (list!6083 (tokens!2112 other!32))))))))

(declare-fun lt!509177 () Unit!24509)

(declare-fun Unit!24761 () Unit!24509)

(assert (=> b!1465071 (= lt!509177 Unit!24761)))

(assert (=> b!1465071 (= (rule!4450 (h!20589 (list!6083 (tokens!2112 other!32)))) (rule!4450 (h!20589 (list!6083 (tokens!2112 other!32)))))))

(declare-fun lt!509164 () Unit!24509)

(declare-fun Unit!24762 () Unit!24509)

(assert (=> b!1465071 (= lt!509164 Unit!24762)))

(declare-fun lt!509178 () Unit!24509)

(assert (=> b!1465071 (= lt!509178 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!39 Lexer!2329 (rules!11706 other!32) (h!20589 (list!6083 (tokens!2112 other!32))) (rule!4450 (h!20589 (list!6083 (tokens!2112 other!32)))) (list!6087 lt!509156)))))

(declare-fun b!1465072 () Bool)

(assert (=> b!1465072 (= e!934552 (isEmpty!9544 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 other!32) (print!1107 Lexer!2329 (seqFromList!1716 (list!6083 (tokens!2112 other!32))))))))))

(assert (= (and d!429915 c!241601) b!1465070))

(assert (= (and d!429915 (not c!241601)) b!1465071))

(assert (= (and d!429915 res!663193) b!1465072))

(assert (=> d!429915 m!1701681))

(declare-fun m!1707265 () Bool)

(assert (=> d!429915 m!1707265))

(assert (=> d!429915 m!1701765))

(declare-fun m!1707267 () Bool)

(assert (=> d!429915 m!1707267))

(declare-fun m!1707269 () Bool)

(assert (=> d!429915 m!1707269))

(declare-fun m!1707271 () Bool)

(assert (=> d!429915 m!1707271))

(assert (=> d!429915 m!1707265))

(assert (=> d!429915 m!1707269))

(declare-fun m!1707273 () Bool)

(assert (=> b!1465071 m!1707273))

(declare-fun m!1707275 () Bool)

(assert (=> b!1465071 m!1707275))

(declare-fun m!1707279 () Bool)

(assert (=> b!1465071 m!1707279))

(declare-fun m!1707281 () Bool)

(assert (=> b!1465071 m!1707281))

(assert (=> b!1465071 m!1705637))

(declare-fun m!1707289 () Bool)

(assert (=> b!1465071 m!1707289))

(declare-fun m!1707291 () Bool)

(assert (=> b!1465071 m!1707291))

(declare-fun m!1707295 () Bool)

(assert (=> b!1465071 m!1707295))

(declare-fun m!1707299 () Bool)

(assert (=> b!1465071 m!1707299))

(declare-fun m!1707301 () Bool)

(assert (=> b!1465071 m!1707301))

(assert (=> b!1465071 m!1707279))

(declare-fun m!1707307 () Bool)

(assert (=> b!1465071 m!1707307))

(declare-fun m!1707313 () Bool)

(assert (=> b!1465071 m!1707313))

(declare-fun m!1707317 () Bool)

(assert (=> b!1465071 m!1707317))

(assert (=> b!1465071 m!1707289))

(declare-fun m!1707327 () Bool)

(assert (=> b!1465071 m!1707327))

(declare-fun m!1707331 () Bool)

(assert (=> b!1465071 m!1707331))

(assert (=> b!1465071 m!1705637))

(assert (=> b!1465071 m!1707331))

(declare-fun m!1707335 () Bool)

(assert (=> b!1465071 m!1707335))

(assert (=> b!1465071 m!1701681))

(assert (=> b!1465071 m!1707265))

(assert (=> b!1465071 m!1707317))

(declare-fun m!1707337 () Bool)

(assert (=> b!1465071 m!1707337))

(declare-fun m!1707339 () Bool)

(assert (=> b!1465071 m!1707339))

(declare-fun m!1707343 () Bool)

(assert (=> b!1465071 m!1707343))

(declare-fun m!1707345 () Bool)

(assert (=> b!1465071 m!1707345))

(declare-fun m!1707347 () Bool)

(assert (=> b!1465071 m!1707347))

(assert (=> b!1465071 m!1705635))

(declare-fun m!1707353 () Bool)

(assert (=> b!1465071 m!1707353))

(declare-fun m!1707357 () Bool)

(assert (=> b!1465071 m!1707357))

(declare-fun m!1707359 () Bool)

(assert (=> b!1465071 m!1707359))

(declare-fun m!1707361 () Bool)

(assert (=> b!1465071 m!1707361))

(declare-fun m!1707363 () Bool)

(assert (=> b!1465071 m!1707363))

(declare-fun m!1707365 () Bool)

(assert (=> b!1465071 m!1707365))

(assert (=> b!1465071 m!1707339))

(declare-fun m!1707367 () Bool)

(assert (=> b!1465071 m!1707367))

(assert (=> b!1465071 m!1707331))

(declare-fun m!1707369 () Bool)

(assert (=> b!1465071 m!1707369))

(declare-fun m!1707371 () Bool)

(assert (=> b!1465071 m!1707371))

(assert (=> b!1465071 m!1707265))

(assert (=> b!1465071 m!1707269))

(assert (=> b!1465071 m!1707295))

(assert (=> b!1465071 m!1707299))

(assert (=> b!1465071 m!1707289))

(declare-fun m!1707387 () Bool)

(assert (=> b!1465071 m!1707387))

(assert (=> b!1465071 m!1707331))

(declare-fun m!1707389 () Bool)

(assert (=> b!1465071 m!1707389))

(assert (=> b!1465071 m!1707343))

(assert (=> b!1465071 m!1705637))

(declare-fun m!1707391 () Bool)

(assert (=> b!1465071 m!1707391))

(assert (=> b!1465071 m!1707273))

(assert (=> b!1465071 m!1707353))

(declare-fun m!1707393 () Bool)

(assert (=> b!1465071 m!1707393))

(assert (=> b!1465071 m!1707279))

(assert (=> b!1465071 m!1707313))

(assert (=> b!1465071 m!1705635))

(assert (=> b!1465071 m!1705637))

(assert (=> b!1465071 m!1707301))

(declare-fun m!1707395 () Bool)

(assert (=> b!1465071 m!1707395))

(assert (=> b!1465072 m!1701681))

(assert (=> b!1465072 m!1707265))

(assert (=> b!1465072 m!1707265))

(assert (=> b!1465072 m!1707269))

(assert (=> b!1465072 m!1707269))

(assert (=> b!1465072 m!1707271))

(declare-fun m!1707397 () Bool)

(assert (=> b!1465072 m!1707397))

(assert (=> d!428957 d!429915))

(assert (=> d!428957 d!428939))

(declare-fun d!429935 () Bool)

(assert (=> d!429935 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 other!32) lt!507613))) (list!6086 (c!241182 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 other!32) lt!507613)))))))

(declare-fun bs!344723 () Bool)

(assert (= bs!344723 d!429935))

(declare-fun m!1707399 () Bool)

(assert (=> bs!344723 m!1707399))

(assert (=> d!428957 d!429935))

(declare-fun b!1465109 () Bool)

(declare-fun res!663212 () Bool)

(declare-fun e!934574 () Bool)

(assert (=> b!1465109 (=> (not res!663212) (not e!934574))))

(assert (=> b!1465109 (= res!663212 (isBalanced!1555 (left!12905 (++!4095 (c!241182 (tokens!2112 thiss!10022)) (c!241182 (tokens!2112 other!32))))))))

(declare-fun b!1465110 () Bool)

(declare-fun e!934573 () Bool)

(assert (=> b!1465110 (= e!934573 e!934574)))

(declare-fun res!663214 () Bool)

(assert (=> b!1465110 (=> (not res!663214) (not e!934574))))

(assert (=> b!1465110 (= res!663214 (<= (- 1) (- (height!778 (left!12905 (++!4095 (c!241182 (tokens!2112 thiss!10022)) (c!241182 (tokens!2112 other!32))))) (height!778 (right!13235 (++!4095 (c!241182 (tokens!2112 thiss!10022)) (c!241182 (tokens!2112 other!32))))))))))

(declare-fun b!1465111 () Bool)

(declare-fun res!663210 () Bool)

(assert (=> b!1465111 (=> (not res!663210) (not e!934574))))

(assert (=> b!1465111 (= res!663210 (<= (- (height!778 (left!12905 (++!4095 (c!241182 (tokens!2112 thiss!10022)) (c!241182 (tokens!2112 other!32))))) (height!778 (right!13235 (++!4095 (c!241182 (tokens!2112 thiss!10022)) (c!241182 (tokens!2112 other!32)))))) 1))))

(declare-fun b!1465112 () Bool)

(assert (=> b!1465112 (= e!934574 (not (isEmpty!9543 (right!13235 (++!4095 (c!241182 (tokens!2112 thiss!10022)) (c!241182 (tokens!2112 other!32)))))))))

(declare-fun b!1465113 () Bool)

(declare-fun res!663215 () Bool)

(assert (=> b!1465113 (=> (not res!663215) (not e!934574))))

(assert (=> b!1465113 (= res!663215 (isBalanced!1555 (right!13235 (++!4095 (c!241182 (tokens!2112 thiss!10022)) (c!241182 (tokens!2112 other!32))))))))

(declare-fun b!1465114 () Bool)

(declare-fun res!663211 () Bool)

(assert (=> b!1465114 (=> (not res!663211) (not e!934574))))

(assert (=> b!1465114 (= res!663211 (not (isEmpty!9543 (left!12905 (++!4095 (c!241182 (tokens!2112 thiss!10022)) (c!241182 (tokens!2112 other!32)))))))))

(declare-fun d!429937 () Bool)

(declare-fun res!663213 () Bool)

(assert (=> d!429937 (=> res!663213 e!934573)))

(assert (=> d!429937 (= res!663213 (not ((_ is Node!5177) (++!4095 (c!241182 (tokens!2112 thiss!10022)) (c!241182 (tokens!2112 other!32))))))))

(assert (=> d!429937 (= (isBalanced!1555 (++!4095 (c!241182 (tokens!2112 thiss!10022)) (c!241182 (tokens!2112 other!32)))) e!934573)))

(assert (= (and d!429937 (not res!663213)) b!1465110))

(assert (= (and b!1465110 res!663214) b!1465111))

(assert (= (and b!1465111 res!663210) b!1465109))

(assert (= (and b!1465109 res!663212) b!1465113))

(assert (= (and b!1465113 res!663215) b!1465114))

(assert (= (and b!1465114 res!663211) b!1465112))

(declare-fun m!1707401 () Bool)

(assert (=> b!1465114 m!1707401))

(declare-fun m!1707403 () Bool)

(assert (=> b!1465112 m!1707403))

(declare-fun m!1707405 () Bool)

(assert (=> b!1465109 m!1707405))

(declare-fun m!1707407 () Bool)

(assert (=> b!1465111 m!1707407))

(declare-fun m!1707409 () Bool)

(assert (=> b!1465111 m!1707409))

(assert (=> b!1465110 m!1707407))

(assert (=> b!1465110 m!1707409))

(declare-fun m!1707411 () Bool)

(assert (=> b!1465113 m!1707411))

(assert (=> b!1463209 d!429937))

(assert (=> b!1463209 d!429471))

(assert (=> b!1463297 d!429281))

(declare-fun d!429939 () Bool)

(declare-fun e!934575 () Bool)

(assert (=> d!429939 e!934575))

(declare-fun res!663216 () Bool)

(assert (=> d!429939 (=> (not res!663216) (not e!934575))))

(assert (=> d!429939 (= res!663216 (isBalanced!1555 (prepend!431 (c!241182 (seqFromList!1716 (t!134647 (t!134647 lt!506994)))) (h!20589 (t!134647 lt!506994)))))))

(declare-fun lt!509260 () BalanceConc!10294)

(assert (=> d!429939 (= lt!509260 (BalanceConc!10295 (prepend!431 (c!241182 (seqFromList!1716 (t!134647 (t!134647 lt!506994)))) (h!20589 (t!134647 lt!506994)))))))

(assert (=> d!429939 (= (prepend!429 (seqFromList!1716 (t!134647 (t!134647 lt!506994))) (h!20589 (t!134647 lt!506994))) lt!509260)))

(declare-fun b!1465115 () Bool)

(assert (=> b!1465115 (= e!934575 (= (list!6083 lt!509260) (Cons!15188 (h!20589 (t!134647 lt!506994)) (list!6083 (seqFromList!1716 (t!134647 (t!134647 lt!506994)))))))))

(assert (= (and d!429939 res!663216) b!1465115))

(declare-fun m!1707413 () Bool)

(assert (=> d!429939 m!1707413))

(assert (=> d!429939 m!1707413))

(declare-fun m!1707415 () Bool)

(assert (=> d!429939 m!1707415))

(declare-fun m!1707417 () Bool)

(assert (=> b!1465115 m!1707417))

(assert (=> b!1465115 m!1702667))

(declare-fun m!1707419 () Bool)

(assert (=> b!1465115 m!1707419))

(assert (=> b!1463440 d!429939))

(declare-fun b!1465116 () Bool)

(declare-fun e!934577 () Bool)

(declare-fun e!934576 () Bool)

(assert (=> b!1465116 (= e!934577 e!934576)))

(declare-fun res!663218 () Bool)

(assert (=> b!1465116 (=> (not res!663218) (not e!934576))))

(assert (=> b!1465116 (= res!663218 (not ((_ is Nil!15186) (++!4093 lt!507552 lt!507553))))))

(declare-fun b!1465117 () Bool)

(declare-fun res!663219 () Bool)

(assert (=> b!1465117 (=> (not res!663219) (not e!934576))))

(assert (=> b!1465117 (= res!663219 (= (head!3024 lt!507552) (head!3024 (++!4093 lt!507552 lt!507553))))))

(declare-fun b!1465119 () Bool)

(declare-fun e!934578 () Bool)

(assert (=> b!1465119 (= e!934578 (>= (size!12429 (++!4093 lt!507552 lt!507553)) (size!12429 lt!507552)))))

(declare-fun b!1465118 () Bool)

(assert (=> b!1465118 (= e!934576 (isPrefix!1205 (tail!2179 lt!507552) (tail!2179 (++!4093 lt!507552 lt!507553))))))

(declare-fun d!429941 () Bool)

(assert (=> d!429941 e!934578))

(declare-fun res!663220 () Bool)

(assert (=> d!429941 (=> res!663220 e!934578)))

(declare-fun lt!509261 () Bool)

(assert (=> d!429941 (= res!663220 (not lt!509261))))

(assert (=> d!429941 (= lt!509261 e!934577)))

(declare-fun res!663217 () Bool)

(assert (=> d!429941 (=> res!663217 e!934577)))

(assert (=> d!429941 (= res!663217 ((_ is Nil!15186) lt!507552))))

(assert (=> d!429941 (= (isPrefix!1205 lt!507552 (++!4093 lt!507552 lt!507553)) lt!509261)))

(assert (= (and d!429941 (not res!663217)) b!1465116))

(assert (= (and b!1465116 res!663218) b!1465117))

(assert (= (and b!1465117 res!663219) b!1465118))

(assert (= (and d!429941 (not res!663220)) b!1465119))

(declare-fun m!1707421 () Bool)

(assert (=> b!1465117 m!1707421))

(assert (=> b!1465117 m!1702689))

(declare-fun m!1707423 () Bool)

(assert (=> b!1465117 m!1707423))

(assert (=> b!1465119 m!1702689))

(declare-fun m!1707425 () Bool)

(assert (=> b!1465119 m!1707425))

(declare-fun m!1707427 () Bool)

(assert (=> b!1465119 m!1707427))

(declare-fun m!1707429 () Bool)

(assert (=> b!1465118 m!1707429))

(assert (=> b!1465118 m!1702689))

(declare-fun m!1707431 () Bool)

(assert (=> b!1465118 m!1707431))

(assert (=> b!1465118 m!1707429))

(assert (=> b!1465118 m!1707431))

(declare-fun m!1707433 () Bool)

(assert (=> b!1465118 m!1707433))

(assert (=> b!1463440 d!429941))

(declare-fun bm!98544 () Bool)

(declare-fun call!98549 () Option!2879)

(assert (=> bm!98544 (= call!98549 (maxPrefixOneRule!663 Lexer!2329 (h!20590 (rules!11706 other!32)) (list!6087 (charsOf!1538 (h!20589 lt!506994)))))))

(declare-fun b!1465120 () Bool)

(declare-fun res!663222 () Bool)

(declare-fun e!934581 () Bool)

(assert (=> b!1465120 (=> (not res!663222) (not e!934581))))

(declare-fun lt!509266 () Option!2879)

(assert (=> b!1465120 (= res!663222 (= (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!509266)))) (originalCharacters!3537 (_1!8015 (get!4621 lt!509266)))))))

(declare-fun b!1465121 () Bool)

(declare-fun res!663225 () Bool)

(assert (=> b!1465121 (=> (not res!663225) (not e!934581))))

(assert (=> b!1465121 (= res!663225 (= (value!85885 (_1!8015 (get!4621 lt!509266))) (apply!3974 (transformation!2675 (rule!4450 (_1!8015 (get!4621 lt!509266)))) (seqFromList!1718 (originalCharacters!3537 (_1!8015 (get!4621 lt!509266)))))))))

(declare-fun b!1465122 () Bool)

(declare-fun res!663221 () Bool)

(assert (=> b!1465122 (=> (not res!663221) (not e!934581))))

(assert (=> b!1465122 (= res!663221 (= (++!4093 (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!509266)))) (_2!8015 (get!4621 lt!509266))) (list!6087 (charsOf!1538 (h!20589 lt!506994)))))))

(declare-fun b!1465123 () Bool)

(assert (=> b!1465123 (= e!934581 (contains!2912 (rules!11706 other!32) (rule!4450 (_1!8015 (get!4621 lt!509266)))))))

(declare-fun d!429943 () Bool)

(declare-fun e!934580 () Bool)

(assert (=> d!429943 e!934580))

(declare-fun res!663226 () Bool)

(assert (=> d!429943 (=> res!663226 e!934580)))

(assert (=> d!429943 (= res!663226 (isEmpty!9547 lt!509266))))

(declare-fun e!934579 () Option!2879)

(assert (=> d!429943 (= lt!509266 e!934579)))

(declare-fun c!241612 () Bool)

(assert (=> d!429943 (= c!241612 (and ((_ is Cons!15189) (rules!11706 other!32)) ((_ is Nil!15189) (t!134648 (rules!11706 other!32)))))))

(declare-fun lt!509262 () Unit!24509)

(declare-fun lt!509265 () Unit!24509)

(assert (=> d!429943 (= lt!509262 lt!509265)))

(assert (=> d!429943 (isPrefix!1205 (list!6087 (charsOf!1538 (h!20589 lt!506994))) (list!6087 (charsOf!1538 (h!20589 lt!506994))))))

(assert (=> d!429943 (= lt!509265 (lemmaIsPrefixRefl!837 (list!6087 (charsOf!1538 (h!20589 lt!506994))) (list!6087 (charsOf!1538 (h!20589 lt!506994)))))))

(assert (=> d!429943 (rulesValidInductive!834 Lexer!2329 (rules!11706 other!32))))

(assert (=> d!429943 (= (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (list!6087 (charsOf!1538 (h!20589 lt!506994)))) lt!509266)))

(declare-fun b!1465124 () Bool)

(assert (=> b!1465124 (= e!934579 call!98549)))

(declare-fun b!1465125 () Bool)

(declare-fun res!663223 () Bool)

(assert (=> b!1465125 (=> (not res!663223) (not e!934581))))

(assert (=> b!1465125 (= res!663223 (matchR!1831 (regex!2675 (rule!4450 (_1!8015 (get!4621 lt!509266)))) (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!509266))))))))

(declare-fun b!1465126 () Bool)

(assert (=> b!1465126 (= e!934580 e!934581)))

(declare-fun res!663227 () Bool)

(assert (=> b!1465126 (=> (not res!663227) (not e!934581))))

(assert (=> b!1465126 (= res!663227 (isDefined!2328 lt!509266))))

(declare-fun b!1465127 () Bool)

(declare-fun lt!509264 () Option!2879)

(declare-fun lt!509263 () Option!2879)

(assert (=> b!1465127 (= e!934579 (ite (and ((_ is None!2878) lt!509264) ((_ is None!2878) lt!509263)) None!2878 (ite ((_ is None!2878) lt!509263) lt!509264 (ite ((_ is None!2878) lt!509264) lt!509263 (ite (>= (size!12421 (_1!8015 (v!22514 lt!509264))) (size!12421 (_1!8015 (v!22514 lt!509263)))) lt!509264 lt!509263)))))))

(assert (=> b!1465127 (= lt!509264 call!98549)))

(assert (=> b!1465127 (= lt!509263 (maxPrefix!1195 Lexer!2329 (t!134648 (rules!11706 other!32)) (list!6087 (charsOf!1538 (h!20589 lt!506994)))))))

(declare-fun b!1465128 () Bool)

(declare-fun res!663224 () Bool)

(assert (=> b!1465128 (=> (not res!663224) (not e!934581))))

(assert (=> b!1465128 (= res!663224 (< (size!12429 (_2!8015 (get!4621 lt!509266))) (size!12429 (list!6087 (charsOf!1538 (h!20589 lt!506994))))))))

(assert (= (and d!429943 c!241612) b!1465124))

(assert (= (and d!429943 (not c!241612)) b!1465127))

(assert (= (or b!1465124 b!1465127) bm!98544))

(assert (= (and d!429943 (not res!663226)) b!1465126))

(assert (= (and b!1465126 res!663227) b!1465120))

(assert (= (and b!1465120 res!663222) b!1465128))

(assert (= (and b!1465128 res!663224) b!1465122))

(assert (= (and b!1465122 res!663221) b!1465121))

(assert (= (and b!1465121 res!663225) b!1465125))

(assert (= (and b!1465125 res!663223) b!1465123))

(declare-fun m!1707509 () Bool)

(assert (=> b!1465120 m!1707509))

(declare-fun m!1707513 () Bool)

(assert (=> b!1465120 m!1707513))

(assert (=> b!1465120 m!1707513))

(declare-fun m!1707515 () Bool)

(assert (=> b!1465120 m!1707515))

(assert (=> b!1465122 m!1707509))

(assert (=> b!1465122 m!1707513))

(assert (=> b!1465122 m!1707513))

(assert (=> b!1465122 m!1707515))

(assert (=> b!1465122 m!1707515))

(declare-fun m!1707527 () Bool)

(assert (=> b!1465122 m!1707527))

(assert (=> b!1465128 m!1707509))

(declare-fun m!1707531 () Bool)

(assert (=> b!1465128 m!1707531))

(assert (=> b!1465128 m!1702653))

(assert (=> b!1465128 m!1704479))

(assert (=> b!1465127 m!1702653))

(declare-fun m!1707539 () Bool)

(assert (=> b!1465127 m!1707539))

(assert (=> b!1465125 m!1707509))

(assert (=> b!1465125 m!1707513))

(assert (=> b!1465125 m!1707513))

(assert (=> b!1465125 m!1707515))

(assert (=> b!1465125 m!1707515))

(declare-fun m!1707549 () Bool)

(assert (=> b!1465125 m!1707549))

(assert (=> b!1465123 m!1707509))

(declare-fun m!1707555 () Bool)

(assert (=> b!1465123 m!1707555))

(assert (=> b!1465121 m!1707509))

(declare-fun m!1707559 () Bool)

(assert (=> b!1465121 m!1707559))

(assert (=> b!1465121 m!1707559))

(declare-fun m!1707565 () Bool)

(assert (=> b!1465121 m!1707565))

(declare-fun m!1707567 () Bool)

(assert (=> d!429943 m!1707567))

(assert (=> d!429943 m!1702653))

(assert (=> d!429943 m!1702653))

(declare-fun m!1707571 () Bool)

(assert (=> d!429943 m!1707571))

(assert (=> d!429943 m!1702653))

(assert (=> d!429943 m!1702653))

(declare-fun m!1707573 () Bool)

(assert (=> d!429943 m!1707573))

(declare-fun m!1707577 () Bool)

(assert (=> d!429943 m!1707577))

(declare-fun m!1707579 () Bool)

(assert (=> b!1465126 m!1707579))

(assert (=> bm!98544 m!1702653))

(declare-fun m!1707581 () Bool)

(assert (=> bm!98544 m!1707581))

(assert (=> b!1463440 d!429943))

(declare-fun d!429947 () Bool)

(assert (=> d!429947 (= (list!6083 (_1!8014 lt!507571)) (list!6083 (prepend!429 (seqFromList!1716 (t!134647 (t!134647 lt!506994))) (h!20589 (t!134647 lt!506994)))))))

(declare-fun lt!509268 () Unit!24509)

(assert (=> d!429947 (= lt!509268 (choose!9010 (h!20589 (t!134647 lt!506994)) (t!134647 (t!134647 lt!506994)) (_1!8014 lt!507571)))))

(assert (=> d!429947 (= (list!6083 (_1!8014 lt!507571)) (list!6083 (seqFromList!1716 ($colon$colon!250 (t!134647 (t!134647 lt!506994)) (h!20589 (t!134647 lt!506994))))))))

(assert (=> d!429947 (= (seqFromListBHdTlConstructive!97 (h!20589 (t!134647 lt!506994)) (t!134647 (t!134647 lt!506994)) (_1!8014 lt!507571)) lt!509268)))

(declare-fun bs!344725 () Bool)

(assert (= bs!344725 d!429947))

(assert (=> bs!344725 m!1702667))

(assert (=> bs!344725 m!1702669))

(assert (=> bs!344725 m!1702667))

(declare-fun m!1707589 () Bool)

(assert (=> bs!344725 m!1707589))

(declare-fun m!1707591 () Bool)

(assert (=> bs!344725 m!1707591))

(declare-fun m!1707593 () Bool)

(assert (=> bs!344725 m!1707593))

(declare-fun m!1707595 () Bool)

(assert (=> bs!344725 m!1707595))

(assert (=> bs!344725 m!1707593))

(assert (=> bs!344725 m!1707589))

(assert (=> bs!344725 m!1702685))

(assert (=> bs!344725 m!1702669))

(assert (=> bs!344725 m!1702677))

(assert (=> b!1463440 d!429947))

(declare-fun b!1465139 () Bool)

(declare-fun e!934586 () List!15252)

(assert (=> b!1465139 (= e!934586 (Cons!15186 (h!20587 lt!507552) (++!4093 (t!134645 lt!507552) lt!507553)))))

(declare-fun b!1465138 () Bool)

(assert (=> b!1465138 (= e!934586 lt!507553)))

(declare-fun d!429953 () Bool)

(declare-fun e!934585 () Bool)

(assert (=> d!429953 e!934585))

(declare-fun res!663235 () Bool)

(assert (=> d!429953 (=> (not res!663235) (not e!934585))))

(declare-fun lt!509274 () List!15252)

(assert (=> d!429953 (= res!663235 (= (content!2247 lt!509274) ((_ map or) (content!2247 lt!507552) (content!2247 lt!507553))))))

(assert (=> d!429953 (= lt!509274 e!934586)))

(declare-fun c!241614 () Bool)

(assert (=> d!429953 (= c!241614 ((_ is Nil!15186) lt!507552))))

(assert (=> d!429953 (= (++!4093 lt!507552 lt!507553) lt!509274)))

(declare-fun b!1465141 () Bool)

(assert (=> b!1465141 (= e!934585 (or (not (= lt!507553 Nil!15186)) (= lt!509274 lt!507552)))))

(declare-fun b!1465140 () Bool)

(declare-fun res!663236 () Bool)

(assert (=> b!1465140 (=> (not res!663236) (not e!934585))))

(assert (=> b!1465140 (= res!663236 (= (size!12429 lt!509274) (+ (size!12429 lt!507552) (size!12429 lt!507553))))))

(assert (= (and d!429953 c!241614) b!1465138))

(assert (= (and d!429953 (not c!241614)) b!1465139))

(assert (= (and d!429953 res!663235) b!1465140))

(assert (= (and b!1465140 res!663236) b!1465141))

(declare-fun m!1707597 () Bool)

(assert (=> b!1465139 m!1707597))

(declare-fun m!1707599 () Bool)

(assert (=> d!429953 m!1707599))

(declare-fun m!1707601 () Bool)

(assert (=> d!429953 m!1707601))

(declare-fun m!1707603 () Bool)

(assert (=> d!429953 m!1707603))

(declare-fun m!1707605 () Bool)

(assert (=> b!1465140 m!1707605))

(assert (=> b!1465140 m!1707427))

(declare-fun m!1707607 () Bool)

(assert (=> b!1465140 m!1707607))

(assert (=> b!1463440 d!429953))

(declare-fun d!429955 () Bool)

(assert (=> d!429955 (= (list!6083 (_1!8014 lt!507571)) (list!6086 (c!241182 (_1!8014 lt!507571))))))

(declare-fun bs!344727 () Bool)

(assert (= bs!344727 d!429955))

(declare-fun m!1707609 () Bool)

(assert (=> bs!344727 m!1707609))

(assert (=> b!1463440 d!429955))

(declare-fun d!429957 () Bool)

(assert (=> d!429957 (isPrefix!1205 lt!507552 (++!4093 lt!507552 lt!507553))))

(declare-fun lt!509275 () Unit!24509)

(assert (=> d!429957 (= lt!509275 (choose!9011 lt!507552 lt!507553))))

(assert (=> d!429957 (= (lemmaConcatTwoListThenFirstIsPrefix!768 lt!507552 lt!507553) lt!509275)))

(declare-fun bs!344728 () Bool)

(assert (= bs!344728 d!429957))

(assert (=> bs!344728 m!1702689))

(assert (=> bs!344728 m!1702689))

(assert (=> bs!344728 m!1702713))

(declare-fun m!1707611 () Bool)

(assert (=> bs!344728 m!1707611))

(assert (=> b!1463440 d!429957))

(declare-fun d!429959 () Bool)

(assert (=> d!429959 (= (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (list!6087 (charsOf!1538 (h!20589 lt!506994))))) (not (isEmpty!9547 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (list!6087 (charsOf!1538 (h!20589 lt!506994)))))))))

(declare-fun bs!344729 () Bool)

(assert (= bs!344729 d!429959))

(assert (=> bs!344729 m!1702655))

(declare-fun m!1707613 () Bool)

(assert (=> bs!344729 m!1707613))

(assert (=> b!1463440 d!429959))

(declare-fun d!429961 () Bool)

(declare-fun lt!509276 () C!8156)

(assert (=> d!429961 (= lt!509276 (apply!3972 (list!6087 (charsOf!1538 (h!20589 (t!134647 lt!506994)))) 0))))

(assert (=> d!429961 (= lt!509276 (apply!3973 (c!241180 (charsOf!1538 (h!20589 (t!134647 lt!506994)))) 0))))

(declare-fun e!934587 () Bool)

(assert (=> d!429961 e!934587))

(declare-fun res!663237 () Bool)

(assert (=> d!429961 (=> (not res!663237) (not e!934587))))

(assert (=> d!429961 (= res!663237 (<= 0 0))))

(assert (=> d!429961 (= (apply!3969 (charsOf!1538 (h!20589 (t!134647 lt!506994))) 0) lt!509276)))

(declare-fun b!1465142 () Bool)

(assert (=> b!1465142 (= e!934587 (< 0 (size!12425 (charsOf!1538 (h!20589 (t!134647 lt!506994))))))))

(assert (= (and d!429961 res!663237) b!1465142))

(assert (=> d!429961 m!1702659))

(assert (=> d!429961 m!1704493))

(assert (=> d!429961 m!1704493))

(declare-fun m!1707623 () Bool)

(assert (=> d!429961 m!1707623))

(declare-fun m!1707627 () Bool)

(assert (=> d!429961 m!1707627))

(assert (=> b!1465142 m!1702659))

(declare-fun m!1707631 () Bool)

(assert (=> b!1465142 m!1707631))

(assert (=> b!1463440 d!429961))

(declare-fun d!429963 () Bool)

(assert (=> d!429963 (= (list!6087 lt!507551) (list!6088 (c!241180 lt!507551)))))

(declare-fun bs!344730 () Bool)

(assert (= bs!344730 d!429963))

(declare-fun m!1707635 () Bool)

(assert (=> bs!344730 m!1707635))

(assert (=> b!1463440 d!429963))

(declare-fun b!1465143 () Bool)

(declare-fun res!663239 () Bool)

(declare-fun e!934589 () Bool)

(assert (=> b!1465143 (=> res!663239 e!934589)))

(declare-fun e!934592 () Bool)

(assert (=> b!1465143 (= res!663239 e!934592)))

(declare-fun res!663238 () Bool)

(assert (=> b!1465143 (=> (not res!663238) (not e!934592))))

(declare-fun lt!509277 () Bool)

(assert (=> b!1465143 (= res!663238 lt!509277)))

(declare-fun b!1465144 () Bool)

(declare-fun e!934590 () Bool)

(assert (=> b!1465144 (= e!934590 (not (= (head!3024 (list!6087 (charsOf!1538 (h!20589 lt!506994)))) (c!241181 (regex!2675 (rule!4450 (h!20589 lt!506994)))))))))

(declare-fun d!429965 () Bool)

(declare-fun e!934594 () Bool)

(assert (=> d!429965 e!934594))

(declare-fun c!241615 () Bool)

(assert (=> d!429965 (= c!241615 ((_ is EmptyExpr!3989) (regex!2675 (rule!4450 (h!20589 lt!506994)))))))

(declare-fun e!934593 () Bool)

(assert (=> d!429965 (= lt!509277 e!934593)))

(declare-fun c!241617 () Bool)

(assert (=> d!429965 (= c!241617 (isEmpty!9545 (list!6087 (charsOf!1538 (h!20589 lt!506994)))))))

(assert (=> d!429965 (validRegex!1685 (regex!2675 (rule!4450 (h!20589 lt!506994))))))

(assert (=> d!429965 (= (matchR!1831 (regex!2675 (rule!4450 (h!20589 lt!506994))) (list!6087 (charsOf!1538 (h!20589 lt!506994)))) lt!509277)))

(declare-fun b!1465145 () Bool)

(declare-fun call!98551 () Bool)

(assert (=> b!1465145 (= e!934594 (= lt!509277 call!98551))))

(declare-fun b!1465146 () Bool)

(declare-fun res!663245 () Bool)

(assert (=> b!1465146 (=> (not res!663245) (not e!934592))))

(assert (=> b!1465146 (= res!663245 (not call!98551))))

(declare-fun b!1465147 () Bool)

(declare-fun e!934588 () Bool)

(assert (=> b!1465147 (= e!934588 (not lt!509277))))

(declare-fun b!1465148 () Bool)

(assert (=> b!1465148 (= e!934592 (= (head!3024 (list!6087 (charsOf!1538 (h!20589 lt!506994)))) (c!241181 (regex!2675 (rule!4450 (h!20589 lt!506994))))))))

(declare-fun b!1465149 () Bool)

(assert (=> b!1465149 (= e!934594 e!934588)))

(declare-fun c!241616 () Bool)

(assert (=> b!1465149 (= c!241616 ((_ is EmptyLang!3989) (regex!2675 (rule!4450 (h!20589 lt!506994)))))))

(declare-fun b!1465150 () Bool)

(declare-fun res!663243 () Bool)

(assert (=> b!1465150 (=> res!663243 e!934590)))

(assert (=> b!1465150 (= res!663243 (not (isEmpty!9545 (tail!2179 (list!6087 (charsOf!1538 (h!20589 lt!506994)))))))))

(declare-fun bm!98546 () Bool)

(assert (=> bm!98546 (= call!98551 (isEmpty!9545 (list!6087 (charsOf!1538 (h!20589 lt!506994)))))))

(declare-fun b!1465151 () Bool)

(declare-fun e!934591 () Bool)

(assert (=> b!1465151 (= e!934589 e!934591)))

(declare-fun res!663242 () Bool)

(assert (=> b!1465151 (=> (not res!663242) (not e!934591))))

(assert (=> b!1465151 (= res!663242 (not lt!509277))))

(declare-fun b!1465152 () Bool)

(assert (=> b!1465152 (= e!934593 (matchR!1831 (derivativeStep!1007 (regex!2675 (rule!4450 (h!20589 lt!506994))) (head!3024 (list!6087 (charsOf!1538 (h!20589 lt!506994))))) (tail!2179 (list!6087 (charsOf!1538 (h!20589 lt!506994))))))))

(declare-fun b!1465153 () Bool)

(assert (=> b!1465153 (= e!934593 (nullable!1251 (regex!2675 (rule!4450 (h!20589 lt!506994)))))))

(declare-fun b!1465154 () Bool)

(declare-fun res!663240 () Bool)

(assert (=> b!1465154 (=> res!663240 e!934589)))

(assert (=> b!1465154 (= res!663240 (not ((_ is ElementMatch!3989) (regex!2675 (rule!4450 (h!20589 lt!506994))))))))

(assert (=> b!1465154 (= e!934588 e!934589)))

(declare-fun b!1465155 () Bool)

(assert (=> b!1465155 (= e!934591 e!934590)))

(declare-fun res!663244 () Bool)

(assert (=> b!1465155 (=> res!663244 e!934590)))

(assert (=> b!1465155 (= res!663244 call!98551)))

(declare-fun b!1465156 () Bool)

(declare-fun res!663241 () Bool)

(assert (=> b!1465156 (=> (not res!663241) (not e!934592))))

(assert (=> b!1465156 (= res!663241 (isEmpty!9545 (tail!2179 (list!6087 (charsOf!1538 (h!20589 lt!506994))))))))

(assert (= (and d!429965 c!241617) b!1465153))

(assert (= (and d!429965 (not c!241617)) b!1465152))

(assert (= (and d!429965 c!241615) b!1465145))

(assert (= (and d!429965 (not c!241615)) b!1465149))

(assert (= (and b!1465149 c!241616) b!1465147))

(assert (= (and b!1465149 (not c!241616)) b!1465154))

(assert (= (and b!1465154 (not res!663240)) b!1465143))

(assert (= (and b!1465143 res!663238) b!1465146))

(assert (= (and b!1465146 res!663245) b!1465156))

(assert (= (and b!1465156 res!663241) b!1465148))

(assert (= (and b!1465143 (not res!663239)) b!1465151))

(assert (= (and b!1465151 res!663242) b!1465155))

(assert (= (and b!1465155 (not res!663244)) b!1465150))

(assert (= (and b!1465150 (not res!663243)) b!1465144))

(assert (= (or b!1465145 b!1465146 b!1465155) bm!98546))

(assert (=> d!429965 m!1702653))

(declare-fun m!1707661 () Bool)

(assert (=> d!429965 m!1707661))

(declare-fun m!1707663 () Bool)

(assert (=> d!429965 m!1707663))

(assert (=> b!1465150 m!1702653))

(declare-fun m!1707665 () Bool)

(assert (=> b!1465150 m!1707665))

(assert (=> b!1465150 m!1707665))

(declare-fun m!1707667 () Bool)

(assert (=> b!1465150 m!1707667))

(assert (=> b!1465148 m!1702653))

(declare-fun m!1707671 () Bool)

(assert (=> b!1465148 m!1707671))

(declare-fun m!1707673 () Bool)

(assert (=> b!1465153 m!1707673))

(assert (=> b!1465156 m!1702653))

(assert (=> b!1465156 m!1707665))

(assert (=> b!1465156 m!1707665))

(assert (=> b!1465156 m!1707667))

(assert (=> bm!98546 m!1702653))

(assert (=> bm!98546 m!1707661))

(assert (=> b!1465152 m!1702653))

(assert (=> b!1465152 m!1707671))

(assert (=> b!1465152 m!1707671))

(declare-fun m!1707675 () Bool)

(assert (=> b!1465152 m!1707675))

(assert (=> b!1465152 m!1702653))

(assert (=> b!1465152 m!1707665))

(assert (=> b!1465152 m!1707675))

(assert (=> b!1465152 m!1707665))

(declare-fun m!1707677 () Bool)

(assert (=> b!1465152 m!1707677))

(assert (=> b!1465144 m!1702653))

(assert (=> b!1465144 m!1707671))

(assert (=> b!1463440 d!429965))

(assert (=> b!1463440 d!429265))

(declare-fun b!1465158 () Bool)

(declare-fun lt!509280 () tuple2!14256)

(declare-fun e!934598 () Bool)

(assert (=> b!1465158 (= e!934598 (= (list!6087 (_2!8014 lt!509280)) (_2!8016 (lexList!717 Lexer!2329 (rules!11706 other!32) (list!6087 lt!507551)))))))

(declare-fun b!1465159 () Bool)

(declare-fun e!934596 () Bool)

(assert (=> b!1465159 (= e!934596 (not (isEmpty!9535 (_1!8014 lt!509280))))))

(declare-fun b!1465160 () Bool)

(declare-fun e!934597 () Bool)

(assert (=> b!1465160 (= e!934597 (= (_2!8014 lt!509280) lt!507551))))

(declare-fun b!1465161 () Bool)

(declare-fun res!663247 () Bool)

(assert (=> b!1465161 (=> (not res!663247) (not e!934598))))

(assert (=> b!1465161 (= res!663247 (= (list!6083 (_1!8014 lt!509280)) (_1!8016 (lexList!717 Lexer!2329 (rules!11706 other!32) (list!6087 lt!507551)))))))

(declare-fun d!429973 () Bool)

(assert (=> d!429973 e!934598))

(declare-fun res!663249 () Bool)

(assert (=> d!429973 (=> (not res!663249) (not e!934598))))

(assert (=> d!429973 (= res!663249 e!934597)))

(declare-fun c!241618 () Bool)

(assert (=> d!429973 (= c!241618 (> (size!12423 (_1!8014 lt!509280)) 0))))

(assert (=> d!429973 (= lt!509280 (lexTailRecV2!472 Lexer!2329 (rules!11706 other!32) lt!507551 (BalanceConc!10293 Empty!5176) lt!507551 (BalanceConc!10295 Empty!5177)))))

(assert (=> d!429973 (= (lex!1076 Lexer!2329 (rules!11706 other!32) lt!507551) lt!509280)))

(declare-fun b!1465162 () Bool)

(assert (=> b!1465162 (= e!934597 e!934596)))

(declare-fun res!663248 () Bool)

(assert (=> b!1465162 (= res!663248 (< (size!12425 (_2!8014 lt!509280)) (size!12425 lt!507551)))))

(assert (=> b!1465162 (=> (not res!663248) (not e!934596))))

(assert (= (and d!429973 c!241618) b!1465162))

(assert (= (and d!429973 (not c!241618)) b!1465160))

(assert (= (and b!1465162 res!663248) b!1465159))

(assert (= (and d!429973 res!663249) b!1465161))

(assert (= (and b!1465161 res!663247) b!1465158))

(declare-fun m!1707687 () Bool)

(assert (=> b!1465162 m!1707687))

(declare-fun m!1707689 () Bool)

(assert (=> b!1465162 m!1707689))

(declare-fun m!1707691 () Bool)

(assert (=> b!1465161 m!1707691))

(assert (=> b!1465161 m!1702673))

(assert (=> b!1465161 m!1702673))

(declare-fun m!1707693 () Bool)

(assert (=> b!1465161 m!1707693))

(declare-fun m!1707695 () Bool)

(assert (=> b!1465159 m!1707695))

(declare-fun m!1707697 () Bool)

(assert (=> b!1465158 m!1707697))

(assert (=> b!1465158 m!1702673))

(assert (=> b!1465158 m!1702673))

(assert (=> b!1465158 m!1707693))

(declare-fun m!1707699 () Bool)

(assert (=> d!429973 m!1707699))

(declare-fun m!1707701 () Bool)

(assert (=> d!429973 m!1707701))

(assert (=> b!1463440 d!429973))

(declare-fun b!1465168 () Bool)

(declare-fun res!663252 () Bool)

(declare-fun e!934603 () Bool)

(assert (=> b!1465168 (=> (not res!663252) (not e!934603))))

(declare-fun lt!509298 () Token!5012)

(assert (=> b!1465168 (= res!663252 (matchR!1831 (regex!2675 (get!4623 (getRuleFromTag!224 Lexer!2329 (rules!11706 other!32) (tag!2939 (rule!4450 lt!509298))))) (list!6087 (charsOf!1538 lt!509298))))))

(declare-fun b!1465170 () Bool)

(declare-fun e!934602 () Unit!24509)

(declare-fun Unit!24777 () Unit!24509)

(assert (=> b!1465170 (= e!934602 Unit!24777)))

(declare-fun lt!509307 () List!15252)

(assert (=> b!1465170 (= lt!509307 (++!4093 (list!6087 (charsOf!1538 (h!20589 lt!506994))) (list!6087 lt!507551)))))

(declare-fun lt!509304 () Unit!24509)

(assert (=> b!1465170 (= lt!509304 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!117 Lexer!2329 (rule!4450 lt!509298) (rules!11706 other!32) lt!509307))))

(assert (=> b!1465170 (isEmpty!9547 (maxPrefixOneRule!663 Lexer!2329 (rule!4450 lt!509298) lt!509307))))

(declare-fun lt!509313 () Unit!24509)

(assert (=> b!1465170 (= lt!509313 lt!509304)))

(declare-fun lt!509303 () List!15252)

(assert (=> b!1465170 (= lt!509303 (list!6087 (charsOf!1538 lt!509298)))))

(declare-fun lt!509308 () Unit!24509)

(assert (=> b!1465170 (= lt!509308 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!113 Lexer!2329 (rule!4450 lt!509298) lt!509303 (++!4093 (list!6087 (charsOf!1538 (h!20589 lt!506994))) (list!6087 lt!507551))))))

(assert (=> b!1465170 (not (matchR!1831 (regex!2675 (rule!4450 lt!509298)) lt!509303))))

(declare-fun lt!509300 () Unit!24509)

(assert (=> b!1465170 (= lt!509300 lt!509308)))

(assert (=> b!1465170 false))

(declare-fun d!429977 () Bool)

(assert (=> d!429977 (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (++!4093 (list!6087 (charsOf!1538 (h!20589 lt!506994))) (list!6087 lt!507551))))))

(declare-fun lt!509310 () Unit!24509)

(assert (=> d!429977 (= lt!509310 e!934602)))

(declare-fun c!241620 () Bool)

(assert (=> d!429977 (= c!241620 (isEmpty!9547 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (++!4093 (list!6087 (charsOf!1538 (h!20589 lt!506994))) (list!6087 lt!507551)))))))

(declare-fun lt!509311 () Unit!24509)

(declare-fun lt!509301 () Unit!24509)

(assert (=> d!429977 (= lt!509311 lt!509301)))

(assert (=> d!429977 e!934603))

(declare-fun res!663253 () Bool)

(assert (=> d!429977 (=> (not res!663253) (not e!934603))))

(assert (=> d!429977 (= res!663253 (isDefined!2330 (getRuleFromTag!224 Lexer!2329 (rules!11706 other!32) (tag!2939 (rule!4450 lt!509298)))))))

(assert (=> d!429977 (= lt!509301 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!224 Lexer!2329 (rules!11706 other!32) (list!6087 (charsOf!1538 (h!20589 lt!506994))) lt!509298))))

(declare-fun lt!509312 () Unit!24509)

(declare-fun lt!509299 () Unit!24509)

(assert (=> d!429977 (= lt!509312 lt!509299)))

(declare-fun lt!509314 () List!15252)

(assert (=> d!429977 (isPrefix!1205 lt!509314 (++!4093 (list!6087 (charsOf!1538 (h!20589 lt!506994))) (list!6087 lt!507551)))))

(assert (=> d!429977 (= lt!509299 (lemmaPrefixStaysPrefixWhenAddingToSuffix!109 lt!509314 (list!6087 (charsOf!1538 (h!20589 lt!506994))) (list!6087 lt!507551)))))

(assert (=> d!429977 (= lt!509314 (list!6087 (charsOf!1538 lt!509298)))))

(declare-fun lt!509305 () Unit!24509)

(declare-fun lt!509306 () Unit!24509)

(assert (=> d!429977 (= lt!509305 lt!509306)))

(declare-fun lt!509302 () List!15252)

(declare-fun lt!509309 () List!15252)

(assert (=> d!429977 (isPrefix!1205 lt!509302 (++!4093 lt!509302 lt!509309))))

(assert (=> d!429977 (= lt!509306 (lemmaConcatTwoListThenFirstIsPrefix!768 lt!509302 lt!509309))))

(assert (=> d!429977 (= lt!509309 (_2!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (list!6087 (charsOf!1538 (h!20589 lt!506994)))))))))

(assert (=> d!429977 (= lt!509302 (list!6087 (charsOf!1538 lt!509298)))))

(assert (=> d!429977 (= lt!509298 (head!3020 (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 other!32) (seqFromList!1718 (list!6087 (charsOf!1538 (h!20589 lt!506994)))))))))))

(assert (=> d!429977 (not (isEmpty!9541 (rules!11706 other!32)))))

(assert (=> d!429977 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!241 Lexer!2329 (rules!11706 other!32) (list!6087 (charsOf!1538 (h!20589 lt!506994))) (list!6087 lt!507551)) lt!509310)))

(declare-fun b!1465171 () Bool)

(declare-fun Unit!24778 () Unit!24509)

(assert (=> b!1465171 (= e!934602 Unit!24778)))

(declare-fun b!1465169 () Bool)

(assert (=> b!1465169 (= e!934603 (= (rule!4450 lt!509298) (get!4623 (getRuleFromTag!224 Lexer!2329 (rules!11706 other!32) (tag!2939 (rule!4450 lt!509298))))))))

(assert (= (and d!429977 res!663253) b!1465168))

(assert (= (and b!1465168 res!663252) b!1465169))

(assert (= (and d!429977 c!241620) b!1465170))

(assert (= (and d!429977 (not c!241620)) b!1465171))

(declare-fun m!1707729 () Bool)

(assert (=> b!1465168 m!1707729))

(declare-fun m!1707731 () Bool)

(assert (=> b!1465168 m!1707731))

(assert (=> b!1465168 m!1707731))

(declare-fun m!1707735 () Bool)

(assert (=> b!1465168 m!1707735))

(declare-fun m!1707739 () Bool)

(assert (=> b!1465168 m!1707739))

(declare-fun m!1707741 () Bool)

(assert (=> b!1465168 m!1707741))

(assert (=> b!1465168 m!1707729))

(assert (=> b!1465168 m!1707739))

(assert (=> b!1465170 m!1707729))

(assert (=> b!1465170 m!1707731))

(declare-fun m!1707745 () Bool)

(assert (=> b!1465170 m!1707745))

(declare-fun m!1707747 () Bool)

(assert (=> b!1465170 m!1707747))

(declare-fun m!1707751 () Bool)

(assert (=> b!1465170 m!1707751))

(assert (=> b!1465170 m!1702653))

(assert (=> b!1465170 m!1702673))

(declare-fun m!1707755 () Bool)

(assert (=> b!1465170 m!1707755))

(assert (=> b!1465170 m!1707755))

(declare-fun m!1707759 () Bool)

(assert (=> b!1465170 m!1707759))

(assert (=> b!1465170 m!1707729))

(assert (=> b!1465170 m!1707745))

(declare-fun m!1707763 () Bool)

(assert (=> b!1465170 m!1707763))

(assert (=> d!429977 m!1701765))

(assert (=> d!429977 m!1707729))

(assert (=> d!429977 m!1707731))

(assert (=> d!429977 m!1702653))

(assert (=> d!429977 m!1702655))

(assert (=> d!429977 m!1702653))

(assert (=> d!429977 m!1702673))

(declare-fun m!1707771 () Bool)

(assert (=> d!429977 m!1707771))

(declare-fun m!1707773 () Bool)

(assert (=> d!429977 m!1707773))

(declare-fun m!1707775 () Bool)

(assert (=> d!429977 m!1707775))

(declare-fun m!1707777 () Bool)

(assert (=> d!429977 m!1707777))

(declare-fun m!1707779 () Bool)

(assert (=> d!429977 m!1707779))

(declare-fun m!1707781 () Bool)

(assert (=> d!429977 m!1707781))

(declare-fun m!1707783 () Bool)

(assert (=> d!429977 m!1707783))

(declare-fun m!1707785 () Bool)

(assert (=> d!429977 m!1707785))

(assert (=> d!429977 m!1707783))

(declare-fun m!1707787 () Bool)

(assert (=> d!429977 m!1707787))

(assert (=> d!429977 m!1702653))

(assert (=> d!429977 m!1702673))

(assert (=> d!429977 m!1707755))

(assert (=> d!429977 m!1702653))

(declare-fun m!1707789 () Bool)

(assert (=> d!429977 m!1707789))

(assert (=> d!429977 m!1707739))

(assert (=> d!429977 m!1707755))

(declare-fun m!1707791 () Bool)

(assert (=> d!429977 m!1707791))

(assert (=> d!429977 m!1707755))

(assert (=> d!429977 m!1707783))

(declare-fun m!1707793 () Bool)

(assert (=> d!429977 m!1707793))

(assert (=> d!429977 m!1707739))

(declare-fun m!1707795 () Bool)

(assert (=> d!429977 m!1707795))

(assert (=> d!429977 m!1707777))

(declare-fun m!1707797 () Bool)

(assert (=> d!429977 m!1707797))

(assert (=> d!429977 m!1702653))

(assert (=> d!429977 m!1707779))

(assert (=> d!429977 m!1707773))

(assert (=> d!429977 m!1702655))

(assert (=> d!429977 m!1702707))

(assert (=> d!429977 m!1707729))

(assert (=> b!1465169 m!1707739))

(assert (=> b!1465169 m!1707739))

(assert (=> b!1465169 m!1707741))

(assert (=> b!1463440 d!429977))

(declare-fun d!429985 () Bool)

(assert (=> d!429985 (= (list!6083 (prepend!429 (seqFromList!1716 (t!134647 (t!134647 lt!506994))) (h!20589 (t!134647 lt!506994)))) (list!6086 (c!241182 (prepend!429 (seqFromList!1716 (t!134647 (t!134647 lt!506994))) (h!20589 (t!134647 lt!506994))))))))

(declare-fun bs!344732 () Bool)

(assert (= bs!344732 d!429985))

(declare-fun m!1707799 () Bool)

(assert (=> bs!344732 m!1707799))

(assert (=> b!1463440 d!429985))

(assert (=> b!1463440 d!429267))

(declare-fun d!429987 () Bool)

(declare-fun lt!509347 () BalanceConc!10292)

(assert (=> d!429987 (= (list!6087 lt!509347) (printListTailRec!292 Lexer!2329 (dropList!483 (singletonSeq!1281 (h!20589 lt!506994)) 0) (list!6087 (BalanceConc!10293 Empty!5176))))))

(declare-fun e!934607 () BalanceConc!10292)

(assert (=> d!429987 (= lt!509347 e!934607)))

(declare-fun c!241622 () Bool)

(assert (=> d!429987 (= c!241622 (>= 0 (size!12423 (singletonSeq!1281 (h!20589 lt!506994)))))))

(declare-fun e!934606 () Bool)

(assert (=> d!429987 e!934606))

(declare-fun res!663255 () Bool)

(assert (=> d!429987 (=> (not res!663255) (not e!934606))))

(assert (=> d!429987 (= res!663255 (>= 0 0))))

(assert (=> d!429987 (= (printTailRec!699 Lexer!2329 (singletonSeq!1281 (h!20589 lt!506994)) 0 (BalanceConc!10293 Empty!5176)) lt!509347)))

(declare-fun b!1465175 () Bool)

(assert (=> b!1465175 (= e!934606 (<= 0 (size!12423 (singletonSeq!1281 (h!20589 lt!506994)))))))

(declare-fun b!1465176 () Bool)

(assert (=> b!1465176 (= e!934607 (BalanceConc!10293 Empty!5176))))

(declare-fun b!1465177 () Bool)

(assert (=> b!1465177 (= e!934607 (printTailRec!699 Lexer!2329 (singletonSeq!1281 (h!20589 lt!506994)) (+ 0 1) (++!4097 (BalanceConc!10293 Empty!5176) (charsOf!1538 (apply!3965 (singletonSeq!1281 (h!20589 lt!506994)) 0)))))))

(declare-fun lt!509345 () List!15254)

(assert (=> b!1465177 (= lt!509345 (list!6083 (singletonSeq!1281 (h!20589 lt!506994))))))

(declare-fun lt!509343 () Unit!24509)

(assert (=> b!1465177 (= lt!509343 (lemmaDropApply!495 lt!509345 0))))

(assert (=> b!1465177 (= (head!3020 (drop!745 lt!509345 0)) (apply!3966 lt!509345 0))))

(declare-fun lt!509344 () Unit!24509)

(assert (=> b!1465177 (= lt!509344 lt!509343)))

(declare-fun lt!509346 () List!15254)

(assert (=> b!1465177 (= lt!509346 (list!6083 (singletonSeq!1281 (h!20589 lt!506994))))))

(declare-fun lt!509341 () Unit!24509)

(assert (=> b!1465177 (= lt!509341 (lemmaDropTail!475 lt!509346 0))))

(assert (=> b!1465177 (= (tail!2177 (drop!745 lt!509346 0)) (drop!745 lt!509346 (+ 0 1)))))

(declare-fun lt!509342 () Unit!24509)

(assert (=> b!1465177 (= lt!509342 lt!509341)))

(assert (= (and d!429987 res!663255) b!1465175))

(assert (= (and d!429987 c!241622) b!1465176))

(assert (= (and d!429987 (not c!241622)) b!1465177))

(declare-fun m!1707805 () Bool)

(assert (=> d!429987 m!1707805))

(assert (=> d!429987 m!1703227))

(declare-fun m!1707809 () Bool)

(assert (=> d!429987 m!1707809))

(assert (=> d!429987 m!1702649))

(assert (=> d!429987 m!1707805))

(declare-fun m!1707811 () Bool)

(assert (=> d!429987 m!1707811))

(assert (=> d!429987 m!1703227))

(assert (=> d!429987 m!1702649))

(declare-fun m!1707817 () Bool)

(assert (=> d!429987 m!1707817))

(assert (=> b!1465175 m!1702649))

(assert (=> b!1465175 m!1707817))

(assert (=> b!1465177 m!1702649))

(declare-fun m!1707821 () Bool)

(assert (=> b!1465177 m!1707821))

(declare-fun m!1707823 () Bool)

(assert (=> b!1465177 m!1707823))

(assert (=> b!1465177 m!1702649))

(declare-fun m!1707827 () Bool)

(assert (=> b!1465177 m!1707827))

(declare-fun m!1707831 () Bool)

(assert (=> b!1465177 m!1707831))

(assert (=> b!1465177 m!1702649))

(declare-fun m!1707839 () Bool)

(assert (=> b!1465177 m!1707839))

(declare-fun m!1707843 () Bool)

(assert (=> b!1465177 m!1707843))

(declare-fun m!1707849 () Bool)

(assert (=> b!1465177 m!1707849))

(assert (=> b!1465177 m!1707827))

(declare-fun m!1707851 () Bool)

(assert (=> b!1465177 m!1707851))

(declare-fun m!1707853 () Bool)

(assert (=> b!1465177 m!1707853))

(assert (=> b!1465177 m!1707853))

(declare-fun m!1707859 () Bool)

(assert (=> b!1465177 m!1707859))

(assert (=> b!1465177 m!1707851))

(assert (=> b!1465177 m!1707839))

(declare-fun m!1707865 () Bool)

(assert (=> b!1465177 m!1707865))

(declare-fun m!1707867 () Bool)

(assert (=> b!1465177 m!1707867))

(assert (=> b!1465177 m!1707867))

(declare-fun m!1707869 () Bool)

(assert (=> b!1465177 m!1707869))

(assert (=> b!1463440 d!429987))

(declare-fun d!429989 () Bool)

(assert (=> d!429989 (= (seqFromList!1716 (t!134647 (t!134647 lt!506994))) (fromListB!738 (t!134647 (t!134647 lt!506994))))))

(declare-fun bs!344733 () Bool)

(assert (= bs!344733 d!429989))

(declare-fun m!1707877 () Bool)

(assert (=> bs!344733 m!1707877))

(assert (=> b!1463440 d!429989))

(declare-fun d!429991 () Bool)

(declare-fun lt!509348 () BalanceConc!10292)

(assert (=> d!429991 (= (list!6087 lt!509348) (printList!727 Lexer!2329 (list!6083 (singletonSeq!1281 (h!20589 lt!506994)))))))

(assert (=> d!429991 (= lt!509348 (printTailRec!699 Lexer!2329 (singletonSeq!1281 (h!20589 lt!506994)) 0 (BalanceConc!10293 Empty!5176)))))

(assert (=> d!429991 (= (print!1107 Lexer!2329 (singletonSeq!1281 (h!20589 lt!506994))) lt!509348)))

(declare-fun bs!344734 () Bool)

(assert (= bs!344734 d!429991))

(declare-fun m!1707885 () Bool)

(assert (=> bs!344734 m!1707885))

(assert (=> bs!344734 m!1702649))

(assert (=> bs!344734 m!1707821))

(assert (=> bs!344734 m!1707821))

(declare-fun m!1707891 () Bool)

(assert (=> bs!344734 m!1707891))

(assert (=> bs!344734 m!1702649))

(assert (=> bs!344734 m!1702665))

(assert (=> b!1463440 d!429991))

(declare-fun d!429993 () Bool)

(declare-fun lt!509349 () BalanceConc!10292)

(assert (=> d!429993 (= (list!6087 lt!509349) (printList!727 Lexer!2329 (list!6083 (seqFromList!1716 (t!134647 lt!506994)))))))

(assert (=> d!429993 (= lt!509349 (printTailRec!699 Lexer!2329 (seqFromList!1716 (t!134647 lt!506994)) 0 (BalanceConc!10293 Empty!5176)))))

(assert (=> d!429993 (= (print!1107 Lexer!2329 (seqFromList!1716 (t!134647 lt!506994))) lt!509349)))

(declare-fun bs!344735 () Bool)

(assert (= bs!344735 d!429993))

(declare-fun m!1707901 () Bool)

(assert (=> bs!344735 m!1707901))

(assert (=> bs!344735 m!1702681))

(declare-fun m!1707905 () Bool)

(assert (=> bs!344735 m!1707905))

(assert (=> bs!344735 m!1707905))

(declare-fun m!1707907 () Bool)

(assert (=> bs!344735 m!1707907))

(assert (=> bs!344735 m!1702681))

(declare-fun m!1707911 () Bool)

(assert (=> bs!344735 m!1707911))

(assert (=> b!1463440 d!429993))

(declare-fun d!429995 () Bool)

(assert (=> d!429995 (= (seqFromList!1716 (t!134647 lt!506994)) (fromListB!738 (t!134647 lt!506994)))))

(declare-fun bs!344736 () Bool)

(assert (= bs!344736 d!429995))

(declare-fun m!1707915 () Bool)

(assert (=> bs!344736 m!1707915))

(assert (=> b!1463440 d!429995))

(declare-fun d!429997 () Bool)

(assert (=> d!429997 (= (isEmpty!9545 (_2!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (list!6087 (charsOf!1538 (h!20589 lt!506994))))))) ((_ is Nil!15186) (_2!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (list!6087 (charsOf!1538 (h!20589 lt!506994))))))))))

(assert (=> b!1463440 d!429997))

(declare-fun d!429999 () Bool)

(assert (=> d!429999 (= (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (++!4093 (list!6087 (charsOf!1538 (h!20589 lt!506994))) (list!6087 lt!507551))) (Some!2878 (tuple2!14259 (h!20589 lt!506994) (list!6087 lt!507551))))))

(declare-fun lt!509357 () Unit!24509)

(declare-fun Unit!24779 () Unit!24509)

(assert (=> d!429999 (= lt!509357 Unit!24779)))

(declare-fun lt!509403 () Unit!24509)

(declare-fun e!934610 () Unit!24509)

(assert (=> d!429999 (= lt!509403 e!934610)))

(declare-fun c!241627 () Bool)

(declare-fun lt!509408 () Token!5012)

(assert (=> d!429999 (= c!241627 (not (= (rule!4450 lt!509408) (rule!4450 (h!20589 lt!506994)))))))

(declare-fun lt!509405 () Unit!24509)

(declare-fun lt!509370 () Unit!24509)

(assert (=> d!429999 (= lt!509405 lt!509370)))

(declare-fun lt!509360 () List!15252)

(assert (=> d!429999 (= (list!6087 lt!507551) lt!509360)))

(declare-fun lt!509361 () List!15252)

(assert (=> d!429999 (= lt!509370 (lemmaSamePrefixThenSameSuffix!607 (list!6087 (charsOf!1538 (h!20589 lt!506994))) (list!6087 lt!507551) (list!6087 (charsOf!1538 (h!20589 lt!506994))) lt!509360 lt!509361))))

(declare-fun lt!509366 () Unit!24509)

(declare-fun lt!509384 () Unit!24509)

(assert (=> d!429999 (= lt!509366 lt!509384)))

(declare-fun lt!509372 () List!15252)

(declare-fun lt!509364 () List!15252)

(assert (=> d!429999 (= lt!509372 lt!509364)))

(assert (=> d!429999 (= lt!509384 (lemmaIsPrefixSameLengthThenSameList!109 lt!509372 lt!509364 lt!509361))))

(assert (=> d!429999 (= lt!509364 (list!6087 (charsOf!1538 (h!20589 lt!506994))))))

(assert (=> d!429999 (= lt!509372 (list!6087 (charsOf!1538 lt!509408)))))

(declare-fun lt!509386 () Unit!24509)

(declare-fun e!934614 () Unit!24509)

(assert (=> d!429999 (= lt!509386 e!934614)))

(declare-fun c!241624 () Bool)

(assert (=> d!429999 (= c!241624 (< (size!12425 (charsOf!1538 lt!509408)) (size!12425 (charsOf!1538 (h!20589 lt!506994)))))))

(declare-fun lt!509369 () Unit!24509)

(declare-fun e!934612 () Unit!24509)

(assert (=> d!429999 (= lt!509369 e!934612)))

(declare-fun c!241623 () Bool)

(assert (=> d!429999 (= c!241623 (> (size!12425 (charsOf!1538 lt!509408)) (size!12425 (charsOf!1538 (h!20589 lt!506994)))))))

(declare-fun lt!509421 () Unit!24509)

(declare-fun lt!509380 () Unit!24509)

(assert (=> d!429999 (= lt!509421 lt!509380)))

(assert (=> d!429999 (matchR!1831 (rulesRegex!412 Lexer!2329 (rules!11706 other!32)) (list!6087 (charsOf!1538 (h!20589 lt!506994))))))

(assert (=> d!429999 (= lt!509380 (lemmaMaxPrefixThenMatchesRulesRegex!10 Lexer!2329 (rules!11706 other!32) (list!6087 (charsOf!1538 (h!20589 lt!506994))) (h!20589 lt!506994) (rule!4450 (h!20589 lt!506994)) Nil!15186))))

(declare-fun lt!509416 () Unit!24509)

(declare-fun lt!509417 () Unit!24509)

(assert (=> d!429999 (= lt!509416 lt!509417)))

(declare-fun lt!509378 () List!15252)

(assert (=> d!429999 (= lt!509360 lt!509378)))

(declare-fun lt!509399 () List!15252)

(declare-fun lt!509419 () List!15252)

(assert (=> d!429999 (= lt!509417 (lemmaSamePrefixThenSameSuffix!607 lt!509399 lt!509360 lt!509419 lt!509378 lt!509361))))

(assert (=> d!429999 (= lt!509378 (getSuffix!655 lt!509361 (list!6087 (charsOf!1538 lt!509408))))))

(assert (=> d!429999 (= lt!509419 (list!6087 (charsOf!1538 lt!509408)))))

(assert (=> d!429999 (= lt!509399 (list!6087 (charsOf!1538 lt!509408)))))

(declare-fun lt!509367 () Unit!24509)

(declare-fun lt!509396 () Unit!24509)

(assert (=> d!429999 (= lt!509367 lt!509396)))

(declare-fun lt!509397 () List!15252)

(assert (=> d!429999 (= (maxPrefixOneRule!663 Lexer!2329 (rule!4450 lt!509408) lt!509361) (Some!2878 (tuple2!14259 (Token!5013 (apply!3974 (transformation!2675 (rule!4450 lt!509408)) (seqFromList!1718 lt!509397)) (rule!4450 lt!509408) (size!12429 lt!509397) lt!509397) lt!509360)))))

(assert (=> d!429999 (= lt!509396 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!200 Lexer!2329 (rules!11706 other!32) lt!509397 lt!509361 lt!509360 (rule!4450 lt!509408)))))

(assert (=> d!429999 (= lt!509397 (list!6087 (charsOf!1538 lt!509408)))))

(declare-fun lt!509418 () Unit!24509)

(assert (=> d!429999 (= lt!509418 (lemmaCharactersSize!306 lt!509408))))

(declare-fun lt!509355 () Unit!24509)

(assert (=> d!429999 (= lt!509355 (lemmaEqSameImage!117 (transformation!2675 (rule!4450 lt!509408)) (charsOf!1538 lt!509408) (seqFromList!1718 (originalCharacters!3537 lt!509408))))))

(declare-fun lt!509365 () Unit!24509)

(assert (=> d!429999 (= lt!509365 (lemmaSemiInverse!352 (transformation!2675 (rule!4450 lt!509408)) (charsOf!1538 lt!509408)))))

(declare-fun lt!509407 () Unit!24509)

(assert (=> d!429999 (= lt!509407 (lemmaInv!384 (transformation!2675 (rule!4450 lt!509408))))))

(declare-fun lt!509410 () Unit!24509)

(declare-fun lt!509371 () Unit!24509)

(assert (=> d!429999 (= lt!509410 lt!509371)))

(declare-fun lt!509389 () List!15252)

(assert (=> d!429999 (isPrefix!1205 lt!509389 (++!4093 lt!509389 lt!509360))))

(assert (=> d!429999 (= lt!509371 (lemmaConcatTwoListThenFirstIsPrefix!768 lt!509389 lt!509360))))

(assert (=> d!429999 (= lt!509389 (list!6087 (charsOf!1538 lt!509408)))))

(declare-fun lt!509383 () Unit!24509)

(declare-fun lt!509390 () Unit!24509)

(assert (=> d!429999 (= lt!509383 lt!509390)))

(declare-fun e!934608 () Bool)

(assert (=> d!429999 e!934608))

(declare-fun res!663257 () Bool)

(assert (=> d!429999 (=> (not res!663257) (not e!934608))))

(assert (=> d!429999 (= res!663257 (isDefined!2330 (getRuleFromTag!224 Lexer!2329 (rules!11706 other!32) (tag!2939 (rule!4450 lt!509408)))))))

(assert (=> d!429999 (= lt!509390 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!224 Lexer!2329 (rules!11706 other!32) lt!509361 lt!509408))))

(declare-fun lt!509373 () Option!2879)

(assert (=> d!429999 (= lt!509360 (_2!8015 (get!4621 lt!509373)))))

(assert (=> d!429999 (= lt!509408 (_1!8015 (get!4621 lt!509373)))))

(declare-fun lt!509350 () Unit!24509)

(assert (=> d!429999 (= lt!509350 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!241 Lexer!2329 (rules!11706 other!32) (list!6087 (charsOf!1538 (h!20589 lt!506994))) (list!6087 lt!507551)))))

(assert (=> d!429999 (= lt!509373 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) lt!509361))))

(declare-fun lt!509388 () Unit!24509)

(declare-fun lt!509411 () Unit!24509)

(assert (=> d!429999 (= lt!509388 lt!509411)))

(declare-fun lt!509394 () List!15252)

(assert (=> d!429999 (isPrefix!1205 lt!509394 (++!4093 lt!509394 (list!6087 lt!507551)))))

(assert (=> d!429999 (= lt!509411 (lemmaConcatTwoListThenFirstIsPrefix!768 lt!509394 (list!6087 lt!507551)))))

(assert (=> d!429999 (= lt!509394 (list!6087 (charsOf!1538 (h!20589 lt!506994))))))

(assert (=> d!429999 (= lt!509361 (++!4093 (list!6087 (charsOf!1538 (h!20589 lt!506994))) (list!6087 lt!507551)))))

(assert (=> d!429999 (not (isEmpty!9541 (rules!11706 other!32)))))

(assert (=> d!429999 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!39 Lexer!2329 (rules!11706 other!32) (h!20589 lt!506994) (rule!4450 (h!20589 lt!506994)) (list!6087 lt!507551)) lt!509357)))

(declare-fun b!1465178 () Bool)

(declare-fun e!934613 () Unit!24509)

(declare-fun Unit!24780 () Unit!24509)

(assert (=> b!1465178 (= e!934613 Unit!24780)))

(declare-fun b!1465179 () Bool)

(assert (=> b!1465179 (= e!934608 (= (rule!4450 lt!509408) (get!4623 (getRuleFromTag!224 Lexer!2329 (rules!11706 other!32) (tag!2939 (rule!4450 lt!509408))))))))

(declare-fun b!1465180 () Bool)

(declare-fun Unit!24781 () Unit!24509)

(assert (=> b!1465180 (= e!934610 Unit!24781)))

(declare-fun b!1465181 () Bool)

(assert (=> b!1465181 false))

(declare-fun lt!509368 () Unit!24509)

(declare-fun lt!509358 () Unit!24509)

(assert (=> b!1465181 (= lt!509368 lt!509358)))

(declare-fun lt!509356 () List!15252)

(assert (=> b!1465181 (not (matchR!1831 (regex!2675 (rule!4450 lt!509408)) lt!509356))))

(assert (=> b!1465181 (= lt!509358 (lemmaMaxPrefNoSmallerRuleMatches!50 Lexer!2329 (rules!11706 other!32) (rule!4450 (h!20589 lt!506994)) lt!509356 (list!6087 (charsOf!1538 (h!20589 lt!506994))) (rule!4450 lt!509408)))))

(assert (=> b!1465181 (= lt!509356 (list!6087 (charsOf!1538 (h!20589 lt!506994))))))

(declare-fun Unit!24782 () Unit!24509)

(assert (=> b!1465181 (= e!934613 Unit!24782)))

(declare-fun b!1465182 () Bool)

(declare-fun res!663256 () Bool)

(assert (=> b!1465182 (=> (not res!663256) (not e!934608))))

(assert (=> b!1465182 (= res!663256 (matchR!1831 (regex!2675 (get!4623 (getRuleFromTag!224 Lexer!2329 (rules!11706 other!32) (tag!2939 (rule!4450 lt!509408))))) (list!6087 (charsOf!1538 lt!509408))))))

(declare-fun b!1465183 () Bool)

(declare-fun Unit!24784 () Unit!24509)

(assert (=> b!1465183 (= e!934612 Unit!24784)))

(declare-fun lt!509359 () Unit!24509)

(assert (=> b!1465183 (= lt!509359 (lemmaMaxPrefixThenMatchesRulesRegex!10 Lexer!2329 (rules!11706 other!32) lt!509361 lt!509408 (rule!4450 lt!509408) lt!509360))))

(assert (=> b!1465183 (matchR!1831 (rulesRegex!412 Lexer!2329 (rules!11706 other!32)) (list!6087 (charsOf!1538 lt!509408)))))

(declare-fun lt!509409 () Unit!24509)

(assert (=> b!1465183 (= lt!509409 lt!509359)))

(declare-fun lt!509414 () List!15252)

(assert (=> b!1465183 (= lt!509414 (list!6087 (charsOf!1538 (h!20589 lt!506994))))))

(declare-fun lt!509398 () List!15252)

(assert (=> b!1465183 (= lt!509398 (list!6087 (charsOf!1538 (h!20589 lt!506994))))))

(declare-fun lt!509377 () List!15252)

(assert (=> b!1465183 (= lt!509377 (getSuffix!655 lt!509361 (list!6087 (charsOf!1538 (h!20589 lt!506994)))))))

(declare-fun lt!509415 () Unit!24509)

(assert (=> b!1465183 (= lt!509415 (lemmaSamePrefixThenSameSuffix!607 lt!509414 (list!6087 lt!507551) lt!509398 lt!509377 lt!509361))))

(assert (=> b!1465183 (= (list!6087 lt!507551) lt!509377)))

(declare-fun lt!509352 () Unit!24509)

(assert (=> b!1465183 (= lt!509352 lt!509415)))

(declare-fun lt!509354 () List!15252)

(assert (=> b!1465183 (= lt!509354 (list!6087 (charsOf!1538 (h!20589 lt!506994))))))

(declare-fun lt!509362 () Unit!24509)

(assert (=> b!1465183 (= lt!509362 (lemmaAddHeadSuffixToPrefixStillPrefix!98 lt!509354 lt!509361))))

(assert (=> b!1465183 (isPrefix!1205 (++!4093 lt!509354 (Cons!15186 (head!3024 (getSuffix!655 lt!509361 lt!509354)) Nil!15186)) lt!509361)))

(declare-fun lt!509420 () Unit!24509)

(assert (=> b!1465183 (= lt!509420 lt!509362)))

(declare-fun lt!509363 () List!15252)

(assert (=> b!1465183 (= lt!509363 (list!6087 (charsOf!1538 lt!509408)))))

(declare-fun lt!509401 () List!15252)

(assert (=> b!1465183 (= lt!509401 (++!4093 (list!6087 (charsOf!1538 (h!20589 lt!506994))) (Cons!15186 (head!3024 (list!6087 lt!507551)) Nil!15186)))))

(declare-fun lt!509374 () Unit!24509)

(assert (=> b!1465183 (= lt!509374 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!10 lt!509363 lt!509401 lt!509361))))

(assert (=> b!1465183 (isPrefix!1205 lt!509401 lt!509363)))

(declare-fun lt!509381 () Unit!24509)

(assert (=> b!1465183 (= lt!509381 lt!509374)))

(declare-fun lt!509387 () Regex!3989)

(assert (=> b!1465183 (= lt!509387 (rulesRegex!412 Lexer!2329 (rules!11706 other!32)))))

(declare-fun lt!509402 () List!15252)

(assert (=> b!1465183 (= lt!509402 (++!4093 (list!6087 (charsOf!1538 (h!20589 lt!506994))) (Cons!15186 (head!3024 (list!6087 lt!507551)) Nil!15186)))))

(declare-fun lt!509391 () List!15252)

(assert (=> b!1465183 (= lt!509391 (list!6087 (charsOf!1538 lt!509408)))))

(declare-fun lt!509375 () Unit!24509)

(assert (=> b!1465183 (= lt!509375 (lemmaNotPrefixMatchThenCannotMatchLonger!11 lt!509387 lt!509402 lt!509391))))

(assert (=> b!1465183 (not (matchR!1831 lt!509387 lt!509391))))

(declare-fun lt!509395 () Unit!24509)

(assert (=> b!1465183 (= lt!509395 lt!509375)))

(assert (=> b!1465183 false))

(declare-fun b!1465184 () Bool)

(declare-fun e!934609 () Unit!24509)

(declare-fun Unit!24786 () Unit!24509)

(assert (=> b!1465184 (= e!934609 Unit!24786)))

(declare-fun b!1465185 () Bool)

(declare-fun e!934611 () Unit!24509)

(declare-fun Unit!24787 () Unit!24509)

(assert (=> b!1465185 (= e!934611 Unit!24787)))

(declare-fun b!1465186 () Bool)

(declare-fun Unit!24788 () Unit!24509)

(assert (=> b!1465186 (= e!934614 Unit!24788)))

(declare-fun b!1465187 () Bool)

(assert (=> b!1465187 false))

(declare-fun lt!509353 () Unit!24509)

(declare-fun lt!509392 () Unit!24509)

(assert (=> b!1465187 (= lt!509353 lt!509392)))

(declare-fun lt!509413 () List!15252)

(assert (=> b!1465187 (not (matchR!1831 (regex!2675 (rule!4450 (h!20589 lt!506994))) lt!509413))))

(assert (=> b!1465187 (= lt!509392 (lemmaMaxPrefNoSmallerRuleMatches!50 Lexer!2329 (rules!11706 other!32) (rule!4450 lt!509408) lt!509413 lt!509361 (rule!4450 (h!20589 lt!506994))))))

(assert (=> b!1465187 (= lt!509413 (list!6087 (charsOf!1538 lt!509408)))))

(declare-fun Unit!24789 () Unit!24509)

(assert (=> b!1465187 (= e!934609 Unit!24789)))

(declare-fun b!1465188 () Bool)

(declare-fun Unit!24790 () Unit!24509)

(assert (=> b!1465188 (= e!934612 Unit!24790)))

(declare-fun b!1465189 () Bool)

(declare-fun Unit!24791 () Unit!24509)

(assert (=> b!1465189 (= e!934610 Unit!24791)))

(declare-fun c!241625 () Bool)

(assert (=> b!1465189 (= c!241625 (< (getIndex!78 (rules!11706 other!32) (rule!4450 (h!20589 lt!506994))) (getIndex!78 (rules!11706 other!32) (rule!4450 lt!509408))))))

(declare-fun lt!509393 () Unit!24509)

(assert (=> b!1465189 (= lt!509393 e!934609)))

(declare-fun c!241628 () Bool)

(assert (=> b!1465189 (= c!241628 (< (getIndex!78 (rules!11706 other!32) (rule!4450 lt!509408)) (getIndex!78 (rules!11706 other!32) (rule!4450 (h!20589 lt!506994)))))))

(declare-fun lt!509379 () Unit!24509)

(assert (=> b!1465189 (= lt!509379 e!934613)))

(declare-fun c!241626 () Bool)

(assert (=> b!1465189 (= c!241626 (= (getIndex!78 (rules!11706 other!32) (rule!4450 lt!509408)) (getIndex!78 (rules!11706 other!32) (rule!4450 (h!20589 lt!506994)))))))

(declare-fun lt!509351 () Unit!24509)

(assert (=> b!1465189 (= lt!509351 e!934611)))

(assert (=> b!1465189 false))

(declare-fun b!1465190 () Bool)

(declare-fun Unit!24792 () Unit!24509)

(assert (=> b!1465190 (= e!934614 Unit!24792)))

(declare-fun lt!509385 () List!15252)

(assert (=> b!1465190 (= lt!509385 (list!6087 (charsOf!1538 lt!509408)))))

(declare-fun lt!509400 () List!15252)

(assert (=> b!1465190 (= lt!509400 (list!6087 (charsOf!1538 (h!20589 lt!506994))))))

(declare-fun lt!509376 () Unit!24509)

(assert (=> b!1465190 (= lt!509376 (lemmaMaxPrefixOutputsMaxPrefix!100 Lexer!2329 (rules!11706 other!32) (rule!4450 lt!509408) lt!509385 lt!509361 lt!509400 (rule!4450 (h!20589 lt!506994))))))

(assert (=> b!1465190 (not (matchR!1831 (regex!2675 (rule!4450 (h!20589 lt!506994))) lt!509400))))

(declare-fun lt!509406 () Unit!24509)

(assert (=> b!1465190 (= lt!509406 lt!509376)))

(assert (=> b!1465190 false))

(declare-fun b!1465191 () Bool)

(assert (=> b!1465191 false))

(declare-fun lt!509412 () Unit!24509)

(declare-fun lt!509404 () Unit!24509)

(assert (=> b!1465191 (= lt!509412 lt!509404)))

(assert (=> b!1465191 (= (rule!4450 lt!509408) (rule!4450 (h!20589 lt!506994)))))

(assert (=> b!1465191 (= lt!509404 (lemmaSameIndexThenSameElement!26 (rules!11706 other!32) (rule!4450 lt!509408) (rule!4450 (h!20589 lt!506994))))))

(declare-fun Unit!24793 () Unit!24509)

(assert (=> b!1465191 (= e!934611 Unit!24793)))

(assert (= (and d!429999 res!663257) b!1465182))

(assert (= (and b!1465182 res!663256) b!1465179))

(assert (= (and d!429999 c!241623) b!1465183))

(assert (= (and d!429999 (not c!241623)) b!1465188))

(assert (= (and d!429999 c!241624) b!1465190))

(assert (= (and d!429999 (not c!241624)) b!1465186))

(assert (= (and d!429999 c!241627) b!1465189))

(assert (= (and d!429999 (not c!241627)) b!1465180))

(assert (= (and b!1465189 c!241625) b!1465187))

(assert (= (and b!1465189 (not c!241625)) b!1465184))

(assert (= (and b!1465189 c!241628) b!1465181))

(assert (= (and b!1465189 (not c!241628)) b!1465178))

(assert (= (and b!1465189 c!241626) b!1465191))

(assert (= (and b!1465189 (not c!241626)) b!1465185))

(declare-fun m!1707971 () Bool)

(assert (=> b!1465182 m!1707971))

(declare-fun m!1707973 () Bool)

(assert (=> b!1465182 m!1707973))

(declare-fun m!1707975 () Bool)

(assert (=> b!1465182 m!1707975))

(declare-fun m!1707977 () Bool)

(assert (=> b!1465182 m!1707977))

(declare-fun m!1707979 () Bool)

(assert (=> b!1465182 m!1707979))

(assert (=> b!1465182 m!1707973))

(assert (=> b!1465182 m!1707971))

(assert (=> b!1465182 m!1707977))

(declare-fun m!1707981 () Bool)

(assert (=> b!1465183 m!1707981))

(assert (=> b!1465183 m!1702673))

(declare-fun m!1707983 () Bool)

(assert (=> b!1465183 m!1707983))

(declare-fun m!1707985 () Bool)

(assert (=> b!1465183 m!1707985))

(declare-fun m!1707987 () Bool)

(assert (=> b!1465183 m!1707987))

(assert (=> b!1465183 m!1702653))

(declare-fun m!1707989 () Bool)

(assert (=> b!1465183 m!1707989))

(declare-fun m!1707991 () Bool)

(assert (=> b!1465183 m!1707991))

(assert (=> b!1465183 m!1707981))

(declare-fun m!1707993 () Bool)

(assert (=> b!1465183 m!1707993))

(assert (=> b!1465183 m!1702673))

(assert (=> b!1465183 m!1702709))

(assert (=> b!1465183 m!1702653))

(declare-fun m!1707995 () Bool)

(assert (=> b!1465183 m!1707995))

(assert (=> b!1465183 m!1707971))

(assert (=> b!1465183 m!1707977))

(assert (=> b!1465183 m!1707985))

(assert (=> b!1465183 m!1707977))

(declare-fun m!1707999 () Bool)

(assert (=> b!1465183 m!1707999))

(assert (=> b!1465183 m!1702687))

(declare-fun m!1708003 () Bool)

(assert (=> b!1465183 m!1708003))

(assert (=> b!1465183 m!1707971))

(declare-fun m!1708007 () Bool)

(assert (=> b!1465183 m!1708007))

(assert (=> b!1465183 m!1708007))

(declare-fun m!1708015 () Bool)

(assert (=> b!1465183 m!1708015))

(declare-fun m!1708021 () Bool)

(assert (=> b!1465183 m!1708021))

(declare-fun m!1708023 () Bool)

(assert (=> b!1465183 m!1708023))

(declare-fun m!1708025 () Bool)

(assert (=> b!1465183 m!1708025))

(assert (=> b!1465183 m!1702687))

(assert (=> b!1465183 m!1702653))

(declare-fun m!1708027 () Bool)

(assert (=> b!1465187 m!1708027))

(declare-fun m!1708029 () Bool)

(assert (=> b!1465187 m!1708029))

(assert (=> b!1465187 m!1707971))

(assert (=> b!1465187 m!1707971))

(assert (=> b!1465187 m!1707977))

(assert (=> b!1465179 m!1707973))

(assert (=> b!1465179 m!1707973))

(assert (=> b!1465179 m!1707975))

(declare-fun m!1708031 () Bool)

(assert (=> b!1465191 m!1708031))

(declare-fun m!1708033 () Bool)

(assert (=> d!429999 m!1708033))

(assert (=> d!429999 m!1702673))

(declare-fun m!1708035 () Bool)

(assert (=> d!429999 m!1708035))

(assert (=> d!429999 m!1707985))

(declare-fun m!1708037 () Bool)

(assert (=> d!429999 m!1708037))

(declare-fun m!1708039 () Bool)

(assert (=> d!429999 m!1708039))

(declare-fun m!1708041 () Bool)

(assert (=> d!429999 m!1708041))

(declare-fun m!1708045 () Bool)

(assert (=> d!429999 m!1708045))

(declare-fun m!1708049 () Bool)

(assert (=> d!429999 m!1708049))

(assert (=> d!429999 m!1702673))

(declare-fun m!1708053 () Bool)

(assert (=> d!429999 m!1708053))

(assert (=> d!429999 m!1707973))

(declare-fun m!1708059 () Bool)

(assert (=> d!429999 m!1708059))

(declare-fun m!1708063 () Bool)

(assert (=> d!429999 m!1708063))

(assert (=> d!429999 m!1707985))

(assert (=> d!429999 m!1702653))

(declare-fun m!1708065 () Bool)

(assert (=> d!429999 m!1708065))

(assert (=> d!429999 m!1702687))

(assert (=> d!429999 m!1702687))

(declare-fun m!1708067 () Bool)

(assert (=> d!429999 m!1708067))

(declare-fun m!1708069 () Bool)

(assert (=> d!429999 m!1708069))

(assert (=> d!429999 m!1702653))

(assert (=> d!429999 m!1702673))

(assert (=> d!429999 m!1702653))

(declare-fun m!1708071 () Bool)

(assert (=> d!429999 m!1708071))

(assert (=> d!429999 m!1708033))

(declare-fun m!1708075 () Bool)

(assert (=> d!429999 m!1708075))

(assert (=> d!429999 m!1707971))

(declare-fun m!1708081 () Bool)

(assert (=> d!429999 m!1708081))

(declare-fun m!1708083 () Bool)

(assert (=> d!429999 m!1708083))

(assert (=> d!429999 m!1707971))

(declare-fun m!1708085 () Bool)

(assert (=> d!429999 m!1708085))

(assert (=> d!429999 m!1701765))

(assert (=> d!429999 m!1708081))

(assert (=> d!429999 m!1707971))

(declare-fun m!1708089 () Bool)

(assert (=> d!429999 m!1708089))

(declare-fun m!1708091 () Bool)

(assert (=> d!429999 m!1708091))

(assert (=> d!429999 m!1708089))

(assert (=> d!429999 m!1702653))

(declare-fun m!1708093 () Bool)

(assert (=> d!429999 m!1708093))

(declare-fun m!1708095 () Bool)

(assert (=> d!429999 m!1708095))

(assert (=> d!429999 m!1708053))

(declare-fun m!1708097 () Bool)

(assert (=> d!429999 m!1708097))

(assert (=> d!429999 m!1707755))

(assert (=> d!429999 m!1707783))

(assert (=> d!429999 m!1707971))

(declare-fun m!1708099 () Bool)

(assert (=> d!429999 m!1708099))

(assert (=> d!429999 m!1707977))

(declare-fun m!1708101 () Bool)

(assert (=> d!429999 m!1708101))

(assert (=> d!429999 m!1702653))

(assert (=> d!429999 m!1702673))

(assert (=> d!429999 m!1707755))

(assert (=> d!429999 m!1707971))

(assert (=> d!429999 m!1707977))

(assert (=> d!429999 m!1707973))

(declare-fun m!1708103 () Bool)

(assert (=> d!429999 m!1708103))

(assert (=> d!429999 m!1702653))

(assert (=> d!429999 m!1702673))

(assert (=> d!429999 m!1702675))

(declare-fun m!1708105 () Bool)

(assert (=> d!429999 m!1708105))

(declare-fun m!1708107 () Bool)

(assert (=> d!429999 m!1708107))

(assert (=> d!429999 m!1702687))

(assert (=> d!429999 m!1702653))

(declare-fun m!1708109 () Bool)

(assert (=> b!1465189 m!1708109))

(declare-fun m!1708111 () Bool)

(assert (=> b!1465189 m!1708111))

(declare-fun m!1708113 () Bool)

(assert (=> b!1465181 m!1708113))

(assert (=> b!1465181 m!1702687))

(assert (=> b!1465181 m!1702687))

(assert (=> b!1465181 m!1702653))

(assert (=> b!1465181 m!1702653))

(declare-fun m!1708115 () Bool)

(assert (=> b!1465181 m!1708115))

(assert (=> b!1465190 m!1707971))

(declare-fun m!1708117 () Bool)

(assert (=> b!1465190 m!1708117))

(assert (=> b!1465190 m!1702687))

(assert (=> b!1465190 m!1702653))

(assert (=> b!1465190 m!1702687))

(assert (=> b!1465190 m!1707971))

(assert (=> b!1465190 m!1707977))

(declare-fun m!1708119 () Bool)

(assert (=> b!1465190 m!1708119))

(assert (=> b!1463440 d!429999))

(declare-fun d!430023 () Bool)

(declare-fun e!934627 () Bool)

(assert (=> d!430023 e!934627))

(declare-fun res!663278 () Bool)

(assert (=> d!430023 (=> (not res!663278) (not e!934627))))

(declare-fun lt!509436 () BalanceConc!10292)

(assert (=> d!430023 (= res!663278 (= (list!6087 lt!509436) (Cons!15186 (apply!3969 (charsOf!1538 (h!20589 (t!134647 lt!506994))) 0) Nil!15186)))))

(assert (=> d!430023 (= lt!509436 (singleton!542 (apply!3969 (charsOf!1538 (h!20589 (t!134647 lt!506994))) 0)))))

(assert (=> d!430023 (= (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 lt!506994))) 0)) lt!509436)))

(declare-fun b!1465220 () Bool)

(assert (=> b!1465220 (= e!934627 (isBalanced!1557 (c!241180 lt!509436)))))

(assert (= (and d!430023 res!663278) b!1465220))

(declare-fun m!1708121 () Bool)

(assert (=> d!430023 m!1708121))

(assert (=> d!430023 m!1702661))

(declare-fun m!1708123 () Bool)

(assert (=> d!430023 m!1708123))

(declare-fun m!1708125 () Bool)

(assert (=> b!1465220 m!1708125))

(assert (=> b!1463440 d!430023))

(assert (=> b!1463440 d!429565))

(declare-fun d!430025 () Bool)

(assert (=> d!430025 (= (head!3024 (originalCharacters!3537 (h!20589 (t!134647 lt!506994)))) (h!20587 (originalCharacters!3537 (h!20589 (t!134647 lt!506994)))))))

(assert (=> b!1463440 d!430025))

(assert (=> b!1463440 d!429563))

(declare-fun d!430027 () Bool)

(declare-fun e!934628 () Bool)

(assert (=> d!430027 e!934628))

(declare-fun res!663279 () Bool)

(assert (=> d!430027 (=> (not res!663279) (not e!934628))))

(declare-fun lt!509437 () BalanceConc!10294)

(assert (=> d!430027 (= res!663279 (= (list!6083 lt!509437) (Cons!15188 (h!20589 lt!506994) Nil!15188)))))

(assert (=> d!430027 (= lt!509437 (singleton!539 (h!20589 lt!506994)))))

(assert (=> d!430027 (= (singletonSeq!1281 (h!20589 lt!506994)) lt!509437)))

(declare-fun b!1465221 () Bool)

(assert (=> b!1465221 (= e!934628 (isBalanced!1555 (c!241182 lt!509437)))))

(assert (= (and d!430027 res!663279) b!1465221))

(declare-fun m!1708139 () Bool)

(assert (=> d!430027 m!1708139))

(declare-fun m!1708143 () Bool)

(assert (=> d!430027 m!1708143))

(declare-fun m!1708145 () Bool)

(assert (=> b!1465221 m!1708145))

(assert (=> b!1463440 d!430027))

(declare-fun d!430029 () Bool)

(assert (=> d!430029 (= (list!6087 lt!507564) (list!6088 (c!241180 lt!507564)))))

(declare-fun bs!344743 () Bool)

(assert (= bs!344743 d!430029))

(declare-fun m!1708153 () Bool)

(assert (=> bs!344743 m!1708153))

(assert (=> b!1463440 d!430029))

(declare-fun d!430031 () Bool)

(declare-fun lt!509438 () BalanceConc!10292)

(assert (=> d!430031 (= (list!6087 lt!509438) (originalCharacters!3537 (h!20589 (t!134647 lt!506994))))))

(assert (=> d!430031 (= lt!509438 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!506994))))) (value!85885 (h!20589 (t!134647 lt!506994)))))))

(assert (=> d!430031 (= (charsOf!1538 (h!20589 (t!134647 lt!506994))) lt!509438)))

(declare-fun b_lambda!45691 () Bool)

(assert (=> (not b_lambda!45691) (not d!430031)))

(declare-fun tb!82713 () Bool)

(declare-fun t!134748 () Bool)

(assert (=> (and b!1463502 (= (toChars!3845 (transformation!2675 (h!20590 (rules!11706 other!32)))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!506994)))))) t!134748) tb!82713))

(declare-fun b!1465222 () Bool)

(declare-fun e!934629 () Bool)

(declare-fun tp!411867 () Bool)

(assert (=> b!1465222 (= e!934629 (and (inv!20311 (c!241180 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!506994))))) (value!85885 (h!20589 (t!134647 lt!506994)))))) tp!411867))))

(declare-fun result!99366 () Bool)

(assert (=> tb!82713 (= result!99366 (and (inv!20312 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!506994))))) (value!85885 (h!20589 (t!134647 lt!506994))))) e!934629))))

(assert (= tb!82713 b!1465222))

(declare-fun m!1708167 () Bool)

(assert (=> b!1465222 m!1708167))

(declare-fun m!1708169 () Bool)

(assert (=> tb!82713 m!1708169))

(assert (=> d!430031 t!134748))

(declare-fun b_and!99977 () Bool)

(assert (= b_and!99965 (and (=> t!134748 result!99366) b_and!99977)))

(declare-fun t!134750 () Bool)

(declare-fun tb!82715 () Bool)

(assert (=> (and b!1463508 (= (toChars!3845 (transformation!2675 (h!20590 (rules!11706 thiss!10022)))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!506994)))))) t!134750) tb!82715))

(declare-fun result!99368 () Bool)

(assert (= result!99368 result!99366))

(assert (=> d!430031 t!134750))

(declare-fun b_and!99979 () Bool)

(assert (= b_and!99967 (and (=> t!134750 result!99368) b_and!99979)))

(declare-fun m!1708171 () Bool)

(assert (=> d!430031 m!1708171))

(declare-fun m!1708175 () Bool)

(assert (=> d!430031 m!1708175))

(assert (=> b!1463440 d!430031))

(declare-fun d!430037 () Bool)

(assert (=> d!430037 (= (head!3024 (list!6087 lt!507551)) (h!20587 (list!6087 lt!507551)))))

(assert (=> b!1463440 d!430037))

(declare-fun d!430039 () Bool)

(assert (=> d!430039 (= (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (list!6087 (charsOf!1538 (h!20589 lt!506994))))) (v!22514 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (list!6087 (charsOf!1538 (h!20589 lt!506994))))))))

(assert (=> b!1463440 d!430039))

(declare-fun bm!98549 () Bool)

(declare-fun call!98554 () Option!2879)

(assert (=> bm!98549 (= call!98554 (maxPrefixOneRule!663 Lexer!2329 (h!20590 (rules!11706 other!32)) (list!6087 lt!507564)))))

(declare-fun b!1465224 () Bool)

(declare-fun res!663282 () Bool)

(declare-fun e!934633 () Bool)

(assert (=> b!1465224 (=> (not res!663282) (not e!934633))))

(declare-fun lt!509444 () Option!2879)

(assert (=> b!1465224 (= res!663282 (= (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!509444)))) (originalCharacters!3537 (_1!8015 (get!4621 lt!509444)))))))

(declare-fun b!1465225 () Bool)

(declare-fun res!663285 () Bool)

(assert (=> b!1465225 (=> (not res!663285) (not e!934633))))

(assert (=> b!1465225 (= res!663285 (= (value!85885 (_1!8015 (get!4621 lt!509444))) (apply!3974 (transformation!2675 (rule!4450 (_1!8015 (get!4621 lt!509444)))) (seqFromList!1718 (originalCharacters!3537 (_1!8015 (get!4621 lt!509444)))))))))

(declare-fun b!1465226 () Bool)

(declare-fun res!663281 () Bool)

(assert (=> b!1465226 (=> (not res!663281) (not e!934633))))

(assert (=> b!1465226 (= res!663281 (= (++!4093 (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!509444)))) (_2!8015 (get!4621 lt!509444))) (list!6087 lt!507564)))))

(declare-fun b!1465227 () Bool)

(assert (=> b!1465227 (= e!934633 (contains!2912 (rules!11706 other!32) (rule!4450 (_1!8015 (get!4621 lt!509444)))))))

(declare-fun d!430041 () Bool)

(declare-fun e!934632 () Bool)

(assert (=> d!430041 e!934632))

(declare-fun res!663286 () Bool)

(assert (=> d!430041 (=> res!663286 e!934632)))

(assert (=> d!430041 (= res!663286 (isEmpty!9547 lt!509444))))

(declare-fun e!934631 () Option!2879)

(assert (=> d!430041 (= lt!509444 e!934631)))

(declare-fun c!241633 () Bool)

(assert (=> d!430041 (= c!241633 (and ((_ is Cons!15189) (rules!11706 other!32)) ((_ is Nil!15189) (t!134648 (rules!11706 other!32)))))))

(declare-fun lt!509440 () Unit!24509)

(declare-fun lt!509443 () Unit!24509)

(assert (=> d!430041 (= lt!509440 lt!509443)))

(assert (=> d!430041 (isPrefix!1205 (list!6087 lt!507564) (list!6087 lt!507564))))

(assert (=> d!430041 (= lt!509443 (lemmaIsPrefixRefl!837 (list!6087 lt!507564) (list!6087 lt!507564)))))

(assert (=> d!430041 (rulesValidInductive!834 Lexer!2329 (rules!11706 other!32))))

(assert (=> d!430041 (= (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (list!6087 lt!507564)) lt!509444)))

(declare-fun b!1465228 () Bool)

(assert (=> b!1465228 (= e!934631 call!98554)))

(declare-fun b!1465229 () Bool)

(declare-fun res!663283 () Bool)

(assert (=> b!1465229 (=> (not res!663283) (not e!934633))))

(assert (=> b!1465229 (= res!663283 (matchR!1831 (regex!2675 (rule!4450 (_1!8015 (get!4621 lt!509444)))) (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!509444))))))))

(declare-fun b!1465230 () Bool)

(assert (=> b!1465230 (= e!934632 e!934633)))

(declare-fun res!663287 () Bool)

(assert (=> b!1465230 (=> (not res!663287) (not e!934633))))

(assert (=> b!1465230 (= res!663287 (isDefined!2328 lt!509444))))

(declare-fun b!1465231 () Bool)

(declare-fun lt!509442 () Option!2879)

(declare-fun lt!509441 () Option!2879)

(assert (=> b!1465231 (= e!934631 (ite (and ((_ is None!2878) lt!509442) ((_ is None!2878) lt!509441)) None!2878 (ite ((_ is None!2878) lt!509441) lt!509442 (ite ((_ is None!2878) lt!509442) lt!509441 (ite (>= (size!12421 (_1!8015 (v!22514 lt!509442))) (size!12421 (_1!8015 (v!22514 lt!509441)))) lt!509442 lt!509441)))))))

(assert (=> b!1465231 (= lt!509442 call!98554)))

(assert (=> b!1465231 (= lt!509441 (maxPrefix!1195 Lexer!2329 (t!134648 (rules!11706 other!32)) (list!6087 lt!507564)))))

(declare-fun b!1465232 () Bool)

(declare-fun res!663284 () Bool)

(assert (=> b!1465232 (=> (not res!663284) (not e!934633))))

(assert (=> b!1465232 (= res!663284 (< (size!12429 (_2!8015 (get!4621 lt!509444))) (size!12429 (list!6087 lt!507564))))))

(assert (= (and d!430041 c!241633) b!1465228))

(assert (= (and d!430041 (not c!241633)) b!1465231))

(assert (= (or b!1465228 b!1465231) bm!98549))

(assert (= (and d!430041 (not res!663286)) b!1465230))

(assert (= (and b!1465230 res!663287) b!1465224))

(assert (= (and b!1465224 res!663282) b!1465232))

(assert (= (and b!1465232 res!663284) b!1465226))

(assert (= (and b!1465226 res!663281) b!1465225))

(assert (= (and b!1465225 res!663285) b!1465229))

(assert (= (and b!1465229 res!663283) b!1465227))

(declare-fun m!1708185 () Bool)

(assert (=> b!1465224 m!1708185))

(declare-fun m!1708187 () Bool)

(assert (=> b!1465224 m!1708187))

(assert (=> b!1465224 m!1708187))

(declare-fun m!1708189 () Bool)

(assert (=> b!1465224 m!1708189))

(assert (=> b!1465226 m!1708185))

(assert (=> b!1465226 m!1708187))

(assert (=> b!1465226 m!1708187))

(assert (=> b!1465226 m!1708189))

(assert (=> b!1465226 m!1708189))

(declare-fun m!1708191 () Bool)

(assert (=> b!1465226 m!1708191))

(assert (=> b!1465232 m!1708185))

(declare-fun m!1708193 () Bool)

(assert (=> b!1465232 m!1708193))

(assert (=> b!1465232 m!1702679))

(declare-fun m!1708195 () Bool)

(assert (=> b!1465232 m!1708195))

(assert (=> b!1465231 m!1702679))

(declare-fun m!1708197 () Bool)

(assert (=> b!1465231 m!1708197))

(assert (=> b!1465229 m!1708185))

(assert (=> b!1465229 m!1708187))

(assert (=> b!1465229 m!1708187))

(assert (=> b!1465229 m!1708189))

(assert (=> b!1465229 m!1708189))

(declare-fun m!1708199 () Bool)

(assert (=> b!1465229 m!1708199))

(assert (=> b!1465227 m!1708185))

(declare-fun m!1708201 () Bool)

(assert (=> b!1465227 m!1708201))

(assert (=> b!1465225 m!1708185))

(declare-fun m!1708203 () Bool)

(assert (=> b!1465225 m!1708203))

(assert (=> b!1465225 m!1708203))

(declare-fun m!1708205 () Bool)

(assert (=> b!1465225 m!1708205))

(declare-fun m!1708207 () Bool)

(assert (=> d!430041 m!1708207))

(assert (=> d!430041 m!1702679))

(assert (=> d!430041 m!1702679))

(declare-fun m!1708209 () Bool)

(assert (=> d!430041 m!1708209))

(assert (=> d!430041 m!1702679))

(assert (=> d!430041 m!1702679))

(declare-fun m!1708211 () Bool)

(assert (=> d!430041 m!1708211))

(assert (=> d!430041 m!1707577))

(declare-fun m!1708213 () Bool)

(assert (=> b!1465230 m!1708213))

(assert (=> bm!98549 m!1702679))

(declare-fun m!1708215 () Bool)

(assert (=> bm!98549 m!1708215))

(assert (=> b!1463440 d!430041))

(declare-fun d!430045 () Bool)

(declare-fun lt!509445 () C!8156)

(assert (=> d!430045 (= lt!509445 (head!3024 (list!6087 lt!507551)))))

(assert (=> d!430045 (= lt!509445 (head!3026 (c!241180 lt!507551)))))

(assert (=> d!430045 (not (isEmpty!9544 lt!507551))))

(assert (=> d!430045 (= (head!3025 lt!507551) lt!509445)))

(declare-fun bs!344745 () Bool)

(assert (= bs!344745 d!430045))

(assert (=> bs!344745 m!1702673))

(assert (=> bs!344745 m!1702673))

(assert (=> bs!344745 m!1702709))

(declare-fun m!1708217 () Bool)

(assert (=> bs!344745 m!1708217))

(declare-fun m!1708219 () Bool)

(assert (=> bs!344745 m!1708219))

(assert (=> b!1463440 d!430045))

(declare-fun d!430047 () Bool)

(declare-fun e!934635 () Bool)

(assert (=> d!430047 e!934635))

(declare-fun res!663288 () Bool)

(assert (=> d!430047 (=> (not res!663288) (not e!934635))))

(assert (=> d!430047 (= res!663288 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 other!32) (print!1107 Lexer!2329 (seqFromList!1716 (t!134647 lt!506994)))))) (t!134647 lt!506994)))))

(declare-fun lt!509463 () Unit!24509)

(declare-fun e!934634 () Unit!24509)

(assert (=> d!430047 (= lt!509463 e!934634)))

(declare-fun c!241634 () Bool)

(assert (=> d!430047 (= c!241634 (or ((_ is Nil!15188) (t!134647 lt!506994)) ((_ is Nil!15188) (t!134647 (t!134647 lt!506994)))))))

(assert (=> d!430047 (not (isEmpty!9541 (rules!11706 other!32)))))

(assert (=> d!430047 (= (theoremInvertabilityWhenTokenListSeparable!79 Lexer!2329 (rules!11706 other!32) (t!134647 lt!506994)) lt!509463)))

(declare-fun b!1465233 () Bool)

(declare-fun Unit!24794 () Unit!24509)

(assert (=> b!1465233 (= e!934634 Unit!24794)))

(declare-fun b!1465234 () Bool)

(declare-fun Unit!24795 () Unit!24509)

(assert (=> b!1465234 (= e!934634 Unit!24795)))

(declare-fun lt!509462 () BalanceConc!10292)

(assert (=> b!1465234 (= lt!509462 (print!1107 Lexer!2329 (seqFromList!1716 (t!134647 lt!506994))))))

(declare-fun lt!509449 () BalanceConc!10292)

(assert (=> b!1465234 (= lt!509449 (print!1107 Lexer!2329 (seqFromList!1716 (t!134647 (t!134647 lt!506994)))))))

(declare-fun lt!509469 () tuple2!14256)

(assert (=> b!1465234 (= lt!509469 (lex!1076 Lexer!2329 (rules!11706 other!32) lt!509449))))

(declare-fun lt!509450 () List!15252)

(assert (=> b!1465234 (= lt!509450 (list!6087 (charsOf!1538 (h!20589 (t!134647 lt!506994)))))))

(declare-fun lt!509451 () List!15252)

(assert (=> b!1465234 (= lt!509451 (list!6087 lt!509449))))

(declare-fun lt!509456 () Unit!24509)

(assert (=> b!1465234 (= lt!509456 (lemmaConcatTwoListThenFirstIsPrefix!768 lt!509450 lt!509451))))

(assert (=> b!1465234 (isPrefix!1205 lt!509450 (++!4093 lt!509450 lt!509451))))

(declare-fun lt!509464 () Unit!24509)

(assert (=> b!1465234 (= lt!509464 lt!509456)))

(declare-fun lt!509468 () Unit!24509)

(assert (=> b!1465234 (= lt!509468 (theoremInvertabilityWhenTokenListSeparable!79 Lexer!2329 (rules!11706 other!32) (t!134647 (t!134647 lt!506994))))))

(declare-fun lt!509453 () Unit!24509)

(assert (=> b!1465234 (= lt!509453 (seqFromListBHdTlConstructive!97 (h!20589 (t!134647 (t!134647 lt!506994))) (t!134647 (t!134647 (t!134647 lt!506994))) (_1!8014 lt!509469)))))

(assert (=> b!1465234 (= (list!6083 (_1!8014 lt!509469)) (list!6083 (prepend!429 (seqFromList!1716 (t!134647 (t!134647 (t!134647 lt!506994)))) (h!20589 (t!134647 (t!134647 lt!506994))))))))

(declare-fun lt!509454 () Unit!24509)

(assert (=> b!1465234 (= lt!509454 lt!509453)))

(declare-fun lt!509466 () Option!2879)

(assert (=> b!1465234 (= lt!509466 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (list!6087 lt!509462)))))

(assert (=> b!1465234 (= (print!1107 Lexer!2329 (singletonSeq!1281 (h!20589 (t!134647 lt!506994)))) (printTailRec!699 Lexer!2329 (singletonSeq!1281 (h!20589 (t!134647 lt!506994))) 0 (BalanceConc!10293 Empty!5176)))))

(declare-fun lt!509465 () Unit!24509)

(declare-fun Unit!24796 () Unit!24509)

(assert (=> b!1465234 (= lt!509465 Unit!24796)))

(declare-fun lt!509452 () Unit!24509)

(assert (=> b!1465234 (= lt!509452 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!241 Lexer!2329 (rules!11706 other!32) (list!6087 (charsOf!1538 (h!20589 (t!134647 lt!506994)))) (list!6087 lt!509449)))))

(assert (=> b!1465234 (= (list!6087 (charsOf!1538 (h!20589 (t!134647 lt!506994)))) (originalCharacters!3537 (h!20589 (t!134647 lt!506994))))))

(declare-fun lt!509460 () Unit!24509)

(declare-fun Unit!24798 () Unit!24509)

(assert (=> b!1465234 (= lt!509460 Unit!24798)))

(assert (=> b!1465234 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (t!134647 lt!506994)))) 0))) (Cons!15186 (head!3024 (originalCharacters!3537 (h!20589 (t!134647 (t!134647 lt!506994))))) Nil!15186))))

(declare-fun lt!509447 () Unit!24509)

(declare-fun Unit!24799 () Unit!24509)

(assert (=> b!1465234 (= lt!509447 Unit!24799)))

(assert (=> b!1465234 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (t!134647 lt!506994)))) 0))) (Cons!15186 (head!3024 (list!6087 lt!509449)) Nil!15186))))

(declare-fun lt!509458 () Unit!24509)

(declare-fun Unit!24800 () Unit!24509)

(assert (=> b!1465234 (= lt!509458 Unit!24800)))

(assert (=> b!1465234 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (t!134647 lt!506994)))) 0))) (Cons!15186 (head!3025 lt!509449) Nil!15186))))

(declare-fun lt!509446 () Unit!24509)

(declare-fun Unit!24801 () Unit!24509)

(assert (=> b!1465234 (= lt!509446 Unit!24801)))

(assert (=> b!1465234 (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (originalCharacters!3537 (h!20589 (t!134647 lt!506994)))))))

(declare-fun lt!509448 () Unit!24509)

(declare-fun Unit!24802 () Unit!24509)

(assert (=> b!1465234 (= lt!509448 Unit!24802)))

(assert (=> b!1465234 (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (list!6087 (charsOf!1538 (h!20589 (t!134647 lt!506994))))))))

(declare-fun lt!509459 () Unit!24509)

(declare-fun Unit!24803 () Unit!24509)

(assert (=> b!1465234 (= lt!509459 Unit!24803)))

(declare-fun lt!509461 () Unit!24509)

(declare-fun Unit!24804 () Unit!24509)

(assert (=> b!1465234 (= lt!509461 Unit!24804)))

(assert (=> b!1465234 (= (_1!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (list!6087 (charsOf!1538 (h!20589 (t!134647 lt!506994))))))) (h!20589 (t!134647 lt!506994)))))

(declare-fun lt!509467 () Unit!24509)

(declare-fun Unit!24805 () Unit!24509)

(assert (=> b!1465234 (= lt!509467 Unit!24805)))

(assert (=> b!1465234 (isEmpty!9545 (_2!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (list!6087 (charsOf!1538 (h!20589 (t!134647 lt!506994))))))))))

(declare-fun lt!509455 () Unit!24509)

(declare-fun Unit!24806 () Unit!24509)

(assert (=> b!1465234 (= lt!509455 Unit!24806)))

(assert (=> b!1465234 (matchR!1831 (regex!2675 (rule!4450 (h!20589 (t!134647 lt!506994)))) (list!6087 (charsOf!1538 (h!20589 (t!134647 lt!506994)))))))

(declare-fun lt!509470 () Unit!24509)

(declare-fun Unit!24807 () Unit!24509)

(assert (=> b!1465234 (= lt!509470 Unit!24807)))

(assert (=> b!1465234 (= (rule!4450 (h!20589 (t!134647 lt!506994))) (rule!4450 (h!20589 (t!134647 lt!506994))))))

(declare-fun lt!509457 () Unit!24509)

(declare-fun Unit!24808 () Unit!24509)

(assert (=> b!1465234 (= lt!509457 Unit!24808)))

(declare-fun lt!509471 () Unit!24509)

(assert (=> b!1465234 (= lt!509471 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!39 Lexer!2329 (rules!11706 other!32) (h!20589 (t!134647 lt!506994)) (rule!4450 (h!20589 (t!134647 lt!506994))) (list!6087 lt!509449)))))

(declare-fun b!1465235 () Bool)

(assert (=> b!1465235 (= e!934635 (isEmpty!9544 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 other!32) (print!1107 Lexer!2329 (seqFromList!1716 (t!134647 lt!506994)))))))))

(assert (= (and d!430047 c!241634) b!1465233))

(assert (= (and d!430047 (not c!241634)) b!1465234))

(assert (= (and d!430047 res!663288) b!1465235))

(assert (=> d!430047 m!1702681))

(assert (=> d!430047 m!1701765))

(declare-fun m!1708221 () Bool)

(assert (=> d!430047 m!1708221))

(assert (=> d!430047 m!1702683))

(declare-fun m!1708223 () Bool)

(assert (=> d!430047 m!1708223))

(assert (=> d!430047 m!1702681))

(assert (=> d!430047 m!1702683))

(declare-fun m!1708225 () Bool)

(assert (=> b!1465234 m!1708225))

(declare-fun m!1708227 () Bool)

(assert (=> b!1465234 m!1708227))

(declare-fun m!1708229 () Bool)

(assert (=> b!1465234 m!1708229))

(declare-fun m!1708231 () Bool)

(assert (=> b!1465234 m!1708231))

(assert (=> b!1465234 m!1704493))

(declare-fun m!1708233 () Bool)

(assert (=> b!1465234 m!1708233))

(declare-fun m!1708235 () Bool)

(assert (=> b!1465234 m!1708235))

(declare-fun m!1708237 () Bool)

(assert (=> b!1465234 m!1708237))

(declare-fun m!1708239 () Bool)

(assert (=> b!1465234 m!1708239))

(declare-fun m!1708241 () Bool)

(assert (=> b!1465234 m!1708241))

(assert (=> b!1465234 m!1708229))

(declare-fun m!1708243 () Bool)

(assert (=> b!1465234 m!1708243))

(declare-fun m!1708245 () Bool)

(assert (=> b!1465234 m!1708245))

(declare-fun m!1708247 () Bool)

(assert (=> b!1465234 m!1708247))

(assert (=> b!1465234 m!1708233))

(declare-fun m!1708249 () Bool)

(assert (=> b!1465234 m!1708249))

(declare-fun m!1708251 () Bool)

(assert (=> b!1465234 m!1708251))

(assert (=> b!1465234 m!1704493))

(assert (=> b!1465234 m!1708251))

(declare-fun m!1708253 () Bool)

(assert (=> b!1465234 m!1708253))

(assert (=> b!1465234 m!1702681))

(assert (=> b!1465234 m!1708247))

(declare-fun m!1708255 () Bool)

(assert (=> b!1465234 m!1708255))

(declare-fun m!1708257 () Bool)

(assert (=> b!1465234 m!1708257))

(assert (=> b!1465234 m!1702667))

(declare-fun m!1708259 () Bool)

(assert (=> b!1465234 m!1708259))

(declare-fun m!1708261 () Bool)

(assert (=> b!1465234 m!1708261))

(assert (=> b!1465234 m!1702659))

(declare-fun m!1708263 () Bool)

(assert (=> b!1465234 m!1708263))

(declare-fun m!1708265 () Bool)

(assert (=> b!1465234 m!1708265))

(declare-fun m!1708267 () Bool)

(assert (=> b!1465234 m!1708267))

(declare-fun m!1708269 () Bool)

(assert (=> b!1465234 m!1708269))

(declare-fun m!1708271 () Bool)

(assert (=> b!1465234 m!1708271))

(declare-fun m!1708273 () Bool)

(assert (=> b!1465234 m!1708273))

(assert (=> b!1465234 m!1708257))

(declare-fun m!1708275 () Bool)

(assert (=> b!1465234 m!1708275))

(assert (=> b!1465234 m!1708251))

(declare-fun m!1708277 () Bool)

(assert (=> b!1465234 m!1708277))

(declare-fun m!1708279 () Bool)

(assert (=> b!1465234 m!1708279))

(assert (=> b!1465234 m!1702681))

(assert (=> b!1465234 m!1702683))

(assert (=> b!1465234 m!1708237))

(assert (=> b!1465234 m!1708239))

(assert (=> b!1465234 m!1708233))

(declare-fun m!1708281 () Bool)

(assert (=> b!1465234 m!1708281))

(assert (=> b!1465234 m!1708251))

(declare-fun m!1708283 () Bool)

(assert (=> b!1465234 m!1708283))

(assert (=> b!1465234 m!1702667))

(assert (=> b!1465234 m!1704493))

(declare-fun m!1708285 () Bool)

(assert (=> b!1465234 m!1708285))

(assert (=> b!1465234 m!1708225))

(assert (=> b!1465234 m!1708263))

(declare-fun m!1708287 () Bool)

(assert (=> b!1465234 m!1708287))

(assert (=> b!1465234 m!1708229))

(assert (=> b!1465234 m!1708245))

(assert (=> b!1465234 m!1702659))

(assert (=> b!1465234 m!1704493))

(assert (=> b!1465234 m!1708241))

(declare-fun m!1708289 () Bool)

(assert (=> b!1465234 m!1708289))

(assert (=> b!1465235 m!1702681))

(assert (=> b!1465235 m!1702681))

(assert (=> b!1465235 m!1702683))

(assert (=> b!1465235 m!1702683))

(assert (=> b!1465235 m!1708223))

(declare-fun m!1708291 () Bool)

(assert (=> b!1465235 m!1708291))

(assert (=> b!1463440 d!430047))

(declare-fun d!430049 () Bool)

(assert (=> d!430049 (= (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (originalCharacters!3537 (h!20589 lt!506994)))) (not (isEmpty!9547 (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (originalCharacters!3537 (h!20589 lt!506994))))))))

(declare-fun bs!344746 () Bool)

(assert (= bs!344746 d!430049))

(assert (=> bs!344746 m!1702645))

(declare-fun m!1708293 () Bool)

(assert (=> bs!344746 m!1708293))

(assert (=> b!1463440 d!430049))

(declare-fun bm!98550 () Bool)

(declare-fun call!98555 () Option!2879)

(assert (=> bm!98550 (= call!98555 (maxPrefixOneRule!663 Lexer!2329 (h!20590 (rules!11706 other!32)) (originalCharacters!3537 (h!20589 lt!506994))))))

(declare-fun b!1465236 () Bool)

(declare-fun res!663290 () Bool)

(declare-fun e!934638 () Bool)

(assert (=> b!1465236 (=> (not res!663290) (not e!934638))))

(declare-fun lt!509476 () Option!2879)

(assert (=> b!1465236 (= res!663290 (= (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!509476)))) (originalCharacters!3537 (_1!8015 (get!4621 lt!509476)))))))

(declare-fun b!1465237 () Bool)

(declare-fun res!663293 () Bool)

(assert (=> b!1465237 (=> (not res!663293) (not e!934638))))

(assert (=> b!1465237 (= res!663293 (= (value!85885 (_1!8015 (get!4621 lt!509476))) (apply!3974 (transformation!2675 (rule!4450 (_1!8015 (get!4621 lt!509476)))) (seqFromList!1718 (originalCharacters!3537 (_1!8015 (get!4621 lt!509476)))))))))

(declare-fun b!1465238 () Bool)

(declare-fun res!663289 () Bool)

(assert (=> b!1465238 (=> (not res!663289) (not e!934638))))

(assert (=> b!1465238 (= res!663289 (= (++!4093 (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!509476)))) (_2!8015 (get!4621 lt!509476))) (originalCharacters!3537 (h!20589 lt!506994))))))

(declare-fun b!1465239 () Bool)

(assert (=> b!1465239 (= e!934638 (contains!2912 (rules!11706 other!32) (rule!4450 (_1!8015 (get!4621 lt!509476)))))))

(declare-fun d!430051 () Bool)

(declare-fun e!934637 () Bool)

(assert (=> d!430051 e!934637))

(declare-fun res!663294 () Bool)

(assert (=> d!430051 (=> res!663294 e!934637)))

(assert (=> d!430051 (= res!663294 (isEmpty!9547 lt!509476))))

(declare-fun e!934636 () Option!2879)

(assert (=> d!430051 (= lt!509476 e!934636)))

(declare-fun c!241635 () Bool)

(assert (=> d!430051 (= c!241635 (and ((_ is Cons!15189) (rules!11706 other!32)) ((_ is Nil!15189) (t!134648 (rules!11706 other!32)))))))

(declare-fun lt!509472 () Unit!24509)

(declare-fun lt!509475 () Unit!24509)

(assert (=> d!430051 (= lt!509472 lt!509475)))

(assert (=> d!430051 (isPrefix!1205 (originalCharacters!3537 (h!20589 lt!506994)) (originalCharacters!3537 (h!20589 lt!506994)))))

(assert (=> d!430051 (= lt!509475 (lemmaIsPrefixRefl!837 (originalCharacters!3537 (h!20589 lt!506994)) (originalCharacters!3537 (h!20589 lt!506994))))))

(assert (=> d!430051 (rulesValidInductive!834 Lexer!2329 (rules!11706 other!32))))

(assert (=> d!430051 (= (maxPrefix!1195 Lexer!2329 (rules!11706 other!32) (originalCharacters!3537 (h!20589 lt!506994))) lt!509476)))

(declare-fun b!1465240 () Bool)

(assert (=> b!1465240 (= e!934636 call!98555)))

(declare-fun b!1465241 () Bool)

(declare-fun res!663291 () Bool)

(assert (=> b!1465241 (=> (not res!663291) (not e!934638))))

(assert (=> b!1465241 (= res!663291 (matchR!1831 (regex!2675 (rule!4450 (_1!8015 (get!4621 lt!509476)))) (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!509476))))))))

(declare-fun b!1465242 () Bool)

(assert (=> b!1465242 (= e!934637 e!934638)))

(declare-fun res!663295 () Bool)

(assert (=> b!1465242 (=> (not res!663295) (not e!934638))))

(assert (=> b!1465242 (= res!663295 (isDefined!2328 lt!509476))))

(declare-fun b!1465243 () Bool)

(declare-fun lt!509474 () Option!2879)

(declare-fun lt!509473 () Option!2879)

(assert (=> b!1465243 (= e!934636 (ite (and ((_ is None!2878) lt!509474) ((_ is None!2878) lt!509473)) None!2878 (ite ((_ is None!2878) lt!509473) lt!509474 (ite ((_ is None!2878) lt!509474) lt!509473 (ite (>= (size!12421 (_1!8015 (v!22514 lt!509474))) (size!12421 (_1!8015 (v!22514 lt!509473)))) lt!509474 lt!509473)))))))

(assert (=> b!1465243 (= lt!509474 call!98555)))

(assert (=> b!1465243 (= lt!509473 (maxPrefix!1195 Lexer!2329 (t!134648 (rules!11706 other!32)) (originalCharacters!3537 (h!20589 lt!506994))))))

(declare-fun b!1465244 () Bool)

(declare-fun res!663292 () Bool)

(assert (=> b!1465244 (=> (not res!663292) (not e!934638))))

(assert (=> b!1465244 (= res!663292 (< (size!12429 (_2!8015 (get!4621 lt!509476))) (size!12429 (originalCharacters!3537 (h!20589 lt!506994)))))))

(assert (= (and d!430051 c!241635) b!1465240))

(assert (= (and d!430051 (not c!241635)) b!1465243))

(assert (= (or b!1465240 b!1465243) bm!98550))

(assert (= (and d!430051 (not res!663294)) b!1465242))

(assert (= (and b!1465242 res!663295) b!1465236))

(assert (= (and b!1465236 res!663290) b!1465244))

(assert (= (and b!1465244 res!663292) b!1465238))

(assert (= (and b!1465238 res!663289) b!1465237))

(assert (= (and b!1465237 res!663293) b!1465241))

(assert (= (and b!1465241 res!663291) b!1465239))

(declare-fun m!1708295 () Bool)

(assert (=> b!1465236 m!1708295))

(declare-fun m!1708297 () Bool)

(assert (=> b!1465236 m!1708297))

(assert (=> b!1465236 m!1708297))

(declare-fun m!1708299 () Bool)

(assert (=> b!1465236 m!1708299))

(assert (=> b!1465238 m!1708295))

(assert (=> b!1465238 m!1708297))

(assert (=> b!1465238 m!1708297))

(assert (=> b!1465238 m!1708299))

(assert (=> b!1465238 m!1708299))

(declare-fun m!1708301 () Bool)

(assert (=> b!1465238 m!1708301))

(assert (=> b!1465244 m!1708295))

(declare-fun m!1708303 () Bool)

(assert (=> b!1465244 m!1708303))

(declare-fun m!1708305 () Bool)

(assert (=> b!1465244 m!1708305))

(declare-fun m!1708307 () Bool)

(assert (=> b!1465243 m!1708307))

(assert (=> b!1465241 m!1708295))

(assert (=> b!1465241 m!1708297))

(assert (=> b!1465241 m!1708297))

(assert (=> b!1465241 m!1708299))

(assert (=> b!1465241 m!1708299))

(declare-fun m!1708309 () Bool)

(assert (=> b!1465241 m!1708309))

(assert (=> b!1465239 m!1708295))

(declare-fun m!1708311 () Bool)

(assert (=> b!1465239 m!1708311))

(assert (=> b!1465237 m!1708295))

(declare-fun m!1708313 () Bool)

(assert (=> b!1465237 m!1708313))

(assert (=> b!1465237 m!1708313))

(declare-fun m!1708315 () Bool)

(assert (=> b!1465237 m!1708315))

(declare-fun m!1708317 () Bool)

(assert (=> d!430051 m!1708317))

(declare-fun m!1708319 () Bool)

(assert (=> d!430051 m!1708319))

(declare-fun m!1708321 () Bool)

(assert (=> d!430051 m!1708321))

(assert (=> d!430051 m!1707577))

(declare-fun m!1708323 () Bool)

(assert (=> b!1465242 m!1708323))

(declare-fun m!1708325 () Bool)

(assert (=> bm!98550 m!1708325))

(assert (=> b!1463440 d!430051))

(declare-fun d!430053 () Bool)

(assert (=> d!430053 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 lt!506994))) 0))) (list!6088 (c!241180 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 lt!506994))) 0)))))))

(declare-fun bs!344747 () Bool)

(assert (= bs!344747 d!430053))

(declare-fun m!1708327 () Bool)

(assert (=> bs!344747 m!1708327))

(assert (=> b!1463440 d!430053))

(declare-fun d!430055 () Bool)

(declare-fun lt!509477 () Bool)

(assert (=> d!430055 (= lt!509477 (isEmpty!9545 (list!6087 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (seqFromList!1716 (list!6083 lt!507005))))))))))

(assert (=> d!430055 (= lt!509477 (isEmpty!9549 (c!241180 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (seqFromList!1716 (list!6083 lt!507005))))))))))

(assert (=> d!430055 (= (isEmpty!9544 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (seqFromList!1716 (list!6083 lt!507005)))))) lt!509477)))

(declare-fun bs!344748 () Bool)

(assert (= bs!344748 d!430055))

(declare-fun m!1708329 () Bool)

(assert (=> bs!344748 m!1708329))

(assert (=> bs!344748 m!1708329))

(declare-fun m!1708331 () Bool)

(assert (=> bs!344748 m!1708331))

(declare-fun m!1708333 () Bool)

(assert (=> bs!344748 m!1708333))

(assert (=> b!1463438 d!430055))

(assert (=> b!1463438 d!429461))

(assert (=> b!1463438 d!429143))

(assert (=> b!1463438 d!429141))

(declare-fun b!1465246 () Bool)

(declare-fun e!934640 () List!15252)

(assert (=> b!1465246 (= e!934640 (Cons!15186 (h!20587 (t!134645 (printList!727 Lexer!2329 lt!507007))) (++!4093 (t!134645 (t!134645 (printList!727 Lexer!2329 lt!507007))) (printList!727 Lexer!2329 lt!506994))))))

(declare-fun b!1465245 () Bool)

(assert (=> b!1465245 (= e!934640 (printList!727 Lexer!2329 lt!506994))))

(declare-fun d!430057 () Bool)

(declare-fun e!934639 () Bool)

(assert (=> d!430057 e!934639))

(declare-fun res!663296 () Bool)

(assert (=> d!430057 (=> (not res!663296) (not e!934639))))

(declare-fun lt!509478 () List!15252)

(assert (=> d!430057 (= res!663296 (= (content!2247 lt!509478) ((_ map or) (content!2247 (t!134645 (printList!727 Lexer!2329 lt!507007))) (content!2247 (printList!727 Lexer!2329 lt!506994)))))))

(assert (=> d!430057 (= lt!509478 e!934640)))

(declare-fun c!241636 () Bool)

(assert (=> d!430057 (= c!241636 ((_ is Nil!15186) (t!134645 (printList!727 Lexer!2329 lt!507007))))))

(assert (=> d!430057 (= (++!4093 (t!134645 (printList!727 Lexer!2329 lt!507007)) (printList!727 Lexer!2329 lt!506994)) lt!509478)))

(declare-fun b!1465248 () Bool)

(assert (=> b!1465248 (= e!934639 (or (not (= (printList!727 Lexer!2329 lt!506994) Nil!15186)) (= lt!509478 (t!134645 (printList!727 Lexer!2329 lt!507007)))))))

(declare-fun b!1465247 () Bool)

(declare-fun res!663297 () Bool)

(assert (=> b!1465247 (=> (not res!663297) (not e!934639))))

(assert (=> b!1465247 (= res!663297 (= (size!12429 lt!509478) (+ (size!12429 (t!134645 (printList!727 Lexer!2329 lt!507007))) (size!12429 (printList!727 Lexer!2329 lt!506994)))))))

(assert (= (and d!430057 c!241636) b!1465245))

(assert (= (and d!430057 (not c!241636)) b!1465246))

(assert (= (and d!430057 res!663296) b!1465247))

(assert (= (and b!1465247 res!663297) b!1465248))

(assert (=> b!1465246 m!1701665))

(declare-fun m!1708335 () Bool)

(assert (=> b!1465246 m!1708335))

(declare-fun m!1708337 () Bool)

(assert (=> d!430057 m!1708337))

(assert (=> d!430057 m!1705935))

(assert (=> d!430057 m!1701665))

(assert (=> d!430057 m!1702725))

(declare-fun m!1708339 () Bool)

(assert (=> b!1465247 m!1708339))

(assert (=> b!1465247 m!1705883))

(assert (=> b!1465247 m!1701665))

(assert (=> b!1465247 m!1702731))

(assert (=> b!1463451 d!430057))

(assert (=> b!1463144 d!429539))

(declare-fun bs!344749 () Bool)

(declare-fun d!430059 () Bool)

(assert (= bs!344749 (and d!430059 d!428849)))

(declare-fun lambda!63358 () Int)

(assert (=> bs!344749 (= lambda!63358 lambda!63326)))

(declare-fun bs!344750 () Bool)

(assert (= bs!344750 (and d!430059 d!429567)))

(assert (=> bs!344750 (= lambda!63358 lambda!63354)))

(declare-fun bs!344751 () Bool)

(assert (= bs!344751 (and d!430059 d!429307)))

(assert (=> bs!344751 (= (= (rules!11706 thiss!10022) (rules!11706 lt!506997)) (= lambda!63358 lambda!63344))))

(declare-fun bs!344752 () Bool)

(assert (= bs!344752 (and d!430059 d!429273)))

(assert (=> bs!344752 (= lambda!63358 lambda!63332)))

(declare-fun bs!344753 () Bool)

(assert (= bs!344753 (and d!430059 d!429057)))

(assert (=> bs!344753 (= lambda!63358 lambda!63331)))

(declare-fun bs!344754 () Bool)

(assert (= bs!344754 (and d!430059 d!429489)))

(assert (=> bs!344754 (= lambda!63358 lambda!63352)))

(declare-fun bs!344755 () Bool)

(assert (= bs!344755 (and d!430059 d!429055)))

(assert (=> bs!344755 (= lambda!63358 lambda!63330)))

(declare-fun bs!344756 () Bool)

(assert (= bs!344756 (and d!430059 d!429539)))

(assert (=> bs!344756 (= (= (rules!11706 thiss!10022) (rules!11706 other!32)) (= lambda!63358 lambda!63353))))

(declare-fun bs!344757 () Bool)

(assert (= bs!344757 (and d!430059 d!429295)))

(assert (=> bs!344757 (= lambda!63358 lambda!63343)))

(declare-fun b!1465253 () Bool)

(declare-fun e!934645 () Bool)

(assert (=> b!1465253 (= e!934645 true)))

(declare-fun b!1465252 () Bool)

(declare-fun e!934644 () Bool)

(assert (=> b!1465252 (= e!934644 e!934645)))

(declare-fun b!1465251 () Bool)

(declare-fun e!934643 () Bool)

(assert (=> b!1465251 (= e!934643 e!934644)))

(assert (=> d!430059 e!934643))

(assert (= b!1465252 b!1465253))

(assert (= b!1465251 b!1465252))

(assert (= (and d!430059 ((_ is Cons!15189) (rules!11706 thiss!10022))) b!1465251))

(assert (=> b!1465253 (< (dynLambda!6933 order!9151 (toValue!3986 (transformation!2675 (h!20590 (rules!11706 thiss!10022))))) (dynLambda!6934 order!9153 lambda!63358))))

(assert (=> b!1465253 (< (dynLambda!6935 order!9155 (toChars!3845 (transformation!2675 (h!20590 (rules!11706 thiss!10022))))) (dynLambda!6934 order!9153 lambda!63358))))

(assert (=> d!430059 true))

(declare-fun lt!509479 () Bool)

(assert (=> d!430059 (= lt!509479 (forall!3744 (t!134647 lt!506991) lambda!63358))))

(declare-fun e!934641 () Bool)

(assert (=> d!430059 (= lt!509479 e!934641)))

(declare-fun res!663298 () Bool)

(assert (=> d!430059 (=> res!663298 e!934641)))

(assert (=> d!430059 (= res!663298 (not ((_ is Cons!15188) (t!134647 lt!506991))))))

(assert (=> d!430059 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!430059 (= (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) (t!134647 lt!506991)) lt!509479)))

(declare-fun b!1465249 () Bool)

(declare-fun e!934642 () Bool)

(assert (=> b!1465249 (= e!934641 e!934642)))

(declare-fun res!663299 () Bool)

(assert (=> b!1465249 (=> (not res!663299) (not e!934642))))

(assert (=> b!1465249 (= res!663299 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 (t!134647 lt!506991))))))

(declare-fun b!1465250 () Bool)

(assert (=> b!1465250 (= e!934642 (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) (t!134647 (t!134647 lt!506991))))))

(assert (= (and d!430059 (not res!663298)) b!1465249))

(assert (= (and b!1465249 res!663299) b!1465250))

(declare-fun m!1708341 () Bool)

(assert (=> d!430059 m!1708341))

(assert (=> d!430059 m!1701757))

(assert (=> b!1465249 m!1702897))

(declare-fun m!1708343 () Bool)

(assert (=> b!1465250 m!1708343))

(assert (=> b!1463260 d!430059))

(assert (=> d!428877 d!428893))

(declare-fun d!430061 () Bool)

(assert (=> d!430061 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) lt!507004)))

(assert (=> d!430061 true))

(declare-fun _$77!630 () Unit!24509)

(assert (=> d!430061 (= (choose!9003 Lexer!2329 (rules!11706 thiss!10022) lt!506994 lt!507004) _$77!630)))

(declare-fun bs!344758 () Bool)

(assert (= bs!344758 d!430061))

(assert (=> bs!344758 m!1701683))

(assert (=> d!428877 d!430061))

(assert (=> d!428877 d!429091))

(assert (=> b!1463141 d!429295))

(declare-fun b!1465262 () Bool)

(declare-fun res!663311 () Bool)

(declare-fun e!934648 () Bool)

(assert (=> b!1465262 (=> (not res!663311) (not e!934648))))

(declare-fun ++!4099 (Conc!5176 Conc!5176) Conc!5176)

(assert (=> b!1465262 (= res!663311 (isBalanced!1557 (++!4099 (c!241180 (charsOf!1538 lt!506998)) (c!241180 (singletonSeq!1282 (apply!3969 (charsOf!1538 lt!507004) 0))))))))

(declare-fun b!1465263 () Bool)

(declare-fun res!663310 () Bool)

(assert (=> b!1465263 (=> (not res!663310) (not e!934648))))

(declare-fun height!780 (Conc!5176) Int)

(assert (=> b!1465263 (= res!663310 (<= (height!780 (++!4099 (c!241180 (charsOf!1538 lt!506998)) (c!241180 (singletonSeq!1282 (apply!3969 (charsOf!1538 lt!507004) 0))))) (+ (max!0 (height!780 (c!241180 (charsOf!1538 lt!506998))) (height!780 (c!241180 (singletonSeq!1282 (apply!3969 (charsOf!1538 lt!507004) 0))))) 1)))))

(declare-fun lt!509482 () BalanceConc!10292)

(declare-fun b!1465265 () Bool)

(assert (=> b!1465265 (= e!934648 (= (list!6087 lt!509482) (++!4093 (list!6087 (charsOf!1538 lt!506998)) (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 lt!507004) 0))))))))

(declare-fun d!430063 () Bool)

(assert (=> d!430063 e!934648))

(declare-fun res!663309 () Bool)

(assert (=> d!430063 (=> (not res!663309) (not e!934648))))

(declare-fun appendAssocInst!339 (Conc!5176 Conc!5176) Bool)

(assert (=> d!430063 (= res!663309 (appendAssocInst!339 (c!241180 (charsOf!1538 lt!506998)) (c!241180 (singletonSeq!1282 (apply!3969 (charsOf!1538 lt!507004) 0)))))))

(assert (=> d!430063 (= lt!509482 (BalanceConc!10293 (++!4099 (c!241180 (charsOf!1538 lt!506998)) (c!241180 (singletonSeq!1282 (apply!3969 (charsOf!1538 lt!507004) 0))))))))

(assert (=> d!430063 (= (++!4097 (charsOf!1538 lt!506998) (singletonSeq!1282 (apply!3969 (charsOf!1538 lt!507004) 0))) lt!509482)))

(declare-fun b!1465264 () Bool)

(declare-fun res!663308 () Bool)

(assert (=> b!1465264 (=> (not res!663308) (not e!934648))))

(assert (=> b!1465264 (= res!663308 (>= (height!780 (++!4099 (c!241180 (charsOf!1538 lt!506998)) (c!241180 (singletonSeq!1282 (apply!3969 (charsOf!1538 lt!507004) 0))))) (max!0 (height!780 (c!241180 (charsOf!1538 lt!506998))) (height!780 (c!241180 (singletonSeq!1282 (apply!3969 (charsOf!1538 lt!507004) 0)))))))))

(assert (= (and d!430063 res!663309) b!1465262))

(assert (= (and b!1465262 res!663311) b!1465263))

(assert (= (and b!1465263 res!663310) b!1465264))

(assert (= (and b!1465264 res!663308) b!1465265))

(declare-fun m!1708345 () Bool)

(assert (=> b!1465264 m!1708345))

(declare-fun m!1708347 () Bool)

(assert (=> b!1465264 m!1708347))

(declare-fun m!1708349 () Bool)

(assert (=> b!1465264 m!1708349))

(declare-fun m!1708351 () Bool)

(assert (=> b!1465264 m!1708351))

(assert (=> b!1465264 m!1708349))

(assert (=> b!1465264 m!1708347))

(assert (=> b!1465264 m!1708345))

(declare-fun m!1708353 () Bool)

(assert (=> b!1465264 m!1708353))

(assert (=> b!1465262 m!1708345))

(assert (=> b!1465262 m!1708345))

(declare-fun m!1708355 () Bool)

(assert (=> b!1465262 m!1708355))

(declare-fun m!1708357 () Bool)

(assert (=> b!1465265 m!1708357))

(assert (=> b!1465265 m!1702399))

(declare-fun m!1708359 () Bool)

(assert (=> b!1465265 m!1708359))

(assert (=> b!1465265 m!1702401))

(declare-fun m!1708361 () Bool)

(assert (=> b!1465265 m!1708361))

(assert (=> b!1465265 m!1708359))

(assert (=> b!1465265 m!1708361))

(declare-fun m!1708363 () Bool)

(assert (=> b!1465265 m!1708363))

(assert (=> b!1465263 m!1708345))

(assert (=> b!1465263 m!1708347))

(assert (=> b!1465263 m!1708349))

(assert (=> b!1465263 m!1708351))

(assert (=> b!1465263 m!1708349))

(assert (=> b!1465263 m!1708347))

(assert (=> b!1465263 m!1708345))

(assert (=> b!1465263 m!1708353))

(declare-fun m!1708365 () Bool)

(assert (=> d!430063 m!1708365))

(assert (=> d!430063 m!1708345))

(assert (=> d!428895 d!430063))

(declare-fun d!430065 () Bool)

(declare-fun e!934649 () Bool)

(assert (=> d!430065 e!934649))

(declare-fun res!663312 () Bool)

(assert (=> d!430065 (=> (not res!663312) (not e!934649))))

(declare-fun lt!509483 () BalanceConc!10292)

(assert (=> d!430065 (= res!663312 (= (list!6087 lt!509483) (Cons!15186 (apply!3969 (charsOf!1538 lt!507004) 0) Nil!15186)))))

(assert (=> d!430065 (= lt!509483 (singleton!542 (apply!3969 (charsOf!1538 lt!507004) 0)))))

(assert (=> d!430065 (= (singletonSeq!1282 (apply!3969 (charsOf!1538 lt!507004) 0)) lt!509483)))

(declare-fun b!1465266 () Bool)

(assert (=> b!1465266 (= e!934649 (isBalanced!1557 (c!241180 lt!509483)))))

(assert (= (and d!430065 res!663312) b!1465266))

(declare-fun m!1708367 () Bool)

(assert (=> d!430065 m!1708367))

(assert (=> d!430065 m!1702405))

(declare-fun m!1708369 () Bool)

(assert (=> d!430065 m!1708369))

(declare-fun m!1708371 () Bool)

(assert (=> b!1465266 m!1708371))

(assert (=> d!428895 d!430065))

(declare-fun d!430067 () Bool)

(declare-fun lt!509484 () BalanceConc!10292)

(assert (=> d!430067 (= (list!6087 lt!509484) (originalCharacters!3537 lt!507004))))

(assert (=> d!430067 (= lt!509484 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 lt!507004))) (value!85885 lt!507004)))))

(assert (=> d!430067 (= (charsOf!1538 lt!507004) lt!509484)))

(declare-fun b_lambda!45693 () Bool)

(assert (=> (not b_lambda!45693) (not d!430067)))

(declare-fun t!134752 () Bool)

(declare-fun tb!82717 () Bool)

(assert (=> (and b!1463502 (= (toChars!3845 (transformation!2675 (h!20590 (rules!11706 other!32)))) (toChars!3845 (transformation!2675 (rule!4450 lt!507004)))) t!134752) tb!82717))

(declare-fun b!1465267 () Bool)

(declare-fun e!934650 () Bool)

(declare-fun tp!411868 () Bool)

(assert (=> b!1465267 (= e!934650 (and (inv!20311 (c!241180 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 lt!507004))) (value!85885 lt!507004)))) tp!411868))))

(declare-fun result!99370 () Bool)

(assert (=> tb!82717 (= result!99370 (and (inv!20312 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 lt!507004))) (value!85885 lt!507004))) e!934650))))

(assert (= tb!82717 b!1465267))

(declare-fun m!1708373 () Bool)

(assert (=> b!1465267 m!1708373))

(declare-fun m!1708375 () Bool)

(assert (=> tb!82717 m!1708375))

(assert (=> d!430067 t!134752))

(declare-fun b_and!99981 () Bool)

(assert (= b_and!99977 (and (=> t!134752 result!99370) b_and!99981)))

(declare-fun t!134754 () Bool)

(declare-fun tb!82719 () Bool)

(assert (=> (and b!1463508 (= (toChars!3845 (transformation!2675 (h!20590 (rules!11706 thiss!10022)))) (toChars!3845 (transformation!2675 (rule!4450 lt!507004)))) t!134754) tb!82719))

(declare-fun result!99372 () Bool)

(assert (= result!99372 result!99370))

(assert (=> d!430067 t!134754))

(declare-fun b_and!99983 () Bool)

(assert (= b_and!99979 (and (=> t!134754 result!99372) b_and!99983)))

(declare-fun m!1708377 () Bool)

(assert (=> d!430067 m!1708377))

(declare-fun m!1708379 () Bool)

(assert (=> d!430067 m!1708379))

(assert (=> d!428895 d!430067))

(declare-fun d!430069 () Bool)

(declare-fun lt!509485 () BalanceConc!10292)

(assert (=> d!430069 (= (list!6087 lt!509485) (originalCharacters!3537 lt!506998))))

(assert (=> d!430069 (= lt!509485 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 lt!506998))) (value!85885 lt!506998)))))

(assert (=> d!430069 (= (charsOf!1538 lt!506998) lt!509485)))

(declare-fun b_lambda!45695 () Bool)

(assert (=> (not b_lambda!45695) (not d!430069)))

(declare-fun tb!82721 () Bool)

(declare-fun t!134756 () Bool)

(assert (=> (and b!1463502 (= (toChars!3845 (transformation!2675 (h!20590 (rules!11706 other!32)))) (toChars!3845 (transformation!2675 (rule!4450 lt!506998)))) t!134756) tb!82721))

(declare-fun b!1465268 () Bool)

(declare-fun e!934651 () Bool)

(declare-fun tp!411869 () Bool)

(assert (=> b!1465268 (= e!934651 (and (inv!20311 (c!241180 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 lt!506998))) (value!85885 lt!506998)))) tp!411869))))

(declare-fun result!99374 () Bool)

(assert (=> tb!82721 (= result!99374 (and (inv!20312 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 lt!506998))) (value!85885 lt!506998))) e!934651))))

(assert (= tb!82721 b!1465268))

(declare-fun m!1708381 () Bool)

(assert (=> b!1465268 m!1708381))

(declare-fun m!1708383 () Bool)

(assert (=> tb!82721 m!1708383))

(assert (=> d!430069 t!134756))

(declare-fun b_and!99985 () Bool)

(assert (= b_and!99981 (and (=> t!134756 result!99374) b_and!99985)))

(declare-fun tb!82723 () Bool)

(declare-fun t!134758 () Bool)

(assert (=> (and b!1463508 (= (toChars!3845 (transformation!2675 (h!20590 (rules!11706 thiss!10022)))) (toChars!3845 (transformation!2675 (rule!4450 lt!506998)))) t!134758) tb!82723))

(declare-fun result!99376 () Bool)

(assert (= result!99376 result!99374))

(assert (=> d!430069 t!134758))

(declare-fun b_and!99987 () Bool)

(assert (= b_and!99983 (and (=> t!134758 result!99376) b_and!99987)))

(declare-fun m!1708385 () Bool)

(assert (=> d!430069 m!1708385))

(declare-fun m!1708387 () Bool)

(assert (=> d!430069 m!1708387))

(assert (=> d!428895 d!430069))

(declare-fun d!430071 () Bool)

(declare-fun lt!509486 () C!8156)

(assert (=> d!430071 (= lt!509486 (apply!3972 (list!6087 (charsOf!1538 lt!507004)) 0))))

(assert (=> d!430071 (= lt!509486 (apply!3973 (c!241180 (charsOf!1538 lt!507004)) 0))))

(declare-fun e!934652 () Bool)

(assert (=> d!430071 e!934652))

(declare-fun res!663313 () Bool)

(assert (=> d!430071 (=> (not res!663313) (not e!934652))))

(assert (=> d!430071 (= res!663313 (<= 0 0))))

(assert (=> d!430071 (= (apply!3969 (charsOf!1538 lt!507004) 0) lt!509486)))

(declare-fun b!1465269 () Bool)

(assert (=> b!1465269 (= e!934652 (< 0 (size!12425 (charsOf!1538 lt!507004))))))

(assert (= (and d!430071 res!663313) b!1465269))

(assert (=> d!430071 m!1702411))

(declare-fun m!1708389 () Bool)

(assert (=> d!430071 m!1708389))

(assert (=> d!430071 m!1708389))

(declare-fun m!1708391 () Bool)

(assert (=> d!430071 m!1708391))

(declare-fun m!1708393 () Bool)

(assert (=> d!430071 m!1708393))

(assert (=> b!1465269 m!1702411))

(declare-fun m!1708395 () Bool)

(assert (=> b!1465269 m!1708395))

(assert (=> d!428895 d!430071))

(declare-fun d!430073 () Bool)

(declare-fun lt!509489 () Unit!24509)

(declare-fun lemma!179 (List!15255 LexerInterface!2331 List!15255) Unit!24509)

(assert (=> d!430073 (= lt!509489 (lemma!179 (rules!11706 thiss!10022) Lexer!2329 (rules!11706 thiss!10022)))))

(declare-fun lambda!63361 () Int)

(declare-datatypes ((List!15260 0))(
  ( (Nil!15194) (Cons!15194 (h!20595 Regex!3989) (t!134951 List!15260)) )
))
(declare-fun generalisedUnion!187 (List!15260) Regex!3989)

(declare-fun map!3302 (List!15255 Int) List!15260)

(assert (=> d!430073 (= (rulesRegex!412 Lexer!2329 (rules!11706 thiss!10022)) (generalisedUnion!187 (map!3302 (rules!11706 thiss!10022) lambda!63361)))))

(declare-fun bs!344759 () Bool)

(assert (= bs!344759 d!430073))

(declare-fun m!1708397 () Bool)

(assert (=> bs!344759 m!1708397))

(declare-fun m!1708399 () Bool)

(assert (=> bs!344759 m!1708399))

(assert (=> bs!344759 m!1708399))

(declare-fun m!1708401 () Bool)

(assert (=> bs!344759 m!1708401))

(assert (=> d!428895 d!430073))

(declare-fun d!430075 () Bool)

(declare-fun lt!509515 () Bool)

(declare-fun prefixMatch!320 (Regex!3989 List!15252) Bool)

(assert (=> d!430075 (= lt!509515 (prefixMatch!320 (rulesRegex!412 Lexer!2329 (rules!11706 thiss!10022)) (list!6087 (++!4097 (charsOf!1538 lt!506998) (singletonSeq!1282 (apply!3969 (charsOf!1538 lt!507004) 0))))))))

(declare-datatypes ((Context!1250 0))(
  ( (Context!1251 (exprs!1125 List!15260)) )
))
(declare-fun prefixMatchZipperSequence!358 ((InoxSet Context!1250) BalanceConc!10292 Int) Bool)

(declare-fun focus!116 (Regex!3989) (InoxSet Context!1250))

(assert (=> d!430075 (= lt!509515 (prefixMatchZipperSequence!358 (focus!116 (rulesRegex!412 Lexer!2329 (rules!11706 thiss!10022))) (++!4097 (charsOf!1538 lt!506998) (singletonSeq!1282 (apply!3969 (charsOf!1538 lt!507004) 0))) 0))))

(declare-fun lt!509513 () Unit!24509)

(declare-fun lt!509516 () Unit!24509)

(assert (=> d!430075 (= lt!509513 lt!509516)))

(declare-fun lt!509517 () List!15252)

(declare-fun lt!509518 () (InoxSet Context!1250))

(declare-fun prefixMatchZipper!96 ((InoxSet Context!1250) List!15252) Bool)

(assert (=> d!430075 (= (prefixMatch!320 (rulesRegex!412 Lexer!2329 (rules!11706 thiss!10022)) lt!509517) (prefixMatchZipper!96 lt!509518 lt!509517))))

(declare-datatypes ((List!15261 0))(
  ( (Nil!15195) (Cons!15195 (h!20596 Context!1250) (t!134952 List!15261)) )
))
(declare-fun lt!509512 () List!15261)

(declare-fun prefixMatchZipperRegexEquiv!96 ((InoxSet Context!1250) List!15261 Regex!3989 List!15252) Unit!24509)

(assert (=> d!430075 (= lt!509516 (prefixMatchZipperRegexEquiv!96 lt!509518 lt!509512 (rulesRegex!412 Lexer!2329 (rules!11706 thiss!10022)) lt!509517))))

(assert (=> d!430075 (= lt!509517 (list!6087 (++!4097 (charsOf!1538 lt!506998) (singletonSeq!1282 (apply!3969 (charsOf!1538 lt!507004) 0)))))))

(declare-fun toList!780 ((InoxSet Context!1250)) List!15261)

(assert (=> d!430075 (= lt!509512 (toList!780 (focus!116 (rulesRegex!412 Lexer!2329 (rules!11706 thiss!10022)))))))

(assert (=> d!430075 (= lt!509518 (focus!116 (rulesRegex!412 Lexer!2329 (rules!11706 thiss!10022))))))

(declare-fun lt!509519 () Unit!24509)

(declare-fun lt!509510 () Unit!24509)

(assert (=> d!430075 (= lt!509519 lt!509510)))

(declare-fun lt!509511 () (InoxSet Context!1250))

(declare-fun lt!509514 () Int)

(declare-fun dropList!486 (BalanceConc!10292 Int) List!15252)

(assert (=> d!430075 (= (prefixMatchZipper!96 lt!509511 (dropList!486 (++!4097 (charsOf!1538 lt!506998) (singletonSeq!1282 (apply!3969 (charsOf!1538 lt!507004) 0))) lt!509514)) (prefixMatchZipperSequence!358 lt!509511 (++!4097 (charsOf!1538 lt!506998) (singletonSeq!1282 (apply!3969 (charsOf!1538 lt!507004) 0))) lt!509514))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!96 ((InoxSet Context!1250) BalanceConc!10292 Int) Unit!24509)

(assert (=> d!430075 (= lt!509510 (lemmaprefixMatchZipperSequenceEquivalent!96 lt!509511 (++!4097 (charsOf!1538 lt!506998) (singletonSeq!1282 (apply!3969 (charsOf!1538 lt!507004) 0))) lt!509514))))

(assert (=> d!430075 (= lt!509514 0)))

(assert (=> d!430075 (= lt!509511 (focus!116 (rulesRegex!412 Lexer!2329 (rules!11706 thiss!10022))))))

(assert (=> d!430075 (validRegex!1685 (rulesRegex!412 Lexer!2329 (rules!11706 thiss!10022)))))

(assert (=> d!430075 (= (prefixMatchZipperSequence!356 (rulesRegex!412 Lexer!2329 (rules!11706 thiss!10022)) (++!4097 (charsOf!1538 lt!506998) (singletonSeq!1282 (apply!3969 (charsOf!1538 lt!507004) 0)))) lt!509515)))

(declare-fun bs!344760 () Bool)

(assert (= bs!344760 d!430075))

(assert (=> bs!344760 m!1702407))

(declare-fun m!1708403 () Bool)

(assert (=> bs!344760 m!1708403))

(declare-fun m!1708405 () Bool)

(assert (=> bs!344760 m!1708405))

(declare-fun m!1708407 () Bool)

(assert (=> bs!344760 m!1708407))

(declare-fun m!1708409 () Bool)

(assert (=> bs!344760 m!1708409))

(assert (=> bs!344760 m!1702403))

(declare-fun m!1708411 () Bool)

(assert (=> bs!344760 m!1708411))

(assert (=> bs!344760 m!1702407))

(declare-fun m!1708413 () Bool)

(assert (=> bs!344760 m!1708413))

(declare-fun m!1708415 () Bool)

(assert (=> bs!344760 m!1708415))

(assert (=> bs!344760 m!1702407))

(declare-fun m!1708417 () Bool)

(assert (=> bs!344760 m!1708417))

(assert (=> bs!344760 m!1702403))

(assert (=> bs!344760 m!1708413))

(assert (=> bs!344760 m!1702403))

(assert (=> bs!344760 m!1708405))

(assert (=> bs!344760 m!1702407))

(assert (=> bs!344760 m!1708409))

(assert (=> bs!344760 m!1702407))

(declare-fun m!1708419 () Bool)

(assert (=> bs!344760 m!1708419))

(assert (=> bs!344760 m!1702403))

(declare-fun m!1708421 () Bool)

(assert (=> bs!344760 m!1708421))

(assert (=> bs!344760 m!1702403))

(declare-fun m!1708423 () Bool)

(assert (=> bs!344760 m!1708423))

(declare-fun m!1708425 () Bool)

(assert (=> bs!344760 m!1708425))

(assert (=> bs!344760 m!1708409))

(declare-fun m!1708427 () Bool)

(assert (=> bs!344760 m!1708427))

(assert (=> d!428895 d!430075))

(declare-fun d!430077 () Bool)

(declare-fun lt!509520 () Bool)

(declare-fun e!934654 () Bool)

(assert (=> d!430077 (= lt!509520 e!934654)))

(declare-fun res!663314 () Bool)

(assert (=> d!430077 (=> (not res!663314) (not e!934654))))

(assert (=> d!430077 (= res!663314 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 (h!20589 (t!134647 lt!506991))))))) (list!6083 (singletonSeq!1281 (h!20589 (t!134647 lt!506991))))))))

(declare-fun e!934653 () Bool)

(assert (=> d!430077 (= lt!509520 e!934653)))

(declare-fun res!663316 () Bool)

(assert (=> d!430077 (=> (not res!663316) (not e!934653))))

(declare-fun lt!509521 () tuple2!14256)

(assert (=> d!430077 (= res!663316 (= (size!12423 (_1!8014 lt!509521)) 1))))

(assert (=> d!430077 (= lt!509521 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 (h!20589 (t!134647 lt!506991))))))))

(assert (=> d!430077 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!430077 (= (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 (t!134647 lt!506991))) lt!509520)))

(declare-fun b!1465270 () Bool)

(declare-fun res!663315 () Bool)

(assert (=> b!1465270 (=> (not res!663315) (not e!934653))))

(assert (=> b!1465270 (= res!663315 (= (apply!3965 (_1!8014 lt!509521) 0) (h!20589 (t!134647 lt!506991))))))

(declare-fun b!1465271 () Bool)

(assert (=> b!1465271 (= e!934653 (isEmpty!9544 (_2!8014 lt!509521)))))

(declare-fun b!1465272 () Bool)

(assert (=> b!1465272 (= e!934654 (isEmpty!9544 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (singletonSeq!1281 (h!20589 (t!134647 lt!506991))))))))))

(assert (= (and d!430077 res!663316) b!1465270))

(assert (= (and b!1465270 res!663315) b!1465271))

(assert (= (and d!430077 res!663314) b!1465272))

(assert (=> d!430077 m!1701757))

(declare-fun m!1708429 () Bool)

(assert (=> d!430077 m!1708429))

(declare-fun m!1708431 () Bool)

(assert (=> d!430077 m!1708431))

(assert (=> d!430077 m!1708431))

(declare-fun m!1708433 () Bool)

(assert (=> d!430077 m!1708433))

(declare-fun m!1708435 () Bool)

(assert (=> d!430077 m!1708435))

(assert (=> d!430077 m!1708429))

(declare-fun m!1708437 () Bool)

(assert (=> d!430077 m!1708437))

(declare-fun m!1708439 () Bool)

(assert (=> d!430077 m!1708439))

(assert (=> d!430077 m!1708429))

(declare-fun m!1708441 () Bool)

(assert (=> b!1465270 m!1708441))

(declare-fun m!1708443 () Bool)

(assert (=> b!1465271 m!1708443))

(assert (=> b!1465272 m!1708429))

(assert (=> b!1465272 m!1708429))

(assert (=> b!1465272 m!1708431))

(assert (=> b!1465272 m!1708431))

(assert (=> b!1465272 m!1708433))

(declare-fun m!1708445 () Bool)

(assert (=> b!1465272 m!1708445))

(assert (=> b!1463479 d!430077))

(declare-fun d!430079 () Bool)

(assert (=> d!430079 (= (separableTokensPredicate!540 Lexer!2329 (h!20589 lt!506991) (h!20589 (t!134647 lt!506991)) (rules!11706 thiss!10022)) (not (prefixMatchZipperSequence!356 (rulesRegex!412 Lexer!2329 (rules!11706 thiss!10022)) (++!4097 (charsOf!1538 (h!20589 lt!506991)) (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 lt!506991))) 0))))))))

(declare-fun bs!344761 () Bool)

(assert (= bs!344761 d!430079))

(assert (=> bs!344761 m!1702865))

(declare-fun m!1708447 () Bool)

(assert (=> bs!344761 m!1708447))

(declare-fun m!1708449 () Bool)

(assert (=> bs!344761 m!1708449))

(declare-fun m!1708451 () Bool)

(assert (=> bs!344761 m!1708451))

(assert (=> bs!344761 m!1708447))

(assert (=> bs!344761 m!1702407))

(assert (=> bs!344761 m!1708449))

(declare-fun m!1708453 () Bool)

(assert (=> bs!344761 m!1708453))

(assert (=> bs!344761 m!1702865))

(assert (=> bs!344761 m!1702891))

(assert (=> bs!344761 m!1702891))

(assert (=> bs!344761 m!1708451))

(assert (=> bs!344761 m!1702407))

(assert (=> b!1463479 d!430079))

(declare-fun d!430081 () Bool)

(declare-fun lt!509522 () Int)

(assert (=> d!430081 (= lt!509522 (size!12429 (list!6087 (charsOf!1538 (h!20589 (t!134647 lt!506991))))))))

(assert (=> d!430081 (= lt!509522 (size!12433 (c!241180 (charsOf!1538 (h!20589 (t!134647 lt!506991))))))))

(assert (=> d!430081 (= (size!12425 (charsOf!1538 (h!20589 (t!134647 lt!506991)))) lt!509522)))

(declare-fun bs!344762 () Bool)

(assert (= bs!344762 d!430081))

(assert (=> bs!344762 m!1702891))

(assert (=> bs!344762 m!1705611))

(assert (=> bs!344762 m!1705611))

(declare-fun m!1708455 () Bool)

(assert (=> bs!344762 m!1708455))

(declare-fun m!1708457 () Bool)

(assert (=> bs!344762 m!1708457))

(assert (=> b!1463479 d!430081))

(declare-fun d!430083 () Bool)

(assert (=> d!430083 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 lt!506991))))

(declare-fun lt!509523 () Unit!24509)

(assert (=> d!430083 (= lt!509523 (choose!9003 Lexer!2329 (rules!11706 thiss!10022) lt!506991 (h!20589 lt!506991)))))

(assert (=> d!430083 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!430083 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!433 Lexer!2329 (rules!11706 thiss!10022) lt!506991 (h!20589 lt!506991)) lt!509523)))

(declare-fun bs!344763 () Bool)

(assert (= bs!344763 d!430083))

(assert (=> bs!344763 m!1702235))

(declare-fun m!1708459 () Bool)

(assert (=> bs!344763 m!1708459))

(assert (=> bs!344763 m!1701757))

(assert (=> b!1463479 d!430083))

(assert (=> b!1463479 d!429105))

(declare-fun d!430085 () Bool)

(declare-fun lt!509524 () BalanceConc!10292)

(assert (=> d!430085 (= (list!6087 lt!509524) (originalCharacters!3537 (h!20589 (t!134647 lt!506991))))))

(assert (=> d!430085 (= lt!509524 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!506991))))) (value!85885 (h!20589 (t!134647 lt!506991)))))))

(assert (=> d!430085 (= (charsOf!1538 (h!20589 (t!134647 lt!506991))) lt!509524)))

(declare-fun b_lambda!45697 () Bool)

(assert (=> (not b_lambda!45697) (not d!430085)))

(declare-fun t!134760 () Bool)

(declare-fun tb!82725 () Bool)

(assert (=> (and b!1463502 (= (toChars!3845 (transformation!2675 (h!20590 (rules!11706 other!32)))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!506991)))))) t!134760) tb!82725))

(declare-fun b!1465273 () Bool)

(declare-fun e!934655 () Bool)

(declare-fun tp!411870 () Bool)

(assert (=> b!1465273 (= e!934655 (and (inv!20311 (c!241180 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!506991))))) (value!85885 (h!20589 (t!134647 lt!506991)))))) tp!411870))))

(declare-fun result!99378 () Bool)

(assert (=> tb!82725 (= result!99378 (and (inv!20312 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!506991))))) (value!85885 (h!20589 (t!134647 lt!506991))))) e!934655))))

(assert (= tb!82725 b!1465273))

(declare-fun m!1708461 () Bool)

(assert (=> b!1465273 m!1708461))

(declare-fun m!1708463 () Bool)

(assert (=> tb!82725 m!1708463))

(assert (=> d!430085 t!134760))

(declare-fun b_and!99989 () Bool)

(assert (= b_and!99985 (and (=> t!134760 result!99378) b_and!99989)))

(declare-fun t!134762 () Bool)

(declare-fun tb!82727 () Bool)

(assert (=> (and b!1463508 (= (toChars!3845 (transformation!2675 (h!20590 (rules!11706 thiss!10022)))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!506991)))))) t!134762) tb!82727))

(declare-fun result!99380 () Bool)

(assert (= result!99380 result!99378))

(assert (=> d!430085 t!134762))

(declare-fun b_and!99991 () Bool)

(assert (= b_and!99987 (and (=> t!134762 result!99380) b_and!99991)))

(declare-fun m!1708465 () Bool)

(assert (=> d!430085 m!1708465))

(declare-fun m!1708467 () Bool)

(assert (=> d!430085 m!1708467))

(assert (=> b!1463479 d!430085))

(declare-fun d!430087 () Bool)

(assert (=> d!430087 (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 (t!134647 lt!506991)))))

(declare-fun lt!509525 () Unit!24509)

(assert (=> d!430087 (= lt!509525 (choose!9003 Lexer!2329 (rules!11706 thiss!10022) lt!506991 (h!20589 (t!134647 lt!506991))))))

(assert (=> d!430087 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!430087 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!433 Lexer!2329 (rules!11706 thiss!10022) lt!506991 (h!20589 (t!134647 lt!506991))) lt!509525)))

(declare-fun bs!344764 () Bool)

(assert (= bs!344764 d!430087))

(assert (=> bs!344764 m!1702897))

(declare-fun m!1708469 () Bool)

(assert (=> bs!344764 m!1708469))

(assert (=> bs!344764 m!1701757))

(assert (=> b!1463479 d!430087))

(declare-fun b!1465297 () Bool)

(declare-fun e!934678 () Bool)

(declare-fun e!934684 () Bool)

(assert (=> b!1465297 (= e!934678 e!934684)))

(declare-fun res!663341 () Bool)

(assert (=> b!1465297 (=> (not res!663341) (not e!934684))))

(declare-fun appendAssoc!78 (List!15254 List!15254 List!15254) Bool)

(assert (=> b!1465297 (= res!663341 (appendAssoc!78 (list!6086 (left!12905 (c!241182 (tokens!2112 thiss!10022)))) (list!6086 (right!13235 (c!241182 (tokens!2112 thiss!10022)))) (list!6086 (c!241182 (tokens!2112 other!32)))))))

(declare-fun b!1465298 () Bool)

(declare-fun e!934680 () Bool)

(assert (=> b!1465298 (= e!934680 (appendAssoc!78 (list!6086 (left!12905 (c!241182 (tokens!2112 thiss!10022)))) (list!6086 (left!12905 (right!13235 (c!241182 (tokens!2112 thiss!10022))))) (++!4092 (list!6086 (right!13235 (right!13235 (c!241182 (tokens!2112 thiss!10022))))) (list!6086 (c!241182 (tokens!2112 other!32))))))))

(declare-fun b!1465299 () Bool)

(declare-fun e!934685 () Bool)

(declare-fun e!934683 () Bool)

(assert (=> b!1465299 (= e!934685 e!934683)))

(declare-fun res!663340 () Bool)

(assert (=> b!1465299 (=> res!663340 e!934683)))

(assert (=> b!1465299 (= res!663340 (not ((_ is Node!5177) (left!12905 (c!241182 (tokens!2112 other!32))))))))

(declare-fun b!1465300 () Bool)

(declare-fun e!934681 () Bool)

(assert (=> b!1465300 (= e!934681 (appendAssoc!78 (++!4092 (list!6086 (c!241182 (tokens!2112 thiss!10022))) (list!6086 (left!12905 (left!12905 (c!241182 (tokens!2112 other!32)))))) (list!6086 (right!13235 (left!12905 (c!241182 (tokens!2112 other!32))))) (list!6086 (right!13235 (c!241182 (tokens!2112 other!32))))))))

(declare-fun b!1465301 () Bool)

(declare-fun e!934682 () Bool)

(assert (=> b!1465301 (= e!934682 e!934680)))

(declare-fun res!663342 () Bool)

(assert (=> b!1465301 (=> (not res!663342) (not e!934680))))

(assert (=> b!1465301 (= res!663342 (appendAssoc!78 (list!6086 (left!12905 (right!13235 (c!241182 (tokens!2112 thiss!10022))))) (list!6086 (right!13235 (right!13235 (c!241182 (tokens!2112 thiss!10022))))) (list!6086 (c!241182 (tokens!2112 other!32)))))))

(declare-fun d!430089 () Bool)

(declare-fun e!934677 () Bool)

(assert (=> d!430089 e!934677))

(declare-fun res!663345 () Bool)

(assert (=> d!430089 (=> (not res!663345) (not e!934677))))

(assert (=> d!430089 (= res!663345 e!934678)))

(declare-fun res!663339 () Bool)

(assert (=> d!430089 (=> res!663339 e!934678)))

(assert (=> d!430089 (= res!663339 (not ((_ is Node!5177) (c!241182 (tokens!2112 thiss!10022)))))))

(assert (=> d!430089 (= (appendAssocInst!337 (c!241182 (tokens!2112 thiss!10022)) (c!241182 (tokens!2112 other!32))) true)))

(declare-fun b!1465302 () Bool)

(declare-fun e!934679 () Bool)

(assert (=> b!1465302 (= e!934679 e!934685)))

(declare-fun res!663337 () Bool)

(assert (=> b!1465302 (=> (not res!663337) (not e!934685))))

(assert (=> b!1465302 (= res!663337 (appendAssoc!78 (list!6086 (c!241182 (tokens!2112 thiss!10022))) (list!6086 (left!12905 (c!241182 (tokens!2112 other!32)))) (list!6086 (right!13235 (c!241182 (tokens!2112 other!32))))))))

(declare-fun b!1465303 () Bool)

(assert (=> b!1465303 (= e!934677 e!934679)))

(declare-fun res!663344 () Bool)

(assert (=> b!1465303 (=> res!663344 e!934679)))

(assert (=> b!1465303 (= res!663344 (not ((_ is Node!5177) (c!241182 (tokens!2112 other!32)))))))

(declare-fun b!1465304 () Bool)

(assert (=> b!1465304 (= e!934684 e!934682)))

(declare-fun res!663343 () Bool)

(assert (=> b!1465304 (=> res!663343 e!934682)))

(assert (=> b!1465304 (= res!663343 (not ((_ is Node!5177) (right!13235 (c!241182 (tokens!2112 thiss!10022))))))))

(declare-fun b!1465305 () Bool)

(assert (=> b!1465305 (= e!934683 e!934681)))

(declare-fun res!663338 () Bool)

(assert (=> b!1465305 (=> (not res!663338) (not e!934681))))

(assert (=> b!1465305 (= res!663338 (appendAssoc!78 (list!6086 (c!241182 (tokens!2112 thiss!10022))) (list!6086 (left!12905 (left!12905 (c!241182 (tokens!2112 other!32))))) (list!6086 (right!13235 (left!12905 (c!241182 (tokens!2112 other!32)))))))))

(assert (= (and d!430089 (not res!663339)) b!1465297))

(assert (= (and b!1465297 res!663341) b!1465304))

(assert (= (and b!1465304 (not res!663343)) b!1465301))

(assert (= (and b!1465301 res!663342) b!1465298))

(assert (= (and d!430089 res!663345) b!1465303))

(assert (= (and b!1465303 (not res!663344)) b!1465302))

(assert (= (and b!1465302 res!663337) b!1465299))

(assert (= (and b!1465299 (not res!663340)) b!1465305))

(assert (= (and b!1465305 res!663338) b!1465300))

(declare-fun m!1708501 () Bool)

(assert (=> b!1465300 m!1708501))

(declare-fun m!1708503 () Bool)

(assert (=> b!1465300 m!1708503))

(assert (=> b!1465300 m!1705989))

(declare-fun m!1708505 () Bool)

(assert (=> b!1465300 m!1708505))

(assert (=> b!1465300 m!1702377))

(assert (=> b!1465300 m!1705989))

(assert (=> b!1465300 m!1708503))

(declare-fun m!1708507 () Bool)

(assert (=> b!1465300 m!1708507))

(assert (=> b!1465300 m!1702377))

(assert (=> b!1465300 m!1708507))

(assert (=> b!1465300 m!1708501))

(assert (=> b!1465297 m!1704699))

(assert (=> b!1465297 m!1704701))

(assert (=> b!1465297 m!1702369))

(assert (=> b!1465297 m!1704699))

(assert (=> b!1465297 m!1704701))

(assert (=> b!1465297 m!1702369))

(declare-fun m!1708509 () Bool)

(assert (=> b!1465297 m!1708509))

(assert (=> b!1465305 m!1702377))

(assert (=> b!1465305 m!1708507))

(assert (=> b!1465305 m!1708503))

(assert (=> b!1465305 m!1702377))

(assert (=> b!1465305 m!1708507))

(assert (=> b!1465305 m!1708503))

(declare-fun m!1708511 () Bool)

(assert (=> b!1465305 m!1708511))

(assert (=> b!1465302 m!1702377))

(assert (=> b!1465302 m!1705987))

(assert (=> b!1465302 m!1705989))

(assert (=> b!1465302 m!1702377))

(assert (=> b!1465302 m!1705987))

(assert (=> b!1465302 m!1705989))

(declare-fun m!1708513 () Bool)

(assert (=> b!1465302 m!1708513))

(declare-fun m!1708515 () Bool)

(assert (=> b!1465298 m!1708515))

(declare-fun m!1708517 () Bool)

(assert (=> b!1465298 m!1708517))

(assert (=> b!1465298 m!1702369))

(assert (=> b!1465298 m!1704699))

(assert (=> b!1465298 m!1708515))

(assert (=> b!1465298 m!1702369))

(declare-fun m!1708519 () Bool)

(assert (=> b!1465298 m!1708519))

(assert (=> b!1465298 m!1704699))

(assert (=> b!1465298 m!1708517))

(assert (=> b!1465298 m!1708519))

(declare-fun m!1708527 () Bool)

(assert (=> b!1465298 m!1708527))

(assert (=> b!1465301 m!1708517))

(assert (=> b!1465301 m!1708515))

(assert (=> b!1465301 m!1702369))

(assert (=> b!1465301 m!1708517))

(assert (=> b!1465301 m!1708515))

(assert (=> b!1465301 m!1702369))

(declare-fun m!1708529 () Bool)

(assert (=> b!1465301 m!1708529))

(assert (=> d!428845 d!430089))

(assert (=> d!428845 d!429471))

(declare-fun d!430101 () Bool)

(declare-fun lt!509534 () BalanceConc!10292)

(assert (=> d!430101 (= (list!6087 lt!509534) (originalCharacters!3537 (h!20589 (t!134647 lt!507007))))))

(assert (=> d!430101 (= lt!509534 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!507007))))) (value!85885 (h!20589 (t!134647 lt!507007)))))))

(assert (=> d!430101 (= (charsOf!1538 (h!20589 (t!134647 lt!507007))) lt!509534)))

(declare-fun b_lambda!45701 () Bool)

(assert (=> (not b_lambda!45701) (not d!430101)))

(declare-fun tb!82733 () Bool)

(declare-fun t!134770 () Bool)

(assert (=> (and b!1463502 (= (toChars!3845 (transformation!2675 (h!20590 (rules!11706 other!32)))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!507007)))))) t!134770) tb!82733))

(declare-fun b!1465321 () Bool)

(declare-fun e!934697 () Bool)

(declare-fun tp!411882 () Bool)

(assert (=> b!1465321 (= e!934697 (and (inv!20311 (c!241180 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!507007))))) (value!85885 (h!20589 (t!134647 lt!507007)))))) tp!411882))))

(declare-fun result!99386 () Bool)

(assert (=> tb!82733 (= result!99386 (and (inv!20312 (dynLambda!6937 (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!507007))))) (value!85885 (h!20589 (t!134647 lt!507007))))) e!934697))))

(assert (= tb!82733 b!1465321))

(declare-fun m!1708537 () Bool)

(assert (=> b!1465321 m!1708537))

(declare-fun m!1708539 () Bool)

(assert (=> tb!82733 m!1708539))

(assert (=> d!430101 t!134770))

(declare-fun b_and!100001 () Bool)

(assert (= b_and!99989 (and (=> t!134770 result!99386) b_and!100001)))

(declare-fun t!134782 () Bool)

(declare-fun tb!82747 () Bool)

(assert (=> (and b!1463508 (= (toChars!3845 (transformation!2675 (h!20590 (rules!11706 thiss!10022)))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!507007)))))) t!134782) tb!82747))

(declare-fun result!99400 () Bool)

(assert (= result!99400 result!99386))

(assert (=> d!430101 t!134782))

(declare-fun b_and!100003 () Bool)

(assert (= b_and!99991 (and (=> t!134782 result!99400) b_and!100003)))

(declare-fun m!1708541 () Bool)

(assert (=> d!430101 m!1708541))

(declare-fun m!1708543 () Bool)

(assert (=> d!430101 m!1708543))

(assert (=> b!1463455 d!430101))

(declare-fun bm!98551 () Bool)

(declare-fun call!98556 () Option!2879)

(assert (=> bm!98551 (= call!98556 (maxPrefixOneRule!663 Lexer!2329 (h!20590 (rules!11706 thiss!10022)) (originalCharacters!3537 (h!20589 lt!507007))))))

(declare-fun b!1465322 () Bool)

(declare-fun res!663347 () Bool)

(declare-fun e!934700 () Bool)

(assert (=> b!1465322 (=> (not res!663347) (not e!934700))))

(declare-fun lt!509539 () Option!2879)

(assert (=> b!1465322 (= res!663347 (= (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!509539)))) (originalCharacters!3537 (_1!8015 (get!4621 lt!509539)))))))

(declare-fun b!1465323 () Bool)

(declare-fun res!663350 () Bool)

(assert (=> b!1465323 (=> (not res!663350) (not e!934700))))

(assert (=> b!1465323 (= res!663350 (= (value!85885 (_1!8015 (get!4621 lt!509539))) (apply!3974 (transformation!2675 (rule!4450 (_1!8015 (get!4621 lt!509539)))) (seqFromList!1718 (originalCharacters!3537 (_1!8015 (get!4621 lt!509539)))))))))

(declare-fun b!1465324 () Bool)

(declare-fun res!663346 () Bool)

(assert (=> b!1465324 (=> (not res!663346) (not e!934700))))

(assert (=> b!1465324 (= res!663346 (= (++!4093 (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!509539)))) (_2!8015 (get!4621 lt!509539))) (originalCharacters!3537 (h!20589 lt!507007))))))

(declare-fun b!1465325 () Bool)

(assert (=> b!1465325 (= e!934700 (contains!2912 (rules!11706 thiss!10022) (rule!4450 (_1!8015 (get!4621 lt!509539)))))))

(declare-fun d!430103 () Bool)

(declare-fun e!934699 () Bool)

(assert (=> d!430103 e!934699))

(declare-fun res!663351 () Bool)

(assert (=> d!430103 (=> res!663351 e!934699)))

(assert (=> d!430103 (= res!663351 (isEmpty!9547 lt!509539))))

(declare-fun e!934698 () Option!2879)

(assert (=> d!430103 (= lt!509539 e!934698)))

(declare-fun c!241644 () Bool)

(assert (=> d!430103 (= c!241644 (and ((_ is Cons!15189) (rules!11706 thiss!10022)) ((_ is Nil!15189) (t!134648 (rules!11706 thiss!10022)))))))

(declare-fun lt!509535 () Unit!24509)

(declare-fun lt!509538 () Unit!24509)

(assert (=> d!430103 (= lt!509535 lt!509538)))

(assert (=> d!430103 (isPrefix!1205 (originalCharacters!3537 (h!20589 lt!507007)) (originalCharacters!3537 (h!20589 lt!507007)))))

(assert (=> d!430103 (= lt!509538 (lemmaIsPrefixRefl!837 (originalCharacters!3537 (h!20589 lt!507007)) (originalCharacters!3537 (h!20589 lt!507007))))))

(assert (=> d!430103 (rulesValidInductive!834 Lexer!2329 (rules!11706 thiss!10022))))

(assert (=> d!430103 (= (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (originalCharacters!3537 (h!20589 lt!507007))) lt!509539)))

(declare-fun b!1465326 () Bool)

(assert (=> b!1465326 (= e!934698 call!98556)))

(declare-fun b!1465327 () Bool)

(declare-fun res!663348 () Bool)

(assert (=> b!1465327 (=> (not res!663348) (not e!934700))))

(assert (=> b!1465327 (= res!663348 (matchR!1831 (regex!2675 (rule!4450 (_1!8015 (get!4621 lt!509539)))) (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!509539))))))))

(declare-fun b!1465328 () Bool)

(assert (=> b!1465328 (= e!934699 e!934700)))

(declare-fun res!663352 () Bool)

(assert (=> b!1465328 (=> (not res!663352) (not e!934700))))

(assert (=> b!1465328 (= res!663352 (isDefined!2328 lt!509539))))

(declare-fun b!1465329 () Bool)

(declare-fun lt!509537 () Option!2879)

(declare-fun lt!509536 () Option!2879)

(assert (=> b!1465329 (= e!934698 (ite (and ((_ is None!2878) lt!509537) ((_ is None!2878) lt!509536)) None!2878 (ite ((_ is None!2878) lt!509536) lt!509537 (ite ((_ is None!2878) lt!509537) lt!509536 (ite (>= (size!12421 (_1!8015 (v!22514 lt!509537))) (size!12421 (_1!8015 (v!22514 lt!509536)))) lt!509537 lt!509536)))))))

(assert (=> b!1465329 (= lt!509537 call!98556)))

(assert (=> b!1465329 (= lt!509536 (maxPrefix!1195 Lexer!2329 (t!134648 (rules!11706 thiss!10022)) (originalCharacters!3537 (h!20589 lt!507007))))))

(declare-fun b!1465330 () Bool)

(declare-fun res!663349 () Bool)

(assert (=> b!1465330 (=> (not res!663349) (not e!934700))))

(assert (=> b!1465330 (= res!663349 (< (size!12429 (_2!8015 (get!4621 lt!509539))) (size!12429 (originalCharacters!3537 (h!20589 lt!507007)))))))

(assert (= (and d!430103 c!241644) b!1465326))

(assert (= (and d!430103 (not c!241644)) b!1465329))

(assert (= (or b!1465326 b!1465329) bm!98551))

(assert (= (and d!430103 (not res!663351)) b!1465328))

(assert (= (and b!1465328 res!663352) b!1465322))

(assert (= (and b!1465322 res!663347) b!1465330))

(assert (= (and b!1465330 res!663349) b!1465324))

(assert (= (and b!1465324 res!663346) b!1465323))

(assert (= (and b!1465323 res!663350) b!1465327))

(assert (= (and b!1465327 res!663348) b!1465325))

(declare-fun m!1708549 () Bool)

(assert (=> b!1465322 m!1708549))

(declare-fun m!1708551 () Bool)

(assert (=> b!1465322 m!1708551))

(assert (=> b!1465322 m!1708551))

(declare-fun m!1708553 () Bool)

(assert (=> b!1465322 m!1708553))

(assert (=> b!1465324 m!1708549))

(assert (=> b!1465324 m!1708551))

(assert (=> b!1465324 m!1708551))

(assert (=> b!1465324 m!1708553))

(assert (=> b!1465324 m!1708553))

(declare-fun m!1708555 () Bool)

(assert (=> b!1465324 m!1708555))

(assert (=> b!1465330 m!1708549))

(declare-fun m!1708557 () Bool)

(assert (=> b!1465330 m!1708557))

(declare-fun m!1708559 () Bool)

(assert (=> b!1465330 m!1708559))

(declare-fun m!1708561 () Bool)

(assert (=> b!1465329 m!1708561))

(assert (=> b!1465327 m!1708549))

(assert (=> b!1465327 m!1708551))

(assert (=> b!1465327 m!1708551))

(assert (=> b!1465327 m!1708553))

(assert (=> b!1465327 m!1708553))

(declare-fun m!1708563 () Bool)

(assert (=> b!1465327 m!1708563))

(assert (=> b!1465325 m!1708549))

(declare-fun m!1708565 () Bool)

(assert (=> b!1465325 m!1708565))

(assert (=> b!1465323 m!1708549))

(declare-fun m!1708567 () Bool)

(assert (=> b!1465323 m!1708567))

(assert (=> b!1465323 m!1708567))

(declare-fun m!1708569 () Bool)

(assert (=> b!1465323 m!1708569))

(declare-fun m!1708571 () Bool)

(assert (=> d!430103 m!1708571))

(declare-fun m!1708573 () Bool)

(assert (=> d!430103 m!1708573))

(declare-fun m!1708575 () Bool)

(assert (=> d!430103 m!1708575))

(assert (=> d!430103 m!1703541))

(declare-fun m!1708577 () Bool)

(assert (=> b!1465328 m!1708577))

(declare-fun m!1708579 () Bool)

(assert (=> bm!98551 m!1708579))

(assert (=> b!1463455 d!430103))

(declare-fun d!430105 () Bool)

(assert (=> d!430105 (= (list!6083 (_1!8014 lt!507600)) (list!6083 (prepend!429 (seqFromList!1716 (t!134647 (t!134647 lt!507007))) (h!20589 (t!134647 lt!507007)))))))

(declare-fun lt!509540 () Unit!24509)

(assert (=> d!430105 (= lt!509540 (choose!9010 (h!20589 (t!134647 lt!507007)) (t!134647 (t!134647 lt!507007)) (_1!8014 lt!507600)))))

(assert (=> d!430105 (= (list!6083 (_1!8014 lt!507600)) (list!6083 (seqFromList!1716 ($colon$colon!250 (t!134647 (t!134647 lt!507007)) (h!20589 (t!134647 lt!507007))))))))

(assert (=> d!430105 (= (seqFromListBHdTlConstructive!97 (h!20589 (t!134647 lt!507007)) (t!134647 (t!134647 lt!507007)) (_1!8014 lt!507600)) lt!509540)))

(declare-fun bs!344767 () Bool)

(assert (= bs!344767 d!430105))

(assert (=> bs!344767 m!1702763))

(assert (=> bs!344767 m!1702765))

(assert (=> bs!344767 m!1702763))

(declare-fun m!1708581 () Bool)

(assert (=> bs!344767 m!1708581))

(declare-fun m!1708583 () Bool)

(assert (=> bs!344767 m!1708583))

(declare-fun m!1708585 () Bool)

(assert (=> bs!344767 m!1708585))

(declare-fun m!1708587 () Bool)

(assert (=> bs!344767 m!1708587))

(assert (=> bs!344767 m!1708585))

(assert (=> bs!344767 m!1708581))

(assert (=> bs!344767 m!1702781))

(assert (=> bs!344767 m!1702765))

(assert (=> bs!344767 m!1702773))

(assert (=> b!1463455 d!430105))

(declare-fun b!1465342 () Bool)

(declare-fun e!934714 () List!15252)

(assert (=> b!1465342 (= e!934714 (Cons!15186 (h!20587 lt!507581) (++!4093 (t!134645 lt!507581) lt!507582)))))

(declare-fun b!1465341 () Bool)

(assert (=> b!1465341 (= e!934714 lt!507582)))

(declare-fun d!430107 () Bool)

(declare-fun e!934713 () Bool)

(assert (=> d!430107 e!934713))

(declare-fun res!663353 () Bool)

(assert (=> d!430107 (=> (not res!663353) (not e!934713))))

(declare-fun lt!509541 () List!15252)

(assert (=> d!430107 (= res!663353 (= (content!2247 lt!509541) ((_ map or) (content!2247 lt!507581) (content!2247 lt!507582))))))

(assert (=> d!430107 (= lt!509541 e!934714)))

(declare-fun c!241645 () Bool)

(assert (=> d!430107 (= c!241645 ((_ is Nil!15186) lt!507581))))

(assert (=> d!430107 (= (++!4093 lt!507581 lt!507582) lt!509541)))

(declare-fun b!1465344 () Bool)

(assert (=> b!1465344 (= e!934713 (or (not (= lt!507582 Nil!15186)) (= lt!509541 lt!507581)))))

(declare-fun b!1465343 () Bool)

(declare-fun res!663354 () Bool)

(assert (=> b!1465343 (=> (not res!663354) (not e!934713))))

(assert (=> b!1465343 (= res!663354 (= (size!12429 lt!509541) (+ (size!12429 lt!507581) (size!12429 lt!507582))))))

(assert (= (and d!430107 c!241645) b!1465341))

(assert (= (and d!430107 (not c!241645)) b!1465342))

(assert (= (and d!430107 res!663353) b!1465343))

(assert (= (and b!1465343 res!663354) b!1465344))

(declare-fun m!1708589 () Bool)

(assert (=> b!1465342 m!1708589))

(declare-fun m!1708591 () Bool)

(assert (=> d!430107 m!1708591))

(declare-fun m!1708593 () Bool)

(assert (=> d!430107 m!1708593))

(declare-fun m!1708595 () Bool)

(assert (=> d!430107 m!1708595))

(declare-fun m!1708597 () Bool)

(assert (=> b!1465343 m!1708597))

(declare-fun m!1708599 () Bool)

(assert (=> b!1465343 m!1708599))

(declare-fun m!1708601 () Bool)

(assert (=> b!1465343 m!1708601))

(assert (=> b!1463455 d!430107))

(declare-fun b!1465349 () Bool)

(declare-fun res!663355 () Bool)

(declare-fun e!934722 () Bool)

(assert (=> b!1465349 (=> (not res!663355) (not e!934722))))

(declare-fun lt!509542 () Token!5012)

(assert (=> b!1465349 (= res!663355 (matchR!1831 (regex!2675 (get!4623 (getRuleFromTag!224 Lexer!2329 (rules!11706 thiss!10022) (tag!2939 (rule!4450 lt!509542))))) (list!6087 (charsOf!1538 lt!509542))))))

(declare-fun b!1465351 () Bool)

(declare-fun e!934721 () Unit!24509)

(declare-fun Unit!24835 () Unit!24509)

(assert (=> b!1465351 (= e!934721 Unit!24835)))

(declare-fun lt!509551 () List!15252)

(assert (=> b!1465351 (= lt!509551 (++!4093 (list!6087 (charsOf!1538 (h!20589 lt!507007))) (list!6087 lt!507580)))))

(declare-fun lt!509548 () Unit!24509)

(assert (=> b!1465351 (= lt!509548 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!117 Lexer!2329 (rule!4450 lt!509542) (rules!11706 thiss!10022) lt!509551))))

(assert (=> b!1465351 (isEmpty!9547 (maxPrefixOneRule!663 Lexer!2329 (rule!4450 lt!509542) lt!509551))))

(declare-fun lt!509557 () Unit!24509)

(assert (=> b!1465351 (= lt!509557 lt!509548)))

(declare-fun lt!509547 () List!15252)

(assert (=> b!1465351 (= lt!509547 (list!6087 (charsOf!1538 lt!509542)))))

(declare-fun lt!509552 () Unit!24509)

(assert (=> b!1465351 (= lt!509552 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!113 Lexer!2329 (rule!4450 lt!509542) lt!509547 (++!4093 (list!6087 (charsOf!1538 (h!20589 lt!507007))) (list!6087 lt!507580))))))

(assert (=> b!1465351 (not (matchR!1831 (regex!2675 (rule!4450 lt!509542)) lt!509547))))

(declare-fun lt!509544 () Unit!24509)

(assert (=> b!1465351 (= lt!509544 lt!509552)))

(assert (=> b!1465351 false))

(declare-fun d!430109 () Bool)

(assert (=> d!430109 (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (++!4093 (list!6087 (charsOf!1538 (h!20589 lt!507007))) (list!6087 lt!507580))))))

(declare-fun lt!509554 () Unit!24509)

(assert (=> d!430109 (= lt!509554 e!934721)))

(declare-fun c!241646 () Bool)

(assert (=> d!430109 (= c!241646 (isEmpty!9547 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (++!4093 (list!6087 (charsOf!1538 (h!20589 lt!507007))) (list!6087 lt!507580)))))))

(declare-fun lt!509555 () Unit!24509)

(declare-fun lt!509545 () Unit!24509)

(assert (=> d!430109 (= lt!509555 lt!509545)))

(assert (=> d!430109 e!934722))

(declare-fun res!663356 () Bool)

(assert (=> d!430109 (=> (not res!663356) (not e!934722))))

(assert (=> d!430109 (= res!663356 (isDefined!2330 (getRuleFromTag!224 Lexer!2329 (rules!11706 thiss!10022) (tag!2939 (rule!4450 lt!509542)))))))

(assert (=> d!430109 (= lt!509545 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!224 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 lt!507007))) lt!509542))))

(declare-fun lt!509556 () Unit!24509)

(declare-fun lt!509543 () Unit!24509)

(assert (=> d!430109 (= lt!509556 lt!509543)))

(declare-fun lt!509558 () List!15252)

(assert (=> d!430109 (isPrefix!1205 lt!509558 (++!4093 (list!6087 (charsOf!1538 (h!20589 lt!507007))) (list!6087 lt!507580)))))

(assert (=> d!430109 (= lt!509543 (lemmaPrefixStaysPrefixWhenAddingToSuffix!109 lt!509558 (list!6087 (charsOf!1538 (h!20589 lt!507007))) (list!6087 lt!507580)))))

(assert (=> d!430109 (= lt!509558 (list!6087 (charsOf!1538 lt!509542)))))

(declare-fun lt!509549 () Unit!24509)

(declare-fun lt!509550 () Unit!24509)

(assert (=> d!430109 (= lt!509549 lt!509550)))

(declare-fun lt!509546 () List!15252)

(declare-fun lt!509553 () List!15252)

(assert (=> d!430109 (isPrefix!1205 lt!509546 (++!4093 lt!509546 lt!509553))))

(assert (=> d!430109 (= lt!509550 (lemmaConcatTwoListThenFirstIsPrefix!768 lt!509546 lt!509553))))

(assert (=> d!430109 (= lt!509553 (_2!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 lt!507007)))))))))

(assert (=> d!430109 (= lt!509546 (list!6087 (charsOf!1538 lt!509542)))))

(assert (=> d!430109 (= lt!509542 (head!3020 (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (seqFromList!1718 (list!6087 (charsOf!1538 (h!20589 lt!507007)))))))))))

(assert (=> d!430109 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!430109 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!241 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 lt!507007))) (list!6087 lt!507580)) lt!509554)))

(declare-fun b!1465352 () Bool)

(declare-fun Unit!24836 () Unit!24509)

(assert (=> b!1465352 (= e!934721 Unit!24836)))

(declare-fun b!1465350 () Bool)

(assert (=> b!1465350 (= e!934722 (= (rule!4450 lt!509542) (get!4623 (getRuleFromTag!224 Lexer!2329 (rules!11706 thiss!10022) (tag!2939 (rule!4450 lt!509542))))))))

(assert (= (and d!430109 res!663356) b!1465349))

(assert (= (and b!1465349 res!663355) b!1465350))

(assert (= (and d!430109 c!241646) b!1465351))

(assert (= (and d!430109 (not c!241646)) b!1465352))

(declare-fun m!1708611 () Bool)

(assert (=> b!1465349 m!1708611))

(declare-fun m!1708613 () Bool)

(assert (=> b!1465349 m!1708613))

(assert (=> b!1465349 m!1708613))

(declare-fun m!1708615 () Bool)

(assert (=> b!1465349 m!1708615))

(declare-fun m!1708617 () Bool)

(assert (=> b!1465349 m!1708617))

(declare-fun m!1708619 () Bool)

(assert (=> b!1465349 m!1708619))

(assert (=> b!1465349 m!1708611))

(assert (=> b!1465349 m!1708617))

(assert (=> b!1465351 m!1708611))

(assert (=> b!1465351 m!1708613))

(declare-fun m!1708621 () Bool)

(assert (=> b!1465351 m!1708621))

(declare-fun m!1708623 () Bool)

(assert (=> b!1465351 m!1708623))

(declare-fun m!1708625 () Bool)

(assert (=> b!1465351 m!1708625))

(assert (=> b!1465351 m!1702749))

(assert (=> b!1465351 m!1702769))

(declare-fun m!1708627 () Bool)

(assert (=> b!1465351 m!1708627))

(assert (=> b!1465351 m!1708627))

(declare-fun m!1708629 () Bool)

(assert (=> b!1465351 m!1708629))

(assert (=> b!1465351 m!1708611))

(assert (=> b!1465351 m!1708621))

(declare-fun m!1708631 () Bool)

(assert (=> b!1465351 m!1708631))

(assert (=> d!430109 m!1701757))

(assert (=> d!430109 m!1708611))

(assert (=> d!430109 m!1708613))

(assert (=> d!430109 m!1702749))

(assert (=> d!430109 m!1702751))

(assert (=> d!430109 m!1702749))

(assert (=> d!430109 m!1702769))

(declare-fun m!1708633 () Bool)

(assert (=> d!430109 m!1708633))

(declare-fun m!1708635 () Bool)

(assert (=> d!430109 m!1708635))

(declare-fun m!1708637 () Bool)

(assert (=> d!430109 m!1708637))

(declare-fun m!1708639 () Bool)

(assert (=> d!430109 m!1708639))

(declare-fun m!1708641 () Bool)

(assert (=> d!430109 m!1708641))

(declare-fun m!1708643 () Bool)

(assert (=> d!430109 m!1708643))

(declare-fun m!1708645 () Bool)

(assert (=> d!430109 m!1708645))

(declare-fun m!1708647 () Bool)

(assert (=> d!430109 m!1708647))

(assert (=> d!430109 m!1708645))

(declare-fun m!1708649 () Bool)

(assert (=> d!430109 m!1708649))

(assert (=> d!430109 m!1702749))

(assert (=> d!430109 m!1702769))

(assert (=> d!430109 m!1708627))

(assert (=> d!430109 m!1702749))

(declare-fun m!1708651 () Bool)

(assert (=> d!430109 m!1708651))

(assert (=> d!430109 m!1708617))

(assert (=> d!430109 m!1708627))

(declare-fun m!1708653 () Bool)

(assert (=> d!430109 m!1708653))

(assert (=> d!430109 m!1708627))

(assert (=> d!430109 m!1708645))

(declare-fun m!1708655 () Bool)

(assert (=> d!430109 m!1708655))

(assert (=> d!430109 m!1708617))

(declare-fun m!1708657 () Bool)

(assert (=> d!430109 m!1708657))

(assert (=> d!430109 m!1708639))

(declare-fun m!1708659 () Bool)

(assert (=> d!430109 m!1708659))

(assert (=> d!430109 m!1702749))

(assert (=> d!430109 m!1708641))

(assert (=> d!430109 m!1708635))

(assert (=> d!430109 m!1702751))

(assert (=> d!430109 m!1702803))

(assert (=> d!430109 m!1708611))

(assert (=> b!1465350 m!1708617))

(assert (=> b!1465350 m!1708617))

(assert (=> b!1465350 m!1708619))

(assert (=> b!1463455 d!430109))

(declare-fun d!430111 () Bool)

(declare-fun lt!509559 () C!8156)

(assert (=> d!430111 (= lt!509559 (apply!3972 (list!6087 (charsOf!1538 (h!20589 (t!134647 lt!507007)))) 0))))

(assert (=> d!430111 (= lt!509559 (apply!3973 (c!241180 (charsOf!1538 (h!20589 (t!134647 lt!507007)))) 0))))

(declare-fun e!934730 () Bool)

(assert (=> d!430111 e!934730))

(declare-fun res!663357 () Bool)

(assert (=> d!430111 (=> (not res!663357) (not e!934730))))

(assert (=> d!430111 (= res!663357 (<= 0 0))))

(assert (=> d!430111 (= (apply!3969 (charsOf!1538 (h!20589 (t!134647 lt!507007))) 0) lt!509559)))

(declare-fun b!1465370 () Bool)

(assert (=> b!1465370 (= e!934730 (< 0 (size!12425 (charsOf!1538 (h!20589 (t!134647 lt!507007))))))))

(assert (= (and d!430111 res!663357) b!1465370))

(assert (=> d!430111 m!1702755))

(assert (=> d!430111 m!1705923))

(assert (=> d!430111 m!1705923))

(declare-fun m!1708661 () Bool)

(assert (=> d!430111 m!1708661))

(declare-fun m!1708663 () Bool)

(assert (=> d!430111 m!1708663))

(assert (=> b!1465370 m!1702755))

(declare-fun m!1708665 () Bool)

(assert (=> b!1465370 m!1708665))

(assert (=> b!1463455 d!430111))

(declare-fun d!430113 () Bool)

(assert (=> d!430113 (= (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 lt!507007))))) (v!22514 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 lt!507007))))))))

(assert (=> b!1463455 d!430113))

(declare-fun d!430115 () Bool)

(assert (=> d!430115 (= (isEmpty!9545 (_2!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 lt!507007))))))) ((_ is Nil!15186) (_2!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 lt!507007))))))))))

(assert (=> b!1463455 d!430115))

(declare-fun d!430117 () Bool)

(declare-fun e!934732 () Bool)

(assert (=> d!430117 e!934732))

(declare-fun res!663358 () Bool)

(assert (=> d!430117 (=> (not res!663358) (not e!934732))))

(declare-fun lt!509560 () BalanceConc!10292)

(assert (=> d!430117 (= res!663358 (= (list!6087 lt!509560) (Cons!15186 (apply!3969 (charsOf!1538 (h!20589 (t!134647 lt!507007))) 0) Nil!15186)))))

(assert (=> d!430117 (= lt!509560 (singleton!542 (apply!3969 (charsOf!1538 (h!20589 (t!134647 lt!507007))) 0)))))

(assert (=> d!430117 (= (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 lt!507007))) 0)) lt!509560)))

(declare-fun b!1465375 () Bool)

(assert (=> b!1465375 (= e!934732 (isBalanced!1557 (c!241180 lt!509560)))))

(assert (= (and d!430117 res!663358) b!1465375))

(declare-fun m!1708671 () Bool)

(assert (=> d!430117 m!1708671))

(assert (=> d!430117 m!1702757))

(declare-fun m!1708673 () Bool)

(assert (=> d!430117 m!1708673))

(declare-fun m!1708675 () Bool)

(assert (=> b!1465375 m!1708675))

(assert (=> b!1463455 d!430117))

(declare-fun d!430119 () Bool)

(assert (=> d!430119 (= (list!6083 (_1!8014 lt!507600)) (list!6086 (c!241182 (_1!8014 lt!507600))))))

(declare-fun bs!344768 () Bool)

(assert (= bs!344768 d!430119))

(declare-fun m!1708683 () Bool)

(assert (=> bs!344768 m!1708683))

(assert (=> b!1463455 d!430119))

(declare-fun d!430121 () Bool)

(assert (=> d!430121 (= (list!6087 lt!507580) (list!6088 (c!241180 lt!507580)))))

(declare-fun bs!344769 () Bool)

(assert (= bs!344769 d!430121))

(declare-fun m!1708685 () Bool)

(assert (=> bs!344769 m!1708685))

(assert (=> b!1463455 d!430121))

(declare-fun d!430123 () Bool)

(declare-fun e!934737 () Bool)

(assert (=> d!430123 e!934737))

(declare-fun res!663359 () Bool)

(assert (=> d!430123 (=> (not res!663359) (not e!934737))))

(assert (=> d!430123 (= res!663359 (isBalanced!1555 (prepend!431 (c!241182 (seqFromList!1716 (t!134647 (t!134647 lt!507007)))) (h!20589 (t!134647 lt!507007)))))))

(declare-fun lt!509561 () BalanceConc!10294)

(assert (=> d!430123 (= lt!509561 (BalanceConc!10295 (prepend!431 (c!241182 (seqFromList!1716 (t!134647 (t!134647 lt!507007)))) (h!20589 (t!134647 lt!507007)))))))

(assert (=> d!430123 (= (prepend!429 (seqFromList!1716 (t!134647 (t!134647 lt!507007))) (h!20589 (t!134647 lt!507007))) lt!509561)))

(declare-fun b!1465382 () Bool)

(assert (=> b!1465382 (= e!934737 (= (list!6083 lt!509561) (Cons!15188 (h!20589 (t!134647 lt!507007)) (list!6083 (seqFromList!1716 (t!134647 (t!134647 lt!507007)))))))))

(assert (= (and d!430123 res!663359) b!1465382))

(declare-fun m!1708693 () Bool)

(assert (=> d!430123 m!1708693))

(assert (=> d!430123 m!1708693))

(declare-fun m!1708695 () Bool)

(assert (=> d!430123 m!1708695))

(declare-fun m!1708697 () Bool)

(assert (=> b!1465382 m!1708697))

(assert (=> b!1465382 m!1702763))

(declare-fun m!1708699 () Bool)

(assert (=> b!1465382 m!1708699))

(assert (=> b!1463455 d!430123))

(declare-fun d!430125 () Bool)

(assert (=> d!430125 (= (seqFromList!1716 (t!134647 (t!134647 lt!507007))) (fromListB!738 (t!134647 (t!134647 lt!507007))))))

(declare-fun bs!344770 () Bool)

(assert (= bs!344770 d!430125))

(declare-fun m!1708701 () Bool)

(assert (=> bs!344770 m!1708701))

(assert (=> b!1463455 d!430125))

(declare-fun d!430127 () Bool)

(assert (=> d!430127 (= (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (originalCharacters!3537 (h!20589 lt!507007)))) (not (isEmpty!9547 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (originalCharacters!3537 (h!20589 lt!507007))))))))

(declare-fun bs!344771 () Bool)

(assert (= bs!344771 d!430127))

(assert (=> bs!344771 m!1702741))

(declare-fun m!1708703 () Bool)

(assert (=> bs!344771 m!1708703))

(assert (=> b!1463455 d!430127))

(declare-fun b!1465387 () Bool)

(declare-fun e!934745 () Bool)

(declare-fun e!934744 () Bool)

(assert (=> b!1465387 (= e!934745 e!934744)))

(declare-fun res!663361 () Bool)

(assert (=> b!1465387 (=> (not res!663361) (not e!934744))))

(assert (=> b!1465387 (= res!663361 (not ((_ is Nil!15186) (++!4093 lt!507581 lt!507582))))))

(declare-fun b!1465388 () Bool)

(declare-fun res!663362 () Bool)

(assert (=> b!1465388 (=> (not res!663362) (not e!934744))))

(assert (=> b!1465388 (= res!663362 (= (head!3024 lt!507581) (head!3024 (++!4093 lt!507581 lt!507582))))))

(declare-fun b!1465390 () Bool)

(declare-fun e!934746 () Bool)

(assert (=> b!1465390 (= e!934746 (>= (size!12429 (++!4093 lt!507581 lt!507582)) (size!12429 lt!507581)))))

(declare-fun b!1465389 () Bool)

(assert (=> b!1465389 (= e!934744 (isPrefix!1205 (tail!2179 lt!507581) (tail!2179 (++!4093 lt!507581 lt!507582))))))

(declare-fun d!430129 () Bool)

(assert (=> d!430129 e!934746))

(declare-fun res!663363 () Bool)

(assert (=> d!430129 (=> res!663363 e!934746)))

(declare-fun lt!509562 () Bool)

(assert (=> d!430129 (= res!663363 (not lt!509562))))

(assert (=> d!430129 (= lt!509562 e!934745)))

(declare-fun res!663360 () Bool)

(assert (=> d!430129 (=> res!663360 e!934745)))

(assert (=> d!430129 (= res!663360 ((_ is Nil!15186) lt!507581))))

(assert (=> d!430129 (= (isPrefix!1205 lt!507581 (++!4093 lt!507581 lt!507582)) lt!509562)))

(assert (= (and d!430129 (not res!663360)) b!1465387))

(assert (= (and b!1465387 res!663361) b!1465388))

(assert (= (and b!1465388 res!663362) b!1465389))

(assert (= (and d!430129 (not res!663363)) b!1465390))

(declare-fun m!1708705 () Bool)

(assert (=> b!1465388 m!1708705))

(assert (=> b!1465388 m!1702785))

(declare-fun m!1708707 () Bool)

(assert (=> b!1465388 m!1708707))

(assert (=> b!1465390 m!1702785))

(declare-fun m!1708709 () Bool)

(assert (=> b!1465390 m!1708709))

(assert (=> b!1465390 m!1708599))

(declare-fun m!1708711 () Bool)

(assert (=> b!1465389 m!1708711))

(assert (=> b!1465389 m!1702785))

(declare-fun m!1708715 () Bool)

(assert (=> b!1465389 m!1708715))

(assert (=> b!1465389 m!1708711))

(assert (=> b!1465389 m!1708715))

(declare-fun m!1708721 () Bool)

(assert (=> b!1465389 m!1708721))

(assert (=> b!1463455 d!430129))

(declare-fun d!430131 () Bool)

(assert (=> d!430131 (= (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (++!4093 (list!6087 (charsOf!1538 (h!20589 lt!507007))) (list!6087 lt!507580))) (Some!2878 (tuple2!14259 (h!20589 lt!507007) (list!6087 lt!507580))))))

(declare-fun lt!509570 () Unit!24509)

(declare-fun Unit!24838 () Unit!24509)

(assert (=> d!430131 (= lt!509570 Unit!24838)))

(declare-fun lt!509615 () Unit!24509)

(declare-fun e!934752 () Unit!24509)

(assert (=> d!430131 (= lt!509615 e!934752)))

(declare-fun c!241651 () Bool)

(declare-fun lt!509620 () Token!5012)

(assert (=> d!430131 (= c!241651 (not (= (rule!4450 lt!509620) (rule!4450 (h!20589 lt!507007)))))))

(declare-fun lt!509617 () Unit!24509)

(declare-fun lt!509583 () Unit!24509)

(assert (=> d!430131 (= lt!509617 lt!509583)))

(declare-fun lt!509573 () List!15252)

(assert (=> d!430131 (= (list!6087 lt!507580) lt!509573)))

(declare-fun lt!509574 () List!15252)

(assert (=> d!430131 (= lt!509583 (lemmaSamePrefixThenSameSuffix!607 (list!6087 (charsOf!1538 (h!20589 lt!507007))) (list!6087 lt!507580) (list!6087 (charsOf!1538 (h!20589 lt!507007))) lt!509573 lt!509574))))

(declare-fun lt!509579 () Unit!24509)

(declare-fun lt!509596 () Unit!24509)

(assert (=> d!430131 (= lt!509579 lt!509596)))

(declare-fun lt!509585 () List!15252)

(declare-fun lt!509577 () List!15252)

(assert (=> d!430131 (= lt!509585 lt!509577)))

(assert (=> d!430131 (= lt!509596 (lemmaIsPrefixSameLengthThenSameList!109 lt!509585 lt!509577 lt!509574))))

(assert (=> d!430131 (= lt!509577 (list!6087 (charsOf!1538 (h!20589 lt!507007))))))

(assert (=> d!430131 (= lt!509585 (list!6087 (charsOf!1538 lt!509620)))))

(declare-fun lt!509598 () Unit!24509)

(declare-fun e!934756 () Unit!24509)

(assert (=> d!430131 (= lt!509598 e!934756)))

(declare-fun c!241648 () Bool)

(assert (=> d!430131 (= c!241648 (< (size!12425 (charsOf!1538 lt!509620)) (size!12425 (charsOf!1538 (h!20589 lt!507007)))))))

(declare-fun lt!509582 () Unit!24509)

(declare-fun e!934754 () Unit!24509)

(assert (=> d!430131 (= lt!509582 e!934754)))

(declare-fun c!241647 () Bool)

(assert (=> d!430131 (= c!241647 (> (size!12425 (charsOf!1538 lt!509620)) (size!12425 (charsOf!1538 (h!20589 lt!507007)))))))

(declare-fun lt!509633 () Unit!24509)

(declare-fun lt!509593 () Unit!24509)

(assert (=> d!430131 (= lt!509633 lt!509593)))

(assert (=> d!430131 (matchR!1831 (rulesRegex!412 Lexer!2329 (rules!11706 thiss!10022)) (list!6087 (charsOf!1538 (h!20589 lt!507007))))))

(assert (=> d!430131 (= lt!509593 (lemmaMaxPrefixThenMatchesRulesRegex!10 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 lt!507007))) (h!20589 lt!507007) (rule!4450 (h!20589 lt!507007)) Nil!15186))))

(declare-fun lt!509628 () Unit!24509)

(declare-fun lt!509629 () Unit!24509)

(assert (=> d!430131 (= lt!509628 lt!509629)))

(declare-fun lt!509591 () List!15252)

(assert (=> d!430131 (= lt!509573 lt!509591)))

(declare-fun lt!509631 () List!15252)

(declare-fun lt!509611 () List!15252)

(assert (=> d!430131 (= lt!509629 (lemmaSamePrefixThenSameSuffix!607 lt!509611 lt!509573 lt!509631 lt!509591 lt!509574))))

(assert (=> d!430131 (= lt!509591 (getSuffix!655 lt!509574 (list!6087 (charsOf!1538 lt!509620))))))

(assert (=> d!430131 (= lt!509631 (list!6087 (charsOf!1538 lt!509620)))))

(assert (=> d!430131 (= lt!509611 (list!6087 (charsOf!1538 lt!509620)))))

(declare-fun lt!509580 () Unit!24509)

(declare-fun lt!509608 () Unit!24509)

(assert (=> d!430131 (= lt!509580 lt!509608)))

(declare-fun lt!509609 () List!15252)

(assert (=> d!430131 (= (maxPrefixOneRule!663 Lexer!2329 (rule!4450 lt!509620) lt!509574) (Some!2878 (tuple2!14259 (Token!5013 (apply!3974 (transformation!2675 (rule!4450 lt!509620)) (seqFromList!1718 lt!509609)) (rule!4450 lt!509620) (size!12429 lt!509609) lt!509609) lt!509573)))))

(assert (=> d!430131 (= lt!509608 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!200 Lexer!2329 (rules!11706 thiss!10022) lt!509609 lt!509574 lt!509573 (rule!4450 lt!509620)))))

(assert (=> d!430131 (= lt!509609 (list!6087 (charsOf!1538 lt!509620)))))

(declare-fun lt!509630 () Unit!24509)

(assert (=> d!430131 (= lt!509630 (lemmaCharactersSize!306 lt!509620))))

(declare-fun lt!509568 () Unit!24509)

(assert (=> d!430131 (= lt!509568 (lemmaEqSameImage!117 (transformation!2675 (rule!4450 lt!509620)) (charsOf!1538 lt!509620) (seqFromList!1718 (originalCharacters!3537 lt!509620))))))

(declare-fun lt!509578 () Unit!24509)

(assert (=> d!430131 (= lt!509578 (lemmaSemiInverse!352 (transformation!2675 (rule!4450 lt!509620)) (charsOf!1538 lt!509620)))))

(declare-fun lt!509619 () Unit!24509)

(assert (=> d!430131 (= lt!509619 (lemmaInv!384 (transformation!2675 (rule!4450 lt!509620))))))

(declare-fun lt!509622 () Unit!24509)

(declare-fun lt!509584 () Unit!24509)

(assert (=> d!430131 (= lt!509622 lt!509584)))

(declare-fun lt!509601 () List!15252)

(assert (=> d!430131 (isPrefix!1205 lt!509601 (++!4093 lt!509601 lt!509573))))

(assert (=> d!430131 (= lt!509584 (lemmaConcatTwoListThenFirstIsPrefix!768 lt!509601 lt!509573))))

(assert (=> d!430131 (= lt!509601 (list!6087 (charsOf!1538 lt!509620)))))

(declare-fun lt!509595 () Unit!24509)

(declare-fun lt!509602 () Unit!24509)

(assert (=> d!430131 (= lt!509595 lt!509602)))

(declare-fun e!934750 () Bool)

(assert (=> d!430131 e!934750))

(declare-fun res!663365 () Bool)

(assert (=> d!430131 (=> (not res!663365) (not e!934750))))

(assert (=> d!430131 (= res!663365 (isDefined!2330 (getRuleFromTag!224 Lexer!2329 (rules!11706 thiss!10022) (tag!2939 (rule!4450 lt!509620)))))))

(assert (=> d!430131 (= lt!509602 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!224 Lexer!2329 (rules!11706 thiss!10022) lt!509574 lt!509620))))

(declare-fun lt!509586 () Option!2879)

(assert (=> d!430131 (= lt!509573 (_2!8015 (get!4621 lt!509586)))))

(assert (=> d!430131 (= lt!509620 (_1!8015 (get!4621 lt!509586)))))

(declare-fun lt!509563 () Unit!24509)

(assert (=> d!430131 (= lt!509563 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!241 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 lt!507007))) (list!6087 lt!507580)))))

(assert (=> d!430131 (= lt!509586 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) lt!509574))))

(declare-fun lt!509600 () Unit!24509)

(declare-fun lt!509623 () Unit!24509)

(assert (=> d!430131 (= lt!509600 lt!509623)))

(declare-fun lt!509606 () List!15252)

(assert (=> d!430131 (isPrefix!1205 lt!509606 (++!4093 lt!509606 (list!6087 lt!507580)))))

(assert (=> d!430131 (= lt!509623 (lemmaConcatTwoListThenFirstIsPrefix!768 lt!509606 (list!6087 lt!507580)))))

(assert (=> d!430131 (= lt!509606 (list!6087 (charsOf!1538 (h!20589 lt!507007))))))

(assert (=> d!430131 (= lt!509574 (++!4093 (list!6087 (charsOf!1538 (h!20589 lt!507007))) (list!6087 lt!507580)))))

(assert (=> d!430131 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!430131 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!39 Lexer!2329 (rules!11706 thiss!10022) (h!20589 lt!507007) (rule!4450 (h!20589 lt!507007)) (list!6087 lt!507580)) lt!509570)))

(declare-fun b!1465394 () Bool)

(declare-fun e!934755 () Unit!24509)

(declare-fun Unit!24840 () Unit!24509)

(assert (=> b!1465394 (= e!934755 Unit!24840)))

(declare-fun b!1465395 () Bool)

(assert (=> b!1465395 (= e!934750 (= (rule!4450 lt!509620) (get!4623 (getRuleFromTag!224 Lexer!2329 (rules!11706 thiss!10022) (tag!2939 (rule!4450 lt!509620))))))))

(declare-fun b!1465396 () Bool)

(declare-fun Unit!24843 () Unit!24509)

(assert (=> b!1465396 (= e!934752 Unit!24843)))

(declare-fun b!1465397 () Bool)

(assert (=> b!1465397 false))

(declare-fun lt!509581 () Unit!24509)

(declare-fun lt!509571 () Unit!24509)

(assert (=> b!1465397 (= lt!509581 lt!509571)))

(declare-fun lt!509569 () List!15252)

(assert (=> b!1465397 (not (matchR!1831 (regex!2675 (rule!4450 lt!509620)) lt!509569))))

(assert (=> b!1465397 (= lt!509571 (lemmaMaxPrefNoSmallerRuleMatches!50 Lexer!2329 (rules!11706 thiss!10022) (rule!4450 (h!20589 lt!507007)) lt!509569 (list!6087 (charsOf!1538 (h!20589 lt!507007))) (rule!4450 lt!509620)))))

(assert (=> b!1465397 (= lt!509569 (list!6087 (charsOf!1538 (h!20589 lt!507007))))))

(declare-fun Unit!24845 () Unit!24509)

(assert (=> b!1465397 (= e!934755 Unit!24845)))

(declare-fun b!1465398 () Bool)

(declare-fun res!663364 () Bool)

(assert (=> b!1465398 (=> (not res!663364) (not e!934750))))

(assert (=> b!1465398 (= res!663364 (matchR!1831 (regex!2675 (get!4623 (getRuleFromTag!224 Lexer!2329 (rules!11706 thiss!10022) (tag!2939 (rule!4450 lt!509620))))) (list!6087 (charsOf!1538 lt!509620))))))

(declare-fun b!1465399 () Bool)

(declare-fun Unit!24846 () Unit!24509)

(assert (=> b!1465399 (= e!934754 Unit!24846)))

(declare-fun lt!509572 () Unit!24509)

(assert (=> b!1465399 (= lt!509572 (lemmaMaxPrefixThenMatchesRulesRegex!10 Lexer!2329 (rules!11706 thiss!10022) lt!509574 lt!509620 (rule!4450 lt!509620) lt!509573))))

(assert (=> b!1465399 (matchR!1831 (rulesRegex!412 Lexer!2329 (rules!11706 thiss!10022)) (list!6087 (charsOf!1538 lt!509620)))))

(declare-fun lt!509621 () Unit!24509)

(assert (=> b!1465399 (= lt!509621 lt!509572)))

(declare-fun lt!509626 () List!15252)

(assert (=> b!1465399 (= lt!509626 (list!6087 (charsOf!1538 (h!20589 lt!507007))))))

(declare-fun lt!509610 () List!15252)

(assert (=> b!1465399 (= lt!509610 (list!6087 (charsOf!1538 (h!20589 lt!507007))))))

(declare-fun lt!509590 () List!15252)

(assert (=> b!1465399 (= lt!509590 (getSuffix!655 lt!509574 (list!6087 (charsOf!1538 (h!20589 lt!507007)))))))

(declare-fun lt!509627 () Unit!24509)

(assert (=> b!1465399 (= lt!509627 (lemmaSamePrefixThenSameSuffix!607 lt!509626 (list!6087 lt!507580) lt!509610 lt!509590 lt!509574))))

(assert (=> b!1465399 (= (list!6087 lt!507580) lt!509590)))

(declare-fun lt!509565 () Unit!24509)

(assert (=> b!1465399 (= lt!509565 lt!509627)))

(declare-fun lt!509567 () List!15252)

(assert (=> b!1465399 (= lt!509567 (list!6087 (charsOf!1538 (h!20589 lt!507007))))))

(declare-fun lt!509575 () Unit!24509)

(assert (=> b!1465399 (= lt!509575 (lemmaAddHeadSuffixToPrefixStillPrefix!98 lt!509567 lt!509574))))

(assert (=> b!1465399 (isPrefix!1205 (++!4093 lt!509567 (Cons!15186 (head!3024 (getSuffix!655 lt!509574 lt!509567)) Nil!15186)) lt!509574)))

(declare-fun lt!509632 () Unit!24509)

(assert (=> b!1465399 (= lt!509632 lt!509575)))

(declare-fun lt!509576 () List!15252)

(assert (=> b!1465399 (= lt!509576 (list!6087 (charsOf!1538 lt!509620)))))

(declare-fun lt!509613 () List!15252)

(assert (=> b!1465399 (= lt!509613 (++!4093 (list!6087 (charsOf!1538 (h!20589 lt!507007))) (Cons!15186 (head!3024 (list!6087 lt!507580)) Nil!15186)))))

(declare-fun lt!509587 () Unit!24509)

(assert (=> b!1465399 (= lt!509587 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!10 lt!509576 lt!509613 lt!509574))))

(assert (=> b!1465399 (isPrefix!1205 lt!509613 lt!509576)))

(declare-fun lt!509594 () Unit!24509)

(assert (=> b!1465399 (= lt!509594 lt!509587)))

(declare-fun lt!509599 () Regex!3989)

(assert (=> b!1465399 (= lt!509599 (rulesRegex!412 Lexer!2329 (rules!11706 thiss!10022)))))

(declare-fun lt!509614 () List!15252)

(assert (=> b!1465399 (= lt!509614 (++!4093 (list!6087 (charsOf!1538 (h!20589 lt!507007))) (Cons!15186 (head!3024 (list!6087 lt!507580)) Nil!15186)))))

(declare-fun lt!509603 () List!15252)

(assert (=> b!1465399 (= lt!509603 (list!6087 (charsOf!1538 lt!509620)))))

(declare-fun lt!509588 () Unit!24509)

(assert (=> b!1465399 (= lt!509588 (lemmaNotPrefixMatchThenCannotMatchLonger!11 lt!509599 lt!509614 lt!509603))))

(assert (=> b!1465399 (not (matchR!1831 lt!509599 lt!509603))))

(declare-fun lt!509607 () Unit!24509)

(assert (=> b!1465399 (= lt!509607 lt!509588)))

(assert (=> b!1465399 false))

(declare-fun b!1465400 () Bool)

(declare-fun e!934751 () Unit!24509)

(declare-fun Unit!24852 () Unit!24509)

(assert (=> b!1465400 (= e!934751 Unit!24852)))

(declare-fun b!1465401 () Bool)

(declare-fun e!934753 () Unit!24509)

(declare-fun Unit!24854 () Unit!24509)

(assert (=> b!1465401 (= e!934753 Unit!24854)))

(declare-fun b!1465402 () Bool)

(declare-fun Unit!24855 () Unit!24509)

(assert (=> b!1465402 (= e!934756 Unit!24855)))

(declare-fun b!1465403 () Bool)

(assert (=> b!1465403 false))

(declare-fun lt!509566 () Unit!24509)

(declare-fun lt!509604 () Unit!24509)

(assert (=> b!1465403 (= lt!509566 lt!509604)))

(declare-fun lt!509625 () List!15252)

(assert (=> b!1465403 (not (matchR!1831 (regex!2675 (rule!4450 (h!20589 lt!507007))) lt!509625))))

(assert (=> b!1465403 (= lt!509604 (lemmaMaxPrefNoSmallerRuleMatches!50 Lexer!2329 (rules!11706 thiss!10022) (rule!4450 lt!509620) lt!509625 lt!509574 (rule!4450 (h!20589 lt!507007))))))

(assert (=> b!1465403 (= lt!509625 (list!6087 (charsOf!1538 lt!509620)))))

(declare-fun Unit!24857 () Unit!24509)

(assert (=> b!1465403 (= e!934751 Unit!24857)))

(declare-fun b!1465404 () Bool)

(declare-fun Unit!24859 () Unit!24509)

(assert (=> b!1465404 (= e!934754 Unit!24859)))

(declare-fun b!1465405 () Bool)

(declare-fun Unit!24860 () Unit!24509)

(assert (=> b!1465405 (= e!934752 Unit!24860)))

(declare-fun c!241649 () Bool)

(assert (=> b!1465405 (= c!241649 (< (getIndex!78 (rules!11706 thiss!10022) (rule!4450 (h!20589 lt!507007))) (getIndex!78 (rules!11706 thiss!10022) (rule!4450 lt!509620))))))

(declare-fun lt!509605 () Unit!24509)

(assert (=> b!1465405 (= lt!509605 e!934751)))

(declare-fun c!241652 () Bool)

(assert (=> b!1465405 (= c!241652 (< (getIndex!78 (rules!11706 thiss!10022) (rule!4450 lt!509620)) (getIndex!78 (rules!11706 thiss!10022) (rule!4450 (h!20589 lt!507007)))))))

(declare-fun lt!509592 () Unit!24509)

(assert (=> b!1465405 (= lt!509592 e!934755)))

(declare-fun c!241650 () Bool)

(assert (=> b!1465405 (= c!241650 (= (getIndex!78 (rules!11706 thiss!10022) (rule!4450 lt!509620)) (getIndex!78 (rules!11706 thiss!10022) (rule!4450 (h!20589 lt!507007)))))))

(declare-fun lt!509564 () Unit!24509)

(assert (=> b!1465405 (= lt!509564 e!934753)))

(assert (=> b!1465405 false))

(declare-fun b!1465406 () Bool)

(declare-fun Unit!24861 () Unit!24509)

(assert (=> b!1465406 (= e!934756 Unit!24861)))

(declare-fun lt!509597 () List!15252)

(assert (=> b!1465406 (= lt!509597 (list!6087 (charsOf!1538 lt!509620)))))

(declare-fun lt!509612 () List!15252)

(assert (=> b!1465406 (= lt!509612 (list!6087 (charsOf!1538 (h!20589 lt!507007))))))

(declare-fun lt!509589 () Unit!24509)

(assert (=> b!1465406 (= lt!509589 (lemmaMaxPrefixOutputsMaxPrefix!100 Lexer!2329 (rules!11706 thiss!10022) (rule!4450 lt!509620) lt!509597 lt!509574 lt!509612 (rule!4450 (h!20589 lt!507007))))))

(assert (=> b!1465406 (not (matchR!1831 (regex!2675 (rule!4450 (h!20589 lt!507007))) lt!509612))))

(declare-fun lt!509618 () Unit!24509)

(assert (=> b!1465406 (= lt!509618 lt!509589)))

(assert (=> b!1465406 false))

(declare-fun b!1465407 () Bool)

(assert (=> b!1465407 false))

(declare-fun lt!509624 () Unit!24509)

(declare-fun lt!509616 () Unit!24509)

(assert (=> b!1465407 (= lt!509624 lt!509616)))

(assert (=> b!1465407 (= (rule!4450 lt!509620) (rule!4450 (h!20589 lt!507007)))))

(assert (=> b!1465407 (= lt!509616 (lemmaSameIndexThenSameElement!26 (rules!11706 thiss!10022) (rule!4450 lt!509620) (rule!4450 (h!20589 lt!507007))))))

(declare-fun Unit!24862 () Unit!24509)

(assert (=> b!1465407 (= e!934753 Unit!24862)))

(assert (= (and d!430131 res!663365) b!1465398))

(assert (= (and b!1465398 res!663364) b!1465395))

(assert (= (and d!430131 c!241647) b!1465399))

(assert (= (and d!430131 (not c!241647)) b!1465404))

(assert (= (and d!430131 c!241648) b!1465406))

(assert (= (and d!430131 (not c!241648)) b!1465402))

(assert (= (and d!430131 c!241651) b!1465405))

(assert (= (and d!430131 (not c!241651)) b!1465396))

(assert (= (and b!1465405 c!241649) b!1465403))

(assert (= (and b!1465405 (not c!241649)) b!1465400))

(assert (= (and b!1465405 c!241652) b!1465397))

(assert (= (and b!1465405 (not c!241652)) b!1465394))

(assert (= (and b!1465405 c!241650) b!1465407))

(assert (= (and b!1465405 (not c!241650)) b!1465401))

(declare-fun m!1708725 () Bool)

(assert (=> b!1465398 m!1708725))

(declare-fun m!1708727 () Bool)

(assert (=> b!1465398 m!1708727))

(declare-fun m!1708729 () Bool)

(assert (=> b!1465398 m!1708729))

(declare-fun m!1708731 () Bool)

(assert (=> b!1465398 m!1708731))

(declare-fun m!1708733 () Bool)

(assert (=> b!1465398 m!1708733))

(assert (=> b!1465398 m!1708727))

(assert (=> b!1465398 m!1708725))

(assert (=> b!1465398 m!1708731))

(declare-fun m!1708735 () Bool)

(assert (=> b!1465399 m!1708735))

(assert (=> b!1465399 m!1702769))

(declare-fun m!1708737 () Bool)

(assert (=> b!1465399 m!1708737))

(assert (=> b!1465399 m!1702407))

(declare-fun m!1708739 () Bool)

(assert (=> b!1465399 m!1708739))

(assert (=> b!1465399 m!1702749))

(declare-fun m!1708741 () Bool)

(assert (=> b!1465399 m!1708741))

(declare-fun m!1708743 () Bool)

(assert (=> b!1465399 m!1708743))

(assert (=> b!1465399 m!1708735))

(declare-fun m!1708745 () Bool)

(assert (=> b!1465399 m!1708745))

(assert (=> b!1465399 m!1702769))

(assert (=> b!1465399 m!1702805))

(assert (=> b!1465399 m!1702749))

(declare-fun m!1708747 () Bool)

(assert (=> b!1465399 m!1708747))

(assert (=> b!1465399 m!1708725))

(assert (=> b!1465399 m!1708731))

(assert (=> b!1465399 m!1702407))

(assert (=> b!1465399 m!1708731))

(declare-fun m!1708749 () Bool)

(assert (=> b!1465399 m!1708749))

(assert (=> b!1465399 m!1702783))

(declare-fun m!1708751 () Bool)

(assert (=> b!1465399 m!1708751))

(assert (=> b!1465399 m!1708725))

(declare-fun m!1708753 () Bool)

(assert (=> b!1465399 m!1708753))

(assert (=> b!1465399 m!1708753))

(declare-fun m!1708755 () Bool)

(assert (=> b!1465399 m!1708755))

(declare-fun m!1708757 () Bool)

(assert (=> b!1465399 m!1708757))

(declare-fun m!1708759 () Bool)

(assert (=> b!1465399 m!1708759))

(declare-fun m!1708761 () Bool)

(assert (=> b!1465399 m!1708761))

(assert (=> b!1465399 m!1702783))

(assert (=> b!1465399 m!1702749))

(declare-fun m!1708763 () Bool)

(assert (=> b!1465403 m!1708763))

(declare-fun m!1708765 () Bool)

(assert (=> b!1465403 m!1708765))

(assert (=> b!1465403 m!1708725))

(assert (=> b!1465403 m!1708725))

(assert (=> b!1465403 m!1708731))

(assert (=> b!1465395 m!1708727))

(assert (=> b!1465395 m!1708727))

(assert (=> b!1465395 m!1708729))

(declare-fun m!1708767 () Bool)

(assert (=> b!1465407 m!1708767))

(declare-fun m!1708769 () Bool)

(assert (=> d!430131 m!1708769))

(assert (=> d!430131 m!1702769))

(declare-fun m!1708771 () Bool)

(assert (=> d!430131 m!1708771))

(assert (=> d!430131 m!1702407))

(declare-fun m!1708773 () Bool)

(assert (=> d!430131 m!1708773))

(declare-fun m!1708775 () Bool)

(assert (=> d!430131 m!1708775))

(declare-fun m!1708777 () Bool)

(assert (=> d!430131 m!1708777))

(declare-fun m!1708779 () Bool)

(assert (=> d!430131 m!1708779))

(declare-fun m!1708781 () Bool)

(assert (=> d!430131 m!1708781))

(assert (=> d!430131 m!1702769))

(declare-fun m!1708783 () Bool)

(assert (=> d!430131 m!1708783))

(assert (=> d!430131 m!1708727))

(declare-fun m!1708785 () Bool)

(assert (=> d!430131 m!1708785))

(declare-fun m!1708787 () Bool)

(assert (=> d!430131 m!1708787))

(assert (=> d!430131 m!1702407))

(assert (=> d!430131 m!1702749))

(declare-fun m!1708789 () Bool)

(assert (=> d!430131 m!1708789))

(assert (=> d!430131 m!1702783))

(assert (=> d!430131 m!1702783))

(declare-fun m!1708791 () Bool)

(assert (=> d!430131 m!1708791))

(declare-fun m!1708793 () Bool)

(assert (=> d!430131 m!1708793))

(assert (=> d!430131 m!1702749))

(assert (=> d!430131 m!1702769))

(assert (=> d!430131 m!1702749))

(declare-fun m!1708795 () Bool)

(assert (=> d!430131 m!1708795))

(assert (=> d!430131 m!1708769))

(declare-fun m!1708797 () Bool)

(assert (=> d!430131 m!1708797))

(assert (=> d!430131 m!1708725))

(declare-fun m!1708799 () Bool)

(assert (=> d!430131 m!1708799))

(declare-fun m!1708801 () Bool)

(assert (=> d!430131 m!1708801))

(assert (=> d!430131 m!1708725))

(declare-fun m!1708803 () Bool)

(assert (=> d!430131 m!1708803))

(assert (=> d!430131 m!1701757))

(assert (=> d!430131 m!1708799))

(assert (=> d!430131 m!1708725))

(declare-fun m!1708805 () Bool)

(assert (=> d!430131 m!1708805))

(declare-fun m!1708807 () Bool)

(assert (=> d!430131 m!1708807))

(assert (=> d!430131 m!1708805))

(assert (=> d!430131 m!1702749))

(declare-fun m!1708809 () Bool)

(assert (=> d!430131 m!1708809))

(declare-fun m!1708811 () Bool)

(assert (=> d!430131 m!1708811))

(assert (=> d!430131 m!1708783))

(declare-fun m!1708813 () Bool)

(assert (=> d!430131 m!1708813))

(assert (=> d!430131 m!1708627))

(assert (=> d!430131 m!1708645))

(assert (=> d!430131 m!1708725))

(declare-fun m!1708815 () Bool)

(assert (=> d!430131 m!1708815))

(assert (=> d!430131 m!1708731))

(declare-fun m!1708817 () Bool)

(assert (=> d!430131 m!1708817))

(assert (=> d!430131 m!1702749))

(assert (=> d!430131 m!1702769))

(assert (=> d!430131 m!1708627))

(assert (=> d!430131 m!1708725))

(assert (=> d!430131 m!1708731))

(assert (=> d!430131 m!1708727))

(declare-fun m!1708819 () Bool)

(assert (=> d!430131 m!1708819))

(assert (=> d!430131 m!1702749))

(assert (=> d!430131 m!1702769))

(assert (=> d!430131 m!1702771))

(declare-fun m!1708821 () Bool)

(assert (=> d!430131 m!1708821))

(declare-fun m!1708823 () Bool)

(assert (=> d!430131 m!1708823))

(assert (=> d!430131 m!1702783))

(assert (=> d!430131 m!1702749))

(declare-fun m!1708825 () Bool)

(assert (=> b!1465405 m!1708825))

(declare-fun m!1708827 () Bool)

(assert (=> b!1465405 m!1708827))

(declare-fun m!1708829 () Bool)

(assert (=> b!1465397 m!1708829))

(assert (=> b!1465397 m!1702783))

(assert (=> b!1465397 m!1702783))

(assert (=> b!1465397 m!1702749))

(assert (=> b!1465397 m!1702749))

(declare-fun m!1708831 () Bool)

(assert (=> b!1465397 m!1708831))

(assert (=> b!1465406 m!1708725))

(declare-fun m!1708833 () Bool)

(assert (=> b!1465406 m!1708833))

(assert (=> b!1465406 m!1702783))

(assert (=> b!1465406 m!1702749))

(assert (=> b!1465406 m!1702783))

(assert (=> b!1465406 m!1708725))

(assert (=> b!1465406 m!1708731))

(declare-fun m!1708835 () Bool)

(assert (=> b!1465406 m!1708835))

(assert (=> b!1463455 d!430131))

(declare-fun d!430135 () Bool)

(declare-fun lt!509634 () C!8156)

(assert (=> d!430135 (= lt!509634 (head!3024 (list!6087 lt!507580)))))

(assert (=> d!430135 (= lt!509634 (head!3026 (c!241180 lt!507580)))))

(assert (=> d!430135 (not (isEmpty!9544 lt!507580))))

(assert (=> d!430135 (= (head!3025 lt!507580) lt!509634)))

(declare-fun bs!344773 () Bool)

(assert (= bs!344773 d!430135))

(assert (=> bs!344773 m!1702769))

(assert (=> bs!344773 m!1702769))

(assert (=> bs!344773 m!1702805))

(declare-fun m!1708837 () Bool)

(assert (=> bs!344773 m!1708837))

(declare-fun m!1708839 () Bool)

(assert (=> bs!344773 m!1708839))

(assert (=> b!1463455 d!430135))

(declare-fun d!430137 () Bool)

(assert (=> d!430137 (isPrefix!1205 lt!507581 (++!4093 lt!507581 lt!507582))))

(declare-fun lt!509635 () Unit!24509)

(assert (=> d!430137 (= lt!509635 (choose!9011 lt!507581 lt!507582))))

(assert (=> d!430137 (= (lemmaConcatTwoListThenFirstIsPrefix!768 lt!507581 lt!507582) lt!509635)))

(declare-fun bs!344774 () Bool)

(assert (= bs!344774 d!430137))

(assert (=> bs!344774 m!1702785))

(assert (=> bs!344774 m!1702785))

(assert (=> bs!344774 m!1702809))

(declare-fun m!1708841 () Bool)

(assert (=> bs!344774 m!1708841))

(assert (=> b!1463455 d!430137))

(assert (=> b!1463455 d!429593))

(declare-fun d!430139 () Bool)

(declare-fun e!934757 () Bool)

(assert (=> d!430139 e!934757))

(declare-fun res!663366 () Bool)

(assert (=> d!430139 (=> (not res!663366) (not e!934757))))

(declare-fun lt!509636 () BalanceConc!10294)

(assert (=> d!430139 (= res!663366 (= (list!6083 lt!509636) (Cons!15188 (h!20589 lt!507007) Nil!15188)))))

(assert (=> d!430139 (= lt!509636 (singleton!539 (h!20589 lt!507007)))))

(assert (=> d!430139 (= (singletonSeq!1281 (h!20589 lt!507007)) lt!509636)))

(declare-fun b!1465408 () Bool)

(assert (=> b!1465408 (= e!934757 (isBalanced!1555 (c!241182 lt!509636)))))

(assert (= (and d!430139 res!663366) b!1465408))

(declare-fun m!1708843 () Bool)

(assert (=> d!430139 m!1708843))

(declare-fun m!1708845 () Bool)

(assert (=> d!430139 m!1708845))

(declare-fun m!1708847 () Bool)

(assert (=> b!1465408 m!1708847))

(assert (=> b!1463455 d!430139))

(declare-fun d!430141 () Bool)

(assert (=> d!430141 (= (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 lt!507007))))) (not (isEmpty!9547 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 lt!507007)))))))))

(declare-fun bs!344775 () Bool)

(assert (= bs!344775 d!430141))

(assert (=> bs!344775 m!1702751))

(declare-fun m!1708849 () Bool)

(assert (=> bs!344775 m!1708849))

(assert (=> b!1463455 d!430141))

(declare-fun d!430143 () Bool)

(assert (=> d!430143 (= (list!6087 lt!507593) (list!6088 (c!241180 lt!507593)))))

(declare-fun bs!344776 () Bool)

(assert (= bs!344776 d!430143))

(declare-fun m!1708851 () Bool)

(assert (=> bs!344776 m!1708851))

(assert (=> b!1463455 d!430143))

(declare-fun bm!98552 () Bool)

(declare-fun call!98557 () Option!2879)

(assert (=> bm!98552 (= call!98557 (maxPrefixOneRule!663 Lexer!2329 (h!20590 (rules!11706 thiss!10022)) (list!6087 lt!507593)))))

(declare-fun b!1465409 () Bool)

(declare-fun res!663368 () Bool)

(declare-fun e!934760 () Bool)

(assert (=> b!1465409 (=> (not res!663368) (not e!934760))))

(declare-fun lt!509641 () Option!2879)

(assert (=> b!1465409 (= res!663368 (= (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!509641)))) (originalCharacters!3537 (_1!8015 (get!4621 lt!509641)))))))

(declare-fun b!1465410 () Bool)

(declare-fun res!663371 () Bool)

(assert (=> b!1465410 (=> (not res!663371) (not e!934760))))

(assert (=> b!1465410 (= res!663371 (= (value!85885 (_1!8015 (get!4621 lt!509641))) (apply!3974 (transformation!2675 (rule!4450 (_1!8015 (get!4621 lt!509641)))) (seqFromList!1718 (originalCharacters!3537 (_1!8015 (get!4621 lt!509641)))))))))

(declare-fun b!1465411 () Bool)

(declare-fun res!663367 () Bool)

(assert (=> b!1465411 (=> (not res!663367) (not e!934760))))

(assert (=> b!1465411 (= res!663367 (= (++!4093 (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!509641)))) (_2!8015 (get!4621 lt!509641))) (list!6087 lt!507593)))))

(declare-fun b!1465412 () Bool)

(assert (=> b!1465412 (= e!934760 (contains!2912 (rules!11706 thiss!10022) (rule!4450 (_1!8015 (get!4621 lt!509641)))))))

(declare-fun d!430145 () Bool)

(declare-fun e!934759 () Bool)

(assert (=> d!430145 e!934759))

(declare-fun res!663372 () Bool)

(assert (=> d!430145 (=> res!663372 e!934759)))

(assert (=> d!430145 (= res!663372 (isEmpty!9547 lt!509641))))

(declare-fun e!934758 () Option!2879)

(assert (=> d!430145 (= lt!509641 e!934758)))

(declare-fun c!241653 () Bool)

(assert (=> d!430145 (= c!241653 (and ((_ is Cons!15189) (rules!11706 thiss!10022)) ((_ is Nil!15189) (t!134648 (rules!11706 thiss!10022)))))))

(declare-fun lt!509637 () Unit!24509)

(declare-fun lt!509640 () Unit!24509)

(assert (=> d!430145 (= lt!509637 lt!509640)))

(assert (=> d!430145 (isPrefix!1205 (list!6087 lt!507593) (list!6087 lt!507593))))

(assert (=> d!430145 (= lt!509640 (lemmaIsPrefixRefl!837 (list!6087 lt!507593) (list!6087 lt!507593)))))

(assert (=> d!430145 (rulesValidInductive!834 Lexer!2329 (rules!11706 thiss!10022))))

(assert (=> d!430145 (= (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 lt!507593)) lt!509641)))

(declare-fun b!1465413 () Bool)

(assert (=> b!1465413 (= e!934758 call!98557)))

(declare-fun b!1465414 () Bool)

(declare-fun res!663369 () Bool)

(assert (=> b!1465414 (=> (not res!663369) (not e!934760))))

(assert (=> b!1465414 (= res!663369 (matchR!1831 (regex!2675 (rule!4450 (_1!8015 (get!4621 lt!509641)))) (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!509641))))))))

(declare-fun b!1465415 () Bool)

(assert (=> b!1465415 (= e!934759 e!934760)))

(declare-fun res!663373 () Bool)

(assert (=> b!1465415 (=> (not res!663373) (not e!934760))))

(assert (=> b!1465415 (= res!663373 (isDefined!2328 lt!509641))))

(declare-fun b!1465416 () Bool)

(declare-fun lt!509639 () Option!2879)

(declare-fun lt!509638 () Option!2879)

(assert (=> b!1465416 (= e!934758 (ite (and ((_ is None!2878) lt!509639) ((_ is None!2878) lt!509638)) None!2878 (ite ((_ is None!2878) lt!509638) lt!509639 (ite ((_ is None!2878) lt!509639) lt!509638 (ite (>= (size!12421 (_1!8015 (v!22514 lt!509639))) (size!12421 (_1!8015 (v!22514 lt!509638)))) lt!509639 lt!509638)))))))

(assert (=> b!1465416 (= lt!509639 call!98557)))

(assert (=> b!1465416 (= lt!509638 (maxPrefix!1195 Lexer!2329 (t!134648 (rules!11706 thiss!10022)) (list!6087 lt!507593)))))

(declare-fun b!1465417 () Bool)

(declare-fun res!663370 () Bool)

(assert (=> b!1465417 (=> (not res!663370) (not e!934760))))

(assert (=> b!1465417 (= res!663370 (< (size!12429 (_2!8015 (get!4621 lt!509641))) (size!12429 (list!6087 lt!507593))))))

(assert (= (and d!430145 c!241653) b!1465413))

(assert (= (and d!430145 (not c!241653)) b!1465416))

(assert (= (or b!1465413 b!1465416) bm!98552))

(assert (= (and d!430145 (not res!663372)) b!1465415))

(assert (= (and b!1465415 res!663373) b!1465409))

(assert (= (and b!1465409 res!663368) b!1465417))

(assert (= (and b!1465417 res!663370) b!1465411))

(assert (= (and b!1465411 res!663367) b!1465410))

(assert (= (and b!1465410 res!663371) b!1465414))

(assert (= (and b!1465414 res!663369) b!1465412))

(declare-fun m!1708853 () Bool)

(assert (=> b!1465409 m!1708853))

(declare-fun m!1708855 () Bool)

(assert (=> b!1465409 m!1708855))

(assert (=> b!1465409 m!1708855))

(declare-fun m!1708857 () Bool)

(assert (=> b!1465409 m!1708857))

(assert (=> b!1465411 m!1708853))

(assert (=> b!1465411 m!1708855))

(assert (=> b!1465411 m!1708855))

(assert (=> b!1465411 m!1708857))

(assert (=> b!1465411 m!1708857))

(declare-fun m!1708859 () Bool)

(assert (=> b!1465411 m!1708859))

(assert (=> b!1465417 m!1708853))

(declare-fun m!1708861 () Bool)

(assert (=> b!1465417 m!1708861))

(assert (=> b!1465417 m!1702775))

(declare-fun m!1708863 () Bool)

(assert (=> b!1465417 m!1708863))

(assert (=> b!1465416 m!1702775))

(declare-fun m!1708865 () Bool)

(assert (=> b!1465416 m!1708865))

(assert (=> b!1465414 m!1708853))

(assert (=> b!1465414 m!1708855))

(assert (=> b!1465414 m!1708855))

(assert (=> b!1465414 m!1708857))

(assert (=> b!1465414 m!1708857))

(declare-fun m!1708867 () Bool)

(assert (=> b!1465414 m!1708867))

(assert (=> b!1465412 m!1708853))

(declare-fun m!1708869 () Bool)

(assert (=> b!1465412 m!1708869))

(assert (=> b!1465410 m!1708853))

(declare-fun m!1708871 () Bool)

(assert (=> b!1465410 m!1708871))

(assert (=> b!1465410 m!1708871))

(declare-fun m!1708873 () Bool)

(assert (=> b!1465410 m!1708873))

(declare-fun m!1708875 () Bool)

(assert (=> d!430145 m!1708875))

(assert (=> d!430145 m!1702775))

(assert (=> d!430145 m!1702775))

(declare-fun m!1708877 () Bool)

(assert (=> d!430145 m!1708877))

(assert (=> d!430145 m!1702775))

(assert (=> d!430145 m!1702775))

(declare-fun m!1708879 () Bool)

(assert (=> d!430145 m!1708879))

(assert (=> d!430145 m!1703541))

(declare-fun m!1708881 () Bool)

(assert (=> b!1465415 m!1708881))

(assert (=> bm!98552 m!1702775))

(declare-fun m!1708883 () Bool)

(assert (=> bm!98552 m!1708883))

(assert (=> b!1463455 d!430145))

(declare-fun d!430147 () Bool)

(assert (=> d!430147 (= (head!3024 (list!6087 lt!507580)) (h!20587 (list!6087 lt!507580)))))

(assert (=> b!1463455 d!430147))

(declare-fun d!430149 () Bool)

(assert (=> d!430149 (= (seqFromList!1716 (t!134647 lt!507007)) (fromListB!738 (t!134647 lt!507007)))))

(declare-fun bs!344777 () Bool)

(assert (= bs!344777 d!430149))

(declare-fun m!1708885 () Bool)

(assert (=> bs!344777 m!1708885))

(assert (=> b!1463455 d!430149))

(declare-fun d!430151 () Bool)

(assert (=> d!430151 (= (list!6083 (prepend!429 (seqFromList!1716 (t!134647 (t!134647 lt!507007))) (h!20589 (t!134647 lt!507007)))) (list!6086 (c!241182 (prepend!429 (seqFromList!1716 (t!134647 (t!134647 lt!507007))) (h!20589 (t!134647 lt!507007))))))))

(declare-fun bs!344778 () Bool)

(assert (= bs!344778 d!430151))

(declare-fun m!1708887 () Bool)

(assert (=> bs!344778 m!1708887))

(assert (=> b!1463455 d!430151))

(declare-fun d!430153 () Bool)

(declare-fun e!934762 () Bool)

(assert (=> d!430153 e!934762))

(declare-fun res!663374 () Bool)

(assert (=> d!430153 (=> (not res!663374) (not e!934762))))

(assert (=> d!430153 (= res!663374 (= (list!6083 (_1!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (seqFromList!1716 (t!134647 lt!507007)))))) (t!134647 lt!507007)))))

(declare-fun lt!509659 () Unit!24509)

(declare-fun e!934761 () Unit!24509)

(assert (=> d!430153 (= lt!509659 e!934761)))

(declare-fun c!241654 () Bool)

(assert (=> d!430153 (= c!241654 (or ((_ is Nil!15188) (t!134647 lt!507007)) ((_ is Nil!15188) (t!134647 (t!134647 lt!507007)))))))

(assert (=> d!430153 (not (isEmpty!9541 (rules!11706 thiss!10022)))))

(assert (=> d!430153 (= (theoremInvertabilityWhenTokenListSeparable!79 Lexer!2329 (rules!11706 thiss!10022) (t!134647 lt!507007)) lt!509659)))

(declare-fun b!1465418 () Bool)

(declare-fun Unit!24863 () Unit!24509)

(assert (=> b!1465418 (= e!934761 Unit!24863)))

(declare-fun b!1465419 () Bool)

(declare-fun Unit!24864 () Unit!24509)

(assert (=> b!1465419 (= e!934761 Unit!24864)))

(declare-fun lt!509658 () BalanceConc!10292)

(assert (=> b!1465419 (= lt!509658 (print!1107 Lexer!2329 (seqFromList!1716 (t!134647 lt!507007))))))

(declare-fun lt!509645 () BalanceConc!10292)

(assert (=> b!1465419 (= lt!509645 (print!1107 Lexer!2329 (seqFromList!1716 (t!134647 (t!134647 lt!507007)))))))

(declare-fun lt!509665 () tuple2!14256)

(assert (=> b!1465419 (= lt!509665 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) lt!509645))))

(declare-fun lt!509646 () List!15252)

(assert (=> b!1465419 (= lt!509646 (list!6087 (charsOf!1538 (h!20589 (t!134647 lt!507007)))))))

(declare-fun lt!509647 () List!15252)

(assert (=> b!1465419 (= lt!509647 (list!6087 lt!509645))))

(declare-fun lt!509652 () Unit!24509)

(assert (=> b!1465419 (= lt!509652 (lemmaConcatTwoListThenFirstIsPrefix!768 lt!509646 lt!509647))))

(assert (=> b!1465419 (isPrefix!1205 lt!509646 (++!4093 lt!509646 lt!509647))))

(declare-fun lt!509660 () Unit!24509)

(assert (=> b!1465419 (= lt!509660 lt!509652)))

(declare-fun lt!509664 () Unit!24509)

(assert (=> b!1465419 (= lt!509664 (theoremInvertabilityWhenTokenListSeparable!79 Lexer!2329 (rules!11706 thiss!10022) (t!134647 (t!134647 lt!507007))))))

(declare-fun lt!509649 () Unit!24509)

(assert (=> b!1465419 (= lt!509649 (seqFromListBHdTlConstructive!97 (h!20589 (t!134647 (t!134647 lt!507007))) (t!134647 (t!134647 (t!134647 lt!507007))) (_1!8014 lt!509665)))))

(assert (=> b!1465419 (= (list!6083 (_1!8014 lt!509665)) (list!6083 (prepend!429 (seqFromList!1716 (t!134647 (t!134647 (t!134647 lt!507007)))) (h!20589 (t!134647 (t!134647 lt!507007))))))))

(declare-fun lt!509650 () Unit!24509)

(assert (=> b!1465419 (= lt!509650 lt!509649)))

(declare-fun lt!509662 () Option!2879)

(assert (=> b!1465419 (= lt!509662 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 lt!509658)))))

(assert (=> b!1465419 (= (print!1107 Lexer!2329 (singletonSeq!1281 (h!20589 (t!134647 lt!507007)))) (printTailRec!699 Lexer!2329 (singletonSeq!1281 (h!20589 (t!134647 lt!507007))) 0 (BalanceConc!10293 Empty!5176)))))

(declare-fun lt!509661 () Unit!24509)

(declare-fun Unit!24865 () Unit!24509)

(assert (=> b!1465419 (= lt!509661 Unit!24865)))

(declare-fun lt!509648 () Unit!24509)

(assert (=> b!1465419 (= lt!509648 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!241 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (t!134647 lt!507007)))) (list!6087 lt!509645)))))

(assert (=> b!1465419 (= (list!6087 (charsOf!1538 (h!20589 (t!134647 lt!507007)))) (originalCharacters!3537 (h!20589 (t!134647 lt!507007))))))

(declare-fun lt!509656 () Unit!24509)

(declare-fun Unit!24867 () Unit!24509)

(assert (=> b!1465419 (= lt!509656 Unit!24867)))

(assert (=> b!1465419 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (t!134647 lt!507007)))) 0))) (Cons!15186 (head!3024 (originalCharacters!3537 (h!20589 (t!134647 (t!134647 lt!507007))))) Nil!15186))))

(declare-fun lt!509643 () Unit!24509)

(declare-fun Unit!24868 () Unit!24509)

(assert (=> b!1465419 (= lt!509643 Unit!24868)))

(assert (=> b!1465419 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (t!134647 lt!507007)))) 0))) (Cons!15186 (head!3024 (list!6087 lt!509645)) Nil!15186))))

(declare-fun lt!509654 () Unit!24509)

(declare-fun Unit!24869 () Unit!24509)

(assert (=> b!1465419 (= lt!509654 Unit!24869)))

(assert (=> b!1465419 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 (t!134647 lt!507007)))) 0))) (Cons!15186 (head!3025 lt!509645) Nil!15186))))

(declare-fun lt!509642 () Unit!24509)

(declare-fun Unit!24870 () Unit!24509)

(assert (=> b!1465419 (= lt!509642 Unit!24870)))

(assert (=> b!1465419 (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (originalCharacters!3537 (h!20589 (t!134647 lt!507007)))))))

(declare-fun lt!509644 () Unit!24509)

(declare-fun Unit!24872 () Unit!24509)

(assert (=> b!1465419 (= lt!509644 Unit!24872)))

(assert (=> b!1465419 (isDefined!2328 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (t!134647 lt!507007))))))))

(declare-fun lt!509655 () Unit!24509)

(declare-fun Unit!24873 () Unit!24509)

(assert (=> b!1465419 (= lt!509655 Unit!24873)))

(declare-fun lt!509657 () Unit!24509)

(declare-fun Unit!24874 () Unit!24509)

(assert (=> b!1465419 (= lt!509657 Unit!24874)))

(assert (=> b!1465419 (= (_1!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (t!134647 lt!507007))))))) (h!20589 (t!134647 lt!507007)))))

(declare-fun lt!509663 () Unit!24509)

(declare-fun Unit!24875 () Unit!24509)

(assert (=> b!1465419 (= lt!509663 Unit!24875)))

(assert (=> b!1465419 (isEmpty!9545 (_2!8015 (get!4621 (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 (t!134647 lt!507007))))))))))

(declare-fun lt!509651 () Unit!24509)

(declare-fun Unit!24876 () Unit!24509)

(assert (=> b!1465419 (= lt!509651 Unit!24876)))

(assert (=> b!1465419 (matchR!1831 (regex!2675 (rule!4450 (h!20589 (t!134647 lt!507007)))) (list!6087 (charsOf!1538 (h!20589 (t!134647 lt!507007)))))))

(declare-fun lt!509666 () Unit!24509)

(declare-fun Unit!24877 () Unit!24509)

(assert (=> b!1465419 (= lt!509666 Unit!24877)))

(assert (=> b!1465419 (= (rule!4450 (h!20589 (t!134647 lt!507007))) (rule!4450 (h!20589 (t!134647 lt!507007))))))

(declare-fun lt!509653 () Unit!24509)

(declare-fun Unit!24878 () Unit!24509)

(assert (=> b!1465419 (= lt!509653 Unit!24878)))

(declare-fun lt!509667 () Unit!24509)

(assert (=> b!1465419 (= lt!509667 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!39 Lexer!2329 (rules!11706 thiss!10022) (h!20589 (t!134647 lt!507007)) (rule!4450 (h!20589 (t!134647 lt!507007))) (list!6087 lt!509645)))))

(declare-fun b!1465420 () Bool)

(assert (=> b!1465420 (= e!934762 (isEmpty!9544 (_2!8014 (lex!1076 Lexer!2329 (rules!11706 thiss!10022) (print!1107 Lexer!2329 (seqFromList!1716 (t!134647 lt!507007)))))))))

(assert (= (and d!430153 c!241654) b!1465418))

(assert (= (and d!430153 (not c!241654)) b!1465419))

(assert (= (and d!430153 res!663374) b!1465420))

(assert (=> d!430153 m!1702777))

(assert (=> d!430153 m!1701757))

(declare-fun m!1708889 () Bool)

(assert (=> d!430153 m!1708889))

(assert (=> d!430153 m!1702779))

(declare-fun m!1708891 () Bool)

(assert (=> d!430153 m!1708891))

(assert (=> d!430153 m!1702777))

(assert (=> d!430153 m!1702779))

(declare-fun m!1708893 () Bool)

(assert (=> b!1465419 m!1708893))

(declare-fun m!1708895 () Bool)

(assert (=> b!1465419 m!1708895))

(declare-fun m!1708897 () Bool)

(assert (=> b!1465419 m!1708897))

(declare-fun m!1708899 () Bool)

(assert (=> b!1465419 m!1708899))

(assert (=> b!1465419 m!1705923))

(declare-fun m!1708901 () Bool)

(assert (=> b!1465419 m!1708901))

(declare-fun m!1708903 () Bool)

(assert (=> b!1465419 m!1708903))

(declare-fun m!1708905 () Bool)

(assert (=> b!1465419 m!1708905))

(declare-fun m!1708907 () Bool)

(assert (=> b!1465419 m!1708907))

(declare-fun m!1708909 () Bool)

(assert (=> b!1465419 m!1708909))

(assert (=> b!1465419 m!1708897))

(declare-fun m!1708911 () Bool)

(assert (=> b!1465419 m!1708911))

(declare-fun m!1708913 () Bool)

(assert (=> b!1465419 m!1708913))

(declare-fun m!1708915 () Bool)

(assert (=> b!1465419 m!1708915))

(assert (=> b!1465419 m!1708901))

(declare-fun m!1708917 () Bool)

(assert (=> b!1465419 m!1708917))

(declare-fun m!1708919 () Bool)

(assert (=> b!1465419 m!1708919))

(assert (=> b!1465419 m!1705923))

(assert (=> b!1465419 m!1708919))

(declare-fun m!1708921 () Bool)

(assert (=> b!1465419 m!1708921))

(assert (=> b!1465419 m!1702777))

(assert (=> b!1465419 m!1708915))

(declare-fun m!1708923 () Bool)

(assert (=> b!1465419 m!1708923))

(declare-fun m!1708925 () Bool)

(assert (=> b!1465419 m!1708925))

(assert (=> b!1465419 m!1702763))

(declare-fun m!1708927 () Bool)

(assert (=> b!1465419 m!1708927))

(declare-fun m!1708929 () Bool)

(assert (=> b!1465419 m!1708929))

(assert (=> b!1465419 m!1702755))

(declare-fun m!1708931 () Bool)

(assert (=> b!1465419 m!1708931))

(declare-fun m!1708933 () Bool)

(assert (=> b!1465419 m!1708933))

(declare-fun m!1708935 () Bool)

(assert (=> b!1465419 m!1708935))

(declare-fun m!1708937 () Bool)

(assert (=> b!1465419 m!1708937))

(declare-fun m!1708939 () Bool)

(assert (=> b!1465419 m!1708939))

(declare-fun m!1708941 () Bool)

(assert (=> b!1465419 m!1708941))

(assert (=> b!1465419 m!1708925))

(declare-fun m!1708943 () Bool)

(assert (=> b!1465419 m!1708943))

(assert (=> b!1465419 m!1708919))

(declare-fun m!1708945 () Bool)

(assert (=> b!1465419 m!1708945))

(declare-fun m!1708947 () Bool)

(assert (=> b!1465419 m!1708947))

(assert (=> b!1465419 m!1702777))

(assert (=> b!1465419 m!1702779))

(assert (=> b!1465419 m!1708905))

(assert (=> b!1465419 m!1708907))

(assert (=> b!1465419 m!1708901))

(declare-fun m!1708949 () Bool)

(assert (=> b!1465419 m!1708949))

(assert (=> b!1465419 m!1708919))

(declare-fun m!1708951 () Bool)

(assert (=> b!1465419 m!1708951))

(assert (=> b!1465419 m!1702763))

(assert (=> b!1465419 m!1705923))

(declare-fun m!1708953 () Bool)

(assert (=> b!1465419 m!1708953))

(assert (=> b!1465419 m!1708893))

(assert (=> b!1465419 m!1708931))

(declare-fun m!1708955 () Bool)

(assert (=> b!1465419 m!1708955))

(assert (=> b!1465419 m!1708897))

(assert (=> b!1465419 m!1708913))

(assert (=> b!1465419 m!1702755))

(assert (=> b!1465419 m!1705923))

(assert (=> b!1465419 m!1708909))

(declare-fun m!1708957 () Bool)

(assert (=> b!1465419 m!1708957))

(assert (=> b!1465420 m!1702777))

(assert (=> b!1465420 m!1702777))

(assert (=> b!1465420 m!1702779))

(assert (=> b!1465420 m!1702779))

(assert (=> b!1465420 m!1708891))

(declare-fun m!1708959 () Bool)

(assert (=> b!1465420 m!1708959))

(assert (=> b!1463455 d!430153))

(declare-fun d!430155 () Bool)

(assert (=> d!430155 (= (list!6087 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 lt!507007))) 0))) (list!6088 (c!241180 (singletonSeq!1282 (apply!3969 (charsOf!1538 (h!20589 (t!134647 lt!507007))) 0)))))))

(declare-fun bs!344779 () Bool)

(assert (= bs!344779 d!430155))

(declare-fun m!1708961 () Bool)

(assert (=> bs!344779 m!1708961))

(assert (=> b!1463455 d!430155))

(declare-fun b!1465421 () Bool)

(declare-fun res!663376 () Bool)

(declare-fun e!934764 () Bool)

(assert (=> b!1465421 (=> res!663376 e!934764)))

(declare-fun e!934767 () Bool)

(assert (=> b!1465421 (= res!663376 e!934767)))

(declare-fun res!663375 () Bool)

(assert (=> b!1465421 (=> (not res!663375) (not e!934767))))

(declare-fun lt!509668 () Bool)

(assert (=> b!1465421 (= res!663375 lt!509668)))

(declare-fun b!1465422 () Bool)

(declare-fun e!934765 () Bool)

(assert (=> b!1465422 (= e!934765 (not (= (head!3024 (list!6087 (charsOf!1538 (h!20589 lt!507007)))) (c!241181 (regex!2675 (rule!4450 (h!20589 lt!507007)))))))))

(declare-fun d!430157 () Bool)

(declare-fun e!934769 () Bool)

(assert (=> d!430157 e!934769))

(declare-fun c!241655 () Bool)

(assert (=> d!430157 (= c!241655 ((_ is EmptyExpr!3989) (regex!2675 (rule!4450 (h!20589 lt!507007)))))))

(declare-fun e!934768 () Bool)

(assert (=> d!430157 (= lt!509668 e!934768)))

(declare-fun c!241657 () Bool)

(assert (=> d!430157 (= c!241657 (isEmpty!9545 (list!6087 (charsOf!1538 (h!20589 lt!507007)))))))

(assert (=> d!430157 (validRegex!1685 (regex!2675 (rule!4450 (h!20589 lt!507007))))))

(assert (=> d!430157 (= (matchR!1831 (regex!2675 (rule!4450 (h!20589 lt!507007))) (list!6087 (charsOf!1538 (h!20589 lt!507007)))) lt!509668)))

(declare-fun b!1465423 () Bool)

(declare-fun call!98558 () Bool)

(assert (=> b!1465423 (= e!934769 (= lt!509668 call!98558))))

(declare-fun b!1465424 () Bool)

(declare-fun res!663382 () Bool)

(assert (=> b!1465424 (=> (not res!663382) (not e!934767))))

(assert (=> b!1465424 (= res!663382 (not call!98558))))

(declare-fun b!1465425 () Bool)

(declare-fun e!934763 () Bool)

(assert (=> b!1465425 (= e!934763 (not lt!509668))))

(declare-fun b!1465426 () Bool)

(assert (=> b!1465426 (= e!934767 (= (head!3024 (list!6087 (charsOf!1538 (h!20589 lt!507007)))) (c!241181 (regex!2675 (rule!4450 (h!20589 lt!507007))))))))

(declare-fun b!1465427 () Bool)

(assert (=> b!1465427 (= e!934769 e!934763)))

(declare-fun c!241656 () Bool)

(assert (=> b!1465427 (= c!241656 ((_ is EmptyLang!3989) (regex!2675 (rule!4450 (h!20589 lt!507007)))))))

(declare-fun b!1465428 () Bool)

(declare-fun res!663380 () Bool)

(assert (=> b!1465428 (=> res!663380 e!934765)))

(assert (=> b!1465428 (= res!663380 (not (isEmpty!9545 (tail!2179 (list!6087 (charsOf!1538 (h!20589 lt!507007)))))))))

(declare-fun bm!98553 () Bool)

(assert (=> bm!98553 (= call!98558 (isEmpty!9545 (list!6087 (charsOf!1538 (h!20589 lt!507007)))))))

(declare-fun b!1465429 () Bool)

(declare-fun e!934766 () Bool)

(assert (=> b!1465429 (= e!934764 e!934766)))

(declare-fun res!663379 () Bool)

(assert (=> b!1465429 (=> (not res!663379) (not e!934766))))

(assert (=> b!1465429 (= res!663379 (not lt!509668))))

(declare-fun b!1465430 () Bool)

(assert (=> b!1465430 (= e!934768 (matchR!1831 (derivativeStep!1007 (regex!2675 (rule!4450 (h!20589 lt!507007))) (head!3024 (list!6087 (charsOf!1538 (h!20589 lt!507007))))) (tail!2179 (list!6087 (charsOf!1538 (h!20589 lt!507007))))))))

(declare-fun b!1465431 () Bool)

(assert (=> b!1465431 (= e!934768 (nullable!1251 (regex!2675 (rule!4450 (h!20589 lt!507007)))))))

(declare-fun b!1465432 () Bool)

(declare-fun res!663377 () Bool)

(assert (=> b!1465432 (=> res!663377 e!934764)))

(assert (=> b!1465432 (= res!663377 (not ((_ is ElementMatch!3989) (regex!2675 (rule!4450 (h!20589 lt!507007))))))))

(assert (=> b!1465432 (= e!934763 e!934764)))

(declare-fun b!1465433 () Bool)

(assert (=> b!1465433 (= e!934766 e!934765)))

(declare-fun res!663381 () Bool)

(assert (=> b!1465433 (=> res!663381 e!934765)))

(assert (=> b!1465433 (= res!663381 call!98558)))

(declare-fun b!1465434 () Bool)

(declare-fun res!663378 () Bool)

(assert (=> b!1465434 (=> (not res!663378) (not e!934767))))

(assert (=> b!1465434 (= res!663378 (isEmpty!9545 (tail!2179 (list!6087 (charsOf!1538 (h!20589 lt!507007))))))))

(assert (= (and d!430157 c!241657) b!1465431))

(assert (= (and d!430157 (not c!241657)) b!1465430))

(assert (= (and d!430157 c!241655) b!1465423))

(assert (= (and d!430157 (not c!241655)) b!1465427))

(assert (= (and b!1465427 c!241656) b!1465425))

(assert (= (and b!1465427 (not c!241656)) b!1465432))

(assert (= (and b!1465432 (not res!663377)) b!1465421))

(assert (= (and b!1465421 res!663375) b!1465424))

(assert (= (and b!1465424 res!663382) b!1465434))

(assert (= (and b!1465434 res!663378) b!1465426))

(assert (= (and b!1465421 (not res!663376)) b!1465429))

(assert (= (and b!1465429 res!663379) b!1465433))

(assert (= (and b!1465433 (not res!663381)) b!1465428))

(assert (= (and b!1465428 (not res!663380)) b!1465422))

(assert (= (or b!1465423 b!1465424 b!1465433) bm!98553))

(assert (=> d!430157 m!1702749))

(declare-fun m!1708963 () Bool)

(assert (=> d!430157 m!1708963))

(declare-fun m!1708965 () Bool)

(assert (=> d!430157 m!1708965))

(assert (=> b!1465428 m!1702749))

(declare-fun m!1708967 () Bool)

(assert (=> b!1465428 m!1708967))

(assert (=> b!1465428 m!1708967))

(declare-fun m!1708969 () Bool)

(assert (=> b!1465428 m!1708969))

(assert (=> b!1465426 m!1702749))

(declare-fun m!1708971 () Bool)

(assert (=> b!1465426 m!1708971))

(declare-fun m!1708973 () Bool)

(assert (=> b!1465431 m!1708973))

(assert (=> b!1465434 m!1702749))

(assert (=> b!1465434 m!1708967))

(assert (=> b!1465434 m!1708967))

(assert (=> b!1465434 m!1708969))

(assert (=> bm!98553 m!1702749))

(assert (=> bm!98553 m!1708963))

(assert (=> b!1465430 m!1702749))

(assert (=> b!1465430 m!1708971))

(assert (=> b!1465430 m!1708971))

(declare-fun m!1708975 () Bool)

(assert (=> b!1465430 m!1708975))

(assert (=> b!1465430 m!1702749))

(assert (=> b!1465430 m!1708967))

(assert (=> b!1465430 m!1708975))

(assert (=> b!1465430 m!1708967))

(declare-fun m!1708977 () Bool)

(assert (=> b!1465430 m!1708977))

(assert (=> b!1465422 m!1702749))

(assert (=> b!1465422 m!1708971))

(assert (=> b!1463455 d!430157))

(assert (=> b!1463455 d!429595))

(assert (=> b!1463455 d!429547))

(declare-fun e!934772 () Bool)

(declare-fun lt!509669 () tuple2!14256)

(declare-fun b!1465435 () Bool)

(assert (=> b!1465435 (= e!934772 (= (list!6087 (_2!8014 lt!509669)) (_2!8016 (lexList!717 Lexer!2329 (rules!11706 thiss!10022) (list!6087 lt!507580)))))))

(declare-fun b!1465436 () Bool)

(declare-fun e!934770 () Bool)

(assert (=> b!1465436 (= e!934770 (not (isEmpty!9535 (_1!8014 lt!509669))))))

(declare-fun b!1465437 () Bool)

(declare-fun e!934771 () Bool)

(assert (=> b!1465437 (= e!934771 (= (_2!8014 lt!509669) lt!507580))))

(declare-fun b!1465438 () Bool)

(declare-fun res!663383 () Bool)

(assert (=> b!1465438 (=> (not res!663383) (not e!934772))))

(assert (=> b!1465438 (= res!663383 (= (list!6083 (_1!8014 lt!509669)) (_1!8016 (lexList!717 Lexer!2329 (rules!11706 thiss!10022) (list!6087 lt!507580)))))))

(declare-fun d!430159 () Bool)

(assert (=> d!430159 e!934772))

(declare-fun res!663385 () Bool)

(assert (=> d!430159 (=> (not res!663385) (not e!934772))))

(assert (=> d!430159 (= res!663385 e!934771)))

(declare-fun c!241658 () Bool)

(assert (=> d!430159 (= c!241658 (> (size!12423 (_1!8014 lt!509669)) 0))))

(assert (=> d!430159 (= lt!509669 (lexTailRecV2!472 Lexer!2329 (rules!11706 thiss!10022) lt!507580 (BalanceConc!10293 Empty!5176) lt!507580 (BalanceConc!10295 Empty!5177)))))

(assert (=> d!430159 (= (lex!1076 Lexer!2329 (rules!11706 thiss!10022) lt!507580) lt!509669)))

(declare-fun b!1465439 () Bool)

(assert (=> b!1465439 (= e!934771 e!934770)))

(declare-fun res!663384 () Bool)

(assert (=> b!1465439 (= res!663384 (< (size!12425 (_2!8014 lt!509669)) (size!12425 lt!507580)))))

(assert (=> b!1465439 (=> (not res!663384) (not e!934770))))

(assert (= (and d!430159 c!241658) b!1465439))

(assert (= (and d!430159 (not c!241658)) b!1465437))

(assert (= (and b!1465439 res!663384) b!1465436))

(assert (= (and d!430159 res!663385) b!1465438))

(assert (= (and b!1465438 res!663383) b!1465435))

(declare-fun m!1708979 () Bool)

(assert (=> b!1465439 m!1708979))

(declare-fun m!1708981 () Bool)

(assert (=> b!1465439 m!1708981))

(declare-fun m!1708983 () Bool)

(assert (=> b!1465438 m!1708983))

(assert (=> b!1465438 m!1702769))

(assert (=> b!1465438 m!1702769))

(declare-fun m!1708985 () Bool)

(assert (=> b!1465438 m!1708985))

(declare-fun m!1708987 () Bool)

(assert (=> b!1465436 m!1708987))

(declare-fun m!1708989 () Bool)

(assert (=> b!1465435 m!1708989))

(assert (=> b!1465435 m!1702769))

(assert (=> b!1465435 m!1702769))

(assert (=> b!1465435 m!1708985))

(declare-fun m!1708991 () Bool)

(assert (=> d!430159 m!1708991))

(declare-fun m!1708993 () Bool)

(assert (=> d!430159 m!1708993))

(assert (=> b!1463455 d!430159))

(declare-fun bm!98554 () Bool)

(declare-fun call!98559 () Option!2879)

(assert (=> bm!98554 (= call!98559 (maxPrefixOneRule!663 Lexer!2329 (h!20590 (rules!11706 thiss!10022)) (list!6087 (charsOf!1538 (h!20589 lt!507007)))))))

(declare-fun b!1465440 () Bool)

(declare-fun res!663387 () Bool)

(declare-fun e!934775 () Bool)

(assert (=> b!1465440 (=> (not res!663387) (not e!934775))))

(declare-fun lt!509674 () Option!2879)

(assert (=> b!1465440 (= res!663387 (= (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!509674)))) (originalCharacters!3537 (_1!8015 (get!4621 lt!509674)))))))

(declare-fun b!1465441 () Bool)

(declare-fun res!663390 () Bool)

(assert (=> b!1465441 (=> (not res!663390) (not e!934775))))

(assert (=> b!1465441 (= res!663390 (= (value!85885 (_1!8015 (get!4621 lt!509674))) (apply!3974 (transformation!2675 (rule!4450 (_1!8015 (get!4621 lt!509674)))) (seqFromList!1718 (originalCharacters!3537 (_1!8015 (get!4621 lt!509674)))))))))

(declare-fun b!1465442 () Bool)

(declare-fun res!663386 () Bool)

(assert (=> b!1465442 (=> (not res!663386) (not e!934775))))

(assert (=> b!1465442 (= res!663386 (= (++!4093 (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!509674)))) (_2!8015 (get!4621 lt!509674))) (list!6087 (charsOf!1538 (h!20589 lt!507007)))))))

(declare-fun b!1465443 () Bool)

(assert (=> b!1465443 (= e!934775 (contains!2912 (rules!11706 thiss!10022) (rule!4450 (_1!8015 (get!4621 lt!509674)))))))

(declare-fun d!430161 () Bool)

(declare-fun e!934774 () Bool)

(assert (=> d!430161 e!934774))

(declare-fun res!663391 () Bool)

(assert (=> d!430161 (=> res!663391 e!934774)))

(assert (=> d!430161 (= res!663391 (isEmpty!9547 lt!509674))))

(declare-fun e!934773 () Option!2879)

(assert (=> d!430161 (= lt!509674 e!934773)))

(declare-fun c!241659 () Bool)

(assert (=> d!430161 (= c!241659 (and ((_ is Cons!15189) (rules!11706 thiss!10022)) ((_ is Nil!15189) (t!134648 (rules!11706 thiss!10022)))))))

(declare-fun lt!509670 () Unit!24509)

(declare-fun lt!509673 () Unit!24509)

(assert (=> d!430161 (= lt!509670 lt!509673)))

(assert (=> d!430161 (isPrefix!1205 (list!6087 (charsOf!1538 (h!20589 lt!507007))) (list!6087 (charsOf!1538 (h!20589 lt!507007))))))

(assert (=> d!430161 (= lt!509673 (lemmaIsPrefixRefl!837 (list!6087 (charsOf!1538 (h!20589 lt!507007))) (list!6087 (charsOf!1538 (h!20589 lt!507007)))))))

(assert (=> d!430161 (rulesValidInductive!834 Lexer!2329 (rules!11706 thiss!10022))))

(assert (=> d!430161 (= (maxPrefix!1195 Lexer!2329 (rules!11706 thiss!10022) (list!6087 (charsOf!1538 (h!20589 lt!507007)))) lt!509674)))

(declare-fun b!1465444 () Bool)

(assert (=> b!1465444 (= e!934773 call!98559)))

(declare-fun b!1465445 () Bool)

(declare-fun res!663388 () Bool)

(assert (=> b!1465445 (=> (not res!663388) (not e!934775))))

(assert (=> b!1465445 (= res!663388 (matchR!1831 (regex!2675 (rule!4450 (_1!8015 (get!4621 lt!509674)))) (list!6087 (charsOf!1538 (_1!8015 (get!4621 lt!509674))))))))

(declare-fun b!1465446 () Bool)

(assert (=> b!1465446 (= e!934774 e!934775)))

(declare-fun res!663392 () Bool)

(assert (=> b!1465446 (=> (not res!663392) (not e!934775))))

(assert (=> b!1465446 (= res!663392 (isDefined!2328 lt!509674))))

(declare-fun b!1465447 () Bool)

(declare-fun lt!509672 () Option!2879)

(declare-fun lt!509671 () Option!2879)

(assert (=> b!1465447 (= e!934773 (ite (and ((_ is None!2878) lt!509672) ((_ is None!2878) lt!509671)) None!2878 (ite ((_ is None!2878) lt!509671) lt!509672 (ite ((_ is None!2878) lt!509672) lt!509671 (ite (>= (size!12421 (_1!8015 (v!22514 lt!509672))) (size!12421 (_1!8015 (v!22514 lt!509671)))) lt!509672 lt!509671)))))))

(assert (=> b!1465447 (= lt!509672 call!98559)))

(assert (=> b!1465447 (= lt!509671 (maxPrefix!1195 Lexer!2329 (t!134648 (rules!11706 thiss!10022)) (list!6087 (charsOf!1538 (h!20589 lt!507007)))))))

(declare-fun b!1465448 () Bool)

(declare-fun res!663389 () Bool)

(assert (=> b!1465448 (=> (not res!663389) (not e!934775))))

(assert (=> b!1465448 (= res!663389 (< (size!12429 (_2!8015 (get!4621 lt!509674))) (size!12429 (list!6087 (charsOf!1538 (h!20589 lt!507007))))))))

(assert (= (and d!430161 c!241659) b!1465444))

(assert (= (and d!430161 (not c!241659)) b!1465447))

(assert (= (or b!1465444 b!1465447) bm!98554))

(assert (= (and d!430161 (not res!663391)) b!1465446))

(assert (= (and b!1465446 res!663392) b!1465440))

(assert (= (and b!1465440 res!663387) b!1465448))

(assert (= (and b!1465448 res!663389) b!1465442))

(assert (= (and b!1465442 res!663386) b!1465441))

(assert (= (and b!1465441 res!663390) b!1465445))

(assert (= (and b!1465445 res!663388) b!1465443))

(declare-fun m!1708995 () Bool)

(assert (=> b!1465440 m!1708995))

(declare-fun m!1708997 () Bool)

(assert (=> b!1465440 m!1708997))

(assert (=> b!1465440 m!1708997))

(declare-fun m!1708999 () Bool)

(assert (=> b!1465440 m!1708999))

(assert (=> b!1465442 m!1708995))

(assert (=> b!1465442 m!1708997))

(assert (=> b!1465442 m!1708997))

(assert (=> b!1465442 m!1708999))

(assert (=> b!1465442 m!1708999))

(declare-fun m!1709001 () Bool)

(assert (=> b!1465442 m!1709001))

(assert (=> b!1465448 m!1708995))

(declare-fun m!1709003 () Bool)

(assert (=> b!1465448 m!1709003))

(assert (=> b!1465448 m!1702749))

(assert (=> b!1465448 m!1705909))

(assert (=> b!1465447 m!1702749))

(declare-fun m!1709005 () Bool)

(assert (=> b!1465447 m!1709005))

(assert (=> b!1465445 m!1708995))

(assert (=> b!1465445 m!1708997))

(assert (=> b!1465445 m!1708997))

(assert (=> b!1465445 m!1708999))

(assert (=> b!1465445 m!1708999))

(declare-fun m!1709007 () Bool)

(assert (=> b!1465445 m!1709007))

(assert (=> b!1465443 m!1708995))

(declare-fun m!1709009 () Bool)

(assert (=> b!1465443 m!1709009))

(assert (=> b!1465441 m!1708995))

(declare-fun m!1709011 () Bool)

(assert (=> b!1465441 m!1709011))

(assert (=> b!1465441 m!1709011))

(declare-fun m!1709013 () Bool)

(assert (=> b!1465441 m!1709013))

(declare-fun m!1709015 () Bool)

(assert (=> d!430161 m!1709015))

(assert (=> d!430161 m!1702749))

(assert (=> d!430161 m!1702749))

(declare-fun m!1709017 () Bool)

(assert (=> d!430161 m!1709017))

(assert (=> d!430161 m!1702749))

(assert (=> d!430161 m!1702749))

(declare-fun m!1709019 () Bool)

(assert (=> d!430161 m!1709019))

(assert (=> d!430161 m!1703541))

(declare-fun m!1709021 () Bool)

(assert (=> b!1465446 m!1709021))

(assert (=> bm!98554 m!1702749))

(declare-fun m!1709023 () Bool)

(assert (=> bm!98554 m!1709023))

(assert (=> b!1463455 d!430161))

(declare-fun d!430163 () Bool)

(declare-fun lt!509675 () BalanceConc!10292)

(assert (=> d!430163 (= (list!6087 lt!509675) (printList!727 Lexer!2329 (list!6083 (singletonSeq!1281 (h!20589 lt!507007)))))))

(assert (=> d!430163 (= lt!509675 (printTailRec!699 Lexer!2329 (singletonSeq!1281 (h!20589 lt!507007)) 0 (BalanceConc!10293 Empty!5176)))))

(assert (=> d!430163 (= (print!1107 Lexer!2329 (singletonSeq!1281 (h!20589 lt!507007))) lt!509675)))

(declare-fun bs!344780 () Bool)

(assert (= bs!344780 d!430163))

(declare-fun m!1709025 () Bool)

(assert (=> bs!344780 m!1709025))

(assert (=> bs!344780 m!1702745))

(declare-fun m!1709027 () Bool)

(assert (=> bs!344780 m!1709027))

(assert (=> bs!344780 m!1709027))

(declare-fun m!1709029 () Bool)

(assert (=> bs!344780 m!1709029))

(assert (=> bs!344780 m!1702745))

(assert (=> bs!344780 m!1702761))

(assert (=> b!1463455 d!430163))

(declare-fun d!430165 () Bool)

(declare-fun lt!509676 () BalanceConc!10292)

(assert (=> d!430165 (= (list!6087 lt!509676) (printList!727 Lexer!2329 (list!6083 (seqFromList!1716 (t!134647 lt!507007)))))))

(assert (=> d!430165 (= lt!509676 (printTailRec!699 Lexer!2329 (seqFromList!1716 (t!134647 lt!507007)) 0 (BalanceConc!10293 Empty!5176)))))

(assert (=> d!430165 (= (print!1107 Lexer!2329 (seqFromList!1716 (t!134647 lt!507007))) lt!509676)))

(declare-fun bs!344781 () Bool)

(assert (= bs!344781 d!430165))

(declare-fun m!1709031 () Bool)

(assert (=> bs!344781 m!1709031))

(assert (=> bs!344781 m!1702777))

(declare-fun m!1709033 () Bool)

(assert (=> bs!344781 m!1709033))

(assert (=> bs!344781 m!1709033))

(declare-fun m!1709035 () Bool)

(assert (=> bs!344781 m!1709035))

(assert (=> bs!344781 m!1702777))

(declare-fun m!1709037 () Bool)

(assert (=> bs!344781 m!1709037))

(assert (=> b!1463455 d!430165))

(declare-fun d!430167 () Bool)

(assert (=> d!430167 (= (head!3024 (originalCharacters!3537 (h!20589 (t!134647 lt!507007)))) (h!20587 (originalCharacters!3537 (h!20589 (t!134647 lt!507007)))))))

(assert (=> b!1463455 d!430167))

(assert (=> b!1463455 d!429549))

(declare-fun d!430169 () Bool)

(declare-fun lt!509683 () BalanceConc!10292)

(assert (=> d!430169 (= (list!6087 lt!509683) (printListTailRec!292 Lexer!2329 (dropList!483 (singletonSeq!1281 (h!20589 lt!507007)) 0) (list!6087 (BalanceConc!10293 Empty!5176))))))

(declare-fun e!934777 () BalanceConc!10292)

(assert (=> d!430169 (= lt!509683 e!934777)))

(declare-fun c!241660 () Bool)

(assert (=> d!430169 (= c!241660 (>= 0 (size!12423 (singletonSeq!1281 (h!20589 lt!507007)))))))

(declare-fun e!934776 () Bool)

(assert (=> d!430169 e!934776))

(declare-fun res!663393 () Bool)

(assert (=> d!430169 (=> (not res!663393) (not e!934776))))

(assert (=> d!430169 (= res!663393 (>= 0 0))))

(assert (=> d!430169 (= (printTailRec!699 Lexer!2329 (singletonSeq!1281 (h!20589 lt!507007)) 0 (BalanceConc!10293 Empty!5176)) lt!509683)))

(declare-fun b!1465449 () Bool)

(assert (=> b!1465449 (= e!934776 (<= 0 (size!12423 (singletonSeq!1281 (h!20589 lt!507007)))))))

(declare-fun b!1465450 () Bool)

(assert (=> b!1465450 (= e!934777 (BalanceConc!10293 Empty!5176))))

(declare-fun b!1465451 () Bool)

(assert (=> b!1465451 (= e!934777 (printTailRec!699 Lexer!2329 (singletonSeq!1281 (h!20589 lt!507007)) (+ 0 1) (++!4097 (BalanceConc!10293 Empty!5176) (charsOf!1538 (apply!3965 (singletonSeq!1281 (h!20589 lt!507007)) 0)))))))

(declare-fun lt!509681 () List!15254)

(assert (=> b!1465451 (= lt!509681 (list!6083 (singletonSeq!1281 (h!20589 lt!507007))))))

(declare-fun lt!509679 () Unit!24509)

(assert (=> b!1465451 (= lt!509679 (lemmaDropApply!495 lt!509681 0))))

(assert (=> b!1465451 (= (head!3020 (drop!745 lt!509681 0)) (apply!3966 lt!509681 0))))

(declare-fun lt!509680 () Unit!24509)

(assert (=> b!1465451 (= lt!509680 lt!509679)))

(declare-fun lt!509682 () List!15254)

(assert (=> b!1465451 (= lt!509682 (list!6083 (singletonSeq!1281 (h!20589 lt!507007))))))

(declare-fun lt!509677 () Unit!24509)

(assert (=> b!1465451 (= lt!509677 (lemmaDropTail!475 lt!509682 0))))

(assert (=> b!1465451 (= (tail!2177 (drop!745 lt!509682 0)) (drop!745 lt!509682 (+ 0 1)))))

(declare-fun lt!509678 () Unit!24509)

(assert (=> b!1465451 (= lt!509678 lt!509677)))

(assert (= (and d!430169 res!663393) b!1465449))

(assert (= (and d!430169 c!241660) b!1465450))

(assert (= (and d!430169 (not c!241660)) b!1465451))

(declare-fun m!1709039 () Bool)

(assert (=> d!430169 m!1709039))

(assert (=> d!430169 m!1703227))

(declare-fun m!1709041 () Bool)

(assert (=> d!430169 m!1709041))

(assert (=> d!430169 m!1702745))

(assert (=> d!430169 m!1709039))

(declare-fun m!1709043 () Bool)

(assert (=> d!430169 m!1709043))

(assert (=> d!430169 m!1703227))

(assert (=> d!430169 m!1702745))

(declare-fun m!1709045 () Bool)

(assert (=> d!430169 m!1709045))

(assert (=> b!1465449 m!1702745))

(assert (=> b!1465449 m!1709045))

(assert (=> b!1465451 m!1702745))

(assert (=> b!1465451 m!1709027))

(declare-fun m!1709047 () Bool)

(assert (=> b!1465451 m!1709047))

(assert (=> b!1465451 m!1702745))

(declare-fun m!1709049 () Bool)

(assert (=> b!1465451 m!1709049))

(declare-fun m!1709051 () Bool)

(assert (=> b!1465451 m!1709051))

(assert (=> b!1465451 m!1702745))

(declare-fun m!1709053 () Bool)

(assert (=> b!1465451 m!1709053))

(declare-fun m!1709055 () Bool)

(assert (=> b!1465451 m!1709055))

(declare-fun m!1709057 () Bool)

(assert (=> b!1465451 m!1709057))

(assert (=> b!1465451 m!1709049))

(declare-fun m!1709059 () Bool)

(assert (=> b!1465451 m!1709059))

(declare-fun m!1709061 () Bool)

(assert (=> b!1465451 m!1709061))

(assert (=> b!1465451 m!1709061))

(declare-fun m!1709063 () Bool)

(assert (=> b!1465451 m!1709063))

(assert (=> b!1465451 m!1709059))

(assert (=> b!1465451 m!1709053))

(declare-fun m!1709065 () Bool)

(assert (=> b!1465451 m!1709065))

(declare-fun m!1709067 () Bool)

(assert (=> b!1465451 m!1709067))

(assert (=> b!1465451 m!1709067))

(declare-fun m!1709069 () Bool)

(assert (=> b!1465451 m!1709069))

(assert (=> b!1463455 d!430169))

(assert (=> b!1463322 d!429583))

(declare-fun d!430171 () Bool)

(declare-fun lt!509684 () Token!5012)

(assert (=> d!430171 (= lt!509684 (apply!3966 (list!6083 (_1!8014 lt!507409)) 0))))

(assert (=> d!430171 (= lt!509684 (apply!3978 (c!241182 (_1!8014 lt!507409)) 0))))

(declare-fun e!934778 () Bool)

(assert (=> d!430171 e!934778))

(declare-fun res!663394 () Bool)

(assert (=> d!430171 (=> (not res!663394) (not e!934778))))

(assert (=> d!430171 (= res!663394 (<= 0 0))))

(assert (=> d!430171 (= (apply!3965 (_1!8014 lt!507409) 0) lt!509684)))

(declare-fun b!1465452 () Bool)

(assert (=> b!1465452 (= e!934778 (< 0 (size!12423 (_1!8014 lt!507409))))))

(assert (= (and d!430171 res!663394) b!1465452))

(assert (=> d!430171 m!1705891))

(assert (=> d!430171 m!1705891))

(declare-fun m!1709071 () Bool)

(assert (=> d!430171 m!1709071))

(declare-fun m!1709073 () Bool)

(assert (=> d!430171 m!1709073))

(assert (=> b!1465452 m!1702361))

(assert (=> b!1463351 d!430171))

(declare-fun d!430173 () Bool)

(declare-fun lt!509685 () Bool)

(assert (=> d!430173 (= lt!509685 (isEmpty!9545 (list!6087 (_2!8014 lt!507415))))))

(assert (=> d!430173 (= lt!509685 (isEmpty!9549 (c!241180 (_2!8014 lt!507415))))))

(assert (=> d!430173 (= (isEmpty!9544 (_2!8014 lt!507415)) lt!509685)))

(declare-fun bs!344782 () Bool)

(assert (= bs!344782 d!430173))

(declare-fun m!1709075 () Bool)

(assert (=> bs!344782 m!1709075))

(assert (=> bs!344782 m!1709075))

(declare-fun m!1709077 () Bool)

(assert (=> bs!344782 m!1709077))

(declare-fun m!1709079 () Bool)

(assert (=> bs!344782 m!1709079))

(assert (=> b!1463355 d!430173))

(declare-fun d!430175 () Bool)

(assert (=> d!430175 (= (separableTokens!265 Lexer!2329 (tokens!2112 lt!506997) (rules!11706 lt!506997)) (tokensListTwoByTwoPredicateSeparable!138 Lexer!2329 (tokens!2112 lt!506997) 0 (rules!11706 lt!506997)))))

(declare-fun bs!344783 () Bool)

(assert (= bs!344783 d!430175))

(declare-fun m!1709081 () Bool)

(assert (=> bs!344783 m!1709081))

(assert (=> b!1463467 d!430175))

(declare-fun d!430177 () Bool)

(declare-fun res!663395 () Bool)

(declare-fun e!934779 () Bool)

(assert (=> d!430177 (=> (not res!663395) (not e!934779))))

(assert (=> d!430177 (= res!663395 (= (csize!10584 (c!241182 (tokens!2112 thiss!10022))) (+ (size!12431 (left!12905 (c!241182 (tokens!2112 thiss!10022)))) (size!12431 (right!13235 (c!241182 (tokens!2112 thiss!10022)))))))))

(assert (=> d!430177 (= (inv!20301 (c!241182 (tokens!2112 thiss!10022))) e!934779)))

(declare-fun b!1465453 () Bool)

(declare-fun res!663396 () Bool)

(assert (=> b!1465453 (=> (not res!663396) (not e!934779))))

(assert (=> b!1465453 (= res!663396 (and (not (= (left!12905 (c!241182 (tokens!2112 thiss!10022))) Empty!5177)) (not (= (right!13235 (c!241182 (tokens!2112 thiss!10022))) Empty!5177))))))

(declare-fun b!1465454 () Bool)

(declare-fun res!663397 () Bool)

(assert (=> b!1465454 (=> (not res!663397) (not e!934779))))

(assert (=> b!1465454 (= res!663397 (= (cheight!5388 (c!241182 (tokens!2112 thiss!10022))) (+ (max!0 (height!778 (left!12905 (c!241182 (tokens!2112 thiss!10022)))) (height!778 (right!13235 (c!241182 (tokens!2112 thiss!10022))))) 1)))))

(declare-fun b!1465455 () Bool)

(assert (=> b!1465455 (= e!934779 (<= 0 (cheight!5388 (c!241182 (tokens!2112 thiss!10022)))))))

(assert (= (and d!430177 res!663395) b!1465453))

(assert (= (and b!1465453 res!663396) b!1465454))

(assert (= (and b!1465454 res!663397) b!1465455))

(declare-fun m!1709083 () Bool)

(assert (=> d!430177 m!1709083))

(declare-fun m!1709085 () Bool)

(assert (=> d!430177 m!1709085))

(assert (=> b!1465454 m!1704713))

(assert (=> b!1465454 m!1704715))

(assert (=> b!1465454 m!1704713))

(assert (=> b!1465454 m!1704715))

(declare-fun m!1709087 () Bool)

(assert (=> b!1465454 m!1709087))

(assert (=> b!1463152 d!430177))

(assert (=> b!1463102 d!428961))

(assert (=> d!428823 d!429273))

(assert (=> d!428823 d!428847))

(declare-fun d!430179 () Bool)

(assert (=> d!430179 (rulesProduceEachTokenIndividuallyList!750 Lexer!2329 (rules!11706 thiss!10022) (++!4092 lt!507007 lt!506994))))

(assert (=> d!430179 true))

(declare-fun _$79!109 () Unit!24509)

(assert (=> d!430179 (= (choose!8998 Lexer!2329 (rules!11706 thiss!10022) lt!507007 lt!506994) _$79!109)))

(declare-fun bs!344784 () Bool)

(assert (= bs!344784 d!430179))

(assert (=> bs!344784 m!1701629))

(assert (=> bs!344784 m!1701629))

(assert (=> bs!344784 m!1702161))

(assert (=> d!428823 d!430179))

(assert (=> d!428823 d!429091))

(declare-fun tp!411935 () Bool)

(declare-fun tp!411933 () Bool)

(declare-fun b!1465456 () Bool)

(declare-fun e!934780 () Bool)

(assert (=> b!1465456 (= e!934780 (and (inv!20300 (left!12905 (left!12905 (c!241182 (tokens!2112 other!32))))) tp!411935 (inv!20300 (right!13235 (left!12905 (c!241182 (tokens!2112 other!32))))) tp!411933))))

(declare-fun b!1465458 () Bool)

(declare-fun e!934781 () Bool)

(declare-fun tp!411934 () Bool)

(assert (=> b!1465458 (= e!934781 tp!411934)))

(declare-fun b!1465457 () Bool)

(assert (=> b!1465457 (= e!934780 (and (inv!20307 (xs!7928 (left!12905 (c!241182 (tokens!2112 other!32))))) e!934781))))

(assert (=> b!1463503 (= tp!411842 (and (inv!20300 (left!12905 (c!241182 (tokens!2112 other!32)))) e!934780))))

(assert (= (and b!1463503 ((_ is Node!5177) (left!12905 (c!241182 (tokens!2112 other!32))))) b!1465456))

(assert (= b!1465457 b!1465458))

(assert (= (and b!1463503 ((_ is Leaf!7716) (left!12905 (c!241182 (tokens!2112 other!32))))) b!1465457))

(declare-fun m!1709089 () Bool)

(assert (=> b!1465456 m!1709089))

(declare-fun m!1709091 () Bool)

(assert (=> b!1465456 m!1709091))

(declare-fun m!1709093 () Bool)

(assert (=> b!1465457 m!1709093))

(assert (=> b!1463503 m!1702915))

(declare-fun b!1465459 () Bool)

(declare-fun tp!411936 () Bool)

(declare-fun e!934782 () Bool)

(declare-fun tp!411938 () Bool)

(assert (=> b!1465459 (= e!934782 (and (inv!20300 (left!12905 (right!13235 (c!241182 (tokens!2112 other!32))))) tp!411938 (inv!20300 (right!13235 (right!13235 (c!241182 (tokens!2112 other!32))))) tp!411936))))

(declare-fun b!1465461 () Bool)

(declare-fun e!934783 () Bool)

(declare-fun tp!411937 () Bool)

(assert (=> b!1465461 (= e!934783 tp!411937)))

(declare-fun b!1465460 () Bool)

(assert (=> b!1465460 (= e!934782 (and (inv!20307 (xs!7928 (right!13235 (c!241182 (tokens!2112 other!32))))) e!934783))))

(assert (=> b!1463503 (= tp!411840 (and (inv!20300 (right!13235 (c!241182 (tokens!2112 other!32)))) e!934782))))

(assert (= (and b!1463503 ((_ is Node!5177) (right!13235 (c!241182 (tokens!2112 other!32))))) b!1465459))

(assert (= b!1465460 b!1465461))

(assert (= (and b!1463503 ((_ is Leaf!7716) (right!13235 (c!241182 (tokens!2112 other!32))))) b!1465460))

(declare-fun m!1709095 () Bool)

(assert (=> b!1465459 m!1709095))

(declare-fun m!1709097 () Bool)

(assert (=> b!1465459 m!1709097))

(declare-fun m!1709099 () Bool)

(assert (=> b!1465460 m!1709099))

(assert (=> b!1463503 m!1702917))

(declare-fun b!1465475 () Bool)

(declare-fun b_free!36543 () Bool)

(declare-fun b_next!37247 () Bool)

(assert (=> b!1465475 (= b_free!36543 (not b_next!37247))))

(declare-fun tp!411949 () Bool)

(declare-fun b_and!100017 () Bool)

(assert (=> b!1465475 (= tp!411949 b_and!100017)))

(declare-fun b_free!36545 () Bool)

(declare-fun b_next!37249 () Bool)

(assert (=> b!1465475 (= b_free!36545 (not b_next!37249))))

(declare-fun tb!82825 () Bool)

(declare-fun t!134860 () Bool)

(assert (=> (and b!1465475 (= (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 other!32)))))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!506991))))) t!134860) tb!82825))

(declare-fun result!99484 () Bool)

(assert (= result!99484 result!99342))

(assert (=> d!429495 t!134860))

(declare-fun tb!82827 () Bool)

(declare-fun t!134862 () Bool)

(assert (=> (and b!1465475 (= (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 other!32)))))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!506994))))) t!134862) tb!82827))

(declare-fun result!99486 () Bool)

(assert (= result!99486 result!99322))

(assert (=> d!429267 t!134862))

(declare-fun tb!82829 () Bool)

(declare-fun t!134864 () Bool)

(assert (=> (and b!1465475 (= (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 other!32)))))))) (toChars!3845 (transformation!2675 (rule!4450 lt!506998)))) t!134864) tb!82829))

(declare-fun result!99488 () Bool)

(assert (= result!99488 result!99374))

(assert (=> d!430069 t!134864))

(declare-fun tb!82831 () Bool)

(declare-fun t!134866 () Bool)

(assert (=> (and b!1465475 (= (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 other!32)))))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!507007))))) t!134866) tb!82831))

(declare-fun result!99490 () Bool)

(assert (= result!99490 result!99346))

(assert (=> d!429595 t!134866))

(declare-fun tb!82833 () Bool)

(declare-fun t!134868 () Bool)

(assert (=> (and b!1465475 (= (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 other!32)))))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!506991)))))) t!134868) tb!82833))

(declare-fun result!99492 () Bool)

(assert (= result!99492 result!99378))

(assert (=> d!430085 t!134868))

(declare-fun tb!82835 () Bool)

(declare-fun t!134870 () Bool)

(assert (=> (and b!1465475 (= (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 other!32)))))))) (toChars!3845 (transformation!2675 (rule!4450 (apply!3965 lt!507005 (+ 0 1)))))) t!134870) tb!82835))

(declare-fun result!99494 () Bool)

(assert (= result!99494 result!99354))

(assert (=> d!429803 t!134870))

(declare-fun tb!82837 () Bool)

(declare-fun t!134872 () Bool)

(assert (=> (and b!1465475 (= (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 other!32)))))))) (toChars!3845 (transformation!2675 (rule!4450 lt!507004)))) t!134872) tb!82837))

(declare-fun result!99496 () Bool)

(assert (= result!99496 result!99370))

(assert (=> d!430067 t!134872))

(declare-fun t!134874 () Bool)

(declare-fun tb!82839 () Bool)

(assert (=> (and b!1465475 (= (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 other!32)))))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (list!6083 lt!507005)))))) t!134874) tb!82839))

(declare-fun result!99498 () Bool)

(assert (= result!99498 result!99318))

(assert (=> d!429231 t!134874))

(declare-fun t!134876 () Bool)

(declare-fun tb!82841 () Bool)

(assert (=> (and b!1465475 (= (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 other!32)))))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 (list!6083 lt!507005))))))) t!134876) tb!82841))

(declare-fun result!99500 () Bool)

(assert (= result!99500 result!99304))

(assert (=> d!429125 t!134876))

(declare-fun tb!82843 () Bool)

(declare-fun t!134878 () Bool)

(assert (=> (and b!1465475 (= (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 other!32)))))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!506994)))))) t!134878) tb!82843))

(declare-fun result!99502 () Bool)

(assert (= result!99502 result!99366))

(assert (=> d!430031 t!134878))

(declare-fun t!134880 () Bool)

(declare-fun tb!82845 () Bool)

(assert (=> (and b!1465475 (= (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 other!32)))))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!507007)))))) t!134880) tb!82845))

(declare-fun result!99504 () Bool)

(assert (= result!99504 result!99386))

(assert (=> d!430101 t!134880))

(declare-fun b_and!100019 () Bool)

(declare-fun tp!411953 () Bool)

(assert (=> b!1465475 (= tp!411953 (and (=> t!134878 result!99502) (=> t!134870 result!99494) (=> t!134862 result!99486) (=> t!134868 result!99492) (=> t!134874 result!99498) (=> t!134872 result!99496) (=> t!134860 result!99484) (=> t!134876 result!99500) (=> t!134880 result!99504) (=> t!134864 result!99488) (=> t!134866 result!99490) b_and!100019))))

(declare-fun e!934801 () Bool)

(declare-fun tp!411950 () Bool)

(declare-fun b!1465472 () Bool)

(declare-fun e!934798 () Bool)

(declare-fun inv!20313 (Token!5012) Bool)

(assert (=> b!1465472 (= e!934798 (and (inv!20313 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 other!32)))))) e!934801 tp!411950))))

(declare-fun tp!411951 () Bool)

(declare-fun e!934800 () Bool)

(declare-fun b!1465474 () Bool)

(declare-fun e!934796 () Bool)

(assert (=> b!1465474 (= e!934796 (and tp!411951 (inv!20294 (tag!2939 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 other!32)))))))) (inv!20308 (transformation!2675 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 other!32)))))))) e!934800))))

(assert (=> b!1463505 (= tp!411841 e!934798)))

(declare-fun tp!411952 () Bool)

(declare-fun b!1465473 () Bool)

(declare-fun inv!21 (TokenValue!2765) Bool)

(assert (=> b!1465473 (= e!934801 (and (inv!21 (value!85885 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 other!32))))))) e!934796 tp!411952))))

(assert (=> b!1465475 (= e!934800 (and tp!411949 tp!411953))))

(assert (= b!1465474 b!1465475))

(assert (= b!1465473 b!1465474))

(assert (= b!1465472 b!1465473))

(assert (= (and b!1463505 ((_ is Cons!15188) (innerList!5237 (xs!7928 (c!241182 (tokens!2112 other!32)))))) b!1465472))

(declare-fun m!1709101 () Bool)

(assert (=> b!1465472 m!1709101))

(declare-fun m!1709103 () Bool)

(assert (=> b!1465474 m!1709103))

(declare-fun m!1709105 () Bool)

(assert (=> b!1465474 m!1709105))

(declare-fun m!1709107 () Bool)

(assert (=> b!1465473 m!1709107))

(declare-fun b!1465478 () Bool)

(declare-fun e!934804 () Bool)

(assert (=> b!1465478 (= e!934804 true)))

(declare-fun b!1465477 () Bool)

(declare-fun e!934803 () Bool)

(assert (=> b!1465477 (= e!934803 e!934804)))

(declare-fun b!1465476 () Bool)

(declare-fun e!934802 () Bool)

(assert (=> b!1465476 (= e!934802 e!934803)))

(assert (=> b!1463269 e!934802))

(assert (= b!1465477 b!1465478))

(assert (= b!1465476 b!1465477))

(assert (= (and b!1463269 ((_ is Cons!15189) (t!134648 (rules!11706 thiss!10022)))) b!1465476))

(assert (=> b!1465478 (< (dynLambda!6933 order!9151 (toValue!3986 (transformation!2675 (h!20590 (t!134648 (rules!11706 thiss!10022)))))) (dynLambda!6934 order!9153 lambda!63326))))

(assert (=> b!1465478 (< (dynLambda!6935 order!9155 (toChars!3845 (transformation!2675 (h!20590 (t!134648 (rules!11706 thiss!10022)))))) (dynLambda!6934 order!9153 lambda!63326))))

(declare-fun tp!411954 () Bool)

(declare-fun b!1465479 () Bool)

(declare-fun tp!411956 () Bool)

(declare-fun e!934805 () Bool)

(assert (=> b!1465479 (= e!934805 (and (inv!20300 (left!12905 (left!12905 (c!241182 (tokens!2112 thiss!10022))))) tp!411956 (inv!20300 (right!13235 (left!12905 (c!241182 (tokens!2112 thiss!10022))))) tp!411954))))

(declare-fun b!1465481 () Bool)

(declare-fun e!934806 () Bool)

(declare-fun tp!411955 () Bool)

(assert (=> b!1465481 (= e!934806 tp!411955)))

(declare-fun b!1465480 () Bool)

(assert (=> b!1465480 (= e!934805 (and (inv!20307 (xs!7928 (left!12905 (c!241182 (tokens!2112 thiss!10022))))) e!934806))))

(assert (=> b!1463489 (= tp!411827 (and (inv!20300 (left!12905 (c!241182 (tokens!2112 thiss!10022)))) e!934805))))

(assert (= (and b!1463489 ((_ is Node!5177) (left!12905 (c!241182 (tokens!2112 thiss!10022))))) b!1465479))

(assert (= b!1465480 b!1465481))

(assert (= (and b!1463489 ((_ is Leaf!7716) (left!12905 (c!241182 (tokens!2112 thiss!10022))))) b!1465480))

(declare-fun m!1709109 () Bool)

(assert (=> b!1465479 m!1709109))

(declare-fun m!1709111 () Bool)

(assert (=> b!1465479 m!1709111))

(declare-fun m!1709113 () Bool)

(assert (=> b!1465480 m!1709113))

(assert (=> b!1463489 m!1702905))

(declare-fun e!934807 () Bool)

(declare-fun tp!411957 () Bool)

(declare-fun b!1465482 () Bool)

(declare-fun tp!411959 () Bool)

(assert (=> b!1465482 (= e!934807 (and (inv!20300 (left!12905 (right!13235 (c!241182 (tokens!2112 thiss!10022))))) tp!411959 (inv!20300 (right!13235 (right!13235 (c!241182 (tokens!2112 thiss!10022))))) tp!411957))))

(declare-fun b!1465484 () Bool)

(declare-fun e!934808 () Bool)

(declare-fun tp!411958 () Bool)

(assert (=> b!1465484 (= e!934808 tp!411958)))

(declare-fun b!1465483 () Bool)

(assert (=> b!1465483 (= e!934807 (and (inv!20307 (xs!7928 (right!13235 (c!241182 (tokens!2112 thiss!10022))))) e!934808))))

(assert (=> b!1463489 (= tp!411825 (and (inv!20300 (right!13235 (c!241182 (tokens!2112 thiss!10022)))) e!934807))))

(assert (= (and b!1463489 ((_ is Node!5177) (right!13235 (c!241182 (tokens!2112 thiss!10022))))) b!1465482))

(assert (= b!1465483 b!1465484))

(assert (= (and b!1463489 ((_ is Leaf!7716) (right!13235 (c!241182 (tokens!2112 thiss!10022))))) b!1465483))

(declare-fun m!1709115 () Bool)

(assert (=> b!1465482 m!1709115))

(declare-fun m!1709117 () Bool)

(assert (=> b!1465482 m!1709117))

(declare-fun m!1709119 () Bool)

(assert (=> b!1465483 m!1709119))

(assert (=> b!1463489 m!1702907))

(declare-fun b!1465487 () Bool)

(declare-fun b_free!36547 () Bool)

(declare-fun b_next!37251 () Bool)

(assert (=> b!1465487 (= b_free!36547 (not b_next!37251))))

(declare-fun tp!411960 () Bool)

(declare-fun b_and!100021 () Bool)

(assert (=> b!1465487 (= tp!411960 b_and!100021)))

(declare-fun b_free!36549 () Bool)

(declare-fun b_next!37253 () Bool)

(assert (=> b!1465487 (= b_free!36549 (not b_next!37253))))

(declare-fun tb!82847 () Bool)

(declare-fun t!134882 () Bool)

(assert (=> (and b!1465487 (= (toChars!3845 (transformation!2675 (h!20590 (t!134648 (rules!11706 thiss!10022))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!506991))))) t!134882) tb!82847))

(declare-fun result!99506 () Bool)

(assert (= result!99506 result!99342))

(assert (=> d!429495 t!134882))

(declare-fun t!134884 () Bool)

(declare-fun tb!82849 () Bool)

(assert (=> (and b!1465487 (= (toChars!3845 (transformation!2675 (h!20590 (t!134648 (rules!11706 thiss!10022))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!506994))))) t!134884) tb!82849))

(declare-fun result!99508 () Bool)

(assert (= result!99508 result!99322))

(assert (=> d!429267 t!134884))

(declare-fun tb!82851 () Bool)

(declare-fun t!134886 () Bool)

(assert (=> (and b!1465487 (= (toChars!3845 (transformation!2675 (h!20590 (t!134648 (rules!11706 thiss!10022))))) (toChars!3845 (transformation!2675 (rule!4450 lt!506998)))) t!134886) tb!82851))

(declare-fun result!99510 () Bool)

(assert (= result!99510 result!99374))

(assert (=> d!430069 t!134886))

(declare-fun tb!82853 () Bool)

(declare-fun t!134888 () Bool)

(assert (=> (and b!1465487 (= (toChars!3845 (transformation!2675 (h!20590 (t!134648 (rules!11706 thiss!10022))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!507007))))) t!134888) tb!82853))

(declare-fun result!99512 () Bool)

(assert (= result!99512 result!99346))

(assert (=> d!429595 t!134888))

(declare-fun tb!82855 () Bool)

(declare-fun t!134890 () Bool)

(assert (=> (and b!1465487 (= (toChars!3845 (transformation!2675 (h!20590 (t!134648 (rules!11706 thiss!10022))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!506991)))))) t!134890) tb!82855))

(declare-fun result!99514 () Bool)

(assert (= result!99514 result!99378))

(assert (=> d!430085 t!134890))

(declare-fun t!134892 () Bool)

(declare-fun tb!82857 () Bool)

(assert (=> (and b!1465487 (= (toChars!3845 (transformation!2675 (h!20590 (t!134648 (rules!11706 thiss!10022))))) (toChars!3845 (transformation!2675 (rule!4450 (apply!3965 lt!507005 (+ 0 1)))))) t!134892) tb!82857))

(declare-fun result!99516 () Bool)

(assert (= result!99516 result!99354))

(assert (=> d!429803 t!134892))

(declare-fun tb!82859 () Bool)

(declare-fun t!134894 () Bool)

(assert (=> (and b!1465487 (= (toChars!3845 (transformation!2675 (h!20590 (t!134648 (rules!11706 thiss!10022))))) (toChars!3845 (transformation!2675 (rule!4450 lt!507004)))) t!134894) tb!82859))

(declare-fun result!99518 () Bool)

(assert (= result!99518 result!99370))

(assert (=> d!430067 t!134894))

(declare-fun t!134896 () Bool)

(declare-fun tb!82861 () Bool)

(assert (=> (and b!1465487 (= (toChars!3845 (transformation!2675 (h!20590 (t!134648 (rules!11706 thiss!10022))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (list!6083 lt!507005)))))) t!134896) tb!82861))

(declare-fun result!99520 () Bool)

(assert (= result!99520 result!99318))

(assert (=> d!429231 t!134896))

(declare-fun t!134898 () Bool)

(declare-fun tb!82863 () Bool)

(assert (=> (and b!1465487 (= (toChars!3845 (transformation!2675 (h!20590 (t!134648 (rules!11706 thiss!10022))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 (list!6083 lt!507005))))))) t!134898) tb!82863))

(declare-fun result!99522 () Bool)

(assert (= result!99522 result!99304))

(assert (=> d!429125 t!134898))

(declare-fun t!134900 () Bool)

(declare-fun tb!82865 () Bool)

(assert (=> (and b!1465487 (= (toChars!3845 (transformation!2675 (h!20590 (t!134648 (rules!11706 thiss!10022))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!506994)))))) t!134900) tb!82865))

(declare-fun result!99524 () Bool)

(assert (= result!99524 result!99366))

(assert (=> d!430031 t!134900))

(declare-fun tb!82867 () Bool)

(declare-fun t!134902 () Bool)

(assert (=> (and b!1465487 (= (toChars!3845 (transformation!2675 (h!20590 (t!134648 (rules!11706 thiss!10022))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!507007)))))) t!134902) tb!82867))

(declare-fun result!99526 () Bool)

(assert (= result!99526 result!99386))

(assert (=> d!430101 t!134902))

(declare-fun tp!411963 () Bool)

(declare-fun b_and!100023 () Bool)

(assert (=> b!1465487 (= tp!411963 (and (=> t!134894 result!99518) (=> t!134896 result!99520) (=> t!134900 result!99524) (=> t!134902 result!99526) (=> t!134890 result!99514) (=> t!134886 result!99510) (=> t!134882 result!99506) (=> t!134884 result!99508) (=> t!134892 result!99516) (=> t!134888 result!99512) (=> t!134898 result!99522) b_and!100023))))

(declare-fun e!934810 () Bool)

(assert (=> b!1465487 (= e!934810 (and tp!411960 tp!411963))))

(declare-fun tp!411961 () Bool)

(declare-fun b!1465486 () Bool)

(declare-fun e!934812 () Bool)

(assert (=> b!1465486 (= e!934812 (and tp!411961 (inv!20294 (tag!2939 (h!20590 (t!134648 (rules!11706 thiss!10022))))) (inv!20308 (transformation!2675 (h!20590 (t!134648 (rules!11706 thiss!10022))))) e!934810))))

(declare-fun b!1465485 () Bool)

(declare-fun e!934809 () Bool)

(declare-fun tp!411962 () Bool)

(assert (=> b!1465485 (= e!934809 (and e!934812 tp!411962))))

(assert (=> b!1463506 (= tp!411845 e!934809)))

(assert (= b!1465486 b!1465487))

(assert (= b!1465485 b!1465486))

(assert (= (and b!1463506 ((_ is Cons!15189) (t!134648 (rules!11706 thiss!10022)))) b!1465485))

(declare-fun m!1709121 () Bool)

(assert (=> b!1465486 m!1709121))

(declare-fun m!1709123 () Bool)

(assert (=> b!1465486 m!1709123))

(declare-fun b!1465491 () Bool)

(declare-fun b_free!36551 () Bool)

(declare-fun b_next!37255 () Bool)

(assert (=> b!1465491 (= b_free!36551 (not b_next!37255))))

(declare-fun tp!411964 () Bool)

(declare-fun b_and!100025 () Bool)

(assert (=> b!1465491 (= tp!411964 b_and!100025)))

(declare-fun b_free!36553 () Bool)

(declare-fun b_next!37257 () Bool)

(assert (=> b!1465491 (= b_free!36553 (not b_next!37257))))

(declare-fun t!134904 () Bool)

(declare-fun tb!82869 () Bool)

(assert (=> (and b!1465491 (= (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 thiss!10022)))))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!506991))))) t!134904) tb!82869))

(declare-fun result!99528 () Bool)

(assert (= result!99528 result!99342))

(assert (=> d!429495 t!134904))

(declare-fun tb!82871 () Bool)

(declare-fun t!134906 () Bool)

(assert (=> (and b!1465491 (= (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 thiss!10022)))))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!506994))))) t!134906) tb!82871))

(declare-fun result!99530 () Bool)

(assert (= result!99530 result!99322))

(assert (=> d!429267 t!134906))

(declare-fun t!134908 () Bool)

(declare-fun tb!82873 () Bool)

(assert (=> (and b!1465491 (= (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 thiss!10022)))))))) (toChars!3845 (transformation!2675 (rule!4450 lt!506998)))) t!134908) tb!82873))

(declare-fun result!99532 () Bool)

(assert (= result!99532 result!99374))

(assert (=> d!430069 t!134908))

(declare-fun tb!82875 () Bool)

(declare-fun t!134910 () Bool)

(assert (=> (and b!1465491 (= (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 thiss!10022)))))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!507007))))) t!134910) tb!82875))

(declare-fun result!99534 () Bool)

(assert (= result!99534 result!99346))

(assert (=> d!429595 t!134910))

(declare-fun tb!82877 () Bool)

(declare-fun t!134912 () Bool)

(assert (=> (and b!1465491 (= (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 thiss!10022)))))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!506991)))))) t!134912) tb!82877))

(declare-fun result!99536 () Bool)

(assert (= result!99536 result!99378))

(assert (=> d!430085 t!134912))

(declare-fun tb!82879 () Bool)

(declare-fun t!134914 () Bool)

(assert (=> (and b!1465491 (= (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 thiss!10022)))))))) (toChars!3845 (transformation!2675 (rule!4450 (apply!3965 lt!507005 (+ 0 1)))))) t!134914) tb!82879))

(declare-fun result!99538 () Bool)

(assert (= result!99538 result!99354))

(assert (=> d!429803 t!134914))

(declare-fun t!134916 () Bool)

(declare-fun tb!82881 () Bool)

(assert (=> (and b!1465491 (= (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 thiss!10022)))))))) (toChars!3845 (transformation!2675 (rule!4450 lt!507004)))) t!134916) tb!82881))

(declare-fun result!99540 () Bool)

(assert (= result!99540 result!99370))

(assert (=> d!430067 t!134916))

(declare-fun t!134918 () Bool)

(declare-fun tb!82883 () Bool)

(assert (=> (and b!1465491 (= (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 thiss!10022)))))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (list!6083 lt!507005)))))) t!134918) tb!82883))

(declare-fun result!99542 () Bool)

(assert (= result!99542 result!99318))

(assert (=> d!429231 t!134918))

(declare-fun tb!82885 () Bool)

(declare-fun t!134920 () Bool)

(assert (=> (and b!1465491 (= (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 thiss!10022)))))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 (list!6083 lt!507005))))))) t!134920) tb!82885))

(declare-fun result!99544 () Bool)

(assert (= result!99544 result!99304))

(assert (=> d!429125 t!134920))

(declare-fun tb!82887 () Bool)

(declare-fun t!134922 () Bool)

(assert (=> (and b!1465491 (= (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 thiss!10022)))))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!506994)))))) t!134922) tb!82887))

(declare-fun result!99546 () Bool)

(assert (= result!99546 result!99366))

(assert (=> d!430031 t!134922))

(declare-fun tb!82889 () Bool)

(declare-fun t!134924 () Bool)

(assert (=> (and b!1465491 (= (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 thiss!10022)))))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!507007)))))) t!134924) tb!82889))

(declare-fun result!99548 () Bool)

(assert (= result!99548 result!99386))

(assert (=> d!430101 t!134924))

(declare-fun b_and!100027 () Bool)

(declare-fun tp!411968 () Bool)

(assert (=> b!1465491 (= tp!411968 (and (=> t!134916 result!99540) (=> t!134906 result!99530) (=> t!134914 result!99538) (=> t!134912 result!99536) (=> t!134918 result!99542) (=> t!134908 result!99532) (=> t!134924 result!99548) (=> t!134910 result!99534) (=> t!134904 result!99528) (=> t!134922 result!99546) (=> t!134920 result!99544) b_and!100027))))

(declare-fun e!934818 () Bool)

(declare-fun e!934815 () Bool)

(declare-fun b!1465488 () Bool)

(declare-fun tp!411965 () Bool)

(assert (=> b!1465488 (= e!934815 (and (inv!20313 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 thiss!10022)))))) e!934818 tp!411965))))

(declare-fun e!934817 () Bool)

(declare-fun tp!411966 () Bool)

(declare-fun e!934813 () Bool)

(declare-fun b!1465490 () Bool)

(assert (=> b!1465490 (= e!934813 (and tp!411966 (inv!20294 (tag!2939 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 thiss!10022)))))))) (inv!20308 (transformation!2675 (rule!4450 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 thiss!10022)))))))) e!934817))))

(assert (=> b!1463491 (= tp!411826 e!934815)))

(declare-fun tp!411967 () Bool)

(declare-fun b!1465489 () Bool)

(assert (=> b!1465489 (= e!934818 (and (inv!21 (value!85885 (h!20589 (innerList!5237 (xs!7928 (c!241182 (tokens!2112 thiss!10022))))))) e!934813 tp!411967))))

(assert (=> b!1465491 (= e!934817 (and tp!411964 tp!411968))))

(assert (= b!1465490 b!1465491))

(assert (= b!1465489 b!1465490))

(assert (= b!1465488 b!1465489))

(assert (= (and b!1463491 ((_ is Cons!15188) (innerList!5237 (xs!7928 (c!241182 (tokens!2112 thiss!10022)))))) b!1465488))

(declare-fun m!1709125 () Bool)

(assert (=> b!1465488 m!1709125))

(declare-fun m!1709127 () Bool)

(assert (=> b!1465490 m!1709127))

(declare-fun m!1709129 () Bool)

(assert (=> b!1465490 m!1709129))

(declare-fun m!1709131 () Bool)

(assert (=> b!1465489 m!1709131))

(declare-fun b!1465494 () Bool)

(declare-fun b_free!36555 () Bool)

(declare-fun b_next!37259 () Bool)

(assert (=> b!1465494 (= b_free!36555 (not b_next!37259))))

(declare-fun tp!411969 () Bool)

(declare-fun b_and!100029 () Bool)

(assert (=> b!1465494 (= tp!411969 b_and!100029)))

(declare-fun b_free!36557 () Bool)

(declare-fun b_next!37261 () Bool)

(assert (=> b!1465494 (= b_free!36557 (not b_next!37261))))

(declare-fun tb!82891 () Bool)

(declare-fun t!134926 () Bool)

(assert (=> (and b!1465494 (= (toChars!3845 (transformation!2675 (h!20590 (t!134648 (rules!11706 other!32))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!506991))))) t!134926) tb!82891))

(declare-fun result!99550 () Bool)

(assert (= result!99550 result!99342))

(assert (=> d!429495 t!134926))

(declare-fun t!134928 () Bool)

(declare-fun tb!82893 () Bool)

(assert (=> (and b!1465494 (= (toChars!3845 (transformation!2675 (h!20590 (t!134648 (rules!11706 other!32))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!506994))))) t!134928) tb!82893))

(declare-fun result!99552 () Bool)

(assert (= result!99552 result!99322))

(assert (=> d!429267 t!134928))

(declare-fun tb!82895 () Bool)

(declare-fun t!134930 () Bool)

(assert (=> (and b!1465494 (= (toChars!3845 (transformation!2675 (h!20590 (t!134648 (rules!11706 other!32))))) (toChars!3845 (transformation!2675 (rule!4450 lt!506998)))) t!134930) tb!82895))

(declare-fun result!99554 () Bool)

(assert (= result!99554 result!99374))

(assert (=> d!430069 t!134930))

(declare-fun t!134932 () Bool)

(declare-fun tb!82897 () Bool)

(assert (=> (and b!1465494 (= (toChars!3845 (transformation!2675 (h!20590 (t!134648 (rules!11706 other!32))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 lt!507007))))) t!134932) tb!82897))

(declare-fun result!99556 () Bool)

(assert (= result!99556 result!99346))

(assert (=> d!429595 t!134932))

(declare-fun t!134934 () Bool)

(declare-fun tb!82899 () Bool)

(assert (=> (and b!1465494 (= (toChars!3845 (transformation!2675 (h!20590 (t!134648 (rules!11706 other!32))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!506991)))))) t!134934) tb!82899))

(declare-fun result!99558 () Bool)

(assert (= result!99558 result!99378))

(assert (=> d!430085 t!134934))

(declare-fun t!134936 () Bool)

(declare-fun tb!82901 () Bool)

(assert (=> (and b!1465494 (= (toChars!3845 (transformation!2675 (h!20590 (t!134648 (rules!11706 other!32))))) (toChars!3845 (transformation!2675 (rule!4450 (apply!3965 lt!507005 (+ 0 1)))))) t!134936) tb!82901))

(declare-fun result!99560 () Bool)

(assert (= result!99560 result!99354))

(assert (=> d!429803 t!134936))

(declare-fun t!134938 () Bool)

(declare-fun tb!82903 () Bool)

(assert (=> (and b!1465494 (= (toChars!3845 (transformation!2675 (h!20590 (t!134648 (rules!11706 other!32))))) (toChars!3845 (transformation!2675 (rule!4450 lt!507004)))) t!134938) tb!82903))

(declare-fun result!99562 () Bool)

(assert (= result!99562 result!99370))

(assert (=> d!430067 t!134938))

(declare-fun t!134940 () Bool)

(declare-fun tb!82905 () Bool)

(assert (=> (and b!1465494 (= (toChars!3845 (transformation!2675 (h!20590 (t!134648 (rules!11706 other!32))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (list!6083 lt!507005)))))) t!134940) tb!82905))

(declare-fun result!99564 () Bool)

(assert (= result!99564 result!99318))

(assert (=> d!429231 t!134940))

(declare-fun t!134942 () Bool)

(declare-fun tb!82907 () Bool)

(assert (=> (and b!1465494 (= (toChars!3845 (transformation!2675 (h!20590 (t!134648 (rules!11706 other!32))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 (list!6083 lt!507005))))))) t!134942) tb!82907))

(declare-fun result!99566 () Bool)

(assert (= result!99566 result!99304))

(assert (=> d!429125 t!134942))

(declare-fun tb!82909 () Bool)

(declare-fun t!134944 () Bool)

(assert (=> (and b!1465494 (= (toChars!3845 (transformation!2675 (h!20590 (t!134648 (rules!11706 other!32))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!506994)))))) t!134944) tb!82909))

(declare-fun result!99568 () Bool)

(assert (= result!99568 result!99366))

(assert (=> d!430031 t!134944))

(declare-fun tb!82911 () Bool)

(declare-fun t!134946 () Bool)

(assert (=> (and b!1465494 (= (toChars!3845 (transformation!2675 (h!20590 (t!134648 (rules!11706 other!32))))) (toChars!3845 (transformation!2675 (rule!4450 (h!20589 (t!134647 lt!507007)))))) t!134946) tb!82911))

(declare-fun result!99570 () Bool)

(assert (= result!99570 result!99386))

(assert (=> d!430101 t!134946))

(declare-fun tp!411972 () Bool)

(declare-fun b_and!100031 () Bool)

(assert (=> b!1465494 (= tp!411972 (and (=> t!134928 result!99552) (=> t!134932 result!99556) (=> t!134930 result!99554) (=> t!134938 result!99562) (=> t!134934 result!99558) (=> t!134942 result!99566) (=> t!134936 result!99560) (=> t!134946 result!99570) (=> t!134926 result!99550) (=> t!134940 result!99564) (=> t!134944 result!99568) b_and!100031))))

(declare-fun e!934820 () Bool)

(assert (=> b!1465494 (= e!934820 (and tp!411969 tp!411972))))

(declare-fun b!1465493 () Bool)

(declare-fun tp!411970 () Bool)

(declare-fun e!934822 () Bool)

(assert (=> b!1465493 (= e!934822 (and tp!411970 (inv!20294 (tag!2939 (h!20590 (t!134648 (rules!11706 other!32))))) (inv!20308 (transformation!2675 (h!20590 (t!134648 (rules!11706 other!32))))) e!934820))))

(declare-fun b!1465492 () Bool)

(declare-fun e!934819 () Bool)

(declare-fun tp!411971 () Bool)

(assert (=> b!1465492 (= e!934819 (and e!934822 tp!411971))))

(assert (=> b!1463500 (= tp!411838 e!934819)))

(assert (= b!1465493 b!1465494))

(assert (= b!1465492 b!1465493))

(assert (= (and b!1463500 ((_ is Cons!15189) (t!134648 (rules!11706 other!32)))) b!1465492))

(declare-fun m!1709133 () Bool)

(assert (=> b!1465493 m!1709133))

(declare-fun m!1709135 () Bool)

(assert (=> b!1465493 m!1709135))

(declare-fun e!934825 () Bool)

(assert (=> b!1463507 (= tp!411844 e!934825)))

(declare-fun b!1465507 () Bool)

(declare-fun tp!411987 () Bool)

(assert (=> b!1465507 (= e!934825 tp!411987)))

(declare-fun b!1465506 () Bool)

(declare-fun tp!411985 () Bool)

(declare-fun tp!411983 () Bool)

(assert (=> b!1465506 (= e!934825 (and tp!411985 tp!411983))))

(declare-fun b!1465505 () Bool)

(declare-fun tp_is_empty!6887 () Bool)

(assert (=> b!1465505 (= e!934825 tp_is_empty!6887)))

(declare-fun b!1465508 () Bool)

(declare-fun tp!411986 () Bool)

(declare-fun tp!411984 () Bool)

(assert (=> b!1465508 (= e!934825 (and tp!411986 tp!411984))))

(assert (= (and b!1463507 ((_ is ElementMatch!3989) (regex!2675 (h!20590 (rules!11706 thiss!10022))))) b!1465505))

(assert (= (and b!1463507 ((_ is Concat!6755) (regex!2675 (h!20590 (rules!11706 thiss!10022))))) b!1465506))

(assert (= (and b!1463507 ((_ is Star!3989) (regex!2675 (h!20590 (rules!11706 thiss!10022))))) b!1465507))

(assert (= (and b!1463507 ((_ is Union!3989) (regex!2675 (h!20590 (rules!11706 thiss!10022))))) b!1465508))

(declare-fun e!934826 () Bool)

(assert (=> b!1463501 (= tp!411837 e!934826)))

(declare-fun b!1465511 () Bool)

(declare-fun tp!411992 () Bool)

(assert (=> b!1465511 (= e!934826 tp!411992)))

(declare-fun b!1465510 () Bool)

(declare-fun tp!411990 () Bool)

(declare-fun tp!411988 () Bool)

(assert (=> b!1465510 (= e!934826 (and tp!411990 tp!411988))))

(declare-fun b!1465509 () Bool)

(assert (=> b!1465509 (= e!934826 tp_is_empty!6887)))

(declare-fun b!1465512 () Bool)

(declare-fun tp!411991 () Bool)

(declare-fun tp!411989 () Bool)

(assert (=> b!1465512 (= e!934826 (and tp!411991 tp!411989))))

(assert (= (and b!1463501 ((_ is ElementMatch!3989) (regex!2675 (h!20590 (rules!11706 other!32))))) b!1465509))

(assert (= (and b!1463501 ((_ is Concat!6755) (regex!2675 (h!20590 (rules!11706 other!32))))) b!1465510))

(assert (= (and b!1463501 ((_ is Star!3989) (regex!2675 (h!20590 (rules!11706 other!32))))) b!1465511))

(assert (= (and b!1463501 ((_ is Union!3989) (regex!2675 (h!20590 (rules!11706 other!32))))) b!1465512))

(declare-fun b_lambda!45705 () Bool)

(assert (= b_lambda!45677 (or d!428849 b_lambda!45705)))

(declare-fun bs!344785 () Bool)

(declare-fun d!430181 () Bool)

(assert (= bs!344785 (and d!430181 d!428849)))

(assert (=> bs!344785 (= (dynLambda!6938 lambda!63326 (h!20589 lt!506991)) (rulesProduceIndividualToken!1250 Lexer!2329 (rules!11706 thiss!10022) (h!20589 lt!506991)))))

(assert (=> bs!344785 m!1702235))

(assert (=> b!1464645 d!430181))

(check-sat (not b!1465179) (not d!430161) (not b!1463947) (not b!1463924) (not d!429499) (not b!1465476) (not b!1465417) (not b!1465123) (not b!1464635) (not bm!98534) (not b!1464713) (not d!429093) (not b!1463917) (not b!1464924) (not b!1464670) (not b!1465156) (not d!429507) (not b!1465244) (not b!1465415) (not b!1465142) (not b!1464892) (not b_next!37223) (not d!430073) (not b!1464711) (not b!1464234) (not b!1463869) (not d!429539) (not b!1464728) (not d!430105) (not b!1463489) (not d!429813) (not b!1464313) (not b!1464653) (not d!429489) (not b!1464279) (not b!1465426) (not b!1464701) (not d!430029) (not d!429573) (not d!429143) b_and!100025 (not b!1464237) (not b!1464586) (not b!1464531) (not d!429955) (not b!1464714) (not d!430117) (not tb!82713) (not d!429795) (not b!1465349) (not b!1464652) (not d!429611) (not b!1464640) (not b_next!37255) (not d!429789) (not b!1465122) (not d!429439) (not b!1464319) (not d!429763) (not b!1465109) (not b!1465177) (not b_next!37261) (not d!430153) (not d!430069) (not b!1465262) (not b!1464715) (not d!429229) (not d!429109) (not b!1464941) (not bs!344785) (not b!1465330) (not b!1463876) (not b!1464520) (not tb!82717) (not b!1463873) (not b!1464629) (not b!1463881) (not d!429803) (not b!1464230) (not d!429483) (not d!429555) (not b!1464224) (not b!1464732) (not d!429493) (not b!1464698) (not b!1464734) (not d!429545) (not d!429963) (not b!1465273) (not b!1465148) (not b!1463922) (not b!1465446) (not b_lambda!45691) (not d!429087) (not b!1464890) (not d!429321) (not d!429935) (not b!1465511) (not b!1463861) (not b!1465183) (not b!1463933) (not b!1465485) (not d!429939) (not d!430049) (not b!1463547) (not b!1465175) (not b!1465481) (not d!429135) (not b!1464761) (not b!1465159) (not b!1463952) (not b!1463774) (not d!429089) (not b!1463862) (not b!1465272) (not b!1465298) (not b!1464231) (not tb!82701) (not b!1463872) (not d!430131) (not d!430085) (not d!429147) (not d!429957) (not b!1465270) (not b!1465071) (not b!1465226) (not b!1464737) (not b!1463961) (not bm!98474) (not b!1464952) (not b!1464900) (not b!1464718) (not b!1465473) (not b!1463880) (not d!429115) (not b!1465236) (not b!1464707) (not d!429625) (not d!429533) (not b_lambda!45695) (not d!429791) (not b!1464151) (not d!429777) (not b!1465409) (not b!1465435) (not b!1465225) (not d!429547) (not b!1464628) (not bm!98536) (not b!1465457) (not d!429103) (not d!429441) (not b!1464667) (not d!429293) (not d!430121) (not b!1464210) (not d!430081) (not bm!98552) (not b!1465448) (not b!1463549) (not d!429785) (not d!429773) (not b!1464506) (not b_next!37251) (not b!1463920) (not d!430119) (not b!1464918) (not d!429075) (not b!1465268) (not d!429953) (not b!1464602) (not b!1465431) (not b!1465343) (not d!429999) (not d!429155) (not b_next!37225) (not b!1465230) (not b!1464893) (not b!1464909) (not bm!98519) (not d!429145) (not b!1465239) (not b!1464953) (not b!1465302) (not d!429595) (not d!430137) (not b!1464684) (not d!429961) (not b!1464146) (not d!429101) (not bm!98483) (not b!1464894) (not b!1465220) (not d!429471) (not b!1465140) (not b!1463780) (not d!429279) (not tb!82725) (not d!430071) b_and!100019 (not b!1465388) (not b!1463963) (not b!1463840) (not bm!98517) (not b!1464650) (not b_lambda!45665) (not d!429099) (not b!1465508) (not b!1464318) (not b!1464147) (not b!1465297) (not b!1464638) (not b!1465342) (not d!430169) (not d!429787) (not b!1464878) (not d!430145) (not b!1465438) (not b!1464634) (not b!1464659) (not d!429977) (not b_next!37249) (not b!1465271) (not d!429991) (not b!1463809) (not d!429265) (not bm!98551) (not b!1465161) (not tb!82669) (not b!1464951) (not d!429461) (not b!1465420) (not b!1464229) (not d!430077) (not d!430157) (not bm!98473) (not bm!98550) (not d!430109) (not b!1463868) (not b!1465072) (not b!1465461) (not b!1464693) (not bm!98544) (not b!1464649) (not b!1464942) (not b!1464227) (not b!1464612) (not b!1464320) (not b!1464708) (not b_lambda!45701) (not b!1465128) (not d!429799) (not d!429061) (not d!430051) (not d!429095) (not d!429623) (not d!429563) (not b!1464518) (not b!1465238) (not d!429273) (not b!1463960) (not b!1464687) (not b!1464143) (not b!1465269) (not b!1463542) (not b!1465190) (not b!1464244) (not b!1463877) (not bm!98520) (not b!1465414) (not b!1464738) (not d!429097) (not d!430177) (not b!1464161) (not b!1465327) (not b!1463931) (not b!1465191) (not b!1465399) (not b!1463956) (not d!429309) (not b!1465241) (not b!1464657) (not d!429223) (not b!1465482) (not d!429759) (not d!429105) (not d!429049) (not d!430107) (not b!1465324) (not b!1465117) (not b!1465351) (not b!1465224) (not b!1465125) (not d!429285) (not b!1465267) (not b!1463955) (not d!430143) (not b!1464721) (not d!429287) (not b!1465483) (not b!1465115) (not b!1465222) (not b!1465301) b_and!100027 (not b!1464928) (not b!1464685) (not b!1465375) (not b!1465405) (not d!429965) (not b!1465181) (not b!1465512) (not b!1463782) (not d!429523) (not b!1464647) (not d!429973) (not b!1465456) (not d!430165) (not b!1463958) (not b!1465182) (not d!430111) (not b!1464529) (not d!429151) (not d!430149) (not b!1464275) (not b!1464663) (not b!1464630) (not b!1464153) (not b!1464239) (not d!429255) (not d!430155) (not b!1464219) (not b!1465243) (not b!1463540) (not b!1464505) (not d!429491) (not d!429587) (not b!1465452) (not b!1464719) (not b!1465506) (not b!1464899) (not b!1465263) (not b_next!37259) (not b!1464927) (not d!428985) (not d!429617) (not b!1464895) (not d!429117) (not d!430173) (not d!429943) (not b!1463865) (not b!1464240) (not d!429797) (not b!1463777) (not d!429985) b_and!99905 (not d!429495) (not d!429137) (not d!430141) (not b!1464712) (not d!429153) (not d!429247) (not b_next!37229) (not b!1465489) (not d!429521) (not b!1463742) (not d!430127) (not d!429549) (not b!1463934) (not b!1464891) (not d!429947) (not b!1464235) (not d!429593) (not d!429159) (not b_lambda!45679) (not b!1465449) (not b!1465419) (not d!430027) b_and!100003 b_and!100001 (not b!1464588) (not d!429133) (not b!1464671) (not b!1463776) (not d!429129) (not b!1463891) (not d!429277) (not b_next!37257) (not b!1464280) (not b!1465187) (not bm!98533) (not b!1465474) (not b_lambda!45675) (not b!1465329) (not d!430087) (not b!1464929) (not d!429065) (not b!1465300) (not b!1464706) (not d!429559) (not b!1463843) (not d!429525) (not bm!98531) (not b!1465406) (not b!1465445) (not b!1465395) (not b!1464930) (not d!429591) (not b!1463503) (not d!430079) (not b!1465472) (not b_lambda!45693) (not d!429583) b_and!99909 (not d!430061) (not b!1463923) (not b!1464521) (not d!429267) (not d!429053) (not b!1465350) (not b!1465458) (not bm!98532) (not b!1465119) (not b_lambda!45705) (not b!1463957) (not d!429529) (not d!429121) (not bm!98475) (not d!429149) (not b!1464695) (not b!1465153) b_and!100029 (not b_lambda!45697) (not b!1464312) (not d!429807) (not d!430179) (not d!429761) (not d!429307) (not b!1464315) (not b!1463871) (not d!429317) (not b!1465112) (not b!1464255) (not d!429793) (not d!429775) (not b!1464750) (not b!1465439) (not b!1465127) (not b!1464877) (not b!1464954) (not b!1464218) (not bm!98553) (not b!1464697) (not b!1463866) (not b!1465411) (not b!1464906) (not b!1465398) (not b!1464694) (not b!1464310) (not b!1464591) (not b!1465249) (not b!1464683) (not b!1465507) (not d!430075) (not b!1464709) (not b!1465328) (not b!1465232) (not d!430063) (not d!429295) (not b!1465430) (not b!1465170) (not b!1464213) (not b!1464206) (not b!1464753) (not b!1464876) (not b!1465479) (not b!1464207) (not b!1465231) (not b!1465152) (not b!1464309) (not d!430103) (not b!1464154) (not d!430067) (not b!1465492) (not b!1465114) (not d!429753) (not b!1465264) (not b!1464756) (not b!1465408) (not d!429227) (not b!1463925) (not b_next!37247) (not d!429989) (not bm!98522) (not b!1463926) (not b!1464166) (not d!430041) (not d!430123) (not b!1464625) (not d!430171) (not d!429755) (not b!1465118) (not b!1465235) (not b!1465451) (not b!1465266) (not b!1465237) (not b!1465234) (not d!429231) (not b!1465412) b_and!100021 (not b!1465162) (not d!429141) (not b!1464692) (not b!1463746) (not d!429487) (not b!1464316) (not b!1464747) (not d!429081) (not b!1464627) (not b!1465389) (not b!1463892) (not d!429443) (not d!429261) (not b!1464730) (not b!1463745) (not d!430045) (not d!429281) (not d!429107) (not d!429239) (not b!1464517) (not b!1465227) (not b!1465250) (not d!430031) (not tb!82693) (not b!1464238) (not b!1464955) (not b!1464751) (not b!1464317) (not b!1465490) (not b!1465422) (not b!1464745) (not b!1465454) (not b!1464936) (not b!1464204) (not b!1464887) (not b!1463741) (not b!1465144) (not b!1465480) (not b!1463928) (not b!1465459) (not b!1465158) (not b!1464722) (not d!429535) (not d!429801) (not b!1464940) (not b!1463878) (not b!1464222) (not b!1464939) (not b!1464164) (not d!430135) (not d!430151) (not tb!82721) (not b!1465443) (not d!430139) (not b!1464307) (not d!429769) (not b!1463950) (not d!429609) (not d!430023) (not b!1465121) (not d!429811) b_and!100023 (not b_next!37227) (not b!1464655) (not b!1463810) (not d!429111) (not d!428983) (not b!1463744) (not bm!98537) (not d!429543) (not b!1465305) (not b!1464948) (not b!1463927) (not b!1464624) (not b!1463962) (not b!1463855) (not b!1465169) (not d!429959) (not b!1464873) (not b!1464673) (not b!1463581) (not b!1464875) (not b!1464760) (not d!430059) (not b!1464293) (not d!429059) (not b!1463837) (not d!429565) (not b!1465460) (not b_next!37253) (not b!1464590) (not b!1465441) (not b!1463943) (not d!429993) (not b!1464221) (not bm!98554) (not b!1464668) (not b!1465447) (not tb!82665) (not b!1464202) (not d!429995) (not d!429253) tp_is_empty!6887 (not b!1465382) (not b!1463854) (not b!1464168) (not d!429779) (not b!1465440) (not bm!98538) (not d!430047) (not d!429125) (not d!429615) (not b!1464626) (not tb!82689) (not b!1463919) (not b!1464666) (not b!1464276) (not d!429251) (not b!1464314) (not d!429139) (not d!429567) (not b!1464198) (not b_lambda!45685) (not b!1465510) (not bm!98549) (not b!1464165) (not b!1465322) (not d!430163) (not b!1465390) (not b!1464881) (not b!1465325) (not d!429551) (not b!1464681) (not b!1465242) (not b!1465168) (not b!1465120) (not d!429289) (not b!1464672) (not b!1464874) (not b!1465113) (not b!1464623) (not d!429249) (not d!429613) (not d!429771) (not d!430125) (not d!429585) (not d!429527) (not b!1464678) (not b_lambda!45663) (not b!1463863) (not b!1464686) (not b!1465150) (not tb!82733) (not d!430057) (not b!1464735) (not b!1464527) (not b!1464637) (not b!1465229) (not b!1465434) (not b!1465126) (not d!429561) (not d!429113) (not d!429127) (not d!430159) (not b!1465370) (not b!1465486) (not b!1465488) (not b!1463944) (not b!1464754) (not b!1463781) (not b!1463775) (not d!429263) (not b!1465139) (not b!1464896) (not b!1465410) (not b!1464311) (not b!1463945) (not bm!98546) (not d!429805) (not b!1465407) (not b!1464703) (not b!1464680) (not d!429571) (not b!1464661) (not b_lambda!45657) (not b!1465189) (not d!429607) (not b!1465247) (not b!1464145) (not b!1463929) (not d!429085) (not b!1465428) (not d!429459) (not d!430083) (not b!1465221) (not b!1464699) (not b!1463858) (not b!1465403) (not d!430053) (not b!1464682) (not b!1464749) (not d!429457) (not bm!98535) (not d!429987) (not b!1465251) (not d!429055) (not d!429057) (not b!1465397) (not b!1463898) (not b!1463893) (not tb!82653) (not bm!98527) (not b!1465110) (not b!1465484) (not b!1465493) (not b!1464256) (not d!429589) (not d!429915) (not b!1464294) (not d!430065) (not b!1465321) (not b!1465111) (not b!1465265) (not b!1465246) (not b!1465323) (not b!1464646) (not d!430175) (not d!430055) (not b!1463772) (not b!1464587) (not b!1464225) (not b!1465416) (not b!1464308) b_and!100031 (not b!1464228) (not d!429291) b_and!100017 (not bm!98470) (not b!1465442) (not b!1464155) (not b!1463918) (not d!430101) (not b!1463953) (not b!1464915) (not b!1464252) (not b!1463932) (not d!429765) (not b!1465436) (not d!429511))
(check-sat (not b_next!37251) (not b_next!37225) b_and!100019 (not b_next!37249) b_and!100027 (not b_next!37259) (not b_next!37247) b_and!100021 (not b_next!37253) (not b_next!37223) b_and!100025 (not b_next!37255) (not b_next!37261) b_and!99905 (not b_next!37229) (not b_next!37257) b_and!100003 b_and!100001 b_and!99909 b_and!100029 b_and!100023 (not b_next!37227) b_and!100031 b_and!100017)
