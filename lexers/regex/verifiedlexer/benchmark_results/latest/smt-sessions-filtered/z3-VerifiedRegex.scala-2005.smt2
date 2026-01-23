; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101898 () Bool)

(assert start!101898)

(declare-fun b!1162768 () Bool)

(declare-fun e!744689 () Bool)

(assert (=> b!1162768 (= e!744689 true)))

(declare-fun b!1162767 () Bool)

(declare-fun e!744688 () Bool)

(assert (=> b!1162767 (= e!744688 e!744689)))

(declare-fun b!1162737 () Bool)

(assert (=> b!1162737 e!744688))

(assert (= b!1162767 b!1162768))

(assert (= b!1162737 b!1162767))

(declare-fun e!744673 () Bool)

(declare-fun e!744670 () Bool)

(assert (=> b!1162737 (= e!744673 (not e!744670))))

(declare-fun res!524457 () Bool)

(assert (=> b!1162737 (=> res!524457 e!744670)))

(declare-datatypes ((List!11469 0))(
  ( (Nil!11445) (Cons!11445 (h!16846 (_ BitVec 16)) (t!109967 List!11469)) )
))
(declare-datatypes ((TokenValue!2057 0))(
  ( (FloatLiteralValue!4114 (text!14844 List!11469)) (TokenValueExt!2056 (__x!7825 Int)) (Broken!10285 (value!64714 List!11469)) (Object!2080) (End!2057) (Def!2057) (Underscore!2057) (Match!2057) (Else!2057) (Error!2057) (Case!2057) (If!2057) (Extends!2057) (Abstract!2057) (Class!2057) (Val!2057) (DelimiterValue!4114 (del!2117 List!11469)) (KeywordValue!2063 (value!64715 List!11469)) (CommentValue!4114 (value!64716 List!11469)) (WhitespaceValue!4114 (value!64717 List!11469)) (IndentationValue!2057 (value!64718 List!11469)) (String!13872) (Int32!2057) (Broken!10286 (value!64719 List!11469)) (Boolean!2058) (Unit!17488) (OperatorValue!2060 (op!2117 List!11469)) (IdentifierValue!4114 (value!64720 List!11469)) (IdentifierValue!4115 (value!64721 List!11469)) (WhitespaceValue!4115 (value!64722 List!11469)) (True!4114) (False!4114) (Broken!10287 (value!64723 List!11469)) (Broken!10288 (value!64724 List!11469)) (True!4115) (RightBrace!2057) (RightBracket!2057) (Colon!2057) (Null!2057) (Comma!2057) (LeftBracket!2057) (False!4115) (LeftBrace!2057) (ImaginaryLiteralValue!2057 (text!14845 List!11469)) (StringLiteralValue!6171 (value!64725 List!11469)) (EOFValue!2057 (value!64726 List!11469)) (IdentValue!2057 (value!64727 List!11469)) (DelimiterValue!4115 (value!64728 List!11469)) (DedentValue!2057 (value!64729 List!11469)) (NewLineValue!2057 (value!64730 List!11469)) (IntegerValue!6171 (value!64731 (_ BitVec 32)) (text!14846 List!11469)) (IntegerValue!6172 (value!64732 Int) (text!14847 List!11469)) (Times!2057) (Or!2057) (Equal!2057) (Minus!2057) (Broken!10289 (value!64733 List!11469)) (And!2057) (Div!2057) (LessEqual!2057) (Mod!2057) (Concat!5318) (Not!2057) (Plus!2057) (SpaceValue!2057 (value!64734 List!11469)) (IntegerValue!6173 (value!64735 Int) (text!14848 List!11469)) (StringLiteralValue!6172 (text!14849 List!11469)) (FloatLiteralValue!4115 (text!14850 List!11469)) (BytesLiteralValue!2057 (value!64736 List!11469)) (CommentValue!4115 (value!64737 List!11469)) (StringLiteralValue!6173 (value!64738 List!11469)) (ErrorTokenValue!2057 (msg!2118 List!11469)) )
))
(declare-datatypes ((C!6840 0))(
  ( (C!6841 (val!3676 Int)) )
))
(declare-datatypes ((Regex!3261 0))(
  ( (ElementMatch!3261 (c!194398 C!6840)) (Concat!5319 (regOne!7034 Regex!3261) (regTwo!7034 Regex!3261)) (EmptyExpr!3261) (Star!3261 (reg!3590 Regex!3261)) (EmptyLang!3261) (Union!3261 (regOne!7035 Regex!3261) (regTwo!7035 Regex!3261)) )
))
(declare-datatypes ((String!13873 0))(
  ( (String!13874 (value!64739 String)) )
))
(declare-datatypes ((List!11470 0))(
  ( (Nil!11446) (Cons!11446 (h!16847 C!6840) (t!109968 List!11470)) )
))
(declare-datatypes ((IArray!7493 0))(
  ( (IArray!7494 (innerList!3804 List!11470)) )
))
(declare-datatypes ((Conc!3744 0))(
  ( (Node!3744 (left!10005 Conc!3744) (right!10335 Conc!3744) (csize!7718 Int) (cheight!3955 Int)) (Leaf!5750 (xs!6449 IArray!7493) (csize!7719 Int)) (Empty!3744) )
))
(declare-datatypes ((BalanceConc!7510 0))(
  ( (BalanceConc!7511 (c!194399 Conc!3744)) )
))
(declare-datatypes ((TokenValueInjection!3814 0))(
  ( (TokenValueInjection!3815 (toValue!3092 Int) (toChars!2951 Int)) )
))
(declare-datatypes ((Rule!3782 0))(
  ( (Rule!3783 (regex!1991 Regex!3261) (tag!2253 String!13873) (isSeparator!1991 Bool) (transformation!1991 TokenValueInjection!3814)) )
))
(declare-datatypes ((Token!3644 0))(
  ( (Token!3645 (value!64740 TokenValue!2057) (rule!3412 Rule!3782) (size!9003 Int) (originalCharacters!2545 List!11470)) )
))
(declare-datatypes ((List!11471 0))(
  ( (Nil!11447) (Cons!11447 (h!16848 Token!3644) (t!109969 List!11471)) )
))
(declare-datatypes ((List!11472 0))(
  ( (Nil!11448) (Cons!11448 (h!16849 Rule!3782) (t!109970 List!11472)) )
))
(declare-datatypes ((IArray!7495 0))(
  ( (IArray!7496 (innerList!3805 List!11471)) )
))
(declare-datatypes ((Conc!3745 0))(
  ( (Node!3745 (left!10006 Conc!3745) (right!10336 Conc!3745) (csize!7720 Int) (cheight!3956 Int)) (Leaf!5751 (xs!6450 IArray!7495) (csize!7721 Int)) (Empty!3745) )
))
(declare-datatypes ((BalanceConc!7512 0))(
  ( (BalanceConc!7513 (c!194400 Conc!3745)) )
))
(declare-datatypes ((PrintableTokens!668 0))(
  ( (PrintableTokens!669 (rules!9518 List!11472) (tokens!1600 BalanceConc!7512)) )
))
(declare-fun thiss!10527 () PrintableTokens!668)

