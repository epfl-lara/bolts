; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102054 () Bool)

(assert start!102054)

(declare-fun b!1163996 () Bool)

(declare-fun e!745695 () Bool)

(assert (=> b!1163996 (= e!745695 true)))

(declare-fun b!1163995 () Bool)

(declare-fun e!745694 () Bool)

(assert (=> b!1163995 (= e!745694 e!745695)))

(declare-fun b!1163976 () Bool)

(assert (=> b!1163976 e!745694))

(assert (= b!1163995 b!1163996))

(assert (= b!1163976 b!1163995))

(declare-fun b!1163964 () Bool)

(declare-fun e!745677 () Bool)

(declare-datatypes ((List!11495 0))(
  ( (Nil!11471) (Cons!11471 (h!16872 (_ BitVec 16)) (t!110133 List!11495)) )
))
(declare-datatypes ((TokenValue!2063 0))(
  ( (FloatLiteralValue!4126 (text!14886 List!11495)) (TokenValueExt!2062 (__x!7837 Int)) (Broken!10315 (value!64885 List!11495)) (Object!2086) (End!2063) (Def!2063) (Underscore!2063) (Match!2063) (Else!2063) (Error!2063) (Case!2063) (If!2063) (Extends!2063) (Abstract!2063) (Class!2063) (Val!2063) (DelimiterValue!4126 (del!2123 List!11495)) (KeywordValue!2069 (value!64886 List!11495)) (CommentValue!4126 (value!64887 List!11495)) (WhitespaceValue!4126 (value!64888 List!11495)) (IndentationValue!2063 (value!64889 List!11495)) (String!13902) (Int32!2063) (Broken!10316 (value!64890 List!11495)) (Boolean!2064) (Unit!17538) (OperatorValue!2066 (op!2123 List!11495)) (IdentifierValue!4126 (value!64891 List!11495)) (IdentifierValue!4127 (value!64892 List!11495)) (WhitespaceValue!4127 (value!64893 List!11495)) (True!4126) (False!4126) (Broken!10317 (value!64894 List!11495)) (Broken!10318 (value!64895 List!11495)) (True!4127) (RightBrace!2063) (RightBracket!2063) (Colon!2063) (Null!2063) (Comma!2063) (LeftBracket!2063) (False!4127) (LeftBrace!2063) (ImaginaryLiteralValue!2063 (text!14887 List!11495)) (StringLiteralValue!6189 (value!64896 List!11495)) (EOFValue!2063 (value!64897 List!11495)) (IdentValue!2063 (value!64898 List!11495)) (DelimiterValue!4127 (value!64899 List!11495)) (DedentValue!2063 (value!64900 List!11495)) (NewLineValue!2063 (value!64901 List!11495)) (IntegerValue!6189 (value!64902 (_ BitVec 32)) (text!14888 List!11495)) (IntegerValue!6190 (value!64903 Int) (text!14889 List!11495)) (Times!2063) (Or!2063) (Equal!2063) (Minus!2063) (Broken!10319 (value!64904 List!11495)) (And!2063) (Div!2063) (LessEqual!2063) (Mod!2063) (Concat!5330) (Not!2063) (Plus!2063) (SpaceValue!2063 (value!64905 List!11495)) (IntegerValue!6191 (value!64906 Int) (text!14890 List!11495)) (StringLiteralValue!6190 (text!14891 List!11495)) (FloatLiteralValue!4127 (text!14892 List!11495)) (BytesLiteralValue!2063 (value!64907 List!11495)) (CommentValue!4127 (value!64908 List!11495)) (StringLiteralValue!6191 (value!64909 List!11495)) (ErrorTokenValue!2063 (msg!2124 List!11495)) )
))
(declare-datatypes ((C!6852 0))(
  ( (C!6853 (val!3682 Int)) )
))
(declare-datatypes ((Regex!3267 0))(
  ( (ElementMatch!3267 (c!194498 C!6852)) (Concat!5331 (regOne!7046 Regex!3267) (regTwo!7046 Regex!3267)) (EmptyExpr!3267) (Star!3267 (reg!3596 Regex!3267)) (EmptyLang!3267) (Union!3267 (regOne!7047 Regex!3267) (regTwo!7047 Regex!3267)) )
))
(declare-datatypes ((String!13903 0))(
  ( (String!13904 (value!64910 String)) )
))
(declare-datatypes ((List!11496 0))(
  ( (Nil!11472) (Cons!11472 (h!16873 C!6852) (t!110134 List!11496)) )
))
(declare-datatypes ((IArray!7517 0))(
  ( (IArray!7518 (innerList!3816 List!11496)) )
))
(declare-datatypes ((Conc!3756 0))(
  ( (Node!3756 (left!10032 Conc!3756) (right!10362 Conc!3756) (csize!7742 Int) (cheight!3967 Int)) (Leaf!5765 (xs!6461 IArray!7517) (csize!7743 Int)) (Empty!3756) )
))
(declare-datatypes ((BalanceConc!7534 0))(
  ( (BalanceConc!7535 (c!194499 Conc!3756)) )
))
(declare-datatypes ((TokenValueInjection!3826 0))(
  ( (TokenValueInjection!3827 (toValue!3098 Int) (toChars!2957 Int)) )
))
(declare-datatypes ((Rule!3794 0))(
  ( (Rule!3795 (regex!1997 Regex!3267) (tag!2259 String!13903) (isSeparator!1997 Bool) (transformation!1997 TokenValueInjection!3826)) )
))
(declare-datatypes ((Token!3656 0))(
  ( (Token!3657 (value!64911 TokenValue!2063) (rule!3418 Rule!3794) (size!9029 Int) (originalCharacters!2551 List!11496)) )
))
(declare-datatypes ((List!11497 0))(
  ( (Nil!11473) (Cons!11473 (h!16874 Token!3656) (t!110135 List!11497)) )
))
(declare-datatypes ((List!11498 0))(
  ( (Nil!11474) (Cons!11474 (h!16875 Rule!3794) (t!110136 List!11498)) )
))
(declare-datatypes ((IArray!7519 0))(
  ( (IArray!7520 (innerList!3817 List!11497)) )
))
(declare-datatypes ((Conc!3757 0))(
  ( (Node!3757 (left!10033 Conc!3757) (right!10363 Conc!3757) (csize!7744 Int) (cheight!3968 Int)) (Leaf!5766 (xs!6462 IArray!7519) (csize!7745 Int)) (Empty!3757) )
))
(declare-datatypes ((BalanceConc!7536 0))(
  ( (BalanceConc!7537 (c!194500 Conc!3757)) )
))
(declare-datatypes ((PrintableTokens!680 0))(
  ( (PrintableTokens!681 (rules!9540 List!11498) (tokens!1610 BalanceConc!7536)) )
))
(declare-fun thiss!10527 () PrintableTokens!680)

(declare-fun lt!397618 () List!11497)

(declare-datatypes ((LexerInterface!1692 0))(
  ( (LexerInterfaceExt!1689 (__x!7838 Int)) (Lexer!1690) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!560 (LexerInterface!1692 List!11498 List!11497) Bool)

(assert (=> b!1163964 (= e!745677 (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) (t!110135 lt!397618)))))

(declare-fun b!1163965 () Bool)

(declare-fun e!745671 () Bool)

(assert (=> b!1163965 (= e!745671 e!745677)))

(declare-fun res!525258 () Bool)

(assert (=> b!1163965 (=> (not res!525258) (not e!745677))))

(declare-fun rulesProduceIndividualToken!729 (LexerInterface!1692 List!11498 Token!3656) Bool)

(assert (=> b!1163965 (= res!525258 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 lt!397618)))))

(declare-fun b!1163966 () Bool)

(declare-fun e!745685 () Bool)

(declare-fun e!745670 () Bool)

(assert (=> b!1163966 (= e!745685 e!745670)))

(declare-fun res!525272 () Bool)

(assert (=> b!1163966 (=> res!525272 e!745670)))

(declare-fun lt!397639 () Bool)

(assert (=> b!1163966 (= res!525272 (not lt!397639))))

(declare-fun e!745679 () Bool)

(assert (=> b!1163966 e!745679))

(declare-fun res!525279 () Bool)

(assert (=> b!1163966 (=> (not res!525279) (not e!745679))))

(declare-fun lambda!47677 () Int)

(declare-fun forall!3004 (List!11497 Int) Bool)

(assert (=> b!1163966 (= res!525279 (forall!3004 lt!397618 lambda!47677))))

(declare-datatypes ((Unit!17539 0))(
  ( (Unit!17540) )
))
(declare-fun lt!397625 () Unit!17539)

(declare-fun lt!397617 () List!11497)

(declare-fun lemmaForallSubseq!145 (List!11497 List!11497 Int) Unit!17539)

(assert (=> b!1163966 (= lt!397625 (lemmaForallSubseq!145 lt!397618 lt!397617 lambda!47677))))

(assert (=> b!1163966 (= (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) lt!397618) e!745671)))

(declare-fun res!525268 () Bool)

(assert (=> b!1163966 (=> res!525268 e!745671)))

(get-info :version)

(assert (=> b!1163966 (= res!525268 (not ((_ is Cons!11473) lt!397618)))))

(declare-fun to!267 () Int)

(declare-fun from!787 () Int)

(declare-fun take!69 (List!11497 Int) List!11497)

(assert (=> b!1163966 (= lt!397618 (take!69 lt!397617 (- to!267 from!787)))))

(declare-fun lt!397627 () Unit!17539)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!36 (LexerInterface!1692 List!11497 Int List!11498) Unit!17539)

(assert (=> b!1163966 (= lt!397627 (tokensListTwoByTwoPredicateSeparableTokensTakeList!36 Lexer!1690 lt!397617 (- to!267 from!787) (rules!9540 thiss!10527)))))

(assert (=> b!1163966 (forall!3004 lt!397617 lambda!47677)))

(declare-fun lt!397637 () List!11497)

(declare-fun lt!397622 () Unit!17539)

(assert (=> b!1163966 (= lt!397622 (lemmaForallSubseq!145 lt!397617 lt!397637 lambda!47677))))

(declare-fun e!745680 () Bool)

(assert (=> b!1163966 e!745680))

(declare-fun res!525267 () Bool)

(assert (=> b!1163966 (=> (not res!525267) (not e!745680))))

(assert (=> b!1163966 (= res!525267 (forall!3004 lt!397617 lambda!47677))))

(declare-fun lt!397619 () Unit!17539)

(assert (=> b!1163966 (= lt!397619 (lemmaForallSubseq!145 lt!397617 lt!397637 lambda!47677))))

(declare-fun subseq!253 (List!11497 List!11497) Bool)

(assert (=> b!1163966 (subseq!253 lt!397617 lt!397637)))

(declare-fun lt!397635 () Unit!17539)

(declare-fun lemmaDropSubseq!44 (List!11497 Int) Unit!17539)

(assert (=> b!1163966 (= lt!397635 (lemmaDropSubseq!44 lt!397637 from!787))))

(declare-fun e!745669 () Bool)

(assert (=> b!1163966 (= (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) lt!397617) e!745669)))

(declare-fun res!525277 () Bool)

(assert (=> b!1163966 (=> res!525277 e!745669)))

(assert (=> b!1163966 (= res!525277 (not ((_ is Cons!11473) lt!397617)))))

(declare-fun drop!479 (List!11497 Int) List!11497)

(assert (=> b!1163966 (= lt!397617 (drop!479 lt!397637 from!787))))

(declare-fun lt!397638 () Unit!17539)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!44 (LexerInterface!1692 List!11497 Int List!11498) Unit!17539)

(assert (=> b!1163966 (= lt!397638 (tokensListTwoByTwoPredicateSeparableTokensDropList!44 Lexer!1690 lt!397637 from!787 (rules!9540 thiss!10527)))))

(declare-fun e!745688 () Bool)

(assert (=> b!1163966 e!745688))

(declare-fun res!525269 () Bool)

(assert (=> b!1163966 (=> (not res!525269) (not e!745688))))

(declare-fun lt!397630 () BalanceConc!7536)

(declare-fun tokensListTwoByTwoPredicateSeparable!67 (LexerInterface!1692 BalanceConc!7536 Int List!11498) Bool)

(assert (=> b!1163966 (= res!525269 (= lt!397639 (tokensListTwoByTwoPredicateSeparable!67 Lexer!1690 lt!397630 0 (rules!9540 thiss!10527))))))

(declare-fun separableTokens!134 (LexerInterface!1692 BalanceConc!7536 List!11498) Bool)

(assert (=> b!1163966 (= lt!397639 (separableTokens!134 Lexer!1690 lt!397630 (rules!9540 thiss!10527)))))

(declare-fun b!1163967 () Bool)

(declare-fun e!745687 () Bool)

(assert (=> b!1163967 (= e!745688 (= (tokensListTwoByTwoPredicateSeparable!67 Lexer!1690 (tokens!1610 thiss!10527) 0 (rules!9540 thiss!10527)) e!745687))))

(declare-fun res!525260 () Bool)

(assert (=> b!1163967 (=> res!525260 e!745687)))

(declare-fun lt!397615 () Int)

(assert (=> b!1163967 (= res!525260 (>= 0 (- lt!397615 1)))))

(declare-fun b!1163968 () Bool)

(declare-fun e!745682 () Bool)

(declare-fun e!745686 () Bool)

(assert (=> b!1163968 (= e!745682 e!745686)))

(declare-fun res!525265 () Bool)

(assert (=> b!1163968 (=> (not res!525265) (not e!745686))))

(declare-fun rulesInvariant!1566 (LexerInterface!1692 List!11498) Bool)

(assert (=> b!1163968 (= res!525265 (rulesInvariant!1566 Lexer!1690 (rules!9540 thiss!10527)))))

(declare-fun lt!397620 () Unit!17539)

(declare-fun lemmaInvariant!184 (PrintableTokens!680) Unit!17539)

(assert (=> b!1163968 (= lt!397620 (lemmaInvariant!184 thiss!10527))))

(declare-fun b!1163969 () Bool)

(declare-fun e!745683 () Bool)

(assert (=> b!1163969 (= e!745683 (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) (t!110135 lt!397637)))))

(declare-fun b!1163970 () Bool)

(declare-fun e!745678 () Bool)

(assert (=> b!1163970 (= e!745678 e!745683)))

(declare-fun res!525273 () Bool)

(assert (=> b!1163970 (=> (not res!525273) (not e!745683))))

(assert (=> b!1163970 (= res!525273 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 lt!397637)))))

(declare-fun b!1163971 () Bool)

(declare-fun e!745689 () Bool)

(assert (=> b!1163971 (= e!745687 e!745689)))

(declare-fun res!525271 () Bool)

(assert (=> b!1163971 (=> (not res!525271) (not e!745689))))

(declare-fun lt!397621 () Token!3656)

(declare-fun lt!397632 () Token!3656)

(declare-fun separableTokensPredicate!128 (LexerInterface!1692 Token!3656 Token!3656 List!11498) Bool)

(assert (=> b!1163971 (= res!525271 (separableTokensPredicate!128 Lexer!1690 lt!397621 lt!397632 (rules!9540 thiss!10527)))))

(declare-fun e!745667 () Bool)

(assert (=> b!1163971 e!745667))

(declare-fun res!525275 () Bool)

(assert (=> b!1163971 (=> (not res!525275) (not e!745667))))

(assert (=> b!1163971 (= res!525275 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) lt!397632))))

(declare-fun lt!397616 () Unit!17539)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!287 (LexerInterface!1692 List!11498 List!11497 Token!3656) Unit!17539)

(assert (=> b!1163971 (= lt!397616 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!287 Lexer!1690 (rules!9540 thiss!10527) lt!397637 lt!397632))))

(declare-fun apply!2469 (BalanceConc!7536 Int) Token!3656)

(assert (=> b!1163971 (= lt!397632 (apply!2469 (tokens!1610 thiss!10527) 1))))

(assert (=> b!1163971 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) lt!397621)))

(declare-fun lt!397633 () Unit!17539)

(assert (=> b!1163971 (= lt!397633 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!287 Lexer!1690 (rules!9540 thiss!10527) lt!397637 lt!397621))))

(assert (=> b!1163971 (= lt!397621 (apply!2469 (tokens!1610 thiss!10527) 0))))

(declare-fun lt!397623 () List!11497)

(declare-fun tail!1684 (List!11497) List!11497)

(assert (=> b!1163971 (= (tail!1684 lt!397623) (drop!479 lt!397637 2))))

(declare-fun lt!397640 () Unit!17539)

(declare-fun lemmaDropTail!357 (List!11497 Int) Unit!17539)

(assert (=> b!1163971 (= lt!397640 (lemmaDropTail!357 lt!397637 1))))

(declare-fun lt!397629 () List!11497)

(assert (=> b!1163971 (= (tail!1684 lt!397629) lt!397623)))

(declare-fun lt!397634 () Unit!17539)

(assert (=> b!1163971 (= lt!397634 (lemmaDropTail!357 lt!397637 0))))

(declare-fun head!2100 (List!11497) Token!3656)

(declare-fun apply!2470 (List!11497 Int) Token!3656)

(assert (=> b!1163971 (= (head!2100 lt!397623) (apply!2470 lt!397637 1))))

(assert (=> b!1163971 (= lt!397623 (drop!479 lt!397637 1))))

(declare-fun lt!397636 () Unit!17539)

(declare-fun lemmaDropApply!369 (List!11497 Int) Unit!17539)

(assert (=> b!1163971 (= lt!397636 (lemmaDropApply!369 lt!397637 1))))

(assert (=> b!1163971 (= (head!2100 lt!397629) (apply!2470 lt!397637 0))))

(assert (=> b!1163971 (= lt!397629 (drop!479 lt!397637 0))))

(declare-fun lt!397626 () Unit!17539)

(assert (=> b!1163971 (= lt!397626 (lemmaDropApply!369 lt!397637 0))))

(declare-fun b!1163972 () Bool)

(declare-fun e!745668 () Bool)

(declare-fun lt!397624 () List!11497)

(assert (=> b!1163972 (= e!745668 (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) (t!110135 lt!397624)))))

(declare-fun b!1163973 () Bool)

(declare-fun e!745684 () Bool)

(assert (=> b!1163973 (= e!745684 e!745682)))

(declare-fun res!525259 () Bool)

(assert (=> b!1163973 (=> (not res!525259) (not e!745682))))

(assert (=> b!1163973 (= res!525259 (<= to!267 lt!397615))))

(declare-fun size!9030 (BalanceConc!7536) Int)

(assert (=> b!1163973 (= lt!397615 (size!9030 (tokens!1610 thiss!10527)))))

(declare-fun tp!333989 () Bool)

(declare-fun e!745681 () Bool)

(declare-fun b!1163974 () Bool)

(declare-fun e!745673 () Bool)

(declare-fun inv!15094 (BalanceConc!7536) Bool)

(assert (=> b!1163974 (= e!745673 (and tp!333989 (inv!15094 (tokens!1610 thiss!10527)) e!745681))))

(declare-fun b!1163975 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!104 (LexerInterface!1692 List!11497 List!11498) Bool)

(assert (=> b!1163975 (= e!745680 (tokensListTwoByTwoPredicateSeparableList!104 Lexer!1690 lt!397617 (rules!9540 thiss!10527)))))

(declare-fun e!745672 () Bool)

(assert (=> b!1163976 (= e!745686 (not e!745672))))

(declare-fun res!525274 () Bool)

(assert (=> b!1163976 (=> res!525274 e!745672)))

(declare-fun forall!3005 (BalanceConc!7536 Int) Bool)

(assert (=> b!1163976 (= res!525274 (not (forall!3005 (tokens!1610 thiss!10527) lambda!47677)))))

(assert (=> b!1163976 (= (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) lt!397637) e!745678)))

(declare-fun res!525278 () Bool)

(assert (=> b!1163976 (=> res!525278 e!745678)))

(assert (=> b!1163976 (= res!525278 (not ((_ is Cons!11473) lt!397637)))))

(declare-fun list!4224 (BalanceConc!7536) List!11497)

(assert (=> b!1163976 (= lt!397637 (list!4224 (tokens!1610 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!731 (LexerInterface!1692 List!11498 BalanceConc!7536) Bool)

(assert (=> b!1163976 (= (rulesProduceEachTokenIndividually!731 Lexer!1690 (rules!9540 thiss!10527) (tokens!1610 thiss!10527)) (forall!3005 (tokens!1610 thiss!10527) lambda!47677))))

(declare-fun b!1163977 () Bool)

(declare-fun e!745675 () Bool)

(assert (=> b!1163977 (= e!745675 (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) (t!110135 lt!397617)))))

(declare-fun b!1163978 () Bool)

(declare-fun size!9031 (BalanceConc!7534) Int)

(declare-fun charsOf!1066 (Token!3656) BalanceConc!7534)

(assert (=> b!1163978 (= e!745667 (> (size!9031 (charsOf!1066 lt!397632)) 0))))

(declare-fun b!1163979 () Bool)

(declare-fun res!525270 () Bool)

(assert (=> b!1163979 (=> res!525270 e!745685)))

(assert (=> b!1163979 (= res!525270 (not (forall!3005 lt!397630 lambda!47677)))))

(declare-fun b!1163980 () Bool)

(assert (=> b!1163980 (= e!745669 e!745675)))

(declare-fun res!525261 () Bool)

(assert (=> b!1163980 (=> (not res!525261) (not e!745675))))

(assert (=> b!1163980 (= res!525261 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 lt!397617)))))

(declare-fun e!745676 () Bool)

(declare-fun b!1163981 () Bool)

(declare-fun e!745674 () Bool)

(assert (=> b!1163981 (= e!745676 (= (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) lt!397624) e!745674))))

(declare-fun res!525266 () Bool)

(assert (=> b!1163981 (=> res!525266 e!745674)))

(assert (=> b!1163981 (= res!525266 (not ((_ is Cons!11473) lt!397624)))))

(declare-fun b!1163982 () Bool)

(assert (=> b!1163982 (= e!745689 (tokensListTwoByTwoPredicateSeparable!67 Lexer!1690 (tokens!1610 thiss!10527) 1 (rules!9540 thiss!10527)))))

(declare-fun b!1163983 () Bool)

(assert (=> b!1163983 (= e!745672 e!745685)))

(declare-fun res!525263 () Bool)

(assert (=> b!1163983 (=> res!525263 e!745685)))

(assert (=> b!1163983 (= res!525263 (not (forall!3004 lt!397624 lambda!47677)))))

(assert (=> b!1163983 e!745676))

(declare-fun res!525276 () Bool)

(assert (=> b!1163983 (=> (not res!525276) (not e!745676))))

(assert (=> b!1163983 (= res!525276 (forall!3004 lt!397624 lambda!47677))))

(declare-fun lt!397631 () Unit!17539)

(assert (=> b!1163983 (= lt!397631 (lemmaForallSubseq!145 lt!397624 lt!397637 lambda!47677))))

(assert (=> b!1163983 (= lt!397624 (list!4224 lt!397630))))

(declare-fun slice!297 (BalanceConc!7536 Int Int) BalanceConc!7536)

(assert (=> b!1163983 (= lt!397630 (slice!297 (tokens!1610 thiss!10527) from!787 to!267))))

(declare-fun slice!298 (List!11497 Int Int) List!11497)

(assert (=> b!1163983 (subseq!253 (slice!298 lt!397637 from!787 to!267) lt!397637)))

(declare-fun lt!397628 () Unit!17539)

(declare-fun lemmaSliceSubseq!94 (List!11497 Int Int) Unit!17539)

(assert (=> b!1163983 (= lt!397628 (lemmaSliceSubseq!94 lt!397637 from!787 to!267))))

(declare-fun res!525257 () Bool)

(assert (=> start!102054 (=> (not res!525257) (not e!745684))))

(assert (=> start!102054 (= res!525257 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!102054 e!745684))

(assert (=> start!102054 true))

(declare-fun inv!15095 (PrintableTokens!680) Bool)

(assert (=> start!102054 (and (inv!15095 thiss!10527) e!745673)))

(declare-fun b!1163984 () Bool)

(declare-fun tp!333990 () Bool)

(declare-fun inv!15096 (Conc!3757) Bool)

(assert (=> b!1163984 (= e!745681 (and (inv!15096 (c!194500 (tokens!1610 thiss!10527))) tp!333990))))

(declare-fun b!1163985 () Bool)

(assert (=> b!1163985 (= e!745679 (tokensListTwoByTwoPredicateSeparableList!104 Lexer!1690 lt!397618 (rules!9540 thiss!10527)))))

(declare-fun b!1163986 () Bool)

(assert (=> b!1163986 (= e!745674 e!745668)))

(declare-fun res!525264 () Bool)

(assert (=> b!1163986 (=> (not res!525264) (not e!745668))))

(assert (=> b!1163986 (= res!525264 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 lt!397624)))))

(declare-fun b!1163987 () Bool)

(declare-fun res!525262 () Bool)

(assert (=> b!1163987 (=> (not res!525262) (not e!745676))))

(assert (=> b!1163987 (= res!525262 (= (rulesProduceEachTokenIndividually!731 Lexer!1690 (rules!9540 thiss!10527) lt!397630) (forall!3005 lt!397630 lambda!47677)))))

(declare-fun b!1163988 () Bool)

(declare-fun isBalanced!1055 (Conc!3757) Bool)

(assert (=> b!1163988 (= e!745670 (isBalanced!1055 (c!194500 (tokens!1610 thiss!10527))))))

(assert (= (and start!102054 res!525257) b!1163973))

(assert (= (and b!1163973 res!525259) b!1163968))

(assert (= (and b!1163968 res!525265) b!1163976))

(assert (= (and b!1163976 (not res!525278)) b!1163970))

(assert (= (and b!1163970 res!525273) b!1163969))

(assert (= (and b!1163976 (not res!525274)) b!1163983))

(assert (= (and b!1163983 res!525276) b!1163987))

(assert (= (and b!1163987 res!525262) b!1163981))

(assert (= (and b!1163981 (not res!525266)) b!1163986))

(assert (= (and b!1163986 res!525264) b!1163972))

(assert (= (and b!1163983 (not res!525263)) b!1163979))

(assert (= (and b!1163979 (not res!525270)) b!1163966))

(assert (= (and b!1163966 res!525269) b!1163967))

(assert (= (and b!1163967 (not res!525260)) b!1163971))

(assert (= (and b!1163971 res!525275) b!1163978))

(assert (= (and b!1163971 res!525271) b!1163982))

(assert (= (and b!1163966 (not res!525277)) b!1163980))

(assert (= (and b!1163980 res!525261) b!1163977))

(assert (= (and b!1163966 res!525267) b!1163975))

(assert (= (and b!1163966 (not res!525268)) b!1163965))

(assert (= (and b!1163965 res!525258) b!1163964))

(assert (= (and b!1163966 res!525279) b!1163985))

(assert (= (and b!1163966 (not res!525272)) b!1163988))

(assert (= b!1163974 b!1163984))

(assert (= start!102054 b!1163974))

(declare-fun m!1333037 () Bool)

(assert (=> b!1163976 m!1333037))

(assert (=> b!1163976 m!1333037))

(declare-fun m!1333039 () Bool)

(assert (=> b!1163976 m!1333039))

(declare-fun m!1333041 () Bool)

(assert (=> b!1163976 m!1333041))

(declare-fun m!1333043 () Bool)

(assert (=> b!1163976 m!1333043))

(declare-fun m!1333045 () Bool)

(assert (=> b!1163974 m!1333045))

(declare-fun m!1333047 () Bool)

(assert (=> b!1163970 m!1333047))

(declare-fun m!1333049 () Bool)

(assert (=> b!1163981 m!1333049))

(declare-fun m!1333051 () Bool)

(assert (=> b!1163968 m!1333051))

(declare-fun m!1333053 () Bool)

(assert (=> b!1163968 m!1333053))

(declare-fun m!1333055 () Bool)

(assert (=> start!102054 m!1333055))

(declare-fun m!1333057 () Bool)

(assert (=> b!1163982 m!1333057))

(declare-fun m!1333059 () Bool)

(assert (=> b!1163975 m!1333059))

(declare-fun m!1333061 () Bool)

(assert (=> b!1163986 m!1333061))

(declare-fun m!1333063 () Bool)

(assert (=> b!1163979 m!1333063))

(declare-fun m!1333065 () Bool)

(assert (=> b!1163988 m!1333065))

(declare-fun m!1333067 () Bool)

(assert (=> b!1163977 m!1333067))

(declare-fun m!1333069 () Bool)

(assert (=> b!1163985 m!1333069))

(declare-fun m!1333071 () Bool)

(assert (=> b!1163965 m!1333071))

(declare-fun m!1333073 () Bool)

(assert (=> b!1163984 m!1333073))

(declare-fun m!1333075 () Bool)

(assert (=> b!1163978 m!1333075))

(assert (=> b!1163978 m!1333075))

(declare-fun m!1333077 () Bool)

(assert (=> b!1163978 m!1333077))

(declare-fun m!1333079 () Bool)

(assert (=> b!1163987 m!1333079))

(assert (=> b!1163987 m!1333063))

(declare-fun m!1333081 () Bool)

(assert (=> b!1163980 m!1333081))

(declare-fun m!1333083 () Bool)

(assert (=> b!1163964 m!1333083))

(declare-fun m!1333085 () Bool)

(assert (=> b!1163971 m!1333085))

(declare-fun m!1333087 () Bool)

(assert (=> b!1163971 m!1333087))

(declare-fun m!1333089 () Bool)

(assert (=> b!1163971 m!1333089))

(declare-fun m!1333091 () Bool)

(assert (=> b!1163971 m!1333091))

