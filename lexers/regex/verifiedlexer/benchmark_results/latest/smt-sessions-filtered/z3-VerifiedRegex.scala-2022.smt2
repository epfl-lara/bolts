; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103534 () Bool)

(assert start!103534)

(declare-fun b!1174347 () Bool)

(declare-fun e!753327 () Bool)

(assert (=> b!1174347 (= e!753327 true)))

(declare-fun b!1174346 () Bool)

(declare-fun e!753326 () Bool)

(assert (=> b!1174346 (= e!753326 e!753327)))

(declare-fun b!1174332 () Bool)

(assert (=> b!1174332 e!753326))

(assert (= b!1174346 b!1174347))

(assert (= b!1174332 b!1174346))

(declare-fun b!1174319 () Bool)

(declare-fun e!753313 () Bool)

(declare-fun e!753311 () Bool)

(assert (=> b!1174319 (= e!753313 e!753311)))

(declare-fun res!530649 () Bool)

(assert (=> b!1174319 (=> (not res!530649) (not e!753311))))

(declare-datatypes ((List!11636 0))(
  ( (Nil!11612) (Cons!11612 (h!17013 (_ BitVec 16)) (t!110980 List!11636)) )
))
(declare-datatypes ((TokenValue!2091 0))(
  ( (FloatLiteralValue!4182 (text!15082 List!11636)) (TokenValueExt!2090 (__x!7893 Int)) (Broken!10455 (value!65683 List!11636)) (Object!2114) (End!2091) (Def!2091) (Underscore!2091) (Match!2091) (Else!2091) (Error!2091) (Case!2091) (If!2091) (Extends!2091) (Abstract!2091) (Class!2091) (Val!2091) (DelimiterValue!4182 (del!2151 List!11636)) (KeywordValue!2097 (value!65684 List!11636)) (CommentValue!4182 (value!65685 List!11636)) (WhitespaceValue!4182 (value!65686 List!11636)) (IndentationValue!2091 (value!65687 List!11636)) (String!14042) (Int32!2091) (Broken!10456 (value!65688 List!11636)) (Boolean!2092) (Unit!17893) (OperatorValue!2094 (op!2151 List!11636)) (IdentifierValue!4182 (value!65689 List!11636)) (IdentifierValue!4183 (value!65690 List!11636)) (WhitespaceValue!4183 (value!65691 List!11636)) (True!4182) (False!4182) (Broken!10457 (value!65692 List!11636)) (Broken!10458 (value!65693 List!11636)) (True!4183) (RightBrace!2091) (RightBracket!2091) (Colon!2091) (Null!2091) (Comma!2091) (LeftBracket!2091) (False!4183) (LeftBrace!2091) (ImaginaryLiteralValue!2091 (text!15083 List!11636)) (StringLiteralValue!6273 (value!65694 List!11636)) (EOFValue!2091 (value!65695 List!11636)) (IdentValue!2091 (value!65696 List!11636)) (DelimiterValue!4183 (value!65697 List!11636)) (DedentValue!2091 (value!65698 List!11636)) (NewLineValue!2091 (value!65699 List!11636)) (IntegerValue!6273 (value!65700 (_ BitVec 32)) (text!15084 List!11636)) (IntegerValue!6274 (value!65701 Int) (text!15085 List!11636)) (Times!2091) (Or!2091) (Equal!2091) (Minus!2091) (Broken!10459 (value!65702 List!11636)) (And!2091) (Div!2091) (LessEqual!2091) (Mod!2091) (Concat!5386) (Not!2091) (Plus!2091) (SpaceValue!2091 (value!65703 List!11636)) (IntegerValue!6275 (value!65704 Int) (text!15086 List!11636)) (StringLiteralValue!6274 (text!15087 List!11636)) (FloatLiteralValue!4183 (text!15088 List!11636)) (BytesLiteralValue!2091 (value!65705 List!11636)) (CommentValue!4183 (value!65706 List!11636)) (StringLiteralValue!6275 (value!65707 List!11636)) (ErrorTokenValue!2091 (msg!2152 List!11636)) )
))
(declare-datatypes ((C!6908 0))(
  ( (C!6909 (val!3710 Int)) )
))
(declare-datatypes ((Regex!3295 0))(
  ( (ElementMatch!3295 (c!195881 C!6908)) (Concat!5387 (regOne!7102 Regex!3295) (regTwo!7102 Regex!3295)) (EmptyExpr!3295) (Star!3295 (reg!3624 Regex!3295)) (EmptyLang!3295) (Union!3295 (regOne!7103 Regex!3295) (regTwo!7103 Regex!3295)) )
))
(declare-datatypes ((String!14043 0))(
  ( (String!14044 (value!65708 String)) )
))
(declare-datatypes ((List!11637 0))(
  ( (Nil!11613) (Cons!11613 (h!17014 C!6908) (t!110981 List!11637)) )
))
(declare-datatypes ((IArray!7629 0))(
  ( (IArray!7630 (innerList!3872 List!11637)) )
))
(declare-datatypes ((Conc!3812 0))(
  ( (Node!3812 (left!10154 Conc!3812) (right!10484 Conc!3812) (csize!7854 Int) (cheight!4023 Int)) (Leaf!5835 (xs!6517 IArray!7629) (csize!7855 Int)) (Empty!3812) )
))
(declare-datatypes ((BalanceConc!7646 0))(
  ( (BalanceConc!7647 (c!195882 Conc!3812)) )
))
(declare-datatypes ((TokenValueInjection!3882 0))(
  ( (TokenValueInjection!3883 (toValue!3126 Int) (toChars!2985 Int)) )
))
(declare-datatypes ((Rule!3850 0))(
  ( (Rule!3851 (regex!2025 Regex!3295) (tag!2287 String!14043) (isSeparator!2025 Bool) (transformation!2025 TokenValueInjection!3882)) )
))
(declare-datatypes ((Token!3712 0))(
  ( (Token!3713 (value!65709 TokenValue!2091) (rule!3446 Rule!3850) (size!9163 Int) (originalCharacters!2579 List!11637)) )
))
(declare-datatypes ((List!11638 0))(
  ( (Nil!11614) (Cons!11614 (h!17015 Token!3712) (t!110982 List!11638)) )
))
(declare-datatypes ((List!11639 0))(
  ( (Nil!11615) (Cons!11615 (h!17016 Rule!3850) (t!110983 List!11639)) )
))
(declare-datatypes ((IArray!7631 0))(
  ( (IArray!7632 (innerList!3873 List!11638)) )
))
(declare-datatypes ((Conc!3813 0))(
  ( (Node!3813 (left!10155 Conc!3813) (right!10485 Conc!3813) (csize!7856 Int) (cheight!4024 Int)) (Leaf!5836 (xs!6518 IArray!7631) (csize!7857 Int)) (Empty!3813) )
))
(declare-datatypes ((BalanceConc!7648 0))(
  ( (BalanceConc!7649 (c!195883 Conc!3813)) )
))
(declare-datatypes ((PrintableTokens!736 0))(
  ( (PrintableTokens!737 (rules!9682 List!11639) (tokens!1670 BalanceConc!7648)) )
))
(declare-fun thiss!10527 () PrintableTokens!736)

(declare-fun lt!403867 () List!11638)

(declare-datatypes ((LexerInterface!1720 0))(
  ( (LexerInterfaceExt!1717 (__x!7894 Int)) (Lexer!1718) )
))
(declare-fun rulesProduceIndividualToken!755 (LexerInterface!1720 List!11639 Token!3712) Bool)

(assert (=> b!1174319 (= res!530649 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) (h!17015 lt!403867)))))

(declare-fun b!1174320 () Bool)

(declare-fun e!753304 () Bool)

(declare-fun tp!334915 () Bool)

(declare-fun inv!15336 (Conc!3813) Bool)

(assert (=> b!1174320 (= e!753304 (and (inv!15336 (c!195883 (tokens!1670 thiss!10527))) tp!334915))))

(declare-fun b!1174321 () Bool)

(declare-fun e!753310 () Bool)

(declare-fun e!753307 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!81 (LexerInterface!1720 BalanceConc!7648 Int List!11639) Bool)

(assert (=> b!1174321 (= e!753310 (= (tokensListTwoByTwoPredicateSeparable!81 Lexer!1718 (tokens!1670 thiss!10527) 0 (rules!9682 thiss!10527)) e!753307))))

(declare-fun res!530645 () Bool)

(assert (=> b!1174321 (=> res!530645 e!753307)))

(declare-fun lt!403875 () Int)

(assert (=> b!1174321 (= res!530645 (>= 0 (- lt!403875 1)))))

(declare-fun b!1174323 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!586 (LexerInterface!1720 List!11639 List!11638) Bool)

(assert (=> b!1174323 (= e!753311 (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) (t!110982 lt!403867)))))

(declare-fun b!1174324 () Bool)

(declare-fun e!753314 () Bool)

(declare-fun lt!403873 () List!11638)

(assert (=> b!1174324 (= e!753314 (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) (t!110982 lt!403873)))))

(declare-fun b!1174325 () Bool)

(declare-fun e!753317 () Bool)

(assert (=> b!1174325 (= e!753307 e!753317)))

(declare-fun res!530640 () Bool)

(assert (=> b!1174325 (=> (not res!530640) (not e!753317))))

(declare-fun lt!403882 () Token!3712)

(declare-fun lt!403886 () Token!3712)

(declare-fun separableTokensPredicate!142 (LexerInterface!1720 Token!3712 Token!3712 List!11639) Bool)

(assert (=> b!1174325 (= res!530640 (separableTokensPredicate!142 Lexer!1718 lt!403882 lt!403886 (rules!9682 thiss!10527)))))

(declare-fun e!753316 () Bool)

(assert (=> b!1174325 e!753316))

(declare-fun res!530641 () Bool)

(assert (=> b!1174325 (=> (not res!530641) (not e!753316))))

(assert (=> b!1174325 (= res!530641 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) lt!403886))))

(declare-datatypes ((Unit!17894 0))(
  ( (Unit!17895) )
))
(declare-fun lt!403870 () Unit!17894)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!301 (LexerInterface!1720 List!11639 List!11638 Token!3712) Unit!17894)

(assert (=> b!1174325 (= lt!403870 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!301 Lexer!1718 (rules!9682 thiss!10527) lt!403873 lt!403886))))

(declare-fun apply!2539 (BalanceConc!7648 Int) Token!3712)

(assert (=> b!1174325 (= lt!403886 (apply!2539 (tokens!1670 thiss!10527) 1))))

(assert (=> b!1174325 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) lt!403882)))

(declare-fun lt!403884 () Unit!17894)

(assert (=> b!1174325 (= lt!403884 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!301 Lexer!1718 (rules!9682 thiss!10527) lt!403873 lt!403882))))

(assert (=> b!1174325 (= lt!403882 (apply!2539 (tokens!1670 thiss!10527) 0))))

(declare-fun lt!403881 () List!11638)

(declare-fun tail!1698 (List!11638) List!11638)

(declare-fun drop!497 (List!11638 Int) List!11638)

(assert (=> b!1174325 (= (tail!1698 lt!403881) (drop!497 lt!403873 2))))

(declare-fun lt!403874 () Unit!17894)

(declare-fun lemmaDropTail!371 (List!11638 Int) Unit!17894)

(assert (=> b!1174325 (= lt!403874 (lemmaDropTail!371 lt!403873 1))))

(declare-fun lt!403866 () List!11638)

(assert (=> b!1174325 (= (tail!1698 lt!403866) lt!403881)))

(declare-fun lt!403869 () Unit!17894)

(assert (=> b!1174325 (= lt!403869 (lemmaDropTail!371 lt!403873 0))))

(declare-fun head!2114 (List!11638) Token!3712)

(declare-fun apply!2540 (List!11638 Int) Token!3712)

(assert (=> b!1174325 (= (head!2114 lt!403881) (apply!2540 lt!403873 1))))

(assert (=> b!1174325 (= lt!403881 (drop!497 lt!403873 1))))

(declare-fun lt!403871 () Unit!17894)

(declare-fun lemmaDropApply!383 (List!11638 Int) Unit!17894)

(assert (=> b!1174325 (= lt!403871 (lemmaDropApply!383 lt!403873 1))))

(assert (=> b!1174325 (= (head!2114 lt!403866) (apply!2540 lt!403873 0))))

(assert (=> b!1174325 (= lt!403866 (drop!497 lt!403873 0))))

(declare-fun lt!403876 () Unit!17894)

(assert (=> b!1174325 (= lt!403876 (lemmaDropApply!383 lt!403873 0))))

(declare-fun b!1174326 () Bool)

(declare-fun e!753315 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!116 (LexerInterface!1720 List!11638 List!11639) Bool)

(assert (=> b!1174326 (= e!753315 (tokensListTwoByTwoPredicateSeparableList!116 Lexer!1718 lt!403867 (rules!9682 thiss!10527)))))

(declare-fun b!1174327 () Bool)

(assert (=> b!1174327 (= e!753317 (tokensListTwoByTwoPredicateSeparable!81 Lexer!1718 (tokens!1670 thiss!10527) 1 (rules!9682 thiss!10527)))))

(declare-fun b!1174328 () Bool)

(declare-fun e!753312 () Bool)

(declare-fun e!753303 () Bool)

(assert (=> b!1174328 (= e!753312 e!753303)))

(declare-fun res!530651 () Bool)

(assert (=> b!1174328 (=> (not res!530651) (not e!753303))))

(declare-fun rulesInvariant!1594 (LexerInterface!1720 List!11639) Bool)

(assert (=> b!1174328 (= res!530651 (rulesInvariant!1594 Lexer!1718 (rules!9682 thiss!10527)))))

(declare-fun lt!403877 () Unit!17894)

(declare-fun lemmaInvariant!212 (PrintableTokens!736) Unit!17894)

(assert (=> b!1174328 (= lt!403877 (lemmaInvariant!212 thiss!10527))))

(declare-fun b!1174329 () Bool)

(declare-fun res!530636 () Bool)

(declare-fun e!753306 () Bool)

(assert (=> b!1174329 (=> res!530636 e!753306)))

(declare-fun lt!403865 () BalanceConc!7648)

(declare-fun lambda!48361 () Int)

(declare-fun forall!3081 (BalanceConc!7648 Int) Bool)

(assert (=> b!1174329 (= res!530636 (not (forall!3081 lt!403865 lambda!48361)))))

(declare-fun b!1174330 () Bool)

(declare-fun e!753318 () Bool)

(assert (=> b!1174330 (= e!753318 e!753312)))

(declare-fun res!530644 () Bool)

(assert (=> b!1174330 (=> (not res!530644) (not e!753312))))

(declare-fun to!267 () Int)

(assert (=> b!1174330 (= res!530644 (<= to!267 lt!403875))))

(declare-fun size!9164 (BalanceConc!7648) Int)

(assert (=> b!1174330 (= lt!403875 (size!9164 (tokens!1670 thiss!10527)))))

(declare-fun b!1174331 () Bool)

(declare-fun e!753320 () Bool)

(declare-fun e!753305 () Bool)

(assert (=> b!1174331 (= e!753320 e!753305)))

(declare-fun res!530652 () Bool)

(assert (=> b!1174331 (=> (not res!530652) (not e!753305))))

(declare-fun lt!403879 () List!11638)

(assert (=> b!1174331 (= res!530652 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) (h!17015 lt!403879)))))

(declare-fun res!530648 () Bool)

(assert (=> start!103534 (=> (not res!530648) (not e!753318))))

(declare-fun from!787 () Int)

(assert (=> start!103534 (= res!530648 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!103534 e!753318))

(assert (=> start!103534 true))

(declare-fun e!753321 () Bool)

(declare-fun inv!15337 (PrintableTokens!736) Bool)

(assert (=> start!103534 (and (inv!15337 thiss!10527) e!753321)))

(declare-fun b!1174322 () Bool)

(declare-fun size!9165 (BalanceConc!7646) Int)

(declare-fun charsOf!1080 (Token!3712) BalanceConc!7646)

(assert (=> b!1174322 (= e!753316 (> (size!9165 (charsOf!1080 lt!403886)) 0))))

(declare-fun e!753319 () Bool)

(assert (=> b!1174332 (= e!753303 (not e!753319))))

(declare-fun res!530638 () Bool)

(assert (=> b!1174332 (=> res!530638 e!753319)))

(assert (=> b!1174332 (= res!530638 (not (forall!3081 (tokens!1670 thiss!10527) lambda!48361)))))

(declare-fun e!753309 () Bool)

(assert (=> b!1174332 (= (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) lt!403873) e!753309)))

(declare-fun res!530642 () Bool)

(assert (=> b!1174332 (=> res!530642 e!753309)))

(get-info :version)

(assert (=> b!1174332 (= res!530642 (not ((_ is Cons!11614) lt!403873)))))

(declare-fun list!4290 (BalanceConc!7648) List!11638)

(assert (=> b!1174332 (= lt!403873 (list!4290 (tokens!1670 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!758 (LexerInterface!1720 List!11639 BalanceConc!7648) Bool)

(assert (=> b!1174332 (= (rulesProduceEachTokenIndividually!758 Lexer!1718 (rules!9682 thiss!10527) (tokens!1670 thiss!10527)) (forall!3081 (tokens!1670 thiss!10527) lambda!48361))))

(declare-fun b!1174333 () Bool)

(declare-fun res!530646 () Bool)

(declare-fun e!753308 () Bool)

(assert (=> b!1174333 (=> (not res!530646) (not e!753308))))

(assert (=> b!1174333 (= res!530646 (= (rulesProduceEachTokenIndividually!758 Lexer!1718 (rules!9682 thiss!10527) lt!403865) (forall!3081 lt!403865 lambda!48361)))))

(declare-fun b!1174334 () Bool)

(assert (=> b!1174334 (= e!753319 e!753306)))

(declare-fun res!530637 () Bool)

(assert (=> b!1174334 (=> res!530637 e!753306)))

(declare-fun forall!3082 (List!11638 Int) Bool)

(assert (=> b!1174334 (= res!530637 (not (forall!3082 lt!403879 lambda!48361)))))

(assert (=> b!1174334 e!753308))

(declare-fun res!530650 () Bool)

(assert (=> b!1174334 (=> (not res!530650) (not e!753308))))

(assert (=> b!1174334 (= res!530650 (forall!3082 lt!403879 lambda!48361))))

(declare-fun lt!403883 () Unit!17894)

(declare-fun lemmaForallSubseq!163 (List!11638 List!11638 Int) Unit!17894)

(assert (=> b!1174334 (= lt!403883 (lemmaForallSubseq!163 lt!403879 lt!403873 lambda!48361))))

(assert (=> b!1174334 (= lt!403879 (list!4290 lt!403865))))

(declare-fun slice!362 (BalanceConc!7648 Int Int) BalanceConc!7648)

(assert (=> b!1174334 (= lt!403865 (slice!362 (tokens!1670 thiss!10527) from!787 to!267))))

(declare-fun subseq!275 (List!11638 List!11638) Bool)

(declare-fun slice!363 (List!11638 Int Int) List!11638)

(assert (=> b!1174334 (subseq!275 (slice!363 lt!403873 from!787 to!267) lt!403873)))

(declare-fun lt!403880 () Unit!17894)

(declare-fun lemmaSliceSubseq!116 (List!11638 Int Int) Unit!17894)

(assert (=> b!1174334 (= lt!403880 (lemmaSliceSubseq!116 lt!403873 from!787 to!267))))

(declare-fun b!1174335 () Bool)

(assert (=> b!1174335 (= e!753305 (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) (t!110982 lt!403879)))))

(declare-fun b!1174336 () Bool)

(assert (=> b!1174336 (= e!753308 (= (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) lt!403879) e!753320))))

(declare-fun res!530643 () Bool)

(assert (=> b!1174336 (=> res!530643 e!753320)))

(assert (=> b!1174336 (= res!530643 (not ((_ is Cons!11614) lt!403879)))))

(declare-fun b!1174337 () Bool)

(assert (=> b!1174337 (= e!753309 e!753314)))

(declare-fun res!530647 () Bool)

(assert (=> b!1174337 (=> (not res!530647) (not e!753314))))

(assert (=> b!1174337 (= res!530647 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) (h!17015 lt!403873)))))

(declare-fun b!1174338 () Bool)

(declare-fun isEmpty!7048 (List!11639) Bool)

(assert (=> b!1174338 (= e!753306 (not (isEmpty!7048 (rules!9682 thiss!10527))))))

(assert (=> b!1174338 (forall!3082 lt!403867 lambda!48361)))

(declare-fun lt!403885 () Unit!17894)

(assert (=> b!1174338 (= lt!403885 (lemmaForallSubseq!163 lt!403867 lt!403873 lambda!48361))))

(assert (=> b!1174338 e!753315))

(declare-fun res!530635 () Bool)

(assert (=> b!1174338 (=> (not res!530635) (not e!753315))))

(assert (=> b!1174338 (= res!530635 (forall!3082 lt!403867 lambda!48361))))

(declare-fun lt!403868 () Unit!17894)

(assert (=> b!1174338 (= lt!403868 (lemmaForallSubseq!163 lt!403867 lt!403873 lambda!48361))))

(assert (=> b!1174338 (subseq!275 lt!403867 lt!403873)))

(declare-fun lt!403872 () Unit!17894)

(declare-fun lemmaDropSubseq!50 (List!11638 Int) Unit!17894)

(assert (=> b!1174338 (= lt!403872 (lemmaDropSubseq!50 lt!403873 from!787))))

(assert (=> b!1174338 (= (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) lt!403867) e!753313)))

(declare-fun res!530639 () Bool)

(assert (=> b!1174338 (=> res!530639 e!753313)))

(assert (=> b!1174338 (= res!530639 (not ((_ is Cons!11614) lt!403867)))))

(assert (=> b!1174338 (= lt!403867 (drop!497 lt!403873 from!787))))

(declare-fun lt!403878 () Unit!17894)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!50 (LexerInterface!1720 List!11638 Int List!11639) Unit!17894)

(assert (=> b!1174338 (= lt!403878 (tokensListTwoByTwoPredicateSeparableTokensDropList!50 Lexer!1718 lt!403873 from!787 (rules!9682 thiss!10527)))))

(assert (=> b!1174338 e!753310))

(declare-fun res!530653 () Bool)

(assert (=> b!1174338 (=> (not res!530653) (not e!753310))))

(declare-fun separableTokens!156 (LexerInterface!1720 BalanceConc!7648 List!11639) Bool)

