; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101750 () Bool)

(assert start!101750)

(declare-fun b!1161830 () Bool)

(declare-fun e!743971 () Bool)

(assert (=> b!1161830 (= e!743971 true)))

(declare-fun b!1161829 () Bool)

(declare-fun e!743970 () Bool)

(assert (=> b!1161829 (= e!743970 e!743971)))

(declare-fun b!1161817 () Bool)

(assert (=> b!1161817 e!743970))

(assert (= b!1161829 b!1161830))

(assert (= b!1161817 b!1161829))

(declare-fun b!1161799 () Bool)

(declare-fun e!743963 () Bool)

(declare-fun e!743946 () Bool)

(assert (=> b!1161799 (= e!743963 e!743946)))

(declare-fun res!523877 () Bool)

(assert (=> b!1161799 (=> (not res!523877) (not e!743946))))

(declare-datatypes ((List!11459 0))(
  ( (Nil!11435) (Cons!11435 (h!16836 (_ BitVec 16)) (t!109889 List!11459)) )
))
(declare-datatypes ((TokenValue!2055 0))(
  ( (FloatLiteralValue!4110 (text!14830 List!11459)) (TokenValueExt!2054 (__x!7821 Int)) (Broken!10275 (value!64657 List!11459)) (Object!2078) (End!2055) (Def!2055) (Underscore!2055) (Match!2055) (Else!2055) (Error!2055) (Case!2055) (If!2055) (Extends!2055) (Abstract!2055) (Class!2055) (Val!2055) (DelimiterValue!4110 (del!2115 List!11459)) (KeywordValue!2061 (value!64658 List!11459)) (CommentValue!4110 (value!64659 List!11459)) (WhitespaceValue!4110 (value!64660 List!11459)) (IndentationValue!2055 (value!64661 List!11459)) (String!13862) (Int32!2055) (Broken!10276 (value!64662 List!11459)) (Boolean!2056) (Unit!17450) (OperatorValue!2058 (op!2115 List!11459)) (IdentifierValue!4110 (value!64663 List!11459)) (IdentifierValue!4111 (value!64664 List!11459)) (WhitespaceValue!4111 (value!64665 List!11459)) (True!4110) (False!4110) (Broken!10277 (value!64666 List!11459)) (Broken!10278 (value!64667 List!11459)) (True!4111) (RightBrace!2055) (RightBracket!2055) (Colon!2055) (Null!2055) (Comma!2055) (LeftBracket!2055) (False!4111) (LeftBrace!2055) (ImaginaryLiteralValue!2055 (text!14831 List!11459)) (StringLiteralValue!6165 (value!64668 List!11459)) (EOFValue!2055 (value!64669 List!11459)) (IdentValue!2055 (value!64670 List!11459)) (DelimiterValue!4111 (value!64671 List!11459)) (DedentValue!2055 (value!64672 List!11459)) (NewLineValue!2055 (value!64673 List!11459)) (IntegerValue!6165 (value!64674 (_ BitVec 32)) (text!14832 List!11459)) (IntegerValue!6166 (value!64675 Int) (text!14833 List!11459)) (Times!2055) (Or!2055) (Equal!2055) (Minus!2055) (Broken!10279 (value!64676 List!11459)) (And!2055) (Div!2055) (LessEqual!2055) (Mod!2055) (Concat!5314) (Not!2055) (Plus!2055) (SpaceValue!2055 (value!64677 List!11459)) (IntegerValue!6167 (value!64678 Int) (text!14834 List!11459)) (StringLiteralValue!6166 (text!14835 List!11459)) (FloatLiteralValue!4111 (text!14836 List!11459)) (BytesLiteralValue!2055 (value!64679 List!11459)) (CommentValue!4111 (value!64680 List!11459)) (StringLiteralValue!6167 (value!64681 List!11459)) (ErrorTokenValue!2055 (msg!2116 List!11459)) )
))
(declare-datatypes ((C!6836 0))(
  ( (C!6837 (val!3674 Int)) )
))
(declare-datatypes ((Regex!3259 0))(
  ( (ElementMatch!3259 (c!194310 C!6836)) (Concat!5315 (regOne!7030 Regex!3259) (regTwo!7030 Regex!3259)) (EmptyExpr!3259) (Star!3259 (reg!3588 Regex!3259)) (EmptyLang!3259) (Union!3259 (regOne!7031 Regex!3259) (regTwo!7031 Regex!3259)) )
))
(declare-datatypes ((String!13863 0))(
  ( (String!13864 (value!64682 String)) )
))
(declare-datatypes ((List!11460 0))(
  ( (Nil!11436) (Cons!11436 (h!16837 C!6836) (t!109890 List!11460)) )
))
(declare-datatypes ((IArray!7485 0))(
  ( (IArray!7486 (innerList!3800 List!11460)) )
))
(declare-datatypes ((Conc!3740 0))(
  ( (Node!3740 (left!9996 Conc!3740) (right!10326 Conc!3740) (csize!7710 Int) (cheight!3951 Int)) (Leaf!5745 (xs!6445 IArray!7485) (csize!7711 Int)) (Empty!3740) )
))
(declare-datatypes ((BalanceConc!7502 0))(
  ( (BalanceConc!7503 (c!194311 Conc!3740)) )
))
(declare-datatypes ((TokenValueInjection!3810 0))(
  ( (TokenValueInjection!3811 (toValue!3090 Int) (toChars!2949 Int)) )
))
(declare-datatypes ((Rule!3778 0))(
  ( (Rule!3779 (regex!1989 Regex!3259) (tag!2251 String!13863) (isSeparator!1989 Bool) (transformation!1989 TokenValueInjection!3810)) )
))
(declare-datatypes ((Token!3640 0))(
  ( (Token!3641 (value!64683 TokenValue!2055) (rule!3410 Rule!3778) (size!8989 Int) (originalCharacters!2543 List!11460)) )
))
(declare-datatypes ((List!11461 0))(
  ( (Nil!11437) (Cons!11437 (h!16838 Token!3640) (t!109891 List!11461)) )
))
(declare-datatypes ((List!11462 0))(
  ( (Nil!11438) (Cons!11438 (h!16839 Rule!3778) (t!109892 List!11462)) )
))
(declare-datatypes ((IArray!7487 0))(
  ( (IArray!7488 (innerList!3801 List!11461)) )
))
(declare-datatypes ((Conc!3741 0))(
  ( (Node!3741 (left!9997 Conc!3741) (right!10327 Conc!3741) (csize!7712 Int) (cheight!3952 Int)) (Leaf!5746 (xs!6446 IArray!7487) (csize!7713 Int)) (Empty!3741) )
))
(declare-datatypes ((BalanceConc!7504 0))(
  ( (BalanceConc!7505 (c!194312 Conc!3741)) )
))
(declare-datatypes ((PrintableTokens!664 0))(
  ( (PrintableTokens!665 (rules!9500 List!11462) (tokens!1594 BalanceConc!7504)) )
))
(declare-fun thiss!10527 () PrintableTokens!664)

(declare-fun lt!395768 () List!11461)

(declare-datatypes ((LexerInterface!1684 0))(
  ( (LexerInterfaceExt!1681 (__x!7822 Int)) (Lexer!1682) )
))
(declare-fun rulesProduceIndividualToken!721 (LexerInterface!1684 List!11462 Token!3640) Bool)

(assert (=> b!1161799 (= res!523877 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 lt!395768)))))

(declare-fun b!1161800 () Bool)

(declare-fun e!743949 () Bool)

(declare-fun e!743953 () Bool)

(assert (=> b!1161800 (= e!743949 e!743953)))

(declare-fun res!523879 () Bool)

(assert (=> b!1161800 (=> (not res!523879) (not e!743953))))

(declare-fun rulesInvariant!1558 (LexerInterface!1684 List!11462) Bool)

(assert (=> b!1161800 (= res!523879 (rulesInvariant!1558 Lexer!1682 (rules!9500 thiss!10527)))))

(declare-datatypes ((Unit!17451 0))(
  ( (Unit!17452) )
))
(declare-fun lt!395766 () Unit!17451)

(declare-fun lemmaInvariant!176 (PrintableTokens!664) Unit!17451)

(assert (=> b!1161800 (= lt!395766 (lemmaInvariant!176 thiss!10527))))

(declare-fun b!1161801 () Bool)

(declare-fun e!743961 () Bool)

(declare-fun lt!395757 () List!11461)

(declare-fun rulesProduceEachTokenIndividuallyList!552 (LexerInterface!1684 List!11462 List!11461) Bool)

(assert (=> b!1161801 (= e!743961 (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) (t!109891 lt!395757)))))

(declare-fun b!1161802 () Bool)

(declare-fun e!743960 () Bool)

(declare-fun e!743956 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!59 (LexerInterface!1684 BalanceConc!7504 Int List!11462) Bool)

(assert (=> b!1161802 (= e!743960 (= (tokensListTwoByTwoPredicateSeparable!59 Lexer!1682 (tokens!1594 thiss!10527) 0 (rules!9500 thiss!10527)) e!743956))))

(declare-fun res!523873 () Bool)

(assert (=> b!1161802 (=> res!523873 e!743956)))

(declare-fun lt!395753 () Int)

(assert (=> b!1161802 (= res!523873 (>= 0 (- lt!395753 1)))))

(declare-fun b!1161803 () Bool)

(assert (=> b!1161803 (= e!743946 (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) (t!109891 lt!395768)))))

(declare-fun b!1161804 () Bool)

(declare-fun e!743951 () Bool)

(assert (=> b!1161804 (= e!743951 e!743961)))

(declare-fun res!523864 () Bool)

(assert (=> b!1161804 (=> (not res!523864) (not e!743961))))

(assert (=> b!1161804 (= res!523864 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 lt!395757)))))

(declare-fun b!1161805 () Bool)

(declare-fun e!743954 () Bool)

(declare-fun e!743948 () Bool)

(assert (=> b!1161805 (= e!743954 e!743948)))

(declare-fun res!523868 () Bool)

(assert (=> b!1161805 (=> (not res!523868) (not e!743948))))

(declare-fun lt!395747 () List!11461)

(assert (=> b!1161805 (= res!523868 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 lt!395747)))))

(declare-fun b!1161806 () Bool)

(declare-fun res!523866 () Bool)

(declare-fun e!743945 () Bool)

(assert (=> b!1161806 (=> res!523866 e!743945)))

(declare-fun lt!395749 () BalanceConc!7504)

(declare-fun lambda!47437 () Int)

(declare-fun forall!2984 (BalanceConc!7504 Int) Bool)

(assert (=> b!1161806 (= res!523866 (not (forall!2984 lt!395749 lambda!47437)))))

(declare-fun b!1161808 () Bool)

(declare-fun e!743964 () Bool)

(declare-fun lt!395763 () List!11461)

(declare-fun tokensListTwoByTwoPredicateSeparableList!96 (LexerInterface!1684 List!11461 List!11462) Bool)

(assert (=> b!1161808 (= e!743964 (tokensListTwoByTwoPredicateSeparableList!96 Lexer!1682 lt!395763 (rules!9500 thiss!10527)))))

(declare-fun b!1161809 () Bool)

(assert (=> b!1161809 (= e!743948 (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) (t!109891 lt!395747)))))

(declare-fun b!1161810 () Bool)

(declare-fun e!743955 () Bool)

(assert (=> b!1161810 (= e!743955 e!743949)))

(declare-fun res!523869 () Bool)

(assert (=> b!1161810 (=> (not res!523869) (not e!743949))))

(declare-fun to!267 () Int)

(assert (=> b!1161810 (= res!523869 (<= to!267 lt!395753))))

(declare-fun size!8990 (BalanceConc!7504) Int)

(assert (=> b!1161810 (= lt!395753 (size!8990 (tokens!1594 thiss!10527)))))

(declare-fun b!1161811 () Bool)

(declare-fun res!523882 () Bool)

(declare-fun e!743950 () Bool)

(assert (=> b!1161811 (=> (not res!523882) (not e!743950))))

(declare-fun rulesProduceEachTokenIndividually!723 (LexerInterface!1684 List!11462 BalanceConc!7504) Bool)

(assert (=> b!1161811 (= res!523882 (= (rulesProduceEachTokenIndividually!723 Lexer!1682 (rules!9500 thiss!10527) lt!395749) (forall!2984 lt!395749 lambda!47437)))))

(declare-fun b!1161812 () Bool)

(declare-fun e!743959 () Bool)

(assert (=> b!1161812 (= e!743959 (tokensListTwoByTwoPredicateSeparableList!96 Lexer!1682 lt!395747 (rules!9500 thiss!10527)))))

(declare-fun b!1161813 () Bool)

(declare-fun e!743952 () Bool)

(declare-fun lt!395765 () Token!3640)

(declare-fun size!8991 (BalanceConc!7502) Int)

(declare-fun charsOf!1058 (Token!3640) BalanceConc!7502)

(assert (=> b!1161813 (= e!743952 (> (size!8991 (charsOf!1058 lt!395765)) 0))))

(declare-fun b!1161814 () Bool)

(declare-fun e!743965 () Bool)

(declare-fun tp!333845 () Bool)

(declare-fun inv!15034 (Conc!3741) Bool)

(assert (=> b!1161814 (= e!743965 (and (inv!15034 (c!194312 (tokens!1594 thiss!10527))) tp!333845))))

(declare-fun b!1161815 () Bool)

(declare-fun e!743962 () Bool)

(assert (=> b!1161815 (= e!743962 (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) (t!109891 lt!395763)))))

(declare-fun b!1161816 () Bool)

(declare-fun e!743957 () Bool)

(assert (=> b!1161816 (= e!743956 e!743957)))

(declare-fun res!523870 () Bool)

(assert (=> b!1161816 (=> (not res!523870) (not e!743957))))

(declare-fun lt!395759 () Token!3640)

(declare-fun separableTokensPredicate!120 (LexerInterface!1684 Token!3640 Token!3640 List!11462) Bool)

(assert (=> b!1161816 (= res!523870 (separableTokensPredicate!120 Lexer!1682 lt!395759 lt!395765 (rules!9500 thiss!10527)))))

(assert (=> b!1161816 e!743952))

(declare-fun res!523875 () Bool)

(assert (=> b!1161816 (=> (not res!523875) (not e!743952))))

(assert (=> b!1161816 (= res!523875 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) lt!395765))))

(declare-fun lt!395745 () Unit!17451)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!279 (LexerInterface!1684 List!11462 List!11461 Token!3640) Unit!17451)

(assert (=> b!1161816 (= lt!395745 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!279 Lexer!1682 (rules!9500 thiss!10527) lt!395757 lt!395765))))

(declare-fun apply!2445 (BalanceConc!7504 Int) Token!3640)

(assert (=> b!1161816 (= lt!395765 (apply!2445 (tokens!1594 thiss!10527) 1))))

(assert (=> b!1161816 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) lt!395759)))

(declare-fun lt!395764 () Unit!17451)

(assert (=> b!1161816 (= lt!395764 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!279 Lexer!1682 (rules!9500 thiss!10527) lt!395757 lt!395759))))

(assert (=> b!1161816 (= lt!395759 (apply!2445 (tokens!1594 thiss!10527) 0))))

(declare-fun lt!395756 () List!11461)

(declare-fun tail!1676 (List!11461) List!11461)

(declare-fun drop!471 (List!11461 Int) List!11461)

(assert (=> b!1161816 (= (tail!1676 lt!395756) (drop!471 lt!395757 2))))

(declare-fun lt!395767 () Unit!17451)

(declare-fun lemmaDropTail!349 (List!11461 Int) Unit!17451)

(assert (=> b!1161816 (= lt!395767 (lemmaDropTail!349 lt!395757 1))))

(declare-fun lt!395762 () List!11461)

(assert (=> b!1161816 (= (tail!1676 lt!395762) lt!395756)))

(declare-fun lt!395746 () Unit!17451)

(assert (=> b!1161816 (= lt!395746 (lemmaDropTail!349 lt!395757 0))))

(declare-fun head!2092 (List!11461) Token!3640)

(declare-fun apply!2446 (List!11461 Int) Token!3640)

(assert (=> b!1161816 (= (head!2092 lt!395756) (apply!2446 lt!395757 1))))

(assert (=> b!1161816 (= lt!395756 (drop!471 lt!395757 1))))

(declare-fun lt!395751 () Unit!17451)

(declare-fun lemmaDropApply!361 (List!11461 Int) Unit!17451)

(assert (=> b!1161816 (= lt!395751 (lemmaDropApply!361 lt!395757 1))))

(assert (=> b!1161816 (= (head!2092 lt!395762) (apply!2446 lt!395757 0))))

(assert (=> b!1161816 (= lt!395762 (drop!471 lt!395757 0))))

(declare-fun lt!395752 () Unit!17451)

(assert (=> b!1161816 (= lt!395752 (lemmaDropApply!361 lt!395757 0))))

(declare-fun e!743947 () Bool)

(assert (=> b!1161817 (= e!743953 (not e!743947))))

(declare-fun res!523885 () Bool)

(assert (=> b!1161817 (=> res!523885 e!743947)))

(assert (=> b!1161817 (= res!523885 (not (forall!2984 (tokens!1594 thiss!10527) lambda!47437)))))

(assert (=> b!1161817 (= (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) lt!395757) e!743951)))

(declare-fun res!523867 () Bool)

(assert (=> b!1161817 (=> res!523867 e!743951)))

(get-info :version)

(assert (=> b!1161817 (= res!523867 (not ((_ is Cons!11437) lt!395757)))))

(declare-fun list!4208 (BalanceConc!7504) List!11461)

(assert (=> b!1161817 (= lt!395757 (list!4208 (tokens!1594 thiss!10527)))))

(assert (=> b!1161817 (= (rulesProduceEachTokenIndividually!723 Lexer!1682 (rules!9500 thiss!10527) (tokens!1594 thiss!10527)) (forall!2984 (tokens!1594 thiss!10527) lambda!47437))))

(declare-fun b!1161818 () Bool)

(assert (=> b!1161818 (= e!743950 (= (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) lt!395768) e!743963))))

(declare-fun res!523865 () Bool)

(assert (=> b!1161818 (=> res!523865 e!743963)))

(assert (=> b!1161818 (= res!523865 (not ((_ is Cons!11437) lt!395768)))))

(declare-fun res!523884 () Bool)

(assert (=> start!101750 (=> (not res!523884) (not e!743955))))

(declare-fun from!787 () Int)

(assert (=> start!101750 (= res!523884 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!101750 e!743955))

(assert (=> start!101750 true))

(declare-fun e!743944 () Bool)

(declare-fun inv!15035 (PrintableTokens!664) Bool)

(assert (=> start!101750 (and (inv!15035 thiss!10527) e!743944)))

(declare-fun b!1161807 () Bool)

(declare-fun e!743958 () Bool)

(assert (=> b!1161807 (= e!743958 e!743962)))

(declare-fun res!523874 () Bool)

(assert (=> b!1161807 (=> (not res!523874) (not e!743962))))

(assert (=> b!1161807 (= res!523874 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 lt!395763)))))

(declare-fun b!1161819 () Bool)

(assert (=> b!1161819 (= e!743947 e!743945)))

(declare-fun res!523880 () Bool)

(assert (=> b!1161819 (=> res!523880 e!743945)))

(declare-fun forall!2985 (List!11461 Int) Bool)

(assert (=> b!1161819 (= res!523880 (not (forall!2985 lt!395768 lambda!47437)))))

(assert (=> b!1161819 e!743950))

(declare-fun res!523872 () Bool)

(assert (=> b!1161819 (=> (not res!523872) (not e!743950))))

(assert (=> b!1161819 (= res!523872 (forall!2985 lt!395768 lambda!47437))))

(declare-fun lt!395748 () Unit!17451)

(declare-fun lemmaForallSubseq!137 (List!11461 List!11461 Int) Unit!17451)

(assert (=> b!1161819 (= lt!395748 (lemmaForallSubseq!137 lt!395768 lt!395757 lambda!47437))))

(assert (=> b!1161819 (= lt!395768 (list!4208 lt!395749))))

(declare-fun slice!277 (BalanceConc!7504 Int Int) BalanceConc!7504)

(assert (=> b!1161819 (= lt!395749 (slice!277 (tokens!1594 thiss!10527) from!787 to!267))))

(declare-fun subseq!245 (List!11461 List!11461) Bool)

(declare-fun slice!278 (List!11461 Int Int) List!11461)

(assert (=> b!1161819 (subseq!245 (slice!278 lt!395757 from!787 to!267) lt!395757)))

(declare-fun lt!395754 () Unit!17451)

(declare-fun lemmaSliceSubseq!86 (List!11461 Int Int) Unit!17451)

(assert (=> b!1161819 (= lt!395754 (lemmaSliceSubseq!86 lt!395757 from!787 to!267))))

(declare-fun b!1161820 () Bool)

(declare-fun tp!333846 () Bool)

(declare-fun inv!15036 (BalanceConc!7504) Bool)

(assert (=> b!1161820 (= e!743944 (and tp!333846 (inv!15036 (tokens!1594 thiss!10527)) e!743965))))

(declare-fun b!1161821 () Bool)

(declare-fun isBalanced!1051 (Conc!3741) Bool)

(assert (=> b!1161821 (= e!743945 (isBalanced!1051 (c!194312 (tokens!1594 thiss!10527))))))

(assert (=> b!1161821 e!743959))

(declare-fun res!523881 () Bool)

(assert (=> b!1161821 (=> (not res!523881) (not e!743959))))

(assert (=> b!1161821 (= res!523881 (forall!2985 lt!395747 lambda!47437))))

(declare-fun lt!395760 () Unit!17451)

(assert (=> b!1161821 (= lt!395760 (lemmaForallSubseq!137 lt!395747 lt!395763 lambda!47437))))

(assert (=> b!1161821 (= (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) lt!395747) e!743954)))

(declare-fun res!523883 () Bool)

(assert (=> b!1161821 (=> res!523883 e!743954)))

(assert (=> b!1161821 (= res!523883 (not ((_ is Cons!11437) lt!395747)))))

(declare-fun take!61 (List!11461 Int) List!11461)

(assert (=> b!1161821 (= lt!395747 (take!61 lt!395763 (- to!267 from!787)))))

(declare-fun lt!395761 () Unit!17451)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!28 (LexerInterface!1684 List!11461 Int List!11462) Unit!17451)

(assert (=> b!1161821 (= lt!395761 (tokensListTwoByTwoPredicateSeparableTokensTakeList!28 Lexer!1682 lt!395763 (- to!267 from!787) (rules!9500 thiss!10527)))))

(assert (=> b!1161821 (forall!2985 lt!395763 lambda!47437)))

(declare-fun lt!395750 () Unit!17451)

(assert (=> b!1161821 (= lt!395750 (lemmaForallSubseq!137 lt!395763 lt!395757 lambda!47437))))

(assert (=> b!1161821 e!743964))

(declare-fun res!523871 () Bool)

(assert (=> b!1161821 (=> (not res!523871) (not e!743964))))

(assert (=> b!1161821 (= res!523871 (forall!2985 lt!395763 lambda!47437))))

(declare-fun lt!395755 () Unit!17451)

(assert (=> b!1161821 (= lt!395755 (lemmaForallSubseq!137 lt!395763 lt!395757 lambda!47437))))

(assert (=> b!1161821 (subseq!245 lt!395763 lt!395757)))

(declare-fun lt!395758 () Unit!17451)

(declare-fun lemmaDropSubseq!36 (List!11461 Int) Unit!17451)

(assert (=> b!1161821 (= lt!395758 (lemmaDropSubseq!36 lt!395757 from!787))))

(assert (=> b!1161821 (= (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) lt!395763) e!743958)))

(declare-fun res!523876 () Bool)

(assert (=> b!1161821 (=> res!523876 e!743958)))

(assert (=> b!1161821 (= res!523876 (not ((_ is Cons!11437) lt!395763)))))

(assert (=> b!1161821 (= lt!395763 (drop!471 lt!395757 from!787))))

(declare-fun lt!395744 () Unit!17451)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!36 (LexerInterface!1684 List!11461 Int List!11462) Unit!17451)

(assert (=> b!1161821 (= lt!395744 (tokensListTwoByTwoPredicateSeparableTokensDropList!36 Lexer!1682 lt!395757 from!787 (rules!9500 thiss!10527)))))

(assert (=> b!1161821 e!743960))

(declare-fun res!523878 () Bool)

(assert (=> b!1161821 (=> (not res!523878) (not e!743960))))

(declare-fun separableTokens!126 (LexerInterface!1684 BalanceConc!7504 List!11462) Bool)

