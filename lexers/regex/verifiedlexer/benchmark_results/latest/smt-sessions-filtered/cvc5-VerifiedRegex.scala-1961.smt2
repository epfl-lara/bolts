; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!99128 () Bool)

(assert start!99128)

(declare-fun b!1144866 () Bool)

(assert (=> b!1144866 true))

(declare-fun b!1144859 () Bool)

(declare-fun res!514811 () Bool)

(declare-fun e!731747 () Bool)

(assert (=> b!1144859 (=> (not res!514811) (not e!731747))))

(declare-datatypes ((List!11059 0))(
  ( (Nil!11035) (Cons!11035 (h!16436 Int) (t!107927 List!11059)) )
))
(declare-datatypes ((IArray!7089 0))(
  ( (IArray!7090 (innerList!3602 List!11059)) )
))
(declare-datatypes ((Conc!3542 0))(
  ( (Node!3542 (left!9593 Conc!3542) (right!9923 Conc!3542) (csize!7314 Int) (cheight!3753 Int)) (Leaf!5504 (xs!6243 IArray!7089) (csize!7315 Int)) (Empty!3542) )
))
(declare-datatypes ((BalanceConc!7106 0))(
  ( (BalanceConc!7107 (c!192286 Conc!3542)) )
))
(declare-fun indices!2 () BalanceConc!7106)

(declare-fun size!8652 (BalanceConc!7106) Int)

(assert (=> b!1144859 (= res!514811 (>= (size!8652 indices!2) 2))))

(declare-datatypes ((List!11060 0))(
  ( (Nil!11036) (Cons!11036 (h!16437 (_ BitVec 16)) (t!107928 List!11060)) )
))
(declare-datatypes ((TokenValue!1968 0))(
  ( (FloatLiteralValue!3936 (text!14221 List!11060)) (TokenValueExt!1967 (__x!7652 Int)) (Broken!9840 (value!62179 List!11060)) (Object!1991) (End!1968) (Def!1968) (Underscore!1968) (Match!1968) (Else!1968) (Error!1968) (Case!1968) (If!1968) (Extends!1968) (Abstract!1968) (Class!1968) (Val!1968) (DelimiterValue!3936 (del!2028 List!11060)) (KeywordValue!1974 (value!62180 List!11060)) (CommentValue!3936 (value!62181 List!11060)) (WhitespaceValue!3936 (value!62182 List!11060)) (IndentationValue!1968 (value!62183 List!11060)) (String!13429) (Int32!1968) (Broken!9841 (value!62184 List!11060)) (Boolean!1969) (Unit!16956) (OperatorValue!1971 (op!2028 List!11060)) (IdentifierValue!3936 (value!62185 List!11060)) (IdentifierValue!3937 (value!62186 List!11060)) (WhitespaceValue!3937 (value!62187 List!11060)) (True!3936) (False!3936) (Broken!9842 (value!62188 List!11060)) (Broken!9843 (value!62189 List!11060)) (True!3937) (RightBrace!1968) (RightBracket!1968) (Colon!1968) (Null!1968) (Comma!1968) (LeftBracket!1968) (False!3937) (LeftBrace!1968) (ImaginaryLiteralValue!1968 (text!14222 List!11060)) (StringLiteralValue!5904 (value!62190 List!11060)) (EOFValue!1968 (value!62191 List!11060)) (IdentValue!1968 (value!62192 List!11060)) (DelimiterValue!3937 (value!62193 List!11060)) (DedentValue!1968 (value!62194 List!11060)) (NewLineValue!1968 (value!62195 List!11060)) (IntegerValue!5904 (value!62196 (_ BitVec 32)) (text!14223 List!11060)) (IntegerValue!5905 (value!62197 Int) (text!14224 List!11060)) (Times!1968) (Or!1968) (Equal!1968) (Minus!1968) (Broken!9844 (value!62198 List!11060)) (And!1968) (Div!1968) (LessEqual!1968) (Mod!1968) (Concat!5140) (Not!1968) (Plus!1968) (SpaceValue!1968 (value!62199 List!11060)) (IntegerValue!5906 (value!62200 Int) (text!14225 List!11060)) (StringLiteralValue!5905 (text!14226 List!11060)) (FloatLiteralValue!3937 (text!14227 List!11060)) (BytesLiteralValue!1968 (value!62201 List!11060)) (CommentValue!3937 (value!62202 List!11060)) (StringLiteralValue!5906 (value!62203 List!11060)) (ErrorTokenValue!1968 (msg!2029 List!11060)) )
))
(declare-datatypes ((Regex!3172 0))(
  ( (ElementMatch!3172 (c!192287 (_ BitVec 16))) (Concat!5141 (regOne!6856 Regex!3172) (regTwo!6856 Regex!3172)) (EmptyExpr!3172) (Star!3172 (reg!3501 Regex!3172)) (EmptyLang!3172) (Union!3172 (regOne!6857 Regex!3172) (regTwo!6857 Regex!3172)) )
))
(declare-datatypes ((String!13430 0))(
  ( (String!13431 (value!62204 String)) )
))
(declare-datatypes ((IArray!7091 0))(
  ( (IArray!7092 (innerList!3603 List!11060)) )
))
(declare-datatypes ((Conc!3543 0))(
  ( (Node!3543 (left!9594 Conc!3543) (right!9924 Conc!3543) (csize!7316 Int) (cheight!3754 Int)) (Leaf!5505 (xs!6244 IArray!7091) (csize!7317 Int)) (Empty!3543) )
))
(declare-datatypes ((BalanceConc!7108 0))(
  ( (BalanceConc!7109 (c!192288 Conc!3543)) )
))
(declare-datatypes ((TokenValueInjection!3636 0))(
  ( (TokenValueInjection!3637 (toValue!2999 Int) (toChars!2858 Int)) )
))
(declare-datatypes ((Rule!3604 0))(
  ( (Rule!3605 (regex!1902 Regex!3172) (tag!2164 String!13430) (isSeparator!1902 Bool) (transformation!1902 TokenValueInjection!3636)) )
))
(declare-datatypes ((Token!3466 0))(
  ( (Token!3467 (value!62205 TokenValue!1968) (rule!3323 Rule!3604) (size!8653 Int) (originalCharacters!2456 List!11060)) )
))
(declare-datatypes ((List!11061 0))(
  ( (Nil!11037) (Cons!11037 (h!16438 Token!3466) (t!107929 List!11061)) )
))
(declare-datatypes ((IArray!7093 0))(
  ( (IArray!7094 (innerList!3604 List!11061)) )
))
(declare-datatypes ((Conc!3544 0))(
  ( (Node!3544 (left!9595 Conc!3544) (right!9925 Conc!3544) (csize!7318 Int) (cheight!3755 Int)) (Leaf!5506 (xs!6245 IArray!7093) (csize!7319 Int)) (Empty!3544) )
))
(declare-datatypes ((List!11062 0))(
  ( (Nil!11038) (Cons!11038 (h!16439 Rule!3604) (t!107930 List!11062)) )
))
(declare-datatypes ((BalanceConc!7110 0))(
  ( (BalanceConc!7111 (c!192289 Conc!3544)) )
))
(declare-datatypes ((PrintableTokens!490 0))(
  ( (PrintableTokens!491 (rules!9313 List!11062) (tokens!1487 BalanceConc!7110)) )
))
(declare-fun call!81573 () PrintableTokens!490)

(declare-fun bm!81568 () Bool)

(declare-fun lt!387207 () Int)

(declare-fun lt!387208 () Int)

(declare-fun c!192285 () Bool)

(declare-fun pt!21 () PrintableTokens!490)

(declare-fun slice!106 (PrintableTokens!490 Int Int) PrintableTokens!490)

(assert (=> bm!81568 (= call!81573 (slice!106 pt!21 (ite c!192285 lt!387208 lt!387207) (ite c!192285 (+ 1 lt!387207) (+ 1 lt!387208))))))

(declare-fun b!1144860 () Bool)

(declare-fun e!731744 () Bool)

(declare-fun tp!331830 () Bool)

(declare-fun inv!14380 (Conc!3542) Bool)

(assert (=> b!1144860 (= e!731744 (and (inv!14380 (c!192286 indices!2)) tp!331830))))

(declare-fun b!1144861 () Bool)

(declare-fun e!731742 () PrintableTokens!490)

(declare-fun usesJsonRules!0 (PrintableTokens!490) Bool)

(assert (=> b!1144861 (= e!731747 (not (usesJsonRules!0 e!731742)))))

(assert (=> b!1144861 (= c!192285 (<= lt!387208 lt!387207))))

(declare-fun apply!2339 (BalanceConc!7106 Int) Int)

(assert (=> b!1144861 (= lt!387207 (apply!2339 indices!2 1))))

(assert (=> b!1144861 (= lt!387208 (apply!2339 indices!2 0))))

(declare-fun res!514813 () Bool)

(assert (=> start!99128 (=> (not res!514813) (not e!731747))))

(declare-fun size!108 () Int)

(declare-fun size!8654 (PrintableTokens!490) Int)

(assert (=> start!99128 (= res!514813 (= (size!8654 pt!21) size!108))))

(assert (=> start!99128 e!731747))

(declare-fun e!731745 () Bool)

(declare-fun inv!14381 (PrintableTokens!490) Bool)

(assert (=> start!99128 (and (inv!14381 pt!21) e!731745)))

