; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103398 () Bool)

(assert start!103398)

(declare-fun b!1173565 () Bool)

(declare-fun e!752721 () Bool)

(assert (=> b!1173565 (= e!752721 true)))

(declare-fun b!1173564 () Bool)

(declare-fun e!752720 () Bool)

(assert (=> b!1173564 (= e!752720 e!752721)))

(declare-fun b!1173545 () Bool)

(assert (=> b!1173545 e!752720))

(assert (= b!1173564 b!1173565))

(assert (= b!1173545 b!1173564))

(declare-fun b!1173537 () Bool)

(declare-fun e!752708 () Bool)

(declare-datatypes ((List!11626 0))(
  ( (Nil!11602) (Cons!11602 (h!17003 (_ BitVec 16)) (t!110912 List!11626)) )
))
(declare-datatypes ((TokenValue!2089 0))(
  ( (FloatLiteralValue!4178 (text!15068 List!11626)) (TokenValueExt!2088 (__x!7889 Int)) (Broken!10445 (value!65626 List!11626)) (Object!2112) (End!2089) (Def!2089) (Underscore!2089) (Match!2089) (Else!2089) (Error!2089) (Case!2089) (If!2089) (Extends!2089) (Abstract!2089) (Class!2089) (Val!2089) (DelimiterValue!4178 (del!2149 List!11626)) (KeywordValue!2095 (value!65627 List!11626)) (CommentValue!4178 (value!65628 List!11626)) (WhitespaceValue!4178 (value!65629 List!11626)) (IndentationValue!2089 (value!65630 List!11626)) (String!14032) (Int32!2089) (Broken!10446 (value!65631 List!11626)) (Boolean!2090) (Unit!17861) (OperatorValue!2092 (op!2149 List!11626)) (IdentifierValue!4178 (value!65632 List!11626)) (IdentifierValue!4179 (value!65633 List!11626)) (WhitespaceValue!4179 (value!65634 List!11626)) (True!4178) (False!4178) (Broken!10447 (value!65635 List!11626)) (Broken!10448 (value!65636 List!11626)) (True!4179) (RightBrace!2089) (RightBracket!2089) (Colon!2089) (Null!2089) (Comma!2089) (LeftBracket!2089) (False!4179) (LeftBrace!2089) (ImaginaryLiteralValue!2089 (text!15069 List!11626)) (StringLiteralValue!6267 (value!65637 List!11626)) (EOFValue!2089 (value!65638 List!11626)) (IdentValue!2089 (value!65639 List!11626)) (DelimiterValue!4179 (value!65640 List!11626)) (DedentValue!2089 (value!65641 List!11626)) (NewLineValue!2089 (value!65642 List!11626)) (IntegerValue!6267 (value!65643 (_ BitVec 32)) (text!15070 List!11626)) (IntegerValue!6268 (value!65644 Int) (text!15071 List!11626)) (Times!2089) (Or!2089) (Equal!2089) (Minus!2089) (Broken!10449 (value!65645 List!11626)) (And!2089) (Div!2089) (LessEqual!2089) (Mod!2089) (Concat!5382) (Not!2089) (Plus!2089) (SpaceValue!2089 (value!65646 List!11626)) (IntegerValue!6269 (value!65647 Int) (text!15072 List!11626)) (StringLiteralValue!6268 (text!15073 List!11626)) (FloatLiteralValue!4179 (text!15074 List!11626)) (BytesLiteralValue!2089 (value!65648 List!11626)) (CommentValue!4179 (value!65649 List!11626)) (StringLiteralValue!6269 (value!65650 List!11626)) (ErrorTokenValue!2089 (msg!2150 List!11626)) )
))
(declare-datatypes ((C!6904 0))(
  ( (C!6905 (val!3708 Int)) )
))
(declare-datatypes ((Regex!3293 0))(
  ( (ElementMatch!3293 (c!195811 C!6904)) (Concat!5383 (regOne!7098 Regex!3293) (regTwo!7098 Regex!3293)) (EmptyExpr!3293) (Star!3293 (reg!3622 Regex!3293)) (EmptyLang!3293) (Union!3293 (regOne!7099 Regex!3293) (regTwo!7099 Regex!3293)) )
))
(declare-datatypes ((String!14033 0))(
  ( (String!14034 (value!65651 String)) )
))
(declare-datatypes ((List!11627 0))(
  ( (Nil!11603) (Cons!11603 (h!17004 C!6904) (t!110913 List!11627)) )
))
(declare-datatypes ((IArray!7621 0))(
  ( (IArray!7622 (innerList!3868 List!11627)) )
))
(declare-datatypes ((Conc!3808 0))(
  ( (Node!3808 (left!10145 Conc!3808) (right!10475 Conc!3808) (csize!7846 Int) (cheight!4019 Int)) (Leaf!5830 (xs!6513 IArray!7621) (csize!7847 Int)) (Empty!3808) )
))
(declare-datatypes ((BalanceConc!7638 0))(
  ( (BalanceConc!7639 (c!195812 Conc!3808)) )
))
(declare-datatypes ((TokenValueInjection!3878 0))(
  ( (TokenValueInjection!3879 (toValue!3124 Int) (toChars!2983 Int)) )
))
(declare-datatypes ((Rule!3846 0))(
  ( (Rule!3847 (regex!2023 Regex!3293) (tag!2285 String!14033) (isSeparator!2023 Bool) (transformation!2023 TokenValueInjection!3878)) )
))
(declare-datatypes ((Token!3708 0))(
  ( (Token!3709 (value!65652 TokenValue!2089) (rule!3444 Rule!3846) (size!9149 Int) (originalCharacters!2577 List!11627)) )
))
(declare-datatypes ((List!11628 0))(
  ( (Nil!11604) (Cons!11604 (h!17005 Token!3708) (t!110914 List!11628)) )
))
(declare-datatypes ((List!11629 0))(
  ( (Nil!11605) (Cons!11605 (h!17006 Rule!3846) (t!110915 List!11629)) )
))
(declare-datatypes ((IArray!7623 0))(
  ( (IArray!7624 (innerList!3869 List!11628)) )
))
(declare-datatypes ((Conc!3809 0))(
  ( (Node!3809 (left!10146 Conc!3809) (right!10476 Conc!3809) (csize!7848 Int) (cheight!4020 Int)) (Leaf!5831 (xs!6514 IArray!7623) (csize!7849 Int)) (Empty!3809) )
))
(declare-datatypes ((BalanceConc!7640 0))(
  ( (BalanceConc!7641 (c!195813 Conc!3809)) )
))
(declare-datatypes ((PrintableTokens!732 0))(
  ( (PrintableTokens!733 (rules!9666 List!11629) (tokens!1664 BalanceConc!7640)) )
))
(declare-fun thiss!10527 () PrintableTokens!732)

(declare-fun lt!403175 () List!11628)

(declare-datatypes ((LexerInterface!1718 0))(
  ( (LexerInterfaceExt!1715 (__x!7890 Int)) (Lexer!1716) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!584 (LexerInterface!1718 List!11629 List!11628) Bool)

(assert (=> b!1173537 (= e!752708 (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) (t!110914 lt!403175)))))

(declare-fun b!1173538 () Bool)

(declare-fun e!752699 () Bool)

(declare-fun lt!403184 () List!11628)

(assert (=> b!1173538 (= e!752699 (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) (t!110914 lt!403184)))))

(declare-fun b!1173539 () Bool)

(declare-fun e!752698 () Bool)

(declare-fun e!752705 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!79 (LexerInterface!1718 BalanceConc!7640 Int List!11629) Bool)

(assert (=> b!1173539 (= e!752698 (= (tokensListTwoByTwoPredicateSeparable!79 Lexer!1716 (tokens!1664 thiss!10527) 0 (rules!9666 thiss!10527)) e!752705))))

(declare-fun res!530171 () Bool)

(assert (=> b!1173539 (=> res!530171 e!752705)))

(declare-fun lt!403181 () Int)

(assert (=> b!1173539 (= res!530171 (>= 0 (- lt!403181 1)))))

(declare-fun b!1173540 () Bool)

(declare-fun e!752714 () Bool)

(assert (=> b!1173540 (= e!752705 e!752714)))

(declare-fun res!530170 () Bool)

(assert (=> b!1173540 (=> (not res!530170) (not e!752714))))

(declare-fun lt!403164 () Token!3708)

(declare-fun lt!403168 () Token!3708)

(declare-fun separableTokensPredicate!140 (LexerInterface!1718 Token!3708 Token!3708 List!11629) Bool)

(assert (=> b!1173540 (= res!530170 (separableTokensPredicate!140 Lexer!1716 lt!403168 lt!403164 (rules!9666 thiss!10527)))))

(declare-fun e!752713 () Bool)

(assert (=> b!1173540 e!752713))

(declare-fun res!530169 () Bool)

(assert (=> b!1173540 (=> (not res!530169) (not e!752713))))

(declare-fun rulesProduceIndividualToken!753 (LexerInterface!1718 List!11629 Token!3708) Bool)

(assert (=> b!1173540 (= res!530169 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) lt!403164))))

(declare-datatypes ((Unit!17862 0))(
  ( (Unit!17863) )
))
(declare-fun lt!403179 () Unit!17862)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!299 (LexerInterface!1718 List!11629 List!11628 Token!3708) Unit!17862)

(assert (=> b!1173540 (= lt!403179 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!299 Lexer!1716 (rules!9666 thiss!10527) lt!403175 lt!403164))))

(declare-fun apply!2531 (BalanceConc!7640 Int) Token!3708)

(assert (=> b!1173540 (= lt!403164 (apply!2531 (tokens!1664 thiss!10527) 1))))

(assert (=> b!1173540 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) lt!403168)))

(declare-fun lt!403167 () Unit!17862)

(assert (=> b!1173540 (= lt!403167 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!299 Lexer!1716 (rules!9666 thiss!10527) lt!403175 lt!403168))))

(assert (=> b!1173540 (= lt!403168 (apply!2531 (tokens!1664 thiss!10527) 0))))

(declare-fun lt!403173 () List!11628)

(declare-fun tail!1696 (List!11628) List!11628)

(declare-fun drop!495 (List!11628 Int) List!11628)

(assert (=> b!1173540 (= (tail!1696 lt!403173) (drop!495 lt!403175 2))))

(declare-fun lt!403183 () Unit!17862)

(declare-fun lemmaDropTail!369 (List!11628 Int) Unit!17862)

(assert (=> b!1173540 (= lt!403183 (lemmaDropTail!369 lt!403175 1))))

(declare-fun lt!403180 () List!11628)

(assert (=> b!1173540 (= (tail!1696 lt!403180) lt!403173)))

(declare-fun lt!403171 () Unit!17862)

(assert (=> b!1173540 (= lt!403171 (lemmaDropTail!369 lt!403175 0))))

(declare-fun head!2112 (List!11628) Token!3708)

(declare-fun apply!2532 (List!11628 Int) Token!3708)

(assert (=> b!1173540 (= (head!2112 lt!403173) (apply!2532 lt!403175 1))))

(assert (=> b!1173540 (= lt!403173 (drop!495 lt!403175 1))))

(declare-fun lt!403169 () Unit!17862)

(declare-fun lemmaDropApply!381 (List!11628 Int) Unit!17862)

(assert (=> b!1173540 (= lt!403169 (lemmaDropApply!381 lt!403175 1))))

(assert (=> b!1173540 (= (head!2112 lt!403180) (apply!2532 lt!403175 0))))

(assert (=> b!1173540 (= lt!403180 (drop!495 lt!403175 0))))

(declare-fun lt!403170 () Unit!17862)

(assert (=> b!1173540 (= lt!403170 (lemmaDropApply!381 lt!403175 0))))

(declare-fun b!1173541 () Bool)

(declare-fun e!752709 () Bool)

(assert (=> b!1173541 (= e!752709 e!752699)))

(declare-fun res!530159 () Bool)

(assert (=> b!1173541 (=> (not res!530159) (not e!752699))))

(assert (=> b!1173541 (= res!530159 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (h!17005 lt!403184)))))

(declare-fun b!1173542 () Bool)

(declare-fun e!752712 () Bool)

(declare-fun tp!334856 () Bool)

(declare-fun inv!15315 (Conc!3809) Bool)

(assert (=> b!1173542 (= e!752712 (and (inv!15315 (c!195813 (tokens!1664 thiss!10527))) tp!334856))))

(declare-fun b!1173543 () Bool)

(declare-fun e!752700 () Bool)

(declare-fun lt!403176 () List!11628)

(assert (=> b!1173543 (= e!752700 (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) (t!110914 lt!403176)))))

(declare-fun b!1173544 () Bool)

(declare-fun res!530165 () Bool)

(declare-fun e!752704 () Bool)

(assert (=> b!1173544 (=> (not res!530165) (not e!752704))))

(declare-fun lambda!48293 () Int)

(declare-fun lt!403172 () BalanceConc!7640)

(declare-fun rulesProduceEachTokenIndividually!756 (LexerInterface!1718 List!11629 BalanceConc!7640) Bool)

(declare-fun forall!3075 (BalanceConc!7640 Int) Bool)

(assert (=> b!1173544 (= res!530165 (= (rulesProduceEachTokenIndividually!756 Lexer!1716 (rules!9666 thiss!10527) lt!403172) (forall!3075 lt!403172 lambda!48293)))))

(declare-fun e!752697 () Bool)

(declare-fun e!752711 () Bool)

(assert (=> b!1173545 (= e!752697 (not e!752711))))

(declare-fun res!530158 () Bool)

(assert (=> b!1173545 (=> res!530158 e!752711)))

(assert (=> b!1173545 (= res!530158 (not (forall!3075 (tokens!1664 thiss!10527) lambda!48293)))))

(declare-fun e!752715 () Bool)

(assert (=> b!1173545 (= (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) lt!403175) e!752715)))

(declare-fun res!530174 () Bool)

(assert (=> b!1173545 (=> res!530174 e!752715)))

(get-info :version)

(assert (=> b!1173545 (= res!530174 (not ((_ is Cons!11604) lt!403175)))))

(declare-fun list!4284 (BalanceConc!7640) List!11628)

(assert (=> b!1173545 (= lt!403175 (list!4284 (tokens!1664 thiss!10527)))))

(assert (=> b!1173545 (= (rulesProduceEachTokenIndividually!756 Lexer!1716 (rules!9666 thiss!10527) (tokens!1664 thiss!10527)) (forall!3075 (tokens!1664 thiss!10527) lambda!48293))))

(declare-fun b!1173546 () Bool)

(declare-fun e!752701 () Bool)

(assert (=> b!1173546 (= e!752701 e!752700)))

(declare-fun res!530166 () Bool)

(assert (=> b!1173546 (=> (not res!530166) (not e!752700))))

(assert (=> b!1173546 (= res!530166 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (h!17005 lt!403176)))))

(declare-fun b!1173547 () Bool)

(declare-fun e!752706 () Bool)

(assert (=> b!1173547 (= e!752711 e!752706)))

(declare-fun res!530175 () Bool)

(assert (=> b!1173547 (=> res!530175 e!752706)))

(declare-fun forall!3076 (List!11628 Int) Bool)

(assert (=> b!1173547 (= res!530175 (not (forall!3076 lt!403176 lambda!48293)))))

(assert (=> b!1173547 e!752704))

(declare-fun res!530167 () Bool)

(assert (=> b!1173547 (=> (not res!530167) (not e!752704))))

(assert (=> b!1173547 (= res!530167 (forall!3076 lt!403176 lambda!48293))))

(declare-fun lt!403174 () Unit!17862)

(declare-fun lemmaForallSubseq!161 (List!11628 List!11628 Int) Unit!17862)

(assert (=> b!1173547 (= lt!403174 (lemmaForallSubseq!161 lt!403176 lt!403175 lambda!48293))))

(assert (=> b!1173547 (= lt!403176 (list!4284 lt!403172))))

(declare-fun to!267 () Int)

(declare-fun from!787 () Int)

(declare-fun slice!356 (BalanceConc!7640 Int Int) BalanceConc!7640)

(assert (=> b!1173547 (= lt!403172 (slice!356 (tokens!1664 thiss!10527) from!787 to!267))))

(declare-fun subseq!273 (List!11628 List!11628) Bool)

(declare-fun slice!357 (List!11628 Int Int) List!11628)

(assert (=> b!1173547 (subseq!273 (slice!357 lt!403175 from!787 to!267) lt!403175)))

(declare-fun lt!403177 () Unit!17862)

(declare-fun lemmaSliceSubseq!114 (List!11628 Int Int) Unit!17862)

(assert (=> b!1173547 (= lt!403177 (lemmaSliceSubseq!114 lt!403175 from!787 to!267))))

(declare-fun b!1173548 () Bool)

(declare-fun size!9150 (BalanceConc!7638) Int)

(declare-fun charsOf!1078 (Token!3708) BalanceConc!7638)

(assert (=> b!1173548 (= e!752713 (> (size!9150 (charsOf!1078 lt!403164)) 0))))

(declare-fun b!1173549 () Bool)

(declare-fun e!752702 () Bool)

(assert (=> b!1173549 (= e!752702 e!752697)))

(declare-fun res!530162 () Bool)

(assert (=> b!1173549 (=> (not res!530162) (not e!752697))))

(declare-fun rulesInvariant!1592 (LexerInterface!1718 List!11629) Bool)

(assert (=> b!1173549 (= res!530162 (rulesInvariant!1592 Lexer!1716 (rules!9666 thiss!10527)))))

(declare-fun lt!403166 () Unit!17862)

(declare-fun lemmaInvariant!210 (PrintableTokens!732) Unit!17862)

(assert (=> b!1173549 (= lt!403166 (lemmaInvariant!210 thiss!10527))))

(declare-fun b!1173551 () Bool)

(assert (=> b!1173551 (= e!752704 (= (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) lt!403176) e!752701))))

(declare-fun res!530161 () Bool)

(assert (=> b!1173551 (=> res!530161 e!752701)))

(assert (=> b!1173551 (= res!530161 (not ((_ is Cons!11604) lt!403176)))))

(declare-fun res!530168 () Bool)

(declare-fun e!752710 () Bool)

(assert (=> start!103398 (=> (not res!530168) (not e!752710))))

(assert (=> start!103398 (= res!530168 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!103398 e!752710))

(assert (=> start!103398 true))

(declare-fun e!752703 () Bool)

(declare-fun inv!15316 (PrintableTokens!732) Bool)

(assert (=> start!103398 (and (inv!15316 thiss!10527) e!752703)))

(declare-fun b!1173550 () Bool)

(assert (=> b!1173550 (= e!752714 (tokensListTwoByTwoPredicateSeparable!79 Lexer!1716 (tokens!1664 thiss!10527) 1 (rules!9666 thiss!10527)))))

(declare-fun b!1173552 () Bool)

(assert (=> b!1173552 (= e!752715 e!752708)))

(declare-fun res!530157 () Bool)

(assert (=> b!1173552 (=> (not res!530157) (not e!752708))))

(assert (=> b!1173552 (= res!530157 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (h!17005 lt!403175)))))

(declare-fun b!1173553 () Bool)

(assert (=> b!1173553 (= e!752706 (forall!3076 lt!403175 lambda!48293))))

(declare-fun e!752707 () Bool)

(assert (=> b!1173553 e!752707))

(declare-fun res!530172 () Bool)

(assert (=> b!1173553 (=> (not res!530172) (not e!752707))))

(assert (=> b!1173553 (= res!530172 (forall!3076 lt!403184 lambda!48293))))

(declare-fun lt!403182 () Unit!17862)

(assert (=> b!1173553 (= lt!403182 (lemmaForallSubseq!161 lt!403184 lt!403175 lambda!48293))))

(assert (=> b!1173553 (subseq!273 lt!403184 lt!403175)))

(declare-fun lt!403165 () Unit!17862)

(declare-fun lemmaDropSubseq!48 (List!11628 Int) Unit!17862)

(assert (=> b!1173553 (= lt!403165 (lemmaDropSubseq!48 lt!403175 from!787))))

(assert (=> b!1173553 (= (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) lt!403184) e!752709)))

(declare-fun res!530164 () Bool)

(assert (=> b!1173553 (=> res!530164 e!752709)))

(assert (=> b!1173553 (= res!530164 (not ((_ is Cons!11604) lt!403184)))))

(assert (=> b!1173553 (= lt!403184 (drop!495 lt!403175 from!787))))

(declare-fun lt!403178 () Unit!17862)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!48 (LexerInterface!1718 List!11628 Int List!11629) Unit!17862)

(assert (=> b!1173553 (= lt!403178 (tokensListTwoByTwoPredicateSeparableTokensDropList!48 Lexer!1716 lt!403175 from!787 (rules!9666 thiss!10527)))))

(assert (=> b!1173553 e!752698))

(declare-fun res!530173 () Bool)

(assert (=> b!1173553 (=> (not res!530173) (not e!752698))))

(declare-fun separableTokens!154 (LexerInterface!1718 BalanceConc!7640 List!11629) Bool)