(declare-fun m!1333093 () Bool)

(assert (=> b!1163971 m!1333093))

(declare-fun m!1333095 () Bool)

(assert (=> b!1163971 m!1333095))

(declare-fun m!1333097 () Bool)

(assert (=> b!1163971 m!1333097))

(declare-fun m!1333099 () Bool)

(assert (=> b!1163971 m!1333099))

(declare-fun m!1333101 () Bool)

(assert (=> b!1163971 m!1333101))

(declare-fun m!1333103 () Bool)

(assert (=> b!1163971 m!1333103))

(declare-fun m!1333105 () Bool)

(assert (=> b!1163971 m!1333105))

(declare-fun m!1333107 () Bool)

(assert (=> b!1163971 m!1333107))

(declare-fun m!1333109 () Bool)

(assert (=> b!1163971 m!1333109))

(declare-fun m!1333111 () Bool)

(assert (=> b!1163971 m!1333111))

(declare-fun m!1333113 () Bool)

(assert (=> b!1163971 m!1333113))

(declare-fun m!1333115 () Bool)

(assert (=> b!1163971 m!1333115))

(declare-fun m!1333117 () Bool)

(assert (=> b!1163971 m!1333117))

(declare-fun m!1333119 () Bool)

(assert (=> b!1163971 m!1333119))

(declare-fun m!1333121 () Bool)

(assert (=> b!1163971 m!1333121))

(declare-fun m!1333123 () Bool)

(assert (=> b!1163971 m!1333123))

(declare-fun m!1333125 () Bool)

(assert (=> b!1163967 m!1333125))

(declare-fun m!1333127 () Bool)

(assert (=> b!1163972 m!1333127))

(declare-fun m!1333129 () Bool)

(assert (=> b!1163983 m!1333129))

(declare-fun m!1333131 () Bool)

(assert (=> b!1163983 m!1333131))

(assert (=> b!1163983 m!1333131))

(declare-fun m!1333133 () Bool)

(assert (=> b!1163983 m!1333133))

(declare-fun m!1333135 () Bool)

(assert (=> b!1163983 m!1333135))

(declare-fun m!1333137 () Bool)

(assert (=> b!1163983 m!1333137))

(assert (=> b!1163983 m!1333133))

(declare-fun m!1333139 () Bool)

(assert (=> b!1163983 m!1333139))

(declare-fun m!1333141 () Bool)

(assert (=> b!1163983 m!1333141))

(declare-fun m!1333143 () Bool)

(assert (=> b!1163973 m!1333143))

(declare-fun m!1333145 () Bool)

(assert (=> b!1163966 m!1333145))

(declare-fun m!1333147 () Bool)

(assert (=> b!1163966 m!1333147))

(declare-fun m!1333149 () Bool)

(assert (=> b!1163966 m!1333149))

(assert (=> b!1163966 m!1333147))

(declare-fun m!1333151 () Bool)

(assert (=> b!1163966 m!1333151))

(declare-fun m!1333153 () Bool)

(assert (=> b!1163966 m!1333153))

(declare-fun m!1333155 () Bool)

(assert (=> b!1163966 m!1333155))

(declare-fun m!1333157 () Bool)

(assert (=> b!1163966 m!1333157))

(declare-fun m!1333159 () Bool)

(assert (=> b!1163966 m!1333159))

(declare-fun m!1333161 () Bool)

(assert (=> b!1163966 m!1333161))

(declare-fun m!1333163 () Bool)

(assert (=> b!1163966 m!1333163))

(assert (=> b!1163966 m!1333159))

(declare-fun m!1333165 () Bool)

(assert (=> b!1163966 m!1333165))

(declare-fun m!1333167 () Bool)

(assert (=> b!1163966 m!1333167))

(declare-fun m!1333169 () Bool)

(assert (=> b!1163966 m!1333169))

(declare-fun m!1333171 () Bool)

(assert (=> b!1163966 m!1333171))

(declare-fun m!1333173 () Bool)

(assert (=> b!1163969 m!1333173))

(check-sat (not b!1163986) (not b!1163965) (not start!102054) (not b!1163970) (not b!1163971) (not b!1163995) (not b!1163977) (not b!1163978) (not b!1163996) (not b!1163969) (not b!1163968) (not b!1163975) (not b!1163987) (not b!1163979) (not b!1163966) (not b!1163967) (not b!1163985) (not b!1163982) (not b!1163972) (not b!1163984) (not b!1163981) (not b!1163980) (not b!1163964) (not b!1163973) (not b!1163983) (not b!1163976) (not b!1163974) (not b!1163988))
(check-sat)
(get-model)

(declare-fun b!1164052 () Bool)

(declare-fun e!745737 () Bool)

(declare-fun lt!397862 () List!11497)

(assert (=> b!1164052 (= e!745737 (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) lt!397862))))

(declare-fun b!1164053 () Bool)

(declare-fun e!745733 () Bool)

(declare-fun lt!397850 () List!11497)

(declare-fun size!9036 (List!11497) Int)

(assert (=> b!1164053 (= e!745733 (<= 0 (size!9036 lt!397850)))))

(declare-fun d!332187 () Bool)

(declare-fun lt!397857 () Bool)

(declare-fun dropList!316 (BalanceConc!7536 Int) List!11497)

(assert (=> d!332187 (= lt!397857 (tokensListTwoByTwoPredicateSeparableList!104 Lexer!1690 (dropList!316 (tokens!1610 thiss!10527) 0) (rules!9540 thiss!10527)))))

(declare-fun lt!397868 () Unit!17539)

(declare-fun lt!397858 () Unit!17539)

(assert (=> d!332187 (= lt!397868 lt!397858)))

(declare-fun lt!397866 () List!11497)

(assert (=> d!332187 (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) lt!397866)))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!26 (LexerInterface!1692 List!11498 List!11497 List!11497) Unit!17539)

(assert (=> d!332187 (= lt!397858 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!26 Lexer!1690 (rules!9540 thiss!10527) lt!397862 lt!397866))))

(assert (=> d!332187 e!745737))

(declare-fun res!525338 () Bool)

(assert (=> d!332187 (=> (not res!525338) (not e!745737))))

(assert (=> d!332187 (= res!525338 ((_ is Lexer!1690) Lexer!1690))))

(assert (=> d!332187 (= lt!397866 (dropList!316 (tokens!1610 thiss!10527) 0))))

(assert (=> d!332187 (= lt!397862 (list!4224 (tokens!1610 thiss!10527)))))

(declare-fun lt!397845 () Unit!17539)

(declare-fun lt!397840 () Unit!17539)

(assert (=> d!332187 (= lt!397845 lt!397840)))

(assert (=> d!332187 (subseq!253 (drop!479 lt!397850 0) lt!397850)))

(declare-fun lemmaDropSubSeq!26 (List!11497 Int) Unit!17539)

(assert (=> d!332187 (= lt!397840 (lemmaDropSubSeq!26 lt!397850 0))))

(assert (=> d!332187 e!745733))

(declare-fun res!525339 () Bool)

(assert (=> d!332187 (=> (not res!525339) (not e!745733))))

(assert (=> d!332187 (= res!525339 (>= 0 0))))

(assert (=> d!332187 (= lt!397850 (list!4224 (tokens!1610 thiss!10527)))))

(declare-fun e!745735 () Bool)

(assert (=> d!332187 (= lt!397857 e!745735)))

(declare-fun res!525340 () Bool)

(assert (=> d!332187 (=> res!525340 e!745735)))

(assert (=> d!332187 (= res!525340 (not (< 0 (- (size!9030 (tokens!1610 thiss!10527)) 1))))))

(declare-fun e!745734 () Bool)

(assert (=> d!332187 e!745734))

(declare-fun res!525335 () Bool)

(assert (=> d!332187 (=> (not res!525335) (not e!745734))))

(assert (=> d!332187 (= res!525335 (>= 0 0))))

(assert (=> d!332187 (= (tokensListTwoByTwoPredicateSeparable!67 Lexer!1690 (tokens!1610 thiss!10527) 0 (rules!9540 thiss!10527)) lt!397857)))

(declare-fun b!1164054 () Bool)

(declare-fun e!745736 () Bool)

(assert (=> b!1164054 (= e!745735 e!745736)))

(declare-fun res!525337 () Bool)

(assert (=> b!1164054 (=> (not res!525337) (not e!745736))))

(assert (=> b!1164054 (= res!525337 (separableTokensPredicate!128 Lexer!1690 (apply!2469 (tokens!1610 thiss!10527) 0) (apply!2469 (tokens!1610 thiss!10527) (+ 0 1)) (rules!9540 thiss!10527)))))

(declare-fun lt!397855 () Unit!17539)

(declare-fun Unit!17548 () Unit!17539)

(assert (=> b!1164054 (= lt!397855 Unit!17548)))

(assert (=> b!1164054 (> (size!9031 (charsOf!1066 (apply!2469 (tokens!1610 thiss!10527) (+ 0 1)))) 0)))

(declare-fun lt!397865 () Unit!17539)

(declare-fun Unit!17549 () Unit!17539)

(assert (=> b!1164054 (= lt!397865 Unit!17549)))

(assert (=> b!1164054 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (apply!2469 (tokens!1610 thiss!10527) (+ 0 1)))))

(declare-fun lt!397870 () Unit!17539)

(declare-fun Unit!17550 () Unit!17539)

(assert (=> b!1164054 (= lt!397870 Unit!17550)))

(assert (=> b!1164054 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (apply!2469 (tokens!1610 thiss!10527) 0))))

(declare-fun lt!397867 () Unit!17539)

(declare-fun lt!397843 () Unit!17539)

(assert (=> b!1164054 (= lt!397867 lt!397843)))

(declare-fun lt!397849 () Token!3656)

(assert (=> b!1164054 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) lt!397849)))

(declare-fun lt!397852 () List!11497)

(assert (=> b!1164054 (= lt!397843 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!287 Lexer!1690 (rules!9540 thiss!10527) lt!397852 lt!397849))))

(assert (=> b!1164054 (= lt!397849 (apply!2469 (tokens!1610 thiss!10527) (+ 0 1)))))

(assert (=> b!1164054 (= lt!397852 (list!4224 (tokens!1610 thiss!10527)))))

(declare-fun lt!397844 () Unit!17539)

(declare-fun lt!397869 () Unit!17539)

(assert (=> b!1164054 (= lt!397844 lt!397869)))

(declare-fun lt!397846 () Token!3656)

(assert (=> b!1164054 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) lt!397846)))

(declare-fun lt!397871 () List!11497)

(assert (=> b!1164054 (= lt!397869 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!287 Lexer!1690 (rules!9540 thiss!10527) lt!397871 lt!397846))))

(assert (=> b!1164054 (= lt!397846 (apply!2469 (tokens!1610 thiss!10527) 0))))

(assert (=> b!1164054 (= lt!397871 (list!4224 (tokens!1610 thiss!10527)))))

(declare-fun lt!397839 () Unit!17539)

(declare-fun lt!397854 () Unit!17539)

(assert (=> b!1164054 (= lt!397839 lt!397854)))

(declare-fun lt!397856 () List!11497)

(declare-fun lt!397864 () Int)

(assert (=> b!1164054 (= (tail!1684 (drop!479 lt!397856 lt!397864)) (drop!479 lt!397856 (+ lt!397864 1)))))

(assert (=> b!1164054 (= lt!397854 (lemmaDropTail!357 lt!397856 lt!397864))))

(assert (=> b!1164054 (= lt!397864 (+ 0 1))))

(assert (=> b!1164054 (= lt!397856 (list!4224 (tokens!1610 thiss!10527)))))

(declare-fun lt!397861 () Unit!17539)

(declare-fun lt!397847 () Unit!17539)

(assert (=> b!1164054 (= lt!397861 lt!397847)))

(declare-fun lt!397848 () List!11497)

(assert (=> b!1164054 (= (tail!1684 (drop!479 lt!397848 0)) (drop!479 lt!397848 (+ 0 1)))))

(assert (=> b!1164054 (= lt!397847 (lemmaDropTail!357 lt!397848 0))))

(assert (=> b!1164054 (= lt!397848 (list!4224 (tokens!1610 thiss!10527)))))

(declare-fun lt!397851 () Unit!17539)

(declare-fun lt!397863 () Unit!17539)

(assert (=> b!1164054 (= lt!397851 lt!397863)))

(declare-fun lt!397860 () List!11497)

(declare-fun lt!397842 () Int)

(assert (=> b!1164054 (= (head!2100 (drop!479 lt!397860 lt!397842)) (apply!2470 lt!397860 lt!397842))))

(assert (=> b!1164054 (= lt!397863 (lemmaDropApply!369 lt!397860 lt!397842))))

(assert (=> b!1164054 (= lt!397842 (+ 0 1))))

(assert (=> b!1164054 (= lt!397860 (list!4224 (tokens!1610 thiss!10527)))))

(declare-fun lt!397841 () Unit!17539)

(declare-fun lt!397853 () Unit!17539)

(assert (=> b!1164054 (= lt!397841 lt!397853)))

(declare-fun lt!397859 () List!11497)

(assert (=> b!1164054 (= (head!2100 (drop!479 lt!397859 0)) (apply!2470 lt!397859 0))))

(assert (=> b!1164054 (= lt!397853 (lemmaDropApply!369 lt!397859 0))))

(assert (=> b!1164054 (= lt!397859 (list!4224 (tokens!1610 thiss!10527)))))

(declare-fun b!1164055 () Bool)

(declare-fun res!525336 () Bool)

(assert (=> b!1164055 (=> (not res!525336) (not e!745737))))

(declare-fun isEmpty!6991 (List!11498) Bool)

(assert (=> b!1164055 (= res!525336 (not (isEmpty!6991 (rules!9540 thiss!10527))))))

(declare-fun b!1164056 () Bool)

(assert (=> b!1164056 (= e!745736 (tokensListTwoByTwoPredicateSeparable!67 Lexer!1690 (tokens!1610 thiss!10527) (+ 0 1) (rules!9540 thiss!10527)))))

(declare-fun b!1164057 () Bool)

(declare-fun res!525334 () Bool)

(assert (=> b!1164057 (=> (not res!525334) (not e!745737))))

(assert (=> b!1164057 (= res!525334 (subseq!253 lt!397866 lt!397862))))

(declare-fun b!1164058 () Bool)

(declare-fun res!525333 () Bool)

(assert (=> b!1164058 (=> (not res!525333) (not e!745737))))

(assert (=> b!1164058 (= res!525333 (rulesInvariant!1566 Lexer!1690 (rules!9540 thiss!10527)))))

(declare-fun b!1164059 () Bool)

(assert (=> b!1164059 (= e!745734 (<= 0 (size!9030 (tokens!1610 thiss!10527))))))

(assert (= (and d!332187 res!525335) b!1164059))

(assert (= (and d!332187 (not res!525340)) b!1164054))

(assert (= (and b!1164054 res!525337) b!1164056))

(assert (= (and d!332187 res!525339) b!1164053))

(assert (= (and d!332187 res!525338) b!1164055))

(assert (= (and b!1164055 res!525336) b!1164058))

(assert (= (and b!1164058 res!525333) b!1164057))

(assert (= (and b!1164057 res!525334) b!1164052))

(assert (=> b!1164058 m!1333051))

(declare-fun m!1333287 () Bool)

(assert (=> b!1164056 m!1333287))

(declare-fun m!1333289 () Bool)

(assert (=> b!1164053 m!1333289))

(declare-fun m!1333291 () Bool)

(assert (=> b!1164054 m!1333291))

(declare-fun m!1333293 () Bool)

(assert (=> b!1164054 m!1333293))

(declare-fun m!1333295 () Bool)

(assert (=> b!1164054 m!1333295))

(declare-fun m!1333297 () Bool)

(assert (=> b!1164054 m!1333297))

(assert (=> b!1164054 m!1333101))

(declare-fun m!1333299 () Bool)

(assert (=> b!1164054 m!1333299))

(declare-fun m!1333301 () Bool)

(assert (=> b!1164054 m!1333301))

(assert (=> b!1164054 m!1333101))

(declare-fun m!1333303 () Bool)

(assert (=> b!1164054 m!1333303))

(declare-fun m!1333305 () Bool)

(assert (=> b!1164054 m!1333305))

(declare-fun m!1333307 () Bool)

(assert (=> b!1164054 m!1333307))

(declare-fun m!1333309 () Bool)

(assert (=> b!1164054 m!1333309))

(declare-fun m!1333311 () Bool)

(assert (=> b!1164054 m!1333311))

(declare-fun m!1333313 () Bool)

(assert (=> b!1164054 m!1333313))

(declare-fun m!1333315 () Bool)

(assert (=> b!1164054 m!1333315))

(assert (=> b!1164054 m!1333101))

(declare-fun m!1333317 () Bool)

(assert (=> b!1164054 m!1333317))

(declare-fun m!1333319 () Bool)

(assert (=> b!1164054 m!1333319))

(declare-fun m!1333321 () Bool)

(assert (=> b!1164054 m!1333321))

(declare-fun m!1333323 () Bool)

(assert (=> b!1164054 m!1333323))

(assert (=> b!1164054 m!1333315))

(declare-fun m!1333325 () Bool)

(assert (=> b!1164054 m!1333325))

(assert (=> b!1164054 m!1333293))

(declare-fun m!1333327 () Bool)

(assert (=> b!1164054 m!1333327))

(assert (=> b!1164054 m!1333295))

(declare-fun m!1333329 () Bool)

(assert (=> b!1164054 m!1333329))

(assert (=> b!1164054 m!1333041))

(assert (=> b!1164054 m!1333299))

(declare-fun m!1333331 () Bool)

(assert (=> b!1164054 m!1333331))

(assert (=> b!1164054 m!1333321))

(declare-fun m!1333333 () Bool)

(assert (=> b!1164054 m!1333333))

(assert (=> b!1164054 m!1333299))

(declare-fun m!1333335 () Bool)

(assert (=> b!1164054 m!1333335))

(declare-fun m!1333337 () Bool)

(assert (=> b!1164054 m!1333337))

(declare-fun m!1333339 () Bool)

(assert (=> b!1164054 m!1333339))

(assert (=> b!1164054 m!1333299))

(assert (=> b!1164054 m!1333311))

(declare-fun m!1333341 () Bool)

(assert (=> b!1164054 m!1333341))

(declare-fun m!1333343 () Bool)

(assert (=> d!332187 m!1333343))

(assert (=> d!332187 m!1333041))

(declare-fun m!1333345 () Bool)

(assert (=> d!332187 m!1333345))

(declare-fun m!1333347 () Bool)

(assert (=> d!332187 m!1333347))

(declare-fun m!1333349 () Bool)

(assert (=> d!332187 m!1333349))

(assert (=> d!332187 m!1333143))

(declare-fun m!1333351 () Bool)

(assert (=> d!332187 m!1333351))

(assert (=> d!332187 m!1333351))

(declare-fun m!1333353 () Bool)

(assert (=> d!332187 m!1333353))

(assert (=> d!332187 m!1333347))

(declare-fun m!1333355 () Bool)

(assert (=> d!332187 m!1333355))

(declare-fun m!1333357 () Bool)

(assert (=> b!1164055 m!1333357))

(declare-fun m!1333359 () Bool)

(assert (=> b!1164052 m!1333359))

(assert (=> b!1164059 m!1333143))

(declare-fun m!1333361 () Bool)

(assert (=> b!1164057 m!1333361))

(assert (=> b!1163967 d!332187))

(declare-fun b!1164072 () Bool)

(declare-fun res!525354 () Bool)

(declare-fun e!745743 () Bool)

(assert (=> b!1164072 (=> (not res!525354) (not e!745743))))

(assert (=> b!1164072 (= res!525354 (isBalanced!1055 (right!10363 (c!194500 (tokens!1610 thiss!10527)))))))

(declare-fun b!1164073 () Bool)

(declare-fun res!525353 () Bool)

(assert (=> b!1164073 (=> (not res!525353) (not e!745743))))

(declare-fun height!509 (Conc!3757) Int)

(assert (=> b!1164073 (= res!525353 (<= (- (height!509 (left!10033 (c!194500 (tokens!1610 thiss!10527)))) (height!509 (right!10363 (c!194500 (tokens!1610 thiss!10527))))) 1))))

(declare-fun b!1164074 () Bool)

(declare-fun res!525358 () Bool)

(assert (=> b!1164074 (=> (not res!525358) (not e!745743))))

(declare-fun isEmpty!6993 (Conc!3757) Bool)

(assert (=> b!1164074 (= res!525358 (not (isEmpty!6993 (left!10033 (c!194500 (tokens!1610 thiss!10527))))))))

(declare-fun b!1164076 () Bool)

(assert (=> b!1164076 (= e!745743 (not (isEmpty!6993 (right!10363 (c!194500 (tokens!1610 thiss!10527))))))))

(declare-fun b!1164077 () Bool)

(declare-fun res!525357 () Bool)

(assert (=> b!1164077 (=> (not res!525357) (not e!745743))))

(assert (=> b!1164077 (= res!525357 (isBalanced!1055 (left!10033 (c!194500 (tokens!1610 thiss!10527)))))))

(declare-fun b!1164075 () Bool)

(declare-fun e!745742 () Bool)

(assert (=> b!1164075 (= e!745742 e!745743)))

(declare-fun res!525355 () Bool)

(assert (=> b!1164075 (=> (not res!525355) (not e!745743))))

(assert (=> b!1164075 (= res!525355 (<= (- 1) (- (height!509 (left!10033 (c!194500 (tokens!1610 thiss!10527)))) (height!509 (right!10363 (c!194500 (tokens!1610 thiss!10527)))))))))

(declare-fun d!332205 () Bool)

(declare-fun res!525356 () Bool)

(assert (=> d!332205 (=> res!525356 e!745742)))

(assert (=> d!332205 (= res!525356 (not ((_ is Node!3757) (c!194500 (tokens!1610 thiss!10527)))))))

(assert (=> d!332205 (= (isBalanced!1055 (c!194500 (tokens!1610 thiss!10527))) e!745742)))

(assert (= (and d!332205 (not res!525356)) b!1164075))

(assert (= (and b!1164075 res!525355) b!1164073))

(assert (= (and b!1164073 res!525353) b!1164077))

(assert (= (and b!1164077 res!525357) b!1164072))

(assert (= (and b!1164072 res!525354) b!1164074))

(assert (= (and b!1164074 res!525358) b!1164076))

(declare-fun m!1333363 () Bool)

(assert (=> b!1164072 m!1333363))

(declare-fun m!1333365 () Bool)

(assert (=> b!1164073 m!1333365))

(declare-fun m!1333367 () Bool)

(assert (=> b!1164073 m!1333367))

(assert (=> b!1164075 m!1333365))

(assert (=> b!1164075 m!1333367))

(declare-fun m!1333369 () Bool)

(assert (=> b!1164076 m!1333369))

(declare-fun m!1333371 () Bool)

(assert (=> b!1164077 m!1333371))

(declare-fun m!1333373 () Bool)

(assert (=> b!1164074 m!1333373))

(assert (=> b!1163988 d!332205))

(declare-fun d!332207 () Bool)

(declare-fun res!525363 () Bool)

(declare-fun e!745748 () Bool)

(assert (=> d!332207 (=> res!525363 e!745748)))

(assert (=> d!332207 (= res!525363 ((_ is Nil!11473) lt!397618))))

(assert (=> d!332207 (= (forall!3004 lt!397618 lambda!47677) e!745748)))

(declare-fun b!1164082 () Bool)

(declare-fun e!745749 () Bool)

(assert (=> b!1164082 (= e!745748 e!745749)))

(declare-fun res!525364 () Bool)

(assert (=> b!1164082 (=> (not res!525364) (not e!745749))))

(declare-fun dynLambda!5054 (Int Token!3656) Bool)

(assert (=> b!1164082 (= res!525364 (dynLambda!5054 lambda!47677 (h!16874 lt!397618)))))

(declare-fun b!1164083 () Bool)

(assert (=> b!1164083 (= e!745749 (forall!3004 (t!110135 lt!397618) lambda!47677))))

(assert (= (and d!332207 (not res!525363)) b!1164082))

(assert (= (and b!1164082 res!525364) b!1164083))

(declare-fun b_lambda!34693 () Bool)

(assert (=> (not b_lambda!34693) (not b!1164082)))

(declare-fun m!1333375 () Bool)

(assert (=> b!1164082 m!1333375))

(declare-fun m!1333377 () Bool)

(assert (=> b!1164083 m!1333377))

(assert (=> b!1163966 d!332207))

(declare-fun bs!283957 () Bool)

(declare-fun b!1164110 () Bool)

(assert (= bs!283957 (and b!1164110 b!1163976)))

(declare-fun lambda!47685 () Int)

(assert (=> bs!283957 (= lambda!47685 lambda!47677)))

(declare-fun b!1164122 () Bool)

(declare-fun e!745782 () Bool)

(assert (=> b!1164122 (= e!745782 true)))

(declare-fun b!1164121 () Bool)

(declare-fun e!745781 () Bool)

(assert (=> b!1164121 (= e!745781 e!745782)))

(declare-fun b!1164120 () Bool)

(declare-fun e!745780 () Bool)

(assert (=> b!1164120 (= e!745780 e!745781)))

(assert (=> b!1164110 e!745780))

(assert (= b!1164121 b!1164122))

(assert (= b!1164120 b!1164121))

(assert (= (and b!1164110 ((_ is Cons!11474) (rules!9540 thiss!10527))) b!1164120))

(declare-fun order!7019 () Int)

(declare-fun order!7017 () Int)

(declare-fun dynLambda!5055 (Int Int) Int)

(declare-fun dynLambda!5056 (Int Int) Int)

(assert (=> b!1164122 (< (dynLambda!5055 order!7017 (toValue!3098 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47685))))

(declare-fun order!7021 () Int)

(declare-fun dynLambda!5057 (Int Int) Int)

(assert (=> b!1164122 (< (dynLambda!5057 order!7021 (toChars!2957 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47685))))

(declare-fun b!1164111 () Bool)

(declare-fun e!745772 () Bool)

(declare-fun lt!397892 () List!11497)

(assert (=> b!1164111 (= e!745772 (subseq!253 lt!397892 lt!397637))))

(declare-fun b!1164108 () Bool)

(declare-fun e!745770 () Bool)

(declare-fun e!745771 () Bool)

(assert (=> b!1164108 (= e!745770 e!745771)))

(declare-fun res!525376 () Bool)

(assert (=> b!1164108 (=> (not res!525376) (not e!745771))))

(declare-fun lt!397889 () List!11497)

(assert (=> b!1164108 (= res!525376 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 lt!397889)))))

(declare-fun e!745773 () Bool)

(assert (=> b!1164110 (= e!745773 (tokensListTwoByTwoPredicateSeparableList!104 Lexer!1690 (drop!479 lt!397637 from!787) (rules!9540 thiss!10527)))))

(declare-fun lt!397895 () Unit!17539)

(declare-fun lt!397893 () Unit!17539)

(assert (=> b!1164110 (= lt!397895 lt!397893)))

(assert (=> b!1164110 (forall!3004 lt!397892 lambda!47685)))

(assert (=> b!1164110 (= lt!397893 (lemmaForallSubseq!145 lt!397892 lt!397637 lambda!47685))))

(assert (=> b!1164110 e!745772))

(declare-fun res!525377 () Bool)

(assert (=> b!1164110 (=> (not res!525377) (not e!745772))))

(assert (=> b!1164110 (= res!525377 (forall!3004 lt!397637 lambda!47685))))

(assert (=> b!1164110 (= lt!397892 (drop!479 lt!397637 from!787))))

(declare-fun lt!397894 () Unit!17539)

(declare-fun lt!397891 () Unit!17539)

(assert (=> b!1164110 (= lt!397894 lt!397891)))

(assert (=> b!1164110 (subseq!253 (drop!479 lt!397637 from!787) lt!397637)))

(assert (=> b!1164110 (= lt!397891 (lemmaDropSubseq!44 lt!397637 from!787))))

(declare-fun b!1164109 () Bool)

(assert (=> b!1164109 (= e!745771 (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) (t!110135 lt!397889)))))

(declare-fun d!332209 () Bool)

(assert (=> d!332209 e!745773))

(declare-fun res!525378 () Bool)

(assert (=> d!332209 (=> (not res!525378) (not e!745773))))

(assert (=> d!332209 (= res!525378 (= (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) (drop!479 lt!397637 from!787)) e!745770))))

(declare-fun res!525379 () Bool)

(assert (=> d!332209 (=> res!525379 e!745770)))

(assert (=> d!332209 (= res!525379 (not ((_ is Cons!11473) lt!397889)))))

(assert (=> d!332209 (= lt!397889 (drop!479 lt!397637 from!787))))

(declare-fun lt!397890 () Unit!17539)

(declare-fun choose!7500 (LexerInterface!1692 List!11497 Int List!11498) Unit!17539)

(assert (=> d!332209 (= lt!397890 (choose!7500 Lexer!1690 lt!397637 from!787 (rules!9540 thiss!10527)))))

(assert (=> d!332209 (not (isEmpty!6991 (rules!9540 thiss!10527)))))

(assert (=> d!332209 (= (tokensListTwoByTwoPredicateSeparableTokensDropList!44 Lexer!1690 lt!397637 from!787 (rules!9540 thiss!10527)) lt!397890)))

(assert (= (and d!332209 (not res!525379)) b!1164108))

(assert (= (and b!1164108 res!525376) b!1164109))

(assert (= (and d!332209 res!525378) b!1164110))

(assert (= (and b!1164110 res!525377) b!1164111))

(declare-fun m!1333387 () Bool)