(assert (=> start!99128 true))

(declare-fun inv!14382 (BalanceConc!7106) Bool)

(assert (=> start!99128 (and (inv!14382 indices!2) e!731744)))

(declare-datatypes ((List!11063 0))(
  ( (Nil!11039) (Cons!11039 (h!16440 PrintableTokens!490) (t!107931 List!11063)) )
))
(declare-datatypes ((IArray!7095 0))(
  ( (IArray!7096 (innerList!3605 List!11063)) )
))
(declare-datatypes ((Conc!3545 0))(
  ( (Node!3545 (left!9596 Conc!3545) (right!9926 Conc!3545) (csize!7320 Int) (cheight!3756 Int)) (Leaf!5507 (xs!6246 IArray!7095) (csize!7321 Int)) (Empty!3545) )
))
(declare-datatypes ((BalanceConc!7112 0))(
  ( (BalanceConc!7113 (c!192290 Conc!3545)) )
))
(declare-fun acc!225 () BalanceConc!7112)

(declare-fun e!731746 () Bool)

(declare-fun inv!14383 (BalanceConc!7112) Bool)

(assert (=> start!99128 (and (inv!14383 acc!225) e!731746)))

(declare-fun b!1144862 () Bool)

(declare-fun tp!331827 () Bool)

(declare-fun inv!14384 (Conc!3545) Bool)

(assert (=> b!1144862 (= e!731746 (and (inv!14384 (c!192290 acc!225)) tp!331827))))

(declare-fun b!1144863 () Bool)

(declare-fun e!731743 () Bool)

(declare-fun tp!331828 () Bool)

(declare-fun inv!14385 (Conc!3544) Bool)

(assert (=> b!1144863 (= e!731743 (and (inv!14385 (c!192289 (tokens!1487 pt!21))) tp!331828))))

(declare-fun b!1144864 () Bool)

(assert (=> b!1144864 (= e!731742 call!81573)))

(declare-fun b!1144865 () Bool)

(declare-fun tp!331829 () Bool)

(declare-fun inv!14386 (BalanceConc!7110) Bool)

(assert (=> b!1144865 (= e!731745 (and tp!331829 (inv!14386 (tokens!1487 pt!21)) e!731743))))

(declare-fun res!514812 () Bool)

(assert (=> b!1144866 (=> (not res!514812) (not e!731747))))

(declare-fun lambda!46032 () Int)

(declare-fun forall!2734 (BalanceConc!7106 Int) Bool)

(assert (=> b!1144866 (= res!514812 (forall!2734 indices!2 lambda!46032))))

(declare-fun b!1144867 () Bool)

(assert (=> b!1144867 (= e!731742 call!81573)))

(declare-fun b!1144868 () Bool)

(declare-fun res!514814 () Bool)

(assert (=> b!1144868 (=> (not res!514814) (not e!731747))))

(assert (=> b!1144868 (= res!514814 (usesJsonRules!0 pt!21))))

(declare-fun b!1144869 () Bool)

(declare-fun res!514815 () Bool)

(assert (=> b!1144869 (=> (not res!514815) (not e!731747))))

(declare-fun lambda!46033 () Int)

(declare-fun forall!2735 (BalanceConc!7112 Int) Bool)

(assert (=> b!1144869 (= res!514815 (forall!2735 acc!225 lambda!46033))))

(assert (= (and start!99128 res!514813) b!1144866))

(assert (= (and b!1144866 res!514812) b!1144868))

(assert (= (and b!1144868 res!514814) b!1144869))

(assert (= (and b!1144869 res!514815) b!1144859))

(assert (= (and b!1144859 res!514811) b!1144861))

(assert (= (and b!1144861 c!192285) b!1144864))

(assert (= (and b!1144861 (not c!192285)) b!1144867))

(assert (= (or b!1144864 b!1144867) bm!81568))

(assert (= b!1144865 b!1144863))

(assert (= start!99128 b!1144865))

(assert (= start!99128 b!1144860))

(assert (= start!99128 b!1144862))

(declare-fun m!1305669 () Bool)

(assert (=> start!99128 m!1305669))

(declare-fun m!1305671 () Bool)

(assert (=> start!99128 m!1305671))

(declare-fun m!1305673 () Bool)

(assert (=> start!99128 m!1305673))

(declare-fun m!1305675 () Bool)

(assert (=> start!99128 m!1305675))

(declare-fun m!1305677 () Bool)

(assert (=> b!1144865 m!1305677))

(declare-fun m!1305679 () Bool)

(assert (=> b!1144869 m!1305679))

(declare-fun m!1305681 () Bool)

(assert (=> b!1144868 m!1305681))

(declare-fun m!1305683 () Bool)

(assert (=> b!1144862 m!1305683))

(declare-fun m!1305685 () Bool)

(assert (=> b!1144863 m!1305685))

(declare-fun m!1305687 () Bool)

(assert (=> b!1144861 m!1305687))

(declare-fun m!1305689 () Bool)

(assert (=> b!1144861 m!1305689))

(declare-fun m!1305691 () Bool)

(assert (=> b!1144861 m!1305691))

(declare-fun m!1305693 () Bool)

(assert (=> b!1144866 m!1305693))

(declare-fun m!1305695 () Bool)

(assert (=> b!1144860 m!1305695))

(declare-fun m!1305697 () Bool)

(assert (=> b!1144859 m!1305697))

(declare-fun m!1305699 () Bool)

(assert (=> bm!81568 m!1305699))

(push 1)

(assert (not b!1144868))

(assert (not bm!81568))

(assert (not b!1144869))

(assert (not b!1144860))

(assert (not b!1144862))

(assert (not b!1144859))

(assert (not b!1144866))

(assert (not b!1144865))

(assert (not b!1144863))

(assert (not start!99128))

(assert (not b!1144861))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1144956 () Bool)

(declare-fun e!731813 () Bool)

(assert (=> b!1144956 (= e!731813 true)))

(declare-fun b!1144955 () Bool)

(declare-fun e!731812 () Bool)

(assert (=> b!1144955 (= e!731812 e!731813)))

(declare-fun d!325862 () Bool)

(assert (=> d!325862 e!731812))

(assert (= b!1144955 b!1144956))

(assert (= d!325862 b!1144955))

(declare-fun b!1144935 () Bool)

(declare-fun e!731802 () Bool)

(declare-fun e!731801 () Bool)

(assert (=> b!1144935 (= e!731802 e!731801)))

(declare-fun res!514870 () Bool)

(assert (=> b!1144935 (=> (not res!514870) (not e!731801))))

(declare-fun lt!387366 () List!11061)

(declare-datatypes ((LexerInterface!1602 0))(
  ( (LexerInterfaceExt!1599 (__x!7654 Int)) (Lexer!1600) )
))
(declare-fun lt!387369 () LexerInterface!1602)

(declare-fun rulesProduceIndividualToken!649 (LexerInterface!1602 List!11062 Token!3466) Bool)

(assert (=> b!1144935 (= res!514870 (rulesProduceIndividualToken!649 lt!387369 (rules!9313 pt!21) (h!16438 lt!387366)))))

(declare-fun e!731803 () Bool)

(assert (=> d!325862 e!731803))

(declare-fun res!514863 () Bool)

(assert (=> d!325862 (=> (not res!514863) (not e!731803))))

(declare-fun lt!387409 () PrintableTokens!490)

(assert (=> d!325862 (= res!514863 (= (rules!9313 lt!387409) (rules!9313 pt!21)))))

(declare-fun slice!108 (BalanceConc!7110 Int Int) BalanceConc!7110)

(assert (=> d!325862 (= lt!387409 (PrintableTokens!491 (rules!9313 pt!21) (slice!108 (tokens!1487 pt!21) (ite c!192285 lt!387208 lt!387207) (ite c!192285 (+ 1 lt!387207) (+ 1 lt!387208)))))))

(declare-datatypes ((Unit!16958 0))(
  ( (Unit!16959) )
))
(declare-fun lt!387423 () Unit!16958)

(declare-fun lt!387400 () Unit!16958)

(assert (=> d!325862 (= lt!387423 lt!387400)))

(declare-fun e!731796 () Bool)

(assert (=> d!325862 e!731796))

(declare-fun res!514874 () Bool)

(assert (=> d!325862 (=> (not res!514874) (not e!731796))))

(declare-fun lt!387364 () List!11061)

(declare-fun e!731804 () Bool)

(declare-fun lt!387379 () Int)

(declare-fun lt!387385 () LexerInterface!1602)

(declare-fun rulesProduceEachTokenIndividuallyList!477 (LexerInterface!1602 List!11062 List!11061) Bool)

(declare-fun take!26 (List!11061 Int) List!11061)

(assert (=> d!325862 (= res!514874 (= (rulesProduceEachTokenIndividuallyList!477 lt!387385 (rules!9313 pt!21) (take!26 lt!387364 lt!387379)) e!731804))))

(declare-fun res!514867 () Bool)

(assert (=> d!325862 (=> res!514867 e!731804)))

(declare-fun lt!387418 () List!11061)

(assert (=> d!325862 (= res!514867 (not (is-Cons!11037 lt!387418)))))

(assert (=> d!325862 (= lt!387418 (take!26 lt!387364 lt!387379))))

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!20 (LexerInterface!1602 List!11061 Int List!11062) Unit!16958)

