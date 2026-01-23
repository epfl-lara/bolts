; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!100868 () Bool)

(assert start!100868)

(declare-fun b!1155981 () Bool)

(declare-fun e!739349 () Bool)

(assert (=> b!1155981 (= e!739349 true)))

(declare-fun b!1155980 () Bool)

(declare-fun e!739348 () Bool)

(assert (=> b!1155980 (= e!739348 e!739349)))

(declare-fun b!1155972 () Bool)

(assert (=> b!1155972 e!739348))

(assert (= b!1155980 b!1155981))

(assert (= b!1155972 b!1155980))

(declare-fun b!1155965 () Bool)

(declare-fun e!739336 () Bool)

(declare-datatypes ((List!11260 0))(
  ( (Nil!11236) (Cons!11236 (h!16637 (_ BitVec 16)) (t!108977 List!11260)) )
))
(declare-datatypes ((TokenValue!2010 0))(
  ( (FloatLiteralValue!4020 (text!14515 List!11260)) (TokenValueExt!2009 (__x!7731 Int)) (Broken!10050 (value!63376 List!11260)) (Object!2033) (End!2010) (Def!2010) (Underscore!2010) (Match!2010) (Else!2010) (Error!2010) (Case!2010) (If!2010) (Extends!2010) (Abstract!2010) (Class!2010) (Val!2010) (DelimiterValue!4020 (del!2070 List!11260)) (KeywordValue!2016 (value!63377 List!11260)) (CommentValue!4020 (value!63378 List!11260)) (WhitespaceValue!4020 (value!63379 List!11260)) (IndentationValue!2010 (value!63380 List!11260)) (String!13639) (Int32!2010) (Broken!10051 (value!63381 List!11260)) (Boolean!2011) (Unit!17266) (OperatorValue!2013 (op!2070 List!11260)) (IdentifierValue!4020 (value!63382 List!11260)) (IdentifierValue!4021 (value!63383 List!11260)) (WhitespaceValue!4021 (value!63384 List!11260)) (True!4020) (False!4020) (Broken!10052 (value!63385 List!11260)) (Broken!10053 (value!63386 List!11260)) (True!4021) (RightBrace!2010) (RightBracket!2010) (Colon!2010) (Null!2010) (Comma!2010) (LeftBracket!2010) (False!4021) (LeftBrace!2010) (ImaginaryLiteralValue!2010 (text!14516 List!11260)) (StringLiteralValue!6030 (value!63387 List!11260)) (EOFValue!2010 (value!63388 List!11260)) (IdentValue!2010 (value!63389 List!11260)) (DelimiterValue!4021 (value!63390 List!11260)) (DedentValue!2010 (value!63391 List!11260)) (NewLineValue!2010 (value!63392 List!11260)) (IntegerValue!6030 (value!63393 (_ BitVec 32)) (text!14517 List!11260)) (IntegerValue!6031 (value!63394 Int) (text!14518 List!11260)) (Times!2010) (Or!2010) (Equal!2010) (Minus!2010) (Broken!10054 (value!63395 List!11260)) (And!2010) (Div!2010) (LessEqual!2010) (Mod!2010) (Concat!5224) (Not!2010) (Plus!2010) (SpaceValue!2010 (value!63396 List!11260)) (IntegerValue!6032 (value!63397 Int) (text!14519 List!11260)) (StringLiteralValue!6031 (text!14520 List!11260)) (FloatLiteralValue!4021 (text!14521 List!11260)) (BytesLiteralValue!2010 (value!63398 List!11260)) (CommentValue!4021 (value!63399 List!11260)) (StringLiteralValue!6032 (value!63400 List!11260)) (ErrorTokenValue!2010 (msg!2071 List!11260)) )
))
(declare-datatypes ((C!6746 0))(
  ( (C!6747 (val!3629 Int)) )
))
(declare-datatypes ((Regex!3214 0))(
  ( (ElementMatch!3214 (c!194039 C!6746)) (Concat!5225 (regOne!6940 Regex!3214) (regTwo!6940 Regex!3214)) (EmptyExpr!3214) (Star!3214 (reg!3543 Regex!3214)) (EmptyLang!3214) (Union!3214 (regOne!6941 Regex!3214) (regTwo!6941 Regex!3214)) )
))
(declare-datatypes ((String!13640 0))(
  ( (String!13641 (value!63401 String)) )
))
(declare-datatypes ((List!11261 0))(
  ( (Nil!11237) (Cons!11237 (h!16638 C!6746) (t!108978 List!11261)) )
))
(declare-datatypes ((IArray!7305 0))(
  ( (IArray!7306 (innerList!3710 List!11261)) )
))
(declare-datatypes ((Conc!3650 0))(
  ( (Node!3650 (left!9794 Conc!3650) (right!10124 Conc!3650) (csize!7530 Int) (cheight!3861 Int)) (Leaf!5633 (xs!6355 IArray!7305) (csize!7531 Int)) (Empty!3650) )
))
(declare-datatypes ((BalanceConc!7322 0))(
  ( (BalanceConc!7323 (c!194040 Conc!3650)) )
))
(declare-datatypes ((TokenValueInjection!3720 0))(
  ( (TokenValueInjection!3721 (toValue!3045 Int) (toChars!2904 Int)) )
))
(declare-datatypes ((Rule!3688 0))(
  ( (Rule!3689 (regex!1944 Regex!3214) (tag!2206 String!13640) (isSeparator!1944 Bool) (transformation!1944 TokenValueInjection!3720)) )
))
(declare-datatypes ((Token!3550 0))(
  ( (Token!3551 (value!63402 TokenValue!2010) (rule!3365 Rule!3688) (size!8842 Int) (originalCharacters!2498 List!11261)) )
))
(declare-datatypes ((List!11262 0))(
  ( (Nil!11238) (Cons!11238 (h!16639 Token!3550) (t!108979 List!11262)) )
))
(declare-datatypes ((List!11263 0))(
  ( (Nil!11239) (Cons!11239 (h!16640 Rule!3688) (t!108980 List!11263)) )
))
(declare-datatypes ((IArray!7307 0))(
  ( (IArray!7308 (innerList!3711 List!11262)) )
))
(declare-datatypes ((Conc!3651 0))(
  ( (Node!3651 (left!9795 Conc!3651) (right!10125 Conc!3651) (csize!7532 Int) (cheight!3862 Int)) (Leaf!5634 (xs!6356 IArray!7307) (csize!7533 Int)) (Empty!3651) )
))
(declare-datatypes ((BalanceConc!7324 0))(
  ( (BalanceConc!7325 (c!194041 Conc!3651)) )
))
(declare-datatypes ((PrintableTokens!574 0))(
  ( (PrintableTokens!575 (rules!9419 List!11263) (tokens!1543 BalanceConc!7324)) )
))
(declare-fun thiss!10527 () PrintableTokens!574)

(declare-fun lt!392995 () List!11262)

