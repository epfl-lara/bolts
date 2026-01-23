; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297762 () Bool)

(assert start!297762)

(declare-fun b!3179136 () Bool)

(declare-fun b_free!83705 () Bool)

(declare-fun b_next!84409 () Bool)

(assert (=> b!3179136 (= b_free!83705 (not b_next!84409))))

(declare-fun tp!1005751 () Bool)

(declare-fun b_and!210035 () Bool)

(assert (=> b!3179136 (= tp!1005751 b_and!210035)))

(declare-fun b_free!83707 () Bool)

(declare-fun b_next!84411 () Bool)

(assert (=> b!3179136 (= b_free!83707 (not b_next!84411))))

(declare-fun tp!1005759 () Bool)

(declare-fun b_and!210037 () Bool)

(assert (=> b!3179136 (= tp!1005759 b_and!210037)))

(declare-fun b!3179129 () Bool)

(declare-fun b_free!83709 () Bool)

(declare-fun b_next!84413 () Bool)

(assert (=> b!3179129 (= b_free!83709 (not b_next!84413))))

(declare-fun tp!1005754 () Bool)

(declare-fun b_and!210039 () Bool)

(assert (=> b!3179129 (= tp!1005754 b_and!210039)))

(declare-fun b_free!83711 () Bool)

(declare-fun b_next!84415 () Bool)

(assert (=> b!3179129 (= b_free!83711 (not b_next!84415))))

(declare-fun tp!1005756 () Bool)

(declare-fun b_and!210041 () Bool)

(assert (=> b!3179129 (= tp!1005756 b_and!210041)))

(declare-fun b!3179123 () Bool)

(declare-fun b_free!83713 () Bool)

(declare-fun b_next!84417 () Bool)

(assert (=> b!3179123 (= b_free!83713 (not b_next!84417))))

(declare-fun tp!1005753 () Bool)

(declare-fun b_and!210043 () Bool)

(assert (=> b!3179123 (= tp!1005753 b_and!210043)))

(declare-fun b_free!83715 () Bool)

(declare-fun b_next!84419 () Bool)

(assert (=> b!3179123 (= b_free!83715 (not b_next!84419))))

(declare-fun tp!1005752 () Bool)

(declare-fun b_and!210045 () Bool)

(assert (=> b!3179123 (= tp!1005752 b_and!210045)))