(assert (=> d!325862 (= lt!387400 (tokensListTwoByTwoPredicateSeparableTokensTakeList!20 lt!387385 lt!387364 lt!387379 (rules!9313 pt!21)))))

(assert (=> d!325862 (= lt!387379 (- (ite c!192285 (+ 1 lt!387207) (+ 1 lt!387208)) (ite c!192285 lt!387208 lt!387207)))))

(declare-fun drop!428 (List!11061 Int) List!11061)

(declare-fun list!4040 (BalanceConc!7110) List!11061)

(assert (=> d!325862 (= lt!387364 (drop!428 (list!4040 (tokens!1487 pt!21)) (ite c!192285 lt!387208 lt!387207)))))

(assert (=> d!325862 (= lt!387385 Lexer!1600)))

(declare-fun lt!387363 () Unit!16958)

(declare-fun lt!387365 () Unit!16958)

(assert (=> d!325862 (= lt!387363 lt!387365)))

(declare-fun lt!387381 () List!11061)

(declare-fun lambda!46052 () Int)

(declare-fun forall!2738 (List!11061 Int) Bool)

(assert (=> d!325862 (forall!2738 lt!387381 lambda!46052)))

(declare-fun lt!387424 () List!11061)

(declare-fun lemmaForallSubseq!79 (List!11061 List!11061 Int) Unit!16958)

(assert (=> d!325862 (= lt!387365 (lemmaForallSubseq!79 lt!387381 lt!387424 lambda!46052))))

(assert (=> d!325862 (= lt!387424 (list!4040 (tokens!1487 pt!21)))))

(assert (=> d!325862 (= lt!387381 (drop!428 (list!4040 (tokens!1487 pt!21)) (ite c!192285 lt!387208 lt!387207)))))

(declare-fun lt!387410 () Unit!16958)

(declare-fun lt!387374 () Unit!16958)

(assert (=> d!325862 (= lt!387410 lt!387374)))

(declare-fun lt!387370 () List!11061)

(declare-fun subseq!179 (List!11061 List!11061) Bool)

(assert (=> d!325862 (subseq!179 (drop!428 lt!387370 (ite c!192285 lt!387208 lt!387207)) lt!387370)))

(declare-fun lemmaDropSubseq!20 (List!11061 Int) Unit!16958)

(assert (=> d!325862 (= lt!387374 (lemmaDropSubseq!20 lt!387370 (ite c!192285 lt!387208 lt!387207)))))

(assert (=> d!325862 (= lt!387370 (list!4040 (tokens!1487 pt!21)))))

(declare-fun lt!387406 () Unit!16958)

(declare-fun lt!387386 () Unit!16958)

(assert (=> d!325862 (= lt!387406 lt!387386)))

(declare-fun e!731797 () Bool)

(assert (=> d!325862 e!731797))

(declare-fun res!514868 () Bool)

(assert (=> d!325862 (=> (not res!514868) (not e!731797))))

(declare-fun lt!387395 () LexerInterface!1602)

(declare-fun lt!387376 () List!11061)

(declare-fun e!731798 () Bool)

(assert (=> d!325862 (= res!514868 (= (rulesProduceEachTokenIndividuallyList!477 lt!387395 (rules!9313 pt!21) (drop!428 lt!387376 (ite c!192285 lt!387208 lt!387207))) e!731798))))

(declare-fun res!514861 () Bool)

(assert (=> d!325862 (=> res!514861 e!731798)))

(declare-fun lt!387382 () List!11061)

(assert (=> d!325862 (= res!514861 (not (is-Cons!11037 lt!387382)))))

(assert (=> d!325862 (= lt!387382 (drop!428 lt!387376 (ite c!192285 lt!387208 lt!387207)))))

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!20 (LexerInterface!1602 List!11061 Int List!11062) Unit!16958)

(assert (=> d!325862 (= lt!387386 (tokensListTwoByTwoPredicateSeparableTokensDropList!20 lt!387395 lt!387376 (ite c!192285 lt!387208 lt!387207) (rules!9313 pt!21)))))

(assert (=> d!325862 (= lt!387376 (list!4040 (tokens!1487 pt!21)))))

(assert (=> d!325862 (= lt!387395 Lexer!1600)))

(declare-fun lt!387415 () Unit!16958)

(declare-fun Unit!16960 () Unit!16958)

(assert (=> d!325862 (= lt!387415 Unit!16960)))

(declare-fun e!731795 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!31 (LexerInterface!1602 BalanceConc!7110 Int List!11062) Bool)

(assert (=> d!325862 (= (tokensListTwoByTwoPredicateSeparable!31 Lexer!1600 (tokens!1487 pt!21) 0 (rules!9313 pt!21)) e!731795)))

(declare-fun res!514873 () Bool)

(assert (=> d!325862 (=> res!514873 e!731795)))

(declare-fun lt!387393 () Int)

(declare-fun size!8658 (BalanceConc!7110) Int)

(assert (=> d!325862 (= res!514873 (not (< lt!387393 (- (size!8658 (tokens!1487 pt!21)) 1))))))

(assert (=> d!325862 (= lt!387393 0)))

(declare-fun lt!387384 () LexerInterface!1602)

(assert (=> d!325862 (= lt!387384 Lexer!1600)))

(declare-fun lt!387359 () Unit!16958)

(declare-fun Unit!16961 () Unit!16958)

(assert (=> d!325862 (= lt!387359 Unit!16961)))

(declare-fun separableTokens!71 (LexerInterface!1602 BalanceConc!7110 List!11062) Bool)

(assert (=> d!325862 (= (separableTokens!71 Lexer!1600 (slice!108 (tokens!1487 pt!21) (ite c!192285 lt!387208 lt!387207) (ite c!192285 (+ 1 lt!387207) (+ 1 lt!387208))) (rules!9313 pt!21)) (tokensListTwoByTwoPredicateSeparable!31 Lexer!1600 (slice!108 (tokens!1487 pt!21) (ite c!192285 lt!387208 lt!387207) (ite c!192285 (+ 1 lt!387207) (+ 1 lt!387208))) 0 (rules!9313 pt!21)))))

(declare-fun lt!387422 () Unit!16958)

(declare-fun Unit!16962 () Unit!16958)

(assert (=> d!325862 (= lt!387422 Unit!16962)))

(assert (=> d!325862 (= (rulesProduceEachTokenIndividuallyList!477 Lexer!1600 (rules!9313 pt!21) (list!4040 (slice!108 (tokens!1487 pt!21) (ite c!192285 lt!387208 lt!387207) (ite c!192285 (+ 1 lt!387207) (+ 1 lt!387208))))) e!731802)))

(declare-fun res!514864 () Bool)

(assert (=> d!325862 (=> res!514864 e!731802)))

(assert (=> d!325862 (= res!514864 (not (is-Cons!11037 lt!387366)))))

(assert (=> d!325862 (= lt!387366 (list!4040 (slice!108 (tokens!1487 pt!21) (ite c!192285 lt!387208 lt!387207) (ite c!192285 (+ 1 lt!387207) (+ 1 lt!387208)))))))

(assert (=> d!325862 (= lt!387369 Lexer!1600)))

(declare-fun lt!387368 () Unit!16958)

(declare-fun Unit!16963 () Unit!16958)

(assert (=> d!325862 (= lt!387368 Unit!16963)))

(declare-fun rulesProduceEachTokenIndividually!644 (LexerInterface!1602 List!11062 BalanceConc!7110) Bool)

(declare-fun forall!2739 (BalanceConc!7110 Int) Bool)

(assert (=> d!325862 (= (rulesProduceEachTokenIndividually!644 Lexer!1600 (rules!9313 pt!21) (slice!108 (tokens!1487 pt!21) (ite c!192285 lt!387208 lt!387207) (ite c!192285 (+ 1 lt!387207) (+ 1 lt!387208)))) (forall!2739 (slice!108 (tokens!1487 pt!21) (ite c!192285 lt!387208 lt!387207) (ite c!192285 (+ 1 lt!387207) (+ 1 lt!387208))) lambda!46052))))

(declare-fun lt!387404 () Unit!16958)

(declare-fun lt!387388 () Unit!16958)

(assert (=> d!325862 (= lt!387404 lt!387388)))

(declare-fun lt!387389 () List!11061)

(assert (=> d!325862 (forall!2738 lt!387389 lambda!46052)))

(declare-fun lt!387429 () List!11061)

(assert (=> d!325862 (= lt!387388 (lemmaForallSubseq!79 lt!387389 lt!387429 lambda!46052))))

(assert (=> d!325862 (= lt!387429 (list!4040 (tokens!1487 pt!21)))))

(assert (=> d!325862 (= lt!387389 (list!4040 (slice!108 (tokens!1487 pt!21) (ite c!192285 lt!387208 lt!387207) (ite c!192285 (+ 1 lt!387207) (+ 1 lt!387208)))))))

(declare-fun lt!387420 () Unit!16958)

(declare-fun lt!387373 () Unit!16958)

(assert (=> d!325862 (= lt!387420 lt!387373)))

(declare-fun lt!387375 () List!11061)

(declare-fun slice!109 (List!11061 Int Int) List!11061)

(assert (=> d!325862 (subseq!179 (slice!109 lt!387375 (ite c!192285 lt!387208 lt!387207) (ite c!192285 (+ 1 lt!387207) (+ 1 lt!387208))) lt!387375)))

(declare-fun lemmaSliceSubseq!20 (List!11061 Int Int) Unit!16958)

