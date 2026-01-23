; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!331374 () Bool)

(assert start!331374)

(declare-fun b!3576001 () Bool)

(declare-fun b_free!91529 () Bool)

(declare-fun b_next!92233 () Bool)

(assert (=> b!3576001 (= b_free!91529 (not b_next!92233))))

(declare-fun tp!1094371 () Bool)

(declare-fun b_and!257631 () Bool)

(assert (=> b!3576001 (= tp!1094371 b_and!257631)))

(declare-fun b_free!91531 () Bool)

(declare-fun b_next!92235 () Bool)

(assert (=> b!3576001 (= b_free!91531 (not b_next!92235))))

(declare-fun tp!1094374 () Bool)

(declare-fun b_and!257633 () Bool)

(assert (=> b!3576001 (= tp!1094374 b_and!257633)))

(declare-fun b!3575999 () Bool)

(declare-fun b_free!91533 () Bool)

(declare-fun b_next!92237 () Bool)

(assert (=> b!3575999 (= b_free!91533 (not b_next!92237))))

(declare-fun tp!1094377 () Bool)

(declare-fun b_and!257635 () Bool)

(assert (=> b!3575999 (= tp!1094377 b_and!257635)))

(declare-fun b_free!91535 () Bool)

(declare-fun b_next!92239 () Bool)

(assert (=> b!3575999 (= b_free!91535 (not b_next!92239))))

(declare-fun tp!1094367 () Bool)

(declare-fun b_and!257637 () Bool)

(assert (=> b!3575999 (= tp!1094367 b_and!257637)))

(declare-fun b!3576005 () Bool)

(declare-fun b_free!91537 () Bool)

(declare-fun b_next!92241 () Bool)

(assert (=> b!3576005 (= b_free!91537 (not b_next!92241))))

(declare-fun tp!1094373 () Bool)

(declare-fun b_and!257639 () Bool)

(assert (=> b!3576005 (= tp!1094373 b_and!257639)))

(declare-fun b_free!91539 () Bool)

(declare-fun b_next!92243 () Bool)

(assert (=> b!3576005 (= b_free!91539 (not b_next!92243))))

(declare-fun tp!1094369 () Bool)

(declare-fun b_and!257641 () Bool)

(assert (=> b!3576005 (= tp!1094369 b_and!257641)))

(declare-fun bs!569623 () Bool)

(declare-fun b!3575991 () Bool)

(declare-fun b!3575990 () Bool)

(assert (= bs!569623 (and b!3575991 b!3575990)))

(declare-fun lambda!123581 () Int)

(declare-fun lambda!123580 () Int)

(assert (=> bs!569623 (not (= lambda!123581 lambda!123580))))

(declare-fun b!3576022 () Bool)

(declare-fun e!2212180 () Bool)

(assert (=> b!3576022 (= e!2212180 true)))

(declare-fun b!3576021 () Bool)

(declare-fun e!2212179 () Bool)

(assert (=> b!3576021 (= e!2212179 e!2212180)))

(declare-fun b!3576020 () Bool)

(declare-fun e!2212178 () Bool)

(assert (=> b!3576020 (= e!2212178 e!2212179)))

(assert (=> b!3575991 e!2212178))

(assert (= b!3576021 b!3576022))

(assert (= b!3576020 b!3576021))

(declare-datatypes ((C!20736 0))(
  ( (C!20737 (val!12416 Int)) )
))
(declare-datatypes ((List!37650 0))(
  ( (Nil!37526) (Cons!37526 (h!42946 (_ BitVec 16)) (t!289871 List!37650)) )
))
(declare-datatypes ((TokenValue!5746 0))(
  ( (FloatLiteralValue!11492 (text!40667 List!37650)) (TokenValueExt!5745 (__x!23709 Int)) (Broken!28730 (value!177640 List!37650)) (Object!5869) (End!5746) (Def!5746) (Underscore!5746) (Match!5746) (Else!5746) (Error!5746) (Case!5746) (If!5746) (Extends!5746) (Abstract!5746) (Class!5746) (Val!5746) (DelimiterValue!11492 (del!5806 List!37650)) (KeywordValue!5752 (value!177641 List!37650)) (CommentValue!11492 (value!177642 List!37650)) (WhitespaceValue!11492 (value!177643 List!37650)) (IndentationValue!5746 (value!177644 List!37650)) (String!42063) (Int32!5746) (Broken!28731 (value!177645 List!37650)) (Boolean!5747) (Unit!53548) (OperatorValue!5749 (op!5806 List!37650)) (IdentifierValue!11492 (value!177646 List!37650)) (IdentifierValue!11493 (value!177647 List!37650)) (WhitespaceValue!11493 (value!177648 List!37650)) (True!11492) (False!11492) (Broken!28732 (value!177649 List!37650)) (Broken!28733 (value!177650 List!37650)) (True!11493) (RightBrace!5746) (RightBracket!5746) (Colon!5746) (Null!5746) (Comma!5746) (LeftBracket!5746) (False!11493) (LeftBrace!5746) (ImaginaryLiteralValue!5746 (text!40668 List!37650)) (StringLiteralValue!17238 (value!177651 List!37650)) (EOFValue!5746 (value!177652 List!37650)) (IdentValue!5746 (value!177653 List!37650)) (DelimiterValue!11493 (value!177654 List!37650)) (DedentValue!5746 (value!177655 List!37650)) (NewLineValue!5746 (value!177656 List!37650)) (IntegerValue!17238 (value!177657 (_ BitVec 32)) (text!40669 List!37650)) (IntegerValue!17239 (value!177658 Int) (text!40670 List!37650)) (Times!5746) (Or!5746) (Equal!5746) (Minus!5746) (Broken!28734 (value!177659 List!37650)) (And!5746) (Div!5746) (LessEqual!5746) (Mod!5746) (Concat!16021) (Not!5746) (Plus!5746) (SpaceValue!5746 (value!177660 List!37650)) (IntegerValue!17240 (value!177661 Int) (text!40671 List!37650)) (StringLiteralValue!17239 (text!40672 List!37650)) (FloatLiteralValue!11493 (text!40673 List!37650)) (BytesLiteralValue!5746 (value!177662 List!37650)) (CommentValue!11493 (value!177663 List!37650)) (StringLiteralValue!17240 (value!177664 List!37650)) (ErrorTokenValue!5746 (msg!5807 List!37650)) )
))
(declare-datatypes ((List!37651 0))(
  ( (Nil!37527) (Cons!37527 (h!42947 C!20736) (t!289872 List!37651)) )
))
(declare-datatypes ((IArray!22819 0))(
  ( (IArray!22820 (innerList!11467 List!37651)) )
))
(declare-datatypes ((Conc!11407 0))(
  ( (Node!11407 (left!29347 Conc!11407) (right!29677 Conc!11407) (csize!23044 Int) (cheight!11618 Int)) (Leaf!17776 (xs!14609 IArray!22819) (csize!23045 Int)) (Empty!11407) )
))
(declare-datatypes ((BalanceConc!22428 0))(
  ( (BalanceConc!22429 (c!619882 Conc!11407)) )
))
(declare-datatypes ((Regex!10275 0))(
  ( (ElementMatch!10275 (c!619883 C!20736)) (Concat!16022 (regOne!21062 Regex!10275) (regTwo!21062 Regex!10275)) (EmptyExpr!10275) (Star!10275 (reg!10604 Regex!10275)) (EmptyLang!10275) (Union!10275 (regOne!21063 Regex!10275) (regTwo!21063 Regex!10275)) )
))
(declare-datatypes ((String!42064 0))(
  ( (String!42065 (value!177665 String)) )
))
(declare-datatypes ((TokenValueInjection!10920 0))(
  ( (TokenValueInjection!10921 (toValue!7788 Int) (toChars!7647 Int)) )
))
(declare-datatypes ((Rule!10832 0))(
  ( (Rule!10833 (regex!5516 Regex!10275) (tag!6178 String!42064) (isSeparator!5516 Bool) (transformation!5516 TokenValueInjection!10920)) )
))
(declare-datatypes ((List!37652 0))(
  ( (Nil!37528) (Cons!37528 (h!42948 Rule!10832) (t!289873 List!37652)) )
))
(declare-fun rules!2135 () List!37652)