(assert (=> b!1161821 (= res!523878 (= (separableTokens!126 Lexer!1682 lt!395749 (rules!9500 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!59 Lexer!1682 lt!395749 0 (rules!9500 thiss!10527))))))

(declare-fun b!1161822 () Bool)

(assert (=> b!1161822 (= e!743957 (tokensListTwoByTwoPredicateSeparable!59 Lexer!1682 (tokens!1594 thiss!10527) 1 (rules!9500 thiss!10527)))))

(assert (= (and start!101750 res!523884) b!1161810))

(assert (= (and b!1161810 res!523869) b!1161800))

(assert (= (and b!1161800 res!523879) b!1161817))

(assert (= (and b!1161817 (not res!523867)) b!1161804))

(assert (= (and b!1161804 res!523864) b!1161801))

(assert (= (and b!1161817 (not res!523885)) b!1161819))

(assert (= (and b!1161819 res!523872) b!1161811))

(assert (= (and b!1161811 res!523882) b!1161818))

(assert (= (and b!1161818 (not res!523865)) b!1161799))

(assert (= (and b!1161799 res!523877) b!1161803))

(assert (= (and b!1161819 (not res!523880)) b!1161806))

(assert (= (and b!1161806 (not res!523866)) b!1161821))

(assert (= (and b!1161821 res!523878) b!1161802))

(assert (= (and b!1161802 (not res!523873)) b!1161816))

(assert (= (and b!1161816 res!523875) b!1161813))

(assert (= (and b!1161816 res!523870) b!1161822))

(assert (= (and b!1161821 (not res!523876)) b!1161807))

(assert (= (and b!1161807 res!523874) b!1161815))

(assert (= (and b!1161821 res!523871) b!1161808))

(assert (= (and b!1161821 (not res!523883)) b!1161805))

(assert (= (and b!1161805 res!523868) b!1161809))

(assert (= (and b!1161821 res!523881) b!1161812))

(assert (= b!1161820 b!1161814))

(assert (= start!101750 b!1161820))

(declare-fun m!1329401 () Bool)

(assert (=> b!1161802 m!1329401))

(declare-fun m!1329403 () Bool)

(assert (=> b!1161812 m!1329403))

(declare-fun m!1329405 () Bool)

(assert (=> b!1161819 m!1329405))

(declare-fun m!1329407 () Bool)

(assert (=> b!1161819 m!1329407))

(declare-fun m!1329409 () Bool)

(assert (=> b!1161819 m!1329409))

(declare-fun m!1329411 () Bool)

(assert (=> b!1161819 m!1329411))

(assert (=> b!1161819 m!1329407))

(assert (=> b!1161819 m!1329409))

(declare-fun m!1329413 () Bool)

(assert (=> b!1161819 m!1329413))

(declare-fun m!1329415 () Bool)

(assert (=> b!1161819 m!1329415))

(declare-fun m!1329417 () Bool)

(assert (=> b!1161819 m!1329417))

(declare-fun m!1329419 () Bool)

(assert (=> b!1161810 m!1329419))

(declare-fun m!1329421 () Bool)

(assert (=> b!1161809 m!1329421))

(declare-fun m!1329423 () Bool)

(assert (=> b!1161807 m!1329423))

(declare-fun m!1329425 () Bool)

(assert (=> b!1161808 m!1329425))

(declare-fun m!1329427 () Bool)

(assert (=> b!1161820 m!1329427))

(declare-fun m!1329429 () Bool)

(assert (=> b!1161805 m!1329429))

(declare-fun m!1329431 () Bool)

(assert (=> b!1161818 m!1329431))

(declare-fun m!1329433 () Bool)

(assert (=> b!1161806 m!1329433))

(declare-fun m!1329435 () Bool)

(assert (=> b!1161822 m!1329435))

(declare-fun m!1329437 () Bool)

(assert (=> b!1161821 m!1329437))

(declare-fun m!1329439 () Bool)

(assert (=> b!1161821 m!1329439))

(declare-fun m!1329441 () Bool)

(assert (=> b!1161821 m!1329441))

(declare-fun m!1329443 () Bool)

(assert (=> b!1161821 m!1329443))

(declare-fun m!1329445 () Bool)

(assert (=> b!1161821 m!1329445))

(declare-fun m!1329447 () Bool)

(assert (=> b!1161821 m!1329447))

(declare-fun m!1329449 () Bool)

(assert (=> b!1161821 m!1329449))

(declare-fun m!1329451 () Bool)

(assert (=> b!1161821 m!1329451))

(declare-fun m!1329453 () Bool)

(assert (=> b!1161821 m!1329453))

(assert (=> b!1161821 m!1329451))

(declare-fun m!1329455 () Bool)

(assert (=> b!1161821 m!1329455))

(declare-fun m!1329457 () Bool)

(assert (=> b!1161821 m!1329457))

(declare-fun m!1329459 () Bool)

(assert (=> b!1161821 m!1329459))

(declare-fun m!1329461 () Bool)

(assert (=> b!1161821 m!1329461))

(declare-fun m!1329463 () Bool)

(assert (=> b!1161821 m!1329463))

(assert (=> b!1161821 m!1329457))

(declare-fun m!1329465 () Bool)

(assert (=> b!1161821 m!1329465))

(declare-fun m!1329467 () Bool)

(assert (=> b!1161801 m!1329467))

(declare-fun m!1329469 () Bool)

(assert (=> start!101750 m!1329469))

(declare-fun m!1329471 () Bool)

(assert (=> b!1161816 m!1329471))

(declare-fun m!1329473 () Bool)

(assert (=> b!1161816 m!1329473))

(declare-fun m!1329475 () Bool)

(assert (=> b!1161816 m!1329475))

(declare-fun m!1329477 () Bool)

(assert (=> b!1161816 m!1329477))

(declare-fun m!1329479 () Bool)

(assert (=> b!1161816 m!1329479))

(declare-fun m!1329481 () Bool)

(assert (=> b!1161816 m!1329481))

(declare-fun m!1329483 () Bool)

(assert (=> b!1161816 m!1329483))

(declare-fun m!1329485 () Bool)

(assert (=> b!1161816 m!1329485))

(declare-fun m!1329487 () Bool)

(assert (=> b!1161816 m!1329487))

(declare-fun m!1329489 () Bool)

(assert (=> b!1161816 m!1329489))

(declare-fun m!1329491 () Bool)

(assert (=> b!1161816 m!1329491))

(declare-fun m!1329493 () Bool)

(assert (=> b!1161816 m!1329493))

(declare-fun m!1329495 () Bool)

(assert (=> b!1161816 m!1329495))

(declare-fun m!1329497 () Bool)

(assert (=> b!1161816 m!1329497))

(declare-fun m!1329499 () Bool)

(assert (=> b!1161816 m!1329499))

(declare-fun m!1329501 () Bool)

(assert (=> b!1161816 m!1329501))

(declare-fun m!1329503 () Bool)

(assert (=> b!1161816 m!1329503))

(declare-fun m!1329505 () Bool)

(assert (=> b!1161816 m!1329505))

(declare-fun m!1329507 () Bool)

(assert (=> b!1161816 m!1329507))

(declare-fun m!1329509 () Bool)

(assert (=> b!1161816 m!1329509))

(declare-fun m!1329511 () Bool)

(assert (=> b!1161815 m!1329511))

(declare-fun m!1329513 () Bool)

(assert (=> b!1161803 m!1329513))

(declare-fun m!1329515 () Bool)

(assert (=> b!1161799 m!1329515))

(declare-fun m!1329517 () Bool)

(assert (=> b!1161804 m!1329517))

(declare-fun m!1329519 () Bool)

(assert (=> b!1161813 m!1329519))

(assert (=> b!1161813 m!1329519))

(declare-fun m!1329521 () Bool)

(assert (=> b!1161813 m!1329521))

(declare-fun m!1329523 () Bool)

(assert (=> b!1161817 m!1329523))

(declare-fun m!1329525 () Bool)

(assert (=> b!1161817 m!1329525))

(assert (=> b!1161817 m!1329523))

(declare-fun m!1329527 () Bool)

(assert (=> b!1161817 m!1329527))

(declare-fun m!1329529 () Bool)

(assert (=> b!1161817 m!1329529))

(declare-fun m!1329531 () Bool)

(assert (=> b!1161811 m!1329531))

(assert (=> b!1161811 m!1329433))

(declare-fun m!1329533 () Bool)

(assert (=> b!1161800 m!1329533))

(declare-fun m!1329535 () Bool)

(assert (=> b!1161800 m!1329535))

(declare-fun m!1329537 () Bool)

(assert (=> b!1161814 m!1329537))

(check-sat (not b!1161801) (not b!1161810) (not b!1161822) (not b!1161815) (not b!1161821) (not b!1161818) (not b!1161808) (not start!101750) (not b!1161803) (not b!1161812) (not b!1161805) (not b!1161804) (not b!1161800) (not b!1161820) (not b!1161809) (not b!1161829) (not b!1161819) (not b!1161817) (not b!1161830) (not b!1161814) (not b!1161811) (not b!1161802) (not b!1161799) (not b!1161806) (not b!1161813) (not b!1161816) (not b!1161807))
(check-sat)
(get-model)

(declare-fun bs!283551 () Bool)

(declare-fun d!331609 () Bool)

(assert (= bs!283551 (and d!331609 b!1161817)))

(declare-fun lambda!47440 () Int)

(assert (=> bs!283551 (= lambda!47440 lambda!47437)))

(declare-fun b!1161862 () Bool)

(declare-fun e!743998 () Bool)

(assert (=> b!1161862 (= e!743998 true)))

(declare-fun b!1161861 () Bool)

(declare-fun e!743997 () Bool)

(assert (=> b!1161861 (= e!743997 e!743998)))

(declare-fun b!1161860 () Bool)

(declare-fun e!743996 () Bool)

(assert (=> b!1161860 (= e!743996 e!743997)))

(assert (=> d!331609 e!743996))

(assert (= b!1161861 b!1161862))

(assert (= b!1161860 b!1161861))

(assert (= (and d!331609 ((_ is Cons!11438) (rules!9500 thiss!10527))) b!1161860))

(declare-fun order!6987 () Int)

(declare-fun order!6989 () Int)

(declare-fun dynLambda!5033 (Int Int) Int)

(declare-fun dynLambda!5034 (Int Int) Int)

(assert (=> b!1161862 (< (dynLambda!5033 order!6987 (toValue!3090 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47440))))

(declare-fun order!6991 () Int)

(declare-fun dynLambda!5035 (Int Int) Int)

(assert (=> b!1161862 (< (dynLambda!5035 order!6991 (toChars!2949 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47440))))

(assert (=> d!331609 true))

(declare-fun lt!395798 () Bool)

(assert (=> d!331609 (= lt!395798 (forall!2985 lt!395768 lambda!47440))))

(declare-fun e!743988 () Bool)

(assert (=> d!331609 (= lt!395798 e!743988)))

(declare-fun res!523909 () Bool)

(assert (=> d!331609 (=> res!523909 e!743988)))

(assert (=> d!331609 (= res!523909 (not ((_ is Cons!11437) lt!395768)))))

(declare-fun isEmpty!6980 (List!11462) Bool)

(assert (=> d!331609 (not (isEmpty!6980 (rules!9500 thiss!10527)))))

(assert (=> d!331609 (= (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) lt!395768) lt!395798)))

(declare-fun b!1161850 () Bool)

(declare-fun e!743989 () Bool)

(assert (=> b!1161850 (= e!743988 e!743989)))

(declare-fun res!523910 () Bool)

(assert (=> b!1161850 (=> (not res!523910) (not e!743989))))

(assert (=> b!1161850 (= res!523910 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 lt!395768)))))

(declare-fun b!1161851 () Bool)

(assert (=> b!1161851 (= e!743989 (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) (t!109891 lt!395768)))))

(assert (= (and d!331609 (not res!523909)) b!1161850))

(assert (= (and b!1161850 res!523910) b!1161851))

(declare-fun m!1329573 () Bool)

(assert (=> d!331609 m!1329573))

(declare-fun m!1329575 () Bool)

(assert (=> d!331609 m!1329575))

(assert (=> b!1161850 m!1329515))

(assert (=> b!1161851 m!1329513))

(assert (=> b!1161818 d!331609))

(declare-fun bs!283557 () Bool)

(declare-fun d!331615 () Bool)

(assert (= bs!283557 (and d!331615 b!1161817)))

(declare-fun lambda!47449 () Int)

(assert (=> bs!283557 (= lambda!47449 lambda!47437)))

(declare-fun bs!283558 () Bool)

(assert (= bs!283558 (and d!331615 d!331609)))

(assert (=> bs!283558 (= lambda!47449 lambda!47440)))

(declare-fun b!1161955 () Bool)

(declare-fun e!744064 () Bool)

(assert (=> b!1161955 (= e!744064 true)))

(declare-fun b!1161954 () Bool)

(declare-fun e!744063 () Bool)

(assert (=> b!1161954 (= e!744063 e!744064)))

(declare-fun b!1161953 () Bool)

(declare-fun e!744062 () Bool)

(assert (=> b!1161953 (= e!744062 e!744063)))

(assert (=> d!331615 e!744062))

(assert (= b!1161954 b!1161955))

(assert (= b!1161953 b!1161954))

(assert (= (and d!331615 ((_ is Cons!11438) (rules!9500 thiss!10527))) b!1161953))

(assert (=> b!1161955 (< (dynLambda!5033 order!6987 (toValue!3090 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47449))))

(assert (=> b!1161955 (< (dynLambda!5035 order!6991 (toChars!2949 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47449))))

(assert (=> d!331615 true))

(declare-fun e!744061 () Bool)

(assert (=> d!331615 e!744061))

(declare-fun res!523944 () Bool)

(assert (=> d!331615 (=> (not res!523944) (not e!744061))))

(declare-fun lt!395832 () Bool)

(assert (=> d!331615 (= res!523944 (= lt!395832 (forall!2985 (list!4208 (tokens!1594 thiss!10527)) lambda!47449)))))

(assert (=> d!331615 (= lt!395832 (forall!2984 (tokens!1594 thiss!10527) lambda!47449))))

(assert (=> d!331615 (not (isEmpty!6980 (rules!9500 thiss!10527)))))

(assert (=> d!331615 (= (rulesProduceEachTokenIndividually!723 Lexer!1682 (rules!9500 thiss!10527) (tokens!1594 thiss!10527)) lt!395832)))

(declare-fun b!1161952 () Bool)

(assert (=> b!1161952 (= e!744061 (= lt!395832 (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) (list!4208 (tokens!1594 thiss!10527)))))))

(assert (= (and d!331615 res!523944) b!1161952))

(assert (=> d!331615 m!1329527))

(assert (=> d!331615 m!1329527))

(declare-fun m!1329673 () Bool)

(assert (=> d!331615 m!1329673))

(declare-fun m!1329675 () Bool)

(assert (=> d!331615 m!1329675))

(assert (=> d!331615 m!1329575))

(assert (=> b!1161952 m!1329527))

(assert (=> b!1161952 m!1329527))

(declare-fun m!1329677 () Bool)

(assert (=> b!1161952 m!1329677))

(assert (=> b!1161817 d!331615))

(declare-fun d!331651 () Bool)

(declare-fun list!4210 (Conc!3741) List!11461)

(assert (=> d!331651 (= (list!4208 (tokens!1594 thiss!10527)) (list!4210 (c!194312 (tokens!1594 thiss!10527))))))

(declare-fun bs!283559 () Bool)

(assert (= bs!283559 d!331651))

(declare-fun m!1329679 () Bool)

(assert (=> bs!283559 m!1329679))

(assert (=> b!1161817 d!331651))

(declare-fun bs!283560 () Bool)

(declare-fun d!331653 () Bool)

(assert (= bs!283560 (and d!331653 b!1161817)))

(declare-fun lambda!47450 () Int)

(assert (=> bs!283560 (= lambda!47450 lambda!47437)))

(declare-fun bs!283561 () Bool)

(assert (= bs!283561 (and d!331653 d!331609)))

(assert (=> bs!283561 (= lambda!47450 lambda!47440)))

(declare-fun bs!283562 () Bool)

(assert (= bs!283562 (and d!331653 d!331615)))

(assert (=> bs!283562 (= lambda!47450 lambda!47449)))

(declare-fun b!1161960 () Bool)

(declare-fun e!744069 () Bool)

(assert (=> b!1161960 (= e!744069 true)))

(declare-fun b!1161959 () Bool)

(declare-fun e!744068 () Bool)

(assert (=> b!1161959 (= e!744068 e!744069)))

(declare-fun b!1161958 () Bool)

(declare-fun e!744067 () Bool)

(assert (=> b!1161958 (= e!744067 e!744068)))

(assert (=> d!331653 e!744067))

(assert (= b!1161959 b!1161960))

(assert (= b!1161958 b!1161959))

(assert (= (and d!331653 ((_ is Cons!11438) (rules!9500 thiss!10527))) b!1161958))

(assert (=> b!1161960 (< (dynLambda!5033 order!6987 (toValue!3090 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47450))))

(assert (=> b!1161960 (< (dynLambda!5035 order!6991 (toChars!2949 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47450))))

(assert (=> d!331653 true))

(declare-fun lt!395833 () Bool)

(assert (=> d!331653 (= lt!395833 (forall!2985 lt!395757 lambda!47450))))

(declare-fun e!744065 () Bool)

(assert (=> d!331653 (= lt!395833 e!744065)))

(declare-fun res!523945 () Bool)

(assert (=> d!331653 (=> res!523945 e!744065)))

(assert (=> d!331653 (= res!523945 (not ((_ is Cons!11437) lt!395757)))))

(assert (=> d!331653 (not (isEmpty!6980 (rules!9500 thiss!10527)))))

(assert (=> d!331653 (= (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) lt!395757) lt!395833)))

(declare-fun b!1161956 () Bool)

(declare-fun e!744066 () Bool)

(assert (=> b!1161956 (= e!744065 e!744066)))

(declare-fun res!523946 () Bool)

(assert (=> b!1161956 (=> (not res!523946) (not e!744066))))

(assert (=> b!1161956 (= res!523946 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 lt!395757)))))

(declare-fun b!1161957 () Bool)

(assert (=> b!1161957 (= e!744066 (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) (t!109891 lt!395757)))))

(assert (= (and d!331653 (not res!523945)) b!1161956))

(assert (= (and b!1161956 res!523946) b!1161957))

(declare-fun m!1329681 () Bool)

(assert (=> d!331653 m!1329681))

(assert (=> d!331653 m!1329575))

(assert (=> b!1161956 m!1329517))

(assert (=> b!1161957 m!1329467))

(assert (=> b!1161817 d!331653))

(declare-fun d!331655 () Bool)

(declare-fun lt!395836 () Bool)

(assert (=> d!331655 (= lt!395836 (forall!2985 (list!4208 (tokens!1594 thiss!10527)) lambda!47437))))

(declare-fun forall!2987 (Conc!3741 Int) Bool)

(assert (=> d!331655 (= lt!395836 (forall!2987 (c!194312 (tokens!1594 thiss!10527)) lambda!47437))))

(assert (=> d!331655 (= (forall!2984 (tokens!1594 thiss!10527) lambda!47437) lt!395836)))

(declare-fun bs!283563 () Bool)

(assert (= bs!283563 d!331655))

(assert (=> bs!283563 m!1329527))

(assert (=> bs!283563 m!1329527))

(declare-fun m!1329683 () Bool)

(assert (=> bs!283563 m!1329683))

(declare-fun m!1329685 () Bool)

(assert (=> bs!283563 m!1329685))

(assert (=> b!1161817 d!331655))

(declare-fun d!331657 () Bool)

(assert (=> d!331657 (= (head!2092 (drop!471 lt!395757 0)) (apply!2446 lt!395757 0))))

(declare-fun lt!395839 () Unit!17451)

(declare-fun choose!7469 (List!11461 Int) Unit!17451)

(assert (=> d!331657 (= lt!395839 (choose!7469 lt!395757 0))))

(declare-fun e!744072 () Bool)

(assert (=> d!331657 e!744072))

(declare-fun res!523949 () Bool)

(assert (=> d!331657 (=> (not res!523949) (not e!744072))))

(assert (=> d!331657 (= res!523949 (>= 0 0))))

(assert (=> d!331657 (= (lemmaDropApply!361 lt!395757 0) lt!395839)))

(declare-fun b!1161963 () Bool)

(declare-fun size!8995 (List!11461) Int)

(assert (=> b!1161963 (= e!744072 (< 0 (size!8995 lt!395757)))))

(assert (= (and d!331657 res!523949) b!1161963))

(assert (=> d!331657 m!1329501))

(assert (=> d!331657 m!1329501))

(declare-fun m!1329687 () Bool)

(assert (=> d!331657 m!1329687))

(assert (=> d!331657 m!1329473))

(declare-fun m!1329689 () Bool)

(assert (=> d!331657 m!1329689))

(declare-fun m!1329691 () Bool)

(assert (=> b!1161963 m!1329691))

(assert (=> b!1161816 d!331657))

(declare-fun d!331659 () Bool)

(assert (=> d!331659 (= (tail!1676 (drop!471 lt!395757 1)) (drop!471 lt!395757 (+ 1 1)))))

(declare-fun lt!395842 () Unit!17451)

(declare-fun choose!7470 (List!11461 Int) Unit!17451)

(assert (=> d!331659 (= lt!395842 (choose!7470 lt!395757 1))))

(declare-fun e!744075 () Bool)

(assert (=> d!331659 e!744075))

(declare-fun res!523952 () Bool)

(assert (=> d!331659 (=> (not res!523952) (not e!744075))))

(assert (=> d!331659 (= res!523952 (>= 1 0))))

(assert (=> d!331659 (= (lemmaDropTail!349 lt!395757 1) lt!395842)))

(declare-fun b!1161966 () Bool)

(assert (=> b!1161966 (= e!744075 (< 1 (size!8995 lt!395757)))))

(assert (= (and d!331659 res!523952) b!1161966))

(assert (=> d!331659 m!1329485))

(assert (=> d!331659 m!1329485))

(declare-fun m!1329693 () Bool)

(assert (=> d!331659 m!1329693))

(declare-fun m!1329695 () Bool)

(assert (=> d!331659 m!1329695))

(declare-fun m!1329697 () Bool)

(assert (=> d!331659 m!1329697))

(assert (=> b!1161966 m!1329691))

(assert (=> b!1161816 d!331659))

(declare-fun b!1161985 () Bool)

(declare-fun e!744089 () Int)

(declare-fun e!744087 () Int)

(assert (=> b!1161985 (= e!744089 e!744087)))

(declare-fun c!194341 () Bool)

(declare-fun call!82125 () Int)

(assert (=> b!1161985 (= c!194341 (>= 0 call!82125))))

(declare-fun b!1161986 () Bool)

(declare-fun e!744088 () List!11461)

(declare-fun e!744090 () List!11461)

(assert (=> b!1161986 (= e!744088 e!744090)))

(declare-fun c!194342 () Bool)

(assert (=> b!1161986 (= c!194342 (<= 0 0))))

(declare-fun b!1161987 () Bool)

(declare-fun e!744086 () Bool)

(declare-fun lt!395845 () List!11461)

(assert (=> b!1161987 (= e!744086 (= (size!8995 lt!395845) e!744089))))

(declare-fun c!194343 () Bool)

(assert (=> b!1161987 (= c!194343 (<= 0 0))))

(declare-fun b!1161988 () Bool)

(assert (=> b!1161988 (= e!744088 Nil!11437)))

(declare-fun b!1161989 () Bool)

(assert (=> b!1161989 (= e!744090 (drop!471 (t!109891 lt!395757) (- 0 1)))))

(declare-fun b!1161990 () Bool)

(assert (=> b!1161990 (= e!744090 lt!395757)))

(declare-fun b!1161991 () Bool)

(assert (=> b!1161991 (= e!744087 (- call!82125 0))))

(declare-fun d!331661 () Bool)

(assert (=> d!331661 e!744086))

(declare-fun res!523955 () Bool)

(assert (=> d!331661 (=> (not res!523955) (not e!744086))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1602 (List!11461) (InoxSet Token!3640))

(assert (=> d!331661 (= res!523955 (= ((_ map implies) (content!1602 lt!395845) (content!1602 lt!395757)) ((as const (InoxSet Token!3640)) true)))))

(assert (=> d!331661 (= lt!395845 e!744088)))

(declare-fun c!194340 () Bool)

(assert (=> d!331661 (= c!194340 ((_ is Nil!11437) lt!395757))))

(assert (=> d!331661 (= (drop!471 lt!395757 0) lt!395845)))

(declare-fun bm!82120 () Bool)

(assert (=> bm!82120 (= call!82125 (size!8995 lt!395757))))

(declare-fun b!1161992 () Bool)

(assert (=> b!1161992 (= e!744087 0)))

(declare-fun b!1161993 () Bool)

(assert (=> b!1161993 (= e!744089 call!82125)))

(assert (= (and d!331661 c!194340) b!1161988))

(assert (= (and d!331661 (not c!194340)) b!1161986))

(assert (= (and b!1161986 c!194342) b!1161990))

(assert (= (and b!1161986 (not c!194342)) b!1161989))

(assert (= (and d!331661 res!523955) b!1161987))

(assert (= (and b!1161987 c!194343) b!1161993))

(assert (= (and b!1161987 (not c!194343)) b!1161985))

(assert (= (and b!1161985 c!194341) b!1161992))

(assert (= (and b!1161985 (not c!194341)) b!1161991))

(assert (= (or b!1161993 b!1161985 b!1161991) bm!82120))

(declare-fun m!1329699 () Bool)

(assert (=> b!1161987 m!1329699))

(declare-fun m!1329701 () Bool)

(assert (=> b!1161989 m!1329701))

(declare-fun m!1329703 () Bool)

(assert (=> d!331661 m!1329703))

(declare-fun m!1329705 () Bool)

(assert (=> d!331661 m!1329705))

(assert (=> bm!82120 m!1329691))

(assert (=> b!1161816 d!331661))

(declare-fun d!331663 () Bool)

(declare-fun lt!395848 () Token!3640)

(declare-fun contains!1988 (List!11461 Token!3640) Bool)

(assert (=> d!331663 (contains!1988 lt!395757 lt!395848)))

(declare-fun e!744096 () Token!3640)

(assert (=> d!331663 (= lt!395848 e!744096)))

(declare-fun c!194346 () Bool)

(assert (=> d!331663 (= c!194346 (= 0 0))))

(declare-fun e!744095 () Bool)

(assert (=> d!331663 e!744095))

(declare-fun res!523958 () Bool)

(assert (=> d!331663 (=> (not res!523958) (not e!744095))))

(assert (=> d!331663 (= res!523958 (<= 0 0))))

(assert (=> d!331663 (= (apply!2446 lt!395757 0) lt!395848)))

(declare-fun b!1162000 () Bool)

(assert (=> b!1162000 (= e!744095 (< 0 (size!8995 lt!395757)))))

(declare-fun b!1162001 () Bool)

(assert (=> b!1162001 (= e!744096 (head!2092 lt!395757))))

(declare-fun b!1162002 () Bool)

(assert (=> b!1162002 (= e!744096 (apply!2446 (tail!1676 lt!395757) (- 0 1)))))

(assert (= (and d!331663 res!523958) b!1162000))

(assert (= (and d!331663 c!194346) b!1162001))

(assert (= (and d!331663 (not c!194346)) b!1162002))

(declare-fun m!1329707 () Bool)

(assert (=> d!331663 m!1329707))

(assert (=> b!1162000 m!1329691))

(declare-fun m!1329709 () Bool)

(assert (=> b!1162001 m!1329709))

(declare-fun m!1329711 () Bool)

(assert (=> b!1162002 m!1329711))

(assert (=> b!1162002 m!1329711))

(declare-fun m!1329713 () Bool)

(assert (=> b!1162002 m!1329713))

(assert (=> b!1161816 d!331663))

(declare-fun b!1162003 () Bool)

(declare-fun e!744100 () Int)

(declare-fun e!744098 () Int)

(assert (=> b!1162003 (= e!744100 e!744098)))

(declare-fun c!194348 () Bool)

(declare-fun call!82126 () Int)

(assert (=> b!1162003 (= c!194348 (>= 2 call!82126))))

(declare-fun b!1162004 () Bool)

(declare-fun e!744099 () List!11461)

(declare-fun e!744101 () List!11461)

(assert (=> b!1162004 (= e!744099 e!744101)))

(declare-fun c!194349 () Bool)

(assert (=> b!1162004 (= c!194349 (<= 2 0))))

(declare-fun b!1162005 () Bool)

(declare-fun e!744097 () Bool)

(declare-fun lt!395849 () List!11461)

(assert (=> b!1162005 (= e!744097 (= (size!8995 lt!395849) e!744100))))

(declare-fun c!194350 () Bool)

(assert (=> b!1162005 (= c!194350 (<= 2 0))))

(declare-fun b!1162006 () Bool)

(assert (=> b!1162006 (= e!744099 Nil!11437)))

(declare-fun b!1162007 () Bool)

(assert (=> b!1162007 (= e!744101 (drop!471 (t!109891 lt!395757) (- 2 1)))))

(declare-fun b!1162008 () Bool)

(assert (=> b!1162008 (= e!744101 lt!395757)))

(declare-fun b!1162009 () Bool)

(assert (=> b!1162009 (= e!744098 (- call!82126 2))))

(declare-fun d!331665 () Bool)

(assert (=> d!331665 e!744097))

(declare-fun res!523959 () Bool)

(assert (=> d!331665 (=> (not res!523959) (not e!744097))))

(assert (=> d!331665 (= res!523959 (= ((_ map implies) (content!1602 lt!395849) (content!1602 lt!395757)) ((as const (InoxSet Token!3640)) true)))))

(assert (=> d!331665 (= lt!395849 e!744099)))

(declare-fun c!194347 () Bool)

(assert (=> d!331665 (= c!194347 ((_ is Nil!11437) lt!395757))))

(assert (=> d!331665 (= (drop!471 lt!395757 2) lt!395849)))

(declare-fun bm!82121 () Bool)

(assert (=> bm!82121 (= call!82126 (size!8995 lt!395757))))

(declare-fun b!1162010 () Bool)

(assert (=> b!1162010 (= e!744098 0)))

(declare-fun b!1162011 () Bool)

(assert (=> b!1162011 (= e!744100 call!82126)))

(assert (= (and d!331665 c!194347) b!1162006))

(assert (= (and d!331665 (not c!194347)) b!1162004))

(assert (= (and b!1162004 c!194349) b!1162008))

(assert (= (and b!1162004 (not c!194349)) b!1162007))

(assert (= (and d!331665 res!523959) b!1162005))

(assert (= (and b!1162005 c!194350) b!1162011))

(assert (= (and b!1162005 (not c!194350)) b!1162003))

(assert (= (and b!1162003 c!194348) b!1162010))

(assert (= (and b!1162003 (not c!194348)) b!1162009))

(assert (= (or b!1162011 b!1162003 b!1162009) bm!82121))

(declare-fun m!1329715 () Bool)

(assert (=> b!1162005 m!1329715))

(declare-fun m!1329717 () Bool)

(assert (=> b!1162007 m!1329717))

(declare-fun m!1329719 () Bool)

(assert (=> d!331665 m!1329719))

(assert (=> d!331665 m!1329705))

(assert (=> bm!82121 m!1329691))

(assert (=> b!1161816 d!331665))

(declare-fun d!331667 () Bool)

(assert (=> d!331667 (= (head!2092 lt!395762) (h!16838 lt!395762))))

(assert (=> b!1161816 d!331667))

(declare-fun d!331669 () Bool)

(declare-fun lt!395850 () Token!3640)

(assert (=> d!331669 (contains!1988 lt!395757 lt!395850)))

(declare-fun e!744103 () Token!3640)

(assert (=> d!331669 (= lt!395850 e!744103)))

(declare-fun c!194351 () Bool)

(assert (=> d!331669 (= c!194351 (= 1 0))))

(declare-fun e!744102 () Bool)

(assert (=> d!331669 e!744102))

(declare-fun res!523960 () Bool)

(assert (=> d!331669 (=> (not res!523960) (not e!744102))))

(assert (=> d!331669 (= res!523960 (<= 0 1))))

(assert (=> d!331669 (= (apply!2446 lt!395757 1) lt!395850)))

(declare-fun b!1162012 () Bool)

(assert (=> b!1162012 (= e!744102 (< 1 (size!8995 lt!395757)))))

(declare-fun b!1162013 () Bool)

(assert (=> b!1162013 (= e!744103 (head!2092 lt!395757))))

(declare-fun b!1162014 () Bool)

(assert (=> b!1162014 (= e!744103 (apply!2446 (tail!1676 lt!395757) (- 1 1)))))

(assert (= (and d!331669 res!523960) b!1162012))

(assert (= (and d!331669 c!194351) b!1162013))

(assert (= (and d!331669 (not c!194351)) b!1162014))

(declare-fun m!1329721 () Bool)

(assert (=> d!331669 m!1329721))

(assert (=> b!1162012 m!1329691))

(assert (=> b!1162013 m!1329709))

(assert (=> b!1162014 m!1329711))

(assert (=> b!1162014 m!1329711))

(declare-fun m!1329723 () Bool)

(assert (=> b!1162014 m!1329723))

(assert (=> b!1161816 d!331669))

(declare-fun d!331671 () Bool)

(declare-fun lt!395853 () Token!3640)

(assert (=> d!331671 (= lt!395853 (apply!2446 (list!4208 (tokens!1594 thiss!10527)) 1))))

(declare-fun apply!2449 (Conc!3741 Int) Token!3640)

(assert (=> d!331671 (= lt!395853 (apply!2449 (c!194312 (tokens!1594 thiss!10527)) 1))))

(declare-fun e!744106 () Bool)

(assert (=> d!331671 e!744106))

(declare-fun res!523963 () Bool)

(assert (=> d!331671 (=> (not res!523963) (not e!744106))))

(assert (=> d!331671 (= res!523963 (<= 0 1))))

(assert (=> d!331671 (= (apply!2445 (tokens!1594 thiss!10527) 1) lt!395853)))

(declare-fun b!1162017 () Bool)

(assert (=> b!1162017 (= e!744106 (< 1 (size!8990 (tokens!1594 thiss!10527))))))

(assert (= (and d!331671 res!523963) b!1162017))

(assert (=> d!331671 m!1329527))

(assert (=> d!331671 m!1329527))

(declare-fun m!1329725 () Bool)

(assert (=> d!331671 m!1329725))

(declare-fun m!1329727 () Bool)

(assert (=> d!331671 m!1329727))

(assert (=> b!1162017 m!1329419))

(assert (=> b!1161816 d!331671))

(declare-fun d!331673 () Bool)

(declare-fun lt!395868 () Bool)

(declare-fun e!744126 () Bool)

(assert (=> d!331673 (= lt!395868 e!744126)))

(declare-fun res!523982 () Bool)

(assert (=> d!331673 (=> (not res!523982) (not e!744126))))

(declare-datatypes ((tuple2!12006 0))(
  ( (tuple2!12007 (_1!6850 BalanceConc!7504) (_2!6850 BalanceConc!7502)) )
))
(declare-fun lex!696 (LexerInterface!1684 List!11462 BalanceConc!7502) tuple2!12006)

(declare-fun print!633 (LexerInterface!1684 BalanceConc!7504) BalanceConc!7502)

(declare-fun singletonSeq!654 (Token!3640) BalanceConc!7504)

(assert (=> d!331673 (= res!523982 (= (list!4208 (_1!6850 (lex!696 Lexer!1682 (rules!9500 thiss!10527) (print!633 Lexer!1682 (singletonSeq!654 lt!395759))))) (list!4208 (singletonSeq!654 lt!395759))))))

(declare-fun e!744125 () Bool)

(assert (=> d!331673 (= lt!395868 e!744125)))

(declare-fun res!523981 () Bool)

(assert (=> d!331673 (=> (not res!523981) (not e!744125))))

(declare-fun lt!395869 () tuple2!12006)

(assert (=> d!331673 (= res!523981 (= (size!8990 (_1!6850 lt!395869)) 1))))

(assert (=> d!331673 (= lt!395869 (lex!696 Lexer!1682 (rules!9500 thiss!10527) (print!633 Lexer!1682 (singletonSeq!654 lt!395759))))))

(assert (=> d!331673 (not (isEmpty!6980 (rules!9500 thiss!10527)))))

(assert (=> d!331673 (= (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) lt!395759) lt!395868)))