(assert (=> d!325862 (= lt!387373 (lemmaSliceSubseq!20 lt!387375 (ite c!192285 lt!387208 lt!387207) (ite c!192285 (+ 1 lt!387207) (+ 1 lt!387208))))))

(assert (=> d!325862 (= lt!387375 (list!4040 (tokens!1487 pt!21)))))

(declare-fun lt!387361 () Unit!16958)

(declare-fun Unit!16964 () Unit!16958)

(assert (=> d!325862 (= lt!387361 Unit!16964)))

(declare-fun e!731794 () Bool)

(assert (=> d!325862 (= (rulesProduceEachTokenIndividuallyList!477 Lexer!1600 (rules!9313 pt!21) (list!4040 (tokens!1487 pt!21))) e!731794)))

(declare-fun res!514865 () Bool)

(assert (=> d!325862 (=> res!514865 e!731794)))

(declare-fun lt!387396 () List!11061)

(assert (=> d!325862 (= res!514865 (not (is-Cons!11037 lt!387396)))))

(assert (=> d!325862 (= lt!387396 (list!4040 (tokens!1487 pt!21)))))

(declare-fun lt!387419 () LexerInterface!1602)

(assert (=> d!325862 (= lt!387419 Lexer!1600)))

(declare-fun lt!387421 () Unit!16958)

(declare-fun Unit!16965 () Unit!16958)

(assert (=> d!325862 (= lt!387421 Unit!16965)))

(assert (=> d!325862 (= (rulesProduceEachTokenIndividually!644 Lexer!1600 (rules!9313 pt!21) (tokens!1487 pt!21)) (forall!2739 (tokens!1487 pt!21) lambda!46052))))

(declare-fun lt!387367 () Unit!16958)

(declare-fun lemmaInvariant!94 (PrintableTokens!490) Unit!16958)

(assert (=> d!325862 (= lt!387367 (lemmaInvariant!94 pt!21))))

(declare-fun e!731800 () Bool)

(assert (=> d!325862 e!731800))

(declare-fun res!514862 () Bool)

(assert (=> d!325862 (=> (not res!514862) (not e!731800))))

(assert (=> d!325862 (= res!514862 (and (<= 0 (ite c!192285 lt!387208 lt!387207)) (<= (ite c!192285 lt!387208 lt!387207) (ite c!192285 (+ 1 lt!387207) (+ 1 lt!387208)))))))

(assert (=> d!325862 (= (slice!106 pt!21 (ite c!192285 lt!387208 lt!387207) (ite c!192285 (+ 1 lt!387207) (+ 1 lt!387208))) lt!387409)))

(declare-fun b!1144936 () Bool)

(declare-fun e!731807 () Bool)

(assert (=> b!1144936 (= e!731794 e!731807)))

(declare-fun res!514871 () Bool)

(assert (=> b!1144936 (=> (not res!514871) (not e!731807))))

(assert (=> b!1144936 (= res!514871 (rulesProduceIndividualToken!649 lt!387419 (rules!9313 pt!21) (h!16438 lt!387396)))))

(declare-fun b!1144937 () Bool)

(assert (=> b!1144937 (= e!731800 (<= (ite c!192285 (+ 1 lt!387207) (+ 1 lt!387208)) (size!8658 (tokens!1487 pt!21))))))

(declare-fun e!731806 () Bool)

(declare-fun b!1144938 () Bool)

(assert (=> b!1144938 (= e!731806 (rulesProduceEachTokenIndividuallyList!477 lt!387395 (rules!9313 pt!21) (t!107929 lt!387382)))))

(declare-fun b!1144939 () Bool)

(declare-fun e!731799 () Bool)

(assert (=> b!1144939 (= e!731799 (rulesProduceEachTokenIndividuallyList!477 lt!387385 (rules!9313 pt!21) (t!107929 lt!387418)))))

(declare-fun b!1144940 () Bool)

(assert (=> b!1144940 (= e!731807 (rulesProduceEachTokenIndividuallyList!477 lt!387419 (rules!9313 pt!21) (t!107929 lt!387396)))))

(declare-fun b!1144941 () Bool)

(assert (=> b!1144941 (= e!731804 e!731799)))

(declare-fun res!514872 () Bool)

(assert (=> b!1144941 (=> (not res!514872) (not e!731799))))

(assert (=> b!1144941 (= res!514872 (rulesProduceIndividualToken!649 lt!387385 (rules!9313 pt!21) (h!16438 lt!387418)))))

(declare-fun b!1144942 () Bool)

(assert (=> b!1144942 (= e!731798 e!731806)))

(declare-fun res!514866 () Bool)

(assert (=> b!1144942 (=> (not res!514866) (not e!731806))))

(assert (=> b!1144942 (= res!514866 (rulesProduceIndividualToken!649 lt!387395 (rules!9313 pt!21) (h!16438 lt!387382)))))

(declare-fun b!1144943 () Bool)

(assert (=> b!1144943 (= e!731803 (= (list!4040 (tokens!1487 lt!387409)) (list!4040 (slice!108 (tokens!1487 pt!21) (ite c!192285 lt!387208 lt!387207) (ite c!192285 (+ 1 lt!387207) (+ 1 lt!387208))))))))

(declare-fun b!1144944 () Bool)

(declare-fun e!731805 () Bool)

(assert (=> b!1144944 (= e!731795 e!731805)))

(declare-fun res!514869 () Bool)

(assert (=> b!1144944 (=> (not res!514869) (not e!731805))))

(declare-fun separableTokensPredicate!100 (LexerInterface!1602 Token!3466 Token!3466 List!11062) Bool)

(declare-fun apply!2341 (BalanceConc!7110 Int) Token!3466)

(assert (=> b!1144944 (= res!514869 (separableTokensPredicate!100 lt!387384 (apply!2341 (tokens!1487 pt!21) lt!387393) (apply!2341 (tokens!1487 pt!21) (+ lt!387393 1)) (rules!9313 pt!21)))))

(declare-fun lt!387362 () Unit!16958)

(declare-fun Unit!16966 () Unit!16958)

(assert (=> b!1144944 (= lt!387362 Unit!16966)))

(declare-fun size!8659 (BalanceConc!7108) Int)

(declare-fun charsOf!1038 (Token!3466) BalanceConc!7108)

(assert (=> b!1144944 (> (size!8659 (charsOf!1038 (apply!2341 (tokens!1487 pt!21) (+ lt!387393 1)))) 0)))

(declare-fun lt!387408 () Unit!16958)

(declare-fun Unit!16967 () Unit!16958)

(assert (=> b!1144944 (= lt!387408 Unit!16967)))

(assert (=> b!1144944 (rulesProduceIndividualToken!649 lt!387384 (rules!9313 pt!21) (apply!2341 (tokens!1487 pt!21) (+ lt!387393 1)))))

(declare-fun lt!387380 () Unit!16958)

(declare-fun Unit!16968 () Unit!16958)

(assert (=> b!1144944 (= lt!387380 Unit!16968)))

(assert (=> b!1144944 (rulesProduceIndividualToken!649 lt!387384 (rules!9313 pt!21) (apply!2341 (tokens!1487 pt!21) lt!387393))))

(declare-fun lt!387411 () Unit!16958)

(declare-fun lt!387399 () Unit!16958)

(assert (=> b!1144944 (= lt!387411 lt!387399)))

(declare-fun lt!387383 () Token!3466)

(assert (=> b!1144944 (rulesProduceIndividualToken!649 lt!387384 (rules!9313 pt!21) lt!387383)))

(declare-fun lt!387394 () List!11061)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!259 (LexerInterface!1602 List!11062 List!11061 Token!3466) Unit!16958)

(assert (=> b!1144944 (= lt!387399 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!259 lt!387384 (rules!9313 pt!21) lt!387394 lt!387383))))

(assert (=> b!1144944 (= lt!387383 (apply!2341 (tokens!1487 pt!21) (+ lt!387393 1)))))

(assert (=> b!1144944 (= lt!387394 (list!4040 (tokens!1487 pt!21)))))

(declare-fun lt!387407 () Unit!16958)

(declare-fun lt!387372 () Unit!16958)

(assert (=> b!1144944 (= lt!387407 lt!387372)))

(declare-fun lt!387360 () Token!3466)

(assert (=> b!1144944 (rulesProduceIndividualToken!649 lt!387384 (rules!9313 pt!21) lt!387360)))

(declare-fun lt!387426 () List!11061)

(assert (=> b!1144944 (= lt!387372 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!259 lt!387384 (rules!9313 pt!21) lt!387426 lt!387360))))

(assert (=> b!1144944 (= lt!387360 (apply!2341 (tokens!1487 pt!21) lt!387393))))

(assert (=> b!1144944 (= lt!387426 (list!4040 (tokens!1487 pt!21)))))

(declare-fun lt!387402 () Unit!16958)

(declare-fun lt!387425 () Unit!16958)

(assert (=> b!1144944 (= lt!387402 lt!387425)))

(declare-fun lt!387398 () List!11061)

(declare-fun lt!387378 () Int)

(declare-fun tail!1642 (List!11061) List!11061)

(assert (=> b!1144944 (= (tail!1642 (drop!428 lt!387398 lt!387378)) (drop!428 lt!387398 (+ lt!387378 1)))))

(declare-fun lemmaDropTail!329 (List!11061 Int) Unit!16958)