(get-info :version)

(assert (= (and b!3575991 ((_ is Cons!37528) rules!2135)) b!3576020))

(declare-fun order!20379 () Int)

(declare-fun order!20377 () Int)

(declare-fun dynLambda!16133 (Int Int) Int)

(declare-fun dynLambda!16134 (Int Int) Int)

(assert (=> b!3576022 (< (dynLambda!16133 order!20377 (toValue!7788 (transformation!5516 (h!42948 rules!2135)))) (dynLambda!16134 order!20379 lambda!123581))))

(declare-fun order!20381 () Int)

(declare-fun dynLambda!16135 (Int Int) Int)

(assert (=> b!3576022 (< (dynLambda!16135 order!20381 (toChars!7647 (transformation!5516 (h!42948 rules!2135)))) (dynLambda!16134 order!20379 lambda!123581))))

(assert (=> b!3575991 true))

(declare-fun res!1442380 () Bool)

(declare-fun e!2212147 () Bool)

(assert (=> start!331374 (=> (not res!1442380) (not e!2212147))))

(declare-datatypes ((LexerInterface!5105 0))(
  ( (LexerInterfaceExt!5102 (__x!23710 Int)) (Lexer!5103) )
))
(declare-fun thiss!18206 () LexerInterface!5105)

(assert (=> start!331374 (= res!1442380 ((_ is Lexer!5103) thiss!18206))))

(assert (=> start!331374 e!2212147))

(assert (=> start!331374 true))

(declare-fun e!2212155 () Bool)

(assert (=> start!331374 e!2212155))

(declare-fun e!2212162 () Bool)

(assert (=> start!331374 e!2212162))

(declare-datatypes ((Token!10398 0))(
  ( (Token!10399 (value!177666 TokenValue!5746) (rule!8220 Rule!10832) (size!28619 Int) (originalCharacters!6230 List!37651)) )
))
(declare-fun separatorToken!241 () Token!10398)

(declare-fun e!2212171 () Bool)

(declare-fun inv!50807 (Token!10398) Bool)

(assert (=> start!331374 (and (inv!50807 separatorToken!241) e!2212171)))

(declare-fun e!2212144 () Bool)

(declare-fun tp!1094378 () Bool)

(declare-fun b!3575969 () Bool)

(declare-fun e!2212163 () Bool)

(declare-fun inv!50804 (String!42064) Bool)

(declare-fun inv!50808 (TokenValueInjection!10920) Bool)

(assert (=> b!3575969 (= e!2212163 (and tp!1094378 (inv!50804 (tag!6178 (h!42948 rules!2135))) (inv!50808 (transformation!5516 (h!42948 rules!2135))) e!2212144))))

(declare-fun b!3575970 () Bool)

(declare-fun e!2212140 () Bool)

(declare-fun e!2212164 () Bool)

(assert (=> b!3575970 (= e!2212140 e!2212164)))

(declare-fun res!1442394 () Bool)

(assert (=> b!3575970 (=> (not res!1442394) (not e!2212164))))

(declare-fun lt!1226589 () Rule!10832)

(declare-fun lt!1226624 () List!37651)

(declare-fun matchR!4859 (Regex!10275 List!37651) Bool)

(assert (=> b!3575970 (= res!1442394 (matchR!4859 (regex!5516 lt!1226589) lt!1226624))))

(declare-datatypes ((Option!7703 0))(
  ( (None!7702) (Some!7702 (v!37326 Rule!10832)) )
))
(declare-fun lt!1226629 () Option!7703)

(declare-fun get!12081 (Option!7703) Rule!10832)

(assert (=> b!3575970 (= lt!1226589 (get!12081 lt!1226629))))

(declare-fun b!3575971 () Bool)

(declare-datatypes ((Unit!53549 0))(
  ( (Unit!53550) )
))
(declare-fun e!2212139 () Unit!53549)

(declare-fun Unit!53551 () Unit!53549)

(assert (=> b!3575971 (= e!2212139 Unit!53551)))

(declare-fun b!3575972 () Bool)

(declare-fun res!1442385 () Bool)

(assert (=> b!3575972 (=> (not res!1442385) (not e!2212147))))

(declare-datatypes ((List!37653 0))(
  ( (Nil!37529) (Cons!37529 (h!42949 Token!10398) (t!289874 List!37653)) )
))
(declare-fun tokens!494 () List!37653)

(assert (=> b!3575972 (= res!1442385 (and (not ((_ is Nil!37529) tokens!494)) (not ((_ is Nil!37529) (t!289874 tokens!494)))))))

(declare-fun b!3575973 () Bool)

(declare-fun e!2212148 () Unit!53549)

(declare-fun Unit!53552 () Unit!53549)

(assert (=> b!3575973 (= e!2212148 Unit!53552)))

(declare-fun lt!1226602 () C!20736)

(declare-fun lt!1226603 () Unit!53549)

(declare-fun lt!1226595 () List!37651)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!574 (Regex!10275 List!37651 C!20736) Unit!53549)

(assert (=> b!3575973 (= lt!1226603 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!574 (regex!5516 (rule!8220 (h!42949 (t!289874 tokens!494)))) lt!1226595 lt!1226602))))

(declare-fun res!1442395 () Bool)

(assert (=> b!3575973 (= res!1442395 (not (matchR!4859 (regex!5516 (rule!8220 (h!42949 (t!289874 tokens!494)))) lt!1226595)))))

(declare-fun e!2212146 () Bool)

(assert (=> b!3575973 (=> (not res!1442395) (not e!2212146))))

(assert (=> b!3575973 e!2212146))

(declare-fun b!3575974 () Bool)

(declare-fun res!1442398 () Bool)

(assert (=> b!3575974 (=> (not res!1442398) (not e!2212147))))

(declare-fun rulesInvariant!4502 (LexerInterface!5105 List!37652) Bool)

(assert (=> b!3575974 (= res!1442398 (rulesInvariant!4502 thiss!18206 rules!2135))))

(declare-fun b!3575975 () Bool)

(declare-fun e!2212141 () Bool)

(declare-fun lt!1226614 () Rule!10832)

