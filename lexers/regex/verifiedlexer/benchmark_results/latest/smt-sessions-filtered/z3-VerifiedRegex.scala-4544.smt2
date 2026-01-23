; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!240594 () Bool)

(assert start!240594)

(declare-fun b!2467139 () Bool)

(declare-fun b_free!71093 () Bool)

(declare-fun b_next!71797 () Bool)

(assert (=> b!2467139 (= b_free!71093 (not b_next!71797))))

(declare-fun tp!787154 () Bool)

(declare-fun b_and!186629 () Bool)

(assert (=> b!2467139 (= tp!787154 b_and!186629)))

(declare-fun b_free!71095 () Bool)

(declare-fun b_next!71799 () Bool)

(assert (=> b!2467139 (= b_free!71095 (not b_next!71799))))

(declare-fun tp!787156 () Bool)

(declare-fun b_and!186631 () Bool)

(assert (=> b!2467139 (= tp!787156 b_and!186631)))

(declare-fun b!2467161 () Bool)

(declare-fun b_free!71097 () Bool)

(declare-fun b_next!71801 () Bool)

(assert (=> b!2467161 (= b_free!71097 (not b_next!71801))))

(declare-fun tp!787158 () Bool)

(declare-fun b_and!186633 () Bool)

(assert (=> b!2467161 (= tp!787158 b_and!186633)))

(declare-fun b_free!71099 () Bool)

(declare-fun b_next!71803 () Bool)

(assert (=> b!2467161 (= b_free!71099 (not b_next!71803))))

(declare-fun tp!787157 () Bool)

(declare-fun b_and!186635 () Bool)

(assert (=> b!2467161 (= tp!787157 b_and!186635)))

(declare-fun b!2467150 () Bool)

(declare-fun b_free!71101 () Bool)

(declare-fun b_next!71805 () Bool)

(assert (=> b!2467150 (= b_free!71101 (not b_next!71805))))

(declare-fun tp!787155 () Bool)

(declare-fun b_and!186637 () Bool)

(assert (=> b!2467150 (= tp!787155 b_and!186637)))

(declare-fun b_free!71103 () Bool)

(declare-fun b_next!71807 () Bool)

(assert (=> b!2467150 (= b_free!71103 (not b_next!71807))))

(declare-fun tp!787163 () Bool)

(declare-fun b_and!186639 () Bool)

(assert (=> b!2467150 (= tp!787163 b_and!186639)))

(declare-fun b!2467151 () Bool)

(declare-fun b_free!71105 () Bool)

(declare-fun b_next!71809 () Bool)

(assert (=> b!2467151 (= b_free!71105 (not b_next!71809))))

(declare-fun tp!787151 () Bool)

(declare-fun b_and!186641 () Bool)

(assert (=> b!2467151 (= tp!787151 b_and!186641)))

(declare-fun b_free!71107 () Bool)

(declare-fun b_next!71811 () Bool)

(assert (=> b!2467151 (= b_free!71107 (not b_next!71811))))

(declare-fun tp!787159 () Bool)

(declare-fun b_and!186643 () Bool)

(assert (=> b!2467151 (= tp!787159 b_and!186643)))

(declare-fun b!2467133 () Bool)

(declare-fun e!1564813 () Bool)