(assert (=> b!1173553 (= res!530173 (= (separableTokens!154 Lexer!1716 lt!403172 (rules!9666 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!79 Lexer!1716 lt!403172 0 (rules!9666 thiss!10527))))))

(declare-fun b!1173554 () Bool)

(declare-fun res!530160 () Bool)

(assert (=> b!1173554 (=> res!530160 e!752706)))

(assert (=> b!1173554 (= res!530160 (not (forall!3075 lt!403172 lambda!48293)))))

(declare-fun tp!334855 () Bool)

(declare-fun b!1173555 () Bool)

(declare-fun inv!15317 (BalanceConc!7640) Bool)

(assert (=> b!1173555 (= e!752703 (and tp!334855 (inv!15317 (tokens!1664 thiss!10527)) e!752712))))

(declare-fun b!1173556 () Bool)

(assert (=> b!1173556 (= e!752710 e!752702)))

(declare-fun res!530163 () Bool)

(assert (=> b!1173556 (=> (not res!530163) (not e!752702))))

(assert (=> b!1173556 (= res!530163 (<= to!267 lt!403181))))

(declare-fun size!9151 (BalanceConc!7640) Int)

(assert (=> b!1173556 (= lt!403181 (size!9151 (tokens!1664 thiss!10527)))))

(declare-fun b!1173557 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!114 (LexerInterface!1718 List!11628 List!11629) Bool)

(assert (=> b!1173557 (= e!752707 (tokensListTwoByTwoPredicateSeparableList!114 Lexer!1716 lt!403184 (rules!9666 thiss!10527)))))

(assert (= (and start!103398 res!530168) b!1173556))

(assert (= (and b!1173556 res!530163) b!1173549))

(assert (= (and b!1173549 res!530162) b!1173545))

(assert (= (and b!1173545 (not res!530174)) b!1173552))

(assert (= (and b!1173552 res!530157) b!1173537))

(assert (= (and b!1173545 (not res!530158)) b!1173547))

(assert (= (and b!1173547 res!530167) b!1173544))

(assert (= (and b!1173544 res!530165) b!1173551))

(assert (= (and b!1173551 (not res!530161)) b!1173546))

(assert (= (and b!1173546 res!530166) b!1173543))

(assert (= (and b!1173547 (not res!530175)) b!1173554))

(assert (= (and b!1173554 (not res!530160)) b!1173553))

(assert (= (and b!1173553 res!530173) b!1173539))

(assert (= (and b!1173539 (not res!530171)) b!1173540))

(assert (= (and b!1173540 res!530169) b!1173548))

(assert (= (and b!1173540 res!530170) b!1173550))

(assert (= (and b!1173553 (not res!530164)) b!1173541))

(assert (= (and b!1173541 res!530159) b!1173538))

(assert (= (and b!1173553 res!530172) b!1173557))

(assert (= b!1173555 b!1173542))

(assert (= start!103398 b!1173555))

(declare-fun m!1348705 () Bool)

(assert (=> b!1173549 m!1348705))

(declare-fun m!1348707 () Bool)

(assert (=> b!1173549 m!1348707))

(declare-fun m!1348709 () Bool)

(assert (=> b!1173539 m!1348709))

(declare-fun m!1348711 () Bool)

(assert (=> b!1173537 m!1348711))

(declare-fun m!1348713 () Bool)

(assert (=> b!1173556 m!1348713))

(declare-fun m!1348715 () Bool)

(assert (=> b!1173547 m!1348715))

(declare-fun m!1348717 () Bool)

(assert (=> b!1173547 m!1348717))

(declare-fun m!1348719 () Bool)

(assert (=> b!1173547 m!1348719))

(declare-fun m!1348721 () Bool)

(assert (=> b!1173547 m!1348721))

(assert (=> b!1173547 m!1348717))

(declare-fun m!1348723 () Bool)

(assert (=> b!1173547 m!1348723))

(declare-fun m!1348725 () Bool)

(assert (=> b!1173547 m!1348725))

(assert (=> b!1173547 m!1348715))

(declare-fun m!1348727 () Bool)

(assert (=> b!1173547 m!1348727))

(declare-fun m!1348729 () Bool)

(assert (=> b!1173552 m!1348729))

(declare-fun m!1348731 () Bool)

(assert (=> b!1173553 m!1348731))

(declare-fun m!1348733 () Bool)

(assert (=> b!1173553 m!1348733))

(declare-fun m!1348735 () Bool)

(assert (=> b!1173553 m!1348735))

(declare-fun m!1348737 () Bool)

(assert (=> b!1173553 m!1348737))

(declare-fun m!1348739 () Bool)

(assert (=> b!1173553 m!1348739))

(declare-fun m!1348741 () Bool)

(assert (=> b!1173553 m!1348741))

(declare-fun m!1348743 () Bool)

(assert (=> b!1173553 m!1348743))

(declare-fun m!1348745 () Bool)

(assert (=> b!1173553 m!1348745))

(declare-fun m!1348747 () Bool)

(assert (=> b!1173553 m!1348747))

(declare-fun m!1348749 () Bool)

(assert (=> b!1173553 m!1348749))

(declare-fun m!1348751 () Bool)

(assert (=> b!1173555 m!1348751))

(declare-fun m!1348753 () Bool)

(assert (=> b!1173546 m!1348753))

(declare-fun m!1348755 () Bool)

(assert (=> b!1173544 m!1348755))

(declare-fun m!1348757 () Bool)

(assert (=> b!1173544 m!1348757))

(declare-fun m!1348759 () Bool)

(assert (=> b!1173542 m!1348759))

(assert (=> b!1173554 m!1348757))

(declare-fun m!1348761 () Bool)

(assert (=> b!1173545 m!1348761))

(assert (=> b!1173545 m!1348761))

(declare-fun m!1348763 () Bool)

(assert (=> b!1173545 m!1348763))

(declare-fun m!1348765 () Bool)

(assert (=> b!1173545 m!1348765))

(declare-fun m!1348767 () Bool)

(assert (=> b!1173545 m!1348767))

(declare-fun m!1348769 () Bool)

(assert (=> b!1173551 m!1348769))

(declare-fun m!1348771 () Bool)

(assert (=> b!1173550 m!1348771))

(declare-fun m!1348773 () Bool)

(assert (=> start!103398 m!1348773))

(declare-fun m!1348775 () Bool)

(assert (=> b!1173540 m!1348775))

(declare-fun m!1348777 () Bool)

(assert (=> b!1173540 m!1348777))

(declare-fun m!1348779 () Bool)

(assert (=> b!1173540 m!1348779))

(declare-fun m!1348781 () Bool)

(assert (=> b!1173540 m!1348781))

(declare-fun m!1348783 () Bool)

(assert (=> b!1173540 m!1348783))

(declare-fun m!1348785 () Bool)

(assert (=> b!1173540 m!1348785))

(declare-fun m!1348787 () Bool)

(assert (=> b!1173540 m!1348787))

(declare-fun m!1348789 () Bool)

(assert (=> b!1173540 m!1348789))

(declare-fun m!1348791 () Bool)

(assert (=> b!1173540 m!1348791))

(declare-fun m!1348793 () Bool)

(assert (=> b!1173540 m!1348793))

(declare-fun m!1348795 () Bool)

(assert (=> b!1173540 m!1348795))

(declare-fun m!1348797 () Bool)

(assert (=> b!1173540 m!1348797))

(declare-fun m!1348799 () Bool)

(assert (=> b!1173540 m!1348799))

(declare-fun m!1348801 () Bool)

(assert (=> b!1173540 m!1348801))

(declare-fun m!1348803 () Bool)

(assert (=> b!1173540 m!1348803))

(declare-fun m!1348805 () Bool)

(assert (=> b!1173540 m!1348805))

(declare-fun m!1348807 () Bool)

(assert (=> b!1173540 m!1348807))

(declare-fun m!1348809 () Bool)

(assert (=> b!1173540 m!1348809))

(declare-fun m!1348811 () Bool)

(assert (=> b!1173540 m!1348811))

(declare-fun m!1348813 () Bool)

(assert (=> b!1173540 m!1348813))

(declare-fun m!1348815 () Bool)

(assert (=> b!1173557 m!1348815))

(declare-fun m!1348817 () Bool)

(assert (=> b!1173541 m!1348817))

(declare-fun m!1348819 () Bool)

(assert (=> b!1173543 m!1348819))

(declare-fun m!1348821 () Bool)

(assert (=> b!1173548 m!1348821))

(assert (=> b!1173548 m!1348821))

(declare-fun m!1348823 () Bool)

(assert (=> b!1173548 m!1348823))

(declare-fun m!1348825 () Bool)

(assert (=> b!1173538 m!1348825))

(check-sat (not b!1173557) (not b!1173546) (not b!1173550) (not b!1173553) (not b!1173544) (not b!1173556) (not b!1173538) (not b!1173554) (not b!1173539) (not b!1173548) (not b!1173542) (not b!1173545) (not b!1173551) (not b!1173540) (not b!1173555) (not b!1173541) (not b!1173552) (not b!1173564) (not b!1173549) (not b!1173537) (not b!1173547) (not b!1173543) (not b!1173565) (not start!103398))
(check-sat)
(get-model)

(declare-fun d!336122 () Bool)

(declare-fun lt!403187 () Bool)

(assert (=> d!336122 (= lt!403187 (forall!3076 (list!4284 lt!403172) lambda!48293))))

(declare-fun forall!3077 (Conc!3809 Int) Bool)

(assert (=> d!336122 (= lt!403187 (forall!3077 (c!195813 lt!403172) lambda!48293))))

(assert (=> d!336122 (= (forall!3075 lt!403172 lambda!48293) lt!403187)))

(declare-fun bs!286122 () Bool)

(assert (= bs!286122 d!336122))

(assert (=> bs!286122 m!1348723))

(assert (=> bs!286122 m!1348723))

(declare-fun m!1348827 () Bool)

(assert (=> bs!286122 m!1348827))

(declare-fun m!1348829 () Bool)

(assert (=> bs!286122 m!1348829))

(assert (=> b!1173554 d!336122))

(declare-fun bs!286123 () Bool)

(declare-fun d!336124 () Bool)

(assert (= bs!286123 (and d!336124 b!1173545)))

(declare-fun lambda!48296 () Int)

(assert (=> bs!286123 (= lambda!48296 lambda!48293)))

(declare-fun b!1173597 () Bool)

(declare-fun e!752748 () Bool)

(assert (=> b!1173597 (= e!752748 true)))

(declare-fun b!1173596 () Bool)

(declare-fun e!752747 () Bool)

(assert (=> b!1173596 (= e!752747 e!752748)))

(declare-fun b!1173595 () Bool)

(declare-fun e!752746 () Bool)

(assert (=> b!1173595 (= e!752746 e!752747)))

(assert (=> d!336124 e!752746))

(assert (= b!1173596 b!1173597))

(assert (= b!1173595 b!1173596))

(assert (= (and d!336124 ((_ is Cons!11605) (rules!9666 thiss!10527))) b!1173595))

(declare-fun order!7133 () Int)

(declare-fun order!7131 () Int)

(declare-fun dynLambda!5131 (Int Int) Int)

(declare-fun dynLambda!5132 (Int Int) Int)

(assert (=> b!1173597 (< (dynLambda!5131 order!7131 (toValue!3124 (transformation!2023 (h!17006 (rules!9666 thiss!10527))))) (dynLambda!5132 order!7133 lambda!48296))))

(declare-fun order!7135 () Int)

(declare-fun dynLambda!5133 (Int Int) Int)

(assert (=> b!1173597 (< (dynLambda!5133 order!7135 (toChars!2983 (transformation!2023 (h!17006 (rules!9666 thiss!10527))))) (dynLambda!5132 order!7133 lambda!48296))))

(assert (=> d!336124 true))

(declare-fun lt!403217 () Bool)

(assert (=> d!336124 (= lt!403217 (forall!3076 (t!110914 lt!403176) lambda!48296))))

(declare-fun e!752739 () Bool)

(assert (=> d!336124 (= lt!403217 e!752739)))

(declare-fun res!530200 () Bool)

(assert (=> d!336124 (=> res!530200 e!752739)))

(assert (=> d!336124 (= res!530200 (not ((_ is Cons!11604) (t!110914 lt!403176))))))

(declare-fun isEmpty!7045 (List!11629) Bool)

(assert (=> d!336124 (not (isEmpty!7045 (rules!9666 thiss!10527)))))

(assert (=> d!336124 (= (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) (t!110914 lt!403176)) lt!403217)))

(declare-fun b!1173585 () Bool)

(declare-fun e!752738 () Bool)

(assert (=> b!1173585 (= e!752739 e!752738)))

(declare-fun res!530199 () Bool)

(assert (=> b!1173585 (=> (not res!530199) (not e!752738))))

(assert (=> b!1173585 (= res!530199 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (h!17005 (t!110914 lt!403176))))))

(declare-fun b!1173586 () Bool)

(assert (=> b!1173586 (= e!752738 (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) (t!110914 (t!110914 lt!403176))))))

(assert (= (and d!336124 (not res!530200)) b!1173585))

(assert (= (and b!1173585 res!530199) b!1173586))

(declare-fun m!1348865 () Bool)

(assert (=> d!336124 m!1348865))

(declare-fun m!1348867 () Bool)

(assert (=> d!336124 m!1348867))

(declare-fun m!1348869 () Bool)

(assert (=> b!1173585 m!1348869))

(declare-fun m!1348871 () Bool)

(assert (=> b!1173586 m!1348871))

(assert (=> b!1173543 d!336124))

(declare-fun d!336130 () Bool)

(assert (=> d!336130 (= (separableTokens!154 Lexer!1716 lt!403172 (rules!9666 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!79 Lexer!1716 lt!403172 0 (rules!9666 thiss!10527)))))

(declare-fun bs!286124 () Bool)

(assert (= bs!286124 d!336130))

(assert (=> bs!286124 m!1348749))

(assert (=> b!1173553 d!336130))

(declare-fun b!1173660 () Bool)

(declare-fun e!752798 () Bool)

(declare-fun e!752795 () Bool)

(assert (=> b!1173660 (= e!752798 e!752795)))

(declare-fun res!530264 () Bool)

(assert (=> b!1173660 (=> (not res!530264) (not e!752795))))

(assert (=> b!1173660 (= res!530264 (separableTokensPredicate!140 Lexer!1716 (apply!2531 lt!403172 0) (apply!2531 lt!403172 (+ 0 1)) (rules!9666 thiss!10527)))))

(declare-fun lt!403412 () Unit!17862)

(declare-fun Unit!17874 () Unit!17862)

(assert (=> b!1173660 (= lt!403412 Unit!17874)))

(assert (=> b!1173660 (> (size!9150 (charsOf!1078 (apply!2531 lt!403172 (+ 0 1)))) 0)))

(declare-fun lt!403413 () Unit!17862)

(declare-fun Unit!17875 () Unit!17862)

(assert (=> b!1173660 (= lt!403413 Unit!17875)))

(assert (=> b!1173660 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (apply!2531 lt!403172 (+ 0 1)))))

(declare-fun lt!403410 () Unit!17862)

(declare-fun Unit!17876 () Unit!17862)

(assert (=> b!1173660 (= lt!403410 Unit!17876)))

(assert (=> b!1173660 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (apply!2531 lt!403172 0))))

(declare-fun lt!403406 () Unit!17862)

(declare-fun lt!403389 () Unit!17862)

(assert (=> b!1173660 (= lt!403406 lt!403389)))

(declare-fun lt!403398 () Token!3708)

(assert (=> b!1173660 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) lt!403398)))

(declare-fun lt!403394 () List!11628)

(assert (=> b!1173660 (= lt!403389 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!299 Lexer!1716 (rules!9666 thiss!10527) lt!403394 lt!403398))))

(assert (=> b!1173660 (= lt!403398 (apply!2531 lt!403172 (+ 0 1)))))

(assert (=> b!1173660 (= lt!403394 (list!4284 lt!403172))))

(declare-fun lt!403386 () Unit!17862)

(declare-fun lt!403407 () Unit!17862)

(assert (=> b!1173660 (= lt!403386 lt!403407)))

(declare-fun lt!403409 () Token!3708)

(assert (=> b!1173660 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) lt!403409)))

(declare-fun lt!403395 () List!11628)

(assert (=> b!1173660 (= lt!403407 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!299 Lexer!1716 (rules!9666 thiss!10527) lt!403395 lt!403409))))

(assert (=> b!1173660 (= lt!403409 (apply!2531 lt!403172 0))))

(assert (=> b!1173660 (= lt!403395 (list!4284 lt!403172))))

(declare-fun lt!403414 () Unit!17862)

(declare-fun lt!403391 () Unit!17862)

(assert (=> b!1173660 (= lt!403414 lt!403391)))

(declare-fun lt!403387 () List!11628)

(declare-fun lt!403408 () Int)

(assert (=> b!1173660 (= (tail!1696 (drop!495 lt!403387 lt!403408)) (drop!495 lt!403387 (+ lt!403408 1)))))

(assert (=> b!1173660 (= lt!403391 (lemmaDropTail!369 lt!403387 lt!403408))))

(assert (=> b!1173660 (= lt!403408 (+ 0 1))))

(assert (=> b!1173660 (= lt!403387 (list!4284 lt!403172))))

(declare-fun lt!403415 () Unit!17862)

(declare-fun lt!403417 () Unit!17862)

(assert (=> b!1173660 (= lt!403415 lt!403417)))

(declare-fun lt!403400 () List!11628)

(assert (=> b!1173660 (= (tail!1696 (drop!495 lt!403400 0)) (drop!495 lt!403400 (+ 0 1)))))

(assert (=> b!1173660 (= lt!403417 (lemmaDropTail!369 lt!403400 0))))

(assert (=> b!1173660 (= lt!403400 (list!4284 lt!403172))))

(declare-fun lt!403396 () Unit!17862)

(declare-fun lt!403416 () Unit!17862)

(assert (=> b!1173660 (= lt!403396 lt!403416)))

(declare-fun lt!403405 () List!11628)

(declare-fun lt!403397 () Int)

(assert (=> b!1173660 (= (head!2112 (drop!495 lt!403405 lt!403397)) (apply!2532 lt!403405 lt!403397))))

(assert (=> b!1173660 (= lt!403416 (lemmaDropApply!381 lt!403405 lt!403397))))

(assert (=> b!1173660 (= lt!403397 (+ 0 1))))

(assert (=> b!1173660 (= lt!403405 (list!4284 lt!403172))))

(declare-fun lt!403388 () Unit!17862)

(declare-fun lt!403392 () Unit!17862)

(assert (=> b!1173660 (= lt!403388 lt!403392)))

(declare-fun lt!403399 () List!11628)

(assert (=> b!1173660 (= (head!2112 (drop!495 lt!403399 0)) (apply!2532 lt!403399 0))))

(assert (=> b!1173660 (= lt!403392 (lemmaDropApply!381 lt!403399 0))))

(assert (=> b!1173660 (= lt!403399 (list!4284 lt!403172))))

(declare-fun b!1173661 () Bool)

(declare-fun e!752797 () Bool)

(assert (=> b!1173661 (= e!752797 (<= 0 (size!9151 lt!403172)))))

(declare-fun d!336132 () Bool)

(declare-fun lt!403418 () Bool)

(declare-fun dropList!330 (BalanceConc!7640 Int) List!11628)

(assert (=> d!336132 (= lt!403418 (tokensListTwoByTwoPredicateSeparableList!114 Lexer!1716 (dropList!330 lt!403172 0) (rules!9666 thiss!10527)))))

(declare-fun lt!403403 () Unit!17862)

(declare-fun lt!403390 () Unit!17862)

(assert (=> d!336132 (= lt!403403 lt!403390)))

(declare-fun lt!403411 () List!11628)

(assert (=> d!336132 (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) lt!403411)))

(declare-fun lt!403402 () List!11628)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!36 (LexerInterface!1718 List!11629 List!11628 List!11628) Unit!17862)

(assert (=> d!336132 (= lt!403390 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!36 Lexer!1716 (rules!9666 thiss!10527) lt!403402 lt!403411))))

(declare-fun e!752796 () Bool)

(assert (=> d!336132 e!752796))

(declare-fun res!530265 () Bool)

(assert (=> d!336132 (=> (not res!530265) (not e!752796))))

(assert (=> d!336132 (= res!530265 ((_ is Lexer!1716) Lexer!1716))))

(assert (=> d!336132 (= lt!403411 (dropList!330 lt!403172 0))))

(assert (=> d!336132 (= lt!403402 (list!4284 lt!403172))))

(declare-fun lt!403401 () Unit!17862)

(declare-fun lt!403393 () Unit!17862)

(assert (=> d!336132 (= lt!403401 lt!403393)))

(declare-fun lt!403404 () List!11628)

(assert (=> d!336132 (subseq!273 (drop!495 lt!403404 0) lt!403404)))

(declare-fun lemmaDropSubSeq!36 (List!11628 Int) Unit!17862)

(assert (=> d!336132 (= lt!403393 (lemmaDropSubSeq!36 lt!403404 0))))

(declare-fun e!752794 () Bool)

(assert (=> d!336132 e!752794))

(declare-fun res!530268 () Bool)

(assert (=> d!336132 (=> (not res!530268) (not e!752794))))

(assert (=> d!336132 (= res!530268 (>= 0 0))))

(assert (=> d!336132 (= lt!403404 (list!4284 lt!403172))))

(assert (=> d!336132 (= lt!403418 e!752798)))

(declare-fun res!530262 () Bool)

(assert (=> d!336132 (=> res!530262 e!752798)))

(assert (=> d!336132 (= res!530262 (not (< 0 (- (size!9151 lt!403172) 1))))))

(assert (=> d!336132 e!752797))

(declare-fun res!530267 () Bool)

(assert (=> d!336132 (=> (not res!530267) (not e!752797))))

(assert (=> d!336132 (= res!530267 (>= 0 0))))

(assert (=> d!336132 (= (tokensListTwoByTwoPredicateSeparable!79 Lexer!1716 lt!403172 0 (rules!9666 thiss!10527)) lt!403418)))

(declare-fun b!1173662 () Bool)

(declare-fun res!530263 () Bool)

(assert (=> b!1173662 (=> (not res!530263) (not e!752796))))

(assert (=> b!1173662 (= res!530263 (rulesInvariant!1592 Lexer!1716 (rules!9666 thiss!10527)))))

(declare-fun b!1173663 () Bool)

(declare-fun res!530261 () Bool)

(assert (=> b!1173663 (=> (not res!530261) (not e!752796))))

(assert (=> b!1173663 (= res!530261 (subseq!273 lt!403411 lt!403402))))

(declare-fun b!1173664 () Bool)

(declare-fun size!9153 (List!11628) Int)

(assert (=> b!1173664 (= e!752794 (<= 0 (size!9153 lt!403404)))))

(declare-fun b!1173665 () Bool)

(assert (=> b!1173665 (= e!752796 (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) lt!403402))))

(declare-fun b!1173666 () Bool)

(declare-fun res!530266 () Bool)

(assert (=> b!1173666 (=> (not res!530266) (not e!752796))))

(assert (=> b!1173666 (= res!530266 (not (isEmpty!7045 (rules!9666 thiss!10527))))))

(declare-fun b!1173667 () Bool)

(assert (=> b!1173667 (= e!752795 (tokensListTwoByTwoPredicateSeparable!79 Lexer!1716 lt!403172 (+ 0 1) (rules!9666 thiss!10527)))))

(assert (= (and d!336132 res!530267) b!1173661))

(assert (= (and d!336132 (not res!530262)) b!1173660))

(assert (= (and b!1173660 res!530264) b!1173667))

(assert (= (and d!336132 res!530268) b!1173664))

(assert (= (and d!336132 res!530265) b!1173666))

(assert (= (and b!1173666 res!530266) b!1173662))

(assert (= (and b!1173662 res!530263) b!1173663))

(assert (= (and b!1173663 res!530261) b!1173665))

(assert (=> b!1173662 m!1348705))

(declare-fun m!1348965 () Bool)

(assert (=> b!1173661 m!1348965))

(declare-fun m!1348967 () Bool)

(assert (=> b!1173663 m!1348967))

(declare-fun m!1348969 () Bool)

(assert (=> b!1173667 m!1348969))

(declare-fun m!1348971 () Bool)

(assert (=> b!1173665 m!1348971))

(assert (=> d!336132 m!1348723))

(declare-fun m!1348973 () Bool)

(assert (=> d!336132 m!1348973))

(declare-fun m!1348975 () Bool)

(assert (=> d!336132 m!1348975))

(declare-fun m!1348977 () Bool)

(assert (=> d!336132 m!1348977))

(declare-fun m!1348979 () Bool)

(assert (=> d!336132 m!1348979))

(assert (=> d!336132 m!1348975))

(declare-fun m!1348981 () Bool)

(assert (=> d!336132 m!1348981))

(declare-fun m!1348983 () Bool)

(assert (=> d!336132 m!1348983))

(assert (=> d!336132 m!1348965))

(assert (=> d!336132 m!1348977))

(declare-fun m!1348985 () Bool)

(assert (=> d!336132 m!1348985))

(declare-fun m!1348987 () Bool)

(assert (=> b!1173664 m!1348987))

(declare-fun m!1348989 () Bool)

(assert (=> b!1173660 m!1348989))

(declare-fun m!1348991 () Bool)

(assert (=> b!1173660 m!1348991))

(assert (=> b!1173660 m!1348723))

(declare-fun m!1348993 () Bool)

(assert (=> b!1173660 m!1348993))

(declare-fun m!1348995 () Bool)

(assert (=> b!1173660 m!1348995))

(declare-fun m!1348997 () Bool)

(assert (=> b!1173660 m!1348997))

(declare-fun m!1348999 () Bool)

(assert (=> b!1173660 m!1348999))

(declare-fun m!1349001 () Bool)

(assert (=> b!1173660 m!1349001))

(declare-fun m!1349003 () Bool)

(assert (=> b!1173660 m!1349003))

(declare-fun m!1349005 () Bool)

(assert (=> b!1173660 m!1349005))

(declare-fun m!1349007 () Bool)

(assert (=> b!1173660 m!1349007))

(declare-fun m!1349009 () Bool)

(assert (=> b!1173660 m!1349009))

(declare-fun m!1349011 () Bool)

(assert (=> b!1173660 m!1349011))

(declare-fun m!1349013 () Bool)

(assert (=> b!1173660 m!1349013))

(declare-fun m!1349015 () Bool)

(assert (=> b!1173660 m!1349015))

(assert (=> b!1173660 m!1349003))

(declare-fun m!1349017 () Bool)

(assert (=> b!1173660 m!1349017))

(assert (=> b!1173660 m!1349007))

(declare-fun m!1349019 () Bool)

(assert (=> b!1173660 m!1349019))

(assert (=> b!1173660 m!1349013))

(declare-fun m!1349021 () Bool)

(assert (=> b!1173660 m!1349021))

(declare-fun m!1349023 () Bool)

(assert (=> b!1173660 m!1349023))

(declare-fun m!1349025 () Bool)

(assert (=> b!1173660 m!1349025))

(declare-fun m!1349027 () Bool)

(assert (=> b!1173660 m!1349027))

(assert (=> b!1173660 m!1349011))

(declare-fun m!1349029 () Bool)

(assert (=> b!1173660 m!1349029))

(assert (=> b!1173660 m!1348999))

(assert (=> b!1173660 m!1349003))

(assert (=> b!1173660 m!1348999))

(declare-fun m!1349031 () Bool)

(assert (=> b!1173660 m!1349031))

(declare-fun m!1349033 () Bool)

(assert (=> b!1173660 m!1349033))

(assert (=> b!1173660 m!1348989))

(declare-fun m!1349035 () Bool)

(assert (=> b!1173660 m!1349035))

(declare-fun m!1349037 () Bool)

(assert (=> b!1173660 m!1349037))

(declare-fun m!1349039 () Bool)

(assert (=> b!1173660 m!1349039))

(assert (=> b!1173660 m!1348999))

(assert (=> b!1173660 m!1349025))

(declare-fun m!1349041 () Bool)

(assert (=> b!1173660 m!1349041))

(assert (=> b!1173666 m!1348867))

(assert (=> b!1173553 d!336132))

(declare-fun b!1173686 () Bool)

(declare-fun e!752811 () Int)

(declare-fun call!82395 () Int)

(assert (=> b!1173686 (= e!752811 (- call!82395 from!787))))

(declare-fun b!1173687 () Bool)

(declare-fun e!752810 () Int)

(assert (=> b!1173687 (= e!752810 e!752811)))

(declare-fun c!195825 () Bool)

(assert (=> b!1173687 (= c!195825 (>= from!787 call!82395))))

(declare-fun b!1173688 () Bool)

(declare-fun e!752812 () List!11628)

(assert (=> b!1173688 (= e!752812 Nil!11604)))

(declare-fun d!336146 () Bool)

(declare-fun e!752809 () Bool)

(assert (=> d!336146 e!752809))

(declare-fun res!530271 () Bool)

(assert (=> d!336146 (=> (not res!530271) (not e!752809))))

(declare-fun lt!403421 () List!11628)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1616 (List!11628) (InoxSet Token!3708))

(assert (=> d!336146 (= res!530271 (= ((_ map implies) (content!1616 lt!403421) (content!1616 lt!403175)) ((as const (InoxSet Token!3708)) true)))))

(assert (=> d!336146 (= lt!403421 e!752812)))

(declare-fun c!195823 () Bool)

(assert (=> d!336146 (= c!195823 ((_ is Nil!11604) lt!403175))))

(assert (=> d!336146 (= (drop!495 lt!403175 from!787) lt!403421)))

(declare-fun b!1173689 () Bool)

(declare-fun e!752813 () List!11628)

(assert (=> b!1173689 (= e!752813 (drop!495 (t!110914 lt!403175) (- from!787 1)))))

(declare-fun b!1173690 () Bool)