(assert (=> b!1144944 (= lt!387425 (lemmaDropTail!329 lt!387398 lt!387378))))

(assert (=> b!1144944 (= lt!387378 (+ lt!387393 1))))

(assert (=> b!1144944 (= lt!387398 (list!4040 (tokens!1487 pt!21)))))

(declare-fun lt!387390 () Unit!16958)

(declare-fun lt!387391 () Unit!16958)

(assert (=> b!1144944 (= lt!387390 lt!387391)))

(declare-fun lt!387387 () List!11061)

(assert (=> b!1144944 (= (tail!1642 (drop!428 lt!387387 lt!387393)) (drop!428 lt!387387 (+ lt!387393 1)))))

(assert (=> b!1144944 (= lt!387391 (lemmaDropTail!329 lt!387387 lt!387393))))

(assert (=> b!1144944 (= lt!387387 (list!4040 (tokens!1487 pt!21)))))

(declare-fun lt!387413 () Unit!16958)

(declare-fun lt!387405 () Unit!16958)

(assert (=> b!1144944 (= lt!387413 lt!387405)))

(declare-fun lt!387416 () List!11061)

(declare-fun lt!387371 () Int)

(declare-fun head!2068 (List!11061) Token!3466)

(declare-fun apply!2342 (List!11061 Int) Token!3466)

(assert (=> b!1144944 (= (head!2068 (drop!428 lt!387416 lt!387371)) (apply!2342 lt!387416 lt!387371))))

(declare-fun lemmaDropApply!341 (List!11061 Int) Unit!16958)

(assert (=> b!1144944 (= lt!387405 (lemmaDropApply!341 lt!387416 lt!387371))))

(assert (=> b!1144944 (= lt!387371 (+ lt!387393 1))))

(assert (=> b!1144944 (= lt!387416 (list!4040 (tokens!1487 pt!21)))))

(declare-fun lt!387430 () Unit!16958)

(declare-fun lt!387412 () Unit!16958)

(assert (=> b!1144944 (= lt!387430 lt!387412)))

(declare-fun lt!387392 () List!11061)

(assert (=> b!1144944 (= (head!2068 (drop!428 lt!387392 lt!387393)) (apply!2342 lt!387392 lt!387393))))

(assert (=> b!1144944 (= lt!387412 (lemmaDropApply!341 lt!387392 lt!387393))))

(assert (=> b!1144944 (= lt!387392 (list!4040 (tokens!1487 pt!21)))))

(declare-fun b!1144945 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!76 (LexerInterface!1602 List!11061 List!11062) Bool)

(assert (=> b!1144945 (= e!731797 (tokensListTwoByTwoPredicateSeparableList!76 lt!387395 (drop!428 lt!387376 (ite c!192285 lt!387208 lt!387207)) (rules!9313 pt!21)))))

(declare-fun lt!387414 () Unit!16958)

(declare-fun lt!387428 () Unit!16958)

(assert (=> b!1144945 (= lt!387414 lt!387428)))

(declare-fun lt!387397 () List!11061)

(assert (=> b!1144945 (forall!2738 lt!387397 lambda!46052)))

(assert (=> b!1144945 (= lt!387428 (lemmaForallSubseq!79 lt!387397 lt!387376 lambda!46052))))

(assert (=> b!1144945 (= lt!387397 (drop!428 lt!387376 (ite c!192285 lt!387208 lt!387207)))))

(declare-fun lt!387401 () Unit!16958)

(declare-fun lt!387403 () Unit!16958)

(assert (=> b!1144945 (= lt!387401 lt!387403)))

(assert (=> b!1144945 (subseq!179 (drop!428 lt!387376 (ite c!192285 lt!387208 lt!387207)) lt!387376)))

(assert (=> b!1144945 (= lt!387403 (lemmaDropSubseq!20 lt!387376 (ite c!192285 lt!387208 lt!387207)))))

(declare-fun b!1144946 () Bool)

(assert (=> b!1144946 (= e!731801 (rulesProduceEachTokenIndividuallyList!477 lt!387369 (rules!9313 pt!21) (t!107929 lt!387366)))))

(declare-fun b!1144947 () Bool)

(assert (=> b!1144947 (= e!731796 (tokensListTwoByTwoPredicateSeparableList!76 lt!387385 (take!26 lt!387364 lt!387379) (rules!9313 pt!21)))))

(declare-fun lt!387427 () Unit!16958)

(declare-fun lt!387377 () Unit!16958)

(assert (=> b!1144947 (= lt!387427 lt!387377)))

(declare-fun lt!387417 () List!11061)

(assert (=> b!1144947 (forall!2738 lt!387417 lambda!46052)))

(assert (=> b!1144947 (= lt!387377 (lemmaForallSubseq!79 lt!387417 lt!387364 lambda!46052))))

(assert (=> b!1144947 (= lt!387417 (take!26 lt!387364 lt!387379))))

(declare-fun b!1144948 () Bool)

(assert (=> b!1144948 (= e!731805 (tokensListTwoByTwoPredicateSeparable!31 lt!387384 (tokens!1487 pt!21) (+ lt!387393 1) (rules!9313 pt!21)))))

(assert (= (and d!325862 res!514862) b!1144937))

(assert (= (and d!325862 (not res!514865)) b!1144936))

(assert (= (and b!1144936 res!514871) b!1144940))

(assert (= (and d!325862 (not res!514864)) b!1144935))

(assert (= (and b!1144935 res!514870) b!1144946))

(assert (= (and d!325862 (not res!514873)) b!1144944))

(assert (= (and b!1144944 res!514869) b!1144948))

(assert (= (and d!325862 (not res!514861)) b!1144942))

(assert (= (and b!1144942 res!514866) b!1144938))

(assert (= (and d!325862 res!514868) b!1144945))

(assert (= (and d!325862 (not res!514867)) b!1144941))

(assert (= (and b!1144941 res!514872) b!1144939))

(assert (= (and d!325862 res!514874) b!1144947))

(assert (= (and d!325862 res!514863) b!1144943))

(declare-fun m!1305733 () Bool)

(assert (=> b!1144936 m!1305733))

(declare-fun m!1305735 () Bool)

(assert (=> b!1144947 m!1305735))

(assert (=> b!1144947 m!1305735))

(declare-fun m!1305737 () Bool)

(assert (=> b!1144947 m!1305737))

(declare-fun m!1305739 () Bool)

(assert (=> b!1144947 m!1305739))

(declare-fun m!1305741 () Bool)

(assert (=> b!1144947 m!1305741))

(declare-fun m!1305743 () Bool)

(assert (=> b!1144943 m!1305743))

(declare-fun m!1305745 () Bool)

(assert (=> b!1144943 m!1305745))

(assert (=> b!1144943 m!1305745))

(declare-fun m!1305747 () Bool)

(assert (=> b!1144943 m!1305747))

(declare-fun m!1305749 () Bool)

(assert (=> b!1144946 m!1305749))

(declare-fun m!1305751 () Bool)

(assert (=> b!1144948 m!1305751))

(declare-fun m!1305753 () Bool)

(assert (=> b!1144941 m!1305753))

(declare-fun m!1305755 () Bool)

(assert (=> b!1144942 m!1305755))

(declare-fun m!1305757 () Bool)

(assert (=> b!1144944 m!1305757))

(declare-fun m!1305759 () Bool)

(assert (=> b!1144944 m!1305759))

(declare-fun m!1305761 () Bool)

(assert (=> b!1144944 m!1305761))

(declare-fun m!1305763 () Bool)

(assert (=> b!1144944 m!1305763))

(declare-fun m!1305765 () Bool)

(assert (=> b!1144944 m!1305765))

(declare-fun m!1305767 () Bool)

(assert (=> b!1144944 m!1305767))

(declare-fun m!1305769 () Bool)

(assert (=> b!1144944 m!1305769))

(declare-fun m!1305771 () Bool)

(assert (=> b!1144944 m!1305771))

(declare-fun m!1305773 () Bool)

(assert (=> b!1144944 m!1305773))

(declare-fun m!1305775 () Bool)

(assert (=> b!1144944 m!1305775))

(declare-fun m!1305777 () Bool)

(assert (=> b!1144944 m!1305777))

(declare-fun m!1305779 () Bool)

(assert (=> b!1144944 m!1305779))

(declare-fun m!1305781 () Bool)

(assert (=> b!1144944 m!1305781))

(assert (=> b!1144944 m!1305765))

(declare-fun m!1305783 () Bool)

(assert (=> b!1144944 m!1305783))

(declare-fun m!1305785 () Bool)

(assert (=> b!1144944 m!1305785))

(declare-fun m!1305787 () Bool)

(assert (=> b!1144944 m!1305787))

(declare-fun m!1305789 () Bool)

(assert (=> b!1144944 m!1305789))

(assert (=> b!1144944 m!1305781))

(declare-fun m!1305791 () Bool)

(assert (=> b!1144944 m!1305791))

(assert (=> b!1144944 m!1305785))

(declare-fun m!1305793 () Bool)

(assert (=> b!1144944 m!1305793))

(assert (=> b!1144944 m!1305787))

(assert (=> b!1144944 m!1305773))

(declare-fun m!1305795 () Bool)

(assert (=> b!1144944 m!1305795))

(assert (=> b!1144944 m!1305787))

(declare-fun m!1305797 () Bool)

(assert (=> b!1144944 m!1305797))