(declare-datatypes ((List!28847 0))(
  ( (Nil!28747) (Cons!28747 (h!34148 (_ BitVec 16)) (t!209510 List!28847)) )
))
(declare-datatypes ((TokenValue!4661 0))(
  ( (FloatLiteralValue!9322 (text!33072 List!28847)) (TokenValueExt!4660 (__x!18577 Int)) (Broken!23305 (value!142917 List!28847)) (Object!4760) (End!4661) (Def!4661) (Underscore!4661) (Match!4661) (Else!4661) (Error!4661) (Case!4661) (If!4661) (Extends!4661) (Abstract!4661) (Class!4661) (Val!4661) (DelimiterValue!9322 (del!4721 List!28847)) (KeywordValue!4667 (value!142918 List!28847)) (CommentValue!9322 (value!142919 List!28847)) (WhitespaceValue!9322 (value!142920 List!28847)) (IndentationValue!4661 (value!142921 List!28847)) (String!31600) (Int32!4661) (Broken!23306 (value!142922 List!28847)) (Boolean!4662) (Unit!42081) (OperatorValue!4664 (op!4721 List!28847)) (IdentifierValue!9322 (value!142923 List!28847)) (IdentifierValue!9323 (value!142924 List!28847)) (WhitespaceValue!9323 (value!142925 List!28847)) (True!9322) (False!9322) (Broken!23307 (value!142926 List!28847)) (Broken!23308 (value!142927 List!28847)) (True!9323) (RightBrace!4661) (RightBracket!4661) (Colon!4661) (Null!4661) (Comma!4661) (LeftBracket!4661) (False!9323) (LeftBrace!4661) (ImaginaryLiteralValue!4661 (text!33073 List!28847)) (StringLiteralValue!13983 (value!142928 List!28847)) (EOFValue!4661 (value!142929 List!28847)) (IdentValue!4661 (value!142930 List!28847)) (DelimiterValue!9323 (value!142931 List!28847)) (DedentValue!4661 (value!142932 List!28847)) (NewLineValue!4661 (value!142933 List!28847)) (IntegerValue!13983 (value!142934 (_ BitVec 32)) (text!33074 List!28847)) (IntegerValue!13984 (value!142935 Int) (text!33075 List!28847)) (Times!4661) (Or!4661) (Equal!4661) (Minus!4661) (Broken!23309 (value!142936 List!28847)) (And!4661) (Div!4661) (LessEqual!4661) (Mod!4661) (Concat!11924) (Not!4661) (Plus!4661) (SpaceValue!4661 (value!142937 List!28847)) (IntegerValue!13985 (value!142938 Int) (text!33076 List!28847)) (StringLiteralValue!13984 (text!33077 List!28847)) (FloatLiteralValue!9323 (text!33078 List!28847)) (BytesLiteralValue!4661 (value!142939 List!28847)) (CommentValue!9323 (value!142940 List!28847)) (StringLiteralValue!13985 (value!142941 List!28847)) (ErrorTokenValue!4661 (msg!4722 List!28847)) )
))
(declare-datatypes ((C!14684 0))(
  ( (C!14685 (val!8602 Int)) )
))
(declare-datatypes ((List!28848 0))(
  ( (Nil!28748) (Cons!28748 (h!34149 C!14684) (t!209511 List!28848)) )
))
(declare-datatypes ((IArray!18379 0))(
  ( (IArray!18380 (innerList!9247 List!28848)) )
))
(declare-datatypes ((Conc!9187 0))(
  ( (Node!9187 (left!22067 Conc!9187) (right!22397 Conc!9187) (csize!18604 Int) (cheight!9398 Int)) (Leaf!13732 (xs!12167 IArray!18379) (csize!18605 Int)) (Empty!9187) )
))
(declare-datatypes ((BalanceConc!17988 0))(
  ( (BalanceConc!17989 (c!393322 Conc!9187)) )
))
(declare-datatypes ((Regex!7263 0))(
  ( (ElementMatch!7263 (c!393323 C!14684)) (Concat!11925 (regOne!15038 Regex!7263) (regTwo!15038 Regex!7263)) (EmptyExpr!7263) (Star!7263 (reg!7592 Regex!7263)) (EmptyLang!7263) (Union!7263 (regOne!15039 Regex!7263) (regTwo!15039 Regex!7263)) )
))
(declare-datatypes ((String!31601 0))(
  ( (String!31602 (value!142942 String)) )
))
(declare-datatypes ((TokenValueInjection!8822 0))(
  ( (TokenValueInjection!8823 (toValue!6335 Int) (toChars!6194 Int)) )
))
(declare-datatypes ((Rule!8750 0))(
  ( (Rule!8751 (regex!4475 Regex!7263) (tag!4965 String!31601) (isSeparator!4475 Bool) (transformation!4475 TokenValueInjection!8822)) )
))
(declare-datatypes ((Token!8420 0))(
  ( (Token!8421 (value!142943 TokenValue!4661) (rule!6833 Rule!8750) (size!22371 Int) (originalCharacters!5241 List!28848)) )
))
(declare-fun t1!67 () Token!8420)

