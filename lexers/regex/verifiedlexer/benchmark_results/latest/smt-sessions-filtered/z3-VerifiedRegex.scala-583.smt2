; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17470 () Bool)

(assert start!17470)

(declare-fun b!161716 () Bool)

(declare-fun b_free!6089 () Bool)

(declare-fun b_next!6089 () Bool)

(assert (=> b!161716 (= b_free!6089 (not b_next!6089))))

(declare-fun tp!81971 () Bool)

(declare-fun b_and!10073 () Bool)

(assert (=> b!161716 (= tp!81971 b_and!10073)))

(declare-fun b_free!6091 () Bool)

(declare-fun b_next!6091 () Bool)

(assert (=> b!161716 (= b_free!6091 (not b_next!6091))))

(declare-fun tp!81973 () Bool)

(declare-fun b_and!10075 () Bool)

(assert (=> b!161716 (= tp!81973 b_and!10075)))

(declare-fun b!161726 () Bool)

(declare-fun b_free!6093 () Bool)

(declare-fun b_next!6093 () Bool)

(assert (=> b!161726 (= b_free!6093 (not b_next!6093))))

(declare-fun tp!81969 () Bool)

(declare-fun b_and!10077 () Bool)

(assert (=> b!161726 (= tp!81969 b_and!10077)))

(declare-fun b_free!6095 () Bool)

(declare-fun b_next!6095 () Bool)

(assert (=> b!161726 (= b_free!6095 (not b_next!6095))))

(declare-fun tp!81963 () Bool)

(declare-fun b_and!10079 () Bool)

(assert (=> b!161726 (= tp!81963 b_and!10079)))

(declare-fun b!161730 () Bool)

(declare-fun b_free!6097 () Bool)

(declare-fun b_next!6097 () Bool)

(assert (=> b!161730 (= b_free!6097 (not b_next!6097))))

(declare-fun tp!81974 () Bool)

(declare-fun b_and!10081 () Bool)

(assert (=> b!161730 (= tp!81974 b_and!10081)))

(declare-fun b_free!6099 () Bool)

(declare-fun b_next!6099 () Bool)

(assert (=> b!161730 (= b_free!6099 (not b_next!6099))))

(declare-fun tp!81975 () Bool)

(declare-fun b_and!10083 () Bool)

(assert (=> b!161730 (= tp!81975 b_and!10083)))

(declare-fun res!73288 () Bool)

(declare-fun e!97322 () Bool)

(assert (=> start!17470 (=> (not res!73288) (not e!97322))))

(declare-datatypes ((LexerInterface!375 0))(
  ( (LexerInterfaceExt!372 (__x!2509 Int)) (Lexer!373) )
))
(declare-fun thiss!17480 () LexerInterface!375)

(get-info :version)

(assert (=> start!17470 (= res!73288 ((_ is Lexer!373) thiss!17480))))

(assert (=> start!17470 e!97322))

(assert (=> start!17470 true))

(declare-fun e!97310 () Bool)

(assert (=> start!17470 e!97310))