(declare-fun b!1162044 () Bool)

(declare-fun res!523980 () Bool)

(assert (=> b!1162044 (=> (not res!523980) (not e!744125))))

(assert (=> b!1162044 (= res!523980 (= (apply!2445 (_1!6850 lt!395869) 0) lt!395759))))

(declare-fun b!1162045 () Bool)

(declare-fun isEmpty!6981 (BalanceConc!7502) Bool)

(assert (=> b!1162045 (= e!744125 (isEmpty!6981 (_2!6850 lt!395869)))))

(declare-fun b!1162046 () Bool)

(assert (=> b!1162046 (= e!744126 (isEmpty!6981 (_2!6850 (lex!696 Lexer!1682 (rules!9500 thiss!10527) (print!633 Lexer!1682 (singletonSeq!654 lt!395759))))))))

(assert (= (and d!331673 res!523981) b!1162044))

(assert (= (and b!1162044 res!523980) b!1162045))

(assert (= (and d!331673 res!523982) b!1162046))

(declare-fun m!1329787 () Bool)

(assert (=> d!331673 m!1329787))

(declare-fun m!1329789 () Bool)

(assert (=> d!331673 m!1329789))

(declare-fun m!1329791 () Bool)

(assert (=> d!331673 m!1329791))

(assert (=> d!331673 m!1329787))

(assert (=> d!331673 m!1329787))

(declare-fun m!1329793 () Bool)

(assert (=> d!331673 m!1329793))

(assert (=> d!331673 m!1329575))

(declare-fun m!1329795 () Bool)

(assert (=> d!331673 m!1329795))

(assert (=> d!331673 m!1329789))

(declare-fun m!1329797 () Bool)

(assert (=> d!331673 m!1329797))

(declare-fun m!1329799 () Bool)

(assert (=> b!1162044 m!1329799))

(declare-fun m!1329801 () Bool)

(assert (=> b!1162045 m!1329801))

(assert (=> b!1162046 m!1329787))

(assert (=> b!1162046 m!1329787))

(assert (=> b!1162046 m!1329789))

(assert (=> b!1162046 m!1329789))

(assert (=> b!1162046 m!1329797))

(declare-fun m!1329803 () Bool)

(assert (=> b!1162046 m!1329803))

(assert (=> b!1161816 d!331673))

(declare-fun d!331695 () Bool)

(assert (=> d!331695 (= (tail!1676 lt!395762) (t!109891 lt!395762))))

(assert (=> b!1161816 d!331695))

(declare-fun b!1162047 () Bool)

(declare-fun e!744130 () Int)

(declare-fun e!744128 () Int)

(assert (=> b!1162047 (= e!744130 e!744128)))

(declare-fun c!194358 () Bool)

(declare-fun call!82128 () Int)

(assert (=> b!1162047 (= c!194358 (>= 1 call!82128))))

(declare-fun b!1162048 () Bool)

(declare-fun e!744129 () List!11461)

(declare-fun e!744131 () List!11461)

(assert (=> b!1162048 (= e!744129 e!744131)))

(declare-fun c!194359 () Bool)

(assert (=> b!1162048 (= c!194359 (<= 1 0))))

(declare-fun b!1162049 () Bool)

(declare-fun e!744127 () Bool)

(declare-fun lt!395870 () List!11461)

(assert (=> b!1162049 (= e!744127 (= (size!8995 lt!395870) e!744130))))

(declare-fun c!194360 () Bool)

(assert (=> b!1162049 (= c!194360 (<= 1 0))))

(declare-fun b!1162050 () Bool)

(assert (=> b!1162050 (= e!744129 Nil!11437)))

(declare-fun b!1162051 () Bool)

(assert (=> b!1162051 (= e!744131 (drop!471 (t!109891 lt!395757) (- 1 1)))))

(declare-fun b!1162052 () Bool)

(assert (=> b!1162052 (= e!744131 lt!395757)))

(declare-fun b!1162053 () Bool)

(assert (=> b!1162053 (= e!744128 (- call!82128 1))))

(declare-fun d!331697 () Bool)

(assert (=> d!331697 e!744127))

(declare-fun res!523983 () Bool)

(assert (=> d!331697 (=> (not res!523983) (not e!744127))))

(assert (=> d!331697 (= res!523983 (= ((_ map implies) (content!1602 lt!395870) (content!1602 lt!395757)) ((as const (InoxSet Token!3640)) true)))))

(assert (=> d!331697 (= lt!395870 e!744129)))

(declare-fun c!194357 () Bool)

(assert (=> d!331697 (= c!194357 ((_ is Nil!11437) lt!395757))))

(assert (=> d!331697 (= (drop!471 lt!395757 1) lt!395870)))

(declare-fun bm!82123 () Bool)

(assert (=> bm!82123 (= call!82128 (size!8995 lt!395757))))

(declare-fun b!1162054 () Bool)

(assert (=> b!1162054 (= e!744128 0)))

(declare-fun b!1162055 () Bool)

(assert (=> b!1162055 (= e!744130 call!82128)))

(assert (= (and d!331697 c!194357) b!1162050))

(assert (= (and d!331697 (not c!194357)) b!1162048))

(assert (= (and b!1162048 c!194359) b!1162052))

(assert (= (and b!1162048 (not c!194359)) b!1162051))

(assert (= (and d!331697 res!523983) b!1162049))

(assert (= (and b!1162049 c!194360) b!1162055))

(assert (= (and b!1162049 (not c!194360)) b!1162047))

(assert (= (and b!1162047 c!194358) b!1162054))

(assert (= (and b!1162047 (not c!194358)) b!1162053))

(assert (= (or b!1162055 b!1162047 b!1162053) bm!82123))

(declare-fun m!1329805 () Bool)

(assert (=> b!1162049 m!1329805))

(declare-fun m!1329807 () Bool)

(assert (=> b!1162051 m!1329807))

(declare-fun m!1329809 () Bool)

(assert (=> d!331697 m!1329809))

(assert (=> d!331697 m!1329705))

(assert (=> bm!82123 m!1329691))

(assert (=> b!1161816 d!331697))

(declare-fun d!331699 () Bool)

(assert (=> d!331699 (= (head!2092 (drop!471 lt!395757 1)) (apply!2446 lt!395757 1))))

(declare-fun lt!395871 () Unit!17451)

(assert (=> d!331699 (= lt!395871 (choose!7469 lt!395757 1))))

(declare-fun e!744132 () Bool)

(assert (=> d!331699 e!744132))

(declare-fun res!523984 () Bool)

(assert (=> d!331699 (=> (not res!523984) (not e!744132))))

(assert (=> d!331699 (= res!523984 (>= 1 0))))

(assert (=> d!331699 (= (lemmaDropApply!361 lt!395757 1) lt!395871)))

(declare-fun b!1162056 () Bool)

(assert (=> b!1162056 (= e!744132 (< 1 (size!8995 lt!395757)))))

(assert (= (and d!331699 res!523984) b!1162056))

(assert (=> d!331699 m!1329485))

(assert (=> d!331699 m!1329485))

(declare-fun m!1329811 () Bool)

(assert (=> d!331699 m!1329811))

(assert (=> d!331699 m!1329477))

(declare-fun m!1329813 () Bool)

(assert (=> d!331699 m!1329813))

(assert (=> b!1162056 m!1329691))

(assert (=> b!1161816 d!331699))

(declare-fun d!331701 () Bool)

(declare-fun lt!395872 () Token!3640)

(assert (=> d!331701 (= lt!395872 (apply!2446 (list!4208 (tokens!1594 thiss!10527)) 0))))

(assert (=> d!331701 (= lt!395872 (apply!2449 (c!194312 (tokens!1594 thiss!10527)) 0))))

(declare-fun e!744133 () Bool)

(assert (=> d!331701 e!744133))

(declare-fun res!523985 () Bool)

(assert (=> d!331701 (=> (not res!523985) (not e!744133))))

(assert (=> d!331701 (= res!523985 (<= 0 0))))

(assert (=> d!331701 (= (apply!2445 (tokens!1594 thiss!10527) 0) lt!395872)))

(declare-fun b!1162057 () Bool)

(assert (=> b!1162057 (= e!744133 (< 0 (size!8990 (tokens!1594 thiss!10527))))))

(assert (= (and d!331701 res!523985) b!1162057))

(assert (=> d!331701 m!1329527))

(assert (=> d!331701 m!1329527))

(declare-fun m!1329815 () Bool)

(assert (=> d!331701 m!1329815))

(declare-fun m!1329817 () Bool)

(assert (=> d!331701 m!1329817))

(assert (=> b!1162057 m!1329419))

(assert (=> b!1161816 d!331701))

(declare-fun d!331703 () Bool)

(assert (=> d!331703 (= (head!2092 lt!395756) (h!16838 lt!395756))))

(assert (=> b!1161816 d!331703))

(declare-fun d!331705 () Bool)

(declare-fun prefixMatchZipperSequence!85 (Regex!3259 BalanceConc!7502) Bool)

(declare-fun rulesRegex!60 (LexerInterface!1684 List!11462) Regex!3259)

(declare-fun ++!2974 (BalanceConc!7502 BalanceConc!7502) BalanceConc!7502)

(declare-fun singletonSeq!655 (C!6836) BalanceConc!7502)

(declare-fun apply!2450 (BalanceConc!7502 Int) C!6836)

(assert (=> d!331705 (= (separableTokensPredicate!120 Lexer!1682 lt!395759 lt!395765 (rules!9500 thiss!10527)) (not (prefixMatchZipperSequence!85 (rulesRegex!60 Lexer!1682 (rules!9500 thiss!10527)) (++!2974 (charsOf!1058 lt!395759) (singletonSeq!655 (apply!2450 (charsOf!1058 lt!395765) 0))))))))

(declare-fun bs!283568 () Bool)

(assert (= bs!283568 d!331705))

(declare-fun m!1329819 () Bool)

(assert (=> bs!283568 m!1329819))

(assert (=> bs!283568 m!1329819))

(declare-fun m!1329821 () Bool)

(assert (=> bs!283568 m!1329821))

(declare-fun m!1329823 () Bool)

(assert (=> bs!283568 m!1329823))

(declare-fun m!1329825 () Bool)

(assert (=> bs!283568 m!1329825))

(declare-fun m!1329827 () Bool)

(assert (=> bs!283568 m!1329827))

(declare-fun m!1329829 () Bool)

(assert (=> bs!283568 m!1329829))

(assert (=> bs!283568 m!1329519))

(assert (=> bs!283568 m!1329827))

(assert (=> bs!283568 m!1329519))

(assert (=> bs!283568 m!1329825))

(assert (=> bs!283568 m!1329829))

(assert (=> bs!283568 m!1329821))

(assert (=> b!1161816 d!331705))

(declare-fun d!331707 () Bool)

(assert (=> d!331707 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) lt!395765)))

(declare-fun lt!395875 () Unit!17451)

(declare-fun choose!7471 (LexerInterface!1684 List!11462 List!11461 Token!3640) Unit!17451)

(assert (=> d!331707 (= lt!395875 (choose!7471 Lexer!1682 (rules!9500 thiss!10527) lt!395757 lt!395765))))

(assert (=> d!331707 (not (isEmpty!6980 (rules!9500 thiss!10527)))))

(assert (=> d!331707 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!279 Lexer!1682 (rules!9500 thiss!10527) lt!395757 lt!395765) lt!395875)))

(declare-fun bs!283569 () Bool)

(assert (= bs!283569 d!331707))

(assert (=> bs!283569 m!1329497))

(declare-fun m!1329833 () Bool)

(assert (=> bs!283569 m!1329833))

(assert (=> bs!283569 m!1329575))

(assert (=> b!1161816 d!331707))

(declare-fun d!331711 () Bool)

(assert (=> d!331711 (= (tail!1676 (drop!471 lt!395757 0)) (drop!471 lt!395757 (+ 0 1)))))

(declare-fun lt!395876 () Unit!17451)

(assert (=> d!331711 (= lt!395876 (choose!7470 lt!395757 0))))

(declare-fun e!744137 () Bool)

(assert (=> d!331711 e!744137))

(declare-fun res!523992 () Bool)

(assert (=> d!331711 (=> (not res!523992) (not e!744137))))

(assert (=> d!331711 (= res!523992 (>= 0 0))))

(assert (=> d!331711 (= (lemmaDropTail!349 lt!395757 0) lt!395876)))

(declare-fun b!1162064 () Bool)

(assert (=> b!1162064 (= e!744137 (< 0 (size!8995 lt!395757)))))

(assert (= (and d!331711 res!523992) b!1162064))

(assert (=> d!331711 m!1329501))

(assert (=> d!331711 m!1329501))

(declare-fun m!1329835 () Bool)

(assert (=> d!331711 m!1329835))

(declare-fun m!1329837 () Bool)

(assert (=> d!331711 m!1329837))

(declare-fun m!1329839 () Bool)

(assert (=> d!331711 m!1329839))

(assert (=> b!1162064 m!1329691))

(assert (=> b!1161816 d!331711))

(declare-fun d!331713 () Bool)

(declare-fun lt!395877 () Bool)

(declare-fun e!744139 () Bool)

(assert (=> d!331713 (= lt!395877 e!744139)))

(declare-fun res!523995 () Bool)

(assert (=> d!331713 (=> (not res!523995) (not e!744139))))

(assert (=> d!331713 (= res!523995 (= (list!4208 (_1!6850 (lex!696 Lexer!1682 (rules!9500 thiss!10527) (print!633 Lexer!1682 (singletonSeq!654 lt!395765))))) (list!4208 (singletonSeq!654 lt!395765))))))

(declare-fun e!744138 () Bool)

(assert (=> d!331713 (= lt!395877 e!744138)))

(declare-fun res!523994 () Bool)

(assert (=> d!331713 (=> (not res!523994) (not e!744138))))

(declare-fun lt!395878 () tuple2!12006)

(assert (=> d!331713 (= res!523994 (= (size!8990 (_1!6850 lt!395878)) 1))))

(assert (=> d!331713 (= lt!395878 (lex!696 Lexer!1682 (rules!9500 thiss!10527) (print!633 Lexer!1682 (singletonSeq!654 lt!395765))))))

(assert (=> d!331713 (not (isEmpty!6980 (rules!9500 thiss!10527)))))

(assert (=> d!331713 (= (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) lt!395765) lt!395877)))

(declare-fun b!1162065 () Bool)

(declare-fun res!523993 () Bool)

(assert (=> b!1162065 (=> (not res!523993) (not e!744138))))

(assert (=> b!1162065 (= res!523993 (= (apply!2445 (_1!6850 lt!395878) 0) lt!395765))))

(declare-fun b!1162066 () Bool)

(assert (=> b!1162066 (= e!744138 (isEmpty!6981 (_2!6850 lt!395878)))))

(declare-fun b!1162067 () Bool)

(assert (=> b!1162067 (= e!744139 (isEmpty!6981 (_2!6850 (lex!696 Lexer!1682 (rules!9500 thiss!10527) (print!633 Lexer!1682 (singletonSeq!654 lt!395765))))))))

(assert (= (and d!331713 res!523994) b!1162065))

(assert (= (and b!1162065 res!523993) b!1162066))

(assert (= (and d!331713 res!523995) b!1162067))

(declare-fun m!1329841 () Bool)

(assert (=> d!331713 m!1329841))

(declare-fun m!1329843 () Bool)

(assert (=> d!331713 m!1329843))

(declare-fun m!1329845 () Bool)

(assert (=> d!331713 m!1329845))

(assert (=> d!331713 m!1329841))

(assert (=> d!331713 m!1329841))

(declare-fun m!1329847 () Bool)

(assert (=> d!331713 m!1329847))

(assert (=> d!331713 m!1329575))

(declare-fun m!1329849 () Bool)

(assert (=> d!331713 m!1329849))

(assert (=> d!331713 m!1329843))

(declare-fun m!1329851 () Bool)

(assert (=> d!331713 m!1329851))

(declare-fun m!1329853 () Bool)

(assert (=> b!1162065 m!1329853))

(declare-fun m!1329855 () Bool)

(assert (=> b!1162066 m!1329855))

(assert (=> b!1162067 m!1329841))

(assert (=> b!1162067 m!1329841))

(assert (=> b!1162067 m!1329843))

(assert (=> b!1162067 m!1329843))

(assert (=> b!1162067 m!1329851))

(declare-fun m!1329857 () Bool)

(assert (=> b!1162067 m!1329857))

(assert (=> b!1161816 d!331713))

(declare-fun d!331715 () Bool)

(assert (=> d!331715 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) lt!395759)))

(declare-fun lt!395879 () Unit!17451)

(assert (=> d!331715 (= lt!395879 (choose!7471 Lexer!1682 (rules!9500 thiss!10527) lt!395757 lt!395759))))

(assert (=> d!331715 (not (isEmpty!6980 (rules!9500 thiss!10527)))))

(assert (=> d!331715 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!279 Lexer!1682 (rules!9500 thiss!10527) lt!395757 lt!395759) lt!395879)))

(declare-fun bs!283570 () Bool)

(assert (= bs!283570 d!331715))

(assert (=> bs!283570 m!1329505))

(declare-fun m!1329859 () Bool)

(assert (=> bs!283570 m!1329859))

(assert (=> bs!283570 m!1329575))

(assert (=> b!1161816 d!331715))

(declare-fun d!331717 () Bool)

(assert (=> d!331717 (= (tail!1676 lt!395756) (t!109891 lt!395756))))

(assert (=> b!1161816 d!331717))

(declare-fun bs!283571 () Bool)

(declare-fun d!331719 () Bool)

(assert (= bs!283571 (and d!331719 b!1161817)))

(declare-fun lambda!47451 () Int)

(assert (=> bs!283571 (= lambda!47451 lambda!47437)))

(declare-fun bs!283572 () Bool)

(assert (= bs!283572 (and d!331719 d!331609)))

(assert (=> bs!283572 (= lambda!47451 lambda!47440)))

(declare-fun bs!283573 () Bool)

(assert (= bs!283573 (and d!331719 d!331615)))

(assert (=> bs!283573 (= lambda!47451 lambda!47449)))

(declare-fun bs!283574 () Bool)

(assert (= bs!283574 (and d!331719 d!331653)))

(assert (=> bs!283574 (= lambda!47451 lambda!47450)))

(declare-fun b!1162072 () Bool)

(declare-fun e!744144 () Bool)

(assert (=> b!1162072 (= e!744144 true)))

(declare-fun b!1162071 () Bool)

(declare-fun e!744143 () Bool)

(assert (=> b!1162071 (= e!744143 e!744144)))

(declare-fun b!1162070 () Bool)

(declare-fun e!744142 () Bool)

(assert (=> b!1162070 (= e!744142 e!744143)))

(assert (=> d!331719 e!744142))

(assert (= b!1162071 b!1162072))

(assert (= b!1162070 b!1162071))

(assert (= (and d!331719 ((_ is Cons!11438) (rules!9500 thiss!10527))) b!1162070))

(assert (=> b!1162072 (< (dynLambda!5033 order!6987 (toValue!3090 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47451))))

(assert (=> b!1162072 (< (dynLambda!5035 order!6991 (toChars!2949 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47451))))

(assert (=> d!331719 true))

(declare-fun lt!395880 () Bool)

(assert (=> d!331719 (= lt!395880 (forall!2985 lt!395763 lambda!47451))))

(declare-fun e!744140 () Bool)

(assert (=> d!331719 (= lt!395880 e!744140)))

(declare-fun res!523996 () Bool)

(assert (=> d!331719 (=> res!523996 e!744140)))

(assert (=> d!331719 (= res!523996 (not ((_ is Cons!11437) lt!395763)))))

(assert (=> d!331719 (not (isEmpty!6980 (rules!9500 thiss!10527)))))

(assert (=> d!331719 (= (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) lt!395763) lt!395880)))

(declare-fun b!1162068 () Bool)

(declare-fun e!744141 () Bool)

(assert (=> b!1162068 (= e!744140 e!744141)))

(declare-fun res!523997 () Bool)

(assert (=> b!1162068 (=> (not res!523997) (not e!744141))))

(assert (=> b!1162068 (= res!523997 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 lt!395763)))))

(declare-fun b!1162069 () Bool)

(assert (=> b!1162069 (= e!744141 (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) (t!109891 lt!395763)))))

(assert (= (and d!331719 (not res!523996)) b!1162068))

(assert (= (and b!1162068 res!523997) b!1162069))

(declare-fun m!1329861 () Bool)

(assert (=> d!331719 m!1329861))

(assert (=> d!331719 m!1329575))

(assert (=> b!1162068 m!1329423))

(assert (=> b!1162069 m!1329511))

(assert (=> b!1161821 d!331719))

(declare-fun bs!283603 () Bool)

(declare-fun b!1162114 () Bool)

(assert (= bs!283603 (and b!1162114 d!331653)))

(declare-fun lambda!47463 () Int)

(assert (=> bs!283603 (= lambda!47463 lambda!47450)))

(declare-fun bs!283604 () Bool)

(assert (= bs!283604 (and b!1162114 d!331615)))

(assert (=> bs!283604 (= lambda!47463 lambda!47449)))

(declare-fun bs!283605 () Bool)

(assert (= bs!283605 (and b!1162114 b!1161817)))

(assert (=> bs!283605 (= lambda!47463 lambda!47437)))

(declare-fun bs!283606 () Bool)

(assert (= bs!283606 (and b!1162114 d!331609)))

(assert (=> bs!283606 (= lambda!47463 lambda!47440)))

(declare-fun bs!283607 () Bool)

(assert (= bs!283607 (and b!1162114 d!331719)))

(assert (=> bs!283607 (= lambda!47463 lambda!47451)))

(declare-fun b!1162118 () Bool)

(declare-fun e!744188 () Bool)

(assert (=> b!1162118 (= e!744188 true)))

(declare-fun b!1162117 () Bool)

(declare-fun e!744187 () Bool)

(assert (=> b!1162117 (= e!744187 e!744188)))

(declare-fun b!1162116 () Bool)

(declare-fun e!744186 () Bool)

(assert (=> b!1162116 (= e!744186 e!744187)))

(assert (=> b!1162114 e!744186))

(assert (= b!1162117 b!1162118))

(assert (= b!1162116 b!1162117))

(assert (= (and b!1162114 ((_ is Cons!11438) (rules!9500 thiss!10527))) b!1162116))

(assert (=> b!1162118 (< (dynLambda!5033 order!6987 (toValue!3090 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47463))))

(assert (=> b!1162118 (< (dynLambda!5035 order!6991 (toChars!2949 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47463))))

(declare-fun b!1162115 () Bool)

(declare-fun e!744185 () Bool)

(declare-fun lt!395915 () List!11461)

(assert (=> b!1162115 (= e!744185 (subseq!245 lt!395915 lt!395757))))

(declare-fun d!331721 () Bool)

(declare-fun e!744182 () Bool)

(assert (=> d!331721 e!744182))

(declare-fun res!524024 () Bool)

(assert (=> d!331721 (=> (not res!524024) (not e!744182))))

(declare-fun e!744183 () Bool)

(assert (=> d!331721 (= res!524024 (= (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) (drop!471 lt!395757 from!787)) e!744183))))

(declare-fun res!524023 () Bool)

(assert (=> d!331721 (=> res!524023 e!744183)))

(declare-fun lt!395910 () List!11461)

(assert (=> d!331721 (= res!524023 (not ((_ is Cons!11437) lt!395910)))))

(assert (=> d!331721 (= lt!395910 (drop!471 lt!395757 from!787))))

(declare-fun lt!395913 () Unit!17451)

(declare-fun choose!7472 (LexerInterface!1684 List!11461 Int List!11462) Unit!17451)

(assert (=> d!331721 (= lt!395913 (choose!7472 Lexer!1682 lt!395757 from!787 (rules!9500 thiss!10527)))))

(assert (=> d!331721 (not (isEmpty!6980 (rules!9500 thiss!10527)))))

(assert (=> d!331721 (= (tokensListTwoByTwoPredicateSeparableTokensDropList!36 Lexer!1682 lt!395757 from!787 (rules!9500 thiss!10527)) lt!395913)))

(assert (=> b!1162114 (= e!744182 (tokensListTwoByTwoPredicateSeparableList!96 Lexer!1682 (drop!471 lt!395757 from!787) (rules!9500 thiss!10527)))))

(declare-fun lt!395916 () Unit!17451)

(declare-fun lt!395912 () Unit!17451)

(assert (=> b!1162114 (= lt!395916 lt!395912)))

(assert (=> b!1162114 (forall!2985 lt!395915 lambda!47463)))

(assert (=> b!1162114 (= lt!395912 (lemmaForallSubseq!137 lt!395915 lt!395757 lambda!47463))))

(assert (=> b!1162114 e!744185))

(declare-fun res!524025 () Bool)

(assert (=> b!1162114 (=> (not res!524025) (not e!744185))))

(assert (=> b!1162114 (= res!524025 (forall!2985 lt!395757 lambda!47463))))

(assert (=> b!1162114 (= lt!395915 (drop!471 lt!395757 from!787))))

(declare-fun lt!395914 () Unit!17451)

(declare-fun lt!395911 () Unit!17451)

(assert (=> b!1162114 (= lt!395914 lt!395911)))

(assert (=> b!1162114 (subseq!245 (drop!471 lt!395757 from!787) lt!395757)))

(assert (=> b!1162114 (= lt!395911 (lemmaDropSubseq!36 lt!395757 from!787))))

(declare-fun b!1162112 () Bool)

(declare-fun e!744184 () Bool)

(assert (=> b!1162112 (= e!744183 e!744184)))

(declare-fun res!524022 () Bool)

(assert (=> b!1162112 (=> (not res!524022) (not e!744184))))

(assert (=> b!1162112 (= res!524022 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 lt!395910)))))

(declare-fun b!1162113 () Bool)

(assert (=> b!1162113 (= e!744184 (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) (t!109891 lt!395910)))))

(assert (= (and d!331721 (not res!524023)) b!1162112))

(assert (= (and b!1162112 res!524022) b!1162113))

(assert (= (and d!331721 res!524024) b!1162114))

(assert (= (and b!1162114 res!524025) b!1162115))

(declare-fun m!1329935 () Bool)

(assert (=> b!1162113 m!1329935))

(assert (=> b!1162114 m!1329461))

(assert (=> b!1162114 m!1329449))

(declare-fun m!1329937 () Bool)

(assert (=> b!1162114 m!1329937))

(assert (=> b!1162114 m!1329449))

(declare-fun m!1329939 () Bool)

(assert (=> b!1162114 m!1329939))

(declare-fun m!1329941 () Bool)

(assert (=> b!1162114 m!1329941))

(declare-fun m!1329943 () Bool)

(assert (=> b!1162114 m!1329943))

(declare-fun m!1329945 () Bool)

(assert (=> b!1162114 m!1329945))

(assert (=> b!1162114 m!1329449))

(declare-fun m!1329947 () Bool)

(assert (=> b!1162112 m!1329947))

(assert (=> d!331721 m!1329449))

(assert (=> d!331721 m!1329449))

(declare-fun m!1329949 () Bool)

(assert (=> d!331721 m!1329949))

(declare-fun m!1329951 () Bool)

(assert (=> d!331721 m!1329951))

(assert (=> d!331721 m!1329575))

(declare-fun m!1329953 () Bool)

(assert (=> b!1162115 m!1329953))

(assert (=> b!1161821 d!331721))

(declare-fun b!1162119 () Bool)

(declare-fun e!744192 () Int)

(declare-fun e!744190 () Int)

(assert (=> b!1162119 (= e!744192 e!744190)))