(assert (=> b!1164111 m!1333387))

(assert (=> d!332209 m!1333151))

(assert (=> d!332209 m!1333151))

(declare-fun m!1333389 () Bool)

(assert (=> d!332209 m!1333389))

(declare-fun m!1333391 () Bool)

(assert (=> d!332209 m!1333391))

(assert (=> d!332209 m!1333357))

(declare-fun m!1333393 () Bool)

(assert (=> b!1164109 m!1333393))

(declare-fun m!1333395 () Bool)

(assert (=> b!1164108 m!1333395))

(declare-fun m!1333397 () Bool)

(assert (=> b!1164110 m!1333397))

(declare-fun m!1333399 () Bool)

(assert (=> b!1164110 m!1333399))

(declare-fun m!1333401 () Bool)

(assert (=> b!1164110 m!1333401))

(assert (=> b!1164110 m!1333151))

(assert (=> b!1164110 m!1333151))

(declare-fun m!1333403 () Bool)

(assert (=> b!1164110 m!1333403))

(assert (=> b!1164110 m!1333151))

(declare-fun m!1333405 () Bool)

(assert (=> b!1164110 m!1333405))

(assert (=> b!1164110 m!1333171))

(assert (=> b!1163966 d!332209))

(declare-fun bs!283963 () Bool)

(declare-fun b!1164150 () Bool)

(assert (= bs!283963 (and b!1164150 b!1163976)))

(declare-fun lambda!47692 () Int)

(assert (=> bs!283963 (= lambda!47692 lambda!47677)))

(declare-fun bs!283964 () Bool)

(assert (= bs!283964 (and b!1164150 b!1164110)))

(assert (=> bs!283964 (= lambda!47692 lambda!47685)))

(declare-fun b!1164154 () Bool)

(declare-fun e!745814 () Bool)

(assert (=> b!1164154 (= e!745814 true)))

(declare-fun b!1164153 () Bool)

(declare-fun e!745813 () Bool)

(assert (=> b!1164153 (= e!745813 e!745814)))

(declare-fun b!1164152 () Bool)

(declare-fun e!745812 () Bool)

(assert (=> b!1164152 (= e!745812 e!745813)))

(assert (=> b!1164150 e!745812))

(assert (= b!1164153 b!1164154))

(assert (= b!1164152 b!1164153))

(assert (= (and b!1164150 ((_ is Cons!11474) (rules!9540 thiss!10527))) b!1164152))

(assert (=> b!1164154 (< (dynLambda!5055 order!7017 (toValue!3098 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47692))))

(assert (=> b!1164154 (< (dynLambda!5057 order!7021 (toChars!2957 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47692))))

(declare-fun b!1164148 () Bool)

(declare-fun e!745811 () Bool)

(declare-fun e!745808 () Bool)

(assert (=> b!1164148 (= e!745811 e!745808)))

(declare-fun res!525401 () Bool)

(assert (=> b!1164148 (=> (not res!525401) (not e!745808))))

(declare-fun lt!397913 () List!11497)

(assert (=> b!1164148 (= res!525401 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 lt!397913)))))

(declare-fun e!745810 () Bool)

(assert (=> b!1164150 (= e!745810 (tokensListTwoByTwoPredicateSeparableList!104 Lexer!1690 (take!69 lt!397617 (- to!267 from!787)) (rules!9540 thiss!10527)))))

(declare-fun lt!397911 () Unit!17539)

(declare-fun lt!397910 () Unit!17539)

(assert (=> b!1164150 (= lt!397911 lt!397910)))

(declare-fun lt!397912 () List!11497)

(assert (=> b!1164150 (forall!3004 lt!397912 lambda!47692)))

(assert (=> b!1164150 (= lt!397910 (lemmaForallSubseq!145 lt!397912 lt!397617 lambda!47692))))

(declare-fun e!745809 () Bool)

(assert (=> b!1164150 e!745809))

(declare-fun res!525400 () Bool)

(assert (=> b!1164150 (=> (not res!525400) (not e!745809))))

(assert (=> b!1164150 (= res!525400 (forall!3004 lt!397617 lambda!47692))))

(assert (=> b!1164150 (= lt!397912 (take!69 lt!397617 (- to!267 from!787)))))

(declare-fun b!1164151 () Bool)

(assert (=> b!1164151 (= e!745809 (subseq!253 lt!397912 lt!397617))))

(declare-fun b!1164149 () Bool)

(assert (=> b!1164149 (= e!745808 (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) (t!110135 lt!397913)))))

(declare-fun d!332215 () Bool)

(assert (=> d!332215 e!745810))

(declare-fun res!525399 () Bool)

(assert (=> d!332215 (=> (not res!525399) (not e!745810))))

(assert (=> d!332215 (= res!525399 (= (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) (take!69 lt!397617 (- to!267 from!787))) e!745811))))

(declare-fun res!525402 () Bool)

(assert (=> d!332215 (=> res!525402 e!745811)))

(assert (=> d!332215 (= res!525402 (not ((_ is Cons!11473) lt!397913)))))

(assert (=> d!332215 (= lt!397913 (take!69 lt!397617 (- to!267 from!787)))))

(declare-fun lt!397914 () Unit!17539)

(declare-fun choose!7501 (LexerInterface!1692 List!11497 Int List!11498) Unit!17539)

(assert (=> d!332215 (= lt!397914 (choose!7501 Lexer!1690 lt!397617 (- to!267 from!787) (rules!9540 thiss!10527)))))

(assert (=> d!332215 (not (isEmpty!6991 (rules!9540 thiss!10527)))))

(assert (=> d!332215 (= (tokensListTwoByTwoPredicateSeparableTokensTakeList!36 Lexer!1690 lt!397617 (- to!267 from!787) (rules!9540 thiss!10527)) lt!397914)))

(assert (= (and d!332215 (not res!525402)) b!1164148))

(assert (= (and b!1164148 res!525401) b!1164149))

(assert (= (and d!332215 res!525399) b!1164150))

(assert (= (and b!1164150 res!525400) b!1164151))

(declare-fun m!1333419 () Bool)

(assert (=> b!1164151 m!1333419))

(declare-fun m!1333421 () Bool)

(assert (=> b!1164149 m!1333421))

(assert (=> b!1164150 m!1333153))

(declare-fun m!1333423 () Bool)

(assert (=> b!1164150 m!1333423))

(declare-fun m!1333425 () Bool)

(assert (=> b!1164150 m!1333425))

(declare-fun m!1333427 () Bool)

(assert (=> b!1164150 m!1333427))

(declare-fun m!1333429 () Bool)

(assert (=> b!1164150 m!1333429))

(assert (=> b!1164150 m!1333153))

(assert (=> d!332215 m!1333153))

(assert (=> d!332215 m!1333153))

(declare-fun m!1333431 () Bool)

(assert (=> d!332215 m!1333431))

(declare-fun m!1333433 () Bool)

(assert (=> d!332215 m!1333433))

(assert (=> d!332215 m!1333357))

(declare-fun m!1333435 () Bool)

(assert (=> b!1164148 m!1333435))

(assert (=> b!1163966 d!332215))

(declare-fun d!332223 () Bool)

(assert (=> d!332223 (forall!3004 lt!397618 lambda!47677)))

(declare-fun lt!397917 () Unit!17539)

(declare-fun choose!7502 (List!11497 List!11497 Int) Unit!17539)

(assert (=> d!332223 (= lt!397917 (choose!7502 lt!397618 lt!397617 lambda!47677))))

(assert (=> d!332223 (forall!3004 lt!397617 lambda!47677)))

(assert (=> d!332223 (= (lemmaForallSubseq!145 lt!397618 lt!397617 lambda!47677) lt!397917)))

(declare-fun bs!283965 () Bool)

(assert (= bs!283965 d!332223))

(assert (=> bs!283965 m!1333161))

(declare-fun m!1333437 () Bool)

(assert (=> bs!283965 m!1333437))

(assert (=> bs!283965 m!1333159))

(assert (=> b!1163966 d!332223))

(declare-fun d!332225 () Bool)

(assert (=> d!332225 (= (separableTokens!134 Lexer!1690 lt!397630 (rules!9540 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!67 Lexer!1690 lt!397630 0 (rules!9540 thiss!10527)))))

(declare-fun bs!283969 () Bool)

(assert (= bs!283969 d!332225))

(assert (=> bs!283969 m!1333155))

(assert (=> b!1163966 d!332225))

(declare-fun b!1164201 () Bool)

(declare-fun e!745856 () Bool)

(assert (=> b!1164201 (= e!745856 (subseq!253 (t!110135 lt!397617) (t!110135 lt!397637)))))

(declare-fun d!332243 () Bool)

(declare-fun res!525449 () Bool)

(declare-fun e!745855 () Bool)

(assert (=> d!332243 (=> res!525449 e!745855)))

(assert (=> d!332243 (= res!525449 ((_ is Nil!11473) lt!397617))))

(assert (=> d!332243 (= (subseq!253 lt!397617 lt!397637) e!745855)))

(declare-fun b!1164202 () Bool)

(declare-fun e!745854 () Bool)

(assert (=> b!1164202 (= e!745854 (subseq!253 lt!397617 (t!110135 lt!397637)))))

(declare-fun b!1164200 () Bool)

(declare-fun e!745853 () Bool)

(assert (=> b!1164200 (= e!745853 e!745854)))

(declare-fun res!525450 () Bool)

(assert (=> b!1164200 (=> res!525450 e!745854)))

(assert (=> b!1164200 (= res!525450 e!745856)))

(declare-fun res!525447 () Bool)

(assert (=> b!1164200 (=> (not res!525447) (not e!745856))))

(assert (=> b!1164200 (= res!525447 (= (h!16874 lt!397617) (h!16874 lt!397637)))))

(declare-fun b!1164199 () Bool)

(assert (=> b!1164199 (= e!745855 e!745853)))

(declare-fun res!525448 () Bool)

(assert (=> b!1164199 (=> (not res!525448) (not e!745853))))

(assert (=> b!1164199 (= res!525448 ((_ is Cons!11473) lt!397637))))

(assert (= (and d!332243 (not res!525449)) b!1164199))

(assert (= (and b!1164199 res!525448) b!1164200))

(assert (= (and b!1164200 res!525447) b!1164201))

(assert (= (and b!1164200 (not res!525450)) b!1164202))

(declare-fun m!1333469 () Bool)

(assert (=> b!1164201 m!1333469))

(declare-fun m!1333471 () Bool)

(assert (=> b!1164202 m!1333471))

(assert (=> b!1163966 d!332243))

(declare-fun bs!283975 () Bool)

(declare-fun d!332245 () Bool)

(assert (= bs!283975 (and d!332245 b!1163976)))

(declare-fun lambda!47696 () Int)

(assert (=> bs!283975 (= lambda!47696 lambda!47677)))

(declare-fun bs!283976 () Bool)

(assert (= bs!283976 (and d!332245 b!1164110)))

(assert (=> bs!283976 (= lambda!47696 lambda!47685)))

(declare-fun bs!283977 () Bool)

(assert (= bs!283977 (and d!332245 b!1164150)))

(assert (=> bs!283977 (= lambda!47696 lambda!47692)))

(declare-fun b!1164251 () Bool)

(declare-fun e!745894 () Bool)

(assert (=> b!1164251 (= e!745894 true)))

(declare-fun b!1164250 () Bool)

(declare-fun e!745893 () Bool)

(assert (=> b!1164250 (= e!745893 e!745894)))

(declare-fun b!1164249 () Bool)

(declare-fun e!745892 () Bool)

(assert (=> b!1164249 (= e!745892 e!745893)))

(assert (=> d!332245 e!745892))

(assert (= b!1164250 b!1164251))

(assert (= b!1164249 b!1164250))

(assert (= (and d!332245 ((_ is Cons!11474) (rules!9540 thiss!10527))) b!1164249))

(assert (=> b!1164251 (< (dynLambda!5055 order!7017 (toValue!3098 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47696))))

(assert (=> b!1164251 (< (dynLambda!5057 order!7021 (toChars!2957 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47696))))

(assert (=> d!332245 true))

(declare-fun lt!397980 () Bool)

(assert (=> d!332245 (= lt!397980 (forall!3004 lt!397617 lambda!47696))))

(declare-fun e!745890 () Bool)

(assert (=> d!332245 (= lt!397980 e!745890)))

(declare-fun res!525486 () Bool)

(assert (=> d!332245 (=> res!525486 e!745890)))

(assert (=> d!332245 (= res!525486 (not ((_ is Cons!11473) lt!397617)))))

(assert (=> d!332245 (not (isEmpty!6991 (rules!9540 thiss!10527)))))

(assert (=> d!332245 (= (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) lt!397617) lt!397980)))

(declare-fun b!1164247 () Bool)

(declare-fun e!745891 () Bool)

(assert (=> b!1164247 (= e!745890 e!745891)))

(declare-fun res!525487 () Bool)

(assert (=> b!1164247 (=> (not res!525487) (not e!745891))))

(assert (=> b!1164247 (= res!525487 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 lt!397617)))))

(declare-fun b!1164248 () Bool)

(assert (=> b!1164248 (= e!745891 (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) (t!110135 lt!397617)))))

(assert (= (and d!332245 (not res!525486)) b!1164247))

(assert (= (and b!1164247 res!525487) b!1164248))

(declare-fun m!1333623 () Bool)

(assert (=> d!332245 m!1333623))

(assert (=> d!332245 m!1333357))

(assert (=> b!1164247 m!1333081))

(assert (=> b!1164248 m!1333067))

(assert (=> b!1163966 d!332245))

(declare-fun d!332269 () Bool)

(assert (=> d!332269 (subseq!253 (drop!479 lt!397637 from!787) lt!397637)))

(declare-fun lt!397983 () Unit!17539)

(declare-fun choose!7503 (List!11497 Int) Unit!17539)

(assert (=> d!332269 (= lt!397983 (choose!7503 lt!397637 from!787))))

(assert (=> d!332269 (= (lemmaDropSubseq!44 lt!397637 from!787) lt!397983)))

(declare-fun bs!283978 () Bool)

(assert (= bs!283978 d!332269))

(assert (=> bs!283978 m!1333151))

(assert (=> bs!283978 m!1333151))

(assert (=> bs!283978 m!1333403))

(declare-fun m!1333625 () Bool)

(assert (=> bs!283978 m!1333625))

(assert (=> b!1163966 d!332269))

(declare-fun bs!283979 () Bool)

(declare-fun d!332271 () Bool)

(assert (= bs!283979 (and d!332271 b!1163976)))

(declare-fun lambda!47697 () Int)

(assert (=> bs!283979 (= lambda!47697 lambda!47677)))

(declare-fun bs!283980 () Bool)

(assert (= bs!283980 (and d!332271 b!1164110)))

(assert (=> bs!283980 (= lambda!47697 lambda!47685)))

(declare-fun bs!283981 () Bool)

(assert (= bs!283981 (and d!332271 b!1164150)))

(assert (=> bs!283981 (= lambda!47697 lambda!47692)))

(declare-fun bs!283982 () Bool)

(assert (= bs!283982 (and d!332271 d!332245)))

(assert (=> bs!283982 (= lambda!47697 lambda!47696)))

(declare-fun b!1164258 () Bool)

(declare-fun e!745899 () Bool)

(assert (=> b!1164258 (= e!745899 true)))

(declare-fun b!1164257 () Bool)

(declare-fun e!745898 () Bool)

(assert (=> b!1164257 (= e!745898 e!745899)))

(declare-fun b!1164256 () Bool)

(declare-fun e!745897 () Bool)

(assert (=> b!1164256 (= e!745897 e!745898)))

(assert (=> d!332271 e!745897))

(assert (= b!1164257 b!1164258))

(assert (= b!1164256 b!1164257))

(assert (= (and d!332271 ((_ is Cons!11474) (rules!9540 thiss!10527))) b!1164256))

(assert (=> b!1164258 (< (dynLambda!5055 order!7017 (toValue!3098 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47697))))

(assert (=> b!1164258 (< (dynLambda!5057 order!7021 (toChars!2957 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47697))))

(assert (=> d!332271 true))

(declare-fun lt!397984 () Bool)

(assert (=> d!332271 (= lt!397984 (forall!3004 lt!397618 lambda!47697))))

(declare-fun e!745895 () Bool)

(assert (=> d!332271 (= lt!397984 e!745895)))

(declare-fun res!525488 () Bool)

(assert (=> d!332271 (=> res!525488 e!745895)))

(assert (=> d!332271 (= res!525488 (not ((_ is Cons!11473) lt!397618)))))

(assert (=> d!332271 (not (isEmpty!6991 (rules!9540 thiss!10527)))))

(assert (=> d!332271 (= (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) lt!397618) lt!397984)))

(declare-fun b!1164254 () Bool)

(declare-fun e!745896 () Bool)

(assert (=> b!1164254 (= e!745895 e!745896)))

(declare-fun res!525489 () Bool)

(assert (=> b!1164254 (=> (not res!525489) (not e!745896))))

(assert (=> b!1164254 (= res!525489 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 lt!397618)))))

(declare-fun b!1164255 () Bool)

(assert (=> b!1164255 (= e!745896 (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) (t!110135 lt!397618)))))

(assert (= (and d!332271 (not res!525488)) b!1164254))

(assert (= (and b!1164254 res!525489) b!1164255))

(declare-fun m!1333627 () Bool)

(assert (=> d!332271 m!1333627))

(assert (=> d!332271 m!1333357))

(assert (=> b!1164254 m!1333071))

(assert (=> b!1164255 m!1333083))

(assert (=> b!1163966 d!332271))

(declare-fun bm!82140 () Bool)

(declare-fun call!82145 () Int)

(assert (=> bm!82140 (= call!82145 (size!9036 lt!397637))))

(declare-fun b!1164277 () Bool)

(declare-fun e!745910 () List!11497)

(assert (=> b!1164277 (= e!745910 lt!397637)))

(declare-fun b!1164278 () Bool)

(declare-fun e!745914 () Int)

(assert (=> b!1164278 (= e!745914 0)))

(declare-fun b!1164279 () Bool)

(assert (=> b!1164279 (= e!745910 (drop!479 (t!110135 lt!397637) (- from!787 1)))))

(declare-fun b!1164280 () Bool)

(declare-fun e!745913 () Int)

(assert (=> b!1164280 (= e!745913 e!745914)))

(declare-fun c!194516 () Bool)

(assert (=> b!1164280 (= c!194516 (>= from!787 call!82145))))

(declare-fun d!332273 () Bool)

(declare-fun e!745912 () Bool)

(assert (=> d!332273 e!745912))

(declare-fun res!525492 () Bool)

(assert (=> d!332273 (=> (not res!525492) (not e!745912))))

(declare-fun lt!397987 () List!11497)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1605 (List!11497) (InoxSet Token!3656))

(assert (=> d!332273 (= res!525492 (= ((_ map implies) (content!1605 lt!397987) (content!1605 lt!397637)) ((as const (InoxSet Token!3656)) true)))))

(declare-fun e!745911 () List!11497)

(assert (=> d!332273 (= lt!397987 e!745911)))

(declare-fun c!194519 () Bool)

(assert (=> d!332273 (= c!194519 ((_ is Nil!11473) lt!397637))))

(assert (=> d!332273 (= (drop!479 lt!397637 from!787) lt!397987)))

(declare-fun b!1164281 () Bool)

(assert (=> b!1164281 (= e!745913 call!82145)))

(declare-fun b!1164282 () Bool)

(assert (=> b!1164282 (= e!745911 Nil!11473)))

(declare-fun b!1164283 () Bool)

(assert (=> b!1164283 (= e!745911 e!745910)))

(declare-fun c!194517 () Bool)

(assert (=> b!1164283 (= c!194517 (<= from!787 0))))

(declare-fun b!1164284 () Bool)

(assert (=> b!1164284 (= e!745912 (= (size!9036 lt!397987) e!745913))))

(declare-fun c!194518 () Bool)

(assert (=> b!1164284 (= c!194518 (<= from!787 0))))

(declare-fun b!1164285 () Bool)

(assert (=> b!1164285 (= e!745914 (- call!82145 from!787))))

(assert (= (and d!332273 c!194519) b!1164282))

(assert (= (and d!332273 (not c!194519)) b!1164283))

(assert (= (and b!1164283 c!194517) b!1164277))

(assert (= (and b!1164283 (not c!194517)) b!1164279))

(assert (= (and d!332273 res!525492) b!1164284))

(assert (= (and b!1164284 c!194518) b!1164281))

(assert (= (and b!1164284 (not c!194518)) b!1164280))

(assert (= (and b!1164280 c!194516) b!1164278))

(assert (= (and b!1164280 (not c!194516)) b!1164285))

(assert (= (or b!1164281 b!1164280 b!1164285) bm!82140))

(declare-fun m!1333641 () Bool)

(assert (=> bm!82140 m!1333641))

(declare-fun m!1333643 () Bool)

(assert (=> b!1164279 m!1333643))

(declare-fun m!1333645 () Bool)

(assert (=> d!332273 m!1333645))

(declare-fun m!1333647 () Bool)

(assert (=> d!332273 m!1333647))

(declare-fun m!1333649 () Bool)

(assert (=> b!1164284 m!1333649))

(assert (=> b!1163966 d!332273))

(declare-fun b!1164286 () Bool)

(declare-fun e!745919 () Bool)

(declare-fun lt!398011 () List!11497)

(assert (=> b!1164286 (= e!745919 (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) lt!398011))))

(declare-fun b!1164287 () Bool)

(declare-fun e!745915 () Bool)

(declare-fun lt!397999 () List!11497)

(assert (=> b!1164287 (= e!745915 (<= 0 (size!9036 lt!397999)))))

(declare-fun d!332277 () Bool)

(declare-fun lt!398006 () Bool)

(assert (=> d!332277 (= lt!398006 (tokensListTwoByTwoPredicateSeparableList!104 Lexer!1690 (dropList!316 lt!397630 0) (rules!9540 thiss!10527)))))

(declare-fun lt!398017 () Unit!17539)

(declare-fun lt!398007 () Unit!17539)

(assert (=> d!332277 (= lt!398017 lt!398007)))

(declare-fun lt!398015 () List!11497)

(assert (=> d!332277 (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) lt!398015)))

(assert (=> d!332277 (= lt!398007 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!26 Lexer!1690 (rules!9540 thiss!10527) lt!398011 lt!398015))))

(assert (=> d!332277 e!745919))

(declare-fun res!525498 () Bool)

(assert (=> d!332277 (=> (not res!525498) (not e!745919))))

(assert (=> d!332277 (= res!525498 ((_ is Lexer!1690) Lexer!1690))))

(assert (=> d!332277 (= lt!398015 (dropList!316 lt!397630 0))))

(assert (=> d!332277 (= lt!398011 (list!4224 lt!397630))))

(declare-fun lt!397994 () Unit!17539)

(declare-fun lt!397989 () Unit!17539)

(assert (=> d!332277 (= lt!397994 lt!397989)))

(assert (=> d!332277 (subseq!253 (drop!479 lt!397999 0) lt!397999)))

(assert (=> d!332277 (= lt!397989 (lemmaDropSubSeq!26 lt!397999 0))))

(assert (=> d!332277 e!745915))

(declare-fun res!525499 () Bool)

(assert (=> d!332277 (=> (not res!525499) (not e!745915))))

(assert (=> d!332277 (= res!525499 (>= 0 0))))

(assert (=> d!332277 (= lt!397999 (list!4224 lt!397630))))

(declare-fun e!745917 () Bool)

(assert (=> d!332277 (= lt!398006 e!745917)))

(declare-fun res!525500 () Bool)

(assert (=> d!332277 (=> res!525500 e!745917)))

(assert (=> d!332277 (= res!525500 (not (< 0 (- (size!9030 lt!397630) 1))))))

(declare-fun e!745916 () Bool)

(assert (=> d!332277 e!745916))

(declare-fun res!525495 () Bool)

(assert (=> d!332277 (=> (not res!525495) (not e!745916))))

(assert (=> d!332277 (= res!525495 (>= 0 0))))

(assert (=> d!332277 (= (tokensListTwoByTwoPredicateSeparable!67 Lexer!1690 lt!397630 0 (rules!9540 thiss!10527)) lt!398006)))

(declare-fun b!1164288 () Bool)

(declare-fun e!745918 () Bool)

(assert (=> b!1164288 (= e!745917 e!745918)))

(declare-fun res!525497 () Bool)

(assert (=> b!1164288 (=> (not res!525497) (not e!745918))))

(assert (=> b!1164288 (= res!525497 (separableTokensPredicate!128 Lexer!1690 (apply!2469 lt!397630 0) (apply!2469 lt!397630 (+ 0 1)) (rules!9540 thiss!10527)))))

(declare-fun lt!398004 () Unit!17539)

(declare-fun Unit!17554 () Unit!17539)

(assert (=> b!1164288 (= lt!398004 Unit!17554)))

(assert (=> b!1164288 (> (size!9031 (charsOf!1066 (apply!2469 lt!397630 (+ 0 1)))) 0)))

(declare-fun lt!398014 () Unit!17539)

(declare-fun Unit!17555 () Unit!17539)

(assert (=> b!1164288 (= lt!398014 Unit!17555)))

(assert (=> b!1164288 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (apply!2469 lt!397630 (+ 0 1)))))

(declare-fun lt!398019 () Unit!17539)

(declare-fun Unit!17556 () Unit!17539)

(assert (=> b!1164288 (= lt!398019 Unit!17556)))

(assert (=> b!1164288 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (apply!2469 lt!397630 0))))

(declare-fun lt!398016 () Unit!17539)

(declare-fun lt!397992 () Unit!17539)

(assert (=> b!1164288 (= lt!398016 lt!397992)))

(declare-fun lt!397998 () Token!3656)

(assert (=> b!1164288 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) lt!397998)))

(declare-fun lt!398001 () List!11497)

(assert (=> b!1164288 (= lt!397992 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!287 Lexer!1690 (rules!9540 thiss!10527) lt!398001 lt!397998))))

(assert (=> b!1164288 (= lt!397998 (apply!2469 lt!397630 (+ 0 1)))))

(assert (=> b!1164288 (= lt!398001 (list!4224 lt!397630))))

(declare-fun lt!397993 () Unit!17539)

(declare-fun lt!398018 () Unit!17539)

(assert (=> b!1164288 (= lt!397993 lt!398018)))

(declare-fun lt!397995 () Token!3656)

(assert (=> b!1164288 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) lt!397995)))

(declare-fun lt!398020 () List!11497)

(assert (=> b!1164288 (= lt!398018 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!287 Lexer!1690 (rules!9540 thiss!10527) lt!398020 lt!397995))))

(assert (=> b!1164288 (= lt!397995 (apply!2469 lt!397630 0))))

(assert (=> b!1164288 (= lt!398020 (list!4224 lt!397630))))

(declare-fun lt!397988 () Unit!17539)

(declare-fun lt!398003 () Unit!17539)

(assert (=> b!1164288 (= lt!397988 lt!398003)))

(declare-fun lt!398005 () List!11497)

(declare-fun lt!398013 () Int)

(assert (=> b!1164288 (= (tail!1684 (drop!479 lt!398005 lt!398013)) (drop!479 lt!398005 (+ lt!398013 1)))))

(assert (=> b!1164288 (= lt!398003 (lemmaDropTail!357 lt!398005 lt!398013))))

(assert (=> b!1164288 (= lt!398013 (+ 0 1))))

(assert (=> b!1164288 (= lt!398005 (list!4224 lt!397630))))

(declare-fun lt!398010 () Unit!17539)

(declare-fun lt!397996 () Unit!17539)

(assert (=> b!1164288 (= lt!398010 lt!397996)))

(declare-fun lt!397997 () List!11497)

(assert (=> b!1164288 (= (tail!1684 (drop!479 lt!397997 0)) (drop!479 lt!397997 (+ 0 1)))))

(assert (=> b!1164288 (= lt!397996 (lemmaDropTail!357 lt!397997 0))))

(assert (=> b!1164288 (= lt!397997 (list!4224 lt!397630))))

(declare-fun lt!398000 () Unit!17539)

(declare-fun lt!398012 () Unit!17539)

(assert (=> b!1164288 (= lt!398000 lt!398012)))

(declare-fun lt!398009 () List!11497)

(declare-fun lt!397991 () Int)

(assert (=> b!1164288 (= (head!2100 (drop!479 lt!398009 lt!397991)) (apply!2470 lt!398009 lt!397991))))

(assert (=> b!1164288 (= lt!398012 (lemmaDropApply!369 lt!398009 lt!397991))))

(assert (=> b!1164288 (= lt!397991 (+ 0 1))))

(assert (=> b!1164288 (= lt!398009 (list!4224 lt!397630))))

(declare-fun lt!397990 () Unit!17539)

(declare-fun lt!398002 () Unit!17539)

(assert (=> b!1164288 (= lt!397990 lt!398002)))

(declare-fun lt!398008 () List!11497)

(assert (=> b!1164288 (= (head!2100 (drop!479 lt!398008 0)) (apply!2470 lt!398008 0))))

(assert (=> b!1164288 (= lt!398002 (lemmaDropApply!369 lt!398008 0))))

(assert (=> b!1164288 (= lt!398008 (list!4224 lt!397630))))

(declare-fun b!1164289 () Bool)

(declare-fun res!525496 () Bool)

(assert (=> b!1164289 (=> (not res!525496) (not e!745919))))

(assert (=> b!1164289 (= res!525496 (not (isEmpty!6991 (rules!9540 thiss!10527))))))

(declare-fun b!1164290 () Bool)