(declare-fun m!1305799 () Bool)

(assert (=> b!1144944 m!1305799))

(assert (=> b!1144944 m!1305785))

(assert (=> b!1144944 m!1305759))

(assert (=> b!1144944 m!1305787))

(declare-fun m!1305801 () Bool)

(assert (=> b!1144944 m!1305801))

(declare-fun m!1305803 () Bool)

(assert (=> b!1144944 m!1305803))

(declare-fun m!1305805 () Bool)

(assert (=> b!1144944 m!1305805))

(assert (=> b!1144944 m!1305797))

(declare-fun m!1305807 () Bool)

(assert (=> b!1144944 m!1305807))

(declare-fun m!1305809 () Bool)

(assert (=> b!1144944 m!1305809))

(declare-fun m!1305811 () Bool)

(assert (=> b!1144944 m!1305811))

(declare-fun m!1305813 () Bool)

(assert (=> b!1144937 m!1305813))

(declare-fun m!1305815 () Bool)

(assert (=> d!325862 m!1305815))

(declare-fun m!1305817 () Bool)

(assert (=> d!325862 m!1305817))

(declare-fun m!1305819 () Bool)

(assert (=> d!325862 m!1305819))

(declare-fun m!1305821 () Bool)

(assert (=> d!325862 m!1305821))

(assert (=> d!325862 m!1305735))

(declare-fun m!1305823 () Bool)

(assert (=> d!325862 m!1305823))

(declare-fun m!1305825 () Bool)

(assert (=> d!325862 m!1305825))

(declare-fun m!1305827 () Bool)

(assert (=> d!325862 m!1305827))

(declare-fun m!1305829 () Bool)

(assert (=> d!325862 m!1305829))

(assert (=> d!325862 m!1305757))

(declare-fun m!1305831 () Bool)

(assert (=> d!325862 m!1305831))

(assert (=> d!325862 m!1305745))

(declare-fun m!1305833 () Bool)

(assert (=> d!325862 m!1305833))

(declare-fun m!1305835 () Bool)

(assert (=> d!325862 m!1305835))

(declare-fun m!1305837 () Bool)

(assert (=> d!325862 m!1305837))

(declare-fun m!1305839 () Bool)

(assert (=> d!325862 m!1305839))

(assert (=> d!325862 m!1305757))

(assert (=> d!325862 m!1305757))

(declare-fun m!1305841 () Bool)

(assert (=> d!325862 m!1305841))

(assert (=> d!325862 m!1305745))

(assert (=> d!325862 m!1305747))

(declare-fun m!1305843 () Bool)

(assert (=> d!325862 m!1305843))

(assert (=> d!325862 m!1305813))

(assert (=> d!325862 m!1305747))

(declare-fun m!1305845 () Bool)

(assert (=> d!325862 m!1305845))

(assert (=> d!325862 m!1305735))

(declare-fun m!1305847 () Bool)

(assert (=> d!325862 m!1305847))

(declare-fun m!1305849 () Bool)

(assert (=> d!325862 m!1305849))

(assert (=> d!325862 m!1305745))

(declare-fun m!1305851 () Bool)

(assert (=> d!325862 m!1305851))

(assert (=> d!325862 m!1305823))

(declare-fun m!1305853 () Bool)

(assert (=> d!325862 m!1305853))

(assert (=> d!325862 m!1305745))

(assert (=> d!325862 m!1305835))

(declare-fun m!1305855 () Bool)

(assert (=> d!325862 m!1305855))

(assert (=> d!325862 m!1305745))

(declare-fun m!1305857 () Bool)

(assert (=> d!325862 m!1305857))

(assert (=> d!325862 m!1305745))

(declare-fun m!1305859 () Bool)

(assert (=> d!325862 m!1305859))

(assert (=> d!325862 m!1305817))

(declare-fun m!1305861 () Bool)

(assert (=> d!325862 m!1305861))

(declare-fun m!1305863 () Bool)

(assert (=> d!325862 m!1305863))

(declare-fun m!1305865 () Bool)

(assert (=> d!325862 m!1305865))

(declare-fun m!1305867 () Bool)

(assert (=> b!1144935 m!1305867))

(declare-fun m!1305869 () Bool)

(assert (=> b!1144938 m!1305869))

(declare-fun m!1305871 () Bool)

(assert (=> b!1144945 m!1305871))

(declare-fun m!1305873 () Bool)

(assert (=> b!1144945 m!1305873))

(assert (=> b!1144945 m!1305835))

(declare-fun m!1305875 () Bool)

(assert (=> b!1144945 m!1305875))

(assert (=> b!1144945 m!1305835))

(declare-fun m!1305877 () Bool)

(assert (=> b!1144945 m!1305877))

(declare-fun m!1305879 () Bool)

(assert (=> b!1144945 m!1305879))

(assert (=> b!1144945 m!1305835))

(declare-fun m!1305881 () Bool)

(assert (=> b!1144940 m!1305881))

(declare-fun m!1305883 () Bool)

(assert (=> b!1144939 m!1305883))

(assert (=> bm!81568 d!325862))

(declare-fun d!325864 () Bool)

(assert (=> d!325864 (= (size!8654 pt!21) (size!8658 (tokens!1487 pt!21)))))

(declare-fun bs!280942 () Bool)

(assert (= bs!280942 d!325864))

(assert (=> bs!280942 m!1305813))

(assert (=> start!99128 d!325864))

(declare-fun d!325866 () Bool)

(declare-fun res!514884 () Bool)

(declare-fun e!731822 () Bool)

(assert (=> d!325866 (=> (not res!514884) (not e!731822))))

(declare-fun isEmpty!6856 (List!11062) Bool)

(assert (=> d!325866 (= res!514884 (not (isEmpty!6856 (rules!9313 pt!21))))))

(assert (=> d!325866 (= (inv!14381 pt!21) e!731822)))

(declare-fun b!1144972 () Bool)

(declare-fun res!514885 () Bool)

(assert (=> b!1144972 (=> (not res!514885) (not e!731822))))

(declare-fun rulesInvariant!1476 (LexerInterface!1602 List!11062) Bool)

(assert (=> b!1144972 (= res!514885 (rulesInvariant!1476 Lexer!1600 (rules!9313 pt!21)))))

(declare-fun b!1144973 () Bool)

(declare-fun res!514886 () Bool)

(assert (=> b!1144973 (=> (not res!514886) (not e!731822))))

(assert (=> b!1144973 (= res!514886 (rulesProduceEachTokenIndividually!644 Lexer!1600 (rules!9313 pt!21) (tokens!1487 pt!21)))))

(declare-fun b!1144974 () Bool)

(assert (=> b!1144974 (= e!731822 (separableTokens!71 Lexer!1600 (tokens!1487 pt!21) (rules!9313 pt!21)))))

(assert (= (and d!325866 res!514884) b!1144972))

(assert (= (and b!1144972 res!514885) b!1144973))

(assert (= (and b!1144973 res!514886) b!1144974))

(declare-fun m!1305889 () Bool)

(assert (=> d!325866 m!1305889))

(declare-fun m!1305891 () Bool)

(assert (=> b!1144972 m!1305891))

(assert (=> b!1144973 m!1305819))

(declare-fun m!1305893 () Bool)

(assert (=> b!1144974 m!1305893))

(assert (=> start!99128 d!325866))

(declare-fun d!325872 () Bool)

(declare-fun isBalanced!990 (Conc!3542) Bool)

(assert (=> d!325872 (= (inv!14382 indices!2) (isBalanced!990 (c!192286 indices!2)))))

(declare-fun bs!280943 () Bool)

(assert (= bs!280943 d!325872))

(declare-fun m!1305895 () Bool)

(assert (=> bs!280943 m!1305895))

(assert (=> start!99128 d!325872))

(declare-fun d!325874 () Bool)

(declare-fun isBalanced!991 (Conc!3545) Bool)

(assert (=> d!325874 (= (inv!14383 acc!225) (isBalanced!991 (c!192290 acc!225)))))

(declare-fun bs!280944 () Bool)

(assert (= bs!280944 d!325874))

(declare-fun m!1305897 () Bool)

(assert (=> bs!280944 m!1305897))

(assert (=> start!99128 d!325874))

(declare-fun d!325876 () Bool)

(declare-fun isBalanced!992 (Conc!3544) Bool)

(assert (=> d!325876 (= (inv!14386 (tokens!1487 pt!21)) (isBalanced!992 (c!192289 (tokens!1487 pt!21))))))

(declare-fun bs!280945 () Bool)

(assert (= bs!280945 d!325876))

(declare-fun m!1305899 () Bool)

(assert (=> bs!280945 m!1305899))

(assert (=> b!1144865 d!325876))

(declare-fun d!325878 () Bool)

(declare-datatypes ((JsonLexer!322 0))(
  ( (JsonLexer!323) )
))
(declare-fun rules!109 (JsonLexer!322) List!11062)

(assert (=> d!325878 (= (usesJsonRules!0 pt!21) (= (rules!9313 pt!21) (rules!109 JsonLexer!323)))))

(declare-fun bs!280950 () Bool)

(assert (= bs!280950 d!325878))

(declare-fun m!1305921 () Bool)

(assert (=> bs!280950 m!1305921))

(assert (=> b!1144868 d!325878))

(declare-fun d!325890 () Bool)

(declare-fun c!192307 () Bool)