(declare-fun c!194362 () Bool)

(declare-fun call!82129 () Int)

(assert (=> b!1162119 (= c!194362 (>= from!787 call!82129))))

(declare-fun b!1162120 () Bool)

(declare-fun e!744191 () List!11461)

(declare-fun e!744193 () List!11461)

(assert (=> b!1162120 (= e!744191 e!744193)))

(declare-fun c!194363 () Bool)

(assert (=> b!1162120 (= c!194363 (<= from!787 0))))

(declare-fun b!1162121 () Bool)

(declare-fun e!744189 () Bool)

(declare-fun lt!395917 () List!11461)

(assert (=> b!1162121 (= e!744189 (= (size!8995 lt!395917) e!744192))))

(declare-fun c!194364 () Bool)

(assert (=> b!1162121 (= c!194364 (<= from!787 0))))

(declare-fun b!1162122 () Bool)

(assert (=> b!1162122 (= e!744191 Nil!11437)))

(declare-fun b!1162123 () Bool)

(assert (=> b!1162123 (= e!744193 (drop!471 (t!109891 lt!395757) (- from!787 1)))))

(declare-fun b!1162124 () Bool)

(assert (=> b!1162124 (= e!744193 lt!395757)))

(declare-fun b!1162125 () Bool)

(assert (=> b!1162125 (= e!744190 (- call!82129 from!787))))

(declare-fun d!331743 () Bool)

(assert (=> d!331743 e!744189))

(declare-fun res!524026 () Bool)

(assert (=> d!331743 (=> (not res!524026) (not e!744189))))

(assert (=> d!331743 (= res!524026 (= ((_ map implies) (content!1602 lt!395917) (content!1602 lt!395757)) ((as const (InoxSet Token!3640)) true)))))

(assert (=> d!331743 (= lt!395917 e!744191)))

(declare-fun c!194361 () Bool)

(assert (=> d!331743 (= c!194361 ((_ is Nil!11437) lt!395757))))

(assert (=> d!331743 (= (drop!471 lt!395757 from!787) lt!395917)))

(declare-fun bm!82124 () Bool)

(assert (=> bm!82124 (= call!82129 (size!8995 lt!395757))))

(declare-fun b!1162126 () Bool)

(assert (=> b!1162126 (= e!744190 0)))

(declare-fun b!1162127 () Bool)

(assert (=> b!1162127 (= e!744192 call!82129)))

(assert (= (and d!331743 c!194361) b!1162122))

(assert (= (and d!331743 (not c!194361)) b!1162120))

(assert (= (and b!1162120 c!194363) b!1162124))

(assert (= (and b!1162120 (not c!194363)) b!1162123))

(assert (= (and d!331743 res!524026) b!1162121))

(assert (= (and b!1162121 c!194364) b!1162127))

(assert (= (and b!1162121 (not c!194364)) b!1162119))

(assert (= (and b!1162119 c!194362) b!1162126))

(assert (= (and b!1162119 (not c!194362)) b!1162125))

(assert (= (or b!1162127 b!1162119 b!1162125) bm!82124))

(declare-fun m!1329955 () Bool)

(assert (=> b!1162121 m!1329955))

(declare-fun m!1329957 () Bool)

(assert (=> b!1162123 m!1329957))

(declare-fun m!1329959 () Bool)

(assert (=> d!331743 m!1329959))

(assert (=> d!331743 m!1329705))

(assert (=> bm!82124 m!1329691))

(assert (=> b!1161821 d!331743))

(declare-fun d!331745 () Bool)

(declare-fun res!524031 () Bool)

(declare-fun e!744198 () Bool)

(assert (=> d!331745 (=> res!524031 e!744198)))

(assert (=> d!331745 (= res!524031 ((_ is Nil!11437) lt!395763))))

(assert (=> d!331745 (= (forall!2985 lt!395763 lambda!47437) e!744198)))

(declare-fun b!1162132 () Bool)

(declare-fun e!744199 () Bool)

(assert (=> b!1162132 (= e!744198 e!744199)))

(declare-fun res!524032 () Bool)

(assert (=> b!1162132 (=> (not res!524032) (not e!744199))))

(declare-fun dynLambda!5036 (Int Token!3640) Bool)

(assert (=> b!1162132 (= res!524032 (dynLambda!5036 lambda!47437 (h!16838 lt!395763)))))

(declare-fun b!1162133 () Bool)

(assert (=> b!1162133 (= e!744199 (forall!2985 (t!109891 lt!395763) lambda!47437))))

(assert (= (and d!331745 (not res!524031)) b!1162132))

(assert (= (and b!1162132 res!524032) b!1162133))

(declare-fun b_lambda!34637 () Bool)

(assert (=> (not b_lambda!34637) (not b!1162132)))

(declare-fun m!1329961 () Bool)

(assert (=> b!1162132 m!1329961))

(declare-fun m!1329963 () Bool)

(assert (=> b!1162133 m!1329963))

(assert (=> b!1161821 d!331745))

(declare-fun b!1162148 () Bool)

(declare-fun e!744211 () Int)

(declare-fun e!744210 () Int)

(assert (=> b!1162148 (= e!744211 e!744210)))

(declare-fun c!194371 () Bool)

(assert (=> b!1162148 (= c!194371 (>= (- to!267 from!787) (size!8995 lt!395763)))))

(declare-fun b!1162149 () Bool)

(assert (=> b!1162149 (= e!744210 (- to!267 from!787))))

(declare-fun b!1162150 () Bool)

(assert (=> b!1162150 (= e!744211 0)))

(declare-fun b!1162151 () Bool)

(assert (=> b!1162151 (= e!744210 (size!8995 lt!395763))))

(declare-fun b!1162152 () Bool)

(declare-fun e!744208 () List!11461)

(assert (=> b!1162152 (= e!744208 Nil!11437)))

(declare-fun d!331747 () Bool)

(declare-fun e!744209 () Bool)

(assert (=> d!331747 e!744209))

(declare-fun res!524035 () Bool)

(assert (=> d!331747 (=> (not res!524035) (not e!744209))))

(declare-fun lt!395920 () List!11461)

(assert (=> d!331747 (= res!524035 (= ((_ map implies) (content!1602 lt!395920) (content!1602 lt!395763)) ((as const (InoxSet Token!3640)) true)))))

(assert (=> d!331747 (= lt!395920 e!744208)))

(declare-fun c!194372 () Bool)

(assert (=> d!331747 (= c!194372 (or ((_ is Nil!11437) lt!395763) (<= (- to!267 from!787) 0)))))

(assert (=> d!331747 (= (take!61 lt!395763 (- to!267 from!787)) lt!395920)))

(declare-fun b!1162153 () Bool)

(assert (=> b!1162153 (= e!744209 (= (size!8995 lt!395920) e!744211))))

(declare-fun c!194373 () Bool)

(assert (=> b!1162153 (= c!194373 (<= (- to!267 from!787) 0))))

(declare-fun b!1162154 () Bool)

(assert (=> b!1162154 (= e!744208 (Cons!11437 (h!16838 lt!395763) (take!61 (t!109891 lt!395763) (- (- to!267 from!787) 1))))))

(assert (= (and d!331747 c!194372) b!1162152))

(assert (= (and d!331747 (not c!194372)) b!1162154))

(assert (= (and d!331747 res!524035) b!1162153))

(assert (= (and b!1162153 c!194373) b!1162150))

(assert (= (and b!1162153 (not c!194373)) b!1162148))

(assert (= (and b!1162148 c!194371) b!1162151))

(assert (= (and b!1162148 (not c!194371)) b!1162149))

(declare-fun m!1329965 () Bool)

(assert (=> d!331747 m!1329965))

(declare-fun m!1329967 () Bool)

(assert (=> d!331747 m!1329967))

(declare-fun m!1329969 () Bool)

(assert (=> b!1162153 m!1329969))

(declare-fun m!1329971 () Bool)

(assert (=> b!1162151 m!1329971))

(declare-fun m!1329973 () Bool)

(assert (=> b!1162154 m!1329973))

(assert (=> b!1162148 m!1329971))

(assert (=> b!1161821 d!331747))

(declare-fun bs!283608 () Bool)

(declare-fun d!331749 () Bool)

(assert (= bs!283608 (and d!331749 b!1162114)))

(declare-fun lambda!47464 () Int)

(assert (=> bs!283608 (= lambda!47464 lambda!47463)))

(declare-fun bs!283609 () Bool)

(assert (= bs!283609 (and d!331749 d!331653)))

(assert (=> bs!283609 (= lambda!47464 lambda!47450)))

(declare-fun bs!283610 () Bool)

(assert (= bs!283610 (and d!331749 d!331615)))

(assert (=> bs!283610 (= lambda!47464 lambda!47449)))

(declare-fun bs!283611 () Bool)

(assert (= bs!283611 (and d!331749 b!1161817)))

(assert (=> bs!283611 (= lambda!47464 lambda!47437)))

(declare-fun bs!283612 () Bool)

(assert (= bs!283612 (and d!331749 d!331609)))

(assert (=> bs!283612 (= lambda!47464 lambda!47440)))

(declare-fun bs!283613 () Bool)

(assert (= bs!283613 (and d!331749 d!331719)))

(assert (=> bs!283613 (= lambda!47464 lambda!47451)))

(declare-fun b!1162159 () Bool)

(declare-fun e!744216 () Bool)

(assert (=> b!1162159 (= e!744216 true)))

(declare-fun b!1162158 () Bool)

(declare-fun e!744215 () Bool)

(assert (=> b!1162158 (= e!744215 e!744216)))

(declare-fun b!1162157 () Bool)

(declare-fun e!744214 () Bool)

(assert (=> b!1162157 (= e!744214 e!744215)))

(assert (=> d!331749 e!744214))

(assert (= b!1162158 b!1162159))

(assert (= b!1162157 b!1162158))

(assert (= (and d!331749 ((_ is Cons!11438) (rules!9500 thiss!10527))) b!1162157))

(assert (=> b!1162159 (< (dynLambda!5033 order!6987 (toValue!3090 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47464))))

(assert (=> b!1162159 (< (dynLambda!5035 order!6991 (toChars!2949 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47464))))

(assert (=> d!331749 true))

(declare-fun lt!395921 () Bool)

(assert (=> d!331749 (= lt!395921 (forall!2985 lt!395747 lambda!47464))))

(declare-fun e!744212 () Bool)

(assert (=> d!331749 (= lt!395921 e!744212)))

(declare-fun res!524036 () Bool)

(assert (=> d!331749 (=> res!524036 e!744212)))

(assert (=> d!331749 (= res!524036 (not ((_ is Cons!11437) lt!395747)))))

(assert (=> d!331749 (not (isEmpty!6980 (rules!9500 thiss!10527)))))

(assert (=> d!331749 (= (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) lt!395747) lt!395921)))

(declare-fun b!1162155 () Bool)

(declare-fun e!744213 () Bool)

(assert (=> b!1162155 (= e!744212 e!744213)))

(declare-fun res!524037 () Bool)

(assert (=> b!1162155 (=> (not res!524037) (not e!744213))))

(assert (=> b!1162155 (= res!524037 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 lt!395747)))))

(declare-fun b!1162156 () Bool)

(assert (=> b!1162156 (= e!744213 (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) (t!109891 lt!395747)))))

(assert (= (and d!331749 (not res!524036)) b!1162155))

(assert (= (and b!1162155 res!524037) b!1162156))

(declare-fun m!1329975 () Bool)

(assert (=> d!331749 m!1329975))

(assert (=> d!331749 m!1329575))

(assert (=> b!1162155 m!1329429))

(assert (=> b!1162156 m!1329421))

(assert (=> b!1161821 d!331749))

(declare-fun b!1162172 () Bool)

(declare-fun res!524052 () Bool)

(declare-fun e!744221 () Bool)

(assert (=> b!1162172 (=> (not res!524052) (not e!744221))))

(declare-fun height!507 (Conc!3741) Int)

(assert (=> b!1162172 (= res!524052 (<= (- (height!507 (left!9997 (c!194312 (tokens!1594 thiss!10527)))) (height!507 (right!10327 (c!194312 (tokens!1594 thiss!10527))))) 1))))

(declare-fun b!1162173 () Bool)

(declare-fun res!524054 () Bool)

(assert (=> b!1162173 (=> (not res!524054) (not e!744221))))

(assert (=> b!1162173 (= res!524054 (isBalanced!1051 (right!10327 (c!194312 (tokens!1594 thiss!10527)))))))

(declare-fun d!331751 () Bool)

(declare-fun res!524050 () Bool)

(declare-fun e!744222 () Bool)

(assert (=> d!331751 (=> res!524050 e!744222)))

(assert (=> d!331751 (= res!524050 (not ((_ is Node!3741) (c!194312 (tokens!1594 thiss!10527)))))))

(assert (=> d!331751 (= (isBalanced!1051 (c!194312 (tokens!1594 thiss!10527))) e!744222)))

(declare-fun b!1162174 () Bool)

(declare-fun res!524053 () Bool)

(assert (=> b!1162174 (=> (not res!524053) (not e!744221))))

(assert (=> b!1162174 (= res!524053 (isBalanced!1051 (left!9997 (c!194312 (tokens!1594 thiss!10527)))))))

(declare-fun b!1162175 () Bool)

(declare-fun res!524051 () Bool)

(assert (=> b!1162175 (=> (not res!524051) (not e!744221))))

(declare-fun isEmpty!6982 (Conc!3741) Bool)

(assert (=> b!1162175 (= res!524051 (not (isEmpty!6982 (left!9997 (c!194312 (tokens!1594 thiss!10527))))))))

(declare-fun b!1162176 () Bool)

(assert (=> b!1162176 (= e!744222 e!744221)))

(declare-fun res!524055 () Bool)

(assert (=> b!1162176 (=> (not res!524055) (not e!744221))))

(assert (=> b!1162176 (= res!524055 (<= (- 1) (- (height!507 (left!9997 (c!194312 (tokens!1594 thiss!10527)))) (height!507 (right!10327 (c!194312 (tokens!1594 thiss!10527)))))))))

(declare-fun b!1162177 () Bool)

(assert (=> b!1162177 (= e!744221 (not (isEmpty!6982 (right!10327 (c!194312 (tokens!1594 thiss!10527))))))))

(assert (= (and d!331751 (not res!524050)) b!1162176))

(assert (= (and b!1162176 res!524055) b!1162172))

(assert (= (and b!1162172 res!524052) b!1162174))

(assert (= (and b!1162174 res!524053) b!1162173))

(assert (= (and b!1162173 res!524054) b!1162175))

(assert (= (and b!1162175 res!524051) b!1162177))

(declare-fun m!1329977 () Bool)

(assert (=> b!1162172 m!1329977))

(declare-fun m!1329979 () Bool)

(assert (=> b!1162172 m!1329979))

(declare-fun m!1329981 () Bool)

(assert (=> b!1162175 m!1329981))

(declare-fun m!1329983 () Bool)

(assert (=> b!1162174 m!1329983))

(declare-fun m!1329985 () Bool)

(assert (=> b!1162173 m!1329985))

(assert (=> b!1162176 m!1329977))

(assert (=> b!1162176 m!1329979))

(declare-fun m!1329987 () Bool)

(assert (=> b!1162177 m!1329987))

(assert (=> b!1161821 d!331751))

(declare-fun d!331753 () Bool)

(assert (=> d!331753 (subseq!245 (drop!471 lt!395757 from!787) lt!395757)))

(declare-fun lt!395924 () Unit!17451)

(declare-fun choose!7475 (List!11461 Int) Unit!17451)

(assert (=> d!331753 (= lt!395924 (choose!7475 lt!395757 from!787))))

(assert (=> d!331753 (= (lemmaDropSubseq!36 lt!395757 from!787) lt!395924)))

(declare-fun bs!283614 () Bool)

(assert (= bs!283614 d!331753))

(assert (=> bs!283614 m!1329449))

(assert (=> bs!283614 m!1329449))

(assert (=> bs!283614 m!1329937))

(declare-fun m!1329989 () Bool)

(assert (=> bs!283614 m!1329989))

(assert (=> b!1161821 d!331753))

(declare-fun d!331755 () Bool)

(assert (=> d!331755 (= (separableTokens!126 Lexer!1682 lt!395749 (rules!9500 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!59 Lexer!1682 lt!395749 0 (rules!9500 thiss!10527)))))

(declare-fun bs!283615 () Bool)

(assert (= bs!283615 d!331755))

(assert (=> bs!283615 m!1329445))

(assert (=> b!1161821 d!331755))

(declare-fun d!331759 () Bool)

(declare-fun res!524065 () Bool)

(declare-fun e!744226 () Bool)

(assert (=> d!331759 (=> res!524065 e!744226)))

(assert (=> d!331759 (= res!524065 ((_ is Nil!11437) lt!395747))))

(assert (=> d!331759 (= (forall!2985 lt!395747 lambda!47437) e!744226)))

(declare-fun b!1162187 () Bool)

(declare-fun e!744227 () Bool)

(assert (=> b!1162187 (= e!744226 e!744227)))

(declare-fun res!524066 () Bool)

(assert (=> b!1162187 (=> (not res!524066) (not e!744227))))

(assert (=> b!1162187 (= res!524066 (dynLambda!5036 lambda!47437 (h!16838 lt!395747)))))

(declare-fun b!1162188 () Bool)

(assert (=> b!1162188 (= e!744227 (forall!2985 (t!109891 lt!395747) lambda!47437))))

(assert (= (and d!331759 (not res!524065)) b!1162187))

(assert (= (and b!1162187 res!524066) b!1162188))

(declare-fun b_lambda!34639 () Bool)

(assert (=> (not b_lambda!34639) (not b!1162187)))

(declare-fun m!1329991 () Bool)

(assert (=> b!1162187 m!1329991))

(declare-fun m!1329993 () Bool)

(assert (=> b!1162188 m!1329993))

(assert (=> b!1161821 d!331759))

(declare-fun d!331761 () Bool)

(assert (=> d!331761 (forall!2985 lt!395763 lambda!47437)))

(declare-fun lt!395927 () Unit!17451)

(declare-fun choose!7476 (List!11461 List!11461 Int) Unit!17451)

(assert (=> d!331761 (= lt!395927 (choose!7476 lt!395763 lt!395757 lambda!47437))))

(assert (=> d!331761 (forall!2985 lt!395757 lambda!47437)))

(assert (=> d!331761 (= (lemmaForallSubseq!137 lt!395763 lt!395757 lambda!47437) lt!395927)))

(declare-fun bs!283616 () Bool)

(assert (= bs!283616 d!331761))

(assert (=> bs!283616 m!1329451))

(declare-fun m!1329995 () Bool)

(assert (=> bs!283616 m!1329995))

(declare-fun m!1329997 () Bool)

(assert (=> bs!283616 m!1329997))

(assert (=> b!1161821 d!331761))

(declare-fun d!331763 () Bool)

(declare-fun lt!396132 () Bool)

(declare-fun dropList!312 (BalanceConc!7504 Int) List!11461)

(assert (=> d!331763 (= lt!396132 (tokensListTwoByTwoPredicateSeparableList!96 Lexer!1682 (dropList!312 lt!395749 0) (rules!9500 thiss!10527)))))

(declare-fun lt!396144 () Unit!17451)

(declare-fun lt!396131 () Unit!17451)

(assert (=> d!331763 (= lt!396144 lt!396131)))

(declare-fun lt!396133 () List!11461)

(assert (=> d!331763 (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) lt!396133)))

(declare-fun lt!396124 () List!11461)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!22 (LexerInterface!1684 List!11462 List!11461 List!11461) Unit!17451)

(assert (=> d!331763 (= lt!396131 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!22 Lexer!1682 (rules!9500 thiss!10527) lt!396124 lt!396133))))

(declare-fun e!744303 () Bool)

(assert (=> d!331763 e!744303))

(declare-fun res!524145 () Bool)

(assert (=> d!331763 (=> (not res!524145) (not e!744303))))

(assert (=> d!331763 (= res!524145 ((_ is Lexer!1682) Lexer!1682))))

(assert (=> d!331763 (= lt!396133 (dropList!312 lt!395749 0))))

(assert (=> d!331763 (= lt!396124 (list!4208 lt!395749))))

(declare-fun lt!396143 () Unit!17451)

(declare-fun lt!396142 () Unit!17451)

(assert (=> d!331763 (= lt!396143 lt!396142)))

(declare-fun lt!396129 () List!11461)

(assert (=> d!331763 (subseq!245 (drop!471 lt!396129 0) lt!396129)))

(declare-fun lemmaDropSubSeq!22 (List!11461 Int) Unit!17451)

(assert (=> d!331763 (= lt!396142 (lemmaDropSubSeq!22 lt!396129 0))))

(declare-fun e!744302 () Bool)

(assert (=> d!331763 e!744302))

(declare-fun res!524150 () Bool)

(assert (=> d!331763 (=> (not res!524150) (not e!744302))))

(assert (=> d!331763 (= res!524150 (>= 0 0))))

(assert (=> d!331763 (= lt!396129 (list!4208 lt!395749))))

(declare-fun e!744304 () Bool)

(assert (=> d!331763 (= lt!396132 e!744304)))

(declare-fun res!524147 () Bool)

(assert (=> d!331763 (=> res!524147 e!744304)))

(assert (=> d!331763 (= res!524147 (not (< 0 (- (size!8990 lt!395749) 1))))))

(declare-fun e!744301 () Bool)

(assert (=> d!331763 e!744301))

(declare-fun res!524152 () Bool)

(assert (=> d!331763 (=> (not res!524152) (not e!744301))))

(assert (=> d!331763 (= res!524152 (>= 0 0))))

(assert (=> d!331763 (= (tokensListTwoByTwoPredicateSeparable!59 Lexer!1682 lt!395749 0 (rules!9500 thiss!10527)) lt!396132)))

(declare-fun b!1162291 () Bool)

(declare-fun e!744300 () Bool)

(assert (=> b!1162291 (= e!744300 (tokensListTwoByTwoPredicateSeparable!59 Lexer!1682 lt!395749 (+ 0 1) (rules!9500 thiss!10527)))))

(declare-fun b!1162292 () Bool)

(declare-fun res!524149 () Bool)

(assert (=> b!1162292 (=> (not res!524149) (not e!744303))))

(assert (=> b!1162292 (= res!524149 (subseq!245 lt!396133 lt!396124))))

(declare-fun b!1162293 () Bool)

(assert (=> b!1162293 (= e!744302 (<= 0 (size!8995 lt!396129)))))

(declare-fun b!1162294 () Bool)

(declare-fun res!524146 () Bool)

(assert (=> b!1162294 (=> (not res!524146) (not e!744303))))

(assert (=> b!1162294 (= res!524146 (not (isEmpty!6980 (rules!9500 thiss!10527))))))

(declare-fun b!1162295 () Bool)

(assert (=> b!1162295 (= e!744303 (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) lt!396124))))

(declare-fun b!1162296 () Bool)

(assert (=> b!1162296 (= e!744301 (<= 0 (size!8990 lt!395749)))))

(declare-fun b!1162297 () Bool)

(assert (=> b!1162297 (= e!744304 e!744300)))

(declare-fun res!524151 () Bool)

(assert (=> b!1162297 (=> (not res!524151) (not e!744300))))

(assert (=> b!1162297 (= res!524151 (separableTokensPredicate!120 Lexer!1682 (apply!2445 lt!395749 0) (apply!2445 lt!395749 (+ 0 1)) (rules!9500 thiss!10527)))))

(declare-fun lt!396141 () Unit!17451)

(declare-fun Unit!17464 () Unit!17451)

(assert (=> b!1162297 (= lt!396141 Unit!17464)))

(assert (=> b!1162297 (> (size!8991 (charsOf!1058 (apply!2445 lt!395749 (+ 0 1)))) 0)))

(declare-fun lt!396145 () Unit!17451)

(declare-fun Unit!17466 () Unit!17451)

(assert (=> b!1162297 (= lt!396145 Unit!17466)))

(assert (=> b!1162297 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (apply!2445 lt!395749 (+ 0 1)))))

(declare-fun lt!396134 () Unit!17451)

(declare-fun Unit!17468 () Unit!17451)

(assert (=> b!1162297 (= lt!396134 Unit!17468)))

(assert (=> b!1162297 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (apply!2445 lt!395749 0))))

(declare-fun lt!396125 () Unit!17451)

(declare-fun lt!396118 () Unit!17451)

(assert (=> b!1162297 (= lt!396125 lt!396118)))

(declare-fun lt!396121 () Token!3640)

(assert (=> b!1162297 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) lt!396121)))

(declare-fun lt!396147 () List!11461)

(assert (=> b!1162297 (= lt!396118 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!279 Lexer!1682 (rules!9500 thiss!10527) lt!396147 lt!396121))))

(assert (=> b!1162297 (= lt!396121 (apply!2445 lt!395749 (+ 0 1)))))

(assert (=> b!1162297 (= lt!396147 (list!4208 lt!395749))))

(declare-fun lt!396136 () Unit!17451)

(declare-fun lt!396140 () Unit!17451)

(assert (=> b!1162297 (= lt!396136 lt!396140)))

(declare-fun lt!396119 () Token!3640)

(assert (=> b!1162297 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) lt!396119)))

(declare-fun lt!396135 () List!11461)

(assert (=> b!1162297 (= lt!396140 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!279 Lexer!1682 (rules!9500 thiss!10527) lt!396135 lt!396119))))

(assert (=> b!1162297 (= lt!396119 (apply!2445 lt!395749 0))))

(assert (=> b!1162297 (= lt!396135 (list!4208 lt!395749))))

(declare-fun lt!396123 () Unit!17451)

(declare-fun lt!396130 () Unit!17451)

(assert (=> b!1162297 (= lt!396123 lt!396130)))

(declare-fun lt!396122 () List!11461)

(declare-fun lt!396116 () Int)

(assert (=> b!1162297 (= (tail!1676 (drop!471 lt!396122 lt!396116)) (drop!471 lt!396122 (+ lt!396116 1)))))

(assert (=> b!1162297 (= lt!396130 (lemmaDropTail!349 lt!396122 lt!396116))))

(assert (=> b!1162297 (= lt!396116 (+ 0 1))))

(assert (=> b!1162297 (= lt!396122 (list!4208 lt!395749))))

(declare-fun lt!396138 () Unit!17451)

(declare-fun lt!396126 () Unit!17451)

(assert (=> b!1162297 (= lt!396138 lt!396126)))

(declare-fun lt!396139 () List!11461)

(assert (=> b!1162297 (= (tail!1676 (drop!471 lt!396139 0)) (drop!471 lt!396139 (+ 0 1)))))

(assert (=> b!1162297 (= lt!396126 (lemmaDropTail!349 lt!396139 0))))

(assert (=> b!1162297 (= lt!396139 (list!4208 lt!395749))))

(declare-fun lt!396137 () Unit!17451)

(declare-fun lt!396127 () Unit!17451)

(assert (=> b!1162297 (= lt!396137 lt!396127)))

(declare-fun lt!396120 () List!11461)

(declare-fun lt!396115 () Int)

(assert (=> b!1162297 (= (head!2092 (drop!471 lt!396120 lt!396115)) (apply!2446 lt!396120 lt!396115))))

(assert (=> b!1162297 (= lt!396127 (lemmaDropApply!361 lt!396120 lt!396115))))

(assert (=> b!1162297 (= lt!396115 (+ 0 1))))

(assert (=> b!1162297 (= lt!396120 (list!4208 lt!395749))))

(declare-fun lt!396128 () Unit!17451)

(declare-fun lt!396146 () Unit!17451)

(assert (=> b!1162297 (= lt!396128 lt!396146)))

(declare-fun lt!396117 () List!11461)

(assert (=> b!1162297 (= (head!2092 (drop!471 lt!396117 0)) (apply!2446 lt!396117 0))))

(assert (=> b!1162297 (= lt!396146 (lemmaDropApply!361 lt!396117 0))))

(assert (=> b!1162297 (= lt!396117 (list!4208 lt!395749))))

(declare-fun b!1162298 () Bool)

(declare-fun res!524148 () Bool)

(assert (=> b!1162298 (=> (not res!524148) (not e!744303))))

(assert (=> b!1162298 (= res!524148 (rulesInvariant!1558 Lexer!1682 (rules!9500 thiss!10527)))))

(assert (= (and d!331763 res!524152) b!1162296))

(assert (= (and d!331763 (not res!524147)) b!1162297))

(assert (= (and b!1162297 res!524151) b!1162291))

(assert (= (and d!331763 res!524150) b!1162293))

(assert (= (and d!331763 res!524145) b!1162294))

(assert (= (and b!1162294 res!524146) b!1162298))

(assert (= (and b!1162298 res!524148) b!1162292))

(assert (= (and b!1162292 res!524149) b!1162295))

(assert (=> d!331763 m!1329405))

(declare-fun m!1330129 () Bool)

(assert (=> d!331763 m!1330129))

(declare-fun m!1330131 () Bool)

(assert (=> d!331763 m!1330131))

(declare-fun m!1330133 () Bool)

(assert (=> d!331763 m!1330133))

(declare-fun m!1330135 () Bool)

(assert (=> d!331763 m!1330135))

(assert (=> d!331763 m!1330135))

(declare-fun m!1330137 () Bool)

(assert (=> d!331763 m!1330137))

(declare-fun m!1330139 () Bool)

(assert (=> d!331763 m!1330139))

(assert (=> d!331763 m!1330129))

(declare-fun m!1330141 () Bool)

(assert (=> d!331763 m!1330141))

(declare-fun m!1330143 () Bool)