(assert (=> b!1164290 (= e!745918 (tokensListTwoByTwoPredicateSeparable!67 Lexer!1690 lt!397630 (+ 0 1) (rules!9540 thiss!10527)))))

(declare-fun b!1164291 () Bool)

(declare-fun res!525494 () Bool)

(assert (=> b!1164291 (=> (not res!525494) (not e!745919))))

(assert (=> b!1164291 (= res!525494 (subseq!253 lt!398015 lt!398011))))

(declare-fun b!1164292 () Bool)

(declare-fun res!525493 () Bool)

(assert (=> b!1164292 (=> (not res!525493) (not e!745919))))

(assert (=> b!1164292 (= res!525493 (rulesInvariant!1566 Lexer!1690 (rules!9540 thiss!10527)))))

(declare-fun b!1164293 () Bool)

(assert (=> b!1164293 (= e!745916 (<= 0 (size!9030 lt!397630)))))

(assert (= (and d!332277 res!525495) b!1164293))

(assert (= (and d!332277 (not res!525500)) b!1164288))

(assert (= (and b!1164288 res!525497) b!1164290))

(assert (= (and d!332277 res!525499) b!1164287))

(assert (= (and d!332277 res!525498) b!1164289))

(assert (= (and b!1164289 res!525496) b!1164292))

(assert (= (and b!1164292 res!525493) b!1164291))

(assert (= (and b!1164291 res!525494) b!1164286))

(assert (=> b!1164292 m!1333051))

(declare-fun m!1333651 () Bool)

(assert (=> b!1164290 m!1333651))

(declare-fun m!1333653 () Bool)

(assert (=> b!1164287 m!1333653))

(declare-fun m!1333655 () Bool)

(assert (=> b!1164288 m!1333655))

(declare-fun m!1333657 () Bool)

(assert (=> b!1164288 m!1333657))

(declare-fun m!1333659 () Bool)

(assert (=> b!1164288 m!1333659))

(declare-fun m!1333661 () Bool)

(assert (=> b!1164288 m!1333661))

(declare-fun m!1333663 () Bool)

(assert (=> b!1164288 m!1333663))

(declare-fun m!1333665 () Bool)

(assert (=> b!1164288 m!1333665))

(declare-fun m!1333667 () Bool)

(assert (=> b!1164288 m!1333667))

(assert (=> b!1164288 m!1333663))

(declare-fun m!1333669 () Bool)

(assert (=> b!1164288 m!1333669))

(declare-fun m!1333671 () Bool)

(assert (=> b!1164288 m!1333671))

(declare-fun m!1333673 () Bool)

(assert (=> b!1164288 m!1333673))

(declare-fun m!1333675 () Bool)

(assert (=> b!1164288 m!1333675))

(declare-fun m!1333677 () Bool)

(assert (=> b!1164288 m!1333677))

(declare-fun m!1333679 () Bool)

(assert (=> b!1164288 m!1333679))

(declare-fun m!1333681 () Bool)

(assert (=> b!1164288 m!1333681))

(assert (=> b!1164288 m!1333663))

(declare-fun m!1333683 () Bool)

(assert (=> b!1164288 m!1333683))

(declare-fun m!1333685 () Bool)

(assert (=> b!1164288 m!1333685))

(declare-fun m!1333687 () Bool)

(assert (=> b!1164288 m!1333687))

(declare-fun m!1333689 () Bool)

(assert (=> b!1164288 m!1333689))

(assert (=> b!1164288 m!1333681))

(declare-fun m!1333691 () Bool)

(assert (=> b!1164288 m!1333691))

(assert (=> b!1164288 m!1333657))

(declare-fun m!1333693 () Bool)

(assert (=> b!1164288 m!1333693))

(assert (=> b!1164288 m!1333659))

(declare-fun m!1333695 () Bool)

(assert (=> b!1164288 m!1333695))

(assert (=> b!1164288 m!1333129))

(assert (=> b!1164288 m!1333665))

(declare-fun m!1333697 () Bool)

(assert (=> b!1164288 m!1333697))

(assert (=> b!1164288 m!1333687))

(declare-fun m!1333699 () Bool)

(assert (=> b!1164288 m!1333699))

(assert (=> b!1164288 m!1333665))

(declare-fun m!1333701 () Bool)

(assert (=> b!1164288 m!1333701))

(declare-fun m!1333703 () Bool)

(assert (=> b!1164288 m!1333703))

(declare-fun m!1333705 () Bool)

(assert (=> b!1164288 m!1333705))

(assert (=> b!1164288 m!1333665))

(assert (=> b!1164288 m!1333677))

(declare-fun m!1333707 () Bool)

(assert (=> b!1164288 m!1333707))

(declare-fun m!1333709 () Bool)

(assert (=> d!332277 m!1333709))

(assert (=> d!332277 m!1333129))

(declare-fun m!1333711 () Bool)

(assert (=> d!332277 m!1333711))

(declare-fun m!1333713 () Bool)

(assert (=> d!332277 m!1333713))

(declare-fun m!1333715 () Bool)

(assert (=> d!332277 m!1333715))

(declare-fun m!1333717 () Bool)

(assert (=> d!332277 m!1333717))

(declare-fun m!1333719 () Bool)

(assert (=> d!332277 m!1333719))

(assert (=> d!332277 m!1333719))

(declare-fun m!1333721 () Bool)

(assert (=> d!332277 m!1333721))

(assert (=> d!332277 m!1333713))

(declare-fun m!1333723 () Bool)

(assert (=> d!332277 m!1333723))

(assert (=> b!1164289 m!1333357))

(declare-fun m!1333725 () Bool)

(assert (=> b!1164286 m!1333725))

(assert (=> b!1164293 m!1333717))

(declare-fun m!1333727 () Bool)

(assert (=> b!1164291 m!1333727))

(assert (=> b!1163966 d!332277))

(declare-fun d!332279 () Bool)

(assert (=> d!332279 (forall!3004 lt!397617 lambda!47677)))

(declare-fun lt!398023 () Unit!17539)

(assert (=> d!332279 (= lt!398023 (choose!7502 lt!397617 lt!397637 lambda!47677))))

(assert (=> d!332279 (forall!3004 lt!397637 lambda!47677)))

(assert (=> d!332279 (= (lemmaForallSubseq!145 lt!397617 lt!397637 lambda!47677) lt!398023)))

(declare-fun bs!283984 () Bool)

(assert (= bs!283984 d!332279))

(assert (=> bs!283984 m!1333159))

(declare-fun m!1333729 () Bool)

(assert (=> bs!283984 m!1333729))

(declare-fun m!1333731 () Bool)

(assert (=> bs!283984 m!1333731))

(assert (=> b!1163966 d!332279))

(declare-fun b!1164335 () Bool)

(declare-fun e!745946 () List!11497)

(assert (=> b!1164335 (= e!745946 (Cons!11473 (h!16874 lt!397617) (take!69 (t!110135 lt!397617) (- (- to!267 from!787) 1))))))

(declare-fun b!1164336 () Bool)

(declare-fun e!745944 () Int)

(assert (=> b!1164336 (= e!745944 (- to!267 from!787))))

(declare-fun d!332281 () Bool)

(declare-fun e!745945 () Bool)

(assert (=> d!332281 e!745945))

(declare-fun res!525506 () Bool)

(assert (=> d!332281 (=> (not res!525506) (not e!745945))))

(declare-fun lt!398027 () List!11497)

(assert (=> d!332281 (= res!525506 (= ((_ map implies) (content!1605 lt!398027) (content!1605 lt!397617)) ((as const (InoxSet Token!3656)) true)))))

(assert (=> d!332281 (= lt!398027 e!745946)))

(declare-fun c!194539 () Bool)

(assert (=> d!332281 (= c!194539 (or ((_ is Nil!11473) lt!397617) (<= (- to!267 from!787) 0)))))

(assert (=> d!332281 (= (take!69 lt!397617 (- to!267 from!787)) lt!398027)))

(declare-fun b!1164337 () Bool)

(declare-fun e!745943 () Int)

(assert (=> b!1164337 (= e!745943 e!745944)))

(declare-fun c!194538 () Bool)

(assert (=> b!1164337 (= c!194538 (>= (- to!267 from!787) (size!9036 lt!397617)))))

(declare-fun b!1164338 () Bool)

(assert (=> b!1164338 (= e!745945 (= (size!9036 lt!398027) e!745943))))

(declare-fun c!194540 () Bool)

(assert (=> b!1164338 (= c!194540 (<= (- to!267 from!787) 0))))

(declare-fun b!1164339 () Bool)

(assert (=> b!1164339 (= e!745943 0)))

(declare-fun b!1164340 () Bool)

(assert (=> b!1164340 (= e!745946 Nil!11473)))

(declare-fun b!1164341 () Bool)

(assert (=> b!1164341 (= e!745944 (size!9036 lt!397617))))

(assert (= (and d!332281 c!194539) b!1164340))

(assert (= (and d!332281 (not c!194539)) b!1164335))

(assert (= (and d!332281 res!525506) b!1164338))

(assert (= (and b!1164338 c!194540) b!1164339))

(assert (= (and b!1164338 (not c!194540)) b!1164337))

(assert (= (and b!1164337 c!194538) b!1164341))

(assert (= (and b!1164337 (not c!194538)) b!1164336))

(declare-fun m!1333741 () Bool)

(assert (=> b!1164341 m!1333741))

(declare-fun m!1333743 () Bool)

(assert (=> b!1164338 m!1333743))

(declare-fun m!1333745 () Bool)

(assert (=> d!332281 m!1333745))

(declare-fun m!1333747 () Bool)

(assert (=> d!332281 m!1333747))

(assert (=> b!1164337 m!1333741))

(declare-fun m!1333749 () Bool)

(assert (=> b!1164335 m!1333749))

(assert (=> b!1163966 d!332281))

(declare-fun d!332285 () Bool)

(declare-fun res!525509 () Bool)

(declare-fun e!745949 () Bool)

(assert (=> d!332285 (=> res!525509 e!745949)))

(assert (=> d!332285 (= res!525509 ((_ is Nil!11473) lt!397617))))

(assert (=> d!332285 (= (forall!3004 lt!397617 lambda!47677) e!745949)))

(declare-fun b!1164344 () Bool)

(declare-fun e!745950 () Bool)

(assert (=> b!1164344 (= e!745949 e!745950)))

(declare-fun res!525510 () Bool)

(assert (=> b!1164344 (=> (not res!525510) (not e!745950))))

(assert (=> b!1164344 (= res!525510 (dynLambda!5054 lambda!47677 (h!16874 lt!397617)))))

(declare-fun b!1164345 () Bool)

(assert (=> b!1164345 (= e!745950 (forall!3004 (t!110135 lt!397617) lambda!47677))))

(assert (= (and d!332285 (not res!525509)) b!1164344))

(assert (= (and b!1164344 res!525510) b!1164345))

(declare-fun b_lambda!34697 () Bool)

(assert (=> (not b_lambda!34697) (not b!1164344)))

(declare-fun m!1333751 () Bool)

(assert (=> b!1164344 m!1333751))

(declare-fun m!1333753 () Bool)

(assert (=> b!1164345 m!1333753))

(assert (=> b!1163966 d!332285))

(declare-fun bs!283987 () Bool)

(declare-fun d!332287 () Bool)

(assert (= bs!283987 (and d!332287 d!332245)))

(declare-fun lambda!47702 () Int)

(assert (=> bs!283987 (= lambda!47702 lambda!47696)))

(declare-fun bs!283988 () Bool)

(assert (= bs!283988 (and d!332287 b!1164110)))

(assert (=> bs!283988 (= lambda!47702 lambda!47685)))

(declare-fun bs!283989 () Bool)

(assert (= bs!283989 (and d!332287 b!1164150)))

(assert (=> bs!283989 (= lambda!47702 lambda!47692)))

(declare-fun bs!283990 () Bool)

(assert (= bs!283990 (and d!332287 b!1163976)))

(assert (=> bs!283990 (= lambda!47702 lambda!47677)))

(declare-fun bs!283991 () Bool)

(assert (= bs!283991 (and d!332287 d!332271)))

(assert (=> bs!283991 (= lambda!47702 lambda!47697)))

(declare-fun b!1164366 () Bool)

(declare-fun e!745967 () Bool)

(assert (=> b!1164366 (= e!745967 true)))

(declare-fun b!1164365 () Bool)

(declare-fun e!745966 () Bool)

(assert (=> b!1164365 (= e!745966 e!745967)))

(declare-fun b!1164364 () Bool)

(declare-fun e!745965 () Bool)

(assert (=> b!1164364 (= e!745965 e!745966)))

(assert (=> d!332287 e!745965))

(assert (= b!1164365 b!1164366))

(assert (= b!1164364 b!1164365))

(assert (= (and d!332287 ((_ is Cons!11474) (rules!9540 thiss!10527))) b!1164364))

(assert (=> b!1164366 (< (dynLambda!5055 order!7017 (toValue!3098 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47702))))

(assert (=> b!1164366 (< (dynLambda!5057 order!7021 (toChars!2957 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47702))))

(assert (=> d!332287 true))

(declare-fun e!745963 () Bool)

(assert (=> d!332287 e!745963))

(declare-fun res!525519 () Bool)

(assert (=> d!332287 (=> (not res!525519) (not e!745963))))

(declare-fun lt!398042 () Bool)

(assert (=> d!332287 (= res!525519 (= lt!398042 (forall!3004 (list!4224 lt!397630) lambda!47702)))))

(assert (=> d!332287 (= lt!398042 (forall!3005 lt!397630 lambda!47702))))

(assert (=> d!332287 (not (isEmpty!6991 (rules!9540 thiss!10527)))))

(assert (=> d!332287 (= (rulesProduceEachTokenIndividually!731 Lexer!1690 (rules!9540 thiss!10527) lt!397630) lt!398042)))

(declare-fun b!1164362 () Bool)

(assert (=> b!1164362 (= e!745963 (= lt!398042 (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) (list!4224 lt!397630))))))

(assert (= (and d!332287 res!525519) b!1164362))

(assert (=> d!332287 m!1333129))

(assert (=> d!332287 m!1333129))

(declare-fun m!1333789 () Bool)

(assert (=> d!332287 m!1333789))

(declare-fun m!1333791 () Bool)

(assert (=> d!332287 m!1333791))

(assert (=> d!332287 m!1333357))

(assert (=> b!1164362 m!1333129))

(assert (=> b!1164362 m!1333129))

(declare-fun m!1333797 () Bool)

(assert (=> b!1164362 m!1333797))

(assert (=> b!1163987 d!332287))

(declare-fun d!332307 () Bool)

(declare-fun lt!398051 () Bool)

(assert (=> d!332307 (= lt!398051 (forall!3004 (list!4224 lt!397630) lambda!47677))))

(declare-fun forall!3007 (Conc!3757 Int) Bool)

(assert (=> d!332307 (= lt!398051 (forall!3007 (c!194500 lt!397630) lambda!47677))))

(assert (=> d!332307 (= (forall!3005 lt!397630 lambda!47677) lt!398051)))

(declare-fun bs!283992 () Bool)

(assert (= bs!283992 d!332307))

(assert (=> bs!283992 m!1333129))

(assert (=> bs!283992 m!1333129))

(declare-fun m!1333823 () Bool)

(assert (=> bs!283992 m!1333823))

(declare-fun m!1333825 () Bool)

(assert (=> bs!283992 m!1333825))

(assert (=> b!1163987 d!332307))

(declare-fun d!332315 () Bool)

(declare-fun lt!398068 () Bool)

(declare-fun e!745995 () Bool)

(assert (=> d!332315 (= lt!398068 e!745995)))

(declare-fun res!525560 () Bool)

(assert (=> d!332315 (=> (not res!525560) (not e!745995))))

(declare-datatypes ((tuple2!12014 0))(
  ( (tuple2!12015 (_1!6854 BalanceConc!7536) (_2!6854 BalanceConc!7534)) )
))
(declare-fun lex!700 (LexerInterface!1692 List!11498 BalanceConc!7534) tuple2!12014)

(declare-fun print!637 (LexerInterface!1692 BalanceConc!7536) BalanceConc!7534)

(declare-fun singletonSeq!662 (Token!3656) BalanceConc!7536)

(assert (=> d!332315 (= res!525560 (= (list!4224 (_1!6854 (lex!700 Lexer!1690 (rules!9540 thiss!10527) (print!637 Lexer!1690 (singletonSeq!662 (h!16874 lt!397618)))))) (list!4224 (singletonSeq!662 (h!16874 lt!397618)))))))

(declare-fun e!745994 () Bool)

(assert (=> d!332315 (= lt!398068 e!745994)))

(declare-fun res!525561 () Bool)

(assert (=> d!332315 (=> (not res!525561) (not e!745994))))

(declare-fun lt!398067 () tuple2!12014)

(assert (=> d!332315 (= res!525561 (= (size!9030 (_1!6854 lt!398067)) 1))))

(assert (=> d!332315 (= lt!398067 (lex!700 Lexer!1690 (rules!9540 thiss!10527) (print!637 Lexer!1690 (singletonSeq!662 (h!16874 lt!397618)))))))

(assert (=> d!332315 (not (isEmpty!6991 (rules!9540 thiss!10527)))))

(assert (=> d!332315 (= (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 lt!397618)) lt!398068)))

(declare-fun b!1164415 () Bool)

(declare-fun res!525559 () Bool)

(assert (=> b!1164415 (=> (not res!525559) (not e!745994))))

(assert (=> b!1164415 (= res!525559 (= (apply!2469 (_1!6854 lt!398067) 0) (h!16874 lt!397618)))))

(declare-fun b!1164416 () Bool)

(declare-fun isEmpty!6994 (BalanceConc!7534) Bool)

(assert (=> b!1164416 (= e!745994 (isEmpty!6994 (_2!6854 lt!398067)))))

(declare-fun b!1164417 () Bool)

(assert (=> b!1164417 (= e!745995 (isEmpty!6994 (_2!6854 (lex!700 Lexer!1690 (rules!9540 thiss!10527) (print!637 Lexer!1690 (singletonSeq!662 (h!16874 lt!397618)))))))))

(assert (= (and d!332315 res!525561) b!1164415))

(assert (= (and b!1164415 res!525559) b!1164416))

(assert (= (and d!332315 res!525560) b!1164417))

(declare-fun m!1333889 () Bool)

(assert (=> d!332315 m!1333889))

(declare-fun m!1333891 () Bool)

(assert (=> d!332315 m!1333891))

(declare-fun m!1333893 () Bool)

(assert (=> d!332315 m!1333893))

(declare-fun m!1333895 () Bool)

(assert (=> d!332315 m!1333895))

(assert (=> d!332315 m!1333893))

(declare-fun m!1333897 () Bool)

(assert (=> d!332315 m!1333897))

(assert (=> d!332315 m!1333891))

(declare-fun m!1333899 () Bool)

(assert (=> d!332315 m!1333899))

(assert (=> d!332315 m!1333357))

(assert (=> d!332315 m!1333891))

(declare-fun m!1333901 () Bool)

(assert (=> b!1164415 m!1333901))

(declare-fun m!1333903 () Bool)

(assert (=> b!1164416 m!1333903))

(assert (=> b!1164417 m!1333891))

(assert (=> b!1164417 m!1333891))

(assert (=> b!1164417 m!1333893))

(assert (=> b!1164417 m!1333893))

(assert (=> b!1164417 m!1333897))

(declare-fun m!1333905 () Bool)

(assert (=> b!1164417 m!1333905))

(assert (=> b!1163965 d!332315))

(declare-fun d!332327 () Bool)

(declare-fun lt!398070 () Bool)

(declare-fun e!745997 () Bool)

(assert (=> d!332327 (= lt!398070 e!745997)))

(declare-fun res!525563 () Bool)

(assert (=> d!332327 (=> (not res!525563) (not e!745997))))

(assert (=> d!332327 (= res!525563 (= (list!4224 (_1!6854 (lex!700 Lexer!1690 (rules!9540 thiss!10527) (print!637 Lexer!1690 (singletonSeq!662 (h!16874 lt!397637)))))) (list!4224 (singletonSeq!662 (h!16874 lt!397637)))))))

(declare-fun e!745996 () Bool)

(assert (=> d!332327 (= lt!398070 e!745996)))

(declare-fun res!525564 () Bool)

(assert (=> d!332327 (=> (not res!525564) (not e!745996))))

(declare-fun lt!398069 () tuple2!12014)

(assert (=> d!332327 (= res!525564 (= (size!9030 (_1!6854 lt!398069)) 1))))

(assert (=> d!332327 (= lt!398069 (lex!700 Lexer!1690 (rules!9540 thiss!10527) (print!637 Lexer!1690 (singletonSeq!662 (h!16874 lt!397637)))))))

(assert (=> d!332327 (not (isEmpty!6991 (rules!9540 thiss!10527)))))

(assert (=> d!332327 (= (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 lt!397637)) lt!398070)))

(declare-fun b!1164418 () Bool)

(declare-fun res!525562 () Bool)

(assert (=> b!1164418 (=> (not res!525562) (not e!745996))))

(assert (=> b!1164418 (= res!525562 (= (apply!2469 (_1!6854 lt!398069) 0) (h!16874 lt!397637)))))

(declare-fun b!1164419 () Bool)

(assert (=> b!1164419 (= e!745996 (isEmpty!6994 (_2!6854 lt!398069)))))

(declare-fun b!1164420 () Bool)

(assert (=> b!1164420 (= e!745997 (isEmpty!6994 (_2!6854 (lex!700 Lexer!1690 (rules!9540 thiss!10527) (print!637 Lexer!1690 (singletonSeq!662 (h!16874 lt!397637)))))))))

(assert (= (and d!332327 res!525564) b!1164418))

(assert (= (and b!1164418 res!525562) b!1164419))

(assert (= (and d!332327 res!525563) b!1164420))

(declare-fun m!1333907 () Bool)

(assert (=> d!332327 m!1333907))

(declare-fun m!1333909 () Bool)

(assert (=> d!332327 m!1333909))

(declare-fun m!1333911 () Bool)

(assert (=> d!332327 m!1333911))

(declare-fun m!1333913 () Bool)

(assert (=> d!332327 m!1333913))

(assert (=> d!332327 m!1333911))

(declare-fun m!1333915 () Bool)

(assert (=> d!332327 m!1333915))

(assert (=> d!332327 m!1333909))

(declare-fun m!1333917 () Bool)

(assert (=> d!332327 m!1333917))

(assert (=> d!332327 m!1333357))

(assert (=> d!332327 m!1333909))

(declare-fun m!1333919 () Bool)

(assert (=> b!1164418 m!1333919))

(declare-fun m!1333921 () Bool)

(assert (=> b!1164419 m!1333921))

(assert (=> b!1164420 m!1333909))

(assert (=> b!1164420 m!1333909))

(assert (=> b!1164420 m!1333911))

(assert (=> b!1164420 m!1333911))

(assert (=> b!1164420 m!1333915))

(declare-fun m!1333923 () Bool)

(assert (=> b!1164420 m!1333923))

(assert (=> b!1163970 d!332327))

(declare-fun bs!283994 () Bool)

(declare-fun d!332329 () Bool)

(assert (= bs!283994 (and d!332329 d!332245)))

(declare-fun lambda!47703 () Int)

(assert (=> bs!283994 (= lambda!47703 lambda!47696)))

(declare-fun bs!283995 () Bool)

(assert (= bs!283995 (and d!332329 b!1164110)))

(assert (=> bs!283995 (= lambda!47703 lambda!47685)))

(declare-fun bs!283996 () Bool)

(assert (= bs!283996 (and d!332329 b!1164150)))

(assert (=> bs!283996 (= lambda!47703 lambda!47692)))

(declare-fun bs!283997 () Bool)

(assert (= bs!283997 (and d!332329 b!1163976)))

(assert (=> bs!283997 (= lambda!47703 lambda!47677)))

(declare-fun bs!283998 () Bool)

(assert (= bs!283998 (and d!332329 d!332287)))

(assert (=> bs!283998 (= lambda!47703 lambda!47702)))

(declare-fun bs!283999 () Bool)

(assert (= bs!283999 (and d!332329 d!332271)))

(assert (=> bs!283999 (= lambda!47703 lambda!47697)))

(declare-fun b!1164425 () Bool)

(declare-fun e!746002 () Bool)

(assert (=> b!1164425 (= e!746002 true)))

(declare-fun b!1164424 () Bool)

(declare-fun e!746001 () Bool)

(assert (=> b!1164424 (= e!746001 e!746002)))

(declare-fun b!1164423 () Bool)

(declare-fun e!746000 () Bool)

(assert (=> b!1164423 (= e!746000 e!746001)))

(assert (=> d!332329 e!746000))

(assert (= b!1164424 b!1164425))

(assert (= b!1164423 b!1164424))

(assert (= (and d!332329 ((_ is Cons!11474) (rules!9540 thiss!10527))) b!1164423))

(assert (=> b!1164425 (< (dynLambda!5055 order!7017 (toValue!3098 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47703))))

(assert (=> b!1164425 (< (dynLambda!5057 order!7021 (toChars!2957 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47703))))

(assert (=> d!332329 true))

(declare-fun lt!398071 () Bool)

(assert (=> d!332329 (= lt!398071 (forall!3004 (t!110135 lt!397637) lambda!47703))))

(declare-fun e!745998 () Bool)

(assert (=> d!332329 (= lt!398071 e!745998)))

(declare-fun res!525565 () Bool)

(assert (=> d!332329 (=> res!525565 e!745998)))

(assert (=> d!332329 (= res!525565 (not ((_ is Cons!11473) (t!110135 lt!397637))))))

(assert (=> d!332329 (not (isEmpty!6991 (rules!9540 thiss!10527)))))

(assert (=> d!332329 (= (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) (t!110135 lt!397637)) lt!398071)))

(declare-fun b!1164421 () Bool)

(declare-fun e!745999 () Bool)

(assert (=> b!1164421 (= e!745998 e!745999)))

(declare-fun res!525566 () Bool)

(assert (=> b!1164421 (=> (not res!525566) (not e!745999))))

(assert (=> b!1164421 (= res!525566 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 (t!110135 lt!397637))))))

(declare-fun b!1164422 () Bool)

(assert (=> b!1164422 (= e!745999 (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) (t!110135 (t!110135 lt!397637))))))

(assert (= (and d!332329 (not res!525565)) b!1164421))

(assert (= (and b!1164421 res!525566) b!1164422))

(declare-fun m!1333925 () Bool)

(assert (=> d!332329 m!1333925))

(assert (=> d!332329 m!1333357))

(declare-fun m!1333927 () Bool)

(assert (=> b!1164421 m!1333927))

(declare-fun m!1333929 () Bool)

(assert (=> b!1164422 m!1333929))

(assert (=> b!1163969 d!332329))

(declare-fun d!332331 () Bool)

(declare-fun res!525569 () Bool)

(declare-fun e!746005 () Bool)

(assert (=> d!332331 (=> (not res!525569) (not e!746005))))

(declare-fun rulesValid!696 (LexerInterface!1692 List!11498) Bool)

(assert (=> d!332331 (= res!525569 (rulesValid!696 Lexer!1690 (rules!9540 thiss!10527)))))

(assert (=> d!332331 (= (rulesInvariant!1566 Lexer!1690 (rules!9540 thiss!10527)) e!746005)))

(declare-fun b!1164428 () Bool)

(declare-datatypes ((List!11500 0))(
  ( (Nil!11476) (Cons!11476 (h!16877 String!13903) (t!110168 List!11500)) )
))
(declare-fun noDuplicateTag!696 (LexerInterface!1692 List!11498 List!11500) Bool)

(assert (=> b!1164428 (= e!746005 (noDuplicateTag!696 Lexer!1690 (rules!9540 thiss!10527) Nil!11476))))

(assert (= (and d!332331 res!525569) b!1164428))

(declare-fun m!1333931 () Bool)

(assert (=> d!332331 m!1333931))

(declare-fun m!1333933 () Bool)

(assert (=> b!1164428 m!1333933))

(assert (=> b!1163968 d!332331))

(declare-fun d!332333 () Bool)

(declare-fun e!746035 () Bool)

(assert (=> d!332333 e!746035))

(declare-fun res!525594 () Bool)

(assert (=> d!332333 (=> (not res!525594) (not e!746035))))

(assert (=> d!332333 (= res!525594 (rulesInvariant!1566 Lexer!1690 (rules!9540 thiss!10527)))))

(declare-fun Unit!17557 () Unit!17539)

(assert (=> d!332333 (= (lemmaInvariant!184 thiss!10527) Unit!17557)))

(declare-fun b!1164470 () Bool)

(declare-fun res!525595 () Bool)

(assert (=> b!1164470 (=> (not res!525595) (not e!746035))))

(assert (=> b!1164470 (= res!525595 (rulesProduceEachTokenIndividually!731 Lexer!1690 (rules!9540 thiss!10527) (tokens!1610 thiss!10527)))))

(declare-fun b!1164471 () Bool)

(assert (=> b!1164471 (= e!746035 (separableTokens!134 Lexer!1690 (tokens!1610 thiss!10527) (rules!9540 thiss!10527)))))

(assert (= (and d!332333 res!525594) b!1164470))

(assert (= (and b!1164470 res!525595) b!1164471))

(assert (=> d!332333 m!1333051))

(assert (=> b!1164470 m!1333039))

(declare-fun m!1333957 () Bool)

(assert (=> b!1164471 m!1333957))

(assert (=> b!1163968 d!332333))

(declare-fun d!332351 () Bool)

(assert (=> d!332351 (subseq!253 (slice!298 lt!397637 from!787 to!267) lt!397637)))

(declare-fun lt!398079 () Unit!17539)

