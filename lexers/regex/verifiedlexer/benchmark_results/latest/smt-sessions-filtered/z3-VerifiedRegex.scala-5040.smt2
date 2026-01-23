; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!255598 () Bool)

(assert start!255598)

(declare-fun b!2627915 () Bool)

(declare-fun b_free!73901 () Bool)

(declare-fun b_next!74605 () Bool)

(assert (=> b!2627915 (= b_free!73901 (not b_next!74605))))

(declare-fun tp!833133 () Bool)

(declare-fun b_and!192459 () Bool)

(assert (=> b!2627915 (= tp!833133 b_and!192459)))

(declare-fun b_free!73903 () Bool)

(declare-fun b_next!74607 () Bool)

(assert (=> b!2627915 (= b_free!73903 (not b_next!74607))))

(declare-fun tp!833136 () Bool)

(declare-fun b_and!192461 () Bool)

(assert (=> b!2627915 (= tp!833136 b_and!192461)))

(declare-fun b!2627909 () Bool)

(declare-fun b_free!73905 () Bool)

(declare-fun b_next!74609 () Bool)

(assert (=> b!2627909 (= b_free!73905 (not b_next!74609))))

(declare-fun tp!833134 () Bool)

(declare-fun b_and!192463 () Bool)

(assert (=> b!2627909 (= tp!833134 b_and!192463)))

(declare-fun b_free!73907 () Bool)

(declare-fun b_next!74611 () Bool)

(assert (=> b!2627909 (= b_free!73907 (not b_next!74611))))

(declare-fun tp!833137 () Bool)

(declare-fun b_and!192465 () Bool)

(assert (=> b!2627909 (= tp!833137 b_and!192465)))

(declare-fun bs!475645 () Bool)

(declare-fun b!2627923 () Bool)

(declare-fun b!2627918 () Bool)

(assert (= bs!475645 (and b!2627923 b!2627918)))

(declare-fun lambda!98414 () Int)

(declare-fun lambda!98413 () Int)

(assert (=> bs!475645 (not (= lambda!98414 lambda!98413))))

(declare-fun b!2627934 () Bool)

(declare-fun e!1657868 () Bool)

(assert (=> b!2627934 (= e!1657868 true)))

(declare-fun b!2627933 () Bool)

(declare-fun e!1657867 () Bool)

(assert (=> b!2627933 (= e!1657867 e!1657868)))

(declare-fun b!2627932 () Bool)

(declare-fun e!1657866 () Bool)

(assert (=> b!2627932 (= e!1657866 e!1657867)))

(assert (=> b!2627923 e!1657866))

(assert (= b!2627933 b!2627934))

(assert (= b!2627932 b!2627933))