(assert (=> d!331763 m!1330143))

(assert (=> b!1162298 m!1329533))

(declare-fun m!1330145 () Bool)

(assert (=> b!1162295 m!1330145))

(declare-fun m!1330147 () Bool)

(assert (=> b!1162293 m!1330147))

(assert (=> b!1162296 m!1330133))

(declare-fun m!1330149 () Bool)

(assert (=> b!1162292 m!1330149))

(assert (=> b!1162294 m!1329575))

(declare-fun m!1330151 () Bool)

(assert (=> b!1162291 m!1330151))

(assert (=> b!1162297 m!1329405))

(declare-fun m!1330153 () Bool)

(assert (=> b!1162297 m!1330153))

(declare-fun m!1330155 () Bool)

(assert (=> b!1162297 m!1330155))

(declare-fun m!1330157 () Bool)

(assert (=> b!1162297 m!1330157))

(declare-fun m!1330159 () Bool)

(assert (=> b!1162297 m!1330159))

(declare-fun m!1330161 () Bool)

(assert (=> b!1162297 m!1330161))

(declare-fun m!1330163 () Bool)

(assert (=> b!1162297 m!1330163))

(declare-fun m!1330165 () Bool)

(assert (=> b!1162297 m!1330165))

(declare-fun m!1330167 () Bool)

(assert (=> b!1162297 m!1330167))

(assert (=> b!1162297 m!1330153))

(declare-fun m!1330169 () Bool)

(assert (=> b!1162297 m!1330169))

(declare-fun m!1330171 () Bool)

(assert (=> b!1162297 m!1330171))

(declare-fun m!1330173 () Bool)

(assert (=> b!1162297 m!1330173))

(declare-fun m!1330175 () Bool)

(assert (=> b!1162297 m!1330175))

(declare-fun m!1330177 () Bool)

(assert (=> b!1162297 m!1330177))

(declare-fun m!1330179 () Bool)

(assert (=> b!1162297 m!1330179))

(declare-fun m!1330181 () Bool)

(assert (=> b!1162297 m!1330181))

(declare-fun m!1330183 () Bool)

(assert (=> b!1162297 m!1330183))

(assert (=> b!1162297 m!1330171))

(assert (=> b!1162297 m!1330171))

(declare-fun m!1330185 () Bool)

(assert (=> b!1162297 m!1330185))

(declare-fun m!1330187 () Bool)

(assert (=> b!1162297 m!1330187))

(declare-fun m!1330189 () Bool)

(assert (=> b!1162297 m!1330189))

(assert (=> b!1162297 m!1330189))

(declare-fun m!1330191 () Bool)

(assert (=> b!1162297 m!1330191))

(declare-fun m!1330193 () Bool)

(assert (=> b!1162297 m!1330193))

(assert (=> b!1162297 m!1330161))

(assert (=> b!1162297 m!1330179))

(assert (=> b!1162297 m!1330185))

(declare-fun m!1330195 () Bool)

(assert (=> b!1162297 m!1330195))

(declare-fun m!1330197 () Bool)

(assert (=> b!1162297 m!1330197))

(assert (=> b!1162297 m!1330185))

(assert (=> b!1162297 m!1330157))

(assert (=> b!1162297 m!1330185))

(declare-fun m!1330199 () Bool)

(assert (=> b!1162297 m!1330199))

(declare-fun m!1330201 () Bool)

(assert (=> b!1162297 m!1330201))

(declare-fun m!1330203 () Bool)

(assert (=> b!1162297 m!1330203))

(declare-fun m!1330205 () Bool)

(assert (=> b!1162297 m!1330205))

(assert (=> b!1161821 d!331763))

(declare-fun d!331789 () Bool)

(assert (=> d!331789 (forall!2985 lt!395747 lambda!47437)))

(declare-fun lt!396148 () Unit!17451)

(assert (=> d!331789 (= lt!396148 (choose!7476 lt!395747 lt!395763 lambda!47437))))

(assert (=> d!331789 (forall!2985 lt!395763 lambda!47437)))

(assert (=> d!331789 (= (lemmaForallSubseq!137 lt!395747 lt!395763 lambda!47437) lt!396148)))

(declare-fun bs!283621 () Bool)

(assert (= bs!283621 d!331789))

(assert (=> bs!283621 m!1329455))

(declare-fun m!1330207 () Bool)

(assert (=> bs!283621 m!1330207))

(assert (=> bs!283621 m!1329451))

(assert (=> b!1161821 d!331789))

(declare-fun bs!283632 () Bool)

(declare-fun b!1162334 () Bool)

(assert (= bs!283632 (and b!1162334 b!1162114)))

(declare-fun lambda!47470 () Int)

(assert (=> bs!283632 (= lambda!47470 lambda!47463)))

(declare-fun bs!283633 () Bool)

(assert (= bs!283633 (and b!1162334 d!331653)))

(assert (=> bs!283633 (= lambda!47470 lambda!47450)))

(declare-fun bs!283634 () Bool)

(assert (= bs!283634 (and b!1162334 d!331615)))

(assert (=> bs!283634 (= lambda!47470 lambda!47449)))

(declare-fun bs!283635 () Bool)

(assert (= bs!283635 (and b!1162334 d!331749)))

(assert (=> bs!283635 (= lambda!47470 lambda!47464)))

(declare-fun bs!283636 () Bool)

(assert (= bs!283636 (and b!1162334 b!1161817)))

(assert (=> bs!283636 (= lambda!47470 lambda!47437)))

(declare-fun bs!283637 () Bool)

(assert (= bs!283637 (and b!1162334 d!331609)))

(assert (=> bs!283637 (= lambda!47470 lambda!47440)))

(declare-fun bs!283638 () Bool)

(assert (= bs!283638 (and b!1162334 d!331719)))

(assert (=> bs!283638 (= lambda!47470 lambda!47451)))

(declare-fun b!1162338 () Bool)

(declare-fun e!744341 () Bool)

(assert (=> b!1162338 (= e!744341 true)))

(declare-fun b!1162337 () Bool)

(declare-fun e!744340 () Bool)

(assert (=> b!1162337 (= e!744340 e!744341)))

(declare-fun b!1162336 () Bool)

(declare-fun e!744339 () Bool)

(assert (=> b!1162336 (= e!744339 e!744340)))

(assert (=> b!1162334 e!744339))

(assert (= b!1162337 b!1162338))

(assert (= b!1162336 b!1162337))

(assert (= (and b!1162334 ((_ is Cons!11438) (rules!9500 thiss!10527))) b!1162336))

(assert (=> b!1162338 (< (dynLambda!5033 order!6987 (toValue!3090 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47470))))

(assert (=> b!1162338 (< (dynLambda!5035 order!6991 (toChars!2949 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47470))))

(declare-fun d!331791 () Bool)

(declare-fun e!744337 () Bool)

(assert (=> d!331791 e!744337))

(declare-fun res!524185 () Bool)

(assert (=> d!331791 (=> (not res!524185) (not e!744337))))

(declare-fun e!744336 () Bool)

(assert (=> d!331791 (= res!524185 (= (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) (take!61 lt!395763 (- to!267 from!787))) e!744336))))

(declare-fun res!524183 () Bool)

(assert (=> d!331791 (=> res!524183 e!744336)))

(declare-fun lt!396216 () List!11461)

(assert (=> d!331791 (= res!524183 (not ((_ is Cons!11437) lt!396216)))))

(assert (=> d!331791 (= lt!396216 (take!61 lt!395763 (- to!267 from!787)))))

(declare-fun lt!396215 () Unit!17451)

(declare-fun choose!7478 (LexerInterface!1684 List!11461 Int List!11462) Unit!17451)

(assert (=> d!331791 (= lt!396215 (choose!7478 Lexer!1682 lt!395763 (- to!267 from!787) (rules!9500 thiss!10527)))))

(assert (=> d!331791 (not (isEmpty!6980 (rules!9500 thiss!10527)))))

(assert (=> d!331791 (= (tokensListTwoByTwoPredicateSeparableTokensTakeList!28 Lexer!1682 lt!395763 (- to!267 from!787) (rules!9500 thiss!10527)) lt!396215)))

(declare-fun b!1162332 () Bool)

(declare-fun e!744338 () Bool)

(assert (=> b!1162332 (= e!744336 e!744338)))

(declare-fun res!524184 () Bool)

(assert (=> b!1162332 (=> (not res!524184) (not e!744338))))

(assert (=> b!1162332 (= res!524184 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 lt!396216)))))

(assert (=> b!1162334 (= e!744337 (tokensListTwoByTwoPredicateSeparableList!96 Lexer!1682 (take!61 lt!395763 (- to!267 from!787)) (rules!9500 thiss!10527)))))

(declare-fun lt!396219 () Unit!17451)

(declare-fun lt!396218 () Unit!17451)

(assert (=> b!1162334 (= lt!396219 lt!396218)))

(declare-fun lt!396217 () List!11461)

(assert (=> b!1162334 (forall!2985 lt!396217 lambda!47470)))

(assert (=> b!1162334 (= lt!396218 (lemmaForallSubseq!137 lt!396217 lt!395763 lambda!47470))))

(declare-fun e!744335 () Bool)

(assert (=> b!1162334 e!744335))

(declare-fun res!524186 () Bool)

(assert (=> b!1162334 (=> (not res!524186) (not e!744335))))

(assert (=> b!1162334 (= res!524186 (forall!2985 lt!395763 lambda!47470))))

(assert (=> b!1162334 (= lt!396217 (take!61 lt!395763 (- to!267 from!787)))))

(declare-fun b!1162333 () Bool)

(assert (=> b!1162333 (= e!744338 (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) (t!109891 lt!396216)))))

(declare-fun b!1162335 () Bool)

(assert (=> b!1162335 (= e!744335 (subseq!245 lt!396217 lt!395763))))

(assert (= (and d!331791 (not res!524183)) b!1162332))

(assert (= (and b!1162332 res!524184) b!1162333))

(assert (= (and d!331791 res!524185) b!1162334))

(assert (= (and b!1162334 res!524186) b!1162335))

(declare-fun m!1330315 () Bool)

(assert (=> b!1162332 m!1330315))

(declare-fun m!1330317 () Bool)

(assert (=> b!1162335 m!1330317))

(declare-fun m!1330319 () Bool)

(assert (=> b!1162333 m!1330319))

(assert (=> d!331791 m!1329439))

(assert (=> d!331791 m!1329439))

(declare-fun m!1330321 () Bool)

(assert (=> d!331791 m!1330321))

(declare-fun m!1330323 () Bool)

(assert (=> d!331791 m!1330323))

(assert (=> d!331791 m!1329575))

(assert (=> b!1162334 m!1329439))

(declare-fun m!1330325 () Bool)

(assert (=> b!1162334 m!1330325))

(declare-fun m!1330327 () Bool)

(assert (=> b!1162334 m!1330327))

(assert (=> b!1162334 m!1329439))

(declare-fun m!1330329 () Bool)

(assert (=> b!1162334 m!1330329))

(declare-fun m!1330331 () Bool)

(assert (=> b!1162334 m!1330331))

(assert (=> b!1161821 d!331791))

(declare-fun b!1162348 () Bool)

(declare-fun e!744353 () Bool)

(declare-fun e!744351 () Bool)

(assert (=> b!1162348 (= e!744353 e!744351)))

(declare-fun res!524197 () Bool)

(assert (=> b!1162348 (=> res!524197 e!744351)))

(declare-fun e!744350 () Bool)

(assert (=> b!1162348 (= res!524197 e!744350)))

(declare-fun res!524195 () Bool)

(assert (=> b!1162348 (=> (not res!524195) (not e!744350))))

(assert (=> b!1162348 (= res!524195 (= (h!16838 lt!395763) (h!16838 lt!395757)))))

(declare-fun b!1162350 () Bool)

(assert (=> b!1162350 (= e!744351 (subseq!245 lt!395763 (t!109891 lt!395757)))))

(declare-fun b!1162349 () Bool)

(assert (=> b!1162349 (= e!744350 (subseq!245 (t!109891 lt!395763) (t!109891 lt!395757)))))

(declare-fun b!1162347 () Bool)

(declare-fun e!744352 () Bool)

(assert (=> b!1162347 (= e!744352 e!744353)))

(declare-fun res!524198 () Bool)

(assert (=> b!1162347 (=> (not res!524198) (not e!744353))))

(assert (=> b!1162347 (= res!524198 ((_ is Cons!11437) lt!395757))))

(declare-fun d!331803 () Bool)

(declare-fun res!524196 () Bool)

(assert (=> d!331803 (=> res!524196 e!744352)))

(assert (=> d!331803 (= res!524196 ((_ is Nil!11437) lt!395763))))

(assert (=> d!331803 (= (subseq!245 lt!395763 lt!395757) e!744352)))

(assert (= (and d!331803 (not res!524196)) b!1162347))

(assert (= (and b!1162347 res!524198) b!1162348))

(assert (= (and b!1162348 res!524195) b!1162349))

(assert (= (and b!1162348 (not res!524197)) b!1162350))

(declare-fun m!1330333 () Bool)

(assert (=> b!1162350 m!1330333))

(declare-fun m!1330335 () Bool)

(assert (=> b!1162349 m!1330335))

(assert (=> b!1161821 d!331803))

(declare-fun d!331805 () Bool)

(assert (=> d!331805 (= (inv!15036 (tokens!1594 thiss!10527)) (isBalanced!1051 (c!194312 (tokens!1594 thiss!10527))))))

(declare-fun bs!283639 () Bool)

(assert (= bs!283639 d!331805))

(assert (=> bs!283639 m!1329459))

(assert (=> b!1161820 d!331805))

(declare-fun d!331807 () Bool)

(declare-fun lt!396220 () Bool)

(declare-fun e!744355 () Bool)

(assert (=> d!331807 (= lt!396220 e!744355)))

(declare-fun res!524201 () Bool)

(assert (=> d!331807 (=> (not res!524201) (not e!744355))))

(assert (=> d!331807 (= res!524201 (= (list!4208 (_1!6850 (lex!696 Lexer!1682 (rules!9500 thiss!10527) (print!633 Lexer!1682 (singletonSeq!654 (h!16838 lt!395768)))))) (list!4208 (singletonSeq!654 (h!16838 lt!395768)))))))

(declare-fun e!744354 () Bool)

(assert (=> d!331807 (= lt!396220 e!744354)))

(declare-fun res!524200 () Bool)

(assert (=> d!331807 (=> (not res!524200) (not e!744354))))

(declare-fun lt!396221 () tuple2!12006)

(assert (=> d!331807 (= res!524200 (= (size!8990 (_1!6850 lt!396221)) 1))))

(assert (=> d!331807 (= lt!396221 (lex!696 Lexer!1682 (rules!9500 thiss!10527) (print!633 Lexer!1682 (singletonSeq!654 (h!16838 lt!395768)))))))

(assert (=> d!331807 (not (isEmpty!6980 (rules!9500 thiss!10527)))))

(assert (=> d!331807 (= (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 lt!395768)) lt!396220)))

(declare-fun b!1162351 () Bool)

(declare-fun res!524199 () Bool)

(assert (=> b!1162351 (=> (not res!524199) (not e!744354))))

(assert (=> b!1162351 (= res!524199 (= (apply!2445 (_1!6850 lt!396221) 0) (h!16838 lt!395768)))))

(declare-fun b!1162352 () Bool)

(assert (=> b!1162352 (= e!744354 (isEmpty!6981 (_2!6850 lt!396221)))))

(declare-fun b!1162353 () Bool)

(assert (=> b!1162353 (= e!744355 (isEmpty!6981 (_2!6850 (lex!696 Lexer!1682 (rules!9500 thiss!10527) (print!633 Lexer!1682 (singletonSeq!654 (h!16838 lt!395768)))))))))

(assert (= (and d!331807 res!524200) b!1162351))

(assert (= (and b!1162351 res!524199) b!1162352))

(assert (= (and d!331807 res!524201) b!1162353))

(declare-fun m!1330337 () Bool)

(assert (=> d!331807 m!1330337))

(declare-fun m!1330339 () Bool)

(assert (=> d!331807 m!1330339))

(declare-fun m!1330341 () Bool)

(assert (=> d!331807 m!1330341))

(assert (=> d!331807 m!1330337))

(assert (=> d!331807 m!1330337))

(declare-fun m!1330343 () Bool)

(assert (=> d!331807 m!1330343))

(assert (=> d!331807 m!1329575))

(declare-fun m!1330345 () Bool)

(assert (=> d!331807 m!1330345))

(assert (=> d!331807 m!1330339))

(declare-fun m!1330347 () Bool)

(assert (=> d!331807 m!1330347))

(declare-fun m!1330349 () Bool)

(assert (=> b!1162351 m!1330349))

(declare-fun m!1330351 () Bool)

(assert (=> b!1162352 m!1330351))

(assert (=> b!1162353 m!1330337))

(assert (=> b!1162353 m!1330337))

(assert (=> b!1162353 m!1330339))

(assert (=> b!1162353 m!1330339))

(assert (=> b!1162353 m!1330347))

(declare-fun m!1330353 () Bool)

(assert (=> b!1162353 m!1330353))

(assert (=> b!1161799 d!331807))

(declare-fun d!331809 () Bool)

(assert (=> d!331809 (subseq!245 (slice!278 lt!395757 from!787 to!267) lt!395757)))

(declare-fun lt!396224 () Unit!17451)

(declare-fun choose!7480 (List!11461 Int Int) Unit!17451)

(assert (=> d!331809 (= lt!396224 (choose!7480 lt!395757 from!787 to!267))))

(declare-fun e!744358 () Bool)

(assert (=> d!331809 e!744358))

(declare-fun res!524204 () Bool)

(assert (=> d!331809 (=> (not res!524204) (not e!744358))))

(assert (=> d!331809 (= res!524204 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!331809 (= (lemmaSliceSubseq!86 lt!395757 from!787 to!267) lt!396224)))

(declare-fun b!1162356 () Bool)

(assert (=> b!1162356 (= e!744358 (<= to!267 (size!8995 lt!395757)))))

(assert (= (and d!331809 res!524204) b!1162356))

(assert (=> d!331809 m!1329409))

(assert (=> d!331809 m!1329409))

(assert (=> d!331809 m!1329413))

(declare-fun m!1330355 () Bool)

(assert (=> d!331809 m!1330355))

(assert (=> b!1162356 m!1329691))

(assert (=> b!1161819 d!331809))

(declare-fun d!331811 () Bool)

(assert (=> d!331811 (= (slice!278 lt!395757 from!787 to!267) (take!61 (drop!471 lt!395757 from!787) (- to!267 from!787)))))

(declare-fun bs!283640 () Bool)

(assert (= bs!283640 d!331811))

(assert (=> bs!283640 m!1329449))

(assert (=> bs!283640 m!1329449))

(declare-fun m!1330357 () Bool)

(assert (=> bs!283640 m!1330357))

(assert (=> b!1161819 d!331811))

(declare-fun d!331813 () Bool)

(assert (=> d!331813 (= (list!4208 lt!395749) (list!4210 (c!194312 lt!395749)))))

(declare-fun bs!283641 () Bool)

(assert (= bs!283641 d!331813))

(declare-fun m!1330359 () Bool)

(assert (=> bs!283641 m!1330359))

(assert (=> b!1161819 d!331813))

(declare-fun d!331815 () Bool)

(declare-fun res!524205 () Bool)

(declare-fun e!744359 () Bool)

(assert (=> d!331815 (=> res!524205 e!744359)))

(assert (=> d!331815 (= res!524205 ((_ is Nil!11437) lt!395768))))

(assert (=> d!331815 (= (forall!2985 lt!395768 lambda!47437) e!744359)))

(declare-fun b!1162357 () Bool)

(declare-fun e!744360 () Bool)

(assert (=> b!1162357 (= e!744359 e!744360)))

(declare-fun res!524206 () Bool)

(assert (=> b!1162357 (=> (not res!524206) (not e!744360))))

(assert (=> b!1162357 (= res!524206 (dynLambda!5036 lambda!47437 (h!16838 lt!395768)))))

(declare-fun b!1162358 () Bool)

(assert (=> b!1162358 (= e!744360 (forall!2985 (t!109891 lt!395768) lambda!47437))))

(assert (= (and d!331815 (not res!524205)) b!1162357))

(assert (= (and b!1162357 res!524206) b!1162358))

(declare-fun b_lambda!34645 () Bool)

(assert (=> (not b_lambda!34645) (not b!1162357)))

(declare-fun m!1330361 () Bool)

(assert (=> b!1162357 m!1330361))

(declare-fun m!1330363 () Bool)

(assert (=> b!1162358 m!1330363))

(assert (=> b!1161819 d!331815))

(declare-fun b!1162360 () Bool)

(declare-fun e!744364 () Bool)

(declare-fun e!744362 () Bool)

(assert (=> b!1162360 (= e!744364 e!744362)))

(declare-fun res!524209 () Bool)

(assert (=> b!1162360 (=> res!524209 e!744362)))

(declare-fun e!744361 () Bool)

(assert (=> b!1162360 (= res!524209 e!744361)))

(declare-fun res!524207 () Bool)

(assert (=> b!1162360 (=> (not res!524207) (not e!744361))))

(assert (=> b!1162360 (= res!524207 (= (h!16838 (slice!278 lt!395757 from!787 to!267)) (h!16838 lt!395757)))))

(declare-fun b!1162362 () Bool)

(assert (=> b!1162362 (= e!744362 (subseq!245 (slice!278 lt!395757 from!787 to!267) (t!109891 lt!395757)))))

(declare-fun b!1162361 () Bool)

(assert (=> b!1162361 (= e!744361 (subseq!245 (t!109891 (slice!278 lt!395757 from!787 to!267)) (t!109891 lt!395757)))))

(declare-fun b!1162359 () Bool)

(declare-fun e!744363 () Bool)

(assert (=> b!1162359 (= e!744363 e!744364)))

(declare-fun res!524210 () Bool)

(assert (=> b!1162359 (=> (not res!524210) (not e!744364))))

(assert (=> b!1162359 (= res!524210 ((_ is Cons!11437) lt!395757))))

(declare-fun d!331817 () Bool)

(declare-fun res!524208 () Bool)

(assert (=> d!331817 (=> res!524208 e!744363)))

(assert (=> d!331817 (= res!524208 ((_ is Nil!11437) (slice!278 lt!395757 from!787 to!267)))))

(assert (=> d!331817 (= (subseq!245 (slice!278 lt!395757 from!787 to!267) lt!395757) e!744363)))

(assert (= (and d!331817 (not res!524208)) b!1162359))

(assert (= (and b!1162359 res!524210) b!1162360))

(assert (= (and b!1162360 res!524207) b!1162361))

(assert (= (and b!1162360 (not res!524209)) b!1162362))

(assert (=> b!1162362 m!1329409))

(declare-fun m!1330365 () Bool)

(assert (=> b!1162362 m!1330365))

(declare-fun m!1330367 () Bool)

(assert (=> b!1162361 m!1330367))

(assert (=> b!1161819 d!331817))

(declare-fun d!331819 () Bool)

(declare-fun e!744370 () Bool)

(assert (=> d!331819 e!744370))

(declare-fun res!524219 () Bool)

(assert (=> d!331819 (=> (not res!524219) (not e!744370))))

(declare-fun slice!280 (Conc!3741 Int Int) Conc!3741)

(assert (=> d!331819 (= res!524219 (isBalanced!1051 (slice!280 (c!194312 (tokens!1594 thiss!10527)) from!787 to!267)))))

(declare-fun lt!396227 () BalanceConc!7504)

(assert (=> d!331819 (= lt!396227 (BalanceConc!7505 (slice!280 (c!194312 (tokens!1594 thiss!10527)) from!787 to!267)))))

(declare-fun e!744369 () Bool)

(assert (=> d!331819 e!744369))

(declare-fun res!524217 () Bool)

(assert (=> d!331819 (=> (not res!524217) (not e!744369))))

(assert (=> d!331819 (= res!524217 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!331819 (= (slice!277 (tokens!1594 thiss!10527) from!787 to!267) lt!396227)))

(declare-fun b!1162369 () Bool)

(declare-fun res!524218 () Bool)

(assert (=> b!1162369 (=> (not res!524218) (not e!744369))))

(assert (=> b!1162369 (= res!524218 (<= to!267 (size!8990 (tokens!1594 thiss!10527))))))

(declare-fun b!1162370 () Bool)

(assert (=> b!1162370 (= e!744369 (isBalanced!1051 (c!194312 (tokens!1594 thiss!10527))))))

(declare-fun b!1162371 () Bool)

(assert (=> b!1162371 (= e!744370 (= (list!4208 lt!396227) (slice!278 (list!4208 (tokens!1594 thiss!10527)) from!787 to!267)))))

(assert (= (and d!331819 res!524217) b!1162369))

(assert (= (and b!1162369 res!524218) b!1162370))

(assert (= (and d!331819 res!524219) b!1162371))

(declare-fun m!1330369 () Bool)

(assert (=> d!331819 m!1330369))

(assert (=> d!331819 m!1330369))

(declare-fun m!1330371 () Bool)

(assert (=> d!331819 m!1330371))

(assert (=> b!1162369 m!1329419))

(assert (=> b!1162370 m!1329459))

(declare-fun m!1330373 () Bool)

(assert (=> b!1162371 m!1330373))

(assert (=> b!1162371 m!1329527))

(assert (=> b!1162371 m!1329527))

(declare-fun m!1330375 () Bool)

(assert (=> b!1162371 m!1330375))

(assert (=> b!1161819 d!331819))

(declare-fun d!331821 () Bool)

(assert (=> d!331821 (forall!2985 lt!395768 lambda!47437)))

(declare-fun lt!396228 () Unit!17451)

(assert (=> d!331821 (= lt!396228 (choose!7476 lt!395768 lt!395757 lambda!47437))))

(assert (=> d!331821 (forall!2985 lt!395757 lambda!47437)))

(assert (=> d!331821 (= (lemmaForallSubseq!137 lt!395768 lt!395757 lambda!47437) lt!396228)))

(declare-fun bs!283642 () Bool)

(assert (= bs!283642 d!331821))

(assert (=> bs!283642 m!1329407))

(declare-fun m!1330377 () Bool)

(assert (=> bs!283642 m!1330377))

(assert (=> bs!283642 m!1329997))

(assert (=> b!1161819 d!331821))

(declare-fun d!331823 () Bool)

(declare-fun lt!396246 () Bool)

(assert (=> d!331823 (= lt!396246 (tokensListTwoByTwoPredicateSeparableList!96 Lexer!1682 (dropList!312 (tokens!1594 thiss!10527) 0) (rules!9500 thiss!10527)))))

(declare-fun lt!396258 () Unit!17451)

(declare-fun lt!396245 () Unit!17451)

(assert (=> d!331823 (= lt!396258 lt!396245)))

(declare-fun lt!396247 () List!11461)

(assert (=> d!331823 (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) lt!396247)))

(declare-fun lt!396238 () List!11461)

(assert (=> d!331823 (= lt!396245 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!22 Lexer!1682 (rules!9500 thiss!10527) lt!396238 lt!396247))))

(declare-fun e!744374 () Bool)

(assert (=> d!331823 e!744374))

(declare-fun res!524220 () Bool)

(assert (=> d!331823 (=> (not res!524220) (not e!744374))))

(assert (=> d!331823 (= res!524220 ((_ is Lexer!1682) Lexer!1682))))

(assert (=> d!331823 (= lt!396247 (dropList!312 (tokens!1594 thiss!10527) 0))))

(assert (=> d!331823 (= lt!396238 (list!4208 (tokens!1594 thiss!10527)))))

(declare-fun lt!396257 () Unit!17451)

(declare-fun lt!396256 () Unit!17451)

(assert (=> d!331823 (= lt!396257 lt!396256)))

(declare-fun lt!396243 () List!11461)

(assert (=> d!331823 (subseq!245 (drop!471 lt!396243 0) lt!396243)))

(assert (=> d!331823 (= lt!396256 (lemmaDropSubSeq!22 lt!396243 0))))

(declare-fun e!744373 () Bool)

(assert (=> d!331823 e!744373))

(declare-fun res!524225 () Bool)

(assert (=> d!331823 (=> (not res!524225) (not e!744373))))

(assert (=> d!331823 (= res!524225 (>= 0 0))))

(assert (=> d!331823 (= lt!396243 (list!4208 (tokens!1594 thiss!10527)))))

(declare-fun e!744375 () Bool)

(assert (=> d!331823 (= lt!396246 e!744375)))

(declare-fun res!524222 () Bool)

(assert (=> d!331823 (=> res!524222 e!744375)))

(assert (=> d!331823 (= res!524222 (not (< 0 (- (size!8990 (tokens!1594 thiss!10527)) 1))))))

(declare-fun e!744372 () Bool)

(assert (=> d!331823 e!744372))

(declare-fun res!524227 () Bool)

(assert (=> d!331823 (=> (not res!524227) (not e!744372))))

(assert (=> d!331823 (= res!524227 (>= 0 0))))

(assert (=> d!331823 (= (tokensListTwoByTwoPredicateSeparable!59 Lexer!1682 (tokens!1594 thiss!10527) 0 (rules!9500 thiss!10527)) lt!396246)))

(declare-fun b!1162372 () Bool)

(declare-fun e!744371 () Bool)

(assert (=> b!1162372 (= e!744371 (tokensListTwoByTwoPredicateSeparable!59 Lexer!1682 (tokens!1594 thiss!10527) (+ 0 1) (rules!9500 thiss!10527)))))