(declare-fun choose!7507 (List!11497 Int Int) Unit!17539)

(assert (=> d!332351 (= lt!398079 (choose!7507 lt!397637 from!787 to!267))))

(declare-fun e!746038 () Bool)

(assert (=> d!332351 e!746038))

(declare-fun res!525598 () Bool)

(assert (=> d!332351 (=> (not res!525598) (not e!746038))))

(assert (=> d!332351 (= res!525598 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!332351 (= (lemmaSliceSubseq!94 lt!397637 from!787 to!267) lt!398079)))

(declare-fun b!1164474 () Bool)

(assert (=> b!1164474 (= e!746038 (<= to!267 (size!9036 lt!397637)))))

(assert (= (and d!332351 res!525598) b!1164474))

(assert (=> d!332351 m!1333133))

(assert (=> d!332351 m!1333133))

(assert (=> d!332351 m!1333135))

(declare-fun m!1333959 () Bool)

(assert (=> d!332351 m!1333959))

(assert (=> b!1164474 m!1333641))

(assert (=> b!1163983 d!332351))

(declare-fun d!332353 () Bool)

(declare-fun res!525599 () Bool)

(declare-fun e!746039 () Bool)

(assert (=> d!332353 (=> res!525599 e!746039)))

(assert (=> d!332353 (= res!525599 ((_ is Nil!11473) lt!397624))))

(assert (=> d!332353 (= (forall!3004 lt!397624 lambda!47677) e!746039)))

(declare-fun b!1164475 () Bool)

(declare-fun e!746040 () Bool)

(assert (=> b!1164475 (= e!746039 e!746040)))

(declare-fun res!525600 () Bool)

(assert (=> b!1164475 (=> (not res!525600) (not e!746040))))

(assert (=> b!1164475 (= res!525600 (dynLambda!5054 lambda!47677 (h!16874 lt!397624)))))

(declare-fun b!1164476 () Bool)

(assert (=> b!1164476 (= e!746040 (forall!3004 (t!110135 lt!397624) lambda!47677))))

(assert (= (and d!332353 (not res!525599)) b!1164475))

(assert (= (and b!1164475 res!525600) b!1164476))

(declare-fun b_lambda!34703 () Bool)

(assert (=> (not b_lambda!34703) (not b!1164475)))

(declare-fun m!1333961 () Bool)

(assert (=> b!1164475 m!1333961))

(declare-fun m!1333963 () Bool)

(assert (=> b!1164476 m!1333963))

(assert (=> b!1163983 d!332353))

(declare-fun b!1164479 () Bool)

(declare-fun e!746044 () Bool)

(assert (=> b!1164479 (= e!746044 (subseq!253 (t!110135 (slice!298 lt!397637 from!787 to!267)) (t!110135 lt!397637)))))

(declare-fun d!332355 () Bool)

(declare-fun res!525603 () Bool)

(declare-fun e!746043 () Bool)

(assert (=> d!332355 (=> res!525603 e!746043)))

(assert (=> d!332355 (= res!525603 ((_ is Nil!11473) (slice!298 lt!397637 from!787 to!267)))))

(assert (=> d!332355 (= (subseq!253 (slice!298 lt!397637 from!787 to!267) lt!397637) e!746043)))

(declare-fun b!1164480 () Bool)

(declare-fun e!746042 () Bool)

(assert (=> b!1164480 (= e!746042 (subseq!253 (slice!298 lt!397637 from!787 to!267) (t!110135 lt!397637)))))

(declare-fun b!1164478 () Bool)

(declare-fun e!746041 () Bool)

(assert (=> b!1164478 (= e!746041 e!746042)))

(declare-fun res!525604 () Bool)

(assert (=> b!1164478 (=> res!525604 e!746042)))

(assert (=> b!1164478 (= res!525604 e!746044)))

(declare-fun res!525601 () Bool)

(assert (=> b!1164478 (=> (not res!525601) (not e!746044))))

(assert (=> b!1164478 (= res!525601 (= (h!16874 (slice!298 lt!397637 from!787 to!267)) (h!16874 lt!397637)))))

(declare-fun b!1164477 () Bool)

(assert (=> b!1164477 (= e!746043 e!746041)))

(declare-fun res!525602 () Bool)

(assert (=> b!1164477 (=> (not res!525602) (not e!746041))))

(assert (=> b!1164477 (= res!525602 ((_ is Cons!11473) lt!397637))))

(assert (= (and d!332355 (not res!525603)) b!1164477))

(assert (= (and b!1164477 res!525602) b!1164478))

(assert (= (and b!1164478 res!525601) b!1164479))

(assert (= (and b!1164478 (not res!525604)) b!1164480))

(declare-fun m!1333965 () Bool)

(assert (=> b!1164479 m!1333965))

(assert (=> b!1164480 m!1333133))

(declare-fun m!1333967 () Bool)

(assert (=> b!1164480 m!1333967))

(assert (=> b!1163983 d!332355))

(declare-fun d!332357 () Bool)

(declare-fun e!746049 () Bool)

(assert (=> d!332357 e!746049))

(declare-fun res!525613 () Bool)

(assert (=> d!332357 (=> (not res!525613) (not e!746049))))

(declare-fun slice!300 (Conc!3757 Int Int) Conc!3757)

(assert (=> d!332357 (= res!525613 (isBalanced!1055 (slice!300 (c!194500 (tokens!1610 thiss!10527)) from!787 to!267)))))

(declare-fun lt!398082 () BalanceConc!7536)

(assert (=> d!332357 (= lt!398082 (BalanceConc!7537 (slice!300 (c!194500 (tokens!1610 thiss!10527)) from!787 to!267)))))

(declare-fun e!746050 () Bool)

(assert (=> d!332357 e!746050))

(declare-fun res!525612 () Bool)

(assert (=> d!332357 (=> (not res!525612) (not e!746050))))

(assert (=> d!332357 (= res!525612 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!332357 (= (slice!297 (tokens!1610 thiss!10527) from!787 to!267) lt!398082)))

(declare-fun b!1164487 () Bool)

(declare-fun res!525611 () Bool)

(assert (=> b!1164487 (=> (not res!525611) (not e!746050))))

(assert (=> b!1164487 (= res!525611 (<= to!267 (size!9030 (tokens!1610 thiss!10527))))))

(declare-fun b!1164488 () Bool)

(assert (=> b!1164488 (= e!746050 (isBalanced!1055 (c!194500 (tokens!1610 thiss!10527))))))

(declare-fun b!1164489 () Bool)

(assert (=> b!1164489 (= e!746049 (= (list!4224 lt!398082) (slice!298 (list!4224 (tokens!1610 thiss!10527)) from!787 to!267)))))

(assert (= (and d!332357 res!525612) b!1164487))

(assert (= (and b!1164487 res!525611) b!1164488))

(assert (= (and d!332357 res!525613) b!1164489))

(declare-fun m!1333969 () Bool)

(assert (=> d!332357 m!1333969))

(assert (=> d!332357 m!1333969))

(declare-fun m!1333971 () Bool)

(assert (=> d!332357 m!1333971))

(assert (=> b!1164487 m!1333143))

(assert (=> b!1164488 m!1333065))

(declare-fun m!1333973 () Bool)

(assert (=> b!1164489 m!1333973))

(assert (=> b!1164489 m!1333041))

(assert (=> b!1164489 m!1333041))

(declare-fun m!1333975 () Bool)

(assert (=> b!1164489 m!1333975))

(assert (=> b!1163983 d!332357))

(declare-fun d!332359 () Bool)

(declare-fun list!4227 (Conc!3757) List!11497)

(assert (=> d!332359 (= (list!4224 lt!397630) (list!4227 (c!194500 lt!397630)))))

(declare-fun bs!284019 () Bool)

(assert (= bs!284019 d!332359))

(declare-fun m!1333977 () Bool)

(assert (=> bs!284019 m!1333977))

(assert (=> b!1163983 d!332359))

(declare-fun d!332361 () Bool)

(assert (=> d!332361 (= (slice!298 lt!397637 from!787 to!267) (take!69 (drop!479 lt!397637 from!787) (- to!267 from!787)))))

(declare-fun bs!284020 () Bool)

(assert (= bs!284020 d!332361))

(assert (=> bs!284020 m!1333151))

(assert (=> bs!284020 m!1333151))

(declare-fun m!1333979 () Bool)

(assert (=> bs!284020 m!1333979))

(assert (=> b!1163983 d!332361))

(declare-fun d!332363 () Bool)

(assert (=> d!332363 (forall!3004 lt!397624 lambda!47677)))

(declare-fun lt!398083 () Unit!17539)

(assert (=> d!332363 (= lt!398083 (choose!7502 lt!397624 lt!397637 lambda!47677))))

(assert (=> d!332363 (forall!3004 lt!397637 lambda!47677)))

(assert (=> d!332363 (= (lemmaForallSubseq!145 lt!397624 lt!397637 lambda!47677) lt!398083)))

(declare-fun bs!284021 () Bool)

(assert (= bs!284021 d!332363))

(assert (=> bs!284021 m!1333131))

(declare-fun m!1333981 () Bool)

(assert (=> bs!284021 m!1333981))

(assert (=> bs!284021 m!1333731))

(assert (=> b!1163983 d!332363))

(declare-fun d!332365 () Bool)

(declare-fun res!525640 () Bool)

(declare-fun e!746073 () Bool)

(assert (=> d!332365 (=> (not res!525640) (not e!746073))))

(assert (=> d!332365 (= res!525640 (not (isEmpty!6991 (rules!9540 thiss!10527))))))

(assert (=> d!332365 (= (inv!15095 thiss!10527) e!746073)))

(declare-fun b!1164519 () Bool)

(declare-fun res!525641 () Bool)

(assert (=> b!1164519 (=> (not res!525641) (not e!746073))))

(assert (=> b!1164519 (= res!525641 (rulesInvariant!1566 Lexer!1690 (rules!9540 thiss!10527)))))

(declare-fun b!1164520 () Bool)

(declare-fun res!525642 () Bool)

(assert (=> b!1164520 (=> (not res!525642) (not e!746073))))

(assert (=> b!1164520 (= res!525642 (rulesProduceEachTokenIndividually!731 Lexer!1690 (rules!9540 thiss!10527) (tokens!1610 thiss!10527)))))

(declare-fun b!1164521 () Bool)

(assert (=> b!1164521 (= e!746073 (separableTokens!134 Lexer!1690 (tokens!1610 thiss!10527) (rules!9540 thiss!10527)))))

(assert (= (and d!332365 res!525640) b!1164519))

(assert (= (and b!1164519 res!525641) b!1164520))

(assert (= (and b!1164520 res!525642) b!1164521))

(assert (=> d!332365 m!1333357))

(assert (=> b!1164519 m!1333051))

(assert (=> b!1164520 m!1333039))

(assert (=> b!1164521 m!1333957))

(assert (=> start!102054 d!332365))

(declare-fun b!1164522 () Bool)

(declare-fun e!746078 () Bool)

(declare-fun lt!398161 () List!11497)

(assert (=> b!1164522 (= e!746078 (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) lt!398161))))

(declare-fun b!1164523 () Bool)

(declare-fun e!746074 () Bool)

(declare-fun lt!398149 () List!11497)

(assert (=> b!1164523 (= e!746074 (<= 1 (size!9036 lt!398149)))))

(declare-fun d!332371 () Bool)

(declare-fun lt!398156 () Bool)

(assert (=> d!332371 (= lt!398156 (tokensListTwoByTwoPredicateSeparableList!104 Lexer!1690 (dropList!316 (tokens!1610 thiss!10527) 1) (rules!9540 thiss!10527)))))

(declare-fun lt!398167 () Unit!17539)

(declare-fun lt!398157 () Unit!17539)

(assert (=> d!332371 (= lt!398167 lt!398157)))

(declare-fun lt!398165 () List!11497)

(assert (=> d!332371 (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) lt!398165)))

(assert (=> d!332371 (= lt!398157 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!26 Lexer!1690 (rules!9540 thiss!10527) lt!398161 lt!398165))))

(assert (=> d!332371 e!746078))

(declare-fun res!525648 () Bool)

(assert (=> d!332371 (=> (not res!525648) (not e!746078))))

(assert (=> d!332371 (= res!525648 ((_ is Lexer!1690) Lexer!1690))))

(assert (=> d!332371 (= lt!398165 (dropList!316 (tokens!1610 thiss!10527) 1))))

(assert (=> d!332371 (= lt!398161 (list!4224 (tokens!1610 thiss!10527)))))

(declare-fun lt!398144 () Unit!17539)

(declare-fun lt!398139 () Unit!17539)

(assert (=> d!332371 (= lt!398144 lt!398139)))

(assert (=> d!332371 (subseq!253 (drop!479 lt!398149 1) lt!398149)))

(assert (=> d!332371 (= lt!398139 (lemmaDropSubSeq!26 lt!398149 1))))

(assert (=> d!332371 e!746074))

(declare-fun res!525649 () Bool)

(assert (=> d!332371 (=> (not res!525649) (not e!746074))))

(assert (=> d!332371 (= res!525649 (>= 1 0))))

(assert (=> d!332371 (= lt!398149 (list!4224 (tokens!1610 thiss!10527)))))

(declare-fun e!746076 () Bool)

(assert (=> d!332371 (= lt!398156 e!746076)))

(declare-fun res!525650 () Bool)

(assert (=> d!332371 (=> res!525650 e!746076)))

(assert (=> d!332371 (= res!525650 (not (< 1 (- (size!9030 (tokens!1610 thiss!10527)) 1))))))

(declare-fun e!746075 () Bool)

(assert (=> d!332371 e!746075))

(declare-fun res!525645 () Bool)

(assert (=> d!332371 (=> (not res!525645) (not e!746075))))

(assert (=> d!332371 (= res!525645 (>= 1 0))))

(assert (=> d!332371 (= (tokensListTwoByTwoPredicateSeparable!67 Lexer!1690 (tokens!1610 thiss!10527) 1 (rules!9540 thiss!10527)) lt!398156)))

(declare-fun b!1164524 () Bool)

(declare-fun e!746077 () Bool)

(assert (=> b!1164524 (= e!746076 e!746077)))

(declare-fun res!525647 () Bool)

(assert (=> b!1164524 (=> (not res!525647) (not e!746077))))

(assert (=> b!1164524 (= res!525647 (separableTokensPredicate!128 Lexer!1690 (apply!2469 (tokens!1610 thiss!10527) 1) (apply!2469 (tokens!1610 thiss!10527) (+ 1 1)) (rules!9540 thiss!10527)))))

(declare-fun lt!398154 () Unit!17539)

(declare-fun Unit!17561 () Unit!17539)

(assert (=> b!1164524 (= lt!398154 Unit!17561)))

(assert (=> b!1164524 (> (size!9031 (charsOf!1066 (apply!2469 (tokens!1610 thiss!10527) (+ 1 1)))) 0)))

(declare-fun lt!398164 () Unit!17539)

(declare-fun Unit!17562 () Unit!17539)

(assert (=> b!1164524 (= lt!398164 Unit!17562)))

(assert (=> b!1164524 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (apply!2469 (tokens!1610 thiss!10527) (+ 1 1)))))

(declare-fun lt!398169 () Unit!17539)

(declare-fun Unit!17563 () Unit!17539)

(assert (=> b!1164524 (= lt!398169 Unit!17563)))

(assert (=> b!1164524 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (apply!2469 (tokens!1610 thiss!10527) 1))))

(declare-fun lt!398166 () Unit!17539)

(declare-fun lt!398142 () Unit!17539)

(assert (=> b!1164524 (= lt!398166 lt!398142)))

(declare-fun lt!398148 () Token!3656)

(assert (=> b!1164524 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) lt!398148)))

(declare-fun lt!398151 () List!11497)

(assert (=> b!1164524 (= lt!398142 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!287 Lexer!1690 (rules!9540 thiss!10527) lt!398151 lt!398148))))

(assert (=> b!1164524 (= lt!398148 (apply!2469 (tokens!1610 thiss!10527) (+ 1 1)))))

(assert (=> b!1164524 (= lt!398151 (list!4224 (tokens!1610 thiss!10527)))))

(declare-fun lt!398143 () Unit!17539)

(declare-fun lt!398168 () Unit!17539)

(assert (=> b!1164524 (= lt!398143 lt!398168)))

(declare-fun lt!398145 () Token!3656)

(assert (=> b!1164524 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) lt!398145)))

(declare-fun lt!398170 () List!11497)

(assert (=> b!1164524 (= lt!398168 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!287 Lexer!1690 (rules!9540 thiss!10527) lt!398170 lt!398145))))

(assert (=> b!1164524 (= lt!398145 (apply!2469 (tokens!1610 thiss!10527) 1))))

(assert (=> b!1164524 (= lt!398170 (list!4224 (tokens!1610 thiss!10527)))))

(declare-fun lt!398138 () Unit!17539)

(declare-fun lt!398153 () Unit!17539)

(assert (=> b!1164524 (= lt!398138 lt!398153)))

(declare-fun lt!398155 () List!11497)

(declare-fun lt!398163 () Int)

(assert (=> b!1164524 (= (tail!1684 (drop!479 lt!398155 lt!398163)) (drop!479 lt!398155 (+ lt!398163 1)))))

(assert (=> b!1164524 (= lt!398153 (lemmaDropTail!357 lt!398155 lt!398163))))

(assert (=> b!1164524 (= lt!398163 (+ 1 1))))

(assert (=> b!1164524 (= lt!398155 (list!4224 (tokens!1610 thiss!10527)))))

(declare-fun lt!398160 () Unit!17539)

(declare-fun lt!398146 () Unit!17539)

(assert (=> b!1164524 (= lt!398160 lt!398146)))

(declare-fun lt!398147 () List!11497)

(assert (=> b!1164524 (= (tail!1684 (drop!479 lt!398147 1)) (drop!479 lt!398147 (+ 1 1)))))

(assert (=> b!1164524 (= lt!398146 (lemmaDropTail!357 lt!398147 1))))

(assert (=> b!1164524 (= lt!398147 (list!4224 (tokens!1610 thiss!10527)))))

(declare-fun lt!398150 () Unit!17539)

(declare-fun lt!398162 () Unit!17539)

(assert (=> b!1164524 (= lt!398150 lt!398162)))

(declare-fun lt!398159 () List!11497)

(declare-fun lt!398141 () Int)

(assert (=> b!1164524 (= (head!2100 (drop!479 lt!398159 lt!398141)) (apply!2470 lt!398159 lt!398141))))

(assert (=> b!1164524 (= lt!398162 (lemmaDropApply!369 lt!398159 lt!398141))))

(assert (=> b!1164524 (= lt!398141 (+ 1 1))))

(assert (=> b!1164524 (= lt!398159 (list!4224 (tokens!1610 thiss!10527)))))

(declare-fun lt!398140 () Unit!17539)

(declare-fun lt!398152 () Unit!17539)

(assert (=> b!1164524 (= lt!398140 lt!398152)))

(declare-fun lt!398158 () List!11497)

(assert (=> b!1164524 (= (head!2100 (drop!479 lt!398158 1)) (apply!2470 lt!398158 1))))

(assert (=> b!1164524 (= lt!398152 (lemmaDropApply!369 lt!398158 1))))

(assert (=> b!1164524 (= lt!398158 (list!4224 (tokens!1610 thiss!10527)))))

(declare-fun b!1164525 () Bool)

(declare-fun res!525646 () Bool)

(assert (=> b!1164525 (=> (not res!525646) (not e!746078))))

(assert (=> b!1164525 (= res!525646 (not (isEmpty!6991 (rules!9540 thiss!10527))))))

(declare-fun b!1164526 () Bool)

(assert (=> b!1164526 (= e!746077 (tokensListTwoByTwoPredicateSeparable!67 Lexer!1690 (tokens!1610 thiss!10527) (+ 1 1) (rules!9540 thiss!10527)))))

(declare-fun b!1164527 () Bool)

(declare-fun res!525644 () Bool)

(assert (=> b!1164527 (=> (not res!525644) (not e!746078))))

(assert (=> b!1164527 (= res!525644 (subseq!253 lt!398165 lt!398161))))

(declare-fun b!1164528 () Bool)

(declare-fun res!525643 () Bool)

(assert (=> b!1164528 (=> (not res!525643) (not e!746078))))

(assert (=> b!1164528 (= res!525643 (rulesInvariant!1566 Lexer!1690 (rules!9540 thiss!10527)))))

(declare-fun b!1164529 () Bool)

(assert (=> b!1164529 (= e!746075 (<= 1 (size!9030 (tokens!1610 thiss!10527))))))

(assert (= (and d!332371 res!525645) b!1164529))

(assert (= (and d!332371 (not res!525650)) b!1164524))

(assert (= (and b!1164524 res!525647) b!1164526))

(assert (= (and d!332371 res!525649) b!1164523))

(assert (= (and d!332371 res!525648) b!1164525))

(assert (= (and b!1164525 res!525646) b!1164528))

(assert (= (and b!1164528 res!525643) b!1164527))

(assert (= (and b!1164527 res!525644) b!1164522))

(assert (=> b!1164528 m!1333051))

(declare-fun m!1334081 () Bool)

(assert (=> b!1164526 m!1334081))

(declare-fun m!1334083 () Bool)

(assert (=> b!1164523 m!1334083))

(declare-fun m!1334085 () Bool)

(assert (=> b!1164524 m!1334085))

(declare-fun m!1334087 () Bool)

(assert (=> b!1164524 m!1334087))

(declare-fun m!1334089 () Bool)

(assert (=> b!1164524 m!1334089))

(declare-fun m!1334091 () Bool)

(assert (=> b!1164524 m!1334091))

(assert (=> b!1164524 m!1333097))

(declare-fun m!1334093 () Bool)

(assert (=> b!1164524 m!1334093))

(declare-fun m!1334095 () Bool)

(assert (=> b!1164524 m!1334095))

(assert (=> b!1164524 m!1333097))

(declare-fun m!1334097 () Bool)

(assert (=> b!1164524 m!1334097))

(declare-fun m!1334099 () Bool)

(assert (=> b!1164524 m!1334099))

(declare-fun m!1334101 () Bool)

(assert (=> b!1164524 m!1334101))

(declare-fun m!1334103 () Bool)

(assert (=> b!1164524 m!1334103))

(declare-fun m!1334105 () Bool)

(assert (=> b!1164524 m!1334105))

(declare-fun m!1334107 () Bool)

(assert (=> b!1164524 m!1334107))

(declare-fun m!1334109 () Bool)

(assert (=> b!1164524 m!1334109))

(assert (=> b!1164524 m!1333097))

(declare-fun m!1334111 () Bool)

(assert (=> b!1164524 m!1334111))

(declare-fun m!1334113 () Bool)

(assert (=> b!1164524 m!1334113))

(declare-fun m!1334115 () Bool)

(assert (=> b!1164524 m!1334115))

(declare-fun m!1334117 () Bool)

(assert (=> b!1164524 m!1334117))

(assert (=> b!1164524 m!1334109))

(declare-fun m!1334119 () Bool)

(assert (=> b!1164524 m!1334119))

(assert (=> b!1164524 m!1334087))

(declare-fun m!1334121 () Bool)

(assert (=> b!1164524 m!1334121))

(assert (=> b!1164524 m!1334089))

(declare-fun m!1334123 () Bool)

(assert (=> b!1164524 m!1334123))

(assert (=> b!1164524 m!1333041))

(assert (=> b!1164524 m!1334093))

(declare-fun m!1334125 () Bool)

(assert (=> b!1164524 m!1334125))

(assert (=> b!1164524 m!1334115))

(declare-fun m!1334127 () Bool)

(assert (=> b!1164524 m!1334127))

(assert (=> b!1164524 m!1334093))

(declare-fun m!1334129 () Bool)

(assert (=> b!1164524 m!1334129))

(declare-fun m!1334131 () Bool)

(assert (=> b!1164524 m!1334131))

(declare-fun m!1334133 () Bool)

(assert (=> b!1164524 m!1334133))

(assert (=> b!1164524 m!1334093))

(assert (=> b!1164524 m!1334105))

(declare-fun m!1334135 () Bool)

(assert (=> b!1164524 m!1334135))

(declare-fun m!1334137 () Bool)

(assert (=> d!332371 m!1334137))

(assert (=> d!332371 m!1333041))

(declare-fun m!1334139 () Bool)

(assert (=> d!332371 m!1334139))

(declare-fun m!1334141 () Bool)

(assert (=> d!332371 m!1334141))

(declare-fun m!1334143 () Bool)

(assert (=> d!332371 m!1334143))

(assert (=> d!332371 m!1333143))

(declare-fun m!1334145 () Bool)

(assert (=> d!332371 m!1334145))

(assert (=> d!332371 m!1334145))

(declare-fun m!1334147 () Bool)

(assert (=> d!332371 m!1334147))

(assert (=> d!332371 m!1334141))

(declare-fun m!1334149 () Bool)

(assert (=> d!332371 m!1334149))

(assert (=> b!1164525 m!1333357))

(declare-fun m!1334151 () Bool)

(assert (=> b!1164522 m!1334151))

(assert (=> b!1164529 m!1333143))

(declare-fun m!1334153 () Bool)

(assert (=> b!1164527 m!1334153))

(assert (=> b!1163982 d!332371))

(declare-fun bs!284030 () Bool)

(declare-fun d!332373 () Bool)

(assert (= bs!284030 (and d!332373 d!332245)))

(declare-fun lambda!47710 () Int)

(assert (=> bs!284030 (= lambda!47710 lambda!47696)))

(declare-fun bs!284031 () Bool)

(assert (= bs!284031 (and d!332373 b!1164110)))

(assert (=> bs!284031 (= lambda!47710 lambda!47685)))

(declare-fun bs!284032 () Bool)

(assert (= bs!284032 (and d!332373 b!1163976)))

(assert (=> bs!284032 (= lambda!47710 lambda!47677)))

(declare-fun bs!284033 () Bool)

(assert (= bs!284033 (and d!332373 d!332287)))

(assert (=> bs!284033 (= lambda!47710 lambda!47702)))

(declare-fun bs!284034 () Bool)

(assert (= bs!284034 (and d!332373 d!332271)))

(assert (=> bs!284034 (= lambda!47710 lambda!47697)))

(declare-fun bs!284035 () Bool)

(assert (= bs!284035 (and d!332373 d!332329)))

(assert (=> bs!284035 (= lambda!47710 lambda!47703)))

(declare-fun bs!284036 () Bool)

(assert (= bs!284036 (and d!332373 b!1164150)))

(assert (=> bs!284036 (= lambda!47710 lambda!47692)))

(declare-fun b!1164534 () Bool)

(declare-fun e!746083 () Bool)

(assert (=> b!1164534 (= e!746083 true)))

(declare-fun b!1164533 () Bool)

(declare-fun e!746082 () Bool)

(assert (=> b!1164533 (= e!746082 e!746083)))

(declare-fun b!1164532 () Bool)

(declare-fun e!746081 () Bool)

(assert (=> b!1164532 (= e!746081 e!746082)))

(assert (=> d!332373 e!746081))

(assert (= b!1164533 b!1164534))

(assert (= b!1164532 b!1164533))

(assert (= (and d!332373 ((_ is Cons!11474) (rules!9540 thiss!10527))) b!1164532))

(assert (=> b!1164534 (< (dynLambda!5055 order!7017 (toValue!3098 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47710))))

(assert (=> b!1164534 (< (dynLambda!5057 order!7021 (toChars!2957 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47710))))

(assert (=> d!332373 true))

(declare-fun lt!398171 () Bool)

(assert (=> d!332373 (= lt!398171 (forall!3004 lt!397624 lambda!47710))))

(declare-fun e!746079 () Bool)

(assert (=> d!332373 (= lt!398171 e!746079)))

(declare-fun res!525651 () Bool)

(assert (=> d!332373 (=> res!525651 e!746079)))

(assert (=> d!332373 (= res!525651 (not ((_ is Cons!11473) lt!397624)))))

(assert (=> d!332373 (not (isEmpty!6991 (rules!9540 thiss!10527)))))

(assert (=> d!332373 (= (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) lt!397624) lt!398171)))

(declare-fun b!1164530 () Bool)

(declare-fun e!746080 () Bool)

(assert (=> b!1164530 (= e!746079 e!746080)))

(declare-fun res!525652 () Bool)

(assert (=> b!1164530 (=> (not res!525652) (not e!746080))))

(assert (=> b!1164530 (= res!525652 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 lt!397624)))))

(declare-fun b!1164531 () Bool)

(assert (=> b!1164531 (= e!746080 (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) (t!110135 lt!397624)))))

(assert (= (and d!332373 (not res!525651)) b!1164530))

(assert (= (and b!1164530 res!525652) b!1164531))

(declare-fun m!1334155 () Bool)

(assert (=> d!332373 m!1334155))

(assert (=> d!332373 m!1333357))

(assert (=> b!1164530 m!1333061))

(assert (=> b!1164531 m!1333127))

(assert (=> b!1163981 d!332373))

(declare-fun d!332375 () Bool)

(declare-fun lt!398173 () Bool)

(declare-fun e!746085 () Bool)

(assert (=> d!332375 (= lt!398173 e!746085)))

(declare-fun res!525654 () Bool)

(assert (=> d!332375 (=> (not res!525654) (not e!746085))))

(assert (=> d!332375 (= res!525654 (= (list!4224 (_1!6854 (lex!700 Lexer!1690 (rules!9540 thiss!10527) (print!637 Lexer!1690 (singletonSeq!662 (h!16874 lt!397624)))))) (list!4224 (singletonSeq!662 (h!16874 lt!397624)))))))