(assert (=> b!1174338 (= res!530653 (= (separableTokens!156 Lexer!1718 lt!403865 (rules!9682 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!81 Lexer!1718 lt!403865 0 (rules!9682 thiss!10527))))))

(declare-fun b!1174339 () Bool)

(declare-fun tp!334916 () Bool)

(declare-fun inv!15338 (BalanceConc!7648) Bool)

(assert (=> b!1174339 (= e!753321 (and tp!334916 (inv!15338 (tokens!1670 thiss!10527)) e!753304))))

(assert (= (and start!103534 res!530648) b!1174330))

(assert (= (and b!1174330 res!530644) b!1174328))

(assert (= (and b!1174328 res!530651) b!1174332))

(assert (= (and b!1174332 (not res!530642)) b!1174337))

(assert (= (and b!1174337 res!530647) b!1174324))

(assert (= (and b!1174332 (not res!530638)) b!1174334))

(assert (= (and b!1174334 res!530650) b!1174333))

(assert (= (and b!1174333 res!530646) b!1174336))

(assert (= (and b!1174336 (not res!530643)) b!1174331))

(assert (= (and b!1174331 res!530652) b!1174335))

(assert (= (and b!1174334 (not res!530637)) b!1174329))

(assert (= (and b!1174329 (not res!530636)) b!1174338))

(assert (= (and b!1174338 res!530653) b!1174321))

(assert (= (and b!1174321 (not res!530645)) b!1174325))

(assert (= (and b!1174325 res!530641) b!1174322))

(assert (= (and b!1174325 res!530640) b!1174327))

(assert (= (and b!1174338 (not res!530639)) b!1174319))

(assert (= (and b!1174319 res!530649) b!1174323))

(assert (= (and b!1174338 res!530635) b!1174326))

(assert (= b!1174339 b!1174320))

(assert (= start!103534 b!1174339))

(declare-fun m!1350069 () Bool)

(assert (=> b!1174339 m!1350069))

(declare-fun m!1350071 () Bool)

(assert (=> b!1174333 m!1350071))

(declare-fun m!1350073 () Bool)

(assert (=> b!1174333 m!1350073))

(declare-fun m!1350075 () Bool)

(assert (=> b!1174321 m!1350075))

(declare-fun m!1350077 () Bool)

(assert (=> b!1174322 m!1350077))

(assert (=> b!1174322 m!1350077))

(declare-fun m!1350079 () Bool)

(assert (=> b!1174322 m!1350079))

(declare-fun m!1350081 () Bool)

(assert (=> b!1174320 m!1350081))

(declare-fun m!1350083 () Bool)

(assert (=> b!1174319 m!1350083))

(declare-fun m!1350085 () Bool)

(assert (=> b!1174325 m!1350085))

(declare-fun m!1350087 () Bool)

(assert (=> b!1174325 m!1350087))

(declare-fun m!1350089 () Bool)

(assert (=> b!1174325 m!1350089))

(declare-fun m!1350091 () Bool)

(assert (=> b!1174325 m!1350091))

(declare-fun m!1350093 () Bool)

(assert (=> b!1174325 m!1350093))

(declare-fun m!1350095 () Bool)

(assert (=> b!1174325 m!1350095))

(declare-fun m!1350097 () Bool)

(assert (=> b!1174325 m!1350097))

(declare-fun m!1350099 () Bool)

(assert (=> b!1174325 m!1350099))

(declare-fun m!1350101 () Bool)

(assert (=> b!1174325 m!1350101))

(declare-fun m!1350103 () Bool)

(assert (=> b!1174325 m!1350103))

(declare-fun m!1350105 () Bool)

(assert (=> b!1174325 m!1350105))

(declare-fun m!1350107 () Bool)

(assert (=> b!1174325 m!1350107))

(declare-fun m!1350109 () Bool)

(assert (=> b!1174325 m!1350109))

(declare-fun m!1350111 () Bool)

(assert (=> b!1174325 m!1350111))

(declare-fun m!1350113 () Bool)

(assert (=> b!1174325 m!1350113))

(declare-fun m!1350115 () Bool)

(assert (=> b!1174325 m!1350115))

(declare-fun m!1350117 () Bool)

(assert (=> b!1174325 m!1350117))

(declare-fun m!1350119 () Bool)

(assert (=> b!1174325 m!1350119))

(declare-fun m!1350121 () Bool)

(assert (=> b!1174325 m!1350121))

(declare-fun m!1350123 () Bool)

(assert (=> b!1174325 m!1350123))

(declare-fun m!1350125 () Bool)

(assert (=> start!103534 m!1350125))

(declare-fun m!1350127 () Bool)

(assert (=> b!1174330 m!1350127))

(declare-fun m!1350129 () Bool)

(assert (=> b!1174326 m!1350129))

(declare-fun m!1350131 () Bool)

(assert (=> b!1174335 m!1350131))

(declare-fun m!1350133 () Bool)

(assert (=> b!1174328 m!1350133))

(declare-fun m!1350135 () Bool)

(assert (=> b!1174328 m!1350135))

(declare-fun m!1350137 () Bool)

(assert (=> b!1174323 m!1350137))

(declare-fun m!1350139 () Bool)

(assert (=> b!1174336 m!1350139))

(declare-fun m!1350141 () Bool)

(assert (=> b!1174334 m!1350141))

(declare-fun m!1350143 () Bool)

(assert (=> b!1174334 m!1350143))

(assert (=> b!1174334 m!1350141))

(declare-fun m!1350145 () Bool)

(assert (=> b!1174334 m!1350145))

(declare-fun m!1350147 () Bool)

(assert (=> b!1174334 m!1350147))

(declare-fun m!1350149 () Bool)

(assert (=> b!1174334 m!1350149))

(declare-fun m!1350151 () Bool)

(assert (=> b!1174334 m!1350151))

(assert (=> b!1174334 m!1350145))

(declare-fun m!1350153 () Bool)

(assert (=> b!1174334 m!1350153))

(declare-fun m!1350155 () Bool)

(assert (=> b!1174327 m!1350155))

(declare-fun m!1350157 () Bool)

(assert (=> b!1174324 m!1350157))

(declare-fun m!1350159 () Bool)

(assert (=> b!1174331 m!1350159))

(assert (=> b!1174329 m!1350073))

(declare-fun m!1350161 () Bool)

(assert (=> b!1174332 m!1350161))

(declare-fun m!1350163 () Bool)

(assert (=> b!1174332 m!1350163))

(declare-fun m!1350165 () Bool)

(assert (=> b!1174332 m!1350165))

(assert (=> b!1174332 m!1350165))

(declare-fun m!1350167 () Bool)

(assert (=> b!1174332 m!1350167))

(declare-fun m!1350169 () Bool)

(assert (=> b!1174337 m!1350169))

(declare-fun m!1350171 () Bool)

(assert (=> b!1174338 m!1350171))

(declare-fun m!1350173 () Bool)

(assert (=> b!1174338 m!1350173))

(declare-fun m!1350175 () Bool)

(assert (=> b!1174338 m!1350175))

(assert (=> b!1174338 m!1350171))

(declare-fun m!1350177 () Bool)

(assert (=> b!1174338 m!1350177))

(declare-fun m!1350179 () Bool)

(assert (=> b!1174338 m!1350179))

(declare-fun m!1350181 () Bool)

(assert (=> b!1174338 m!1350181))

(declare-fun m!1350183 () Bool)

(assert (=> b!1174338 m!1350183))

(declare-fun m!1350185 () Bool)

(assert (=> b!1174338 m!1350185))

(declare-fun m!1350187 () Bool)

(assert (=> b!1174338 m!1350187))

(assert (=> b!1174338 m!1350185))

(declare-fun m!1350189 () Bool)

(assert (=> b!1174338 m!1350189))

(check-sat (not b!1174324) (not b!1174323) (not start!103534) (not b!1174332) (not b!1174334) (not b!1174346) (not b!1174321) (not b!1174326) (not b!1174330) (not b!1174322) (not b!1174347) (not b!1174329) (not b!1174319) (not b!1174338) (not b!1174328) (not b!1174320) (not b!1174327) (not b!1174333) (not b!1174336) (not b!1174337) (not b!1174325) (not b!1174339) (not b!1174335) (not b!1174331))
(check-sat)
(get-model)

(declare-fun bs!286255 () Bool)

(declare-fun d!336389 () Bool)

(assert (= bs!286255 (and d!336389 b!1174332)))

(declare-fun lambda!48364 () Int)

(assert (=> bs!286255 (= lambda!48364 lambda!48361)))

(declare-fun b!1174406 () Bool)

(declare-fun e!753375 () Bool)

(assert (=> b!1174406 (= e!753375 true)))

(declare-fun b!1174405 () Bool)

(declare-fun e!753374 () Bool)

(assert (=> b!1174405 (= e!753374 e!753375)))

(declare-fun b!1174404 () Bool)

(declare-fun e!753373 () Bool)

(assert (=> b!1174404 (= e!753373 e!753374)))

(assert (=> d!336389 e!753373))

(assert (= b!1174405 b!1174406))

(assert (= b!1174404 b!1174405))

(assert (= (and d!336389 ((_ is Cons!11615) (rules!9682 thiss!10527))) b!1174404))

(declare-fun order!7143 () Int)

(declare-fun order!7145 () Int)

(declare-fun dynLambda!5141 (Int Int) Int)

(declare-fun dynLambda!5142 (Int Int) Int)

(assert (=> b!1174406 (< (dynLambda!5141 order!7143 (toValue!3126 (transformation!2025 (h!17016 (rules!9682 thiss!10527))))) (dynLambda!5142 order!7145 lambda!48364))))

(declare-fun order!7147 () Int)

(declare-fun dynLambda!5143 (Int Int) Int)

(assert (=> b!1174406 (< (dynLambda!5143 order!7147 (toChars!2985 (transformation!2025 (h!17016 (rules!9682 thiss!10527))))) (dynLambda!5142 order!7145 lambda!48364))))

(assert (=> d!336389 true))

(declare-fun lt!403898 () Bool)

(assert (=> d!336389 (= lt!403898 (forall!3082 (t!110982 lt!403867) lambda!48364))))

(declare-fun e!753366 () Bool)

(assert (=> d!336389 (= lt!403898 e!753366)))

(declare-fun res!530705 () Bool)

(assert (=> d!336389 (=> res!530705 e!753366)))

(assert (=> d!336389 (= res!530705 (not ((_ is Cons!11614) (t!110982 lt!403867))))))

(assert (=> d!336389 (not (isEmpty!7048 (rules!9682 thiss!10527)))))

(assert (=> d!336389 (= (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) (t!110982 lt!403867)) lt!403898)))

(declare-fun b!1174394 () Bool)

(declare-fun e!753365 () Bool)

(assert (=> b!1174394 (= e!753366 e!753365)))

(declare-fun res!530704 () Bool)

(assert (=> b!1174394 (=> (not res!530704) (not e!753365))))

(assert (=> b!1174394 (= res!530704 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) (h!17015 (t!110982 lt!403867))))))

(declare-fun b!1174395 () Bool)

(assert (=> b!1174395 (= e!753365 (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) (t!110982 (t!110982 lt!403867))))))

(assert (= (and d!336389 (not res!530705)) b!1174394))

(assert (= (and b!1174394 res!530704) b!1174395))

(declare-fun m!1350227 () Bool)

(assert (=> d!336389 m!1350227))

(assert (=> d!336389 m!1350181))

(declare-fun m!1350229 () Bool)

(assert (=> b!1174394 m!1350229))

(declare-fun m!1350231 () Bool)

(assert (=> b!1174395 m!1350231))

(assert (=> b!1174323 d!336389))

(declare-fun d!336399 () Bool)

(declare-fun res!530727 () Bool)

(declare-fun e!753395 () Bool)

(assert (=> d!336399 (=> (not res!530727) (not e!753395))))

(assert (=> d!336399 (= res!530727 (not (isEmpty!7048 (rules!9682 thiss!10527))))))

(assert (=> d!336399 (= (inv!15337 thiss!10527) e!753395)))

(declare-fun b!1174440 () Bool)

(declare-fun res!530728 () Bool)

(assert (=> b!1174440 (=> (not res!530728) (not e!753395))))

(assert (=> b!1174440 (= res!530728 (rulesInvariant!1594 Lexer!1718 (rules!9682 thiss!10527)))))

(declare-fun b!1174441 () Bool)

(declare-fun res!530729 () Bool)

(assert (=> b!1174441 (=> (not res!530729) (not e!753395))))

(assert (=> b!1174441 (= res!530729 (rulesProduceEachTokenIndividually!758 Lexer!1718 (rules!9682 thiss!10527) (tokens!1670 thiss!10527)))))

(declare-fun b!1174442 () Bool)

(assert (=> b!1174442 (= e!753395 (separableTokens!156 Lexer!1718 (tokens!1670 thiss!10527) (rules!9682 thiss!10527)))))

(assert (= (and d!336399 res!530727) b!1174440))

(assert (= (and b!1174440 res!530728) b!1174441))

(assert (= (and b!1174441 res!530729) b!1174442))

(assert (=> d!336399 m!1350181))

(assert (=> b!1174440 m!1350133))

(assert (=> b!1174441 m!1350163))

(declare-fun m!1350237 () Bool)

(assert (=> b!1174442 m!1350237))

(assert (=> start!103534 d!336399))

(declare-fun d!336405 () Bool)

(assert (=> d!336405 (subseq!275 (slice!363 lt!403873 from!787 to!267) lt!403873)))

(declare-fun lt!403904 () Unit!17894)

(declare-fun choose!7591 (List!11638 Int Int) Unit!17894)

(assert (=> d!336405 (= lt!403904 (choose!7591 lt!403873 from!787 to!267))))

(declare-fun e!753405 () Bool)

(assert (=> d!336405 e!753405))

(declare-fun res!530732 () Bool)

(assert (=> d!336405 (=> (not res!530732) (not e!753405))))

(assert (=> d!336405 (= res!530732 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!336405 (= (lemmaSliceSubseq!116 lt!403873 from!787 to!267) lt!403904)))

(declare-fun b!1174454 () Bool)

(declare-fun size!9167 (List!11638) Int)

(assert (=> b!1174454 (= e!753405 (<= to!267 (size!9167 lt!403873)))))

(assert (= (and d!336405 res!530732) b!1174454))

(assert (=> d!336405 m!1350141))

(assert (=> d!336405 m!1350141))

(assert (=> d!336405 m!1350143))

(declare-fun m!1350245 () Bool)

(assert (=> d!336405 m!1350245))

(declare-fun m!1350247 () Bool)

(assert (=> b!1174454 m!1350247))

(assert (=> b!1174334 d!336405))

(declare-fun d!336409 () Bool)

(declare-fun e!753411 () Bool)

(assert (=> d!336409 e!753411))

(declare-fun res!530739 () Bool)

(assert (=> d!336409 (=> (not res!530739) (not e!753411))))

(declare-fun isBalanced!1079 (Conc!3813) Bool)

(declare-fun slice!365 (Conc!3813 Int Int) Conc!3813)

(assert (=> d!336409 (= res!530739 (isBalanced!1079 (slice!365 (c!195883 (tokens!1670 thiss!10527)) from!787 to!267)))))

(declare-fun lt!403907 () BalanceConc!7648)

(assert (=> d!336409 (= lt!403907 (BalanceConc!7649 (slice!365 (c!195883 (tokens!1670 thiss!10527)) from!787 to!267)))))

(declare-fun e!753410 () Bool)

(assert (=> d!336409 e!753410))

(declare-fun res!530741 () Bool)

(assert (=> d!336409 (=> (not res!530741) (not e!753410))))

(assert (=> d!336409 (= res!530741 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!336409 (= (slice!362 (tokens!1670 thiss!10527) from!787 to!267) lt!403907)))

(declare-fun b!1174461 () Bool)

(declare-fun res!530740 () Bool)

(assert (=> b!1174461 (=> (not res!530740) (not e!753410))))

(assert (=> b!1174461 (= res!530740 (<= to!267 (size!9164 (tokens!1670 thiss!10527))))))

(declare-fun b!1174462 () Bool)

(assert (=> b!1174462 (= e!753410 (isBalanced!1079 (c!195883 (tokens!1670 thiss!10527))))))

(declare-fun b!1174463 () Bool)

(assert (=> b!1174463 (= e!753411 (= (list!4290 lt!403907) (slice!363 (list!4290 (tokens!1670 thiss!10527)) from!787 to!267)))))

(assert (= (and d!336409 res!530741) b!1174461))

(assert (= (and b!1174461 res!530740) b!1174462))

(assert (= (and d!336409 res!530739) b!1174463))

(declare-fun m!1350249 () Bool)

(assert (=> d!336409 m!1350249))

(assert (=> d!336409 m!1350249))

(declare-fun m!1350251 () Bool)

(assert (=> d!336409 m!1350251))

(assert (=> b!1174461 m!1350127))

(declare-fun m!1350253 () Bool)

(assert (=> b!1174462 m!1350253))

(declare-fun m!1350255 () Bool)

(assert (=> b!1174463 m!1350255))

(assert (=> b!1174463 m!1350167))

(assert (=> b!1174463 m!1350167))

(declare-fun m!1350257 () Bool)

(assert (=> b!1174463 m!1350257))

(assert (=> b!1174334 d!336409))

(declare-fun d!336411 () Bool)

(declare-fun res!530746 () Bool)

(declare-fun e!753416 () Bool)

(assert (=> d!336411 (=> res!530746 e!753416)))

(assert (=> d!336411 (= res!530746 ((_ is Nil!11614) lt!403879))))

(assert (=> d!336411 (= (forall!3082 lt!403879 lambda!48361) e!753416)))

(declare-fun b!1174468 () Bool)

(declare-fun e!753417 () Bool)

(assert (=> b!1174468 (= e!753416 e!753417)))

(declare-fun res!530747 () Bool)

(assert (=> b!1174468 (=> (not res!530747) (not e!753417))))

(declare-fun dynLambda!5144 (Int Token!3712) Bool)

(assert (=> b!1174468 (= res!530747 (dynLambda!5144 lambda!48361 (h!17015 lt!403879)))))

(declare-fun b!1174469 () Bool)

(assert (=> b!1174469 (= e!753417 (forall!3082 (t!110982 lt!403879) lambda!48361))))

(assert (= (and d!336411 (not res!530746)) b!1174468))

(assert (= (and b!1174468 res!530747) b!1174469))

(declare-fun b_lambda!35129 () Bool)

(assert (=> (not b_lambda!35129) (not b!1174468)))

(declare-fun m!1350259 () Bool)

(assert (=> b!1174468 m!1350259))

(declare-fun m!1350261 () Bool)

(assert (=> b!1174469 m!1350261))

(assert (=> b!1174334 d!336411))

(declare-fun d!336413 () Bool)

(assert (=> d!336413 (forall!3082 lt!403879 lambda!48361)))

(declare-fun lt!403910 () Unit!17894)

(declare-fun choose!7593 (List!11638 List!11638 Int) Unit!17894)

(assert (=> d!336413 (= lt!403910 (choose!7593 lt!403879 lt!403873 lambda!48361))))

(assert (=> d!336413 (forall!3082 lt!403873 lambda!48361)))

(assert (=> d!336413 (= (lemmaForallSubseq!163 lt!403879 lt!403873 lambda!48361) lt!403910)))

(declare-fun bs!286257 () Bool)

(assert (= bs!286257 d!336413))

(assert (=> bs!286257 m!1350145))

(declare-fun m!1350263 () Bool)

(assert (=> bs!286257 m!1350263))

(declare-fun m!1350265 () Bool)

(assert (=> bs!286257 m!1350265))

(assert (=> b!1174334 d!336413))

(declare-fun d!336415 () Bool)

(declare-fun list!4292 (Conc!3813) List!11638)

(assert (=> d!336415 (= (list!4290 lt!403865) (list!4292 (c!195883 lt!403865)))))

(declare-fun bs!286258 () Bool)

(assert (= bs!286258 d!336415))

(declare-fun m!1350267 () Bool)

(assert (=> bs!286258 m!1350267))

(assert (=> b!1174334 d!336415))

(declare-fun d!336417 () Bool)

(declare-fun take!85 (List!11638 Int) List!11638)

(assert (=> d!336417 (= (slice!363 lt!403873 from!787 to!267) (take!85 (drop!497 lt!403873 from!787) (- to!267 from!787)))))

(declare-fun bs!286259 () Bool)

(assert (= bs!286259 d!336417))

(assert (=> bs!286259 m!1350179))

(assert (=> bs!286259 m!1350179))

(declare-fun m!1350269 () Bool)

(assert (=> bs!286259 m!1350269))

(assert (=> b!1174334 d!336417))

(declare-fun d!336419 () Bool)

(declare-fun res!530759 () Bool)

(declare-fun e!753427 () Bool)

(assert (=> d!336419 (=> res!530759 e!753427)))

(assert (=> d!336419 (= res!530759 ((_ is Nil!11614) (slice!363 lt!403873 from!787 to!267)))))

(assert (=> d!336419 (= (subseq!275 (slice!363 lt!403873 from!787 to!267) lt!403873) e!753427)))

(declare-fun b!1174479 () Bool)

(declare-fun e!753426 () Bool)

(declare-fun e!753429 () Bool)

(assert (=> b!1174479 (= e!753426 e!753429)))

(declare-fun res!530757 () Bool)

(assert (=> b!1174479 (=> res!530757 e!753429)))

(declare-fun e!753428 () Bool)

(assert (=> b!1174479 (= res!530757 e!753428)))

(declare-fun res!530758 () Bool)

(assert (=> b!1174479 (=> (not res!530758) (not e!753428))))

(assert (=> b!1174479 (= res!530758 (= (h!17015 (slice!363 lt!403873 from!787 to!267)) (h!17015 lt!403873)))))

(declare-fun b!1174480 () Bool)

(assert (=> b!1174480 (= e!753428 (subseq!275 (t!110982 (slice!363 lt!403873 from!787 to!267)) (t!110982 lt!403873)))))

(declare-fun b!1174481 () Bool)

(assert (=> b!1174481 (= e!753429 (subseq!275 (slice!363 lt!403873 from!787 to!267) (t!110982 lt!403873)))))

(declare-fun b!1174478 () Bool)

(assert (=> b!1174478 (= e!753427 e!753426)))

(declare-fun res!530756 () Bool)

(assert (=> b!1174478 (=> (not res!530756) (not e!753426))))

(assert (=> b!1174478 (= res!530756 ((_ is Cons!11614) lt!403873))))

(assert (= (and d!336419 (not res!530759)) b!1174478))

(assert (= (and b!1174478 res!530756) b!1174479))

(assert (= (and b!1174479 res!530758) b!1174480))

(assert (= (and b!1174479 (not res!530757)) b!1174481))

(declare-fun m!1350271 () Bool)

(assert (=> b!1174480 m!1350271))

(assert (=> b!1174481 m!1350141))

(declare-fun m!1350273 () Bool)

(assert (=> b!1174481 m!1350273))

(assert (=> b!1174334 d!336419))

(declare-fun bs!286260 () Bool)

(declare-fun d!336421 () Bool)

(assert (= bs!286260 (and d!336421 b!1174332)))

(declare-fun lambda!48368 () Int)

(assert (=> bs!286260 (= lambda!48368 lambda!48361)))

(declare-fun bs!286261 () Bool)

(assert (= bs!286261 (and d!336421 d!336389)))

(assert (=> bs!286261 (= lambda!48368 lambda!48364)))

(declare-fun b!1174486 () Bool)

(declare-fun e!753434 () Bool)

(assert (=> b!1174486 (= e!753434 true)))

(declare-fun b!1174485 () Bool)

(declare-fun e!753433 () Bool)

(assert (=> b!1174485 (= e!753433 e!753434)))

(declare-fun b!1174484 () Bool)

(declare-fun e!753432 () Bool)

(assert (=> b!1174484 (= e!753432 e!753433)))

(assert (=> d!336421 e!753432))

(assert (= b!1174485 b!1174486))

(assert (= b!1174484 b!1174485))

(assert (= (and d!336421 ((_ is Cons!11615) (rules!9682 thiss!10527))) b!1174484))

(assert (=> b!1174486 (< (dynLambda!5141 order!7143 (toValue!3126 (transformation!2025 (h!17016 (rules!9682 thiss!10527))))) (dynLambda!5142 order!7145 lambda!48368))))

(assert (=> b!1174486 (< (dynLambda!5143 order!7147 (toChars!2985 (transformation!2025 (h!17016 (rules!9682 thiss!10527))))) (dynLambda!5142 order!7145 lambda!48368))))

(assert (=> d!336421 true))

(declare-fun lt!403911 () Bool)

(assert (=> d!336421 (= lt!403911 (forall!3082 (t!110982 lt!403879) lambda!48368))))

(declare-fun e!753431 () Bool)

(assert (=> d!336421 (= lt!403911 e!753431)))

(declare-fun res!530761 () Bool)

(assert (=> d!336421 (=> res!530761 e!753431)))

(assert (=> d!336421 (= res!530761 (not ((_ is Cons!11614) (t!110982 lt!403879))))))

(assert (=> d!336421 (not (isEmpty!7048 (rules!9682 thiss!10527)))))

(assert (=> d!336421 (= (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) (t!110982 lt!403879)) lt!403911)))

(declare-fun b!1174482 () Bool)

(declare-fun e!753430 () Bool)

(assert (=> b!1174482 (= e!753431 e!753430)))

(declare-fun res!530760 () Bool)

(assert (=> b!1174482 (=> (not res!530760) (not e!753430))))

(assert (=> b!1174482 (= res!530760 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) (h!17015 (t!110982 lt!403879))))))

(declare-fun b!1174483 () Bool)

(assert (=> b!1174483 (= e!753430 (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) (t!110982 (t!110982 lt!403879))))))

(assert (= (and d!336421 (not res!530761)) b!1174482))

(assert (= (and b!1174482 res!530760) b!1174483))

(declare-fun m!1350275 () Bool)

(assert (=> d!336421 m!1350275))

(assert (=> d!336421 m!1350181))

(declare-fun m!1350277 () Bool)

(assert (=> b!1174482 m!1350277))

(declare-fun m!1350279 () Bool)

(assert (=> b!1174483 m!1350279))

(assert (=> b!1174335 d!336421))

(declare-fun bs!286262 () Bool)

(declare-fun d!336423 () Bool)

(assert (= bs!286262 (and d!336423 b!1174332)))

(declare-fun lambda!48369 () Int)

(assert (=> bs!286262 (= lambda!48369 lambda!48361)))

(declare-fun bs!286263 () Bool)

(assert (= bs!286263 (and d!336423 d!336389)))

(assert (=> bs!286263 (= lambda!48369 lambda!48364)))

(declare-fun bs!286264 () Bool)

(assert (= bs!286264 (and d!336423 d!336421)))

(assert (=> bs!286264 (= lambda!48369 lambda!48368)))

(declare-fun b!1174491 () Bool)

(declare-fun e!753439 () Bool)

(assert (=> b!1174491 (= e!753439 true)))

(declare-fun b!1174490 () Bool)

(declare-fun e!753438 () Bool)

(assert (=> b!1174490 (= e!753438 e!753439)))

(declare-fun b!1174489 () Bool)

(declare-fun e!753437 () Bool)

(assert (=> b!1174489 (= e!753437 e!753438)))

(assert (=> d!336423 e!753437))

(assert (= b!1174490 b!1174491))

(assert (= b!1174489 b!1174490))

(assert (= (and d!336423 ((_ is Cons!11615) (rules!9682 thiss!10527))) b!1174489))

(assert (=> b!1174491 (< (dynLambda!5141 order!7143 (toValue!3126 (transformation!2025 (h!17016 (rules!9682 thiss!10527))))) (dynLambda!5142 order!7145 lambda!48369))))

(assert (=> b!1174491 (< (dynLambda!5143 order!7147 (toChars!2985 (transformation!2025 (h!17016 (rules!9682 thiss!10527))))) (dynLambda!5142 order!7145 lambda!48369))))

(assert (=> d!336423 true))

(declare-fun lt!403912 () Bool)

(assert (=> d!336423 (= lt!403912 (forall!3082 (t!110982 lt!403873) lambda!48369))))