(assert (=> b!3575975 (= e!2212141 (= (rule!8220 (h!42949 (t!289874 tokens!494))) lt!1226614))))

(declare-fun b!3575976 () Bool)

(declare-fun tp!1094376 () Bool)

(assert (=> b!3575976 (= e!2212155 (and e!2212163 tp!1094376))))

(declare-fun b!3575977 () Bool)

(declare-fun res!1442388 () Bool)

(assert (=> b!3575977 (=> (not res!1442388) (not e!2212147))))

(declare-fun sepAndNonSepRulesDisjointChars!1710 (List!37652 List!37652) Bool)

(assert (=> b!3575977 (= res!1442388 (sepAndNonSepRulesDisjointChars!1710 rules!2135 rules!2135))))

(declare-fun tp!1094375 () Bool)

(declare-fun e!2212167 () Bool)

(declare-fun b!3575978 () Bool)

(assert (=> b!3575978 (= e!2212162 (and (inv!50807 (h!42949 tokens!494)) e!2212167 tp!1094375))))

(declare-fun b!3575979 () Bool)

(assert (=> b!3575979 (= e!2212164 (= (rule!8220 separatorToken!241) lt!1226589))))

(declare-fun b!3575980 () Bool)

(declare-fun e!2212145 () Bool)

(declare-fun e!2212157 () Bool)

(assert (=> b!3575980 (= e!2212145 e!2212157)))

(declare-fun res!1442386 () Bool)

(assert (=> b!3575980 (=> res!1442386 e!2212157)))

(declare-fun lt!1226609 () List!37651)

(declare-fun lt!1226618 () List!37651)

(assert (=> b!3575980 (= res!1442386 (not (= lt!1226609 lt!1226618)))))

(declare-fun lt!1226597 () List!37651)

(declare-fun lt!1226604 () List!37651)

(declare-fun ++!9337 (List!37651 List!37651) List!37651)

(assert (=> b!3575980 (= lt!1226618 (++!9337 (++!9337 lt!1226597 lt!1226624) lt!1226604))))

(declare-fun b!3575981 () Bool)

(declare-fun e!2212143 () Bool)

(declare-datatypes ((IArray!22821 0))(
  ( (IArray!22822 (innerList!11468 List!37653)) )
))
(declare-datatypes ((Conc!11408 0))(
  ( (Node!11408 (left!29348 Conc!11408) (right!29678 Conc!11408) (csize!23046 Int) (cheight!11619 Int)) (Leaf!17777 (xs!14610 IArray!22821) (csize!23047 Int)) (Empty!11408) )
))
(declare-datatypes ((BalanceConc!22430 0))(
  ( (BalanceConc!22431 (c!619884 Conc!11408)) )
))
(declare-datatypes ((tuple2!37452 0))(
  ( (tuple2!37453 (_1!21860 BalanceConc!22430) (_2!21860 BalanceConc!22428)) )
))
(declare-fun lt!1226585 () tuple2!37452)

(declare-fun isEmpty!22071 (BalanceConc!22428) Bool)

(assert (=> b!3575981 (= e!2212143 (not (isEmpty!22071 (_2!21860 lt!1226585))))))

(declare-fun b!3575982 () Bool)

(declare-fun e!2212149 () Bool)

(declare-fun lt!1226608 () tuple2!37452)

(assert (=> b!3575982 (= e!2212149 (isEmpty!22071 (_2!21860 lt!1226608)))))

(declare-fun b!3575983 () Bool)

(declare-fun res!1442384 () Bool)

(declare-fun e!2212151 () Bool)

(assert (=> b!3575983 (=> res!1442384 e!2212151)))

(declare-fun rulesProduceIndividualToken!2597 (LexerInterface!5105 List!37652 Token!10398) Bool)

(assert (=> b!3575983 (= res!1442384 (not (rulesProduceIndividualToken!2597 thiss!18206 rules!2135 (h!42949 tokens!494))))))

(declare-fun b!3575984 () Bool)

(declare-fun res!1442383 () Bool)

(assert (=> b!3575984 (=> (not res!1442383) (not e!2212147))))

(assert (=> b!3575984 (= res!1442383 (isSeparator!5516 (rule!8220 separatorToken!241)))))

(declare-fun b!3575985 () Bool)

(declare-fun res!1442376 () Bool)

(assert (=> b!3575985 (=> (not res!1442376) (not e!2212147))))

(declare-fun rulesProduceEachTokenIndividually!1556 (LexerInterface!5105 List!37652 BalanceConc!22430) Bool)

(declare-fun seqFromList!4085 (List!37653) BalanceConc!22430)

(assert (=> b!3575985 (= res!1442376 (rulesProduceEachTokenIndividually!1556 thiss!18206 rules!2135 (seqFromList!4085 tokens!494)))))

(declare-fun b!3575986 () Bool)

(declare-fun e!2212170 () Bool)

(assert (=> b!3575986 (= e!2212170 e!2212145)))

(declare-fun res!1442379 () Bool)

(assert (=> b!3575986 (=> res!1442379 e!2212145)))

(declare-fun printWithSeparatorTokenList!392 (LexerInterface!5105 List!37653 Token!10398) List!37651)

(assert (=> b!3575986 (= res!1442379 (not (= lt!1226604 (++!9337 (++!9337 lt!1226595 lt!1226624) (printWithSeparatorTokenList!392 thiss!18206 (t!289874 (t!289874 tokens!494)) separatorToken!241)))))))

(declare-fun list!13773 (BalanceConc!22428) List!37651)

(declare-fun charsOf!3530 (Token!10398) BalanceConc!22428)

(assert (=> b!3575986 (= lt!1226595 (list!13773 (charsOf!3530 (h!42949 (t!289874 tokens!494)))))))

(declare-fun lt!1226591 () List!37651)

(assert (=> b!3575986 (= lt!1226591 (++!9337 lt!1226624 lt!1226604))))

(assert (=> b!3575986 (= lt!1226624 (list!13773 (charsOf!3530 separatorToken!241)))))

(assert (=> b!3575986 (= lt!1226604 (printWithSeparatorTokenList!392 thiss!18206 (t!289874 tokens!494) separatorToken!241))))