(declare-fun e!746084 () Bool)

(assert (=> d!332375 (= lt!398173 e!746084)))

(declare-fun res!525655 () Bool)

(assert (=> d!332375 (=> (not res!525655) (not e!746084))))

(declare-fun lt!398172 () tuple2!12014)

(assert (=> d!332375 (= res!525655 (= (size!9030 (_1!6854 lt!398172)) 1))))

(assert (=> d!332375 (= lt!398172 (lex!700 Lexer!1690 (rules!9540 thiss!10527) (print!637 Lexer!1690 (singletonSeq!662 (h!16874 lt!397624)))))))

(assert (=> d!332375 (not (isEmpty!6991 (rules!9540 thiss!10527)))))

(assert (=> d!332375 (= (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 lt!397624)) lt!398173)))

(declare-fun b!1164535 () Bool)

(declare-fun res!525653 () Bool)

(assert (=> b!1164535 (=> (not res!525653) (not e!746084))))

(assert (=> b!1164535 (= res!525653 (= (apply!2469 (_1!6854 lt!398172) 0) (h!16874 lt!397624)))))

(declare-fun b!1164536 () Bool)

(assert (=> b!1164536 (= e!746084 (isEmpty!6994 (_2!6854 lt!398172)))))

(declare-fun b!1164537 () Bool)

(assert (=> b!1164537 (= e!746085 (isEmpty!6994 (_2!6854 (lex!700 Lexer!1690 (rules!9540 thiss!10527) (print!637 Lexer!1690 (singletonSeq!662 (h!16874 lt!397624)))))))))

(assert (= (and d!332375 res!525655) b!1164535))

(assert (= (and b!1164535 res!525653) b!1164536))

(assert (= (and d!332375 res!525654) b!1164537))

(declare-fun m!1334157 () Bool)

(assert (=> d!332375 m!1334157))

(declare-fun m!1334159 () Bool)

(assert (=> d!332375 m!1334159))

(declare-fun m!1334161 () Bool)

(assert (=> d!332375 m!1334161))

(declare-fun m!1334163 () Bool)

(assert (=> d!332375 m!1334163))

(assert (=> d!332375 m!1334161))

(declare-fun m!1334165 () Bool)

(assert (=> d!332375 m!1334165))

(assert (=> d!332375 m!1334159))

(declare-fun m!1334167 () Bool)

(assert (=> d!332375 m!1334167))

(assert (=> d!332375 m!1333357))

(assert (=> d!332375 m!1334159))

(declare-fun m!1334169 () Bool)

(assert (=> b!1164535 m!1334169))

(declare-fun m!1334171 () Bool)

(assert (=> b!1164536 m!1334171))

(assert (=> b!1164537 m!1334159))

(assert (=> b!1164537 m!1334159))

(assert (=> b!1164537 m!1334161))

(assert (=> b!1164537 m!1334161))

(assert (=> b!1164537 m!1334165))

(declare-fun m!1334173 () Bool)

(assert (=> b!1164537 m!1334173))

(assert (=> b!1163986 d!332375))

(declare-fun bs!284037 () Bool)

(declare-fun d!332377 () Bool)

(assert (= bs!284037 (and d!332377 d!332245)))

(declare-fun lambda!47711 () Int)

(assert (=> bs!284037 (= lambda!47711 lambda!47696)))

(declare-fun bs!284038 () Bool)

(assert (= bs!284038 (and d!332377 b!1164110)))

(assert (=> bs!284038 (= lambda!47711 lambda!47685)))

(declare-fun bs!284039 () Bool)

(assert (= bs!284039 (and d!332377 b!1163976)))

(assert (=> bs!284039 (= lambda!47711 lambda!47677)))

(declare-fun bs!284040 () Bool)

(assert (= bs!284040 (and d!332377 d!332287)))

(assert (=> bs!284040 (= lambda!47711 lambda!47702)))

(declare-fun bs!284041 () Bool)

(assert (= bs!284041 (and d!332377 d!332271)))

(assert (=> bs!284041 (= lambda!47711 lambda!47697)))

(declare-fun bs!284042 () Bool)

(assert (= bs!284042 (and d!332377 d!332373)))

(assert (=> bs!284042 (= lambda!47711 lambda!47710)))

(declare-fun bs!284043 () Bool)

(assert (= bs!284043 (and d!332377 d!332329)))

(assert (=> bs!284043 (= lambda!47711 lambda!47703)))

(declare-fun bs!284044 () Bool)

(assert (= bs!284044 (and d!332377 b!1164150)))

(assert (=> bs!284044 (= lambda!47711 lambda!47692)))

(declare-fun b!1164542 () Bool)

(declare-fun e!746090 () Bool)

(assert (=> b!1164542 (= e!746090 true)))

(declare-fun b!1164541 () Bool)

(declare-fun e!746089 () Bool)

(assert (=> b!1164541 (= e!746089 e!746090)))

(declare-fun b!1164540 () Bool)

(declare-fun e!746088 () Bool)

(assert (=> b!1164540 (= e!746088 e!746089)))

(assert (=> d!332377 e!746088))

(assert (= b!1164541 b!1164542))

(assert (= b!1164540 b!1164541))

(assert (= (and d!332377 ((_ is Cons!11474) (rules!9540 thiss!10527))) b!1164540))

(assert (=> b!1164542 (< (dynLambda!5055 order!7017 (toValue!3098 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47711))))

(assert (=> b!1164542 (< (dynLambda!5057 order!7021 (toChars!2957 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47711))))

(assert (=> d!332377 true))

(declare-fun lt!398174 () Bool)

(assert (=> d!332377 (= lt!398174 (forall!3004 (t!110135 lt!397618) lambda!47711))))

(declare-fun e!746086 () Bool)

(assert (=> d!332377 (= lt!398174 e!746086)))

(declare-fun res!525656 () Bool)

(assert (=> d!332377 (=> res!525656 e!746086)))

(assert (=> d!332377 (= res!525656 (not ((_ is Cons!11473) (t!110135 lt!397618))))))

(assert (=> d!332377 (not (isEmpty!6991 (rules!9540 thiss!10527)))))

(assert (=> d!332377 (= (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) (t!110135 lt!397618)) lt!398174)))

(declare-fun b!1164538 () Bool)

(declare-fun e!746087 () Bool)

(assert (=> b!1164538 (= e!746086 e!746087)))

(declare-fun res!525657 () Bool)

(assert (=> b!1164538 (=> (not res!525657) (not e!746087))))

(assert (=> b!1164538 (= res!525657 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 (t!110135 lt!397618))))))

(declare-fun b!1164539 () Bool)

(assert (=> b!1164539 (= e!746087 (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) (t!110135 (t!110135 lt!397618))))))

(assert (= (and d!332377 (not res!525656)) b!1164538))

(assert (= (and b!1164538 res!525657) b!1164539))

(declare-fun m!1334175 () Bool)

(assert (=> d!332377 m!1334175))

(assert (=> d!332377 m!1333357))

(declare-fun m!1334177 () Bool)

(assert (=> b!1164538 m!1334177))

(declare-fun m!1334179 () Bool)

(assert (=> b!1164539 m!1334179))

(assert (=> b!1163964 d!332377))

(declare-fun d!332379 () Bool)

(declare-fun res!525678 () Bool)

(declare-fun e!746115 () Bool)

(assert (=> d!332379 (=> res!525678 e!746115)))

(assert (=> d!332379 (= res!525678 (or (not ((_ is Cons!11473) lt!397618)) (not ((_ is Cons!11473) (t!110135 lt!397618)))))))

(assert (=> d!332379 (= (tokensListTwoByTwoPredicateSeparableList!104 Lexer!1690 lt!397618 (rules!9540 thiss!10527)) e!746115)))

(declare-fun b!1164566 () Bool)

(declare-fun e!746114 () Bool)

(assert (=> b!1164566 (= e!746115 e!746114)))

(declare-fun res!525679 () Bool)

(assert (=> b!1164566 (=> (not res!525679) (not e!746114))))

(assert (=> b!1164566 (= res!525679 (separableTokensPredicate!128 Lexer!1690 (h!16874 lt!397618) (h!16874 (t!110135 lt!397618)) (rules!9540 thiss!10527)))))

(declare-fun lt!398204 () Unit!17539)

(declare-fun Unit!17564 () Unit!17539)

(assert (=> b!1164566 (= lt!398204 Unit!17564)))

(assert (=> b!1164566 (> (size!9031 (charsOf!1066 (h!16874 (t!110135 lt!397618)))) 0)))

(declare-fun lt!398208 () Unit!17539)

(declare-fun Unit!17565 () Unit!17539)

(assert (=> b!1164566 (= lt!398208 Unit!17565)))

(assert (=> b!1164566 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 (t!110135 lt!397618)))))

(declare-fun lt!398206 () Unit!17539)

(declare-fun Unit!17566 () Unit!17539)

(assert (=> b!1164566 (= lt!398206 Unit!17566)))

(assert (=> b!1164566 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 lt!397618))))

(declare-fun lt!398205 () Unit!17539)

(declare-fun lt!398207 () Unit!17539)

(assert (=> b!1164566 (= lt!398205 lt!398207)))

(assert (=> b!1164566 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 (t!110135 lt!397618)))))

(assert (=> b!1164566 (= lt!398207 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!287 Lexer!1690 (rules!9540 thiss!10527) lt!397618 (h!16874 (t!110135 lt!397618))))))

(declare-fun lt!398210 () Unit!17539)

(declare-fun lt!398209 () Unit!17539)

(assert (=> b!1164566 (= lt!398210 lt!398209)))

(assert (=> b!1164566 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 lt!397618))))

(assert (=> b!1164566 (= lt!398209 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!287 Lexer!1690 (rules!9540 thiss!10527) lt!397618 (h!16874 lt!397618)))))

(declare-fun b!1164567 () Bool)

(assert (=> b!1164567 (= e!746114 (tokensListTwoByTwoPredicateSeparableList!104 Lexer!1690 (Cons!11473 (h!16874 (t!110135 lt!397618)) (t!110135 (t!110135 lt!397618))) (rules!9540 thiss!10527)))))

(assert (= (and d!332379 (not res!525678)) b!1164566))

(assert (= (and b!1164566 res!525679) b!1164567))

(declare-fun m!1334203 () Bool)

(assert (=> b!1164566 m!1334203))

(declare-fun m!1334205 () Bool)

(assert (=> b!1164566 m!1334205))

(assert (=> b!1164566 m!1334203))

(declare-fun m!1334207 () Bool)

(assert (=> b!1164566 m!1334207))

(assert (=> b!1164566 m!1334177))

(assert (=> b!1164566 m!1333071))

(declare-fun m!1334209 () Bool)

(assert (=> b!1164566 m!1334209))

(declare-fun m!1334211 () Bool)

(assert (=> b!1164566 m!1334211))

(declare-fun m!1334213 () Bool)

(assert (=> b!1164567 m!1334213))

(assert (=> b!1163985 d!332379))

(declare-fun d!332385 () Bool)

(declare-fun c!194557 () Bool)

(assert (=> d!332385 (= c!194557 ((_ is Node!3757) (c!194500 (tokens!1610 thiss!10527))))))

(declare-fun e!746120 () Bool)

(assert (=> d!332385 (= (inv!15096 (c!194500 (tokens!1610 thiss!10527))) e!746120)))

(declare-fun b!1164574 () Bool)

(declare-fun inv!15099 (Conc!3757) Bool)

(assert (=> b!1164574 (= e!746120 (inv!15099 (c!194500 (tokens!1610 thiss!10527))))))

(declare-fun b!1164575 () Bool)

(declare-fun e!746121 () Bool)

(assert (=> b!1164575 (= e!746120 e!746121)))

(declare-fun res!525682 () Bool)

(assert (=> b!1164575 (= res!525682 (not ((_ is Leaf!5766) (c!194500 (tokens!1610 thiss!10527)))))))

(assert (=> b!1164575 (=> res!525682 e!746121)))

(declare-fun b!1164576 () Bool)

(declare-fun inv!15100 (Conc!3757) Bool)

(assert (=> b!1164576 (= e!746121 (inv!15100 (c!194500 (tokens!1610 thiss!10527))))))

(assert (= (and d!332385 c!194557) b!1164574))

(assert (= (and d!332385 (not c!194557)) b!1164575))

(assert (= (and b!1164575 (not res!525682)) b!1164576))

(declare-fun m!1334215 () Bool)

(assert (=> b!1164574 m!1334215))

(declare-fun m!1334217 () Bool)

(assert (=> b!1164576 m!1334217))

(assert (=> b!1163984 d!332385))

(declare-fun d!332387 () Bool)

(declare-fun lt!398213 () Int)

(declare-fun size!9037 (List!11496) Int)

(declare-fun list!4228 (BalanceConc!7534) List!11496)

(assert (=> d!332387 (= lt!398213 (size!9037 (list!4228 (charsOf!1066 lt!397632))))))

(declare-fun size!9038 (Conc!3756) Int)

(assert (=> d!332387 (= lt!398213 (size!9038 (c!194499 (charsOf!1066 lt!397632))))))

(assert (=> d!332387 (= (size!9031 (charsOf!1066 lt!397632)) lt!398213)))

(declare-fun bs!284054 () Bool)

(assert (= bs!284054 d!332387))

(assert (=> bs!284054 m!1333075))

(declare-fun m!1334219 () Bool)

(assert (=> bs!284054 m!1334219))

(assert (=> bs!284054 m!1334219))

(declare-fun m!1334221 () Bool)

(assert (=> bs!284054 m!1334221))

(declare-fun m!1334223 () Bool)

(assert (=> bs!284054 m!1334223))

(assert (=> b!1163978 d!332387))

(declare-fun d!332389 () Bool)

(declare-fun lt!398216 () BalanceConc!7534)

(assert (=> d!332389 (= (list!4228 lt!398216) (originalCharacters!2551 lt!397632))))

(declare-fun dynLambda!5058 (Int TokenValue!2063) BalanceConc!7534)

(assert (=> d!332389 (= lt!398216 (dynLambda!5058 (toChars!2957 (transformation!1997 (rule!3418 lt!397632))) (value!64911 lt!397632)))))

(assert (=> d!332389 (= (charsOf!1066 lt!397632) lt!398216)))

(declare-fun b_lambda!34705 () Bool)

(assert (=> (not b_lambda!34705) (not d!332389)))

(declare-fun bs!284055 () Bool)

(assert (= bs!284055 d!332389))

(declare-fun m!1334225 () Bool)

(assert (=> bs!284055 m!1334225))

(declare-fun m!1334227 () Bool)

(assert (=> bs!284055 m!1334227))

(assert (=> b!1163978 d!332389))

(declare-fun bs!284056 () Bool)

(declare-fun d!332391 () Bool)

(assert (= bs!284056 (and d!332391 d!332245)))

(declare-fun lambda!47715 () Int)

(assert (=> bs!284056 (= lambda!47715 lambda!47696)))

(declare-fun bs!284057 () Bool)

(assert (= bs!284057 (and d!332391 b!1164110)))

(assert (=> bs!284057 (= lambda!47715 lambda!47685)))

(declare-fun bs!284058 () Bool)

(assert (= bs!284058 (and d!332391 b!1163976)))

(assert (=> bs!284058 (= lambda!47715 lambda!47677)))

(declare-fun bs!284059 () Bool)

(assert (= bs!284059 (and d!332391 d!332271)))

(assert (=> bs!284059 (= lambda!47715 lambda!47697)))

(declare-fun bs!284060 () Bool)

(assert (= bs!284060 (and d!332391 d!332373)))

(assert (=> bs!284060 (= lambda!47715 lambda!47710)))

(declare-fun bs!284061 () Bool)

(assert (= bs!284061 (and d!332391 d!332329)))

(assert (=> bs!284061 (= lambda!47715 lambda!47703)))

(declare-fun bs!284062 () Bool)

(assert (= bs!284062 (and d!332391 b!1164150)))

(assert (=> bs!284062 (= lambda!47715 lambda!47692)))

(declare-fun bs!284063 () Bool)

(assert (= bs!284063 (and d!332391 d!332287)))

(assert (=> bs!284063 (= lambda!47715 lambda!47702)))

(declare-fun bs!284064 () Bool)

(assert (= bs!284064 (and d!332391 d!332377)))

(assert (=> bs!284064 (= lambda!47715 lambda!47711)))

(declare-fun b!1164581 () Bool)

(declare-fun e!746126 () Bool)

(assert (=> b!1164581 (= e!746126 true)))

(declare-fun b!1164580 () Bool)

(declare-fun e!746125 () Bool)

(assert (=> b!1164580 (= e!746125 e!746126)))

(declare-fun b!1164579 () Bool)

(declare-fun e!746124 () Bool)

(assert (=> b!1164579 (= e!746124 e!746125)))

(assert (=> d!332391 e!746124))

(assert (= b!1164580 b!1164581))

(assert (= b!1164579 b!1164580))

(assert (= (and d!332391 ((_ is Cons!11474) (rules!9540 thiss!10527))) b!1164579))

(assert (=> b!1164581 (< (dynLambda!5055 order!7017 (toValue!3098 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47715))))

(assert (=> b!1164581 (< (dynLambda!5057 order!7021 (toChars!2957 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47715))))

(assert (=> d!332391 true))

(declare-fun lt!398217 () Bool)

(assert (=> d!332391 (= lt!398217 (forall!3004 (t!110135 lt!397617) lambda!47715))))

(declare-fun e!746122 () Bool)

(assert (=> d!332391 (= lt!398217 e!746122)))

(declare-fun res!525683 () Bool)

(assert (=> d!332391 (=> res!525683 e!746122)))

(assert (=> d!332391 (= res!525683 (not ((_ is Cons!11473) (t!110135 lt!397617))))))

(assert (=> d!332391 (not (isEmpty!6991 (rules!9540 thiss!10527)))))

(assert (=> d!332391 (= (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) (t!110135 lt!397617)) lt!398217)))

(declare-fun b!1164577 () Bool)

(declare-fun e!746123 () Bool)

(assert (=> b!1164577 (= e!746122 e!746123)))

(declare-fun res!525684 () Bool)

(assert (=> b!1164577 (=> (not res!525684) (not e!746123))))

(assert (=> b!1164577 (= res!525684 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 (t!110135 lt!397617))))))

(declare-fun b!1164578 () Bool)

(assert (=> b!1164578 (= e!746123 (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) (t!110135 (t!110135 lt!397617))))))

(assert (= (and d!332391 (not res!525683)) b!1164577))

(assert (= (and b!1164577 res!525684) b!1164578))

(declare-fun m!1334229 () Bool)

(assert (=> d!332391 m!1334229))

(assert (=> d!332391 m!1333357))

(declare-fun m!1334231 () Bool)

(assert (=> b!1164577 m!1334231))

(declare-fun m!1334233 () Bool)

(assert (=> b!1164578 m!1334233))

(assert (=> b!1163977 d!332391))

(declare-fun bs!284065 () Bool)

(declare-fun d!332393 () Bool)

(assert (= bs!284065 (and d!332393 d!332245)))

(declare-fun lambda!47716 () Int)

(assert (=> bs!284065 (= lambda!47716 lambda!47696)))

(declare-fun bs!284066 () Bool)

(assert (= bs!284066 (and d!332393 b!1164110)))

(assert (=> bs!284066 (= lambda!47716 lambda!47685)))

(declare-fun bs!284067 () Bool)

(assert (= bs!284067 (and d!332393 b!1163976)))

(assert (=> bs!284067 (= lambda!47716 lambda!47677)))

(declare-fun bs!284068 () Bool)

(assert (= bs!284068 (and d!332393 d!332391)))

(assert (=> bs!284068 (= lambda!47716 lambda!47715)))

(declare-fun bs!284069 () Bool)

(assert (= bs!284069 (and d!332393 d!332271)))

(assert (=> bs!284069 (= lambda!47716 lambda!47697)))

(declare-fun bs!284070 () Bool)

(assert (= bs!284070 (and d!332393 d!332373)))

(assert (=> bs!284070 (= lambda!47716 lambda!47710)))

(declare-fun bs!284071 () Bool)

(assert (= bs!284071 (and d!332393 d!332329)))

(assert (=> bs!284071 (= lambda!47716 lambda!47703)))

(declare-fun bs!284072 () Bool)

(assert (= bs!284072 (and d!332393 b!1164150)))

(assert (=> bs!284072 (= lambda!47716 lambda!47692)))

(declare-fun bs!284073 () Bool)

(assert (= bs!284073 (and d!332393 d!332287)))

(assert (=> bs!284073 (= lambda!47716 lambda!47702)))

(declare-fun bs!284074 () Bool)

(assert (= bs!284074 (and d!332393 d!332377)))

(assert (=> bs!284074 (= lambda!47716 lambda!47711)))

(declare-fun b!1164585 () Bool)

(declare-fun e!746130 () Bool)

(assert (=> b!1164585 (= e!746130 true)))

(declare-fun b!1164584 () Bool)

(declare-fun e!746129 () Bool)

(assert (=> b!1164584 (= e!746129 e!746130)))

(declare-fun b!1164583 () Bool)

(declare-fun e!746128 () Bool)

(assert (=> b!1164583 (= e!746128 e!746129)))

(assert (=> d!332393 e!746128))

(assert (= b!1164584 b!1164585))

(assert (= b!1164583 b!1164584))

(assert (= (and d!332393 ((_ is Cons!11474) (rules!9540 thiss!10527))) b!1164583))

(assert (=> b!1164585 (< (dynLambda!5055 order!7017 (toValue!3098 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47716))))

(assert (=> b!1164585 (< (dynLambda!5057 order!7021 (toChars!2957 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47716))))

(assert (=> d!332393 true))

(declare-fun e!746127 () Bool)

(assert (=> d!332393 e!746127))

(declare-fun res!525685 () Bool)

(assert (=> d!332393 (=> (not res!525685) (not e!746127))))

(declare-fun lt!398218 () Bool)

(assert (=> d!332393 (= res!525685 (= lt!398218 (forall!3004 (list!4224 (tokens!1610 thiss!10527)) lambda!47716)))))

(assert (=> d!332393 (= lt!398218 (forall!3005 (tokens!1610 thiss!10527) lambda!47716))))

(assert (=> d!332393 (not (isEmpty!6991 (rules!9540 thiss!10527)))))

(assert (=> d!332393 (= (rulesProduceEachTokenIndividually!731 Lexer!1690 (rules!9540 thiss!10527) (tokens!1610 thiss!10527)) lt!398218)))

(declare-fun b!1164582 () Bool)

(assert (=> b!1164582 (= e!746127 (= lt!398218 (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) (list!4224 (tokens!1610 thiss!10527)))))))

(assert (= (and d!332393 res!525685) b!1164582))

(assert (=> d!332393 m!1333041))

(assert (=> d!332393 m!1333041))

(declare-fun m!1334235 () Bool)

(assert (=> d!332393 m!1334235))

(declare-fun m!1334237 () Bool)

(assert (=> d!332393 m!1334237))

(assert (=> d!332393 m!1333357))

(assert (=> b!1164582 m!1333041))

(assert (=> b!1164582 m!1333041))

(declare-fun m!1334239 () Bool)

(assert (=> b!1164582 m!1334239))

(assert (=> b!1163976 d!332393))

(declare-fun bs!284075 () Bool)

(declare-fun d!332395 () Bool)

(assert (= bs!284075 (and d!332395 d!332245)))

(declare-fun lambda!47717 () Int)

(assert (=> bs!284075 (= lambda!47717 lambda!47696)))

(declare-fun bs!284076 () Bool)

(assert (= bs!284076 (and d!332395 b!1164110)))

(assert (=> bs!284076 (= lambda!47717 lambda!47685)))

(declare-fun bs!284077 () Bool)

(assert (= bs!284077 (and d!332395 b!1163976)))

(assert (=> bs!284077 (= lambda!47717 lambda!47677)))

(declare-fun bs!284078 () Bool)

(assert (= bs!284078 (and d!332395 d!332393)))

(assert (=> bs!284078 (= lambda!47717 lambda!47716)))

(declare-fun bs!284079 () Bool)

(assert (= bs!284079 (and d!332395 d!332391)))

(assert (=> bs!284079 (= lambda!47717 lambda!47715)))

(declare-fun bs!284080 () Bool)

(assert (= bs!284080 (and d!332395 d!332271)))

(assert (=> bs!284080 (= lambda!47717 lambda!47697)))

(declare-fun bs!284081 () Bool)

(assert (= bs!284081 (and d!332395 d!332373)))

(assert (=> bs!284081 (= lambda!47717 lambda!47710)))

(declare-fun bs!284082 () Bool)

(assert (= bs!284082 (and d!332395 d!332329)))

(assert (=> bs!284082 (= lambda!47717 lambda!47703)))

(declare-fun bs!284083 () Bool)

(assert (= bs!284083 (and d!332395 b!1164150)))

(assert (=> bs!284083 (= lambda!47717 lambda!47692)))

(declare-fun bs!284084 () Bool)

(assert (= bs!284084 (and d!332395 d!332287)))

(assert (=> bs!284084 (= lambda!47717 lambda!47702)))

(declare-fun bs!284085 () Bool)

(assert (= bs!284085 (and d!332395 d!332377)))

(assert (=> bs!284085 (= lambda!47717 lambda!47711)))

(declare-fun b!1164590 () Bool)

(declare-fun e!746135 () Bool)

(assert (=> b!1164590 (= e!746135 true)))

(declare-fun b!1164589 () Bool)

(declare-fun e!746134 () Bool)

(assert (=> b!1164589 (= e!746134 e!746135)))

(declare-fun b!1164588 () Bool)

(declare-fun e!746133 () Bool)

(assert (=> b!1164588 (= e!746133 e!746134)))

(assert (=> d!332395 e!746133))

(assert (= b!1164589 b!1164590))

(assert (= b!1164588 b!1164589))

(assert (= (and d!332395 ((_ is Cons!11474) (rules!9540 thiss!10527))) b!1164588))

(assert (=> b!1164590 (< (dynLambda!5055 order!7017 (toValue!3098 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47717))))

(assert (=> b!1164590 (< (dynLambda!5057 order!7021 (toChars!2957 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47717))))

(assert (=> d!332395 true))

(declare-fun lt!398219 () Bool)

(assert (=> d!332395 (= lt!398219 (forall!3004 lt!397637 lambda!47717))))

(declare-fun e!746131 () Bool)

(assert (=> d!332395 (= lt!398219 e!746131)))

(declare-fun res!525686 () Bool)

(assert (=> d!332395 (=> res!525686 e!746131)))

(assert (=> d!332395 (= res!525686 (not ((_ is Cons!11473) lt!397637)))))

(assert (=> d!332395 (not (isEmpty!6991 (rules!9540 thiss!10527)))))

(assert (=> d!332395 (= (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) lt!397637) lt!398219)))

(declare-fun b!1164586 () Bool)

(declare-fun e!746132 () Bool)

(assert (=> b!1164586 (= e!746131 e!746132)))

(declare-fun res!525687 () Bool)

(assert (=> b!1164586 (=> (not res!525687) (not e!746132))))

(assert (=> b!1164586 (= res!525687 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 lt!397637)))))

(declare-fun b!1164587 () Bool)

(assert (=> b!1164587 (= e!746132 (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) (t!110135 lt!397637)))))

(assert (= (and d!332395 (not res!525686)) b!1164586))

(assert (= (and b!1164586 res!525687) b!1164587))

(declare-fun m!1334241 () Bool)

(assert (=> d!332395 m!1334241))

(assert (=> d!332395 m!1333357))

(assert (=> b!1164586 m!1333047))

(assert (=> b!1164587 m!1333173))

(assert (=> b!1163976 d!332395))

(declare-fun d!332397 () Bool)

(assert (=> d!332397 (= (list!4224 (tokens!1610 thiss!10527)) (list!4227 (c!194500 (tokens!1610 thiss!10527))))))

(declare-fun bs!284086 () Bool)

(assert (= bs!284086 d!332397))

(declare-fun m!1334243 () Bool)

(assert (=> bs!284086 m!1334243))

(assert (=> b!1163976 d!332397))

(declare-fun d!332399 () Bool)

(declare-fun lt!398220 () Bool)

(assert (=> d!332399 (= lt!398220 (forall!3004 (list!4224 (tokens!1610 thiss!10527)) lambda!47677))))

(assert (=> d!332399 (= lt!398220 (forall!3007 (c!194500 (tokens!1610 thiss!10527)) lambda!47677))))

(assert (=> d!332399 (= (forall!3005 (tokens!1610 thiss!10527) lambda!47677) lt!398220)))

(declare-fun bs!284087 () Bool)

(assert (= bs!284087 d!332399))

(assert (=> bs!284087 m!1333041))

(assert (=> bs!284087 m!1333041))

(declare-fun m!1334245 () Bool)

(assert (=> bs!284087 m!1334245))

(declare-fun m!1334247 () Bool)

(assert (=> bs!284087 m!1334247))

(assert (=> b!1163976 d!332399))

(declare-fun d!332401 () Bool)

(declare-fun lt!398222 () Bool)

(declare-fun e!746137 () Bool)

(assert (=> d!332401 (= lt!398222 e!746137)))

(declare-fun res!525689 () Bool)

(assert (=> d!332401 (=> (not res!525689) (not e!746137))))

(assert (=> d!332401 (= res!525689 (= (list!4224 (_1!6854 (lex!700 Lexer!1690 (rules!9540 thiss!10527) (print!637 Lexer!1690 (singletonSeq!662 (h!16874 lt!397617)))))) (list!4224 (singletonSeq!662 (h!16874 lt!397617)))))))