(declare-fun e!753436 () Bool)

(assert (=> d!336423 (= lt!403912 e!753436)))

(declare-fun res!530763 () Bool)

(assert (=> d!336423 (=> res!530763 e!753436)))

(assert (=> d!336423 (= res!530763 (not ((_ is Cons!11614) (t!110982 lt!403873))))))

(assert (=> d!336423 (not (isEmpty!7048 (rules!9682 thiss!10527)))))

(assert (=> d!336423 (= (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) (t!110982 lt!403873)) lt!403912)))

(declare-fun b!1174487 () Bool)

(declare-fun e!753435 () Bool)

(assert (=> b!1174487 (= e!753436 e!753435)))

(declare-fun res!530762 () Bool)

(assert (=> b!1174487 (=> (not res!530762) (not e!753435))))

(assert (=> b!1174487 (= res!530762 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) (h!17015 (t!110982 lt!403873))))))

(declare-fun b!1174488 () Bool)

(assert (=> b!1174488 (= e!753435 (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) (t!110982 (t!110982 lt!403873))))))

(assert (= (and d!336423 (not res!530763)) b!1174487))

(assert (= (and b!1174487 res!530762) b!1174488))

(declare-fun m!1350281 () Bool)

(assert (=> d!336423 m!1350281))

(assert (=> d!336423 m!1350181))

(declare-fun m!1350283 () Bool)

(assert (=> b!1174487 m!1350283))

(declare-fun m!1350285 () Bool)

(assert (=> b!1174488 m!1350285))

(assert (=> b!1174324 d!336423))

(declare-fun d!336425 () Bool)

(assert (=> d!336425 (= (tail!1698 (drop!497 lt!403873 0)) (drop!497 lt!403873 (+ 0 1)))))

(declare-fun lt!403915 () Unit!17894)

(declare-fun choose!7594 (List!11638 Int) Unit!17894)

(assert (=> d!336425 (= lt!403915 (choose!7594 lt!403873 0))))

(declare-fun e!753442 () Bool)

(assert (=> d!336425 e!753442))

(declare-fun res!530766 () Bool)

(assert (=> d!336425 (=> (not res!530766) (not e!753442))))

(assert (=> d!336425 (= res!530766 (>= 0 0))))

(assert (=> d!336425 (= (lemmaDropTail!371 lt!403873 0) lt!403915)))

(declare-fun b!1174494 () Bool)

(assert (=> b!1174494 (= e!753442 (< 0 (size!9167 lt!403873)))))

(assert (= (and d!336425 res!530766) b!1174494))

(assert (=> d!336425 m!1350115))

(assert (=> d!336425 m!1350115))

(declare-fun m!1350287 () Bool)

(assert (=> d!336425 m!1350287))

(declare-fun m!1350289 () Bool)

(assert (=> d!336425 m!1350289))

(declare-fun m!1350291 () Bool)

(assert (=> d!336425 m!1350291))

(assert (=> b!1174494 m!1350247))

(assert (=> b!1174325 d!336425))

(declare-fun d!336427 () Bool)

(declare-fun lt!403918 () Token!3712)

(declare-fun contains!2007 (List!11638 Token!3712) Bool)

(assert (=> d!336427 (contains!2007 lt!403873 lt!403918)))

(declare-fun e!753447 () Token!3712)

(assert (=> d!336427 (= lt!403918 e!753447)))

(declare-fun c!195891 () Bool)

(assert (=> d!336427 (= c!195891 (= 1 0))))

(declare-fun e!753448 () Bool)

(assert (=> d!336427 e!753448))

(declare-fun res!530769 () Bool)

(assert (=> d!336427 (=> (not res!530769) (not e!753448))))

(assert (=> d!336427 (= res!530769 (<= 0 1))))

(assert (=> d!336427 (= (apply!2540 lt!403873 1) lt!403918)))

(declare-fun b!1174501 () Bool)

(assert (=> b!1174501 (= e!753448 (< 1 (size!9167 lt!403873)))))

(declare-fun b!1174502 () Bool)

(assert (=> b!1174502 (= e!753447 (head!2114 lt!403873))))

(declare-fun b!1174503 () Bool)

(assert (=> b!1174503 (= e!753447 (apply!2540 (tail!1698 lt!403873) (- 1 1)))))

(assert (= (and d!336427 res!530769) b!1174501))

(assert (= (and d!336427 c!195891) b!1174502))

(assert (= (and d!336427 (not c!195891)) b!1174503))

(declare-fun m!1350293 () Bool)

(assert (=> d!336427 m!1350293))

(assert (=> b!1174501 m!1350247))

(declare-fun m!1350295 () Bool)

(assert (=> b!1174502 m!1350295))

(declare-fun m!1350297 () Bool)

(assert (=> b!1174503 m!1350297))

(assert (=> b!1174503 m!1350297))

(declare-fun m!1350299 () Bool)

(assert (=> b!1174503 m!1350299))

(assert (=> b!1174325 d!336427))

(declare-fun d!336429 () Bool)

(assert (=> d!336429 (= (head!2114 (drop!497 lt!403873 1)) (apply!2540 lt!403873 1))))

(declare-fun lt!403921 () Unit!17894)

(declare-fun choose!7595 (List!11638 Int) Unit!17894)

(assert (=> d!336429 (= lt!403921 (choose!7595 lt!403873 1))))

(declare-fun e!753451 () Bool)

(assert (=> d!336429 e!753451))

(declare-fun res!530772 () Bool)

(assert (=> d!336429 (=> (not res!530772) (not e!753451))))

(assert (=> d!336429 (= res!530772 (>= 1 0))))

(assert (=> d!336429 (= (lemmaDropApply!383 lt!403873 1) lt!403921)))

(declare-fun b!1174506 () Bool)

(assert (=> b!1174506 (= e!753451 (< 1 (size!9167 lt!403873)))))

(assert (= (and d!336429 res!530772) b!1174506))

(assert (=> d!336429 m!1350109))

(assert (=> d!336429 m!1350109))

(declare-fun m!1350301 () Bool)

(assert (=> d!336429 m!1350301))

(assert (=> d!336429 m!1350107))

(declare-fun m!1350303 () Bool)

(assert (=> d!336429 m!1350303))

(assert (=> b!1174506 m!1350247))

(assert (=> b!1174325 d!336429))

(declare-fun d!336431 () Bool)

(assert (=> d!336431 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) lt!403886)))

(declare-fun lt!403945 () Unit!17894)

(declare-fun choose!7596 (LexerInterface!1720 List!11639 List!11638 Token!3712) Unit!17894)

(assert (=> d!336431 (= lt!403945 (choose!7596 Lexer!1718 (rules!9682 thiss!10527) lt!403873 lt!403886))))

(assert (=> d!336431 (not (isEmpty!7048 (rules!9682 thiss!10527)))))

(assert (=> d!336431 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!301 Lexer!1718 (rules!9682 thiss!10527) lt!403873 lt!403886) lt!403945)))

(declare-fun bs!286265 () Bool)

(assert (= bs!286265 d!336431))

(assert (=> bs!286265 m!1350121))

(declare-fun m!1350319 () Bool)

(assert (=> bs!286265 m!1350319))

(assert (=> bs!286265 m!1350181))

(assert (=> b!1174325 d!336431))

(declare-fun d!336435 () Bool)

(declare-fun lt!403948 () Token!3712)

(assert (=> d!336435 (= lt!403948 (apply!2540 (list!4290 (tokens!1670 thiss!10527)) 1))))

(declare-fun apply!2541 (Conc!3813 Int) Token!3712)

(assert (=> d!336435 (= lt!403948 (apply!2541 (c!195883 (tokens!1670 thiss!10527)) 1))))

(declare-fun e!753460 () Bool)

(assert (=> d!336435 e!753460))

(declare-fun res!530781 () Bool)

(assert (=> d!336435 (=> (not res!530781) (not e!753460))))

(assert (=> d!336435 (= res!530781 (<= 0 1))))

(assert (=> d!336435 (= (apply!2539 (tokens!1670 thiss!10527) 1) lt!403948)))

(declare-fun b!1174515 () Bool)

(assert (=> b!1174515 (= e!753460 (< 1 (size!9164 (tokens!1670 thiss!10527))))))

(assert (= (and d!336435 res!530781) b!1174515))

(assert (=> d!336435 m!1350167))

(assert (=> d!336435 m!1350167))

(declare-fun m!1350321 () Bool)

(assert (=> d!336435 m!1350321))

(declare-fun m!1350323 () Bool)

(assert (=> d!336435 m!1350323))

(assert (=> b!1174515 m!1350127))

(assert (=> b!1174325 d!336435))

(declare-fun d!336437 () Bool)

(assert (=> d!336437 (= (head!2114 lt!403866) (h!17015 lt!403866))))

(assert (=> b!1174325 d!336437))

(declare-fun d!336439 () Bool)

(declare-fun lt!403949 () Token!3712)

(assert (=> d!336439 (= lt!403949 (apply!2540 (list!4290 (tokens!1670 thiss!10527)) 0))))

(assert (=> d!336439 (= lt!403949 (apply!2541 (c!195883 (tokens!1670 thiss!10527)) 0))))

(declare-fun e!753461 () Bool)

(assert (=> d!336439 e!753461))

(declare-fun res!530782 () Bool)

(assert (=> d!336439 (=> (not res!530782) (not e!753461))))

(assert (=> d!336439 (= res!530782 (<= 0 0))))

(assert (=> d!336439 (= (apply!2539 (tokens!1670 thiss!10527) 0) lt!403949)))

(declare-fun b!1174516 () Bool)

(assert (=> b!1174516 (= e!753461 (< 0 (size!9164 (tokens!1670 thiss!10527))))))

(assert (= (and d!336439 res!530782) b!1174516))

(assert (=> d!336439 m!1350167))

(assert (=> d!336439 m!1350167))

(declare-fun m!1350325 () Bool)

(assert (=> d!336439 m!1350325))

(declare-fun m!1350327 () Bool)

(assert (=> d!336439 m!1350327))

(assert (=> b!1174516 m!1350127))

(assert (=> b!1174325 d!336439))

(declare-fun d!336441 () Bool)

(declare-fun prefixMatchZipperSequence!104 (Regex!3295 BalanceConc!7646) Bool)

(declare-fun rulesRegex!75 (LexerInterface!1720 List!11639) Regex!3295)

(declare-fun ++!3005 (BalanceConc!7646 BalanceConc!7646) BalanceConc!7646)

(declare-fun singletonSeq!691 (C!6908) BalanceConc!7646)

(declare-fun apply!2542 (BalanceConc!7646 Int) C!6908)

(assert (=> d!336441 (= (separableTokensPredicate!142 Lexer!1718 lt!403882 lt!403886 (rules!9682 thiss!10527)) (not (prefixMatchZipperSequence!104 (rulesRegex!75 Lexer!1718 (rules!9682 thiss!10527)) (++!3005 (charsOf!1080 lt!403882) (singletonSeq!691 (apply!2542 (charsOf!1080 lt!403886) 0))))))))

(declare-fun bs!286266 () Bool)

(assert (= bs!286266 d!336441))

(assert (=> bs!286266 m!1350077))

(assert (=> bs!286266 m!1350077))

(declare-fun m!1350329 () Bool)

(assert (=> bs!286266 m!1350329))

(declare-fun m!1350331 () Bool)

(assert (=> bs!286266 m!1350331))

(declare-fun m!1350333 () Bool)

(assert (=> bs!286266 m!1350333))

(declare-fun m!1350335 () Bool)

(assert (=> bs!286266 m!1350335))

(declare-fun m!1350337 () Bool)

(assert (=> bs!286266 m!1350337))

(assert (=> bs!286266 m!1350337))

(assert (=> bs!286266 m!1350335))

(declare-fun m!1350339 () Bool)

(assert (=> bs!286266 m!1350339))

(assert (=> bs!286266 m!1350331))

(assert (=> bs!286266 m!1350329))

(assert (=> bs!286266 m!1350333))

(assert (=> b!1174325 d!336441))

(declare-fun d!336443 () Bool)

(declare-fun e!753473 () Bool)

(assert (=> d!336443 e!753473))

(declare-fun res!530785 () Bool)

(assert (=> d!336443 (=> (not res!530785) (not e!753473))))

(declare-fun lt!403952 () List!11638)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1618 (List!11638) (InoxSet Token!3712))

(assert (=> d!336443 (= res!530785 (= ((_ map implies) (content!1618 lt!403952) (content!1618 lt!403873)) ((as const (InoxSet Token!3712)) true)))))

(declare-fun e!753472 () List!11638)

(assert (=> d!336443 (= lt!403952 e!753472)))

(declare-fun c!195902 () Bool)

(assert (=> d!336443 (= c!195902 ((_ is Nil!11614) lt!403873))))

(assert (=> d!336443 (= (drop!497 lt!403873 1) lt!403952)))

(declare-fun b!1174535 () Bool)

(declare-fun e!753476 () Int)

(assert (=> b!1174535 (= e!753473 (= (size!9167 lt!403952) e!753476))))

(declare-fun c!195903 () Bool)

(assert (=> b!1174535 (= c!195903 (<= 1 0))))

(declare-fun b!1174536 () Bool)

(declare-fun e!753475 () List!11638)

(assert (=> b!1174536 (= e!753475 lt!403873)))

(declare-fun b!1174537 () Bool)

(declare-fun e!753474 () Int)

(declare-fun call!82407 () Int)

(assert (=> b!1174537 (= e!753474 (- call!82407 1))))

(declare-fun b!1174538 () Bool)

(assert (=> b!1174538 (= e!753476 call!82407)))

(declare-fun bm!82402 () Bool)

(assert (=> bm!82402 (= call!82407 (size!9167 lt!403873))))

(declare-fun b!1174539 () Bool)

(assert (=> b!1174539 (= e!753475 (drop!497 (t!110982 lt!403873) (- 1 1)))))

(declare-fun b!1174540 () Bool)

(assert (=> b!1174540 (= e!753472 e!753475)))

(declare-fun c!195900 () Bool)

(assert (=> b!1174540 (= c!195900 (<= 1 0))))

(declare-fun b!1174541 () Bool)

(assert (=> b!1174541 (= e!753472 Nil!11614)))

(declare-fun b!1174542 () Bool)

(assert (=> b!1174542 (= e!753476 e!753474)))

(declare-fun c!195901 () Bool)

(assert (=> b!1174542 (= c!195901 (>= 1 call!82407))))

(declare-fun b!1174543 () Bool)

(assert (=> b!1174543 (= e!753474 0)))

(assert (= (and d!336443 c!195902) b!1174541))

(assert (= (and d!336443 (not c!195902)) b!1174540))

(assert (= (and b!1174540 c!195900) b!1174536))

(assert (= (and b!1174540 (not c!195900)) b!1174539))

(assert (= (and d!336443 res!530785) b!1174535))

(assert (= (and b!1174535 c!195903) b!1174538))

(assert (= (and b!1174535 (not c!195903)) b!1174542))

(assert (= (and b!1174542 c!195901) b!1174543))

(assert (= (and b!1174542 (not c!195901)) b!1174537))

(assert (= (or b!1174538 b!1174542 b!1174537) bm!82402))

(declare-fun m!1350341 () Bool)

(assert (=> d!336443 m!1350341))

(declare-fun m!1350343 () Bool)

(assert (=> d!336443 m!1350343))

(declare-fun m!1350345 () Bool)

(assert (=> b!1174535 m!1350345))

(assert (=> bm!82402 m!1350247))

(declare-fun m!1350347 () Bool)

(assert (=> b!1174539 m!1350347))

(assert (=> b!1174325 d!336443))

(declare-fun d!336445 () Bool)

(declare-fun e!753478 () Bool)

(assert (=> d!336445 e!753478))

(declare-fun res!530786 () Bool)

(assert (=> d!336445 (=> (not res!530786) (not e!753478))))

(declare-fun lt!403953 () List!11638)

(assert (=> d!336445 (= res!530786 (= ((_ map implies) (content!1618 lt!403953) (content!1618 lt!403873)) ((as const (InoxSet Token!3712)) true)))))

(declare-fun e!753477 () List!11638)

(assert (=> d!336445 (= lt!403953 e!753477)))

(declare-fun c!195906 () Bool)

(assert (=> d!336445 (= c!195906 ((_ is Nil!11614) lt!403873))))

(assert (=> d!336445 (= (drop!497 lt!403873 2) lt!403953)))

(declare-fun b!1174544 () Bool)

(declare-fun e!753481 () Int)

(assert (=> b!1174544 (= e!753478 (= (size!9167 lt!403953) e!753481))))

(declare-fun c!195907 () Bool)

(assert (=> b!1174544 (= c!195907 (<= 2 0))))

(declare-fun b!1174545 () Bool)

(declare-fun e!753480 () List!11638)

(assert (=> b!1174545 (= e!753480 lt!403873)))

(declare-fun b!1174546 () Bool)

(declare-fun e!753479 () Int)

(declare-fun call!82408 () Int)

(assert (=> b!1174546 (= e!753479 (- call!82408 2))))

(declare-fun b!1174547 () Bool)

(assert (=> b!1174547 (= e!753481 call!82408)))

(declare-fun bm!82403 () Bool)

(assert (=> bm!82403 (= call!82408 (size!9167 lt!403873))))

(declare-fun b!1174548 () Bool)

(assert (=> b!1174548 (= e!753480 (drop!497 (t!110982 lt!403873) (- 2 1)))))

(declare-fun b!1174549 () Bool)

(assert (=> b!1174549 (= e!753477 e!753480)))

(declare-fun c!195904 () Bool)

(assert (=> b!1174549 (= c!195904 (<= 2 0))))

(declare-fun b!1174550 () Bool)

(assert (=> b!1174550 (= e!753477 Nil!11614)))

(declare-fun b!1174551 () Bool)

(assert (=> b!1174551 (= e!753481 e!753479)))

(declare-fun c!195905 () Bool)

(assert (=> b!1174551 (= c!195905 (>= 2 call!82408))))

(declare-fun b!1174552 () Bool)

(assert (=> b!1174552 (= e!753479 0)))

(assert (= (and d!336445 c!195906) b!1174550))

(assert (= (and d!336445 (not c!195906)) b!1174549))

(assert (= (and b!1174549 c!195904) b!1174545))

(assert (= (and b!1174549 (not c!195904)) b!1174548))

(assert (= (and d!336445 res!530786) b!1174544))

(assert (= (and b!1174544 c!195907) b!1174547))

(assert (= (and b!1174544 (not c!195907)) b!1174551))

(assert (= (and b!1174551 c!195905) b!1174552))

(assert (= (and b!1174551 (not c!195905)) b!1174546))

(assert (= (or b!1174547 b!1174551 b!1174546) bm!82403))

(declare-fun m!1350349 () Bool)

(assert (=> d!336445 m!1350349))

(assert (=> d!336445 m!1350343))

(declare-fun m!1350351 () Bool)

(assert (=> b!1174544 m!1350351))

(assert (=> bm!82403 m!1350247))

(declare-fun m!1350353 () Bool)

(assert (=> b!1174548 m!1350353))

(assert (=> b!1174325 d!336445))

(declare-fun d!336447 () Bool)

(declare-fun lt!403965 () Bool)

(declare-fun e!753504 () Bool)

(assert (=> d!336447 (= lt!403965 e!753504)))

(declare-fun res!530804 () Bool)

(assert (=> d!336447 (=> (not res!530804) (not e!753504))))

(declare-datatypes ((tuple2!12060 0))(
  ( (tuple2!12061 (_1!6877 BalanceConc!7648) (_2!6877 BalanceConc!7646)) )
))
(declare-fun lex!718 (LexerInterface!1720 List!11639 BalanceConc!7646) tuple2!12060)

(declare-fun print!655 (LexerInterface!1720 BalanceConc!7648) BalanceConc!7646)

(declare-fun singletonSeq!692 (Token!3712) BalanceConc!7648)

(assert (=> d!336447 (= res!530804 (= (list!4290 (_1!6877 (lex!718 Lexer!1718 (rules!9682 thiss!10527) (print!655 Lexer!1718 (singletonSeq!692 lt!403886))))) (list!4290 (singletonSeq!692 lt!403886))))))

(declare-fun e!753503 () Bool)

(assert (=> d!336447 (= lt!403965 e!753503)))

(declare-fun res!530806 () Bool)

(assert (=> d!336447 (=> (not res!530806) (not e!753503))))

(declare-fun lt!403966 () tuple2!12060)

(assert (=> d!336447 (= res!530806 (= (size!9164 (_1!6877 lt!403966)) 1))))

(assert (=> d!336447 (= lt!403966 (lex!718 Lexer!1718 (rules!9682 thiss!10527) (print!655 Lexer!1718 (singletonSeq!692 lt!403886))))))

(assert (=> d!336447 (not (isEmpty!7048 (rules!9682 thiss!10527)))))

(assert (=> d!336447 (= (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) lt!403886) lt!403965)))

(declare-fun b!1174576 () Bool)

(declare-fun res!530805 () Bool)

(assert (=> b!1174576 (=> (not res!530805) (not e!753503))))

(assert (=> b!1174576 (= res!530805 (= (apply!2539 (_1!6877 lt!403966) 0) lt!403886))))

(declare-fun b!1174577 () Bool)

(declare-fun isEmpty!7050 (BalanceConc!7646) Bool)

(assert (=> b!1174577 (= e!753503 (isEmpty!7050 (_2!6877 lt!403966)))))

(declare-fun b!1174578 () Bool)

(assert (=> b!1174578 (= e!753504 (isEmpty!7050 (_2!6877 (lex!718 Lexer!1718 (rules!9682 thiss!10527) (print!655 Lexer!1718 (singletonSeq!692 lt!403886))))))))

(assert (= (and d!336447 res!530806) b!1174576))

(assert (= (and b!1174576 res!530805) b!1174577))

(assert (= (and d!336447 res!530804) b!1174578))

(declare-fun m!1350377 () Bool)

(assert (=> d!336447 m!1350377))

(declare-fun m!1350379 () Bool)

(assert (=> d!336447 m!1350379))

(assert (=> d!336447 m!1350181))

(declare-fun m!1350381 () Bool)

(assert (=> d!336447 m!1350381))

(declare-fun m!1350383 () Bool)

(assert (=> d!336447 m!1350383))

(declare-fun m!1350385 () Bool)

(assert (=> d!336447 m!1350385))

(assert (=> d!336447 m!1350377))

(declare-fun m!1350387 () Bool)

(assert (=> d!336447 m!1350387))

(assert (=> d!336447 m!1350377))

(assert (=> d!336447 m!1350381))

(declare-fun m!1350389 () Bool)

(assert (=> b!1174576 m!1350389))

(declare-fun m!1350391 () Bool)

(assert (=> b!1174577 m!1350391))

(assert (=> b!1174578 m!1350377))

(assert (=> b!1174578 m!1350377))

(assert (=> b!1174578 m!1350381))

(assert (=> b!1174578 m!1350381))

(assert (=> b!1174578 m!1350383))

(declare-fun m!1350393 () Bool)

(assert (=> b!1174578 m!1350393))

(assert (=> b!1174325 d!336447))

(declare-fun d!336463 () Bool)

(declare-fun lt!403967 () Token!3712)

(assert (=> d!336463 (contains!2007 lt!403873 lt!403967)))

(declare-fun e!753505 () Token!3712)

(assert (=> d!336463 (= lt!403967 e!753505)))

(declare-fun c!195908 () Bool)

(assert (=> d!336463 (= c!195908 (= 0 0))))

(declare-fun e!753506 () Bool)

(assert (=> d!336463 e!753506))

(declare-fun res!530807 () Bool)

(assert (=> d!336463 (=> (not res!530807) (not e!753506))))

(assert (=> d!336463 (= res!530807 (<= 0 0))))

(assert (=> d!336463 (= (apply!2540 lt!403873 0) lt!403967)))

(declare-fun b!1174579 () Bool)

(assert (=> b!1174579 (= e!753506 (< 0 (size!9167 lt!403873)))))

(declare-fun b!1174580 () Bool)

(assert (=> b!1174580 (= e!753505 (head!2114 lt!403873))))

(declare-fun b!1174581 () Bool)

(assert (=> b!1174581 (= e!753505 (apply!2540 (tail!1698 lt!403873) (- 0 1)))))

(assert (= (and d!336463 res!530807) b!1174579))

(assert (= (and d!336463 c!195908) b!1174580))

(assert (= (and d!336463 (not c!195908)) b!1174581))

(declare-fun m!1350395 () Bool)

(assert (=> d!336463 m!1350395))

(assert (=> b!1174579 m!1350247))

(assert (=> b!1174580 m!1350295))

(assert (=> b!1174581 m!1350297))

(assert (=> b!1174581 m!1350297))

(declare-fun m!1350397 () Bool)

(assert (=> b!1174581 m!1350397))

(assert (=> b!1174325 d!336463))

(declare-fun d!336465 () Bool)

(declare-fun lt!403968 () Bool)

(declare-fun e!753508 () Bool)

(assert (=> d!336465 (= lt!403968 e!753508)))

(declare-fun res!530808 () Bool)

(assert (=> d!336465 (=> (not res!530808) (not e!753508))))