(declare-datatypes ((List!2781 0))(
  ( (Nil!2771) (Cons!2771 (h!8168 (_ BitVec 16)) (t!26047 List!2781)) )
))
(declare-datatypes ((TokenValue!511 0))(
  ( (FloatLiteralValue!1022 (text!4022 List!2781)) (TokenValueExt!510 (__x!2510 Int)) (Broken!2555 (value!18226 List!2781)) (Object!520) (End!511) (Def!511) (Underscore!511) (Match!511) (Else!511) (Error!511) (Case!511) (If!511) (Extends!511) (Abstract!511) (Class!511) (Val!511) (DelimiterValue!1022 (del!571 List!2781)) (KeywordValue!517 (value!18227 List!2781)) (CommentValue!1022 (value!18228 List!2781)) (WhitespaceValue!1022 (value!18229 List!2781)) (IndentationValue!511 (value!18230 List!2781)) (String!3634) (Int32!511) (Broken!2556 (value!18231 List!2781)) (Boolean!512) (Unit!2285) (OperatorValue!514 (op!571 List!2781)) (IdentifierValue!1022 (value!18232 List!2781)) (IdentifierValue!1023 (value!18233 List!2781)) (WhitespaceValue!1023 (value!18234 List!2781)) (True!1022) (False!1022) (Broken!2557 (value!18235 List!2781)) (Broken!2558 (value!18236 List!2781)) (True!1023) (RightBrace!511) (RightBracket!511) (Colon!511) (Null!511) (Comma!511) (LeftBracket!511) (False!1023) (LeftBrace!511) (ImaginaryLiteralValue!511 (text!4023 List!2781)) (StringLiteralValue!1533 (value!18237 List!2781)) (EOFValue!511 (value!18238 List!2781)) (IdentValue!511 (value!18239 List!2781)) (DelimiterValue!1023 (value!18240 List!2781)) (DedentValue!511 (value!18241 List!2781)) (NewLineValue!511 (value!18242 List!2781)) (IntegerValue!1533 (value!18243 (_ BitVec 32)) (text!4024 List!2781)) (IntegerValue!1534 (value!18244 Int) (text!4025 List!2781)) (Times!511) (Or!511) (Equal!511) (Minus!511) (Broken!2559 (value!18245 List!2781)) (And!511) (Div!511) (LessEqual!511) (Mod!511) (Concat!1224) (Not!511) (Plus!511) (SpaceValue!511 (value!18246 List!2781)) (IntegerValue!1535 (value!18247 Int) (text!4026 List!2781)) (StringLiteralValue!1534 (text!4027 List!2781)) (FloatLiteralValue!1023 (text!4028 List!2781)) (BytesLiteralValue!511 (value!18248 List!2781)) (CommentValue!1023 (value!18249 List!2781)) (StringLiteralValue!1535 (value!18250 List!2781)) (ErrorTokenValue!511 (msg!572 List!2781)) )
))
(declare-datatypes ((C!2348 0))(
  ( (C!2349 (val!1060 Int)) )
))
(declare-datatypes ((List!2782 0))(
  ( (Nil!2772) (Cons!2772 (h!8169 C!2348) (t!26048 List!2782)) )
))
(declare-datatypes ((IArray!1601 0))(
  ( (IArray!1602 (innerList!858 List!2782)) )
))
(declare-datatypes ((Conc!800 0))(
  ( (Node!800 (left!2091 Conc!800) (right!2421 Conc!800) (csize!1830 Int) (cheight!1011 Int)) (Leaf!1384 (xs!3395 IArray!1601) (csize!1831 Int)) (Empty!800) )
))
(declare-datatypes ((BalanceConc!1608 0))(
  ( (BalanceConc!1609 (c!32375 Conc!800)) )
))
(declare-datatypes ((TokenValueInjection!794 0))(
  ( (TokenValueInjection!795 (toValue!1144 Int) (toChars!1003 Int)) )
))
(declare-datatypes ((String!3635 0))(
  ( (String!3636 (value!18251 String)) )
))
(declare-datatypes ((Regex!713 0))(
  ( (ElementMatch!713 (c!32376 C!2348)) (Concat!1225 (regOne!1938 Regex!713) (regTwo!1938 Regex!713)) (EmptyExpr!713) (Star!713 (reg!1042 Regex!713)) (EmptyLang!713) (Union!713 (regOne!1939 Regex!713) (regTwo!1939 Regex!713)) )
))
(declare-datatypes ((Rule!778 0))(
  ( (Rule!779 (regex!489 Regex!713) (tag!667 String!3635) (isSeparator!489 Bool) (transformation!489 TokenValueInjection!794)) )
))
(declare-datatypes ((Token!722 0))(
  ( (Token!723 (value!18252 TokenValue!511) (rule!996 Rule!778) (size!2335 Int) (originalCharacters!532 List!2782)) )
))
(declare-fun separatorToken!170 () Token!722)

(declare-fun e!97314 () Bool)

(declare-fun inv!3592 (Token!722) Bool)

(assert (=> start!17470 (and (inv!3592 separatorToken!170) e!97314)))

(declare-fun e!97309 () Bool)

(assert (=> start!17470 e!97309))

(declare-fun b!161709 () Bool)

(declare-fun tp!81964 () Bool)

(declare-datatypes ((List!2783 0))(
  ( (Nil!2773) (Cons!2773 (h!8170 Rule!778) (t!26049 List!2783)) )
))
(declare-fun rules!1920 () List!2783)