(declare-fun e!746136 () Bool)

(assert (=> d!332401 (= lt!398222 e!746136)))

(declare-fun res!525690 () Bool)

(assert (=> d!332401 (=> (not res!525690) (not e!746136))))

(declare-fun lt!398221 () tuple2!12014)

(assert (=> d!332401 (= res!525690 (= (size!9030 (_1!6854 lt!398221)) 1))))

(assert (=> d!332401 (= lt!398221 (lex!700 Lexer!1690 (rules!9540 thiss!10527) (print!637 Lexer!1690 (singletonSeq!662 (h!16874 lt!397617)))))))

(assert (=> d!332401 (not (isEmpty!6991 (rules!9540 thiss!10527)))))

(assert (=> d!332401 (= (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 lt!397617)) lt!398222)))

(declare-fun b!1164591 () Bool)

(declare-fun res!525688 () Bool)

(assert (=> b!1164591 (=> (not res!525688) (not e!746136))))

(assert (=> b!1164591 (= res!525688 (= (apply!2469 (_1!6854 lt!398221) 0) (h!16874 lt!397617)))))

(declare-fun b!1164592 () Bool)

(assert (=> b!1164592 (= e!746136 (isEmpty!6994 (_2!6854 lt!398221)))))

(declare-fun b!1164593 () Bool)

(assert (=> b!1164593 (= e!746137 (isEmpty!6994 (_2!6854 (lex!700 Lexer!1690 (rules!9540 thiss!10527) (print!637 Lexer!1690 (singletonSeq!662 (h!16874 lt!397617)))))))))

(assert (= (and d!332401 res!525690) b!1164591))

(assert (= (and b!1164591 res!525688) b!1164592))

(assert (= (and d!332401 res!525689) b!1164593))

(declare-fun m!1334249 () Bool)

(assert (=> d!332401 m!1334249))

(declare-fun m!1334251 () Bool)

(assert (=> d!332401 m!1334251))

(declare-fun m!1334253 () Bool)

(assert (=> d!332401 m!1334253))

(declare-fun m!1334255 () Bool)

(assert (=> d!332401 m!1334255))

(assert (=> d!332401 m!1334253))

(declare-fun m!1334257 () Bool)

(assert (=> d!332401 m!1334257))

(assert (=> d!332401 m!1334251))

(declare-fun m!1334259 () Bool)

(assert (=> d!332401 m!1334259))

(assert (=> d!332401 m!1333357))

(assert (=> d!332401 m!1334251))

(declare-fun m!1334261 () Bool)

(assert (=> b!1164591 m!1334261))

(declare-fun m!1334263 () Bool)

(assert (=> b!1164592 m!1334263))

(assert (=> b!1164593 m!1334251))

(assert (=> b!1164593 m!1334251))

(assert (=> b!1164593 m!1334253))

(assert (=> b!1164593 m!1334253))

(assert (=> b!1164593 m!1334257))

(declare-fun m!1334265 () Bool)

(assert (=> b!1164593 m!1334265))

(assert (=> b!1163980 d!332401))

(assert (=> b!1163979 d!332307))

(declare-fun bs!284088 () Bool)

(declare-fun d!332403 () Bool)

(assert (= bs!284088 (and d!332403 d!332245)))

(declare-fun lambda!47718 () Int)

(assert (=> bs!284088 (= lambda!47718 lambda!47696)))

(declare-fun bs!284089 () Bool)

(assert (= bs!284089 (and d!332403 b!1164110)))

(assert (=> bs!284089 (= lambda!47718 lambda!47685)))

(declare-fun bs!284090 () Bool)

(assert (= bs!284090 (and d!332403 b!1163976)))

(assert (=> bs!284090 (= lambda!47718 lambda!47677)))

(declare-fun bs!284091 () Bool)

(assert (= bs!284091 (and d!332403 d!332393)))

(assert (=> bs!284091 (= lambda!47718 lambda!47716)))

(declare-fun bs!284092 () Bool)

(assert (= bs!284092 (and d!332403 d!332391)))

(assert (=> bs!284092 (= lambda!47718 lambda!47715)))

(declare-fun bs!284093 () Bool)

(assert (= bs!284093 (and d!332403 d!332271)))

(assert (=> bs!284093 (= lambda!47718 lambda!47697)))

(declare-fun bs!284094 () Bool)

(assert (= bs!284094 (and d!332403 d!332329)))

(assert (=> bs!284094 (= lambda!47718 lambda!47703)))

(declare-fun bs!284095 () Bool)

(assert (= bs!284095 (and d!332403 b!1164150)))

(assert (=> bs!284095 (= lambda!47718 lambda!47692)))

(declare-fun bs!284096 () Bool)

(assert (= bs!284096 (and d!332403 d!332287)))

(assert (=> bs!284096 (= lambda!47718 lambda!47702)))

(declare-fun bs!284097 () Bool)

(assert (= bs!284097 (and d!332403 d!332377)))

(assert (=> bs!284097 (= lambda!47718 lambda!47711)))

(declare-fun bs!284098 () Bool)

(assert (= bs!284098 (and d!332403 d!332373)))

(assert (=> bs!284098 (= lambda!47718 lambda!47710)))

(declare-fun bs!284099 () Bool)

(assert (= bs!284099 (and d!332403 d!332395)))

(assert (=> bs!284099 (= lambda!47718 lambda!47717)))

(declare-fun b!1164598 () Bool)

(declare-fun e!746142 () Bool)

(assert (=> b!1164598 (= e!746142 true)))

(declare-fun b!1164597 () Bool)

(declare-fun e!746141 () Bool)

(assert (=> b!1164597 (= e!746141 e!746142)))

(declare-fun b!1164596 () Bool)

(declare-fun e!746140 () Bool)

(assert (=> b!1164596 (= e!746140 e!746141)))

(assert (=> d!332403 e!746140))

(assert (= b!1164597 b!1164598))

(assert (= b!1164596 b!1164597))

(assert (= (and d!332403 ((_ is Cons!11474) (rules!9540 thiss!10527))) b!1164596))

(assert (=> b!1164598 (< (dynLambda!5055 order!7017 (toValue!3098 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47718))))

(assert (=> b!1164598 (< (dynLambda!5057 order!7021 (toChars!2957 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47718))))

(assert (=> d!332403 true))

(declare-fun lt!398223 () Bool)

(assert (=> d!332403 (= lt!398223 (forall!3004 (t!110135 lt!397624) lambda!47718))))

(declare-fun e!746138 () Bool)

(assert (=> d!332403 (= lt!398223 e!746138)))

(declare-fun res!525691 () Bool)

(assert (=> d!332403 (=> res!525691 e!746138)))

(assert (=> d!332403 (= res!525691 (not ((_ is Cons!11473) (t!110135 lt!397624))))))

(assert (=> d!332403 (not (isEmpty!6991 (rules!9540 thiss!10527)))))

(assert (=> d!332403 (= (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) (t!110135 lt!397624)) lt!398223)))

(declare-fun b!1164594 () Bool)

(declare-fun e!746139 () Bool)

(assert (=> b!1164594 (= e!746138 e!746139)))

(declare-fun res!525692 () Bool)

(assert (=> b!1164594 (=> (not res!525692) (not e!746139))))

(assert (=> b!1164594 (= res!525692 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 (t!110135 lt!397624))))))

(declare-fun b!1164595 () Bool)

(assert (=> b!1164595 (= e!746139 (rulesProduceEachTokenIndividuallyList!560 Lexer!1690 (rules!9540 thiss!10527) (t!110135 (t!110135 lt!397624))))))

(assert (= (and d!332403 (not res!525691)) b!1164594))

(assert (= (and b!1164594 res!525692) b!1164595))

(declare-fun m!1334267 () Bool)

(assert (=> d!332403 m!1334267))

(assert (=> d!332403 m!1333357))

(declare-fun m!1334269 () Bool)

(assert (=> b!1164594 m!1334269))

(declare-fun m!1334271 () Bool)

(assert (=> b!1164595 m!1334271))

(assert (=> b!1163972 d!332403))

(declare-fun d!332405 () Bool)

(assert (=> d!332405 (= (head!2100 (drop!479 lt!397637 0)) (apply!2470 lt!397637 0))))

(declare-fun lt!398226 () Unit!17539)

(declare-fun choose!7509 (List!11497 Int) Unit!17539)

(assert (=> d!332405 (= lt!398226 (choose!7509 lt!397637 0))))

(declare-fun e!746145 () Bool)

(assert (=> d!332405 e!746145))

(declare-fun res!525695 () Bool)

(assert (=> d!332405 (=> (not res!525695) (not e!746145))))

(assert (=> d!332405 (= res!525695 (>= 0 0))))

(assert (=> d!332405 (= (lemmaDropApply!369 lt!397637 0) lt!398226)))

(declare-fun b!1164601 () Bool)

(assert (=> b!1164601 (= e!746145 (< 0 (size!9036 lt!397637)))))

(assert (= (and d!332405 res!525695) b!1164601))

(assert (=> d!332405 m!1333085))

(assert (=> d!332405 m!1333085))

(declare-fun m!1334273 () Bool)

(assert (=> d!332405 m!1334273))

(assert (=> d!332405 m!1333103))

(declare-fun m!1334275 () Bool)

(assert (=> d!332405 m!1334275))

(assert (=> b!1164601 m!1333641))

(assert (=> b!1163971 d!332405))

(declare-fun d!332407 () Bool)

(assert (=> d!332407 (= (head!2100 (drop!479 lt!397637 1)) (apply!2470 lt!397637 1))))

(declare-fun lt!398227 () Unit!17539)

(assert (=> d!332407 (= lt!398227 (choose!7509 lt!397637 1))))

(declare-fun e!746146 () Bool)

(assert (=> d!332407 e!746146))

(declare-fun res!525696 () Bool)

(assert (=> d!332407 (=> (not res!525696) (not e!746146))))

(assert (=> d!332407 (= res!525696 (>= 1 0))))

(assert (=> d!332407 (= (lemmaDropApply!369 lt!397637 1) lt!398227)))

(declare-fun b!1164602 () Bool)

(assert (=> b!1164602 (= e!746146 (< 1 (size!9036 lt!397637)))))

(assert (= (and d!332407 res!525696) b!1164602))

(assert (=> d!332407 m!1333091))

(assert (=> d!332407 m!1333091))

(declare-fun m!1334277 () Bool)

(assert (=> d!332407 m!1334277))

(assert (=> d!332407 m!1333087))

(declare-fun m!1334279 () Bool)

(assert (=> d!332407 m!1334279))

(assert (=> b!1164602 m!1333641))

(assert (=> b!1163971 d!332407))

(declare-fun d!332409 () Bool)

(declare-fun lt!398230 () Token!3656)

(declare-fun contains!1992 (List!11497 Token!3656) Bool)

(assert (=> d!332409 (contains!1992 lt!397637 lt!398230)))

(declare-fun e!746151 () Token!3656)

(assert (=> d!332409 (= lt!398230 e!746151)))

(declare-fun c!194560 () Bool)

(assert (=> d!332409 (= c!194560 (= 1 0))))

(declare-fun e!746152 () Bool)

(assert (=> d!332409 e!746152))

(declare-fun res!525699 () Bool)

(assert (=> d!332409 (=> (not res!525699) (not e!746152))))

(assert (=> d!332409 (= res!525699 (<= 0 1))))

(assert (=> d!332409 (= (apply!2470 lt!397637 1) lt!398230)))

(declare-fun b!1164609 () Bool)

(assert (=> b!1164609 (= e!746152 (< 1 (size!9036 lt!397637)))))

(declare-fun b!1164610 () Bool)

(assert (=> b!1164610 (= e!746151 (head!2100 lt!397637))))

(declare-fun b!1164611 () Bool)

(assert (=> b!1164611 (= e!746151 (apply!2470 (tail!1684 lt!397637) (- 1 1)))))

(assert (= (and d!332409 res!525699) b!1164609))

(assert (= (and d!332409 c!194560) b!1164610))

(assert (= (and d!332409 (not c!194560)) b!1164611))

(declare-fun m!1334281 () Bool)

(assert (=> d!332409 m!1334281))

(assert (=> b!1164609 m!1333641))

(declare-fun m!1334283 () Bool)

(assert (=> b!1164610 m!1334283))

(declare-fun m!1334285 () Bool)

(assert (=> b!1164611 m!1334285))

(assert (=> b!1164611 m!1334285))

(declare-fun m!1334287 () Bool)

(assert (=> b!1164611 m!1334287))

(assert (=> b!1163971 d!332409))

(declare-fun bm!82147 () Bool)

(declare-fun call!82152 () Int)

(assert (=> bm!82147 (= call!82152 (size!9036 lt!397637))))

(declare-fun b!1164612 () Bool)

(declare-fun e!746153 () List!11497)

(assert (=> b!1164612 (= e!746153 lt!397637)))

(declare-fun b!1164613 () Bool)

(declare-fun e!746157 () Int)

(assert (=> b!1164613 (= e!746157 0)))

(declare-fun b!1164614 () Bool)

(assert (=> b!1164614 (= e!746153 (drop!479 (t!110135 lt!397637) (- 1 1)))))

(declare-fun b!1164615 () Bool)

(declare-fun e!746156 () Int)

(assert (=> b!1164615 (= e!746156 e!746157)))

(declare-fun c!194561 () Bool)

(assert (=> b!1164615 (= c!194561 (>= 1 call!82152))))

(declare-fun d!332411 () Bool)

(declare-fun e!746155 () Bool)

(assert (=> d!332411 e!746155))

(declare-fun res!525700 () Bool)

(assert (=> d!332411 (=> (not res!525700) (not e!746155))))

(declare-fun lt!398231 () List!11497)

(assert (=> d!332411 (= res!525700 (= ((_ map implies) (content!1605 lt!398231) (content!1605 lt!397637)) ((as const (InoxSet Token!3656)) true)))))

(declare-fun e!746154 () List!11497)

(assert (=> d!332411 (= lt!398231 e!746154)))

(declare-fun c!194564 () Bool)

(assert (=> d!332411 (= c!194564 ((_ is Nil!11473) lt!397637))))

(assert (=> d!332411 (= (drop!479 lt!397637 1) lt!398231)))

(declare-fun b!1164616 () Bool)

(assert (=> b!1164616 (= e!746156 call!82152)))

(declare-fun b!1164617 () Bool)

(assert (=> b!1164617 (= e!746154 Nil!11473)))

(declare-fun b!1164618 () Bool)

(assert (=> b!1164618 (= e!746154 e!746153)))

(declare-fun c!194562 () Bool)

(assert (=> b!1164618 (= c!194562 (<= 1 0))))

(declare-fun b!1164619 () Bool)

(assert (=> b!1164619 (= e!746155 (= (size!9036 lt!398231) e!746156))))

(declare-fun c!194563 () Bool)

(assert (=> b!1164619 (= c!194563 (<= 1 0))))

(declare-fun b!1164620 () Bool)

(assert (=> b!1164620 (= e!746157 (- call!82152 1))))

(assert (= (and d!332411 c!194564) b!1164617))

(assert (= (and d!332411 (not c!194564)) b!1164618))

(assert (= (and b!1164618 c!194562) b!1164612))

(assert (= (and b!1164618 (not c!194562)) b!1164614))

(assert (= (and d!332411 res!525700) b!1164619))

(assert (= (and b!1164619 c!194563) b!1164616))

(assert (= (and b!1164619 (not c!194563)) b!1164615))

(assert (= (and b!1164615 c!194561) b!1164613))

(assert (= (and b!1164615 (not c!194561)) b!1164620))

(assert (= (or b!1164616 b!1164615 b!1164620) bm!82147))

(assert (=> bm!82147 m!1333641))

(declare-fun m!1334289 () Bool)

(assert (=> b!1164614 m!1334289))

(declare-fun m!1334291 () Bool)

(assert (=> d!332411 m!1334291))

(assert (=> d!332411 m!1333647))

(declare-fun m!1334293 () Bool)

(assert (=> b!1164619 m!1334293))

(assert (=> b!1163971 d!332411))

(declare-fun d!332413 () Bool)

(declare-fun lt!398233 () Bool)

(declare-fun e!746159 () Bool)

(assert (=> d!332413 (= lt!398233 e!746159)))

(declare-fun res!525702 () Bool)

(assert (=> d!332413 (=> (not res!525702) (not e!746159))))

(assert (=> d!332413 (= res!525702 (= (list!4224 (_1!6854 (lex!700 Lexer!1690 (rules!9540 thiss!10527) (print!637 Lexer!1690 (singletonSeq!662 lt!397621))))) (list!4224 (singletonSeq!662 lt!397621))))))

(declare-fun e!746158 () Bool)

(assert (=> d!332413 (= lt!398233 e!746158)))

(declare-fun res!525703 () Bool)

(assert (=> d!332413 (=> (not res!525703) (not e!746158))))

(declare-fun lt!398232 () tuple2!12014)

(assert (=> d!332413 (= res!525703 (= (size!9030 (_1!6854 lt!398232)) 1))))

(assert (=> d!332413 (= lt!398232 (lex!700 Lexer!1690 (rules!9540 thiss!10527) (print!637 Lexer!1690 (singletonSeq!662 lt!397621))))))

(assert (=> d!332413 (not (isEmpty!6991 (rules!9540 thiss!10527)))))

(assert (=> d!332413 (= (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) lt!397621) lt!398233)))

(declare-fun b!1164621 () Bool)

(declare-fun res!525701 () Bool)

(assert (=> b!1164621 (=> (not res!525701) (not e!746158))))

(assert (=> b!1164621 (= res!525701 (= (apply!2469 (_1!6854 lt!398232) 0) lt!397621))))

(declare-fun b!1164622 () Bool)

(assert (=> b!1164622 (= e!746158 (isEmpty!6994 (_2!6854 lt!398232)))))

(declare-fun b!1164623 () Bool)

(assert (=> b!1164623 (= e!746159 (isEmpty!6994 (_2!6854 (lex!700 Lexer!1690 (rules!9540 thiss!10527) (print!637 Lexer!1690 (singletonSeq!662 lt!397621))))))))

(assert (= (and d!332413 res!525703) b!1164621))

(assert (= (and b!1164621 res!525701) b!1164622))

(assert (= (and d!332413 res!525702) b!1164623))

(declare-fun m!1334295 () Bool)

(assert (=> d!332413 m!1334295))

(declare-fun m!1334297 () Bool)

(assert (=> d!332413 m!1334297))

(declare-fun m!1334299 () Bool)

(assert (=> d!332413 m!1334299))

(declare-fun m!1334301 () Bool)

(assert (=> d!332413 m!1334301))

(assert (=> d!332413 m!1334299))

(declare-fun m!1334303 () Bool)

(assert (=> d!332413 m!1334303))

(assert (=> d!332413 m!1334297))

(declare-fun m!1334305 () Bool)

(assert (=> d!332413 m!1334305))

(assert (=> d!332413 m!1333357))

(assert (=> d!332413 m!1334297))

(declare-fun m!1334307 () Bool)

(assert (=> b!1164621 m!1334307))

(declare-fun m!1334309 () Bool)

(assert (=> b!1164622 m!1334309))

(assert (=> b!1164623 m!1334297))

(assert (=> b!1164623 m!1334297))

(assert (=> b!1164623 m!1334299))

(assert (=> b!1164623 m!1334299))

(assert (=> b!1164623 m!1334303))

(declare-fun m!1334311 () Bool)

(assert (=> b!1164623 m!1334311))

(assert (=> b!1163971 d!332413))

(declare-fun d!332415 () Bool)

(assert (=> d!332415 (= (tail!1684 (drop!479 lt!397637 1)) (drop!479 lt!397637 (+ 1 1)))))

(declare-fun lt!398236 () Unit!17539)

(declare-fun choose!7510 (List!11497 Int) Unit!17539)

(assert (=> d!332415 (= lt!398236 (choose!7510 lt!397637 1))))

(declare-fun e!746162 () Bool)

(assert (=> d!332415 e!746162))

(declare-fun res!525706 () Bool)

(assert (=> d!332415 (=> (not res!525706) (not e!746162))))

(assert (=> d!332415 (= res!525706 (>= 1 0))))

(assert (=> d!332415 (= (lemmaDropTail!357 lt!397637 1) lt!398236)))

(declare-fun b!1164626 () Bool)

(assert (=> b!1164626 (= e!746162 (< 1 (size!9036 lt!397637)))))

(assert (= (and d!332415 res!525706) b!1164626))

(assert (=> d!332415 m!1333091))

(assert (=> d!332415 m!1333091))

(declare-fun m!1334313 () Bool)

(assert (=> d!332415 m!1334313))

(declare-fun m!1334315 () Bool)

(assert (=> d!332415 m!1334315))

(declare-fun m!1334317 () Bool)

(assert (=> d!332415 m!1334317))

(assert (=> b!1164626 m!1333641))

(assert (=> b!1163971 d!332415))

(declare-fun d!332417 () Bool)

(assert (=> d!332417 (= (head!2100 lt!397623) (h!16874 lt!397623))))

(assert (=> b!1163971 d!332417))

(declare-fun d!332419 () Bool)

(declare-fun lt!398241 () Token!3656)

(assert (=> d!332419 (= lt!398241 (apply!2470 (list!4224 (tokens!1610 thiss!10527)) 1))))

(declare-fun apply!2473 (Conc!3757 Int) Token!3656)

(assert (=> d!332419 (= lt!398241 (apply!2473 (c!194500 (tokens!1610 thiss!10527)) 1))))

(declare-fun e!746167 () Bool)

(assert (=> d!332419 e!746167))

(declare-fun res!525709 () Bool)

(assert (=> d!332419 (=> (not res!525709) (not e!746167))))

(assert (=> d!332419 (= res!525709 (<= 0 1))))

(assert (=> d!332419 (= (apply!2469 (tokens!1610 thiss!10527) 1) lt!398241)))

(declare-fun b!1164633 () Bool)

(assert (=> b!1164633 (= e!746167 (< 1 (size!9030 (tokens!1610 thiss!10527))))))

(assert (= (and d!332419 res!525709) b!1164633))

(assert (=> d!332419 m!1333041))

(assert (=> d!332419 m!1333041))

(declare-fun m!1334319 () Bool)

(assert (=> d!332419 m!1334319))

(declare-fun m!1334321 () Bool)

(assert (=> d!332419 m!1334321))

(assert (=> b!1164633 m!1333143))

(assert (=> b!1163971 d!332419))

(declare-fun d!332423 () Bool)

(assert (=> d!332423 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) lt!397632)))

(declare-fun lt!398252 () Unit!17539)

(declare-fun choose!7511 (LexerInterface!1692 List!11498 List!11497 Token!3656) Unit!17539)

(assert (=> d!332423 (= lt!398252 (choose!7511 Lexer!1690 (rules!9540 thiss!10527) lt!397637 lt!397632))))

(assert (=> d!332423 (not (isEmpty!6991 (rules!9540 thiss!10527)))))

(assert (=> d!332423 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!287 Lexer!1690 (rules!9540 thiss!10527) lt!397637 lt!397632) lt!398252)))

(declare-fun bs!284139 () Bool)

(assert (= bs!284139 d!332423))

(assert (=> bs!284139 m!1333089))

(declare-fun m!1334365 () Bool)

(assert (=> bs!284139 m!1334365))

(assert (=> bs!284139 m!1333357))

(assert (=> b!1163971 d!332423))

(declare-fun d!332441 () Bool)

(assert (=> d!332441 (= (tail!1684 (drop!479 lt!397637 0)) (drop!479 lt!397637 (+ 0 1)))))

(declare-fun lt!398253 () Unit!17539)

(assert (=> d!332441 (= lt!398253 (choose!7510 lt!397637 0))))

(declare-fun e!746222 () Bool)

(assert (=> d!332441 e!746222))

(declare-fun res!525718 () Bool)

(assert (=> d!332441 (=> (not res!525718) (not e!746222))))

(assert (=> d!332441 (= res!525718 (>= 0 0))))

(assert (=> d!332441 (= (lemmaDropTail!357 lt!397637 0) lt!398253)))

(declare-fun b!1164706 () Bool)

(assert (=> b!1164706 (= e!746222 (< 0 (size!9036 lt!397637)))))

(assert (= (and d!332441 res!525718) b!1164706))

(assert (=> d!332441 m!1333085))

(assert (=> d!332441 m!1333085))

(declare-fun m!1334367 () Bool)

(assert (=> d!332441 m!1334367))

(declare-fun m!1334369 () Bool)

(assert (=> d!332441 m!1334369))

(declare-fun m!1334371 () Bool)

(assert (=> d!332441 m!1334371))

(assert (=> b!1164706 m!1333641))

(assert (=> b!1163971 d!332441))

(declare-fun d!332443 () Bool)

(declare-fun lt!398255 () Bool)

(declare-fun e!746224 () Bool)

(assert (=> d!332443 (= lt!398255 e!746224)))

(declare-fun res!525720 () Bool)

(assert (=> d!332443 (=> (not res!525720) (not e!746224))))

(assert (=> d!332443 (= res!525720 (= (list!4224 (_1!6854 (lex!700 Lexer!1690 (rules!9540 thiss!10527) (print!637 Lexer!1690 (singletonSeq!662 lt!397632))))) (list!4224 (singletonSeq!662 lt!397632))))))

(declare-fun e!746223 () Bool)

(assert (=> d!332443 (= lt!398255 e!746223)))

(declare-fun res!525721 () Bool)

(assert (=> d!332443 (=> (not res!525721) (not e!746223))))

(declare-fun lt!398254 () tuple2!12014)

(assert (=> d!332443 (= res!525721 (= (size!9030 (_1!6854 lt!398254)) 1))))

(assert (=> d!332443 (= lt!398254 (lex!700 Lexer!1690 (rules!9540 thiss!10527) (print!637 Lexer!1690 (singletonSeq!662 lt!397632))))))

(assert (=> d!332443 (not (isEmpty!6991 (rules!9540 thiss!10527)))))

(assert (=> d!332443 (= (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) lt!397632) lt!398255)))

(declare-fun b!1164707 () Bool)

(declare-fun res!525719 () Bool)

(assert (=> b!1164707 (=> (not res!525719) (not e!746223))))

(assert (=> b!1164707 (= res!525719 (= (apply!2469 (_1!6854 lt!398254) 0) lt!397632))))

(declare-fun b!1164708 () Bool)

(assert (=> b!1164708 (= e!746223 (isEmpty!6994 (_2!6854 lt!398254)))))

(declare-fun b!1164709 () Bool)

(assert (=> b!1164709 (= e!746224 (isEmpty!6994 (_2!6854 (lex!700 Lexer!1690 (rules!9540 thiss!10527) (print!637 Lexer!1690 (singletonSeq!662 lt!397632))))))))

(assert (= (and d!332443 res!525721) b!1164707))

(assert (= (and b!1164707 res!525719) b!1164708))

(assert (= (and d!332443 res!525720) b!1164709))

(declare-fun m!1334373 () Bool)

(assert (=> d!332443 m!1334373))

(declare-fun m!1334375 () Bool)

(assert (=> d!332443 m!1334375))

(declare-fun m!1334377 () Bool)

(assert (=> d!332443 m!1334377))

(declare-fun m!1334379 () Bool)

(assert (=> d!332443 m!1334379))

(assert (=> d!332443 m!1334377))

(declare-fun m!1334381 () Bool)

(assert (=> d!332443 m!1334381))

(assert (=> d!332443 m!1334375))

(declare-fun m!1334383 () Bool)

(assert (=> d!332443 m!1334383))

(assert (=> d!332443 m!1333357))

(assert (=> d!332443 m!1334375))

(declare-fun m!1334385 () Bool)

(assert (=> b!1164707 m!1334385))

(declare-fun m!1334387 () Bool)

(assert (=> b!1164708 m!1334387))

(assert (=> b!1164709 m!1334375))

(assert (=> b!1164709 m!1334375))

(assert (=> b!1164709 m!1334377))

(assert (=> b!1164709 m!1334377))

(assert (=> b!1164709 m!1334381))

(declare-fun m!1334389 () Bool)

(assert (=> b!1164709 m!1334389))

(assert (=> b!1163971 d!332443))

(declare-fun d!332445 () Bool)

(assert (=> d!332445 (= (tail!1684 lt!397623) (t!110135 lt!397623))))

(assert (=> b!1163971 d!332445))

(declare-fun bm!82148 () Bool)

(declare-fun call!82153 () Int)

(assert (=> bm!82148 (= call!82153 (size!9036 lt!397637))))

(declare-fun b!1164710 () Bool)

(declare-fun e!746225 () List!11497)

(assert (=> b!1164710 (= e!746225 lt!397637)))

(declare-fun b!1164711 () Bool)

(declare-fun e!746229 () Int)

(assert (=> b!1164711 (= e!746229 0)))

(declare-fun b!1164712 () Bool)

(assert (=> b!1164712 (= e!746225 (drop!479 (t!110135 lt!397637) (- 2 1)))))

(declare-fun b!1164713 () Bool)

(declare-fun e!746228 () Int)

(assert (=> b!1164713 (= e!746228 e!746229)))

(declare-fun c!194574 () Bool)

(assert (=> b!1164713 (= c!194574 (>= 2 call!82153))))

(declare-fun d!332447 () Bool)

(declare-fun e!746227 () Bool)

(assert (=> d!332447 e!746227))

(declare-fun res!525722 () Bool)

(assert (=> d!332447 (=> (not res!525722) (not e!746227))))

(declare-fun lt!398256 () List!11497)

(assert (=> d!332447 (= res!525722 (= ((_ map implies) (content!1605 lt!398256) (content!1605 lt!397637)) ((as const (InoxSet Token!3656)) true)))))