(declare-fun b!1162373 () Bool)

(declare-fun res!524224 () Bool)

(assert (=> b!1162373 (=> (not res!524224) (not e!744374))))

(assert (=> b!1162373 (= res!524224 (subseq!245 lt!396247 lt!396238))))

(declare-fun b!1162374 () Bool)

(assert (=> b!1162374 (= e!744373 (<= 0 (size!8995 lt!396243)))))

(declare-fun b!1162375 () Bool)

(declare-fun res!524221 () Bool)

(assert (=> b!1162375 (=> (not res!524221) (not e!744374))))

(assert (=> b!1162375 (= res!524221 (not (isEmpty!6980 (rules!9500 thiss!10527))))))

(declare-fun b!1162376 () Bool)

(assert (=> b!1162376 (= e!744374 (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) lt!396238))))

(declare-fun b!1162377 () Bool)

(assert (=> b!1162377 (= e!744372 (<= 0 (size!8990 (tokens!1594 thiss!10527))))))

(declare-fun b!1162378 () Bool)

(assert (=> b!1162378 (= e!744375 e!744371)))

(declare-fun res!524226 () Bool)

(assert (=> b!1162378 (=> (not res!524226) (not e!744371))))

(assert (=> b!1162378 (= res!524226 (separableTokensPredicate!120 Lexer!1682 (apply!2445 (tokens!1594 thiss!10527) 0) (apply!2445 (tokens!1594 thiss!10527) (+ 0 1)) (rules!9500 thiss!10527)))))

(declare-fun lt!396255 () Unit!17451)

(declare-fun Unit!17469 () Unit!17451)

(assert (=> b!1162378 (= lt!396255 Unit!17469)))

(assert (=> b!1162378 (> (size!8991 (charsOf!1058 (apply!2445 (tokens!1594 thiss!10527) (+ 0 1)))) 0)))

(declare-fun lt!396259 () Unit!17451)

(declare-fun Unit!17470 () Unit!17451)

(assert (=> b!1162378 (= lt!396259 Unit!17470)))

(assert (=> b!1162378 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (apply!2445 (tokens!1594 thiss!10527) (+ 0 1)))))

(declare-fun lt!396248 () Unit!17451)

(declare-fun Unit!17471 () Unit!17451)

(assert (=> b!1162378 (= lt!396248 Unit!17471)))

(assert (=> b!1162378 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (apply!2445 (tokens!1594 thiss!10527) 0))))

(declare-fun lt!396239 () Unit!17451)

(declare-fun lt!396232 () Unit!17451)

(assert (=> b!1162378 (= lt!396239 lt!396232)))

(declare-fun lt!396235 () Token!3640)

(assert (=> b!1162378 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) lt!396235)))

(declare-fun lt!396261 () List!11461)

(assert (=> b!1162378 (= lt!396232 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!279 Lexer!1682 (rules!9500 thiss!10527) lt!396261 lt!396235))))

(assert (=> b!1162378 (= lt!396235 (apply!2445 (tokens!1594 thiss!10527) (+ 0 1)))))

(assert (=> b!1162378 (= lt!396261 (list!4208 (tokens!1594 thiss!10527)))))

(declare-fun lt!396250 () Unit!17451)

(declare-fun lt!396254 () Unit!17451)

(assert (=> b!1162378 (= lt!396250 lt!396254)))

(declare-fun lt!396233 () Token!3640)

(assert (=> b!1162378 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) lt!396233)))

(declare-fun lt!396249 () List!11461)

(assert (=> b!1162378 (= lt!396254 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!279 Lexer!1682 (rules!9500 thiss!10527) lt!396249 lt!396233))))

(assert (=> b!1162378 (= lt!396233 (apply!2445 (tokens!1594 thiss!10527) 0))))

(assert (=> b!1162378 (= lt!396249 (list!4208 (tokens!1594 thiss!10527)))))

(declare-fun lt!396237 () Unit!17451)

(declare-fun lt!396244 () Unit!17451)

(assert (=> b!1162378 (= lt!396237 lt!396244)))

(declare-fun lt!396236 () List!11461)

(declare-fun lt!396230 () Int)

(assert (=> b!1162378 (= (tail!1676 (drop!471 lt!396236 lt!396230)) (drop!471 lt!396236 (+ lt!396230 1)))))

(assert (=> b!1162378 (= lt!396244 (lemmaDropTail!349 lt!396236 lt!396230))))

(assert (=> b!1162378 (= lt!396230 (+ 0 1))))

(assert (=> b!1162378 (= lt!396236 (list!4208 (tokens!1594 thiss!10527)))))

(declare-fun lt!396252 () Unit!17451)

(declare-fun lt!396240 () Unit!17451)

(assert (=> b!1162378 (= lt!396252 lt!396240)))

(declare-fun lt!396253 () List!11461)

(assert (=> b!1162378 (= (tail!1676 (drop!471 lt!396253 0)) (drop!471 lt!396253 (+ 0 1)))))

(assert (=> b!1162378 (= lt!396240 (lemmaDropTail!349 lt!396253 0))))

(assert (=> b!1162378 (= lt!396253 (list!4208 (tokens!1594 thiss!10527)))))

(declare-fun lt!396251 () Unit!17451)

(declare-fun lt!396241 () Unit!17451)

(assert (=> b!1162378 (= lt!396251 lt!396241)))

(declare-fun lt!396234 () List!11461)

(declare-fun lt!396229 () Int)

(assert (=> b!1162378 (= (head!2092 (drop!471 lt!396234 lt!396229)) (apply!2446 lt!396234 lt!396229))))

(assert (=> b!1162378 (= lt!396241 (lemmaDropApply!361 lt!396234 lt!396229))))

(assert (=> b!1162378 (= lt!396229 (+ 0 1))))

(assert (=> b!1162378 (= lt!396234 (list!4208 (tokens!1594 thiss!10527)))))

(declare-fun lt!396242 () Unit!17451)

(declare-fun lt!396260 () Unit!17451)

(assert (=> b!1162378 (= lt!396242 lt!396260)))

(declare-fun lt!396231 () List!11461)

(assert (=> b!1162378 (= (head!2092 (drop!471 lt!396231 0)) (apply!2446 lt!396231 0))))

(assert (=> b!1162378 (= lt!396260 (lemmaDropApply!361 lt!396231 0))))

(assert (=> b!1162378 (= lt!396231 (list!4208 (tokens!1594 thiss!10527)))))

(declare-fun b!1162379 () Bool)

(declare-fun res!524223 () Bool)

(assert (=> b!1162379 (=> (not res!524223) (not e!744374))))

(assert (=> b!1162379 (= res!524223 (rulesInvariant!1558 Lexer!1682 (rules!9500 thiss!10527)))))

(assert (= (and d!331823 res!524227) b!1162377))

(assert (= (and d!331823 (not res!524222)) b!1162378))

(assert (= (and b!1162378 res!524226) b!1162372))

(assert (= (and d!331823 res!524225) b!1162374))

(assert (= (and d!331823 res!524220) b!1162375))

(assert (= (and b!1162375 res!524221) b!1162379))

(assert (= (and b!1162379 res!524223) b!1162373))

(assert (= (and b!1162373 res!524224) b!1162376))

(assert (=> d!331823 m!1329527))

(declare-fun m!1330379 () Bool)

(assert (=> d!331823 m!1330379))

(declare-fun m!1330381 () Bool)

(assert (=> d!331823 m!1330381))

(assert (=> d!331823 m!1329419))

(declare-fun m!1330383 () Bool)

(assert (=> d!331823 m!1330383))

(assert (=> d!331823 m!1330383))

(declare-fun m!1330385 () Bool)

(assert (=> d!331823 m!1330385))

(declare-fun m!1330387 () Bool)

(assert (=> d!331823 m!1330387))

(assert (=> d!331823 m!1330379))

(declare-fun m!1330389 () Bool)

(assert (=> d!331823 m!1330389))

(declare-fun m!1330391 () Bool)

(assert (=> d!331823 m!1330391))

(assert (=> b!1162379 m!1329533))

(declare-fun m!1330393 () Bool)

(assert (=> b!1162376 m!1330393))

(declare-fun m!1330395 () Bool)

(assert (=> b!1162374 m!1330395))

(assert (=> b!1162377 m!1329419))

(declare-fun m!1330397 () Bool)

(assert (=> b!1162373 m!1330397))

(assert (=> b!1162375 m!1329575))

(declare-fun m!1330399 () Bool)

(assert (=> b!1162372 m!1330399))

(assert (=> b!1162378 m!1329527))

(declare-fun m!1330401 () Bool)

(assert (=> b!1162378 m!1330401))

(declare-fun m!1330403 () Bool)

(assert (=> b!1162378 m!1330403))

(declare-fun m!1330405 () Bool)

(assert (=> b!1162378 m!1330405))

(declare-fun m!1330407 () Bool)

(assert (=> b!1162378 m!1330407))

(declare-fun m!1330409 () Bool)

(assert (=> b!1162378 m!1330409))

(declare-fun m!1330411 () Bool)

(assert (=> b!1162378 m!1330411))

(declare-fun m!1330413 () Bool)

(assert (=> b!1162378 m!1330413))

(declare-fun m!1330415 () Bool)

(assert (=> b!1162378 m!1330415))

(assert (=> b!1162378 m!1330401))

(declare-fun m!1330417 () Bool)

(assert (=> b!1162378 m!1330417))

(assert (=> b!1162378 m!1329499))

(declare-fun m!1330419 () Bool)

(assert (=> b!1162378 m!1330419))

(declare-fun m!1330421 () Bool)

(assert (=> b!1162378 m!1330421))

(declare-fun m!1330423 () Bool)

(assert (=> b!1162378 m!1330423))

(declare-fun m!1330425 () Bool)

(assert (=> b!1162378 m!1330425))

(declare-fun m!1330427 () Bool)

(assert (=> b!1162378 m!1330427))

(declare-fun m!1330429 () Bool)

(assert (=> b!1162378 m!1330429))

(assert (=> b!1162378 m!1329499))

(assert (=> b!1162378 m!1329499))

(declare-fun m!1330431 () Bool)

(assert (=> b!1162378 m!1330431))

(declare-fun m!1330433 () Bool)

(assert (=> b!1162378 m!1330433))

(declare-fun m!1330435 () Bool)

(assert (=> b!1162378 m!1330435))

(assert (=> b!1162378 m!1330435))

(declare-fun m!1330437 () Bool)

(assert (=> b!1162378 m!1330437))

(declare-fun m!1330439 () Bool)

(assert (=> b!1162378 m!1330439))

(assert (=> b!1162378 m!1330409))

(assert (=> b!1162378 m!1330425))

(assert (=> b!1162378 m!1330431))

(declare-fun m!1330441 () Bool)

(assert (=> b!1162378 m!1330441))

(declare-fun m!1330443 () Bool)

(assert (=> b!1162378 m!1330443))

(assert (=> b!1162378 m!1330431))

(assert (=> b!1162378 m!1330405))

(assert (=> b!1162378 m!1330431))

(declare-fun m!1330445 () Bool)

(assert (=> b!1162378 m!1330445))

(declare-fun m!1330447 () Bool)

(assert (=> b!1162378 m!1330447))

(declare-fun m!1330449 () Bool)

(assert (=> b!1162378 m!1330449))

(declare-fun m!1330451 () Bool)

(assert (=> b!1162378 m!1330451))

(assert (=> b!1161802 d!331823))

(declare-fun d!331825 () Bool)

(declare-fun lt!396279 () Bool)

(assert (=> d!331825 (= lt!396279 (tokensListTwoByTwoPredicateSeparableList!96 Lexer!1682 (dropList!312 (tokens!1594 thiss!10527) 1) (rules!9500 thiss!10527)))))

(declare-fun lt!396291 () Unit!17451)

(declare-fun lt!396278 () Unit!17451)

(assert (=> d!331825 (= lt!396291 lt!396278)))

(declare-fun lt!396280 () List!11461)

(assert (=> d!331825 (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) lt!396280)))

(declare-fun lt!396271 () List!11461)

(assert (=> d!331825 (= lt!396278 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!22 Lexer!1682 (rules!9500 thiss!10527) lt!396271 lt!396280))))

(declare-fun e!744379 () Bool)

(assert (=> d!331825 e!744379))

(declare-fun res!524228 () Bool)

(assert (=> d!331825 (=> (not res!524228) (not e!744379))))

(assert (=> d!331825 (= res!524228 ((_ is Lexer!1682) Lexer!1682))))

(assert (=> d!331825 (= lt!396280 (dropList!312 (tokens!1594 thiss!10527) 1))))

(assert (=> d!331825 (= lt!396271 (list!4208 (tokens!1594 thiss!10527)))))

(declare-fun lt!396290 () Unit!17451)

(declare-fun lt!396289 () Unit!17451)

(assert (=> d!331825 (= lt!396290 lt!396289)))

(declare-fun lt!396276 () List!11461)

(assert (=> d!331825 (subseq!245 (drop!471 lt!396276 1) lt!396276)))

(assert (=> d!331825 (= lt!396289 (lemmaDropSubSeq!22 lt!396276 1))))

(declare-fun e!744378 () Bool)

(assert (=> d!331825 e!744378))

(declare-fun res!524233 () Bool)

(assert (=> d!331825 (=> (not res!524233) (not e!744378))))

(assert (=> d!331825 (= res!524233 (>= 1 0))))

(assert (=> d!331825 (= lt!396276 (list!4208 (tokens!1594 thiss!10527)))))

(declare-fun e!744380 () Bool)

(assert (=> d!331825 (= lt!396279 e!744380)))

(declare-fun res!524230 () Bool)

(assert (=> d!331825 (=> res!524230 e!744380)))

(assert (=> d!331825 (= res!524230 (not (< 1 (- (size!8990 (tokens!1594 thiss!10527)) 1))))))

(declare-fun e!744377 () Bool)

(assert (=> d!331825 e!744377))

(declare-fun res!524235 () Bool)

(assert (=> d!331825 (=> (not res!524235) (not e!744377))))

(assert (=> d!331825 (= res!524235 (>= 1 0))))

(assert (=> d!331825 (= (tokensListTwoByTwoPredicateSeparable!59 Lexer!1682 (tokens!1594 thiss!10527) 1 (rules!9500 thiss!10527)) lt!396279)))

(declare-fun b!1162380 () Bool)

(declare-fun e!744376 () Bool)

(assert (=> b!1162380 (= e!744376 (tokensListTwoByTwoPredicateSeparable!59 Lexer!1682 (tokens!1594 thiss!10527) (+ 1 1) (rules!9500 thiss!10527)))))

(declare-fun b!1162381 () Bool)

(declare-fun res!524232 () Bool)

(assert (=> b!1162381 (=> (not res!524232) (not e!744379))))

(assert (=> b!1162381 (= res!524232 (subseq!245 lt!396280 lt!396271))))

(declare-fun b!1162382 () Bool)

(assert (=> b!1162382 (= e!744378 (<= 1 (size!8995 lt!396276)))))

(declare-fun b!1162383 () Bool)

(declare-fun res!524229 () Bool)

(assert (=> b!1162383 (=> (not res!524229) (not e!744379))))

(assert (=> b!1162383 (= res!524229 (not (isEmpty!6980 (rules!9500 thiss!10527))))))

(declare-fun b!1162384 () Bool)

(assert (=> b!1162384 (= e!744379 (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) lt!396271))))

(declare-fun b!1162385 () Bool)

(assert (=> b!1162385 (= e!744377 (<= 1 (size!8990 (tokens!1594 thiss!10527))))))

(declare-fun b!1162386 () Bool)

(assert (=> b!1162386 (= e!744380 e!744376)))

(declare-fun res!524234 () Bool)

(assert (=> b!1162386 (=> (not res!524234) (not e!744376))))

(assert (=> b!1162386 (= res!524234 (separableTokensPredicate!120 Lexer!1682 (apply!2445 (tokens!1594 thiss!10527) 1) (apply!2445 (tokens!1594 thiss!10527) (+ 1 1)) (rules!9500 thiss!10527)))))

(declare-fun lt!396288 () Unit!17451)

(declare-fun Unit!17475 () Unit!17451)

(assert (=> b!1162386 (= lt!396288 Unit!17475)))

(assert (=> b!1162386 (> (size!8991 (charsOf!1058 (apply!2445 (tokens!1594 thiss!10527) (+ 1 1)))) 0)))

(declare-fun lt!396292 () Unit!17451)

(declare-fun Unit!17476 () Unit!17451)

(assert (=> b!1162386 (= lt!396292 Unit!17476)))

(assert (=> b!1162386 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (apply!2445 (tokens!1594 thiss!10527) (+ 1 1)))))

(declare-fun lt!396281 () Unit!17451)

(declare-fun Unit!17477 () Unit!17451)

(assert (=> b!1162386 (= lt!396281 Unit!17477)))

(assert (=> b!1162386 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (apply!2445 (tokens!1594 thiss!10527) 1))))

(declare-fun lt!396272 () Unit!17451)

(declare-fun lt!396265 () Unit!17451)

(assert (=> b!1162386 (= lt!396272 lt!396265)))

(declare-fun lt!396268 () Token!3640)

(assert (=> b!1162386 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) lt!396268)))

(declare-fun lt!396294 () List!11461)

(assert (=> b!1162386 (= lt!396265 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!279 Lexer!1682 (rules!9500 thiss!10527) lt!396294 lt!396268))))

(assert (=> b!1162386 (= lt!396268 (apply!2445 (tokens!1594 thiss!10527) (+ 1 1)))))

(assert (=> b!1162386 (= lt!396294 (list!4208 (tokens!1594 thiss!10527)))))

(declare-fun lt!396283 () Unit!17451)

(declare-fun lt!396287 () Unit!17451)

(assert (=> b!1162386 (= lt!396283 lt!396287)))

(declare-fun lt!396266 () Token!3640)

(assert (=> b!1162386 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) lt!396266)))

(declare-fun lt!396282 () List!11461)

(assert (=> b!1162386 (= lt!396287 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!279 Lexer!1682 (rules!9500 thiss!10527) lt!396282 lt!396266))))

(assert (=> b!1162386 (= lt!396266 (apply!2445 (tokens!1594 thiss!10527) 1))))

(assert (=> b!1162386 (= lt!396282 (list!4208 (tokens!1594 thiss!10527)))))

(declare-fun lt!396270 () Unit!17451)

(declare-fun lt!396277 () Unit!17451)

(assert (=> b!1162386 (= lt!396270 lt!396277)))

(declare-fun lt!396269 () List!11461)

(declare-fun lt!396263 () Int)

(assert (=> b!1162386 (= (tail!1676 (drop!471 lt!396269 lt!396263)) (drop!471 lt!396269 (+ lt!396263 1)))))

(assert (=> b!1162386 (= lt!396277 (lemmaDropTail!349 lt!396269 lt!396263))))

(assert (=> b!1162386 (= lt!396263 (+ 1 1))))

(assert (=> b!1162386 (= lt!396269 (list!4208 (tokens!1594 thiss!10527)))))

(declare-fun lt!396285 () Unit!17451)

(declare-fun lt!396273 () Unit!17451)

(assert (=> b!1162386 (= lt!396285 lt!396273)))

(declare-fun lt!396286 () List!11461)

(assert (=> b!1162386 (= (tail!1676 (drop!471 lt!396286 1)) (drop!471 lt!396286 (+ 1 1)))))

(assert (=> b!1162386 (= lt!396273 (lemmaDropTail!349 lt!396286 1))))

(assert (=> b!1162386 (= lt!396286 (list!4208 (tokens!1594 thiss!10527)))))

(declare-fun lt!396284 () Unit!17451)

(declare-fun lt!396274 () Unit!17451)

(assert (=> b!1162386 (= lt!396284 lt!396274)))

(declare-fun lt!396267 () List!11461)

(declare-fun lt!396262 () Int)

(assert (=> b!1162386 (= (head!2092 (drop!471 lt!396267 lt!396262)) (apply!2446 lt!396267 lt!396262))))

(assert (=> b!1162386 (= lt!396274 (lemmaDropApply!361 lt!396267 lt!396262))))

(assert (=> b!1162386 (= lt!396262 (+ 1 1))))

(assert (=> b!1162386 (= lt!396267 (list!4208 (tokens!1594 thiss!10527)))))

(declare-fun lt!396275 () Unit!17451)

(declare-fun lt!396293 () Unit!17451)

(assert (=> b!1162386 (= lt!396275 lt!396293)))

(declare-fun lt!396264 () List!11461)

(assert (=> b!1162386 (= (head!2092 (drop!471 lt!396264 1)) (apply!2446 lt!396264 1))))

(assert (=> b!1162386 (= lt!396293 (lemmaDropApply!361 lt!396264 1))))

(assert (=> b!1162386 (= lt!396264 (list!4208 (tokens!1594 thiss!10527)))))

(declare-fun b!1162387 () Bool)

(declare-fun res!524231 () Bool)

(assert (=> b!1162387 (=> (not res!524231) (not e!744379))))

(assert (=> b!1162387 (= res!524231 (rulesInvariant!1558 Lexer!1682 (rules!9500 thiss!10527)))))

(assert (= (and d!331825 res!524235) b!1162385))

(assert (= (and d!331825 (not res!524230)) b!1162386))

(assert (= (and b!1162386 res!524234) b!1162380))

(assert (= (and d!331825 res!524233) b!1162382))

(assert (= (and d!331825 res!524228) b!1162383))

(assert (= (and b!1162383 res!524229) b!1162387))

(assert (= (and b!1162387 res!524231) b!1162381))

(assert (= (and b!1162381 res!524232) b!1162384))

(assert (=> d!331825 m!1329527))

(declare-fun m!1330453 () Bool)

(assert (=> d!331825 m!1330453))

(declare-fun m!1330455 () Bool)

(assert (=> d!331825 m!1330455))

(assert (=> d!331825 m!1329419))

(declare-fun m!1330457 () Bool)

(assert (=> d!331825 m!1330457))

(assert (=> d!331825 m!1330457))

(declare-fun m!1330459 () Bool)

(assert (=> d!331825 m!1330459))

(declare-fun m!1330461 () Bool)

(assert (=> d!331825 m!1330461))

(assert (=> d!331825 m!1330453))

(declare-fun m!1330463 () Bool)

(assert (=> d!331825 m!1330463))

(declare-fun m!1330465 () Bool)

(assert (=> d!331825 m!1330465))

(assert (=> b!1162387 m!1329533))

(declare-fun m!1330467 () Bool)

(assert (=> b!1162384 m!1330467))

(declare-fun m!1330469 () Bool)

(assert (=> b!1162382 m!1330469))

(assert (=> b!1162385 m!1329419))

(declare-fun m!1330471 () Bool)

(assert (=> b!1162381 m!1330471))

(assert (=> b!1162383 m!1329575))

(declare-fun m!1330473 () Bool)

(assert (=> b!1162380 m!1330473))

(assert (=> b!1162386 m!1329527))

(declare-fun m!1330475 () Bool)

(assert (=> b!1162386 m!1330475))

(declare-fun m!1330477 () Bool)

(assert (=> b!1162386 m!1330477))

(declare-fun m!1330479 () Bool)

(assert (=> b!1162386 m!1330479))

(declare-fun m!1330481 () Bool)

(assert (=> b!1162386 m!1330481))

(declare-fun m!1330483 () Bool)

(assert (=> b!1162386 m!1330483))

(declare-fun m!1330485 () Bool)

(assert (=> b!1162386 m!1330485))

(declare-fun m!1330487 () Bool)

(assert (=> b!1162386 m!1330487))

(declare-fun m!1330489 () Bool)

(assert (=> b!1162386 m!1330489))

(assert (=> b!1162386 m!1330475))

(declare-fun m!1330491 () Bool)

(assert (=> b!1162386 m!1330491))

(assert (=> b!1162386 m!1329483))

(declare-fun m!1330493 () Bool)

(assert (=> b!1162386 m!1330493))

(declare-fun m!1330495 () Bool)

(assert (=> b!1162386 m!1330495))

(declare-fun m!1330497 () Bool)

(assert (=> b!1162386 m!1330497))

(declare-fun m!1330499 () Bool)

(assert (=> b!1162386 m!1330499))

(declare-fun m!1330501 () Bool)

(assert (=> b!1162386 m!1330501))

(declare-fun m!1330503 () Bool)

(assert (=> b!1162386 m!1330503))

(assert (=> b!1162386 m!1329483))

(assert (=> b!1162386 m!1329483))

(declare-fun m!1330505 () Bool)

(assert (=> b!1162386 m!1330505))

(declare-fun m!1330507 () Bool)

(assert (=> b!1162386 m!1330507))

(declare-fun m!1330509 () Bool)

(assert (=> b!1162386 m!1330509))

(assert (=> b!1162386 m!1330509))

(declare-fun m!1330511 () Bool)

(assert (=> b!1162386 m!1330511))

(declare-fun m!1330513 () Bool)

(assert (=> b!1162386 m!1330513))

(assert (=> b!1162386 m!1330483))

(assert (=> b!1162386 m!1330499))

(assert (=> b!1162386 m!1330505))

(declare-fun m!1330515 () Bool)

(assert (=> b!1162386 m!1330515))

(declare-fun m!1330517 () Bool)

(assert (=> b!1162386 m!1330517))

(assert (=> b!1162386 m!1330505))

(assert (=> b!1162386 m!1330479))

(assert (=> b!1162386 m!1330505))

(declare-fun m!1330519 () Bool)

(assert (=> b!1162386 m!1330519))

(declare-fun m!1330521 () Bool)

(assert (=> b!1162386 m!1330521))

(declare-fun m!1330523 () Bool)

(assert (=> b!1162386 m!1330523))

(declare-fun m!1330525 () Bool)

(assert (=> b!1162386 m!1330525))

(assert (=> b!1161822 d!331825))

(declare-fun bs!283643 () Bool)

(declare-fun d!331827 () Bool)

(assert (= bs!283643 (and d!331827 b!1162334)))

(declare-fun lambda!47471 () Int)

(assert (=> bs!283643 (= lambda!47471 lambda!47470)))

(declare-fun bs!283644 () Bool)

(assert (= bs!283644 (and d!331827 b!1162114)))

(assert (=> bs!283644 (= lambda!47471 lambda!47463)))

(declare-fun bs!283645 () Bool)

(assert (= bs!283645 (and d!331827 d!331653)))

(assert (=> bs!283645 (= lambda!47471 lambda!47450)))

(declare-fun bs!283646 () Bool)

(assert (= bs!283646 (and d!331827 d!331615)))

(assert (=> bs!283646 (= lambda!47471 lambda!47449)))

(declare-fun bs!283647 () Bool)

(assert (= bs!283647 (and d!331827 d!331749)))

(assert (=> bs!283647 (= lambda!47471 lambda!47464)))

(declare-fun bs!283648 () Bool)

(assert (= bs!283648 (and d!331827 b!1161817)))

(assert (=> bs!283648 (= lambda!47471 lambda!47437)))

(declare-fun bs!283649 () Bool)

(assert (= bs!283649 (and d!331827 d!331609)))

(assert (=> bs!283649 (= lambda!47471 lambda!47440)))

(declare-fun bs!283650 () Bool)

(assert (= bs!283650 (and d!331827 d!331719)))

(assert (=> bs!283650 (= lambda!47471 lambda!47451)))

(declare-fun b!1162392 () Bool)

(declare-fun e!744385 () Bool)

(assert (=> b!1162392 (= e!744385 true)))

(declare-fun b!1162391 () Bool)

(declare-fun e!744384 () Bool)

(assert (=> b!1162391 (= e!744384 e!744385)))

(declare-fun b!1162390 () Bool)

(declare-fun e!744383 () Bool)

(assert (=> b!1162390 (= e!744383 e!744384)))

(assert (=> d!331827 e!744383))

(assert (= b!1162391 b!1162392))

(assert (= b!1162390 b!1162391))

(assert (= (and d!331827 ((_ is Cons!11438) (rules!9500 thiss!10527))) b!1162390))

(assert (=> b!1162392 (< (dynLambda!5033 order!6987 (toValue!3090 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47471))))

(assert (=> b!1162392 (< (dynLambda!5035 order!6991 (toChars!2949 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47471))))

(assert (=> d!331827 true))

(declare-fun lt!396295 () Bool)

(assert (=> d!331827 (= lt!396295 (forall!2985 (t!109891 lt!395757) lambda!47471))))

(declare-fun e!744381 () Bool)

(assert (=> d!331827 (= lt!396295 e!744381)))

(declare-fun res!524236 () Bool)

(assert (=> d!331827 (=> res!524236 e!744381)))

(assert (=> d!331827 (= res!524236 (not ((_ is Cons!11437) (t!109891 lt!395757))))))

(assert (=> d!331827 (not (isEmpty!6980 (rules!9500 thiss!10527)))))

(assert (=> d!331827 (= (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) (t!109891 lt!395757)) lt!396295)))

(declare-fun b!1162388 () Bool)

(declare-fun e!744382 () Bool)

(assert (=> b!1162388 (= e!744381 e!744382)))

(declare-fun res!524237 () Bool)

(assert (=> b!1162388 (=> (not res!524237) (not e!744382))))

(assert (=> b!1162388 (= res!524237 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 (t!109891 lt!395757))))))

(declare-fun b!1162389 () Bool)

(assert (=> b!1162389 (= e!744382 (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) (t!109891 (t!109891 lt!395757))))))

(assert (= (and d!331827 (not res!524236)) b!1162388))

(assert (= (and b!1162388 res!524237) b!1162389))

(declare-fun m!1330527 () Bool)

