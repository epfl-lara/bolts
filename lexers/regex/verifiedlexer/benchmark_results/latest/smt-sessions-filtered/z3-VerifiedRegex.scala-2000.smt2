; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101598 () Bool)

(assert start!101598)

(declare-fun b!1160608 () Bool)

(declare-fun e!742973 () Bool)

(assert (=> b!1160608 (= e!742973 true)))

(declare-fun b!1160607 () Bool)

(declare-fun e!742972 () Bool)

(assert (=> b!1160607 (= e!742972 e!742973)))

(declare-fun b!1160580 () Bool)

(assert (=> b!1160580 e!742972))

(assert (= b!1160607 b!1160608))

(assert (= b!1160580 b!1160607))

(declare-fun e!742949 () Bool)

(declare-fun e!742954 () Bool)

(assert (=> b!1160580 (= e!742949 (not e!742954))))

(declare-fun res!523047 () Bool)

(assert (=> b!1160580 (=> res!523047 e!742954)))

(declare-datatypes ((List!11425 0))(
  ( (Nil!11401) (Cons!11401 (h!16802 (_ BitVec 16)) (t!109699 List!11425)) )
))
(declare-datatypes ((TokenValue!2047 0))(
  ( (FloatLiteralValue!4094 (text!14774 List!11425)) (TokenValueExt!2046 (__x!7805 Int)) (Broken!10235 (value!64429 List!11425)) (Object!2070) (End!2047) (Def!2047) (Underscore!2047) (Match!2047) (Else!2047) (Error!2047) (Case!2047) (If!2047) (Extends!2047) (Abstract!2047) (Class!2047) (Val!2047) (DelimiterValue!4094 (del!2107 List!11425)) (KeywordValue!2053 (value!64430 List!11425)) (CommentValue!4094 (value!64431 List!11425)) (WhitespaceValue!4094 (value!64432 List!11425)) (IndentationValue!2047 (value!64433 List!11425)) (String!13822) (Int32!2047) (Broken!10236 (value!64434 List!11425)) (Boolean!2048) (Unit!17400) (OperatorValue!2050 (op!2107 List!11425)) (IdentifierValue!4094 (value!64435 List!11425)) (IdentifierValue!4095 (value!64436 List!11425)) (WhitespaceValue!4095 (value!64437 List!11425)) (True!4094) (False!4094) (Broken!10237 (value!64438 List!11425)) (Broken!10238 (value!64439 List!11425)) (True!4095) (RightBrace!2047) (RightBracket!2047) (Colon!2047) (Null!2047) (Comma!2047) (LeftBracket!2047) (False!4095) (LeftBrace!2047) (ImaginaryLiteralValue!2047 (text!14775 List!11425)) (StringLiteralValue!6141 (value!64440 List!11425)) (EOFValue!2047 (value!64441 List!11425)) (IdentValue!2047 (value!64442 List!11425)) (DelimiterValue!4095 (value!64443 List!11425)) (DedentValue!2047 (value!64444 List!11425)) (NewLineValue!2047 (value!64445 List!11425)) (IntegerValue!6141 (value!64446 (_ BitVec 32)) (text!14776 List!11425)) (IntegerValue!6142 (value!64447 Int) (text!14777 List!11425)) (Times!2047) (Or!2047) (Equal!2047) (Minus!2047) (Broken!10239 (value!64448 List!11425)) (And!2047) (Div!2047) (LessEqual!2047) (Mod!2047) (Concat!5298) (Not!2047) (Plus!2047) (SpaceValue!2047 (value!64449 List!11425)) (IntegerValue!6143 (value!64450 Int) (text!14778 List!11425)) (StringLiteralValue!6142 (text!14779 List!11425)) (FloatLiteralValue!4095 (text!14780 List!11425)) (BytesLiteralValue!2047 (value!64451 List!11425)) (CommentValue!4095 (value!64452 List!11425)) (StringLiteralValue!6143 (value!64453 List!11425)) (ErrorTokenValue!2047 (msg!2108 List!11425)) )
))
(declare-datatypes ((C!6820 0))(
  ( (C!6821 (val!3666 Int)) )
))
(declare-datatypes ((Regex!3251 0))(
  ( (ElementMatch!3251 (c!194222 C!6820)) (Concat!5299 (regOne!7014 Regex!3251) (regTwo!7014 Regex!3251)) (EmptyExpr!3251) (Star!3251 (reg!3580 Regex!3251)) (EmptyLang!3251) (Union!3251 (regOne!7015 Regex!3251) (regTwo!7015 Regex!3251)) )
))
(declare-datatypes ((String!13823 0))(
  ( (String!13824 (value!64454 String)) )
))
(declare-datatypes ((List!11426 0))(
  ( (Nil!11402) (Cons!11402 (h!16803 C!6820) (t!109700 List!11426)) )
))
(declare-datatypes ((IArray!7453 0))(
  ( (IArray!7454 (innerList!3784 List!11426)) )
))
(declare-datatypes ((Conc!3724 0))(
  ( (Node!3724 (left!9960 Conc!3724) (right!10290 Conc!3724) (csize!7678 Int) (cheight!3935 Int)) (Leaf!5725 (xs!6429 IArray!7453) (csize!7679 Int)) (Empty!3724) )
))
(declare-datatypes ((BalanceConc!7470 0))(
  ( (BalanceConc!7471 (c!194223 Conc!3724)) )
))
(declare-datatypes ((TokenValueInjection!3794 0))(
  ( (TokenValueInjection!3795 (toValue!3082 Int) (toChars!2941 Int)) )
))
(declare-datatypes ((Rule!3762 0))(
  ( (Rule!3763 (regex!1981 Regex!3251) (tag!2243 String!13823) (isSeparator!1981 Bool) (transformation!1981 TokenValueInjection!3794)) )
))
(declare-datatypes ((Token!3624 0))(
  ( (Token!3625 (value!64455 TokenValue!2047) (rule!3402 Rule!3762) (size!8957 Int) (originalCharacters!2535 List!11426)) )
))
(declare-datatypes ((List!11427 0))(
  ( (Nil!11403) (Cons!11403 (h!16804 Token!3624) (t!109701 List!11427)) )
))
(declare-datatypes ((List!11428 0))(
  ( (Nil!11404) (Cons!11404 (h!16805 Rule!3762) (t!109702 List!11428)) )
))
(declare-datatypes ((IArray!7455 0))(
  ( (IArray!7456 (innerList!3785 List!11427)) )
))
(declare-datatypes ((Conc!3725 0))(
  ( (Node!3725 (left!9961 Conc!3725) (right!10291 Conc!3725) (csize!7680 Int) (cheight!3936 Int)) (Leaf!5726 (xs!6430 IArray!7455) (csize!7681 Int)) (Empty!3725) )
))
(declare-datatypes ((BalanceConc!7472 0))(
  ( (BalanceConc!7473 (c!194224 Conc!3725)) )
))
(declare-datatypes ((PrintableTokens!648 0))(
  ( (PrintableTokens!649 (rules!9478 List!11428) (tokens!1582 BalanceConc!7472)) )
))
(declare-fun thiss!10527 () PrintableTokens!648)