(declare-fun e!97323 () Bool)

(declare-fun e!97321 () Bool)

(declare-fun inv!3589 (String!3635) Bool)

(declare-fun inv!3593 (TokenValueInjection!794) Bool)

(assert (=> b!161709 (= e!97321 (and tp!81964 (inv!3589 (tag!667 (h!8170 rules!1920))) (inv!3593 (transformation!489 (h!8170 rules!1920))) e!97323))))

(declare-fun b!161710 () Bool)

(declare-fun tp!81965 () Bool)

(assert (=> b!161710 (= e!97310 (and e!97321 tp!81965))))

(declare-fun b!161711 () Bool)

(declare-fun e!97318 () Bool)

(assert (=> b!161711 (= e!97322 e!97318)))

(declare-fun res!73286 () Bool)

(assert (=> b!161711 (=> (not res!73286) (not e!97318))))

(declare-datatypes ((List!2784 0))(
  ( (Nil!2774) (Cons!2774 (h!8171 Token!722) (t!26050 List!2784)) )
))
(declare-datatypes ((IArray!1603 0))(
  ( (IArray!1604 (innerList!859 List!2784)) )
))
(declare-datatypes ((Conc!801 0))(
  ( (Node!801 (left!2092 Conc!801) (right!2422 Conc!801) (csize!1832 Int) (cheight!1012 Int)) (Leaf!1385 (xs!3396 IArray!1603) (csize!1833 Int)) (Empty!801) )
))
(declare-datatypes ((BalanceConc!1610 0))(
  ( (BalanceConc!1611 (c!32377 Conc!801)) )
))
(declare-fun lt!48907 () BalanceConc!1610)

(declare-fun rulesProduceEachTokenIndividually!167 (LexerInterface!375 List!2783 BalanceConc!1610) Bool)

(assert (=> b!161711 (= res!73286 (rulesProduceEachTokenIndividually!167 thiss!17480 rules!1920 lt!48907))))

(declare-fun tokens!465 () List!2784)

(declare-fun seqFromList!355 (List!2784) BalanceConc!1610)

(assert (=> b!161711 (= lt!48907 (seqFromList!355 tokens!465))))

(declare-fun b!161712 () Bool)

(declare-fun res!73279 () Bool)

(assert (=> b!161712 (=> (not res!73279) (not e!97322))))

(declare-fun isEmpty!1124 (List!2783) Bool)

(assert (=> b!161712 (= res!73279 (not (isEmpty!1124 rules!1920)))))

(declare-fun b!161713 () Bool)

(declare-fun res!73287 () Bool)

(declare-fun e!97317 () Bool)

(assert (=> b!161713 (=> (not res!73287) (not e!97317))))

(declare-fun lt!48910 () List!2782)

(declare-fun lt!48905 () List!2782)

(declare-fun list!999 (BalanceConc!1608) List!2782)

(declare-fun seqFromList!356 (List!2782) BalanceConc!1608)

(assert (=> b!161713 (= res!73287 (= (list!999 (seqFromList!356 lt!48910)) lt!48905))))

(declare-fun e!97325 () Bool)

(declare-fun tp!81967 () Bool)

(declare-fun b!161714 () Bool)

(declare-fun inv!21 (TokenValue!511) Bool)

(assert (=> b!161714 (= e!97314 (and (inv!21 (value!18252 separatorToken!170)) e!97325 tp!81967))))

(declare-fun b!161715 () Bool)

(declare-fun res!73284 () Bool)

(assert (=> b!161715 (=> (not res!73284) (not e!97318))))

(declare-fun sepAndNonSepRulesDisjointChars!78 (List!2783 List!2783) Bool)

(assert (=> b!161715 (= res!73284 (sepAndNonSepRulesDisjointChars!78 rules!1920 rules!1920))))

(declare-fun e!97312 () Bool)

(assert (=> b!161716 (= e!97312 (and tp!81971 tp!81973))))

(declare-fun b!161717 () Bool)

(declare-fun e!97319 () Bool)

(assert (=> b!161717 (= e!97319 true)))

(declare-fun lt!48906 () BalanceConc!1610)

(declare-fun print!106 (LexerInterface!375 BalanceConc!1610) BalanceConc!1608)