(declare-datatypes ((LexerInterface!1639 0))(
  ( (LexerInterfaceExt!1636 (__x!7732 Int)) (Lexer!1637) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!507 (LexerInterface!1639 List!11263 List!11262) Bool)

(assert (=> b!1155965 (= e!739336 (rulesProduceEachTokenIndividuallyList!507 Lexer!1637 (rules!9419 thiss!10527) (t!108979 lt!392995)))))

(declare-fun res!520165 () Bool)

(declare-fun e!739339 () Bool)

(assert (=> start!100868 (=> (not res!520165) (not e!739339))))

(declare-fun from!787 () Int)

(declare-fun to!267 () Int)

(assert (=> start!100868 (= res!520165 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!100868 e!739339))

(assert (=> start!100868 true))

(declare-fun e!739343 () Bool)

(declare-fun inv!14757 (PrintableTokens!574) Bool)

(assert (=> start!100868 (and (inv!14757 thiss!10527) e!739343)))

(declare-fun lt!392999 () BalanceConc!7324)

(declare-fun b!1155966 () Bool)

(declare-fun e!739337 () Bool)

(declare-fun lambda!46638 () Int)

(declare-fun rulesProduceEachTokenIndividually!678 (LexerInterface!1639 List!11263 BalanceConc!7324) Bool)

(declare-fun forall!2875 (BalanceConc!7324 Int) Bool)

(assert (=> b!1155966 (= e!739337 (= (rulesProduceEachTokenIndividually!678 Lexer!1637 (rules!9419 thiss!10527) lt!392999) (forall!2875 lt!392999 lambda!46638)))))

(declare-fun b!1155967 () Bool)

(declare-fun res!520168 () Bool)

(assert (=> b!1155967 (=> (not res!520168) (not e!739339))))

(declare-fun size!8843 (BalanceConc!7324) Int)

(assert (=> b!1155967 (= res!520168 (<= to!267 (size!8843 (tokens!1543 thiss!10527))))))

(declare-fun b!1155968 () Bool)

(declare-fun e!739341 () Bool)

(assert (=> b!1155968 (= e!739339 e!739341)))

(declare-fun res!520164 () Bool)

(assert (=> b!1155968 (=> (not res!520164) (not e!739341))))

(declare-fun rulesInvariant!1513 (LexerInterface!1639 List!11263) Bool)

(assert (=> b!1155968 (= res!520164 (rulesInvariant!1513 Lexer!1637 (rules!9419 thiss!10527)))))

(declare-datatypes ((Unit!17267 0))(
  ( (Unit!17268) )
))
(declare-fun lt!392998 () Unit!17267)

(declare-fun lemmaInvariant!131 (PrintableTokens!574) Unit!17267)

(assert (=> b!1155968 (= lt!392998 (lemmaInvariant!131 thiss!10527))))

(declare-fun b!1155969 () Bool)

(declare-fun e!739338 () Bool)

(declare-fun isBalanced!1030 (Conc!3651) Bool)

(assert (=> b!1155969 (= e!739338 (isBalanced!1030 (c!194041 (tokens!1543 thiss!10527))))))

(assert (=> b!1155969 e!739337))

(declare-fun res!520167 () Bool)

(assert (=> b!1155969 (=> (not res!520167) (not e!739337))))

(declare-fun lt!393000 () List!11262)

(declare-fun forall!2876 (List!11262 Int) Bool)

(assert (=> b!1155969 (= res!520167 (forall!2876 lt!393000 lambda!46638))))

(declare-fun lt!392997 () Unit!17267)

(declare-fun lemmaForallSubseq!92 (List!11262 List!11262 Int) Unit!17267)

(assert (=> b!1155969 (= lt!392997 (lemmaForallSubseq!92 lt!393000 lt!392995 lambda!46638))))

(declare-fun list!4142 (BalanceConc!7324) List!11262)

(assert (=> b!1155969 (= lt!393000 (list!4142 lt!392999))))

(declare-fun slice!168 (BalanceConc!7324 Int Int) BalanceConc!7324)

(assert (=> b!1155969 (= lt!392999 (slice!168 (tokens!1543 thiss!10527) from!787 to!267))))

(declare-fun subseq!200 (List!11262 List!11262) Bool)

(declare-fun slice!169 (List!11262 Int Int) List!11262)

(assert (=> b!1155969 (subseq!200 (slice!169 lt!392995 from!787 to!267) lt!392995)))

(declare-fun lt!392996 () Unit!17267)

(declare-fun lemmaSliceSubseq!41 (List!11262 Int Int) Unit!17267)

(assert (=> b!1155969 (= lt!392996 (lemmaSliceSubseq!41 lt!392995 from!787 to!267))))

(declare-fun b!1155970 () Bool)

(declare-fun e!739342 () Bool)

(declare-fun tp!333149 () Bool)

(declare-fun inv!14758 (Conc!3651) Bool)

(assert (=> b!1155970 (= e!739342 (and (inv!14758 (c!194041 (tokens!1543 thiss!10527))) tp!333149))))

(declare-fun b!1155971 () Bool)

(declare-fun e!739340 () Bool)

(assert (=> b!1155971 (= e!739340 e!739336)))

(declare-fun res!520170 () Bool)

(assert (=> b!1155971 (=> (not res!520170) (not e!739336))))

(declare-fun rulesProduceIndividualToken!676 (LexerInterface!1639 List!11263 Token!3550) Bool)

(assert (=> b!1155971 (= res!520170 (rulesProduceIndividualToken!676 Lexer!1637 (rules!9419 thiss!10527) (h!16639 lt!392995)))))

(assert (=> b!1155972 (= e!739341 (not e!739338))))

(declare-fun res!520166 () Bool)

(assert (=> b!1155972 (=> res!520166 e!739338)))

(assert (=> b!1155972 (= res!520166 (not (forall!2875 (tokens!1543 thiss!10527) lambda!46638)))))

(assert (=> b!1155972 (= (rulesProduceEachTokenIndividuallyList!507 Lexer!1637 (rules!9419 thiss!10527) lt!392995) e!739340)))

(declare-fun res!520169 () Bool)

(assert (=> b!1155972 (=> res!520169 e!739340)))

(assert (=> b!1155972 (= res!520169 (not (is-Cons!11238 lt!392995)))))

(assert (=> b!1155972 (= lt!392995 (list!4142 (tokens!1543 thiss!10527)))))

(assert (=> b!1155972 (= (rulesProduceEachTokenIndividually!678 Lexer!1637 (rules!9419 thiss!10527) (tokens!1543 thiss!10527)) (forall!2875 (tokens!1543 thiss!10527) lambda!46638))))

(declare-fun b!1155973 () Bool)

(declare-fun tp!333150 () Bool)

(declare-fun inv!14759 (BalanceConc!7324) Bool)

(assert (=> b!1155973 (= e!739343 (and tp!333150 (inv!14759 (tokens!1543 thiss!10527)) e!739342))))

(assert (= (and start!100868 res!520165) b!1155967))

(assert (= (and b!1155967 res!520168) b!1155968))

(assert (= (and b!1155968 res!520164) b!1155972))

(assert (= (and b!1155972 (not res!520169)) b!1155971))

(assert (= (and b!1155971 res!520170) b!1155965))

(assert (= (and b!1155972 (not res!520166)) b!1155969))

(assert (= (and b!1155969 res!520167) b!1155966))

(assert (= b!1155973 b!1155970))

(assert (= start!100868 b!1155973))

(declare-fun m!1322811 () Bool)

(assert (=> start!100868 m!1322811))

(declare-fun m!1322813 () Bool)

(assert (=> b!1155966 m!1322813))

(declare-fun m!1322815 () Bool)

(assert (=> b!1155966 m!1322815))

(declare-fun m!1322817 () Bool)

(assert (=> b!1155967 m!1322817))

(declare-fun m!1322819 () Bool)

(assert (=> b!1155972 m!1322819))

(declare-fun m!1322821 () Bool)

(assert (=> b!1155972 m!1322821))

(declare-fun m!1322823 () Bool)

(assert (=> b!1155972 m!1322823))

(declare-fun m!1322825 () Bool)

(assert (=> b!1155972 m!1322825))

(assert (=> b!1155972 m!1322823))

(declare-fun m!1322827 () Bool)

(assert (=> b!1155965 m!1322827))

(declare-fun m!1322829 () Bool)

(assert (=> b!1155970 m!1322829))

(declare-fun m!1322831 () Bool)

(assert (=> b!1155969 m!1322831))

(declare-fun m!1322833 () Bool)

(assert (=> b!1155969 m!1322833))

(declare-fun m!1322835 () Bool)

(assert (=> b!1155969 m!1322835))

(declare-fun m!1322837 () Bool)

(assert (=> b!1155969 m!1322837))

(declare-fun m!1322839 () Bool)

(assert (=> b!1155969 m!1322839))

(assert (=> b!1155969 m!1322831))

(declare-fun m!1322841 () Bool)

(assert (=> b!1155969 m!1322841))

(declare-fun m!1322843 () Bool)

(assert (=> b!1155969 m!1322843))

(declare-fun m!1322845 () Bool)

(assert (=> b!1155969 m!1322845))

(declare-fun m!1322847 () Bool)

(assert (=> b!1155968 m!1322847))

(declare-fun m!1322849 () Bool)

(assert (=> b!1155968 m!1322849))

(declare-fun m!1322851 () Bool)

(assert (=> b!1155971 m!1322851))

(declare-fun m!1322853 () Bool)

(assert (=> b!1155973 m!1322853))

(push 1)

(assert (not b!1155970))

(assert (not b!1155965))

(assert (not b!1155971))

(assert (not b!1155980))

(assert (not b!1155967))

(assert (not b!1155968))

(assert (not b!1155981))

(assert (not b!1155969))

(assert (not start!100868))

(assert (not b!1155973))

(assert (not b!1155966))

(assert (not b!1155972))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!330413 () Bool)

(declare-fun c!194047 () Bool)

(assert (=> d!330413 (= c!194047 (is-Node!3651 (c!194041 (tokens!1543 thiss!10527))))))

(declare-fun e!739384 () Bool)

(assert (=> d!330413 (= (inv!14758 (c!194041 (tokens!1543 thiss!10527))) e!739384)))

(declare-fun b!1156023 () Bool)

(declare-fun inv!14763 (Conc!3651) Bool)

(assert (=> b!1156023 (= e!739384 (inv!14763 (c!194041 (tokens!1543 thiss!10527))))))

(declare-fun b!1156024 () Bool)

(declare-fun e!739385 () Bool)

(assert (=> b!1156024 (= e!739384 e!739385)))

(declare-fun res!520198 () Bool)

(assert (=> b!1156024 (= res!520198 (not (is-Leaf!5634 (c!194041 (tokens!1543 thiss!10527)))))))

(assert (=> b!1156024 (=> res!520198 e!739385)))

(declare-fun b!1156025 () Bool)

(declare-fun inv!14764 (Conc!3651) Bool)

(assert (=> b!1156025 (= e!739385 (inv!14764 (c!194041 (tokens!1543 thiss!10527))))))

(assert (= (and d!330413 c!194047) b!1156023))

(assert (= (and d!330413 (not c!194047)) b!1156024))

(assert (= (and b!1156024 (not res!520198)) b!1156025))

(declare-fun m!1322899 () Bool)

(assert (=> b!1156023 m!1322899))

(declare-fun m!1322901 () Bool)

(assert (=> b!1156025 m!1322901))

(assert (=> b!1155970 d!330413))

(declare-fun bs!282884 () Bool)

(declare-fun d!330417 () Bool)

(assert (= bs!282884 (and d!330417 b!1155972)))

(declare-fun lambda!46650 () Int)

(assert (=> bs!282884 (= lambda!46650 lambda!46638)))

(declare-fun b!1156051 () Bool)

(declare-fun e!739406 () Bool)

(assert (=> b!1156051 (= e!739406 true)))

(declare-fun b!1156050 () Bool)

(declare-fun e!739405 () Bool)

(assert (=> b!1156050 (= e!739405 e!739406)))

(declare-fun b!1156049 () Bool)

(declare-fun e!739404 () Bool)

(assert (=> b!1156049 (= e!739404 e!739405)))

(assert (=> d!330417 e!739404))

(assert (= b!1156050 b!1156051))

(assert (= b!1156049 b!1156050))

(assert (= (and d!330417 (is-Cons!11239 (rules!9419 thiss!10527))) b!1156049))

(declare-fun order!6867 () Int)

(declare-fun order!6869 () Int)

(declare-fun dynLambda!4951 (Int Int) Int)

(declare-fun dynLambda!4952 (Int Int) Int)

(assert (=> b!1156051 (< (dynLambda!4951 order!6867 (toValue!3045 (transformation!1944 (h!16640 (rules!9419 thiss!10527))))) (dynLambda!4952 order!6869 lambda!46650))))

(declare-fun order!6871 () Int)

(declare-fun dynLambda!4953 (Int Int) Int)

(assert (=> b!1156051 (< (dynLambda!4953 order!6871 (toChars!2904 (transformation!1944 (h!16640 (rules!9419 thiss!10527))))) (dynLambda!4952 order!6869 lambda!46650))))

(assert (=> d!330417 true))

(declare-fun lt!393021 () Bool)

(assert (=> d!330417 (= lt!393021 (forall!2876 (t!108979 lt!392995) lambda!46650))))

(declare-fun e!739397 () Bool)

(assert (=> d!330417 (= lt!393021 e!739397)))

(declare-fun res!520206 () Bool)

(assert (=> d!330417 (=> res!520206 e!739397)))

(assert (=> d!330417 (= res!520206 (not (is-Cons!11238 (t!108979 lt!392995))))))

(declare-fun isEmpty!6925 (List!11263) Bool)

(assert (=> d!330417 (not (isEmpty!6925 (rules!9419 thiss!10527)))))

(assert (=> d!330417 (= (rulesProduceEachTokenIndividuallyList!507 Lexer!1637 (rules!9419 thiss!10527) (t!108979 lt!392995)) lt!393021)))

(declare-fun b!1156039 () Bool)

(declare-fun e!739396 () Bool)

(assert (=> b!1156039 (= e!739397 e!739396)))

(declare-fun res!520207 () Bool)

(assert (=> b!1156039 (=> (not res!520207) (not e!739396))))

(assert (=> b!1156039 (= res!520207 (rulesProduceIndividualToken!676 Lexer!1637 (rules!9419 thiss!10527) (h!16639 (t!108979 lt!392995))))))

(declare-fun b!1156040 () Bool)

(assert (=> b!1156040 (= e!739396 (rulesProduceEachTokenIndividuallyList!507 Lexer!1637 (rules!9419 thiss!10527) (t!108979 (t!108979 lt!392995))))))

(assert (= (and d!330417 (not res!520206)) b!1156039))

(assert (= (and b!1156039 res!520207) b!1156040))

(declare-fun m!1322907 () Bool)

(assert (=> d!330417 m!1322907))

(declare-fun m!1322909 () Bool)

(assert (=> d!330417 m!1322909))

(declare-fun m!1322911 () Bool)

(assert (=> b!1156039 m!1322911))

(declare-fun m!1322913 () Bool)

(assert (=> b!1156040 m!1322913))

(assert (=> b!1155965 d!330417))

(declare-fun d!330423 () Bool)

(declare-fun res!520220 () Bool)

(declare-fun e!739413 () Bool)

(assert (=> d!330423 (=> (not res!520220) (not e!739413))))

(assert (=> d!330423 (= res!520220 (not (isEmpty!6925 (rules!9419 thiss!10527))))))

(assert (=> d!330423 (= (inv!14757 thiss!10527) e!739413)))

(declare-fun b!1156066 () Bool)

(declare-fun res!520221 () Bool)

(assert (=> b!1156066 (=> (not res!520221) (not e!739413))))

(assert (=> b!1156066 (= res!520221 (rulesInvariant!1513 Lexer!1637 (rules!9419 thiss!10527)))))

(declare-fun b!1156067 () Bool)

(declare-fun res!520222 () Bool)

(assert (=> b!1156067 (=> (not res!520222) (not e!739413))))

(assert (=> b!1156067 (= res!520222 (rulesProduceEachTokenIndividually!678 Lexer!1637 (rules!9419 thiss!10527) (tokens!1543 thiss!10527)))))

(declare-fun b!1156068 () Bool)

(declare-fun separableTokens!92 (LexerInterface!1639 BalanceConc!7324 List!11263) Bool)

(assert (=> b!1156068 (= e!739413 (separableTokens!92 Lexer!1637 (tokens!1543 thiss!10527) (rules!9419 thiss!10527)))))

(assert (= (and d!330423 res!520220) b!1156066))

(assert (= (and b!1156066 res!520221) b!1156067))

(assert (= (and b!1156067 res!520222) b!1156068))

(assert (=> d!330423 m!1322909))

(assert (=> b!1156066 m!1322847))

(assert (=> b!1156067 m!1322821))

(declare-fun m!1322915 () Bool)

(assert (=> b!1156068 m!1322915))

(assert (=> start!100868 d!330423))

(declare-fun d!330425 () Bool)

(declare-fun lt!393033 () Bool)

(declare-fun e!739421 () Bool)

(assert (=> d!330425 (= lt!393033 e!739421)))

(declare-fun res!520232 () Bool)

(assert (=> d!330425 (=> (not res!520232) (not e!739421))))

(declare-datatypes ((tuple2!11966 0))(
  ( (tuple2!11967 (_1!6830 BalanceConc!7324) (_2!6830 BalanceConc!7322)) )
))
(declare-fun lex!676 (LexerInterface!1639 List!11263 BalanceConc!7322) tuple2!11966)

(declare-fun print!613 (LexerInterface!1639 BalanceConc!7324) BalanceConc!7322)

(declare-fun singletonSeq!631 (Token!3550) BalanceConc!7324)

(assert (=> d!330425 (= res!520232 (= (list!4142 (_1!6830 (lex!676 Lexer!1637 (rules!9419 thiss!10527) (print!613 Lexer!1637 (singletonSeq!631 (h!16639 lt!392995)))))) (list!4142 (singletonSeq!631 (h!16639 lt!392995)))))))

(declare-fun e!739420 () Bool)

(assert (=> d!330425 (= lt!393033 e!739420)))

(declare-fun res!520234 () Bool)

(assert (=> d!330425 (=> (not res!520234) (not e!739420))))

(declare-fun lt!393032 () tuple2!11966)

(assert (=> d!330425 (= res!520234 (= (size!8843 (_1!6830 lt!393032)) 1))))

(assert (=> d!330425 (= lt!393032 (lex!676 Lexer!1637 (rules!9419 thiss!10527) (print!613 Lexer!1637 (singletonSeq!631 (h!16639 lt!392995)))))))

(assert (=> d!330425 (not (isEmpty!6925 (rules!9419 thiss!10527)))))

(assert (=> d!330425 (= (rulesProduceIndividualToken!676 Lexer!1637 (rules!9419 thiss!10527) (h!16639 lt!392995)) lt!393033)))

(declare-fun b!1156078 () Bool)

(declare-fun res!520233 () Bool)

(assert (=> b!1156078 (=> (not res!520233) (not e!739420))))

(declare-fun apply!2400 (BalanceConc!7324 Int) Token!3550)

(assert (=> b!1156078 (= res!520233 (= (apply!2400 (_1!6830 lt!393032) 0) (h!16639 lt!392995)))))

(declare-fun b!1156079 () Bool)

(declare-fun isEmpty!6926 (BalanceConc!7322) Bool)

(assert (=> b!1156079 (= e!739420 (isEmpty!6926 (_2!6830 lt!393032)))))

(declare-fun b!1156080 () Bool)

(assert (=> b!1156080 (= e!739421 (isEmpty!6926 (_2!6830 (lex!676 Lexer!1637 (rules!9419 thiss!10527) (print!613 Lexer!1637 (singletonSeq!631 (h!16639 lt!392995)))))))))

(assert (= (and d!330425 res!520234) b!1156078))

(assert (= (and b!1156078 res!520233) b!1156079))

(assert (= (and d!330425 res!520232) b!1156080))

(declare-fun m!1322937 () Bool)

(assert (=> d!330425 m!1322937))

(declare-fun m!1322939 () Bool)

(assert (=> d!330425 m!1322939))

(assert (=> d!330425 m!1322939))

(declare-fun m!1322941 () Bool)

(assert (=> d!330425 m!1322941))

(declare-fun m!1322943 () Bool)

(assert (=> d!330425 m!1322943))

(declare-fun m!1322945 () Bool)

(assert (=> d!330425 m!1322945))

(assert (=> d!330425 m!1322937))

(assert (=> d!330425 m!1322909))

(assert (=> d!330425 m!1322937))

(declare-fun m!1322947 () Bool)

(assert (=> d!330425 m!1322947))

(declare-fun m!1322949 () Bool)

(assert (=> b!1156078 m!1322949))

(declare-fun m!1322951 () Bool)

(assert (=> b!1156079 m!1322951))

(assert (=> b!1156080 m!1322937))

(assert (=> b!1156080 m!1322937))

(assert (=> b!1156080 m!1322939))

(assert (=> b!1156080 m!1322939))

(assert (=> b!1156080 m!1322941))

(declare-fun m!1322953 () Bool)

(assert (=> b!1156080 m!1322953))

(assert (=> b!1155971 d!330425))

(declare-fun bs!282886 () Bool)

(declare-fun d!330429 () Bool)

(assert (= bs!282886 (and d!330429 b!1155972)))

(declare-fun lambda!46658 () Int)

(assert (=> bs!282886 (= lambda!46658 lambda!46638)))

(declare-fun bs!282887 () Bool)

(assert (= bs!282887 (and d!330429 d!330417)))

(assert (=> bs!282887 (= lambda!46658 lambda!46650)))

(declare-fun b!1156108 () Bool)

(declare-fun e!739445 () Bool)

(assert (=> b!1156108 (= e!739445 true)))

(declare-fun b!1156107 () Bool)

(declare-fun e!739444 () Bool)

(assert (=> b!1156107 (= e!739444 e!739445)))

(declare-fun b!1156106 () Bool)

(declare-fun e!739443 () Bool)

(assert (=> b!1156106 (= e!739443 e!739444)))

(assert (=> d!330429 e!739443))

(assert (= b!1156107 b!1156108))

(assert (= b!1156106 b!1156107))

(assert (= (and d!330429 (is-Cons!11239 (rules!9419 thiss!10527))) b!1156106))

(assert (=> b!1156108 (< (dynLambda!4951 order!6867 (toValue!3045 (transformation!1944 (h!16640 (rules!9419 thiss!10527))))) (dynLambda!4952 order!6869 lambda!46658))))

(assert (=> b!1156108 (< (dynLambda!4953 order!6871 (toChars!2904 (transformation!1944 (h!16640 (rules!9419 thiss!10527))))) (dynLambda!4952 order!6869 lambda!46658))))

(assert (=> d!330429 true))

(declare-fun e!739442 () Bool)

(assert (=> d!330429 e!739442))

(declare-fun res!520246 () Bool)

(assert (=> d!330429 (=> (not res!520246) (not e!739442))))

(declare-fun lt!393039 () Bool)

(assert (=> d!330429 (= res!520246 (= lt!393039 (forall!2876 (list!4142 lt!392999) lambda!46658)))))

(assert (=> d!330429 (= lt!393039 (forall!2875 lt!392999 lambda!46658))))

(assert (=> d!330429 (not (isEmpty!6925 (rules!9419 thiss!10527)))))

(assert (=> d!330429 (= (rulesProduceEachTokenIndividually!678 Lexer!1637 (rules!9419 thiss!10527) lt!392999) lt!393039)))

(declare-fun b!1156105 () Bool)

(assert (=> b!1156105 (= e!739442 (= lt!393039 (rulesProduceEachTokenIndividuallyList!507 Lexer!1637 (rules!9419 thiss!10527) (list!4142 lt!392999))))))

(assert (= (and d!330429 res!520246) b!1156105))

(assert (=> d!330429 m!1322841))

(assert (=> d!330429 m!1322841))

(declare-fun m!1322965 () Bool)

(assert (=> d!330429 m!1322965))

(declare-fun m!1322967 () Bool)

(assert (=> d!330429 m!1322967))

(assert (=> d!330429 m!1322909))

(assert (=> b!1156105 m!1322841))

(assert (=> b!1156105 m!1322841))

(declare-fun m!1322969 () Bool)

(assert (=> b!1156105 m!1322969))

(assert (=> b!1155966 d!330429))

(declare-fun d!330435 () Bool)

(declare-fun lt!393042 () Bool)

(assert (=> d!330435 (= lt!393042 (forall!2876 (list!4142 lt!392999) lambda!46638))))

(declare-fun forall!2879 (Conc!3651 Int) Bool)

(assert (=> d!330435 (= lt!393042 (forall!2879 (c!194041 lt!392999) lambda!46638))))

(assert (=> d!330435 (= (forall!2875 lt!392999 lambda!46638) lt!393042)))

(declare-fun bs!282888 () Bool)

(assert (= bs!282888 d!330435))

(assert (=> bs!282888 m!1322841))

(assert (=> bs!282888 m!1322841))

(declare-fun m!1322971 () Bool)

(assert (=> bs!282888 m!1322971))

(declare-fun m!1322973 () Bool)

(assert (=> bs!282888 m!1322973))

(assert (=> b!1155966 d!330435))

(declare-fun d!330437 () Bool)

(declare-fun lt!393043 () Bool)

(assert (=> d!330437 (= lt!393043 (forall!2876 (list!4142 (tokens!1543 thiss!10527)) lambda!46638))))

(assert (=> d!330437 (= lt!393043 (forall!2879 (c!194041 (tokens!1543 thiss!10527)) lambda!46638))))

(assert (=> d!330437 (= (forall!2875 (tokens!1543 thiss!10527) lambda!46638) lt!393043)))

(declare-fun bs!282889 () Bool)

(assert (= bs!282889 d!330437))

(assert (=> bs!282889 m!1322825))

(assert (=> bs!282889 m!1322825))

(declare-fun m!1322975 () Bool)

(assert (=> bs!282889 m!1322975))

(declare-fun m!1322977 () Bool)

(assert (=> bs!282889 m!1322977))

(assert (=> b!1155972 d!330437))

(declare-fun bs!282890 () Bool)

(declare-fun d!330439 () Bool)

(assert (= bs!282890 (and d!330439 b!1155972)))

(declare-fun lambda!46659 () Int)

(assert (=> bs!282890 (= lambda!46659 lambda!46638)))

(declare-fun bs!282891 () Bool)

(assert (= bs!282891 (and d!330439 d!330417)))

(assert (=> bs!282891 (= lambda!46659 lambda!46650)))

(declare-fun bs!282892 () Bool)

(assert (= bs!282892 (and d!330439 d!330429)))

(assert (=> bs!282892 (= lambda!46659 lambda!46658)))

(declare-fun b!1156112 () Bool)

(declare-fun e!739449 () Bool)

(assert (=> b!1156112 (= e!739449 true)))

(declare-fun b!1156111 () Bool)

(declare-fun e!739448 () Bool)

(assert (=> b!1156111 (= e!739448 e!739449)))

(declare-fun b!1156110 () Bool)

(declare-fun e!739447 () Bool)

(assert (=> b!1156110 (= e!739447 e!739448)))

(assert (=> d!330439 e!739447))

(assert (= b!1156111 b!1156112))

(assert (= b!1156110 b!1156111))

(assert (= (and d!330439 (is-Cons!11239 (rules!9419 thiss!10527))) b!1156110))

(assert (=> b!1156112 (< (dynLambda!4951 order!6867 (toValue!3045 (transformation!1944 (h!16640 (rules!9419 thiss!10527))))) (dynLambda!4952 order!6869 lambda!46659))))

(assert (=> b!1156112 (< (dynLambda!4953 order!6871 (toChars!2904 (transformation!1944 (h!16640 (rules!9419 thiss!10527))))) (dynLambda!4952 order!6869 lambda!46659))))

(assert (=> d!330439 true))

(declare-fun e!739446 () Bool)

(assert (=> d!330439 e!739446))

(declare-fun res!520247 () Bool)

(assert (=> d!330439 (=> (not res!520247) (not e!739446))))

(declare-fun lt!393044 () Bool)

(assert (=> d!330439 (= res!520247 (= lt!393044 (forall!2876 (list!4142 (tokens!1543 thiss!10527)) lambda!46659)))))

(assert (=> d!330439 (= lt!393044 (forall!2875 (tokens!1543 thiss!10527) lambda!46659))))

(assert (=> d!330439 (not (isEmpty!6925 (rules!9419 thiss!10527)))))

(assert (=> d!330439 (= (rulesProduceEachTokenIndividually!678 Lexer!1637 (rules!9419 thiss!10527) (tokens!1543 thiss!10527)) lt!393044)))

(declare-fun b!1156109 () Bool)

(assert (=> b!1156109 (= e!739446 (= lt!393044 (rulesProduceEachTokenIndividuallyList!507 Lexer!1637 (rules!9419 thiss!10527) (list!4142 (tokens!1543 thiss!10527)))))))

(assert (= (and d!330439 res!520247) b!1156109))

(assert (=> d!330439 m!1322825))

(assert (=> d!330439 m!1322825))

(declare-fun m!1322979 () Bool)

(assert (=> d!330439 m!1322979))

(declare-fun m!1322981 () Bool)

(assert (=> d!330439 m!1322981))

(assert (=> d!330439 m!1322909))

(assert (=> b!1156109 m!1322825))

(assert (=> b!1156109 m!1322825))

(declare-fun m!1322983 () Bool)

(assert (=> b!1156109 m!1322983))

(assert (=> b!1155972 d!330439))

(declare-fun d!330441 () Bool)

(declare-fun list!4144 (Conc!3651) List!11262)

(assert (=> d!330441 (= (list!4142 (tokens!1543 thiss!10527)) (list!4144 (c!194041 (tokens!1543 thiss!10527))))))

(declare-fun bs!282893 () Bool)

(assert (= bs!282893 d!330441))

(declare-fun m!1322985 () Bool)

(assert (=> bs!282893 m!1322985))

(assert (=> b!1155972 d!330441))

(declare-fun bs!282894 () Bool)

(declare-fun d!330443 () Bool)

(assert (= bs!282894 (and d!330443 b!1155972)))

(declare-fun lambda!46660 () Int)

(assert (=> bs!282894 (= lambda!46660 lambda!46638)))

(declare-fun bs!282895 () Bool)

(assert (= bs!282895 (and d!330443 d!330417)))

(assert (=> bs!282895 (= lambda!46660 lambda!46650)))

(declare-fun bs!282896 () Bool)

(assert (= bs!282896 (and d!330443 d!330429)))

(assert (=> bs!282896 (= lambda!46660 lambda!46658)))

(declare-fun bs!282897 () Bool)

(assert (= bs!282897 (and d!330443 d!330439)))

(assert (=> bs!282897 (= lambda!46660 lambda!46659)))

(declare-fun b!1156117 () Bool)

(declare-fun e!739454 () Bool)

(assert (=> b!1156117 (= e!739454 true)))

(declare-fun b!1156116 () Bool)

(declare-fun e!739453 () Bool)

(assert (=> b!1156116 (= e!739453 e!739454)))

(declare-fun b!1156115 () Bool)

(declare-fun e!739452 () Bool)

(assert (=> b!1156115 (= e!739452 e!739453)))

(assert (=> d!330443 e!739452))

(assert (= b!1156116 b!1156117))

(assert (= b!1156115 b!1156116))

(assert (= (and d!330443 (is-Cons!11239 (rules!9419 thiss!10527))) b!1156115))

(assert (=> b!1156117 (< (dynLambda!4951 order!6867 (toValue!3045 (transformation!1944 (h!16640 (rules!9419 thiss!10527))))) (dynLambda!4952 order!6869 lambda!46660))))

(assert (=> b!1156117 (< (dynLambda!4953 order!6871 (toChars!2904 (transformation!1944 (h!16640 (rules!9419 thiss!10527))))) (dynLambda!4952 order!6869 lambda!46660))))

(assert (=> d!330443 true))

(declare-fun lt!393045 () Bool)

(assert (=> d!330443 (= lt!393045 (forall!2876 lt!392995 lambda!46660))))

(declare-fun e!739451 () Bool)

(assert (=> d!330443 (= lt!393045 e!739451)))

(declare-fun res!520248 () Bool)

(assert (=> d!330443 (=> res!520248 e!739451)))

(assert (=> d!330443 (= res!520248 (not (is-Cons!11238 lt!392995)))))

(assert (=> d!330443 (not (isEmpty!6925 (rules!9419 thiss!10527)))))

(assert (=> d!330443 (= (rulesProduceEachTokenIndividuallyList!507 Lexer!1637 (rules!9419 thiss!10527) lt!392995) lt!393045)))

(declare-fun b!1156113 () Bool)

(declare-fun e!739450 () Bool)

(assert (=> b!1156113 (= e!739451 e!739450)))

(declare-fun res!520249 () Bool)

(assert (=> b!1156113 (=> (not res!520249) (not e!739450))))

(assert (=> b!1156113 (= res!520249 (rulesProduceIndividualToken!676 Lexer!1637 (rules!9419 thiss!10527) (h!16639 lt!392995)))))

(declare-fun b!1156114 () Bool)

(assert (=> b!1156114 (= e!739450 (rulesProduceEachTokenIndividuallyList!507 Lexer!1637 (rules!9419 thiss!10527) (t!108979 lt!392995)))))

(assert (= (and d!330443 (not res!520248)) b!1156113))

(assert (= (and b!1156113 res!520249) b!1156114))

(declare-fun m!1322987 () Bool)

(assert (=> d!330443 m!1322987))

(assert (=> d!330443 m!1322909))

(assert (=> b!1156113 m!1322851))

(assert (=> b!1156114 m!1322827))

(assert (=> b!1155972 d!330443))

(declare-fun d!330445 () Bool)

(declare-fun lt!393048 () Int)

(declare-fun size!8846 (List!11262) Int)

(assert (=> d!330445 (= lt!393048 (size!8846 (list!4142 (tokens!1543 thiss!10527))))))

(declare-fun size!8847 (Conc!3651) Int)

(assert (=> d!330445 (= lt!393048 (size!8847 (c!194041 (tokens!1543 thiss!10527))))))

(assert (=> d!330445 (= (size!8843 (tokens!1543 thiss!10527)) lt!393048)))

(declare-fun bs!282898 () Bool)

(assert (= bs!282898 d!330445))

(assert (=> bs!282898 m!1322825))

(assert (=> bs!282898 m!1322825))

(declare-fun m!1322989 () Bool)

(assert (=> bs!282898 m!1322989))

(declare-fun m!1322991 () Bool)

(assert (=> bs!282898 m!1322991))

(assert (=> b!1155967 d!330445))

(declare-fun d!330447 () Bool)

(assert (=> d!330447 (= (inv!14759 (tokens!1543 thiss!10527)) (isBalanced!1030 (c!194041 (tokens!1543 thiss!10527))))))

(declare-fun bs!282899 () Bool)

(assert (= bs!282899 d!330447))

(assert (=> bs!282899 m!1322837))

(assert (=> b!1155973 d!330447))

(declare-fun d!330449 () Bool)

(declare-fun res!520252 () Bool)

(declare-fun e!739457 () Bool)

(assert (=> d!330449 (=> (not res!520252) (not e!739457))))

(declare-fun rulesValid!672 (LexerInterface!1639 List!11263) Bool)

(assert (=> d!330449 (= res!520252 (rulesValid!672 Lexer!1637 (rules!9419 thiss!10527)))))

(assert (=> d!330449 (= (rulesInvariant!1513 Lexer!1637 (rules!9419 thiss!10527)) e!739457)))

(declare-fun b!1156120 () Bool)

(declare-datatypes ((List!11268 0))(
  ( (Nil!11244) (Cons!11244 (h!16645 String!13640) (t!109010 List!11268)) )
))
(declare-fun noDuplicateTag!672 (LexerInterface!1639 List!11263 List!11268) Bool)

(assert (=> b!1156120 (= e!739457 (noDuplicateTag!672 Lexer!1637 (rules!9419 thiss!10527) Nil!11244))))

(assert (= (and d!330449 res!520252) b!1156120))

(declare-fun m!1322993 () Bool)

(assert (=> d!330449 m!1322993))

(declare-fun m!1322995 () Bool)

(assert (=> b!1156120 m!1322995))

(assert (=> b!1155968 d!330449))

(declare-fun d!330451 () Bool)

(declare-fun e!739496 () Bool)

(assert (=> d!330451 e!739496))

(declare-fun res!520311 () Bool)

(assert (=> d!330451 (=> (not res!520311) (not e!739496))))

(assert (=> d!330451 (= res!520311 (rulesInvariant!1513 Lexer!1637 (rules!9419 thiss!10527)))))

(declare-fun Unit!17272 () Unit!17267)

(assert (=> d!330451 (= (lemmaInvariant!131 thiss!10527) Unit!17272)))

(declare-fun b!1156179 () Bool)

(declare-fun res!520312 () Bool)

(assert (=> b!1156179 (=> (not res!520312) (not e!739496))))

(assert (=> b!1156179 (= res!520312 (rulesProduceEachTokenIndividually!678 Lexer!1637 (rules!9419 thiss!10527) (tokens!1543 thiss!10527)))))

(declare-fun b!1156180 () Bool)

(assert (=> b!1156180 (= e!739496 (separableTokens!92 Lexer!1637 (tokens!1543 thiss!10527) (rules!9419 thiss!10527)))))

(assert (= (and d!330451 res!520311) b!1156179))

(assert (= (and b!1156179 res!520312) b!1156180))

(assert (=> d!330451 m!1322847))

(assert (=> b!1156179 m!1322821))

(assert (=> b!1156180 m!1322915))

(assert (=> b!1155968 d!330451))

(declare-fun d!330471 () Bool)

(assert (=> d!330471 (= (list!4142 lt!392999) (list!4144 (c!194041 lt!392999)))))

(declare-fun bs!282903 () Bool)

(assert (= bs!282903 d!330471))

(declare-fun m!1323041 () Bool)

(assert (=> bs!282903 m!1323041))

(assert (=> b!1155969 d!330471))

(declare-fun d!330473 () Bool)

(declare-fun res!520317 () Bool)

(declare-fun e!739501 () Bool)

(assert (=> d!330473 (=> res!520317 e!739501)))

(assert (=> d!330473 (= res!520317 (is-Nil!11238 lt!393000))))

(assert (=> d!330473 (= (forall!2876 lt!393000 lambda!46638) e!739501)))

(declare-fun b!1156185 () Bool)

(declare-fun e!739502 () Bool)

(assert (=> b!1156185 (= e!739501 e!739502)))

(declare-fun res!520318 () Bool)

(assert (=> b!1156185 (=> (not res!520318) (not e!739502))))

(declare-fun dynLambda!4954 (Int Token!3550) Bool)

(assert (=> b!1156185 (= res!520318 (dynLambda!4954 lambda!46638 (h!16639 lt!393000)))))

(declare-fun b!1156186 () Bool)

(assert (=> b!1156186 (= e!739502 (forall!2876 (t!108979 lt!393000) lambda!46638))))

(assert (= (and d!330473 (not res!520317)) b!1156185))

(assert (= (and b!1156185 res!520318) b!1156186))

(declare-fun b_lambda!34545 () Bool)

(assert (=> (not b_lambda!34545) (not b!1156185)))

(declare-fun m!1323043 () Bool)

(assert (=> b!1156185 m!1323043))

(declare-fun m!1323045 () Bool)

(assert (=> b!1156186 m!1323045))

(assert (=> b!1155969 d!330473))

(declare-fun d!330475 () Bool)

(declare-fun e!739507 () Bool)

(assert (=> d!330475 e!739507))

(declare-fun res!520327 () Bool)

(assert (=> d!330475 (=> (not res!520327) (not e!739507))))

(declare-fun slice!172 (Conc!3651 Int Int) Conc!3651)

(assert (=> d!330475 (= res!520327 (isBalanced!1030 (slice!172 (c!194041 (tokens!1543 thiss!10527)) from!787 to!267)))))

(declare-fun lt!393060 () BalanceConc!7324)

(assert (=> d!330475 (= lt!393060 (BalanceConc!7325 (slice!172 (c!194041 (tokens!1543 thiss!10527)) from!787 to!267)))))

(declare-fun e!739508 () Bool)

(assert (=> d!330475 e!739508))

(declare-fun res!520325 () Bool)

(assert (=> d!330475 (=> (not res!520325) (not e!739508))))

(assert (=> d!330475 (= res!520325 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!330475 (= (slice!168 (tokens!1543 thiss!10527) from!787 to!267) lt!393060)))

(declare-fun b!1156193 () Bool)

(declare-fun res!520326 () Bool)

(assert (=> b!1156193 (=> (not res!520326) (not e!739508))))

(assert (=> b!1156193 (= res!520326 (<= to!267 (size!8843 (tokens!1543 thiss!10527))))))

(declare-fun b!1156194 () Bool)

(assert (=> b!1156194 (= e!739508 (isBalanced!1030 (c!194041 (tokens!1543 thiss!10527))))))

(declare-fun b!1156195 () Bool)

(assert (=> b!1156195 (= e!739507 (= (list!4142 lt!393060) (slice!169 (list!4142 (tokens!1543 thiss!10527)) from!787 to!267)))))

(assert (= (and d!330475 res!520325) b!1156193))

(assert (= (and b!1156193 res!520326) b!1156194))

(assert (= (and d!330475 res!520327) b!1156195))

(declare-fun m!1323047 () Bool)

(assert (=> d!330475 m!1323047))

(assert (=> d!330475 m!1323047))

(declare-fun m!1323049 () Bool)

(assert (=> d!330475 m!1323049))

(assert (=> b!1156193 m!1322817))

(assert (=> b!1156194 m!1322837))

(declare-fun m!1323051 () Bool)

(assert (=> b!1156195 m!1323051))

(assert (=> b!1156195 m!1322825))

(assert (=> b!1156195 m!1322825))

(declare-fun m!1323053 () Bool)

(assert (=> b!1156195 m!1323053))

(assert (=> b!1155969 d!330475))

(declare-fun d!330477 () Bool)

(assert (=> d!330477 (subseq!200 (slice!169 lt!392995 from!787 to!267) lt!392995)))

(declare-fun lt!393063 () Unit!17267)

(declare-fun choose!7418 (List!11262 Int Int) Unit!17267)

(assert (=> d!330477 (= lt!393063 (choose!7418 lt!392995 from!787 to!267))))

(declare-fun e!739511 () Bool)

(assert (=> d!330477 e!739511))

(declare-fun res!520330 () Bool)

(assert (=> d!330477 (=> (not res!520330) (not e!739511))))

(assert (=> d!330477 (= res!520330 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!330477 (= (lemmaSliceSubseq!41 lt!392995 from!787 to!267) lt!393063)))

(declare-fun b!1156198 () Bool)

(assert (=> b!1156198 (= e!739511 (<= to!267 (size!8846 lt!392995)))))

(assert (= (and d!330477 res!520330) b!1156198))

(assert (=> d!330477 m!1322831))

(assert (=> d!330477 m!1322831))

(assert (=> d!330477 m!1322833))

(declare-fun m!1323055 () Bool)

(assert (=> d!330477 m!1323055))

(declare-fun m!1323057 () Bool)

(assert (=> b!1156198 m!1323057))

(assert (=> b!1155969 d!330477))

(declare-fun d!330479 () Bool)

(declare-fun take!41 (List!11262 Int) List!11262)

(declare-fun drop!443 (List!11262 Int) List!11262)

(assert (=> d!330479 (= (slice!169 lt!392995 from!787 to!267) (take!41 (drop!443 lt!392995 from!787) (- to!267 from!787)))))

(declare-fun bs!282904 () Bool)

(assert (= bs!282904 d!330479))

(declare-fun m!1323059 () Bool)

(assert (=> bs!282904 m!1323059))

(assert (=> bs!282904 m!1323059))

(declare-fun m!1323061 () Bool)

(assert (=> bs!282904 m!1323061))

(assert (=> b!1155969 d!330479))

(declare-fun d!330481 () Bool)

(assert (=> d!330481 (forall!2876 lt!393000 lambda!46638)))

(declare-fun lt!393066 () Unit!17267)

(declare-fun choose!7419 (List!11262 List!11262 Int) Unit!17267)

(assert (=> d!330481 (= lt!393066 (choose!7419 lt!393000 lt!392995 lambda!46638))))

(assert (=> d!330481 (forall!2876 lt!392995 lambda!46638)))

(assert (=> d!330481 (= (lemmaForallSubseq!92 lt!393000 lt!392995 lambda!46638) lt!393066)))

(declare-fun bs!282905 () Bool)

(assert (= bs!282905 d!330481))

(assert (=> bs!282905 m!1322843))

(declare-fun m!1323063 () Bool)

(assert (=> bs!282905 m!1323063))

(declare-fun m!1323065 () Bool)

(assert (=> bs!282905 m!1323065))

(assert (=> b!1155969 d!330481))

(declare-fun d!330483 () Bool)

(declare-fun res!520343 () Bool)

(declare-fun e!739517 () Bool)

(assert (=> d!330483 (=> res!520343 e!739517)))

(assert (=> d!330483 (= res!520343 (not (is-Node!3651 (c!194041 (tokens!1543 thiss!10527)))))))

(assert (=> d!330483 (= (isBalanced!1030 (c!194041 (tokens!1543 thiss!10527))) e!739517)))

(declare-fun b!1156211 () Bool)

(declare-fun e!739516 () Bool)

(declare-fun isEmpty!6927 (Conc!3651) Bool)

(assert (=> b!1156211 (= e!739516 (not (isEmpty!6927 (right!10125 (c!194041 (tokens!1543 thiss!10527))))))))

(declare-fun b!1156212 () Bool)

(assert (=> b!1156212 (= e!739517 e!739516)))

(declare-fun res!520348 () Bool)

(assert (=> b!1156212 (=> (not res!520348) (not e!739516))))

(declare-fun height!499 (Conc!3651) Int)

(assert (=> b!1156212 (= res!520348 (<= (- 1) (- (height!499 (left!9795 (c!194041 (tokens!1543 thiss!10527)))) (height!499 (right!10125 (c!194041 (tokens!1543 thiss!10527)))))))))

(declare-fun b!1156213 () Bool)

(declare-fun res!520347 () Bool)

(assert (=> b!1156213 (=> (not res!520347) (not e!739516))))

(assert (=> b!1156213 (= res!520347 (<= (- (height!499 (left!9795 (c!194041 (tokens!1543 thiss!10527)))) (height!499 (right!10125 (c!194041 (tokens!1543 thiss!10527))))) 1))))

(declare-fun b!1156214 () Bool)

(declare-fun res!520344 () Bool)

(assert (=> b!1156214 (=> (not res!520344) (not e!739516))))

(assert (=> b!1156214 (= res!520344 (not (isEmpty!6927 (left!9795 (c!194041 (tokens!1543 thiss!10527))))))))

(declare-fun b!1156215 () Bool)

(declare-fun res!520345 () Bool)

(assert (=> b!1156215 (=> (not res!520345) (not e!739516))))

(assert (=> b!1156215 (= res!520345 (isBalanced!1030 (left!9795 (c!194041 (tokens!1543 thiss!10527)))))))

(declare-fun b!1156216 () Bool)

(declare-fun res!520346 () Bool)

(assert (=> b!1156216 (=> (not res!520346) (not e!739516))))

(assert (=> b!1156216 (= res!520346 (isBalanced!1030 (right!10125 (c!194041 (tokens!1543 thiss!10527)))))))

(assert (= (and d!330483 (not res!520343)) b!1156212))

(assert (= (and b!1156212 res!520348) b!1156213))

(assert (= (and b!1156213 res!520347) b!1156215))

(assert (= (and b!1156215 res!520345) b!1156216))

(assert (= (and b!1156216 res!520346) b!1156214))

(assert (= (and b!1156214 res!520344) b!1156211))

(declare-fun m!1323067 () Bool)

(assert (=> b!1156212 m!1323067))

(declare-fun m!1323069 () Bool)

(assert (=> b!1156212 m!1323069))

(declare-fun m!1323071 () Bool)

(assert (=> b!1156214 m!1323071))

(declare-fun m!1323073 () Bool)

(assert (=> b!1156216 m!1323073))

(declare-fun m!1323075 () Bool)

(assert (=> b!1156211 m!1323075))

(assert (=> b!1156213 m!1323067))

(assert (=> b!1156213 m!1323069))

(declare-fun m!1323077 () Bool)

(assert (=> b!1156215 m!1323077))

(assert (=> b!1155969 d!330483))

(declare-fun e!739529 () Bool)

(declare-fun b!1156227 () Bool)

(assert (=> b!1156227 (= e!739529 (subseq!200 (t!108979 (slice!169 lt!392995 from!787 to!267)) (t!108979 lt!392995)))))

(declare-fun b!1156226 () Bool)

(declare-fun e!739528 () Bool)

(declare-fun e!739526 () Bool)

(assert (=> b!1156226 (= e!739528 e!739526)))

(declare-fun res!520357 () Bool)

(assert (=> b!1156226 (=> res!520357 e!739526)))

(assert (=> b!1156226 (= res!520357 e!739529)))

(declare-fun res!520360 () Bool)

(assert (=> b!1156226 (=> (not res!520360) (not e!739529))))

(assert (=> b!1156226 (= res!520360 (= (h!16639 (slice!169 lt!392995 from!787 to!267)) (h!16639 lt!392995)))))

(declare-fun d!330485 () Bool)

(declare-fun res!520358 () Bool)

(declare-fun e!739527 () Bool)

(assert (=> d!330485 (=> res!520358 e!739527)))

(assert (=> d!330485 (= res!520358 (is-Nil!11238 (slice!169 lt!392995 from!787 to!267)))))

(assert (=> d!330485 (= (subseq!200 (slice!169 lt!392995 from!787 to!267) lt!392995) e!739527)))

(declare-fun b!1156225 () Bool)

(assert (=> b!1156225 (= e!739527 e!739528)))

(declare-fun res!520359 () Bool)

(assert (=> b!1156225 (=> (not res!520359) (not e!739528))))

(assert (=> b!1156225 (= res!520359 (is-Cons!11238 lt!392995))))

(declare-fun b!1156228 () Bool)

(assert (=> b!1156228 (= e!739526 (subseq!200 (slice!169 lt!392995 from!787 to!267) (t!108979 lt!392995)))))

(assert (= (and d!330485 (not res!520358)) b!1156225))

(assert (= (and b!1156225 res!520359) b!1156226))

(assert (= (and b!1156226 res!520360) b!1156227))

(assert (= (and b!1156226 (not res!520357)) b!1156228))

(declare-fun m!1323079 () Bool)

(assert (=> b!1156227 m!1323079))

(assert (=> b!1156228 m!1322831))

(declare-fun m!1323081 () Bool)

(assert (=> b!1156228 m!1323081))

(assert (=> b!1155969 d!330485))

(declare-fun b!1156237 () Bool)

(declare-fun e!739534 () Bool)

(assert (=> b!1156237 (= e!739534 true)))

(declare-fun b!1156239 () Bool)

(declare-fun e!739535 () Bool)

(assert (=> b!1156239 (= e!739535 true)))

(declare-fun b!1156238 () Bool)

(assert (=> b!1156238 (= e!739534 e!739535)))

(assert (=> b!1155981 e!739534))

(assert (= (and b!1155981 (is-Node!3651 (c!194041 (tokens!1543 thiss!10527)))) b!1156237))

(assert (= b!1156238 b!1156239))

(assert (= (and b!1155981 (is-Leaf!5634 (c!194041 (tokens!1543 thiss!10527)))) b!1156238))

(declare-fun tp!333163 () Bool)

(declare-fun b!1156248 () Bool)

(declare-fun e!739540 () Bool)

(declare-fun tp!333164 () Bool)

(assert (=> b!1156248 (= e!739540 (and (inv!14758 (left!9795 (c!194041 (tokens!1543 thiss!10527)))) tp!333164 (inv!14758 (right!10125 (c!194041 (tokens!1543 thiss!10527)))) tp!333163))))

(declare-fun b!1156250 () Bool)

(declare-fun e!739541 () Bool)

(declare-fun tp!333165 () Bool)

(assert (=> b!1156250 (= e!739541 tp!333165)))

(declare-fun b!1156249 () Bool)

(declare-fun inv!14765 (IArray!7307) Bool)

(assert (=> b!1156249 (= e!739540 (and (inv!14765 (xs!6356 (c!194041 (tokens!1543 thiss!10527)))) e!739541))))

(assert (=> b!1155970 (= tp!333149 (and (inv!14758 (c!194041 (tokens!1543 thiss!10527))) e!739540))))

(assert (= (and b!1155970 (is-Node!3651 (c!194041 (tokens!1543 thiss!10527)))) b!1156248))

(assert (= b!1156249 b!1156250))

(assert (= (and b!1155970 (is-Leaf!5634 (c!194041 (tokens!1543 thiss!10527)))) b!1156249))

(declare-fun m!1323083 () Bool)

(assert (=> b!1156248 m!1323083))

(declare-fun m!1323085 () Bool)

(assert (=> b!1156248 m!1323085))

(declare-fun m!1323087 () Bool)

(assert (=> b!1156249 m!1323087))

(assert (=> b!1155970 m!1322829))

(declare-fun b!1156261 () Bool)

(declare-fun b_free!27665 () Bool)

(declare-fun b_next!28369 () Bool)

(assert (=> b!1156261 (= b_free!27665 (not b_next!28369))))

(declare-fun tp!333175 () Bool)

(declare-fun b_and!80541 () Bool)

(assert (=> b!1156261 (= tp!333175 b_and!80541)))

(declare-fun b_free!27667 () Bool)

(declare-fun b_next!28371 () Bool)

(assert (=> b!1156261 (= b_free!27667 (not b_next!28371))))

(declare-fun tp!333176 () Bool)

(declare-fun b_and!80543 () Bool)

(assert (=> b!1156261 (= tp!333176 b_and!80543)))

(declare-fun e!739550 () Bool)

(assert (=> b!1156261 (= e!739550 (and tp!333175 tp!333176))))

(declare-fun tp!333174 () Bool)

(declare-fun e!739552 () Bool)

(declare-fun b!1156260 () Bool)

(declare-fun inv!14754 (String!13640) Bool)

(declare-fun inv!14767 (TokenValueInjection!3720) Bool)

(assert (=> b!1156260 (= e!739552 (and tp!333174 (inv!14754 (tag!2206 (h!16640 (rules!9419 thiss!10527)))) (inv!14767 (transformation!1944 (h!16640 (rules!9419 thiss!10527)))) e!739550))))

(declare-fun b!1156259 () Bool)

(declare-fun e!739553 () Bool)

(declare-fun tp!333177 () Bool)

(assert (=> b!1156259 (= e!739553 (and e!739552 tp!333177))))

(assert (=> b!1155973 (= tp!333150 e!739553)))

(assert (= b!1156260 b!1156261))

(assert (= b!1156259 b!1156260))

(assert (= (and b!1155973 (is-Cons!11239 (rules!9419 thiss!10527))) b!1156259))

(declare-fun m!1323089 () Bool)

(assert (=> b!1156260 m!1323089))

(declare-fun m!1323091 () Bool)

(assert (=> b!1156260 m!1323091))

(declare-fun b!1156264 () Bool)

(declare-fun e!739556 () Bool)

(assert (=> b!1156264 (= e!739556 true)))

(declare-fun b!1156263 () Bool)

(declare-fun e!739555 () Bool)

(assert (=> b!1156263 (= e!739555 e!739556)))

(declare-fun b!1156262 () Bool)

(declare-fun e!739554 () Bool)

(assert (=> b!1156262 (= e!739554 e!739555)))

(assert (=> b!1155980 e!739554))

(assert (= b!1156263 b!1156264))

(assert (= b!1156262 b!1156263))

(assert (= (and b!1155980 (is-Cons!11239 (rules!9419 thiss!10527))) b!1156262))

(assert (=> b!1156264 (< (dynLambda!4951 order!6867 (toValue!3045 (transformation!1944 (h!16640 (rules!9419 thiss!10527))))) (dynLambda!4952 order!6869 lambda!46638))))

(assert (=> b!1156264 (< (dynLambda!4953 order!6871 (toChars!2904 (transformation!1944 (h!16640 (rules!9419 thiss!10527))))) (dynLambda!4952 order!6869 lambda!46638))))

(declare-fun b_lambda!34547 () Bool)

(assert (= b_lambda!34545 (or b!1155972 b_lambda!34547)))

(declare-fun bs!282906 () Bool)

(declare-fun d!330487 () Bool)

(assert (= bs!282906 (and d!330487 b!1155972)))

(assert (=> bs!282906 (= (dynLambda!4954 lambda!46638 (h!16639 lt!393000)) (rulesProduceIndividualToken!676 Lexer!1637 (rules!9419 thiss!10527) (h!16639 lt!393000)))))

(declare-fun m!1323093 () Bool)

(assert (=> bs!282906 m!1323093))

(assert (=> b!1156185 d!330487))

(push 1)

(assert (not d!330481))

(assert (not b!1156115))

(assert (not d!330445))

(assert (not b!1156211))

(assert (not b!1156113))

(assert (not d!330471))

(assert (not d!330429))

(assert (not d!330439))

(assert (not d!330437))

(assert (not d!330423))

(assert (not b!1156106))

(assert (not d!330477))

(assert (not d!330449))

(assert (not b!1156105))

(assert (not b!1156239))

(assert (not b!1156067))

(assert (not b!1156120))

(assert (not b!1156180))

(assert (not b!1156193))

(assert (not b_lambda!34547))

(assert (not b!1156110))

(assert (not d!330435))

(assert (not b!1156259))

(assert (not b!1155970))

(assert (not b!1156195))

(assert (not b!1156260))

(assert (not b!1156213))

(assert (not bs!282906))

(assert (not b!1156109))

(assert (not d!330479))

(assert (not b!1156080))

(assert (not b!1156049))

(assert (not b!1156262))

(assert (not b!1156249))

(assert (not b!1156078))

(assert (not b!1156079))

(assert (not b!1156068))

(assert (not b!1156228))

(assert (not d!330441))

(assert (not b!1156216))

(assert (not b!1156023))

(assert b_and!80541)

(assert (not d!330443))

(assert (not b!1156237))

(assert (not b!1156114))

(assert (not d!330475))

(assert (not d!330417))

(assert (not b!1156248))

(assert (not b!1156194))

(assert (not d!330425))

(assert (not d!330451))

(assert (not b!1156040))

(assert (not b!1156198))

(assert (not b!1156179))

(assert (not b!1156212))

(assert (not b_next!28369))

(assert (not b!1156025))

(assert (not b!1156227))

(assert (not d!330447))

(assert (not b!1156250))

(assert (not b!1156186))

(assert (not b!1156039))

(assert (not b!1156214))

(assert b_and!80543)

(assert (not b!1156215))

(assert (not b_next!28371))

(assert (not b!1156066))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80541)

(assert b_and!80543)

(assert (not b_next!28369))

(assert (not b_next!28371))

(check-sat)

(pop 1)