(declare-fun e!1564807 () Bool)

(declare-fun tp!787165 () Bool)

(declare-fun inv!38833 (String!31601) Bool)

(declare-fun inv!38836 (TokenValueInjection!8822) Bool)

(assert (=> b!2467133 (= e!1564807 (and tp!787165 (inv!38833 (tag!4965 (rule!6833 t1!67))) (inv!38836 (transformation!4475 (rule!6833 t1!67))) e!1564813))))

(declare-datatypes ((LexerInterface!4072 0))(
  ( (LexerInterfaceExt!4069 (__x!18578 Int)) (Lexer!4070) )
))
(declare-fun thiss!27932 () LexerInterface!4072)

(declare-fun e!1564798 () Bool)

(declare-datatypes ((List!28849 0))(
  ( (Nil!28749) (Cons!28749 (h!34150 Rule!8750) (t!209512 List!28849)) )
))
(declare-fun rules!4472 () List!28849)

(declare-fun t2!67 () Token!8420)

(declare-fun b!2467134 () Bool)

(declare-fun separableTokensPredicate!849 (LexerInterface!4072 Token!8420 Token!8420 List!28849) Bool)

(assert (=> b!2467134 (= e!1564798 (separableTokensPredicate!849 thiss!27932 t1!67 t2!67 rules!4472))))

(declare-fun b!2467135 () Bool)

(declare-fun res!1044952 () Bool)

(declare-fun e!1564814 () Bool)

(assert (=> b!2467135 (=> (not res!1044952) (not e!1564814))))

(declare-datatypes ((List!28850 0))(
  ( (Nil!28750) (Cons!28750 (h!34151 Token!8420) (t!209513 List!28850)) )
))
(declare-fun lt!882426 () List!28850)

(declare-fun tokensListTwoByTwoPredicateSeparableList!611 (LexerInterface!4072 List!28850 List!28849) Bool)

(assert (=> b!2467135 (= res!1044952 (tokensListTwoByTwoPredicateSeparableList!611 thiss!27932 lt!882426 rules!4472))))

(declare-fun b!2467136 () Bool)

(declare-fun res!1044956 () Bool)

(declare-fun e!1564803 () Bool)

(assert (=> b!2467136 (=> (not res!1044956) (not e!1564803))))

(declare-fun l!6611 () List!28850)

(declare-fun rulesProduceEachTokenIndividuallyList!1388 (LexerInterface!4072 List!28849 List!28850) Bool)

(assert (=> b!2467136 (= res!1044956 (rulesProduceEachTokenIndividuallyList!1388 thiss!27932 rules!4472 l!6611))))

(declare-fun b!2467137 () Bool)

(declare-fun res!1044958 () Bool)

(assert (=> b!2467137 (=> (not res!1044958) (not e!1564803))))

(declare-fun i!1803 () Int)

(assert (=> b!2467137 (= res!1044958 (not (= i!1803 0)))))

(declare-fun b!2467138 () Bool)

(declare-fun res!1044957 () Bool)

(declare-fun e!1564795 () Bool)

(assert (=> b!2467138 (=> (not res!1044957) (not e!1564795))))

(declare-fun apply!6763 (List!28850 Int) Token!8420)

(assert (=> b!2467138 (= res!1044957 (= (apply!6763 lt!882426 (- i!1803 1)) t1!67))))