(declare-datatypes ((List!30441 0))(
  ( (Nil!30341) (Cons!30341 (h!35761 (_ BitVec 16)) (t!216082 List!30441)) )
))
(declare-datatypes ((C!15648 0))(
  ( (C!15649 (val!9758 Int)) )
))
(declare-datatypes ((TokenValue!4823 0))(
  ( (FloatLiteralValue!9646 (text!34206 List!30441)) (TokenValueExt!4822 (__x!19479 Int)) (Broken!24115 (value!148707 List!30441)) (Object!4922) (End!4823) (Def!4823) (Underscore!4823) (Match!4823) (Else!4823) (Error!4823) (Case!4823) (If!4823) (Extends!4823) (Abstract!4823) (Class!4823) (Val!4823) (DelimiterValue!9646 (del!4883 List!30441)) (KeywordValue!4829 (value!148708 List!30441)) (CommentValue!9646 (value!148709 List!30441)) (WhitespaceValue!9646 (value!148710 List!30441)) (IndentationValue!4823 (value!148711 List!30441)) (String!33998) (Int32!4823) (Broken!24116 (value!148712 List!30441)) (Boolean!4824) (Unit!44388) (OperatorValue!4826 (op!4883 List!30441)) (IdentifierValue!9646 (value!148713 List!30441)) (IdentifierValue!9647 (value!148714 List!30441)) (WhitespaceValue!9647 (value!148715 List!30441)) (True!9646) (False!9646) (Broken!24117 (value!148716 List!30441)) (Broken!24118 (value!148717 List!30441)) (True!9647) (RightBrace!4823) (RightBracket!4823) (Colon!4823) (Null!4823) (Comma!4823) (LeftBracket!4823) (False!9647) (LeftBrace!4823) (ImaginaryLiteralValue!4823 (text!34207 List!30441)) (StringLiteralValue!14469 (value!148718 List!30441)) (EOFValue!4823 (value!148719 List!30441)) (IdentValue!4823 (value!148720 List!30441)) (DelimiterValue!9647 (value!148721 List!30441)) (DedentValue!4823 (value!148722 List!30441)) (NewLineValue!4823 (value!148723 List!30441)) (IntegerValue!14469 (value!148724 (_ BitVec 32)) (text!34208 List!30441)) (IntegerValue!14470 (value!148725 Int) (text!34209 List!30441)) (Times!4823) (Or!4823) (Equal!4823) (Minus!4823) (Broken!24119 (value!148726 List!30441)) (And!4823) (Div!4823) (LessEqual!4823) (Mod!4823) (Concat!12568) (Not!4823) (Plus!4823) (SpaceValue!4823 (value!148727 List!30441)) (IntegerValue!14471 (value!148728 Int) (text!34210 List!30441)) (StringLiteralValue!14470 (text!34211 List!30441)) (FloatLiteralValue!9647 (text!34212 List!30441)) (BytesLiteralValue!4823 (value!148729 List!30441)) (CommentValue!9647 (value!148730 List!30441)) (StringLiteralValue!14471 (value!148731 List!30441)) (ErrorTokenValue!4823 (msg!4884 List!30441)) )
))
(declare-datatypes ((List!30442 0))(
  ( (Nil!30342) (Cons!30342 (h!35762 C!15648) (t!216083 List!30442)) )
))
(declare-datatypes ((IArray!18893 0))(
  ( (IArray!18894 (innerList!9504 List!30442)) )
))
(declare-datatypes ((Conc!9444 0))(
  ( (Node!9444 (left!23392 Conc!9444) (right!23722 Conc!9444) (csize!19118 Int) (cheight!9655 Int)) (Leaf!14485 (xs!12444 IArray!18893) (csize!19119 Int)) (Empty!9444) )
))
(declare-datatypes ((BalanceConc!18502 0))(
  ( (BalanceConc!18503 (c!422754 Conc!9444)) )
))
(declare-datatypes ((TokenValueInjection!9086 0))(
  ( (TokenValueInjection!9087 (toValue!6515 Int) (toChars!6374 Int)) )
))
(declare-datatypes ((Regex!7745 0))(
  ( (ElementMatch!7745 (c!422755 C!15648)) (Concat!12569 (regOne!16002 Regex!7745) (regTwo!16002 Regex!7745)) (EmptyExpr!7745) (Star!7745 (reg!8074 Regex!7745)) (EmptyLang!7745) (Union!7745 (regOne!16003 Regex!7745) (regTwo!16003 Regex!7745)) )
))
(declare-datatypes ((String!33999 0))(
  ( (String!34000 (value!148732 String)) )
))
(declare-datatypes ((Rule!9002 0))(
  ( (Rule!9003 (regex!4601 Regex!7745) (tag!5095 String!33999) (isSeparator!4601 Bool) (transformation!4601 TokenValueInjection!9086)) )
))
(declare-datatypes ((List!30443 0))(
  ( (Nil!30343) (Cons!30343 (h!35763 Rule!9002) (t!216084 List!30443)) )
))
(declare-fun rules!1726 () List!30443)

(get-info :version)

(assert (= (and b!2627923 ((_ is Cons!30343) rules!1726)) b!2627932))

(declare-fun order!16309 () Int)

(declare-fun order!16307 () Int)

(declare-fun dynLambda!12945 (Int Int) Int)

(declare-fun dynLambda!12946 (Int Int) Int)

(assert (=> b!2627934 (< (dynLambda!12945 order!16307 (toValue!6515 (transformation!4601 (h!35763 rules!1726)))) (dynLambda!12946 order!16309 lambda!98414))))

(declare-fun order!16311 () Int)

(declare-fun dynLambda!12947 (Int Int) Int)

(assert (=> b!2627934 (< (dynLambda!12947 order!16311 (toChars!6374 (transformation!4601 (h!35763 rules!1726)))) (dynLambda!12946 order!16309 lambda!98414))))

(assert (=> b!2627923 true))

(declare-fun b!2627904 () Bool)

(declare-fun res!1106122 () Bool)

(declare-fun e!1657856 () Bool)

(assert (=> b!2627904 (=> (not res!1106122) (not e!1657856))))

(declare-datatypes ((LexerInterface!4198 0))(
  ( (LexerInterfaceExt!4195 (__x!19480 Int)) (Lexer!4196) )
))
(declare-fun thiss!14197 () LexerInterface!4198)