(assert (=> b!1173690 (= e!752812 e!752813)))

(declare-fun c!195822 () Bool)

(assert (=> b!1173690 (= c!195822 (<= from!787 0))))

(declare-fun b!1173691 () Bool)

(assert (=> b!1173691 (= e!752810 call!82395)))

(declare-fun b!1173692 () Bool)

(assert (=> b!1173692 (= e!752813 lt!403175)))

(declare-fun b!1173693 () Bool)

(assert (=> b!1173693 (= e!752811 0)))

(declare-fun b!1173694 () Bool)

(assert (=> b!1173694 (= e!752809 (= (size!9153 lt!403421) e!752810))))

(declare-fun c!195824 () Bool)

(assert (=> b!1173694 (= c!195824 (<= from!787 0))))

(declare-fun bm!82390 () Bool)

(assert (=> bm!82390 (= call!82395 (size!9153 lt!403175))))

(assert (= (and d!336146 c!195823) b!1173688))

(assert (= (and d!336146 (not c!195823)) b!1173690))

(assert (= (and b!1173690 c!195822) b!1173692))

(assert (= (and b!1173690 (not c!195822)) b!1173689))

(assert (= (and d!336146 res!530271) b!1173694))

(assert (= (and b!1173694 c!195824) b!1173691))

(assert (= (and b!1173694 (not c!195824)) b!1173687))

(assert (= (and b!1173687 c!195825) b!1173693))

(assert (= (and b!1173687 (not c!195825)) b!1173686))

(assert (= (or b!1173691 b!1173687 b!1173686) bm!82390))

(declare-fun m!1349043 () Bool)

(assert (=> d!336146 m!1349043))

(declare-fun m!1349045 () Bool)

(assert (=> d!336146 m!1349045))

(declare-fun m!1349047 () Bool)

(assert (=> b!1173689 m!1349047))

(declare-fun m!1349049 () Bool)

(assert (=> b!1173694 m!1349049))

(declare-fun m!1349051 () Bool)

(assert (=> bm!82390 m!1349051))

(assert (=> b!1173553 d!336146))

(declare-fun d!336148 () Bool)

(declare-fun res!530276 () Bool)

(declare-fun e!752818 () Bool)

(assert (=> d!336148 (=> res!530276 e!752818)))

(assert (=> d!336148 (= res!530276 ((_ is Nil!11604) lt!403175))))

(assert (=> d!336148 (= (forall!3076 lt!403175 lambda!48293) e!752818)))

(declare-fun b!1173699 () Bool)

(declare-fun e!752819 () Bool)

(assert (=> b!1173699 (= e!752818 e!752819)))

(declare-fun res!530277 () Bool)

(assert (=> b!1173699 (=> (not res!530277) (not e!752819))))

(declare-fun dynLambda!5134 (Int Token!3708) Bool)

(assert (=> b!1173699 (= res!530277 (dynLambda!5134 lambda!48293 (h!17005 lt!403175)))))

(declare-fun b!1173700 () Bool)

(assert (=> b!1173700 (= e!752819 (forall!3076 (t!110914 lt!403175) lambda!48293))))

(assert (= (and d!336148 (not res!530276)) b!1173699))

(assert (= (and b!1173699 res!530277) b!1173700))

(declare-fun b_lambda!35103 () Bool)

(assert (=> (not b_lambda!35103) (not b!1173699)))

(declare-fun m!1349053 () Bool)

(assert (=> b!1173699 m!1349053))

(declare-fun m!1349055 () Bool)

(assert (=> b!1173700 m!1349055))

(assert (=> b!1173553 d!336148))

(declare-fun d!336150 () Bool)

(assert (=> d!336150 (forall!3076 lt!403184 lambda!48293)))

(declare-fun lt!403424 () Unit!17862)

(declare-fun choose!7577 (List!11628 List!11628 Int) Unit!17862)

(assert (=> d!336150 (= lt!403424 (choose!7577 lt!403184 lt!403175 lambda!48293))))

(assert (=> d!336150 (forall!3076 lt!403175 lambda!48293)))

(assert (=> d!336150 (= (lemmaForallSubseq!161 lt!403184 lt!403175 lambda!48293) lt!403424)))

(declare-fun bs!286127 () Bool)

(assert (= bs!286127 d!336150))

(assert (=> bs!286127 m!1348743))

(declare-fun m!1349057 () Bool)

(assert (=> bs!286127 m!1349057))

(assert (=> bs!286127 m!1348737))

(assert (=> b!1173553 d!336150))

(declare-fun d!336152 () Bool)

(declare-fun res!530278 () Bool)

(declare-fun e!752820 () Bool)

(assert (=> d!336152 (=> res!530278 e!752820)))

(assert (=> d!336152 (= res!530278 ((_ is Nil!11604) lt!403184))))

(assert (=> d!336152 (= (forall!3076 lt!403184 lambda!48293) e!752820)))

(declare-fun b!1173701 () Bool)

(declare-fun e!752821 () Bool)

(assert (=> b!1173701 (= e!752820 e!752821)))

(declare-fun res!530279 () Bool)

(assert (=> b!1173701 (=> (not res!530279) (not e!752821))))

(assert (=> b!1173701 (= res!530279 (dynLambda!5134 lambda!48293 (h!17005 lt!403184)))))

(declare-fun b!1173702 () Bool)

(assert (=> b!1173702 (= e!752821 (forall!3076 (t!110914 lt!403184) lambda!48293))))

(assert (= (and d!336152 (not res!530278)) b!1173701))

(assert (= (and b!1173701 res!530279) b!1173702))

(declare-fun b_lambda!35105 () Bool)

(assert (=> (not b_lambda!35105) (not b!1173701)))

(declare-fun m!1349059 () Bool)

(assert (=> b!1173701 m!1349059))

(declare-fun m!1349061 () Bool)

(assert (=> b!1173702 m!1349061))

(assert (=> b!1173553 d!336152))

(declare-fun d!336154 () Bool)

(assert (=> d!336154 (subseq!273 (drop!495 lt!403175 from!787) lt!403175)))

(declare-fun lt!403427 () Unit!17862)

(declare-fun choose!7578 (List!11628 Int) Unit!17862)

(assert (=> d!336154 (= lt!403427 (choose!7578 lt!403175 from!787))))

(assert (=> d!336154 (= (lemmaDropSubseq!48 lt!403175 from!787) lt!403427)))

(declare-fun bs!286128 () Bool)

(assert (= bs!286128 d!336154))

(assert (=> bs!286128 m!1348739))

(assert (=> bs!286128 m!1348739))

(declare-fun m!1349063 () Bool)

(assert (=> bs!286128 m!1349063))

(declare-fun m!1349065 () Bool)

(assert (=> bs!286128 m!1349065))

(assert (=> b!1173553 d!336154))

(declare-fun bs!286129 () Bool)

(declare-fun d!336156 () Bool)

(assert (= bs!286129 (and d!336156 b!1173545)))

(declare-fun lambda!48297 () Int)

(assert (=> bs!286129 (= lambda!48297 lambda!48293)))

(declare-fun bs!286130 () Bool)

(assert (= bs!286130 (and d!336156 d!336124)))

(assert (=> bs!286130 (= lambda!48297 lambda!48296)))

(declare-fun b!1173707 () Bool)

(declare-fun e!752826 () Bool)

(assert (=> b!1173707 (= e!752826 true)))

(declare-fun b!1173706 () Bool)

(declare-fun e!752825 () Bool)

(assert (=> b!1173706 (= e!752825 e!752826)))

(declare-fun b!1173705 () Bool)

(declare-fun e!752824 () Bool)

(assert (=> b!1173705 (= e!752824 e!752825)))

(assert (=> d!336156 e!752824))

(assert (= b!1173706 b!1173707))

(assert (= b!1173705 b!1173706))

(assert (= (and d!336156 ((_ is Cons!11605) (rules!9666 thiss!10527))) b!1173705))

(assert (=> b!1173707 (< (dynLambda!5131 order!7131 (toValue!3124 (transformation!2023 (h!17006 (rules!9666 thiss!10527))))) (dynLambda!5132 order!7133 lambda!48297))))

(assert (=> b!1173707 (< (dynLambda!5133 order!7135 (toChars!2983 (transformation!2023 (h!17006 (rules!9666 thiss!10527))))) (dynLambda!5132 order!7133 lambda!48297))))

(assert (=> d!336156 true))

(declare-fun lt!403428 () Bool)

(assert (=> d!336156 (= lt!403428 (forall!3076 lt!403184 lambda!48297))))

(declare-fun e!752823 () Bool)

(assert (=> d!336156 (= lt!403428 e!752823)))

(declare-fun res!530281 () Bool)

(assert (=> d!336156 (=> res!530281 e!752823)))

(assert (=> d!336156 (= res!530281 (not ((_ is Cons!11604) lt!403184)))))

(assert (=> d!336156 (not (isEmpty!7045 (rules!9666 thiss!10527)))))

(assert (=> d!336156 (= (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) lt!403184) lt!403428)))

(declare-fun b!1173703 () Bool)

(declare-fun e!752822 () Bool)

(assert (=> b!1173703 (= e!752823 e!752822)))

(declare-fun res!530280 () Bool)

(assert (=> b!1173703 (=> (not res!530280) (not e!752822))))

(assert (=> b!1173703 (= res!530280 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (h!17005 lt!403184)))))

(declare-fun b!1173704 () Bool)

(assert (=> b!1173704 (= e!752822 (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) (t!110914 lt!403184)))))

(assert (= (and d!336156 (not res!530281)) b!1173703))

(assert (= (and b!1173703 res!530280) b!1173704))

(declare-fun m!1349067 () Bool)

(assert (=> d!336156 m!1349067))

(assert (=> d!336156 m!1348867))

(assert (=> b!1173703 m!1348817))

(assert (=> b!1173704 m!1348825))

(assert (=> b!1173553 d!336156))

(declare-fun bs!286133 () Bool)

(declare-fun b!1173768 () Bool)

(assert (= bs!286133 (and b!1173768 b!1173545)))

(declare-fun lambda!48303 () Int)

(assert (=> bs!286133 (= lambda!48303 lambda!48293)))

(declare-fun bs!286134 () Bool)

(assert (= bs!286134 (and b!1173768 d!336124)))

(assert (=> bs!286134 (= lambda!48303 lambda!48296)))

(declare-fun bs!286135 () Bool)

(assert (= bs!286135 (and b!1173768 d!336156)))

(assert (=> bs!286135 (= lambda!48303 lambda!48297)))

(declare-fun b!1173772 () Bool)

(declare-fun e!752877 () Bool)

(assert (=> b!1173772 (= e!752877 true)))

(declare-fun b!1173771 () Bool)

(declare-fun e!752876 () Bool)

(assert (=> b!1173771 (= e!752876 e!752877)))

(declare-fun b!1173770 () Bool)

(declare-fun e!752875 () Bool)

(assert (=> b!1173770 (= e!752875 e!752876)))

(assert (=> b!1173768 e!752875))

(assert (= b!1173771 b!1173772))

(assert (= b!1173770 b!1173771))

(assert (= (and b!1173768 ((_ is Cons!11605) (rules!9666 thiss!10527))) b!1173770))

(assert (=> b!1173772 (< (dynLambda!5131 order!7131 (toValue!3124 (transformation!2023 (h!17006 (rules!9666 thiss!10527))))) (dynLambda!5132 order!7133 lambda!48303))))

(assert (=> b!1173772 (< (dynLambda!5133 order!7135 (toChars!2983 (transformation!2023 (h!17006 (rules!9666 thiss!10527))))) (dynLambda!5132 order!7133 lambda!48303))))

(declare-fun b!1173766 () Bool)

(declare-fun e!752872 () Bool)

(declare-fun e!752873 () Bool)

(assert (=> b!1173766 (= e!752872 e!752873)))

(declare-fun res!530306 () Bool)

(assert (=> b!1173766 (=> (not res!530306) (not e!752873))))

(declare-fun lt!403471 () List!11628)

(assert (=> b!1173766 (= res!530306 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (h!17005 lt!403471)))))

(declare-fun d!336158 () Bool)

(declare-fun e!752871 () Bool)

(assert (=> d!336158 e!752871))

(declare-fun res!530307 () Bool)

(assert (=> d!336158 (=> (not res!530307) (not e!752871))))

(assert (=> d!336158 (= res!530307 (= (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) (drop!495 lt!403175 from!787)) e!752872))))

(declare-fun res!530308 () Bool)

(assert (=> d!336158 (=> res!530308 e!752872)))

(assert (=> d!336158 (= res!530308 (not ((_ is Cons!11604) lt!403471)))))

(assert (=> d!336158 (= lt!403471 (drop!495 lt!403175 from!787))))

(declare-fun lt!403475 () Unit!17862)

(declare-fun choose!7579 (LexerInterface!1718 List!11628 Int List!11629) Unit!17862)

(assert (=> d!336158 (= lt!403475 (choose!7579 Lexer!1716 lt!403175 from!787 (rules!9666 thiss!10527)))))

(assert (=> d!336158 (not (isEmpty!7045 (rules!9666 thiss!10527)))))

(assert (=> d!336158 (= (tokensListTwoByTwoPredicateSeparableTokensDropList!48 Lexer!1716 lt!403175 from!787 (rules!9666 thiss!10527)) lt!403475)))

(declare-fun b!1173767 () Bool)

(assert (=> b!1173767 (= e!752873 (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) (t!110914 lt!403471)))))

(assert (=> b!1173768 (= e!752871 (tokensListTwoByTwoPredicateSeparableList!114 Lexer!1716 (drop!495 lt!403175 from!787) (rules!9666 thiss!10527)))))

(declare-fun lt!403473 () Unit!17862)

(declare-fun lt!403474 () Unit!17862)

(assert (=> b!1173768 (= lt!403473 lt!403474)))

(declare-fun lt!403476 () List!11628)

(assert (=> b!1173768 (forall!3076 lt!403476 lambda!48303)))

(assert (=> b!1173768 (= lt!403474 (lemmaForallSubseq!161 lt!403476 lt!403175 lambda!48303))))

(declare-fun e!752874 () Bool)

(assert (=> b!1173768 e!752874))

(declare-fun res!530305 () Bool)

(assert (=> b!1173768 (=> (not res!530305) (not e!752874))))

(assert (=> b!1173768 (= res!530305 (forall!3076 lt!403175 lambda!48303))))

(assert (=> b!1173768 (= lt!403476 (drop!495 lt!403175 from!787))))

(declare-fun lt!403472 () Unit!17862)

(declare-fun lt!403470 () Unit!17862)

(assert (=> b!1173768 (= lt!403472 lt!403470)))

(assert (=> b!1173768 (subseq!273 (drop!495 lt!403175 from!787) lt!403175)))

(assert (=> b!1173768 (= lt!403470 (lemmaDropSubseq!48 lt!403175 from!787))))

(declare-fun b!1173769 () Bool)

(assert (=> b!1173769 (= e!752874 (subseq!273 lt!403476 lt!403175))))

(assert (= (and d!336158 (not res!530308)) b!1173766))

(assert (= (and b!1173766 res!530306) b!1173767))

(assert (= (and d!336158 res!530307) b!1173768))

(assert (= (and b!1173768 res!530305) b!1173769))

(declare-fun m!1349101 () Bool)

(assert (=> b!1173767 m!1349101))

(assert (=> d!336158 m!1348739))

(assert (=> d!336158 m!1348739))

(declare-fun m!1349103 () Bool)

(assert (=> d!336158 m!1349103))

(declare-fun m!1349105 () Bool)

(assert (=> d!336158 m!1349105))

(assert (=> d!336158 m!1348867))

(declare-fun m!1349107 () Bool)

(assert (=> b!1173766 m!1349107))

(declare-fun m!1349109 () Bool)

(assert (=> b!1173769 m!1349109))

(declare-fun m!1349111 () Bool)

(assert (=> b!1173768 m!1349111))

(assert (=> b!1173768 m!1348739))

(assert (=> b!1173768 m!1348739))

(declare-fun m!1349113 () Bool)

(assert (=> b!1173768 m!1349113))

(assert (=> b!1173768 m!1348741))

(declare-fun m!1349115 () Bool)

(assert (=> b!1173768 m!1349115))

(declare-fun m!1349117 () Bool)

(assert (=> b!1173768 m!1349117))

(assert (=> b!1173768 m!1348739))

(assert (=> b!1173768 m!1349063))

(assert (=> b!1173553 d!336158))

(declare-fun b!1173781 () Bool)

(declare-fun e!752886 () Bool)

(declare-fun e!752887 () Bool)

(assert (=> b!1173781 (= e!752886 e!752887)))

(declare-fun res!530318 () Bool)

(assert (=> b!1173781 (=> (not res!530318) (not e!752887))))

(assert (=> b!1173781 (= res!530318 ((_ is Cons!11604) lt!403175))))

(declare-fun b!1173782 () Bool)

(declare-fun e!752888 () Bool)

(assert (=> b!1173782 (= e!752887 e!752888)))

(declare-fun res!530320 () Bool)

(assert (=> b!1173782 (=> res!530320 e!752888)))

(declare-fun e!752889 () Bool)

(assert (=> b!1173782 (= res!530320 e!752889)))

(declare-fun res!530319 () Bool)

(assert (=> b!1173782 (=> (not res!530319) (not e!752889))))

(assert (=> b!1173782 (= res!530319 (= (h!17005 lt!403184) (h!17005 lt!403175)))))

(declare-fun b!1173783 () Bool)

(assert (=> b!1173783 (= e!752889 (subseq!273 (t!110914 lt!403184) (t!110914 lt!403175)))))

(declare-fun d!336166 () Bool)

(declare-fun res!530317 () Bool)

(assert (=> d!336166 (=> res!530317 e!752886)))

(assert (=> d!336166 (= res!530317 ((_ is Nil!11604) lt!403184))))

(assert (=> d!336166 (= (subseq!273 lt!403184 lt!403175) e!752886)))

(declare-fun b!1173784 () Bool)

(assert (=> b!1173784 (= e!752888 (subseq!273 lt!403184 (t!110914 lt!403175)))))

(assert (= (and d!336166 (not res!530317)) b!1173781))

(assert (= (and b!1173781 res!530318) b!1173782))

(assert (= (and b!1173782 res!530319) b!1173783))

(assert (= (and b!1173782 (not res!530320)) b!1173784))

(declare-fun m!1349119 () Bool)

(assert (=> b!1173783 m!1349119))

(declare-fun m!1349121 () Bool)

(assert (=> b!1173784 m!1349121))

(assert (=> b!1173553 d!336166))

(declare-fun d!336168 () Bool)

(declare-fun c!195840 () Bool)

(assert (=> d!336168 (= c!195840 ((_ is Node!3809) (c!195813 (tokens!1664 thiss!10527))))))

(declare-fun e!752894 () Bool)

(assert (=> d!336168 (= (inv!15315 (c!195813 (tokens!1664 thiss!10527))) e!752894)))

(declare-fun b!1173791 () Bool)

(declare-fun inv!15318 (Conc!3809) Bool)

(assert (=> b!1173791 (= e!752894 (inv!15318 (c!195813 (tokens!1664 thiss!10527))))))

(declare-fun b!1173792 () Bool)

(declare-fun e!752895 () Bool)

(assert (=> b!1173792 (= e!752894 e!752895)))

(declare-fun res!530323 () Bool)

(assert (=> b!1173792 (= res!530323 (not ((_ is Leaf!5831) (c!195813 (tokens!1664 thiss!10527)))))))

(assert (=> b!1173792 (=> res!530323 e!752895)))

(declare-fun b!1173793 () Bool)

(declare-fun inv!15319 (Conc!3809) Bool)

(assert (=> b!1173793 (= e!752895 (inv!15319 (c!195813 (tokens!1664 thiss!10527))))))

(assert (= (and d!336168 c!195840) b!1173791))

(assert (= (and d!336168 (not c!195840)) b!1173792))

(assert (= (and b!1173792 (not res!530323)) b!1173793))

(declare-fun m!1349123 () Bool)

(assert (=> b!1173791 m!1349123))

(declare-fun m!1349125 () Bool)

(assert (=> b!1173793 m!1349125))

(assert (=> b!1173542 d!336168))

(declare-fun d!336170 () Bool)

(declare-fun lt!403485 () Bool)

(declare-fun e!752913 () Bool)

(assert (=> d!336170 (= lt!403485 e!752913)))

(declare-fun res!530340 () Bool)

(assert (=> d!336170 (=> (not res!530340) (not e!752913))))

(declare-datatypes ((tuple2!12056 0))(
  ( (tuple2!12057 (_1!6875 BalanceConc!7640) (_2!6875 BalanceConc!7638)) )
))
(declare-fun lex!716 (LexerInterface!1718 List!11629 BalanceConc!7638) tuple2!12056)

(declare-fun print!653 (LexerInterface!1718 BalanceConc!7640) BalanceConc!7638)

(declare-fun singletonSeq!687 (Token!3708) BalanceConc!7640)

(assert (=> d!336170 (= res!530340 (= (list!4284 (_1!6875 (lex!716 Lexer!1716 (rules!9666 thiss!10527) (print!653 Lexer!1716 (singletonSeq!687 (h!17005 lt!403175)))))) (list!4284 (singletonSeq!687 (h!17005 lt!403175)))))))

(declare-fun e!752912 () Bool)

(assert (=> d!336170 (= lt!403485 e!752912)))

(declare-fun res!530341 () Bool)

(assert (=> d!336170 (=> (not res!530341) (not e!752912))))

(declare-fun lt!403484 () tuple2!12056)

(assert (=> d!336170 (= res!530341 (= (size!9151 (_1!6875 lt!403484)) 1))))

(assert (=> d!336170 (= lt!403484 (lex!716 Lexer!1716 (rules!9666 thiss!10527) (print!653 Lexer!1716 (singletonSeq!687 (h!17005 lt!403175)))))))

(assert (=> d!336170 (not (isEmpty!7045 (rules!9666 thiss!10527)))))

(assert (=> d!336170 (= (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (h!17005 lt!403175)) lt!403485)))

(declare-fun b!1173814 () Bool)

(declare-fun res!530339 () Bool)

(assert (=> b!1173814 (=> (not res!530339) (not e!752912))))

(assert (=> b!1173814 (= res!530339 (= (apply!2531 (_1!6875 lt!403484) 0) (h!17005 lt!403175)))))

(declare-fun b!1173815 () Bool)

(declare-fun isEmpty!7046 (BalanceConc!7638) Bool)

(assert (=> b!1173815 (= e!752912 (isEmpty!7046 (_2!6875 lt!403484)))))

(declare-fun b!1173816 () Bool)

(assert (=> b!1173816 (= e!752913 (isEmpty!7046 (_2!6875 (lex!716 Lexer!1716 (rules!9666 thiss!10527) (print!653 Lexer!1716 (singletonSeq!687 (h!17005 lt!403175)))))))))

(assert (= (and d!336170 res!530341) b!1173814))

(assert (= (and b!1173814 res!530339) b!1173815))

(assert (= (and d!336170 res!530340) b!1173816))

(declare-fun m!1349133 () Bool)

(assert (=> d!336170 m!1349133))

(declare-fun m!1349135 () Bool)

(assert (=> d!336170 m!1349135))

(declare-fun m!1349137 () Bool)

(assert (=> d!336170 m!1349137))

(assert (=> d!336170 m!1349135))

(declare-fun m!1349139 () Bool)

(assert (=> d!336170 m!1349139))

(declare-fun m!1349141 () Bool)

(assert (=> d!336170 m!1349141))

(assert (=> d!336170 m!1349133))

(declare-fun m!1349143 () Bool)

(assert (=> d!336170 m!1349143))

(assert (=> d!336170 m!1348867))

(assert (=> d!336170 m!1349133))

(declare-fun m!1349145 () Bool)

(assert (=> b!1173814 m!1349145))

(declare-fun m!1349147 () Bool)

(assert (=> b!1173815 m!1349147))

(assert (=> b!1173816 m!1349133))

(assert (=> b!1173816 m!1349133))

(assert (=> b!1173816 m!1349135))

(assert (=> b!1173816 m!1349135))

(assert (=> b!1173816 m!1349139))

(declare-fun m!1349149 () Bool)

(assert (=> b!1173816 m!1349149))

(assert (=> b!1173552 d!336170))

(declare-fun d!336176 () Bool)

(declare-fun lt!403487 () Bool)

(declare-fun e!752915 () Bool)

(assert (=> d!336176 (= lt!403487 e!752915)))

(declare-fun res!530343 () Bool)

(assert (=> d!336176 (=> (not res!530343) (not e!752915))))

(assert (=> d!336176 (= res!530343 (= (list!4284 (_1!6875 (lex!716 Lexer!1716 (rules!9666 thiss!10527) (print!653 Lexer!1716 (singletonSeq!687 (h!17005 lt!403184)))))) (list!4284 (singletonSeq!687 (h!17005 lt!403184)))))))

(declare-fun e!752914 () Bool)

(assert (=> d!336176 (= lt!403487 e!752914)))

(declare-fun res!530344 () Bool)

(assert (=> d!336176 (=> (not res!530344) (not e!752914))))

(declare-fun lt!403486 () tuple2!12056)

(assert (=> d!336176 (= res!530344 (= (size!9151 (_1!6875 lt!403486)) 1))))

(assert (=> d!336176 (= lt!403486 (lex!716 Lexer!1716 (rules!9666 thiss!10527) (print!653 Lexer!1716 (singletonSeq!687 (h!17005 lt!403184)))))))