(declare-fun printTailRec!69 (LexerInterface!375 BalanceConc!1610 Int BalanceConc!1608) BalanceConc!1608)

(assert (=> b!161717 (= (print!106 thiss!17480 lt!48906) (printTailRec!69 thiss!17480 lt!48906 0 (BalanceConc!1609 Empty!800)))))

(declare-fun singletonSeq!41 (Token!722) BalanceConc!1610)

(assert (=> b!161717 (= lt!48906 (singletonSeq!41 (h!8171 tokens!465)))))

(declare-fun tp!81966 () Bool)

(declare-fun e!97311 () Bool)

(declare-fun e!97326 () Bool)

(declare-fun b!161718 () Bool)

(assert (=> b!161718 (= e!97326 (and (inv!21 (value!18252 (h!8171 tokens!465))) e!97311 tp!81966))))

(declare-fun b!161719 () Bool)

(declare-fun res!73280 () Bool)

(assert (=> b!161719 (=> (not res!73280) (not e!97318))))

(declare-fun rulesProduceIndividualToken!124 (LexerInterface!375 List!2783 Token!722) Bool)

(assert (=> b!161719 (= res!73280 (rulesProduceIndividualToken!124 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!161720 () Bool)

(assert (=> b!161720 (= e!97318 e!97317)))

(declare-fun res!73282 () Bool)

(assert (=> b!161720 (=> (not res!73282) (not e!97317))))

(assert (=> b!161720 (= res!73282 (= lt!48910 lt!48905))))

(declare-fun printWithSeparatorTokenWhenNeededRec!58 (LexerInterface!375 List!2783 BalanceConc!1610 Token!722 Int) BalanceConc!1608)

(assert (=> b!161720 (= lt!48905 (list!999 (printWithSeparatorTokenWhenNeededRec!58 thiss!17480 rules!1920 lt!48907 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!68 (LexerInterface!375 List!2783 List!2784 Token!722) List!2782)

(assert (=> b!161720 (= lt!48910 (printWithSeparatorTokenWhenNeededList!68 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!161721 () Bool)

(declare-fun res!73289 () Bool)

(assert (=> b!161721 (=> (not res!73289) (not e!97318))))

(declare-fun lambda!4418 () Int)

(declare-fun forall!515 (List!2784 Int) Bool)

(assert (=> b!161721 (= res!73289 (forall!515 tokens!465 lambda!4418))))

(declare-fun b!161722 () Bool)

(declare-fun res!73292 () Bool)

(assert (=> b!161722 (=> res!73292 e!97319)))

(declare-fun e!97327 () Bool)

(assert (=> b!161722 (= res!73292 e!97327)))

(declare-fun res!73285 () Bool)

(assert (=> b!161722 (=> (not res!73285) (not e!97327))))

(declare-fun lt!48902 () List!2782)

(assert (=> b!161722 (= res!73285 (not (= lt!48910 lt!48902)))))

(declare-fun e!97316 () Bool)

(declare-fun tp!81970 () Bool)

(declare-fun b!161723 () Bool)

(assert (=> b!161723 (= e!97325 (and tp!81970 (inv!3589 (tag!667 (rule!996 separatorToken!170))) (inv!3593 (transformation!489 (rule!996 separatorToken!170))) e!97316))))

(declare-fun b!161724 () Bool)

(declare-fun lt!48903 () List!2782)

(declare-fun lt!48901 () List!2782)

(declare-fun ++!618 (List!2782 List!2782) List!2782)

(assert (=> b!161724 (= e!97327 (not (= lt!48910 (++!618 lt!48903 lt!48901))))))

(declare-fun b!161725 () Bool)

(declare-fun res!73291 () Bool)

(assert (=> b!161725 (=> (not res!73291) (not e!97322))))

(declare-fun rulesInvariant!341 (LexerInterface!375 List!2783) Bool)

(assert (=> b!161725 (= res!73291 (rulesInvariant!341 thiss!17480 rules!1920))))

(assert (=> b!161726 (= e!97316 (and tp!81969 tp!81963))))

(declare-fun b!161727 () Bool)

(declare-fun res!73290 () Bool)

(assert (=> b!161727 (=> (not res!73290) (not e!97318))))

(assert (=> b!161727 (= res!73290 ((_ is Cons!2774) tokens!465))))

(declare-fun b!161728 () Bool)

(declare-fun res!73281 () Bool)

(assert (=> b!161728 (=> (not res!73281) (not e!97318))))

(assert (=> b!161728 (= res!73281 (isSeparator!489 (rule!996 separatorToken!170)))))

(declare-fun b!161729 () Bool)

(assert (=> b!161729 (= e!97317 (not e!97319))))

(declare-fun res!73283 () Bool)

(assert (=> b!161729 (=> res!73283 e!97319)))

(assert (=> b!161729 (= res!73283 (not (= lt!48901 (list!999 (printWithSeparatorTokenWhenNeededRec!58 thiss!17480 rules!1920 (seqFromList!355 (t!26050 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!48904 () List!2782)

(assert (=> b!161729 (= lt!48904 lt!48902)))

(declare-fun lt!48900 () List!2782)

(assert (=> b!161729 (= lt!48902 (++!618 lt!48903 lt!48900))))

(declare-fun lt!48908 () List!2782)

(assert (=> b!161729 (= lt!48904 (++!618 (++!618 lt!48903 lt!48908) lt!48901))))

(declare-datatypes ((Unit!2286 0))(
  ( (Unit!2287) )
))
(declare-fun lt!48909 () Unit!2286)

(declare-fun lemmaConcatAssociativity!170 (List!2782 List!2782 List!2782) Unit!2286)

(assert (=> b!161729 (= lt!48909 (lemmaConcatAssociativity!170 lt!48903 lt!48908 lt!48901))))

(declare-fun charsOf!144 (Token!722) BalanceConc!1608)

(assert (=> b!161729 (= lt!48903 (list!999 (charsOf!144 (h!8171 tokens!465))))))

(assert (=> b!161729 (= lt!48900 (++!618 lt!48908 lt!48901))))

(assert (=> b!161729 (= lt!48901 (printWithSeparatorTokenWhenNeededList!68 thiss!17480 rules!1920 (t!26050 tokens!465) separatorToken!170))))

(assert (=> b!161729 (= lt!48908 (list!999 (charsOf!144 separatorToken!170)))))

(assert (=> b!161730 (= e!97323 (and tp!81974 tp!81975))))

(declare-fun b!161731 () Bool)

(declare-fun tp!81972 () Bool)

(assert (=> b!161731 (= e!97311 (and tp!81972 (inv!3589 (tag!667 (rule!996 (h!8171 tokens!465)))) (inv!3593 (transformation!489 (rule!996 (h!8171 tokens!465)))) e!97312))))

(declare-fun tp!81968 () Bool)

(declare-fun b!161732 () Bool)

(assert (=> b!161732 (= e!97309 (and (inv!3592 (h!8171 tokens!465)) e!97326 tp!81968))))

(assert (= (and start!17470 res!73288) b!161712))

(assert (= (and b!161712 res!73279) b!161725))

(assert (= (and b!161725 res!73291) b!161711))

(assert (= (and b!161711 res!73286) b!161719))

(assert (= (and b!161719 res!73280) b!161728))

(assert (= (and b!161728 res!73281) b!161721))

(assert (= (and b!161721 res!73289) b!161715))

(assert (= (and b!161715 res!73284) b!161727))

(assert (= (and b!161727 res!73290) b!161720))

(assert (= (and b!161720 res!73282) b!161713))

(assert (= (and b!161713 res!73287) b!161729))

(assert (= (and b!161729 (not res!73283)) b!161722))

(assert (= (and b!161722 res!73285) b!161724))

(assert (= (and b!161722 (not res!73292)) b!161717))

(assert (= b!161709 b!161730))

(assert (= b!161710 b!161709))

(assert (= (and start!17470 ((_ is Cons!2773) rules!1920)) b!161710))

(assert (= b!161723 b!161726))

(assert (= b!161714 b!161723))

(assert (= start!17470 b!161714))

(assert (= b!161731 b!161716))

(assert (= b!161718 b!161731))

(assert (= b!161732 b!161718))

(assert (= (and start!17470 ((_ is Cons!2774) tokens!465)) b!161732))

(declare-fun m!151561 () Bool)

(assert (=> b!161732 m!151561))

(declare-fun m!151563 () Bool)

(assert (=> b!161714 m!151563))

(declare-fun m!151565 () Bool)

(assert (=> start!17470 m!151565))

(declare-fun m!151567 () Bool)

(assert (=> b!161723 m!151567))

(declare-fun m!151569 () Bool)

(assert (=> b!161723 m!151569))

(declare-fun m!151571 () Bool)

(assert (=> b!161725 m!151571))

(declare-fun m!151573 () Bool)

(assert (=> b!161729 m!151573))

(declare-fun m!151575 () Bool)

(assert (=> b!161729 m!151575))

(declare-fun m!151577 () Bool)

(assert (=> b!161729 m!151577))

(declare-fun m!151579 () Bool)

(assert (=> b!161729 m!151579))

(declare-fun m!151581 () Bool)

(assert (=> b!161729 m!151581))

(declare-fun m!151583 () Bool)

(assert (=> b!161729 m!151583))

(assert (=> b!161729 m!151581))

(assert (=> b!161729 m!151573))

(declare-fun m!151585 () Bool)

(assert (=> b!161729 m!151585))

(declare-fun m!151587 () Bool)

(assert (=> b!161729 m!151587))

(declare-fun m!151589 () Bool)

(assert (=> b!161729 m!151589))

(declare-fun m!151591 () Bool)

(assert (=> b!161729 m!151591))

(declare-fun m!151593 () Bool)

(assert (=> b!161729 m!151593))

(assert (=> b!161729 m!151589))

(declare-fun m!151595 () Bool)

(assert (=> b!161729 m!151595))

(assert (=> b!161729 m!151577))

(assert (=> b!161729 m!151585))

(declare-fun m!151597 () Bool)

(assert (=> b!161729 m!151597))

(declare-fun m!151599 () Bool)

(assert (=> b!161711 m!151599))

(declare-fun m!151601 () Bool)

(assert (=> b!161711 m!151601))

(declare-fun m!151603 () Bool)

(assert (=> b!161718 m!151603))

(declare-fun m!151605 () Bool)

(assert (=> b!161713 m!151605))

(assert (=> b!161713 m!151605))

(declare-fun m!151607 () Bool)

(assert (=> b!161713 m!151607))

(declare-fun m!151609 () Bool)

(assert (=> b!161712 m!151609))

(declare-fun m!151611 () Bool)

(assert (=> b!161731 m!151611))

(declare-fun m!151613 () Bool)

(assert (=> b!161731 m!151613))

(declare-fun m!151615 () Bool)

(assert (=> b!161724 m!151615))

(declare-fun m!151617 () Bool)

(assert (=> b!161717 m!151617))

(declare-fun m!151619 () Bool)

(assert (=> b!161717 m!151619))

(declare-fun m!151621 () Bool)

(assert (=> b!161717 m!151621))

(declare-fun m!151623 () Bool)

(assert (=> b!161709 m!151623))

(declare-fun m!151625 () Bool)

(assert (=> b!161709 m!151625))

(declare-fun m!151627 () Bool)

(assert (=> b!161719 m!151627))

(declare-fun m!151629 () Bool)

(assert (=> b!161721 m!151629))

(declare-fun m!151631 () Bool)

(assert (=> b!161715 m!151631))

(declare-fun m!151633 () Bool)

(assert (=> b!161720 m!151633))

(assert (=> b!161720 m!151633))

(declare-fun m!151635 () Bool)

(assert (=> b!161720 m!151635))

(declare-fun m!151637 () Bool)

(assert (=> b!161720 m!151637))

(check-sat b_and!10079 (not b_next!6089) (not b!161718) b_and!10077 (not start!17470) b_and!10083 (not b!161710) (not b!161720) (not b_next!6097) (not b!161719) b_and!10081 (not b!161711) (not b_next!6099) (not b_next!6093) (not b!161715) (not b!161717) (not b_next!6091) (not b!161731) (not b_next!6095) (not b!161712) (not b!161721) (not b!161713) (not b!161725) (not b!161723) (not b!161732) b_and!10073 (not b!161729) b_and!10075 (not b!161714) (not b!161724) (not b!161709))
(check-sat b_and!10079 (not b_next!6089) b_and!10077 b_and!10083 (not b_next!6097) b_and!10081 b_and!10073 b_and!10075 (not b_next!6099) (not b_next!6093) (not b_next!6091) (not b_next!6095))