(assert (=> d!336465 (= res!530808 (= (list!4290 (_1!6877 (lex!718 Lexer!1718 (rules!9682 thiss!10527) (print!655 Lexer!1718 (singletonSeq!692 lt!403882))))) (list!4290 (singletonSeq!692 lt!403882))))))

(declare-fun e!753507 () Bool)

(assert (=> d!336465 (= lt!403968 e!753507)))

(declare-fun res!530810 () Bool)

(assert (=> d!336465 (=> (not res!530810) (not e!753507))))

(declare-fun lt!403969 () tuple2!12060)

(assert (=> d!336465 (= res!530810 (= (size!9164 (_1!6877 lt!403969)) 1))))

(assert (=> d!336465 (= lt!403969 (lex!718 Lexer!1718 (rules!9682 thiss!10527) (print!655 Lexer!1718 (singletonSeq!692 lt!403882))))))

(assert (=> d!336465 (not (isEmpty!7048 (rules!9682 thiss!10527)))))

(assert (=> d!336465 (= (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) lt!403882) lt!403968)))

(declare-fun b!1174582 () Bool)

(declare-fun res!530809 () Bool)

(assert (=> b!1174582 (=> (not res!530809) (not e!753507))))

(assert (=> b!1174582 (= res!530809 (= (apply!2539 (_1!6877 lt!403969) 0) lt!403882))))

(declare-fun b!1174583 () Bool)

(assert (=> b!1174583 (= e!753507 (isEmpty!7050 (_2!6877 lt!403969)))))

(declare-fun b!1174584 () Bool)

(assert (=> b!1174584 (= e!753508 (isEmpty!7050 (_2!6877 (lex!718 Lexer!1718 (rules!9682 thiss!10527) (print!655 Lexer!1718 (singletonSeq!692 lt!403882))))))))

(assert (= (and d!336465 res!530810) b!1174582))

(assert (= (and b!1174582 res!530809) b!1174583))

(assert (= (and d!336465 res!530808) b!1174584))

(declare-fun m!1350399 () Bool)

(assert (=> d!336465 m!1350399))

(declare-fun m!1350401 () Bool)

(assert (=> d!336465 m!1350401))

(assert (=> d!336465 m!1350181))

(declare-fun m!1350403 () Bool)

(assert (=> d!336465 m!1350403))

(declare-fun m!1350405 () Bool)

(assert (=> d!336465 m!1350405))

(declare-fun m!1350407 () Bool)

(assert (=> d!336465 m!1350407))

(assert (=> d!336465 m!1350399))

(declare-fun m!1350409 () Bool)

(assert (=> d!336465 m!1350409))

(assert (=> d!336465 m!1350399))

(assert (=> d!336465 m!1350403))

(declare-fun m!1350411 () Bool)

(assert (=> b!1174582 m!1350411))

(declare-fun m!1350413 () Bool)

(assert (=> b!1174583 m!1350413))

(assert (=> b!1174584 m!1350399))

(assert (=> b!1174584 m!1350399))

(assert (=> b!1174584 m!1350403))

(assert (=> b!1174584 m!1350403))

(assert (=> b!1174584 m!1350405))

(declare-fun m!1350415 () Bool)

(assert (=> b!1174584 m!1350415))

(assert (=> b!1174325 d!336465))

(declare-fun d!336467 () Bool)

(assert (=> d!336467 (= (head!2114 lt!403881) (h!17015 lt!403881))))

(assert (=> b!1174325 d!336467))

(declare-fun d!336469 () Bool)

(assert (=> d!336469 (= (head!2114 (drop!497 lt!403873 0)) (apply!2540 lt!403873 0))))

(declare-fun lt!403970 () Unit!17894)

(assert (=> d!336469 (= lt!403970 (choose!7595 lt!403873 0))))

(declare-fun e!753509 () Bool)

(assert (=> d!336469 e!753509))

(declare-fun res!530811 () Bool)

(assert (=> d!336469 (=> (not res!530811) (not e!753509))))

(assert (=> d!336469 (= res!530811 (>= 0 0))))

(assert (=> d!336469 (= (lemmaDropApply!383 lt!403873 0) lt!403970)))

(declare-fun b!1174585 () Bool)

(assert (=> b!1174585 (= e!753509 (< 0 (size!9167 lt!403873)))))

(assert (= (and d!336469 res!530811) b!1174585))

(assert (=> d!336469 m!1350115))

(assert (=> d!336469 m!1350115))

(declare-fun m!1350417 () Bool)

(assert (=> d!336469 m!1350417))

(assert (=> d!336469 m!1350095))

(declare-fun m!1350419 () Bool)

(assert (=> d!336469 m!1350419))

(assert (=> b!1174585 m!1350247))

(assert (=> b!1174325 d!336469))

(declare-fun d!336471 () Bool)

(assert (=> d!336471 (= (tail!1698 (drop!497 lt!403873 1)) (drop!497 lt!403873 (+ 1 1)))))

(declare-fun lt!403971 () Unit!17894)

(assert (=> d!336471 (= lt!403971 (choose!7594 lt!403873 1))))

(declare-fun e!753510 () Bool)

(assert (=> d!336471 e!753510))

(declare-fun res!530812 () Bool)

(assert (=> d!336471 (=> (not res!530812) (not e!753510))))

(assert (=> d!336471 (= res!530812 (>= 1 0))))

(assert (=> d!336471 (= (lemmaDropTail!371 lt!403873 1) lt!403971)))

(declare-fun b!1174586 () Bool)

(assert (=> b!1174586 (= e!753510 (< 1 (size!9167 lt!403873)))))

(assert (= (and d!336471 res!530812) b!1174586))

(assert (=> d!336471 m!1350109))

(assert (=> d!336471 m!1350109))

(declare-fun m!1350421 () Bool)

(assert (=> d!336471 m!1350421))

(declare-fun m!1350423 () Bool)

(assert (=> d!336471 m!1350423))

(declare-fun m!1350425 () Bool)

(assert (=> d!336471 m!1350425))

(assert (=> b!1174586 m!1350247))

(assert (=> b!1174325 d!336471))

(declare-fun d!336473 () Bool)

(assert (=> d!336473 (= (tail!1698 lt!403866) (t!110982 lt!403866))))

(assert (=> b!1174325 d!336473))

(declare-fun d!336475 () Bool)

(assert (=> d!336475 (= (tail!1698 lt!403881) (t!110982 lt!403881))))

(assert (=> b!1174325 d!336475))

(declare-fun d!336477 () Bool)

(assert (=> d!336477 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) lt!403882)))

(declare-fun lt!403972 () Unit!17894)

(assert (=> d!336477 (= lt!403972 (choose!7596 Lexer!1718 (rules!9682 thiss!10527) lt!403873 lt!403882))))

(assert (=> d!336477 (not (isEmpty!7048 (rules!9682 thiss!10527)))))

(assert (=> d!336477 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!301 Lexer!1718 (rules!9682 thiss!10527) lt!403873 lt!403882) lt!403972)))

(declare-fun bs!286274 () Bool)

(assert (= bs!286274 d!336477))

(assert (=> bs!286274 m!1350103))

(declare-fun m!1350427 () Bool)

(assert (=> bs!286274 m!1350427))

(assert (=> bs!286274 m!1350181))

(assert (=> b!1174325 d!336477))

(declare-fun d!336479 () Bool)

(declare-fun e!753512 () Bool)

(assert (=> d!336479 e!753512))

(declare-fun res!530813 () Bool)

(assert (=> d!336479 (=> (not res!530813) (not e!753512))))

(declare-fun lt!403973 () List!11638)

(assert (=> d!336479 (= res!530813 (= ((_ map implies) (content!1618 lt!403973) (content!1618 lt!403873)) ((as const (InoxSet Token!3712)) true)))))

(declare-fun e!753511 () List!11638)

(assert (=> d!336479 (= lt!403973 e!753511)))

(declare-fun c!195911 () Bool)

(assert (=> d!336479 (= c!195911 ((_ is Nil!11614) lt!403873))))

(assert (=> d!336479 (= (drop!497 lt!403873 0) lt!403973)))

(declare-fun b!1174587 () Bool)

(declare-fun e!753515 () Int)

(assert (=> b!1174587 (= e!753512 (= (size!9167 lt!403973) e!753515))))

(declare-fun c!195912 () Bool)

(assert (=> b!1174587 (= c!195912 (<= 0 0))))

(declare-fun b!1174588 () Bool)

(declare-fun e!753514 () List!11638)

(assert (=> b!1174588 (= e!753514 lt!403873)))

(declare-fun b!1174589 () Bool)

(declare-fun e!753513 () Int)

(declare-fun call!82409 () Int)

(assert (=> b!1174589 (= e!753513 (- call!82409 0))))

(declare-fun b!1174590 () Bool)

(assert (=> b!1174590 (= e!753515 call!82409)))

(declare-fun bm!82404 () Bool)

(assert (=> bm!82404 (= call!82409 (size!9167 lt!403873))))

(declare-fun b!1174591 () Bool)

(assert (=> b!1174591 (= e!753514 (drop!497 (t!110982 lt!403873) (- 0 1)))))

(declare-fun b!1174592 () Bool)

(assert (=> b!1174592 (= e!753511 e!753514)))

(declare-fun c!195909 () Bool)

(assert (=> b!1174592 (= c!195909 (<= 0 0))))

(declare-fun b!1174593 () Bool)

(assert (=> b!1174593 (= e!753511 Nil!11614)))

(declare-fun b!1174594 () Bool)

(assert (=> b!1174594 (= e!753515 e!753513)))

(declare-fun c!195910 () Bool)

(assert (=> b!1174594 (= c!195910 (>= 0 call!82409))))

(declare-fun b!1174595 () Bool)

(assert (=> b!1174595 (= e!753513 0)))

(assert (= (and d!336479 c!195911) b!1174593))

(assert (= (and d!336479 (not c!195911)) b!1174592))

(assert (= (and b!1174592 c!195909) b!1174588))

(assert (= (and b!1174592 (not c!195909)) b!1174591))

(assert (= (and d!336479 res!530813) b!1174587))

(assert (= (and b!1174587 c!195912) b!1174590))

(assert (= (and b!1174587 (not c!195912)) b!1174594))

(assert (= (and b!1174594 c!195910) b!1174595))

(assert (= (and b!1174594 (not c!195910)) b!1174589))

(assert (= (or b!1174590 b!1174594 b!1174589) bm!82404))

(declare-fun m!1350429 () Bool)

(assert (=> d!336479 m!1350429))

(assert (=> d!336479 m!1350343))

(declare-fun m!1350431 () Bool)

(assert (=> b!1174587 m!1350431))

(assert (=> bm!82404 m!1350247))

(declare-fun m!1350433 () Bool)

(assert (=> b!1174591 m!1350433))

(assert (=> b!1174325 d!336479))

(declare-fun bs!286275 () Bool)

(declare-fun d!336481 () Bool)

(assert (= bs!286275 (and d!336481 b!1174332)))

(declare-fun lambda!48376 () Int)

(assert (=> bs!286275 (= lambda!48376 lambda!48361)))

(declare-fun bs!286276 () Bool)

(assert (= bs!286276 (and d!336481 d!336389)))

(assert (=> bs!286276 (= lambda!48376 lambda!48364)))

(declare-fun bs!286277 () Bool)

(assert (= bs!286277 (and d!336481 d!336421)))

(assert (=> bs!286277 (= lambda!48376 lambda!48368)))

(declare-fun bs!286278 () Bool)

(assert (= bs!286278 (and d!336481 d!336423)))

(assert (=> bs!286278 (= lambda!48376 lambda!48369)))

(declare-fun b!1174600 () Bool)

(declare-fun e!753520 () Bool)

(assert (=> b!1174600 (= e!753520 true)))

(declare-fun b!1174599 () Bool)

(declare-fun e!753519 () Bool)

(assert (=> b!1174599 (= e!753519 e!753520)))

(declare-fun b!1174598 () Bool)

(declare-fun e!753518 () Bool)

(assert (=> b!1174598 (= e!753518 e!753519)))

(assert (=> d!336481 e!753518))

(assert (= b!1174599 b!1174600))

(assert (= b!1174598 b!1174599))

(assert (= (and d!336481 ((_ is Cons!11615) (rules!9682 thiss!10527))) b!1174598))

(assert (=> b!1174600 (< (dynLambda!5141 order!7143 (toValue!3126 (transformation!2025 (h!17016 (rules!9682 thiss!10527))))) (dynLambda!5142 order!7145 lambda!48376))))

(assert (=> b!1174600 (< (dynLambda!5143 order!7147 (toChars!2985 (transformation!2025 (h!17016 (rules!9682 thiss!10527))))) (dynLambda!5142 order!7145 lambda!48376))))

(assert (=> d!336481 true))

(declare-fun lt!403974 () Bool)

(assert (=> d!336481 (= lt!403974 (forall!3082 lt!403879 lambda!48376))))

(declare-fun e!753517 () Bool)

(assert (=> d!336481 (= lt!403974 e!753517)))

(declare-fun res!530815 () Bool)

(assert (=> d!336481 (=> res!530815 e!753517)))

(assert (=> d!336481 (= res!530815 (not ((_ is Cons!11614) lt!403879)))))

(assert (=> d!336481 (not (isEmpty!7048 (rules!9682 thiss!10527)))))

(assert (=> d!336481 (= (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) lt!403879) lt!403974)))

(declare-fun b!1174596 () Bool)

(declare-fun e!753516 () Bool)

(assert (=> b!1174596 (= e!753517 e!753516)))

(declare-fun res!530814 () Bool)

(assert (=> b!1174596 (=> (not res!530814) (not e!753516))))

(assert (=> b!1174596 (= res!530814 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) (h!17015 lt!403879)))))

(declare-fun b!1174597 () Bool)

(assert (=> b!1174597 (= e!753516 (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) (t!110982 lt!403879)))))

(assert (= (and d!336481 (not res!530815)) b!1174596))

(assert (= (and b!1174596 res!530814) b!1174597))

(declare-fun m!1350435 () Bool)

(assert (=> d!336481 m!1350435))

(assert (=> d!336481 m!1350181))

(assert (=> b!1174596 m!1350159))

(assert (=> b!1174597 m!1350131))

(assert (=> b!1174336 d!336481))

(declare-fun d!336483 () Bool)

(declare-fun lt!403975 () Bool)

(declare-fun e!753522 () Bool)

(assert (=> d!336483 (= lt!403975 e!753522)))

(declare-fun res!530816 () Bool)

(assert (=> d!336483 (=> (not res!530816) (not e!753522))))

(assert (=> d!336483 (= res!530816 (= (list!4290 (_1!6877 (lex!718 Lexer!1718 (rules!9682 thiss!10527) (print!655 Lexer!1718 (singletonSeq!692 (h!17015 lt!403873)))))) (list!4290 (singletonSeq!692 (h!17015 lt!403873)))))))

(declare-fun e!753521 () Bool)

(assert (=> d!336483 (= lt!403975 e!753521)))

(declare-fun res!530818 () Bool)

(assert (=> d!336483 (=> (not res!530818) (not e!753521))))

(declare-fun lt!403976 () tuple2!12060)

(assert (=> d!336483 (= res!530818 (= (size!9164 (_1!6877 lt!403976)) 1))))

(assert (=> d!336483 (= lt!403976 (lex!718 Lexer!1718 (rules!9682 thiss!10527) (print!655 Lexer!1718 (singletonSeq!692 (h!17015 lt!403873)))))))

(assert (=> d!336483 (not (isEmpty!7048 (rules!9682 thiss!10527)))))

(assert (=> d!336483 (= (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) (h!17015 lt!403873)) lt!403975)))

(declare-fun b!1174601 () Bool)

(declare-fun res!530817 () Bool)

(assert (=> b!1174601 (=> (not res!530817) (not e!753521))))

(assert (=> b!1174601 (= res!530817 (= (apply!2539 (_1!6877 lt!403976) 0) (h!17015 lt!403873)))))

(declare-fun b!1174602 () Bool)

(assert (=> b!1174602 (= e!753521 (isEmpty!7050 (_2!6877 lt!403976)))))

(declare-fun b!1174603 () Bool)

(assert (=> b!1174603 (= e!753522 (isEmpty!7050 (_2!6877 (lex!718 Lexer!1718 (rules!9682 thiss!10527) (print!655 Lexer!1718 (singletonSeq!692 (h!17015 lt!403873)))))))))

(assert (= (and d!336483 res!530818) b!1174601))

(assert (= (and b!1174601 res!530817) b!1174602))

(assert (= (and d!336483 res!530816) b!1174603))

(declare-fun m!1350437 () Bool)

(assert (=> d!336483 m!1350437))

(declare-fun m!1350439 () Bool)

(assert (=> d!336483 m!1350439))

(assert (=> d!336483 m!1350181))

(declare-fun m!1350441 () Bool)

(assert (=> d!336483 m!1350441))

(declare-fun m!1350443 () Bool)

(assert (=> d!336483 m!1350443))

(declare-fun m!1350445 () Bool)

(assert (=> d!336483 m!1350445))

(assert (=> d!336483 m!1350437))

(declare-fun m!1350447 () Bool)

(assert (=> d!336483 m!1350447))

(assert (=> d!336483 m!1350437))

(assert (=> d!336483 m!1350441))

(declare-fun m!1350449 () Bool)

(assert (=> b!1174601 m!1350449))

(declare-fun m!1350451 () Bool)

(assert (=> b!1174602 m!1350451))

(assert (=> b!1174603 m!1350437))

(assert (=> b!1174603 m!1350437))

(assert (=> b!1174603 m!1350441))

(assert (=> b!1174603 m!1350441))

(assert (=> b!1174603 m!1350443))

(declare-fun m!1350453 () Bool)

(assert (=> b!1174603 m!1350453))

(assert (=> b!1174337 d!336483))

(declare-fun d!336485 () Bool)

(declare-fun res!530825 () Bool)

(declare-fun e!753529 () Bool)

(assert (=> d!336485 (=> res!530825 e!753529)))

(assert (=> d!336485 (= res!530825 (or (not ((_ is Cons!11614) lt!403867)) (not ((_ is Cons!11614) (t!110982 lt!403867)))))))

(assert (=> d!336485 (= (tokensListTwoByTwoPredicateSeparableList!116 Lexer!1718 lt!403867 (rules!9682 thiss!10527)) e!753529)))

(declare-fun b!1174610 () Bool)

(declare-fun e!753530 () Bool)

(assert (=> b!1174610 (= e!753529 e!753530)))

(declare-fun res!530826 () Bool)

(assert (=> b!1174610 (=> (not res!530826) (not e!753530))))

(assert (=> b!1174610 (= res!530826 (separableTokensPredicate!142 Lexer!1718 (h!17015 lt!403867) (h!17015 (t!110982 lt!403867)) (rules!9682 thiss!10527)))))

(declare-fun lt!403995 () Unit!17894)

(declare-fun Unit!17906 () Unit!17894)

(assert (=> b!1174610 (= lt!403995 Unit!17906)))

(assert (=> b!1174610 (> (size!9165 (charsOf!1080 (h!17015 (t!110982 lt!403867)))) 0)))

(declare-fun lt!403991 () Unit!17894)

(declare-fun Unit!17907 () Unit!17894)

(assert (=> b!1174610 (= lt!403991 Unit!17907)))

(assert (=> b!1174610 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) (h!17015 (t!110982 lt!403867)))))

(declare-fun lt!403994 () Unit!17894)

(declare-fun Unit!17908 () Unit!17894)

(assert (=> b!1174610 (= lt!403994 Unit!17908)))

(assert (=> b!1174610 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) (h!17015 lt!403867))))

(declare-fun lt!403997 () Unit!17894)

(declare-fun lt!403993 () Unit!17894)

(assert (=> b!1174610 (= lt!403997 lt!403993)))

(assert (=> b!1174610 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) (h!17015 (t!110982 lt!403867)))))

(assert (=> b!1174610 (= lt!403993 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!301 Lexer!1718 (rules!9682 thiss!10527) lt!403867 (h!17015 (t!110982 lt!403867))))))

(declare-fun lt!403992 () Unit!17894)

(declare-fun lt!403996 () Unit!17894)

(assert (=> b!1174610 (= lt!403992 lt!403996)))

(assert (=> b!1174610 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) (h!17015 lt!403867))))

(assert (=> b!1174610 (= lt!403996 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!301 Lexer!1718 (rules!9682 thiss!10527) lt!403867 (h!17015 lt!403867)))))

(declare-fun b!1174611 () Bool)

(assert (=> b!1174611 (= e!753530 (tokensListTwoByTwoPredicateSeparableList!116 Lexer!1718 (Cons!11614 (h!17015 (t!110982 lt!403867)) (t!110982 (t!110982 lt!403867))) (rules!9682 thiss!10527)))))

(assert (= (and d!336485 (not res!530825)) b!1174610))

(assert (= (and b!1174610 res!530826) b!1174611))

(declare-fun m!1350455 () Bool)

(assert (=> b!1174610 m!1350455))

(declare-fun m!1350457 () Bool)

(assert (=> b!1174610 m!1350457))

(assert (=> b!1174610 m!1350083))

(declare-fun m!1350459 () Bool)

(assert (=> b!1174610 m!1350459))

(assert (=> b!1174610 m!1350229))

(declare-fun m!1350461 () Bool)

(assert (=> b!1174610 m!1350461))

(assert (=> b!1174610 m!1350459))

(declare-fun m!1350463 () Bool)

(assert (=> b!1174610 m!1350463))

(declare-fun m!1350465 () Bool)

(assert (=> b!1174611 m!1350465))

(assert (=> b!1174326 d!336485))

(declare-fun b!1174665 () Bool)

(declare-fun e!753573 () Bool)

(declare-fun e!753570 () Bool)

(assert (=> b!1174665 (= e!753573 e!753570)))

(declare-fun res!530878 () Bool)

(assert (=> b!1174665 (=> (not res!530878) (not e!753570))))

(assert (=> b!1174665 (= res!530878 (separableTokensPredicate!142 Lexer!1718 (apply!2539 (tokens!1670 thiss!10527) 1) (apply!2539 (tokens!1670 thiss!10527) (+ 1 1)) (rules!9682 thiss!10527)))))

(declare-fun lt!404194 () Unit!17894)

(declare-fun Unit!17909 () Unit!17894)

(assert (=> b!1174665 (= lt!404194 Unit!17909)))

(assert (=> b!1174665 (> (size!9165 (charsOf!1080 (apply!2539 (tokens!1670 thiss!10527) (+ 1 1)))) 0)))

(declare-fun lt!404213 () Unit!17894)

(declare-fun Unit!17910 () Unit!17894)

(assert (=> b!1174665 (= lt!404213 Unit!17910)))

(assert (=> b!1174665 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) (apply!2539 (tokens!1670 thiss!10527) (+ 1 1)))))

(declare-fun lt!404203 () Unit!17894)

(declare-fun Unit!17911 () Unit!17894)

(assert (=> b!1174665 (= lt!404203 Unit!17911)))

(assert (=> b!1174665 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) (apply!2539 (tokens!1670 thiss!10527) 1))))

(declare-fun lt!404206 () Unit!17894)

(declare-fun lt!404197 () Unit!17894)

(assert (=> b!1174665 (= lt!404206 lt!404197)))

(declare-fun lt!404192 () Token!3712)

(assert (=> b!1174665 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) lt!404192)))

(declare-fun lt!404201 () List!11638)

(assert (=> b!1174665 (= lt!404197 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!301 Lexer!1718 (rules!9682 thiss!10527) lt!404201 lt!404192))))

(assert (=> b!1174665 (= lt!404192 (apply!2539 (tokens!1670 thiss!10527) (+ 1 1)))))

(assert (=> b!1174665 (= lt!404201 (list!4290 (tokens!1670 thiss!10527)))))

(declare-fun lt!404209 () Unit!17894)

(declare-fun lt!404195 () Unit!17894)

(assert (=> b!1174665 (= lt!404209 lt!404195)))

(declare-fun lt!404204 () Token!3712)

(assert (=> b!1174665 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) lt!404204)))

(declare-fun lt!404219 () List!11638)

(assert (=> b!1174665 (= lt!404195 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!301 Lexer!1718 (rules!9682 thiss!10527) lt!404219 lt!404204))))

(assert (=> b!1174665 (= lt!404204 (apply!2539 (tokens!1670 thiss!10527) 1))))

(assert (=> b!1174665 (= lt!404219 (list!4290 (tokens!1670 thiss!10527)))))

(declare-fun lt!404198 () Unit!17894)

(declare-fun lt!404202 () Unit!17894)

(assert (=> b!1174665 (= lt!404198 lt!404202)))

(declare-fun lt!404216 () List!11638)

(declare-fun lt!404210 () Int)

(assert (=> b!1174665 (= (tail!1698 (drop!497 lt!404216 lt!404210)) (drop!497 lt!404216 (+ lt!404210 1)))))

(assert (=> b!1174665 (= lt!404202 (lemmaDropTail!371 lt!404216 lt!404210))))

(assert (=> b!1174665 (= lt!404210 (+ 1 1))))

(assert (=> b!1174665 (= lt!404216 (list!4290 (tokens!1670 thiss!10527)))))

(declare-fun lt!404205 () Unit!17894)

(declare-fun lt!404187 () Unit!17894)

(assert (=> b!1174665 (= lt!404205 lt!404187)))