(assert (=> d!331827 m!1330527))

(assert (=> d!331827 m!1329575))

(declare-fun m!1330529 () Bool)

(assert (=> b!1162388 m!1330529))

(declare-fun m!1330531 () Bool)

(assert (=> b!1162389 m!1330531))

(assert (=> b!1161801 d!331827))

(declare-fun d!331829 () Bool)

(declare-fun res!524240 () Bool)

(declare-fun e!744388 () Bool)

(assert (=> d!331829 (=> (not res!524240) (not e!744388))))

(declare-fun rulesValid!692 (LexerInterface!1684 List!11462) Bool)

(assert (=> d!331829 (= res!524240 (rulesValid!692 Lexer!1682 (rules!9500 thiss!10527)))))

(assert (=> d!331829 (= (rulesInvariant!1558 Lexer!1682 (rules!9500 thiss!10527)) e!744388)))

(declare-fun b!1162395 () Bool)

(declare-datatypes ((List!11464 0))(
  ( (Nil!11440) (Cons!11440 (h!16841 String!13863) (t!109924 List!11464)) )
))
(declare-fun noDuplicateTag!692 (LexerInterface!1684 List!11462 List!11464) Bool)

(assert (=> b!1162395 (= e!744388 (noDuplicateTag!692 Lexer!1682 (rules!9500 thiss!10527) Nil!11440))))

(assert (= (and d!331829 res!524240) b!1162395))

(declare-fun m!1330533 () Bool)

(assert (=> d!331829 m!1330533))

(declare-fun m!1330535 () Bool)

(assert (=> b!1162395 m!1330535))

(assert (=> b!1161800 d!331829))

(declare-fun d!331831 () Bool)

(declare-fun e!744406 () Bool)

(assert (=> d!331831 e!744406))

(declare-fun res!524257 () Bool)

(assert (=> d!331831 (=> (not res!524257) (not e!744406))))

(assert (=> d!331831 (= res!524257 (rulesInvariant!1558 Lexer!1682 (rules!9500 thiss!10527)))))

(declare-fun Unit!17478 () Unit!17451)

(assert (=> d!331831 (= (lemmaInvariant!176 thiss!10527) Unit!17478)))

(declare-fun b!1162415 () Bool)

(declare-fun res!524258 () Bool)

(assert (=> b!1162415 (=> (not res!524258) (not e!744406))))

(assert (=> b!1162415 (= res!524258 (rulesProduceEachTokenIndividually!723 Lexer!1682 (rules!9500 thiss!10527) (tokens!1594 thiss!10527)))))

(declare-fun b!1162416 () Bool)

(assert (=> b!1162416 (= e!744406 (separableTokens!126 Lexer!1682 (tokens!1594 thiss!10527) (rules!9500 thiss!10527)))))

(assert (= (and d!331831 res!524257) b!1162415))

(assert (= (and b!1162415 res!524258) b!1162416))

(assert (=> d!331831 m!1329533))

(assert (=> b!1162415 m!1329525))

(declare-fun m!1330555 () Bool)

(assert (=> b!1162416 m!1330555))

(assert (=> b!1161800 d!331831))

(declare-fun d!331835 () Bool)

(declare-fun lt!396311 () Bool)

(declare-fun e!744408 () Bool)

(assert (=> d!331835 (= lt!396311 e!744408)))

(declare-fun res!524261 () Bool)

(assert (=> d!331835 (=> (not res!524261) (not e!744408))))

(assert (=> d!331835 (= res!524261 (= (list!4208 (_1!6850 (lex!696 Lexer!1682 (rules!9500 thiss!10527) (print!633 Lexer!1682 (singletonSeq!654 (h!16838 lt!395747)))))) (list!4208 (singletonSeq!654 (h!16838 lt!395747)))))))

(declare-fun e!744407 () Bool)

(assert (=> d!331835 (= lt!396311 e!744407)))

(declare-fun res!524260 () Bool)

(assert (=> d!331835 (=> (not res!524260) (not e!744407))))

(declare-fun lt!396312 () tuple2!12006)

(assert (=> d!331835 (= res!524260 (= (size!8990 (_1!6850 lt!396312)) 1))))

(assert (=> d!331835 (= lt!396312 (lex!696 Lexer!1682 (rules!9500 thiss!10527) (print!633 Lexer!1682 (singletonSeq!654 (h!16838 lt!395747)))))))

(assert (=> d!331835 (not (isEmpty!6980 (rules!9500 thiss!10527)))))

(assert (=> d!331835 (= (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 lt!395747)) lt!396311)))

(declare-fun b!1162417 () Bool)

(declare-fun res!524259 () Bool)

(assert (=> b!1162417 (=> (not res!524259) (not e!744407))))

(assert (=> b!1162417 (= res!524259 (= (apply!2445 (_1!6850 lt!396312) 0) (h!16838 lt!395747)))))

(declare-fun b!1162418 () Bool)

(assert (=> b!1162418 (= e!744407 (isEmpty!6981 (_2!6850 lt!396312)))))

(declare-fun b!1162419 () Bool)

(assert (=> b!1162419 (= e!744408 (isEmpty!6981 (_2!6850 (lex!696 Lexer!1682 (rules!9500 thiss!10527) (print!633 Lexer!1682 (singletonSeq!654 (h!16838 lt!395747)))))))))

(assert (= (and d!331835 res!524260) b!1162417))

(assert (= (and b!1162417 res!524259) b!1162418))

(assert (= (and d!331835 res!524261) b!1162419))

(declare-fun m!1330557 () Bool)

(assert (=> d!331835 m!1330557))

(declare-fun m!1330559 () Bool)

(assert (=> d!331835 m!1330559))

(declare-fun m!1330561 () Bool)

(assert (=> d!331835 m!1330561))

(assert (=> d!331835 m!1330557))

(assert (=> d!331835 m!1330557))

(declare-fun m!1330563 () Bool)

(assert (=> d!331835 m!1330563))

(assert (=> d!331835 m!1329575))

(declare-fun m!1330565 () Bool)

(assert (=> d!331835 m!1330565))

(assert (=> d!331835 m!1330559))

(declare-fun m!1330567 () Bool)

(assert (=> d!331835 m!1330567))

(declare-fun m!1330569 () Bool)

(assert (=> b!1162417 m!1330569))

(declare-fun m!1330571 () Bool)

(assert (=> b!1162418 m!1330571))

(assert (=> b!1162419 m!1330557))

(assert (=> b!1162419 m!1330557))

(assert (=> b!1162419 m!1330559))

(assert (=> b!1162419 m!1330559))

(assert (=> b!1162419 m!1330567))

(declare-fun m!1330573 () Bool)

(assert (=> b!1162419 m!1330573))

(assert (=> b!1161805 d!331835))

(declare-fun d!331837 () Bool)

(declare-fun lt!396313 () Bool)

(declare-fun e!744410 () Bool)

(assert (=> d!331837 (= lt!396313 e!744410)))

(declare-fun res!524264 () Bool)

(assert (=> d!331837 (=> (not res!524264) (not e!744410))))

(assert (=> d!331837 (= res!524264 (= (list!4208 (_1!6850 (lex!696 Lexer!1682 (rules!9500 thiss!10527) (print!633 Lexer!1682 (singletonSeq!654 (h!16838 lt!395757)))))) (list!4208 (singletonSeq!654 (h!16838 lt!395757)))))))

(declare-fun e!744409 () Bool)

(assert (=> d!331837 (= lt!396313 e!744409)))

(declare-fun res!524263 () Bool)

(assert (=> d!331837 (=> (not res!524263) (not e!744409))))

(declare-fun lt!396314 () tuple2!12006)

(assert (=> d!331837 (= res!524263 (= (size!8990 (_1!6850 lt!396314)) 1))))

(assert (=> d!331837 (= lt!396314 (lex!696 Lexer!1682 (rules!9500 thiss!10527) (print!633 Lexer!1682 (singletonSeq!654 (h!16838 lt!395757)))))))

(assert (=> d!331837 (not (isEmpty!6980 (rules!9500 thiss!10527)))))

(assert (=> d!331837 (= (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 lt!395757)) lt!396313)))

(declare-fun b!1162420 () Bool)

(declare-fun res!524262 () Bool)

(assert (=> b!1162420 (=> (not res!524262) (not e!744409))))

(assert (=> b!1162420 (= res!524262 (= (apply!2445 (_1!6850 lt!396314) 0) (h!16838 lt!395757)))))

(declare-fun b!1162421 () Bool)

(assert (=> b!1162421 (= e!744409 (isEmpty!6981 (_2!6850 lt!396314)))))

(declare-fun b!1162422 () Bool)

(assert (=> b!1162422 (= e!744410 (isEmpty!6981 (_2!6850 (lex!696 Lexer!1682 (rules!9500 thiss!10527) (print!633 Lexer!1682 (singletonSeq!654 (h!16838 lt!395757)))))))))

(assert (= (and d!331837 res!524263) b!1162420))

(assert (= (and b!1162420 res!524262) b!1162421))

(assert (= (and d!331837 res!524264) b!1162422))

(declare-fun m!1330575 () Bool)

(assert (=> d!331837 m!1330575))

(declare-fun m!1330577 () Bool)

(assert (=> d!331837 m!1330577))

(declare-fun m!1330579 () Bool)

(assert (=> d!331837 m!1330579))

(assert (=> d!331837 m!1330575))

(assert (=> d!331837 m!1330575))

(declare-fun m!1330581 () Bool)

(assert (=> d!331837 m!1330581))

(assert (=> d!331837 m!1329575))

(declare-fun m!1330583 () Bool)

(assert (=> d!331837 m!1330583))

(assert (=> d!331837 m!1330577))

(declare-fun m!1330585 () Bool)

(assert (=> d!331837 m!1330585))

(declare-fun m!1330587 () Bool)

(assert (=> b!1162420 m!1330587))

(declare-fun m!1330589 () Bool)

(assert (=> b!1162421 m!1330589))

(assert (=> b!1162422 m!1330575))

(assert (=> b!1162422 m!1330575))

(assert (=> b!1162422 m!1330577))

(assert (=> b!1162422 m!1330577))

(assert (=> b!1162422 m!1330585))

(declare-fun m!1330591 () Bool)

(assert (=> b!1162422 m!1330591))

(assert (=> b!1161804 d!331837))

(declare-fun bs!283660 () Bool)

(declare-fun d!331839 () Bool)

(assert (= bs!283660 (and d!331839 b!1162334)))

(declare-fun lambda!47475 () Int)

(assert (=> bs!283660 (= lambda!47475 lambda!47470)))

(declare-fun bs!283661 () Bool)

(assert (= bs!283661 (and d!331839 b!1162114)))

(assert (=> bs!283661 (= lambda!47475 lambda!47463)))

(declare-fun bs!283662 () Bool)

(assert (= bs!283662 (and d!331839 d!331827)))

(assert (=> bs!283662 (= lambda!47475 lambda!47471)))

(declare-fun bs!283663 () Bool)

(assert (= bs!283663 (and d!331839 d!331653)))

(assert (=> bs!283663 (= lambda!47475 lambda!47450)))

(declare-fun bs!283664 () Bool)

(assert (= bs!283664 (and d!331839 d!331615)))

(assert (=> bs!283664 (= lambda!47475 lambda!47449)))

(declare-fun bs!283665 () Bool)

(assert (= bs!283665 (and d!331839 d!331749)))

(assert (=> bs!283665 (= lambda!47475 lambda!47464)))

(declare-fun bs!283666 () Bool)

(assert (= bs!283666 (and d!331839 b!1161817)))

(assert (=> bs!283666 (= lambda!47475 lambda!47437)))

(declare-fun bs!283667 () Bool)

(assert (= bs!283667 (and d!331839 d!331609)))

(assert (=> bs!283667 (= lambda!47475 lambda!47440)))

(declare-fun bs!283668 () Bool)

(assert (= bs!283668 (and d!331839 d!331719)))

(assert (=> bs!283668 (= lambda!47475 lambda!47451)))

(declare-fun b!1162427 () Bool)

(declare-fun e!744415 () Bool)

(assert (=> b!1162427 (= e!744415 true)))

(declare-fun b!1162426 () Bool)

(declare-fun e!744414 () Bool)

(assert (=> b!1162426 (= e!744414 e!744415)))

(declare-fun b!1162425 () Bool)

(declare-fun e!744413 () Bool)

(assert (=> b!1162425 (= e!744413 e!744414)))

(assert (=> d!331839 e!744413))

(assert (= b!1162426 b!1162427))

(assert (= b!1162425 b!1162426))

(assert (= (and d!331839 ((_ is Cons!11438) (rules!9500 thiss!10527))) b!1162425))

(assert (=> b!1162427 (< (dynLambda!5033 order!6987 (toValue!3090 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47475))))

(assert (=> b!1162427 (< (dynLambda!5035 order!6991 (toChars!2949 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47475))))

(assert (=> d!331839 true))

(declare-fun lt!396315 () Bool)

(assert (=> d!331839 (= lt!396315 (forall!2985 (t!109891 lt!395768) lambda!47475))))

(declare-fun e!744411 () Bool)

(assert (=> d!331839 (= lt!396315 e!744411)))

(declare-fun res!524265 () Bool)

(assert (=> d!331839 (=> res!524265 e!744411)))

(assert (=> d!331839 (= res!524265 (not ((_ is Cons!11437) (t!109891 lt!395768))))))

(assert (=> d!331839 (not (isEmpty!6980 (rules!9500 thiss!10527)))))

(assert (=> d!331839 (= (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) (t!109891 lt!395768)) lt!396315)))

(declare-fun b!1162423 () Bool)

(declare-fun e!744412 () Bool)

(assert (=> b!1162423 (= e!744411 e!744412)))

(declare-fun res!524266 () Bool)

(assert (=> b!1162423 (=> (not res!524266) (not e!744412))))

(assert (=> b!1162423 (= res!524266 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 (t!109891 lt!395768))))))

(declare-fun b!1162424 () Bool)

(assert (=> b!1162424 (= e!744412 (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) (t!109891 (t!109891 lt!395768))))))

(assert (= (and d!331839 (not res!524265)) b!1162423))

(assert (= (and b!1162423 res!524266) b!1162424))

(declare-fun m!1330593 () Bool)

(assert (=> d!331839 m!1330593))

(assert (=> d!331839 m!1329575))

(declare-fun m!1330595 () Bool)

(assert (=> b!1162423 m!1330595))

(declare-fun m!1330597 () Bool)

(assert (=> b!1162424 m!1330597))

(assert (=> b!1161803 d!331839))

(declare-fun d!331841 () Bool)

(declare-fun res!524312 () Bool)

(declare-fun e!744485 () Bool)

(assert (=> d!331841 (=> (not res!524312) (not e!744485))))

(assert (=> d!331841 (= res!524312 (not (isEmpty!6980 (rules!9500 thiss!10527))))))

(assert (=> d!331841 (= (inv!15035 thiss!10527) e!744485)))

(declare-fun b!1162531 () Bool)

(declare-fun res!524313 () Bool)

(assert (=> b!1162531 (=> (not res!524313) (not e!744485))))

(assert (=> b!1162531 (= res!524313 (rulesInvariant!1558 Lexer!1682 (rules!9500 thiss!10527)))))

(declare-fun b!1162532 () Bool)

(declare-fun res!524314 () Bool)

(assert (=> b!1162532 (=> (not res!524314) (not e!744485))))

(assert (=> b!1162532 (= res!524314 (rulesProduceEachTokenIndividually!723 Lexer!1682 (rules!9500 thiss!10527) (tokens!1594 thiss!10527)))))

(declare-fun b!1162533 () Bool)

(assert (=> b!1162533 (= e!744485 (separableTokens!126 Lexer!1682 (tokens!1594 thiss!10527) (rules!9500 thiss!10527)))))

(assert (= (and d!331841 res!524312) b!1162531))

(assert (= (and b!1162531 res!524313) b!1162532))

(assert (= (and b!1162532 res!524314) b!1162533))

(assert (=> d!331841 m!1329575))

(assert (=> b!1162531 m!1329533))

(assert (=> b!1162532 m!1329525))

(assert (=> b!1162533 m!1330555))

(assert (=> start!101750 d!331841))

(declare-fun d!331867 () Bool)

(declare-fun lt!396356 () Bool)

(declare-fun e!744487 () Bool)

(assert (=> d!331867 (= lt!396356 e!744487)))

(declare-fun res!524317 () Bool)

(assert (=> d!331867 (=> (not res!524317) (not e!744487))))

(assert (=> d!331867 (= res!524317 (= (list!4208 (_1!6850 (lex!696 Lexer!1682 (rules!9500 thiss!10527) (print!633 Lexer!1682 (singletonSeq!654 (h!16838 lt!395763)))))) (list!4208 (singletonSeq!654 (h!16838 lt!395763)))))))

(declare-fun e!744486 () Bool)

(assert (=> d!331867 (= lt!396356 e!744486)))

(declare-fun res!524316 () Bool)

(assert (=> d!331867 (=> (not res!524316) (not e!744486))))

(declare-fun lt!396357 () tuple2!12006)

(assert (=> d!331867 (= res!524316 (= (size!8990 (_1!6850 lt!396357)) 1))))

(assert (=> d!331867 (= lt!396357 (lex!696 Lexer!1682 (rules!9500 thiss!10527) (print!633 Lexer!1682 (singletonSeq!654 (h!16838 lt!395763)))))))

(assert (=> d!331867 (not (isEmpty!6980 (rules!9500 thiss!10527)))))

(assert (=> d!331867 (= (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 lt!395763)) lt!396356)))

(declare-fun b!1162534 () Bool)

(declare-fun res!524315 () Bool)

(assert (=> b!1162534 (=> (not res!524315) (not e!744486))))

(assert (=> b!1162534 (= res!524315 (= (apply!2445 (_1!6850 lt!396357) 0) (h!16838 lt!395763)))))

(declare-fun b!1162535 () Bool)

(assert (=> b!1162535 (= e!744486 (isEmpty!6981 (_2!6850 lt!396357)))))

(declare-fun b!1162536 () Bool)

(assert (=> b!1162536 (= e!744487 (isEmpty!6981 (_2!6850 (lex!696 Lexer!1682 (rules!9500 thiss!10527) (print!633 Lexer!1682 (singletonSeq!654 (h!16838 lt!395763)))))))))

(assert (= (and d!331867 res!524316) b!1162534))

(assert (= (and b!1162534 res!524315) b!1162535))

(assert (= (and d!331867 res!524317) b!1162536))

(declare-fun m!1330723 () Bool)

(assert (=> d!331867 m!1330723))

(declare-fun m!1330725 () Bool)

(assert (=> d!331867 m!1330725))

(declare-fun m!1330727 () Bool)

(assert (=> d!331867 m!1330727))

(assert (=> d!331867 m!1330723))

(assert (=> d!331867 m!1330723))

(declare-fun m!1330729 () Bool)

(assert (=> d!331867 m!1330729))

(assert (=> d!331867 m!1329575))

(declare-fun m!1330731 () Bool)

(assert (=> d!331867 m!1330731))

(assert (=> d!331867 m!1330725))

(declare-fun m!1330733 () Bool)

(assert (=> d!331867 m!1330733))

(declare-fun m!1330735 () Bool)

(assert (=> b!1162534 m!1330735))

(declare-fun m!1330737 () Bool)

(assert (=> b!1162535 m!1330737))

(assert (=> b!1162536 m!1330723))

(assert (=> b!1162536 m!1330723))

(assert (=> b!1162536 m!1330725))

(assert (=> b!1162536 m!1330725))

(assert (=> b!1162536 m!1330733))

(declare-fun m!1330739 () Bool)

(assert (=> b!1162536 m!1330739))

(assert (=> b!1161807 d!331867))

(declare-fun d!331869 () Bool)

(declare-fun lt!396358 () Bool)

(assert (=> d!331869 (= lt!396358 (forall!2985 (list!4208 lt!395749) lambda!47437))))

(assert (=> d!331869 (= lt!396358 (forall!2987 (c!194312 lt!395749) lambda!47437))))

(assert (=> d!331869 (= (forall!2984 lt!395749 lambda!47437) lt!396358)))

(declare-fun bs!283707 () Bool)

(assert (= bs!283707 d!331869))

(assert (=> bs!283707 m!1329405))

(assert (=> bs!283707 m!1329405))

(declare-fun m!1330741 () Bool)

(assert (=> bs!283707 m!1330741))

(declare-fun m!1330743 () Bool)

(assert (=> bs!283707 m!1330743))

(assert (=> b!1161806 d!331869))

(declare-fun d!331871 () Bool)

(declare-fun lt!396361 () Int)

(assert (=> d!331871 (= lt!396361 (size!8995 (list!4208 (tokens!1594 thiss!10527))))))

(declare-fun size!8997 (Conc!3741) Int)

(assert (=> d!331871 (= lt!396361 (size!8997 (c!194312 (tokens!1594 thiss!10527))))))

(assert (=> d!331871 (= (size!8990 (tokens!1594 thiss!10527)) lt!396361)))

(declare-fun bs!283708 () Bool)

(assert (= bs!283708 d!331871))

(assert (=> bs!283708 m!1329527))

(assert (=> bs!283708 m!1329527))

(declare-fun m!1330745 () Bool)

(assert (=> bs!283708 m!1330745))

(declare-fun m!1330747 () Bool)

(assert (=> bs!283708 m!1330747))

(assert (=> b!1161810 d!331871))

(declare-fun bs!283709 () Bool)

(declare-fun d!331873 () Bool)

(assert (= bs!283709 (and d!331873 b!1162334)))

(declare-fun lambda!47479 () Int)

(assert (=> bs!283709 (= lambda!47479 lambda!47470)))

(declare-fun bs!283710 () Bool)

(assert (= bs!283710 (and d!331873 b!1162114)))

(assert (=> bs!283710 (= lambda!47479 lambda!47463)))

(declare-fun bs!283711 () Bool)

(assert (= bs!283711 (and d!331873 d!331827)))

(assert (=> bs!283711 (= lambda!47479 lambda!47471)))

(declare-fun bs!283712 () Bool)

(assert (= bs!283712 (and d!331873 d!331653)))

(assert (=> bs!283712 (= lambda!47479 lambda!47450)))

(declare-fun bs!283713 () Bool)

(assert (= bs!283713 (and d!331873 d!331615)))

(assert (=> bs!283713 (= lambda!47479 lambda!47449)))

(declare-fun bs!283714 () Bool)

(assert (= bs!283714 (and d!331873 d!331749)))

(assert (=> bs!283714 (= lambda!47479 lambda!47464)))

(declare-fun bs!283715 () Bool)

(assert (= bs!283715 (and d!331873 b!1161817)))

(assert (=> bs!283715 (= lambda!47479 lambda!47437)))

(declare-fun bs!283716 () Bool)

(assert (= bs!283716 (and d!331873 d!331839)))

(assert (=> bs!283716 (= lambda!47479 lambda!47475)))

(declare-fun bs!283717 () Bool)

(assert (= bs!283717 (and d!331873 d!331609)))

(assert (=> bs!283717 (= lambda!47479 lambda!47440)))

(declare-fun bs!283718 () Bool)

(assert (= bs!283718 (and d!331873 d!331719)))

(assert (=> bs!283718 (= lambda!47479 lambda!47451)))

(declare-fun b!1162541 () Bool)

(declare-fun e!744492 () Bool)

(assert (=> b!1162541 (= e!744492 true)))

(declare-fun b!1162540 () Bool)

(declare-fun e!744491 () Bool)

(assert (=> b!1162540 (= e!744491 e!744492)))

(declare-fun b!1162539 () Bool)

(declare-fun e!744490 () Bool)

(assert (=> b!1162539 (= e!744490 e!744491)))

(assert (=> d!331873 e!744490))

(assert (= b!1162540 b!1162541))

(assert (= b!1162539 b!1162540))

(assert (= (and d!331873 ((_ is Cons!11438) (rules!9500 thiss!10527))) b!1162539))

(assert (=> b!1162541 (< (dynLambda!5033 order!6987 (toValue!3090 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47479))))

(assert (=> b!1162541 (< (dynLambda!5035 order!6991 (toChars!2949 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47479))))

(assert (=> d!331873 true))

(declare-fun lt!396362 () Bool)

(assert (=> d!331873 (= lt!396362 (forall!2985 (t!109891 lt!395747) lambda!47479))))

(declare-fun e!744488 () Bool)

(assert (=> d!331873 (= lt!396362 e!744488)))

(declare-fun res!524318 () Bool)

(assert (=> d!331873 (=> res!524318 e!744488)))

(assert (=> d!331873 (= res!524318 (not ((_ is Cons!11437) (t!109891 lt!395747))))))

(assert (=> d!331873 (not (isEmpty!6980 (rules!9500 thiss!10527)))))

(assert (=> d!331873 (= (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) (t!109891 lt!395747)) lt!396362)))

(declare-fun b!1162537 () Bool)

(declare-fun e!744489 () Bool)

(assert (=> b!1162537 (= e!744488 e!744489)))

(declare-fun res!524319 () Bool)

(assert (=> b!1162537 (=> (not res!524319) (not e!744489))))

(assert (=> b!1162537 (= res!524319 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 (t!109891 lt!395747))))))

(declare-fun b!1162538 () Bool)

(assert (=> b!1162538 (= e!744489 (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) (t!109891 (t!109891 lt!395747))))))

(assert (= (and d!331873 (not res!524318)) b!1162537))

(assert (= (and b!1162537 res!524319) b!1162538))

(declare-fun m!1330749 () Bool)

(assert (=> d!331873 m!1330749))

(assert (=> d!331873 m!1329575))

(declare-fun m!1330751 () Bool)

(assert (=> b!1162537 m!1330751))

(declare-fun m!1330753 () Bool)

(assert (=> b!1162538 m!1330753))

(assert (=> b!1161809 d!331873))

(declare-fun d!331875 () Bool)

(declare-fun res!524325 () Bool)

(declare-fun e!744498 () Bool)

(assert (=> d!331875 (=> res!524325 e!744498)))

(assert (=> d!331875 (= res!524325 (or (not ((_ is Cons!11437) lt!395763)) (not ((_ is Cons!11437) (t!109891 lt!395763)))))))

(assert (=> d!331875 (= (tokensListTwoByTwoPredicateSeparableList!96 Lexer!1682 lt!395763 (rules!9500 thiss!10527)) e!744498)))

(declare-fun b!1162546 () Bool)

(declare-fun e!744497 () Bool)

(assert (=> b!1162546 (= e!744498 e!744497)))

(declare-fun res!524324 () Bool)

(assert (=> b!1162546 (=> (not res!524324) (not e!744497))))

(assert (=> b!1162546 (= res!524324 (separableTokensPredicate!120 Lexer!1682 (h!16838 lt!395763) (h!16838 (t!109891 lt!395763)) (rules!9500 thiss!10527)))))

(declare-fun lt!396382 () Unit!17451)

(declare-fun Unit!17479 () Unit!17451)

(assert (=> b!1162546 (= lt!396382 Unit!17479)))

(assert (=> b!1162546 (> (size!8991 (charsOf!1058 (h!16838 (t!109891 lt!395763)))) 0)))

(declare-fun lt!396377 () Unit!17451)

(declare-fun Unit!17480 () Unit!17451)

(assert (=> b!1162546 (= lt!396377 Unit!17480)))

(assert (=> b!1162546 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 (t!109891 lt!395763)))))

(declare-fun lt!396381 () Unit!17451)

(declare-fun Unit!17481 () Unit!17451)

(assert (=> b!1162546 (= lt!396381 Unit!17481)))

(assert (=> b!1162546 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 lt!395763))))

(declare-fun lt!396383 () Unit!17451)

(declare-fun lt!396379 () Unit!17451)

(assert (=> b!1162546 (= lt!396383 lt!396379)))

(assert (=> b!1162546 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 (t!109891 lt!395763)))))

(assert (=> b!1162546 (= lt!396379 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!279 Lexer!1682 (rules!9500 thiss!10527) lt!395763 (h!16838 (t!109891 lt!395763))))))

(declare-fun lt!396380 () Unit!17451)

(declare-fun lt!396378 () Unit!17451)

(assert (=> b!1162546 (= lt!396380 lt!396378)))

(assert (=> b!1162546 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 lt!395763))))

(assert (=> b!1162546 (= lt!396378 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!279 Lexer!1682 (rules!9500 thiss!10527) lt!395763 (h!16838 lt!395763)))))

(declare-fun b!1162547 () Bool)

(assert (=> b!1162547 (= e!744497 (tokensListTwoByTwoPredicateSeparableList!96 Lexer!1682 (Cons!11437 (h!16838 (t!109891 lt!395763)) (t!109891 (t!109891 lt!395763))) (rules!9500 thiss!10527)))))

(assert (= (and d!331875 (not res!524325)) b!1162546))

(assert (= (and b!1162546 res!524324) b!1162547))

(declare-fun m!1330755 () Bool)

(assert (=> b!1162546 m!1330755))

(assert (=> b!1162546 m!1329423))

(declare-fun m!1330757 () Bool)

(assert (=> b!1162546 m!1330757))

(assert (=> b!1162546 m!1330757))

(declare-fun m!1330759 () Bool)

(assert (=> b!1162546 m!1330759))

(declare-fun m!1330761 () Bool)

(assert (=> b!1162546 m!1330761))

(declare-fun m!1330763 () Bool)

(assert (=> b!1162546 m!1330763))

(declare-fun m!1330765 () Bool)

(assert (=> b!1162546 m!1330765))

(declare-fun m!1330767 () Bool)

(assert (=> b!1162547 m!1330767))