(assert (=> d!336176 (not (isEmpty!7045 (rules!9666 thiss!10527)))))

(assert (=> d!336176 (= (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (h!17005 lt!403184)) lt!403487)))

(declare-fun b!1173817 () Bool)

(declare-fun res!530342 () Bool)

(assert (=> b!1173817 (=> (not res!530342) (not e!752914))))

(assert (=> b!1173817 (= res!530342 (= (apply!2531 (_1!6875 lt!403486) 0) (h!17005 lt!403184)))))

(declare-fun b!1173818 () Bool)

(assert (=> b!1173818 (= e!752914 (isEmpty!7046 (_2!6875 lt!403486)))))

(declare-fun b!1173819 () Bool)

(assert (=> b!1173819 (= e!752915 (isEmpty!7046 (_2!6875 (lex!716 Lexer!1716 (rules!9666 thiss!10527) (print!653 Lexer!1716 (singletonSeq!687 (h!17005 lt!403184)))))))))

(assert (= (and d!336176 res!530344) b!1173817))

(assert (= (and b!1173817 res!530342) b!1173818))

(assert (= (and d!336176 res!530343) b!1173819))

(declare-fun m!1349151 () Bool)

(assert (=> d!336176 m!1349151))

(declare-fun m!1349153 () Bool)

(assert (=> d!336176 m!1349153))

(declare-fun m!1349155 () Bool)

(assert (=> d!336176 m!1349155))

(assert (=> d!336176 m!1349153))

(declare-fun m!1349157 () Bool)

(assert (=> d!336176 m!1349157))

(declare-fun m!1349159 () Bool)

(assert (=> d!336176 m!1349159))

(assert (=> d!336176 m!1349151))

(declare-fun m!1349161 () Bool)

(assert (=> d!336176 m!1349161))

(assert (=> d!336176 m!1348867))

(assert (=> d!336176 m!1349151))

(declare-fun m!1349163 () Bool)

(assert (=> b!1173817 m!1349163))

(declare-fun m!1349165 () Bool)

(assert (=> b!1173818 m!1349165))

(assert (=> b!1173819 m!1349151))

(assert (=> b!1173819 m!1349151))

(assert (=> b!1173819 m!1349153))

(assert (=> b!1173819 m!1349153))

(assert (=> b!1173819 m!1349157))

(declare-fun m!1349167 () Bool)

(assert (=> b!1173819 m!1349167))

(assert (=> b!1173541 d!336176))

(declare-fun d!336178 () Bool)

(declare-fun lt!403489 () Bool)

(declare-fun e!752917 () Bool)

(assert (=> d!336178 (= lt!403489 e!752917)))

(declare-fun res!530346 () Bool)

(assert (=> d!336178 (=> (not res!530346) (not e!752917))))

(assert (=> d!336178 (= res!530346 (= (list!4284 (_1!6875 (lex!716 Lexer!1716 (rules!9666 thiss!10527) (print!653 Lexer!1716 (singletonSeq!687 (h!17005 lt!403176)))))) (list!4284 (singletonSeq!687 (h!17005 lt!403176)))))))

(declare-fun e!752916 () Bool)

(assert (=> d!336178 (= lt!403489 e!752916)))

(declare-fun res!530347 () Bool)

(assert (=> d!336178 (=> (not res!530347) (not e!752916))))

(declare-fun lt!403488 () tuple2!12056)

(assert (=> d!336178 (= res!530347 (= (size!9151 (_1!6875 lt!403488)) 1))))

(assert (=> d!336178 (= lt!403488 (lex!716 Lexer!1716 (rules!9666 thiss!10527) (print!653 Lexer!1716 (singletonSeq!687 (h!17005 lt!403176)))))))

(assert (=> d!336178 (not (isEmpty!7045 (rules!9666 thiss!10527)))))

(assert (=> d!336178 (= (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (h!17005 lt!403176)) lt!403489)))

(declare-fun b!1173820 () Bool)

(declare-fun res!530345 () Bool)

(assert (=> b!1173820 (=> (not res!530345) (not e!752916))))

(assert (=> b!1173820 (= res!530345 (= (apply!2531 (_1!6875 lt!403488) 0) (h!17005 lt!403176)))))

(declare-fun b!1173821 () Bool)

(assert (=> b!1173821 (= e!752916 (isEmpty!7046 (_2!6875 lt!403488)))))

(declare-fun b!1173822 () Bool)

(assert (=> b!1173822 (= e!752917 (isEmpty!7046 (_2!6875 (lex!716 Lexer!1716 (rules!9666 thiss!10527) (print!653 Lexer!1716 (singletonSeq!687 (h!17005 lt!403176)))))))))

(assert (= (and d!336178 res!530347) b!1173820))

(assert (= (and b!1173820 res!530345) b!1173821))

(assert (= (and d!336178 res!530346) b!1173822))

(declare-fun m!1349169 () Bool)

(assert (=> d!336178 m!1349169))

(declare-fun m!1349171 () Bool)

(assert (=> d!336178 m!1349171))

(declare-fun m!1349173 () Bool)

(assert (=> d!336178 m!1349173))

(assert (=> d!336178 m!1349171))

(declare-fun m!1349175 () Bool)

(assert (=> d!336178 m!1349175))

(declare-fun m!1349177 () Bool)

(assert (=> d!336178 m!1349177))

(assert (=> d!336178 m!1349169))

(declare-fun m!1349179 () Bool)

(assert (=> d!336178 m!1349179))

(assert (=> d!336178 m!1348867))

(assert (=> d!336178 m!1349169))

(declare-fun m!1349181 () Bool)

(assert (=> b!1173820 m!1349181))

(declare-fun m!1349183 () Bool)

(assert (=> b!1173821 m!1349183))

(assert (=> b!1173822 m!1349169))

(assert (=> b!1173822 m!1349169))

(assert (=> b!1173822 m!1349171))

(assert (=> b!1173822 m!1349171))

(assert (=> b!1173822 m!1349175))

(declare-fun m!1349185 () Bool)

(assert (=> b!1173822 m!1349185))

(assert (=> b!1173546 d!336178))

(declare-fun d!336180 () Bool)

(declare-fun lt!403492 () Int)

(assert (=> d!336180 (= lt!403492 (size!9153 (list!4284 (tokens!1664 thiss!10527))))))

(declare-fun size!9154 (Conc!3809) Int)

(assert (=> d!336180 (= lt!403492 (size!9154 (c!195813 (tokens!1664 thiss!10527))))))

(assert (=> d!336180 (= (size!9151 (tokens!1664 thiss!10527)) lt!403492)))

(declare-fun bs!286138 () Bool)

(assert (= bs!286138 d!336180))

(assert (=> bs!286138 m!1348765))

(assert (=> bs!286138 m!1348765))

(declare-fun m!1349187 () Bool)

(assert (=> bs!286138 m!1349187))

(declare-fun m!1349189 () Bool)

(assert (=> bs!286138 m!1349189))

(assert (=> b!1173556 d!336180))

(declare-fun d!336182 () Bool)

(declare-fun lt!403493 () Bool)

(assert (=> d!336182 (= lt!403493 (forall!3076 (list!4284 (tokens!1664 thiss!10527)) lambda!48293))))

(assert (=> d!336182 (= lt!403493 (forall!3077 (c!195813 (tokens!1664 thiss!10527)) lambda!48293))))

(assert (=> d!336182 (= (forall!3075 (tokens!1664 thiss!10527) lambda!48293) lt!403493)))

(declare-fun bs!286139 () Bool)

(assert (= bs!286139 d!336182))

(assert (=> bs!286139 m!1348765))

(assert (=> bs!286139 m!1348765))

(declare-fun m!1349191 () Bool)

(assert (=> bs!286139 m!1349191))

(declare-fun m!1349193 () Bool)

(assert (=> bs!286139 m!1349193))

(assert (=> b!1173545 d!336182))

(declare-fun bs!286153 () Bool)

(declare-fun d!336184 () Bool)

(assert (= bs!286153 (and d!336184 b!1173545)))

(declare-fun lambda!48314 () Int)

(assert (=> bs!286153 (= lambda!48314 lambda!48293)))

(declare-fun bs!286154 () Bool)

(assert (= bs!286154 (and d!336184 d!336124)))

(assert (=> bs!286154 (= lambda!48314 lambda!48296)))

(declare-fun bs!286155 () Bool)

(assert (= bs!286155 (and d!336184 d!336156)))

(assert (=> bs!286155 (= lambda!48314 lambda!48297)))

(declare-fun bs!286156 () Bool)

(assert (= bs!286156 (and d!336184 b!1173768)))

(assert (=> bs!286156 (= lambda!48314 lambda!48303)))

(declare-fun b!1173860 () Bool)

(declare-fun e!752948 () Bool)

(assert (=> b!1173860 (= e!752948 true)))

(declare-fun b!1173859 () Bool)

(declare-fun e!752947 () Bool)

(assert (=> b!1173859 (= e!752947 e!752948)))

(declare-fun b!1173858 () Bool)

(declare-fun e!752946 () Bool)

(assert (=> b!1173858 (= e!752946 e!752947)))

(assert (=> d!336184 e!752946))

(assert (= b!1173859 b!1173860))

(assert (= b!1173858 b!1173859))

(assert (= (and d!336184 ((_ is Cons!11605) (rules!9666 thiss!10527))) b!1173858))

(assert (=> b!1173860 (< (dynLambda!5131 order!7131 (toValue!3124 (transformation!2023 (h!17006 (rules!9666 thiss!10527))))) (dynLambda!5132 order!7133 lambda!48314))))

(assert (=> b!1173860 (< (dynLambda!5133 order!7135 (toChars!2983 (transformation!2023 (h!17006 (rules!9666 thiss!10527))))) (dynLambda!5132 order!7133 lambda!48314))))

(assert (=> d!336184 true))

(declare-fun e!752945 () Bool)

(assert (=> d!336184 e!752945))

(declare-fun res!530373 () Bool)

(assert (=> d!336184 (=> (not res!530373) (not e!752945))))

(declare-fun lt!403537 () Bool)

(assert (=> d!336184 (= res!530373 (= lt!403537 (forall!3076 (list!4284 (tokens!1664 thiss!10527)) lambda!48314)))))

(assert (=> d!336184 (= lt!403537 (forall!3075 (tokens!1664 thiss!10527) lambda!48314))))

(assert (=> d!336184 (not (isEmpty!7045 (rules!9666 thiss!10527)))))

(assert (=> d!336184 (= (rulesProduceEachTokenIndividually!756 Lexer!1716 (rules!9666 thiss!10527) (tokens!1664 thiss!10527)) lt!403537)))

(declare-fun b!1173857 () Bool)

(assert (=> b!1173857 (= e!752945 (= lt!403537 (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) (list!4284 (tokens!1664 thiss!10527)))))))

(assert (= (and d!336184 res!530373) b!1173857))

(assert (=> d!336184 m!1348765))

(assert (=> d!336184 m!1348765))

(declare-fun m!1349305 () Bool)

(assert (=> d!336184 m!1349305))

(declare-fun m!1349307 () Bool)

(assert (=> d!336184 m!1349307))

(assert (=> d!336184 m!1348867))

(assert (=> b!1173857 m!1348765))

(assert (=> b!1173857 m!1348765))

(declare-fun m!1349309 () Bool)

(assert (=> b!1173857 m!1349309))

(assert (=> b!1173545 d!336184))

(declare-fun bs!286157 () Bool)

(declare-fun d!336200 () Bool)

(assert (= bs!286157 (and d!336200 d!336124)))

(declare-fun lambda!48315 () Int)

(assert (=> bs!286157 (= lambda!48315 lambda!48296)))

(declare-fun bs!286158 () Bool)

(assert (= bs!286158 (and d!336200 b!1173545)))

(assert (=> bs!286158 (= lambda!48315 lambda!48293)))

(declare-fun bs!286159 () Bool)

(assert (= bs!286159 (and d!336200 d!336156)))

(assert (=> bs!286159 (= lambda!48315 lambda!48297)))

(declare-fun bs!286160 () Bool)

(assert (= bs!286160 (and d!336200 b!1173768)))

(assert (=> bs!286160 (= lambda!48315 lambda!48303)))

(declare-fun bs!286161 () Bool)

(assert (= bs!286161 (and d!336200 d!336184)))

(assert (=> bs!286161 (= lambda!48315 lambda!48314)))

(declare-fun b!1173865 () Bool)

(declare-fun e!752953 () Bool)

(assert (=> b!1173865 (= e!752953 true)))

(declare-fun b!1173864 () Bool)

(declare-fun e!752952 () Bool)

(assert (=> b!1173864 (= e!752952 e!752953)))

(declare-fun b!1173863 () Bool)

(declare-fun e!752951 () Bool)

(assert (=> b!1173863 (= e!752951 e!752952)))

(assert (=> d!336200 e!752951))

(assert (= b!1173864 b!1173865))

(assert (= b!1173863 b!1173864))

(assert (= (and d!336200 ((_ is Cons!11605) (rules!9666 thiss!10527))) b!1173863))

(assert (=> b!1173865 (< (dynLambda!5131 order!7131 (toValue!3124 (transformation!2023 (h!17006 (rules!9666 thiss!10527))))) (dynLambda!5132 order!7133 lambda!48315))))

(assert (=> b!1173865 (< (dynLambda!5133 order!7135 (toChars!2983 (transformation!2023 (h!17006 (rules!9666 thiss!10527))))) (dynLambda!5132 order!7133 lambda!48315))))

(assert (=> d!336200 true))

(declare-fun lt!403538 () Bool)

(assert (=> d!336200 (= lt!403538 (forall!3076 lt!403175 lambda!48315))))

(declare-fun e!752950 () Bool)

(assert (=> d!336200 (= lt!403538 e!752950)))

(declare-fun res!530375 () Bool)

(assert (=> d!336200 (=> res!530375 e!752950)))

(assert (=> d!336200 (= res!530375 (not ((_ is Cons!11604) lt!403175)))))

(assert (=> d!336200 (not (isEmpty!7045 (rules!9666 thiss!10527)))))

(assert (=> d!336200 (= (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) lt!403175) lt!403538)))

(declare-fun b!1173861 () Bool)

(declare-fun e!752949 () Bool)

(assert (=> b!1173861 (= e!752950 e!752949)))

(declare-fun res!530374 () Bool)

(assert (=> b!1173861 (=> (not res!530374) (not e!752949))))

(assert (=> b!1173861 (= res!530374 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (h!17005 lt!403175)))))

(declare-fun b!1173862 () Bool)

(assert (=> b!1173862 (= e!752949 (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) (t!110914 lt!403175)))))

(assert (= (and d!336200 (not res!530375)) b!1173861))

(assert (= (and b!1173861 res!530374) b!1173862))

(declare-fun m!1349311 () Bool)

(assert (=> d!336200 m!1349311))

(assert (=> d!336200 m!1348867))

(assert (=> b!1173861 m!1348729))

(assert (=> b!1173862 m!1348711))

(assert (=> b!1173545 d!336200))

(declare-fun d!336202 () Bool)

(declare-fun list!4286 (Conc!3809) List!11628)

(assert (=> d!336202 (= (list!4284 (tokens!1664 thiss!10527)) (list!4286 (c!195813 (tokens!1664 thiss!10527))))))

(declare-fun bs!286162 () Bool)

(assert (= bs!286162 d!336202))

(declare-fun m!1349313 () Bool)

(assert (=> bs!286162 m!1349313))

(assert (=> b!1173545 d!336202))

(declare-fun d!336204 () Bool)

(declare-fun res!530398 () Bool)

(declare-fun e!752978 () Bool)

(assert (=> d!336204 (=> (not res!530398) (not e!752978))))

(assert (=> d!336204 (= res!530398 (not (isEmpty!7045 (rules!9666 thiss!10527))))))

(assert (=> d!336204 (= (inv!15316 thiss!10527) e!752978)))

(declare-fun b!1173900 () Bool)

(declare-fun res!530399 () Bool)

(assert (=> b!1173900 (=> (not res!530399) (not e!752978))))

(assert (=> b!1173900 (= res!530399 (rulesInvariant!1592 Lexer!1716 (rules!9666 thiss!10527)))))

(declare-fun b!1173901 () Bool)

(declare-fun res!530400 () Bool)

(assert (=> b!1173901 (=> (not res!530400) (not e!752978))))

(assert (=> b!1173901 (= res!530400 (rulesProduceEachTokenIndividually!756 Lexer!1716 (rules!9666 thiss!10527) (tokens!1664 thiss!10527)))))

(declare-fun b!1173902 () Bool)

(assert (=> b!1173902 (= e!752978 (separableTokens!154 Lexer!1716 (tokens!1664 thiss!10527) (rules!9666 thiss!10527)))))

(assert (= (and d!336204 res!530398) b!1173900))

(assert (= (and b!1173900 res!530399) b!1173901))

(assert (= (and b!1173901 res!530400) b!1173902))

(assert (=> d!336204 m!1348867))

(assert (=> b!1173900 m!1348705))

(assert (=> b!1173901 m!1348763))

(declare-fun m!1349409 () Bool)

(assert (=> b!1173902 m!1349409))

(assert (=> start!103398 d!336204))

(declare-fun d!336218 () Bool)

(declare-fun isBalanced!1077 (Conc!3809) Bool)

(assert (=> d!336218 (= (inv!15317 (tokens!1664 thiss!10527)) (isBalanced!1077 (c!195813 (tokens!1664 thiss!10527))))))

(declare-fun bs!286178 () Bool)

(assert (= bs!286178 d!336218))

(declare-fun m!1349411 () Bool)

(assert (=> bs!286178 m!1349411))

(assert (=> b!1173555 d!336218))

(declare-fun bs!286179 () Bool)

(declare-fun d!336220 () Bool)

(assert (= bs!286179 (and d!336220 d!336124)))

(declare-fun lambda!48322 () Int)

(assert (=> bs!286179 (= lambda!48322 lambda!48296)))

(declare-fun bs!286180 () Bool)

(assert (= bs!286180 (and d!336220 b!1173545)))

(assert (=> bs!286180 (= lambda!48322 lambda!48293)))

(declare-fun bs!286181 () Bool)

(assert (= bs!286181 (and d!336220 d!336156)))

(assert (=> bs!286181 (= lambda!48322 lambda!48297)))

(declare-fun bs!286182 () Bool)

(assert (= bs!286182 (and d!336220 b!1173768)))

(assert (=> bs!286182 (= lambda!48322 lambda!48303)))

(declare-fun bs!286183 () Bool)

(assert (= bs!286183 (and d!336220 d!336200)))

(assert (=> bs!286183 (= lambda!48322 lambda!48315)))

(declare-fun bs!286184 () Bool)

(assert (= bs!286184 (and d!336220 d!336184)))

(assert (=> bs!286184 (= lambda!48322 lambda!48314)))

(declare-fun b!1173906 () Bool)

(declare-fun e!752982 () Bool)

(assert (=> b!1173906 (= e!752982 true)))

(declare-fun b!1173905 () Bool)

(declare-fun e!752981 () Bool)

(assert (=> b!1173905 (= e!752981 e!752982)))

(declare-fun b!1173904 () Bool)

(declare-fun e!752980 () Bool)

(assert (=> b!1173904 (= e!752980 e!752981)))

(assert (=> d!336220 e!752980))

(assert (= b!1173905 b!1173906))

(assert (= b!1173904 b!1173905))

(assert (= (and d!336220 ((_ is Cons!11605) (rules!9666 thiss!10527))) b!1173904))

(assert (=> b!1173906 (< (dynLambda!5131 order!7131 (toValue!3124 (transformation!2023 (h!17006 (rules!9666 thiss!10527))))) (dynLambda!5132 order!7133 lambda!48322))))

(assert (=> b!1173906 (< (dynLambda!5133 order!7135 (toChars!2983 (transformation!2023 (h!17006 (rules!9666 thiss!10527))))) (dynLambda!5132 order!7133 lambda!48322))))

(assert (=> d!336220 true))

(declare-fun e!752979 () Bool)

(assert (=> d!336220 e!752979))

(declare-fun res!530401 () Bool)

(assert (=> d!336220 (=> (not res!530401) (not e!752979))))

(declare-fun lt!403579 () Bool)

(assert (=> d!336220 (= res!530401 (= lt!403579 (forall!3076 (list!4284 lt!403172) lambda!48322)))))

(assert (=> d!336220 (= lt!403579 (forall!3075 lt!403172 lambda!48322))))

(assert (=> d!336220 (not (isEmpty!7045 (rules!9666 thiss!10527)))))

(assert (=> d!336220 (= (rulesProduceEachTokenIndividually!756 Lexer!1716 (rules!9666 thiss!10527) lt!403172) lt!403579)))

(declare-fun b!1173903 () Bool)

(assert (=> b!1173903 (= e!752979 (= lt!403579 (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) (list!4284 lt!403172))))))

(assert (= (and d!336220 res!530401) b!1173903))

(assert (=> d!336220 m!1348723))

(assert (=> d!336220 m!1348723))

(declare-fun m!1349413 () Bool)

(assert (=> d!336220 m!1349413))

(declare-fun m!1349415 () Bool)

(assert (=> d!336220 m!1349415))

(assert (=> d!336220 m!1348867))

(assert (=> b!1173903 m!1348723))

(assert (=> b!1173903 m!1348723))

(declare-fun m!1349417 () Bool)

(assert (=> b!1173903 m!1349417))

(assert (=> b!1173544 d!336220))

(assert (=> b!1173544 d!336122))

(declare-fun bs!286185 () Bool)

(declare-fun d!336222 () Bool)

(assert (= bs!286185 (and d!336222 d!336124)))

(declare-fun lambda!48323 () Int)

(assert (=> bs!286185 (= lambda!48323 lambda!48296)))

(declare-fun bs!286186 () Bool)

(assert (= bs!286186 (and d!336222 d!336220)))

(assert (=> bs!286186 (= lambda!48323 lambda!48322)))

(declare-fun bs!286187 () Bool)

(assert (= bs!286187 (and d!336222 b!1173545)))

(assert (=> bs!286187 (= lambda!48323 lambda!48293)))

(declare-fun bs!286188 () Bool)

(assert (= bs!286188 (and d!336222 d!336156)))

(assert (=> bs!286188 (= lambda!48323 lambda!48297)))

(declare-fun bs!286189 () Bool)

(assert (= bs!286189 (and d!336222 b!1173768)))

(assert (=> bs!286189 (= lambda!48323 lambda!48303)))

(declare-fun bs!286190 () Bool)

(assert (= bs!286190 (and d!336222 d!336200)))

(assert (=> bs!286190 (= lambda!48323 lambda!48315)))

(declare-fun bs!286191 () Bool)

(assert (= bs!286191 (and d!336222 d!336184)))

(assert (=> bs!286191 (= lambda!48323 lambda!48314)))

(declare-fun b!1173911 () Bool)

(declare-fun e!752987 () Bool)

(assert (=> b!1173911 (= e!752987 true)))

(declare-fun b!1173910 () Bool)

(declare-fun e!752986 () Bool)

(assert (=> b!1173910 (= e!752986 e!752987)))

(declare-fun b!1173909 () Bool)

(declare-fun e!752985 () Bool)

(assert (=> b!1173909 (= e!752985 e!752986)))

(assert (=> d!336222 e!752985))

(assert (= b!1173910 b!1173911))

(assert (= b!1173909 b!1173910))

(assert (= (and d!336222 ((_ is Cons!11605) (rules!9666 thiss!10527))) b!1173909))

(assert (=> b!1173911 (< (dynLambda!5131 order!7131 (toValue!3124 (transformation!2023 (h!17006 (rules!9666 thiss!10527))))) (dynLambda!5132 order!7133 lambda!48323))))

(assert (=> b!1173911 (< (dynLambda!5133 order!7135 (toChars!2983 (transformation!2023 (h!17006 (rules!9666 thiss!10527))))) (dynLambda!5132 order!7133 lambda!48323))))

(assert (=> d!336222 true))

(declare-fun lt!403580 () Bool)

(assert (=> d!336222 (= lt!403580 (forall!3076 (t!110914 lt!403184) lambda!48323))))

(declare-fun e!752984 () Bool)

(assert (=> d!336222 (= lt!403580 e!752984)))

(declare-fun res!530403 () Bool)

(assert (=> d!336222 (=> res!530403 e!752984)))

(assert (=> d!336222 (= res!530403 (not ((_ is Cons!11604) (t!110914 lt!403184))))))

(assert (=> d!336222 (not (isEmpty!7045 (rules!9666 thiss!10527)))))

(assert (=> d!336222 (= (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) (t!110914 lt!403184)) lt!403580)))

(declare-fun b!1173907 () Bool)

(declare-fun e!752983 () Bool)

(assert (=> b!1173907 (= e!752984 e!752983)))

(declare-fun res!530402 () Bool)

(assert (=> b!1173907 (=> (not res!530402) (not e!752983))))

(assert (=> b!1173907 (= res!530402 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (h!17005 (t!110914 lt!403184))))))

(declare-fun b!1173908 () Bool)

(assert (=> b!1173908 (= e!752983 (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) (t!110914 (t!110914 lt!403184))))))

(assert (= (and d!336222 (not res!530403)) b!1173907))

(assert (= (and b!1173907 res!530402) b!1173908))

(declare-fun m!1349419 () Bool)

(assert (=> d!336222 m!1349419))

(assert (=> d!336222 m!1348867))