(declare-fun lambda!47519 () Int)

(declare-fun forall!2990 (BalanceConc!7512 Int) Bool)

(assert (=> b!1162737 (= res!524457 (not (forall!2990 (tokens!1600 thiss!10527) lambda!47519)))))

(declare-fun lt!396537 () List!11471)

(declare-fun e!744668 () Bool)

(declare-datatypes ((LexerInterface!1686 0))(
  ( (LexerInterfaceExt!1683 (__x!7826 Int)) (Lexer!1684) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!554 (LexerInterface!1686 List!11472 List!11471) Bool)

(assert (=> b!1162737 (= (rulesProduceEachTokenIndividuallyList!554 Lexer!1684 (rules!9518 thiss!10527) lt!396537) e!744668)))

(declare-fun res!524455 () Bool)

(assert (=> b!1162737 (=> res!524455 e!744668)))

(get-info :version)

(assert (=> b!1162737 (= res!524455 (not ((_ is Cons!11447) lt!396537)))))

(declare-fun list!4214 (BalanceConc!7512) List!11471)

(assert (=> b!1162737 (= lt!396537 (list!4214 (tokens!1600 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!725 (LexerInterface!1686 List!11472 BalanceConc!7512) Bool)

(assert (=> b!1162737 (= (rulesProduceEachTokenIndividually!725 Lexer!1684 (rules!9518 thiss!10527) (tokens!1600 thiss!10527)) (forall!2990 (tokens!1600 thiss!10527) lambda!47519))))

(declare-fun b!1162738 () Bool)

(declare-fun e!744669 () Bool)

(assert (=> b!1162738 (= e!744670 e!744669)))

(declare-fun res!524463 () Bool)

(assert (=> b!1162738 (=> res!524463 e!744669)))

(declare-fun lt!396540 () List!11471)

(declare-fun forall!2991 (List!11471 Int) Bool)

(assert (=> b!1162738 (= res!524463 (not (forall!2991 lt!396540 lambda!47519)))))

(declare-fun e!744676 () Bool)

(assert (=> b!1162738 e!744676))

(declare-fun res!524458 () Bool)

(assert (=> b!1162738 (=> (not res!524458) (not e!744676))))

(assert (=> b!1162738 (= res!524458 (forall!2991 lt!396540 lambda!47519))))

(declare-datatypes ((Unit!17489 0))(
  ( (Unit!17490) )
))
(declare-fun lt!396547 () Unit!17489)

(declare-fun lemmaForallSubseq!139 (List!11471 List!11471 Int) Unit!17489)

(assert (=> b!1162738 (= lt!396547 (lemmaForallSubseq!139 lt!396540 lt!396537 lambda!47519))))

(declare-fun lt!396535 () BalanceConc!7512)

(assert (=> b!1162738 (= lt!396540 (list!4214 lt!396535))))

(declare-fun to!267 () Int)

(declare-fun from!787 () Int)

(declare-fun slice!283 (BalanceConc!7512 Int Int) BalanceConc!7512)

(assert (=> b!1162738 (= lt!396535 (slice!283 (tokens!1600 thiss!10527) from!787 to!267))))

(declare-fun subseq!247 (List!11471 List!11471) Bool)

(declare-fun slice!284 (List!11471 Int Int) List!11471)

(assert (=> b!1162738 (subseq!247 (slice!284 lt!396537 from!787 to!267) lt!396537)))

(declare-fun lt!396544 () Unit!17489)

(declare-fun lemmaSliceSubseq!88 (List!11471 Int Int) Unit!17489)

(assert (=> b!1162738 (= lt!396544 (lemmaSliceSubseq!88 lt!396537 from!787 to!267))))

(declare-fun b!1162739 () Bool)

(declare-fun res!524446 () Bool)

(assert (=> b!1162739 (=> res!524446 e!744669)))

(assert (=> b!1162739 (= res!524446 (not (forall!2990 lt!396535 lambda!47519)))))

(declare-fun b!1162740 () Bool)

(declare-fun e!744667 () Bool)

(declare-fun lt!396542 () List!11471)

(assert (=> b!1162740 (= e!744667 (rulesProduceEachTokenIndividuallyList!554 Lexer!1684 (rules!9518 thiss!10527) (t!109969 lt!396542)))))

(declare-fun b!1162741 () Bool)

(declare-fun e!744678 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!98 (LexerInterface!1686 List!11471 List!11472) Bool)

(assert (=> b!1162741 (= e!744678 (tokensListTwoByTwoPredicateSeparableList!98 Lexer!1684 lt!396542 (rules!9518 thiss!10527)))))

(declare-fun b!1162742 () Bool)

(declare-fun e!744682 () Bool)

(declare-fun tp!333905 () Bool)

(declare-fun inv!15055 (Conc!3745) Bool)

(assert (=> b!1162742 (= e!744682 (and (inv!15055 (c!194400 (tokens!1600 thiss!10527))) tp!333905))))

(declare-fun b!1162743 () Bool)

(declare-fun e!744683 () Bool)

(declare-fun e!744666 () Bool)

(assert (=> b!1162743 (= e!744683 e!744666)))

(declare-fun res!524450 () Bool)

(assert (=> b!1162743 (=> (not res!524450) (not e!744666))))

(declare-fun lt!396546 () Token!3644)

(declare-fun lt!396548 () Token!3644)

(declare-fun separableTokensPredicate!122 (LexerInterface!1686 Token!3644 Token!3644 List!11472) Bool)

(assert (=> b!1162743 (= res!524450 (separableTokensPredicate!122 Lexer!1684 lt!396546 lt!396548 (rules!9518 thiss!10527)))))

(declare-fun e!744681 () Bool)

(assert (=> b!1162743 e!744681))

(declare-fun res!524452 () Bool)

(assert (=> b!1162743 (=> (not res!524452) (not e!744681))))

(declare-fun rulesProduceIndividualToken!723 (LexerInterface!1686 List!11472 Token!3644) Bool)

(assert (=> b!1162743 (= res!524452 (rulesProduceIndividualToken!723 Lexer!1684 (rules!9518 thiss!10527) lt!396548))))

(declare-fun lt!396527 () Unit!17489)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!281 (LexerInterface!1686 List!11472 List!11471 Token!3644) Unit!17489)

(assert (=> b!1162743 (= lt!396527 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!281 Lexer!1684 (rules!9518 thiss!10527) lt!396537 lt!396548))))

(declare-fun apply!2453 (BalanceConc!7512 Int) Token!3644)

(assert (=> b!1162743 (= lt!396548 (apply!2453 (tokens!1600 thiss!10527) 1))))

(assert (=> b!1162743 (rulesProduceIndividualToken!723 Lexer!1684 (rules!9518 thiss!10527) lt!396546)))

(declare-fun lt!396545 () Unit!17489)

(assert (=> b!1162743 (= lt!396545 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!281 Lexer!1684 (rules!9518 thiss!10527) lt!396537 lt!396546))))

(assert (=> b!1162743 (= lt!396546 (apply!2453 (tokens!1600 thiss!10527) 0))))

(declare-fun lt!396541 () List!11471)

(declare-fun tail!1678 (List!11471) List!11471)

(declare-fun drop!473 (List!11471 Int) List!11471)

(assert (=> b!1162743 (= (tail!1678 lt!396541) (drop!473 lt!396537 2))))

(declare-fun lt!396539 () Unit!17489)

(declare-fun lemmaDropTail!351 (List!11471 Int) Unit!17489)

(assert (=> b!1162743 (= lt!396539 (lemmaDropTail!351 lt!396537 1))))

(declare-fun lt!396533 () List!11471)

(assert (=> b!1162743 (= (tail!1678 lt!396533) lt!396541)))

(declare-fun lt!396525 () Unit!17489)

(assert (=> b!1162743 (= lt!396525 (lemmaDropTail!351 lt!396537 0))))

(declare-fun head!2094 (List!11471) Token!3644)

(declare-fun apply!2454 (List!11471 Int) Token!3644)

(assert (=> b!1162743 (= (head!2094 lt!396541) (apply!2454 lt!396537 1))))

(assert (=> b!1162743 (= lt!396541 (drop!473 lt!396537 1))))

(declare-fun lt!396543 () Unit!17489)

(declare-fun lemmaDropApply!363 (List!11471 Int) Unit!17489)

(assert (=> b!1162743 (= lt!396543 (lemmaDropApply!363 lt!396537 1))))

(assert (=> b!1162743 (= (head!2094 lt!396533) (apply!2454 lt!396537 0))))

(assert (=> b!1162743 (= lt!396533 (drop!473 lt!396537 0))))

(declare-fun lt!396534 () Unit!17489)

(assert (=> b!1162743 (= lt!396534 (lemmaDropApply!363 lt!396537 0))))

(declare-fun b!1162744 () Bool)

(declare-fun e!744680 () Bool)

(declare-fun lt!396532 () List!11471)

(assert (=> b!1162744 (= e!744680 (rulesProduceEachTokenIndividuallyList!554 Lexer!1684 (rules!9518 thiss!10527) (t!109969 lt!396532)))))

(declare-fun res!524449 () Bool)

(declare-fun e!744662 () Bool)

(assert (=> start!101898 (=> (not res!524449) (not e!744662))))

(assert (=> start!101898 (= res!524449 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!101898 e!744662))

(assert (=> start!101898 true))

(declare-fun e!744679 () Bool)

(declare-fun inv!15056 (PrintableTokens!668) Bool)

(assert (=> start!101898 (and (inv!15056 thiss!10527) e!744679)))

(declare-fun b!1162745 () Bool)

(declare-fun e!744665 () Bool)

(assert (=> b!1162745 (= e!744665 (tokensListTwoByTwoPredicateSeparableList!98 Lexer!1684 lt!396532 (rules!9518 thiss!10527)))))

(declare-fun b!1162746 () Bool)

(declare-fun e!744664 () Bool)

(assert (=> b!1162746 (= e!744664 e!744667)))

(declare-fun res!524444 () Bool)

(assert (=> b!1162746 (=> (not res!524444) (not e!744667))))

(assert (=> b!1162746 (= res!524444 (rulesProduceIndividualToken!723 Lexer!1684 (rules!9518 thiss!10527) (h!16848 lt!396542)))))

(declare-fun b!1162747 () Bool)

(assert (=> b!1162747 (= e!744669 true)))

(assert (=> b!1162747 e!744678))

(declare-fun res!524447 () Bool)

(assert (=> b!1162747 (=> (not res!524447) (not e!744678))))

(assert (=> b!1162747 (= res!524447 (forall!2991 lt!396542 lambda!47519))))

(declare-fun lt!396536 () Unit!17489)

(assert (=> b!1162747 (= lt!396536 (lemmaForallSubseq!139 lt!396542 lt!396532 lambda!47519))))

(assert (=> b!1162747 (= (rulesProduceEachTokenIndividuallyList!554 Lexer!1684 (rules!9518 thiss!10527) lt!396542) e!744664)))

(declare-fun res!524459 () Bool)

(assert (=> b!1162747 (=> res!524459 e!744664)))

(assert (=> b!1162747 (= res!524459 (not ((_ is Cons!11447) lt!396542)))))

(declare-fun take!63 (List!11471 Int) List!11471)

(assert (=> b!1162747 (= lt!396542 (take!63 lt!396532 (- to!267 from!787)))))

(declare-fun lt!396526 () Unit!17489)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!30 (LexerInterface!1686 List!11471 Int List!11472) Unit!17489)

(assert (=> b!1162747 (= lt!396526 (tokensListTwoByTwoPredicateSeparableTokensTakeList!30 Lexer!1684 lt!396532 (- to!267 from!787) (rules!9518 thiss!10527)))))

(assert (=> b!1162747 (forall!2991 lt!396532 lambda!47519)))

(declare-fun lt!396529 () Unit!17489)

(assert (=> b!1162747 (= lt!396529 (lemmaForallSubseq!139 lt!396532 lt!396537 lambda!47519))))

(assert (=> b!1162747 e!744665))

(declare-fun res!524464 () Bool)

(assert (=> b!1162747 (=> (not res!524464) (not e!744665))))

(assert (=> b!1162747 (= res!524464 (forall!2991 lt!396532 lambda!47519))))

(declare-fun lt!396531 () Unit!17489)

(assert (=> b!1162747 (= lt!396531 (lemmaForallSubseq!139 lt!396532 lt!396537 lambda!47519))))

(assert (=> b!1162747 (subseq!247 lt!396532 lt!396537)))

(declare-fun lt!396524 () Unit!17489)

(declare-fun lemmaDropSubseq!38 (List!11471 Int) Unit!17489)

(assert (=> b!1162747 (= lt!396524 (lemmaDropSubseq!38 lt!396537 from!787))))

(declare-fun e!744677 () Bool)

(assert (=> b!1162747 (= (rulesProduceEachTokenIndividuallyList!554 Lexer!1684 (rules!9518 thiss!10527) lt!396532) e!744677)))

(declare-fun res!524451 () Bool)

(assert (=> b!1162747 (=> res!524451 e!744677)))

(assert (=> b!1162747 (= res!524451 (not ((_ is Cons!11447) lt!396532)))))

(assert (=> b!1162747 (= lt!396532 (drop!473 lt!396537 from!787))))

(declare-fun lt!396530 () Unit!17489)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!38 (LexerInterface!1686 List!11471 Int List!11472) Unit!17489)

(assert (=> b!1162747 (= lt!396530 (tokensListTwoByTwoPredicateSeparableTokensDropList!38 Lexer!1684 lt!396537 from!787 (rules!9518 thiss!10527)))))

(declare-fun e!744672 () Bool)

(assert (=> b!1162747 e!744672))

(declare-fun res!524460 () Bool)

(assert (=> b!1162747 (=> (not res!524460) (not e!744672))))

(declare-fun separableTokens!128 (LexerInterface!1686 BalanceConc!7512 List!11472) Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!61 (LexerInterface!1686 BalanceConc!7512 Int List!11472) Bool)

(assert (=> b!1162747 (= res!524460 (= (separableTokens!128 Lexer!1684 lt!396535 (rules!9518 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!61 Lexer!1684 lt!396535 0 (rules!9518 thiss!10527))))))

(declare-fun b!1162748 () Bool)

(declare-fun e!744675 () Bool)

(assert (=> b!1162748 (= e!744662 e!744675)))

(declare-fun res!524448 () Bool)

(assert (=> b!1162748 (=> (not res!524448) (not e!744675))))

(declare-fun lt!396538 () Int)

(assert (=> b!1162748 (= res!524448 (<= to!267 lt!396538))))

(declare-fun size!9004 (BalanceConc!7512) Int)

(assert (=> b!1162748 (= lt!396538 (size!9004 (tokens!1600 thiss!10527)))))

(declare-fun b!1162749 () Bool)

(declare-fun tp!333906 () Bool)

(declare-fun inv!15057 (BalanceConc!7512) Bool)

(assert (=> b!1162749 (= e!744679 (and tp!333906 (inv!15057 (tokens!1600 thiss!10527)) e!744682))))

(declare-fun b!1162750 () Bool)

(declare-fun e!744674 () Bool)

(assert (=> b!1162750 (= e!744674 (rulesProduceEachTokenIndividuallyList!554 Lexer!1684 (rules!9518 thiss!10527) (t!109969 lt!396537)))))

(declare-fun b!1162751 () Bool)

(declare-fun size!9005 (BalanceConc!7510) Int)

(declare-fun charsOf!1060 (Token!3644) BalanceConc!7510)

(assert (=> b!1162751 (= e!744681 (> (size!9005 (charsOf!1060 lt!396548)) 0))))

(declare-fun b!1162752 () Bool)

(assert (=> b!1162752 (= e!744675 e!744673)))

(declare-fun res!524445 () Bool)

(assert (=> b!1162752 (=> (not res!524445) (not e!744673))))

(declare-fun rulesInvariant!1560 (LexerInterface!1686 List!11472) Bool)

(assert (=> b!1162752 (= res!524445 (rulesInvariant!1560 Lexer!1684 (rules!9518 thiss!10527)))))

(declare-fun lt!396528 () Unit!17489)

(declare-fun lemmaInvariant!178 (PrintableTokens!668) Unit!17489)

(assert (=> b!1162752 (= lt!396528 (lemmaInvariant!178 thiss!10527))))

(declare-fun b!1162753 () Bool)

(assert (=> b!1162753 (= e!744668 e!744674)))

(declare-fun res!524462 () Bool)

(assert (=> b!1162753 (=> (not res!524462) (not e!744674))))

(assert (=> b!1162753 (= res!524462 (rulesProduceIndividualToken!723 Lexer!1684 (rules!9518 thiss!10527) (h!16848 lt!396537)))))

(declare-fun e!744671 () Bool)

(declare-fun b!1162754 () Bool)

(assert (=> b!1162754 (= e!744676 (= (rulesProduceEachTokenIndividuallyList!554 Lexer!1684 (rules!9518 thiss!10527) lt!396540) e!744671))))

(declare-fun res!524453 () Bool)

(assert (=> b!1162754 (=> res!524453 e!744671)))

(assert (=> b!1162754 (= res!524453 (not ((_ is Cons!11447) lt!396540)))))

(declare-fun b!1162755 () Bool)

(assert (=> b!1162755 (= e!744672 (= (tokensListTwoByTwoPredicateSeparable!61 Lexer!1684 (tokens!1600 thiss!10527) 0 (rules!9518 thiss!10527)) e!744683))))

(declare-fun res!524454 () Bool)

(assert (=> b!1162755 (=> res!524454 e!744683)))

(assert (=> b!1162755 (= res!524454 (>= 0 (- lt!396538 1)))))

(declare-fun b!1162756 () Bool)

(assert (=> b!1162756 (= e!744677 e!744680)))

(declare-fun res!524456 () Bool)

(assert (=> b!1162756 (=> (not res!524456) (not e!744680))))

(assert (=> b!1162756 (= res!524456 (rulesProduceIndividualToken!723 Lexer!1684 (rules!9518 thiss!10527) (h!16848 lt!396532)))))

(declare-fun b!1162757 () Bool)

(declare-fun e!744663 () Bool)

(assert (=> b!1162757 (= e!744671 e!744663)))

(declare-fun res!524461 () Bool)

(assert (=> b!1162757 (=> (not res!524461) (not e!744663))))

(assert (=> b!1162757 (= res!524461 (rulesProduceIndividualToken!723 Lexer!1684 (rules!9518 thiss!10527) (h!16848 lt!396540)))))

(declare-fun b!1162758 () Bool)

(assert (=> b!1162758 (= e!744666 (tokensListTwoByTwoPredicateSeparable!61 Lexer!1684 (tokens!1600 thiss!10527) 1 (rules!9518 thiss!10527)))))

(declare-fun b!1162759 () Bool)

(declare-fun res!524465 () Bool)

(assert (=> b!1162759 (=> (not res!524465) (not e!744676))))

(assert (=> b!1162759 (= res!524465 (= (rulesProduceEachTokenIndividually!725 Lexer!1684 (rules!9518 thiss!10527) lt!396535) (forall!2990 lt!396535 lambda!47519)))))

(declare-fun b!1162760 () Bool)

(assert (=> b!1162760 (= e!744663 (rulesProduceEachTokenIndividuallyList!554 Lexer!1684 (rules!9518 thiss!10527) (t!109969 lt!396540)))))

(assert (= (and start!101898 res!524449) b!1162748))

(assert (= (and b!1162748 res!524448) b!1162752))

(assert (= (and b!1162752 res!524445) b!1162737))

(assert (= (and b!1162737 (not res!524455)) b!1162753))

(assert (= (and b!1162753 res!524462) b!1162750))

(assert (= (and b!1162737 (not res!524457)) b!1162738))

(assert (= (and b!1162738 res!524458) b!1162759))

(assert (= (and b!1162759 res!524465) b!1162754))

(assert (= (and b!1162754 (not res!524453)) b!1162757))

(assert (= (and b!1162757 res!524461) b!1162760))

(assert (= (and b!1162738 (not res!524463)) b!1162739))

(assert (= (and b!1162739 (not res!524446)) b!1162747))

(assert (= (and b!1162747 res!524460) b!1162755))

(assert (= (and b!1162755 (not res!524454)) b!1162743))

(assert (= (and b!1162743 res!524452) b!1162751))

(assert (= (and b!1162743 res!524450) b!1162758))

(assert (= (and b!1162747 (not res!524451)) b!1162756))

(assert (= (and b!1162756 res!524456) b!1162744))

(assert (= (and b!1162747 res!524464) b!1162745))

(assert (= (and b!1162747 (not res!524459)) b!1162746))

(assert (= (and b!1162746 res!524444) b!1162740))

(assert (= (and b!1162747 res!524447) b!1162741))

(assert (= b!1162749 b!1162742))

(assert (= start!101898 b!1162749))

(declare-fun m!1330955 () Bool)

(assert (=> b!1162743 m!1330955))

(declare-fun m!1330957 () Bool)

(assert (=> b!1162743 m!1330957))

(declare-fun m!1330959 () Bool)

(assert (=> b!1162743 m!1330959))

(declare-fun m!1330961 () Bool)

(assert (=> b!1162743 m!1330961))

(declare-fun m!1330963 () Bool)

(assert (=> b!1162743 m!1330963))

(declare-fun m!1330965 () Bool)

(assert (=> b!1162743 m!1330965))

(declare-fun m!1330967 () Bool)

(assert (=> b!1162743 m!1330967))

(declare-fun m!1330969 () Bool)

(assert (=> b!1162743 m!1330969))

(declare-fun m!1330971 () Bool)

(assert (=> b!1162743 m!1330971))

(declare-fun m!1330973 () Bool)

(assert (=> b!1162743 m!1330973))

(declare-fun m!1330975 () Bool)

(assert (=> b!1162743 m!1330975))

(declare-fun m!1330977 () Bool)

(assert (=> b!1162743 m!1330977))

(declare-fun m!1330979 () Bool)

(assert (=> b!1162743 m!1330979))

(declare-fun m!1330981 () Bool)

(assert (=> b!1162743 m!1330981))

(declare-fun m!1330983 () Bool)

(assert (=> b!1162743 m!1330983))

(declare-fun m!1330985 () Bool)

(assert (=> b!1162743 m!1330985))

(declare-fun m!1330987 () Bool)

(assert (=> b!1162743 m!1330987))

(declare-fun m!1330989 () Bool)

(assert (=> b!1162743 m!1330989))

(declare-fun m!1330991 () Bool)

(assert (=> b!1162743 m!1330991))

(declare-fun m!1330993 () Bool)

(assert (=> b!1162743 m!1330993))

(declare-fun m!1330995 () Bool)

(assert (=> b!1162753 m!1330995))

(declare-fun m!1330997 () Bool)

(assert (=> b!1162742 m!1330997))

(declare-fun m!1330999 () Bool)

(assert (=> b!1162744 m!1330999))

(declare-fun m!1331001 () Bool)

(assert (=> b!1162741 m!1331001))

(declare-fun m!1331003 () Bool)

(assert (=> b!1162749 m!1331003))

(declare-fun m!1331005 () Bool)

(assert (=> b!1162748 m!1331005))

(declare-fun m!1331007 () Bool)

(assert (=> b!1162759 m!1331007))

(declare-fun m!1331009 () Bool)

(assert (=> b!1162759 m!1331009))

(declare-fun m!1331011 () Bool)

(assert (=> b!1162750 m!1331011))

(declare-fun m!1331013 () Bool)

(assert (=> b!1162747 m!1331013))

(declare-fun m!1331015 () Bool)

(assert (=> b!1162747 m!1331015))

(declare-fun m!1331017 () Bool)

(assert (=> b!1162747 m!1331017))

(declare-fun m!1331019 () Bool)

(assert (=> b!1162747 m!1331019))

(declare-fun m!1331021 () Bool)

(assert (=> b!1162747 m!1331021))

(declare-fun m!1331023 () Bool)

(assert (=> b!1162747 m!1331023))

(declare-fun m!1331025 () Bool)

(assert (=> b!1162747 m!1331025))

(declare-fun m!1331027 () Bool)

(assert (=> b!1162747 m!1331027))

(declare-fun m!1331029 () Bool)

(assert (=> b!1162747 m!1331029))

(assert (=> b!1162747 m!1331025))

(declare-fun m!1331031 () Bool)

(assert (=> b!1162747 m!1331031))

(assert (=> b!1162747 m!1331015))

(declare-fun m!1331033 () Bool)

(assert (=> b!1162747 m!1331033))

(declare-fun m!1331035 () Bool)

(assert (=> b!1162747 m!1331035))

(declare-fun m!1331037 () Bool)

(assert (=> b!1162747 m!1331037))

(declare-fun m!1331039 () Bool)

(assert (=> b!1162747 m!1331039))

(declare-fun m!1331041 () Bool)

(assert (=> b!1162760 m!1331041))

(declare-fun m!1331043 () Bool)

(assert (=> b!1162758 m!1331043))

(declare-fun m!1331045 () Bool)

(assert (=> b!1162755 m!1331045))

(assert (=> b!1162739 m!1331009))

(declare-fun m!1331047 () Bool)

(assert (=> b!1162746 m!1331047))

(declare-fun m!1331049 () Bool)

(assert (=> b!1162751 m!1331049))

(assert (=> b!1162751 m!1331049))

(declare-fun m!1331051 () Bool)

(assert (=> b!1162751 m!1331051))

(declare-fun m!1331053 () Bool)

(assert (=> b!1162738 m!1331053))

(declare-fun m!1331055 () Bool)

(assert (=> b!1162738 m!1331055))

(declare-fun m!1331057 () Bool)

(assert (=> b!1162738 m!1331057))

(declare-fun m!1331059 () Bool)

(assert (=> b!1162738 m!1331059))

(assert (=> b!1162738 m!1331057))

(declare-fun m!1331061 () Bool)

(assert (=> b!1162738 m!1331061))

(declare-fun m!1331063 () Bool)

(assert (=> b!1162738 m!1331063))

(assert (=> b!1162738 m!1331053))

(declare-fun m!1331065 () Bool)

(assert (=> b!1162738 m!1331065))

(declare-fun m!1331067 () Bool)

(assert (=> b!1162756 m!1331067))

(declare-fun m!1331069 () Bool)

(assert (=> start!101898 m!1331069))

(declare-fun m!1331071 () Bool)

(assert (=> b!1162757 m!1331071))

(declare-fun m!1331073 () Bool)

(assert (=> b!1162752 m!1331073))

(declare-fun m!1331075 () Bool)

(assert (=> b!1162752 m!1331075))

(declare-fun m!1331077 () Bool)

(assert (=> b!1162737 m!1331077))

(assert (=> b!1162737 m!1331077))

(declare-fun m!1331079 () Bool)

(assert (=> b!1162737 m!1331079))

(declare-fun m!1331081 () Bool)

(assert (=> b!1162737 m!1331081))

(declare-fun m!1331083 () Bool)

(assert (=> b!1162737 m!1331083))

(declare-fun m!1331085 () Bool)

(assert (=> b!1162754 m!1331085))

(declare-fun m!1331087 () Bool)

(assert (=> b!1162740 m!1331087))

(declare-fun m!1331089 () Bool)

(assert (=> b!1162745 m!1331089))

(check-sat (not start!101898) (not b!1162767) (not b!1162744) (not b!1162739) (not b!1162757) (not b!1162759) (not b!1162742) (not b!1162758) (not b!1162740) (not b!1162741) (not b!1162755) (not b!1162749) (not b!1162737) (not b!1162754) (not b!1162743) (not b!1162753) (not b!1162756) (not b!1162752) (not b!1162747) (not b!1162745) (not b!1162751) (not b!1162760) (not b!1162750) (not b!1162746) (not b!1162768) (not b!1162738) (not b!1162748))
(check-sat)