(assert (=> b!3575986 (= lt!1226609 (printWithSeparatorTokenList!392 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3575987 () Bool)

(assert (=> b!3575987 (= e!2212146 false)))

(declare-fun b!3575988 () Bool)

(declare-fun e!2212158 () Bool)

(declare-fun e!2212156 () Bool)

(assert (=> b!3575988 (= e!2212158 e!2212156)))

(declare-fun res!1442393 () Bool)

(assert (=> b!3575988 (=> (not res!1442393) (not e!2212156))))

(declare-fun lt!1226607 () Rule!10832)

(assert (=> b!3575988 (= res!1442393 (matchR!4859 (regex!5516 lt!1226607) lt!1226597))))

(declare-fun lt!1226592 () Option!7703)

(assert (=> b!3575988 (= lt!1226607 (get!12081 lt!1226592))))

(declare-fun b!3575989 () Bool)

(declare-fun Unit!53553 () Unit!53549)

(assert (=> b!3575989 (= e!2212148 Unit!53553)))

(declare-fun res!1442378 () Bool)

(assert (=> b!3575990 (=> (not res!1442378) (not e!2212147))))

(declare-fun forall!8124 (List!37653 Int) Bool)

(assert (=> b!3575990 (= res!1442378 (forall!8124 tokens!494 lambda!123580))))

(declare-fun e!2212159 () Bool)

(assert (=> b!3575991 (= e!2212159 true)))

(declare-fun lt!1226600 () Bool)

(assert (=> b!3575991 (= lt!1226600 (rulesProduceEachTokenIndividually!1556 thiss!18206 rules!2135 (seqFromList!4085 (t!289874 tokens!494))))))

(declare-datatypes ((tuple2!37454 0))(
  ( (tuple2!37455 (_1!21861 Token!10398) (_2!21861 List!37651)) )
))
(declare-datatypes ((Option!7704 0))(
  ( (None!7703) (Some!7703 (v!37327 tuple2!37454)) )
))
(declare-fun maxPrefix!2645 (LexerInterface!5105 List!37652 List!37651) Option!7704)

(assert (=> b!3575991 (= (maxPrefix!2645 thiss!18206 rules!2135 lt!1226591) (Some!7703 (tuple2!37455 separatorToken!241 lt!1226604)))))

(declare-fun lt!1226630 () Unit!53549)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!272 (LexerInterface!5105 List!37652 Token!10398 Rule!10832 List!37651 Rule!10832) Unit!53549)

(assert (=> b!3575991 (= lt!1226630 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!272 thiss!18206 rules!2135 separatorToken!241 (rule!8220 separatorToken!241) lt!1226604 (rule!8220 (h!42949 (t!289874 tokens!494)))))))

(declare-fun lt!1226593 () List!37651)

(declare-fun contains!7110 (List!37651 C!20736) Bool)

(assert (=> b!3575991 (not (contains!7110 lt!1226593 lt!1226602))))

(declare-fun lt!1226611 () Unit!53549)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!198 (LexerInterface!5105 List!37652 List!37652 Rule!10832 Rule!10832 C!20736) Unit!53549)

(assert (=> b!3575991 (= lt!1226611 (lemmaSepRuleNotContainsCharContainedInANonSepRule!198 thiss!18206 rules!2135 rules!2135 (rule!8220 (h!42949 (t!289874 tokens!494))) (rule!8220 separatorToken!241) lt!1226602))))

(declare-fun lt!1226613 () Unit!53549)

(assert (=> b!3575991 (= lt!1226613 e!2212148)))

(declare-fun c!619880 () Bool)

(declare-fun usedCharacters!750 (Regex!10275) List!37651)

(assert (=> b!3575991 (= c!619880 (not (contains!7110 (usedCharacters!750 (regex!5516 (rule!8220 (h!42949 (t!289874 tokens!494))))) lt!1226602)))))

(declare-fun head!7449 (List!37651) C!20736)

(assert (=> b!3575991 (= lt!1226602 (head!7449 lt!1226595))))

(declare-fun maxPrefixOneRule!1812 (LexerInterface!5105 Rule!10832 List!37651) Option!7704)

(declare-fun apply!9034 (TokenValueInjection!10920 BalanceConc!22428) TokenValue!5746)

(declare-fun seqFromList!4086 (List!37651) BalanceConc!22428)

(declare-fun size!28620 (List!37651) Int)

(assert (=> b!3575991 (= (maxPrefixOneRule!1812 thiss!18206 (rule!8220 (h!42949 (t!289874 tokens!494))) lt!1226595) (Some!7703 (tuple2!37455 (Token!10399 (apply!9034 (transformation!5516 (rule!8220 (h!42949 (t!289874 tokens!494)))) (seqFromList!4086 lt!1226595)) (rule!8220 (h!42949 (t!289874 tokens!494))) (size!28620 lt!1226595) lt!1226595) Nil!37527)))))

(declare-fun lt!1226584 () Unit!53549)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!905 (LexerInterface!5105 List!37652 List!37651 List!37651 List!37651 Rule!10832) Unit!53549)

(assert (=> b!3575991 (= lt!1226584 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!905 thiss!18206 rules!2135 lt!1226595 lt!1226595 Nil!37527 (rule!8220 (h!42949 (t!289874 tokens!494)))))))

(declare-fun e!2212138 () Bool)

(assert (=> b!3575991 e!2212138))

(declare-fun res!1442377 () Bool)

(assert (=> b!3575991 (=> (not res!1442377) (not e!2212138))))

(declare-fun lt!1226596 () Option!7703)

(declare-fun isDefined!5942 (Option!7703) Bool)

(assert (=> b!3575991 (= res!1442377 (isDefined!5942 lt!1226596))))

(declare-fun getRuleFromTag!1159 (LexerInterface!5105 List!37652 String!42064) Option!7703)

(assert (=> b!3575991 (= lt!1226596 (getRuleFromTag!1159 thiss!18206 rules!2135 (tag!6178 (rule!8220 (h!42949 (t!289874 tokens!494))))))))

(declare-fun lt!1226626 () Unit!53549)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1159 (LexerInterface!5105 List!37652 List!37651 Token!10398) Unit!53549)

(assert (=> b!3575991 (= lt!1226626 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1159 thiss!18206 rules!2135 lt!1226595 (h!42949 (t!289874 tokens!494))))))

(declare-fun lt!1226587 () Bool)

(assert (=> b!3575991 lt!1226587))

(declare-fun lt!1226605 () Unit!53549)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1094 (LexerInterface!5105 List!37652 List!37653 Token!10398) Unit!53549)

(assert (=> b!3575991 (= lt!1226605 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1094 thiss!18206 rules!2135 tokens!494 (h!42949 (t!289874 tokens!494))))))

(declare-fun lt!1226612 () List!37651)

(assert (=> b!3575991 (= (maxPrefix!2645 thiss!18206 rules!2135 lt!1226612) (Some!7703 (tuple2!37455 (h!42949 tokens!494) lt!1226591)))))

(declare-fun lt!1226586 () Unit!53549)

(assert (=> b!3575991 (= lt!1226586 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!272 thiss!18206 rules!2135 (h!42949 tokens!494) (rule!8220 (h!42949 tokens!494)) lt!1226591 (rule!8220 separatorToken!241)))))

(declare-fun lt!1226627 () C!20736)

(assert (=> b!3575991 (not (contains!7110 (usedCharacters!750 (regex!5516 (rule!8220 (h!42949 tokens!494)))) lt!1226627))))

(declare-fun lt!1226590 () Unit!53549)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!316 (LexerInterface!5105 List!37652 List!37652 Rule!10832 Rule!10832 C!20736) Unit!53549)

(assert (=> b!3575991 (= lt!1226590 (lemmaNonSepRuleNotContainsCharContainedInASepRule!316 thiss!18206 rules!2135 rules!2135 (rule!8220 (h!42949 tokens!494)) (rule!8220 separatorToken!241) lt!1226627))))

(declare-fun lt!1226615 () Unit!53549)

(declare-fun forallContained!1463 (List!37653 Int Token!10398) Unit!53549)