(declare-fun rulesInvariant!3698 (LexerInterface!4198 List!30443) Bool)

(assert (=> b!2627904 (= res!1106122 (rulesInvariant!3698 thiss!14197 rules!1726))))

(declare-fun b!2627905 () Bool)

(declare-fun e!1657847 () Bool)

(assert (=> b!2627905 (= e!1657847 e!1657856)))

(declare-fun res!1106123 () Bool)

(assert (=> b!2627905 (=> (not res!1106123) (not e!1657856))))

(declare-fun from!862 () Int)

(declare-fun lt!924267 () Int)

(assert (=> b!2627905 (= res!1106123 (<= from!862 lt!924267))))

(declare-datatypes ((Token!8672 0))(
  ( (Token!8673 (value!148733 TokenValue!4823) (rule!6983 Rule!9002) (size!23484 Int) (originalCharacters!5367 List!30442)) )
))
(declare-datatypes ((List!30444 0))(
  ( (Nil!30344) (Cons!30344 (h!35764 Token!8672) (t!216085 List!30444)) )
))
(declare-datatypes ((IArray!18895 0))(
  ( (IArray!18896 (innerList!9505 List!30444)) )
))
(declare-datatypes ((Conc!9445 0))(
  ( (Node!9445 (left!23393 Conc!9445) (right!23723 Conc!9445) (csize!19120 Int) (cheight!9656 Int)) (Leaf!14486 (xs!12445 IArray!18895) (csize!19121 Int)) (Empty!9445) )
))
(declare-datatypes ((BalanceConc!18504 0))(
  ( (BalanceConc!18505 (c!422756 Conc!9445)) )
))
(declare-fun v!6381 () BalanceConc!18504)

(declare-fun size!23485 (BalanceConc!18504) Int)

(assert (=> b!2627905 (= lt!924267 (size!23485 v!6381))))

(declare-fun b!2627906 () Bool)

(declare-fun e!1657852 () Bool)

(declare-fun e!1657855 () Bool)

(assert (=> b!2627906 (= e!1657852 (not e!1657855))))

(declare-fun res!1106114 () Bool)

(assert (=> b!2627906 (=> res!1106114 e!1657855)))

(declare-fun lt!924271 () Token!8672)

(declare-fun contains!5704 (BalanceConc!18504 Token!8672) Bool)

(assert (=> b!2627906 (= res!1106114 (not (contains!5704 v!6381 lt!924271)))))

(declare-fun apply!7184 (BalanceConc!18504 Int) Token!8672)

(assert (=> b!2627906 (= lt!924271 (apply!7184 v!6381 from!862))))

(declare-fun lt!924273 () List!30444)

(declare-fun lt!924276 () List!30444)

(declare-fun tail!4238 (List!30444) List!30444)

(declare-fun drop!1597 (List!30444 Int) List!30444)

(assert (=> b!2627906 (= (tail!4238 lt!924273) (drop!1597 lt!924276 (+ 1 from!862)))))

(declare-datatypes ((Unit!44389 0))(
  ( (Unit!44390) )
))
(declare-fun lt!924270 () Unit!44389)

(declare-fun lemmaDropTail!786 (List!30444 Int) Unit!44389)

(assert (=> b!2627906 (= lt!924270 (lemmaDropTail!786 lt!924276 from!862))))

(declare-fun head!6000 (List!30444) Token!8672)

(declare-fun apply!7185 (List!30444 Int) Token!8672)

(assert (=> b!2627906 (= (head!6000 lt!924273) (apply!7185 lt!924276 from!862))))

(assert (=> b!2627906 (= lt!924273 (drop!1597 lt!924276 from!862))))

(declare-fun lt!924275 () Unit!44389)

(declare-fun lemmaDropApply!812 (List!30444 Int) Unit!44389)

(assert (=> b!2627906 (= lt!924275 (lemmaDropApply!812 lt!924276 from!862))))

(declare-fun b!2627907 () Bool)

(declare-fun res!1106117 () Bool)

(assert (=> b!2627907 (=> (not res!1106117) (not e!1657856))))

(declare-fun separatorToken!156 () Token!8672)

(declare-fun rulesProduceIndividualToken!1910 (LexerInterface!4198 List!30443 Token!8672) Bool)