(declare-fun m!1349421 () Bool)

(assert (=> b!1173907 m!1349421))

(declare-fun m!1349423 () Bool)

(assert (=> b!1173908 m!1349423))

(assert (=> b!1173538 d!336222))

(declare-fun d!336224 () Bool)

(declare-fun lt!403583 () Int)

(declare-fun size!9155 (List!11627) Int)

(declare-fun list!4287 (BalanceConc!7638) List!11627)

(assert (=> d!336224 (= lt!403583 (size!9155 (list!4287 (charsOf!1078 lt!403164))))))

(declare-fun size!9156 (Conc!3808) Int)

(assert (=> d!336224 (= lt!403583 (size!9156 (c!195812 (charsOf!1078 lt!403164))))))

(assert (=> d!336224 (= (size!9150 (charsOf!1078 lt!403164)) lt!403583)))

(declare-fun bs!286192 () Bool)

(assert (= bs!286192 d!336224))

(assert (=> bs!286192 m!1348821))

(declare-fun m!1349425 () Bool)

(assert (=> bs!286192 m!1349425))

(assert (=> bs!286192 m!1349425))

(declare-fun m!1349427 () Bool)

(assert (=> bs!286192 m!1349427))

(declare-fun m!1349429 () Bool)

(assert (=> bs!286192 m!1349429))

(assert (=> b!1173548 d!336224))

(declare-fun d!336226 () Bool)

(declare-fun lt!403586 () BalanceConc!7638)

(assert (=> d!336226 (= (list!4287 lt!403586) (originalCharacters!2577 lt!403164))))

(declare-fun dynLambda!5135 (Int TokenValue!2089) BalanceConc!7638)

(assert (=> d!336226 (= lt!403586 (dynLambda!5135 (toChars!2983 (transformation!2023 (rule!3444 lt!403164))) (value!65652 lt!403164)))))

(assert (=> d!336226 (= (charsOf!1078 lt!403164) lt!403586)))

(declare-fun b_lambda!35107 () Bool)

(assert (=> (not b_lambda!35107) (not d!336226)))

(declare-fun bs!286193 () Bool)

(assert (= bs!286193 d!336226))

(declare-fun m!1349431 () Bool)

(assert (=> bs!286193 m!1349431))

(declare-fun m!1349433 () Bool)

(assert (=> bs!286193 m!1349433))

(assert (=> b!1173548 d!336226))

(declare-fun bs!286194 () Bool)

(declare-fun d!336228 () Bool)

(assert (= bs!286194 (and d!336228 d!336124)))

(declare-fun lambda!48324 () Int)

(assert (=> bs!286194 (= lambda!48324 lambda!48296)))

(declare-fun bs!286195 () Bool)

(assert (= bs!286195 (and d!336228 d!336220)))

(assert (=> bs!286195 (= lambda!48324 lambda!48322)))

(declare-fun bs!286196 () Bool)

(assert (= bs!286196 (and d!336228 b!1173545)))

(assert (=> bs!286196 (= lambda!48324 lambda!48293)))

(declare-fun bs!286197 () Bool)

(assert (= bs!286197 (and d!336228 d!336222)))

(assert (=> bs!286197 (= lambda!48324 lambda!48323)))

(declare-fun bs!286198 () Bool)

(assert (= bs!286198 (and d!336228 d!336156)))

(assert (=> bs!286198 (= lambda!48324 lambda!48297)))

(declare-fun bs!286199 () Bool)

(assert (= bs!286199 (and d!336228 b!1173768)))

(assert (=> bs!286199 (= lambda!48324 lambda!48303)))

(declare-fun bs!286200 () Bool)

(assert (= bs!286200 (and d!336228 d!336200)))

(assert (=> bs!286200 (= lambda!48324 lambda!48315)))

(declare-fun bs!286201 () Bool)

(assert (= bs!286201 (and d!336228 d!336184)))

(assert (=> bs!286201 (= lambda!48324 lambda!48314)))

(declare-fun b!1173916 () Bool)

(declare-fun e!752992 () Bool)

(assert (=> b!1173916 (= e!752992 true)))

(declare-fun b!1173915 () Bool)

(declare-fun e!752991 () Bool)

(assert (=> b!1173915 (= e!752991 e!752992)))

(declare-fun b!1173914 () Bool)

(declare-fun e!752990 () Bool)

(assert (=> b!1173914 (= e!752990 e!752991)))

(assert (=> d!336228 e!752990))

(assert (= b!1173915 b!1173916))

(assert (= b!1173914 b!1173915))

(assert (= (and d!336228 ((_ is Cons!11605) (rules!9666 thiss!10527))) b!1173914))

(assert (=> b!1173916 (< (dynLambda!5131 order!7131 (toValue!3124 (transformation!2023 (h!17006 (rules!9666 thiss!10527))))) (dynLambda!5132 order!7133 lambda!48324))))

(assert (=> b!1173916 (< (dynLambda!5133 order!7135 (toChars!2983 (transformation!2023 (h!17006 (rules!9666 thiss!10527))))) (dynLambda!5132 order!7133 lambda!48324))))

(assert (=> d!336228 true))

(declare-fun lt!403587 () Bool)

(assert (=> d!336228 (= lt!403587 (forall!3076 (t!110914 lt!403175) lambda!48324))))

(declare-fun e!752989 () Bool)

(assert (=> d!336228 (= lt!403587 e!752989)))

(declare-fun res!530405 () Bool)

(assert (=> d!336228 (=> res!530405 e!752989)))

(assert (=> d!336228 (= res!530405 (not ((_ is Cons!11604) (t!110914 lt!403175))))))

(assert (=> d!336228 (not (isEmpty!7045 (rules!9666 thiss!10527)))))

(assert (=> d!336228 (= (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) (t!110914 lt!403175)) lt!403587)))

(declare-fun b!1173912 () Bool)

(declare-fun e!752988 () Bool)

(assert (=> b!1173912 (= e!752989 e!752988)))

(declare-fun res!530404 () Bool)

(assert (=> b!1173912 (=> (not res!530404) (not e!752988))))

(assert (=> b!1173912 (= res!530404 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (h!17005 (t!110914 lt!403175))))))

(declare-fun b!1173913 () Bool)

(assert (=> b!1173913 (= e!752988 (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) (t!110914 (t!110914 lt!403175))))))

(assert (= (and d!336228 (not res!530405)) b!1173912))

(assert (= (and b!1173912 res!530404) b!1173913))

(declare-fun m!1349435 () Bool)

(assert (=> d!336228 m!1349435))

(assert (=> d!336228 m!1348867))

(declare-fun m!1349437 () Bool)

(assert (=> b!1173912 m!1349437))

(declare-fun m!1349439 () Bool)

(assert (=> b!1173913 m!1349439))

(assert (=> b!1173537 d!336228))

(declare-fun d!336230 () Bool)

(assert (=> d!336230 (= (list!4284 lt!403172) (list!4286 (c!195813 lt!403172)))))

(declare-fun bs!286202 () Bool)

(assert (= bs!286202 d!336230))

(declare-fun m!1349441 () Bool)

(assert (=> bs!286202 m!1349441))

(assert (=> b!1173547 d!336230))

(declare-fun d!336232 () Bool)

(assert (=> d!336232 (subseq!273 (slice!357 lt!403175 from!787 to!267) lt!403175)))

(declare-fun lt!403590 () Unit!17862)

(declare-fun choose!7583 (List!11628 Int Int) Unit!17862)

(assert (=> d!336232 (= lt!403590 (choose!7583 lt!403175 from!787 to!267))))

(declare-fun e!752995 () Bool)

(assert (=> d!336232 e!752995))

(declare-fun res!530408 () Bool)

(assert (=> d!336232 (=> (not res!530408) (not e!752995))))

(assert (=> d!336232 (= res!530408 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!336232 (= (lemmaSliceSubseq!114 lt!403175 from!787 to!267) lt!403590)))

(declare-fun b!1173919 () Bool)

(assert (=> b!1173919 (= e!752995 (<= to!267 (size!9153 lt!403175)))))

(assert (= (and d!336232 res!530408) b!1173919))

(assert (=> d!336232 m!1348715))

(assert (=> d!336232 m!1348715))

(assert (=> d!336232 m!1348727))

(declare-fun m!1349443 () Bool)

(assert (=> d!336232 m!1349443))

(assert (=> b!1173919 m!1349051))

(assert (=> b!1173547 d!336232))

(declare-fun d!336234 () Bool)

(declare-fun take!82 (List!11628 Int) List!11628)

(assert (=> d!336234 (= (slice!357 lt!403175 from!787 to!267) (take!82 (drop!495 lt!403175 from!787) (- to!267 from!787)))))

(declare-fun bs!286203 () Bool)

(assert (= bs!286203 d!336234))

(assert (=> bs!286203 m!1348739))

(assert (=> bs!286203 m!1348739))

(declare-fun m!1349445 () Bool)

(assert (=> bs!286203 m!1349445))

(assert (=> b!1173547 d!336234))

(declare-fun b!1173920 () Bool)

(declare-fun e!752996 () Bool)

(declare-fun e!752997 () Bool)

(assert (=> b!1173920 (= e!752996 e!752997)))

(declare-fun res!530410 () Bool)

(assert (=> b!1173920 (=> (not res!530410) (not e!752997))))

(assert (=> b!1173920 (= res!530410 ((_ is Cons!11604) lt!403175))))

(declare-fun b!1173921 () Bool)

(declare-fun e!752998 () Bool)

(assert (=> b!1173921 (= e!752997 e!752998)))

(declare-fun res!530412 () Bool)

(assert (=> b!1173921 (=> res!530412 e!752998)))

(declare-fun e!752999 () Bool)

(assert (=> b!1173921 (= res!530412 e!752999)))

(declare-fun res!530411 () Bool)

(assert (=> b!1173921 (=> (not res!530411) (not e!752999))))

(assert (=> b!1173921 (= res!530411 (= (h!17005 (slice!357 lt!403175 from!787 to!267)) (h!17005 lt!403175)))))

(declare-fun b!1173922 () Bool)

(assert (=> b!1173922 (= e!752999 (subseq!273 (t!110914 (slice!357 lt!403175 from!787 to!267)) (t!110914 lt!403175)))))

(declare-fun d!336236 () Bool)

(declare-fun res!530409 () Bool)

(assert (=> d!336236 (=> res!530409 e!752996)))

(assert (=> d!336236 (= res!530409 ((_ is Nil!11604) (slice!357 lt!403175 from!787 to!267)))))

(assert (=> d!336236 (= (subseq!273 (slice!357 lt!403175 from!787 to!267) lt!403175) e!752996)))

(declare-fun b!1173923 () Bool)

(assert (=> b!1173923 (= e!752998 (subseq!273 (slice!357 lt!403175 from!787 to!267) (t!110914 lt!403175)))))

(assert (= (and d!336236 (not res!530409)) b!1173920))

(assert (= (and b!1173920 res!530410) b!1173921))

(assert (= (and b!1173921 res!530411) b!1173922))

(assert (= (and b!1173921 (not res!530412)) b!1173923))

(declare-fun m!1349447 () Bool)

(assert (=> b!1173922 m!1349447))

(assert (=> b!1173923 m!1348715))

(declare-fun m!1349449 () Bool)

(assert (=> b!1173923 m!1349449))

(assert (=> b!1173547 d!336236))

(declare-fun d!336238 () Bool)

(assert (=> d!336238 (forall!3076 lt!403176 lambda!48293)))

(declare-fun lt!403591 () Unit!17862)

(assert (=> d!336238 (= lt!403591 (choose!7577 lt!403176 lt!403175 lambda!48293))))

(assert (=> d!336238 (forall!3076 lt!403175 lambda!48293)))

(assert (=> d!336238 (= (lemmaForallSubseq!161 lt!403176 lt!403175 lambda!48293) lt!403591)))

(declare-fun bs!286204 () Bool)

(assert (= bs!286204 d!336238))

(assert (=> bs!286204 m!1348717))

(declare-fun m!1349451 () Bool)

(assert (=> bs!286204 m!1349451))

(assert (=> bs!286204 m!1348737))

(assert (=> b!1173547 d!336238))

(declare-fun d!336240 () Bool)

(declare-fun e!753004 () Bool)

(assert (=> d!336240 e!753004))

(declare-fun res!530421 () Bool)

(assert (=> d!336240 (=> (not res!530421) (not e!753004))))

(declare-fun slice!358 (Conc!3809 Int Int) Conc!3809)

(assert (=> d!336240 (= res!530421 (isBalanced!1077 (slice!358 (c!195813 (tokens!1664 thiss!10527)) from!787 to!267)))))

(declare-fun lt!403594 () BalanceConc!7640)

(assert (=> d!336240 (= lt!403594 (BalanceConc!7641 (slice!358 (c!195813 (tokens!1664 thiss!10527)) from!787 to!267)))))

(declare-fun e!753005 () Bool)

(assert (=> d!336240 e!753005))

(declare-fun res!530419 () Bool)

(assert (=> d!336240 (=> (not res!530419) (not e!753005))))

(assert (=> d!336240 (= res!530419 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!336240 (= (slice!356 (tokens!1664 thiss!10527) from!787 to!267) lt!403594)))

(declare-fun b!1173930 () Bool)

(declare-fun res!530420 () Bool)

(assert (=> b!1173930 (=> (not res!530420) (not e!753005))))

(assert (=> b!1173930 (= res!530420 (<= to!267 (size!9151 (tokens!1664 thiss!10527))))))

(declare-fun b!1173931 () Bool)

(assert (=> b!1173931 (= e!753005 (isBalanced!1077 (c!195813 (tokens!1664 thiss!10527))))))

(declare-fun b!1173932 () Bool)

(assert (=> b!1173932 (= e!753004 (= (list!4284 lt!403594) (slice!357 (list!4284 (tokens!1664 thiss!10527)) from!787 to!267)))))

(assert (= (and d!336240 res!530419) b!1173930))

(assert (= (and b!1173930 res!530420) b!1173931))

(assert (= (and d!336240 res!530421) b!1173932))

(declare-fun m!1349453 () Bool)

(assert (=> d!336240 m!1349453))

(assert (=> d!336240 m!1349453))

(declare-fun m!1349455 () Bool)

(assert (=> d!336240 m!1349455))

(assert (=> b!1173930 m!1348713))

(assert (=> b!1173931 m!1349411))

(declare-fun m!1349457 () Bool)

(assert (=> b!1173932 m!1349457))

(assert (=> b!1173932 m!1348765))

(assert (=> b!1173932 m!1348765))

(declare-fun m!1349459 () Bool)

(assert (=> b!1173932 m!1349459))

(assert (=> b!1173547 d!336240))

(declare-fun d!336242 () Bool)

(declare-fun res!530422 () Bool)

(declare-fun e!753006 () Bool)

(assert (=> d!336242 (=> res!530422 e!753006)))

(assert (=> d!336242 (= res!530422 ((_ is Nil!11604) lt!403176))))

(assert (=> d!336242 (= (forall!3076 lt!403176 lambda!48293) e!753006)))

(declare-fun b!1173933 () Bool)

(declare-fun e!753007 () Bool)

(assert (=> b!1173933 (= e!753006 e!753007)))

(declare-fun res!530423 () Bool)

(assert (=> b!1173933 (=> (not res!530423) (not e!753007))))

(assert (=> b!1173933 (= res!530423 (dynLambda!5134 lambda!48293 (h!17005 lt!403176)))))

(declare-fun b!1173934 () Bool)

(assert (=> b!1173934 (= e!753007 (forall!3076 (t!110914 lt!403176) lambda!48293))))

(assert (= (and d!336242 (not res!530422)) b!1173933))

(assert (= (and b!1173933 res!530423) b!1173934))

(declare-fun b_lambda!35109 () Bool)

(assert (=> (not b_lambda!35109) (not b!1173933)))

(declare-fun m!1349461 () Bool)

(assert (=> b!1173933 m!1349461))

(declare-fun m!1349463 () Bool)

(assert (=> b!1173934 m!1349463))

(assert (=> b!1173547 d!336242))

(declare-fun d!336244 () Bool)

(declare-fun res!530476 () Bool)

(declare-fun e!753074 () Bool)

(assert (=> d!336244 (=> res!530476 e!753074)))

(assert (=> d!336244 (= res!530476 (or (not ((_ is Cons!11604) lt!403184)) (not ((_ is Cons!11604) (t!110914 lt!403184)))))))

(assert (=> d!336244 (= (tokensListTwoByTwoPredicateSeparableList!114 Lexer!1716 lt!403184 (rules!9666 thiss!10527)) e!753074)))

(declare-fun b!1174022 () Bool)

(declare-fun e!753073 () Bool)

(assert (=> b!1174022 (= e!753074 e!753073)))

(declare-fun res!530477 () Bool)

(assert (=> b!1174022 (=> (not res!530477) (not e!753073))))

(assert (=> b!1174022 (= res!530477 (separableTokensPredicate!140 Lexer!1716 (h!17005 lt!403184) (h!17005 (t!110914 lt!403184)) (rules!9666 thiss!10527)))))

(declare-fun lt!403654 () Unit!17862)

(declare-fun Unit!17880 () Unit!17862)

(assert (=> b!1174022 (= lt!403654 Unit!17880)))

(assert (=> b!1174022 (> (size!9150 (charsOf!1078 (h!17005 (t!110914 lt!403184)))) 0)))

(declare-fun lt!403653 () Unit!17862)

(declare-fun Unit!17881 () Unit!17862)

(assert (=> b!1174022 (= lt!403653 Unit!17881)))

(assert (=> b!1174022 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (h!17005 (t!110914 lt!403184)))))

(declare-fun lt!403659 () Unit!17862)

(declare-fun Unit!17882 () Unit!17862)

(assert (=> b!1174022 (= lt!403659 Unit!17882)))

(assert (=> b!1174022 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (h!17005 lt!403184))))

(declare-fun lt!403658 () Unit!17862)

(declare-fun lt!403656 () Unit!17862)

(assert (=> b!1174022 (= lt!403658 lt!403656)))

(assert (=> b!1174022 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (h!17005 (t!110914 lt!403184)))))

(assert (=> b!1174022 (= lt!403656 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!299 Lexer!1716 (rules!9666 thiss!10527) lt!403184 (h!17005 (t!110914 lt!403184))))))

(declare-fun lt!403655 () Unit!17862)

(declare-fun lt!403657 () Unit!17862)

(assert (=> b!1174022 (= lt!403655 lt!403657)))

(assert (=> b!1174022 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (h!17005 lt!403184))))

(assert (=> b!1174022 (= lt!403657 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!299 Lexer!1716 (rules!9666 thiss!10527) lt!403184 (h!17005 lt!403184)))))

(declare-fun b!1174023 () Bool)

(assert (=> b!1174023 (= e!753073 (tokensListTwoByTwoPredicateSeparableList!114 Lexer!1716 (Cons!11604 (h!17005 (t!110914 lt!403184)) (t!110914 (t!110914 lt!403184))) (rules!9666 thiss!10527)))))

(assert (= (and d!336244 (not res!530476)) b!1174022))

(assert (= (and b!1174022 res!530477) b!1174023))

(declare-fun m!1349637 () Bool)

(assert (=> b!1174022 m!1349637))

(declare-fun m!1349639 () Bool)

(assert (=> b!1174022 m!1349639))

(assert (=> b!1174022 m!1349421))

(declare-fun m!1349641 () Bool)

(assert (=> b!1174022 m!1349641))

(assert (=> b!1174022 m!1349637))

(declare-fun m!1349643 () Bool)

(assert (=> b!1174022 m!1349643))

(declare-fun m!1349645 () Bool)

(assert (=> b!1174022 m!1349645))

(assert (=> b!1174022 m!1348817))

(declare-fun m!1349647 () Bool)

(assert (=> b!1174023 m!1349647))

(assert (=> b!1173557 d!336244))

(declare-fun bs!286223 () Bool)

(declare-fun d!336312 () Bool)

(assert (= bs!286223 (and d!336312 d!336124)))

(declare-fun lambda!48326 () Int)

(assert (=> bs!286223 (= lambda!48326 lambda!48296)))

(declare-fun bs!286224 () Bool)

(assert (= bs!286224 (and d!336312 d!336220)))

(assert (=> bs!286224 (= lambda!48326 lambda!48322)))

(declare-fun bs!286225 () Bool)

(assert (= bs!286225 (and d!336312 d!336222)))

(assert (=> bs!286225 (= lambda!48326 lambda!48323)))

(declare-fun bs!286226 () Bool)

(assert (= bs!286226 (and d!336312 d!336156)))

(assert (=> bs!286226 (= lambda!48326 lambda!48297)))

(declare-fun bs!286227 () Bool)

(assert (= bs!286227 (and d!336312 b!1173768)))

(assert (=> bs!286227 (= lambda!48326 lambda!48303)))

(declare-fun bs!286228 () Bool)

(assert (= bs!286228 (and d!336312 d!336200)))

(assert (=> bs!286228 (= lambda!48326 lambda!48315)))

(declare-fun bs!286229 () Bool)

(assert (= bs!286229 (and d!336312 d!336184)))

(assert (=> bs!286229 (= lambda!48326 lambda!48314)))

(declare-fun bs!286230 () Bool)

(assert (= bs!286230 (and d!336312 b!1173545)))

(assert (=> bs!286230 (= lambda!48326 lambda!48293)))

(declare-fun bs!286231 () Bool)

(assert (= bs!286231 (and d!336312 d!336228)))

(assert (=> bs!286231 (= lambda!48326 lambda!48324)))

(declare-fun b!1174028 () Bool)

(declare-fun e!753079 () Bool)

(assert (=> b!1174028 (= e!753079 true)))

(declare-fun b!1174027 () Bool)

(declare-fun e!753078 () Bool)

(assert (=> b!1174027 (= e!753078 e!753079)))

(declare-fun b!1174026 () Bool)

(declare-fun e!753077 () Bool)

(assert (=> b!1174026 (= e!753077 e!753078)))

(assert (=> d!336312 e!753077))

(assert (= b!1174027 b!1174028))

(assert (= b!1174026 b!1174027))

(assert (= (and d!336312 ((_ is Cons!11605) (rules!9666 thiss!10527))) b!1174026))

(assert (=> b!1174028 (< (dynLambda!5131 order!7131 (toValue!3124 (transformation!2023 (h!17006 (rules!9666 thiss!10527))))) (dynLambda!5132 order!7133 lambda!48326))))

(assert (=> b!1174028 (< (dynLambda!5133 order!7135 (toChars!2983 (transformation!2023 (h!17006 (rules!9666 thiss!10527))))) (dynLambda!5132 order!7133 lambda!48326))))

(assert (=> d!336312 true))

(declare-fun lt!403660 () Bool)

(assert (=> d!336312 (= lt!403660 (forall!3076 lt!403176 lambda!48326))))

(declare-fun e!753076 () Bool)

(assert (=> d!336312 (= lt!403660 e!753076)))

(declare-fun res!530479 () Bool)

(assert (=> d!336312 (=> res!530479 e!753076)))

(assert (=> d!336312 (= res!530479 (not ((_ is Cons!11604) lt!403176)))))

(assert (=> d!336312 (not (isEmpty!7045 (rules!9666 thiss!10527)))))

(assert (=> d!336312 (= (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) lt!403176) lt!403660)))

(declare-fun b!1174024 () Bool)

(declare-fun e!753075 () Bool)

(assert (=> b!1174024 (= e!753076 e!753075)))

(declare-fun res!530478 () Bool)

(assert (=> b!1174024 (=> (not res!530478) (not e!753075))))

(assert (=> b!1174024 (= res!530478 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (h!17005 lt!403176)))))

(declare-fun b!1174025 () Bool)

(assert (=> b!1174025 (= e!753075 (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) (t!110914 lt!403176)))))

(assert (= (and d!336312 (not res!530479)) b!1174024))

(assert (= (and b!1174024 res!530478) b!1174025))

(declare-fun m!1349649 () Bool)

(assert (=> d!336312 m!1349649))

(assert (=> d!336312 m!1348867))

(assert (=> b!1174024 m!1348753))

(assert (=> b!1174025 m!1348819))

(assert (=> b!1173551 d!336312))

(declare-fun d!336314 () Bool)

(assert (=> d!336314 (= (tail!1696 lt!403173) (t!110914 lt!403173))))

(assert (=> b!1173540 d!336314))

(declare-fun d!336316 () Bool)

(assert (=> d!336316 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) lt!403168)))

(declare-fun lt!403663 () Unit!17862)

(declare-fun choose!7584 (LexerInterface!1718 List!11629 List!11628 Token!3708) Unit!17862)

(assert (=> d!336316 (= lt!403663 (choose!7584 Lexer!1716 (rules!9666 thiss!10527) lt!403175 lt!403168))))

(assert (=> d!336316 (not (isEmpty!7045 (rules!9666 thiss!10527)))))

(assert (=> d!336316 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!299 Lexer!1716 (rules!9666 thiss!10527) lt!403175 lt!403168) lt!403663)))

(declare-fun bs!286232 () Bool)

(assert (= bs!286232 d!336316))

(assert (=> bs!286232 m!1348795))

(declare-fun m!1349651 () Bool)

(assert (=> bs!286232 m!1349651))

(assert (=> bs!286232 m!1348867))

(assert (=> b!1173540 d!336316))

(declare-fun d!336318 () Bool)

(declare-fun lt!403665 () Bool)

(declare-fun e!753081 () Bool)

(assert (=> d!336318 (= lt!403665 e!753081)))