(declare-datatypes ((C!19920 0))(
  ( (C!19921 (val!12008 Int)) )
))
(declare-datatypes ((Regex!9867 0))(
  ( (ElementMatch!9867 (c!534090 C!19920)) (Concat!15205 (regOne!20246 Regex!9867) (regTwo!20246 Regex!9867)) (EmptyExpr!9867) (Star!9867 (reg!10196 Regex!9867)) (EmptyLang!9867) (Union!9867 (regOne!20247 Regex!9867) (regTwo!20247 Regex!9867)) )
))
(declare-datatypes ((List!35810 0))(
  ( (Nil!35686) (Cons!35686 (h!41106 (_ BitVec 16)) (t!234977 List!35810)) )
))
(declare-datatypes ((TokenValue!5338 0))(
  ( (FloatLiteralValue!10676 (text!37811 List!35810)) (TokenValueExt!5337 (__x!22893 Int)) (Broken!26690 (value!166012 List!35810)) (Object!5461) (End!5338) (Def!5338) (Underscore!5338) (Match!5338) (Else!5338) (Error!5338) (Case!5338) (If!5338) (Extends!5338) (Abstract!5338) (Class!5338) (Val!5338) (DelimiterValue!10676 (del!5398 List!35810)) (KeywordValue!5344 (value!166013 List!35810)) (CommentValue!10676 (value!166014 List!35810)) (WhitespaceValue!10676 (value!166015 List!35810)) (IndentationValue!5338 (value!166016 List!35810)) (String!40023) (Int32!5338) (Broken!26691 (value!166017 List!35810)) (Boolean!5339) (Unit!50105) (OperatorValue!5341 (op!5398 List!35810)) (IdentifierValue!10676 (value!166018 List!35810)) (IdentifierValue!10677 (value!166019 List!35810)) (WhitespaceValue!10677 (value!166020 List!35810)) (True!10676) (False!10676) (Broken!26692 (value!166021 List!35810)) (Broken!26693 (value!166022 List!35810)) (True!10677) (RightBrace!5338) (RightBracket!5338) (Colon!5338) (Null!5338) (Comma!5338) (LeftBracket!5338) (False!10677) (LeftBrace!5338) (ImaginaryLiteralValue!5338 (text!37812 List!35810)) (StringLiteralValue!16014 (value!166023 List!35810)) (EOFValue!5338 (value!166024 List!35810)) (IdentValue!5338 (value!166025 List!35810)) (DelimiterValue!10677 (value!166026 List!35810)) (DedentValue!5338 (value!166027 List!35810)) (NewLineValue!5338 (value!166028 List!35810)) (IntegerValue!16014 (value!166029 (_ BitVec 32)) (text!37813 List!35810)) (IntegerValue!16015 (value!166030 Int) (text!37814 List!35810)) (Times!5338) (Or!5338) (Equal!5338) (Minus!5338) (Broken!26694 (value!166031 List!35810)) (And!5338) (Div!5338) (LessEqual!5338) (Mod!5338) (Concat!15206) (Not!5338) (Plus!5338) (SpaceValue!5338 (value!166032 List!35810)) (IntegerValue!16016 (value!166033 Int) (text!37815 List!35810)) (StringLiteralValue!16015 (text!37816 List!35810)) (FloatLiteralValue!10677 (text!37817 List!35810)) (BytesLiteralValue!5338 (value!166034 List!35810)) (CommentValue!10677 (value!166035 List!35810)) (StringLiteralValue!16016 (value!166036 List!35810)) (ErrorTokenValue!5338 (msg!5399 List!35810)) )
))
(declare-datatypes ((List!35811 0))(
  ( (Nil!35687) (Cons!35687 (h!41107 C!19920) (t!234978 List!35811)) )
))
(declare-datatypes ((IArray!21187 0))(
  ( (IArray!21188 (innerList!10651 List!35811)) )
))
(declare-datatypes ((Conc!10591 0))(
  ( (Node!10591 (left!27759 Conc!10591) (right!28089 Conc!10591) (csize!21412 Int) (cheight!10802 Int)) (Leaf!16756 (xs!13709 IArray!21187) (csize!21413 Int)) (Empty!10591) )
))
(declare-datatypes ((BalanceConc!20796 0))(
  ( (BalanceConc!20797 (c!534091 Conc!10591)) )
))
(declare-datatypes ((String!40024 0))(
  ( (String!40025 (value!166037 String)) )
))
(declare-datatypes ((TokenValueInjection!10104 0))(
  ( (TokenValueInjection!10105 (toValue!7168 Int) (toChars!7027 Int)) )
))
(declare-datatypes ((Rule!10016 0))(
  ( (Rule!10017 (regex!5108 Regex!9867) (tag!5612 String!40024) (isSeparator!5108 Bool) (transformation!5108 TokenValueInjection!10104)) )
))
(declare-datatypes ((Token!9582 0))(
  ( (Token!9583 (value!166038 TokenValue!5338) (rule!7518 Rule!10016) (size!26943 Int) (originalCharacters!5822 List!35811)) )
))
(declare-fun separatorToken!241 () Token!9582)

(declare-fun e!1980405 () Bool)

(declare-fun b!3179115 () Bool)

(declare-fun tp!1005750 () Bool)

(declare-fun e!1980390 () Bool)

(declare-fun inv!21 (TokenValue!5338) Bool)

(assert (=> b!3179115 (= e!1980405 (and (inv!21 (value!166038 separatorToken!241)) e!1980390 tp!1005750))))

(declare-fun b!3179116 () Bool)

(declare-fun res!1291743 () Bool)

(declare-fun e!1980400 () Bool)

(assert (=> b!3179116 (=> res!1291743 e!1980400)))