(declare-fun e!746226 () List!11497)

(assert (=> d!332447 (= lt!398256 e!746226)))

(declare-fun c!194577 () Bool)

(assert (=> d!332447 (= c!194577 ((_ is Nil!11473) lt!397637))))

(assert (=> d!332447 (= (drop!479 lt!397637 2) lt!398256)))

(declare-fun b!1164714 () Bool)

(assert (=> b!1164714 (= e!746228 call!82153)))

(declare-fun b!1164715 () Bool)

(assert (=> b!1164715 (= e!746226 Nil!11473)))

(declare-fun b!1164716 () Bool)

(assert (=> b!1164716 (= e!746226 e!746225)))

(declare-fun c!194575 () Bool)

(assert (=> b!1164716 (= c!194575 (<= 2 0))))

(declare-fun b!1164717 () Bool)

(assert (=> b!1164717 (= e!746227 (= (size!9036 lt!398256) e!746228))))

(declare-fun c!194576 () Bool)

(assert (=> b!1164717 (= c!194576 (<= 2 0))))

(declare-fun b!1164718 () Bool)

(assert (=> b!1164718 (= e!746229 (- call!82153 2))))

(assert (= (and d!332447 c!194577) b!1164715))

(assert (= (and d!332447 (not c!194577)) b!1164716))

(assert (= (and b!1164716 c!194575) b!1164710))

(assert (= (and b!1164716 (not c!194575)) b!1164712))

(assert (= (and d!332447 res!525722) b!1164717))

(assert (= (and b!1164717 c!194576) b!1164714))

(assert (= (and b!1164717 (not c!194576)) b!1164713))

(assert (= (and b!1164713 c!194574) b!1164711))

(assert (= (and b!1164713 (not c!194574)) b!1164718))

(assert (= (or b!1164714 b!1164713 b!1164718) bm!82148))

(assert (=> bm!82148 m!1333641))

(declare-fun m!1334391 () Bool)

(assert (=> b!1164712 m!1334391))

(declare-fun m!1334393 () Bool)

(assert (=> d!332447 m!1334393))

(assert (=> d!332447 m!1333647))

(declare-fun m!1334395 () Bool)

(assert (=> b!1164717 m!1334395))

(assert (=> b!1163971 d!332447))

(declare-fun d!332449 () Bool)

(declare-fun lt!398257 () Token!3656)

(assert (=> d!332449 (contains!1992 lt!397637 lt!398257)))

(declare-fun e!746230 () Token!3656)

(assert (=> d!332449 (= lt!398257 e!746230)))

(declare-fun c!194578 () Bool)

(assert (=> d!332449 (= c!194578 (= 0 0))))

(declare-fun e!746231 () Bool)

(assert (=> d!332449 e!746231))

(declare-fun res!525723 () Bool)

(assert (=> d!332449 (=> (not res!525723) (not e!746231))))

(assert (=> d!332449 (= res!525723 (<= 0 0))))

(assert (=> d!332449 (= (apply!2470 lt!397637 0) lt!398257)))

(declare-fun b!1164719 () Bool)

(assert (=> b!1164719 (= e!746231 (< 0 (size!9036 lt!397637)))))

(declare-fun b!1164720 () Bool)

(assert (=> b!1164720 (= e!746230 (head!2100 lt!397637))))

(declare-fun b!1164721 () Bool)

(assert (=> b!1164721 (= e!746230 (apply!2470 (tail!1684 lt!397637) (- 0 1)))))

(assert (= (and d!332449 res!525723) b!1164719))

(assert (= (and d!332449 c!194578) b!1164720))

(assert (= (and d!332449 (not c!194578)) b!1164721))

(declare-fun m!1334397 () Bool)

(assert (=> d!332449 m!1334397))

(assert (=> b!1164719 m!1333641))

(assert (=> b!1164720 m!1334283))

(assert (=> b!1164721 m!1334285))

(assert (=> b!1164721 m!1334285))

(declare-fun m!1334399 () Bool)

(assert (=> b!1164721 m!1334399))

(assert (=> b!1163971 d!332449))

(declare-fun d!332451 () Bool)

(assert (=> d!332451 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) lt!397621)))

(declare-fun lt!398258 () Unit!17539)

(assert (=> d!332451 (= lt!398258 (choose!7511 Lexer!1690 (rules!9540 thiss!10527) lt!397637 lt!397621))))

(assert (=> d!332451 (not (isEmpty!6991 (rules!9540 thiss!10527)))))

(assert (=> d!332451 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!287 Lexer!1690 (rules!9540 thiss!10527) lt!397637 lt!397621) lt!398258)))

(declare-fun bs!284140 () Bool)

(assert (= bs!284140 d!332451))

(assert (=> bs!284140 m!1333113))

(declare-fun m!1334401 () Bool)

(assert (=> bs!284140 m!1334401))

(assert (=> bs!284140 m!1333357))

(assert (=> b!1163971 d!332451))

(declare-fun d!332453 () Bool)

(assert (=> d!332453 (= (tail!1684 lt!397629) (t!110135 lt!397629))))

(assert (=> b!1163971 d!332453))

(declare-fun bm!82149 () Bool)

(declare-fun call!82154 () Int)

(assert (=> bm!82149 (= call!82154 (size!9036 lt!397637))))

(declare-fun b!1164722 () Bool)

(declare-fun e!746232 () List!11497)

(assert (=> b!1164722 (= e!746232 lt!397637)))

(declare-fun b!1164723 () Bool)

(declare-fun e!746236 () Int)

(assert (=> b!1164723 (= e!746236 0)))

(declare-fun b!1164724 () Bool)

(assert (=> b!1164724 (= e!746232 (drop!479 (t!110135 lt!397637) (- 0 1)))))

(declare-fun b!1164725 () Bool)

(declare-fun e!746235 () Int)

(assert (=> b!1164725 (= e!746235 e!746236)))

(declare-fun c!194579 () Bool)

(assert (=> b!1164725 (= c!194579 (>= 0 call!82154))))

(declare-fun d!332455 () Bool)

(declare-fun e!746234 () Bool)

(assert (=> d!332455 e!746234))

(declare-fun res!525724 () Bool)

(assert (=> d!332455 (=> (not res!525724) (not e!746234))))

(declare-fun lt!398259 () List!11497)

(assert (=> d!332455 (= res!525724 (= ((_ map implies) (content!1605 lt!398259) (content!1605 lt!397637)) ((as const (InoxSet Token!3656)) true)))))

(declare-fun e!746233 () List!11497)

(assert (=> d!332455 (= lt!398259 e!746233)))

(declare-fun c!194582 () Bool)

(assert (=> d!332455 (= c!194582 ((_ is Nil!11473) lt!397637))))

(assert (=> d!332455 (= (drop!479 lt!397637 0) lt!398259)))

(declare-fun b!1164726 () Bool)

(assert (=> b!1164726 (= e!746235 call!82154)))

(declare-fun b!1164727 () Bool)

(assert (=> b!1164727 (= e!746233 Nil!11473)))

(declare-fun b!1164728 () Bool)

(assert (=> b!1164728 (= e!746233 e!746232)))

(declare-fun c!194580 () Bool)

(assert (=> b!1164728 (= c!194580 (<= 0 0))))

(declare-fun b!1164729 () Bool)

(assert (=> b!1164729 (= e!746234 (= (size!9036 lt!398259) e!746235))))

(declare-fun c!194581 () Bool)

(assert (=> b!1164729 (= c!194581 (<= 0 0))))

(declare-fun b!1164730 () Bool)

(assert (=> b!1164730 (= e!746236 (- call!82154 0))))

(assert (= (and d!332455 c!194582) b!1164727))

(assert (= (and d!332455 (not c!194582)) b!1164728))

(assert (= (and b!1164728 c!194580) b!1164722))

(assert (= (and b!1164728 (not c!194580)) b!1164724))

(assert (= (and d!332455 res!525724) b!1164729))

(assert (= (and b!1164729 c!194581) b!1164726))

(assert (= (and b!1164729 (not c!194581)) b!1164725))

(assert (= (and b!1164725 c!194579) b!1164723))

(assert (= (and b!1164725 (not c!194579)) b!1164730))

(assert (= (or b!1164726 b!1164725 b!1164730) bm!82149))

(assert (=> bm!82149 m!1333641))

(declare-fun m!1334403 () Bool)

(assert (=> b!1164724 m!1334403))

(declare-fun m!1334405 () Bool)

(assert (=> d!332455 m!1334405))

(assert (=> d!332455 m!1333647))

(declare-fun m!1334407 () Bool)

(assert (=> b!1164729 m!1334407))

(assert (=> b!1163971 d!332455))

(declare-fun d!332457 () Bool)

(declare-fun lt!398260 () Token!3656)

(assert (=> d!332457 (= lt!398260 (apply!2470 (list!4224 (tokens!1610 thiss!10527)) 0))))

(assert (=> d!332457 (= lt!398260 (apply!2473 (c!194500 (tokens!1610 thiss!10527)) 0))))

(declare-fun e!746237 () Bool)

(assert (=> d!332457 e!746237))

(declare-fun res!525725 () Bool)

(assert (=> d!332457 (=> (not res!525725) (not e!746237))))

(assert (=> d!332457 (= res!525725 (<= 0 0))))

(assert (=> d!332457 (= (apply!2469 (tokens!1610 thiss!10527) 0) lt!398260)))

(declare-fun b!1164731 () Bool)

(assert (=> b!1164731 (= e!746237 (< 0 (size!9030 (tokens!1610 thiss!10527))))))

(assert (= (and d!332457 res!525725) b!1164731))

(assert (=> d!332457 m!1333041))

(assert (=> d!332457 m!1333041))

(declare-fun m!1334409 () Bool)

(assert (=> d!332457 m!1334409))

(declare-fun m!1334411 () Bool)

(assert (=> d!332457 m!1334411))

(assert (=> b!1164731 m!1333143))

(assert (=> b!1163971 d!332457))

(declare-fun d!332459 () Bool)

(declare-fun prefixMatchZipperSequence!89 (Regex!3267 BalanceConc!7534) Bool)

(declare-fun rulesRegex!64 (LexerInterface!1692 List!11498) Regex!3267)

(declare-fun ++!2978 (BalanceConc!7534 BalanceConc!7534) BalanceConc!7534)

(declare-fun singletonSeq!663 (C!6852) BalanceConc!7534)

(declare-fun apply!2474 (BalanceConc!7534 Int) C!6852)

(assert (=> d!332459 (= (separableTokensPredicate!128 Lexer!1690 lt!397621 lt!397632 (rules!9540 thiss!10527)) (not (prefixMatchZipperSequence!89 (rulesRegex!64 Lexer!1690 (rules!9540 thiss!10527)) (++!2978 (charsOf!1066 lt!397621) (singletonSeq!663 (apply!2474 (charsOf!1066 lt!397632) 0))))))))

(declare-fun bs!284141 () Bool)

(assert (= bs!284141 d!332459))

(declare-fun m!1334413 () Bool)

(assert (=> bs!284141 m!1334413))

(declare-fun m!1334415 () Bool)

(assert (=> bs!284141 m!1334415))

(declare-fun m!1334417 () Bool)

(assert (=> bs!284141 m!1334417))

(declare-fun m!1334419 () Bool)

(assert (=> bs!284141 m!1334419))

(assert (=> bs!284141 m!1334413))

(assert (=> bs!284141 m!1334419))

(declare-fun m!1334421 () Bool)

(assert (=> bs!284141 m!1334421))

(assert (=> bs!284141 m!1333075))

(assert (=> bs!284141 m!1334415))

(assert (=> bs!284141 m!1334421))

(declare-fun m!1334423 () Bool)

(assert (=> bs!284141 m!1334423))

(assert (=> bs!284141 m!1333075))

(assert (=> bs!284141 m!1334417))

(assert (=> b!1163971 d!332459))

(declare-fun d!332461 () Bool)

(assert (=> d!332461 (= (head!2100 lt!397629) (h!16874 lt!397629))))

(assert (=> b!1163971 d!332461))

(declare-fun d!332463 () Bool)

(declare-fun res!525726 () Bool)

(declare-fun e!746239 () Bool)

(assert (=> d!332463 (=> res!525726 e!746239)))

(assert (=> d!332463 (= res!525726 (or (not ((_ is Cons!11473) lt!397617)) (not ((_ is Cons!11473) (t!110135 lt!397617)))))))

(assert (=> d!332463 (= (tokensListTwoByTwoPredicateSeparableList!104 Lexer!1690 lt!397617 (rules!9540 thiss!10527)) e!746239)))

(declare-fun b!1164732 () Bool)

(declare-fun e!746238 () Bool)

(assert (=> b!1164732 (= e!746239 e!746238)))

(declare-fun res!525727 () Bool)

(assert (=> b!1164732 (=> (not res!525727) (not e!746238))))

(assert (=> b!1164732 (= res!525727 (separableTokensPredicate!128 Lexer!1690 (h!16874 lt!397617) (h!16874 (t!110135 lt!397617)) (rules!9540 thiss!10527)))))

(declare-fun lt!398261 () Unit!17539)

(declare-fun Unit!17570 () Unit!17539)

(assert (=> b!1164732 (= lt!398261 Unit!17570)))

(assert (=> b!1164732 (> (size!9031 (charsOf!1066 (h!16874 (t!110135 lt!397617)))) 0)))

(declare-fun lt!398265 () Unit!17539)

(declare-fun Unit!17571 () Unit!17539)

(assert (=> b!1164732 (= lt!398265 Unit!17571)))

(assert (=> b!1164732 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 (t!110135 lt!397617)))))

(declare-fun lt!398263 () Unit!17539)

(declare-fun Unit!17572 () Unit!17539)

(assert (=> b!1164732 (= lt!398263 Unit!17572)))

(assert (=> b!1164732 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 lt!397617))))

(declare-fun lt!398262 () Unit!17539)

(declare-fun lt!398264 () Unit!17539)

(assert (=> b!1164732 (= lt!398262 lt!398264)))

(assert (=> b!1164732 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 (t!110135 lt!397617)))))

(assert (=> b!1164732 (= lt!398264 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!287 Lexer!1690 (rules!9540 thiss!10527) lt!397617 (h!16874 (t!110135 lt!397617))))))

(declare-fun lt!398267 () Unit!17539)

(declare-fun lt!398266 () Unit!17539)

(assert (=> b!1164732 (= lt!398267 lt!398266)))

(assert (=> b!1164732 (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 lt!397617))))

(assert (=> b!1164732 (= lt!398266 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!287 Lexer!1690 (rules!9540 thiss!10527) lt!397617 (h!16874 lt!397617)))))

(declare-fun b!1164733 () Bool)

(assert (=> b!1164733 (= e!746238 (tokensListTwoByTwoPredicateSeparableList!104 Lexer!1690 (Cons!11473 (h!16874 (t!110135 lt!397617)) (t!110135 (t!110135 lt!397617))) (rules!9540 thiss!10527)))))

(assert (= (and d!332463 (not res!525726)) b!1164732))

(assert (= (and b!1164732 res!525727) b!1164733))

(declare-fun m!1334425 () Bool)

(assert (=> b!1164732 m!1334425))

(declare-fun m!1334427 () Bool)

(assert (=> b!1164732 m!1334427))

(assert (=> b!1164732 m!1334425))

(declare-fun m!1334429 () Bool)

(assert (=> b!1164732 m!1334429))

(assert (=> b!1164732 m!1334231))

(assert (=> b!1164732 m!1333081))

(declare-fun m!1334431 () Bool)

(assert (=> b!1164732 m!1334431))

(declare-fun m!1334433 () Bool)

(assert (=> b!1164732 m!1334433))

(declare-fun m!1334435 () Bool)

(assert (=> b!1164733 m!1334435))

(assert (=> b!1163975 d!332463))

(declare-fun d!332465 () Bool)

(assert (=> d!332465 (= (inv!15094 (tokens!1610 thiss!10527)) (isBalanced!1055 (c!194500 (tokens!1610 thiss!10527))))))

(declare-fun bs!284142 () Bool)

(assert (= bs!284142 d!332465))

(assert (=> bs!284142 m!1333065))

(assert (=> b!1163974 d!332465))

(declare-fun d!332467 () Bool)

(declare-fun lt!398270 () Int)

(assert (=> d!332467 (= lt!398270 (size!9036 (list!4224 (tokens!1610 thiss!10527))))))

(declare-fun size!9039 (Conc!3757) Int)

(assert (=> d!332467 (= lt!398270 (size!9039 (c!194500 (tokens!1610 thiss!10527))))))

(assert (=> d!332467 (= (size!9030 (tokens!1610 thiss!10527)) lt!398270)))

(declare-fun bs!284143 () Bool)

(assert (= bs!284143 d!332467))

(assert (=> bs!284143 m!1333041))

(assert (=> bs!284143 m!1333041))

(declare-fun m!1334437 () Bool)

(assert (=> bs!284143 m!1334437))

(declare-fun m!1334439 () Bool)

(assert (=> bs!284143 m!1334439))

(assert (=> b!1163973 d!332467))

(declare-fun b!1164736 () Bool)

(declare-fun e!746242 () Bool)

(assert (=> b!1164736 (= e!746242 true)))

(declare-fun b!1164735 () Bool)

(declare-fun e!746241 () Bool)

(assert (=> b!1164735 (= e!746241 e!746242)))

(declare-fun b!1164734 () Bool)

(declare-fun e!746240 () Bool)

(assert (=> b!1164734 (= e!746240 e!746241)))

(assert (=> b!1163995 e!746240))

(assert (= b!1164735 b!1164736))

(assert (= b!1164734 b!1164735))

(assert (= (and b!1163995 ((_ is Cons!11474) (rules!9540 thiss!10527))) b!1164734))

(assert (=> b!1164736 (< (dynLambda!5055 order!7017 (toValue!3098 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47677))))

(assert (=> b!1164736 (< (dynLambda!5057 order!7021 (toChars!2957 (transformation!1997 (h!16875 (rules!9540 thiss!10527))))) (dynLambda!5056 order!7019 lambda!47677))))

(declare-fun b!1164745 () Bool)

(declare-fun e!746247 () Bool)

(assert (=> b!1164745 (= e!746247 true)))

(declare-fun b!1164747 () Bool)

(declare-fun e!746248 () Bool)

(assert (=> b!1164747 (= e!746248 true)))

(declare-fun b!1164746 () Bool)

(assert (=> b!1164746 (= e!746247 e!746248)))

(assert (=> b!1163996 e!746247))

(assert (= (and b!1163996 ((_ is Node!3757) (c!194500 (tokens!1610 thiss!10527)))) b!1164745))

(assert (= b!1164746 b!1164747))

(assert (= (and b!1163996 ((_ is Leaf!5766) (c!194500 (tokens!1610 thiss!10527)))) b!1164746))

(declare-fun b!1164758 () Bool)

(declare-fun b_free!27765 () Bool)

(declare-fun b_next!28469 () Bool)

(assert (=> b!1164758 (= b_free!27765 (not b_next!28469))))

(declare-fun tp!334026 () Bool)

(declare-fun b_and!80641 () Bool)

(assert (=> b!1164758 (= tp!334026 b_and!80641)))

(declare-fun b_free!27767 () Bool)

(declare-fun b_next!28471 () Bool)

(assert (=> b!1164758 (= b_free!27767 (not b_next!28471))))

(declare-fun t!110167 () Bool)

(declare-fun tb!65847 () Bool)

(assert (=> (and b!1164758 (= (toChars!2957 (transformation!1997 (h!16875 (rules!9540 thiss!10527)))) (toChars!2957 (transformation!1997 (rule!3418 lt!397632)))) t!110167) tb!65847))

(declare-fun b!1164763 () Bool)

(declare-fun e!746263 () Bool)

(declare-fun tp!334029 () Bool)

(declare-fun inv!15101 (Conc!3756) Bool)

(assert (=> b!1164763 (= e!746263 (and (inv!15101 (c!194499 (dynLambda!5058 (toChars!2957 (transformation!1997 (rule!3418 lt!397632))) (value!64911 lt!397632)))) tp!334029))))

(declare-fun result!78772 () Bool)

(declare-fun inv!15102 (BalanceConc!7534) Bool)

(assert (=> tb!65847 (= result!78772 (and (inv!15102 (dynLambda!5058 (toChars!2957 (transformation!1997 (rule!3418 lt!397632))) (value!64911 lt!397632))) e!746263))))

(assert (= tb!65847 b!1164763))

(declare-fun m!1334441 () Bool)

(assert (=> b!1164763 m!1334441))

(declare-fun m!1334443 () Bool)

(assert (=> tb!65847 m!1334443))

(assert (=> d!332389 t!110167))

(declare-fun b_and!80643 () Bool)

(declare-fun tp!334023 () Bool)

(assert (=> b!1164758 (= tp!334023 (and (=> t!110167 result!78772) b_and!80643))))

(declare-fun e!746260 () Bool)

(assert (=> b!1164758 (= e!746260 (and tp!334026 tp!334023))))

(declare-fun tp!334025 () Bool)

(declare-fun b!1164757 () Bool)

(declare-fun e!746257 () Bool)

(declare-fun inv!15090 (String!13903) Bool)

(declare-fun inv!15103 (TokenValueInjection!3826) Bool)

(assert (=> b!1164757 (= e!746257 (and tp!334025 (inv!15090 (tag!2259 (h!16875 (rules!9540 thiss!10527)))) (inv!15103 (transformation!1997 (h!16875 (rules!9540 thiss!10527)))) e!746260))))

(declare-fun b!1164756 () Bool)

(declare-fun e!746259 () Bool)

(declare-fun tp!334024 () Bool)

(assert (=> b!1164756 (= e!746259 (and e!746257 tp!334024))))

(assert (=> b!1163974 (= tp!333989 e!746259)))

(assert (= b!1164757 b!1164758))

(assert (= b!1164756 b!1164757))

(assert (= (and b!1163974 ((_ is Cons!11474) (rules!9540 thiss!10527))) b!1164756))

(declare-fun m!1334445 () Bool)

(assert (=> b!1164757 m!1334445))

(declare-fun m!1334447 () Bool)

(assert (=> b!1164757 m!1334447))

(declare-fun tp!334037 () Bool)

(declare-fun tp!334038 () Bool)

(declare-fun e!746269 () Bool)

(declare-fun b!1164772 () Bool)

(assert (=> b!1164772 (= e!746269 (and (inv!15096 (left!10033 (c!194500 (tokens!1610 thiss!10527)))) tp!334038 (inv!15096 (right!10363 (c!194500 (tokens!1610 thiss!10527)))) tp!334037))))

(declare-fun b!1164774 () Bool)

(declare-fun e!746268 () Bool)

(declare-fun tp!334036 () Bool)

(assert (=> b!1164774 (= e!746268 tp!334036)))

(declare-fun b!1164773 () Bool)

(declare-fun inv!15104 (IArray!7519) Bool)

(assert (=> b!1164773 (= e!746269 (and (inv!15104 (xs!6462 (c!194500 (tokens!1610 thiss!10527)))) e!746268))))

(assert (=> b!1163984 (= tp!333990 (and (inv!15096 (c!194500 (tokens!1610 thiss!10527))) e!746269))))

(assert (= (and b!1163984 ((_ is Node!3757) (c!194500 (tokens!1610 thiss!10527)))) b!1164772))

(assert (= b!1164773 b!1164774))

(assert (= (and b!1163984 ((_ is Leaf!5766) (c!194500 (tokens!1610 thiss!10527)))) b!1164773))

(declare-fun m!1334449 () Bool)

(assert (=> b!1164772 m!1334449))

(declare-fun m!1334451 () Bool)

(assert (=> b!1164772 m!1334451))

(declare-fun m!1334453 () Bool)

(assert (=> b!1164773 m!1334453))

(assert (=> b!1163984 m!1333073))

(declare-fun b_lambda!34713 () Bool)

(assert (= b_lambda!34693 (or b!1163976 b_lambda!34713)))

(declare-fun bs!284144 () Bool)

(declare-fun d!332469 () Bool)

(assert (= bs!284144 (and d!332469 b!1163976)))

(assert (=> bs!284144 (= (dynLambda!5054 lambda!47677 (h!16874 lt!397618)) (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 lt!397618)))))

(assert (=> bs!284144 m!1333071))

(assert (=> b!1164082 d!332469))

(declare-fun b_lambda!34715 () Bool)

(assert (= b_lambda!34697 (or b!1163976 b_lambda!34715)))

(declare-fun bs!284145 () Bool)

(declare-fun d!332471 () Bool)

(assert (= bs!284145 (and d!332471 b!1163976)))

(assert (=> bs!284145 (= (dynLambda!5054 lambda!47677 (h!16874 lt!397617)) (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 lt!397617)))))

(assert (=> bs!284145 m!1333081))

(assert (=> b!1164344 d!332471))

(declare-fun b_lambda!34717 () Bool)

(assert (= b_lambda!34703 (or b!1163976 b_lambda!34717)))

(declare-fun bs!284146 () Bool)

(declare-fun d!332473 () Bool)

(assert (= bs!284146 (and d!332473 b!1163976)))

(assert (=> bs!284146 (= (dynLambda!5054 lambda!47677 (h!16874 lt!397624)) (rulesProduceIndividualToken!729 Lexer!1690 (rules!9540 thiss!10527) (h!16874 lt!397624)))))

(assert (=> bs!284146 m!1333061))

(assert (=> b!1164475 d!332473))

(check-sat (not b!1164150) (not d!332315) (not d!332359) (not b!1164706) (not d!332331) (not b!1164480) (not d!332459) (not b!1164609) (not b!1164148) (not b!1164479) (not b!1164745) (not b!1164058) (not b!1164522) (not d!332269) (not b!1164747) (not b!1164623) (not b!1164247) (not b!1164255) (not b!1164592) (not b!1164249) (not d!332281) (not b!1164418) (not bs!284145) (not b!1164201) (not tb!65847) (not b!1164774) (not b!1164527) (not b!1164528) (not b!1164721) (not d!332415) (not b!1164566) (not b!1164601) (not b!1164626) (not b!1164591) (not b!1164149) (not b!1164337) (not b!1164717) (not b!1164474) (not d!332357) (not b!1164256) (not b!1164419) (not b!1164417) (not bm!82148) (not b!1164470) (not b!1164756) (not b!1164532) (not b!1164525) (not bm!82140) (not b!1164120) (not b!1163984) (not b!1164077) (not b_next!28469) (not b!1164526) (not b!1164487) (not b!1164052) (not d!332441) (not d!332215) (not d!332387) (not b!1164531) (not d!332329) (not b!1164707) (not d!332187) (not b!1164290) (not d!332287) (not d!332455) (not d!332395) (not b!1164574) (not b!1164288) (not d!332413) (not d!332333) (not d!332225) (not d!332443) (not d!332277) (not b!1164152) (not d!332307) (not b_next!28471) (not b!1164111) (not d!332419) (not b!1164731) (not d!332271) (not b!1164712) (not b!1164734) (not b_lambda!34713) (not b!1164773) (not b!1164567) (not b!1164476) (not d!332409) (not b!1164596) (not bs!284144) (not d!332405) (not b!1164540) (not b!1164073) (not b!1164530) (not b!1164059) (not d!332397) (not b!1164428) (not b!1164539) (not b!1164578) (not d!332403) (not b!1164108) (not b!1164524) (not b!1164610) (not bm!82147) (not b!1164593) (not b!1164724) (not d!332363) (not b!1164537) (not b!1164202) (not d!332273) (not b!1164536) (not d!332399) (not b!1164338) (not b!1164733) (not d!332377) (not b!1164416) (not d!332209) (not d!332465) (not b!1164422) (not b!1164719) (not b!1164076) (not d!332391) (not d!332447) (not d!332407) (not b!1164254) (not b!1164291) (not b!1164072) (not b!1164720) (not b!1164520) (not d!332223) (not b_lambda!34717) (not b!1164594) (not b!1164279) (not d!332423) (not d!332375) (not b!1164579) (not d!332245) (not b!1164577) (not b!1164110) (not b!1164471) (not b_lambda!34705) (not b!1164075) (not b!1164588) (not b!1164057) (not d!332467) (not d!332401) (not d!332365) (not b!1164633) (not bm!82149) (not b!1164289) (not b!1164345) b_and!80641 (not d!332393) (not b!1164582) (not b!1164772) (not d!332449) (not b!1164293) (not b!1164523) (not d!332279) (not b!1164595) (not bs!284146) (not b!1164074) (not b!1164335) (not d!332371) (not b!1164284) (not d!332327) (not b!1164732) (not b!1164109) (not b!1164423) b_and!80643 (not b!1164619) (not b!1164488) (not b!1164614) (not b!1164292) (not b!1164535) (not b!1164622) (not b!1164362) (not b!1164602) (not b!1164586) (not b!1164587) (not b!1164248) (not d!332373) (not b!1164287) (not b!1164415) (not b!1164583) (not d!332389) (not b!1164519) (not b!1164708) (not b!1164489) (not d!332411) (not b!1164054) (not b!1164083) (not b!1164621) (not b!1164341) (not b!1164611) (not d!332451) (not b!1164420) (not b!1164364) (not b!1164529) (not b!1164151) (not b!1164757) (not b!1164763) (not b!1164538) (not b_lambda!34715) (not b!1164421) (not b!1164709) (not b!1164053) (not b!1164055) (not b!1164521) (not d!332351) (not b!1164729) (not d!332361) (not b!1164286) (not b!1164056) (not b!1164576) (not d!332457))
(check-sat b_and!80641 b_and!80643 (not b_next!28469) (not b_next!28471))