(assert (=> b!2627907 (= res!1106117 (rulesProduceIndividualToken!1910 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2627908 () Bool)

(declare-fun e!1657853 () Bool)

(declare-fun tp!833139 () Bool)

(declare-fun inv!41120 (Conc!9445) Bool)

(assert (=> b!2627908 (= e!1657853 (and (inv!41120 (c!422756 v!6381)) tp!833139))))

(declare-fun e!1657854 () Bool)

(assert (=> b!2627909 (= e!1657854 (and tp!833134 tp!833137))))

(declare-fun b!2627911 () Bool)

(declare-fun res!1106121 () Bool)

(assert (=> b!2627911 (=> (not res!1106121) (not e!1657856))))

(declare-fun rulesProduceEachTokenIndividually!1018 (LexerInterface!4198 List!30443 BalanceConc!18504) Bool)

(assert (=> b!2627911 (= res!1106121 (rulesProduceEachTokenIndividually!1018 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2627912 () Bool)

(declare-fun res!1106119 () Bool)

(assert (=> b!2627912 (=> res!1106119 e!1657855)))

(declare-fun contains!5705 (List!30444 Token!8672) Bool)

(assert (=> b!2627912 (= res!1106119 (not (contains!5705 lt!924276 lt!924271)))))

(declare-fun b!2627913 () Bool)

(assert (=> b!2627913 (= e!1657856 e!1657852)))

(declare-fun res!1106118 () Bool)

(assert (=> b!2627913 (=> (not res!1106118) (not e!1657852))))

(assert (=> b!2627913 (= res!1106118 (< from!862 lt!924267))))

(declare-fun lt!924268 () Unit!44389)

(declare-fun lemmaContentSubsetPreservesForall!270 (List!30444 List!30444 Int) Unit!44389)

(declare-fun dropList!904 (BalanceConc!18504 Int) List!30444)

(assert (=> b!2627913 (= lt!924268 (lemmaContentSubsetPreservesForall!270 lt!924276 (dropList!904 v!6381 from!862) lambda!98413))))

(declare-fun list!11399 (BalanceConc!18504) List!30444)

(assert (=> b!2627913 (= lt!924276 (list!11399 v!6381))))

(declare-fun b!2627914 () Bool)

(declare-fun e!1657851 () Bool)

(assert (=> b!2627914 (= e!1657851 true)))

(declare-fun lt!924277 () BalanceConc!18504)

(declare-fun singletonSeq!2027 (Token!8672) BalanceConc!18504)

(assert (=> b!2627914 (= lt!924277 (singletonSeq!2027 lt!924271))))

(declare-fun e!1657858 () Bool)

(assert (=> b!2627915 (= e!1657858 (and tp!833133 tp!833136))))

(declare-fun b!2627916 () Bool)

(declare-fun res!1106120 () Bool)

(assert (=> b!2627916 (=> (not res!1106120) (not e!1657856))))

(assert (=> b!2627916 (= res!1106120 (isSeparator!4601 (rule!6983 separatorToken!156)))))

(declare-fun e!1657849 () Bool)

(declare-fun tp!833140 () Bool)

(declare-fun b!2627917 () Bool)

(declare-fun e!1657845 () Bool)

(declare-fun inv!21 (TokenValue!4823) Bool)

(assert (=> b!2627917 (= e!1657849 (and (inv!21 (value!148733 separatorToken!156)) e!1657845 tp!833140))))

(declare-fun res!1106112 () Bool)

(assert (=> start!255598 (=> (not res!1106112) (not e!1657847))))

(assert (=> start!255598 (= res!1106112 (and ((_ is Lexer!4196) thiss!14197) (>= from!862 0)))))

(assert (=> start!255598 e!1657847))

(assert (=> start!255598 true))

(declare-fun e!1657850 () Bool)

(assert (=> start!255598 e!1657850))

(declare-fun inv!41121 (Token!8672) Bool)

(assert (=> start!255598 (and (inv!41121 separatorToken!156) e!1657849)))

(declare-fun inv!41122 (BalanceConc!18504) Bool)

(assert (=> start!255598 (and (inv!41122 v!6381) e!1657853)))

(declare-fun b!2627910 () Bool)

(declare-fun tp!833132 () Bool)

(declare-fun inv!41115 (String!33999) Bool)

(declare-fun inv!41123 (TokenValueInjection!9086) Bool)

(assert (=> b!2627910 (= e!1657845 (and tp!833132 (inv!41115 (tag!5095 (rule!6983 separatorToken!156))) (inv!41123 (transformation!4601 (rule!6983 separatorToken!156))) e!1657858))))

(declare-fun res!1106113 () Bool)

(assert (=> b!2627918 (=> (not res!1106113) (not e!1657856))))

(declare-fun forall!6333 (BalanceConc!18504 Int) Bool)

(assert (=> b!2627918 (= res!1106113 (forall!6333 v!6381 lambda!98413))))

(declare-fun b!2627919 () Bool)

(declare-fun res!1106116 () Bool)

(assert (=> b!2627919 (=> (not res!1106116) (not e!1657856))))

(declare-fun isEmpty!17334 (List!30443) Bool)

(assert (=> b!2627919 (= res!1106116 (not (isEmpty!17334 rules!1726)))))

(declare-fun e!1657857 () Bool)

(declare-fun tp!833135 () Bool)

(declare-fun b!2627920 () Bool)

(assert (=> b!2627920 (= e!1657857 (and tp!833135 (inv!41115 (tag!5095 (h!35763 rules!1726))) (inv!41123 (transformation!4601 (h!35763 rules!1726))) e!1657854))))

(declare-fun b!2627921 () Bool)

(declare-fun tp!833138 () Bool)

(assert (=> b!2627921 (= e!1657850 (and e!1657857 tp!833138))))

(declare-fun b!2627922 () Bool)

(declare-fun res!1106111 () Bool)

(assert (=> b!2627922 (=> (not res!1106111) (not e!1657856))))

(declare-fun sepAndNonSepRulesDisjointChars!1174 (List!30443 List!30443) Bool)

(assert (=> b!2627922 (= res!1106111 (sepAndNonSepRulesDisjointChars!1174 rules!1726 rules!1726))))

(assert (=> b!2627923 (= e!1657855 e!1657851)))

(declare-fun res!1106115 () Bool)

(assert (=> b!2627923 (=> res!1106115 e!1657851)))

(declare-datatypes ((tuple2!29896 0))(
  ( (tuple2!29897 (_1!17490 Token!8672) (_2!17490 BalanceConc!18502)) )
))
(declare-datatypes ((Option!5992 0))(
  ( (None!5991) (Some!5991 (v!32378 tuple2!29896)) )
))
(declare-fun lt!924274 () Option!5992)

(declare-fun lt!924272 () Bool)

(assert (=> b!2627923 (= res!1106115 (or (and (not lt!924272) (= (_1!17490 (v!32378 lt!924274)) lt!924271)) (and (not lt!924272) (not (= (_1!17490 (v!32378 lt!924274)) lt!924271))) (not ((_ is None!5991) lt!924274))))))

(assert (=> b!2627923 (= lt!924272 (not ((_ is Some!5991) lt!924274)))))

(declare-fun maxPrefixZipperSequence!928 (LexerInterface!4198 List!30443 BalanceConc!18502) Option!5992)

(declare-fun ++!7387 (BalanceConc!18502 BalanceConc!18502) BalanceConc!18502)

(declare-fun charsOf!2892 (Token!8672) BalanceConc!18502)

(declare-fun printWithSeparatorTokenWhenNeededRec!476 (LexerInterface!4198 List!30443 BalanceConc!18504 Token!8672 Int) BalanceConc!18502)

(assert (=> b!2627923 (= lt!924274 (maxPrefixZipperSequence!928 thiss!14197 rules!1726 (++!7387 (charsOf!2892 lt!924271) (printWithSeparatorTokenWhenNeededRec!476 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-fun lt!924269 () Unit!44389)

(declare-fun forallContained!957 (List!30444 Int Token!8672) Unit!44389)

(assert (=> b!2627923 (= lt!924269 (forallContained!957 lt!924276 lambda!98414 lt!924271))))

(assert (= (and start!255598 res!1106112) b!2627905))

(assert (= (and b!2627905 res!1106123) b!2627919))

(assert (= (and b!2627919 res!1106116) b!2627904))

(assert (= (and b!2627904 res!1106122) b!2627911))

(assert (= (and b!2627911 res!1106121) b!2627907))

(assert (= (and b!2627907 res!1106117) b!2627916))

(assert (= (and b!2627916 res!1106120) b!2627918))

(assert (= (and b!2627918 res!1106113) b!2627922))

(assert (= (and b!2627922 res!1106111) b!2627913))

(assert (= (and b!2627913 res!1106118) b!2627906))

(assert (= (and b!2627906 (not res!1106114)) b!2627912))

(assert (= (and b!2627912 (not res!1106119)) b!2627923))

(assert (= (and b!2627923 (not res!1106115)) b!2627914))

(assert (= b!2627920 b!2627909))

(assert (= b!2627921 b!2627920))

(assert (= (and start!255598 ((_ is Cons!30343) rules!1726)) b!2627921))

(assert (= b!2627910 b!2627915))

(assert (= b!2627917 b!2627910))

(assert (= start!255598 b!2627917))

(assert (= start!255598 b!2627908))

(declare-fun m!2970993 () Bool)

(assert (=> b!2627904 m!2970993))

(declare-fun m!2970995 () Bool)

(assert (=> b!2627923 m!2970995))

(declare-fun m!2970997 () Bool)

(assert (=> b!2627923 m!2970997))

(assert (=> b!2627923 m!2970995))

(assert (=> b!2627923 m!2970997))

(declare-fun m!2970999 () Bool)

(assert (=> b!2627923 m!2970999))

(assert (=> b!2627923 m!2970999))

(declare-fun m!2971001 () Bool)

(assert (=> b!2627923 m!2971001))

(declare-fun m!2971003 () Bool)

(assert (=> b!2627923 m!2971003))

(declare-fun m!2971005 () Bool)

(assert (=> b!2627906 m!2971005))

(declare-fun m!2971007 () Bool)

(assert (=> b!2627906 m!2971007))

(declare-fun m!2971009 () Bool)

(assert (=> b!2627906 m!2971009))

(declare-fun m!2971011 () Bool)

(assert (=> b!2627906 m!2971011))

(declare-fun m!2971013 () Bool)

(assert (=> b!2627906 m!2971013))

(declare-fun m!2971015 () Bool)

(assert (=> b!2627906 m!2971015))

(declare-fun m!2971017 () Bool)

(assert (=> b!2627906 m!2971017))

(declare-fun m!2971019 () Bool)

(assert (=> b!2627906 m!2971019))

(declare-fun m!2971021 () Bool)

(assert (=> b!2627906 m!2971021))

(declare-fun m!2971023 () Bool)

(assert (=> b!2627914 m!2971023))

(declare-fun m!2971025 () Bool)

(assert (=> b!2627907 m!2971025))

(declare-fun m!2971027 () Bool)

(assert (=> b!2627913 m!2971027))

(assert (=> b!2627913 m!2971027))

(declare-fun m!2971029 () Bool)

(assert (=> b!2627913 m!2971029))

(declare-fun m!2971031 () Bool)

(assert (=> b!2627913 m!2971031))

(declare-fun m!2971033 () Bool)

(assert (=> b!2627905 m!2971033))

(declare-fun m!2971035 () Bool)

(assert (=> b!2627911 m!2971035))

(declare-fun m!2971037 () Bool)

(assert (=> b!2627919 m!2971037))

(declare-fun m!2971039 () Bool)

(assert (=> b!2627910 m!2971039))

(declare-fun m!2971041 () Bool)

(assert (=> b!2627910 m!2971041))

(declare-fun m!2971043 () Bool)

(assert (=> b!2627922 m!2971043))

(declare-fun m!2971045 () Bool)

(assert (=> b!2627912 m!2971045))

(declare-fun m!2971047 () Bool)

(assert (=> b!2627917 m!2971047))

(declare-fun m!2971049 () Bool)

(assert (=> b!2627918 m!2971049))

(declare-fun m!2971051 () Bool)

(assert (=> b!2627920 m!2971051))

(declare-fun m!2971053 () Bool)

(assert (=> b!2627920 m!2971053))

(declare-fun m!2971055 () Bool)

(assert (=> start!255598 m!2971055))

(declare-fun m!2971057 () Bool)

(assert (=> start!255598 m!2971057))

(declare-fun m!2971059 () Bool)

(assert (=> b!2627908 m!2971059))

(check-sat (not b!2627932) (not b!2627920) (not b!2627922) (not b!2627914) b_and!192461 (not b!2627905) (not b_next!74607) b_and!192465 (not b_next!74609) (not b!2627908) (not b!2627907) (not b!2627919) b_and!192459 (not b!2627911) b_and!192463 (not b_next!74611) (not b!2627912) (not b!2627913) (not b_next!74605) (not b!2627921) (not b!2627918) (not b!2627917) (not b!2627923) (not b!2627904) (not b!2627910) (not start!255598) (not b!2627906))
(check-sat b_and!192459 b_and!192463 b_and!192461 (not b_next!74611) (not b_next!74607) (not b_next!74605) b_and!192465 (not b_next!74609))