(declare-fun res!530481 () Bool)

(assert (=> d!336318 (=> (not res!530481) (not e!753081))))

(assert (=> d!336318 (= res!530481 (= (list!4284 (_1!6875 (lex!716 Lexer!1716 (rules!9666 thiss!10527) (print!653 Lexer!1716 (singletonSeq!687 lt!403168))))) (list!4284 (singletonSeq!687 lt!403168))))))

(declare-fun e!753080 () Bool)

(assert (=> d!336318 (= lt!403665 e!753080)))

(declare-fun res!530482 () Bool)

(assert (=> d!336318 (=> (not res!530482) (not e!753080))))

(declare-fun lt!403664 () tuple2!12056)

(assert (=> d!336318 (= res!530482 (= (size!9151 (_1!6875 lt!403664)) 1))))

(assert (=> d!336318 (= lt!403664 (lex!716 Lexer!1716 (rules!9666 thiss!10527) (print!653 Lexer!1716 (singletonSeq!687 lt!403168))))))

(assert (=> d!336318 (not (isEmpty!7045 (rules!9666 thiss!10527)))))

(assert (=> d!336318 (= (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) lt!403168) lt!403665)))

(declare-fun b!1174029 () Bool)

(declare-fun res!530480 () Bool)

(assert (=> b!1174029 (=> (not res!530480) (not e!753080))))

(assert (=> b!1174029 (= res!530480 (= (apply!2531 (_1!6875 lt!403664) 0) lt!403168))))

(declare-fun b!1174030 () Bool)

(assert (=> b!1174030 (= e!753080 (isEmpty!7046 (_2!6875 lt!403664)))))

(declare-fun b!1174031 () Bool)

(assert (=> b!1174031 (= e!753081 (isEmpty!7046 (_2!6875 (lex!716 Lexer!1716 (rules!9666 thiss!10527) (print!653 Lexer!1716 (singletonSeq!687 lt!403168))))))))

(assert (= (and d!336318 res!530482) b!1174029))

(assert (= (and b!1174029 res!530480) b!1174030))

(assert (= (and d!336318 res!530481) b!1174031))

(declare-fun m!1349653 () Bool)

(assert (=> d!336318 m!1349653))

(declare-fun m!1349655 () Bool)

(assert (=> d!336318 m!1349655))

(declare-fun m!1349657 () Bool)

(assert (=> d!336318 m!1349657))

(assert (=> d!336318 m!1349655))

(declare-fun m!1349659 () Bool)

(assert (=> d!336318 m!1349659))

(declare-fun m!1349661 () Bool)

(assert (=> d!336318 m!1349661))

(assert (=> d!336318 m!1349653))

(declare-fun m!1349663 () Bool)

(assert (=> d!336318 m!1349663))

(assert (=> d!336318 m!1348867))

(assert (=> d!336318 m!1349653))

(declare-fun m!1349665 () Bool)

(assert (=> b!1174029 m!1349665))

(declare-fun m!1349667 () Bool)

(assert (=> b!1174030 m!1349667))

(assert (=> b!1174031 m!1349653))

(assert (=> b!1174031 m!1349653))

(assert (=> b!1174031 m!1349655))

(assert (=> b!1174031 m!1349655))

(assert (=> b!1174031 m!1349659))

(declare-fun m!1349669 () Bool)

(assert (=> b!1174031 m!1349669))

(assert (=> b!1173540 d!336318))

(declare-fun d!336320 () Bool)

(assert (=> d!336320 (= (head!2112 (drop!495 lt!403175 0)) (apply!2532 lt!403175 0))))

(declare-fun lt!403668 () Unit!17862)

(declare-fun choose!7586 (List!11628 Int) Unit!17862)

(assert (=> d!336320 (= lt!403668 (choose!7586 lt!403175 0))))

(declare-fun e!753084 () Bool)

(assert (=> d!336320 e!753084))

(declare-fun res!530485 () Bool)

(assert (=> d!336320 (=> (not res!530485) (not e!753084))))

(assert (=> d!336320 (= res!530485 (>= 0 0))))

(assert (=> d!336320 (= (lemmaDropApply!381 lt!403175 0) lt!403668)))

(declare-fun b!1174034 () Bool)

(assert (=> b!1174034 (= e!753084 (< 0 (size!9153 lt!403175)))))

(assert (= (and d!336320 res!530485) b!1174034))

(assert (=> d!336320 m!1348777))

(assert (=> d!336320 m!1348777))

(declare-fun m!1349671 () Bool)

(assert (=> d!336320 m!1349671))

(assert (=> d!336320 m!1348775))

(declare-fun m!1349673 () Bool)

(assert (=> d!336320 m!1349673))

(assert (=> b!1174034 m!1349051))

(assert (=> b!1173540 d!336320))

(declare-fun d!336322 () Bool)

(assert (=> d!336322 (= (tail!1696 (drop!495 lt!403175 1)) (drop!495 lt!403175 (+ 1 1)))))

(declare-fun lt!403672 () Unit!17862)

(declare-fun choose!7587 (List!11628 Int) Unit!17862)

(assert (=> d!336322 (= lt!403672 (choose!7587 lt!403175 1))))

(declare-fun e!753091 () Bool)

(assert (=> d!336322 e!753091))

(declare-fun res!530498 () Bool)

(assert (=> d!336322 (=> (not res!530498) (not e!753091))))

(assert (=> d!336322 (= res!530498 (>= 1 0))))

(assert (=> d!336322 (= (lemmaDropTail!369 lt!403175 1) lt!403672)))

(declare-fun b!1174047 () Bool)

(assert (=> b!1174047 (= e!753091 (< 1 (size!9153 lt!403175)))))

(assert (= (and d!336322 res!530498) b!1174047))

(assert (=> d!336322 m!1348783))

(assert (=> d!336322 m!1348783))

(declare-fun m!1349675 () Bool)

(assert (=> d!336322 m!1349675))

(declare-fun m!1349677 () Bool)

(assert (=> d!336322 m!1349677))

(declare-fun m!1349679 () Bool)

(assert (=> d!336322 m!1349679))

(assert (=> b!1174047 m!1349051))

(assert (=> b!1173540 d!336322))

(declare-fun d!336326 () Bool)

(declare-fun prefixMatchZipperSequence!103 (Regex!3293 BalanceConc!7638) Bool)

(declare-fun rulesRegex!74 (LexerInterface!1718 List!11629) Regex!3293)

(declare-fun ++!3004 (BalanceConc!7638 BalanceConc!7638) BalanceConc!7638)

(declare-fun singletonSeq!689 (C!6904) BalanceConc!7638)

(declare-fun apply!2535 (BalanceConc!7638 Int) C!6904)

(assert (=> d!336326 (= (separableTokensPredicate!140 Lexer!1716 lt!403168 lt!403164 (rules!9666 thiss!10527)) (not (prefixMatchZipperSequence!103 (rulesRegex!74 Lexer!1716 (rules!9666 thiss!10527)) (++!3004 (charsOf!1078 lt!403168) (singletonSeq!689 (apply!2535 (charsOf!1078 lt!403164) 0))))))))

(declare-fun bs!286245 () Bool)

(assert (= bs!286245 d!336326))

(declare-fun m!1349701 () Bool)

(assert (=> bs!286245 m!1349701))

(declare-fun m!1349703 () Bool)

(assert (=> bs!286245 m!1349703))

(assert (=> bs!286245 m!1348821))

(declare-fun m!1349705 () Bool)

(assert (=> bs!286245 m!1349705))

(assert (=> bs!286245 m!1349703))

(declare-fun m!1349707 () Bool)

(assert (=> bs!286245 m!1349707))

(declare-fun m!1349709 () Bool)

(assert (=> bs!286245 m!1349709))

(assert (=> bs!286245 m!1349705))

(assert (=> bs!286245 m!1348821))

(assert (=> bs!286245 m!1349701))

(assert (=> bs!286245 m!1349709))

(assert (=> bs!286245 m!1349707))

(declare-fun m!1349711 () Bool)

(assert (=> bs!286245 m!1349711))

(assert (=> b!1173540 d!336326))

(declare-fun d!336334 () Bool)

(assert (=> d!336334 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) lt!403164)))

(declare-fun lt!403673 () Unit!17862)

(assert (=> d!336334 (= lt!403673 (choose!7584 Lexer!1716 (rules!9666 thiss!10527) lt!403175 lt!403164))))

(assert (=> d!336334 (not (isEmpty!7045 (rules!9666 thiss!10527)))))

(assert (=> d!336334 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!299 Lexer!1716 (rules!9666 thiss!10527) lt!403175 lt!403164) lt!403673)))

(declare-fun bs!286246 () Bool)

(assert (= bs!286246 d!336334))

(assert (=> bs!286246 m!1348807))

(declare-fun m!1349713 () Bool)

(assert (=> bs!286246 m!1349713))

(assert (=> bs!286246 m!1348867))

(assert (=> b!1173540 d!336334))

(declare-fun d!336336 () Bool)

(assert (=> d!336336 (= (head!2112 (drop!495 lt!403175 1)) (apply!2532 lt!403175 1))))

(declare-fun lt!403674 () Unit!17862)

(assert (=> d!336336 (= lt!403674 (choose!7586 lt!403175 1))))

(declare-fun e!753125 () Bool)

(assert (=> d!336336 e!753125))

(declare-fun res!530499 () Bool)

(assert (=> d!336336 (=> (not res!530499) (not e!753125))))

(assert (=> d!336336 (= res!530499 (>= 1 0))))

(assert (=> d!336336 (= (lemmaDropApply!381 lt!403175 1) lt!403674)))

(declare-fun b!1174092 () Bool)

(assert (=> b!1174092 (= e!753125 (< 1 (size!9153 lt!403175)))))

(assert (= (and d!336336 res!530499) b!1174092))

(assert (=> d!336336 m!1348783))

(assert (=> d!336336 m!1348783))

(declare-fun m!1349715 () Bool)

(assert (=> d!336336 m!1349715))

(assert (=> d!336336 m!1348789))

(declare-fun m!1349717 () Bool)

(assert (=> d!336336 m!1349717))

(assert (=> b!1174092 m!1349051))

(assert (=> b!1173540 d!336336))

(declare-fun b!1174093 () Bool)

(declare-fun e!753128 () Int)

(declare-fun call!82402 () Int)

(assert (=> b!1174093 (= e!753128 (- call!82402 1))))

(declare-fun b!1174094 () Bool)

(declare-fun e!753127 () Int)

(assert (=> b!1174094 (= e!753127 e!753128)))

(declare-fun c!195865 () Bool)

(assert (=> b!1174094 (= c!195865 (>= 1 call!82402))))

(declare-fun b!1174095 () Bool)

(declare-fun e!753129 () List!11628)

(assert (=> b!1174095 (= e!753129 Nil!11604)))

(declare-fun d!336338 () Bool)

(declare-fun e!753126 () Bool)

(assert (=> d!336338 e!753126))

(declare-fun res!530500 () Bool)

(assert (=> d!336338 (=> (not res!530500) (not e!753126))))

(declare-fun lt!403675 () List!11628)

(assert (=> d!336338 (= res!530500 (= ((_ map implies) (content!1616 lt!403675) (content!1616 lt!403175)) ((as const (InoxSet Token!3708)) true)))))

(assert (=> d!336338 (= lt!403675 e!753129)))

(declare-fun c!195863 () Bool)

(assert (=> d!336338 (= c!195863 ((_ is Nil!11604) lt!403175))))

(assert (=> d!336338 (= (drop!495 lt!403175 1) lt!403675)))

(declare-fun b!1174096 () Bool)

(declare-fun e!753130 () List!11628)

(assert (=> b!1174096 (= e!753130 (drop!495 (t!110914 lt!403175) (- 1 1)))))

(declare-fun b!1174097 () Bool)

(assert (=> b!1174097 (= e!753129 e!753130)))

(declare-fun c!195862 () Bool)

(assert (=> b!1174097 (= c!195862 (<= 1 0))))

(declare-fun b!1174098 () Bool)

(assert (=> b!1174098 (= e!753127 call!82402)))

(declare-fun b!1174099 () Bool)

(assert (=> b!1174099 (= e!753130 lt!403175)))

(declare-fun b!1174100 () Bool)

(assert (=> b!1174100 (= e!753128 0)))

(declare-fun b!1174101 () Bool)

(assert (=> b!1174101 (= e!753126 (= (size!9153 lt!403675) e!753127))))

(declare-fun c!195864 () Bool)

(assert (=> b!1174101 (= c!195864 (<= 1 0))))

(declare-fun bm!82397 () Bool)

(assert (=> bm!82397 (= call!82402 (size!9153 lt!403175))))

(assert (= (and d!336338 c!195863) b!1174095))

(assert (= (and d!336338 (not c!195863)) b!1174097))

(assert (= (and b!1174097 c!195862) b!1174099))

(assert (= (and b!1174097 (not c!195862)) b!1174096))

(assert (= (and d!336338 res!530500) b!1174101))

(assert (= (and b!1174101 c!195864) b!1174098))

(assert (= (and b!1174101 (not c!195864)) b!1174094))

(assert (= (and b!1174094 c!195865) b!1174100))

(assert (= (and b!1174094 (not c!195865)) b!1174093))

(assert (= (or b!1174098 b!1174094 b!1174093) bm!82397))

(declare-fun m!1349719 () Bool)

(assert (=> d!336338 m!1349719))

(assert (=> d!336338 m!1349045))

(declare-fun m!1349721 () Bool)

(assert (=> b!1174096 m!1349721))

(declare-fun m!1349723 () Bool)

(assert (=> b!1174101 m!1349723))

(assert (=> bm!82397 m!1349051))

(assert (=> b!1173540 d!336338))

(declare-fun d!336340 () Bool)

(assert (=> d!336340 (= (head!2112 lt!403173) (h!17005 lt!403173))))

(assert (=> b!1173540 d!336340))

(declare-fun d!336342 () Bool)

(assert (=> d!336342 (= (tail!1696 (drop!495 lt!403175 0)) (drop!495 lt!403175 (+ 0 1)))))

(declare-fun lt!403676 () Unit!17862)

(assert (=> d!336342 (= lt!403676 (choose!7587 lt!403175 0))))

(declare-fun e!753131 () Bool)

(assert (=> d!336342 e!753131))

(declare-fun res!530501 () Bool)

(assert (=> d!336342 (=> (not res!530501) (not e!753131))))

(assert (=> d!336342 (= res!530501 (>= 0 0))))

(assert (=> d!336342 (= (lemmaDropTail!369 lt!403175 0) lt!403676)))

(declare-fun b!1174102 () Bool)

(assert (=> b!1174102 (= e!753131 (< 0 (size!9153 lt!403175)))))

(assert (= (and d!336342 res!530501) b!1174102))

(assert (=> d!336342 m!1348777))

(assert (=> d!336342 m!1348777))

(declare-fun m!1349725 () Bool)

(assert (=> d!336342 m!1349725))

(declare-fun m!1349727 () Bool)

(assert (=> d!336342 m!1349727))

(declare-fun m!1349729 () Bool)

(assert (=> d!336342 m!1349729))

(assert (=> b!1174102 m!1349051))

(assert (=> b!1173540 d!336342))

(declare-fun d!336344 () Bool)

(declare-fun lt!403679 () Token!3708)

(assert (=> d!336344 (= lt!403679 (apply!2532 (list!4284 (tokens!1664 thiss!10527)) 0))))

(declare-fun apply!2536 (Conc!3809 Int) Token!3708)

(assert (=> d!336344 (= lt!403679 (apply!2536 (c!195813 (tokens!1664 thiss!10527)) 0))))

(declare-fun e!753134 () Bool)

(assert (=> d!336344 e!753134))

(declare-fun res!530504 () Bool)

(assert (=> d!336344 (=> (not res!530504) (not e!753134))))

(assert (=> d!336344 (= res!530504 (<= 0 0))))

(assert (=> d!336344 (= (apply!2531 (tokens!1664 thiss!10527) 0) lt!403679)))

(declare-fun b!1174105 () Bool)

(assert (=> b!1174105 (= e!753134 (< 0 (size!9151 (tokens!1664 thiss!10527))))))

(assert (= (and d!336344 res!530504) b!1174105))

(assert (=> d!336344 m!1348765))

(assert (=> d!336344 m!1348765))

(declare-fun m!1349731 () Bool)

(assert (=> d!336344 m!1349731))

(declare-fun m!1349733 () Bool)

(assert (=> d!336344 m!1349733))

(assert (=> b!1174105 m!1348713))

(assert (=> b!1173540 d!336344))

(declare-fun d!336346 () Bool)

(declare-fun lt!403682 () Token!3708)

(declare-fun contains!2006 (List!11628 Token!3708) Bool)

(assert (=> d!336346 (contains!2006 lt!403175 lt!403682)))

(declare-fun e!753140 () Token!3708)

(assert (=> d!336346 (= lt!403682 e!753140)))

(declare-fun c!195868 () Bool)

(assert (=> d!336346 (= c!195868 (= 1 0))))

(declare-fun e!753139 () Bool)

(assert (=> d!336346 e!753139))

(declare-fun res!530507 () Bool)

(assert (=> d!336346 (=> (not res!530507) (not e!753139))))

(assert (=> d!336346 (= res!530507 (<= 0 1))))

(assert (=> d!336346 (= (apply!2532 lt!403175 1) lt!403682)))

(declare-fun b!1174112 () Bool)

(assert (=> b!1174112 (= e!753139 (< 1 (size!9153 lt!403175)))))

(declare-fun b!1174113 () Bool)

(assert (=> b!1174113 (= e!753140 (head!2112 lt!403175))))

(declare-fun b!1174114 () Bool)

(assert (=> b!1174114 (= e!753140 (apply!2532 (tail!1696 lt!403175) (- 1 1)))))

(assert (= (and d!336346 res!530507) b!1174112))

(assert (= (and d!336346 c!195868) b!1174113))

(assert (= (and d!336346 (not c!195868)) b!1174114))

(declare-fun m!1349735 () Bool)

(assert (=> d!336346 m!1349735))

(assert (=> b!1174112 m!1349051))

(declare-fun m!1349737 () Bool)

(assert (=> b!1174113 m!1349737))

(declare-fun m!1349739 () Bool)

(assert (=> b!1174114 m!1349739))

(assert (=> b!1174114 m!1349739))

(declare-fun m!1349741 () Bool)

(assert (=> b!1174114 m!1349741))

(assert (=> b!1173540 d!336346))

(declare-fun d!336348 () Bool)

(declare-fun lt!403684 () Bool)

(declare-fun e!753142 () Bool)

(assert (=> d!336348 (= lt!403684 e!753142)))

(declare-fun res!530509 () Bool)

(assert (=> d!336348 (=> (not res!530509) (not e!753142))))

(assert (=> d!336348 (= res!530509 (= (list!4284 (_1!6875 (lex!716 Lexer!1716 (rules!9666 thiss!10527) (print!653 Lexer!1716 (singletonSeq!687 lt!403164))))) (list!4284 (singletonSeq!687 lt!403164))))))

(declare-fun e!753141 () Bool)

(assert (=> d!336348 (= lt!403684 e!753141)))

(declare-fun res!530510 () Bool)

(assert (=> d!336348 (=> (not res!530510) (not e!753141))))

(declare-fun lt!403683 () tuple2!12056)

(assert (=> d!336348 (= res!530510 (= (size!9151 (_1!6875 lt!403683)) 1))))

(assert (=> d!336348 (= lt!403683 (lex!716 Lexer!1716 (rules!9666 thiss!10527) (print!653 Lexer!1716 (singletonSeq!687 lt!403164))))))

(assert (=> d!336348 (not (isEmpty!7045 (rules!9666 thiss!10527)))))

(assert (=> d!336348 (= (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) lt!403164) lt!403684)))

(declare-fun b!1174115 () Bool)

(declare-fun res!530508 () Bool)

(assert (=> b!1174115 (=> (not res!530508) (not e!753141))))

(assert (=> b!1174115 (= res!530508 (= (apply!2531 (_1!6875 lt!403683) 0) lt!403164))))

(declare-fun b!1174116 () Bool)

(assert (=> b!1174116 (= e!753141 (isEmpty!7046 (_2!6875 lt!403683)))))

(declare-fun b!1174117 () Bool)

(assert (=> b!1174117 (= e!753142 (isEmpty!7046 (_2!6875 (lex!716 Lexer!1716 (rules!9666 thiss!10527) (print!653 Lexer!1716 (singletonSeq!687 lt!403164))))))))

(assert (= (and d!336348 res!530510) b!1174115))

(assert (= (and b!1174115 res!530508) b!1174116))

(assert (= (and d!336348 res!530509) b!1174117))

(declare-fun m!1349743 () Bool)

(assert (=> d!336348 m!1349743))

(declare-fun m!1349745 () Bool)

(assert (=> d!336348 m!1349745))

(declare-fun m!1349747 () Bool)

(assert (=> d!336348 m!1349747))

(assert (=> d!336348 m!1349745))

(declare-fun m!1349749 () Bool)

(assert (=> d!336348 m!1349749))

(declare-fun m!1349751 () Bool)

(assert (=> d!336348 m!1349751))

(assert (=> d!336348 m!1349743))

(declare-fun m!1349753 () Bool)

(assert (=> d!336348 m!1349753))

(assert (=> d!336348 m!1348867))

(assert (=> d!336348 m!1349743))

(declare-fun m!1349755 () Bool)

(assert (=> b!1174115 m!1349755))

(declare-fun m!1349757 () Bool)

(assert (=> b!1174116 m!1349757))

(assert (=> b!1174117 m!1349743))

(assert (=> b!1174117 m!1349743))

(assert (=> b!1174117 m!1349745))

(assert (=> b!1174117 m!1349745))

(assert (=> b!1174117 m!1349749))

(declare-fun m!1349759 () Bool)

(assert (=> b!1174117 m!1349759))

(assert (=> b!1173540 d!336348))

(declare-fun d!336350 () Bool)

(declare-fun lt!403685 () Token!3708)

(assert (=> d!336350 (= lt!403685 (apply!2532 (list!4284 (tokens!1664 thiss!10527)) 1))))

(assert (=> d!336350 (= lt!403685 (apply!2536 (c!195813 (tokens!1664 thiss!10527)) 1))))

(declare-fun e!753143 () Bool)

(assert (=> d!336350 e!753143))

(declare-fun res!530511 () Bool)

(assert (=> d!336350 (=> (not res!530511) (not e!753143))))

(assert (=> d!336350 (= res!530511 (<= 0 1))))

(assert (=> d!336350 (= (apply!2531 (tokens!1664 thiss!10527) 1) lt!403685)))

(declare-fun b!1174118 () Bool)

(assert (=> b!1174118 (= e!753143 (< 1 (size!9151 (tokens!1664 thiss!10527))))))

(assert (= (and d!336350 res!530511) b!1174118))

(assert (=> d!336350 m!1348765))

(assert (=> d!336350 m!1348765))

(declare-fun m!1349761 () Bool)

(assert (=> d!336350 m!1349761))

(declare-fun m!1349763 () Bool)

(assert (=> d!336350 m!1349763))

(assert (=> b!1174118 m!1348713))

(assert (=> b!1173540 d!336350))

(declare-fun b!1174119 () Bool)

(declare-fun e!753146 () Int)

(declare-fun call!82403 () Int)

(assert (=> b!1174119 (= e!753146 (- call!82403 2))))

(declare-fun b!1174120 () Bool)

(declare-fun e!753145 () Int)

(assert (=> b!1174120 (= e!753145 e!753146)))

(declare-fun c!195872 () Bool)

(assert (=> b!1174120 (= c!195872 (>= 2 call!82403))))

(declare-fun b!1174121 () Bool)

(declare-fun e!753147 () List!11628)

(assert (=> b!1174121 (= e!753147 Nil!11604)))

(declare-fun d!336352 () Bool)

(declare-fun e!753144 () Bool)

(assert (=> d!336352 e!753144))

(declare-fun res!530512 () Bool)

(assert (=> d!336352 (=> (not res!530512) (not e!753144))))

(declare-fun lt!403686 () List!11628)

(assert (=> d!336352 (= res!530512 (= ((_ map implies) (content!1616 lt!403686) (content!1616 lt!403175)) ((as const (InoxSet Token!3708)) true)))))

(assert (=> d!336352 (= lt!403686 e!753147)))

(declare-fun c!195870 () Bool)

(assert (=> d!336352 (= c!195870 ((_ is Nil!11604) lt!403175))))

(assert (=> d!336352 (= (drop!495 lt!403175 2) lt!403686)))

(declare-fun b!1174122 () Bool)

(declare-fun e!753148 () List!11628)

(assert (=> b!1174122 (= e!753148 (drop!495 (t!110914 lt!403175) (- 2 1)))))

(declare-fun b!1174123 () Bool)

(assert (=> b!1174123 (= e!753147 e!753148)))

(declare-fun c!195869 () Bool)

(assert (=> b!1174123 (= c!195869 (<= 2 0))))

(declare-fun b!1174124 () Bool)

(assert (=> b!1174124 (= e!753145 call!82403)))

(declare-fun b!1174125 () Bool)

(assert (=> b!1174125 (= e!753148 lt!403175)))

(declare-fun b!1174126 () Bool)

(assert (=> b!1174126 (= e!753146 0)))

(declare-fun b!1174127 () Bool)

(assert (=> b!1174127 (= e!753144 (= (size!9153 lt!403686) e!753145))))