(declare-datatypes ((List!35812 0))(
  ( (Nil!35688) (Cons!35688 (h!41108 Rule!10016) (t!234979 List!35812)) )
))
(declare-fun rules!2135 () List!35812)

(declare-datatypes ((LexerInterface!4697 0))(
  ( (LexerInterfaceExt!4694 (__x!22894 Int)) (Lexer!4695) )
))
(declare-fun thiss!18206 () LexerInterface!4697)

(declare-fun lt!1068456 () List!35811)

(declare-datatypes ((List!35813 0))(
  ( (Nil!35689) (Cons!35689 (h!41109 Token!9582) (t!234980 List!35813)) )
))
(declare-datatypes ((IArray!21189 0))(
  ( (IArray!21190 (innerList!10652 List!35813)) )
))
(declare-datatypes ((Conc!10592 0))(
  ( (Node!10592 (left!27760 Conc!10592) (right!28090 Conc!10592) (csize!21414 Int) (cheight!10803 Int)) (Leaf!16757 (xs!13710 IArray!21189) (csize!21415 Int)) (Empty!10592) )
))
(declare-datatypes ((BalanceConc!20798 0))(
  ( (BalanceConc!20799 (c!534092 Conc!10592)) )
))
(declare-fun isEmpty!19803 (BalanceConc!20798) Bool)

(declare-datatypes ((tuple2!35016 0))(
  ( (tuple2!35017 (_1!20642 BalanceConc!20798) (_2!20642 BalanceConc!20796)) )
))
(declare-fun lex!2037 (LexerInterface!4697 List!35812 BalanceConc!20796) tuple2!35016)

(declare-fun seqFromList!3295 (List!35811) BalanceConc!20796)

(assert (=> b!3179116 (= res!1291743 (isEmpty!19803 (_1!20642 (lex!2037 thiss!18206 rules!2135 (seqFromList!3295 lt!1068456)))))))

(declare-fun b!3179117 () Bool)

(declare-fun res!1291745 () Bool)

(declare-fun e!1980401 () Bool)

(assert (=> b!3179117 (=> (not res!1291745) (not e!1980401))))

(declare-fun rulesProduceIndividualToken!2189 (LexerInterface!4697 List!35812 Token!9582) Bool)