(declare-fun lt!404217 () List!11638)

(assert (=> b!1174665 (= (tail!1698 (drop!497 lt!404217 1)) (drop!497 lt!404217 (+ 1 1)))))

(assert (=> b!1174665 (= lt!404187 (lemmaDropTail!371 lt!404217 1))))

(assert (=> b!1174665 (= lt!404217 (list!4290 (tokens!1670 thiss!10527)))))

(declare-fun lt!404214 () Unit!17894)

(declare-fun lt!404208 () Unit!17894)

(assert (=> b!1174665 (= lt!404214 lt!404208)))

(declare-fun lt!404218 () List!11638)

(declare-fun lt!404215 () Int)

(assert (=> b!1174665 (= (head!2114 (drop!497 lt!404218 lt!404215)) (apply!2540 lt!404218 lt!404215))))

(assert (=> b!1174665 (= lt!404208 (lemmaDropApply!383 lt!404218 lt!404215))))

(assert (=> b!1174665 (= lt!404215 (+ 1 1))))

(assert (=> b!1174665 (= lt!404218 (list!4290 (tokens!1670 thiss!10527)))))

(declare-fun lt!404190 () Unit!17894)

(declare-fun lt!404189 () Unit!17894)

(assert (=> b!1174665 (= lt!404190 lt!404189)))

(declare-fun lt!404199 () List!11638)

(assert (=> b!1174665 (= (head!2114 (drop!497 lt!404199 1)) (apply!2540 lt!404199 1))))

(assert (=> b!1174665 (= lt!404189 (lemmaDropApply!383 lt!404199 1))))

(assert (=> b!1174665 (= lt!404199 (list!4290 (tokens!1670 thiss!10527)))))

(declare-fun b!1174666 () Bool)

(declare-fun res!530883 () Bool)

(declare-fun e!753571 () Bool)

(assert (=> b!1174666 (=> (not res!530883) (not e!753571))))

(declare-fun lt!404193 () List!11638)

(declare-fun lt!404207 () List!11638)

(assert (=> b!1174666 (= res!530883 (subseq!275 lt!404193 lt!404207))))

(declare-fun d!336487 () Bool)

(declare-fun lt!404212 () Bool)

(declare-fun dropList!332 (BalanceConc!7648 Int) List!11638)

(assert (=> d!336487 (= lt!404212 (tokensListTwoByTwoPredicateSeparableList!116 Lexer!1718 (dropList!332 (tokens!1670 thiss!10527) 1) (rules!9682 thiss!10527)))))

(declare-fun lt!404211 () Unit!17894)

(declare-fun lt!404188 () Unit!17894)

(assert (=> d!336487 (= lt!404211 lt!404188)))

(assert (=> d!336487 (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) lt!404193)))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!38 (LexerInterface!1720 List!11639 List!11638 List!11638) Unit!17894)

(assert (=> d!336487 (= lt!404188 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!38 Lexer!1718 (rules!9682 thiss!10527) lt!404207 lt!404193))))

(assert (=> d!336487 e!753571))

(declare-fun res!530881 () Bool)

(assert (=> d!336487 (=> (not res!530881) (not e!753571))))

(assert (=> d!336487 (= res!530881 ((_ is Lexer!1718) Lexer!1718))))

(assert (=> d!336487 (= lt!404193 (dropList!332 (tokens!1670 thiss!10527) 1))))

(assert (=> d!336487 (= lt!404207 (list!4290 (tokens!1670 thiss!10527)))))

(declare-fun lt!404196 () Unit!17894)

(declare-fun lt!404191 () Unit!17894)

(assert (=> d!336487 (= lt!404196 lt!404191)))

(declare-fun lt!404200 () List!11638)

(assert (=> d!336487 (subseq!275 (drop!497 lt!404200 1) lt!404200)))

(declare-fun lemmaDropSubSeq!38 (List!11638 Int) Unit!17894)

(assert (=> d!336487 (= lt!404191 (lemmaDropSubSeq!38 lt!404200 1))))

(declare-fun e!753569 () Bool)

(assert (=> d!336487 e!753569))

(declare-fun res!530879 () Bool)

(assert (=> d!336487 (=> (not res!530879) (not e!753569))))

(assert (=> d!336487 (= res!530879 (>= 1 0))))

(assert (=> d!336487 (= lt!404200 (list!4290 (tokens!1670 thiss!10527)))))

(assert (=> d!336487 (= lt!404212 e!753573)))

(declare-fun res!530877 () Bool)

(assert (=> d!336487 (=> res!530877 e!753573)))

(assert (=> d!336487 (= res!530877 (not (< 1 (- (size!9164 (tokens!1670 thiss!10527)) 1))))))

(declare-fun e!753572 () Bool)

(assert (=> d!336487 e!753572))

(declare-fun res!530882 () Bool)

(assert (=> d!336487 (=> (not res!530882) (not e!753572))))

(assert (=> d!336487 (= res!530882 (>= 1 0))))

(assert (=> d!336487 (= (tokensListTwoByTwoPredicateSeparable!81 Lexer!1718 (tokens!1670 thiss!10527) 1 (rules!9682 thiss!10527)) lt!404212)))

(declare-fun b!1174667 () Bool)

(assert (=> b!1174667 (= e!753571 (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) lt!404207))))

(declare-fun b!1174668 () Bool)

(declare-fun res!530884 () Bool)

(assert (=> b!1174668 (=> (not res!530884) (not e!753571))))

(assert (=> b!1174668 (= res!530884 (rulesInvariant!1594 Lexer!1718 (rules!9682 thiss!10527)))))

(declare-fun b!1174669 () Bool)

(assert (=> b!1174669 (= e!753569 (<= 1 (size!9167 lt!404200)))))

(declare-fun b!1174670 () Bool)

(assert (=> b!1174670 (= e!753570 (tokensListTwoByTwoPredicateSeparable!81 Lexer!1718 (tokens!1670 thiss!10527) (+ 1 1) (rules!9682 thiss!10527)))))

(declare-fun b!1174671 () Bool)

(assert (=> b!1174671 (= e!753572 (<= 1 (size!9164 (tokens!1670 thiss!10527))))))

(declare-fun b!1174672 () Bool)

(declare-fun res!530880 () Bool)

(assert (=> b!1174672 (=> (not res!530880) (not e!753571))))

(assert (=> b!1174672 (= res!530880 (not (isEmpty!7048 (rules!9682 thiss!10527))))))

(assert (= (and d!336487 res!530882) b!1174671))

(assert (= (and d!336487 (not res!530877)) b!1174665))

(assert (= (and b!1174665 res!530878) b!1174670))

(assert (= (and d!336487 res!530879) b!1174669))

(assert (= (and d!336487 res!530881) b!1174672))

(assert (= (and b!1174672 res!530880) b!1174668))

(assert (= (and b!1174668 res!530884) b!1174666))

(assert (= (and b!1174666 res!530883) b!1174667))

(declare-fun m!1350567 () Bool)

(assert (=> b!1174667 m!1350567))

(declare-fun m!1350569 () Bool)

(assert (=> b!1174665 m!1350569))

(declare-fun m!1350571 () Bool)

(assert (=> b!1174665 m!1350571))

(declare-fun m!1350573 () Bool)

(assert (=> b!1174665 m!1350573))

(assert (=> b!1174665 m!1350091))

(declare-fun m!1350575 () Bool)

(assert (=> b!1174665 m!1350575))

(assert (=> b!1174665 m!1350091))

(declare-fun m!1350577 () Bool)

(assert (=> b!1174665 m!1350577))

(declare-fun m!1350579 () Bool)

(assert (=> b!1174665 m!1350579))

(declare-fun m!1350581 () Bool)

(assert (=> b!1174665 m!1350581))

(declare-fun m!1350583 () Bool)

(assert (=> b!1174665 m!1350583))

(assert (=> b!1174665 m!1350571))

(declare-fun m!1350585 () Bool)

(assert (=> b!1174665 m!1350585))

(declare-fun m!1350587 () Bool)

(assert (=> b!1174665 m!1350587))

(declare-fun m!1350589 () Bool)

(assert (=> b!1174665 m!1350589))

(declare-fun m!1350591 () Bool)

(assert (=> b!1174665 m!1350591))

(declare-fun m!1350593 () Bool)

(assert (=> b!1174665 m!1350593))

(declare-fun m!1350595 () Bool)

(assert (=> b!1174665 m!1350595))

(declare-fun m!1350597 () Bool)

(assert (=> b!1174665 m!1350597))

(declare-fun m!1350599 () Bool)

(assert (=> b!1174665 m!1350599))

(assert (=> b!1174665 m!1350167))

(declare-fun m!1350601 () Bool)

(assert (=> b!1174665 m!1350601))

(assert (=> b!1174665 m!1350091))

(assert (=> b!1174665 m!1350579))

(declare-fun m!1350603 () Bool)

(assert (=> b!1174665 m!1350603))

(assert (=> b!1174665 m!1350591))

(declare-fun m!1350605 () Bool)

(assert (=> b!1174665 m!1350605))

(assert (=> b!1174665 m!1350579))

(declare-fun m!1350607 () Bool)

(assert (=> b!1174665 m!1350607))

(declare-fun m!1350609 () Bool)

(assert (=> b!1174665 m!1350609))

(assert (=> b!1174665 m!1350579))

(assert (=> b!1174665 m!1350607))

(declare-fun m!1350611 () Bool)

(assert (=> b!1174665 m!1350611))

(declare-fun m!1350613 () Bool)

(assert (=> b!1174665 m!1350613))

(assert (=> b!1174665 m!1350583))

(declare-fun m!1350615 () Bool)

(assert (=> b!1174665 m!1350615))

(assert (=> b!1174665 m!1350593))

(declare-fun m!1350617 () Bool)

(assert (=> b!1174665 m!1350617))

(declare-fun m!1350619 () Bool)

(assert (=> b!1174665 m!1350619))

(declare-fun m!1350621 () Bool)

(assert (=> b!1174670 m!1350621))

(assert (=> b!1174668 m!1350133))

(assert (=> b!1174671 m!1350127))

(assert (=> b!1174672 m!1350181))

(declare-fun m!1350623 () Bool)

(assert (=> d!336487 m!1350623))

(declare-fun m!1350625 () Bool)

(assert (=> d!336487 m!1350625))

(declare-fun m!1350627 () Bool)

(assert (=> d!336487 m!1350627))

(declare-fun m!1350629 () Bool)

(assert (=> d!336487 m!1350629))

(assert (=> d!336487 m!1350167))

(assert (=> d!336487 m!1350127))

(declare-fun m!1350631 () Bool)

(assert (=> d!336487 m!1350631))

(declare-fun m!1350633 () Bool)

(assert (=> d!336487 m!1350633))

(assert (=> d!336487 m!1350627))

(assert (=> d!336487 m!1350625))

(declare-fun m!1350635 () Bool)

(assert (=> d!336487 m!1350635))

(declare-fun m!1350637 () Bool)

(assert (=> b!1174666 m!1350637))

(declare-fun m!1350639 () Bool)

(assert (=> b!1174669 m!1350639))

(assert (=> b!1174327 d!336487))

(declare-fun d!336495 () Bool)

(assert (=> d!336495 (subseq!275 (drop!497 lt!403873 from!787) lt!403873)))

(declare-fun lt!404222 () Unit!17894)

(declare-fun choose!7600 (List!11638 Int) Unit!17894)

(assert (=> d!336495 (= lt!404222 (choose!7600 lt!403873 from!787))))

(assert (=> d!336495 (= (lemmaDropSubseq!50 lt!403873 from!787) lt!404222)))

(declare-fun bs!286284 () Bool)

(assert (= bs!286284 d!336495))

(assert (=> bs!286284 m!1350179))

(assert (=> bs!286284 m!1350179))

(declare-fun m!1350641 () Bool)

(assert (=> bs!286284 m!1350641))

(declare-fun m!1350643 () Bool)

(assert (=> bs!286284 m!1350643))

(assert (=> b!1174338 d!336495))

(declare-fun d!336497 () Bool)

(assert (=> d!336497 (= (isEmpty!7048 (rules!9682 thiss!10527)) ((_ is Nil!11615) (rules!9682 thiss!10527)))))

(assert (=> b!1174338 d!336497))

(declare-fun d!336499 () Bool)

(declare-fun e!753575 () Bool)

(assert (=> d!336499 e!753575))

(declare-fun res!530885 () Bool)

(assert (=> d!336499 (=> (not res!530885) (not e!753575))))

(declare-fun lt!404223 () List!11638)

(assert (=> d!336499 (= res!530885 (= ((_ map implies) (content!1618 lt!404223) (content!1618 lt!403873)) ((as const (InoxSet Token!3712)) true)))))

(declare-fun e!753574 () List!11638)

(assert (=> d!336499 (= lt!404223 e!753574)))

(declare-fun c!195915 () Bool)

(assert (=> d!336499 (= c!195915 ((_ is Nil!11614) lt!403873))))

(assert (=> d!336499 (= (drop!497 lt!403873 from!787) lt!404223)))

(declare-fun b!1174673 () Bool)

(declare-fun e!753578 () Int)

(assert (=> b!1174673 (= e!753575 (= (size!9167 lt!404223) e!753578))))

(declare-fun c!195916 () Bool)

(assert (=> b!1174673 (= c!195916 (<= from!787 0))))

(declare-fun b!1174674 () Bool)

(declare-fun e!753577 () List!11638)

(assert (=> b!1174674 (= e!753577 lt!403873)))

(declare-fun b!1174675 () Bool)

(declare-fun e!753576 () Int)

(declare-fun call!82410 () Int)

(assert (=> b!1174675 (= e!753576 (- call!82410 from!787))))

(declare-fun b!1174676 () Bool)

(assert (=> b!1174676 (= e!753578 call!82410)))

(declare-fun bm!82405 () Bool)

(assert (=> bm!82405 (= call!82410 (size!9167 lt!403873))))

(declare-fun b!1174677 () Bool)

(assert (=> b!1174677 (= e!753577 (drop!497 (t!110982 lt!403873) (- from!787 1)))))

(declare-fun b!1174678 () Bool)

(assert (=> b!1174678 (= e!753574 e!753577)))

(declare-fun c!195913 () Bool)

(assert (=> b!1174678 (= c!195913 (<= from!787 0))))

(declare-fun b!1174679 () Bool)

(assert (=> b!1174679 (= e!753574 Nil!11614)))

(declare-fun b!1174680 () Bool)

(assert (=> b!1174680 (= e!753578 e!753576)))

(declare-fun c!195914 () Bool)

(assert (=> b!1174680 (= c!195914 (>= from!787 call!82410))))

(declare-fun b!1174681 () Bool)

(assert (=> b!1174681 (= e!753576 0)))

(assert (= (and d!336499 c!195915) b!1174679))

(assert (= (and d!336499 (not c!195915)) b!1174678))

(assert (= (and b!1174678 c!195913) b!1174674))

(assert (= (and b!1174678 (not c!195913)) b!1174677))

(assert (= (and d!336499 res!530885) b!1174673))

(assert (= (and b!1174673 c!195916) b!1174676))

(assert (= (and b!1174673 (not c!195916)) b!1174680))

(assert (= (and b!1174680 c!195914) b!1174681))

(assert (= (and b!1174680 (not c!195914)) b!1174675))

(assert (= (or b!1174676 b!1174680 b!1174675) bm!82405))

(declare-fun m!1350645 () Bool)

(assert (=> d!336499 m!1350645))

(assert (=> d!336499 m!1350343))

(declare-fun m!1350647 () Bool)

(assert (=> b!1174673 m!1350647))

(assert (=> bm!82405 m!1350247))

(declare-fun m!1350649 () Bool)

(assert (=> b!1174677 m!1350649))

(assert (=> b!1174338 d!336499))

(declare-fun b!1174682 () Bool)

(declare-fun e!753583 () Bool)

(declare-fun e!753580 () Bool)

(assert (=> b!1174682 (= e!753583 e!753580)))

(declare-fun res!530887 () Bool)

(assert (=> b!1174682 (=> (not res!530887) (not e!753580))))

(assert (=> b!1174682 (= res!530887 (separableTokensPredicate!142 Lexer!1718 (apply!2539 lt!403865 0) (apply!2539 lt!403865 (+ 0 1)) (rules!9682 thiss!10527)))))

(declare-fun lt!404231 () Unit!17894)

(declare-fun Unit!17912 () Unit!17894)

(assert (=> b!1174682 (= lt!404231 Unit!17912)))

(assert (=> b!1174682 (> (size!9165 (charsOf!1080 (apply!2539 lt!403865 (+ 0 1)))) 0)))

(declare-fun lt!404250 () Unit!17894)

(declare-fun Unit!17913 () Unit!17894)

(assert (=> b!1174682 (= lt!404250 Unit!17913)))

(assert (=> b!1174682 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) (apply!2539 lt!403865 (+ 0 1)))))

(declare-fun lt!404240 () Unit!17894)

(declare-fun Unit!17914 () Unit!17894)

(assert (=> b!1174682 (= lt!404240 Unit!17914)))

(assert (=> b!1174682 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) (apply!2539 lt!403865 0))))

(declare-fun lt!404243 () Unit!17894)

(declare-fun lt!404234 () Unit!17894)

(assert (=> b!1174682 (= lt!404243 lt!404234)))

(declare-fun lt!404229 () Token!3712)

(assert (=> b!1174682 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) lt!404229)))

(declare-fun lt!404238 () List!11638)

(assert (=> b!1174682 (= lt!404234 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!301 Lexer!1718 (rules!9682 thiss!10527) lt!404238 lt!404229))))

(assert (=> b!1174682 (= lt!404229 (apply!2539 lt!403865 (+ 0 1)))))

(assert (=> b!1174682 (= lt!404238 (list!4290 lt!403865))))

(declare-fun lt!404246 () Unit!17894)

(declare-fun lt!404232 () Unit!17894)

(assert (=> b!1174682 (= lt!404246 lt!404232)))

(declare-fun lt!404241 () Token!3712)

(assert (=> b!1174682 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) lt!404241)))

(declare-fun lt!404256 () List!11638)

(assert (=> b!1174682 (= lt!404232 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!301 Lexer!1718 (rules!9682 thiss!10527) lt!404256 lt!404241))))

(assert (=> b!1174682 (= lt!404241 (apply!2539 lt!403865 0))))

(assert (=> b!1174682 (= lt!404256 (list!4290 lt!403865))))

(declare-fun lt!404235 () Unit!17894)

(declare-fun lt!404239 () Unit!17894)

(assert (=> b!1174682 (= lt!404235 lt!404239)))

(declare-fun lt!404253 () List!11638)

(declare-fun lt!404247 () Int)

(assert (=> b!1174682 (= (tail!1698 (drop!497 lt!404253 lt!404247)) (drop!497 lt!404253 (+ lt!404247 1)))))

(assert (=> b!1174682 (= lt!404239 (lemmaDropTail!371 lt!404253 lt!404247))))

(assert (=> b!1174682 (= lt!404247 (+ 0 1))))

(assert (=> b!1174682 (= lt!404253 (list!4290 lt!403865))))

(declare-fun lt!404242 () Unit!17894)

(declare-fun lt!404224 () Unit!17894)

(assert (=> b!1174682 (= lt!404242 lt!404224)))

(declare-fun lt!404254 () List!11638)

(assert (=> b!1174682 (= (tail!1698 (drop!497 lt!404254 0)) (drop!497 lt!404254 (+ 0 1)))))

(assert (=> b!1174682 (= lt!404224 (lemmaDropTail!371 lt!404254 0))))

(assert (=> b!1174682 (= lt!404254 (list!4290 lt!403865))))

(declare-fun lt!404251 () Unit!17894)

(declare-fun lt!404245 () Unit!17894)

(assert (=> b!1174682 (= lt!404251 lt!404245)))

(declare-fun lt!404255 () List!11638)

(declare-fun lt!404252 () Int)

(assert (=> b!1174682 (= (head!2114 (drop!497 lt!404255 lt!404252)) (apply!2540 lt!404255 lt!404252))))

(assert (=> b!1174682 (= lt!404245 (lemmaDropApply!383 lt!404255 lt!404252))))

(assert (=> b!1174682 (= lt!404252 (+ 0 1))))

(assert (=> b!1174682 (= lt!404255 (list!4290 lt!403865))))

(declare-fun lt!404227 () Unit!17894)

(declare-fun lt!404226 () Unit!17894)

(assert (=> b!1174682 (= lt!404227 lt!404226)))

(declare-fun lt!404236 () List!11638)

(assert (=> b!1174682 (= (head!2114 (drop!497 lt!404236 0)) (apply!2540 lt!404236 0))))

(assert (=> b!1174682 (= lt!404226 (lemmaDropApply!383 lt!404236 0))))

(assert (=> b!1174682 (= lt!404236 (list!4290 lt!403865))))

(declare-fun b!1174683 () Bool)

(declare-fun res!530892 () Bool)

(declare-fun e!753581 () Bool)

(assert (=> b!1174683 (=> (not res!530892) (not e!753581))))

(declare-fun lt!404230 () List!11638)

(declare-fun lt!404244 () List!11638)

(assert (=> b!1174683 (= res!530892 (subseq!275 lt!404230 lt!404244))))

(declare-fun d!336501 () Bool)

(declare-fun lt!404249 () Bool)

(assert (=> d!336501 (= lt!404249 (tokensListTwoByTwoPredicateSeparableList!116 Lexer!1718 (dropList!332 lt!403865 0) (rules!9682 thiss!10527)))))

(declare-fun lt!404248 () Unit!17894)

(declare-fun lt!404225 () Unit!17894)

(assert (=> d!336501 (= lt!404248 lt!404225)))

(assert (=> d!336501 (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) lt!404230)))

(assert (=> d!336501 (= lt!404225 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!38 Lexer!1718 (rules!9682 thiss!10527) lt!404244 lt!404230))))

(assert (=> d!336501 e!753581))

(declare-fun res!530890 () Bool)

(assert (=> d!336501 (=> (not res!530890) (not e!753581))))

(assert (=> d!336501 (= res!530890 ((_ is Lexer!1718) Lexer!1718))))

(assert (=> d!336501 (= lt!404230 (dropList!332 lt!403865 0))))

(assert (=> d!336501 (= lt!404244 (list!4290 lt!403865))))

(declare-fun lt!404233 () Unit!17894)

(declare-fun lt!404228 () Unit!17894)

(assert (=> d!336501 (= lt!404233 lt!404228)))

(declare-fun lt!404237 () List!11638)

(assert (=> d!336501 (subseq!275 (drop!497 lt!404237 0) lt!404237)))

(assert (=> d!336501 (= lt!404228 (lemmaDropSubSeq!38 lt!404237 0))))

(declare-fun e!753579 () Bool)

(assert (=> d!336501 e!753579))

(declare-fun res!530888 () Bool)

(assert (=> d!336501 (=> (not res!530888) (not e!753579))))

(assert (=> d!336501 (= res!530888 (>= 0 0))))

(assert (=> d!336501 (= lt!404237 (list!4290 lt!403865))))

(assert (=> d!336501 (= lt!404249 e!753583)))

(declare-fun res!530886 () Bool)

(assert (=> d!336501 (=> res!530886 e!753583)))

(assert (=> d!336501 (= res!530886 (not (< 0 (- (size!9164 lt!403865) 1))))))

(declare-fun e!753582 () Bool)

(assert (=> d!336501 e!753582))

(declare-fun res!530891 () Bool)

(assert (=> d!336501 (=> (not res!530891) (not e!753582))))

(assert (=> d!336501 (= res!530891 (>= 0 0))))

(assert (=> d!336501 (= (tokensListTwoByTwoPredicateSeparable!81 Lexer!1718 lt!403865 0 (rules!9682 thiss!10527)) lt!404249)))

(declare-fun b!1174684 () Bool)

(assert (=> b!1174684 (= e!753581 (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) lt!404244))))

(declare-fun b!1174685 () Bool)

(declare-fun res!530893 () Bool)

(assert (=> b!1174685 (=> (not res!530893) (not e!753581))))

(assert (=> b!1174685 (= res!530893 (rulesInvariant!1594 Lexer!1718 (rules!9682 thiss!10527)))))

(declare-fun b!1174686 () Bool)

(assert (=> b!1174686 (= e!753579 (<= 0 (size!9167 lt!404237)))))

(declare-fun b!1174687 () Bool)

(assert (=> b!1174687 (= e!753580 (tokensListTwoByTwoPredicateSeparable!81 Lexer!1718 lt!403865 (+ 0 1) (rules!9682 thiss!10527)))))

(declare-fun b!1174688 () Bool)

(assert (=> b!1174688 (= e!753582 (<= 0 (size!9164 lt!403865)))))

(declare-fun b!1174689 () Bool)

(declare-fun res!530889 () Bool)

(assert (=> b!1174689 (=> (not res!530889) (not e!753581))))

(assert (=> b!1174689 (= res!530889 (not (isEmpty!7048 (rules!9682 thiss!10527))))))

(assert (= (and d!336501 res!530891) b!1174688))

(assert (= (and d!336501 (not res!530886)) b!1174682))

(assert (= (and b!1174682 res!530887) b!1174687))

(assert (= (and d!336501 res!530888) b!1174686))

(assert (= (and d!336501 res!530890) b!1174689))

(assert (= (and b!1174689 res!530889) b!1174685))