(declare-fun b!2467140 () Bool)

(declare-fun res!1044955 () Bool)

(assert (=> b!2467140 (=> (not res!1044955) (not e!1564795))))

(declare-fun lt!882424 () Int)

(assert (=> b!2467140 (= res!1044955 (= (apply!6763 lt!882426 lt!882424) t2!67))))

(declare-fun b!2467141 () Bool)

(assert (=> b!2467141 (= e!1564795 (not true))))

(declare-fun lt!882425 () Bool)

(declare-fun contains!4907 (List!28850 Token!8420) Bool)

(assert (=> b!2467141 (= lt!882425 (contains!4907 l!6611 t1!67))))

(assert (=> b!2467141 e!1564798))

(declare-fun res!1044961 () Bool)

(assert (=> b!2467141 (=> (not res!1044961) (not e!1564798))))

(declare-fun rulesProduceIndividualToken!1804 (LexerInterface!4072 List!28849 Token!8420) Bool)

(assert (=> b!2467141 (= res!1044961 (rulesProduceIndividualToken!1804 thiss!27932 rules!4472 t2!67))))

(declare-datatypes ((Unit!42082 0))(
  ( (Unit!42083) )
))
(declare-fun lt!882428 () Unit!42082)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!665 (LexerInterface!4072 List!28849 List!28850 Token!8420) Unit!42082)

(assert (=> b!2467141 (= lt!882428 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!665 thiss!27932 rules!4472 lt!882426 t2!67))))

(assert (=> b!2467141 (rulesProduceIndividualToken!1804 thiss!27932 rules!4472 t1!67)))

(declare-fun lt!882427 () Unit!42082)

(assert (=> b!2467141 (= lt!882427 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!665 thiss!27932 rules!4472 lt!882426 t1!67))))

(declare-fun lt!882423 () Unit!42082)

(declare-fun tokensListTwoByTwoPredicateInstantiateSeparableTokens!2 (LexerInterface!4072 List!28850 List!28849 Token!8420 Token!8420 Int) Unit!42082)

(assert (=> b!2467141 (= lt!882423 (tokensListTwoByTwoPredicateInstantiateSeparableTokens!2 thiss!27932 lt!882426 rules!4472 t1!67 t2!67 (- i!1803 1)))))

(declare-fun b!2467142 () Bool)

(declare-fun res!1044951 () Bool)

(assert (=> b!2467142 (=> (not res!1044951) (not e!1564803))))

(assert (=> b!2467142 (= res!1044951 (= (apply!6763 l!6611 (+ 1 i!1803)) t2!67))))

(declare-fun b!2467143 () Bool)

(declare-fun e!1564796 () Bool)

(declare-fun e!1564797 () Bool)

(declare-fun tp!787160 () Bool)

(declare-fun inv!21 (TokenValue!4661) Bool)

(assert (=> b!2467143 (= e!1564796 (and (inv!21 (value!142943 t2!67)) e!1564797 tp!787160))))

(declare-fun tp!787152 () Bool)

(declare-fun b!2467144 () Bool)

(declare-fun e!1564811 () Bool)

(declare-fun e!1564799 () Bool)

(assert (=> b!2467144 (= e!1564811 (and (inv!21 (value!142943 (h!34151 l!6611))) e!1564799 tp!787152))))

(declare-fun b!2467145 () Bool)

(declare-fun res!1044963 () Bool)

(assert (=> b!2467145 (=> (not res!1044963) (not e!1564803))))

(assert (=> b!2467145 (= res!1044963 (tokensListTwoByTwoPredicateSeparableList!611 thiss!27932 l!6611 rules!4472))))

(declare-fun tp!787153 () Bool)

(declare-fun b!2467146 () Bool)

(declare-fun e!1564802 () Bool)

(assert (=> b!2467146 (= e!1564799 (and tp!787153 (inv!38833 (tag!4965 (rule!6833 (h!34151 l!6611)))) (inv!38836 (transformation!4475 (rule!6833 (h!34151 l!6611)))) e!1564802))))