(assert (=> d!325890 (= c!192307 (is-Node!3544 (c!192289 (tokens!1487 pt!21))))))

(declare-fun e!731833 () Bool)

(assert (=> d!325890 (= (inv!14385 (c!192289 (tokens!1487 pt!21))) e!731833)))

(declare-fun b!1144990 () Bool)

(declare-fun inv!14394 (Conc!3544) Bool)

(assert (=> b!1144990 (= e!731833 (inv!14394 (c!192289 (tokens!1487 pt!21))))))

(declare-fun b!1144991 () Bool)

(declare-fun e!731834 () Bool)

(assert (=> b!1144991 (= e!731833 e!731834)))

(declare-fun res!514892 () Bool)

(assert (=> b!1144991 (= res!514892 (not (is-Leaf!5506 (c!192289 (tokens!1487 pt!21)))))))

(assert (=> b!1144991 (=> res!514892 e!731834)))

(declare-fun b!1144992 () Bool)

(declare-fun inv!14395 (Conc!3544) Bool)

(assert (=> b!1144992 (= e!731834 (inv!14395 (c!192289 (tokens!1487 pt!21))))))

(assert (= (and d!325890 c!192307) b!1144990))

(assert (= (and d!325890 (not c!192307)) b!1144991))

(assert (= (and b!1144991 (not res!514892)) b!1144992))

(declare-fun m!1305923 () Bool)

(assert (=> b!1144990 m!1305923))

(declare-fun m!1305925 () Bool)

(assert (=> b!1144992 m!1305925))

(assert (=> b!1144863 d!325890))

(declare-fun d!325892 () Bool)

(declare-fun lt!387439 () Int)

(declare-fun size!8660 (List!11059) Int)

(declare-fun list!4041 (BalanceConc!7106) List!11059)

(assert (=> d!325892 (= lt!387439 (size!8660 (list!4041 indices!2)))))

(declare-fun size!8661 (Conc!3542) Int)

(assert (=> d!325892 (= lt!387439 (size!8661 (c!192286 indices!2)))))

(assert (=> d!325892 (= (size!8652 indices!2) lt!387439)))

(declare-fun bs!280951 () Bool)

(assert (= bs!280951 d!325892))

(declare-fun m!1305927 () Bool)

(assert (=> bs!280951 m!1305927))

(assert (=> bs!280951 m!1305927))

(declare-fun m!1305929 () Bool)

(assert (=> bs!280951 m!1305929))

(declare-fun m!1305931 () Bool)

(assert (=> bs!280951 m!1305931))

(assert (=> b!1144859 d!325892))

(declare-fun d!325894 () Bool)

(declare-fun lt!387442 () Bool)

(declare-fun forall!2740 (List!11063 Int) Bool)

(declare-fun list!4042 (BalanceConc!7112) List!11063)

(assert (=> d!325894 (= lt!387442 (forall!2740 (list!4042 acc!225) lambda!46033))))

(declare-fun forall!2741 (Conc!3545 Int) Bool)

(assert (=> d!325894 (= lt!387442 (forall!2741 (c!192290 acc!225) lambda!46033))))

(assert (=> d!325894 (= (forall!2735 acc!225 lambda!46033) lt!387442)))

(declare-fun bs!280952 () Bool)

(assert (= bs!280952 d!325894))

(declare-fun m!1305933 () Bool)

(assert (=> bs!280952 m!1305933))

(assert (=> bs!280952 m!1305933))

(declare-fun m!1305935 () Bool)

(assert (=> bs!280952 m!1305935))

(declare-fun m!1305937 () Bool)

(assert (=> bs!280952 m!1305937))

(assert (=> b!1144869 d!325894))

(declare-fun d!325896 () Bool)

(declare-fun c!192310 () Bool)

(assert (=> d!325896 (= c!192310 (is-Node!3545 (c!192290 acc!225)))))

(declare-fun e!731839 () Bool)

(assert (=> d!325896 (= (inv!14384 (c!192290 acc!225)) e!731839)))

(declare-fun b!1144999 () Bool)

(declare-fun inv!14396 (Conc!3545) Bool)

(assert (=> b!1144999 (= e!731839 (inv!14396 (c!192290 acc!225)))))

(declare-fun b!1145000 () Bool)

(declare-fun e!731840 () Bool)

(assert (=> b!1145000 (= e!731839 e!731840)))

(declare-fun res!514895 () Bool)

(assert (=> b!1145000 (= res!514895 (not (is-Leaf!5507 (c!192290 acc!225))))))

(assert (=> b!1145000 (=> res!514895 e!731840)))

(declare-fun b!1145001 () Bool)

(declare-fun inv!14397 (Conc!3545) Bool)

(assert (=> b!1145001 (= e!731840 (inv!14397 (c!192290 acc!225)))))

(assert (= (and d!325896 c!192310) b!1144999))

(assert (= (and d!325896 (not c!192310)) b!1145000))

(assert (= (and b!1145000 (not res!514895)) b!1145001))

(declare-fun m!1305939 () Bool)

(assert (=> b!1144999 m!1305939))

(declare-fun m!1305941 () Bool)

(assert (=> b!1145001 m!1305941))

(assert (=> b!1144862 d!325896))

(declare-fun d!325898 () Bool)

(declare-fun c!192313 () Bool)

(assert (=> d!325898 (= c!192313 (is-Node!3542 (c!192286 indices!2)))))

(declare-fun e!731845 () Bool)

(assert (=> d!325898 (= (inv!14380 (c!192286 indices!2)) e!731845)))

(declare-fun b!1145008 () Bool)

(declare-fun inv!14398 (Conc!3542) Bool)

(assert (=> b!1145008 (= e!731845 (inv!14398 (c!192286 indices!2)))))

(declare-fun b!1145009 () Bool)

(declare-fun e!731846 () Bool)

(assert (=> b!1145009 (= e!731845 e!731846)))

(declare-fun res!514898 () Bool)

(assert (=> b!1145009 (= res!514898 (not (is-Leaf!5504 (c!192286 indices!2))))))

(assert (=> b!1145009 (=> res!514898 e!731846)))

(declare-fun b!1145010 () Bool)

(declare-fun inv!14399 (Conc!3542) Bool)

(assert (=> b!1145010 (= e!731846 (inv!14399 (c!192286 indices!2)))))

(assert (= (and d!325898 c!192313) b!1145008))

(assert (= (and d!325898 (not c!192313)) b!1145009))

(assert (= (and b!1145009 (not res!514898)) b!1145010))

(declare-fun m!1305943 () Bool)

(assert (=> b!1145008 m!1305943))

(declare-fun m!1305945 () Bool)

(assert (=> b!1145010 m!1305945))

(assert (=> b!1144860 d!325898))

(declare-fun d!325900 () Bool)

(declare-fun lt!387445 () Bool)

(declare-fun forall!2742 (List!11059 Int) Bool)

(assert (=> d!325900 (= lt!387445 (forall!2742 (list!4041 indices!2) lambda!46032))))

(declare-fun forall!2743 (Conc!3542 Int) Bool)

(assert (=> d!325900 (= lt!387445 (forall!2743 (c!192286 indices!2) lambda!46032))))

(assert (=> d!325900 (= (forall!2734 indices!2 lambda!46032) lt!387445)))

(declare-fun bs!280953 () Bool)

(assert (= bs!280953 d!325900))

(assert (=> bs!280953 m!1305927))

(assert (=> bs!280953 m!1305927))

(declare-fun m!1305947 () Bool)

(assert (=> bs!280953 m!1305947))

(declare-fun m!1305949 () Bool)

(assert (=> bs!280953 m!1305949))

(assert (=> b!1144866 d!325900))

(declare-fun d!325902 () Bool)

(assert (=> d!325902 (= (usesJsonRules!0 e!731742) (= (rules!9313 e!731742) (rules!109 JsonLexer!323)))))

(declare-fun bs!280954 () Bool)

(assert (= bs!280954 d!325902))

(assert (=> bs!280954 m!1305921))

(assert (=> b!1144861 d!325902))

(declare-fun d!325904 () Bool)

(declare-fun lt!387448 () Int)

(declare-fun apply!2343 (List!11059 Int) Int)

(assert (=> d!325904 (= lt!387448 (apply!2343 (list!4041 indices!2) 1))))

(declare-fun apply!2344 (Conc!3542 Int) Int)

(assert (=> d!325904 (= lt!387448 (apply!2344 (c!192286 indices!2) 1))))

(declare-fun e!731849 () Bool)

(assert (=> d!325904 e!731849))

(declare-fun res!514901 () Bool)

(assert (=> d!325904 (=> (not res!514901) (not e!731849))))

(assert (=> d!325904 (= res!514901 (<= 0 1))))

(assert (=> d!325904 (= (apply!2339 indices!2 1) lt!387448)))

(declare-fun b!1145013 () Bool)

(assert (=> b!1145013 (= e!731849 (< 1 (size!8652 indices!2)))))

(assert (= (and d!325904 res!514901) b!1145013))

(assert (=> d!325904 m!1305927))

(assert (=> d!325904 m!1305927))

(declare-fun m!1305951 () Bool)

(assert (=> d!325904 m!1305951))

(declare-fun m!1305953 () Bool)

(assert (=> d!325904 m!1305953))

(assert (=> b!1145013 m!1305697))

(assert (=> b!1144861 d!325904))

(declare-fun d!325906 () Bool)