(assert (=> b!3575991 (= lt!1226615 (forallContained!1463 tokens!494 lambda!123581 (h!42949 (t!289874 tokens!494))))))

(declare-fun lt!1226625 () Bool)

(assert (=> b!3575991 (= lt!1226587 (not lt!1226625))))

(assert (=> b!3575991 (= lt!1226587 (rulesProduceIndividualToken!2597 thiss!18206 rules!2135 (h!42949 (t!289874 tokens!494))))))

(assert (=> b!3575991 (= lt!1226625 e!2212143)))

(declare-fun res!1442373 () Bool)

(assert (=> b!3575991 (=> res!1442373 e!2212143)))

(declare-fun size!28621 (BalanceConc!22430) Int)

(assert (=> b!3575991 (= res!1442373 (not (= (size!28621 (_1!21860 lt!1226585)) 1)))))

(declare-fun lt!1226623 () BalanceConc!22428)

(declare-fun lex!2431 (LexerInterface!5105 List!37652 BalanceConc!22428) tuple2!37452)

(assert (=> b!3575991 (= lt!1226585 (lex!2431 thiss!18206 rules!2135 lt!1226623))))

(declare-fun lt!1226617 () BalanceConc!22430)

(declare-fun printTailRec!1600 (LexerInterface!5105 BalanceConc!22430 Int BalanceConc!22428) BalanceConc!22428)

(assert (=> b!3575991 (= lt!1226623 (printTailRec!1600 thiss!18206 lt!1226617 0 (BalanceConc!22429 Empty!11407)))))

(declare-fun print!2170 (LexerInterface!5105 BalanceConc!22430) BalanceConc!22428)

(assert (=> b!3575991 (= lt!1226623 (print!2170 thiss!18206 lt!1226617))))

(declare-fun singletonSeq!2612 (Token!10398) BalanceConc!22430)

(assert (=> b!3575991 (= lt!1226617 (singletonSeq!2612 (h!42949 (t!289874 tokens!494))))))

(assert (=> b!3575991 e!2212149))

(declare-fun res!1442375 () Bool)

(assert (=> b!3575991 (=> (not res!1442375) (not e!2212149))))

(assert (=> b!3575991 (= res!1442375 (= (size!28621 (_1!21860 lt!1226608)) 1))))

(declare-fun lt!1226619 () BalanceConc!22428)

(assert (=> b!3575991 (= lt!1226608 (lex!2431 thiss!18206 rules!2135 lt!1226619))))

(declare-fun lt!1226581 () BalanceConc!22430)

(assert (=> b!3575991 (= lt!1226619 (printTailRec!1600 thiss!18206 lt!1226581 0 (BalanceConc!22429 Empty!11407)))))

(assert (=> b!3575991 (= lt!1226619 (print!2170 thiss!18206 lt!1226581))))

(assert (=> b!3575991 (= lt!1226581 (singletonSeq!2612 separatorToken!241))))

(declare-fun lt!1226588 () Unit!53549)

(assert (=> b!3575991 (= lt!1226588 e!2212139)))

(declare-fun c!619881 () Bool)

(assert (=> b!3575991 (= c!619881 (not (contains!7110 lt!1226593 lt!1226627)))))

(assert (=> b!3575991 (= lt!1226627 (head!7449 lt!1226624))))

(assert (=> b!3575991 (= lt!1226593 (usedCharacters!750 (regex!5516 (rule!8220 separatorToken!241))))))

(assert (=> b!3575991 e!2212140))

(declare-fun res!1442387 () Bool)

(assert (=> b!3575991 (=> (not res!1442387) (not e!2212140))))

(assert (=> b!3575991 (= res!1442387 (isDefined!5942 lt!1226629))))

(assert (=> b!3575991 (= lt!1226629 (getRuleFromTag!1159 thiss!18206 rules!2135 (tag!6178 (rule!8220 separatorToken!241))))))

(declare-fun lt!1226621 () Unit!53549)

(assert (=> b!3575991 (= lt!1226621 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1159 thiss!18206 rules!2135 lt!1226624 separatorToken!241))))

(declare-fun lt!1226599 () BalanceConc!22428)

(assert (=> b!3575991 (= (maxPrefixOneRule!1812 thiss!18206 (rule!8220 (h!42949 tokens!494)) lt!1226597) (Some!7703 (tuple2!37455 (Token!10399 (apply!9034 (transformation!5516 (rule!8220 (h!42949 tokens!494))) lt!1226599) (rule!8220 (h!42949 tokens!494)) (size!28620 lt!1226597) lt!1226597) Nil!37527)))))

(declare-fun lt!1226622 () Unit!53549)

(assert (=> b!3575991 (= lt!1226622 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!905 thiss!18206 rules!2135 lt!1226597 lt!1226597 Nil!37527 (rule!8220 (h!42949 tokens!494))))))

(assert (=> b!3575991 e!2212158))

(declare-fun res!1442399 () Bool)

(assert (=> b!3575991 (=> (not res!1442399) (not e!2212158))))

(assert (=> b!3575991 (= res!1442399 (isDefined!5942 lt!1226592))))

(assert (=> b!3575991 (= lt!1226592 (getRuleFromTag!1159 thiss!18206 rules!2135 (tag!6178 (rule!8220 (h!42949 tokens!494)))))))

(declare-fun lt!1226601 () Unit!53549)

(assert (=> b!3575991 (= lt!1226601 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1159 thiss!18206 rules!2135 lt!1226597 (h!42949 tokens!494)))))

(declare-fun lt!1226628 () Unit!53549)

(assert (=> b!3575991 (= lt!1226628 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1094 thiss!18206 rules!2135 tokens!494 (h!42949 tokens!494)))))

(declare-fun b!3575992 () Bool)

(assert (=> b!3575992 (= e!2212138 e!2212141)))

(declare-fun res!1442390 () Bool)

(assert (=> b!3575992 (=> (not res!1442390) (not e!2212141))))

(assert (=> b!3575992 (= res!1442390 (matchR!4859 (regex!5516 lt!1226614) lt!1226595))))

(assert (=> b!3575992 (= lt!1226614 (get!12081 lt!1226596))))

(declare-fun b!3575993 () Bool)

(assert (=> b!3575993 (= e!2212156 (= (rule!8220 (h!42949 tokens!494)) lt!1226607))))

(declare-fun b!3575994 () Bool)

(declare-fun res!1442371 () Bool)

(assert (=> b!3575994 (=> (not res!1442371) (not e!2212147))))

(declare-fun isEmpty!22072 (List!37652) Bool)

(assert (=> b!3575994 (= res!1442371 (not (isEmpty!22072 rules!2135)))))

(declare-fun b!3575995 () Bool)

(declare-fun res!1442397 () Bool)

(assert (=> b!3575995 (=> (not res!1442397) (not e!2212149))))

(declare-fun apply!9035 (BalanceConc!22430 Int) Token!10398)

(assert (=> b!3575995 (= res!1442397 (= (apply!9035 (_1!21860 lt!1226608) 0) separatorToken!241))))

(declare-fun b!3575996 () Bool)

(declare-fun e!2212168 () Bool)

(assert (=> b!3575996 (= e!2212168 e!2212151)))