(declare-fun e!1564815 () Bool)

(declare-fun tp!787161 () Bool)

(declare-fun b!2467147 () Bool)

(declare-fun e!1564801 () Bool)

(assert (=> b!2467147 (= e!1564801 (and tp!787161 (inv!38833 (tag!4965 (h!34150 rules!4472))) (inv!38836 (transformation!4475 (h!34150 rules!4472))) e!1564815))))

(declare-fun b!2467148 () Bool)

(declare-fun res!1044959 () Bool)

(assert (=> b!2467148 (=> (not res!1044959) (not e!1564803))))

(declare-fun isEmpty!16705 (List!28849) Bool)

(assert (=> b!2467148 (= res!1044959 (not (isEmpty!16705 rules!4472)))))

(declare-fun e!1564806 () Bool)

(declare-fun tp!787149 () Bool)

(declare-fun b!2467149 () Bool)

(assert (=> b!2467149 (= e!1564806 (and (inv!21 (value!142943 t1!67)) e!1564807 tp!787149))))

(assert (=> b!2467150 (= e!1564815 (and tp!787155 tp!787163))))

(declare-fun e!1564804 () Bool)

(assert (=> b!2467151 (= e!1564804 (and tp!787151 tp!787159))))

(declare-fun b!2467152 () Bool)

(declare-fun tp!787164 () Bool)

(assert (=> b!2467152 (= e!1564797 (and tp!787164 (inv!38833 (tag!4965 (rule!6833 t2!67))) (inv!38836 (transformation!4475 (rule!6833 t2!67))) e!1564804))))

(declare-fun b!2467153 () Bool)

(declare-fun res!1044953 () Bool)

(assert (=> b!2467153 (=> (not res!1044953) (not e!1564803))))

(declare-fun size!22372 (List!28850) Int)

(assert (=> b!2467153 (= res!1044953 (< (+ 1 i!1803) (size!22372 l!6611)))))

(declare-fun b!2467154 () Bool)

(declare-fun e!1564816 () Bool)

(declare-fun tp!787150 () Bool)

(assert (=> b!2467154 (= e!1564816 (and e!1564801 tp!787150))))

(declare-fun b!2467155 () Bool)

(declare-fun res!1044950 () Bool)

(assert (=> b!2467155 (=> (not res!1044950) (not e!1564803))))

(assert (=> b!2467155 (= res!1044950 (>= i!1803 0))))

(declare-fun b!2467156 () Bool)

(declare-fun res!1044948 () Bool)

(assert (=> b!2467156 (=> (not res!1044948) (not e!1564803))))

(assert (=> b!2467156 (= res!1044948 (= (apply!6763 l!6611 i!1803) t1!67))))

(declare-fun b!2467157 () Bool)

(declare-fun e!1564800 () Bool)

(declare-fun tp!787162 () Bool)

(declare-fun inv!38837 (Token!8420) Bool)

(assert (=> b!2467157 (= e!1564800 (and (inv!38837 (h!34151 l!6611)) e!1564811 tp!787162))))

(declare-fun b!2467158 () Bool)

(assert (=> b!2467158 (= e!1564814 e!1564795)))

(declare-fun res!1044947 () Bool)

(assert (=> b!2467158 (=> (not res!1044947) (not e!1564795))))

(assert (=> b!2467158 (= res!1044947 (< lt!882424 (size!22372 lt!882426)))))

(assert (=> b!2467158 (= lt!882424 (+ 1 (- i!1803 1)))))

(assert (=> b!2467139 (= e!1564813 (and tp!787154 tp!787156))))

(declare-fun res!1044962 () Bool)

(assert (=> start!240594 (=> (not res!1044962) (not e!1564803))))

(get-info :version)

(assert (=> start!240594 (= res!1044962 ((_ is Lexer!4070) thiss!27932))))