(declare-fun lt!387449 () Int)

(assert (=> d!325906 (= lt!387449 (apply!2343 (list!4041 indices!2) 0))))

(assert (=> d!325906 (= lt!387449 (apply!2344 (c!192286 indices!2) 0))))

(declare-fun e!731850 () Bool)

(assert (=> d!325906 e!731850))

(declare-fun res!514902 () Bool)

(assert (=> d!325906 (=> (not res!514902) (not e!731850))))

(assert (=> d!325906 (= res!514902 (<= 0 0))))

(assert (=> d!325906 (= (apply!2339 indices!2 0) lt!387449)))

(declare-fun b!1145014 () Bool)

(assert (=> b!1145014 (= e!731850 (< 0 (size!8652 indices!2)))))

(assert (= (and d!325906 res!514902) b!1145014))

(assert (=> d!325906 m!1305927))

(assert (=> d!325906 m!1305927))

(declare-fun m!1305955 () Bool)

(assert (=> d!325906 m!1305955))

(declare-fun m!1305957 () Bool)

(assert (=> d!325906 m!1305957))

(assert (=> b!1145014 m!1305697))

(assert (=> b!1144861 d!325906))

(declare-fun b!1145025 () Bool)

(declare-fun b_free!27493 () Bool)

(declare-fun b_next!28197 () Bool)

(assert (=> b!1145025 (= b_free!27493 (not b_next!28197))))

(declare-fun tp!331851 () Bool)

(declare-fun b_and!80277 () Bool)

(assert (=> b!1145025 (= tp!331851 b_and!80277)))

(declare-fun b_free!27495 () Bool)

(declare-fun b_next!28199 () Bool)

(assert (=> b!1145025 (= b_free!27495 (not b_next!28199))))

(declare-fun tp!331849 () Bool)

(declare-fun b_and!80279 () Bool)

(assert (=> b!1145025 (= tp!331849 b_and!80279)))

(declare-fun e!731860 () Bool)

(assert (=> b!1145025 (= e!731860 (and tp!331851 tp!331849))))

(declare-fun b!1145024 () Bool)

(declare-fun e!731861 () Bool)

(declare-fun inv!14377 (String!13430) Bool)

(declare-fun inv!14400 (TokenValueInjection!3636) Bool)

(assert (=> b!1145024 (= e!731861 (and (inv!14377 (tag!2164 (h!16439 (rules!9313 pt!21)))) (inv!14400 (transformation!1902 (h!16439 (rules!9313 pt!21)))) e!731860))))

(declare-fun b!1145023 () Bool)

(declare-fun e!731862 () Bool)

(declare-fun tp!331850 () Bool)

(assert (=> b!1145023 (= e!731862 (and e!731861 tp!331850))))

(assert (=> b!1144865 (= tp!331829 e!731862)))

(assert (= b!1145024 b!1145025))

(assert (= b!1145023 b!1145024))

(assert (= (and b!1144865 (is-Cons!11038 (rules!9313 pt!21))) b!1145023))

(declare-fun m!1305959 () Bool)

(assert (=> b!1145024 m!1305959))

(declare-fun m!1305961 () Bool)

(assert (=> b!1145024 m!1305961))

(declare-fun tp!331859 () Bool)

(declare-fun b!1145034 () Bool)

(declare-fun e!731867 () Bool)

(declare-fun tp!331860 () Bool)

(assert (=> b!1145034 (= e!731867 (and (inv!14385 (left!9595 (c!192289 (tokens!1487 pt!21)))) tp!331860 (inv!14385 (right!9925 (c!192289 (tokens!1487 pt!21)))) tp!331859))))

(declare-fun b!1145036 () Bool)

(declare-fun e!731868 () Bool)

(declare-fun tp!331858 () Bool)

(assert (=> b!1145036 (= e!731868 tp!331858)))

(declare-fun b!1145035 () Bool)

(declare-fun inv!14401 (IArray!7093) Bool)

(assert (=> b!1145035 (= e!731867 (and (inv!14401 (xs!6245 (c!192289 (tokens!1487 pt!21)))) e!731868))))

(assert (=> b!1144863 (= tp!331828 (and (inv!14385 (c!192289 (tokens!1487 pt!21))) e!731867))))

(assert (= (and b!1144863 (is-Node!3544 (c!192289 (tokens!1487 pt!21)))) b!1145034))

(assert (= b!1145035 b!1145036))

(assert (= (and b!1144863 (is-Leaf!5506 (c!192289 (tokens!1487 pt!21)))) b!1145035))

(declare-fun m!1305963 () Bool)

(assert (=> b!1145034 m!1305963))

(declare-fun m!1305965 () Bool)

(assert (=> b!1145034 m!1305965))

(declare-fun m!1305967 () Bool)

(assert (=> b!1145035 m!1305967))

(assert (=> b!1144863 m!1305685))

(declare-fun tp!331869 () Bool)

(declare-fun tp!331868 () Bool)

(declare-fun e!731873 () Bool)

(declare-fun b!1145045 () Bool)

(assert (=> b!1145045 (= e!731873 (and (inv!14384 (left!9596 (c!192290 acc!225))) tp!331869 (inv!14384 (right!9926 (c!192290 acc!225))) tp!331868))))

(declare-fun b!1145047 () Bool)

(declare-fun e!731874 () Bool)

(declare-fun tp!331867 () Bool)

(assert (=> b!1145047 (= e!731874 tp!331867)))

(declare-fun b!1145046 () Bool)

(declare-fun inv!14402 (IArray!7095) Bool)

(assert (=> b!1145046 (= e!731873 (and (inv!14402 (xs!6246 (c!192290 acc!225))) e!731874))))

(assert (=> b!1144862 (= tp!331827 (and (inv!14384 (c!192290 acc!225)) e!731873))))

(assert (= (and b!1144862 (is-Node!3545 (c!192290 acc!225))) b!1145045))

(assert (= b!1145046 b!1145047))

(assert (= (and b!1144862 (is-Leaf!5507 (c!192290 acc!225))) b!1145046))

(declare-fun m!1305969 () Bool)

(assert (=> b!1145045 m!1305969))

(declare-fun m!1305971 () Bool)

(assert (=> b!1145045 m!1305971))

(declare-fun m!1305973 () Bool)

(assert (=> b!1145046 m!1305973))

(assert (=> b!1144862 m!1305683))

(declare-fun b!1145054 () Bool)

(declare-fun tp!331875 () Bool)

(declare-fun e!731879 () Bool)

(declare-fun tp!331874 () Bool)

(assert (=> b!1145054 (= e!731879 (and (inv!14380 (left!9593 (c!192286 indices!2))) tp!331874 (inv!14380 (right!9923 (c!192286 indices!2))) tp!331875))))

(declare-fun b!1145055 () Bool)

(declare-fun inv!14403 (IArray!7089) Bool)

(assert (=> b!1145055 (= e!731879 (inv!14403 (xs!6243 (c!192286 indices!2))))))

(assert (=> b!1144860 (= tp!331830 (and (inv!14380 (c!192286 indices!2)) e!731879))))

(assert (= (and b!1144860 (is-Node!3542 (c!192286 indices!2))) b!1145054))

(assert (= (and b!1144860 (is-Leaf!5504 (c!192286 indices!2))) b!1145055))

(declare-fun m!1305975 () Bool)

(assert (=> b!1145054 m!1305975))

(declare-fun m!1305977 () Bool)

(assert (=> b!1145054 m!1305977))

(declare-fun m!1305979 () Bool)

(assert (=> b!1145055 m!1305979))

(assert (=> b!1144860 m!1305695))

(push 1)

(assert (not d!325878))

(assert (not b!1144999))

(assert (not b!1144973))

(assert (not b!1145024))

(assert b_and!80277)

(assert (not b!1145001))

(assert (not b!1144860))

(assert (not b_next!28199))

(assert (not b!1145047))

(assert (not b!1145008))

(assert (not b!1144956))

(assert (not b!1144948))

(assert b_and!80279)

(assert (not b!1145035))

(assert (not d!325904))

(assert (not b!1144972))

(assert (not b!1145023))

(assert (not b!1144990))

(assert (not b!1144946))

(assert (not b!1145034))

(assert (not d!325874))

(assert (not b!1145054))

(assert (not d!325892))

(assert (not b!1144992))

(assert (not b!1144943))

(assert (not b!1144938))

(assert (not d!325866))

(assert (not b!1144935))

(assert (not b!1144939))

(assert (not d!325902))

(assert (not b!1144974))

(assert (not d!325876))

(assert (not b!1144945))

(assert (not b!1145045))

(assert (not d!325906))

(assert (not b!1145014))

(assert (not b!1144941))

(assert (not d!325864))

(assert (not d!325862))

(assert (not b!1145055))

(assert (not b!1144862))

(assert (not b_next!28197))

(assert (not d!325900))

(assert (not b!1145036))

(assert (not d!325894))

(assert (not b!1144936))

(assert (not b!1144947))

(assert (not b!1145046))

(assert (not b!1144937))

(assert (not d!325872))

(assert (not b!1145013))

(assert (not b!1144940))

(assert (not b!1144944))

(assert (not b!1144942))

(assert (not b!1144863))

(assert (not b!1145010))

(assert (not b!1144955))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80279)

(assert b_and!80277)

(assert (not b_next!28197))

(assert (not b_next!28199))

(check-sat)

(pop 1)