(declare-fun res!1442396 () Bool)

(assert (=> b!3575996 (=> res!1442396 e!2212151)))

(declare-fun lt!1226598 () List!37651)

(declare-fun lt!1226620 () List!37651)

(assert (=> b!3575996 (= res!1442396 (or (not (= lt!1226620 lt!1226597)) (not (= lt!1226598 lt!1226597))))))

(assert (=> b!3575996 (= lt!1226597 (list!13773 (charsOf!3530 (h!42949 tokens!494))))))

(declare-fun tp!1094366 () Bool)

(declare-fun e!2212152 () Bool)

(declare-fun b!3575997 () Bool)

(declare-fun inv!21 (TokenValue!5746) Bool)

(assert (=> b!3575997 (= e!2212167 (and (inv!21 (value!177666 (h!42949 tokens!494))) e!2212152 tp!1094366))))

(declare-fun b!3575998 () Bool)

(declare-fun e!2212161 () Bool)

(declare-fun e!2212153 () Bool)

(declare-fun tp!1094370 () Bool)

(assert (=> b!3575998 (= e!2212161 (and tp!1094370 (inv!50804 (tag!6178 (rule!8220 separatorToken!241))) (inv!50808 (transformation!5516 (rule!8220 separatorToken!241))) e!2212153))))

(declare-fun e!2212142 () Bool)

(assert (=> b!3575999 (= e!2212142 (and tp!1094377 tp!1094367))))

(declare-fun b!3576000 () Bool)

(assert (=> b!3576000 (= e!2212157 e!2212159)))

(declare-fun res!1442372 () Bool)

(assert (=> b!3576000 (=> res!1442372 e!2212159)))

(assert (=> b!3576000 (= res!1442372 (not (= lt!1226609 lt!1226612)))))

(assert (=> b!3576000 (= lt!1226618 lt!1226612)))

(assert (=> b!3576000 (= lt!1226612 (++!9337 lt!1226597 lt!1226591))))

(declare-fun lt!1226610 () Unit!53549)

(declare-fun lemmaConcatAssociativity!2058 (List!37651 List!37651 List!37651) Unit!53549)

(assert (=> b!3576000 (= lt!1226610 (lemmaConcatAssociativity!2058 lt!1226597 lt!1226624 lt!1226604))))

(assert (=> b!3576001 (= e!2212144 (and tp!1094371 tp!1094374))))

(declare-fun b!3576002 () Bool)

(declare-fun e!2212160 () Bool)

(assert (=> b!3576002 (= e!2212151 e!2212160)))

(declare-fun res!1442392 () Bool)

(assert (=> b!3576002 (=> res!1442392 e!2212160)))

(declare-fun isEmpty!22073 (BalanceConc!22430) Bool)

(assert (=> b!3576002 (= res!1442392 (isEmpty!22073 (_1!21860 (lex!2431 thiss!18206 rules!2135 lt!1226599))))))

(assert (=> b!3576002 (= lt!1226599 (seqFromList!4086 lt!1226597))))

(declare-fun b!3576003 () Bool)

(declare-fun res!1442374 () Bool)

(assert (=> b!3576003 (=> res!1442374 e!2212143)))

(assert (=> b!3576003 (= res!1442374 (not (= (apply!9035 (_1!21860 lt!1226585) 0) (h!42949 (t!289874 tokens!494)))))))

(declare-fun b!3576004 () Bool)

(assert (=> b!3576004 (= e!2212147 (not e!2212168))))

(declare-fun res!1442389 () Bool)

(assert (=> b!3576004 (=> res!1442389 e!2212168)))

(assert (=> b!3576004 (= res!1442389 (not (= lt!1226598 lt!1226620)))))

(declare-fun printList!1653 (LexerInterface!5105 List!37653) List!37651)

(assert (=> b!3576004 (= lt!1226620 (printList!1653 thiss!18206 (Cons!37529 (h!42949 tokens!494) Nil!37529)))))

(declare-fun lt!1226582 () BalanceConc!22428)

(assert (=> b!3576004 (= lt!1226598 (list!13773 lt!1226582))))

(declare-fun lt!1226583 () BalanceConc!22430)

(assert (=> b!3576004 (= lt!1226582 (printTailRec!1600 thiss!18206 lt!1226583 0 (BalanceConc!22429 Empty!11407)))))

(assert (=> b!3576004 (= lt!1226582 (print!2170 thiss!18206 lt!1226583))))

(assert (=> b!3576004 (= lt!1226583 (singletonSeq!2612 (h!42949 tokens!494)))))

(assert (=> b!3576005 (= e!2212153 (and tp!1094373 tp!1094369))))

(declare-fun b!3576006 () Bool)

(declare-fun Unit!53554 () Unit!53549)

(assert (=> b!3576006 (= e!2212139 Unit!53554)))

(declare-fun lt!1226606 () Unit!53549)

(assert (=> b!3576006 (= lt!1226606 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!574 (regex!5516 (rule!8220 separatorToken!241)) lt!1226624 lt!1226627))))

(declare-fun res!1442382 () Bool)

(assert (=> b!3576006 (= res!1442382 (not (matchR!4859 (regex!5516 (rule!8220 separatorToken!241)) lt!1226624)))))

(declare-fun e!2212137 () Bool)

(assert (=> b!3576006 (=> (not res!1442382) (not e!2212137))))

(assert (=> b!3576006 e!2212137))

(declare-fun tp!1094372 () Bool)

(declare-fun b!3576007 () Bool)

(assert (=> b!3576007 (= e!2212171 (and (inv!21 (value!177666 separatorToken!241)) e!2212161 tp!1094372))))

(declare-fun b!3576008 () Bool)

(assert (=> b!3576008 (= e!2212160 e!2212170)))

(declare-fun res!1442381 () Bool)

(assert (=> b!3576008 (=> res!1442381 e!2212170)))

(assert (=> b!3576008 (= res!1442381 (or (isSeparator!5516 (rule!8220 (h!42949 tokens!494))) (isSeparator!5516 (rule!8220 (h!42949 (t!289874 tokens!494))))))))

(declare-fun lt!1226616 () Unit!53549)

(assert (=> b!3576008 (= lt!1226616 (forallContained!1463 tokens!494 lambda!123580 (h!42949 (t!289874 tokens!494))))))

(declare-fun lt!1226594 () Unit!53549)

(assert (=> b!3576008 (= lt!1226594 (forallContained!1463 tokens!494 lambda!123580 (h!42949 tokens!494)))))

(declare-fun b!3576009 () Bool)

(assert (=> b!3576009 (= e!2212137 false)))

(declare-fun b!3576010 () Bool)

(declare-fun res!1442391 () Bool)

(assert (=> b!3576010 (=> (not res!1442391) (not e!2212147))))