(assert (=> start!240594 e!1564803))

(assert (=> start!240594 true))

(assert (=> start!240594 e!1564816))

(assert (=> start!240594 (and (inv!38837 t2!67) e!1564796)))

(assert (=> start!240594 e!1564800))

(assert (=> start!240594 (and (inv!38837 t1!67) e!1564806)))

(declare-fun b!2467159 () Bool)

(declare-fun res!1044949 () Bool)

(assert (=> b!2467159 (=> (not res!1044949) (not e!1564814))))

(assert (=> b!2467159 (= res!1044949 (>= (- i!1803 1) 0))))

(declare-fun b!2467160 () Bool)

(declare-fun res!1044960 () Bool)

(assert (=> b!2467160 (=> (not res!1044960) (not e!1564803))))

(declare-fun rulesInvariant!3572 (LexerInterface!4072 List!28849) Bool)

(assert (=> b!2467160 (= res!1044960 (rulesInvariant!3572 thiss!27932 rules!4472))))

(assert (=> b!2467161 (= e!1564802 (and tp!787158 tp!787157))))

(declare-fun b!2467162 () Bool)

(assert (=> b!2467162 (= e!1564803 e!1564814)))

(declare-fun res!1044954 () Bool)

(assert (=> b!2467162 (=> (not res!1044954) (not e!1564814))))

(assert (=> b!2467162 (= res!1044954 (rulesProduceEachTokenIndividuallyList!1388 thiss!27932 rules!4472 lt!882426))))

(declare-fun tail!3908 (List!28850) List!28850)

(assert (=> b!2467162 (= lt!882426 (tail!3908 l!6611))))

(assert (= (and start!240594 res!1044962) b!2467148))

(assert (= (and b!2467148 res!1044959) b!2467160))

(assert (= (and b!2467160 res!1044960) b!2467136))

(assert (= (and b!2467136 res!1044956) b!2467145))

(assert (= (and b!2467145 res!1044963) b!2467155))

(assert (= (and b!2467155 res!1044950) b!2467153))

(assert (= (and b!2467153 res!1044953) b!2467156))

(assert (= (and b!2467156 res!1044948) b!2467142))

(assert (= (and b!2467142 res!1044951) b!2467137))

(assert (= (and b!2467137 res!1044958) b!2467162))

(assert (= (and b!2467162 res!1044954) b!2467135))

(assert (= (and b!2467135 res!1044952) b!2467159))

(assert (= (and b!2467159 res!1044949) b!2467158))

(assert (= (and b!2467158 res!1044947) b!2467138))

(assert (= (and b!2467138 res!1044957) b!2467140))

(assert (= (and b!2467140 res!1044955) b!2467141))

(assert (= (and b!2467141 res!1044961) b!2467134))

(assert (= b!2467147 b!2467150))

(assert (= b!2467154 b!2467147))

(assert (= (and start!240594 ((_ is Cons!28749) rules!4472)) b!2467154))

(assert (= b!2467152 b!2467151))

(assert (= b!2467143 b!2467152))

(assert (= start!240594 b!2467143))

(assert (= b!2467146 b!2467161))

(assert (= b!2467144 b!2467146))

(assert (= b!2467157 b!2467144))

(assert (= (and start!240594 ((_ is Cons!28750) l!6611)) b!2467157))

(assert (= b!2467133 b!2467139))

(assert (= b!2467149 b!2467133))

(assert (= start!240594 b!2467149))

(declare-fun m!2836367 () Bool)

(assert (=> b!2467162 m!2836367))

(declare-fun m!2836369 () Bool)

(assert (=> b!2467162 m!2836369))

(declare-fun m!2836371 () Bool)

(assert (=> b!2467138 m!2836371))

(declare-fun m!2836373 () Bool)

(assert (=> b!2467134 m!2836373))

(declare-fun m!2836375 () Bool)