(declare-fun c!195871 () Bool)

(assert (=> b!1174127 (= c!195871 (<= 2 0))))

(declare-fun bm!82398 () Bool)

(assert (=> bm!82398 (= call!82403 (size!9153 lt!403175))))

(assert (= (and d!336352 c!195870) b!1174121))

(assert (= (and d!336352 (not c!195870)) b!1174123))

(assert (= (and b!1174123 c!195869) b!1174125))

(assert (= (and b!1174123 (not c!195869)) b!1174122))

(assert (= (and d!336352 res!530512) b!1174127))

(assert (= (and b!1174127 c!195871) b!1174124))

(assert (= (and b!1174127 (not c!195871)) b!1174120))

(assert (= (and b!1174120 c!195872) b!1174126))

(assert (= (and b!1174120 (not c!195872)) b!1174119))

(assert (= (or b!1174124 b!1174120 b!1174119) bm!82398))

(declare-fun m!1349765 () Bool)

(assert (=> d!336352 m!1349765))

(assert (=> d!336352 m!1349045))

(declare-fun m!1349767 () Bool)

(assert (=> b!1174122 m!1349767))

(declare-fun m!1349769 () Bool)

(assert (=> b!1174127 m!1349769))

(assert (=> bm!82398 m!1349051))

(assert (=> b!1173540 d!336352))

(declare-fun d!336354 () Bool)

(assert (=> d!336354 (= (head!2112 lt!403180) (h!17005 lt!403180))))

(assert (=> b!1173540 d!336354))

(declare-fun d!336356 () Bool)

(declare-fun lt!403687 () Token!3708)

(assert (=> d!336356 (contains!2006 lt!403175 lt!403687)))

(declare-fun e!753150 () Token!3708)

(assert (=> d!336356 (= lt!403687 e!753150)))

(declare-fun c!195873 () Bool)

(assert (=> d!336356 (= c!195873 (= 0 0))))

(declare-fun e!753149 () Bool)

(assert (=> d!336356 e!753149))

(declare-fun res!530513 () Bool)

(assert (=> d!336356 (=> (not res!530513) (not e!753149))))

(assert (=> d!336356 (= res!530513 (<= 0 0))))

(assert (=> d!336356 (= (apply!2532 lt!403175 0) lt!403687)))

(declare-fun b!1174128 () Bool)

(assert (=> b!1174128 (= e!753149 (< 0 (size!9153 lt!403175)))))

(declare-fun b!1174129 () Bool)

(assert (=> b!1174129 (= e!753150 (head!2112 lt!403175))))

(declare-fun b!1174130 () Bool)

(assert (=> b!1174130 (= e!753150 (apply!2532 (tail!1696 lt!403175) (- 0 1)))))

(assert (= (and d!336356 res!530513) b!1174128))

(assert (= (and d!336356 c!195873) b!1174129))

(assert (= (and d!336356 (not c!195873)) b!1174130))

(declare-fun m!1349771 () Bool)

(assert (=> d!336356 m!1349771))

(assert (=> b!1174128 m!1349051))

(assert (=> b!1174129 m!1349737))

(assert (=> b!1174130 m!1349739))

(assert (=> b!1174130 m!1349739))

(declare-fun m!1349773 () Bool)

(assert (=> b!1174130 m!1349773))

(assert (=> b!1173540 d!336356))

(declare-fun d!336358 () Bool)

(assert (=> d!336358 (= (tail!1696 lt!403180) (t!110914 lt!403180))))

(assert (=> b!1173540 d!336358))

(declare-fun b!1174131 () Bool)

(declare-fun e!753153 () Int)

(declare-fun call!82404 () Int)

(assert (=> b!1174131 (= e!753153 (- call!82404 0))))

(declare-fun b!1174132 () Bool)

(declare-fun e!753152 () Int)

(assert (=> b!1174132 (= e!753152 e!753153)))

(declare-fun c!195877 () Bool)

(assert (=> b!1174132 (= c!195877 (>= 0 call!82404))))

(declare-fun b!1174133 () Bool)

(declare-fun e!753154 () List!11628)

(assert (=> b!1174133 (= e!753154 Nil!11604)))

(declare-fun d!336360 () Bool)

(declare-fun e!753151 () Bool)

(assert (=> d!336360 e!753151))

(declare-fun res!530514 () Bool)

(assert (=> d!336360 (=> (not res!530514) (not e!753151))))

(declare-fun lt!403688 () List!11628)

(assert (=> d!336360 (= res!530514 (= ((_ map implies) (content!1616 lt!403688) (content!1616 lt!403175)) ((as const (InoxSet Token!3708)) true)))))

(assert (=> d!336360 (= lt!403688 e!753154)))

(declare-fun c!195875 () Bool)

(assert (=> d!336360 (= c!195875 ((_ is Nil!11604) lt!403175))))

(assert (=> d!336360 (= (drop!495 lt!403175 0) lt!403688)))

(declare-fun b!1174134 () Bool)

(declare-fun e!753155 () List!11628)

(assert (=> b!1174134 (= e!753155 (drop!495 (t!110914 lt!403175) (- 0 1)))))

(declare-fun b!1174135 () Bool)

(assert (=> b!1174135 (= e!753154 e!753155)))

(declare-fun c!195874 () Bool)

(assert (=> b!1174135 (= c!195874 (<= 0 0))))

(declare-fun b!1174136 () Bool)

(assert (=> b!1174136 (= e!753152 call!82404)))

(declare-fun b!1174137 () Bool)

(assert (=> b!1174137 (= e!753155 lt!403175)))

(declare-fun b!1174138 () Bool)

(assert (=> b!1174138 (= e!753153 0)))

(declare-fun b!1174139 () Bool)

(assert (=> b!1174139 (= e!753151 (= (size!9153 lt!403688) e!753152))))

(declare-fun c!195876 () Bool)

(assert (=> b!1174139 (= c!195876 (<= 0 0))))

(declare-fun bm!82399 () Bool)

(assert (=> bm!82399 (= call!82404 (size!9153 lt!403175))))

(assert (= (and d!336360 c!195875) b!1174133))

(assert (= (and d!336360 (not c!195875)) b!1174135))

(assert (= (and b!1174135 c!195874) b!1174137))

(assert (= (and b!1174135 (not c!195874)) b!1174134))

(assert (= (and d!336360 res!530514) b!1174139))

(assert (= (and b!1174139 c!195876) b!1174136))

(assert (= (and b!1174139 (not c!195876)) b!1174132))

(assert (= (and b!1174132 c!195877) b!1174138))

(assert (= (and b!1174132 (not c!195877)) b!1174131))

(assert (= (or b!1174136 b!1174132 b!1174131) bm!82399))

(declare-fun m!1349775 () Bool)

(assert (=> d!336360 m!1349775))

(assert (=> d!336360 m!1349045))

(declare-fun m!1349777 () Bool)

(assert (=> b!1174134 m!1349777))

(declare-fun m!1349779 () Bool)

(assert (=> b!1174139 m!1349779))

(assert (=> bm!82399 m!1349051))

(assert (=> b!1173540 d!336360))

(declare-fun b!1174140 () Bool)

(declare-fun e!753160 () Bool)

(declare-fun e!753157 () Bool)

(assert (=> b!1174140 (= e!753160 e!753157)))

(declare-fun res!530518 () Bool)

(assert (=> b!1174140 (=> (not res!530518) (not e!753157))))

(assert (=> b!1174140 (= res!530518 (separableTokensPredicate!140 Lexer!1716 (apply!2531 (tokens!1664 thiss!10527) 1) (apply!2531 (tokens!1664 thiss!10527) (+ 1 1)) (rules!9666 thiss!10527)))))

(declare-fun lt!403715 () Unit!17862)

(declare-fun Unit!17883 () Unit!17862)

(assert (=> b!1174140 (= lt!403715 Unit!17883)))

(assert (=> b!1174140 (> (size!9150 (charsOf!1078 (apply!2531 (tokens!1664 thiss!10527) (+ 1 1)))) 0)))

(declare-fun lt!403716 () Unit!17862)

(declare-fun Unit!17884 () Unit!17862)

(assert (=> b!1174140 (= lt!403716 Unit!17884)))

(assert (=> b!1174140 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (apply!2531 (tokens!1664 thiss!10527) (+ 1 1)))))

(declare-fun lt!403713 () Unit!17862)

(declare-fun Unit!17885 () Unit!17862)

(assert (=> b!1174140 (= lt!403713 Unit!17885)))

(assert (=> b!1174140 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (apply!2531 (tokens!1664 thiss!10527) 1))))

(declare-fun lt!403709 () Unit!17862)

(declare-fun lt!403692 () Unit!17862)

(assert (=> b!1174140 (= lt!403709 lt!403692)))

(declare-fun lt!403701 () Token!3708)

(assert (=> b!1174140 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) lt!403701)))

(declare-fun lt!403697 () List!11628)

(assert (=> b!1174140 (= lt!403692 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!299 Lexer!1716 (rules!9666 thiss!10527) lt!403697 lt!403701))))

(assert (=> b!1174140 (= lt!403701 (apply!2531 (tokens!1664 thiss!10527) (+ 1 1)))))

(assert (=> b!1174140 (= lt!403697 (list!4284 (tokens!1664 thiss!10527)))))

(declare-fun lt!403689 () Unit!17862)

(declare-fun lt!403710 () Unit!17862)

(assert (=> b!1174140 (= lt!403689 lt!403710)))

(declare-fun lt!403712 () Token!3708)

(assert (=> b!1174140 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) lt!403712)))

(declare-fun lt!403698 () List!11628)

(assert (=> b!1174140 (= lt!403710 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!299 Lexer!1716 (rules!9666 thiss!10527) lt!403698 lt!403712))))

(assert (=> b!1174140 (= lt!403712 (apply!2531 (tokens!1664 thiss!10527) 1))))

(assert (=> b!1174140 (= lt!403698 (list!4284 (tokens!1664 thiss!10527)))))

(declare-fun lt!403717 () Unit!17862)

(declare-fun lt!403694 () Unit!17862)

(assert (=> b!1174140 (= lt!403717 lt!403694)))

(declare-fun lt!403690 () List!11628)

(declare-fun lt!403711 () Int)

(assert (=> b!1174140 (= (tail!1696 (drop!495 lt!403690 lt!403711)) (drop!495 lt!403690 (+ lt!403711 1)))))

(assert (=> b!1174140 (= lt!403694 (lemmaDropTail!369 lt!403690 lt!403711))))

(assert (=> b!1174140 (= lt!403711 (+ 1 1))))

(assert (=> b!1174140 (= lt!403690 (list!4284 (tokens!1664 thiss!10527)))))

(declare-fun lt!403718 () Unit!17862)

(declare-fun lt!403720 () Unit!17862)

(assert (=> b!1174140 (= lt!403718 lt!403720)))

(declare-fun lt!403703 () List!11628)

(assert (=> b!1174140 (= (tail!1696 (drop!495 lt!403703 1)) (drop!495 lt!403703 (+ 1 1)))))

(assert (=> b!1174140 (= lt!403720 (lemmaDropTail!369 lt!403703 1))))

(assert (=> b!1174140 (= lt!403703 (list!4284 (tokens!1664 thiss!10527)))))

(declare-fun lt!403699 () Unit!17862)

(declare-fun lt!403719 () Unit!17862)

(assert (=> b!1174140 (= lt!403699 lt!403719)))

(declare-fun lt!403708 () List!11628)

(declare-fun lt!403700 () Int)

(assert (=> b!1174140 (= (head!2112 (drop!495 lt!403708 lt!403700)) (apply!2532 lt!403708 lt!403700))))

(assert (=> b!1174140 (= lt!403719 (lemmaDropApply!381 lt!403708 lt!403700))))

(assert (=> b!1174140 (= lt!403700 (+ 1 1))))

(assert (=> b!1174140 (= lt!403708 (list!4284 (tokens!1664 thiss!10527)))))

(declare-fun lt!403691 () Unit!17862)

(declare-fun lt!403695 () Unit!17862)

(assert (=> b!1174140 (= lt!403691 lt!403695)))

(declare-fun lt!403702 () List!11628)

(assert (=> b!1174140 (= (head!2112 (drop!495 lt!403702 1)) (apply!2532 lt!403702 1))))

(assert (=> b!1174140 (= lt!403695 (lemmaDropApply!381 lt!403702 1))))

(assert (=> b!1174140 (= lt!403702 (list!4284 (tokens!1664 thiss!10527)))))

(declare-fun b!1174141 () Bool)

(declare-fun e!753159 () Bool)

(assert (=> b!1174141 (= e!753159 (<= 1 (size!9151 (tokens!1664 thiss!10527))))))

(declare-fun d!336362 () Bool)

(declare-fun lt!403721 () Bool)

(assert (=> d!336362 (= lt!403721 (tokensListTwoByTwoPredicateSeparableList!114 Lexer!1716 (dropList!330 (tokens!1664 thiss!10527) 1) (rules!9666 thiss!10527)))))

(declare-fun lt!403706 () Unit!17862)

(declare-fun lt!403693 () Unit!17862)

(assert (=> d!336362 (= lt!403706 lt!403693)))

(declare-fun lt!403714 () List!11628)

(assert (=> d!336362 (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) lt!403714)))

(declare-fun lt!403705 () List!11628)

(assert (=> d!336362 (= lt!403693 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!36 Lexer!1716 (rules!9666 thiss!10527) lt!403705 lt!403714))))

(declare-fun e!753158 () Bool)

(assert (=> d!336362 e!753158))

(declare-fun res!530519 () Bool)

(assert (=> d!336362 (=> (not res!530519) (not e!753158))))

(assert (=> d!336362 (= res!530519 ((_ is Lexer!1716) Lexer!1716))))

(assert (=> d!336362 (= lt!403714 (dropList!330 (tokens!1664 thiss!10527) 1))))

(assert (=> d!336362 (= lt!403705 (list!4284 (tokens!1664 thiss!10527)))))

(declare-fun lt!403704 () Unit!17862)

(declare-fun lt!403696 () Unit!17862)

(assert (=> d!336362 (= lt!403704 lt!403696)))

(declare-fun lt!403707 () List!11628)

(assert (=> d!336362 (subseq!273 (drop!495 lt!403707 1) lt!403707)))

(assert (=> d!336362 (= lt!403696 (lemmaDropSubSeq!36 lt!403707 1))))

(declare-fun e!753156 () Bool)

(assert (=> d!336362 e!753156))

(declare-fun res!530522 () Bool)

(assert (=> d!336362 (=> (not res!530522) (not e!753156))))

(assert (=> d!336362 (= res!530522 (>= 1 0))))

(assert (=> d!336362 (= lt!403707 (list!4284 (tokens!1664 thiss!10527)))))

(assert (=> d!336362 (= lt!403721 e!753160)))

(declare-fun res!530516 () Bool)

(assert (=> d!336362 (=> res!530516 e!753160)))

(assert (=> d!336362 (= res!530516 (not (< 1 (- (size!9151 (tokens!1664 thiss!10527)) 1))))))

(assert (=> d!336362 e!753159))

(declare-fun res!530521 () Bool)

(assert (=> d!336362 (=> (not res!530521) (not e!753159))))

(assert (=> d!336362 (= res!530521 (>= 1 0))))

(assert (=> d!336362 (= (tokensListTwoByTwoPredicateSeparable!79 Lexer!1716 (tokens!1664 thiss!10527) 1 (rules!9666 thiss!10527)) lt!403721)))

(declare-fun b!1174142 () Bool)

(declare-fun res!530517 () Bool)

(assert (=> b!1174142 (=> (not res!530517) (not e!753158))))

(assert (=> b!1174142 (= res!530517 (rulesInvariant!1592 Lexer!1716 (rules!9666 thiss!10527)))))

(declare-fun b!1174143 () Bool)

(declare-fun res!530515 () Bool)

(assert (=> b!1174143 (=> (not res!530515) (not e!753158))))

(assert (=> b!1174143 (= res!530515 (subseq!273 lt!403714 lt!403705))))

(declare-fun b!1174144 () Bool)

(assert (=> b!1174144 (= e!753156 (<= 1 (size!9153 lt!403707)))))

(declare-fun b!1174145 () Bool)

(assert (=> b!1174145 (= e!753158 (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) lt!403705))))

(declare-fun b!1174146 () Bool)

(declare-fun res!530520 () Bool)

(assert (=> b!1174146 (=> (not res!530520) (not e!753158))))

(assert (=> b!1174146 (= res!530520 (not (isEmpty!7045 (rules!9666 thiss!10527))))))

(declare-fun b!1174147 () Bool)

(assert (=> b!1174147 (= e!753157 (tokensListTwoByTwoPredicateSeparable!79 Lexer!1716 (tokens!1664 thiss!10527) (+ 1 1) (rules!9666 thiss!10527)))))

(assert (= (and d!336362 res!530521) b!1174141))

(assert (= (and d!336362 (not res!530516)) b!1174140))

(assert (= (and b!1174140 res!530518) b!1174147))

(assert (= (and d!336362 res!530522) b!1174144))

(assert (= (and d!336362 res!530519) b!1174146))

(assert (= (and b!1174146 res!530520) b!1174142))

(assert (= (and b!1174142 res!530517) b!1174143))

(assert (= (and b!1174143 res!530515) b!1174145))

(assert (=> b!1174142 m!1348705))

(assert (=> b!1174141 m!1348713))

(declare-fun m!1349781 () Bool)

(assert (=> b!1174143 m!1349781))

(declare-fun m!1349783 () Bool)

(assert (=> b!1174147 m!1349783))

(declare-fun m!1349785 () Bool)

(assert (=> b!1174145 m!1349785))

(assert (=> d!336362 m!1348765))

(declare-fun m!1349787 () Bool)

(assert (=> d!336362 m!1349787))

(declare-fun m!1349789 () Bool)

(assert (=> d!336362 m!1349789))

(declare-fun m!1349791 () Bool)

(assert (=> d!336362 m!1349791))

(declare-fun m!1349793 () Bool)

(assert (=> d!336362 m!1349793))

(assert (=> d!336362 m!1349789))

(declare-fun m!1349795 () Bool)

(assert (=> d!336362 m!1349795))

(declare-fun m!1349797 () Bool)

(assert (=> d!336362 m!1349797))

(assert (=> d!336362 m!1348713))

(assert (=> d!336362 m!1349791))

(declare-fun m!1349799 () Bool)

(assert (=> d!336362 m!1349799))

(declare-fun m!1349801 () Bool)

(assert (=> b!1174144 m!1349801))

(declare-fun m!1349803 () Bool)

(assert (=> b!1174140 m!1349803))

(declare-fun m!1349805 () Bool)

(assert (=> b!1174140 m!1349805))

(assert (=> b!1174140 m!1348765))

(declare-fun m!1349807 () Bool)

(assert (=> b!1174140 m!1349807))

(declare-fun m!1349809 () Bool)

(assert (=> b!1174140 m!1349809))

(declare-fun m!1349811 () Bool)

(assert (=> b!1174140 m!1349811))

(declare-fun m!1349813 () Bool)

(assert (=> b!1174140 m!1349813))

(declare-fun m!1349815 () Bool)

(assert (=> b!1174140 m!1349815))

(assert (=> b!1174140 m!1348797))

(declare-fun m!1349817 () Bool)

(assert (=> b!1174140 m!1349817))

(declare-fun m!1349819 () Bool)

(assert (=> b!1174140 m!1349819))

(declare-fun m!1349821 () Bool)

(assert (=> b!1174140 m!1349821))

(declare-fun m!1349823 () Bool)

(assert (=> b!1174140 m!1349823))

(declare-fun m!1349825 () Bool)

(assert (=> b!1174140 m!1349825))

(declare-fun m!1349827 () Bool)

(assert (=> b!1174140 m!1349827))

(assert (=> b!1174140 m!1348797))

(declare-fun m!1349829 () Bool)

(assert (=> b!1174140 m!1349829))

(assert (=> b!1174140 m!1349819))

(declare-fun m!1349831 () Bool)

(assert (=> b!1174140 m!1349831))

(assert (=> b!1174140 m!1349825))

(declare-fun m!1349833 () Bool)

(assert (=> b!1174140 m!1349833))

(declare-fun m!1349835 () Bool)

(assert (=> b!1174140 m!1349835))

(declare-fun m!1349837 () Bool)

(assert (=> b!1174140 m!1349837))

(declare-fun m!1349839 () Bool)

(assert (=> b!1174140 m!1349839))

(assert (=> b!1174140 m!1349823))

(declare-fun m!1349841 () Bool)

(assert (=> b!1174140 m!1349841))

(assert (=> b!1174140 m!1349813))

(assert (=> b!1174140 m!1348797))

(assert (=> b!1174140 m!1349813))

(declare-fun m!1349843 () Bool)

(assert (=> b!1174140 m!1349843))

(declare-fun m!1349845 () Bool)

(assert (=> b!1174140 m!1349845))

(assert (=> b!1174140 m!1349803))

(declare-fun m!1349847 () Bool)

(assert (=> b!1174140 m!1349847))

(declare-fun m!1349849 () Bool)

(assert (=> b!1174140 m!1349849))

(declare-fun m!1349851 () Bool)

(assert (=> b!1174140 m!1349851))

(assert (=> b!1174140 m!1349813))

(assert (=> b!1174140 m!1349837))

(declare-fun m!1349853 () Bool)

(assert (=> b!1174140 m!1349853))

(assert (=> b!1174146 m!1348867))

(assert (=> b!1173550 d!336362))

(declare-fun b!1174148 () Bool)

(declare-fun e!753165 () Bool)

(declare-fun e!753162 () Bool)

(assert (=> b!1174148 (= e!753165 e!753162)))

(declare-fun res!530526 () Bool)

(assert (=> b!1174148 (=> (not res!530526) (not e!753162))))

(assert (=> b!1174148 (= res!530526 (separableTokensPredicate!140 Lexer!1716 (apply!2531 (tokens!1664 thiss!10527) 0) (apply!2531 (tokens!1664 thiss!10527) (+ 0 1)) (rules!9666 thiss!10527)))))

(declare-fun lt!403748 () Unit!17862)

(declare-fun Unit!17886 () Unit!17862)

(assert (=> b!1174148 (= lt!403748 Unit!17886)))

(assert (=> b!1174148 (> (size!9150 (charsOf!1078 (apply!2531 (tokens!1664 thiss!10527) (+ 0 1)))) 0)))

(declare-fun lt!403749 () Unit!17862)

(declare-fun Unit!17887 () Unit!17862)

(assert (=> b!1174148 (= lt!403749 Unit!17887)))

(assert (=> b!1174148 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (apply!2531 (tokens!1664 thiss!10527) (+ 0 1)))))

(declare-fun lt!403746 () Unit!17862)

(declare-fun Unit!17888 () Unit!17862)

(assert (=> b!1174148 (= lt!403746 Unit!17888)))

(assert (=> b!1174148 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (apply!2531 (tokens!1664 thiss!10527) 0))))

(declare-fun lt!403742 () Unit!17862)

(declare-fun lt!403725 () Unit!17862)

(assert (=> b!1174148 (= lt!403742 lt!403725)))

(declare-fun lt!403734 () Token!3708)

(assert (=> b!1174148 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) lt!403734)))

(declare-fun lt!403730 () List!11628)

(assert (=> b!1174148 (= lt!403725 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!299 Lexer!1716 (rules!9666 thiss!10527) lt!403730 lt!403734))))

(assert (=> b!1174148 (= lt!403734 (apply!2531 (tokens!1664 thiss!10527) (+ 0 1)))))

(assert (=> b!1174148 (= lt!403730 (list!4284 (tokens!1664 thiss!10527)))))

(declare-fun lt!403722 () Unit!17862)

(declare-fun lt!403743 () Unit!17862)

(assert (=> b!1174148 (= lt!403722 lt!403743)))

(declare-fun lt!403745 () Token!3708)

(assert (=> b!1174148 (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) lt!403745)))

(declare-fun lt!403731 () List!11628)

(assert (=> b!1174148 (= lt!403743 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!299 Lexer!1716 (rules!9666 thiss!10527) lt!403731 lt!403745))))

(assert (=> b!1174148 (= lt!403745 (apply!2531 (tokens!1664 thiss!10527) 0))))

(assert (=> b!1174148 (= lt!403731 (list!4284 (tokens!1664 thiss!10527)))))

(declare-fun lt!403750 () Unit!17862)

(declare-fun lt!403727 () Unit!17862)

(assert (=> b!1174148 (= lt!403750 lt!403727)))

(declare-fun lt!403723 () List!11628)

(declare-fun lt!403744 () Int)

(assert (=> b!1174148 (= (tail!1696 (drop!495 lt!403723 lt!403744)) (drop!495 lt!403723 (+ lt!403744 1)))))

(assert (=> b!1174148 (= lt!403727 (lemmaDropTail!369 lt!403723 lt!403744))))

(assert (=> b!1174148 (= lt!403744 (+ 0 1))))

(assert (=> b!1174148 (= lt!403723 (list!4284 (tokens!1664 thiss!10527)))))

(declare-fun lt!403751 () Unit!17862)

(declare-fun lt!403753 () Unit!17862)

(assert (=> b!1174148 (= lt!403751 lt!403753)))

(declare-fun lt!403736 () List!11628)

(assert (=> b!1174148 (= (tail!1696 (drop!495 lt!403736 0)) (drop!495 lt!403736 (+ 0 1)))))