(assert (=> b!3576010 (= res!1442391 (rulesProduceIndividualToken!2597 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun tp!1094368 () Bool)

(declare-fun b!3576011 () Bool)

(assert (=> b!3576011 (= e!2212152 (and tp!1094368 (inv!50804 (tag!6178 (rule!8220 (h!42949 tokens!494)))) (inv!50808 (transformation!5516 (rule!8220 (h!42949 tokens!494)))) e!2212142))))

(assert (= (and start!331374 res!1442380) b!3575994))

(assert (= (and b!3575994 res!1442371) b!3575974))

(assert (= (and b!3575974 res!1442398) b!3575985))

(assert (= (and b!3575985 res!1442376) b!3576010))

(assert (= (and b!3576010 res!1442391) b!3575984))

(assert (= (and b!3575984 res!1442383) b!3575990))

(assert (= (and b!3575990 res!1442378) b!3575977))

(assert (= (and b!3575977 res!1442388) b!3575972))

(assert (= (and b!3575972 res!1442385) b!3576004))

(assert (= (and b!3576004 (not res!1442389)) b!3575996))

(assert (= (and b!3575996 (not res!1442396)) b!3575983))

(assert (= (and b!3575983 (not res!1442384)) b!3576002))

(assert (= (and b!3576002 (not res!1442392)) b!3576008))

(assert (= (and b!3576008 (not res!1442381)) b!3575986))

(assert (= (and b!3575986 (not res!1442379)) b!3575980))

(assert (= (and b!3575980 (not res!1442386)) b!3576000))

(assert (= (and b!3576000 (not res!1442372)) b!3575991))

(assert (= (and b!3575991 res!1442399) b!3575988))

(assert (= (and b!3575988 res!1442393) b!3575993))

(assert (= (and b!3575991 res!1442387) b!3575970))

(assert (= (and b!3575970 res!1442394) b!3575979))

(assert (= (and b!3575991 c!619881) b!3576006))

(assert (= (and b!3575991 (not c!619881)) b!3575971))

(assert (= (and b!3576006 res!1442382) b!3576009))

(assert (= (and b!3575991 res!1442375) b!3575995))

(assert (= (and b!3575995 res!1442397) b!3575982))

(assert (= (and b!3575991 (not res!1442373)) b!3576003))

(assert (= (and b!3576003 (not res!1442374)) b!3575981))

(assert (= (and b!3575991 res!1442377) b!3575992))

(assert (= (and b!3575992 res!1442390) b!3575975))

(assert (= (and b!3575991 c!619880) b!3575973))

(assert (= (and b!3575991 (not c!619880)) b!3575989))

(assert (= (and b!3575973 res!1442395) b!3575987))

(assert (= b!3575969 b!3576001))

(assert (= b!3575976 b!3575969))

(assert (= (and start!331374 ((_ is Cons!37528) rules!2135)) b!3575976))

(assert (= b!3576011 b!3575999))

(assert (= b!3575997 b!3576011))

(assert (= b!3575978 b!3575997))

(assert (= (and start!331374 ((_ is Cons!37529) tokens!494)) b!3575978))

(assert (= b!3575998 b!3576005))

(assert (= b!3576007 b!3575998))

(assert (= start!331374 b!3576007))

(declare-fun m!4068431 () Bool)

(assert (=> b!3575982 m!4068431))

(declare-fun m!4068433 () Bool)

(assert (=> b!3575995 m!4068433))

(declare-fun m!4068435 () Bool)

(assert (=> b!3576004 m!4068435))

(declare-fun m!4068437 () Bool)

(assert (=> b!3576004 m!4068437))

(declare-fun m!4068439 () Bool)

(assert (=> b!3576004 m!4068439))

(declare-fun m!4068441 () Bool)

(assert (=> b!3576004 m!4068441))

(declare-fun m!4068443 () Bool)

(assert (=> b!3576004 m!4068443))

(declare-fun m!4068445 () Bool)

(assert (=> start!331374 m!4068445))

(declare-fun m!4068447 () Bool)

(assert (=> b!3576010 m!4068447))

(declare-fun m!4068449 () Bool)

(assert (=> b!3575973 m!4068449))

(declare-fun m!4068451 () Bool)

(assert (=> b!3575973 m!4068451))

(declare-fun m!4068453 () Bool)

(assert (=> b!3575978 m!4068453))

(declare-fun m!4068455 () Bool)

(assert (=> b!3575969 m!4068455))

(declare-fun m!4068457 () Bool)

(assert (=> b!3575969 m!4068457))

(declare-fun m!4068459 () Bool)

(assert (=> b!3576002 m!4068459))

(declare-fun m!4068461 () Bool)

(assert (=> b!3576002 m!4068461))

(declare-fun m!4068463 () Bool)

(assert (=> b!3576002 m!4068463))

(declare-fun m!4068465 () Bool)

(assert (=> b!3575974 m!4068465))

(declare-fun m!4068467 () Bool)

(assert (=> b!3575977 m!4068467))

(declare-fun m!4068469 () Bool)

(assert (=> b!3575981 m!4068469))

(declare-fun m!4068471 () Bool)

(assert (=> b!3576011 m!4068471))

(declare-fun m!4068473 () Bool)

(assert (=> b!3576011 m!4068473))

(declare-fun m!4068475 () Bool)

(assert (=> b!3576003 m!4068475))

(declare-fun m!4068477 () Bool)

(assert (=> b!3575991 m!4068477))

(declare-fun m!4068479 () Bool)

(assert (=> b!3575991 m!4068479))

(declare-fun m!4068481 () Bool)

(assert (=> b!3575991 m!4068481))

(declare-fun m!4068483 () Bool)

(assert (=> b!3575991 m!4068483))

(declare-fun m!4068485 () Bool)

(assert (=> b!3575991 m!4068485))

(declare-fun m!4068487 () Bool)

(assert (=> b!3575991 m!4068487))

(declare-fun m!4068489 () Bool)

(assert (=> b!3575991 m!4068489))

(declare-fun m!4068491 () Bool)

(assert (=> b!3575991 m!4068491))

(declare-fun m!4068493 () Bool)

(assert (=> b!3575991 m!4068493))

(declare-fun m!4068495 () Bool)

(assert (=> b!3575991 m!4068495))

(declare-fun m!4068497 () Bool)

(assert (=> b!3575991 m!4068497))

(declare-fun m!4068499 () Bool)

(assert (=> b!3575991 m!4068499))

(declare-fun m!4068501 () Bool)

(assert (=> b!3575991 m!4068501))

(declare-fun m!4068503 () Bool)

(assert (=> b!3575991 m!4068503))

(declare-fun m!4068505 () Bool)

(assert (=> b!3575991 m!4068505))

(declare-fun m!4068507 () Bool)

(assert (=> b!3575991 m!4068507))

(declare-fun m!4068509 () Bool)

(assert (=> b!3575991 m!4068509))

(declare-fun m!4068511 () Bool)

(assert (=> b!3575991 m!4068511))

(assert (=> b!3575991 m!4068479))

(declare-fun m!4068513 () Bool)

(assert (=> b!3575991 m!4068513))

(declare-fun m!4068515 () Bool)

(assert (=> b!3575991 m!4068515))

(assert (=> b!3575991 m!4068493))

(declare-fun m!4068517 () Bool)

(assert (=> b!3575991 m!4068517))

(declare-fun m!4068519 () Bool)

(assert (=> b!3575991 m!4068519))

(declare-fun m!4068521 () Bool)

(assert (=> b!3575991 m!4068521))

(declare-fun m!4068523 () Bool)

(assert (=> b!3575991 m!4068523))

(declare-fun m!4068525 () Bool)

(assert (=> b!3575991 m!4068525))

(declare-fun m!4068527 () Bool)

(assert (=> b!3575991 m!4068527))

(declare-fun m!4068529 () Bool)

(assert (=> b!3575991 m!4068529))

(assert (=> b!3575991 m!4068489))

(declare-fun m!4068531 () Bool)

(assert (=> b!3575991 m!4068531))

(declare-fun m!4068533 () Bool)

(assert (=> b!3575991 m!4068533))

(declare-fun m!4068535 () Bool)

(assert (=> b!3575991 m!4068535))

(declare-fun m!4068537 () Bool)

(assert (=> b!3575991 m!4068537))

(declare-fun m!4068539 () Bool)

(assert (=> b!3575991 m!4068539))

(declare-fun m!4068541 () Bool)

(assert (=> b!3575991 m!4068541))

(declare-fun m!4068543 () Bool)

(assert (=> b!3575991 m!4068543))

(declare-fun m!4068545 () Bool)

(assert (=> b!3575991 m!4068545))

(declare-fun m!4068547 () Bool)

(assert (=> b!3575991 m!4068547))

(declare-fun m!4068549 () Bool)

(assert (=> b!3575991 m!4068549))

(declare-fun m!4068551 () Bool)

(assert (=> b!3575991 m!4068551))

(declare-fun m!4068553 () Bool)

(assert (=> b!3575991 m!4068553))

(declare-fun m!4068555 () Bool)

(assert (=> b!3575991 m!4068555))

(declare-fun m!4068557 () Bool)

(assert (=> b!3575991 m!4068557))

(declare-fun m!4068559 () Bool)

(assert (=> b!3575991 m!4068559))

(assert (=> b!3575991 m!4068525))

(declare-fun m!4068561 () Bool)

(assert (=> b!3575991 m!4068561))

(declare-fun m!4068563 () Bool)

(assert (=> b!3575991 m!4068563))

(declare-fun m!4068565 () Bool)

(assert (=> b!3575991 m!4068565))

(declare-fun m!4068567 () Bool)

(assert (=> b!3575991 m!4068567))

(declare-fun m!4068569 () Bool)

(assert (=> b!3575991 m!4068569))

(declare-fun m!4068571 () Bool)

(assert (=> b!3575991 m!4068571))

(declare-fun m!4068573 () Bool)

(assert (=> b!3575991 m!4068573))

(declare-fun m!4068575 () Bool)

(assert (=> b!3575990 m!4068575))

(declare-fun m!4068577 () Bool)

(assert (=> b!3575983 m!4068577))

(declare-fun m!4068579 () Bool)

(assert (=> b!3576000 m!4068579))

(declare-fun m!4068581 () Bool)

(assert (=> b!3576000 m!4068581))

(declare-fun m!4068583 () Bool)

(assert (=> b!3575997 m!4068583))

(declare-fun m!4068585 () Bool)

(assert (=> b!3576006 m!4068585))

(declare-fun m!4068587 () Bool)

(assert (=> b!3576006 m!4068587))

(declare-fun m!4068589 () Bool)

(assert (=> b!3575970 m!4068589))

(declare-fun m!4068591 () Bool)

(assert (=> b!3575970 m!4068591))

(declare-fun m!4068593 () Bool)

(assert (=> b!3575985 m!4068593))

(assert (=> b!3575985 m!4068593))

(declare-fun m!4068595 () Bool)

(assert (=> b!3575985 m!4068595))

(declare-fun m!4068597 () Bool)

(assert (=> b!3575980 m!4068597))

(assert (=> b!3575980 m!4068597))

(declare-fun m!4068599 () Bool)

(assert (=> b!3575980 m!4068599))

(declare-fun m!4068601 () Bool)

(assert (=> b!3575996 m!4068601))

(assert (=> b!3575996 m!4068601))

(declare-fun m!4068603 () Bool)

(assert (=> b!3575996 m!4068603))

(declare-fun m!4068605 () Bool)

(assert (=> b!3576008 m!4068605))

(declare-fun m!4068607 () Bool)

(assert (=> b!3576008 m!4068607))

(declare-fun m!4068609 () Bool)

(assert (=> b!3575998 m!4068609))

(declare-fun m!4068611 () Bool)

(assert (=> b!3575998 m!4068611))

(declare-fun m!4068613 () Bool)

(assert (=> b!3575992 m!4068613))

(declare-fun m!4068615 () Bool)

(assert (=> b!3575992 m!4068615))

(declare-fun m!4068617 () Bool)

(assert (=> b!3575994 m!4068617))

(declare-fun m!4068619 () Bool)

(assert (=> b!3576007 m!4068619))

(declare-fun m!4068621 () Bool)

(assert (=> b!3575988 m!4068621))

(declare-fun m!4068623 () Bool)

(assert (=> b!3575988 m!4068623))

(declare-fun m!4068625 () Bool)

(assert (=> b!3575986 m!4068625))

(declare-fun m!4068627 () Bool)

(assert (=> b!3575986 m!4068627))

(declare-fun m!4068629 () Bool)

(assert (=> b!3575986 m!4068629))

(declare-fun m!4068631 () Bool)

(assert (=> b!3575986 m!4068631))

(assert (=> b!3575986 m!4068625))

(declare-fun m!4068633 () Bool)

(assert (=> b!3575986 m!4068633))

(declare-fun m!4068635 () Bool)

(assert (=> b!3575986 m!4068635))

(declare-fun m!4068637 () Bool)

(assert (=> b!3575986 m!4068637))

(declare-fun m!4068639 () Bool)

(assert (=> b!3575986 m!4068639))

(assert (=> b!3575986 m!4068637))

(declare-fun m!4068641 () Bool)

(assert (=> b!3575986 m!4068641))

(assert (=> b!3575986 m!4068627))

(declare-fun m!4068643 () Bool)

(assert (=> b!3575986 m!4068643))

(assert (=> b!3575986 m!4068635))

(check-sat (not b!3576010) (not b!3575980) (not b!3575978) (not b!3575977) b_and!257637 (not b!3575997) b_and!257641 (not b!3576011) (not b_next!92241) (not b!3576020) (not b!3575982) (not b_next!92237) b_and!257633 (not b!3575996) (not b!3576000) (not b!3576004) b_and!257635 (not b_next!92243) (not b!3575973) (not b!3576003) (not b!3575991) (not b!3575981) (not b!3575985) (not b!3575976) (not b!3576007) (not start!331374) (not b!3576002) (not b!3575969) (not b!3576008) (not b!3575988) (not b!3575986) b_and!257639 (not b_next!92235) (not b!3575998) (not b_next!92233) (not b_next!92239) (not b!3575974) (not b!3575983) b_and!257631 (not b!3576006) (not b!3575995) (not b!3575990) (not b!3575970) (not b!3575994) (not b!3575992))
(check-sat b_and!257637 b_and!257641 (not b_next!92241) (not b_next!92237) b_and!257631 b_and!257633 b_and!257635 (not b_next!92243) b_and!257639 (not b_next!92235) (not b_next!92233) (not b_next!92239))