(assert (= (and b!1174685 res!530893) b!1174683))

(assert (= (and b!1174683 res!530892) b!1174684))

(declare-fun m!1350651 () Bool)

(assert (=> b!1174684 m!1350651))

(declare-fun m!1350653 () Bool)

(assert (=> b!1174682 m!1350653))

(declare-fun m!1350655 () Bool)

(assert (=> b!1174682 m!1350655))

(declare-fun m!1350657 () Bool)

(assert (=> b!1174682 m!1350657))

(declare-fun m!1350659 () Bool)

(assert (=> b!1174682 m!1350659))

(declare-fun m!1350661 () Bool)

(assert (=> b!1174682 m!1350661))

(assert (=> b!1174682 m!1350659))

(declare-fun m!1350663 () Bool)

(assert (=> b!1174682 m!1350663))

(declare-fun m!1350665 () Bool)

(assert (=> b!1174682 m!1350665))

(declare-fun m!1350667 () Bool)

(assert (=> b!1174682 m!1350667))

(declare-fun m!1350669 () Bool)

(assert (=> b!1174682 m!1350669))

(assert (=> b!1174682 m!1350655))

(declare-fun m!1350671 () Bool)

(assert (=> b!1174682 m!1350671))

(declare-fun m!1350673 () Bool)

(assert (=> b!1174682 m!1350673))

(declare-fun m!1350675 () Bool)

(assert (=> b!1174682 m!1350675))

(declare-fun m!1350677 () Bool)

(assert (=> b!1174682 m!1350677))

(declare-fun m!1350679 () Bool)

(assert (=> b!1174682 m!1350679))

(declare-fun m!1350681 () Bool)

(assert (=> b!1174682 m!1350681))

(declare-fun m!1350683 () Bool)

(assert (=> b!1174682 m!1350683))

(declare-fun m!1350685 () Bool)

(assert (=> b!1174682 m!1350685))

(assert (=> b!1174682 m!1350149))

(declare-fun m!1350687 () Bool)

(assert (=> b!1174682 m!1350687))

(assert (=> b!1174682 m!1350659))

(assert (=> b!1174682 m!1350665))

(declare-fun m!1350689 () Bool)

(assert (=> b!1174682 m!1350689))

(assert (=> b!1174682 m!1350677))

(declare-fun m!1350691 () Bool)

(assert (=> b!1174682 m!1350691))

(assert (=> b!1174682 m!1350665))

(declare-fun m!1350693 () Bool)

(assert (=> b!1174682 m!1350693))

(declare-fun m!1350695 () Bool)

(assert (=> b!1174682 m!1350695))

(assert (=> b!1174682 m!1350665))

(assert (=> b!1174682 m!1350693))

(declare-fun m!1350697 () Bool)

(assert (=> b!1174682 m!1350697))

(declare-fun m!1350699 () Bool)

(assert (=> b!1174682 m!1350699))

(assert (=> b!1174682 m!1350669))

(declare-fun m!1350701 () Bool)

(assert (=> b!1174682 m!1350701))

(assert (=> b!1174682 m!1350679))

(declare-fun m!1350703 () Bool)

(assert (=> b!1174682 m!1350703))

(declare-fun m!1350705 () Bool)

(assert (=> b!1174682 m!1350705))

(declare-fun m!1350707 () Bool)

(assert (=> b!1174687 m!1350707))

(assert (=> b!1174685 m!1350133))

(declare-fun m!1350709 () Bool)

(assert (=> b!1174688 m!1350709))

(assert (=> b!1174689 m!1350181))

(declare-fun m!1350711 () Bool)

(assert (=> d!336501 m!1350711))

(declare-fun m!1350713 () Bool)

(assert (=> d!336501 m!1350713))

(declare-fun m!1350715 () Bool)

(assert (=> d!336501 m!1350715))

(declare-fun m!1350717 () Bool)

(assert (=> d!336501 m!1350717))

(assert (=> d!336501 m!1350149))

(assert (=> d!336501 m!1350709))

(declare-fun m!1350719 () Bool)

(assert (=> d!336501 m!1350719))

(declare-fun m!1350721 () Bool)

(assert (=> d!336501 m!1350721))

(assert (=> d!336501 m!1350715))

(assert (=> d!336501 m!1350713))

(declare-fun m!1350723 () Bool)

(assert (=> d!336501 m!1350723))

(declare-fun m!1350725 () Bool)

(assert (=> b!1174683 m!1350725))

(declare-fun m!1350727 () Bool)

(assert (=> b!1174686 m!1350727))

(assert (=> b!1174338 d!336501))

(declare-fun bs!286294 () Bool)

(declare-fun b!1174732 () Bool)

(assert (= bs!286294 (and b!1174732 d!336481)))

(declare-fun lambda!48383 () Int)

(assert (=> bs!286294 (= lambda!48383 lambda!48376)))

(declare-fun bs!286295 () Bool)

(assert (= bs!286295 (and b!1174732 d!336421)))

(assert (=> bs!286295 (= lambda!48383 lambda!48368)))

(declare-fun bs!286296 () Bool)

(assert (= bs!286296 (and b!1174732 d!336423)))

(assert (=> bs!286296 (= lambda!48383 lambda!48369)))

(declare-fun bs!286297 () Bool)

(assert (= bs!286297 (and b!1174732 d!336389)))

(assert (=> bs!286297 (= lambda!48383 lambda!48364)))

(declare-fun bs!286298 () Bool)

(assert (= bs!286298 (and b!1174732 b!1174332)))

(assert (=> bs!286298 (= lambda!48383 lambda!48361)))

(declare-fun b!1174736 () Bool)

(declare-fun e!753618 () Bool)

(assert (=> b!1174736 (= e!753618 true)))

(declare-fun b!1174735 () Bool)

(declare-fun e!753617 () Bool)

(assert (=> b!1174735 (= e!753617 e!753618)))

(declare-fun b!1174734 () Bool)

(declare-fun e!753616 () Bool)

(assert (=> b!1174734 (= e!753616 e!753617)))

(assert (=> b!1174732 e!753616))

(assert (= b!1174735 b!1174736))

(assert (= b!1174734 b!1174735))

(assert (= (and b!1174732 ((_ is Cons!11615) (rules!9682 thiss!10527))) b!1174734))

(assert (=> b!1174736 (< (dynLambda!5141 order!7143 (toValue!3126 (transformation!2025 (h!17016 (rules!9682 thiss!10527))))) (dynLambda!5142 order!7145 lambda!48383))))

(assert (=> b!1174736 (< (dynLambda!5143 order!7147 (toChars!2985 (transformation!2025 (h!17016 (rules!9682 thiss!10527))))) (dynLambda!5142 order!7145 lambda!48383))))

(declare-fun b!1174730 () Bool)

(declare-fun e!753612 () Bool)

(declare-fun e!753614 () Bool)

(assert (=> b!1174730 (= e!753612 e!753614)))

(declare-fun res!530907 () Bool)

(assert (=> b!1174730 (=> (not res!530907) (not e!753614))))

(declare-fun lt!404284 () List!11638)

(assert (=> b!1174730 (= res!530907 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) (h!17015 lt!404284)))))

(declare-fun b!1174733 () Bool)

(declare-fun e!753613 () Bool)

(declare-fun lt!404288 () List!11638)

(assert (=> b!1174733 (= e!753613 (subseq!275 lt!404288 lt!403873))))

(declare-fun e!753615 () Bool)

(assert (=> b!1174732 (= e!753615 (tokensListTwoByTwoPredicateSeparableList!116 Lexer!1718 (drop!497 lt!403873 from!787) (rules!9682 thiss!10527)))))

(declare-fun lt!404283 () Unit!17894)

(declare-fun lt!404282 () Unit!17894)

(assert (=> b!1174732 (= lt!404283 lt!404282)))

(assert (=> b!1174732 (forall!3082 lt!404288 lambda!48383)))

(assert (=> b!1174732 (= lt!404282 (lemmaForallSubseq!163 lt!404288 lt!403873 lambda!48383))))

(assert (=> b!1174732 e!753613))

(declare-fun res!530910 () Bool)

(assert (=> b!1174732 (=> (not res!530910) (not e!753613))))

(assert (=> b!1174732 (= res!530910 (forall!3082 lt!403873 lambda!48383))))

(assert (=> b!1174732 (= lt!404288 (drop!497 lt!403873 from!787))))

(declare-fun lt!404287 () Unit!17894)

(declare-fun lt!404285 () Unit!17894)

(assert (=> b!1174732 (= lt!404287 lt!404285)))

(assert (=> b!1174732 (subseq!275 (drop!497 lt!403873 from!787) lt!403873)))

(assert (=> b!1174732 (= lt!404285 (lemmaDropSubseq!50 lt!403873 from!787))))

(declare-fun b!1174731 () Bool)

(assert (=> b!1174731 (= e!753614 (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) (t!110982 lt!404284)))))

(declare-fun d!336503 () Bool)

(assert (=> d!336503 e!753615))

(declare-fun res!530909 () Bool)

(assert (=> d!336503 (=> (not res!530909) (not e!753615))))

(assert (=> d!336503 (= res!530909 (= (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) (drop!497 lt!403873 from!787)) e!753612))))

(declare-fun res!530908 () Bool)

(assert (=> d!336503 (=> res!530908 e!753612)))

(assert (=> d!336503 (= res!530908 (not ((_ is Cons!11614) lt!404284)))))

(assert (=> d!336503 (= lt!404284 (drop!497 lt!403873 from!787))))

(declare-fun lt!404286 () Unit!17894)

(declare-fun choose!7601 (LexerInterface!1720 List!11638 Int List!11639) Unit!17894)

(assert (=> d!336503 (= lt!404286 (choose!7601 Lexer!1718 lt!403873 from!787 (rules!9682 thiss!10527)))))

(assert (=> d!336503 (not (isEmpty!7048 (rules!9682 thiss!10527)))))

(assert (=> d!336503 (= (tokensListTwoByTwoPredicateSeparableTokensDropList!50 Lexer!1718 lt!403873 from!787 (rules!9682 thiss!10527)) lt!404286)))

(assert (= (and d!336503 (not res!530908)) b!1174730))

(assert (= (and b!1174730 res!530907) b!1174731))

(assert (= (and d!336503 res!530909) b!1174732))

(assert (= (and b!1174732 res!530910) b!1174733))

(assert (=> d!336503 m!1350179))

(assert (=> d!336503 m!1350179))

(declare-fun m!1350751 () Bool)

(assert (=> d!336503 m!1350751))

(declare-fun m!1350753 () Bool)

(assert (=> d!336503 m!1350753))

(assert (=> d!336503 m!1350181))

(declare-fun m!1350755 () Bool)

(assert (=> b!1174731 m!1350755))

(declare-fun m!1350757 () Bool)

(assert (=> b!1174733 m!1350757))

(assert (=> b!1174732 m!1350179))

(assert (=> b!1174732 m!1350187))

(declare-fun m!1350759 () Bool)

(assert (=> b!1174732 m!1350759))

(declare-fun m!1350761 () Bool)

(assert (=> b!1174732 m!1350761))

(declare-fun m!1350763 () Bool)

(assert (=> b!1174732 m!1350763))

(assert (=> b!1174732 m!1350179))

(declare-fun m!1350765 () Bool)

(assert (=> b!1174732 m!1350765))

(assert (=> b!1174732 m!1350179))

(assert (=> b!1174732 m!1350641))

(declare-fun m!1350767 () Bool)

(assert (=> b!1174730 m!1350767))

(assert (=> b!1174338 d!336503))

(declare-fun d!336517 () Bool)

(declare-fun res!530911 () Bool)

(declare-fun e!753619 () Bool)

(assert (=> d!336517 (=> res!530911 e!753619)))

(assert (=> d!336517 (= res!530911 ((_ is Nil!11614) lt!403867))))

(assert (=> d!336517 (= (forall!3082 lt!403867 lambda!48361) e!753619)))

(declare-fun b!1174737 () Bool)

(declare-fun e!753620 () Bool)

(assert (=> b!1174737 (= e!753619 e!753620)))

(declare-fun res!530912 () Bool)

(assert (=> b!1174737 (=> (not res!530912) (not e!753620))))

(assert (=> b!1174737 (= res!530912 (dynLambda!5144 lambda!48361 (h!17015 lt!403867)))))

(declare-fun b!1174738 () Bool)

(assert (=> b!1174738 (= e!753620 (forall!3082 (t!110982 lt!403867) lambda!48361))))

(assert (= (and d!336517 (not res!530911)) b!1174737))

(assert (= (and b!1174737 res!530912) b!1174738))

(declare-fun b_lambda!35135 () Bool)

(assert (=> (not b_lambda!35135) (not b!1174737)))

(declare-fun m!1350769 () Bool)

(assert (=> b!1174737 m!1350769))

(declare-fun m!1350771 () Bool)

(assert (=> b!1174738 m!1350771))

(assert (=> b!1174338 d!336517))

(declare-fun d!336519 () Bool)

(assert (=> d!336519 (= (separableTokens!156 Lexer!1718 lt!403865 (rules!9682 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!81 Lexer!1718 lt!403865 0 (rules!9682 thiss!10527)))))

(declare-fun bs!286306 () Bool)

(assert (= bs!286306 d!336519))

(assert (=> bs!286306 m!1350189))

(assert (=> b!1174338 d!336519))

(declare-fun d!336557 () Bool)

(declare-fun res!530961 () Bool)

(declare-fun e!753677 () Bool)

(assert (=> d!336557 (=> res!530961 e!753677)))

(assert (=> d!336557 (= res!530961 ((_ is Nil!11614) lt!403867))))

(assert (=> d!336557 (= (subseq!275 lt!403867 lt!403873) e!753677)))

(declare-fun b!1174820 () Bool)

(declare-fun e!753676 () Bool)

(declare-fun e!753679 () Bool)

(assert (=> b!1174820 (= e!753676 e!753679)))

(declare-fun res!530959 () Bool)

(assert (=> b!1174820 (=> res!530959 e!753679)))

(declare-fun e!753678 () Bool)

(assert (=> b!1174820 (= res!530959 e!753678)))

(declare-fun res!530960 () Bool)

(assert (=> b!1174820 (=> (not res!530960) (not e!753678))))

(assert (=> b!1174820 (= res!530960 (= (h!17015 lt!403867) (h!17015 lt!403873)))))

(declare-fun b!1174821 () Bool)

(assert (=> b!1174821 (= e!753678 (subseq!275 (t!110982 lt!403867) (t!110982 lt!403873)))))

(declare-fun b!1174822 () Bool)

(assert (=> b!1174822 (= e!753679 (subseq!275 lt!403867 (t!110982 lt!403873)))))

(declare-fun b!1174819 () Bool)

(assert (=> b!1174819 (= e!753677 e!753676)))

(declare-fun res!530958 () Bool)

(assert (=> b!1174819 (=> (not res!530958) (not e!753676))))

(assert (=> b!1174819 (= res!530958 ((_ is Cons!11614) lt!403873))))

(assert (= (and d!336557 (not res!530961)) b!1174819))

(assert (= (and b!1174819 res!530958) b!1174820))

(assert (= (and b!1174820 res!530960) b!1174821))

(assert (= (and b!1174820 (not res!530959)) b!1174822))

(declare-fun m!1350977 () Bool)

(assert (=> b!1174821 m!1350977))

(declare-fun m!1350979 () Bool)

(assert (=> b!1174822 m!1350979))

(assert (=> b!1174338 d!336557))

(declare-fun d!336559 () Bool)

(assert (=> d!336559 (forall!3082 lt!403867 lambda!48361)))

(declare-fun lt!404355 () Unit!17894)

(assert (=> d!336559 (= lt!404355 (choose!7593 lt!403867 lt!403873 lambda!48361))))

(assert (=> d!336559 (forall!3082 lt!403873 lambda!48361)))

(assert (=> d!336559 (= (lemmaForallSubseq!163 lt!403867 lt!403873 lambda!48361) lt!404355)))

(declare-fun bs!286307 () Bool)

(assert (= bs!286307 d!336559))

(assert (=> bs!286307 m!1350171))

(declare-fun m!1350981 () Bool)

(assert (=> bs!286307 m!1350981))

(assert (=> bs!286307 m!1350265))

(assert (=> b!1174338 d!336559))

(declare-fun bs!286308 () Bool)

(declare-fun d!336561 () Bool)

(assert (= bs!286308 (and d!336561 d!336481)))

(declare-fun lambda!48385 () Int)

(assert (=> bs!286308 (= lambda!48385 lambda!48376)))

(declare-fun bs!286309 () Bool)

(assert (= bs!286309 (and d!336561 d!336421)))

(assert (=> bs!286309 (= lambda!48385 lambda!48368)))

(declare-fun bs!286310 () Bool)

(assert (= bs!286310 (and d!336561 d!336423)))

(assert (=> bs!286310 (= lambda!48385 lambda!48369)))

(declare-fun bs!286311 () Bool)

(assert (= bs!286311 (and d!336561 b!1174732)))

(assert (=> bs!286311 (= lambda!48385 lambda!48383)))

(declare-fun bs!286312 () Bool)

(assert (= bs!286312 (and d!336561 d!336389)))

(assert (=> bs!286312 (= lambda!48385 lambda!48364)))

(declare-fun bs!286313 () Bool)

(assert (= bs!286313 (and d!336561 b!1174332)))

(assert (=> bs!286313 (= lambda!48385 lambda!48361)))

(declare-fun b!1174827 () Bool)

(declare-fun e!753684 () Bool)

(assert (=> b!1174827 (= e!753684 true)))

(declare-fun b!1174826 () Bool)

(declare-fun e!753683 () Bool)

(assert (=> b!1174826 (= e!753683 e!753684)))

(declare-fun b!1174825 () Bool)

(declare-fun e!753682 () Bool)

(assert (=> b!1174825 (= e!753682 e!753683)))

(assert (=> d!336561 e!753682))

(assert (= b!1174826 b!1174827))

(assert (= b!1174825 b!1174826))

(assert (= (and d!336561 ((_ is Cons!11615) (rules!9682 thiss!10527))) b!1174825))

(assert (=> b!1174827 (< (dynLambda!5141 order!7143 (toValue!3126 (transformation!2025 (h!17016 (rules!9682 thiss!10527))))) (dynLambda!5142 order!7145 lambda!48385))))

(assert (=> b!1174827 (< (dynLambda!5143 order!7147 (toChars!2985 (transformation!2025 (h!17016 (rules!9682 thiss!10527))))) (dynLambda!5142 order!7145 lambda!48385))))

(assert (=> d!336561 true))

(declare-fun lt!404356 () Bool)

(assert (=> d!336561 (= lt!404356 (forall!3082 lt!403867 lambda!48385))))

(declare-fun e!753681 () Bool)

(assert (=> d!336561 (= lt!404356 e!753681)))

(declare-fun res!530963 () Bool)

(assert (=> d!336561 (=> res!530963 e!753681)))

(assert (=> d!336561 (= res!530963 (not ((_ is Cons!11614) lt!403867)))))

(assert (=> d!336561 (not (isEmpty!7048 (rules!9682 thiss!10527)))))

(assert (=> d!336561 (= (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) lt!403867) lt!404356)))

(declare-fun b!1174823 () Bool)

(declare-fun e!753680 () Bool)

(assert (=> b!1174823 (= e!753681 e!753680)))

(declare-fun res!530962 () Bool)

(assert (=> b!1174823 (=> (not res!530962) (not e!753680))))

(assert (=> b!1174823 (= res!530962 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) (h!17015 lt!403867)))))

(declare-fun b!1174824 () Bool)

(assert (=> b!1174824 (= e!753680 (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) (t!110982 lt!403867)))))

(assert (= (and d!336561 (not res!530963)) b!1174823))

(assert (= (and b!1174823 res!530962) b!1174824))

(declare-fun m!1350983 () Bool)

(assert (=> d!336561 m!1350983))

(assert (=> d!336561 m!1350181))

(assert (=> b!1174823 m!1350083))

(assert (=> b!1174824 m!1350137))

(assert (=> b!1174338 d!336561))

(declare-fun d!336563 () Bool)

(assert (=> d!336563 (= (inv!15338 (tokens!1670 thiss!10527)) (isBalanced!1079 (c!195883 (tokens!1670 thiss!10527))))))

(declare-fun bs!286314 () Bool)

(assert (= bs!286314 d!336563))

(assert (=> bs!286314 m!1350253))

(assert (=> b!1174339 d!336563))

(declare-fun d!336565 () Bool)

(declare-fun res!530966 () Bool)

(declare-fun e!753687 () Bool)

(assert (=> d!336565 (=> (not res!530966) (not e!753687))))

(declare-fun rulesValid!717 (LexerInterface!1720 List!11639) Bool)

(assert (=> d!336565 (= res!530966 (rulesValid!717 Lexer!1718 (rules!9682 thiss!10527)))))

(assert (=> d!336565 (= (rulesInvariant!1594 Lexer!1718 (rules!9682 thiss!10527)) e!753687)))

(declare-fun b!1174830 () Bool)

(declare-datatypes ((List!11641 0))(
  ( (Nil!11617) (Cons!11617 (h!17018 String!14043) (t!111009 List!11641)) )
))
(declare-fun noDuplicateTag!717 (LexerInterface!1720 List!11639 List!11641) Bool)

(assert (=> b!1174830 (= e!753687 (noDuplicateTag!717 Lexer!1718 (rules!9682 thiss!10527) Nil!11617))))

(assert (= (and d!336565 res!530966) b!1174830))

(declare-fun m!1350985 () Bool)

(assert (=> d!336565 m!1350985))

(declare-fun m!1350987 () Bool)

(assert (=> b!1174830 m!1350987))

(assert (=> b!1174328 d!336565))

(declare-fun d!336567 () Bool)

(declare-fun e!753743 () Bool)

(assert (=> d!336567 e!753743))

(declare-fun res!530989 () Bool)

(assert (=> d!336567 (=> (not res!530989) (not e!753743))))

(assert (=> d!336567 (= res!530989 (rulesInvariant!1594 Lexer!1718 (rules!9682 thiss!10527)))))

(declare-fun Unit!17918 () Unit!17894)

(assert (=> d!336567 (= (lemmaInvariant!212 thiss!10527) Unit!17918)))

(declare-fun b!1174903 () Bool)

(declare-fun res!530990 () Bool)

(assert (=> b!1174903 (=> (not res!530990) (not e!753743))))

(assert (=> b!1174903 (= res!530990 (rulesProduceEachTokenIndividually!758 Lexer!1718 (rules!9682 thiss!10527) (tokens!1670 thiss!10527)))))

(declare-fun b!1174904 () Bool)

(assert (=> b!1174904 (= e!753743 (separableTokens!156 Lexer!1718 (tokens!1670 thiss!10527) (rules!9682 thiss!10527)))))

(assert (= (and d!336567 res!530989) b!1174903))

(assert (= (and b!1174903 res!530990) b!1174904))

(assert (=> d!336567 m!1350133))

(assert (=> b!1174903 m!1350163))

(assert (=> b!1174904 m!1350237))

(assert (=> b!1174328 d!336567))

(declare-fun d!336599 () Bool)

(declare-fun lt!404404 () Bool)

(assert (=> d!336599 (= lt!404404 (forall!3082 (list!4290 lt!403865) lambda!48361))))

(declare-fun forall!3084 (Conc!3813 Int) Bool)

(assert (=> d!336599 (= lt!404404 (forall!3084 (c!195883 lt!403865) lambda!48361))))

(assert (=> d!336599 (= (forall!3081 lt!403865 lambda!48361) lt!404404)))

(declare-fun bs!286346 () Bool)

(assert (= bs!286346 d!336599))

(assert (=> bs!286346 m!1350149))

(assert (=> bs!286346 m!1350149))

(declare-fun m!1351137 () Bool)

(assert (=> bs!286346 m!1351137))

(declare-fun m!1351139 () Bool)

(assert (=> bs!286346 m!1351139))

(assert (=> b!1174329 d!336599))

(declare-fun d!336601 () Bool)

(declare-fun lt!404405 () Bool)

(declare-fun e!753745 () Bool)

(assert (=> d!336601 (= lt!404405 e!753745)))

(declare-fun res!530991 () Bool)

(assert (=> d!336601 (=> (not res!530991) (not e!753745))))

(assert (=> d!336601 (= res!530991 (= (list!4290 (_1!6877 (lex!718 Lexer!1718 (rules!9682 thiss!10527) (print!655 Lexer!1718 (singletonSeq!692 (h!17015 lt!403867)))))) (list!4290 (singletonSeq!692 (h!17015 lt!403867)))))))

(declare-fun e!753744 () Bool)

(assert (=> d!336601 (= lt!404405 e!753744)))

(declare-fun res!530993 () Bool)

(assert (=> d!336601 (=> (not res!530993) (not e!753744))))

(declare-fun lt!404406 () tuple2!12060)

(assert (=> d!336601 (= res!530993 (= (size!9164 (_1!6877 lt!404406)) 1))))

(assert (=> d!336601 (= lt!404406 (lex!718 Lexer!1718 (rules!9682 thiss!10527) (print!655 Lexer!1718 (singletonSeq!692 (h!17015 lt!403867)))))))

(assert (=> d!336601 (not (isEmpty!7048 (rules!9682 thiss!10527)))))