(assert (=> b!1161808 d!331875))

(declare-fun d!331877 () Bool)

(declare-fun lt!396386 () Int)

(declare-fun size!8998 (List!11460) Int)

(declare-fun list!4212 (BalanceConc!7502) List!11460)

(assert (=> d!331877 (= lt!396386 (size!8998 (list!4212 (charsOf!1058 lt!395765))))))

(declare-fun size!8999 (Conc!3740) Int)

(assert (=> d!331877 (= lt!396386 (size!8999 (c!194311 (charsOf!1058 lt!395765))))))

(assert (=> d!331877 (= (size!8991 (charsOf!1058 lt!395765)) lt!396386)))

(declare-fun bs!283719 () Bool)

(assert (= bs!283719 d!331877))

(assert (=> bs!283719 m!1329519))

(declare-fun m!1330769 () Bool)

(assert (=> bs!283719 m!1330769))

(assert (=> bs!283719 m!1330769))

(declare-fun m!1330771 () Bool)

(assert (=> bs!283719 m!1330771))

(declare-fun m!1330773 () Bool)

(assert (=> bs!283719 m!1330773))

(assert (=> b!1161813 d!331877))

(declare-fun d!331879 () Bool)

(declare-fun lt!396389 () BalanceConc!7502)

(assert (=> d!331879 (= (list!4212 lt!396389) (originalCharacters!2543 lt!395765))))

(declare-fun dynLambda!5038 (Int TokenValue!2055) BalanceConc!7502)

(assert (=> d!331879 (= lt!396389 (dynLambda!5038 (toChars!2949 (transformation!1989 (rule!3410 lt!395765))) (value!64683 lt!395765)))))

(assert (=> d!331879 (= (charsOf!1058 lt!395765) lt!396389)))

(declare-fun b_lambda!34655 () Bool)

(assert (=> (not b_lambda!34655) (not d!331879)))

(declare-fun bs!283720 () Bool)

(assert (= bs!283720 d!331879))

(declare-fun m!1330775 () Bool)

(assert (=> bs!283720 m!1330775))

(declare-fun m!1330777 () Bool)

(assert (=> bs!283720 m!1330777))

(assert (=> b!1161813 d!331879))

(declare-fun d!331881 () Bool)

(declare-fun res!524327 () Bool)

(declare-fun e!744500 () Bool)

(assert (=> d!331881 (=> res!524327 e!744500)))

(assert (=> d!331881 (= res!524327 (or (not ((_ is Cons!11437) lt!395747)) (not ((_ is Cons!11437) (t!109891 lt!395747)))))))

(assert (=> d!331881 (= (tokensListTwoByTwoPredicateSeparableList!96 Lexer!1682 lt!395747 (rules!9500 thiss!10527)) e!744500)))

(declare-fun b!1162548 () Bool)

(declare-fun e!744499 () Bool)

(assert (=> b!1162548 (= e!744500 e!744499)))

(declare-fun res!524326 () Bool)

(assert (=> b!1162548 (=> (not res!524326) (not e!744499))))

(assert (=> b!1162548 (= res!524326 (separableTokensPredicate!120 Lexer!1682 (h!16838 lt!395747) (h!16838 (t!109891 lt!395747)) (rules!9500 thiss!10527)))))

(declare-fun lt!396395 () Unit!17451)

(declare-fun Unit!17482 () Unit!17451)

(assert (=> b!1162548 (= lt!396395 Unit!17482)))

(assert (=> b!1162548 (> (size!8991 (charsOf!1058 (h!16838 (t!109891 lt!395747)))) 0)))

(declare-fun lt!396390 () Unit!17451)

(declare-fun Unit!17483 () Unit!17451)

(assert (=> b!1162548 (= lt!396390 Unit!17483)))

(assert (=> b!1162548 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 (t!109891 lt!395747)))))

(declare-fun lt!396394 () Unit!17451)

(declare-fun Unit!17484 () Unit!17451)

(assert (=> b!1162548 (= lt!396394 Unit!17484)))

(assert (=> b!1162548 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 lt!395747))))

(declare-fun lt!396396 () Unit!17451)

(declare-fun lt!396392 () Unit!17451)

(assert (=> b!1162548 (= lt!396396 lt!396392)))

(assert (=> b!1162548 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 (t!109891 lt!395747)))))

(assert (=> b!1162548 (= lt!396392 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!279 Lexer!1682 (rules!9500 thiss!10527) lt!395747 (h!16838 (t!109891 lt!395747))))))

(declare-fun lt!396393 () Unit!17451)

(declare-fun lt!396391 () Unit!17451)

(assert (=> b!1162548 (= lt!396393 lt!396391)))

(assert (=> b!1162548 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 lt!395747))))

(assert (=> b!1162548 (= lt!396391 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!279 Lexer!1682 (rules!9500 thiss!10527) lt!395747 (h!16838 lt!395747)))))

(declare-fun b!1162549 () Bool)

(assert (=> b!1162549 (= e!744499 (tokensListTwoByTwoPredicateSeparableList!96 Lexer!1682 (Cons!11437 (h!16838 (t!109891 lt!395747)) (t!109891 (t!109891 lt!395747))) (rules!9500 thiss!10527)))))

(assert (= (and d!331881 (not res!524327)) b!1162548))

(assert (= (and b!1162548 res!524326) b!1162549))

(assert (=> b!1162548 m!1330751))

(assert (=> b!1162548 m!1329429))

(declare-fun m!1330779 () Bool)

(assert (=> b!1162548 m!1330779))

(assert (=> b!1162548 m!1330779))

(declare-fun m!1330781 () Bool)

(assert (=> b!1162548 m!1330781))

(declare-fun m!1330783 () Bool)

(assert (=> b!1162548 m!1330783))

(declare-fun m!1330785 () Bool)

(assert (=> b!1162548 m!1330785))

(declare-fun m!1330787 () Bool)

(assert (=> b!1162548 m!1330787))

(declare-fun m!1330789 () Bool)

(assert (=> b!1162549 m!1330789))

(assert (=> b!1161812 d!331881))

(declare-fun bs!283721 () Bool)

(declare-fun d!331883 () Bool)

(assert (= bs!283721 (and d!331883 b!1162334)))

(declare-fun lambda!47480 () Int)

(assert (=> bs!283721 (= lambda!47480 lambda!47470)))

(declare-fun bs!283722 () Bool)

(assert (= bs!283722 (and d!331883 b!1162114)))

(assert (=> bs!283722 (= lambda!47480 lambda!47463)))

(declare-fun bs!283723 () Bool)

(assert (= bs!283723 (and d!331883 d!331827)))

(assert (=> bs!283723 (= lambda!47480 lambda!47471)))

(declare-fun bs!283724 () Bool)

(assert (= bs!283724 (and d!331883 d!331653)))

(assert (=> bs!283724 (= lambda!47480 lambda!47450)))

(declare-fun bs!283725 () Bool)

(assert (= bs!283725 (and d!331883 d!331615)))

(assert (=> bs!283725 (= lambda!47480 lambda!47449)))

(declare-fun bs!283726 () Bool)

(assert (= bs!283726 (and d!331883 b!1161817)))

(assert (=> bs!283726 (= lambda!47480 lambda!47437)))

(declare-fun bs!283727 () Bool)

(assert (= bs!283727 (and d!331883 d!331839)))

(assert (=> bs!283727 (= lambda!47480 lambda!47475)))

(declare-fun bs!283728 () Bool)

(assert (= bs!283728 (and d!331883 d!331609)))

(assert (=> bs!283728 (= lambda!47480 lambda!47440)))

(declare-fun bs!283729 () Bool)

(assert (= bs!283729 (and d!331883 d!331719)))

(assert (=> bs!283729 (= lambda!47480 lambda!47451)))

(declare-fun bs!283730 () Bool)

(assert (= bs!283730 (and d!331883 d!331873)))

(assert (=> bs!283730 (= lambda!47480 lambda!47479)))

(declare-fun bs!283731 () Bool)

(assert (= bs!283731 (and d!331883 d!331749)))

(assert (=> bs!283731 (= lambda!47480 lambda!47464)))

(declare-fun b!1162553 () Bool)

(declare-fun e!744504 () Bool)

(assert (=> b!1162553 (= e!744504 true)))

(declare-fun b!1162552 () Bool)

(declare-fun e!744503 () Bool)

(assert (=> b!1162552 (= e!744503 e!744504)))

(declare-fun b!1162551 () Bool)

(declare-fun e!744502 () Bool)

(assert (=> b!1162551 (= e!744502 e!744503)))

(assert (=> d!331883 e!744502))

(assert (= b!1162552 b!1162553))

(assert (= b!1162551 b!1162552))

(assert (= (and d!331883 ((_ is Cons!11438) (rules!9500 thiss!10527))) b!1162551))

(assert (=> b!1162553 (< (dynLambda!5033 order!6987 (toValue!3090 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47480))))

(assert (=> b!1162553 (< (dynLambda!5035 order!6991 (toChars!2949 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47480))))

(assert (=> d!331883 true))

(declare-fun e!744501 () Bool)

(assert (=> d!331883 e!744501))

(declare-fun res!524328 () Bool)

(assert (=> d!331883 (=> (not res!524328) (not e!744501))))

(declare-fun lt!396397 () Bool)

(assert (=> d!331883 (= res!524328 (= lt!396397 (forall!2985 (list!4208 lt!395749) lambda!47480)))))

(assert (=> d!331883 (= lt!396397 (forall!2984 lt!395749 lambda!47480))))

(assert (=> d!331883 (not (isEmpty!6980 (rules!9500 thiss!10527)))))

(assert (=> d!331883 (= (rulesProduceEachTokenIndividually!723 Lexer!1682 (rules!9500 thiss!10527) lt!395749) lt!396397)))

(declare-fun b!1162550 () Bool)

(assert (=> b!1162550 (= e!744501 (= lt!396397 (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) (list!4208 lt!395749))))))

(assert (= (and d!331883 res!524328) b!1162550))

(assert (=> d!331883 m!1329405))

(assert (=> d!331883 m!1329405))

(declare-fun m!1330791 () Bool)

(assert (=> d!331883 m!1330791))

(declare-fun m!1330793 () Bool)

(assert (=> d!331883 m!1330793))

(assert (=> d!331883 m!1329575))

(assert (=> b!1162550 m!1329405))

(assert (=> b!1162550 m!1329405))

(declare-fun m!1330795 () Bool)

(assert (=> b!1162550 m!1330795))

(assert (=> b!1161811 d!331883))

(assert (=> b!1161811 d!331869))

(declare-fun bs!283732 () Bool)

(declare-fun d!331885 () Bool)

(assert (= bs!283732 (and d!331885 b!1162334)))

(declare-fun lambda!47481 () Int)

(assert (=> bs!283732 (= lambda!47481 lambda!47470)))

(declare-fun bs!283733 () Bool)

(assert (= bs!283733 (and d!331885 b!1162114)))

(assert (=> bs!283733 (= lambda!47481 lambda!47463)))

(declare-fun bs!283734 () Bool)

(assert (= bs!283734 (and d!331885 d!331827)))

(assert (=> bs!283734 (= lambda!47481 lambda!47471)))

(declare-fun bs!283735 () Bool)

(assert (= bs!283735 (and d!331885 d!331653)))

(assert (=> bs!283735 (= lambda!47481 lambda!47450)))

(declare-fun bs!283736 () Bool)

(assert (= bs!283736 (and d!331885 d!331615)))

(assert (=> bs!283736 (= lambda!47481 lambda!47449)))

(declare-fun bs!283737 () Bool)

(assert (= bs!283737 (and d!331885 d!331883)))

(assert (=> bs!283737 (= lambda!47481 lambda!47480)))

(declare-fun bs!283738 () Bool)

(assert (= bs!283738 (and d!331885 b!1161817)))

(assert (=> bs!283738 (= lambda!47481 lambda!47437)))

(declare-fun bs!283739 () Bool)

(assert (= bs!283739 (and d!331885 d!331839)))

(assert (=> bs!283739 (= lambda!47481 lambda!47475)))

(declare-fun bs!283740 () Bool)

(assert (= bs!283740 (and d!331885 d!331609)))

(assert (=> bs!283740 (= lambda!47481 lambda!47440)))

(declare-fun bs!283741 () Bool)

(assert (= bs!283741 (and d!331885 d!331719)))

(assert (=> bs!283741 (= lambda!47481 lambda!47451)))

(declare-fun bs!283742 () Bool)

(assert (= bs!283742 (and d!331885 d!331873)))

(assert (=> bs!283742 (= lambda!47481 lambda!47479)))

(declare-fun bs!283743 () Bool)

(assert (= bs!283743 (and d!331885 d!331749)))

(assert (=> bs!283743 (= lambda!47481 lambda!47464)))

(declare-fun b!1162558 () Bool)

(declare-fun e!744509 () Bool)

(assert (=> b!1162558 (= e!744509 true)))

(declare-fun b!1162557 () Bool)

(declare-fun e!744508 () Bool)

(assert (=> b!1162557 (= e!744508 e!744509)))

(declare-fun b!1162556 () Bool)

(declare-fun e!744507 () Bool)

(assert (=> b!1162556 (= e!744507 e!744508)))

(assert (=> d!331885 e!744507))

(assert (= b!1162557 b!1162558))

(assert (= b!1162556 b!1162557))

(assert (= (and d!331885 ((_ is Cons!11438) (rules!9500 thiss!10527))) b!1162556))

(assert (=> b!1162558 (< (dynLambda!5033 order!6987 (toValue!3090 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47481))))

(assert (=> b!1162558 (< (dynLambda!5035 order!6991 (toChars!2949 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47481))))

(assert (=> d!331885 true))

(declare-fun lt!396398 () Bool)

(assert (=> d!331885 (= lt!396398 (forall!2985 (t!109891 lt!395763) lambda!47481))))

(declare-fun e!744505 () Bool)

(assert (=> d!331885 (= lt!396398 e!744505)))

(declare-fun res!524329 () Bool)

(assert (=> d!331885 (=> res!524329 e!744505)))

(assert (=> d!331885 (= res!524329 (not ((_ is Cons!11437) (t!109891 lt!395763))))))

(assert (=> d!331885 (not (isEmpty!6980 (rules!9500 thiss!10527)))))

(assert (=> d!331885 (= (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) (t!109891 lt!395763)) lt!396398)))

(declare-fun b!1162554 () Bool)

(declare-fun e!744506 () Bool)

(assert (=> b!1162554 (= e!744505 e!744506)))

(declare-fun res!524330 () Bool)

(assert (=> b!1162554 (=> (not res!524330) (not e!744506))))

(assert (=> b!1162554 (= res!524330 (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 (t!109891 lt!395763))))))

(declare-fun b!1162555 () Bool)

(assert (=> b!1162555 (= e!744506 (rulesProduceEachTokenIndividuallyList!552 Lexer!1682 (rules!9500 thiss!10527) (t!109891 (t!109891 lt!395763))))))

(assert (= (and d!331885 (not res!524329)) b!1162554))

(assert (= (and b!1162554 res!524330) b!1162555))

(declare-fun m!1330797 () Bool)

(assert (=> d!331885 m!1330797))

(assert (=> d!331885 m!1329575))

(assert (=> b!1162554 m!1330755))

(declare-fun m!1330799 () Bool)

(assert (=> b!1162555 m!1330799))

(assert (=> b!1161815 d!331885))

(declare-fun d!331887 () Bool)

(declare-fun c!194394 () Bool)

(assert (=> d!331887 (= c!194394 ((_ is Node!3741) (c!194312 (tokens!1594 thiss!10527))))))

(declare-fun e!744514 () Bool)

(assert (=> d!331887 (= (inv!15034 (c!194312 (tokens!1594 thiss!10527))) e!744514)))

(declare-fun b!1162565 () Bool)

(declare-fun inv!15043 (Conc!3741) Bool)

(assert (=> b!1162565 (= e!744514 (inv!15043 (c!194312 (tokens!1594 thiss!10527))))))

(declare-fun b!1162566 () Bool)

(declare-fun e!744515 () Bool)

(assert (=> b!1162566 (= e!744514 e!744515)))

(declare-fun res!524333 () Bool)

(assert (=> b!1162566 (= res!524333 (not ((_ is Leaf!5746) (c!194312 (tokens!1594 thiss!10527)))))))

(assert (=> b!1162566 (=> res!524333 e!744515)))

(declare-fun b!1162567 () Bool)

(declare-fun inv!15044 (Conc!3741) Bool)

(assert (=> b!1162567 (= e!744515 (inv!15044 (c!194312 (tokens!1594 thiss!10527))))))

(assert (= (and d!331887 c!194394) b!1162565))

(assert (= (and d!331887 (not c!194394)) b!1162566))

(assert (= (and b!1162566 (not res!524333)) b!1162567))

(declare-fun m!1330801 () Bool)

(assert (=> b!1162565 m!1330801))

(declare-fun m!1330803 () Bool)

(assert (=> b!1162567 m!1330803))

(assert (=> b!1161814 d!331887))

(declare-fun b!1162578 () Bool)

(declare-fun b_free!27749 () Bool)

(declare-fun b_next!28453 () Bool)

(assert (=> b!1162578 (= b_free!27749 (not b_next!28453))))

(declare-fun tp!333880 () Bool)

(declare-fun b_and!80625 () Bool)

(assert (=> b!1162578 (= tp!333880 b_and!80625)))

(declare-fun b_free!27751 () Bool)

(declare-fun b_next!28455 () Bool)

(assert (=> b!1162578 (= b_free!27751 (not b_next!28455))))

(declare-fun t!109922 () Bool)

(declare-fun tb!65839 () Bool)

(assert (=> (and b!1162578 (= (toChars!2949 (transformation!1989 (h!16839 (rules!9500 thiss!10527)))) (toChars!2949 (transformation!1989 (rule!3410 lt!395765)))) t!109922) tb!65839))

(declare-fun b!1162583 () Bool)

(declare-fun e!744530 () Bool)

(declare-fun tp!333885 () Bool)

(declare-fun inv!15045 (Conc!3740) Bool)

(assert (=> b!1162583 (= e!744530 (and (inv!15045 (c!194311 (dynLambda!5038 (toChars!2949 (transformation!1989 (rule!3410 lt!395765))) (value!64683 lt!395765)))) tp!333885))))

(declare-fun result!78740 () Bool)

(declare-fun inv!15046 (BalanceConc!7502) Bool)

(assert (=> tb!65839 (= result!78740 (and (inv!15046 (dynLambda!5038 (toChars!2949 (transformation!1989 (rule!3410 lt!395765))) (value!64683 lt!395765))) e!744530))))

(assert (= tb!65839 b!1162583))

(declare-fun m!1330805 () Bool)

(assert (=> b!1162583 m!1330805))

(declare-fun m!1330807 () Bool)

(assert (=> tb!65839 m!1330807))

(assert (=> d!331879 t!109922))

(declare-fun b_and!80627 () Bool)

(declare-fun tp!333881 () Bool)

(assert (=> b!1162578 (= tp!333881 (and (=> t!109922 result!78740) b_and!80627))))

(declare-fun e!744527 () Bool)

(assert (=> b!1162578 (= e!744527 (and tp!333880 tp!333881))))

(declare-fun tp!333882 () Bool)

(declare-fun b!1162577 () Bool)

(declare-fun e!744525 () Bool)

(declare-fun inv!15030 (String!13863) Bool)

(declare-fun inv!15047 (TokenValueInjection!3810) Bool)

(assert (=> b!1162577 (= e!744525 (and tp!333882 (inv!15030 (tag!2251 (h!16839 (rules!9500 thiss!10527)))) (inv!15047 (transformation!1989 (h!16839 (rules!9500 thiss!10527)))) e!744527))))

(declare-fun b!1162576 () Bool)

(declare-fun e!744524 () Bool)

(declare-fun tp!333879 () Bool)

(assert (=> b!1162576 (= e!744524 (and e!744525 tp!333879))))

(assert (=> b!1161820 (= tp!333846 e!744524)))

(assert (= b!1162577 b!1162578))

(assert (= b!1162576 b!1162577))

(assert (= (and b!1161820 ((_ is Cons!11438) (rules!9500 thiss!10527))) b!1162576))

(declare-fun m!1330809 () Bool)

(assert (=> b!1162577 m!1330809))

(declare-fun m!1330811 () Bool)

(assert (=> b!1162577 m!1330811))

(declare-fun b!1162592 () Bool)

(declare-fun e!744535 () Bool)

(assert (=> b!1162592 (= e!744535 true)))

(declare-fun b!1162594 () Bool)

(declare-fun e!744536 () Bool)

(assert (=> b!1162594 (= e!744536 true)))

(declare-fun b!1162593 () Bool)

(assert (=> b!1162593 (= e!744535 e!744536)))

(assert (=> b!1161830 e!744535))

(assert (= (and b!1161830 ((_ is Node!3741) (c!194312 (tokens!1594 thiss!10527)))) b!1162592))

(assert (= b!1162593 b!1162594))

(assert (= (and b!1161830 ((_ is Leaf!5746) (c!194312 (tokens!1594 thiss!10527)))) b!1162593))

(declare-fun b!1162597 () Bool)

(declare-fun e!744539 () Bool)

(assert (=> b!1162597 (= e!744539 true)))

(declare-fun b!1162596 () Bool)

(declare-fun e!744538 () Bool)

(assert (=> b!1162596 (= e!744538 e!744539)))

(declare-fun b!1162595 () Bool)

(declare-fun e!744537 () Bool)

(assert (=> b!1162595 (= e!744537 e!744538)))

(assert (=> b!1161829 e!744537))

(assert (= b!1162596 b!1162597))

(assert (= b!1162595 b!1162596))

(assert (= (and b!1161829 ((_ is Cons!11438) (rules!9500 thiss!10527))) b!1162595))

(assert (=> b!1162597 (< (dynLambda!5033 order!6987 (toValue!3090 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47437))))

(assert (=> b!1162597 (< (dynLambda!5035 order!6991 (toChars!2949 (transformation!1989 (h!16839 (rules!9500 thiss!10527))))) (dynLambda!5034 order!6989 lambda!47437))))

(declare-fun tp!333893 () Bool)

(declare-fun b!1162606 () Bool)

(declare-fun tp!333892 () Bool)

(declare-fun e!744545 () Bool)

(assert (=> b!1162606 (= e!744545 (and (inv!15034 (left!9997 (c!194312 (tokens!1594 thiss!10527)))) tp!333893 (inv!15034 (right!10327 (c!194312 (tokens!1594 thiss!10527)))) tp!333892))))

(declare-fun b!1162608 () Bool)

(declare-fun e!744544 () Bool)

(declare-fun tp!333894 () Bool)

(assert (=> b!1162608 (= e!744544 tp!333894)))

(declare-fun b!1162607 () Bool)

(declare-fun inv!15048 (IArray!7487) Bool)

(assert (=> b!1162607 (= e!744545 (and (inv!15048 (xs!6446 (c!194312 (tokens!1594 thiss!10527)))) e!744544))))

(assert (=> b!1161814 (= tp!333845 (and (inv!15034 (c!194312 (tokens!1594 thiss!10527))) e!744545))))

(assert (= (and b!1161814 ((_ is Node!3741) (c!194312 (tokens!1594 thiss!10527)))) b!1162606))

(assert (= b!1162607 b!1162608))

(assert (= (and b!1161814 ((_ is Leaf!5746) (c!194312 (tokens!1594 thiss!10527)))) b!1162607))

(declare-fun m!1330813 () Bool)

(assert (=> b!1162606 m!1330813))

(declare-fun m!1330815 () Bool)

(assert (=> b!1162606 m!1330815))

(declare-fun m!1330817 () Bool)

(assert (=> b!1162607 m!1330817))

(assert (=> b!1161814 m!1329537))

(declare-fun b_lambda!34657 () Bool)

(assert (= b_lambda!34637 (or b!1161817 b_lambda!34657)))

(declare-fun bs!283744 () Bool)

(declare-fun d!331889 () Bool)

(assert (= bs!283744 (and d!331889 b!1161817)))

(assert (=> bs!283744 (= (dynLambda!5036 lambda!47437 (h!16838 lt!395763)) (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 lt!395763)))))

(assert (=> bs!283744 m!1329423))

(assert (=> b!1162132 d!331889))

(declare-fun b_lambda!34659 () Bool)

(assert (= b_lambda!34645 (or b!1161817 b_lambda!34659)))

(declare-fun bs!283745 () Bool)

(declare-fun d!331891 () Bool)

(assert (= bs!283745 (and d!331891 b!1161817)))

(assert (=> bs!283745 (= (dynLambda!5036 lambda!47437 (h!16838 lt!395768)) (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 lt!395768)))))

(assert (=> bs!283745 m!1329515))

(assert (=> b!1162357 d!331891))

(declare-fun b_lambda!34661 () Bool)

(assert (= b_lambda!34639 (or b!1161817 b_lambda!34661)))

(declare-fun bs!283746 () Bool)

(declare-fun d!331893 () Bool)

(assert (= bs!283746 (and d!331893 b!1161817)))

(assert (=> bs!283746 (= (dynLambda!5036 lambda!47437 (h!16838 lt!395747)) (rulesProduceIndividualToken!721 Lexer!1682 (rules!9500 thiss!10527) (h!16838 lt!395747)))))

(assert (=> bs!283746 m!1329429))

(assert (=> b!1162187 d!331893))

(check-sat (not b!1162421) (not b!1162583) (not b!1162419) (not b!1161850) (not b!1162045) (not d!331823) (not b!1162416) (not b!1162373) (not b!1162422) (not b_lambda!34655) (not b!1162551) (not d!331829) (not b!1162420) (not d!331721) (not d!331819) (not b_next!28455) (not b!1162049) (not bm!82121) (not d!331789) (not b!1162156) (not b!1162375) (not d!331841) (not b!1162606) (not b!1162550) (not b!1162148) (not b!1162051) (not b!1162353) (not b!1162362) (not d!331873) (not d!331871) (not d!331791) (not b!1162121) (not b_next!28453) (not d!331715) (not b!1162112) (not b!1162555) (not b!1162377) (not b!1162533) (not b!1162298) (not d!331821) b_and!80627 (not d!331615) (not d!331657) (not b!1162608) (not b!1161958) (not b!1162386) (not b!1162002) (not d!331805) (not b!1162380) (not d!331831) (not b!1162374) (not b_lambda!34657) (not d!331813) (not b!1162538) (not b!1162546) (not b!1162291) (not b!1162115) (not b!1162151) (not b!1162335) (not d!331651) b_and!80625 (not d!331673) (not d!331707) (not d!331835) (not b!1161963) (not b!1162395) (not d!331701) (not b!1162067) (not b_lambda!34659) (not d!331699) (not d!331669) (not b!1162333) (not b!1162556) (not d!331749) (not b!1162007) (not b!1162177) (not d!331879) (not b!1162567) (not d!331807) (not bm!82124) (not b!1162188) (not b!1162005) (not d!331837) (not d!331877) (not b!1162372) (not b!1162376) (not b!1162113) (not d!331713) (not d!331609) (not d!331811) (not tb!65839) (not b!1162371) (not b!1162069) (not b!1162531) (not b!1162389) (not b!1162296) (not b!1162154) (not b!1162297) (not b!1161956) (not b!1162378) (not b!1162356) (not bs!283746) (not b!1162415) (not b!1161851) (not b!1161989) (not d!331671) (not d!331653) (not d!331809) (not b!1162153) (not b!1162352) (not b!1162369) (not b!1161953) (not b!1162064) (not b!1162349) (not d!331763) (not bs!283744) (not b!1162175) (not b!1162554) (not b!1162173) (not b!1162057) (not b!1162114) (not b!1161814) (not b!1162000) (not b!1162576) (not d!331869) (not b!1162332) (not b!1161987) (not d!331747) (not b!1161860) (not b!1162001) (not b!1162547) (not b!1162535) (not b!1162157) (not b!1162294) (not b!1162385) (not d!331743) (not b!1162295) (not b!1162174) (not d!331867) (not b!1162176) (not b!1162336) (not b!1162350) (not d!331827) (not b!1162387) (not d!331885) (not b!1162390) (not b_lambda!34661) (not b!1162017) (not b!1161966) (not b!1162044) (not b!1162046) (not d!331711) (not bs!283745) (not d!331839) (not b!1162066) (not b!1162565) (not d!331825) (not b!1162172) (not d!331661) (not b!1162358) (not b!1162383) (not b!1162070) (not b!1162577) (not b!1162539) (not b!1162548) (not b!1162351) (not b!1162381) (not d!331883) (not b!1162014) (not b!1162425) (not b!1162293) (not bm!82123) (not d!331753) (not b!1162056) (not d!331655) (not b!1162417) (not b!1162594) (not d!331755) (not b!1162116) (not b!1162155) (not b!1162595) (not b!1162065) (not b!1162418) (not b!1162532) (not b!1162592) (not b!1162013) (not d!331659) (not d!331665) (not b!1162370) (not d!331705) (not b!1162549) (not b!1162379) (not b!1162607) (not bm!82120) (not b!1162388) (not b!1162423) (not b!1162123) (not b!1162292) (not b!1162361) (not d!331719) (not d!331761) (not b!1162534) (not b!1162133) (not b!1162536) (not b!1162012) (not b!1162424) (not b!1162068) (not b!1162382) (not b!1161957) (not d!331663) (not b!1162537) (not d!331697) (not b!1161952) (not b!1162334) (not b!1162384))
(check-sat b_and!80625 b_and!80627 (not b_next!28453) (not b_next!28455))