(assert (=> b!2467149 m!2836375))

(declare-fun m!2836377 () Bool)

(assert (=> b!2467157 m!2836377))

(declare-fun m!2836379 () Bool)

(assert (=> b!2467152 m!2836379))

(declare-fun m!2836381 () Bool)

(assert (=> b!2467152 m!2836381))

(declare-fun m!2836383 () Bool)

(assert (=> b!2467142 m!2836383))

(declare-fun m!2836385 () Bool)

(assert (=> b!2467136 m!2836385))

(declare-fun m!2836387 () Bool)

(assert (=> b!2467143 m!2836387))

(declare-fun m!2836389 () Bool)

(assert (=> b!2467158 m!2836389))

(declare-fun m!2836391 () Bool)

(assert (=> b!2467146 m!2836391))

(declare-fun m!2836393 () Bool)

(assert (=> b!2467146 m!2836393))

(declare-fun m!2836395 () Bool)

(assert (=> b!2467153 m!2836395))

(declare-fun m!2836397 () Bool)

(assert (=> b!2467133 m!2836397))

(declare-fun m!2836399 () Bool)

(assert (=> b!2467133 m!2836399))

(declare-fun m!2836401 () Bool)

(assert (=> b!2467135 m!2836401))

(declare-fun m!2836403 () Bool)

(assert (=> b!2467141 m!2836403))

(declare-fun m!2836405 () Bool)

(assert (=> b!2467141 m!2836405))

(declare-fun m!2836407 () Bool)

(assert (=> b!2467141 m!2836407))

(declare-fun m!2836409 () Bool)

(assert (=> b!2467141 m!2836409))

(declare-fun m!2836411 () Bool)

(assert (=> b!2467141 m!2836411))

(declare-fun m!2836413 () Bool)

(assert (=> b!2467141 m!2836413))

(declare-fun m!2836415 () Bool)

(assert (=> start!240594 m!2836415))

(declare-fun m!2836417 () Bool)

(assert (=> start!240594 m!2836417))

(declare-fun m!2836419 () Bool)

(assert (=> b!2467147 m!2836419))

(declare-fun m!2836421 () Bool)

(assert (=> b!2467147 m!2836421))

(declare-fun m!2836423 () Bool)

(assert (=> b!2467156 m!2836423))

(declare-fun m!2836425 () Bool)

(assert (=> b!2467140 m!2836425))

(declare-fun m!2836427 () Bool)

(assert (=> b!2467145 m!2836427))

(declare-fun m!2836429 () Bool)

(assert (=> b!2467144 m!2836429))

(declare-fun m!2836431 () Bool)

(assert (=> b!2467160 m!2836431))

(declare-fun m!2836433 () Bool)

(assert (=> b!2467148 m!2836433))

(check-sat (not b_next!71797) (not b_next!71799) (not b!2467141) (not b!2467160) (not b_next!71809) (not b!2467147) (not start!240594) (not b!2467158) (not b!2467149) b_and!186637 (not b!2467143) (not b!2467148) (not b_next!71807) (not b_next!71803) (not b!2467154) (not b!2467157) b_and!186629 (not b!2467142) (not b_next!71801) b_and!186641 (not b_next!71805) (not b!2467138) b_and!186643 (not b!2467136) (not b!2467153) (not b!2467146) (not b!2467135) (not b!2467145) (not b!2467140) (not b_next!71811) b_and!186639 (not b!2467162) (not b!2467144) (not b!2467133) (not b!2467152) (not b!2467156) b_and!186633 b_and!186635 b_and!186631 (not b!2467134))
(check-sat (not b_next!71797) (not b_next!71799) (not b_next!71807) (not b_next!71803) b_and!186643 (not b_next!71809) b_and!186637 b_and!186631 b_and!186629 (not b_next!71801) b_and!186641 (not b_next!71805) (not b_next!71811) b_and!186639 b_and!186633 b_and!186635)