(assert (=> d!336601 (= (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) (h!17015 lt!403867)) lt!404405)))

(declare-fun b!1174905 () Bool)

(declare-fun res!530992 () Bool)

(assert (=> b!1174905 (=> (not res!530992) (not e!753744))))

(assert (=> b!1174905 (= res!530992 (= (apply!2539 (_1!6877 lt!404406) 0) (h!17015 lt!403867)))))

(declare-fun b!1174906 () Bool)

(assert (=> b!1174906 (= e!753744 (isEmpty!7050 (_2!6877 lt!404406)))))

(declare-fun b!1174907 () Bool)

(assert (=> b!1174907 (= e!753745 (isEmpty!7050 (_2!6877 (lex!718 Lexer!1718 (rules!9682 thiss!10527) (print!655 Lexer!1718 (singletonSeq!692 (h!17015 lt!403867)))))))))

(assert (= (and d!336601 res!530993) b!1174905))

(assert (= (and b!1174905 res!530992) b!1174906))

(assert (= (and d!336601 res!530991) b!1174907))

(declare-fun m!1351141 () Bool)

(assert (=> d!336601 m!1351141))

(declare-fun m!1351143 () Bool)

(assert (=> d!336601 m!1351143))

(assert (=> d!336601 m!1350181))

(declare-fun m!1351145 () Bool)

(assert (=> d!336601 m!1351145))

(declare-fun m!1351147 () Bool)

(assert (=> d!336601 m!1351147))

(declare-fun m!1351149 () Bool)

(assert (=> d!336601 m!1351149))

(assert (=> d!336601 m!1351141))

(declare-fun m!1351151 () Bool)

(assert (=> d!336601 m!1351151))

(assert (=> d!336601 m!1351141))

(assert (=> d!336601 m!1351145))

(declare-fun m!1351153 () Bool)

(assert (=> b!1174905 m!1351153))

(declare-fun m!1351155 () Bool)

(assert (=> b!1174906 m!1351155))

(assert (=> b!1174907 m!1351141))

(assert (=> b!1174907 m!1351141))

(assert (=> b!1174907 m!1351145))

(assert (=> b!1174907 m!1351145))

(assert (=> b!1174907 m!1351147))

(declare-fun m!1351157 () Bool)

(assert (=> b!1174907 m!1351157))

(assert (=> b!1174319 d!336601))

(declare-fun d!336603 () Bool)

(declare-fun lt!404409 () Int)

(assert (=> d!336603 (= lt!404409 (size!9167 (list!4290 (tokens!1670 thiss!10527))))))

(declare-fun size!9171 (Conc!3813) Int)

(assert (=> d!336603 (= lt!404409 (size!9171 (c!195883 (tokens!1670 thiss!10527))))))

(assert (=> d!336603 (= (size!9164 (tokens!1670 thiss!10527)) lt!404409)))

(declare-fun bs!286347 () Bool)

(assert (= bs!286347 d!336603))

(assert (=> bs!286347 m!1350167))

(assert (=> bs!286347 m!1350167))

(declare-fun m!1351159 () Bool)

(assert (=> bs!286347 m!1351159))

(declare-fun m!1351161 () Bool)

(assert (=> bs!286347 m!1351161))

(assert (=> b!1174330 d!336603))

(declare-fun d!336605 () Bool)

(declare-fun lt!404410 () Bool)

(declare-fun e!753747 () Bool)

(assert (=> d!336605 (= lt!404410 e!753747)))

(declare-fun res!530994 () Bool)

(assert (=> d!336605 (=> (not res!530994) (not e!753747))))

(assert (=> d!336605 (= res!530994 (= (list!4290 (_1!6877 (lex!718 Lexer!1718 (rules!9682 thiss!10527) (print!655 Lexer!1718 (singletonSeq!692 (h!17015 lt!403879)))))) (list!4290 (singletonSeq!692 (h!17015 lt!403879)))))))

(declare-fun e!753746 () Bool)

(assert (=> d!336605 (= lt!404410 e!753746)))

(declare-fun res!530996 () Bool)

(assert (=> d!336605 (=> (not res!530996) (not e!753746))))

(declare-fun lt!404411 () tuple2!12060)

(assert (=> d!336605 (= res!530996 (= (size!9164 (_1!6877 lt!404411)) 1))))

(assert (=> d!336605 (= lt!404411 (lex!718 Lexer!1718 (rules!9682 thiss!10527) (print!655 Lexer!1718 (singletonSeq!692 (h!17015 lt!403879)))))))

(assert (=> d!336605 (not (isEmpty!7048 (rules!9682 thiss!10527)))))

(assert (=> d!336605 (= (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) (h!17015 lt!403879)) lt!404410)))

(declare-fun b!1174908 () Bool)

(declare-fun res!530995 () Bool)

(assert (=> b!1174908 (=> (not res!530995) (not e!753746))))

(assert (=> b!1174908 (= res!530995 (= (apply!2539 (_1!6877 lt!404411) 0) (h!17015 lt!403879)))))

(declare-fun b!1174909 () Bool)

(assert (=> b!1174909 (= e!753746 (isEmpty!7050 (_2!6877 lt!404411)))))

(declare-fun b!1174910 () Bool)

(assert (=> b!1174910 (= e!753747 (isEmpty!7050 (_2!6877 (lex!718 Lexer!1718 (rules!9682 thiss!10527) (print!655 Lexer!1718 (singletonSeq!692 (h!17015 lt!403879)))))))))

(assert (= (and d!336605 res!530996) b!1174908))

(assert (= (and b!1174908 res!530995) b!1174909))

(assert (= (and d!336605 res!530994) b!1174910))

(declare-fun m!1351163 () Bool)

(assert (=> d!336605 m!1351163))

(declare-fun m!1351165 () Bool)

(assert (=> d!336605 m!1351165))

(assert (=> d!336605 m!1350181))

(declare-fun m!1351167 () Bool)

(assert (=> d!336605 m!1351167))

(declare-fun m!1351169 () Bool)

(assert (=> d!336605 m!1351169))

(declare-fun m!1351171 () Bool)

(assert (=> d!336605 m!1351171))

(assert (=> d!336605 m!1351163))

(declare-fun m!1351173 () Bool)

(assert (=> d!336605 m!1351173))

(assert (=> d!336605 m!1351163))

(assert (=> d!336605 m!1351167))

(declare-fun m!1351175 () Bool)

(assert (=> b!1174908 m!1351175))

(declare-fun m!1351177 () Bool)

(assert (=> b!1174909 m!1351177))

(assert (=> b!1174910 m!1351163))

(assert (=> b!1174910 m!1351163))

(assert (=> b!1174910 m!1351167))

(assert (=> b!1174910 m!1351167))

(assert (=> b!1174910 m!1351169))

(declare-fun m!1351179 () Bool)

(assert (=> b!1174910 m!1351179))

(assert (=> b!1174331 d!336605))

(declare-fun d!336607 () Bool)

(declare-fun c!195947 () Bool)

(assert (=> d!336607 (= c!195947 ((_ is Node!3813) (c!195883 (tokens!1670 thiss!10527))))))

(declare-fun e!753752 () Bool)

(assert (=> d!336607 (= (inv!15336 (c!195883 (tokens!1670 thiss!10527))) e!753752)))

(declare-fun b!1174917 () Bool)

(declare-fun inv!15345 (Conc!3813) Bool)

(assert (=> b!1174917 (= e!753752 (inv!15345 (c!195883 (tokens!1670 thiss!10527))))))

(declare-fun b!1174918 () Bool)

(declare-fun e!753753 () Bool)

(assert (=> b!1174918 (= e!753752 e!753753)))

(declare-fun res!530999 () Bool)

(assert (=> b!1174918 (= res!530999 (not ((_ is Leaf!5836) (c!195883 (tokens!1670 thiss!10527)))))))

(assert (=> b!1174918 (=> res!530999 e!753753)))

(declare-fun b!1174919 () Bool)

(declare-fun inv!15346 (Conc!3813) Bool)

(assert (=> b!1174919 (= e!753753 (inv!15346 (c!195883 (tokens!1670 thiss!10527))))))

(assert (= (and d!336607 c!195947) b!1174917))

(assert (= (and d!336607 (not c!195947)) b!1174918))

(assert (= (and b!1174918 (not res!530999)) b!1174919))

(declare-fun m!1351181 () Bool)

(assert (=> b!1174917 m!1351181))

(declare-fun m!1351183 () Bool)

(assert (=> b!1174919 m!1351183))

(assert (=> b!1174320 d!336607))

(declare-fun b!1174920 () Bool)

(declare-fun e!753758 () Bool)

(declare-fun e!753755 () Bool)

(assert (=> b!1174920 (= e!753758 e!753755)))

(declare-fun res!531001 () Bool)

(assert (=> b!1174920 (=> (not res!531001) (not e!753755))))

(assert (=> b!1174920 (= res!531001 (separableTokensPredicate!142 Lexer!1718 (apply!2539 (tokens!1670 thiss!10527) 0) (apply!2539 (tokens!1670 thiss!10527) (+ 0 1)) (rules!9682 thiss!10527)))))

(declare-fun lt!404419 () Unit!17894)

(declare-fun Unit!17919 () Unit!17894)

(assert (=> b!1174920 (= lt!404419 Unit!17919)))

(assert (=> b!1174920 (> (size!9165 (charsOf!1080 (apply!2539 (tokens!1670 thiss!10527) (+ 0 1)))) 0)))

(declare-fun lt!404438 () Unit!17894)

(declare-fun Unit!17920 () Unit!17894)

(assert (=> b!1174920 (= lt!404438 Unit!17920)))

(assert (=> b!1174920 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) (apply!2539 (tokens!1670 thiss!10527) (+ 0 1)))))

(declare-fun lt!404428 () Unit!17894)

(declare-fun Unit!17921 () Unit!17894)

(assert (=> b!1174920 (= lt!404428 Unit!17921)))

(assert (=> b!1174920 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) (apply!2539 (tokens!1670 thiss!10527) 0))))

(declare-fun lt!404431 () Unit!17894)

(declare-fun lt!404422 () Unit!17894)

(assert (=> b!1174920 (= lt!404431 lt!404422)))

(declare-fun lt!404417 () Token!3712)

(assert (=> b!1174920 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) lt!404417)))

(declare-fun lt!404426 () List!11638)

(assert (=> b!1174920 (= lt!404422 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!301 Lexer!1718 (rules!9682 thiss!10527) lt!404426 lt!404417))))

(assert (=> b!1174920 (= lt!404417 (apply!2539 (tokens!1670 thiss!10527) (+ 0 1)))))

(assert (=> b!1174920 (= lt!404426 (list!4290 (tokens!1670 thiss!10527)))))

(declare-fun lt!404434 () Unit!17894)

(declare-fun lt!404420 () Unit!17894)

(assert (=> b!1174920 (= lt!404434 lt!404420)))

(declare-fun lt!404429 () Token!3712)

(assert (=> b!1174920 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) lt!404429)))

(declare-fun lt!404444 () List!11638)

(assert (=> b!1174920 (= lt!404420 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!301 Lexer!1718 (rules!9682 thiss!10527) lt!404444 lt!404429))))

(assert (=> b!1174920 (= lt!404429 (apply!2539 (tokens!1670 thiss!10527) 0))))

(assert (=> b!1174920 (= lt!404444 (list!4290 (tokens!1670 thiss!10527)))))

(declare-fun lt!404423 () Unit!17894)

(declare-fun lt!404427 () Unit!17894)

(assert (=> b!1174920 (= lt!404423 lt!404427)))

(declare-fun lt!404441 () List!11638)

(declare-fun lt!404435 () Int)

(assert (=> b!1174920 (= (tail!1698 (drop!497 lt!404441 lt!404435)) (drop!497 lt!404441 (+ lt!404435 1)))))

(assert (=> b!1174920 (= lt!404427 (lemmaDropTail!371 lt!404441 lt!404435))))

(assert (=> b!1174920 (= lt!404435 (+ 0 1))))

(assert (=> b!1174920 (= lt!404441 (list!4290 (tokens!1670 thiss!10527)))))

(declare-fun lt!404430 () Unit!17894)

(declare-fun lt!404412 () Unit!17894)

(assert (=> b!1174920 (= lt!404430 lt!404412)))

(declare-fun lt!404442 () List!11638)

(assert (=> b!1174920 (= (tail!1698 (drop!497 lt!404442 0)) (drop!497 lt!404442 (+ 0 1)))))

(assert (=> b!1174920 (= lt!404412 (lemmaDropTail!371 lt!404442 0))))

(assert (=> b!1174920 (= lt!404442 (list!4290 (tokens!1670 thiss!10527)))))

(declare-fun lt!404439 () Unit!17894)

(declare-fun lt!404433 () Unit!17894)

(assert (=> b!1174920 (= lt!404439 lt!404433)))

(declare-fun lt!404443 () List!11638)

(declare-fun lt!404440 () Int)

(assert (=> b!1174920 (= (head!2114 (drop!497 lt!404443 lt!404440)) (apply!2540 lt!404443 lt!404440))))

(assert (=> b!1174920 (= lt!404433 (lemmaDropApply!383 lt!404443 lt!404440))))

(assert (=> b!1174920 (= lt!404440 (+ 0 1))))

(assert (=> b!1174920 (= lt!404443 (list!4290 (tokens!1670 thiss!10527)))))

(declare-fun lt!404415 () Unit!17894)

(declare-fun lt!404414 () Unit!17894)

(assert (=> b!1174920 (= lt!404415 lt!404414)))

(declare-fun lt!404424 () List!11638)

(assert (=> b!1174920 (= (head!2114 (drop!497 lt!404424 0)) (apply!2540 lt!404424 0))))

(assert (=> b!1174920 (= lt!404414 (lemmaDropApply!383 lt!404424 0))))

(assert (=> b!1174920 (= lt!404424 (list!4290 (tokens!1670 thiss!10527)))))

(declare-fun b!1174921 () Bool)

(declare-fun res!531006 () Bool)

(declare-fun e!753756 () Bool)

(assert (=> b!1174921 (=> (not res!531006) (not e!753756))))

(declare-fun lt!404418 () List!11638)

(declare-fun lt!404432 () List!11638)

(assert (=> b!1174921 (= res!531006 (subseq!275 lt!404418 lt!404432))))

(declare-fun d!336609 () Bool)

(declare-fun lt!404437 () Bool)

(assert (=> d!336609 (= lt!404437 (tokensListTwoByTwoPredicateSeparableList!116 Lexer!1718 (dropList!332 (tokens!1670 thiss!10527) 0) (rules!9682 thiss!10527)))))

(declare-fun lt!404436 () Unit!17894)

(declare-fun lt!404413 () Unit!17894)

(assert (=> d!336609 (= lt!404436 lt!404413)))

(assert (=> d!336609 (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) lt!404418)))

(assert (=> d!336609 (= lt!404413 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!38 Lexer!1718 (rules!9682 thiss!10527) lt!404432 lt!404418))))

(assert (=> d!336609 e!753756))

(declare-fun res!531004 () Bool)

(assert (=> d!336609 (=> (not res!531004) (not e!753756))))

(assert (=> d!336609 (= res!531004 ((_ is Lexer!1718) Lexer!1718))))

(assert (=> d!336609 (= lt!404418 (dropList!332 (tokens!1670 thiss!10527) 0))))

(assert (=> d!336609 (= lt!404432 (list!4290 (tokens!1670 thiss!10527)))))

(declare-fun lt!404421 () Unit!17894)

(declare-fun lt!404416 () Unit!17894)

(assert (=> d!336609 (= lt!404421 lt!404416)))

(declare-fun lt!404425 () List!11638)

(assert (=> d!336609 (subseq!275 (drop!497 lt!404425 0) lt!404425)))

(assert (=> d!336609 (= lt!404416 (lemmaDropSubSeq!38 lt!404425 0))))

(declare-fun e!753754 () Bool)

(assert (=> d!336609 e!753754))

(declare-fun res!531002 () Bool)

(assert (=> d!336609 (=> (not res!531002) (not e!753754))))

(assert (=> d!336609 (= res!531002 (>= 0 0))))

(assert (=> d!336609 (= lt!404425 (list!4290 (tokens!1670 thiss!10527)))))

(assert (=> d!336609 (= lt!404437 e!753758)))

(declare-fun res!531000 () Bool)

(assert (=> d!336609 (=> res!531000 e!753758)))

(assert (=> d!336609 (= res!531000 (not (< 0 (- (size!9164 (tokens!1670 thiss!10527)) 1))))))

(declare-fun e!753757 () Bool)

(assert (=> d!336609 e!753757))

(declare-fun res!531005 () Bool)

(assert (=> d!336609 (=> (not res!531005) (not e!753757))))

(assert (=> d!336609 (= res!531005 (>= 0 0))))

(assert (=> d!336609 (= (tokensListTwoByTwoPredicateSeparable!81 Lexer!1718 (tokens!1670 thiss!10527) 0 (rules!9682 thiss!10527)) lt!404437)))

(declare-fun b!1174922 () Bool)

(assert (=> b!1174922 (= e!753756 (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) lt!404432))))

(declare-fun b!1174923 () Bool)

(declare-fun res!531007 () Bool)

(assert (=> b!1174923 (=> (not res!531007) (not e!753756))))

(assert (=> b!1174923 (= res!531007 (rulesInvariant!1594 Lexer!1718 (rules!9682 thiss!10527)))))

(declare-fun b!1174924 () Bool)

(assert (=> b!1174924 (= e!753754 (<= 0 (size!9167 lt!404425)))))

(declare-fun b!1174925 () Bool)

(assert (=> b!1174925 (= e!753755 (tokensListTwoByTwoPredicateSeparable!81 Lexer!1718 (tokens!1670 thiss!10527) (+ 0 1) (rules!9682 thiss!10527)))))

(declare-fun b!1174926 () Bool)

(assert (=> b!1174926 (= e!753757 (<= 0 (size!9164 (tokens!1670 thiss!10527))))))

(declare-fun b!1174927 () Bool)

(declare-fun res!531003 () Bool)

(assert (=> b!1174927 (=> (not res!531003) (not e!753756))))

(assert (=> b!1174927 (= res!531003 (not (isEmpty!7048 (rules!9682 thiss!10527))))))

(assert (= (and d!336609 res!531005) b!1174926))

(assert (= (and d!336609 (not res!531000)) b!1174920))

(assert (= (and b!1174920 res!531001) b!1174925))

(assert (= (and d!336609 res!531002) b!1174924))

(assert (= (and d!336609 res!531004) b!1174927))

(assert (= (and b!1174927 res!531003) b!1174923))

(assert (= (and b!1174923 res!531007) b!1174921))

(assert (= (and b!1174921 res!531006) b!1174922))

(declare-fun m!1351185 () Bool)

(assert (=> b!1174922 m!1351185))

(declare-fun m!1351187 () Bool)

(assert (=> b!1174920 m!1351187))

(declare-fun m!1351189 () Bool)

(assert (=> b!1174920 m!1351189))

(declare-fun m!1351191 () Bool)

(assert (=> b!1174920 m!1351191))

(assert (=> b!1174920 m!1350101))

(declare-fun m!1351193 () Bool)

(assert (=> b!1174920 m!1351193))

(assert (=> b!1174920 m!1350101))

(declare-fun m!1351195 () Bool)

(assert (=> b!1174920 m!1351195))

(declare-fun m!1351197 () Bool)

(assert (=> b!1174920 m!1351197))

(declare-fun m!1351199 () Bool)

(assert (=> b!1174920 m!1351199))

(declare-fun m!1351201 () Bool)

(assert (=> b!1174920 m!1351201))

(assert (=> b!1174920 m!1351189))

(declare-fun m!1351203 () Bool)

(assert (=> b!1174920 m!1351203))

(declare-fun m!1351205 () Bool)

(assert (=> b!1174920 m!1351205))

(declare-fun m!1351207 () Bool)

(assert (=> b!1174920 m!1351207))

(declare-fun m!1351209 () Bool)

(assert (=> b!1174920 m!1351209))

(declare-fun m!1351211 () Bool)

(assert (=> b!1174920 m!1351211))

(declare-fun m!1351213 () Bool)

(assert (=> b!1174920 m!1351213))

(declare-fun m!1351215 () Bool)

(assert (=> b!1174920 m!1351215))

(declare-fun m!1351217 () Bool)

(assert (=> b!1174920 m!1351217))

(assert (=> b!1174920 m!1350167))

(declare-fun m!1351219 () Bool)

(assert (=> b!1174920 m!1351219))

(assert (=> b!1174920 m!1350101))

(assert (=> b!1174920 m!1351197))

(declare-fun m!1351221 () Bool)

(assert (=> b!1174920 m!1351221))

(assert (=> b!1174920 m!1351209))

(declare-fun m!1351223 () Bool)

(assert (=> b!1174920 m!1351223))

(assert (=> b!1174920 m!1351197))

(declare-fun m!1351225 () Bool)

(assert (=> b!1174920 m!1351225))

(declare-fun m!1351227 () Bool)

(assert (=> b!1174920 m!1351227))

(assert (=> b!1174920 m!1351197))

(assert (=> b!1174920 m!1351225))

(declare-fun m!1351229 () Bool)

(assert (=> b!1174920 m!1351229))

(declare-fun m!1351231 () Bool)

(assert (=> b!1174920 m!1351231))

(assert (=> b!1174920 m!1351201))

(declare-fun m!1351233 () Bool)

(assert (=> b!1174920 m!1351233))

(assert (=> b!1174920 m!1351211))

(declare-fun m!1351235 () Bool)

(assert (=> b!1174920 m!1351235))

(declare-fun m!1351237 () Bool)

(assert (=> b!1174920 m!1351237))

(declare-fun m!1351239 () Bool)

(assert (=> b!1174925 m!1351239))

(assert (=> b!1174923 m!1350133))

(assert (=> b!1174926 m!1350127))

(assert (=> b!1174927 m!1350181))

(declare-fun m!1351241 () Bool)

(assert (=> d!336609 m!1351241))

(declare-fun m!1351243 () Bool)

(assert (=> d!336609 m!1351243))

(declare-fun m!1351245 () Bool)

(assert (=> d!336609 m!1351245))

(declare-fun m!1351247 () Bool)

(assert (=> d!336609 m!1351247))

(assert (=> d!336609 m!1350167))

(assert (=> d!336609 m!1350127))

(declare-fun m!1351249 () Bool)

(assert (=> d!336609 m!1351249))

(declare-fun m!1351251 () Bool)

(assert (=> d!336609 m!1351251))

(assert (=> d!336609 m!1351245))

(assert (=> d!336609 m!1351243))

(declare-fun m!1351253 () Bool)

(assert (=> d!336609 m!1351253))

(declare-fun m!1351255 () Bool)

(assert (=> b!1174921 m!1351255))

(declare-fun m!1351257 () Bool)

(assert (=> b!1174924 m!1351257))

(assert (=> b!1174321 d!336609))

(declare-fun bs!286348 () Bool)

(declare-fun d!336611 () Bool)

(assert (= bs!286348 (and d!336611 d!336481)))

(declare-fun lambda!48393 () Int)

(assert (=> bs!286348 (= lambda!48393 lambda!48376)))

(declare-fun bs!286349 () Bool)

(assert (= bs!286349 (and d!336611 d!336421)))

(assert (=> bs!286349 (= lambda!48393 lambda!48368)))

(declare-fun bs!286350 () Bool)

(assert (= bs!286350 (and d!336611 d!336423)))

(assert (=> bs!286350 (= lambda!48393 lambda!48369)))

(declare-fun bs!286351 () Bool)

(assert (= bs!286351 (and d!336611 b!1174732)))

(assert (=> bs!286351 (= lambda!48393 lambda!48383)))

(declare-fun bs!286352 () Bool)

(assert (= bs!286352 (and d!336611 d!336389)))

(assert (=> bs!286352 (= lambda!48393 lambda!48364)))

(declare-fun bs!286353 () Bool)

(assert (= bs!286353 (and d!336611 d!336561)))

(assert (=> bs!286353 (= lambda!48393 lambda!48385)))

(declare-fun bs!286354 () Bool)

(assert (= bs!286354 (and d!336611 b!1174332)))

(assert (=> bs!286354 (= lambda!48393 lambda!48361)))

(declare-fun b!1174933 () Bool)

(declare-fun e!753764 () Bool)

(assert (=> b!1174933 (= e!753764 true)))

(declare-fun b!1174932 () Bool)

(declare-fun e!753763 () Bool)

(assert (=> b!1174932 (= e!753763 e!753764)))

(declare-fun b!1174931 () Bool)

(declare-fun e!753762 () Bool)

(assert (=> b!1174931 (= e!753762 e!753763)))

(assert (=> d!336611 e!753762))

(assert (= b!1174932 b!1174933))

(assert (= b!1174931 b!1174932))

(assert (= (and d!336611 ((_ is Cons!11615) (rules!9682 thiss!10527))) b!1174931))

(assert (=> b!1174933 (< (dynLambda!5141 order!7143 (toValue!3126 (transformation!2025 (h!17016 (rules!9682 thiss!10527))))) (dynLambda!5142 order!7145 lambda!48393))))

(assert (=> b!1174933 (< (dynLambda!5143 order!7147 (toChars!2985 (transformation!2025 (h!17016 (rules!9682 thiss!10527))))) (dynLambda!5142 order!7145 lambda!48393))))