(assert (=> b!3179117 (= res!1291745 (rulesProduceIndividualToken!2189 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3179118 () Bool)

(declare-fun e!1980393 () Bool)

(declare-fun e!1980410 () Bool)

(declare-fun tp!1005757 () Bool)

(assert (=> b!3179118 (= e!1980393 (and e!1980410 tp!1005757))))

(declare-fun b!3179119 () Bool)

(declare-fun res!1291738 () Bool)

(assert (=> b!3179119 (=> (not res!1291738) (not e!1980401))))

(assert (=> b!3179119 (= res!1291738 (isSeparator!5108 (rule!7518 separatorToken!241)))))

(declare-fun b!3179120 () Bool)

(declare-fun e!1980408 () Bool)

(assert (=> b!3179120 (= e!1980408 e!1980401)))

(declare-fun res!1291751 () Bool)

(assert (=> b!3179120 (=> (not res!1291751) (not e!1980401))))

(declare-fun lt!1068451 () BalanceConc!20798)

(declare-fun rulesProduceEachTokenIndividually!1148 (LexerInterface!4697 List!35812 BalanceConc!20798) Bool)

(assert (=> b!3179120 (= res!1291751 (rulesProduceEachTokenIndividually!1148 thiss!18206 rules!2135 lt!1068451))))

(declare-fun tokens!494 () List!35813)

(declare-fun seqFromList!3296 (List!35813) BalanceConc!20798)

(assert (=> b!3179120 (= lt!1068451 (seqFromList!3296 tokens!494))))

(declare-fun b!3179121 () Bool)

(declare-fun e!1980392 () Bool)

(declare-fun tp!1005758 () Bool)

(declare-fun inv!48538 (String!40024) Bool)

(declare-fun inv!48541 (TokenValueInjection!10104) Bool)

(assert (=> b!3179121 (= e!1980390 (and tp!1005758 (inv!48538 (tag!5612 (rule!7518 separatorToken!241))) (inv!48541 (transformation!5108 (rule!7518 separatorToken!241))) e!1980392))))

(declare-fun b!3179122 () Bool)

(declare-fun e!1980394 () Bool)

(assert (=> b!3179122 (= e!1980400 e!1980394)))

(declare-fun res!1291750 () Bool)

(assert (=> b!3179122 (=> res!1291750 e!1980394)))

(assert (=> b!3179122 (= res!1291750 (isSeparator!5108 (rule!7518 (h!41109 tokens!494))))))

(declare-datatypes ((Unit!50106 0))(
  ( (Unit!50107) )
))
(declare-fun lt!1068452 () Unit!50106)

(declare-fun lambda!116333 () Int)

(declare-fun forallContained!1091 (List!35813 Int Token!9582) Unit!50106)

(assert (=> b!3179122 (= lt!1068452 (forallContained!1091 tokens!494 lambda!116333 (h!41109 tokens!494)))))

(declare-fun e!1980391 () Bool)

(assert (=> b!3179123 (= e!1980391 (and tp!1005753 tp!1005752))))

(declare-fun b!3179124 () Bool)

(declare-fun res!1291744 () Bool)

(assert (=> b!3179124 (=> (not res!1291744) (not e!1980401))))

(declare-fun sepAndNonSepRulesDisjointChars!1302 (List!35812 List!35812) Bool)

(assert (=> b!3179124 (= res!1291744 (sepAndNonSepRulesDisjointChars!1302 rules!2135 rules!2135))))

(declare-fun b!3179125 () Bool)

(declare-fun res!1291746 () Bool)

(assert (=> b!3179125 (=> (not res!1291746) (not e!1980401))))

(declare-fun forall!7218 (List!35813 Int) Bool)

(assert (=> b!3179125 (= res!1291746 (forall!7218 tokens!494 lambda!116333))))

(declare-fun b!3179126 () Bool)

(declare-fun res!1291742 () Bool)

(assert (=> b!3179126 (=> (not res!1291742) (not e!1980408))))

(declare-fun rulesInvariant!4094 (LexerInterface!4697 List!35812) Bool)

(assert (=> b!3179126 (= res!1291742 (rulesInvariant!4094 thiss!18206 rules!2135))))

(declare-fun b!3179127 () Bool)

(declare-fun e!1980396 () Bool)

(assert (=> b!3179127 (= e!1980394 e!1980396)))

(declare-fun res!1291736 () Bool)

(assert (=> b!3179127 (=> res!1291736 e!1980396)))

(declare-fun contains!6305 (List!35813 Token!9582) Bool)

(assert (=> b!3179127 (= res!1291736 (not (contains!6305 tokens!494 (h!41109 tokens!494))))))

(declare-fun isEmpty!19804 (List!35811) Bool)

(declare-fun getSuffix!1324 (List!35811 List!35811) List!35811)

(assert (=> b!3179127 (isEmpty!19804 (getSuffix!1324 lt!1068456 lt!1068456))))

(declare-fun lt!1068449 () Unit!50106)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!2 (List!35811) Unit!50106)

(assert (=> b!3179127 (= lt!1068449 (lemmaGetSuffixOnListWithItSelfIsEmpty!2 lt!1068456))))

(declare-fun e!1980399 () Bool)

(declare-fun tp!1005760 () Bool)

(declare-fun e!1980404 () Bool)

(declare-fun b!3179128 () Bool)

(declare-fun inv!48542 (Token!9582) Bool)

(assert (=> b!3179128 (= e!1980404 (and (inv!48542 (h!41109 tokens!494)) e!1980399 tp!1005760))))

(assert (=> b!3179129 (= e!1980392 (and tp!1005754 tp!1005756))))

(declare-fun b!3179130 () Bool)

(declare-fun tp!1005749 () Bool)

(declare-fun e!1980398 () Bool)

(assert (=> b!3179130 (= e!1980399 (and (inv!21 (value!166038 (h!41109 tokens!494))) e!1980398 tp!1005749))))

(declare-fun b!3179131 () Bool)

(declare-fun res!1291747 () Bool)

(assert (=> b!3179131 (=> (not res!1291747) (not e!1980401))))

(get-info :version)

(assert (=> b!3179131 (= res!1291747 (and (not ((_ is Nil!35689) tokens!494)) ((_ is Nil!35689) (t!234980 tokens!494))))))

(declare-fun b!3179132 () Bool)

(declare-fun e!1980397 () Bool)

(declare-fun tp!1005748 () Bool)

(assert (=> b!3179132 (= e!1980410 (and tp!1005748 (inv!48538 (tag!5612 (h!41108 rules!2135))) (inv!48541 (transformation!5108 (h!41108 rules!2135))) e!1980397))))

(declare-fun b!3179133 () Bool)

(declare-fun e!1980406 () Bool)

(assert (=> b!3179133 (= e!1980401 (not e!1980406))))

(declare-fun res!1291740 () Bool)

(assert (=> b!3179133 (=> res!1291740 e!1980406)))

(declare-fun lt!1068453 () List!35811)

(declare-fun lt!1068448 () List!35811)

(assert (=> b!3179133 (= res!1291740 (not (= lt!1068453 lt!1068448)))))

(declare-fun printList!1251 (LexerInterface!4697 List!35813) List!35811)

(assert (=> b!3179133 (= lt!1068448 (printList!1251 thiss!18206 (Cons!35689 (h!41109 tokens!494) Nil!35689)))))

(declare-fun lt!1068450 () BalanceConc!20796)

(declare-fun list!12665 (BalanceConc!20796) List!35811)

(assert (=> b!3179133 (= lt!1068453 (list!12665 lt!1068450))))

(declare-fun lt!1068455 () BalanceConc!20798)

(declare-fun printTailRec!1196 (LexerInterface!4697 BalanceConc!20798 Int BalanceConc!20796) BalanceConc!20796)

(assert (=> b!3179133 (= lt!1068450 (printTailRec!1196 thiss!18206 lt!1068455 0 (BalanceConc!20797 Empty!10591)))))

(declare-fun print!1764 (LexerInterface!4697 BalanceConc!20798) BalanceConc!20796)

(assert (=> b!3179133 (= lt!1068450 (print!1764 thiss!18206 lt!1068455))))

(declare-fun singletonSeq!2204 (Token!9582) BalanceConc!20798)

(assert (=> b!3179133 (= lt!1068455 (singletonSeq!2204 (h!41109 tokens!494)))))

(declare-fun res!1291737 () Bool)

(assert (=> start!297762 (=> (not res!1291737) (not e!1980408))))

(assert (=> start!297762 (= res!1291737 ((_ is Lexer!4695) thiss!18206))))

(assert (=> start!297762 e!1980408))

(assert (=> start!297762 true))

(assert (=> start!297762 e!1980393))

(assert (=> start!297762 (and (inv!48542 separatorToken!241) e!1980405)))

(assert (=> start!297762 e!1980404))

(declare-fun b!3179134 () Bool)

(declare-fun res!1291748 () Bool)

(assert (=> b!3179134 (=> res!1291748 e!1980394)))

(declare-fun printWithSeparatorToken!6 (LexerInterface!4697 BalanceConc!20798 Token!9582) BalanceConc!20796)

(declare-fun ++!8528 (List!35811 List!35811) List!35811)

(declare-fun charsOf!3130 (Token!9582) BalanceConc!20796)

(assert (=> b!3179134 (= res!1291748 (not (= (list!12665 (printWithSeparatorToken!6 thiss!18206 lt!1068451 separatorToken!241)) (++!8528 lt!1068456 (list!12665 (charsOf!3130 separatorToken!241))))))))

(declare-fun b!3179135 () Bool)

(declare-fun res!1291739 () Bool)

(assert (=> b!3179135 (=> res!1291739 e!1980400)))

(assert (=> b!3179135 (= res!1291739 (not (rulesProduceIndividualToken!2189 thiss!18206 rules!2135 (h!41109 tokens!494))))))

(assert (=> b!3179136 (= e!1980397 (and tp!1005751 tp!1005759))))

(declare-fun b!3179137 () Bool)

(assert (=> b!3179137 (= e!1980406 e!1980400)))

(declare-fun res!1291741 () Bool)

(assert (=> b!3179137 (=> res!1291741 e!1980400)))

(assert (=> b!3179137 (= res!1291741 (or (not (= lt!1068448 lt!1068456)) (not (= lt!1068453 lt!1068456))))))

(assert (=> b!3179137 (= lt!1068456 (list!12665 (charsOf!3130 (h!41109 tokens!494))))))

(declare-fun b!3179138 () Bool)

(declare-fun tp!1005755 () Bool)

(assert (=> b!3179138 (= e!1980398 (and tp!1005755 (inv!48538 (tag!5612 (rule!7518 (h!41109 tokens!494)))) (inv!48541 (transformation!5108 (rule!7518 (h!41109 tokens!494)))) e!1980391))))

(declare-fun b!3179139 () Bool)

(assert (=> b!3179139 (= e!1980396 true)))

(declare-fun lt!1068454 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1695 (LexerInterface!4697 List!35812 List!35813) Bool)

(assert (=> b!3179139 (= lt!1068454 (rulesProduceEachTokenIndividuallyList!1695 thiss!18206 rules!2135 tokens!494))))

(declare-fun b!3179140 () Bool)

(declare-fun res!1291749 () Bool)

(assert (=> b!3179140 (=> (not res!1291749) (not e!1980408))))

(declare-fun isEmpty!19805 (List!35812) Bool)

(assert (=> b!3179140 (= res!1291749 (not (isEmpty!19805 rules!2135)))))

(assert (= (and start!297762 res!1291737) b!3179140))

(assert (= (and b!3179140 res!1291749) b!3179126))

(assert (= (and b!3179126 res!1291742) b!3179120))

(assert (= (and b!3179120 res!1291751) b!3179117))

(assert (= (and b!3179117 res!1291745) b!3179119))

(assert (= (and b!3179119 res!1291738) b!3179125))

(assert (= (and b!3179125 res!1291746) b!3179124))

(assert (= (and b!3179124 res!1291744) b!3179131))

(assert (= (and b!3179131 res!1291747) b!3179133))

(assert (= (and b!3179133 (not res!1291740)) b!3179137))

(assert (= (and b!3179137 (not res!1291741)) b!3179135))

(assert (= (and b!3179135 (not res!1291739)) b!3179116))

(assert (= (and b!3179116 (not res!1291743)) b!3179122))

(assert (= (and b!3179122 (not res!1291750)) b!3179134))

(assert (= (and b!3179134 (not res!1291748)) b!3179127))

(assert (= (and b!3179127 (not res!1291736)) b!3179139))

(assert (= b!3179132 b!3179136))

(assert (= b!3179118 b!3179132))

(assert (= (and start!297762 ((_ is Cons!35688) rules!2135)) b!3179118))

(assert (= b!3179121 b!3179129))

(assert (= b!3179115 b!3179121))

(assert (= start!297762 b!3179115))

(assert (= b!3179138 b!3179123))

(assert (= b!3179130 b!3179138))

(assert (= b!3179128 b!3179130))

(assert (= (and start!297762 ((_ is Cons!35689) tokens!494)) b!3179128))

(declare-fun m!3435573 () Bool)

(assert (=> b!3179138 m!3435573))

(declare-fun m!3435575 () Bool)

(assert (=> b!3179138 m!3435575))

(declare-fun m!3435577 () Bool)

(assert (=> b!3179128 m!3435577))

(declare-fun m!3435579 () Bool)

(assert (=> b!3179125 m!3435579))

(declare-fun m!3435581 () Bool)

(assert (=> b!3179134 m!3435581))

(declare-fun m!3435583 () Bool)

(assert (=> b!3179134 m!3435583))

(assert (=> b!3179134 m!3435581))

(declare-fun m!3435585 () Bool)

(assert (=> b!3179134 m!3435585))

(declare-fun m!3435587 () Bool)

(assert (=> b!3179134 m!3435587))

(assert (=> b!3179134 m!3435587))

(declare-fun m!3435589 () Bool)

(assert (=> b!3179134 m!3435589))

(assert (=> b!3179134 m!3435585))

(declare-fun m!3435591 () Bool)

(assert (=> b!3179130 m!3435591))

(declare-fun m!3435593 () Bool)

(assert (=> b!3179140 m!3435593))

(declare-fun m!3435595 () Bool)

(assert (=> b!3179122 m!3435595))

(declare-fun m!3435597 () Bool)

(assert (=> start!297762 m!3435597))

(declare-fun m!3435599 () Bool)

(assert (=> b!3179116 m!3435599))

(assert (=> b!3179116 m!3435599))

(declare-fun m!3435601 () Bool)

(assert (=> b!3179116 m!3435601))

(declare-fun m!3435603 () Bool)

(assert (=> b!3179116 m!3435603))

(declare-fun m!3435605 () Bool)

(assert (=> b!3179121 m!3435605))

(declare-fun m!3435607 () Bool)

(assert (=> b!3179121 m!3435607))

(declare-fun m!3435609 () Bool)

(assert (=> b!3179137 m!3435609))

(assert (=> b!3179137 m!3435609))

(declare-fun m!3435611 () Bool)

(assert (=> b!3179137 m!3435611))

(declare-fun m!3435613 () Bool)

(assert (=> b!3179133 m!3435613))

(declare-fun m!3435615 () Bool)

(assert (=> b!3179133 m!3435615))

(declare-fun m!3435617 () Bool)

(assert (=> b!3179133 m!3435617))

(declare-fun m!3435619 () Bool)

(assert (=> b!3179133 m!3435619))

(declare-fun m!3435621 () Bool)

(assert (=> b!3179133 m!3435621))

(declare-fun m!3435623 () Bool)

(assert (=> b!3179132 m!3435623))

(declare-fun m!3435625 () Bool)

(assert (=> b!3179132 m!3435625))

(declare-fun m!3435627 () Bool)

(assert (=> b!3179124 m!3435627))

(declare-fun m!3435629 () Bool)

(assert (=> b!3179117 m!3435629))

(declare-fun m!3435631 () Bool)

(assert (=> b!3179120 m!3435631))

(declare-fun m!3435633 () Bool)

(assert (=> b!3179120 m!3435633))

(declare-fun m!3435635 () Bool)

(assert (=> b!3179127 m!3435635))

(declare-fun m!3435637 () Bool)

(assert (=> b!3179127 m!3435637))

(assert (=> b!3179127 m!3435637))

(declare-fun m!3435639 () Bool)

(assert (=> b!3179127 m!3435639))

(declare-fun m!3435641 () Bool)

(assert (=> b!3179127 m!3435641))

(declare-fun m!3435643 () Bool)

(assert (=> b!3179126 m!3435643))

(declare-fun m!3435645 () Bool)

(assert (=> b!3179115 m!3435645))

(declare-fun m!3435647 () Bool)

(assert (=> b!3179135 m!3435647))

(declare-fun m!3435649 () Bool)

(assert (=> b!3179139 m!3435649))

(check-sat b_and!210045 (not b!3179130) (not b!3179127) (not b!3179128) b_and!210043 (not b!3179115) (not b!3179116) (not b_next!84419) (not b!3179117) (not b!3179135) (not b!3179125) (not b!3179118) (not b!3179126) (not b!3179137) (not b_next!84409) (not b!3179133) (not b_next!84415) (not b!3179124) (not b_next!84417) (not b!3179121) (not b_next!84411) (not b!3179134) (not start!297762) (not b!3179138) (not b!3179120) b_and!210037 (not b!3179140) (not b_next!84413) b_and!210041 (not b!3179132) (not b!3179122) b_and!210039 b_and!210035 (not b!3179139))
(check-sat b_and!210045 b_and!210043 (not b_next!84419) (not b_next!84417) (not b_next!84411) b_and!210037 (not b_next!84413) b_and!210041 (not b_next!84409) (not b_next!84415) b_and!210039 b_and!210035)