(declare-fun lambda!47271 () Int)

(declare-fun forall!2966 (BalanceConc!7472 Int) Bool)

(assert (=> b!1160580 (= res!523047 (not (forall!2966 (tokens!1582 thiss!10527) lambda!47271)))))

(declare-fun lt!394652 () List!11427)

(declare-fun e!742957 () Bool)

(declare-datatypes ((LexerInterface!1676 0))(
  ( (LexerInterfaceExt!1673 (__x!7806 Int)) (Lexer!1674) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!544 (LexerInterface!1676 List!11428 List!11427) Bool)

(assert (=> b!1160580 (= (rulesProduceEachTokenIndividuallyList!544 Lexer!1674 (rules!9478 thiss!10527) lt!394652) e!742957)))

(declare-fun res!523045 () Bool)

(assert (=> b!1160580 (=> res!523045 e!742957)))

(get-info :version)

(assert (=> b!1160580 (= res!523045 (not ((_ is Cons!11403) lt!394652)))))

(declare-fun list!4196 (BalanceConc!7472) List!11427)

(assert (=> b!1160580 (= lt!394652 (list!4196 (tokens!1582 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!715 (LexerInterface!1676 List!11428 BalanceConc!7472) Bool)

(assert (=> b!1160580 (= (rulesProduceEachTokenIndividually!715 Lexer!1674 (rules!9478 thiss!10527) (tokens!1582 thiss!10527)) (forall!2966 (tokens!1582 thiss!10527) lambda!47271))))

(declare-fun b!1160581 () Bool)

(declare-fun e!742959 () Bool)

(assert (=> b!1160581 (= e!742959 e!742949)))

(declare-fun res!523034 () Bool)

(assert (=> b!1160581 (=> (not res!523034) (not e!742949))))

(declare-fun rulesInvariant!1550 (LexerInterface!1676 List!11428) Bool)

(assert (=> b!1160581 (= res!523034 (rulesInvariant!1550 Lexer!1674 (rules!9478 thiss!10527)))))

(declare-datatypes ((Unit!17401 0))(
  ( (Unit!17402) )
))
(declare-fun lt!394650 () Unit!17401)

(declare-fun lemmaInvariant!168 (PrintableTokens!648) Unit!17401)

(assert (=> b!1160581 (= lt!394650 (lemmaInvariant!168 thiss!10527))))

(declare-fun b!1160582 () Bool)

(declare-fun lt!394664 () List!11427)

(declare-fun e!742964 () Bool)

(declare-fun e!742953 () Bool)

(assert (=> b!1160582 (= e!742964 (= (rulesProduceEachTokenIndividuallyList!544 Lexer!1674 (rules!9478 thiss!10527) lt!394664) e!742953))))

(declare-fun res!523041 () Bool)

(assert (=> b!1160582 (=> res!523041 e!742953)))

(assert (=> b!1160582 (= res!523041 (not ((_ is Cons!11403) lt!394664)))))

(declare-fun b!1160583 () Bool)

(declare-fun e!742950 () Bool)

(declare-fun lt!394647 () List!11427)

(assert (=> b!1160583 (= e!742950 (rulesProduceEachTokenIndividuallyList!544 Lexer!1674 (rules!9478 thiss!10527) (t!109701 lt!394647)))))

(declare-fun res!523046 () Bool)

(declare-fun e!742951 () Bool)

(assert (=> start!101598 (=> (not res!523046) (not e!742951))))

(declare-fun from!787 () Int)

(declare-fun to!267 () Int)

(assert (=> start!101598 (= res!523046 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!101598 e!742951))

(assert (=> start!101598 true))

(declare-fun e!742958 () Bool)

(declare-fun inv!14986 (PrintableTokens!648) Bool)

(assert (=> start!101598 (and (inv!14986 thiss!10527) e!742958)))

(declare-fun b!1160584 () Bool)

(declare-fun e!742962 () Bool)

(assert (=> b!1160584 (= e!742962 e!742950)))

(declare-fun res!523049 () Bool)

(assert (=> b!1160584 (=> (not res!523049) (not e!742950))))

(declare-fun rulesProduceIndividualToken!713 (LexerInterface!1676 List!11428 Token!3624) Bool)

(assert (=> b!1160584 (= res!523049 (rulesProduceIndividualToken!713 Lexer!1674 (rules!9478 thiss!10527) (h!16804 lt!394647)))))

(declare-fun b!1160585 () Bool)

(declare-fun e!742952 () Bool)

(assert (=> b!1160585 (= e!742952 (rulesProduceEachTokenIndividuallyList!544 Lexer!1674 (rules!9478 thiss!10527) (t!109701 lt!394652)))))

(declare-fun b!1160586 () Bool)

(declare-fun e!742967 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!88 (LexerInterface!1676 List!11427 List!11428) Bool)

(assert (=> b!1160586 (= e!742967 (tokensListTwoByTwoPredicateSeparableList!88 Lexer!1674 lt!394647 (rules!9478 thiss!10527)))))

(declare-fun b!1160587 () Bool)

(declare-fun e!742963 () Bool)

(declare-fun tp!333749 () Bool)

(declare-fun inv!14987 (BalanceConc!7472) Bool)

(assert (=> b!1160587 (= e!742958 (and tp!333749 (inv!14987 (tokens!1582 thiss!10527)) e!742963))))

(declare-fun b!1160588 () Bool)

(declare-fun res!523048 () Bool)

(declare-fun e!742955 () Bool)

(assert (=> b!1160588 (=> res!523048 e!742955)))

(declare-fun lt!394658 () BalanceConc!7472)

(assert (=> b!1160588 (= res!523048 (not (forall!2966 lt!394658 lambda!47271)))))

(declare-fun b!1160589 () Bool)

(declare-fun res!523035 () Bool)

(assert (=> b!1160589 (=> (not res!523035) (not e!742964))))

(assert (=> b!1160589 (= res!523035 (= (rulesProduceEachTokenIndividually!715 Lexer!1674 (rules!9478 thiss!10527) lt!394658) (forall!2966 lt!394658 lambda!47271)))))

(declare-fun b!1160590 () Bool)

(assert (=> b!1160590 (= e!742954 e!742955)))

(declare-fun res!523037 () Bool)

(assert (=> b!1160590 (=> res!523037 e!742955)))

(declare-fun forall!2967 (List!11427 Int) Bool)

(assert (=> b!1160590 (= res!523037 (not (forall!2967 lt!394664 lambda!47271)))))

(assert (=> b!1160590 e!742964))

(declare-fun res!523039 () Bool)

(assert (=> b!1160590 (=> (not res!523039) (not e!742964))))

(assert (=> b!1160590 (= res!523039 (forall!2967 lt!394664 lambda!47271))))

(declare-fun lt!394645 () Unit!17401)

(declare-fun lemmaForallSubseq!129 (List!11427 List!11427 Int) Unit!17401)

(assert (=> b!1160590 (= lt!394645 (lemmaForallSubseq!129 lt!394664 lt!394652 lambda!47271))))

(assert (=> b!1160590 (= lt!394664 (list!4196 lt!394658))))

(declare-fun slice!259 (BalanceConc!7472 Int Int) BalanceConc!7472)

(assert (=> b!1160590 (= lt!394658 (slice!259 (tokens!1582 thiss!10527) from!787 to!267))))

(declare-fun subseq!237 (List!11427 List!11427) Bool)

(declare-fun slice!260 (List!11427 Int Int) List!11427)

(assert (=> b!1160590 (subseq!237 (slice!260 lt!394652 from!787 to!267) lt!394652)))

(declare-fun lt!394654 () Unit!17401)

(declare-fun lemmaSliceSubseq!78 (List!11427 Int Int) Unit!17401)

(assert (=> b!1160590 (= lt!394654 (lemmaSliceSubseq!78 lt!394652 from!787 to!267))))

(declare-fun b!1160591 () Bool)

(declare-fun tp!333750 () Bool)

(declare-fun inv!14988 (Conc!3725) Bool)

(assert (=> b!1160591 (= e!742963 (and (inv!14988 (c!194224 (tokens!1582 thiss!10527))) tp!333750))))

(declare-fun b!1160592 () Bool)

(declare-fun e!742956 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!51 (LexerInterface!1676 BalanceConc!7472 Int List!11428) Bool)

(assert (=> b!1160592 (= e!742956 (tokensListTwoByTwoPredicateSeparable!51 Lexer!1674 (tokens!1582 thiss!10527) 1 (rules!9478 thiss!10527)))))

(declare-fun b!1160593 () Bool)

(assert (=> b!1160593 (= e!742957 e!742952)))

(declare-fun res!523050 () Bool)

(assert (=> b!1160593 (=> (not res!523050) (not e!742952))))

(assert (=> b!1160593 (= res!523050 (rulesProduceIndividualToken!713 Lexer!1674 (rules!9478 thiss!10527) (h!16804 lt!394652)))))

(declare-fun b!1160594 () Bool)

(declare-fun e!742965 () Bool)

(assert (=> b!1160594 (= e!742953 e!742965)))

(declare-fun res!523033 () Bool)

(assert (=> b!1160594 (=> (not res!523033) (not e!742965))))

(assert (=> b!1160594 (= res!523033 (rulesProduceIndividualToken!713 Lexer!1674 (rules!9478 thiss!10527) (h!16804 lt!394664)))))

(declare-fun b!1160595 () Bool)

(assert (=> b!1160595 (= e!742965 (rulesProduceEachTokenIndividuallyList!544 Lexer!1674 (rules!9478 thiss!10527) (t!109701 lt!394664)))))

(declare-fun b!1160596 () Bool)

(declare-fun e!742961 () Bool)

(declare-fun e!742960 () Bool)

(assert (=> b!1160596 (= e!742961 (= (tokensListTwoByTwoPredicateSeparable!51 Lexer!1674 (tokens!1582 thiss!10527) 0 (rules!9478 thiss!10527)) e!742960))))

(declare-fun res!523044 () Bool)

(assert (=> b!1160596 (=> res!523044 e!742960)))

(declare-fun lt!394663 () Int)

(assert (=> b!1160596 (= res!523044 (>= 0 (- lt!394663 1)))))

(declare-fun b!1160597 () Bool)

(assert (=> b!1160597 (= e!742951 e!742959)))

(declare-fun res!523040 () Bool)

(assert (=> b!1160597 (=> (not res!523040) (not e!742959))))

(assert (=> b!1160597 (= res!523040 (<= to!267 lt!394663))))

(declare-fun size!8958 (BalanceConc!7472) Int)

(assert (=> b!1160597 (= lt!394663 (size!8958 (tokens!1582 thiss!10527)))))

(declare-fun b!1160598 () Bool)

(declare-fun e!742966 () Bool)

(declare-fun lt!394649 () Token!3624)

(declare-fun size!8959 (BalanceConc!7470) Int)

(declare-fun charsOf!1050 (Token!3624) BalanceConc!7470)

(assert (=> b!1160598 (= e!742966 (> (size!8959 (charsOf!1050 lt!394649)) 0))))

(declare-fun b!1160599 () Bool)

(assert (=> b!1160599 (= e!742955 true)))

(assert (=> b!1160599 e!742967))

(declare-fun res!523036 () Bool)

(assert (=> b!1160599 (=> (not res!523036) (not e!742967))))

(assert (=> b!1160599 (= res!523036 (forall!2967 lt!394647 lambda!47271))))

(declare-fun lt!394657 () Unit!17401)

(assert (=> b!1160599 (= lt!394657 (lemmaForallSubseq!129 lt!394647 lt!394652 lambda!47271))))

(assert (=> b!1160599 (subseq!237 lt!394647 lt!394652)))

(declare-fun lt!394659 () Unit!17401)

(declare-fun lemmaDropSubseq!28 (List!11427 Int) Unit!17401)

(assert (=> b!1160599 (= lt!394659 (lemmaDropSubseq!28 lt!394652 from!787))))

(assert (=> b!1160599 (= (rulesProduceEachTokenIndividuallyList!544 Lexer!1674 (rules!9478 thiss!10527) lt!394647) e!742962)))

(declare-fun res!523038 () Bool)

(assert (=> b!1160599 (=> res!523038 e!742962)))

(assert (=> b!1160599 (= res!523038 (not ((_ is Cons!11403) lt!394647)))))

(declare-fun drop!463 (List!11427 Int) List!11427)

(assert (=> b!1160599 (= lt!394647 (drop!463 lt!394652 from!787))))

(declare-fun lt!394660 () Unit!17401)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!28 (LexerInterface!1676 List!11427 Int List!11428) Unit!17401)

(assert (=> b!1160599 (= lt!394660 (tokensListTwoByTwoPredicateSeparableTokensDropList!28 Lexer!1674 lt!394652 from!787 (rules!9478 thiss!10527)))))

(assert (=> b!1160599 e!742961))

(declare-fun res!523051 () Bool)

(assert (=> b!1160599 (=> (not res!523051) (not e!742961))))

(declare-fun separableTokens!118 (LexerInterface!1676 BalanceConc!7472 List!11428) Bool)

(assert (=> b!1160599 (= res!523051 (= (separableTokens!118 Lexer!1674 lt!394658 (rules!9478 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!51 Lexer!1674 lt!394658 0 (rules!9478 thiss!10527))))))

(declare-fun b!1160600 () Bool)

(assert (=> b!1160600 (= e!742960 e!742956)))

(declare-fun res!523043 () Bool)

(assert (=> b!1160600 (=> (not res!523043) (not e!742956))))

(declare-fun lt!394651 () Token!3624)

(declare-fun separableTokensPredicate!112 (LexerInterface!1676 Token!3624 Token!3624 List!11428) Bool)

(assert (=> b!1160600 (= res!523043 (separableTokensPredicate!112 Lexer!1674 lt!394651 lt!394649 (rules!9478 thiss!10527)))))

(assert (=> b!1160600 e!742966))

(declare-fun res!523042 () Bool)

(assert (=> b!1160600 (=> (not res!523042) (not e!742966))))

(assert (=> b!1160600 (= res!523042 (rulesProduceIndividualToken!713 Lexer!1674 (rules!9478 thiss!10527) lt!394649))))

(declare-fun lt!394648 () Unit!17401)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!271 (LexerInterface!1676 List!11428 List!11427 Token!3624) Unit!17401)

(assert (=> b!1160600 (= lt!394648 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!271 Lexer!1674 (rules!9478 thiss!10527) lt!394652 lt!394649))))

(declare-fun apply!2425 (BalanceConc!7472 Int) Token!3624)

(assert (=> b!1160600 (= lt!394649 (apply!2425 (tokens!1582 thiss!10527) 1))))

(assert (=> b!1160600 (rulesProduceIndividualToken!713 Lexer!1674 (rules!9478 thiss!10527) lt!394651)))

(declare-fun lt!394661 () Unit!17401)

(assert (=> b!1160600 (= lt!394661 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!271 Lexer!1674 (rules!9478 thiss!10527) lt!394652 lt!394651))))

(assert (=> b!1160600 (= lt!394651 (apply!2425 (tokens!1582 thiss!10527) 0))))

(declare-fun lt!394646 () List!11427)

(declare-fun tail!1668 (List!11427) List!11427)

(assert (=> b!1160600 (= (tail!1668 lt!394646) (drop!463 lt!394652 2))))

(declare-fun lt!394653 () Unit!17401)

(declare-fun lemmaDropTail!341 (List!11427 Int) Unit!17401)

(assert (=> b!1160600 (= lt!394653 (lemmaDropTail!341 lt!394652 1))))

(declare-fun lt!394662 () List!11427)

(assert (=> b!1160600 (= (tail!1668 lt!394662) lt!394646)))

(declare-fun lt!394656 () Unit!17401)

(assert (=> b!1160600 (= lt!394656 (lemmaDropTail!341 lt!394652 0))))

(declare-fun head!2084 (List!11427) Token!3624)

(declare-fun apply!2426 (List!11427 Int) Token!3624)

(assert (=> b!1160600 (= (head!2084 lt!394646) (apply!2426 lt!394652 1))))

(assert (=> b!1160600 (= lt!394646 (drop!463 lt!394652 1))))

(declare-fun lt!394655 () Unit!17401)

(declare-fun lemmaDropApply!353 (List!11427 Int) Unit!17401)

(assert (=> b!1160600 (= lt!394655 (lemmaDropApply!353 lt!394652 1))))

(assert (=> b!1160600 (= (head!2084 lt!394662) (apply!2426 lt!394652 0))))

(assert (=> b!1160600 (= lt!394662 (drop!463 lt!394652 0))))

(declare-fun lt!394644 () Unit!17401)

(assert (=> b!1160600 (= lt!394644 (lemmaDropApply!353 lt!394652 0))))

(assert (= (and start!101598 res!523046) b!1160597))

(assert (= (and b!1160597 res!523040) b!1160581))

(assert (= (and b!1160581 res!523034) b!1160580))

(assert (= (and b!1160580 (not res!523045)) b!1160593))

(assert (= (and b!1160593 res!523050) b!1160585))

(assert (= (and b!1160580 (not res!523047)) b!1160590))

(assert (= (and b!1160590 res!523039) b!1160589))

(assert (= (and b!1160589 res!523035) b!1160582))

(assert (= (and b!1160582 (not res!523041)) b!1160594))

(assert (= (and b!1160594 res!523033) b!1160595))

(assert (= (and b!1160590 (not res!523037)) b!1160588))

(assert (= (and b!1160588 (not res!523048)) b!1160599))

(assert (= (and b!1160599 res!523051) b!1160596))

(assert (= (and b!1160596 (not res!523044)) b!1160600))

(assert (= (and b!1160600 res!523042) b!1160598))

(assert (= (and b!1160600 res!523043) b!1160592))

(assert (= (and b!1160599 (not res!523038)) b!1160584))

(assert (= (and b!1160584 res!523049) b!1160583))

(assert (= (and b!1160599 res!523036) b!1160586))

(assert (= b!1160587 b!1160591))

(assert (= start!101598 b!1160587))

(declare-fun m!1327307 () Bool)

(assert (=> b!1160589 m!1327307))

(declare-fun m!1327309 () Bool)

(assert (=> b!1160589 m!1327309))

(declare-fun m!1327311 () Bool)

(assert (=> b!1160593 m!1327311))

(declare-fun m!1327313 () Bool)

(assert (=> b!1160587 m!1327313))

(declare-fun m!1327315 () Bool)

(assert (=> b!1160581 m!1327315))

(declare-fun m!1327317 () Bool)

(assert (=> b!1160581 m!1327317))

(declare-fun m!1327319 () Bool)

(assert (=> b!1160594 m!1327319))

(declare-fun m!1327321 () Bool)

(assert (=> b!1160597 m!1327321))

(declare-fun m!1327323 () Bool)

(assert (=> b!1160592 m!1327323))

(declare-fun m!1327325 () Bool)

(assert (=> b!1160590 m!1327325))

(declare-fun m!1327327 () Bool)

(assert (=> b!1160590 m!1327327))

(declare-fun m!1327329 () Bool)

(assert (=> b!1160590 m!1327329))

(declare-fun m!1327331 () Bool)

(assert (=> b!1160590 m!1327331))

(declare-fun m!1327333 () Bool)

(assert (=> b!1160590 m!1327333))

(declare-fun m!1327335 () Bool)

(assert (=> b!1160590 m!1327335))

(assert (=> b!1160590 m!1327333))

(declare-fun m!1327337 () Bool)

(assert (=> b!1160590 m!1327337))

(assert (=> b!1160590 m!1327337))

(declare-fun m!1327339 () Bool)

(assert (=> b!1160591 m!1327339))

(declare-fun m!1327341 () Bool)

(assert (=> b!1160584 m!1327341))

(declare-fun m!1327343 () Bool)

(assert (=> b!1160598 m!1327343))

(assert (=> b!1160598 m!1327343))

(declare-fun m!1327345 () Bool)

(assert (=> b!1160598 m!1327345))

(declare-fun m!1327347 () Bool)

(assert (=> b!1160585 m!1327347))

(assert (=> b!1160588 m!1327309))

(declare-fun m!1327349 () Bool)

(assert (=> b!1160599 m!1327349))

(declare-fun m!1327351 () Bool)

(assert (=> b!1160599 m!1327351))

(declare-fun m!1327353 () Bool)

(assert (=> b!1160599 m!1327353))

(declare-fun m!1327355 () Bool)

(assert (=> b!1160599 m!1327355))

(declare-fun m!1327357 () Bool)

(assert (=> b!1160599 m!1327357))

(declare-fun m!1327359 () Bool)

(assert (=> b!1160599 m!1327359))

(declare-fun m!1327361 () Bool)

(assert (=> b!1160599 m!1327361))

(declare-fun m!1327363 () Bool)

(assert (=> b!1160599 m!1327363))

(declare-fun m!1327365 () Bool)

(assert (=> b!1160599 m!1327365))

(declare-fun m!1327367 () Bool)

(assert (=> b!1160583 m!1327367))

(declare-fun m!1327369 () Bool)

(assert (=> b!1160596 m!1327369))

(declare-fun m!1327371 () Bool)

(assert (=> b!1160600 m!1327371))

(declare-fun m!1327373 () Bool)

(assert (=> b!1160600 m!1327373))

(declare-fun m!1327375 () Bool)

(assert (=> b!1160600 m!1327375))

(declare-fun m!1327377 () Bool)

(assert (=> b!1160600 m!1327377))

(declare-fun m!1327379 () Bool)

(assert (=> b!1160600 m!1327379))

(declare-fun m!1327381 () Bool)

(assert (=> b!1160600 m!1327381))

(declare-fun m!1327383 () Bool)

(assert (=> b!1160600 m!1327383))

(declare-fun m!1327385 () Bool)

(assert (=> b!1160600 m!1327385))

(declare-fun m!1327387 () Bool)

(assert (=> b!1160600 m!1327387))

(declare-fun m!1327389 () Bool)

(assert (=> b!1160600 m!1327389))

(declare-fun m!1327391 () Bool)

(assert (=> b!1160600 m!1327391))

(declare-fun m!1327393 () Bool)

(assert (=> b!1160600 m!1327393))

(declare-fun m!1327395 () Bool)

(assert (=> b!1160600 m!1327395))

(declare-fun m!1327397 () Bool)

(assert (=> b!1160600 m!1327397))

(declare-fun m!1327399 () Bool)

(assert (=> b!1160600 m!1327399))

(declare-fun m!1327401 () Bool)

(assert (=> b!1160600 m!1327401))

(declare-fun m!1327403 () Bool)

(assert (=> b!1160600 m!1327403))

(declare-fun m!1327405 () Bool)

(assert (=> b!1160600 m!1327405))

(declare-fun m!1327407 () Bool)

(assert (=> b!1160600 m!1327407))

(declare-fun m!1327409 () Bool)

(assert (=> b!1160600 m!1327409))

(declare-fun m!1327411 () Bool)

(assert (=> b!1160595 m!1327411))

(declare-fun m!1327413 () Bool)

(assert (=> b!1160582 m!1327413))

(declare-fun m!1327415 () Bool)

(assert (=> b!1160580 m!1327415))

(declare-fun m!1327417 () Bool)

(assert (=> b!1160580 m!1327417))

(declare-fun m!1327419 () Bool)

(assert (=> b!1160580 m!1327419))

(declare-fun m!1327421 () Bool)

(assert (=> b!1160580 m!1327421))

(assert (=> b!1160580 m!1327417))

(declare-fun m!1327423 () Bool)

(assert (=> b!1160586 m!1327423))

(declare-fun m!1327425 () Bool)

(assert (=> start!101598 m!1327425))

(check-sat (not b!1160608) (not b!1160599) (not start!101598) (not b!1160595) (not b!1160590) (not b!1160591) (not b!1160580) (not b!1160581) (not b!1160593) (not b!1160588) (not b!1160607) (not b!1160598) (not b!1160589) (not b!1160587) (not b!1160582) (not b!1160592) (not b!1160600) (not b!1160584) (not b!1160594) (not b!1160596) (not b!1160583) (not b!1160586) (not b!1160597) (not b!1160585))
(check-sat)