(assert (=> b!1174148 (= lt!403753 (lemmaDropTail!369 lt!403736 0))))

(assert (=> b!1174148 (= lt!403736 (list!4284 (tokens!1664 thiss!10527)))))

(declare-fun lt!403732 () Unit!17862)

(declare-fun lt!403752 () Unit!17862)

(assert (=> b!1174148 (= lt!403732 lt!403752)))

(declare-fun lt!403741 () List!11628)

(declare-fun lt!403733 () Int)

(assert (=> b!1174148 (= (head!2112 (drop!495 lt!403741 lt!403733)) (apply!2532 lt!403741 lt!403733))))

(assert (=> b!1174148 (= lt!403752 (lemmaDropApply!381 lt!403741 lt!403733))))

(assert (=> b!1174148 (= lt!403733 (+ 0 1))))

(assert (=> b!1174148 (= lt!403741 (list!4284 (tokens!1664 thiss!10527)))))

(declare-fun lt!403724 () Unit!17862)

(declare-fun lt!403728 () Unit!17862)

(assert (=> b!1174148 (= lt!403724 lt!403728)))

(declare-fun lt!403735 () List!11628)

(assert (=> b!1174148 (= (head!2112 (drop!495 lt!403735 0)) (apply!2532 lt!403735 0))))

(assert (=> b!1174148 (= lt!403728 (lemmaDropApply!381 lt!403735 0))))

(assert (=> b!1174148 (= lt!403735 (list!4284 (tokens!1664 thiss!10527)))))

(declare-fun b!1174149 () Bool)

(declare-fun e!753164 () Bool)

(assert (=> b!1174149 (= e!753164 (<= 0 (size!9151 (tokens!1664 thiss!10527))))))

(declare-fun d!336364 () Bool)

(declare-fun lt!403754 () Bool)

(assert (=> d!336364 (= lt!403754 (tokensListTwoByTwoPredicateSeparableList!114 Lexer!1716 (dropList!330 (tokens!1664 thiss!10527) 0) (rules!9666 thiss!10527)))))

(declare-fun lt!403739 () Unit!17862)

(declare-fun lt!403726 () Unit!17862)

(assert (=> d!336364 (= lt!403739 lt!403726)))

(declare-fun lt!403747 () List!11628)

(assert (=> d!336364 (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) lt!403747)))

(declare-fun lt!403738 () List!11628)

(assert (=> d!336364 (= lt!403726 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!36 Lexer!1716 (rules!9666 thiss!10527) lt!403738 lt!403747))))

(declare-fun e!753163 () Bool)

(assert (=> d!336364 e!753163))

(declare-fun res!530527 () Bool)

(assert (=> d!336364 (=> (not res!530527) (not e!753163))))

(assert (=> d!336364 (= res!530527 ((_ is Lexer!1716) Lexer!1716))))

(assert (=> d!336364 (= lt!403747 (dropList!330 (tokens!1664 thiss!10527) 0))))

(assert (=> d!336364 (= lt!403738 (list!4284 (tokens!1664 thiss!10527)))))

(declare-fun lt!403737 () Unit!17862)

(declare-fun lt!403729 () Unit!17862)

(assert (=> d!336364 (= lt!403737 lt!403729)))

(declare-fun lt!403740 () List!11628)

(assert (=> d!336364 (subseq!273 (drop!495 lt!403740 0) lt!403740)))

(assert (=> d!336364 (= lt!403729 (lemmaDropSubSeq!36 lt!403740 0))))

(declare-fun e!753161 () Bool)

(assert (=> d!336364 e!753161))

(declare-fun res!530530 () Bool)

(assert (=> d!336364 (=> (not res!530530) (not e!753161))))

(assert (=> d!336364 (= res!530530 (>= 0 0))))

(assert (=> d!336364 (= lt!403740 (list!4284 (tokens!1664 thiss!10527)))))

(assert (=> d!336364 (= lt!403754 e!753165)))

(declare-fun res!530524 () Bool)

(assert (=> d!336364 (=> res!530524 e!753165)))

(assert (=> d!336364 (= res!530524 (not (< 0 (- (size!9151 (tokens!1664 thiss!10527)) 1))))))

(assert (=> d!336364 e!753164))

(declare-fun res!530529 () Bool)

(assert (=> d!336364 (=> (not res!530529) (not e!753164))))

(assert (=> d!336364 (= res!530529 (>= 0 0))))

(assert (=> d!336364 (= (tokensListTwoByTwoPredicateSeparable!79 Lexer!1716 (tokens!1664 thiss!10527) 0 (rules!9666 thiss!10527)) lt!403754)))

(declare-fun b!1174150 () Bool)

(declare-fun res!530525 () Bool)

(assert (=> b!1174150 (=> (not res!530525) (not e!753163))))

(assert (=> b!1174150 (= res!530525 (rulesInvariant!1592 Lexer!1716 (rules!9666 thiss!10527)))))

(declare-fun b!1174151 () Bool)

(declare-fun res!530523 () Bool)

(assert (=> b!1174151 (=> (not res!530523) (not e!753163))))

(assert (=> b!1174151 (= res!530523 (subseq!273 lt!403747 lt!403738))))

(declare-fun b!1174152 () Bool)

(assert (=> b!1174152 (= e!753161 (<= 0 (size!9153 lt!403740)))))

(declare-fun b!1174153 () Bool)

(assert (=> b!1174153 (= e!753163 (rulesProduceEachTokenIndividuallyList!584 Lexer!1716 (rules!9666 thiss!10527) lt!403738))))

(declare-fun b!1174154 () Bool)

(declare-fun res!530528 () Bool)

(assert (=> b!1174154 (=> (not res!530528) (not e!753163))))

(assert (=> b!1174154 (= res!530528 (not (isEmpty!7045 (rules!9666 thiss!10527))))))

(declare-fun b!1174155 () Bool)

(assert (=> b!1174155 (= e!753162 (tokensListTwoByTwoPredicateSeparable!79 Lexer!1716 (tokens!1664 thiss!10527) (+ 0 1) (rules!9666 thiss!10527)))))

(assert (= (and d!336364 res!530529) b!1174149))

(assert (= (and d!336364 (not res!530524)) b!1174148))

(assert (= (and b!1174148 res!530526) b!1174155))

(assert (= (and d!336364 res!530530) b!1174152))

(assert (= (and d!336364 res!530527) b!1174154))

(assert (= (and b!1174154 res!530528) b!1174150))

(assert (= (and b!1174150 res!530525) b!1174151))

(assert (= (and b!1174151 res!530523) b!1174153))

(assert (=> b!1174150 m!1348705))

(assert (=> b!1174149 m!1348713))

(declare-fun m!1349855 () Bool)

(assert (=> b!1174151 m!1349855))

(declare-fun m!1349857 () Bool)

(assert (=> b!1174155 m!1349857))

(declare-fun m!1349859 () Bool)

(assert (=> b!1174153 m!1349859))

(assert (=> d!336364 m!1348765))

(declare-fun m!1349861 () Bool)

(assert (=> d!336364 m!1349861))

(declare-fun m!1349863 () Bool)

(assert (=> d!336364 m!1349863))

(declare-fun m!1349865 () Bool)

(assert (=> d!336364 m!1349865))

(declare-fun m!1349867 () Bool)

(assert (=> d!336364 m!1349867))

(assert (=> d!336364 m!1349863))

(declare-fun m!1349869 () Bool)

(assert (=> d!336364 m!1349869))

(declare-fun m!1349871 () Bool)

(assert (=> d!336364 m!1349871))

(assert (=> d!336364 m!1348713))

(assert (=> d!336364 m!1349865))

(declare-fun m!1349873 () Bool)

(assert (=> d!336364 m!1349873))

(declare-fun m!1349875 () Bool)

(assert (=> b!1174152 m!1349875))

(declare-fun m!1349877 () Bool)

(assert (=> b!1174148 m!1349877))

(declare-fun m!1349879 () Bool)

(assert (=> b!1174148 m!1349879))

(assert (=> b!1174148 m!1348765))

(declare-fun m!1349881 () Bool)

(assert (=> b!1174148 m!1349881))

(declare-fun m!1349883 () Bool)

(assert (=> b!1174148 m!1349883))

(declare-fun m!1349885 () Bool)

(assert (=> b!1174148 m!1349885))

(declare-fun m!1349887 () Bool)

(assert (=> b!1174148 m!1349887))

(declare-fun m!1349889 () Bool)

(assert (=> b!1174148 m!1349889))

(assert (=> b!1174148 m!1348791))

(declare-fun m!1349891 () Bool)

(assert (=> b!1174148 m!1349891))

(declare-fun m!1349893 () Bool)

(assert (=> b!1174148 m!1349893))

(declare-fun m!1349895 () Bool)

(assert (=> b!1174148 m!1349895))

(declare-fun m!1349897 () Bool)

(assert (=> b!1174148 m!1349897))

(declare-fun m!1349899 () Bool)

(assert (=> b!1174148 m!1349899))

(declare-fun m!1349901 () Bool)

(assert (=> b!1174148 m!1349901))

(assert (=> b!1174148 m!1348791))

(declare-fun m!1349903 () Bool)

(assert (=> b!1174148 m!1349903))

(assert (=> b!1174148 m!1349893))

(declare-fun m!1349905 () Bool)

(assert (=> b!1174148 m!1349905))

(assert (=> b!1174148 m!1349899))

(declare-fun m!1349907 () Bool)

(assert (=> b!1174148 m!1349907))

(declare-fun m!1349909 () Bool)

(assert (=> b!1174148 m!1349909))

(declare-fun m!1349911 () Bool)

(assert (=> b!1174148 m!1349911))

(declare-fun m!1349913 () Bool)

(assert (=> b!1174148 m!1349913))

(assert (=> b!1174148 m!1349897))

(declare-fun m!1349915 () Bool)

(assert (=> b!1174148 m!1349915))

(assert (=> b!1174148 m!1349887))

(assert (=> b!1174148 m!1348791))

(assert (=> b!1174148 m!1349887))

(declare-fun m!1349917 () Bool)

(assert (=> b!1174148 m!1349917))

(declare-fun m!1349919 () Bool)

(assert (=> b!1174148 m!1349919))

(assert (=> b!1174148 m!1349877))

(declare-fun m!1349921 () Bool)

(assert (=> b!1174148 m!1349921))

(declare-fun m!1349923 () Bool)

(assert (=> b!1174148 m!1349923))

(declare-fun m!1349925 () Bool)

(assert (=> b!1174148 m!1349925))

(assert (=> b!1174148 m!1349887))

(assert (=> b!1174148 m!1349911))

(declare-fun m!1349927 () Bool)

(assert (=> b!1174148 m!1349927))

(assert (=> b!1174154 m!1348867))

(assert (=> b!1173539 d!336364))

(declare-fun d!336366 () Bool)

(declare-fun res!530533 () Bool)

(declare-fun e!753168 () Bool)

(assert (=> d!336366 (=> (not res!530533) (not e!753168))))

(declare-fun rulesValid!715 (LexerInterface!1718 List!11629) Bool)

(assert (=> d!336366 (= res!530533 (rulesValid!715 Lexer!1716 (rules!9666 thiss!10527)))))

(assert (=> d!336366 (= (rulesInvariant!1592 Lexer!1716 (rules!9666 thiss!10527)) e!753168)))

(declare-fun b!1174158 () Bool)

(declare-datatypes ((List!11631 0))(
  ( (Nil!11607) (Cons!11607 (h!17008 String!14033) (t!110941 List!11631)) )
))
(declare-fun noDuplicateTag!715 (LexerInterface!1718 List!11629 List!11631) Bool)

(assert (=> b!1174158 (= e!753168 (noDuplicateTag!715 Lexer!1716 (rules!9666 thiss!10527) Nil!11607))))

(assert (= (and d!336366 res!530533) b!1174158))

(declare-fun m!1349929 () Bool)

(assert (=> d!336366 m!1349929))

(declare-fun m!1349931 () Bool)

(assert (=> b!1174158 m!1349931))

(assert (=> b!1173549 d!336366))

(declare-fun d!336368 () Bool)

(declare-fun e!753171 () Bool)

(assert (=> d!336368 e!753171))

(declare-fun res!530538 () Bool)

(assert (=> d!336368 (=> (not res!530538) (not e!753171))))

(assert (=> d!336368 (= res!530538 (rulesInvariant!1592 Lexer!1716 (rules!9666 thiss!10527)))))

(declare-fun Unit!17889 () Unit!17862)

(assert (=> d!336368 (= (lemmaInvariant!210 thiss!10527) Unit!17889)))

(declare-fun b!1174163 () Bool)

(declare-fun res!530539 () Bool)

(assert (=> b!1174163 (=> (not res!530539) (not e!753171))))

(assert (=> b!1174163 (= res!530539 (rulesProduceEachTokenIndividually!756 Lexer!1716 (rules!9666 thiss!10527) (tokens!1664 thiss!10527)))))

(declare-fun b!1174164 () Bool)

(assert (=> b!1174164 (= e!753171 (separableTokens!154 Lexer!1716 (tokens!1664 thiss!10527) (rules!9666 thiss!10527)))))

(assert (= (and d!336368 res!530538) b!1174163))

(assert (= (and b!1174163 res!530539) b!1174164))

(assert (=> d!336368 m!1348705))

(assert (=> b!1174163 m!1348763))

(assert (=> b!1174164 m!1349409))

(assert (=> b!1173549 d!336368))

(declare-fun tp!334888 () Bool)

(declare-fun b!1174173 () Bool)

(declare-fun e!753176 () Bool)

(declare-fun tp!334889 () Bool)

(assert (=> b!1174173 (= e!753176 (and (inv!15315 (left!10146 (c!195813 (tokens!1664 thiss!10527)))) tp!334889 (inv!15315 (right!10476 (c!195813 (tokens!1664 thiss!10527)))) tp!334888))))

(declare-fun b!1174175 () Bool)

(declare-fun e!753177 () Bool)

(declare-fun tp!334887 () Bool)

(assert (=> b!1174175 (= e!753177 tp!334887)))

(declare-fun b!1174174 () Bool)

(declare-fun inv!15326 (IArray!7623) Bool)

(assert (=> b!1174174 (= e!753176 (and (inv!15326 (xs!6514 (c!195813 (tokens!1664 thiss!10527)))) e!753177))))

(assert (=> b!1173542 (= tp!334856 (and (inv!15315 (c!195813 (tokens!1664 thiss!10527))) e!753176))))

(assert (= (and b!1173542 ((_ is Node!3809) (c!195813 (tokens!1664 thiss!10527)))) b!1174173))

(assert (= b!1174174 b!1174175))

(assert (= (and b!1173542 ((_ is Leaf!5831) (c!195813 (tokens!1664 thiss!10527)))) b!1174174))

(declare-fun m!1349933 () Bool)

(assert (=> b!1174173 m!1349933))

(declare-fun m!1349935 () Bool)

(assert (=> b!1174173 m!1349935))

(declare-fun m!1349937 () Bool)

(assert (=> b!1174174 m!1349937))

(assert (=> b!1173542 m!1348759))

(declare-fun b!1174186 () Bool)

(declare-fun b_free!27881 () Bool)

(declare-fun b_next!28585 () Bool)

(assert (=> b!1174186 (= b_free!27881 (not b_next!28585))))

(declare-fun tp!334899 () Bool)

(declare-fun b_and!80801 () Bool)

(assert (=> b!1174186 (= tp!334899 b_and!80801)))

(declare-fun b_free!27883 () Bool)

(declare-fun b_next!28587 () Bool)

(assert (=> b!1174186 (= b_free!27883 (not b_next!28587))))

(declare-fun t!110940 () Bool)

(declare-fun tb!66015 () Bool)

(assert (=> (and b!1174186 (= (toChars!2983 (transformation!2023 (h!17006 (rules!9666 thiss!10527)))) (toChars!2983 (transformation!2023 (rule!3444 lt!403164)))) t!110940) tb!66015))

(declare-fun b!1174191 () Bool)

(declare-fun e!753192 () Bool)

(declare-fun tp!334904 () Bool)

(declare-fun inv!15327 (Conc!3808) Bool)

(assert (=> b!1174191 (= e!753192 (and (inv!15327 (c!195812 (dynLambda!5135 (toChars!2983 (transformation!2023 (rule!3444 lt!403164))) (value!65652 lt!403164)))) tp!334904))))

(declare-fun result!79074 () Bool)

(declare-fun inv!15328 (BalanceConc!7638) Bool)

(assert (=> tb!66015 (= result!79074 (and (inv!15328 (dynLambda!5135 (toChars!2983 (transformation!2023 (rule!3444 lt!403164))) (value!65652 lt!403164))) e!753192))))

(assert (= tb!66015 b!1174191))

(declare-fun m!1349939 () Bool)

(assert (=> b!1174191 m!1349939))

(declare-fun m!1349941 () Bool)

(assert (=> tb!66015 m!1349941))

(assert (=> d!336226 t!110940))

(declare-fun tp!334898 () Bool)

(declare-fun b_and!80803 () Bool)

(assert (=> b!1174186 (= tp!334898 (and (=> t!110940 result!79074) b_and!80803))))

(declare-fun e!753188 () Bool)

(assert (=> b!1174186 (= e!753188 (and tp!334899 tp!334898))))

(declare-fun tp!334900 () Bool)

(declare-fun b!1174185 () Bool)

(declare-fun e!753189 () Bool)

(declare-fun inv!15311 (String!14033) Bool)

(declare-fun inv!15329 (TokenValueInjection!3878) Bool)

(assert (=> b!1174185 (= e!753189 (and tp!334900 (inv!15311 (tag!2285 (h!17006 (rules!9666 thiss!10527)))) (inv!15329 (transformation!2023 (h!17006 (rules!9666 thiss!10527)))) e!753188))))

(declare-fun b!1174184 () Bool)

(declare-fun e!753187 () Bool)

(declare-fun tp!334901 () Bool)

(assert (=> b!1174184 (= e!753187 (and e!753189 tp!334901))))

(assert (=> b!1173555 (= tp!334855 e!753187)))

(assert (= b!1174185 b!1174186))

(assert (= b!1174184 b!1174185))

(assert (= (and b!1173555 ((_ is Cons!11605) (rules!9666 thiss!10527))) b!1174184))

(declare-fun m!1349943 () Bool)

(assert (=> b!1174185 m!1349943))

(declare-fun m!1349945 () Bool)

(assert (=> b!1174185 m!1349945))

(declare-fun b!1174200 () Bool)

(declare-fun e!753197 () Bool)

(assert (=> b!1174200 (= e!753197 true)))

(declare-fun b!1174202 () Bool)

(declare-fun e!753198 () Bool)

(assert (=> b!1174202 (= e!753198 true)))

(declare-fun b!1174201 () Bool)

(assert (=> b!1174201 (= e!753197 e!753198)))

(assert (=> b!1173565 e!753197))

(assert (= (and b!1173565 ((_ is Node!3809) (c!195813 (tokens!1664 thiss!10527)))) b!1174200))

(assert (= b!1174201 b!1174202))

(assert (= (and b!1173565 ((_ is Leaf!5831) (c!195813 (tokens!1664 thiss!10527)))) b!1174201))

(declare-fun b!1174205 () Bool)

(declare-fun e!753201 () Bool)

(assert (=> b!1174205 (= e!753201 true)))

(declare-fun b!1174204 () Bool)

(declare-fun e!753200 () Bool)

(assert (=> b!1174204 (= e!753200 e!753201)))

(declare-fun b!1174203 () Bool)

(declare-fun e!753199 () Bool)

(assert (=> b!1174203 (= e!753199 e!753200)))

(assert (=> b!1173564 e!753199))

(assert (= b!1174204 b!1174205))

(assert (= b!1174203 b!1174204))

(assert (= (and b!1173564 ((_ is Cons!11605) (rules!9666 thiss!10527))) b!1174203))

(assert (=> b!1174205 (< (dynLambda!5131 order!7131 (toValue!3124 (transformation!2023 (h!17006 (rules!9666 thiss!10527))))) (dynLambda!5132 order!7133 lambda!48293))))

(assert (=> b!1174205 (< (dynLambda!5133 order!7135 (toChars!2983 (transformation!2023 (h!17006 (rules!9666 thiss!10527))))) (dynLambda!5132 order!7133 lambda!48293))))

(declare-fun b_lambda!35121 () Bool)

(assert (= b_lambda!35109 (or b!1173545 b_lambda!35121)))

(declare-fun bs!286247 () Bool)

(declare-fun d!336370 () Bool)

(assert (= bs!286247 (and d!336370 b!1173545)))

(assert (=> bs!286247 (= (dynLambda!5134 lambda!48293 (h!17005 lt!403176)) (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (h!17005 lt!403176)))))

(assert (=> bs!286247 m!1348753))

(assert (=> b!1173933 d!336370))

(declare-fun b_lambda!35123 () Bool)

(assert (= b_lambda!35105 (or b!1173545 b_lambda!35123)))

(declare-fun bs!286248 () Bool)

(declare-fun d!336372 () Bool)

(assert (= bs!286248 (and d!336372 b!1173545)))

(assert (=> bs!286248 (= (dynLambda!5134 lambda!48293 (h!17005 lt!403184)) (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (h!17005 lt!403184)))))

(assert (=> bs!286248 m!1348817))

(assert (=> b!1173701 d!336372))

(declare-fun b_lambda!35125 () Bool)

(assert (= b_lambda!35103 (or b!1173545 b_lambda!35125)))

(declare-fun bs!286249 () Bool)

(declare-fun d!336374 () Bool)

(assert (= bs!286249 (and d!336374 b!1173545)))

(assert (=> bs!286249 (= (dynLambda!5134 lambda!48293 (h!17005 lt!403175)) (rulesProduceIndividualToken!753 Lexer!1716 (rules!9666 thiss!10527) (h!17005 lt!403175)))))

(assert (=> bs!286249 m!1348729))

(assert (=> b!1173699 d!336374))

(check-sat (not d!336232) (not d!336170) (not b!1174203) (not b!1173667) (not b!1173769) (not d!336326) (not bs!286248) (not b!1173931) (not d!336350) (not d!336154) (not b!1174129) (not b!1174130) (not b!1174128) (not b!1173863) (not d!336130) (not b!1174102) (not b_lambda!35123) (not b!1174112) (not d!336334) (not b!1174047) (not b!1174151) (not d!336180) (not d!336344) (not d!336356) (not b!1174115) (not b!1174158) (not d!336316) (not b!1173586) (not d!336342) (not d!336228) (not b!1173816) (not d!336364) (not b!1173666) (not b!1173934) (not d!336204) (not b!1173903) (not b!1174191) (not b!1173908) (not b_next!28587) (not d!336124) (not d!336150) (not b!1174144) (not d!336366) (not b!1173857) (not d!336338) (not b!1173913) (not b!1174202) (not b!1173542) (not d!336202) (not b!1173784) (not b!1174146) (not b!1173783) (not d!336178) (not bs!286249) (not b!1174024) (not b!1173900) (not b!1174031) (not b!1173901) (not b!1174200) (not d!336348) (not b!1174026) (not b!1173662) (not b!1174140) (not b!1174114) (not b!1173689) (not b!1173861) (not b!1173766) (not d!336200) (not b!1174141) (not b!1174122) (not b!1174149) (not b!1174152) (not b!1173700) (not b!1174154) (not b!1173661) (not b_lambda!35107) (not b!1174022) (not b!1174116) (not b!1173791) (not b!1174092) (not b!1174173) (not d!336182) (not d!336360) (not d!336318) (not b!1174029) (not b!1174034) (not b!1174117) (not b!1173770) (not b!1174163) (not b!1174025) (not d!336158) (not b!1173767) (not b!1174153) (not d!336156) (not b!1173665) (not b!1174127) (not b!1173822) (not d!336352) (not b!1174142) (not b!1173815) (not d!336176) (not b!1173660) (not b!1173922) (not b!1173820) (not b!1174150) (not b!1174164) (not b!1174148) (not bs!286247) (not d!336122) (not d!336336) (not b!1173923) (not b!1174139) (not b!1173694) (not d!336218) (not d!336322) (not bm!82399) (not d!336238) (not d!336224) (not b!1173663) (not d!336368) (not b_lambda!35121) (not b!1174113) (not b!1173793) (not d!336346) (not b_next!28585) (not d!336222) (not b!1173919) (not b!1173768) (not d!336240) (not b!1173904) (not b!1173912) (not b!1173930) (not bm!82398) (not bm!82390) (not tb!66015) (not b!1174185) (not bm!82397) (not d!336146) (not b!1173702) (not b!1173907) (not b!1174155) (not b!1174147) (not b!1173817) (not b!1174105) (not b!1173858) (not b!1173664) b_and!80803 (not b!1174134) (not b!1174174) (not d!336362) (not b!1173705) (not b!1173818) (not b_lambda!35125) (not b!1173902) (not b!1174175) b_and!80801 (not d!336230) (not b!1173821) (not b!1174101) (not b!1173814) (not b!1173595) (not b!1174023) (not d!336132) (not b!1174096) (not b!1173585) (not d!336220) (not b!1173862) (not b!1174118) (not b!1173819) (not d!336226) (not d!336312) (not b!1174145) (not d!336320) (not b!1173909) (not b!1173703) (not d!336234) (not b!1174030) (not b!1173704) (not d!336184) (not b!1174184) (not b!1173932) (not b!1173914) (not b!1174143))
(check-sat b_and!80801 b_and!80803 (not b_next!28585) (not b_next!28587))