(assert (=> d!336611 true))

(declare-fun e!753761 () Bool)

(assert (=> d!336611 e!753761))

(declare-fun res!531010 () Bool)

(assert (=> d!336611 (=> (not res!531010) (not e!753761))))

(declare-fun lt!404447 () Bool)

(assert (=> d!336611 (= res!531010 (= lt!404447 (forall!3082 (list!4290 (tokens!1670 thiss!10527)) lambda!48393)))))

(assert (=> d!336611 (= lt!404447 (forall!3081 (tokens!1670 thiss!10527) lambda!48393))))

(assert (=> d!336611 (not (isEmpty!7048 (rules!9682 thiss!10527)))))

(assert (=> d!336611 (= (rulesProduceEachTokenIndividually!758 Lexer!1718 (rules!9682 thiss!10527) (tokens!1670 thiss!10527)) lt!404447)))

(declare-fun b!1174930 () Bool)

(assert (=> b!1174930 (= e!753761 (= lt!404447 (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) (list!4290 (tokens!1670 thiss!10527)))))))

(assert (= (and d!336611 res!531010) b!1174930))

(assert (=> d!336611 m!1350167))

(assert (=> d!336611 m!1350167))

(declare-fun m!1351259 () Bool)

(assert (=> d!336611 m!1351259))

(declare-fun m!1351261 () Bool)

(assert (=> d!336611 m!1351261))

(assert (=> d!336611 m!1350181))

(assert (=> b!1174930 m!1350167))

(assert (=> b!1174930 m!1350167))

(declare-fun m!1351263 () Bool)

(assert (=> b!1174930 m!1351263))

(assert (=> b!1174332 d!336611))

(declare-fun d!336613 () Bool)

(declare-fun lt!404448 () Bool)

(assert (=> d!336613 (= lt!404448 (forall!3082 (list!4290 (tokens!1670 thiss!10527)) lambda!48361))))

(assert (=> d!336613 (= lt!404448 (forall!3084 (c!195883 (tokens!1670 thiss!10527)) lambda!48361))))

(assert (=> d!336613 (= (forall!3081 (tokens!1670 thiss!10527) lambda!48361) lt!404448)))

(declare-fun bs!286355 () Bool)

(assert (= bs!286355 d!336613))

(assert (=> bs!286355 m!1350167))

(assert (=> bs!286355 m!1350167))

(declare-fun m!1351265 () Bool)

(assert (=> bs!286355 m!1351265))

(declare-fun m!1351267 () Bool)

(assert (=> bs!286355 m!1351267))

(assert (=> b!1174332 d!336613))

(declare-fun bs!286356 () Bool)

(declare-fun d!336615 () Bool)

(assert (= bs!286356 (and d!336615 d!336481)))

(declare-fun lambda!48394 () Int)

(assert (=> bs!286356 (= lambda!48394 lambda!48376)))

(declare-fun bs!286357 () Bool)

(assert (= bs!286357 (and d!336615 d!336421)))

(assert (=> bs!286357 (= lambda!48394 lambda!48368)))

(declare-fun bs!286358 () Bool)

(assert (= bs!286358 (and d!336615 d!336423)))

(assert (=> bs!286358 (= lambda!48394 lambda!48369)))

(declare-fun bs!286359 () Bool)

(assert (= bs!286359 (and d!336615 d!336611)))

(assert (=> bs!286359 (= lambda!48394 lambda!48393)))

(declare-fun bs!286360 () Bool)

(assert (= bs!286360 (and d!336615 b!1174732)))

(assert (=> bs!286360 (= lambda!48394 lambda!48383)))

(declare-fun bs!286361 () Bool)

(assert (= bs!286361 (and d!336615 d!336389)))

(assert (=> bs!286361 (= lambda!48394 lambda!48364)))

(declare-fun bs!286362 () Bool)

(assert (= bs!286362 (and d!336615 d!336561)))

(assert (=> bs!286362 (= lambda!48394 lambda!48385)))

(declare-fun bs!286363 () Bool)

(assert (= bs!286363 (and d!336615 b!1174332)))

(assert (=> bs!286363 (= lambda!48394 lambda!48361)))

(declare-fun b!1174938 () Bool)

(declare-fun e!753769 () Bool)

(assert (=> b!1174938 (= e!753769 true)))

(declare-fun b!1174937 () Bool)

(declare-fun e!753768 () Bool)

(assert (=> b!1174937 (= e!753768 e!753769)))

(declare-fun b!1174936 () Bool)

(declare-fun e!753767 () Bool)

(assert (=> b!1174936 (= e!753767 e!753768)))

(assert (=> d!336615 e!753767))

(assert (= b!1174937 b!1174938))

(assert (= b!1174936 b!1174937))

(assert (= (and d!336615 ((_ is Cons!11615) (rules!9682 thiss!10527))) b!1174936))

(assert (=> b!1174938 (< (dynLambda!5141 order!7143 (toValue!3126 (transformation!2025 (h!17016 (rules!9682 thiss!10527))))) (dynLambda!5142 order!7145 lambda!48394))))

(assert (=> b!1174938 (< (dynLambda!5143 order!7147 (toChars!2985 (transformation!2025 (h!17016 (rules!9682 thiss!10527))))) (dynLambda!5142 order!7145 lambda!48394))))

(assert (=> d!336615 true))

(declare-fun lt!404449 () Bool)

(assert (=> d!336615 (= lt!404449 (forall!3082 lt!403873 lambda!48394))))

(declare-fun e!753766 () Bool)

(assert (=> d!336615 (= lt!404449 e!753766)))

(declare-fun res!531012 () Bool)

(assert (=> d!336615 (=> res!531012 e!753766)))

(assert (=> d!336615 (= res!531012 (not ((_ is Cons!11614) lt!403873)))))

(assert (=> d!336615 (not (isEmpty!7048 (rules!9682 thiss!10527)))))

(assert (=> d!336615 (= (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) lt!403873) lt!404449)))

(declare-fun b!1174934 () Bool)

(declare-fun e!753765 () Bool)

(assert (=> b!1174934 (= e!753766 e!753765)))

(declare-fun res!531011 () Bool)

(assert (=> b!1174934 (=> (not res!531011) (not e!753765))))

(assert (=> b!1174934 (= res!531011 (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) (h!17015 lt!403873)))))

(declare-fun b!1174935 () Bool)

(assert (=> b!1174935 (= e!753765 (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) (t!110982 lt!403873)))))

(assert (= (and d!336615 (not res!531012)) b!1174934))

(assert (= (and b!1174934 res!531011) b!1174935))

(declare-fun m!1351269 () Bool)

(assert (=> d!336615 m!1351269))

(assert (=> d!336615 m!1350181))

(assert (=> b!1174934 m!1350169))

(assert (=> b!1174935 m!1350157))

(assert (=> b!1174332 d!336615))

(declare-fun d!336617 () Bool)

(assert (=> d!336617 (= (list!4290 (tokens!1670 thiss!10527)) (list!4292 (c!195883 (tokens!1670 thiss!10527))))))

(declare-fun bs!286364 () Bool)

(assert (= bs!286364 d!336617))

(declare-fun m!1351271 () Bool)

(assert (=> bs!286364 m!1351271))

(assert (=> b!1174332 d!336617))

(declare-fun bs!286365 () Bool)

(declare-fun d!336619 () Bool)

(assert (= bs!286365 (and d!336619 d!336481)))

(declare-fun lambda!48395 () Int)

(assert (=> bs!286365 (= lambda!48395 lambda!48376)))

(declare-fun bs!286366 () Bool)

(assert (= bs!286366 (and d!336619 d!336421)))

(assert (=> bs!286366 (= lambda!48395 lambda!48368)))

(declare-fun bs!286367 () Bool)

(assert (= bs!286367 (and d!336619 d!336611)))

(assert (=> bs!286367 (= lambda!48395 lambda!48393)))

(declare-fun bs!286368 () Bool)

(assert (= bs!286368 (and d!336619 b!1174732)))

(assert (=> bs!286368 (= lambda!48395 lambda!48383)))

(declare-fun bs!286369 () Bool)

(assert (= bs!286369 (and d!336619 d!336389)))

(assert (=> bs!286369 (= lambda!48395 lambda!48364)))

(declare-fun bs!286370 () Bool)

(assert (= bs!286370 (and d!336619 d!336561)))

(assert (=> bs!286370 (= lambda!48395 lambda!48385)))

(declare-fun bs!286371 () Bool)

(assert (= bs!286371 (and d!336619 b!1174332)))

(assert (=> bs!286371 (= lambda!48395 lambda!48361)))

(declare-fun bs!286372 () Bool)

(assert (= bs!286372 (and d!336619 d!336615)))

(assert (=> bs!286372 (= lambda!48395 lambda!48394)))

(declare-fun bs!286373 () Bool)

(assert (= bs!286373 (and d!336619 d!336423)))

(assert (=> bs!286373 (= lambda!48395 lambda!48369)))

(declare-fun b!1174942 () Bool)

(declare-fun e!753773 () Bool)

(assert (=> b!1174942 (= e!753773 true)))

(declare-fun b!1174941 () Bool)

(declare-fun e!753772 () Bool)

(assert (=> b!1174941 (= e!753772 e!753773)))

(declare-fun b!1174940 () Bool)

(declare-fun e!753771 () Bool)

(assert (=> b!1174940 (= e!753771 e!753772)))

(assert (=> d!336619 e!753771))

(assert (= b!1174941 b!1174942))

(assert (= b!1174940 b!1174941))

(assert (= (and d!336619 ((_ is Cons!11615) (rules!9682 thiss!10527))) b!1174940))

(assert (=> b!1174942 (< (dynLambda!5141 order!7143 (toValue!3126 (transformation!2025 (h!17016 (rules!9682 thiss!10527))))) (dynLambda!5142 order!7145 lambda!48395))))

(assert (=> b!1174942 (< (dynLambda!5143 order!7147 (toChars!2985 (transformation!2025 (h!17016 (rules!9682 thiss!10527))))) (dynLambda!5142 order!7145 lambda!48395))))

(assert (=> d!336619 true))

(declare-fun e!753770 () Bool)

(assert (=> d!336619 e!753770))

(declare-fun res!531013 () Bool)

(assert (=> d!336619 (=> (not res!531013) (not e!753770))))

(declare-fun lt!404450 () Bool)

(assert (=> d!336619 (= res!531013 (= lt!404450 (forall!3082 (list!4290 lt!403865) lambda!48395)))))

(assert (=> d!336619 (= lt!404450 (forall!3081 lt!403865 lambda!48395))))

(assert (=> d!336619 (not (isEmpty!7048 (rules!9682 thiss!10527)))))

(assert (=> d!336619 (= (rulesProduceEachTokenIndividually!758 Lexer!1718 (rules!9682 thiss!10527) lt!403865) lt!404450)))

(declare-fun b!1174939 () Bool)

(assert (=> b!1174939 (= e!753770 (= lt!404450 (rulesProduceEachTokenIndividuallyList!586 Lexer!1718 (rules!9682 thiss!10527) (list!4290 lt!403865))))))

(assert (= (and d!336619 res!531013) b!1174939))

(assert (=> d!336619 m!1350149))

(assert (=> d!336619 m!1350149))

(declare-fun m!1351273 () Bool)

(assert (=> d!336619 m!1351273))

(declare-fun m!1351275 () Bool)

(assert (=> d!336619 m!1351275))

(assert (=> d!336619 m!1350181))

(assert (=> b!1174939 m!1350149))

(assert (=> b!1174939 m!1350149))

(declare-fun m!1351277 () Bool)

(assert (=> b!1174939 m!1351277))

(assert (=> b!1174333 d!336619))

(assert (=> b!1174333 d!336599))

(declare-fun d!336621 () Bool)

(declare-fun lt!404453 () Int)

(declare-fun size!9172 (List!11637) Int)

(declare-fun list!4294 (BalanceConc!7646) List!11637)

(assert (=> d!336621 (= lt!404453 (size!9172 (list!4294 (charsOf!1080 lt!403886))))))

(declare-fun size!9173 (Conc!3812) Int)

(assert (=> d!336621 (= lt!404453 (size!9173 (c!195882 (charsOf!1080 lt!403886))))))

(assert (=> d!336621 (= (size!9165 (charsOf!1080 lt!403886)) lt!404453)))

(declare-fun bs!286374 () Bool)

(assert (= bs!286374 d!336621))

(assert (=> bs!286374 m!1350077))

(declare-fun m!1351279 () Bool)

(assert (=> bs!286374 m!1351279))

(assert (=> bs!286374 m!1351279))

(declare-fun m!1351281 () Bool)

(assert (=> bs!286374 m!1351281))

(declare-fun m!1351283 () Bool)

(assert (=> bs!286374 m!1351283))

(assert (=> b!1174322 d!336621))

(declare-fun d!336623 () Bool)

(declare-fun lt!404456 () BalanceConc!7646)

(assert (=> d!336623 (= (list!4294 lt!404456) (originalCharacters!2579 lt!403886))))

(declare-fun dynLambda!5146 (Int TokenValue!2091) BalanceConc!7646)

(assert (=> d!336623 (= lt!404456 (dynLambda!5146 (toChars!2985 (transformation!2025 (rule!3446 lt!403886))) (value!65709 lt!403886)))))

(assert (=> d!336623 (= (charsOf!1080 lt!403886) lt!404456)))

(declare-fun b_lambda!35141 () Bool)

(assert (=> (not b_lambda!35141) (not d!336623)))

(declare-fun bs!286375 () Bool)

(assert (= bs!286375 d!336623))

(declare-fun m!1351285 () Bool)

(assert (=> bs!286375 m!1351285))

(declare-fun m!1351287 () Bool)

(assert (=> bs!286375 m!1351287))

(assert (=> b!1174322 d!336623))

(declare-fun b!1174953 () Bool)

(declare-fun b_free!27889 () Bool)

(declare-fun b_next!28593 () Bool)

(assert (=> b!1174953 (= b_free!27889 (not b_next!28593))))

(declare-fun tp!334949 () Bool)

(declare-fun b_and!80809 () Bool)

(assert (=> b!1174953 (= tp!334949 b_and!80809)))

(declare-fun b_free!27891 () Bool)

(declare-fun b_next!28595 () Bool)

(assert (=> b!1174953 (= b_free!27891 (not b_next!28595))))

(declare-fun tb!66019 () Bool)

(declare-fun t!111008 () Bool)

(assert (=> (and b!1174953 (= (toChars!2985 (transformation!2025 (h!17016 (rules!9682 thiss!10527)))) (toChars!2985 (transformation!2025 (rule!3446 lt!403886)))) t!111008) tb!66019))

(declare-fun b!1174958 () Bool)

(declare-fun e!753788 () Bool)

(declare-fun tp!334955 () Bool)

(declare-fun inv!15347 (Conc!3812) Bool)

(assert (=> b!1174958 (= e!753788 (and (inv!15347 (c!195882 (dynLambda!5146 (toChars!2985 (transformation!2025 (rule!3446 lt!403886))) (value!65709 lt!403886)))) tp!334955))))

(declare-fun result!79088 () Bool)

(declare-fun inv!15348 (BalanceConc!7646) Bool)

(assert (=> tb!66019 (= result!79088 (and (inv!15348 (dynLambda!5146 (toChars!2985 (transformation!2025 (rule!3446 lt!403886))) (value!65709 lt!403886))) e!753788))))

(assert (= tb!66019 b!1174958))

(declare-fun m!1351289 () Bool)

(assert (=> b!1174958 m!1351289))

(declare-fun m!1351291 () Bool)

(assert (=> tb!66019 m!1351291))

(assert (=> d!336623 t!111008))

(declare-fun b_and!80811 () Bool)

(declare-fun tp!334950 () Bool)

(assert (=> b!1174953 (= tp!334950 (and (=> t!111008 result!79088) b_and!80811))))

(declare-fun e!753783 () Bool)

(assert (=> b!1174953 (= e!753783 (and tp!334949 tp!334950))))

(declare-fun e!753782 () Bool)

(declare-fun tp!334952 () Bool)

(declare-fun b!1174952 () Bool)

(declare-fun inv!15332 (String!14043) Bool)

(declare-fun inv!15349 (TokenValueInjection!3882) Bool)

(assert (=> b!1174952 (= e!753782 (and tp!334952 (inv!15332 (tag!2287 (h!17016 (rules!9682 thiss!10527)))) (inv!15349 (transformation!2025 (h!17016 (rules!9682 thiss!10527)))) e!753783))))

(declare-fun b!1174951 () Bool)

(declare-fun e!753784 () Bool)

(declare-fun tp!334951 () Bool)

(assert (=> b!1174951 (= e!753784 (and e!753782 tp!334951))))

(assert (=> b!1174339 (= tp!334916 e!753784)))

(assert (= b!1174952 b!1174953))

(assert (= b!1174951 b!1174952))

(assert (= (and b!1174339 ((_ is Cons!11615) (rules!9682 thiss!10527))) b!1174951))

(declare-fun m!1351293 () Bool)

(assert (=> b!1174952 m!1351293))

(declare-fun m!1351295 () Bool)

(assert (=> b!1174952 m!1351295))

(declare-fun b!1174961 () Bool)

(declare-fun e!753791 () Bool)

(assert (=> b!1174961 (= e!753791 true)))

(declare-fun b!1174960 () Bool)

(declare-fun e!753790 () Bool)

(assert (=> b!1174960 (= e!753790 e!753791)))

(declare-fun b!1174959 () Bool)

(declare-fun e!753789 () Bool)

(assert (=> b!1174959 (= e!753789 e!753790)))

(assert (=> b!1174346 e!753789))

(assert (= b!1174960 b!1174961))

(assert (= b!1174959 b!1174960))

(assert (= (and b!1174346 ((_ is Cons!11615) (rules!9682 thiss!10527))) b!1174959))

(assert (=> b!1174961 (< (dynLambda!5141 order!7143 (toValue!3126 (transformation!2025 (h!17016 (rules!9682 thiss!10527))))) (dynLambda!5142 order!7145 lambda!48361))))

(assert (=> b!1174961 (< (dynLambda!5143 order!7147 (toChars!2985 (transformation!2025 (h!17016 (rules!9682 thiss!10527))))) (dynLambda!5142 order!7145 lambda!48361))))

(declare-fun b!1174970 () Bool)

(declare-fun e!753796 () Bool)

(assert (=> b!1174970 (= e!753796 true)))

(declare-fun b!1174972 () Bool)

(declare-fun e!753797 () Bool)

(assert (=> b!1174972 (= e!753797 true)))

(declare-fun b!1174971 () Bool)

(assert (=> b!1174971 (= e!753796 e!753797)))

(assert (=> b!1174347 e!753796))

(assert (= (and b!1174347 ((_ is Node!3813) (c!195883 (tokens!1670 thiss!10527)))) b!1174970))

(assert (= b!1174971 b!1174972))

(assert (= (and b!1174347 ((_ is Leaf!5836) (c!195883 (tokens!1670 thiss!10527)))) b!1174971))

(declare-fun tp!334963 () Bool)

(declare-fun tp!334962 () Bool)

(declare-fun e!753803 () Bool)

(declare-fun b!1174981 () Bool)

(assert (=> b!1174981 (= e!753803 (and (inv!15336 (left!10155 (c!195883 (tokens!1670 thiss!10527)))) tp!334962 (inv!15336 (right!10485 (c!195883 (tokens!1670 thiss!10527)))) tp!334963))))

(declare-fun b!1174983 () Bool)

(declare-fun e!753802 () Bool)

(declare-fun tp!334964 () Bool)

(assert (=> b!1174983 (= e!753802 tp!334964)))

(declare-fun b!1174982 () Bool)

(declare-fun inv!15350 (IArray!7631) Bool)

(assert (=> b!1174982 (= e!753803 (and (inv!15350 (xs!6518 (c!195883 (tokens!1670 thiss!10527)))) e!753802))))

(assert (=> b!1174320 (= tp!334915 (and (inv!15336 (c!195883 (tokens!1670 thiss!10527))) e!753803))))

(assert (= (and b!1174320 ((_ is Node!3813) (c!195883 (tokens!1670 thiss!10527)))) b!1174981))

(assert (= b!1174982 b!1174983))

(assert (= (and b!1174320 ((_ is Leaf!5836) (c!195883 (tokens!1670 thiss!10527)))) b!1174982))

(declare-fun m!1351297 () Bool)

(assert (=> b!1174981 m!1351297))

(declare-fun m!1351299 () Bool)

(assert (=> b!1174981 m!1351299))

(declare-fun m!1351301 () Bool)

(assert (=> b!1174982 m!1351301))

(assert (=> b!1174320 m!1350081))

(declare-fun b_lambda!35143 () Bool)

(assert (= b_lambda!35129 (or b!1174332 b_lambda!35143)))

(declare-fun bs!286376 () Bool)

(declare-fun d!336625 () Bool)

(assert (= bs!286376 (and d!336625 b!1174332)))

(assert (=> bs!286376 (= (dynLambda!5144 lambda!48361 (h!17015 lt!403879)) (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) (h!17015 lt!403879)))))

(assert (=> bs!286376 m!1350159))

(assert (=> b!1174468 d!336625))

(declare-fun b_lambda!35145 () Bool)

(assert (= b_lambda!35135 (or b!1174332 b_lambda!35145)))

(declare-fun bs!286377 () Bool)

(declare-fun d!336627 () Bool)

(assert (= bs!286377 (and d!336627 b!1174332)))

(assert (=> bs!286377 (= (dynLambda!5144 lambda!48361 (h!17015 lt!403867)) (rulesProduceIndividualToken!755 Lexer!1718 (rules!9682 thiss!10527) (h!17015 lt!403867)))))

(assert (=> bs!286377 m!1350083))

(assert (=> b!1174737 d!336627))

(check-sat (not d!336487) (not b!1174515) (not b!1174488) (not b!1174489) (not b!1174936) (not b!1174454) (not b!1174732) (not b!1174579) (not b!1174591) (not b!1174730) (not b!1174926) (not b!1174823) (not b!1174501) (not b!1174480) (not d!336421) (not b!1174733) (not b!1174903) (not b!1174951) (not b!1174481) (not d!336619) (not b!1174487) (not b!1174506) (not d!336477) (not d!336465) (not b!1174972) (not d!336413) (not d!336431) (not tb!66019) (not d!336447) (not d!336441) (not b!1174665) (not b!1174683) (not d!336623) (not b!1174981) (not b!1174982) (not b!1174667) b_and!80809 (not d!336435) (not b!1174910) (not b!1174686) (not b!1174596) (not b_lambda!35143) (not b!1174611) (not b!1174824) (not b!1174958) (not d!336469) (not b!1174682) (not b!1174602) (not b!1174685) (not b!1174688) (not b!1174503) (not bs!286376) (not b!1174919) (not b_next!28595) (not d!336389) (not b!1174821) (not b!1174673) (not b!1174908) (not b!1174734) (not b!1174584) (not b!1174576) (not b!1174586) (not d!336611) (not b!1174925) (not d!336495) (not d!336567) (not d!336499) (not b!1174684) (not b!1174907) (not b!1174442) (not b!1174577) (not b!1174917) (not b!1174583) (not d!336429) (not d!336445) (not bm!82403) (not d!336409) (not b!1174601) (not b!1174395) (not d!336471) (not b!1174738) (not b!1174494) (not b!1174930) (not b!1174922) (not d!336405) (not b!1174603) (not d!336599) (not b!1174578) (not b!1174502) (not b_next!28593) (not b!1174931) (not b!1174830) (not b!1174983) (not b!1174610) (not b!1174934) (not d!336415) (not d!336483) (not d!336601) (not b!1174939) (not b!1174320) (not b!1174670) (not b!1174587) (not b!1174906) (not b!1174483) (not b!1174970) (not d!336481) (not b!1174927) (not b!1174666) (not b!1174516) (not d!336561) (not b!1174580) (not d!336425) (not b!1174905) (not b_lambda!35145) (not d!336463) (not d!336559) (not b!1174731) (not d!336399) (not b!1174482) (not b!1174687) (not d!336563) (not b!1174921) (not b_lambda!35141) (not b!1174585) (not d!336617) (not d!336479) (not b!1174825) (not d!336519) (not b!1174935) (not d!336417) (not b!1174581) (not d!336503) (not d!336443) (not b!1174909) (not d!336615) (not b!1174539) (not b!1174544) (not d!336621) (not b!1174462) (not d!336603) (not b!1174440) (not b!1174689) (not bs!286377) (not d!336605) (not d!336423) (not b!1174469) (not b!1174484) (not b!1174924) (not b!1174548) (not d!336427) (not b!1174677) (not b!1174668) (not b!1174461) (not b!1174822) (not b!1174535) (not b!1174940) (not b!1174404) (not b!1174394) (not b!1174904) (not d!336565) (not b!1174952) (not b!1174959) (not d!336501) (not d!336439) (not b!1174582) (not b!1174671) (not b!1174672) (not d!336609) (not d!336613) (not b!1174463) (not b!1174598) (not bm!82404) (not bm!82405) b_and!80811 (not b!1174920) (not b!1174669) (not b!1174923) (not bm!82402) (not b!1174597) (not b!1174441))
(check-sat b_and!80809 b_and!80811 (not b_next!28593) (not b_next!28595))
